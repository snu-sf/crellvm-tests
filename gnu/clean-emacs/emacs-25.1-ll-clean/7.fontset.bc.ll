; ModuleID = './src/fontset.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emacs_globals = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.charset = type { i32, i64, i32, [15 x i32], i8*, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [190 x i8], i32 }
%struct.Lisp_Objfwd = type { i32, i64* }
%struct.Lisp_Subr = type { %struct.vectorlike_header, %union.anon.11, i16, i16, i8*, i8*, i8* }
%struct.vectorlike_header = type { i64 }
%union.anon.11 = type { i64 ()* }
%struct.Lisp_Char_Table = type { %struct.vectorlike_header, i64, i64, i64, i64, [64 x i64], [0 x i64] }
%struct.Lisp_Cons = type { i64, %union.anon }
%union.anon = type { i64 }
%struct.frame = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.face_cache*, i32, %struct.glyph_pool*, %struct.glyph_pool*, %struct.glyph_matrix*, %struct.glyph_matrix*, i48, i32, i32, i32, i32, i8*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.terminal*, %union.output_data, %struct.font_driver_list*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x double], double, i32, i64, i64 }
%struct.face_cache = type { %struct.face**, %struct.frame*, %struct.face**, i64, i32, i8 }
%struct.glyph_pool = type { %struct.glyph*, i64, i32, i32 }
%struct.glyph = type { i64, i64, i16, i16, i16, i16, i24, i24, %union.anon.0, %union.anon.2 }
%union.anon.0 = type { %struct.glyph_slice }
%struct.glyph_slice = type { i64 }
%union.anon.2 = type { i32 }
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
%struct.iterator_stack_entry = type { i64, i32, i64, i64, i64, i64, %struct.composition_it, i32, %union.anon.6, %struct.text_pos, %struct.display_pos, i64, i32, i32, i32, i8, i32, i16, i64, i64 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { i64, %struct.it_slice, i64 }
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
%struct.font = type { %struct.vectorlike_header, [17 x i64], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, %struct.font_driver* }
%struct.font_driver = type { i64, i8, i64 (%struct.frame*)*, i64 (%struct.frame*, i64)*, i64 (%struct.frame*, i64)*, i64 (%struct.frame*)*, void (i64)*, i64 (%struct.frame*, i64, i32)*, void (%struct.font*)*, {}*, {}*, i32 (i64, i32)*, i32 (%struct.font*, i32)*, void (%struct.font*, i32*, i32, %struct.font_metrics*)*, i32 (%struct.glyph_string*, i32, i32, i32, i32, i1)*, i32 (%struct.font*, i32, %struct.font_bitmap*, i32)*, void (%struct.font*, %struct.font_bitmap*)*, i32 (%struct.font*, i32, i32, i32*, i32*)*, i64 (%struct.font*)*, i32 (%struct.font*, i64, i64, i32, i32, i64, i32, i1)*, i32 (%struct.frame*)*, i32 (%struct.frame*)*, i64 (i64)*, i32 (%struct.frame*, %struct.font*)*, i32 (%struct.font*, i32, i32*)*, void (i64, i64)*, i1 (%struct.frame*, i64, i64)*, i64 (%struct.font*)* }
%struct.font_metrics = type { i16, i16, i16, i16, i16 }
%struct.font_bitmap = type { i32, i32, i32, i32, i8*, i32, i32, i32 }
%struct.composition = type opaque
%struct._XGC = type opaque
%struct.input_event = type { i32, i32, i32, i64, i64, i64, i64, i64 }
%union.output_data = type { %struct.tty_output* }
%struct.tty_output = type opaque
%struct.font_driver_list = type { i8, %struct.font_driver*, %struct.font_driver_list* }
%struct.face = type { [19 x i64], i32, %struct._XGC*, i64, i64, i64, i64, i64, i64, i64, %struct.font*, i32, i32, i24, i32, %struct.face*, %struct.face*, %struct.face*, i8* }
%struct.Lisp_Hash_Table = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.hash_table_test, %struct.Lisp_Hash_Table* }
%struct.hash_table_test = type { i64, i64, i64, i1 (%struct.hash_table_test*, i64, i64)*, i64 (%struct.hash_table_test*, i64)* }
%union.Aligned_String = type { %struct.Lisp_String }
%struct.Lisp_String = type { i64, i64, %struct.interval*, i8* }
%struct.interval = type opaque
%union.Aligned_Cons = type { %struct.Lisp_Cons }
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
%struct.Mouse_HLInfo = type { i32, i32, i32, i32, i32, i32, i64, i32, i64, %struct.frame*, i32, i32, i8 }
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
%struct.Lisp_Vector = type { %struct.vectorlike_header, [0 x i64] }

@Vfontset_table = internal global i64 0, align 8
@next_fontset_id = internal global i32 0, align 4
@globals = external global %struct.emacs_globals, align 8
@Vcharset_hash_table = external global i64, align 8
@Vdefault_fontset = internal global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"Invalid font-spec\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Can't set a font for partial ASCII range\00", align 1
@charset_table = external global %struct.charset*, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"Invalid script or charset name: %s\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Invalid target for setting a font\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Can't set ASCII font to nil\00", align 1
@Vframe_list = external global i64, align 8
@.str.6 = private unnamed_addr constant [36 x i8] c"Fontset name must be in XLFD format\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"fontset-\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"Registry field of fontset name must be \22fontset-*\22\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"Invalid fontset name (perhaps too long): %s\00", align 1
@auto_fontset_alist = internal global i64 0, align 8
@num_auto_fontsets = internal global i64 0, align 8
@.str.10 = private unnamed_addr constant [16 x i8] c"fontset-startup\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"fontset-auto%ld\00", align 1
@Vcached_fontset_data = internal global i64 0, align 8
@.str.12 = private unnamed_addr constant [41 x i8] c"-*-*-*-*-*-*-*-*-*-*-*-*-fontset-default\00", align 1
@syms_of_fontset.o_fwd = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.13 = private unnamed_addr constant [28 x i8] c"font-encoding-charset-alist\00", align 1
@syms_of_fontset.o_fwd.14 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.15 = private unnamed_addr constant [19 x i8] c"use-default-ascent\00", align 1
@syms_of_fontset.o_fwd.16 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.17 = private unnamed_addr constant [28 x i8] c"ignore-relative-composition\00", align 1
@syms_of_fontset.o_fwd.18 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.19 = private unnamed_addr constant [25 x i8] c"alternate-fontname-alist\00", align 1
@syms_of_fontset.o_fwd.20 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.21 = private unnamed_addr constant [20 x i8] c"fontset-alias-alist\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"fontset-default\00", align 1
@syms_of_fontset.o_fwd.23 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.24 = private unnamed_addr constant [31 x i8] c"vertical-centering-font-regexp\00", align 1
@syms_of_fontset.o_fwd.25 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.26 = private unnamed_addr constant [17 x i8] c"otf-script-alist\00", align 1
@Sfontset_list = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon.11 { i64 ()* @Ffontset_list }, i16 0, i16 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.27 = private unnamed_addr constant [26 x i8] c"current fontset: font for\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"default fontset: font for\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"current fallback: font for\00", align 1
@.str.30 = private unnamed_addr constant [27 x i8] c"default fallback: font for\00", align 1
@selected_frame = external global i64, align 8
@charset_ordered_list_tick = external global i64, align 8
@Vcharset_ordered_list = external global i64, align 8
@Vcharset_non_preferred_head = external global i64, align 8
@.str.31 = private unnamed_addr constant [28 x i8] c"Fontset `%s' does not exist\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"query-fontset\00", align 1
@Squery_fontset = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fquery_fontset }, i16 1, i16 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.33 = private unnamed_addr constant [12 x i8] c"new-fontset\00", align 1
@Snew_fontset = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fnew_fontset }, i16 2, i16 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.34 = private unnamed_addr constant [17 x i8] c"set-fontset-font\00", align 1
@Sset_fontset_font = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64, i64)* @Fset_fontset_font }, i16 3, i16 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.35 = private unnamed_addr constant [13 x i8] c"fontset-info\00", align 1
@Sfontset_info = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Ffontset_info }, i16 1, i16 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.36 = private unnamed_addr constant [13 x i8] c"fontset-font\00", align 1
@Sfontset_font = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Ffontset_font }, i16 2, i16 3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.37 = private unnamed_addr constant [13 x i8] c"fontset-list\00", align 1

; Function Attrs: nounwind uwtable
define i64 @fontset_name(i32 %id) #0 {
entry:
  %id.addr = alloca i32, align 4
  %fontset = alloca i64, align 8
  store i32 %id, i32* %id.addr, align 4
  %0 = load i64, i64* @Vfontset_table, align 8
  %1 = load i32, i32* %id.addr, align 4
  %conv = sext i32 %1 to i64
  %call = call i64 @AREF(i64 %0, i64 %conv)
  store i64 %call, i64* %fontset, align 8
  %2 = load i64, i64* %fontset, align 8
  %call1 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %2)
  %extras = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call1, i32 0, i32 6
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* %extras, i32 0, i64 1
  %3 = load i64, i64* %arrayidx, align 8
  ret i64 %3
}

declare i64 @AREF(i64, i64) #1

declare %struct.Lisp_Char_Table* @XCHAR_TABLE(i64) #1

; Function Attrs: nounwind uwtable
define i64 @fontset_ascii(i32 %id) #0 {
entry:
  %id.addr = alloca i32, align 4
  %fontset = alloca i64, align 8
  %elt = alloca i64, align 8
  store i32 %id, i32* %id.addr, align 4
  %0 = load i64, i64* @Vfontset_table, align 8
  %1 = load i32, i32* %id.addr, align 4
  %conv = sext i32 %1 to i64
  %call = call i64 @AREF(i64 %0, i64 %conv)
  store i64 %call, i64* %fontset, align 8
  %2 = load i64, i64* %fontset, align 8
  %call1 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %2)
  %extras = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call1, i32 0, i32 6
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* %extras, i32 0, i64 2
  %3 = load i64, i64* %arrayidx, align 8
  store i64 %3, i64* %elt, align 8
  %4 = load i64, i64* %elt, align 8
  %and = and i64 %4, 7
  %conv2 = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv2, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i64, i64* %elt, align 8
  %sub = sub nsw i64 %5, 3
  %6 = inttoptr i64 %sub to i8*
  %7 = bitcast i8* %6 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %7, i32 0, i32 0
  %8 = load i64, i64* %car, align 8
  store i64 %8, i64* %elt, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i64, i64* %elt, align 8
  ret i64 %9
}

; Function Attrs: nounwind uwtable
define void @free_face_fontset(%struct.frame* %f, %struct.face* %face) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %face.addr = alloca %struct.face*, align 8
  %fontset = alloca i64, align 8
  %id = alloca i32, align 4
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store %struct.face* %face, %struct.face** %face.addr, align 8
  %0 = load i64, i64* @Vfontset_table, align 8
  %1 = load %struct.face*, %struct.face** %face.addr, align 8
  %fontset1 = getelementptr inbounds %struct.face, %struct.face* %1, i32 0, i32 11
  %2 = load i32, i32* %fontset1, align 4
  %conv = sext i32 %2 to i64
  %call = call i64 @AREF(i64 %0, i64 %conv)
  store i64 %call, i64* %fontset, align 8
  %3 = load i64, i64* %fontset, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %3, %call2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i64, i64* @Vfontset_table, align 8
  %5 = load %struct.face*, %struct.face** %face.addr, align 8
  %fontset4 = getelementptr inbounds %struct.face, %struct.face* %5, i32 0, i32 11
  %6 = load i32, i32* %fontset4, align 4
  %conv5 = sext i32 %6 to i64
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  call void @ASET(i64 %4, i64 %conv5, i64 %call6)
  %7 = load %struct.face*, %struct.face** %face.addr, align 8
  %fontset7 = getelementptr inbounds %struct.face, %struct.face* %7, i32 0, i32 11
  %8 = load i32, i32* %fontset7, align 4
  %9 = load i32, i32* @next_fontset_id, align 4
  %cmp8 = icmp slt i32 %8, %9
  br i1 %cmp8, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end
  %10 = load %struct.face*, %struct.face** %face.addr, align 8
  %fontset11 = getelementptr inbounds %struct.face, %struct.face* %10, i32 0, i32 11
  %11 = load i32, i32* %fontset11, align 4
  store i32 %11, i32* @next_fontset_id, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end
  %12 = load i64, i64* %fontset, align 8
  %call13 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %12)
  %extras = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call13, i32 0, i32 6
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* %extras, i32 0, i64 6
  %13 = load i64, i64* %arrayidx, align 8
  %call14 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp15 = icmp eq i64 %13, %call14
  br i1 %cmp15, label %if.end.34, label %if.then.17

if.then.17:                                       ; preds = %if.end.12
  %14 = load i64, i64* %fontset, align 8
  %call18 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %14)
  %extras19 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call18, i32 0, i32 6
  %arrayidx20 = getelementptr inbounds [0 x i64], [0 x i64]* %extras19, i32 0, i64 6
  %15 = load i64, i64* %arrayidx20, align 8
  %call21 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %15)
  %extras22 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call21, i32 0, i32 6
  %arrayidx23 = getelementptr inbounds [0 x i64], [0 x i64]* %extras22, i32 0, i64 0
  %16 = load i64, i64* %arrayidx23, align 8
  %shr = ashr i64 %16, 2
  %conv24 = trunc i64 %shr to i32
  store i32 %conv24, i32* %id, align 4
  %17 = load i64, i64* @Vfontset_table, align 8
  %18 = load i32, i32* %id, align 4
  %conv25 = sext i32 %18 to i64
  %call26 = call i64 @AREF(i64 %17, i64 %conv25)
  store i64 %call26, i64* %fontset, align 8
  %19 = load i64, i64* @Vfontset_table, align 8
  %20 = load i32, i32* %id, align 4
  %conv27 = sext i32 %20 to i64
  %call28 = call i64 @builtin_lisp_symbol(i32 0)
  call void @ASET(i64 %19, i64 %conv27, i64 %call28)
  %21 = load i32, i32* %id, align 4
  %22 = load i32, i32* @next_fontset_id, align 4
  %cmp29 = icmp slt i32 %21, %22
  br i1 %cmp29, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.then.17
  %23 = load %struct.face*, %struct.face** %face.addr, align 8
  %fontset32 = getelementptr inbounds %struct.face, %struct.face* %23, i32 0, i32 11
  %24 = load i32, i32* %fontset32, align 4
  store i32 %24, i32* @next_fontset_id, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %if.then.17
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.end.12
  %25 = load %struct.face*, %struct.face** %face.addr, align 8
  %fontset35 = getelementptr inbounds %struct.face, %struct.face* %25, i32 0, i32 11
  store i32 -1, i32* %fontset35, align 4
  br label %return

return:                                           ; preds = %if.end.34, %if.then
  ret void
}

declare i64 @builtin_lisp_symbol(i32) #1

declare void @ASET(i64, i64, i64) #1

; Function Attrs: nounwind uwtable
define i32 @face_for_char(%struct.frame* %f, %struct.face* %face, i32 %c, i64 %pos, i64 %object) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct.frame*, align 8
  %face.addr = alloca %struct.face*, align 8
  %c.addr = alloca i32, align 4
  %pos.addr = alloca i64, align 8
  %object.addr = alloca i64, align 8
  %fontset = alloca i64, align 8
  %rfont_def = alloca i64, align 8
  %charset = alloca i64, align 8
  %face_id = alloca i32, align 4
  %id = alloca i32, align 4
  %font_object = alloca i64, align 8
  %val = alloca i64, align 8
  %font_object76 = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store %struct.face* %face, %struct.face** %face.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  store i64 %pos, i64* %pos.addr, align 8
  store i64 %object, i64* %object.addr, align 8
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %0 = load i32, i32* %c.addr, align 4
  %add = add i32 %0, 0
  %cmp = icmp ult i32 %add, 128
  br i1 %cmp, label %if.then, label %lor.lhs.false

cond.false:                                       ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %conv = sext i32 %1 to i64
  %add1 = add i64 %conv, 0
  %cmp2 = icmp ult i64 %add1, 128
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.false, %cond.true
  %2 = load i32, i32* %c.addr, align 4
  %cmp4 = icmp sgt i32 %2, 4194175
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %cond.false, %cond.true
  %3 = load %struct.face*, %struct.face** %face.addr, align 8
  %ascii_face = getelementptr inbounds %struct.face, %struct.face* %3, i32 0, i32 17
  %4 = load %struct.face*, %struct.face** %ascii_face, align 8
  %id6 = getelementptr inbounds %struct.face, %struct.face* %4, i32 0, i32 1
  %5 = load i32, i32* %id6, align 4
  store i32 %5, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load i32, i32* %c.addr, align 4
  %cmp7 = icmp sgt i32 %6, 0
  br i1 %cmp7, label %land.lhs.true, label %if.end.25

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 27), align 8
  %8 = load i32, i32* %c.addr, align 4
  %call = call i64 @CHAR_TABLE_REF(i64 %7, i32 %8)
  %call9 = call i64 @builtin_lisp_symbol(i32 896)
  %cmp10 = icmp eq i64 %call, %call9
  br i1 %cmp10, label %if.then.12, label %if.end.25

if.then.12:                                       ; preds = %land.lhs.true
  %9 = load %struct.face*, %struct.face** %face.addr, align 8
  %ascii_face13 = getelementptr inbounds %struct.face, %struct.face* %9, i32 0, i32 17
  %10 = load %struct.face*, %struct.face** %ascii_face13, align 8
  %font = getelementptr inbounds %struct.face, %struct.face* %10, i32 0, i32 10
  %11 = load %struct.font*, %struct.font** %font, align 8
  %tobool = icmp ne %struct.font* %11, null
  br i1 %tobool, label %if.then.14, label %if.end.24

if.then.14:                                       ; preds = %if.then.12
  %12 = load %struct.face*, %struct.face** %face.addr, align 8
  %ascii_face15 = getelementptr inbounds %struct.face, %struct.face* %12, i32 0, i32 17
  %13 = load %struct.face*, %struct.face** %ascii_face15, align 8
  %font16 = getelementptr inbounds %struct.face, %struct.face* %13, i32 0, i32 10
  %14 = load %struct.font*, %struct.font** %font16, align 8
  %15 = bitcast %struct.font* %14 to i8*
  %call17 = call i64 @make_lisp_ptr(i8* %15, i32 5)
  store i64 %call17, i64* %font_object, align 8
  %16 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %17 = load i64, i64* %font_object, align 8
  %18 = load i32, i32* %c.addr, align 4
  %call18 = call i32 @font_has_char(%struct.frame* %16, i64 %17, i32 %18)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.then.14
  %19 = load %struct.face*, %struct.face** %face.addr, align 8
  %ascii_face21 = getelementptr inbounds %struct.face, %struct.face* %19, i32 0, i32 17
  %20 = load %struct.face*, %struct.face** %ascii_face21, align 8
  %id22 = getelementptr inbounds %struct.face, %struct.face* %20, i32 0, i32 1
  %21 = load i32, i32* %id22, align 4
  store i32 %21, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.then.14
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then.12
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %land.lhs.true, %if.end
  %22 = load i64, i64* @Vfontset_table, align 8
  %23 = load %struct.face*, %struct.face** %face.addr, align 8
  %fontset26 = getelementptr inbounds %struct.face, %struct.face* %23, i32 0, i32 11
  %24 = load i32, i32* %fontset26, align 4
  %conv27 = sext i32 %24 to i64
  %call28 = call i64 @AREF(i64 %22, i64 %conv27)
  store i64 %call28, i64* %fontset, align 8
  %25 = load i64, i64* %pos.addr, align 8
  %cmp29 = icmp slt i64 %25, 0
  br i1 %cmp29, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %if.end.25
  store i32 -1, i32* %id, align 4
  %call32 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call32, i64* %charset, align 8
  br label %if.end.61

if.else:                                          ; preds = %if.end.25
  %26 = load i64, i64* %pos.addr, align 8
  %shl = shl i64 %26, 2
  %add33 = add i64 %shl, 2
  %call34 = call i64 @builtin_lisp_symbol(i32 261)
  %27 = load i64, i64* %object.addr, align 8
  %call35 = call i64 @Fget_char_property(i64 %add33, i64 %call34, i64 %27)
  store i64 %call35, i64* %charset, align 8
  %28 = load i64, i64* @Vcharset_hash_table, align 8
  %call36 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %28)
  %29 = load i64, i64* %charset, align 8
  %call37 = call i64 @hash_lookup(%struct.Lisp_Hash_Table* %call36, i64 %29, i64* null)
  %cmp38 = icmp sge i64 %call37, 0
  br i1 %cmp38, label %if.then.40, label %if.else.59

if.then.40:                                       ; preds = %if.else
  %30 = load i64, i64* %charset, align 8
  %31 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 103), align 8
  %call41 = call i64 @assq_no_quit(i64 %30, i64 %31)
  store i64 %call41, i64* %val, align 8
  %32 = load i64, i64* %val, align 8
  %and = and i64 %32, 7
  %conv42 = trunc i64 %and to i32
  %cmp43 = icmp eq i32 %conv42, 3
  br i1 %cmp43, label %land.lhs.true.45, label %if.end.54

land.lhs.true.45:                                 ; preds = %if.then.40
  %33 = load i64, i64* @Vcharset_hash_table, align 8
  %call46 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %33)
  %34 = load i64, i64* %val, align 8
  %sub = sub nsw i64 %34, 3
  %35 = inttoptr i64 %sub to i8*
  %36 = bitcast i8* %35 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %36, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %37 = load i64, i64* %cdr, align 8
  %call47 = call i64 @hash_lookup(%struct.Lisp_Hash_Table* %call46, i64 %37, i64* null)
  %cmp48 = icmp sge i64 %call47, 0
  br i1 %cmp48, label %if.then.50, label %if.end.54

if.then.50:                                       ; preds = %land.lhs.true.45
  %38 = load i64, i64* %val, align 8
  %sub51 = sub nsw i64 %38, 3
  %39 = inttoptr i64 %sub51 to i8*
  %40 = bitcast i8* %39 to %struct.Lisp_Cons*
  %u52 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %40, i32 0, i32 1
  %cdr53 = bitcast %union.anon* %u52 to i64*
  %41 = load i64, i64* %cdr53, align 8
  store i64 %41, i64* %charset, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.50, %land.lhs.true.45, %if.then.40
  %42 = load i64, i64* %charset, align 8
  %43 = load i64, i64* @Vcharset_hash_table, align 8
  %call55 = call i64 @builtin_lisp_symbol(i32 0)
  %call56 = call i64 @Fgethash(i64 %42, i64 %43, i64 %call55)
  %call57 = call i64 @AREF(i64 %call56, i64 0)
  %shr = ashr i64 %call57, 2
  %conv58 = trunc i64 %shr to i32
  store i32 %conv58, i32* %id, align 4
  br label %if.end.60

if.else.59:                                       ; preds = %if.else
  store i32 -1, i32* %id, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.59, %if.end.54
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.31
  %44 = load i64, i64* %fontset, align 8
  %45 = load i32, i32* %c.addr, align 4
  %46 = load %struct.face*, %struct.face** %face.addr, align 8
  %47 = load i32, i32* %id, align 4
  %call62 = call i64 @fontset_font(i64 %44, i32 %45, %struct.face* %46, i32 %47)
  store i64 %call62, i64* %rfont_def, align 8
  %48 = load i64, i64* %rfont_def, align 8
  %call63 = call zeroext i1 @VECTORP(i64 %48)
  br i1 %call63, label %if.then.64, label %if.else.83

if.then.64:                                       ; preds = %if.end.61
  %49 = load i64, i64* %rfont_def, align 8
  %call65 = call i64 @AREF(i64 %49, i64 0)
  %and66 = and i64 %call65, 7
  %conv67 = trunc i64 %and66 to i32
  %and68 = and i32 %conv67, -5
  %cmp69 = icmp eq i32 %and68, 2
  br i1 %cmp69, label %if.then.71, label %if.else.75

if.then.71:                                       ; preds = %if.then.64
  %50 = load i64, i64* %rfont_def, align 8
  %call72 = call i64 @AREF(i64 %50, i64 0)
  %shr73 = ashr i64 %call72, 2
  %conv74 = trunc i64 %shr73 to i32
  store i32 %conv74, i32* %face_id, align 4
  br label %if.end.82

if.else.75:                                       ; preds = %if.then.64
  %51 = load i64, i64* %rfont_def, align 8
  %call77 = call i64 @AREF(i64 %51, i64 2)
  store i64 %call77, i64* %font_object76, align 8
  %52 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %53 = load i64, i64* %font_object76, align 8
  %54 = load %struct.face*, %struct.face** %face.addr, align 8
  %call78 = call i32 @face_for_font(%struct.frame* %52, i64 %53, %struct.face* %54)
  store i32 %call78, i32* %face_id, align 4
  %55 = load i64, i64* %rfont_def, align 8
  %56 = load i32, i32* %face_id, align 4
  %conv79 = sext i32 %56 to i64
  %shl80 = shl i64 %conv79, 2
  %add81 = add i64 %shl80, 2
  call void @ASET(i64 %55, i64 0, i64 %add81)
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.75, %if.then.71
  br label %if.end.103

if.else.83:                                       ; preds = %if.end.61
  %57 = load i64, i64* %fontset, align 8
  %call84 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %57)
  %extras = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call84, i32 0, i32 6
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* %extras, i32 0, i64 5
  %58 = load i64, i64* %arrayidx, align 8
  %and85 = and i64 %58, 7
  %conv86 = trunc i64 %and85 to i32
  %and87 = and i32 %conv86, -5
  %cmp88 = icmp eq i32 %and87, 2
  br i1 %cmp88, label %if.then.90, label %if.else.96

if.then.90:                                       ; preds = %if.else.83
  %59 = load i64, i64* %fontset, align 8
  %call91 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %59)
  %extras92 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call91, i32 0, i32 6
  %arrayidx93 = getelementptr inbounds [0 x i64], [0 x i64]* %extras92, i32 0, i64 5
  %60 = load i64, i64* %arrayidx93, align 8
  %shr94 = ashr i64 %60, 2
  %conv95 = trunc i64 %shr94 to i32
  store i32 %conv95, i32* %face_id, align 4
  br label %if.end.102

if.else.96:                                       ; preds = %if.else.83
  %61 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %call97 = call i64 @builtin_lisp_symbol(i32 0)
  %62 = load %struct.face*, %struct.face** %face.addr, align 8
  %call98 = call i32 @face_for_font(%struct.frame* %61, i64 %call97, %struct.face* %62)
  store i32 %call98, i32* %face_id, align 4
  %63 = load i64, i64* %fontset, align 8
  %64 = load i32, i32* %face_id, align 4
  %conv99 = sext i32 %64 to i64
  %shl100 = shl i64 %conv99, 2
  %add101 = add i64 %shl100, 2
  call void @set_fontset_nofont_face(i64 %63, i64 %add101)
  br label %if.end.102

if.end.102:                                       ; preds = %if.else.96, %if.then.90
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %if.end.82
  %65 = load i32, i32* %face_id, align 4
  store i32 %65, i32* %retval
  br label %return

return:                                           ; preds = %if.end.103, %if.then.20, %if.then
  %66 = load i32, i32* %retval
  ret i32 %66
}

declare i64 @CHAR_TABLE_REF(i64, i32) #1

declare i64 @make_lisp_ptr(i8*, i32) #1

declare i32 @font_has_char(%struct.frame*, i64, i32) #1

declare i64 @Fget_char_property(i64, i64, i64) #1

declare i64 @hash_lookup(%struct.Lisp_Hash_Table*, i64, i64*) #1

declare %struct.Lisp_Hash_Table* @XHASH_TABLE(i64) #1

declare i64 @assq_no_quit(i64, i64) #1

declare i64 @Fgethash(i64, i64, i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @fontset_font(i64 %fontset, i32 %c, %struct.face* %face, i32 %id) #0 {
entry:
  %retval = alloca i64, align 8
  %fontset.addr = alloca i64, align 8
  %c.addr = alloca i32, align 4
  %face.addr = alloca %struct.face*, align 8
  %id.addr = alloca i32, align 4
  %rfont_def = alloca i64, align 8
  %default_rfont_def = alloca i64, align 8
  %base_fontset = alloca i64, align 8
  store i64 %fontset, i64* %fontset.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  store %struct.face* %face, %struct.face** %face.addr, align 8
  store i32 %id, i32* %id.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 104), align 8
  %call = call i64 @builtin_lisp_symbol(i32 901)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %1 = load i32, i32* %c.addr, align 4
  %conv = sext i32 %1 to i64
  %shl = shl i64 %conv, 2
  %add = add i64 %shl, 2
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  call void @font_deferred_log(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i32 0, i32 0), i64 %add, i64 %call1)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %2 = load i64, i64* %fontset.addr, align 8
  %3 = load i32, i32* %c.addr, align 4
  %4 = load %struct.face*, %struct.face** %face.addr, align 8
  %5 = load i32, i32* %id.addr, align 4
  %call2 = call i64 @fontset_find_font(i64 %2, i32 %3, %struct.face* %4, i32 %5, i1 zeroext false)
  store i64 %call2, i64* %rfont_def, align 8
  %6 = load i64, i64* %rfont_def, align 8
  %call3 = call zeroext i1 @VECTORP(i64 %6)
  br i1 %call3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %do.end
  %7 = load i64, i64* %rfont_def, align 8
  store i64 %7, i64* %retval
  br label %return

if.end.5:                                         ; preds = %do.end
  %8 = load i64, i64* %rfont_def, align 8
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp7 = icmp eq i64 %8, %call6
  br i1 %cmp7, label %if.then.9, label %if.end.14

if.then.9:                                        ; preds = %if.end.5
  %9 = load i64, i64* %fontset.addr, align 8
  %10 = load i32, i32* %c.addr, align 4
  %conv10 = sext i32 %10 to i64
  %shl11 = shl i64 %conv10, 2
  %add12 = add i64 %shl11, 2
  %call13 = call i64 @Fset_char_table_range(i64 %9, i64 %add12, i64 2)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.9, %if.end.5
  %11 = load i64, i64* %fontset.addr, align 8
  %call15 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %11)
  %extras = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call15, i32 0, i32 6
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* %extras, i32 0, i64 3
  %12 = load i64, i64* %arrayidx, align 8
  store i64 %12, i64* %base_fontset, align 8
  %13 = load i64, i64* %base_fontset, align 8
  %14 = load i64, i64* @Vdefault_fontset, align 8
  %cmp16 = icmp eq i64 %13, %14
  br i1 %cmp16, label %if.end.62, label %if.then.18

if.then.18:                                       ; preds = %if.end.14
  %15 = load i64, i64* %fontset.addr, align 8
  %call19 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %15)
  %extras20 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call19, i32 0, i32 6
  %arrayidx21 = getelementptr inbounds [0 x i64], [0 x i64]* %extras20, i32 0, i64 6
  %16 = load i64, i64* %arrayidx21, align 8
  %call22 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp23 = icmp eq i64 %16, %call22
  br i1 %cmp23, label %if.then.25, label %if.end.31

if.then.25:                                       ; preds = %if.then.18
  %17 = load i64, i64* %fontset.addr, align 8
  %18 = load i64, i64* %fontset.addr, align 8
  %call26 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %18)
  %extras27 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call26, i32 0, i32 6
  %arrayidx28 = getelementptr inbounds [0 x i64], [0 x i64]* %extras27, i32 0, i64 4
  %19 = load i64, i64* %arrayidx28, align 8
  %call29 = call i64 @builtin_lisp_symbol(i32 0)
  %20 = load i64, i64* @Vdefault_fontset, align 8
  %call30 = call i64 @make_fontset(i64 %19, i64 %call29, i64 %20)
  call void @set_fontset_default(i64 %17, i64 %call30)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.25, %if.then.18
  br label %do.body.32

do.body.32:                                       ; preds = %if.end.31
  %21 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 104), align 8
  %call33 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp34 = icmp eq i64 %21, %call33
  br i1 %cmp34, label %if.end.41, label %if.then.36

if.then.36:                                       ; preds = %do.body.32
  %22 = load i32, i32* %c.addr, align 4
  %conv37 = sext i32 %22 to i64
  %shl38 = shl i64 %conv37, 2
  %add39 = add i64 %shl38, 2
  %call40 = call i64 @builtin_lisp_symbol(i32 0)
  call void @font_deferred_log(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i32 0, i32 0), i64 %add39, i64 %call40)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.36, %do.body.32
  br label %do.end.42

do.end.42:                                        ; preds = %if.end.41
  %23 = load i64, i64* %fontset.addr, align 8
  %call43 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %23)
  %extras44 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call43, i32 0, i32 6
  %arrayidx45 = getelementptr inbounds [0 x i64], [0 x i64]* %extras44, i32 0, i64 6
  %24 = load i64, i64* %arrayidx45, align 8
  %25 = load i32, i32* %c.addr, align 4
  %26 = load %struct.face*, %struct.face** %face.addr, align 8
  %27 = load i32, i32* %id.addr, align 4
  %call46 = call i64 @fontset_find_font(i64 %24, i32 %25, %struct.face* %26, i32 %27, i1 zeroext false)
  store i64 %call46, i64* %default_rfont_def, align 8
  %28 = load i64, i64* %default_rfont_def, align 8
  %call47 = call zeroext i1 @VECTORP(i64 %28)
  br i1 %call47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %do.end.42
  %29 = load i64, i64* %default_rfont_def, align 8
  store i64 %29, i64* %retval
  br label %return

if.end.49:                                        ; preds = %do.end.42
  %30 = load i64, i64* %default_rfont_def, align 8
  %call50 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp51 = icmp eq i64 %30, %call50
  br i1 %cmp51, label %if.then.53, label %if.end.61

if.then.53:                                       ; preds = %if.end.49
  %31 = load i64, i64* %fontset.addr, align 8
  %call54 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %31)
  %extras55 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call54, i32 0, i32 6
  %arrayidx56 = getelementptr inbounds [0 x i64], [0 x i64]* %extras55, i32 0, i64 6
  %32 = load i64, i64* %arrayidx56, align 8
  %33 = load i32, i32* %c.addr, align 4
  %conv57 = sext i32 %33 to i64
  %shl58 = shl i64 %conv57, 2
  %add59 = add i64 %shl58, 2
  %call60 = call i64 @Fset_char_table_range(i64 %32, i64 %add59, i64 2)
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.53, %if.end.49
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.end.14
  %34 = load i64, i64* %rfont_def, align 8
  %call63 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp64 = icmp eq i64 %34, %call63
  br i1 %cmp64, label %if.end.87, label %if.then.66

if.then.66:                                       ; preds = %if.end.62
  br label %do.body.67

do.body.67:                                       ; preds = %if.then.66
  %35 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 104), align 8
  %call68 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp69 = icmp eq i64 %35, %call68
  br i1 %cmp69, label %if.end.76, label %if.then.71

if.then.71:                                       ; preds = %do.body.67
  %36 = load i32, i32* %c.addr, align 4
  %conv72 = sext i32 %36 to i64
  %shl73 = shl i64 %conv72, 2
  %add74 = add i64 %shl73, 2
  %call75 = call i64 @builtin_lisp_symbol(i32 0)
  call void @font_deferred_log(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i32 0, i32 0), i64 %add74, i64 %call75)
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.71, %do.body.67
  br label %do.end.77

do.end.77:                                        ; preds = %if.end.76
  %37 = load i64, i64* %fontset.addr, align 8
  %38 = load i32, i32* %c.addr, align 4
  %39 = load %struct.face*, %struct.face** %face.addr, align 8
  %40 = load i32, i32* %id.addr, align 4
  %call78 = call i64 @fontset_find_font(i64 %37, i32 %38, %struct.face* %39, i32 %40, i1 zeroext true)
  store i64 %call78, i64* %rfont_def, align 8
  %41 = load i64, i64* %rfont_def, align 8
  %call79 = call zeroext i1 @VECTORP(i64 %41)
  br i1 %call79, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %do.end.77
  %42 = load i64, i64* %rfont_def, align 8
  store i64 %42, i64* %retval
  br label %return

if.end.81:                                        ; preds = %do.end.77
  %43 = load i64, i64* %fontset.addr, align 8
  %44 = load i32, i32* %c.addr, align 4
  %conv82 = sext i32 %44 to i64
  %shl83 = shl i64 %conv82, 2
  %add84 = add i64 %shl83, 2
  %call85 = call i64 @builtin_lisp_symbol(i32 901)
  %call86 = call i64 @Fset_char_table_range(i64 %43, i64 %add84, i64 %call85)
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.81, %if.end.62
  %45 = load i64, i64* %base_fontset, align 8
  %46 = load i64, i64* @Vdefault_fontset, align 8
  %cmp88 = icmp eq i64 %45, %46
  br i1 %cmp88, label %if.end.120, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.87
  %47 = load i64, i64* %default_rfont_def, align 8
  %call90 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp91 = icmp eq i64 %47, %call90
  br i1 %cmp91, label %if.end.120, label %if.then.93

if.then.93:                                       ; preds = %land.lhs.true
  br label %do.body.94

do.body.94:                                       ; preds = %if.then.93
  %48 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 104), align 8
  %call95 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp96 = icmp eq i64 %48, %call95
  br i1 %cmp96, label %if.end.103, label %if.then.98

if.then.98:                                       ; preds = %do.body.94
  %49 = load i32, i32* %c.addr, align 4
  %conv99 = sext i32 %49 to i64
  %shl100 = shl i64 %conv99, 2
  %add101 = add i64 %shl100, 2
  %call102 = call i64 @builtin_lisp_symbol(i32 0)
  call void @font_deferred_log(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.30, i32 0, i32 0), i64 %add101, i64 %call102)
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.98, %do.body.94
  br label %do.end.104

do.end.104:                                       ; preds = %if.end.103
  %50 = load i64, i64* %fontset.addr, align 8
  %call105 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %50)
  %extras106 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call105, i32 0, i32 6
  %arrayidx107 = getelementptr inbounds [0 x i64], [0 x i64]* %extras106, i32 0, i64 6
  %51 = load i64, i64* %arrayidx107, align 8
  %52 = load i32, i32* %c.addr, align 4
  %53 = load %struct.face*, %struct.face** %face.addr, align 8
  %54 = load i32, i32* %id.addr, align 4
  %call108 = call i64 @fontset_find_font(i64 %51, i32 %52, %struct.face* %53, i32 %54, i1 zeroext true)
  store i64 %call108, i64* %rfont_def, align 8
  %55 = load i64, i64* %rfont_def, align 8
  %call109 = call zeroext i1 @VECTORP(i64 %55)
  br i1 %call109, label %if.then.110, label %if.end.111

if.then.110:                                      ; preds = %do.end.104
  %56 = load i64, i64* %rfont_def, align 8
  store i64 %56, i64* %retval
  br label %return

if.end.111:                                       ; preds = %do.end.104
  %57 = load i64, i64* %fontset.addr, align 8
  %call112 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %57)
  %extras113 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call112, i32 0, i32 6
  %arrayidx114 = getelementptr inbounds [0 x i64], [0 x i64]* %extras113, i32 0, i64 6
  %58 = load i64, i64* %arrayidx114, align 8
  %59 = load i32, i32* %c.addr, align 4
  %conv115 = sext i32 %59 to i64
  %shl116 = shl i64 %conv115, 2
  %add117 = add i64 %shl116, 2
  %call118 = call i64 @builtin_lisp_symbol(i32 901)
  %call119 = call i64 @Fset_char_table_range(i64 %58, i64 %add117, i64 %call118)
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.111, %land.lhs.true, %if.end.87
  %call121 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call121, i64* %retval
  br label %return

return:                                           ; preds = %if.end.120, %if.then.110, %if.then.80, %if.then.48, %if.then.4
  %60 = load i64, i64* %retval
  ret i64 %60
}

declare zeroext i1 @VECTORP(i64) #1

declare i32 @face_for_font(%struct.frame*, i64, %struct.face*) #1

; Function Attrs: nounwind uwtable
define internal void @set_fontset_nofont_face(i64 %fontset, i64 %face) #0 {
entry:
  %fontset.addr = alloca i64, align 8
  %face.addr = alloca i64, align 8
  store i64 %fontset, i64* %fontset.addr, align 8
  store i64 %face, i64* %face.addr, align 8
  %0 = load i64, i64* %fontset.addr, align 8
  %1 = load i64, i64* %face.addr, align 8
  call void @set_char_table_extras(i64 %0, i64 5, i64 %1)
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @font_for_char(%struct.face* %face, i32 %c, i64 %pos, i64 %object) #0 {
entry:
  %retval = alloca i64, align 8
  %face.addr = alloca %struct.face*, align 8
  %c.addr = alloca i32, align 4
  %pos.addr = alloca i64, align 8
  %object.addr = alloca i64, align 8
  %fontset = alloca i64, align 8
  %rfont_def = alloca i64, align 8
  %charset = alloca i64, align 8
  %id = alloca i32, align 4
  %font_object = alloca i64, align 8
  %val = alloca i64, align 8
  store %struct.face* %face, %struct.face** %face.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  store i64 %pos, i64* %pos.addr, align 8
  store i64 %object, i64* %object.addr, align 8
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %0 = load i32, i32* %c.addr, align 4
  %add = add i32 %0, 0
  %cmp = icmp ult i32 %add, 128
  br i1 %cmp, label %if.then, label %if.end

cond.false:                                       ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %conv = sext i32 %1 to i64
  %add1 = add i64 %conv, 0
  %cmp2 = icmp ult i64 %add1, 128
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %cond.false, %cond.true
  %2 = load %struct.face*, %struct.face** %face.addr, align 8
  %ascii_face = getelementptr inbounds %struct.face, %struct.face* %2, i32 0, i32 17
  %3 = load %struct.face*, %struct.face** %ascii_face, align 8
  %font = getelementptr inbounds %struct.face, %struct.face* %3, i32 0, i32 10
  %4 = load %struct.font*, %struct.font** %font, align 8
  %5 = bitcast %struct.font* %4 to i8*
  %call = call i64 @make_lisp_ptr(i8* %5, i32 5)
  store i64 %call, i64* %font_object, align 8
  %6 = load i64, i64* %font_object, align 8
  store i64 %6, i64* %retval
  br label %return

if.end:                                           ; preds = %cond.false, %cond.true
  %7 = load i64, i64* @Vfontset_table, align 8
  %8 = load %struct.face*, %struct.face** %face.addr, align 8
  %fontset4 = getelementptr inbounds %struct.face, %struct.face* %8, i32 0, i32 11
  %9 = load i32, i32* %fontset4, align 4
  %conv5 = sext i32 %9 to i64
  %call6 = call i64 @AREF(i64 %7, i64 %conv5)
  store i64 %call6, i64* %fontset, align 8
  %10 = load i64, i64* %pos.addr, align 8
  %cmp7 = icmp slt i64 %10, 0
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end
  store i32 -1, i32* %id, align 4
  %call10 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call10, i64* %charset, align 8
  br label %if.end.38

if.else:                                          ; preds = %if.end
  %11 = load i64, i64* %pos.addr, align 8
  %shl = shl i64 %11, 2
  %add11 = add i64 %shl, 2
  %call12 = call i64 @builtin_lisp_symbol(i32 261)
  %12 = load i64, i64* %object.addr, align 8
  %call13 = call i64 @Fget_char_property(i64 %add11, i64 %call12, i64 %12)
  store i64 %call13, i64* %charset, align 8
  %13 = load i64, i64* @Vcharset_hash_table, align 8
  %call14 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %13)
  %14 = load i64, i64* %charset, align 8
  %call15 = call i64 @hash_lookup(%struct.Lisp_Hash_Table* %call14, i64 %14, i64* null)
  %cmp16 = icmp sge i64 %call15, 0
  br i1 %cmp16, label %if.then.18, label %if.else.36

if.then.18:                                       ; preds = %if.else
  %15 = load i64, i64* %charset, align 8
  %16 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 103), align 8
  %call19 = call i64 @assq_no_quit(i64 %15, i64 %16)
  store i64 %call19, i64* %val, align 8
  %17 = load i64, i64* %val, align 8
  %and = and i64 %17, 7
  %conv20 = trunc i64 %and to i32
  %cmp21 = icmp eq i32 %conv20, 3
  br i1 %cmp21, label %land.lhs.true, label %if.end.31

land.lhs.true:                                    ; preds = %if.then.18
  %18 = load i64, i64* @Vcharset_hash_table, align 8
  %call23 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %18)
  %19 = load i64, i64* %val, align 8
  %sub = sub nsw i64 %19, 3
  %20 = inttoptr i64 %sub to i8*
  %21 = bitcast i8* %20 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %21, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %22 = load i64, i64* %cdr, align 8
  %call24 = call i64 @hash_lookup(%struct.Lisp_Hash_Table* %call23, i64 %22, i64* null)
  %cmp25 = icmp sge i64 %call24, 0
  br i1 %cmp25, label %if.then.27, label %if.end.31

if.then.27:                                       ; preds = %land.lhs.true
  %23 = load i64, i64* %val, align 8
  %sub28 = sub nsw i64 %23, 3
  %24 = inttoptr i64 %sub28 to i8*
  %25 = bitcast i8* %24 to %struct.Lisp_Cons*
  %u29 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %25, i32 0, i32 1
  %cdr30 = bitcast %union.anon* %u29 to i64*
  %26 = load i64, i64* %cdr30, align 8
  store i64 %26, i64* %charset, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.27, %land.lhs.true, %if.then.18
  %27 = load i64, i64* %charset, align 8
  %28 = load i64, i64* @Vcharset_hash_table, align 8
  %call32 = call i64 @builtin_lisp_symbol(i32 0)
  %call33 = call i64 @Fgethash(i64 %27, i64 %28, i64 %call32)
  %call34 = call i64 @AREF(i64 %call33, i64 0)
  %shr = ashr i64 %call34, 2
  %conv35 = trunc i64 %shr to i32
  store i32 %conv35, i32* %id, align 4
  br label %if.end.37

if.else.36:                                       ; preds = %if.else
  store i32 -1, i32* %id, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.36, %if.end.31
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.9
  %29 = load i64, i64* %fontset, align 8
  %30 = load i32, i32* %c.addr, align 4
  %31 = load %struct.face*, %struct.face** %face.addr, align 8
  %32 = load i32, i32* %id, align 4
  %call39 = call i64 @fontset_font(i64 %29, i32 %30, %struct.face* %31, i32 %32)
  store i64 %call39, i64* %rfont_def, align 8
  %33 = load i64, i64* %rfont_def, align 8
  %call40 = call zeroext i1 @VECTORP(i64 %33)
  br i1 %call40, label %cond.true.42, label %cond.false.44

cond.true.42:                                     ; preds = %if.end.38
  %34 = load i64, i64* %rfont_def, align 8
  %call43 = call i64 @AREF(i64 %34, i64 2)
  br label %cond.end

cond.false.44:                                    ; preds = %if.end.38
  %call45 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.44, %cond.true.42
  %cond = phi i64 [ %call43, %cond.true.42 ], [ %call45, %cond.false.44 ]
  store i64 %cond, i64* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %35 = load i64, i64* %retval
  ret i64 %35
}

; Function Attrs: nounwind uwtable
define i32 @make_fontset_for_ascii_face(%struct.frame* %f, i32 %base_fontset_id, %struct.face* %face) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %base_fontset_id.addr = alloca i32, align 4
  %face.addr = alloca %struct.face*, align 8
  %base_fontset = alloca i64, align 8
  %fontset = alloca i64, align 8
  %frame = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i32 %base_fontset_id, i32* %base_fontset_id.addr, align 4
  store %struct.face* %face, %struct.face** %face.addr, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %1 = bitcast %struct.frame* %0 to i8*
  %call = call i64 @make_lisp_ptr(i8* %1, i32 5)
  store i64 %call, i64* %frame, align 8
  %2 = load i32, i32* %base_fontset_id.addr, align 4
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i64, i64* @Vfontset_table, align 8
  %4 = load i32, i32* %base_fontset_id.addr, align 4
  %conv = sext i32 %4 to i64
  %call1 = call i64 @AREF(i64 %3, i64 %conv)
  store i64 %call1, i64* %base_fontset, align 8
  %5 = load i64, i64* %base_fontset, align 8
  %call2 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %5)
  %extras = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call2, i32 0, i32 6
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* %extras, i32 0, i64 3
  %6 = load i64, i64* %arrayidx, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp4 = icmp eq i64 %6, %call3
  br i1 %cmp4, label %if.end, label %if.then.6

if.then.6:                                        ; preds = %if.then
  %7 = load i64, i64* %base_fontset, align 8
  %call7 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %7)
  %extras8 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call7, i32 0, i32 6
  %arrayidx9 = getelementptr inbounds [0 x i64], [0 x i64]* %extras8, i32 0, i64 3
  %8 = load i64, i64* %arrayidx9, align 8
  store i64 %8, i64* %base_fontset, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  br label %if.end.10

if.else:                                          ; preds = %entry
  %9 = load i64, i64* @Vdefault_fontset, align 8
  store i64 %9, i64* %base_fontset, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.end
  %10 = load i64, i64* %frame, align 8
  %call11 = call i64 @builtin_lisp_symbol(i32 0)
  %11 = load i64, i64* %base_fontset, align 8
  %call12 = call i64 @make_fontset(i64 %10, i64 %call11, i64 %11)
  store i64 %call12, i64* %fontset, align 8
  %12 = load i64, i64* %fontset, align 8
  %call13 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %12)
  %extras14 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call13, i32 0, i32 6
  %arrayidx15 = getelementptr inbounds [0 x i64], [0 x i64]* %extras14, i32 0, i64 0
  %13 = load i64, i64* %arrayidx15, align 8
  %shr = ashr i64 %13, 2
  %conv16 = trunc i64 %shr to i32
  ret i32 %conv16
}

; Function Attrs: nounwind uwtable
define internal i64 @make_fontset(i64 %frame, i64 %name, i64 %base) #0 {
entry:
  %frame.addr = alloca i64, align 8
  %name.addr = alloca i64, align 8
  %base.addr = alloca i64, align 8
  %fontset = alloca i64, align 8
  %size = alloca i32, align 4
  %id = alloca i32, align 4
  store i64 %frame, i64* %frame.addr, align 8
  store i64 %name, i64* %name.addr, align 8
  store i64 %base, i64* %base.addr, align 8
  %0 = load i64, i64* @Vfontset_table, align 8
  %call = call i64 @ASIZE(i64 %0)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %size, align 4
  %1 = load i32, i32* @next_fontset_id, align 4
  store i32 %1, i32* %id, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i64, i64* @Vfontset_table, align 8
  %3 = load i32, i32* %id, align 4
  %conv1 = sext i32 %3 to i64
  %call2 = call i64 @AREF(i64 %2, i64 %conv1)
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %call2, %call3
  %lnot = xor i1 %cmp, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %id, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %id, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i32, i32* %id, align 4
  %add = add nsw i32 %5, 1
  %6 = load i32, i32* %size, align 4
  %cmp5 = icmp eq i32 %add, %6
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %7 = load i64, i64* @Vfontset_table, align 8
  %call7 = call i64 @larger_vector(i64 %7, i64 1, i64 -1)
  store i64 %call7, i64* @Vfontset_table, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %call8 = call i64 @builtin_lisp_symbol(i32 449)
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  %call10 = call i64 @Fmake_char_table(i64 %call8, i64 %call9)
  store i64 %call10, i64* %fontset, align 8
  %8 = load i64, i64* %fontset, align 8
  %9 = load i32, i32* %id, align 4
  %conv11 = sext i32 %9 to i64
  %shl = shl i64 %conv11, 2
  %add12 = add i64 %shl, 2
  call void @set_fontset_id(i64 %8, i64 %add12)
  %10 = load i64, i64* %base.addr, align 8
  %call13 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp14 = icmp eq i64 %10, %call13
  br i1 %cmp14, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.end
  %11 = load i64, i64* %fontset, align 8
  %12 = load i64, i64* %name.addr, align 8
  call void @set_fontset_name(i64 %11, i64 %12)
  br label %if.end.18

if.else:                                          ; preds = %if.end
  %13 = load i64, i64* %fontset, align 8
  %call17 = call i64 @builtin_lisp_symbol(i32 0)
  call void @set_fontset_name(i64 %13, i64 %call17)
  %14 = load i64, i64* %fontset, align 8
  %15 = load i64, i64* %frame.addr, align 8
  call void @set_fontset_frame(i64 %14, i64 %15)
  %16 = load i64, i64* %fontset, align 8
  %17 = load i64, i64* %base.addr, align 8
  call void @set_fontset_base(i64 %16, i64 %17)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.16
  %18 = load i64, i64* @Vfontset_table, align 8
  %19 = load i32, i32* %id, align 4
  %conv19 = sext i32 %19 to i64
  %20 = load i64, i64* %fontset, align 8
  call void @ASET(i64 %18, i64 %conv19, i64 %20)
  %21 = load i32, i32* %id, align 4
  %add20 = add nsw i32 %21, 1
  store i32 %add20, i32* @next_fontset_id, align 4
  %22 = load i64, i64* %fontset, align 8
  ret i64 %22
}

; Function Attrs: nounwind uwtable
define i32 @fs_query_fontset(i64 %name, i32 %name_pattern) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i64, align 8
  %name_pattern.addr = alloca i32, align 4
  %tem = alloca i64, align 8
  %i = alloca i32, align 4
  %fontset = alloca i64, align 8
  %this_name = alloca i64, align 8
  store i64 %name, i64* %name.addr, align 8
  store i32 %name_pattern, i32* %name_pattern.addr, align 4
  %0 = load i64, i64* %name.addr, align 8
  %call = call i64 @Fdowncase(i64 %0)
  store i64 %call, i64* %name.addr, align 8
  %1 = load i32, i32* %name_pattern.addr, align 4
  %cmp = icmp ne i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end.22

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %name.addr, align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 109), align 8
  %call1 = call i64 @Frassoc(i64 %2, i64 %3)
  store i64 %call1, i64* %tem, align 8
  %4 = load i64, i64* %tem, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp3 = icmp eq i64 %4, %call2
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %5 = load i64, i64* %name.addr, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 109), align 8
  %call5 = call i64 @Fassoc(i64 %5, i64 %6)
  store i64 %call5, i64* %tem, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %7 = load i64, i64* %tem, align 8
  %and = and i64 %7, 7
  %conv = trunc i64 %and to i32
  %cmp6 = icmp eq i32 %conv, 3
  br i1 %cmp6, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %8 = load i64, i64* %tem, align 8
  %sub = sub nsw i64 %8, 3
  %9 = inttoptr i64 %sub to i8*
  %10 = bitcast i8* %9 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %10, i32 0, i32 0
  %11 = load i64, i64* %car, align 8
  %call8 = call zeroext i1 @STRINGP(i64 %11)
  br i1 %call8, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %land.lhs.true
  %12 = load i64, i64* %tem, align 8
  %sub11 = sub nsw i64 %12, 3
  %13 = inttoptr i64 %sub11 to i8*
  %14 = bitcast i8* %13 to %struct.Lisp_Cons*
  %car12 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %14, i32 0, i32 0
  %15 = load i64, i64* %car12, align 8
  store i64 %15, i64* %name.addr, align 8
  br label %if.end.21

if.else:                                          ; preds = %land.lhs.true, %if.end
  %16 = load i32, i32* %name_pattern.addr, align 4
  %cmp13 = icmp eq i32 %16, 0
  br i1 %cmp13, label %if.then.15, label %if.end.20

if.then.15:                                       ; preds = %if.else
  %17 = load i64, i64* %name.addr, align 8
  %call16 = call i64 @fontset_pattern_regexp(i64 %17)
  store i64 %call16, i64* %tem, align 8
  %18 = load i64, i64* %tem, align 8
  %call17 = call zeroext i1 @STRINGP(i64 %18)
  br i1 %call17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.then.15
  %19 = load i64, i64* %tem, align 8
  store i64 %19, i64* %name.addr, align 8
  store i32 1, i32* %name_pattern.addr, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.then.15
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.else
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then.10
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.22
  %20 = load i32, i32* %i, align 4
  %conv23 = sext i32 %20 to i64
  %21 = load i64, i64* @Vfontset_table, align 8
  %call24 = call i64 @ASIZE(i64 %21)
  %cmp25 = icmp slt i64 %conv23, %call24
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i64, i64* @Vfontset_table, align 8
  %23 = load i32, i32* %i, align 4
  %conv27 = sext i32 %23 to i64
  %call28 = call i64 @AREF(i64 %22, i64 %conv27)
  store i64 %call28, i64* %fontset, align 8
  %24 = load i64, i64* %fontset, align 8
  %call29 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp30 = icmp eq i64 %24, %call29
  br i1 %cmp30, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %25 = load i64, i64* %fontset, align 8
  %call32 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %25)
  %extras = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call32, i32 0, i32 6
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* %extras, i32 0, i64 3
  %26 = load i64, i64* %arrayidx, align 8
  %call33 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp34 = icmp eq i64 %26, %call33
  br i1 %cmp34, label %if.end.37, label %if.then.36

if.then.36:                                       ; preds = %lor.lhs.false, %for.body
  br label %for.inc

if.end.37:                                        ; preds = %lor.lhs.false
  %27 = load i64, i64* %fontset, align 8
  %call38 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %27)
  %extras39 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call38, i32 0, i32 6
  %arrayidx40 = getelementptr inbounds [0 x i64], [0 x i64]* %extras39, i32 0, i64 1
  %28 = load i64, i64* %arrayidx40, align 8
  store i64 %28, i64* %this_name, align 8
  %29 = load i32, i32* %name_pattern.addr, align 4
  %cmp41 = icmp eq i32 %29, 1
  br i1 %cmp41, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.37
  %30 = load i64, i64* %name.addr, align 8
  %31 = load i64, i64* %this_name, align 8
  %call43 = call i64 @fast_string_match_ignore_case(i64 %30, i64 %31)
  %cmp44 = icmp sge i64 %call43, 0
  br i1 %cmp44, label %if.then.49, label %if.end.50

cond.false:                                       ; preds = %if.end.37
  %32 = load i64, i64* %name.addr, align 8
  %call46 = call i8* @SSDATA(i64 %32)
  %33 = load i64, i64* %this_name, align 8
  %call47 = call i8* @SSDATA(i64 %33)
  %call48 = call i32 @xstrcasecmp(i8* %call46, i8* %call47)
  %tobool = icmp ne i32 %call48, 0
  br i1 %tobool, label %if.end.50, label %if.then.49

if.then.49:                                       ; preds = %cond.false, %cond.true
  %34 = load i32, i32* %i, align 4
  store i32 %34, i32* %retval
  br label %return

if.end.50:                                        ; preds = %cond.false, %cond.true
  br label %for.inc

for.inc:                                          ; preds = %if.end.50, %if.then.36
  %35 = load i32, i32* %i, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.49
  %36 = load i32, i32* %retval
  ret i32 %36
}

declare i64 @Fdowncase(i64) #1

declare i64 @Frassoc(i64, i64) #1

declare i64 @Fassoc(i64, i64) #1

declare zeroext i1 @STRINGP(i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @fontset_pattern_regexp(i64 %pattern) #0 {
entry:
  %retval = alloca i64, align 8
  %pattern.addr = alloca i64, align 8
  %regex = alloca i8*, align 8
  %p0 = alloca i8*, align 8
  %p1 = alloca i8*, align 8
  %ndashes = alloca i32, align 4
  %nstars = alloca i32, align 4
  %nescs = alloca i32, align 4
  %regexsize = alloca i64, align 8
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  store i64 %pattern, i64* %pattern.addr, align 8
  %0 = load i64, i64* %pattern.addr, align 8
  %call = call i8* @SSDATA(i64 %0)
  %call1 = call i8* @strchr(i8* %call, i32 42) #5
  %tobool = icmp ne i8* %call1, null
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %pattern.addr, align 8
  %call2 = call i8* @SSDATA(i64 %1)
  %call3 = call i8* @strchr(i8* %call2, i32 63) #5
  %tobool4 = icmp ne i8* %call3, null
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call5, i64* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load i64, i64* @Vcached_fontset_data, align 8
  %and = and i64 %2, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %lor.lhs.false, label %if.then.11

lor.lhs.false:                                    ; preds = %if.end
  %3 = load i64, i64* %pattern.addr, align 8
  %call7 = call i8* @SSDATA(i64 %3)
  %4 = load i64, i64* @Vcached_fontset_data, align 8
  %sub = sub nsw i64 %4, 3
  %5 = inttoptr i64 %sub to i8*
  %6 = bitcast i8* %5 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %6, i32 0, i32 0
  %7 = load i64, i64* %car, align 8
  %call8 = call i8* @SSDATA(i64 %7)
  %call9 = call i32 @strcmp(i8* %call7, i8* %call8) #5
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.138

if.then.11:                                       ; preds = %lor.lhs.false, %if.end
  store i32 0, i32* %ndashes, align 4
  store i32 0, i32* %nstars, align 4
  store i32 0, i32* %nescs, align 4
  %8 = load i64, i64* %pattern.addr, align 8
  %call12 = call i8* @SDATA(i64 %8)
  store i8* %call12, i8** %p0, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.11
  %9 = load i8*, i8** %p0, align 8
  %10 = load i8, i8* %9, align 1
  %tobool13 = icmp ne i8 %10, 0
  br i1 %tobool13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i8*, i8** %p0, align 8
  %12 = load i8, i8* %11, align 1
  %conv14 = zext i8 %12 to i32
  %cmp15 = icmp eq i32 %conv14, 45
  br i1 %cmp15, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %for.body
  %13 = load i32, i32* %ndashes, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %ndashes, align 4
  br label %if.end.51

if.else:                                          ; preds = %for.body
  %14 = load i8*, i8** %p0, align 8
  %15 = load i8, i8* %14, align 1
  %conv18 = zext i8 %15 to i32
  %cmp19 = icmp eq i32 %conv18, 42
  br i1 %cmp19, label %if.then.21, label %if.else.23

if.then.21:                                       ; preds = %if.else
  %16 = load i32, i32* %nstars, align 4
  %inc22 = add nsw i32 %16, 1
  store i32 %inc22, i32* %nstars, align 4
  br label %if.end.50

if.else.23:                                       ; preds = %if.else
  %17 = load i8*, i8** %p0, align 8
  %18 = load i8, i8* %17, align 1
  %conv24 = zext i8 %18 to i32
  %cmp25 = icmp eq i32 %conv24, 91
  br i1 %cmp25, label %if.then.47, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %if.else.23
  %19 = load i8*, i8** %p0, align 8
  %20 = load i8, i8* %19, align 1
  %conv28 = zext i8 %20 to i32
  %cmp29 = icmp eq i32 %conv28, 46
  br i1 %cmp29, label %if.then.47, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %lor.lhs.false.27
  %21 = load i8*, i8** %p0, align 8
  %22 = load i8, i8* %21, align 1
  %conv32 = zext i8 %22 to i32
  %cmp33 = icmp eq i32 %conv32, 92
  br i1 %cmp33, label %if.then.47, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %lor.lhs.false.31
  %23 = load i8*, i8** %p0, align 8
  %24 = load i8, i8* %23, align 1
  %conv36 = zext i8 %24 to i32
  %cmp37 = icmp eq i32 %conv36, 43
  br i1 %cmp37, label %if.then.47, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %lor.lhs.false.35
  %25 = load i8*, i8** %p0, align 8
  %26 = load i8, i8* %25, align 1
  %conv40 = zext i8 %26 to i32
  %cmp41 = icmp eq i32 %conv40, 94
  br i1 %cmp41, label %if.then.47, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %lor.lhs.false.39
  %27 = load i8*, i8** %p0, align 8
  %28 = load i8, i8* %27, align 1
  %conv44 = zext i8 %28 to i32
  %cmp45 = icmp eq i32 %conv44, 36
  br i1 %cmp45, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %lor.lhs.false.43, %lor.lhs.false.39, %lor.lhs.false.35, %lor.lhs.false.31, %lor.lhs.false.27, %if.else.23
  %29 = load i32, i32* %nescs, align 4
  %inc48 = add nsw i32 %29, 1
  store i32 %inc48, i32* %nescs, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %lor.lhs.false.43
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.then.21
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.then.17
  br label %for.inc

for.inc:                                          ; preds = %if.end.51
  %30 = load i8*, i8** %p0, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr, i8** %p0, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = load i64, i64* %pattern.addr, align 8
  %call52 = call i64 @SBYTES(i64 %31)
  %32 = load i32, i32* %ndashes, align 4
  %cmp53 = icmp slt i32 %32, 14
  %cond = select i1 %cmp53, i32 2, i32 5
  %33 = load i32, i32* %nstars, align 4
  %mul = mul nsw i32 %cond, %33
  %conv55 = sext i32 %mul to i64
  %add = add nsw i64 %call52, %conv55
  %34 = load i32, i32* %nescs, align 4
  %mul56 = mul nsw i32 2, %34
  %conv57 = sext i32 %mul56 to i64
  %add58 = add nsw i64 %add, %conv57
  %add59 = add nsw i64 %add58, 3
  store i64 %add59, i64* %regexsize, align 8
  store i64 16384, i64* %sa_avail, align 8
  %call60 = call i64 @SPECPDL_INDEX()
  store i64 %call60, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  %35 = load i64, i64* %regexsize, align 8
  %36 = load i64, i64* %sa_avail, align 8
  %cmp61 = icmp sle i64 %35, %36
  br i1 %cmp61, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %37 = load i64, i64* %regexsize, align 8
  %38 = load i64, i64* %sa_avail, align 8
  %sub63 = sub nsw i64 %38, %37
  store i64 %sub63, i64* %sa_avail, align 8
  %39 = load i64, i64* %regexsize, align 8
  %40 = alloca i8, i64 %39
  br label %cond.end

cond.false:                                       ; preds = %for.end
  store i8 1, i8* %sa_must_free, align 1
  %41 = load i64, i64* %regexsize, align 8
  %call64 = call i8* @record_xmalloc(i64 %41)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond65 = phi i8* [ %40, %cond.true ], [ %call64, %cond.false ]
  store i8* %cond65, i8** %regex, align 8
  store i8* %cond65, i8** %p1, align 8
  %42 = load i8*, i8** %p1, align 8
  %incdec.ptr66 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr66, i8** %p1, align 8
  store i8 94, i8* %42, align 1
  %43 = load i64, i64* %pattern.addr, align 8
  %call67 = call i8* @SDATA(i64 %43)
  store i8* %call67, i8** %p0, align 8
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc.124, %cond.end
  %44 = load i8*, i8** %p0, align 8
  %45 = load i8, i8* %44, align 1
  %tobool69 = icmp ne i8 %45, 0
  br i1 %tobool69, label %for.body.70, label %for.end.126

for.body.70:                                      ; preds = %for.cond.68
  %46 = load i8*, i8** %p0, align 8
  %47 = load i8, i8* %46, align 1
  %conv71 = zext i8 %47 to i32
  %cmp72 = icmp eq i32 %conv71, 42
  br i1 %cmp72, label %if.then.74, label %if.else.86

if.then.74:                                       ; preds = %for.body.70
  %48 = load i32, i32* %ndashes, align 4
  %cmp75 = icmp slt i32 %48, 14
  br i1 %cmp75, label %if.then.77, label %if.else.79

if.then.77:                                       ; preds = %if.then.74
  %49 = load i8*, i8** %p1, align 8
  %incdec.ptr78 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr78, i8** %p1, align 8
  store i8 46, i8* %49, align 1
  br label %if.end.84

if.else.79:                                       ; preds = %if.then.74
  %50 = load i8*, i8** %p1, align 8
  %incdec.ptr80 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr80, i8** %p1, align 8
  store i8 91, i8* %50, align 1
  %51 = load i8*, i8** %p1, align 8
  %incdec.ptr81 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr81, i8** %p1, align 8
  store i8 94, i8* %51, align 1
  %52 = load i8*, i8** %p1, align 8
  %incdec.ptr82 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr82, i8** %p1, align 8
  store i8 45, i8* %52, align 1
  %53 = load i8*, i8** %p1, align 8
  %incdec.ptr83 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr83, i8** %p1, align 8
  store i8 93, i8* %53, align 1
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.79, %if.then.77
  %54 = load i8*, i8** %p1, align 8
  %incdec.ptr85 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %incdec.ptr85, i8** %p1, align 8
  store i8 42, i8* %54, align 1
  br label %if.end.123

if.else.86:                                       ; preds = %for.body.70
  %55 = load i8*, i8** %p0, align 8
  %56 = load i8, i8* %55, align 1
  %conv87 = zext i8 %56 to i32
  %cmp88 = icmp eq i32 %conv87, 63
  br i1 %cmp88, label %if.then.90, label %if.else.92

if.then.90:                                       ; preds = %if.else.86
  %57 = load i8*, i8** %p1, align 8
  %incdec.ptr91 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %incdec.ptr91, i8** %p1, align 8
  store i8 46, i8* %57, align 1
  br label %if.end.122

if.else.92:                                       ; preds = %if.else.86
  %58 = load i8*, i8** %p0, align 8
  %59 = load i8, i8* %58, align 1
  %conv93 = zext i8 %59 to i32
  %cmp94 = icmp eq i32 %conv93, 91
  br i1 %cmp94, label %if.then.116, label %lor.lhs.false.96

lor.lhs.false.96:                                 ; preds = %if.else.92
  %60 = load i8*, i8** %p0, align 8
  %61 = load i8, i8* %60, align 1
  %conv97 = zext i8 %61 to i32
  %cmp98 = icmp eq i32 %conv97, 46
  br i1 %cmp98, label %if.then.116, label %lor.lhs.false.100

lor.lhs.false.100:                                ; preds = %lor.lhs.false.96
  %62 = load i8*, i8** %p0, align 8
  %63 = load i8, i8* %62, align 1
  %conv101 = zext i8 %63 to i32
  %cmp102 = icmp eq i32 %conv101, 92
  br i1 %cmp102, label %if.then.116, label %lor.lhs.false.104

lor.lhs.false.104:                                ; preds = %lor.lhs.false.100
  %64 = load i8*, i8** %p0, align 8
  %65 = load i8, i8* %64, align 1
  %conv105 = zext i8 %65 to i32
  %cmp106 = icmp eq i32 %conv105, 43
  br i1 %cmp106, label %if.then.116, label %lor.lhs.false.108

lor.lhs.false.108:                                ; preds = %lor.lhs.false.104
  %66 = load i8*, i8** %p0, align 8
  %67 = load i8, i8* %66, align 1
  %conv109 = zext i8 %67 to i32
  %cmp110 = icmp eq i32 %conv109, 94
  br i1 %cmp110, label %if.then.116, label %lor.lhs.false.112

lor.lhs.false.112:                                ; preds = %lor.lhs.false.108
  %68 = load i8*, i8** %p0, align 8
  %69 = load i8, i8* %68, align 1
  %conv113 = zext i8 %69 to i32
  %cmp114 = icmp eq i32 %conv113, 36
  br i1 %cmp114, label %if.then.116, label %if.else.119

if.then.116:                                      ; preds = %lor.lhs.false.112, %lor.lhs.false.108, %lor.lhs.false.104, %lor.lhs.false.100, %lor.lhs.false.96, %if.else.92
  %70 = load i8*, i8** %p1, align 8
  %incdec.ptr117 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %incdec.ptr117, i8** %p1, align 8
  store i8 92, i8* %70, align 1
  %71 = load i8*, i8** %p0, align 8
  %72 = load i8, i8* %71, align 1
  %73 = load i8*, i8** %p1, align 8
  %incdec.ptr118 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %incdec.ptr118, i8** %p1, align 8
  store i8 %72, i8* %73, align 1
  br label %if.end.121

if.else.119:                                      ; preds = %lor.lhs.false.112
  %74 = load i8*, i8** %p0, align 8
  %75 = load i8, i8* %74, align 1
  %76 = load i8*, i8** %p1, align 8
  %incdec.ptr120 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %incdec.ptr120, i8** %p1, align 8
  store i8 %75, i8* %76, align 1
  br label %if.end.121

if.end.121:                                       ; preds = %if.else.119, %if.then.116
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %if.then.90
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122, %if.end.84
  br label %for.inc.124

for.inc.124:                                      ; preds = %if.end.123
  %77 = load i8*, i8** %p0, align 8
  %incdec.ptr125 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %incdec.ptr125, i8** %p0, align 8
  br label %for.cond.68

for.end.126:                                      ; preds = %for.cond.68
  %78 = load i8*, i8** %p1, align 8
  %incdec.ptr127 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %incdec.ptr127, i8** %p1, align 8
  store i8 36, i8* %78, align 1
  %79 = load i8*, i8** %p1, align 8
  %incdec.ptr128 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %incdec.ptr128, i8** %p1, align 8
  store i8 0, i8* %79, align 1
  %80 = load i64, i64* %pattern.addr, align 8
  %call129 = call i8* @SSDATA(i64 %80)
  %call130 = call i64 @build_string(i8* %call129)
  %81 = load i8*, i8** %regex, align 8
  %call131 = call i64 @build_string(i8* %81)
  %call132 = call i64 @Fcons(i64 %call130, i64 %call131)
  store i64 %call132, i64* @Vcached_fontset_data, align 8
  br label %do.body

do.body:                                          ; preds = %for.end.126
  %82 = load i8, i8* %sa_must_free, align 1
  %tobool133 = trunc i8 %82 to i1
  br i1 %tobool133, label %if.then.134, label %if.end.137

if.then.134:                                      ; preds = %do.body
  store i8 0, i8* %sa_must_free, align 1
  %83 = load i64, i64* %sa_count, align 8
  %call135 = call i64 @builtin_lisp_symbol(i32 0)
  %call136 = call i64 @unbind_to(i64 %83, i64 %call135)
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.134, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.137
  br label %if.end.138

if.end.138:                                       ; preds = %do.end, %lor.lhs.false
  %84 = load i64, i64* @Vcached_fontset_data, align 8
  %sub139 = sub nsw i64 %84, 3
  %85 = inttoptr i64 %sub139 to i8*
  %86 = bitcast i8* %85 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %86, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %87 = load i64, i64* %cdr, align 8
  store i64 %87, i64* %retval
  br label %return

return:                                           ; preds = %if.end.138, %if.then
  %88 = load i64, i64* %retval
  ret i64 %88
}

declare i64 @ASIZE(i64) #1

declare i64 @fast_string_match_ignore_case(i64, i64) #1

declare i32 @xstrcasecmp(i8*, i8*) #1

declare i8* @SSDATA(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fquery_fontset(i64 %pattern, i64 %regexpp) #0 {
entry:
  %retval = alloca i64, align 8
  %pattern.addr = alloca i64, align 8
  %regexpp.addr = alloca i64, align 8
  %fontset = alloca i64, align 8
  %id = alloca i32, align 4
  store i64 %pattern, i64* %pattern.addr, align 8
  store i64 %regexpp, i64* %regexpp.addr, align 8
  call void @check_window_system(%struct.frame* null)
  %0 = load i64, i64* %pattern.addr, align 8
  call void @CHECK_STRING(i64 %0)
  %1 = load i64, i64* %pattern.addr, align 8
  %call = call i64 @SCHARS(i64 %1)
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %pattern.addr, align 8
  %3 = load i64, i64* %regexpp.addr, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp3 = icmp eq i64 %3, %call2
  %lnot = xor i1 %cmp3, true
  %lnot.ext = zext i1 %lnot to i32
  %call4 = call i32 @fs_query_fontset(i64 %2, i32 %lnot.ext)
  store i32 %call4, i32* %id, align 4
  %4 = load i32, i32* %id, align 4
  %cmp5 = icmp slt i32 %4, 0
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %call7 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call7, i64* %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %5 = load i64, i64* @Vfontset_table, align 8
  %6 = load i32, i32* %id, align 4
  %conv = sext i32 %6 to i64
  %call9 = call i64 @AREF(i64 %5, i64 %conv)
  store i64 %call9, i64* %fontset, align 8
  %7 = load i64, i64* %fontset, align 8
  %call10 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %7)
  %extras = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call10, i32 0, i32 6
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* %extras, i32 0, i64 1
  %8 = load i64, i64* %arrayidx, align 8
  store i64 %8, i64* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.6, %if.then
  %9 = load i64, i64* %retval
  ret i64 %9
}

declare void @check_window_system(%struct.frame*) #1

declare void @CHECK_STRING(i64) #1

declare i64 @SCHARS(i64) #1

; Function Attrs: nounwind uwtable
define i64 @list_fontsets(%struct.frame* %f, i64 %pattern, i32 %size) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %pattern.addr = alloca i64, align 8
  %size.addr = alloca i32, align 4
  %frame = alloca i64, align 8
  %regexp = alloca i64, align 8
  %val = alloca i64, align 8
  %id = alloca i32, align 4
  %fontset = alloca i64, align 8
  %name = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %pattern, i64* %pattern.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %1 = bitcast %struct.frame* %0 to i8*
  %call = call i64 @make_lisp_ptr(i8* %1, i32 5)
  store i64 %call, i64* %frame, align 8
  %2 = load i64, i64* %pattern.addr, align 8
  %call1 = call i64 @fontset_pattern_regexp(i64 %2)
  store i64 %call1, i64* %regexp, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call2, i64* %val, align 8
  store i32 0, i32* %id, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %id, align 4
  %conv = sext i32 %3 to i64
  %4 = load i64, i64* @Vfontset_table, align 8
  %call3 = call i64 @ASIZE(i64 %4)
  %cmp = icmp slt i64 %conv, %call3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i64, i64* @Vfontset_table, align 8
  %6 = load i32, i32* %id, align 4
  %conv5 = sext i32 %6 to i64
  %call6 = call i64 @AREF(i64 %5, i64 %conv5)
  store i64 %call6, i64* %fontset, align 8
  %7 = load i64, i64* %fontset, align 8
  %call7 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp8 = icmp eq i64 %7, %call7
  br i1 %cmp8, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %8 = load i64, i64* %fontset, align 8
  %call10 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %8)
  %extras = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call10, i32 0, i32 6
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* %extras, i32 0, i64 3
  %9 = load i64, i64* %arrayidx, align 8
  %call11 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp12 = icmp eq i64 %9, %call11
  br i1 %cmp12, label %lor.lhs.false.14, label %if.then

lor.lhs.false.14:                                 ; preds = %lor.lhs.false
  %10 = load i64, i64* %frame, align 8
  %11 = load i64, i64* %fontset, align 8
  %call15 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %11)
  %extras16 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call15, i32 0, i32 6
  %arrayidx17 = getelementptr inbounds [0 x i64], [0 x i64]* %extras16, i32 0, i64 4
  %12 = load i64, i64* %arrayidx17, align 8
  %cmp18 = icmp eq i64 %10, %12
  br i1 %cmp18, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.14, %lor.lhs.false, %for.body
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false.14
  %13 = load i64, i64* %fontset, align 8
  %call20 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %13)
  %extras21 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call20, i32 0, i32 6
  %arrayidx22 = getelementptr inbounds [0 x i64], [0 x i64]* %extras21, i32 0, i64 1
  %14 = load i64, i64* %arrayidx22, align 8
  store i64 %14, i64* %name, align 8
  %15 = load i64, i64* %regexp, align 8
  %call23 = call zeroext i1 @STRINGP(i64 %15)
  br i1 %call23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %16 = load i64, i64* %regexp, align 8
  %17 = load i64, i64* %name, align 8
  %call25 = call i64 @fast_string_match(i64 %16, i64 %17)
  %cmp26 = icmp slt i64 %call25, 0
  br i1 %cmp26, label %if.then.31, label %if.end.32

cond.false:                                       ; preds = %if.end
  %18 = load i64, i64* %pattern.addr, align 8
  %call28 = call i8* @SSDATA(i64 %18)
  %19 = load i64, i64* %name, align 8
  %call29 = call i8* @SSDATA(i64 %19)
  %call30 = call i32 @strcmp(i8* %call28, i8* %call29) #5
  %tobool = icmp ne i32 %call30, 0
  br i1 %tobool, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %cond.false, %cond.true
  br label %for.inc

if.end.32:                                        ; preds = %cond.false, %cond.true
  %20 = load i64, i64* %fontset, align 8
  %call33 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %20)
  %extras34 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call33, i32 0, i32 6
  %arrayidx35 = getelementptr inbounds [0 x i64], [0 x i64]* %extras34, i32 0, i64 1
  %21 = load i64, i64* %arrayidx35, align 8
  %call36 = call i64 @Fcopy_sequence(i64 %21)
  %22 = load i64, i64* %val, align 8
  %call37 = call i64 @Fcons(i64 %call36, i64 %22)
  store i64 %call37, i64* %val, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.32, %if.then.31, %if.then
  %23 = load i32, i32* %id, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %id, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load i64, i64* %val, align 8
  ret i64 %24
}

declare i64 @fast_string_match(i64, i64) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare i64 @Fcons(i64, i64) #1

declare i64 @Fcopy_sequence(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fset_fontset_font(i64 %name, i64 %target, i64 %font_spec, i64 %frame, i64 %add) #0 {
entry:
  %name.addr = alloca i64, align 8
  %target.addr = alloca i64, align 8
  %font_spec.addr = alloca i64, align 8
  %frame.addr = alloca i64, align 8
  %add.addr = alloca i64, align 8
  %fontset = alloca i64, align 8
  %font_def = alloca i64, align 8
  %registry = alloca i64, align 8
  %family = alloca i64, align 8
  %range_list = alloca i64, align 8
  %charset = alloca %struct.charset*, align 8
  %fontname = alloca i64, align 8
  %ascii_changed = alloca i8, align 1
  %spec = alloca i64, align 8
  %.compoundliteral = alloca [2 x i64], align 8
  %encoding = alloca i64, align 8
  %repertory = alloca i64, align 8
  %dash = alloca i64, align 8
  %.compoundliteral47 = alloca %union.Aligned_String, align 8
  %from = alloca i64, align 8
  %to = alloca i64, align 8
  %script_list = alloca i64, align 8
  %val = alloca i64, align 8
  %csid = alloca i32, align 4
  %idx = alloca i64, align 8
  %val265 = alloca i64, align 8
  %arg = alloca i64, align 8
  %tail = alloca i64, align 8
  %fr = alloca i64, align 8
  %fontset_id = alloca i32, align 4
  %f = alloca %struct.frame*, align 8
  %font_object = alloca i64, align 8
  %face = alloca %struct.face*, align 8
  %arg391 = alloca i64, align 8
  %.compoundliteral392 = alloca %union.Aligned_Cons, align 8
  %.compoundliteral395 = alloca %union.Aligned_Cons, align 8
  store i64 %name, i64* %name.addr, align 8
  store i64 %target, i64* %target.addr, align 8
  store i64 %font_spec, i64* %font_spec.addr, align 8
  store i64 %frame, i64* %frame.addr, align 8
  store i64 %add, i64* %add.addr, align 8
  store %struct.charset* null, %struct.charset** %charset, align 8
  store i8 0, i8* %ascii_changed, align 1
  %0 = load i64, i64* %name.addr, align 8
  %call = call i64 @check_fontset_name(i64 %0, i64* %frame.addr)
  store i64 %call, i64* %fontset, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* %fontname, align 8
  %1 = load i64, i64* %font_spec.addr, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call3 = call i64 @Ffont_spec(i64 0, i64* null)
  store i64 %call3, i64* %spec, align 8
  %2 = load i64, i64* %font_spec.addr, align 8
  %sub = sub nsw i64 %2, 3
  %3 = inttoptr i64 %sub to i8*
  %4 = bitcast i8* %3 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %4, i32 0, i32 0
  %5 = load i64, i64* %car, align 8
  %6 = load i64, i64* %font_spec.addr, align 8
  %sub4 = sub nsw i64 %6, 3
  %7 = inttoptr i64 %sub4 to i8*
  %8 = bitcast i8* %7 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %8, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %9 = load i64, i64* %cdr, align 8
  %10 = load i64, i64* %spec, align 8
  call void @font_parse_family_registry(i64 %5, i64 %9, i64 %10)
  %11 = load i64, i64* %spec, align 8
  store i64 %11, i64* %font_spec.addr, align 8
  %12 = load i64, i64* %font_spec.addr, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  %call6 = call i64 @Ffont_xlfd_name(i64 %12, i64 %call5)
  store i64 %call6, i64* %fontname, align 8
  br label %if.end.27

if.else:                                          ; preds = %entry
  %13 = load i64, i64* %font_spec.addr, align 8
  %call7 = call zeroext i1 @STRINGP(i64 %13)
  br i1 %call7, label %if.then.8, label %if.else.11

if.then.8:                                        ; preds = %if.else
  %14 = load i64, i64* %font_spec.addr, align 8
  store i64 %14, i64* %fontname, align 8
  %arrayinit.begin = getelementptr inbounds [2 x i64], [2 x i64]* %.compoundliteral, i64 0, i64 0
  %call9 = call i64 @builtin_lisp_symbol(i32 86)
  store i64 %call9, i64* %arrayinit.begin
  %arrayinit.element = getelementptr inbounds i64, i64* %arrayinit.begin, i64 1
  %15 = load i64, i64* %fontname, align 8
  store i64 %15, i64* %arrayinit.element
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %.compoundliteral, i32 0, i32 0
  %call10 = call i64 @Ffont_spec(i64 2, i64* %arraydecay)
  store i64 %call10, i64* %font_spec.addr, align 8
  br label %if.end.26

if.else.11:                                       ; preds = %if.else
  %16 = load i64, i64* %font_spec.addr, align 8
  %call12 = call zeroext i1 @FONT_SPEC_P(i64 %16)
  br i1 %call12, label %if.then.13, label %if.else.16

if.then.13:                                       ; preds = %if.else.11
  %17 = load i64, i64* %font_spec.addr, align 8
  %call14 = call i64 @builtin_lisp_symbol(i32 0)
  %call15 = call i64 @Ffont_xlfd_name(i64 %17, i64 %call14)
  store i64 %call15, i64* %fontname, align 8
  br label %if.end.25

if.else.16:                                       ; preds = %if.else.11
  %18 = load i64, i64* %font_spec.addr, align 8
  %call17 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp18 = icmp eq i64 %18, %call17
  br i1 %cmp18, label %if.end, label %if.then.20

if.then.20:                                       ; preds = %if.else.16
  %call21 = call i64 @builtin_lisp_symbol(i32 439)
  %call22 = call i64 @build_string(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0))
  %19 = load i64, i64* %font_spec.addr, align 8
  %call23 = call i64 @list2(i64 %call22, i64 %19)
  %call24 = call i64 @Fsignal(i64 %call21, i64 %call23)
  br label %if.end

if.end:                                           ; preds = %if.then.20, %if.else.16
  br label %if.end.25

if.end.25:                                        ; preds = %if.end, %if.then.13
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.8
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then
  %20 = load i64, i64* %font_spec.addr, align 8
  %call28 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp29 = icmp eq i64 %20, %call28
  br i1 %cmp29, label %if.else.130, label %if.then.31

if.then.31:                                       ; preds = %if.end.27
  %21 = load i64, i64* %font_spec.addr, align 8
  %call32 = call i64 @AREF(i64 %21, i64 2)
  store i64 %call32, i64* %family, align 8
  %22 = load i64, i64* %family, align 8
  %call33 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp34 = icmp eq i64 %22, %call33
  br i1 %cmp34, label %if.end.38, label %if.then.36

if.then.36:                                       ; preds = %if.then.31
  %23 = load i64, i64* %family, align 8
  %call37 = call i64 @SYMBOL_NAME(i64 %23)
  store i64 %call37, i64* %family, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %if.then.31
  %24 = load i64, i64* %font_spec.addr, align 8
  %call39 = call i64 @AREF(i64 %24, i64 4)
  store i64 %call39, i64* %registry, align 8
  %25 = load i64, i64* %registry, align 8
  %call40 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp41 = icmp eq i64 %25, %call40
  br i1 %cmp41, label %if.end.46, label %if.then.43

if.then.43:                                       ; preds = %if.end.38
  %26 = load i64, i64* %registry, align 8
  %call44 = call i64 @SYMBOL_NAME(i64 %26)
  %call45 = call i64 @Fdowncase(i64 %call44)
  store i64 %call45, i64* %registry, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.43, %if.end.38
  %s = bitcast %union.Aligned_String* %.compoundliteral47 to %struct.Lisp_String*
  %size = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 0
  store i64 1, i64* %size, align 8
  %size_byte = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 1
  store i64 -1, i64* %size_byte, align 8
  %intervals = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 2
  store %struct.interval* null, %struct.interval** %intervals, align 8
  %data = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 3
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8** %data, align 8
  %s48 = bitcast %union.Aligned_String* %.compoundliteral47 to %struct.Lisp_String*
  %27 = bitcast %struct.Lisp_String* %s48 to i8*
  %call49 = call i64 @make_lisp_ptr(i8* %27, i32 4)
  store i64 %call49, i64* %dash, align 8
  %28 = load i64, i64* %family, align 8
  %29 = load i64, i64* %dash, align 8
  %30 = load i64, i64* %registry, align 8
  %call50 = call i64 @concat3(i64 %28, i64 %29, i64 %30)
  %call51 = call i64 @find_font_encoding(i64 %call50)
  store i64 %call51, i64* %encoding, align 8
  %31 = load i64, i64* %encoding, align 8
  %call52 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp53 = icmp eq i64 %31, %call52
  br i1 %cmp53, label %if.then.55, label %if.end.57

if.then.55:                                       ; preds = %if.end.46
  %call56 = call i64 @builtin_lisp_symbol(i32 181)
  store i64 %call56, i64* %encoding, align 8
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.55, %if.end.46
  %32 = load i64, i64* %encoding, align 8
  %and58 = and i64 %32, 7
  %conv59 = trunc i64 %and58 to i32
  %cmp60 = icmp eq i32 %conv59, 0
  br i1 %cmp60, label %if.then.62, label %if.else.77

if.then.62:                                       ; preds = %if.end.57
  br label %do.body

do.body:                                          ; preds = %if.then.62
  %33 = load i64, i64* %encoding, align 8
  %and63 = and i64 %33, 7
  %conv64 = trunc i64 %and63 to i32
  %cmp65 = icmp eq i32 %conv64, 0
  br i1 %cmp65, label %lor.lhs.false, label %if.then.71

lor.lhs.false:                                    ; preds = %do.body
  %34 = load i64, i64* @Vcharset_hash_table, align 8
  %call67 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %34)
  %35 = load i64, i64* %encoding, align 8
  %call68 = call i64 @hash_lookup(%struct.Lisp_Hash_Table* %call67, i64 %35, i64* null)
  %cmp69 = icmp slt i64 %call68, 0
  br i1 %cmp69, label %if.then.71, label %if.end.73

if.then.71:                                       ; preds = %lor.lhs.false, %do.body
  %call72 = call i64 @builtin_lisp_symbol(i32 262)
  %36 = load i64, i64* %encoding, align 8
  %37 = call i64 @wrong_type_argument(i64 %call72, i64 %36) #6
  unreachable

if.end.73:                                        ; preds = %lor.lhs.false
  br label %do.end

do.end:                                           ; preds = %if.end.73
  %38 = load i64, i64* %encoding, align 8
  %39 = load i64, i64* @Vcharset_hash_table, align 8
  %call74 = call i64 @builtin_lisp_symbol(i32 0)
  %call75 = call i64 @Fgethash(i64 %38, i64 %39, i64 %call74)
  %call76 = call i64 @AREF(i64 %call75, i64 0)
  store i64 %call76, i64* %repertory, align 8
  store i64 %call76, i64* %encoding, align 8
  br label %if.end.126

if.else.77:                                       ; preds = %if.end.57
  %40 = load i64, i64* %encoding, align 8
  %sub78 = sub nsw i64 %40, 3
  %41 = inttoptr i64 %sub78 to i8*
  %42 = bitcast i8* %41 to %struct.Lisp_Cons*
  %u79 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %42, i32 0, i32 1
  %cdr80 = bitcast %union.anon* %u79 to i64*
  %43 = load i64, i64* %cdr80, align 8
  store i64 %43, i64* %repertory, align 8
  %44 = load i64, i64* %encoding, align 8
  %sub81 = sub nsw i64 %44, 3
  %45 = inttoptr i64 %sub81 to i8*
  %46 = bitcast i8* %45 to %struct.Lisp_Cons*
  %car82 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %46, i32 0, i32 0
  %47 = load i64, i64* %car82, align 8
  store i64 %47, i64* %encoding, align 8
  br label %do.body.83

do.body.83:                                       ; preds = %if.else.77
  %48 = load i64, i64* %encoding, align 8
  %and84 = and i64 %48, 7
  %conv85 = trunc i64 %and84 to i32
  %cmp86 = icmp eq i32 %conv85, 0
  br i1 %cmp86, label %lor.lhs.false.88, label %if.then.93

lor.lhs.false.88:                                 ; preds = %do.body.83
  %49 = load i64, i64* @Vcharset_hash_table, align 8
  %call89 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %49)
  %50 = load i64, i64* %encoding, align 8
  %call90 = call i64 @hash_lookup(%struct.Lisp_Hash_Table* %call89, i64 %50, i64* null)
  %cmp91 = icmp slt i64 %call90, 0
  br i1 %cmp91, label %if.then.93, label %if.end.95

if.then.93:                                       ; preds = %lor.lhs.false.88, %do.body.83
  %call94 = call i64 @builtin_lisp_symbol(i32 262)
  %51 = load i64, i64* %encoding, align 8
  %52 = call i64 @wrong_type_argument(i64 %call94, i64 %51) #6
  unreachable

if.end.95:                                        ; preds = %lor.lhs.false.88
  br label %do.end.96

do.end.96:                                        ; preds = %if.end.95
  %53 = load i64, i64* %encoding, align 8
  %54 = load i64, i64* @Vcharset_hash_table, align 8
  %call97 = call i64 @builtin_lisp_symbol(i32 0)
  %call98 = call i64 @Fgethash(i64 %53, i64 %54, i64 %call97)
  %call99 = call i64 @AREF(i64 %call98, i64 0)
  store i64 %call99, i64* %encoding, align 8
  %55 = load i64, i64* %repertory, align 8
  %call100 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp101 = icmp eq i64 %55, %call100
  br i1 %cmp101, label %if.end.125, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end.96
  %56 = load i64, i64* %repertory, align 8
  %and103 = and i64 %56, 7
  %conv104 = trunc i64 %and103 to i32
  %cmp105 = icmp eq i32 %conv104, 0
  br i1 %cmp105, label %if.then.107, label %if.end.125

if.then.107:                                      ; preds = %land.lhs.true
  br label %do.body.108

do.body.108:                                      ; preds = %if.then.107
  %57 = load i64, i64* %repertory, align 8
  %and109 = and i64 %57, 7
  %conv110 = trunc i64 %and109 to i32
  %cmp111 = icmp eq i32 %conv110, 0
  br i1 %cmp111, label %lor.lhs.false.113, label %if.then.118

lor.lhs.false.113:                                ; preds = %do.body.108
  %58 = load i64, i64* @Vcharset_hash_table, align 8
  %call114 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %58)
  %59 = load i64, i64* %repertory, align 8
  %call115 = call i64 @hash_lookup(%struct.Lisp_Hash_Table* %call114, i64 %59, i64* null)
  %cmp116 = icmp slt i64 %call115, 0
  br i1 %cmp116, label %if.then.118, label %if.end.120

if.then.118:                                      ; preds = %lor.lhs.false.113, %do.body.108
  %call119 = call i64 @builtin_lisp_symbol(i32 262)
  %60 = load i64, i64* %repertory, align 8
  %61 = call i64 @wrong_type_argument(i64 %call119, i64 %60) #6
  unreachable

if.end.120:                                       ; preds = %lor.lhs.false.113
  br label %do.end.121

do.end.121:                                       ; preds = %if.end.120
  %62 = load i64, i64* %repertory, align 8
  %63 = load i64, i64* @Vcharset_hash_table, align 8
  %call122 = call i64 @builtin_lisp_symbol(i32 0)
  %call123 = call i64 @Fgethash(i64 %62, i64 %63, i64 %call122)
  %call124 = call i64 @AREF(i64 %call123, i64 0)
  store i64 %call124, i64* %repertory, align 8
  br label %if.end.125

if.end.125:                                       ; preds = %do.end.121, %land.lhs.true, %do.end.96
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125, %do.end
  br label %do.body.127

do.body.127:                                      ; preds = %if.end.126
  %call128 = call i64 @make_uninit_vector(i64 3)
  store i64 %call128, i64* %font_def, align 8
  %64 = load i64, i64* %font_def, align 8
  %65 = load i64, i64* %font_spec.addr, align 8
  call void @ASET(i64 %64, i64 0, i64 %65)
  %66 = load i64, i64* %font_def, align 8
  %67 = load i64, i64* %encoding, align 8
  call void @ASET(i64 %66, i64 1, i64 %67)
  %68 = load i64, i64* %font_def, align 8
  %69 = load i64, i64* %repertory, align 8
  call void @ASET(i64 %68, i64 2, i64 %69)
  br label %do.end.129

do.end.129:                                       ; preds = %do.body.127
  br label %if.end.132

if.else.130:                                      ; preds = %if.end.27
  %call131 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call131, i64* %font_def, align 8
  br label %if.end.132

if.end.132:                                       ; preds = %if.else.130, %do.end.129
  %70 = load i64, i64* %target.addr, align 8
  %call133 = call zeroext i1 @NATNUMP(i64 %70)
  br i1 %call133, label %land.lhs.true.135, label %if.else.146

land.lhs.true.135:                                ; preds = %if.end.132
  %71 = load i64, i64* %target.addr, align 8
  %shr = ashr i64 %71, 2
  %cmp136 = icmp sle i64 %shr, 4194303
  br i1 %cmp136, label %if.then.138, label %if.else.146

if.then.138:                                      ; preds = %land.lhs.true.135
  %72 = load i64, i64* %target.addr, align 8
  %shr139 = ashr i64 %72, 2
  %cmp140 = icmp slt i64 %shr139, 128
  br i1 %cmp140, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %if.then.138
  call void (i8*, ...) @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0)) #6
  unreachable

if.end.143:                                       ; preds = %if.then.138
  %73 = load i64, i64* %target.addr, align 8
  %74 = load i64, i64* %target.addr, align 8
  %call144 = call i64 @Fcons(i64 %73, i64 %74)
  %call145 = call i64 @list1(i64 %call144)
  store i64 %call145, i64* %range_list, align 8
  br label %if.end.263

if.else.146:                                      ; preds = %land.lhs.true.135, %if.end.132
  %75 = load i64, i64* %target.addr, align 8
  %and147 = and i64 %75, 7
  %conv148 = trunc i64 %and147 to i32
  %cmp149 = icmp eq i32 %conv148, 3
  br i1 %cmp149, label %if.then.151, label %if.else.186

if.then.151:                                      ; preds = %if.else.146
  %76 = load i64, i64* %target.addr, align 8
  %call152 = call i64 @Fcar(i64 %76)
  store i64 %call152, i64* %from, align 8
  %77 = load i64, i64* %target.addr, align 8
  %call153 = call i64 @Fcdr(i64 %77)
  store i64 %call153, i64* %to, align 8
  %78 = load i64, i64* %from, align 8
  %call154 = call zeroext i1 @NATNUMP(i64 %78)
  br i1 %call154, label %land.lhs.true.156, label %cond.false

land.lhs.true.156:                                ; preds = %if.then.151
  %79 = load i64, i64* %from, align 8
  %shr157 = ashr i64 %79, 2
  %cmp158 = icmp sle i64 %shr157, 4194303
  br i1 %cmp158, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.156
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.156, %if.then.151
  %call160 = call i64 @builtin_lisp_symbol(i32 260)
  %80 = load i64, i64* %from, align 8
  %81 = call i64 @wrong_type_argument(i64 %call160, i64 %80) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %82, %cond.true
  %83 = load i64, i64* %to, align 8
  %call161 = call zeroext i1 @NATNUMP(i64 %83)
  br i1 %call161, label %land.lhs.true.163, label %cond.false.168

land.lhs.true.163:                                ; preds = %cond.end
  %84 = load i64, i64* %to, align 8
  %shr164 = ashr i64 %84, 2
  %cmp165 = icmp sle i64 %shr164, 4194303
  br i1 %cmp165, label %cond.true.167, label %cond.false.168

cond.true.167:                                    ; preds = %land.lhs.true.163
  br label %cond.end.170

cond.false.168:                                   ; preds = %land.lhs.true.163, %cond.end
  %call169 = call i64 @builtin_lisp_symbol(i32 260)
  %85 = load i64, i64* %to, align 8
  %86 = call i64 @wrong_type_argument(i64 %call169, i64 %85) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end.170

cond.end.170:                                     ; preds = %87, %cond.true.167
  %88 = load i64, i64* %from, align 8
  %shr171 = ashr i64 %88, 2
  %cmp172 = icmp slt i64 %shr171, 128
  br i1 %cmp172, label %if.then.174, label %if.end.184

if.then.174:                                      ; preds = %cond.end.170
  %89 = load i64, i64* %from, align 8
  %shr175 = ashr i64 %89, 2
  %cmp176 = icmp ne i64 %shr175, 0
  br i1 %cmp176, label %if.then.182, label %lor.lhs.false.178

lor.lhs.false.178:                                ; preds = %if.then.174
  %90 = load i64, i64* %to, align 8
  %shr179 = ashr i64 %90, 2
  %cmp180 = icmp slt i64 %shr179, 127
  br i1 %cmp180, label %if.then.182, label %if.end.183

if.then.182:                                      ; preds = %lor.lhs.false.178, %if.then.174
  call void (i8*, ...) @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0)) #6
  unreachable

if.end.183:                                       ; preds = %lor.lhs.false.178
  store i8 1, i8* %ascii_changed, align 1
  br label %if.end.184

if.end.184:                                       ; preds = %if.end.183, %cond.end.170
  %91 = load i64, i64* %target.addr, align 8
  %call185 = call i64 @list1(i64 %91)
  store i64 %call185, i64* %range_list, align 8
  br label %if.end.262

if.else.186:                                      ; preds = %if.else.146
  %92 = load i64, i64* %target.addr, align 8
  %and187 = and i64 %92, 7
  %conv188 = trunc i64 %and187 to i32
  %cmp189 = icmp eq i32 %conv188, 0
  br i1 %cmp189, label %land.lhs.true.191, label %if.else.252

land.lhs.true.191:                                ; preds = %if.else.186
  %93 = load i64, i64* %target.addr, align 8
  %call192 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp193 = icmp eq i64 %93, %call192
  br i1 %cmp193, label %if.else.252, label %if.then.195

if.then.195:                                      ; preds = %land.lhs.true.191
  %call196 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call196, i64* %range_list, align 8
  %94 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 27), align 8
  %call197 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %94)
  %extras = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call197, i32 0, i32 6
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* %extras, i32 0, i64 0
  %95 = load i64, i64* %arrayidx, align 8
  store i64 %95, i64* %script_list, align 8
  %96 = load i64, i64* %target.addr, align 8
  %97 = load i64, i64* %script_list, align 8
  %call198 = call i64 @Fmemq(i64 %96, i64 %97)
  %call199 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp200 = icmp eq i64 %call198, %call199
  br i1 %cmp200, label %if.end.214, label %if.then.202

if.then.202:                                      ; preds = %if.then.195
  %98 = load i64, i64* %target.addr, align 8
  %call203 = call i64 @builtin_lisp_symbol(i32 605)
  %cmp204 = icmp eq i64 %98, %call203
  br i1 %cmp204, label %if.then.206, label %if.end.207

if.then.206:                                      ; preds = %if.then.202
  store i8 1, i8* %ascii_changed, align 1
  br label %if.end.207

if.end.207:                                       ; preds = %if.then.206, %if.then.202
  %99 = load i64, i64* %target.addr, align 8
  %call208 = call i64 @list1(i64 %99)
  store i64 %call208, i64* %val, align 8
  %call209 = call i64 @builtin_lisp_symbol(i32 0)
  %100 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 27), align 8
  %101 = load i64, i64* %val, align 8
  call void @map_char_table(void (i64, i64, i64)* @accumulate_script_ranges, i64 %call209, i64 %100, i64 %101)
  %102 = load i64, i64* %val, align 8
  %sub210 = sub nsw i64 %102, 3
  %103 = inttoptr i64 %sub210 to i8*
  %104 = bitcast i8* %103 to %struct.Lisp_Cons*
  %u211 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %104, i32 0, i32 1
  %cdr212 = bitcast %union.anon* %u211 to i64*
  %105 = load i64, i64* %cdr212, align 8
  %call213 = call i64 @Fnreverse(i64 %105)
  store i64 %call213, i64* %range_list, align 8
  br label %if.end.214

if.end.214:                                       ; preds = %if.end.207, %if.then.195
  %106 = load i64, i64* @Vcharset_hash_table, align 8
  %call215 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %106)
  %107 = load i64, i64* %target.addr, align 8
  %call216 = call i64 @hash_lookup(%struct.Lisp_Hash_Table* %call215, i64 %107, i64* null)
  %cmp217 = icmp sge i64 %call216, 0
  br i1 %cmp217, label %if.then.219, label %if.else.243

if.then.219:                                      ; preds = %if.end.214
  br label %do.body.220

do.body.220:                                      ; preds = %if.then.219
  br label %do.body.221

do.body.221:                                      ; preds = %do.body.220
  %108 = load i64, i64* %target.addr, align 8
  %and222 = and i64 %108, 7
  %conv223 = trunc i64 %and222 to i32
  %cmp224 = icmp eq i32 %conv223, 0
  br i1 %cmp224, label %lor.lhs.false.226, label %if.then.231

lor.lhs.false.226:                                ; preds = %do.body.221
  %109 = load i64, i64* @Vcharset_hash_table, align 8
  %call227 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %109)
  %110 = load i64, i64* %target.addr, align 8
  %call228 = call i64 @hash_lookup(%struct.Lisp_Hash_Table* %call227, i64 %110, i64* null)
  store i64 %call228, i64* %idx, align 8
  %cmp229 = icmp slt i64 %call228, 0
  br i1 %cmp229, label %if.then.231, label %if.end.233

if.then.231:                                      ; preds = %lor.lhs.false.226, %do.body.221
  %call232 = call i64 @builtin_lisp_symbol(i32 262)
  %111 = load i64, i64* %target.addr, align 8
  %112 = call i64 @wrong_type_argument(i64 %call232, i64 %111) #6
  unreachable

if.end.233:                                       ; preds = %lor.lhs.false.226
  %113 = load i64, i64* @Vcharset_hash_table, align 8
  %call234 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %113)
  %114 = load i64, i64* %idx, align 8
  %call235 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call234, i64 %114)
  %call236 = call i64 @AREF(i64 %call235, i64 0)
  %shr237 = ashr i64 %call236, 2
  %conv238 = trunc i64 %shr237 to i32
  store i32 %conv238, i32* %csid, align 4
  br label %do.end.239

do.end.239:                                       ; preds = %if.end.233
  %115 = load %struct.charset*, %struct.charset** @charset_table, align 8
  %116 = load i32, i32* %csid, align 4
  %idx.ext = sext i32 %116 to i64
  %add.ptr = getelementptr inbounds %struct.charset, %struct.charset* %115, i64 %idx.ext
  store %struct.charset* %add.ptr, %struct.charset** %charset, align 8
  br label %do.end.240

do.end.240:                                       ; preds = %do.end.239
  %117 = load %struct.charset*, %struct.charset** %charset, align 8
  %ascii_compatible_p = getelementptr inbounds %struct.charset, %struct.charset* %117, i32 0, i32 5
  %bf.load = load i8, i8* %ascii_compatible_p, align 8
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %if.then.241, label %if.end.242

if.then.241:                                      ; preds = %do.end.240
  store i8 1, i8* %ascii_changed, align 1
  br label %if.end.242

if.end.242:                                       ; preds = %if.then.241, %do.end.240
  br label %if.end.251

if.else.243:                                      ; preds = %if.end.214
  %118 = load i64, i64* %range_list, align 8
  %call244 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp245 = icmp eq i64 %118, %call244
  br i1 %cmp245, label %if.then.247, label %if.end.250

if.then.247:                                      ; preds = %if.else.243
  %119 = load i64, i64* %target.addr, align 8
  %call248 = call i64 @SYMBOL_NAME(i64 %119)
  %call249 = call i8* @SDATA(i64 %call248)
  call void (i8*, ...) @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i32 0, i32 0), i8* %call249) #6
  unreachable

if.end.250:                                       ; preds = %if.else.243
  br label %if.end.251

if.end.251:                                       ; preds = %if.end.250, %if.end.242
  br label %if.end.261

if.else.252:                                      ; preds = %land.lhs.true.191, %if.else.186
  %120 = load i64, i64* %target.addr, align 8
  %call253 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp254 = icmp eq i64 %120, %call253
  br i1 %cmp254, label %if.then.256, label %if.else.259

if.then.256:                                      ; preds = %if.else.252
  %call257 = call i64 @builtin_lisp_symbol(i32 0)
  %call258 = call i64 @list1(i64 %call257)
  store i64 %call258, i64* %range_list, align 8
  br label %if.end.260

if.else.259:                                      ; preds = %if.else.252
  call void (i8*, ...) @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0)) #6
  unreachable

if.end.260:                                       ; preds = %if.then.256
  br label %if.end.261

if.end.261:                                       ; preds = %if.end.260, %if.end.251
  br label %if.end.262

if.end.262:                                       ; preds = %if.end.261, %if.end.184
  br label %if.end.263

if.end.263:                                       ; preds = %if.end.262, %if.end.143
  %121 = load i8, i8* %ascii_changed, align 1
  %tobool = trunc i8 %121 to i1
  br i1 %tobool, label %if.then.264, label %if.end.281

if.then.264:                                      ; preds = %if.end.263
  %122 = load i64, i64* %font_spec.addr, align 8
  %call266 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp267 = icmp eq i64 %122, %call266
  br i1 %cmp267, label %if.then.269, label %if.end.270

if.then.269:                                      ; preds = %if.then.264
  call void (i8*, ...) @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0)) #6
  unreachable

if.end.270:                                       ; preds = %if.then.264
  %123 = load i64, i64* %fontset, align 8
  %call271 = call i64 @CHAR_TABLE_REF(i64 %123, i32 0)
  store i64 %call271, i64* %val265, align 8
  %124 = load i64, i64* %val265, align 8
  %call272 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp273 = icmp eq i64 %124, %call272
  br i1 %cmp273, label %if.end.280, label %land.lhs.true.275

land.lhs.true.275:                                ; preds = %if.end.270
  %125 = load i64, i64* %add.addr, align 8
  %call276 = call i64 @builtin_lisp_symbol(i32 174)
  %cmp277 = icmp eq i64 %125, %call276
  br i1 %cmp277, label %if.then.279, label %if.end.280

if.then.279:                                      ; preds = %land.lhs.true.275
  store i8 0, i8* %ascii_changed, align 1
  br label %if.end.280

if.end.280:                                       ; preds = %if.then.279, %land.lhs.true.275, %if.end.270
  br label %if.end.281

if.end.281:                                       ; preds = %if.end.280, %if.end.263
  %126 = load %struct.charset*, %struct.charset** %charset, align 8
  %tobool282 = icmp ne %struct.charset* %126, null
  br i1 %tobool282, label %if.then.283, label %if.end.294

if.then.283:                                      ; preds = %if.end.281
  %call284 = call i64 @make_uninit_vector(i64 5)
  store i64 %call284, i64* %arg, align 8
  %127 = load i64, i64* %arg, align 8
  %128 = load i64, i64* %fontset, align 8
  call void @ASET(i64 %127, i64 0, i64 %128)
  %129 = load i64, i64* %arg, align 8
  %130 = load i64, i64* %font_def, align 8
  call void @ASET(i64 %129, i64 1, i64 %130)
  %131 = load i64, i64* %arg, align 8
  %132 = load i64, i64* %add.addr, align 8
  call void @ASET(i64 %131, i64 2, i64 %132)
  %133 = load i64, i64* %arg, align 8
  %134 = load i8, i8* %ascii_changed, align 1
  %tobool285 = trunc i8 %134 to i1
  br i1 %tobool285, label %cond.true.287, label %cond.false.289

cond.true.287:                                    ; preds = %if.then.283
  %call288 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end.291

cond.false.289:                                   ; preds = %if.then.283
  %call290 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.291

cond.end.291:                                     ; preds = %cond.false.289, %cond.true.287
  %cond = phi i64 [ %call288, %cond.true.287 ], [ %call290, %cond.false.289 ]
  call void @ASET(i64 %133, i64 3, i64 %cond)
  %135 = load i64, i64* %arg, align 8
  %136 = load i64, i64* %range_list, align 8
  call void @ASET(i64 %135, i64 4, i64 %136)
  %call292 = call i64 @builtin_lisp_symbol(i32 0)
  %137 = load i64, i64* %arg, align 8
  %138 = load %struct.charset*, %struct.charset** %charset, align 8
  %139 = load %struct.charset*, %struct.charset** %charset, align 8
  %min_code = getelementptr inbounds %struct.charset, %struct.charset* %139, i32 0, i32 10
  %140 = load i32, i32* %min_code, align 4
  %141 = load %struct.charset*, %struct.charset** %charset, align 8
  %max_code = getelementptr inbounds %struct.charset, %struct.charset* %141, i32 0, i32 11
  %142 = load i32, i32* %max_code, align 4
  call void @map_charset_chars(void (i64, i64)* @set_fontset_font, i64 %call292, i64 %137, %struct.charset* %138, i32 %140, i32 %142)
  %143 = load i64, i64* %arg, align 8
  %call293 = call i64 @AREF(i64 %143, i64 4)
  store i64 %call293, i64* %range_list, align 8
  br label %if.end.294

if.end.294:                                       ; preds = %cond.end.291, %if.end.281
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.294
  %144 = load i64, i64* %range_list, align 8
  %and295 = and i64 %144, 7
  %conv296 = trunc i64 %and295 to i32
  %cmp297 = icmp eq i32 %conv296, 3
  br i1 %cmp297, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %145 = load i64, i64* %add.addr, align 8
  %call299 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp300 = icmp eq i64 %145, %call299
  br i1 %cmp300, label %cond.true.302, label %cond.false.316

cond.true.302:                                    ; preds = %for.body
  %146 = load i64, i64* %range_list, align 8
  %sub303 = sub nsw i64 %146, 3
  %147 = inttoptr i64 %sub303 to i8*
  %148 = bitcast i8* %147 to %struct.Lisp_Cons*
  %car304 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %148, i32 0, i32 0
  %149 = load i64, i64* %car304, align 8
  %call305 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp306 = icmp eq i64 %149, %call305
  br i1 %cmp306, label %cond.true.308, label %cond.false.310

cond.true.308:                                    ; preds = %cond.true.302
  %150 = load i64, i64* %fontset, align 8
  %151 = load i64, i64* %font_def, align 8
  %call309 = call i64 @Fmake_vector(i64 6, i64 %151)
  call void @set_fontset_fallback(i64 %150, i64 %call309)
  br label %cond.end.315

cond.false.310:                                   ; preds = %cond.true.302
  %152 = load i64, i64* %fontset, align 8
  %153 = load i64, i64* %range_list, align 8
  %sub311 = sub nsw i64 %153, 3
  %154 = inttoptr i64 %sub311 to i8*
  %155 = bitcast i8* %154 to %struct.Lisp_Cons*
  %car312 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %155, i32 0, i32 0
  %156 = load i64, i64* %car312, align 8
  %157 = load i64, i64* %font_def, align 8
  %call313 = call i64 @Fmake_vector(i64 6, i64 %157)
  %call314 = call i64 @Fset_char_table_range(i64 %152, i64 %156, i64 %call313)
  br label %cond.end.315

cond.end.315:                                     ; preds = %cond.false.310, %cond.true.308
  br label %cond.end.319

cond.false.316:                                   ; preds = %for.body
  %158 = load i64, i64* %fontset, align 8
  %159 = load i64, i64* %range_list, align 8
  %sub317 = sub nsw i64 %159, 3
  %160 = inttoptr i64 %sub317 to i8*
  %161 = bitcast i8* %160 to %struct.Lisp_Cons*
  %car318 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %161, i32 0, i32 0
  %162 = load i64, i64* %car318, align 8
  %163 = load i64, i64* %font_def, align 8
  %164 = load i64, i64* %add.addr, align 8
  call void @fontset_add(i64 %158, i64 %162, i64 %163, i64 %164)
  br label %cond.end.319

cond.end.319:                                     ; preds = %cond.false.316, %cond.end.315
  br label %for.inc

for.inc:                                          ; preds = %cond.end.319
  %165 = load i64, i64* %range_list, align 8
  %sub320 = sub nsw i64 %165, 3
  %166 = inttoptr i64 %sub320 to i8*
  %167 = bitcast i8* %166 to %struct.Lisp_Cons*
  %u321 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %167, i32 0, i32 1
  %cdr322 = bitcast %union.anon* %u321 to i64*
  %168 = load i64, i64* %cdr322, align 8
  store i64 %168, i64* %range_list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %169 = load i8, i8* %ascii_changed, align 1
  %tobool323 = trunc i8 %169 to i1
  br i1 %tobool323, label %if.then.324, label %if.end.416

if.then.324:                                      ; preds = %for.end
  %170 = load i64, i64* %fontset, align 8
  %call325 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %170)
  %extras326 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call325, i32 0, i32 6
  %arrayidx327 = getelementptr inbounds [0 x i64], [0 x i64]* %extras326, i32 0, i64 0
  %171 = load i64, i64* %arrayidx327, align 8
  %shr328 = ashr i64 %171, 2
  %conv329 = trunc i64 %shr328 to i32
  store i32 %conv329, i32* %fontset_id, align 4
  %172 = load i64, i64* %fontset, align 8
  %173 = load i64, i64* %fontname, align 8
  call void @set_fontset_ascii(i64 %172, i64 %173)
  %174 = load i64, i64* %fontset, align 8
  %call330 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %174)
  %extras331 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call330, i32 0, i32 6
  %arrayidx332 = getelementptr inbounds [0 x i64], [0 x i64]* %extras331, i32 0, i64 1
  %175 = load i64, i64* %arrayidx332, align 8
  store i64 %175, i64* %name.addr, align 8
  %176 = load i64, i64* @Vframe_list, align 8
  store i64 %176, i64* %tail, align 8
  br label %for.cond.333

for.cond.333:                                     ; preds = %for.inc.411, %if.then.324
  %177 = load i64, i64* %tail, align 8
  %and334 = and i64 %177, 7
  %conv335 = trunc i64 %and334 to i32
  %cmp336 = icmp eq i32 %conv335, 3
  br i1 %cmp336, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.333
  %178 = load i64, i64* %tail, align 8
  %sub338 = sub nsw i64 %178, 3
  %179 = inttoptr i64 %sub338 to i8*
  %180 = bitcast i8* %179 to %struct.Lisp_Cons*
  %car339 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %180, i32 0, i32 0
  %181 = load i64, i64* %car339, align 8
  store i64 %181, i64* %fr, align 8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.333
  %182 = phi i1 [ false, %for.cond.333 ], [ true, %land.rhs ]
  br i1 %182, label %for.body.340, label %for.end.415

for.body.340:                                     ; preds = %land.end
  %183 = load i64, i64* %fr, align 8
  %sub341 = sub nsw i64 %183, 5
  %184 = inttoptr i64 %sub341 to i8*
  %185 = bitcast i8* %184 to %struct.frame*
  store %struct.frame* %185, %struct.frame** %f, align 8
  %186 = load %struct.frame*, %struct.frame** %f, align 8
  %output_method = getelementptr inbounds %struct.frame, %struct.frame* %186, i32 0, i32 26
  %187 = bitcast i48* %output_method to i64*
  %bf.load342 = load i64, i64* %187, align 8
  %bf.lshr343 = lshr i64 %bf.load342, 23
  %bf.clear344 = and i64 %bf.lshr343, 7
  %bf.cast345 = trunc i64 %bf.clear344 to i32
  %cmp346 = icmp eq i32 %bf.cast345, 0
  br i1 %cmp346, label %if.then.356, label %lor.lhs.false.348

lor.lhs.false.348:                                ; preds = %for.body.340
  %188 = load %struct.frame*, %struct.frame** %f, align 8
  %output_method349 = getelementptr inbounds %struct.frame, %struct.frame* %188, i32 0, i32 26
  %189 = bitcast i48* %output_method349 to i64*
  %bf.load350 = load i64, i64* %189, align 8
  %bf.lshr351 = lshr i64 %bf.load350, 23
  %bf.clear352 = and i64 %bf.lshr351, 7
  %bf.cast353 = trunc i64 %bf.clear352 to i32
  %cmp354 = icmp eq i32 %bf.cast353, 1
  br i1 %cmp354, label %if.then.356, label %if.end.357

if.then.356:                                      ; preds = %lor.lhs.false.348, %for.body.340
  br label %for.inc.411

if.end.357:                                       ; preds = %lor.lhs.false.348
  %190 = load i32, i32* %fontset_id, align 4
  %191 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %191, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %192 = load %struct.x_output*, %struct.x_output** %x, align 8
  %fontset358 = getelementptr inbounds %struct.x_output, %struct.x_output* %192, i32 0, i32 27
  %193 = load i32, i32* %fontset358, align 4
  %cmp359 = icmp ne i32 %190, %193
  br i1 %cmp359, label %if.then.361, label %if.end.362

if.then.361:                                      ; preds = %if.end.357
  br label %for.inc.411

if.end.362:                                       ; preds = %if.end.357
  br i1 true, label %cond.true.363, label %cond.false.367

cond.true.363:                                    ; preds = %if.end.362
  %194 = load %struct.frame*, %struct.frame** %f, align 8
  %face_cache = getelementptr inbounds %struct.frame, %struct.frame* %194, i32 0, i32 20
  %195 = load %struct.face_cache*, %struct.face_cache** %face_cache, align 8
  %used = getelementptr inbounds %struct.face_cache, %struct.face_cache* %195, i32 0, i32 4
  %196 = load i32, i32* %used, align 4
  %add364 = add i32 %196, 0
  %cmp365 = icmp ult i32 0, %add364
  br i1 %cmp365, label %cond.true.374, label %cond.false.377

cond.false.367:                                   ; preds = %if.end.362
  %197 = load %struct.frame*, %struct.frame** %f, align 8
  %face_cache368 = getelementptr inbounds %struct.frame, %struct.frame* %197, i32 0, i32 20
  %198 = load %struct.face_cache*, %struct.face_cache** %face_cache368, align 8
  %used369 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %198, i32 0, i32 4
  %199 = load i32, i32* %used369, align 4
  %conv370 = sext i32 %199 to i64
  %add371 = add i64 %conv370, 0
  %cmp372 = icmp ult i64 0, %add371
  br i1 %cmp372, label %cond.true.374, label %cond.false.377

cond.true.374:                                    ; preds = %cond.false.367, %cond.true.363
  %200 = load %struct.frame*, %struct.frame** %f, align 8
  %face_cache375 = getelementptr inbounds %struct.frame, %struct.frame* %200, i32 0, i32 20
  %201 = load %struct.face_cache*, %struct.face_cache** %face_cache375, align 8
  %faces_by_id = getelementptr inbounds %struct.face_cache, %struct.face_cache* %201, i32 0, i32 2
  %202 = load %struct.face**, %struct.face*** %faces_by_id, align 8
  %arrayidx376 = getelementptr inbounds %struct.face*, %struct.face** %202, i64 0
  %203 = load %struct.face*, %struct.face** %arrayidx376, align 8
  br label %cond.end.378

cond.false.377:                                   ; preds = %cond.false.367, %cond.true.363
  br label %cond.end.378

cond.end.378:                                     ; preds = %cond.false.377, %cond.true.374
  %cond379 = phi %struct.face* [ %203, %cond.true.374 ], [ null, %cond.false.377 ]
  store %struct.face* %cond379, %struct.face** %face, align 8
  %204 = load %struct.face*, %struct.face** %face, align 8
  %tobool380 = icmp ne %struct.face* %204, null
  br i1 %tobool380, label %if.then.381, label %if.else.384

if.then.381:                                      ; preds = %cond.end.378
  %205 = load %struct.frame*, %struct.frame** %f, align 8
  %206 = load %struct.face*, %struct.face** %face, align 8
  %lface = getelementptr inbounds %struct.face, %struct.face* %206, i32 0, i32 0
  %arraydecay382 = getelementptr inbounds [19 x i64], [19 x i64]* %lface, i32 0, i32 0
  %207 = load i64, i64* %font_spec.addr, align 8
  %call383 = call i64 @font_load_for_lface(%struct.frame* %205, i64* %arraydecay382, i64 %207)
  store i64 %call383, i64* %font_object, align 8
  br label %if.end.386

if.else.384:                                      ; preds = %cond.end.378
  %208 = load %struct.frame*, %struct.frame** %f, align 8
  %209 = load i64, i64* %font_spec.addr, align 8
  %call385 = call i64 @font_open_by_spec(%struct.frame* %208, i64 %209)
  store i64 %call385, i64* %font_object, align 8
  br label %if.end.386

if.end.386:                                       ; preds = %if.else.384, %if.then.381
  %210 = load i64, i64* %font_object, align 8
  %call387 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp388 = icmp eq i64 %210, %call387
  br i1 %cmp388, label %if.end.410, label %if.then.390

if.then.390:                                      ; preds = %if.end.386
  %211 = load i64, i64* %font_object, align 8
  %212 = load i64, i64* %fontset, align 8
  call void @update_auto_fontset_alist(i64 %211, i64 %212)
  %s393 = bitcast %union.Aligned_Cons* %.compoundliteral392 to %struct.Lisp_Cons*
  %car394 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s393, i32 0, i32 0
  %s396 = bitcast %union.Aligned_Cons* %.compoundliteral395 to %struct.Lisp_Cons*
  %car397 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s396, i32 0, i32 0
  %call398 = call i64 @builtin_lisp_symbol(i32 439)
  store i64 %call398, i64* %car397, align 8
  %u399 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s396, i32 0, i32 1
  %cdr400 = bitcast %union.anon* %u399 to i64*
  %213 = load i64, i64* %name.addr, align 8
  %214 = load i64, i64* %font_object, align 8
  %call401 = call i64 @Fcons(i64 %213, i64 %214)
  store i64 %call401, i64* %cdr400, align 8
  %s402 = bitcast %union.Aligned_Cons* %.compoundliteral395 to %struct.Lisp_Cons*
  %215 = bitcast %struct.Lisp_Cons* %s402 to i8*
  %call403 = call i64 @make_lisp_ptr(i8* %215, i32 3)
  store i64 %call403, i64* %car394, align 8
  %u404 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s393, i32 0, i32 1
  %cdr405 = bitcast %union.anon* %u404 to i64*
  %call406 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call406, i64* %cdr405, align 8
  %s407 = bitcast %union.Aligned_Cons* %.compoundliteral392 to %struct.Lisp_Cons*
  %216 = bitcast %struct.Lisp_Cons* %s407 to i8*
  %call408 = call i64 @make_lisp_ptr(i8* %216, i32 3)
  store i64 %call408, i64* %arg391, align 8
  %217 = load i64, i64* %fr, align 8
  %218 = load i64, i64* %arg391, align 8
  %call409 = call i64 @Fmodify_frame_parameters(i64 %217, i64 %218)
  br label %if.end.410

if.end.410:                                       ; preds = %if.then.390, %if.end.386
  br label %for.inc.411

for.inc.411:                                      ; preds = %if.end.410, %if.then.361, %if.then.356
  %219 = load i64, i64* %tail, align 8
  %sub412 = sub nsw i64 %219, 3
  %220 = inttoptr i64 %sub412 to i8*
  %221 = bitcast i8* %220 to %struct.Lisp_Cons*
  %u413 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %221, i32 0, i32 1
  %cdr414 = bitcast %union.anon* %u413 to i64*
  %222 = load i64, i64* %cdr414, align 8
  store i64 %222, i64* %tail, align 8
  br label %for.cond.333

for.end.415:                                      ; preds = %land.end
  br label %if.end.416

if.end.416:                                       ; preds = %for.end.415, %for.end
  %223 = load i64, i64* %fontset, align 8
  call void @free_realized_fontsets(i64 %223)
  %call417 = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call417
}

; Function Attrs: nounwind uwtable
define internal i64 @check_fontset_name(i64 %name, i64* %frame) #0 {
entry:
  %retval = alloca i64, align 8
  %name.addr = alloca i64, align 8
  %frame.addr = alloca i64*, align 8
  %id = alloca i32, align 4
  %f = alloca %struct.frame*, align 8
  store i64 %name, i64* %name.addr, align 8
  store i64* %frame, i64** %frame.addr, align 8
  %0 = load i64*, i64** %frame.addr, align 8
  %1 = load i64, i64* %0, align 8
  %call = call %struct.frame* @decode_live_frame(i64 %1)
  store %struct.frame* %call, %struct.frame** %f, align 8
  %2 = load %struct.frame*, %struct.frame** %f, align 8
  %3 = bitcast %struct.frame* %2 to i8*
  %call1 = call i64 @make_lisp_ptr(i8* %3, i32 5)
  %4 = load i64*, i64** %frame.addr, align 8
  store i64 %call1, i64* %4, align 8
  %5 = load i64, i64* %name.addr, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp = icmp eq i64 %5, %call2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i64, i64* @Vdefault_fontset, align 8
  store i64 %6, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i64, i64* %name.addr, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp4 = icmp eq i64 %7, %call3
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %8 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %8, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %9 = load %struct.x_output*, %struct.x_output** %x, align 8
  %fontset = getelementptr inbounds %struct.x_output, %struct.x_output* %9, i32 0, i32 27
  %10 = load i32, i32* %fontset, align 4
  store i32 %10, i32* %id, align 4
  br label %if.end.15

if.else:                                          ; preds = %if.end
  %11 = load i64, i64* %name.addr, align 8
  call void @CHECK_STRING(i64 %11)
  %12 = load i64, i64* %name.addr, align 8
  %call6 = call i32 @fs_query_fontset(i64 %12, i32 2)
  store i32 %call6, i32* %id, align 4
  %13 = load i32, i32* %id, align 4
  %cmp7 = icmp slt i32 %13, 0
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.else
  %14 = load i64, i64* %name.addr, align 8
  %call9 = call i32 @fs_query_fontset(i64 %14, i32 0)
  store i32 %call9, i32* %id, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.else
  %15 = load i32, i32* %id, align 4
  %cmp11 = icmp slt i32 %15, 0
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end.10
  %16 = load i64, i64* %name.addr, align 8
  %call13 = call i8* @SDATA(i64 %16)
  call void (i8*, ...) @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.31, i32 0, i32 0), i8* %call13) #6
  unreachable

if.end.14:                                        ; preds = %if.end.10
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then.5
  %17 = load i64, i64* @Vfontset_table, align 8
  %18 = load i32, i32* %id, align 4
  %conv = sext i32 %18 to i64
  %call16 = call i64 @AREF(i64 %17, i64 %conv)
  store i64 %call16, i64* %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then
  %19 = load i64, i64* %retval
  ret i64 %19
}

declare i64 @Ffont_spec(i64, i64*) #1

declare void @font_parse_family_registry(i64, i64, i64) #1

declare i64 @Ffont_xlfd_name(i64, i64) #1

declare zeroext i1 @FONT_SPEC_P(i64) #1

declare i64 @Fsignal(i64, i64) #1

declare i64 @list2(i64, i64) #1

declare i64 @build_string(i8*) #1

declare i64 @SYMBOL_NAME(i64) #1

declare i64 @find_font_encoding(i64) #1

declare i64 @concat3(i64, i64, i64) #1

; Function Attrs: noreturn
declare i64 @wrong_type_argument(i64, i64) #3

declare i64 @make_uninit_vector(i64) #1

declare zeroext i1 @NATNUMP(i64) #1

; Function Attrs: noreturn
declare void @error(i8*, ...) #3

declare i64 @list1(i64) #1

declare i64 @Fcar(i64) #1

declare i64 @Fcdr(i64) #1

declare i64 @Fmemq(i64, i64) #1

declare void @map_char_table(void (i64, i64, i64)*, i64, i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @accumulate_script_ranges(i64 %arg, i64 %range, i64 %val) #0 {
entry:
  %arg.addr = alloca i64, align 8
  %range.addr = alloca i64, align 8
  %val.addr = alloca i64, align 8
  store i64 %arg, i64* %arg.addr, align 8
  store i64 %range, i64* %range.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %arg.addr, align 8
  %sub = sub nsw i64 %0, 3
  %1 = inttoptr i64 %sub to i8*
  %2 = bitcast i8* %1 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %2, i32 0, i32 0
  %3 = load i64, i64* %car, align 8
  %4 = load i64, i64* %val.addr, align 8
  %cmp = icmp eq i64 %3, %4
  br i1 %cmp, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  %5 = load i64, i64* %range.addr, align 8
  %and = and i64 %5, 7
  %conv = trunc i64 %and to i32
  %cmp1 = icmp eq i32 %conv, 3
  br i1 %cmp1, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %6 = load i64, i64* %arg.addr, align 8
  %7 = load i64, i64* %range.addr, align 8
  %sub4 = sub nsw i64 %7, 3
  %8 = inttoptr i64 %sub4 to i8*
  %9 = bitcast i8* %8 to %struct.Lisp_Cons*
  %car5 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %9, i32 0, i32 0
  %10 = load i64, i64* %car5, align 8
  %11 = load i64, i64* %range.addr, align 8
  %sub6 = sub nsw i64 %11, 3
  %12 = inttoptr i64 %sub6 to i8*
  %13 = bitcast i8* %12 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %13, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %14 = load i64, i64* %cdr, align 8
  %call = call i64 @Fcons(i64 %10, i64 %14)
  %15 = load i64, i64* %arg.addr, align 8
  %sub7 = sub nsw i64 %15, 3
  %16 = inttoptr i64 %sub7 to i8*
  %17 = bitcast i8* %16 to %struct.Lisp_Cons*
  %u8 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %17, i32 0, i32 1
  %cdr9 = bitcast %union.anon* %u8 to i64*
  %18 = load i64, i64* %cdr9, align 8
  %call10 = call i64 @Fcons(i64 %call, i64 %18)
  call void @XSETCDR(i64 %6, i64 %call10)
  br label %if.end

if.else:                                          ; preds = %if.then
  %19 = load i64, i64* %arg.addr, align 8
  %20 = load i64, i64* %range.addr, align 8
  %21 = load i64, i64* %range.addr, align 8
  %call11 = call i64 @Fcons(i64 %20, i64 %21)
  %22 = load i64, i64* %arg.addr, align 8
  %sub12 = sub nsw i64 %22, 3
  %23 = inttoptr i64 %sub12 to i8*
  %24 = bitcast i8* %23 to %struct.Lisp_Cons*
  %u13 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %24, i32 0, i32 1
  %cdr14 = bitcast %union.anon* %u13 to i64*
  %25 = load i64, i64* %cdr14, align 8
  %call15 = call i64 @Fcons(i64 %call11, i64 %25)
  call void @XSETCDR(i64 %19, i64 %call15)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %entry
  ret void
}

declare i64 @Fnreverse(i64) #1

declare i64 @HASH_VALUE(%struct.Lisp_Hash_Table*, i64) #1

declare i8* @SDATA(i64) #1

declare void @map_charset_chars(void (i64, i64)*, i64, i64, %struct.charset*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @set_fontset_font(i64 %arg, i64 %range) #0 {
entry:
  %arg.addr = alloca i64, align 8
  %range.addr = alloca i64, align 8
  %fontset = alloca i64, align 8
  %font_def = alloca i64, align 8
  %add = alloca i64, align 8
  %ascii = alloca i64, align 8
  %script_range_list = alloca i64, align 8
  %from = alloca i32, align 4
  %to = alloca i32, align 4
  store i64 %arg, i64* %arg.addr, align 8
  store i64 %range, i64* %range.addr, align 8
  %0 = load i64, i64* %range.addr, align 8
  %sub = sub nsw i64 %0, 3
  %1 = inttoptr i64 %sub to i8*
  %2 = bitcast i8* %1 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %2, i32 0, i32 0
  %3 = load i64, i64* %car, align 8
  %shr = ashr i64 %3, 2
  %conv = trunc i64 %shr to i32
  store i32 %conv, i32* %from, align 4
  %4 = load i64, i64* %range.addr, align 8
  %sub1 = sub nsw i64 %4, 3
  %5 = inttoptr i64 %sub1 to i8*
  %6 = bitcast i8* %5 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %6, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %7 = load i64, i64* %cdr, align 8
  %shr2 = ashr i64 %7, 2
  %conv3 = trunc i64 %shr2 to i32
  store i32 %conv3, i32* %to, align 4
  %8 = load i64, i64* %arg.addr, align 8
  %call = call i64 @AREF(i64 %8, i64 0)
  store i64 %call, i64* %fontset, align 8
  %9 = load i64, i64* %arg.addr, align 8
  %call4 = call i64 @AREF(i64 %9, i64 1)
  store i64 %call4, i64* %font_def, align 8
  %10 = load i64, i64* %arg.addr, align 8
  %call5 = call i64 @AREF(i64 %10, i64 2)
  store i64 %call5, i64* %add, align 8
  %11 = load i64, i64* %arg.addr, align 8
  %call6 = call i64 @AREF(i64 %11, i64 3)
  store i64 %call6, i64* %ascii, align 8
  %12 = load i64, i64* %arg.addr, align 8
  %call7 = call i64 @AREF(i64 %12, i64 4)
  store i64 %call7, i64* %script_range_list, align 8
  %13 = load i64, i64* %ascii, align 8
  %call8 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %13, %call8
  br i1 %cmp, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %entry
  %14 = load i32, i32* %from, align 4
  %cmp10 = icmp slt i32 %14, 128
  br i1 %cmp10, label %if.then, label %if.end.19

if.then:                                          ; preds = %land.lhs.true
  %15 = load i32, i32* %to, align 4
  %cmp12 = icmp slt i32 %15, 128
  br i1 %cmp12, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %if.then
  br label %return

if.end:                                           ; preds = %if.then
  store i32 128, i32* %from, align 4
  %16 = load i64, i64* %range.addr, align 8
  %sub15 = sub nsw i64 %16, 3
  %17 = inttoptr i64 %sub15 to i8*
  %18 = bitcast i8* %17 to %struct.Lisp_Cons*
  %u16 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %18, i32 0, i32 1
  %cdr17 = bitcast %union.anon* %u16 to i64*
  %19 = load i64, i64* %cdr17, align 8
  %call18 = call i64 @Fcons(i64 514, i64 %19)
  store i64 %call18, i64* %range.addr, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %land.lhs.true, %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.19
  %20 = load i64, i64* %script_range_list, align 8
  %and = and i64 %20, 7
  %conv20 = trunc i64 %and to i32
  %cmp21 = icmp eq i32 %conv20, 3
  br i1 %cmp21, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %21 = load i64, i64* %script_range_list, align 8
  %sub23 = sub nsw i64 %21, 3
  %22 = inttoptr i64 %sub23 to i8*
  %23 = bitcast i8* %22 to %struct.Lisp_Cons*
  %car24 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %23, i32 0, i32 0
  %24 = load i64, i64* %car24, align 8
  %sub25 = sub nsw i64 %24, 3
  %25 = inttoptr i64 %sub25 to i8*
  %26 = bitcast i8* %25 to %struct.Lisp_Cons*
  %u26 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %26, i32 0, i32 1
  %cdr27 = bitcast %union.anon* %u26 to i64*
  %27 = load i64, i64* %cdr27, align 8
  %shr28 = ashr i64 %27, 2
  %28 = load i32, i32* %from, align 4
  %conv29 = sext i32 %28 to i64
  %cmp30 = icmp slt i64 %shr28, %conv29
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %29 = phi i1 [ false, %for.cond ], [ %cmp30, %land.rhs ]
  br i1 %29, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %30 = load i64, i64* %add, align 8
  %call32 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp33 = icmp eq i64 %30, %call32
  br i1 %cmp33, label %cond.true, label %cond.false.46

cond.true:                                        ; preds = %for.body
  %31 = load i64, i64* %script_range_list, align 8
  %sub35 = sub nsw i64 %31, 3
  %32 = inttoptr i64 %sub35 to i8*
  %33 = bitcast i8* %32 to %struct.Lisp_Cons*
  %car36 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %33, i32 0, i32 0
  %34 = load i64, i64* %car36, align 8
  %call37 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp38 = icmp eq i64 %34, %call37
  br i1 %cmp38, label %cond.true.40, label %cond.false

cond.true.40:                                     ; preds = %cond.true
  %35 = load i64, i64* %fontset, align 8
  %36 = load i64, i64* %font_def, align 8
  %call41 = call i64 @Fmake_vector(i64 6, i64 %36)
  call void @set_fontset_fallback(i64 %35, i64 %call41)
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %37 = load i64, i64* %fontset, align 8
  %38 = load i64, i64* %script_range_list, align 8
  %sub42 = sub nsw i64 %38, 3
  %39 = inttoptr i64 %sub42 to i8*
  %40 = bitcast i8* %39 to %struct.Lisp_Cons*
  %car43 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %40, i32 0, i32 0
  %41 = load i64, i64* %car43, align 8
  %42 = load i64, i64* %font_def, align 8
  %call44 = call i64 @Fmake_vector(i64 6, i64 %42)
  %call45 = call i64 @Fset_char_table_range(i64 %37, i64 %41, i64 %call44)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.40
  br label %cond.end.49

cond.false.46:                                    ; preds = %for.body
  %43 = load i64, i64* %fontset, align 8
  %44 = load i64, i64* %script_range_list, align 8
  %sub47 = sub nsw i64 %44, 3
  %45 = inttoptr i64 %sub47 to i8*
  %46 = bitcast i8* %45 to %struct.Lisp_Cons*
  %car48 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %46, i32 0, i32 0
  %47 = load i64, i64* %car48, align 8
  %48 = load i64, i64* %font_def, align 8
  %49 = load i64, i64* %add, align 8
  call void @fontset_add(i64 %43, i64 %47, i64 %48, i64 %49)
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.false.46, %cond.end
  br label %for.inc

for.inc:                                          ; preds = %cond.end.49
  %50 = load i64, i64* %script_range_list, align 8
  %sub50 = sub nsw i64 %50, 3
  %51 = inttoptr i64 %sub50 to i8*
  %52 = bitcast i8* %51 to %struct.Lisp_Cons*
  %u51 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %52, i32 0, i32 1
  %cdr52 = bitcast %union.anon* %u51 to i64*
  %53 = load i64, i64* %cdr52, align 8
  store i64 %53, i64* %script_range_list, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %54 = load i64, i64* %script_range_list, align 8
  %and53 = and i64 %54, 7
  %conv54 = trunc i64 %and53 to i32
  %cmp55 = icmp eq i32 %conv54, 3
  br i1 %cmp55, label %if.then.57, label %if.end.117

if.then.57:                                       ; preds = %for.end
  %55 = load i64, i64* %script_range_list, align 8
  %sub58 = sub nsw i64 %55, 3
  %56 = inttoptr i64 %sub58 to i8*
  %57 = bitcast i8* %56 to %struct.Lisp_Cons*
  %car59 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %57, i32 0, i32 0
  %58 = load i64, i64* %car59, align 8
  %sub60 = sub nsw i64 %58, 3
  %59 = inttoptr i64 %sub60 to i8*
  %60 = bitcast i8* %59 to %struct.Lisp_Cons*
  %car61 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %60, i32 0, i32 0
  %61 = load i64, i64* %car61, align 8
  %shr62 = ashr i64 %61, 2
  %62 = load i32, i32* %from, align 4
  %conv63 = sext i32 %62 to i64
  %cmp64 = icmp slt i64 %shr62, %conv63
  br i1 %cmp64, label %if.then.66, label %if.end.77

if.then.66:                                       ; preds = %if.then.57
  %63 = load i64, i64* %script_range_list, align 8
  %sub67 = sub nsw i64 %63, 3
  %64 = inttoptr i64 %sub67 to i8*
  %65 = bitcast i8* %64 to %struct.Lisp_Cons*
  %car68 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %65, i32 0, i32 0
  %66 = load i64, i64* %car68, align 8
  %sub69 = sub nsw i64 %66, 3
  %67 = inttoptr i64 %sub69 to i8*
  %68 = bitcast i8* %67 to %struct.Lisp_Cons*
  %car70 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %68, i32 0, i32 0
  %69 = load i64, i64* %car70, align 8
  %shr71 = ashr i64 %69, 2
  %shl = shl i64 %shr71, 2
  %add72 = add i64 %shl, 2
  %70 = load i64, i64* %range.addr, align 8
  %sub73 = sub nsw i64 %70, 3
  %71 = inttoptr i64 %sub73 to i8*
  %72 = bitcast i8* %71 to %struct.Lisp_Cons*
  %u74 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %72, i32 0, i32 1
  %cdr75 = bitcast %union.anon* %u74 to i64*
  %73 = load i64, i64* %cdr75, align 8
  %call76 = call i64 @Fcons(i64 %add72, i64 %73)
  store i64 %call76, i64* %range.addr, align 8
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.66, %if.then.57
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.77
  %74 = load i64, i64* %script_range_list, align 8
  %and78 = and i64 %74, 7
  %conv79 = trunc i64 %and78 to i32
  %cmp80 = icmp eq i32 %conv79, 3
  br i1 %cmp80, label %land.rhs.82, label %land.end.92

land.rhs.82:                                      ; preds = %while.cond
  %75 = load i64, i64* %script_range_list, align 8
  %sub83 = sub nsw i64 %75, 3
  %76 = inttoptr i64 %sub83 to i8*
  %77 = bitcast i8* %76 to %struct.Lisp_Cons*
  %car84 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %77, i32 0, i32 0
  %78 = load i64, i64* %car84, align 8
  %sub85 = sub nsw i64 %78, 3
  %79 = inttoptr i64 %sub85 to i8*
  %80 = bitcast i8* %79 to %struct.Lisp_Cons*
  %u86 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %80, i32 0, i32 1
  %cdr87 = bitcast %union.anon* %u86 to i64*
  %81 = load i64, i64* %cdr87, align 8
  %shr88 = ashr i64 %81, 2
  %82 = load i32, i32* %to, align 4
  %conv89 = sext i32 %82 to i64
  %cmp90 = icmp sle i64 %shr88, %conv89
  br label %land.end.92

land.end.92:                                      ; preds = %land.rhs.82, %while.cond
  %83 = phi i1 [ false, %while.cond ], [ %cmp90, %land.rhs.82 ]
  br i1 %83, label %while.body, label %while.end

while.body:                                       ; preds = %land.end.92
  %84 = load i64, i64* %script_range_list, align 8
  %sub93 = sub nsw i64 %84, 3
  %85 = inttoptr i64 %sub93 to i8*
  %86 = bitcast i8* %85 to %struct.Lisp_Cons*
  %u94 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %86, i32 0, i32 1
  %cdr95 = bitcast %union.anon* %u94 to i64*
  %87 = load i64, i64* %cdr95, align 8
  store i64 %87, i64* %script_range_list, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end.92
  %88 = load i64, i64* %script_range_list, align 8
  %and96 = and i64 %88, 7
  %conv97 = trunc i64 %and96 to i32
  %cmp98 = icmp eq i32 %conv97, 3
  br i1 %cmp98, label %land.lhs.true.100, label %if.end.116

land.lhs.true.100:                                ; preds = %while.end
  %89 = load i64, i64* %script_range_list, align 8
  %sub101 = sub nsw i64 %89, 3
  %90 = inttoptr i64 %sub101 to i8*
  %91 = bitcast i8* %90 to %struct.Lisp_Cons*
  %car102 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %91, i32 0, i32 0
  %92 = load i64, i64* %car102, align 8
  %sub103 = sub nsw i64 %92, 3
  %93 = inttoptr i64 %sub103 to i8*
  %94 = bitcast i8* %93 to %struct.Lisp_Cons*
  %car104 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %94, i32 0, i32 0
  %95 = load i64, i64* %car104, align 8
  %shr105 = ashr i64 %95, 2
  %96 = load i32, i32* %to, align 4
  %conv106 = sext i32 %96 to i64
  %cmp107 = icmp sle i64 %shr105, %conv106
  br i1 %cmp107, label %if.then.109, label %if.end.116

if.then.109:                                      ; preds = %land.lhs.true.100
  %97 = load i64, i64* %script_range_list, align 8
  %sub110 = sub nsw i64 %97, 3
  %98 = inttoptr i64 %sub110 to i8*
  %99 = bitcast i8* %98 to %struct.Lisp_Cons*
  %car111 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %99, i32 0, i32 0
  %100 = load i64, i64* %car111, align 8
  %101 = load i32, i32* %to, align 4
  %add112 = add nsw i32 %101, 1
  %conv113 = sext i32 %add112 to i64
  %shl114 = shl i64 %conv113, 2
  %add115 = add i64 %shl114, 2
  call void @XSETCAR(i64 %100, i64 %add115)
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.109, %land.lhs.true.100, %while.end
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116, %for.end
  %102 = load i64, i64* %add, align 8
  %call118 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp119 = icmp eq i64 %102, %call118
  br i1 %cmp119, label %cond.true.121, label %cond.false.131

cond.true.121:                                    ; preds = %if.end.117
  %103 = load i64, i64* %range.addr, align 8
  %call122 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp123 = icmp eq i64 %103, %call122
  br i1 %cmp123, label %cond.true.125, label %cond.false.127

cond.true.125:                                    ; preds = %cond.true.121
  %104 = load i64, i64* %fontset, align 8
  %105 = load i64, i64* %font_def, align 8
  %call126 = call i64 @Fmake_vector(i64 6, i64 %105)
  call void @set_fontset_fallback(i64 %104, i64 %call126)
  br label %cond.end.130

cond.false.127:                                   ; preds = %cond.true.121
  %106 = load i64, i64* %fontset, align 8
  %107 = load i64, i64* %range.addr, align 8
  %108 = load i64, i64* %font_def, align 8
  %call128 = call i64 @Fmake_vector(i64 6, i64 %108)
  %call129 = call i64 @Fset_char_table_range(i64 %106, i64 %107, i64 %call128)
  br label %cond.end.130

cond.end.130:                                     ; preds = %cond.false.127, %cond.true.125
  br label %cond.end.132

cond.false.131:                                   ; preds = %if.end.117
  %109 = load i64, i64* %fontset, align 8
  %110 = load i64, i64* %range.addr, align 8
  %111 = load i64, i64* %font_def, align 8
  %112 = load i64, i64* %add, align 8
  call void @fontset_add(i64 %109, i64 %110, i64 %111, i64 %112)
  br label %cond.end.132

cond.end.132:                                     ; preds = %cond.false.131, %cond.end.130
  %113 = load i64, i64* %arg.addr, align 8
  %114 = load i64, i64* %script_range_list, align 8
  call void @ASET(i64 %113, i64 4, i64 %114)
  br label %return

return:                                           ; preds = %cond.end.132, %if.then.14
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_fontset_fallback(i64 %fontset, i64 %fallback) #0 {
entry:
  %fontset.addr = alloca i64, align 8
  %fallback.addr = alloca i64, align 8
  store i64 %fontset, i64* %fontset.addr, align 8
  store i64 %fallback, i64* %fallback.addr, align 8
  %0 = load i64, i64* %fontset.addr, align 8
  %1 = load i64, i64* %fallback.addr, align 8
  call void @set_char_table_extras(i64 %0, i64 7, i64 %1)
  ret void
}

declare i64 @Fmake_vector(i64, i64) #1

declare i64 @Fset_char_table_range(i64, i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @fontset_add(i64 %fontset, i64 %range, i64 %elt, i64 %add) #0 {
entry:
  %fontset.addr = alloca i64, align 8
  %range.addr = alloca i64, align 8
  %elt.addr = alloca i64, align 8
  %add.addr = alloca i64, align 8
  %args = alloca [2 x i64], align 16
  %idx = alloca i32, align 4
  %from = alloca i32, align 4
  %to = alloca i32, align 4
  %from1 = alloca i32, align 4
  %to1 = alloca i32, align 4
  store i64 %fontset, i64* %fontset.addr, align 8
  store i64 %range, i64* %range.addr, align 8
  store i64 %elt, i64* %elt.addr, align 8
  store i64 %add, i64* %add.addr, align 8
  %0 = load i64, i64* %add.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 174)
  %cmp = icmp eq i64 %0, %call
  %cond = select i1 %cmp, i32 0, i32 1
  store i32 %cond, i32* %idx, align 4
  %1 = load i64, i64* %elt.addr, align 8
  %call1 = call i64 @Fmake_vector(i64 6, i64 %1)
  %2 = load i32, i32* %idx, align 4
  %sub = sub nsw i32 1, %2
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %args, i32 0, i64 %idxprom
  store i64 %call1, i64* %arrayidx, align 8
  %3 = load i64, i64* %range.addr, align 8
  %and = and i64 %3, 7
  %conv = trunc i64 %and to i32
  %cmp2 = icmp eq i32 %conv, 3
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i64, i64* %range.addr, align 8
  %sub4 = sub nsw i64 %4, 3
  %5 = inttoptr i64 %sub4 to i8*
  %6 = bitcast i8* %5 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %6, i32 0, i32 0
  %7 = load i64, i64* %car, align 8
  %shr = ashr i64 %7, 2
  %conv5 = trunc i64 %shr to i32
  store i32 %conv5, i32* %from, align 4
  %8 = load i64, i64* %range.addr, align 8
  %sub6 = sub nsw i64 %8, 3
  %9 = inttoptr i64 %sub6 to i8*
  %10 = bitcast i8* %9 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %10, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %11 = load i64, i64* %cdr, align 8
  %shr7 = ashr i64 %11, 2
  %conv8 = trunc i64 %shr7 to i32
  store i32 %conv8, i32* %to, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %12 = load i32, i32* %from, align 4
  store i32 %12, i32* %from1, align 4
  %13 = load i32, i32* %to, align 4
  store i32 %13, i32* %to1, align 4
  %14 = load i64, i64* %fontset.addr, align 8
  %15 = load i32, i32* %from, align 4
  %call9 = call i64 @char_table_ref_and_range(i64 %14, i32 %15, i32* %from1, i32* %to1)
  %16 = load i32, i32* %idx, align 4
  %idxprom10 = sext i32 %16 to i64
  %arrayidx11 = getelementptr inbounds [2 x i64], [2 x i64]* %args, i32 0, i64 %idxprom10
  store i64 %call9, i64* %arrayidx11, align 8
  %17 = load i64, i64* %fontset.addr, align 8
  %18 = load i32, i32* %from, align 4
  %19 = load i32, i32* %to1, align 4
  %20 = load i32, i32* %idx, align 4
  %idxprom12 = sext i32 %20 to i64
  %arrayidx13 = getelementptr inbounds [2 x i64], [2 x i64]* %args, i32 0, i64 %idxprom12
  %21 = load i64, i64* %arrayidx13, align 8
  %call14 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp15 = icmp eq i64 %21, %call14
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body
  %22 = load i32, i32* %idx, align 4
  %sub17 = sub nsw i32 1, %22
  %idxprom18 = sext i32 %sub17 to i64
  %arrayidx19 = getelementptr inbounds [2 x i64], [2 x i64]* %args, i32 0, i64 %idxprom18
  %23 = load i64, i64* %arrayidx19, align 8
  br label %cond.end

cond.false:                                       ; preds = %do.body
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %args, i32 0, i32 0
  %call20 = call i64 @Fvconcat(i64 2, i64* %arraydecay)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond21 = phi i64 [ %23, %cond.true ], [ %call20, %cond.false ]
  call void @char_table_set_range(i64 %17, i32 %18, i32 %19, i64 %cond21)
  %24 = load i32, i32* %to1, align 4
  %add22 = add nsw i32 %24, 1
  store i32 %add22, i32* %from, align 4
  br label %do.cond

do.cond:                                          ; preds = %cond.end
  %25 = load i32, i32* %from, align 4
  %26 = load i32, i32* %to, align 4
  %cmp23 = icmp slt i32 %25, %26
  br i1 %cmp23, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end

if.else:                                          ; preds = %entry
  %27 = load i64, i64* %fontset.addr, align 8
  %call25 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %27)
  %extras = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call25, i32 0, i32 6
  %arrayidx26 = getelementptr inbounds [0 x i64], [0 x i64]* %extras, i32 0, i64 7
  %28 = load i64, i64* %arrayidx26, align 8
  %29 = load i32, i32* %idx, align 4
  %idxprom27 = sext i32 %29 to i64
  %arrayidx28 = getelementptr inbounds [2 x i64], [2 x i64]* %args, i32 0, i64 %idxprom27
  store i64 %28, i64* %arrayidx28, align 8
  %30 = load i64, i64* %fontset.addr, align 8
  %31 = load i32, i32* %idx, align 4
  %idxprom29 = sext i32 %31 to i64
  %arrayidx30 = getelementptr inbounds [2 x i64], [2 x i64]* %args, i32 0, i64 %idxprom29
  %32 = load i64, i64* %arrayidx30, align 8
  %call31 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp32 = icmp eq i64 %32, %call31
  br i1 %cmp32, label %cond.true.34, label %cond.false.38

cond.true.34:                                     ; preds = %if.else
  %33 = load i32, i32* %idx, align 4
  %sub35 = sub nsw i32 1, %33
  %idxprom36 = sext i32 %sub35 to i64
  %arrayidx37 = getelementptr inbounds [2 x i64], [2 x i64]* %args, i32 0, i64 %idxprom36
  %34 = load i64, i64* %arrayidx37, align 8
  br label %cond.end.41

cond.false.38:                                    ; preds = %if.else
  %arraydecay39 = getelementptr inbounds [2 x i64], [2 x i64]* %args, i32 0, i32 0
  %call40 = call i64 @Fvconcat(i64 2, i64* %arraydecay39)
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.38, %cond.true.34
  %cond42 = phi i64 [ %34, %cond.true.34 ], [ %call40, %cond.false.38 ]
  call void @set_fontset_fallback(i64 %30, i64 %cond42)
  br label %if.end

if.end:                                           ; preds = %cond.end.41, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_fontset_ascii(i64 %fontset, i64 %ascii) #0 {
entry:
  %fontset.addr = alloca i64, align 8
  %ascii.addr = alloca i64, align 8
  store i64 %fontset, i64* %fontset.addr, align 8
  store i64 %ascii, i64* %ascii.addr, align 8
  %0 = load i64, i64* %fontset.addr, align 8
  %1 = load i64, i64* %ascii.addr, align 8
  call void @set_char_table_extras(i64 %0, i64 2, i64 %1)
  ret void
}

declare i64 @font_load_for_lface(%struct.frame*, i64*, i64) #1

declare i64 @font_open_by_spec(%struct.frame*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @update_auto_fontset_alist(i64 %font_object, i64 %fontset) #0 {
entry:
  %font_object.addr = alloca i64, align 8
  %fontset.addr = alloca i64, align 8
  %prev = alloca i64, align 8
  %tail = alloca i64, align 8
  store i64 %font_object, i64* %font_object.addr, align 8
  store i64 %fontset, i64* %fontset.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %prev, align 8
  %0 = load i64, i64* @auto_fontset_alist, align 8
  store i64 %0, i64* %tail, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %tail, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %fontset.addr, align 8
  %3 = load i64, i64* %tail, align 8
  %sub = sub nsw i64 %3, 3
  %4 = inttoptr i64 %sub to i8*
  %5 = bitcast i8* %4 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %5, i32 0, i32 0
  %6 = load i64, i64* %car, align 8
  %sub2 = sub nsw i64 %6, 3
  %7 = inttoptr i64 %sub2 to i8*
  %8 = bitcast i8* %7 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %8, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %9 = load i64, i64* %cdr, align 8
  %cmp3 = icmp eq i64 %2, %9
  br i1 %cmp3, label %if.then, label %if.end.15

if.then:                                          ; preds = %for.body
  %10 = load i64, i64* %prev, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp6 = icmp eq i64 %10, %call5
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then
  %11 = load i64, i64* %tail, align 8
  %sub9 = sub nsw i64 %11, 3
  %12 = inttoptr i64 %sub9 to i8*
  %13 = bitcast i8* %12 to %struct.Lisp_Cons*
  %u10 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %13, i32 0, i32 1
  %cdr11 = bitcast %union.anon* %u10 to i64*
  %14 = load i64, i64* %cdr11, align 8
  store i64 %14, i64* @auto_fontset_alist, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %15 = load i64, i64* %prev, align 8
  %16 = load i64, i64* %tail, align 8
  %sub12 = sub nsw i64 %16, 3
  %17 = inttoptr i64 %sub12 to i8*
  %18 = bitcast i8* %17 to %struct.Lisp_Cons*
  %u13 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %18, i32 0, i32 1
  %cdr14 = bitcast %union.anon* %u13 to i64*
  %19 = load i64, i64* %cdr14, align 8
  call void @XSETCDR(i64 %15, i64 %19)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.8
  br label %for.end

if.end.15:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %20 = load i64, i64* %tail, align 8
  store i64 %20, i64* %prev, align 8
  %21 = load i64, i64* %tail, align 8
  %sub16 = sub nsw i64 %21, 3
  %22 = inttoptr i64 %sub16 to i8*
  %23 = bitcast i8* %22 to %struct.Lisp_Cons*
  %u17 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %23, i32 0, i32 1
  %cdr18 = bitcast %union.anon* %u17 to i64*
  %24 = load i64, i64* %cdr18, align 8
  store i64 %24, i64* %tail, align 8
  br label %for.cond

for.end:                                          ; preds = %if.end, %for.cond
  ret void
}

declare i64 @Fmodify_frame_parameters(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @free_realized_fontsets(i64 %base) #0 {
entry:
  %base.addr = alloca i64, align 8
  %id = alloca i32, align 4
  %this = alloca i64, align 8
  store i64 %base, i64* %base.addr, align 8
  store i32 0, i32* %id, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %id, align 4
  %conv = sext i32 %0 to i64
  %1 = load i64, i64* @Vfontset_table, align 8
  %call = call i64 @ASIZE(i64 %1)
  %cmp = icmp slt i64 %conv, %call
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* @Vfontset_table, align 8
  %3 = load i32, i32* %id, align 4
  %conv2 = sext i32 %3 to i64
  %call3 = call i64 @AREF(i64 %2, i64 %conv2)
  store i64 %call3, i64* %this, align 8
  %4 = load i64, i64* %this, align 8
  %call4 = call zeroext i1 @CHAR_TABLE_P(i64 %4)
  br i1 %call4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %5 = load i64, i64* %this, align 8
  %call6 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %5)
  %extras = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call6, i32 0, i32 6
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* %extras, i32 0, i64 3
  %6 = load i64, i64* %arrayidx, align 8
  %7 = load i64, i64* %base.addr, align 8
  %cmp7 = icmp eq i64 %6, %7
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call9 = call i64 @builtin_lisp_symbol(i32 901)
  %call10 = call i64 @Fclear_face_cache(i64 %call9)
  br label %for.end

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %id, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %id, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @Fnew_fontset(i64 %name, i64 %fontlist) #0 {
entry:
  %name.addr = alloca i64, align 8
  %fontlist.addr = alloca i64, align 8
  %fontset = alloca i64, align 8
  %id = alloca i32, align 4
  %font_spec = alloca i64, align 8
  %short_name = alloca i64, align 8
  %xlfd = alloca [256 x i8], align 16
  %len = alloca i32, align 4
  %elt = alloca i64, align 8
  %script = alloca i64, align 8
  store i64 %name, i64* %name.addr, align 8
  store i64 %fontlist, i64* %fontlist.addr, align 8
  %0 = load i64, i64* %name.addr, align 8
  call void @CHECK_STRING(i64 %0)
  %1 = load i64, i64* %fontlist.addr, align 8
  call void @CHECK_LIST(i64 %1)
  %2 = load i64, i64* %name.addr, align 8
  %call = call i64 @Fdowncase(i64 %2)
  store i64 %call, i64* %name.addr, align 8
  %3 = load i64, i64* %name.addr, align 8
  %call1 = call i32 @fs_query_fontset(i64 %3, i32 0)
  store i32 %call1, i32* %id, align 4
  %4 = load i32, i32* %id, align 4
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2 = call i64 @Ffont_spec(i64 0, i64* null)
  store i64 %call2, i64* %font_spec, align 8
  %5 = load i64, i64* %name.addr, align 8
  %call3 = call i8* @SSDATA(i64 %5)
  %6 = load i64, i64* %name.addr, align 8
  %call4 = call i64 @SBYTES(i64 %6)
  %7 = load i64, i64* %font_spec, align 8
  %call5 = call i32 @font_parse_xlfd(i8* %call3, i64 %call4, i64 %7)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  call void (i8*, ...) @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %if.then
  %8 = load i64, i64* %font_spec, align 8
  %call8 = call i64 @AREF(i64 %8, i64 4)
  store i64 %call8, i64* %short_name, align 8
  %9 = load i64, i64* %short_name, align 8
  %call9 = call i64 @SYMBOL_NAME(i64 %9)
  %call10 = call i8* @SSDATA(i64 %call9)
  %call11 = call i32 @strncmp(i8* %call10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i64 8) #5
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %10 = load i64, i64* %short_name, align 8
  %call12 = call i64 @SYMBOL_NAME(i64 %10)
  %call13 = call i64 @SBYTES(i64 %call12)
  %cmp14 = icmp slt i64 %call13, 9
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %lor.lhs.false, %if.end
  call void (i8*, ...) @error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i32 0, i32 0)) #6
  unreachable

if.end.16:                                        ; preds = %lor.lhs.false
  %11 = load i64, i64* %name.addr, align 8
  %12 = load i64, i64* %short_name, align 8
  %call17 = call i64 @SYMBOL_NAME(i64 %12)
  %call18 = call i64 @Fcons(i64 %11, i64 %call17)
  %13 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 109), align 8
  %call19 = call i64 @Fcons(i64 %call18, i64 %13)
  store i64 %call19, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 109), align 8
  %14 = load i64, i64* %font_spec, align 8
  %call20 = call i64 @builtin_lisp_symbol(i32 579)
  call void @ASET(i64 %14, i64 4, i64 %call20)
  %call21 = call i64 @builtin_lisp_symbol(i32 0)
  %15 = load i64, i64* %name.addr, align 8
  %call22 = call i64 @builtin_lisp_symbol(i32 0)
  %call23 = call i64 @make_fontset(i64 %call21, i64 %15, i64 %call22)
  store i64 %call23, i64* %fontset, align 8
  %16 = load i64, i64* %font_spec, align 8
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %xlfd, i32 0, i32 0
  %call24 = call i64 @font_unparse_xlfd(i64 %16, i32 0, i8* %arraydecay, i32 256)
  %conv = trunc i64 %call24 to i32
  store i32 %conv, i32* %len, align 4
  %17 = load i32, i32* %len, align 4
  %cmp25 = icmp slt i32 %17, 0
  br i1 %cmp25, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.end.16
  %18 = load i64, i64* %name.addr, align 8
  %call28 = call i8* @SDATA(i64 %18)
  call void (i8*, ...) @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i32 0, i32 0), i8* %call28) #6
  unreachable

if.end.29:                                        ; preds = %if.end.16
  %19 = load i64, i64* %fontset, align 8
  %arraydecay30 = getelementptr inbounds [256 x i8], [256 x i8]* %xlfd, i32 0, i32 0
  %20 = load i32, i32* %len, align 4
  %conv31 = sext i32 %20 to i64
  %call32 = call i64 @make_unibyte_string(i8* %arraydecay30, i64 %conv31)
  call void @set_fontset_ascii(i64 %19, i64 %call32)
  br label %if.end.38

if.else:                                          ; preds = %entry
  %21 = load i64, i64* @Vfontset_table, align 8
  %22 = load i32, i32* %id, align 4
  %conv33 = sext i32 %22 to i64
  %call34 = call i64 @AREF(i64 %21, i64 %conv33)
  store i64 %call34, i64* %fontset, align 8
  %23 = load i64, i64* %fontset, align 8
  call void @free_realized_fontsets(i64 %23)
  %24 = load i64, i64* %fontset, align 8
  %call35 = call i64 @builtin_lisp_symbol(i32 901)
  %call36 = call i64 @builtin_lisp_symbol(i32 0)
  %call37 = call i64 @Fset_char_table_range(i64 %24, i64 %call35, i64 %call36)
  br label %if.end.38

if.end.38:                                        ; preds = %if.else, %if.end.29
  br label %for.cond

for.cond:                                         ; preds = %for.inc.80, %if.end.38
  %25 = load i64, i64* %fontlist.addr, align 8
  %and = and i64 %25, 7
  %conv39 = trunc i64 %and to i32
  %cmp40 = icmp eq i32 %conv39, 3
  br i1 %cmp40, label %for.body, label %for.end.84

for.body:                                         ; preds = %for.cond
  %26 = load i64, i64* %fontlist.addr, align 8
  %sub = sub nsw i64 %26, 3
  %27 = inttoptr i64 %sub to i8*
  %28 = bitcast i8* %27 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %28, i32 0, i32 0
  %29 = load i64, i64* %car, align 8
  store i64 %29, i64* %elt, align 8
  %30 = load i64, i64* %elt, align 8
  %call42 = call i64 @Fcar(i64 %30)
  store i64 %call42, i64* %script, align 8
  %31 = load i64, i64* %elt, align 8
  %call43 = call i64 @Fcdr(i64 %31)
  store i64 %call43, i64* %elt, align 8
  %32 = load i64, i64* %elt, align 8
  %and44 = and i64 %32, 7
  %conv45 = trunc i64 %and44 to i32
  %cmp46 = icmp eq i32 %conv45, 3
  br i1 %cmp46, label %land.lhs.true, label %if.else.75

land.lhs.true:                                    ; preds = %for.body
  %33 = load i64, i64* %elt, align 8
  %sub48 = sub nsw i64 %33, 3
  %34 = inttoptr i64 %sub48 to i8*
  %35 = bitcast i8* %34 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %35, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %36 = load i64, i64* %cdr, align 8
  %call49 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp50 = icmp eq i64 %36, %call49
  br i1 %cmp50, label %if.then.60, label %lor.lhs.false.52

lor.lhs.false.52:                                 ; preds = %land.lhs.true
  %37 = load i64, i64* %elt, align 8
  %sub53 = sub nsw i64 %37, 3
  %38 = inttoptr i64 %sub53 to i8*
  %39 = bitcast i8* %38 to %struct.Lisp_Cons*
  %u54 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %39, i32 0, i32 1
  %cdr55 = bitcast %union.anon* %u54 to i64*
  %40 = load i64, i64* %cdr55, align 8
  %and56 = and i64 %40, 7
  %conv57 = trunc i64 %and56 to i32
  %cmp58 = icmp eq i32 %conv57, 3
  br i1 %cmp58, label %if.then.60, label %if.else.75

if.then.60:                                       ; preds = %lor.lhs.false.52, %land.lhs.true
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc, %if.then.60
  %41 = load i64, i64* %elt, align 8
  %and62 = and i64 %41, 7
  %conv63 = trunc i64 %and62 to i32
  %cmp64 = icmp eq i32 %conv63, 3
  br i1 %cmp64, label %for.body.66, label %for.end

for.body.66:                                      ; preds = %for.cond.61
  %42 = load i64, i64* %name.addr, align 8
  %43 = load i64, i64* %script, align 8
  %44 = load i64, i64* %elt, align 8
  %sub67 = sub nsw i64 %44, 3
  %45 = inttoptr i64 %sub67 to i8*
  %46 = bitcast i8* %45 to %struct.Lisp_Cons*
  %car68 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %46, i32 0, i32 0
  %47 = load i64, i64* %car68, align 8
  %call69 = call i64 @builtin_lisp_symbol(i32 0)
  %call70 = call i64 @builtin_lisp_symbol(i32 174)
  %call71 = call i64 @Fset_fontset_font(i64 %42, i64 %43, i64 %47, i64 %call69, i64 %call70)
  br label %for.inc

for.inc:                                          ; preds = %for.body.66
  %48 = load i64, i64* %elt, align 8
  %sub72 = sub nsw i64 %48, 3
  %49 = inttoptr i64 %sub72 to i8*
  %50 = bitcast i8* %49 to %struct.Lisp_Cons*
  %u73 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %50, i32 0, i32 1
  %cdr74 = bitcast %union.anon* %u73 to i64*
  %51 = load i64, i64* %cdr74, align 8
  store i64 %51, i64* %elt, align 8
  br label %for.cond.61

for.end:                                          ; preds = %for.cond.61
  br label %if.end.79

if.else.75:                                       ; preds = %lor.lhs.false.52, %for.body
  %52 = load i64, i64* %name.addr, align 8
  %53 = load i64, i64* %script, align 8
  %54 = load i64, i64* %elt, align 8
  %call76 = call i64 @builtin_lisp_symbol(i32 0)
  %call77 = call i64 @builtin_lisp_symbol(i32 174)
  %call78 = call i64 @Fset_fontset_font(i64 %52, i64 %53, i64 %54, i64 %call76, i64 %call77)
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.75, %for.end
  br label %for.inc.80

for.inc.80:                                       ; preds = %if.end.79
  %55 = load i64, i64* %fontlist.addr, align 8
  %sub81 = sub nsw i64 %55, 3
  %56 = inttoptr i64 %sub81 to i8*
  %57 = bitcast i8* %56 to %struct.Lisp_Cons*
  %u82 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %57, i32 0, i32 1
  %cdr83 = bitcast %union.anon* %u82 to i64*
  %58 = load i64, i64* %cdr83, align 8
  store i64 %58, i64* %fontlist.addr, align 8
  br label %for.cond

for.end.84:                                       ; preds = %for.cond
  %59 = load i64, i64* %name.addr, align 8
  ret i64 %59
}

declare void @CHECK_LIST(i64) #1

declare i32 @font_parse_xlfd(i8*, i64, i64) #1

declare i64 @SBYTES(i64) #1

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #2

declare i64 @font_unparse_xlfd(i64, i32, i8*, i32) #1

declare i64 @make_unibyte_string(i8*, i64) #1

; Function Attrs: nounwind uwtable
define i32 @fontset_from_font(i64 %font_object) #0 {
entry:
  %retval = alloca i32, align 4
  %font_object.addr = alloca i64, align 8
  %font_name = alloca i64, align 8
  %font_spec = alloca i64, align 8
  %registry = alloca i64, align 8
  %fontset_spec = alloca i64, align 8
  %alias = alloca i64, align 8
  %name = alloca i64, align 8
  %fontset = alloca i64, align 8
  %val = alloca i64, align 8
  %temp = alloca [33 x i8], align 16
  %target = alloca i64, align 8
  store i64 %font_object, i64* %font_object.addr, align 8
  %0 = load i64, i64* %font_object.addr, align 8
  %call = call i64 @font_get_name(i64 %0)
  store i64 %call, i64* %font_name, align 8
  %1 = load i64, i64* %font_object.addr, align 8
  %call1 = call i64 @copy_font_spec(i64 %1)
  store i64 %call1, i64* %font_spec, align 8
  %2 = load i64, i64* %font_spec, align 8
  %call2 = call i64 @AREF(i64 %2, i64 4)
  store i64 %call2, i64* %registry, align 8
  %3 = load i64, i64* %font_spec, align 8
  %4 = load i64, i64* @auto_fontset_alist, align 8
  %call3 = call i64 @assoc_no_quit(i64 %3, i64 %4)
  store i64 %call3, i64* %val, align 8
  %5 = load i64, i64* %val, align 8
  %and = and i64 %5, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i64, i64* %val, align 8
  %sub = sub nsw i64 %6, 3
  %7 = inttoptr i64 %sub to i8*
  %8 = bitcast i8* %7 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %8, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %9 = load i64, i64* %cdr, align 8
  %call5 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %9)
  %extras = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call5, i32 0, i32 6
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* %extras, i32 0, i64 0
  %10 = load i64, i64* %arrayidx, align 8
  %shr = ashr i64 %10, 2
  %conv6 = trunc i64 %shr to i32
  store i32 %conv6, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %11 = load i64, i64* @num_auto_fontsets, align 8
  %inc = add nsw i64 %11, 1
  store i64 %inc, i64* @num_auto_fontsets, align 8
  %cmp7 = icmp eq i64 %11, 0
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end
  %call10 = call i64 @intern(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0))
  store i64 %call10, i64* %alias, align 8
  br label %if.end.15

if.else:                                          ; preds = %if.end
  %arraydecay = getelementptr inbounds [33 x i8], [33 x i8]* %temp, i32 0, i32 0
  %12 = load i64, i64* @num_auto_fontsets, align 8
  %sub11 = sub nsw i64 %12, 1
  %call12 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i64 %sub11) #7
  %arraydecay13 = getelementptr inbounds [33 x i8], [33 x i8]* %temp, i32 0, i32 0
  %call14 = call i64 @intern(i8* %arraydecay13)
  store i64 %call14, i64* %alias, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.9
  %13 = load i64, i64* %font_spec, align 8
  %call16 = call i64 @copy_font_spec(i64 %13)
  store i64 %call16, i64* %fontset_spec, align 8
  %14 = load i64, i64* %fontset_spec, align 8
  %15 = load i64, i64* %alias, align 8
  call void @ASET(i64 %14, i64 4, i64 %15)
  %16 = load i64, i64* %fontset_spec, align 8
  %call17 = call i64 @builtin_lisp_symbol(i32 0)
  %call18 = call i64 @Ffont_xlfd_name(i64 %16, i64 %call17)
  store i64 %call18, i64* %name, align 8
  %call19 = call i64 @builtin_lisp_symbol(i32 0)
  %17 = load i64, i64* %name, align 8
  %call20 = call i64 @builtin_lisp_symbol(i32 0)
  %call21 = call i64 @make_fontset(i64 %call19, i64 %17, i64 %call20)
  store i64 %call21, i64* %fontset, align 8
  %18 = load i64, i64* %name, align 8
  %19 = load i64, i64* %alias, align 8
  %call22 = call i64 @SYMBOL_NAME(i64 %19)
  %call23 = call i64 @Fcons(i64 %18, i64 %call22)
  %20 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 109), align 8
  %call24 = call i64 @Fcons(i64 %call23, i64 %20)
  store i64 %call24, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 109), align 8
  %21 = load i64, i64* %font_object.addr, align 8
  %call25 = call i64 @AREF(i64 %21, i64 14)
  %call26 = call i64 @Fdowncase(i64 %call25)
  store i64 %call26, i64* %alias, align 8
  %22 = load i64, i64* %name, align 8
  %23 = load i64, i64* %alias, align 8
  %call27 = call i64 @Fcons(i64 %22, i64 %23)
  %24 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 109), align 8
  %call28 = call i64 @Fcons(i64 %call27, i64 %24)
  store i64 %call28, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 109), align 8
  %25 = load i64, i64* %font_spec, align 8
  %26 = load i64, i64* %fontset, align 8
  %call29 = call i64 @Fcons(i64 %25, i64 %26)
  %27 = load i64, i64* @auto_fontset_alist, align 8
  %call30 = call i64 @Fcons(i64 %call29, i64 %27)
  store i64 %call30, i64* @auto_fontset_alist, align 8
  %call31 = call i64 @Ffont_spec(i64 0, i64* null)
  store i64 %call31, i64* %font_spec, align 8
  %28 = load i64, i64* %font_spec, align 8
  %29 = load i64, i64* %registry, align 8
  call void @ASET(i64 %28, i64 4, i64 %29)
  %30 = load i64, i64* %registry, align 8
  %call32 = call i64 @SYMBOL_NAME(i64 %30)
  %call33 = call i64 @find_font_encoding(i64 %call32)
  store i64 %call33, i64* %target, align 8
  %31 = load i64, i64* %target, align 8
  %and34 = and i64 %31, 7
  %conv35 = trunc i64 %and34 to i32
  %cmp36 = icmp eq i32 %conv35, 3
  br i1 %cmp36, label %if.then.38, label %if.end.42

if.then.38:                                       ; preds = %if.end.15
  %32 = load i64, i64* %target, align 8
  %sub39 = sub nsw i64 %32, 3
  %33 = inttoptr i64 %sub39 to i8*
  %34 = bitcast i8* %33 to %struct.Lisp_Cons*
  %u40 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %34, i32 0, i32 1
  %cdr41 = bitcast %union.anon* %u40 to i64*
  %35 = load i64, i64* %cdr41, align 8
  store i64 %35, i64* %target, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.38, %if.end.15
  %36 = load i64, i64* @Vcharset_hash_table, align 8
  %call43 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %36)
  %37 = load i64, i64* %target, align 8
  %call44 = call i64 @hash_lookup(%struct.Lisp_Hash_Table* %call43, i64 %37, i64* null)
  %cmp45 = icmp sge i64 %call44, 0
  br i1 %cmp45, label %if.end.49, label %if.then.47

if.then.47:                                       ; preds = %if.end.42
  %call48 = call i64 @builtin_lisp_symbol(i32 605)
  store i64 %call48, i64* %target, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %if.end.42
  %38 = load i64, i64* %name, align 8
  %39 = load i64, i64* %target, align 8
  %40 = load i64, i64* %font_spec, align 8
  %call50 = call i64 @builtin_lisp_symbol(i32 0)
  %call51 = call i64 @builtin_lisp_symbol(i32 0)
  %call52 = call i64 @Fset_fontset_font(i64 %38, i64 %39, i64 %40, i64 %call50, i64 %call51)
  %41 = load i64, i64* %name, align 8
  %call53 = call i64 @builtin_lisp_symbol(i32 0)
  %42 = load i64, i64* %font_spec, align 8
  %call54 = call i64 @builtin_lisp_symbol(i32 0)
  %call55 = call i64 @builtin_lisp_symbol(i32 0)
  %call56 = call i64 @Fset_fontset_font(i64 %41, i64 %call53, i64 %42, i64 %call54, i64 %call55)
  %43 = load i64, i64* %fontset, align 8
  %44 = load i64, i64* %font_name, align 8
  call void @set_fontset_ascii(i64 %43, i64 %44)
  %45 = load i64, i64* %fontset, align 8
  %call57 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %45)
  %extras58 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call57, i32 0, i32 6
  %arrayidx59 = getelementptr inbounds [0 x i64], [0 x i64]* %extras58, i32 0, i64 0
  %46 = load i64, i64* %arrayidx59, align 8
  %shr60 = ashr i64 %46, 2
  %conv61 = trunc i64 %shr60 to i32
  store i32 %conv61, i32* %retval
  br label %return

return:                                           ; preds = %if.end.49, %if.then
  %47 = load i32, i32* %retval
  ret i32 %47
}

declare i64 @font_get_name(i64) #1

declare i64 @copy_font_spec(i64) #1

declare i64 @assoc_no_quit(i64, i64) #1

declare i64 @intern(i8*) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #4

; Function Attrs: nounwind uwtable
define i64 @Ffontset_info(i64 %fontset, i64 %frame) #0 {
entry:
  %fontset.addr = alloca i64, align 8
  %frame.addr = alloca i64, align 8
  %realized = alloca [2 x i64*], align 16
  %fontsets = alloca [2 x i64], align 16
  %tables = alloca [2 x i64], align 16
  %val = alloca i64, align 8
  %elt = alloca i64, align 8
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  %alloca_nbytes = alloca i64, align 8
  %arg_ = alloca i64, align 8
  %from = alloca i32, align 4
  %to = alloca i32, align 4
  %alist = alloca i64, align 8
  %font_object = alloca i64, align 8
  %slot = alloca i64, align 8
  %name = alloca i64, align 8
  store i64 %fontset, i64* %fontset.addr, align 8
  store i64 %frame, i64* %frame.addr, align 8
  call void @check_window_system(%struct.frame* null)
  %0 = load i64, i64* %fontset.addr, align 8
  %call = call i64 @check_fontset_name(i64 %0, i64* %frame.addr)
  store i64 %call, i64* %fontset.addr, align 8
  store i64 16384, i64* %sa_avail, align 8
  %call1 = call i64 @SPECPDL_INDEX()
  store i64 %call1, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  br i1 false, label %cond.true, label %cond.false.608

cond.true:                                        ; preds = %do.body
  br i1 false, label %cond.true.2, label %cond.false.325

cond.true.2:                                      ; preds = %cond.true
  %1 = load i64, i64* @Vfontset_table, align 8
  %call3 = call i64 @ASIZE(i64 %1)
  %mul = mul nsw i64 2, %call3
  %conv = trunc i64 %mul to i8
  %conv4 = sext i8 %conv to i32
  %add = add nsw i32 0, %conv4
  %mul5 = mul nsw i32 0, %add
  %sub = sub nsw i32 %mul5, 1
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %cond.true.7, label %cond.false

cond.true.7:                                      ; preds = %cond.true.2
  %2 = load i64, i64* @Vfontset_table, align 8
  %call8 = call i64 @ASIZE(i64 %2)
  %mul9 = mul nsw i64 2, %call8
  %conv10 = trunc i64 %mul9 to i8
  %conv11 = sext i8 %conv10 to i32
  %add12 = add nsw i32 0, %conv11
  %mul13 = mul nsw i32 0, %add12
  %add14 = add nsw i32 %mul13, 0
  %neg = xor i32 %add14, -1
  %cmp15 = icmp eq i32 %neg, -1
  %conv16 = zext i1 %cmp15 to i32
  %sub17 = sub nsw i32 0, %conv16
  %3 = load i64, i64* @Vfontset_table, align 8
  %call18 = call i64 @ASIZE(i64 %3)
  %mul19 = mul nsw i64 2, %call18
  %conv20 = trunc i64 %mul19 to i8
  %conv21 = sext i8 %conv20 to i32
  %add22 = add nsw i32 0, %conv21
  %mul23 = mul nsw i32 0, %add22
  %add24 = add nsw i32 %mul23, 1
  %shl = shl i32 %add24, 30
  %sub25 = sub nsw i32 %shl, 1
  %mul26 = mul nsw i32 %sub25, 2
  %add27 = add nsw i32 %mul26, 1
  %sub28 = sub nsw i32 %sub17, %add27
  br label %cond.end

cond.false:                                       ; preds = %cond.true.2
  %4 = load i64, i64* @Vfontset_table, align 8
  %call29 = call i64 @ASIZE(i64 %4)
  %mul30 = mul nsw i64 2, %call29
  %conv31 = trunc i64 %mul30 to i8
  %conv32 = sext i8 %conv31 to i32
  %add33 = add nsw i32 0, %conv32
  %mul34 = mul nsw i32 0, %add33
  %add35 = add nsw i32 %mul34, 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.7
  %cond = phi i32 [ %sub28, %cond.true.7 ], [ %add35, %cond.false ]
  %cmp36 = icmp eq i32 %cond, 0
  br i1 %cmp36, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %cond.end
  %5 = load i64, i64* @Vfontset_table, align 8
  %call38 = call i64 @ASIZE(i64 %5)
  %mul39 = mul nsw i64 2, %call38
  %conv40 = trunc i64 %mul39 to i8
  %conv41 = sext i8 %conv40 to i32
  %cmp42 = icmp slt i32 %conv41, 0
  br i1 %cmp42, label %cond.true.267, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %cond.end
  br i1 false, label %cond.true.44, label %cond.false.142

cond.true.44:                                     ; preds = %lor.lhs.false
  %6 = load i64, i64* @Vfontset_table, align 8
  %call45 = call i64 @ASIZE(i64 %6)
  %mul46 = mul nsw i64 2, %call45
  %conv47 = trunc i64 %mul46 to i8
  %conv48 = sext i8 %conv47 to i32
  %cmp49 = icmp slt i32 %conv48, 0
  br i1 %cmp49, label %cond.true.51, label %cond.false.89

cond.true.51:                                     ; preds = %cond.true.44
  %7 = load i64, i64* @Vfontset_table, align 8
  %call52 = call i64 @ASIZE(i64 %7)
  %mul53 = mul nsw i64 2, %call52
  %conv54 = trunc i64 %mul53 to i8
  %conv55 = sext i8 %conv54 to i32
  %8 = load i64, i64* @Vfontset_table, align 8
  %call56 = call i64 @ASIZE(i64 %8)
  %mul57 = mul nsw i64 2, %call56
  %conv58 = trunc i64 %mul57 to i8
  %conv59 = sext i8 %conv58 to i32
  %add60 = add nsw i32 0, %conv59
  %mul61 = mul nsw i32 0, %add60
  %sub62 = sub nsw i32 %mul61, 1
  %cmp63 = icmp slt i32 %sub62, 0
  br i1 %cmp63, label %cond.true.65, label %cond.false.77

cond.true.65:                                     ; preds = %cond.true.51
  %9 = load i64, i64* @Vfontset_table, align 8
  %call66 = call i64 @ASIZE(i64 %9)
  %mul67 = mul nsw i64 2, %call66
  %conv68 = trunc i64 %mul67 to i8
  %conv69 = sext i8 %conv68 to i32
  %add70 = add nsw i32 0, %conv69
  %mul71 = mul nsw i32 0, %add70
  %add72 = add nsw i32 %mul71, 1
  %shl73 = shl i32 %add72, 30
  %sub74 = sub nsw i32 %shl73, 1
  %mul75 = mul nsw i32 %sub74, 2
  %add76 = add nsw i32 %mul75, 1
  br label %cond.end.85

cond.false.77:                                    ; preds = %cond.true.51
  %10 = load i64, i64* @Vfontset_table, align 8
  %call78 = call i64 @ASIZE(i64 %10)
  %mul79 = mul nsw i64 2, %call78
  %conv80 = trunc i64 %mul79 to i8
  %conv81 = sext i8 %conv80 to i32
  %add82 = add nsw i32 0, %conv81
  %mul83 = mul nsw i32 0, %add82
  %sub84 = sub nsw i32 %mul83, 1
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.false.77, %cond.true.65
  %cond86 = phi i32 [ %add76, %cond.true.65 ], [ %sub84, %cond.false.77 ]
  %div = sdiv i32 %cond86, 8
  %cmp87 = icmp slt i32 %conv55, %div
  br i1 %cmp87, label %cond.true.267, label %lor.lhs.false.241

cond.false.89:                                    ; preds = %cond.true.44
  br i1 false, label %cond.true.90, label %cond.false.91

cond.true.90:                                     ; preds = %cond.false.89
  br i1 false, label %cond.true.267, label %lor.lhs.false.241

cond.false.91:                                    ; preds = %cond.false.89
  %11 = load i64, i64* @Vfontset_table, align 8
  %call92 = call i64 @ASIZE(i64 %11)
  %mul93 = mul nsw i64 2, %call92
  %conv94 = trunc i64 %mul93 to i8
  %conv95 = sext i8 %conv94 to i32
  %add96 = add nsw i32 0, %conv95
  %mul97 = mul nsw i32 0, %add96
  %sub98 = sub nsw i32 %mul97, 1
  %cmp99 = icmp slt i32 %sub98, 0
  br i1 %cmp99, label %cond.true.101, label %cond.false.125

cond.true.101:                                    ; preds = %cond.false.91
  %12 = load i64, i64* @Vfontset_table, align 8
  %call102 = call i64 @ASIZE(i64 %12)
  %mul103 = mul nsw i64 2, %call102
  %conv104 = trunc i64 %mul103 to i8
  %conv105 = sext i8 %conv104 to i32
  %add106 = add nsw i32 0, %conv105
  %mul107 = mul nsw i32 0, %add106
  %add108 = add nsw i32 %mul107, 0
  %neg109 = xor i32 %add108, -1
  %cmp110 = icmp eq i32 %neg109, -1
  %conv111 = zext i1 %cmp110 to i32
  %sub112 = sub nsw i32 0, %conv111
  %13 = load i64, i64* @Vfontset_table, align 8
  %call113 = call i64 @ASIZE(i64 %13)
  %mul114 = mul nsw i64 2, %call113
  %conv115 = trunc i64 %mul114 to i8
  %conv116 = sext i8 %conv115 to i32
  %add117 = add nsw i32 0, %conv116
  %mul118 = mul nsw i32 0, %add117
  %add119 = add nsw i32 %mul118, 1
  %shl120 = shl i32 %add119, 30
  %sub121 = sub nsw i32 %shl120, 1
  %mul122 = mul nsw i32 %sub121, 2
  %add123 = add nsw i32 %mul122, 1
  %sub124 = sub nsw i32 %sub112, %add123
  br label %cond.end.133

cond.false.125:                                   ; preds = %cond.false.91
  %14 = load i64, i64* @Vfontset_table, align 8
  %call126 = call i64 @ASIZE(i64 %14)
  %mul127 = mul nsw i64 2, %call126
  %conv128 = trunc i64 %mul127 to i8
  %conv129 = sext i8 %conv128 to i32
  %add130 = add nsw i32 0, %conv129
  %mul131 = mul nsw i32 0, %add130
  %add132 = add nsw i32 %mul131, 0
  br label %cond.end.133

cond.end.133:                                     ; preds = %cond.false.125, %cond.true.101
  %cond134 = phi i32 [ %sub124, %cond.true.101 ], [ %add132, %cond.false.125 ]
  %div135 = sdiv i32 %cond134, 8
  %15 = load i64, i64* @Vfontset_table, align 8
  %call136 = call i64 @ASIZE(i64 %15)
  %mul137 = mul nsw i64 2, %call136
  %conv138 = trunc i64 %mul137 to i8
  %conv139 = sext i8 %conv138 to i32
  %cmp140 = icmp slt i32 %div135, %conv139
  br i1 %cmp140, label %cond.true.267, label %lor.lhs.false.241

cond.false.142:                                   ; preds = %lor.lhs.false
  br i1 false, label %cond.true.143, label %cond.false.144

cond.true.143:                                    ; preds = %cond.false.142
  br i1 false, label %cond.true.267, label %lor.lhs.false.241

cond.false.144:                                   ; preds = %cond.false.142
  %16 = load i64, i64* @Vfontset_table, align 8
  %call145 = call i64 @ASIZE(i64 %16)
  %mul146 = mul nsw i64 2, %call145
  %conv147 = trunc i64 %mul146 to i8
  %conv148 = sext i8 %conv147 to i32
  %cmp149 = icmp slt i32 %conv148, 0
  br i1 %cmp149, label %cond.true.151, label %cond.false.202

cond.true.151:                                    ; preds = %cond.false.144
  %17 = load i64, i64* @Vfontset_table, align 8
  %call152 = call i64 @ASIZE(i64 %17)
  %mul153 = mul nsw i64 2, %call152
  %conv154 = trunc i64 %mul153 to i8
  %conv155 = sext i8 %conv154 to i32
  %18 = load i64, i64* @Vfontset_table, align 8
  %call156 = call i64 @ASIZE(i64 %18)
  %mul157 = mul nsw i64 2, %call156
  %conv158 = trunc i64 %mul157 to i8
  %conv159 = sext i8 %conv158 to i32
  %add160 = add nsw i32 0, %conv159
  %mul161 = mul nsw i32 0, %add160
  %sub162 = sub nsw i32 %mul161, 1
  %cmp163 = icmp slt i32 %sub162, 0
  br i1 %cmp163, label %cond.true.165, label %cond.false.189

cond.true.165:                                    ; preds = %cond.true.151
  %19 = load i64, i64* @Vfontset_table, align 8
  %call166 = call i64 @ASIZE(i64 %19)
  %mul167 = mul nsw i64 2, %call166
  %conv168 = trunc i64 %mul167 to i8
  %conv169 = sext i8 %conv168 to i32
  %add170 = add nsw i32 0, %conv169
  %mul171 = mul nsw i32 0, %add170
  %add172 = add nsw i32 %mul171, 0
  %neg173 = xor i32 %add172, -1
  %cmp174 = icmp eq i32 %neg173, -1
  %conv175 = zext i1 %cmp174 to i32
  %sub176 = sub nsw i32 0, %conv175
  %20 = load i64, i64* @Vfontset_table, align 8
  %call177 = call i64 @ASIZE(i64 %20)
  %mul178 = mul nsw i64 2, %call177
  %conv179 = trunc i64 %mul178 to i8
  %conv180 = sext i8 %conv179 to i32
  %add181 = add nsw i32 0, %conv180
  %mul182 = mul nsw i32 0, %add181
  %add183 = add nsw i32 %mul182, 1
  %shl184 = shl i32 %add183, 30
  %sub185 = sub nsw i32 %shl184, 1
  %mul186 = mul nsw i32 %sub185, 2
  %add187 = add nsw i32 %mul186, 1
  %sub188 = sub nsw i32 %sub176, %add187
  br label %cond.end.197

cond.false.189:                                   ; preds = %cond.true.151
  %21 = load i64, i64* @Vfontset_table, align 8
  %call190 = call i64 @ASIZE(i64 %21)
  %mul191 = mul nsw i64 2, %call190
  %conv192 = trunc i64 %mul191 to i8
  %conv193 = sext i8 %conv192 to i32
  %add194 = add nsw i32 0, %conv193
  %mul195 = mul nsw i32 0, %add194
  %add196 = add nsw i32 %mul195, 0
  br label %cond.end.197

cond.end.197:                                     ; preds = %cond.false.189, %cond.true.165
  %cond198 = phi i32 [ %sub188, %cond.true.165 ], [ %add196, %cond.false.189 ]
  %div199 = sdiv i32 %cond198, 8
  %cmp200 = icmp slt i32 %conv155, %div199
  br i1 %cmp200, label %cond.true.267, label %lor.lhs.false.241

cond.false.202:                                   ; preds = %cond.false.144
  %22 = load i64, i64* @Vfontset_table, align 8
  %call203 = call i64 @ASIZE(i64 %22)
  %mul204 = mul nsw i64 2, %call203
  %conv205 = trunc i64 %mul204 to i8
  %conv206 = sext i8 %conv205 to i32
  %add207 = add nsw i32 0, %conv206
  %mul208 = mul nsw i32 0, %add207
  %sub209 = sub nsw i32 %mul208, 1
  %cmp210 = icmp slt i32 %sub209, 0
  br i1 %cmp210, label %cond.true.212, label %cond.false.224

cond.true.212:                                    ; preds = %cond.false.202
  %23 = load i64, i64* @Vfontset_table, align 8
  %call213 = call i64 @ASIZE(i64 %23)
  %mul214 = mul nsw i64 2, %call213
  %conv215 = trunc i64 %mul214 to i8
  %conv216 = sext i8 %conv215 to i32
  %add217 = add nsw i32 0, %conv216
  %mul218 = mul nsw i32 0, %add217
  %add219 = add nsw i32 %mul218, 1
  %shl220 = shl i32 %add219, 30
  %sub221 = sub nsw i32 %shl220, 1
  %mul222 = mul nsw i32 %sub221, 2
  %add223 = add nsw i32 %mul222, 1
  br label %cond.end.232

cond.false.224:                                   ; preds = %cond.false.202
  %24 = load i64, i64* @Vfontset_table, align 8
  %call225 = call i64 @ASIZE(i64 %24)
  %mul226 = mul nsw i64 2, %call225
  %conv227 = trunc i64 %mul226 to i8
  %conv228 = sext i8 %conv227 to i32
  %add229 = add nsw i32 0, %conv228
  %mul230 = mul nsw i32 0, %add229
  %sub231 = sub nsw i32 %mul230, 1
  br label %cond.end.232

cond.end.232:                                     ; preds = %cond.false.224, %cond.true.212
  %cond233 = phi i32 [ %add223, %cond.true.212 ], [ %sub231, %cond.false.224 ]
  %div234 = sdiv i32 %cond233, 8
  %25 = load i64, i64* @Vfontset_table, align 8
  %call235 = call i64 @ASIZE(i64 %25)
  %mul236 = mul nsw i64 2, %call235
  %conv237 = trunc i64 %mul236 to i8
  %conv238 = sext i8 %conv237 to i32
  %cmp239 = icmp slt i32 %div234, %conv238
  br i1 %cmp239, label %cond.true.267, label %lor.lhs.false.241

lor.lhs.false.241:                                ; preds = %cond.end.232, %cond.end.197, %cond.true.143, %cond.end.133, %cond.true.90, %cond.end.85
  %26 = load i64, i64* @Vfontset_table, align 8
  %call242 = call i64 @ASIZE(i64 %26)
  %mul243 = mul nsw i64 2, %call242
  %conv244 = trunc i64 %mul243 to i8
  %conv245 = sext i8 %conv244 to i32
  %mul246 = mul nsw i32 %conv245, 8
  %mul247 = mul nsw i32 0, %mul246
  %sub248 = sub nsw i32 %mul247, 1
  %cmp249 = icmp slt i32 %sub248, 0
  br i1 %cmp249, label %land.lhs.true.251, label %lor.lhs.false.259

land.lhs.true.251:                                ; preds = %lor.lhs.false.241
  %27 = load i64, i64* @Vfontset_table, align 8
  %call252 = call i64 @ASIZE(i64 %27)
  %mul253 = mul nsw i64 2, %call252
  %conv254 = trunc i64 %mul253 to i8
  %conv255 = sext i8 %conv254 to i32
  %mul256 = mul nsw i32 %conv255, 8
  %cmp257 = icmp slt i32 %mul256, -128
  br i1 %cmp257, label %cond.true.267, label %lor.lhs.false.259

lor.lhs.false.259:                                ; preds = %land.lhs.true.251, %lor.lhs.false.241
  %28 = load i64, i64* @Vfontset_table, align 8
  %call260 = call i64 @ASIZE(i64 %28)
  %mul261 = mul nsw i64 2, %call260
  %conv262 = trunc i64 %mul261 to i8
  %conv263 = sext i8 %conv262 to i32
  %mul264 = mul nsw i32 %conv263, 8
  %cmp265 = icmp slt i32 127, %mul264
  br i1 %cmp265, label %cond.true.267, label %cond.false.296

cond.true.267:                                    ; preds = %lor.lhs.false.259, %land.lhs.true.251, %cond.end.232, %cond.end.197, %cond.true.143, %cond.end.133, %cond.true.90, %cond.end.85, %land.lhs.true
  %29 = load i64, i64* @Vfontset_table, align 8
  %call268 = call i64 @ASIZE(i64 %29)
  %mul269 = mul nsw i64 2, %call268
  %conv270 = trunc i64 %mul269 to i8
  %conv271 = zext i8 %conv270 to i32
  %mul272 = mul nsw i32 %conv271, 8
  %cmp273 = icmp sle i32 %mul272, 127
  br i1 %cmp273, label %cond.true.275, label %cond.false.283

cond.true.275:                                    ; preds = %cond.true.267
  %30 = load i64, i64* @Vfontset_table, align 8
  %call276 = call i64 @ASIZE(i64 %30)
  %mul277 = mul nsw i64 2, %call276
  %conv278 = trunc i64 %mul277 to i8
  %conv279 = zext i8 %conv278 to i32
  %mul280 = mul nsw i32 %conv279, 8
  %conv281 = trunc i32 %mul280 to i8
  %conv282 = sext i8 %conv281 to i32
  br label %cond.end.293

cond.false.283:                                   ; preds = %cond.true.267
  %31 = load i64, i64* @Vfontset_table, align 8
  %call284 = call i64 @ASIZE(i64 %31)
  %mul285 = mul nsw i64 2, %call284
  %conv286 = trunc i64 %mul285 to i8
  %conv287 = zext i8 %conv286 to i32
  %mul288 = mul nsw i32 %conv287, 8
  %sub289 = sub nsw i32 %mul288, -128
  %conv290 = trunc i32 %sub289 to i8
  %conv291 = sext i8 %conv290 to i32
  %add292 = add nsw i32 %conv291, -128
  br label %cond.end.293

cond.end.293:                                     ; preds = %cond.false.283, %cond.true.275
  %cond294 = phi i32 [ %conv282, %cond.true.275 ], [ %add292, %cond.false.283 ]
  %conv295 = sext i32 %cond294 to i64
  store i64 %conv295, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then, label %lor.lhs.false.2841

cond.false.296:                                   ; preds = %lor.lhs.false.259
  %32 = load i64, i64* @Vfontset_table, align 8
  %call297 = call i64 @ASIZE(i64 %32)
  %mul298 = mul nsw i64 2, %call297
  %conv299 = trunc i64 %mul298 to i8
  %conv300 = zext i8 %conv299 to i32
  %mul301 = mul nsw i32 %conv300, 8
  %cmp302 = icmp sle i32 %mul301, 127
  br i1 %cmp302, label %cond.true.304, label %cond.false.312

cond.true.304:                                    ; preds = %cond.false.296
  %33 = load i64, i64* @Vfontset_table, align 8
  %call305 = call i64 @ASIZE(i64 %33)
  %mul306 = mul nsw i64 2, %call305
  %conv307 = trunc i64 %mul306 to i8
  %conv308 = zext i8 %conv307 to i32
  %mul309 = mul nsw i32 %conv308, 8
  %conv310 = trunc i32 %mul309 to i8
  %conv311 = sext i8 %conv310 to i32
  br label %cond.end.322

cond.false.312:                                   ; preds = %cond.false.296
  %34 = load i64, i64* @Vfontset_table, align 8
  %call313 = call i64 @ASIZE(i64 %34)
  %mul314 = mul nsw i64 2, %call313
  %conv315 = trunc i64 %mul314 to i8
  %conv316 = zext i8 %conv315 to i32
  %mul317 = mul nsw i32 %conv316, 8
  %sub318 = sub nsw i32 %mul317, -128
  %conv319 = trunc i32 %sub318 to i8
  %conv320 = sext i8 %conv319 to i32
  %add321 = add nsw i32 %conv320, -128
  br label %cond.end.322

cond.end.322:                                     ; preds = %cond.false.312, %cond.true.304
  %cond323 = phi i32 [ %conv311, %cond.true.304 ], [ %add321, %cond.false.312 ]
  %conv324 = sext i32 %cond323 to i64
  store i64 %conv324, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then, label %lor.lhs.false.2841

cond.false.325:                                   ; preds = %cond.true
  %35 = load i64, i64* @Vfontset_table, align 8
  %call326 = call i64 @ASIZE(i64 %35)
  %mul327 = mul nsw i64 2, %call326
  %add328 = add nsw i64 0, %mul327
  %mul329 = mul nsw i64 0, %add328
  %sub330 = sub nsw i64 %mul329, 1
  %cmp331 = icmp slt i64 %sub330, 0
  br i1 %cmp331, label %cond.true.333, label %cond.false.354

cond.true.333:                                    ; preds = %cond.false.325
  %36 = load i64, i64* @Vfontset_table, align 8
  %call334 = call i64 @ASIZE(i64 %36)
  %mul335 = mul nsw i64 2, %call334
  %add336 = add nsw i64 0, %mul335
  %mul337 = mul nsw i64 0, %add336
  %add338 = add nsw i64 %mul337, 0
  %neg339 = xor i64 %add338, -1
  %cmp340 = icmp eq i64 %neg339, -1
  %conv341 = zext i1 %cmp340 to i32
  %sub342 = sub nsw i32 0, %conv341
  %conv343 = sext i32 %sub342 to i64
  %37 = load i64, i64* @Vfontset_table, align 8
  %call344 = call i64 @ASIZE(i64 %37)
  %mul345 = mul nsw i64 2, %call344
  %add346 = add nsw i64 0, %mul345
  %mul347 = mul nsw i64 0, %add346
  %add348 = add nsw i64 %mul347, 1
  %shl349 = shl i64 %add348, 62
  %sub350 = sub nsw i64 %shl349, 1
  %mul351 = mul nsw i64 %sub350, 2
  %add352 = add nsw i64 %mul351, 1
  %sub353 = sub nsw i64 %conv343, %add352
  br label %cond.end.360

cond.false.354:                                   ; preds = %cond.false.325
  %38 = load i64, i64* @Vfontset_table, align 8
  %call355 = call i64 @ASIZE(i64 %38)
  %mul356 = mul nsw i64 2, %call355
  %add357 = add nsw i64 0, %mul356
  %mul358 = mul nsw i64 0, %add357
  %add359 = add nsw i64 %mul358, 0
  br label %cond.end.360

cond.end.360:                                     ; preds = %cond.false.354, %cond.true.333
  %cond361 = phi i64 [ %sub353, %cond.true.333 ], [ %add359, %cond.false.354 ]
  %cmp362 = icmp eq i64 %cond361, 0
  br i1 %cmp362, label %land.lhs.true.364, label %lor.lhs.false.369

land.lhs.true.364:                                ; preds = %cond.end.360
  %39 = load i64, i64* @Vfontset_table, align 8
  %call365 = call i64 @ASIZE(i64 %39)
  %mul366 = mul nsw i64 2, %call365
  %cmp367 = icmp slt i64 %mul366, 0
  br i1 %cmp367, label %cond.true.550, label %lor.lhs.false.369

lor.lhs.false.369:                                ; preds = %land.lhs.true.364, %cond.end.360
  br i1 false, label %cond.true.370, label %cond.false.450

cond.true.370:                                    ; preds = %lor.lhs.false.369
  %40 = load i64, i64* @Vfontset_table, align 8
  %call371 = call i64 @ASIZE(i64 %40)
  %mul372 = mul nsw i64 2, %call371
  %cmp373 = icmp slt i64 %mul372, 0
  br i1 %cmp373, label %cond.true.375, label %cond.false.406

cond.true.375:                                    ; preds = %cond.true.370
  %41 = load i64, i64* @Vfontset_table, align 8
  %call376 = call i64 @ASIZE(i64 %41)
  %mul377 = mul nsw i64 2, %call376
  %42 = load i64, i64* @Vfontset_table, align 8
  %call378 = call i64 @ASIZE(i64 %42)
  %mul379 = mul nsw i64 2, %call378
  %add380 = add nsw i64 0, %mul379
  %mul381 = mul nsw i64 0, %add380
  %sub382 = sub nsw i64 %mul381, 1
  %cmp383 = icmp slt i64 %sub382, 0
  br i1 %cmp383, label %cond.true.385, label %cond.false.395

cond.true.385:                                    ; preds = %cond.true.375
  %43 = load i64, i64* @Vfontset_table, align 8
  %call386 = call i64 @ASIZE(i64 %43)
  %mul387 = mul nsw i64 2, %call386
  %add388 = add nsw i64 0, %mul387
  %mul389 = mul nsw i64 0, %add388
  %add390 = add nsw i64 %mul389, 1
  %shl391 = shl i64 %add390, 62
  %sub392 = sub nsw i64 %shl391, 1
  %mul393 = mul nsw i64 %sub392, 2
  %add394 = add nsw i64 %mul393, 1
  br label %cond.end.401

cond.false.395:                                   ; preds = %cond.true.375
  %44 = load i64, i64* @Vfontset_table, align 8
  %call396 = call i64 @ASIZE(i64 %44)
  %mul397 = mul nsw i64 2, %call396
  %add398 = add nsw i64 0, %mul397
  %mul399 = mul nsw i64 0, %add398
  %sub400 = sub nsw i64 %mul399, 1
  br label %cond.end.401

cond.end.401:                                     ; preds = %cond.false.395, %cond.true.385
  %cond402 = phi i64 [ %add394, %cond.true.385 ], [ %sub400, %cond.false.395 ]
  %div403 = sdiv i64 %cond402, 8
  %cmp404 = icmp slt i64 %mul377, %div403
  br i1 %cmp404, label %cond.true.550, label %lor.lhs.false.530

cond.false.406:                                   ; preds = %cond.true.370
  br i1 false, label %cond.true.407, label %cond.false.408

cond.true.407:                                    ; preds = %cond.false.406
  br i1 false, label %cond.true.550, label %lor.lhs.false.530

cond.false.408:                                   ; preds = %cond.false.406
  %45 = load i64, i64* @Vfontset_table, align 8
  %call409 = call i64 @ASIZE(i64 %45)
  %mul410 = mul nsw i64 2, %call409
  %add411 = add nsw i64 0, %mul410
  %mul412 = mul nsw i64 0, %add411
  %sub413 = sub nsw i64 %mul412, 1
  %cmp414 = icmp slt i64 %sub413, 0
  br i1 %cmp414, label %cond.true.416, label %cond.false.437

cond.true.416:                                    ; preds = %cond.false.408
  %46 = load i64, i64* @Vfontset_table, align 8
  %call417 = call i64 @ASIZE(i64 %46)
  %mul418 = mul nsw i64 2, %call417
  %add419 = add nsw i64 0, %mul418
  %mul420 = mul nsw i64 0, %add419
  %add421 = add nsw i64 %mul420, 0
  %neg422 = xor i64 %add421, -1
  %cmp423 = icmp eq i64 %neg422, -1
  %conv424 = zext i1 %cmp423 to i32
  %sub425 = sub nsw i32 0, %conv424
  %conv426 = sext i32 %sub425 to i64
  %47 = load i64, i64* @Vfontset_table, align 8
  %call427 = call i64 @ASIZE(i64 %47)
  %mul428 = mul nsw i64 2, %call427
  %add429 = add nsw i64 0, %mul428
  %mul430 = mul nsw i64 0, %add429
  %add431 = add nsw i64 %mul430, 1
  %shl432 = shl i64 %add431, 62
  %sub433 = sub nsw i64 %shl432, 1
  %mul434 = mul nsw i64 %sub433, 2
  %add435 = add nsw i64 %mul434, 1
  %sub436 = sub nsw i64 %conv426, %add435
  br label %cond.end.443

cond.false.437:                                   ; preds = %cond.false.408
  %48 = load i64, i64* @Vfontset_table, align 8
  %call438 = call i64 @ASIZE(i64 %48)
  %mul439 = mul nsw i64 2, %call438
  %add440 = add nsw i64 0, %mul439
  %mul441 = mul nsw i64 0, %add440
  %add442 = add nsw i64 %mul441, 0
  br label %cond.end.443

cond.end.443:                                     ; preds = %cond.false.437, %cond.true.416
  %cond444 = phi i64 [ %sub436, %cond.true.416 ], [ %add442, %cond.false.437 ]
  %div445 = sdiv i64 %cond444, 8
  %49 = load i64, i64* @Vfontset_table, align 8
  %call446 = call i64 @ASIZE(i64 %49)
  %mul447 = mul nsw i64 2, %call446
  %cmp448 = icmp slt i64 %div445, %mul447
  br i1 %cmp448, label %cond.true.550, label %lor.lhs.false.530

cond.false.450:                                   ; preds = %lor.lhs.false.369
  br i1 false, label %cond.true.451, label %cond.false.452

cond.true.451:                                    ; preds = %cond.false.450
  br i1 false, label %cond.true.550, label %lor.lhs.false.530

cond.false.452:                                   ; preds = %cond.false.450
  %50 = load i64, i64* @Vfontset_table, align 8
  %call453 = call i64 @ASIZE(i64 %50)
  %mul454 = mul nsw i64 2, %call453
  %cmp455 = icmp slt i64 %mul454, 0
  br i1 %cmp455, label %cond.true.457, label %cond.false.499

cond.true.457:                                    ; preds = %cond.false.452
  %51 = load i64, i64* @Vfontset_table, align 8
  %call458 = call i64 @ASIZE(i64 %51)
  %mul459 = mul nsw i64 2, %call458
  %52 = load i64, i64* @Vfontset_table, align 8
  %call460 = call i64 @ASIZE(i64 %52)
  %mul461 = mul nsw i64 2, %call460
  %add462 = add nsw i64 0, %mul461
  %mul463 = mul nsw i64 0, %add462
  %sub464 = sub nsw i64 %mul463, 1
  %cmp465 = icmp slt i64 %sub464, 0
  br i1 %cmp465, label %cond.true.467, label %cond.false.488

cond.true.467:                                    ; preds = %cond.true.457
  %53 = load i64, i64* @Vfontset_table, align 8
  %call468 = call i64 @ASIZE(i64 %53)
  %mul469 = mul nsw i64 2, %call468
  %add470 = add nsw i64 0, %mul469
  %mul471 = mul nsw i64 0, %add470
  %add472 = add nsw i64 %mul471, 0
  %neg473 = xor i64 %add472, -1
  %cmp474 = icmp eq i64 %neg473, -1
  %conv475 = zext i1 %cmp474 to i32
  %sub476 = sub nsw i32 0, %conv475
  %conv477 = sext i32 %sub476 to i64
  %54 = load i64, i64* @Vfontset_table, align 8
  %call478 = call i64 @ASIZE(i64 %54)
  %mul479 = mul nsw i64 2, %call478
  %add480 = add nsw i64 0, %mul479
  %mul481 = mul nsw i64 0, %add480
  %add482 = add nsw i64 %mul481, 1
  %shl483 = shl i64 %add482, 62
  %sub484 = sub nsw i64 %shl483, 1
  %mul485 = mul nsw i64 %sub484, 2
  %add486 = add nsw i64 %mul485, 1
  %sub487 = sub nsw i64 %conv477, %add486
  br label %cond.end.494

cond.false.488:                                   ; preds = %cond.true.457
  %55 = load i64, i64* @Vfontset_table, align 8
  %call489 = call i64 @ASIZE(i64 %55)
  %mul490 = mul nsw i64 2, %call489
  %add491 = add nsw i64 0, %mul490
  %mul492 = mul nsw i64 0, %add491
  %add493 = add nsw i64 %mul492, 0
  br label %cond.end.494

cond.end.494:                                     ; preds = %cond.false.488, %cond.true.467
  %cond495 = phi i64 [ %sub487, %cond.true.467 ], [ %add493, %cond.false.488 ]
  %div496 = sdiv i64 %cond495, 8
  %cmp497 = icmp slt i64 %mul459, %div496
  br i1 %cmp497, label %cond.true.550, label %lor.lhs.false.530

cond.false.499:                                   ; preds = %cond.false.452
  %56 = load i64, i64* @Vfontset_table, align 8
  %call500 = call i64 @ASIZE(i64 %56)
  %mul501 = mul nsw i64 2, %call500
  %add502 = add nsw i64 0, %mul501
  %mul503 = mul nsw i64 0, %add502
  %sub504 = sub nsw i64 %mul503, 1
  %cmp505 = icmp slt i64 %sub504, 0
  br i1 %cmp505, label %cond.true.507, label %cond.false.517

cond.true.507:                                    ; preds = %cond.false.499
  %57 = load i64, i64* @Vfontset_table, align 8
  %call508 = call i64 @ASIZE(i64 %57)
  %mul509 = mul nsw i64 2, %call508
  %add510 = add nsw i64 0, %mul509
  %mul511 = mul nsw i64 0, %add510
  %add512 = add nsw i64 %mul511, 1
  %shl513 = shl i64 %add512, 62
  %sub514 = sub nsw i64 %shl513, 1
  %mul515 = mul nsw i64 %sub514, 2
  %add516 = add nsw i64 %mul515, 1
  br label %cond.end.523

cond.false.517:                                   ; preds = %cond.false.499
  %58 = load i64, i64* @Vfontset_table, align 8
  %call518 = call i64 @ASIZE(i64 %58)
  %mul519 = mul nsw i64 2, %call518
  %add520 = add nsw i64 0, %mul519
  %mul521 = mul nsw i64 0, %add520
  %sub522 = sub nsw i64 %mul521, 1
  br label %cond.end.523

cond.end.523:                                     ; preds = %cond.false.517, %cond.true.507
  %cond524 = phi i64 [ %add516, %cond.true.507 ], [ %sub522, %cond.false.517 ]
  %div525 = sdiv i64 %cond524, 8
  %59 = load i64, i64* @Vfontset_table, align 8
  %call526 = call i64 @ASIZE(i64 %59)
  %mul527 = mul nsw i64 2, %call526
  %cmp528 = icmp slt i64 %div525, %mul527
  br i1 %cmp528, label %cond.true.550, label %lor.lhs.false.530

lor.lhs.false.530:                                ; preds = %cond.end.523, %cond.end.494, %cond.true.451, %cond.end.443, %cond.true.407, %cond.end.401
  %60 = load i64, i64* @Vfontset_table, align 8
  %call531 = call i64 @ASIZE(i64 %60)
  %mul532 = mul nsw i64 2, %call531
  %mul533 = mul nsw i64 %mul532, 8
  %mul534 = mul nsw i64 0, %mul533
  %sub535 = sub nsw i64 %mul534, 1
  %cmp536 = icmp slt i64 %sub535, 0
  br i1 %cmp536, label %land.lhs.true.538, label %lor.lhs.false.544

land.lhs.true.538:                                ; preds = %lor.lhs.false.530
  %61 = load i64, i64* @Vfontset_table, align 8
  %call539 = call i64 @ASIZE(i64 %61)
  %mul540 = mul nsw i64 2, %call539
  %mul541 = mul nsw i64 %mul540, 8
  %cmp542 = icmp slt i64 %mul541, -128
  br i1 %cmp542, label %cond.true.550, label %lor.lhs.false.544

lor.lhs.false.544:                                ; preds = %land.lhs.true.538, %lor.lhs.false.530
  %62 = load i64, i64* @Vfontset_table, align 8
  %call545 = call i64 @ASIZE(i64 %62)
  %mul546 = mul nsw i64 2, %call545
  %mul547 = mul nsw i64 %mul546, 8
  %cmp548 = icmp slt i64 127, %mul547
  br i1 %cmp548, label %cond.true.550, label %cond.false.579

cond.true.550:                                    ; preds = %lor.lhs.false.544, %land.lhs.true.538, %cond.end.523, %cond.end.494, %cond.true.451, %cond.end.443, %cond.true.407, %cond.end.401, %land.lhs.true.364
  %63 = load i64, i64* @Vfontset_table, align 8
  %call551 = call i64 @ASIZE(i64 %63)
  %mul552 = mul nsw i64 2, %call551
  %conv553 = trunc i64 %mul552 to i8
  %conv554 = zext i8 %conv553 to i32
  %mul555 = mul nsw i32 %conv554, 8
  %cmp556 = icmp sle i32 %mul555, 127
  br i1 %cmp556, label %cond.true.558, label %cond.false.566

cond.true.558:                                    ; preds = %cond.true.550
  %64 = load i64, i64* @Vfontset_table, align 8
  %call559 = call i64 @ASIZE(i64 %64)
  %mul560 = mul nsw i64 2, %call559
  %conv561 = trunc i64 %mul560 to i8
  %conv562 = zext i8 %conv561 to i32
  %mul563 = mul nsw i32 %conv562, 8
  %conv564 = trunc i32 %mul563 to i8
  %conv565 = sext i8 %conv564 to i32
  br label %cond.end.576

cond.false.566:                                   ; preds = %cond.true.550
  %65 = load i64, i64* @Vfontset_table, align 8
  %call567 = call i64 @ASIZE(i64 %65)
  %mul568 = mul nsw i64 2, %call567
  %conv569 = trunc i64 %mul568 to i8
  %conv570 = zext i8 %conv569 to i32
  %mul571 = mul nsw i32 %conv570, 8
  %sub572 = sub nsw i32 %mul571, -128
  %conv573 = trunc i32 %sub572 to i8
  %conv574 = sext i8 %conv573 to i32
  %add575 = add nsw i32 %conv574, -128
  br label %cond.end.576

cond.end.576:                                     ; preds = %cond.false.566, %cond.true.558
  %cond577 = phi i32 [ %conv565, %cond.true.558 ], [ %add575, %cond.false.566 ]
  %conv578 = sext i32 %cond577 to i64
  store i64 %conv578, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then, label %lor.lhs.false.2841

cond.false.579:                                   ; preds = %lor.lhs.false.544
  %66 = load i64, i64* @Vfontset_table, align 8
  %call580 = call i64 @ASIZE(i64 %66)
  %mul581 = mul nsw i64 2, %call580
  %conv582 = trunc i64 %mul581 to i8
  %conv583 = zext i8 %conv582 to i32
  %mul584 = mul nsw i32 %conv583, 8
  %cmp585 = icmp sle i32 %mul584, 127
  br i1 %cmp585, label %cond.true.587, label %cond.false.595

cond.true.587:                                    ; preds = %cond.false.579
  %67 = load i64, i64* @Vfontset_table, align 8
  %call588 = call i64 @ASIZE(i64 %67)
  %mul589 = mul nsw i64 2, %call588
  %conv590 = trunc i64 %mul589 to i8
  %conv591 = zext i8 %conv590 to i32
  %mul592 = mul nsw i32 %conv591, 8
  %conv593 = trunc i32 %mul592 to i8
  %conv594 = sext i8 %conv593 to i32
  br label %cond.end.605

cond.false.595:                                   ; preds = %cond.false.579
  %68 = load i64, i64* @Vfontset_table, align 8
  %call596 = call i64 @ASIZE(i64 %68)
  %mul597 = mul nsw i64 2, %call596
  %conv598 = trunc i64 %mul597 to i8
  %conv599 = zext i8 %conv598 to i32
  %mul600 = mul nsw i32 %conv599, 8
  %sub601 = sub nsw i32 %mul600, -128
  %conv602 = trunc i32 %sub601 to i8
  %conv603 = sext i8 %conv602 to i32
  %add604 = add nsw i32 %conv603, -128
  br label %cond.end.605

cond.end.605:                                     ; preds = %cond.false.595, %cond.true.587
  %cond606 = phi i32 [ %conv594, %cond.true.587 ], [ %add604, %cond.false.595 ]
  %conv607 = sext i32 %cond606 to i64
  store i64 %conv607, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then, label %lor.lhs.false.2841

cond.false.608:                                   ; preds = %do.body
  br i1 false, label %cond.true.609, label %cond.false.1229

cond.true.609:                                    ; preds = %cond.false.608
  br i1 false, label %cond.true.610, label %cond.false.946

cond.true.610:                                    ; preds = %cond.true.609
  %69 = load i64, i64* @Vfontset_table, align 8
  %call611 = call i64 @ASIZE(i64 %69)
  %mul612 = mul nsw i64 2, %call611
  %conv613 = trunc i64 %mul612 to i16
  %conv614 = sext i16 %conv613 to i32
  %add615 = add nsw i32 0, %conv614
  %mul616 = mul nsw i32 0, %add615
  %sub617 = sub nsw i32 %mul616, 1
  %cmp618 = icmp slt i32 %sub617, 0
  br i1 %cmp618, label %cond.true.620, label %cond.false.644

cond.true.620:                                    ; preds = %cond.true.610
  %70 = load i64, i64* @Vfontset_table, align 8
  %call621 = call i64 @ASIZE(i64 %70)
  %mul622 = mul nsw i64 2, %call621
  %conv623 = trunc i64 %mul622 to i16
  %conv624 = sext i16 %conv623 to i32
  %add625 = add nsw i32 0, %conv624
  %mul626 = mul nsw i32 0, %add625
  %add627 = add nsw i32 %mul626, 0
  %neg628 = xor i32 %add627, -1
  %cmp629 = icmp eq i32 %neg628, -1
  %conv630 = zext i1 %cmp629 to i32
  %sub631 = sub nsw i32 0, %conv630
  %71 = load i64, i64* @Vfontset_table, align 8
  %call632 = call i64 @ASIZE(i64 %71)
  %mul633 = mul nsw i64 2, %call632
  %conv634 = trunc i64 %mul633 to i16
  %conv635 = sext i16 %conv634 to i32
  %add636 = add nsw i32 0, %conv635
  %mul637 = mul nsw i32 0, %add636
  %add638 = add nsw i32 %mul637, 1
  %shl639 = shl i32 %add638, 30
  %sub640 = sub nsw i32 %shl639, 1
  %mul641 = mul nsw i32 %sub640, 2
  %add642 = add nsw i32 %mul641, 1
  %sub643 = sub nsw i32 %sub631, %add642
  br label %cond.end.652

cond.false.644:                                   ; preds = %cond.true.610
  %72 = load i64, i64* @Vfontset_table, align 8
  %call645 = call i64 @ASIZE(i64 %72)
  %mul646 = mul nsw i64 2, %call645
  %conv647 = trunc i64 %mul646 to i16
  %conv648 = sext i16 %conv647 to i32
  %add649 = add nsw i32 0, %conv648
  %mul650 = mul nsw i32 0, %add649
  %add651 = add nsw i32 %mul650, 0
  br label %cond.end.652

cond.end.652:                                     ; preds = %cond.false.644, %cond.true.620
  %cond653 = phi i32 [ %sub643, %cond.true.620 ], [ %add651, %cond.false.644 ]
  %cmp654 = icmp eq i32 %cond653, 0
  br i1 %cmp654, label %land.lhs.true.656, label %lor.lhs.false.663

land.lhs.true.656:                                ; preds = %cond.end.652
  %73 = load i64, i64* @Vfontset_table, align 8
  %call657 = call i64 @ASIZE(i64 %73)
  %mul658 = mul nsw i64 2, %call657
  %conv659 = trunc i64 %mul658 to i16
  %conv660 = sext i16 %conv659 to i32
  %cmp661 = icmp slt i32 %conv660, 0
  br i1 %cmp661, label %cond.true.888, label %lor.lhs.false.663

lor.lhs.false.663:                                ; preds = %land.lhs.true.656, %cond.end.652
  br i1 false, label %cond.true.664, label %cond.false.763

cond.true.664:                                    ; preds = %lor.lhs.false.663
  %74 = load i64, i64* @Vfontset_table, align 8
  %call665 = call i64 @ASIZE(i64 %74)
  %mul666 = mul nsw i64 2, %call665
  %conv667 = trunc i64 %mul666 to i16
  %conv668 = sext i16 %conv667 to i32
  %cmp669 = icmp slt i32 %conv668, 0
  br i1 %cmp669, label %cond.true.671, label %cond.false.710

cond.true.671:                                    ; preds = %cond.true.664
  %75 = load i64, i64* @Vfontset_table, align 8
  %call672 = call i64 @ASIZE(i64 %75)
  %mul673 = mul nsw i64 2, %call672
  %conv674 = trunc i64 %mul673 to i16
  %conv675 = sext i16 %conv674 to i32
  %76 = load i64, i64* @Vfontset_table, align 8
  %call676 = call i64 @ASIZE(i64 %76)
  %mul677 = mul nsw i64 2, %call676
  %conv678 = trunc i64 %mul677 to i16
  %conv679 = sext i16 %conv678 to i32
  %add680 = add nsw i32 0, %conv679
  %mul681 = mul nsw i32 0, %add680
  %sub682 = sub nsw i32 %mul681, 1
  %cmp683 = icmp slt i32 %sub682, 0
  br i1 %cmp683, label %cond.true.685, label %cond.false.697

cond.true.685:                                    ; preds = %cond.true.671
  %77 = load i64, i64* @Vfontset_table, align 8
  %call686 = call i64 @ASIZE(i64 %77)
  %mul687 = mul nsw i64 2, %call686
  %conv688 = trunc i64 %mul687 to i16
  %conv689 = sext i16 %conv688 to i32
  %add690 = add nsw i32 0, %conv689
  %mul691 = mul nsw i32 0, %add690
  %add692 = add nsw i32 %mul691, 1
  %shl693 = shl i32 %add692, 30
  %sub694 = sub nsw i32 %shl693, 1
  %mul695 = mul nsw i32 %sub694, 2
  %add696 = add nsw i32 %mul695, 1
  br label %cond.end.705

cond.false.697:                                   ; preds = %cond.true.671
  %78 = load i64, i64* @Vfontset_table, align 8
  %call698 = call i64 @ASIZE(i64 %78)
  %mul699 = mul nsw i64 2, %call698
  %conv700 = trunc i64 %mul699 to i16
  %conv701 = sext i16 %conv700 to i32
  %add702 = add nsw i32 0, %conv701
  %mul703 = mul nsw i32 0, %add702
  %sub704 = sub nsw i32 %mul703, 1
  br label %cond.end.705

cond.end.705:                                     ; preds = %cond.false.697, %cond.true.685
  %cond706 = phi i32 [ %add696, %cond.true.685 ], [ %sub704, %cond.false.697 ]
  %div707 = sdiv i32 %cond706, 8
  %cmp708 = icmp slt i32 %conv675, %div707
  br i1 %cmp708, label %cond.true.888, label %lor.lhs.false.862

cond.false.710:                                   ; preds = %cond.true.664
  br i1 false, label %cond.true.711, label %cond.false.712

cond.true.711:                                    ; preds = %cond.false.710
  br i1 false, label %cond.true.888, label %lor.lhs.false.862

cond.false.712:                                   ; preds = %cond.false.710
  %79 = load i64, i64* @Vfontset_table, align 8
  %call713 = call i64 @ASIZE(i64 %79)
  %mul714 = mul nsw i64 2, %call713
  %conv715 = trunc i64 %mul714 to i16
  %conv716 = sext i16 %conv715 to i32
  %add717 = add nsw i32 0, %conv716
  %mul718 = mul nsw i32 0, %add717
  %sub719 = sub nsw i32 %mul718, 1
  %cmp720 = icmp slt i32 %sub719, 0
  br i1 %cmp720, label %cond.true.722, label %cond.false.746

cond.true.722:                                    ; preds = %cond.false.712
  %80 = load i64, i64* @Vfontset_table, align 8
  %call723 = call i64 @ASIZE(i64 %80)
  %mul724 = mul nsw i64 2, %call723
  %conv725 = trunc i64 %mul724 to i16
  %conv726 = sext i16 %conv725 to i32
  %add727 = add nsw i32 0, %conv726
  %mul728 = mul nsw i32 0, %add727
  %add729 = add nsw i32 %mul728, 0
  %neg730 = xor i32 %add729, -1
  %cmp731 = icmp eq i32 %neg730, -1
  %conv732 = zext i1 %cmp731 to i32
  %sub733 = sub nsw i32 0, %conv732
  %81 = load i64, i64* @Vfontset_table, align 8
  %call734 = call i64 @ASIZE(i64 %81)
  %mul735 = mul nsw i64 2, %call734
  %conv736 = trunc i64 %mul735 to i16
  %conv737 = sext i16 %conv736 to i32
  %add738 = add nsw i32 0, %conv737
  %mul739 = mul nsw i32 0, %add738
  %add740 = add nsw i32 %mul739, 1
  %shl741 = shl i32 %add740, 30
  %sub742 = sub nsw i32 %shl741, 1
  %mul743 = mul nsw i32 %sub742, 2
  %add744 = add nsw i32 %mul743, 1
  %sub745 = sub nsw i32 %sub733, %add744
  br label %cond.end.754

cond.false.746:                                   ; preds = %cond.false.712
  %82 = load i64, i64* @Vfontset_table, align 8
  %call747 = call i64 @ASIZE(i64 %82)
  %mul748 = mul nsw i64 2, %call747
  %conv749 = trunc i64 %mul748 to i16
  %conv750 = sext i16 %conv749 to i32
  %add751 = add nsw i32 0, %conv750
  %mul752 = mul nsw i32 0, %add751
  %add753 = add nsw i32 %mul752, 0
  br label %cond.end.754

cond.end.754:                                     ; preds = %cond.false.746, %cond.true.722
  %cond755 = phi i32 [ %sub745, %cond.true.722 ], [ %add753, %cond.false.746 ]
  %div756 = sdiv i32 %cond755, 8
  %83 = load i64, i64* @Vfontset_table, align 8
  %call757 = call i64 @ASIZE(i64 %83)
  %mul758 = mul nsw i64 2, %call757
  %conv759 = trunc i64 %mul758 to i16
  %conv760 = sext i16 %conv759 to i32
  %cmp761 = icmp slt i32 %div756, %conv760
  br i1 %cmp761, label %cond.true.888, label %lor.lhs.false.862

cond.false.763:                                   ; preds = %lor.lhs.false.663
  br i1 false, label %cond.true.764, label %cond.false.765

cond.true.764:                                    ; preds = %cond.false.763
  br i1 false, label %cond.true.888, label %lor.lhs.false.862

cond.false.765:                                   ; preds = %cond.false.763
  %84 = load i64, i64* @Vfontset_table, align 8
  %call766 = call i64 @ASIZE(i64 %84)
  %mul767 = mul nsw i64 2, %call766
  %conv768 = trunc i64 %mul767 to i16
  %conv769 = sext i16 %conv768 to i32
  %cmp770 = icmp slt i32 %conv769, 0
  br i1 %cmp770, label %cond.true.772, label %cond.false.823

cond.true.772:                                    ; preds = %cond.false.765
  %85 = load i64, i64* @Vfontset_table, align 8
  %call773 = call i64 @ASIZE(i64 %85)
  %mul774 = mul nsw i64 2, %call773
  %conv775 = trunc i64 %mul774 to i16
  %conv776 = sext i16 %conv775 to i32
  %86 = load i64, i64* @Vfontset_table, align 8
  %call777 = call i64 @ASIZE(i64 %86)
  %mul778 = mul nsw i64 2, %call777
  %conv779 = trunc i64 %mul778 to i16
  %conv780 = sext i16 %conv779 to i32
  %add781 = add nsw i32 0, %conv780
  %mul782 = mul nsw i32 0, %add781
  %sub783 = sub nsw i32 %mul782, 1
  %cmp784 = icmp slt i32 %sub783, 0
  br i1 %cmp784, label %cond.true.786, label %cond.false.810

cond.true.786:                                    ; preds = %cond.true.772
  %87 = load i64, i64* @Vfontset_table, align 8
  %call787 = call i64 @ASIZE(i64 %87)
  %mul788 = mul nsw i64 2, %call787
  %conv789 = trunc i64 %mul788 to i16
  %conv790 = sext i16 %conv789 to i32
  %add791 = add nsw i32 0, %conv790
  %mul792 = mul nsw i32 0, %add791
  %add793 = add nsw i32 %mul792, 0
  %neg794 = xor i32 %add793, -1
  %cmp795 = icmp eq i32 %neg794, -1
  %conv796 = zext i1 %cmp795 to i32
  %sub797 = sub nsw i32 0, %conv796
  %88 = load i64, i64* @Vfontset_table, align 8
  %call798 = call i64 @ASIZE(i64 %88)
  %mul799 = mul nsw i64 2, %call798
  %conv800 = trunc i64 %mul799 to i16
  %conv801 = sext i16 %conv800 to i32
  %add802 = add nsw i32 0, %conv801
  %mul803 = mul nsw i32 0, %add802
  %add804 = add nsw i32 %mul803, 1
  %shl805 = shl i32 %add804, 30
  %sub806 = sub nsw i32 %shl805, 1
  %mul807 = mul nsw i32 %sub806, 2
  %add808 = add nsw i32 %mul807, 1
  %sub809 = sub nsw i32 %sub797, %add808
  br label %cond.end.818

cond.false.810:                                   ; preds = %cond.true.772
  %89 = load i64, i64* @Vfontset_table, align 8
  %call811 = call i64 @ASIZE(i64 %89)
  %mul812 = mul nsw i64 2, %call811
  %conv813 = trunc i64 %mul812 to i16
  %conv814 = sext i16 %conv813 to i32
  %add815 = add nsw i32 0, %conv814
  %mul816 = mul nsw i32 0, %add815
  %add817 = add nsw i32 %mul816, 0
  br label %cond.end.818

cond.end.818:                                     ; preds = %cond.false.810, %cond.true.786
  %cond819 = phi i32 [ %sub809, %cond.true.786 ], [ %add817, %cond.false.810 ]
  %div820 = sdiv i32 %cond819, 8
  %cmp821 = icmp slt i32 %conv776, %div820
  br i1 %cmp821, label %cond.true.888, label %lor.lhs.false.862

cond.false.823:                                   ; preds = %cond.false.765
  %90 = load i64, i64* @Vfontset_table, align 8
  %call824 = call i64 @ASIZE(i64 %90)
  %mul825 = mul nsw i64 2, %call824
  %conv826 = trunc i64 %mul825 to i16
  %conv827 = sext i16 %conv826 to i32
  %add828 = add nsw i32 0, %conv827
  %mul829 = mul nsw i32 0, %add828
  %sub830 = sub nsw i32 %mul829, 1
  %cmp831 = icmp slt i32 %sub830, 0
  br i1 %cmp831, label %cond.true.833, label %cond.false.845

cond.true.833:                                    ; preds = %cond.false.823
  %91 = load i64, i64* @Vfontset_table, align 8
  %call834 = call i64 @ASIZE(i64 %91)
  %mul835 = mul nsw i64 2, %call834
  %conv836 = trunc i64 %mul835 to i16
  %conv837 = sext i16 %conv836 to i32
  %add838 = add nsw i32 0, %conv837
  %mul839 = mul nsw i32 0, %add838
  %add840 = add nsw i32 %mul839, 1
  %shl841 = shl i32 %add840, 30
  %sub842 = sub nsw i32 %shl841, 1
  %mul843 = mul nsw i32 %sub842, 2
  %add844 = add nsw i32 %mul843, 1
  br label %cond.end.853

cond.false.845:                                   ; preds = %cond.false.823
  %92 = load i64, i64* @Vfontset_table, align 8
  %call846 = call i64 @ASIZE(i64 %92)
  %mul847 = mul nsw i64 2, %call846
  %conv848 = trunc i64 %mul847 to i16
  %conv849 = sext i16 %conv848 to i32
  %add850 = add nsw i32 0, %conv849
  %mul851 = mul nsw i32 0, %add850
  %sub852 = sub nsw i32 %mul851, 1
  br label %cond.end.853

cond.end.853:                                     ; preds = %cond.false.845, %cond.true.833
  %cond854 = phi i32 [ %add844, %cond.true.833 ], [ %sub852, %cond.false.845 ]
  %div855 = sdiv i32 %cond854, 8
  %93 = load i64, i64* @Vfontset_table, align 8
  %call856 = call i64 @ASIZE(i64 %93)
  %mul857 = mul nsw i64 2, %call856
  %conv858 = trunc i64 %mul857 to i16
  %conv859 = sext i16 %conv858 to i32
  %cmp860 = icmp slt i32 %div855, %conv859
  br i1 %cmp860, label %cond.true.888, label %lor.lhs.false.862

lor.lhs.false.862:                                ; preds = %cond.end.853, %cond.end.818, %cond.true.764, %cond.end.754, %cond.true.711, %cond.end.705
  %94 = load i64, i64* @Vfontset_table, align 8
  %call863 = call i64 @ASIZE(i64 %94)
  %mul864 = mul nsw i64 2, %call863
  %conv865 = trunc i64 %mul864 to i16
  %conv866 = sext i16 %conv865 to i32
  %mul867 = mul nsw i32 %conv866, 8
  %mul868 = mul nsw i32 0, %mul867
  %sub869 = sub nsw i32 %mul868, 1
  %cmp870 = icmp slt i32 %sub869, 0
  br i1 %cmp870, label %land.lhs.true.872, label %lor.lhs.false.880

land.lhs.true.872:                                ; preds = %lor.lhs.false.862
  %95 = load i64, i64* @Vfontset_table, align 8
  %call873 = call i64 @ASIZE(i64 %95)
  %mul874 = mul nsw i64 2, %call873
  %conv875 = trunc i64 %mul874 to i16
  %conv876 = sext i16 %conv875 to i32
  %mul877 = mul nsw i32 %conv876, 8
  %cmp878 = icmp slt i32 %mul877, -32768
  br i1 %cmp878, label %cond.true.888, label %lor.lhs.false.880

lor.lhs.false.880:                                ; preds = %land.lhs.true.872, %lor.lhs.false.862
  %96 = load i64, i64* @Vfontset_table, align 8
  %call881 = call i64 @ASIZE(i64 %96)
  %mul882 = mul nsw i64 2, %call881
  %conv883 = trunc i64 %mul882 to i16
  %conv884 = sext i16 %conv883 to i32
  %mul885 = mul nsw i32 %conv884, 8
  %cmp886 = icmp slt i32 32767, %mul885
  br i1 %cmp886, label %cond.true.888, label %cond.false.917

cond.true.888:                                    ; preds = %lor.lhs.false.880, %land.lhs.true.872, %cond.end.853, %cond.end.818, %cond.true.764, %cond.end.754, %cond.true.711, %cond.end.705, %land.lhs.true.656
  %97 = load i64, i64* @Vfontset_table, align 8
  %call889 = call i64 @ASIZE(i64 %97)
  %mul890 = mul nsw i64 2, %call889
  %conv891 = trunc i64 %mul890 to i16
  %conv892 = zext i16 %conv891 to i32
  %mul893 = mul nsw i32 %conv892, 8
  %cmp894 = icmp sle i32 %mul893, 32767
  br i1 %cmp894, label %cond.true.896, label %cond.false.904

cond.true.896:                                    ; preds = %cond.true.888
  %98 = load i64, i64* @Vfontset_table, align 8
  %call897 = call i64 @ASIZE(i64 %98)
  %mul898 = mul nsw i64 2, %call897
  %conv899 = trunc i64 %mul898 to i16
  %conv900 = zext i16 %conv899 to i32
  %mul901 = mul nsw i32 %conv900, 8
  %conv902 = trunc i32 %mul901 to i16
  %conv903 = sext i16 %conv902 to i32
  br label %cond.end.914

cond.false.904:                                   ; preds = %cond.true.888
  %99 = load i64, i64* @Vfontset_table, align 8
  %call905 = call i64 @ASIZE(i64 %99)
  %mul906 = mul nsw i64 2, %call905
  %conv907 = trunc i64 %mul906 to i16
  %conv908 = zext i16 %conv907 to i32
  %mul909 = mul nsw i32 %conv908, 8
  %sub910 = sub nsw i32 %mul909, -32768
  %conv911 = trunc i32 %sub910 to i16
  %conv912 = sext i16 %conv911 to i32
  %add913 = add nsw i32 %conv912, -32768
  br label %cond.end.914

cond.end.914:                                     ; preds = %cond.false.904, %cond.true.896
  %cond915 = phi i32 [ %conv903, %cond.true.896 ], [ %add913, %cond.false.904 ]
  %conv916 = sext i32 %cond915 to i64
  store i64 %conv916, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then, label %lor.lhs.false.2841

cond.false.917:                                   ; preds = %lor.lhs.false.880
  %100 = load i64, i64* @Vfontset_table, align 8
  %call918 = call i64 @ASIZE(i64 %100)
  %mul919 = mul nsw i64 2, %call918
  %conv920 = trunc i64 %mul919 to i16
  %conv921 = zext i16 %conv920 to i32
  %mul922 = mul nsw i32 %conv921, 8
  %cmp923 = icmp sle i32 %mul922, 32767
  br i1 %cmp923, label %cond.true.925, label %cond.false.933

cond.true.925:                                    ; preds = %cond.false.917
  %101 = load i64, i64* @Vfontset_table, align 8
  %call926 = call i64 @ASIZE(i64 %101)
  %mul927 = mul nsw i64 2, %call926
  %conv928 = trunc i64 %mul927 to i16
  %conv929 = zext i16 %conv928 to i32
  %mul930 = mul nsw i32 %conv929, 8
  %conv931 = trunc i32 %mul930 to i16
  %conv932 = sext i16 %conv931 to i32
  br label %cond.end.943

cond.false.933:                                   ; preds = %cond.false.917
  %102 = load i64, i64* @Vfontset_table, align 8
  %call934 = call i64 @ASIZE(i64 %102)
  %mul935 = mul nsw i64 2, %call934
  %conv936 = trunc i64 %mul935 to i16
  %conv937 = zext i16 %conv936 to i32
  %mul938 = mul nsw i32 %conv937, 8
  %sub939 = sub nsw i32 %mul938, -32768
  %conv940 = trunc i32 %sub939 to i16
  %conv941 = sext i16 %conv940 to i32
  %add942 = add nsw i32 %conv941, -32768
  br label %cond.end.943

cond.end.943:                                     ; preds = %cond.false.933, %cond.true.925
  %cond944 = phi i32 [ %conv932, %cond.true.925 ], [ %add942, %cond.false.933 ]
  %conv945 = sext i32 %cond944 to i64
  store i64 %conv945, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then, label %lor.lhs.false.2841

cond.false.946:                                   ; preds = %cond.true.609
  %103 = load i64, i64* @Vfontset_table, align 8
  %call947 = call i64 @ASIZE(i64 %103)
  %mul948 = mul nsw i64 2, %call947
  %add949 = add nsw i64 0, %mul948
  %mul950 = mul nsw i64 0, %add949
  %sub951 = sub nsw i64 %mul950, 1
  %cmp952 = icmp slt i64 %sub951, 0
  br i1 %cmp952, label %cond.true.954, label %cond.false.975

cond.true.954:                                    ; preds = %cond.false.946
  %104 = load i64, i64* @Vfontset_table, align 8
  %call955 = call i64 @ASIZE(i64 %104)
  %mul956 = mul nsw i64 2, %call955
  %add957 = add nsw i64 0, %mul956
  %mul958 = mul nsw i64 0, %add957
  %add959 = add nsw i64 %mul958, 0
  %neg960 = xor i64 %add959, -1
  %cmp961 = icmp eq i64 %neg960, -1
  %conv962 = zext i1 %cmp961 to i32
  %sub963 = sub nsw i32 0, %conv962
  %conv964 = sext i32 %sub963 to i64
  %105 = load i64, i64* @Vfontset_table, align 8
  %call965 = call i64 @ASIZE(i64 %105)
  %mul966 = mul nsw i64 2, %call965
  %add967 = add nsw i64 0, %mul966
  %mul968 = mul nsw i64 0, %add967
  %add969 = add nsw i64 %mul968, 1
  %shl970 = shl i64 %add969, 62
  %sub971 = sub nsw i64 %shl970, 1
  %mul972 = mul nsw i64 %sub971, 2
  %add973 = add nsw i64 %mul972, 1
  %sub974 = sub nsw i64 %conv964, %add973
  br label %cond.end.981

cond.false.975:                                   ; preds = %cond.false.946
  %106 = load i64, i64* @Vfontset_table, align 8
  %call976 = call i64 @ASIZE(i64 %106)
  %mul977 = mul nsw i64 2, %call976
  %add978 = add nsw i64 0, %mul977
  %mul979 = mul nsw i64 0, %add978
  %add980 = add nsw i64 %mul979, 0
  br label %cond.end.981

cond.end.981:                                     ; preds = %cond.false.975, %cond.true.954
  %cond982 = phi i64 [ %sub974, %cond.true.954 ], [ %add980, %cond.false.975 ]
  %cmp983 = icmp eq i64 %cond982, 0
  br i1 %cmp983, label %land.lhs.true.985, label %lor.lhs.false.990

land.lhs.true.985:                                ; preds = %cond.end.981
  %107 = load i64, i64* @Vfontset_table, align 8
  %call986 = call i64 @ASIZE(i64 %107)
  %mul987 = mul nsw i64 2, %call986
  %cmp988 = icmp slt i64 %mul987, 0
  br i1 %cmp988, label %cond.true.1171, label %lor.lhs.false.990

lor.lhs.false.990:                                ; preds = %land.lhs.true.985, %cond.end.981
  br i1 false, label %cond.true.991, label %cond.false.1071

cond.true.991:                                    ; preds = %lor.lhs.false.990
  %108 = load i64, i64* @Vfontset_table, align 8
  %call992 = call i64 @ASIZE(i64 %108)
  %mul993 = mul nsw i64 2, %call992
  %cmp994 = icmp slt i64 %mul993, 0
  br i1 %cmp994, label %cond.true.996, label %cond.false.1027

cond.true.996:                                    ; preds = %cond.true.991
  %109 = load i64, i64* @Vfontset_table, align 8
  %call997 = call i64 @ASIZE(i64 %109)
  %mul998 = mul nsw i64 2, %call997
  %110 = load i64, i64* @Vfontset_table, align 8
  %call999 = call i64 @ASIZE(i64 %110)
  %mul1000 = mul nsw i64 2, %call999
  %add1001 = add nsw i64 0, %mul1000
  %mul1002 = mul nsw i64 0, %add1001
  %sub1003 = sub nsw i64 %mul1002, 1
  %cmp1004 = icmp slt i64 %sub1003, 0
  br i1 %cmp1004, label %cond.true.1006, label %cond.false.1016

cond.true.1006:                                   ; preds = %cond.true.996
  %111 = load i64, i64* @Vfontset_table, align 8
  %call1007 = call i64 @ASIZE(i64 %111)
  %mul1008 = mul nsw i64 2, %call1007
  %add1009 = add nsw i64 0, %mul1008
  %mul1010 = mul nsw i64 0, %add1009
  %add1011 = add nsw i64 %mul1010, 1
  %shl1012 = shl i64 %add1011, 62
  %sub1013 = sub nsw i64 %shl1012, 1
  %mul1014 = mul nsw i64 %sub1013, 2
  %add1015 = add nsw i64 %mul1014, 1
  br label %cond.end.1022

cond.false.1016:                                  ; preds = %cond.true.996
  %112 = load i64, i64* @Vfontset_table, align 8
  %call1017 = call i64 @ASIZE(i64 %112)
  %mul1018 = mul nsw i64 2, %call1017
  %add1019 = add nsw i64 0, %mul1018
  %mul1020 = mul nsw i64 0, %add1019
  %sub1021 = sub nsw i64 %mul1020, 1
  br label %cond.end.1022

cond.end.1022:                                    ; preds = %cond.false.1016, %cond.true.1006
  %cond1023 = phi i64 [ %add1015, %cond.true.1006 ], [ %sub1021, %cond.false.1016 ]
  %div1024 = sdiv i64 %cond1023, 8
  %cmp1025 = icmp slt i64 %mul998, %div1024
  br i1 %cmp1025, label %cond.true.1171, label %lor.lhs.false.1151

cond.false.1027:                                  ; preds = %cond.true.991
  br i1 false, label %cond.true.1028, label %cond.false.1029

cond.true.1028:                                   ; preds = %cond.false.1027
  br i1 false, label %cond.true.1171, label %lor.lhs.false.1151

cond.false.1029:                                  ; preds = %cond.false.1027
  %113 = load i64, i64* @Vfontset_table, align 8
  %call1030 = call i64 @ASIZE(i64 %113)
  %mul1031 = mul nsw i64 2, %call1030
  %add1032 = add nsw i64 0, %mul1031
  %mul1033 = mul nsw i64 0, %add1032
  %sub1034 = sub nsw i64 %mul1033, 1
  %cmp1035 = icmp slt i64 %sub1034, 0
  br i1 %cmp1035, label %cond.true.1037, label %cond.false.1058

cond.true.1037:                                   ; preds = %cond.false.1029
  %114 = load i64, i64* @Vfontset_table, align 8
  %call1038 = call i64 @ASIZE(i64 %114)
  %mul1039 = mul nsw i64 2, %call1038
  %add1040 = add nsw i64 0, %mul1039
  %mul1041 = mul nsw i64 0, %add1040
  %add1042 = add nsw i64 %mul1041, 0
  %neg1043 = xor i64 %add1042, -1
  %cmp1044 = icmp eq i64 %neg1043, -1
  %conv1045 = zext i1 %cmp1044 to i32
  %sub1046 = sub nsw i32 0, %conv1045
  %conv1047 = sext i32 %sub1046 to i64
  %115 = load i64, i64* @Vfontset_table, align 8
  %call1048 = call i64 @ASIZE(i64 %115)
  %mul1049 = mul nsw i64 2, %call1048
  %add1050 = add nsw i64 0, %mul1049
  %mul1051 = mul nsw i64 0, %add1050
  %add1052 = add nsw i64 %mul1051, 1
  %shl1053 = shl i64 %add1052, 62
  %sub1054 = sub nsw i64 %shl1053, 1
  %mul1055 = mul nsw i64 %sub1054, 2
  %add1056 = add nsw i64 %mul1055, 1
  %sub1057 = sub nsw i64 %conv1047, %add1056
  br label %cond.end.1064

cond.false.1058:                                  ; preds = %cond.false.1029
  %116 = load i64, i64* @Vfontset_table, align 8
  %call1059 = call i64 @ASIZE(i64 %116)
  %mul1060 = mul nsw i64 2, %call1059
  %add1061 = add nsw i64 0, %mul1060
  %mul1062 = mul nsw i64 0, %add1061
  %add1063 = add nsw i64 %mul1062, 0
  br label %cond.end.1064

cond.end.1064:                                    ; preds = %cond.false.1058, %cond.true.1037
  %cond1065 = phi i64 [ %sub1057, %cond.true.1037 ], [ %add1063, %cond.false.1058 ]
  %div1066 = sdiv i64 %cond1065, 8
  %117 = load i64, i64* @Vfontset_table, align 8
  %call1067 = call i64 @ASIZE(i64 %117)
  %mul1068 = mul nsw i64 2, %call1067
  %cmp1069 = icmp slt i64 %div1066, %mul1068
  br i1 %cmp1069, label %cond.true.1171, label %lor.lhs.false.1151

cond.false.1071:                                  ; preds = %lor.lhs.false.990
  br i1 false, label %cond.true.1072, label %cond.false.1073

cond.true.1072:                                   ; preds = %cond.false.1071
  br i1 false, label %cond.true.1171, label %lor.lhs.false.1151

cond.false.1073:                                  ; preds = %cond.false.1071
  %118 = load i64, i64* @Vfontset_table, align 8
  %call1074 = call i64 @ASIZE(i64 %118)
  %mul1075 = mul nsw i64 2, %call1074
  %cmp1076 = icmp slt i64 %mul1075, 0
  br i1 %cmp1076, label %cond.true.1078, label %cond.false.1120

cond.true.1078:                                   ; preds = %cond.false.1073
  %119 = load i64, i64* @Vfontset_table, align 8
  %call1079 = call i64 @ASIZE(i64 %119)
  %mul1080 = mul nsw i64 2, %call1079
  %120 = load i64, i64* @Vfontset_table, align 8
  %call1081 = call i64 @ASIZE(i64 %120)
  %mul1082 = mul nsw i64 2, %call1081
  %add1083 = add nsw i64 0, %mul1082
  %mul1084 = mul nsw i64 0, %add1083
  %sub1085 = sub nsw i64 %mul1084, 1
  %cmp1086 = icmp slt i64 %sub1085, 0
  br i1 %cmp1086, label %cond.true.1088, label %cond.false.1109

cond.true.1088:                                   ; preds = %cond.true.1078
  %121 = load i64, i64* @Vfontset_table, align 8
  %call1089 = call i64 @ASIZE(i64 %121)
  %mul1090 = mul nsw i64 2, %call1089
  %add1091 = add nsw i64 0, %mul1090
  %mul1092 = mul nsw i64 0, %add1091
  %add1093 = add nsw i64 %mul1092, 0
  %neg1094 = xor i64 %add1093, -1
  %cmp1095 = icmp eq i64 %neg1094, -1
  %conv1096 = zext i1 %cmp1095 to i32
  %sub1097 = sub nsw i32 0, %conv1096
  %conv1098 = sext i32 %sub1097 to i64
  %122 = load i64, i64* @Vfontset_table, align 8
  %call1099 = call i64 @ASIZE(i64 %122)
  %mul1100 = mul nsw i64 2, %call1099
  %add1101 = add nsw i64 0, %mul1100
  %mul1102 = mul nsw i64 0, %add1101
  %add1103 = add nsw i64 %mul1102, 1
  %shl1104 = shl i64 %add1103, 62
  %sub1105 = sub nsw i64 %shl1104, 1
  %mul1106 = mul nsw i64 %sub1105, 2
  %add1107 = add nsw i64 %mul1106, 1
  %sub1108 = sub nsw i64 %conv1098, %add1107
  br label %cond.end.1115

cond.false.1109:                                  ; preds = %cond.true.1078
  %123 = load i64, i64* @Vfontset_table, align 8
  %call1110 = call i64 @ASIZE(i64 %123)
  %mul1111 = mul nsw i64 2, %call1110
  %add1112 = add nsw i64 0, %mul1111
  %mul1113 = mul nsw i64 0, %add1112
  %add1114 = add nsw i64 %mul1113, 0
  br label %cond.end.1115

cond.end.1115:                                    ; preds = %cond.false.1109, %cond.true.1088
  %cond1116 = phi i64 [ %sub1108, %cond.true.1088 ], [ %add1114, %cond.false.1109 ]
  %div1117 = sdiv i64 %cond1116, 8
  %cmp1118 = icmp slt i64 %mul1080, %div1117
  br i1 %cmp1118, label %cond.true.1171, label %lor.lhs.false.1151

cond.false.1120:                                  ; preds = %cond.false.1073
  %124 = load i64, i64* @Vfontset_table, align 8
  %call1121 = call i64 @ASIZE(i64 %124)
  %mul1122 = mul nsw i64 2, %call1121
  %add1123 = add nsw i64 0, %mul1122
  %mul1124 = mul nsw i64 0, %add1123
  %sub1125 = sub nsw i64 %mul1124, 1
  %cmp1126 = icmp slt i64 %sub1125, 0
  br i1 %cmp1126, label %cond.true.1128, label %cond.false.1138

cond.true.1128:                                   ; preds = %cond.false.1120
  %125 = load i64, i64* @Vfontset_table, align 8
  %call1129 = call i64 @ASIZE(i64 %125)
  %mul1130 = mul nsw i64 2, %call1129
  %add1131 = add nsw i64 0, %mul1130
  %mul1132 = mul nsw i64 0, %add1131
  %add1133 = add nsw i64 %mul1132, 1
  %shl1134 = shl i64 %add1133, 62
  %sub1135 = sub nsw i64 %shl1134, 1
  %mul1136 = mul nsw i64 %sub1135, 2
  %add1137 = add nsw i64 %mul1136, 1
  br label %cond.end.1144

cond.false.1138:                                  ; preds = %cond.false.1120
  %126 = load i64, i64* @Vfontset_table, align 8
  %call1139 = call i64 @ASIZE(i64 %126)
  %mul1140 = mul nsw i64 2, %call1139
  %add1141 = add nsw i64 0, %mul1140
  %mul1142 = mul nsw i64 0, %add1141
  %sub1143 = sub nsw i64 %mul1142, 1
  br label %cond.end.1144

cond.end.1144:                                    ; preds = %cond.false.1138, %cond.true.1128
  %cond1145 = phi i64 [ %add1137, %cond.true.1128 ], [ %sub1143, %cond.false.1138 ]
  %div1146 = sdiv i64 %cond1145, 8
  %127 = load i64, i64* @Vfontset_table, align 8
  %call1147 = call i64 @ASIZE(i64 %127)
  %mul1148 = mul nsw i64 2, %call1147
  %cmp1149 = icmp slt i64 %div1146, %mul1148
  br i1 %cmp1149, label %cond.true.1171, label %lor.lhs.false.1151

lor.lhs.false.1151:                               ; preds = %cond.end.1144, %cond.end.1115, %cond.true.1072, %cond.end.1064, %cond.true.1028, %cond.end.1022
  %128 = load i64, i64* @Vfontset_table, align 8
  %call1152 = call i64 @ASIZE(i64 %128)
  %mul1153 = mul nsw i64 2, %call1152
  %mul1154 = mul nsw i64 %mul1153, 8
  %mul1155 = mul nsw i64 0, %mul1154
  %sub1156 = sub nsw i64 %mul1155, 1
  %cmp1157 = icmp slt i64 %sub1156, 0
  br i1 %cmp1157, label %land.lhs.true.1159, label %lor.lhs.false.1165

land.lhs.true.1159:                               ; preds = %lor.lhs.false.1151
  %129 = load i64, i64* @Vfontset_table, align 8
  %call1160 = call i64 @ASIZE(i64 %129)
  %mul1161 = mul nsw i64 2, %call1160
  %mul1162 = mul nsw i64 %mul1161, 8
  %cmp1163 = icmp slt i64 %mul1162, -32768
  br i1 %cmp1163, label %cond.true.1171, label %lor.lhs.false.1165

lor.lhs.false.1165:                               ; preds = %land.lhs.true.1159, %lor.lhs.false.1151
  %130 = load i64, i64* @Vfontset_table, align 8
  %call1166 = call i64 @ASIZE(i64 %130)
  %mul1167 = mul nsw i64 2, %call1166
  %mul1168 = mul nsw i64 %mul1167, 8
  %cmp1169 = icmp slt i64 32767, %mul1168
  br i1 %cmp1169, label %cond.true.1171, label %cond.false.1200

cond.true.1171:                                   ; preds = %lor.lhs.false.1165, %land.lhs.true.1159, %cond.end.1144, %cond.end.1115, %cond.true.1072, %cond.end.1064, %cond.true.1028, %cond.end.1022, %land.lhs.true.985
  %131 = load i64, i64* @Vfontset_table, align 8
  %call1172 = call i64 @ASIZE(i64 %131)
  %mul1173 = mul nsw i64 2, %call1172
  %conv1174 = trunc i64 %mul1173 to i16
  %conv1175 = zext i16 %conv1174 to i32
  %mul1176 = mul nsw i32 %conv1175, 8
  %cmp1177 = icmp sle i32 %mul1176, 32767
  br i1 %cmp1177, label %cond.true.1179, label %cond.false.1187

cond.true.1179:                                   ; preds = %cond.true.1171
  %132 = load i64, i64* @Vfontset_table, align 8
  %call1180 = call i64 @ASIZE(i64 %132)
  %mul1181 = mul nsw i64 2, %call1180
  %conv1182 = trunc i64 %mul1181 to i16
  %conv1183 = zext i16 %conv1182 to i32
  %mul1184 = mul nsw i32 %conv1183, 8
  %conv1185 = trunc i32 %mul1184 to i16
  %conv1186 = sext i16 %conv1185 to i32
  br label %cond.end.1197

cond.false.1187:                                  ; preds = %cond.true.1171
  %133 = load i64, i64* @Vfontset_table, align 8
  %call1188 = call i64 @ASIZE(i64 %133)
  %mul1189 = mul nsw i64 2, %call1188
  %conv1190 = trunc i64 %mul1189 to i16
  %conv1191 = zext i16 %conv1190 to i32
  %mul1192 = mul nsw i32 %conv1191, 8
  %sub1193 = sub nsw i32 %mul1192, -32768
  %conv1194 = trunc i32 %sub1193 to i16
  %conv1195 = sext i16 %conv1194 to i32
  %add1196 = add nsw i32 %conv1195, -32768
  br label %cond.end.1197

cond.end.1197:                                    ; preds = %cond.false.1187, %cond.true.1179
  %cond1198 = phi i32 [ %conv1186, %cond.true.1179 ], [ %add1196, %cond.false.1187 ]
  %conv1199 = sext i32 %cond1198 to i64
  store i64 %conv1199, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then, label %lor.lhs.false.2841

cond.false.1200:                                  ; preds = %lor.lhs.false.1165
  %134 = load i64, i64* @Vfontset_table, align 8
  %call1201 = call i64 @ASIZE(i64 %134)
  %mul1202 = mul nsw i64 2, %call1201
  %conv1203 = trunc i64 %mul1202 to i16
  %conv1204 = zext i16 %conv1203 to i32
  %mul1205 = mul nsw i32 %conv1204, 8
  %cmp1206 = icmp sle i32 %mul1205, 32767
  br i1 %cmp1206, label %cond.true.1208, label %cond.false.1216

cond.true.1208:                                   ; preds = %cond.false.1200
  %135 = load i64, i64* @Vfontset_table, align 8
  %call1209 = call i64 @ASIZE(i64 %135)
  %mul1210 = mul nsw i64 2, %call1209
  %conv1211 = trunc i64 %mul1210 to i16
  %conv1212 = zext i16 %conv1211 to i32
  %mul1213 = mul nsw i32 %conv1212, 8
  %conv1214 = trunc i32 %mul1213 to i16
  %conv1215 = sext i16 %conv1214 to i32
  br label %cond.end.1226

cond.false.1216:                                  ; preds = %cond.false.1200
  %136 = load i64, i64* @Vfontset_table, align 8
  %call1217 = call i64 @ASIZE(i64 %136)
  %mul1218 = mul nsw i64 2, %call1217
  %conv1219 = trunc i64 %mul1218 to i16
  %conv1220 = zext i16 %conv1219 to i32
  %mul1221 = mul nsw i32 %conv1220, 8
  %sub1222 = sub nsw i32 %mul1221, -32768
  %conv1223 = trunc i32 %sub1222 to i16
  %conv1224 = sext i16 %conv1223 to i32
  %add1225 = add nsw i32 %conv1224, -32768
  br label %cond.end.1226

cond.end.1226:                                    ; preds = %cond.false.1216, %cond.true.1208
  %cond1227 = phi i32 [ %conv1215, %cond.true.1208 ], [ %add1225, %cond.false.1216 ]
  %conv1228 = sext i32 %cond1227 to i64
  store i64 %conv1228, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then, label %lor.lhs.false.2841

cond.false.1229:                                  ; preds = %cond.false.608
  br i1 false, label %cond.true.1230, label %cond.false.1794

cond.true.1230:                                   ; preds = %cond.false.1229
  br i1 false, label %cond.true.1231, label %cond.false.1525

cond.true.1231:                                   ; preds = %cond.true.1230
  %137 = load i64, i64* @Vfontset_table, align 8
  %call1232 = call i64 @ASIZE(i64 %137)
  %mul1233 = mul nsw i64 2, %call1232
  %conv1234 = trunc i64 %mul1233 to i32
  %add1235 = add nsw i32 0, %conv1234
  %mul1236 = mul nsw i32 0, %add1235
  %sub1237 = sub nsw i32 %mul1236, 1
  %cmp1238 = icmp slt i32 %sub1237, 0
  br i1 %cmp1238, label %cond.true.1240, label %cond.false.1262

cond.true.1240:                                   ; preds = %cond.true.1231
  %138 = load i64, i64* @Vfontset_table, align 8
  %call1241 = call i64 @ASIZE(i64 %138)
  %mul1242 = mul nsw i64 2, %call1241
  %conv1243 = trunc i64 %mul1242 to i32
  %add1244 = add nsw i32 0, %conv1243
  %mul1245 = mul nsw i32 0, %add1244
  %add1246 = add nsw i32 %mul1245, 0
  %neg1247 = xor i32 %add1246, -1
  %cmp1248 = icmp eq i32 %neg1247, -1
  %conv1249 = zext i1 %cmp1248 to i32
  %sub1250 = sub nsw i32 0, %conv1249
  %139 = load i64, i64* @Vfontset_table, align 8
  %call1251 = call i64 @ASIZE(i64 %139)
  %mul1252 = mul nsw i64 2, %call1251
  %conv1253 = trunc i64 %mul1252 to i32
  %add1254 = add nsw i32 0, %conv1253
  %mul1255 = mul nsw i32 0, %add1254
  %add1256 = add nsw i32 %mul1255, 1
  %shl1257 = shl i32 %add1256, 30
  %sub1258 = sub nsw i32 %shl1257, 1
  %mul1259 = mul nsw i32 %sub1258, 2
  %add1260 = add nsw i32 %mul1259, 1
  %sub1261 = sub nsw i32 %sub1250, %add1260
  br label %cond.end.1269

cond.false.1262:                                  ; preds = %cond.true.1231
  %140 = load i64, i64* @Vfontset_table, align 8
  %call1263 = call i64 @ASIZE(i64 %140)
  %mul1264 = mul nsw i64 2, %call1263
  %conv1265 = trunc i64 %mul1264 to i32
  %add1266 = add nsw i32 0, %conv1265
  %mul1267 = mul nsw i32 0, %add1266
  %add1268 = add nsw i32 %mul1267, 0
  br label %cond.end.1269

cond.end.1269:                                    ; preds = %cond.false.1262, %cond.true.1240
  %cond1270 = phi i32 [ %sub1261, %cond.true.1240 ], [ %add1268, %cond.false.1262 ]
  %cmp1271 = icmp eq i32 %cond1270, 0
  br i1 %cmp1271, label %land.lhs.true.1273, label %lor.lhs.false.1279

land.lhs.true.1273:                               ; preds = %cond.end.1269
  %141 = load i64, i64* @Vfontset_table, align 8
  %call1274 = call i64 @ASIZE(i64 %141)
  %mul1275 = mul nsw i64 2, %call1274
  %conv1276 = trunc i64 %mul1275 to i32
  %cmp1277 = icmp slt i32 %conv1276, 0
  br i1 %cmp1277, label %cond.true.1481, label %lor.lhs.false.1279

lor.lhs.false.1279:                               ; preds = %land.lhs.true.1273, %cond.end.1269
  br i1 false, label %cond.true.1280, label %cond.false.1369

cond.true.1280:                                   ; preds = %lor.lhs.false.1279
  %142 = load i64, i64* @Vfontset_table, align 8
  %call1281 = call i64 @ASIZE(i64 %142)
  %mul1282 = mul nsw i64 2, %call1281
  %conv1283 = trunc i64 %mul1282 to i32
  %cmp1284 = icmp slt i32 %conv1283, 0
  br i1 %cmp1284, label %cond.true.1286, label %cond.false.1321

cond.true.1286:                                   ; preds = %cond.true.1280
  %143 = load i64, i64* @Vfontset_table, align 8
  %call1287 = call i64 @ASIZE(i64 %143)
  %mul1288 = mul nsw i64 2, %call1287
  %conv1289 = trunc i64 %mul1288 to i32
  %144 = load i64, i64* @Vfontset_table, align 8
  %call1290 = call i64 @ASIZE(i64 %144)
  %mul1291 = mul nsw i64 2, %call1290
  %conv1292 = trunc i64 %mul1291 to i32
  %add1293 = add nsw i32 0, %conv1292
  %mul1294 = mul nsw i32 0, %add1293
  %sub1295 = sub nsw i32 %mul1294, 1
  %cmp1296 = icmp slt i32 %sub1295, 0
  br i1 %cmp1296, label %cond.true.1298, label %cond.false.1309

cond.true.1298:                                   ; preds = %cond.true.1286
  %145 = load i64, i64* @Vfontset_table, align 8
  %call1299 = call i64 @ASIZE(i64 %145)
  %mul1300 = mul nsw i64 2, %call1299
  %conv1301 = trunc i64 %mul1300 to i32
  %add1302 = add nsw i32 0, %conv1301
  %mul1303 = mul nsw i32 0, %add1302
  %add1304 = add nsw i32 %mul1303, 1
  %shl1305 = shl i32 %add1304, 30
  %sub1306 = sub nsw i32 %shl1305, 1
  %mul1307 = mul nsw i32 %sub1306, 2
  %add1308 = add nsw i32 %mul1307, 1
  br label %cond.end.1316

cond.false.1309:                                  ; preds = %cond.true.1286
  %146 = load i64, i64* @Vfontset_table, align 8
  %call1310 = call i64 @ASIZE(i64 %146)
  %mul1311 = mul nsw i64 2, %call1310
  %conv1312 = trunc i64 %mul1311 to i32
  %add1313 = add nsw i32 0, %conv1312
  %mul1314 = mul nsw i32 0, %add1313
  %sub1315 = sub nsw i32 %mul1314, 1
  br label %cond.end.1316

cond.end.1316:                                    ; preds = %cond.false.1309, %cond.true.1298
  %cond1317 = phi i32 [ %add1308, %cond.true.1298 ], [ %sub1315, %cond.false.1309 ]
  %div1318 = sdiv i32 %cond1317, 8
  %cmp1319 = icmp slt i32 %conv1289, %div1318
  br i1 %cmp1319, label %cond.true.1481, label %lor.lhs.false.1458

cond.false.1321:                                  ; preds = %cond.true.1280
  br i1 false, label %cond.true.1322, label %cond.false.1323

cond.true.1322:                                   ; preds = %cond.false.1321
  br i1 false, label %cond.true.1481, label %lor.lhs.false.1458

cond.false.1323:                                  ; preds = %cond.false.1321
  %147 = load i64, i64* @Vfontset_table, align 8
  %call1324 = call i64 @ASIZE(i64 %147)
  %mul1325 = mul nsw i64 2, %call1324
  %conv1326 = trunc i64 %mul1325 to i32
  %add1327 = add nsw i32 0, %conv1326
  %mul1328 = mul nsw i32 0, %add1327
  %sub1329 = sub nsw i32 %mul1328, 1
  %cmp1330 = icmp slt i32 %sub1329, 0
  br i1 %cmp1330, label %cond.true.1332, label %cond.false.1354

cond.true.1332:                                   ; preds = %cond.false.1323
  %148 = load i64, i64* @Vfontset_table, align 8
  %call1333 = call i64 @ASIZE(i64 %148)
  %mul1334 = mul nsw i64 2, %call1333
  %conv1335 = trunc i64 %mul1334 to i32
  %add1336 = add nsw i32 0, %conv1335
  %mul1337 = mul nsw i32 0, %add1336
  %add1338 = add nsw i32 %mul1337, 0
  %neg1339 = xor i32 %add1338, -1
  %cmp1340 = icmp eq i32 %neg1339, -1
  %conv1341 = zext i1 %cmp1340 to i32
  %sub1342 = sub nsw i32 0, %conv1341
  %149 = load i64, i64* @Vfontset_table, align 8
  %call1343 = call i64 @ASIZE(i64 %149)
  %mul1344 = mul nsw i64 2, %call1343
  %conv1345 = trunc i64 %mul1344 to i32
  %add1346 = add nsw i32 0, %conv1345
  %mul1347 = mul nsw i32 0, %add1346
  %add1348 = add nsw i32 %mul1347, 1
  %shl1349 = shl i32 %add1348, 30
  %sub1350 = sub nsw i32 %shl1349, 1
  %mul1351 = mul nsw i32 %sub1350, 2
  %add1352 = add nsw i32 %mul1351, 1
  %sub1353 = sub nsw i32 %sub1342, %add1352
  br label %cond.end.1361

cond.false.1354:                                  ; preds = %cond.false.1323
  %150 = load i64, i64* @Vfontset_table, align 8
  %call1355 = call i64 @ASIZE(i64 %150)
  %mul1356 = mul nsw i64 2, %call1355
  %conv1357 = trunc i64 %mul1356 to i32
  %add1358 = add nsw i32 0, %conv1357
  %mul1359 = mul nsw i32 0, %add1358
  %add1360 = add nsw i32 %mul1359, 0
  br label %cond.end.1361

cond.end.1361:                                    ; preds = %cond.false.1354, %cond.true.1332
  %cond1362 = phi i32 [ %sub1353, %cond.true.1332 ], [ %add1360, %cond.false.1354 ]
  %div1363 = sdiv i32 %cond1362, 8
  %151 = load i64, i64* @Vfontset_table, align 8
  %call1364 = call i64 @ASIZE(i64 %151)
  %mul1365 = mul nsw i64 2, %call1364
  %conv1366 = trunc i64 %mul1365 to i32
  %cmp1367 = icmp slt i32 %div1363, %conv1366
  br i1 %cmp1367, label %cond.true.1481, label %lor.lhs.false.1458

cond.false.1369:                                  ; preds = %lor.lhs.false.1279
  br i1 false, label %cond.true.1370, label %cond.false.1371

cond.true.1370:                                   ; preds = %cond.false.1369
  br i1 false, label %cond.true.1481, label %lor.lhs.false.1458

cond.false.1371:                                  ; preds = %cond.false.1369
  %152 = load i64, i64* @Vfontset_table, align 8
  %call1372 = call i64 @ASIZE(i64 %152)
  %mul1373 = mul nsw i64 2, %call1372
  %conv1374 = trunc i64 %mul1373 to i32
  %cmp1375 = icmp slt i32 %conv1374, 0
  br i1 %cmp1375, label %cond.true.1377, label %cond.false.1423

cond.true.1377:                                   ; preds = %cond.false.1371
  %153 = load i64, i64* @Vfontset_table, align 8
  %call1378 = call i64 @ASIZE(i64 %153)
  %mul1379 = mul nsw i64 2, %call1378
  %conv1380 = trunc i64 %mul1379 to i32
  %154 = load i64, i64* @Vfontset_table, align 8
  %call1381 = call i64 @ASIZE(i64 %154)
  %mul1382 = mul nsw i64 2, %call1381
  %conv1383 = trunc i64 %mul1382 to i32
  %add1384 = add nsw i32 0, %conv1383
  %mul1385 = mul nsw i32 0, %add1384
  %sub1386 = sub nsw i32 %mul1385, 1
  %cmp1387 = icmp slt i32 %sub1386, 0
  br i1 %cmp1387, label %cond.true.1389, label %cond.false.1411

cond.true.1389:                                   ; preds = %cond.true.1377
  %155 = load i64, i64* @Vfontset_table, align 8
  %call1390 = call i64 @ASIZE(i64 %155)
  %mul1391 = mul nsw i64 2, %call1390
  %conv1392 = trunc i64 %mul1391 to i32
  %add1393 = add nsw i32 0, %conv1392
  %mul1394 = mul nsw i32 0, %add1393
  %add1395 = add nsw i32 %mul1394, 0
  %neg1396 = xor i32 %add1395, -1
  %cmp1397 = icmp eq i32 %neg1396, -1
  %conv1398 = zext i1 %cmp1397 to i32
  %sub1399 = sub nsw i32 0, %conv1398
  %156 = load i64, i64* @Vfontset_table, align 8
  %call1400 = call i64 @ASIZE(i64 %156)
  %mul1401 = mul nsw i64 2, %call1400
  %conv1402 = trunc i64 %mul1401 to i32
  %add1403 = add nsw i32 0, %conv1402
  %mul1404 = mul nsw i32 0, %add1403
  %add1405 = add nsw i32 %mul1404, 1
  %shl1406 = shl i32 %add1405, 30
  %sub1407 = sub nsw i32 %shl1406, 1
  %mul1408 = mul nsw i32 %sub1407, 2
  %add1409 = add nsw i32 %mul1408, 1
  %sub1410 = sub nsw i32 %sub1399, %add1409
  br label %cond.end.1418

cond.false.1411:                                  ; preds = %cond.true.1377
  %157 = load i64, i64* @Vfontset_table, align 8
  %call1412 = call i64 @ASIZE(i64 %157)
  %mul1413 = mul nsw i64 2, %call1412
  %conv1414 = trunc i64 %mul1413 to i32
  %add1415 = add nsw i32 0, %conv1414
  %mul1416 = mul nsw i32 0, %add1415
  %add1417 = add nsw i32 %mul1416, 0
  br label %cond.end.1418

cond.end.1418:                                    ; preds = %cond.false.1411, %cond.true.1389
  %cond1419 = phi i32 [ %sub1410, %cond.true.1389 ], [ %add1417, %cond.false.1411 ]
  %div1420 = sdiv i32 %cond1419, 8
  %cmp1421 = icmp slt i32 %conv1380, %div1420
  br i1 %cmp1421, label %cond.true.1481, label %lor.lhs.false.1458

cond.false.1423:                                  ; preds = %cond.false.1371
  %158 = load i64, i64* @Vfontset_table, align 8
  %call1424 = call i64 @ASIZE(i64 %158)
  %mul1425 = mul nsw i64 2, %call1424
  %conv1426 = trunc i64 %mul1425 to i32
  %add1427 = add nsw i32 0, %conv1426
  %mul1428 = mul nsw i32 0, %add1427
  %sub1429 = sub nsw i32 %mul1428, 1
  %cmp1430 = icmp slt i32 %sub1429, 0
  br i1 %cmp1430, label %cond.true.1432, label %cond.false.1443

cond.true.1432:                                   ; preds = %cond.false.1423
  %159 = load i64, i64* @Vfontset_table, align 8
  %call1433 = call i64 @ASIZE(i64 %159)
  %mul1434 = mul nsw i64 2, %call1433
  %conv1435 = trunc i64 %mul1434 to i32
  %add1436 = add nsw i32 0, %conv1435
  %mul1437 = mul nsw i32 0, %add1436
  %add1438 = add nsw i32 %mul1437, 1
  %shl1439 = shl i32 %add1438, 30
  %sub1440 = sub nsw i32 %shl1439, 1
  %mul1441 = mul nsw i32 %sub1440, 2
  %add1442 = add nsw i32 %mul1441, 1
  br label %cond.end.1450

cond.false.1443:                                  ; preds = %cond.false.1423
  %160 = load i64, i64* @Vfontset_table, align 8
  %call1444 = call i64 @ASIZE(i64 %160)
  %mul1445 = mul nsw i64 2, %call1444
  %conv1446 = trunc i64 %mul1445 to i32
  %add1447 = add nsw i32 0, %conv1446
  %mul1448 = mul nsw i32 0, %add1447
  %sub1449 = sub nsw i32 %mul1448, 1
  br label %cond.end.1450

cond.end.1450:                                    ; preds = %cond.false.1443, %cond.true.1432
  %cond1451 = phi i32 [ %add1442, %cond.true.1432 ], [ %sub1449, %cond.false.1443 ]
  %div1452 = sdiv i32 %cond1451, 8
  %161 = load i64, i64* @Vfontset_table, align 8
  %call1453 = call i64 @ASIZE(i64 %161)
  %mul1454 = mul nsw i64 2, %call1453
  %conv1455 = trunc i64 %mul1454 to i32
  %cmp1456 = icmp slt i32 %div1452, %conv1455
  br i1 %cmp1456, label %cond.true.1481, label %lor.lhs.false.1458

lor.lhs.false.1458:                               ; preds = %cond.end.1450, %cond.end.1418, %cond.true.1370, %cond.end.1361, %cond.true.1322, %cond.end.1316
  %162 = load i64, i64* @Vfontset_table, align 8
  %call1459 = call i64 @ASIZE(i64 %162)
  %mul1460 = mul nsw i64 2, %call1459
  %conv1461 = trunc i64 %mul1460 to i32
  %mul1462 = mul nsw i32 %conv1461, 8
  %mul1463 = mul nsw i32 0, %mul1462
  %sub1464 = sub nsw i32 %mul1463, 1
  %cmp1465 = icmp slt i32 %sub1464, 0
  br i1 %cmp1465, label %land.lhs.true.1467, label %lor.lhs.false.1474

land.lhs.true.1467:                               ; preds = %lor.lhs.false.1458
  %163 = load i64, i64* @Vfontset_table, align 8
  %call1468 = call i64 @ASIZE(i64 %163)
  %mul1469 = mul nsw i64 2, %call1468
  %conv1470 = trunc i64 %mul1469 to i32
  %mul1471 = mul nsw i32 %conv1470, 8
  %cmp1472 = icmp slt i32 %mul1471, -2147483648
  br i1 %cmp1472, label %cond.true.1481, label %lor.lhs.false.1474

lor.lhs.false.1474:                               ; preds = %land.lhs.true.1467, %lor.lhs.false.1458
  %164 = load i64, i64* @Vfontset_table, align 8
  %call1475 = call i64 @ASIZE(i64 %164)
  %mul1476 = mul nsw i64 2, %call1475
  %conv1477 = trunc i64 %mul1476 to i32
  %mul1478 = mul nsw i32 %conv1477, 8
  %cmp1479 = icmp slt i32 2147483647, %mul1478
  br i1 %cmp1479, label %cond.true.1481, label %cond.false.1503

cond.true.1481:                                   ; preds = %lor.lhs.false.1474, %land.lhs.true.1467, %cond.end.1450, %cond.end.1418, %cond.true.1370, %cond.end.1361, %cond.true.1322, %cond.end.1316, %land.lhs.true.1273
  %165 = load i64, i64* @Vfontset_table, align 8
  %call1482 = call i64 @ASIZE(i64 %165)
  %mul1483 = mul nsw i64 2, %call1482
  %conv1484 = trunc i64 %mul1483 to i32
  %mul1485 = mul i32 %conv1484, 8
  %cmp1486 = icmp ule i32 %mul1485, 2147483647
  br i1 %cmp1486, label %cond.true.1488, label %cond.false.1493

cond.true.1488:                                   ; preds = %cond.true.1481
  %166 = load i64, i64* @Vfontset_table, align 8
  %call1489 = call i64 @ASIZE(i64 %166)
  %mul1490 = mul nsw i64 2, %call1489
  %conv1491 = trunc i64 %mul1490 to i32
  %mul1492 = mul i32 %conv1491, 8
  br label %cond.end.1500

cond.false.1493:                                  ; preds = %cond.true.1481
  %167 = load i64, i64* @Vfontset_table, align 8
  %call1494 = call i64 @ASIZE(i64 %167)
  %mul1495 = mul nsw i64 2, %call1494
  %conv1496 = trunc i64 %mul1495 to i32
  %mul1497 = mul i32 %conv1496, 8
  %sub1498 = sub i32 %mul1497, -2147483648
  %add1499 = add nsw i32 %sub1498, -2147483648
  br label %cond.end.1500

cond.end.1500:                                    ; preds = %cond.false.1493, %cond.true.1488
  %cond1501 = phi i32 [ %mul1492, %cond.true.1488 ], [ %add1499, %cond.false.1493 ]
  %conv1502 = sext i32 %cond1501 to i64
  store i64 %conv1502, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then, label %lor.lhs.false.2841

cond.false.1503:                                  ; preds = %lor.lhs.false.1474
  %168 = load i64, i64* @Vfontset_table, align 8
  %call1504 = call i64 @ASIZE(i64 %168)
  %mul1505 = mul nsw i64 2, %call1504
  %conv1506 = trunc i64 %mul1505 to i32
  %mul1507 = mul i32 %conv1506, 8
  %cmp1508 = icmp ule i32 %mul1507, 2147483647
  br i1 %cmp1508, label %cond.true.1510, label %cond.false.1515

cond.true.1510:                                   ; preds = %cond.false.1503
  %169 = load i64, i64* @Vfontset_table, align 8
  %call1511 = call i64 @ASIZE(i64 %169)
  %mul1512 = mul nsw i64 2, %call1511
  %conv1513 = trunc i64 %mul1512 to i32
  %mul1514 = mul i32 %conv1513, 8
  br label %cond.end.1522

cond.false.1515:                                  ; preds = %cond.false.1503
  %170 = load i64, i64* @Vfontset_table, align 8
  %call1516 = call i64 @ASIZE(i64 %170)
  %mul1517 = mul nsw i64 2, %call1516
  %conv1518 = trunc i64 %mul1517 to i32
  %mul1519 = mul i32 %conv1518, 8
  %sub1520 = sub i32 %mul1519, -2147483648
  %add1521 = add nsw i32 %sub1520, -2147483648
  br label %cond.end.1522

cond.end.1522:                                    ; preds = %cond.false.1515, %cond.true.1510
  %cond1523 = phi i32 [ %mul1514, %cond.true.1510 ], [ %add1521, %cond.false.1515 ]
  %conv1524 = sext i32 %cond1523 to i64
  store i64 %conv1524, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then, label %lor.lhs.false.2841

cond.false.1525:                                  ; preds = %cond.true.1230
  %171 = load i64, i64* @Vfontset_table, align 8
  %call1526 = call i64 @ASIZE(i64 %171)
  %mul1527 = mul nsw i64 2, %call1526
  %add1528 = add nsw i64 0, %mul1527
  %mul1529 = mul nsw i64 0, %add1528
  %sub1530 = sub nsw i64 %mul1529, 1
  %cmp1531 = icmp slt i64 %sub1530, 0
  br i1 %cmp1531, label %cond.true.1533, label %cond.false.1554

cond.true.1533:                                   ; preds = %cond.false.1525
  %172 = load i64, i64* @Vfontset_table, align 8
  %call1534 = call i64 @ASIZE(i64 %172)
  %mul1535 = mul nsw i64 2, %call1534
  %add1536 = add nsw i64 0, %mul1535
  %mul1537 = mul nsw i64 0, %add1536
  %add1538 = add nsw i64 %mul1537, 0
  %neg1539 = xor i64 %add1538, -1
  %cmp1540 = icmp eq i64 %neg1539, -1
  %conv1541 = zext i1 %cmp1540 to i32
  %sub1542 = sub nsw i32 0, %conv1541
  %conv1543 = sext i32 %sub1542 to i64
  %173 = load i64, i64* @Vfontset_table, align 8
  %call1544 = call i64 @ASIZE(i64 %173)
  %mul1545 = mul nsw i64 2, %call1544
  %add1546 = add nsw i64 0, %mul1545
  %mul1547 = mul nsw i64 0, %add1546
  %add1548 = add nsw i64 %mul1547, 1
  %shl1549 = shl i64 %add1548, 62
  %sub1550 = sub nsw i64 %shl1549, 1
  %mul1551 = mul nsw i64 %sub1550, 2
  %add1552 = add nsw i64 %mul1551, 1
  %sub1553 = sub nsw i64 %conv1543, %add1552
  br label %cond.end.1560

cond.false.1554:                                  ; preds = %cond.false.1525
  %174 = load i64, i64* @Vfontset_table, align 8
  %call1555 = call i64 @ASIZE(i64 %174)
  %mul1556 = mul nsw i64 2, %call1555
  %add1557 = add nsw i64 0, %mul1556
  %mul1558 = mul nsw i64 0, %add1557
  %add1559 = add nsw i64 %mul1558, 0
  br label %cond.end.1560

cond.end.1560:                                    ; preds = %cond.false.1554, %cond.true.1533
  %cond1561 = phi i64 [ %sub1553, %cond.true.1533 ], [ %add1559, %cond.false.1554 ]
  %cmp1562 = icmp eq i64 %cond1561, 0
  br i1 %cmp1562, label %land.lhs.true.1564, label %lor.lhs.false.1569

land.lhs.true.1564:                               ; preds = %cond.end.1560
  %175 = load i64, i64* @Vfontset_table, align 8
  %call1565 = call i64 @ASIZE(i64 %175)
  %mul1566 = mul nsw i64 2, %call1565
  %cmp1567 = icmp slt i64 %mul1566, 0
  br i1 %cmp1567, label %cond.true.1750, label %lor.lhs.false.1569

lor.lhs.false.1569:                               ; preds = %land.lhs.true.1564, %cond.end.1560
  br i1 false, label %cond.true.1570, label %cond.false.1650

cond.true.1570:                                   ; preds = %lor.lhs.false.1569
  %176 = load i64, i64* @Vfontset_table, align 8
  %call1571 = call i64 @ASIZE(i64 %176)
  %mul1572 = mul nsw i64 2, %call1571
  %cmp1573 = icmp slt i64 %mul1572, 0
  br i1 %cmp1573, label %cond.true.1575, label %cond.false.1606

cond.true.1575:                                   ; preds = %cond.true.1570
  %177 = load i64, i64* @Vfontset_table, align 8
  %call1576 = call i64 @ASIZE(i64 %177)
  %mul1577 = mul nsw i64 2, %call1576
  %178 = load i64, i64* @Vfontset_table, align 8
  %call1578 = call i64 @ASIZE(i64 %178)
  %mul1579 = mul nsw i64 2, %call1578
  %add1580 = add nsw i64 0, %mul1579
  %mul1581 = mul nsw i64 0, %add1580
  %sub1582 = sub nsw i64 %mul1581, 1
  %cmp1583 = icmp slt i64 %sub1582, 0
  br i1 %cmp1583, label %cond.true.1585, label %cond.false.1595

cond.true.1585:                                   ; preds = %cond.true.1575
  %179 = load i64, i64* @Vfontset_table, align 8
  %call1586 = call i64 @ASIZE(i64 %179)
  %mul1587 = mul nsw i64 2, %call1586
  %add1588 = add nsw i64 0, %mul1587
  %mul1589 = mul nsw i64 0, %add1588
  %add1590 = add nsw i64 %mul1589, 1
  %shl1591 = shl i64 %add1590, 62
  %sub1592 = sub nsw i64 %shl1591, 1
  %mul1593 = mul nsw i64 %sub1592, 2
  %add1594 = add nsw i64 %mul1593, 1
  br label %cond.end.1601

cond.false.1595:                                  ; preds = %cond.true.1575
  %180 = load i64, i64* @Vfontset_table, align 8
  %call1596 = call i64 @ASIZE(i64 %180)
  %mul1597 = mul nsw i64 2, %call1596
  %add1598 = add nsw i64 0, %mul1597
  %mul1599 = mul nsw i64 0, %add1598
  %sub1600 = sub nsw i64 %mul1599, 1
  br label %cond.end.1601

cond.end.1601:                                    ; preds = %cond.false.1595, %cond.true.1585
  %cond1602 = phi i64 [ %add1594, %cond.true.1585 ], [ %sub1600, %cond.false.1595 ]
  %div1603 = sdiv i64 %cond1602, 8
  %cmp1604 = icmp slt i64 %mul1577, %div1603
  br i1 %cmp1604, label %cond.true.1750, label %lor.lhs.false.1730

cond.false.1606:                                  ; preds = %cond.true.1570
  br i1 false, label %cond.true.1607, label %cond.false.1608

cond.true.1607:                                   ; preds = %cond.false.1606
  br i1 false, label %cond.true.1750, label %lor.lhs.false.1730

cond.false.1608:                                  ; preds = %cond.false.1606
  %181 = load i64, i64* @Vfontset_table, align 8
  %call1609 = call i64 @ASIZE(i64 %181)
  %mul1610 = mul nsw i64 2, %call1609
  %add1611 = add nsw i64 0, %mul1610
  %mul1612 = mul nsw i64 0, %add1611
  %sub1613 = sub nsw i64 %mul1612, 1
  %cmp1614 = icmp slt i64 %sub1613, 0
  br i1 %cmp1614, label %cond.true.1616, label %cond.false.1637

cond.true.1616:                                   ; preds = %cond.false.1608
  %182 = load i64, i64* @Vfontset_table, align 8
  %call1617 = call i64 @ASIZE(i64 %182)
  %mul1618 = mul nsw i64 2, %call1617
  %add1619 = add nsw i64 0, %mul1618
  %mul1620 = mul nsw i64 0, %add1619
  %add1621 = add nsw i64 %mul1620, 0
  %neg1622 = xor i64 %add1621, -1
  %cmp1623 = icmp eq i64 %neg1622, -1
  %conv1624 = zext i1 %cmp1623 to i32
  %sub1625 = sub nsw i32 0, %conv1624
  %conv1626 = sext i32 %sub1625 to i64
  %183 = load i64, i64* @Vfontset_table, align 8
  %call1627 = call i64 @ASIZE(i64 %183)
  %mul1628 = mul nsw i64 2, %call1627
  %add1629 = add nsw i64 0, %mul1628
  %mul1630 = mul nsw i64 0, %add1629
  %add1631 = add nsw i64 %mul1630, 1
  %shl1632 = shl i64 %add1631, 62
  %sub1633 = sub nsw i64 %shl1632, 1
  %mul1634 = mul nsw i64 %sub1633, 2
  %add1635 = add nsw i64 %mul1634, 1
  %sub1636 = sub nsw i64 %conv1626, %add1635
  br label %cond.end.1643

cond.false.1637:                                  ; preds = %cond.false.1608
  %184 = load i64, i64* @Vfontset_table, align 8
  %call1638 = call i64 @ASIZE(i64 %184)
  %mul1639 = mul nsw i64 2, %call1638
  %add1640 = add nsw i64 0, %mul1639
  %mul1641 = mul nsw i64 0, %add1640
  %add1642 = add nsw i64 %mul1641, 0
  br label %cond.end.1643

cond.end.1643:                                    ; preds = %cond.false.1637, %cond.true.1616
  %cond1644 = phi i64 [ %sub1636, %cond.true.1616 ], [ %add1642, %cond.false.1637 ]
  %div1645 = sdiv i64 %cond1644, 8
  %185 = load i64, i64* @Vfontset_table, align 8
  %call1646 = call i64 @ASIZE(i64 %185)
  %mul1647 = mul nsw i64 2, %call1646
  %cmp1648 = icmp slt i64 %div1645, %mul1647
  br i1 %cmp1648, label %cond.true.1750, label %lor.lhs.false.1730

cond.false.1650:                                  ; preds = %lor.lhs.false.1569
  br i1 false, label %cond.true.1651, label %cond.false.1652

cond.true.1651:                                   ; preds = %cond.false.1650
  br i1 false, label %cond.true.1750, label %lor.lhs.false.1730

cond.false.1652:                                  ; preds = %cond.false.1650
  %186 = load i64, i64* @Vfontset_table, align 8
  %call1653 = call i64 @ASIZE(i64 %186)
  %mul1654 = mul nsw i64 2, %call1653
  %cmp1655 = icmp slt i64 %mul1654, 0
  br i1 %cmp1655, label %cond.true.1657, label %cond.false.1699

cond.true.1657:                                   ; preds = %cond.false.1652
  %187 = load i64, i64* @Vfontset_table, align 8
  %call1658 = call i64 @ASIZE(i64 %187)
  %mul1659 = mul nsw i64 2, %call1658
  %188 = load i64, i64* @Vfontset_table, align 8
  %call1660 = call i64 @ASIZE(i64 %188)
  %mul1661 = mul nsw i64 2, %call1660
  %add1662 = add nsw i64 0, %mul1661
  %mul1663 = mul nsw i64 0, %add1662
  %sub1664 = sub nsw i64 %mul1663, 1
  %cmp1665 = icmp slt i64 %sub1664, 0
  br i1 %cmp1665, label %cond.true.1667, label %cond.false.1688

cond.true.1667:                                   ; preds = %cond.true.1657
  %189 = load i64, i64* @Vfontset_table, align 8
  %call1668 = call i64 @ASIZE(i64 %189)
  %mul1669 = mul nsw i64 2, %call1668
  %add1670 = add nsw i64 0, %mul1669
  %mul1671 = mul nsw i64 0, %add1670
  %add1672 = add nsw i64 %mul1671, 0
  %neg1673 = xor i64 %add1672, -1
  %cmp1674 = icmp eq i64 %neg1673, -1
  %conv1675 = zext i1 %cmp1674 to i32
  %sub1676 = sub nsw i32 0, %conv1675
  %conv1677 = sext i32 %sub1676 to i64
  %190 = load i64, i64* @Vfontset_table, align 8
  %call1678 = call i64 @ASIZE(i64 %190)
  %mul1679 = mul nsw i64 2, %call1678
  %add1680 = add nsw i64 0, %mul1679
  %mul1681 = mul nsw i64 0, %add1680
  %add1682 = add nsw i64 %mul1681, 1
  %shl1683 = shl i64 %add1682, 62
  %sub1684 = sub nsw i64 %shl1683, 1
  %mul1685 = mul nsw i64 %sub1684, 2
  %add1686 = add nsw i64 %mul1685, 1
  %sub1687 = sub nsw i64 %conv1677, %add1686
  br label %cond.end.1694

cond.false.1688:                                  ; preds = %cond.true.1657
  %191 = load i64, i64* @Vfontset_table, align 8
  %call1689 = call i64 @ASIZE(i64 %191)
  %mul1690 = mul nsw i64 2, %call1689
  %add1691 = add nsw i64 0, %mul1690
  %mul1692 = mul nsw i64 0, %add1691
  %add1693 = add nsw i64 %mul1692, 0
  br label %cond.end.1694

cond.end.1694:                                    ; preds = %cond.false.1688, %cond.true.1667
  %cond1695 = phi i64 [ %sub1687, %cond.true.1667 ], [ %add1693, %cond.false.1688 ]
  %div1696 = sdiv i64 %cond1695, 8
  %cmp1697 = icmp slt i64 %mul1659, %div1696
  br i1 %cmp1697, label %cond.true.1750, label %lor.lhs.false.1730

cond.false.1699:                                  ; preds = %cond.false.1652
  %192 = load i64, i64* @Vfontset_table, align 8
  %call1700 = call i64 @ASIZE(i64 %192)
  %mul1701 = mul nsw i64 2, %call1700
  %add1702 = add nsw i64 0, %mul1701
  %mul1703 = mul nsw i64 0, %add1702
  %sub1704 = sub nsw i64 %mul1703, 1
  %cmp1705 = icmp slt i64 %sub1704, 0
  br i1 %cmp1705, label %cond.true.1707, label %cond.false.1717

cond.true.1707:                                   ; preds = %cond.false.1699
  %193 = load i64, i64* @Vfontset_table, align 8
  %call1708 = call i64 @ASIZE(i64 %193)
  %mul1709 = mul nsw i64 2, %call1708
  %add1710 = add nsw i64 0, %mul1709
  %mul1711 = mul nsw i64 0, %add1710
  %add1712 = add nsw i64 %mul1711, 1
  %shl1713 = shl i64 %add1712, 62
  %sub1714 = sub nsw i64 %shl1713, 1
  %mul1715 = mul nsw i64 %sub1714, 2
  %add1716 = add nsw i64 %mul1715, 1
  br label %cond.end.1723

cond.false.1717:                                  ; preds = %cond.false.1699
  %194 = load i64, i64* @Vfontset_table, align 8
  %call1718 = call i64 @ASIZE(i64 %194)
  %mul1719 = mul nsw i64 2, %call1718
  %add1720 = add nsw i64 0, %mul1719
  %mul1721 = mul nsw i64 0, %add1720
  %sub1722 = sub nsw i64 %mul1721, 1
  br label %cond.end.1723

cond.end.1723:                                    ; preds = %cond.false.1717, %cond.true.1707
  %cond1724 = phi i64 [ %add1716, %cond.true.1707 ], [ %sub1722, %cond.false.1717 ]
  %div1725 = sdiv i64 %cond1724, 8
  %195 = load i64, i64* @Vfontset_table, align 8
  %call1726 = call i64 @ASIZE(i64 %195)
  %mul1727 = mul nsw i64 2, %call1726
  %cmp1728 = icmp slt i64 %div1725, %mul1727
  br i1 %cmp1728, label %cond.true.1750, label %lor.lhs.false.1730

lor.lhs.false.1730:                               ; preds = %cond.end.1723, %cond.end.1694, %cond.true.1651, %cond.end.1643, %cond.true.1607, %cond.end.1601
  %196 = load i64, i64* @Vfontset_table, align 8
  %call1731 = call i64 @ASIZE(i64 %196)
  %mul1732 = mul nsw i64 2, %call1731
  %mul1733 = mul nsw i64 %mul1732, 8
  %mul1734 = mul nsw i64 0, %mul1733
  %sub1735 = sub nsw i64 %mul1734, 1
  %cmp1736 = icmp slt i64 %sub1735, 0
  br i1 %cmp1736, label %land.lhs.true.1738, label %lor.lhs.false.1744

land.lhs.true.1738:                               ; preds = %lor.lhs.false.1730
  %197 = load i64, i64* @Vfontset_table, align 8
  %call1739 = call i64 @ASIZE(i64 %197)
  %mul1740 = mul nsw i64 2, %call1739
  %mul1741 = mul nsw i64 %mul1740, 8
  %cmp1742 = icmp slt i64 %mul1741, -2147483648
  br i1 %cmp1742, label %cond.true.1750, label %lor.lhs.false.1744

lor.lhs.false.1744:                               ; preds = %land.lhs.true.1738, %lor.lhs.false.1730
  %198 = load i64, i64* @Vfontset_table, align 8
  %call1745 = call i64 @ASIZE(i64 %198)
  %mul1746 = mul nsw i64 2, %call1745
  %mul1747 = mul nsw i64 %mul1746, 8
  %cmp1748 = icmp slt i64 2147483647, %mul1747
  br i1 %cmp1748, label %cond.true.1750, label %cond.false.1772

cond.true.1750:                                   ; preds = %lor.lhs.false.1744, %land.lhs.true.1738, %cond.end.1723, %cond.end.1694, %cond.true.1651, %cond.end.1643, %cond.true.1607, %cond.end.1601, %land.lhs.true.1564
  %199 = load i64, i64* @Vfontset_table, align 8
  %call1751 = call i64 @ASIZE(i64 %199)
  %mul1752 = mul nsw i64 2, %call1751
  %conv1753 = trunc i64 %mul1752 to i32
  %mul1754 = mul i32 %conv1753, 8
  %cmp1755 = icmp ule i32 %mul1754, 2147483647
  br i1 %cmp1755, label %cond.true.1757, label %cond.false.1762

cond.true.1757:                                   ; preds = %cond.true.1750
  %200 = load i64, i64* @Vfontset_table, align 8
  %call1758 = call i64 @ASIZE(i64 %200)
  %mul1759 = mul nsw i64 2, %call1758
  %conv1760 = trunc i64 %mul1759 to i32
  %mul1761 = mul i32 %conv1760, 8
  br label %cond.end.1769

cond.false.1762:                                  ; preds = %cond.true.1750
  %201 = load i64, i64* @Vfontset_table, align 8
  %call1763 = call i64 @ASIZE(i64 %201)
  %mul1764 = mul nsw i64 2, %call1763
  %conv1765 = trunc i64 %mul1764 to i32
  %mul1766 = mul i32 %conv1765, 8
  %sub1767 = sub i32 %mul1766, -2147483648
  %add1768 = add nsw i32 %sub1767, -2147483648
  br label %cond.end.1769

cond.end.1769:                                    ; preds = %cond.false.1762, %cond.true.1757
  %cond1770 = phi i32 [ %mul1761, %cond.true.1757 ], [ %add1768, %cond.false.1762 ]
  %conv1771 = sext i32 %cond1770 to i64
  store i64 %conv1771, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then, label %lor.lhs.false.2841

cond.false.1772:                                  ; preds = %lor.lhs.false.1744
  %202 = load i64, i64* @Vfontset_table, align 8
  %call1773 = call i64 @ASIZE(i64 %202)
  %mul1774 = mul nsw i64 2, %call1773
  %conv1775 = trunc i64 %mul1774 to i32
  %mul1776 = mul i32 %conv1775, 8
  %cmp1777 = icmp ule i32 %mul1776, 2147483647
  br i1 %cmp1777, label %cond.true.1779, label %cond.false.1784

cond.true.1779:                                   ; preds = %cond.false.1772
  %203 = load i64, i64* @Vfontset_table, align 8
  %call1780 = call i64 @ASIZE(i64 %203)
  %mul1781 = mul nsw i64 2, %call1780
  %conv1782 = trunc i64 %mul1781 to i32
  %mul1783 = mul i32 %conv1782, 8
  br label %cond.end.1791

cond.false.1784:                                  ; preds = %cond.false.1772
  %204 = load i64, i64* @Vfontset_table, align 8
  %call1785 = call i64 @ASIZE(i64 %204)
  %mul1786 = mul nsw i64 2, %call1785
  %conv1787 = trunc i64 %mul1786 to i32
  %mul1788 = mul i32 %conv1787, 8
  %sub1789 = sub i32 %mul1788, -2147483648
  %add1790 = add nsw i32 %sub1789, -2147483648
  br label %cond.end.1791

cond.end.1791:                                    ; preds = %cond.false.1784, %cond.true.1779
  %cond1792 = phi i32 [ %mul1783, %cond.true.1779 ], [ %add1790, %cond.false.1784 ]
  %conv1793 = sext i32 %cond1792 to i64
  store i64 %conv1793, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then, label %lor.lhs.false.2841

cond.false.1794:                                  ; preds = %cond.false.1229
  br i1 true, label %cond.true.1795, label %cond.false.2318

cond.true.1795:                                   ; preds = %cond.false.1794
  br i1 false, label %cond.true.1796, label %cond.false.2057

cond.true.1796:                                   ; preds = %cond.true.1795
  %205 = load i64, i64* @Vfontset_table, align 8
  %call1797 = call i64 @ASIZE(i64 %205)
  %mul1798 = mul nsw i64 2, %call1797
  %add1799 = add nsw i64 0, %mul1798
  %mul1800 = mul nsw i64 0, %add1799
  %sub1801 = sub nsw i64 %mul1800, 1
  %cmp1802 = icmp slt i64 %sub1801, 0
  br i1 %cmp1802, label %cond.true.1804, label %cond.false.1825

cond.true.1804:                                   ; preds = %cond.true.1796
  %206 = load i64, i64* @Vfontset_table, align 8
  %call1805 = call i64 @ASIZE(i64 %206)
  %mul1806 = mul nsw i64 2, %call1805
  %add1807 = add nsw i64 0, %mul1806
  %mul1808 = mul nsw i64 0, %add1807
  %add1809 = add nsw i64 %mul1808, 0
  %neg1810 = xor i64 %add1809, -1
  %cmp1811 = icmp eq i64 %neg1810, -1
  %conv1812 = zext i1 %cmp1811 to i32
  %sub1813 = sub nsw i32 0, %conv1812
  %conv1814 = sext i32 %sub1813 to i64
  %207 = load i64, i64* @Vfontset_table, align 8
  %call1815 = call i64 @ASIZE(i64 %207)
  %mul1816 = mul nsw i64 2, %call1815
  %add1817 = add nsw i64 0, %mul1816
  %mul1818 = mul nsw i64 0, %add1817
  %add1819 = add nsw i64 %mul1818, 1
  %shl1820 = shl i64 %add1819, 62
  %sub1821 = sub nsw i64 %shl1820, 1
  %mul1822 = mul nsw i64 %sub1821, 2
  %add1823 = add nsw i64 %mul1822, 1
  %sub1824 = sub nsw i64 %conv1814, %add1823
  br label %cond.end.1831

cond.false.1825:                                  ; preds = %cond.true.1796
  %208 = load i64, i64* @Vfontset_table, align 8
  %call1826 = call i64 @ASIZE(i64 %208)
  %mul1827 = mul nsw i64 2, %call1826
  %add1828 = add nsw i64 0, %mul1827
  %mul1829 = mul nsw i64 0, %add1828
  %add1830 = add nsw i64 %mul1829, 0
  br label %cond.end.1831

cond.end.1831:                                    ; preds = %cond.false.1825, %cond.true.1804
  %cond1832 = phi i64 [ %sub1824, %cond.true.1804 ], [ %add1830, %cond.false.1825 ]
  %cmp1833 = icmp eq i64 %cond1832, 0
  br i1 %cmp1833, label %land.lhs.true.1835, label %lor.lhs.false.1840

land.lhs.true.1835:                               ; preds = %cond.end.1831
  %209 = load i64, i64* @Vfontset_table, align 8
  %call1836 = call i64 @ASIZE(i64 %209)
  %mul1837 = mul nsw i64 2, %call1836
  %cmp1838 = icmp slt i64 %mul1837, 0
  br i1 %cmp1838, label %cond.true.2021, label %lor.lhs.false.1840

lor.lhs.false.1840:                               ; preds = %land.lhs.true.1835, %cond.end.1831
  br i1 false, label %cond.true.1841, label %cond.false.1921

cond.true.1841:                                   ; preds = %lor.lhs.false.1840
  %210 = load i64, i64* @Vfontset_table, align 8
  %call1842 = call i64 @ASIZE(i64 %210)
  %mul1843 = mul nsw i64 2, %call1842
  %cmp1844 = icmp slt i64 %mul1843, 0
  br i1 %cmp1844, label %cond.true.1846, label %cond.false.1877

cond.true.1846:                                   ; preds = %cond.true.1841
  %211 = load i64, i64* @Vfontset_table, align 8
  %call1847 = call i64 @ASIZE(i64 %211)
  %mul1848 = mul nsw i64 2, %call1847
  %212 = load i64, i64* @Vfontset_table, align 8
  %call1849 = call i64 @ASIZE(i64 %212)
  %mul1850 = mul nsw i64 2, %call1849
  %add1851 = add nsw i64 0, %mul1850
  %mul1852 = mul nsw i64 0, %add1851
  %sub1853 = sub nsw i64 %mul1852, 1
  %cmp1854 = icmp slt i64 %sub1853, 0
  br i1 %cmp1854, label %cond.true.1856, label %cond.false.1866

cond.true.1856:                                   ; preds = %cond.true.1846
  %213 = load i64, i64* @Vfontset_table, align 8
  %call1857 = call i64 @ASIZE(i64 %213)
  %mul1858 = mul nsw i64 2, %call1857
  %add1859 = add nsw i64 0, %mul1858
  %mul1860 = mul nsw i64 0, %add1859
  %add1861 = add nsw i64 %mul1860, 1
  %shl1862 = shl i64 %add1861, 62
  %sub1863 = sub nsw i64 %shl1862, 1
  %mul1864 = mul nsw i64 %sub1863, 2
  %add1865 = add nsw i64 %mul1864, 1
  br label %cond.end.1872

cond.false.1866:                                  ; preds = %cond.true.1846
  %214 = load i64, i64* @Vfontset_table, align 8
  %call1867 = call i64 @ASIZE(i64 %214)
  %mul1868 = mul nsw i64 2, %call1867
  %add1869 = add nsw i64 0, %mul1868
  %mul1870 = mul nsw i64 0, %add1869
  %sub1871 = sub nsw i64 %mul1870, 1
  br label %cond.end.1872

cond.end.1872:                                    ; preds = %cond.false.1866, %cond.true.1856
  %cond1873 = phi i64 [ %add1865, %cond.true.1856 ], [ %sub1871, %cond.false.1866 ]
  %div1874 = sdiv i64 %cond1873, 8
  %cmp1875 = icmp slt i64 %mul1848, %div1874
  br i1 %cmp1875, label %cond.true.2021, label %lor.lhs.false.2001

cond.false.1877:                                  ; preds = %cond.true.1841
  br i1 false, label %cond.true.1878, label %cond.false.1879

cond.true.1878:                                   ; preds = %cond.false.1877
  br i1 false, label %cond.true.2021, label %lor.lhs.false.2001

cond.false.1879:                                  ; preds = %cond.false.1877
  %215 = load i64, i64* @Vfontset_table, align 8
  %call1880 = call i64 @ASIZE(i64 %215)
  %mul1881 = mul nsw i64 2, %call1880
  %add1882 = add nsw i64 0, %mul1881
  %mul1883 = mul nsw i64 0, %add1882
  %sub1884 = sub nsw i64 %mul1883, 1
  %cmp1885 = icmp slt i64 %sub1884, 0
  br i1 %cmp1885, label %cond.true.1887, label %cond.false.1908

cond.true.1887:                                   ; preds = %cond.false.1879
  %216 = load i64, i64* @Vfontset_table, align 8
  %call1888 = call i64 @ASIZE(i64 %216)
  %mul1889 = mul nsw i64 2, %call1888
  %add1890 = add nsw i64 0, %mul1889
  %mul1891 = mul nsw i64 0, %add1890
  %add1892 = add nsw i64 %mul1891, 0
  %neg1893 = xor i64 %add1892, -1
  %cmp1894 = icmp eq i64 %neg1893, -1
  %conv1895 = zext i1 %cmp1894 to i32
  %sub1896 = sub nsw i32 0, %conv1895
  %conv1897 = sext i32 %sub1896 to i64
  %217 = load i64, i64* @Vfontset_table, align 8
  %call1898 = call i64 @ASIZE(i64 %217)
  %mul1899 = mul nsw i64 2, %call1898
  %add1900 = add nsw i64 0, %mul1899
  %mul1901 = mul nsw i64 0, %add1900
  %add1902 = add nsw i64 %mul1901, 1
  %shl1903 = shl i64 %add1902, 62
  %sub1904 = sub nsw i64 %shl1903, 1
  %mul1905 = mul nsw i64 %sub1904, 2
  %add1906 = add nsw i64 %mul1905, 1
  %sub1907 = sub nsw i64 %conv1897, %add1906
  br label %cond.end.1914

cond.false.1908:                                  ; preds = %cond.false.1879
  %218 = load i64, i64* @Vfontset_table, align 8
  %call1909 = call i64 @ASIZE(i64 %218)
  %mul1910 = mul nsw i64 2, %call1909
  %add1911 = add nsw i64 0, %mul1910
  %mul1912 = mul nsw i64 0, %add1911
  %add1913 = add nsw i64 %mul1912, 0
  br label %cond.end.1914

cond.end.1914:                                    ; preds = %cond.false.1908, %cond.true.1887
  %cond1915 = phi i64 [ %sub1907, %cond.true.1887 ], [ %add1913, %cond.false.1908 ]
  %div1916 = sdiv i64 %cond1915, 8
  %219 = load i64, i64* @Vfontset_table, align 8
  %call1917 = call i64 @ASIZE(i64 %219)
  %mul1918 = mul nsw i64 2, %call1917
  %cmp1919 = icmp slt i64 %div1916, %mul1918
  br i1 %cmp1919, label %cond.true.2021, label %lor.lhs.false.2001

cond.false.1921:                                  ; preds = %lor.lhs.false.1840
  br i1 false, label %cond.true.1922, label %cond.false.1923

cond.true.1922:                                   ; preds = %cond.false.1921
  br i1 false, label %cond.true.2021, label %lor.lhs.false.2001

cond.false.1923:                                  ; preds = %cond.false.1921
  %220 = load i64, i64* @Vfontset_table, align 8
  %call1924 = call i64 @ASIZE(i64 %220)
  %mul1925 = mul nsw i64 2, %call1924
  %cmp1926 = icmp slt i64 %mul1925, 0
  br i1 %cmp1926, label %cond.true.1928, label %cond.false.1970

cond.true.1928:                                   ; preds = %cond.false.1923
  %221 = load i64, i64* @Vfontset_table, align 8
  %call1929 = call i64 @ASIZE(i64 %221)
  %mul1930 = mul nsw i64 2, %call1929
  %222 = load i64, i64* @Vfontset_table, align 8
  %call1931 = call i64 @ASIZE(i64 %222)
  %mul1932 = mul nsw i64 2, %call1931
  %add1933 = add nsw i64 0, %mul1932
  %mul1934 = mul nsw i64 0, %add1933
  %sub1935 = sub nsw i64 %mul1934, 1
  %cmp1936 = icmp slt i64 %sub1935, 0
  br i1 %cmp1936, label %cond.true.1938, label %cond.false.1959

cond.true.1938:                                   ; preds = %cond.true.1928
  %223 = load i64, i64* @Vfontset_table, align 8
  %call1939 = call i64 @ASIZE(i64 %223)
  %mul1940 = mul nsw i64 2, %call1939
  %add1941 = add nsw i64 0, %mul1940
  %mul1942 = mul nsw i64 0, %add1941
  %add1943 = add nsw i64 %mul1942, 0
  %neg1944 = xor i64 %add1943, -1
  %cmp1945 = icmp eq i64 %neg1944, -1
  %conv1946 = zext i1 %cmp1945 to i32
  %sub1947 = sub nsw i32 0, %conv1946
  %conv1948 = sext i32 %sub1947 to i64
  %224 = load i64, i64* @Vfontset_table, align 8
  %call1949 = call i64 @ASIZE(i64 %224)
  %mul1950 = mul nsw i64 2, %call1949
  %add1951 = add nsw i64 0, %mul1950
  %mul1952 = mul nsw i64 0, %add1951
  %add1953 = add nsw i64 %mul1952, 1
  %shl1954 = shl i64 %add1953, 62
  %sub1955 = sub nsw i64 %shl1954, 1
  %mul1956 = mul nsw i64 %sub1955, 2
  %add1957 = add nsw i64 %mul1956, 1
  %sub1958 = sub nsw i64 %conv1948, %add1957
  br label %cond.end.1965

cond.false.1959:                                  ; preds = %cond.true.1928
  %225 = load i64, i64* @Vfontset_table, align 8
  %call1960 = call i64 @ASIZE(i64 %225)
  %mul1961 = mul nsw i64 2, %call1960
  %add1962 = add nsw i64 0, %mul1961
  %mul1963 = mul nsw i64 0, %add1962
  %add1964 = add nsw i64 %mul1963, 0
  br label %cond.end.1965

cond.end.1965:                                    ; preds = %cond.false.1959, %cond.true.1938
  %cond1966 = phi i64 [ %sub1958, %cond.true.1938 ], [ %add1964, %cond.false.1959 ]
  %div1967 = sdiv i64 %cond1966, 8
  %cmp1968 = icmp slt i64 %mul1930, %div1967
  br i1 %cmp1968, label %cond.true.2021, label %lor.lhs.false.2001

cond.false.1970:                                  ; preds = %cond.false.1923
  %226 = load i64, i64* @Vfontset_table, align 8
  %call1971 = call i64 @ASIZE(i64 %226)
  %mul1972 = mul nsw i64 2, %call1971
  %add1973 = add nsw i64 0, %mul1972
  %mul1974 = mul nsw i64 0, %add1973
  %sub1975 = sub nsw i64 %mul1974, 1
  %cmp1976 = icmp slt i64 %sub1975, 0
  br i1 %cmp1976, label %cond.true.1978, label %cond.false.1988

cond.true.1978:                                   ; preds = %cond.false.1970
  %227 = load i64, i64* @Vfontset_table, align 8
  %call1979 = call i64 @ASIZE(i64 %227)
  %mul1980 = mul nsw i64 2, %call1979
  %add1981 = add nsw i64 0, %mul1980
  %mul1982 = mul nsw i64 0, %add1981
  %add1983 = add nsw i64 %mul1982, 1
  %shl1984 = shl i64 %add1983, 62
  %sub1985 = sub nsw i64 %shl1984, 1
  %mul1986 = mul nsw i64 %sub1985, 2
  %add1987 = add nsw i64 %mul1986, 1
  br label %cond.end.1994

cond.false.1988:                                  ; preds = %cond.false.1970
  %228 = load i64, i64* @Vfontset_table, align 8
  %call1989 = call i64 @ASIZE(i64 %228)
  %mul1990 = mul nsw i64 2, %call1989
  %add1991 = add nsw i64 0, %mul1990
  %mul1992 = mul nsw i64 0, %add1991
  %sub1993 = sub nsw i64 %mul1992, 1
  br label %cond.end.1994

cond.end.1994:                                    ; preds = %cond.false.1988, %cond.true.1978
  %cond1995 = phi i64 [ %add1987, %cond.true.1978 ], [ %sub1993, %cond.false.1988 ]
  %div1996 = sdiv i64 %cond1995, 8
  %229 = load i64, i64* @Vfontset_table, align 8
  %call1997 = call i64 @ASIZE(i64 %229)
  %mul1998 = mul nsw i64 2, %call1997
  %cmp1999 = icmp slt i64 %div1996, %mul1998
  br i1 %cmp1999, label %cond.true.2021, label %lor.lhs.false.2001

lor.lhs.false.2001:                               ; preds = %cond.end.1994, %cond.end.1965, %cond.true.1922, %cond.end.1914, %cond.true.1878, %cond.end.1872
  %230 = load i64, i64* @Vfontset_table, align 8
  %call2002 = call i64 @ASIZE(i64 %230)
  %mul2003 = mul nsw i64 2, %call2002
  %mul2004 = mul nsw i64 %mul2003, 8
  %mul2005 = mul nsw i64 0, %mul2004
  %sub2006 = sub nsw i64 %mul2005, 1
  %cmp2007 = icmp slt i64 %sub2006, 0
  br i1 %cmp2007, label %land.lhs.true.2009, label %lor.lhs.false.2015

land.lhs.true.2009:                               ; preds = %lor.lhs.false.2001
  %231 = load i64, i64* @Vfontset_table, align 8
  %call2010 = call i64 @ASIZE(i64 %231)
  %mul2011 = mul nsw i64 2, %call2010
  %mul2012 = mul nsw i64 %mul2011, 8
  %cmp2013 = icmp slt i64 %mul2012, -9223372036854775808
  br i1 %cmp2013, label %cond.true.2021, label %lor.lhs.false.2015

lor.lhs.false.2015:                               ; preds = %land.lhs.true.2009, %lor.lhs.false.2001
  %232 = load i64, i64* @Vfontset_table, align 8
  %call2016 = call i64 @ASIZE(i64 %232)
  %mul2017 = mul nsw i64 2, %call2016
  %mul2018 = mul nsw i64 %mul2017, 8
  %cmp2019 = icmp slt i64 9223372036854775807, %mul2018
  br i1 %cmp2019, label %cond.true.2021, label %cond.false.2039

cond.true.2021:                                   ; preds = %lor.lhs.false.2015, %land.lhs.true.2009, %cond.end.1994, %cond.end.1965, %cond.true.1922, %cond.end.1914, %cond.true.1878, %cond.end.1872, %land.lhs.true.1835
  %233 = load i64, i64* @Vfontset_table, align 8
  %call2022 = call i64 @ASIZE(i64 %233)
  %mul2023 = mul nsw i64 2, %call2022
  %mul2024 = mul i64 %mul2023, 8
  %cmp2025 = icmp ule i64 %mul2024, 9223372036854775807
  br i1 %cmp2025, label %cond.true.2027, label %cond.false.2031

cond.true.2027:                                   ; preds = %cond.true.2021
  %234 = load i64, i64* @Vfontset_table, align 8
  %call2028 = call i64 @ASIZE(i64 %234)
  %mul2029 = mul nsw i64 2, %call2028
  %mul2030 = mul i64 %mul2029, 8
  br label %cond.end.2037

cond.false.2031:                                  ; preds = %cond.true.2021
  %235 = load i64, i64* @Vfontset_table, align 8
  %call2032 = call i64 @ASIZE(i64 %235)
  %mul2033 = mul nsw i64 2, %call2032
  %mul2034 = mul i64 %mul2033, 8
  %sub2035 = sub i64 %mul2034, -9223372036854775808
  %add2036 = add nsw i64 %sub2035, -9223372036854775808
  br label %cond.end.2037

cond.end.2037:                                    ; preds = %cond.false.2031, %cond.true.2027
  %cond2038 = phi i64 [ %mul2030, %cond.true.2027 ], [ %add2036, %cond.false.2031 ]
  store i64 %cond2038, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then, label %lor.lhs.false.2841

cond.false.2039:                                  ; preds = %lor.lhs.false.2015
  %236 = load i64, i64* @Vfontset_table, align 8
  %call2040 = call i64 @ASIZE(i64 %236)
  %mul2041 = mul nsw i64 2, %call2040
  %mul2042 = mul i64 %mul2041, 8
  %cmp2043 = icmp ule i64 %mul2042, 9223372036854775807
  br i1 %cmp2043, label %cond.true.2045, label %cond.false.2049

cond.true.2045:                                   ; preds = %cond.false.2039
  %237 = load i64, i64* @Vfontset_table, align 8
  %call2046 = call i64 @ASIZE(i64 %237)
  %mul2047 = mul nsw i64 2, %call2046
  %mul2048 = mul i64 %mul2047, 8
  br label %cond.end.2055

cond.false.2049:                                  ; preds = %cond.false.2039
  %238 = load i64, i64* @Vfontset_table, align 8
  %call2050 = call i64 @ASIZE(i64 %238)
  %mul2051 = mul nsw i64 2, %call2050
  %mul2052 = mul i64 %mul2051, 8
  %sub2053 = sub i64 %mul2052, -9223372036854775808
  %add2054 = add nsw i64 %sub2053, -9223372036854775808
  br label %cond.end.2055

cond.end.2055:                                    ; preds = %cond.false.2049, %cond.true.2045
  %cond2056 = phi i64 [ %mul2048, %cond.true.2045 ], [ %add2054, %cond.false.2049 ]
  store i64 %cond2056, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then, label %lor.lhs.false.2841

cond.false.2057:                                  ; preds = %cond.true.1795
  %239 = load i64, i64* @Vfontset_table, align 8
  %call2058 = call i64 @ASIZE(i64 %239)
  %mul2059 = mul nsw i64 2, %call2058
  %add2060 = add nsw i64 0, %mul2059
  %mul2061 = mul nsw i64 0, %add2060
  %sub2062 = sub nsw i64 %mul2061, 1
  %cmp2063 = icmp slt i64 %sub2062, 0
  br i1 %cmp2063, label %cond.true.2065, label %cond.false.2086

cond.true.2065:                                   ; preds = %cond.false.2057
  %240 = load i64, i64* @Vfontset_table, align 8
  %call2066 = call i64 @ASIZE(i64 %240)
  %mul2067 = mul nsw i64 2, %call2066
  %add2068 = add nsw i64 0, %mul2067
  %mul2069 = mul nsw i64 0, %add2068
  %add2070 = add nsw i64 %mul2069, 0
  %neg2071 = xor i64 %add2070, -1
  %cmp2072 = icmp eq i64 %neg2071, -1
  %conv2073 = zext i1 %cmp2072 to i32
  %sub2074 = sub nsw i32 0, %conv2073
  %conv2075 = sext i32 %sub2074 to i64
  %241 = load i64, i64* @Vfontset_table, align 8
  %call2076 = call i64 @ASIZE(i64 %241)
  %mul2077 = mul nsw i64 2, %call2076
  %add2078 = add nsw i64 0, %mul2077
  %mul2079 = mul nsw i64 0, %add2078
  %add2080 = add nsw i64 %mul2079, 1
  %shl2081 = shl i64 %add2080, 62
  %sub2082 = sub nsw i64 %shl2081, 1
  %mul2083 = mul nsw i64 %sub2082, 2
  %add2084 = add nsw i64 %mul2083, 1
  %sub2085 = sub nsw i64 %conv2075, %add2084
  br label %cond.end.2092

cond.false.2086:                                  ; preds = %cond.false.2057
  %242 = load i64, i64* @Vfontset_table, align 8
  %call2087 = call i64 @ASIZE(i64 %242)
  %mul2088 = mul nsw i64 2, %call2087
  %add2089 = add nsw i64 0, %mul2088
  %mul2090 = mul nsw i64 0, %add2089
  %add2091 = add nsw i64 %mul2090, 0
  br label %cond.end.2092

cond.end.2092:                                    ; preds = %cond.false.2086, %cond.true.2065
  %cond2093 = phi i64 [ %sub2085, %cond.true.2065 ], [ %add2091, %cond.false.2086 ]
  %cmp2094 = icmp eq i64 %cond2093, 0
  br i1 %cmp2094, label %land.lhs.true.2096, label %lor.lhs.false.2101

land.lhs.true.2096:                               ; preds = %cond.end.2092
  %243 = load i64, i64* @Vfontset_table, align 8
  %call2097 = call i64 @ASIZE(i64 %243)
  %mul2098 = mul nsw i64 2, %call2097
  %cmp2099 = icmp slt i64 %mul2098, 0
  br i1 %cmp2099, label %cond.true.2282, label %lor.lhs.false.2101

lor.lhs.false.2101:                               ; preds = %land.lhs.true.2096, %cond.end.2092
  br i1 false, label %cond.true.2102, label %cond.false.2182

cond.true.2102:                                   ; preds = %lor.lhs.false.2101
  %244 = load i64, i64* @Vfontset_table, align 8
  %call2103 = call i64 @ASIZE(i64 %244)
  %mul2104 = mul nsw i64 2, %call2103
  %cmp2105 = icmp slt i64 %mul2104, 0
  br i1 %cmp2105, label %cond.true.2107, label %cond.false.2138

cond.true.2107:                                   ; preds = %cond.true.2102
  %245 = load i64, i64* @Vfontset_table, align 8
  %call2108 = call i64 @ASIZE(i64 %245)
  %mul2109 = mul nsw i64 2, %call2108
  %246 = load i64, i64* @Vfontset_table, align 8
  %call2110 = call i64 @ASIZE(i64 %246)
  %mul2111 = mul nsw i64 2, %call2110
  %add2112 = add nsw i64 0, %mul2111
  %mul2113 = mul nsw i64 0, %add2112
  %sub2114 = sub nsw i64 %mul2113, 1
  %cmp2115 = icmp slt i64 %sub2114, 0
  br i1 %cmp2115, label %cond.true.2117, label %cond.false.2127

cond.true.2117:                                   ; preds = %cond.true.2107
  %247 = load i64, i64* @Vfontset_table, align 8
  %call2118 = call i64 @ASIZE(i64 %247)
  %mul2119 = mul nsw i64 2, %call2118
  %add2120 = add nsw i64 0, %mul2119
  %mul2121 = mul nsw i64 0, %add2120
  %add2122 = add nsw i64 %mul2121, 1
  %shl2123 = shl i64 %add2122, 62
  %sub2124 = sub nsw i64 %shl2123, 1
  %mul2125 = mul nsw i64 %sub2124, 2
  %add2126 = add nsw i64 %mul2125, 1
  br label %cond.end.2133

cond.false.2127:                                  ; preds = %cond.true.2107
  %248 = load i64, i64* @Vfontset_table, align 8
  %call2128 = call i64 @ASIZE(i64 %248)
  %mul2129 = mul nsw i64 2, %call2128
  %add2130 = add nsw i64 0, %mul2129
  %mul2131 = mul nsw i64 0, %add2130
  %sub2132 = sub nsw i64 %mul2131, 1
  br label %cond.end.2133

cond.end.2133:                                    ; preds = %cond.false.2127, %cond.true.2117
  %cond2134 = phi i64 [ %add2126, %cond.true.2117 ], [ %sub2132, %cond.false.2127 ]
  %div2135 = sdiv i64 %cond2134, 8
  %cmp2136 = icmp slt i64 %mul2109, %div2135
  br i1 %cmp2136, label %cond.true.2282, label %lor.lhs.false.2262

cond.false.2138:                                  ; preds = %cond.true.2102
  br i1 false, label %cond.true.2139, label %cond.false.2140

cond.true.2139:                                   ; preds = %cond.false.2138
  br i1 false, label %cond.true.2282, label %lor.lhs.false.2262

cond.false.2140:                                  ; preds = %cond.false.2138
  %249 = load i64, i64* @Vfontset_table, align 8
  %call2141 = call i64 @ASIZE(i64 %249)
  %mul2142 = mul nsw i64 2, %call2141
  %add2143 = add nsw i64 0, %mul2142
  %mul2144 = mul nsw i64 0, %add2143
  %sub2145 = sub nsw i64 %mul2144, 1
  %cmp2146 = icmp slt i64 %sub2145, 0
  br i1 %cmp2146, label %cond.true.2148, label %cond.false.2169

cond.true.2148:                                   ; preds = %cond.false.2140
  %250 = load i64, i64* @Vfontset_table, align 8
  %call2149 = call i64 @ASIZE(i64 %250)
  %mul2150 = mul nsw i64 2, %call2149
  %add2151 = add nsw i64 0, %mul2150
  %mul2152 = mul nsw i64 0, %add2151
  %add2153 = add nsw i64 %mul2152, 0
  %neg2154 = xor i64 %add2153, -1
  %cmp2155 = icmp eq i64 %neg2154, -1
  %conv2156 = zext i1 %cmp2155 to i32
  %sub2157 = sub nsw i32 0, %conv2156
  %conv2158 = sext i32 %sub2157 to i64
  %251 = load i64, i64* @Vfontset_table, align 8
  %call2159 = call i64 @ASIZE(i64 %251)
  %mul2160 = mul nsw i64 2, %call2159
  %add2161 = add nsw i64 0, %mul2160
  %mul2162 = mul nsw i64 0, %add2161
  %add2163 = add nsw i64 %mul2162, 1
  %shl2164 = shl i64 %add2163, 62
  %sub2165 = sub nsw i64 %shl2164, 1
  %mul2166 = mul nsw i64 %sub2165, 2
  %add2167 = add nsw i64 %mul2166, 1
  %sub2168 = sub nsw i64 %conv2158, %add2167
  br label %cond.end.2175

cond.false.2169:                                  ; preds = %cond.false.2140
  %252 = load i64, i64* @Vfontset_table, align 8
  %call2170 = call i64 @ASIZE(i64 %252)
  %mul2171 = mul nsw i64 2, %call2170
  %add2172 = add nsw i64 0, %mul2171
  %mul2173 = mul nsw i64 0, %add2172
  %add2174 = add nsw i64 %mul2173, 0
  br label %cond.end.2175

cond.end.2175:                                    ; preds = %cond.false.2169, %cond.true.2148
  %cond2176 = phi i64 [ %sub2168, %cond.true.2148 ], [ %add2174, %cond.false.2169 ]
  %div2177 = sdiv i64 %cond2176, 8
  %253 = load i64, i64* @Vfontset_table, align 8
  %call2178 = call i64 @ASIZE(i64 %253)
  %mul2179 = mul nsw i64 2, %call2178
  %cmp2180 = icmp slt i64 %div2177, %mul2179
  br i1 %cmp2180, label %cond.true.2282, label %lor.lhs.false.2262

cond.false.2182:                                  ; preds = %lor.lhs.false.2101
  br i1 false, label %cond.true.2183, label %cond.false.2184

cond.true.2183:                                   ; preds = %cond.false.2182
  br i1 false, label %cond.true.2282, label %lor.lhs.false.2262

cond.false.2184:                                  ; preds = %cond.false.2182
  %254 = load i64, i64* @Vfontset_table, align 8
  %call2185 = call i64 @ASIZE(i64 %254)
  %mul2186 = mul nsw i64 2, %call2185
  %cmp2187 = icmp slt i64 %mul2186, 0
  br i1 %cmp2187, label %cond.true.2189, label %cond.false.2231

cond.true.2189:                                   ; preds = %cond.false.2184
  %255 = load i64, i64* @Vfontset_table, align 8
  %call2190 = call i64 @ASIZE(i64 %255)
  %mul2191 = mul nsw i64 2, %call2190
  %256 = load i64, i64* @Vfontset_table, align 8
  %call2192 = call i64 @ASIZE(i64 %256)
  %mul2193 = mul nsw i64 2, %call2192
  %add2194 = add nsw i64 0, %mul2193
  %mul2195 = mul nsw i64 0, %add2194
  %sub2196 = sub nsw i64 %mul2195, 1
  %cmp2197 = icmp slt i64 %sub2196, 0
  br i1 %cmp2197, label %cond.true.2199, label %cond.false.2220

cond.true.2199:                                   ; preds = %cond.true.2189
  %257 = load i64, i64* @Vfontset_table, align 8
  %call2200 = call i64 @ASIZE(i64 %257)
  %mul2201 = mul nsw i64 2, %call2200
  %add2202 = add nsw i64 0, %mul2201
  %mul2203 = mul nsw i64 0, %add2202
  %add2204 = add nsw i64 %mul2203, 0
  %neg2205 = xor i64 %add2204, -1
  %cmp2206 = icmp eq i64 %neg2205, -1
  %conv2207 = zext i1 %cmp2206 to i32
  %sub2208 = sub nsw i32 0, %conv2207
  %conv2209 = sext i32 %sub2208 to i64
  %258 = load i64, i64* @Vfontset_table, align 8
  %call2210 = call i64 @ASIZE(i64 %258)
  %mul2211 = mul nsw i64 2, %call2210
  %add2212 = add nsw i64 0, %mul2211
  %mul2213 = mul nsw i64 0, %add2212
  %add2214 = add nsw i64 %mul2213, 1
  %shl2215 = shl i64 %add2214, 62
  %sub2216 = sub nsw i64 %shl2215, 1
  %mul2217 = mul nsw i64 %sub2216, 2
  %add2218 = add nsw i64 %mul2217, 1
  %sub2219 = sub nsw i64 %conv2209, %add2218
  br label %cond.end.2226

cond.false.2220:                                  ; preds = %cond.true.2189
  %259 = load i64, i64* @Vfontset_table, align 8
  %call2221 = call i64 @ASIZE(i64 %259)
  %mul2222 = mul nsw i64 2, %call2221
  %add2223 = add nsw i64 0, %mul2222
  %mul2224 = mul nsw i64 0, %add2223
  %add2225 = add nsw i64 %mul2224, 0
  br label %cond.end.2226

cond.end.2226:                                    ; preds = %cond.false.2220, %cond.true.2199
  %cond2227 = phi i64 [ %sub2219, %cond.true.2199 ], [ %add2225, %cond.false.2220 ]
  %div2228 = sdiv i64 %cond2227, 8
  %cmp2229 = icmp slt i64 %mul2191, %div2228
  br i1 %cmp2229, label %cond.true.2282, label %lor.lhs.false.2262

cond.false.2231:                                  ; preds = %cond.false.2184
  %260 = load i64, i64* @Vfontset_table, align 8
  %call2232 = call i64 @ASIZE(i64 %260)
  %mul2233 = mul nsw i64 2, %call2232
  %add2234 = add nsw i64 0, %mul2233
  %mul2235 = mul nsw i64 0, %add2234
  %sub2236 = sub nsw i64 %mul2235, 1
  %cmp2237 = icmp slt i64 %sub2236, 0
  br i1 %cmp2237, label %cond.true.2239, label %cond.false.2249

cond.true.2239:                                   ; preds = %cond.false.2231
  %261 = load i64, i64* @Vfontset_table, align 8
  %call2240 = call i64 @ASIZE(i64 %261)
  %mul2241 = mul nsw i64 2, %call2240
  %add2242 = add nsw i64 0, %mul2241
  %mul2243 = mul nsw i64 0, %add2242
  %add2244 = add nsw i64 %mul2243, 1
  %shl2245 = shl i64 %add2244, 62
  %sub2246 = sub nsw i64 %shl2245, 1
  %mul2247 = mul nsw i64 %sub2246, 2
  %add2248 = add nsw i64 %mul2247, 1
  br label %cond.end.2255

cond.false.2249:                                  ; preds = %cond.false.2231
  %262 = load i64, i64* @Vfontset_table, align 8
  %call2250 = call i64 @ASIZE(i64 %262)
  %mul2251 = mul nsw i64 2, %call2250
  %add2252 = add nsw i64 0, %mul2251
  %mul2253 = mul nsw i64 0, %add2252
  %sub2254 = sub nsw i64 %mul2253, 1
  br label %cond.end.2255

cond.end.2255:                                    ; preds = %cond.false.2249, %cond.true.2239
  %cond2256 = phi i64 [ %add2248, %cond.true.2239 ], [ %sub2254, %cond.false.2249 ]
  %div2257 = sdiv i64 %cond2256, 8
  %263 = load i64, i64* @Vfontset_table, align 8
  %call2258 = call i64 @ASIZE(i64 %263)
  %mul2259 = mul nsw i64 2, %call2258
  %cmp2260 = icmp slt i64 %div2257, %mul2259
  br i1 %cmp2260, label %cond.true.2282, label %lor.lhs.false.2262

lor.lhs.false.2262:                               ; preds = %cond.end.2255, %cond.end.2226, %cond.true.2183, %cond.end.2175, %cond.true.2139, %cond.end.2133
  %264 = load i64, i64* @Vfontset_table, align 8
  %call2263 = call i64 @ASIZE(i64 %264)
  %mul2264 = mul nsw i64 2, %call2263
  %mul2265 = mul nsw i64 %mul2264, 8
  %mul2266 = mul nsw i64 0, %mul2265
  %sub2267 = sub nsw i64 %mul2266, 1
  %cmp2268 = icmp slt i64 %sub2267, 0
  br i1 %cmp2268, label %land.lhs.true.2270, label %lor.lhs.false.2276

land.lhs.true.2270:                               ; preds = %lor.lhs.false.2262
  %265 = load i64, i64* @Vfontset_table, align 8
  %call2271 = call i64 @ASIZE(i64 %265)
  %mul2272 = mul nsw i64 2, %call2271
  %mul2273 = mul nsw i64 %mul2272, 8
  %cmp2274 = icmp slt i64 %mul2273, -9223372036854775808
  br i1 %cmp2274, label %cond.true.2282, label %lor.lhs.false.2276

lor.lhs.false.2276:                               ; preds = %land.lhs.true.2270, %lor.lhs.false.2262
  %266 = load i64, i64* @Vfontset_table, align 8
  %call2277 = call i64 @ASIZE(i64 %266)
  %mul2278 = mul nsw i64 2, %call2277
  %mul2279 = mul nsw i64 %mul2278, 8
  %cmp2280 = icmp slt i64 9223372036854775807, %mul2279
  br i1 %cmp2280, label %cond.true.2282, label %cond.false.2300

cond.true.2282:                                   ; preds = %lor.lhs.false.2276, %land.lhs.true.2270, %cond.end.2255, %cond.end.2226, %cond.true.2183, %cond.end.2175, %cond.true.2139, %cond.end.2133, %land.lhs.true.2096
  %267 = load i64, i64* @Vfontset_table, align 8
  %call2283 = call i64 @ASIZE(i64 %267)
  %mul2284 = mul nsw i64 2, %call2283
  %mul2285 = mul i64 %mul2284, 8
  %cmp2286 = icmp ule i64 %mul2285, 9223372036854775807
  br i1 %cmp2286, label %cond.true.2288, label %cond.false.2292

cond.true.2288:                                   ; preds = %cond.true.2282
  %268 = load i64, i64* @Vfontset_table, align 8
  %call2289 = call i64 @ASIZE(i64 %268)
  %mul2290 = mul nsw i64 2, %call2289
  %mul2291 = mul i64 %mul2290, 8
  br label %cond.end.2298

cond.false.2292:                                  ; preds = %cond.true.2282
  %269 = load i64, i64* @Vfontset_table, align 8
  %call2293 = call i64 @ASIZE(i64 %269)
  %mul2294 = mul nsw i64 2, %call2293
  %mul2295 = mul i64 %mul2294, 8
  %sub2296 = sub i64 %mul2295, -9223372036854775808
  %add2297 = add nsw i64 %sub2296, -9223372036854775808
  br label %cond.end.2298

cond.end.2298:                                    ; preds = %cond.false.2292, %cond.true.2288
  %cond2299 = phi i64 [ %mul2291, %cond.true.2288 ], [ %add2297, %cond.false.2292 ]
  store i64 %cond2299, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then, label %lor.lhs.false.2841

cond.false.2300:                                  ; preds = %lor.lhs.false.2276
  %270 = load i64, i64* @Vfontset_table, align 8
  %call2301 = call i64 @ASIZE(i64 %270)
  %mul2302 = mul nsw i64 2, %call2301
  %mul2303 = mul i64 %mul2302, 8
  %cmp2304 = icmp ule i64 %mul2303, 9223372036854775807
  br i1 %cmp2304, label %cond.true.2306, label %cond.false.2310

cond.true.2306:                                   ; preds = %cond.false.2300
  %271 = load i64, i64* @Vfontset_table, align 8
  %call2307 = call i64 @ASIZE(i64 %271)
  %mul2308 = mul nsw i64 2, %call2307
  %mul2309 = mul i64 %mul2308, 8
  br label %cond.end.2316

cond.false.2310:                                  ; preds = %cond.false.2300
  %272 = load i64, i64* @Vfontset_table, align 8
  %call2311 = call i64 @ASIZE(i64 %272)
  %mul2312 = mul nsw i64 2, %call2311
  %mul2313 = mul i64 %mul2312, 8
  %sub2314 = sub i64 %mul2313, -9223372036854775808
  %add2315 = add nsw i64 %sub2314, -9223372036854775808
  br label %cond.end.2316

cond.end.2316:                                    ; preds = %cond.false.2310, %cond.true.2306
  %cond2317 = phi i64 [ %mul2309, %cond.true.2306 ], [ %add2315, %cond.false.2310 ]
  store i64 %cond2317, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then, label %lor.lhs.false.2841

cond.false.2318:                                  ; preds = %cond.false.1794
  br i1 false, label %cond.true.2319, label %cond.false.2580

cond.true.2319:                                   ; preds = %cond.false.2318
  %273 = load i64, i64* @Vfontset_table, align 8
  %call2320 = call i64 @ASIZE(i64 %273)
  %mul2321 = mul nsw i64 2, %call2320
  %add2322 = add nsw i64 0, %mul2321
  %mul2323 = mul nsw i64 0, %add2322
  %sub2324 = sub nsw i64 %mul2323, 1
  %cmp2325 = icmp slt i64 %sub2324, 0
  br i1 %cmp2325, label %cond.true.2327, label %cond.false.2348

cond.true.2327:                                   ; preds = %cond.true.2319
  %274 = load i64, i64* @Vfontset_table, align 8
  %call2328 = call i64 @ASIZE(i64 %274)
  %mul2329 = mul nsw i64 2, %call2328
  %add2330 = add nsw i64 0, %mul2329
  %mul2331 = mul nsw i64 0, %add2330
  %add2332 = add nsw i64 %mul2331, 0
  %neg2333 = xor i64 %add2332, -1
  %cmp2334 = icmp eq i64 %neg2333, -1
  %conv2335 = zext i1 %cmp2334 to i32
  %sub2336 = sub nsw i32 0, %conv2335
  %conv2337 = sext i32 %sub2336 to i64
  %275 = load i64, i64* @Vfontset_table, align 8
  %call2338 = call i64 @ASIZE(i64 %275)
  %mul2339 = mul nsw i64 2, %call2338
  %add2340 = add nsw i64 0, %mul2339
  %mul2341 = mul nsw i64 0, %add2340
  %add2342 = add nsw i64 %mul2341, 1
  %shl2343 = shl i64 %add2342, 62
  %sub2344 = sub nsw i64 %shl2343, 1
  %mul2345 = mul nsw i64 %sub2344, 2
  %add2346 = add nsw i64 %mul2345, 1
  %sub2347 = sub nsw i64 %conv2337, %add2346
  br label %cond.end.2354

cond.false.2348:                                  ; preds = %cond.true.2319
  %276 = load i64, i64* @Vfontset_table, align 8
  %call2349 = call i64 @ASIZE(i64 %276)
  %mul2350 = mul nsw i64 2, %call2349
  %add2351 = add nsw i64 0, %mul2350
  %mul2352 = mul nsw i64 0, %add2351
  %add2353 = add nsw i64 %mul2352, 0
  br label %cond.end.2354

cond.end.2354:                                    ; preds = %cond.false.2348, %cond.true.2327
  %cond2355 = phi i64 [ %sub2347, %cond.true.2327 ], [ %add2353, %cond.false.2348 ]
  %cmp2356 = icmp eq i64 %cond2355, 0
  br i1 %cmp2356, label %land.lhs.true.2358, label %lor.lhs.false.2363

land.lhs.true.2358:                               ; preds = %cond.end.2354
  %277 = load i64, i64* @Vfontset_table, align 8
  %call2359 = call i64 @ASIZE(i64 %277)
  %mul2360 = mul nsw i64 2, %call2359
  %cmp2361 = icmp slt i64 %mul2360, 0
  br i1 %cmp2361, label %cond.true.2544, label %lor.lhs.false.2363

lor.lhs.false.2363:                               ; preds = %land.lhs.true.2358, %cond.end.2354
  br i1 false, label %cond.true.2364, label %cond.false.2444

cond.true.2364:                                   ; preds = %lor.lhs.false.2363
  %278 = load i64, i64* @Vfontset_table, align 8
  %call2365 = call i64 @ASIZE(i64 %278)
  %mul2366 = mul nsw i64 2, %call2365
  %cmp2367 = icmp slt i64 %mul2366, 0
  br i1 %cmp2367, label %cond.true.2369, label %cond.false.2400

cond.true.2369:                                   ; preds = %cond.true.2364
  %279 = load i64, i64* @Vfontset_table, align 8
  %call2370 = call i64 @ASIZE(i64 %279)
  %mul2371 = mul nsw i64 2, %call2370
  %280 = load i64, i64* @Vfontset_table, align 8
  %call2372 = call i64 @ASIZE(i64 %280)
  %mul2373 = mul nsw i64 2, %call2372
  %add2374 = add nsw i64 0, %mul2373
  %mul2375 = mul nsw i64 0, %add2374
  %sub2376 = sub nsw i64 %mul2375, 1
  %cmp2377 = icmp slt i64 %sub2376, 0
  br i1 %cmp2377, label %cond.true.2379, label %cond.false.2389

cond.true.2379:                                   ; preds = %cond.true.2369
  %281 = load i64, i64* @Vfontset_table, align 8
  %call2380 = call i64 @ASIZE(i64 %281)
  %mul2381 = mul nsw i64 2, %call2380
  %add2382 = add nsw i64 0, %mul2381
  %mul2383 = mul nsw i64 0, %add2382
  %add2384 = add nsw i64 %mul2383, 1
  %shl2385 = shl i64 %add2384, 62
  %sub2386 = sub nsw i64 %shl2385, 1
  %mul2387 = mul nsw i64 %sub2386, 2
  %add2388 = add nsw i64 %mul2387, 1
  br label %cond.end.2395

cond.false.2389:                                  ; preds = %cond.true.2369
  %282 = load i64, i64* @Vfontset_table, align 8
  %call2390 = call i64 @ASIZE(i64 %282)
  %mul2391 = mul nsw i64 2, %call2390
  %add2392 = add nsw i64 0, %mul2391
  %mul2393 = mul nsw i64 0, %add2392
  %sub2394 = sub nsw i64 %mul2393, 1
  br label %cond.end.2395

cond.end.2395:                                    ; preds = %cond.false.2389, %cond.true.2379
  %cond2396 = phi i64 [ %add2388, %cond.true.2379 ], [ %sub2394, %cond.false.2389 ]
  %div2397 = sdiv i64 %cond2396, 8
  %cmp2398 = icmp slt i64 %mul2371, %div2397
  br i1 %cmp2398, label %cond.true.2544, label %lor.lhs.false.2524

cond.false.2400:                                  ; preds = %cond.true.2364
  br i1 false, label %cond.true.2401, label %cond.false.2402

cond.true.2401:                                   ; preds = %cond.false.2400
  br i1 false, label %cond.true.2544, label %lor.lhs.false.2524

cond.false.2402:                                  ; preds = %cond.false.2400
  %283 = load i64, i64* @Vfontset_table, align 8
  %call2403 = call i64 @ASIZE(i64 %283)
  %mul2404 = mul nsw i64 2, %call2403
  %add2405 = add nsw i64 0, %mul2404
  %mul2406 = mul nsw i64 0, %add2405
  %sub2407 = sub nsw i64 %mul2406, 1
  %cmp2408 = icmp slt i64 %sub2407, 0
  br i1 %cmp2408, label %cond.true.2410, label %cond.false.2431

cond.true.2410:                                   ; preds = %cond.false.2402
  %284 = load i64, i64* @Vfontset_table, align 8
  %call2411 = call i64 @ASIZE(i64 %284)
  %mul2412 = mul nsw i64 2, %call2411
  %add2413 = add nsw i64 0, %mul2412
  %mul2414 = mul nsw i64 0, %add2413
  %add2415 = add nsw i64 %mul2414, 0
  %neg2416 = xor i64 %add2415, -1
  %cmp2417 = icmp eq i64 %neg2416, -1
  %conv2418 = zext i1 %cmp2417 to i32
  %sub2419 = sub nsw i32 0, %conv2418
  %conv2420 = sext i32 %sub2419 to i64
  %285 = load i64, i64* @Vfontset_table, align 8
  %call2421 = call i64 @ASIZE(i64 %285)
  %mul2422 = mul nsw i64 2, %call2421
  %add2423 = add nsw i64 0, %mul2422
  %mul2424 = mul nsw i64 0, %add2423
  %add2425 = add nsw i64 %mul2424, 1
  %shl2426 = shl i64 %add2425, 62
  %sub2427 = sub nsw i64 %shl2426, 1
  %mul2428 = mul nsw i64 %sub2427, 2
  %add2429 = add nsw i64 %mul2428, 1
  %sub2430 = sub nsw i64 %conv2420, %add2429
  br label %cond.end.2437

cond.false.2431:                                  ; preds = %cond.false.2402
  %286 = load i64, i64* @Vfontset_table, align 8
  %call2432 = call i64 @ASIZE(i64 %286)
  %mul2433 = mul nsw i64 2, %call2432
  %add2434 = add nsw i64 0, %mul2433
  %mul2435 = mul nsw i64 0, %add2434
  %add2436 = add nsw i64 %mul2435, 0
  br label %cond.end.2437

cond.end.2437:                                    ; preds = %cond.false.2431, %cond.true.2410
  %cond2438 = phi i64 [ %sub2430, %cond.true.2410 ], [ %add2436, %cond.false.2431 ]
  %div2439 = sdiv i64 %cond2438, 8
  %287 = load i64, i64* @Vfontset_table, align 8
  %call2440 = call i64 @ASIZE(i64 %287)
  %mul2441 = mul nsw i64 2, %call2440
  %cmp2442 = icmp slt i64 %div2439, %mul2441
  br i1 %cmp2442, label %cond.true.2544, label %lor.lhs.false.2524

cond.false.2444:                                  ; preds = %lor.lhs.false.2363
  br i1 false, label %cond.true.2445, label %cond.false.2446

cond.true.2445:                                   ; preds = %cond.false.2444
  br i1 false, label %cond.true.2544, label %lor.lhs.false.2524

cond.false.2446:                                  ; preds = %cond.false.2444
  %288 = load i64, i64* @Vfontset_table, align 8
  %call2447 = call i64 @ASIZE(i64 %288)
  %mul2448 = mul nsw i64 2, %call2447
  %cmp2449 = icmp slt i64 %mul2448, 0
  br i1 %cmp2449, label %cond.true.2451, label %cond.false.2493

cond.true.2451:                                   ; preds = %cond.false.2446
  %289 = load i64, i64* @Vfontset_table, align 8
  %call2452 = call i64 @ASIZE(i64 %289)
  %mul2453 = mul nsw i64 2, %call2452
  %290 = load i64, i64* @Vfontset_table, align 8
  %call2454 = call i64 @ASIZE(i64 %290)
  %mul2455 = mul nsw i64 2, %call2454
  %add2456 = add nsw i64 0, %mul2455
  %mul2457 = mul nsw i64 0, %add2456
  %sub2458 = sub nsw i64 %mul2457, 1
  %cmp2459 = icmp slt i64 %sub2458, 0
  br i1 %cmp2459, label %cond.true.2461, label %cond.false.2482

cond.true.2461:                                   ; preds = %cond.true.2451
  %291 = load i64, i64* @Vfontset_table, align 8
  %call2462 = call i64 @ASIZE(i64 %291)
  %mul2463 = mul nsw i64 2, %call2462
  %add2464 = add nsw i64 0, %mul2463
  %mul2465 = mul nsw i64 0, %add2464
  %add2466 = add nsw i64 %mul2465, 0
  %neg2467 = xor i64 %add2466, -1
  %cmp2468 = icmp eq i64 %neg2467, -1
  %conv2469 = zext i1 %cmp2468 to i32
  %sub2470 = sub nsw i32 0, %conv2469
  %conv2471 = sext i32 %sub2470 to i64
  %292 = load i64, i64* @Vfontset_table, align 8
  %call2472 = call i64 @ASIZE(i64 %292)
  %mul2473 = mul nsw i64 2, %call2472
  %add2474 = add nsw i64 0, %mul2473
  %mul2475 = mul nsw i64 0, %add2474
  %add2476 = add nsw i64 %mul2475, 1
  %shl2477 = shl i64 %add2476, 62
  %sub2478 = sub nsw i64 %shl2477, 1
  %mul2479 = mul nsw i64 %sub2478, 2
  %add2480 = add nsw i64 %mul2479, 1
  %sub2481 = sub nsw i64 %conv2471, %add2480
  br label %cond.end.2488

cond.false.2482:                                  ; preds = %cond.true.2451
  %293 = load i64, i64* @Vfontset_table, align 8
  %call2483 = call i64 @ASIZE(i64 %293)
  %mul2484 = mul nsw i64 2, %call2483
  %add2485 = add nsw i64 0, %mul2484
  %mul2486 = mul nsw i64 0, %add2485
  %add2487 = add nsw i64 %mul2486, 0
  br label %cond.end.2488

cond.end.2488:                                    ; preds = %cond.false.2482, %cond.true.2461
  %cond2489 = phi i64 [ %sub2481, %cond.true.2461 ], [ %add2487, %cond.false.2482 ]
  %div2490 = sdiv i64 %cond2489, 8
  %cmp2491 = icmp slt i64 %mul2453, %div2490
  br i1 %cmp2491, label %cond.true.2544, label %lor.lhs.false.2524

cond.false.2493:                                  ; preds = %cond.false.2446
  %294 = load i64, i64* @Vfontset_table, align 8
  %call2494 = call i64 @ASIZE(i64 %294)
  %mul2495 = mul nsw i64 2, %call2494
  %add2496 = add nsw i64 0, %mul2495
  %mul2497 = mul nsw i64 0, %add2496
  %sub2498 = sub nsw i64 %mul2497, 1
  %cmp2499 = icmp slt i64 %sub2498, 0
  br i1 %cmp2499, label %cond.true.2501, label %cond.false.2511

cond.true.2501:                                   ; preds = %cond.false.2493
  %295 = load i64, i64* @Vfontset_table, align 8
  %call2502 = call i64 @ASIZE(i64 %295)
  %mul2503 = mul nsw i64 2, %call2502
  %add2504 = add nsw i64 0, %mul2503
  %mul2505 = mul nsw i64 0, %add2504
  %add2506 = add nsw i64 %mul2505, 1
  %shl2507 = shl i64 %add2506, 62
  %sub2508 = sub nsw i64 %shl2507, 1
  %mul2509 = mul nsw i64 %sub2508, 2
  %add2510 = add nsw i64 %mul2509, 1
  br label %cond.end.2517

cond.false.2511:                                  ; preds = %cond.false.2493
  %296 = load i64, i64* @Vfontset_table, align 8
  %call2512 = call i64 @ASIZE(i64 %296)
  %mul2513 = mul nsw i64 2, %call2512
  %add2514 = add nsw i64 0, %mul2513
  %mul2515 = mul nsw i64 0, %add2514
  %sub2516 = sub nsw i64 %mul2515, 1
  br label %cond.end.2517

cond.end.2517:                                    ; preds = %cond.false.2511, %cond.true.2501
  %cond2518 = phi i64 [ %add2510, %cond.true.2501 ], [ %sub2516, %cond.false.2511 ]
  %div2519 = sdiv i64 %cond2518, 8
  %297 = load i64, i64* @Vfontset_table, align 8
  %call2520 = call i64 @ASIZE(i64 %297)
  %mul2521 = mul nsw i64 2, %call2520
  %cmp2522 = icmp slt i64 %div2519, %mul2521
  br i1 %cmp2522, label %cond.true.2544, label %lor.lhs.false.2524

lor.lhs.false.2524:                               ; preds = %cond.end.2517, %cond.end.2488, %cond.true.2445, %cond.end.2437, %cond.true.2401, %cond.end.2395
  %298 = load i64, i64* @Vfontset_table, align 8
  %call2525 = call i64 @ASIZE(i64 %298)
  %mul2526 = mul nsw i64 2, %call2525
  %mul2527 = mul nsw i64 %mul2526, 8
  %mul2528 = mul nsw i64 0, %mul2527
  %sub2529 = sub nsw i64 %mul2528, 1
  %cmp2530 = icmp slt i64 %sub2529, 0
  br i1 %cmp2530, label %land.lhs.true.2532, label %lor.lhs.false.2538

land.lhs.true.2532:                               ; preds = %lor.lhs.false.2524
  %299 = load i64, i64* @Vfontset_table, align 8
  %call2533 = call i64 @ASIZE(i64 %299)
  %mul2534 = mul nsw i64 2, %call2533
  %mul2535 = mul nsw i64 %mul2534, 8
  %cmp2536 = icmp slt i64 %mul2535, -9223372036854775808
  br i1 %cmp2536, label %cond.true.2544, label %lor.lhs.false.2538

lor.lhs.false.2538:                               ; preds = %land.lhs.true.2532, %lor.lhs.false.2524
  %300 = load i64, i64* @Vfontset_table, align 8
  %call2539 = call i64 @ASIZE(i64 %300)
  %mul2540 = mul nsw i64 2, %call2539
  %mul2541 = mul nsw i64 %mul2540, 8
  %cmp2542 = icmp slt i64 9223372036854775807, %mul2541
  br i1 %cmp2542, label %cond.true.2544, label %cond.false.2562

cond.true.2544:                                   ; preds = %lor.lhs.false.2538, %land.lhs.true.2532, %cond.end.2517, %cond.end.2488, %cond.true.2445, %cond.end.2437, %cond.true.2401, %cond.end.2395, %land.lhs.true.2358
  %301 = load i64, i64* @Vfontset_table, align 8
  %call2545 = call i64 @ASIZE(i64 %301)
  %mul2546 = mul nsw i64 2, %call2545
  %mul2547 = mul i64 %mul2546, 8
  %cmp2548 = icmp ule i64 %mul2547, 9223372036854775807
  br i1 %cmp2548, label %cond.true.2550, label %cond.false.2554

cond.true.2550:                                   ; preds = %cond.true.2544
  %302 = load i64, i64* @Vfontset_table, align 8
  %call2551 = call i64 @ASIZE(i64 %302)
  %mul2552 = mul nsw i64 2, %call2551
  %mul2553 = mul i64 %mul2552, 8
  br label %cond.end.2560

cond.false.2554:                                  ; preds = %cond.true.2544
  %303 = load i64, i64* @Vfontset_table, align 8
  %call2555 = call i64 @ASIZE(i64 %303)
  %mul2556 = mul nsw i64 2, %call2555
  %mul2557 = mul i64 %mul2556, 8
  %sub2558 = sub i64 %mul2557, -9223372036854775808
  %add2559 = add nsw i64 %sub2558, -9223372036854775808
  br label %cond.end.2560

cond.end.2560:                                    ; preds = %cond.false.2554, %cond.true.2550
  %cond2561 = phi i64 [ %mul2553, %cond.true.2550 ], [ %add2559, %cond.false.2554 ]
  store i64 %cond2561, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then, label %lor.lhs.false.2841

cond.false.2562:                                  ; preds = %lor.lhs.false.2538
  %304 = load i64, i64* @Vfontset_table, align 8
  %call2563 = call i64 @ASIZE(i64 %304)
  %mul2564 = mul nsw i64 2, %call2563
  %mul2565 = mul i64 %mul2564, 8
  %cmp2566 = icmp ule i64 %mul2565, 9223372036854775807
  br i1 %cmp2566, label %cond.true.2568, label %cond.false.2572

cond.true.2568:                                   ; preds = %cond.false.2562
  %305 = load i64, i64* @Vfontset_table, align 8
  %call2569 = call i64 @ASIZE(i64 %305)
  %mul2570 = mul nsw i64 2, %call2569
  %mul2571 = mul i64 %mul2570, 8
  br label %cond.end.2578

cond.false.2572:                                  ; preds = %cond.false.2562
  %306 = load i64, i64* @Vfontset_table, align 8
  %call2573 = call i64 @ASIZE(i64 %306)
  %mul2574 = mul nsw i64 2, %call2573
  %mul2575 = mul i64 %mul2574, 8
  %sub2576 = sub i64 %mul2575, -9223372036854775808
  %add2577 = add nsw i64 %sub2576, -9223372036854775808
  br label %cond.end.2578

cond.end.2578:                                    ; preds = %cond.false.2572, %cond.true.2568
  %cond2579 = phi i64 [ %mul2571, %cond.true.2568 ], [ %add2577, %cond.false.2572 ]
  store i64 %cond2579, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then, label %lor.lhs.false.2841

cond.false.2580:                                  ; preds = %cond.false.2318
  %307 = load i64, i64* @Vfontset_table, align 8
  %call2581 = call i64 @ASIZE(i64 %307)
  %mul2582 = mul nsw i64 2, %call2581
  %add2583 = add nsw i64 0, %mul2582
  %mul2584 = mul nsw i64 0, %add2583
  %sub2585 = sub nsw i64 %mul2584, 1
  %cmp2586 = icmp slt i64 %sub2585, 0
  br i1 %cmp2586, label %cond.true.2588, label %cond.false.2609

cond.true.2588:                                   ; preds = %cond.false.2580
  %308 = load i64, i64* @Vfontset_table, align 8
  %call2589 = call i64 @ASIZE(i64 %308)
  %mul2590 = mul nsw i64 2, %call2589
  %add2591 = add nsw i64 0, %mul2590
  %mul2592 = mul nsw i64 0, %add2591
  %add2593 = add nsw i64 %mul2592, 0
  %neg2594 = xor i64 %add2593, -1
  %cmp2595 = icmp eq i64 %neg2594, -1
  %conv2596 = zext i1 %cmp2595 to i32
  %sub2597 = sub nsw i32 0, %conv2596
  %conv2598 = sext i32 %sub2597 to i64
  %309 = load i64, i64* @Vfontset_table, align 8
  %call2599 = call i64 @ASIZE(i64 %309)
  %mul2600 = mul nsw i64 2, %call2599
  %add2601 = add nsw i64 0, %mul2600
  %mul2602 = mul nsw i64 0, %add2601
  %add2603 = add nsw i64 %mul2602, 1
  %shl2604 = shl i64 %add2603, 62
  %sub2605 = sub nsw i64 %shl2604, 1
  %mul2606 = mul nsw i64 %sub2605, 2
  %add2607 = add nsw i64 %mul2606, 1
  %sub2608 = sub nsw i64 %conv2598, %add2607
  br label %cond.end.2615

cond.false.2609:                                  ; preds = %cond.false.2580
  %310 = load i64, i64* @Vfontset_table, align 8
  %call2610 = call i64 @ASIZE(i64 %310)
  %mul2611 = mul nsw i64 2, %call2610
  %add2612 = add nsw i64 0, %mul2611
  %mul2613 = mul nsw i64 0, %add2612
  %add2614 = add nsw i64 %mul2613, 0
  br label %cond.end.2615

cond.end.2615:                                    ; preds = %cond.false.2609, %cond.true.2588
  %cond2616 = phi i64 [ %sub2608, %cond.true.2588 ], [ %add2614, %cond.false.2609 ]
  %cmp2617 = icmp eq i64 %cond2616, 0
  br i1 %cmp2617, label %land.lhs.true.2619, label %lor.lhs.false.2624

land.lhs.true.2619:                               ; preds = %cond.end.2615
  %311 = load i64, i64* @Vfontset_table, align 8
  %call2620 = call i64 @ASIZE(i64 %311)
  %mul2621 = mul nsw i64 2, %call2620
  %cmp2622 = icmp slt i64 %mul2621, 0
  br i1 %cmp2622, label %cond.true.2805, label %lor.lhs.false.2624

lor.lhs.false.2624:                               ; preds = %land.lhs.true.2619, %cond.end.2615
  br i1 false, label %cond.true.2625, label %cond.false.2705

cond.true.2625:                                   ; preds = %lor.lhs.false.2624
  %312 = load i64, i64* @Vfontset_table, align 8
  %call2626 = call i64 @ASIZE(i64 %312)
  %mul2627 = mul nsw i64 2, %call2626
  %cmp2628 = icmp slt i64 %mul2627, 0
  br i1 %cmp2628, label %cond.true.2630, label %cond.false.2661

cond.true.2630:                                   ; preds = %cond.true.2625
  %313 = load i64, i64* @Vfontset_table, align 8
  %call2631 = call i64 @ASIZE(i64 %313)
  %mul2632 = mul nsw i64 2, %call2631
  %314 = load i64, i64* @Vfontset_table, align 8
  %call2633 = call i64 @ASIZE(i64 %314)
  %mul2634 = mul nsw i64 2, %call2633
  %add2635 = add nsw i64 0, %mul2634
  %mul2636 = mul nsw i64 0, %add2635
  %sub2637 = sub nsw i64 %mul2636, 1
  %cmp2638 = icmp slt i64 %sub2637, 0
  br i1 %cmp2638, label %cond.true.2640, label %cond.false.2650

cond.true.2640:                                   ; preds = %cond.true.2630
  %315 = load i64, i64* @Vfontset_table, align 8
  %call2641 = call i64 @ASIZE(i64 %315)
  %mul2642 = mul nsw i64 2, %call2641
  %add2643 = add nsw i64 0, %mul2642
  %mul2644 = mul nsw i64 0, %add2643
  %add2645 = add nsw i64 %mul2644, 1
  %shl2646 = shl i64 %add2645, 62
  %sub2647 = sub nsw i64 %shl2646, 1
  %mul2648 = mul nsw i64 %sub2647, 2
  %add2649 = add nsw i64 %mul2648, 1
  br label %cond.end.2656

cond.false.2650:                                  ; preds = %cond.true.2630
  %316 = load i64, i64* @Vfontset_table, align 8
  %call2651 = call i64 @ASIZE(i64 %316)
  %mul2652 = mul nsw i64 2, %call2651
  %add2653 = add nsw i64 0, %mul2652
  %mul2654 = mul nsw i64 0, %add2653
  %sub2655 = sub nsw i64 %mul2654, 1
  br label %cond.end.2656

cond.end.2656:                                    ; preds = %cond.false.2650, %cond.true.2640
  %cond2657 = phi i64 [ %add2649, %cond.true.2640 ], [ %sub2655, %cond.false.2650 ]
  %div2658 = sdiv i64 %cond2657, 8
  %cmp2659 = icmp slt i64 %mul2632, %div2658
  br i1 %cmp2659, label %cond.true.2805, label %lor.lhs.false.2785

cond.false.2661:                                  ; preds = %cond.true.2625
  br i1 false, label %cond.true.2662, label %cond.false.2663

cond.true.2662:                                   ; preds = %cond.false.2661
  br i1 false, label %cond.true.2805, label %lor.lhs.false.2785

cond.false.2663:                                  ; preds = %cond.false.2661
  %317 = load i64, i64* @Vfontset_table, align 8
  %call2664 = call i64 @ASIZE(i64 %317)
  %mul2665 = mul nsw i64 2, %call2664
  %add2666 = add nsw i64 0, %mul2665
  %mul2667 = mul nsw i64 0, %add2666
  %sub2668 = sub nsw i64 %mul2667, 1
  %cmp2669 = icmp slt i64 %sub2668, 0
  br i1 %cmp2669, label %cond.true.2671, label %cond.false.2692

cond.true.2671:                                   ; preds = %cond.false.2663
  %318 = load i64, i64* @Vfontset_table, align 8
  %call2672 = call i64 @ASIZE(i64 %318)
  %mul2673 = mul nsw i64 2, %call2672
  %add2674 = add nsw i64 0, %mul2673
  %mul2675 = mul nsw i64 0, %add2674
  %add2676 = add nsw i64 %mul2675, 0
  %neg2677 = xor i64 %add2676, -1
  %cmp2678 = icmp eq i64 %neg2677, -1
  %conv2679 = zext i1 %cmp2678 to i32
  %sub2680 = sub nsw i32 0, %conv2679
  %conv2681 = sext i32 %sub2680 to i64
  %319 = load i64, i64* @Vfontset_table, align 8
  %call2682 = call i64 @ASIZE(i64 %319)
  %mul2683 = mul nsw i64 2, %call2682
  %add2684 = add nsw i64 0, %mul2683
  %mul2685 = mul nsw i64 0, %add2684
  %add2686 = add nsw i64 %mul2685, 1
  %shl2687 = shl i64 %add2686, 62
  %sub2688 = sub nsw i64 %shl2687, 1
  %mul2689 = mul nsw i64 %sub2688, 2
  %add2690 = add nsw i64 %mul2689, 1
  %sub2691 = sub nsw i64 %conv2681, %add2690
  br label %cond.end.2698

cond.false.2692:                                  ; preds = %cond.false.2663
  %320 = load i64, i64* @Vfontset_table, align 8
  %call2693 = call i64 @ASIZE(i64 %320)
  %mul2694 = mul nsw i64 2, %call2693
  %add2695 = add nsw i64 0, %mul2694
  %mul2696 = mul nsw i64 0, %add2695
  %add2697 = add nsw i64 %mul2696, 0
  br label %cond.end.2698

cond.end.2698:                                    ; preds = %cond.false.2692, %cond.true.2671
  %cond2699 = phi i64 [ %sub2691, %cond.true.2671 ], [ %add2697, %cond.false.2692 ]
  %div2700 = sdiv i64 %cond2699, 8
  %321 = load i64, i64* @Vfontset_table, align 8
  %call2701 = call i64 @ASIZE(i64 %321)
  %mul2702 = mul nsw i64 2, %call2701
  %cmp2703 = icmp slt i64 %div2700, %mul2702
  br i1 %cmp2703, label %cond.true.2805, label %lor.lhs.false.2785

cond.false.2705:                                  ; preds = %lor.lhs.false.2624
  br i1 false, label %cond.true.2706, label %cond.false.2707

cond.true.2706:                                   ; preds = %cond.false.2705
  br i1 false, label %cond.true.2805, label %lor.lhs.false.2785

cond.false.2707:                                  ; preds = %cond.false.2705
  %322 = load i64, i64* @Vfontset_table, align 8
  %call2708 = call i64 @ASIZE(i64 %322)
  %mul2709 = mul nsw i64 2, %call2708
  %cmp2710 = icmp slt i64 %mul2709, 0
  br i1 %cmp2710, label %cond.true.2712, label %cond.false.2754

cond.true.2712:                                   ; preds = %cond.false.2707
  %323 = load i64, i64* @Vfontset_table, align 8
  %call2713 = call i64 @ASIZE(i64 %323)
  %mul2714 = mul nsw i64 2, %call2713
  %324 = load i64, i64* @Vfontset_table, align 8
  %call2715 = call i64 @ASIZE(i64 %324)
  %mul2716 = mul nsw i64 2, %call2715
  %add2717 = add nsw i64 0, %mul2716
  %mul2718 = mul nsw i64 0, %add2717
  %sub2719 = sub nsw i64 %mul2718, 1
  %cmp2720 = icmp slt i64 %sub2719, 0
  br i1 %cmp2720, label %cond.true.2722, label %cond.false.2743

cond.true.2722:                                   ; preds = %cond.true.2712
  %325 = load i64, i64* @Vfontset_table, align 8
  %call2723 = call i64 @ASIZE(i64 %325)
  %mul2724 = mul nsw i64 2, %call2723
  %add2725 = add nsw i64 0, %mul2724
  %mul2726 = mul nsw i64 0, %add2725
  %add2727 = add nsw i64 %mul2726, 0
  %neg2728 = xor i64 %add2727, -1
  %cmp2729 = icmp eq i64 %neg2728, -1
  %conv2730 = zext i1 %cmp2729 to i32
  %sub2731 = sub nsw i32 0, %conv2730
  %conv2732 = sext i32 %sub2731 to i64
  %326 = load i64, i64* @Vfontset_table, align 8
  %call2733 = call i64 @ASIZE(i64 %326)
  %mul2734 = mul nsw i64 2, %call2733
  %add2735 = add nsw i64 0, %mul2734
  %mul2736 = mul nsw i64 0, %add2735
  %add2737 = add nsw i64 %mul2736, 1
  %shl2738 = shl i64 %add2737, 62
  %sub2739 = sub nsw i64 %shl2738, 1
  %mul2740 = mul nsw i64 %sub2739, 2
  %add2741 = add nsw i64 %mul2740, 1
  %sub2742 = sub nsw i64 %conv2732, %add2741
  br label %cond.end.2749

cond.false.2743:                                  ; preds = %cond.true.2712
  %327 = load i64, i64* @Vfontset_table, align 8
  %call2744 = call i64 @ASIZE(i64 %327)
  %mul2745 = mul nsw i64 2, %call2744
  %add2746 = add nsw i64 0, %mul2745
  %mul2747 = mul nsw i64 0, %add2746
  %add2748 = add nsw i64 %mul2747, 0
  br label %cond.end.2749

cond.end.2749:                                    ; preds = %cond.false.2743, %cond.true.2722
  %cond2750 = phi i64 [ %sub2742, %cond.true.2722 ], [ %add2748, %cond.false.2743 ]
  %div2751 = sdiv i64 %cond2750, 8
  %cmp2752 = icmp slt i64 %mul2714, %div2751
  br i1 %cmp2752, label %cond.true.2805, label %lor.lhs.false.2785

cond.false.2754:                                  ; preds = %cond.false.2707
  %328 = load i64, i64* @Vfontset_table, align 8
  %call2755 = call i64 @ASIZE(i64 %328)
  %mul2756 = mul nsw i64 2, %call2755
  %add2757 = add nsw i64 0, %mul2756
  %mul2758 = mul nsw i64 0, %add2757
  %sub2759 = sub nsw i64 %mul2758, 1
  %cmp2760 = icmp slt i64 %sub2759, 0
  br i1 %cmp2760, label %cond.true.2762, label %cond.false.2772

cond.true.2762:                                   ; preds = %cond.false.2754
  %329 = load i64, i64* @Vfontset_table, align 8
  %call2763 = call i64 @ASIZE(i64 %329)
  %mul2764 = mul nsw i64 2, %call2763
  %add2765 = add nsw i64 0, %mul2764
  %mul2766 = mul nsw i64 0, %add2765
  %add2767 = add nsw i64 %mul2766, 1
  %shl2768 = shl i64 %add2767, 62
  %sub2769 = sub nsw i64 %shl2768, 1
  %mul2770 = mul nsw i64 %sub2769, 2
  %add2771 = add nsw i64 %mul2770, 1
  br label %cond.end.2778

cond.false.2772:                                  ; preds = %cond.false.2754
  %330 = load i64, i64* @Vfontset_table, align 8
  %call2773 = call i64 @ASIZE(i64 %330)
  %mul2774 = mul nsw i64 2, %call2773
  %add2775 = add nsw i64 0, %mul2774
  %mul2776 = mul nsw i64 0, %add2775
  %sub2777 = sub nsw i64 %mul2776, 1
  br label %cond.end.2778

cond.end.2778:                                    ; preds = %cond.false.2772, %cond.true.2762
  %cond2779 = phi i64 [ %add2771, %cond.true.2762 ], [ %sub2777, %cond.false.2772 ]
  %div2780 = sdiv i64 %cond2779, 8
  %331 = load i64, i64* @Vfontset_table, align 8
  %call2781 = call i64 @ASIZE(i64 %331)
  %mul2782 = mul nsw i64 2, %call2781
  %cmp2783 = icmp slt i64 %div2780, %mul2782
  br i1 %cmp2783, label %cond.true.2805, label %lor.lhs.false.2785

lor.lhs.false.2785:                               ; preds = %cond.end.2778, %cond.end.2749, %cond.true.2706, %cond.end.2698, %cond.true.2662, %cond.end.2656
  %332 = load i64, i64* @Vfontset_table, align 8
  %call2786 = call i64 @ASIZE(i64 %332)
  %mul2787 = mul nsw i64 2, %call2786
  %mul2788 = mul nsw i64 %mul2787, 8
  %mul2789 = mul nsw i64 0, %mul2788
  %sub2790 = sub nsw i64 %mul2789, 1
  %cmp2791 = icmp slt i64 %sub2790, 0
  br i1 %cmp2791, label %land.lhs.true.2793, label %lor.lhs.false.2799

land.lhs.true.2793:                               ; preds = %lor.lhs.false.2785
  %333 = load i64, i64* @Vfontset_table, align 8
  %call2794 = call i64 @ASIZE(i64 %333)
  %mul2795 = mul nsw i64 2, %call2794
  %mul2796 = mul nsw i64 %mul2795, 8
  %cmp2797 = icmp slt i64 %mul2796, -9223372036854775808
  br i1 %cmp2797, label %cond.true.2805, label %lor.lhs.false.2799

lor.lhs.false.2799:                               ; preds = %land.lhs.true.2793, %lor.lhs.false.2785
  %334 = load i64, i64* @Vfontset_table, align 8
  %call2800 = call i64 @ASIZE(i64 %334)
  %mul2801 = mul nsw i64 2, %call2800
  %mul2802 = mul nsw i64 %mul2801, 8
  %cmp2803 = icmp slt i64 9223372036854775807, %mul2802
  br i1 %cmp2803, label %cond.true.2805, label %cond.false.2823

cond.true.2805:                                   ; preds = %lor.lhs.false.2799, %land.lhs.true.2793, %cond.end.2778, %cond.end.2749, %cond.true.2706, %cond.end.2698, %cond.true.2662, %cond.end.2656, %land.lhs.true.2619
  %335 = load i64, i64* @Vfontset_table, align 8
  %call2806 = call i64 @ASIZE(i64 %335)
  %mul2807 = mul nsw i64 2, %call2806
  %mul2808 = mul i64 %mul2807, 8
  %cmp2809 = icmp ule i64 %mul2808, 9223372036854775807
  br i1 %cmp2809, label %cond.true.2811, label %cond.false.2815

cond.true.2811:                                   ; preds = %cond.true.2805
  %336 = load i64, i64* @Vfontset_table, align 8
  %call2812 = call i64 @ASIZE(i64 %336)
  %mul2813 = mul nsw i64 2, %call2812
  %mul2814 = mul i64 %mul2813, 8
  br label %cond.end.2821

cond.false.2815:                                  ; preds = %cond.true.2805
  %337 = load i64, i64* @Vfontset_table, align 8
  %call2816 = call i64 @ASIZE(i64 %337)
  %mul2817 = mul nsw i64 2, %call2816
  %mul2818 = mul i64 %mul2817, 8
  %sub2819 = sub i64 %mul2818, -9223372036854775808
  %add2820 = add nsw i64 %sub2819, -9223372036854775808
  br label %cond.end.2821

cond.end.2821:                                    ; preds = %cond.false.2815, %cond.true.2811
  %cond2822 = phi i64 [ %mul2814, %cond.true.2811 ], [ %add2820, %cond.false.2815 ]
  store i64 %cond2822, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then, label %lor.lhs.false.2841

cond.false.2823:                                  ; preds = %lor.lhs.false.2799
  %338 = load i64, i64* @Vfontset_table, align 8
  %call2824 = call i64 @ASIZE(i64 %338)
  %mul2825 = mul nsw i64 2, %call2824
  %mul2826 = mul i64 %mul2825, 8
  %cmp2827 = icmp ule i64 %mul2826, 9223372036854775807
  br i1 %cmp2827, label %cond.true.2829, label %cond.false.2833

cond.true.2829:                                   ; preds = %cond.false.2823
  %339 = load i64, i64* @Vfontset_table, align 8
  %call2830 = call i64 @ASIZE(i64 %339)
  %mul2831 = mul nsw i64 2, %call2830
  %mul2832 = mul i64 %mul2831, 8
  br label %cond.end.2839

cond.false.2833:                                  ; preds = %cond.false.2823
  %340 = load i64, i64* @Vfontset_table, align 8
  %call2834 = call i64 @ASIZE(i64 %340)
  %mul2835 = mul nsw i64 2, %call2834
  %mul2836 = mul i64 %mul2835, 8
  %sub2837 = sub i64 %mul2836, -9223372036854775808
  %add2838 = add nsw i64 %sub2837, -9223372036854775808
  br label %cond.end.2839

cond.end.2839:                                    ; preds = %cond.false.2833, %cond.true.2829
  %cond2840 = phi i64 [ %mul2832, %cond.true.2829 ], [ %add2838, %cond.false.2833 ]
  store i64 %cond2840, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then, label %lor.lhs.false.2841

lor.lhs.false.2841:                               ; preds = %cond.end.2839, %cond.end.2821, %cond.end.2578, %cond.end.2560, %cond.end.2316, %cond.end.2298, %cond.end.2055, %cond.end.2037, %cond.end.1791, %cond.end.1769, %cond.end.1522, %cond.end.1500, %cond.end.1226, %cond.end.1197, %cond.end.943, %cond.end.914, %cond.end.605, %cond.end.576, %cond.end.322, %cond.end.293
  %341 = load i64, i64* %alloca_nbytes, align 8
  %cmp2842 = icmp ult i64 -1, %341
  br i1 %cmp2842, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.2841, %cond.end.2839, %cond.end.2821, %cond.end.2578, %cond.end.2560, %cond.end.2316, %cond.end.2298, %cond.end.2055, %cond.end.2037, %cond.end.1791, %cond.end.1769, %cond.end.1522, %cond.end.1500, %cond.end.1226, %cond.end.1197, %cond.end.943, %cond.end.914, %cond.end.605, %cond.end.576, %cond.end.322, %cond.end.293
  call void @memory_full(i64 -1) #6
  unreachable

if.else:                                          ; preds = %lor.lhs.false.2841
  %342 = load i64, i64* %alloca_nbytes, align 8
  %343 = load i64, i64* %sa_avail, align 8
  %cmp2844 = icmp sle i64 %342, %343
  br i1 %cmp2844, label %if.then.2846, label %if.else.2848

if.then.2846:                                     ; preds = %if.else
  %344 = load i64, i64* %alloca_nbytes, align 8
  %345 = load i64, i64* %sa_avail, align 8
  %sub2847 = sub nsw i64 %345, %344
  store i64 %sub2847, i64* %sa_avail, align 8
  %346 = load i64, i64* %alloca_nbytes, align 8
  %347 = alloca i8, i64 %346
  %348 = bitcast i8* %347 to i64*
  %arrayidx = getelementptr inbounds [2 x i64*], [2 x i64*]* %realized, i32 0, i64 0
  store i64* %348, i64** %arrayidx, align 8
  br label %if.end

if.else.2848:                                     ; preds = %if.else
  %349 = load i64, i64* %alloca_nbytes, align 8
  %call2849 = call noalias i8* @xmalloc(i64 %349)
  %350 = bitcast i8* %call2849 to i64*
  %arrayidx2850 = getelementptr inbounds [2 x i64*], [2 x i64*]* %realized, i32 0, i64 0
  store i64* %350, i64** %arrayidx2850, align 8
  %arrayidx2851 = getelementptr inbounds [2 x i64*], [2 x i64*]* %realized, i32 0, i64 0
  %351 = load i64*, i64** %arrayidx2851, align 8
  %352 = load i64, i64* @Vfontset_table, align 8
  %call2852 = call i64 @ASIZE(i64 %352)
  %mul2853 = mul nsw i64 2, %call2852
  %call2854 = call i64 @make_save_memory(i64* %351, i64 %mul2853)
  store i64 %call2854, i64* %arg_, align 8
  store i8 1, i8* %sa_must_free, align 1
  %353 = load i64, i64* %arg_, align 8
  call void @record_unwind_protect(void (i64)* @free_save_value, i64 %353)
  br label %if.end

if.end:                                           ; preds = %if.else.2848, %if.then.2846
  br label %if.end.2855

if.end.2855:                                      ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %if.end.2855
  %arrayidx2856 = getelementptr inbounds [2 x i64*], [2 x i64*]* %realized, i32 0, i64 0
  %354 = load i64*, i64** %arrayidx2856, align 8
  %355 = load i64, i64* @Vfontset_table, align 8
  %call2857 = call i64 @ASIZE(i64 %355)
  %add.ptr = getelementptr inbounds i64, i64* %354, i64 %call2857
  %arrayidx2858 = getelementptr inbounds [2 x i64*], [2 x i64*]* %realized, i32 0, i64 1
  store i64* %add.ptr, i64** %arrayidx2858, align 8
  store i32 0, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %356 = load i32, i32* %i, align 4
  %conv2859 = sext i32 %356 to i64
  %357 = load i64, i64* @Vfontset_table, align 8
  %call2860 = call i64 @ASIZE(i64 %357)
  %cmp2861 = icmp slt i64 %conv2859, %call2860
  br i1 %cmp2861, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %358 = load i64, i64* @Vfontset_table, align 8
  %359 = load i32, i32* %i, align 4
  %conv2863 = sext i32 %359 to i64
  %call2864 = call i64 @AREF(i64 %358, i64 %conv2863)
  store i64 %call2864, i64* %elt, align 8
  %360 = load i64, i64* %elt, align 8
  %call2865 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp2866 = icmp eq i64 %360, %call2865
  br i1 %cmp2866, label %if.end.2882, label %land.lhs.true.2868

land.lhs.true.2868:                               ; preds = %for.body
  %361 = load i64, i64* %elt, align 8
  %call2869 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %361)
  %extras = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call2869, i32 0, i32 6
  %arrayidx2870 = getelementptr inbounds [0 x i64], [0 x i64]* %extras, i32 0, i64 3
  %362 = load i64, i64* %arrayidx2870, align 8
  %363 = load i64, i64* %fontset.addr, align 8
  %cmp2871 = icmp eq i64 %362, %363
  br i1 %cmp2871, label %land.lhs.true.2873, label %if.end.2882

land.lhs.true.2873:                               ; preds = %land.lhs.true.2868
  %364 = load i64, i64* %elt, align 8
  %call2874 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %364)
  %extras2875 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call2874, i32 0, i32 6
  %arrayidx2876 = getelementptr inbounds [0 x i64], [0 x i64]* %extras2875, i32 0, i64 4
  %365 = load i64, i64* %arrayidx2876, align 8
  %366 = load i64, i64* %frame.addr, align 8
  %cmp2877 = icmp eq i64 %365, %366
  br i1 %cmp2877, label %if.then.2879, label %if.end.2882

if.then.2879:                                     ; preds = %land.lhs.true.2873
  %367 = load i64, i64* %elt, align 8
  %368 = load i32, i32* %j, align 4
  %inc = add nsw i32 %368, 1
  store i32 %inc, i32* %j, align 4
  %idxprom = sext i32 %368 to i64
  %arrayidx2880 = getelementptr inbounds [2 x i64*], [2 x i64*]* %realized, i32 0, i64 0
  %369 = load i64*, i64** %arrayidx2880, align 8
  %arrayidx2881 = getelementptr inbounds i64, i64* %369, i64 %idxprom
  store i64 %367, i64* %arrayidx2881, align 8
  br label %if.end.2882

if.end.2882:                                      ; preds = %if.then.2879, %land.lhs.true.2873, %land.lhs.true.2868, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.2882
  %370 = load i32, i32* %i, align 4
  %inc2883 = add nsw i32 %370, 1
  store i32 %inc2883, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call2884 = call i64 @builtin_lisp_symbol(i32 0)
  %371 = load i32, i32* %j, align 4
  %idxprom2885 = sext i32 %371 to i64
  %arrayidx2886 = getelementptr inbounds [2 x i64*], [2 x i64*]* %realized, i32 0, i64 0
  %372 = load i64*, i64** %arrayidx2886, align 8
  %arrayidx2887 = getelementptr inbounds i64, i64* %372, i64 %idxprom2885
  store i64 %call2884, i64* %arrayidx2887, align 8
  store i32 0, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.2888

for.cond.2888:                                    ; preds = %for.inc.2911, %for.end
  %373 = load i32, i32* %i, align 4
  %idxprom2889 = sext i32 %373 to i64
  %arrayidx2890 = getelementptr inbounds [2 x i64*], [2 x i64*]* %realized, i32 0, i64 0
  %374 = load i64*, i64** %arrayidx2890, align 8
  %arrayidx2891 = getelementptr inbounds i64, i64* %374, i64 %idxprom2889
  %375 = load i64, i64* %arrayidx2891, align 8
  %call2892 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp2893 = icmp eq i64 %375, %call2892
  %lnot = xor i1 %cmp2893, true
  br i1 %lnot, label %for.body.2895, label %for.end.2913

for.body.2895:                                    ; preds = %for.cond.2888
  %376 = load i32, i32* %i, align 4
  %idxprom2896 = sext i32 %376 to i64
  %arrayidx2897 = getelementptr inbounds [2 x i64*], [2 x i64*]* %realized, i32 0, i64 0
  %377 = load i64*, i64** %arrayidx2897, align 8
  %arrayidx2898 = getelementptr inbounds i64, i64* %377, i64 %idxprom2896
  %378 = load i64, i64* %arrayidx2898, align 8
  %call2899 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %378)
  %extras2900 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call2899, i32 0, i32 6
  %arrayidx2901 = getelementptr inbounds [0 x i64], [0 x i64]* %extras2900, i32 0, i64 6
  %379 = load i64, i64* %arrayidx2901, align 8
  store i64 %379, i64* %elt, align 8
  %380 = load i64, i64* %elt, align 8
  %call2902 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp2903 = icmp eq i64 %380, %call2902
  br i1 %cmp2903, label %if.end.2910, label %if.then.2905

if.then.2905:                                     ; preds = %for.body.2895
  %381 = load i64, i64* %elt, align 8
  %382 = load i32, i32* %j, align 4
  %inc2906 = add nsw i32 %382, 1
  store i32 %inc2906, i32* %j, align 4
  %idxprom2907 = sext i32 %382 to i64
  %arrayidx2908 = getelementptr inbounds [2 x i64*], [2 x i64*]* %realized, i32 0, i64 1
  %383 = load i64*, i64** %arrayidx2908, align 8
  %arrayidx2909 = getelementptr inbounds i64, i64* %383, i64 %idxprom2907
  store i64 %381, i64* %arrayidx2909, align 8
  br label %if.end.2910

if.end.2910:                                      ; preds = %if.then.2905, %for.body.2895
  br label %for.inc.2911

for.inc.2911:                                     ; preds = %if.end.2910
  %384 = load i32, i32* %i, align 4
  %inc2912 = add nsw i32 %384, 1
  store i32 %inc2912, i32* %i, align 4
  br label %for.cond.2888

for.end.2913:                                     ; preds = %for.cond.2888
  %call2914 = call i64 @builtin_lisp_symbol(i32 0)
  %385 = load i32, i32* %j, align 4
  %idxprom2915 = sext i32 %385 to i64
  %arrayidx2916 = getelementptr inbounds [2 x i64*], [2 x i64*]* %realized, i32 0, i64 1
  %386 = load i64*, i64** %arrayidx2916, align 8
  %arrayidx2917 = getelementptr inbounds i64, i64* %386, i64 %idxprom2915
  store i64 %call2914, i64* %arrayidx2917, align 8
  %call2918 = call i64 @builtin_lisp_symbol(i32 450)
  %call2919 = call i64 @builtin_lisp_symbol(i32 0)
  %call2920 = call i64 @Fmake_char_table(i64 %call2918, i64 %call2919)
  %arrayidx2921 = getelementptr inbounds [2 x i64], [2 x i64]* %tables, i32 0, i64 0
  store i64 %call2920, i64* %arrayidx2921, align 8
  %387 = load i64, i64* %fontset.addr, align 8
  %arrayidx2922 = getelementptr inbounds [2 x i64], [2 x i64]* %fontsets, i32 0, i64 0
  store i64 %387, i64* %arrayidx2922, align 8
  %388 = load i64, i64* %fontset.addr, align 8
  %389 = load i64, i64* @Vdefault_fontset, align 8
  %cmp2923 = icmp eq i64 %388, %389
  br i1 %cmp2923, label %if.end.2933, label %if.then.2925

if.then.2925:                                     ; preds = %for.end.2913
  %call2926 = call i64 @builtin_lisp_symbol(i32 0)
  %call2927 = call i64 @builtin_lisp_symbol(i32 0)
  %call2928 = call i64 @Fmake_char_table(i64 %call2926, i64 %call2927)
  %arrayidx2929 = getelementptr inbounds [2 x i64], [2 x i64]* %tables, i32 0, i64 1
  store i64 %call2928, i64* %arrayidx2929, align 8
  %arrayidx2930 = getelementptr inbounds [2 x i64], [2 x i64]* %tables, i32 0, i64 0
  %390 = load i64, i64* %arrayidx2930, align 8
  %arrayidx2931 = getelementptr inbounds [2 x i64], [2 x i64]* %tables, i32 0, i64 1
  %391 = load i64, i64* %arrayidx2931, align 8
  call void @set_char_table_extras(i64 %390, i64 0, i64 %391)
  %392 = load i64, i64* @Vdefault_fontset, align 8
  %arrayidx2932 = getelementptr inbounds [2 x i64], [2 x i64]* %fontsets, i32 0, i64 1
  store i64 %392, i64* %arrayidx2932, align 8
  br label %if.end.2933

if.end.2933:                                      ; preds = %if.then.2925, %for.end.2913
  store i32 0, i32* %k, align 4
  br label %for.cond.2934

for.cond.2934:                                    ; preds = %for.inc.3105, %if.end.2933
  %393 = load i32, i32* %k, align 4
  %cmp2935 = icmp sle i32 %393, 1
  br i1 %cmp2935, label %for.body.2937, label %for.end.3107

for.body.2937:                                    ; preds = %for.cond.2934
  store i32 0, i32* %c, align 4
  br label %for.cond.2938

for.cond.2938:                                    ; preds = %if.end.3098, %for.body.2937
  %394 = load i32, i32* %c, align 4
  %cmp2939 = icmp sle i32 %394, 4194303
  br i1 %cmp2939, label %for.body.2941, label %for.end.3100

for.body.2941:                                    ; preds = %for.cond.2938
  %395 = load i32, i32* %c, align 4
  store i32 %395, i32* %from, align 4
  store i32 4194175, i32* %to, align 4
  %396 = load i32, i32* %c, align 4
  %cmp2942 = icmp sle i32 %396, 4194175
  br i1 %cmp2942, label %if.then.2944, label %if.else.2948

if.then.2944:                                     ; preds = %for.body.2941
  %397 = load i32, i32* %k, align 4
  %idxprom2945 = sext i32 %397 to i64
  %arrayidx2946 = getelementptr inbounds [2 x i64], [2 x i64]* %fontsets, i32 0, i64 %idxprom2945
  %398 = load i64, i64* %arrayidx2946, align 8
  %399 = load i32, i32* %c, align 4
  %call2947 = call i64 @char_table_ref_and_range(i64 %398, i32 %399, i32* %from, i32* %to)
  store i64 %call2947, i64* %val, align 8
  br label %if.end.2954

if.else.2948:                                     ; preds = %for.body.2941
  %400 = load i32, i32* %k, align 4
  %idxprom2949 = sext i32 %400 to i64
  %arrayidx2950 = getelementptr inbounds [2 x i64], [2 x i64]* %fontsets, i32 0, i64 %idxprom2949
  %401 = load i64, i64* %arrayidx2950, align 8
  %call2951 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %401)
  %extras2952 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call2951, i32 0, i32 6
  %arrayidx2953 = getelementptr inbounds [0 x i64], [0 x i64]* %extras2952, i32 0, i64 7
  %402 = load i64, i64* %arrayidx2953, align 8
  store i64 %402, i64* %val, align 8
  store i32 4194303, i32* %to, align 4
  br label %if.end.2954

if.end.2954:                                      ; preds = %if.else.2948, %if.then.2944
  %403 = load i64, i64* %val, align 8
  %call2955 = call zeroext i1 @VECTORP(i64 %403)
  br i1 %call2955, label %if.then.2956, label %if.end.3098

if.then.2956:                                     ; preds = %if.end.2954
  %call2957 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call2957, i64* %alist, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.2958

for.cond.2958:                                    ; preds = %for.inc.2977, %if.then.2956
  %404 = load i32, i32* %i, align 4
  %conv2959 = sext i32 %404 to i64
  %405 = load i64, i64* %val, align 8
  %call2960 = call i64 @ASIZE(i64 %405)
  %cmp2961 = icmp slt i64 %conv2959, %call2960
  br i1 %cmp2961, label %for.body.2963, label %for.end.2979

for.body.2963:                                    ; preds = %for.cond.2958
  %406 = load i64, i64* %val, align 8
  %407 = load i32, i32* %i, align 4
  %conv2964 = sext i32 %407 to i64
  %call2965 = call i64 @AREF(i64 %406, i64 %conv2964)
  %call2966 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp2967 = icmp eq i64 %call2965, %call2966
  br i1 %cmp2967, label %if.end.2976, label %if.then.2969

if.then.2969:                                     ; preds = %for.body.2963
  %408 = load i64, i64* %val, align 8
  %409 = load i32, i32* %i, align 4
  %conv2970 = sext i32 %409 to i64
  %call2971 = call i64 @AREF(i64 %408, i64 %conv2970)
  %call2972 = call i64 @AREF(i64 %call2971, i64 0)
  %call2973 = call i64 @builtin_lisp_symbol(i32 0)
  %call2974 = call i64 @Fcons(i64 %call2972, i64 %call2973)
  %410 = load i64, i64* %alist, align 8
  %call2975 = call i64 @Fcons(i64 %call2974, i64 %410)
  store i64 %call2975, i64* %alist, align 8
  br label %if.end.2976

if.end.2976:                                      ; preds = %if.then.2969, %for.body.2963
  br label %for.inc.2977

for.inc.2977:                                     ; preds = %if.end.2976
  %411 = load i32, i32* %i, align 4
  %inc2978 = add nsw i32 %411, 1
  store i32 %inc2978, i32* %i, align 4
  br label %for.cond.2958

for.end.2979:                                     ; preds = %for.cond.2958
  %412 = load i64, i64* %alist, align 8
  %call2980 = call i64 @Fnreverse(i64 %412)
  store i64 %call2980, i64* %alist, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.2981

for.cond.2981:                                    ; preds = %for.inc.3070, %for.end.2979
  %413 = load i32, i32* %i, align 4
  %idxprom2982 = sext i32 %413 to i64
  %414 = load i32, i32* %k, align 4
  %idxprom2983 = sext i32 %414 to i64
  %arrayidx2984 = getelementptr inbounds [2 x i64*], [2 x i64*]* %realized, i32 0, i64 %idxprom2983
  %415 = load i64*, i64** %arrayidx2984, align 8
  %arrayidx2985 = getelementptr inbounds i64, i64* %415, i64 %idxprom2982
  %416 = load i64, i64* %arrayidx2985, align 8
  %call2986 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp2987 = icmp eq i64 %416, %call2986
  %lnot2989 = xor i1 %cmp2987, true
  br i1 %lnot2989, label %for.body.2990, label %for.end.3072

for.body.2990:                                    ; preds = %for.cond.2981
  %417 = load i32, i32* %c, align 4
  %cmp2991 = icmp sle i32 %417, 4194175
  br i1 %cmp2991, label %if.then.2993, label %if.else.3014

if.then.2993:                                     ; preds = %for.body.2990
  %418 = load i32, i32* %i, align 4
  %idxprom2994 = sext i32 %418 to i64
  %419 = load i32, i32* %k, align 4
  %idxprom2995 = sext i32 %419 to i64
  %arrayidx2996 = getelementptr inbounds [2 x i64*], [2 x i64*]* %realized, i32 0, i64 %idxprom2995
  %420 = load i64*, i64** %arrayidx2996, align 8
  %arrayidx2997 = getelementptr inbounds i64, i64* %420, i64 %idxprom2994
  %421 = load i64, i64* %arrayidx2997, align 8
  %422 = load i64, i64* @Vdefault_fontset, align 8
  %cmp2998 = icmp eq i64 %421, %422
  br i1 %cmp2998, label %cond.true.3000, label %cond.false.3006

cond.true.3000:                                   ; preds = %if.then.2993
  %423 = load i32, i32* %i, align 4
  %idxprom3001 = sext i32 %423 to i64
  %424 = load i32, i32* %k, align 4
  %idxprom3002 = sext i32 %424 to i64
  %arrayidx3003 = getelementptr inbounds [2 x i64*], [2 x i64*]* %realized, i32 0, i64 %idxprom3002
  %425 = load i64*, i64** %arrayidx3003, align 8
  %arrayidx3004 = getelementptr inbounds i64, i64* %425, i64 %idxprom3001
  %426 = load i64, i64* %arrayidx3004, align 8
  %427 = load i32, i32* %c, align 4
  %call3005 = call i64 @CHAR_TABLE_REF(i64 %426, i32 %427)
  br label %cond.end.3012

cond.false.3006:                                  ; preds = %if.then.2993
  %428 = load i32, i32* %i, align 4
  %idxprom3007 = sext i32 %428 to i64
  %429 = load i32, i32* %k, align 4
  %idxprom3008 = sext i32 %429 to i64
  %arrayidx3009 = getelementptr inbounds [2 x i64*], [2 x i64*]* %realized, i32 0, i64 %idxprom3008
  %430 = load i64*, i64** %arrayidx3009, align 8
  %arrayidx3010 = getelementptr inbounds i64, i64* %430, i64 %idxprom3007
  %431 = load i64, i64* %arrayidx3010, align 8
  %432 = load i32, i32* %c, align 4
  %call3011 = call i64 @fontset_ref(i64 %431, i32 %432)
  br label %cond.end.3012

cond.end.3012:                                    ; preds = %cond.false.3006, %cond.true.3000
  %cond3013 = phi i64 [ %call3005, %cond.true.3000 ], [ %call3011, %cond.false.3006 ]
  store i64 %cond3013, i64* %val, align 8
  br label %if.end.3022

if.else.3014:                                     ; preds = %for.body.2990
  %433 = load i32, i32* %i, align 4
  %idxprom3015 = sext i32 %433 to i64
  %434 = load i32, i32* %k, align 4
  %idxprom3016 = sext i32 %434 to i64
  %arrayidx3017 = getelementptr inbounds [2 x i64*], [2 x i64*]* %realized, i32 0, i64 %idxprom3016
  %435 = load i64*, i64** %arrayidx3017, align 8
  %arrayidx3018 = getelementptr inbounds i64, i64* %435, i64 %idxprom3015
  %436 = load i64, i64* %arrayidx3018, align 8
  %call3019 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %436)
  %extras3020 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call3019, i32 0, i32 6
  %arrayidx3021 = getelementptr inbounds [0 x i64], [0 x i64]* %extras3020, i32 0, i64 7
  %437 = load i64, i64* %arrayidx3021, align 8
  store i64 %437, i64* %val, align 8
  br label %if.end.3022

if.end.3022:                                      ; preds = %if.else.3014, %cond.end.3012
  %438 = load i64, i64* %val, align 8
  %and = and i64 %438, 7
  %conv3023 = trunc i64 %and to i32
  %cmp3024 = icmp eq i32 %conv3023, 3
  br i1 %cmp3024, label %lor.lhs.false.3026, label %if.then.3029

lor.lhs.false.3026:                               ; preds = %if.end.3022
  %439 = load i64, i64* %val, align 8
  %sub3027 = sub nsw i64 %439, 3
  %440 = inttoptr i64 %sub3027 to i8*
  %441 = bitcast i8* %440 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %441, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %442 = load i64, i64* %cdr, align 8
  %call3028 = call zeroext i1 @VECTORP(i64 %442)
  br i1 %call3028, label %if.end.3030, label %if.then.3029

if.then.3029:                                     ; preds = %lor.lhs.false.3026, %if.end.3022
  br label %for.inc.3070

if.end.3030:                                      ; preds = %lor.lhs.false.3026
  %443 = load i64, i64* %val, align 8
  %sub3031 = sub nsw i64 %443, 3
  %444 = inttoptr i64 %sub3031 to i8*
  %445 = bitcast i8* %444 to %struct.Lisp_Cons*
  %u3032 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %445, i32 0, i32 1
  %cdr3033 = bitcast %union.anon* %u3032 to i64*
  %446 = load i64, i64* %cdr3033, align 8
  store i64 %446, i64* %val, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.3034

for.cond.3034:                                    ; preds = %for.inc.3067, %if.end.3030
  %447 = load i32, i32* %j, align 4
  %conv3035 = sext i32 %447 to i64
  %448 = load i64, i64* %val, align 8
  %call3036 = call i64 @ASIZE(i64 %448)
  %cmp3037 = icmp slt i64 %conv3035, %call3036
  br i1 %cmp3037, label %for.body.3039, label %for.end.3069

for.body.3039:                                    ; preds = %for.cond.3034
  %449 = load i64, i64* %val, align 8
  %450 = load i32, i32* %j, align 4
  %conv3040 = sext i32 %450 to i64
  %call3041 = call i64 @AREF(i64 %449, i64 %conv3040)
  store i64 %call3041, i64* %elt, align 8
  %451 = load i64, i64* %elt, align 8
  %call3042 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp3043 = icmp eq i64 %451, %call3042
  br i1 %cmp3043, label %if.end.3066, label %land.lhs.true.3045

land.lhs.true.3045:                               ; preds = %for.body.3039
  %452 = load i64, i64* %elt, align 8
  %call3046 = call i64 @AREF(i64 %452, i64 2)
  %call3047 = call zeroext i1 @FONT_OBJECT_P(i64 %call3046)
  br i1 %call3047, label %if.then.3049, label %if.end.3066

if.then.3049:                                     ; preds = %land.lhs.true.3045
  %453 = load i64, i64* %elt, align 8
  %call3050 = call i64 @AREF(i64 %453, i64 2)
  store i64 %call3050, i64* %font_object, align 8
  %454 = load i64, i64* %elt, align 8
  %call3051 = call i64 @AREF(i64 %454, i64 1)
  %call3052 = call i64 @AREF(i64 %call3051, i64 0)
  %455 = load i64, i64* %alist, align 8
  %call3053 = call i64 @Fassq(i64 %call3052, i64 %455)
  store i64 %call3053, i64* %slot, align 8
  %456 = load i64, i64* %font_object, align 8
  %call3054 = call i64 @AREF(i64 %456, i64 14)
  store i64 %call3054, i64* %name, align 8
  %457 = load i64, i64* %name, align 8
  %458 = load i64, i64* %slot, align 8
  %sub3055 = sub nsw i64 %458, 3
  %459 = inttoptr i64 %sub3055 to i8*
  %460 = bitcast i8* %459 to %struct.Lisp_Cons*
  %u3056 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %460, i32 0, i32 1
  %cdr3057 = bitcast %union.anon* %u3056 to i64*
  %461 = load i64, i64* %cdr3057, align 8
  %call3058 = call i64 @Fmember(i64 %457, i64 %461)
  %call3059 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp3060 = icmp eq i64 %call3058, %call3059
  br i1 %cmp3060, label %if.then.3062, label %if.end.3065

if.then.3062:                                     ; preds = %if.then.3049
  %462 = load i64, i64* %slot, align 8
  %463 = load i64, i64* %name, align 8
  %call3063 = call i64 @list1(i64 %463)
  %call3064 = call i64 @nconc2(i64 %462, i64 %call3063)
  br label %if.end.3065

if.end.3065:                                      ; preds = %if.then.3062, %if.then.3049
  br label %if.end.3066

if.end.3066:                                      ; preds = %if.end.3065, %land.lhs.true.3045, %for.body.3039
  br label %for.inc.3067

for.inc.3067:                                     ; preds = %if.end.3066
  %464 = load i32, i32* %j, align 4
  %inc3068 = add nsw i32 %464, 1
  store i32 %inc3068, i32* %j, align 4
  br label %for.cond.3034

for.end.3069:                                     ; preds = %for.cond.3034
  br label %for.inc.3070

for.inc.3070:                                     ; preds = %for.end.3069, %if.then.3029
  %465 = load i32, i32* %i, align 4
  %inc3071 = add nsw i32 %465, 1
  store i32 %inc3071, i32* %i, align 4
  br label %for.cond.2981

for.end.3072:                                     ; preds = %for.cond.2981
  %466 = load i32, i32* %c, align 4
  %cmp3073 = icmp sle i32 %466, 4194175
  br i1 %cmp3073, label %if.then.3075, label %if.else.3078

if.then.3075:                                     ; preds = %for.end.3072
  %467 = load i32, i32* %k, align 4
  %idxprom3076 = sext i32 %467 to i64
  %arrayidx3077 = getelementptr inbounds [2 x i64], [2 x i64]* %tables, i32 0, i64 %idxprom3076
  %468 = load i64, i64* %arrayidx3077, align 8
  %469 = load i32, i32* %c, align 4
  %470 = load i32, i32* %to, align 4
  %471 = load i64, i64* %alist, align 8
  call void @char_table_set_range(i64 %468, i32 %469, i32 %470, i64 %471)
  br label %if.end.3081

if.else.3078:                                     ; preds = %for.end.3072
  %472 = load i32, i32* %k, align 4
  %idxprom3079 = sext i32 %472 to i64
  %arrayidx3080 = getelementptr inbounds [2 x i64], [2 x i64]* %tables, i32 0, i64 %idxprom3079
  %473 = load i64, i64* %arrayidx3080, align 8
  %474 = load i64, i64* %alist, align 8
  call void @set_char_table_defalt(i64 %473, i64 %474)
  br label %if.end.3081

if.end.3081:                                      ; preds = %if.else.3078, %if.then.3075
  br label %for.cond.3082

for.cond.3082:                                    ; preds = %for.inc.3093, %if.end.3081
  %475 = load i64, i64* %alist, align 8
  %and3083 = and i64 %475, 7
  %conv3084 = trunc i64 %and3083 to i32
  %cmp3085 = icmp eq i32 %conv3084, 3
  br i1 %cmp3085, label %for.body.3087, label %for.end.3097

for.body.3087:                                    ; preds = %for.cond.3082
  %476 = load i64, i64* %alist, align 8
  %sub3088 = sub nsw i64 %476, 3
  %477 = inttoptr i64 %sub3088 to i8*
  %478 = bitcast i8* %477 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %478, i32 0, i32 0
  %479 = load i64, i64* %car, align 8
  store i64 %479, i64* %elt, align 8
  %480 = load i64, i64* %elt, align 8
  %481 = load i64, i64* %elt, align 8
  %sub3089 = sub nsw i64 %481, 3
  %482 = inttoptr i64 %sub3089 to i8*
  %483 = bitcast i8* %482 to %struct.Lisp_Cons*
  %car3090 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %483, i32 0, i32 0
  %484 = load i64, i64* %car3090, align 8
  %call3091 = call i64 @builtin_lisp_symbol(i32 0)
  %call3092 = call i64 @Ffont_xlfd_name(i64 %484, i64 %call3091)
  call void @XSETCAR(i64 %480, i64 %call3092)
  br label %for.inc.3093

for.inc.3093:                                     ; preds = %for.body.3087
  %485 = load i64, i64* %alist, align 8
  %sub3094 = sub nsw i64 %485, 3
  %486 = inttoptr i64 %sub3094 to i8*
  %487 = bitcast i8* %486 to %struct.Lisp_Cons*
  %u3095 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %487, i32 0, i32 1
  %cdr3096 = bitcast %union.anon* %u3095 to i64*
  %488 = load i64, i64* %cdr3096, align 8
  store i64 %488, i64* %alist, align 8
  br label %for.cond.3082

for.end.3097:                                     ; preds = %for.cond.3082
  br label %if.end.3098

if.end.3098:                                      ; preds = %for.end.3097, %if.end.2954
  %489 = load i32, i32* %to, align 4
  %add3099 = add nsw i32 %489, 1
  store i32 %add3099, i32* %c, align 4
  br label %for.cond.2938

for.end.3100:                                     ; preds = %for.cond.2938
  %490 = load i64, i64* %fontset.addr, align 8
  %491 = load i64, i64* @Vdefault_fontset, align 8
  %cmp3101 = icmp eq i64 %490, %491
  br i1 %cmp3101, label %if.then.3103, label %if.end.3104

if.then.3103:                                     ; preds = %for.end.3100
  br label %for.end.3107

if.end.3104:                                      ; preds = %for.end.3100
  br label %for.inc.3105

for.inc.3105:                                     ; preds = %if.end.3104
  %492 = load i32, i32* %k, align 4
  %inc3106 = add nsw i32 %492, 1
  store i32 %inc3106, i32* %k, align 4
  br label %for.cond.2934

for.end.3107:                                     ; preds = %if.then.3103, %for.cond.2934
  br label %do.body.3108

do.body.3108:                                     ; preds = %for.end.3107
  %493 = load i8, i8* %sa_must_free, align 1
  %tobool = trunc i8 %493 to i1
  br i1 %tobool, label %if.then.3109, label %if.end.3112

if.then.3109:                                     ; preds = %do.body.3108
  store i8 0, i8* %sa_must_free, align 1
  %494 = load i64, i64* %sa_count, align 8
  %call3110 = call i64 @builtin_lisp_symbol(i32 0)
  %call3111 = call i64 @unbind_to(i64 %494, i64 %call3110)
  br label %if.end.3112

if.end.3112:                                      ; preds = %if.then.3109, %do.body.3108
  br label %do.end.3113

do.end.3113:                                      ; preds = %if.end.3112
  %arrayidx3114 = getelementptr inbounds [2 x i64], [2 x i64]* %tables, i32 0, i64 0
  %495 = load i64, i64* %arrayidx3114, align 8
  ret i64 %495
}

declare i64 @SPECPDL_INDEX() #1

; Function Attrs: noreturn
declare void @memory_full(i64) #3

declare noalias i8* @xmalloc(i64) #1

declare i64 @make_save_memory(i64*, i64) #1

declare void @record_unwind_protect(void (i64)*, i64) #1

declare void @free_save_value(i64) #1

declare i64 @Fmake_char_table(i64, i64) #1

declare void @set_char_table_extras(i64, i64, i64) #1

declare i64 @char_table_ref_and_range(i64, i32, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define internal i64 @fontset_ref(i64 %fontset, i32 %c) #0 {
entry:
  %fontset.addr = alloca i64, align 8
  %c.addr = alloca i32, align 4
  %elt = alloca i64, align 8
  store i64 %fontset, i64* %fontset.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  %0 = load i64, i64* %fontset.addr, align 8
  %1 = load i32, i32* %c.addr, align 4
  %call = call i64 @CHAR_TABLE_REF(i64 %0, i32 %1)
  store i64 %call, i64* %elt, align 8
  %2 = load i64, i64* %elt, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %2, %call1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i64, i64* %fontset.addr, align 8
  %4 = load i64, i64* @Vdefault_fontset, align 8
  %cmp2 = icmp eq i64 %3, %4
  br i1 %cmp2, label %if.end, label %land.lhs.true.3

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %5 = load i64, i64* %fontset.addr, align 8
  %call4 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %5)
  %extras = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call4, i32 0, i32 6
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* %extras, i32 0, i64 3
  %6 = load i64, i64* %arrayidx, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp6 = icmp eq i64 %6, %call5
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.3
  %7 = load i64, i64* @Vdefault_fontset, align 8
  %8 = load i32, i32* %c.addr, align 4
  %call7 = call i64 @CHAR_TABLE_REF(i64 %7, i32 %8)
  store i64 %call7, i64* %elt, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.3, %land.lhs.true, %entry
  %9 = load i64, i64* %elt, align 8
  ret i64 %9
}

declare zeroext i1 @FONT_OBJECT_P(i64) #1

declare i64 @Fassq(i64, i64) #1

declare i64 @Fmember(i64, i64) #1

declare i64 @nconc2(i64, i64) #1

declare void @char_table_set_range(i64, i32, i32, i64) #1

declare void @set_char_table_defalt(i64, i64) #1

declare void @XSETCAR(i64, i64) #1

declare i64 @unbind_to(i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Ffontset_font(i64 %name, i64 %ch, i64 %all) #0 {
entry:
  %retval = alloca i64, align 8
  %name.addr = alloca i64, align 8
  %ch.addr = alloca i64, align 8
  %all.addr = alloca i64, align 8
  %c = alloca i32, align 4
  %fontset = alloca i64, align 8
  %elt = alloca i64, align 8
  %list = alloca i64, align 8
  %repertory = alloca i64, align 8
  %val = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %frame = alloca i64, align 8
  %family = alloca i64, align 8
  %registry = alloca i64, align 8
  %charset = alloca %struct.charset*, align 8
  store i64 %name, i64* %name.addr, align 8
  store i64 %ch, i64* %ch.addr, align 8
  store i64 %all, i64* %all.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %frame, align 8
  %0 = load i64, i64* %name.addr, align 8
  %call1 = call i64 @check_fontset_name(i64 %0, i64* %frame)
  store i64 %call1, i64* %fontset, align 8
  %1 = load i64, i64* %ch.addr, align 8
  %call2 = call zeroext i1 @NATNUMP(i64 %1)
  br i1 %call2, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, i64* %ch.addr, align 8
  %shr = ashr i64 %2, 2
  %cmp = icmp sle i64 %shr, 4194303
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  %call3 = call i64 @builtin_lisp_symbol(i32 260)
  %3 = load i64, i64* %ch.addr, align 8
  %4 = call i64 @wrong_type_argument(i64 %call3, i64 %3) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %5, %cond.true
  %6 = load i64, i64* %ch.addr, align 8
  %shr4 = ashr i64 %6, 2
  %conv = trunc i64 %shr4 to i32
  store i32 %conv, i32* %c, align 4
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call5, i64* %list, align 8
  br label %while.body

while.body:                                       ; preds = %cond.end, %if.end.166
  store i32 0, i32* %i, align 4
  %7 = load i64, i64* %fontset, align 8
  %8 = load i64, i64* @Vdefault_fontset, align 8
  %cmp6 = icmp eq i64 %7, %8
  br i1 %cmp6, label %cond.true.8, label %cond.false.10

cond.true.8:                                      ; preds = %while.body
  %9 = load i64, i64* %fontset, align 8
  %10 = load i32, i32* %c, align 4
  %call9 = call i64 @CHAR_TABLE_REF(i64 %9, i32 %10)
  br label %cond.end.12

cond.false.10:                                    ; preds = %while.body
  %11 = load i64, i64* %fontset, align 8
  %12 = load i32, i32* %c, align 4
  %call11 = call i64 @fontset_ref(i64 %11, i32 %12)
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.10, %cond.true.8
  %cond = phi i64 [ %call9, %cond.true.8 ], [ %call11, %cond.false.10 ]
  store i64 %cond, i64* %elt, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.158, %cond.end.12
  %13 = load i32, i32* %i, align 4
  %cmp13 = icmp slt i32 %13, 2
  br i1 %cmp13, label %for.body, label %for.end.162

for.body:                                         ; preds = %for.cond
  %14 = load i64, i64* %elt, align 8
  %call15 = call zeroext i1 @VECTORP(i64 %14)
  br i1 %call15, label %if.then, label %if.end.157

if.then:                                          ; preds = %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc, %if.then
  %15 = load i32, i32* %j, align 4
  %conv17 = sext i32 %15 to i64
  %16 = load i64, i64* %elt, align 8
  %call18 = call i64 @ASIZE(i64 %16)
  %cmp19 = icmp slt i64 %conv17, %call18
  br i1 %cmp19, label %for.body.21, label %for.end

for.body.21:                                      ; preds = %for.cond.16
  %17 = load i64, i64* %elt, align 8
  %18 = load i32, i32* %j, align 4
  %conv22 = sext i32 %18 to i64
  %call23 = call i64 @AREF(i64 %17, i64 %conv22)
  store i64 %call23, i64* %val, align 8
  %19 = load i64, i64* %val, align 8
  %call24 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp25 = icmp eq i64 %19, %call24
  br i1 %cmp25, label %if.then.27, label %if.end

if.then.27:                                       ; preds = %for.body.21
  %call28 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call28, i64* %retval
  br label %return

if.end:                                           ; preds = %for.body.21
  %20 = load i64, i64* %val, align 8
  %call29 = call i64 @AREF(i64 %20, i64 1)
  store i64 %call29, i64* %repertory, align 8
  %21 = load i64, i64* %repertory, align 8
  %and = and i64 %21, 7
  %conv30 = trunc i64 %and to i32
  %and31 = and i32 %conv30, -5
  %cmp32 = icmp eq i32 %and31, 2
  br i1 %cmp32, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %if.end
  %22 = load %struct.charset*, %struct.charset** @charset_table, align 8
  %23 = load i64, i64* %repertory, align 8
  %shr35 = ashr i64 %23, 2
  %add.ptr = getelementptr inbounds %struct.charset, %struct.charset* %22, i64 %shr35
  store %struct.charset* %add.ptr, %struct.charset** %charset, align 8
  br i1 true, label %cond.true.36, label %cond.false.39

cond.true.36:                                     ; preds = %if.then.34
  %24 = load i32, i32* %c, align 4
  %add = add i32 %24, 0
  %cmp37 = icmp ult i32 %add, 128
  br i1 %cmp37, label %land.lhs.true.44, label %lor.lhs.false

cond.false.39:                                    ; preds = %if.then.34
  %25 = load i32, i32* %c, align 4
  %conv40 = sext i32 %25 to i64
  %add41 = add i64 %conv40, 0
  %cmp42 = icmp ult i64 %add41, 128
  br i1 %cmp42, label %land.lhs.true.44, label %lor.lhs.false

land.lhs.true.44:                                 ; preds = %cond.false.39, %cond.true.36
  %26 = load %struct.charset*, %struct.charset** %charset, align 8
  %ascii_compatible_p = getelementptr inbounds %struct.charset, %struct.charset* %26, i32 0, i32 5
  %bf.load = load i8, i8* %ascii_compatible_p, align 8
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %if.end.124, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.44, %cond.false.39, %cond.true.36
  %27 = load %struct.charset*, %struct.charset** %charset, align 8
  %unified_p = getelementptr inbounds %struct.charset, %struct.charset* %27, i32 0, i32 5
  %bf.load46 = load i8, i8* %unified_p, align 8
  %bf.lshr47 = lshr i8 %bf.load46, 5
  %bf.clear48 = and i8 %bf.lshr47, 1
  %bf.cast49 = trunc i8 %bf.clear48 to i1
  br i1 %bf.cast49, label %cond.true.58, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %lor.lhs.false
  %28 = load %struct.charset*, %struct.charset** %charset, align 8
  %method = getelementptr inbounds %struct.charset, %struct.charset* %28, i32 0, i32 9
  %29 = load i32, i32* %method, align 4
  %cmp52 = icmp eq i32 %29, 2
  br i1 %cmp52, label %cond.true.58, label %lor.lhs.false.54

lor.lhs.false.54:                                 ; preds = %lor.lhs.false.51
  %30 = load %struct.charset*, %struct.charset** %charset, align 8
  %method55 = getelementptr inbounds %struct.charset, %struct.charset* %30, i32 0, i32 9
  %31 = load i32, i32* %method55, align 4
  %cmp56 = icmp eq i32 %31, 3
  br i1 %cmp56, label %cond.true.58, label %cond.false.62

cond.true.58:                                     ; preds = %lor.lhs.false.54, %lor.lhs.false.51, %lor.lhs.false
  %32 = load %struct.charset*, %struct.charset** %charset, align 8
  %33 = load i32, i32* %c, align 4
  %call59 = call i32 @encode_char(%struct.charset* %32, i32 %33)
  %34 = load %struct.charset*, %struct.charset** %charset, align 8
  %invalid_code = getelementptr inbounds %struct.charset, %struct.charset* %34, i32 0, i32 15
  %35 = load i32, i32* %invalid_code, align 4
  %cmp60 = icmp ne i32 %call59, %35
  br i1 %cmp60, label %if.end.124, label %if.then.123

cond.false.62:                                    ; preds = %lor.lhs.false.54
  %36 = load i32, i32* %c, align 4
  %cmp63 = icmp slt i32 %36, 65536
  br i1 %cmp63, label %cond.true.65, label %cond.false.71

cond.true.65:                                     ; preds = %cond.false.62
  %37 = load i32, i32* %c, align 4
  %shr66 = ashr i32 %37, 10
  %idxprom = sext i32 %shr66 to i64
  %38 = load %struct.charset*, %struct.charset** %charset, align 8
  %fast_map = getelementptr inbounds %struct.charset, %struct.charset* %38, i32 0, i32 16
  %arrayidx = getelementptr inbounds [190 x i8], [190 x i8]* %fast_map, i32 0, i64 %idxprom
  %39 = load i8, i8* %arrayidx, align 1
  %conv67 = zext i8 %39 to i32
  %40 = load i32, i32* %c, align 4
  %shr68 = ashr i32 %40, 7
  %and69 = and i32 %shr68, 7
  %shl = shl i32 1, %and69
  %and70 = and i32 %conv67, %shl
  %tobool = icmp ne i32 %and70, 0
  br i1 %tobool, label %land.lhs.true.83, label %if.then.123

cond.false.71:                                    ; preds = %cond.false.62
  %41 = load i32, i32* %c, align 4
  %shr72 = ashr i32 %41, 15
  %add73 = add nsw i32 %shr72, 62
  %idxprom74 = sext i32 %add73 to i64
  %42 = load %struct.charset*, %struct.charset** %charset, align 8
  %fast_map75 = getelementptr inbounds %struct.charset, %struct.charset* %42, i32 0, i32 16
  %arrayidx76 = getelementptr inbounds [190 x i8], [190 x i8]* %fast_map75, i32 0, i64 %idxprom74
  %43 = load i8, i8* %arrayidx76, align 1
  %conv77 = zext i8 %43 to i32
  %44 = load i32, i32* %c, align 4
  %shr78 = ashr i32 %44, 12
  %and79 = and i32 %shr78, 7
  %shl80 = shl i32 1, %and79
  %and81 = and i32 %conv77, %shl80
  %tobool82 = icmp ne i32 %and81, 0
  br i1 %tobool82, label %land.lhs.true.83, label %if.then.123

land.lhs.true.83:                                 ; preds = %cond.false.71, %cond.true.65
  %45 = load %struct.charset*, %struct.charset** %charset, align 8
  %method84 = getelementptr inbounds %struct.charset, %struct.charset* %45, i32 0, i32 9
  %46 = load i32, i32* %method84, align 4
  %cmp85 = icmp eq i32 %46, 0
  br i1 %cmp85, label %cond.true.87, label %cond.false.93

cond.true.87:                                     ; preds = %land.lhs.true.83
  %47 = load i32, i32* %c, align 4
  %48 = load %struct.charset*, %struct.charset** %charset, align 8
  %min_char = getelementptr inbounds %struct.charset, %struct.charset* %48, i32 0, i32 13
  %49 = load i32, i32* %min_char, align 4
  %cmp88 = icmp sge i32 %47, %49
  br i1 %cmp88, label %land.lhs.true.90, label %if.then.123

land.lhs.true.90:                                 ; preds = %cond.true.87
  %50 = load i32, i32* %c, align 4
  %51 = load %struct.charset*, %struct.charset** %charset, align 8
  %max_char = getelementptr inbounds %struct.charset, %struct.charset* %51, i32 0, i32 14
  %52 = load i32, i32* %max_char, align 4
  %cmp91 = icmp sle i32 %50, %52
  br i1 %cmp91, label %if.end.124, label %if.then.123

cond.false.93:                                    ; preds = %land.lhs.true.83
  %53 = load %struct.charset*, %struct.charset** %charset, align 8
  %method94 = getelementptr inbounds %struct.charset, %struct.charset* %53, i32 0, i32 9
  %54 = load i32, i32* %method94, align 4
  %cmp95 = icmp eq i32 %54, 1
  br i1 %cmp95, label %land.lhs.true.97, label %cond.false.118

land.lhs.true.97:                                 ; preds = %cond.false.93
  %55 = load %struct.charset*, %struct.charset** %charset, align 8
  %compact_codes_p = getelementptr inbounds %struct.charset, %struct.charset* %55, i32 0, i32 5
  %bf.load98 = load i8, i8* %compact_codes_p, align 8
  %bf.lshr99 = lshr i8 %bf.load98, 4
  %bf.clear100 = and i8 %bf.lshr99, 1
  %bf.cast101 = trunc i8 %bf.clear100 to i1
  br i1 %bf.cast101, label %land.lhs.true.103, label %cond.false.118

land.lhs.true.103:                                ; preds = %land.lhs.true.97
  %56 = load i64, i64* @Vcharset_hash_table, align 8
  %call104 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %56)
  %57 = load %struct.charset*, %struct.charset** %charset, align 8
  %hash_index = getelementptr inbounds %struct.charset, %struct.charset* %57, i32 0, i32 1
  %58 = load i64, i64* %hash_index, align 8
  %call105 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call104, i64 %58)
  %call106 = call i64 @AREF(i64 %call105, i64 5)
  %call107 = call zeroext i1 @CHAR_TABLE_P(i64 %call106)
  br i1 %call107, label %cond.true.109, label %cond.false.118

cond.true.109:                                    ; preds = %land.lhs.true.103
  %59 = load i64, i64* @Vcharset_hash_table, align 8
  %call110 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %59)
  %60 = load %struct.charset*, %struct.charset** %charset, align 8
  %hash_index111 = getelementptr inbounds %struct.charset, %struct.charset* %60, i32 0, i32 1
  %61 = load i64, i64* %hash_index111, align 8
  %call112 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call110, i64 %61)
  %call113 = call i64 @AREF(i64 %call112, i64 5)
  %62 = load i32, i32* %c, align 4
  %call114 = call i64 @CHAR_TABLE_REF(i64 %call113, i32 %62)
  %call115 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp116 = icmp eq i64 %call114, %call115
  br i1 %cmp116, label %if.then.123, label %if.end.124

cond.false.118:                                   ; preds = %land.lhs.true.103, %land.lhs.true.97, %cond.false.93
  %63 = load %struct.charset*, %struct.charset** %charset, align 8
  %64 = load i32, i32* %c, align 4
  %call119 = call i32 @encode_char(%struct.charset* %63, i32 %64)
  %65 = load %struct.charset*, %struct.charset** %charset, align 8
  %invalid_code120 = getelementptr inbounds %struct.charset, %struct.charset* %65, i32 0, i32 15
  %66 = load i32, i32* %invalid_code120, align 4
  %cmp121 = icmp ne i32 %call119, %66
  br i1 %cmp121, label %if.end.124, label %if.then.123

if.then.123:                                      ; preds = %cond.false.118, %cond.true.109, %land.lhs.true.90, %cond.true.87, %cond.false.71, %cond.true.65, %cond.true.58
  br label %for.inc

if.end.124:                                       ; preds = %cond.false.118, %cond.true.109, %land.lhs.true.90, %cond.true.58, %land.lhs.true.44
  br label %if.end.134

if.else:                                          ; preds = %if.end
  %67 = load i64, i64* %repertory, align 8
  %call125 = call zeroext i1 @CHAR_TABLE_P(i64 %67)
  br i1 %call125, label %if.then.126, label %if.end.133

if.then.126:                                      ; preds = %if.else
  %68 = load i64, i64* %repertory, align 8
  %69 = load i32, i32* %c, align 4
  %call127 = call i64 @CHAR_TABLE_REF(i64 %68, i32 %69)
  %call128 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp129 = icmp eq i64 %call127, %call128
  br i1 %cmp129, label %if.then.131, label %if.end.132

if.then.131:                                      ; preds = %if.then.126
  br label %for.inc

if.end.132:                                       ; preds = %if.then.126
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %if.else
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.133, %if.end.124
  %70 = load i64, i64* %val, align 8
  %call135 = call i64 @AREF(i64 %70, i64 0)
  store i64 %call135, i64* %val, align 8
  %71 = load i64, i64* %val, align 8
  %call136 = call i64 @AREF(i64 %71, i64 2)
  store i64 %call136, i64* %family, align 8
  %72 = load i64, i64* %family, align 8
  %call137 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp138 = icmp eq i64 %72, %call137
  br i1 %cmp138, label %if.end.142, label %if.then.140

if.then.140:                                      ; preds = %if.end.134
  %73 = load i64, i64* %family, align 8
  %call141 = call i64 @SYMBOL_NAME(i64 %73)
  store i64 %call141, i64* %family, align 8
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.140, %if.end.134
  %74 = load i64, i64* %val, align 8
  %call143 = call i64 @AREF(i64 %74, i64 4)
  store i64 %call143, i64* %registry, align 8
  %75 = load i64, i64* %registry, align 8
  %call144 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp145 = icmp eq i64 %75, %call144
  br i1 %cmp145, label %if.end.149, label %if.then.147

if.then.147:                                      ; preds = %if.end.142
  %76 = load i64, i64* %registry, align 8
  %call148 = call i64 @SYMBOL_NAME(i64 %76)
  store i64 %call148, i64* %registry, align 8
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.147, %if.end.142
  %77 = load i64, i64* %family, align 8
  %78 = load i64, i64* %registry, align 8
  %call150 = call i64 @Fcons(i64 %77, i64 %78)
  store i64 %call150, i64* %val, align 8
  %79 = load i64, i64* %all.addr, align 8
  %call151 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp152 = icmp eq i64 %79, %call151
  br i1 %cmp152, label %if.then.154, label %if.end.155

if.then.154:                                      ; preds = %if.end.149
  %80 = load i64, i64* %val, align 8
  store i64 %80, i64* %retval
  br label %return

if.end.155:                                       ; preds = %if.end.149
  %81 = load i64, i64* %val, align 8
  %82 = load i64, i64* %list, align 8
  %call156 = call i64 @Fcons(i64 %81, i64 %82)
  store i64 %call156, i64* %list, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.155, %if.then.131, %if.then.123
  %83 = load i32, i32* %j, align 4
  %inc = add nsw i32 %83, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.16

for.end:                                          ; preds = %for.cond.16
  br label %if.end.157

if.end.157:                                       ; preds = %for.end, %for.body
  br label %for.inc.158

for.inc.158:                                      ; preds = %if.end.157
  %84 = load i32, i32* %i, align 4
  %inc159 = add nsw i32 %84, 1
  store i32 %inc159, i32* %i, align 4
  %85 = load i64, i64* %fontset, align 8
  %call160 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %85)
  %extras = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call160, i32 0, i32 6
  %arrayidx161 = getelementptr inbounds [0 x i64], [0 x i64]* %extras, i32 0, i64 7
  %86 = load i64, i64* %arrayidx161, align 8
  store i64 %86, i64* %elt, align 8
  br label %for.cond

for.end.162:                                      ; preds = %for.cond
  %87 = load i64, i64* %fontset, align 8
  %88 = load i64, i64* @Vdefault_fontset, align 8
  %cmp163 = icmp eq i64 %87, %88
  br i1 %cmp163, label %if.then.165, label %if.end.166

if.then.165:                                      ; preds = %for.end.162
  br label %while.end

if.end.166:                                       ; preds = %for.end.162
  %89 = load i64, i64* @Vdefault_fontset, align 8
  store i64 %89, i64* %fontset, align 8
  br label %while.body

while.end:                                        ; preds = %if.then.165
  %90 = load i64, i64* %list, align 8
  %call167 = call i64 @Fnreverse(i64 %90)
  store i64 %call167, i64* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.154, %if.then.27
  %91 = load i64, i64* %retval
  ret i64 %91
}

declare i32 @encode_char(%struct.charset*, i32) #1

declare zeroext i1 @CHAR_TABLE_P(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Ffontset_list() #0 {
entry:
  %fontset = alloca i64, align 8
  %list = alloca i64, align 8
  %i = alloca i32, align 4
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %list, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %conv = sext i32 %0 to i64
  %1 = load i64, i64* @Vfontset_table, align 8
  %call1 = call i64 @ASIZE(i64 %1)
  %cmp = icmp slt i64 %conv, %call1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* @Vfontset_table, align 8
  %3 = load i32, i32* %i, align 4
  %conv3 = sext i32 %3 to i64
  %call4 = call i64 @AREF(i64 %2, i64 %conv3)
  store i64 %call4, i64* %fontset, align 8
  %4 = load i64, i64* %fontset, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp6 = icmp eq i64 %4, %call5
  br i1 %cmp6, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %5 = load i64, i64* %fontset, align 8
  %call8 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %5)
  %extras = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call8, i32 0, i32 6
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* %extras, i32 0, i64 3
  %6 = load i64, i64* %arrayidx, align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp10 = icmp eq i64 %6, %call9
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load i64, i64* %fontset, align 8
  %call12 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %7)
  %extras13 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call12, i32 0, i32 6
  %arrayidx14 = getelementptr inbounds [0 x i64], [0 x i64]* %extras13, i32 0, i64 1
  %8 = load i64, i64* %arrayidx14, align 8
  %9 = load i64, i64* %list, align 8
  %call15 = call i64 @Fcons(i64 %8, i64 %9)
  store i64 %call15, i64* %list, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i64, i64* %list, align 8
  ret i64 %11
}

; Function Attrs: nounwind uwtable
define void @syms_of_fontset() #0 {
entry:
  %call = call i64 @builtin_lisp_symbol(i32 449)
  %call1 = call i64 @builtin_lisp_symbol(i32 258)
  %call2 = call i64 @Fput(i64 %call, i64 %call1, i64 34)
  %call3 = call i64 @builtin_lisp_symbol(i32 450)
  %call4 = call i64 @builtin_lisp_symbol(i32 258)
  %call5 = call i64 @Fput(i64 %call3, i64 %call4, i64 6)
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call6, i64* @Vcached_fontset_data, align 8
  call void @staticpro(i64* @Vcached_fontset_data)
  %call7 = call i64 @builtin_lisp_symbol(i32 0)
  %call8 = call i64 @Fmake_vector(i64 130, i64 %call7)
  store i64 %call8, i64* @Vfontset_table, align 8
  call void @staticpro(i64* @Vfontset_table)
  %call9 = call i64 @builtin_lisp_symbol(i32 449)
  %call10 = call i64 @builtin_lisp_symbol(i32 0)
  %call11 = call i64 @Fmake_char_table(i64 %call9, i64 %call10)
  store i64 %call11, i64* @Vdefault_fontset, align 8
  call void @staticpro(i64* @Vdefault_fontset)
  %0 = load i64, i64* @Vdefault_fontset, align 8
  call void @set_fontset_id(i64 %0, i64 2)
  %1 = load i64, i64* @Vdefault_fontset, align 8
  %call12 = call i64 @build_pure_c_string(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i32 0, i32 0))
  call void @set_fontset_name(i64 %1, i64 %call12)
  %2 = load i64, i64* @Vfontset_table, align 8
  %3 = load i64, i64* @Vdefault_fontset, align 8
  call void @ASET(i64 %2, i64 0, i64 %3)
  store i32 1, i32* @next_fontset_id, align 4
  %call13 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call13, i64* @auto_fontset_alist, align 8
  call void @staticpro(i64* @auto_fontset_alist)
  br label %do.body

do.body:                                          ; preds = %entry
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_fontset.o_fwd, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 103))
  br label %do.end

do.end:                                           ; preds = %do.body
  %call14 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call14, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 103), align 8
  br label %do.body.15

do.body.15:                                       ; preds = %do.end
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_fontset.o_fwd.14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 318))
  br label %do.end.16

do.end.16:                                        ; preds = %do.body.15
  %call17 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call17, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 318), align 8
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.16
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_fontset.o_fwd.16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 129))
  br label %do.end.19

do.end.19:                                        ; preds = %do.body.18
  %call20 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call20, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 129), align 8
  br label %do.body.21

do.body.21:                                       ; preds = %do.end.19
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_fontset.o_fwd.18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 4))
  br label %do.end.22

do.end.22:                                        ; preds = %do.body.21
  %call23 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call23, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 4), align 8
  br label %do.body.24

do.body.24:                                       ; preds = %do.end.22
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_fontset.o_fwd.20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 109))
  br label %do.end.25

do.end.25:                                        ; preds = %do.body.24
  %4 = load i64, i64* @Vdefault_fontset, align 8
  %call26 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %4)
  %extras = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call26, i32 0, i32 6
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* %extras, i32 0, i64 1
  %5 = load i64, i64* %arrayidx, align 8
  %call27 = call i64 @build_pure_c_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0))
  %call28 = call i64 @Fcons(i64 %5, i64 %call27)
  %call29 = call i64 @list1(i64 %call28)
  store i64 %call29, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 109), align 8
  br label %do.body.30

do.body.30:                                       ; preds = %do.end.25
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_fontset.o_fwd.23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.24, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 324))
  br label %do.end.31

do.end.31:                                        ; preds = %do.body.30
  %call32 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call32, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 324), align 8
  br label %do.body.33

do.body.33:                                       ; preds = %do.end.31
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_fontset.o_fwd.25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 210))
  br label %do.end.34

do.end.34:                                        ; preds = %do.body.33
  %call35 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call35, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 210), align 8
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Squery_fontset to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Snew_fontset to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sset_fontset_font to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sfontset_info to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sfontset_font to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* @Sfontset_list)
  ret void
}

declare i64 @Fput(i64, i64, i64) #1

declare void @staticpro(i64*) #1

; Function Attrs: nounwind uwtable
define internal void @set_fontset_id(i64 %fontset, i64 %id) #0 {
entry:
  %fontset.addr = alloca i64, align 8
  %id.addr = alloca i64, align 8
  store i64 %fontset, i64* %fontset.addr, align 8
  store i64 %id, i64* %id.addr, align 8
  %0 = load i64, i64* %fontset.addr, align 8
  %1 = load i64, i64* %id.addr, align 8
  call void @set_char_table_extras(i64 %0, i64 0, i64 %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_fontset_name(i64 %fontset, i64 %name) #0 {
entry:
  %fontset.addr = alloca i64, align 8
  %name.addr = alloca i64, align 8
  store i64 %fontset, i64* %fontset.addr, align 8
  store i64 %name, i64* %name.addr, align 8
  %0 = load i64, i64* %fontset.addr, align 8
  %1 = load i64, i64* %name.addr, align 8
  call void @set_char_table_extras(i64 %0, i64 1, i64 %1)
  ret void
}

declare i64 @build_pure_c_string(i8*) #1

declare void @defvar_lisp(%struct.Lisp_Objfwd*, i8*, i64*) #1

declare void @defsubr(%struct.Lisp_Subr*) #1

declare void @font_deferred_log(i8*, i64, i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @fontset_find_font(i64 %fontset, i32 %c, %struct.face* %face, i32 %id, i1 zeroext %fallback) #0 {
entry:
  %retval = alloca i64, align 8
  %fontset.addr = alloca i64, align 8
  %c.addr = alloca i32, align 4
  %face.addr = alloca %struct.face*, align 8
  %id.addr = alloca i32, align 4
  %fallback.addr = alloca i8, align 1
  %vec = alloca i64, align 8
  %font_group = alloca i64, align 8
  %i = alloca i32, align 4
  %charset_matched = alloca i32, align 4
  %found_index = alloca i32, align 4
  %f = alloca %struct.frame*, align 8
  %rfont_def = alloca i64, align 8
  %repertory = alloca i64, align 8
  %font_def = alloca i64, align 8
  %font_entity = alloca i64, align 8
  %font_object = alloca i64, align 8
  %new_vec = alloca i64, align 8
  %j = alloca i32, align 4
  store i64 %fontset, i64* %fontset.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  store %struct.face* %face, %struct.face** %face.addr, align 8
  store i32 %id, i32* %id.addr, align 4
  %frombool = zext i1 %fallback to i8
  store i8 %frombool, i8* %fallback.addr, align 1
  store i32 0, i32* %charset_matched, align 4
  %0 = load i64, i64* %fontset.addr, align 8
  %call = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %0)
  %extras = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call, i32 0, i32 6
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* %extras, i32 0, i64 4
  %1 = load i64, i64* %arrayidx, align 8
  %call1 = call zeroext i1 @FRAMEP(i64 %1)
  br i1 %call1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i64, i64* %fontset.addr, align 8
  %call2 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %2)
  %extras3 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call2, i32 0, i32 6
  %arrayidx4 = getelementptr inbounds [0 x i64], [0 x i64]* %extras3, i32 0, i64 4
  %3 = load i64, i64* %arrayidx4, align 8
  %sub = sub nsw i64 %3, 5
  %4 = inttoptr i64 %sub to i8*
  %5 = bitcast i8* %4 to %struct.frame*
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load i64, i64* @selected_frame, align 8
  %sub5 = sub nsw i64 %6, 5
  %7 = inttoptr i64 %sub5 to i8*
  %8 = bitcast i8* %7 to %struct.frame*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.frame* [ %5, %cond.true ], [ %8, %cond.false ]
  store %struct.frame* %cond, %struct.frame** %f, align 8
  %9 = load i64, i64* %fontset.addr, align 8
  %10 = load i8, i8* %fallback.addr, align 1
  %tobool = trunc i8 %10 to i1
  br i1 %tobool, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.end
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end
  %11 = load i32, i32* %c.addr, align 4
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.false.7, %cond.true.6
  %cond9 = phi i32 [ -1, %cond.true.6 ], [ %11, %cond.false.7 ]
  %call10 = call i64 @fontset_get_font_group(i64 %9, i32 %cond9)
  store i64 %call10, i64* %font_group, align 8
  %12 = load i64, i64* %font_group, align 8
  %and = and i64 %12, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end.8
  %13 = load i64, i64* %font_group, align 8
  store i64 %13, i64* %retval
  br label %return

if.end:                                           ; preds = %cond.end.8
  %14 = load i64, i64* %font_group, align 8
  %sub12 = sub nsw i64 %14, 3
  %15 = inttoptr i64 %sub12 to i8*
  %16 = bitcast i8* %15 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %16, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %17 = load i64, i64* %cdr, align 8
  store i64 %17, i64* %vec, align 8
  %18 = load i64, i64* %vec, align 8
  %call13 = call i64 @ASIZE(i64 %18)
  %cmp14 = icmp eq i64 %call13, 0
  br i1 %cmp14, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end
  %call17 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call17, i64* %retval
  br label %return

if.end.18:                                        ; preds = %if.end
  %19 = load i64, i64* %vec, align 8
  %call19 = call i64 @ASIZE(i64 %19)
  %cmp20 = icmp sgt i64 %call19, 1
  br i1 %cmp20, label %if.then.22, label %if.end.51

if.then.22:                                       ; preds = %if.end.18
  %20 = load i64, i64* %font_group, align 8
  %sub23 = sub nsw i64 %20, 3
  %21 = inttoptr i64 %sub23 to i8*
  %22 = bitcast i8* %21 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %22, i32 0, i32 0
  %23 = load i64, i64* %car, align 8
  %shr = ashr i64 %23, 2
  %24 = load i64, i64* @charset_ordered_list_tick, align 8
  %cmp24 = icmp ne i64 %shr, %24
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.then.22
  %25 = load i64, i64* %font_group, align 8
  %26 = load %struct.face*, %struct.face** %face.addr, align 8
  %ascii_face = getelementptr inbounds %struct.face, %struct.face* %26, i32 0, i32 17
  %27 = load %struct.face*, %struct.face** %ascii_face, align 8
  %font = getelementptr inbounds %struct.face, %struct.face* %27, i32 0, i32 10
  %28 = load %struct.font*, %struct.font** %font, align 8
  call void @reorder_font_vector(i64 %25, %struct.font* %28)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.then.22
  %29 = load i32, i32* %id.addr, align 4
  %cmp28 = icmp sge i32 %29, 0
  br i1 %cmp28, label %if.then.30, label %if.end.50

if.then.30:                                       ; preds = %if.end.27
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.30
  %30 = load i32, i32* %i, align 4
  %conv31 = sext i32 %30 to i64
  %31 = load i64, i64* %vec, align 8
  %call32 = call i64 @ASIZE(i64 %31)
  %cmp33 = icmp slt i64 %conv31, %call32
  br i1 %cmp33, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load i64, i64* %vec, align 8
  %33 = load i32, i32* %i, align 4
  %conv35 = sext i32 %33 to i64
  %call36 = call i64 @AREF(i64 %32, i64 %conv35)
  store i64 %call36, i64* %rfont_def, align 8
  %34 = load i64, i64* %rfont_def, align 8
  %call37 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp38 = icmp eq i64 %34, %call37
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %for.body
  br label %for.end

if.end.41:                                        ; preds = %for.body
  %35 = load i64, i64* %rfont_def, align 8
  %call42 = call i64 @AREF(i64 %35, i64 1)
  %call43 = call i64 @AREF(i64 %call42, i64 2)
  store i64 %call43, i64* %repertory, align 8
  %36 = load i64, i64* %repertory, align 8
  %shr44 = ashr i64 %36, 2
  %37 = load i32, i32* %id.addr, align 4
  %conv45 = sext i32 %37 to i64
  %cmp46 = icmp eq i64 %shr44, %conv45
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.end.41
  %38 = load i32, i32* %i, align 4
  store i32 %38, i32* %charset_matched, align 4
  br label %for.end

if.end.49:                                        ; preds = %if.end.41
  br label %for.inc

for.inc:                                          ; preds = %if.end.49
  %39 = load i32, i32* %i, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.48, %if.then.40, %for.cond
  br label %if.end.50

if.end.50:                                        ; preds = %for.end, %if.end.27
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.end.18
  store i32 0, i32* %i, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.245, %if.end.51
  %40 = load i32, i32* %i, align 4
  %conv53 = sext i32 %40 to i64
  %41 = load i64, i64* %vec, align 8
  %call54 = call i64 @ASIZE(i64 %41)
  %cmp55 = icmp slt i64 %conv53, %call54
  br i1 %cmp55, label %for.body.57, label %for.end.247

for.body.57:                                      ; preds = %for.cond.52
  %42 = load i32, i32* %i, align 4
  store i32 %42, i32* %found_index, align 4
  %43 = load i32, i32* %i, align 4
  %cmp58 = icmp eq i32 %43, 0
  br i1 %cmp58, label %if.then.60, label %if.else

if.then.60:                                       ; preds = %for.body.57
  %44 = load i32, i32* %charset_matched, align 4
  %cmp61 = icmp sgt i32 %44, 0
  br i1 %cmp61, label %if.then.63, label %if.end.65

if.then.63:                                       ; preds = %if.then.60
  %45 = load i32, i32* %charset_matched, align 4
  store i32 %45, i32* %found_index, align 4
  %46 = load i32, i32* %charset_matched, align 4
  %sub64 = sub nsw i32 0, %46
  store i32 %sub64, i32* %charset_matched, align 4
  %47 = load i32, i32* %i, align 4
  %dec = add nsw i32 %47, -1
  store i32 %dec, i32* %i, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.63, %if.then.60
  br label %if.end.96

if.else:                                          ; preds = %for.body.57
  %48 = load i32, i32* %i, align 4
  %49 = load i32, i32* %charset_matched, align 4
  %sub66 = sub nsw i32 0, %49
  %cmp67 = icmp eq i32 %48, %sub66
  br i1 %cmp67, label %if.then.69, label %if.end.95

if.then.69:                                       ; preds = %if.else
  %50 = load i64, i64* %vec, align 8
  %51 = load i32, i32* %i, align 4
  %conv70 = sext i32 %51 to i64
  %call71 = call i64 @AREF(i64 %50, i64 %conv70)
  store i64 %call71, i64* %rfont_def, align 8
  %52 = load i64, i64* %rfont_def, align 8
  %call72 = call i64 @AREF(i64 %52, i64 1)
  store i64 %call72, i64* %font_def, align 8
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.92, %if.then.69
  %53 = load i32, i32* %i, align 4
  %add = add nsw i32 %53, 1
  %conv74 = sext i32 %add to i64
  %54 = load i64, i64* %vec, align 8
  %call75 = call i64 @ASIZE(i64 %54)
  %cmp76 = icmp slt i64 %conv74, %call75
  br i1 %cmp76, label %for.body.78, label %for.end.94

for.body.78:                                      ; preds = %for.cond.73
  %55 = load i64, i64* %vec, align 8
  %56 = load i32, i32* %i, align 4
  %add79 = add nsw i32 %56, 1
  %conv80 = sext i32 %add79 to i64
  %call81 = call i64 @AREF(i64 %55, i64 %conv80)
  store i64 %call81, i64* %rfont_def, align 8
  %57 = load i64, i64* %rfont_def, align 8
  %call82 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp83 = icmp eq i64 %57, %call82
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %for.body.78
  br label %for.end.94

if.end.86:                                        ; preds = %for.body.78
  %58 = load i64, i64* %rfont_def, align 8
  %call87 = call i64 @AREF(i64 %58, i64 1)
  %59 = load i64, i64* %font_def, align 8
  %cmp88 = icmp eq i64 %call87, %59
  br i1 %cmp88, label %if.end.91, label %if.then.90

if.then.90:                                       ; preds = %if.end.86
  br label %for.end.94

if.end.91:                                        ; preds = %if.end.86
  br label %for.inc.92

for.inc.92:                                       ; preds = %if.end.91
  %60 = load i32, i32* %i, align 4
  %inc93 = add nsw i32 %60, 1
  store i32 %inc93, i32* %i, align 4
  br label %for.cond.73

for.end.94:                                       ; preds = %if.then.90, %if.then.85, %for.cond.73
  br label %for.inc.245

if.end.95:                                        ; preds = %if.else
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.end.65
  %61 = load i64, i64* %vec, align 8
  %62 = load i32, i32* %found_index, align 4
  %conv97 = sext i32 %62 to i64
  %call98 = call i64 @AREF(i64 %61, i64 %conv97)
  store i64 %call98, i64* %rfont_def, align 8
  %63 = load i64, i64* %rfont_def, align 8
  %call99 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp100 = icmp eq i64 %63, %call99
  br i1 %cmp100, label %if.then.102, label %if.end.108

if.then.102:                                      ; preds = %if.end.96
  %64 = load i32, i32* %i, align 4
  %cmp103 = icmp slt i32 %64, 0
  br i1 %cmp103, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %if.then.102
  br label %for.inc.245

if.end.106:                                       ; preds = %if.then.102
  %call107 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call107, i64* %retval
  br label %return

if.end.108:                                       ; preds = %if.end.96
  %65 = load i64, i64* %rfont_def, align 8
  %call109 = call i64 @AREF(i64 %65, i64 0)
  %and110 = and i64 %call109, 7
  %conv111 = trunc i64 %and110 to i32
  %and112 = and i32 %conv111, -5
  %cmp113 = icmp eq i32 %and112, 2
  br i1 %cmp113, label %land.lhs.true, label %if.end.120

land.lhs.true:                                    ; preds = %if.end.108
  %66 = load i64, i64* %rfont_def, align 8
  %call115 = call i64 @AREF(i64 %66, i64 0)
  %shr116 = ashr i64 %call115, 2
  %cmp117 = icmp slt i64 %shr116, 0
  br i1 %cmp117, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %land.lhs.true
  br label %for.inc.245

if.end.120:                                       ; preds = %land.lhs.true, %if.end.108
  %67 = load i64, i64* %rfont_def, align 8
  %call121 = call i64 @AREF(i64 %67, i64 2)
  store i64 %call121, i64* %font_object, align 8
  %68 = load i64, i64* %font_object, align 8
  %call122 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp123 = icmp eq i64 %68, %call122
  br i1 %cmp123, label %if.then.125, label %if.end.147

if.then.125:                                      ; preds = %if.end.120
  %69 = load i64, i64* %rfont_def, align 8
  %call126 = call i64 @AREF(i64 %69, i64 1)
  store i64 %call126, i64* %font_def, align 8
  %70 = load %struct.face*, %struct.face** %face.addr, align 8
  %tobool127 = icmp ne %struct.face* %70, null
  br i1 %tobool127, label %if.end.130, label %if.then.128

if.then.128:                                      ; preds = %if.then.125
  %call129 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call129, i64* %retval
  br label %return

if.end.130:                                       ; preds = %if.then.125
  %71 = load %struct.frame*, %struct.frame** %f, align 8
  %72 = load %struct.face*, %struct.face** %face.addr, align 8
  %lface = getelementptr inbounds %struct.face, %struct.face* %72, i32 0, i32 0
  %arraydecay = getelementptr inbounds [19 x i64], [19 x i64]* %lface, i32 0, i32 0
  %73 = load i64, i64* %font_def, align 8
  %call131 = call i64 @AREF(i64 %73, i64 0)
  %call132 = call i64 @font_find_for_lface(%struct.frame* %71, i64* %arraydecay, i64 %call131, i32 -1)
  store i64 %call132, i64* %font_entity, align 8
  %74 = load i64, i64* %font_entity, align 8
  %call133 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp134 = icmp eq i64 %74, %call133
  br i1 %cmp134, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %if.end.130
  %75 = load i64, i64* %rfont_def, align 8
  call void @ASET(i64 %75, i64 0, i64 -2)
  br label %for.inc.245

if.end.137:                                       ; preds = %if.end.130
  %76 = load %struct.frame*, %struct.frame** %f, align 8
  %77 = load i64, i64* %font_entity, align 8
  %78 = load %struct.face*, %struct.face** %face.addr, align 8
  %lface138 = getelementptr inbounds %struct.face, %struct.face* %78, i32 0, i32 0
  %arraydecay139 = getelementptr inbounds [19 x i64], [19 x i64]* %lface138, i32 0, i32 0
  %79 = load i64, i64* %font_def, align 8
  %call140 = call i64 @AREF(i64 %79, i64 0)
  %call141 = call i64 @font_open_for_lface(%struct.frame* %76, i64 %77, i64* %arraydecay139, i64 %call140)
  store i64 %call141, i64* %font_object, align 8
  %80 = load i64, i64* %font_object, align 8
  %call142 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp143 = icmp eq i64 %80, %call142
  br i1 %cmp143, label %if.then.145, label %if.end.146

if.then.145:                                      ; preds = %if.end.137
  %81 = load i64, i64* %rfont_def, align 8
  call void @ASET(i64 %81, i64 0, i64 -2)
  br label %for.inc.245

if.end.146:                                       ; preds = %if.end.137
  %82 = load i64, i64* %rfont_def, align 8
  %83 = load i64, i64* %font_object, align 8
  call void @ASET(i64 %82, i64 2, i64 %83)
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146, %if.end.120
  %84 = load %struct.frame*, %struct.frame** %f, align 8
  %85 = load i64, i64* %font_object, align 8
  %86 = load i32, i32* %c.addr, align 4
  %call148 = call i32 @font_has_char(%struct.frame* %84, i64 %85, i32 %86)
  %tobool149 = icmp ne i32 %call148, 0
  br i1 %tobool149, label %if.then.150, label %if.end.151

if.then.150:                                      ; preds = %if.end.147
  br label %found

if.end.151:                                       ; preds = %if.end.147
  %87 = load i64, i64* %rfont_def, align 8
  %call152 = call i64 @AREF(i64 %87, i64 1)
  store i64 %call152, i64* %font_def, align 8
  br label %for.cond.153

for.cond.153:                                     ; preds = %for.inc.183, %if.end.151
  %88 = load i32, i32* %found_index, align 4
  %add154 = add nsw i32 %88, 1
  %conv155 = sext i32 %add154 to i64
  %89 = load i64, i64* %vec, align 8
  %call156 = call i64 @ASIZE(i64 %89)
  %cmp157 = icmp slt i64 %conv155, %call156
  br i1 %cmp157, label %for.body.159, label %for.end.185

for.body.159:                                     ; preds = %for.cond.153
  %90 = load i64, i64* %vec, align 8
  %91 = load i32, i32* %found_index, align 4
  %add160 = add nsw i32 %91, 1
  %conv161 = sext i32 %add160 to i64
  %call162 = call i64 @AREF(i64 %90, i64 %conv161)
  store i64 %call162, i64* %rfont_def, align 8
  %92 = load i64, i64* %rfont_def, align 8
  %call163 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp164 = icmp eq i64 %92, %call163
  br i1 %cmp164, label %if.then.166, label %if.end.167

if.then.166:                                      ; preds = %for.body.159
  br label %for.end.185

if.end.167:                                       ; preds = %for.body.159
  %93 = load i64, i64* %rfont_def, align 8
  %call168 = call i64 @AREF(i64 %93, i64 1)
  %94 = load i64, i64* %font_def, align 8
  %cmp169 = icmp eq i64 %call168, %94
  br i1 %cmp169, label %if.end.172, label %if.then.171

if.then.171:                                      ; preds = %if.end.167
  br label %for.end.185

if.end.172:                                       ; preds = %if.end.167
  %95 = load i64, i64* %rfont_def, align 8
  %call173 = call i64 @AREF(i64 %95, i64 2)
  store i64 %call173, i64* %font_object, align 8
  %96 = load i64, i64* %font_object, align 8
  %call174 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp175 = icmp eq i64 %96, %call174
  br i1 %cmp175, label %if.end.182, label %land.lhs.true.177

land.lhs.true.177:                                ; preds = %if.end.172
  %97 = load %struct.frame*, %struct.frame** %f, align 8
  %98 = load i64, i64* %font_object, align 8
  %99 = load i32, i32* %c.addr, align 4
  %call178 = call i32 @font_has_char(%struct.frame* %97, i64 %98, i32 %99)
  %tobool179 = icmp ne i32 %call178, 0
  br i1 %tobool179, label %if.then.180, label %if.end.182

if.then.180:                                      ; preds = %land.lhs.true.177
  %100 = load i32, i32* %found_index, align 4
  %inc181 = add nsw i32 %100, 1
  store i32 %inc181, i32* %found_index, align 4
  br label %found

if.end.182:                                       ; preds = %land.lhs.true.177, %if.end.172
  br label %for.inc.183

for.inc.183:                                      ; preds = %if.end.182
  %101 = load i32, i32* %found_index, align 4
  %inc184 = add nsw i32 %101, 1
  store i32 %inc184, i32* %found_index, align 4
  br label %for.cond.153

for.end.185:                                      ; preds = %if.then.171, %if.then.166, %for.cond.153
  %102 = load %struct.frame*, %struct.frame** %f, align 8
  %103 = load %struct.face*, %struct.face** %face.addr, align 8
  %lface186 = getelementptr inbounds %struct.face, %struct.face* %103, i32 0, i32 0
  %arraydecay187 = getelementptr inbounds [19 x i64], [19 x i64]* %lface186, i32 0, i32 0
  %104 = load i64, i64* %font_def, align 8
  %call188 = call i64 @AREF(i64 %104, i64 0)
  %105 = load i32, i32* %c.addr, align 4
  %call189 = call i64 @font_find_for_lface(%struct.frame* %102, i64* %arraydecay187, i64 %call188, i32 %105)
  store i64 %call189, i64* %font_entity, align 8
  %106 = load i64, i64* %font_entity, align 8
  %call190 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp191 = icmp eq i64 %106, %call190
  br i1 %cmp191, label %if.end.240, label %if.then.193

if.then.193:                                      ; preds = %for.end.185
  %107 = load %struct.frame*, %struct.frame** %f, align 8
  %108 = load i64, i64* %font_entity, align 8
  %109 = load %struct.face*, %struct.face** %face.addr, align 8
  %lface194 = getelementptr inbounds %struct.face, %struct.face* %109, i32 0, i32 0
  %arraydecay195 = getelementptr inbounds [19 x i64], [19 x i64]* %lface194, i32 0, i32 0
  %call196 = call i64 @builtin_lisp_symbol(i32 0)
  %call197 = call i64 @font_open_for_lface(%struct.frame* %107, i64 %108, i64* %arraydecay195, i64 %call196)
  store i64 %call197, i64* %font_object, align 8
  %110 = load i64, i64* %font_object, align 8
  %call198 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp199 = icmp eq i64 %110, %call198
  br i1 %cmp199, label %if.then.201, label %if.end.202

if.then.201:                                      ; preds = %if.then.193
  br label %for.inc.245

if.end.202:                                       ; preds = %if.then.193
  br label %do.body

do.body:                                          ; preds = %if.end.202
  %call203 = call i64 @builtin_lisp_symbol(i32 0)
  %call204 = call i64 @Fmake_vector(i64 18, i64 %call203)
  store i64 %call204, i64* %rfont_def, align 8
  %111 = load i64, i64* %rfont_def, align 8
  %112 = load i64, i64* %font_def, align 8
  call void @ASET(i64 %111, i64 1, i64 %112)
  %113 = load i64, i64* %rfont_def, align 8
  call void @ASET(i64 %113, i64 3, i64 2)
  br label %do.end

do.end:                                           ; preds = %do.body
  %114 = load i64, i64* %rfont_def, align 8
  %115 = load i64, i64* %font_object, align 8
  call void @ASET(i64 %114, i64 2, i64 %115)
  %116 = load i64, i64* %rfont_def, align 8
  %117 = load i64, i64* %rfont_def, align 8
  %call205 = call i64 @AREF(i64 %117, i64 3)
  %shr206 = ashr i64 %call205, 2
  %shl = shl i64 %shr206, 2
  %add207 = add i64 %shl, 2
  call void @ASET(i64 %116, i64 3, i64 %add207)
  %118 = load i64, i64* %vec, align 8
  %call208 = call i64 @ASIZE(i64 %118)
  %add209 = add nsw i64 %call208, 1
  %shl210 = shl i64 %add209, 2
  %add211 = add i64 %shl210, 2
  %call212 = call i64 @builtin_lisp_symbol(i32 0)
  %call213 = call i64 @Fmake_vector(i64 %add211, i64 %call212)
  store i64 %call213, i64* %new_vec, align 8
  %119 = load i32, i32* %found_index, align 4
  %inc214 = add nsw i32 %119, 1
  store i32 %inc214, i32* %found_index, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.215

for.cond.215:                                     ; preds = %for.inc.222, %do.end
  %120 = load i32, i32* %j, align 4
  %121 = load i32, i32* %found_index, align 4
  %cmp216 = icmp slt i32 %120, %121
  br i1 %cmp216, label %for.body.218, label %for.end.224

for.body.218:                                     ; preds = %for.cond.215
  %122 = load i64, i64* %new_vec, align 8
  %123 = load i32, i32* %j, align 4
  %conv219 = sext i32 %123 to i64
  %124 = load i64, i64* %vec, align 8
  %125 = load i32, i32* %j, align 4
  %conv220 = sext i32 %125 to i64
  %call221 = call i64 @AREF(i64 %124, i64 %conv220)
  call void @ASET(i64 %122, i64 %conv219, i64 %call221)
  br label %for.inc.222

for.inc.222:                                      ; preds = %for.body.218
  %126 = load i32, i32* %j, align 4
  %inc223 = add nsw i32 %126, 1
  store i32 %inc223, i32* %j, align 4
  br label %for.cond.215

for.end.224:                                      ; preds = %for.cond.215
  %127 = load i64, i64* %new_vec, align 8
  %128 = load i32, i32* %j, align 4
  %conv225 = sext i32 %128 to i64
  %129 = load i64, i64* %rfont_def, align 8
  call void @ASET(i64 %127, i64 %conv225, i64 %129)
  %130 = load i32, i32* %j, align 4
  %inc226 = add nsw i32 %130, 1
  store i32 %inc226, i32* %j, align 4
  br label %for.cond.227

for.cond.227:                                     ; preds = %for.inc.237, %for.end.224
  %131 = load i32, i32* %j, align 4
  %conv228 = sext i32 %131 to i64
  %132 = load i64, i64* %new_vec, align 8
  %call229 = call i64 @ASIZE(i64 %132)
  %cmp230 = icmp slt i64 %conv228, %call229
  br i1 %cmp230, label %for.body.232, label %for.end.239

for.body.232:                                     ; preds = %for.cond.227
  %133 = load i64, i64* %new_vec, align 8
  %134 = load i32, i32* %j, align 4
  %conv233 = sext i32 %134 to i64
  %135 = load i64, i64* %vec, align 8
  %136 = load i32, i32* %j, align 4
  %sub234 = sub nsw i32 %136, 1
  %conv235 = sext i32 %sub234 to i64
  %call236 = call i64 @AREF(i64 %135, i64 %conv235)
  call void @ASET(i64 %133, i64 %conv233, i64 %call236)
  br label %for.inc.237

for.inc.237:                                      ; preds = %for.body.232
  %137 = load i32, i32* %j, align 4
  %inc238 = add nsw i32 %137, 1
  store i32 %inc238, i32* %j, align 4
  br label %for.cond.227

for.end.239:                                      ; preds = %for.cond.227
  %138 = load i64, i64* %font_group, align 8
  %139 = load i64, i64* %new_vec, align 8
  call void @XSETCDR(i64 %138, i64 %139)
  %140 = load i64, i64* %new_vec, align 8
  store i64 %140, i64* %vec, align 8
  br label %found

if.end.240:                                       ; preds = %for.end.185
  %141 = load i32, i32* %i, align 4
  %cmp241 = icmp sge i32 %141, 0
  br i1 %cmp241, label %if.then.243, label %if.end.244

if.then.243:                                      ; preds = %if.end.240
  %142 = load i32, i32* %found_index, align 4
  store i32 %142, i32* %i, align 4
  br label %if.end.244

if.end.244:                                       ; preds = %if.then.243, %if.end.240
  br label %for.inc.245

for.inc.245:                                      ; preds = %if.end.244, %if.then.201, %if.then.145, %if.then.136, %if.then.119, %if.then.105, %for.end.94
  %143 = load i32, i32* %i, align 4
  %inc246 = add nsw i32 %143, 1
  store i32 %inc246, i32* %i, align 4
  br label %for.cond.52

for.end.247:                                      ; preds = %for.cond.52
  %144 = load i64, i64* %fontset.addr, align 8
  %145 = load i32, i32* %c.addr, align 4
  %conv248 = sext i32 %145 to i64
  %shl249 = shl i64 %conv248, 2
  %add250 = add i64 %shl249, 2
  %call251 = call i64 @Fset_char_table_range(i64 %144, i64 %add250, i64 2)
  %call252 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call252, i64* %retval
  br label %return

found:                                            ; preds = %for.end.239, %if.then.180, %if.then.150
  %146 = load i8, i8* %fallback.addr, align 1
  %tobool253 = trunc i8 %146 to i1
  br i1 %tobool253, label %land.lhs.true.255, label %if.end.270

land.lhs.true.255:                                ; preds = %found
  %147 = load i32, i32* %found_index, align 4
  %cmp256 = icmp sgt i32 %147, 0
  br i1 %cmp256, label %if.then.258, label %if.end.270

if.then.258:                                      ; preds = %land.lhs.true.255
  %148 = load i32, i32* %found_index, align 4
  store i32 %148, i32* %i, align 4
  br label %for.cond.259

for.cond.259:                                     ; preds = %for.inc.267, %if.then.258
  %149 = load i32, i32* %i, align 4
  %cmp260 = icmp sgt i32 %149, 0
  br i1 %cmp260, label %for.body.262, label %for.end.269

for.body.262:                                     ; preds = %for.cond.259
  %150 = load i64, i64* %vec, align 8
  %151 = load i32, i32* %i, align 4
  %conv263 = sext i32 %151 to i64
  %152 = load i64, i64* %vec, align 8
  %153 = load i32, i32* %i, align 4
  %sub264 = sub nsw i32 %153, 1
  %conv265 = sext i32 %sub264 to i64
  %call266 = call i64 @AREF(i64 %152, i64 %conv265)
  call void @ASET(i64 %150, i64 %conv263, i64 %call266)
  br label %for.inc.267

for.inc.267:                                      ; preds = %for.body.262
  %154 = load i32, i32* %i, align 4
  %dec268 = add nsw i32 %154, -1
  store i32 %dec268, i32* %i, align 4
  br label %for.cond.259

for.end.269:                                      ; preds = %for.cond.259
  %155 = load i64, i64* %vec, align 8
  %156 = load i64, i64* %rfont_def, align 8
  call void @ASET(i64 %155, i64 0, i64 %156)
  br label %if.end.270

if.end.270:                                       ; preds = %for.end.269, %land.lhs.true.255, %found
  %157 = load i64, i64* %rfont_def, align 8
  store i64 %157, i64* %retval
  br label %return

return:                                           ; preds = %if.end.270, %for.end.247, %if.then.128, %if.end.106, %if.then.16, %if.then
  %158 = load i64, i64* %retval
  ret i64 %158
}

; Function Attrs: nounwind uwtable
define internal void @set_fontset_default(i64 %fontset, i64 %def) #0 {
entry:
  %fontset.addr = alloca i64, align 8
  %def.addr = alloca i64, align 8
  store i64 %fontset, i64* %fontset.addr, align 8
  store i64 %def, i64* %def.addr, align 8
  %0 = load i64, i64* %fontset.addr, align 8
  %1 = load i64, i64* %def.addr, align 8
  call void @set_char_table_extras(i64 %0, i64 6, i64 %1)
  ret void
}

declare zeroext i1 @FRAMEP(i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @fontset_get_font_group(i64 %fontset, i32 %c) #0 {
entry:
  %retval = alloca i64, align 8
  %fontset.addr = alloca i64, align 8
  %c.addr = alloca i32, align 4
  %font_group = alloca i64, align 8
  %base_fontset = alloca i64, align 8
  %from = alloca i32, align 4
  %to = alloca i32, align 4
  %i = alloca i32, align 4
  %rfont_def = alloca i64, align 8
  store i64 %fontset, i64* %fontset.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  store i32 0, i32* %from, align 4
  store i32 4194303, i32* %to, align 4
  %0 = load i32, i32* %c.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %fontset.addr, align 8
  %2 = load i32, i32* %c.addr, align 4
  %call = call i64 @CHAR_TABLE_REF(i64 %1, i32 %2)
  store i64 %call, i64* %font_group, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i64, i64* %fontset.addr, align 8
  %call1 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %3)
  %extras = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call1, i32 0, i32 6
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* %extras, i32 0, i64 7
  %4 = load i64, i64* %arrayidx, align 8
  store i64 %4, i64* %font_group, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i64, i64* %font_group, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp3 = icmp eq i64 %5, %call2
  br i1 %cmp3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %6 = load i64, i64* %font_group, align 8
  store i64 %6, i64* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %7 = load i64, i64* %fontset.addr, align 8
  %call6 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %7)
  %extras7 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call6, i32 0, i32 6
  %arrayidx8 = getelementptr inbounds [0 x i64], [0 x i64]* %extras7, i32 0, i64 3
  %8 = load i64, i64* %arrayidx8, align 8
  store i64 %8, i64* %base_fontset, align 8
  %9 = load i64, i64* %base_fontset, align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp10 = icmp eq i64 %9, %call9
  br i1 %cmp10, label %if.then.11, label %if.else.13

if.then.11:                                       ; preds = %if.end.5
  %call12 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call12, i64* %font_group, align 8
  br label %if.end.22

if.else.13:                                       ; preds = %if.end.5
  %10 = load i32, i32* %c.addr, align 4
  %cmp14 = icmp sge i32 %10, 0
  br i1 %cmp14, label %if.then.15, label %if.else.17

if.then.15:                                       ; preds = %if.else.13
  %11 = load i64, i64* %base_fontset, align 8
  %12 = load i32, i32* %c.addr, align 4
  %call16 = call i64 @char_table_ref_and_range(i64 %11, i32 %12, i32* %from, i32* %to)
  store i64 %call16, i64* %font_group, align 8
  br label %if.end.21

if.else.17:                                       ; preds = %if.else.13
  %13 = load i64, i64* %base_fontset, align 8
  %call18 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %13)
  %extras19 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call18, i32 0, i32 6
  %arrayidx20 = getelementptr inbounds [0 x i64], [0 x i64]* %extras19, i32 0, i64 7
  %14 = load i64, i64* %arrayidx20, align 8
  store i64 %14, i64* %font_group, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.17, %if.then.15
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.11
  %15 = load i64, i64* %font_group, align 8
  %call23 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp24 = icmp eq i64 %15, %call23
  br i1 %cmp24, label %if.then.25, label %if.end.29

if.then.25:                                       ; preds = %if.end.22
  store i64 2, i64* %font_group, align 8
  %16 = load i32, i32* %c.addr, align 4
  %cmp26 = icmp sge i32 %16, 0
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.then.25
  %17 = load i64, i64* %fontset.addr, align 8
  %18 = load i32, i32* %from, align 4
  %19 = load i32, i32* %to, align 4
  %20 = load i64, i64* %font_group, align 8
  call void @char_table_set_range(i64 %17, i32 %18, i32 %19, i64 %20)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.then.25
  %21 = load i64, i64* %font_group, align 8
  store i64 %21, i64* %retval
  br label %return

if.end.29:                                        ; preds = %if.end.22
  %22 = load i64, i64* %font_group, align 8
  %call30 = call zeroext i1 @VECTORP(i64 %22)
  br i1 %call30, label %if.end.32, label %if.then.31

if.then.31:                                       ; preds = %if.end.29
  %23 = load i64, i64* %font_group, align 8
  store i64 %23, i64* %retval
  br label %return

if.end.32:                                        ; preds = %if.end.29
  %24 = load i64, i64* %font_group, align 8
  %call33 = call i64 @Fcopy_sequence(i64 %24)
  store i64 %call33, i64* %font_group, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.32
  %25 = load i32, i32* %i, align 4
  %conv = sext i32 %25 to i64
  %26 = load i64, i64* %font_group, align 8
  %call34 = call i64 @ASIZE(i64 %26)
  %cmp35 = icmp slt i64 %conv, %call34
  br i1 %cmp35, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i64, i64* %font_group, align 8
  %28 = load i32, i32* %i, align 4
  %conv37 = sext i32 %28 to i64
  %call38 = call i64 @AREF(i64 %27, i64 %conv37)
  %call39 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp40 = icmp eq i64 %call38, %call39
  br i1 %cmp40, label %if.end.49, label %if.then.42

if.then.42:                                       ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %if.then.42
  %call43 = call i64 @builtin_lisp_symbol(i32 0)
  %call44 = call i64 @Fmake_vector(i64 18, i64 %call43)
  store i64 %call44, i64* %rfont_def, align 8
  %29 = load i64, i64* %rfont_def, align 8
  %30 = load i64, i64* %font_group, align 8
  %31 = load i32, i32* %i, align 4
  %conv45 = sext i32 %31 to i64
  %call46 = call i64 @AREF(i64 %30, i64 %conv45)
  call void @ASET(i64 %29, i64 1, i64 %call46)
  %32 = load i64, i64* %rfont_def, align 8
  call void @ASET(i64 %32, i64 3, i64 2)
  br label %do.end

do.end:                                           ; preds = %do.body
  %33 = load i64, i64* %rfont_def, align 8
  %34 = load i32, i32* %i, align 4
  %conv47 = sext i32 %34 to i64
  %shl = shl i64 %conv47, 2
  %add = add i64 %shl, 2
  call void @ASET(i64 %33, i64 3, i64 %add)
  %35 = load i64, i64* %font_group, align 8
  %36 = load i32, i32* %i, align 4
  %conv48 = sext i32 %36 to i64
  %37 = load i64, i64* %rfont_def, align 8
  call void @ASET(i64 %35, i64 %conv48, i64 %37)
  br label %if.end.49

if.end.49:                                        ; preds = %do.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.49
  %38 = load i32, i32* %i, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load i64, i64* %font_group, align 8
  %call50 = call i64 @Fcons(i64 -2, i64 %39)
  store i64 %call50, i64* %font_group, align 8
  %40 = load i32, i32* %c.addr, align 4
  %cmp51 = icmp sge i32 %40, 0
  br i1 %cmp51, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %for.end
  %41 = load i64, i64* %fontset.addr, align 8
  %42 = load i32, i32* %from, align 4
  %43 = load i32, i32* %to, align 4
  %44 = load i64, i64* %font_group, align 8
  call void @char_table_set_range(i64 %41, i32 %42, i32 %43, i64 %44)
  br label %if.end.55

if.else.54:                                       ; preds = %for.end
  %45 = load i64, i64* %fontset.addr, align 8
  %46 = load i64, i64* %font_group, align 8
  call void @set_fontset_fallback(i64 %45, i64 %46)
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.54, %if.then.53
  %47 = load i64, i64* %font_group, align 8
  store i64 %47, i64* %retval
  br label %return

return:                                           ; preds = %if.end.55, %if.then.31, %if.end.28, %if.then.4
  %48 = load i64, i64* %retval
  ret i64 %48
}

; Function Attrs: nounwind uwtable
define internal void @reorder_font_vector(i64 %font_group, %struct.font* %font) #0 {
entry:
  %font_group.addr = alloca i64, align 8
  %font.addr = alloca %struct.font*, align 8
  %vec = alloca i64, align 8
  %font_object = alloca i64, align 8
  %size = alloca i32, align 4
  %i = alloca i32, align 4
  %score_changed = alloca i8, align 1
  %rfont_def = alloca i64, align 8
  %font_def = alloca i64, align 8
  %font_spec = alloca i64, align 8
  %score = alloca i32, align 4
  %otf_spec = alloca i64, align 8
  %encoding = alloca i64, align 8
  %tail = alloca i64, align 8
  %lang = alloca i64, align 8
  %low_tick_bits = alloca i64, align 8
  store i64 %font_group, i64* %font_group.addr, align 8
  store %struct.font* %font, %struct.font** %font.addr, align 8
  store i8 0, i8* %score_changed, align 1
  %0 = load %struct.font*, %struct.font** %font.addr, align 8
  %tobool = icmp ne %struct.font* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.font*, %struct.font** %font.addr, align 8
  %2 = bitcast %struct.font* %1 to i8*
  %call = call i64 @make_lisp_ptr(i8* %2, i32 5)
  store i64 %call, i64* %font_object, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* %font_object, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i64, i64* %font_group.addr, align 8
  %sub = sub nsw i64 %3, 3
  %4 = inttoptr i64 %sub to i8*
  %5 = bitcast i8* %4 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %5, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %6 = load i64, i64* %cdr, align 8
  store i64 %6, i64* %vec, align 8
  %7 = load i64, i64* %vec, align 8
  %call2 = call i64 @ASIZE(i64 %7)
  %conv = trunc i64 %call2 to i32
  store i32 %conv, i32* %size, align 4
  %8 = load i64, i64* %vec, align 8
  %9 = load i32, i32* %size, align 4
  %sub3 = sub nsw i32 %9, 1
  %conv4 = sext i32 %sub3 to i64
  %call5 = call i64 @AREF(i64 %8, i64 %conv4)
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %call5, %call6
  br i1 %cmp, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %10 = load i32, i32* %size, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %size, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.85, %if.end.9
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %size, align 4
  %cmp10 = icmp slt i32 %11, %12
  br i1 %cmp10, label %for.body, label %for.end.86

for.body:                                         ; preds = %for.cond
  %13 = load i64, i64* %vec, align 8
  %14 = load i32, i32* %i, align 4
  %conv12 = sext i32 %14 to i64
  %call13 = call i64 @AREF(i64 %13, i64 %conv12)
  store i64 %call13, i64* %rfont_def, align 8
  %15 = load i64, i64* %rfont_def, align 8
  %call14 = call i64 @AREF(i64 %15, i64 1)
  store i64 %call14, i64* %font_def, align 8
  %16 = load i64, i64* %font_def, align 8
  %call15 = call i64 @AREF(i64 %16, i64 0)
  store i64 %call15, i64* %font_spec, align 8
  %17 = load i64, i64* %rfont_def, align 8
  %call16 = call i64 @AREF(i64 %17, i64 3)
  %shr = ashr i64 %call16, 2
  %and = and i64 %shr, 255
  %conv17 = trunc i64 %and to i32
  store i32 %conv17, i32* %score, align 4
  %18 = load i64, i64* %font_spec, align 8
  %call18 = call i64 @builtin_lisp_symbol(i32 89)
  %call19 = call i64 @Ffont_get(i64 %18, i64 %call18)
  store i64 %call19, i64* %otf_spec, align 8
  %19 = load i64, i64* %otf_spec, align 8
  %call20 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp21 = icmp eq i64 %19, %call20
  br i1 %cmp21, label %if.else.24, label %if.then.23

if.then.23:                                       ; preds = %for.body
  br label %if.end.75

if.else.24:                                       ; preds = %for.body
  %20 = load i64, i64* %font_spec, align 8
  %21 = load i64, i64* %font_object, align 8
  %call25 = call zeroext i1 @font_match_p(i64 %20, i64 %21)
  br i1 %call25, label %if.end.74, label %if.then.26

if.then.26:                                       ; preds = %if.else.24
  %22 = load i64, i64* %font_def, align 8
  %call27 = call i64 @AREF(i64 %22, i64 1)
  store i64 %call27, i64* %encoding, align 8
  %23 = load i64, i64* %encoding, align 8
  %call28 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp29 = icmp eq i64 %23, %call28
  br i1 %cmp29, label %if.else.54, label %if.then.31

if.then.31:                                       ; preds = %if.then.26
  %24 = load i64, i64* @Vcharset_ordered_list, align 8
  store i64 %24, i64* %tail, align 8
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc, %if.then.31
  %25 = load i64, i64* %tail, align 8
  %26 = load i64, i64* @Vcharset_non_preferred_head, align 8
  %cmp33 = icmp eq i64 %25, %26
  br i1 %cmp33, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %for.cond.32
  %27 = load i64, i64* %tail, align 8
  %and35 = and i64 %27, 7
  %conv36 = trunc i64 %and35 to i32
  %cmp37 = icmp eq i32 %conv36, 3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.32
  %28 = phi i1 [ false, %for.cond.32 ], [ %cmp37, %land.rhs ]
  br i1 %28, label %for.body.39, label %for.end

for.body.39:                                      ; preds = %land.end
  %29 = load i64, i64* %encoding, align 8
  %30 = load i64, i64* %tail, align 8
  %sub40 = sub nsw i64 %30, 3
  %31 = inttoptr i64 %sub40 to i8*
  %32 = bitcast i8* %31 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %32, i32 0, i32 0
  %33 = load i64, i64* %car, align 8
  %cmp41 = icmp eq i64 %29, %33
  br i1 %cmp41, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %for.body.39
  br label %for.end

if.else.44:                                       ; preds = %for.body.39
  %34 = load i32, i32* %score, align 4
  %conv45 = sext i32 %34 to i64
  %cmp46 = icmp sle i64 %conv45, 2147483391
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.else.44
  %35 = load i32, i32* %score, align 4
  %add = add nsw i32 %35, 256
  store i32 %add, i32* %score, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %if.else.44
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49
  br label %for.inc

for.inc:                                          ; preds = %if.end.50
  %36 = load i64, i64* %tail, align 8
  %sub51 = sub nsw i64 %36, 3
  %37 = inttoptr i64 %sub51 to i8*
  %38 = bitcast i8* %37 to %struct.Lisp_Cons*
  %u52 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %38, i32 0, i32 1
  %cdr53 = bitcast %union.anon* %u52 to i64*
  %39 = load i64, i64* %cdr53, align 8
  store i64 %39, i64* %tail, align 8
  br label %for.cond.32

for.end:                                          ; preds = %if.then.43, %land.end
  br label %if.end.73

if.else.54:                                       ; preds = %if.then.26
  %40 = load i64, i64* %font_spec, align 8
  %call55 = call i64 @builtin_lisp_symbol(i32 73)
  %call56 = call i64 @Ffont_get(i64 %40, i64 %call55)
  store i64 %call56, i64* %lang, align 8
  %41 = load i64, i64* %lang, align 8
  %call57 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp58 = icmp eq i64 %41, %call57
  br i1 %cmp58, label %if.end.72, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else.54
  %42 = load i64, i64* %lang, align 8
  %43 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 48), align 8
  %cmp60 = icmp eq i64 %42, %43
  br i1 %cmp60, label %if.end.72, label %land.lhs.true.62

land.lhs.true.62:                                 ; preds = %land.lhs.true
  %44 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 48), align 8
  %and63 = and i64 %44, 7
  %conv64 = trunc i64 %and63 to i32
  %cmp65 = icmp eq i32 %conv64, 3
  br i1 %cmp65, label %lor.lhs.false, label %if.then.71

lor.lhs.false:                                    ; preds = %land.lhs.true.62
  %45 = load i64, i64* %lang, align 8
  %46 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 48), align 8
  %call67 = call i64 @Fmemq(i64 %45, i64 %46)
  %call68 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp69 = icmp eq i64 %call67, %call68
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %lor.lhs.false, %land.lhs.true.62
  %47 = load i32, i32* %score, align 4
  %or = or i32 %47, 256
  store i32 %or, i32* %score, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.71, %lor.lhs.false, %land.lhs.true, %if.else.54
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %for.end
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.else.24
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.then.23
  %48 = load i64, i64* %rfont_def, align 8
  %call76 = call i64 @AREF(i64 %48, i64 3)
  %shr77 = ashr i64 %call76, 2
  %49 = load i32, i32* %score, align 4
  %conv78 = sext i32 %49 to i64
  %cmp79 = icmp ne i64 %shr77, %conv78
  br i1 %cmp79, label %if.then.81, label %if.end.84

if.then.81:                                       ; preds = %if.end.75
  %50 = load i64, i64* %rfont_def, align 8
  %51 = load i32, i32* %score, align 4
  %conv82 = sext i32 %51 to i64
  %shl = shl i64 %conv82, 2
  %add83 = add i64 %shl, 2
  call void @ASET(i64 %50, i64 3, i64 %add83)
  store i8 1, i8* %score_changed, align 1
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.81, %if.end.75
  br label %for.inc.85

for.inc.85:                                       ; preds = %if.end.84
  %52 = load i32, i32* %i, align 4
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.86:                                       ; preds = %for.cond
  %53 = load i8, i8* %score_changed, align 1
  %tobool87 = trunc i8 %53 to i1
  br i1 %tobool87, label %if.then.88, label %if.end.91

if.then.88:                                       ; preds = %for.end.86
  %54 = load i64, i64* %vec, align 8
  %call89 = call %struct.Lisp_Vector* @XVECTOR(i64 %54)
  %contents = getelementptr inbounds %struct.Lisp_Vector, %struct.Lisp_Vector* %call89, i32 0, i32 1
  %arraydecay = getelementptr inbounds [0 x i64], [0 x i64]* %contents, i32 0, i32 0
  %55 = bitcast i64* %arraydecay to i8*
  %56 = load i32, i32* %size, align 4
  %conv90 = sext i32 %56 to i64
  call void @qsort(i8* %55, i64 %conv90, i64 8, i32 (i8*, i8*)* @fontset_compare_rfontdef)
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.88, %for.end.86
  %57 = load i64, i64* @charset_ordered_list_tick, align 8
  %and92 = and i64 %57, 2305843009213693951
  store i64 %and92, i64* %low_tick_bits, align 8
  %58 = load i64, i64* %font_group.addr, align 8
  %59 = load i64, i64* %low_tick_bits, align 8
  %shl93 = shl i64 %59, 2
  %add94 = add i64 %shl93, 2
  call void @XSETCAR(i64 %58, i64 %add94)
  ret void
}

declare i64 @font_find_for_lface(%struct.frame*, i64*, i64, i32) #1

declare i64 @font_open_for_lface(%struct.frame*, i64, i64*, i64) #1

declare void @XSETCDR(i64, i64) #1

declare i64 @Ffont_get(i64, i64) #1

declare zeroext i1 @font_match_p(i64, i64) #1

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #1

declare %struct.Lisp_Vector* @XVECTOR(i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @fontset_compare_rfontdef(i8* %val1, i8* %val2) #0 {
entry:
  %val1.addr = alloca i8*, align 8
  %val2.addr = alloca i8*, align 8
  store i8* %val1, i8** %val1.addr, align 8
  store i8* %val2, i8** %val2.addr, align 8
  %0 = load i8*, i8** %val1.addr, align 8
  %1 = bitcast i8* %0 to i64*
  %2 = load i64, i64* %1, align 8
  %call = call i64 @AREF(i64 %2, i64 3)
  %shr = ashr i64 %call, 2
  %3 = load i8*, i8** %val2.addr, align 8
  %4 = bitcast i8* %3 to i64*
  %5 = load i64, i64* %4, align 8
  %call1 = call i64 @AREF(i64 %5, i64 3)
  %shr2 = ashr i64 %call1, 2
  %sub = sub nsw i64 %shr, %shr2
  %conv = trunc i64 %sub to i32
  ret i32 %conv
}

declare i64 @larger_vector(i64, i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @set_fontset_frame(i64 %fontset, i64 %frame) #0 {
entry:
  %fontset.addr = alloca i64, align 8
  %frame.addr = alloca i64, align 8
  store i64 %fontset, i64* %fontset.addr, align 8
  store i64 %frame, i64* %frame.addr, align 8
  %0 = load i64, i64* %fontset.addr, align 8
  %1 = load i64, i64* %frame.addr, align 8
  call void @set_char_table_extras(i64 %0, i64 4, i64 %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_fontset_base(i64 %fontset, i64 %base) #0 {
entry:
  %fontset.addr = alloca i64, align 8
  %base.addr = alloca i64, align 8
  store i64 %fontset, i64* %fontset.addr, align 8
  store i64 %base, i64* %base.addr, align 8
  %0 = load i64, i64* %fontset.addr, align 8
  %1 = load i64, i64* %base.addr, align 8
  call void @set_char_table_extras(i64 %0, i64 3, i64 %1)
  ret void
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #2

declare i8* @record_xmalloc(i64) #1

declare %struct.frame* @decode_live_frame(i64) #1

declare i64 @Fvconcat(i64, i64*) #1

declare i64 @Fclear_face_cache(i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { noreturn }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
