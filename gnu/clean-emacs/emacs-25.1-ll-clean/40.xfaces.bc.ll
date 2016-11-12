; ModuleID = './src/xfaces.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emacs_globals = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.buffer = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.buffer_text, %struct.buffer_text*, %struct.buffer*, i64, i64, i64, i64, i64, i64, %struct.buffer*, i32, i32, [50 x i8], %struct.timespec, i64, i64, i64, i64, i64, %struct.region_cache*, %struct.region_cache*, %struct.region_cache*, i8, %struct.Lisp_Overlay*, %struct.Lisp_Overlay*, i64, i64 }
%struct.vectorlike_header = type { i64 }
%struct.buffer_text = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.interval*, %struct.Lisp_Marker*, i8 }
%struct.interval = type opaque
%struct.Lisp_Marker = type { i32, %struct.buffer*, %struct.Lisp_Marker*, i64, i64 }
%struct.timespec = type { i64, i64 }
%struct.region_cache = type opaque
%struct.Lisp_Overlay = type { i32, %struct.Lisp_Overlay*, i64, i64, i64 }
%struct.Lisp_Objfwd = type { i32, i64* }
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
%struct._XDisplay = type opaque
%struct.glyph_row = type <{ [4 x %struct.glyph*], [4 x i16], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.display_pos, %struct.display_pos, %struct.text_pos, %struct.text_pos, i32, [11 x i8], i8, i24, i24, i32, i40, i32, %struct.XRectangle* }>
%struct.display_pos = type { %struct.text_pos, i64, %struct.text_pos, i32 }
%struct.text_pos = type { i64, i64 }
%struct.XRectangle = type { i16, i16, i16, i16 }
%struct.XChar2b = type { i8, i8 }
%struct.composition = type opaque
%struct.glyph = type { i64, i64, i16, i16, i16, i16, i24, i24, %union.anon, %union.anon.1 }
%union.anon = type { %struct.glyph_slice }
%union.anon.1 = type { i32 }
%struct.image = type { %struct.timespec, i64, i64, %struct._XImage*, %struct._XImage*, i64*, i32, i64, i64, i64, i8, i32, i32, [4 x i32], i32, i64, i64, i32, i32, i32, %struct.image_type*, i8, i64, i64, i64, %struct.image*, %struct.image* }
%struct._XImage = type { i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i8*, %struct.funcs }
%struct.funcs = type { %struct._XImage* (%struct._XDisplay*, %struct.Visual*, i32, i32, i32, i8*, i32, i32, i32, i32)*, i32 (%struct._XImage*)*, i64 (%struct._XImage*, i32, i32)*, i32 (%struct._XImage*, i32, i32, i64)*, %struct._XImage* (%struct._XImage*, i32, i32, i32, i32)*, i32 (%struct._XImage*, i64)* }
%struct.Visual = type { %struct._XExtData*, i64, i32, i64, i64, i64, i32, i32 }
%struct._XExtData = type { i32, %struct._XExtData*, i32 (%struct._XExtData*)*, i8* }
%struct.image_type = type { i32, i1 (i64)*, i1 (%struct.frame*, %struct.image*)*, void (%struct.frame*, %struct.image*)*, i1 ()*, %struct.image_type* }
%struct.xwidget = type opaque
%struct.glyph_slice = type { i64 }
%struct.font_bitmap = type { i32, i32, i32, i32, i8*, i32, i32, i32 }
%struct.glyph_pool = type { %struct.glyph*, i64, i32, i32 }
%struct.glyph_matrix = type { %struct.glyph_pool*, %struct.glyph_row*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.buffer*, i64, i64 }
%struct.terminal = type { %struct.vectorlike_header, i64, i64, i64, i64, %struct.terminal*, i32, i32, i32, i8*, %struct.kboard*, %struct.image_cache*, %union.display_info, %struct.coding_system*, %struct.coding_system*, %struct.redisplay_interface*, void (%struct.frame*, i32, i32)*, void (%struct.frame*, i32, i32)*, void (%struct.frame*)*, void (%struct.frame*)*, void (%struct.frame*, i32)*, void (%struct.frame*, i32, i32)*, void (%struct.frame*, %struct.glyph*, i32)*, void (%struct.frame*, %struct.glyph*, i32)*, void (%struct.frame*, i32)*, void (%struct.frame*)*, void (%struct.frame*, i1)*, void (%struct.terminal*)*, void (%struct.terminal*)*, void (%struct.frame*)*, void (%struct.frame*)*, void (%struct.frame*, i32)*, void (%struct.frame**, i32, i64*, i32*, i64*, i64*, i64*)*, void (%struct.frame*)*, void (%struct.frame*, i1)*, void (%struct.frame*)*, i64 (%struct.frame*, i32, i32, i32, i64, i8**)*, i64 (%struct.frame*, i64, i64)*, void (%struct.window*, i32, i32, i32)*, void (%struct.window*, i32, i32, i32)*, void (%struct.frame*)*, void (%struct.window*)*, void (%struct.frame*)*, i32 (%struct.terminal*, %struct.input_event*)*, void (%struct.frame*)*, void (%struct.frame*)*, void (%struct.terminal*)* }
%struct.kboard = type opaque
%struct.image_cache = type { %struct.image**, %struct.image**, i64, i64, i64 }
%union.display_info = type { %struct.tty_display_info* }
%struct.tty_display_info = type { %struct.tty_display_info*, i8*, i8*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct.emacs_tty*, i8, i32, %struct.terminal*, %struct.cm*, i64, %struct.frame*, i32, %struct.Mouse_HLInfo, [4096 x i8], [4096 x i8], i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i8, i32, i32, i8, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.emacs_tty = type opaque
%struct.cm = type opaque
%struct.Mouse_HLInfo = type { i32, i32, i32, i32, i32, i32, i64, i32, i64, %struct.frame*, i32, i32, i8 }
%struct.coding_system = type opaque
%struct.redisplay_interface = type { void (%struct.frame*, i64, i64)**, void (%struct.it*)*, void (%struct.window*, %struct.glyph_row*, %struct.glyph*, i32, i32)*, void (%struct.window*, %struct.glyph_row*, %struct.glyph*, i32, i32)*, void (%struct.window*, %struct.glyph_row*, i32, i32)*, void (%struct.window*, %struct.run*)*, void (%struct.window*, %struct.glyph_row*)*, void (%struct.window*)*, void (%struct.window*, i1, i1)*, void (%struct.frame*)*, void (%struct.window*)*, void (%struct.glyph*, %struct.frame*, i32*, i32*)*, void (%struct.window*, %struct.glyph_row*, i32, i32)*, void (%struct.window*, %struct.glyph_row*, %struct.draw_fringe_bitmap_params*)*, void (i32, i16*, i32, i32)*, void (i32)*, void (%struct.glyph_string*)*, void (%struct.glyph_string*)*, void (%struct.frame*, i64)*, void (%struct.frame*, i32, i32, i32, i32)*, void (%struct.window*, %struct.glyph_row*, i32, i32, i32, i32, i1, i1)*, void (%struct.window*, i32, i32, i32)*, void (%struct.window*, i32, i32, i32, i32)*, void (%struct.frame*, i32, i32, i32, i32, i32)*, void (%struct.frame*)*, void (%struct.frame*)* }
%struct.it = type { i64, %struct.window*, %struct.frame*, i32, i64, i64, i64, i64, i8*, i64, i64, i8, %struct.Lisp_Char_Table*, i64*, i64*, i32, i32, i32, [16 x i64], %struct.display_pos, %struct.display_pos, i64, i64, [16 x i64], [16 x i64], i64, i64, [5 x %struct.iterator_stack_entry], i32, i64, i32, i32, i16, i32, i32, i32, i32, %struct.composition_it, i32, i32, i64, %struct.xwidget*, %struct.it_slice, i64, i16, i16, i64, i64, %struct.text_pos, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, %struct.glyph_row*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.text_pos, i32, i32, i32, i32, i56, i24, %struct.bidi_it, i32 }
%struct.Lisp_Char_Table = type { %struct.vectorlike_header, i64, i64, i64, i64, [64 x i64], [0 x i64] }
%struct.iterator_stack_entry = type { i64, i32, i64, i64, i64, i64, %struct.composition_it, i32, %union.anon.5, %struct.text_pos, %struct.display_pos, i64, i32, i32, i32, i8, i32, i16, i64, i64 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { i64, %struct.it_slice, i64 }
%struct.composition_it = type { i64, i64, i32, i32, i64, i32, i8, i64, i32, i32, i32, i32, i32 }
%struct.it_slice = type { i64, i64, i64, i64 }
%struct.bidi_it = type { i64, i64, i32, i64, i64, i32, i32, i32, i8, i8, i64, i64, %struct.bidi_saved_info, %struct.bidi_saved_info, %struct.bidi_saved_info, %struct.bidi_saved_info, %struct.bidi_saved_info, i64, i32, i64, i32, i32, i32, i64, i32, i32, [128 x %struct.bidi_stack], %struct.bidi_string_data, %struct.window*, i32, i64, i8 }
%struct.bidi_saved_info = type { i64, i32, i32 }
%struct.bidi_stack = type { i64, i16, i8, i8 }
%struct.bidi_string_data = type { i64, i8*, i64, i64, i8 }
%struct.run = type { i32, i32, i32, i32, i32, i32 }
%struct.draw_fringe_bitmap_params = type { i32, i16*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.face* }
%struct.input_event = type { i32, i32, i32, i64, i64, i64, i64, i64 }
%union.output_data = type { %struct.tty_output* }
%struct.tty_output = type { %struct.tty_display_info* }
%struct.font_driver_list = type { i8, %struct.font_driver*, %struct.font_driver_list* }
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
%union._XEvent = type { [24 x i64] }
%struct._XIC = type opaque
%struct._XOC = type opaque
%struct.relief = type { %struct._XGC*, i64 }
%struct.Lisp_Cons = type { i64, %union.anon.10 }
%union.anon.10 = type { i64 }
%struct.Lisp_Vector = type { %struct.vectorlike_header, [0 x i64] }
%struct.named_merge_point = type { i64, i32, %struct.named_merge_point* }
%union.Aligned_Cons = type { %struct.Lisp_Cons }
%struct.XGCValues = type { i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i64, i32, i32, i32, i32, i64, i32, i8 }
%struct.Lisp_Subr = type { %struct.vectorlike_header, %union.anon.11, i16, i16, i8*, i8*, i8* }
%union.anon.11 = type { i64 ()* }

@unspecified_fg = global [15 x i8] c"unspecified-fg\00", align 1
@unspecified_bg = global [15 x i8] c"unspecified-bg\00", align 1
@clear_font_table_count = internal global i32 0, align 4
@Vframe_list = external global i64, align 8
@face_change = common global i8 0, align 1
@windows_or_buffers_changed = external global i32, align 4
@font_sort_order = internal global [4 x i32] zeroinitializer, align 16
@font_props_for_sorting = internal global [8 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [18 x i8] c"Invalid font name\00", align 1
@globals = external global %struct.emacs_globals, align 8
@next_lface_id = internal global i32 0, align 4
@lface_id_to_name_size = internal global i64 0, align 8
@lface_id_to_name = internal global i64* null, align 8
@selected_frame = external global i64, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"Invalid face family\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Invalid face foundry\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Default face height not absolute and positive\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"Face height does not produce a positive integer\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Invalid face weight\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Invalid face slant\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Invalid face underline\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Invalid face overline\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Invalid face strike-through\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"Invalid face box\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"Invalid inverse-video face attribute value\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Empty foreground color value\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"Empty distant-foreground color value\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"Empty background color value\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"Invalid stipple attribute\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"Invalid face width\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"Invalid font or font-spec\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"Font not available\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"Invalid fontset name\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"Invalid face inheritance\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"Invalid face attribute name\00", align 1
@menu_face_changed_default = internal global i8 0, align 1
@Vparam_value_alist = internal global i64 0, align 8
@.str.22 = private unnamed_addr constant [12 x i8] c"unspecified\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"Invalid face height from X resource\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"Invalid color\00", align 1
@noninteractive = external global i8, align 1
@initialized = external global i8, align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"Cannot realize default face\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"Invalid font sort order\00", align 1
@Vface_alternative_font_family_alist = common global i64 0, align 8
@Vface_alternative_font_registry_alist = common global i64 0, align 8
@tty_suppress_bold_inverse_default_colors_p = internal global i8 0, align 1
@current_buffer = external global %struct.buffer*, align 8
@syms_of_xfaces.o_fwd = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.27 = private unnamed_addr constant [24 x i8] c"face-new-frame-defaults\00", align 1
@syms_of_xfaces.o_fwd.28 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.29 = private unnamed_addr constant [21 x i8] c"face-default-stipple\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"gray3\00", align 1
@syms_of_xfaces.o_fwd.31 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.32 = private unnamed_addr constant [24 x i8] c"tty-defined-color-alist\00", align 1
@syms_of_xfaces.o_fwd.33 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.34 = private unnamed_addr constant [23 x i8] c"scalable-fonts-allowed\00", align 1
@syms_of_xfaces.o_fwd.35 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.36 = private unnamed_addr constant [19 x i8] c"face-ignored-fonts\00", align 1
@syms_of_xfaces.o_fwd.37 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.38 = private unnamed_addr constant [21 x i8] c"face-remapping-alist\00", align 1
@syms_of_xfaces.o_fwd.39 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.40 = private unnamed_addr constant [24 x i8] c"face-font-rescale-alist\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"black\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"white\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"unspecified-fg\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"unspecified-bg\00", align 1
@.str.45 = private unnamed_addr constant [26 x i8] c"Unable to load color \22%s\22\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"Invalid face\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.51 = private unnamed_addr constant [45 x i8] c"Invalid face attribute value from X resource\00", align 1
@.str.52 = private unnamed_addr constant [22 x i8] c"Invalid face color %S\00", align 1
@.str.53 = private unnamed_addr constant [29 x i8] c"Invalid face attribute %S %S\00", align 1
@.str.54 = private unnamed_addr constant [27 x i8] c"Invalid face reference: %s\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"Cannot make face\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@frame_garbaged = external global i8, align 1
@.str.57 = private unnamed_addr constant [33 x i8] c"Invalid or undefined bitmap `%s'\00", align 1
@.str.58 = private unnamed_addr constant [24 x i8] c"internal-make-lisp-face\00", align 1
@Sinternal_make_lisp_face = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Finternal_make_lisp_face }, i16 1, i16 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.58, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.59 = private unnamed_addr constant [21 x i8] c"internal-lisp-face-p\00", align 1
@Sinternal_lisp_face_p = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Finternal_lisp_face_p }, i16 1, i16 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.59, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.60 = private unnamed_addr constant [33 x i8] c"internal-set-lisp-face-attribute\00", align 1
@Sinternal_set_lisp_face_attribute = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64)* @Finternal_set_lisp_face_attribute }, i16 3, i16 4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.60, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.61 = private unnamed_addr constant [47 x i8] c"internal-set-lisp-face-attribute-from-resource\00", align 1
@Sinternal_set_lisp_face_attribute_from_resource = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64)* @Finternal_set_lisp_face_attribute_from_resource }, i16 3, i16 4, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.61, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.62 = private unnamed_addr constant [13 x i8] c"color-gray-p\00", align 1
@Scolor_gray_p = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fcolor_gray_p }, i16 1, i16 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.63 = private unnamed_addr constant [18 x i8] c"color-supported-p\00", align 1
@Scolor_supported_p = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Fcolor_supported_p }, i16 1, i16 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.64 = private unnamed_addr constant [26 x i8] c"face-attribute-relative-p\00", align 1
@Sface_attribute_relative_p = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fface_attribute_relative_p }, i16 2, i16 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.64, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.65 = private unnamed_addr constant [21 x i8] c"merge-face-attribute\00", align 1
@Smerge_face_attribute = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Fmerge_face_attribute }, i16 3, i16 3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.65, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.66 = private unnamed_addr constant [33 x i8] c"internal-get-lisp-face-attribute\00", align 1
@Sinternal_get_lisp_face_attribute = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Finternal_get_lisp_face_attribute }, i16 2, i16 3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.66, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.67 = private unnamed_addr constant [36 x i8] c"internal-lisp-face-attribute-values\00", align 1
@Sinternal_lisp_face_attribute_values = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Finternal_lisp_face_attribute_values }, i16 1, i16 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.67, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.68 = private unnamed_addr constant [27 x i8] c"internal-lisp-face-equal-p\00", align 1
@Sinternal_lisp_face_equal_p = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Finternal_lisp_face_equal_p }, i16 2, i16 3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.68, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.69 = private unnamed_addr constant [27 x i8] c"internal-lisp-face-empty-p\00", align 1
@Sinternal_lisp_face_empty_p = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Finternal_lisp_face_empty_p }, i16 1, i16 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.69, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.70 = private unnamed_addr constant [24 x i8] c"internal-copy-lisp-face\00", align 1
@Sinternal_copy_lisp_face = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64)* @Finternal_copy_lisp_face }, i16 4, i16 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.70, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.71 = private unnamed_addr constant [30 x i8] c"internal-merge-in-global-face\00", align 1
@Sinternal_merge_in_global_face = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Finternal_merge_in_global_face }, i16 2, i16 2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.71, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.72 = private unnamed_addr constant [10 x i8] c"face-font\00", align 1
@Sface_font = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Fface_font }, i16 1, i16 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.73 = private unnamed_addr constant [17 x i8] c"frame-face-alist\00", align 1
@Sframe_face_alist = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fframe_face_alist }, i16 0, i16 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.73, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.74 = private unnamed_addr constant [35 x i8] c"display-supports-face-attributes-p\00", align 1
@Sdisplay_supports_face_attributes_p = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fdisplay_supports_face_attributes_p }, i16 1, i16 2, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.74, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.75 = private unnamed_addr constant [15 x i8] c"color-distance\00", align 1
@Scolor_distance = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Fcolor_distance }, i16 2, i16 3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.75, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.76 = private unnamed_addr constant [34 x i8] c"internal-set-font-selection-order\00", align 1
@Sinternal_set_font_selection_order = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Finternal_set_font_selection_order }, i16 1, i16 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.76, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.77 = private unnamed_addr constant [43 x i8] c"internal-set-alternative-font-family-alist\00", align 1
@Sinternal_set_alternative_font_family_alist = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Finternal_set_alternative_font_family_alist }, i16 1, i16 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.77, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.78 = private unnamed_addr constant [45 x i8] c"internal-set-alternative-font-registry-alist\00", align 1
@Sinternal_set_alternative_font_registry_alist = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Finternal_set_alternative_font_registry_alist }, i16 1, i16 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.78, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.79 = private unnamed_addr constant [26 x i8] c"face-attributes-as-vector\00", align 1
@Sface_attributes_as_vector = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fface_attributes_as_vector }, i16 1, i16 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.79, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.80 = private unnamed_addr constant [17 x i8] c"clear-face-cache\00", align 1
@Sclear_face_cache = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fclear_face_cache }, i16 0, i16 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.80, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.81 = private unnamed_addr constant [41 x i8] c"tty-suppress-bold-inverse-default-colors\00", align 1
@Stty_suppress_bold_inverse_default_colors = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Ftty_suppress_bold_inverse_default_colors }, i16 1, i16 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.81, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.82 = private unnamed_addr constant [14 x i8] c"bitmap-spec-p\00", align 1
@Sbitmap_spec_p = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fbitmap_spec_p }, i16 1, i16 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.82, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.83 = private unnamed_addr constant [13 x i8] c"x-list-fonts\00", align 1
@Sx_list_fonts = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64, i64)* @Fx_list_fonts }, i16 1, i16 5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.83, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.84 = private unnamed_addr constant [29 x i8] c"internal-face-x-get-resource\00", align 1
@Sinternal_face_x_get_resource = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Finternal_face_x_get_resource }, i16 2, i16 3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.84, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.85 = private unnamed_addr constant [15 x i8] c"x-family-fonts\00", align 1
@Sx_family_fonts = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fx_family_fonts }, i16 0, i16 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.85, i32 0, i32 0), i8* null, i8* null }, align 8

; Function Attrs: nounwind uwtable
define void @x_free_colors(%struct.frame* %f, i64* %pixels, i32 %npixels) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %pixels.addr = alloca i64*, align 8
  %npixels.addr = alloca i32, align 4
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64* %pixels, i64** %pixels.addr, align 8
  store i32 %npixels, i32* %npixels.addr, align 4
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %1 = load %struct.x_output*, %struct.x_output** %x, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %1, i32 0, i32 44
  %2 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %visual = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %2, i32 0, i32 9
  %3 = load %struct.Visual*, %struct.Visual** %visual, align 8
  %call = call zeroext i1 @x_mutable_colormap(%struct.Visual* %3)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data1 = getelementptr inbounds %struct.frame, %struct.frame* %4, i32 0, i32 62
  %x2 = bitcast %union.output_data* %output_data1 to %struct.x_output**
  %5 = load %struct.x_output*, %struct.x_output** %x2, align 8
  %display_info3 = getelementptr inbounds %struct.x_output, %struct.x_output* %5, i32 0, i32 44
  %6 = load %struct.x_display_info*, %struct.x_display_info** %display_info3, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %6, i32 0, i32 2
  %7 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %8 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data4 = getelementptr inbounds %struct.frame, %struct.frame* %8, i32 0, i32 62
  %x5 = bitcast %union.output_data* %output_data4 to %struct.x_output**
  %9 = load %struct.x_output*, %struct.x_output** %x5, align 8
  %display_info6 = getelementptr inbounds %struct.x_output, %struct.x_output* %9, i32 0, i32 44
  %10 = load %struct.x_display_info*, %struct.x_display_info** %display_info6, align 8
  %cmap = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %10, i32 0, i32 10
  %11 = load i64, i64* %cmap, align 8
  %12 = load i64*, i64** %pixels.addr, align 8
  %13 = load i32, i32* %npixels.addr, align 4
  %call7 = call i32 @XFreeColors(%struct._XDisplay* %7, i64 %11, i64* %12, i32 %13, i64 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare zeroext i1 @x_mutable_colormap(%struct.Visual*) #1

declare i32 @XFreeColors(%struct._XDisplay*, i64, i64*, i32, i64) #1

; Function Attrs: nounwind uwtable
define void @init_frame_faces(%struct.frame* %f) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %face_cache = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 20
  %1 = load %struct.face_cache*, %struct.face_cache** %face_cache, align 8
  %cmp = icmp eq %struct.face_cache* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %call = call %struct.face_cache* @make_face_cache(%struct.frame* %2)
  %3 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %face_cache1 = getelementptr inbounds %struct.frame, %struct.frame* %3, i32 0, i32 20
  store %struct.face_cache* %call, %struct.face_cache** %face_cache1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_method = getelementptr inbounds %struct.frame, %struct.frame* %4, i32 0, i32 26
  %5 = bitcast i48* %output_method to i64*
  %bf.load = load i64, i64* %5, align 8
  %bf.lshr = lshr i64 %bf.load, 23
  %bf.clear = and i64 %bf.lshr, 7
  %bf.cast = trunc i64 %bf.clear to i32
  %cmp2 = icmp eq i32 %bf.cast, 2
  br i1 %cmp2, label %if.then.3, label %if.end.12

if.then.3:                                        ; preds = %if.end
  %6 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %terminal = getelementptr inbounds %struct.frame, %struct.frame* %6, i32 0, i32 61
  %7 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %image_cache = getelementptr inbounds %struct.terminal, %struct.terminal* %7, i32 0, i32 11
  %8 = load %struct.image_cache*, %struct.image_cache** %image_cache, align 8
  %cmp4 = icmp eq %struct.image_cache* %8, null
  br i1 %cmp4, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %if.then.3
  %call6 = call %struct.image_cache* @make_image_cache()
  %9 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %terminal7 = getelementptr inbounds %struct.frame, %struct.frame* %9, i32 0, i32 61
  %10 = load %struct.terminal*, %struct.terminal** %terminal7, align 8
  %image_cache8 = getelementptr inbounds %struct.terminal, %struct.terminal* %10, i32 0, i32 11
  store %struct.image_cache* %call6, %struct.image_cache** %image_cache8, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.5, %if.then.3
  %11 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %terminal10 = getelementptr inbounds %struct.frame, %struct.frame* %11, i32 0, i32 61
  %12 = load %struct.terminal*, %struct.terminal** %terminal10, align 8
  %image_cache11 = getelementptr inbounds %struct.terminal, %struct.terminal* %12, i32 0, i32 11
  %13 = load %struct.image_cache*, %struct.image_cache** %image_cache11, align 8
  %refcount = getelementptr inbounds %struct.image_cache, %struct.image_cache* %13, i32 0, i32 4
  %14 = load i64, i64* %refcount, align 8
  %inc = add nsw i64 %14, 1
  store i64 %inc, i64* %refcount, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.9, %if.end
  %15 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %call13 = call zeroext i1 @realize_basic_faces(%struct.frame* %15)
  br i1 %call13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.end.12
  call void @emacs_abort() #6
  unreachable

if.end.15:                                        ; preds = %if.end.12
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.face_cache* @make_face_cache(%struct.frame* %f) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %c = alloca %struct.face_cache*, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  %call = call noalias i8* @xmalloc(i64 40)
  %0 = bitcast i8* %call to %struct.face_cache*
  store %struct.face_cache* %0, %struct.face_cache** %c, align 8
  %call1 = call noalias i8* @xzalloc(i64 8008)
  %1 = bitcast i8* %call1 to %struct.face**
  %2 = load %struct.face_cache*, %struct.face_cache** %c, align 8
  %buckets = getelementptr inbounds %struct.face_cache, %struct.face_cache* %2, i32 0, i32 0
  store %struct.face** %1, %struct.face*** %buckets, align 8
  %3 = load %struct.face_cache*, %struct.face_cache** %c, align 8
  %size = getelementptr inbounds %struct.face_cache, %struct.face_cache* %3, i32 0, i32 3
  store i64 50, i64* %size, align 8
  %4 = load %struct.face_cache*, %struct.face_cache** %c, align 8
  %used = getelementptr inbounds %struct.face_cache, %struct.face_cache* %4, i32 0, i32 4
  store i32 0, i32* %used, align 4
  %5 = load %struct.face_cache*, %struct.face_cache** %c, align 8
  %size2 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %5, i32 0, i32 3
  %6 = load i64, i64* %size2, align 8
  %mul = mul i64 %6, 8
  %call3 = call noalias i8* @xmalloc(i64 %mul)
  %7 = bitcast i8* %call3 to %struct.face**
  %8 = load %struct.face_cache*, %struct.face_cache** %c, align 8
  %faces_by_id = getelementptr inbounds %struct.face_cache, %struct.face_cache* %8, i32 0, i32 2
  store %struct.face** %7, %struct.face*** %faces_by_id, align 8
  %9 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %10 = load %struct.face_cache*, %struct.face_cache** %c, align 8
  %f4 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %10, i32 0, i32 1
  store %struct.frame* %9, %struct.frame** %f4, align 8
  %11 = load i8, i8* @menu_face_changed_default, align 1
  %tobool = trunc i8 %11 to i1
  %12 = load %struct.face_cache*, %struct.face_cache** %c, align 8
  %menu_face_changed_p = getelementptr inbounds %struct.face_cache, %struct.face_cache* %12, i32 0, i32 5
  %13 = zext i1 %tobool to i8
  %bf.load = load i8, i8* %menu_face_changed_p, align 4
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, %13
  store i8 %bf.set, i8* %menu_face_changed_p, align 4
  %tobool5 = trunc i8 %13 to i1
  %14 = load %struct.face_cache*, %struct.face_cache** %c, align 8
  ret %struct.face_cache* %14
}

declare %struct.image_cache* @make_image_cache() #1

; Function Attrs: nounwind uwtable
define internal zeroext i1 @realize_basic_faces(%struct.frame* %f) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %success_p = alloca i8, align 1
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i8 0, i8* %success_p, align 1
  call void @block_input()
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %call = call zeroext i1 @realize_default_face(%struct.frame* %0)
  br i1 %call, label %if.then, label %if.end.20

if.then:                                          ; preds = %entry
  %1 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 672)
  call void @realize_named_face(%struct.frame* %1, i64 %call1, i32 1)
  %2 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 674)
  call void @realize_named_face(%struct.frame* %2, i64 %call2, i32 2)
  %3 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 921)
  call void @realize_named_face(%struct.frame* %3, i64 %call3, i32 3)
  %4 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 467)
  call void @realize_named_face(%struct.frame* %4, i64 %call4, i32 4)
  %5 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 513)
  call void @realize_named_face(%struct.frame* %5, i64 %call5, i32 5)
  %6 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %call6 = call i64 @builtin_lisp_symbol(i32 830)
  call void @realize_named_face(%struct.frame* %6, i64 %call6, i32 6)
  %7 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %call7 = call i64 @builtin_lisp_symbol(i32 208)
  call void @realize_named_face(%struct.frame* %7, i64 %call7, i32 7)
  %8 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %call8 = call i64 @builtin_lisp_symbol(i32 306)
  call void @realize_named_face(%struct.frame* %8, i64 %call8, i32 8)
  %9 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 684)
  call void @realize_named_face(%struct.frame* %9, i64 %call9, i32 9)
  %10 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %call10 = call i64 @builtin_lisp_symbol(i32 650)
  call void @realize_named_face(%struct.frame* %10, i64 %call10, i32 10)
  %11 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %call11 = call i64 @builtin_lisp_symbol(i32 1000)
  call void @realize_named_face(%struct.frame* %11, i64 %call11, i32 11)
  %12 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %call12 = call i64 @builtin_lisp_symbol(i32 1023)
  call void @realize_named_face(%struct.frame* %12, i64 %call12, i32 12)
  %13 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %call13 = call i64 @builtin_lisp_symbol(i32 1024)
  call void @realize_named_face(%struct.frame* %13, i64 %call13, i32 13)
  %14 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %call14 = call i64 @builtin_lisp_symbol(i32 1025)
  call void @realize_named_face(%struct.frame* %14, i64 %call14, i32 14)
  %15 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %face_cache = getelementptr inbounds %struct.frame, %struct.frame* %15, i32 0, i32 20
  %16 = load %struct.face_cache*, %struct.face_cache** %face_cache, align 8
  %menu_face_changed_p = getelementptr inbounds %struct.face_cache, %struct.face_cache* %16, i32 0, i32 5
  %bf.load = load i8, i8* %menu_face_changed_p, align 4
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %if.then
  %17 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %face_cache16 = getelementptr inbounds %struct.frame, %struct.frame* %17, i32 0, i32 20
  %18 = load %struct.face_cache*, %struct.face_cache** %face_cache16, align 8
  %menu_face_changed_p17 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %18, i32 0, i32 5
  %bf.load18 = load i8, i8* %menu_face_changed_p17, align 4
  %bf.clear19 = and i8 %bf.load18, -2
  store i8 %bf.clear19, i8* %menu_face_changed_p17, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.15, %if.then
  store i8 1, i8* %success_p, align 1
  br label %if.end.20

if.end.20:                                        ; preds = %if.end, %entry
  call void @unblock_input()
  %19 = load i8, i8* %success_p, align 1
  %tobool = trunc i8 %19 to i1
  ret i1 %tobool
}

; Function Attrs: noreturn
declare void @emacs_abort() #2

; Function Attrs: nounwind uwtable
define void @free_frame_faces(%struct.frame* %f) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %face_cache = alloca %struct.face_cache*, align 8
  %image_cache = alloca %struct.image_cache*, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %face_cache1 = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 20
  %1 = load %struct.face_cache*, %struct.face_cache** %face_cache1, align 8
  store %struct.face_cache* %1, %struct.face_cache** %face_cache, align 8
  %2 = load %struct.face_cache*, %struct.face_cache** %face_cache, align 8
  %tobool = icmp ne %struct.face_cache* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.face_cache*, %struct.face_cache** %face_cache, align 8
  call void @free_face_cache(%struct.face_cache* %3)
  %4 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %face_cache2 = getelementptr inbounds %struct.frame, %struct.frame* %4, i32 0, i32 20
  store %struct.face_cache* null, %struct.face_cache** %face_cache2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_method = getelementptr inbounds %struct.frame, %struct.frame* %5, i32 0, i32 26
  %6 = bitcast i48* %output_method to i64*
  %bf.load = load i64, i64* %6, align 8
  %bf.lshr = lshr i64 %bf.load, 23
  %bf.clear = and i64 %bf.lshr, 7
  %bf.cast = trunc i64 %bf.clear to i32
  %cmp = icmp eq i32 %bf.cast, 2
  br i1 %cmp, label %if.then.3, label %if.end.12

if.then.3:                                        ; preds = %if.end
  %7 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %terminal = getelementptr inbounds %struct.frame, %struct.frame* %7, i32 0, i32 61
  %8 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %image_cache4 = getelementptr inbounds %struct.terminal, %struct.terminal* %8, i32 0, i32 11
  %9 = load %struct.image_cache*, %struct.image_cache** %image_cache4, align 8
  store %struct.image_cache* %9, %struct.image_cache** %image_cache, align 8
  %10 = load %struct.image_cache*, %struct.image_cache** %image_cache, align 8
  %tobool5 = icmp ne %struct.image_cache* %10, null
  br i1 %tobool5, label %if.then.6, label %if.end.11

if.then.6:                                        ; preds = %if.then.3
  %11 = load %struct.image_cache*, %struct.image_cache** %image_cache, align 8
  %refcount = getelementptr inbounds %struct.image_cache, %struct.image_cache* %11, i32 0, i32 4
  %12 = load i64, i64* %refcount, align 8
  %dec = add nsw i64 %12, -1
  store i64 %dec, i64* %refcount, align 8
  %13 = load %struct.image_cache*, %struct.image_cache** %image_cache, align 8
  %refcount7 = getelementptr inbounds %struct.image_cache, %struct.image_cache* %13, i32 0, i32 4
  %14 = load i64, i64* %refcount7, align 8
  %cmp8 = icmp eq i64 %14, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.then.6
  %15 = load %struct.frame*, %struct.frame** %f.addr, align 8
  call void @free_image_cache(%struct.frame* %15)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.then.6
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then.3
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @free_face_cache(%struct.face_cache* %c) #0 {
entry:
  %c.addr = alloca %struct.face_cache*, align 8
  store %struct.face_cache* %c, %struct.face_cache** %c.addr, align 8
  %0 = load %struct.face_cache*, %struct.face_cache** %c.addr, align 8
  %tobool = icmp ne %struct.face_cache* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.face_cache*, %struct.face_cache** %c.addr, align 8
  call void @free_realized_faces(%struct.face_cache* %1)
  %2 = load %struct.face_cache*, %struct.face_cache** %c.addr, align 8
  %buckets = getelementptr inbounds %struct.face_cache, %struct.face_cache* %2, i32 0, i32 0
  %3 = load %struct.face**, %struct.face*** %buckets, align 8
  %4 = bitcast %struct.face** %3 to i8*
  call void @xfree(i8* %4)
  %5 = load %struct.face_cache*, %struct.face_cache** %c.addr, align 8
  %faces_by_id = getelementptr inbounds %struct.face_cache, %struct.face_cache* %5, i32 0, i32 2
  %6 = load %struct.face**, %struct.face*** %faces_by_id, align 8
  %7 = bitcast %struct.face** %6 to i8*
  call void @xfree(i8* %7)
  %8 = load %struct.face_cache*, %struct.face_cache** %c.addr, align 8
  %9 = bitcast %struct.face_cache* %8 to i8*
  call void @xfree(i8* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @free_image_cache(%struct.frame*) #1

; Function Attrs: nounwind uwtable
define void @recompute_basic_faces(%struct.frame* %f) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %face_cache = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 20
  %1 = load %struct.face_cache*, %struct.face_cache** %face_cache, align 8
  %tobool = icmp ne %struct.face_cache* %1, null
  br i1 %tobool, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  call void @clear_face_cache(i1 zeroext false)
  %2 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %call = call zeroext i1 @realize_basic_faces(%struct.frame* %2)
  br i1 %call, label %if.end, label %if.then.1

if.then.1:                                        ; preds = %if.then
  call void @emacs_abort() #6
  unreachable

if.end:                                           ; preds = %if.then
  br label %if.end.2

if.end.2:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @clear_face_cache(i1 zeroext %clear_fonts_p) #0 {
entry:
  %clear_fonts_p.addr = alloca i8, align 1
  %tail = alloca i64, align 8
  %frame = alloca i64, align 8
  %f = alloca %struct.frame*, align 8
  %f20 = alloca %struct.frame*, align 8
  %frombool = zext i1 %clear_fonts_p to i8
  store i8 %frombool, i8* %clear_fonts_p.addr, align 1
  %0 = load i8, i8* %clear_fonts_p.addr, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* @clear_font_table_count, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @clear_font_table_count, align 4
  %cmp = icmp eq i32 %inc, 100
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* @clear_font_table_count, align 4
  %2 = load i64, i64* @Vframe_list, align 8
  store i64 %2, i64* %tail, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i64, i64* %tail, align 8
  %and = and i64 %3, 7
  %conv = trunc i64 %and to i32
  %cmp1 = icmp eq i32 %conv, 3
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %4 = load i64, i64* %tail, align 8
  %sub = sub nsw i64 %4, 3
  %5 = inttoptr i64 %sub to i8*
  %6 = bitcast i8* %5 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %6, i32 0, i32 0
  %7 = load i64, i64* %car, align 8
  store i64 %7, i64* %frame, align 8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %8 = phi i1 [ false, %for.cond ], [ true, %land.rhs ]
  br i1 %8, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %9 = load i64, i64* %frame, align 8
  %sub3 = sub nsw i64 %9, 5
  %10 = inttoptr i64 %sub3 to i8*
  %11 = bitcast i8* %10 to %struct.frame*
  store %struct.frame* %11, %struct.frame** %f, align 8
  %12 = load %struct.frame*, %struct.frame** %f, align 8
  %output_method = getelementptr inbounds %struct.frame, %struct.frame* %12, i32 0, i32 26
  %13 = bitcast i48* %output_method to i64*
  %bf.load = load i64, i64* %13, align 8
  %bf.lshr = lshr i64 %bf.load, 23
  %bf.clear = and i64 %bf.lshr, 7
  %bf.cast = trunc i64 %bf.clear to i32
  %cmp4 = icmp eq i32 %bf.cast, 2
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %14 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %14, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %15 = load %struct.x_output*, %struct.x_output** %x, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %15, i32 0, i32 44
  %16 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %n_fonts = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %16, i32 0, i32 28
  %17 = load i32, i32* %n_fonts, align 4
  %cmp6 = icmp sgt i32 %17, 10
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %land.lhs.true
  %18 = load %struct.frame*, %struct.frame** %f, align 8
  call void @clear_font_cache(%struct.frame* %18)
  %19 = load i64, i64* %frame, align 8
  call void @free_all_realized_faces(i64 %19)
  br label %if.end

if.end:                                           ; preds = %if.then.8, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load i64, i64* %tail, align 8
  %sub9 = sub nsw i64 %20, 3
  %21 = inttoptr i64 %sub9 to i8*
  %22 = bitcast i8* %21 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %22, i32 0, i32 1
  %cdr = bitcast %union.anon.10* %u to i64*
  %23 = load i64, i64* %cdr, align 8
  store i64 %23, i64* %tail, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  br label %if.end.36

if.else:                                          ; preds = %lor.lhs.false
  %24 = load i64, i64* @Vframe_list, align 8
  store i64 %24, i64* %tail, align 8
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.31, %if.else
  %25 = load i64, i64* %tail, align 8
  %and11 = and i64 %25, 7
  %conv12 = trunc i64 %and11 to i32
  %cmp13 = icmp eq i32 %conv12, 3
  br i1 %cmp13, label %land.rhs.15, label %land.end.18

land.rhs.15:                                      ; preds = %for.cond.10
  %26 = load i64, i64* %tail, align 8
  %sub16 = sub nsw i64 %26, 3
  %27 = inttoptr i64 %sub16 to i8*
  %28 = bitcast i8* %27 to %struct.Lisp_Cons*
  %car17 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %28, i32 0, i32 0
  %29 = load i64, i64* %car17, align 8
  store i64 %29, i64* %frame, align 8
  br label %land.end.18

land.end.18:                                      ; preds = %land.rhs.15, %for.cond.10
  %30 = phi i1 [ false, %for.cond.10 ], [ true, %land.rhs.15 ]
  br i1 %30, label %for.body.19, label %for.end.35

for.body.19:                                      ; preds = %land.end.18
  %31 = load i64, i64* %frame, align 8
  %sub21 = sub nsw i64 %31, 5
  %32 = inttoptr i64 %sub21 to i8*
  %33 = bitcast i8* %32 to %struct.frame*
  store %struct.frame* %33, %struct.frame** %f20, align 8
  %34 = load %struct.frame*, %struct.frame** %f20, align 8
  %output_method22 = getelementptr inbounds %struct.frame, %struct.frame* %34, i32 0, i32 26
  %35 = bitcast i48* %output_method22 to i64*
  %bf.load23 = load i64, i64* %35, align 8
  %bf.lshr24 = lshr i64 %bf.load23, 23
  %bf.clear25 = and i64 %bf.lshr24, 7
  %bf.cast26 = trunc i64 %bf.clear25 to i32
  %cmp27 = icmp eq i32 %bf.cast26, 2
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %for.body.19
  %36 = load %struct.frame*, %struct.frame** %f20, align 8
  %face_cache = getelementptr inbounds %struct.frame, %struct.frame* %36, i32 0, i32 20
  %37 = load %struct.face_cache*, %struct.face_cache** %face_cache, align 8
  call void @clear_face_gcs(%struct.face_cache* %37)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %for.body.19
  br label %for.inc.31

for.inc.31:                                       ; preds = %if.end.30
  %38 = load i64, i64* %tail, align 8
  %sub32 = sub nsw i64 %38, 3
  %39 = inttoptr i64 %sub32 to i8*
  %40 = bitcast i8* %39 to %struct.Lisp_Cons*
  %u33 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %40, i32 0, i32 1
  %cdr34 = bitcast %union.anon.10* %u33 to i64*
  %41 = load i64, i64* %cdr34, align 8
  store i64 %41, i64* %tail, align 8
  br label %for.cond.10

for.end.35:                                       ; preds = %land.end.18
  %call = call i64 @builtin_lisp_symbol(i32 0)
  call void @clear_image_caches(i64 %call)
  br label %if.end.36

if.end.36:                                        ; preds = %for.end.35, %for.end
  ret void
}

declare void @clear_font_cache(%struct.frame*) #1

; Function Attrs: nounwind uwtable
define void @free_all_realized_faces(i64 %frame) #0 {
entry:
  %frame.addr = alloca i64, align 8
  %rest = alloca i64, align 8
  store i64 %frame, i64* %frame.addr, align 8
  %0 = load i64, i64* %frame.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, i64* @Vframe_list, align 8
  store i64 %1, i64* %rest, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i64, i64* %rest, align 8
  %and = and i64 %2, 7
  %conv = trunc i64 %and to i32
  %cmp1 = icmp eq i32 %conv, 3
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load i64, i64* %rest, align 8
  %sub = sub nsw i64 %3, 3
  %4 = inttoptr i64 %sub to i8*
  %5 = bitcast i8* %4 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %5, i32 0, i32 0
  %6 = load i64, i64* %car, align 8
  store i64 %6, i64* %frame.addr, align 8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %7 = phi i1 [ false, %for.cond ], [ true, %land.rhs ]
  br i1 %7, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %8 = load i64, i64* %frame.addr, align 8
  %sub3 = sub nsw i64 %8, 5
  %9 = inttoptr i64 %sub3 to i8*
  %10 = bitcast i8* %9 to %struct.frame*
  %face_cache = getelementptr inbounds %struct.frame, %struct.frame* %10, i32 0, i32 20
  %11 = load %struct.face_cache*, %struct.face_cache** %face_cache, align 8
  call void @free_realized_faces(%struct.face_cache* %11)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i64, i64* %rest, align 8
  %sub4 = sub nsw i64 %12, 3
  %13 = inttoptr i64 %sub4 to i8*
  %14 = bitcast i8* %13 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %14, i32 0, i32 1
  %cdr = bitcast %union.anon.10* %u to i64*
  %15 = load i64, i64* %cdr, align 8
  store i64 %15, i64* %rest, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  store i32 58, i32* @windows_or_buffers_changed, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %16 = load i64, i64* %frame.addr, align 8
  %sub5 = sub nsw i64 %16, 5
  %17 = inttoptr i64 %sub5 to i8*
  %18 = bitcast i8* %17 to %struct.frame*
  %face_cache6 = getelementptr inbounds %struct.frame, %struct.frame* %18, i32 0, i32 20
  %19 = load %struct.face_cache*, %struct.face_cache** %face_cache6, align 8
  call void @free_realized_faces(%struct.face_cache* %19)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @clear_face_gcs(%struct.face_cache* %c) #0 {
entry:
  %c.addr = alloca %struct.face_cache*, align 8
  %i = alloca i32, align 4
  %face = alloca %struct.face*, align 8
  store %struct.face_cache* %c, %struct.face_cache** %c.addr, align 8
  %0 = load %struct.face_cache*, %struct.face_cache** %c.addr, align 8
  %tobool = icmp ne %struct.face_cache* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.face_cache*, %struct.face_cache** %c.addr, align 8
  %f = getelementptr inbounds %struct.face_cache, %struct.face_cache* %1, i32 0, i32 1
  %2 = load %struct.frame*, %struct.frame** %f, align 8
  %output_method = getelementptr inbounds %struct.frame, %struct.frame* %2, i32 0, i32 26
  %3 = bitcast i48* %output_method to i64*
  %bf.load = load i64, i64* %3, align 8
  %bf.lshr = lshr i64 %bf.load, 23
  %bf.clear = and i64 %bf.lshr, 7
  %bf.cast = trunc i64 %bf.clear to i32
  %cmp = icmp eq i32 %bf.cast, 2
  br i1 %cmp, label %if.then, label %if.end.13

if.then:                                          ; preds = %land.lhs.true
  store i32 15, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.face_cache*, %struct.face_cache** %c.addr, align 8
  %used = getelementptr inbounds %struct.face_cache, %struct.face_cache* %5, i32 0, i32 4
  %6 = load i32, i32* %used, align 4
  %cmp1 = icmp slt i32 %4, %6
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.face_cache*, %struct.face_cache** %c.addr, align 8
  %faces_by_id = getelementptr inbounds %struct.face_cache, %struct.face_cache* %8, i32 0, i32 2
  %9 = load %struct.face**, %struct.face*** %faces_by_id, align 8
  %arrayidx = getelementptr inbounds %struct.face*, %struct.face** %9, i64 %idxprom
  %10 = load %struct.face*, %struct.face** %arrayidx, align 8
  store %struct.face* %10, %struct.face** %face, align 8
  %11 = load %struct.face*, %struct.face** %face, align 8
  %tobool2 = icmp ne %struct.face* %11, null
  br i1 %tobool2, label %land.lhs.true.3, label %if.end.12

land.lhs.true.3:                                  ; preds = %for.body
  %12 = load %struct.face*, %struct.face** %face, align 8
  %gc = getelementptr inbounds %struct.face, %struct.face* %12, i32 0, i32 2
  %13 = load %struct._XGC*, %struct._XGC** %gc, align 8
  %tobool4 = icmp ne %struct._XGC* %13, null
  br i1 %tobool4, label %if.then.5, label %if.end.12

if.then.5:                                        ; preds = %land.lhs.true.3
  call void @block_input()
  %14 = load %struct.face*, %struct.face** %face, align 8
  %font = getelementptr inbounds %struct.face, %struct.face* %14, i32 0, i32 10
  %15 = load %struct.font*, %struct.font** %font, align 8
  %tobool6 = icmp ne %struct.font* %15, null
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then.5
  %16 = load %struct.face_cache*, %struct.face_cache** %c.addr, align 8
  %f8 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %16, i32 0, i32 1
  %17 = load %struct.frame*, %struct.frame** %f8, align 8
  %18 = load %struct.face*, %struct.face** %face, align 8
  call void @font_done_for_face(%struct.frame* %17, %struct.face* %18)
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then.5
  %19 = load %struct.face_cache*, %struct.face_cache** %c.addr, align 8
  %f9 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %19, i32 0, i32 1
  %20 = load %struct.frame*, %struct.frame** %f9, align 8
  %21 = load %struct.face*, %struct.face** %face, align 8
  %gc10 = getelementptr inbounds %struct.face, %struct.face* %21, i32 0, i32 2
  %22 = load %struct._XGC*, %struct._XGC** %gc10, align 8
  call void @x_free_gc(%struct.frame* %20, %struct._XGC* %22)
  %23 = load %struct.face*, %struct.face** %face, align 8
  %gc11 = getelementptr inbounds %struct.face, %struct.face* %23, i32 0, i32 2
  store %struct._XGC* null, %struct._XGC** %gc11, align 8
  call void @unblock_input()
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %land.lhs.true.3, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.13

if.end.13:                                        ; preds = %for.end, %land.lhs.true, %entry
  ret void
}

declare void @clear_image_caches(i64) #1

declare i64 @builtin_lisp_symbol(i32) #1

; Function Attrs: nounwind uwtable
define i64 @Fclear_face_cache(i64 %thoroughly) #0 {
entry:
  %thoroughly.addr = alloca i64, align 8
  store i64 %thoroughly, i64* %thoroughly.addr, align 8
  %0 = load i64, i64* %thoroughly.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  %lnot = xor i1 %cmp, true
  call void @clear_face_cache(i1 zeroext %lnot)
  store i8 1, i8* @face_change, align 1
  store i32 53, i32* @windows_or_buffers_changed, align 4
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call1
}

; Function Attrs: nounwind uwtable
define i64 @Fbitmap_spec_p(i64 %object) #0 {
entry:
  %object.addr = alloca i64, align 8
  %pixmap_p = alloca i8, align 1
  %width = alloca i64, align 8
  %height = alloca i64, align 8
  %data = alloca i64, align 8
  %bytes_per_row = alloca i32, align 4
  store i64 %object, i64* %object.addr, align 8
  store i8 0, i8* %pixmap_p, align 1
  %0 = load i64, i64* %object.addr, align 8
  %call = call zeroext i1 @STRINGP(i64 %0)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8 1, i8* %pixmap_p, align 1
  br label %if.end.49

if.else:                                          ; preds = %entry
  %1 = load i64, i64* %object.addr, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %if.then.2, label %if.end.48

if.then.2:                                        ; preds = %if.else
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call3, i64* %data, align 8
  store i64 %call3, i64* %width, align 8
  store i64 %call3, i64* %height, align 8
  %2 = load i64, i64* %object.addr, align 8
  %and4 = and i64 %2, 7
  %conv5 = trunc i64 %and4 to i32
  %cmp6 = icmp eq i32 %conv5, 3
  br i1 %cmp6, label %if.then.8, label %if.end.28

if.then.8:                                        ; preds = %if.then.2
  %3 = load i64, i64* %object.addr, align 8
  %sub = sub nsw i64 %3, 3
  %4 = inttoptr i64 %sub to i8*
  %5 = bitcast i8* %4 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %5, i32 0, i32 0
  %6 = load i64, i64* %car, align 8
  store i64 %6, i64* %width, align 8
  %7 = load i64, i64* %object.addr, align 8
  %sub9 = sub nsw i64 %7, 3
  %8 = inttoptr i64 %sub9 to i8*
  %9 = bitcast i8* %8 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %9, i32 0, i32 1
  %cdr = bitcast %union.anon.10* %u to i64*
  %10 = load i64, i64* %cdr, align 8
  store i64 %10, i64* %object.addr, align 8
  %11 = load i64, i64* %object.addr, align 8
  %and10 = and i64 %11, 7
  %conv11 = trunc i64 %and10 to i32
  %cmp12 = icmp eq i32 %conv11, 3
  br i1 %cmp12, label %if.then.14, label %if.end.27

if.then.14:                                       ; preds = %if.then.8
  %12 = load i64, i64* %object.addr, align 8
  %sub15 = sub nsw i64 %12, 3
  %13 = inttoptr i64 %sub15 to i8*
  %14 = bitcast i8* %13 to %struct.Lisp_Cons*
  %car16 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %14, i32 0, i32 0
  %15 = load i64, i64* %car16, align 8
  store i64 %15, i64* %height, align 8
  %16 = load i64, i64* %object.addr, align 8
  %sub17 = sub nsw i64 %16, 3
  %17 = inttoptr i64 %sub17 to i8*
  %18 = bitcast i8* %17 to %struct.Lisp_Cons*
  %u18 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %18, i32 0, i32 1
  %cdr19 = bitcast %union.anon.10* %u18 to i64*
  %19 = load i64, i64* %cdr19, align 8
  store i64 %19, i64* %object.addr, align 8
  %20 = load i64, i64* %object.addr, align 8
  %and20 = and i64 %20, 7
  %conv21 = trunc i64 %and20 to i32
  %cmp22 = icmp eq i32 %conv21, 3
  br i1 %cmp22, label %if.then.24, label %if.end

if.then.24:                                       ; preds = %if.then.14
  %21 = load i64, i64* %object.addr, align 8
  %sub25 = sub nsw i64 %21, 3
  %22 = inttoptr i64 %sub25 to i8*
  %23 = bitcast i8* %22 to %struct.Lisp_Cons*
  %car26 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %23, i32 0, i32 0
  %24 = load i64, i64* %car26, align 8
  store i64 %24, i64* %data, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.24, %if.then.14
  br label %if.end.27

if.end.27:                                        ; preds = %if.end, %if.then.8
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.2
  %25 = load i64, i64* %data, align 8
  %call29 = call zeroext i1 @STRINGP(i64 %25)
  br i1 %call29, label %land.lhs.true, label %if.end.47

land.lhs.true:                                    ; preds = %if.end.28
  %26 = load i64, i64* %width, align 8
  %call31 = call zeroext i1 @RANGED_INTEGERP(i64 1, i64 %26, i64 2147483647)
  br i1 %call31, label %land.lhs.true.33, label %if.end.47

land.lhs.true.33:                                 ; preds = %land.lhs.true
  %27 = load i64, i64* %height, align 8
  %call34 = call zeroext i1 @RANGED_INTEGERP(i64 1, i64 %27, i64 2147483647)
  br i1 %call34, label %if.then.36, label %if.end.47

if.then.36:                                       ; preds = %land.lhs.true.33
  %28 = load i64, i64* %width, align 8
  %shr = ashr i64 %28, 2
  %add = add nsw i64 %shr, 8
  %sub37 = sub nsw i64 %add, 1
  %div = sdiv i64 %sub37, 8
  %conv38 = trunc i64 %div to i32
  store i32 %conv38, i32* %bytes_per_row, align 4
  %29 = load i64, i64* %height, align 8
  %shr39 = ashr i64 %29, 2
  %30 = load i64, i64* %data, align 8
  %call40 = call i64 @SBYTES(i64 %30)
  %31 = load i32, i32* %bytes_per_row, align 4
  %conv41 = sext i32 %31 to i64
  %div42 = sdiv i64 %call40, %conv41
  %cmp43 = icmp sle i64 %shr39, %div42
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.then.36
  store i8 1, i8* %pixmap_p, align 1
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %if.then.36
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %land.lhs.true.33, %land.lhs.true, %if.end.28
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.else
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then
  %32 = load i8, i8* %pixmap_p, align 1
  %tobool = trunc i8 %32 to i1
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.49
  %call51 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end

cond.false:                                       ; preds = %if.end.49
  %call52 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call51, %cond.true ], [ %call52, %cond.false ]
  ret i64 %cond
}

declare zeroext i1 @STRINGP(i64) #1

declare zeroext i1 @RANGED_INTEGERP(i64, i64, i64) #1

declare i64 @SBYTES(i64) #1

; Function Attrs: nounwind uwtable
define i64 @tty_color_name(%struct.frame* %f, i32 %idx) #0 {
entry:
  %retval = alloca i64, align 8
  %f.addr = alloca %struct.frame*, align 8
  %idx.addr = alloca i32, align 4
  %frame = alloca i64, align 8
  %coldesc = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  %0 = load i32, i32* %idx.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 940)
  %call1 = call i64 @Ffboundp(i64 %call)
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp3 = icmp eq i64 %call1, %call2
  br i1 %cmp3, label %if.end.11, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %1 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %2 = bitcast %struct.frame* %1 to i8*
  %call4 = call i64 @make_lisp_ptr(i8* %2, i32 5)
  store i64 %call4, i64* %frame, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 940)
  %3 = load i32, i32* %idx.addr, align 4
  %conv = sext i32 %3 to i64
  %shl = shl i64 %conv, 2
  %add = add i64 %shl, 2
  %4 = load i64, i64* %frame, align 8
  %call6 = call i64 @call2(i64 %call5, i64 %add, i64 %4)
  store i64 %call6, i64* %coldesc, align 8
  %5 = load i64, i64* %coldesc, align 8
  %call7 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp8 = icmp eq i64 %5, %call7
  br i1 %cmp8, label %if.end, label %if.then.10

if.then.10:                                       ; preds = %if.then
  %6 = load i64, i64* %coldesc, align 8
  %sub = sub nsw i64 %6, 3
  %7 = inttoptr i64 %sub to i8*
  %8 = bitcast i8* %7 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %8, i32 0, i32 0
  %9 = load i64, i64* %car, align 8
  store i64 %9, i64* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %land.lhs.true, %entry
  %10 = load i32, i32* %idx.addr, align 4
  %conv12 = sext i32 %10 to i64
  %cmp13 = icmp eq i64 %conv12, -2
  br i1 %cmp13, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.11
  %call16 = call i64 @build_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @unspecified_fg, i32 0, i32 0))
  store i64 %call16, i64* %retval
  br label %return

if.end.17:                                        ; preds = %if.end.11
  %11 = load i32, i32* %idx.addr, align 4
  %conv18 = sext i32 %11 to i64
  %cmp19 = icmp eq i64 %conv18, -3
  br i1 %cmp19, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.end.17
  %call22 = call i64 @build_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @unspecified_bg, i32 0, i32 0))
  store i64 %call22, i64* %retval
  br label %return

if.end.23:                                        ; preds = %if.end.17
  %call24 = call i64 @builtin_lisp_symbol(i32 975)
  store i64 %call24, i64* %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.then.21, %if.then.15, %if.then.10
  %12 = load i64, i64* %retval
  ret i64 %12
}

declare i64 @Ffboundp(i64) #1

declare i64 @make_lisp_ptr(i8*, i32) #1

declare i64 @call2(i64, i64, i64) #1

declare i64 @build_string(i8*) #1

; Function Attrs: nounwind uwtable
define i64 @Fcolor_gray_p(i64 %color, i64 %frame) #0 {
entry:
  %color.addr = alloca i64, align 8
  %frame.addr = alloca i64, align 8
  store i64 %color, i64* %color.addr, align 8
  store i64 %frame, i64* %frame.addr, align 8
  %0 = load i64, i64* %color.addr, align 8
  call void @CHECK_STRING(i64 %0)
  %1 = load i64, i64* %frame.addr, align 8
  %call = call %struct.frame* @decode_any_frame(i64 %1)
  %2 = load i64, i64* %color.addr, align 8
  %call1 = call i8* @SSDATA(i64 %2)
  %call2 = call zeroext i1 @face_color_gray_p(%struct.frame* %call, i8* %call1)
  br i1 %call2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call3 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call3, %cond.true ], [ %call4, %cond.false ]
  ret i64 %cond
}

declare void @CHECK_STRING(i64) #1

; Function Attrs: nounwind uwtable
define internal zeroext i1 @face_color_gray_p(%struct.frame* %f, i8* %color_name) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %color_name.addr = alloca i8*, align 8
  %color = alloca %struct.XColor, align 8
  %gray_p = alloca i8, align 1
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i8* %color_name, i8** %color_name.addr, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %1 = load i8*, i8** %color_name.addr, align 8
  %call = call zeroext i1 @defined_color(%struct.frame* %0, i8* %1, %struct.XColor* %color, i1 zeroext false)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %red = getelementptr inbounds %struct.XColor, %struct.XColor* %color, i32 0, i32 1
  %2 = load i16, i16* %red, align 2
  %conv = zext i16 %2 to i32
  %cmp = icmp slt i32 %conv, 5000
  br i1 %cmp, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %if.then
  %green = getelementptr inbounds %struct.XColor, %struct.XColor* %color, i32 0, i32 2
  %3 = load i16, i16* %green, align 2
  %conv2 = zext i16 %3 to i32
  %cmp3 = icmp slt i32 %conv2, 5000
  br i1 %cmp3, label %land.lhs.true.5, label %lor.rhs

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %blue = getelementptr inbounds %struct.XColor, %struct.XColor* %color, i32 0, i32 3
  %4 = load i16, i16* %blue, align 2
  %conv6 = zext i16 %4 to i32
  %cmp7 = icmp slt i32 %conv6, 5000
  br i1 %cmp7, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true.5, %land.lhs.true, %if.then
  %red9 = getelementptr inbounds %struct.XColor, %struct.XColor* %color, i32 0, i32 1
  %5 = load i16, i16* %red9, align 2
  %conv10 = zext i16 %5 to i32
  %green11 = getelementptr inbounds %struct.XColor, %struct.XColor* %color, i32 0, i32 2
  %6 = load i16, i16* %green11, align 2
  %conv12 = zext i16 %6 to i32
  %sub = sub nsw i32 %conv10, %conv12
  %cmp13 = icmp slt i32 %sub, 0
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.rhs
  %red15 = getelementptr inbounds %struct.XColor, %struct.XColor* %color, i32 0, i32 1
  %7 = load i16, i16* %red15, align 2
  %conv16 = zext i16 %7 to i32
  %green17 = getelementptr inbounds %struct.XColor, %struct.XColor* %color, i32 0, i32 2
  %8 = load i16, i16* %green17, align 2
  %conv18 = zext i16 %8 to i32
  %sub19 = sub nsw i32 %conv16, %conv18
  %sub20 = sub nsw i32 0, %sub19
  br label %cond.end

cond.false:                                       ; preds = %lor.rhs
  %red21 = getelementptr inbounds %struct.XColor, %struct.XColor* %color, i32 0, i32 1
  %9 = load i16, i16* %red21, align 2
  %conv22 = zext i16 %9 to i32
  %green23 = getelementptr inbounds %struct.XColor, %struct.XColor* %color, i32 0, i32 2
  %10 = load i16, i16* %green23, align 2
  %conv24 = zext i16 %10 to i32
  %sub25 = sub nsw i32 %conv22, %conv24
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub20, %cond.true ], [ %sub25, %cond.false ]
  %red26 = getelementptr inbounds %struct.XColor, %struct.XColor* %color, i32 0, i32 1
  %11 = load i16, i16* %red26, align 2
  %conv27 = zext i16 %11 to i32
  %green28 = getelementptr inbounds %struct.XColor, %struct.XColor* %color, i32 0, i32 2
  %12 = load i16, i16* %green28, align 2
  %conv29 = zext i16 %12 to i32
  %cmp30 = icmp sgt i32 %conv27, %conv29
  br i1 %cmp30, label %cond.true.32, label %cond.false.35

cond.true.32:                                     ; preds = %cond.end
  %red33 = getelementptr inbounds %struct.XColor, %struct.XColor* %color, i32 0, i32 1
  %13 = load i16, i16* %red33, align 2
  %conv34 = zext i16 %13 to i32
  br label %cond.end.38

cond.false.35:                                    ; preds = %cond.end
  %green36 = getelementptr inbounds %struct.XColor, %struct.XColor* %color, i32 0, i32 2
  %14 = load i16, i16* %green36, align 2
  %conv37 = zext i16 %14 to i32
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.false.35, %cond.true.32
  %cond39 = phi i32 [ %conv34, %cond.true.32 ], [ %conv37, %cond.false.35 ]
  %div = sdiv i32 %cond39, 20
  %cmp40 = icmp slt i32 %cond, %div
  br i1 %cmp40, label %land.lhs.true.42, label %land.end

land.lhs.true.42:                                 ; preds = %cond.end.38
  %green43 = getelementptr inbounds %struct.XColor, %struct.XColor* %color, i32 0, i32 2
  %15 = load i16, i16* %green43, align 2
  %conv44 = zext i16 %15 to i32
  %blue45 = getelementptr inbounds %struct.XColor, %struct.XColor* %color, i32 0, i32 3
  %16 = load i16, i16* %blue45, align 2
  %conv46 = zext i16 %16 to i32
  %sub47 = sub nsw i32 %conv44, %conv46
  %cmp48 = icmp slt i32 %sub47, 0
  br i1 %cmp48, label %cond.true.50, label %cond.false.57

cond.true.50:                                     ; preds = %land.lhs.true.42
  %green51 = getelementptr inbounds %struct.XColor, %struct.XColor* %color, i32 0, i32 2
  %17 = load i16, i16* %green51, align 2
  %conv52 = zext i16 %17 to i32
  %blue53 = getelementptr inbounds %struct.XColor, %struct.XColor* %color, i32 0, i32 3
  %18 = load i16, i16* %blue53, align 2
  %conv54 = zext i16 %18 to i32
  %sub55 = sub nsw i32 %conv52, %conv54
  %sub56 = sub nsw i32 0, %sub55
  br label %cond.end.63

cond.false.57:                                    ; preds = %land.lhs.true.42
  %green58 = getelementptr inbounds %struct.XColor, %struct.XColor* %color, i32 0, i32 2
  %19 = load i16, i16* %green58, align 2
  %conv59 = zext i16 %19 to i32
  %blue60 = getelementptr inbounds %struct.XColor, %struct.XColor* %color, i32 0, i32 3
  %20 = load i16, i16* %blue60, align 2
  %conv61 = zext i16 %20 to i32
  %sub62 = sub nsw i32 %conv59, %conv61
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.57, %cond.true.50
  %cond64 = phi i32 [ %sub56, %cond.true.50 ], [ %sub62, %cond.false.57 ]
  %green65 = getelementptr inbounds %struct.XColor, %struct.XColor* %color, i32 0, i32 2
  %21 = load i16, i16* %green65, align 2
  %conv66 = zext i16 %21 to i32
  %blue67 = getelementptr inbounds %struct.XColor, %struct.XColor* %color, i32 0, i32 3
  %22 = load i16, i16* %blue67, align 2
  %conv68 = zext i16 %22 to i32
  %cmp69 = icmp sgt i32 %conv66, %conv68
  br i1 %cmp69, label %cond.true.71, label %cond.false.74

cond.true.71:                                     ; preds = %cond.end.63
  %green72 = getelementptr inbounds %struct.XColor, %struct.XColor* %color, i32 0, i32 2
  %23 = load i16, i16* %green72, align 2
  %conv73 = zext i16 %23 to i32
  br label %cond.end.77

cond.false.74:                                    ; preds = %cond.end.63
  %blue75 = getelementptr inbounds %struct.XColor, %struct.XColor* %color, i32 0, i32 3
  %24 = load i16, i16* %blue75, align 2
  %conv76 = zext i16 %24 to i32
  br label %cond.end.77

cond.end.77:                                      ; preds = %cond.false.74, %cond.true.71
  %cond78 = phi i32 [ %conv73, %cond.true.71 ], [ %conv76, %cond.false.74 ]
  %div79 = sdiv i32 %cond78, 20
  %cmp80 = icmp slt i32 %cond64, %div79
  br i1 %cmp80, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.end.77
  %blue82 = getelementptr inbounds %struct.XColor, %struct.XColor* %color, i32 0, i32 3
  %25 = load i16, i16* %blue82, align 2
  %conv83 = zext i16 %25 to i32
  %red84 = getelementptr inbounds %struct.XColor, %struct.XColor* %color, i32 0, i32 1
  %26 = load i16, i16* %red84, align 2
  %conv85 = zext i16 %26 to i32
  %sub86 = sub nsw i32 %conv83, %conv85
  %cmp87 = icmp slt i32 %sub86, 0
  br i1 %cmp87, label %cond.true.89, label %cond.false.96

cond.true.89:                                     ; preds = %land.rhs
  %blue90 = getelementptr inbounds %struct.XColor, %struct.XColor* %color, i32 0, i32 3
  %27 = load i16, i16* %blue90, align 2
  %conv91 = zext i16 %27 to i32
  %red92 = getelementptr inbounds %struct.XColor, %struct.XColor* %color, i32 0, i32 1
  %28 = load i16, i16* %red92, align 2
  %conv93 = zext i16 %28 to i32
  %sub94 = sub nsw i32 %conv91, %conv93
  %sub95 = sub nsw i32 0, %sub94
  br label %cond.end.102

cond.false.96:                                    ; preds = %land.rhs
  %blue97 = getelementptr inbounds %struct.XColor, %struct.XColor* %color, i32 0, i32 3
  %29 = load i16, i16* %blue97, align 2
  %conv98 = zext i16 %29 to i32
  %red99 = getelementptr inbounds %struct.XColor, %struct.XColor* %color, i32 0, i32 1
  %30 = load i16, i16* %red99, align 2
  %conv100 = zext i16 %30 to i32
  %sub101 = sub nsw i32 %conv98, %conv100
  br label %cond.end.102

cond.end.102:                                     ; preds = %cond.false.96, %cond.true.89
  %cond103 = phi i32 [ %sub95, %cond.true.89 ], [ %sub101, %cond.false.96 ]
  %blue104 = getelementptr inbounds %struct.XColor, %struct.XColor* %color, i32 0, i32 3
  %31 = load i16, i16* %blue104, align 2
  %conv105 = zext i16 %31 to i32
  %red106 = getelementptr inbounds %struct.XColor, %struct.XColor* %color, i32 0, i32 1
  %32 = load i16, i16* %red106, align 2
  %conv107 = zext i16 %32 to i32
  %cmp108 = icmp sgt i32 %conv105, %conv107
  br i1 %cmp108, label %cond.true.110, label %cond.false.113

cond.true.110:                                    ; preds = %cond.end.102
  %blue111 = getelementptr inbounds %struct.XColor, %struct.XColor* %color, i32 0, i32 3
  %33 = load i16, i16* %blue111, align 2
  %conv112 = zext i16 %33 to i32
  br label %cond.end.116

cond.false.113:                                   ; preds = %cond.end.102
  %red114 = getelementptr inbounds %struct.XColor, %struct.XColor* %color, i32 0, i32 1
  %34 = load i16, i16* %red114, align 2
  %conv115 = zext i16 %34 to i32
  br label %cond.end.116

cond.end.116:                                     ; preds = %cond.false.113, %cond.true.110
  %cond117 = phi i32 [ %conv112, %cond.true.110 ], [ %conv115, %cond.false.113 ]
  %div118 = sdiv i32 %cond117, 20
  %cmp119 = icmp slt i32 %cond103, %div118
  br label %land.end

land.end:                                         ; preds = %cond.end.116, %cond.end.77, %cond.end.38
  %35 = phi i1 [ false, %cond.end.77 ], [ false, %cond.end.38 ], [ %cmp119, %cond.end.116 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true.5
  %36 = phi i1 [ true, %land.lhs.true.5 ], [ %35, %land.end ]
  %frombool = zext i1 %36 to i8
  store i8 %frombool, i8* %gray_p, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  store i8 0, i8* %gray_p, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %lor.end
  %37 = load i8, i8* %gray_p, align 1
  %tobool = trunc i8 %37 to i1
  ret i1 %tobool
}

declare %struct.frame* @decode_any_frame(i64) #1

declare i8* @SSDATA(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fcolor_supported_p(i64 %color, i64 %frame, i64 %background_p) #0 {
entry:
  %color.addr = alloca i64, align 8
  %frame.addr = alloca i64, align 8
  %background_p.addr = alloca i64, align 8
  store i64 %color, i64* %color.addr, align 8
  store i64 %frame, i64* %frame.addr, align 8
  store i64 %background_p, i64* %background_p.addr, align 8
  %0 = load i64, i64* %color.addr, align 8
  call void @CHECK_STRING(i64 %0)
  %1 = load i64, i64* %frame.addr, align 8
  %call = call %struct.frame* @decode_any_frame(i64 %1)
  %2 = load i64, i64* %color.addr, align 8
  %call1 = call i8* @SSDATA(i64 %2)
  %3 = load i64, i64* %background_p.addr, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %3, %call2
  %lnot = xor i1 %cmp, true
  %call3 = call zeroext i1 @face_color_supported_p(%struct.frame* %call, i8* %call1, i1 zeroext %lnot)
  br i1 %call3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call4 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call4, %cond.true ], [ %call5, %cond.false ]
  ret i64 %cond
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @face_color_supported_p(%struct.frame* %f, i8* %color_name, i1 zeroext %background_p) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %color_name.addr = alloca i8*, align 8
  %background_p.addr = alloca i8, align 1
  %frame = alloca i64, align 8
  %not_used = alloca %struct.XColor, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i8* %color_name, i8** %color_name.addr, align 8
  %frombool = zext i1 %background_p to i8
  store i8 %frombool, i8* %background_p.addr, align 1
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %1 = bitcast %struct.frame* %0 to i8*
  %call = call i64 @make_lisp_ptr(i8* %1, i32 5)
  store i64 %call, i64* %frame, align 8
  %2 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_method = getelementptr inbounds %struct.frame, %struct.frame* %2, i32 0, i32 26
  %3 = bitcast i48* %output_method to i64*
  %bf.load = load i64, i64* %3, align 8
  %bf.lshr = lshr i64 %bf.load, 23
  %bf.clear = and i64 %bf.lshr, 7
  %bf.cast = trunc i64 %bf.clear to i32
  %cmp = icmp eq i32 %bf.cast, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load i64, i64* %frame, align 8
  %call1 = call i64 @Fxw_display_color_p(i64 %4)
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp3 = icmp eq i64 %call1, %call2
  br i1 %cmp3, label %lor.lhs.false, label %lor.end

lor.lhs.false:                                    ; preds = %cond.true
  %5 = load i8*, i8** %color_name.addr, align 8
  %call4 = call i32 @xstrcasecmp(i8* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0))
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %lor.end, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %6 = load i8*, i8** %color_name.addr, align 8
  %call7 = call i32 @xstrcasecmp(i8* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0))
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %lor.end, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.6
  %7 = load i8, i8* %background_p.addr, align 1
  %tobool = trunc i8 %7 to i1
  br i1 %tobool, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false.9
  %8 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %9 = load i8*, i8** %color_name.addr, align 8
  %call10 = call zeroext i1 @face_color_gray_p(%struct.frame* %8, i8* %9)
  br i1 %call10, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true, %lor.lhs.false.9
  %10 = load i64, i64* %frame, align 8
  %call11 = call i64 @Fx_display_grayscale_p(i64 %10)
  %call12 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp13 = icmp eq i64 %call11, %call12
  br i1 %cmp13, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %lor.rhs
  %11 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %12 = load i8*, i8** %color_name.addr, align 8
  %call14 = call zeroext i1 @face_color_gray_p(%struct.frame* %11, i8* %12)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %13 = phi i1 [ false, %lor.rhs ], [ %call14, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true, %lor.lhs.false.6, %lor.lhs.false, %cond.true
  %14 = phi i1 [ true, %land.lhs.true ], [ true, %lor.lhs.false.6 ], [ true, %lor.lhs.false ], [ true, %cond.true ], [ %13, %land.end ]
  %lor.ext = zext i1 %14 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %15 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %16 = load i8*, i8** %color_name.addr, align 8
  %call15 = call zeroext i1 @tty_defined_color(%struct.frame* %15, i8* %16, %struct.XColor* %not_used, i1 zeroext false)
  %conv = zext i1 %call15 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %lor.end
  %cond = phi i32 [ %lor.ext, %lor.end ], [ %conv, %cond.false ]
  %tobool16 = icmp ne i32 %cond, 0
  ret i1 %tobool16
}

; Function Attrs: nounwind uwtable
define i64 @load_color(%struct.frame* %f, %struct.face* %face, i64 %name, i32 %target_index) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %face.addr = alloca %struct.face*, align 8
  %name.addr = alloca i64, align 8
  %target_index.addr = alloca i32, align 4
  %color = alloca %struct.XColor, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store %struct.face* %face, %struct.face** %face.addr, align 8
  store i64 %name, i64* %name.addr, align 8
  store i32 %target_index, i32* %target_index.addr, align 4
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %1 = load %struct.face*, %struct.face** %face.addr, align 8
  %2 = load i64, i64* %name.addr, align 8
  %3 = load i32, i32* %target_index.addr, align 4
  %call = call i64 @load_color2(%struct.frame* %0, %struct.face* %1, i64 %2, i32 %3, %struct.XColor* %color)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define internal i64 @load_color2(%struct.frame* %f, %struct.face* %face, i64 %name, i32 %target_index, %struct.XColor* %color) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %face.addr = alloca %struct.face*, align 8
  %name.addr = alloca i64, align 8
  %target_index.addr = alloca i32, align 4
  %color.addr = alloca %struct.XColor*, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store %struct.face* %face, %struct.face** %face.addr, align 8
  store i64 %name, i64* %name.addr, align 8
  store i32 %target_index, i32* %target_index.addr, align 4
  store %struct.XColor* %color, %struct.XColor** %color.addr, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %1 = load i64, i64* %name.addr, align 8
  %call = call i8* @SSDATA(i64 %1)
  %2 = load %struct.XColor*, %struct.XColor** %color.addr, align 8
  %call1 = call zeroext i1 @defined_color(%struct.frame* %0, i8* %call, %struct.XColor* %2, i1 zeroext true)
  br i1 %call1, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %name.addr, align 8
  call void (i8*, ...) @add_to_log(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.45, i32 0, i32 0), i64 %3)
  %4 = load i32, i32* %target_index.addr, align 4
  switch i32 %4, label %sw.default [
    i32 9, label %sw.bb
    i32 10, label %sw.bb.2
    i32 7, label %sw.bb.7
    i32 12, label %sw.bb.13
    i32 13, label %sw.bb.19
    i32 14, label %sw.bb.25
  ]

sw.bb:                                            ; preds = %if.then
  %5 = load %struct.face*, %struct.face** %face.addr, align 8
  %foreground_defaulted_p = getelementptr inbounds %struct.face, %struct.face* %5, i32 0, i32 13
  %6 = bitcast i24* %foreground_defaulted_p to i32*
  %bf.load = load i32, i32* %6, align 8
  %bf.clear = and i32 %bf.load, -129
  %bf.set = or i32 %bf.clear, 128
  store i32 %bf.set, i32* %6, align 8
  %7 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %foreground_pixel = getelementptr inbounds %struct.frame, %struct.frame* %7, i32 0, i32 78
  %8 = load i64, i64* %foreground_pixel, align 8
  %9 = load %struct.XColor*, %struct.XColor** %color.addr, align 8
  %pixel = getelementptr inbounds %struct.XColor, %struct.XColor* %9, i32 0, i32 0
  store i64 %8, i64* %pixel, align 8
  br label %sw.epilog

sw.bb.2:                                          ; preds = %if.then
  %10 = load %struct.face*, %struct.face** %face.addr, align 8
  %background_defaulted_p = getelementptr inbounds %struct.face, %struct.face* %10, i32 0, i32 13
  %11 = bitcast i24* %background_defaulted_p to i32*
  %bf.load3 = load i32, i32* %11, align 8
  %bf.clear4 = and i32 %bf.load3, -257
  %bf.set5 = or i32 %bf.clear4, 256
  store i32 %bf.set5, i32* %11, align 8
  %12 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %background_pixel = getelementptr inbounds %struct.frame, %struct.frame* %12, i32 0, i32 77
  %13 = load i64, i64* %background_pixel, align 8
  %14 = load %struct.XColor*, %struct.XColor** %color.addr, align 8
  %pixel6 = getelementptr inbounds %struct.XColor, %struct.XColor* %14, i32 0, i32 0
  store i64 %13, i64* %pixel6, align 8
  br label %sw.epilog

sw.bb.7:                                          ; preds = %if.then
  %15 = load %struct.face*, %struct.face** %face.addr, align 8
  %underline_defaulted_p = getelementptr inbounds %struct.face, %struct.face* %15, i32 0, i32 13
  %16 = bitcast i24* %underline_defaulted_p to i32*
  %bf.load8 = load i32, i32* %16, align 8
  %bf.clear9 = and i32 %bf.load8, -513
  %bf.set10 = or i32 %bf.clear9, 512
  store i32 %bf.set10, i32* %16, align 8
  %17 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %foreground_pixel11 = getelementptr inbounds %struct.frame, %struct.frame* %17, i32 0, i32 78
  %18 = load i64, i64* %foreground_pixel11, align 8
  %19 = load %struct.XColor*, %struct.XColor** %color.addr, align 8
  %pixel12 = getelementptr inbounds %struct.XColor, %struct.XColor* %19, i32 0, i32 0
  store i64 %18, i64* %pixel12, align 8
  br label %sw.epilog

sw.bb.13:                                         ; preds = %if.then
  %20 = load %struct.face*, %struct.face** %face.addr, align 8
  %overline_color_defaulted_p = getelementptr inbounds %struct.face, %struct.face* %20, i32 0, i32 13
  %21 = bitcast i24* %overline_color_defaulted_p to i32*
  %bf.load14 = load i32, i32* %21, align 8
  %bf.clear15 = and i32 %bf.load14, -1025
  %bf.set16 = or i32 %bf.clear15, 1024
  store i32 %bf.set16, i32* %21, align 8
  %22 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %foreground_pixel17 = getelementptr inbounds %struct.frame, %struct.frame* %22, i32 0, i32 78
  %23 = load i64, i64* %foreground_pixel17, align 8
  %24 = load %struct.XColor*, %struct.XColor** %color.addr, align 8
  %pixel18 = getelementptr inbounds %struct.XColor, %struct.XColor* %24, i32 0, i32 0
  store i64 %23, i64* %pixel18, align 8
  br label %sw.epilog

sw.bb.19:                                         ; preds = %if.then
  %25 = load %struct.face*, %struct.face** %face.addr, align 8
  %strike_through_color_defaulted_p = getelementptr inbounds %struct.face, %struct.face* %25, i32 0, i32 13
  %26 = bitcast i24* %strike_through_color_defaulted_p to i32*
  %bf.load20 = load i32, i32* %26, align 8
  %bf.clear21 = and i32 %bf.load20, -2049
  %bf.set22 = or i32 %bf.clear21, 2048
  store i32 %bf.set22, i32* %26, align 8
  %27 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %foreground_pixel23 = getelementptr inbounds %struct.frame, %struct.frame* %27, i32 0, i32 78
  %28 = load i64, i64* %foreground_pixel23, align 8
  %29 = load %struct.XColor*, %struct.XColor** %color.addr, align 8
  %pixel24 = getelementptr inbounds %struct.XColor, %struct.XColor* %29, i32 0, i32 0
  store i64 %28, i64* %pixel24, align 8
  br label %sw.epilog

sw.bb.25:                                         ; preds = %if.then
  %30 = load %struct.face*, %struct.face** %face.addr, align 8
  %box_color_defaulted_p = getelementptr inbounds %struct.face, %struct.face* %30, i32 0, i32 13
  %31 = bitcast i24* %box_color_defaulted_p to i32*
  %bf.load26 = load i32, i32* %31, align 8
  %bf.clear27 = and i32 %bf.load26, -4097
  %bf.set28 = or i32 %bf.clear27, 4096
  store i32 %bf.set28, i32* %31, align 8
  %32 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %foreground_pixel29 = getelementptr inbounds %struct.frame, %struct.frame* %32, i32 0, i32 78
  %33 = load i64, i64* %foreground_pixel29, align 8
  %34 = load %struct.XColor*, %struct.XColor** %color.addr, align 8
  %pixel30 = getelementptr inbounds %struct.XColor, %struct.XColor* %34, i32 0, i32 0
  store i64 %33, i64* %pixel30, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  call void @emacs_abort() #6
  unreachable

sw.epilog:                                        ; preds = %sw.bb.25, %sw.bb.19, %sw.bb.13, %sw.bb.7, %sw.bb.2, %sw.bb
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %entry
  %35 = load %struct.XColor*, %struct.XColor** %color.addr, align 8
  %pixel31 = getelementptr inbounds %struct.XColor, %struct.XColor* %35, i32 0, i32 0
  %36 = load i64, i64* %pixel31, align 8
  ret i64 %36
}

; Function Attrs: nounwind uwtable
define void @unload_color(%struct.frame* %f, i64 %pixel) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %pixel.addr = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %pixel, i64* %pixel.addr, align 8
  %0 = load i64, i64* %pixel.addr, align 8
  %cmp = icmp ne i64 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @block_input()
  %1 = load %struct.frame*, %struct.frame** %f.addr, align 8
  call void @x_free_colors(%struct.frame* %1, i64* %pixel.addr, i32 1)
  call void @unblock_input()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @block_input() #1

declare void @unblock_input() #1

; Function Attrs: nounwind uwtable
define i64 @Fx_family_fonts(i64 %family, i64 %frame) #0 {
entry:
  %retval = alloca i64, align 8
  %family.addr = alloca i64, align 8
  %frame.addr = alloca i64, align 8
  %font_spec = alloca i64, align 8
  %list = alloca i64, align 8
  %drivers = alloca i64*, align 8
  %vec = alloca i64, align 8
  %f = alloca %struct.frame*, align 8
  %i = alloca i64, align 8
  %nfonts = alloca i64, align 8
  %ndrivers = alloca i64, align 8
  %result = alloca i64, align 8
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  %alloca_nbytes = alloca i64, align 8
  %arg_ = alloca i64, align 8
  %font = alloca i64, align 8
  %v = alloca i64, align 8
  %point = alloca i32, align 4
  %spacing = alloca i64, align 8
  store i64 %family, i64* %family.addr, align 8
  store i64 %frame, i64* %frame.addr, align 8
  %0 = load i64, i64* %frame.addr, align 8
  %call = call %struct.frame* @decode_live_frame(i64 %0)
  store %struct.frame* %call, %struct.frame** %f, align 8
  store i64 16384, i64* %sa_avail, align 8
  %call1 = call i64 @SPECPDL_INDEX()
  store i64 %call1, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  %call2 = call i64 @Ffont_spec(i64 0, i64* null)
  store i64 %call2, i64* %font_spec, align 8
  %1 = load i64, i64* %family.addr, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %1, %call3
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %family.addr, align 8
  call void @CHECK_STRING(i64 %2)
  %3 = load i64, i64* %family.addr, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %4 = load i64, i64* %font_spec, align 8
  call void @font_parse_family_registry(i64 %3, i64 %call4, i64 %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.frame*, %struct.frame** %f, align 8
  %6 = load i64, i64* %font_spec, align 8
  %call5 = call i64 @font_list_entities(%struct.frame* %5, i64 %6)
  store i64 %call5, i64* %list, align 8
  %7 = load i64, i64* %list, align 8
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp7 = icmp eq i64 %7, %call6
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call9, i64* %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %8 = load i64, i64* %i, align 8
  %cmp11 = icmp slt i64 %8, 4
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* @font_sort_order, i32 0, i64 %9
  %10 = load i32, i32* %arrayidx, align 4
  switch i32 %10, label %sw.default [
    i32 4, label %sw.bb
    i32 7, label %sw.bb.13
    i32 2, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %for.body
  %11 = load i64, i64* %i, align 8
  %arrayidx12 = getelementptr inbounds [8 x i32], [8 x i32]* @font_props_for_sorting, i32 0, i64 %11
  store i32 7, i32* %arrayidx12, align 4
  br label %sw.epilog

sw.bb.13:                                         ; preds = %for.body
  %12 = load i64, i64* %i, align 8
  %arrayidx14 = getelementptr inbounds [8 x i32], [8 x i32]* @font_props_for_sorting, i32 0, i64 %12
  store i32 8, i32* %arrayidx14, align 4
  br label %sw.epilog

sw.bb.15:                                         ; preds = %for.body
  %13 = load i64, i64* %i, align 8
  %arrayidx16 = getelementptr inbounds [8 x i32], [8 x i32]* @font_props_for_sorting, i32 0, i64 %13
  store i32 5, i32* %arrayidx16, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  %14 = load i64, i64* %i, align 8
  %arrayidx17 = getelementptr inbounds [8 x i32], [8 x i32]* @font_props_for_sorting, i32 0, i64 %14
  store i32 6, i32* %arrayidx17, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.15, %sw.bb.13, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %15 = load i64, i64* %i, align 8
  %inc = add nsw i64 %15, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i64, i64* %i, align 8
  %inc18 = add nsw i64 %16, 1
  store i64 %inc18, i64* %i, align 8
  %arrayidx19 = getelementptr inbounds [8 x i32], [8 x i32]* @font_props_for_sorting, i32 0, i64 %16
  store i32 2, i32* %arrayidx19, align 4
  %17 = load i64, i64* %i, align 8
  %inc20 = add nsw i64 %17, 1
  store i64 %inc20, i64* %i, align 8
  %arrayidx21 = getelementptr inbounds [8 x i32], [8 x i32]* @font_props_for_sorting, i32 0, i64 %17
  store i32 1, i32* %arrayidx21, align 4
  %18 = load i64, i64* %i, align 8
  %inc22 = add nsw i64 %18, 1
  store i64 %inc22, i64* %i, align 8
  %arrayidx23 = getelementptr inbounds [8 x i32], [8 x i32]* @font_props_for_sorting, i32 0, i64 %18
  store i32 3, i32* %arrayidx23, align 4
  %19 = load i64, i64* %i, align 8
  %inc24 = add nsw i64 %19, 1
  store i64 %inc24, i64* %i, align 8
  %arrayidx25 = getelementptr inbounds [8 x i32], [8 x i32]* @font_props_for_sorting, i32 0, i64 %19
  store i32 4, i32* %arrayidx25, align 4
  %20 = load i64, i64* %list, align 8
  %call26 = call i64 @Flength(i64 %20)
  %shr = ashr i64 %call26, 2
  store i64 %shr, i64* %ndrivers, align 8
  br label %do.body

do.body:                                          ; preds = %for.end
  br i1 false, label %cond.true, label %cond.false.498

cond.true:                                        ; preds = %do.body
  br i1 false, label %cond.true.27, label %cond.false.283

cond.true.27:                                     ; preds = %cond.true
  %21 = load i64, i64* %ndrivers, align 8
  %conv = trunc i64 %21 to i8
  %conv28 = sext i8 %conv to i32
  %add = add nsw i32 0, %conv28
  %mul = mul nsw i32 0, %add
  %sub = sub nsw i32 %mul, 1
  %cmp29 = icmp slt i32 %sub, 0
  br i1 %cmp29, label %cond.true.31, label %cond.false

cond.true.31:                                     ; preds = %cond.true.27
  %22 = load i64, i64* %ndrivers, align 8
  %conv32 = trunc i64 %22 to i8
  %conv33 = sext i8 %conv32 to i32
  %add34 = add nsw i32 0, %conv33
  %mul35 = mul nsw i32 0, %add34
  %add36 = add nsw i32 %mul35, 0
  %neg = xor i32 %add36, -1
  %cmp37 = icmp eq i32 %neg, -1
  %conv38 = zext i1 %cmp37 to i32
  %sub39 = sub nsw i32 0, %conv38
  %23 = load i64, i64* %ndrivers, align 8
  %conv40 = trunc i64 %23 to i8
  %conv41 = sext i8 %conv40 to i32
  %add42 = add nsw i32 0, %conv41
  %mul43 = mul nsw i32 0, %add42
  %add44 = add nsw i32 %mul43, 1
  %shl = shl i32 %add44, 30
  %sub45 = sub nsw i32 %shl, 1
  %mul46 = mul nsw i32 %sub45, 2
  %add47 = add nsw i32 %mul46, 1
  %sub48 = sub nsw i32 %sub39, %add47
  br label %cond.end

cond.false:                                       ; preds = %cond.true.27
  %24 = load i64, i64* %ndrivers, align 8
  %conv49 = trunc i64 %24 to i8
  %conv50 = sext i8 %conv49 to i32
  %add51 = add nsw i32 0, %conv50
  %mul52 = mul nsw i32 0, %add51
  %add53 = add nsw i32 %mul52, 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.31
  %cond = phi i32 [ %sub48, %cond.true.31 ], [ %add53, %cond.false ]
  %cmp54 = icmp eq i32 %cond, 0
  br i1 %cmp54, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %cond.end
  %25 = load i64, i64* %ndrivers, align 8
  %conv56 = trunc i64 %25 to i8
  %conv57 = sext i8 %conv56 to i32
  %cmp58 = icmp slt i32 %conv57, 0
  br i1 %cmp58, label %cond.true.237, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %cond.end
  br i1 false, label %cond.true.60, label %cond.false.138

cond.true.60:                                     ; preds = %lor.lhs.false
  %26 = load i64, i64* %ndrivers, align 8
  %conv61 = trunc i64 %26 to i8
  %conv62 = sext i8 %conv61 to i32
  %cmp63 = icmp slt i32 %conv62, 0
  br i1 %cmp63, label %cond.true.65, label %cond.false.95

cond.true.65:                                     ; preds = %cond.true.60
  %27 = load i64, i64* %ndrivers, align 8
  %conv66 = trunc i64 %27 to i8
  %conv67 = sext i8 %conv66 to i32
  %28 = load i64, i64* %ndrivers, align 8
  %conv68 = trunc i64 %28 to i8
  %conv69 = sext i8 %conv68 to i32
  %add70 = add nsw i32 0, %conv69
  %mul71 = mul nsw i32 0, %add70
  %sub72 = sub nsw i32 %mul71, 1
  %cmp73 = icmp slt i32 %sub72, 0
  br i1 %cmp73, label %cond.true.75, label %cond.false.85

cond.true.75:                                     ; preds = %cond.true.65
  %29 = load i64, i64* %ndrivers, align 8
  %conv76 = trunc i64 %29 to i8
  %conv77 = sext i8 %conv76 to i32
  %add78 = add nsw i32 0, %conv77
  %mul79 = mul nsw i32 0, %add78
  %add80 = add nsw i32 %mul79, 1
  %shl81 = shl i32 %add80, 30
  %sub82 = sub nsw i32 %shl81, 1
  %mul83 = mul nsw i32 %sub82, 2
  %add84 = add nsw i32 %mul83, 1
  br label %cond.end.91

cond.false.85:                                    ; preds = %cond.true.65
  %30 = load i64, i64* %ndrivers, align 8
  %conv86 = trunc i64 %30 to i8
  %conv87 = sext i8 %conv86 to i32
  %add88 = add nsw i32 0, %conv87
  %mul89 = mul nsw i32 0, %add88
  %sub90 = sub nsw i32 %mul89, 1
  br label %cond.end.91

cond.end.91:                                      ; preds = %cond.false.85, %cond.true.75
  %cond92 = phi i32 [ %add84, %cond.true.75 ], [ %sub90, %cond.false.85 ]
  %div = sdiv i32 %cond92, 8
  %cmp93 = icmp slt i32 %conv67, %div
  br i1 %cmp93, label %cond.true.237, label %lor.lhs.false.217

cond.false.95:                                    ; preds = %cond.true.60
  br i1 false, label %cond.true.96, label %cond.false.97

cond.true.96:                                     ; preds = %cond.false.95
  br i1 false, label %cond.true.237, label %lor.lhs.false.217

cond.false.97:                                    ; preds = %cond.false.95
  %31 = load i64, i64* %ndrivers, align 8
  %conv98 = trunc i64 %31 to i8
  %conv99 = sext i8 %conv98 to i32
  %add100 = add nsw i32 0, %conv99
  %mul101 = mul nsw i32 0, %add100
  %sub102 = sub nsw i32 %mul101, 1
  %cmp103 = icmp slt i32 %sub102, 0
  br i1 %cmp103, label %cond.true.105, label %cond.false.125

cond.true.105:                                    ; preds = %cond.false.97
  %32 = load i64, i64* %ndrivers, align 8
  %conv106 = trunc i64 %32 to i8
  %conv107 = sext i8 %conv106 to i32
  %add108 = add nsw i32 0, %conv107
  %mul109 = mul nsw i32 0, %add108
  %add110 = add nsw i32 %mul109, 0
  %neg111 = xor i32 %add110, -1
  %cmp112 = icmp eq i32 %neg111, -1
  %conv113 = zext i1 %cmp112 to i32
  %sub114 = sub nsw i32 0, %conv113
  %33 = load i64, i64* %ndrivers, align 8
  %conv115 = trunc i64 %33 to i8
  %conv116 = sext i8 %conv115 to i32
  %add117 = add nsw i32 0, %conv116
  %mul118 = mul nsw i32 0, %add117
  %add119 = add nsw i32 %mul118, 1
  %shl120 = shl i32 %add119, 30
  %sub121 = sub nsw i32 %shl120, 1
  %mul122 = mul nsw i32 %sub121, 2
  %add123 = add nsw i32 %mul122, 1
  %sub124 = sub nsw i32 %sub114, %add123
  br label %cond.end.131

cond.false.125:                                   ; preds = %cond.false.97
  %34 = load i64, i64* %ndrivers, align 8
  %conv126 = trunc i64 %34 to i8
  %conv127 = sext i8 %conv126 to i32
  %add128 = add nsw i32 0, %conv127
  %mul129 = mul nsw i32 0, %add128
  %add130 = add nsw i32 %mul129, 0
  br label %cond.end.131

cond.end.131:                                     ; preds = %cond.false.125, %cond.true.105
  %cond132 = phi i32 [ %sub124, %cond.true.105 ], [ %add130, %cond.false.125 ]
  %div133 = sdiv i32 %cond132, 8
  %35 = load i64, i64* %ndrivers, align 8
  %conv134 = trunc i64 %35 to i8
  %conv135 = sext i8 %conv134 to i32
  %cmp136 = icmp slt i32 %div133, %conv135
  br i1 %cmp136, label %cond.true.237, label %lor.lhs.false.217

cond.false.138:                                   ; preds = %lor.lhs.false
  br i1 false, label %cond.true.139, label %cond.false.140

cond.true.139:                                    ; preds = %cond.false.138
  br i1 false, label %cond.true.237, label %lor.lhs.false.217

cond.false.140:                                   ; preds = %cond.false.138
  %36 = load i64, i64* %ndrivers, align 8
  %conv141 = trunc i64 %36 to i8
  %conv142 = sext i8 %conv141 to i32
  %cmp143 = icmp slt i32 %conv142, 0
  br i1 %cmp143, label %cond.true.145, label %cond.false.186

cond.true.145:                                    ; preds = %cond.false.140
  %37 = load i64, i64* %ndrivers, align 8
  %conv146 = trunc i64 %37 to i8
  %conv147 = sext i8 %conv146 to i32
  %38 = load i64, i64* %ndrivers, align 8
  %conv148 = trunc i64 %38 to i8
  %conv149 = sext i8 %conv148 to i32
  %add150 = add nsw i32 0, %conv149
  %mul151 = mul nsw i32 0, %add150
  %sub152 = sub nsw i32 %mul151, 1
  %cmp153 = icmp slt i32 %sub152, 0
  br i1 %cmp153, label %cond.true.155, label %cond.false.175

cond.true.155:                                    ; preds = %cond.true.145
  %39 = load i64, i64* %ndrivers, align 8
  %conv156 = trunc i64 %39 to i8
  %conv157 = sext i8 %conv156 to i32
  %add158 = add nsw i32 0, %conv157
  %mul159 = mul nsw i32 0, %add158
  %add160 = add nsw i32 %mul159, 0
  %neg161 = xor i32 %add160, -1
  %cmp162 = icmp eq i32 %neg161, -1
  %conv163 = zext i1 %cmp162 to i32
  %sub164 = sub nsw i32 0, %conv163
  %40 = load i64, i64* %ndrivers, align 8
  %conv165 = trunc i64 %40 to i8
  %conv166 = sext i8 %conv165 to i32
  %add167 = add nsw i32 0, %conv166
  %mul168 = mul nsw i32 0, %add167
  %add169 = add nsw i32 %mul168, 1
  %shl170 = shl i32 %add169, 30
  %sub171 = sub nsw i32 %shl170, 1
  %mul172 = mul nsw i32 %sub171, 2
  %add173 = add nsw i32 %mul172, 1
  %sub174 = sub nsw i32 %sub164, %add173
  br label %cond.end.181

cond.false.175:                                   ; preds = %cond.true.145
  %41 = load i64, i64* %ndrivers, align 8
  %conv176 = trunc i64 %41 to i8
  %conv177 = sext i8 %conv176 to i32
  %add178 = add nsw i32 0, %conv177
  %mul179 = mul nsw i32 0, %add178
  %add180 = add nsw i32 %mul179, 0
  br label %cond.end.181

cond.end.181:                                     ; preds = %cond.false.175, %cond.true.155
  %cond182 = phi i32 [ %sub174, %cond.true.155 ], [ %add180, %cond.false.175 ]
  %div183 = sdiv i32 %cond182, 8
  %cmp184 = icmp slt i32 %conv147, %div183
  br i1 %cmp184, label %cond.true.237, label %lor.lhs.false.217

cond.false.186:                                   ; preds = %cond.false.140
  %42 = load i64, i64* %ndrivers, align 8
  %conv187 = trunc i64 %42 to i8
  %conv188 = sext i8 %conv187 to i32
  %add189 = add nsw i32 0, %conv188
  %mul190 = mul nsw i32 0, %add189
  %sub191 = sub nsw i32 %mul190, 1
  %cmp192 = icmp slt i32 %sub191, 0
  br i1 %cmp192, label %cond.true.194, label %cond.false.204

cond.true.194:                                    ; preds = %cond.false.186
  %43 = load i64, i64* %ndrivers, align 8
  %conv195 = trunc i64 %43 to i8
  %conv196 = sext i8 %conv195 to i32
  %add197 = add nsw i32 0, %conv196
  %mul198 = mul nsw i32 0, %add197
  %add199 = add nsw i32 %mul198, 1
  %shl200 = shl i32 %add199, 30
  %sub201 = sub nsw i32 %shl200, 1
  %mul202 = mul nsw i32 %sub201, 2
  %add203 = add nsw i32 %mul202, 1
  br label %cond.end.210

cond.false.204:                                   ; preds = %cond.false.186
  %44 = load i64, i64* %ndrivers, align 8
  %conv205 = trunc i64 %44 to i8
  %conv206 = sext i8 %conv205 to i32
  %add207 = add nsw i32 0, %conv206
  %mul208 = mul nsw i32 0, %add207
  %sub209 = sub nsw i32 %mul208, 1
  br label %cond.end.210

cond.end.210:                                     ; preds = %cond.false.204, %cond.true.194
  %cond211 = phi i32 [ %add203, %cond.true.194 ], [ %sub209, %cond.false.204 ]
  %div212 = sdiv i32 %cond211, 8
  %45 = load i64, i64* %ndrivers, align 8
  %conv213 = trunc i64 %45 to i8
  %conv214 = sext i8 %conv213 to i32
  %cmp215 = icmp slt i32 %div212, %conv214
  br i1 %cmp215, label %cond.true.237, label %lor.lhs.false.217

lor.lhs.false.217:                                ; preds = %cond.end.210, %cond.end.181, %cond.true.139, %cond.end.131, %cond.true.96, %cond.end.91
  %46 = load i64, i64* %ndrivers, align 8
  %conv218 = trunc i64 %46 to i8
  %conv219 = sext i8 %conv218 to i32
  %mul220 = mul nsw i32 %conv219, 8
  %mul221 = mul nsw i32 0, %mul220
  %sub222 = sub nsw i32 %mul221, 1
  %cmp223 = icmp slt i32 %sub222, 0
  br i1 %cmp223, label %land.lhs.true.225, label %lor.lhs.false.231

land.lhs.true.225:                                ; preds = %lor.lhs.false.217
  %47 = load i64, i64* %ndrivers, align 8
  %conv226 = trunc i64 %47 to i8
  %conv227 = sext i8 %conv226 to i32
  %mul228 = mul nsw i32 %conv227, 8
  %cmp229 = icmp slt i32 %mul228, -128
  br i1 %cmp229, label %cond.true.237, label %lor.lhs.false.231

lor.lhs.false.231:                                ; preds = %land.lhs.true.225, %lor.lhs.false.217
  %48 = load i64, i64* %ndrivers, align 8
  %conv232 = trunc i64 %48 to i8
  %conv233 = sext i8 %conv232 to i32
  %mul234 = mul nsw i32 %conv233, 8
  %cmp235 = icmp slt i32 127, %mul234
  br i1 %cmp235, label %cond.true.237, label %cond.false.260

cond.true.237:                                    ; preds = %lor.lhs.false.231, %land.lhs.true.225, %cond.end.210, %cond.end.181, %cond.true.139, %cond.end.131, %cond.true.96, %cond.end.91, %land.lhs.true
  %49 = load i64, i64* %ndrivers, align 8
  %conv238 = trunc i64 %49 to i8
  %conv239 = zext i8 %conv238 to i32
  %mul240 = mul nsw i32 %conv239, 8
  %cmp241 = icmp sle i32 %mul240, 127
  br i1 %cmp241, label %cond.true.243, label %cond.false.249

cond.true.243:                                    ; preds = %cond.true.237
  %50 = load i64, i64* %ndrivers, align 8
  %conv244 = trunc i64 %50 to i8
  %conv245 = zext i8 %conv244 to i32
  %mul246 = mul nsw i32 %conv245, 8
  %conv247 = trunc i32 %mul246 to i8
  %conv248 = sext i8 %conv247 to i32
  br label %cond.end.257

cond.false.249:                                   ; preds = %cond.true.237
  %51 = load i64, i64* %ndrivers, align 8
  %conv250 = trunc i64 %51 to i8
  %conv251 = zext i8 %conv250 to i32
  %mul252 = mul nsw i32 %conv251, 8
  %sub253 = sub nsw i32 %mul252, -128
  %conv254 = trunc i32 %sub253 to i8
  %conv255 = sext i8 %conv254 to i32
  %add256 = add nsw i32 %conv255, -128
  br label %cond.end.257

cond.end.257:                                     ; preds = %cond.false.249, %cond.true.243
  %cond258 = phi i32 [ %conv248, %cond.true.243 ], [ %add256, %cond.false.249 ]
  %conv259 = sext i32 %cond258 to i64
  store i64 %conv259, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then.2190, label %lor.lhs.false.2187

cond.false.260:                                   ; preds = %lor.lhs.false.231
  %52 = load i64, i64* %ndrivers, align 8
  %conv261 = trunc i64 %52 to i8
  %conv262 = zext i8 %conv261 to i32
  %mul263 = mul nsw i32 %conv262, 8
  %cmp264 = icmp sle i32 %mul263, 127
  br i1 %cmp264, label %cond.true.266, label %cond.false.272

cond.true.266:                                    ; preds = %cond.false.260
  %53 = load i64, i64* %ndrivers, align 8
  %conv267 = trunc i64 %53 to i8
  %conv268 = zext i8 %conv267 to i32
  %mul269 = mul nsw i32 %conv268, 8
  %conv270 = trunc i32 %mul269 to i8
  %conv271 = sext i8 %conv270 to i32
  br label %cond.end.280

cond.false.272:                                   ; preds = %cond.false.260
  %54 = load i64, i64* %ndrivers, align 8
  %conv273 = trunc i64 %54 to i8
  %conv274 = zext i8 %conv273 to i32
  %mul275 = mul nsw i32 %conv274, 8
  %sub276 = sub nsw i32 %mul275, -128
  %conv277 = trunc i32 %sub276 to i8
  %conv278 = sext i8 %conv277 to i32
  %add279 = add nsw i32 %conv278, -128
  br label %cond.end.280

cond.end.280:                                     ; preds = %cond.false.272, %cond.true.266
  %cond281 = phi i32 [ %conv271, %cond.true.266 ], [ %add279, %cond.false.272 ]
  %conv282 = sext i32 %cond281 to i64
  store i64 %conv282, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then.2190, label %lor.lhs.false.2187

cond.false.283:                                   ; preds = %cond.true
  %55 = load i64, i64* %ndrivers, align 8
  %add284 = add nsw i64 0, %55
  %mul285 = mul nsw i64 0, %add284
  %sub286 = sub nsw i64 %mul285, 1
  %cmp287 = icmp slt i64 %sub286, 0
  br i1 %cmp287, label %cond.true.289, label %cond.false.306

cond.true.289:                                    ; preds = %cond.false.283
  %56 = load i64, i64* %ndrivers, align 8
  %add290 = add nsw i64 0, %56
  %mul291 = mul nsw i64 0, %add290
  %add292 = add nsw i64 %mul291, 0
  %neg293 = xor i64 %add292, -1
  %cmp294 = icmp eq i64 %neg293, -1
  %conv295 = zext i1 %cmp294 to i32
  %sub296 = sub nsw i32 0, %conv295
  %conv297 = sext i32 %sub296 to i64
  %57 = load i64, i64* %ndrivers, align 8
  %add298 = add nsw i64 0, %57
  %mul299 = mul nsw i64 0, %add298
  %add300 = add nsw i64 %mul299, 1
  %shl301 = shl i64 %add300, 62
  %sub302 = sub nsw i64 %shl301, 1
  %mul303 = mul nsw i64 %sub302, 2
  %add304 = add nsw i64 %mul303, 1
  %sub305 = sub nsw i64 %conv297, %add304
  br label %cond.end.310

cond.false.306:                                   ; preds = %cond.false.283
  %58 = load i64, i64* %ndrivers, align 8
  %add307 = add nsw i64 0, %58
  %mul308 = mul nsw i64 0, %add307
  %add309 = add nsw i64 %mul308, 0
  br label %cond.end.310

cond.end.310:                                     ; preds = %cond.false.306, %cond.true.289
  %cond311 = phi i64 [ %sub305, %cond.true.289 ], [ %add309, %cond.false.306 ]
  %cmp312 = icmp eq i64 %cond311, 0
  br i1 %cmp312, label %land.lhs.true.314, label %lor.lhs.false.317

land.lhs.true.314:                                ; preds = %cond.end.310
  %59 = load i64, i64* %ndrivers, align 8
  %cmp315 = icmp slt i64 %59, 0
  br i1 %cmp315, label %cond.true.452, label %lor.lhs.false.317

lor.lhs.false.317:                                ; preds = %land.lhs.true.314, %cond.end.310
  br i1 false, label %cond.true.318, label %cond.false.378

cond.true.318:                                    ; preds = %lor.lhs.false.317
  %60 = load i64, i64* %ndrivers, align 8
  %cmp319 = icmp slt i64 %60, 0
  br i1 %cmp319, label %cond.true.321, label %cond.false.344

cond.true.321:                                    ; preds = %cond.true.318
  %61 = load i64, i64* %ndrivers, align 8
  %62 = load i64, i64* %ndrivers, align 8
  %add322 = add nsw i64 0, %62
  %mul323 = mul nsw i64 0, %add322
  %sub324 = sub nsw i64 %mul323, 1
  %cmp325 = icmp slt i64 %sub324, 0
  br i1 %cmp325, label %cond.true.327, label %cond.false.335

cond.true.327:                                    ; preds = %cond.true.321
  %63 = load i64, i64* %ndrivers, align 8
  %add328 = add nsw i64 0, %63
  %mul329 = mul nsw i64 0, %add328
  %add330 = add nsw i64 %mul329, 1
  %shl331 = shl i64 %add330, 62
  %sub332 = sub nsw i64 %shl331, 1
  %mul333 = mul nsw i64 %sub332, 2
  %add334 = add nsw i64 %mul333, 1
  br label %cond.end.339

cond.false.335:                                   ; preds = %cond.true.321
  %64 = load i64, i64* %ndrivers, align 8
  %add336 = add nsw i64 0, %64
  %mul337 = mul nsw i64 0, %add336
  %sub338 = sub nsw i64 %mul337, 1
  br label %cond.end.339

cond.end.339:                                     ; preds = %cond.false.335, %cond.true.327
  %cond340 = phi i64 [ %add334, %cond.true.327 ], [ %sub338, %cond.false.335 ]
  %div341 = sdiv i64 %cond340, 8
  %cmp342 = icmp slt i64 %61, %div341
  br i1 %cmp342, label %cond.true.452, label %lor.lhs.false.438

cond.false.344:                                   ; preds = %cond.true.318
  br i1 false, label %cond.true.345, label %cond.false.346

cond.true.345:                                    ; preds = %cond.false.344
  br i1 false, label %cond.true.452, label %lor.lhs.false.438

cond.false.346:                                   ; preds = %cond.false.344
  %65 = load i64, i64* %ndrivers, align 8
  %add347 = add nsw i64 0, %65
  %mul348 = mul nsw i64 0, %add347
  %sub349 = sub nsw i64 %mul348, 1
  %cmp350 = icmp slt i64 %sub349, 0
  br i1 %cmp350, label %cond.true.352, label %cond.false.369

cond.true.352:                                    ; preds = %cond.false.346
  %66 = load i64, i64* %ndrivers, align 8
  %add353 = add nsw i64 0, %66
  %mul354 = mul nsw i64 0, %add353
  %add355 = add nsw i64 %mul354, 0
  %neg356 = xor i64 %add355, -1
  %cmp357 = icmp eq i64 %neg356, -1
  %conv358 = zext i1 %cmp357 to i32
  %sub359 = sub nsw i32 0, %conv358
  %conv360 = sext i32 %sub359 to i64
  %67 = load i64, i64* %ndrivers, align 8
  %add361 = add nsw i64 0, %67
  %mul362 = mul nsw i64 0, %add361
  %add363 = add nsw i64 %mul362, 1
  %shl364 = shl i64 %add363, 62
  %sub365 = sub nsw i64 %shl364, 1
  %mul366 = mul nsw i64 %sub365, 2
  %add367 = add nsw i64 %mul366, 1
  %sub368 = sub nsw i64 %conv360, %add367
  br label %cond.end.373

cond.false.369:                                   ; preds = %cond.false.346
  %68 = load i64, i64* %ndrivers, align 8
  %add370 = add nsw i64 0, %68
  %mul371 = mul nsw i64 0, %add370
  %add372 = add nsw i64 %mul371, 0
  br label %cond.end.373

cond.end.373:                                     ; preds = %cond.false.369, %cond.true.352
  %cond374 = phi i64 [ %sub368, %cond.true.352 ], [ %add372, %cond.false.369 ]
  %div375 = sdiv i64 %cond374, 8
  %69 = load i64, i64* %ndrivers, align 8
  %cmp376 = icmp slt i64 %div375, %69
  br i1 %cmp376, label %cond.true.452, label %lor.lhs.false.438

cond.false.378:                                   ; preds = %lor.lhs.false.317
  br i1 false, label %cond.true.379, label %cond.false.380

cond.true.379:                                    ; preds = %cond.false.378
  br i1 false, label %cond.true.452, label %lor.lhs.false.438

cond.false.380:                                   ; preds = %cond.false.378
  %70 = load i64, i64* %ndrivers, align 8
  %cmp381 = icmp slt i64 %70, 0
  br i1 %cmp381, label %cond.true.383, label %cond.false.415

cond.true.383:                                    ; preds = %cond.false.380
  %71 = load i64, i64* %ndrivers, align 8
  %72 = load i64, i64* %ndrivers, align 8
  %add384 = add nsw i64 0, %72
  %mul385 = mul nsw i64 0, %add384
  %sub386 = sub nsw i64 %mul385, 1
  %cmp387 = icmp slt i64 %sub386, 0
  br i1 %cmp387, label %cond.true.389, label %cond.false.406

cond.true.389:                                    ; preds = %cond.true.383
  %73 = load i64, i64* %ndrivers, align 8
  %add390 = add nsw i64 0, %73
  %mul391 = mul nsw i64 0, %add390
  %add392 = add nsw i64 %mul391, 0
  %neg393 = xor i64 %add392, -1
  %cmp394 = icmp eq i64 %neg393, -1
  %conv395 = zext i1 %cmp394 to i32
  %sub396 = sub nsw i32 0, %conv395
  %conv397 = sext i32 %sub396 to i64
  %74 = load i64, i64* %ndrivers, align 8
  %add398 = add nsw i64 0, %74
  %mul399 = mul nsw i64 0, %add398
  %add400 = add nsw i64 %mul399, 1
  %shl401 = shl i64 %add400, 62
  %sub402 = sub nsw i64 %shl401, 1
  %mul403 = mul nsw i64 %sub402, 2
  %add404 = add nsw i64 %mul403, 1
  %sub405 = sub nsw i64 %conv397, %add404
  br label %cond.end.410

cond.false.406:                                   ; preds = %cond.true.383
  %75 = load i64, i64* %ndrivers, align 8
  %add407 = add nsw i64 0, %75
  %mul408 = mul nsw i64 0, %add407
  %add409 = add nsw i64 %mul408, 0
  br label %cond.end.410

cond.end.410:                                     ; preds = %cond.false.406, %cond.true.389
  %cond411 = phi i64 [ %sub405, %cond.true.389 ], [ %add409, %cond.false.406 ]
  %div412 = sdiv i64 %cond411, 8
  %cmp413 = icmp slt i64 %71, %div412
  br i1 %cmp413, label %cond.true.452, label %lor.lhs.false.438

cond.false.415:                                   ; preds = %cond.false.380
  %76 = load i64, i64* %ndrivers, align 8
  %add416 = add nsw i64 0, %76
  %mul417 = mul nsw i64 0, %add416
  %sub418 = sub nsw i64 %mul417, 1
  %cmp419 = icmp slt i64 %sub418, 0
  br i1 %cmp419, label %cond.true.421, label %cond.false.429

cond.true.421:                                    ; preds = %cond.false.415
  %77 = load i64, i64* %ndrivers, align 8
  %add422 = add nsw i64 0, %77
  %mul423 = mul nsw i64 0, %add422
  %add424 = add nsw i64 %mul423, 1
  %shl425 = shl i64 %add424, 62
  %sub426 = sub nsw i64 %shl425, 1
  %mul427 = mul nsw i64 %sub426, 2
  %add428 = add nsw i64 %mul427, 1
  br label %cond.end.433

cond.false.429:                                   ; preds = %cond.false.415
  %78 = load i64, i64* %ndrivers, align 8
  %add430 = add nsw i64 0, %78
  %mul431 = mul nsw i64 0, %add430
  %sub432 = sub nsw i64 %mul431, 1
  br label %cond.end.433

cond.end.433:                                     ; preds = %cond.false.429, %cond.true.421
  %cond434 = phi i64 [ %add428, %cond.true.421 ], [ %sub432, %cond.false.429 ]
  %div435 = sdiv i64 %cond434, 8
  %79 = load i64, i64* %ndrivers, align 8
  %cmp436 = icmp slt i64 %div435, %79
  br i1 %cmp436, label %cond.true.452, label %lor.lhs.false.438

lor.lhs.false.438:                                ; preds = %cond.end.433, %cond.end.410, %cond.true.379, %cond.end.373, %cond.true.345, %cond.end.339
  %80 = load i64, i64* %ndrivers, align 8
  %mul439 = mul nsw i64 %80, 8
  %mul440 = mul nsw i64 0, %mul439
  %sub441 = sub nsw i64 %mul440, 1
  %cmp442 = icmp slt i64 %sub441, 0
  br i1 %cmp442, label %land.lhs.true.444, label %lor.lhs.false.448

land.lhs.true.444:                                ; preds = %lor.lhs.false.438
  %81 = load i64, i64* %ndrivers, align 8
  %mul445 = mul nsw i64 %81, 8
  %cmp446 = icmp slt i64 %mul445, -128
  br i1 %cmp446, label %cond.true.452, label %lor.lhs.false.448

lor.lhs.false.448:                                ; preds = %land.lhs.true.444, %lor.lhs.false.438
  %82 = load i64, i64* %ndrivers, align 8
  %mul449 = mul nsw i64 %82, 8
  %cmp450 = icmp slt i64 127, %mul449
  br i1 %cmp450, label %cond.true.452, label %cond.false.475

cond.true.452:                                    ; preds = %lor.lhs.false.448, %land.lhs.true.444, %cond.end.433, %cond.end.410, %cond.true.379, %cond.end.373, %cond.true.345, %cond.end.339, %land.lhs.true.314
  %83 = load i64, i64* %ndrivers, align 8
  %conv453 = trunc i64 %83 to i8
  %conv454 = zext i8 %conv453 to i32
  %mul455 = mul nsw i32 %conv454, 8
  %cmp456 = icmp sle i32 %mul455, 127
  br i1 %cmp456, label %cond.true.458, label %cond.false.464

cond.true.458:                                    ; preds = %cond.true.452
  %84 = load i64, i64* %ndrivers, align 8
  %conv459 = trunc i64 %84 to i8
  %conv460 = zext i8 %conv459 to i32
  %mul461 = mul nsw i32 %conv460, 8
  %conv462 = trunc i32 %mul461 to i8
  %conv463 = sext i8 %conv462 to i32
  br label %cond.end.472

cond.false.464:                                   ; preds = %cond.true.452
  %85 = load i64, i64* %ndrivers, align 8
  %conv465 = trunc i64 %85 to i8
  %conv466 = zext i8 %conv465 to i32
  %mul467 = mul nsw i32 %conv466, 8
  %sub468 = sub nsw i32 %mul467, -128
  %conv469 = trunc i32 %sub468 to i8
  %conv470 = sext i8 %conv469 to i32
  %add471 = add nsw i32 %conv470, -128
  br label %cond.end.472

cond.end.472:                                     ; preds = %cond.false.464, %cond.true.458
  %cond473 = phi i32 [ %conv463, %cond.true.458 ], [ %add471, %cond.false.464 ]
  %conv474 = sext i32 %cond473 to i64
  store i64 %conv474, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then.2190, label %lor.lhs.false.2187

cond.false.475:                                   ; preds = %lor.lhs.false.448
  %86 = load i64, i64* %ndrivers, align 8
  %conv476 = trunc i64 %86 to i8
  %conv477 = zext i8 %conv476 to i32
  %mul478 = mul nsw i32 %conv477, 8
  %cmp479 = icmp sle i32 %mul478, 127
  br i1 %cmp479, label %cond.true.481, label %cond.false.487

cond.true.481:                                    ; preds = %cond.false.475
  %87 = load i64, i64* %ndrivers, align 8
  %conv482 = trunc i64 %87 to i8
  %conv483 = zext i8 %conv482 to i32
  %mul484 = mul nsw i32 %conv483, 8
  %conv485 = trunc i32 %mul484 to i8
  %conv486 = sext i8 %conv485 to i32
  br label %cond.end.495

cond.false.487:                                   ; preds = %cond.false.475
  %88 = load i64, i64* %ndrivers, align 8
  %conv488 = trunc i64 %88 to i8
  %conv489 = zext i8 %conv488 to i32
  %mul490 = mul nsw i32 %conv489, 8
  %sub491 = sub nsw i32 %mul490, -128
  %conv492 = trunc i32 %sub491 to i8
  %conv493 = sext i8 %conv492 to i32
  %add494 = add nsw i32 %conv493, -128
  br label %cond.end.495

cond.end.495:                                     ; preds = %cond.false.487, %cond.true.481
  %cond496 = phi i32 [ %conv486, %cond.true.481 ], [ %add494, %cond.false.487 ]
  %conv497 = sext i32 %cond496 to i64
  store i64 %conv497, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then.2190, label %lor.lhs.false.2187

cond.false.498:                                   ; preds = %do.body
  br i1 false, label %cond.true.499, label %cond.false.983

cond.true.499:                                    ; preds = %cond.false.498
  br i1 false, label %cond.true.500, label %cond.false.768

cond.true.500:                                    ; preds = %cond.true.499
  %89 = load i64, i64* %ndrivers, align 8
  %conv501 = trunc i64 %89 to i16
  %conv502 = sext i16 %conv501 to i32
  %add503 = add nsw i32 0, %conv502
  %mul504 = mul nsw i32 0, %add503
  %sub505 = sub nsw i32 %mul504, 1
  %cmp506 = icmp slt i32 %sub505, 0
  br i1 %cmp506, label %cond.true.508, label %cond.false.528

cond.true.508:                                    ; preds = %cond.true.500
  %90 = load i64, i64* %ndrivers, align 8
  %conv509 = trunc i64 %90 to i16
  %conv510 = sext i16 %conv509 to i32
  %add511 = add nsw i32 0, %conv510
  %mul512 = mul nsw i32 0, %add511
  %add513 = add nsw i32 %mul512, 0
  %neg514 = xor i32 %add513, -1
  %cmp515 = icmp eq i32 %neg514, -1
  %conv516 = zext i1 %cmp515 to i32
  %sub517 = sub nsw i32 0, %conv516
  %91 = load i64, i64* %ndrivers, align 8
  %conv518 = trunc i64 %91 to i16
  %conv519 = sext i16 %conv518 to i32
  %add520 = add nsw i32 0, %conv519
  %mul521 = mul nsw i32 0, %add520
  %add522 = add nsw i32 %mul521, 1
  %shl523 = shl i32 %add522, 30
  %sub524 = sub nsw i32 %shl523, 1
  %mul525 = mul nsw i32 %sub524, 2
  %add526 = add nsw i32 %mul525, 1
  %sub527 = sub nsw i32 %sub517, %add526
  br label %cond.end.534

cond.false.528:                                   ; preds = %cond.true.500
  %92 = load i64, i64* %ndrivers, align 8
  %conv529 = trunc i64 %92 to i16
  %conv530 = sext i16 %conv529 to i32
  %add531 = add nsw i32 0, %conv530
  %mul532 = mul nsw i32 0, %add531
  %add533 = add nsw i32 %mul532, 0
  br label %cond.end.534

cond.end.534:                                     ; preds = %cond.false.528, %cond.true.508
  %cond535 = phi i32 [ %sub527, %cond.true.508 ], [ %add533, %cond.false.528 ]
  %cmp536 = icmp eq i32 %cond535, 0
  br i1 %cmp536, label %land.lhs.true.538, label %lor.lhs.false.543

land.lhs.true.538:                                ; preds = %cond.end.534
  %93 = load i64, i64* %ndrivers, align 8
  %conv539 = trunc i64 %93 to i16
  %conv540 = sext i16 %conv539 to i32
  %cmp541 = icmp slt i32 %conv540, 0
  br i1 %cmp541, label %cond.true.722, label %lor.lhs.false.543

lor.lhs.false.543:                                ; preds = %land.lhs.true.538, %cond.end.534
  br i1 false, label %cond.true.544, label %cond.false.623

cond.true.544:                                    ; preds = %lor.lhs.false.543
  %94 = load i64, i64* %ndrivers, align 8
  %conv545 = trunc i64 %94 to i16
  %conv546 = sext i16 %conv545 to i32
  %cmp547 = icmp slt i32 %conv546, 0
  br i1 %cmp547, label %cond.true.549, label %cond.false.580

cond.true.549:                                    ; preds = %cond.true.544
  %95 = load i64, i64* %ndrivers, align 8
  %conv550 = trunc i64 %95 to i16
  %conv551 = sext i16 %conv550 to i32
  %96 = load i64, i64* %ndrivers, align 8
  %conv552 = trunc i64 %96 to i16
  %conv553 = sext i16 %conv552 to i32
  %add554 = add nsw i32 0, %conv553
  %mul555 = mul nsw i32 0, %add554
  %sub556 = sub nsw i32 %mul555, 1
  %cmp557 = icmp slt i32 %sub556, 0
  br i1 %cmp557, label %cond.true.559, label %cond.false.569

cond.true.559:                                    ; preds = %cond.true.549
  %97 = load i64, i64* %ndrivers, align 8
  %conv560 = trunc i64 %97 to i16
  %conv561 = sext i16 %conv560 to i32
  %add562 = add nsw i32 0, %conv561
  %mul563 = mul nsw i32 0, %add562
  %add564 = add nsw i32 %mul563, 1
  %shl565 = shl i32 %add564, 30
  %sub566 = sub nsw i32 %shl565, 1
  %mul567 = mul nsw i32 %sub566, 2
  %add568 = add nsw i32 %mul567, 1
  br label %cond.end.575

cond.false.569:                                   ; preds = %cond.true.549
  %98 = load i64, i64* %ndrivers, align 8
  %conv570 = trunc i64 %98 to i16
  %conv571 = sext i16 %conv570 to i32
  %add572 = add nsw i32 0, %conv571
  %mul573 = mul nsw i32 0, %add572
  %sub574 = sub nsw i32 %mul573, 1
  br label %cond.end.575

cond.end.575:                                     ; preds = %cond.false.569, %cond.true.559
  %cond576 = phi i32 [ %add568, %cond.true.559 ], [ %sub574, %cond.false.569 ]
  %div577 = sdiv i32 %cond576, 8
  %cmp578 = icmp slt i32 %conv551, %div577
  br i1 %cmp578, label %cond.true.722, label %lor.lhs.false.702

cond.false.580:                                   ; preds = %cond.true.544
  br i1 false, label %cond.true.581, label %cond.false.582

cond.true.581:                                    ; preds = %cond.false.580
  br i1 false, label %cond.true.722, label %lor.lhs.false.702

cond.false.582:                                   ; preds = %cond.false.580
  %99 = load i64, i64* %ndrivers, align 8
  %conv583 = trunc i64 %99 to i16
  %conv584 = sext i16 %conv583 to i32
  %add585 = add nsw i32 0, %conv584
  %mul586 = mul nsw i32 0, %add585
  %sub587 = sub nsw i32 %mul586, 1
  %cmp588 = icmp slt i32 %sub587, 0
  br i1 %cmp588, label %cond.true.590, label %cond.false.610

cond.true.590:                                    ; preds = %cond.false.582
  %100 = load i64, i64* %ndrivers, align 8
  %conv591 = trunc i64 %100 to i16
  %conv592 = sext i16 %conv591 to i32
  %add593 = add nsw i32 0, %conv592
  %mul594 = mul nsw i32 0, %add593
  %add595 = add nsw i32 %mul594, 0
  %neg596 = xor i32 %add595, -1
  %cmp597 = icmp eq i32 %neg596, -1
  %conv598 = zext i1 %cmp597 to i32
  %sub599 = sub nsw i32 0, %conv598
  %101 = load i64, i64* %ndrivers, align 8
  %conv600 = trunc i64 %101 to i16
  %conv601 = sext i16 %conv600 to i32
  %add602 = add nsw i32 0, %conv601
  %mul603 = mul nsw i32 0, %add602
  %add604 = add nsw i32 %mul603, 1
  %shl605 = shl i32 %add604, 30
  %sub606 = sub nsw i32 %shl605, 1
  %mul607 = mul nsw i32 %sub606, 2
  %add608 = add nsw i32 %mul607, 1
  %sub609 = sub nsw i32 %sub599, %add608
  br label %cond.end.616

cond.false.610:                                   ; preds = %cond.false.582
  %102 = load i64, i64* %ndrivers, align 8
  %conv611 = trunc i64 %102 to i16
  %conv612 = sext i16 %conv611 to i32
  %add613 = add nsw i32 0, %conv612
  %mul614 = mul nsw i32 0, %add613
  %add615 = add nsw i32 %mul614, 0
  br label %cond.end.616

cond.end.616:                                     ; preds = %cond.false.610, %cond.true.590
  %cond617 = phi i32 [ %sub609, %cond.true.590 ], [ %add615, %cond.false.610 ]
  %div618 = sdiv i32 %cond617, 8
  %103 = load i64, i64* %ndrivers, align 8
  %conv619 = trunc i64 %103 to i16
  %conv620 = sext i16 %conv619 to i32
  %cmp621 = icmp slt i32 %div618, %conv620
  br i1 %cmp621, label %cond.true.722, label %lor.lhs.false.702

cond.false.623:                                   ; preds = %lor.lhs.false.543
  br i1 false, label %cond.true.624, label %cond.false.625

cond.true.624:                                    ; preds = %cond.false.623
  br i1 false, label %cond.true.722, label %lor.lhs.false.702

cond.false.625:                                   ; preds = %cond.false.623
  %104 = load i64, i64* %ndrivers, align 8
  %conv626 = trunc i64 %104 to i16
  %conv627 = sext i16 %conv626 to i32
  %cmp628 = icmp slt i32 %conv627, 0
  br i1 %cmp628, label %cond.true.630, label %cond.false.671

cond.true.630:                                    ; preds = %cond.false.625
  %105 = load i64, i64* %ndrivers, align 8
  %conv631 = trunc i64 %105 to i16
  %conv632 = sext i16 %conv631 to i32
  %106 = load i64, i64* %ndrivers, align 8
  %conv633 = trunc i64 %106 to i16
  %conv634 = sext i16 %conv633 to i32
  %add635 = add nsw i32 0, %conv634
  %mul636 = mul nsw i32 0, %add635
  %sub637 = sub nsw i32 %mul636, 1
  %cmp638 = icmp slt i32 %sub637, 0
  br i1 %cmp638, label %cond.true.640, label %cond.false.660

cond.true.640:                                    ; preds = %cond.true.630
  %107 = load i64, i64* %ndrivers, align 8
  %conv641 = trunc i64 %107 to i16
  %conv642 = sext i16 %conv641 to i32
  %add643 = add nsw i32 0, %conv642
  %mul644 = mul nsw i32 0, %add643
  %add645 = add nsw i32 %mul644, 0
  %neg646 = xor i32 %add645, -1
  %cmp647 = icmp eq i32 %neg646, -1
  %conv648 = zext i1 %cmp647 to i32
  %sub649 = sub nsw i32 0, %conv648
  %108 = load i64, i64* %ndrivers, align 8
  %conv650 = trunc i64 %108 to i16
  %conv651 = sext i16 %conv650 to i32
  %add652 = add nsw i32 0, %conv651
  %mul653 = mul nsw i32 0, %add652
  %add654 = add nsw i32 %mul653, 1
  %shl655 = shl i32 %add654, 30
  %sub656 = sub nsw i32 %shl655, 1
  %mul657 = mul nsw i32 %sub656, 2
  %add658 = add nsw i32 %mul657, 1
  %sub659 = sub nsw i32 %sub649, %add658
  br label %cond.end.666

cond.false.660:                                   ; preds = %cond.true.630
  %109 = load i64, i64* %ndrivers, align 8
  %conv661 = trunc i64 %109 to i16
  %conv662 = sext i16 %conv661 to i32
  %add663 = add nsw i32 0, %conv662
  %mul664 = mul nsw i32 0, %add663
  %add665 = add nsw i32 %mul664, 0
  br label %cond.end.666

cond.end.666:                                     ; preds = %cond.false.660, %cond.true.640
  %cond667 = phi i32 [ %sub659, %cond.true.640 ], [ %add665, %cond.false.660 ]
  %div668 = sdiv i32 %cond667, 8
  %cmp669 = icmp slt i32 %conv632, %div668
  br i1 %cmp669, label %cond.true.722, label %lor.lhs.false.702

cond.false.671:                                   ; preds = %cond.false.625
  %110 = load i64, i64* %ndrivers, align 8
  %conv672 = trunc i64 %110 to i16
  %conv673 = sext i16 %conv672 to i32
  %add674 = add nsw i32 0, %conv673
  %mul675 = mul nsw i32 0, %add674
  %sub676 = sub nsw i32 %mul675, 1
  %cmp677 = icmp slt i32 %sub676, 0
  br i1 %cmp677, label %cond.true.679, label %cond.false.689

cond.true.679:                                    ; preds = %cond.false.671
  %111 = load i64, i64* %ndrivers, align 8
  %conv680 = trunc i64 %111 to i16
  %conv681 = sext i16 %conv680 to i32
  %add682 = add nsw i32 0, %conv681
  %mul683 = mul nsw i32 0, %add682
  %add684 = add nsw i32 %mul683, 1
  %shl685 = shl i32 %add684, 30
  %sub686 = sub nsw i32 %shl685, 1
  %mul687 = mul nsw i32 %sub686, 2
  %add688 = add nsw i32 %mul687, 1
  br label %cond.end.695

cond.false.689:                                   ; preds = %cond.false.671
  %112 = load i64, i64* %ndrivers, align 8
  %conv690 = trunc i64 %112 to i16
  %conv691 = sext i16 %conv690 to i32
  %add692 = add nsw i32 0, %conv691
  %mul693 = mul nsw i32 0, %add692
  %sub694 = sub nsw i32 %mul693, 1
  br label %cond.end.695

cond.end.695:                                     ; preds = %cond.false.689, %cond.true.679
  %cond696 = phi i32 [ %add688, %cond.true.679 ], [ %sub694, %cond.false.689 ]
  %div697 = sdiv i32 %cond696, 8
  %113 = load i64, i64* %ndrivers, align 8
  %conv698 = trunc i64 %113 to i16
  %conv699 = sext i16 %conv698 to i32
  %cmp700 = icmp slt i32 %div697, %conv699
  br i1 %cmp700, label %cond.true.722, label %lor.lhs.false.702

lor.lhs.false.702:                                ; preds = %cond.end.695, %cond.end.666, %cond.true.624, %cond.end.616, %cond.true.581, %cond.end.575
  %114 = load i64, i64* %ndrivers, align 8
  %conv703 = trunc i64 %114 to i16
  %conv704 = sext i16 %conv703 to i32
  %mul705 = mul nsw i32 %conv704, 8
  %mul706 = mul nsw i32 0, %mul705
  %sub707 = sub nsw i32 %mul706, 1
  %cmp708 = icmp slt i32 %sub707, 0
  br i1 %cmp708, label %land.lhs.true.710, label %lor.lhs.false.716

land.lhs.true.710:                                ; preds = %lor.lhs.false.702
  %115 = load i64, i64* %ndrivers, align 8
  %conv711 = trunc i64 %115 to i16
  %conv712 = sext i16 %conv711 to i32
  %mul713 = mul nsw i32 %conv712, 8
  %cmp714 = icmp slt i32 %mul713, -32768
  br i1 %cmp714, label %cond.true.722, label %lor.lhs.false.716

lor.lhs.false.716:                                ; preds = %land.lhs.true.710, %lor.lhs.false.702
  %116 = load i64, i64* %ndrivers, align 8
  %conv717 = trunc i64 %116 to i16
  %conv718 = sext i16 %conv717 to i32
  %mul719 = mul nsw i32 %conv718, 8
  %cmp720 = icmp slt i32 32767, %mul719
  br i1 %cmp720, label %cond.true.722, label %cond.false.745

cond.true.722:                                    ; preds = %lor.lhs.false.716, %land.lhs.true.710, %cond.end.695, %cond.end.666, %cond.true.624, %cond.end.616, %cond.true.581, %cond.end.575, %land.lhs.true.538
  %117 = load i64, i64* %ndrivers, align 8
  %conv723 = trunc i64 %117 to i16
  %conv724 = zext i16 %conv723 to i32
  %mul725 = mul nsw i32 %conv724, 8
  %cmp726 = icmp sle i32 %mul725, 32767
  br i1 %cmp726, label %cond.true.728, label %cond.false.734

cond.true.728:                                    ; preds = %cond.true.722
  %118 = load i64, i64* %ndrivers, align 8
  %conv729 = trunc i64 %118 to i16
  %conv730 = zext i16 %conv729 to i32
  %mul731 = mul nsw i32 %conv730, 8
  %conv732 = trunc i32 %mul731 to i16
  %conv733 = sext i16 %conv732 to i32
  br label %cond.end.742

cond.false.734:                                   ; preds = %cond.true.722
  %119 = load i64, i64* %ndrivers, align 8
  %conv735 = trunc i64 %119 to i16
  %conv736 = zext i16 %conv735 to i32
  %mul737 = mul nsw i32 %conv736, 8
  %sub738 = sub nsw i32 %mul737, -32768
  %conv739 = trunc i32 %sub738 to i16
  %conv740 = sext i16 %conv739 to i32
  %add741 = add nsw i32 %conv740, -32768
  br label %cond.end.742

cond.end.742:                                     ; preds = %cond.false.734, %cond.true.728
  %cond743 = phi i32 [ %conv733, %cond.true.728 ], [ %add741, %cond.false.734 ]
  %conv744 = sext i32 %cond743 to i64
  store i64 %conv744, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then.2190, label %lor.lhs.false.2187

cond.false.745:                                   ; preds = %lor.lhs.false.716
  %120 = load i64, i64* %ndrivers, align 8
  %conv746 = trunc i64 %120 to i16
  %conv747 = zext i16 %conv746 to i32
  %mul748 = mul nsw i32 %conv747, 8
  %cmp749 = icmp sle i32 %mul748, 32767
  br i1 %cmp749, label %cond.true.751, label %cond.false.757

cond.true.751:                                    ; preds = %cond.false.745
  %121 = load i64, i64* %ndrivers, align 8
  %conv752 = trunc i64 %121 to i16
  %conv753 = zext i16 %conv752 to i32
  %mul754 = mul nsw i32 %conv753, 8
  %conv755 = trunc i32 %mul754 to i16
  %conv756 = sext i16 %conv755 to i32
  br label %cond.end.765

cond.false.757:                                   ; preds = %cond.false.745
  %122 = load i64, i64* %ndrivers, align 8
  %conv758 = trunc i64 %122 to i16
  %conv759 = zext i16 %conv758 to i32
  %mul760 = mul nsw i32 %conv759, 8
  %sub761 = sub nsw i32 %mul760, -32768
  %conv762 = trunc i32 %sub761 to i16
  %conv763 = sext i16 %conv762 to i32
  %add764 = add nsw i32 %conv763, -32768
  br label %cond.end.765

cond.end.765:                                     ; preds = %cond.false.757, %cond.true.751
  %cond766 = phi i32 [ %conv756, %cond.true.751 ], [ %add764, %cond.false.757 ]
  %conv767 = sext i32 %cond766 to i64
  store i64 %conv767, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then.2190, label %lor.lhs.false.2187

cond.false.768:                                   ; preds = %cond.true.499
  %123 = load i64, i64* %ndrivers, align 8
  %add769 = add nsw i64 0, %123
  %mul770 = mul nsw i64 0, %add769
  %sub771 = sub nsw i64 %mul770, 1
  %cmp772 = icmp slt i64 %sub771, 0
  br i1 %cmp772, label %cond.true.774, label %cond.false.791

cond.true.774:                                    ; preds = %cond.false.768
  %124 = load i64, i64* %ndrivers, align 8
  %add775 = add nsw i64 0, %124
  %mul776 = mul nsw i64 0, %add775
  %add777 = add nsw i64 %mul776, 0
  %neg778 = xor i64 %add777, -1
  %cmp779 = icmp eq i64 %neg778, -1
  %conv780 = zext i1 %cmp779 to i32
  %sub781 = sub nsw i32 0, %conv780
  %conv782 = sext i32 %sub781 to i64
  %125 = load i64, i64* %ndrivers, align 8
  %add783 = add nsw i64 0, %125
  %mul784 = mul nsw i64 0, %add783
  %add785 = add nsw i64 %mul784, 1
  %shl786 = shl i64 %add785, 62
  %sub787 = sub nsw i64 %shl786, 1
  %mul788 = mul nsw i64 %sub787, 2
  %add789 = add nsw i64 %mul788, 1
  %sub790 = sub nsw i64 %conv782, %add789
  br label %cond.end.795

cond.false.791:                                   ; preds = %cond.false.768
  %126 = load i64, i64* %ndrivers, align 8
  %add792 = add nsw i64 0, %126
  %mul793 = mul nsw i64 0, %add792
  %add794 = add nsw i64 %mul793, 0
  br label %cond.end.795

cond.end.795:                                     ; preds = %cond.false.791, %cond.true.774
  %cond796 = phi i64 [ %sub790, %cond.true.774 ], [ %add794, %cond.false.791 ]
  %cmp797 = icmp eq i64 %cond796, 0
  br i1 %cmp797, label %land.lhs.true.799, label %lor.lhs.false.802

land.lhs.true.799:                                ; preds = %cond.end.795
  %127 = load i64, i64* %ndrivers, align 8
  %cmp800 = icmp slt i64 %127, 0
  br i1 %cmp800, label %cond.true.937, label %lor.lhs.false.802

lor.lhs.false.802:                                ; preds = %land.lhs.true.799, %cond.end.795
  br i1 false, label %cond.true.803, label %cond.false.863

cond.true.803:                                    ; preds = %lor.lhs.false.802
  %128 = load i64, i64* %ndrivers, align 8
  %cmp804 = icmp slt i64 %128, 0
  br i1 %cmp804, label %cond.true.806, label %cond.false.829

cond.true.806:                                    ; preds = %cond.true.803
  %129 = load i64, i64* %ndrivers, align 8
  %130 = load i64, i64* %ndrivers, align 8
  %add807 = add nsw i64 0, %130
  %mul808 = mul nsw i64 0, %add807
  %sub809 = sub nsw i64 %mul808, 1
  %cmp810 = icmp slt i64 %sub809, 0
  br i1 %cmp810, label %cond.true.812, label %cond.false.820

cond.true.812:                                    ; preds = %cond.true.806
  %131 = load i64, i64* %ndrivers, align 8
  %add813 = add nsw i64 0, %131
  %mul814 = mul nsw i64 0, %add813
  %add815 = add nsw i64 %mul814, 1
  %shl816 = shl i64 %add815, 62
  %sub817 = sub nsw i64 %shl816, 1
  %mul818 = mul nsw i64 %sub817, 2
  %add819 = add nsw i64 %mul818, 1
  br label %cond.end.824

cond.false.820:                                   ; preds = %cond.true.806
  %132 = load i64, i64* %ndrivers, align 8
  %add821 = add nsw i64 0, %132
  %mul822 = mul nsw i64 0, %add821
  %sub823 = sub nsw i64 %mul822, 1
  br label %cond.end.824

cond.end.824:                                     ; preds = %cond.false.820, %cond.true.812
  %cond825 = phi i64 [ %add819, %cond.true.812 ], [ %sub823, %cond.false.820 ]
  %div826 = sdiv i64 %cond825, 8
  %cmp827 = icmp slt i64 %129, %div826
  br i1 %cmp827, label %cond.true.937, label %lor.lhs.false.923

cond.false.829:                                   ; preds = %cond.true.803
  br i1 false, label %cond.true.830, label %cond.false.831

cond.true.830:                                    ; preds = %cond.false.829
  br i1 false, label %cond.true.937, label %lor.lhs.false.923

cond.false.831:                                   ; preds = %cond.false.829
  %133 = load i64, i64* %ndrivers, align 8
  %add832 = add nsw i64 0, %133
  %mul833 = mul nsw i64 0, %add832
  %sub834 = sub nsw i64 %mul833, 1
  %cmp835 = icmp slt i64 %sub834, 0
  br i1 %cmp835, label %cond.true.837, label %cond.false.854

cond.true.837:                                    ; preds = %cond.false.831
  %134 = load i64, i64* %ndrivers, align 8
  %add838 = add nsw i64 0, %134
  %mul839 = mul nsw i64 0, %add838
  %add840 = add nsw i64 %mul839, 0
  %neg841 = xor i64 %add840, -1
  %cmp842 = icmp eq i64 %neg841, -1
  %conv843 = zext i1 %cmp842 to i32
  %sub844 = sub nsw i32 0, %conv843
  %conv845 = sext i32 %sub844 to i64
  %135 = load i64, i64* %ndrivers, align 8
  %add846 = add nsw i64 0, %135
  %mul847 = mul nsw i64 0, %add846
  %add848 = add nsw i64 %mul847, 1
  %shl849 = shl i64 %add848, 62
  %sub850 = sub nsw i64 %shl849, 1
  %mul851 = mul nsw i64 %sub850, 2
  %add852 = add nsw i64 %mul851, 1
  %sub853 = sub nsw i64 %conv845, %add852
  br label %cond.end.858

cond.false.854:                                   ; preds = %cond.false.831
  %136 = load i64, i64* %ndrivers, align 8
  %add855 = add nsw i64 0, %136
  %mul856 = mul nsw i64 0, %add855
  %add857 = add nsw i64 %mul856, 0
  br label %cond.end.858

cond.end.858:                                     ; preds = %cond.false.854, %cond.true.837
  %cond859 = phi i64 [ %sub853, %cond.true.837 ], [ %add857, %cond.false.854 ]
  %div860 = sdiv i64 %cond859, 8
  %137 = load i64, i64* %ndrivers, align 8
  %cmp861 = icmp slt i64 %div860, %137
  br i1 %cmp861, label %cond.true.937, label %lor.lhs.false.923

cond.false.863:                                   ; preds = %lor.lhs.false.802
  br i1 false, label %cond.true.864, label %cond.false.865

cond.true.864:                                    ; preds = %cond.false.863
  br i1 false, label %cond.true.937, label %lor.lhs.false.923

cond.false.865:                                   ; preds = %cond.false.863
  %138 = load i64, i64* %ndrivers, align 8
  %cmp866 = icmp slt i64 %138, 0
  br i1 %cmp866, label %cond.true.868, label %cond.false.900

cond.true.868:                                    ; preds = %cond.false.865
  %139 = load i64, i64* %ndrivers, align 8
  %140 = load i64, i64* %ndrivers, align 8
  %add869 = add nsw i64 0, %140
  %mul870 = mul nsw i64 0, %add869
  %sub871 = sub nsw i64 %mul870, 1
  %cmp872 = icmp slt i64 %sub871, 0
  br i1 %cmp872, label %cond.true.874, label %cond.false.891

cond.true.874:                                    ; preds = %cond.true.868
  %141 = load i64, i64* %ndrivers, align 8
  %add875 = add nsw i64 0, %141
  %mul876 = mul nsw i64 0, %add875
  %add877 = add nsw i64 %mul876, 0
  %neg878 = xor i64 %add877, -1
  %cmp879 = icmp eq i64 %neg878, -1
  %conv880 = zext i1 %cmp879 to i32
  %sub881 = sub nsw i32 0, %conv880
  %conv882 = sext i32 %sub881 to i64
  %142 = load i64, i64* %ndrivers, align 8
  %add883 = add nsw i64 0, %142
  %mul884 = mul nsw i64 0, %add883
  %add885 = add nsw i64 %mul884, 1
  %shl886 = shl i64 %add885, 62
  %sub887 = sub nsw i64 %shl886, 1
  %mul888 = mul nsw i64 %sub887, 2
  %add889 = add nsw i64 %mul888, 1
  %sub890 = sub nsw i64 %conv882, %add889
  br label %cond.end.895

cond.false.891:                                   ; preds = %cond.true.868
  %143 = load i64, i64* %ndrivers, align 8
  %add892 = add nsw i64 0, %143
  %mul893 = mul nsw i64 0, %add892
  %add894 = add nsw i64 %mul893, 0
  br label %cond.end.895

cond.end.895:                                     ; preds = %cond.false.891, %cond.true.874
  %cond896 = phi i64 [ %sub890, %cond.true.874 ], [ %add894, %cond.false.891 ]
  %div897 = sdiv i64 %cond896, 8
  %cmp898 = icmp slt i64 %139, %div897
  br i1 %cmp898, label %cond.true.937, label %lor.lhs.false.923

cond.false.900:                                   ; preds = %cond.false.865
  %144 = load i64, i64* %ndrivers, align 8
  %add901 = add nsw i64 0, %144
  %mul902 = mul nsw i64 0, %add901
  %sub903 = sub nsw i64 %mul902, 1
  %cmp904 = icmp slt i64 %sub903, 0
  br i1 %cmp904, label %cond.true.906, label %cond.false.914

cond.true.906:                                    ; preds = %cond.false.900
  %145 = load i64, i64* %ndrivers, align 8
  %add907 = add nsw i64 0, %145
  %mul908 = mul nsw i64 0, %add907
  %add909 = add nsw i64 %mul908, 1
  %shl910 = shl i64 %add909, 62
  %sub911 = sub nsw i64 %shl910, 1
  %mul912 = mul nsw i64 %sub911, 2
  %add913 = add nsw i64 %mul912, 1
  br label %cond.end.918

cond.false.914:                                   ; preds = %cond.false.900
  %146 = load i64, i64* %ndrivers, align 8
  %add915 = add nsw i64 0, %146
  %mul916 = mul nsw i64 0, %add915
  %sub917 = sub nsw i64 %mul916, 1
  br label %cond.end.918

cond.end.918:                                     ; preds = %cond.false.914, %cond.true.906
  %cond919 = phi i64 [ %add913, %cond.true.906 ], [ %sub917, %cond.false.914 ]
  %div920 = sdiv i64 %cond919, 8
  %147 = load i64, i64* %ndrivers, align 8
  %cmp921 = icmp slt i64 %div920, %147
  br i1 %cmp921, label %cond.true.937, label %lor.lhs.false.923

lor.lhs.false.923:                                ; preds = %cond.end.918, %cond.end.895, %cond.true.864, %cond.end.858, %cond.true.830, %cond.end.824
  %148 = load i64, i64* %ndrivers, align 8
  %mul924 = mul nsw i64 %148, 8
  %mul925 = mul nsw i64 0, %mul924
  %sub926 = sub nsw i64 %mul925, 1
  %cmp927 = icmp slt i64 %sub926, 0
  br i1 %cmp927, label %land.lhs.true.929, label %lor.lhs.false.933

land.lhs.true.929:                                ; preds = %lor.lhs.false.923
  %149 = load i64, i64* %ndrivers, align 8
  %mul930 = mul nsw i64 %149, 8
  %cmp931 = icmp slt i64 %mul930, -32768
  br i1 %cmp931, label %cond.true.937, label %lor.lhs.false.933

lor.lhs.false.933:                                ; preds = %land.lhs.true.929, %lor.lhs.false.923
  %150 = load i64, i64* %ndrivers, align 8
  %mul934 = mul nsw i64 %150, 8
  %cmp935 = icmp slt i64 32767, %mul934
  br i1 %cmp935, label %cond.true.937, label %cond.false.960

cond.true.937:                                    ; preds = %lor.lhs.false.933, %land.lhs.true.929, %cond.end.918, %cond.end.895, %cond.true.864, %cond.end.858, %cond.true.830, %cond.end.824, %land.lhs.true.799
  %151 = load i64, i64* %ndrivers, align 8
  %conv938 = trunc i64 %151 to i16
  %conv939 = zext i16 %conv938 to i32
  %mul940 = mul nsw i32 %conv939, 8
  %cmp941 = icmp sle i32 %mul940, 32767
  br i1 %cmp941, label %cond.true.943, label %cond.false.949

cond.true.943:                                    ; preds = %cond.true.937
  %152 = load i64, i64* %ndrivers, align 8
  %conv944 = trunc i64 %152 to i16
  %conv945 = zext i16 %conv944 to i32
  %mul946 = mul nsw i32 %conv945, 8
  %conv947 = trunc i32 %mul946 to i16
  %conv948 = sext i16 %conv947 to i32
  br label %cond.end.957

cond.false.949:                                   ; preds = %cond.true.937
  %153 = load i64, i64* %ndrivers, align 8
  %conv950 = trunc i64 %153 to i16
  %conv951 = zext i16 %conv950 to i32
  %mul952 = mul nsw i32 %conv951, 8
  %sub953 = sub nsw i32 %mul952, -32768
  %conv954 = trunc i32 %sub953 to i16
  %conv955 = sext i16 %conv954 to i32
  %add956 = add nsw i32 %conv955, -32768
  br label %cond.end.957

cond.end.957:                                     ; preds = %cond.false.949, %cond.true.943
  %cond958 = phi i32 [ %conv948, %cond.true.943 ], [ %add956, %cond.false.949 ]
  %conv959 = sext i32 %cond958 to i64
  store i64 %conv959, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then.2190, label %lor.lhs.false.2187

cond.false.960:                                   ; preds = %lor.lhs.false.933
  %154 = load i64, i64* %ndrivers, align 8
  %conv961 = trunc i64 %154 to i16
  %conv962 = zext i16 %conv961 to i32
  %mul963 = mul nsw i32 %conv962, 8
  %cmp964 = icmp sle i32 %mul963, 32767
  br i1 %cmp964, label %cond.true.966, label %cond.false.972

cond.true.966:                                    ; preds = %cond.false.960
  %155 = load i64, i64* %ndrivers, align 8
  %conv967 = trunc i64 %155 to i16
  %conv968 = zext i16 %conv967 to i32
  %mul969 = mul nsw i32 %conv968, 8
  %conv970 = trunc i32 %mul969 to i16
  %conv971 = sext i16 %conv970 to i32
  br label %cond.end.980

cond.false.972:                                   ; preds = %cond.false.960
  %156 = load i64, i64* %ndrivers, align 8
  %conv973 = trunc i64 %156 to i16
  %conv974 = zext i16 %conv973 to i32
  %mul975 = mul nsw i32 %conv974, 8
  %sub976 = sub nsw i32 %mul975, -32768
  %conv977 = trunc i32 %sub976 to i16
  %conv978 = sext i16 %conv977 to i32
  %add979 = add nsw i32 %conv978, -32768
  br label %cond.end.980

cond.end.980:                                     ; preds = %cond.false.972, %cond.true.966
  %cond981 = phi i32 [ %conv971, %cond.true.966 ], [ %add979, %cond.false.972 ]
  %conv982 = sext i32 %cond981 to i64
  store i64 %conv982, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then.2190, label %lor.lhs.false.2187

cond.false.983:                                   ; preds = %cond.false.498
  br i1 false, label %cond.true.984, label %cond.false.1412

cond.true.984:                                    ; preds = %cond.false.983
  br i1 false, label %cond.true.985, label %cond.false.1211

cond.true.985:                                    ; preds = %cond.true.984
  %157 = load i64, i64* %ndrivers, align 8
  %conv986 = trunc i64 %157 to i32
  %add987 = add nsw i32 0, %conv986
  %mul988 = mul nsw i32 0, %add987
  %sub989 = sub nsw i32 %mul988, 1
  %cmp990 = icmp slt i32 %sub989, 0
  br i1 %cmp990, label %cond.true.992, label %cond.false.1010

cond.true.992:                                    ; preds = %cond.true.985
  %158 = load i64, i64* %ndrivers, align 8
  %conv993 = trunc i64 %158 to i32
  %add994 = add nsw i32 0, %conv993
  %mul995 = mul nsw i32 0, %add994
  %add996 = add nsw i32 %mul995, 0
  %neg997 = xor i32 %add996, -1
  %cmp998 = icmp eq i32 %neg997, -1
  %conv999 = zext i1 %cmp998 to i32
  %sub1000 = sub nsw i32 0, %conv999
  %159 = load i64, i64* %ndrivers, align 8
  %conv1001 = trunc i64 %159 to i32
  %add1002 = add nsw i32 0, %conv1001
  %mul1003 = mul nsw i32 0, %add1002
  %add1004 = add nsw i32 %mul1003, 1
  %shl1005 = shl i32 %add1004, 30
  %sub1006 = sub nsw i32 %shl1005, 1
  %mul1007 = mul nsw i32 %sub1006, 2
  %add1008 = add nsw i32 %mul1007, 1
  %sub1009 = sub nsw i32 %sub1000, %add1008
  br label %cond.end.1015

cond.false.1010:                                  ; preds = %cond.true.985
  %160 = load i64, i64* %ndrivers, align 8
  %conv1011 = trunc i64 %160 to i32
  %add1012 = add nsw i32 0, %conv1011
  %mul1013 = mul nsw i32 0, %add1012
  %add1014 = add nsw i32 %mul1013, 0
  br label %cond.end.1015

cond.end.1015:                                    ; preds = %cond.false.1010, %cond.true.992
  %cond1016 = phi i32 [ %sub1009, %cond.true.992 ], [ %add1014, %cond.false.1010 ]
  %cmp1017 = icmp eq i32 %cond1016, 0
  br i1 %cmp1017, label %land.lhs.true.1019, label %lor.lhs.false.1023

land.lhs.true.1019:                               ; preds = %cond.end.1015
  %161 = load i64, i64* %ndrivers, align 8
  %conv1020 = trunc i64 %161 to i32
  %cmp1021 = icmp slt i32 %conv1020, 0
  br i1 %cmp1021, label %cond.true.1179, label %lor.lhs.false.1023

lor.lhs.false.1023:                               ; preds = %land.lhs.true.1019, %cond.end.1015
  br i1 false, label %cond.true.1024, label %cond.false.1093

cond.true.1024:                                   ; preds = %lor.lhs.false.1023
  %162 = load i64, i64* %ndrivers, align 8
  %conv1025 = trunc i64 %162 to i32
  %cmp1026 = icmp slt i32 %conv1025, 0
  br i1 %cmp1026, label %cond.true.1028, label %cond.false.1055

cond.true.1028:                                   ; preds = %cond.true.1024
  %163 = load i64, i64* %ndrivers, align 8
  %conv1029 = trunc i64 %163 to i32
  %164 = load i64, i64* %ndrivers, align 8
  %conv1030 = trunc i64 %164 to i32
  %add1031 = add nsw i32 0, %conv1030
  %mul1032 = mul nsw i32 0, %add1031
  %sub1033 = sub nsw i32 %mul1032, 1
  %cmp1034 = icmp slt i32 %sub1033, 0
  br i1 %cmp1034, label %cond.true.1036, label %cond.false.1045

cond.true.1036:                                   ; preds = %cond.true.1028
  %165 = load i64, i64* %ndrivers, align 8
  %conv1037 = trunc i64 %165 to i32
  %add1038 = add nsw i32 0, %conv1037
  %mul1039 = mul nsw i32 0, %add1038
  %add1040 = add nsw i32 %mul1039, 1
  %shl1041 = shl i32 %add1040, 30
  %sub1042 = sub nsw i32 %shl1041, 1
  %mul1043 = mul nsw i32 %sub1042, 2
  %add1044 = add nsw i32 %mul1043, 1
  br label %cond.end.1050

cond.false.1045:                                  ; preds = %cond.true.1028
  %166 = load i64, i64* %ndrivers, align 8
  %conv1046 = trunc i64 %166 to i32
  %add1047 = add nsw i32 0, %conv1046
  %mul1048 = mul nsw i32 0, %add1047
  %sub1049 = sub nsw i32 %mul1048, 1
  br label %cond.end.1050

cond.end.1050:                                    ; preds = %cond.false.1045, %cond.true.1036
  %cond1051 = phi i32 [ %add1044, %cond.true.1036 ], [ %sub1049, %cond.false.1045 ]
  %div1052 = sdiv i32 %cond1051, 8
  %cmp1053 = icmp slt i32 %conv1029, %div1052
  br i1 %cmp1053, label %cond.true.1179, label %lor.lhs.false.1162

cond.false.1055:                                  ; preds = %cond.true.1024
  br i1 false, label %cond.true.1056, label %cond.false.1057

cond.true.1056:                                   ; preds = %cond.false.1055
  br i1 false, label %cond.true.1179, label %lor.lhs.false.1162

cond.false.1057:                                  ; preds = %cond.false.1055
  %167 = load i64, i64* %ndrivers, align 8
  %conv1058 = trunc i64 %167 to i32
  %add1059 = add nsw i32 0, %conv1058
  %mul1060 = mul nsw i32 0, %add1059
  %sub1061 = sub nsw i32 %mul1060, 1
  %cmp1062 = icmp slt i32 %sub1061, 0
  br i1 %cmp1062, label %cond.true.1064, label %cond.false.1082

cond.true.1064:                                   ; preds = %cond.false.1057
  %168 = load i64, i64* %ndrivers, align 8
  %conv1065 = trunc i64 %168 to i32
  %add1066 = add nsw i32 0, %conv1065
  %mul1067 = mul nsw i32 0, %add1066
  %add1068 = add nsw i32 %mul1067, 0
  %neg1069 = xor i32 %add1068, -1
  %cmp1070 = icmp eq i32 %neg1069, -1
  %conv1071 = zext i1 %cmp1070 to i32
  %sub1072 = sub nsw i32 0, %conv1071
  %169 = load i64, i64* %ndrivers, align 8
  %conv1073 = trunc i64 %169 to i32
  %add1074 = add nsw i32 0, %conv1073
  %mul1075 = mul nsw i32 0, %add1074
  %add1076 = add nsw i32 %mul1075, 1
  %shl1077 = shl i32 %add1076, 30
  %sub1078 = sub nsw i32 %shl1077, 1
  %mul1079 = mul nsw i32 %sub1078, 2
  %add1080 = add nsw i32 %mul1079, 1
  %sub1081 = sub nsw i32 %sub1072, %add1080
  br label %cond.end.1087

cond.false.1082:                                  ; preds = %cond.false.1057
  %170 = load i64, i64* %ndrivers, align 8
  %conv1083 = trunc i64 %170 to i32
  %add1084 = add nsw i32 0, %conv1083
  %mul1085 = mul nsw i32 0, %add1084
  %add1086 = add nsw i32 %mul1085, 0
  br label %cond.end.1087

cond.end.1087:                                    ; preds = %cond.false.1082, %cond.true.1064
  %cond1088 = phi i32 [ %sub1081, %cond.true.1064 ], [ %add1086, %cond.false.1082 ]
  %div1089 = sdiv i32 %cond1088, 8
  %171 = load i64, i64* %ndrivers, align 8
  %conv1090 = trunc i64 %171 to i32
  %cmp1091 = icmp slt i32 %div1089, %conv1090
  br i1 %cmp1091, label %cond.true.1179, label %lor.lhs.false.1162

cond.false.1093:                                  ; preds = %lor.lhs.false.1023
  br i1 false, label %cond.true.1094, label %cond.false.1095

cond.true.1094:                                   ; preds = %cond.false.1093
  br i1 false, label %cond.true.1179, label %lor.lhs.false.1162

cond.false.1095:                                  ; preds = %cond.false.1093
  %172 = load i64, i64* %ndrivers, align 8
  %conv1096 = trunc i64 %172 to i32
  %cmp1097 = icmp slt i32 %conv1096, 0
  br i1 %cmp1097, label %cond.true.1099, label %cond.false.1135

cond.true.1099:                                   ; preds = %cond.false.1095
  %173 = load i64, i64* %ndrivers, align 8
  %conv1100 = trunc i64 %173 to i32
  %174 = load i64, i64* %ndrivers, align 8
  %conv1101 = trunc i64 %174 to i32
  %add1102 = add nsw i32 0, %conv1101
  %mul1103 = mul nsw i32 0, %add1102
  %sub1104 = sub nsw i32 %mul1103, 1
  %cmp1105 = icmp slt i32 %sub1104, 0
  br i1 %cmp1105, label %cond.true.1107, label %cond.false.1125

cond.true.1107:                                   ; preds = %cond.true.1099
  %175 = load i64, i64* %ndrivers, align 8
  %conv1108 = trunc i64 %175 to i32
  %add1109 = add nsw i32 0, %conv1108
  %mul1110 = mul nsw i32 0, %add1109
  %add1111 = add nsw i32 %mul1110, 0
  %neg1112 = xor i32 %add1111, -1
  %cmp1113 = icmp eq i32 %neg1112, -1
  %conv1114 = zext i1 %cmp1113 to i32
  %sub1115 = sub nsw i32 0, %conv1114
  %176 = load i64, i64* %ndrivers, align 8
  %conv1116 = trunc i64 %176 to i32
  %add1117 = add nsw i32 0, %conv1116
  %mul1118 = mul nsw i32 0, %add1117
  %add1119 = add nsw i32 %mul1118, 1
  %shl1120 = shl i32 %add1119, 30
  %sub1121 = sub nsw i32 %shl1120, 1
  %mul1122 = mul nsw i32 %sub1121, 2
  %add1123 = add nsw i32 %mul1122, 1
  %sub1124 = sub nsw i32 %sub1115, %add1123
  br label %cond.end.1130

cond.false.1125:                                  ; preds = %cond.true.1099
  %177 = load i64, i64* %ndrivers, align 8
  %conv1126 = trunc i64 %177 to i32
  %add1127 = add nsw i32 0, %conv1126
  %mul1128 = mul nsw i32 0, %add1127
  %add1129 = add nsw i32 %mul1128, 0
  br label %cond.end.1130

cond.end.1130:                                    ; preds = %cond.false.1125, %cond.true.1107
  %cond1131 = phi i32 [ %sub1124, %cond.true.1107 ], [ %add1129, %cond.false.1125 ]
  %div1132 = sdiv i32 %cond1131, 8
  %cmp1133 = icmp slt i32 %conv1100, %div1132
  br i1 %cmp1133, label %cond.true.1179, label %lor.lhs.false.1162

cond.false.1135:                                  ; preds = %cond.false.1095
  %178 = load i64, i64* %ndrivers, align 8
  %conv1136 = trunc i64 %178 to i32
  %add1137 = add nsw i32 0, %conv1136
  %mul1138 = mul nsw i32 0, %add1137
  %sub1139 = sub nsw i32 %mul1138, 1
  %cmp1140 = icmp slt i32 %sub1139, 0
  br i1 %cmp1140, label %cond.true.1142, label %cond.false.1151

cond.true.1142:                                   ; preds = %cond.false.1135
  %179 = load i64, i64* %ndrivers, align 8
  %conv1143 = trunc i64 %179 to i32
  %add1144 = add nsw i32 0, %conv1143
  %mul1145 = mul nsw i32 0, %add1144
  %add1146 = add nsw i32 %mul1145, 1
  %shl1147 = shl i32 %add1146, 30
  %sub1148 = sub nsw i32 %shl1147, 1
  %mul1149 = mul nsw i32 %sub1148, 2
  %add1150 = add nsw i32 %mul1149, 1
  br label %cond.end.1156

cond.false.1151:                                  ; preds = %cond.false.1135
  %180 = load i64, i64* %ndrivers, align 8
  %conv1152 = trunc i64 %180 to i32
  %add1153 = add nsw i32 0, %conv1152
  %mul1154 = mul nsw i32 0, %add1153
  %sub1155 = sub nsw i32 %mul1154, 1
  br label %cond.end.1156

cond.end.1156:                                    ; preds = %cond.false.1151, %cond.true.1142
  %cond1157 = phi i32 [ %add1150, %cond.true.1142 ], [ %sub1155, %cond.false.1151 ]
  %div1158 = sdiv i32 %cond1157, 8
  %181 = load i64, i64* %ndrivers, align 8
  %conv1159 = trunc i64 %181 to i32
  %cmp1160 = icmp slt i32 %div1158, %conv1159
  br i1 %cmp1160, label %cond.true.1179, label %lor.lhs.false.1162

lor.lhs.false.1162:                               ; preds = %cond.end.1156, %cond.end.1130, %cond.true.1094, %cond.end.1087, %cond.true.1056, %cond.end.1050
  %182 = load i64, i64* %ndrivers, align 8
  %conv1163 = trunc i64 %182 to i32
  %mul1164 = mul nsw i32 %conv1163, 8
  %mul1165 = mul nsw i32 0, %mul1164
  %sub1166 = sub nsw i32 %mul1165, 1
  %cmp1167 = icmp slt i32 %sub1166, 0
  br i1 %cmp1167, label %land.lhs.true.1169, label %lor.lhs.false.1174

land.lhs.true.1169:                               ; preds = %lor.lhs.false.1162
  %183 = load i64, i64* %ndrivers, align 8
  %conv1170 = trunc i64 %183 to i32
  %mul1171 = mul nsw i32 %conv1170, 8
  %cmp1172 = icmp slt i32 %mul1171, -2147483648
  br i1 %cmp1172, label %cond.true.1179, label %lor.lhs.false.1174

lor.lhs.false.1174:                               ; preds = %land.lhs.true.1169, %lor.lhs.false.1162
  %184 = load i64, i64* %ndrivers, align 8
  %conv1175 = trunc i64 %184 to i32
  %mul1176 = mul nsw i32 %conv1175, 8
  %cmp1177 = icmp slt i32 2147483647, %mul1176
  br i1 %cmp1177, label %cond.true.1179, label %cond.false.1195

cond.true.1179:                                   ; preds = %lor.lhs.false.1174, %land.lhs.true.1169, %cond.end.1156, %cond.end.1130, %cond.true.1094, %cond.end.1087, %cond.true.1056, %cond.end.1050, %land.lhs.true.1019
  %185 = load i64, i64* %ndrivers, align 8
  %conv1180 = trunc i64 %185 to i32
  %mul1181 = mul i32 %conv1180, 8
  %cmp1182 = icmp ule i32 %mul1181, 2147483647
  br i1 %cmp1182, label %cond.true.1184, label %cond.false.1187

cond.true.1184:                                   ; preds = %cond.true.1179
  %186 = load i64, i64* %ndrivers, align 8
  %conv1185 = trunc i64 %186 to i32
  %mul1186 = mul i32 %conv1185, 8
  br label %cond.end.1192

cond.false.1187:                                  ; preds = %cond.true.1179
  %187 = load i64, i64* %ndrivers, align 8
  %conv1188 = trunc i64 %187 to i32
  %mul1189 = mul i32 %conv1188, 8
  %sub1190 = sub i32 %mul1189, -2147483648
  %add1191 = add nsw i32 %sub1190, -2147483648
  br label %cond.end.1192

cond.end.1192:                                    ; preds = %cond.false.1187, %cond.true.1184
  %cond1193 = phi i32 [ %mul1186, %cond.true.1184 ], [ %add1191, %cond.false.1187 ]
  %conv1194 = sext i32 %cond1193 to i64
  store i64 %conv1194, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then.2190, label %lor.lhs.false.2187

cond.false.1195:                                  ; preds = %lor.lhs.false.1174
  %188 = load i64, i64* %ndrivers, align 8
  %conv1196 = trunc i64 %188 to i32
  %mul1197 = mul i32 %conv1196, 8
  %cmp1198 = icmp ule i32 %mul1197, 2147483647
  br i1 %cmp1198, label %cond.true.1200, label %cond.false.1203

cond.true.1200:                                   ; preds = %cond.false.1195
  %189 = load i64, i64* %ndrivers, align 8
  %conv1201 = trunc i64 %189 to i32
  %mul1202 = mul i32 %conv1201, 8
  br label %cond.end.1208

cond.false.1203:                                  ; preds = %cond.false.1195
  %190 = load i64, i64* %ndrivers, align 8
  %conv1204 = trunc i64 %190 to i32
  %mul1205 = mul i32 %conv1204, 8
  %sub1206 = sub i32 %mul1205, -2147483648
  %add1207 = add nsw i32 %sub1206, -2147483648
  br label %cond.end.1208

cond.end.1208:                                    ; preds = %cond.false.1203, %cond.true.1200
  %cond1209 = phi i32 [ %mul1202, %cond.true.1200 ], [ %add1207, %cond.false.1203 ]
  %conv1210 = sext i32 %cond1209 to i64
  store i64 %conv1210, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then.2190, label %lor.lhs.false.2187

cond.false.1211:                                  ; preds = %cond.true.984
  %191 = load i64, i64* %ndrivers, align 8
  %add1212 = add nsw i64 0, %191
  %mul1213 = mul nsw i64 0, %add1212
  %sub1214 = sub nsw i64 %mul1213, 1
  %cmp1215 = icmp slt i64 %sub1214, 0
  br i1 %cmp1215, label %cond.true.1217, label %cond.false.1234

cond.true.1217:                                   ; preds = %cond.false.1211
  %192 = load i64, i64* %ndrivers, align 8
  %add1218 = add nsw i64 0, %192
  %mul1219 = mul nsw i64 0, %add1218
  %add1220 = add nsw i64 %mul1219, 0
  %neg1221 = xor i64 %add1220, -1
  %cmp1222 = icmp eq i64 %neg1221, -1
  %conv1223 = zext i1 %cmp1222 to i32
  %sub1224 = sub nsw i32 0, %conv1223
  %conv1225 = sext i32 %sub1224 to i64
  %193 = load i64, i64* %ndrivers, align 8
  %add1226 = add nsw i64 0, %193
  %mul1227 = mul nsw i64 0, %add1226
  %add1228 = add nsw i64 %mul1227, 1
  %shl1229 = shl i64 %add1228, 62
  %sub1230 = sub nsw i64 %shl1229, 1
  %mul1231 = mul nsw i64 %sub1230, 2
  %add1232 = add nsw i64 %mul1231, 1
  %sub1233 = sub nsw i64 %conv1225, %add1232
  br label %cond.end.1238

cond.false.1234:                                  ; preds = %cond.false.1211
  %194 = load i64, i64* %ndrivers, align 8
  %add1235 = add nsw i64 0, %194
  %mul1236 = mul nsw i64 0, %add1235
  %add1237 = add nsw i64 %mul1236, 0
  br label %cond.end.1238

cond.end.1238:                                    ; preds = %cond.false.1234, %cond.true.1217
  %cond1239 = phi i64 [ %sub1233, %cond.true.1217 ], [ %add1237, %cond.false.1234 ]
  %cmp1240 = icmp eq i64 %cond1239, 0
  br i1 %cmp1240, label %land.lhs.true.1242, label %lor.lhs.false.1245

land.lhs.true.1242:                               ; preds = %cond.end.1238
  %195 = load i64, i64* %ndrivers, align 8
  %cmp1243 = icmp slt i64 %195, 0
  br i1 %cmp1243, label %cond.true.1380, label %lor.lhs.false.1245

lor.lhs.false.1245:                               ; preds = %land.lhs.true.1242, %cond.end.1238
  br i1 false, label %cond.true.1246, label %cond.false.1306

cond.true.1246:                                   ; preds = %lor.lhs.false.1245
  %196 = load i64, i64* %ndrivers, align 8
  %cmp1247 = icmp slt i64 %196, 0
  br i1 %cmp1247, label %cond.true.1249, label %cond.false.1272

cond.true.1249:                                   ; preds = %cond.true.1246
  %197 = load i64, i64* %ndrivers, align 8
  %198 = load i64, i64* %ndrivers, align 8
  %add1250 = add nsw i64 0, %198
  %mul1251 = mul nsw i64 0, %add1250
  %sub1252 = sub nsw i64 %mul1251, 1
  %cmp1253 = icmp slt i64 %sub1252, 0
  br i1 %cmp1253, label %cond.true.1255, label %cond.false.1263

cond.true.1255:                                   ; preds = %cond.true.1249
  %199 = load i64, i64* %ndrivers, align 8
  %add1256 = add nsw i64 0, %199
  %mul1257 = mul nsw i64 0, %add1256
  %add1258 = add nsw i64 %mul1257, 1
  %shl1259 = shl i64 %add1258, 62
  %sub1260 = sub nsw i64 %shl1259, 1
  %mul1261 = mul nsw i64 %sub1260, 2
  %add1262 = add nsw i64 %mul1261, 1
  br label %cond.end.1267

cond.false.1263:                                  ; preds = %cond.true.1249
  %200 = load i64, i64* %ndrivers, align 8
  %add1264 = add nsw i64 0, %200
  %mul1265 = mul nsw i64 0, %add1264
  %sub1266 = sub nsw i64 %mul1265, 1
  br label %cond.end.1267

cond.end.1267:                                    ; preds = %cond.false.1263, %cond.true.1255
  %cond1268 = phi i64 [ %add1262, %cond.true.1255 ], [ %sub1266, %cond.false.1263 ]
  %div1269 = sdiv i64 %cond1268, 8
  %cmp1270 = icmp slt i64 %197, %div1269
  br i1 %cmp1270, label %cond.true.1380, label %lor.lhs.false.1366

cond.false.1272:                                  ; preds = %cond.true.1246
  br i1 false, label %cond.true.1273, label %cond.false.1274

cond.true.1273:                                   ; preds = %cond.false.1272
  br i1 false, label %cond.true.1380, label %lor.lhs.false.1366

cond.false.1274:                                  ; preds = %cond.false.1272
  %201 = load i64, i64* %ndrivers, align 8
  %add1275 = add nsw i64 0, %201
  %mul1276 = mul nsw i64 0, %add1275
  %sub1277 = sub nsw i64 %mul1276, 1
  %cmp1278 = icmp slt i64 %sub1277, 0
  br i1 %cmp1278, label %cond.true.1280, label %cond.false.1297

cond.true.1280:                                   ; preds = %cond.false.1274
  %202 = load i64, i64* %ndrivers, align 8
  %add1281 = add nsw i64 0, %202
  %mul1282 = mul nsw i64 0, %add1281
  %add1283 = add nsw i64 %mul1282, 0
  %neg1284 = xor i64 %add1283, -1
  %cmp1285 = icmp eq i64 %neg1284, -1
  %conv1286 = zext i1 %cmp1285 to i32
  %sub1287 = sub nsw i32 0, %conv1286
  %conv1288 = sext i32 %sub1287 to i64
  %203 = load i64, i64* %ndrivers, align 8
  %add1289 = add nsw i64 0, %203
  %mul1290 = mul nsw i64 0, %add1289
  %add1291 = add nsw i64 %mul1290, 1
  %shl1292 = shl i64 %add1291, 62
  %sub1293 = sub nsw i64 %shl1292, 1
  %mul1294 = mul nsw i64 %sub1293, 2
  %add1295 = add nsw i64 %mul1294, 1
  %sub1296 = sub nsw i64 %conv1288, %add1295
  br label %cond.end.1301

cond.false.1297:                                  ; preds = %cond.false.1274
  %204 = load i64, i64* %ndrivers, align 8
  %add1298 = add nsw i64 0, %204
  %mul1299 = mul nsw i64 0, %add1298
  %add1300 = add nsw i64 %mul1299, 0
  br label %cond.end.1301

cond.end.1301:                                    ; preds = %cond.false.1297, %cond.true.1280
  %cond1302 = phi i64 [ %sub1296, %cond.true.1280 ], [ %add1300, %cond.false.1297 ]
  %div1303 = sdiv i64 %cond1302, 8
  %205 = load i64, i64* %ndrivers, align 8
  %cmp1304 = icmp slt i64 %div1303, %205
  br i1 %cmp1304, label %cond.true.1380, label %lor.lhs.false.1366

cond.false.1306:                                  ; preds = %lor.lhs.false.1245
  br i1 false, label %cond.true.1307, label %cond.false.1308

cond.true.1307:                                   ; preds = %cond.false.1306
  br i1 false, label %cond.true.1380, label %lor.lhs.false.1366

cond.false.1308:                                  ; preds = %cond.false.1306
  %206 = load i64, i64* %ndrivers, align 8
  %cmp1309 = icmp slt i64 %206, 0
  br i1 %cmp1309, label %cond.true.1311, label %cond.false.1343

cond.true.1311:                                   ; preds = %cond.false.1308
  %207 = load i64, i64* %ndrivers, align 8
  %208 = load i64, i64* %ndrivers, align 8
  %add1312 = add nsw i64 0, %208
  %mul1313 = mul nsw i64 0, %add1312
  %sub1314 = sub nsw i64 %mul1313, 1
  %cmp1315 = icmp slt i64 %sub1314, 0
  br i1 %cmp1315, label %cond.true.1317, label %cond.false.1334

cond.true.1317:                                   ; preds = %cond.true.1311
  %209 = load i64, i64* %ndrivers, align 8
  %add1318 = add nsw i64 0, %209
  %mul1319 = mul nsw i64 0, %add1318
  %add1320 = add nsw i64 %mul1319, 0
  %neg1321 = xor i64 %add1320, -1
  %cmp1322 = icmp eq i64 %neg1321, -1
  %conv1323 = zext i1 %cmp1322 to i32
  %sub1324 = sub nsw i32 0, %conv1323
  %conv1325 = sext i32 %sub1324 to i64
  %210 = load i64, i64* %ndrivers, align 8
  %add1326 = add nsw i64 0, %210
  %mul1327 = mul nsw i64 0, %add1326
  %add1328 = add nsw i64 %mul1327, 1
  %shl1329 = shl i64 %add1328, 62
  %sub1330 = sub nsw i64 %shl1329, 1
  %mul1331 = mul nsw i64 %sub1330, 2
  %add1332 = add nsw i64 %mul1331, 1
  %sub1333 = sub nsw i64 %conv1325, %add1332
  br label %cond.end.1338

cond.false.1334:                                  ; preds = %cond.true.1311
  %211 = load i64, i64* %ndrivers, align 8
  %add1335 = add nsw i64 0, %211
  %mul1336 = mul nsw i64 0, %add1335
  %add1337 = add nsw i64 %mul1336, 0
  br label %cond.end.1338

cond.end.1338:                                    ; preds = %cond.false.1334, %cond.true.1317
  %cond1339 = phi i64 [ %sub1333, %cond.true.1317 ], [ %add1337, %cond.false.1334 ]
  %div1340 = sdiv i64 %cond1339, 8
  %cmp1341 = icmp slt i64 %207, %div1340
  br i1 %cmp1341, label %cond.true.1380, label %lor.lhs.false.1366

cond.false.1343:                                  ; preds = %cond.false.1308
  %212 = load i64, i64* %ndrivers, align 8
  %add1344 = add nsw i64 0, %212
  %mul1345 = mul nsw i64 0, %add1344
  %sub1346 = sub nsw i64 %mul1345, 1
  %cmp1347 = icmp slt i64 %sub1346, 0
  br i1 %cmp1347, label %cond.true.1349, label %cond.false.1357

cond.true.1349:                                   ; preds = %cond.false.1343
  %213 = load i64, i64* %ndrivers, align 8
  %add1350 = add nsw i64 0, %213
  %mul1351 = mul nsw i64 0, %add1350
  %add1352 = add nsw i64 %mul1351, 1
  %shl1353 = shl i64 %add1352, 62
  %sub1354 = sub nsw i64 %shl1353, 1
  %mul1355 = mul nsw i64 %sub1354, 2
  %add1356 = add nsw i64 %mul1355, 1
  br label %cond.end.1361

cond.false.1357:                                  ; preds = %cond.false.1343
  %214 = load i64, i64* %ndrivers, align 8
  %add1358 = add nsw i64 0, %214
  %mul1359 = mul nsw i64 0, %add1358
  %sub1360 = sub nsw i64 %mul1359, 1
  br label %cond.end.1361

cond.end.1361:                                    ; preds = %cond.false.1357, %cond.true.1349
  %cond1362 = phi i64 [ %add1356, %cond.true.1349 ], [ %sub1360, %cond.false.1357 ]
  %div1363 = sdiv i64 %cond1362, 8
  %215 = load i64, i64* %ndrivers, align 8
  %cmp1364 = icmp slt i64 %div1363, %215
  br i1 %cmp1364, label %cond.true.1380, label %lor.lhs.false.1366

lor.lhs.false.1366:                               ; preds = %cond.end.1361, %cond.end.1338, %cond.true.1307, %cond.end.1301, %cond.true.1273, %cond.end.1267
  %216 = load i64, i64* %ndrivers, align 8
  %mul1367 = mul nsw i64 %216, 8
  %mul1368 = mul nsw i64 0, %mul1367
  %sub1369 = sub nsw i64 %mul1368, 1
  %cmp1370 = icmp slt i64 %sub1369, 0
  br i1 %cmp1370, label %land.lhs.true.1372, label %lor.lhs.false.1376

land.lhs.true.1372:                               ; preds = %lor.lhs.false.1366
  %217 = load i64, i64* %ndrivers, align 8
  %mul1373 = mul nsw i64 %217, 8
  %cmp1374 = icmp slt i64 %mul1373, -2147483648
  br i1 %cmp1374, label %cond.true.1380, label %lor.lhs.false.1376

lor.lhs.false.1376:                               ; preds = %land.lhs.true.1372, %lor.lhs.false.1366
  %218 = load i64, i64* %ndrivers, align 8
  %mul1377 = mul nsw i64 %218, 8
  %cmp1378 = icmp slt i64 2147483647, %mul1377
  br i1 %cmp1378, label %cond.true.1380, label %cond.false.1396

cond.true.1380:                                   ; preds = %lor.lhs.false.1376, %land.lhs.true.1372, %cond.end.1361, %cond.end.1338, %cond.true.1307, %cond.end.1301, %cond.true.1273, %cond.end.1267, %land.lhs.true.1242
  %219 = load i64, i64* %ndrivers, align 8
  %conv1381 = trunc i64 %219 to i32
  %mul1382 = mul i32 %conv1381, 8
  %cmp1383 = icmp ule i32 %mul1382, 2147483647
  br i1 %cmp1383, label %cond.true.1385, label %cond.false.1388

cond.true.1385:                                   ; preds = %cond.true.1380
  %220 = load i64, i64* %ndrivers, align 8
  %conv1386 = trunc i64 %220 to i32
  %mul1387 = mul i32 %conv1386, 8
  br label %cond.end.1393

cond.false.1388:                                  ; preds = %cond.true.1380
  %221 = load i64, i64* %ndrivers, align 8
  %conv1389 = trunc i64 %221 to i32
  %mul1390 = mul i32 %conv1389, 8
  %sub1391 = sub i32 %mul1390, -2147483648
  %add1392 = add nsw i32 %sub1391, -2147483648
  br label %cond.end.1393

cond.end.1393:                                    ; preds = %cond.false.1388, %cond.true.1385
  %cond1394 = phi i32 [ %mul1387, %cond.true.1385 ], [ %add1392, %cond.false.1388 ]
  %conv1395 = sext i32 %cond1394 to i64
  store i64 %conv1395, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then.2190, label %lor.lhs.false.2187

cond.false.1396:                                  ; preds = %lor.lhs.false.1376
  %222 = load i64, i64* %ndrivers, align 8
  %conv1397 = trunc i64 %222 to i32
  %mul1398 = mul i32 %conv1397, 8
  %cmp1399 = icmp ule i32 %mul1398, 2147483647
  br i1 %cmp1399, label %cond.true.1401, label %cond.false.1404

cond.true.1401:                                   ; preds = %cond.false.1396
  %223 = load i64, i64* %ndrivers, align 8
  %conv1402 = trunc i64 %223 to i32
  %mul1403 = mul i32 %conv1402, 8
  br label %cond.end.1409

cond.false.1404:                                  ; preds = %cond.false.1396
  %224 = load i64, i64* %ndrivers, align 8
  %conv1405 = trunc i64 %224 to i32
  %mul1406 = mul i32 %conv1405, 8
  %sub1407 = sub i32 %mul1406, -2147483648
  %add1408 = add nsw i32 %sub1407, -2147483648
  br label %cond.end.1409

cond.end.1409:                                    ; preds = %cond.false.1404, %cond.true.1401
  %cond1410 = phi i32 [ %mul1403, %cond.true.1401 ], [ %add1408, %cond.false.1404 ]
  %conv1411 = sext i32 %cond1410 to i64
  store i64 %conv1411, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then.2190, label %lor.lhs.false.2187

cond.false.1412:                                  ; preds = %cond.false.983
  br i1 true, label %cond.true.1413, label %cond.false.1800

cond.true.1413:                                   ; preds = %cond.false.1412
  br i1 false, label %cond.true.1414, label %cond.false.1607

cond.true.1414:                                   ; preds = %cond.true.1413
  %225 = load i64, i64* %ndrivers, align 8
  %add1415 = add nsw i64 0, %225
  %mul1416 = mul nsw i64 0, %add1415
  %sub1417 = sub nsw i64 %mul1416, 1
  %cmp1418 = icmp slt i64 %sub1417, 0
  br i1 %cmp1418, label %cond.true.1420, label %cond.false.1437

cond.true.1420:                                   ; preds = %cond.true.1414
  %226 = load i64, i64* %ndrivers, align 8
  %add1421 = add nsw i64 0, %226
  %mul1422 = mul nsw i64 0, %add1421
  %add1423 = add nsw i64 %mul1422, 0
  %neg1424 = xor i64 %add1423, -1
  %cmp1425 = icmp eq i64 %neg1424, -1
  %conv1426 = zext i1 %cmp1425 to i32
  %sub1427 = sub nsw i32 0, %conv1426
  %conv1428 = sext i32 %sub1427 to i64
  %227 = load i64, i64* %ndrivers, align 8
  %add1429 = add nsw i64 0, %227
  %mul1430 = mul nsw i64 0, %add1429
  %add1431 = add nsw i64 %mul1430, 1
  %shl1432 = shl i64 %add1431, 62
  %sub1433 = sub nsw i64 %shl1432, 1
  %mul1434 = mul nsw i64 %sub1433, 2
  %add1435 = add nsw i64 %mul1434, 1
  %sub1436 = sub nsw i64 %conv1428, %add1435
  br label %cond.end.1441

cond.false.1437:                                  ; preds = %cond.true.1414
  %228 = load i64, i64* %ndrivers, align 8
  %add1438 = add nsw i64 0, %228
  %mul1439 = mul nsw i64 0, %add1438
  %add1440 = add nsw i64 %mul1439, 0
  br label %cond.end.1441

cond.end.1441:                                    ; preds = %cond.false.1437, %cond.true.1420
  %cond1442 = phi i64 [ %sub1436, %cond.true.1420 ], [ %add1440, %cond.false.1437 ]
  %cmp1443 = icmp eq i64 %cond1442, 0
  br i1 %cmp1443, label %land.lhs.true.1445, label %lor.lhs.false.1448

land.lhs.true.1445:                               ; preds = %cond.end.1441
  %229 = load i64, i64* %ndrivers, align 8
  %cmp1446 = icmp slt i64 %229, 0
  br i1 %cmp1446, label %cond.true.1583, label %lor.lhs.false.1448

lor.lhs.false.1448:                               ; preds = %land.lhs.true.1445, %cond.end.1441
  br i1 false, label %cond.true.1449, label %cond.false.1509

cond.true.1449:                                   ; preds = %lor.lhs.false.1448
  %230 = load i64, i64* %ndrivers, align 8
  %cmp1450 = icmp slt i64 %230, 0
  br i1 %cmp1450, label %cond.true.1452, label %cond.false.1475

cond.true.1452:                                   ; preds = %cond.true.1449
  %231 = load i64, i64* %ndrivers, align 8
  %232 = load i64, i64* %ndrivers, align 8
  %add1453 = add nsw i64 0, %232
  %mul1454 = mul nsw i64 0, %add1453
  %sub1455 = sub nsw i64 %mul1454, 1
  %cmp1456 = icmp slt i64 %sub1455, 0
  br i1 %cmp1456, label %cond.true.1458, label %cond.false.1466

cond.true.1458:                                   ; preds = %cond.true.1452
  %233 = load i64, i64* %ndrivers, align 8
  %add1459 = add nsw i64 0, %233
  %mul1460 = mul nsw i64 0, %add1459
  %add1461 = add nsw i64 %mul1460, 1
  %shl1462 = shl i64 %add1461, 62
  %sub1463 = sub nsw i64 %shl1462, 1
  %mul1464 = mul nsw i64 %sub1463, 2
  %add1465 = add nsw i64 %mul1464, 1
  br label %cond.end.1470

cond.false.1466:                                  ; preds = %cond.true.1452
  %234 = load i64, i64* %ndrivers, align 8
  %add1467 = add nsw i64 0, %234
  %mul1468 = mul nsw i64 0, %add1467
  %sub1469 = sub nsw i64 %mul1468, 1
  br label %cond.end.1470

cond.end.1470:                                    ; preds = %cond.false.1466, %cond.true.1458
  %cond1471 = phi i64 [ %add1465, %cond.true.1458 ], [ %sub1469, %cond.false.1466 ]
  %div1472 = sdiv i64 %cond1471, 8
  %cmp1473 = icmp slt i64 %231, %div1472
  br i1 %cmp1473, label %cond.true.1583, label %lor.lhs.false.1569

cond.false.1475:                                  ; preds = %cond.true.1449
  br i1 false, label %cond.true.1476, label %cond.false.1477

cond.true.1476:                                   ; preds = %cond.false.1475
  br i1 false, label %cond.true.1583, label %lor.lhs.false.1569

cond.false.1477:                                  ; preds = %cond.false.1475
  %235 = load i64, i64* %ndrivers, align 8
  %add1478 = add nsw i64 0, %235
  %mul1479 = mul nsw i64 0, %add1478
  %sub1480 = sub nsw i64 %mul1479, 1
  %cmp1481 = icmp slt i64 %sub1480, 0
  br i1 %cmp1481, label %cond.true.1483, label %cond.false.1500

cond.true.1483:                                   ; preds = %cond.false.1477
  %236 = load i64, i64* %ndrivers, align 8
  %add1484 = add nsw i64 0, %236
  %mul1485 = mul nsw i64 0, %add1484
  %add1486 = add nsw i64 %mul1485, 0
  %neg1487 = xor i64 %add1486, -1
  %cmp1488 = icmp eq i64 %neg1487, -1
  %conv1489 = zext i1 %cmp1488 to i32
  %sub1490 = sub nsw i32 0, %conv1489
  %conv1491 = sext i32 %sub1490 to i64
  %237 = load i64, i64* %ndrivers, align 8
  %add1492 = add nsw i64 0, %237
  %mul1493 = mul nsw i64 0, %add1492
  %add1494 = add nsw i64 %mul1493, 1
  %shl1495 = shl i64 %add1494, 62
  %sub1496 = sub nsw i64 %shl1495, 1
  %mul1497 = mul nsw i64 %sub1496, 2
  %add1498 = add nsw i64 %mul1497, 1
  %sub1499 = sub nsw i64 %conv1491, %add1498
  br label %cond.end.1504

cond.false.1500:                                  ; preds = %cond.false.1477
  %238 = load i64, i64* %ndrivers, align 8
  %add1501 = add nsw i64 0, %238
  %mul1502 = mul nsw i64 0, %add1501
  %add1503 = add nsw i64 %mul1502, 0
  br label %cond.end.1504

cond.end.1504:                                    ; preds = %cond.false.1500, %cond.true.1483
  %cond1505 = phi i64 [ %sub1499, %cond.true.1483 ], [ %add1503, %cond.false.1500 ]
  %div1506 = sdiv i64 %cond1505, 8
  %239 = load i64, i64* %ndrivers, align 8
  %cmp1507 = icmp slt i64 %div1506, %239
  br i1 %cmp1507, label %cond.true.1583, label %lor.lhs.false.1569

cond.false.1509:                                  ; preds = %lor.lhs.false.1448
  br i1 false, label %cond.true.1510, label %cond.false.1511

cond.true.1510:                                   ; preds = %cond.false.1509
  br i1 false, label %cond.true.1583, label %lor.lhs.false.1569

cond.false.1511:                                  ; preds = %cond.false.1509
  %240 = load i64, i64* %ndrivers, align 8
  %cmp1512 = icmp slt i64 %240, 0
  br i1 %cmp1512, label %cond.true.1514, label %cond.false.1546

cond.true.1514:                                   ; preds = %cond.false.1511
  %241 = load i64, i64* %ndrivers, align 8
  %242 = load i64, i64* %ndrivers, align 8
  %add1515 = add nsw i64 0, %242
  %mul1516 = mul nsw i64 0, %add1515
  %sub1517 = sub nsw i64 %mul1516, 1
  %cmp1518 = icmp slt i64 %sub1517, 0
  br i1 %cmp1518, label %cond.true.1520, label %cond.false.1537

cond.true.1520:                                   ; preds = %cond.true.1514
  %243 = load i64, i64* %ndrivers, align 8
  %add1521 = add nsw i64 0, %243
  %mul1522 = mul nsw i64 0, %add1521
  %add1523 = add nsw i64 %mul1522, 0
  %neg1524 = xor i64 %add1523, -1
  %cmp1525 = icmp eq i64 %neg1524, -1
  %conv1526 = zext i1 %cmp1525 to i32
  %sub1527 = sub nsw i32 0, %conv1526
  %conv1528 = sext i32 %sub1527 to i64
  %244 = load i64, i64* %ndrivers, align 8
  %add1529 = add nsw i64 0, %244
  %mul1530 = mul nsw i64 0, %add1529
  %add1531 = add nsw i64 %mul1530, 1
  %shl1532 = shl i64 %add1531, 62
  %sub1533 = sub nsw i64 %shl1532, 1
  %mul1534 = mul nsw i64 %sub1533, 2
  %add1535 = add nsw i64 %mul1534, 1
  %sub1536 = sub nsw i64 %conv1528, %add1535
  br label %cond.end.1541

cond.false.1537:                                  ; preds = %cond.true.1514
  %245 = load i64, i64* %ndrivers, align 8
  %add1538 = add nsw i64 0, %245
  %mul1539 = mul nsw i64 0, %add1538
  %add1540 = add nsw i64 %mul1539, 0
  br label %cond.end.1541

cond.end.1541:                                    ; preds = %cond.false.1537, %cond.true.1520
  %cond1542 = phi i64 [ %sub1536, %cond.true.1520 ], [ %add1540, %cond.false.1537 ]
  %div1543 = sdiv i64 %cond1542, 8
  %cmp1544 = icmp slt i64 %241, %div1543
  br i1 %cmp1544, label %cond.true.1583, label %lor.lhs.false.1569

cond.false.1546:                                  ; preds = %cond.false.1511
  %246 = load i64, i64* %ndrivers, align 8
  %add1547 = add nsw i64 0, %246
  %mul1548 = mul nsw i64 0, %add1547
  %sub1549 = sub nsw i64 %mul1548, 1
  %cmp1550 = icmp slt i64 %sub1549, 0
  br i1 %cmp1550, label %cond.true.1552, label %cond.false.1560

cond.true.1552:                                   ; preds = %cond.false.1546
  %247 = load i64, i64* %ndrivers, align 8
  %add1553 = add nsw i64 0, %247
  %mul1554 = mul nsw i64 0, %add1553
  %add1555 = add nsw i64 %mul1554, 1
  %shl1556 = shl i64 %add1555, 62
  %sub1557 = sub nsw i64 %shl1556, 1
  %mul1558 = mul nsw i64 %sub1557, 2
  %add1559 = add nsw i64 %mul1558, 1
  br label %cond.end.1564

cond.false.1560:                                  ; preds = %cond.false.1546
  %248 = load i64, i64* %ndrivers, align 8
  %add1561 = add nsw i64 0, %248
  %mul1562 = mul nsw i64 0, %add1561
  %sub1563 = sub nsw i64 %mul1562, 1
  br label %cond.end.1564

cond.end.1564:                                    ; preds = %cond.false.1560, %cond.true.1552
  %cond1565 = phi i64 [ %add1559, %cond.true.1552 ], [ %sub1563, %cond.false.1560 ]
  %div1566 = sdiv i64 %cond1565, 8
  %249 = load i64, i64* %ndrivers, align 8
  %cmp1567 = icmp slt i64 %div1566, %249
  br i1 %cmp1567, label %cond.true.1583, label %lor.lhs.false.1569

lor.lhs.false.1569:                               ; preds = %cond.end.1564, %cond.end.1541, %cond.true.1510, %cond.end.1504, %cond.true.1476, %cond.end.1470
  %250 = load i64, i64* %ndrivers, align 8
  %mul1570 = mul nsw i64 %250, 8
  %mul1571 = mul nsw i64 0, %mul1570
  %sub1572 = sub nsw i64 %mul1571, 1
  %cmp1573 = icmp slt i64 %sub1572, 0
  br i1 %cmp1573, label %land.lhs.true.1575, label %lor.lhs.false.1579

land.lhs.true.1575:                               ; preds = %lor.lhs.false.1569
  %251 = load i64, i64* %ndrivers, align 8
  %mul1576 = mul nsw i64 %251, 8
  %cmp1577 = icmp slt i64 %mul1576, -9223372036854775808
  br i1 %cmp1577, label %cond.true.1583, label %lor.lhs.false.1579

lor.lhs.false.1579:                               ; preds = %land.lhs.true.1575, %lor.lhs.false.1569
  %252 = load i64, i64* %ndrivers, align 8
  %mul1580 = mul nsw i64 %252, 8
  %cmp1581 = icmp slt i64 9223372036854775807, %mul1580
  br i1 %cmp1581, label %cond.true.1583, label %cond.false.1595

cond.true.1583:                                   ; preds = %lor.lhs.false.1579, %land.lhs.true.1575, %cond.end.1564, %cond.end.1541, %cond.true.1510, %cond.end.1504, %cond.true.1476, %cond.end.1470, %land.lhs.true.1445
  %253 = load i64, i64* %ndrivers, align 8
  %mul1584 = mul i64 %253, 8
  %cmp1585 = icmp ule i64 %mul1584, 9223372036854775807
  br i1 %cmp1585, label %cond.true.1587, label %cond.false.1589

cond.true.1587:                                   ; preds = %cond.true.1583
  %254 = load i64, i64* %ndrivers, align 8
  %mul1588 = mul i64 %254, 8
  br label %cond.end.1593

cond.false.1589:                                  ; preds = %cond.true.1583
  %255 = load i64, i64* %ndrivers, align 8
  %mul1590 = mul i64 %255, 8
  %sub1591 = sub i64 %mul1590, -9223372036854775808
  %add1592 = add nsw i64 %sub1591, -9223372036854775808
  br label %cond.end.1593

cond.end.1593:                                    ; preds = %cond.false.1589, %cond.true.1587
  %cond1594 = phi i64 [ %mul1588, %cond.true.1587 ], [ %add1592, %cond.false.1589 ]
  store i64 %cond1594, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then.2190, label %lor.lhs.false.2187

cond.false.1595:                                  ; preds = %lor.lhs.false.1579
  %256 = load i64, i64* %ndrivers, align 8
  %mul1596 = mul i64 %256, 8
  %cmp1597 = icmp ule i64 %mul1596, 9223372036854775807
  br i1 %cmp1597, label %cond.true.1599, label %cond.false.1601

cond.true.1599:                                   ; preds = %cond.false.1595
  %257 = load i64, i64* %ndrivers, align 8
  %mul1600 = mul i64 %257, 8
  br label %cond.end.1605

cond.false.1601:                                  ; preds = %cond.false.1595
  %258 = load i64, i64* %ndrivers, align 8
  %mul1602 = mul i64 %258, 8
  %sub1603 = sub i64 %mul1602, -9223372036854775808
  %add1604 = add nsw i64 %sub1603, -9223372036854775808
  br label %cond.end.1605

cond.end.1605:                                    ; preds = %cond.false.1601, %cond.true.1599
  %cond1606 = phi i64 [ %mul1600, %cond.true.1599 ], [ %add1604, %cond.false.1601 ]
  store i64 %cond1606, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then.2190, label %lor.lhs.false.2187

cond.false.1607:                                  ; preds = %cond.true.1413
  %259 = load i64, i64* %ndrivers, align 8
  %add1608 = add nsw i64 0, %259
  %mul1609 = mul nsw i64 0, %add1608
  %sub1610 = sub nsw i64 %mul1609, 1
  %cmp1611 = icmp slt i64 %sub1610, 0
  br i1 %cmp1611, label %cond.true.1613, label %cond.false.1630

cond.true.1613:                                   ; preds = %cond.false.1607
  %260 = load i64, i64* %ndrivers, align 8
  %add1614 = add nsw i64 0, %260
  %mul1615 = mul nsw i64 0, %add1614
  %add1616 = add nsw i64 %mul1615, 0
  %neg1617 = xor i64 %add1616, -1
  %cmp1618 = icmp eq i64 %neg1617, -1
  %conv1619 = zext i1 %cmp1618 to i32
  %sub1620 = sub nsw i32 0, %conv1619
  %conv1621 = sext i32 %sub1620 to i64
  %261 = load i64, i64* %ndrivers, align 8
  %add1622 = add nsw i64 0, %261
  %mul1623 = mul nsw i64 0, %add1622
  %add1624 = add nsw i64 %mul1623, 1
  %shl1625 = shl i64 %add1624, 62
  %sub1626 = sub nsw i64 %shl1625, 1
  %mul1627 = mul nsw i64 %sub1626, 2
  %add1628 = add nsw i64 %mul1627, 1
  %sub1629 = sub nsw i64 %conv1621, %add1628
  br label %cond.end.1634

cond.false.1630:                                  ; preds = %cond.false.1607
  %262 = load i64, i64* %ndrivers, align 8
  %add1631 = add nsw i64 0, %262
  %mul1632 = mul nsw i64 0, %add1631
  %add1633 = add nsw i64 %mul1632, 0
  br label %cond.end.1634

cond.end.1634:                                    ; preds = %cond.false.1630, %cond.true.1613
  %cond1635 = phi i64 [ %sub1629, %cond.true.1613 ], [ %add1633, %cond.false.1630 ]
  %cmp1636 = icmp eq i64 %cond1635, 0
  br i1 %cmp1636, label %land.lhs.true.1638, label %lor.lhs.false.1641

land.lhs.true.1638:                               ; preds = %cond.end.1634
  %263 = load i64, i64* %ndrivers, align 8
  %cmp1639 = icmp slt i64 %263, 0
  br i1 %cmp1639, label %cond.true.1776, label %lor.lhs.false.1641

lor.lhs.false.1641:                               ; preds = %land.lhs.true.1638, %cond.end.1634
  br i1 false, label %cond.true.1642, label %cond.false.1702

cond.true.1642:                                   ; preds = %lor.lhs.false.1641
  %264 = load i64, i64* %ndrivers, align 8
  %cmp1643 = icmp slt i64 %264, 0
  br i1 %cmp1643, label %cond.true.1645, label %cond.false.1668

cond.true.1645:                                   ; preds = %cond.true.1642
  %265 = load i64, i64* %ndrivers, align 8
  %266 = load i64, i64* %ndrivers, align 8
  %add1646 = add nsw i64 0, %266
  %mul1647 = mul nsw i64 0, %add1646
  %sub1648 = sub nsw i64 %mul1647, 1
  %cmp1649 = icmp slt i64 %sub1648, 0
  br i1 %cmp1649, label %cond.true.1651, label %cond.false.1659

cond.true.1651:                                   ; preds = %cond.true.1645
  %267 = load i64, i64* %ndrivers, align 8
  %add1652 = add nsw i64 0, %267
  %mul1653 = mul nsw i64 0, %add1652
  %add1654 = add nsw i64 %mul1653, 1
  %shl1655 = shl i64 %add1654, 62
  %sub1656 = sub nsw i64 %shl1655, 1
  %mul1657 = mul nsw i64 %sub1656, 2
  %add1658 = add nsw i64 %mul1657, 1
  br label %cond.end.1663

cond.false.1659:                                  ; preds = %cond.true.1645
  %268 = load i64, i64* %ndrivers, align 8
  %add1660 = add nsw i64 0, %268
  %mul1661 = mul nsw i64 0, %add1660
  %sub1662 = sub nsw i64 %mul1661, 1
  br label %cond.end.1663

cond.end.1663:                                    ; preds = %cond.false.1659, %cond.true.1651
  %cond1664 = phi i64 [ %add1658, %cond.true.1651 ], [ %sub1662, %cond.false.1659 ]
  %div1665 = sdiv i64 %cond1664, 8
  %cmp1666 = icmp slt i64 %265, %div1665
  br i1 %cmp1666, label %cond.true.1776, label %lor.lhs.false.1762

cond.false.1668:                                  ; preds = %cond.true.1642
  br i1 false, label %cond.true.1669, label %cond.false.1670

cond.true.1669:                                   ; preds = %cond.false.1668
  br i1 false, label %cond.true.1776, label %lor.lhs.false.1762

cond.false.1670:                                  ; preds = %cond.false.1668
  %269 = load i64, i64* %ndrivers, align 8
  %add1671 = add nsw i64 0, %269
  %mul1672 = mul nsw i64 0, %add1671
  %sub1673 = sub nsw i64 %mul1672, 1
  %cmp1674 = icmp slt i64 %sub1673, 0
  br i1 %cmp1674, label %cond.true.1676, label %cond.false.1693

cond.true.1676:                                   ; preds = %cond.false.1670
  %270 = load i64, i64* %ndrivers, align 8
  %add1677 = add nsw i64 0, %270
  %mul1678 = mul nsw i64 0, %add1677
  %add1679 = add nsw i64 %mul1678, 0
  %neg1680 = xor i64 %add1679, -1
  %cmp1681 = icmp eq i64 %neg1680, -1
  %conv1682 = zext i1 %cmp1681 to i32
  %sub1683 = sub nsw i32 0, %conv1682
  %conv1684 = sext i32 %sub1683 to i64
  %271 = load i64, i64* %ndrivers, align 8
  %add1685 = add nsw i64 0, %271
  %mul1686 = mul nsw i64 0, %add1685
  %add1687 = add nsw i64 %mul1686, 1
  %shl1688 = shl i64 %add1687, 62
  %sub1689 = sub nsw i64 %shl1688, 1
  %mul1690 = mul nsw i64 %sub1689, 2
  %add1691 = add nsw i64 %mul1690, 1
  %sub1692 = sub nsw i64 %conv1684, %add1691
  br label %cond.end.1697

cond.false.1693:                                  ; preds = %cond.false.1670
  %272 = load i64, i64* %ndrivers, align 8
  %add1694 = add nsw i64 0, %272
  %mul1695 = mul nsw i64 0, %add1694
  %add1696 = add nsw i64 %mul1695, 0
  br label %cond.end.1697

cond.end.1697:                                    ; preds = %cond.false.1693, %cond.true.1676
  %cond1698 = phi i64 [ %sub1692, %cond.true.1676 ], [ %add1696, %cond.false.1693 ]
  %div1699 = sdiv i64 %cond1698, 8
  %273 = load i64, i64* %ndrivers, align 8
  %cmp1700 = icmp slt i64 %div1699, %273
  br i1 %cmp1700, label %cond.true.1776, label %lor.lhs.false.1762

cond.false.1702:                                  ; preds = %lor.lhs.false.1641
  br i1 false, label %cond.true.1703, label %cond.false.1704

cond.true.1703:                                   ; preds = %cond.false.1702
  br i1 false, label %cond.true.1776, label %lor.lhs.false.1762

cond.false.1704:                                  ; preds = %cond.false.1702
  %274 = load i64, i64* %ndrivers, align 8
  %cmp1705 = icmp slt i64 %274, 0
  br i1 %cmp1705, label %cond.true.1707, label %cond.false.1739

cond.true.1707:                                   ; preds = %cond.false.1704
  %275 = load i64, i64* %ndrivers, align 8
  %276 = load i64, i64* %ndrivers, align 8
  %add1708 = add nsw i64 0, %276
  %mul1709 = mul nsw i64 0, %add1708
  %sub1710 = sub nsw i64 %mul1709, 1
  %cmp1711 = icmp slt i64 %sub1710, 0
  br i1 %cmp1711, label %cond.true.1713, label %cond.false.1730

cond.true.1713:                                   ; preds = %cond.true.1707
  %277 = load i64, i64* %ndrivers, align 8
  %add1714 = add nsw i64 0, %277
  %mul1715 = mul nsw i64 0, %add1714
  %add1716 = add nsw i64 %mul1715, 0
  %neg1717 = xor i64 %add1716, -1
  %cmp1718 = icmp eq i64 %neg1717, -1
  %conv1719 = zext i1 %cmp1718 to i32
  %sub1720 = sub nsw i32 0, %conv1719
  %conv1721 = sext i32 %sub1720 to i64
  %278 = load i64, i64* %ndrivers, align 8
  %add1722 = add nsw i64 0, %278
  %mul1723 = mul nsw i64 0, %add1722
  %add1724 = add nsw i64 %mul1723, 1
  %shl1725 = shl i64 %add1724, 62
  %sub1726 = sub nsw i64 %shl1725, 1
  %mul1727 = mul nsw i64 %sub1726, 2
  %add1728 = add nsw i64 %mul1727, 1
  %sub1729 = sub nsw i64 %conv1721, %add1728
  br label %cond.end.1734

cond.false.1730:                                  ; preds = %cond.true.1707
  %279 = load i64, i64* %ndrivers, align 8
  %add1731 = add nsw i64 0, %279
  %mul1732 = mul nsw i64 0, %add1731
  %add1733 = add nsw i64 %mul1732, 0
  br label %cond.end.1734

cond.end.1734:                                    ; preds = %cond.false.1730, %cond.true.1713
  %cond1735 = phi i64 [ %sub1729, %cond.true.1713 ], [ %add1733, %cond.false.1730 ]
  %div1736 = sdiv i64 %cond1735, 8
  %cmp1737 = icmp slt i64 %275, %div1736
  br i1 %cmp1737, label %cond.true.1776, label %lor.lhs.false.1762

cond.false.1739:                                  ; preds = %cond.false.1704
  %280 = load i64, i64* %ndrivers, align 8
  %add1740 = add nsw i64 0, %280
  %mul1741 = mul nsw i64 0, %add1740
  %sub1742 = sub nsw i64 %mul1741, 1
  %cmp1743 = icmp slt i64 %sub1742, 0
  br i1 %cmp1743, label %cond.true.1745, label %cond.false.1753

cond.true.1745:                                   ; preds = %cond.false.1739
  %281 = load i64, i64* %ndrivers, align 8
  %add1746 = add nsw i64 0, %281
  %mul1747 = mul nsw i64 0, %add1746
  %add1748 = add nsw i64 %mul1747, 1
  %shl1749 = shl i64 %add1748, 62
  %sub1750 = sub nsw i64 %shl1749, 1
  %mul1751 = mul nsw i64 %sub1750, 2
  %add1752 = add nsw i64 %mul1751, 1
  br label %cond.end.1757

cond.false.1753:                                  ; preds = %cond.false.1739
  %282 = load i64, i64* %ndrivers, align 8
  %add1754 = add nsw i64 0, %282
  %mul1755 = mul nsw i64 0, %add1754
  %sub1756 = sub nsw i64 %mul1755, 1
  br label %cond.end.1757

cond.end.1757:                                    ; preds = %cond.false.1753, %cond.true.1745
  %cond1758 = phi i64 [ %add1752, %cond.true.1745 ], [ %sub1756, %cond.false.1753 ]
  %div1759 = sdiv i64 %cond1758, 8
  %283 = load i64, i64* %ndrivers, align 8
  %cmp1760 = icmp slt i64 %div1759, %283
  br i1 %cmp1760, label %cond.true.1776, label %lor.lhs.false.1762

lor.lhs.false.1762:                               ; preds = %cond.end.1757, %cond.end.1734, %cond.true.1703, %cond.end.1697, %cond.true.1669, %cond.end.1663
  %284 = load i64, i64* %ndrivers, align 8
  %mul1763 = mul nsw i64 %284, 8
  %mul1764 = mul nsw i64 0, %mul1763
  %sub1765 = sub nsw i64 %mul1764, 1
  %cmp1766 = icmp slt i64 %sub1765, 0
  br i1 %cmp1766, label %land.lhs.true.1768, label %lor.lhs.false.1772

land.lhs.true.1768:                               ; preds = %lor.lhs.false.1762
  %285 = load i64, i64* %ndrivers, align 8
  %mul1769 = mul nsw i64 %285, 8
  %cmp1770 = icmp slt i64 %mul1769, -9223372036854775808
  br i1 %cmp1770, label %cond.true.1776, label %lor.lhs.false.1772

lor.lhs.false.1772:                               ; preds = %land.lhs.true.1768, %lor.lhs.false.1762
  %286 = load i64, i64* %ndrivers, align 8
  %mul1773 = mul nsw i64 %286, 8
  %cmp1774 = icmp slt i64 9223372036854775807, %mul1773
  br i1 %cmp1774, label %cond.true.1776, label %cond.false.1788

cond.true.1776:                                   ; preds = %lor.lhs.false.1772, %land.lhs.true.1768, %cond.end.1757, %cond.end.1734, %cond.true.1703, %cond.end.1697, %cond.true.1669, %cond.end.1663, %land.lhs.true.1638
  %287 = load i64, i64* %ndrivers, align 8
  %mul1777 = mul i64 %287, 8
  %cmp1778 = icmp ule i64 %mul1777, 9223372036854775807
  br i1 %cmp1778, label %cond.true.1780, label %cond.false.1782

cond.true.1780:                                   ; preds = %cond.true.1776
  %288 = load i64, i64* %ndrivers, align 8
  %mul1781 = mul i64 %288, 8
  br label %cond.end.1786

cond.false.1782:                                  ; preds = %cond.true.1776
  %289 = load i64, i64* %ndrivers, align 8
  %mul1783 = mul i64 %289, 8
  %sub1784 = sub i64 %mul1783, -9223372036854775808
  %add1785 = add nsw i64 %sub1784, -9223372036854775808
  br label %cond.end.1786

cond.end.1786:                                    ; preds = %cond.false.1782, %cond.true.1780
  %cond1787 = phi i64 [ %mul1781, %cond.true.1780 ], [ %add1785, %cond.false.1782 ]
  store i64 %cond1787, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then.2190, label %lor.lhs.false.2187

cond.false.1788:                                  ; preds = %lor.lhs.false.1772
  %290 = load i64, i64* %ndrivers, align 8
  %mul1789 = mul i64 %290, 8
  %cmp1790 = icmp ule i64 %mul1789, 9223372036854775807
  br i1 %cmp1790, label %cond.true.1792, label %cond.false.1794

cond.true.1792:                                   ; preds = %cond.false.1788
  %291 = load i64, i64* %ndrivers, align 8
  %mul1793 = mul i64 %291, 8
  br label %cond.end.1798

cond.false.1794:                                  ; preds = %cond.false.1788
  %292 = load i64, i64* %ndrivers, align 8
  %mul1795 = mul i64 %292, 8
  %sub1796 = sub i64 %mul1795, -9223372036854775808
  %add1797 = add nsw i64 %sub1796, -9223372036854775808
  br label %cond.end.1798

cond.end.1798:                                    ; preds = %cond.false.1794, %cond.true.1792
  %cond1799 = phi i64 [ %mul1793, %cond.true.1792 ], [ %add1797, %cond.false.1794 ]
  store i64 %cond1799, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then.2190, label %lor.lhs.false.2187

cond.false.1800:                                  ; preds = %cond.false.1412
  br i1 false, label %cond.true.1801, label %cond.false.1994

cond.true.1801:                                   ; preds = %cond.false.1800
  %293 = load i64, i64* %ndrivers, align 8
  %add1802 = add nsw i64 0, %293
  %mul1803 = mul nsw i64 0, %add1802
  %sub1804 = sub nsw i64 %mul1803, 1
  %cmp1805 = icmp slt i64 %sub1804, 0
  br i1 %cmp1805, label %cond.true.1807, label %cond.false.1824

cond.true.1807:                                   ; preds = %cond.true.1801
  %294 = load i64, i64* %ndrivers, align 8
  %add1808 = add nsw i64 0, %294
  %mul1809 = mul nsw i64 0, %add1808
  %add1810 = add nsw i64 %mul1809, 0
  %neg1811 = xor i64 %add1810, -1
  %cmp1812 = icmp eq i64 %neg1811, -1
  %conv1813 = zext i1 %cmp1812 to i32
  %sub1814 = sub nsw i32 0, %conv1813
  %conv1815 = sext i32 %sub1814 to i64
  %295 = load i64, i64* %ndrivers, align 8
  %add1816 = add nsw i64 0, %295
  %mul1817 = mul nsw i64 0, %add1816
  %add1818 = add nsw i64 %mul1817, 1
  %shl1819 = shl i64 %add1818, 62
  %sub1820 = sub nsw i64 %shl1819, 1
  %mul1821 = mul nsw i64 %sub1820, 2
  %add1822 = add nsw i64 %mul1821, 1
  %sub1823 = sub nsw i64 %conv1815, %add1822
  br label %cond.end.1828

cond.false.1824:                                  ; preds = %cond.true.1801
  %296 = load i64, i64* %ndrivers, align 8
  %add1825 = add nsw i64 0, %296
  %mul1826 = mul nsw i64 0, %add1825
  %add1827 = add nsw i64 %mul1826, 0
  br label %cond.end.1828

cond.end.1828:                                    ; preds = %cond.false.1824, %cond.true.1807
  %cond1829 = phi i64 [ %sub1823, %cond.true.1807 ], [ %add1827, %cond.false.1824 ]
  %cmp1830 = icmp eq i64 %cond1829, 0
  br i1 %cmp1830, label %land.lhs.true.1832, label %lor.lhs.false.1835

land.lhs.true.1832:                               ; preds = %cond.end.1828
  %297 = load i64, i64* %ndrivers, align 8
  %cmp1833 = icmp slt i64 %297, 0
  br i1 %cmp1833, label %cond.true.1970, label %lor.lhs.false.1835

lor.lhs.false.1835:                               ; preds = %land.lhs.true.1832, %cond.end.1828
  br i1 false, label %cond.true.1836, label %cond.false.1896

cond.true.1836:                                   ; preds = %lor.lhs.false.1835
  %298 = load i64, i64* %ndrivers, align 8
  %cmp1837 = icmp slt i64 %298, 0
  br i1 %cmp1837, label %cond.true.1839, label %cond.false.1862

cond.true.1839:                                   ; preds = %cond.true.1836
  %299 = load i64, i64* %ndrivers, align 8
  %300 = load i64, i64* %ndrivers, align 8
  %add1840 = add nsw i64 0, %300
  %mul1841 = mul nsw i64 0, %add1840
  %sub1842 = sub nsw i64 %mul1841, 1
  %cmp1843 = icmp slt i64 %sub1842, 0
  br i1 %cmp1843, label %cond.true.1845, label %cond.false.1853

cond.true.1845:                                   ; preds = %cond.true.1839
  %301 = load i64, i64* %ndrivers, align 8
  %add1846 = add nsw i64 0, %301
  %mul1847 = mul nsw i64 0, %add1846
  %add1848 = add nsw i64 %mul1847, 1
  %shl1849 = shl i64 %add1848, 62
  %sub1850 = sub nsw i64 %shl1849, 1
  %mul1851 = mul nsw i64 %sub1850, 2
  %add1852 = add nsw i64 %mul1851, 1
  br label %cond.end.1857

cond.false.1853:                                  ; preds = %cond.true.1839
  %302 = load i64, i64* %ndrivers, align 8
  %add1854 = add nsw i64 0, %302
  %mul1855 = mul nsw i64 0, %add1854
  %sub1856 = sub nsw i64 %mul1855, 1
  br label %cond.end.1857

cond.end.1857:                                    ; preds = %cond.false.1853, %cond.true.1845
  %cond1858 = phi i64 [ %add1852, %cond.true.1845 ], [ %sub1856, %cond.false.1853 ]
  %div1859 = sdiv i64 %cond1858, 8
  %cmp1860 = icmp slt i64 %299, %div1859
  br i1 %cmp1860, label %cond.true.1970, label %lor.lhs.false.1956

cond.false.1862:                                  ; preds = %cond.true.1836
  br i1 false, label %cond.true.1863, label %cond.false.1864

cond.true.1863:                                   ; preds = %cond.false.1862
  br i1 false, label %cond.true.1970, label %lor.lhs.false.1956

cond.false.1864:                                  ; preds = %cond.false.1862
  %303 = load i64, i64* %ndrivers, align 8
  %add1865 = add nsw i64 0, %303
  %mul1866 = mul nsw i64 0, %add1865
  %sub1867 = sub nsw i64 %mul1866, 1
  %cmp1868 = icmp slt i64 %sub1867, 0
  br i1 %cmp1868, label %cond.true.1870, label %cond.false.1887

cond.true.1870:                                   ; preds = %cond.false.1864
  %304 = load i64, i64* %ndrivers, align 8
  %add1871 = add nsw i64 0, %304
  %mul1872 = mul nsw i64 0, %add1871
  %add1873 = add nsw i64 %mul1872, 0
  %neg1874 = xor i64 %add1873, -1
  %cmp1875 = icmp eq i64 %neg1874, -1
  %conv1876 = zext i1 %cmp1875 to i32
  %sub1877 = sub nsw i32 0, %conv1876
  %conv1878 = sext i32 %sub1877 to i64
  %305 = load i64, i64* %ndrivers, align 8
  %add1879 = add nsw i64 0, %305
  %mul1880 = mul nsw i64 0, %add1879
  %add1881 = add nsw i64 %mul1880, 1
  %shl1882 = shl i64 %add1881, 62
  %sub1883 = sub nsw i64 %shl1882, 1
  %mul1884 = mul nsw i64 %sub1883, 2
  %add1885 = add nsw i64 %mul1884, 1
  %sub1886 = sub nsw i64 %conv1878, %add1885
  br label %cond.end.1891

cond.false.1887:                                  ; preds = %cond.false.1864
  %306 = load i64, i64* %ndrivers, align 8
  %add1888 = add nsw i64 0, %306
  %mul1889 = mul nsw i64 0, %add1888
  %add1890 = add nsw i64 %mul1889, 0
  br label %cond.end.1891

cond.end.1891:                                    ; preds = %cond.false.1887, %cond.true.1870
  %cond1892 = phi i64 [ %sub1886, %cond.true.1870 ], [ %add1890, %cond.false.1887 ]
  %div1893 = sdiv i64 %cond1892, 8
  %307 = load i64, i64* %ndrivers, align 8
  %cmp1894 = icmp slt i64 %div1893, %307
  br i1 %cmp1894, label %cond.true.1970, label %lor.lhs.false.1956

cond.false.1896:                                  ; preds = %lor.lhs.false.1835
  br i1 false, label %cond.true.1897, label %cond.false.1898

cond.true.1897:                                   ; preds = %cond.false.1896
  br i1 false, label %cond.true.1970, label %lor.lhs.false.1956

cond.false.1898:                                  ; preds = %cond.false.1896
  %308 = load i64, i64* %ndrivers, align 8
  %cmp1899 = icmp slt i64 %308, 0
  br i1 %cmp1899, label %cond.true.1901, label %cond.false.1933

cond.true.1901:                                   ; preds = %cond.false.1898
  %309 = load i64, i64* %ndrivers, align 8
  %310 = load i64, i64* %ndrivers, align 8
  %add1902 = add nsw i64 0, %310
  %mul1903 = mul nsw i64 0, %add1902
  %sub1904 = sub nsw i64 %mul1903, 1
  %cmp1905 = icmp slt i64 %sub1904, 0
  br i1 %cmp1905, label %cond.true.1907, label %cond.false.1924

cond.true.1907:                                   ; preds = %cond.true.1901
  %311 = load i64, i64* %ndrivers, align 8
  %add1908 = add nsw i64 0, %311
  %mul1909 = mul nsw i64 0, %add1908
  %add1910 = add nsw i64 %mul1909, 0
  %neg1911 = xor i64 %add1910, -1
  %cmp1912 = icmp eq i64 %neg1911, -1
  %conv1913 = zext i1 %cmp1912 to i32
  %sub1914 = sub nsw i32 0, %conv1913
  %conv1915 = sext i32 %sub1914 to i64
  %312 = load i64, i64* %ndrivers, align 8
  %add1916 = add nsw i64 0, %312
  %mul1917 = mul nsw i64 0, %add1916
  %add1918 = add nsw i64 %mul1917, 1
  %shl1919 = shl i64 %add1918, 62
  %sub1920 = sub nsw i64 %shl1919, 1
  %mul1921 = mul nsw i64 %sub1920, 2
  %add1922 = add nsw i64 %mul1921, 1
  %sub1923 = sub nsw i64 %conv1915, %add1922
  br label %cond.end.1928

cond.false.1924:                                  ; preds = %cond.true.1901
  %313 = load i64, i64* %ndrivers, align 8
  %add1925 = add nsw i64 0, %313
  %mul1926 = mul nsw i64 0, %add1925
  %add1927 = add nsw i64 %mul1926, 0
  br label %cond.end.1928

cond.end.1928:                                    ; preds = %cond.false.1924, %cond.true.1907
  %cond1929 = phi i64 [ %sub1923, %cond.true.1907 ], [ %add1927, %cond.false.1924 ]
  %div1930 = sdiv i64 %cond1929, 8
  %cmp1931 = icmp slt i64 %309, %div1930
  br i1 %cmp1931, label %cond.true.1970, label %lor.lhs.false.1956

cond.false.1933:                                  ; preds = %cond.false.1898
  %314 = load i64, i64* %ndrivers, align 8
  %add1934 = add nsw i64 0, %314
  %mul1935 = mul nsw i64 0, %add1934
  %sub1936 = sub nsw i64 %mul1935, 1
  %cmp1937 = icmp slt i64 %sub1936, 0
  br i1 %cmp1937, label %cond.true.1939, label %cond.false.1947

cond.true.1939:                                   ; preds = %cond.false.1933
  %315 = load i64, i64* %ndrivers, align 8
  %add1940 = add nsw i64 0, %315
  %mul1941 = mul nsw i64 0, %add1940
  %add1942 = add nsw i64 %mul1941, 1
  %shl1943 = shl i64 %add1942, 62
  %sub1944 = sub nsw i64 %shl1943, 1
  %mul1945 = mul nsw i64 %sub1944, 2
  %add1946 = add nsw i64 %mul1945, 1
  br label %cond.end.1951

cond.false.1947:                                  ; preds = %cond.false.1933
  %316 = load i64, i64* %ndrivers, align 8
  %add1948 = add nsw i64 0, %316
  %mul1949 = mul nsw i64 0, %add1948
  %sub1950 = sub nsw i64 %mul1949, 1
  br label %cond.end.1951

cond.end.1951:                                    ; preds = %cond.false.1947, %cond.true.1939
  %cond1952 = phi i64 [ %add1946, %cond.true.1939 ], [ %sub1950, %cond.false.1947 ]
  %div1953 = sdiv i64 %cond1952, 8
  %317 = load i64, i64* %ndrivers, align 8
  %cmp1954 = icmp slt i64 %div1953, %317
  br i1 %cmp1954, label %cond.true.1970, label %lor.lhs.false.1956

lor.lhs.false.1956:                               ; preds = %cond.end.1951, %cond.end.1928, %cond.true.1897, %cond.end.1891, %cond.true.1863, %cond.end.1857
  %318 = load i64, i64* %ndrivers, align 8
  %mul1957 = mul nsw i64 %318, 8
  %mul1958 = mul nsw i64 0, %mul1957
  %sub1959 = sub nsw i64 %mul1958, 1
  %cmp1960 = icmp slt i64 %sub1959, 0
  br i1 %cmp1960, label %land.lhs.true.1962, label %lor.lhs.false.1966

land.lhs.true.1962:                               ; preds = %lor.lhs.false.1956
  %319 = load i64, i64* %ndrivers, align 8
  %mul1963 = mul nsw i64 %319, 8
  %cmp1964 = icmp slt i64 %mul1963, -9223372036854775808
  br i1 %cmp1964, label %cond.true.1970, label %lor.lhs.false.1966

lor.lhs.false.1966:                               ; preds = %land.lhs.true.1962, %lor.lhs.false.1956
  %320 = load i64, i64* %ndrivers, align 8
  %mul1967 = mul nsw i64 %320, 8
  %cmp1968 = icmp slt i64 9223372036854775807, %mul1967
  br i1 %cmp1968, label %cond.true.1970, label %cond.false.1982

cond.true.1970:                                   ; preds = %lor.lhs.false.1966, %land.lhs.true.1962, %cond.end.1951, %cond.end.1928, %cond.true.1897, %cond.end.1891, %cond.true.1863, %cond.end.1857, %land.lhs.true.1832
  %321 = load i64, i64* %ndrivers, align 8
  %mul1971 = mul i64 %321, 8
  %cmp1972 = icmp ule i64 %mul1971, 9223372036854775807
  br i1 %cmp1972, label %cond.true.1974, label %cond.false.1976

cond.true.1974:                                   ; preds = %cond.true.1970
  %322 = load i64, i64* %ndrivers, align 8
  %mul1975 = mul i64 %322, 8
  br label %cond.end.1980

cond.false.1976:                                  ; preds = %cond.true.1970
  %323 = load i64, i64* %ndrivers, align 8
  %mul1977 = mul i64 %323, 8
  %sub1978 = sub i64 %mul1977, -9223372036854775808
  %add1979 = add nsw i64 %sub1978, -9223372036854775808
  br label %cond.end.1980

cond.end.1980:                                    ; preds = %cond.false.1976, %cond.true.1974
  %cond1981 = phi i64 [ %mul1975, %cond.true.1974 ], [ %add1979, %cond.false.1976 ]
  store i64 %cond1981, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then.2190, label %lor.lhs.false.2187

cond.false.1982:                                  ; preds = %lor.lhs.false.1966
  %324 = load i64, i64* %ndrivers, align 8
  %mul1983 = mul i64 %324, 8
  %cmp1984 = icmp ule i64 %mul1983, 9223372036854775807
  br i1 %cmp1984, label %cond.true.1986, label %cond.false.1988

cond.true.1986:                                   ; preds = %cond.false.1982
  %325 = load i64, i64* %ndrivers, align 8
  %mul1987 = mul i64 %325, 8
  br label %cond.end.1992

cond.false.1988:                                  ; preds = %cond.false.1982
  %326 = load i64, i64* %ndrivers, align 8
  %mul1989 = mul i64 %326, 8
  %sub1990 = sub i64 %mul1989, -9223372036854775808
  %add1991 = add nsw i64 %sub1990, -9223372036854775808
  br label %cond.end.1992

cond.end.1992:                                    ; preds = %cond.false.1988, %cond.true.1986
  %cond1993 = phi i64 [ %mul1987, %cond.true.1986 ], [ %add1991, %cond.false.1988 ]
  store i64 %cond1993, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then.2190, label %lor.lhs.false.2187

cond.false.1994:                                  ; preds = %cond.false.1800
  %327 = load i64, i64* %ndrivers, align 8
  %add1995 = add nsw i64 0, %327
  %mul1996 = mul nsw i64 0, %add1995
  %sub1997 = sub nsw i64 %mul1996, 1
  %cmp1998 = icmp slt i64 %sub1997, 0
  br i1 %cmp1998, label %cond.true.2000, label %cond.false.2017

cond.true.2000:                                   ; preds = %cond.false.1994
  %328 = load i64, i64* %ndrivers, align 8
  %add2001 = add nsw i64 0, %328
  %mul2002 = mul nsw i64 0, %add2001
  %add2003 = add nsw i64 %mul2002, 0
  %neg2004 = xor i64 %add2003, -1
  %cmp2005 = icmp eq i64 %neg2004, -1
  %conv2006 = zext i1 %cmp2005 to i32
  %sub2007 = sub nsw i32 0, %conv2006
  %conv2008 = sext i32 %sub2007 to i64
  %329 = load i64, i64* %ndrivers, align 8
  %add2009 = add nsw i64 0, %329
  %mul2010 = mul nsw i64 0, %add2009
  %add2011 = add nsw i64 %mul2010, 1
  %shl2012 = shl i64 %add2011, 62
  %sub2013 = sub nsw i64 %shl2012, 1
  %mul2014 = mul nsw i64 %sub2013, 2
  %add2015 = add nsw i64 %mul2014, 1
  %sub2016 = sub nsw i64 %conv2008, %add2015
  br label %cond.end.2021

cond.false.2017:                                  ; preds = %cond.false.1994
  %330 = load i64, i64* %ndrivers, align 8
  %add2018 = add nsw i64 0, %330
  %mul2019 = mul nsw i64 0, %add2018
  %add2020 = add nsw i64 %mul2019, 0
  br label %cond.end.2021

cond.end.2021:                                    ; preds = %cond.false.2017, %cond.true.2000
  %cond2022 = phi i64 [ %sub2016, %cond.true.2000 ], [ %add2020, %cond.false.2017 ]
  %cmp2023 = icmp eq i64 %cond2022, 0
  br i1 %cmp2023, label %land.lhs.true.2025, label %lor.lhs.false.2028

land.lhs.true.2025:                               ; preds = %cond.end.2021
  %331 = load i64, i64* %ndrivers, align 8
  %cmp2026 = icmp slt i64 %331, 0
  br i1 %cmp2026, label %cond.true.2163, label %lor.lhs.false.2028

lor.lhs.false.2028:                               ; preds = %land.lhs.true.2025, %cond.end.2021
  br i1 false, label %cond.true.2029, label %cond.false.2089

cond.true.2029:                                   ; preds = %lor.lhs.false.2028
  %332 = load i64, i64* %ndrivers, align 8
  %cmp2030 = icmp slt i64 %332, 0
  br i1 %cmp2030, label %cond.true.2032, label %cond.false.2055

cond.true.2032:                                   ; preds = %cond.true.2029
  %333 = load i64, i64* %ndrivers, align 8
  %334 = load i64, i64* %ndrivers, align 8
  %add2033 = add nsw i64 0, %334
  %mul2034 = mul nsw i64 0, %add2033
  %sub2035 = sub nsw i64 %mul2034, 1
  %cmp2036 = icmp slt i64 %sub2035, 0
  br i1 %cmp2036, label %cond.true.2038, label %cond.false.2046

cond.true.2038:                                   ; preds = %cond.true.2032
  %335 = load i64, i64* %ndrivers, align 8
  %add2039 = add nsw i64 0, %335
  %mul2040 = mul nsw i64 0, %add2039
  %add2041 = add nsw i64 %mul2040, 1
  %shl2042 = shl i64 %add2041, 62
  %sub2043 = sub nsw i64 %shl2042, 1
  %mul2044 = mul nsw i64 %sub2043, 2
  %add2045 = add nsw i64 %mul2044, 1
  br label %cond.end.2050

cond.false.2046:                                  ; preds = %cond.true.2032
  %336 = load i64, i64* %ndrivers, align 8
  %add2047 = add nsw i64 0, %336
  %mul2048 = mul nsw i64 0, %add2047
  %sub2049 = sub nsw i64 %mul2048, 1
  br label %cond.end.2050

cond.end.2050:                                    ; preds = %cond.false.2046, %cond.true.2038
  %cond2051 = phi i64 [ %add2045, %cond.true.2038 ], [ %sub2049, %cond.false.2046 ]
  %div2052 = sdiv i64 %cond2051, 8
  %cmp2053 = icmp slt i64 %333, %div2052
  br i1 %cmp2053, label %cond.true.2163, label %lor.lhs.false.2149

cond.false.2055:                                  ; preds = %cond.true.2029
  br i1 false, label %cond.true.2056, label %cond.false.2057

cond.true.2056:                                   ; preds = %cond.false.2055
  br i1 false, label %cond.true.2163, label %lor.lhs.false.2149

cond.false.2057:                                  ; preds = %cond.false.2055
  %337 = load i64, i64* %ndrivers, align 8
  %add2058 = add nsw i64 0, %337
  %mul2059 = mul nsw i64 0, %add2058
  %sub2060 = sub nsw i64 %mul2059, 1
  %cmp2061 = icmp slt i64 %sub2060, 0
  br i1 %cmp2061, label %cond.true.2063, label %cond.false.2080

cond.true.2063:                                   ; preds = %cond.false.2057
  %338 = load i64, i64* %ndrivers, align 8
  %add2064 = add nsw i64 0, %338
  %mul2065 = mul nsw i64 0, %add2064
  %add2066 = add nsw i64 %mul2065, 0
  %neg2067 = xor i64 %add2066, -1
  %cmp2068 = icmp eq i64 %neg2067, -1
  %conv2069 = zext i1 %cmp2068 to i32
  %sub2070 = sub nsw i32 0, %conv2069
  %conv2071 = sext i32 %sub2070 to i64
  %339 = load i64, i64* %ndrivers, align 8
  %add2072 = add nsw i64 0, %339
  %mul2073 = mul nsw i64 0, %add2072
  %add2074 = add nsw i64 %mul2073, 1
  %shl2075 = shl i64 %add2074, 62
  %sub2076 = sub nsw i64 %shl2075, 1
  %mul2077 = mul nsw i64 %sub2076, 2
  %add2078 = add nsw i64 %mul2077, 1
  %sub2079 = sub nsw i64 %conv2071, %add2078
  br label %cond.end.2084

cond.false.2080:                                  ; preds = %cond.false.2057
  %340 = load i64, i64* %ndrivers, align 8
  %add2081 = add nsw i64 0, %340
  %mul2082 = mul nsw i64 0, %add2081
  %add2083 = add nsw i64 %mul2082, 0
  br label %cond.end.2084

cond.end.2084:                                    ; preds = %cond.false.2080, %cond.true.2063
  %cond2085 = phi i64 [ %sub2079, %cond.true.2063 ], [ %add2083, %cond.false.2080 ]
  %div2086 = sdiv i64 %cond2085, 8
  %341 = load i64, i64* %ndrivers, align 8
  %cmp2087 = icmp slt i64 %div2086, %341
  br i1 %cmp2087, label %cond.true.2163, label %lor.lhs.false.2149

cond.false.2089:                                  ; preds = %lor.lhs.false.2028
  br i1 false, label %cond.true.2090, label %cond.false.2091

cond.true.2090:                                   ; preds = %cond.false.2089
  br i1 false, label %cond.true.2163, label %lor.lhs.false.2149

cond.false.2091:                                  ; preds = %cond.false.2089
  %342 = load i64, i64* %ndrivers, align 8
  %cmp2092 = icmp slt i64 %342, 0
  br i1 %cmp2092, label %cond.true.2094, label %cond.false.2126

cond.true.2094:                                   ; preds = %cond.false.2091
  %343 = load i64, i64* %ndrivers, align 8
  %344 = load i64, i64* %ndrivers, align 8
  %add2095 = add nsw i64 0, %344
  %mul2096 = mul nsw i64 0, %add2095
  %sub2097 = sub nsw i64 %mul2096, 1
  %cmp2098 = icmp slt i64 %sub2097, 0
  br i1 %cmp2098, label %cond.true.2100, label %cond.false.2117

cond.true.2100:                                   ; preds = %cond.true.2094
  %345 = load i64, i64* %ndrivers, align 8
  %add2101 = add nsw i64 0, %345
  %mul2102 = mul nsw i64 0, %add2101
  %add2103 = add nsw i64 %mul2102, 0
  %neg2104 = xor i64 %add2103, -1
  %cmp2105 = icmp eq i64 %neg2104, -1
  %conv2106 = zext i1 %cmp2105 to i32
  %sub2107 = sub nsw i32 0, %conv2106
  %conv2108 = sext i32 %sub2107 to i64
  %346 = load i64, i64* %ndrivers, align 8
  %add2109 = add nsw i64 0, %346
  %mul2110 = mul nsw i64 0, %add2109
  %add2111 = add nsw i64 %mul2110, 1
  %shl2112 = shl i64 %add2111, 62
  %sub2113 = sub nsw i64 %shl2112, 1
  %mul2114 = mul nsw i64 %sub2113, 2
  %add2115 = add nsw i64 %mul2114, 1
  %sub2116 = sub nsw i64 %conv2108, %add2115
  br label %cond.end.2121

cond.false.2117:                                  ; preds = %cond.true.2094
  %347 = load i64, i64* %ndrivers, align 8
  %add2118 = add nsw i64 0, %347
  %mul2119 = mul nsw i64 0, %add2118
  %add2120 = add nsw i64 %mul2119, 0
  br label %cond.end.2121

cond.end.2121:                                    ; preds = %cond.false.2117, %cond.true.2100
  %cond2122 = phi i64 [ %sub2116, %cond.true.2100 ], [ %add2120, %cond.false.2117 ]
  %div2123 = sdiv i64 %cond2122, 8
  %cmp2124 = icmp slt i64 %343, %div2123
  br i1 %cmp2124, label %cond.true.2163, label %lor.lhs.false.2149

cond.false.2126:                                  ; preds = %cond.false.2091
  %348 = load i64, i64* %ndrivers, align 8
  %add2127 = add nsw i64 0, %348
  %mul2128 = mul nsw i64 0, %add2127
  %sub2129 = sub nsw i64 %mul2128, 1
  %cmp2130 = icmp slt i64 %sub2129, 0
  br i1 %cmp2130, label %cond.true.2132, label %cond.false.2140

cond.true.2132:                                   ; preds = %cond.false.2126
  %349 = load i64, i64* %ndrivers, align 8
  %add2133 = add nsw i64 0, %349
  %mul2134 = mul nsw i64 0, %add2133
  %add2135 = add nsw i64 %mul2134, 1
  %shl2136 = shl i64 %add2135, 62
  %sub2137 = sub nsw i64 %shl2136, 1
  %mul2138 = mul nsw i64 %sub2137, 2
  %add2139 = add nsw i64 %mul2138, 1
  br label %cond.end.2144

cond.false.2140:                                  ; preds = %cond.false.2126
  %350 = load i64, i64* %ndrivers, align 8
  %add2141 = add nsw i64 0, %350
  %mul2142 = mul nsw i64 0, %add2141
  %sub2143 = sub nsw i64 %mul2142, 1
  br label %cond.end.2144

cond.end.2144:                                    ; preds = %cond.false.2140, %cond.true.2132
  %cond2145 = phi i64 [ %add2139, %cond.true.2132 ], [ %sub2143, %cond.false.2140 ]
  %div2146 = sdiv i64 %cond2145, 8
  %351 = load i64, i64* %ndrivers, align 8
  %cmp2147 = icmp slt i64 %div2146, %351
  br i1 %cmp2147, label %cond.true.2163, label %lor.lhs.false.2149

lor.lhs.false.2149:                               ; preds = %cond.end.2144, %cond.end.2121, %cond.true.2090, %cond.end.2084, %cond.true.2056, %cond.end.2050
  %352 = load i64, i64* %ndrivers, align 8
  %mul2150 = mul nsw i64 %352, 8
  %mul2151 = mul nsw i64 0, %mul2150
  %sub2152 = sub nsw i64 %mul2151, 1
  %cmp2153 = icmp slt i64 %sub2152, 0
  br i1 %cmp2153, label %land.lhs.true.2155, label %lor.lhs.false.2159

land.lhs.true.2155:                               ; preds = %lor.lhs.false.2149
  %353 = load i64, i64* %ndrivers, align 8
  %mul2156 = mul nsw i64 %353, 8
  %cmp2157 = icmp slt i64 %mul2156, -9223372036854775808
  br i1 %cmp2157, label %cond.true.2163, label %lor.lhs.false.2159

lor.lhs.false.2159:                               ; preds = %land.lhs.true.2155, %lor.lhs.false.2149
  %354 = load i64, i64* %ndrivers, align 8
  %mul2160 = mul nsw i64 %354, 8
  %cmp2161 = icmp slt i64 9223372036854775807, %mul2160
  br i1 %cmp2161, label %cond.true.2163, label %cond.false.2175

cond.true.2163:                                   ; preds = %lor.lhs.false.2159, %land.lhs.true.2155, %cond.end.2144, %cond.end.2121, %cond.true.2090, %cond.end.2084, %cond.true.2056, %cond.end.2050, %land.lhs.true.2025
  %355 = load i64, i64* %ndrivers, align 8
  %mul2164 = mul i64 %355, 8
  %cmp2165 = icmp ule i64 %mul2164, 9223372036854775807
  br i1 %cmp2165, label %cond.true.2167, label %cond.false.2169

cond.true.2167:                                   ; preds = %cond.true.2163
  %356 = load i64, i64* %ndrivers, align 8
  %mul2168 = mul i64 %356, 8
  br label %cond.end.2173

cond.false.2169:                                  ; preds = %cond.true.2163
  %357 = load i64, i64* %ndrivers, align 8
  %mul2170 = mul i64 %357, 8
  %sub2171 = sub i64 %mul2170, -9223372036854775808
  %add2172 = add nsw i64 %sub2171, -9223372036854775808
  br label %cond.end.2173

cond.end.2173:                                    ; preds = %cond.false.2169, %cond.true.2167
  %cond2174 = phi i64 [ %mul2168, %cond.true.2167 ], [ %add2172, %cond.false.2169 ]
  store i64 %cond2174, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then.2190, label %lor.lhs.false.2187

cond.false.2175:                                  ; preds = %lor.lhs.false.2159
  %358 = load i64, i64* %ndrivers, align 8
  %mul2176 = mul i64 %358, 8
  %cmp2177 = icmp ule i64 %mul2176, 9223372036854775807
  br i1 %cmp2177, label %cond.true.2179, label %cond.false.2181

cond.true.2179:                                   ; preds = %cond.false.2175
  %359 = load i64, i64* %ndrivers, align 8
  %mul2180 = mul i64 %359, 8
  br label %cond.end.2185

cond.false.2181:                                  ; preds = %cond.false.2175
  %360 = load i64, i64* %ndrivers, align 8
  %mul2182 = mul i64 %360, 8
  %sub2183 = sub i64 %mul2182, -9223372036854775808
  %add2184 = add nsw i64 %sub2183, -9223372036854775808
  br label %cond.end.2185

cond.end.2185:                                    ; preds = %cond.false.2181, %cond.true.2179
  %cond2186 = phi i64 [ %mul2180, %cond.true.2179 ], [ %add2184, %cond.false.2181 ]
  store i64 %cond2186, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then.2190, label %lor.lhs.false.2187

lor.lhs.false.2187:                               ; preds = %cond.end.2185, %cond.end.2173, %cond.end.1992, %cond.end.1980, %cond.end.1798, %cond.end.1786, %cond.end.1605, %cond.end.1593, %cond.end.1409, %cond.end.1393, %cond.end.1208, %cond.end.1192, %cond.end.980, %cond.end.957, %cond.end.765, %cond.end.742, %cond.end.495, %cond.end.472, %cond.end.280, %cond.end.257
  %361 = load i64, i64* %alloca_nbytes, align 8
  %cmp2188 = icmp ult i64 -1, %361
  br i1 %cmp2188, label %if.then.2190, label %if.else

if.then.2190:                                     ; preds = %lor.lhs.false.2187, %cond.end.2185, %cond.end.2173, %cond.end.1992, %cond.end.1980, %cond.end.1798, %cond.end.1786, %cond.end.1605, %cond.end.1593, %cond.end.1409, %cond.end.1393, %cond.end.1208, %cond.end.1192, %cond.end.980, %cond.end.957, %cond.end.765, %cond.end.742, %cond.end.495, %cond.end.472, %cond.end.280, %cond.end.257
  call void @memory_full(i64 -1) #6
  unreachable

if.else:                                          ; preds = %lor.lhs.false.2187
  %362 = load i64, i64* %alloca_nbytes, align 8
  %363 = load i64, i64* %sa_avail, align 8
  %cmp2191 = icmp sle i64 %362, %363
  br i1 %cmp2191, label %if.then.2193, label %if.else.2195

if.then.2193:                                     ; preds = %if.else
  %364 = load i64, i64* %alloca_nbytes, align 8
  %365 = load i64, i64* %sa_avail, align 8
  %sub2194 = sub nsw i64 %365, %364
  store i64 %sub2194, i64* %sa_avail, align 8
  %366 = load i64, i64* %alloca_nbytes, align 8
  %367 = alloca i8, i64 %366
  %368 = bitcast i8* %367 to i64*
  store i64* %368, i64** %drivers, align 8
  br label %if.end.2198

if.else.2195:                                     ; preds = %if.else
  %369 = load i64, i64* %alloca_nbytes, align 8
  %call2196 = call noalias i8* @xmalloc(i64 %369)
  %370 = bitcast i8* %call2196 to i64*
  store i64* %370, i64** %drivers, align 8
  %371 = load i64*, i64** %drivers, align 8
  %372 = load i64, i64* %ndrivers, align 8
  %call2197 = call i64 @make_save_memory(i64* %371, i64 %372)
  store i64 %call2197, i64* %arg_, align 8
  store i8 1, i8* %sa_must_free, align 1
  %373 = load i64, i64* %arg_, align 8
  call void @record_unwind_protect(void (i64)* @free_save_value, i64 %373)
  br label %if.end.2198

if.end.2198:                                      ; preds = %if.else.2195, %if.then.2193
  br label %if.end.2199

if.end.2199:                                      ; preds = %if.end.2198
  br label %do.end

do.end:                                           ; preds = %if.end.2199
  store i64 0, i64* %i, align 8
  br label %for.cond.2200

for.cond.2200:                                    ; preds = %for.inc.2206, %do.end
  %374 = load i64, i64* %i, align 8
  %375 = load i64, i64* %ndrivers, align 8
  %cmp2201 = icmp slt i64 %374, %375
  br i1 %cmp2201, label %for.body.2203, label %for.end.2209

for.body.2203:                                    ; preds = %for.cond.2200
  %376 = load i64, i64* %list, align 8
  %sub2204 = sub nsw i64 %376, 3
  %377 = inttoptr i64 %sub2204 to i8*
  %378 = bitcast i8* %377 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %378, i32 0, i32 0
  %379 = load i64, i64* %car, align 8
  %380 = load i64, i64* %i, align 8
  %381 = load i64*, i64** %drivers, align 8
  %arrayidx2205 = getelementptr inbounds i64, i64* %381, i64 %380
  store i64 %379, i64* %arrayidx2205, align 8
  br label %for.inc.2206

for.inc.2206:                                     ; preds = %for.body.2203
  %382 = load i64, i64* %i, align 8
  %inc2207 = add nsw i64 %382, 1
  store i64 %inc2207, i64* %i, align 8
  %383 = load i64, i64* %list, align 8
  %sub2208 = sub nsw i64 %383, 3
  %384 = inttoptr i64 %sub2208 to i8*
  %385 = bitcast i8* %384 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %385, i32 0, i32 1
  %cdr = bitcast %union.anon.10* %u to i64*
  %386 = load i64, i64* %cdr, align 8
  store i64 %386, i64* %list, align 8
  br label %for.cond.2200

for.end.2209:                                     ; preds = %for.cond.2200
  %387 = load i64, i64* %ndrivers, align 8
  %388 = load i64*, i64** %drivers, align 8
  %call2210 = call i64 @Fvconcat(i64 %387, i64* %388)
  store i64 %call2210, i64* %vec, align 8
  %389 = load i64, i64* %vec, align 8
  %call2211 = call i64 @ASIZE(i64 %389)
  store i64 %call2211, i64* %nfonts, align 8
  %390 = load i64, i64* %vec, align 8
  %call2212 = call %struct.Lisp_Vector* @XVECTOR(i64 %390)
  %contents = getelementptr inbounds %struct.Lisp_Vector, %struct.Lisp_Vector* %call2212, i32 0, i32 1
  %arraydecay = getelementptr inbounds [0 x i64], [0 x i64]* %contents, i32 0, i32 0
  %391 = bitcast i64* %arraydecay to i8*
  %392 = load i64, i64* %nfonts, align 8
  call void @qsort(i8* %391, i64 %392, i64 8, i32 (i8*, i8*)* @compare_fonts_by_sort_order)
  %call2213 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call2213, i64* %result, align 8
  %393 = load i64, i64* %nfonts, align 8
  %sub2214 = sub nsw i64 %393, 1
  store i64 %sub2214, i64* %i, align 8
  br label %for.cond.2215

for.cond.2215:                                    ; preds = %for.inc.2255, %for.end.2209
  %394 = load i64, i64* %i, align 8
  %cmp2216 = icmp sge i64 %394, 0
  br i1 %cmp2216, label %for.body.2218, label %for.end.2256

for.body.2218:                                    ; preds = %for.cond.2215
  %395 = load i64, i64* %vec, align 8
  %396 = load i64, i64* %i, align 8
  %call2219 = call i64 @AREF(i64 %395, i64 %396)
  store i64 %call2219, i64* %font, align 8
  %call2220 = call i64 @make_uninit_vector(i64 8)
  store i64 %call2220, i64* %v, align 8
  %397 = load i64, i64* %v, align 8
  %398 = load i64, i64* %font, align 8
  %call2221 = call i64 @AREF(i64 %398, i64 2)
  call void @ASET(i64 %397, i64 0, i64 %call2221)
  %399 = load i64, i64* %v, align 8
  %400 = load i64, i64* %font, align 8
  %call2222 = call i64 @font_style_symbolic(i64 %400, i32 7, i1 zeroext false)
  call void @ASET(i64 %399, i64 1, i64 %call2222)
  %401 = load i64, i64* %font, align 8
  %call2223 = call i64 @AREF(i64 %401, i64 8)
  %shr2224 = ashr i64 %call2223, 2
  %mul2225 = mul nsw i64 %shr2224, 10
  %conv2226 = sitofp i64 %mul2225 to double
  %mul2227 = fmul double %conv2226, 7.227000e+01
  %402 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %402, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %403 = load %struct.x_output*, %struct.x_output** %x, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %403, i32 0, i32 44
  %404 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %resy = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %404, i32 0, i32 8
  %405 = load double, double* %resy, align 8
  %div2228 = fdiv double %mul2227, %405
  %add2229 = fadd double %div2228, 5.000000e-01
  %conv2230 = fptosi double %add2229 to i32
  store i32 %conv2230, i32* %point, align 4
  %406 = load i64, i64* %v, align 8
  %407 = load i32, i32* %point, align 4
  %conv2231 = sext i32 %407 to i64
  %shl2232 = shl i64 %conv2231, 2
  %add2233 = add i64 %shl2232, 2
  call void @ASET(i64 %406, i64 2, i64 %add2233)
  %408 = load i64, i64* %v, align 8
  %409 = load i64, i64* %font, align 8
  %call2234 = call i64 @font_style_symbolic(i64 %409, i32 5, i1 zeroext false)
  call void @ASET(i64 %408, i64 3, i64 %call2234)
  %410 = load i64, i64* %v, align 8
  %411 = load i64, i64* %font, align 8
  %call2235 = call i64 @font_style_symbolic(i64 %411, i32 6, i1 zeroext false)
  call void @ASET(i64 %410, i64 4, i64 %call2235)
  %412 = load i64, i64* %font, align 8
  %call2236 = call i64 @builtin_lisp_symbol(i32 120)
  %call2237 = call i64 @Ffont_get(i64 %412, i64 %call2236)
  store i64 %call2237, i64* %spacing, align 8
  %413 = load i64, i64* %v, align 8
  %414 = load i64, i64* %spacing, align 8
  %call2238 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp2239 = icmp eq i64 %414, %call2238
  br i1 %cmp2239, label %cond.true.2245, label %lor.lhs.false.2241

lor.lhs.false.2241:                               ; preds = %for.body.2218
  %415 = load i64, i64* %spacing, align 8
  %call2242 = call i64 @builtin_lisp_symbol(i32 738)
  %cmp2243 = icmp eq i64 %415, %call2242
  br i1 %cmp2243, label %cond.true.2245, label %cond.false.2247

cond.true.2245:                                   ; preds = %lor.lhs.false.2241, %for.body.2218
  %call2246 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.2249

cond.false.2247:                                  ; preds = %lor.lhs.false.2241
  %call2248 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end.2249

cond.end.2249:                                    ; preds = %cond.false.2247, %cond.true.2245
  %cond2250 = phi i64 [ %call2246, %cond.true.2245 ], [ %call2248, %cond.false.2247 ]
  call void @ASET(i64 %413, i64 5, i64 %cond2250)
  %416 = load i64, i64* %v, align 8
  %417 = load i64, i64* %font, align 8
  %call2251 = call i64 @builtin_lisp_symbol(i32 0)
  %call2252 = call i64 @Ffont_xlfd_name(i64 %417, i64 %call2251)
  call void @ASET(i64 %416, i64 6, i64 %call2252)
  %418 = load i64, i64* %v, align 8
  %419 = load i64, i64* %font, align 8
  %call2253 = call i64 @AREF(i64 %419, i64 4)
  call void @ASET(i64 %418, i64 7, i64 %call2253)
  %420 = load i64, i64* %v, align 8
  %421 = load i64, i64* %result, align 8
  %call2254 = call i64 @Fcons(i64 %420, i64 %421)
  store i64 %call2254, i64* %result, align 8
  br label %for.inc.2255

for.inc.2255:                                     ; preds = %cond.end.2249
  %422 = load i64, i64* %i, align 8
  %dec = add nsw i64 %422, -1
  store i64 %dec, i64* %i, align 8
  br label %for.cond.2215

for.end.2256:                                     ; preds = %for.cond.2215
  br label %do.body.2257

do.body.2257:                                     ; preds = %for.end.2256
  %423 = load i8, i8* %sa_must_free, align 1
  %tobool = trunc i8 %423 to i1
  br i1 %tobool, label %if.then.2258, label %if.end.2261

if.then.2258:                                     ; preds = %do.body.2257
  store i8 0, i8* %sa_must_free, align 1
  %424 = load i64, i64* %sa_count, align 8
  %call2259 = call i64 @builtin_lisp_symbol(i32 0)
  %call2260 = call i64 @unbind_to(i64 %424, i64 %call2259)
  br label %if.end.2261

if.end.2261:                                      ; preds = %if.then.2258, %do.body.2257
  br label %do.end.2262

do.end.2262:                                      ; preds = %if.end.2261
  %425 = load i64, i64* %result, align 8
  store i64 %425, i64* %retval
  br label %return

return:                                           ; preds = %do.end.2262, %if.then.8
  %426 = load i64, i64* %retval
  ret i64 %426
}

declare %struct.frame* @decode_live_frame(i64) #1

declare i64 @SPECPDL_INDEX() #1

declare i64 @Ffont_spec(i64, i64*) #1

declare void @font_parse_family_registry(i64, i64, i64) #1

declare i64 @font_list_entities(%struct.frame*, i64) #1

declare i64 @Flength(i64) #1

; Function Attrs: noreturn
declare void @memory_full(i64) #2

declare noalias i8* @xmalloc(i64) #1

declare i64 @make_save_memory(i64*, i64) #1

declare void @record_unwind_protect(void (i64)*, i64) #1

declare void @free_save_value(i64) #1

declare i64 @Fvconcat(i64, i64*) #1

declare i64 @ASIZE(i64) #1

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #1

declare %struct.Lisp_Vector* @XVECTOR(i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @compare_fonts_by_sort_order(i8* %v1, i8* %v2) #0 {
entry:
  %retval = alloca i32, align 4
  %v1.addr = alloca i8*, align 8
  %v2.addr = alloca i8*, align 8
  %p1 = alloca i64*, align 8
  %p2 = alloca i64*, align 8
  %font1 = alloca i64, align 8
  %font2 = alloca i64, align 8
  %i = alloca i32, align 4
  %idx = alloca i32, align 4
  %val1 = alloca i64, align 8
  %val2 = alloca i64, align 8
  %result = alloca i32, align 4
  store i8* %v1, i8** %v1.addr, align 8
  store i8* %v2, i8** %v2.addr, align 8
  %0 = load i8*, i8** %v1.addr, align 8
  %1 = bitcast i8* %0 to i64*
  store i64* %1, i64** %p1, align 8
  %2 = load i8*, i8** %v2.addr, align 8
  %3 = bitcast i8* %2 to i64*
  store i64* %3, i64** %p2, align 8
  %4 = load i64*, i64** %p1, align 8
  %5 = load i64, i64* %4, align 8
  store i64 %5, i64* %font1, align 8
  %6 = load i64*, i64** %p2, align 8
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %font2, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %8, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* @font_props_for_sorting, i32 0, i64 %idxprom
  %10 = load i32, i32* %arrayidx, align 4
  store i32 %10, i32* %idx, align 4
  %11 = load i64, i64* %font1, align 8
  %12 = load i32, i32* %idx, align 4
  %conv = zext i32 %12 to i64
  %call = call i64 @AREF(i64 %11, i64 %conv)
  store i64 %call, i64* %val1, align 8
  %13 = load i64, i64* %font2, align 8
  %14 = load i32, i32* %idx, align 4
  %conv1 = zext i32 %14 to i64
  %call2 = call i64 @AREF(i64 %13, i64 %conv1)
  store i64 %call2, i64* %val2, align 8
  %15 = load i32, i32* %idx, align 4
  %cmp3 = icmp ule i32 %15, 4
  br i1 %cmp3, label %if.then, label %if.else.15

if.then:                                          ; preds = %for.body
  %16 = load i64, i64* %val1, align 8
  %call5 = call zeroext i1 @STRINGP(i64 %16)
  br i1 %call5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %17 = load i64, i64* %val2, align 8
  %call7 = call zeroext i1 @STRINGP(i64 %17)
  br i1 %call7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.6
  %18 = load i64, i64* %val1, align 8
  %call9 = call i8* @SSDATA(i64 %18)
  %19 = load i64, i64* %val2, align 8
  %call10 = call i8* @SSDATA(i64 %19)
  %call11 = call i32 @strcmp(i8* %call9, i8* %call10) #7
  br label %cond.end

cond.false:                                       ; preds = %if.then.6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call11, %cond.true ], [ -1, %cond.false ]
  store i32 %cond, i32* %result, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %20 = load i64, i64* %val2, align 8
  %call12 = call zeroext i1 @STRINGP(i64 %20)
  %cond14 = select i1 %call12, i32 1, i32 0
  store i32 %cond14, i32* %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end
  br label %if.end.45

if.else.15:                                       ; preds = %for.body
  %21 = load i64, i64* %val1, align 8
  %and = and i64 %21, 7
  %conv16 = trunc i64 %and to i32
  %and17 = and i32 %conv16, -5
  %cmp18 = icmp eq i32 %and17, 2
  br i1 %cmp18, label %if.then.20, label %if.else.37

if.then.20:                                       ; preds = %if.else.15
  %22 = load i64, i64* %val2, align 8
  %and21 = and i64 %22, 7
  %conv22 = trunc i64 %and21 to i32
  %and23 = and i32 %conv22, -5
  %cmp24 = icmp eq i32 %and23, 2
  br i1 %cmp24, label %land.lhs.true, label %cond.false.34

land.lhs.true:                                    ; preds = %if.then.20
  %23 = load i64, i64* %val1, align 8
  %shr = ashr i64 %23, 2
  %24 = load i64, i64* %val2, align 8
  %shr26 = ashr i64 %24, 2
  %cmp27 = icmp sge i64 %shr, %shr26
  br i1 %cmp27, label %cond.true.29, label %cond.false.34

cond.true.29:                                     ; preds = %land.lhs.true
  %25 = load i64, i64* %val1, align 8
  %shr30 = ashr i64 %25, 2
  %26 = load i64, i64* %val2, align 8
  %shr31 = ashr i64 %26, 2
  %cmp32 = icmp sgt i64 %shr30, %shr31
  %conv33 = zext i1 %cmp32 to i32
  br label %cond.end.35

cond.false.34:                                    ; preds = %land.lhs.true, %if.then.20
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.34, %cond.true.29
  %cond36 = phi i32 [ %conv33, %cond.true.29 ], [ -1, %cond.false.34 ]
  store i32 %cond36, i32* %result, align 4
  br label %if.end.44

if.else.37:                                       ; preds = %if.else.15
  %27 = load i64, i64* %val2, align 8
  %and38 = and i64 %27, 7
  %conv39 = trunc i64 %and38 to i32
  %and40 = and i32 %conv39, -5
  %cmp41 = icmp eq i32 %and40, 2
  %cond43 = select i1 %cmp41, i32 1, i32 0
  store i32 %cond43, i32* %result, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.37, %cond.end.35
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.end
  %28 = load i32, i32* %result, align 4
  %tobool = icmp ne i32 %28, 0
  br i1 %tobool, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.45
  %29 = load i32, i32* %result, align 4
  store i32 %29, i32* %retval
  br label %return

if.end.47:                                        ; preds = %if.end.45
  br label %for.inc

for.inc:                                          ; preds = %if.end.47
  %30 = load i32, i32* %i, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.46
  %31 = load i32, i32* %retval
  ret i32 %31
}

declare i64 @AREF(i64, i64) #1

declare i64 @make_uninit_vector(i64) #1

declare void @ASET(i64, i64, i64) #1

declare i64 @font_style_symbolic(i64, i32, i1 zeroext) #1

declare i64 @Ffont_get(i64, i64) #1

declare i64 @Ffont_xlfd_name(i64, i64) #1

declare i64 @Fcons(i64, i64) #1

declare i64 @unbind_to(i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fx_list_fonts(i64 %pattern, i64 %face, i64 %frame, i64 %maximum, i64 %width) #0 {
entry:
  %retval = alloca i64, align 8
  %pattern.addr = alloca i64, align 8
  %face.addr = alloca i64, align 8
  %frame.addr = alloca i64, align 8
  %maximum.addr = alloca i64, align 8
  %width.addr = alloca i64, align 8
  %f = alloca %struct.frame*, align 8
  %size = alloca i32, align 4
  %avgwidth = alloca i32, align 4
  %face_id = alloca i32, align 4
  %width_face = alloca %struct.face*, align 8
  %font_spec = alloca i64, align 8
  %fonts = alloca i64, align 8
  %tail = alloca i64, align 8
  %font_entity = alloca i64, align 8
  %fontsets = alloca i64, align 8
  %.compoundliteral = alloca [2 x i64], align 8
  store i64 %pattern, i64* %pattern.addr, align 8
  store i64 %face, i64* %face.addr, align 8
  store i64 %frame, i64* %frame.addr, align 8
  store i64 %maximum, i64* %maximum.addr, align 8
  store i64 %width, i64* %width.addr, align 8
  call void @check_window_system(%struct.frame* null)
  %0 = load i64, i64* %pattern.addr, align 8
  call void @CHECK_STRING(i64 %0)
  %1 = load i64, i64* %maximum.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %1, %call
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %maximum.addr, align 8
  call void @CHECK_NATNUM(i64 %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* %width.addr, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp2 = icmp eq i64 %3, %call1
  br i1 %cmp2, label %if.end.8, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %4 = load i64, i64* %width.addr, align 8
  %and = and i64 %4, 7
  %conv = trunc i64 %and to i32
  %and4 = and i32 %conv, -5
  %cmp5 = icmp eq i32 %and4, 2
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.3
  br label %cond.end

cond.false:                                       ; preds = %if.then.3
  %call7 = call i64 @builtin_lisp_symbol(i32 559)
  %5 = load i64, i64* %width.addr, align 8
  %6 = call i64 @wrong_type_argument(i64 %call7, i64 %5) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %7, %cond.true
  br label %if.end.8

if.end.8:                                         ; preds = %cond.end, %if.end
  %8 = load i64, i64* %frame.addr, align 8
  %call9 = call %struct.frame* @decode_live_frame(i64 %8)
  store %struct.frame* %call9, %struct.frame** %f, align 8
  %9 = load %struct.frame*, %struct.frame** %f, align 8
  %output_method = getelementptr inbounds %struct.frame, %struct.frame* %9, i32 0, i32 26
  %10 = bitcast i48* %output_method to i64*
  %bf.load = load i64, i64* %10, align 8
  %bf.lshr = lshr i64 %bf.load, 23
  %bf.clear = and i64 %bf.lshr, 7
  %bf.cast = trunc i64 %bf.clear to i32
  %cmp10 = icmp eq i32 %bf.cast, 2
  br i1 %cmp10, label %if.else, label %if.then.12

if.then.12:                                       ; preds = %if.end.8
  store %struct.frame* null, %struct.frame** %f, align 8
  %call13 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call13, i64* %frame.addr, align 8
  %call14 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call14, i64* %face.addr, align 8
  br label %if.end.16

if.else:                                          ; preds = %if.end.8
  %11 = load %struct.frame*, %struct.frame** %f, align 8
  %12 = bitcast %struct.frame* %11 to i8*
  %call15 = call i64 @make_lisp_ptr(i8* %12, i32 5)
  store i64 %call15, i64* %frame.addr, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.12
  %13 = load i64, i64* %face.addr, align 8
  %call17 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp18 = icmp eq i64 %13, %call17
  br i1 %cmp18, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %if.end.16
  store i32 0, i32* %size, align 4
  br label %if.end.65

if.else.21:                                       ; preds = %if.end.16
  %14 = load %struct.frame*, %struct.frame** %f, align 8
  %15 = load i64, i64* %face.addr, align 8
  %call22 = call i32 @lookup_named_face(%struct.frame* %14, i64 %15, i1 zeroext false)
  store i32 %call22, i32* %face_id, align 4
  %16 = load i32, i32* %face_id, align 4
  %cmp23 = icmp slt i32 %16, 0
  br i1 %cmp23, label %cond.true.25, label %cond.false.26

cond.true.25:                                     ; preds = %if.else.21
  br label %cond.end.44

cond.false.26:                                    ; preds = %if.else.21
  br i1 true, label %cond.true.27, label %cond.false.31

cond.true.27:                                     ; preds = %cond.false.26
  %17 = load i32, i32* %face_id, align 4
  %add = add i32 %17, 0
  %18 = load %struct.frame*, %struct.frame** %f, align 8
  %face_cache = getelementptr inbounds %struct.frame, %struct.frame* %18, i32 0, i32 20
  %19 = load %struct.face_cache*, %struct.face_cache** %face_cache, align 8
  %used = getelementptr inbounds %struct.face_cache, %struct.face_cache* %19, i32 0, i32 4
  %20 = load i32, i32* %used, align 4
  %add28 = add i32 %20, 0
  %cmp29 = icmp ult i32 %add, %add28
  br i1 %cmp29, label %cond.true.40, label %cond.false.42

cond.false.31:                                    ; preds = %cond.false.26
  %21 = load i32, i32* %face_id, align 4
  %conv32 = sext i32 %21 to i64
  %add33 = add i64 %conv32, 0
  %22 = load %struct.frame*, %struct.frame** %f, align 8
  %face_cache34 = getelementptr inbounds %struct.frame, %struct.frame* %22, i32 0, i32 20
  %23 = load %struct.face_cache*, %struct.face_cache** %face_cache34, align 8
  %used35 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %23, i32 0, i32 4
  %24 = load i32, i32* %used35, align 4
  %conv36 = sext i32 %24 to i64
  %add37 = add i64 %conv36, 0
  %cmp38 = icmp ult i64 %add33, %add37
  br i1 %cmp38, label %cond.true.40, label %cond.false.42

cond.true.40:                                     ; preds = %cond.false.31, %cond.true.27
  %25 = load i32, i32* %face_id, align 4
  %idxprom = sext i32 %25 to i64
  %26 = load %struct.frame*, %struct.frame** %f, align 8
  %face_cache41 = getelementptr inbounds %struct.frame, %struct.frame* %26, i32 0, i32 20
  %27 = load %struct.face_cache*, %struct.face_cache** %face_cache41, align 8
  %faces_by_id = getelementptr inbounds %struct.face_cache, %struct.face_cache* %27, i32 0, i32 2
  %28 = load %struct.face**, %struct.face*** %faces_by_id, align 8
  %arrayidx = getelementptr inbounds %struct.face*, %struct.face** %28, i64 %idxprom
  %29 = load %struct.face*, %struct.face** %arrayidx, align 8
  br label %cond.end.43

cond.false.42:                                    ; preds = %cond.false.31, %cond.true.27
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.42, %cond.true.40
  %cond = phi %struct.face* [ %29, %cond.true.40 ], [ null, %cond.false.42 ]
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.end.43, %cond.true.25
  %cond45 = phi %struct.face* [ null, %cond.true.25 ], [ %cond, %cond.end.43 ]
  store %struct.face* %cond45, %struct.face** %width_face, align 8
  %30 = load %struct.face*, %struct.face** %width_face, align 8
  %tobool = icmp ne %struct.face* %30, null
  br i1 %tobool, label %land.lhs.true, label %if.else.50

land.lhs.true:                                    ; preds = %cond.end.44
  %31 = load %struct.face*, %struct.face** %width_face, align 8
  %font = getelementptr inbounds %struct.face, %struct.face* %31, i32 0, i32 10
  %32 = load %struct.font*, %struct.font** %font, align 8
  %tobool46 = icmp ne %struct.font* %32, null
  br i1 %tobool46, label %if.then.47, label %if.else.50

if.then.47:                                       ; preds = %land.lhs.true
  %33 = load %struct.face*, %struct.face** %width_face, align 8
  %font48 = getelementptr inbounds %struct.face, %struct.face* %33, i32 0, i32 10
  %34 = load %struct.font*, %struct.font** %font48, align 8
  %pixel_size = getelementptr inbounds %struct.font, %struct.font* %34, i32 0, i32 4
  %35 = load i32, i32* %pixel_size, align 4
  store i32 %35, i32* %size, align 4
  %36 = load %struct.face*, %struct.face** %width_face, align 8
  %font49 = getelementptr inbounds %struct.face, %struct.face* %36, i32 0, i32 10
  %37 = load %struct.font*, %struct.font** %font49, align 8
  %average_width = getelementptr inbounds %struct.font, %struct.font* %37, i32 0, i32 7
  %38 = load i32, i32* %average_width, align 4
  store i32 %38, i32* %avgwidth, align 4
  br label %if.end.57

if.else.50:                                       ; preds = %land.lhs.true, %cond.end.44
  %39 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %39, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %40 = load %struct.x_output*, %struct.x_output** %x, align 8
  %font51 = getelementptr inbounds %struct.x_output, %struct.x_output* %40, i32 0, i32 25
  %41 = load %struct.font*, %struct.font** %font51, align 8
  %pixel_size52 = getelementptr inbounds %struct.font, %struct.font* %41, i32 0, i32 4
  %42 = load i32, i32* %pixel_size52, align 4
  store i32 %42, i32* %size, align 4
  %43 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data53 = getelementptr inbounds %struct.frame, %struct.frame* %43, i32 0, i32 62
  %x54 = bitcast %union.output_data* %output_data53 to %struct.x_output**
  %44 = load %struct.x_output*, %struct.x_output** %x54, align 8
  %font55 = getelementptr inbounds %struct.x_output, %struct.x_output* %44, i32 0, i32 25
  %45 = load %struct.font*, %struct.font** %font55, align 8
  %average_width56 = getelementptr inbounds %struct.font, %struct.font* %45, i32 0, i32 7
  %46 = load i32, i32* %average_width56, align 4
  store i32 %46, i32* %avgwidth, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.50, %if.then.47
  %47 = load i64, i64* %width.addr, align 8
  %call58 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp59 = icmp eq i64 %47, %call58
  br i1 %cmp59, label %if.end.64, label %if.then.61

if.then.61:                                       ; preds = %if.end.57
  %48 = load i64, i64* %width.addr, align 8
  %shr = ashr i64 %48, 2
  %49 = load i32, i32* %avgwidth, align 4
  %conv62 = sext i32 %49 to i64
  %mul = mul nsw i64 %conv62, %shr
  %conv63 = trunc i64 %mul to i32
  store i32 %conv63, i32* %avgwidth, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.61, %if.end.57
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.then.20
  %50 = load i64, i64* %pattern.addr, align 8
  %call66 = call i64 @font_spec_from_name(i64 %50)
  store i64 %call66, i64* %font_spec, align 8
  %51 = load i64, i64* %font_spec, align 8
  %call67 = call zeroext i1 @FONTP(i64 %51)
  br i1 %call67, label %if.end.69, label %if.then.68

if.then.68:                                       ; preds = %if.end.65
  %52 = load i64, i64* %pattern.addr, align 8
  call void @signal_error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i64 %52) #6
  unreachable

if.end.69:                                        ; preds = %if.end.65
  %53 = load i32, i32* %size, align 4
  %tobool70 = icmp ne i32 %53, 0
  br i1 %tobool70, label %if.then.71, label %if.end.81

if.then.71:                                       ; preds = %if.end.69
  %54 = load i64, i64* %font_spec, align 8
  %call72 = call i64 @builtin_lisp_symbol(i32 118)
  %55 = load i32, i32* %size, align 4
  %conv73 = sext i32 %55 to i64
  %shl = shl i64 %conv73, 2
  %add74 = add i64 %shl, 2
  %call75 = call i64 @Ffont_put(i64 %54, i64 %call72, i64 %add74)
  %56 = load i64, i64* %font_spec, align 8
  %call76 = call i64 @builtin_lisp_symbol(i32 12)
  %57 = load i32, i32* %avgwidth, align 4
  %conv77 = sext i32 %57 to i64
  %shl78 = shl i64 %conv77, 2
  %add79 = add i64 %shl78, 2
  %call80 = call i64 @Ffont_put(i64 %56, i64 %call76, i64 %add79)
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.71, %if.end.69
  %58 = load i64, i64* %font_spec, align 8
  %59 = load i64, i64* %frame.addr, align 8
  %60 = load i64, i64* %maximum.addr, align 8
  %61 = load i64, i64* %font_spec, align 8
  %call82 = call i64 @Flist_fonts(i64 %58, i64 %59, i64 %60, i64 %61)
  store i64 %call82, i64* %fonts, align 8
  %62 = load i64, i64* %fonts, align 8
  store i64 %62, i64* %tail, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.81
  %63 = load i64, i64* %tail, align 8
  %and83 = and i64 %63, 7
  %conv84 = trunc i64 %and83 to i32
  %cmp85 = icmp eq i32 %conv84, 3
  br i1 %cmp85, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %64 = load i64, i64* %tail, align 8
  %sub = sub nsw i64 %64, 3
  %65 = inttoptr i64 %sub to i8*
  %66 = bitcast i8* %65 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %66, i32 0, i32 0
  %67 = load i64, i64* %car, align 8
  store i64 %67, i64* %font_entity, align 8
  %68 = load i64, i64* %font_entity, align 8
  %call87 = call i64 @AREF(i64 %68, i64 8)
  %call88 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp89 = icmp eq i64 %call87, %call88
  br i1 %cmp89, label %land.lhs.true.95, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %69 = load i64, i64* %font_entity, align 8
  %call91 = call i64 @AREF(i64 %69, i64 8)
  %shr92 = ashr i64 %call91, 2
  %cmp93 = icmp eq i64 %shr92, 0
  br i1 %cmp93, label %land.lhs.true.95, label %if.end.103

land.lhs.true.95:                                 ; preds = %lor.lhs.false, %for.body
  %70 = load i64, i64* %font_spec, align 8
  %call96 = call i64 @AREF(i64 %70, i64 8)
  %call97 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp98 = icmp eq i64 %call96, %call97
  br i1 %cmp98, label %if.end.103, label %if.then.100

if.then.100:                                      ; preds = %land.lhs.true.95
  %71 = load i64, i64* %font_entity, align 8
  %call101 = call i64 @copy_font_spec(i64 %71)
  store i64 %call101, i64* %font_entity, align 8
  %72 = load i64, i64* %font_entity, align 8
  %73 = load i64, i64* %font_spec, align 8
  %call102 = call i64 @AREF(i64 %73, i64 8)
  call void @ASET(i64 %72, i64 8, i64 %call102)
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.100, %land.lhs.true.95, %lor.lhs.false
  %74 = load i64, i64* %tail, align 8
  %75 = load i64, i64* %font_entity, align 8
  %call104 = call i64 @builtin_lisp_symbol(i32 0)
  %call105 = call i64 @Ffont_xlfd_name(i64 %75, i64 %call104)
  call void @XSETCAR(i64 %74, i64 %call105)
  br label %for.inc

for.inc:                                          ; preds = %if.end.103
  %76 = load i64, i64* %tail, align 8
  %sub106 = sub nsw i64 %76, 3
  %77 = inttoptr i64 %sub106 to i8*
  %78 = bitcast i8* %77 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %78, i32 0, i32 1
  %cdr = bitcast %union.anon.10* %u to i64*
  %79 = load i64, i64* %cdr, align 8
  store i64 %79, i64* %tail, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %80 = load i64, i64* %frame.addr, align 8
  %call107 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp108 = icmp eq i64 %80, %call107
  br i1 %cmp108, label %if.then.110, label %if.end.111

if.then.110:                                      ; preds = %for.end
  %81 = load i64, i64* %fonts, align 8
  store i64 %81, i64* %retval
  br label %return

if.end.111:                                       ; preds = %for.end
  %82 = load %struct.frame*, %struct.frame** %f, align 8
  %83 = load i64, i64* %pattern.addr, align 8
  %84 = load i32, i32* %size, align 4
  %call112 = call i64 @list_fontsets(%struct.frame* %82, i64 %83, i32 %84)
  store i64 %call112, i64* %fontsets, align 8
  %arrayinit.begin = getelementptr inbounds [2 x i64], [2 x i64]* %.compoundliteral, i64 0, i64 0
  %85 = load i64, i64* %fonts, align 8
  store i64 %85, i64* %arrayinit.begin
  %arrayinit.element = getelementptr inbounds i64, i64* %arrayinit.begin, i64 1
  %86 = load i64, i64* %fontsets, align 8
  store i64 %86, i64* %arrayinit.element
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %.compoundliteral, i32 0, i32 0
  %call113 = call i64 @Fnconc(i64 2, i64* %arraydecay)
  store i64 %call113, i64* %retval
  br label %return

return:                                           ; preds = %if.end.111, %if.then.110
  %87 = load i64, i64* %retval
  ret i64 %87
}

declare void @check_window_system(%struct.frame*) #1

declare void @CHECK_NATNUM(i64) #1

; Function Attrs: noreturn
declare i64 @wrong_type_argument(i64, i64) #2

; Function Attrs: nounwind uwtable
define i32 @lookup_named_face(%struct.frame* %f, i64 %symbol, i1 zeroext %signal_p) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct.frame*, align 8
  %symbol.addr = alloca i64, align 8
  %signal_p.addr = alloca i8, align 1
  %attrs = alloca [19 x i64], align 16
  %symbol_attrs = alloca [19 x i64], align 16
  %default_face = alloca %struct.face*, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %symbol, i64* %symbol.addr, align 8
  %frombool = zext i1 %signal_p to i8
  store i8 %frombool, i8* %signal_p.addr, align 1
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %face_cache = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 20
  %1 = load %struct.face_cache*, %struct.face_cache** %face_cache, align 8
  %used = getelementptr inbounds %struct.face_cache, %struct.face_cache* %1, i32 0, i32 4
  %2 = load i32, i32* %used, align 4
  %add = add i32 %2, 0
  %cmp = icmp ult i32 0, %add
  br i1 %cmp, label %cond.true.6, label %cond.false.8

cond.false:                                       ; preds = %entry
  %3 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %face_cache1 = getelementptr inbounds %struct.frame, %struct.frame* %3, i32 0, i32 20
  %4 = load %struct.face_cache*, %struct.face_cache** %face_cache1, align 8
  %used2 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %4, i32 0, i32 4
  %5 = load i32, i32* %used2, align 4
  %conv = sext i32 %5 to i64
  %add3 = add i64 %conv, 0
  %cmp4 = icmp ult i64 0, %add3
  br i1 %cmp4, label %cond.true.6, label %cond.false.8

cond.true.6:                                      ; preds = %cond.false, %cond.true
  %6 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %face_cache7 = getelementptr inbounds %struct.frame, %struct.frame* %6, i32 0, i32 20
  %7 = load %struct.face_cache*, %struct.face_cache** %face_cache7, align 8
  %faces_by_id = getelementptr inbounds %struct.face_cache, %struct.face_cache* %7, i32 0, i32 2
  %8 = load %struct.face**, %struct.face*** %faces_by_id, align 8
  %arrayidx = getelementptr inbounds %struct.face*, %struct.face** %8, i64 0
  %9 = load %struct.face*, %struct.face** %arrayidx, align 8
  br label %cond.end

cond.false.8:                                     ; preds = %cond.false, %cond.true
  br label %cond.end

cond.end:                                         ; preds = %cond.false.8, %cond.true.6
  %cond = phi %struct.face* [ %9, %cond.true.6 ], [ null, %cond.false.8 ]
  store %struct.face* %cond, %struct.face** %default_face, align 8
  %10 = load %struct.face*, %struct.face** %default_face, align 8
  %cmp9 = icmp eq %struct.face* %10, null
  br i1 %cmp9, label %if.then, label %if.end.36

if.then:                                          ; preds = %cond.end
  %11 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %call = call zeroext i1 @realize_basic_faces(%struct.frame* %11)
  br i1 %call, label %if.end, label %if.then.11

if.then.11:                                       ; preds = %if.then
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br i1 true, label %cond.true.12, label %cond.false.18

cond.true.12:                                     ; preds = %if.end
  %12 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %face_cache13 = getelementptr inbounds %struct.frame, %struct.frame* %12, i32 0, i32 20
  %13 = load %struct.face_cache*, %struct.face_cache** %face_cache13, align 8
  %used14 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %13, i32 0, i32 4
  %14 = load i32, i32* %used14, align 4
  %add15 = add i32 %14, 0
  %cmp16 = icmp ult i32 0, %add15
  br i1 %cmp16, label %cond.true.25, label %cond.false.29

cond.false.18:                                    ; preds = %if.end
  %15 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %face_cache19 = getelementptr inbounds %struct.frame, %struct.frame* %15, i32 0, i32 20
  %16 = load %struct.face_cache*, %struct.face_cache** %face_cache19, align 8
  %used20 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %16, i32 0, i32 4
  %17 = load i32, i32* %used20, align 4
  %conv21 = sext i32 %17 to i64
  %add22 = add i64 %conv21, 0
  %cmp23 = icmp ult i64 0, %add22
  br i1 %cmp23, label %cond.true.25, label %cond.false.29

cond.true.25:                                     ; preds = %cond.false.18, %cond.true.12
  %18 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %face_cache26 = getelementptr inbounds %struct.frame, %struct.frame* %18, i32 0, i32 20
  %19 = load %struct.face_cache*, %struct.face_cache** %face_cache26, align 8
  %faces_by_id27 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %19, i32 0, i32 2
  %20 = load %struct.face**, %struct.face*** %faces_by_id27, align 8
  %arrayidx28 = getelementptr inbounds %struct.face*, %struct.face** %20, i64 0
  %21 = load %struct.face*, %struct.face** %arrayidx28, align 8
  br label %cond.end.30

cond.false.29:                                    ; preds = %cond.false.18, %cond.true.12
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.29, %cond.true.25
  %cond31 = phi %struct.face* [ %21, %cond.true.25 ], [ null, %cond.false.29 ]
  store %struct.face* %cond31, %struct.face** %default_face, align 8
  %22 = load %struct.face*, %struct.face** %default_face, align 8
  %cmp32 = icmp eq %struct.face* %22, null
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %cond.end.30
  call void @emacs_abort() #6
  unreachable

if.end.35:                                        ; preds = %cond.end.30
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %cond.end
  %23 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %24 = load i64, i64* %symbol.addr, align 8
  %arraydecay = getelementptr inbounds [19 x i64], [19 x i64]* %symbol_attrs, i32 0, i32 0
  %25 = load i8, i8* %signal_p.addr, align 1
  %tobool = trunc i8 %25 to i1
  %call37 = call zeroext i1 @get_lface_attributes(%struct.frame* %23, i64 %24, i64* %arraydecay, i1 zeroext %tobool, %struct.named_merge_point* null)
  br i1 %call37, label %if.end.39, label %if.then.38

if.then.38:                                       ; preds = %if.end.36
  store i32 -1, i32* %retval
  br label %return

if.end.39:                                        ; preds = %if.end.36
  %26 = bitcast [19 x i64]* %attrs to i8*
  %27 = load %struct.face*, %struct.face** %default_face, align 8
  %lface = getelementptr inbounds %struct.face, %struct.face* %27, i32 0, i32 0
  %28 = bitcast [19 x i64]* %lface to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %28, i64 152, i32 8, i1 false)
  %29 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %arraydecay40 = getelementptr inbounds [19 x i64], [19 x i64]* %symbol_attrs, i32 0, i32 0
  %arraydecay41 = getelementptr inbounds [19 x i64], [19 x i64]* %attrs, i32 0, i32 0
  call void @merge_face_vectors(%struct.frame* %29, i64* %arraydecay40, i64* %arraydecay41, %struct.named_merge_point* null)
  %30 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %arraydecay42 = getelementptr inbounds [19 x i64], [19 x i64]* %attrs, i32 0, i32 0
  %call43 = call i32 @lookup_face(%struct.frame* %30, i64* %arraydecay42)
  store i32 %call43, i32* %retval
  br label %return

return:                                           ; preds = %if.end.39, %if.then.38, %if.then.11
  %31 = load i32, i32* %retval
  ret i32 %31
}

declare i64 @font_spec_from_name(i64) #1

declare zeroext i1 @FONTP(i64) #1

; Function Attrs: noreturn
declare void @signal_error(i8*, i64) #2

declare i64 @Ffont_put(i64, i64, i64) #1

declare i64 @Flist_fonts(i64, i64, i64, i64) #1

declare i64 @copy_font_spec(i64) #1

declare void @XSETCAR(i64, i64) #1

declare i64 @list_fontsets(%struct.frame*, i64, i32) #1

declare i64 @Fnconc(i64, i64*) #1

; Function Attrs: nounwind uwtable
define i64 @Finternal_make_lisp_face(i64 %face, i64 %frame) #0 {
entry:
  %face.addr = alloca i64, align 8
  %frame.addr = alloca i64, align 8
  %global_lface = alloca i64, align 8
  %lface = alloca i64, align 8
  %f = alloca %struct.frame*, align 8
  %i = alloca i32, align 4
  store i64 %face, i64* %face.addr, align 8
  store i64 %frame, i64* %frame.addr, align 8
  %0 = load i64, i64* %face.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 897)
  %1 = load i64, i64* %face.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call, i64 %1) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i64, i64* %face.addr, align 8
  %call2 = call i64 @lface_from_face_name(%struct.frame* null, i64 %4, i1 zeroext false)
  store i64 %call2, i64* %global_lface, align 8
  %5 = load i64, i64* %frame.addr, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp4 = icmp eq i64 %5, %call3
  br i1 %cmp4, label %if.else, label %if.then

if.then:                                          ; preds = %cond.end
  %6 = load i64, i64* %frame.addr, align 8
  %call6 = call zeroext i1 @FRAMEP(i64 %6)
  br i1 %call6, label %land.lhs.true, label %cond.false.11

land.lhs.true:                                    ; preds = %if.then
  %7 = load i64, i64* %frame.addr, align 8
  %sub = sub nsw i64 %7, 5
  %8 = inttoptr i64 %sub to i8*
  %9 = bitcast i8* %8 to %struct.frame*
  %terminal = getelementptr inbounds %struct.frame, %struct.frame* %9, i32 0, i32 61
  %10 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %cmp8 = icmp ne %struct.terminal* %10, null
  br i1 %cmp8, label %cond.true.10, label %cond.false.11

cond.true.10:                                     ; preds = %land.lhs.true
  br label %cond.end.13

cond.false.11:                                    ; preds = %land.lhs.true, %if.then
  %call12 = call i64 @builtin_lisp_symbol(i32 458)
  %11 = load i64, i64* %frame.addr, align 8
  %12 = call i64 @wrong_type_argument(i64 %call12, i64 %11) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end.13

cond.end.13:                                      ; preds = %13, %cond.true.10
  %14 = load i64, i64* %frame.addr, align 8
  %sub14 = sub nsw i64 %14, 5
  %15 = inttoptr i64 %sub14 to i8*
  %16 = bitcast i8* %15 to %struct.frame*
  store %struct.frame* %16, %struct.frame** %f, align 8
  %17 = load %struct.frame*, %struct.frame** %f, align 8
  %18 = load i64, i64* %face.addr, align 8
  %call15 = call i64 @lface_from_face_name(%struct.frame* %17, i64 %18, i1 zeroext false)
  store i64 %call15, i64* %lface, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end
  store %struct.frame* null, %struct.frame** %f, align 8
  %call16 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call16, i64* %lface, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end.13
  %19 = load i64, i64* %global_lface, align 8
  %call17 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp18 = icmp eq i64 %19, %call17
  br i1 %cmp18, label %if.then.20, label %if.else.35

if.then.20:                                       ; preds = %if.end
  %call21 = call i64 @builtin_lisp_symbol(i32 975)
  %call22 = call i64 @Fmake_vector(i64 78, i64 %call21)
  store i64 %call22, i64* %global_lface, align 8
  %20 = load i64, i64* %global_lface, align 8
  %call23 = call i64 @builtin_lisp_symbol(i32 397)
  call void @ASET(i64 %20, i64 0, i64 %call23)
  %21 = load i64, i64* %face.addr, align 8
  %22 = load i64, i64* %global_lface, align 8
  %call24 = call i64 @Fcons(i64 %21, i64 %22)
  %23 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 90), align 8
  %call25 = call i64 @Fcons(i64 %call24, i64 %23)
  store i64 %call25, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 90), align 8
  %24 = load i32, i32* @next_lface_id, align 4
  %conv26 = sext i32 %24 to i64
  %25 = load i64, i64* @lface_id_to_name_size, align 8
  %cmp27 = icmp eq i64 %conv26, %25
  br i1 %cmp27, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %if.then.20
  %26 = load i64*, i64** @lface_id_to_name, align 8
  %27 = bitcast i64* %26 to i8*
  %call30 = call i8* @xpalloc(i8* %27, i64* @lface_id_to_name_size, i64 1, i64 1048575, i64 8)
  %28 = bitcast i8* %call30 to i64*
  store i64* %28, i64** @lface_id_to_name, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %if.then.20
  %29 = load i64, i64* %face.addr, align 8
  %30 = load i32, i32* @next_lface_id, align 4
  %idxprom = sext i32 %30 to i64
  %31 = load i64*, i64** @lface_id_to_name, align 8
  %arrayidx = getelementptr inbounds i64, i64* %31, i64 %idxprom
  store i64 %29, i64* %arrayidx, align 8
  %32 = load i64, i64* %face.addr, align 8
  %call32 = call i64 @builtin_lisp_symbol(i32 397)
  %33 = load i32, i32* @next_lface_id, align 4
  %conv33 = sext i32 %33 to i64
  %shl = shl i64 %conv33, 2
  %add = add i64 %shl, 2
  %call34 = call i64 @Fput(i64 %32, i64 %call32, i64 %add)
  %34 = load i32, i32* @next_lface_id, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* @next_lface_id, align 4
  br label %if.end.45

if.else.35:                                       ; preds = %if.end
  %35 = load %struct.frame*, %struct.frame** %f, align 8
  %cmp36 = icmp eq %struct.frame* %35, null
  br i1 %cmp36, label %if.then.38, label %if.end.44

if.then.38:                                       ; preds = %if.else.35
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.38
  %36 = load i32, i32* %i, align 4
  %cmp39 = icmp slt i32 %36, 19
  br i1 %cmp39, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %37 = load i64, i64* %global_lface, align 8
  %38 = load i32, i32* %i, align 4
  %conv41 = sext i32 %38 to i64
  %call42 = call i64 @builtin_lisp_symbol(i32 975)
  call void @ASET(i64 %37, i64 %conv41, i64 %call42)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load i32, i32* %i, align 4
  %inc43 = add nsw i32 %39, 1
  store i32 %inc43, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.44

if.end.44:                                        ; preds = %for.end, %if.else.35
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.end.31
  %40 = load %struct.frame*, %struct.frame** %f, align 8
  %tobool = icmp ne %struct.frame* %40, null
  br i1 %tobool, label %if.then.46, label %if.else.67

if.then.46:                                       ; preds = %if.end.45
  %41 = load i64, i64* %lface, align 8
  %call47 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp48 = icmp eq i64 %41, %call47
  br i1 %cmp48, label %if.then.50, label %if.else.56

if.then.50:                                       ; preds = %if.then.46
  %call51 = call i64 @builtin_lisp_symbol(i32 975)
  %call52 = call i64 @Fmake_vector(i64 78, i64 %call51)
  store i64 %call52, i64* %lface, align 8
  %42 = load i64, i64* %lface, align 8
  %call53 = call i64 @builtin_lisp_symbol(i32 397)
  call void @ASET(i64 %42, i64 0, i64 %call53)
  %43 = load %struct.frame*, %struct.frame** %f, align 8
  %44 = load i64, i64* %face.addr, align 8
  %45 = load i64, i64* %lface, align 8
  %call54 = call i64 @Fcons(i64 %44, i64 %45)
  %46 = load %struct.frame*, %struct.frame** %f, align 8
  %face_alist = getelementptr inbounds %struct.frame, %struct.frame* %46, i32 0, i32 12
  %47 = load i64, i64* %face_alist, align 8
  %call55 = call i64 @Fcons(i64 %call54, i64 %47)
  call void @fset_face_alist(%struct.frame* %43, i64 %call55)
  br label %if.end.66

if.else.56:                                       ; preds = %if.then.46
  store i32 1, i32* %i, align 4
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.63, %if.else.56
  %48 = load i32, i32* %i, align 4
  %cmp58 = icmp slt i32 %48, 19
  br i1 %cmp58, label %for.body.60, label %for.end.65

for.body.60:                                      ; preds = %for.cond.57
  %49 = load i64, i64* %lface, align 8
  %50 = load i32, i32* %i, align 4
  %conv61 = sext i32 %50 to i64
  %call62 = call i64 @builtin_lisp_symbol(i32 975)
  call void @ASET(i64 %49, i64 %conv61, i64 %call62)
  br label %for.inc.63

for.inc.63:                                       ; preds = %for.body.60
  %51 = load i32, i32* %i, align 4
  %inc64 = add nsw i32 %51, 1
  store i32 %inc64, i32* %i, align 4
  br label %for.cond.57

for.end.65:                                       ; preds = %for.cond.57
  br label %if.end.66

if.end.66:                                        ; preds = %for.end.65, %if.then.50
  br label %if.end.68

if.else.67:                                       ; preds = %if.end.45
  %52 = load i64, i64* %global_lface, align 8
  store i64 %52, i64* %lface, align 8
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.67, %if.end.66
  %53 = load i64, i64* %face.addr, align 8
  %call69 = call i64 @builtin_lisp_symbol(i32 399)
  %call70 = call i64 @Fget(i64 %53, i64 %call69)
  %call71 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp72 = icmp eq i64 %call70, %call71
  br i1 %cmp72, label %if.then.74, label %if.end.79

if.then.74:                                       ; preds = %if.end.68
  %54 = load %struct.frame*, %struct.frame** %f, align 8
  %tobool75 = icmp ne %struct.frame* %54, null
  br i1 %tobool75, label %if.then.76, label %if.else.77

if.then.76:                                       ; preds = %if.then.74
  %55 = load %struct.frame*, %struct.frame** %f, align 8
  %face_change = getelementptr inbounds %struct.frame, %struct.frame* %55, i32 0, i32 26
  %56 = bitcast i48* %face_change to i64*
  %bf.load = load i64, i64* %56, align 8
  %bf.clear = and i64 %bf.load, -1099511627777
  %bf.set = or i64 %bf.clear, 1099511627776
  store i64 %bf.set, i64* %56, align 8
  %57 = load %struct.frame*, %struct.frame** %f, align 8
  call void @fset_redisplay(%struct.frame* %57)
  br label %if.end.78

if.else.77:                                       ; preds = %if.then.74
  store i8 1, i8* @face_change, align 1
  store i32 54, i32* @windows_or_buffers_changed, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.77, %if.then.76
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.end.68
  %58 = load i64, i64* %lface, align 8
  ret i64 %58
}

; Function Attrs: nounwind uwtable
define internal i64 @lface_from_face_name(%struct.frame* %f, i64 %face_name, i1 zeroext %signal_p) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %face_name.addr = alloca i64, align 8
  %signal_p.addr = alloca i8, align 1
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %face_name, i64* %face_name.addr, align 8
  %frombool = zext i1 %signal_p to i8
  store i8 %frombool, i8* %signal_p.addr, align 1
  %0 = load i64, i64* %face_name.addr, align 8
  %1 = load i8, i8* %signal_p.addr, align 1
  %tobool = trunc i8 %1 to i1
  %call = call i64 @resolve_face_name(i64 %0, i1 zeroext %tobool)
  store i64 %call, i64* %face_name.addr, align 8
  %2 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %3 = load i64, i64* %face_name.addr, align 8
  %4 = load i8, i8* %signal_p.addr, align 1
  %tobool1 = trunc i8 %4 to i1
  %call2 = call i64 @lface_from_face_name_no_resolve(%struct.frame* %2, i64 %3, i1 zeroext %tobool1)
  ret i64 %call2
}

declare zeroext i1 @FRAMEP(i64) #1

declare i64 @Fmake_vector(i64, i64) #1

declare i8* @xpalloc(i8*, i64*, i64, i64, i64) #1

declare i64 @Fput(i64, i64, i64) #1

declare void @fset_face_alist(%struct.frame*, i64) #1

declare i64 @Fget(i64, i64) #1

declare void @fset_redisplay(%struct.frame*) #1

; Function Attrs: nounwind uwtable
define i64 @Finternal_lisp_face_p(i64 %face, i64 %frame) #0 {
entry:
  %face.addr = alloca i64, align 8
  %frame.addr = alloca i64, align 8
  %lface = alloca i64, align 8
  store i64 %face, i64* %face.addr, align 8
  store i64 %frame, i64* %frame.addr, align 8
  %0 = load i64, i64* %face.addr, align 8
  %call = call i64 @resolve_face_name(i64 %0, i1 zeroext true)
  store i64 %call, i64* %face.addr, align 8
  %1 = load i64, i64* %frame.addr, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %1, %call1
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %frame.addr, align 8
  %call2 = call zeroext i1 @FRAMEP(i64 %2)
  br i1 %call2, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.then
  %3 = load i64, i64* %frame.addr, align 8
  %sub = sub nsw i64 %3, 5
  %4 = inttoptr i64 %sub to i8*
  %5 = bitcast i8* %4 to %struct.frame*
  %terminal = getelementptr inbounds %struct.frame, %struct.frame* %5, i32 0, i32 61
  %6 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %cmp3 = icmp ne %struct.terminal* %6, null
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.then
  %call4 = call i64 @builtin_lisp_symbol(i32 458)
  %7 = load i64, i64* %frame.addr, align 8
  %8 = call i64 @wrong_type_argument(i64 %call4, i64 %7) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %9, %cond.true
  %10 = load i64, i64* %frame.addr, align 8
  %sub5 = sub nsw i64 %10, 5
  %11 = inttoptr i64 %sub5 to i8*
  %12 = bitcast i8* %11 to %struct.frame*
  %13 = load i64, i64* %face.addr, align 8
  %call6 = call i64 @lface_from_face_name(%struct.frame* %12, i64 %13, i1 zeroext false)
  store i64 %call6, i64* %lface, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %14 = load i64, i64* %face.addr, align 8
  %call7 = call i64 @lface_from_face_name(%struct.frame* null, i64 %14, i1 zeroext false)
  store i64 %call7, i64* %lface, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end
  %15 = load i64, i64* %lface, align 8
  ret i64 %15
}

; Function Attrs: nounwind uwtable
define internal i64 @resolve_face_name(i64 %face_name, i1 zeroext %signal_p) #0 {
entry:
  %retval = alloca i64, align 8
  %face_name.addr = alloca i64, align 8
  %signal_p.addr = alloca i8, align 1
  %orig_face = alloca i64, align 8
  %tortoise = alloca i64, align 8
  %hare = alloca i64, align 8
  store i64 %face_name, i64* %face_name.addr, align 8
  %frombool = zext i1 %signal_p to i8
  store i8 %frombool, i8* %signal_p.addr, align 1
  %0 = load i64, i64* %face_name.addr, align 8
  %call = call zeroext i1 @STRINGP(i64 %0)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %face_name.addr, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %call2 = call i64 @Fintern(i64 %1, i64 %call1)
  store i64 %call2, i64* %face_name.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, i64* %face_name.addr, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %2, %call3
  br i1 %cmp, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load i64, i64* %face_name.addr, align 8
  %and = and i64 %3, 7
  %conv = trunc i64 %and to i32
  %cmp4 = icmp eq i32 %conv, 0
  br i1 %cmp4, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %lor.lhs.false, %if.end
  %4 = load i64, i64* %face_name.addr, align 8
  store i64 %4, i64* %retval
  br label %return

if.end.7:                                         ; preds = %lor.lhs.false
  %5 = load i64, i64* %face_name.addr, align 8
  store i64 %5, i64* %orig_face, align 8
  %6 = load i64, i64* %face_name.addr, align 8
  store i64 %6, i64* %hare, align 8
  store i64 %6, i64* %tortoise, align 8
  br label %while.body

while.body:                                       ; preds = %if.end.7, %if.end.41
  %7 = load i64, i64* %hare, align 8
  store i64 %7, i64* %face_name.addr, align 8
  %8 = load i64, i64* %hare, align 8
  %call8 = call i64 @builtin_lisp_symbol(i32 398)
  %call9 = call i64 @Fget(i64 %8, i64 %call8)
  store i64 %call9, i64* %hare, align 8
  %9 = load i64, i64* %hare, align 8
  %call10 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp11 = icmp eq i64 %9, %call10
  br i1 %cmp11, label %if.then.18, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %while.body
  %10 = load i64, i64* %hare, align 8
  %and14 = and i64 %10, 7
  %conv15 = trunc i64 %and14 to i32
  %cmp16 = icmp eq i32 %conv15, 0
  br i1 %cmp16, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %lor.lhs.false.13, %while.body
  br label %while.end

if.end.19:                                        ; preds = %lor.lhs.false.13
  %11 = load i64, i64* %hare, align 8
  store i64 %11, i64* %face_name.addr, align 8
  %12 = load i64, i64* %hare, align 8
  %call20 = call i64 @builtin_lisp_symbol(i32 398)
  %call21 = call i64 @Fget(i64 %12, i64 %call20)
  store i64 %call21, i64* %hare, align 8
  %13 = load i64, i64* %hare, align 8
  %call22 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp23 = icmp eq i64 %13, %call22
  br i1 %cmp23, label %if.then.30, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %if.end.19
  %14 = load i64, i64* %hare, align 8
  %and26 = and i64 %14, 7
  %conv27 = trunc i64 %and26 to i32
  %cmp28 = icmp eq i32 %conv27, 0
  br i1 %cmp28, label %if.end.31, label %if.then.30

if.then.30:                                       ; preds = %lor.lhs.false.25, %if.end.19
  br label %while.end

if.end.31:                                        ; preds = %lor.lhs.false.25
  %15 = load i64, i64* %tortoise, align 8
  %call32 = call i64 @builtin_lisp_symbol(i32 398)
  %call33 = call i64 @Fget(i64 %15, i64 %call32)
  store i64 %call33, i64* %tortoise, align 8
  %16 = load i64, i64* %hare, align 8
  %17 = load i64, i64* %tortoise, align 8
  %cmp34 = icmp eq i64 %16, %17
  br i1 %cmp34, label %if.then.36, label %if.end.41

if.then.36:                                       ; preds = %if.end.31
  %18 = load i8, i8* %signal_p.addr, align 1
  %tobool = trunc i8 %18 to i1
  br i1 %tobool, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %if.then.36
  %call38 = call i64 @builtin_lisp_symbol(i32 265)
  %19 = load i64, i64* %orig_face, align 8
  call void @xsignal1(i64 %call38, i64 %19) #6
  unreachable

if.end.39:                                        ; preds = %if.then.36
  %call40 = call i64 @builtin_lisp_symbol(i32 324)
  store i64 %call40, i64* %retval
  br label %return

if.end.41:                                        ; preds = %if.end.31
  br label %while.body

while.end:                                        ; preds = %if.then.30, %if.then.18
  %20 = load i64, i64* %face_name.addr, align 8
  store i64 %20, i64* %retval
  br label %return

return:                                           ; preds = %while.end, %if.end.39, %if.then.6
  %21 = load i64, i64* %retval
  ret i64 %21
}

; Function Attrs: nounwind uwtable
define i64 @Finternal_copy_lisp_face(i64 %from, i64 %to, i64 %frame, i64 %new_frame) #0 {
entry:
  %from.addr = alloca i64, align 8
  %to.addr = alloca i64, align 8
  %frame.addr = alloca i64, align 8
  %new_frame.addr = alloca i64, align 8
  %lface = alloca i64, align 8
  %copy = alloca i64, align 8
  %f = alloca %struct.frame*, align 8
  store i64 %from, i64* %from.addr, align 8
  store i64 %to, i64* %to.addr, align 8
  store i64 %frame, i64* %frame.addr, align 8
  store i64 %new_frame, i64* %new_frame.addr, align 8
  %0 = load i64, i64* %from.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 897)
  %1 = load i64, i64* %from.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call, i64 %1) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i64, i64* %to.addr, align 8
  %and2 = and i64 %4, 7
  %conv3 = trunc i64 %and2 to i32
  %cmp4 = icmp eq i32 %conv3, 0
  br i1 %cmp4, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.end
  br label %cond.end.9

cond.false.7:                                     ; preds = %cond.end
  %call8 = call i64 @builtin_lisp_symbol(i32 897)
  %5 = load i64, i64* %to.addr, align 8
  %6 = call i64 @wrong_type_argument(i64 %call8, i64 %5) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end.9

cond.end.9:                                       ; preds = %7, %cond.true.6
  %8 = load i64, i64* %frame.addr, align 8
  %call10 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp11 = icmp eq i64 %8, %call10
  br i1 %cmp11, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.9
  %9 = load i64, i64* %from.addr, align 8
  %call13 = call i64 @lface_from_face_name(%struct.frame* null, i64 %9, i1 zeroext true)
  store i64 %call13, i64* %lface, align 8
  %10 = load i64, i64* %to.addr, align 8
  %call14 = call i64 @builtin_lisp_symbol(i32 0)
  %call15 = call i64 @Finternal_make_lisp_face(i64 %10, i64 %call14)
  store i64 %call15, i64* %copy, align 8
  store %struct.frame* null, %struct.frame** %f, align 8
  br label %if.end.43

if.else:                                          ; preds = %cond.end.9
  %11 = load i64, i64* %new_frame.addr, align 8
  %call16 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp17 = icmp eq i64 %11, %call16
  br i1 %cmp17, label %if.then.19, label %if.end

if.then.19:                                       ; preds = %if.else
  %12 = load i64, i64* %frame.addr, align 8
  store i64 %12, i64* %new_frame.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.19, %if.else
  %13 = load i64, i64* %frame.addr, align 8
  %call20 = call zeroext i1 @FRAMEP(i64 %13)
  br i1 %call20, label %land.lhs.true, label %cond.false.25

land.lhs.true:                                    ; preds = %if.end
  %14 = load i64, i64* %frame.addr, align 8
  %sub = sub nsw i64 %14, 5
  %15 = inttoptr i64 %sub to i8*
  %16 = bitcast i8* %15 to %struct.frame*
  %terminal = getelementptr inbounds %struct.frame, %struct.frame* %16, i32 0, i32 61
  %17 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %cmp22 = icmp ne %struct.terminal* %17, null
  br i1 %cmp22, label %cond.true.24, label %cond.false.25

cond.true.24:                                     ; preds = %land.lhs.true
  br label %cond.end.27

cond.false.25:                                    ; preds = %land.lhs.true, %if.end
  %call26 = call i64 @builtin_lisp_symbol(i32 458)
  %18 = load i64, i64* %frame.addr, align 8
  %19 = call i64 @wrong_type_argument(i64 %call26, i64 %18) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end.27

cond.end.27:                                      ; preds = %20, %cond.true.24
  %21 = load i64, i64* %new_frame.addr, align 8
  %call28 = call zeroext i1 @FRAMEP(i64 %21)
  br i1 %call28, label %land.lhs.true.30, label %cond.false.36

land.lhs.true.30:                                 ; preds = %cond.end.27
  %22 = load i64, i64* %new_frame.addr, align 8
  %sub31 = sub nsw i64 %22, 5
  %23 = inttoptr i64 %sub31 to i8*
  %24 = bitcast i8* %23 to %struct.frame*
  %terminal32 = getelementptr inbounds %struct.frame, %struct.frame* %24, i32 0, i32 61
  %25 = load %struct.terminal*, %struct.terminal** %terminal32, align 8
  %cmp33 = icmp ne %struct.terminal* %25, null
  br i1 %cmp33, label %cond.true.35, label %cond.false.36

cond.true.35:                                     ; preds = %land.lhs.true.30
  br label %cond.end.38

cond.false.36:                                    ; preds = %land.lhs.true.30, %cond.end.27
  %call37 = call i64 @builtin_lisp_symbol(i32 458)
  %26 = load i64, i64* %new_frame.addr, align 8
  %27 = call i64 @wrong_type_argument(i64 %call37, i64 %26) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end.38

cond.end.38:                                      ; preds = %28, %cond.true.35
  %29 = load i64, i64* %frame.addr, align 8
  %sub39 = sub nsw i64 %29, 5
  %30 = inttoptr i64 %sub39 to i8*
  %31 = bitcast i8* %30 to %struct.frame*
  %32 = load i64, i64* %from.addr, align 8
  %call40 = call i64 @lface_from_face_name(%struct.frame* %31, i64 %32, i1 zeroext true)
  store i64 %call40, i64* %lface, align 8
  %33 = load i64, i64* %to.addr, align 8
  %34 = load i64, i64* %new_frame.addr, align 8
  %call41 = call i64 @Finternal_make_lisp_face(i64 %33, i64 %34)
  store i64 %call41, i64* %copy, align 8
  %35 = load i64, i64* %new_frame.addr, align 8
  %sub42 = sub nsw i64 %35, 5
  %36 = inttoptr i64 %sub42 to i8*
  %37 = bitcast i8* %36 to %struct.frame*
  store %struct.frame* %37, %struct.frame** %f, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %cond.end.38, %if.then
  %38 = load i64, i64* %copy, align 8
  %39 = load i64, i64* %lface, align 8
  %call44 = call %struct.Lisp_Vector* @XVECTOR(i64 %39)
  %contents = getelementptr inbounds %struct.Lisp_Vector, %struct.Lisp_Vector* %call44, i32 0, i32 1
  %arraydecay = getelementptr inbounds [0 x i64], [0 x i64]* %contents, i32 0, i32 0
  call void @vcopy(i64 %38, i64 0, i64* %arraydecay, i64 19)
  %40 = load i64, i64* %to.addr, align 8
  %call45 = call i64 @builtin_lisp_symbol(i32 399)
  %call46 = call i64 @Fget(i64 %40, i64 %call45)
  %call47 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp48 = icmp eq i64 %call46, %call47
  br i1 %cmp48, label %if.then.50, label %if.end.54

if.then.50:                                       ; preds = %if.end.43
  %41 = load %struct.frame*, %struct.frame** %f, align 8
  %tobool = icmp ne %struct.frame* %41, null
  br i1 %tobool, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %if.then.50
  %42 = load %struct.frame*, %struct.frame** %f, align 8
  %face_change = getelementptr inbounds %struct.frame, %struct.frame* %42, i32 0, i32 26
  %43 = bitcast i48* %face_change to i64*
  %bf.load = load i64, i64* %43, align 8
  %bf.clear = and i64 %bf.load, -1099511627777
  %bf.set = or i64 %bf.clear, 1099511627776
  store i64 %bf.set, i64* %43, align 8
  %44 = load %struct.frame*, %struct.frame** %f, align 8
  call void @fset_redisplay(%struct.frame* %44)
  br label %if.end.53

if.else.52:                                       ; preds = %if.then.50
  store i8 1, i8* @face_change, align 1
  store i32 55, i32* @windows_or_buffers_changed, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.52, %if.then.51
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.end.43
  %45 = load i64, i64* %to.addr, align 8
  ret i64 %45
}

declare void @vcopy(i64, i64, i64*, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Finternal_set_lisp_face_attribute(i64 %face, i64 %attr, i64 %value, i64 %frame) #0 {
entry:
  %retval = alloca i64, align 8
  %face.addr = alloca i64, align 8
  %attr.addr = alloca i64, align 8
  %value.addr = alloca i64, align 8
  %frame.addr = alloca i64, align 8
  %lface = alloca i64, align 8
  %old_value = alloca i64, align 8
  %prop_index = alloca i32, align 4
  %f = alloca %struct.frame*, align 8
  %tail = alloca i64, align 8
  %test = alloca i64, align 8
  %valid_p = alloca i8, align 1
  %key = alloca i64, align 8
  %val = alloca i64, align 8
  %list = alloca i64, align 8
  %valid_p371 = alloca i8, align 1
  %tem = alloca i64, align 8
  %k = alloca i64, align 8
  %v = alloca i64, align 8
  %f1 = alloca %struct.frame*, align 8
  %name = alloca i64, align 8
  %fontset = alloca i32, align 4
  %attrs = alloca i64*, align 8
  %font_object = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tail768 = alloca i64, align 8
  %param = alloca i64, align 8
  %f987 = alloca %struct.frame*, align 8
  %cons = alloca i64, align 8
  store i64 %face, i64* %face.addr, align 8
  store i64 %attr, i64* %attr.addr, align 8
  store i64 %value, i64* %value.addr, align 8
  store i64 %frame, i64* %frame.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %old_value, align 8
  store i32 0, i32* %prop_index, align 4
  %0 = load i64, i64* %face.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call2 = call i64 @builtin_lisp_symbol(i32 897)
  %1 = load i64, i64* %face.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call2, i64 %1) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i64, i64* %attr.addr, align 8
  %and3 = and i64 %4, 7
  %conv4 = trunc i64 %and3 to i32
  %cmp5 = icmp eq i32 %conv4, 0
  br i1 %cmp5, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %cond.end
  br label %cond.end.10

cond.false.8:                                     ; preds = %cond.end
  %call9 = call i64 @builtin_lisp_symbol(i32 897)
  %5 = load i64, i64* %attr.addr, align 8
  %6 = call i64 @wrong_type_argument(i64 %call9, i64 %5) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end.10

cond.end.10:                                      ; preds = %7, %cond.true.7
  %8 = load i64, i64* %face.addr, align 8
  %call11 = call i64 @resolve_face_name(i64 %8, i1 zeroext true)
  store i64 %call11, i64* %face.addr, align 8
  %9 = load i64, i64* %frame.addr, align 8
  %and12 = and i64 %9, 7
  %conv13 = trunc i64 %and12 to i32
  %and14 = and i32 %conv13, -5
  %cmp15 = icmp eq i32 %and14, 2
  br i1 %cmp15, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end.10
  %10 = load i64, i64* %frame.addr, align 8
  %shr = ashr i64 %10, 2
  %cmp17 = icmp eq i64 %shr, 0
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %11 = load i64, i64* %face.addr, align 8
  %12 = load i64, i64* %attr.addr, align 8
  %13 = load i64, i64* %value.addr, align 8
  %call19 = call i64 @builtin_lisp_symbol(i32 901)
  %call20 = call i64 @Finternal_set_lisp_face_attribute(i64 %11, i64 %12, i64 %13, i64 %call19)
  %14 = load i64, i64* @Vframe_list, align 8
  store i64 %14, i64* %tail, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %15 = load i64, i64* %tail, align 8
  %and21 = and i64 %15, 7
  %conv22 = trunc i64 %and21 to i32
  %cmp23 = icmp eq i32 %conv22, 3
  br i1 %cmp23, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %16 = load i64, i64* %tail, align 8
  %sub = sub nsw i64 %16, 3
  %17 = inttoptr i64 %sub to i8*
  %18 = bitcast i8* %17 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %18, i32 0, i32 0
  %19 = load i64, i64* %car, align 8
  store i64 %19, i64* %frame.addr, align 8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %20 = phi i1 [ false, %for.cond ], [ true, %land.rhs ]
  br i1 %20, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %21 = load i64, i64* %face.addr, align 8
  %22 = load i64, i64* %attr.addr, align 8
  %23 = load i64, i64* %value.addr, align 8
  %24 = load i64, i64* %frame.addr, align 8
  %call25 = call i64 @Finternal_set_lisp_face_attribute(i64 %21, i64 %22, i64 %23, i64 %24)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i64, i64* %tail, align 8
  %sub26 = sub nsw i64 %25, 3
  %26 = inttoptr i64 %sub26 to i8*
  %27 = bitcast i8* %26 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %27, i32 0, i32 1
  %cdr = bitcast %union.anon.10* %u to i64*
  %28 = load i64, i64* %cdr, align 8
  store i64 %28, i64* %tail, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %29 = load i64, i64* %face.addr, align 8
  store i64 %29, i64* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %cond.end.10
  %30 = load i64, i64* %frame.addr, align 8
  %call27 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp28 = icmp eq i64 %30, %call27
  br i1 %cmp28, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %if.end
  store %struct.frame* null, %struct.frame** %f, align 8
  %31 = load i64, i64* %face.addr, align 8
  %call31 = call i64 @lface_from_face_name(%struct.frame* null, i64 %31, i1 zeroext true)
  store i64 %call31, i64* %lface, align 8
  %32 = load i64, i64* %value.addr, align 8
  %call32 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp33 = icmp eq i64 %32, %call32
  br i1 %cmp33, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %if.then.30
  %call36 = call i64 @builtin_lisp_symbol(i32 64)
  store i64 %call36, i64* %value.addr, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %if.then.30
  br label %if.end.61

if.else:                                          ; preds = %if.end
  %33 = load i64, i64* %frame.addr, align 8
  %call38 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp39 = icmp eq i64 %33, %call38
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.else
  %34 = load i64, i64* @selected_frame, align 8
  store i64 %34, i64* %frame.addr, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %if.else
  %35 = load i64, i64* %frame.addr, align 8
  %call43 = call zeroext i1 @FRAMEP(i64 %35)
  br i1 %call43, label %land.lhs.true.45, label %cond.false.50

land.lhs.true.45:                                 ; preds = %if.end.42
  %36 = load i64, i64* %frame.addr, align 8
  %sub46 = sub nsw i64 %36, 5
  %37 = inttoptr i64 %sub46 to i8*
  %38 = bitcast i8* %37 to %struct.frame*
  %terminal = getelementptr inbounds %struct.frame, %struct.frame* %38, i32 0, i32 61
  %39 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %cmp47 = icmp ne %struct.terminal* %39, null
  br i1 %cmp47, label %cond.true.49, label %cond.false.50

cond.true.49:                                     ; preds = %land.lhs.true.45
  br label %cond.end.52

cond.false.50:                                    ; preds = %land.lhs.true.45, %if.end.42
  %call51 = call i64 @builtin_lisp_symbol(i32 458)
  %40 = load i64, i64* %frame.addr, align 8
  %41 = call i64 @wrong_type_argument(i64 %call51, i64 %40) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end.52

cond.end.52:                                      ; preds = %42, %cond.true.49
  %43 = load i64, i64* %frame.addr, align 8
  %sub53 = sub nsw i64 %43, 5
  %44 = inttoptr i64 %sub53 to i8*
  %45 = bitcast i8* %44 to %struct.frame*
  store %struct.frame* %45, %struct.frame** %f, align 8
  %46 = load %struct.frame*, %struct.frame** %f, align 8
  %47 = load i64, i64* %face.addr, align 8
  %call54 = call i64 @lface_from_face_name(%struct.frame* %46, i64 %47, i1 zeroext false)
  store i64 %call54, i64* %lface, align 8
  %48 = load i64, i64* %lface, align 8
  %call55 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp56 = icmp eq i64 %48, %call55
  br i1 %cmp56, label %if.then.58, label %if.end.60

if.then.58:                                       ; preds = %cond.end.52
  %49 = load i64, i64* %face.addr, align 8
  %50 = load i64, i64* %frame.addr, align 8
  %call59 = call i64 @Finternal_make_lisp_face(i64 %49, i64 %50)
  store i64 %call59, i64* %lface, align 8
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.58, %cond.end.52
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.end.37
  %51 = load i64, i64* %attr.addr, align 8
  %call62 = call i64 @builtin_lisp_symbol(i32 40)
  %cmp63 = icmp eq i64 %51, %call62
  br i1 %cmp63, label %if.then.65, label %if.else.81

if.then.65:                                       ; preds = %if.end.61
  %52 = load i64, i64* %value.addr, align 8
  %call66 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp67 = icmp eq i64 %52, %call66
  br i1 %cmp67, label %if.end.79, label %land.lhs.true.69

land.lhs.true.69:                                 ; preds = %if.then.65
  %53 = load i64, i64* %value.addr, align 8
  %call70 = call i64 @builtin_lisp_symbol(i32 64)
  %cmp71 = icmp eq i64 %53, %call70
  br i1 %cmp71, label %if.end.79, label %if.then.73

if.then.73:                                       ; preds = %land.lhs.true.69
  %54 = load i64, i64* %value.addr, align 8
  call void @CHECK_STRING(i64 %54)
  %55 = load i64, i64* %value.addr, align 8
  %call74 = call i64 @SCHARS(i64 %55)
  %cmp75 = icmp eq i64 %call74, 0
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %if.then.73
  %56 = load i64, i64* %value.addr, align 8
  call void @signal_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i64 %56) #6
  unreachable

if.end.78:                                        ; preds = %if.then.73
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %land.lhs.true.69, %if.then.65
  %57 = load i64, i64* %lface, align 8
  %call80 = call i64 @AREF(i64 %57, i64 1)
  store i64 %call80, i64* %old_value, align 8
  %58 = load i64, i64* %lface, align 8
  %59 = load i64, i64* %value.addr, align 8
  call void @ASET(i64 %58, i64 1, i64 %59)
  store i32 2, i32* %prop_index, align 4
  br label %if.end.852

if.else.81:                                       ; preds = %if.end.61
  %60 = load i64, i64* %attr.addr, align 8
  %call82 = call i64 @builtin_lisp_symbol(i32 48)
  %cmp83 = icmp eq i64 %60, %call82
  br i1 %cmp83, label %if.then.85, label %if.else.101

if.then.85:                                       ; preds = %if.else.81
  %61 = load i64, i64* %value.addr, align 8
  %call86 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp87 = icmp eq i64 %61, %call86
  br i1 %cmp87, label %if.end.99, label %land.lhs.true.89

land.lhs.true.89:                                 ; preds = %if.then.85
  %62 = load i64, i64* %value.addr, align 8
  %call90 = call i64 @builtin_lisp_symbol(i32 64)
  %cmp91 = icmp eq i64 %62, %call90
  br i1 %cmp91, label %if.end.99, label %if.then.93

if.then.93:                                       ; preds = %land.lhs.true.89
  %63 = load i64, i64* %value.addr, align 8
  call void @CHECK_STRING(i64 %63)
  %64 = load i64, i64* %value.addr, align 8
  %call94 = call i64 @SCHARS(i64 %64)
  %cmp95 = icmp eq i64 %call94, 0
  br i1 %cmp95, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %if.then.93
  %65 = load i64, i64* %value.addr, align 8
  call void @signal_error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i64 %65) #6
  unreachable

if.end.98:                                        ; preds = %if.then.93
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %land.lhs.true.89, %if.then.85
  %66 = load i64, i64* %lface, align 8
  %call100 = call i64 @AREF(i64 %66, i64 2)
  store i64 %call100, i64* %old_value, align 8
  %67 = load i64, i64* %lface, align 8
  %68 = load i64, i64* %value.addr, align 8
  call void @ASET(i64 %67, i64 2, i64 %68)
  store i32 1, i32* %prop_index, align 4
  br label %if.end.851

if.else.101:                                      ; preds = %if.else.81
  %69 = load i64, i64* %attr.addr, align 8
  %call102 = call i64 @builtin_lisp_symbol(i32 58)
  %cmp103 = icmp eq i64 %69, %call102
  br i1 %cmp103, label %if.then.105, label %if.else.145

if.then.105:                                      ; preds = %if.else.101
  %70 = load i64, i64* %value.addr, align 8
  %call106 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp107 = icmp eq i64 %70, %call106
  br i1 %cmp107, label %if.end.143, label %land.lhs.true.109

land.lhs.true.109:                                ; preds = %if.then.105
  %71 = load i64, i64* %value.addr, align 8
  %call110 = call i64 @builtin_lisp_symbol(i32 64)
  %cmp111 = icmp eq i64 %71, %call110
  br i1 %cmp111, label %if.end.143, label %if.then.113

if.then.113:                                      ; preds = %land.lhs.true.109
  %72 = load i64, i64* %face.addr, align 8
  %call114 = call i64 @builtin_lisp_symbol(i32 324)
  %cmp115 = icmp eq i64 %72, %call114
  br i1 %cmp115, label %if.then.117, label %if.else.128

if.then.117:                                      ; preds = %if.then.113
  %73 = load i64, i64* %value.addr, align 8
  %and118 = and i64 %73, 7
  %conv119 = trunc i64 %and118 to i32
  %and120 = and i32 %conv119, -5
  %cmp121 = icmp eq i32 %and120, 2
  br i1 %cmp121, label %lor.lhs.false, label %if.then.126

lor.lhs.false:                                    ; preds = %if.then.117
  %74 = load i64, i64* %value.addr, align 8
  %shr123 = ashr i64 %74, 2
  %cmp124 = icmp sle i64 %shr123, 0
  br i1 %cmp124, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %lor.lhs.false, %if.then.117
  %75 = load i64, i64* %value.addr, align 8
  call void @signal_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i32 0, i32 0), i64 %75) #6
  unreachable

if.end.127:                                       ; preds = %lor.lhs.false
  br label %if.end.142

if.else.128:                                      ; preds = %if.then.113
  %76 = load i64, i64* %value.addr, align 8
  %call129 = call i64 @builtin_lisp_symbol(i32 0)
  %call130 = call i64 @merge_face_heights(i64 %76, i64 42, i64 %call129)
  store i64 %call130, i64* %test, align 8
  %77 = load i64, i64* %test, align 8
  %and131 = and i64 %77, 7
  %conv132 = trunc i64 %and131 to i32
  %and133 = and i32 %conv132, -5
  %cmp134 = icmp eq i32 %and133, 2
  br i1 %cmp134, label %lor.lhs.false.136, label %if.then.140

lor.lhs.false.136:                                ; preds = %if.else.128
  %78 = load i64, i64* %test, align 8
  %shr137 = ashr i64 %78, 2
  %cmp138 = icmp sle i64 %shr137, 0
  br i1 %cmp138, label %if.then.140, label %if.end.141

if.then.140:                                      ; preds = %lor.lhs.false.136, %if.else.128
  %79 = load i64, i64* %value.addr, align 8
  call void @signal_error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i32 0, i32 0), i64 %79) #6
  unreachable

if.end.141:                                       ; preds = %lor.lhs.false.136
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.141, %if.end.127
  br label %if.end.143

if.end.143:                                       ; preds = %if.end.142, %land.lhs.true.109, %if.then.105
  %80 = load i64, i64* %lface, align 8
  %call144 = call i64 @AREF(i64 %80, i64 4)
  store i64 %call144, i64* %old_value, align 8
  %81 = load i64, i64* %lface, align 8
  %82 = load i64, i64* %value.addr, align 8
  call void @ASET(i64 %81, i64 4, i64 %82)
  store i32 8, i32* %prop_index, align 4
  br label %if.end.850

if.else.145:                                      ; preds = %if.else.101
  %83 = load i64, i64* %attr.addr, align 8
  %call146 = call i64 @builtin_lisp_symbol(i32 138)
  %cmp147 = icmp eq i64 %83, %call146
  br i1 %cmp147, label %if.then.149, label %if.else.174

if.then.149:                                      ; preds = %if.else.145
  %84 = load i64, i64* %value.addr, align 8
  %call150 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp151 = icmp eq i64 %84, %call150
  br i1 %cmp151, label %if.end.172, label %land.lhs.true.153

land.lhs.true.153:                                ; preds = %if.then.149
  %85 = load i64, i64* %value.addr, align 8
  %call154 = call i64 @builtin_lisp_symbol(i32 64)
  %cmp155 = icmp eq i64 %85, %call154
  br i1 %cmp155, label %if.end.172, label %if.then.157

if.then.157:                                      ; preds = %land.lhs.true.153
  %86 = load i64, i64* %value.addr, align 8
  %and158 = and i64 %86, 7
  %conv159 = trunc i64 %and158 to i32
  %cmp160 = icmp eq i32 %conv159, 0
  br i1 %cmp160, label %cond.true.162, label %cond.false.163

cond.true.162:                                    ; preds = %if.then.157
  br label %cond.end.165

cond.false.163:                                   ; preds = %if.then.157
  %call164 = call i64 @builtin_lisp_symbol(i32 897)
  %87 = load i64, i64* %value.addr, align 8
  %88 = call i64 @wrong_type_argument(i64 %call164, i64 %87) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end.165

cond.end.165:                                     ; preds = %89, %cond.true.162
  %90 = load i64, i64* %value.addr, align 8
  %call166 = call i32 @font_style_to_value(i32 5, i64 %90, i1 zeroext false)
  %shr167 = ashr i32 %call166, 8
  %cmp168 = icmp slt i32 %shr167, 0
  br i1 %cmp168, label %if.then.170, label %if.end.171

if.then.170:                                      ; preds = %cond.end.165
  %91 = load i64, i64* %value.addr, align 8
  call void @signal_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i64 %91) #6
  unreachable

if.end.171:                                       ; preds = %cond.end.165
  br label %if.end.172

if.end.172:                                       ; preds = %if.end.171, %land.lhs.true.153, %if.then.149
  %92 = load i64, i64* %lface, align 8
  %call173 = call i64 @AREF(i64 %92, i64 5)
  store i64 %call173, i64* %old_value, align 8
  %93 = load i64, i64* %lface, align 8
  %94 = load i64, i64* %value.addr, align 8
  call void @ASET(i64 %93, i64 5, i64 %94)
  store i32 5, i32* %prop_index, align 4
  br label %if.end.849

if.else.174:                                      ; preds = %if.else.145
  %95 = load i64, i64* %attr.addr, align 8
  %call175 = call i64 @builtin_lisp_symbol(i32 119)
  %cmp176 = icmp eq i64 %95, %call175
  br i1 %cmp176, label %if.then.178, label %if.else.203

if.then.178:                                      ; preds = %if.else.174
  %96 = load i64, i64* %value.addr, align 8
  %call179 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp180 = icmp eq i64 %96, %call179
  br i1 %cmp180, label %if.end.201, label %land.lhs.true.182

land.lhs.true.182:                                ; preds = %if.then.178
  %97 = load i64, i64* %value.addr, align 8
  %call183 = call i64 @builtin_lisp_symbol(i32 64)
  %cmp184 = icmp eq i64 %97, %call183
  br i1 %cmp184, label %if.end.201, label %if.then.186

if.then.186:                                      ; preds = %land.lhs.true.182
  %98 = load i64, i64* %value.addr, align 8
  %and187 = and i64 %98, 7
  %conv188 = trunc i64 %and187 to i32
  %cmp189 = icmp eq i32 %conv188, 0
  br i1 %cmp189, label %cond.true.191, label %cond.false.192

cond.true.191:                                    ; preds = %if.then.186
  br label %cond.end.194

cond.false.192:                                   ; preds = %if.then.186
  %call193 = call i64 @builtin_lisp_symbol(i32 897)
  %99 = load i64, i64* %value.addr, align 8
  %100 = call i64 @wrong_type_argument(i64 %call193, i64 %99) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end.194

cond.end.194:                                     ; preds = %101, %cond.true.191
  %102 = load i64, i64* %value.addr, align 8
  %call195 = call i32 @font_style_to_value(i32 6, i64 %102, i1 zeroext false)
  %shr196 = ashr i32 %call195, 8
  %cmp197 = icmp slt i32 %shr196, 0
  br i1 %cmp197, label %if.then.199, label %if.end.200

if.then.199:                                      ; preds = %cond.end.194
  %103 = load i64, i64* %value.addr, align 8
  call void @signal_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), i64 %103) #6
  unreachable

if.end.200:                                       ; preds = %cond.end.194
  br label %if.end.201

if.end.201:                                       ; preds = %if.end.200, %land.lhs.true.182, %if.then.178
  %104 = load i64, i64* %lface, align 8
  %call202 = call i64 @AREF(i64 %104, i64 6)
  store i64 %call202, i64* %old_value, align 8
  %105 = load i64, i64* %lface, align 8
  %106 = load i64, i64* %value.addr, align 8
  call void @ASET(i64 %105, i64 6, i64 %106)
  store i32 6, i32* %prop_index, align 4
  br label %if.end.848

if.else.203:                                      ; preds = %if.else.174
  %107 = load i64, i64* %attr.addr, align 8
  %call204 = call i64 @builtin_lisp_symbol(i32 132)
  %cmp205 = icmp eq i64 %107, %call204
  br i1 %cmp205, label %if.then.207, label %if.else.294

if.then.207:                                      ; preds = %if.else.203
  store i8 0, i8* %valid_p, align 1
  %108 = load i64, i64* %value.addr, align 8
  %call208 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp209 = icmp eq i64 %108, %call208
  br i1 %cmp209, label %if.then.215, label %lor.lhs.false.211

lor.lhs.false.211:                                ; preds = %if.then.207
  %109 = load i64, i64* %value.addr, align 8
  %call212 = call i64 @builtin_lisp_symbol(i32 64)
  %cmp213 = icmp eq i64 %109, %call212
  br i1 %cmp213, label %if.then.215, label %if.else.216

if.then.215:                                      ; preds = %lor.lhs.false.211, %if.then.207
  store i8 1, i8* %valid_p, align 1
  br label %if.end.290

if.else.216:                                      ; preds = %lor.lhs.false.211
  %110 = load i64, i64* %value.addr, align 8
  %call217 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp218 = icmp eq i64 %110, %call217
  br i1 %cmp218, label %if.then.224, label %lor.lhs.false.220

lor.lhs.false.220:                                ; preds = %if.else.216
  %111 = load i64, i64* %value.addr, align 8
  %call221 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp222 = icmp eq i64 %111, %call221
  br i1 %cmp222, label %if.then.224, label %if.else.225

if.then.224:                                      ; preds = %lor.lhs.false.220, %if.else.216
  store i8 1, i8* %valid_p, align 1
  br label %if.end.289

if.else.225:                                      ; preds = %lor.lhs.false.220
  %112 = load i64, i64* %value.addr, align 8
  %call226 = call zeroext i1 @STRINGP(i64 %112)
  br i1 %call226, label %land.lhs.true.228, label %if.else.233

land.lhs.true.228:                                ; preds = %if.else.225
  %113 = load i64, i64* %value.addr, align 8
  %call229 = call i64 @SCHARS(i64 %113)
  %cmp230 = icmp sgt i64 %call229, 0
  br i1 %cmp230, label %if.then.232, label %if.else.233

if.then.232:                                      ; preds = %land.lhs.true.228
  store i8 1, i8* %valid_p, align 1
  br label %if.end.288

if.else.233:                                      ; preds = %land.lhs.true.228, %if.else.225
  %114 = load i64, i64* %value.addr, align 8
  %and234 = and i64 %114, 7
  %conv235 = trunc i64 %and234 to i32
  %cmp236 = icmp eq i32 %conv235, 3
  br i1 %cmp236, label %if.then.238, label %if.end.287

if.then.238:                                      ; preds = %if.else.233
  %115 = load i64, i64* %value.addr, align 8
  store i64 %115, i64* %list, align 8
  store i8 1, i8* %valid_p, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end.286, %if.then.238
  %116 = load i64, i64* %list, align 8
  %call239 = call i64 @CAR_SAFE(i64 %116)
  %call240 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp241 = icmp eq i64 %call239, %call240
  %lnot = xor i1 %cmp241, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %117 = load i64, i64* %list, align 8
  %call243 = call i64 @CAR_SAFE(i64 %117)
  store i64 %call243, i64* %key, align 8
  %118 = load i64, i64* %list, align 8
  %call244 = call i64 @CDR_SAFE(i64 %118)
  store i64 %call244, i64* %list, align 8
  %119 = load i64, i64* %list, align 8
  %call245 = call i64 @CAR_SAFE(i64 %119)
  store i64 %call245, i64* %val, align 8
  %120 = load i64, i64* %list, align 8
  %call246 = call i64 @CDR_SAFE(i64 %120)
  store i64 %call246, i64* %list, align 8
  %121 = load i64, i64* %key, align 8
  %call247 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp248 = icmp eq i64 %121, %call247
  br i1 %cmp248, label %if.then.254, label %lor.lhs.false.250

lor.lhs.false.250:                                ; preds = %while.body
  %122 = load i64, i64* %val, align 8
  %call251 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp252 = icmp eq i64 %122, %call251
  br i1 %cmp252, label %if.then.254, label %if.else.255

if.then.254:                                      ; preds = %lor.lhs.false.250, %while.body
  store i8 0, i8* %valid_p, align 1
  br label %while.end

if.else.255:                                      ; preds = %lor.lhs.false.250
  %123 = load i64, i64* %key, align 8
  %call256 = call i64 @builtin_lisp_symbol(i32 21)
  %cmp257 = icmp eq i64 %123, %call256
  br i1 %cmp257, label %land.lhs.true.259, label %if.else.271

land.lhs.true.259:                                ; preds = %if.else.255
  %124 = load i64, i64* %val, align 8
  %call260 = call i64 @builtin_lisp_symbol(i32 451)
  %cmp261 = icmp eq i64 %124, %call260
  br i1 %cmp261, label %if.else.271, label %lor.lhs.false.263

lor.lhs.false.263:                                ; preds = %land.lhs.true.259
  %125 = load i64, i64* %val, align 8
  %call264 = call zeroext i1 @STRINGP(i64 %125)
  br i1 %call264, label %land.lhs.true.266, label %if.then.270

land.lhs.true.266:                                ; preds = %lor.lhs.false.263
  %126 = load i64, i64* %val, align 8
  %call267 = call i64 @SCHARS(i64 %126)
  %cmp268 = icmp sgt i64 %call267, 0
  br i1 %cmp268, label %if.else.271, label %if.then.270

if.then.270:                                      ; preds = %land.lhs.true.266, %lor.lhs.false.263
  store i8 0, i8* %valid_p, align 1
  br label %while.end

if.else.271:                                      ; preds = %land.lhs.true.266, %land.lhs.true.259, %if.else.255
  %127 = load i64, i64* %key, align 8
  %call272 = call i64 @builtin_lisp_symbol(i32 127)
  %cmp273 = icmp eq i64 %127, %call272
  br i1 %cmp273, label %land.lhs.true.275, label %if.end.284

land.lhs.true.275:                                ; preds = %if.else.271
  %128 = load i64, i64* %val, align 8
  %call276 = call i64 @builtin_lisp_symbol(i32 620)
  %cmp277 = icmp eq i64 %128, %call276
  br i1 %cmp277, label %if.end.284, label %lor.lhs.false.279

lor.lhs.false.279:                                ; preds = %land.lhs.true.275
  %129 = load i64, i64* %val, align 8
  %call280 = call i64 @builtin_lisp_symbol(i32 1012)
  %cmp281 = icmp eq i64 %129, %call280
  br i1 %cmp281, label %if.end.284, label %if.then.283

if.then.283:                                      ; preds = %lor.lhs.false.279
  store i8 0, i8* %valid_p, align 1
  br label %while.end

if.end.284:                                       ; preds = %lor.lhs.false.279, %land.lhs.true.275, %if.else.271
  br label %if.end.285

if.end.285:                                       ; preds = %if.end.284
  br label %if.end.286

if.end.286:                                       ; preds = %if.end.285
  br label %while.cond

while.end:                                        ; preds = %if.then.283, %if.then.270, %if.then.254, %while.cond
  br label %if.end.287

if.end.287:                                       ; preds = %while.end, %if.else.233
  br label %if.end.288

if.end.288:                                       ; preds = %if.end.287, %if.then.232
  br label %if.end.289

if.end.289:                                       ; preds = %if.end.288, %if.then.224
  br label %if.end.290

if.end.290:                                       ; preds = %if.end.289, %if.then.215
  %130 = load i8, i8* %valid_p, align 1
  %tobool = trunc i8 %130 to i1
  br i1 %tobool, label %if.end.292, label %if.then.291

if.then.291:                                      ; preds = %if.end.290
  %131 = load i64, i64* %value.addr, align 8
  call void @signal_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i64 %131) #6
  unreachable

if.end.292:                                       ; preds = %if.end.290
  %132 = load i64, i64* %lface, align 8
  %call293 = call i64 @AREF(i64 %132, i64 7)
  store i64 %call293, i64* %old_value, align 8
  %133 = load i64, i64* %lface, align 8
  %134 = load i64, i64* %value.addr, align 8
  call void @ASET(i64 %133, i64 7, i64 %134)
  br label %if.end.847

if.else.294:                                      ; preds = %if.else.203
  %135 = load i64, i64* %attr.addr, align 8
  %call295 = call i64 @builtin_lisp_symbol(i32 90)
  %cmp296 = icmp eq i64 %135, %call295
  br i1 %cmp296, label %if.then.298, label %if.else.330

if.then.298:                                      ; preds = %if.else.294
  %136 = load i64, i64* %value.addr, align 8
  %call299 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp300 = icmp eq i64 %136, %call299
  br i1 %cmp300, label %if.end.328, label %land.lhs.true.302

land.lhs.true.302:                                ; preds = %if.then.298
  %137 = load i64, i64* %value.addr, align 8
  %call303 = call i64 @builtin_lisp_symbol(i32 64)
  %cmp304 = icmp eq i64 %137, %call303
  br i1 %cmp304, label %if.end.328, label %if.then.306

if.then.306:                                      ; preds = %land.lhs.true.302
  %138 = load i64, i64* %value.addr, align 8
  %and307 = and i64 %138, 7
  %conv308 = trunc i64 %and307 to i32
  %cmp309 = icmp eq i32 %conv308, 0
  br i1 %cmp309, label %land.lhs.true.311, label %lor.lhs.false.319

land.lhs.true.311:                                ; preds = %if.then.306
  %139 = load i64, i64* %value.addr, align 8
  %call312 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp313 = icmp eq i64 %139, %call312
  br i1 %cmp313, label %lor.lhs.false.319, label %land.lhs.true.315

land.lhs.true.315:                                ; preds = %land.lhs.true.311
  %140 = load i64, i64* %value.addr, align 8
  %call316 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp317 = icmp eq i64 %140, %call316
  br i1 %cmp317, label %lor.lhs.false.319, label %if.then.326

lor.lhs.false.319:                                ; preds = %land.lhs.true.315, %land.lhs.true.311, %if.then.306
  %141 = load i64, i64* %value.addr, align 8
  %call320 = call zeroext i1 @STRINGP(i64 %141)
  br i1 %call320, label %land.lhs.true.322, label %if.end.327

land.lhs.true.322:                                ; preds = %lor.lhs.false.319
  %142 = load i64, i64* %value.addr, align 8
  %call323 = call i64 @SCHARS(i64 %142)
  %cmp324 = icmp eq i64 %call323, 0
  br i1 %cmp324, label %if.then.326, label %if.end.327

if.then.326:                                      ; preds = %land.lhs.true.322, %land.lhs.true.315
  %143 = load i64, i64* %value.addr, align 8
  call void @signal_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i64 %143) #6
  unreachable

if.end.327:                                       ; preds = %land.lhs.true.322, %lor.lhs.false.319
  br label %if.end.328

if.end.328:                                       ; preds = %if.end.327, %land.lhs.true.302, %if.then.298
  %144 = load i64, i64* %lface, align 8
  %call329 = call i64 @AREF(i64 %144, i64 12)
  store i64 %call329, i64* %old_value, align 8
  %145 = load i64, i64* %lface, align 8
  %146 = load i64, i64* %value.addr, align 8
  call void @ASET(i64 %145, i64 12, i64 %146)
  br label %if.end.846

if.else.330:                                      ; preds = %if.else.294
  %147 = load i64, i64* %attr.addr, align 8
  %call331 = call i64 @builtin_lisp_symbol(i32 126)
  %cmp332 = icmp eq i64 %147, %call331
  br i1 %cmp332, label %if.then.334, label %if.else.366

if.then.334:                                      ; preds = %if.else.330
  %148 = load i64, i64* %value.addr, align 8
  %call335 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp336 = icmp eq i64 %148, %call335
  br i1 %cmp336, label %if.end.364, label %land.lhs.true.338

land.lhs.true.338:                                ; preds = %if.then.334
  %149 = load i64, i64* %value.addr, align 8
  %call339 = call i64 @builtin_lisp_symbol(i32 64)
  %cmp340 = icmp eq i64 %149, %call339
  br i1 %cmp340, label %if.end.364, label %if.then.342

if.then.342:                                      ; preds = %land.lhs.true.338
  %150 = load i64, i64* %value.addr, align 8
  %and343 = and i64 %150, 7
  %conv344 = trunc i64 %and343 to i32
  %cmp345 = icmp eq i32 %conv344, 0
  br i1 %cmp345, label %land.lhs.true.347, label %lor.lhs.false.355

land.lhs.true.347:                                ; preds = %if.then.342
  %151 = load i64, i64* %value.addr, align 8
  %call348 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp349 = icmp eq i64 %151, %call348
  br i1 %cmp349, label %lor.lhs.false.355, label %land.lhs.true.351

land.lhs.true.351:                                ; preds = %land.lhs.true.347
  %152 = load i64, i64* %value.addr, align 8
  %call352 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp353 = icmp eq i64 %152, %call352
  br i1 %cmp353, label %lor.lhs.false.355, label %if.then.362

lor.lhs.false.355:                                ; preds = %land.lhs.true.351, %land.lhs.true.347, %if.then.342
  %153 = load i64, i64* %value.addr, align 8
  %call356 = call zeroext i1 @STRINGP(i64 %153)
  br i1 %call356, label %land.lhs.true.358, label %if.end.363

land.lhs.true.358:                                ; preds = %lor.lhs.false.355
  %154 = load i64, i64* %value.addr, align 8
  %call359 = call i64 @SCHARS(i64 %154)
  %cmp360 = icmp eq i64 %call359, 0
  br i1 %cmp360, label %if.then.362, label %if.end.363

if.then.362:                                      ; preds = %land.lhs.true.358, %land.lhs.true.351
  %155 = load i64, i64* %value.addr, align 8
  call void @signal_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0), i64 %155) #6
  unreachable

if.end.363:                                       ; preds = %land.lhs.true.358, %lor.lhs.false.355
  br label %if.end.364

if.end.364:                                       ; preds = %if.end.363, %land.lhs.true.338, %if.then.334
  %156 = load i64, i64* %lface, align 8
  %call365 = call i64 @AREF(i64 %156, i64 13)
  store i64 %call365, i64* %old_value, align 8
  %157 = load i64, i64* %lface, align 8
  %158 = load i64, i64* %value.addr, align 8
  call void @ASET(i64 %157, i64 13, i64 %158)
  br label %if.end.845

if.else.366:                                      ; preds = %if.else.330
  %159 = load i64, i64* %attr.addr, align 8
  %call367 = call i64 @builtin_lisp_symbol(i32 15)
  %cmp368 = icmp eq i64 %159, %call367
  br i1 %cmp368, label %if.then.370, label %if.else.499

if.then.370:                                      ; preds = %if.else.366
  %160 = load i64, i64* %value.addr, align 8
  %call372 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp373 = icmp eq i64 %160, %call372
  br i1 %cmp373, label %if.then.375, label %if.end.376

if.then.375:                                      ; preds = %if.then.370
  store i64 6, i64* %value.addr, align 8
  br label %if.end.376

if.end.376:                                       ; preds = %if.then.375, %if.then.370
  %161 = load i64, i64* %value.addr, align 8
  %call377 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp378 = icmp eq i64 %161, %call377
  br i1 %cmp378, label %if.then.384, label %lor.lhs.false.380

lor.lhs.false.380:                                ; preds = %if.end.376
  %162 = load i64, i64* %value.addr, align 8
  %call381 = call i64 @builtin_lisp_symbol(i32 64)
  %cmp382 = icmp eq i64 %162, %call381
  br i1 %cmp382, label %if.then.384, label %if.else.385

if.then.384:                                      ; preds = %lor.lhs.false.380, %if.end.376
  store i8 1, i8* %valid_p371, align 1
  br label %if.end.494

if.else.385:                                      ; preds = %lor.lhs.false.380
  %163 = load i64, i64* %value.addr, align 8
  %call386 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp387 = icmp eq i64 %163, %call386
  br i1 %cmp387, label %if.then.389, label %if.else.390

if.then.389:                                      ; preds = %if.else.385
  store i8 1, i8* %valid_p371, align 1
  br label %if.end.493

if.else.390:                                      ; preds = %if.else.385
  %164 = load i64, i64* %value.addr, align 8
  %and391 = and i64 %164, 7
  %conv392 = trunc i64 %and391 to i32
  %and393 = and i32 %conv392, -5
  %cmp394 = icmp eq i32 %and393, 2
  br i1 %cmp394, label %if.then.396, label %if.else.400

if.then.396:                                      ; preds = %if.else.390
  %165 = load i64, i64* %value.addr, align 8
  %shr397 = ashr i64 %165, 2
  %cmp398 = icmp ne i64 %shr397, 0
  %frombool = zext i1 %cmp398 to i8
  store i8 %frombool, i8* %valid_p371, align 1
  br label %if.end.492

if.else.400:                                      ; preds = %if.else.390
  %166 = load i64, i64* %value.addr, align 8
  %call401 = call zeroext i1 @STRINGP(i64 %166)
  br i1 %call401, label %if.then.402, label %if.else.407

if.then.402:                                      ; preds = %if.else.400
  %167 = load i64, i64* %value.addr, align 8
  %call403 = call i64 @SCHARS(i64 %167)
  %cmp404 = icmp sgt i64 %call403, 0
  %frombool406 = zext i1 %cmp404 to i8
  store i8 %frombool406, i8* %valid_p371, align 1
  br label %if.end.491

if.else.407:                                      ; preds = %if.else.400
  %168 = load i64, i64* %value.addr, align 8
  %and408 = and i64 %168, 7
  %conv409 = trunc i64 %and408 to i32
  %cmp410 = icmp eq i32 %conv409, 3
  br i1 %cmp410, label %if.then.412, label %if.else.489

if.then.412:                                      ; preds = %if.else.407
  %169 = load i64, i64* %value.addr, align 8
  store i64 %169, i64* %tem, align 8
  br label %while.cond.413

while.cond.413:                                   ; preds = %if.end.483, %if.then.412
  %170 = load i64, i64* %tem, align 8
  %and414 = and i64 %170, 7
  %conv415 = trunc i64 %and414 to i32
  %cmp416 = icmp eq i32 %conv415, 3
  br i1 %cmp416, label %while.body.418, label %while.end.484

while.body.418:                                   ; preds = %while.cond.413
  %171 = load i64, i64* %tem, align 8
  %sub419 = sub nsw i64 %171, 3
  %172 = inttoptr i64 %sub419 to i8*
  %173 = bitcast i8* %172 to %struct.Lisp_Cons*
  %car420 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %173, i32 0, i32 0
  %174 = load i64, i64* %car420, align 8
  store i64 %174, i64* %k, align 8
  %175 = load i64, i64* %tem, align 8
  %sub421 = sub nsw i64 %175, 3
  %176 = inttoptr i64 %sub421 to i8*
  %177 = bitcast i8* %176 to %struct.Lisp_Cons*
  %u422 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %177, i32 0, i32 1
  %cdr423 = bitcast %union.anon.10* %u422 to i64*
  %178 = load i64, i64* %cdr423, align 8
  store i64 %178, i64* %tem, align 8
  %179 = load i64, i64* %tem, align 8
  %and424 = and i64 %179, 7
  %conv425 = trunc i64 %and424 to i32
  %cmp426 = icmp eq i32 %conv425, 3
  br i1 %cmp426, label %if.end.429, label %if.then.428

if.then.428:                                      ; preds = %while.body.418
  br label %while.end.484

if.end.429:                                       ; preds = %while.body.418
  %180 = load i64, i64* %tem, align 8
  %sub430 = sub nsw i64 %180, 3
  %181 = inttoptr i64 %sub430 to i8*
  %182 = bitcast i8* %181 to %struct.Lisp_Cons*
  %car431 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %182, i32 0, i32 0
  %183 = load i64, i64* %car431, align 8
  store i64 %183, i64* %v, align 8
  %184 = load i64, i64* %tem, align 8
  %sub432 = sub nsw i64 %184, 3
  %185 = inttoptr i64 %sub432 to i8*
  %186 = bitcast i8* %185 to %struct.Lisp_Cons*
  %u433 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %186, i32 0, i32 1
  %cdr434 = bitcast %union.anon.10* %u433 to i64*
  %187 = load i64, i64* %cdr434, align 8
  store i64 %187, i64* %tem, align 8
  %188 = load i64, i64* %k, align 8
  %call435 = call i64 @builtin_lisp_symbol(i32 75)
  %cmp436 = icmp eq i64 %188, %call435
  br i1 %cmp436, label %if.then.438, label %if.else.450

if.then.438:                                      ; preds = %if.end.429
  %189 = load i64, i64* %v, align 8
  %and439 = and i64 %189, 7
  %conv440 = trunc i64 %and439 to i32
  %and441 = and i32 %conv440, -5
  %cmp442 = icmp eq i32 %and441, 2
  br i1 %cmp442, label %lor.lhs.false.444, label %if.then.448

lor.lhs.false.444:                                ; preds = %if.then.438
  %190 = load i64, i64* %v, align 8
  %shr445 = ashr i64 %190, 2
  %cmp446 = icmp eq i64 %shr445, 0
  br i1 %cmp446, label %if.then.448, label %if.end.449

if.then.448:                                      ; preds = %lor.lhs.false.444, %if.then.438
  br label %while.end.484

if.end.449:                                       ; preds = %lor.lhs.false.444
  br label %if.end.483

if.else.450:                                      ; preds = %if.end.429
  %191 = load i64, i64* %k, align 8
  %call451 = call i64 @builtin_lisp_symbol(i32 21)
  %cmp452 = icmp eq i64 %191, %call451
  br i1 %cmp452, label %if.then.454, label %if.else.466

if.then.454:                                      ; preds = %if.else.450
  %192 = load i64, i64* %v, align 8
  %call455 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp456 = icmp eq i64 %192, %call455
  br i1 %cmp456, label %if.end.465, label %land.lhs.true.458

land.lhs.true.458:                                ; preds = %if.then.454
  %193 = load i64, i64* %v, align 8
  %call459 = call zeroext i1 @STRINGP(i64 %193)
  br i1 %call459, label %lor.lhs.false.460, label %if.then.464

lor.lhs.false.460:                                ; preds = %land.lhs.true.458
  %194 = load i64, i64* %v, align 8
  %call461 = call i64 @SCHARS(i64 %194)
  %cmp462 = icmp eq i64 %call461, 0
  br i1 %cmp462, label %if.then.464, label %if.end.465

if.then.464:                                      ; preds = %lor.lhs.false.460, %land.lhs.true.458
  br label %while.end.484

if.end.465:                                       ; preds = %lor.lhs.false.460, %if.then.454
  br label %if.end.482

if.else.466:                                      ; preds = %if.else.450
  %195 = load i64, i64* %k, align 8
  %call467 = call i64 @builtin_lisp_symbol(i32 127)
  %cmp468 = icmp eq i64 %195, %call467
  br i1 %cmp468, label %if.then.470, label %if.else.480

if.then.470:                                      ; preds = %if.else.466
  %196 = load i64, i64* %v, align 8
  %call471 = call i64 @builtin_lisp_symbol(i32 768)
  %cmp472 = icmp eq i64 %196, %call471
  br i1 %cmp472, label %if.end.479, label %land.lhs.true.474

land.lhs.true.474:                                ; preds = %if.then.470
  %197 = load i64, i64* %v, align 8
  %call475 = call i64 @builtin_lisp_symbol(i32 804)
  %cmp476 = icmp eq i64 %197, %call475
  br i1 %cmp476, label %if.end.479, label %if.then.478

if.then.478:                                      ; preds = %land.lhs.true.474
  br label %while.end.484

if.end.479:                                       ; preds = %land.lhs.true.474, %if.then.470
  br label %if.end.481

if.else.480:                                      ; preds = %if.else.466
  br label %while.end.484

if.end.481:                                       ; preds = %if.end.479
  br label %if.end.482

if.end.482:                                       ; preds = %if.end.481, %if.end.465
  br label %if.end.483

if.end.483:                                       ; preds = %if.end.482, %if.end.449
  br label %while.cond.413

while.end.484:                                    ; preds = %if.else.480, %if.then.478, %if.then.464, %if.then.448, %if.then.428, %while.cond.413
  %198 = load i64, i64* %tem, align 8
  %call485 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp486 = icmp eq i64 %198, %call485
  %frombool488 = zext i1 %cmp486 to i8
  store i8 %frombool488, i8* %valid_p371, align 1
  br label %if.end.490

if.else.489:                                      ; preds = %if.else.407
  store i8 0, i8* %valid_p371, align 1
  br label %if.end.490

if.end.490:                                       ; preds = %if.else.489, %while.end.484
  br label %if.end.491

if.end.491:                                       ; preds = %if.end.490, %if.then.402
  br label %if.end.492

if.end.492:                                       ; preds = %if.end.491, %if.then.396
  br label %if.end.493

if.end.493:                                       ; preds = %if.end.492, %if.then.389
  br label %if.end.494

if.end.494:                                       ; preds = %if.end.493, %if.then.384
  %199 = load i8, i8* %valid_p371, align 1
  %tobool495 = trunc i8 %199 to i1
  br i1 %tobool495, label %if.end.497, label %if.then.496

if.then.496:                                      ; preds = %if.end.494
  %200 = load i64, i64* %value.addr, align 8
  call void @signal_error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i64 %200) #6
  unreachable

if.end.497:                                       ; preds = %if.end.494
  %201 = load i64, i64* %lface, align 8
  %call498 = call i64 @AREF(i64 %201, i64 14)
  store i64 %call498, i64* %old_value, align 8
  %202 = load i64, i64* %lface, align 8
  %203 = load i64, i64* %value.addr, align 8
  call void @ASET(i64 %202, i64 14, i64 %203)
  br label %if.end.844

if.else.499:                                      ; preds = %if.else.366
  %204 = load i64, i64* %attr.addr, align 8
  %call500 = call i64 @builtin_lisp_symbol(i32 68)
  %cmp501 = icmp eq i64 %204, %call500
  br i1 %cmp501, label %if.then.507, label %lor.lhs.false.503

lor.lhs.false.503:                                ; preds = %if.else.499
  %205 = load i64, i64* %attr.addr, align 8
  %call504 = call i64 @builtin_lisp_symbol(i32 109)
  %cmp505 = icmp eq i64 %205, %call504
  br i1 %cmp505, label %if.then.507, label %if.else.535

if.then.507:                                      ; preds = %lor.lhs.false.503, %if.else.499
  %206 = load i64, i64* %value.addr, align 8
  %call508 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp509 = icmp eq i64 %206, %call508
  br i1 %cmp509, label %if.end.533, label %land.lhs.true.511

land.lhs.true.511:                                ; preds = %if.then.507
  %207 = load i64, i64* %value.addr, align 8
  %call512 = call i64 @builtin_lisp_symbol(i32 64)
  %cmp513 = icmp eq i64 %207, %call512
  br i1 %cmp513, label %if.end.533, label %if.then.515

if.then.515:                                      ; preds = %land.lhs.true.511
  %208 = load i64, i64* %value.addr, align 8
  %and516 = and i64 %208, 7
  %conv517 = trunc i64 %and516 to i32
  %cmp518 = icmp eq i32 %conv517, 0
  br i1 %cmp518, label %cond.true.520, label %cond.false.521

cond.true.520:                                    ; preds = %if.then.515
  br label %cond.end.523

cond.false.521:                                   ; preds = %if.then.515
  %call522 = call i64 @builtin_lisp_symbol(i32 897)
  %209 = load i64, i64* %value.addr, align 8
  %210 = call i64 @wrong_type_argument(i64 %call522, i64 %209) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end.523

cond.end.523:                                     ; preds = %211, %cond.true.520
  %212 = load i64, i64* %value.addr, align 8
  %call524 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp525 = icmp eq i64 %212, %call524
  br i1 %cmp525, label %if.end.532, label %land.lhs.true.527

land.lhs.true.527:                                ; preds = %cond.end.523
  %213 = load i64, i64* %value.addr, align 8
  %call528 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp529 = icmp eq i64 %213, %call528
  br i1 %cmp529, label %if.end.532, label %if.then.531

if.then.531:                                      ; preds = %land.lhs.true.527
  %214 = load i64, i64* %value.addr, align 8
  call void @signal_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i32 0, i32 0), i64 %214) #6
  unreachable

if.end.532:                                       ; preds = %land.lhs.true.527, %cond.end.523
  br label %if.end.533

if.end.533:                                       ; preds = %if.end.532, %land.lhs.true.511, %if.then.507
  %215 = load i64, i64* %lface, align 8
  %call534 = call i64 @AREF(i64 %215, i64 8)
  store i64 %call534, i64* %old_value, align 8
  %216 = load i64, i64* %lface, align 8
  %217 = load i64, i64* %value.addr, align 8
  call void @ASET(i64 %216, i64 8, i64 %217)
  br label %if.end.843

if.else.535:                                      ; preds = %lor.lhs.false.503
  %218 = load i64, i64* %attr.addr, align 8
  %call536 = call i64 @builtin_lisp_symbol(i32 47)
  %cmp537 = icmp eq i64 %218, %call536
  br i1 %cmp537, label %if.then.539, label %if.else.561

if.then.539:                                      ; preds = %if.else.535
  %219 = load i64, i64* %value.addr, align 8
  %call540 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp541 = icmp eq i64 %219, %call540
  br i1 %cmp541, label %if.then.543, label %if.end.545

if.then.543:                                      ; preds = %if.then.539
  %call544 = call i64 @builtin_lisp_symbol(i32 975)
  store i64 %call544, i64* %value.addr, align 8
  br label %if.end.545

if.end.545:                                       ; preds = %if.then.543, %if.then.539
  %220 = load i64, i64* %value.addr, align 8
  %call546 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp547 = icmp eq i64 %220, %call546
  br i1 %cmp547, label %if.end.559, label %land.lhs.true.549

land.lhs.true.549:                                ; preds = %if.end.545
  %221 = load i64, i64* %value.addr, align 8
  %call550 = call i64 @builtin_lisp_symbol(i32 64)
  %cmp551 = icmp eq i64 %221, %call550
  br i1 %cmp551, label %if.end.559, label %if.then.553

if.then.553:                                      ; preds = %land.lhs.true.549
  %222 = load i64, i64* %value.addr, align 8
  call void @CHECK_STRING(i64 %222)
  %223 = load i64, i64* %value.addr, align 8
  %call554 = call i64 @SCHARS(i64 %223)
  %cmp555 = icmp eq i64 %call554, 0
  br i1 %cmp555, label %if.then.557, label %if.end.558

if.then.557:                                      ; preds = %if.then.553
  %224 = load i64, i64* %value.addr, align 8
  call void @signal_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i32 0, i32 0), i64 %224) #6
  unreachable

if.end.558:                                       ; preds = %if.then.553
  br label %if.end.559

if.end.559:                                       ; preds = %if.end.558, %land.lhs.true.549, %if.end.545
  %225 = load i64, i64* %lface, align 8
  %call560 = call i64 @AREF(i64 %225, i64 9)
  store i64 %call560, i64* %old_value, align 8
  %226 = load i64, i64* %lface, align 8
  %227 = load i64, i64* %value.addr, align 8
  call void @ASET(i64 %226, i64 9, i64 %227)
  br label %if.end.842

if.else.561:                                      ; preds = %if.else.535
  %228 = load i64, i64* %attr.addr, align 8
  %call562 = call i64 @builtin_lisp_symbol(i32 33)
  %cmp563 = icmp eq i64 %228, %call562
  br i1 %cmp563, label %if.then.565, label %if.else.587

if.then.565:                                      ; preds = %if.else.561
  %229 = load i64, i64* %value.addr, align 8
  %call566 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp567 = icmp eq i64 %229, %call566
  br i1 %cmp567, label %if.then.569, label %if.end.571

if.then.569:                                      ; preds = %if.then.565
  %call570 = call i64 @builtin_lisp_symbol(i32 975)
  store i64 %call570, i64* %value.addr, align 8
  br label %if.end.571

if.end.571:                                       ; preds = %if.then.569, %if.then.565
  %230 = load i64, i64* %value.addr, align 8
  %call572 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp573 = icmp eq i64 %230, %call572
  br i1 %cmp573, label %if.end.585, label %land.lhs.true.575

land.lhs.true.575:                                ; preds = %if.end.571
  %231 = load i64, i64* %value.addr, align 8
  %call576 = call i64 @builtin_lisp_symbol(i32 64)
  %cmp577 = icmp eq i64 %231, %call576
  br i1 %cmp577, label %if.end.585, label %if.then.579

if.then.579:                                      ; preds = %land.lhs.true.575
  %232 = load i64, i64* %value.addr, align 8
  call void @CHECK_STRING(i64 %232)
  %233 = load i64, i64* %value.addr, align 8
  %call580 = call i64 @SCHARS(i64 %233)
  %cmp581 = icmp eq i64 %call580, 0
  br i1 %cmp581, label %if.then.583, label %if.end.584

if.then.583:                                      ; preds = %if.then.579
  %234 = load i64, i64* %value.addr, align 8
  call void @signal_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i32 0, i32 0), i64 %234) #6
  unreachable

if.end.584:                                       ; preds = %if.then.579
  br label %if.end.585

if.end.585:                                       ; preds = %if.end.584, %land.lhs.true.575, %if.end.571
  %235 = load i64, i64* %lface, align 8
  %call586 = call i64 @AREF(i64 %235, i64 18)
  store i64 %call586, i64* %old_value, align 8
  %236 = load i64, i64* %lface, align 8
  %237 = load i64, i64* %value.addr, align 8
  call void @ASET(i64 %236, i64 18, i64 %237)
  br label %if.end.841

if.else.587:                                      ; preds = %if.else.561
  %238 = load i64, i64* %attr.addr, align 8
  %call588 = call i64 @builtin_lisp_symbol(i32 13)
  %cmp589 = icmp eq i64 %238, %call588
  br i1 %cmp589, label %if.then.591, label %if.else.613

if.then.591:                                      ; preds = %if.else.587
  %239 = load i64, i64* %value.addr, align 8
  %call592 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp593 = icmp eq i64 %239, %call592
  br i1 %cmp593, label %if.then.595, label %if.end.597

if.then.595:                                      ; preds = %if.then.591
  %call596 = call i64 @builtin_lisp_symbol(i32 975)
  store i64 %call596, i64* %value.addr, align 8
  br label %if.end.597

if.end.597:                                       ; preds = %if.then.595, %if.then.591
  %240 = load i64, i64* %value.addr, align 8
  %call598 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp599 = icmp eq i64 %240, %call598
  br i1 %cmp599, label %if.end.611, label %land.lhs.true.601

land.lhs.true.601:                                ; preds = %if.end.597
  %241 = load i64, i64* %value.addr, align 8
  %call602 = call i64 @builtin_lisp_symbol(i32 64)
  %cmp603 = icmp eq i64 %241, %call602
  br i1 %cmp603, label %if.end.611, label %if.then.605

if.then.605:                                      ; preds = %land.lhs.true.601
  %242 = load i64, i64* %value.addr, align 8
  call void @CHECK_STRING(i64 %242)
  %243 = load i64, i64* %value.addr, align 8
  %call606 = call i64 @SCHARS(i64 %243)
  %cmp607 = icmp eq i64 %call606, 0
  br i1 %cmp607, label %if.then.609, label %if.end.610

if.then.609:                                      ; preds = %if.then.605
  %244 = load i64, i64* %value.addr, align 8
  call void @signal_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0), i64 %244) #6
  unreachable

if.end.610:                                       ; preds = %if.then.605
  br label %if.end.611

if.end.611:                                       ; preds = %if.end.610, %land.lhs.true.601, %if.end.597
  %245 = load i64, i64* %lface, align 8
  %call612 = call i64 @AREF(i64 %245, i64 10)
  store i64 %call612, i64* %old_value, align 8
  %246 = load i64, i64* %lface, align 8
  %247 = load i64, i64* %value.addr, align 8
  call void @ASET(i64 %246, i64 10, i64 %247)
  br label %if.end.840

if.else.613:                                      ; preds = %if.else.587
  %248 = load i64, i64* %attr.addr, align 8
  %call614 = call i64 @builtin_lisp_symbol(i32 123)
  %cmp615 = icmp eq i64 %248, %call614
  br i1 %cmp615, label %if.then.617, label %if.else.637

if.then.617:                                      ; preds = %if.else.613
  %249 = load i64, i64* %value.addr, align 8
  %call618 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp619 = icmp eq i64 %249, %call618
  br i1 %cmp619, label %if.end.635, label %land.lhs.true.621

land.lhs.true.621:                                ; preds = %if.then.617
  %250 = load i64, i64* %value.addr, align 8
  %call622 = call i64 @builtin_lisp_symbol(i32 64)
  %cmp623 = icmp eq i64 %250, %call622
  br i1 %cmp623, label %if.end.635, label %land.lhs.true.625

land.lhs.true.625:                                ; preds = %land.lhs.true.621
  %251 = load i64, i64* %value.addr, align 8
  %call626 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp627 = icmp eq i64 %251, %call626
  br i1 %cmp627, label %if.end.635, label %land.lhs.true.629

land.lhs.true.629:                                ; preds = %land.lhs.true.625
  %252 = load i64, i64* %value.addr, align 8
  %call630 = call i64 @Fbitmap_spec_p(i64 %252)
  %call631 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp632 = icmp eq i64 %call630, %call631
  br i1 %cmp632, label %if.then.634, label %if.end.635

if.then.634:                                      ; preds = %land.lhs.true.629
  %253 = load i64, i64* %value.addr, align 8
  call void @signal_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i32 0, i32 0), i64 %253) #6
  unreachable

if.end.635:                                       ; preds = %land.lhs.true.629, %land.lhs.true.625, %land.lhs.true.621, %if.then.617
  %254 = load i64, i64* %lface, align 8
  %call636 = call i64 @AREF(i64 %254, i64 11)
  store i64 %call636, i64* %old_value, align 8
  %255 = load i64, i64* %lface, align 8
  %256 = load i64, i64* %value.addr, align 8
  call void @ASET(i64 %255, i64 11, i64 %256)
  br label %if.end.839

if.else.637:                                      ; preds = %if.else.613
  %257 = load i64, i64* %attr.addr, align 8
  %call638 = call i64 @builtin_lisp_symbol(i32 139)
  %cmp639 = icmp eq i64 %257, %call638
  br i1 %cmp639, label %if.then.641, label %if.else.666

if.then.641:                                      ; preds = %if.else.637
  %258 = load i64, i64* %value.addr, align 8
  %call642 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp643 = icmp eq i64 %258, %call642
  br i1 %cmp643, label %if.end.664, label %land.lhs.true.645

land.lhs.true.645:                                ; preds = %if.then.641
  %259 = load i64, i64* %value.addr, align 8
  %call646 = call i64 @builtin_lisp_symbol(i32 64)
  %cmp647 = icmp eq i64 %259, %call646
  br i1 %cmp647, label %if.end.664, label %if.then.649

if.then.649:                                      ; preds = %land.lhs.true.645
  %260 = load i64, i64* %value.addr, align 8
  %and650 = and i64 %260, 7
  %conv651 = trunc i64 %and650 to i32
  %cmp652 = icmp eq i32 %conv651, 0
  br i1 %cmp652, label %cond.true.654, label %cond.false.655

cond.true.654:                                    ; preds = %if.then.649
  br label %cond.end.657

cond.false.655:                                   ; preds = %if.then.649
  %call656 = call i64 @builtin_lisp_symbol(i32 897)
  %261 = load i64, i64* %value.addr, align 8
  %262 = call i64 @wrong_type_argument(i64 %call656, i64 %261) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end.657

cond.end.657:                                     ; preds = %263, %cond.true.654
  %264 = load i64, i64* %value.addr, align 8
  %call658 = call i32 @font_style_to_value(i32 7, i64 %264, i1 zeroext false)
  %shr659 = ashr i32 %call658, 8
  %cmp660 = icmp slt i32 %shr659, 0
  br i1 %cmp660, label %if.then.662, label %if.end.663

if.then.662:                                      ; preds = %cond.end.657
  %265 = load i64, i64* %value.addr, align 8
  call void @signal_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0), i64 %265) #6
  unreachable

if.end.663:                                       ; preds = %cond.end.657
  br label %if.end.664

if.end.664:                                       ; preds = %if.end.663, %land.lhs.true.645, %if.then.641
  %266 = load i64, i64* %lface, align 8
  %call665 = call i64 @AREF(i64 %266, i64 3)
  store i64 %call665, i64* %old_value, align 8
  %267 = load i64, i64* %lface, align 8
  %268 = load i64, i64* %value.addr, align 8
  call void @ASET(i64 %267, i64 3, i64 %268)
  store i32 7, i32* %prop_index, align 4
  br label %if.end.838

if.else.666:                                      ; preds = %if.else.637
  %269 = load i64, i64* %attr.addr, align 8
  %call667 = call i64 @builtin_lisp_symbol(i32 44)
  %cmp668 = icmp eq i64 %269, %call667
  br i1 %cmp668, label %if.then.670, label %if.else.736

if.then.670:                                      ; preds = %if.else.666
  %270 = load i64, i64* %frame.addr, align 8
  %call671 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp672 = icmp eq i64 %270, %call671
  br i1 %cmp672, label %if.then.677, label %lor.lhs.false.674

lor.lhs.false.674:                                ; preds = %if.then.670
  %271 = load %struct.frame*, %struct.frame** %f, align 8
  %output_method = getelementptr inbounds %struct.frame, %struct.frame* %271, i32 0, i32 26
  %272 = bitcast i48* %output_method to i64*
  %bf.load = load i64, i64* %272, align 8
  %bf.lshr = lshr i64 %bf.load, 23
  %bf.clear = and i64 %bf.lshr, 7
  %bf.cast = trunc i64 %bf.clear to i32
  %cmp675 = icmp eq i32 %bf.cast, 2
  br i1 %cmp675, label %if.then.677, label %if.end.735

if.then.677:                                      ; preds = %lor.lhs.false.674, %if.then.670
  %273 = load i64, i64* %value.addr, align 8
  %call678 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp679 = icmp eq i64 %273, %call678
  br i1 %cmp679, label %if.else.733, label %land.lhs.true.681

land.lhs.true.681:                                ; preds = %if.then.677
  %274 = load i64, i64* %value.addr, align 8
  %call682 = call i64 @builtin_lisp_symbol(i32 64)
  %cmp683 = icmp eq i64 %274, %call682
  br i1 %cmp683, label %if.else.733, label %if.then.685

if.then.685:                                      ; preds = %land.lhs.true.681
  %275 = load i64, i64* %lface, align 8
  %call686 = call i64 @AREF(i64 %275, i64 15)
  store i64 %call686, i64* %old_value, align 8
  %276 = load i64, i64* %value.addr, align 8
  %call687 = call zeroext i1 @FONTP(i64 %276)
  br i1 %call687, label %if.end.703, label %if.then.688

if.then.688:                                      ; preds = %if.then.685
  %277 = load i64, i64* %value.addr, align 8
  %call689 = call zeroext i1 @STRINGP(i64 %277)
  br i1 %call689, label %if.then.690, label %if.else.701

if.then.690:                                      ; preds = %if.then.688
  %278 = load i64, i64* %value.addr, align 8
  store i64 %278, i64* %name, align 8
  %279 = load i64, i64* %name, align 8
  %call691 = call i32 @fs_query_fontset(i64 %279, i32 0)
  store i32 %call691, i32* %fontset, align 4
  %280 = load i32, i32* %fontset, align 4
  %cmp692 = icmp sge i32 %280, 0
  br i1 %cmp692, label %if.then.694, label %if.end.696

if.then.694:                                      ; preds = %if.then.690
  %281 = load i32, i32* %fontset, align 4
  %call695 = call i64 @fontset_ascii(i32 %281)
  store i64 %call695, i64* %name, align 8
  br label %if.end.696

if.end.696:                                       ; preds = %if.then.694, %if.then.690
  %282 = load i64, i64* %name, align 8
  %call697 = call i64 @font_spec_from_name(i64 %282)
  store i64 %call697, i64* %value.addr, align 8
  %283 = load i64, i64* %value.addr, align 8
  %call698 = call zeroext i1 @FONTP(i64 %283)
  br i1 %call698, label %if.end.700, label %if.then.699

if.then.699:                                      ; preds = %if.end.696
  %284 = load i64, i64* %name, align 8
  call void @signal_error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i64 %284) #6
  unreachable

if.end.700:                                       ; preds = %if.end.696
  br label %if.end.702

if.else.701:                                      ; preds = %if.then.688
  %285 = load i64, i64* %value.addr, align 8
  call void @signal_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i32 0, i32 0), i64 %285) #6
  unreachable

if.end.702:                                       ; preds = %if.end.700
  br label %if.end.703

if.end.703:                                       ; preds = %if.end.702, %if.then.685
  %286 = load i64, i64* %frame.addr, align 8
  %call704 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp705 = icmp eq i64 %286, %call704
  br i1 %cmp705, label %if.then.707, label %if.else.709

if.then.707:                                      ; preds = %if.end.703
  %287 = load i64, i64* @selected_frame, align 8
  %sub708 = sub nsw i64 %287, 5
  %288 = inttoptr i64 %sub708 to i8*
  %289 = bitcast i8* %288 to %struct.frame*
  store %struct.frame* %289, %struct.frame** %f1, align 8
  br label %if.end.711

if.else.709:                                      ; preds = %if.end.703
  %290 = load i64, i64* %frame.addr, align 8
  %sub710 = sub nsw i64 %290, 5
  %291 = inttoptr i64 %sub710 to i8*
  %292 = bitcast i8* %291 to %struct.frame*
  store %struct.frame* %292, %struct.frame** %f1, align 8
  br label %if.end.711

if.end.711:                                       ; preds = %if.else.709, %if.then.707
  %293 = load %struct.frame*, %struct.frame** %f1, align 8
  %output_method712 = getelementptr inbounds %struct.frame, %struct.frame* %293, i32 0, i32 26
  %294 = bitcast i48* %output_method712 to i64*
  %bf.load713 = load i64, i64* %294, align 8
  %bf.lshr714 = lshr i64 %bf.load713, 23
  %bf.clear715 = and i64 %bf.lshr714, 7
  %bf.cast716 = trunc i64 %bf.clear715 to i32
  %cmp717 = icmp eq i32 %bf.cast716, 2
  br i1 %cmp717, label %if.then.719, label %if.end.732

if.then.719:                                      ; preds = %if.end.711
  %295 = load i64, i64* %value.addr, align 8
  %call720 = call zeroext i1 @FONT_OBJECT_P(i64 %295)
  br i1 %call720, label %if.end.729, label %if.then.721

if.then.721:                                      ; preds = %if.then.719
  %296 = load i64, i64* %lface, align 8
  %call722 = call %struct.Lisp_Vector* @XVECTOR(i64 %296)
  %contents = getelementptr inbounds %struct.Lisp_Vector, %struct.Lisp_Vector* %call722, i32 0, i32 1
  %arraydecay = getelementptr inbounds [0 x i64], [0 x i64]* %contents, i32 0, i32 0
  store i64* %arraydecay, i64** %attrs, align 8
  %297 = load %struct.frame*, %struct.frame** %f1, align 8
  %298 = load i64*, i64** %attrs, align 8
  %299 = load i64, i64* %value.addr, align 8
  %call723 = call i64 @font_load_for_lface(%struct.frame* %297, i64* %298, i64 %299)
  store i64 %call723, i64* %font_object, align 8
  %300 = load i64, i64* %font_object, align 8
  %call724 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp725 = icmp eq i64 %300, %call724
  br i1 %cmp725, label %if.then.727, label %if.end.728

if.then.727:                                      ; preds = %if.then.721
  %301 = load i64, i64* %value.addr, align 8
  call void @signal_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), i64 %301) #6
  unreachable

if.end.728:                                       ; preds = %if.then.721
  %302 = load i64, i64* %font_object, align 8
  store i64 %302, i64* %value.addr, align 8
  br label %if.end.729

if.end.729:                                       ; preds = %if.end.728, %if.then.719
  %303 = load %struct.frame*, %struct.frame** %f1, align 8
  %304 = load i64, i64* %lface, align 8
  %305 = load i64, i64* %value.addr, align 8
  call void @set_lface_from_font(%struct.frame* %303, i64 %304, i64 %305, i1 zeroext true)
  %306 = load %struct.frame*, %struct.frame** %f1, align 8
  %face_change = getelementptr inbounds %struct.frame, %struct.frame* %306, i32 0, i32 26
  %307 = bitcast i48* %face_change to i64*
  %bf.load730 = load i64, i64* %307, align 8
  %bf.clear731 = and i64 %bf.load730, -1099511627777
  %bf.set = or i64 %bf.clear731, 1099511627776
  store i64 %bf.set, i64* %307, align 8
  br label %if.end.732

if.end.732:                                       ; preds = %if.end.729, %if.end.711
  br label %if.end.734

if.else.733:                                      ; preds = %land.lhs.true.681, %if.then.677
  %308 = load i64, i64* %lface, align 8
  %309 = load i64, i64* %value.addr, align 8
  call void @ASET(i64 %308, i64 15, i64 %309)
  br label %if.end.734

if.end.734:                                       ; preds = %if.else.733, %if.end.732
  br label %if.end.735

if.end.735:                                       ; preds = %if.end.734, %lor.lhs.false.674
  br label %if.end.837

if.else.736:                                      ; preds = %if.else.666
  %310 = load i64, i64* %attr.addr, align 8
  %call737 = call i64 @builtin_lisp_symbol(i32 46)
  %cmp738 = icmp eq i64 %310, %call737
  br i1 %cmp738, label %if.then.740, label %if.else.762

if.then.740:                                      ; preds = %if.else.736
  %311 = load i64, i64* %frame.addr, align 8
  %call741 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp742 = icmp eq i64 %311, %call741
  br i1 %cmp742, label %if.then.752, label %lor.lhs.false.744

lor.lhs.false.744:                                ; preds = %if.then.740
  %312 = load %struct.frame*, %struct.frame** %f, align 8
  %output_method745 = getelementptr inbounds %struct.frame, %struct.frame* %312, i32 0, i32 26
  %313 = bitcast i48* %output_method745 to i64*
  %bf.load746 = load i64, i64* %313, align 8
  %bf.lshr747 = lshr i64 %bf.load746, 23
  %bf.clear748 = and i64 %bf.lshr747, 7
  %bf.cast749 = trunc i64 %bf.clear748 to i32
  %cmp750 = icmp eq i32 %bf.cast749, 2
  br i1 %cmp750, label %if.then.752, label %if.end.761

if.then.752:                                      ; preds = %lor.lhs.false.744, %if.then.740
  %314 = load i64, i64* %lface, align 8
  %call753 = call i64 @AREF(i64 %314, i64 17)
  store i64 %call753, i64* %old_value, align 8
  %315 = load i64, i64* %value.addr, align 8
  %call754 = call i64 @builtin_lisp_symbol(i32 0)
  %call755 = call i64 @Fquery_fontset(i64 %315, i64 %call754)
  store i64 %call755, i64* %tmp, align 8
  %316 = load i64, i64* %tmp, align 8
  %call756 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp757 = icmp eq i64 %316, %call756
  br i1 %cmp757, label %if.then.759, label %if.end.760

if.then.759:                                      ; preds = %if.then.752
  %317 = load i64, i64* %value.addr, align 8
  call void @signal_error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i32 0, i32 0), i64 %317) #6
  unreachable

if.end.760:                                       ; preds = %if.then.752
  %318 = load i64, i64* %lface, align 8
  %319 = load i64, i64* %tmp, align 8
  store i64 %319, i64* %value.addr, align 8
  call void @ASET(i64 %318, i64 17, i64 %319)
  br label %if.end.761

if.end.761:                                       ; preds = %if.end.760, %lor.lhs.false.744
  br label %if.end.836

if.else.762:                                      ; preds = %if.else.736
  %320 = load i64, i64* %attr.addr, align 8
  %call763 = call i64 @builtin_lisp_symbol(i32 67)
  %cmp764 = icmp eq i64 %320, %call763
  br i1 %cmp764, label %if.then.766, label %if.else.802

if.then.766:                                      ; preds = %if.else.762
  %321 = load i64, i64* %value.addr, align 8
  %and769 = and i64 %321, 7
  %conv770 = trunc i64 %and769 to i32
  %cmp771 = icmp eq i32 %conv770, 0
  br i1 %cmp771, label %if.then.773, label %if.else.775

if.then.773:                                      ; preds = %if.then.766
  %call774 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call774, i64* %tail768, align 8
  br label %if.end.795

if.else.775:                                      ; preds = %if.then.766
  %322 = load i64, i64* %value.addr, align 8
  store i64 %322, i64* %tail768, align 8
  br label %for.cond.776

for.cond.776:                                     ; preds = %for.inc.790, %if.else.775
  %323 = load i64, i64* %tail768, align 8
  %and777 = and i64 %323, 7
  %conv778 = trunc i64 %and777 to i32
  %cmp779 = icmp eq i32 %conv778, 3
  br i1 %cmp779, label %for.body.781, label %for.end.794

for.body.781:                                     ; preds = %for.cond.776
  %324 = load i64, i64* %tail768, align 8
  %sub782 = sub nsw i64 %324, 3
  %325 = inttoptr i64 %sub782 to i8*
  %326 = bitcast i8* %325 to %struct.Lisp_Cons*
  %car783 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %326, i32 0, i32 0
  %327 = load i64, i64* %car783, align 8
  %and784 = and i64 %327, 7
  %conv785 = trunc i64 %and784 to i32
  %cmp786 = icmp eq i32 %conv785, 0
  br i1 %cmp786, label %if.end.789, label %if.then.788

if.then.788:                                      ; preds = %for.body.781
  br label %for.end.794

if.end.789:                                       ; preds = %for.body.781
  br label %for.inc.790

for.inc.790:                                      ; preds = %if.end.789
  %328 = load i64, i64* %tail768, align 8
  %sub791 = sub nsw i64 %328, 3
  %329 = inttoptr i64 %sub791 to i8*
  %330 = bitcast i8* %329 to %struct.Lisp_Cons*
  %u792 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %330, i32 0, i32 1
  %cdr793 = bitcast %union.anon.10* %u792 to i64*
  %331 = load i64, i64* %cdr793, align 8
  store i64 %331, i64* %tail768, align 8
  br label %for.cond.776

for.end.794:                                      ; preds = %if.then.788, %for.cond.776
  br label %if.end.795

if.end.795:                                       ; preds = %for.end.794, %if.then.773
  %332 = load i64, i64* %tail768, align 8
  %call796 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp797 = icmp eq i64 %332, %call796
  br i1 %cmp797, label %if.then.799, label %if.else.800

if.then.799:                                      ; preds = %if.end.795
  %333 = load i64, i64* %lface, align 8
  %334 = load i64, i64* %value.addr, align 8
  call void @ASET(i64 %333, i64 16, i64 %334)
  br label %if.end.801

if.else.800:                                      ; preds = %if.end.795
  %335 = load i64, i64* %value.addr, align 8
  call void @signal_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i32 0, i32 0), i64 %335) #6
  unreachable

if.end.801:                                       ; preds = %if.then.799
  br label %if.end.835

if.else.802:                                      ; preds = %if.else.762
  %336 = load i64, i64* %attr.addr, align 8
  %call803 = call i64 @builtin_lisp_symbol(i32 14)
  %cmp804 = icmp eq i64 %336, %call803
  br i1 %cmp804, label %if.then.806, label %if.else.816

if.then.806:                                      ; preds = %if.else.802
  %337 = load i64, i64* %lface, align 8
  %call807 = call i64 @AREF(i64 %337, i64 5)
  store i64 %call807, i64* %old_value, align 8
  %338 = load i64, i64* %lface, align 8
  %339 = load i64, i64* %value.addr, align 8
  %call808 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp809 = icmp eq i64 %339, %call808
  br i1 %cmp809, label %cond.true.811, label %cond.false.813

cond.true.811:                                    ; preds = %if.then.806
  %call812 = call i64 @builtin_lisp_symbol(i32 707)
  br label %cond.end.815

cond.false.813:                                   ; preds = %if.then.806
  %call814 = call i64 @builtin_lisp_symbol(i32 205)
  br label %cond.end.815

cond.end.815:                                     ; preds = %cond.false.813, %cond.true.811
  %cond = phi i64 [ %call812, %cond.true.811 ], [ %call814, %cond.false.813 ]
  call void @ASET(i64 %338, i64 5, i64 %cond)
  store i32 5, i32* %prop_index, align 4
  br label %if.end.834

if.else.816:                                      ; preds = %if.else.802
  %340 = load i64, i64* %attr.addr, align 8
  %call817 = call i64 @builtin_lisp_symbol(i32 69)
  %cmp818 = icmp eq i64 %340, %call817
  br i1 %cmp818, label %if.then.820, label %if.else.832

if.then.820:                                      ; preds = %if.else.816
  %call821 = call i64 @builtin_lisp_symbol(i32 119)
  store i64 %call821, i64* %attr.addr, align 8
  %341 = load i64, i64* %lface, align 8
  %call822 = call i64 @AREF(i64 %341, i64 6)
  store i64 %call822, i64* %old_value, align 8
  %342 = load i64, i64* %lface, align 8
  %343 = load i64, i64* %value.addr, align 8
  %call823 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp824 = icmp eq i64 %343, %call823
  br i1 %cmp824, label %cond.true.826, label %cond.false.828

cond.true.826:                                    ; preds = %if.then.820
  %call827 = call i64 @builtin_lisp_symbol(i32 707)
  br label %cond.end.830

cond.false.828:                                   ; preds = %if.then.820
  %call829 = call i64 @builtin_lisp_symbol(i32 582)
  br label %cond.end.830

cond.end.830:                                     ; preds = %cond.false.828, %cond.true.826
  %cond831 = phi i64 [ %call827, %cond.true.826 ], [ %call829, %cond.false.828 ]
  call void @ASET(i64 %342, i64 6, i64 %cond831)
  store i32 6, i32* %prop_index, align 4
  br label %if.end.833

if.else.832:                                      ; preds = %if.else.816
  %344 = load i64, i64* %attr.addr, align 8
  call void @signal_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i32 0, i32 0), i64 %344) #6
  unreachable

if.end.833:                                       ; preds = %cond.end.830
  br label %if.end.834

if.end.834:                                       ; preds = %if.end.833, %cond.end.815
  br label %if.end.835

if.end.835:                                       ; preds = %if.end.834, %if.end.801
  br label %if.end.836

if.end.836:                                       ; preds = %if.end.835, %if.end.761
  br label %if.end.837

if.end.837:                                       ; preds = %if.end.836, %if.end.735
  br label %if.end.838

if.end.838:                                       ; preds = %if.end.837, %if.end.664
  br label %if.end.839

if.end.839:                                       ; preds = %if.end.838, %if.end.635
  br label %if.end.840

if.end.840:                                       ; preds = %if.end.839, %if.end.611
  br label %if.end.841

if.end.841:                                       ; preds = %if.end.840, %if.end.585
  br label %if.end.842

if.end.842:                                       ; preds = %if.end.841, %if.end.559
  br label %if.end.843

if.end.843:                                       ; preds = %if.end.842, %if.end.533
  br label %if.end.844

if.end.844:                                       ; preds = %if.end.843, %if.end.497
  br label %if.end.845

if.end.845:                                       ; preds = %if.end.844, %if.end.364
  br label %if.end.846

if.end.846:                                       ; preds = %if.end.845, %if.end.328
  br label %if.end.847

if.end.847:                                       ; preds = %if.end.846, %if.end.292
  br label %if.end.848

if.end.848:                                       ; preds = %if.end.847, %if.end.201
  br label %if.end.849

if.end.849:                                       ; preds = %if.end.848, %if.end.172
  br label %if.end.850

if.end.850:                                       ; preds = %if.end.849, %if.end.143
  br label %if.end.851

if.end.851:                                       ; preds = %if.end.850, %if.end.99
  br label %if.end.852

if.end.852:                                       ; preds = %if.end.851, %if.end.79
  %345 = load i32, i32* %prop_index, align 4
  %tobool853 = icmp ne i32 %345, 0
  br i1 %tobool853, label %if.then.854, label %if.end.858

if.then.854:                                      ; preds = %if.end.852
  %346 = load i64, i64* %lface, align 8
  %call855 = call %struct.Lisp_Vector* @XVECTOR(i64 %346)
  %contents856 = getelementptr inbounds %struct.Lisp_Vector, %struct.Lisp_Vector* %call855, i32 0, i32 1
  %arraydecay857 = getelementptr inbounds [0 x i64], [0 x i64]* %contents856, i32 0, i32 0
  %347 = load i32, i32* %prop_index, align 4
  call void @font_clear_prop(i64* %arraydecay857, i32 %347)
  br label %if.end.858

if.end.858:                                       ; preds = %if.then.854, %if.end.852
  %348 = load i64, i64* %frame.addr, align 8
  %call859 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp860 = icmp eq i64 %348, %call859
  br i1 %cmp860, label %if.end.878, label %land.lhs.true.862

land.lhs.true.862:                                ; preds = %if.end.858
  %349 = load i64, i64* %face.addr, align 8
  %call863 = call i64 @builtin_lisp_symbol(i32 399)
  %call864 = call i64 @Fget(i64 %349, i64 %call863)
  %call865 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp866 = icmp eq i64 %call864, %call865
  br i1 %cmp866, label %land.lhs.true.868, label %if.end.878

land.lhs.true.868:                                ; preds = %land.lhs.true.862
  %350 = load i64, i64* %old_value, align 8
  %351 = load i64, i64* %value.addr, align 8
  %call869 = call i64 @Fequal(i64 %350, i64 %351)
  %call870 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp871 = icmp eq i64 %call869, %call870
  br i1 %cmp871, label %if.then.873, label %if.end.878

if.then.873:                                      ; preds = %land.lhs.true.868
  %352 = load %struct.frame*, %struct.frame** %f, align 8
  %face_change874 = getelementptr inbounds %struct.frame, %struct.frame* %352, i32 0, i32 26
  %353 = bitcast i48* %face_change874 to i64*
  %bf.load875 = load i64, i64* %353, align 8
  %bf.clear876 = and i64 %bf.load875, -1099511627777
  %bf.set877 = or i64 %bf.clear876, 1099511627776
  store i64 %bf.set877, i64* %353, align 8
  %354 = load %struct.frame*, %struct.frame** %f, align 8
  call void @fset_redisplay(%struct.frame* %354)
  br label %if.end.878

if.end.878:                                       ; preds = %if.then.873, %land.lhs.true.868, %land.lhs.true.862, %if.end.858
  %355 = load i64, i64* %value.addr, align 8
  %call879 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp880 = icmp eq i64 %355, %call879
  br i1 %cmp880, label %if.end.1022, label %land.lhs.true.882

land.lhs.true.882:                                ; preds = %if.end.878
  %356 = load i64, i64* %value.addr, align 8
  %call883 = call i64 @builtin_lisp_symbol(i32 64)
  %cmp884 = icmp eq i64 %356, %call883
  br i1 %cmp884, label %if.end.1022, label %land.lhs.true.886

land.lhs.true.886:                                ; preds = %land.lhs.true.882
  %357 = load i64, i64* %old_value, align 8
  %358 = load i64, i64* %value.addr, align 8
  %call887 = call i64 @Fequal(i64 %357, i64 %358)
  %call888 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp889 = icmp eq i64 %call887, %call888
  br i1 %cmp889, label %if.then.891, label %if.end.1022

if.then.891:                                      ; preds = %land.lhs.true.886
  %call893 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call893, i64* %param, align 8
  %359 = load i64, i64* %face.addr, align 8
  %call894 = call i64 @builtin_lisp_symbol(i32 324)
  %cmp895 = icmp eq i64 %359, %call894
  br i1 %cmp895, label %if.then.897, label %if.else.928

if.then.897:                                      ; preds = %if.then.891
  %360 = load i64, i64* %frame.addr, align 8
  %call898 = call zeroext i1 @FRAMEP(i64 %360)
  br i1 %call898, label %land.lhs.true.900, label %if.else.913

land.lhs.true.900:                                ; preds = %if.then.897
  %361 = load i32, i32* %prop_index, align 4
  %tobool901 = icmp ne i32 %361, 0
  br i1 %tobool901, label %land.lhs.true.906, label %lor.lhs.false.902

lor.lhs.false.902:                                ; preds = %land.lhs.true.900
  %362 = load i64, i64* %attr.addr, align 8
  %call903 = call i64 @builtin_lisp_symbol(i32 44)
  %cmp904 = icmp eq i64 %362, %call903
  br i1 %cmp904, label %land.lhs.true.906, label %if.else.913

land.lhs.true.906:                                ; preds = %lor.lhs.false.902, %land.lhs.true.900
  %363 = load i64, i64* %lface, align 8
  %call907 = call %struct.Lisp_Vector* @XVECTOR(i64 %363)
  %contents908 = getelementptr inbounds %struct.Lisp_Vector, %struct.Lisp_Vector* %call907, i32 0, i32 1
  %arraydecay909 = getelementptr inbounds [0 x i64], [0 x i64]* %contents908, i32 0, i32 0
  %call910 = call zeroext i1 @lface_fully_specified_p(i64* %arraydecay909)
  br i1 %call910, label %if.then.912, label %if.else.913

if.then.912:                                      ; preds = %land.lhs.true.906
  %364 = load i64, i64* %frame.addr, align 8
  %365 = load i64, i64* %lface, align 8
  call void @set_font_frame_param(i64 %364, i64 %365)
  br label %if.end.927

if.else.913:                                      ; preds = %land.lhs.true.906, %lor.lhs.false.902, %if.then.897
  %366 = load i64, i64* %attr.addr, align 8
  %call914 = call i64 @builtin_lisp_symbol(i32 47)
  %cmp915 = icmp eq i64 %366, %call914
  br i1 %cmp915, label %if.then.917, label %if.else.919

if.then.917:                                      ; preds = %if.else.913
  %call918 = call i64 @builtin_lisp_symbol(i32 451)
  store i64 %call918, i64* %param, align 8
  br label %if.end.926

if.else.919:                                      ; preds = %if.else.913
  %367 = load i64, i64* %attr.addr, align 8
  %call920 = call i64 @builtin_lisp_symbol(i32 13)
  %cmp921 = icmp eq i64 %367, %call920
  br i1 %cmp921, label %if.then.923, label %if.end.925

if.then.923:                                      ; preds = %if.else.919
  %call924 = call i64 @builtin_lisp_symbol(i32 193)
  store i64 %call924, i64* %param, align 8
  br label %if.end.925

if.end.925:                                       ; preds = %if.then.923, %if.else.919
  br label %if.end.926

if.end.926:                                       ; preds = %if.end.925, %if.then.917
  br label %if.end.927

if.end.927:                                       ; preds = %if.end.926, %if.then.912
  br label %if.end.1006

if.else.928:                                      ; preds = %if.then.891
  %368 = load i64, i64* %face.addr, align 8
  %call929 = call i64 @builtin_lisp_symbol(i32 830)
  %cmp930 = icmp eq i64 %368, %call929
  br i1 %cmp930, label %if.then.932, label %if.else.946

if.then.932:                                      ; preds = %if.else.928
  %369 = load i64, i64* %attr.addr, align 8
  %call933 = call i64 @builtin_lisp_symbol(i32 47)
  %cmp934 = icmp eq i64 %369, %call933
  br i1 %cmp934, label %if.then.936, label %if.else.938

if.then.936:                                      ; preds = %if.then.932
  %call937 = call i64 @builtin_lisp_symbol(i32 832)
  store i64 %call937, i64* %param, align 8
  br label %if.end.945

if.else.938:                                      ; preds = %if.then.932
  %370 = load i64, i64* %attr.addr, align 8
  %call939 = call i64 @builtin_lisp_symbol(i32 13)
  %cmp940 = icmp eq i64 %370, %call939
  br i1 %cmp940, label %if.then.942, label %if.end.944

if.then.942:                                      ; preds = %if.else.938
  %call943 = call i64 @builtin_lisp_symbol(i32 831)
  store i64 %call943, i64* %param, align 8
  br label %if.end.944

if.end.944:                                       ; preds = %if.then.942, %if.else.938
  br label %if.end.945

if.end.945:                                       ; preds = %if.end.944, %if.then.936
  br label %if.end.1005

if.else.946:                                      ; preds = %if.else.928
  %371 = load i64, i64* %face.addr, align 8
  %call947 = call i64 @builtin_lisp_symbol(i32 208)
  %cmp948 = icmp eq i64 %371, %call947
  br i1 %cmp948, label %if.then.950, label %if.else.957

if.then.950:                                      ; preds = %if.else.946
  %372 = load i64, i64* %attr.addr, align 8
  %call951 = call i64 @builtin_lisp_symbol(i32 13)
  %cmp952 = icmp eq i64 %372, %call951
  br i1 %cmp952, label %if.then.954, label %if.end.956

if.then.954:                                      ; preds = %if.then.950
  %call955 = call i64 @builtin_lisp_symbol(i32 209)
  store i64 %call955, i64* %param, align 8
  br label %if.end.956

if.end.956:                                       ; preds = %if.then.954, %if.then.950
  br label %if.end.1004

if.else.957:                                      ; preds = %if.else.946
  %373 = load i64, i64* %face.addr, align 8
  %call958 = call i64 @builtin_lisp_symbol(i32 306)
  %cmp959 = icmp eq i64 %373, %call958
  br i1 %cmp959, label %if.then.961, label %if.else.968

if.then.961:                                      ; preds = %if.else.957
  %374 = load i64, i64* %attr.addr, align 8
  %call962 = call i64 @builtin_lisp_symbol(i32 13)
  %cmp963 = icmp eq i64 %374, %call962
  br i1 %cmp963, label %if.then.965, label %if.end.967

if.then.965:                                      ; preds = %if.then.961
  %call966 = call i64 @builtin_lisp_symbol(i32 307)
  store i64 %call966, i64* %param, align 8
  br label %if.end.967

if.end.967:                                       ; preds = %if.then.965, %if.then.961
  br label %if.end.1003

if.else.968:                                      ; preds = %if.else.957
  %375 = load i64, i64* %face.addr, align 8
  %call969 = call i64 @builtin_lisp_symbol(i32 684)
  %cmp970 = icmp eq i64 %375, %call969
  br i1 %cmp970, label %if.then.972, label %if.else.979

if.then.972:                                      ; preds = %if.else.968
  %376 = load i64, i64* %attr.addr, align 8
  %call973 = call i64 @builtin_lisp_symbol(i32 13)
  %cmp974 = icmp eq i64 %376, %call973
  br i1 %cmp974, label %if.then.976, label %if.end.978

if.then.976:                                      ; preds = %if.then.972
  %call977 = call i64 @builtin_lisp_symbol(i32 686)
  store i64 %call977, i64* %param, align 8
  br label %if.end.978

if.end.978:                                       ; preds = %if.then.976, %if.then.972
  br label %if.end.1002

if.else.979:                                      ; preds = %if.else.968
  %377 = load i64, i64* %face.addr, align 8
  %call980 = call i64 @builtin_lisp_symbol(i32 650)
  %cmp981 = icmp eq i64 %377, %call980
  br i1 %cmp981, label %if.then.983, label %if.end.1001

if.then.983:                                      ; preds = %if.else.979
  %378 = load i64, i64* %frame.addr, align 8
  %call984 = call zeroext i1 @FRAMEP(i64 %378)
  br i1 %call984, label %if.then.985, label %if.else.999

if.then.985:                                      ; preds = %if.then.983
  %379 = load i64, i64* %frame.addr, align 8
  %sub988 = sub nsw i64 %379, 5
  %380 = inttoptr i64 %sub988 to i8*
  %381 = bitcast i8* %380 to %struct.frame*
  store %struct.frame* %381, %struct.frame** %f987, align 8
  %382 = load %struct.frame*, %struct.frame** %f987, align 8
  %face_cache = getelementptr inbounds %struct.frame, %struct.frame* %382, i32 0, i32 20
  %383 = load %struct.face_cache*, %struct.face_cache** %face_cache, align 8
  %cmp989 = icmp eq %struct.face_cache* %383, null
  br i1 %cmp989, label %if.then.991, label %if.end.994

if.then.991:                                      ; preds = %if.then.985
  %384 = load %struct.frame*, %struct.frame** %f987, align 8
  %call992 = call %struct.face_cache* @make_face_cache(%struct.frame* %384)
  %385 = load %struct.frame*, %struct.frame** %f987, align 8
  %face_cache993 = getelementptr inbounds %struct.frame, %struct.frame* %385, i32 0, i32 20
  store %struct.face_cache* %call992, %struct.face_cache** %face_cache993, align 8
  br label %if.end.994

if.end.994:                                       ; preds = %if.then.991, %if.then.985
  %386 = load %struct.frame*, %struct.frame** %f987, align 8
  %face_cache995 = getelementptr inbounds %struct.frame, %struct.frame* %386, i32 0, i32 20
  %387 = load %struct.face_cache*, %struct.face_cache** %face_cache995, align 8
  %menu_face_changed_p = getelementptr inbounds %struct.face_cache, %struct.face_cache* %387, i32 0, i32 5
  %bf.load996 = load i8, i8* %menu_face_changed_p, align 4
  %bf.clear997 = and i8 %bf.load996, -2
  %bf.set998 = or i8 %bf.clear997, 1
  store i8 %bf.set998, i8* %menu_face_changed_p, align 4
  br label %if.end.1000

if.else.999:                                      ; preds = %if.then.983
  store i8 1, i8* @menu_face_changed_default, align 1
  br label %if.end.1000

if.end.1000:                                      ; preds = %if.else.999, %if.end.994
  br label %if.end.1001

if.end.1001:                                      ; preds = %if.end.1000, %if.else.979
  br label %if.end.1002

if.end.1002:                                      ; preds = %if.end.1001, %if.end.978
  br label %if.end.1003

if.end.1003:                                      ; preds = %if.end.1002, %if.end.967
  br label %if.end.1004

if.end.1004:                                      ; preds = %if.end.1003, %if.end.956
  br label %if.end.1005

if.end.1005:                                      ; preds = %if.end.1004, %if.end.945
  br label %if.end.1006

if.end.1006:                                      ; preds = %if.end.1005, %if.end.927
  %388 = load i64, i64* %param, align 8
  %call1007 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1008 = icmp eq i64 %388, %call1007
  br i1 %cmp1008, label %if.end.1021, label %if.then.1010

if.then.1010:                                     ; preds = %if.end.1006
  %389 = load i64, i64* %frame.addr, align 8
  %call1011 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp1012 = icmp eq i64 %389, %call1011
  br i1 %cmp1012, label %if.then.1014, label %if.else.1015

if.then.1014:                                     ; preds = %if.then.1010
  %390 = load i64, i64* %param, align 8
  %391 = load i64, i64* %value.addr, align 8
  call void @store_in_alist(i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 60), i64 %390, i64 %391)
  br label %if.end.1020

if.else.1015:                                     ; preds = %if.then.1010
  %392 = load i64, i64* @Vparam_value_alist, align 8
  %sub1017 = sub nsw i64 %392, 3
  %393 = inttoptr i64 %sub1017 to i8*
  %394 = bitcast i8* %393 to %struct.Lisp_Cons*
  %car1018 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %394, i32 0, i32 0
  %395 = load i64, i64* %car1018, align 8
  store i64 %395, i64* %cons, align 8
  %396 = load i64, i64* %cons, align 8
  %397 = load i64, i64* %param, align 8
  call void @XSETCAR(i64 %396, i64 %397)
  %398 = load i64, i64* %cons, align 8
  %399 = load i64, i64* %value.addr, align 8
  call void @XSETCDR(i64 %398, i64 %399)
  %400 = load i64, i64* %frame.addr, align 8
  %401 = load i64, i64* @Vparam_value_alist, align 8
  %call1019 = call i64 @Fmodify_frame_parameters(i64 %400, i64 %401)
  br label %if.end.1020

if.end.1020:                                      ; preds = %if.else.1015, %if.then.1014
  br label %if.end.1021

if.end.1021:                                      ; preds = %if.end.1020, %if.end.1006
  br label %if.end.1022

if.end.1022:                                      ; preds = %if.end.1021, %land.lhs.true.886, %land.lhs.true.882, %if.end.878
  %402 = load i64, i64* %face.addr, align 8
  store i64 %402, i64* %retval
  br label %return

return:                                           ; preds = %if.end.1022, %for.end
  %403 = load i64, i64* %retval
  ret i64 %403
}

declare i64 @SCHARS(i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @merge_face_heights(i64 %from, i64 %to, i64 %invalid) #0 {
entry:
  %from.addr = alloca i64, align 8
  %to.addr = alloca i64, align 8
  %invalid.addr = alloca i64, align 8
  %result = alloca i64, align 8
  store i64 %from, i64* %from.addr, align 8
  store i64 %to, i64* %to.addr, align 8
  store i64 %invalid, i64* %invalid.addr, align 8
  %0 = load i64, i64* %invalid.addr, align 8
  store i64 %0, i64* %result, align 8
  %1 = load i64, i64* %from.addr, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %and1 = and i32 %conv, -5
  %cmp = icmp eq i32 %and1, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %from.addr, align 8
  store i64 %2, i64* %result, align 8
  br label %if.end.51

if.else:                                          ; preds = %entry
  %3 = load i64, i64* %from.addr, align 8
  %and3 = and i64 %3, 7
  %conv4 = trunc i64 %and3 to i32
  %cmp5 = icmp eq i32 %conv4, 7
  br i1 %cmp5, label %if.then.7, label %if.else.33

if.then.7:                                        ; preds = %if.else
  %4 = load i64, i64* %to.addr, align 8
  %and8 = and i64 %4, 7
  %conv9 = trunc i64 %and8 to i32
  %and10 = and i32 %conv9, -5
  %cmp11 = icmp eq i32 %and10, 2
  br i1 %cmp11, label %if.then.13, label %if.else.16

if.then.13:                                       ; preds = %if.then.7
  %5 = load i64, i64* %from.addr, align 8
  %call = call double @XFLOAT_DATA(i64 %5)
  %6 = load i64, i64* %to.addr, align 8
  %shr = ashr i64 %6, 2
  %conv14 = sitofp i64 %shr to double
  %mul = fmul double %call, %conv14
  %conv15 = fptoui double %mul to i64
  %shl = shl i64 %conv15, 2
  %add = add i64 %shl, 2
  store i64 %add, i64* %result, align 8
  br label %if.end.32

if.else.16:                                       ; preds = %if.then.7
  %7 = load i64, i64* %to.addr, align 8
  %and17 = and i64 %7, 7
  %conv18 = trunc i64 %and17 to i32
  %cmp19 = icmp eq i32 %conv18, 7
  br i1 %cmp19, label %if.then.21, label %if.else.26

if.then.21:                                       ; preds = %if.else.16
  %8 = load i64, i64* %from.addr, align 8
  %call22 = call double @XFLOAT_DATA(i64 %8)
  %9 = load i64, i64* %to.addr, align 8
  %call23 = call double @XFLOAT_DATA(i64 %9)
  %mul24 = fmul double %call22, %call23
  %call25 = call i64 @make_float(double %mul24)
  store i64 %call25, i64* %result, align 8
  br label %if.end.31

if.else.26:                                       ; preds = %if.else.16
  %10 = load i64, i64* %to.addr, align 8
  %call27 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp28 = icmp eq i64 %10, %call27
  br i1 %cmp28, label %if.then.30, label %if.end

if.then.30:                                       ; preds = %if.else.26
  %11 = load i64, i64* %from.addr, align 8
  store i64 %11, i64* %result, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.30, %if.else.26
  br label %if.end.31

if.end.31:                                        ; preds = %if.end, %if.then.21
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.13
  br label %if.end.50

if.else.33:                                       ; preds = %if.else
  %12 = load i64, i64* %from.addr, align 8
  %call34 = call zeroext i1 @FUNCTIONP(i64 %12)
  br i1 %call34, label %if.then.35, label %if.end.49

if.then.35:                                       ; preds = %if.else.33
  %13 = load i64, i64* %from.addr, align 8
  %14 = load i64, i64* %to.addr, align 8
  %call36 = call i64 @safe_call1(i64 %13, i64 %14)
  store i64 %call36, i64* %result, align 8
  %15 = load i64, i64* %to.addr, align 8
  %and37 = and i64 %15, 7
  %conv38 = trunc i64 %and37 to i32
  %and39 = and i32 %conv38, -5
  %cmp40 = icmp eq i32 %and39, 2
  br i1 %cmp40, label %land.lhs.true, label %if.end.48

land.lhs.true:                                    ; preds = %if.then.35
  %16 = load i64, i64* %result, align 8
  %and42 = and i64 %16, 7
  %conv43 = trunc i64 %and42 to i32
  %and44 = and i32 %conv43, -5
  %cmp45 = icmp eq i32 %and44, 2
  br i1 %cmp45, label %if.end.48, label %if.then.47

if.then.47:                                       ; preds = %land.lhs.true
  %17 = load i64, i64* %invalid.addr, align 8
  store i64 %17, i64* %result, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %land.lhs.true, %if.then.35
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.else.33
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.end.32
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.then
  %18 = load i64, i64* %result, align 8
  ret i64 %18
}

declare i32 @font_style_to_value(i32, i64, i1 zeroext) #1

declare i64 @CAR_SAFE(i64) #1

declare i64 @CDR_SAFE(i64) #1

declare i32 @fs_query_fontset(i64, i32) #1

declare i64 @fontset_ascii(i32) #1

declare zeroext i1 @FONT_OBJECT_P(i64) #1

declare i64 @font_load_for_lface(%struct.frame*, i64*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @set_lface_from_font(%struct.frame* %f, i64 %lface, i64 %font_object, i1 zeroext %force_p) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %lface.addr = alloca i64, align 8
  %font_object.addr = alloca i64, align 8
  %force_p.addr = alloca i8, align 1
  %val = alloca i64, align 8
  %font = alloca %struct.font*, align 8
  %family = alloca i64, align 8
  %foundry = alloca i64, align 8
  %pt = alloca i32, align 4
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %lface, i64* %lface.addr, align 8
  store i64 %font_object, i64* %font_object.addr, align 8
  %frombool = zext i1 %force_p to i8
  store i8 %frombool, i8* %force_p.addr, align 1
  %0 = load i64, i64* %font_object.addr, align 8
  %call = call %struct.font* @XFONT_OBJECT(i64 %0)
  store %struct.font* %call, %struct.font** %font, align 8
  %1 = load i8, i8* %force_p.addr, align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i64, i64* %lface.addr, align 8
  %call1 = call i64 @AREF(i64 %2, i64 1)
  %call2 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp = icmp eq i64 %call1, %call2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load i64, i64* %font_object.addr, align 8
  %call3 = call i64 @AREF(i64 %3, i64 2)
  store i64 %call3, i64* %family, align 8
  %4 = load i64, i64* %lface.addr, align 8
  %5 = load i64, i64* %family, align 8
  %call4 = call i64 @SYMBOL_NAME(i64 %5)
  call void @ASET(i64 %4, i64 1, i64 %call4)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %6 = load i8, i8* %force_p.addr, align 1
  %tobool5 = trunc i8 %6 to i1
  br i1 %tobool5, label %if.then.10, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %if.end
  %7 = load i64, i64* %lface.addr, align 8
  %call7 = call i64 @AREF(i64 %7, i64 2)
  %call8 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp9 = icmp eq i64 %call7, %call8
  br i1 %cmp9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %lor.lhs.false.6, %if.end
  %8 = load i64, i64* %font_object.addr, align 8
  %call11 = call i64 @AREF(i64 %8, i64 1)
  store i64 %call11, i64* %foundry, align 8
  %9 = load i64, i64* %lface.addr, align 8
  %10 = load i64, i64* %foundry, align 8
  %call12 = call i64 @SYMBOL_NAME(i64 %10)
  call void @ASET(i64 %9, i64 2, i64 %call12)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %lor.lhs.false.6
  %11 = load i8, i8* %force_p.addr, align 1
  %tobool14 = trunc i8 %11 to i1
  br i1 %tobool14, label %if.then.19, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %if.end.13
  %12 = load i64, i64* %lface.addr, align 8
  %call16 = call i64 @AREF(i64 %12, i64 4)
  %call17 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp18 = icmp eq i64 %call16, %call17
  br i1 %cmp18, label %if.then.19, label %if.end.24

if.then.19:                                       ; preds = %lor.lhs.false.15, %if.end.13
  %13 = load %struct.font*, %struct.font** %font, align 8
  %pixel_size = getelementptr inbounds %struct.font, %struct.font* %13, i32 0, i32 4
  %14 = load i32, i32* %pixel_size, align 4
  %mul = mul nsw i32 %14, 10
  %conv = sitofp i32 %mul to double
  %mul20 = fmul double %conv, 7.227000e+01
  %15 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %15, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %16 = load %struct.x_output*, %struct.x_output** %x, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %16, i32 0, i32 44
  %17 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %resy = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %17, i32 0, i32 8
  %18 = load double, double* %resy, align 8
  %div = fdiv double %mul20, %18
  %add = fadd double %div, 5.000000e-01
  %conv21 = fptosi double %add to i32
  store i32 %conv21, i32* %pt, align 4
  %19 = load i64, i64* %lface.addr, align 8
  %20 = load i32, i32* %pt, align 4
  %conv22 = sext i32 %20 to i64
  %shl = shl i64 %conv22, 2
  %add23 = add i64 %shl, 2
  call void @ASET(i64 %19, i64 4, i64 %add23)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.19, %lor.lhs.false.15
  %21 = load i8, i8* %force_p.addr, align 1
  %tobool25 = trunc i8 %21 to i1
  br i1 %tobool25, label %if.then.32, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %if.end.24
  %22 = load i64, i64* %lface.addr, align 8
  %call28 = call i64 @AREF(i64 %22, i64 5)
  %call29 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp30 = icmp eq i64 %call28, %call29
  br i1 %cmp30, label %if.then.32, label %if.end.38

if.then.32:                                       ; preds = %lor.lhs.false.27, %if.end.24
  %23 = load i64, i64* %font_object.addr, align 8
  %call33 = call i64 @font_style_symbolic(i64 %23, i32 5, i1 zeroext true)
  store i64 %call33, i64* %val, align 8
  %24 = load i64, i64* %lface.addr, align 8
  %25 = load i64, i64* %val, align 8
  %call34 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp35 = icmp eq i64 %25, %call34
  br i1 %cmp35, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.32
  %26 = load i64, i64* %val, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.32
  %call37 = call i64 @builtin_lisp_symbol(i32 707)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %26, %cond.true ], [ %call37, %cond.false ]
  call void @ASET(i64 %24, i64 5, i64 %cond)
  br label %if.end.38

if.end.38:                                        ; preds = %cond.end, %lor.lhs.false.27
  %27 = load i8, i8* %force_p.addr, align 1
  %tobool39 = trunc i8 %27 to i1
  br i1 %tobool39, label %if.then.46, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %if.end.38
  %28 = load i64, i64* %lface.addr, align 8
  %call42 = call i64 @AREF(i64 %28, i64 6)
  %call43 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp44 = icmp eq i64 %call42, %call43
  br i1 %cmp44, label %if.then.46, label %if.end.56

if.then.46:                                       ; preds = %lor.lhs.false.41, %if.end.38
  %29 = load i64, i64* %font_object.addr, align 8
  %call47 = call i64 @font_style_symbolic(i64 %29, i32 6, i1 zeroext true)
  store i64 %call47, i64* %val, align 8
  %30 = load i64, i64* %lface.addr, align 8
  %31 = load i64, i64* %val, align 8
  %call48 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp49 = icmp eq i64 %31, %call48
  br i1 %cmp49, label %cond.false.52, label %cond.true.51

cond.true.51:                                     ; preds = %if.then.46
  %32 = load i64, i64* %val, align 8
  br label %cond.end.54

cond.false.52:                                    ; preds = %if.then.46
  %call53 = call i64 @builtin_lisp_symbol(i32 707)
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.false.52, %cond.true.51
  %cond55 = phi i64 [ %32, %cond.true.51 ], [ %call53, %cond.false.52 ]
  call void @ASET(i64 %30, i64 6, i64 %cond55)
  br label %if.end.56

if.end.56:                                        ; preds = %cond.end.54, %lor.lhs.false.41
  %33 = load i8, i8* %force_p.addr, align 1
  %tobool57 = trunc i8 %33 to i1
  br i1 %tobool57, label %if.then.64, label %lor.lhs.false.59

lor.lhs.false.59:                                 ; preds = %if.end.56
  %34 = load i64, i64* %lface.addr, align 8
  %call60 = call i64 @AREF(i64 %34, i64 3)
  %call61 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp62 = icmp eq i64 %call60, %call61
  br i1 %cmp62, label %if.then.64, label %if.end.74

if.then.64:                                       ; preds = %lor.lhs.false.59, %if.end.56
  %35 = load i64, i64* %font_object.addr, align 8
  %call65 = call i64 @font_style_symbolic(i64 %35, i32 7, i1 zeroext true)
  store i64 %call65, i64* %val, align 8
  %36 = load i64, i64* %lface.addr, align 8
  %37 = load i64, i64* %val, align 8
  %call66 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp67 = icmp eq i64 %37, %call66
  br i1 %cmp67, label %cond.false.70, label %cond.true.69

cond.true.69:                                     ; preds = %if.then.64
  %38 = load i64, i64* %val, align 8
  br label %cond.end.72

cond.false.70:                                    ; preds = %if.then.64
  %call71 = call i64 @builtin_lisp_symbol(i32 707)
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.false.70, %cond.true.69
  %cond73 = phi i64 [ %38, %cond.true.69 ], [ %call71, %cond.false.70 ]
  call void @ASET(i64 %36, i64 3, i64 %cond73)
  br label %if.end.74

if.end.74:                                        ; preds = %cond.end.72, %lor.lhs.false.59
  %39 = load i64, i64* %lface.addr, align 8
  %40 = load i64, i64* %font_object.addr, align 8
  call void @ASET(i64 %39, i64 15, i64 %40)
  ret void
}

declare i64 @Fquery_fontset(i64, i64) #1

declare void @font_clear_prop(i64*, i32) #1

declare i64 @Fequal(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal zeroext i1 @lface_fully_specified_p(i64* %attrs) #0 {
entry:
  %attrs.addr = alloca i64*, align 8
  %i = alloca i32, align 4
  store i64* %attrs, i64** %attrs.addr, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 19
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %cmp1 = icmp ne i32 %1, 15
  br i1 %cmp1, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %cmp2 = icmp ne i32 %2, 16
  br i1 %cmp2, label %land.lhs.true.3, label %if.end.11

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %3 = load i32, i32* %i, align 4
  %cmp4 = icmp ne i32 %3, 18
  br i1 %cmp4, label %if.then, label %if.end.11

if.then:                                          ; preds = %land.lhs.true.3
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i64*, i64** %attrs.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %5, i64 %idxprom
  %6 = load i64, i64* %arrayidx, align 8
  %call = call i64 @builtin_lisp_symbol(i32 975)
  %cmp5 = icmp eq i64 %6, %call
  br i1 %cmp5, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %7 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %7 to i64
  %8 = load i64*, i64** %attrs.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, i64* %8, i64 %idxprom6
  %9 = load i64, i64* %arrayidx7, align 8
  %call8 = call i64 @builtin_lisp_symbol(i32 64)
  %cmp9 = icmp eq i64 %9, %call8
  br i1 %cmp9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %lor.lhs.false, %if.then
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %land.lhs.true.3, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.10, %for.cond
  %11 = load i32, i32* %i, align 4
  %cmp12 = icmp eq i32 %11, 19
  ret i1 %cmp12
}

; Function Attrs: nounwind uwtable
define internal void @set_font_frame_param(i64 %frame, i64 %lface) #0 {
entry:
  %frame.addr = alloca i64, align 8
  %lface.addr = alloca i64, align 8
  %f = alloca %struct.frame*, align 8
  %font = alloca i64, align 8
  %arg = alloca i64, align 8
  %.compoundliteral = alloca %union.Aligned_Cons, align 8
  %.compoundliteral13 = alloca %union.Aligned_Cons, align 8
  store i64 %frame, i64* %frame.addr, align 8
  store i64 %lface, i64* %lface.addr, align 8
  %0 = load i64, i64* %frame.addr, align 8
  %sub = sub nsw i64 %0, 5
  %1 = inttoptr i64 %sub to i8*
  %2 = bitcast i8* %1 to %struct.frame*
  store %struct.frame* %2, %struct.frame** %f, align 8
  %3 = load %struct.frame*, %struct.frame** %f, align 8
  %output_method = getelementptr inbounds %struct.frame, %struct.frame* %3, i32 0, i32 26
  %4 = bitcast i48* %output_method to i64*
  %bf.load = load i64, i64* %4, align 8
  %bf.lshr = lshr i64 %bf.load, 23
  %bf.clear = and i64 %bf.lshr, 7
  %bf.cast = trunc i64 %bf.clear to i32
  %cmp = icmp eq i32 %bf.cast, 2
  br i1 %cmp, label %land.lhs.true, label %if.end.25

land.lhs.true:                                    ; preds = %entry
  %5 = load i64, i64* %lface.addr, align 8
  %call = call i64 @AREF(i64 %5, i64 15)
  store i64 %call, i64* %font, align 8
  %6 = load i64, i64* %font, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp2 = icmp eq i64 %6, %call1
  %lnot = xor i1 %cmp2, true
  br i1 %lnot, label %if.then, label %if.end.25

if.then:                                          ; preds = %land.lhs.true
  %7 = load i64, i64* %font, align 8
  %call3 = call zeroext i1 @FONT_SPEC_P(i64 %7)
  br i1 %call3, label %if.then.4, label %if.end.10

if.then.4:                                        ; preds = %if.then
  %8 = load %struct.frame*, %struct.frame** %f, align 8
  %9 = load i64, i64* %lface.addr, align 8
  %call5 = call %struct.Lisp_Vector* @XVECTOR(i64 %9)
  %contents = getelementptr inbounds %struct.Lisp_Vector, %struct.Lisp_Vector* %call5, i32 0, i32 1
  %arraydecay = getelementptr inbounds [0 x i64], [0 x i64]* %contents, i32 0, i32 0
  %10 = load i64, i64* %font, align 8
  %call6 = call i64 @font_load_for_lface(%struct.frame* %8, i64* %arraydecay, i64 %10)
  store i64 %call6, i64* %font, align 8
  %11 = load i64, i64* %font, align 8
  %call7 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp8 = icmp eq i64 %11, %call7
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then.4
  br label %if.end.25

if.end:                                           ; preds = %if.then.4
  %12 = load i64, i64* %lface.addr, align 8
  %13 = load i64, i64* %font, align 8
  call void @ASET(i64 %12, i64 15, i64 %13)
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then
  %14 = load %struct.frame*, %struct.frame** %f, align 8
  %default_face_done_p = getelementptr inbounds %struct.frame, %struct.frame* %14, i32 0, i32 26
  %15 = bitcast i48* %default_face_done_p to i64*
  %bf.load11 = load i64, i64* %15, align 8
  %bf.clear12 = and i64 %bf.load11, -5
  store i64 %bf.clear12, i64* %15, align 8
  %s = bitcast %union.Aligned_Cons* %.compoundliteral to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s, i32 0, i32 0
  %s14 = bitcast %union.Aligned_Cons* %.compoundliteral13 to %struct.Lisp_Cons*
  %car15 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s14, i32 0, i32 0
  %call16 = call i64 @builtin_lisp_symbol(i32 439)
  store i64 %call16, i64* %car15, align 8
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s14, i32 0, i32 1
  %cdr = bitcast %union.anon.10* %u to i64*
  %16 = load i64, i64* %font, align 8
  store i64 %16, i64* %cdr, align 8
  %s17 = bitcast %union.Aligned_Cons* %.compoundliteral13 to %struct.Lisp_Cons*
  %17 = bitcast %struct.Lisp_Cons* %s17 to i8*
  %call18 = call i64 @make_lisp_ptr(i8* %17, i32 3)
  store i64 %call18, i64* %car, align 8
  %u19 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s, i32 0, i32 1
  %cdr20 = bitcast %union.anon.10* %u19 to i64*
  %call21 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call21, i64* %cdr20, align 8
  %s22 = bitcast %union.Aligned_Cons* %.compoundliteral to %struct.Lisp_Cons*
  %18 = bitcast %struct.Lisp_Cons* %s22 to i8*
  %call23 = call i64 @make_lisp_ptr(i8* %18, i32 3)
  store i64 %call23, i64* %arg, align 8
  %19 = load i64, i64* %frame.addr, align 8
  %20 = load i64, i64* %arg, align 8
  %call24 = call i64 @Fmodify_frame_parameters(i64 %19, i64 %20)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.9, %if.end.10, %land.lhs.true, %entry
  ret void
}

declare void @store_in_alist(i64*, i64, i64) #1

declare void @XSETCDR(i64, i64) #1

declare i64 @Fmodify_frame_parameters(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @update_face_from_frame_parameter(%struct.frame* %f, i64 %param, i64 %new_value) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %param.addr = alloca i64, align 8
  %new_value.addr = alloca i64, align 8
  %face = alloca i64, align 8
  %lface = alloca i64, align 8
  %frame = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %param, i64* %param.addr, align 8
  store i64 %new_value, i64* %new_value.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %face, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %face_alist = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 12
  %1 = load i64, i64* %face_alist, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %1, %call1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.73

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %param.addr, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 451)
  %cmp3 = icmp eq i64 %2, %call2
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %call5 = call i64 @builtin_lisp_symbol(i32 324)
  store i64 %call5, i64* %face, align 8
  %3 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %4 = load i64, i64* %face, align 8
  %call6 = call i64 @lface_from_face_name(%struct.frame* %3, i64 %4, i1 zeroext true)
  store i64 %call6, i64* %lface, align 8
  %5 = load i64, i64* %lface, align 8
  %6 = load i64, i64* %new_value.addr, align 8
  %call7 = call zeroext i1 @STRINGP(i64 %6)
  br i1 %call7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.4
  %7 = load i64, i64* %new_value.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.4
  %call8 = call i64 @builtin_lisp_symbol(i32 975)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %7, %cond.true ], [ %call8, %cond.false ]
  call void @ASET(i64 %5, i64 9, i64 %cond)
  %8 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %call9 = call zeroext i1 @realize_basic_faces(%struct.frame* %8)
  br label %if.end.65

if.else:                                          ; preds = %if.end
  %9 = load i64, i64* %param.addr, align 8
  %call10 = call i64 @builtin_lisp_symbol(i32 193)
  %cmp11 = icmp eq i64 %9, %call10
  br i1 %cmp11, label %if.then.12, label %if.else.25

if.then.12:                                       ; preds = %if.else
  %10 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %11 = bitcast %struct.frame* %10 to i8*
  %call13 = call i64 @make_lisp_ptr(i8* %11, i32 5)
  store i64 %call13, i64* %frame, align 8
  %call14 = call i64 @builtin_lisp_symbol(i32 459)
  %12 = load i64, i64* %frame, align 8
  %call15 = call i64 @call1(i64 %call14, i64 %12)
  %call16 = call i64 @builtin_lisp_symbol(i32 324)
  store i64 %call16, i64* %face, align 8
  %13 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %14 = load i64, i64* %face, align 8
  %call17 = call i64 @lface_from_face_name(%struct.frame* %13, i64 %14, i1 zeroext true)
  store i64 %call17, i64* %lface, align 8
  %15 = load i64, i64* %lface, align 8
  %16 = load i64, i64* %new_value.addr, align 8
  %call18 = call zeroext i1 @STRINGP(i64 %16)
  br i1 %call18, label %cond.true.19, label %cond.false.20

cond.true.19:                                     ; preds = %if.then.12
  %17 = load i64, i64* %new_value.addr, align 8
  br label %cond.end.22

cond.false.20:                                    ; preds = %if.then.12
  %call21 = call i64 @builtin_lisp_symbol(i32 975)
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.20, %cond.true.19
  %cond23 = phi i64 [ %17, %cond.true.19 ], [ %call21, %cond.false.20 ]
  call void @ASET(i64 %15, i64 10, i64 %cond23)
  %18 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %call24 = call zeroext i1 @realize_basic_faces(%struct.frame* %18)
  br label %if.end.64

if.else.25:                                       ; preds = %if.else
  %19 = load i64, i64* %param.addr, align 8
  %call26 = call i64 @builtin_lisp_symbol(i32 209)
  %cmp27 = icmp eq i64 %19, %call26
  br i1 %cmp27, label %if.then.28, label %if.else.37

if.then.28:                                       ; preds = %if.else.25
  %call29 = call i64 @builtin_lisp_symbol(i32 208)
  store i64 %call29, i64* %face, align 8
  %20 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %21 = load i64, i64* %face, align 8
  %call30 = call i64 @lface_from_face_name(%struct.frame* %20, i64 %21, i1 zeroext true)
  store i64 %call30, i64* %lface, align 8
  %22 = load i64, i64* %lface, align 8
  %23 = load i64, i64* %new_value.addr, align 8
  %call31 = call zeroext i1 @STRINGP(i64 %23)
  br i1 %call31, label %cond.true.32, label %cond.false.33

cond.true.32:                                     ; preds = %if.then.28
  %24 = load i64, i64* %new_value.addr, align 8
  br label %cond.end.35

cond.false.33:                                    ; preds = %if.then.28
  %call34 = call i64 @builtin_lisp_symbol(i32 975)
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.33, %cond.true.32
  %cond36 = phi i64 [ %24, %cond.true.32 ], [ %call34, %cond.false.33 ]
  call void @ASET(i64 %22, i64 10, i64 %cond36)
  br label %if.end.63

if.else.37:                                       ; preds = %if.else.25
  %25 = load i64, i64* %param.addr, align 8
  %call38 = call i64 @builtin_lisp_symbol(i32 307)
  %cmp39 = icmp eq i64 %25, %call38
  br i1 %cmp39, label %if.then.40, label %if.else.49

if.then.40:                                       ; preds = %if.else.37
  %call41 = call i64 @builtin_lisp_symbol(i32 306)
  store i64 %call41, i64* %face, align 8
  %26 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %27 = load i64, i64* %face, align 8
  %call42 = call i64 @lface_from_face_name(%struct.frame* %26, i64 %27, i1 zeroext true)
  store i64 %call42, i64* %lface, align 8
  %28 = load i64, i64* %lface, align 8
  %29 = load i64, i64* %new_value.addr, align 8
  %call43 = call zeroext i1 @STRINGP(i64 %29)
  br i1 %call43, label %cond.true.44, label %cond.false.45

cond.true.44:                                     ; preds = %if.then.40
  %30 = load i64, i64* %new_value.addr, align 8
  br label %cond.end.47

cond.false.45:                                    ; preds = %if.then.40
  %call46 = call i64 @builtin_lisp_symbol(i32 975)
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.45, %cond.true.44
  %cond48 = phi i64 [ %30, %cond.true.44 ], [ %call46, %cond.false.45 ]
  call void @ASET(i64 %28, i64 10, i64 %cond48)
  br label %if.end.62

if.else.49:                                       ; preds = %if.else.37
  %31 = load i64, i64* %param.addr, align 8
  %call50 = call i64 @builtin_lisp_symbol(i32 686)
  %cmp51 = icmp eq i64 %31, %call50
  br i1 %cmp51, label %if.then.52, label %if.end.61

if.then.52:                                       ; preds = %if.else.49
  %call53 = call i64 @builtin_lisp_symbol(i32 684)
  store i64 %call53, i64* %face, align 8
  %32 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %33 = load i64, i64* %face, align 8
  %call54 = call i64 @lface_from_face_name(%struct.frame* %32, i64 %33, i1 zeroext true)
  store i64 %call54, i64* %lface, align 8
  %34 = load i64, i64* %lface, align 8
  %35 = load i64, i64* %new_value.addr, align 8
  %call55 = call zeroext i1 @STRINGP(i64 %35)
  br i1 %call55, label %cond.true.56, label %cond.false.57

cond.true.56:                                     ; preds = %if.then.52
  %36 = load i64, i64* %new_value.addr, align 8
  br label %cond.end.59

cond.false.57:                                    ; preds = %if.then.52
  %call58 = call i64 @builtin_lisp_symbol(i32 975)
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.false.57, %cond.true.56
  %cond60 = phi i64 [ %36, %cond.true.56 ], [ %call58, %cond.false.57 ]
  call void @ASET(i64 %34, i64 10, i64 %cond60)
  br label %if.end.61

if.end.61:                                        ; preds = %cond.end.59, %if.else.49
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %cond.end.47
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %cond.end.35
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %cond.end.22
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %cond.end
  %37 = load i64, i64* %face, align 8
  %call66 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp67 = icmp eq i64 %37, %call66
  br i1 %cmp67, label %if.end.73, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.65
  %38 = load i64, i64* %face, align 8
  %call68 = call i64 @builtin_lisp_symbol(i32 399)
  %call69 = call i64 @Fget(i64 %38, i64 %call68)
  %call70 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp71 = icmp eq i64 %call69, %call70
  br i1 %cmp71, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %land.lhs.true
  %39 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %face_change = getelementptr inbounds %struct.frame, %struct.frame* %39, i32 0, i32 26
  %40 = bitcast i48* %face_change to i64*
  %bf.load = load i64, i64* %40, align 8
  %bf.clear = and i64 %bf.load, -1099511627777
  %bf.set = or i64 %bf.clear, 1099511627776
  store i64 %bf.set, i64* %40, align 8
  %41 = load %struct.frame*, %struct.frame** %f.addr, align 8
  call void @fset_redisplay(%struct.frame* %41)
  br label %if.end.73

if.end.73:                                        ; preds = %if.then, %if.then.72, %land.lhs.true, %if.end.65
  ret void
}

declare i64 @call1(i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Finternal_face_x_get_resource(i64 %resource, i64 %class, i64 %frame) #0 {
entry:
  %resource.addr = alloca i64, align 8
  %class.addr = alloca i64, align 8
  %frame.addr = alloca i64, align 8
  %value = alloca i64, align 8
  %f = alloca %struct.frame*, align 8
  store i64 %resource, i64* %resource.addr, align 8
  store i64 %class, i64* %class.addr, align 8
  store i64 %frame, i64* %frame.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %value, align 8
  %0 = load i64, i64* %resource.addr, align 8
  call void @CHECK_STRING(i64 %0)
  %1 = load i64, i64* %class.addr, align 8
  call void @CHECK_STRING(i64 %1)
  %2 = load i64, i64* %frame.addr, align 8
  %call1 = call %struct.frame* @decode_live_frame(i64 %2)
  store %struct.frame* %call1, %struct.frame** %f, align 8
  call void @block_input()
  %3 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %3, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %4 = load %struct.x_output*, %struct.x_output** %x, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %4, i32 0, i32 44
  %5 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %6 = load i64, i64* %resource.addr, align 8
  %7 = load i64, i64* %class.addr, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %call4 = call i64 @display_x_get_resource(%struct.x_display_info* %5, i64 %6, i64 %7, i64 %call2, i64 %call3)
  store i64 %call4, i64* %value, align 8
  call void @unblock_input()
  %8 = load i64, i64* %value, align 8
  ret i64 %8
}

declare i64 @display_x_get_resource(%struct.x_display_info*, i64, i64, i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Finternal_set_lisp_face_attribute_from_resource(i64 %face, i64 %attr, i64 %value, i64 %frame) #0 {
entry:
  %face.addr = alloca i64, align 8
  %attr.addr = alloca i64, align 8
  %value.addr = alloca i64, align 8
  %frame.addr = alloca i64, align 8
  %boolean_value = alloca i64, align 8
  store i64 %face, i64* %face.addr, align 8
  store i64 %attr, i64* %attr.addr, align 8
  store i64 %value, i64* %value.addr, align 8
  store i64 %frame, i64* %frame.addr, align 8
  %0 = load i64, i64* %face.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 897)
  %1 = load i64, i64* %face.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call, i64 %1) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i64, i64* %attr.addr, align 8
  %and2 = and i64 %4, 7
  %conv3 = trunc i64 %and2 to i32
  %cmp4 = icmp eq i32 %conv3, 0
  br i1 %cmp4, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.end
  br label %cond.end.9

cond.false.7:                                     ; preds = %cond.end
  %call8 = call i64 @builtin_lisp_symbol(i32 897)
  %5 = load i64, i64* %attr.addr, align 8
  %6 = call i64 @wrong_type_argument(i64 %call8, i64 %5) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end.9

cond.end.9:                                       ; preds = %7, %cond.true.6
  %8 = load i64, i64* %value.addr, align 8
  call void @CHECK_STRING(i64 %8)
  %9 = load i64, i64* %value.addr, align 8
  %call10 = call i8* @SSDATA(i64 %9)
  %call11 = call i32 @xstrcasecmp(i8* %call10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0))
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.9
  %call14 = call i64 @builtin_lisp_symbol(i32 975)
  store i64 %call14, i64* %value.addr, align 8
  br label %if.end.96

if.else:                                          ; preds = %cond.end.9
  %10 = load i64, i64* %attr.addr, align 8
  %call15 = call i64 @builtin_lisp_symbol(i32 58)
  %cmp16 = icmp eq i64 %10, %call15
  br i1 %cmp16, label %if.then.18, label %if.else.23

if.then.18:                                       ; preds = %if.else
  %11 = load i64, i64* %value.addr, align 8
  %call19 = call i64 @Fstring_to_number(i64 %11, i64 42)
  store i64 %call19, i64* %value.addr, align 8
  %12 = load i64, i64* %value.addr, align 8
  %shr = ashr i64 %12, 2
  %cmp20 = icmp sle i64 %shr, 0
  br i1 %cmp20, label %if.then.22, label %if.end

if.then.22:                                       ; preds = %if.then.18
  %13 = load i64, i64* %value.addr, align 8
  call void @signal_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.23, i32 0, i32 0), i64 %13) #6
  unreachable

if.end:                                           ; preds = %if.then.18
  br label %if.end.95

if.else.23:                                       ; preds = %if.else
  %14 = load i64, i64* %attr.addr, align 8
  %call24 = call i64 @builtin_lisp_symbol(i32 14)
  %cmp25 = icmp eq i64 %14, %call24
  br i1 %cmp25, label %if.then.30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.23
  %15 = load i64, i64* %attr.addr, align 8
  %call27 = call i64 @builtin_lisp_symbol(i32 69)
  %cmp28 = icmp eq i64 %15, %call27
  br i1 %cmp28, label %if.then.30, label %if.else.32

if.then.30:                                       ; preds = %lor.lhs.false, %if.else.23
  %16 = load i64, i64* %value.addr, align 8
  %call31 = call i64 @face_boolean_x_resource_value(i64 %16, i1 zeroext true)
  store i64 %call31, i64* %value.addr, align 8
  br label %if.end.94

if.else.32:                                       ; preds = %lor.lhs.false
  %17 = load i64, i64* %attr.addr, align 8
  %call33 = call i64 @builtin_lisp_symbol(i32 138)
  %cmp34 = icmp eq i64 %17, %call33
  br i1 %cmp34, label %if.then.44, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %if.else.32
  %18 = load i64, i64* %attr.addr, align 8
  %call37 = call i64 @builtin_lisp_symbol(i32 119)
  %cmp38 = icmp eq i64 %18, %call37
  br i1 %cmp38, label %if.then.44, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %lor.lhs.false.36
  %19 = load i64, i64* %attr.addr, align 8
  %call41 = call i64 @builtin_lisp_symbol(i32 139)
  %cmp42 = icmp eq i64 %19, %call41
  br i1 %cmp42, label %if.then.44, label %if.else.47

if.then.44:                                       ; preds = %lor.lhs.false.40, %lor.lhs.false.36, %if.else.32
  %20 = load i64, i64* %value.addr, align 8
  %call45 = call i8* @SSDATA(i64 %20)
  %call46 = call i64 @intern(i8* %call45)
  store i64 %call46, i64* %value.addr, align 8
  br label %if.end.93

if.else.47:                                       ; preds = %lor.lhs.false.40
  %21 = load i64, i64* %attr.addr, align 8
  %call48 = call i64 @builtin_lisp_symbol(i32 109)
  %cmp49 = icmp eq i64 %21, %call48
  br i1 %cmp49, label %if.then.55, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %if.else.47
  %22 = load i64, i64* %attr.addr, align 8
  %call52 = call i64 @builtin_lisp_symbol(i32 68)
  %cmp53 = icmp eq i64 %22, %call52
  br i1 %cmp53, label %if.then.55, label %if.else.57

if.then.55:                                       ; preds = %lor.lhs.false.51, %if.else.47
  %23 = load i64, i64* %value.addr, align 8
  %call56 = call i64 @face_boolean_x_resource_value(i64 %23, i1 zeroext true)
  store i64 %call56, i64* %value.addr, align 8
  br label %if.end.92

if.else.57:                                       ; preds = %lor.lhs.false.51
  %24 = load i64, i64* %attr.addr, align 8
  %call58 = call i64 @builtin_lisp_symbol(i32 132)
  %cmp59 = icmp eq i64 %24, %call58
  br i1 %cmp59, label %if.then.69, label %lor.lhs.false.61

lor.lhs.false.61:                                 ; preds = %if.else.57
  %25 = load i64, i64* %attr.addr, align 8
  %call62 = call i64 @builtin_lisp_symbol(i32 90)
  %cmp63 = icmp eq i64 %25, %call62
  br i1 %cmp63, label %if.then.69, label %lor.lhs.false.65

lor.lhs.false.65:                                 ; preds = %lor.lhs.false.61
  %26 = load i64, i64* %attr.addr, align 8
  %call66 = call i64 @builtin_lisp_symbol(i32 126)
  %cmp67 = icmp eq i64 %26, %call66
  br i1 %cmp67, label %if.then.69, label %if.else.77

if.then.69:                                       ; preds = %lor.lhs.false.65, %lor.lhs.false.61, %if.else.57
  %27 = load i64, i64* %value.addr, align 8
  %call70 = call i64 @face_boolean_x_resource_value(i64 %27, i1 zeroext false)
  store i64 %call70, i64* %boolean_value, align 8
  %28 = load i64, i64* %boolean_value, align 8
  %and71 = and i64 %28, 7
  %conv72 = trunc i64 %and71 to i32
  %cmp73 = icmp eq i32 %conv72, 0
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.then.69
  %29 = load i64, i64* %boolean_value, align 8
  store i64 %29, i64* %value.addr, align 8
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.75, %if.then.69
  br label %if.end.91

if.else.77:                                       ; preds = %lor.lhs.false.65
  %30 = load i64, i64* %attr.addr, align 8
  %call78 = call i64 @builtin_lisp_symbol(i32 15)
  %cmp79 = icmp eq i64 %30, %call78
  br i1 %cmp79, label %if.then.85, label %lor.lhs.false.81

lor.lhs.false.81:                                 ; preds = %if.else.77
  %31 = load i64, i64* %attr.addr, align 8
  %call82 = call i64 @builtin_lisp_symbol(i32 67)
  %cmp83 = icmp eq i64 %31, %call82
  br i1 %cmp83, label %if.then.85, label %if.end.90

if.then.85:                                       ; preds = %lor.lhs.false.81, %if.else.77
  %32 = load i64, i64* %value.addr, align 8
  %call86 = call i64 @builtin_lisp_symbol(i32 0)
  %call87 = call i64 @builtin_lisp_symbol(i32 0)
  %call88 = call i64 @Fread_from_string(i64 %32, i64 %call86, i64 %call87)
  %call89 = call i64 @Fcar(i64 %call88)
  store i64 %call89, i64* %value.addr, align 8
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.85, %lor.lhs.false.81
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.end.76
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.then.55
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.then.44
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.then.30
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.end
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.then
  %33 = load i64, i64* %face.addr, align 8
  %34 = load i64, i64* %attr.addr, align 8
  %35 = load i64, i64* %value.addr, align 8
  %36 = load i64, i64* %frame.addr, align 8
  %call97 = call i64 @Finternal_set_lisp_face_attribute(i64 %33, i64 %34, i64 %35, i64 %36)
  ret i64 %call97
}

declare i32 @xstrcasecmp(i8*, i8*) #1

declare i64 @Fstring_to_number(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @face_boolean_x_resource_value(i64 %value, i1 zeroext %signal_p) #0 {
entry:
  %value.addr = alloca i64, align 8
  %signal_p.addr = alloca i8, align 1
  %result = alloca i64, align 8
  store i64 %value, i64* %value.addr, align 8
  %frombool = zext i1 %signal_p to i8
  store i8 %frombool, i8* %signal_p.addr, align 1
  store i64 2, i64* %result, align 8
  %0 = load i64, i64* %value.addr, align 8
  %call = call i8* @SSDATA(i64 %0)
  %call1 = call i32 @xstrcasecmp(i8* %call, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i32 0, i32 0))
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %value.addr, align 8
  %call2 = call i8* @SSDATA(i64 %1)
  %call3 = call i32 @xstrcasecmp(i8* %call2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0))
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call5 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call5, i64* %result, align 8
  br label %if.end.25

if.else:                                          ; preds = %lor.lhs.false
  %2 = load i64, i64* %value.addr, align 8
  %call6 = call i8* @SSDATA(i64 %2)
  %call7 = call i32 @xstrcasecmp(i8* %call6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i32 0, i32 0))
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then.13, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %if.else
  %3 = load i64, i64* %value.addr, align 8
  %call10 = call i8* @SSDATA(i64 %3)
  %call11 = call i32 @xstrcasecmp(i8* %call10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0))
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then.13, label %if.else.15

if.then.13:                                       ; preds = %lor.lhs.false.9, %if.else
  %call14 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call14, i64* %result, align 8
  br label %if.end.24

if.else.15:                                       ; preds = %lor.lhs.false.9
  %4 = load i64, i64* %value.addr, align 8
  %call16 = call i8* @SSDATA(i64 %4)
  %call17 = call i32 @xstrcasecmp(i8* %call16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0))
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then.19, label %if.else.21

if.then.19:                                       ; preds = %if.else.15
  %call20 = call i64 @builtin_lisp_symbol(i32 975)
  store i64 %call20, i64* %result, align 8
  br label %if.end.23

if.else.21:                                       ; preds = %if.else.15
  %5 = load i8, i8* %signal_p.addr, align 1
  %tobool = trunc i8 %5 to i1
  br i1 %tobool, label %if.then.22, label %if.end

if.then.22:                                       ; preds = %if.else.21
  %6 = load i64, i64* %value.addr, align 8
  call void @signal_error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.51, i32 0, i32 0), i64 %6) #6
  unreachable

if.end:                                           ; preds = %if.else.21
  br label %if.end.23

if.end.23:                                        ; preds = %if.end, %if.then.19
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then.13
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then
  %7 = load i64, i64* %result, align 8
  ret i64 %7
}

declare i64 @intern(i8*) #1

declare i64 @Fcar(i64) #1

declare i64 @Fread_from_string(i64, i64, i64) #1

; Function Attrs: nounwind readnone uwtable
define i64 @Fface_attribute_relative_p(i64 %attribute, i64 %value) #3 {
entry:
  %retval = alloca i64, align 8
  %attribute.addr = alloca i64, align 8
  %value.addr = alloca i64, align 8
  store i64 %attribute, i64* %attribute.addr, align 8
  store i64 %value, i64* %value.addr, align 8
  %0 = load i64, i64* %value.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 975)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %value.addr, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 64)
  %cmp2 = icmp eq i64 %1, %call1
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call3 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call3, i64* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %2 = load i64, i64* %attribute.addr, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 58)
  %cmp5 = icmp eq i64 %2, %call4
  br i1 %cmp5, label %if.then.6, label %if.else.12

if.then.6:                                        ; preds = %if.else
  %3 = load i64, i64* %value.addr, align 8
  %and = and i64 %3, 7
  %conv = trunc i64 %and to i32
  %and7 = and i32 %conv, -5
  %cmp8 = icmp eq i32 %and7, 2
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.6
  %call10 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.false:                                       ; preds = %if.then.6
  %call11 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call10, %cond.true ], [ %call11, %cond.false ]
  store i64 %cond, i64* %retval
  br label %return

if.else.12:                                       ; preds = %if.else
  %call13 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call13, i64* %retval
  br label %return

return:                                           ; preds = %if.else.12, %cond.end, %if.then
  %4 = load i64, i64* %retval
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define i64 @Fmerge_face_attribute(i64 %attribute, i64 %value1, i64 %value2) #0 {
entry:
  %retval = alloca i64, align 8
  %attribute.addr = alloca i64, align 8
  %value1.addr = alloca i64, align 8
  %value2.addr = alloca i64, align 8
  store i64 %attribute, i64* %attribute.addr, align 8
  store i64 %value1, i64* %value1.addr, align 8
  store i64 %value2, i64* %value2.addr, align 8
  %0 = load i64, i64* %value1.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 975)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %value1.addr, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 64)
  %cmp2 = icmp eq i64 %1, %call1
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load i64, i64* %value2.addr, align 8
  store i64 %2, i64* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %3 = load i64, i64* %attribute.addr, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 58)
  %cmp4 = icmp eq i64 %3, %call3
  br i1 %cmp4, label %if.then.5, label %if.else.7

if.then.5:                                        ; preds = %if.else
  %4 = load i64, i64* %value1.addr, align 8
  %5 = load i64, i64* %value2.addr, align 8
  %6 = load i64, i64* %value1.addr, align 8
  %call6 = call i64 @merge_face_heights(i64 %4, i64 %5, i64 %6)
  store i64 %call6, i64* %retval
  br label %return

if.else.7:                                        ; preds = %if.else
  %7 = load i64, i64* %value1.addr, align 8
  store i64 %7, i64* %retval
  br label %return

return:                                           ; preds = %if.else.7, %if.then.5, %if.then
  %8 = load i64, i64* %retval
  ret i64 %8
}

; Function Attrs: nounwind uwtable
define i64 @Finternal_get_lisp_face_attribute(i64 %symbol, i64 %keyword, i64 %frame) #0 {
entry:
  %retval = alloca i64, align 8
  %symbol.addr = alloca i64, align 8
  %keyword.addr = alloca i64, align 8
  %frame.addr = alloca i64, align 8
  %f = alloca %struct.frame*, align 8
  %lface = alloca i64, align 8
  %value = alloca i64, align 8
  store i64 %symbol, i64* %symbol.addr, align 8
  store i64 %keyword, i64* %keyword.addr, align 8
  store i64 %frame, i64* %frame.addr, align 8
  %0 = load i64, i64* %frame.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 901)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i64, i64* %frame.addr, align 8
  %call1 = call %struct.frame* @decode_live_frame(i64 %1)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.frame* [ null, %cond.true ], [ %call1, %cond.false ]
  store %struct.frame* %cond, %struct.frame** %f, align 8
  %2 = load %struct.frame*, %struct.frame** %f, align 8
  %3 = load i64, i64* %symbol.addr, align 8
  %call2 = call i64 @lface_from_face_name(%struct.frame* %2, i64 %3, i1 zeroext true)
  store i64 %call2, i64* %lface, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call3, i64* %value, align 8
  %4 = load i64, i64* %symbol.addr, align 8
  %and = and i64 %4, 7
  %conv = trunc i64 %and to i32
  %cmp4 = icmp eq i32 %conv, 0
  br i1 %cmp4, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.end
  br label %cond.end.9

cond.false.7:                                     ; preds = %cond.end
  %call8 = call i64 @builtin_lisp_symbol(i32 897)
  %5 = load i64, i64* %symbol.addr, align 8
  %6 = call i64 @wrong_type_argument(i64 %call8, i64 %5) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end.9

cond.end.9:                                       ; preds = %7, %cond.true.6
  %8 = load i64, i64* %keyword.addr, align 8
  %and10 = and i64 %8, 7
  %conv11 = trunc i64 %and10 to i32
  %cmp12 = icmp eq i32 %conv11, 0
  br i1 %cmp12, label %cond.true.14, label %cond.false.15

cond.true.14:                                     ; preds = %cond.end.9
  br label %cond.end.17

cond.false.15:                                    ; preds = %cond.end.9
  %call16 = call i64 @builtin_lisp_symbol(i32 897)
  %9 = load i64, i64* %keyword.addr, align 8
  %10 = call i64 @wrong_type_argument(i64 %call16, i64 %9) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end.17

cond.end.17:                                      ; preds = %11, %cond.true.14
  %12 = load i64, i64* %keyword.addr, align 8
  %call18 = call i64 @builtin_lisp_symbol(i32 40)
  %cmp19 = icmp eq i64 %12, %call18
  br i1 %cmp19, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.17
  %13 = load i64, i64* %lface, align 8
  %call21 = call i64 @AREF(i64 %13, i64 1)
  store i64 %call21, i64* %value, align 8
  br label %if.end.143

if.else:                                          ; preds = %cond.end.17
  %14 = load i64, i64* %keyword.addr, align 8
  %call22 = call i64 @builtin_lisp_symbol(i32 48)
  %cmp23 = icmp eq i64 %14, %call22
  br i1 %cmp23, label %if.then.25, label %if.else.27

if.then.25:                                       ; preds = %if.else
  %15 = load i64, i64* %lface, align 8
  %call26 = call i64 @AREF(i64 %15, i64 2)
  store i64 %call26, i64* %value, align 8
  br label %if.end.142

if.else.27:                                       ; preds = %if.else
  %16 = load i64, i64* %keyword.addr, align 8
  %call28 = call i64 @builtin_lisp_symbol(i32 58)
  %cmp29 = icmp eq i64 %16, %call28
  br i1 %cmp29, label %if.then.31, label %if.else.33

if.then.31:                                       ; preds = %if.else.27
  %17 = load i64, i64* %lface, align 8
  %call32 = call i64 @AREF(i64 %17, i64 4)
  store i64 %call32, i64* %value, align 8
  br label %if.end.141

if.else.33:                                       ; preds = %if.else.27
  %18 = load i64, i64* %keyword.addr, align 8
  %call34 = call i64 @builtin_lisp_symbol(i32 138)
  %cmp35 = icmp eq i64 %18, %call34
  br i1 %cmp35, label %if.then.37, label %if.else.39

if.then.37:                                       ; preds = %if.else.33
  %19 = load i64, i64* %lface, align 8
  %call38 = call i64 @AREF(i64 %19, i64 5)
  store i64 %call38, i64* %value, align 8
  br label %if.end.140

if.else.39:                                       ; preds = %if.else.33
  %20 = load i64, i64* %keyword.addr, align 8
  %call40 = call i64 @builtin_lisp_symbol(i32 119)
  %cmp41 = icmp eq i64 %20, %call40
  br i1 %cmp41, label %if.then.43, label %if.else.45

if.then.43:                                       ; preds = %if.else.39
  %21 = load i64, i64* %lface, align 8
  %call44 = call i64 @AREF(i64 %21, i64 6)
  store i64 %call44, i64* %value, align 8
  br label %if.end.139

if.else.45:                                       ; preds = %if.else.39
  %22 = load i64, i64* %keyword.addr, align 8
  %call46 = call i64 @builtin_lisp_symbol(i32 132)
  %cmp47 = icmp eq i64 %22, %call46
  br i1 %cmp47, label %if.then.49, label %if.else.51

if.then.49:                                       ; preds = %if.else.45
  %23 = load i64, i64* %lface, align 8
  %call50 = call i64 @AREF(i64 %23, i64 7)
  store i64 %call50, i64* %value, align 8
  br label %if.end.138

if.else.51:                                       ; preds = %if.else.45
  %24 = load i64, i64* %keyword.addr, align 8
  %call52 = call i64 @builtin_lisp_symbol(i32 90)
  %cmp53 = icmp eq i64 %24, %call52
  br i1 %cmp53, label %if.then.55, label %if.else.57

if.then.55:                                       ; preds = %if.else.51
  %25 = load i64, i64* %lface, align 8
  %call56 = call i64 @AREF(i64 %25, i64 12)
  store i64 %call56, i64* %value, align 8
  br label %if.end.137

if.else.57:                                       ; preds = %if.else.51
  %26 = load i64, i64* %keyword.addr, align 8
  %call58 = call i64 @builtin_lisp_symbol(i32 126)
  %cmp59 = icmp eq i64 %26, %call58
  br i1 %cmp59, label %if.then.61, label %if.else.63

if.then.61:                                       ; preds = %if.else.57
  %27 = load i64, i64* %lface, align 8
  %call62 = call i64 @AREF(i64 %27, i64 13)
  store i64 %call62, i64* %value, align 8
  br label %if.end.136

if.else.63:                                       ; preds = %if.else.57
  %28 = load i64, i64* %keyword.addr, align 8
  %call64 = call i64 @builtin_lisp_symbol(i32 15)
  %cmp65 = icmp eq i64 %28, %call64
  br i1 %cmp65, label %if.then.67, label %if.else.69

if.then.67:                                       ; preds = %if.else.63
  %29 = load i64, i64* %lface, align 8
  %call68 = call i64 @AREF(i64 %29, i64 14)
  store i64 %call68, i64* %value, align 8
  br label %if.end.135

if.else.69:                                       ; preds = %if.else.63
  %30 = load i64, i64* %keyword.addr, align 8
  %call70 = call i64 @builtin_lisp_symbol(i32 68)
  %cmp71 = icmp eq i64 %30, %call70
  br i1 %cmp71, label %if.then.76, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.69
  %31 = load i64, i64* %keyword.addr, align 8
  %call73 = call i64 @builtin_lisp_symbol(i32 109)
  %cmp74 = icmp eq i64 %31, %call73
  br i1 %cmp74, label %if.then.76, label %if.else.78

if.then.76:                                       ; preds = %lor.lhs.false, %if.else.69
  %32 = load i64, i64* %lface, align 8
  %call77 = call i64 @AREF(i64 %32, i64 8)
  store i64 %call77, i64* %value, align 8
  br label %if.end.134

if.else.78:                                       ; preds = %lor.lhs.false
  %33 = load i64, i64* %keyword.addr, align 8
  %call79 = call i64 @builtin_lisp_symbol(i32 47)
  %cmp80 = icmp eq i64 %33, %call79
  br i1 %cmp80, label %if.then.82, label %if.else.84

if.then.82:                                       ; preds = %if.else.78
  %34 = load i64, i64* %lface, align 8
  %call83 = call i64 @AREF(i64 %34, i64 9)
  store i64 %call83, i64* %value, align 8
  br label %if.end.133

if.else.84:                                       ; preds = %if.else.78
  %35 = load i64, i64* %keyword.addr, align 8
  %call85 = call i64 @builtin_lisp_symbol(i32 33)
  %cmp86 = icmp eq i64 %35, %call85
  br i1 %cmp86, label %if.then.88, label %if.else.90

if.then.88:                                       ; preds = %if.else.84
  %36 = load i64, i64* %lface, align 8
  %call89 = call i64 @AREF(i64 %36, i64 18)
  store i64 %call89, i64* %value, align 8
  br label %if.end.132

if.else.90:                                       ; preds = %if.else.84
  %37 = load i64, i64* %keyword.addr, align 8
  %call91 = call i64 @builtin_lisp_symbol(i32 13)
  %cmp92 = icmp eq i64 %37, %call91
  br i1 %cmp92, label %if.then.94, label %if.else.96

if.then.94:                                       ; preds = %if.else.90
  %38 = load i64, i64* %lface, align 8
  %call95 = call i64 @AREF(i64 %38, i64 10)
  store i64 %call95, i64* %value, align 8
  br label %if.end.131

if.else.96:                                       ; preds = %if.else.90
  %39 = load i64, i64* %keyword.addr, align 8
  %call97 = call i64 @builtin_lisp_symbol(i32 123)
  %cmp98 = icmp eq i64 %39, %call97
  br i1 %cmp98, label %if.then.100, label %if.else.102

if.then.100:                                      ; preds = %if.else.96
  %40 = load i64, i64* %lface, align 8
  %call101 = call i64 @AREF(i64 %40, i64 11)
  store i64 %call101, i64* %value, align 8
  br label %if.end.130

if.else.102:                                      ; preds = %if.else.96
  %41 = load i64, i64* %keyword.addr, align 8
  %call103 = call i64 @builtin_lisp_symbol(i32 139)
  %cmp104 = icmp eq i64 %41, %call103
  br i1 %cmp104, label %if.then.106, label %if.else.108

if.then.106:                                      ; preds = %if.else.102
  %42 = load i64, i64* %lface, align 8
  %call107 = call i64 @AREF(i64 %42, i64 3)
  store i64 %call107, i64* %value, align 8
  br label %if.end.129

if.else.108:                                      ; preds = %if.else.102
  %43 = load i64, i64* %keyword.addr, align 8
  %call109 = call i64 @builtin_lisp_symbol(i32 67)
  %cmp110 = icmp eq i64 %43, %call109
  br i1 %cmp110, label %if.then.112, label %if.else.114

if.then.112:                                      ; preds = %if.else.108
  %44 = load i64, i64* %lface, align 8
  %call113 = call i64 @AREF(i64 %44, i64 16)
  store i64 %call113, i64* %value, align 8
  br label %if.end.128

if.else.114:                                      ; preds = %if.else.108
  %45 = load i64, i64* %keyword.addr, align 8
  %call115 = call i64 @builtin_lisp_symbol(i32 44)
  %cmp116 = icmp eq i64 %45, %call115
  br i1 %cmp116, label %if.then.118, label %if.else.120

if.then.118:                                      ; preds = %if.else.114
  %46 = load i64, i64* %lface, align 8
  %call119 = call i64 @AREF(i64 %46, i64 15)
  store i64 %call119, i64* %value, align 8
  br label %if.end.127

if.else.120:                                      ; preds = %if.else.114
  %47 = load i64, i64* %keyword.addr, align 8
  %call121 = call i64 @builtin_lisp_symbol(i32 46)
  %cmp122 = icmp eq i64 %47, %call121
  br i1 %cmp122, label %if.then.124, label %if.else.126

if.then.124:                                      ; preds = %if.else.120
  %48 = load i64, i64* %lface, align 8
  %call125 = call i64 @AREF(i64 %48, i64 17)
  store i64 %call125, i64* %value, align 8
  br label %if.end

if.else.126:                                      ; preds = %if.else.120
  %49 = load i64, i64* %keyword.addr, align 8
  call void @signal_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i32 0, i32 0), i64 %49) #6
  unreachable

if.end:                                           ; preds = %if.then.124
  br label %if.end.127

if.end.127:                                       ; preds = %if.end, %if.then.118
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %if.then.112
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128, %if.then.106
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.129, %if.then.100
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %if.then.94
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %if.then.88
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %if.then.82
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.133, %if.then.76
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.134, %if.then.67
  br label %if.end.136

if.end.136:                                       ; preds = %if.end.135, %if.then.61
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.136, %if.then.55
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %if.then.49
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.138, %if.then.43
  br label %if.end.140

if.end.140:                                       ; preds = %if.end.139, %if.then.37
  br label %if.end.141

if.end.141:                                       ; preds = %if.end.140, %if.then.31
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.141, %if.then.25
  br label %if.end.143

if.end.143:                                       ; preds = %if.end.142, %if.then
  %50 = load i64, i64* %value, align 8
  %call144 = call i64 @builtin_lisp_symbol(i32 64)
  %cmp145 = icmp eq i64 %50, %call144
  br i1 %cmp145, label %if.then.147, label %if.end.149

if.then.147:                                      ; preds = %if.end.143
  %call148 = call i64 @builtin_lisp_symbol(i32 975)
  store i64 %call148, i64* %retval
  br label %return

if.end.149:                                       ; preds = %if.end.143
  %51 = load i64, i64* %value, align 8
  store i64 %51, i64* %retval
  br label %return

return:                                           ; preds = %if.end.149, %if.then.147
  %52 = load i64, i64* %retval
  ret i64 %52
}

; Function Attrs: nounwind uwtable
define i64 @Finternal_lisp_face_attribute_values(i64 %attr) #0 {
entry:
  %attr.addr = alloca i64, align 8
  %result = alloca i64, align 8
  store i64 %attr, i64* %attr.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %result, align 8
  %0 = load i64, i64* %attr.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call2 = call i64 @builtin_lisp_symbol(i32 897)
  %1 = load i64, i64* %attr.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call2, i64 %1) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i64, i64* %attr.addr, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 132)
  %cmp4 = icmp eq i64 %4, %call3
  br i1 %cmp4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %5 = load i64, i64* %attr.addr, align 8
  %call6 = call i64 @builtin_lisp_symbol(i32 90)
  %cmp7 = icmp eq i64 %5, %call6
  br i1 %cmp7, label %if.then, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false
  %6 = load i64, i64* %attr.addr, align 8
  %call10 = call i64 @builtin_lisp_symbol(i32 126)
  %cmp11 = icmp eq i64 %6, %call10
  br i1 %cmp11, label %if.then, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false.9
  %7 = load i64, i64* %attr.addr, align 8
  %call14 = call i64 @builtin_lisp_symbol(i32 68)
  %cmp15 = icmp eq i64 %7, %call14
  br i1 %cmp15, label %if.then, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %lor.lhs.false.13
  %8 = load i64, i64* %attr.addr, align 8
  %call18 = call i64 @builtin_lisp_symbol(i32 109)
  %cmp19 = icmp eq i64 %8, %call18
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.17, %lor.lhs.false.13, %lor.lhs.false.9, %lor.lhs.false, %cond.end
  %call21 = call i64 @builtin_lisp_symbol(i32 901)
  %call22 = call i64 @builtin_lisp_symbol(i32 0)
  %call23 = call i64 @list2(i64 %call21, i64 %call22)
  store i64 %call23, i64* %result, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.17
  %9 = load i64, i64* %result, align 8
  ret i64 %9
}

declare i64 @list2(i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Finternal_merge_in_global_face(i64 %face, i64 %frame) #0 {
entry:
  %face.addr = alloca i64, align 8
  %frame.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %global_lface = alloca i64, align 8
  %local_lface = alloca i64, align 8
  %gvec = alloca i64*, align 8
  %lvec = alloca i64*, align 8
  %f = alloca %struct.frame*, align 8
  %c = alloca %struct.face_cache*, align 8
  %newface = alloca %struct.face*, align 8
  %oldface = alloca %struct.face*, align 8
  %attrs = alloca [19 x i64], align 16
  %name = alloca i64, align 8
  %arg = alloca i64, align 8
  %.compoundliteral = alloca %union.Aligned_Cons, align 8
  %.compoundliteral90 = alloca %union.Aligned_Cons, align 8
  %arg106 = alloca i64, align 8
  %.compoundliteral107 = alloca %union.Aligned_Cons, align 8
  %.compoundliteral110 = alloca %union.Aligned_Cons, align 8
  %arg129 = alloca i64, align 8
  %.compoundliteral130 = alloca %union.Aligned_Cons, align 8
  %.compoundliteral133 = alloca %union.Aligned_Cons, align 8
  store i64 %face, i64* %face.addr, align 8
  store i64 %frame, i64* %frame.addr, align 8
  %0 = load i64, i64* %frame.addr, align 8
  %sub = sub nsw i64 %0, 5
  %1 = inttoptr i64 %sub to i8*
  %2 = bitcast i8* %1 to %struct.frame*
  store %struct.frame* %2, %struct.frame** %f, align 8
  %3 = load i64, i64* %frame.addr, align 8
  %call = call zeroext i1 @FRAMEP(i64 %3)
  br i1 %call, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %4 = load i64, i64* %frame.addr, align 8
  %sub1 = sub nsw i64 %4, 5
  %5 = inttoptr i64 %sub1 to i8*
  %6 = bitcast i8* %5 to %struct.frame*
  %terminal = getelementptr inbounds %struct.frame, %struct.frame* %6, i32 0, i32 61
  %7 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %cmp = icmp ne %struct.terminal* %7, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  %call2 = call i64 @builtin_lisp_symbol(i32 458)
  %8 = load i64, i64* %frame.addr, align 8
  %9 = call i64 @wrong_type_argument(i64 %call2, i64 %8) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %10, %cond.true
  %11 = load i64, i64* %face.addr, align 8
  %call3 = call i64 @lface_from_face_name(%struct.frame* null, i64 %11, i1 zeroext true)
  store i64 %call3, i64* %global_lface, align 8
  %12 = load %struct.frame*, %struct.frame** %f, align 8
  %13 = load i64, i64* %face.addr, align 8
  %call4 = call i64 @lface_from_face_name(%struct.frame* %12, i64 %13, i1 zeroext false)
  store i64 %call4, i64* %local_lface, align 8
  %14 = load i64, i64* %local_lface, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp6 = icmp eq i64 %14, %call5
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %15 = load i64, i64* %face.addr, align 8
  %16 = load i64, i64* %frame.addr, align 8
  %call7 = call i64 @Finternal_make_lisp_face(i64 %15, i64 %16)
  store i64 %call7, i64* %local_lface, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %17 = load i64, i64* %local_lface, align 8
  %call8 = call %struct.Lisp_Vector* @XVECTOR(i64 %17)
  %contents = getelementptr inbounds %struct.Lisp_Vector, %struct.Lisp_Vector* %call8, i32 0, i32 1
  %arraydecay = getelementptr inbounds [0 x i64], [0 x i64]* %contents, i32 0, i32 0
  store i64* %arraydecay, i64** %lvec, align 8
  %18 = load i64, i64* %global_lface, align 8
  %call9 = call %struct.Lisp_Vector* @XVECTOR(i64 %18)
  %contents10 = getelementptr inbounds %struct.Lisp_Vector, %struct.Lisp_Vector* %call9, i32 0, i32 1
  %arraydecay11 = getelementptr inbounds [0 x i64], [0 x i64]* %contents10, i32 0, i32 0
  store i64* %arraydecay11, i64** %gvec, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %19 = load i32, i32* %i, align 4
  %cmp12 = icmp slt i32 %19, 19
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %i, align 4
  %idxprom = sext i32 %20 to i64
  %21 = load i64*, i64** %gvec, align 8
  %arrayidx = getelementptr inbounds i64, i64* %21, i64 %idxprom
  %22 = load i64, i64* %arrayidx, align 8
  %call13 = call i64 @builtin_lisp_symbol(i32 64)
  %cmp14 = icmp eq i64 %22, %call13
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %for.body
  %23 = load i64, i64* %local_lface, align 8
  %24 = load i32, i32* %i, align 4
  %conv = sext i32 %24 to i64
  %call16 = call i64 @builtin_lisp_symbol(i32 975)
  call void @ASET(i64 %23, i64 %conv, i64 %call16)
  br label %if.end.27

if.else:                                          ; preds = %for.body
  %25 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %25 to i64
  %26 = load i64*, i64** %gvec, align 8
  %arrayidx18 = getelementptr inbounds i64, i64* %26, i64 %idxprom17
  %27 = load i64, i64* %arrayidx18, align 8
  %call19 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp20 = icmp eq i64 %27, %call19
  br i1 %cmp20, label %if.end.26, label %if.then.22

if.then.22:                                       ; preds = %if.else
  %28 = load i64, i64* %local_lface, align 8
  %29 = load i32, i32* %i, align 4
  %conv23 = sext i32 %29 to i64
  %30 = load i64, i64* %global_lface, align 8
  %31 = load i32, i32* %i, align 4
  %conv24 = sext i32 %31 to i64
  %call25 = call i64 @AREF(i64 %30, i64 %conv24)
  call void @ASET(i64 %28, i64 %conv23, i64 %call25)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.22, %if.else
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.15
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %32 = load i32, i32* %i, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load i64, i64* %face.addr, align 8
  %call28 = call i64 @builtin_lisp_symbol(i32 324)
  %cmp29 = icmp eq i64 %33, %call28
  br i1 %cmp29, label %if.then.31, label %if.end.150

if.then.31:                                       ; preds = %for.end
  %34 = load %struct.frame*, %struct.frame** %f, align 8
  %face_cache = getelementptr inbounds %struct.frame, %struct.frame* %34, i32 0, i32 20
  %35 = load %struct.face_cache*, %struct.face_cache** %face_cache, align 8
  store %struct.face_cache* %35, %struct.face_cache** %c, align 8
  br i1 true, label %cond.true.32, label %cond.false.36

cond.true.32:                                     ; preds = %if.then.31
  %36 = load %struct.frame*, %struct.frame** %f, align 8
  %face_cache33 = getelementptr inbounds %struct.frame, %struct.frame* %36, i32 0, i32 20
  %37 = load %struct.face_cache*, %struct.face_cache** %face_cache33, align 8
  %used = getelementptr inbounds %struct.face_cache, %struct.face_cache* %37, i32 0, i32 4
  %38 = load i32, i32* %used, align 4
  %add = add i32 %38, 0
  %cmp34 = icmp ult i32 0, %add
  br i1 %cmp34, label %cond.true.43, label %cond.false.46

cond.false.36:                                    ; preds = %if.then.31
  %39 = load %struct.frame*, %struct.frame** %f, align 8
  %face_cache37 = getelementptr inbounds %struct.frame, %struct.frame* %39, i32 0, i32 20
  %40 = load %struct.face_cache*, %struct.face_cache** %face_cache37, align 8
  %used38 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %40, i32 0, i32 4
  %41 = load i32, i32* %used38, align 4
  %conv39 = sext i32 %41 to i64
  %add40 = add i64 %conv39, 0
  %cmp41 = icmp ult i64 0, %add40
  br i1 %cmp41, label %cond.true.43, label %cond.false.46

cond.true.43:                                     ; preds = %cond.false.36, %cond.true.32
  %42 = load %struct.frame*, %struct.frame** %f, align 8
  %face_cache44 = getelementptr inbounds %struct.frame, %struct.frame* %42, i32 0, i32 20
  %43 = load %struct.face_cache*, %struct.face_cache** %face_cache44, align 8
  %faces_by_id = getelementptr inbounds %struct.face_cache, %struct.face_cache* %43, i32 0, i32 2
  %44 = load %struct.face**, %struct.face*** %faces_by_id, align 8
  %arrayidx45 = getelementptr inbounds %struct.face*, %struct.face** %44, i64 0
  %45 = load %struct.face*, %struct.face** %arrayidx45, align 8
  br label %cond.end.47

cond.false.46:                                    ; preds = %cond.false.36, %cond.true.32
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.46, %cond.true.43
  %cond = phi %struct.face* [ %45, %cond.true.43 ], [ null, %cond.false.46 ]
  store %struct.face* %cond, %struct.face** %oldface, align 8
  %46 = load %struct.face*, %struct.face** %oldface, align 8
  %tobool = icmp ne %struct.face* %46, null
  br i1 %tobool, label %if.then.48, label %if.end.149

if.then.48:                                       ; preds = %cond.end.47
  %47 = bitcast [19 x i64]* %attrs to i8*
  %48 = load %struct.face*, %struct.face** %oldface, align 8
  %lface = getelementptr inbounds %struct.face, %struct.face* %48, i32 0, i32 0
  %49 = bitcast [19 x i64]* %lface to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %49, i64 152, i32 8, i1 false)
  %50 = load %struct.frame*, %struct.frame** %f, align 8
  %51 = load i64*, i64** %lvec, align 8
  %arraydecay49 = getelementptr inbounds [19 x i64], [19 x i64]* %attrs, i32 0, i32 0
  call void @merge_face_vectors(%struct.frame* %50, i64* %51, i64* %arraydecay49, %struct.named_merge_point* null)
  %52 = load i64, i64* %local_lface, align 8
  %arraydecay50 = getelementptr inbounds [19 x i64], [19 x i64]* %attrs, i32 0, i32 0
  call void @vcopy(i64 %52, i64 0, i64* %arraydecay50, i64 19)
  %53 = load %struct.face_cache*, %struct.face_cache** %c, align 8
  %54 = load i64*, i64** %lvec, align 8
  %call51 = call %struct.face* @realize_face(%struct.face_cache* %53, i64* %54, i32 0)
  store %struct.face* %call51, %struct.face** %newface, align 8
  %55 = load i64*, i64** %gvec, align 8
  %arrayidx52 = getelementptr inbounds i64, i64* %55, i64 1
  %56 = load i64, i64* %arrayidx52, align 8
  %call53 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp54 = icmp eq i64 %56, %call53
  br i1 %cmp54, label %lor.lhs.false, label %land.lhs.true.85

lor.lhs.false:                                    ; preds = %if.then.48
  %57 = load i64*, i64** %gvec, align 8
  %arrayidx56 = getelementptr inbounds i64, i64* %57, i64 2
  %58 = load i64, i64* %arrayidx56, align 8
  %call57 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp58 = icmp eq i64 %58, %call57
  br i1 %cmp58, label %lor.lhs.false.60, label %land.lhs.true.85

lor.lhs.false.60:                                 ; preds = %lor.lhs.false
  %59 = load i64*, i64** %gvec, align 8
  %arrayidx61 = getelementptr inbounds i64, i64* %59, i64 4
  %60 = load i64, i64* %arrayidx61, align 8
  %call62 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp63 = icmp eq i64 %60, %call62
  br i1 %cmp63, label %lor.lhs.false.65, label %land.lhs.true.85

lor.lhs.false.65:                                 ; preds = %lor.lhs.false.60
  %61 = load i64*, i64** %gvec, align 8
  %arrayidx66 = getelementptr inbounds i64, i64* %61, i64 5
  %62 = load i64, i64* %arrayidx66, align 8
  %call67 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp68 = icmp eq i64 %62, %call67
  br i1 %cmp68, label %lor.lhs.false.70, label %land.lhs.true.85

lor.lhs.false.70:                                 ; preds = %lor.lhs.false.65
  %63 = load i64*, i64** %gvec, align 8
  %arrayidx71 = getelementptr inbounds i64, i64* %63, i64 6
  %64 = load i64, i64* %arrayidx71, align 8
  %call72 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp73 = icmp eq i64 %64, %call72
  br i1 %cmp73, label %lor.lhs.false.75, label %land.lhs.true.85

lor.lhs.false.75:                                 ; preds = %lor.lhs.false.70
  %65 = load i64*, i64** %gvec, align 8
  %arrayidx76 = getelementptr inbounds i64, i64* %65, i64 3
  %66 = load i64, i64* %arrayidx76, align 8
  %call77 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp78 = icmp eq i64 %66, %call77
  br i1 %cmp78, label %lor.lhs.false.80, label %land.lhs.true.85

lor.lhs.false.80:                                 ; preds = %lor.lhs.false.75
  %67 = load i64*, i64** %gvec, align 8
  %arrayidx81 = getelementptr inbounds i64, i64* %67, i64 15
  %68 = load i64, i64* %arrayidx81, align 8
  %call82 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp83 = icmp eq i64 %68, %call82
  br i1 %cmp83, label %if.end.102, label %land.lhs.true.85

land.lhs.true.85:                                 ; preds = %lor.lhs.false.80, %lor.lhs.false.75, %lor.lhs.false.70, %lor.lhs.false.65, %lor.lhs.false.60, %lor.lhs.false, %if.then.48
  %69 = load %struct.face*, %struct.face** %newface, align 8
  %font = getelementptr inbounds %struct.face, %struct.face* %69, i32 0, i32 10
  %70 = load %struct.font*, %struct.font** %font, align 8
  %tobool86 = icmp ne %struct.font* %70, null
  br i1 %tobool86, label %if.then.87, label %if.end.102

if.then.87:                                       ; preds = %land.lhs.true.85
  %71 = load %struct.face*, %struct.face** %newface, align 8
  %font88 = getelementptr inbounds %struct.face, %struct.face* %71, i32 0, i32 10
  %72 = load %struct.font*, %struct.font** %font88, align 8
  %props = getelementptr inbounds %struct.font, %struct.font* %72, i32 0, i32 1
  %arrayidx89 = getelementptr inbounds [17 x i64], [17 x i64]* %props, i32 0, i64 14
  %73 = load i64, i64* %arrayidx89, align 8
  store i64 %73, i64* %name, align 8
  %s = bitcast %union.Aligned_Cons* %.compoundliteral to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s, i32 0, i32 0
  %s91 = bitcast %union.Aligned_Cons* %.compoundliteral90 to %struct.Lisp_Cons*
  %car92 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s91, i32 0, i32 0
  %call93 = call i64 @builtin_lisp_symbol(i32 439)
  store i64 %call93, i64* %car92, align 8
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s91, i32 0, i32 1
  %cdr = bitcast %union.anon.10* %u to i64*
  %74 = load i64, i64* %name, align 8
  store i64 %74, i64* %cdr, align 8
  %s94 = bitcast %union.Aligned_Cons* %.compoundliteral90 to %struct.Lisp_Cons*
  %75 = bitcast %struct.Lisp_Cons* %s94 to i8*
  %call95 = call i64 @make_lisp_ptr(i8* %75, i32 3)
  store i64 %call95, i64* %car, align 8
  %u96 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s, i32 0, i32 1
  %cdr97 = bitcast %union.anon.10* %u96 to i64*
  %call98 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call98, i64* %cdr97, align 8
  %s99 = bitcast %union.Aligned_Cons* %.compoundliteral to %struct.Lisp_Cons*
  %76 = bitcast %struct.Lisp_Cons* %s99 to i8*
  %call100 = call i64 @make_lisp_ptr(i8* %76, i32 3)
  store i64 %call100, i64* %arg, align 8
  %77 = load i64, i64* %frame.addr, align 8
  %78 = load i64, i64* %arg, align 8
  %call101 = call i64 @Fmodify_frame_parameters(i64 %77, i64 %78)
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.87, %land.lhs.true.85, %lor.lhs.false.80
  %79 = load i64*, i64** %gvec, align 8
  %arrayidx103 = getelementptr inbounds i64, i64* %79, i64 9
  %80 = load i64, i64* %arrayidx103, align 8
  %call104 = call zeroext i1 @STRINGP(i64 %80)
  br i1 %call104, label %if.then.105, label %if.end.125

if.then.105:                                      ; preds = %if.end.102
  %s108 = bitcast %union.Aligned_Cons* %.compoundliteral107 to %struct.Lisp_Cons*
  %car109 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s108, i32 0, i32 0
  %s111 = bitcast %union.Aligned_Cons* %.compoundliteral110 to %struct.Lisp_Cons*
  %car112 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s111, i32 0, i32 0
  %call113 = call i64 @builtin_lisp_symbol(i32 451)
  store i64 %call113, i64* %car112, align 8
  %u114 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s111, i32 0, i32 1
  %cdr115 = bitcast %union.anon.10* %u114 to i64*
  %81 = load i64*, i64** %gvec, align 8
  %arrayidx116 = getelementptr inbounds i64, i64* %81, i64 9
  %82 = load i64, i64* %arrayidx116, align 8
  store i64 %82, i64* %cdr115, align 8
  %s117 = bitcast %union.Aligned_Cons* %.compoundliteral110 to %struct.Lisp_Cons*
  %83 = bitcast %struct.Lisp_Cons* %s117 to i8*
  %call118 = call i64 @make_lisp_ptr(i8* %83, i32 3)
  store i64 %call118, i64* %car109, align 8
  %u119 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s108, i32 0, i32 1
  %cdr120 = bitcast %union.anon.10* %u119 to i64*
  %call121 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call121, i64* %cdr120, align 8
  %s122 = bitcast %union.Aligned_Cons* %.compoundliteral107 to %struct.Lisp_Cons*
  %84 = bitcast %struct.Lisp_Cons* %s122 to i8*
  %call123 = call i64 @make_lisp_ptr(i8* %84, i32 3)
  store i64 %call123, i64* %arg106, align 8
  %85 = load i64, i64* %frame.addr, align 8
  %86 = load i64, i64* %arg106, align 8
  %call124 = call i64 @Fmodify_frame_parameters(i64 %85, i64 %86)
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.105, %if.end.102
  %87 = load i64*, i64** %gvec, align 8
  %arrayidx126 = getelementptr inbounds i64, i64* %87, i64 10
  %88 = load i64, i64* %arrayidx126, align 8
  %call127 = call zeroext i1 @STRINGP(i64 %88)
  br i1 %call127, label %if.then.128, label %if.end.148

if.then.128:                                      ; preds = %if.end.125
  %s131 = bitcast %union.Aligned_Cons* %.compoundliteral130 to %struct.Lisp_Cons*
  %car132 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s131, i32 0, i32 0
  %s134 = bitcast %union.Aligned_Cons* %.compoundliteral133 to %struct.Lisp_Cons*
  %car135 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s134, i32 0, i32 0
  %call136 = call i64 @builtin_lisp_symbol(i32 193)
  store i64 %call136, i64* %car135, align 8
  %u137 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s134, i32 0, i32 1
  %cdr138 = bitcast %union.anon.10* %u137 to i64*
  %89 = load i64*, i64** %gvec, align 8
  %arrayidx139 = getelementptr inbounds i64, i64* %89, i64 10
  %90 = load i64, i64* %arrayidx139, align 8
  store i64 %90, i64* %cdr138, align 8
  %s140 = bitcast %union.Aligned_Cons* %.compoundliteral133 to %struct.Lisp_Cons*
  %91 = bitcast %struct.Lisp_Cons* %s140 to i8*
  %call141 = call i64 @make_lisp_ptr(i8* %91, i32 3)
  store i64 %call141, i64* %car132, align 8
  %u142 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s131, i32 0, i32 1
  %cdr143 = bitcast %union.anon.10* %u142 to i64*
  %call144 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call144, i64* %cdr143, align 8
  %s145 = bitcast %union.Aligned_Cons* %.compoundliteral130 to %struct.Lisp_Cons*
  %92 = bitcast %struct.Lisp_Cons* %s145 to i8*
  %call146 = call i64 @make_lisp_ptr(i8* %92, i32 3)
  store i64 %call146, i64* %arg129, align 8
  %93 = load i64, i64* %frame.addr, align 8
  %94 = load i64, i64* %arg129, align 8
  %call147 = call i64 @Fmodify_frame_parameters(i64 %93, i64 %94)
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.128, %if.end.125
  br label %if.end.149

if.end.149:                                       ; preds = %if.end.148, %cond.end.47
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.149, %for.end
  %call151 = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call151
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define internal void @merge_face_vectors(%struct.frame* %f, i64* %from, i64* %to, %struct.named_merge_point* %named_merge_points) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %from.addr = alloca i64*, align 8
  %to.addr = alloca i64*, align 8
  %named_merge_points.addr = alloca %struct.named_merge_point*, align 8
  %i = alloca i32, align 4
  %font = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64* %from, i64** %from.addr, align 8
  store i64* %to, i64** %to.addr, align 8
  store %struct.named_merge_point* %named_merge_points, %struct.named_merge_point** %named_merge_points.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %font, align 8
  %0 = load i64*, i64** %from.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %0, i64 16
  %1 = load i64, i64* %arrayidx, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp = icmp eq i64 %1, %call1
  br i1 %cmp, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = load i64*, i64** %from.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, i64* %2, i64 16
  %3 = load i64, i64* %arrayidx2, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp4 = icmp eq i64 %3, %call3
  br i1 %cmp4, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %5 = load i64*, i64** %from.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, i64* %5, i64 16
  %6 = load i64, i64* %arrayidx5, align 8
  %7 = load i64*, i64** %to.addr, align 8
  %8 = load %struct.named_merge_point*, %struct.named_merge_point** %named_merge_points.addr, align 8
  %call6 = call zeroext i1 @merge_face_ref(%struct.frame* %4, i64 %6, i64* %7, i1 zeroext false, %struct.named_merge_point* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %9 = load i64*, i64** %from.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, i64* %9, i64 15
  %10 = load i64, i64* %arrayidx7, align 8
  %call8 = call zeroext i1 @FONT_SPEC_P(i64 %10)
  br i1 %call8, label %if.then.9, label %if.end.21

if.then.9:                                        ; preds = %if.end
  %11 = load i64*, i64** %to.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, i64* %11, i64 15
  %12 = load i64, i64* %arrayidx10, align 8
  %call11 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp12 = icmp eq i64 %12, %call11
  br i1 %cmp12, label %if.else, label %if.then.13

if.then.13:                                       ; preds = %if.then.9
  %13 = load i64*, i64** %from.addr, align 8
  %arrayidx14 = getelementptr inbounds i64, i64* %13, i64 15
  %14 = load i64, i64* %arrayidx14, align 8
  %15 = load i64*, i64** %to.addr, align 8
  %arrayidx15 = getelementptr inbounds i64, i64* %15, i64 15
  %16 = load i64, i64* %arrayidx15, align 8
  %call16 = call i64 @merge_font_spec(i64 %14, i64 %16)
  store i64 %call16, i64* %font, align 8
  br label %if.end.19

if.else:                                          ; preds = %if.then.9
  %17 = load i64*, i64** %from.addr, align 8
  %arrayidx17 = getelementptr inbounds i64, i64* %17, i64 15
  %18 = load i64, i64* %arrayidx17, align 8
  %call18 = call i64 @copy_font_spec(i64 %18)
  store i64 %call18, i64* %font, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.13
  %19 = load i64, i64* %font, align 8
  %20 = load i64*, i64** %to.addr, align 8
  %arrayidx20 = getelementptr inbounds i64, i64* %20, i64 15
  store i64 %19, i64* %arrayidx20, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.19, %if.end
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.21
  %21 = load i32, i32* %i, align 4
  %cmp22 = icmp slt i32 %21, 19
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %i, align 4
  %idxprom = sext i32 %22 to i64
  %23 = load i64*, i64** %from.addr, align 8
  %arrayidx23 = getelementptr inbounds i64, i64* %23, i64 %idxprom
  %24 = load i64, i64* %arrayidx23, align 8
  %call24 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp25 = icmp eq i64 %24, %call24
  br i1 %cmp25, label %if.end.91, label %if.then.26

if.then.26:                                       ; preds = %for.body
  %25 = load i32, i32* %i, align 4
  %cmp27 = icmp eq i32 %25, 4
  br i1 %cmp27, label %land.lhs.true.28, label %if.else.44

land.lhs.true.28:                                 ; preds = %if.then.26
  %26 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %26 to i64
  %27 = load i64*, i64** %from.addr, align 8
  %arrayidx30 = getelementptr inbounds i64, i64* %27, i64 %idxprom29
  %28 = load i64, i64* %arrayidx30, align 8
  %and = and i64 %28, 7
  %conv = trunc i64 %and to i32
  %and31 = and i32 %conv, -5
  %cmp32 = icmp eq i32 %and31, 2
  br i1 %cmp32, label %if.else.44, label %if.then.34

if.then.34:                                       ; preds = %land.lhs.true.28
  %29 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %29 to i64
  %30 = load i64*, i64** %from.addr, align 8
  %arrayidx36 = getelementptr inbounds i64, i64* %30, i64 %idxprom35
  %31 = load i64, i64* %arrayidx36, align 8
  %32 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %32 to i64
  %33 = load i64*, i64** %to.addr, align 8
  %arrayidx38 = getelementptr inbounds i64, i64* %33, i64 %idxprom37
  %34 = load i64, i64* %arrayidx38, align 8
  %35 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %35 to i64
  %36 = load i64*, i64** %to.addr, align 8
  %arrayidx40 = getelementptr inbounds i64, i64* %36, i64 %idxprom39
  %37 = load i64, i64* %arrayidx40, align 8
  %call41 = call i64 @merge_face_heights(i64 %31, i64 %34, i64 %37)
  %38 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %38 to i64
  %39 = load i64*, i64** %to.addr, align 8
  %arrayidx43 = getelementptr inbounds i64, i64* %39, i64 %idxprom42
  store i64 %call41, i64* %arrayidx43, align 8
  %40 = load i64*, i64** %to.addr, align 8
  call void @font_clear_prop(i64* %40, i32 8)
  br label %if.end.90

if.else.44:                                       ; preds = %land.lhs.true.28, %if.then.26
  %41 = load i32, i32* %i, align 4
  %cmp45 = icmp ne i32 %41, 15
  br i1 %cmp45, label %land.lhs.true.47, label %if.end.89

land.lhs.true.47:                                 ; preds = %if.else.44
  %42 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %42 to i64
  %43 = load i64*, i64** %to.addr, align 8
  %arrayidx49 = getelementptr inbounds i64, i64* %43, i64 %idxprom48
  %44 = load i64, i64* %arrayidx49, align 8
  %45 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %45 to i64
  %46 = load i64*, i64** %from.addr, align 8
  %arrayidx51 = getelementptr inbounds i64, i64* %46, i64 %idxprom50
  %47 = load i64, i64* %arrayidx51, align 8
  %cmp52 = icmp eq i64 %44, %47
  br i1 %cmp52, label %if.end.89, label %if.then.54

if.then.54:                                       ; preds = %land.lhs.true.47
  %48 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %48 to i64
  %49 = load i64*, i64** %from.addr, align 8
  %arrayidx56 = getelementptr inbounds i64, i64* %49, i64 %idxprom55
  %50 = load i64, i64* %arrayidx56, align 8
  %51 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %51 to i64
  %52 = load i64*, i64** %to.addr, align 8
  %arrayidx58 = getelementptr inbounds i64, i64* %52, i64 %idxprom57
  store i64 %50, i64* %arrayidx58, align 8
  %53 = load i32, i32* %i, align 4
  %cmp59 = icmp sge i32 %53, 1
  br i1 %cmp59, label %land.lhs.true.61, label %if.end.88

land.lhs.true.61:                                 ; preds = %if.then.54
  %54 = load i32, i32* %i, align 4
  %cmp62 = icmp sle i32 %54, 6
  br i1 %cmp62, label %if.then.64, label %if.end.88

if.then.64:                                       ; preds = %land.lhs.true.61
  %55 = load i64*, i64** %to.addr, align 8
  %56 = load i32, i32* %i, align 4
  %cmp65 = icmp eq i32 %56, 1
  br i1 %cmp65, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.64
  br label %cond.end.86

cond.false:                                       ; preds = %if.then.64
  %57 = load i32, i32* %i, align 4
  %cmp67 = icmp eq i32 %57, 2
  br i1 %cmp67, label %cond.true.69, label %cond.false.70

cond.true.69:                                     ; preds = %cond.false
  br label %cond.end.84

cond.false.70:                                    ; preds = %cond.false
  %58 = load i32, i32* %i, align 4
  %cmp71 = icmp eq i32 %58, 3
  br i1 %cmp71, label %cond.true.73, label %cond.false.74

cond.true.73:                                     ; preds = %cond.false.70
  br label %cond.end.82

cond.false.74:                                    ; preds = %cond.false.70
  %59 = load i32, i32* %i, align 4
  %cmp75 = icmp eq i32 %59, 4
  br i1 %cmp75, label %cond.true.77, label %cond.false.78

cond.true.77:                                     ; preds = %cond.false.74
  br label %cond.end

cond.false.78:                                    ; preds = %cond.false.74
  %60 = load i32, i32* %i, align 4
  %cmp79 = icmp eq i32 %60, 5
  %cond = select i1 %cmp79, i32 5, i32 6
  br label %cond.end

cond.end:                                         ; preds = %cond.false.78, %cond.true.77
  %cond81 = phi i32 [ 8, %cond.true.77 ], [ %cond, %cond.false.78 ]
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.end, %cond.true.73
  %cond83 = phi i32 [ 7, %cond.true.73 ], [ %cond81, %cond.end ]
  br label %cond.end.84

cond.end.84:                                      ; preds = %cond.end.82, %cond.true.69
  %cond85 = phi i32 [ 1, %cond.true.69 ], [ %cond83, %cond.end.82 ]
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.end.84, %cond.true
  %cond87 = phi i32 [ 2, %cond.true ], [ %cond85, %cond.end.84 ]
  call void @font_clear_prop(i64* %55, i32 %cond87)
  br label %if.end.88

if.end.88:                                        ; preds = %cond.end.86, %land.lhs.true.61, %if.then.54
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %land.lhs.true.47, %if.else.44
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.then.34
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.91
  %61 = load i32, i32* %i, align 4
  %inc = add nsw i32 %61, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %62 = load i64, i64* %font, align 8
  %call92 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp93 = icmp eq i64 %62, %call92
  br i1 %cmp93, label %if.end.139, label %if.then.95

if.then.95:                                       ; preds = %for.end
  %63 = load i64, i64* %font, align 8
  %call96 = call i64 @AREF(i64 %63, i64 1)
  %call97 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp98 = icmp eq i64 %call96, %call97
  br i1 %cmp98, label %if.end.104, label %if.then.100

if.then.100:                                      ; preds = %if.then.95
  %64 = load i64, i64* %font, align 8
  %call101 = call i64 @AREF(i64 %64, i64 1)
  %call102 = call i64 @SYMBOL_NAME(i64 %call101)
  %65 = load i64*, i64** %to.addr, align 8
  %arrayidx103 = getelementptr inbounds i64, i64* %65, i64 2
  store i64 %call102, i64* %arrayidx103, align 8
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.100, %if.then.95
  %66 = load i64, i64* %font, align 8
  %call105 = call i64 @AREF(i64 %66, i64 2)
  %call106 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp107 = icmp eq i64 %call105, %call106
  br i1 %cmp107, label %if.end.113, label %if.then.109

if.then.109:                                      ; preds = %if.end.104
  %67 = load i64, i64* %font, align 8
  %call110 = call i64 @AREF(i64 %67, i64 2)
  %call111 = call i64 @SYMBOL_NAME(i64 %call110)
  %68 = load i64*, i64** %to.addr, align 8
  %arrayidx112 = getelementptr inbounds i64, i64* %68, i64 1
  store i64 %call111, i64* %arrayidx112, align 8
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.109, %if.end.104
  %69 = load i64, i64* %font, align 8
  %call114 = call i64 @AREF(i64 %69, i64 5)
  %call115 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp116 = icmp eq i64 %call114, %call115
  br i1 %cmp116, label %if.end.121, label %if.then.118

if.then.118:                                      ; preds = %if.end.113
  %70 = load i64, i64* %font, align 8
  %call119 = call i64 @font_style_symbolic(i64 %70, i32 5, i1 zeroext true)
  %71 = load i64*, i64** %to.addr, align 8
  %arrayidx120 = getelementptr inbounds i64, i64* %71, i64 5
  store i64 %call119, i64* %arrayidx120, align 8
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.118, %if.end.113
  %72 = load i64, i64* %font, align 8
  %call122 = call i64 @AREF(i64 %72, i64 6)
  %call123 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp124 = icmp eq i64 %call122, %call123
  br i1 %cmp124, label %if.end.129, label %if.then.126

if.then.126:                                      ; preds = %if.end.121
  %73 = load i64, i64* %font, align 8
  %call127 = call i64 @font_style_symbolic(i64 %73, i32 6, i1 zeroext true)
  %74 = load i64*, i64** %to.addr, align 8
  %arrayidx128 = getelementptr inbounds i64, i64* %74, i64 6
  store i64 %call127, i64* %arrayidx128, align 8
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.126, %if.end.121
  %75 = load i64, i64* %font, align 8
  %call130 = call i64 @AREF(i64 %75, i64 7)
  %call131 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp132 = icmp eq i64 %call130, %call131
  br i1 %cmp132, label %if.end.137, label %if.then.134

if.then.134:                                      ; preds = %if.end.129
  %76 = load i64, i64* %font, align 8
  %call135 = call i64 @font_style_symbolic(i64 %76, i32 7, i1 zeroext true)
  %77 = load i64*, i64** %to.addr, align 8
  %arrayidx136 = getelementptr inbounds i64, i64* %77, i64 3
  store i64 %call135, i64* %arrayidx136, align 8
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.134, %if.end.129
  %78 = load i64, i64* %font, align 8
  %call138 = call i64 @builtin_lisp_symbol(i32 0)
  call void @ASET(i64 %78, i64 8, i64 %call138)
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.137, %for.end
  %call140 = call i64 @builtin_lisp_symbol(i32 0)
  %79 = load i64*, i64** %to.addr, align 8
  %arrayidx141 = getelementptr inbounds i64, i64* %79, i64 16
  store i64 %call140, i64* %arrayidx141, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.face* @realize_face(%struct.face_cache* %cache, i64* %attrs, i32 %former_face_id) #0 {
entry:
  %cache.addr = alloca %struct.face_cache*, align 8
  %attrs.addr = alloca i64*, align 8
  %former_face_id.addr = alloca i32, align 4
  %face = alloca %struct.face*, align 8
  %former_face = alloca %struct.face*, align 8
  store %struct.face_cache* %cache, %struct.face_cache** %cache.addr, align 8
  store i64* %attrs, i64** %attrs.addr, align 8
  store i32 %former_face_id, i32* %former_face_id.addr, align 4
  %0 = load i32, i32* %former_face_id.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.face_cache*, %struct.face_cache** %cache.addr, align 8
  %used = getelementptr inbounds %struct.face_cache, %struct.face_cache* %1, i32 0, i32 4
  %2 = load i32, i32* %used, align 4
  %3 = load i32, i32* %former_face_id.addr, align 4
  %cmp1 = icmp sgt i32 %2, %3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, i32* %former_face_id.addr, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.face_cache*, %struct.face_cache** %cache.addr, align 8
  %faces_by_id = getelementptr inbounds %struct.face_cache, %struct.face_cache* %5, i32 0, i32 2
  %6 = load %struct.face**, %struct.face*** %faces_by_id, align 8
  %arrayidx = getelementptr inbounds %struct.face*, %struct.face** %6, i64 %idxprom
  %7 = load %struct.face*, %struct.face** %arrayidx, align 8
  store %struct.face* %7, %struct.face** %former_face, align 8
  %8 = load %struct.face_cache*, %struct.face_cache** %cache.addr, align 8
  %9 = load %struct.face*, %struct.face** %former_face, align 8
  call void @uncache_face(%struct.face_cache* %8, %struct.face* %9)
  %10 = load %struct.face_cache*, %struct.face_cache** %cache.addr, align 8
  %f = getelementptr inbounds %struct.face_cache, %struct.face_cache* %10, i32 0, i32 1
  %11 = load %struct.frame*, %struct.frame** %f, align 8
  %12 = load %struct.face*, %struct.face** %former_face, align 8
  call void @free_realized_face(%struct.frame* %11, %struct.face* %12)
  store i8 1, i8* @frame_garbaged, align 1
  %13 = load %struct.face_cache*, %struct.face_cache** %cache.addr, align 8
  %f2 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %13, i32 0, i32 1
  %14 = load %struct.frame*, %struct.frame** %f2, align 8
  call void @fset_redisplay(%struct.frame* %14)
  %15 = load %struct.face_cache*, %struct.face_cache** %cache.addr, align 8
  %f3 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %15, i32 0, i32 1
  %16 = load %struct.frame*, %struct.frame** %f3, align 8
  %garbaged = getelementptr inbounds %struct.frame, %struct.frame* %16, i32 0, i32 26
  %17 = bitcast i48* %garbaged to i64*
  %bf.load = load i64, i64* %17, align 8
  %bf.clear = and i64 %bf.load, -8193
  %bf.set = or i64 %bf.clear, 8192
  store i64 %bf.set, i64* %17, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %18 = load %struct.face_cache*, %struct.face_cache** %cache.addr, align 8
  %f4 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %18, i32 0, i32 1
  %19 = load %struct.frame*, %struct.frame** %f4, align 8
  %output_method = getelementptr inbounds %struct.frame, %struct.frame* %19, i32 0, i32 26
  %20 = bitcast i48* %output_method to i64*
  %bf.load5 = load i64, i64* %20, align 8
  %bf.lshr = lshr i64 %bf.load5, 23
  %bf.clear6 = and i64 %bf.lshr, 7
  %bf.cast = trunc i64 %bf.clear6 to i32
  %cmp7 = icmp eq i32 %bf.cast, 2
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end
  %21 = load %struct.face_cache*, %struct.face_cache** %cache.addr, align 8
  %22 = load i64*, i64** %attrs.addr, align 8
  %call = call %struct.face* @realize_x_face(%struct.face_cache* %21, i64* %22)
  store %struct.face* %call, %struct.face** %face, align 8
  br label %if.end.31

if.else:                                          ; preds = %if.end
  %23 = load %struct.face_cache*, %struct.face_cache** %cache.addr, align 8
  %f9 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %23, i32 0, i32 1
  %24 = load %struct.frame*, %struct.frame** %f9, align 8
  %output_method10 = getelementptr inbounds %struct.frame, %struct.frame* %24, i32 0, i32 26
  %25 = bitcast i48* %output_method10 to i64*
  %bf.load11 = load i64, i64* %25, align 8
  %bf.lshr12 = lshr i64 %bf.load11, 23
  %bf.clear13 = and i64 %bf.lshr12, 7
  %bf.cast14 = trunc i64 %bf.clear13 to i32
  %cmp15 = icmp eq i32 %bf.cast14, 1
  br i1 %cmp15, label %if.then.16, label %if.else.18

if.then.16:                                       ; preds = %if.else
  %26 = load %struct.face_cache*, %struct.face_cache** %cache.addr, align 8
  %27 = load i64*, i64** %attrs.addr, align 8
  %call17 = call %struct.face* @realize_tty_face(%struct.face_cache* %26, i64* %27)
  store %struct.face* %call17, %struct.face** %face, align 8
  br label %if.end.30

if.else.18:                                       ; preds = %if.else
  %28 = load %struct.face_cache*, %struct.face_cache** %cache.addr, align 8
  %f19 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %28, i32 0, i32 1
  %29 = load %struct.frame*, %struct.frame** %f19, align 8
  %output_method20 = getelementptr inbounds %struct.frame, %struct.frame* %29, i32 0, i32 26
  %30 = bitcast i48* %output_method20 to i64*
  %bf.load21 = load i64, i64* %30, align 8
  %bf.lshr22 = lshr i64 %bf.load21, 23
  %bf.clear23 = and i64 %bf.lshr22, 7
  %bf.cast24 = trunc i64 %bf.clear23 to i32
  %cmp25 = icmp eq i32 %bf.cast24, 0
  br i1 %cmp25, label %if.then.26, label %if.else.28

if.then.26:                                       ; preds = %if.else.18
  %31 = load i64*, i64** %attrs.addr, align 8
  %call27 = call %struct.face* @make_realized_face(i64* %31)
  store %struct.face* %call27, %struct.face** %face, align 8
  br label %if.end.29

if.else.28:                                       ; preds = %if.else.18
  call void @emacs_abort() #6
  unreachable

if.end.29:                                        ; preds = %if.then.26
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.then.16
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.8
  %32 = load %struct.face_cache*, %struct.face_cache** %cache.addr, align 8
  %33 = load %struct.face*, %struct.face** %face, align 8
  %34 = load i64*, i64** %attrs.addr, align 8
  %call32 = call i32 @lface_hash(i64* %34)
  call void @cache_face(%struct.face_cache* %32, %struct.face* %33, i32 %call32)
  %35 = load %struct.face*, %struct.face** %face, align 8
  ret %struct.face* %35
}

; Function Attrs: nounwind uwtable
define i64 @Fface_font(i64 %face, i64 %frame, i64 %character) #0 {
entry:
  %retval = alloca i64, align 8
  %face.addr = alloca i64, align 8
  %frame.addr = alloca i64, align 8
  %character.addr = alloca i64, align 8
  %result = alloca i64, align 8
  %lface = alloca i64, align 8
  %f = alloca %struct.frame*, align 8
  %face_id = alloca i32, align 4
  %fface = alloca %struct.face*, align 8
  store i64 %face, i64* %face.addr, align 8
  store i64 %frame, i64* %frame.addr, align 8
  store i64 %character, i64* %character.addr, align 8
  %0 = load i64, i64* %frame.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 901)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* %result, align 8
  %1 = load i64, i64* %face.addr, align 8
  %call2 = call i64 @lface_from_face_name(%struct.frame* null, i64 %1, i1 zeroext true)
  store i64 %call2, i64* %lface, align 8
  %2 = load i64, i64* %lface, align 8
  %call3 = call i64 @AREF(i64 %2, i64 5)
  %call4 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp5 = icmp eq i64 %call3, %call4
  br i1 %cmp5, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %3 = load i64, i64* %lface, align 8
  %call6 = call i64 @AREF(i64 %3, i64 5)
  %call7 = call i64 @builtin_lisp_symbol(i32 707)
  %cmp8 = icmp eq i64 %call6, %call7
  br i1 %cmp8, label %if.end, label %if.then.9

if.then.9:                                        ; preds = %land.lhs.true
  %call10 = call i64 @builtin_lisp_symbol(i32 205)
  %4 = load i64, i64* %result, align 8
  %call11 = call i64 @Fcons(i64 %call10, i64 %4)
  store i64 %call11, i64* %result, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.9, %land.lhs.true, %if.then
  %5 = load i64, i64* %lface, align 8
  %call12 = call i64 @AREF(i64 %5, i64 6)
  %call13 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp14 = icmp eq i64 %call12, %call13
  br i1 %cmp14, label %if.end.22, label %land.lhs.true.15

land.lhs.true.15:                                 ; preds = %if.end
  %6 = load i64, i64* %lface, align 8
  %call16 = call i64 @AREF(i64 %6, i64 6)
  %call17 = call i64 @builtin_lisp_symbol(i32 707)
  %cmp18 = icmp eq i64 %call16, %call17
  br i1 %cmp18, label %if.end.22, label %if.then.19

if.then.19:                                       ; preds = %land.lhs.true.15
  %call20 = call i64 @builtin_lisp_symbol(i32 582)
  %7 = load i64, i64* %result, align 8
  %call21 = call i64 @Fcons(i64 %call20, i64 %7)
  store i64 %call21, i64* %result, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %land.lhs.true.15, %if.end
  %8 = load i64, i64* %result, align 8
  store i64 %8, i64* %retval
  br label %return

if.else:                                          ; preds = %entry
  %9 = load i64, i64* %frame.addr, align 8
  %call23 = call %struct.frame* @decode_live_frame(i64 %9)
  store %struct.frame* %call23, %struct.frame** %f, align 8
  %10 = load %struct.frame*, %struct.frame** %f, align 8
  %11 = load i64, i64* %face.addr, align 8
  %call24 = call i32 @lookup_named_face(%struct.frame* %10, i64 %11, i1 zeroext true)
  store i32 %call24, i32* %face_id, align 4
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %12 = load i32, i32* %face_id, align 4
  %add = add i32 %12, 0
  %13 = load %struct.frame*, %struct.frame** %f, align 8
  %face_cache = getelementptr inbounds %struct.frame, %struct.frame* %13, i32 0, i32 20
  %14 = load %struct.face_cache*, %struct.face_cache** %face_cache, align 8
  %used = getelementptr inbounds %struct.face_cache, %struct.face_cache* %14, i32 0, i32 4
  %15 = load i32, i32* %used, align 4
  %add25 = add i32 %15, 0
  %cmp26 = icmp ult i32 %add, %add25
  br i1 %cmp26, label %cond.true.34, label %cond.false.36

cond.false:                                       ; preds = %if.else
  %16 = load i32, i32* %face_id, align 4
  %conv = sext i32 %16 to i64
  %add27 = add i64 %conv, 0
  %17 = load %struct.frame*, %struct.frame** %f, align 8
  %face_cache28 = getelementptr inbounds %struct.frame, %struct.frame* %17, i32 0, i32 20
  %18 = load %struct.face_cache*, %struct.face_cache** %face_cache28, align 8
  %used29 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %18, i32 0, i32 4
  %19 = load i32, i32* %used29, align 4
  %conv30 = sext i32 %19 to i64
  %add31 = add i64 %conv30, 0
  %cmp32 = icmp ult i64 %add27, %add31
  br i1 %cmp32, label %cond.true.34, label %cond.false.36

cond.true.34:                                     ; preds = %cond.false, %cond.true
  %20 = load i32, i32* %face_id, align 4
  %idxprom = sext i32 %20 to i64
  %21 = load %struct.frame*, %struct.frame** %f, align 8
  %face_cache35 = getelementptr inbounds %struct.frame, %struct.frame* %21, i32 0, i32 20
  %22 = load %struct.face_cache*, %struct.face_cache** %face_cache35, align 8
  %faces_by_id = getelementptr inbounds %struct.face_cache, %struct.face_cache* %22, i32 0, i32 2
  %23 = load %struct.face**, %struct.face*** %faces_by_id, align 8
  %arrayidx = getelementptr inbounds %struct.face*, %struct.face** %23, i64 %idxprom
  %24 = load %struct.face*, %struct.face** %arrayidx, align 8
  br label %cond.end

cond.false.36:                                    ; preds = %cond.false, %cond.true
  br label %cond.end

cond.end:                                         ; preds = %cond.false.36, %cond.true.34
  %cond = phi %struct.face* [ %24, %cond.true.34 ], [ null, %cond.false.36 ]
  store %struct.face* %cond, %struct.face** %fface, align 8
  %25 = load %struct.face*, %struct.face** %fface, align 8
  %tobool = icmp ne %struct.face* %25, null
  br i1 %tobool, label %if.end.39, label %if.then.37

if.then.37:                                       ; preds = %cond.end
  %call38 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call38, i64* %retval
  br label %return

if.end.39:                                        ; preds = %cond.end
  %26 = load %struct.frame*, %struct.frame** %f, align 8
  %output_method = getelementptr inbounds %struct.frame, %struct.frame* %26, i32 0, i32 26
  %27 = bitcast i48* %output_method to i64*
  %bf.load = load i64, i64* %27, align 8
  %bf.lshr = lshr i64 %bf.load, 23
  %bf.clear = and i64 %bf.lshr, 7
  %bf.cast = trunc i64 %bf.clear to i32
  %cmp40 = icmp eq i32 %bf.cast, 2
  br i1 %cmp40, label %land.lhs.true.42, label %if.end.84

land.lhs.true.42:                                 ; preds = %if.end.39
  %28 = load i64, i64* %character.addr, align 8
  %call43 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp44 = icmp eq i64 %28, %call43
  br i1 %cmp44, label %if.end.84, label %if.then.46

if.then.46:                                       ; preds = %land.lhs.true.42
  %29 = load i64, i64* %character.addr, align 8
  %call47 = call zeroext i1 @NATNUMP(i64 %29)
  br i1 %call47, label %land.lhs.true.49, label %cond.false.53

land.lhs.true.49:                                 ; preds = %if.then.46
  %30 = load i64, i64* %character.addr, align 8
  %shr = ashr i64 %30, 2
  %cmp50 = icmp sle i64 %shr, 4194303
  br i1 %cmp50, label %cond.true.52, label %cond.false.53

cond.true.52:                                     ; preds = %land.lhs.true.49
  br label %cond.end.55

cond.false.53:                                    ; preds = %land.lhs.true.49, %if.then.46
  %call54 = call i64 @builtin_lisp_symbol(i32 260)
  %31 = load i64, i64* %character.addr, align 8
  %32 = call i64 @wrong_type_argument(i64 %call54, i64 %31) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end.55

cond.end.55:                                      ; preds = %33, %cond.true.52
  %34 = load %struct.frame*, %struct.frame** %f, align 8
  %35 = load %struct.face*, %struct.face** %fface, align 8
  %36 = load i64, i64* %character.addr, align 8
  %shr56 = ashr i64 %36, 2
  %conv57 = trunc i64 %shr56 to i32
  %call58 = call i64 @builtin_lisp_symbol(i32 0)
  %call59 = call i32 @face_for_char(%struct.frame* %34, %struct.face* %35, i32 %conv57, i64 -1, i64 %call58)
  store i32 %call59, i32* %face_id, align 4
  br i1 true, label %cond.true.60, label %cond.false.67

cond.true.60:                                     ; preds = %cond.end.55
  %37 = load i32, i32* %face_id, align 4
  %add61 = add i32 %37, 0
  %38 = load %struct.frame*, %struct.frame** %f, align 8
  %face_cache62 = getelementptr inbounds %struct.frame, %struct.frame* %38, i32 0, i32 20
  %39 = load %struct.face_cache*, %struct.face_cache** %face_cache62, align 8
  %used63 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %39, i32 0, i32 4
  %40 = load i32, i32* %used63, align 4
  %add64 = add i32 %40, 0
  %cmp65 = icmp ult i32 %add61, %add64
  br i1 %cmp65, label %cond.true.76, label %cond.false.81

cond.false.67:                                    ; preds = %cond.end.55
  %41 = load i32, i32* %face_id, align 4
  %conv68 = sext i32 %41 to i64
  %add69 = add i64 %conv68, 0
  %42 = load %struct.frame*, %struct.frame** %f, align 8
  %face_cache70 = getelementptr inbounds %struct.frame, %struct.frame* %42, i32 0, i32 20
  %43 = load %struct.face_cache*, %struct.face_cache** %face_cache70, align 8
  %used71 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %43, i32 0, i32 4
  %44 = load i32, i32* %used71, align 4
  %conv72 = sext i32 %44 to i64
  %add73 = add i64 %conv72, 0
  %cmp74 = icmp ult i64 %add69, %add73
  br i1 %cmp74, label %cond.true.76, label %cond.false.81

cond.true.76:                                     ; preds = %cond.false.67, %cond.true.60
  %45 = load i32, i32* %face_id, align 4
  %idxprom77 = sext i32 %45 to i64
  %46 = load %struct.frame*, %struct.frame** %f, align 8
  %face_cache78 = getelementptr inbounds %struct.frame, %struct.frame* %46, i32 0, i32 20
  %47 = load %struct.face_cache*, %struct.face_cache** %face_cache78, align 8
  %faces_by_id79 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %47, i32 0, i32 2
  %48 = load %struct.face**, %struct.face*** %faces_by_id79, align 8
  %arrayidx80 = getelementptr inbounds %struct.face*, %struct.face** %48, i64 %idxprom77
  %49 = load %struct.face*, %struct.face** %arrayidx80, align 8
  br label %cond.end.82

cond.false.81:                                    ; preds = %cond.false.67, %cond.true.60
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.false.81, %cond.true.76
  %cond83 = phi %struct.face* [ %49, %cond.true.76 ], [ null, %cond.false.81 ]
  store %struct.face* %cond83, %struct.face** %fface, align 8
  br label %if.end.84

if.end.84:                                        ; preds = %cond.end.82, %land.lhs.true.42, %if.end.39
  %50 = load %struct.face*, %struct.face** %fface, align 8
  %font = getelementptr inbounds %struct.face, %struct.face* %50, i32 0, i32 10
  %51 = load %struct.font*, %struct.font** %font, align 8
  %tobool85 = icmp ne %struct.font* %51, null
  br i1 %tobool85, label %cond.true.86, label %cond.false.89

cond.true.86:                                     ; preds = %if.end.84
  %52 = load %struct.face*, %struct.face** %fface, align 8
  %font87 = getelementptr inbounds %struct.face, %struct.face* %52, i32 0, i32 10
  %53 = load %struct.font*, %struct.font** %font87, align 8
  %props = getelementptr inbounds %struct.font, %struct.font* %53, i32 0, i32 1
  %arrayidx88 = getelementptr inbounds [17 x i64], [17 x i64]* %props, i32 0, i64 14
  %54 = load i64, i64* %arrayidx88, align 8
  br label %cond.end.91

cond.false.89:                                    ; preds = %if.end.84
  %call90 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.91

cond.end.91:                                      ; preds = %cond.false.89, %cond.true.86
  %cond92 = phi i64 [ %54, %cond.true.86 ], [ %call90, %cond.false.89 ]
  store i64 %cond92, i64* %retval
  br label %return

return:                                           ; preds = %cond.end.91, %if.then.37, %if.end.22
  %55 = load i64, i64* %retval
  ret i64 %55
}

declare zeroext i1 @NATNUMP(i64) #1

declare i32 @face_for_char(%struct.frame*, %struct.face*, i32, i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Finternal_lisp_face_equal_p(i64 %face1, i64 %face2, i64 %frame) #0 {
entry:
  %face1.addr = alloca i64, align 8
  %face2.addr = alloca i64, align 8
  %frame.addr = alloca i64, align 8
  %equal_p = alloca i8, align 1
  %f = alloca %struct.frame*, align 8
  %lface1 = alloca i64, align 8
  %lface2 = alloca i64, align 8
  store i64 %face1, i64* %face1.addr, align 8
  store i64 %face2, i64* %face2.addr, align 8
  store i64 %frame, i64* %frame.addr, align 8
  %0 = load i64, i64* %frame.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 901)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i64, i64* %frame.addr, align 8
  %call1 = call %struct.frame* @decode_live_frame(i64 %1)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.frame* [ null, %cond.true ], [ %call1, %cond.false ]
  store %struct.frame* %cond, %struct.frame** %f, align 8
  %2 = load %struct.frame*, %struct.frame** %f, align 8
  %3 = load i64, i64* %face1.addr, align 8
  %call2 = call i64 @lface_from_face_name(%struct.frame* %2, i64 %3, i1 zeroext true)
  store i64 %call2, i64* %lface1, align 8
  %4 = load %struct.frame*, %struct.frame** %f, align 8
  %5 = load i64, i64* %face2.addr, align 8
  %call3 = call i64 @lface_from_face_name(%struct.frame* %4, i64 %5, i1 zeroext true)
  store i64 %call3, i64* %lface2, align 8
  %6 = load i64, i64* %lface1, align 8
  %call4 = call %struct.Lisp_Vector* @XVECTOR(i64 %6)
  %contents = getelementptr inbounds %struct.Lisp_Vector, %struct.Lisp_Vector* %call4, i32 0, i32 1
  %arraydecay = getelementptr inbounds [0 x i64], [0 x i64]* %contents, i32 0, i32 0
  %7 = load i64, i64* %lface2, align 8
  %call5 = call %struct.Lisp_Vector* @XVECTOR(i64 %7)
  %contents6 = getelementptr inbounds %struct.Lisp_Vector, %struct.Lisp_Vector* %call5, i32 0, i32 1
  %arraydecay7 = getelementptr inbounds [0 x i64], [0 x i64]* %contents6, i32 0, i32 0
  %call8 = call zeroext i1 @lface_equal_p(i64* %arraydecay, i64* %arraydecay7)
  %frombool = zext i1 %call8 to i8
  store i8 %frombool, i8* %equal_p, align 1
  %8 = load i8, i8* %equal_p, align 1
  %tobool = trunc i8 %8 to i1
  br i1 %tobool, label %cond.true.9, label %cond.false.11

cond.true.9:                                      ; preds = %cond.end
  %call10 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end.13

cond.false.11:                                    ; preds = %cond.end
  %call12 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.11, %cond.true.9
  %cond14 = phi i64 [ %call10, %cond.true.9 ], [ %call12, %cond.false.11 ]
  ret i64 %cond14
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @lface_equal_p(i64* %v1, i64* %v2) #0 {
entry:
  %v1.addr = alloca i64*, align 8
  %v2.addr = alloca i64*, align 8
  %i = alloca i32, align 4
  %equal_p = alloca i8, align 1
  store i64* %v1, i64** %v1.addr, align 8
  store i64* %v2, i64** %v2.addr, align 8
  store i8 1, i8* %equal_p, align 1
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 19
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %1 = load i8, i8* %equal_p, align 1
  %tobool = trunc i8 %1 to i1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %2 = phi i1 [ false, %for.cond ], [ %tobool, %land.rhs ]
  br i1 %2, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i64*, i64** %v1.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %4, i64 %idxprom
  %5 = load i64, i64* %arrayidx, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load i64*, i64** %v2.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, i64* %7, i64 %idxprom1
  %8 = load i64, i64* %arrayidx2, align 8
  %call = call zeroext i1 @face_attr_equal_p(i64 %5, i64 %8)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %equal_p, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %10 = load i8, i8* %equal_p, align 1
  %tobool3 = trunc i8 %10 to i1
  ret i1 %tobool3
}

; Function Attrs: nounwind uwtable
define i64 @Finternal_lisp_face_empty_p(i64 %face, i64 %frame) #0 {
entry:
  %face.addr = alloca i64, align 8
  %frame.addr = alloca i64, align 8
  %f = alloca %struct.frame*, align 8
  %lface = alloca i64, align 8
  %i = alloca i32, align 4
  store i64 %face, i64* %face.addr, align 8
  store i64 %frame, i64* %frame.addr, align 8
  %0 = load i64, i64* %frame.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 901)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i64, i64* %frame.addr, align 8
  %call1 = call %struct.frame* @decode_live_frame(i64 %1)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.frame* [ null, %cond.true ], [ %call1, %cond.false ]
  store %struct.frame* %cond, %struct.frame** %f, align 8
  %2 = load %struct.frame*, %struct.frame** %f, align 8
  %3 = load i64, i64* %face.addr, align 8
  %call2 = call i64 @lface_from_face_name(%struct.frame* %2, i64 %3, i1 zeroext true)
  store i64 %call2, i64* %lface, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %4 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %4, 19
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i64, i64* %lface, align 8
  %6 = load i32, i32* %i, align 4
  %conv = sext i32 %6 to i64
  %call4 = call i64 @AREF(i64 %5, i64 %conv)
  %call5 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp6 = icmp eq i64 %call4, %call5
  br i1 %cmp6, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %8 = load i32, i32* %i, align 4
  %cmp8 = icmp eq i32 %8, 19
  br i1 %cmp8, label %cond.true.10, label %cond.false.12

cond.true.10:                                     ; preds = %for.end
  %call11 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end.14

cond.false.12:                                    ; preds = %for.end
  %call13 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.12, %cond.true.10
  %cond15 = phi i64 [ %call11, %cond.true.10 ], [ %call13, %cond.false.12 ]
  ret i64 %cond15
}

; Function Attrs: nounwind uwtable
define i64 @Fframe_face_alist(i64 %frame) #0 {
entry:
  %frame.addr = alloca i64, align 8
  store i64 %frame, i64* %frame.addr, align 8
  %0 = load i64, i64* %frame.addr, align 8
  %call = call %struct.frame* @decode_live_frame(i64 %0)
  %face_alist = getelementptr inbounds %struct.frame, %struct.frame* %call, i32 0, i32 12
  %1 = load i64, i64* %face_alist, align 8
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define void @prepare_face_for_display(%struct.frame* %f, %struct.face* %face) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %face.addr = alloca %struct.face*, align 8
  %xgcv = alloca %struct.XGCValues, align 8
  %mask = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store %struct.face* %face, %struct.face** %face.addr, align 8
  %0 = load %struct.face*, %struct.face** %face.addr, align 8
  %gc = getelementptr inbounds %struct.face, %struct.face* %0, i32 0, i32 2
  %1 = load %struct._XGC*, %struct._XGC** %gc, align 8
  %cmp = icmp eq %struct._XGC* %1, null
  br i1 %cmp, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  store i64 65548, i64* %mask, align 8
  %2 = load %struct.face*, %struct.face** %face.addr, align 8
  %foreground = getelementptr inbounds %struct.face, %struct.face* %2, i32 0, i32 4
  %3 = load i64, i64* %foreground, align 8
  %foreground1 = getelementptr inbounds %struct.XGCValues, %struct.XGCValues* %xgcv, i32 0, i32 2
  store i64 %3, i64* %foreground1, align 8
  %4 = load %struct.face*, %struct.face** %face.addr, align 8
  %background = getelementptr inbounds %struct.face, %struct.face* %4, i32 0, i32 5
  %5 = load i64, i64* %background, align 8
  %background2 = getelementptr inbounds %struct.XGCValues, %struct.XGCValues* %xgcv, i32 0, i32 3
  store i64 %5, i64* %background2, align 8
  %graphics_exposures = getelementptr inbounds %struct.XGCValues, %struct.XGCValues* %xgcv, i32 0, i32 17
  store i32 0, i32* %graphics_exposures, align 4
  call void @block_input()
  %6 = load %struct.face*, %struct.face** %face.addr, align 8
  %stipple = getelementptr inbounds %struct.face, %struct.face* %6, i32 0, i32 3
  %7 = load i64, i64* %stipple, align 8
  %tobool = icmp ne i64 %7, 0
  br i1 %tobool, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %fill_style = getelementptr inbounds %struct.XGCValues, %struct.XGCValues* %xgcv, i32 0, i32 8
  store i32 3, i32* %fill_style, align 4
  %8 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %9 = load %struct.face*, %struct.face** %face.addr, align 8
  %stipple4 = getelementptr inbounds %struct.face, %struct.face* %9, i32 0, i32 3
  %10 = load i64, i64* %stipple4, align 8
  %call = call i64 @x_bitmap_pixmap(%struct.frame* %8, i64 %10)
  %stipple5 = getelementptr inbounds %struct.XGCValues, %struct.XGCValues* %xgcv, i32 0, i32 12
  store i64 %call, i64* %stipple5, align 8
  %11 = load i64, i64* %mask, align 8
  %or = or i64 %11, 2304
  store i64 %or, i64* %mask, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %12 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %13 = load i64, i64* %mask, align 8
  %call6 = call %struct._XGC* @x_create_gc(%struct.frame* %12, i64 %13, %struct.XGCValues* %xgcv)
  %14 = load %struct.face*, %struct.face** %face.addr, align 8
  %gc7 = getelementptr inbounds %struct.face, %struct.face* %14, i32 0, i32 2
  store %struct._XGC* %call6, %struct._XGC** %gc7, align 8
  %15 = load %struct.face*, %struct.face** %face.addr, align 8
  %font = getelementptr inbounds %struct.face, %struct.face* %15, i32 0, i32 10
  %16 = load %struct.font*, %struct.font** %font, align 8
  %tobool8 = icmp ne %struct.font* %16, null
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  %17 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %18 = load %struct.face*, %struct.face** %face.addr, align 8
  call void @font_prepare_for_face(%struct.frame* %17, %struct.face* %18)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end
  call void @unblock_input()
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %entry
  ret void
}

declare i64 @x_bitmap_pixmap(%struct.frame*, i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._XGC* @x_create_gc(%struct.frame* %f, i64 %mask, %struct.XGCValues* %xgcv) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %mask.addr = alloca i64, align 8
  %xgcv.addr = alloca %struct.XGCValues*, align 8
  %gc = alloca %struct._XGC*, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %mask, i64* %mask.addr, align 8
  store %struct.XGCValues* %xgcv, %struct.XGCValues** %xgcv.addr, align 8
  call void @block_input()
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
  %window_desc = getelementptr inbounds %struct.x_output, %struct.x_output* %5, i32 0, i32 9
  %6 = load i64, i64* %window_desc, align 8
  %7 = load i64, i64* %mask.addr, align 8
  %8 = load %struct.XGCValues*, %struct.XGCValues** %xgcv.addr, align 8
  %call = call %struct._XGC* @XCreateGC(%struct._XDisplay* %3, i64 %6, i64 %7, %struct.XGCValues* %8)
  store %struct._XGC* %call, %struct._XGC** %gc, align 8
  call void @unblock_input()
  %9 = load %struct._XGC*, %struct._XGC** %gc, align 8
  ret %struct._XGC* %9
}

declare void @font_prepare_for_face(%struct.frame*, %struct.face*) #1

; Function Attrs: nounwind uwtable
define i64 @Fcolor_distance(i64 %color1, i64 %color2, i64 %frame) #0 {
entry:
  %color1.addr = alloca i64, align 8
  %color2.addr = alloca i64, align 8
  %frame.addr = alloca i64, align 8
  %f = alloca %struct.frame*, align 8
  %cdef1 = alloca %struct.XColor, align 8
  %cdef2 = alloca %struct.XColor, align 8
  store i64 %color1, i64* %color1.addr, align 8
  store i64 %color2, i64* %color2.addr, align 8
  store i64 %frame, i64* %frame.addr, align 8
  %0 = load i64, i64* %frame.addr, align 8
  %call = call %struct.frame* @decode_live_frame(i64 %0)
  store %struct.frame* %call, %struct.frame** %f, align 8
  %1 = load i64, i64* %color1.addr, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %land.lhs.true, label %land.lhs.true.4

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, i64* %color1.addr, align 8
  %call2 = call zeroext i1 @parse_rgb_list(i64 %2, %struct.XColor* %cdef1)
  br i1 %call2, label %if.end, label %land.lhs.true.4

land.lhs.true.4:                                  ; preds = %land.lhs.true, %entry
  %3 = load i64, i64* %color1.addr, align 8
  %call5 = call zeroext i1 @STRINGP(i64 %3)
  br i1 %call5, label %land.lhs.true.7, label %if.then

land.lhs.true.7:                                  ; preds = %land.lhs.true.4
  %4 = load %struct.frame*, %struct.frame** %f, align 8
  %5 = load i64, i64* %color1.addr, align 8
  %call8 = call i8* @SSDATA(i64 %5)
  %call9 = call zeroext i1 @defined_color(%struct.frame* %4, i8* %call8, %struct.XColor* %cdef1, i1 zeroext false)
  br i1 %call9, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.7, %land.lhs.true.4
  %6 = load i64, i64* %color1.addr, align 8
  call void @signal_error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i64 %6) #6
  unreachable

if.end:                                           ; preds = %land.lhs.true.7, %land.lhs.true
  %7 = load i64, i64* %color2.addr, align 8
  %and11 = and i64 %7, 7
  %conv12 = trunc i64 %and11 to i32
  %cmp13 = icmp eq i32 %conv12, 3
  br i1 %cmp13, label %land.lhs.true.15, label %land.lhs.true.18

land.lhs.true.15:                                 ; preds = %if.end
  %8 = load i64, i64* %color2.addr, align 8
  %call16 = call zeroext i1 @parse_rgb_list(i64 %8, %struct.XColor* %cdef2)
  br i1 %call16, label %if.end.26, label %land.lhs.true.18

land.lhs.true.18:                                 ; preds = %land.lhs.true.15, %if.end
  %9 = load i64, i64* %color2.addr, align 8
  %call19 = call zeroext i1 @STRINGP(i64 %9)
  br i1 %call19, label %land.lhs.true.21, label %if.then.25

land.lhs.true.21:                                 ; preds = %land.lhs.true.18
  %10 = load %struct.frame*, %struct.frame** %f, align 8
  %11 = load i64, i64* %color2.addr, align 8
  %call22 = call i8* @SSDATA(i64 %11)
  %call23 = call zeroext i1 @defined_color(%struct.frame* %10, i8* %call22, %struct.XColor* %cdef2, i1 zeroext false)
  br i1 %call23, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %land.lhs.true.21, %land.lhs.true.18
  %12 = load i64, i64* %color2.addr, align 8
  call void @signal_error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i64 %12) #6
  unreachable

if.end.26:                                        ; preds = %land.lhs.true.21, %land.lhs.true.15
  %call27 = call i32 @color_distance(%struct.XColor* %cdef1, %struct.XColor* %cdef2)
  %conv28 = sext i32 %call27 to i64
  %shl = shl i64 %conv28, 2
  %add = add i64 %shl, 2
  ret i64 %add
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @parse_rgb_list(i64 %rgb_list, %struct.XColor* %color) #0 {
entry:
  %retval = alloca i1, align 1
  %rgb_list.addr = alloca i64, align 8
  %color.addr = alloca %struct.XColor*, align 8
  store i64 %rgb_list, i64* %rgb_list.addr, align 8
  store %struct.XColor* %color, %struct.XColor** %color.addr, align 8
  %0 = load i64, i64* %rgb_list.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %rgb_list.addr, align 8
  %sub = sub nsw i64 %1, 3
  %2 = inttoptr i64 %sub to i8*
  %3 = bitcast i8* %2 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %3, i32 0, i32 0
  %4 = load i64, i64* %car, align 8
  %and2 = and i64 %4, 7
  %conv3 = trunc i64 %and2 to i32
  %and4 = and i32 %conv3, -5
  %cmp5 = icmp eq i32 %and4, 2
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %5 = load i64, i64* %rgb_list.addr, align 8
  %sub7 = sub nsw i64 %5, 3
  %6 = inttoptr i64 %sub7 to i8*
  %7 = bitcast i8* %6 to %struct.Lisp_Cons*
  %car8 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %7, i32 0, i32 0
  %8 = load i64, i64* %car8, align 8
  %shr = ashr i64 %8, 2
  %conv9 = trunc i64 %shr to i16
  %9 = load %struct.XColor*, %struct.XColor** %color.addr, align 8
  %red = getelementptr inbounds %struct.XColor, %struct.XColor* %9, i32 0, i32 1
  store i16 %conv9, i16* %red, align 2
  %10 = load i64, i64* %rgb_list.addr, align 8
  %sub10 = sub nsw i64 %10, 3
  %11 = inttoptr i64 %sub10 to i8*
  %12 = bitcast i8* %11 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %12, i32 0, i32 1
  %cdr = bitcast %union.anon.10* %u to i64*
  %13 = load i64, i64* %cdr, align 8
  store i64 %13, i64* %rgb_list.addr, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  store i1 false, i1* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %14 = load i64, i64* %rgb_list.addr, align 8
  %and11 = and i64 %14, 7
  %conv12 = trunc i64 %and11 to i32
  %cmp13 = icmp eq i32 %conv12, 3
  br i1 %cmp13, label %land.lhs.true.15, label %if.else.31

land.lhs.true.15:                                 ; preds = %if.end
  %15 = load i64, i64* %rgb_list.addr, align 8
  %sub16 = sub nsw i64 %15, 3
  %16 = inttoptr i64 %sub16 to i8*
  %17 = bitcast i8* %16 to %struct.Lisp_Cons*
  %car17 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %17, i32 0, i32 0
  %18 = load i64, i64* %car17, align 8
  %and18 = and i64 %18, 7
  %conv19 = trunc i64 %and18 to i32
  %and20 = and i32 %conv19, -5
  %cmp21 = icmp eq i32 %and20, 2
  br i1 %cmp21, label %if.then.23, label %if.else.31

if.then.23:                                       ; preds = %land.lhs.true.15
  %19 = load i64, i64* %rgb_list.addr, align 8
  %sub24 = sub nsw i64 %19, 3
  %20 = inttoptr i64 %sub24 to i8*
  %21 = bitcast i8* %20 to %struct.Lisp_Cons*
  %car25 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %21, i32 0, i32 0
  %22 = load i64, i64* %car25, align 8
  %shr26 = ashr i64 %22, 2
  %conv27 = trunc i64 %shr26 to i16
  %23 = load %struct.XColor*, %struct.XColor** %color.addr, align 8
  %green = getelementptr inbounds %struct.XColor, %struct.XColor* %23, i32 0, i32 2
  store i16 %conv27, i16* %green, align 2
  %24 = load i64, i64* %rgb_list.addr, align 8
  %sub28 = sub nsw i64 %24, 3
  %25 = inttoptr i64 %sub28 to i8*
  %26 = bitcast i8* %25 to %struct.Lisp_Cons*
  %u29 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %26, i32 0, i32 1
  %cdr30 = bitcast %union.anon.10* %u29 to i64*
  %27 = load i64, i64* %cdr30, align 8
  store i64 %27, i64* %rgb_list.addr, align 8
  br label %if.end.32

if.else.31:                                       ; preds = %land.lhs.true.15, %if.end
  store i1 false, i1* %retval
  br label %return

if.end.32:                                        ; preds = %if.then.23
  %28 = load i64, i64* %rgb_list.addr, align 8
  %and33 = and i64 %28, 7
  %conv34 = trunc i64 %and33 to i32
  %cmp35 = icmp eq i32 %conv34, 3
  br i1 %cmp35, label %land.lhs.true.37, label %if.else.53

land.lhs.true.37:                                 ; preds = %if.end.32
  %29 = load i64, i64* %rgb_list.addr, align 8
  %sub38 = sub nsw i64 %29, 3
  %30 = inttoptr i64 %sub38 to i8*
  %31 = bitcast i8* %30 to %struct.Lisp_Cons*
  %car39 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %31, i32 0, i32 0
  %32 = load i64, i64* %car39, align 8
  %and40 = and i64 %32, 7
  %conv41 = trunc i64 %and40 to i32
  %and42 = and i32 %conv41, -5
  %cmp43 = icmp eq i32 %and42, 2
  br i1 %cmp43, label %if.then.45, label %if.else.53

if.then.45:                                       ; preds = %land.lhs.true.37
  %33 = load i64, i64* %rgb_list.addr, align 8
  %sub46 = sub nsw i64 %33, 3
  %34 = inttoptr i64 %sub46 to i8*
  %35 = bitcast i8* %34 to %struct.Lisp_Cons*
  %car47 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %35, i32 0, i32 0
  %36 = load i64, i64* %car47, align 8
  %shr48 = ashr i64 %36, 2
  %conv49 = trunc i64 %shr48 to i16
  %37 = load %struct.XColor*, %struct.XColor** %color.addr, align 8
  %blue = getelementptr inbounds %struct.XColor, %struct.XColor* %37, i32 0, i32 3
  store i16 %conv49, i16* %blue, align 2
  %38 = load i64, i64* %rgb_list.addr, align 8
  %sub50 = sub nsw i64 %38, 3
  %39 = inttoptr i64 %sub50 to i8*
  %40 = bitcast i8* %39 to %struct.Lisp_Cons*
  %u51 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %40, i32 0, i32 1
  %cdr52 = bitcast %union.anon.10* %u51 to i64*
  %41 = load i64, i64* %cdr52, align 8
  store i64 %41, i64* %rgb_list.addr, align 8
  br label %if.end.54

if.else.53:                                       ; preds = %land.lhs.true.37, %if.end.32
  store i1 false, i1* %retval
  br label %return

if.end.54:                                        ; preds = %if.then.45
  store i1 true, i1* %retval
  br label %return

return:                                           ; preds = %if.end.54, %if.else.53, %if.else.31, %if.else
  %42 = load i1, i1* %retval
  ret i1 %42
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @defined_color(%struct.frame* %f, i8* %color_name, %struct.XColor* %color_def, i1 zeroext %alloc) #0 {
entry:
  %retval = alloca i1, align 1
  %f.addr = alloca %struct.frame*, align 8
  %color_name.addr = alloca i8*, align 8
  %color_def.addr = alloca %struct.XColor*, align 8
  %alloc.addr = alloca i8, align 1
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i8* %color_name, i8** %color_name.addr, align 8
  store %struct.XColor* %color_def, %struct.XColor** %color_def.addr, align 8
  %frombool = zext i1 %alloc to i8
  store i8 %frombool, i8* %alloc.addr, align 1
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_method = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 26
  %1 = bitcast i48* %output_method to i64*
  %bf.load = load i64, i64* %1, align 8
  %bf.lshr = lshr i64 %bf.load, 23
  %bf.clear = and i64 %bf.lshr, 7
  %bf.cast = trunc i64 %bf.clear to i32
  %cmp = icmp eq i32 %bf.cast, 2
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %3 = load i8*, i8** %color_name.addr, align 8
  %4 = load %struct.XColor*, %struct.XColor** %color_def.addr, align 8
  %5 = load i8, i8* %alloc.addr, align 1
  %tobool = trunc i8 %5 to i1
  %call = call zeroext i1 @tty_defined_color(%struct.frame* %2, i8* %3, %struct.XColor* %4, i1 zeroext %tobool)
  store i1 %call, i1* %retval
  br label %return

if.else:                                          ; preds = %entry
  %6 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_method1 = getelementptr inbounds %struct.frame, %struct.frame* %6, i32 0, i32 26
  %7 = bitcast i48* %output_method1 to i64*
  %bf.load2 = load i64, i64* %7, align 8
  %bf.lshr3 = lshr i64 %bf.load2, 23
  %bf.clear4 = and i64 %bf.lshr3, 7
  %bf.cast5 = trunc i64 %bf.clear4 to i32
  %cmp6 = icmp eq i32 %bf.cast5, 2
  br i1 %cmp6, label %if.then.7, label %if.else.10

if.then.7:                                        ; preds = %if.else
  %8 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %9 = load i8*, i8** %color_name.addr, align 8
  %10 = load %struct.XColor*, %struct.XColor** %color_def.addr, align 8
  %11 = load i8, i8* %alloc.addr, align 1
  %tobool8 = trunc i8 %11 to i1
  %call9 = call zeroext i1 @x_defined_color(%struct.frame* %8, i8* %9, %struct.XColor* %10, i1 zeroext %tobool8)
  store i1 %call9, i1* %retval
  br label %return

if.else.10:                                       ; preds = %if.else
  call void @emacs_abort() #6
  unreachable

return:                                           ; preds = %if.then.7, %if.then
  %12 = load i1, i1* %retval
  ret i1 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @color_distance(%struct.XColor* %x, %struct.XColor* %y) #0 {
entry:
  %x.addr = alloca %struct.XColor*, align 8
  %y.addr = alloca %struct.XColor*, align 8
  %r = alloca i64, align 8
  %g = alloca i64, align 8
  %b = alloca i64, align 8
  %r_mean = alloca i64, align 8
  store %struct.XColor* %x, %struct.XColor** %x.addr, align 8
  store %struct.XColor* %y, %struct.XColor** %y.addr, align 8
  %0 = load %struct.XColor*, %struct.XColor** %x.addr, align 8
  %red = getelementptr inbounds %struct.XColor, %struct.XColor* %0, i32 0, i32 1
  %1 = load i16, i16* %red, align 2
  %conv = zext i16 %1 to i32
  %2 = load %struct.XColor*, %struct.XColor** %y.addr, align 8
  %red1 = getelementptr inbounds %struct.XColor, %struct.XColor* %2, i32 0, i32 1
  %3 = load i16, i16* %red1, align 2
  %conv2 = zext i16 %3 to i32
  %sub = sub nsw i32 %conv, %conv2
  %shr = ashr i32 %sub, 8
  %conv3 = sext i32 %shr to i64
  store i64 %conv3, i64* %r, align 8
  %4 = load %struct.XColor*, %struct.XColor** %x.addr, align 8
  %green = getelementptr inbounds %struct.XColor, %struct.XColor* %4, i32 0, i32 2
  %5 = load i16, i16* %green, align 2
  %conv4 = zext i16 %5 to i32
  %6 = load %struct.XColor*, %struct.XColor** %y.addr, align 8
  %green5 = getelementptr inbounds %struct.XColor, %struct.XColor* %6, i32 0, i32 2
  %7 = load i16, i16* %green5, align 2
  %conv6 = zext i16 %7 to i32
  %sub7 = sub nsw i32 %conv4, %conv6
  %shr8 = ashr i32 %sub7, 8
  %conv9 = sext i32 %shr8 to i64
  store i64 %conv9, i64* %g, align 8
  %8 = load %struct.XColor*, %struct.XColor** %x.addr, align 8
  %blue = getelementptr inbounds %struct.XColor, %struct.XColor* %8, i32 0, i32 3
  %9 = load i16, i16* %blue, align 2
  %conv10 = zext i16 %9 to i32
  %10 = load %struct.XColor*, %struct.XColor** %y.addr, align 8
  %blue11 = getelementptr inbounds %struct.XColor, %struct.XColor* %10, i32 0, i32 3
  %11 = load i16, i16* %blue11, align 2
  %conv12 = zext i16 %11 to i32
  %sub13 = sub nsw i32 %conv10, %conv12
  %shr14 = ashr i32 %sub13, 8
  %conv15 = sext i32 %shr14 to i64
  store i64 %conv15, i64* %b, align 8
  %12 = load %struct.XColor*, %struct.XColor** %x.addr, align 8
  %red16 = getelementptr inbounds %struct.XColor, %struct.XColor* %12, i32 0, i32 1
  %13 = load i16, i16* %red16, align 2
  %conv17 = zext i16 %13 to i32
  %14 = load %struct.XColor*, %struct.XColor** %y.addr, align 8
  %red18 = getelementptr inbounds %struct.XColor, %struct.XColor* %14, i32 0, i32 1
  %15 = load i16, i16* %red18, align 2
  %conv19 = zext i16 %15 to i32
  %add = add nsw i32 %conv17, %conv19
  %shr20 = ashr i32 %add, 9
  %conv21 = sext i32 %shr20 to i64
  store i64 %conv21, i64* %r_mean, align 8
  %16 = load i64, i64* %r_mean, align 8
  %add22 = add nsw i64 512, %16
  %17 = load i64, i64* %r, align 8
  %mul = mul nsw i64 %add22, %17
  %18 = load i64, i64* %r, align 8
  %mul23 = mul nsw i64 %mul, %18
  %shr24 = ashr i64 %mul23, 8
  %19 = load i64, i64* %g, align 8
  %mul25 = mul nsw i64 4, %19
  %20 = load i64, i64* %g, align 8
  %mul26 = mul nsw i64 %mul25, %20
  %add27 = add nsw i64 %shr24, %mul26
  %21 = load i64, i64* %r_mean, align 8
  %sub28 = sub nsw i64 767, %21
  %22 = load i64, i64* %b, align 8
  %mul29 = mul nsw i64 %sub28, %22
  %23 = load i64, i64* %b, align 8
  %mul30 = mul nsw i64 %mul29, %23
  %shr31 = ashr i64 %mul30, 8
  %add32 = add nsw i64 %add27, %shr31
  %conv33 = trunc i64 %add32 to i32
  ret i32 %conv33
}

; Function Attrs: nounwind uwtable
define internal void @free_realized_faces(%struct.face_cache* %c) #0 {
entry:
  %c.addr = alloca %struct.face_cache*, align 8
  %i = alloca i32, align 4
  %size = alloca i32, align 4
  %f = alloca %struct.frame*, align 8
  store %struct.face_cache* %c, %struct.face_cache** %c.addr, align 8
  %0 = load %struct.face_cache*, %struct.face_cache** %c.addr, align 8
  %tobool = icmp ne %struct.face_cache* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.face_cache*, %struct.face_cache** %c.addr, align 8
  %used = getelementptr inbounds %struct.face_cache, %struct.face_cache* %1, i32 0, i32 4
  %2 = load i32, i32* %used, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.then, label %if.end.9

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.face_cache*, %struct.face_cache** %c.addr, align 8
  %f2 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %3, i32 0, i32 1
  %4 = load %struct.frame*, %struct.frame** %f2, align 8
  store %struct.frame* %4, %struct.frame** %f, align 8
  call void @block_input()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.face_cache*, %struct.face_cache** %c.addr, align 8
  %used3 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %6, i32 0, i32 4
  %7 = load i32, i32* %used3, align 4
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.frame*, %struct.frame** %f, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.face_cache*, %struct.face_cache** %c.addr, align 8
  %faces_by_id = getelementptr inbounds %struct.face_cache, %struct.face_cache* %10, i32 0, i32 2
  %11 = load %struct.face**, %struct.face*** %faces_by_id, align 8
  %arrayidx = getelementptr inbounds %struct.face*, %struct.face** %11, i64 %idxprom
  %12 = load %struct.face*, %struct.face** %arrayidx, align 8
  call void @free_realized_face(%struct.frame* %8, %struct.face* %12)
  %13 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %13 to i64
  %14 = load %struct.face_cache*, %struct.face_cache** %c.addr, align 8
  %faces_by_id5 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %14, i32 0, i32 2
  %15 = load %struct.face**, %struct.face*** %faces_by_id5, align 8
  %arrayidx6 = getelementptr inbounds %struct.face*, %struct.face** %15, i64 %idxprom4
  store %struct.face* null, %struct.face** %arrayidx6, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @forget_escape_and_glyphless_faces()
  %17 = load %struct.face_cache*, %struct.face_cache** %c.addr, align 8
  %used7 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %17, i32 0, i32 4
  store i32 0, i32* %used7, align 4
  store i32 8008, i32* %size, align 4
  %18 = load %struct.face_cache*, %struct.face_cache** %c.addr, align 8
  %buckets = getelementptr inbounds %struct.face_cache, %struct.face_cache* %18, i32 0, i32 0
  %19 = load %struct.face**, %struct.face*** %buckets, align 8
  %20 = bitcast %struct.face** %19 to i8*
  %21 = load i32, i32* %size, align 4
  %conv = sext i32 %21 to i64
  call void @llvm.memset.p0i8.i64(i8* %20, i8 0, i64 %conv, i32 8, i1 false)
  %22 = load %struct.frame*, %struct.frame** %f, align 8
  %root_window = getelementptr inbounds %struct.frame, %struct.frame* %22, i32 0, i32 5
  %23 = load i64, i64* %root_window, align 8
  %call = call zeroext i1 @WINDOWP(i64 %23)
  br i1 %call, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %for.end
  %24 = load %struct.frame*, %struct.frame** %f, align 8
  call void @clear_current_matrices(%struct.frame* %24)
  %25 = load %struct.frame*, %struct.frame** %f, align 8
  call void @fset_redisplay(%struct.frame* %25)
  br label %if.end

if.end:                                           ; preds = %if.then.8, %for.end
  call void @unblock_input()
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @face_for_font(%struct.frame* %f, i64 %font_object, %struct.face* %base_face) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct.frame*, align 8
  %font_object.addr = alloca i64, align 8
  %base_face.addr = alloca %struct.face*, align 8
  %cache = alloca %struct.face_cache*, align 8
  %hash = alloca i32, align 4
  %i = alloca i32, align 4
  %face = alloca %struct.face*, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %font_object, i64* %font_object.addr, align 8
  store %struct.face* %base_face, %struct.face** %base_face.addr, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %face_cache = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 20
  %1 = load %struct.face_cache*, %struct.face_cache** %face_cache, align 8
  store %struct.face_cache* %1, %struct.face_cache** %cache, align 8
  %2 = load %struct.face*, %struct.face** %base_face.addr, align 8
  %ascii_face = getelementptr inbounds %struct.face, %struct.face* %2, i32 0, i32 17
  %3 = load %struct.face*, %struct.face** %ascii_face, align 8
  store %struct.face* %3, %struct.face** %base_face.addr, align 8
  %4 = load %struct.face*, %struct.face** %base_face.addr, align 8
  %lface = getelementptr inbounds %struct.face, %struct.face* %4, i32 0, i32 0
  %arraydecay = getelementptr inbounds [19 x i64], [19 x i64]* %lface, i32 0, i32 0
  %call = call i32 @lface_hash(i64* %arraydecay)
  store i32 %call, i32* %hash, align 4
  %5 = load i32, i32* %hash, align 4
  %rem = urem i32 %5, 1001
  store i32 %rem, i32* %i, align 4
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.face_cache*, %struct.face_cache** %cache, align 8
  %buckets = getelementptr inbounds %struct.face_cache, %struct.face_cache* %7, i32 0, i32 0
  %8 = load %struct.face**, %struct.face*** %buckets, align 8
  %arrayidx = getelementptr inbounds %struct.face*, %struct.face** %8, i64 %idxprom
  %9 = load %struct.face*, %struct.face** %arrayidx, align 8
  store %struct.face* %9, %struct.face** %face, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load %struct.face*, %struct.face** %face, align 8
  %tobool = icmp ne %struct.face* %10, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.face*, %struct.face** %face, align 8
  %ascii_face1 = getelementptr inbounds %struct.face, %struct.face* %11, i32 0, i32 17
  %12 = load %struct.face*, %struct.face** %ascii_face1, align 8
  %13 = load %struct.face*, %struct.face** %face, align 8
  %cmp = icmp eq %struct.face* %12, %13
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %14 = load %struct.face*, %struct.face** %face, align 8
  %ascii_face2 = getelementptr inbounds %struct.face, %struct.face* %14, i32 0, i32 17
  %15 = load %struct.face*, %struct.face** %ascii_face2, align 8
  %16 = load %struct.face*, %struct.face** %base_face.addr, align 8
  %cmp3 = icmp eq %struct.face* %15, %16
  br i1 %cmp3, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %if.end
  %17 = load %struct.face*, %struct.face** %face, align 8
  %font = getelementptr inbounds %struct.face, %struct.face* %17, i32 0, i32 10
  %18 = load %struct.font*, %struct.font** %font, align 8
  %19 = load i64, i64* %font_object.addr, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp5 = icmp eq i64 %19, %call4
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true
  %20 = load i64, i64* %font_object.addr, align 8
  %call6 = call %struct.font* @XFONT_OBJECT(i64 %20)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.font* [ null, %cond.true ], [ %call6, %cond.false ]
  %cmp7 = icmp eq %struct.font* %18, %cond
  br i1 %cmp7, label %land.lhs.true.8, label %if.end.15

land.lhs.true.8:                                  ; preds = %cond.end
  %21 = load %struct.face*, %struct.face** %face, align 8
  %lface9 = getelementptr inbounds %struct.face, %struct.face* %21, i32 0, i32 0
  %arraydecay10 = getelementptr inbounds [19 x i64], [19 x i64]* %lface9, i32 0, i32 0
  %22 = load %struct.face*, %struct.face** %base_face.addr, align 8
  %lface11 = getelementptr inbounds %struct.face, %struct.face* %22, i32 0, i32 0
  %arraydecay12 = getelementptr inbounds [19 x i64], [19 x i64]* %lface11, i32 0, i32 0
  %call13 = call zeroext i1 @lface_equal_p(i64* %arraydecay10, i64* %arraydecay12)
  br i1 %call13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %land.lhs.true.8
  %23 = load %struct.face*, %struct.face** %face, align 8
  %id = getelementptr inbounds %struct.face, %struct.face* %23, i32 0, i32 1
  %24 = load i32, i32* %id, align 4
  store i32 %24, i32* %retval
  br label %return

if.end.15:                                        ; preds = %land.lhs.true.8, %cond.end, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.15, %if.then
  %25 = load %struct.face*, %struct.face** %face, align 8
  %next = getelementptr inbounds %struct.face, %struct.face* %25, i32 0, i32 15
  %26 = load %struct.face*, %struct.face** %next, align 8
  store %struct.face* %26, %struct.face** %face, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %28 = load i64, i64* %font_object.addr, align 8
  %29 = load %struct.face*, %struct.face** %base_face.addr, align 8
  %call16 = call %struct.face* @realize_non_ascii_face(%struct.frame* %27, i64 %28, %struct.face* %29)
  store %struct.face* %call16, %struct.face** %face, align 8
  %30 = load %struct.face*, %struct.face** %face, align 8
  %id17 = getelementptr inbounds %struct.face, %struct.face* %30, i32 0, i32 1
  %31 = load i32, i32* %id17, align 4
  store i32 %31, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.14
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @lface_hash(i64* %v) #0 {
entry:
  %v.addr = alloca i64*, align 8
  store i64* %v, i64** %v.addr, align 8
  %0 = load i64*, i64** %v.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %0, i64 1
  %1 = load i64, i64* %arrayidx, align 8
  %call = call i32 @hash_string_case_insensitive(i64 %1)
  %2 = load i64*, i64** %v.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, i64* %2, i64 2
  %3 = load i64, i64* %arrayidx1, align 8
  %call2 = call i32 @hash_string_case_insensitive(i64 %3)
  %xor = xor i32 %call, %call2
  %4 = load i64*, i64** %v.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, i64* %4, i64 9
  %5 = load i64, i64* %arrayidx3, align 8
  %call4 = call i32 @hash_string_case_insensitive(i64 %5)
  %xor5 = xor i32 %xor, %call4
  %6 = load i64*, i64** %v.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, i64* %6, i64 10
  %7 = load i64, i64* %arrayidx6, align 8
  %call7 = call i32 @hash_string_case_insensitive(i64 %7)
  %xor8 = xor i32 %xor5, %call7
  %conv = zext i32 %xor8 to i64
  %8 = load i64*, i64** %v.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, i64* %8, i64 5
  %9 = load i64, i64* %arrayidx9, align 8
  %call10 = call i64 @XUINT(i64 %9)
  %xor11 = xor i64 %conv, %call10
  %10 = load i64*, i64** %v.addr, align 8
  %arrayidx12 = getelementptr inbounds i64, i64* %10, i64 6
  %11 = load i64, i64* %arrayidx12, align 8
  %call13 = call i64 @XUINT(i64 %11)
  %xor14 = xor i64 %xor11, %call13
  %12 = load i64*, i64** %v.addr, align 8
  %arrayidx15 = getelementptr inbounds i64, i64* %12, i64 3
  %13 = load i64, i64* %arrayidx15, align 8
  %call16 = call i64 @XUINT(i64 %13)
  %xor17 = xor i64 %xor14, %call16
  %14 = load i64*, i64** %v.addr, align 8
  %arrayidx18 = getelementptr inbounds i64, i64* %14, i64 4
  %15 = load i64, i64* %arrayidx18, align 8
  %call19 = call i64 @XUINT(i64 %15)
  %xor20 = xor i64 %xor17, %call19
  %conv21 = trunc i64 %xor20 to i32
  ret i32 %conv21
}

declare %struct.font* @XFONT_OBJECT(i64) #1

; Function Attrs: nounwind uwtable
define internal %struct.face* @realize_non_ascii_face(%struct.frame* %f, i64 %font_object, %struct.face* %base_face) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %font_object.addr = alloca i64, align 8
  %base_face.addr = alloca %struct.face*, align 8
  %cache = alloca %struct.face_cache*, align 8
  %face = alloca %struct.face*, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %font_object, i64* %font_object.addr, align 8
  store %struct.face* %base_face, %struct.face** %base_face.addr, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %face_cache = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 20
  %1 = load %struct.face_cache*, %struct.face_cache** %face_cache, align 8
  store %struct.face_cache* %1, %struct.face_cache** %cache, align 8
  %call = call noalias i8* @xmalloc(i64 280)
  %2 = bitcast i8* %call to %struct.face*
  store %struct.face* %2, %struct.face** %face, align 8
  %3 = load %struct.face*, %struct.face** %face, align 8
  %4 = load %struct.face*, %struct.face** %base_face.addr, align 8
  %5 = bitcast %struct.face* %3 to i8*
  %6 = bitcast %struct.face* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 280, i32 8, i1 false)
  %7 = load %struct.face*, %struct.face** %face, align 8
  %gc = getelementptr inbounds %struct.face, %struct.face* %7, i32 0, i32 2
  store %struct._XGC* null, %struct._XGC** %gc, align 8
  %8 = load i64, i64* %font_object.addr, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %8, %call1
  br i1 %cmp, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %9 = load %struct.face*, %struct.face** %face, align 8
  %lface = getelementptr inbounds %struct.face, %struct.face* %9, i32 0, i32 0
  %arrayidx = getelementptr inbounds [19 x i64], [19 x i64]* %lface, i32 0, i64 5
  %10 = load i64, i64* %arrayidx, align 8
  %call2 = call i32 @font_style_to_value(i32 5, i64 %10, i1 zeroext false)
  %shr = ashr i32 %call2, 8
  %cmp3 = icmp sgt i32 %shr, 100
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %11 = load i64, i64* %font_object.addr, align 8
  %call4 = call i64 @AREF(i64 %11, i64 5)
  %and = and i64 %call4, 7
  %conv = trunc i64 %and to i32
  %and5 = and i32 %conv, -5
  %cmp6 = icmp eq i32 %and5, 2
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.rhs
  %12 = load i64, i64* %font_object.addr, align 8
  %call8 = call i64 @AREF(i64 %12, i64 5)
  %shr9 = ashr i64 %call8, 2
  %shr10 = ashr i64 %shr9, 8
  br label %cond.end

cond.false:                                       ; preds = %land.rhs
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %shr10, %cond.true ], [ -1, %cond.false ]
  %cmp11 = icmp sle i64 %cond, 100
  br label %land.end

land.end:                                         ; preds = %cond.end, %land.lhs.true, %entry
  %13 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp11, %cond.end ]
  %14 = load %struct.face*, %struct.face** %face, align 8
  %overstrike = getelementptr inbounds %struct.face, %struct.face* %14, i32 0, i32 13
  %15 = bitcast i24* %overstrike to i32*
  %16 = zext i1 %13 to i32
  %bf.load = load i32, i32* %15, align 8
  %bf.shl = shl i32 %16, 18
  %bf.clear = and i32 %bf.load, -262145
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, i32* %15, align 8
  %bf.result.cast = trunc i32 %16 to i8
  %tobool = trunc i8 %bf.result.cast to i1
  %17 = load %struct.face*, %struct.face** %face, align 8
  %colors_copied_bitwise_p = getelementptr inbounds %struct.face, %struct.face* %17, i32 0, i32 13
  %18 = bitcast i24* %colors_copied_bitwise_p to i32*
  %bf.load13 = load i32, i32* %18, align 8
  %bf.clear14 = and i32 %bf.load13, -131073
  %bf.set15 = or i32 %bf.clear14, 131072
  store i32 %bf.set15, i32* %18, align 8
  %19 = load i64, i64* %font_object.addr, align 8
  %call16 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp17 = icmp eq i64 %19, %call16
  br i1 %cmp17, label %cond.true.19, label %cond.false.20

cond.true.19:                                     ; preds = %land.end
  br label %cond.end.22

cond.false.20:                                    ; preds = %land.end
  %20 = load i64, i64* %font_object.addr, align 8
  %call21 = call %struct.font* @XFONT_OBJECT(i64 %20)
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.20, %cond.true.19
  %cond23 = phi %struct.font* [ null, %cond.true.19 ], [ %call21, %cond.false.20 ]
  %21 = load %struct.face*, %struct.face** %face, align 8
  %font = getelementptr inbounds %struct.face, %struct.face* %21, i32 0, i32 10
  store %struct.font* %cond23, %struct.font** %font, align 8
  %22 = load %struct.face*, %struct.face** %face, align 8
  %gc24 = getelementptr inbounds %struct.face, %struct.face* %22, i32 0, i32 2
  store %struct._XGC* null, %struct._XGC** %gc24, align 8
  %23 = load %struct.face_cache*, %struct.face_cache** %cache, align 8
  %24 = load %struct.face*, %struct.face** %face, align 8
  %25 = load %struct.face*, %struct.face** %face, align 8
  %hash = getelementptr inbounds %struct.face, %struct.face* %25, i32 0, i32 14
  %26 = load i32, i32* %hash, align 4
  call void @cache_face(%struct.face_cache* %23, %struct.face* %24, i32 %26)
  %27 = load %struct.face*, %struct.face** %face, align 8
  ret %struct.face* %27
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @get_lface_attributes(%struct.frame* %f, i64 %face_name, i64* %attrs, i1 zeroext %signal_p, %struct.named_merge_point* %named_merge_points) #0 {
entry:
  %retval = alloca i1, align 1
  %f.addr = alloca %struct.frame*, align 8
  %face_name.addr = alloca i64, align 8
  %attrs.addr = alloca i64*, align 8
  %signal_p.addr = alloca i8, align 1
  %named_merge_points.addr = alloca %struct.named_merge_point*, align 8
  %face_remapping = alloca i64, align 8
  %named_merge_point = alloca %struct.named_merge_point, align 8
  %i = alloca i32, align 4
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %face_name, i64* %face_name.addr, align 8
  store i64* %attrs, i64** %attrs.addr, align 8
  %frombool = zext i1 %signal_p to i8
  store i8 %frombool, i8* %signal_p.addr, align 1
  store %struct.named_merge_point* %named_merge_points, %struct.named_merge_point** %named_merge_points.addr, align 8
  %0 = load i64, i64* %face_name.addr, align 8
  %1 = load i8, i8* %signal_p.addr, align 1
  %tobool = trunc i8 %1 to i1
  %call = call i64 @resolve_face_name(i64 %0, i1 zeroext %tobool)
  store i64 %call, i64* %face_name.addr, align 8
  %2 = load i64, i64* %face_name.addr, align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 91), align 8
  %call1 = call i64 @assq_no_quit(i64 %2, i64 %3)
  store i64 %call1, i64* %face_remapping, align 8
  %4 = load i64, i64* %face_remapping, align 8
  %and = and i64 %4, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %5 = load i64, i64* %face_name.addr, align 8
  %call3 = call zeroext i1 @push_named_merge_point(%struct.named_merge_point* %named_merge_point, i64 %5, i32 1, %struct.named_merge_point** %named_merge_points.addr)
  br i1 %call3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.4
  %6 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %6, 19
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call7 = call i64 @builtin_lisp_symbol(i32 975)
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i64*, i64** %attrs.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %8, i64 %idxprom
  store i64 %call7, i64* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %11 = load i64, i64* %face_remapping, align 8
  %sub = sub nsw i64 %11, 3
  %12 = inttoptr i64 %sub to i8*
  %13 = bitcast i8* %12 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %13, i32 0, i32 1
  %cdr = bitcast %union.anon.10* %u to i64*
  %14 = load i64, i64* %cdr, align 8
  %15 = load i64*, i64** %attrs.addr, align 8
  %16 = load i8, i8* %signal_p.addr, align 1
  %tobool8 = trunc i8 %16 to i1
  %17 = load %struct.named_merge_point*, %struct.named_merge_point** %named_merge_points.addr, align 8
  %call9 = call zeroext i1 @merge_face_ref(%struct.frame* %10, i64 %14, i64* %15, i1 zeroext %tobool8, %struct.named_merge_point* %17)
  store i1 %call9, i1* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  %18 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %19 = load i64, i64* %face_name.addr, align 8
  %20 = load i64*, i64** %attrs.addr, align 8
  %21 = load i8, i8* %signal_p.addr, align 1
  %tobool11 = trunc i8 %21 to i1
  %call12 = call zeroext i1 @get_lface_attributes_no_remap(%struct.frame* %18, i64 %19, i64* %20, i1 zeroext %tobool11)
  store i1 %call12, i1* %retval
  br label %return

return:                                           ; preds = %if.end.10, %for.end
  %22 = load i1, i1* %retval
  ret i1 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @lookup_face(%struct.frame* %f, i64* %attr) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %attr.addr = alloca i64*, align 8
  %cache = alloca %struct.face_cache*, align 8
  %hash = alloca i32, align 4
  %i = alloca i32, align 4
  %face = alloca %struct.face*, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64* %attr, i64** %attr.addr, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %face_cache = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 20
  %1 = load %struct.face_cache*, %struct.face_cache** %face_cache, align 8
  store %struct.face_cache* %1, %struct.face_cache** %cache, align 8
  %2 = load i64*, i64** %attr.addr, align 8
  %call = call i32 @lface_hash(i64* %2)
  store i32 %call, i32* %hash, align 4
  %3 = load i32, i32* %hash, align 4
  %rem = urem i32 %3, 1001
  store i32 %rem, i32* %i, align 4
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.face_cache*, %struct.face_cache** %cache, align 8
  %buckets = getelementptr inbounds %struct.face_cache, %struct.face_cache* %5, i32 0, i32 0
  %6 = load %struct.face**, %struct.face*** %buckets, align 8
  %arrayidx = getelementptr inbounds %struct.face*, %struct.face** %6, i64 %idxprom
  %7 = load %struct.face*, %struct.face** %arrayidx, align 8
  store %struct.face* %7, %struct.face** %face, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load %struct.face*, %struct.face** %face, align 8
  %tobool = icmp ne %struct.face* %8, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.face*, %struct.face** %face, align 8
  %ascii_face = getelementptr inbounds %struct.face, %struct.face* %9, i32 0, i32 17
  %10 = load %struct.face*, %struct.face** %ascii_face, align 8
  %11 = load %struct.face*, %struct.face** %face, align 8
  %cmp = icmp ne %struct.face* %10, %11
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store %struct.face* null, %struct.face** %face, align 8
  br label %for.end

if.end:                                           ; preds = %for.body
  %12 = load %struct.face*, %struct.face** %face, align 8
  %hash1 = getelementptr inbounds %struct.face, %struct.face* %12, i32 0, i32 14
  %13 = load i32, i32* %hash1, align 4
  %14 = load i32, i32* %hash, align 4
  %cmp2 = icmp eq i32 %13, %14
  br i1 %cmp2, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %if.end
  %15 = load %struct.face*, %struct.face** %face, align 8
  %lface = getelementptr inbounds %struct.face, %struct.face* %15, i32 0, i32 0
  %arraydecay = getelementptr inbounds [19 x i64], [19 x i64]* %lface, i32 0, i32 0
  %16 = load i64*, i64** %attr.addr, align 8
  %call3 = call zeroext i1 @lface_equal_p(i64* %arraydecay, i64* %16)
  br i1 %call3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %land.lhs.true
  br label %for.end

if.end.5:                                         ; preds = %land.lhs.true, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.5
  %17 = load %struct.face*, %struct.face** %face, align 8
  %next = getelementptr inbounds %struct.face, %struct.face* %17, i32 0, i32 15
  %18 = load %struct.face*, %struct.face** %next, align 8
  store %struct.face* %18, %struct.face** %face, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.4, %if.then, %for.cond
  %19 = load %struct.face*, %struct.face** %face, align 8
  %cmp6 = icmp eq %struct.face* %19, null
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %for.end
  %20 = load %struct.face_cache*, %struct.face_cache** %cache, align 8
  %21 = load i64*, i64** %attr.addr, align 8
  %call8 = call %struct.face* @realize_face(%struct.face_cache* %20, i64* %21, i32 -1)
  store %struct.face* %call8, %struct.face** %face, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %for.end
  %22 = load %struct.face*, %struct.face** %face, align 8
  %id = getelementptr inbounds %struct.face, %struct.face* %22, i32 0, i32 1
  %23 = load i32, i32* %id, align 4
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define i32 @lookup_basic_face(%struct.frame* %f, i32 %face_id) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct.frame*, align 8
  %face_id.addr = alloca i32, align 4
  %name = alloca i64, align 8
  %mapping = alloca i64, align 8
  %remapped_face_id = alloca i32, align 4
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i32 %face_id, i32* %face_id.addr, align 4
  %0 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 91), align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %face_id.addr, align 4
  store i32 %1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %face_id.addr, align 4
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.2
    i32 2, label %sw.bb.4
    i32 5, label %sw.bb.6
    i32 3, label %sw.bb.8
    i32 4, label %sw.bb.10
    i32 6, label %sw.bb.12
    i32 7, label %sw.bb.14
    i32 8, label %sw.bb.16
    i32 9, label %sw.bb.18
    i32 10, label %sw.bb.20
  ]

sw.bb:                                            ; preds = %if.end
  %call1 = call i64 @builtin_lisp_symbol(i32 324)
  store i64 %call1, i64* %name, align 8
  br label %sw.epilog

sw.bb.2:                                          ; preds = %if.end
  %call3 = call i64 @builtin_lisp_symbol(i32 672)
  store i64 %call3, i64* %name, align 8
  br label %sw.epilog

sw.bb.4:                                          ; preds = %if.end
  %call5 = call i64 @builtin_lisp_symbol(i32 674)
  store i64 %call5, i64* %name, align 8
  br label %sw.epilog

sw.bb.6:                                          ; preds = %if.end
  %call7 = call i64 @builtin_lisp_symbol(i32 513)
  store i64 %call7, i64* %name, align 8
  br label %sw.epilog

sw.bb.8:                                          ; preds = %if.end
  %call9 = call i64 @builtin_lisp_symbol(i32 921)
  store i64 %call9, i64* %name, align 8
  br label %sw.epilog

sw.bb.10:                                         ; preds = %if.end
  %call11 = call i64 @builtin_lisp_symbol(i32 467)
  store i64 %call11, i64* %name, align 8
  br label %sw.epilog

sw.bb.12:                                         ; preds = %if.end
  %call13 = call i64 @builtin_lisp_symbol(i32 830)
  store i64 %call13, i64* %name, align 8
  br label %sw.epilog

sw.bb.14:                                         ; preds = %if.end
  %call15 = call i64 @builtin_lisp_symbol(i32 208)
  store i64 %call15, i64* %name, align 8
  br label %sw.epilog

sw.bb.16:                                         ; preds = %if.end
  %call17 = call i64 @builtin_lisp_symbol(i32 306)
  store i64 %call17, i64* %name, align 8
  br label %sw.epilog

sw.bb.18:                                         ; preds = %if.end
  %call19 = call i64 @builtin_lisp_symbol(i32 684)
  store i64 %call19, i64* %name, align 8
  br label %sw.epilog

sw.bb.20:                                         ; preds = %if.end
  %call21 = call i64 @builtin_lisp_symbol(i32 650)
  store i64 %call21, i64* %name, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @emacs_abort() #6
  unreachable

sw.epilog:                                        ; preds = %sw.bb.20, %sw.bb.18, %sw.bb.16, %sw.bb.14, %sw.bb.12, %sw.bb.10, %sw.bb.8, %sw.bb.6, %sw.bb.4, %sw.bb.2, %sw.bb
  %3 = load i64, i64* %name, align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 91), align 8
  %call22 = call i64 @assq_no_quit(i64 %3, i64 %4)
  store i64 %call22, i64* %mapping, align 8
  %5 = load i64, i64* %mapping, align 8
  %call23 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp24 = icmp eq i64 %5, %call23
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %sw.epilog
  %6 = load i32, i32* %face_id.addr, align 4
  store i32 %6, i32* %retval
  br label %return

if.end.26:                                        ; preds = %sw.epilog
  %7 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %8 = load i64, i64* %name, align 8
  %call27 = call i32 @lookup_named_face(%struct.frame* %7, i64 %8, i1 zeroext false)
  store i32 %call27, i32* %remapped_face_id, align 4
  %9 = load i32, i32* %remapped_face_id, align 4
  %cmp28 = icmp slt i32 %9, 0
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.26
  %10 = load i32, i32* %face_id.addr, align 4
  store i32 %10, i32* %retval
  br label %return

if.end.30:                                        ; preds = %if.end.26
  %11 = load i32, i32* %remapped_face_id, align 4
  store i32 %11, i32* %retval
  br label %return

return:                                           ; preds = %if.end.30, %if.then.29, %if.then.25, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare i64 @assq_no_quit(i64, i64) #1

; Function Attrs: nounwind uwtable
define i32 @smaller_face(%struct.frame* %f, i32 %face_id, i32 %steps) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct.frame*, align 8
  %face_id.addr = alloca i32, align 4
  %steps.addr = alloca i32, align 4
  %face = alloca %struct.face*, align 8
  %attrs = alloca [19 x i64], align 16
  %pt = alloca i32, align 4
  %last_pt = alloca i32, align 4
  %last_height = alloca i32, align 4
  %delta = alloca i32, align 4
  %new_face_id = alloca i32, align 4
  %new_face = alloca %struct.face*, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i32 %face_id, i32* %face_id.addr, align 4
  store i32 %steps, i32* %steps.addr, align 4
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_method = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 26
  %1 = bitcast i48* %output_method to i64*
  %bf.load = load i64, i64* %1, align 8
  %bf.lshr = lshr i64 %bf.load, 23
  %bf.clear = and i64 %bf.lshr, 7
  %bf.cast = trunc i64 %bf.clear to i32
  %cmp = icmp eq i32 %bf.cast, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %face_id.addr, align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %steps.addr, align 4
  %cmp1 = icmp slt i32 %3, 0
  %cond = select i1 %cmp1, i32 5, i32 -5
  store i32 %cond, i32* %delta, align 4
  %4 = load i32, i32* %steps.addr, align 4
  %cmp2 = icmp slt i32 %4, 0
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %5 = load i32, i32* %steps.addr, align 4
  %sub = sub nsw i32 0, %5
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %6 = load i32, i32* %steps.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond3 = phi i32 [ %sub, %cond.true ], [ %6, %cond.false ]
  store i32 %cond3, i32* %steps.addr, align 4
  br i1 true, label %cond.true.4, label %cond.false.7

cond.true.4:                                      ; preds = %cond.end
  %7 = load i32, i32* %face_id.addr, align 4
  %add = add i32 %7, 0
  %8 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %face_cache = getelementptr inbounds %struct.frame, %struct.frame* %8, i32 0, i32 20
  %9 = load %struct.face_cache*, %struct.face_cache** %face_cache, align 8
  %used = getelementptr inbounds %struct.face_cache, %struct.face_cache* %9, i32 0, i32 4
  %10 = load i32, i32* %used, align 4
  %add5 = add i32 %10, 0
  %cmp6 = icmp ult i32 %add, %add5
  br i1 %cmp6, label %cond.true.15, label %cond.false.17

cond.false.7:                                     ; preds = %cond.end
  %11 = load i32, i32* %face_id.addr, align 4
  %conv = sext i32 %11 to i64
  %add8 = add i64 %conv, 0
  %12 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %face_cache9 = getelementptr inbounds %struct.frame, %struct.frame* %12, i32 0, i32 20
  %13 = load %struct.face_cache*, %struct.face_cache** %face_cache9, align 8
  %used10 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %13, i32 0, i32 4
  %14 = load i32, i32* %used10, align 4
  %conv11 = sext i32 %14 to i64
  %add12 = add i64 %conv11, 0
  %cmp13 = icmp ult i64 %add8, %add12
  br i1 %cmp13, label %cond.true.15, label %cond.false.17

cond.true.15:                                     ; preds = %cond.false.7, %cond.true.4
  %15 = load i32, i32* %face_id.addr, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %face_cache16 = getelementptr inbounds %struct.frame, %struct.frame* %16, i32 0, i32 20
  %17 = load %struct.face_cache*, %struct.face_cache** %face_cache16, align 8
  %faces_by_id = getelementptr inbounds %struct.face_cache, %struct.face_cache* %17, i32 0, i32 2
  %18 = load %struct.face**, %struct.face*** %faces_by_id, align 8
  %arrayidx = getelementptr inbounds %struct.face*, %struct.face** %18, i64 %idxprom
  %19 = load %struct.face*, %struct.face** %arrayidx, align 8
  br label %cond.end.18

cond.false.17:                                    ; preds = %cond.false.7, %cond.true.4
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.17, %cond.true.15
  %cond19 = phi %struct.face* [ %19, %cond.true.15 ], [ null, %cond.false.17 ]
  store %struct.face* %cond19, %struct.face** %face, align 8
  %20 = bitcast [19 x i64]* %attrs to i8*
  %21 = load %struct.face*, %struct.face** %face, align 8
  %lface = getelementptr inbounds %struct.face, %struct.face* %21, i32 0, i32 0
  %22 = bitcast [19 x i64]* %lface to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %22, i64 152, i32 8, i1 false)
  %arrayidx20 = getelementptr inbounds [19 x i64], [19 x i64]* %attrs, i32 0, i64 4
  %23 = load i64, i64* %arrayidx20, align 8
  %shr = ashr i64 %23, 2
  %conv21 = trunc i64 %shr to i32
  store i32 %conv21, i32* %last_pt, align 4
  store i32 %conv21, i32* %pt, align 4
  %24 = load i32, i32* %face_id.addr, align 4
  store i32 %24, i32* %new_face_id, align 4
  %25 = load %struct.face*, %struct.face** %face, align 8
  %font = getelementptr inbounds %struct.face, %struct.face* %25, i32 0, i32 10
  %26 = load %struct.font*, %struct.font** %font, align 8
  %height = getelementptr inbounds %struct.font, %struct.font* %26, i32 0, i32 5
  %27 = load i32, i32* %height, align 4
  store i32 %27, i32* %last_height, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.82, %cond.end.18
  %28 = load i32, i32* %steps.addr, align 4
  %tobool = icmp ne i32 %28, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %29 = load i32, i32* %pt, align 4
  %30 = load i32, i32* %delta, align 4
  %add22 = add nsw i32 %29, %30
  %cmp23 = icmp sgt i32 %add22, 0
  br i1 %cmp23, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %31 = load i32, i32* %last_pt, align 4
  %32 = load i32, i32* %pt, align 4
  %sub25 = sub nsw i32 %31, %32
  %cmp26 = icmp slt i32 %sub25, 0
  br i1 %cmp26, label %cond.true.28, label %cond.false.31

cond.true.28:                                     ; preds = %land.rhs
  %33 = load i32, i32* %last_pt, align 4
  %34 = load i32, i32* %pt, align 4
  %sub29 = sub nsw i32 %33, %34
  %sub30 = sub nsw i32 0, %sub29
  br label %cond.end.33

cond.false.31:                                    ; preds = %land.rhs
  %35 = load i32, i32* %last_pt, align 4
  %36 = load i32, i32* %pt, align 4
  %sub32 = sub nsw i32 %35, %36
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.false.31, %cond.true.28
  %cond34 = phi i32 [ %sub30, %cond.true.28 ], [ %sub32, %cond.false.31 ]
  %cmp35 = icmp slt i32 %cond34, 100
  br label %land.end

land.end:                                         ; preds = %cond.end.33, %land.lhs.true, %while.cond
  %37 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp35, %cond.end.33 ]
  br i1 %37, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %38 = load i32, i32* %delta, align 4
  %39 = load i32, i32* %pt, align 4
  %add37 = add nsw i32 %39, %38
  store i32 %add37, i32* %pt, align 4
  %40 = load i32, i32* %pt, align 4
  %conv38 = sext i32 %40 to i64
  %shl = shl i64 %conv38, 2
  %add39 = add i64 %shl, 2
  %arrayidx40 = getelementptr inbounds [19 x i64], [19 x i64]* %attrs, i32 0, i64 4
  store i64 %add39, i64* %arrayidx40, align 8
  %41 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %arraydecay = getelementptr inbounds [19 x i64], [19 x i64]* %attrs, i32 0, i32 0
  %call = call i32 @lookup_face(%struct.frame* %41, i64* %arraydecay)
  store i32 %call, i32* %new_face_id, align 4
  br i1 true, label %cond.true.41, label %cond.false.48

cond.true.41:                                     ; preds = %while.body
  %42 = load i32, i32* %new_face_id, align 4
  %add42 = add i32 %42, 0
  %43 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %face_cache43 = getelementptr inbounds %struct.frame, %struct.frame* %43, i32 0, i32 20
  %44 = load %struct.face_cache*, %struct.face_cache** %face_cache43, align 8
  %used44 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %44, i32 0, i32 4
  %45 = load i32, i32* %used44, align 4
  %add45 = add i32 %45, 0
  %cmp46 = icmp ult i32 %add42, %add45
  br i1 %cmp46, label %cond.true.57, label %cond.false.62

cond.false.48:                                    ; preds = %while.body
  %46 = load i32, i32* %new_face_id, align 4
  %conv49 = sext i32 %46 to i64
  %add50 = add i64 %conv49, 0
  %47 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %face_cache51 = getelementptr inbounds %struct.frame, %struct.frame* %47, i32 0, i32 20
  %48 = load %struct.face_cache*, %struct.face_cache** %face_cache51, align 8
  %used52 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %48, i32 0, i32 4
  %49 = load i32, i32* %used52, align 4
  %conv53 = sext i32 %49 to i64
  %add54 = add i64 %conv53, 0
  %cmp55 = icmp ult i64 %add50, %add54
  br i1 %cmp55, label %cond.true.57, label %cond.false.62

cond.true.57:                                     ; preds = %cond.false.48, %cond.true.41
  %50 = load i32, i32* %new_face_id, align 4
  %idxprom58 = sext i32 %50 to i64
  %51 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %face_cache59 = getelementptr inbounds %struct.frame, %struct.frame* %51, i32 0, i32 20
  %52 = load %struct.face_cache*, %struct.face_cache** %face_cache59, align 8
  %faces_by_id60 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %52, i32 0, i32 2
  %53 = load %struct.face**, %struct.face*** %faces_by_id60, align 8
  %arrayidx61 = getelementptr inbounds %struct.face*, %struct.face** %53, i64 %idxprom58
  %54 = load %struct.face*, %struct.face** %arrayidx61, align 8
  br label %cond.end.63

cond.false.62:                                    ; preds = %cond.false.48, %cond.true.41
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.62, %cond.true.57
  %cond64 = phi %struct.face* [ %54, %cond.true.57 ], [ null, %cond.false.62 ]
  store %struct.face* %cond64, %struct.face** %new_face, align 8
  %55 = load i32, i32* %delta, align 4
  %cmp65 = icmp slt i32 %55, 0
  br i1 %cmp65, label %land.lhs.true.67, label %lor.lhs.false

land.lhs.true.67:                                 ; preds = %cond.end.63
  %56 = load %struct.face*, %struct.face** %new_face, align 8
  %font68 = getelementptr inbounds %struct.face, %struct.face* %56, i32 0, i32 10
  %57 = load %struct.font*, %struct.font** %font68, align 8
  %height69 = getelementptr inbounds %struct.font, %struct.font* %57, i32 0, i32 5
  %58 = load i32, i32* %height69, align 4
  %59 = load i32, i32* %last_height, align 4
  %cmp70 = icmp slt i32 %58, %59
  br i1 %cmp70, label %if.then.79, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.67, %cond.end.63
  %60 = load i32, i32* %delta, align 4
  %cmp72 = icmp sgt i32 %60, 0
  br i1 %cmp72, label %land.lhs.true.74, label %if.end.82

land.lhs.true.74:                                 ; preds = %lor.lhs.false
  %61 = load %struct.face*, %struct.face** %new_face, align 8
  %font75 = getelementptr inbounds %struct.face, %struct.face* %61, i32 0, i32 10
  %62 = load %struct.font*, %struct.font** %font75, align 8
  %height76 = getelementptr inbounds %struct.font, %struct.font* %62, i32 0, i32 5
  %63 = load i32, i32* %height76, align 4
  %64 = load i32, i32* %last_height, align 4
  %cmp77 = icmp sgt i32 %63, %64
  br i1 %cmp77, label %if.then.79, label %if.end.82

if.then.79:                                       ; preds = %land.lhs.true.74, %land.lhs.true.67
  %65 = load i32, i32* %steps.addr, align 4
  %dec = add nsw i32 %65, -1
  store i32 %dec, i32* %steps.addr, align 4
  %66 = load %struct.face*, %struct.face** %new_face, align 8
  %font80 = getelementptr inbounds %struct.face, %struct.face* %66, i32 0, i32 10
  %67 = load %struct.font*, %struct.font** %font80, align 8
  %height81 = getelementptr inbounds %struct.font, %struct.font* %67, i32 0, i32 5
  %68 = load i32, i32* %height81, align 4
  store i32 %68, i32* %last_height, align 4
  %69 = load i32, i32* %pt, align 4
  store i32 %69, i32* %last_pt, align 4
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.79, %land.lhs.true.74, %lor.lhs.false
  br label %while.cond

while.end:                                        ; preds = %land.end
  %70 = load i32, i32* %new_face_id, align 4
  store i32 %70, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %71 = load i32, i32* %retval
  ret i32 %71
}

; Function Attrs: nounwind uwtable
define i32 @face_with_height(%struct.frame* %f, i32 %face_id, i32 %height) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct.frame*, align 8
  %face_id.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %face = alloca %struct.face*, align 8
  %attrs = alloca [19 x i64], align 16
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i32 %face_id, i32* %face_id.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_method = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 26
  %1 = bitcast i48* %output_method to i64*
  %bf.load = load i64, i64* %1, align 8
  %bf.lshr = lshr i64 %bf.load, 23
  %bf.clear = and i64 %bf.lshr, 7
  %bf.cast = trunc i64 %bf.clear to i32
  %cmp = icmp eq i32 %bf.cast, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %height.addr, align 4
  %cmp1 = icmp sle i32 %2, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load i32, i32* %face_id.addr, align 4
  store i32 %3, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %4 = load i32, i32* %face_id.addr, align 4
  %add = add i32 %4, 0
  %5 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %face_cache = getelementptr inbounds %struct.frame, %struct.frame* %5, i32 0, i32 20
  %6 = load %struct.face_cache*, %struct.face_cache** %face_cache, align 8
  %used = getelementptr inbounds %struct.face_cache, %struct.face_cache* %6, i32 0, i32 4
  %7 = load i32, i32* %used, align 4
  %add2 = add i32 %7, 0
  %cmp3 = icmp ult i32 %add, %add2
  br i1 %cmp3, label %cond.true.11, label %cond.false.13

cond.false:                                       ; preds = %if.end
  %8 = load i32, i32* %face_id.addr, align 4
  %conv = sext i32 %8 to i64
  %add4 = add i64 %conv, 0
  %9 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %face_cache5 = getelementptr inbounds %struct.frame, %struct.frame* %9, i32 0, i32 20
  %10 = load %struct.face_cache*, %struct.face_cache** %face_cache5, align 8
  %used6 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %10, i32 0, i32 4
  %11 = load i32, i32* %used6, align 4
  %conv7 = sext i32 %11 to i64
  %add8 = add i64 %conv7, 0
  %cmp9 = icmp ult i64 %add4, %add8
  br i1 %cmp9, label %cond.true.11, label %cond.false.13

cond.true.11:                                     ; preds = %cond.false, %cond.true
  %12 = load i32, i32* %face_id.addr, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %face_cache12 = getelementptr inbounds %struct.frame, %struct.frame* %13, i32 0, i32 20
  %14 = load %struct.face_cache*, %struct.face_cache** %face_cache12, align 8
  %faces_by_id = getelementptr inbounds %struct.face_cache, %struct.face_cache* %14, i32 0, i32 2
  %15 = load %struct.face**, %struct.face*** %faces_by_id, align 8
  %arrayidx = getelementptr inbounds %struct.face*, %struct.face** %15, i64 %idxprom
  %16 = load %struct.face*, %struct.face** %arrayidx, align 8
  br label %cond.end

cond.false.13:                                    ; preds = %cond.false, %cond.true
  br label %cond.end

cond.end:                                         ; preds = %cond.false.13, %cond.true.11
  %cond = phi %struct.face* [ %16, %cond.true.11 ], [ null, %cond.false.13 ]
  store %struct.face* %cond, %struct.face** %face, align 8
  %17 = bitcast [19 x i64]* %attrs to i8*
  %18 = load %struct.face*, %struct.face** %face, align 8
  %lface = getelementptr inbounds %struct.face, %struct.face* %18, i32 0, i32 0
  %19 = bitcast [19 x i64]* %lface to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %19, i64 152, i32 8, i1 false)
  %20 = load i32, i32* %height.addr, align 4
  %conv14 = sext i32 %20 to i64
  %shl = shl i64 %conv14, 2
  %add15 = add i64 %shl, 2
  %arrayidx16 = getelementptr inbounds [19 x i64], [19 x i64]* %attrs, i32 0, i64 4
  store i64 %add15, i64* %arrayidx16, align 8
  %arraydecay = getelementptr inbounds [19 x i64], [19 x i64]* %attrs, i32 0, i32 0
  call void @font_clear_prop(i64* %arraydecay, i32 8)
  %21 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %arraydecay17 = getelementptr inbounds [19 x i64], [19 x i64]* %attrs, i32 0, i32 0
  %call = call i32 @lookup_face(%struct.frame* %21, i64* %arraydecay17)
  store i32 %call, i32* %face_id.addr, align 4
  %22 = load i32, i32* %face_id.addr, align 4
  store i32 %22, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define i32 @lookup_derived_face(%struct.frame* %f, i64 %symbol, i32 %face_id, i1 zeroext %signal_p) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct.frame*, align 8
  %symbol.addr = alloca i64, align 8
  %face_id.addr = alloca i32, align 4
  %signal_p.addr = alloca i8, align 1
  %attrs = alloca [19 x i64], align 16
  %symbol_attrs = alloca [19 x i64], align 16
  %default_face = alloca %struct.face*, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %symbol, i64* %symbol.addr, align 8
  store i32 %face_id, i32* %face_id.addr, align 4
  %frombool = zext i1 %signal_p to i8
  store i8 %frombool, i8* %signal_p.addr, align 1
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %0 = load i32, i32* %face_id.addr, align 4
  %add = add i32 %0, 0
  %1 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %face_cache = getelementptr inbounds %struct.frame, %struct.frame* %1, i32 0, i32 20
  %2 = load %struct.face_cache*, %struct.face_cache** %face_cache, align 8
  %used = getelementptr inbounds %struct.face_cache, %struct.face_cache* %2, i32 0, i32 4
  %3 = load i32, i32* %used, align 4
  %add1 = add i32 %3, 0
  %cmp = icmp ult i32 %add, %add1
  br i1 %cmp, label %cond.true.9, label %cond.false.11

cond.false:                                       ; preds = %entry
  %4 = load i32, i32* %face_id.addr, align 4
  %conv = sext i32 %4 to i64
  %add2 = add i64 %conv, 0
  %5 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %face_cache3 = getelementptr inbounds %struct.frame, %struct.frame* %5, i32 0, i32 20
  %6 = load %struct.face_cache*, %struct.face_cache** %face_cache3, align 8
  %used4 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %6, i32 0, i32 4
  %7 = load i32, i32* %used4, align 4
  %conv5 = sext i32 %7 to i64
  %add6 = add i64 %conv5, 0
  %cmp7 = icmp ult i64 %add2, %add6
  br i1 %cmp7, label %cond.true.9, label %cond.false.11

cond.true.9:                                      ; preds = %cond.false, %cond.true
  %8 = load i32, i32* %face_id.addr, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %face_cache10 = getelementptr inbounds %struct.frame, %struct.frame* %9, i32 0, i32 20
  %10 = load %struct.face_cache*, %struct.face_cache** %face_cache10, align 8
  %faces_by_id = getelementptr inbounds %struct.face_cache, %struct.face_cache* %10, i32 0, i32 2
  %11 = load %struct.face**, %struct.face*** %faces_by_id, align 8
  %arrayidx = getelementptr inbounds %struct.face*, %struct.face** %11, i64 %idxprom
  %12 = load %struct.face*, %struct.face** %arrayidx, align 8
  br label %cond.end

cond.false.11:                                    ; preds = %cond.false, %cond.true
  br label %cond.end

cond.end:                                         ; preds = %cond.false.11, %cond.true.9
  %cond = phi %struct.face* [ %12, %cond.true.9 ], [ null, %cond.false.11 ]
  store %struct.face* %cond, %struct.face** %default_face, align 8
  %13 = load %struct.face*, %struct.face** %default_face, align 8
  %tobool = icmp ne %struct.face* %13, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  call void @emacs_abort() #6
  unreachable

if.end:                                           ; preds = %cond.end
  %14 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %15 = load i64, i64* %symbol.addr, align 8
  %arraydecay = getelementptr inbounds [19 x i64], [19 x i64]* %symbol_attrs, i32 0, i32 0
  %16 = load i8, i8* %signal_p.addr, align 1
  %tobool12 = trunc i8 %16 to i1
  %call = call zeroext i1 @get_lface_attributes(%struct.frame* %14, i64 %15, i64* %arraydecay, i1 zeroext %tobool12, %struct.named_merge_point* null)
  br i1 %call, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end
  %17 = bitcast [19 x i64]* %attrs to i8*
  %18 = load %struct.face*, %struct.face** %default_face, align 8
  %lface = getelementptr inbounds %struct.face, %struct.face* %18, i32 0, i32 0
  %19 = bitcast [19 x i64]* %lface to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %19, i64 152, i32 8, i1 false)
  %20 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %arraydecay15 = getelementptr inbounds [19 x i64], [19 x i64]* %symbol_attrs, i32 0, i32 0
  %arraydecay16 = getelementptr inbounds [19 x i64], [19 x i64]* %attrs, i32 0, i32 0
  call void @merge_face_vectors(%struct.frame* %20, i64* %arraydecay15, i64* %arraydecay16, %struct.named_merge_point* null)
  %21 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %arraydecay17 = getelementptr inbounds [19 x i64], [19 x i64]* %attrs, i32 0, i32 0
  %call18 = call i32 @lookup_face(%struct.frame* %21, i64* %arraydecay17)
  store i32 %call18, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.13
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define i64 @Fface_attributes_as_vector(i64 %plist) #0 {
entry:
  %plist.addr = alloca i64, align 8
  %lface = alloca i64, align 8
  store i64 %plist, i64* %plist.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 975)
  %call1 = call i64 @Fmake_vector(i64 78, i64 %call)
  store i64 %call1, i64* %lface, align 8
  %0 = load i64, i64* @selected_frame, align 8
  %sub = sub nsw i64 %0, 5
  %1 = inttoptr i64 %sub to i8*
  %2 = bitcast i8* %1 to %struct.frame*
  %3 = load i64, i64* %plist.addr, align 8
  %4 = load i64, i64* %lface, align 8
  %call2 = call %struct.Lisp_Vector* @XVECTOR(i64 %4)
  %contents = getelementptr inbounds %struct.Lisp_Vector, %struct.Lisp_Vector* %call2, i32 0, i32 1
  %arraydecay = getelementptr inbounds [0 x i64], [0 x i64]* %contents, i32 0, i32 0
  %call3 = call zeroext i1 @merge_face_ref(%struct.frame* %2, i64 %3, i64* %arraydecay, i1 zeroext true, %struct.named_merge_point* null)
  %5 = load i64, i64* %lface, align 8
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @merge_face_ref(%struct.frame* %f, i64 %face_ref, i64* %to, i1 zeroext %err_msgs, %struct.named_merge_point* %named_merge_points) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %face_ref.addr = alloca i64, align 8
  %to.addr = alloca i64*, align 8
  %err_msgs.addr = alloca i8, align 1
  %named_merge_points.addr = alloca %struct.named_merge_point*, align 8
  %ok = alloca i8, align 1
  %first = alloca i64, align 8
  %color_name = alloca i64, align 8
  %color = alloca i64, align 8
  %keyword = alloca i64, align 8
  %value = alloca i64, align 8
  %err = alloca i8, align 1
  %new_height = alloca i64, align 8
  %pixmap_p = alloca i64, align 8
  %next = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %face_ref, i64* %face_ref.addr, align 8
  store i64* %to, i64** %to.addr, align 8
  %frombool = zext i1 %err_msgs to i8
  store i8 %frombool, i8* %err_msgs.addr, align 1
  store %struct.named_merge_point* %named_merge_points, %struct.named_merge_point** %named_merge_points.addr, align 8
  store i8 1, i8* %ok, align 1
  %0 = load i64, i64* %face_ref.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %if.then, label %if.else.362

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %face_ref.addr, align 8
  %sub = sub nsw i64 %1, 3
  %2 = inttoptr i64 %sub to i8*
  %3 = bitcast i8* %2 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %3, i32 0, i32 0
  %4 = load i64, i64* %car, align 8
  store i64 %4, i64* %first, align 8
  %5 = load i64, i64* %first, align 8
  %call = call i64 @builtin_lisp_symbol(i32 451)
  %cmp2 = icmp eq i64 %5, %call
  br i1 %cmp2, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %6 = load i64, i64* %first, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 193)
  %cmp5 = icmp eq i64 %6, %call4
  br i1 %cmp5, label %if.then.7, label %if.else.20

if.then.7:                                        ; preds = %lor.lhs.false, %if.then
  %7 = load i64, i64* %face_ref.addr, align 8
  %sub8 = sub nsw i64 %7, 3
  %8 = inttoptr i64 %sub8 to i8*
  %9 = bitcast i8* %8 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %9, i32 0, i32 1
  %cdr = bitcast %union.anon.10* %u to i64*
  %10 = load i64, i64* %cdr, align 8
  store i64 %10, i64* %color_name, align 8
  %11 = load i64, i64* %first, align 8
  store i64 %11, i64* %color, align 8
  %12 = load i64, i64* %color_name, align 8
  %call9 = call zeroext i1 @STRINGP(i64 %12)
  br i1 %call9, label %if.then.10, label %if.else.16

if.then.10:                                       ; preds = %if.then.7
  %13 = load i64, i64* %color, align 8
  %call11 = call i64 @builtin_lisp_symbol(i32 451)
  %cmp12 = icmp eq i64 %13, %call11
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.then.10
  %14 = load i64, i64* %color_name, align 8
  %15 = load i64*, i64** %to.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %15, i64 9
  store i64 %14, i64* %arrayidx, align 8
  br label %if.end

if.else:                                          ; preds = %if.then.10
  %16 = load i64, i64* %color_name, align 8
  %17 = load i64*, i64** %to.addr, align 8
  %arrayidx15 = getelementptr inbounds i64, i64* %17, i64 10
  store i64 %16, i64* %arrayidx15, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.14
  br label %if.end.19

if.else.16:                                       ; preds = %if.then.7
  %18 = load i8, i8* %err_msgs.addr, align 1
  %tobool = trunc i8 %18 to i1
  br i1 %tobool, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.else.16
  %19 = load i64, i64* %color_name, align 8
  call void (i8*, ...) @add_to_log(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.52, i32 0, i32 0), i64 %19)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.else.16
  store i8 0, i8* %ok, align 1
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end
  br label %if.end.361

if.else.20:                                       ; preds = %lor.lhs.false
  %20 = load i64, i64* %first, align 8
  %and21 = and i64 %20, 7
  %conv22 = trunc i64 %and21 to i32
  %cmp23 = icmp eq i32 %conv22, 0
  br i1 %cmp23, label %land.lhs.true, label %if.else.344

land.lhs.true:                                    ; preds = %if.else.20
  %21 = load i64, i64* %first, align 8
  %call25 = call i64 @SYMBOL_NAME(i64 %21)
  %call26 = call i8* @SDATA(i64 %call25)
  %22 = load i8, i8* %call26, align 1
  %conv27 = zext i8 %22 to i32
  %cmp28 = icmp eq i32 %conv27, 58
  br i1 %cmp28, label %if.then.30, label %if.else.344

if.then.30:                                       ; preds = %land.lhs.true
  br label %while.cond

while.cond:                                       ; preds = %if.end.337, %if.then.30
  %23 = load i64, i64* %face_ref.addr, align 8
  %and31 = and i64 %23, 7
  %conv32 = trunc i64 %and31 to i32
  %cmp33 = icmp eq i32 %conv32, 3
  br i1 %cmp33, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %24 = load i64, i64* %face_ref.addr, align 8
  %sub35 = sub nsw i64 %24, 3
  %25 = inttoptr i64 %sub35 to i8*
  %26 = bitcast i8* %25 to %struct.Lisp_Cons*
  %u36 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %26, i32 0, i32 1
  %cdr37 = bitcast %union.anon.10* %u36 to i64*
  %27 = load i64, i64* %cdr37, align 8
  %and38 = and i64 %27, 7
  %conv39 = trunc i64 %and38 to i32
  %cmp40 = icmp eq i32 %conv39, 3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %28 = phi i1 [ false, %while.cond ], [ %cmp40, %land.rhs ]
  br i1 %28, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %29 = load i64, i64* %face_ref.addr, align 8
  %sub42 = sub nsw i64 %29, 3
  %30 = inttoptr i64 %sub42 to i8*
  %31 = bitcast i8* %30 to %struct.Lisp_Cons*
  %car43 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %31, i32 0, i32 0
  %32 = load i64, i64* %car43, align 8
  store i64 %32, i64* %keyword, align 8
  %33 = load i64, i64* %face_ref.addr, align 8
  %sub44 = sub nsw i64 %33, 3
  %34 = inttoptr i64 %sub44 to i8*
  %35 = bitcast i8* %34 to %struct.Lisp_Cons*
  %u45 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %35, i32 0, i32 1
  %cdr46 = bitcast %union.anon.10* %u45 to i64*
  %36 = load i64, i64* %cdr46, align 8
  %sub47 = sub nsw i64 %36, 3
  %37 = inttoptr i64 %sub47 to i8*
  %38 = bitcast i8* %37 to %struct.Lisp_Cons*
  %car48 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %38, i32 0, i32 0
  %39 = load i64, i64* %car48, align 8
  store i64 %39, i64* %value, align 8
  store i8 0, i8* %err, align 1
  %40 = load i64, i64* %value, align 8
  %call49 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp50 = icmp eq i64 %40, %call49
  br i1 %cmp50, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %while.body
  br label %if.end.334

if.else.53:                                       ; preds = %while.body
  %41 = load i64, i64* %keyword, align 8
  %call54 = call i64 @builtin_lisp_symbol(i32 40)
  %cmp55 = icmp eq i64 %41, %call54
  br i1 %cmp55, label %if.then.57, label %if.else.63

if.then.57:                                       ; preds = %if.else.53
  %42 = load i64, i64* %value, align 8
  %call58 = call zeroext i1 @STRINGP(i64 %42)
  br i1 %call58, label %if.then.59, label %if.else.61

if.then.59:                                       ; preds = %if.then.57
  %43 = load i64, i64* %value, align 8
  %44 = load i64*, i64** %to.addr, align 8
  %arrayidx60 = getelementptr inbounds i64, i64* %44, i64 1
  store i64 %43, i64* %arrayidx60, align 8
  %45 = load i64*, i64** %to.addr, align 8
  call void @font_clear_prop(i64* %45, i32 2)
  br label %if.end.62

if.else.61:                                       ; preds = %if.then.57
  store i8 1, i8* %err, align 1
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.61, %if.then.59
  br label %if.end.333

if.else.63:                                       ; preds = %if.else.53
  %46 = load i64, i64* %keyword, align 8
  %call64 = call i64 @builtin_lisp_symbol(i32 48)
  %cmp65 = icmp eq i64 %46, %call64
  br i1 %cmp65, label %if.then.67, label %if.else.73

if.then.67:                                       ; preds = %if.else.63
  %47 = load i64, i64* %value, align 8
  %call68 = call zeroext i1 @STRINGP(i64 %47)
  br i1 %call68, label %if.then.69, label %if.else.71

if.then.69:                                       ; preds = %if.then.67
  %48 = load i64, i64* %value, align 8
  %49 = load i64*, i64** %to.addr, align 8
  %arrayidx70 = getelementptr inbounds i64, i64* %49, i64 2
  store i64 %48, i64* %arrayidx70, align 8
  %50 = load i64*, i64** %to.addr, align 8
  call void @font_clear_prop(i64* %50, i32 1)
  br label %if.end.72

if.else.71:                                       ; preds = %if.then.67
  store i8 1, i8* %err, align 1
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.71, %if.then.69
  br label %if.end.332

if.else.73:                                       ; preds = %if.else.63
  %51 = load i64, i64* %keyword, align 8
  %call74 = call i64 @builtin_lisp_symbol(i32 58)
  %cmp75 = icmp eq i64 %51, %call74
  br i1 %cmp75, label %if.then.77, label %if.else.88

if.then.77:                                       ; preds = %if.else.73
  %52 = load i64, i64* %value, align 8
  %53 = load i64*, i64** %to.addr, align 8
  %arrayidx78 = getelementptr inbounds i64, i64* %53, i64 4
  %54 = load i64, i64* %arrayidx78, align 8
  %call79 = call i64 @builtin_lisp_symbol(i32 0)
  %call80 = call i64 @merge_face_heights(i64 %52, i64 %54, i64 %call79)
  store i64 %call80, i64* %new_height, align 8
  %55 = load i64, i64* %new_height, align 8
  %call81 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp82 = icmp eq i64 %55, %call81
  br i1 %cmp82, label %if.else.86, label %if.then.84

if.then.84:                                       ; preds = %if.then.77
  %56 = load i64, i64* %new_height, align 8
  %57 = load i64*, i64** %to.addr, align 8
  %arrayidx85 = getelementptr inbounds i64, i64* %57, i64 4
  store i64 %56, i64* %arrayidx85, align 8
  %58 = load i64*, i64** %to.addr, align 8
  call void @font_clear_prop(i64* %58, i32 8)
  br label %if.end.87

if.else.86:                                       ; preds = %if.then.77
  store i8 1, i8* %err, align 1
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.86, %if.then.84
  br label %if.end.331

if.else.88:                                       ; preds = %if.else.73
  %59 = load i64, i64* %keyword, align 8
  %call89 = call i64 @builtin_lisp_symbol(i32 138)
  %cmp90 = icmp eq i64 %59, %call89
  br i1 %cmp90, label %if.then.92, label %if.else.105

if.then.92:                                       ; preds = %if.else.88
  %60 = load i64, i64* %value, align 8
  %and93 = and i64 %60, 7
  %conv94 = trunc i64 %and93 to i32
  %cmp95 = icmp eq i32 %conv94, 0
  br i1 %cmp95, label %land.lhs.true.97, label %if.else.103

land.lhs.true.97:                                 ; preds = %if.then.92
  %61 = load i64, i64* %value, align 8
  %call98 = call i32 @font_style_to_value(i32 5, i64 %61, i1 zeroext false)
  %shr = ashr i32 %call98, 8
  %cmp99 = icmp sge i32 %shr, 0
  br i1 %cmp99, label %if.then.101, label %if.else.103

if.then.101:                                      ; preds = %land.lhs.true.97
  %62 = load i64, i64* %value, align 8
  %63 = load i64*, i64** %to.addr, align 8
  %arrayidx102 = getelementptr inbounds i64, i64* %63, i64 5
  store i64 %62, i64* %arrayidx102, align 8
  %64 = load i64*, i64** %to.addr, align 8
  call void @font_clear_prop(i64* %64, i32 5)
  br label %if.end.104

if.else.103:                                      ; preds = %land.lhs.true.97, %if.then.92
  store i8 1, i8* %err, align 1
  br label %if.end.104

if.end.104:                                       ; preds = %if.else.103, %if.then.101
  br label %if.end.330

if.else.105:                                      ; preds = %if.else.88
  %65 = load i64, i64* %keyword, align 8
  %call106 = call i64 @builtin_lisp_symbol(i32 119)
  %cmp107 = icmp eq i64 %65, %call106
  br i1 %cmp107, label %if.then.109, label %if.else.123

if.then.109:                                      ; preds = %if.else.105
  %66 = load i64, i64* %value, align 8
  %and110 = and i64 %66, 7
  %conv111 = trunc i64 %and110 to i32
  %cmp112 = icmp eq i32 %conv111, 0
  br i1 %cmp112, label %land.lhs.true.114, label %if.else.121

land.lhs.true.114:                                ; preds = %if.then.109
  %67 = load i64, i64* %value, align 8
  %call115 = call i32 @font_style_to_value(i32 6, i64 %67, i1 zeroext false)
  %shr116 = ashr i32 %call115, 8
  %cmp117 = icmp sge i32 %shr116, 0
  br i1 %cmp117, label %if.then.119, label %if.else.121

if.then.119:                                      ; preds = %land.lhs.true.114
  %68 = load i64, i64* %value, align 8
  %69 = load i64*, i64** %to.addr, align 8
  %arrayidx120 = getelementptr inbounds i64, i64* %69, i64 6
  store i64 %68, i64* %arrayidx120, align 8
  %70 = load i64*, i64** %to.addr, align 8
  call void @font_clear_prop(i64* %70, i32 6)
  br label %if.end.122

if.else.121:                                      ; preds = %land.lhs.true.114, %if.then.109
  store i8 1, i8* %err, align 1
  br label %if.end.122

if.end.122:                                       ; preds = %if.else.121, %if.then.119
  br label %if.end.329

if.else.123:                                      ; preds = %if.else.105
  %71 = load i64, i64* %keyword, align 8
  %call124 = call i64 @builtin_lisp_symbol(i32 132)
  %cmp125 = icmp eq i64 %71, %call124
  br i1 %cmp125, label %if.then.127, label %if.else.147

if.then.127:                                      ; preds = %if.else.123
  %72 = load i64, i64* %value, align 8
  %call128 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp129 = icmp eq i64 %72, %call128
  br i1 %cmp129, label %if.then.143, label %lor.lhs.false.131

lor.lhs.false.131:                                ; preds = %if.then.127
  %73 = load i64, i64* %value, align 8
  %call132 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp133 = icmp eq i64 %73, %call132
  br i1 %cmp133, label %if.then.143, label %lor.lhs.false.135

lor.lhs.false.135:                                ; preds = %lor.lhs.false.131
  %74 = load i64, i64* %value, align 8
  %call136 = call zeroext i1 @STRINGP(i64 %74)
  br i1 %call136, label %if.then.143, label %lor.lhs.false.138

lor.lhs.false.138:                                ; preds = %lor.lhs.false.135
  %75 = load i64, i64* %value, align 8
  %and139 = and i64 %75, 7
  %conv140 = trunc i64 %and139 to i32
  %cmp141 = icmp eq i32 %conv140, 3
  br i1 %cmp141, label %if.then.143, label %if.else.145

if.then.143:                                      ; preds = %lor.lhs.false.138, %lor.lhs.false.135, %lor.lhs.false.131, %if.then.127
  %76 = load i64, i64* %value, align 8
  %77 = load i64*, i64** %to.addr, align 8
  %arrayidx144 = getelementptr inbounds i64, i64* %77, i64 7
  store i64 %76, i64* %arrayidx144, align 8
  br label %if.end.146

if.else.145:                                      ; preds = %lor.lhs.false.138
  store i8 1, i8* %err, align 1
  br label %if.end.146

if.end.146:                                       ; preds = %if.else.145, %if.then.143
  br label %if.end.328

if.else.147:                                      ; preds = %if.else.123
  %78 = load i64, i64* %keyword, align 8
  %call148 = call i64 @builtin_lisp_symbol(i32 90)
  %cmp149 = icmp eq i64 %78, %call148
  br i1 %cmp149, label %if.then.151, label %if.else.166

if.then.151:                                      ; preds = %if.else.147
  %79 = load i64, i64* %value, align 8
  %call152 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp153 = icmp eq i64 %79, %call152
  br i1 %cmp153, label %if.then.162, label %lor.lhs.false.155

lor.lhs.false.155:                                ; preds = %if.then.151
  %80 = load i64, i64* %value, align 8
  %call156 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp157 = icmp eq i64 %80, %call156
  br i1 %cmp157, label %if.then.162, label %lor.lhs.false.159

lor.lhs.false.159:                                ; preds = %lor.lhs.false.155
  %81 = load i64, i64* %value, align 8
  %call160 = call zeroext i1 @STRINGP(i64 %81)
  br i1 %call160, label %if.then.162, label %if.else.164

if.then.162:                                      ; preds = %lor.lhs.false.159, %lor.lhs.false.155, %if.then.151
  %82 = load i64, i64* %value, align 8
  %83 = load i64*, i64** %to.addr, align 8
  %arrayidx163 = getelementptr inbounds i64, i64* %83, i64 12
  store i64 %82, i64* %arrayidx163, align 8
  br label %if.end.165

if.else.164:                                      ; preds = %lor.lhs.false.159
  store i8 1, i8* %err, align 1
  br label %if.end.165

if.end.165:                                       ; preds = %if.else.164, %if.then.162
  br label %if.end.327

if.else.166:                                      ; preds = %if.else.147
  %84 = load i64, i64* %keyword, align 8
  %call167 = call i64 @builtin_lisp_symbol(i32 126)
  %cmp168 = icmp eq i64 %84, %call167
  br i1 %cmp168, label %if.then.170, label %if.else.185

if.then.170:                                      ; preds = %if.else.166
  %85 = load i64, i64* %value, align 8
  %call171 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp172 = icmp eq i64 %85, %call171
  br i1 %cmp172, label %if.then.181, label %lor.lhs.false.174

lor.lhs.false.174:                                ; preds = %if.then.170
  %86 = load i64, i64* %value, align 8
  %call175 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp176 = icmp eq i64 %86, %call175
  br i1 %cmp176, label %if.then.181, label %lor.lhs.false.178

lor.lhs.false.178:                                ; preds = %lor.lhs.false.174
  %87 = load i64, i64* %value, align 8
  %call179 = call zeroext i1 @STRINGP(i64 %87)
  br i1 %call179, label %if.then.181, label %if.else.183

if.then.181:                                      ; preds = %lor.lhs.false.178, %lor.lhs.false.174, %if.then.170
  %88 = load i64, i64* %value, align 8
  %89 = load i64*, i64** %to.addr, align 8
  %arrayidx182 = getelementptr inbounds i64, i64* %89, i64 13
  store i64 %88, i64* %arrayidx182, align 8
  br label %if.end.184

if.else.183:                                      ; preds = %lor.lhs.false.178
  store i8 1, i8* %err, align 1
  br label %if.end.184

if.end.184:                                       ; preds = %if.else.183, %if.then.181
  br label %if.end.326

if.else.185:                                      ; preds = %if.else.166
  %90 = load i64, i64* %keyword, align 8
  %call186 = call i64 @builtin_lisp_symbol(i32 15)
  %cmp187 = icmp eq i64 %90, %call186
  br i1 %cmp187, label %if.then.189, label %if.else.216

if.then.189:                                      ; preds = %if.else.185
  %91 = load i64, i64* %value, align 8
  %call190 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp191 = icmp eq i64 %91, %call190
  br i1 %cmp191, label %if.then.193, label %if.end.194

if.then.193:                                      ; preds = %if.then.189
  store i64 6, i64* %value, align 8
  br label %if.end.194

if.end.194:                                       ; preds = %if.then.193, %if.then.189
  %92 = load i64, i64* %value, align 8
  %and195 = and i64 %92, 7
  %conv196 = trunc i64 %and195 to i32
  %and197 = and i32 %conv196, -5
  %cmp198 = icmp eq i32 %and197, 2
  br i1 %cmp198, label %if.then.212, label %lor.lhs.false.200

lor.lhs.false.200:                                ; preds = %if.end.194
  %93 = load i64, i64* %value, align 8
  %call201 = call zeroext i1 @STRINGP(i64 %93)
  br i1 %call201, label %if.then.212, label %lor.lhs.false.203

lor.lhs.false.203:                                ; preds = %lor.lhs.false.200
  %94 = load i64, i64* %value, align 8
  %and204 = and i64 %94, 7
  %conv205 = trunc i64 %and204 to i32
  %cmp206 = icmp eq i32 %conv205, 3
  br i1 %cmp206, label %if.then.212, label %lor.lhs.false.208

lor.lhs.false.208:                                ; preds = %lor.lhs.false.203
  %95 = load i64, i64* %value, align 8
  %call209 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp210 = icmp eq i64 %95, %call209
  br i1 %cmp210, label %if.then.212, label %if.else.214

if.then.212:                                      ; preds = %lor.lhs.false.208, %lor.lhs.false.203, %lor.lhs.false.200, %if.end.194
  %96 = load i64, i64* %value, align 8
  %97 = load i64*, i64** %to.addr, align 8
  %arrayidx213 = getelementptr inbounds i64, i64* %97, i64 14
  store i64 %96, i64* %arrayidx213, align 8
  br label %if.end.215

if.else.214:                                      ; preds = %lor.lhs.false.208
  store i8 1, i8* %err, align 1
  br label %if.end.215

if.end.215:                                       ; preds = %if.else.214, %if.then.212
  br label %if.end.325

if.else.216:                                      ; preds = %if.else.185
  %98 = load i64, i64* %keyword, align 8
  %call217 = call i64 @builtin_lisp_symbol(i32 68)
  %cmp218 = icmp eq i64 %98, %call217
  br i1 %cmp218, label %if.then.224, label %lor.lhs.false.220

lor.lhs.false.220:                                ; preds = %if.else.216
  %99 = load i64, i64* %keyword, align 8
  %call221 = call i64 @builtin_lisp_symbol(i32 109)
  %cmp222 = icmp eq i64 %99, %call221
  br i1 %cmp222, label %if.then.224, label %if.else.236

if.then.224:                                      ; preds = %lor.lhs.false.220, %if.else.216
  %100 = load i64, i64* %value, align 8
  %call225 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp226 = icmp eq i64 %100, %call225
  br i1 %cmp226, label %if.then.232, label %lor.lhs.false.228

lor.lhs.false.228:                                ; preds = %if.then.224
  %101 = load i64, i64* %value, align 8
  %call229 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp230 = icmp eq i64 %101, %call229
  br i1 %cmp230, label %if.then.232, label %if.else.234

if.then.232:                                      ; preds = %lor.lhs.false.228, %if.then.224
  %102 = load i64, i64* %value, align 8
  %103 = load i64*, i64** %to.addr, align 8
  %arrayidx233 = getelementptr inbounds i64, i64* %103, i64 8
  store i64 %102, i64* %arrayidx233, align 8
  br label %if.end.235

if.else.234:                                      ; preds = %lor.lhs.false.228
  store i8 1, i8* %err, align 1
  br label %if.end.235

if.end.235:                                       ; preds = %if.else.234, %if.then.232
  br label %if.end.324

if.else.236:                                      ; preds = %lor.lhs.false.220
  %104 = load i64, i64* %keyword, align 8
  %call237 = call i64 @builtin_lisp_symbol(i32 47)
  %cmp238 = icmp eq i64 %104, %call237
  br i1 %cmp238, label %if.then.240, label %if.else.246

if.then.240:                                      ; preds = %if.else.236
  %105 = load i64, i64* %value, align 8
  %call241 = call zeroext i1 @STRINGP(i64 %105)
  br i1 %call241, label %if.then.242, label %if.else.244

if.then.242:                                      ; preds = %if.then.240
  %106 = load i64, i64* %value, align 8
  %107 = load i64*, i64** %to.addr, align 8
  %arrayidx243 = getelementptr inbounds i64, i64* %107, i64 9
  store i64 %106, i64* %arrayidx243, align 8
  br label %if.end.245

if.else.244:                                      ; preds = %if.then.240
  store i8 1, i8* %err, align 1
  br label %if.end.245

if.end.245:                                       ; preds = %if.else.244, %if.then.242
  br label %if.end.323

if.else.246:                                      ; preds = %if.else.236
  %108 = load i64, i64* %keyword, align 8
  %call247 = call i64 @builtin_lisp_symbol(i32 33)
  %cmp248 = icmp eq i64 %108, %call247
  br i1 %cmp248, label %if.then.250, label %if.else.256

if.then.250:                                      ; preds = %if.else.246
  %109 = load i64, i64* %value, align 8
  %call251 = call zeroext i1 @STRINGP(i64 %109)
  br i1 %call251, label %if.then.252, label %if.else.254

if.then.252:                                      ; preds = %if.then.250
  %110 = load i64, i64* %value, align 8
  %111 = load i64*, i64** %to.addr, align 8
  %arrayidx253 = getelementptr inbounds i64, i64* %111, i64 18
  store i64 %110, i64* %arrayidx253, align 8
  br label %if.end.255

if.else.254:                                      ; preds = %if.then.250
  store i8 1, i8* %err, align 1
  br label %if.end.255

if.end.255:                                       ; preds = %if.else.254, %if.then.252
  br label %if.end.322

if.else.256:                                      ; preds = %if.else.246
  %112 = load i64, i64* %keyword, align 8
  %call257 = call i64 @builtin_lisp_symbol(i32 13)
  %cmp258 = icmp eq i64 %112, %call257
  br i1 %cmp258, label %if.then.260, label %if.else.266

if.then.260:                                      ; preds = %if.else.256
  %113 = load i64, i64* %value, align 8
  %call261 = call zeroext i1 @STRINGP(i64 %113)
  br i1 %call261, label %if.then.262, label %if.else.264

if.then.262:                                      ; preds = %if.then.260
  %114 = load i64, i64* %value, align 8
  %115 = load i64*, i64** %to.addr, align 8
  %arrayidx263 = getelementptr inbounds i64, i64* %115, i64 10
  store i64 %114, i64* %arrayidx263, align 8
  br label %if.end.265

if.else.264:                                      ; preds = %if.then.260
  store i8 1, i8* %err, align 1
  br label %if.end.265

if.end.265:                                       ; preds = %if.else.264, %if.then.262
  br label %if.end.321

if.else.266:                                      ; preds = %if.else.256
  %116 = load i64, i64* %keyword, align 8
  %call267 = call i64 @builtin_lisp_symbol(i32 123)
  %cmp268 = icmp eq i64 %116, %call267
  br i1 %cmp268, label %if.then.270, label %if.else.279

if.then.270:                                      ; preds = %if.else.266
  %117 = load i64, i64* %value, align 8
  %call271 = call i64 @Fbitmap_spec_p(i64 %117)
  store i64 %call271, i64* %pixmap_p, align 8
  %118 = load i64, i64* %pixmap_p, align 8
  %call272 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp273 = icmp eq i64 %118, %call272
  br i1 %cmp273, label %if.else.277, label %if.then.275

if.then.275:                                      ; preds = %if.then.270
  %119 = load i64, i64* %value, align 8
  %120 = load i64*, i64** %to.addr, align 8
  %arrayidx276 = getelementptr inbounds i64, i64* %120, i64 11
  store i64 %119, i64* %arrayidx276, align 8
  br label %if.end.278

if.else.277:                                      ; preds = %if.then.270
  store i8 1, i8* %err, align 1
  br label %if.end.278

if.end.278:                                       ; preds = %if.else.277, %if.then.275
  br label %if.end.320

if.else.279:                                      ; preds = %if.else.266
  %121 = load i64, i64* %keyword, align 8
  %call280 = call i64 @builtin_lisp_symbol(i32 139)
  %cmp281 = icmp eq i64 %121, %call280
  br i1 %cmp281, label %if.then.283, label %if.else.297

if.then.283:                                      ; preds = %if.else.279
  %122 = load i64, i64* %value, align 8
  %and284 = and i64 %122, 7
  %conv285 = trunc i64 %and284 to i32
  %cmp286 = icmp eq i32 %conv285, 0
  br i1 %cmp286, label %land.lhs.true.288, label %if.else.295

land.lhs.true.288:                                ; preds = %if.then.283
  %123 = load i64, i64* %value, align 8
  %call289 = call i32 @font_style_to_value(i32 7, i64 %123, i1 zeroext false)
  %shr290 = ashr i32 %call289, 8
  %cmp291 = icmp sge i32 %shr290, 0
  br i1 %cmp291, label %if.then.293, label %if.else.295

if.then.293:                                      ; preds = %land.lhs.true.288
  %124 = load i64, i64* %value, align 8
  %125 = load i64*, i64** %to.addr, align 8
  %arrayidx294 = getelementptr inbounds i64, i64* %125, i64 3
  store i64 %124, i64* %arrayidx294, align 8
  %126 = load i64*, i64** %to.addr, align 8
  call void @font_clear_prop(i64* %126, i32 7)
  br label %if.end.296

if.else.295:                                      ; preds = %land.lhs.true.288, %if.then.283
  store i8 1, i8* %err, align 1
  br label %if.end.296

if.end.296:                                       ; preds = %if.else.295, %if.then.293
  br label %if.end.319

if.else.297:                                      ; preds = %if.else.279
  %127 = load i64, i64* %keyword, align 8
  %call298 = call i64 @builtin_lisp_symbol(i32 44)
  %cmp299 = icmp eq i64 %127, %call298
  br i1 %cmp299, label %if.then.301, label %if.else.307

if.then.301:                                      ; preds = %if.else.297
  %128 = load i64, i64* %value, align 8
  %call302 = call zeroext i1 @FONTP(i64 %128)
  br i1 %call302, label %if.then.303, label %if.else.305

if.then.303:                                      ; preds = %if.then.301
  %129 = load i64, i64* %value, align 8
  %130 = load i64*, i64** %to.addr, align 8
  %arrayidx304 = getelementptr inbounds i64, i64* %130, i64 15
  store i64 %129, i64* %arrayidx304, align 8
  br label %if.end.306

if.else.305:                                      ; preds = %if.then.301
  store i8 1, i8* %err, align 1
  br label %if.end.306

if.end.306:                                       ; preds = %if.else.305, %if.then.303
  br label %if.end.318

if.else.307:                                      ; preds = %if.else.297
  %131 = load i64, i64* %keyword, align 8
  %call308 = call i64 @builtin_lisp_symbol(i32 67)
  %cmp309 = icmp eq i64 %131, %call308
  br i1 %cmp309, label %if.then.311, label %if.else.316

if.then.311:                                      ; preds = %if.else.307
  %132 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %133 = load i64, i64* %value, align 8
  %134 = load i64*, i64** %to.addr, align 8
  %135 = load i8, i8* %err_msgs.addr, align 1
  %tobool312 = trunc i8 %135 to i1
  %136 = load %struct.named_merge_point*, %struct.named_merge_point** %named_merge_points.addr, align 8
  %call313 = call zeroext i1 @merge_face_ref(%struct.frame* %132, i64 %133, i64* %134, i1 zeroext %tobool312, %struct.named_merge_point* %136)
  br i1 %call313, label %if.end.315, label %if.then.314

if.then.314:                                      ; preds = %if.then.311
  store i8 1, i8* %err, align 1
  br label %if.end.315

if.end.315:                                       ; preds = %if.then.314, %if.then.311
  br label %if.end.317

if.else.316:                                      ; preds = %if.else.307
  store i8 1, i8* %err, align 1
  br label %if.end.317

if.end.317:                                       ; preds = %if.else.316, %if.end.315
  br label %if.end.318

if.end.318:                                       ; preds = %if.end.317, %if.end.306
  br label %if.end.319

if.end.319:                                       ; preds = %if.end.318, %if.end.296
  br label %if.end.320

if.end.320:                                       ; preds = %if.end.319, %if.end.278
  br label %if.end.321

if.end.321:                                       ; preds = %if.end.320, %if.end.265
  br label %if.end.322

if.end.322:                                       ; preds = %if.end.321, %if.end.255
  br label %if.end.323

if.end.323:                                       ; preds = %if.end.322, %if.end.245
  br label %if.end.324

if.end.324:                                       ; preds = %if.end.323, %if.end.235
  br label %if.end.325

if.end.325:                                       ; preds = %if.end.324, %if.end.215
  br label %if.end.326

if.end.326:                                       ; preds = %if.end.325, %if.end.184
  br label %if.end.327

if.end.327:                                       ; preds = %if.end.326, %if.end.165
  br label %if.end.328

if.end.328:                                       ; preds = %if.end.327, %if.end.146
  br label %if.end.329

if.end.329:                                       ; preds = %if.end.328, %if.end.122
  br label %if.end.330

if.end.330:                                       ; preds = %if.end.329, %if.end.104
  br label %if.end.331

if.end.331:                                       ; preds = %if.end.330, %if.end.87
  br label %if.end.332

if.end.332:                                       ; preds = %if.end.331, %if.end.72
  br label %if.end.333

if.end.333:                                       ; preds = %if.end.332, %if.end.62
  br label %if.end.334

if.end.334:                                       ; preds = %if.end.333, %if.then.52
  %137 = load i8, i8* %err, align 1
  %tobool335 = trunc i8 %137 to i1
  br i1 %tobool335, label %if.then.336, label %if.end.337

if.then.336:                                      ; preds = %if.end.334
  %138 = load i64, i64* %keyword, align 8
  %139 = load i64, i64* %value, align 8
  call void (i8*, ...) @add_to_log(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.53, i32 0, i32 0), i64 %138, i64 %139)
  store i8 0, i8* %ok, align 1
  br label %if.end.337

if.end.337:                                       ; preds = %if.then.336, %if.end.334
  %140 = load i64, i64* %face_ref.addr, align 8
  %sub338 = sub nsw i64 %140, 3
  %141 = inttoptr i64 %sub338 to i8*
  %142 = bitcast i8* %141 to %struct.Lisp_Cons*
  %u339 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %142, i32 0, i32 1
  %cdr340 = bitcast %union.anon.10* %u339 to i64*
  %143 = load i64, i64* %cdr340, align 8
  %sub341 = sub nsw i64 %143, 3
  %144 = inttoptr i64 %sub341 to i8*
  %145 = bitcast i8* %144 to %struct.Lisp_Cons*
  %u342 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %145, i32 0, i32 1
  %cdr343 = bitcast %union.anon.10* %u342 to i64*
  %146 = load i64, i64* %cdr343, align 8
  store i64 %146, i64* %face_ref.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end.360

if.else.344:                                      ; preds = %land.lhs.true, %if.else.20
  %147 = load i64, i64* %face_ref.addr, align 8
  %sub345 = sub nsw i64 %147, 3
  %148 = inttoptr i64 %sub345 to i8*
  %149 = bitcast i8* %148 to %struct.Lisp_Cons*
  %u346 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %149, i32 0, i32 1
  %cdr347 = bitcast %union.anon.10* %u346 to i64*
  %150 = load i64, i64* %cdr347, align 8
  store i64 %150, i64* %next, align 8
  %151 = load i64, i64* %next, align 8
  %call348 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp349 = icmp eq i64 %151, %call348
  br i1 %cmp349, label %if.end.355, label %if.then.351

if.then.351:                                      ; preds = %if.else.344
  %152 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %153 = load i64, i64* %next, align 8
  %154 = load i64*, i64** %to.addr, align 8
  %155 = load i8, i8* %err_msgs.addr, align 1
  %tobool352 = trunc i8 %155 to i1
  %156 = load %struct.named_merge_point*, %struct.named_merge_point** %named_merge_points.addr, align 8
  %call353 = call zeroext i1 @merge_face_ref(%struct.frame* %152, i64 %153, i64* %154, i1 zeroext %tobool352, %struct.named_merge_point* %156)
  %frombool354 = zext i1 %call353 to i8
  store i8 %frombool354, i8* %ok, align 1
  br label %if.end.355

if.end.355:                                       ; preds = %if.then.351, %if.else.344
  %157 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %158 = load i64, i64* %first, align 8
  %159 = load i64*, i64** %to.addr, align 8
  %160 = load i8, i8* %err_msgs.addr, align 1
  %tobool356 = trunc i8 %160 to i1
  %161 = load %struct.named_merge_point*, %struct.named_merge_point** %named_merge_points.addr, align 8
  %call357 = call zeroext i1 @merge_face_ref(%struct.frame* %157, i64 %158, i64* %159, i1 zeroext %tobool356, %struct.named_merge_point* %161)
  br i1 %call357, label %if.end.359, label %if.then.358

if.then.358:                                      ; preds = %if.end.355
  store i8 0, i8* %ok, align 1
  br label %if.end.359

if.end.359:                                       ; preds = %if.then.358, %if.end.355
  br label %if.end.360

if.end.360:                                       ; preds = %if.end.359, %while.end
  br label %if.end.361

if.end.361:                                       ; preds = %if.end.360, %if.end.19
  br label %if.end.371

if.else.362:                                      ; preds = %entry
  %162 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %163 = load i64, i64* %face_ref.addr, align 8
  %164 = load i64*, i64** %to.addr, align 8
  %165 = load %struct.named_merge_point*, %struct.named_merge_point** %named_merge_points.addr, align 8
  %call363 = call zeroext i1 @merge_named_face(%struct.frame* %162, i64 %163, i64* %164, %struct.named_merge_point* %165)
  %frombool364 = zext i1 %call363 to i8
  store i8 %frombool364, i8* %ok, align 1
  %166 = load i8, i8* %ok, align 1
  %tobool365 = trunc i8 %166 to i1
  br i1 %tobool365, label %if.end.370, label %land.lhs.true.366

land.lhs.true.366:                                ; preds = %if.else.362
  %167 = load i8, i8* %err_msgs.addr, align 1
  %tobool367 = trunc i8 %167 to i1
  br i1 %tobool367, label %if.then.369, label %if.end.370

if.then.369:                                      ; preds = %land.lhs.true.366
  %168 = load i64, i64* %face_ref.addr, align 8
  call void (i8*, ...) @add_to_log(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.54, i32 0, i32 0), i64 %168)
  br label %if.end.370

if.end.370:                                       ; preds = %if.then.369, %land.lhs.true.366, %if.else.362
  br label %if.end.371

if.end.371:                                       ; preds = %if.end.370, %if.end.361
  %169 = load i8, i8* %ok, align 1
  %tobool372 = trunc i8 %169 to i1
  ret i1 %tobool372
}

; Function Attrs: nounwind uwtable
define i64 @Fdisplay_supports_face_attributes_p(i64 %attributes, i64 %display) #0 {
entry:
  %retval = alloca i64, align 8
  %attributes.addr = alloca i64, align 8
  %display.addr = alloca i64, align 8
  %supports = alloca i8, align 1
  %i = alloca i32, align 4
  %frame = alloca i64, align 8
  %f = alloca %struct.frame*, align 8
  %def_face = alloca %struct.face*, align 8
  %attrs = alloca [19 x i64], align 16
  %tail = alloca i64, align 8
  store i64 %attributes, i64* %attributes.addr, align 8
  store i64 %display, i64* %display.addr, align 8
  store i8 0, i8* %supports, align 1
  %0 = load i8, i8* @noninteractive, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, i8* @initialized, align 1
  %tobool1 = trunc i8 %1 to i1
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i64, i64* %display.addr, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %2, %call2
  br i1 %cmp, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %3 = load i64, i64* @selected_frame, align 8
  store i64 %3, i64* %frame, align 8
  br label %if.end.22

if.else:                                          ; preds = %if.end
  %4 = load i64, i64* %display.addr, align 8
  %call4 = call zeroext i1 @FRAMEP(i64 %4)
  br i1 %call4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else
  %5 = load i64, i64* %display.addr, align 8
  store i64 %5, i64* %frame, align 8
  br label %if.end.21

if.else.6:                                        ; preds = %if.else
  %call7 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call7, i64* %frame, align 8
  %6 = load i64, i64* @Vframe_list, align 8
  store i64 %6, i64* %tail, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.6
  %7 = load i64, i64* %tail, align 8
  %and = and i64 %7, 7
  %conv = trunc i64 %and to i32
  %cmp8 = icmp eq i32 %conv, 3
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %8 = load i64, i64* %tail, align 8
  %sub = sub nsw i64 %8, 3
  %9 = inttoptr i64 %sub to i8*
  %10 = bitcast i8* %9 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %10, i32 0, i32 0
  %11 = load i64, i64* %car, align 8
  store i64 %11, i64* %frame, align 8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %12 = phi i1 [ false, %for.cond ], [ true, %land.rhs ]
  br i1 %12, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %call10 = call i64 @builtin_lisp_symbol(i32 344)
  %13 = load i64, i64* %frame, align 8
  %sub11 = sub nsw i64 %13, 5
  %14 = inttoptr i64 %sub11 to i8*
  %15 = bitcast i8* %14 to %struct.frame*
  %param_alist = getelementptr inbounds %struct.frame, %struct.frame* %15, i32 0, i32 8
  %16 = load i64, i64* %param_alist, align 8
  %call12 = call i64 @Fassq(i64 %call10, i64 %16)
  %call13 = call i64 @Fcdr(i64 %call12)
  %17 = load i64, i64* %display.addr, align 8
  %call14 = call i64 @Fequal(i64 %call13, i64 %17)
  %call15 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp16 = icmp eq i64 %call14, %call15
  br i1 %cmp16, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %for.body
  br label %for.end

if.end.19:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %18 = load i64, i64* %tail, align 8
  %sub20 = sub nsw i64 %18, 3
  %19 = inttoptr i64 %sub20 to i8*
  %20 = bitcast i8* %19 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %20, i32 0, i32 1
  %cdr = bitcast %union.anon.10* %u to i64*
  %21 = load i64, i64* %cdr, align 8
  store i64 %21, i64* %tail, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.18, %land.end
  br label %if.end.21

if.end.21:                                        ; preds = %for.end, %if.then.5
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.3
  %22 = load i64, i64* %frame, align 8
  %call23 = call zeroext i1 @FRAMEP(i64 %22)
  br i1 %call23, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.end.22
  %23 = load i64, i64* %frame, align 8
  %sub25 = sub nsw i64 %23, 5
  %24 = inttoptr i64 %sub25 to i8*
  %25 = bitcast i8* %24 to %struct.frame*
  %terminal = getelementptr inbounds %struct.frame, %struct.frame* %25, i32 0, i32 61
  %26 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %cmp26 = icmp ne %struct.terminal* %26, null
  br i1 %cmp26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.end.22
  %call28 = call i64 @builtin_lisp_symbol(i32 458)
  %27 = load i64, i64* %frame, align 8
  %28 = call i64 @wrong_type_argument(i64 %call28, i64 %27) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %29, %cond.true
  %30 = load i64, i64* %frame, align 8
  %sub29 = sub nsw i64 %30, 5
  %31 = inttoptr i64 %sub29 to i8*
  %32 = bitcast i8* %31 to %struct.frame*
  store %struct.frame* %32, %struct.frame** %f, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.35, %cond.end
  %33 = load i32, i32* %i, align 4
  %cmp31 = icmp slt i32 %33, 19
  br i1 %cmp31, label %for.body.33, label %for.end.36

for.body.33:                                      ; preds = %for.cond.30
  %call34 = call i64 @builtin_lisp_symbol(i32 975)
  %34 = load i32, i32* %i, align 4
  %idxprom = sext i32 %34 to i64
  %arrayidx = getelementptr inbounds [19 x i64], [19 x i64]* %attrs, i32 0, i64 %idxprom
  store i64 %call34, i64* %arrayidx, align 8
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.body.33
  %35 = load i32, i32* %i, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.30

for.end.36:                                       ; preds = %for.cond.30
  %36 = load %struct.frame*, %struct.frame** %f, align 8
  %37 = load i64, i64* %attributes.addr, align 8
  %arraydecay = getelementptr inbounds [19 x i64], [19 x i64]* %attrs, i32 0, i32 0
  %call37 = call zeroext i1 @merge_face_ref(%struct.frame* %36, i64 %37, i64* %arraydecay, i1 zeroext true, %struct.named_merge_point* null)
  br i1 true, label %cond.true.38, label %cond.false.41

cond.true.38:                                     ; preds = %for.end.36
  %38 = load %struct.frame*, %struct.frame** %f, align 8
  %face_cache = getelementptr inbounds %struct.frame, %struct.frame* %38, i32 0, i32 20
  %39 = load %struct.face_cache*, %struct.face_cache** %face_cache, align 8
  %used = getelementptr inbounds %struct.face_cache, %struct.face_cache* %39, i32 0, i32 4
  %40 = load i32, i32* %used, align 4
  %add = add i32 %40, 0
  %cmp39 = icmp ult i32 0, %add
  br i1 %cmp39, label %cond.true.48, label %cond.false.51

cond.false.41:                                    ; preds = %for.end.36
  %41 = load %struct.frame*, %struct.frame** %f, align 8
  %face_cache42 = getelementptr inbounds %struct.frame, %struct.frame* %41, i32 0, i32 20
  %42 = load %struct.face_cache*, %struct.face_cache** %face_cache42, align 8
  %used43 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %42, i32 0, i32 4
  %43 = load i32, i32* %used43, align 4
  %conv44 = sext i32 %43 to i64
  %add45 = add i64 %conv44, 0
  %cmp46 = icmp ult i64 0, %add45
  br i1 %cmp46, label %cond.true.48, label %cond.false.51

cond.true.48:                                     ; preds = %cond.false.41, %cond.true.38
  %44 = load %struct.frame*, %struct.frame** %f, align 8
  %face_cache49 = getelementptr inbounds %struct.frame, %struct.frame* %44, i32 0, i32 20
  %45 = load %struct.face_cache*, %struct.face_cache** %face_cache49, align 8
  %faces_by_id = getelementptr inbounds %struct.face_cache, %struct.face_cache* %45, i32 0, i32 2
  %46 = load %struct.face**, %struct.face*** %faces_by_id, align 8
  %arrayidx50 = getelementptr inbounds %struct.face*, %struct.face** %46, i64 0
  %47 = load %struct.face*, %struct.face** %arrayidx50, align 8
  br label %cond.end.52

cond.false.51:                                    ; preds = %cond.false.41, %cond.true.38
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.51, %cond.true.48
  %cond = phi %struct.face* [ %47, %cond.true.48 ], [ null, %cond.false.51 ]
  store %struct.face* %cond, %struct.face** %def_face, align 8
  %48 = load %struct.face*, %struct.face** %def_face, align 8
  %cmp53 = icmp eq %struct.face* %48, null
  br i1 %cmp53, label %if.then.55, label %if.end.83

if.then.55:                                       ; preds = %cond.end.52
  %49 = load %struct.frame*, %struct.frame** %f, align 8
  %call56 = call zeroext i1 @realize_basic_faces(%struct.frame* %49)
  br i1 %call56, label %if.end.58, label %if.then.57

if.then.57:                                       ; preds = %if.then.55
  call void (i8*, ...) @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i32 0, i32 0)) #6
  unreachable

if.end.58:                                        ; preds = %if.then.55
  br i1 true, label %cond.true.59, label %cond.false.65

cond.true.59:                                     ; preds = %if.end.58
  %50 = load %struct.frame*, %struct.frame** %f, align 8
  %face_cache60 = getelementptr inbounds %struct.frame, %struct.frame* %50, i32 0, i32 20
  %51 = load %struct.face_cache*, %struct.face_cache** %face_cache60, align 8
  %used61 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %51, i32 0, i32 4
  %52 = load i32, i32* %used61, align 4
  %add62 = add i32 %52, 0
  %cmp63 = icmp ult i32 0, %add62
  br i1 %cmp63, label %cond.true.72, label %cond.false.76

cond.false.65:                                    ; preds = %if.end.58
  %53 = load %struct.frame*, %struct.frame** %f, align 8
  %face_cache66 = getelementptr inbounds %struct.frame, %struct.frame* %53, i32 0, i32 20
  %54 = load %struct.face_cache*, %struct.face_cache** %face_cache66, align 8
  %used67 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %54, i32 0, i32 4
  %55 = load i32, i32* %used67, align 4
  %conv68 = sext i32 %55 to i64
  %add69 = add i64 %conv68, 0
  %cmp70 = icmp ult i64 0, %add69
  br i1 %cmp70, label %cond.true.72, label %cond.false.76

cond.true.72:                                     ; preds = %cond.false.65, %cond.true.59
  %56 = load %struct.frame*, %struct.frame** %f, align 8
  %face_cache73 = getelementptr inbounds %struct.frame, %struct.frame* %56, i32 0, i32 20
  %57 = load %struct.face_cache*, %struct.face_cache** %face_cache73, align 8
  %faces_by_id74 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %57, i32 0, i32 2
  %58 = load %struct.face**, %struct.face*** %faces_by_id74, align 8
  %arrayidx75 = getelementptr inbounds %struct.face*, %struct.face** %58, i64 0
  %59 = load %struct.face*, %struct.face** %arrayidx75, align 8
  br label %cond.end.77

cond.false.76:                                    ; preds = %cond.false.65, %cond.true.59
  br label %cond.end.77

cond.end.77:                                      ; preds = %cond.false.76, %cond.true.72
  %cond78 = phi %struct.face* [ %59, %cond.true.72 ], [ null, %cond.false.76 ]
  store %struct.face* %cond78, %struct.face** %def_face, align 8
  %60 = load %struct.face*, %struct.face** %def_face, align 8
  %cmp79 = icmp eq %struct.face* %60, null
  br i1 %cmp79, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %cond.end.77
  call void @emacs_abort() #6
  unreachable

if.end.82:                                        ; preds = %cond.end.77
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %cond.end.52
  %61 = load %struct.frame*, %struct.frame** %f, align 8
  %output_method = getelementptr inbounds %struct.frame, %struct.frame* %61, i32 0, i32 26
  %62 = bitcast i48* %output_method to i64*
  %bf.load = load i64, i64* %62, align 8
  %bf.lshr = lshr i64 %bf.load, 23
  %bf.clear = and i64 %bf.lshr, 7
  %bf.cast = trunc i64 %bf.clear to i32
  %cmp84 = icmp eq i32 %bf.cast, 1
  br i1 %cmp84, label %if.then.86, label %if.else.89

if.then.86:                                       ; preds = %if.end.83
  %63 = load %struct.frame*, %struct.frame** %f, align 8
  %arraydecay87 = getelementptr inbounds [19 x i64], [19 x i64]* %attrs, i32 0, i32 0
  %64 = load %struct.face*, %struct.face** %def_face, align 8
  %call88 = call zeroext i1 @tty_supports_face_attributes_p(%struct.frame* %63, i64* %arraydecay87, %struct.face* %64)
  %frombool = zext i1 %call88 to i8
  store i8 %frombool, i8* %supports, align 1
  br label %if.end.93

if.else.89:                                       ; preds = %if.end.83
  %65 = load %struct.frame*, %struct.frame** %f, align 8
  %arraydecay90 = getelementptr inbounds [19 x i64], [19 x i64]* %attrs, i32 0, i32 0
  %66 = load %struct.face*, %struct.face** %def_face, align 8
  %call91 = call zeroext i1 @x_supports_face_attributes_p(%struct.frame* %65, i64* %arraydecay90, %struct.face* %66)
  %frombool92 = zext i1 %call91 to i8
  store i8 %frombool92, i8* %supports, align 1
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.89, %if.then.86
  %67 = load i8, i8* %supports, align 1
  %tobool94 = trunc i8 %67 to i1
  br i1 %tobool94, label %cond.true.96, label %cond.false.98

cond.true.96:                                     ; preds = %if.end.93
  %call97 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end.100

cond.false.98:                                    ; preds = %if.end.93
  %call99 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.100

cond.end.100:                                     ; preds = %cond.false.98, %cond.true.96
  %cond101 = phi i64 [ %call97, %cond.true.96 ], [ %call99, %cond.false.98 ]
  store i64 %cond101, i64* %retval
  br label %return

return:                                           ; preds = %cond.end.100, %if.then
  %68 = load i64, i64* %retval
  ret i64 %68
}

declare i64 @Fcdr(i64) #1

declare i64 @Fassq(i64, i64) #1

; Function Attrs: noreturn
declare void @error(i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal zeroext i1 @tty_supports_face_attributes_p(%struct.frame* %f, i64* %attrs, %struct.face* %def_face) #0 {
entry:
  %retval = alloca i1, align 1
  %f.addr = alloca %struct.frame*, align 8
  %attrs.addr = alloca i64*, align 8
  %def_face.addr = alloca %struct.face*, align 8
  %weight = alloca i32, align 4
  %slant = alloca i32, align 4
  %val = alloca i64, align 8
  %fg = alloca i64, align 8
  %bg = alloca i64, align 8
  %fg_tty_color = alloca %struct.XColor, align 8
  %fg_std_color = alloca %struct.XColor, align 8
  %bg_tty_color = alloca %struct.XColor, align 8
  %bg_std_color = alloca %struct.XColor, align 8
  %test_caps = alloca i32, align 4
  %def_attrs = alloca i64*, align 8
  %def_weight = alloca i32, align 4
  %def_slant = alloca i32, align 4
  %def_fg = alloca i64, align 8
  %def_fg_color = alloca %struct.XColor, align 8
  %def_bg = alloca i64, align 8
  %def_bg_color = alloca %struct.XColor, align 8
  %delta_delta = alloca i32, align 4
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64* %attrs, i64** %attrs.addr, align 8
  store %struct.face* %def_face, %struct.face** %def_face.addr, align 8
  store i32 0, i32* %test_caps, align 4
  %0 = load %struct.face*, %struct.face** %def_face.addr, align 8
  %lface = getelementptr inbounds %struct.face, %struct.face* %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [19 x i64], [19 x i64]* %lface, i32 0, i32 0
  store i64* %arraydecay, i64** %def_attrs, align 8
  %1 = load i64*, i64** %attrs.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 1
  %2 = load i64, i64* %arrayidx, align 8
  %call = call i64 @builtin_lisp_symbol(i32 975)
  %cmp = icmp eq i64 %2, %call
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %3 = load i64*, i64** %attrs.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, i64* %3, i64 2
  %4 = load i64, i64* %arrayidx1, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp3 = icmp eq i64 %4, %call2
  br i1 %cmp3, label %lor.lhs.false.4, label %if.then

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %5 = load i64*, i64** %attrs.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, i64* %5, i64 11
  %6 = load i64, i64* %arrayidx5, align 8
  %call6 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp7 = icmp eq i64 %6, %call6
  br i1 %cmp7, label %lor.lhs.false.8, label %if.then

lor.lhs.false.8:                                  ; preds = %lor.lhs.false.4
  %7 = load i64*, i64** %attrs.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, i64* %7, i64 4
  %8 = load i64, i64* %arrayidx9, align 8
  %call10 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp11 = icmp eq i64 %8, %call10
  br i1 %cmp11, label %lor.lhs.false.12, label %if.then

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.8
  %9 = load i64*, i64** %attrs.addr, align 8
  %arrayidx13 = getelementptr inbounds i64, i64* %9, i64 3
  %10 = load i64, i64* %arrayidx13, align 8
  %call14 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp15 = icmp eq i64 %10, %call14
  br i1 %cmp15, label %lor.lhs.false.16, label %if.then

lor.lhs.false.16:                                 ; preds = %lor.lhs.false.12
  %11 = load i64*, i64** %attrs.addr, align 8
  %arrayidx17 = getelementptr inbounds i64, i64* %11, i64 12
  %12 = load i64, i64* %arrayidx17, align 8
  %call18 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp19 = icmp eq i64 %12, %call18
  br i1 %cmp19, label %lor.lhs.false.20, label %if.then

lor.lhs.false.20:                                 ; preds = %lor.lhs.false.16
  %13 = load i64*, i64** %attrs.addr, align 8
  %arrayidx21 = getelementptr inbounds i64, i64* %13, i64 13
  %14 = load i64, i64* %arrayidx21, align 8
  %call22 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp23 = icmp eq i64 %14, %call22
  br i1 %cmp23, label %lor.lhs.false.24, label %if.then

lor.lhs.false.24:                                 ; preds = %lor.lhs.false.20
  %15 = load i64*, i64** %attrs.addr, align 8
  %arrayidx25 = getelementptr inbounds i64, i64* %15, i64 14
  %16 = load i64, i64* %arrayidx25, align 8
  %call26 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp27 = icmp eq i64 %16, %call26
  br i1 %cmp27, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.24, %lor.lhs.false.20, %lor.lhs.false.16, %lor.lhs.false.12, %lor.lhs.false.8, %lor.lhs.false.4, %lor.lhs.false, %entry
  store i1 false, i1* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.24
  %17 = load i64*, i64** %attrs.addr, align 8
  %arrayidx28 = getelementptr inbounds i64, i64* %17, i64 5
  %18 = load i64, i64* %arrayidx28, align 8
  store i64 %18, i64* %val, align 8
  %19 = load i64, i64* %val, align 8
  %call29 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp30 = icmp eq i64 %19, %call29
  br i1 %cmp30, label %if.end.53, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %20 = load i64, i64* %val, align 8
  %call31 = call i32 @font_style_to_value(i32 5, i64 %20, i1 zeroext false)
  %shr = ashr i32 %call31, 8
  store i32 %shr, i32* %weight, align 4
  %21 = load i32, i32* %weight, align 4
  %cmp32 = icmp sge i32 %21, 0
  br i1 %cmp32, label %if.then.33, label %if.end.53

if.then.33:                                       ; preds = %land.lhs.true
  %22 = load i64*, i64** %def_attrs, align 8
  %arrayidx34 = getelementptr inbounds i64, i64* %22, i64 5
  %23 = load i64, i64* %arrayidx34, align 8
  %call35 = call i32 @font_style_to_value(i32 5, i64 %23, i1 zeroext false)
  %shr36 = ashr i32 %call35, 8
  store i32 %shr36, i32* %def_weight, align 4
  %24 = load i32, i32* %weight, align 4
  %cmp37 = icmp sgt i32 %24, 100
  br i1 %cmp37, label %if.then.38, label %if.else

if.then.38:                                       ; preds = %if.then.33
  %25 = load i32, i32* %def_weight, align 4
  %cmp39 = icmp sgt i32 %25, 100
  br i1 %cmp39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.then.38
  store i1 false, i1* %retval
  br label %return

if.end.41:                                        ; preds = %if.then.38
  store i32 4, i32* %test_caps, align 4
  br label %if.end.52

if.else:                                          ; preds = %if.then.33
  %26 = load i32, i32* %weight, align 4
  %cmp42 = icmp slt i32 %26, 100
  br i1 %cmp42, label %if.then.43, label %if.else.47

if.then.43:                                       ; preds = %if.else
  %27 = load i32, i32* %def_weight, align 4
  %cmp44 = icmp slt i32 %27, 100
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.then.43
  store i1 false, i1* %retval
  br label %return

if.end.46:                                        ; preds = %if.then.43
  store i32 8, i32* %test_caps, align 4
  br label %if.end.51

if.else.47:                                       ; preds = %if.else
  %28 = load i32, i32* %def_weight, align 4
  %cmp48 = icmp eq i32 %28, 100
  br i1 %cmp48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.else.47
  store i1 false, i1* %retval
  br label %return

if.end.50:                                        ; preds = %if.else.47
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.end.46
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.end.41
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %land.lhs.true, %if.end
  %29 = load i64*, i64** %attrs.addr, align 8
  %arrayidx54 = getelementptr inbounds i64, i64* %29, i64 6
  %30 = load i64, i64* %arrayidx54, align 8
  store i64 %30, i64* %val, align 8
  %31 = load i64, i64* %val, align 8
  %call55 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp56 = icmp eq i64 %31, %call55
  br i1 %cmp56, label %if.end.71, label %land.lhs.true.57

land.lhs.true.57:                                 ; preds = %if.end.53
  %32 = load i64, i64* %val, align 8
  %call58 = call i32 @font_style_to_value(i32 6, i64 %32, i1 zeroext false)
  %shr59 = ashr i32 %call58, 8
  store i32 %shr59, i32* %slant, align 4
  %33 = load i32, i32* %slant, align 4
  %cmp60 = icmp sge i32 %33, 0
  br i1 %cmp60, label %if.then.61, label %if.end.71

if.then.61:                                       ; preds = %land.lhs.true.57
  %34 = load i64*, i64** %def_attrs, align 8
  %arrayidx62 = getelementptr inbounds i64, i64* %34, i64 6
  %35 = load i64, i64* %arrayidx62, align 8
  %call63 = call i32 @font_style_to_value(i32 6, i64 %35, i1 zeroext false)
  %shr64 = ashr i32 %call63, 8
  store i32 %shr64, i32* %def_slant, align 4
  %36 = load i32, i32* %slant, align 4
  %cmp65 = icmp eq i32 %36, 100
  br i1 %cmp65, label %if.then.68, label %lor.lhs.false.66

lor.lhs.false.66:                                 ; preds = %if.then.61
  %37 = load i32, i32* %slant, align 4
  %38 = load i32, i32* %def_slant, align 4
  %cmp67 = icmp eq i32 %37, %38
  br i1 %cmp67, label %if.then.68, label %if.else.69

if.then.68:                                       ; preds = %lor.lhs.false.66, %if.then.61
  store i1 false, i1* %retval
  br label %return

if.else.69:                                       ; preds = %lor.lhs.false.66
  %39 = load i32, i32* %test_caps, align 4
  %or = or i32 %39, 16
  store i32 %or, i32* %test_caps, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.69
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %land.lhs.true.57, %if.end.53
  %40 = load i64*, i64** %attrs.addr, align 8
  %arrayidx72 = getelementptr inbounds i64, i64* %40, i64 7
  %41 = load i64, i64* %arrayidx72, align 8
  store i64 %41, i64* %val, align 8
  %42 = load i64, i64* %val, align 8
  %call73 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp74 = icmp eq i64 %42, %call73
  br i1 %cmp74, label %if.end.97, label %if.then.75

if.then.75:                                       ; preds = %if.end.71
  %43 = load i64, i64* %val, align 8
  %call76 = call zeroext i1 @STRINGP(i64 %43)
  br i1 %call76, label %if.then.77, label %if.else.78

if.then.77:                                       ; preds = %if.then.75
  store i1 false, i1* %retval
  br label %return

if.else.78:                                       ; preds = %if.then.75
  %44 = load i64, i64* %val, align 8
  %call79 = call i64 @CAR_SAFE(i64 %44)
  %call80 = call i64 @builtin_lisp_symbol(i32 127)
  %cmp81 = icmp eq i64 %call79, %call80
  br i1 %cmp81, label %land.lhs.true.82, label %if.else.88

land.lhs.true.82:                                 ; preds = %if.else.78
  %45 = load i64, i64* %val, align 8
  %call83 = call i64 @CDR_SAFE(i64 %45)
  %call84 = call i64 @CAR_SAFE(i64 %call83)
  %call85 = call i64 @builtin_lisp_symbol(i32 1012)
  %cmp86 = icmp eq i64 %call84, %call85
  br i1 %cmp86, label %if.then.87, label %if.else.88

if.then.87:                                       ; preds = %land.lhs.true.82
  store i1 false, i1* %retval
  br label %return

if.else.88:                                       ; preds = %land.lhs.true.82, %if.else.78
  %46 = load i64, i64* %val, align 8
  %47 = load i64*, i64** %def_attrs, align 8
  %arrayidx89 = getelementptr inbounds i64, i64* %47, i64 7
  %48 = load i64, i64* %arrayidx89, align 8
  %call90 = call zeroext i1 @face_attr_equal_p(i64 %46, i64 %48)
  br i1 %call90, label %if.then.91, label %if.else.92

if.then.91:                                       ; preds = %if.else.88
  store i1 false, i1* %retval
  br label %return

if.else.92:                                       ; preds = %if.else.88
  %49 = load i32, i32* %test_caps, align 4
  %or93 = or i32 %49, 2
  store i32 %or93, i32* %test_caps, align 4
  br label %if.end.94

if.end.94:                                        ; preds = %if.else.92
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.end.71
  %50 = load i64*, i64** %attrs.addr, align 8
  %arrayidx98 = getelementptr inbounds i64, i64* %50, i64 8
  %51 = load i64, i64* %arrayidx98, align 8
  store i64 %51, i64* %val, align 8
  %52 = load i64, i64* %val, align 8
  %call99 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp100 = icmp eq i64 %52, %call99
  br i1 %cmp100, label %if.end.108, label %if.then.101

if.then.101:                                      ; preds = %if.end.97
  %53 = load i64, i64* %val, align 8
  %54 = load i64*, i64** %def_attrs, align 8
  %arrayidx102 = getelementptr inbounds i64, i64* %54, i64 8
  %55 = load i64, i64* %arrayidx102, align 8
  %call103 = call zeroext i1 @face_attr_equal_p(i64 %53, i64 %55)
  br i1 %call103, label %if.then.104, label %if.else.105

if.then.104:                                      ; preds = %if.then.101
  store i1 false, i1* %retval
  br label %return

if.else.105:                                      ; preds = %if.then.101
  %56 = load i32, i32* %test_caps, align 4
  %or106 = or i32 %56, 1
  store i32 %or106, i32* %test_caps, align 4
  br label %if.end.107

if.end.107:                                       ; preds = %if.else.105
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.end.97
  %57 = load i64*, i64** %attrs.addr, align 8
  %arrayidx109 = getelementptr inbounds i64, i64* %57, i64 9
  %58 = load i64, i64* %arrayidx109, align 8
  store i64 %58, i64* %fg, align 8
  %59 = load i64, i64* %fg, align 8
  %call110 = call zeroext i1 @STRINGP(i64 %59)
  br i1 %call110, label %if.then.111, label %if.end.132

if.then.111:                                      ; preds = %if.end.108
  %60 = load i64*, i64** %def_attrs, align 8
  %arrayidx112 = getelementptr inbounds i64, i64* %60, i64 9
  %61 = load i64, i64* %arrayidx112, align 8
  store i64 %61, i64* %def_fg, align 8
  %62 = load i64, i64* %fg, align 8
  %63 = load i64, i64* %def_fg, align 8
  %call113 = call zeroext i1 @face_attr_equal_p(i64 %62, i64 %63)
  br i1 %call113, label %if.then.114, label %if.else.115

if.then.114:                                      ; preds = %if.then.111
  store i1 false, i1* %retval
  br label %return

if.else.115:                                      ; preds = %if.then.111
  %64 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %65 = load i64, i64* %fg, align 8
  %call116 = call zeroext i1 @tty_lookup_color(%struct.frame* %64, i64 %65, %struct.XColor* %fg_tty_color, %struct.XColor* %fg_std_color)
  br i1 %call116, label %if.else.118, label %if.then.117

if.then.117:                                      ; preds = %if.else.115
  store i1 false, i1* %retval
  br label %return

if.else.118:                                      ; preds = %if.else.115
  %call119 = call i32 @color_distance(%struct.XColor* %fg_tty_color, %struct.XColor* %fg_std_color)
  %cmp120 = icmp sgt i32 %call119, 10000
  br i1 %cmp120, label %if.then.121, label %if.else.122

if.then.121:                                      ; preds = %if.else.118
  store i1 false, i1* %retval
  br label %return

if.else.122:                                      ; preds = %if.else.118
  %66 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %67 = load i64, i64* %def_fg, align 8
  %call123 = call zeroext i1 @tty_lookup_color(%struct.frame* %66, i64 %67, %struct.XColor* %def_fg_color, %struct.XColor* null)
  br i1 %call123, label %land.lhs.true.124, label %if.end.128

land.lhs.true.124:                                ; preds = %if.else.122
  %call125 = call i32 @color_distance(%struct.XColor* %fg_tty_color, %struct.XColor* %def_fg_color)
  %cmp126 = icmp sle i32 %call125, 10000
  br i1 %cmp126, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %land.lhs.true.124
  store i1 false, i1* %retval
  br label %return

if.end.128:                                       ; preds = %land.lhs.true.124, %if.else.122
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.129
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %if.end.108
  %68 = load i64*, i64** %attrs.addr, align 8
  %arrayidx133 = getelementptr inbounds i64, i64* %68, i64 10
  %69 = load i64, i64* %arrayidx133, align 8
  store i64 %69, i64* %bg, align 8
  %70 = load i64, i64* %bg, align 8
  %call134 = call zeroext i1 @STRINGP(i64 %70)
  br i1 %call134, label %if.then.135, label %if.end.156

if.then.135:                                      ; preds = %if.end.132
  %71 = load i64*, i64** %def_attrs, align 8
  %arrayidx136 = getelementptr inbounds i64, i64* %71, i64 10
  %72 = load i64, i64* %arrayidx136, align 8
  store i64 %72, i64* %def_bg, align 8
  %73 = load i64, i64* %bg, align 8
  %74 = load i64, i64* %def_bg, align 8
  %call137 = call zeroext i1 @face_attr_equal_p(i64 %73, i64 %74)
  br i1 %call137, label %if.then.138, label %if.else.139

if.then.138:                                      ; preds = %if.then.135
  store i1 false, i1* %retval
  br label %return

if.else.139:                                      ; preds = %if.then.135
  %75 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %76 = load i64, i64* %bg, align 8
  %call140 = call zeroext i1 @tty_lookup_color(%struct.frame* %75, i64 %76, %struct.XColor* %bg_tty_color, %struct.XColor* %bg_std_color)
  br i1 %call140, label %if.else.142, label %if.then.141

if.then.141:                                      ; preds = %if.else.139
  store i1 false, i1* %retval
  br label %return

if.else.142:                                      ; preds = %if.else.139
  %call143 = call i32 @color_distance(%struct.XColor* %bg_tty_color, %struct.XColor* %bg_std_color)
  %cmp144 = icmp sgt i32 %call143, 10000
  br i1 %cmp144, label %if.then.145, label %if.else.146

if.then.145:                                      ; preds = %if.else.142
  store i1 false, i1* %retval
  br label %return

if.else.146:                                      ; preds = %if.else.142
  %77 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %78 = load i64, i64* %def_bg, align 8
  %call147 = call zeroext i1 @tty_lookup_color(%struct.frame* %77, i64 %78, %struct.XColor* %def_bg_color, %struct.XColor* null)
  br i1 %call147, label %land.lhs.true.148, label %if.end.152

land.lhs.true.148:                                ; preds = %if.else.146
  %call149 = call i32 @color_distance(%struct.XColor* %bg_tty_color, %struct.XColor* %def_bg_color)
  %cmp150 = icmp sle i32 %call149, 10000
  br i1 %cmp150, label %if.then.151, label %if.end.152

if.then.151:                                      ; preds = %land.lhs.true.148
  store i1 false, i1* %retval
  br label %return

if.end.152:                                       ; preds = %land.lhs.true.148, %if.else.146
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.153
  br label %if.end.155

if.end.155:                                       ; preds = %if.end.154
  br label %if.end.156

if.end.156:                                       ; preds = %if.end.155, %if.end.132
  %79 = load i64, i64* %fg, align 8
  %call157 = call zeroext i1 @STRINGP(i64 %79)
  br i1 %call157, label %land.lhs.true.158, label %if.end.168

land.lhs.true.158:                                ; preds = %if.end.156
  %80 = load i64, i64* %bg, align 8
  %call159 = call zeroext i1 @STRINGP(i64 %80)
  br i1 %call159, label %if.then.160, label %if.end.168

if.then.160:                                      ; preds = %land.lhs.true.158
  %call161 = call i32 @color_distance(%struct.XColor* %fg_std_color, %struct.XColor* %bg_std_color)
  %call162 = call i32 @color_distance(%struct.XColor* %fg_tty_color, %struct.XColor* %bg_tty_color)
  %sub = sub nsw i32 %call161, %call162
  store i32 %sub, i32* %delta_delta, align 4
  %81 = load i32, i32* %delta_delta, align 4
  %cmp163 = icmp sgt i32 %81, 10000
  br i1 %cmp163, label %if.then.166, label %lor.lhs.false.164

lor.lhs.false.164:                                ; preds = %if.then.160
  %82 = load i32, i32* %delta_delta, align 4
  %cmp165 = icmp slt i32 %82, -10000
  br i1 %cmp165, label %if.then.166, label %if.end.167

if.then.166:                                      ; preds = %lor.lhs.false.164, %if.then.160
  store i1 false, i1* %retval
  br label %return

if.end.167:                                       ; preds = %lor.lhs.false.164
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %land.lhs.true.158, %if.end.156
  %83 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_method = getelementptr inbounds %struct.frame, %struct.frame* %83, i32 0, i32 26
  %84 = bitcast i48* %output_method to i64*
  %bf.load = load i64, i64* %84, align 8
  %bf.lshr = lshr i64 %bf.load, 23
  %bf.clear = and i64 %bf.lshr, 7
  %bf.cast = trunc i64 %bf.clear to i32
  %cmp169 = icmp eq i32 %bf.cast, 1
  br i1 %cmp169, label %cond.true, label %lor.lhs.false.170

lor.lhs.false.170:                                ; preds = %if.end.168
  %85 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_method171 = getelementptr inbounds %struct.frame, %struct.frame* %85, i32 0, i32 26
  %86 = bitcast i48* %output_method171 to i64*
  %bf.load172 = load i64, i64* %86, align 8
  %bf.lshr173 = lshr i64 %bf.load172, 23
  %bf.clear174 = and i64 %bf.lshr173, 7
  %bf.cast175 = trunc i64 %bf.clear174 to i32
  %cmp176 = icmp eq i32 %bf.cast175, 3
  br i1 %cmp176, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false.170, %if.end.168
  %87 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %terminal = getelementptr inbounds %struct.frame, %struct.frame* %87, i32 0, i32 61
  %88 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %display_info = getelementptr inbounds %struct.terminal, %struct.terminal* %88, i32 0, i32 12
  %tty = bitcast %union.display_info* %display_info to %struct.tty_display_info**
  %89 = load %struct.tty_display_info*, %struct.tty_display_info** %tty, align 8
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false.170
  call void @emacs_abort() #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %90, %cond.true
  %cond = phi %struct.tty_display_info* [ %89, %cond.true ], [ null, %90 ]
  %91 = load i32, i32* %test_caps, align 4
  %call177 = call zeroext i1 @tty_capable_p(%struct.tty_display_info* %cond, i32 %91)
  store i1 %call177, i1* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then.166, %if.then.151, %if.then.145, %if.then.141, %if.then.138, %if.then.127, %if.then.121, %if.then.117, %if.then.114, %if.then.104, %if.then.91, %if.then.87, %if.then.77, %if.then.68, %if.then.49, %if.then.45, %if.then.40, %if.then
  %92 = load i1, i1* %retval
  ret i1 %92
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @x_supports_face_attributes_p(%struct.frame* %f, i64* %attrs, %struct.face* %def_face) #0 {
entry:
  %retval = alloca i1, align 1
  %f.addr = alloca %struct.frame*, align 8
  %attrs.addr = alloca i64*, align 8
  %def_face.addr = alloca %struct.face*, align 8
  %def_attrs = alloca i64*, align 8
  %face_id = alloca i32, align 4
  %face = alloca %struct.face*, align 8
  %merged_attrs = alloca [19 x i64], align 16
  %i = alloca i32, align 4
  %s1 = alloca i64, align 8
  %s2 = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64* %attrs, i64** %attrs.addr, align 8
  store %struct.face* %def_face, %struct.face** %def_face.addr, align 8
  %0 = load %struct.face*, %struct.face** %def_face.addr, align 8
  %lface = getelementptr inbounds %struct.face, %struct.face* %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [19 x i64], [19 x i64]* %lface, i32 0, i32 0
  store i64* %arraydecay, i64** %def_attrs, align 8
  %1 = load i64*, i64** %attrs.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 7
  %2 = load i64, i64* %arrayidx, align 8
  %call = call i64 @builtin_lisp_symbol(i32 975)
  %cmp = icmp eq i64 %2, %call
  br i1 %cmp, label %lor.lhs.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %3 = load i64*, i64** %attrs.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, i64* %3, i64 7
  %4 = load i64, i64* %arrayidx1, align 8
  %5 = load i64*, i64** %def_attrs, align 8
  %arrayidx2 = getelementptr inbounds i64, i64* %5, i64 7
  %6 = load i64, i64* %arrayidx2, align 8
  %call3 = call zeroext i1 @face_attr_equal_p(i64 %4, i64 %6)
  br i1 %call3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %7 = load i64*, i64** %attrs.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, i64* %7, i64 8
  %8 = load i64, i64* %arrayidx4, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp6 = icmp eq i64 %8, %call5
  br i1 %cmp6, label %lor.lhs.false.11, label %land.lhs.true.7

land.lhs.true.7:                                  ; preds = %lor.lhs.false
  %9 = load i64*, i64** %attrs.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, i64* %9, i64 8
  %10 = load i64, i64* %arrayidx8, align 8
  %11 = load i64*, i64** %def_attrs, align 8
  %arrayidx9 = getelementptr inbounds i64, i64* %11, i64 8
  %12 = load i64, i64* %arrayidx9, align 8
  %call10 = call zeroext i1 @face_attr_equal_p(i64 %10, i64 %12)
  br i1 %call10, label %if.then, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %land.lhs.true.7, %lor.lhs.false
  %13 = load i64*, i64** %attrs.addr, align 8
  %arrayidx12 = getelementptr inbounds i64, i64* %13, i64 9
  %14 = load i64, i64* %arrayidx12, align 8
  %call13 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp14 = icmp eq i64 %14, %call13
  br i1 %cmp14, label %lor.lhs.false.19, label %land.lhs.true.15

land.lhs.true.15:                                 ; preds = %lor.lhs.false.11
  %15 = load i64*, i64** %attrs.addr, align 8
  %arrayidx16 = getelementptr inbounds i64, i64* %15, i64 9
  %16 = load i64, i64* %arrayidx16, align 8
  %17 = load i64*, i64** %def_attrs, align 8
  %arrayidx17 = getelementptr inbounds i64, i64* %17, i64 9
  %18 = load i64, i64* %arrayidx17, align 8
  %call18 = call zeroext i1 @face_attr_equal_p(i64 %16, i64 %18)
  br i1 %call18, label %if.then, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %land.lhs.true.15, %lor.lhs.false.11
  %19 = load i64*, i64** %attrs.addr, align 8
  %arrayidx20 = getelementptr inbounds i64, i64* %19, i64 18
  %20 = load i64, i64* %arrayidx20, align 8
  %call21 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp22 = icmp eq i64 %20, %call21
  br i1 %cmp22, label %lor.lhs.false.27, label %land.lhs.true.23

land.lhs.true.23:                                 ; preds = %lor.lhs.false.19
  %21 = load i64*, i64** %attrs.addr, align 8
  %arrayidx24 = getelementptr inbounds i64, i64* %21, i64 18
  %22 = load i64, i64* %arrayidx24, align 8
  %23 = load i64*, i64** %def_attrs, align 8
  %arrayidx25 = getelementptr inbounds i64, i64* %23, i64 18
  %24 = load i64, i64* %arrayidx25, align 8
  %call26 = call zeroext i1 @face_attr_equal_p(i64 %22, i64 %24)
  br i1 %call26, label %if.then, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %land.lhs.true.23, %lor.lhs.false.19
  %25 = load i64*, i64** %attrs.addr, align 8
  %arrayidx28 = getelementptr inbounds i64, i64* %25, i64 10
  %26 = load i64, i64* %arrayidx28, align 8
  %call29 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp30 = icmp eq i64 %26, %call29
  br i1 %cmp30, label %lor.lhs.false.35, label %land.lhs.true.31

land.lhs.true.31:                                 ; preds = %lor.lhs.false.27
  %27 = load i64*, i64** %attrs.addr, align 8
  %arrayidx32 = getelementptr inbounds i64, i64* %27, i64 10
  %28 = load i64, i64* %arrayidx32, align 8
  %29 = load i64*, i64** %def_attrs, align 8
  %arrayidx33 = getelementptr inbounds i64, i64* %29, i64 10
  %30 = load i64, i64* %arrayidx33, align 8
  %call34 = call zeroext i1 @face_attr_equal_p(i64 %28, i64 %30)
  br i1 %call34, label %if.then, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %land.lhs.true.31, %lor.lhs.false.27
  %31 = load i64*, i64** %attrs.addr, align 8
  %arrayidx36 = getelementptr inbounds i64, i64* %31, i64 11
  %32 = load i64, i64* %arrayidx36, align 8
  %call37 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp38 = icmp eq i64 %32, %call37
  br i1 %cmp38, label %lor.lhs.false.43, label %land.lhs.true.39

land.lhs.true.39:                                 ; preds = %lor.lhs.false.35
  %33 = load i64*, i64** %attrs.addr, align 8
  %arrayidx40 = getelementptr inbounds i64, i64* %33, i64 11
  %34 = load i64, i64* %arrayidx40, align 8
  %35 = load i64*, i64** %def_attrs, align 8
  %arrayidx41 = getelementptr inbounds i64, i64* %35, i64 11
  %36 = load i64, i64* %arrayidx41, align 8
  %call42 = call zeroext i1 @face_attr_equal_p(i64 %34, i64 %36)
  br i1 %call42, label %if.then, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %land.lhs.true.39, %lor.lhs.false.35
  %37 = load i64*, i64** %attrs.addr, align 8
  %arrayidx44 = getelementptr inbounds i64, i64* %37, i64 12
  %38 = load i64, i64* %arrayidx44, align 8
  %call45 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp46 = icmp eq i64 %38, %call45
  br i1 %cmp46, label %lor.lhs.false.51, label %land.lhs.true.47

land.lhs.true.47:                                 ; preds = %lor.lhs.false.43
  %39 = load i64*, i64** %attrs.addr, align 8
  %arrayidx48 = getelementptr inbounds i64, i64* %39, i64 12
  %40 = load i64, i64* %arrayidx48, align 8
  %41 = load i64*, i64** %def_attrs, align 8
  %arrayidx49 = getelementptr inbounds i64, i64* %41, i64 12
  %42 = load i64, i64* %arrayidx49, align 8
  %call50 = call zeroext i1 @face_attr_equal_p(i64 %40, i64 %42)
  br i1 %call50, label %if.then, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %land.lhs.true.47, %lor.lhs.false.43
  %43 = load i64*, i64** %attrs.addr, align 8
  %arrayidx52 = getelementptr inbounds i64, i64* %43, i64 13
  %44 = load i64, i64* %arrayidx52, align 8
  %call53 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp54 = icmp eq i64 %44, %call53
  br i1 %cmp54, label %lor.lhs.false.59, label %land.lhs.true.55

land.lhs.true.55:                                 ; preds = %lor.lhs.false.51
  %45 = load i64*, i64** %attrs.addr, align 8
  %arrayidx56 = getelementptr inbounds i64, i64* %45, i64 13
  %46 = load i64, i64* %arrayidx56, align 8
  %47 = load i64*, i64** %def_attrs, align 8
  %arrayidx57 = getelementptr inbounds i64, i64* %47, i64 13
  %48 = load i64, i64* %arrayidx57, align 8
  %call58 = call zeroext i1 @face_attr_equal_p(i64 %46, i64 %48)
  br i1 %call58, label %if.then, label %lor.lhs.false.59

lor.lhs.false.59:                                 ; preds = %land.lhs.true.55, %lor.lhs.false.51
  %49 = load i64*, i64** %attrs.addr, align 8
  %arrayidx60 = getelementptr inbounds i64, i64* %49, i64 14
  %50 = load i64, i64* %arrayidx60, align 8
  %call61 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp62 = icmp eq i64 %50, %call61
  br i1 %cmp62, label %if.end, label %land.lhs.true.63

land.lhs.true.63:                                 ; preds = %lor.lhs.false.59
  %51 = load i64*, i64** %attrs.addr, align 8
  %arrayidx64 = getelementptr inbounds i64, i64* %51, i64 14
  %52 = load i64, i64* %arrayidx64, align 8
  %53 = load i64*, i64** %def_attrs, align 8
  %arrayidx65 = getelementptr inbounds i64, i64* %53, i64 14
  %54 = load i64, i64* %arrayidx65, align 8
  %call66 = call zeroext i1 @face_attr_equal_p(i64 %52, i64 %54)
  br i1 %call66, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.63, %land.lhs.true.55, %land.lhs.true.47, %land.lhs.true.39, %land.lhs.true.31, %land.lhs.true.23, %land.lhs.true.15, %land.lhs.true.7, %land.lhs.true
  store i1 false, i1* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.63, %lor.lhs.false.59
  %55 = load i64*, i64** %attrs.addr, align 8
  %arrayidx67 = getelementptr inbounds i64, i64* %55, i64 1
  %56 = load i64, i64* %arrayidx67, align 8
  %call68 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp69 = icmp eq i64 %56, %call68
  br i1 %cmp69, label %lor.lhs.false.70, label %if.then.90

lor.lhs.false.70:                                 ; preds = %if.end
  %57 = load i64*, i64** %attrs.addr, align 8
  %arrayidx71 = getelementptr inbounds i64, i64* %57, i64 2
  %58 = load i64, i64* %arrayidx71, align 8
  %call72 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp73 = icmp eq i64 %58, %call72
  br i1 %cmp73, label %lor.lhs.false.74, label %if.then.90

lor.lhs.false.74:                                 ; preds = %lor.lhs.false.70
  %59 = load i64*, i64** %attrs.addr, align 8
  %arrayidx75 = getelementptr inbounds i64, i64* %59, i64 4
  %60 = load i64, i64* %arrayidx75, align 8
  %call76 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp77 = icmp eq i64 %60, %call76
  br i1 %cmp77, label %lor.lhs.false.78, label %if.then.90

lor.lhs.false.78:                                 ; preds = %lor.lhs.false.74
  %61 = load i64*, i64** %attrs.addr, align 8
  %arrayidx79 = getelementptr inbounds i64, i64* %61, i64 5
  %62 = load i64, i64* %arrayidx79, align 8
  %call80 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp81 = icmp eq i64 %62, %call80
  br i1 %cmp81, label %lor.lhs.false.82, label %if.then.90

lor.lhs.false.82:                                 ; preds = %lor.lhs.false.78
  %63 = load i64*, i64** %attrs.addr, align 8
  %arrayidx83 = getelementptr inbounds i64, i64* %63, i64 6
  %64 = load i64, i64* %arrayidx83, align 8
  %call84 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp85 = icmp eq i64 %64, %call84
  br i1 %cmp85, label %lor.lhs.false.86, label %if.then.90

lor.lhs.false.86:                                 ; preds = %lor.lhs.false.82
  %65 = load i64*, i64** %attrs.addr, align 8
  %arrayidx87 = getelementptr inbounds i64, i64* %65, i64 3
  %66 = load i64, i64* %arrayidx87, align 8
  %call88 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp89 = icmp eq i64 %66, %call88
  br i1 %cmp89, label %if.end.160, label %if.then.90

if.then.90:                                       ; preds = %lor.lhs.false.86, %lor.lhs.false.82, %lor.lhs.false.78, %lor.lhs.false.74, %lor.lhs.false.70, %if.end
  %67 = bitcast [19 x i64]* %merged_attrs to i8*
  %68 = load i64*, i64** %def_attrs, align 8
  %69 = bitcast i64* %68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %67, i8* %69, i64 152, i32 8, i1 false)
  %70 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %71 = load i64*, i64** %attrs.addr, align 8
  %arraydecay91 = getelementptr inbounds [19 x i64], [19 x i64]* %merged_attrs, i32 0, i32 0
  call void @merge_face_vectors(%struct.frame* %70, i64* %71, i64* %arraydecay91, %struct.named_merge_point* null)
  %72 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %arraydecay92 = getelementptr inbounds [19 x i64], [19 x i64]* %merged_attrs, i32 0, i32 0
  %call93 = call i32 @lookup_face(%struct.frame* %72, i64* %arraydecay92)
  store i32 %call93, i32* %face_id, align 4
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.90
  %73 = load i32, i32* %face_id, align 4
  %add = add i32 %73, 0
  %74 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %face_cache = getelementptr inbounds %struct.frame, %struct.frame* %74, i32 0, i32 20
  %75 = load %struct.face_cache*, %struct.face_cache** %face_cache, align 8
  %used = getelementptr inbounds %struct.face_cache, %struct.face_cache* %75, i32 0, i32 4
  %76 = load i32, i32* %used, align 4
  %add94 = add i32 %76, 0
  %cmp95 = icmp ult i32 %add, %add94
  br i1 %cmp95, label %cond.true.103, label %cond.false.106

cond.false:                                       ; preds = %if.then.90
  %77 = load i32, i32* %face_id, align 4
  %conv = sext i32 %77 to i64
  %add96 = add i64 %conv, 0
  %78 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %face_cache97 = getelementptr inbounds %struct.frame, %struct.frame* %78, i32 0, i32 20
  %79 = load %struct.face_cache*, %struct.face_cache** %face_cache97, align 8
  %used98 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %79, i32 0, i32 4
  %80 = load i32, i32* %used98, align 4
  %conv99 = sext i32 %80 to i64
  %add100 = add i64 %conv99, 0
  %cmp101 = icmp ult i64 %add96, %add100
  br i1 %cmp101, label %cond.true.103, label %cond.false.106

cond.true.103:                                    ; preds = %cond.false, %cond.true
  %81 = load i32, i32* %face_id, align 4
  %idxprom = sext i32 %81 to i64
  %82 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %face_cache104 = getelementptr inbounds %struct.frame, %struct.frame* %82, i32 0, i32 20
  %83 = load %struct.face_cache*, %struct.face_cache** %face_cache104, align 8
  %faces_by_id = getelementptr inbounds %struct.face_cache, %struct.face_cache* %83, i32 0, i32 2
  %84 = load %struct.face**, %struct.face*** %faces_by_id, align 8
  %arrayidx105 = getelementptr inbounds %struct.face*, %struct.face** %84, i64 %idxprom
  %85 = load %struct.face*, %struct.face** %arrayidx105, align 8
  br label %cond.end

cond.false.106:                                   ; preds = %cond.false, %cond.true
  br label %cond.end

cond.end:                                         ; preds = %cond.false.106, %cond.true.103
  %cond = phi %struct.face* [ %85, %cond.true.103 ], [ null, %cond.false.106 ]
  store %struct.face* %cond, %struct.face** %face, align 8
  %86 = load %struct.face*, %struct.face** %face, align 8
  %tobool = icmp ne %struct.face* %86, null
  br i1 %tobool, label %if.end.108, label %if.then.107

if.then.107:                                      ; preds = %cond.end
  call void (i8*, ...) @error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.55, i32 0, i32 0)) #6
  unreachable

if.end.108:                                       ; preds = %cond.end
  %87 = load %struct.face*, %struct.face** %face, align 8
  %font = getelementptr inbounds %struct.face, %struct.face* %87, i32 0, i32 10
  %88 = load %struct.font*, %struct.font** %font, align 8
  %89 = load %struct.face*, %struct.face** %def_face.addr, align 8
  %font109 = getelementptr inbounds %struct.face, %struct.face* %89, i32 0, i32 10
  %90 = load %struct.font*, %struct.font** %font109, align 8
  %cmp110 = icmp eq %struct.font* %88, %90
  br i1 %cmp110, label %if.then.115, label %lor.lhs.false.112

lor.lhs.false.112:                                ; preds = %if.end.108
  %91 = load %struct.face*, %struct.face** %face, align 8
  %font113 = getelementptr inbounds %struct.face, %struct.face* %91, i32 0, i32 10
  %92 = load %struct.font*, %struct.font** %font113, align 8
  %tobool114 = icmp ne %struct.font* %92, null
  br i1 %tobool114, label %if.end.116, label %if.then.115

if.then.115:                                      ; preds = %lor.lhs.false.112, %if.end.108
  store i1 false, i1* %retval
  br label %return

if.end.116:                                       ; preds = %lor.lhs.false.112
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.116
  %93 = load i32, i32* %i, align 4
  %cmp117 = icmp sle i32 %93, 8
  br i1 %cmp117, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %94 = load i32, i32* %i, align 4
  %idxprom119 = sext i32 %94 to i64
  %95 = load %struct.face*, %struct.face** %face, align 8
  %font120 = getelementptr inbounds %struct.face, %struct.face* %95, i32 0, i32 10
  %96 = load %struct.font*, %struct.font** %font120, align 8
  %props = getelementptr inbounds %struct.font, %struct.font* %96, i32 0, i32 1
  %arrayidx121 = getelementptr inbounds [17 x i64], [17 x i64]* %props, i32 0, i64 %idxprom119
  %97 = load i64, i64* %arrayidx121, align 8
  %98 = load i32, i32* %i, align 4
  %idxprom122 = sext i32 %98 to i64
  %99 = load %struct.face*, %struct.face** %def_face.addr, align 8
  %font123 = getelementptr inbounds %struct.face, %struct.face* %99, i32 0, i32 10
  %100 = load %struct.font*, %struct.font** %font123, align 8
  %props124 = getelementptr inbounds %struct.font, %struct.font* %100, i32 0, i32 1
  %arrayidx125 = getelementptr inbounds [17 x i64], [17 x i64]* %props124, i32 0, i64 %idxprom122
  %101 = load i64, i64* %arrayidx125, align 8
  %cmp126 = icmp eq i64 %97, %101
  br i1 %cmp126, label %if.end.159, label %if.then.128

if.then.128:                                      ; preds = %for.body
  %102 = load i32, i32* %i, align 4
  %cmp129 = icmp slt i32 %102, 1
  br i1 %cmp129, label %if.then.138, label %lor.lhs.false.131

lor.lhs.false.131:                                ; preds = %if.then.128
  %103 = load i32, i32* %i, align 4
  %cmp132 = icmp sgt i32 %103, 4
  br i1 %cmp132, label %if.then.138, label %lor.lhs.false.134

lor.lhs.false.134:                                ; preds = %lor.lhs.false.131
  %104 = load %struct.face*, %struct.face** %face, align 8
  %font135 = getelementptr inbounds %struct.face, %struct.face* %104, i32 0, i32 10
  %105 = load %struct.font*, %struct.font** %font135, align 8
  %driver = getelementptr inbounds %struct.font, %struct.font* %105, i32 0, i32 18
  %106 = load %struct.font_driver*, %struct.font_driver** %driver, align 8
  %case_sensitive = getelementptr inbounds %struct.font_driver, %struct.font_driver* %106, i32 0, i32 1
  %107 = load i8, i8* %case_sensitive, align 1
  %tobool136 = trunc i8 %107 to i1
  br i1 %tobool136, label %if.then.138, label %if.end.139

if.then.138:                                      ; preds = %lor.lhs.false.134, %lor.lhs.false.131, %if.then.128
  store i1 true, i1* %retval
  br label %return

if.end.139:                                       ; preds = %lor.lhs.false.134
  %108 = load i32, i32* %i, align 4
  %idxprom140 = sext i32 %108 to i64
  %109 = load %struct.face*, %struct.face** %face, align 8
  %font141 = getelementptr inbounds %struct.face, %struct.face* %109, i32 0, i32 10
  %110 = load %struct.font*, %struct.font** %font141, align 8
  %props142 = getelementptr inbounds %struct.font, %struct.font* %110, i32 0, i32 1
  %arrayidx143 = getelementptr inbounds [17 x i64], [17 x i64]* %props142, i32 0, i64 %idxprom140
  %111 = load i64, i64* %arrayidx143, align 8
  %call144 = call i64 @SYMBOL_NAME(i64 %111)
  store i64 %call144, i64* %s1, align 8
  %112 = load i32, i32* %i, align 4
  %idxprom145 = sext i32 %112 to i64
  %113 = load %struct.face*, %struct.face** %def_face.addr, align 8
  %font146 = getelementptr inbounds %struct.face, %struct.face* %113, i32 0, i32 10
  %114 = load %struct.font*, %struct.font** %font146, align 8
  %props147 = getelementptr inbounds %struct.font, %struct.font* %114, i32 0, i32 1
  %arrayidx148 = getelementptr inbounds [17 x i64], [17 x i64]* %props147, i32 0, i64 %idxprom145
  %115 = load i64, i64* %arrayidx148, align 8
  %call149 = call i64 @SYMBOL_NAME(i64 %115)
  store i64 %call149, i64* %s2, align 8
  %116 = load i64, i64* %s1, align 8
  %call150 = call i64 @builtin_lisp_symbol(i32 0)
  %117 = load i64, i64* %s2, align 8
  %call151 = call i64 @builtin_lisp_symbol(i32 0)
  %call152 = call i64 @builtin_lisp_symbol(i32 901)
  %call153 = call i64 @Fcompare_strings(i64 %116, i64 2, i64 %call150, i64 %117, i64 2, i64 %call151, i64 %call152)
  %call154 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp155 = icmp eq i64 %call153, %call154
  br i1 %cmp155, label %if.end.158, label %if.then.157

if.then.157:                                      ; preds = %if.end.139
  store i1 true, i1* %retval
  br label %return

if.end.158:                                       ; preds = %if.end.139
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.158, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.159
  %118 = load i32, i32* %i, align 4
  %inc = add nsw i32 %118, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i1 false, i1* %retval
  br label %return

if.end.160:                                       ; preds = %lor.lhs.false.86
  store i1 true, i1* %retval
  br label %return

return:                                           ; preds = %if.end.160, %for.end, %if.then.157, %if.then.138, %if.then.115, %if.then
  %119 = load i1, i1* %retval
  ret i1 %119
}

; Function Attrs: nounwind uwtable
define i64 @Finternal_set_font_selection_order(i64 %order) #0 {
entry:
  %order.addr = alloca i64, align 8
  %list = alloca i64, align 8
  %i = alloca i32, align 4
  %indices = alloca [4 x i32], align 16
  %attr = alloca i64, align 8
  %xlfd = alloca i32, align 4
  store i64 %order, i64* %order.addr, align 8
  %0 = load i64, i64* %order.addr, align 8
  call void @CHECK_LIST(i64 %0)
  %1 = bitcast [4 x i32]* %indices to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 16, i32 16, i1 false)
  store i32 0, i32* %i, align 4
  %2 = load i64, i64* %order.addr, align 8
  store i64 %2, i64* %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i64, i64* %list, align 8
  %and = and i64 %3, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %conv2 = sext i32 %4 to i64
  %cmp3 = icmp ult i64 %conv2, 4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %cmp3, %land.rhs ]
  br i1 %5, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %6 = load i64, i64* %list, align 8
  %sub = sub nsw i64 %6, 3
  %7 = inttoptr i64 %sub to i8*
  %8 = bitcast i8* %7 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %8, i32 0, i32 0
  %9 = load i64, i64* %car, align 8
  store i64 %9, i64* %attr, align 8
  %10 = load i64, i64* %attr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 139)
  %cmp5 = icmp eq i64 %10, %call
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store i32 4, i32* %xlfd, align 4
  br label %if.end.24

if.else:                                          ; preds = %for.body
  %11 = load i64, i64* %attr, align 8
  %call7 = call i64 @builtin_lisp_symbol(i32 58)
  %cmp8 = icmp eq i64 %11, %call7
  br i1 %cmp8, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.else
  store i32 7, i32* %xlfd, align 4
  br label %if.end.23

if.else.11:                                       ; preds = %if.else
  %12 = load i64, i64* %attr, align 8
  %call12 = call i64 @builtin_lisp_symbol(i32 138)
  %cmp13 = icmp eq i64 %12, %call12
  br i1 %cmp13, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.else.11
  store i32 2, i32* %xlfd, align 4
  br label %if.end.22

if.else.16:                                       ; preds = %if.else.11
  %13 = load i64, i64* %attr, align 8
  %call17 = call i64 @builtin_lisp_symbol(i32 119)
  %cmp18 = icmp eq i64 %13, %call17
  br i1 %cmp18, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %if.else.16
  store i32 3, i32* %xlfd, align 4
  br label %if.end

if.else.21:                                       ; preds = %if.else.16
  br label %for.end

if.end:                                           ; preds = %if.then.20
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %if.then.15
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.10
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then
  %14 = load i32, i32* %i, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %indices, i32 0, i64 %idxprom
  %15 = load i32, i32* %arrayidx, align 4
  %cmp25 = icmp ne i32 %15, 0
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.24
  br label %for.end

if.end.28:                                        ; preds = %if.end.24
  %16 = load i32, i32* %xlfd, align 4
  %17 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %17 to i64
  %arrayidx30 = getelementptr inbounds [4 x i32], [4 x i32]* %indices, i32 0, i64 %idxprom29
  store i32 %16, i32* %arrayidx30, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %18 = load i64, i64* %list, align 8
  %sub31 = sub nsw i64 %18, 3
  %19 = inttoptr i64 %sub31 to i8*
  %20 = bitcast i8* %19 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %20, i32 0, i32 1
  %cdr = bitcast %union.anon.10* %u to i64*
  %21 = load i64, i64* %cdr, align 8
  store i64 %21, i64* %list, align 8
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.27, %if.else.21, %land.end
  %23 = load i64, i64* %list, align 8
  %call32 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp33 = icmp eq i64 %23, %call32
  br i1 %cmp33, label %lor.lhs.false, label %if.then.38

lor.lhs.false:                                    ; preds = %for.end
  %24 = load i32, i32* %i, align 4
  %conv35 = sext i32 %24 to i64
  %cmp36 = icmp ne i64 %conv35, 4
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %lor.lhs.false, %for.end
  %25 = load i64, i64* %order.addr, align 8
  call void @signal_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i32 0, i32 0), i64 %25) #6
  unreachable

if.end.39:                                        ; preds = %lor.lhs.false
  store i32 0, i32* %i, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.51, %if.end.39
  %26 = load i32, i32* %i, align 4
  %conv41 = sext i32 %26 to i64
  %cmp42 = icmp ult i64 %conv41, 4
  br i1 %cmp42, label %for.body.44, label %for.end.53

for.body.44:                                      ; preds = %for.cond.40
  %27 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %27 to i64
  %arrayidx46 = getelementptr inbounds [4 x i32], [4 x i32]* %indices, i32 0, i64 %idxprom45
  %28 = load i32, i32* %arrayidx46, align 4
  %cmp47 = icmp eq i32 %28, 0
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %for.body.44
  %29 = load i64, i64* %order.addr, align 8
  call void @signal_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i32 0, i32 0), i64 %29) #6
  unreachable

if.end.50:                                        ; preds = %for.body.44
  br label %for.inc.51

for.inc.51:                                       ; preds = %if.end.50
  %30 = load i32, i32* %i, align 4
  %inc52 = add nsw i32 %30, 1
  store i32 %inc52, i32* %i, align 4
  br label %for.cond.40

for.end.53:                                       ; preds = %for.cond.40
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %indices, i32 0, i32 0
  %31 = bitcast i32* %arraydecay to i8*
  %call54 = call i32 @memcmp(i8* %31, i8* bitcast ([4 x i32]* @font_sort_order to i8*), i64 16) #7
  %cmp55 = icmp ne i32 %call54, 0
  br i1 %cmp55, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %for.end.53
  %32 = bitcast [4 x i32]* %indices to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([4 x i32]* @font_sort_order to i8*), i8* %32, i64 16, i32 16, i1 false)
  %call58 = call i64 @builtin_lisp_symbol(i32 0)
  call void @free_all_realized_faces(i64 %call58)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.57, %for.end.53
  call void @font_update_sort_order(i32* getelementptr inbounds ([4 x i32], [4 x i32]* @font_sort_order, i32 0, i32 0))
  %call60 = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call60
}

declare void @CHECK_LIST(i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #5

declare void @font_update_sort_order(i32*) #1

; Function Attrs: nounwind uwtable
define i64 @Finternal_set_alternative_font_family_alist(i64 %alist) #0 {
entry:
  %alist.addr = alloca i64, align 8
  %entry1 = alloca i64, align 8
  %tail = alloca i64, align 8
  %tail2 = alloca i64, align 8
  store i64 %alist, i64* %alist.addr, align 8
  %0 = load i64, i64* %alist.addr, align 8
  call void @CHECK_LIST(i64 %0)
  %1 = load i64, i64* %alist.addr, align 8
  %call = call i64 @Fcopy_sequence(i64 %1)
  store i64 %call, i64* %alist.addr, align 8
  %2 = load i64, i64* %alist.addr, align 8
  store i64 %2, i64* %tail, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.15, %entry
  %3 = load i64, i64* %tail, align 8
  %and = and i64 %3, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %for.body, label %for.end.19

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %tail, align 8
  %sub = sub nsw i64 %4, 3
  %5 = inttoptr i64 %sub to i8*
  %6 = bitcast i8* %5 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %6, i32 0, i32 0
  %7 = load i64, i64* %car, align 8
  store i64 %7, i64* %entry1, align 8
  %8 = load i64, i64* %entry1, align 8
  call void @CHECK_LIST(i64 %8)
  %9 = load i64, i64* %entry1, align 8
  %call3 = call i64 @Fcopy_sequence(i64 %9)
  store i64 %call3, i64* %entry1, align 8
  %10 = load i64, i64* %tail, align 8
  %11 = load i64, i64* %entry1, align 8
  call void @XSETCAR(i64 %10, i64 %11)
  %12 = load i64, i64* %entry1, align 8
  store i64 %12, i64* %tail2, align 8
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %13 = load i64, i64* %tail2, align 8
  %and5 = and i64 %13, 7
  %conv6 = trunc i64 %and5 to i32
  %cmp7 = icmp eq i32 %conv6, 3
  br i1 %cmp7, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.4
  %14 = load i64, i64* %tail2, align 8
  %15 = load i64, i64* %tail2, align 8
  %sub10 = sub nsw i64 %15, 3
  %16 = inttoptr i64 %sub10 to i8*
  %17 = bitcast i8* %16 to %struct.Lisp_Cons*
  %car11 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %17, i32 0, i32 0
  %18 = load i64, i64* %car11, align 8
  %call12 = call i64 @builtin_lisp_symbol(i32 0)
  %call13 = call i64 @Fintern(i64 %18, i64 %call12)
  call void @XSETCAR(i64 %14, i64 %call13)
  br label %for.inc

for.inc:                                          ; preds = %for.body.9
  %19 = load i64, i64* %tail2, align 8
  %sub14 = sub nsw i64 %19, 3
  %20 = inttoptr i64 %sub14 to i8*
  %21 = bitcast i8* %20 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %21, i32 0, i32 1
  %cdr = bitcast %union.anon.10* %u to i64*
  %22 = load i64, i64* %cdr, align 8
  store i64 %22, i64* %tail2, align 8
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.end
  %23 = load i64, i64* %tail, align 8
  %sub16 = sub nsw i64 %23, 3
  %24 = inttoptr i64 %sub16 to i8*
  %25 = bitcast i8* %24 to %struct.Lisp_Cons*
  %u17 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %25, i32 0, i32 1
  %cdr18 = bitcast %union.anon.10* %u17 to i64*
  %26 = load i64, i64* %cdr18, align 8
  store i64 %26, i64* %tail, align 8
  br label %for.cond

for.end.19:                                       ; preds = %for.cond
  %27 = load i64, i64* %alist.addr, align 8
  store i64 %27, i64* @Vface_alternative_font_family_alist, align 8
  %call20 = call i64 @builtin_lisp_symbol(i32 0)
  call void @free_all_realized_faces(i64 %call20)
  %28 = load i64, i64* %alist.addr, align 8
  ret i64 %28
}

declare i64 @Fcopy_sequence(i64) #1

declare i64 @Fintern(i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Finternal_set_alternative_font_registry_alist(i64 %alist) #0 {
entry:
  %alist.addr = alloca i64, align 8
  %entry1 = alloca i64, align 8
  %tail = alloca i64, align 8
  %tail2 = alloca i64, align 8
  store i64 %alist, i64* %alist.addr, align 8
  %0 = load i64, i64* %alist.addr, align 8
  call void @CHECK_LIST(i64 %0)
  %1 = load i64, i64* %alist.addr, align 8
  %call = call i64 @Fcopy_sequence(i64 %1)
  store i64 %call, i64* %alist.addr, align 8
  %2 = load i64, i64* %alist.addr, align 8
  store i64 %2, i64* %tail, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.14, %entry
  %3 = load i64, i64* %tail, align 8
  %and = and i64 %3, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %for.body, label %for.end.18

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %tail, align 8
  %sub = sub nsw i64 %4, 3
  %5 = inttoptr i64 %sub to i8*
  %6 = bitcast i8* %5 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %6, i32 0, i32 0
  %7 = load i64, i64* %car, align 8
  store i64 %7, i64* %entry1, align 8
  %8 = load i64, i64* %entry1, align 8
  call void @CHECK_LIST(i64 %8)
  %9 = load i64, i64* %entry1, align 8
  %call3 = call i64 @Fcopy_sequence(i64 %9)
  store i64 %call3, i64* %entry1, align 8
  %10 = load i64, i64* %tail, align 8
  %11 = load i64, i64* %entry1, align 8
  call void @XSETCAR(i64 %10, i64 %11)
  %12 = load i64, i64* %entry1, align 8
  store i64 %12, i64* %tail2, align 8
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %13 = load i64, i64* %tail2, align 8
  %and5 = and i64 %13, 7
  %conv6 = trunc i64 %and5 to i32
  %cmp7 = icmp eq i32 %conv6, 3
  br i1 %cmp7, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.4
  %14 = load i64, i64* %tail2, align 8
  %15 = load i64, i64* %tail2, align 8
  %sub10 = sub nsw i64 %15, 3
  %16 = inttoptr i64 %sub10 to i8*
  %17 = bitcast i8* %16 to %struct.Lisp_Cons*
  %car11 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %17, i32 0, i32 0
  %18 = load i64, i64* %car11, align 8
  %call12 = call i64 @Fdowncase(i64 %18)
  call void @XSETCAR(i64 %14, i64 %call12)
  br label %for.inc

for.inc:                                          ; preds = %for.body.9
  %19 = load i64, i64* %tail2, align 8
  %sub13 = sub nsw i64 %19, 3
  %20 = inttoptr i64 %sub13 to i8*
  %21 = bitcast i8* %20 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %21, i32 0, i32 1
  %cdr = bitcast %union.anon.10* %u to i64*
  %22 = load i64, i64* %cdr, align 8
  store i64 %22, i64* %tail2, align 8
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.end
  %23 = load i64, i64* %tail, align 8
  %sub15 = sub nsw i64 %23, 3
  %24 = inttoptr i64 %sub15 to i8*
  %25 = bitcast i8* %24 to %struct.Lisp_Cons*
  %u16 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %25, i32 0, i32 1
  %cdr17 = bitcast %union.anon.10* %u16 to i64*
  %26 = load i64, i64* %cdr17, align 8
  store i64 %26, i64* %tail, align 8
  br label %for.cond

for.end.18:                                       ; preds = %for.cond
  %27 = load i64, i64* %alist.addr, align 8
  store i64 %27, i64* @Vface_alternative_font_registry_alist, align 8
  %call19 = call i64 @builtin_lisp_symbol(i32 0)
  call void @free_all_realized_faces(i64 %call19)
  %28 = load i64, i64* %alist.addr, align 8
  ret i64 %28
}

declare i64 @Fdowncase(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Ftty_suppress_bold_inverse_default_colors(i64 %suppress) #0 {
entry:
  %suppress.addr = alloca i64, align 8
  store i64 %suppress, i64* %suppress.addr, align 8
  %0 = load i64, i64* %suppress.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  %lnot = xor i1 %cmp, true
  %frombool = zext i1 %lnot to i8
  store i8 %frombool, i8* @tty_suppress_bold_inverse_default_colors_p, align 1
  store i8 1, i8* @face_change, align 1
  %1 = load i64, i64* %suppress.addr, align 8
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define i32 @compute_char_face(%struct.frame* %f, i32 %ch, i64 %prop) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %ch.addr = alloca i32, align 4
  %prop.addr = alloca i64, align 8
  %face_id = alloca i32, align 4
  %face = alloca %struct.face*, align 8
  %attrs = alloca [19 x i64], align 16
  %default_face = alloca %struct.face*, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i32 %ch, i32* %ch.addr, align 4
  store i64 %prop, i64* %prop.addr, align 8
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_ = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 39
  %1 = load i64, i64* %enable_multibyte_characters_, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %ch.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, i64* %prop.addr, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp2 = icmp eq i64 %2, %call1
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.3
  %3 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %face_cache = getelementptr inbounds %struct.frame, %struct.frame* %3, i32 0, i32 20
  %4 = load %struct.face_cache*, %struct.face_cache** %face_cache, align 8
  %used = getelementptr inbounds %struct.face_cache, %struct.face_cache* %4, i32 0, i32 4
  %5 = load i32, i32* %used, align 4
  %add = add i32 %5, 0
  %cmp4 = icmp ult i32 0, %add
  br i1 %cmp4, label %cond.true.10, label %cond.false.12

cond.false:                                       ; preds = %if.then.3
  %6 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %face_cache5 = getelementptr inbounds %struct.frame, %struct.frame* %6, i32 0, i32 20
  %7 = load %struct.face_cache*, %struct.face_cache** %face_cache5, align 8
  %used6 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %7, i32 0, i32 4
  %8 = load i32, i32* %used6, align 4
  %conv = sext i32 %8 to i64
  %add7 = add i64 %conv, 0
  %cmp8 = icmp ult i64 0, %add7
  br i1 %cmp8, label %cond.true.10, label %cond.false.12

cond.true.10:                                     ; preds = %cond.false, %cond.true
  %9 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %face_cache11 = getelementptr inbounds %struct.frame, %struct.frame* %9, i32 0, i32 20
  %10 = load %struct.face_cache*, %struct.face_cache** %face_cache11, align 8
  %faces_by_id = getelementptr inbounds %struct.face_cache, %struct.face_cache* %10, i32 0, i32 2
  %11 = load %struct.face**, %struct.face*** %faces_by_id, align 8
  %arrayidx = getelementptr inbounds %struct.face*, %struct.face** %11, i64 0
  %12 = load %struct.face*, %struct.face** %arrayidx, align 8
  br label %cond.end

cond.false.12:                                    ; preds = %cond.false, %cond.true
  br label %cond.end

cond.end:                                         ; preds = %cond.false.12, %cond.true.10
  %cond = phi %struct.face* [ %12, %cond.true.10 ], [ null, %cond.false.12 ]
  store %struct.face* %cond, %struct.face** %face, align 8
  %13 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %14 = load %struct.face*, %struct.face** %face, align 8
  %15 = load i32, i32* %ch.addr, align 4
  %call13 = call i64 @builtin_lisp_symbol(i32 0)
  %call14 = call i32 @face_for_char(%struct.frame* %13, %struct.face* %14, i32 %15, i64 -1, i64 %call13)
  store i32 %call14, i32* %face_id, align 4
  br label %if.end.38

if.else:                                          ; preds = %if.end
  br i1 true, label %cond.true.15, label %cond.false.21

cond.true.15:                                     ; preds = %if.else
  %16 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %face_cache16 = getelementptr inbounds %struct.frame, %struct.frame* %16, i32 0, i32 20
  %17 = load %struct.face_cache*, %struct.face_cache** %face_cache16, align 8
  %used17 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %17, i32 0, i32 4
  %18 = load i32, i32* %used17, align 4
  %add18 = add i32 %18, 0
  %cmp19 = icmp ult i32 0, %add18
  br i1 %cmp19, label %cond.true.28, label %cond.false.32

cond.false.21:                                    ; preds = %if.else
  %19 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %face_cache22 = getelementptr inbounds %struct.frame, %struct.frame* %19, i32 0, i32 20
  %20 = load %struct.face_cache*, %struct.face_cache** %face_cache22, align 8
  %used23 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %20, i32 0, i32 4
  %21 = load i32, i32* %used23, align 4
  %conv24 = sext i32 %21 to i64
  %add25 = add i64 %conv24, 0
  %cmp26 = icmp ult i64 0, %add25
  br i1 %cmp26, label %cond.true.28, label %cond.false.32

cond.true.28:                                     ; preds = %cond.false.21, %cond.true.15
  %22 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %face_cache29 = getelementptr inbounds %struct.frame, %struct.frame* %22, i32 0, i32 20
  %23 = load %struct.face_cache*, %struct.face_cache** %face_cache29, align 8
  %faces_by_id30 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %23, i32 0, i32 2
  %24 = load %struct.face**, %struct.face*** %faces_by_id30, align 8
  %arrayidx31 = getelementptr inbounds %struct.face*, %struct.face** %24, i64 0
  %25 = load %struct.face*, %struct.face** %arrayidx31, align 8
  br label %cond.end.33

cond.false.32:                                    ; preds = %cond.false.21, %cond.true.15
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.false.32, %cond.true.28
  %cond34 = phi %struct.face* [ %25, %cond.true.28 ], [ null, %cond.false.32 ]
  store %struct.face* %cond34, %struct.face** %default_face, align 8
  %26 = bitcast [19 x i64]* %attrs to i8*
  %27 = load %struct.face*, %struct.face** %default_face, align 8
  %lface = getelementptr inbounds %struct.face, %struct.face* %27, i32 0, i32 0
  %28 = bitcast [19 x i64]* %lface to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %28, i64 152, i32 8, i1 false)
  %29 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %30 = load i64, i64* %prop.addr, align 8
  %arraydecay = getelementptr inbounds [19 x i64], [19 x i64]* %attrs, i32 0, i32 0
  %call35 = call zeroext i1 @merge_face_ref(%struct.frame* %29, i64 %30, i64* %arraydecay, i1 zeroext true, %struct.named_merge_point* null)
  %31 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %arraydecay36 = getelementptr inbounds [19 x i64], [19 x i64]* %attrs, i32 0, i32 0
  %call37 = call i32 @lookup_face(%struct.frame* %31, i64* %arraydecay36)
  store i32 %call37, i32* %face_id, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %cond.end.33, %cond.end
  %32 = load i32, i32* %face_id, align 4
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define i32 @face_at_buffer_position(%struct.window* %w, i64 %pos, i64* %endptr, i64 %limit, i1 zeroext %mouse, i32 %base_face_id) #0 {
entry:
  %retval = alloca i32, align 4
  %w.addr = alloca %struct.window*, align 8
  %pos.addr = alloca i64, align 8
  %endptr.addr = alloca i64*, align 8
  %limit.addr = alloca i64, align 8
  %mouse.addr = alloca i8, align 1
  %base_face_id.addr = alloca i32, align 4
  %f = alloca %struct.frame*, align 8
  %attrs = alloca [19 x i64], align 16
  %prop = alloca i64, align 8
  %position = alloca i64, align 8
  %i = alloca i64, align 8
  %noverlays = alloca i64, align 8
  %overlay_vec = alloca i64*, align 8
  %endpos = alloca i64, align 8
  %propname = alloca i64, align 8
  %limit1 = alloca i64, align 8
  %end = alloca i64, align 8
  %default_face = alloca %struct.face*, align 8
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  %next_overlay = alloca i64, align 8
  %maxlen = alloca i64, align 8
  %face_id = alloca i32, align 4
  %oend = alloca i64, align 8
  %oendpos = alloca i64, align 8
  store %struct.window* %w, %struct.window** %w.addr, align 8
  store i64 %pos, i64* %pos.addr, align 8
  store i64* %endptr, i64** %endptr.addr, align 8
  store i64 %limit, i64* %limit.addr, align 8
  %frombool = zext i1 %mouse to i8
  store i8 %frombool, i8* %mouse.addr, align 1
  store i32 %base_face_id, i32* %base_face_id.addr, align 4
  %0 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame = getelementptr inbounds %struct.window, %struct.window* %0, i32 0, i32 1
  %1 = load i64, i64* %frame, align 8
  %sub = sub nsw i64 %1, 5
  %2 = inttoptr i64 %sub to i8*
  %3 = bitcast i8* %2 to %struct.frame*
  store %struct.frame* %3, %struct.frame** %f, align 8
  %4 = load i8, i8* %mouse.addr, align 1
  %tobool = trunc i8 %4 to i1
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 687)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 397)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call, %cond.true ], [ %call1, %cond.false ]
  store i64 %cond, i64* %propname, align 8
  %5 = load i64, i64* %pos.addr, align 8
  %call2 = call i64 @make_natnum(i64 %5)
  store i64 %call2, i64* %position, align 8
  %6 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 79
  %7 = load i64, i64* %zv, align 8
  store i64 %7, i64* %endpos, align 8
  %8 = load i64, i64* %position, align 8
  %9 = load i64, i64* %propname, align 8
  %10 = load %struct.window*, %struct.window** %w.addr, align 8
  %contents = getelementptr inbounds %struct.window, %struct.window* %10, i32 0, i32 10
  %11 = load i64, i64* %contents, align 8
  %call3 = call i64 @Fget_text_property(i64 %8, i64 %9, i64 %11)
  store i64 %call3, i64* %prop, align 8
  %12 = load i64, i64* %limit.addr, align 8
  %13 = load i64, i64* %endpos, align 8
  %cmp = icmp slt i64 %12, %13
  br i1 %cmp, label %cond.true.4, label %cond.false.5

cond.true.4:                                      ; preds = %cond.end
  %14 = load i64, i64* %limit.addr, align 8
  br label %cond.end.6

cond.false.5:                                     ; preds = %cond.end
  %15 = load i64, i64* %endpos, align 8
  br label %cond.end.6

cond.end.6:                                       ; preds = %cond.false.5, %cond.true.4
  %cond7 = phi i64 [ %14, %cond.true.4 ], [ %15, %cond.false.5 ]
  %call8 = call i64 @make_natnum(i64 %cond7)
  store i64 %call8, i64* %limit1, align 8
  %16 = load i64, i64* %position, align 8
  %17 = load i64, i64* %propname, align 8
  %18 = load %struct.window*, %struct.window** %w.addr, align 8
  %contents9 = getelementptr inbounds %struct.window, %struct.window* %18, i32 0, i32 10
  %19 = load i64, i64* %contents9, align 8
  %20 = load i64, i64* %limit1, align 8
  %call10 = call i64 @Fnext_single_property_change(i64 %16, i64 %17, i64 %19, i64 %20)
  store i64 %call10, i64* %end, align 8
  %21 = load i64, i64* %end, align 8
  %and = and i64 %21, 7
  %conv = trunc i64 %and to i32
  %and11 = and i32 %conv, -5
  %cmp12 = icmp eq i32 %and11, 2
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.6
  %22 = load i64, i64* %end, align 8
  %shr = ashr i64 %22, 2
  store i64 %shr, i64* %endpos, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.6
  store i64 16384, i64* %sa_avail, align 8
  %call14 = call i64 @SPECPDL_INDEX()
  store i64 %call14, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  br label %do.body

do.body:                                          ; preds = %if.end
  store i64 40, i64* %maxlen, align 8
  br label %do.body.15

do.body.15:                                       ; preds = %do.body
  %23 = load i64, i64* %maxlen, align 8
  %24 = load i64, i64* %sa_avail, align 8
  %div = udiv i64 %24, 8
  %div16 = udiv i64 %div, 1
  %cmp17 = icmp ule i64 %23, %div16
  br i1 %cmp17, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %do.body.15
  %25 = load i64, i64* %maxlen, align 8
  %mul = mul i64 8, %25
  %26 = load i64, i64* %sa_avail, align 8
  %sub20 = sub i64 %26, %mul
  store i64 %sub20, i64* %sa_avail, align 8
  %27 = load i64, i64* %maxlen, align 8
  %mul21 = mul i64 8, %27
  %28 = alloca i8, i64 %mul21
  %29 = bitcast i8* %28 to i64*
  store i64* %29, i64** %overlay_vec, align 8
  br label %if.end.23

if.else:                                          ; preds = %do.body.15
  %30 = load i64, i64* %maxlen, align 8
  %call22 = call noalias i8* @xnmalloc(i64 %30, i64 8)
  %31 = bitcast i8* %call22 to i64*
  store i64* %31, i64** %overlay_vec, align 8
  store i8 1, i8* %sa_must_free, align 1
  %32 = load i64*, i64** %overlay_vec, align 8
  %33 = bitcast i64* %32 to i8*
  call void @record_unwind_protect_ptr(void (i8*)* @xfree, i8* %33)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.then.19
  br label %do.end

do.end:                                           ; preds = %if.end.23
  %34 = load i64, i64* %pos.addr, align 8
  %call24 = call i64 @overlays_at(i64 %34, i1 zeroext false, i64** %overlay_vec, i64* %maxlen, i64* %next_overlay, i64* null, i1 zeroext false)
  store i64 %call24, i64* %noverlays, align 8
  %35 = load i64, i64* %noverlays, align 8
  %36 = load i64, i64* %maxlen, align 8
  %cmp25 = icmp sgt i64 %35, %36
  br i1 %cmp25, label %if.then.27, label %if.end.42

if.then.27:                                       ; preds = %do.end
  %37 = load i64, i64* %noverlays, align 8
  store i64 %37, i64* %maxlen, align 8
  br label %do.body.28

do.body.28:                                       ; preds = %if.then.27
  %38 = load i64, i64* %maxlen, align 8
  %39 = load i64, i64* %sa_avail, align 8
  %div29 = udiv i64 %39, 8
  %div30 = udiv i64 %div29, 1
  %cmp31 = icmp ule i64 %38, %div30
  br i1 %cmp31, label %if.then.33, label %if.else.37

if.then.33:                                       ; preds = %do.body.28
  %40 = load i64, i64* %maxlen, align 8
  %mul34 = mul i64 8, %40
  %41 = load i64, i64* %sa_avail, align 8
  %sub35 = sub i64 %41, %mul34
  store i64 %sub35, i64* %sa_avail, align 8
  %42 = load i64, i64* %maxlen, align 8
  %mul36 = mul i64 8, %42
  %43 = alloca i8, i64 %mul36
  %44 = bitcast i8* %43 to i64*
  store i64* %44, i64** %overlay_vec, align 8
  br label %if.end.39

if.else.37:                                       ; preds = %do.body.28
  %45 = load i64, i64* %maxlen, align 8
  %call38 = call noalias i8* @xnmalloc(i64 %45, i64 8)
  %46 = bitcast i8* %call38 to i64*
  store i64* %46, i64** %overlay_vec, align 8
  store i8 1, i8* %sa_must_free, align 1
  %47 = load i64*, i64** %overlay_vec, align 8
  %48 = bitcast i64* %47 to i8*
  call void @record_unwind_protect_ptr(void (i8*)* @xfree, i8* %48)
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.37, %if.then.33
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  %49 = load i64, i64* %pos.addr, align 8
  %call41 = call i64 @overlays_at(i64 %49, i1 zeroext false, i64** %overlay_vec, i64* %maxlen, i64* %next_overlay, i64* null, i1 zeroext false)
  store i64 %call41, i64* %noverlays, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %do.end.40, %do.end
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  %50 = load i64, i64* %next_overlay, align 8
  %51 = load i64, i64* %endpos, align 8
  %cmp44 = icmp slt i64 %50, %51
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %do.end.43
  %52 = load i64, i64* %next_overlay, align 8
  store i64 %52, i64* %endpos, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %do.end.43
  %53 = load i64, i64* %endpos, align 8
  %54 = load i64*, i64** %endptr.addr, align 8
  store i64 %53, i64* %54, align 8
  %55 = load i32, i32* %base_face_id.addr, align 4
  %cmp48 = icmp sge i32 %55, 0
  br i1 %cmp48, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %if.end.47
  %56 = load i32, i32* %base_face_id.addr, align 4
  store i32 %56, i32* %face_id, align 4
  br label %if.end.59

if.else.51:                                       ; preds = %if.end.47
  %57 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 91), align 8
  %call52 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp53 = icmp eq i64 %57, %call52
  br i1 %cmp53, label %if.then.55, label %if.else.56

if.then.55:                                       ; preds = %if.else.51
  store i32 0, i32* %face_id, align 4
  br label %if.end.58

if.else.56:                                       ; preds = %if.else.51
  %58 = load %struct.frame*, %struct.frame** %f, align 8
  %call57 = call i32 @lookup_basic_face(%struct.frame* %58, i32 0)
  store i32 %call57, i32* %face_id, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.56, %if.then.55
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.then.50
  br i1 true, label %cond.true.60, label %cond.false.64

cond.true.60:                                     ; preds = %if.end.59
  %59 = load i32, i32* %face_id, align 4
  %add = add i32 %59, 0
  %60 = load %struct.frame*, %struct.frame** %f, align 8
  %face_cache = getelementptr inbounds %struct.frame, %struct.frame* %60, i32 0, i32 20
  %61 = load %struct.face_cache*, %struct.face_cache** %face_cache, align 8
  %used = getelementptr inbounds %struct.face_cache, %struct.face_cache* %61, i32 0, i32 4
  %62 = load i32, i32* %used, align 4
  %add61 = add i32 %62, 0
  %cmp62 = icmp ult i32 %add, %add61
  br i1 %cmp62, label %cond.true.73, label %cond.false.75

cond.false.64:                                    ; preds = %if.end.59
  %63 = load i32, i32* %face_id, align 4
  %conv65 = sext i32 %63 to i64
  %add66 = add i64 %conv65, 0
  %64 = load %struct.frame*, %struct.frame** %f, align 8
  %face_cache67 = getelementptr inbounds %struct.frame, %struct.frame* %64, i32 0, i32 20
  %65 = load %struct.face_cache*, %struct.face_cache** %face_cache67, align 8
  %used68 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %65, i32 0, i32 4
  %66 = load i32, i32* %used68, align 4
  %conv69 = sext i32 %66 to i64
  %add70 = add i64 %conv69, 0
  %cmp71 = icmp ult i64 %add66, %add70
  br i1 %cmp71, label %cond.true.73, label %cond.false.75

cond.true.73:                                     ; preds = %cond.false.64, %cond.true.60
  %67 = load i32, i32* %face_id, align 4
  %idxprom = sext i32 %67 to i64
  %68 = load %struct.frame*, %struct.frame** %f, align 8
  %face_cache74 = getelementptr inbounds %struct.frame, %struct.frame* %68, i32 0, i32 20
  %69 = load %struct.face_cache*, %struct.face_cache** %face_cache74, align 8
  %faces_by_id = getelementptr inbounds %struct.face_cache, %struct.face_cache* %69, i32 0, i32 2
  %70 = load %struct.face**, %struct.face*** %faces_by_id, align 8
  %arrayidx = getelementptr inbounds %struct.face*, %struct.face** %70, i64 %idxprom
  %71 = load %struct.face*, %struct.face** %arrayidx, align 8
  br label %cond.end.76

cond.false.75:                                    ; preds = %cond.false.64, %cond.true.60
  br label %cond.end.76

cond.end.76:                                      ; preds = %cond.false.75, %cond.true.73
  %cond77 = phi %struct.face* [ %71, %cond.true.73 ], [ null, %cond.false.75 ]
  store %struct.face* %cond77, %struct.face** %default_face, align 8
  %72 = load i64, i64* %noverlays, align 8
  %cmp78 = icmp eq i64 %72, 0
  br i1 %cmp78, label %land.lhs.true, label %if.end.91

land.lhs.true:                                    ; preds = %cond.end.76
  %73 = load i64, i64* %prop, align 8
  %call80 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp81 = icmp eq i64 %73, %call80
  br i1 %cmp81, label %if.then.83, label %if.end.91

if.then.83:                                       ; preds = %land.lhs.true
  br label %do.body.84

do.body.84:                                       ; preds = %if.then.83
  %74 = load i8, i8* %sa_must_free, align 1
  %tobool85 = trunc i8 %74 to i1
  br i1 %tobool85, label %if.then.86, label %if.end.89

if.then.86:                                       ; preds = %do.body.84
  store i8 0, i8* %sa_must_free, align 1
  %75 = load i64, i64* %sa_count, align 8
  %call87 = call i64 @builtin_lisp_symbol(i32 0)
  %call88 = call i64 @unbind_to(i64 %75, i64 %call87)
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.86, %do.body.84
  br label %do.end.90

do.end.90:                                        ; preds = %if.end.89
  %76 = load %struct.face*, %struct.face** %default_face, align 8
  %id = getelementptr inbounds %struct.face, %struct.face* %76, i32 0, i32 1
  %77 = load i32, i32* %id, align 4
  store i32 %77, i32* %retval
  br label %return

if.end.91:                                        ; preds = %land.lhs.true, %cond.end.76
  %78 = bitcast [19 x i64]* %attrs to i8*
  %79 = load %struct.face*, %struct.face** %default_face, align 8
  %lface = getelementptr inbounds %struct.face, %struct.face* %79, i32 0, i32 0
  %80 = bitcast [19 x i64]* %lface to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %78, i8* %80, i64 152, i32 8, i1 false)
  %81 = load i64, i64* %prop, align 8
  %call92 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp93 = icmp eq i64 %81, %call92
  br i1 %cmp93, label %if.end.97, label %if.then.95

if.then.95:                                       ; preds = %if.end.91
  %82 = load %struct.frame*, %struct.frame** %f, align 8
  %83 = load i64, i64* %prop, align 8
  %arraydecay = getelementptr inbounds [19 x i64], [19 x i64]* %attrs, i32 0, i32 0
  %call96 = call zeroext i1 @merge_face_ref(%struct.frame* %82, i64 %83, i64* %arraydecay, i1 zeroext true, %struct.named_merge_point* null)
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.95, %if.end.91
  %84 = load i64*, i64** %overlay_vec, align 8
  %85 = load i64, i64* %noverlays, align 8
  %86 = load %struct.window*, %struct.window** %w.addr, align 8
  %call98 = call i64 @sort_overlays(i64* %84, i64 %85, %struct.window* %86)
  store i64 %call98, i64* %noverlays, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.97
  %87 = load i64, i64* %i, align 8
  %88 = load i64, i64* %noverlays, align 8
  %cmp99 = icmp slt i64 %87, %88
  br i1 %cmp99, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %89 = load i64, i64* %i, align 8
  %90 = load i64*, i64** %overlay_vec, align 8
  %arrayidx101 = getelementptr inbounds i64, i64* %90, i64 %89
  %91 = load i64, i64* %arrayidx101, align 8
  %92 = load i64, i64* %propname, align 8
  %call102 = call i64 @Foverlay_get(i64 %91, i64 %92)
  store i64 %call102, i64* %prop, align 8
  %93 = load i64, i64* %prop, align 8
  %call103 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp104 = icmp eq i64 %93, %call103
  br i1 %cmp104, label %if.end.109, label %if.then.106

if.then.106:                                      ; preds = %for.body
  %94 = load %struct.frame*, %struct.frame** %f, align 8
  %95 = load i64, i64* %prop, align 8
  %arraydecay107 = getelementptr inbounds [19 x i64], [19 x i64]* %attrs, i32 0, i32 0
  %call108 = call zeroext i1 @merge_face_ref(%struct.frame* %94, i64 %95, i64* %arraydecay107, i1 zeroext true, %struct.named_merge_point* null)
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.106, %for.body
  %96 = load i64, i64* %i, align 8
  %97 = load i64*, i64** %overlay_vec, align 8
  %arrayidx110 = getelementptr inbounds i64, i64* %97, i64 %96
  %98 = load i64, i64* %arrayidx110, align 8
  %call111 = call %struct.Lisp_Overlay* @XOVERLAY(i64 %98)
  %end112 = getelementptr inbounds %struct.Lisp_Overlay, %struct.Lisp_Overlay* %call111, i32 0, i32 3
  %99 = load i64, i64* %end112, align 8
  store i64 %99, i64* %oend, align 8
  %100 = load i64, i64* %oend, align 8
  %and113 = and i64 %100, 7
  %conv114 = trunc i64 %and113 to i32
  %cmp115 = icmp eq i32 %conv114, 1
  br i1 %cmp115, label %land.lhs.true.117, label %cond.false.123

land.lhs.true.117:                                ; preds = %if.end.109
  %101 = load i64, i64* %oend, align 8
  %call118 = call i32 @XMISCTYPE(i64 %101)
  %cmp119 = icmp eq i32 %call118, 24236
  br i1 %cmp119, label %cond.true.121, label %cond.false.123

cond.true.121:                                    ; preds = %land.lhs.true.117
  %102 = load i64, i64* %oend, align 8
  %call122 = call i64 @marker_position(i64 %102)
  br label %cond.end.124

cond.false.123:                                   ; preds = %land.lhs.true.117, %if.end.109
  call void @emacs_abort() #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end.124

cond.end.124:                                     ; preds = %103, %cond.true.121
  %cond125 = phi i64 [ %call122, %cond.true.121 ], [ 0, %103 ]
  store i64 %cond125, i64* %oendpos, align 8
  %104 = load i64, i64* %oendpos, align 8
  %105 = load i64, i64* %endpos, align 8
  %cmp126 = icmp slt i64 %104, %105
  br i1 %cmp126, label %if.then.128, label %if.end.129

if.then.128:                                      ; preds = %cond.end.124
  %106 = load i64, i64* %oendpos, align 8
  store i64 %106, i64* %endpos, align 8
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.128, %cond.end.124
  br label %for.inc

for.inc:                                          ; preds = %if.end.129
  %107 = load i64, i64* %i, align 8
  %inc = add nsw i64 %107, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %108 = load i64, i64* %endpos, align 8
  %109 = load i64*, i64** %endptr.addr, align 8
  store i64 %108, i64* %109, align 8
  br label %do.body.130

do.body.130:                                      ; preds = %for.end
  %110 = load i8, i8* %sa_must_free, align 1
  %tobool131 = trunc i8 %110 to i1
  br i1 %tobool131, label %if.then.132, label %if.end.135

if.then.132:                                      ; preds = %do.body.130
  store i8 0, i8* %sa_must_free, align 1
  %111 = load i64, i64* %sa_count, align 8
  %call133 = call i64 @builtin_lisp_symbol(i32 0)
  %call134 = call i64 @unbind_to(i64 %111, i64 %call133)
  br label %if.end.135

if.end.135:                                       ; preds = %if.then.132, %do.body.130
  br label %do.end.136

do.end.136:                                       ; preds = %if.end.135
  %112 = load %struct.frame*, %struct.frame** %f, align 8
  %arraydecay137 = getelementptr inbounds [19 x i64], [19 x i64]* %attrs, i32 0, i32 0
  %call138 = call i32 @lookup_face(%struct.frame* %112, i64* %arraydecay137)
  store i32 %call138, i32* %retval
  br label %return

return:                                           ; preds = %do.end.136, %do.end.90
  %113 = load i32, i32* %retval
  ret i32 %113
}

declare i64 @make_natnum(i64) #1

declare i64 @Fget_text_property(i64, i64, i64) #1

declare i64 @Fnext_single_property_change(i64, i64, i64, i64) #1

declare noalias i8* @xnmalloc(i64, i64) #1

declare void @record_unwind_protect_ptr(void (i8*)*, i8*) #1

declare void @xfree(i8*) #1

declare i64 @overlays_at(i64, i1 zeroext, i64**, i64*, i64*, i64*, i1 zeroext) #1

declare i64 @sort_overlays(i64*, i64, %struct.window*) #1

declare i64 @Foverlay_get(i64, i64) #1

declare %struct.Lisp_Overlay* @XOVERLAY(i64) #1

declare i32 @XMISCTYPE(i64) #1

declare i64 @marker_position(i64) #1

; Function Attrs: nounwind uwtable
define i32 @face_for_overlay_string(%struct.window* %w, i64 %pos, i64* %endptr, i64 %limit, i1 zeroext %mouse, i64 %overlay) #0 {
entry:
  %retval = alloca i32, align 4
  %w.addr = alloca %struct.window*, align 8
  %pos.addr = alloca i64, align 8
  %endptr.addr = alloca i64*, align 8
  %limit.addr = alloca i64, align 8
  %mouse.addr = alloca i8, align 1
  %overlay.addr = alloca i64, align 8
  %f = alloca %struct.frame*, align 8
  %attrs = alloca [19 x i64], align 16
  %prop = alloca i64, align 8
  %position = alloca i64, align 8
  %endpos = alloca i64, align 8
  %propname = alloca i64, align 8
  %limit1 = alloca i64, align 8
  %end = alloca i64, align 8
  %default_face = alloca %struct.face*, align 8
  store %struct.window* %w, %struct.window** %w.addr, align 8
  store i64 %pos, i64* %pos.addr, align 8
  store i64* %endptr, i64** %endptr.addr, align 8
  store i64 %limit, i64* %limit.addr, align 8
  %frombool = zext i1 %mouse to i8
  store i8 %frombool, i8* %mouse.addr, align 1
  store i64 %overlay, i64* %overlay.addr, align 8
  %0 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame = getelementptr inbounds %struct.window, %struct.window* %0, i32 0, i32 1
  %1 = load i64, i64* %frame, align 8
  %sub = sub nsw i64 %1, 5
  %2 = inttoptr i64 %sub to i8*
  %3 = bitcast i8* %2 to %struct.frame*
  store %struct.frame* %3, %struct.frame** %f, align 8
  %4 = load i8, i8* %mouse.addr, align 1
  %tobool = trunc i8 %4 to i1
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 687)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 397)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call, %cond.true ], [ %call1, %cond.false ]
  store i64 %cond, i64* %propname, align 8
  %5 = load i64, i64* %pos.addr, align 8
  %call2 = call i64 @make_natnum(i64 %5)
  store i64 %call2, i64* %position, align 8
  %6 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 79
  %7 = load i64, i64* %zv, align 8
  store i64 %7, i64* %endpos, align 8
  %8 = load i64, i64* %position, align 8
  %9 = load i64, i64* %propname, align 8
  %10 = load %struct.window*, %struct.window** %w.addr, align 8
  %contents = getelementptr inbounds %struct.window, %struct.window* %10, i32 0, i32 10
  %11 = load i64, i64* %contents, align 8
  %call3 = call i64 @Fget_text_property(i64 %8, i64 %9, i64 %11)
  store i64 %call3, i64* %prop, align 8
  %12 = load i64, i64* %limit.addr, align 8
  %13 = load i64, i64* %endpos, align 8
  %cmp = icmp slt i64 %12, %13
  br i1 %cmp, label %cond.true.4, label %cond.false.5

cond.true.4:                                      ; preds = %cond.end
  %14 = load i64, i64* %limit.addr, align 8
  br label %cond.end.6

cond.false.5:                                     ; preds = %cond.end
  %15 = load i64, i64* %endpos, align 8
  br label %cond.end.6

cond.end.6:                                       ; preds = %cond.false.5, %cond.true.4
  %cond7 = phi i64 [ %14, %cond.true.4 ], [ %15, %cond.false.5 ]
  %call8 = call i64 @make_natnum(i64 %cond7)
  store i64 %call8, i64* %limit1, align 8
  %16 = load i64, i64* %position, align 8
  %17 = load i64, i64* %propname, align 8
  %18 = load %struct.window*, %struct.window** %w.addr, align 8
  %contents9 = getelementptr inbounds %struct.window, %struct.window* %18, i32 0, i32 10
  %19 = load i64, i64* %contents9, align 8
  %20 = load i64, i64* %limit1, align 8
  %call10 = call i64 @Fnext_single_property_change(i64 %16, i64 %17, i64 %19, i64 %20)
  store i64 %call10, i64* %end, align 8
  %21 = load i64, i64* %end, align 8
  %and = and i64 %21, 7
  %conv = trunc i64 %and to i32
  %and11 = and i32 %conv, -5
  %cmp12 = icmp eq i32 %and11, 2
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.6
  %22 = load i64, i64* %end, align 8
  %shr = ashr i64 %22, 2
  store i64 %shr, i64* %endpos, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.6
  %23 = load i64, i64* %endpos, align 8
  %24 = load i64*, i64** %endptr.addr, align 8
  store i64 %23, i64* %24, align 8
  %25 = load i64, i64* %prop, align 8
  %call14 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp15 = icmp eq i64 %25, %call14
  br i1 %cmp15, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %if.end
  %26 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 91), align 8
  %call17 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp18 = icmp eq i64 %26, %call17
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end.21:                                        ; preds = %land.lhs.true, %if.end
  br i1 true, label %cond.true.22, label %cond.false.27

cond.true.22:                                     ; preds = %if.end.21
  %27 = load %struct.frame*, %struct.frame** %f, align 8
  %call23 = call i32 @lookup_basic_face(%struct.frame* %27, i32 0)
  %add = add i32 %call23, 0
  %28 = load %struct.frame*, %struct.frame** %f, align 8
  %face_cache = getelementptr inbounds %struct.frame, %struct.frame* %28, i32 0, i32 20
  %29 = load %struct.face_cache*, %struct.face_cache** %face_cache, align 8
  %used = getelementptr inbounds %struct.face_cache, %struct.face_cache* %29, i32 0, i32 4
  %30 = load i32, i32* %used, align 4
  %add24 = add i32 %30, 0
  %cmp25 = icmp ult i32 %add, %add24
  br i1 %cmp25, label %cond.true.37, label %cond.false.40

cond.false.27:                                    ; preds = %if.end.21
  %31 = load %struct.frame*, %struct.frame** %f, align 8
  %call28 = call i32 @lookup_basic_face(%struct.frame* %31, i32 0)
  %conv29 = sext i32 %call28 to i64
  %add30 = add i64 %conv29, 0
  %32 = load %struct.frame*, %struct.frame** %f, align 8
  %face_cache31 = getelementptr inbounds %struct.frame, %struct.frame* %32, i32 0, i32 20
  %33 = load %struct.face_cache*, %struct.face_cache** %face_cache31, align 8
  %used32 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %33, i32 0, i32 4
  %34 = load i32, i32* %used32, align 4
  %conv33 = sext i32 %34 to i64
  %add34 = add i64 %conv33, 0
  %cmp35 = icmp ult i64 %add30, %add34
  br i1 %cmp35, label %cond.true.37, label %cond.false.40

cond.true.37:                                     ; preds = %cond.false.27, %cond.true.22
  %35 = load %struct.frame*, %struct.frame** %f, align 8
  %call38 = call i32 @lookup_basic_face(%struct.frame* %35, i32 0)
  %idxprom = sext i32 %call38 to i64
  %36 = load %struct.frame*, %struct.frame** %f, align 8
  %face_cache39 = getelementptr inbounds %struct.frame, %struct.frame* %36, i32 0, i32 20
  %37 = load %struct.face_cache*, %struct.face_cache** %face_cache39, align 8
  %faces_by_id = getelementptr inbounds %struct.face_cache, %struct.face_cache* %37, i32 0, i32 2
  %38 = load %struct.face**, %struct.face*** %faces_by_id, align 8
  %arrayidx = getelementptr inbounds %struct.face*, %struct.face** %38, i64 %idxprom
  %39 = load %struct.face*, %struct.face** %arrayidx, align 8
  br label %cond.end.41

cond.false.40:                                    ; preds = %cond.false.27, %cond.true.22
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.40, %cond.true.37
  %cond42 = phi %struct.face* [ %39, %cond.true.37 ], [ null, %cond.false.40 ]
  store %struct.face* %cond42, %struct.face** %default_face, align 8
  %40 = bitcast [19 x i64]* %attrs to i8*
  %41 = load %struct.face*, %struct.face** %default_face, align 8
  %lface = getelementptr inbounds %struct.face, %struct.face* %41, i32 0, i32 0
  %42 = bitcast [19 x i64]* %lface to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %42, i64 152, i32 8, i1 false)
  %43 = load i64, i64* %prop, align 8
  %call43 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp44 = icmp eq i64 %43, %call43
  br i1 %cmp44, label %if.end.48, label %if.then.46

if.then.46:                                       ; preds = %cond.end.41
  %44 = load %struct.frame*, %struct.frame** %f, align 8
  %45 = load i64, i64* %prop, align 8
  %arraydecay = getelementptr inbounds [19 x i64], [19 x i64]* %attrs, i32 0, i32 0
  %call47 = call zeroext i1 @merge_face_ref(%struct.frame* %44, i64 %45, i64* %arraydecay, i1 zeroext true, %struct.named_merge_point* null)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.46, %cond.end.41
  %46 = load i64, i64* %endpos, align 8
  %47 = load i64*, i64** %endptr.addr, align 8
  store i64 %46, i64* %47, align 8
  %48 = load %struct.frame*, %struct.frame** %f, align 8
  %arraydecay49 = getelementptr inbounds [19 x i64], [19 x i64]* %attrs, i32 0, i32 0
  %call50 = call i32 @lookup_face(%struct.frame* %48, i64* %arraydecay49)
  store i32 %call50, i32* %retval
  br label %return

return:                                           ; preds = %if.end.48, %if.then.20
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define i32 @face_at_string_position(%struct.window* %w, i64 %string, i64 %pos, i64 %bufpos, i64* %endptr, i32 %base_face_id, i1 zeroext %mouse_p) #0 {
entry:
  %retval = alloca i32, align 4
  %w.addr = alloca %struct.window*, align 8
  %string.addr = alloca i64, align 8
  %pos.addr = alloca i64, align 8
  %bufpos.addr = alloca i64, align 8
  %endptr.addr = alloca i64*, align 8
  %base_face_id.addr = alloca i32, align 4
  %mouse_p.addr = alloca i8, align 1
  %prop = alloca i64, align 8
  %position = alloca i64, align 8
  %end = alloca i64, align 8
  %limit = alloca i64, align 8
  %f = alloca %struct.frame*, align 8
  %attrs = alloca [19 x i64], align 16
  %base_face = alloca %struct.face*, align 8
  %multibyte_p = alloca i8, align 1
  %prop_name = alloca i64, align 8
  store %struct.window* %w, %struct.window** %w.addr, align 8
  store i64 %string, i64* %string.addr, align 8
  store i64 %pos, i64* %pos.addr, align 8
  store i64 %bufpos, i64* %bufpos.addr, align 8
  store i64* %endptr, i64** %endptr.addr, align 8
  store i32 %base_face_id, i32* %base_face_id.addr, align 4
  %frombool = zext i1 %mouse_p to i8
  store i8 %frombool, i8* %mouse_p.addr, align 1
  %0 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame = getelementptr inbounds %struct.window, %struct.window* %0, i32 0, i32 1
  %1 = load i64, i64* %frame, align 8
  %sub = sub nsw i64 %1, 5
  %2 = inttoptr i64 %sub to i8*
  %3 = bitcast i8* %2 to %struct.frame*
  store %struct.frame* %3, %struct.frame** %f, align 8
  %4 = load i64, i64* %string.addr, align 8
  %call = call zeroext i1 @STRING_MULTIBYTE(i64 %4)
  %frombool1 = zext i1 %call to i8
  store i8 %frombool1, i8* %multibyte_p, align 1
  %5 = load i8, i8* %mouse_p.addr, align 1
  %tobool = trunc i8 %5 to i1
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call2 = call i64 @builtin_lisp_symbol(i32 687)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call3 = call i64 @builtin_lisp_symbol(i32 397)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call2, %cond.true ], [ %call3, %cond.false ]
  store i64 %cond, i64* %prop_name, align 8
  %6 = load i64, i64* %pos.addr, align 8
  %call4 = call i64 @make_natnum(i64 %6)
  store i64 %call4, i64* %position, align 8
  %7 = load i64, i64* %position, align 8
  %8 = load i64, i64* %prop_name, align 8
  %9 = load i64, i64* %string.addr, align 8
  %call5 = call i64 @Fget_text_property(i64 %7, i64 %8, i64 %9)
  store i64 %call5, i64* %prop, align 8
  %10 = load i64, i64* %string.addr, align 8
  %call6 = call i64 @SCHARS(i64 %10)
  %call7 = call i64 @make_natnum(i64 %call6)
  store i64 %call7, i64* %limit, align 8
  %11 = load i64, i64* %position, align 8
  %12 = load i64, i64* %prop_name, align 8
  %13 = load i64, i64* %string.addr, align 8
  %14 = load i64, i64* %limit, align 8
  %call8 = call i64 @Fnext_single_property_change(i64 %11, i64 %12, i64 %13, i64 %14)
  store i64 %call8, i64* %end, align 8
  %15 = load i64, i64* %end, align 8
  %and = and i64 %15, 7
  %conv = trunc i64 %and to i32
  %and9 = and i32 %conv, -5
  %cmp = icmp eq i32 %and9, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %16 = load i64, i64* %end, align 8
  %shr = ashr i64 %16, 2
  %17 = load i64*, i64** %endptr.addr, align 8
  store i64 %shr, i64* %17, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end
  %18 = load i64*, i64** %endptr.addr, align 8
  store i64 -1, i64* %18, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br i1 true, label %cond.true.11, label %cond.false.15

cond.true.11:                                     ; preds = %if.end
  %19 = load i32, i32* %base_face_id.addr, align 4
  %add = add i32 %19, 0
  %20 = load %struct.frame*, %struct.frame** %f, align 8
  %face_cache = getelementptr inbounds %struct.frame, %struct.frame* %20, i32 0, i32 20
  %21 = load %struct.face_cache*, %struct.face_cache** %face_cache, align 8
  %used = getelementptr inbounds %struct.face_cache, %struct.face_cache* %21, i32 0, i32 4
  %22 = load i32, i32* %used, align 4
  %add12 = add i32 %22, 0
  %cmp13 = icmp ult i32 %add, %add12
  br i1 %cmp13, label %cond.true.24, label %cond.false.26

cond.false.15:                                    ; preds = %if.end
  %23 = load i32, i32* %base_face_id.addr, align 4
  %conv16 = zext i32 %23 to i64
  %add17 = add i64 %conv16, 0
  %24 = load %struct.frame*, %struct.frame** %f, align 8
  %face_cache18 = getelementptr inbounds %struct.frame, %struct.frame* %24, i32 0, i32 20
  %25 = load %struct.face_cache*, %struct.face_cache** %face_cache18, align 8
  %used19 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %25, i32 0, i32 4
  %26 = load i32, i32* %used19, align 4
  %conv20 = sext i32 %26 to i64
  %add21 = add i64 %conv20, 0
  %cmp22 = icmp ult i64 %add17, %add21
  br i1 %cmp22, label %cond.true.24, label %cond.false.26

cond.true.24:                                     ; preds = %cond.false.15, %cond.true.11
  %27 = load i32, i32* %base_face_id.addr, align 4
  %idxprom = zext i32 %27 to i64
  %28 = load %struct.frame*, %struct.frame** %f, align 8
  %face_cache25 = getelementptr inbounds %struct.frame, %struct.frame* %28, i32 0, i32 20
  %29 = load %struct.face_cache*, %struct.face_cache** %face_cache25, align 8
  %faces_by_id = getelementptr inbounds %struct.face_cache, %struct.face_cache* %29, i32 0, i32 2
  %30 = load %struct.face**, %struct.face*** %faces_by_id, align 8
  %arrayidx = getelementptr inbounds %struct.face*, %struct.face** %30, i64 %idxprom
  %31 = load %struct.face*, %struct.face** %arrayidx, align 8
  br label %cond.end.27

cond.false.26:                                    ; preds = %cond.false.15, %cond.true.11
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.26, %cond.true.24
  %cond28 = phi %struct.face* [ %31, %cond.true.24 ], [ null, %cond.false.26 ]
  store %struct.face* %cond28, %struct.face** %base_face, align 8
  %32 = load i64, i64* %prop, align 8
  %call29 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp30 = icmp eq i64 %32, %call29
  br i1 %cmp30, label %land.lhs.true, label %if.end.40

land.lhs.true:                                    ; preds = %cond.end.27
  %33 = load i8, i8* %multibyte_p, align 1
  %tobool32 = trunc i8 %33 to i1
  br i1 %tobool32, label %if.then.39, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %34 = load %struct.frame*, %struct.frame** %f, align 8
  %output_method = getelementptr inbounds %struct.frame, %struct.frame* %34, i32 0, i32 26
  %35 = bitcast i48* %output_method to i64*
  %bf.load = load i64, i64* %35, align 8
  %bf.lshr = lshr i64 %bf.load, 23
  %bf.clear = and i64 %bf.lshr, 7
  %bf.cast = trunc i64 %bf.clear to i32
  %cmp34 = icmp eq i32 %bf.cast, 2
  br i1 %cmp34, label %lor.lhs.false.36, label %if.then.39

lor.lhs.false.36:                                 ; preds = %lor.lhs.false
  %36 = load %struct.face*, %struct.face** %base_face, align 8
  %37 = load %struct.face*, %struct.face** %base_face, align 8
  %ascii_face = getelementptr inbounds %struct.face, %struct.face* %37, i32 0, i32 17
  %38 = load %struct.face*, %struct.face** %ascii_face, align 8
  %cmp37 = icmp eq %struct.face* %36, %38
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %lor.lhs.false.36, %lor.lhs.false, %land.lhs.true
  %39 = load %struct.face*, %struct.face** %base_face, align 8
  %id = getelementptr inbounds %struct.face, %struct.face* %39, i32 0, i32 1
  %40 = load i32, i32* %id, align 4
  store i32 %40, i32* %retval
  br label %return

if.end.40:                                        ; preds = %lor.lhs.false.36, %cond.end.27
  %41 = bitcast [19 x i64]* %attrs to i8*
  %42 = load %struct.face*, %struct.face** %base_face, align 8
  %lface = getelementptr inbounds %struct.face, %struct.face* %42, i32 0, i32 0
  %43 = bitcast [19 x i64]* %lface to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %43, i64 152, i32 8, i1 false)
  %44 = load i64, i64* %prop, align 8
  %call41 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp42 = icmp eq i64 %44, %call41
  br i1 %cmp42, label %if.end.46, label %if.then.44

if.then.44:                                       ; preds = %if.end.40
  %45 = load %struct.frame*, %struct.frame** %f, align 8
  %46 = load i64, i64* %prop, align 8
  %arraydecay = getelementptr inbounds [19 x i64], [19 x i64]* %attrs, i32 0, i32 0
  %call45 = call zeroext i1 @merge_face_ref(%struct.frame* %45, i64 %46, i64* %arraydecay, i1 zeroext true, %struct.named_merge_point* null)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.end.40
  %47 = load %struct.frame*, %struct.frame** %f, align 8
  %arraydecay47 = getelementptr inbounds [19 x i64], [19 x i64]* %attrs, i32 0, i32 0
  %call48 = call i32 @lookup_face(%struct.frame* %47, i64* %arraydecay47)
  store i32 %call48, i32* %retval
  br label %return

return:                                           ; preds = %if.end.46, %if.then.39
  %48 = load i32, i32* %retval
  ret i32 %48
}

declare zeroext i1 @STRING_MULTIBYTE(i64) #1

; Function Attrs: nounwind uwtable
define i32 @merge_faces(%struct.frame* %f, i64 %face_name, i32 %face_id, i32 %base_face_id) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct.frame*, align 8
  %face_name.addr = alloca i64, align 8
  %face_id.addr = alloca i32, align 4
  %base_face_id.addr = alloca i32, align 4
  %attrs = alloca [19 x i64], align 16
  %base_face = alloca %struct.face*, align 8
  %face = alloca %struct.face*, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %face_name, i64* %face_name.addr, align 8
  store i32 %face_id, i32* %face_id.addr, align 4
  store i32 %base_face_id, i32* %base_face_id.addr, align 4
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %0 = load i32, i32* %base_face_id.addr, align 4
  %add = add i32 %0, 0
  %1 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %face_cache = getelementptr inbounds %struct.frame, %struct.frame* %1, i32 0, i32 20
  %2 = load %struct.face_cache*, %struct.face_cache** %face_cache, align 8
  %used = getelementptr inbounds %struct.face_cache, %struct.face_cache* %2, i32 0, i32 4
  %3 = load i32, i32* %used, align 4
  %add1 = add i32 %3, 0
  %cmp = icmp ult i32 %add, %add1
  br i1 %cmp, label %cond.true.9, label %cond.false.11

cond.false:                                       ; preds = %entry
  %4 = load i32, i32* %base_face_id.addr, align 4
  %conv = sext i32 %4 to i64
  %add2 = add i64 %conv, 0
  %5 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %face_cache3 = getelementptr inbounds %struct.frame, %struct.frame* %5, i32 0, i32 20
  %6 = load %struct.face_cache*, %struct.face_cache** %face_cache3, align 8
  %used4 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %6, i32 0, i32 4
  %7 = load i32, i32* %used4, align 4
  %conv5 = sext i32 %7 to i64
  %add6 = add i64 %conv5, 0
  %cmp7 = icmp ult i64 %add2, %add6
  br i1 %cmp7, label %cond.true.9, label %cond.false.11

cond.true.9:                                      ; preds = %cond.false, %cond.true
  %8 = load i32, i32* %base_face_id.addr, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %face_cache10 = getelementptr inbounds %struct.frame, %struct.frame* %9, i32 0, i32 20
  %10 = load %struct.face_cache*, %struct.face_cache** %face_cache10, align 8
  %faces_by_id = getelementptr inbounds %struct.face_cache, %struct.face_cache* %10, i32 0, i32 2
  %11 = load %struct.face**, %struct.face*** %faces_by_id, align 8
  %arrayidx = getelementptr inbounds %struct.face*, %struct.face** %11, i64 %idxprom
  %12 = load %struct.face*, %struct.face** %arrayidx, align 8
  br label %cond.end

cond.false.11:                                    ; preds = %cond.false, %cond.true
  br label %cond.end

cond.end:                                         ; preds = %cond.false.11, %cond.true.9
  %cond = phi %struct.face* [ %12, %cond.true.9 ], [ null, %cond.false.11 ]
  store %struct.face* %cond, %struct.face** %base_face, align 8
  %13 = load %struct.face*, %struct.face** %base_face, align 8
  %tobool = icmp ne %struct.face* %13, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  %14 = load i32, i32* %base_face_id.addr, align 4
  store i32 %14, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %15 = load i64, i64* %face_name.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 901)
  %cmp12 = icmp eq i64 %15, %call
  br i1 %cmp12, label %if.then.14, label %if.end.31

if.then.14:                                       ; preds = %if.end
  %16 = load i32, i32* %face_id.addr, align 4
  %cmp15 = icmp slt i32 %16, 0
  br i1 %cmp15, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.14
  %17 = load i32, i32* %face_id.addr, align 4
  %conv17 = sext i32 %17 to i64
  %18 = load i64, i64* @lface_id_to_name_size, align 8
  %cmp18 = icmp sge i64 %conv17, %18
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %lor.lhs.false, %if.then.14
  %19 = load i32, i32* %base_face_id.addr, align 4
  store i32 %19, i32* %retval
  br label %return

if.end.21:                                        ; preds = %lor.lhs.false
  %20 = load i32, i32* %face_id.addr, align 4
  %idxprom22 = sext i32 %20 to i64
  %21 = load i64*, i64** @lface_id_to_name, align 8
  %arrayidx23 = getelementptr inbounds i64, i64* %21, i64 %idxprom22
  %22 = load i64, i64* %arrayidx23, align 8
  store i64 %22, i64* %face_name.addr, align 8
  %23 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %24 = load i64, i64* %face_name.addr, align 8
  %25 = load i32, i32* %base_face_id.addr, align 4
  %call24 = call i32 @lookup_derived_face(%struct.frame* %23, i64 %24, i32 %25, i1 zeroext false)
  store i32 %call24, i32* %face_id.addr, align 4
  %26 = load i32, i32* %face_id.addr, align 4
  %cmp25 = icmp sge i32 %26, 0
  br i1 %cmp25, label %cond.true.27, label %cond.false.28

cond.true.27:                                     ; preds = %if.end.21
  %27 = load i32, i32* %face_id.addr, align 4
  br label %cond.end.29

cond.false.28:                                    ; preds = %if.end.21
  %28 = load i32, i32* %base_face_id.addr, align 4
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.false.28, %cond.true.27
  %cond30 = phi i32 [ %27, %cond.true.27 ], [ %28, %cond.false.28 ]
  store i32 %cond30, i32* %retval
  br label %return

if.end.31:                                        ; preds = %if.end
  %29 = bitcast [19 x i64]* %attrs to i8*
  %30 = load %struct.face*, %struct.face** %base_face, align 8
  %lface = getelementptr inbounds %struct.face, %struct.face* %30, i32 0, i32 0
  %31 = bitcast [19 x i64]* %lface to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %31, i64 152, i32 8, i1 false)
  %32 = load i64, i64* %face_name.addr, align 8
  %call32 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp33 = icmp eq i64 %32, %call32
  br i1 %cmp33, label %if.else, label %if.then.35

if.then.35:                                       ; preds = %if.end.31
  %33 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %34 = load i64, i64* %face_name.addr, align 8
  %arraydecay = getelementptr inbounds [19 x i64], [19 x i64]* %attrs, i32 0, i32 0
  %call36 = call zeroext i1 @merge_named_face(%struct.frame* %33, i64 %34, i64* %arraydecay, %struct.named_merge_point* null)
  br i1 %call36, label %if.end.38, label %if.then.37

if.then.37:                                       ; preds = %if.then.35
  %35 = load i32, i32* %base_face_id.addr, align 4
  store i32 %35, i32* %retval
  br label %return

if.end.38:                                        ; preds = %if.then.35
  br label %if.end.73

if.else:                                          ; preds = %if.end.31
  %36 = load i32, i32* %face_id.addr, align 4
  %cmp39 = icmp slt i32 %36, 0
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.else
  %37 = load i32, i32* %base_face_id.addr, align 4
  store i32 %37, i32* %retval
  br label %return

if.end.42:                                        ; preds = %if.else
  br i1 true, label %cond.true.43, label %cond.false.50

cond.true.43:                                     ; preds = %if.end.42
  %38 = load i32, i32* %face_id.addr, align 4
  %add44 = add i32 %38, 0
  %39 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %face_cache45 = getelementptr inbounds %struct.frame, %struct.frame* %39, i32 0, i32 20
  %40 = load %struct.face_cache*, %struct.face_cache** %face_cache45, align 8
  %used46 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %40, i32 0, i32 4
  %41 = load i32, i32* %used46, align 4
  %add47 = add i32 %41, 0
  %cmp48 = icmp ult i32 %add44, %add47
  br i1 %cmp48, label %cond.true.59, label %cond.false.64

cond.false.50:                                    ; preds = %if.end.42
  %42 = load i32, i32* %face_id.addr, align 4
  %conv51 = sext i32 %42 to i64
  %add52 = add i64 %conv51, 0
  %43 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %face_cache53 = getelementptr inbounds %struct.frame, %struct.frame* %43, i32 0, i32 20
  %44 = load %struct.face_cache*, %struct.face_cache** %face_cache53, align 8
  %used54 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %44, i32 0, i32 4
  %45 = load i32, i32* %used54, align 4
  %conv55 = sext i32 %45 to i64
  %add56 = add i64 %conv55, 0
  %cmp57 = icmp ult i64 %add52, %add56
  br i1 %cmp57, label %cond.true.59, label %cond.false.64

cond.true.59:                                     ; preds = %cond.false.50, %cond.true.43
  %46 = load i32, i32* %face_id.addr, align 4
  %idxprom60 = sext i32 %46 to i64
  %47 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %face_cache61 = getelementptr inbounds %struct.frame, %struct.frame* %47, i32 0, i32 20
  %48 = load %struct.face_cache*, %struct.face_cache** %face_cache61, align 8
  %faces_by_id62 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %48, i32 0, i32 2
  %49 = load %struct.face**, %struct.face*** %faces_by_id62, align 8
  %arrayidx63 = getelementptr inbounds %struct.face*, %struct.face** %49, i64 %idxprom60
  %50 = load %struct.face*, %struct.face** %arrayidx63, align 8
  br label %cond.end.65

cond.false.64:                                    ; preds = %cond.false.50, %cond.true.43
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.64, %cond.true.59
  %cond66 = phi %struct.face* [ %50, %cond.true.59 ], [ null, %cond.false.64 ]
  store %struct.face* %cond66, %struct.face** %face, align 8
  %51 = load %struct.face*, %struct.face** %face, align 8
  %tobool67 = icmp ne %struct.face* %51, null
  br i1 %tobool67, label %if.end.69, label %if.then.68

if.then.68:                                       ; preds = %cond.end.65
  %52 = load i32, i32* %base_face_id.addr, align 4
  store i32 %52, i32* %retval
  br label %return

if.end.69:                                        ; preds = %cond.end.65
  %53 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %54 = load %struct.face*, %struct.face** %face, align 8
  %lface70 = getelementptr inbounds %struct.face, %struct.face* %54, i32 0, i32 0
  %arraydecay71 = getelementptr inbounds [19 x i64], [19 x i64]* %lface70, i32 0, i32 0
  %arraydecay72 = getelementptr inbounds [19 x i64], [19 x i64]* %attrs, i32 0, i32 0
  call void @merge_face_vectors(%struct.frame* %53, i64* %arraydecay71, i64* %arraydecay72, %struct.named_merge_point* null)
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.69, %if.end.38
  %55 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %arraydecay74 = getelementptr inbounds [19 x i64], [19 x i64]* %attrs, i32 0, i32 0
  %call75 = call i32 @lookup_face(%struct.frame* %55, i64* %arraydecay74)
  store i32 %call75, i32* %retval
  br label %return

return:                                           ; preds = %if.end.73, %if.then.68, %if.then.41, %if.then.37, %cond.end.29, %if.then.20, %if.then
  %56 = load i32, i32* %retval
  ret i32 %56
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @merge_named_face(%struct.frame* %f, i64 %face_name, i64* %to, %struct.named_merge_point* %named_merge_points) #0 {
entry:
  %retval = alloca i1, align 1
  %f.addr = alloca %struct.frame*, align 8
  %face_name.addr = alloca i64, align 8
  %to.addr = alloca i64*, align 8
  %named_merge_points.addr = alloca %struct.named_merge_point*, align 8
  %named_merge_point = alloca %struct.named_merge_point, align 8
  %from = alloca [19 x i64], align 16
  %ok = alloca i8, align 1
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %face_name, i64* %face_name.addr, align 8
  store i64* %to, i64** %to.addr, align 8
  store %struct.named_merge_point* %named_merge_points, %struct.named_merge_point** %named_merge_points.addr, align 8
  %0 = load i64, i64* %face_name.addr, align 8
  %call = call zeroext i1 @push_named_merge_point(%struct.named_merge_point* %named_merge_point, i64 %0, i32 0, %struct.named_merge_point** %named_merge_points.addr)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %2 = load i64, i64* %face_name.addr, align 8
  %arraydecay = getelementptr inbounds [19 x i64], [19 x i64]* %from, i32 0, i32 0
  %3 = load %struct.named_merge_point*, %struct.named_merge_point** %named_merge_points.addr, align 8
  %call1 = call zeroext i1 @get_lface_attributes(%struct.frame* %1, i64 %2, i64* %arraydecay, i1 zeroext false, %struct.named_merge_point* %3)
  %frombool = zext i1 %call1 to i8
  store i8 %frombool, i8* %ok, align 1
  %4 = load i8, i8* %ok, align 1
  %tobool = trunc i8 %4 to i1
  br i1 %tobool, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %5 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %arraydecay3 = getelementptr inbounds [19 x i64], [19 x i64]* %from, i32 0, i32 0
  %6 = load i64*, i64** %to.addr, align 8
  %7 = load %struct.named_merge_point*, %struct.named_merge_point** %named_merge_points.addr, align 8
  call void @merge_face_vectors(%struct.frame* %5, i64* %arraydecay3, i64* %6, %struct.named_merge_point* %7)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %8 = load i8, i8* %ok, align 1
  %tobool4 = trunc i8 %8 to i1
  store i1 %tobool4, i1* %retval
  br label %return

if.else:                                          ; preds = %entry
  store i1 false, i1* %retval
  br label %return

return:                                           ; preds = %if.else, %if.end
  %9 = load i1, i1* %retval
  ret i1 %9
}

; Function Attrs: nounwind uwtable
define void @syms_of_xfaces() #0 {
entry:
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %call2 = call i64 @Fcons(i64 %call, i64 %call1)
  %call3 = call i64 @list1(i64 %call2)
  store i64 %call3, i64* @Vparam_value_alist, align 8
  call void @staticpro(i64* @Vparam_value_alist)
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call4, i64* @Vface_alternative_font_family_alist, align 8
  call void @staticpro(i64* @Vface_alternative_font_family_alist)
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call5, i64* @Vface_alternative_font_registry_alist, align 8
  call void @staticpro(i64* @Vface_alternative_font_registry_alist)
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sinternal_make_lisp_face to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sinternal_lisp_face_p to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sinternal_set_lisp_face_attribute to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sinternal_set_lisp_face_attribute_from_resource to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Scolor_gray_p to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Scolor_supported_p to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sface_attribute_relative_p to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Smerge_face_attribute to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sinternal_get_lisp_face_attribute to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sinternal_lisp_face_attribute_values to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sinternal_lisp_face_equal_p to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sinternal_lisp_face_empty_p to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sinternal_copy_lisp_face to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sinternal_merge_in_global_face to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sface_font to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sframe_face_alist to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sdisplay_supports_face_attributes_p to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Scolor_distance to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sinternal_set_font_selection_order to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sinternal_set_alternative_font_family_alist to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sinternal_set_alternative_font_registry_alist to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sface_attributes_as_vector to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sclear_face_cache to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Stty_suppress_bold_inverse_default_colors to %struct.Lisp_Subr*))
  br label %do.body

do.body:                                          ; preds = %entry
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_xfaces.o_fwd, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 90))
  br label %do.end

do.end:                                           ; preds = %do.body
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call6, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 90), align 8
  br label %do.body.7

do.body.7:                                        ; preds = %do.end
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_xfaces.o_fwd.28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 87))
  br label %do.end.8

do.end.8:                                         ; preds = %do.body.7
  %call9 = call i64 @build_pure_c_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0))
  store i64 %call9, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 87), align 8
  br label %do.body.10

do.body.10:                                       ; preds = %do.end.8
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_xfaces.o_fwd.31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 310))
  br label %do.end.11

do.end.11:                                        ; preds = %do.body.10
  %call12 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call12, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 310), align 8
  br label %do.body.13

do.body.13:                                       ; preds = %do.end.11
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_xfaces.o_fwd.33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 259))
  br label %do.end.14

do.end.14:                                        ; preds = %do.body.13
  %call15 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call15, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 259), align 8
  br label %do.body.16

do.body.16:                                       ; preds = %do.end.14
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_xfaces.o_fwd.35, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.36, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 89))
  br label %do.end.17

do.end.17:                                        ; preds = %do.body.16
  %call18 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call18, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 89), align 8
  br label %do.body.19

do.body.19:                                       ; preds = %do.end.17
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_xfaces.o_fwd.37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 91))
  br label %do.end.20

do.end.20:                                        ; preds = %do.body.19
  %call21 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call21, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 91), align 8
  br label %do.body.22

do.body.22:                                       ; preds = %do.end.20
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_xfaces.o_fwd.39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.40, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 88))
  br label %do.end.23

do.end.23:                                        ; preds = %do.body.22
  %call24 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call24, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 88), align 8
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sbitmap_spec_p to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sx_list_fonts to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sinternal_face_x_get_resource to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sx_family_fonts to %struct.Lisp_Subr*))
  ret void
}

declare i64 @list1(i64) #1

declare void @staticpro(i64*) #1

declare void @defsubr(%struct.Lisp_Subr*) #1

declare void @defvar_lisp(%struct.Lisp_Objfwd*, i8*, i64*) #1

declare i64 @build_pure_c_string(i8*) #1

declare i64 @Fxw_display_color_p(i64) #1

declare i64 @Fx_display_grayscale_p(i64) #1

; Function Attrs: nounwind uwtable
define internal zeroext i1 @tty_defined_color(%struct.frame* %f, i8* %color_name, %struct.XColor* %color_def, i1 zeroext %alloc) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %color_name.addr = alloca i8*, align 8
  %color_def.addr = alloca %struct.XColor*, align 8
  %alloc.addr = alloca i8, align 1
  %status = alloca i8, align 1
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i8* %color_name, i8** %color_name.addr, align 8
  store %struct.XColor* %color_def, %struct.XColor** %color_def.addr, align 8
  %frombool = zext i1 %alloc to i8
  store i8 %frombool, i8* %alloc.addr, align 1
  store i8 1, i8* %status, align 1
  %0 = load %struct.XColor*, %struct.XColor** %color_def.addr, align 8
  %pixel = getelementptr inbounds %struct.XColor, %struct.XColor* %0, i32 0, i32 0
  store i64 -1, i64* %pixel, align 8
  %1 = load %struct.XColor*, %struct.XColor** %color_def.addr, align 8
  %red = getelementptr inbounds %struct.XColor, %struct.XColor* %1, i32 0, i32 1
  store i16 0, i16* %red, align 2
  %2 = load %struct.XColor*, %struct.XColor** %color_def.addr, align 8
  %blue = getelementptr inbounds %struct.XColor, %struct.XColor* %2, i32 0, i32 3
  store i16 0, i16* %blue, align 2
  %3 = load %struct.XColor*, %struct.XColor** %color_def.addr, align 8
  %green = getelementptr inbounds %struct.XColor, %struct.XColor* %3, i32 0, i32 2
  store i16 0, i16* %green, align 2
  %4 = load i8*, i8** %color_name.addr, align 8
  %5 = load i8, i8* %4, align 1
  %tobool = icmp ne i8 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %7 = load i8*, i8** %color_name.addr, align 8
  %call = call i64 @build_string(i8* %7)
  %8 = load %struct.XColor*, %struct.XColor** %color_def.addr, align 8
  %call1 = call zeroext i1 @tty_lookup_color(%struct.frame* %6, i64 %call, %struct.XColor* %8, %struct.XColor* null)
  %frombool2 = zext i1 %call1 to i8
  store i8 %frombool2, i8* %status, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.XColor*, %struct.XColor** %color_def.addr, align 8
  %pixel3 = getelementptr inbounds %struct.XColor, %struct.XColor* %9, i32 0, i32 0
  %10 = load i64, i64* %pixel3, align 8
  %cmp = icmp eq i64 %10, -1
  br i1 %cmp, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %if.end
  %11 = load i8*, i8** %color_name.addr, align 8
  %12 = load i8, i8* %11, align 1
  %conv = sext i8 %12 to i32
  %tobool4 = icmp ne i32 %conv, 0
  br i1 %tobool4, label %if.then.5, label %if.end.18

if.then.5:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %color_name.addr, align 8
  %call6 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i32 0, i32 0)) #7
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then.5
  %14 = load %struct.XColor*, %struct.XColor** %color_def.addr, align 8
  %pixel10 = getelementptr inbounds %struct.XColor, %struct.XColor* %14, i32 0, i32 0
  store i64 -2, i64* %pixel10, align 8
  br label %if.end.17

if.else:                                          ; preds = %if.then.5
  %15 = load i8*, i8** %color_name.addr, align 8
  %call11 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0)) #7
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.else
  %16 = load %struct.XColor*, %struct.XColor** %color_def.addr, align 8
  %pixel15 = getelementptr inbounds %struct.XColor, %struct.XColor* %16, i32 0, i32 0
  store i64 -3, i64* %pixel15, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.else
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then.9
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %land.lhs.true, %if.end
  %17 = load %struct.XColor*, %struct.XColor** %color_def.addr, align 8
  %pixel19 = getelementptr inbounds %struct.XColor, %struct.XColor* %17, i32 0, i32 0
  %18 = load i64, i64* %pixel19, align 8
  %cmp20 = icmp ne i64 %18, -1
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.18
  store i8 1, i8* %status, align 1
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.end.18
  %19 = load i8, i8* %status, align 1
  %tobool24 = trunc i8 %19 to i1
  ret i1 %tobool24
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @tty_lookup_color(%struct.frame* %f, i64 %color, %struct.XColor* %tty_color, %struct.XColor* %std_color) #0 {
entry:
  %retval = alloca i1, align 1
  %f.addr = alloca %struct.frame*, align 8
  %color.addr = alloca i64, align 8
  %tty_color.addr = alloca %struct.XColor*, align 8
  %std_color.addr = alloca %struct.XColor*, align 8
  %frame = alloca i64, align 8
  %color_desc = alloca i64, align 8
  %rgb = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %color, i64* %color.addr, align 8
  store %struct.XColor* %tty_color, %struct.XColor** %tty_color.addr, align 8
  store %struct.XColor* %std_color, %struct.XColor** %std_color.addr, align 8
  %0 = load i64, i64* %color.addr, align 8
  %call = call zeroext i1 @STRINGP(i64 %0)
  br i1 %call, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 941)
  %call2 = call i64 @Ffboundp(i64 %call1)
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %call2, %call3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i1 false, i1* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %1 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %2 = bitcast %struct.frame* %1 to i8*
  %call4 = call i64 @make_lisp_ptr(i8* %2, i32 5)
  store i64 %call4, i64* %frame, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 941)
  %3 = load i64, i64* %color.addr, align 8
  %4 = load i64, i64* %frame, align 8
  %call6 = call i64 @call2(i64 %call5, i64 %3, i64 %4)
  store i64 %call6, i64* %color_desc, align 8
  %5 = load i64, i64* %color_desc, align 8
  %and = and i64 %5, 7
  %conv = trunc i64 %and to i32
  %cmp7 = icmp eq i32 %conv, 3
  br i1 %cmp7, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %6 = load i64, i64* %color_desc, align 8
  %sub = sub nsw i64 %6, 3
  %7 = inttoptr i64 %sub to i8*
  %8 = bitcast i8* %7 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %8, i32 0, i32 1
  %cdr = bitcast %union.anon.10* %u to i64*
  %9 = load i64, i64* %cdr, align 8
  %and9 = and i64 %9, 7
  %conv10 = trunc i64 %and9 to i32
  %cmp11 = icmp eq i32 %conv10, 3
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %land.lhs.true
  %10 = load i64, i64* %color_desc, align 8
  %sub14 = sub nsw i64 %10, 3
  %11 = inttoptr i64 %sub14 to i8*
  %12 = bitcast i8* %11 to %struct.Lisp_Cons*
  %u15 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %12, i32 0, i32 1
  %cdr16 = bitcast %union.anon.10* %u15 to i64*
  %13 = load i64, i64* %cdr16, align 8
  %sub17 = sub nsw i64 %13, 3
  %14 = inttoptr i64 %sub17 to i8*
  %15 = bitcast i8* %14 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %15, i32 0, i32 0
  %16 = load i64, i64* %car, align 8
  %and18 = and i64 %16, 7
  %conv19 = trunc i64 %and18 to i32
  %and20 = and i32 %conv19, -5
  %cmp21 = icmp eq i32 %and20, 2
  br i1 %cmp21, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %if.then.13
  store i1 false, i1* %retval
  br label %return

if.end.24:                                        ; preds = %if.then.13
  %17 = load i64, i64* %color_desc, align 8
  %sub25 = sub nsw i64 %17, 3
  %18 = inttoptr i64 %sub25 to i8*
  %19 = bitcast i8* %18 to %struct.Lisp_Cons*
  %u26 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %19, i32 0, i32 1
  %cdr27 = bitcast %union.anon.10* %u26 to i64*
  %20 = load i64, i64* %cdr27, align 8
  %sub28 = sub nsw i64 %20, 3
  %21 = inttoptr i64 %sub28 to i8*
  %22 = bitcast i8* %21 to %struct.Lisp_Cons*
  %car29 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %22, i32 0, i32 0
  %23 = load i64, i64* %car29, align 8
  %shr = ashr i64 %23, 2
  %24 = load %struct.XColor*, %struct.XColor** %tty_color.addr, align 8
  %pixel = getelementptr inbounds %struct.XColor, %struct.XColor* %24, i32 0, i32 0
  store i64 %shr, i64* %pixel, align 8
  %25 = load i64, i64* %color_desc, align 8
  %sub30 = sub nsw i64 %25, 3
  %26 = inttoptr i64 %sub30 to i8*
  %27 = bitcast i8* %26 to %struct.Lisp_Cons*
  %u31 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %27, i32 0, i32 1
  %cdr32 = bitcast %union.anon.10* %u31 to i64*
  %28 = load i64, i64* %cdr32, align 8
  %sub33 = sub nsw i64 %28, 3
  %29 = inttoptr i64 %sub33 to i8*
  %30 = bitcast i8* %29 to %struct.Lisp_Cons*
  %u34 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %30, i32 0, i32 1
  %cdr35 = bitcast %union.anon.10* %u34 to i64*
  %31 = load i64, i64* %cdr35, align 8
  store i64 %31, i64* %rgb, align 8
  %32 = load i64, i64* %rgb, align 8
  %33 = load %struct.XColor*, %struct.XColor** %tty_color.addr, align 8
  %call36 = call zeroext i1 @parse_rgb_list(i64 %32, %struct.XColor* %33)
  br i1 %call36, label %if.end.38, label %if.then.37

if.then.37:                                       ; preds = %if.end.24
  store i1 false, i1* %retval
  br label %return

if.end.38:                                        ; preds = %if.end.24
  %34 = load %struct.XColor*, %struct.XColor** %std_color.addr, align 8
  %tobool = icmp ne %struct.XColor* %34, null
  br i1 %tobool, label %if.then.39, label %if.end.63

if.then.39:                                       ; preds = %if.end.38
  %35 = load %struct.XColor*, %struct.XColor** %std_color.addr, align 8
  %36 = load %struct.XColor*, %struct.XColor** %tty_color.addr, align 8
  %37 = bitcast %struct.XColor* %35 to i8*
  %38 = bitcast %struct.XColor* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 16, i32 8, i1 false)
  %39 = load i64, i64* %color_desc, align 8
  %sub40 = sub nsw i64 %39, 3
  %40 = inttoptr i64 %sub40 to i8*
  %41 = bitcast i8* %40 to %struct.Lisp_Cons*
  %car41 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %41, i32 0, i32 0
  %42 = load i64, i64* %car41, align 8
  %call42 = call zeroext i1 @STRINGP(i64 %42)
  br i1 %call42, label %lor.lhs.false.43, label %land.lhs.true.50

lor.lhs.false.43:                                 ; preds = %if.then.39
  %43 = load i64, i64* %color.addr, align 8
  %44 = load i64, i64* %color_desc, align 8
  %sub44 = sub nsw i64 %44, 3
  %45 = inttoptr i64 %sub44 to i8*
  %46 = bitcast i8* %45 to %struct.Lisp_Cons*
  %car45 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %46, i32 0, i32 0
  %47 = load i64, i64* %car45, align 8
  %call46 = call i64 @Fstring_equal(i64 %43, i64 %47)
  %call47 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp48 = icmp eq i64 %call46, %call47
  br i1 %cmp48, label %land.lhs.true.50, label %if.end.62

land.lhs.true.50:                                 ; preds = %lor.lhs.false.43, %if.then.39
  %call51 = call i64 @builtin_lisp_symbol(i32 943)
  %call52 = call i64 @Ffboundp(i64 %call51)
  %call53 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp54 = icmp eq i64 %call52, %call53
  br i1 %cmp54, label %if.end.62, label %if.then.56

if.then.56:                                       ; preds = %land.lhs.true.50
  %call57 = call i64 @builtin_lisp_symbol(i32 943)
  %48 = load i64, i64* %color.addr, align 8
  %call58 = call i64 @call1(i64 %call57, i64 %48)
  store i64 %call58, i64* %rgb, align 8
  %49 = load i64, i64* %rgb, align 8
  %50 = load %struct.XColor*, %struct.XColor** %std_color.addr, align 8
  %call59 = call zeroext i1 @parse_rgb_list(i64 %49, %struct.XColor* %50)
  br i1 %call59, label %if.end.61, label %if.then.60

if.then.60:                                       ; preds = %if.then.56
  store i1 false, i1* %retval
  br label %return

if.end.61:                                        ; preds = %if.then.56
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %land.lhs.true.50, %lor.lhs.false.43
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.end.38
  store i1 true, i1* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %if.end
  %call64 = call i64 @intern(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i32 0, i32 0))
  %call65 = call i64 @Fsymbol_value(i64 %call64)
  %call66 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp67 = icmp eq i64 %call65, %call66
  br i1 %cmp67, label %if.then.69, label %if.else.70

if.then.69:                                       ; preds = %if.else
  store i1 true, i1* %retval
  br label %return

if.else.70:                                       ; preds = %if.else
  store i1 false, i1* %retval
  br label %return

return:                                           ; preds = %if.else.70, %if.then.69, %if.end.63, %if.then.60, %if.then.37, %if.then.23, %if.then
  %51 = load i1, i1* %retval
  ret i1 %51
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

declare i64 @Fstring_equal(i64, i64) #1

declare i64 @Fsymbol_value(i64) #1

declare void @add_to_log(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i64 @lface_from_face_name_no_resolve(%struct.frame* %f, i64 %face_name, i1 zeroext %signal_p) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %face_name.addr = alloca i64, align 8
  %signal_p.addr = alloca i8, align 1
  %lface = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %face_name, i64* %face_name.addr, align 8
  %frombool = zext i1 %signal_p to i8
  store i8 %frombool, i8* %signal_p.addr, align 1
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %tobool = icmp ne %struct.frame* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %face_name.addr, align 8
  %2 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %face_alist = getelementptr inbounds %struct.frame, %struct.frame* %2, i32 0, i32 12
  %3 = load i64, i64* %face_alist, align 8
  %call = call i64 @assq_no_quit(i64 %1, i64 %3)
  store i64 %call, i64* %lface, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load i64, i64* %face_name.addr, align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 90), align 8
  %call1 = call i64 @assq_no_quit(i64 %4, i64 %5)
  store i64 %call1, i64* %lface, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i64, i64* %lface, align 8
  %and = and i64 %6, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.end
  %7 = load i64, i64* %lface, align 8
  %sub = sub nsw i64 %7, 3
  %8 = inttoptr i64 %sub to i8*
  %9 = bitcast i8* %8 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %9, i32 0, i32 1
  %cdr = bitcast %union.anon.10* %u to i64*
  %10 = load i64, i64* %cdr, align 8
  store i64 %10, i64* %lface, align 8
  br label %if.end.8

if.else.4:                                        ; preds = %if.end
  %11 = load i8, i8* %signal_p.addr, align 1
  %tobool5 = trunc i8 %11 to i1
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.else.4
  %12 = load i64, i64* %face_name.addr, align 8
  call void @signal_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46, i32 0, i32 0), i64 %12) #6
  unreachable

if.end.7:                                         ; preds = %if.else.4
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.then.3
  %13 = load i64, i64* %lface, align 8
  ret i64 %13
}

; Function Attrs: noreturn
declare void @xsignal1(i64, i64) #2

declare double @XFLOAT_DATA(i64) #1

declare i64 @make_float(double) #1

declare zeroext i1 @FUNCTIONP(i64) #1

declare i64 @safe_call1(i64, i64) #1

declare i64 @SYMBOL_NAME(i64) #1

declare zeroext i1 @FONT_SPEC_P(i64) #1

declare i64 @merge_font_spec(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal zeroext i1 @face_attr_equal_p(i64 %v1, i64 %v2) #0 {
entry:
  %retval = alloca i1, align 1
  %v1.addr = alloca i64, align 8
  %v2.addr = alloca i64, align 8
  store i64 %v1, i64* %v1.addr, align 8
  store i64 %v2, i64* %v2.addr, align 8
  %0 = load i64, i64* %v1.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %1 = load i64, i64* %v2.addr, align 8
  %and1 = and i64 %1, 7
  %conv2 = trunc i64 %and1 to i32
  %cmp = icmp ne i32 %conv, %conv2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %v1.addr, align 8
  %3 = load i64, i64* %v2.addr, align 8
  %cmp4 = icmp eq i64 %2, %3
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i1 true, i1* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %4 = load i64, i64* %v1.addr, align 8
  %and8 = and i64 %4, 7
  %conv9 = trunc i64 %and8 to i32
  switch i32 %conv9, label %sw.default [
    i32 4, label %sw.bb
    i32 2, label %sw.bb.21
    i32 6, label %sw.bb.21
    i32 0, label %sw.bb.21
  ]

sw.bb:                                            ; preds = %if.end.7
  %5 = load i64, i64* %v1.addr, align 8
  %call = call i64 @SBYTES(i64 %5)
  %6 = load i64, i64* %v2.addr, align 8
  %call10 = call i64 @SBYTES(i64 %6)
  %cmp11 = icmp ne i64 %call, %call10
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %sw.bb
  store i1 false, i1* %retval
  br label %return

if.end.14:                                        ; preds = %sw.bb
  %7 = load i64, i64* %v1.addr, align 8
  %call15 = call i8* @SDATA(i64 %7)
  %8 = load i64, i64* %v2.addr, align 8
  %call16 = call i8* @SDATA(i64 %8)
  %9 = load i64, i64* %v1.addr, align 8
  %call17 = call i64 @SBYTES(i64 %9)
  %call18 = call i32 @memcmp(i8* %call15, i8* %call16, i64 %call17) #7
  %cmp19 = icmp eq i32 %call18, 0
  store i1 %cmp19, i1* %retval
  br label %return

sw.bb.21:                                         ; preds = %if.end.7, %if.end.7, %if.end.7
  store i1 false, i1* %retval
  br label %return

sw.default:                                       ; preds = %if.end.7
  %10 = load i64, i64* %v1.addr, align 8
  %11 = load i64, i64* %v2.addr, align 8
  %call22 = call i64 @Fequal(i64 %10, i64 %11)
  %call23 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp24 = icmp eq i64 %call22, %call23
  %lnot = xor i1 %cmp24, true
  store i1 %lnot, i1* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.21, %if.end.14, %if.then.13, %if.then.6, %if.then
  %12 = load i1, i1* %retval
  ret i1 %12
}

declare i8* @SDATA(i64) #1

declare %struct._XGC* @XCreateGC(%struct._XDisplay*, i64, i64, %struct.XGCValues*) #1

declare zeroext i1 @x_defined_color(%struct.frame*, i8*, %struct.XColor*, i1 zeroext) #1

declare noalias i8* @xzalloc(i64) #1

declare void @font_done_for_face(%struct.frame*, %struct.face*) #1

; Function Attrs: nounwind uwtable
define internal void @x_free_gc(%struct.frame* %f, %struct._XGC* %gc) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %gc.addr = alloca %struct._XGC*, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store %struct._XGC* %gc, %struct._XGC** %gc.addr, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %1 = load %struct.x_output*, %struct.x_output** %x, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %1, i32 0, i32 44
  %2 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %2, i32 0, i32 2
  %3 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %4 = load %struct._XGC*, %struct._XGC** %gc.addr, align 8
  %call = call i32 @XFreeGC(%struct._XDisplay* %3, %struct._XGC* %4)
  ret void
}

declare i32 @XFreeGC(%struct._XDisplay*, %struct._XGC*) #1

; Function Attrs: nounwind uwtable
define internal void @free_realized_face(%struct.frame* %f, %struct.face* %face) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %face.addr = alloca %struct.face*, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store %struct.face* %face, %struct.face** %face.addr, align 8
  %0 = load %struct.face*, %struct.face** %face.addr, align 8
  %tobool = icmp ne %struct.face* %0, null
  br i1 %tobool, label %if.then, label %if.end.14

if.then:                                          ; preds = %entry
  %1 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_method = getelementptr inbounds %struct.frame, %struct.frame* %1, i32 0, i32 26
  %2 = bitcast i48* %output_method to i64*
  %bf.load = load i64, i64* %2, align 8
  %bf.lshr = lshr i64 %bf.load, 23
  %bf.clear = and i64 %bf.lshr, 7
  %bf.cast = trunc i64 %bf.clear to i32
  %cmp = icmp eq i32 %bf.cast, 2
  br i1 %cmp, label %if.then.1, label %if.end.13

if.then.1:                                        ; preds = %if.then
  %3 = load %struct.face*, %struct.face** %face.addr, align 8
  %fontset = getelementptr inbounds %struct.face, %struct.face* %3, i32 0, i32 11
  %4 = load i32, i32* %fontset, align 4
  %cmp2 = icmp sge i32 %4, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then.1
  %5 = load %struct.face*, %struct.face** %face.addr, align 8
  %6 = load %struct.face*, %struct.face** %face.addr, align 8
  %ascii_face = getelementptr inbounds %struct.face, %struct.face* %6, i32 0, i32 17
  %7 = load %struct.face*, %struct.face** %ascii_face, align 8
  %cmp3 = icmp eq %struct.face* %5, %7
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %land.lhs.true
  %8 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %9 = load %struct.face*, %struct.face** %face.addr, align 8
  call void @free_face_fontset(%struct.frame* %8, %struct.face* %9)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %land.lhs.true, %if.then.1
  %10 = load %struct.face*, %struct.face** %face.addr, align 8
  %gc = getelementptr inbounds %struct.face, %struct.face* %10, i32 0, i32 2
  %11 = load %struct._XGC*, %struct._XGC** %gc, align 8
  %tobool5 = icmp ne %struct._XGC* %11, null
  br i1 %tobool5, label %if.then.6, label %if.end.12

if.then.6:                                        ; preds = %if.end
  call void @block_input()
  %12 = load %struct.face*, %struct.face** %face.addr, align 8
  %font = getelementptr inbounds %struct.face, %struct.face* %12, i32 0, i32 10
  %13 = load %struct.font*, %struct.font** %font, align 8
  %tobool7 = icmp ne %struct.font* %13, null
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.6
  %14 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %15 = load %struct.face*, %struct.face** %face.addr, align 8
  call void @font_done_for_face(%struct.frame* %14, %struct.face* %15)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.then.6
  %16 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %17 = load %struct.face*, %struct.face** %face.addr, align 8
  %gc10 = getelementptr inbounds %struct.face, %struct.face* %17, i32 0, i32 2
  %18 = load %struct._XGC*, %struct._XGC** %gc10, align 8
  call void @x_free_gc(%struct.frame* %16, %struct._XGC* %18)
  %19 = load %struct.face*, %struct.face** %face.addr, align 8
  %gc11 = getelementptr inbounds %struct.face, %struct.face* %19, i32 0, i32 2
  store %struct._XGC* null, %struct._XGC** %gc11, align 8
  call void @unblock_input()
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.9, %if.end
  %20 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %21 = load %struct.face*, %struct.face** %face.addr, align 8
  call void @free_face_colors(%struct.frame* %20, %struct.face* %21)
  %22 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %23 = load %struct.face*, %struct.face** %face.addr, align 8
  %stipple = getelementptr inbounds %struct.face, %struct.face* %23, i32 0, i32 3
  %24 = load i64, i64* %stipple, align 8
  call void @x_destroy_bitmap(%struct.frame* %22, i64 %24)
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then
  %25 = load %struct.face*, %struct.face** %face.addr, align 8
  %26 = bitcast %struct.face* %25 to i8*
  call void @xfree(i8* %26)
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %entry
  ret void
}

declare void @forget_escape_and_glyphless_faces() #1

declare zeroext i1 @WINDOWP(i64) #1

declare void @clear_current_matrices(%struct.frame*) #1

declare void @free_face_fontset(%struct.frame*, %struct.face*) #1

; Function Attrs: nounwind uwtable
define internal void @free_face_colors(%struct.frame* %f, %struct.face* %face) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %face.addr = alloca %struct.face*, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store %struct.face* %face, %struct.face** %face.addr, align 8
  %0 = load %struct.face*, %struct.face** %face.addr, align 8
  %colors_copied_bitwise_p = getelementptr inbounds %struct.face, %struct.face* %0, i32 0, i32 13
  %1 = bitcast i24* %colors_copied_bitwise_p to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.lshr = lshr i32 %bf.load, 17
  %bf.clear = and i32 %bf.lshr, 1
  %bf.cast = trunc i32 %bf.clear to i1
  br i1 %bf.cast, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  call void @block_input()
  %2 = load %struct.face*, %struct.face** %face.addr, align 8
  %foreground_defaulted_p = getelementptr inbounds %struct.face, %struct.face* %2, i32 0, i32 13
  %3 = bitcast i24* %foreground_defaulted_p to i32*
  %bf.load1 = load i32, i32* %3, align 8
  %bf.lshr2 = lshr i32 %bf.load1, 7
  %bf.clear3 = and i32 %bf.lshr2, 1
  %bf.cast4 = trunc i32 %bf.clear3 to i1
  br i1 %bf.cast4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end
  %4 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %5 = load %struct.face*, %struct.face** %face.addr, align 8
  %foreground = getelementptr inbounds %struct.face, %struct.face* %5, i32 0, i32 4
  call void @x_free_colors(%struct.frame* %4, i64* %foreground, i32 1)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  %6 = load %struct.face*, %struct.face** %face.addr, align 8
  %background_defaulted_p = getelementptr inbounds %struct.face, %struct.face* %6, i32 0, i32 13
  %7 = bitcast i24* %background_defaulted_p to i32*
  %bf.load7 = load i32, i32* %7, align 8
  %bf.lshr8 = lshr i32 %bf.load7, 8
  %bf.clear9 = and i32 %bf.lshr8, 1
  %bf.cast10 = trunc i32 %bf.clear9 to i1
  br i1 %bf.cast10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.end.6
  %8 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %9 = load %struct.face*, %struct.face** %face.addr, align 8
  %background = getelementptr inbounds %struct.face, %struct.face* %9, i32 0, i32 5
  call void @x_free_colors(%struct.frame* %8, i64* %background, i32 1)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end.6
  %10 = load %struct.face*, %struct.face** %face.addr, align 8
  %underline_p = getelementptr inbounds %struct.face, %struct.face* %10, i32 0, i32 13
  %11 = bitcast i24* %underline_p to i32*
  %bf.load13 = load i32, i32* %11, align 8
  %bf.lshr14 = lshr i32 %bf.load13, 4
  %bf.clear15 = and i32 %bf.lshr14, 1
  %bf.cast16 = trunc i32 %bf.clear15 to i1
  br i1 %bf.cast16, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %if.end.12
  %12 = load %struct.face*, %struct.face** %face.addr, align 8
  %underline_defaulted_p = getelementptr inbounds %struct.face, %struct.face* %12, i32 0, i32 13
  %13 = bitcast i24* %underline_defaulted_p to i32*
  %bf.load17 = load i32, i32* %13, align 8
  %bf.lshr18 = lshr i32 %bf.load17, 9
  %bf.clear19 = and i32 %bf.lshr18, 1
  %bf.cast20 = trunc i32 %bf.clear19 to i1
  br i1 %bf.cast20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %land.lhs.true
  %14 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %15 = load %struct.face*, %struct.face** %face.addr, align 8
  %underline_color = getelementptr inbounds %struct.face, %struct.face* %15, i32 0, i32 6
  call void @x_free_colors(%struct.frame* %14, i64* %underline_color, i32 1)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %land.lhs.true, %if.end.12
  %16 = load %struct.face*, %struct.face** %face.addr, align 8
  %overline_p = getelementptr inbounds %struct.face, %struct.face* %16, i32 0, i32 13
  %17 = bitcast i24* %overline_p to i32*
  %bf.load23 = load i32, i32* %17, align 8
  %bf.lshr24 = lshr i32 %bf.load23, 5
  %bf.clear25 = and i32 %bf.lshr24, 1
  %bf.cast26 = trunc i32 %bf.clear25 to i1
  br i1 %bf.cast26, label %land.lhs.true.27, label %if.end.33

land.lhs.true.27:                                 ; preds = %if.end.22
  %18 = load %struct.face*, %struct.face** %face.addr, align 8
  %overline_color_defaulted_p = getelementptr inbounds %struct.face, %struct.face* %18, i32 0, i32 13
  %19 = bitcast i24* %overline_color_defaulted_p to i32*
  %bf.load28 = load i32, i32* %19, align 8
  %bf.lshr29 = lshr i32 %bf.load28, 10
  %bf.clear30 = and i32 %bf.lshr29, 1
  %bf.cast31 = trunc i32 %bf.clear30 to i1
  br i1 %bf.cast31, label %if.end.33, label %if.then.32

if.then.32:                                       ; preds = %land.lhs.true.27
  %20 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %21 = load %struct.face*, %struct.face** %face.addr, align 8
  %overline_color = getelementptr inbounds %struct.face, %struct.face* %21, i32 0, i32 7
  call void @x_free_colors(%struct.frame* %20, i64* %overline_color, i32 1)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %land.lhs.true.27, %if.end.22
  %22 = load %struct.face*, %struct.face** %face.addr, align 8
  %strike_through_p = getelementptr inbounds %struct.face, %struct.face* %22, i32 0, i32 13
  %23 = bitcast i24* %strike_through_p to i32*
  %bf.load34 = load i32, i32* %23, align 8
  %bf.lshr35 = lshr i32 %bf.load34, 6
  %bf.clear36 = and i32 %bf.lshr35, 1
  %bf.cast37 = trunc i32 %bf.clear36 to i1
  br i1 %bf.cast37, label %land.lhs.true.38, label %if.end.44

land.lhs.true.38:                                 ; preds = %if.end.33
  %24 = load %struct.face*, %struct.face** %face.addr, align 8
  %strike_through_color_defaulted_p = getelementptr inbounds %struct.face, %struct.face* %24, i32 0, i32 13
  %25 = bitcast i24* %strike_through_color_defaulted_p to i32*
  %bf.load39 = load i32, i32* %25, align 8
  %bf.lshr40 = lshr i32 %bf.load39, 11
  %bf.clear41 = and i32 %bf.lshr40, 1
  %bf.cast42 = trunc i32 %bf.clear41 to i1
  br i1 %bf.cast42, label %if.end.44, label %if.then.43

if.then.43:                                       ; preds = %land.lhs.true.38
  %26 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %27 = load %struct.face*, %struct.face** %face.addr, align 8
  %strike_through_color = getelementptr inbounds %struct.face, %struct.face* %27, i32 0, i32 8
  call void @x_free_colors(%struct.frame* %26, i64* %strike_through_color, i32 1)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %land.lhs.true.38, %if.end.33
  %28 = load %struct.face*, %struct.face** %face.addr, align 8
  %box = getelementptr inbounds %struct.face, %struct.face* %28, i32 0, i32 13
  %29 = bitcast i24* %box to i32*
  %bf.load45 = load i32, i32* %29, align 8
  %bf.clear46 = and i32 %bf.load45, 3
  %cmp = icmp ne i32 %bf.clear46, 0
  br i1 %cmp, label %land.lhs.true.47, label %if.end.53

land.lhs.true.47:                                 ; preds = %if.end.44
  %30 = load %struct.face*, %struct.face** %face.addr, align 8
  %box_color_defaulted_p = getelementptr inbounds %struct.face, %struct.face* %30, i32 0, i32 13
  %31 = bitcast i24* %box_color_defaulted_p to i32*
  %bf.load48 = load i32, i32* %31, align 8
  %bf.lshr49 = lshr i32 %bf.load48, 12
  %bf.clear50 = and i32 %bf.lshr49, 1
  %bf.cast51 = trunc i32 %bf.clear50 to i1
  br i1 %bf.cast51, label %if.end.53, label %if.then.52

if.then.52:                                       ; preds = %land.lhs.true.47
  %32 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %33 = load %struct.face*, %struct.face** %face.addr, align 8
  %box_color = getelementptr inbounds %struct.face, %struct.face* %33, i32 0, i32 9
  call void @x_free_colors(%struct.frame* %32, i64* %box_color, i32 1)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %land.lhs.true.47, %if.end.44
  call void @unblock_input()
  br label %return

return:                                           ; preds = %if.end.53, %if.then
  ret void
}

declare void @x_destroy_bitmap(%struct.frame*, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @hash_string_case_insensitive(i64 %string) #0 {
entry:
  %string.addr = alloca i64, align 8
  %s = alloca i8*, align 8
  %hash = alloca i32, align 4
  store i64 %string, i64* %string.addr, align 8
  store i32 0, i32* %hash, align 4
  %0 = load i64, i64* %string.addr, align 8
  %call = call i8* @SDATA(i64 %0)
  store i8* %call, i8** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i8*, i8** %s, align 8
  %2 = load i8, i8* %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %hash, align 4
  %shl = shl i32 %3, 1
  %4 = load i8*, i8** %s, align 8
  %5 = load i8, i8* %4, align 1
  %conv = zext i8 %5 to i32
  %call1 = call i32 @c_tolower(i32 %conv)
  %xor = xor i32 %shl, %call1
  store i32 %xor, i32* %hash, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %hash, align 4
  ret i32 %7
}

declare i64 @XUINT(i64) #1

declare i32 @c_tolower(i32) #1

; Function Attrs: nounwind uwtable
define internal zeroext i1 @push_named_merge_point(%struct.named_merge_point* %new_named_merge_point, i64 %face_name, i32 %named_merge_point_kind, %struct.named_merge_point** %named_merge_points) #0 {
entry:
  %retval = alloca i1, align 1
  %new_named_merge_point.addr = alloca %struct.named_merge_point*, align 8
  %face_name.addr = alloca i64, align 8
  %named_merge_point_kind.addr = alloca i32, align 4
  %named_merge_points.addr = alloca %struct.named_merge_point**, align 8
  %prev = alloca %struct.named_merge_point*, align 8
  store %struct.named_merge_point* %new_named_merge_point, %struct.named_merge_point** %new_named_merge_point.addr, align 8
  store i64 %face_name, i64* %face_name.addr, align 8
  store i32 %named_merge_point_kind, i32* %named_merge_point_kind.addr, align 4
  store %struct.named_merge_point** %named_merge_points, %struct.named_merge_point*** %named_merge_points.addr, align 8
  %0 = load %struct.named_merge_point**, %struct.named_merge_point*** %named_merge_points.addr, align 8
  %1 = load %struct.named_merge_point*, %struct.named_merge_point** %0, align 8
  store %struct.named_merge_point* %1, %struct.named_merge_point** %prev, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.named_merge_point*, %struct.named_merge_point** %prev, align 8
  %tobool = icmp ne %struct.named_merge_point* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, i64* %face_name.addr, align 8
  %4 = load %struct.named_merge_point*, %struct.named_merge_point** %prev, align 8
  %face_name1 = getelementptr inbounds %struct.named_merge_point, %struct.named_merge_point* %4, i32 0, i32 0
  %5 = load i64, i64* %face_name1, align 8
  %cmp = icmp eq i64 %3, %5
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %for.body
  %6 = load %struct.named_merge_point*, %struct.named_merge_point** %prev, align 8
  %named_merge_point_kind2 = getelementptr inbounds %struct.named_merge_point, %struct.named_merge_point* %6, i32 0, i32 1
  %7 = load i32, i32* %named_merge_point_kind2, align 4
  %8 = load i32, i32* %named_merge_point_kind.addr, align 4
  %cmp3 = icmp eq i32 %7, %8
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  store i1 false, i1* %retval
  br label %return

if.else:                                          ; preds = %if.then
  %9 = load %struct.named_merge_point*, %struct.named_merge_point** %prev, align 8
  %named_merge_point_kind5 = getelementptr inbounds %struct.named_merge_point, %struct.named_merge_point* %9, i32 0, i32 1
  %10 = load i32, i32* %named_merge_point_kind5, align 4
  %cmp6 = icmp eq i32 %10, 1
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.else
  br label %for.end

if.end:                                           ; preds = %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %11 = load %struct.named_merge_point*, %struct.named_merge_point** %prev, align 8
  %prev10 = getelementptr inbounds %struct.named_merge_point, %struct.named_merge_point* %11, i32 0, i32 2
  %12 = load %struct.named_merge_point*, %struct.named_merge_point** %prev10, align 8
  store %struct.named_merge_point* %12, %struct.named_merge_point** %prev, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.7, %for.cond
  %13 = load i64, i64* %face_name.addr, align 8
  %14 = load %struct.named_merge_point*, %struct.named_merge_point** %new_named_merge_point.addr, align 8
  %face_name11 = getelementptr inbounds %struct.named_merge_point, %struct.named_merge_point* %14, i32 0, i32 0
  store i64 %13, i64* %face_name11, align 8
  %15 = load i32, i32* %named_merge_point_kind.addr, align 4
  %16 = load %struct.named_merge_point*, %struct.named_merge_point** %new_named_merge_point.addr, align 8
  %named_merge_point_kind12 = getelementptr inbounds %struct.named_merge_point, %struct.named_merge_point* %16, i32 0, i32 1
  store i32 %15, i32* %named_merge_point_kind12, align 4
  %17 = load %struct.named_merge_point**, %struct.named_merge_point*** %named_merge_points.addr, align 8
  %18 = load %struct.named_merge_point*, %struct.named_merge_point** %17, align 8
  %19 = load %struct.named_merge_point*, %struct.named_merge_point** %new_named_merge_point.addr, align 8
  %prev13 = getelementptr inbounds %struct.named_merge_point, %struct.named_merge_point* %19, i32 0, i32 2
  store %struct.named_merge_point* %18, %struct.named_merge_point** %prev13, align 8
  %20 = load %struct.named_merge_point*, %struct.named_merge_point** %new_named_merge_point.addr, align 8
  %21 = load %struct.named_merge_point**, %struct.named_merge_point*** %named_merge_points.addr, align 8
  store %struct.named_merge_point* %20, %struct.named_merge_point** %21, align 8
  store i1 true, i1* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.4
  %22 = load i1, i1* %retval
  ret i1 %22
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @get_lface_attributes_no_remap(%struct.frame* %f, i64 %face_name, i64* %attrs, i1 zeroext %signal_p) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %face_name.addr = alloca i64, align 8
  %attrs.addr = alloca i64*, align 8
  %signal_p.addr = alloca i8, align 1
  %lface = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %face_name, i64* %face_name.addr, align 8
  store i64* %attrs, i64** %attrs.addr, align 8
  %frombool = zext i1 %signal_p to i8
  store i8 %frombool, i8* %signal_p.addr, align 1
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %1 = load i64, i64* %face_name.addr, align 8
  %2 = load i8, i8* %signal_p.addr, align 1
  %tobool = trunc i8 %2 to i1
  %call = call i64 @lface_from_face_name_no_resolve(%struct.frame* %0, i64 %1, i1 zeroext %tobool)
  store i64 %call, i64* %lface, align 8
  %3 = load i64, i64* %lface, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %3, %call1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load i64*, i64** %attrs.addr, align 8
  %5 = bitcast i64* %4 to i8*
  %6 = load i64, i64* %lface, align 8
  %call2 = call %struct.Lisp_Vector* @XVECTOR(i64 %6)
  %contents = getelementptr inbounds %struct.Lisp_Vector, %struct.Lisp_Vector* %call2, i32 0, i32 1
  %7 = bitcast [0 x i64]* %contents to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %7, i64 152, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i64, i64* %lface, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp4 = icmp eq i64 %8, %call3
  %lnot = xor i1 %cmp4, true
  ret i1 %lnot
}

declare zeroext i1 @tty_capable_p(%struct.tty_display_info*, i32) #1

declare i64 @Fcompare_strings(i64, i64, i64, i64, i64, i64, i64) #1

; Function Attrs: nounwind uwtable
define internal zeroext i1 @realize_default_face(%struct.frame* %f) #0 {
entry:
  %retval = alloca i1, align 1
  %f.addr = alloca %struct.frame*, align 8
  %c = alloca %struct.face_cache*, align 8
  %lface = alloca i64, align 8
  %attrs = alloca [19 x i64], align 16
  %face = alloca %struct.face*, align 8
  %frame = alloca i64, align 8
  %font_object = alloca i64, align 8
  %color = alloca i64, align 8
  %color128 = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %face_cache = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 20
  %1 = load %struct.face_cache*, %struct.face_cache** %face_cache, align 8
  store %struct.face_cache* %1, %struct.face_cache** %c, align 8
  %2 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 324)
  %call1 = call i64 @lface_from_face_name(%struct.frame* %2, i64 %call, i1 zeroext false)
  store i64 %call1, i64* %lface, align 8
  %3 = load i64, i64* %lface, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %3, %call2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %5 = bitcast %struct.frame* %4 to i8*
  %call3 = call i64 @make_lisp_ptr(i8* %5, i32 5)
  store i64 %call3, i64* %frame, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 324)
  %6 = load i64, i64* %frame, align 8
  %call5 = call i64 @Finternal_make_lisp_face(i64 %call4, i64 %6)
  store i64 %call5, i64* %lface, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_method = getelementptr inbounds %struct.frame, %struct.frame* %7, i32 0, i32 26
  %8 = bitcast i48* %output_method to i64*
  %bf.load = load i64, i64* %8, align 8
  %bf.lshr = lshr i64 %bf.load, 23
  %bf.clear = and i64 %bf.lshr, 7
  %bf.cast = trunc i64 %bf.clear to i32
  %cmp6 = icmp eq i32 %bf.cast, 2
  br i1 %cmp6, label %if.then.7, label %if.end.19

if.then.7:                                        ; preds = %if.end
  %9 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %9, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %10 = load %struct.x_output*, %struct.x_output** %x, align 8
  %font = getelementptr inbounds %struct.x_output, %struct.x_output* %10, i32 0, i32 25
  %11 = load %struct.font*, %struct.font** %font, align 8
  %12 = bitcast %struct.font* %11 to i8*
  %call8 = call i64 @make_lisp_ptr(i8* %12, i32 5)
  store i64 %call8, i64* %font_object, align 8
  %13 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %14 = load i64, i64* %lface, align 8
  %15 = load i64, i64* %font_object, align 8
  %16 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %default_face_done_p = getelementptr inbounds %struct.frame, %struct.frame* %16, i32 0, i32 26
  %17 = bitcast i48* %default_face_done_p to i64*
  %bf.load9 = load i64, i64* %17, align 8
  %bf.lshr10 = lshr i64 %bf.load9, 2
  %bf.clear11 = and i64 %bf.lshr10, 1
  %bf.cast12 = trunc i64 %bf.clear11 to i1
  call void @set_lface_from_font(%struct.frame* %13, i64 %14, i64 %15, i1 zeroext %bf.cast12)
  %18 = load i64, i64* %lface, align 8
  %19 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data13 = getelementptr inbounds %struct.frame, %struct.frame* %19, i32 0, i32 62
  %x14 = bitcast %union.output_data* %output_data13 to %struct.x_output**
  %20 = load %struct.x_output*, %struct.x_output** %x14, align 8
  %fontset = getelementptr inbounds %struct.x_output, %struct.x_output* %20, i32 0, i32 27
  %21 = load i32, i32* %fontset, align 4
  %call15 = call i64 @fontset_name(i32 %21)
  call void @ASET(i64 %18, i64 17, i64 %call15)
  %22 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %default_face_done_p16 = getelementptr inbounds %struct.frame, %struct.frame* %22, i32 0, i32 26
  %23 = bitcast i48* %default_face_done_p16 to i64*
  %bf.load17 = load i64, i64* %23, align 8
  %bf.clear18 = and i64 %bf.load17, -5
  %bf.set = or i64 %bf.clear18, 4
  store i64 %bf.set, i64* %23, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.7, %if.end
  %24 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_method20 = getelementptr inbounds %struct.frame, %struct.frame* %24, i32 0, i32 26
  %25 = bitcast i48* %output_method20 to i64*
  %bf.load21 = load i64, i64* %25, align 8
  %bf.lshr22 = lshr i64 %bf.load21, 23
  %bf.clear23 = and i64 %bf.lshr22, 7
  %bf.cast24 = trunc i64 %bf.clear23 to i32
  %cmp25 = icmp eq i32 %bf.cast24, 2
  br i1 %cmp25, label %if.end.48, label %if.then.26

if.then.26:                                       ; preds = %if.end.19
  %26 = load i64, i64* %lface, align 8
  %call27 = call i64 @build_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0))
  call void @ASET(i64 %26, i64 1, i64 %call27)
  %27 = load i64, i64* %lface, align 8
  %28 = load i64, i64* %lface, align 8
  %call28 = call i64 @AREF(i64 %28, i64 1)
  call void @ASET(i64 %27, i64 2, i64 %call28)
  %29 = load i64, i64* %lface, align 8
  %call29 = call i64 @builtin_lisp_symbol(i32 707)
  call void @ASET(i64 %29, i64 3, i64 %call29)
  %30 = load i64, i64* %lface, align 8
  call void @ASET(i64 %30, i64 4, i64 6)
  %31 = load i64, i64* %lface, align 8
  %call30 = call i64 @AREF(i64 %31, i64 5)
  %call31 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp32 = icmp eq i64 %call30, %call31
  br i1 %cmp32, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %if.then.26
  %32 = load i64, i64* %lface, align 8
  %call34 = call i64 @builtin_lisp_symbol(i32 707)
  call void @ASET(i64 %32, i64 5, i64 %call34)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %if.then.26
  %33 = load i64, i64* %lface, align 8
  %call36 = call i64 @AREF(i64 %33, i64 6)
  %call37 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp38 = icmp eq i64 %call36, %call37
  br i1 %cmp38, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.end.35
  %34 = load i64, i64* %lface, align 8
  %call40 = call i64 @builtin_lisp_symbol(i32 707)
  call void @ASET(i64 %34, i64 6, i64 %call40)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %if.end.35
  %35 = load i64, i64* %lface, align 8
  %call42 = call i64 @AREF(i64 %35, i64 17)
  %call43 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp44 = icmp eq i64 %call42, %call43
  br i1 %cmp44, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %if.end.41
  %36 = load i64, i64* %lface, align 8
  %call46 = call i64 @builtin_lisp_symbol(i32 0)
  call void @ASET(i64 %36, i64 17, i64 %call46)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %if.end.41
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.end.19
  %37 = load i64, i64* %lface, align 8
  %call49 = call i64 @AREF(i64 %37, i64 7)
  %call50 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp51 = icmp eq i64 %call49, %call50
  br i1 %cmp51, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %if.end.48
  %38 = load i64, i64* %lface, align 8
  %call53 = call i64 @builtin_lisp_symbol(i32 0)
  call void @ASET(i64 %38, i64 7, i64 %call53)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.52, %if.end.48
  %39 = load i64, i64* %lface, align 8
  %call55 = call i64 @AREF(i64 %39, i64 12)
  %call56 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp57 = icmp eq i64 %call55, %call56
  br i1 %cmp57, label %if.then.58, label %if.end.60

if.then.58:                                       ; preds = %if.end.54
  %40 = load i64, i64* %lface, align 8
  %call59 = call i64 @builtin_lisp_symbol(i32 0)
  call void @ASET(i64 %40, i64 12, i64 %call59)
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.58, %if.end.54
  %41 = load i64, i64* %lface, align 8
  %call61 = call i64 @AREF(i64 %41, i64 13)
  %call62 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp63 = icmp eq i64 %call61, %call62
  br i1 %cmp63, label %if.then.64, label %if.end.66

if.then.64:                                       ; preds = %if.end.60
  %42 = load i64, i64* %lface, align 8
  %call65 = call i64 @builtin_lisp_symbol(i32 0)
  call void @ASET(i64 %42, i64 13, i64 %call65)
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.64, %if.end.60
  %43 = load i64, i64* %lface, align 8
  %call67 = call i64 @AREF(i64 %43, i64 14)
  %call68 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp69 = icmp eq i64 %call67, %call68
  br i1 %cmp69, label %if.then.70, label %if.end.72

if.then.70:                                       ; preds = %if.end.66
  %44 = load i64, i64* %lface, align 8
  %call71 = call i64 @builtin_lisp_symbol(i32 0)
  call void @ASET(i64 %44, i64 14, i64 %call71)
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.70, %if.end.66
  %45 = load i64, i64* %lface, align 8
  %call73 = call i64 @AREF(i64 %45, i64 8)
  %call74 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp75 = icmp eq i64 %call73, %call74
  br i1 %cmp75, label %if.then.76, label %if.end.78

if.then.76:                                       ; preds = %if.end.72
  %46 = load i64, i64* %lface, align 8
  %call77 = call i64 @builtin_lisp_symbol(i32 0)
  call void @ASET(i64 %46, i64 8, i64 %call77)
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.76, %if.end.72
  %47 = load i64, i64* %lface, align 8
  %call79 = call i64 @AREF(i64 %47, i64 9)
  %call80 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp81 = icmp eq i64 %call79, %call80
  br i1 %cmp81, label %if.then.82, label %if.end.122

if.then.82:                                       ; preds = %if.end.78
  %call83 = call i64 @builtin_lisp_symbol(i32 451)
  %48 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %param_alist = getelementptr inbounds %struct.frame, %struct.frame* %48, i32 0, i32 8
  %49 = load i64, i64* %param_alist, align 8
  %call84 = call i64 @Fassq(i64 %call83, i64 %49)
  store i64 %call84, i64* %color, align 8
  %50 = load i64, i64* %color, align 8
  %and = and i64 %50, 7
  %conv = trunc i64 %and to i32
  %cmp85 = icmp eq i32 %conv, 3
  br i1 %cmp85, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.82
  %51 = load i64, i64* %color, align 8
  %sub = sub nsw i64 %51, 3
  %52 = inttoptr i64 %sub to i8*
  %53 = bitcast i8* %52 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %53, i32 0, i32 1
  %cdr = bitcast %union.anon.10* %u to i64*
  %54 = load i64, i64* %cdr, align 8
  %call87 = call zeroext i1 @STRINGP(i64 %54)
  br i1 %call87, label %if.then.89, label %if.else

if.then.89:                                       ; preds = %land.lhs.true
  %55 = load i64, i64* %lface, align 8
  %56 = load i64, i64* %color, align 8
  %sub90 = sub nsw i64 %56, 3
  %57 = inttoptr i64 %sub90 to i8*
  %58 = bitcast i8* %57 to %struct.Lisp_Cons*
  %u91 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %58, i32 0, i32 1
  %cdr92 = bitcast %union.anon.10* %u91 to i64*
  %59 = load i64, i64* %cdr92, align 8
  call void @ASET(i64 %55, i64 9, i64 %59)
  br label %if.end.121

if.else:                                          ; preds = %land.lhs.true, %if.then.82
  %60 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_method93 = getelementptr inbounds %struct.frame, %struct.frame* %60, i32 0, i32 26
  %61 = bitcast i48* %output_method93 to i64*
  %bf.load94 = load i64, i64* %61, align 8
  %bf.lshr95 = lshr i64 %bf.load94, 23
  %bf.clear96 = and i64 %bf.lshr95, 7
  %bf.cast97 = trunc i64 %bf.clear96 to i32
  %cmp98 = icmp eq i32 %bf.cast97, 2
  br i1 %cmp98, label %if.then.100, label %if.else.101

if.then.100:                                      ; preds = %if.else
  store i1 false, i1* %retval
  br label %return

if.else.101:                                      ; preds = %if.else
  %62 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_method102 = getelementptr inbounds %struct.frame, %struct.frame* %62, i32 0, i32 26
  %63 = bitcast i48* %output_method102 to i64*
  %bf.load103 = load i64, i64* %63, align 8
  %bf.lshr104 = lshr i64 %bf.load103, 23
  %bf.clear105 = and i64 %bf.lshr104, 7
  %bf.cast106 = trunc i64 %bf.clear105 to i32
  %cmp107 = icmp eq i32 %bf.cast106, 0
  br i1 %cmp107, label %if.then.116, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.101
  %64 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_method109 = getelementptr inbounds %struct.frame, %struct.frame* %64, i32 0, i32 26
  %65 = bitcast i48* %output_method109 to i64*
  %bf.load110 = load i64, i64* %65, align 8
  %bf.lshr111 = lshr i64 %bf.load110, 23
  %bf.clear112 = and i64 %bf.lshr111, 7
  %bf.cast113 = trunc i64 %bf.clear112 to i32
  %cmp114 = icmp eq i32 %bf.cast113, 1
  br i1 %cmp114, label %if.then.116, label %if.else.118

if.then.116:                                      ; preds = %lor.lhs.false, %if.else.101
  %66 = load i64, i64* %lface, align 8
  %call117 = call i64 @build_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @unspecified_fg, i32 0, i32 0))
  call void @ASET(i64 %66, i64 9, i64 %call117)
  br label %if.end.119

if.else.118:                                      ; preds = %lor.lhs.false
  call void @emacs_abort() #6
  unreachable

if.end.119:                                       ; preds = %if.then.116
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %if.then.89
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %if.end.78
  %67 = load i64, i64* %lface, align 8
  %call123 = call i64 @AREF(i64 %67, i64 10)
  %call124 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp125 = icmp eq i64 %call123, %call124
  br i1 %cmp125, label %if.then.127, label %if.end.177

if.then.127:                                      ; preds = %if.end.122
  %call129 = call i64 @builtin_lisp_symbol(i32 193)
  %68 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %param_alist130 = getelementptr inbounds %struct.frame, %struct.frame* %68, i32 0, i32 8
  %69 = load i64, i64* %param_alist130, align 8
  %call131 = call i64 @Fassq(i64 %call129, i64 %69)
  store i64 %call131, i64* %color128, align 8
  %70 = load i64, i64* %color128, align 8
  %and132 = and i64 %70, 7
  %conv133 = trunc i64 %and132 to i32
  %cmp134 = icmp eq i32 %conv133, 3
  br i1 %cmp134, label %land.lhs.true.136, label %if.else.146

land.lhs.true.136:                                ; preds = %if.then.127
  %71 = load i64, i64* %color128, align 8
  %sub137 = sub nsw i64 %71, 3
  %72 = inttoptr i64 %sub137 to i8*
  %73 = bitcast i8* %72 to %struct.Lisp_Cons*
  %u138 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %73, i32 0, i32 1
  %cdr139 = bitcast %union.anon.10* %u138 to i64*
  %74 = load i64, i64* %cdr139, align 8
  %call140 = call zeroext i1 @STRINGP(i64 %74)
  br i1 %call140, label %if.then.142, label %if.else.146

if.then.142:                                      ; preds = %land.lhs.true.136
  %75 = load i64, i64* %lface, align 8
  %76 = load i64, i64* %color128, align 8
  %sub143 = sub nsw i64 %76, 3
  %77 = inttoptr i64 %sub143 to i8*
  %78 = bitcast i8* %77 to %struct.Lisp_Cons*
  %u144 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %78, i32 0, i32 1
  %cdr145 = bitcast %union.anon.10* %u144 to i64*
  %79 = load i64, i64* %cdr145, align 8
  call void @ASET(i64 %75, i64 10, i64 %79)
  br label %if.end.176

if.else.146:                                      ; preds = %land.lhs.true.136, %if.then.127
  %80 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_method147 = getelementptr inbounds %struct.frame, %struct.frame* %80, i32 0, i32 26
  %81 = bitcast i48* %output_method147 to i64*
  %bf.load148 = load i64, i64* %81, align 8
  %bf.lshr149 = lshr i64 %bf.load148, 23
  %bf.clear150 = and i64 %bf.lshr149, 7
  %bf.cast151 = trunc i64 %bf.clear150 to i32
  %cmp152 = icmp eq i32 %bf.cast151, 2
  br i1 %cmp152, label %if.then.154, label %if.else.155

if.then.154:                                      ; preds = %if.else.146
  store i1 false, i1* %retval
  br label %return

if.else.155:                                      ; preds = %if.else.146
  %82 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_method156 = getelementptr inbounds %struct.frame, %struct.frame* %82, i32 0, i32 26
  %83 = bitcast i48* %output_method156 to i64*
  %bf.load157 = load i64, i64* %83, align 8
  %bf.lshr158 = lshr i64 %bf.load157, 23
  %bf.clear159 = and i64 %bf.lshr158, 7
  %bf.cast160 = trunc i64 %bf.clear159 to i32
  %cmp161 = icmp eq i32 %bf.cast160, 0
  br i1 %cmp161, label %if.then.171, label %lor.lhs.false.163

lor.lhs.false.163:                                ; preds = %if.else.155
  %84 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_method164 = getelementptr inbounds %struct.frame, %struct.frame* %84, i32 0, i32 26
  %85 = bitcast i48* %output_method164 to i64*
  %bf.load165 = load i64, i64* %85, align 8
  %bf.lshr166 = lshr i64 %bf.load165, 23
  %bf.clear167 = and i64 %bf.lshr166, 7
  %bf.cast168 = trunc i64 %bf.clear167 to i32
  %cmp169 = icmp eq i32 %bf.cast168, 1
  br i1 %cmp169, label %if.then.171, label %if.else.173

if.then.171:                                      ; preds = %lor.lhs.false.163, %if.else.155
  %86 = load i64, i64* %lface, align 8
  %call172 = call i64 @build_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @unspecified_bg, i32 0, i32 0))
  call void @ASET(i64 %86, i64 10, i64 %call172)
  br label %if.end.174

if.else.173:                                      ; preds = %lor.lhs.false.163
  call void @emacs_abort() #6
  unreachable

if.end.174:                                       ; preds = %if.then.171
  br label %if.end.175

if.end.175:                                       ; preds = %if.end.174
  br label %if.end.176

if.end.176:                                       ; preds = %if.end.175, %if.then.142
  br label %if.end.177

if.end.177:                                       ; preds = %if.end.176, %if.end.122
  %87 = load i64, i64* %lface, align 8
  %call178 = call i64 @AREF(i64 %87, i64 11)
  %call179 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp180 = icmp eq i64 %call178, %call179
  br i1 %cmp180, label %if.then.182, label %if.end.184

if.then.182:                                      ; preds = %if.end.177
  %88 = load i64, i64* %lface, align 8
  %call183 = call i64 @builtin_lisp_symbol(i32 0)
  call void @ASET(i64 %88, i64 11, i64 %call183)
  br label %if.end.184

if.end.184:                                       ; preds = %if.then.182, %if.end.177
  %89 = bitcast [19 x i64]* %attrs to i8*
  %90 = load i64, i64* %lface, align 8
  %call185 = call %struct.Lisp_Vector* @XVECTOR(i64 %90)
  %contents = getelementptr inbounds %struct.Lisp_Vector, %struct.Lisp_Vector* %call185, i32 0, i32 1
  %91 = bitcast [0 x i64]* %contents to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %89, i8* %91, i64 152, i32 8, i1 false)
  %92 = load %struct.face_cache*, %struct.face_cache** %c, align 8
  %arraydecay = getelementptr inbounds [19 x i64], [19 x i64]* %attrs, i32 0, i32 0
  %call186 = call %struct.face* @realize_face(%struct.face_cache* %92, i64* %arraydecay, i32 0)
  store %struct.face* %call186, %struct.face** %face, align 8
  %93 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_method187 = getelementptr inbounds %struct.frame, %struct.frame* %93, i32 0, i32 26
  %94 = bitcast i48* %output_method187 to i64*
  %bf.load188 = load i64, i64* %94, align 8
  %bf.lshr189 = lshr i64 %bf.load188, 23
  %bf.clear190 = and i64 %bf.lshr189, 7
  %bf.cast191 = trunc i64 %bf.clear190 to i32
  %cmp192 = icmp eq i32 %bf.cast191, 2
  br i1 %cmp192, label %land.lhs.true.194, label %if.end.207

land.lhs.true.194:                                ; preds = %if.end.184
  %95 = load %struct.face*, %struct.face** %face, align 8
  %font195 = getelementptr inbounds %struct.face, %struct.face* %95, i32 0, i32 10
  %96 = load %struct.font*, %struct.font** %font195, align 8
  %97 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data196 = getelementptr inbounds %struct.frame, %struct.frame* %97, i32 0, i32 62
  %x197 = bitcast %union.output_data* %output_data196 to %struct.x_output**
  %98 = load %struct.x_output*, %struct.x_output** %x197, align 8
  %font198 = getelementptr inbounds %struct.x_output, %struct.x_output* %98, i32 0, i32 25
  %99 = load %struct.font*, %struct.font** %font198, align 8
  %cmp199 = icmp ne %struct.font* %96, %99
  br i1 %cmp199, label %if.then.201, label %if.end.207

if.then.201:                                      ; preds = %land.lhs.true.194
  %100 = load %struct.face*, %struct.face** %face, align 8
  %font202 = getelementptr inbounds %struct.face, %struct.face* %100, i32 0, i32 10
  %101 = load %struct.font*, %struct.font** %font202, align 8
  %tobool = icmp ne %struct.font* %101, null
  br i1 %tobool, label %if.end.204, label %if.then.203

if.then.203:                                      ; preds = %if.then.201
  store i1 false, i1* %retval
  br label %return

if.end.204:                                       ; preds = %if.then.201
  %102 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %103 = load i64, i64* %lface, align 8
  %call205 = call i64 @AREF(i64 %103, i64 15)
  %call206 = call i64 @builtin_lisp_symbol(i32 0)
  call void @x_set_font(%struct.frame* %102, i64 %call205, i64 %call206)
  br label %if.end.207

if.end.207:                                       ; preds = %if.end.204, %land.lhs.true.194, %if.end.184
  store i1 true, i1* %retval
  br label %return

return:                                           ; preds = %if.end.207, %if.then.203, %if.then.154, %if.then.100
  %104 = load i1, i1* %retval
  ret i1 %104
}

; Function Attrs: nounwind uwtable
define internal void @realize_named_face(%struct.frame* %f, i64 %symbol, i32 %id) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %symbol.addr = alloca i64, align 8
  %id.addr = alloca i32, align 4
  %c = alloca %struct.face_cache*, align 8
  %lface = alloca i64, align 8
  %attrs = alloca [19 x i64], align 16
  %symbol_attrs = alloca [19 x i64], align 16
  %frame = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %symbol, i64* %symbol.addr, align 8
  store i32 %id, i32* %id.addr, align 4
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %face_cache = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 20
  %1 = load %struct.face_cache*, %struct.face_cache** %face_cache, align 8
  store %struct.face_cache* %1, %struct.face_cache** %c, align 8
  %2 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %3 = load i64, i64* %symbol.addr, align 8
  %call = call i64 @lface_from_face_name(%struct.frame* %2, i64 %3, i1 zeroext false)
  store i64 %call, i64* %lface, align 8
  %4 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 324)
  %arraydecay = getelementptr inbounds [19 x i64], [19 x i64]* %attrs, i32 0, i32 0
  %call2 = call zeroext i1 @get_lface_attributes_no_remap(%struct.frame* %4, i64 %call1, i64* %arraydecay, i1 zeroext true)
  %5 = load i64, i64* %lface, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %5, %call3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %7 = bitcast %struct.frame* %6 to i8*
  %call4 = call i64 @make_lisp_ptr(i8* %7, i32 5)
  store i64 %call4, i64* %frame, align 8
  %8 = load i64, i64* %symbol.addr, align 8
  %9 = load i64, i64* %frame, align 8
  %call5 = call i64 @Finternal_make_lisp_face(i64 %8, i64 %9)
  store i64 %call5, i64* %lface, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %11 = load i64, i64* %symbol.addr, align 8
  %arraydecay6 = getelementptr inbounds [19 x i64], [19 x i64]* %symbol_attrs, i32 0, i32 0
  %call7 = call zeroext i1 @get_lface_attributes_no_remap(%struct.frame* %10, i64 %11, i64* %arraydecay6, i1 zeroext true)
  %12 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %arraydecay8 = getelementptr inbounds [19 x i64], [19 x i64]* %symbol_attrs, i32 0, i32 0
  %arraydecay9 = getelementptr inbounds [19 x i64], [19 x i64]* %attrs, i32 0, i32 0
  call void @merge_face_vectors(%struct.frame* %12, i64* %arraydecay8, i64* %arraydecay9, %struct.named_merge_point* null)
  %13 = load %struct.face_cache*, %struct.face_cache** %c, align 8
  %arraydecay10 = getelementptr inbounds [19 x i64], [19 x i64]* %attrs, i32 0, i32 0
  %14 = load i32, i32* %id.addr, align 4
  %call11 = call %struct.face* @realize_face(%struct.face_cache* %13, i64* %arraydecay10, i32 %14)
  ret void
}

declare i64 @fontset_name(i32) #1

declare void @x_set_font(%struct.frame*, i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @uncache_face(%struct.face_cache* %c, %struct.face* %face) #0 {
entry:
  %c.addr = alloca %struct.face_cache*, align 8
  %face.addr = alloca %struct.face*, align 8
  %i = alloca i32, align 4
  store %struct.face_cache* %c, %struct.face_cache** %c.addr, align 8
  store %struct.face* %face, %struct.face** %face.addr, align 8
  %0 = load %struct.face*, %struct.face** %face.addr, align 8
  %hash = getelementptr inbounds %struct.face, %struct.face* %0, i32 0, i32 14
  %1 = load i32, i32* %hash, align 4
  %rem = urem i32 %1, 1001
  store i32 %rem, i32* %i, align 4
  %2 = load %struct.face*, %struct.face** %face.addr, align 8
  %prev = getelementptr inbounds %struct.face, %struct.face* %2, i32 0, i32 16
  %3 = load %struct.face*, %struct.face** %prev, align 8
  %tobool = icmp ne %struct.face* %3, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.face*, %struct.face** %face.addr, align 8
  %next = getelementptr inbounds %struct.face, %struct.face* %4, i32 0, i32 15
  %5 = load %struct.face*, %struct.face** %next, align 8
  %6 = load %struct.face*, %struct.face** %face.addr, align 8
  %prev1 = getelementptr inbounds %struct.face, %struct.face* %6, i32 0, i32 16
  %7 = load %struct.face*, %struct.face** %prev1, align 8
  %next2 = getelementptr inbounds %struct.face, %struct.face* %7, i32 0, i32 15
  store %struct.face* %5, %struct.face** %next2, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load %struct.face*, %struct.face** %face.addr, align 8
  %next3 = getelementptr inbounds %struct.face, %struct.face* %8, i32 0, i32 15
  %9 = load %struct.face*, %struct.face** %next3, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.face_cache*, %struct.face_cache** %c.addr, align 8
  %buckets = getelementptr inbounds %struct.face_cache, %struct.face_cache* %11, i32 0, i32 0
  %12 = load %struct.face**, %struct.face*** %buckets, align 8
  %arrayidx = getelementptr inbounds %struct.face*, %struct.face** %12, i64 %idxprom
  store %struct.face* %9, %struct.face** %arrayidx, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load %struct.face*, %struct.face** %face.addr, align 8
  %next4 = getelementptr inbounds %struct.face, %struct.face* %13, i32 0, i32 15
  %14 = load %struct.face*, %struct.face** %next4, align 8
  %tobool5 = icmp ne %struct.face* %14, null
  br i1 %tobool5, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %if.end
  %15 = load %struct.face*, %struct.face** %face.addr, align 8
  %prev7 = getelementptr inbounds %struct.face, %struct.face* %15, i32 0, i32 16
  %16 = load %struct.face*, %struct.face** %prev7, align 8
  %17 = load %struct.face*, %struct.face** %face.addr, align 8
  %next8 = getelementptr inbounds %struct.face, %struct.face* %17, i32 0, i32 15
  %18 = load %struct.face*, %struct.face** %next8, align 8
  %prev9 = getelementptr inbounds %struct.face, %struct.face* %18, i32 0, i32 16
  store %struct.face* %16, %struct.face** %prev9, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.6, %if.end
  %19 = load %struct.face*, %struct.face** %face.addr, align 8
  %id = getelementptr inbounds %struct.face, %struct.face* %19, i32 0, i32 1
  %20 = load i32, i32* %id, align 4
  %idxprom11 = sext i32 %20 to i64
  %21 = load %struct.face_cache*, %struct.face_cache** %c.addr, align 8
  %faces_by_id = getelementptr inbounds %struct.face_cache, %struct.face_cache* %21, i32 0, i32 2
  %22 = load %struct.face**, %struct.face*** %faces_by_id, align 8
  %arrayidx12 = getelementptr inbounds %struct.face*, %struct.face** %22, i64 %idxprom11
  store %struct.face* null, %struct.face** %arrayidx12, align 8
  %23 = load %struct.face*, %struct.face** %face.addr, align 8
  %id13 = getelementptr inbounds %struct.face, %struct.face* %23, i32 0, i32 1
  %24 = load i32, i32* %id13, align 4
  %25 = load %struct.face_cache*, %struct.face_cache** %c.addr, align 8
  %used = getelementptr inbounds %struct.face_cache, %struct.face_cache* %25, i32 0, i32 4
  %26 = load i32, i32* %used, align 4
  %cmp = icmp eq i32 %24, %26
  br i1 %cmp, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.10
  %27 = load %struct.face_cache*, %struct.face_cache** %c.addr, align 8
  %used15 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %27, i32 0, i32 4
  %28 = load i32, i32* %used15, align 4
  %dec = add nsw i32 %28, -1
  store i32 %dec, i32* %used15, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end.10
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.face* @realize_x_face(%struct.face_cache* %cache, i64* %attrs) #0 {
entry:
  %cache.addr = alloca %struct.face_cache*, align 8
  %attrs.addr = alloca i64*, align 8
  %face = alloca %struct.face*, align 8
  %default_face = alloca %struct.face*, align 8
  %f = alloca %struct.frame*, align 8
  %stipple = alloca i64, align 8
  %underline = alloca i64, align 8
  %overline = alloca i64, align 8
  %strike_through = alloca i64, align 8
  %box = alloca i64, align 8
  %fontset15 = alloca i32, align 4
  %keyword = alloca i64, align 8
  %value = alloca i64, align 8
  %keyword259 = alloca i64, align 8
  %value260 = alloca i64, align 8
  store %struct.face_cache* %cache, %struct.face_cache** %cache.addr, align 8
  store i64* %attrs, i64** %attrs.addr, align 8
  store %struct.face* null, %struct.face** %face, align 8
  %0 = load i64*, i64** %attrs.addr, align 8
  %call = call %struct.face* @make_realized_face(i64* %0)
  store %struct.face* %call, %struct.face** %face, align 8
  %1 = load %struct.face*, %struct.face** %face, align 8
  %2 = load %struct.face*, %struct.face** %face, align 8
  %ascii_face = getelementptr inbounds %struct.face, %struct.face* %2, i32 0, i32 17
  store %struct.face* %1, %struct.face** %ascii_face, align 8
  %3 = load %struct.face_cache*, %struct.face_cache** %cache.addr, align 8
  %f1 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %3, i32 0, i32 1
  %4 = load %struct.frame*, %struct.frame** %f1, align 8
  store %struct.frame* %4, %struct.frame** %f, align 8
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load %struct.frame*, %struct.frame** %f, align 8
  %face_cache = getelementptr inbounds %struct.frame, %struct.frame* %5, i32 0, i32 20
  %6 = load %struct.face_cache*, %struct.face_cache** %face_cache, align 8
  %used = getelementptr inbounds %struct.face_cache, %struct.face_cache* %6, i32 0, i32 4
  %7 = load i32, i32* %used, align 4
  %add = add i32 %7, 0
  %cmp = icmp ult i32 0, %add
  br i1 %cmp, label %cond.true.7, label %cond.false.9

cond.false:                                       ; preds = %entry
  %8 = load %struct.frame*, %struct.frame** %f, align 8
  %face_cache2 = getelementptr inbounds %struct.frame, %struct.frame* %8, i32 0, i32 20
  %9 = load %struct.face_cache*, %struct.face_cache** %face_cache2, align 8
  %used3 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %9, i32 0, i32 4
  %10 = load i32, i32* %used3, align 4
  %conv = sext i32 %10 to i64
  %add4 = add i64 %conv, 0
  %cmp5 = icmp ult i64 0, %add4
  br i1 %cmp5, label %cond.true.7, label %cond.false.9

cond.true.7:                                      ; preds = %cond.false, %cond.true
  %11 = load %struct.frame*, %struct.frame** %f, align 8
  %face_cache8 = getelementptr inbounds %struct.frame, %struct.frame* %11, i32 0, i32 20
  %12 = load %struct.face_cache*, %struct.face_cache** %face_cache8, align 8
  %faces_by_id = getelementptr inbounds %struct.face_cache, %struct.face_cache* %12, i32 0, i32 2
  %13 = load %struct.face**, %struct.face*** %faces_by_id, align 8
  %arrayidx = getelementptr inbounds %struct.face*, %struct.face** %13, i64 0
  %14 = load %struct.face*, %struct.face** %arrayidx, align 8
  br label %cond.end

cond.false.9:                                     ; preds = %cond.false, %cond.true
  br label %cond.end

cond.end:                                         ; preds = %cond.false.9, %cond.true.7
  %cond = phi %struct.face* [ %14, %cond.true.7 ], [ null, %cond.false.9 ]
  store %struct.face* %cond, %struct.face** %default_face, align 8
  %15 = load %struct.face*, %struct.face** %default_face, align 8
  %tobool = icmp ne %struct.face* %15, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %cond.end
  %16 = load %struct.face*, %struct.face** %default_face, align 8
  %lface = getelementptr inbounds %struct.face, %struct.face* %16, i32 0, i32 0
  %arraydecay = getelementptr inbounds [19 x i64], [19 x i64]* %lface, i32 0, i32 0
  %17 = load i64*, i64** %attrs.addr, align 8
  %call10 = call zeroext i1 @lface_same_font_attributes_p(i64* %arraydecay, i64* %17)
  br i1 %call10, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %18 = load %struct.face*, %struct.face** %default_face, align 8
  %font = getelementptr inbounds %struct.face, %struct.face* %18, i32 0, i32 10
  %19 = load %struct.font*, %struct.font** %font, align 8
  %20 = load %struct.face*, %struct.face** %face, align 8
  %font12 = getelementptr inbounds %struct.face, %struct.face* %20, i32 0, i32 10
  store %struct.font* %19, %struct.font** %font12, align 8
  %21 = load %struct.frame*, %struct.frame** %f, align 8
  %22 = load %struct.face*, %struct.face** %default_face, align 8
  %fontset = getelementptr inbounds %struct.face, %struct.face* %22, i32 0, i32 11
  %23 = load i32, i32* %fontset, align 4
  %24 = load %struct.face*, %struct.face** %face, align 8
  %call13 = call i32 @make_fontset_for_ascii_face(%struct.frame* %21, i32 %23, %struct.face* %24)
  %25 = load %struct.face*, %struct.face** %face, align 8
  %fontset14 = getelementptr inbounds %struct.face, %struct.face* %25, i32 0, i32 11
  store i32 %call13, i32* %fontset14, align 4
  br label %if.end.47

if.else:                                          ; preds = %land.lhs.true, %cond.end
  %26 = load i64*, i64** %attrs.addr, align 8
  %call16 = call i32 @face_fontset(i64* %26)
  store i32 %call16, i32* %fontset15, align 4
  %27 = load i32, i32* %fontset15, align 4
  %cmp17 = icmp eq i32 %27, -1
  br i1 %cmp17, label %if.then.19, label %if.end.27

if.then.19:                                       ; preds = %if.else
  %28 = load %struct.face*, %struct.face** %default_face, align 8
  %tobool20 = icmp ne %struct.face* %28, null
  br i1 %tobool20, label %if.then.21, label %if.end

if.then.21:                                       ; preds = %if.then.19
  %29 = load %struct.face*, %struct.face** %default_face, align 8
  %fontset22 = getelementptr inbounds %struct.face, %struct.face* %29, i32 0, i32 11
  %30 = load i32, i32* %fontset22, align 4
  store i32 %30, i32* %fontset15, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.21, %if.then.19
  %31 = load i32, i32* %fontset15, align 4
  %cmp23 = icmp eq i32 %31, -1
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end
  call void @emacs_abort() #6
  unreachable

if.end.26:                                        ; preds = %if.end
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.else
  %32 = load i64*, i64** %attrs.addr, align 8
  %arrayidx28 = getelementptr inbounds i64, i64* %32, i64 15
  %33 = load i64, i64* %arrayidx28, align 8
  %call29 = call zeroext i1 @FONT_OBJECT_P(i64 %33)
  br i1 %call29, label %if.end.34, label %if.then.30

if.then.30:                                       ; preds = %if.end.27
  %34 = load %struct.frame*, %struct.frame** %f, align 8
  %35 = load i64*, i64** %attrs.addr, align 8
  %call31 = call i64 @Ffont_spec(i64 0, i64* null)
  %call32 = call i64 @font_load_for_lface(%struct.frame* %34, i64* %35, i64 %call31)
  %36 = load i64*, i64** %attrs.addr, align 8
  %arrayidx33 = getelementptr inbounds i64, i64* %36, i64 15
  store i64 %call32, i64* %arrayidx33, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.30, %if.end.27
  %37 = load i64*, i64** %attrs.addr, align 8
  %arrayidx35 = getelementptr inbounds i64, i64* %37, i64 15
  %38 = load i64, i64* %arrayidx35, align 8
  %call36 = call zeroext i1 @FONT_OBJECT_P(i64 %38)
  br i1 %call36, label %if.then.37, label %if.else.43

if.then.37:                                       ; preds = %if.end.34
  %39 = load i64*, i64** %attrs.addr, align 8
  %arrayidx38 = getelementptr inbounds i64, i64* %39, i64 15
  %40 = load i64, i64* %arrayidx38, align 8
  %call39 = call %struct.font* @XFONT_OBJECT(i64 %40)
  %41 = load %struct.face*, %struct.face** %face, align 8
  %font40 = getelementptr inbounds %struct.face, %struct.face* %41, i32 0, i32 10
  store %struct.font* %call39, %struct.font** %font40, align 8
  %42 = load %struct.frame*, %struct.frame** %f, align 8
  %43 = load i32, i32* %fontset15, align 4
  %44 = load %struct.face*, %struct.face** %face, align 8
  %call41 = call i32 @make_fontset_for_ascii_face(%struct.frame* %42, i32 %43, %struct.face* %44)
  %45 = load %struct.face*, %struct.face** %face, align 8
  %fontset42 = getelementptr inbounds %struct.face, %struct.face* %45, i32 0, i32 11
  store i32 %call41, i32* %fontset42, align 4
  br label %if.end.46

if.else.43:                                       ; preds = %if.end.34
  %46 = load %struct.face*, %struct.face** %face, align 8
  %font44 = getelementptr inbounds %struct.face, %struct.face* %46, i32 0, i32 10
  store %struct.font* null, %struct.font** %font44, align 8
  %47 = load %struct.face*, %struct.face** %face, align 8
  %fontset45 = getelementptr inbounds %struct.face, %struct.face* %47, i32 0, i32 11
  store i32 -1, i32* %fontset45, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.43, %if.then.37
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then
  %48 = load %struct.face*, %struct.face** %face, align 8
  %font48 = getelementptr inbounds %struct.face, %struct.face* %48, i32 0, i32 10
  %49 = load %struct.font*, %struct.font** %font48, align 8
  %tobool49 = icmp ne %struct.font* %49, null
  br i1 %tobool49, label %land.lhs.true.50, label %if.end.73

land.lhs.true.50:                                 ; preds = %if.end.47
  %50 = load i64*, i64** %attrs.addr, align 8
  %arrayidx51 = getelementptr inbounds i64, i64* %50, i64 5
  %51 = load i64, i64* %arrayidx51, align 8
  %call52 = call i32 @font_style_to_value(i32 5, i64 %51, i1 zeroext false)
  %shr = ashr i32 %call52, 8
  %cmp53 = icmp sgt i32 %shr, 100
  br i1 %cmp53, label %land.lhs.true.55, label %if.end.73

land.lhs.true.55:                                 ; preds = %land.lhs.true.50
  %52 = load i64*, i64** %attrs.addr, align 8
  %arrayidx56 = getelementptr inbounds i64, i64* %52, i64 15
  %53 = load i64, i64* %arrayidx56, align 8
  %call57 = call i64 @AREF(i64 %53, i64 5)
  %and = and i64 %call57, 7
  %conv58 = trunc i64 %and to i32
  %and59 = and i32 %conv58, -5
  %cmp60 = icmp eq i32 %and59, 2
  br i1 %cmp60, label %cond.true.62, label %cond.false.67

cond.true.62:                                     ; preds = %land.lhs.true.55
  %54 = load i64*, i64** %attrs.addr, align 8
  %arrayidx63 = getelementptr inbounds i64, i64* %54, i64 15
  %55 = load i64, i64* %arrayidx63, align 8
  %call64 = call i64 @AREF(i64 %55, i64 5)
  %shr65 = ashr i64 %call64, 2
  %shr66 = ashr i64 %shr65, 8
  br label %cond.end.68

cond.false.67:                                    ; preds = %land.lhs.true.55
  br label %cond.end.68

cond.end.68:                                      ; preds = %cond.false.67, %cond.true.62
  %cond69 = phi i64 [ %shr66, %cond.true.62 ], [ -1, %cond.false.67 ]
  %cmp70 = icmp sle i64 %cond69, 100
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %cond.end.68
  %56 = load %struct.face*, %struct.face** %face, align 8
  %overstrike = getelementptr inbounds %struct.face, %struct.face* %56, i32 0, i32 13
  %57 = bitcast i24* %overstrike to i32*
  %bf.load = load i32, i32* %57, align 8
  %bf.clear = and i32 %bf.load, -262145
  %bf.set = or i32 %bf.clear, 262144
  store i32 %bf.set, i32* %57, align 8
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.72, %cond.end.68, %land.lhs.true.50, %if.end.47
  %58 = load %struct.frame*, %struct.frame** %f, align 8
  %59 = load %struct.face*, %struct.face** %face, align 8
  %60 = load i64*, i64** %attrs.addr, align 8
  call void @load_face_colors(%struct.frame* %58, %struct.face* %59, i64* %60)
  %61 = load i64*, i64** %attrs.addr, align 8
  %arrayidx74 = getelementptr inbounds i64, i64* %61, i64 14
  %62 = load i64, i64* %arrayidx74, align 8
  store i64 %62, i64* %box, align 8
  %63 = load i64, i64* %box, align 8
  %call75 = call zeroext i1 @STRINGP(i64 %63)
  br i1 %call75, label %if.then.76, label %if.else.83

if.then.76:                                       ; preds = %if.end.73
  %64 = load %struct.frame*, %struct.frame** %f, align 8
  %65 = load %struct.face*, %struct.face** %face, align 8
  %66 = load i64*, i64** %attrs.addr, align 8
  %arrayidx77 = getelementptr inbounds i64, i64* %66, i64 14
  %67 = load i64, i64* %arrayidx77, align 8
  %call78 = call i64 @load_color(%struct.frame* %64, %struct.face* %65, i64 %67, i32 14)
  %68 = load %struct.face*, %struct.face** %face, align 8
  %box_color = getelementptr inbounds %struct.face, %struct.face* %68, i32 0, i32 9
  store i64 %call78, i64* %box_color, align 8
  %69 = load %struct.face*, %struct.face** %face, align 8
  %box79 = getelementptr inbounds %struct.face, %struct.face* %69, i32 0, i32 13
  %70 = bitcast i24* %box79 to i32*
  %bf.load80 = load i32, i32* %70, align 8
  %bf.clear81 = and i32 %bf.load80, -4
  %bf.set82 = or i32 %bf.clear81, 1
  store i32 %bf.set82, i32* %70, align 8
  %71 = load %struct.face*, %struct.face** %face, align 8
  %box_line_width = getelementptr inbounds %struct.face, %struct.face* %71, i32 0, i32 12
  store i32 1, i32* %box_line_width, align 4
  br label %if.end.194

if.else.83:                                       ; preds = %if.end.73
  %72 = load i64, i64* %box, align 8
  %and84 = and i64 %72, 7
  %conv85 = trunc i64 %and84 to i32
  %and86 = and i32 %conv85, -5
  %cmp87 = icmp eq i32 %and86, 2
  br i1 %cmp87, label %if.then.89, label %if.else.101

if.then.89:                                       ; preds = %if.else.83
  %73 = load %struct.face*, %struct.face** %face, align 8
  %box90 = getelementptr inbounds %struct.face, %struct.face* %73, i32 0, i32 13
  %74 = bitcast i24* %box90 to i32*
  %bf.load91 = load i32, i32* %74, align 8
  %bf.clear92 = and i32 %bf.load91, -4
  %bf.set93 = or i32 %bf.clear92, 1
  store i32 %bf.set93, i32* %74, align 8
  %75 = load i64, i64* %box, align 8
  %shr94 = ashr i64 %75, 2
  %conv95 = trunc i64 %shr94 to i32
  %76 = load %struct.face*, %struct.face** %face, align 8
  %box_line_width96 = getelementptr inbounds %struct.face, %struct.face* %76, i32 0, i32 12
  store i32 %conv95, i32* %box_line_width96, align 4
  %77 = load %struct.face*, %struct.face** %face, align 8
  %foreground = getelementptr inbounds %struct.face, %struct.face* %77, i32 0, i32 4
  %78 = load i64, i64* %foreground, align 8
  %79 = load %struct.face*, %struct.face** %face, align 8
  %box_color97 = getelementptr inbounds %struct.face, %struct.face* %79, i32 0, i32 9
  store i64 %78, i64* %box_color97, align 8
  %80 = load %struct.face*, %struct.face** %face, align 8
  %box_color_defaulted_p = getelementptr inbounds %struct.face, %struct.face* %80, i32 0, i32 13
  %81 = bitcast i24* %box_color_defaulted_p to i32*
  %bf.load98 = load i32, i32* %81, align 8
  %bf.clear99 = and i32 %bf.load98, -4097
  %bf.set100 = or i32 %bf.clear99, 4096
  store i32 %bf.set100, i32* %81, align 8
  br label %if.end.193

if.else.101:                                      ; preds = %if.else.83
  %82 = load i64, i64* %box, align 8
  %and102 = and i64 %82, 7
  %conv103 = trunc i64 %and102 to i32
  %cmp104 = icmp eq i32 %conv103, 3
  br i1 %cmp104, label %if.then.106, label %if.end.192

if.then.106:                                      ; preds = %if.else.101
  %83 = load %struct.face*, %struct.face** %face, align 8
  %box107 = getelementptr inbounds %struct.face, %struct.face* %83, i32 0, i32 13
  %84 = bitcast i24* %box107 to i32*
  %bf.load108 = load i32, i32* %84, align 8
  %bf.clear109 = and i32 %bf.load108, -4
  %bf.set110 = or i32 %bf.clear109, 1
  store i32 %bf.set110, i32* %84, align 8
  %85 = load %struct.face*, %struct.face** %face, align 8
  %foreground111 = getelementptr inbounds %struct.face, %struct.face* %85, i32 0, i32 4
  %86 = load i64, i64* %foreground111, align 8
  %87 = load %struct.face*, %struct.face** %face, align 8
  %box_color112 = getelementptr inbounds %struct.face, %struct.face* %87, i32 0, i32 9
  store i64 %86, i64* %box_color112, align 8
  %88 = load %struct.face*, %struct.face** %face, align 8
  %box_color_defaulted_p113 = getelementptr inbounds %struct.face, %struct.face* %88, i32 0, i32 13
  %89 = bitcast i24* %box_color_defaulted_p113 to i32*
  %bf.load114 = load i32, i32* %89, align 8
  %bf.clear115 = and i32 %bf.load114, -4097
  %bf.set116 = or i32 %bf.clear115, 4096
  store i32 %bf.set116, i32* %89, align 8
  %90 = load %struct.face*, %struct.face** %face, align 8
  %box_line_width117 = getelementptr inbounds %struct.face, %struct.face* %90, i32 0, i32 12
  store i32 1, i32* %box_line_width117, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.191, %if.then.106
  %91 = load i64, i64* %box, align 8
  %and118 = and i64 %91, 7
  %conv119 = trunc i64 %and118 to i32
  %cmp120 = icmp eq i32 %conv119, 3
  br i1 %cmp120, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %92 = load i64, i64* %box, align 8
  %sub = sub nsw i64 %92, 3
  %93 = inttoptr i64 %sub to i8*
  %94 = bitcast i8* %93 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %94, i32 0, i32 0
  %95 = load i64, i64* %car, align 8
  store i64 %95, i64* %keyword, align 8
  %96 = load i64, i64* %box, align 8
  %sub122 = sub nsw i64 %96, 3
  %97 = inttoptr i64 %sub122 to i8*
  %98 = bitcast i8* %97 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %98, i32 0, i32 1
  %cdr = bitcast %union.anon.10* %u to i64*
  %99 = load i64, i64* %cdr, align 8
  store i64 %99, i64* %box, align 8
  %100 = load i64, i64* %box, align 8
  %and123 = and i64 %100, 7
  %conv124 = trunc i64 %and123 to i32
  %cmp125 = icmp eq i32 %conv124, 3
  br i1 %cmp125, label %if.end.128, label %if.then.127

if.then.127:                                      ; preds = %while.body
  br label %while.end

if.end.128:                                       ; preds = %while.body
  %101 = load i64, i64* %box, align 8
  %sub129 = sub nsw i64 %101, 3
  %102 = inttoptr i64 %sub129 to i8*
  %103 = bitcast i8* %102 to %struct.Lisp_Cons*
  %car130 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %103, i32 0, i32 0
  %104 = load i64, i64* %car130, align 8
  store i64 %104, i64* %value, align 8
  %105 = load i64, i64* %box, align 8
  %sub131 = sub nsw i64 %105, 3
  %106 = inttoptr i64 %sub131 to i8*
  %107 = bitcast i8* %106 to %struct.Lisp_Cons*
  %u132 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %107, i32 0, i32 1
  %cdr133 = bitcast %union.anon.10* %u132 to i64*
  %108 = load i64, i64* %cdr133, align 8
  store i64 %108, i64* %box, align 8
  %109 = load i64, i64* %keyword, align 8
  %call134 = call i64 @builtin_lisp_symbol(i32 75)
  %cmp135 = icmp eq i64 %109, %call134
  br i1 %cmp135, label %if.then.137, label %if.else.152

if.then.137:                                      ; preds = %if.end.128
  %110 = load i64, i64* %value, align 8
  %and138 = and i64 %110, 7
  %conv139 = trunc i64 %and138 to i32
  %and140 = and i32 %conv139, -5
  %cmp141 = icmp eq i32 %and140, 2
  br i1 %cmp141, label %land.lhs.true.143, label %if.end.151

land.lhs.true.143:                                ; preds = %if.then.137
  %111 = load i64, i64* %value, align 8
  %shr144 = ashr i64 %111, 2
  %cmp145 = icmp ne i64 %shr144, 0
  br i1 %cmp145, label %if.then.147, label %if.end.151

if.then.147:                                      ; preds = %land.lhs.true.143
  %112 = load i64, i64* %value, align 8
  %shr148 = ashr i64 %112, 2
  %conv149 = trunc i64 %shr148 to i32
  %113 = load %struct.face*, %struct.face** %face, align 8
  %box_line_width150 = getelementptr inbounds %struct.face, %struct.face* %113, i32 0, i32 12
  store i32 %conv149, i32* %box_line_width150, align 4
  br label %if.end.151

if.end.151:                                       ; preds = %if.then.147, %land.lhs.true.143, %if.then.137
  br label %if.end.191

if.else.152:                                      ; preds = %if.end.128
  %114 = load i64, i64* %keyword, align 8
  %call153 = call i64 @builtin_lisp_symbol(i32 21)
  %cmp154 = icmp eq i64 %114, %call153
  br i1 %cmp154, label %if.then.156, label %if.else.165

if.then.156:                                      ; preds = %if.else.152
  %115 = load i64, i64* %value, align 8
  %call157 = call zeroext i1 @STRINGP(i64 %115)
  br i1 %call157, label %if.then.158, label %if.end.164

if.then.158:                                      ; preds = %if.then.156
  %116 = load %struct.frame*, %struct.frame** %f, align 8
  %117 = load %struct.face*, %struct.face** %face, align 8
  %118 = load i64, i64* %value, align 8
  %call159 = call i64 @load_color(%struct.frame* %116, %struct.face* %117, i64 %118, i32 14)
  %119 = load %struct.face*, %struct.face** %face, align 8
  %box_color160 = getelementptr inbounds %struct.face, %struct.face* %119, i32 0, i32 9
  store i64 %call159, i64* %box_color160, align 8
  %120 = load %struct.face*, %struct.face** %face, align 8
  %use_box_color_for_shadows_p = getelementptr inbounds %struct.face, %struct.face* %120, i32 0, i32 13
  %121 = bitcast i24* %use_box_color_for_shadows_p to i32*
  %bf.load161 = load i32, i32* %121, align 8
  %bf.clear162 = and i32 %bf.load161, -9
  %bf.set163 = or i32 %bf.clear162, 8
  store i32 %bf.set163, i32* %121, align 8
  br label %if.end.164

if.end.164:                                       ; preds = %if.then.158, %if.then.156
  br label %if.end.190

if.else.165:                                      ; preds = %if.else.152
  %122 = load i64, i64* %keyword, align 8
  %call166 = call i64 @builtin_lisp_symbol(i32 127)
  %cmp167 = icmp eq i64 %122, %call166
  br i1 %cmp167, label %if.then.169, label %if.end.189

if.then.169:                                      ; preds = %if.else.165
  %123 = load i64, i64* %value, align 8
  %call170 = call i64 @builtin_lisp_symbol(i32 804)
  %cmp171 = icmp eq i64 %123, %call170
  br i1 %cmp171, label %if.then.173, label %if.else.178

if.then.173:                                      ; preds = %if.then.169
  %124 = load %struct.face*, %struct.face** %face, align 8
  %box174 = getelementptr inbounds %struct.face, %struct.face* %124, i32 0, i32 13
  %125 = bitcast i24* %box174 to i32*
  %bf.load175 = load i32, i32* %125, align 8
  %bf.clear176 = and i32 %bf.load175, -4
  %bf.set177 = or i32 %bf.clear176, 2
  store i32 %bf.set177, i32* %125, align 8
  br label %if.end.188

if.else.178:                                      ; preds = %if.then.169
  %126 = load i64, i64* %value, align 8
  %call179 = call i64 @builtin_lisp_symbol(i32 768)
  %cmp180 = icmp eq i64 %126, %call179
  br i1 %cmp180, label %if.then.182, label %if.end.187

if.then.182:                                      ; preds = %if.else.178
  %127 = load %struct.face*, %struct.face** %face, align 8
  %box183 = getelementptr inbounds %struct.face, %struct.face* %127, i32 0, i32 13
  %128 = bitcast i24* %box183 to i32*
  %bf.load184 = load i32, i32* %128, align 8
  %bf.clear185 = and i32 %bf.load184, -4
  %bf.set186 = or i32 %bf.clear185, 3
  store i32 %bf.set186, i32* %128, align 8
  br label %if.end.187

if.end.187:                                       ; preds = %if.then.182, %if.else.178
  br label %if.end.188

if.end.188:                                       ; preds = %if.end.187, %if.then.173
  br label %if.end.189

if.end.189:                                       ; preds = %if.end.188, %if.else.165
  br label %if.end.190

if.end.190:                                       ; preds = %if.end.189, %if.end.164
  br label %if.end.191

if.end.191:                                       ; preds = %if.end.190, %if.end.151
  br label %while.cond

while.end:                                        ; preds = %if.then.127, %while.cond
  br label %if.end.192

if.end.192:                                       ; preds = %while.end, %if.else.101
  br label %if.end.193

if.end.193:                                       ; preds = %if.end.192, %if.then.89
  br label %if.end.194

if.end.194:                                       ; preds = %if.end.193, %if.then.76
  %129 = load i64*, i64** %attrs.addr, align 8
  %arrayidx195 = getelementptr inbounds i64, i64* %129, i64 7
  %130 = load i64, i64* %arrayidx195, align 8
  store i64 %130, i64* %underline, align 8
  %131 = load i64, i64* %underline, align 8
  %call196 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp197 = icmp eq i64 %131, %call196
  br i1 %cmp197, label %if.then.199, label %if.else.208

if.then.199:                                      ; preds = %if.end.194
  %132 = load %struct.face*, %struct.face** %face, align 8
  %underline_p = getelementptr inbounds %struct.face, %struct.face* %132, i32 0, i32 13
  %133 = bitcast i24* %underline_p to i32*
  %bf.load200 = load i32, i32* %133, align 8
  %bf.clear201 = and i32 %bf.load200, -17
  %bf.set202 = or i32 %bf.clear201, 16
  store i32 %bf.set202, i32* %133, align 8
  %134 = load %struct.face*, %struct.face** %face, align 8
  %underline_type = getelementptr inbounds %struct.face, %struct.face* %134, i32 0, i32 13
  %135 = bitcast i24* %underline_type to i32*
  %bf.load203 = load i32, i32* %135, align 8
  %bf.clear204 = and i32 %bf.load203, -5
  store i32 %bf.clear204, i32* %135, align 8
  %136 = load %struct.face*, %struct.face** %face, align 8
  %underline_defaulted_p = getelementptr inbounds %struct.face, %struct.face* %136, i32 0, i32 13
  %137 = bitcast i24* %underline_defaulted_p to i32*
  %bf.load205 = load i32, i32* %137, align 8
  %bf.clear206 = and i32 %bf.load205, -513
  %bf.set207 = or i32 %bf.clear206, 512
  store i32 %bf.set207, i32* %137, align 8
  %138 = load %struct.face*, %struct.face** %face, align 8
  %underline_color = getelementptr inbounds %struct.face, %struct.face* %138, i32 0, i32 6
  store i64 0, i64* %underline_color, align 8
  br label %if.end.329

if.else.208:                                      ; preds = %if.end.194
  %139 = load i64, i64* %underline, align 8
  %call209 = call zeroext i1 @STRINGP(i64 %139)
  br i1 %call209, label %if.then.210, label %if.else.223

if.then.210:                                      ; preds = %if.else.208
  %140 = load %struct.face*, %struct.face** %face, align 8
  %underline_p211 = getelementptr inbounds %struct.face, %struct.face* %140, i32 0, i32 13
  %141 = bitcast i24* %underline_p211 to i32*
  %bf.load212 = load i32, i32* %141, align 8
  %bf.clear213 = and i32 %bf.load212, -17
  %bf.set214 = or i32 %bf.clear213, 16
  store i32 %bf.set214, i32* %141, align 8
  %142 = load %struct.face*, %struct.face** %face, align 8
  %underline_type215 = getelementptr inbounds %struct.face, %struct.face* %142, i32 0, i32 13
  %143 = bitcast i24* %underline_type215 to i32*
  %bf.load216 = load i32, i32* %143, align 8
  %bf.clear217 = and i32 %bf.load216, -5
  store i32 %bf.clear217, i32* %143, align 8
  %144 = load %struct.face*, %struct.face** %face, align 8
  %underline_defaulted_p218 = getelementptr inbounds %struct.face, %struct.face* %144, i32 0, i32 13
  %145 = bitcast i24* %underline_defaulted_p218 to i32*
  %bf.load219 = load i32, i32* %145, align 8
  %bf.clear220 = and i32 %bf.load219, -513
  store i32 %bf.clear220, i32* %145, align 8
  %146 = load %struct.frame*, %struct.frame** %f, align 8
  %147 = load %struct.face*, %struct.face** %face, align 8
  %148 = load i64, i64* %underline, align 8
  %call221 = call i64 @load_color(%struct.frame* %146, %struct.face* %147, i64 %148, i32 7)
  %149 = load %struct.face*, %struct.face** %face, align 8
  %underline_color222 = getelementptr inbounds %struct.face, %struct.face* %149, i32 0, i32 6
  store i64 %call221, i64* %underline_color222, align 8
  br label %if.end.328

if.else.223:                                      ; preds = %if.else.208
  %150 = load i64, i64* %underline, align 8
  %call224 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp225 = icmp eq i64 %150, %call224
  br i1 %cmp225, label %if.then.227, label %if.else.235

if.then.227:                                      ; preds = %if.else.223
  %151 = load %struct.face*, %struct.face** %face, align 8
  %underline_p228 = getelementptr inbounds %struct.face, %struct.face* %151, i32 0, i32 13
  %152 = bitcast i24* %underline_p228 to i32*
  %bf.load229 = load i32, i32* %152, align 8
  %bf.clear230 = and i32 %bf.load229, -17
  store i32 %bf.clear230, i32* %152, align 8
  %153 = load %struct.face*, %struct.face** %face, align 8
  %underline_defaulted_p231 = getelementptr inbounds %struct.face, %struct.face* %153, i32 0, i32 13
  %154 = bitcast i24* %underline_defaulted_p231 to i32*
  %bf.load232 = load i32, i32* %154, align 8
  %bf.clear233 = and i32 %bf.load232, -513
  store i32 %bf.clear233, i32* %154, align 8
  %155 = load %struct.face*, %struct.face** %face, align 8
  %underline_color234 = getelementptr inbounds %struct.face, %struct.face* %155, i32 0, i32 6
  store i64 0, i64* %underline_color234, align 8
  br label %if.end.327

if.else.235:                                      ; preds = %if.else.223
  %156 = load i64, i64* %underline, align 8
  %and236 = and i64 %156, 7
  %conv237 = trunc i64 %and236 to i32
  %cmp238 = icmp eq i32 %conv237, 3
  br i1 %cmp238, label %if.then.240, label %if.end.326

if.then.240:                                      ; preds = %if.else.235
  %157 = load %struct.face*, %struct.face** %face, align 8
  %underline_p241 = getelementptr inbounds %struct.face, %struct.face* %157, i32 0, i32 13
  %158 = bitcast i24* %underline_p241 to i32*
  %bf.load242 = load i32, i32* %158, align 8
  %bf.clear243 = and i32 %bf.load242, -17
  %bf.set244 = or i32 %bf.clear243, 16
  store i32 %bf.set244, i32* %158, align 8
  %159 = load %struct.face*, %struct.face** %face, align 8
  %underline_color245 = getelementptr inbounds %struct.face, %struct.face* %159, i32 0, i32 6
  store i64 0, i64* %underline_color245, align 8
  %160 = load %struct.face*, %struct.face** %face, align 8
  %underline_defaulted_p246 = getelementptr inbounds %struct.face, %struct.face* %160, i32 0, i32 13
  %161 = bitcast i24* %underline_defaulted_p246 to i32*
  %bf.load247 = load i32, i32* %161, align 8
  %bf.clear248 = and i32 %bf.load247, -513
  %bf.set249 = or i32 %bf.clear248, 512
  store i32 %bf.set249, i32* %161, align 8
  %162 = load %struct.face*, %struct.face** %face, align 8
  %underline_type250 = getelementptr inbounds %struct.face, %struct.face* %162, i32 0, i32 13
  %163 = bitcast i24* %underline_type250 to i32*
  %bf.load251 = load i32, i32* %163, align 8
  %bf.clear252 = and i32 %bf.load251, -5
  store i32 %bf.clear252, i32* %163, align 8
  br label %while.cond.253

while.cond.253:                                   ; preds = %if.end.324, %if.then.240
  %164 = load i64, i64* %underline, align 8
  %and254 = and i64 %164, 7
  %conv255 = trunc i64 %and254 to i32
  %cmp256 = icmp eq i32 %conv255, 3
  br i1 %cmp256, label %while.body.258, label %while.end.325

while.body.258:                                   ; preds = %while.cond.253
  %165 = load i64, i64* %underline, align 8
  %sub261 = sub nsw i64 %165, 3
  %166 = inttoptr i64 %sub261 to i8*
  %167 = bitcast i8* %166 to %struct.Lisp_Cons*
  %car262 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %167, i32 0, i32 0
  %168 = load i64, i64* %car262, align 8
  store i64 %168, i64* %keyword259, align 8
  %169 = load i64, i64* %underline, align 8
  %sub263 = sub nsw i64 %169, 3
  %170 = inttoptr i64 %sub263 to i8*
  %171 = bitcast i8* %170 to %struct.Lisp_Cons*
  %u264 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %171, i32 0, i32 1
  %cdr265 = bitcast %union.anon.10* %u264 to i64*
  %172 = load i64, i64* %cdr265, align 8
  store i64 %172, i64* %underline, align 8
  %173 = load i64, i64* %underline, align 8
  %and266 = and i64 %173, 7
  %conv267 = trunc i64 %and266 to i32
  %cmp268 = icmp eq i32 %conv267, 3
  br i1 %cmp268, label %if.end.271, label %if.then.270

if.then.270:                                      ; preds = %while.body.258
  br label %while.end.325

if.end.271:                                       ; preds = %while.body.258
  %174 = load i64, i64* %underline, align 8
  %sub272 = sub nsw i64 %174, 3
  %175 = inttoptr i64 %sub272 to i8*
  %176 = bitcast i8* %175 to %struct.Lisp_Cons*
  %car273 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %176, i32 0, i32 0
  %177 = load i64, i64* %car273, align 8
  store i64 %177, i64* %value260, align 8
  %178 = load i64, i64* %underline, align 8
  %sub274 = sub nsw i64 %178, 3
  %179 = inttoptr i64 %sub274 to i8*
  %180 = bitcast i8* %179 to %struct.Lisp_Cons*
  %u275 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %180, i32 0, i32 1
  %cdr276 = bitcast %union.anon.10* %u275 to i64*
  %181 = load i64, i64* %cdr276, align 8
  store i64 %181, i64* %underline, align 8
  %182 = load i64, i64* %keyword259, align 8
  %call277 = call i64 @builtin_lisp_symbol(i32 21)
  %cmp278 = icmp eq i64 %182, %call277
  br i1 %cmp278, label %if.then.280, label %if.else.300

if.then.280:                                      ; preds = %if.end.271
  %183 = load i64, i64* %value260, align 8
  %call281 = call i64 @builtin_lisp_symbol(i32 451)
  %cmp282 = icmp eq i64 %183, %call281
  br i1 %cmp282, label %if.then.284, label %if.else.290

if.then.284:                                      ; preds = %if.then.280
  %184 = load %struct.face*, %struct.face** %face, align 8
  %underline_defaulted_p285 = getelementptr inbounds %struct.face, %struct.face* %184, i32 0, i32 13
  %185 = bitcast i24* %underline_defaulted_p285 to i32*
  %bf.load286 = load i32, i32* %185, align 8
  %bf.clear287 = and i32 %bf.load286, -513
  %bf.set288 = or i32 %bf.clear287, 512
  store i32 %bf.set288, i32* %185, align 8
  %186 = load %struct.face*, %struct.face** %face, align 8
  %underline_color289 = getelementptr inbounds %struct.face, %struct.face* %186, i32 0, i32 6
  store i64 0, i64* %underline_color289, align 8
  br label %if.end.299

if.else.290:                                      ; preds = %if.then.280
  %187 = load i64, i64* %value260, align 8
  %call291 = call zeroext i1 @STRINGP(i64 %187)
  br i1 %call291, label %if.then.292, label %if.end.298

if.then.292:                                      ; preds = %if.else.290
  %188 = load %struct.face*, %struct.face** %face, align 8
  %underline_defaulted_p293 = getelementptr inbounds %struct.face, %struct.face* %188, i32 0, i32 13
  %189 = bitcast i24* %underline_defaulted_p293 to i32*
  %bf.load294 = load i32, i32* %189, align 8
  %bf.clear295 = and i32 %bf.load294, -513
  store i32 %bf.clear295, i32* %189, align 8
  %190 = load %struct.frame*, %struct.frame** %f, align 8
  %191 = load %struct.face*, %struct.face** %face, align 8
  %192 = load i64, i64* %value260, align 8
  %call296 = call i64 @load_color(%struct.frame* %190, %struct.face* %191, i64 %192, i32 7)
  %193 = load %struct.face*, %struct.face** %face, align 8
  %underline_color297 = getelementptr inbounds %struct.face, %struct.face* %193, i32 0, i32 6
  store i64 %call296, i64* %underline_color297, align 8
  br label %if.end.298

if.end.298:                                       ; preds = %if.then.292, %if.else.290
  br label %if.end.299

if.end.299:                                       ; preds = %if.end.298, %if.then.284
  br label %if.end.324

if.else.300:                                      ; preds = %if.end.271
  %194 = load i64, i64* %keyword259, align 8
  %call301 = call i64 @builtin_lisp_symbol(i32 127)
  %cmp302 = icmp eq i64 %194, %call301
  br i1 %cmp302, label %if.then.304, label %if.end.323

if.then.304:                                      ; preds = %if.else.300
  %195 = load i64, i64* %value260, align 8
  %call305 = call i64 @builtin_lisp_symbol(i32 620)
  %cmp306 = icmp eq i64 %195, %call305
  br i1 %cmp306, label %if.then.308, label %if.else.312

if.then.308:                                      ; preds = %if.then.304
  %196 = load %struct.face*, %struct.face** %face, align 8
  %underline_type309 = getelementptr inbounds %struct.face, %struct.face* %196, i32 0, i32 13
  %197 = bitcast i24* %underline_type309 to i32*
  %bf.load310 = load i32, i32* %197, align 8
  %bf.clear311 = and i32 %bf.load310, -5
  store i32 %bf.clear311, i32* %197, align 8
  br label %if.end.322

if.else.312:                                      ; preds = %if.then.304
  %198 = load i64, i64* %value260, align 8
  %call313 = call i64 @builtin_lisp_symbol(i32 1012)
  %cmp314 = icmp eq i64 %198, %call313
  br i1 %cmp314, label %if.then.316, label %if.end.321

if.then.316:                                      ; preds = %if.else.312
  %199 = load %struct.face*, %struct.face** %face, align 8
  %underline_type317 = getelementptr inbounds %struct.face, %struct.face* %199, i32 0, i32 13
  %200 = bitcast i24* %underline_type317 to i32*
  %bf.load318 = load i32, i32* %200, align 8
  %bf.clear319 = and i32 %bf.load318, -5
  %bf.set320 = or i32 %bf.clear319, 4
  store i32 %bf.set320, i32* %200, align 8
  br label %if.end.321

if.end.321:                                       ; preds = %if.then.316, %if.else.312
  br label %if.end.322

if.end.322:                                       ; preds = %if.end.321, %if.then.308
  br label %if.end.323

if.end.323:                                       ; preds = %if.end.322, %if.else.300
  br label %if.end.324

if.end.324:                                       ; preds = %if.end.323, %if.end.299
  br label %while.cond.253

while.end.325:                                    ; preds = %if.then.270, %while.cond.253
  br label %if.end.326

if.end.326:                                       ; preds = %while.end.325, %if.else.235
  br label %if.end.327

if.end.327:                                       ; preds = %if.end.326, %if.then.227
  br label %if.end.328

if.end.328:                                       ; preds = %if.end.327, %if.then.210
  br label %if.end.329

if.end.329:                                       ; preds = %if.end.328, %if.then.199
  %201 = load i64*, i64** %attrs.addr, align 8
  %arrayidx330 = getelementptr inbounds i64, i64* %201, i64 12
  %202 = load i64, i64* %arrayidx330, align 8
  store i64 %202, i64* %overline, align 8
  %203 = load i64, i64* %overline, align 8
  %call331 = call zeroext i1 @STRINGP(i64 %203)
  br i1 %call331, label %if.then.332, label %if.else.338

if.then.332:                                      ; preds = %if.end.329
  %204 = load %struct.frame*, %struct.frame** %f, align 8
  %205 = load %struct.face*, %struct.face** %face, align 8
  %206 = load i64*, i64** %attrs.addr, align 8
  %arrayidx333 = getelementptr inbounds i64, i64* %206, i64 12
  %207 = load i64, i64* %arrayidx333, align 8
  %call334 = call i64 @load_color(%struct.frame* %204, %struct.face* %205, i64 %207, i32 12)
  %208 = load %struct.face*, %struct.face** %face, align 8
  %overline_color = getelementptr inbounds %struct.face, %struct.face* %208, i32 0, i32 7
  store i64 %call334, i64* %overline_color, align 8
  %209 = load %struct.face*, %struct.face** %face, align 8
  %overline_p = getelementptr inbounds %struct.face, %struct.face* %209, i32 0, i32 13
  %210 = bitcast i24* %overline_p to i32*
  %bf.load335 = load i32, i32* %210, align 8
  %bf.clear336 = and i32 %bf.load335, -33
  %bf.set337 = or i32 %bf.clear336, 32
  store i32 %bf.set337, i32* %210, align 8
  br label %if.end.353

if.else.338:                                      ; preds = %if.end.329
  %211 = load i64, i64* %overline, align 8
  %call339 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp340 = icmp eq i64 %211, %call339
  br i1 %cmp340, label %if.then.342, label %if.end.352

if.then.342:                                      ; preds = %if.else.338
  %212 = load %struct.face*, %struct.face** %face, align 8
  %foreground343 = getelementptr inbounds %struct.face, %struct.face* %212, i32 0, i32 4
  %213 = load i64, i64* %foreground343, align 8
  %214 = load %struct.face*, %struct.face** %face, align 8
  %overline_color344 = getelementptr inbounds %struct.face, %struct.face* %214, i32 0, i32 7
  store i64 %213, i64* %overline_color344, align 8
  %215 = load %struct.face*, %struct.face** %face, align 8
  %overline_color_defaulted_p = getelementptr inbounds %struct.face, %struct.face* %215, i32 0, i32 13
  %216 = bitcast i24* %overline_color_defaulted_p to i32*
  %bf.load345 = load i32, i32* %216, align 8
  %bf.clear346 = and i32 %bf.load345, -1025
  %bf.set347 = or i32 %bf.clear346, 1024
  store i32 %bf.set347, i32* %216, align 8
  %217 = load %struct.face*, %struct.face** %face, align 8
  %overline_p348 = getelementptr inbounds %struct.face, %struct.face* %217, i32 0, i32 13
  %218 = bitcast i24* %overline_p348 to i32*
  %bf.load349 = load i32, i32* %218, align 8
  %bf.clear350 = and i32 %bf.load349, -33
  %bf.set351 = or i32 %bf.clear350, 32
  store i32 %bf.set351, i32* %218, align 8
  br label %if.end.352

if.end.352:                                       ; preds = %if.then.342, %if.else.338
  br label %if.end.353

if.end.353:                                       ; preds = %if.end.352, %if.then.332
  %219 = load i64*, i64** %attrs.addr, align 8
  %arrayidx354 = getelementptr inbounds i64, i64* %219, i64 13
  %220 = load i64, i64* %arrayidx354, align 8
  store i64 %220, i64* %strike_through, align 8
  %221 = load i64, i64* %strike_through, align 8
  %call355 = call zeroext i1 @STRINGP(i64 %221)
  br i1 %call355, label %if.then.356, label %if.else.362

if.then.356:                                      ; preds = %if.end.353
  %222 = load %struct.frame*, %struct.frame** %f, align 8
  %223 = load %struct.face*, %struct.face** %face, align 8
  %224 = load i64*, i64** %attrs.addr, align 8
  %arrayidx357 = getelementptr inbounds i64, i64* %224, i64 13
  %225 = load i64, i64* %arrayidx357, align 8
  %call358 = call i64 @load_color(%struct.frame* %222, %struct.face* %223, i64 %225, i32 13)
  %226 = load %struct.face*, %struct.face** %face, align 8
  %strike_through_color = getelementptr inbounds %struct.face, %struct.face* %226, i32 0, i32 8
  store i64 %call358, i64* %strike_through_color, align 8
  %227 = load %struct.face*, %struct.face** %face, align 8
  %strike_through_p = getelementptr inbounds %struct.face, %struct.face* %227, i32 0, i32 13
  %228 = bitcast i24* %strike_through_p to i32*
  %bf.load359 = load i32, i32* %228, align 8
  %bf.clear360 = and i32 %bf.load359, -65
  %bf.set361 = or i32 %bf.clear360, 64
  store i32 %bf.set361, i32* %228, align 8
  br label %if.end.377

if.else.362:                                      ; preds = %if.end.353
  %229 = load i64, i64* %strike_through, align 8
  %call363 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp364 = icmp eq i64 %229, %call363
  br i1 %cmp364, label %if.then.366, label %if.end.376

if.then.366:                                      ; preds = %if.else.362
  %230 = load %struct.face*, %struct.face** %face, align 8
  %foreground367 = getelementptr inbounds %struct.face, %struct.face* %230, i32 0, i32 4
  %231 = load i64, i64* %foreground367, align 8
  %232 = load %struct.face*, %struct.face** %face, align 8
  %strike_through_color368 = getelementptr inbounds %struct.face, %struct.face* %232, i32 0, i32 8
  store i64 %231, i64* %strike_through_color368, align 8
  %233 = load %struct.face*, %struct.face** %face, align 8
  %strike_through_color_defaulted_p = getelementptr inbounds %struct.face, %struct.face* %233, i32 0, i32 13
  %234 = bitcast i24* %strike_through_color_defaulted_p to i32*
  %bf.load369 = load i32, i32* %234, align 8
  %bf.clear370 = and i32 %bf.load369, -2049
  %bf.set371 = or i32 %bf.clear370, 2048
  store i32 %bf.set371, i32* %234, align 8
  %235 = load %struct.face*, %struct.face** %face, align 8
  %strike_through_p372 = getelementptr inbounds %struct.face, %struct.face* %235, i32 0, i32 13
  %236 = bitcast i24* %strike_through_p372 to i32*
  %bf.load373 = load i32, i32* %236, align 8
  %bf.clear374 = and i32 %bf.load373, -65
  %bf.set375 = or i32 %bf.clear374, 64
  store i32 %bf.set375, i32* %236, align 8
  br label %if.end.376

if.end.376:                                       ; preds = %if.then.366, %if.else.362
  br label %if.end.377

if.end.377:                                       ; preds = %if.end.376, %if.then.356
  %237 = load i64*, i64** %attrs.addr, align 8
  %arrayidx378 = getelementptr inbounds i64, i64* %237, i64 11
  %238 = load i64, i64* %arrayidx378, align 8
  store i64 %238, i64* %stipple, align 8
  %239 = load i64, i64* %stipple, align 8
  %call379 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp380 = icmp eq i64 %239, %call379
  br i1 %cmp380, label %if.end.385, label %if.then.382

if.then.382:                                      ; preds = %if.end.377
  %240 = load %struct.frame*, %struct.frame** %f, align 8
  %241 = load i64, i64* %stipple, align 8
  %call383 = call i64 @load_pixmap(%struct.frame* %240, i64 %241)
  %242 = load %struct.face*, %struct.face** %face, align 8
  %stipple384 = getelementptr inbounds %struct.face, %struct.face* %242, i32 0, i32 3
  store i64 %call383, i64* %stipple384, align 8
  br label %if.end.385

if.end.385:                                       ; preds = %if.then.382, %if.end.377
  %243 = load %struct.face*, %struct.face** %face, align 8
  ret %struct.face* %243
}

; Function Attrs: nounwind uwtable
define internal %struct.face* @realize_tty_face(%struct.face_cache* %cache, i64* %attrs) #0 {
entry:
  %cache.addr = alloca %struct.face_cache*, align 8
  %attrs.addr = alloca i64*, align 8
  %face = alloca %struct.face*, align 8
  %weight = alloca i32, align 4
  %slant = alloca i32, align 4
  %face_colors_defaulted = alloca i8, align 1
  %f = alloca %struct.frame*, align 8
  %tem = alloca i64, align 8
  store %struct.face_cache* %cache, %struct.face_cache** %cache.addr, align 8
  store i64* %attrs, i64** %attrs.addr, align 8
  store i8 0, i8* %face_colors_defaulted, align 1
  %0 = load %struct.face_cache*, %struct.face_cache** %cache.addr, align 8
  %f1 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %0, i32 0, i32 1
  %1 = load %struct.frame*, %struct.frame** %f1, align 8
  store %struct.frame* %1, %struct.frame** %f, align 8
  %2 = load i64*, i64** %attrs.addr, align 8
  %call = call %struct.face* @make_realized_face(i64* %2)
  store %struct.face* %call, %struct.face** %face, align 8
  %3 = load i64*, i64** %attrs.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 5
  %4 = load i64, i64* %arrayidx, align 8
  %call2 = call i32 @font_style_to_value(i32 5, i64 %4, i1 zeroext false)
  %shr = ashr i32 %call2, 8
  store i32 %shr, i32* %weight, align 4
  %5 = load i64*, i64** %attrs.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, i64* %5, i64 6
  %6 = load i64, i64* %arrayidx3, align 8
  %call4 = call i32 @font_style_to_value(i32 6, i64 %6, i1 zeroext false)
  %shr5 = ashr i32 %call4, 8
  store i32 %shr5, i32* %slant, align 4
  %7 = load i32, i32* %weight, align 4
  %cmp = icmp sgt i32 %7, 100
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.face*, %struct.face** %face, align 8
  %tty_bold_p = getelementptr inbounds %struct.face, %struct.face* %8, i32 0, i32 13
  %9 = bitcast i24* %tty_bold_p to i32*
  %bf.load = load i32, i32* %9, align 8
  %bf.clear = and i32 %bf.load, -8193
  %bf.set = or i32 %bf.clear, 8192
  store i32 %bf.set, i32* %9, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, i32* %slant, align 4
  %cmp6 = icmp ne i32 %10, 100
  br i1 %cmp6, label %if.then.7, label %if.end.11

if.then.7:                                        ; preds = %if.end
  %11 = load %struct.face*, %struct.face** %face, align 8
  %tty_italic_p = getelementptr inbounds %struct.face, %struct.face* %11, i32 0, i32 13
  %12 = bitcast i24* %tty_italic_p to i32*
  %bf.load8 = load i32, i32* %12, align 8
  %bf.clear9 = and i32 %bf.load8, -16385
  %bf.set10 = or i32 %bf.clear9, 16384
  store i32 %bf.set10, i32* %12, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.7, %if.end
  %13 = load i64*, i64** %attrs.addr, align 8
  %arrayidx12 = getelementptr inbounds i64, i64* %13, i64 7
  %14 = load i64, i64* %arrayidx12, align 8
  %call13 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp14 = icmp eq i64 %14, %call13
  br i1 %cmp14, label %if.end.19, label %if.then.15

if.then.15:                                       ; preds = %if.end.11
  %15 = load %struct.face*, %struct.face** %face, align 8
  %tty_underline_p = getelementptr inbounds %struct.face, %struct.face* %15, i32 0, i32 13
  %16 = bitcast i24* %tty_underline_p to i32*
  %bf.load16 = load i32, i32* %16, align 8
  %bf.clear17 = and i32 %bf.load16, -32769
  %bf.set18 = or i32 %bf.clear17, 32768
  store i32 %bf.set18, i32* %16, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.15, %if.end.11
  %17 = load i64*, i64** %attrs.addr, align 8
  %arrayidx20 = getelementptr inbounds i64, i64* %17, i64 8
  %18 = load i64, i64* %arrayidx20, align 8
  %call21 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp22 = icmp eq i64 %18, %call21
  br i1 %cmp22, label %if.end.27, label %if.then.23

if.then.23:                                       ; preds = %if.end.19
  %19 = load %struct.face*, %struct.face** %face, align 8
  %tty_reverse_p = getelementptr inbounds %struct.face, %struct.face* %19, i32 0, i32 13
  %20 = bitcast i24* %tty_reverse_p to i32*
  %bf.load24 = load i32, i32* %20, align 8
  %bf.clear25 = and i32 %bf.load24, -65537
  %bf.set26 = or i32 %bf.clear25, 65536
  store i32 %bf.set26, i32* %20, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.23, %if.end.19
  %21 = load %struct.frame*, %struct.frame** %f, align 8
  %22 = load %struct.face*, %struct.face** %face, align 8
  call void @map_tty_color(%struct.frame* %21, %struct.face* %22, i32 9, i8* %face_colors_defaulted)
  %23 = load %struct.frame*, %struct.frame** %f, align 8
  %24 = load %struct.face*, %struct.face** %face, align 8
  call void @map_tty_color(%struct.frame* %23, %struct.face* %24, i32 10, i8* %face_colors_defaulted)
  %25 = load %struct.face*, %struct.face** %face, align 8
  %tty_reverse_p28 = getelementptr inbounds %struct.face, %struct.face* %25, i32 0, i32 13
  %26 = bitcast i24* %tty_reverse_p28 to i32*
  %bf.load29 = load i32, i32* %26, align 8
  %bf.lshr = lshr i32 %bf.load29, 16
  %bf.clear30 = and i32 %bf.lshr, 1
  %bf.cast = trunc i32 %bf.clear30 to i1
  br i1 %bf.cast, label %land.lhs.true, label %if.end.34

land.lhs.true:                                    ; preds = %if.end.27
  %27 = load i8, i8* %face_colors_defaulted, align 1
  %tobool = trunc i8 %27 to i1
  br i1 %tobool, label %if.end.34, label %if.then.31

if.then.31:                                       ; preds = %land.lhs.true
  %28 = load %struct.face*, %struct.face** %face, align 8
  %foreground = getelementptr inbounds %struct.face, %struct.face* %28, i32 0, i32 4
  %29 = load i64, i64* %foreground, align 8
  store i64 %29, i64* %tem, align 8
  %30 = load %struct.face*, %struct.face** %face, align 8
  %background = getelementptr inbounds %struct.face, %struct.face* %30, i32 0, i32 5
  %31 = load i64, i64* %background, align 8
  %32 = load %struct.face*, %struct.face** %face, align 8
  %foreground32 = getelementptr inbounds %struct.face, %struct.face* %32, i32 0, i32 4
  store i64 %31, i64* %foreground32, align 8
  %33 = load i64, i64* %tem, align 8
  %34 = load %struct.face*, %struct.face** %face, align 8
  %background33 = getelementptr inbounds %struct.face, %struct.face* %34, i32 0, i32 5
  store i64 %33, i64* %background33, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.31, %land.lhs.true, %if.end.27
  %35 = load i8, i8* @tty_suppress_bold_inverse_default_colors_p, align 1
  %tobool35 = trunc i8 %35 to i1
  br i1 %tobool35, label %land.lhs.true.36, label %if.end.52

land.lhs.true.36:                                 ; preds = %if.end.34
  %36 = load %struct.face*, %struct.face** %face, align 8
  %tty_bold_p37 = getelementptr inbounds %struct.face, %struct.face* %36, i32 0, i32 13
  %37 = bitcast i24* %tty_bold_p37 to i32*
  %bf.load38 = load i32, i32* %37, align 8
  %bf.lshr39 = lshr i32 %bf.load38, 13
  %bf.clear40 = and i32 %bf.lshr39, 1
  %bf.cast41 = trunc i32 %bf.clear40 to i1
  br i1 %bf.cast41, label %land.lhs.true.42, label %if.end.52

land.lhs.true.42:                                 ; preds = %land.lhs.true.36
  %38 = load %struct.face*, %struct.face** %face, align 8
  %background43 = getelementptr inbounds %struct.face, %struct.face* %38, i32 0, i32 5
  %39 = load i64, i64* %background43, align 8
  %cmp44 = icmp eq i64 %39, -2
  br i1 %cmp44, label %land.lhs.true.45, label %if.end.52

land.lhs.true.45:                                 ; preds = %land.lhs.true.42
  %40 = load %struct.face*, %struct.face** %face, align 8
  %foreground46 = getelementptr inbounds %struct.face, %struct.face* %40, i32 0, i32 4
  %41 = load i64, i64* %foreground46, align 8
  %cmp47 = icmp eq i64 %41, -3
  br i1 %cmp47, label %if.then.48, label %if.end.52

if.then.48:                                       ; preds = %land.lhs.true.45
  %42 = load %struct.face*, %struct.face** %face, align 8
  %tty_bold_p49 = getelementptr inbounds %struct.face, %struct.face* %42, i32 0, i32 13
  %43 = bitcast i24* %tty_bold_p49 to i32*
  %bf.load50 = load i32, i32* %43, align 8
  %bf.clear51 = and i32 %bf.load50, -8193
  store i32 %bf.clear51, i32* %43, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.48, %land.lhs.true.45, %land.lhs.true.42, %land.lhs.true.36, %if.end.34
  %44 = load %struct.face*, %struct.face** %face, align 8
  ret %struct.face* %44
}

; Function Attrs: nounwind uwtable
define internal %struct.face* @make_realized_face(i64* %attr) #0 {
entry:
  %attr.addr = alloca i64*, align 8
  %face = alloca %struct.face*, align 8
  store i64* %attr, i64** %attr.addr, align 8
  %call = call noalias i8* @xmalloc(i64 280)
  %0 = bitcast i8* %call to %struct.face*
  store %struct.face* %0, %struct.face** %face, align 8
  %1 = load %struct.face*, %struct.face** %face, align 8
  %lface = getelementptr inbounds %struct.face, %struct.face* %1, i32 0, i32 0
  %2 = bitcast [19 x i64]* %lface to i8*
  %3 = load i64*, i64** %attr.addr, align 8
  %4 = bitcast i64* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %4, i64 152, i32 8, i1 false)
  %5 = load %struct.face*, %struct.face** %face, align 8
  %id = getelementptr inbounds %struct.face, %struct.face* %5, i32 0, i32 1
  %6 = bitcast i32* %id to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 128, i32 4, i1 false)
  %7 = load %struct.face*, %struct.face** %face, align 8
  %8 = load %struct.face*, %struct.face** %face, align 8
  %ascii_face = getelementptr inbounds %struct.face, %struct.face* %8, i32 0, i32 17
  store %struct.face* %7, %struct.face** %ascii_face, align 8
  %9 = load %struct.face*, %struct.face** %face, align 8
  ret %struct.face* %9
}

; Function Attrs: nounwind uwtable
define internal void @cache_face(%struct.face_cache* %c, %struct.face* %face, i32 %hash) #0 {
entry:
  %c.addr = alloca %struct.face_cache*, align 8
  %face.addr = alloca %struct.face*, align 8
  %hash.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %last = alloca %struct.face*, align 8
  store %struct.face_cache* %c, %struct.face_cache** %c.addr, align 8
  store %struct.face* %face, %struct.face** %face.addr, align 8
  store i32 %hash, i32* %hash.addr, align 4
  %0 = load i32, i32* %hash.addr, align 4
  %rem = urem i32 %0, 1001
  store i32 %rem, i32* %i, align 4
  %1 = load i32, i32* %hash.addr, align 4
  %2 = load %struct.face*, %struct.face** %face.addr, align 8
  %hash1 = getelementptr inbounds %struct.face, %struct.face* %2, i32 0, i32 14
  store i32 %1, i32* %hash1, align 4
  %3 = load %struct.face*, %struct.face** %face.addr, align 8
  %ascii_face = getelementptr inbounds %struct.face, %struct.face* %3, i32 0, i32 17
  %4 = load %struct.face*, %struct.face** %ascii_face, align 8
  %5 = load %struct.face*, %struct.face** %face.addr, align 8
  %cmp = icmp ne %struct.face* %4, %5
  br i1 %cmp, label %if.then, label %if.else.12

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.face_cache*, %struct.face_cache** %c.addr, align 8
  %buckets = getelementptr inbounds %struct.face_cache, %struct.face_cache* %7, i32 0, i32 0
  %8 = load %struct.face**, %struct.face*** %buckets, align 8
  %arrayidx = getelementptr inbounds %struct.face*, %struct.face** %8, i64 %idxprom
  %9 = load %struct.face*, %struct.face** %arrayidx, align 8
  store %struct.face* %9, %struct.face** %last, align 8
  %10 = load %struct.face*, %struct.face** %last, align 8
  %tobool = icmp ne %struct.face* %10, null
  br i1 %tobool, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.2
  %11 = load %struct.face*, %struct.face** %last, align 8
  %next = getelementptr inbounds %struct.face, %struct.face* %11, i32 0, i32 15
  %12 = load %struct.face*, %struct.face** %next, align 8
  %tobool3 = icmp ne %struct.face* %12, null
  br i1 %tobool3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load %struct.face*, %struct.face** %last, align 8
  %next4 = getelementptr inbounds %struct.face, %struct.face* %13, i32 0, i32 15
  %14 = load %struct.face*, %struct.face** %next4, align 8
  store %struct.face* %14, %struct.face** %last, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = load %struct.face*, %struct.face** %face.addr, align 8
  %16 = load %struct.face*, %struct.face** %last, align 8
  %next5 = getelementptr inbounds %struct.face, %struct.face* %16, i32 0, i32 15
  store %struct.face* %15, %struct.face** %next5, align 8
  %17 = load %struct.face*, %struct.face** %last, align 8
  %18 = load %struct.face*, %struct.face** %face.addr, align 8
  %prev = getelementptr inbounds %struct.face, %struct.face* %18, i32 0, i32 16
  store %struct.face* %17, %struct.face** %prev, align 8
  %19 = load %struct.face*, %struct.face** %face.addr, align 8
  %next6 = getelementptr inbounds %struct.face, %struct.face* %19, i32 0, i32 15
  store %struct.face* null, %struct.face** %next6, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %20 = load %struct.face*, %struct.face** %face.addr, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %21 to i64
  %22 = load %struct.face_cache*, %struct.face_cache** %c.addr, align 8
  %buckets8 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %22, i32 0, i32 0
  %23 = load %struct.face**, %struct.face*** %buckets8, align 8
  %arrayidx9 = getelementptr inbounds %struct.face*, %struct.face** %23, i64 %idxprom7
  store %struct.face* %20, %struct.face** %arrayidx9, align 8
  %24 = load %struct.face*, %struct.face** %face.addr, align 8
  %next10 = getelementptr inbounds %struct.face, %struct.face* %24, i32 0, i32 15
  store %struct.face* null, %struct.face** %next10, align 8
  %25 = load %struct.face*, %struct.face** %face.addr, align 8
  %prev11 = getelementptr inbounds %struct.face, %struct.face* %25, i32 0, i32 16
  store %struct.face* null, %struct.face** %prev11, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %while.end
  br label %if.end.27

if.else.12:                                       ; preds = %entry
  %26 = load %struct.face*, %struct.face** %face.addr, align 8
  %prev13 = getelementptr inbounds %struct.face, %struct.face* %26, i32 0, i32 16
  store %struct.face* null, %struct.face** %prev13, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %27 to i64
  %28 = load %struct.face_cache*, %struct.face_cache** %c.addr, align 8
  %buckets15 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %28, i32 0, i32 0
  %29 = load %struct.face**, %struct.face*** %buckets15, align 8
  %arrayidx16 = getelementptr inbounds %struct.face*, %struct.face** %29, i64 %idxprom14
  %30 = load %struct.face*, %struct.face** %arrayidx16, align 8
  %31 = load %struct.face*, %struct.face** %face.addr, align 8
  %next17 = getelementptr inbounds %struct.face, %struct.face* %31, i32 0, i32 15
  store %struct.face* %30, %struct.face** %next17, align 8
  %32 = load %struct.face*, %struct.face** %face.addr, align 8
  %next18 = getelementptr inbounds %struct.face, %struct.face* %32, i32 0, i32 15
  %33 = load %struct.face*, %struct.face** %next18, align 8
  %tobool19 = icmp ne %struct.face* %33, null
  br i1 %tobool19, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.else.12
  %34 = load %struct.face*, %struct.face** %face.addr, align 8
  %35 = load %struct.face*, %struct.face** %face.addr, align 8
  %next21 = getelementptr inbounds %struct.face, %struct.face* %35, i32 0, i32 15
  %36 = load %struct.face*, %struct.face** %next21, align 8
  %prev22 = getelementptr inbounds %struct.face, %struct.face* %36, i32 0, i32 16
  store %struct.face* %34, %struct.face** %prev22, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %if.else.12
  %37 = load %struct.face*, %struct.face** %face.addr, align 8
  %38 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %38 to i64
  %39 = load %struct.face_cache*, %struct.face_cache** %c.addr, align 8
  %buckets25 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %39, i32 0, i32 0
  %40 = load %struct.face**, %struct.face*** %buckets25, align 8
  %arrayidx26 = getelementptr inbounds %struct.face*, %struct.face** %40, i64 %idxprom24
  store %struct.face* %37, %struct.face** %arrayidx26, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.23, %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.27
  %41 = load i32, i32* %i, align 4
  %42 = load %struct.face_cache*, %struct.face_cache** %c.addr, align 8
  %used = getelementptr inbounds %struct.face_cache, %struct.face_cache* %42, i32 0, i32 4
  %43 = load i32, i32* %used, align 4
  %cmp28 = icmp slt i32 %41, %43
  br i1 %cmp28, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %44 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %44 to i64
  %45 = load %struct.face_cache*, %struct.face_cache** %c.addr, align 8
  %faces_by_id = getelementptr inbounds %struct.face_cache, %struct.face_cache* %45, i32 0, i32 2
  %46 = load %struct.face**, %struct.face*** %faces_by_id, align 8
  %arrayidx30 = getelementptr inbounds %struct.face*, %struct.face** %46, i64 %idxprom29
  %47 = load %struct.face*, %struct.face** %arrayidx30, align 8
  %cmp31 = icmp eq %struct.face* %47, null
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %for.body
  br label %for.end

if.end.33:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.33
  %48 = load i32, i32* %i, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.32, %for.cond
  %49 = load i32, i32* %i, align 4
  %50 = load %struct.face*, %struct.face** %face.addr, align 8
  %id = getelementptr inbounds %struct.face, %struct.face* %50, i32 0, i32 1
  store i32 %49, i32* %id, align 4
  %51 = load i32, i32* %i, align 4
  %52 = load %struct.face_cache*, %struct.face_cache** %c.addr, align 8
  %used34 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %52, i32 0, i32 4
  %53 = load i32, i32* %used34, align 4
  %cmp35 = icmp eq i32 %51, %53
  br i1 %cmp35, label %if.then.36, label %if.end.47

if.then.36:                                       ; preds = %for.end
  %54 = load %struct.face_cache*, %struct.face_cache** %c.addr, align 8
  %used37 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %54, i32 0, i32 4
  %55 = load i32, i32* %used37, align 4
  %conv = sext i32 %55 to i64
  %56 = load %struct.face_cache*, %struct.face_cache** %c.addr, align 8
  %size = getelementptr inbounds %struct.face_cache, %struct.face_cache* %56, i32 0, i32 3
  %57 = load i64, i64* %size, align 8
  %cmp38 = icmp eq i64 %conv, %57
  br i1 %cmp38, label %if.then.40, label %if.end.44

if.then.40:                                       ; preds = %if.then.36
  %58 = load %struct.face_cache*, %struct.face_cache** %c.addr, align 8
  %faces_by_id41 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %58, i32 0, i32 2
  %59 = load %struct.face**, %struct.face*** %faces_by_id41, align 8
  %60 = bitcast %struct.face** %59 to i8*
  %61 = load %struct.face_cache*, %struct.face_cache** %c.addr, align 8
  %size42 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %61, i32 0, i32 3
  %call = call i8* @xpalloc(i8* %60, i64* %size42, i64 1, i64 1048575, i64 8)
  %62 = bitcast i8* %call to %struct.face**
  %63 = load %struct.face_cache*, %struct.face_cache** %c.addr, align 8
  %faces_by_id43 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %63, i32 0, i32 2
  store %struct.face** %62, %struct.face*** %faces_by_id43, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.40, %if.then.36
  %64 = load %struct.face_cache*, %struct.face_cache** %c.addr, align 8
  %used45 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %64, i32 0, i32 4
  %65 = load i32, i32* %used45, align 4
  %inc46 = add nsw i32 %65, 1
  store i32 %inc46, i32* %used45, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.44, %for.end
  %66 = load %struct.face*, %struct.face** %face.addr, align 8
  %67 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %67 to i64
  %68 = load %struct.face_cache*, %struct.face_cache** %c.addr, align 8
  %faces_by_id49 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %68, i32 0, i32 2
  %69 = load %struct.face**, %struct.face*** %faces_by_id49, align 8
  %arrayidx50 = getelementptr inbounds %struct.face*, %struct.face** %69, i64 %idxprom48
  store %struct.face* %66, %struct.face** %arrayidx50, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @lface_same_font_attributes_p(i64* %lface1, i64* %lface2) #0 {
entry:
  %lface1.addr = alloca i64*, align 8
  %lface2.addr = alloca i64*, align 8
  store i64* %lface1, i64** %lface1.addr, align 8
  store i64* %lface2, i64** %lface2.addr, align 8
  %0 = load i64*, i64** %lface1.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %0, i64 1
  %1 = load i64, i64* %arrayidx, align 8
  %call = call i8* @SSDATA(i64 %1)
  %2 = load i64*, i64** %lface2.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, i64* %2, i64 1
  %3 = load i64, i64* %arrayidx1, align 8
  %call2 = call i8* @SSDATA(i64 %3)
  %call3 = call i32 @xstrcasecmp(i8* %call, i8* %call2)
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %land.lhs.true, label %land.end.44

land.lhs.true:                                    ; preds = %entry
  %4 = load i64*, i64** %lface1.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, i64* %4, i64 2
  %5 = load i64, i64* %arrayidx4, align 8
  %call5 = call i8* @SSDATA(i64 %5)
  %6 = load i64*, i64** %lface2.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, i64* %6, i64 2
  %7 = load i64, i64* %arrayidx6, align 8
  %call7 = call i8* @SSDATA(i64 %7)
  %call8 = call i32 @xstrcasecmp(i8* %call5, i8* %call7)
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %land.lhs.true.10, label %land.end.44

land.lhs.true.10:                                 ; preds = %land.lhs.true
  %8 = load i64*, i64** %lface1.addr, align 8
  %arrayidx11 = getelementptr inbounds i64, i64* %8, i64 4
  %9 = load i64, i64* %arrayidx11, align 8
  %10 = load i64*, i64** %lface2.addr, align 8
  %arrayidx12 = getelementptr inbounds i64, i64* %10, i64 4
  %11 = load i64, i64* %arrayidx12, align 8
  %cmp13 = icmp eq i64 %9, %11
  br i1 %cmp13, label %land.lhs.true.14, label %land.end.44

land.lhs.true.14:                                 ; preds = %land.lhs.true.10
  %12 = load i64*, i64** %lface1.addr, align 8
  %arrayidx15 = getelementptr inbounds i64, i64* %12, i64 3
  %13 = load i64, i64* %arrayidx15, align 8
  %14 = load i64*, i64** %lface2.addr, align 8
  %arrayidx16 = getelementptr inbounds i64, i64* %14, i64 3
  %15 = load i64, i64* %arrayidx16, align 8
  %cmp17 = icmp eq i64 %13, %15
  br i1 %cmp17, label %land.lhs.true.18, label %land.end.44

land.lhs.true.18:                                 ; preds = %land.lhs.true.14
  %16 = load i64*, i64** %lface1.addr, align 8
  %arrayidx19 = getelementptr inbounds i64, i64* %16, i64 5
  %17 = load i64, i64* %arrayidx19, align 8
  %18 = load i64*, i64** %lface2.addr, align 8
  %arrayidx20 = getelementptr inbounds i64, i64* %18, i64 5
  %19 = load i64, i64* %arrayidx20, align 8
  %cmp21 = icmp eq i64 %17, %19
  br i1 %cmp21, label %land.lhs.true.22, label %land.end.44

land.lhs.true.22:                                 ; preds = %land.lhs.true.18
  %20 = load i64*, i64** %lface1.addr, align 8
  %arrayidx23 = getelementptr inbounds i64, i64* %20, i64 6
  %21 = load i64, i64* %arrayidx23, align 8
  %22 = load i64*, i64** %lface2.addr, align 8
  %arrayidx24 = getelementptr inbounds i64, i64* %22, i64 6
  %23 = load i64, i64* %arrayidx24, align 8
  %cmp25 = icmp eq i64 %21, %23
  br i1 %cmp25, label %land.lhs.true.26, label %land.end.44

land.lhs.true.26:                                 ; preds = %land.lhs.true.22
  %24 = load i64*, i64** %lface1.addr, align 8
  %arrayidx27 = getelementptr inbounds i64, i64* %24, i64 15
  %25 = load i64, i64* %arrayidx27, align 8
  %26 = load i64*, i64** %lface2.addr, align 8
  %arrayidx28 = getelementptr inbounds i64, i64* %26, i64 15
  %27 = load i64, i64* %arrayidx28, align 8
  %cmp29 = icmp eq i64 %25, %27
  br i1 %cmp29, label %land.rhs, label %land.end.44

land.rhs:                                         ; preds = %land.lhs.true.26
  %28 = load i64*, i64** %lface1.addr, align 8
  %arrayidx30 = getelementptr inbounds i64, i64* %28, i64 17
  %29 = load i64, i64* %arrayidx30, align 8
  %30 = load i64*, i64** %lface2.addr, align 8
  %arrayidx31 = getelementptr inbounds i64, i64* %30, i64 17
  %31 = load i64, i64* %arrayidx31, align 8
  %cmp32 = icmp eq i64 %29, %31
  br i1 %cmp32, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %32 = load i64*, i64** %lface1.addr, align 8
  %arrayidx33 = getelementptr inbounds i64, i64* %32, i64 17
  %33 = load i64, i64* %arrayidx33, align 8
  %call34 = call zeroext i1 @STRINGP(i64 %33)
  br i1 %call34, label %land.lhs.true.35, label %land.end

land.lhs.true.35:                                 ; preds = %lor.rhs
  %34 = load i64*, i64** %lface2.addr, align 8
  %arrayidx36 = getelementptr inbounds i64, i64* %34, i64 17
  %35 = load i64, i64* %arrayidx36, align 8
  %call37 = call zeroext i1 @STRINGP(i64 %35)
  br i1 %call37, label %land.rhs.38, label %land.end

land.rhs.38:                                      ; preds = %land.lhs.true.35
  %36 = load i64*, i64** %lface1.addr, align 8
  %arrayidx39 = getelementptr inbounds i64, i64* %36, i64 17
  %37 = load i64, i64* %arrayidx39, align 8
  %call40 = call i8* @SSDATA(i64 %37)
  %38 = load i64*, i64** %lface2.addr, align 8
  %arrayidx41 = getelementptr inbounds i64, i64* %38, i64 17
  %39 = load i64, i64* %arrayidx41, align 8
  %call42 = call i8* @SSDATA(i64 %39)
  %call43 = call i32 @xstrcasecmp(i8* %call40, i8* %call42)
  %tobool = icmp ne i32 %call43, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs.38, %land.lhs.true.35, %lor.rhs
  %40 = phi i1 [ false, %land.lhs.true.35 ], [ false, %lor.rhs ], [ %lnot, %land.rhs.38 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.rhs
  %41 = phi i1 [ true, %land.rhs ], [ %40, %land.end ]
  br label %land.end.44

land.end.44:                                      ; preds = %lor.end, %land.lhs.true.26, %land.lhs.true.22, %land.lhs.true.18, %land.lhs.true.14, %land.lhs.true.10, %land.lhs.true, %entry
  %42 = phi i1 [ false, %land.lhs.true.26 ], [ false, %land.lhs.true.22 ], [ false, %land.lhs.true.18 ], [ false, %land.lhs.true.14 ], [ false, %land.lhs.true.10 ], [ false, %land.lhs.true ], [ false, %entry ], [ %41, %lor.end ]
  ret i1 %42
}

declare i32 @make_fontset_for_ascii_face(%struct.frame*, i32, %struct.face*) #1

; Function Attrs: nounwind uwtable
define internal i32 @face_fontset(i64* %attrs) #0 {
entry:
  %retval = alloca i32, align 4
  %attrs.addr = alloca i64*, align 8
  %name = alloca i64, align 8
  store i64* %attrs, i64** %attrs.addr, align 8
  %0 = load i64*, i64** %attrs.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %0, i64 17
  %1 = load i64, i64* %arrayidx, align 8
  store i64 %1, i64* %name, align 8
  %2 = load i64, i64* %name, align 8
  %call = call zeroext i1 @STRINGP(i64 %2)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %name, align 8
  %call1 = call i32 @fs_query_fontset(i64 %3, i32 0)
  store i32 %call1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal void @load_face_colors(%struct.frame* %f, %struct.face* %face, i64* %attrs) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %face.addr = alloca %struct.face*, align 8
  %attrs.addr = alloca i64*, align 8
  %fg = alloca i64, align 8
  %bg = alloca i64, align 8
  %dfg = alloca i64, align 8
  %xfg = alloca %struct.XColor, align 8
  %xbg = alloca %struct.XColor, align 8
  %tmp = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store %struct.face* %face, %struct.face** %face.addr, align 8
  store i64* %attrs, i64** %attrs.addr, align 8
  %0 = load i64*, i64** %attrs.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %0, i64 10
  %1 = load i64, i64* %arrayidx, align 8
  store i64 %1, i64* %bg, align 8
  %2 = load i64*, i64** %attrs.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, i64* %2, i64 9
  %3 = load i64, i64* %arrayidx1, align 8
  store i64 %3, i64* %fg, align 8
  %4 = load i64*, i64** %attrs.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, i64* %4, i64 8
  %5 = load i64, i64* %arrayidx2, align 8
  %call = call i64 @builtin_lisp_symbol(i32 901)
  %cmp = icmp eq i64 %5, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i64, i64* %fg, align 8
  store i64 %6, i64* %tmp, align 8
  %7 = load i64, i64* %bg, align 8
  store i64 %7, i64* %fg, align 8
  %8 = load i64, i64* %tmp, align 8
  store i64 %8, i64* %bg, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %10 = load i64, i64* %bg, align 8
  %call3 = call i8* @SSDATA(i64 %10)
  %call4 = call zeroext i1 @face_color_supported_p(%struct.frame* %9, i8* %call3, i1 zeroext false)
  br i1 %call4, label %if.end.11, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %11 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 87), align 8
  %call5 = call i64 @Fbitmap_spec_p(i64 %11)
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp7 = icmp eq i64 %call5, %call6
  br i1 %cmp7, label %if.end.11, label %if.then.8

if.then.8:                                        ; preds = %land.lhs.true
  %12 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %13 = load %struct.face*, %struct.face** %face.addr, align 8
  %stipple = getelementptr inbounds %struct.face, %struct.face* %13, i32 0, i32 3
  %14 = load i64, i64* %stipple, align 8
  call void @x_destroy_bitmap(%struct.frame* %12, i64 %14)
  %15 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %16 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 87), align 8
  %call9 = call i64 @load_pixmap(%struct.frame* %15, i64 %16)
  %17 = load %struct.face*, %struct.face** %face.addr, align 8
  %stipple10 = getelementptr inbounds %struct.face, %struct.face* %17, i32 0, i32 3
  store i64 %call9, i64* %stipple10, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %land.lhs.true, %if.end
  %18 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %19 = load %struct.face*, %struct.face** %face.addr, align 8
  %20 = load i64, i64* %bg, align 8
  %call12 = call i64 @load_color2(%struct.frame* %18, %struct.face* %19, i64 %20, i32 10, %struct.XColor* %xbg)
  %21 = load %struct.face*, %struct.face** %face.addr, align 8
  %background = getelementptr inbounds %struct.face, %struct.face* %21, i32 0, i32 5
  store i64 %call12, i64* %background, align 8
  %22 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %23 = load %struct.face*, %struct.face** %face.addr, align 8
  %24 = load i64, i64* %fg, align 8
  %call13 = call i64 @load_color2(%struct.frame* %22, %struct.face* %23, i64 %24, i32 9, %struct.XColor* %xfg)
  %25 = load %struct.face*, %struct.face** %face.addr, align 8
  %foreground = getelementptr inbounds %struct.face, %struct.face* %25, i32 0, i32 4
  store i64 %call13, i64* %foreground, align 8
  %26 = load i64*, i64** %attrs.addr, align 8
  %arrayidx14 = getelementptr inbounds i64, i64* %26, i64 18
  %27 = load i64, i64* %arrayidx14, align 8
  store i64 %27, i64* %dfg, align 8
  %28 = load i64, i64* %dfg, align 8
  %call15 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp16 = icmp eq i64 %28, %call15
  br i1 %cmp16, label %if.end.33, label %land.lhs.true.17

land.lhs.true.17:                                 ; preds = %if.end.11
  %29 = load i64, i64* %dfg, align 8
  %call18 = call i64 @builtin_lisp_symbol(i32 975)
  %cmp19 = icmp eq i64 %29, %call18
  br i1 %cmp19, label %if.end.33, label %land.lhs.true.20

land.lhs.true.20:                                 ; preds = %land.lhs.true.17
  %call21 = call i32 @color_distance(%struct.XColor* %xbg, %struct.XColor* %xfg)
  %cmp22 = icmp slt i32 %call21, 30000
  br i1 %cmp22, label %if.then.23, label %if.end.33

if.then.23:                                       ; preds = %land.lhs.true.20
  %30 = load i64*, i64** %attrs.addr, align 8
  %arrayidx24 = getelementptr inbounds i64, i64* %30, i64 8
  %31 = load i64, i64* %arrayidx24, align 8
  %call25 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp26 = icmp eq i64 %31, %call25
  br i1 %cmp26, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %if.then.23
  %32 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %33 = load %struct.face*, %struct.face** %face.addr, align 8
  %34 = load i64, i64* %dfg, align 8
  %call28 = call i64 @load_color(%struct.frame* %32, %struct.face* %33, i64 %34, i32 10)
  %35 = load %struct.face*, %struct.face** %face.addr, align 8
  %background29 = getelementptr inbounds %struct.face, %struct.face* %35, i32 0, i32 5
  store i64 %call28, i64* %background29, align 8
  br label %if.end.32

if.else:                                          ; preds = %if.then.23
  %36 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %37 = load %struct.face*, %struct.face** %face.addr, align 8
  %38 = load i64, i64* %dfg, align 8
  %call30 = call i64 @load_color(%struct.frame* %36, %struct.face* %37, i64 %38, i32 9)
  %39 = load %struct.face*, %struct.face** %face.addr, align 8
  %foreground31 = getelementptr inbounds %struct.face, %struct.face* %39, i32 0, i32 4
  store i64 %call30, i64* %foreground31, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.else, %if.then.27
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %land.lhs.true.20, %land.lhs.true.17, %if.end.11
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @load_pixmap(%struct.frame* %f, i64 %name) #0 {
entry:
  %retval = alloca i64, align 8
  %f.addr = alloca %struct.frame*, align 8
  %name.addr = alloca i64, align 8
  %bitmap_id = alloca i64, align 8
  %h = alloca i32, align 4
  %w = alloca i32, align 4
  %bits = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %name, i64* %name.addr, align 8
  %0 = load i64, i64* %name.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %name.addr, align 8
  %call1 = call i64 @Fbitmap_spec_p(i64 %1)
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp3 = icmp eq i64 %call1, %call2
  br i1 %cmp3, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call4 = call i64 @builtin_lisp_symbol(i32 204)
  %2 = load i64, i64* %name.addr, align 8
  %3 = call i64 @wrong_type_argument(i64 %call4, i64 %2) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %4, %cond.true
  call void @block_input()
  %5 = load i64, i64* %name.addr, align 8
  %and = and i64 %5, 7
  %conv = trunc i64 %and to i32
  %cmp5 = icmp eq i32 %conv, 3
  br i1 %cmp5, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %cond.end
  %6 = load i64, i64* %name.addr, align 8
  %call8 = call i64 @Fcar(i64 %6)
  %shr = ashr i64 %call8, 2
  %conv9 = trunc i64 %shr to i32
  store i32 %conv9, i32* %w, align 4
  %7 = load i64, i64* %name.addr, align 8
  %call10 = call i64 @Fcdr(i64 %7)
  %call11 = call i64 @Fcar(i64 %call10)
  %shr12 = ashr i64 %call11, 2
  %conv13 = trunc i64 %shr12 to i32
  store i32 %conv13, i32* %h, align 4
  %8 = load i64, i64* %name.addr, align 8
  %call14 = call i64 @Fcdr(i64 %8)
  %call15 = call i64 @Fcdr(i64 %call14)
  %call16 = call i64 @Fcar(i64 %call15)
  store i64 %call16, i64* %bits, align 8
  %9 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %10 = load i64, i64* %bits, align 8
  %call17 = call i8* @SSDATA(i64 %10)
  %11 = load i32, i32* %w, align 4
  %12 = load i32, i32* %h, align 4
  %call18 = call i64 @x_create_bitmap_from_data(%struct.frame* %9, i8* %call17, i32 %11, i32 %12)
  store i64 %call18, i64* %bitmap_id, align 8
  br label %if.end.20

if.else:                                          ; preds = %cond.end
  %13 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %14 = load i64, i64* %name.addr, align 8
  %call19 = call i64 @x_create_bitmap_from_file(%struct.frame* %13, i64 %14)
  store i64 %call19, i64* %bitmap_id, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.7
  call void @unblock_input()
  %15 = load i64, i64* %bitmap_id, align 8
  %cmp21 = icmp slt i64 %15, 0
  br i1 %cmp21, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %if.end.20
  %16 = load i64, i64* %name.addr, align 8
  call void (i8*, ...) @add_to_log(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.57, i32 0, i32 0), i64 %16)
  store i64 0, i64* %bitmap_id, align 8
  br label %if.end.25

if.else.24:                                       ; preds = %if.end.20
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.24, %if.then.23
  %17 = load i64, i64* %bitmap_id, align 8
  store i64 %17, i64* %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then
  %18 = load i64, i64* %retval
  ret i64 %18
}

declare i64 @x_create_bitmap_from_data(%struct.frame*, i8*, i32, i32) #1

declare i64 @x_create_bitmap_from_file(%struct.frame*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @map_tty_color(%struct.frame* %f, %struct.face* %face, i32 %idx, i8* %defaulted) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %face.addr = alloca %struct.face*, align 8
  %idx.addr = alloca i32, align 4
  %defaulted.addr = alloca i8*, align 8
  %frame = alloca i64, align 8
  %color = alloca i64, align 8
  %def = alloca i64, align 8
  %foreground_p = alloca i8, align 1
  %default_pixel = alloca i64, align 8
  %pixel = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store %struct.face* %face, %struct.face** %face.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  store i8* %defaulted, i8** %defaulted.addr, align 8
  %0 = load i32, i32* %idx.addr, align 4
  %cmp = icmp eq i32 %0, 9
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, i8* %foreground_p, align 1
  %1 = load i8, i8* %foreground_p, align 1
  %tobool = trunc i8 %1 to i1
  %cond = select i1 %tobool, i64 -2, i64 -3
  store i64 %cond, i64* %default_pixel, align 8
  %2 = load i64, i64* %default_pixel, align 8
  store i64 %2, i64* %pixel, align 8
  %3 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %4 = bitcast %struct.frame* %3 to i8*
  %call = call i64 @make_lisp_ptr(i8* %4, i32 5)
  store i64 %call, i64* %frame, align 8
  %5 = load i32, i32* %idx.addr, align 4
  %idxprom = zext i32 %5 to i64
  %6 = load %struct.face*, %struct.face** %face.addr, align 8
  %lface = getelementptr inbounds %struct.face, %struct.face* %6, i32 0, i32 0
  %arrayidx = getelementptr inbounds [19 x i64], [19 x i64]* %lface, i32 0, i64 %idxprom
  %7 = load i64, i64* %arrayidx, align 8
  store i64 %7, i64* %color, align 8
  %8 = load i64, i64* %color, align 8
  %call1 = call zeroext i1 @STRINGP(i64 %8)
  br i1 %call1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %9 = load i64, i64* %color, align 8
  %call2 = call i64 @SCHARS(i64 %9)
  %tobool3 = icmp ne i64 %call2, 0
  br i1 %tobool3, label %land.lhs.true.4, label %if.end

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %10 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 310), align 8
  %and = and i64 %10, 7
  %conv = trunc i64 %and to i32
  %cmp5 = icmp eq i32 %conv, 3
  br i1 %cmp5, label %land.lhs.true.7, label %if.end

land.lhs.true.7:                                  ; preds = %land.lhs.true.4
  %11 = load i64, i64* %color, align 8
  %call8 = call i64 @builtin_lisp_symbol(i32 939)
  %12 = load i64, i64* %frame, align 8
  %call9 = call i64 @call1(i64 %call8, i64 %12)
  %call10 = call i64 @assoc_no_quit(i64 %11, i64 %call9)
  store i64 %call10, i64* %def, align 8
  %13 = load i64, i64* %def, align 8
  %and11 = and i64 %13, 7
  %conv12 = trunc i64 %and11 to i32
  %cmp13 = icmp eq i32 %conv12, 3
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.7
  %14 = load i64, i64* %def, align 8
  %sub = sub nsw i64 %14, 3
  %15 = inttoptr i64 %sub to i8*
  %16 = bitcast i8* %15 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %16, i32 0, i32 1
  %cdr = bitcast %union.anon.10* %u to i64*
  %17 = load i64, i64* %cdr, align 8
  %sub15 = sub nsw i64 %17, 3
  %18 = inttoptr i64 %sub15 to i8*
  %19 = bitcast i8* %18 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %19, i32 0, i32 0
  %20 = load i64, i64* %car, align 8
  %shr = ashr i64 %20, 2
  store i64 %shr, i64* %pixel, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.7, %land.lhs.true.4, %land.lhs.true, %entry
  %21 = load i64, i64* %pixel, align 8
  %22 = load i64, i64* %default_pixel, align 8
  %cmp16 = icmp eq i64 %21, %22
  br i1 %cmp16, label %land.lhs.true.18, label %if.end.23

land.lhs.true.18:                                 ; preds = %if.end
  %23 = load i64, i64* %color, align 8
  %call19 = call zeroext i1 @STRINGP(i64 %23)
  br i1 %call19, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %land.lhs.true.18
  %24 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %25 = load %struct.face*, %struct.face** %face.addr, align 8
  %26 = load i64, i64* %color, align 8
  %27 = load i32, i32* %idx.addr, align 4
  %call22 = call i64 @load_color(%struct.frame* %24, %struct.face* %25, i64 %26, i32 %27)
  store i64 %call22, i64* %pixel, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %land.lhs.true.18, %if.end
  %28 = load i8, i8* %foreground_p, align 1
  %tobool24 = trunc i8 %28 to i1
  br i1 %tobool24, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %if.end.23
  %29 = load i64, i64* %pixel, align 8
  %30 = load %struct.face*, %struct.face** %face.addr, align 8
  %foreground = getelementptr inbounds %struct.face, %struct.face* %30, i32 0, i32 4
  store i64 %29, i64* %foreground, align 8
  br label %if.end.26

if.else:                                          ; preds = %if.end.23
  %31 = load i64, i64* %pixel, align 8
  %32 = load %struct.face*, %struct.face** %face.addr, align 8
  %background = getelementptr inbounds %struct.face, %struct.face* %32, i32 0, i32 5
  store i64 %31, i64* %background, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.else, %if.then.25
  ret void
}

declare i64 @assoc_no_quit(i64, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
