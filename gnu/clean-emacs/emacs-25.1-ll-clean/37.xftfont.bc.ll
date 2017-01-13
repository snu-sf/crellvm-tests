; ModuleID = './src/xftfont.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Lisp_Boolfwd = type { i32, i8* }
%struct.emacs_globals = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.font_driver = type { i64, i8, i64 (%struct.frame*)*, i64 (%struct.frame*, i64)*, i64 (%struct.frame*, i64)*, i64 (%struct.frame*)*, void (i64)*, i64 (%struct.frame*, i64, i32)*, void (%struct.font*)*, void (%struct.frame*, %struct.face*)*, void (%struct.frame*, %struct.face*)*, i32 (i64, i32)*, i32 (%struct.font*, i32)*, void (%struct.font*, i32*, i32, %struct.font_metrics*)*, i32 (%struct.glyph_string*, i32, i32, i32, i32, i1)*, i32 (%struct.font*, i32, %struct.font_bitmap*, i32)*, void (%struct.font*, %struct.font_bitmap*)*, i32 (%struct.font*, i32, i32, i32*, i32*)*, i64 (%struct.font*)*, i32 (%struct.font*, i64, i64, i32, i32, i64, i32, i1)*, i32 (%struct.frame*)*, i32 (%struct.frame*)*, i64 (i64)*, i32 (%struct.frame*, %struct.font*)*, i32 (%struct.font*, i32, i32*)*, void (i64, i64)*, i1 (%struct.frame*, i64, i64)*, i64 (%struct.font*)* }
%struct.frame = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.face_cache*, i32, %struct.glyph_pool*, %struct.glyph_pool*, %struct.glyph_matrix*, %struct.glyph_matrix*, i48, i32, i32, i32, i32, i8*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.terminal*, %union.output_data, %struct.font_driver_list*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x double], double, i32, i64, i64 }
%struct.vectorlike_header = type { i64 }
%struct.face_cache = type { %struct.face**, %struct.frame*, %struct.face**, i64, i32, i8 }
%struct.face = type { [19 x i64], i32, %struct._XGC*, i64, i64, i64, i64, i64, i64, i64, %struct.font*, i32, i32, i24, i32, %struct.face*, %struct.face*, %struct.face*, i8* }
%struct._XGC = type opaque
%struct.font = type { %struct.vectorlike_header, [17 x i64], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, %struct.font_driver* }
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
%struct.composition = type { i32, i16, i16, i16, i16, i16, i32, i32, i64, i8*, i16* }
%struct.input_event = type { i32, i32, i32, i64, i64, i64, i64, i64 }
%union.output_data = type { %struct.tty_output* }
%struct.tty_output = type opaque
%struct.font_driver_list = type { i8, %struct.font_driver*, %struct.font_driver_list* }
%struct.font_metrics = type { i16, i16, i16, i16, i16 }
%struct.font_bitmap = type { i32, i32, i32, i32, i8*, i32, i32, i32 }
%struct.charset = type { i32, i64, i32, [15 x i32], i8*, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [190 x i8], i32 }
%struct.Lisp_Cons = type { i64, %union.anon.10 }
%union.anon.10 = type { i64 }
%struct._FcPattern = type opaque
%struct.xftfont_info = type { %struct.font, %struct.FT_SizeRec_*, i32, %struct.FT_Matrix_, %struct._XDisplay*, %struct._XftFont*, i32 }
%struct.FT_SizeRec_ = type { %struct.FT_FaceRec_*, %struct.FT_Generic_, %struct.FT_Size_Metrics_, %struct.FT_Size_InternalRec_* }
%struct.FT_FaceRec_ = type { i64, i64, i64, i64, i64, i8*, i8*, i32, %struct.FT_Bitmap_Size_*, i32, %struct.FT_CharMapRec_**, %struct.FT_Generic_, %struct.FT_BBox_, i16, i16, i16, i16, i16, i16, i16, i16, %struct.FT_GlyphSlotRec_*, %struct.FT_SizeRec_*, %struct.FT_CharMapRec_*, %struct.FT_DriverRec_*, %struct.FT_MemoryRec_*, %struct.FT_StreamRec_*, %struct.FT_ListRec_, %struct.FT_Generic_, i8*, %struct.FT_Face_InternalRec_* }
%struct.FT_Bitmap_Size_ = type { i16, i16, i64, i64, i64 }
%struct.FT_BBox_ = type { i64, i64, i64, i64 }
%struct.FT_GlyphSlotRec_ = type { %struct.FT_LibraryRec_*, %struct.FT_FaceRec_*, %struct.FT_GlyphSlotRec_*, i32, %struct.FT_Generic_, %struct.FT_Glyph_Metrics_, i64, i64, %struct.FT_Vector_, i32, %struct.FT_Bitmap_, i32, i32, %struct.FT_Outline_, i32, %struct.FT_SubGlyphRec_*, i8*, i64, i64, i64, i8*, %struct.FT_Slot_InternalRec_* }
%struct.FT_LibraryRec_ = type opaque
%struct.FT_Glyph_Metrics_ = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.FT_Vector_ = type { i64, i64 }
%struct.FT_Bitmap_ = type { i32, i32, i32, i8*, i16, i8, i8, i8* }
%struct.FT_Outline_ = type { i16, i16, %struct.FT_Vector_*, i8*, i16*, i32 }
%struct.FT_SubGlyphRec_ = type opaque
%struct.FT_Slot_InternalRec_ = type opaque
%struct.FT_CharMapRec_ = type { %struct.FT_FaceRec_*, i32, i16, i16 }
%struct.FT_DriverRec_ = type opaque
%struct.FT_MemoryRec_ = type { i8*, i8* (%struct.FT_MemoryRec_*, i64)*, void (%struct.FT_MemoryRec_*, i8*)*, i8* (%struct.FT_MemoryRec_*, i64, i64, i8*)* }
%struct.FT_StreamRec_ = type { i8*, i64, i64, %union.FT_StreamDesc_, %union.FT_StreamDesc_, i64 (%struct.FT_StreamRec_*, i64, i8*, i64)*, void (%struct.FT_StreamRec_*)*, %struct.FT_MemoryRec_*, i8*, i8* }
%union.FT_StreamDesc_ = type { i64 }
%struct.FT_ListRec_ = type { %struct.FT_ListNodeRec_*, %struct.FT_ListNodeRec_* }
%struct.FT_ListNodeRec_ = type { %struct.FT_ListNodeRec_*, %struct.FT_ListNodeRec_*, i8* }
%struct.FT_Face_InternalRec_ = type opaque
%struct.FT_Generic_ = type { i8*, void (i8*)* }
%struct.FT_Size_Metrics_ = type { i16, i16, i64, i64, i64, i64, i64, i64 }
%struct.FT_Size_InternalRec_ = type opaque
%struct.FT_Matrix_ = type { i64, i64, i64, i64 }
%struct._XftFont = type { i32, i32, i32, i32, %struct._FcCharSet*, %struct._FcPattern* }
%struct._FcCharSet = type opaque
%struct._XGlyphInfo = type { i16, i16, i16, i16, i16, i16 }
%struct._FcMatrix = type { double, double, double, double }
%struct.BDF_PropertyRec_ = type { i32, %union.anon.11 }
%union.anon.11 = type { i8* }
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
%struct.xftface_info = type { %struct._XftColor, %struct._XftColor }
%struct._XftColor = type { i64, %struct.XRenderColor }
%struct.XRenderColor = type { i16, i16, i16, i16 }
%struct.Lisp_Hash_Table = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.hash_table_test, %struct.Lisp_Hash_Table* }
%struct.hash_table_test = type { i64, i64, i64, i1 (%struct.hash_table_test*, i64, i64)*, i64 (%struct.hash_table_test*, i64)* }
%struct._XftDraw = type opaque
%struct._XRegion = type opaque
%struct.anon.4 = type { i32 }
%struct.anon.0 = type { i16, i16, i16, i16 }
%struct.XGCValues = type { i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i64, i32, i32, i32, i32, i64, i32, i8 }

@syms_of_xftfont.b_fwd = internal global %struct.Lisp_Boolfwd zeroinitializer, align 8
@.str = private unnamed_addr constant [33 x i8] c"xft-font-ascent-descent-override\00", align 1
@globals = external global %struct.emacs_globals, align 8
@ascii_printable = internal global [95 x i8] zeroinitializer, align 16
@xftfont_driver = common global %struct.font_driver zeroinitializer, align 8
@ftfont_driver = external global %struct.font_driver, align 8
@xfont_driver = external global %struct.font_driver, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"weight\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"slant\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"pixelsize\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"family\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"foundry\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"spacing\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"dpi\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"scalable\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"charset\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"matrix\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"_MULE_BASELINE_OFFSET\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"_MULE_RELATIVE_COMPOSE\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"_MULE_DEFAULT_ASCENT\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"antialias\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"hinting\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"autohint\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"hintstyle\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"rgba\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"lcdfilter\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"embolden\00", align 1
@charset_jisx0208 = external global i32, align 4
@charset_table = external global %struct.charset*, align 8
@charset_ksc5601 = external global i32, align 4
@Vcharset_hash_table = external global i64, align 8
@charset_work = external global i64, align 8

; Function Attrs: nounwind uwtable
define void @syms_of_xftfont() #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %entry
  call void @defvar_bool(%struct.Lisp_Boolfwd* @syms_of_xftfont.b_fwd, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 510))
  br label %do.end

do.end:                                           ; preds = %do.body
  store i8 0, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 510), align 1
  store i8 0, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @ascii_printable, i32 0, i64 0), align 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.font_driver* @xftfont_driver to i8*), i8* bitcast (%struct.font_driver* @ftfont_driver to i8*), i64 224, i32 8, i1 false)
  %call = call i64 @builtin_lisp_symbol(i32 1063)
  store i64 %call, i64* getelementptr inbounds (%struct.font_driver, %struct.font_driver* @xftfont_driver, i32 0, i32 0), align 8
  %0 = load i64 (%struct.frame*)*, i64 (%struct.frame*)** getelementptr inbounds (%struct.font_driver, %struct.font_driver* @xfont_driver, i32 0, i32 2), align 8
  store i64 (%struct.frame*)* %0, i64 (%struct.frame*)** getelementptr inbounds (%struct.font_driver, %struct.font_driver* @xftfont_driver, i32 0, i32 2), align 8
  store i64 (%struct.frame*, i64)* @xftfont_list, i64 (%struct.frame*, i64)** getelementptr inbounds (%struct.font_driver, %struct.font_driver* @xftfont_driver, i32 0, i32 3), align 8
  store i64 (%struct.frame*, i64)* @xftfont_match, i64 (%struct.frame*, i64)** getelementptr inbounds (%struct.font_driver, %struct.font_driver* @xftfont_driver, i32 0, i32 4), align 8
  store i64 (%struct.frame*, i64, i32)* @xftfont_open, i64 (%struct.frame*, i64, i32)** getelementptr inbounds (%struct.font_driver, %struct.font_driver* @xftfont_driver, i32 0, i32 7), align 8
  store void (%struct.font*)* @xftfont_close, void (%struct.font*)** getelementptr inbounds (%struct.font_driver, %struct.font_driver* @xftfont_driver, i32 0, i32 8), align 8
  store void (%struct.frame*, %struct.face*)* @xftfont_prepare_face, void (%struct.frame*, %struct.face*)** getelementptr inbounds (%struct.font_driver, %struct.font_driver* @xftfont_driver, i32 0, i32 9), align 8
  store void (%struct.frame*, %struct.face*)* @xftfont_done_face, void (%struct.frame*, %struct.face*)** getelementptr inbounds (%struct.font_driver, %struct.font_driver* @xftfont_driver, i32 0, i32 10), align 8
  store i32 (i64, i32)* @xftfont_has_char, i32 (i64, i32)** getelementptr inbounds (%struct.font_driver, %struct.font_driver* @xftfont_driver, i32 0, i32 11), align 8
  store i32 (%struct.font*, i32)* @xftfont_encode_char, i32 (%struct.font*, i32)** getelementptr inbounds (%struct.font_driver, %struct.font_driver* @xftfont_driver, i32 0, i32 12), align 8
  store void (%struct.font*, i32*, i32, %struct.font_metrics*)* @xftfont_text_extents, void (%struct.font*, i32*, i32, %struct.font_metrics*)** getelementptr inbounds (%struct.font_driver, %struct.font_driver* @xftfont_driver, i32 0, i32 13), align 8
  store i32 (%struct.glyph_string*, i32, i32, i32, i32, i1)* @xftfont_draw, i32 (%struct.glyph_string*, i32, i32, i32, i32, i1)** getelementptr inbounds (%struct.font_driver, %struct.font_driver* @xftfont_driver, i32 0, i32 14), align 8
  store i32 (%struct.frame*)* @xftfont_end_for_frame, i32 (%struct.frame*)** getelementptr inbounds (%struct.font_driver, %struct.font_driver* @xftfont_driver, i32 0, i32 21), align 8
  store i1 (%struct.frame*, i64, i64)* @xftfont_cached_font_ok, i1 (%struct.frame*, i64, i64)** getelementptr inbounds (%struct.font_driver, %struct.font_driver* @xftfont_driver, i32 0, i32 26), align 8
  call void @register_font_driver(%struct.font_driver* @xftfont_driver, %struct.frame* null)
  ret void
}

declare void @defvar_bool(%struct.Lisp_Boolfwd*, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i64 @builtin_lisp_symbol(i32) #1

; Function Attrs: nounwind uwtable
define internal i64 @xftfont_list(%struct.frame* %f, i64 %spec) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %spec.addr = alloca i64, align 8
  %list = alloca i64, align 8
  %tail = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %spec, i64* %spec.addr, align 8
  %0 = load i64 (%struct.frame*, i64)*, i64 (%struct.frame*, i64)** getelementptr inbounds (%struct.font_driver, %struct.font_driver* @ftfont_driver, i32 0, i32 3), align 8
  %1 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %2 = load i64, i64* %spec.addr, align 8
  %call = call i64 %0(%struct.frame* %1, i64 %2)
  store i64 %call, i64* %list, align 8
  %3 = load i64, i64* %list, align 8
  store i64 %3, i64* %tail, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i64, i64* %tail, align 8
  %and = and i64 %4, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i64, i64* %tail, align 8
  %sub = sub nsw i64 %5, 3
  %6 = inttoptr i64 %sub to i8*
  %7 = bitcast i8* %6 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %7, i32 0, i32 0
  %8 = load i64, i64* %car, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 1063)
  call void @ASET(i64 %8, i64 0, i64 %call2)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i64, i64* %tail, align 8
  %sub3 = sub nsw i64 %9, 3
  %10 = inttoptr i64 %sub3 to i8*
  %11 = bitcast i8* %10 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %11, i32 0, i32 1
  %cdr = bitcast %union.anon.10* %u to i64*
  %12 = load i64, i64* %cdr, align 8
  store i64 %12, i64* %tail, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i64, i64* %list, align 8
  ret i64 %13
}

; Function Attrs: nounwind uwtable
define internal i64 @xftfont_match(%struct.frame* %f, i64 %spec) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %spec.addr = alloca i64, align 8
  %entity = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %spec, i64* %spec.addr, align 8
  %0 = load i64 (%struct.frame*, i64)*, i64 (%struct.frame*, i64)** getelementptr inbounds (%struct.font_driver, %struct.font_driver* @ftfont_driver, i32 0, i32 4), align 8
  %1 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %2 = load i64, i64* %spec.addr, align 8
  %call = call i64 %0(%struct.frame* %1, i64 %2)
  store i64 %call, i64* %entity, align 8
  %3 = load i64, i64* %entity, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %3, %call1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load i64, i64* %entity, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 1063)
  call void @ASET(i64 %4, i64 0, i64 %call2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, i64* %entity, align 8
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define internal i64 @xftfont_open(%struct.frame* %f, i64 %entity, i32 %pixel_size) #0 {
entry:
  %retval = alloca i64, align 8
  %f.addr = alloca %struct.frame*, align 8
  %entity.addr = alloca i64, align 8
  %pixel_size.addr = alloca i32, align 4
  %result = alloca i32, align 4
  %display = alloca %struct._XDisplay*, align 8
  %val = alloca i64, align 8
  %filename = alloca i64, align 8
  %idx = alloca i64, align 8
  %font_object = alloca i64, align 8
  %pat = alloca %struct._FcPattern*, align 8
  %match = alloca %struct._FcPattern*, align 8
  %xftfont_info = alloca %struct.xftfont_info*, align 8
  %font = alloca %struct.font*, align 8
  %size = alloca double, align 8
  %xftfont = alloca %struct._XftFont*, align 8
  %spacing = alloca i32, align 4
  %i = alloca i32, align 4
  %extents = alloca %struct._XGlyphInfo, align 2
  %ft_face = alloca %struct.FT_FaceRec_*, align 8
  %matrix = alloca %struct._FcMatrix*, align 8
  %dbl = alloca double, align 8
  %ch = alloca i32, align 4
  %upEM = alloca i32, align 4
  %rec = alloca %struct.BDF_PropertyRec_, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %entity, i64* %entity.addr, align 8
  store i32 %pixel_size, i32* %pixel_size.addr, align 4
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %1 = load %struct.x_output*, %struct.x_output** %x, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %1, i32 0, i32 44
  %2 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %display1 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %2, i32 0, i32 2
  %3 = load %struct._XDisplay*, %struct._XDisplay** %display1, align 8
  store %struct._XDisplay* %3, %struct._XDisplay** %display, align 8
  store %struct._FcPattern* null, %struct._FcPattern** %pat, align 8
  store %struct.xftfont_info* null, %struct.xftfont_info** %xftfont_info, align 8
  store double 0.000000e+00, double* %size, align 8
  store %struct._XftFont* null, %struct._XftFont** %xftfont, align 8
  %call = call i64 @builtin_lisp_symbol(i32 45)
  %4 = load i64, i64* %entity.addr, align 8
  %call2 = call i64 @AREF(i64 %4, i64 12)
  %call3 = call i64 @assq_no_quit(i64 %call, i64 %call2)
  store i64 %call3, i64* %val, align 8
  %5 = load i64, i64* %val, align 8
  %and = and i64 %5, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call5, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i64, i64* %val, align 8
  %sub = sub nsw i64 %6, 3
  %7 = inttoptr i64 %sub to i8*
  %8 = bitcast i8* %7 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %8, i32 0, i32 1
  %cdr = bitcast %union.anon.10* %u to i64*
  %9 = load i64, i64* %cdr, align 8
  store i64 %9, i64* %val, align 8
  %10 = load i64, i64* %val, align 8
  %sub6 = sub nsw i64 %10, 3
  %11 = inttoptr i64 %sub6 to i8*
  %12 = bitcast i8* %11 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %12, i32 0, i32 0
  %13 = load i64, i64* %car, align 8
  store i64 %13, i64* %filename, align 8
  %14 = load i64, i64* %val, align 8
  %sub7 = sub nsw i64 %14, 3
  %15 = inttoptr i64 %sub7 to i8*
  %16 = bitcast i8* %15 to %struct.Lisp_Cons*
  %u8 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %16, i32 0, i32 1
  %cdr9 = bitcast %union.anon.10* %u8 to i64*
  %17 = load i64, i64* %cdr9, align 8
  store i64 %17, i64* %idx, align 8
  %18 = load i64, i64* %entity.addr, align 8
  %call10 = call i64 @AREF(i64 %18, i64 8)
  %shr = ashr i64 %call10, 2
  %conv11 = sitofp i64 %shr to double
  store double %conv11, double* %size, align 8
  %19 = load double, double* %size, align 8
  %cmp12 = fcmp oeq double %19, 0.000000e+00
  br i1 %cmp12, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end
  %20 = load i32, i32* %pixel_size.addr, align 4
  %conv15 = sitofp i32 %20 to double
  store double %conv15, double* %size, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end
  %call17 = call %struct._FcPattern* @FcPatternCreate()
  store %struct._FcPattern* %call17, %struct._FcPattern** %pat, align 8
  %21 = load %struct._FcPattern*, %struct._FcPattern** %pat, align 8
  %22 = load i64, i64* %entity.addr, align 8
  %call18 = call i64 @AREF(i64 %22, i64 5)
  %and19 = and i64 %call18, 7
  %conv20 = trunc i64 %and19 to i32
  %and21 = and i32 %conv20, -5
  %cmp22 = icmp eq i32 %and21, 2
  br i1 %cmp22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.16
  %23 = load i64, i64* %entity.addr, align 8
  %call24 = call i64 @AREF(i64 %23, i64 5)
  %shr25 = ashr i64 %call24, 2
  %shr26 = ashr i64 %shr25, 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %shr26, %cond.true ], [ -1, %cond.false ]
  %conv27 = trunc i64 %cond to i32
  %call28 = call i32 @FcPatternAddInteger(%struct._FcPattern* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 %conv27)
  %24 = load i64, i64* %entity.addr, align 8
  %call29 = call i64 @AREF(i64 %24, i64 6)
  %and30 = and i64 %call29, 7
  %conv31 = trunc i64 %and30 to i32
  %and32 = and i32 %conv31, -5
  %cmp33 = icmp eq i32 %and32, 2
  br i1 %cmp33, label %cond.true.35, label %cond.false.39

cond.true.35:                                     ; preds = %cond.end
  %25 = load i64, i64* %entity.addr, align 8
  %call36 = call i64 @AREF(i64 %25, i64 6)
  %shr37 = ashr i64 %call36, 2
  %shr38 = ashr i64 %shr37, 8
  br label %cond.end.40

cond.false.39:                                    ; preds = %cond.end
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.39, %cond.true.35
  %cond41 = phi i64 [ %shr38, %cond.true.35 ], [ -1, %cond.false.39 ]
  %sub42 = sub nsw i64 %cond41, 100
  %conv43 = trunc i64 %sub42 to i32
  store i32 %conv43, i32* %i, align 4
  %26 = load i32, i32* %i, align 4
  %cmp44 = icmp slt i32 %26, 0
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %cond.end.40
  store i32 0, i32* %i, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %cond.end.40
  %27 = load %struct._FcPattern*, %struct._FcPattern** %pat, align 8
  %28 = load i32, i32* %i, align 4
  %call48 = call i32 @FcPatternAddInteger(%struct._FcPattern* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 %28)
  %29 = load %struct._FcPattern*, %struct._FcPattern** %pat, align 8
  %30 = load i64, i64* %entity.addr, align 8
  %call49 = call i64 @AREF(i64 %30, i64 7)
  %and50 = and i64 %call49, 7
  %conv51 = trunc i64 %and50 to i32
  %and52 = and i32 %conv51, -5
  %cmp53 = icmp eq i32 %and52, 2
  br i1 %cmp53, label %cond.true.55, label %cond.false.59

cond.true.55:                                     ; preds = %if.end.47
  %31 = load i64, i64* %entity.addr, align 8
  %call56 = call i64 @AREF(i64 %31, i64 7)
  %shr57 = ashr i64 %call56, 2
  %shr58 = ashr i64 %shr57, 8
  br label %cond.end.60

cond.false.59:                                    ; preds = %if.end.47
  br label %cond.end.60

cond.end.60:                                      ; preds = %cond.false.59, %cond.true.55
  %cond61 = phi i64 [ %shr58, %cond.true.55 ], [ -1, %cond.false.59 ]
  %conv62 = trunc i64 %cond61 to i32
  %call63 = call i32 @FcPatternAddInteger(%struct._FcPattern* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i32 %conv62)
  %32 = load %struct._FcPattern*, %struct._FcPattern** %pat, align 8
  %33 = load i32, i32* %pixel_size.addr, align 4
  %conv64 = sitofp i32 %33 to double
  %call65 = call i32 @FcPatternAddDouble(%struct._FcPattern* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), double %conv64)
  %34 = load i64, i64* %entity.addr, align 8
  %call66 = call i64 @AREF(i64 %34, i64 2)
  store i64 %call66, i64* %val, align 8
  %35 = load i64, i64* %val, align 8
  %call67 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp68 = icmp eq i64 %35, %call67
  br i1 %cmp68, label %if.end.74, label %if.then.70

if.then.70:                                       ; preds = %cond.end.60
  %36 = load %struct._FcPattern*, %struct._FcPattern** %pat, align 8
  %37 = load i64, i64* %val, align 8
  %call71 = call i64 @SYMBOL_NAME(i64 %37)
  %call72 = call i8* @SDATA(i64 %call71)
  %call73 = call i32 @FcPatternAddString(%struct._FcPattern* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* %call72)
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.70, %cond.end.60
  %38 = load i64, i64* %entity.addr, align 8
  %call75 = call i64 @AREF(i64 %38, i64 1)
  store i64 %call75, i64* %val, align 8
  %39 = load i64, i64* %val, align 8
  %call76 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp77 = icmp eq i64 %39, %call76
  br i1 %cmp77, label %if.end.83, label %if.then.79

if.then.79:                                       ; preds = %if.end.74
  %40 = load %struct._FcPattern*, %struct._FcPattern** %pat, align 8
  %41 = load i64, i64* %val, align 8
  %call80 = call i64 @SYMBOL_NAME(i64 %41)
  %call81 = call i8* @SDATA(i64 %call80)
  %call82 = call i32 @FcPatternAddString(%struct._FcPattern* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* %call81)
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.79, %if.end.74
  %42 = load i64, i64* %entity.addr, align 8
  %call84 = call i64 @AREF(i64 %42, i64 10)
  store i64 %call84, i64* %val, align 8
  %43 = load i64, i64* %val, align 8
  %call85 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp86 = icmp eq i64 %43, %call85
  br i1 %cmp86, label %if.end.92, label %if.then.88

if.then.88:                                       ; preds = %if.end.83
  %44 = load %struct._FcPattern*, %struct._FcPattern** %pat, align 8
  %45 = load i64, i64* %val, align 8
  %shr89 = ashr i64 %45, 2
  %conv90 = trunc i64 %shr89 to i32
  %call91 = call i32 @FcPatternAddInteger(%struct._FcPattern* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32 %conv90)
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.88, %if.end.83
  %46 = load i64, i64* %entity.addr, align 8
  %call93 = call i64 @AREF(i64 %46, i64 9)
  store i64 %call93, i64* %val, align 8
  %47 = load i64, i64* %val, align 8
  %call94 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp95 = icmp eq i64 %47, %call94
  br i1 %cmp95, label %if.end.101, label %if.then.97

if.then.97:                                       ; preds = %if.end.92
  %48 = load i64, i64* %val, align 8
  %shr98 = ashr i64 %48, 2
  %conv99 = sitofp i64 %shr98 to double
  store double %conv99, double* %dbl, align 8
  %49 = load %struct._FcPattern*, %struct._FcPattern** %pat, align 8
  %50 = load double, double* %dbl, align 8
  %call100 = call i32 @FcPatternAddDouble(%struct._FcPattern* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), double %50)
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.97, %if.end.92
  %51 = load i64, i64* %entity.addr, align 8
  %call102 = call i64 @AREF(i64 %51, i64 11)
  store i64 %call102, i64* %val, align 8
  %52 = load i64, i64* %val, align 8
  %and103 = and i64 %52, 7
  %conv104 = trunc i64 %and103 to i32
  %and105 = and i32 %conv104, -5
  %cmp106 = icmp eq i32 %and105, 2
  br i1 %cmp106, label %land.lhs.true, label %if.end.113

land.lhs.true:                                    ; preds = %if.end.101
  %53 = load i64, i64* %val, align 8
  %shr108 = ashr i64 %53, 2
  %cmp109 = icmp eq i64 %shr108, 0
  br i1 %cmp109, label %if.then.111, label %if.end.113

if.then.111:                                      ; preds = %land.lhs.true
  %54 = load %struct._FcPattern*, %struct._FcPattern** %pat, align 8
  %call112 = call i32 @FcPatternAddBool(%struct._FcPattern* %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 1)
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.111, %land.lhs.true, %if.end.101
  %55 = load %struct._FcPattern*, %struct._FcPattern** %pat, align 8
  %56 = load i64, i64* %entity.addr, align 8
  %call114 = call %struct._FcCharSet* @ftfont_get_fc_charset(i64 %56)
  %call115 = call i32 @FcPatternAddCharSet(%struct._FcPattern* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), %struct._FcCharSet* %call114)
  %57 = load %struct._FcPattern*, %struct._FcPattern** %pat, align 8
  %58 = load i64, i64* %entity.addr, align 8
  call void @xftfont_add_rendering_parameters(%struct._FcPattern* %57, i64 %58)
  %59 = load %struct._FcPattern*, %struct._FcPattern** %pat, align 8
  %60 = load i64, i64* %filename, align 8
  %call116 = call i8* @SDATA(i64 %60)
  %call117 = call i32 @FcPatternAddString(%struct._FcPattern* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* %call116)
  %61 = load %struct._FcPattern*, %struct._FcPattern** %pat, align 8
  %62 = load i64, i64* %idx, align 8
  %shr118 = ashr i64 %62, 2
  %conv119 = trunc i64 %shr118 to i32
  %call120 = call i32 @FcPatternAddInteger(%struct._FcPattern* %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 %conv119)
  call void @block_input()
  %63 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %64 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data121 = getelementptr inbounds %struct.frame, %struct.frame* %64, i32 0, i32 62
  %x122 = bitcast %union.output_data* %output_data121 to %struct.x_output**
  %65 = load %struct.x_output*, %struct.x_output** %x122, align 8
  %display_info123 = getelementptr inbounds %struct.x_output, %struct.x_output* %65, i32 0, i32 44
  %66 = load %struct.x_display_info*, %struct.x_display_info** %display_info123, align 8
  %screen = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %66, i32 0, i32 6
  %67 = load %struct.Screen*, %struct.Screen** %screen, align 8
  %call124 = call i32 @XScreenNumberOfScreen(%struct.Screen* %67)
  %68 = load %struct._FcPattern*, %struct._FcPattern** %pat, align 8
  call void @XftDefaultSubstitute(%struct._XDisplay* %63, i32 %call124, %struct._FcPattern* %68)
  %69 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %70 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data125 = getelementptr inbounds %struct.frame, %struct.frame* %70, i32 0, i32 62
  %x126 = bitcast %union.output_data* %output_data125 to %struct.x_output**
  %71 = load %struct.x_output*, %struct.x_output** %x126, align 8
  %display_info127 = getelementptr inbounds %struct.x_output, %struct.x_output* %71, i32 0, i32 44
  %72 = load %struct.x_display_info*, %struct.x_display_info** %display_info127, align 8
  %screen128 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %72, i32 0, i32 6
  %73 = load %struct.Screen*, %struct.Screen** %screen128, align 8
  %call129 = call i32 @XScreenNumberOfScreen(%struct.Screen* %73)
  %74 = load %struct._FcPattern*, %struct._FcPattern** %pat, align 8
  %call130 = call %struct._FcPattern* @XftFontMatch(%struct._XDisplay* %69, i32 %call129, %struct._FcPattern* %74, i32* %result)
  store %struct._FcPattern* %call130, %struct._FcPattern** %match, align 8
  %75 = load %struct._FcPattern*, %struct._FcPattern** %pat, align 8
  %76 = load %struct._FcPattern*, %struct._FcPattern** %match, align 8
  call void @xftfont_fix_match(%struct._FcPattern* %75, %struct._FcPattern* %76)
  %77 = load %struct._FcPattern*, %struct._FcPattern** %pat, align 8
  call void @FcPatternDestroy(%struct._FcPattern* %77)
  %78 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %79 = load %struct._FcPattern*, %struct._FcPattern** %match, align 8
  %call131 = call %struct._XftFont* @XftFontOpenPattern(%struct._XDisplay* %78, %struct._FcPattern* %79)
  store %struct._XftFont* %call131, %struct._XftFont** %xftfont, align 8
  %80 = load %struct._XftFont*, %struct._XftFont** %xftfont, align 8
  %tobool = icmp ne %struct._XftFont* %80, null
  br i1 %tobool, label %if.end.134, label %if.then.132

if.then.132:                                      ; preds = %if.end.113
  call void @unblock_input()
  %81 = load %struct._FcPattern*, %struct._FcPattern** %match, align 8
  call void @FcPatternDestroy(%struct._FcPattern* %81)
  %call133 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call133, i64* %retval
  br label %return

if.end.134:                                       ; preds = %if.end.113
  %82 = load %struct._XftFont*, %struct._XftFont** %xftfont, align 8
  %call135 = call %struct.FT_FaceRec_* @XftLockFace(%struct._XftFont* %82)
  store %struct.FT_FaceRec_* %call135, %struct.FT_FaceRec_** %ft_face, align 8
  call void @unblock_input()
  %call136 = call i64 @builtin_lisp_symbol(i32 1063)
  %83 = load i64, i64* %entity.addr, align 8
  %84 = load double, double* %size, align 8
  %call137 = call i64 @font_build_object(i32 35, i64 %call136, i64 %83, double %84)
  store i64 %call137, i64* %font_object, align 8
  %85 = load i64, i64* %font_object, align 8
  %86 = load i64, i64* %filename, align 8
  call void @ASET(i64 %85, i64 16, i64 %86)
  %87 = load i64, i64* %font_object, align 8
  %call138 = call %struct.font* @XFONT_OBJECT(i64 %87)
  store %struct.font* %call138, %struct.font** %font, align 8
  %88 = load double, double* %size, align 8
  %conv139 = fptosi double %88 to i32
  %89 = load %struct.font*, %struct.font** %font, align 8
  %pixel_size140 = getelementptr inbounds %struct.font, %struct.font* %89, i32 0, i32 4
  store i32 %conv139, i32* %pixel_size140, align 4
  %90 = load %struct.font*, %struct.font** %font, align 8
  %driver = getelementptr inbounds %struct.font, %struct.font* %90, i32 0, i32 18
  store %struct.font_driver* @xftfont_driver, %struct.font_driver** %driver, align 8
  %91 = load %struct.font*, %struct.font** %font, align 8
  %repertory_charset = getelementptr inbounds %struct.font, %struct.font* %91, i32 0, i32 17
  store i32 -1, i32* %repertory_charset, align 4
  %92 = load %struct.font*, %struct.font** %font, align 8
  %encoding_charset = getelementptr inbounds %struct.font, %struct.font* %92, i32 0, i32 16
  store i32 -1, i32* %encoding_charset, align 4
  %93 = load %struct.font*, %struct.font** %font, align 8
  %94 = bitcast %struct.font* %93 to %struct.xftfont_info*
  store %struct.xftfont_info* %94, %struct.xftfont_info** %xftfont_info, align 8
  %95 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %96 = load %struct.xftfont_info*, %struct.xftfont_info** %xftfont_info, align 8
  %display141 = getelementptr inbounds %struct.xftfont_info, %struct.xftfont_info* %96, i32 0, i32 4
  store %struct._XDisplay* %95, %struct._XDisplay** %display141, align 8
  %97 = load %struct._XftFont*, %struct._XftFont** %xftfont, align 8
  %98 = load %struct.xftfont_info*, %struct.xftfont_info** %xftfont_info, align 8
  %xftfont142 = getelementptr inbounds %struct.xftfont_info, %struct.xftfont_info* %98, i32 0, i32 5
  store %struct._XftFont* %97, %struct._XftFont** %xftfont142, align 8
  %99 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data143 = getelementptr inbounds %struct.frame, %struct.frame* %99, i32 0, i32 62
  %x144 = bitcast %union.output_data* %output_data143 to %struct.x_output**
  %100 = load %struct.x_output*, %struct.x_output** %x144, align 8
  %display_info145 = getelementptr inbounds %struct.x_output, %struct.x_output* %100, i32 0, i32 44
  %101 = load %struct.x_display_info*, %struct.x_display_info** %display_info145, align 8
  %x_id = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %101, i32 0, i32 26
  %102 = load i32, i32* %x_id, align 4
  %103 = load %struct.xftfont_info*, %struct.xftfont_info** %xftfont_info, align 8
  %x_display_id = getelementptr inbounds %struct.xftfont_info, %struct.xftfont_info* %103, i32 0, i32 6
  store i32 %102, i32* %x_display_id, align 4
  %104 = load %struct.xftfont_info*, %struct.xftfont_info** %xftfont_info, align 8
  %matrix146 = getelementptr inbounds %struct.xftfont_info, %struct.xftfont_info* %104, i32 0, i32 3
  %xx = getelementptr inbounds %struct.FT_Matrix_, %struct.FT_Matrix_* %matrix146, i32 0, i32 0
  store i64 0, i64* %xx, align 8
  %105 = load %struct._XftFont*, %struct._XftFont** %xftfont, align 8
  %pattern = getelementptr inbounds %struct._XftFont, %struct._XftFont* %105, i32 0, i32 5
  %106 = load %struct._FcPattern*, %struct._FcPattern** %pattern, align 8
  %call147 = call i32 @FcPatternGetMatrix(%struct._FcPattern* %106, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i32 0, %struct._FcMatrix** %matrix)
  %cmp148 = icmp eq i32 %call147, 0
  br i1 %cmp148, label %if.then.150, label %if.end.167

if.then.150:                                      ; preds = %if.end.134
  %107 = load %struct._FcMatrix*, %struct._FcMatrix** %matrix, align 8
  %xx151 = getelementptr inbounds %struct._FcMatrix, %struct._FcMatrix* %107, i32 0, i32 0
  %108 = load double, double* %xx151, align 8
  %mul = fmul double 6.553600e+04, %108
  %conv152 = fptosi double %mul to i64
  %109 = load %struct.xftfont_info*, %struct.xftfont_info** %xftfont_info, align 8
  %matrix153 = getelementptr inbounds %struct.xftfont_info, %struct.xftfont_info* %109, i32 0, i32 3
  %xx154 = getelementptr inbounds %struct.FT_Matrix_, %struct.FT_Matrix_* %matrix153, i32 0, i32 0
  store i64 %conv152, i64* %xx154, align 8
  %110 = load %struct._FcMatrix*, %struct._FcMatrix** %matrix, align 8
  %yy = getelementptr inbounds %struct._FcMatrix, %struct._FcMatrix* %110, i32 0, i32 3
  %111 = load double, double* %yy, align 8
  %mul155 = fmul double 6.553600e+04, %111
  %conv156 = fptosi double %mul155 to i64
  %112 = load %struct.xftfont_info*, %struct.xftfont_info** %xftfont_info, align 8
  %matrix157 = getelementptr inbounds %struct.xftfont_info, %struct.xftfont_info* %112, i32 0, i32 3
  %yy158 = getelementptr inbounds %struct.FT_Matrix_, %struct.FT_Matrix_* %matrix157, i32 0, i32 3
  store i64 %conv156, i64* %yy158, align 8
  %113 = load %struct._FcMatrix*, %struct._FcMatrix** %matrix, align 8
  %xy = getelementptr inbounds %struct._FcMatrix, %struct._FcMatrix* %113, i32 0, i32 1
  %114 = load double, double* %xy, align 8
  %mul159 = fmul double 6.553600e+04, %114
  %conv160 = fptosi double %mul159 to i64
  %115 = load %struct.xftfont_info*, %struct.xftfont_info** %xftfont_info, align 8
  %matrix161 = getelementptr inbounds %struct.xftfont_info, %struct.xftfont_info* %115, i32 0, i32 3
  %xy162 = getelementptr inbounds %struct.FT_Matrix_, %struct.FT_Matrix_* %matrix161, i32 0, i32 1
  store i64 %conv160, i64* %xy162, align 8
  %116 = load %struct._FcMatrix*, %struct._FcMatrix** %matrix, align 8
  %yx = getelementptr inbounds %struct._FcMatrix, %struct._FcMatrix* %116, i32 0, i32 2
  %117 = load double, double* %yx, align 8
  %mul163 = fmul double 6.553600e+04, %117
  %conv164 = fptosi double %mul163 to i64
  %118 = load %struct.xftfont_info*, %struct.xftfont_info** %xftfont_info, align 8
  %matrix165 = getelementptr inbounds %struct.xftfont_info, %struct.xftfont_info* %118, i32 0, i32 3
  %yx166 = getelementptr inbounds %struct.FT_Matrix_, %struct.FT_Matrix_* %matrix165, i32 0, i32 2
  store i64 %conv164, i64* %yx166, align 8
  br label %if.end.167

if.end.167:                                       ; preds = %if.then.150, %if.end.134
  %119 = load i64, i64* %entity.addr, align 8
  %call168 = call i64 @AREF(i64 %119, i64 10)
  %and169 = and i64 %call168, 7
  %conv170 = trunc i64 %and169 to i32
  %and171 = and i32 %conv170, -5
  %cmp172 = icmp eq i32 %and171, 2
  br i1 %cmp172, label %if.then.174, label %if.else

if.then.174:                                      ; preds = %if.end.167
  %120 = load i64, i64* %entity.addr, align 8
  %call175 = call i64 @AREF(i64 %120, i64 10)
  %shr176 = ashr i64 %call175, 2
  %conv177 = trunc i64 %shr176 to i32
  store i32 %conv177, i32* %spacing, align 4
  br label %if.end.178

if.else:                                          ; preds = %if.end.167
  store i32 0, i32* %spacing, align 4
  br label %if.end.178

if.end.178:                                       ; preds = %if.else, %if.then.174
  %121 = load i8, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @ascii_printable, i32 0, i64 0), align 1
  %tobool179 = icmp ne i8 %121, 0
  br i1 %tobool179, label %if.end.184, label %if.then.180

if.then.180:                                      ; preds = %if.end.178
  store i32 0, i32* %ch, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.180
  %122 = load i32, i32* %ch, align 4
  %cmp181 = icmp slt i32 %122, 95
  br i1 %cmp181, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %123 = load i32, i32* %ch, align 4
  %add = add nsw i32 32, %123
  %conv183 = trunc i32 %add to i8
  %124 = load i32, i32* %ch, align 4
  %idxprom = sext i32 %124 to i64
  %arrayidx = getelementptr inbounds [95 x i8], [95 x i8]* @ascii_printable, i32 0, i64 %idxprom
  store i8 %conv183, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %125 = load i32, i32* %ch, align 4
  %inc = add nsw i32 %125, 1
  store i32 %inc, i32* %ch, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.184

if.end.184:                                       ; preds = %for.end, %if.end.178
  call void @block_input()
  %126 = load i32, i32* %spacing, align 4
  %cmp185 = icmp ne i32 %126, 0
  br i1 %cmp185, label %land.lhs.true.187, label %if.else.191

land.lhs.true.187:                                ; preds = %if.end.184
  %127 = load i32, i32* %spacing, align 4
  %cmp188 = icmp ne i32 %127, 90
  br i1 %cmp188, label %if.then.190, label %if.else.191

if.then.190:                                      ; preds = %land.lhs.true.187
  %128 = load %struct._XftFont*, %struct._XftFont** %xftfont, align 8
  %max_advance_width = getelementptr inbounds %struct._XftFont, %struct._XftFont* %128, i32 0, i32 3
  %129 = load i32, i32* %max_advance_width, align 4
  %130 = load %struct.font*, %struct.font** %font, align 8
  %space_width = getelementptr inbounds %struct.font, %struct.font* %130, i32 0, i32 6
  store i32 %129, i32* %space_width, align 4
  %131 = load %struct.font*, %struct.font** %font, align 8
  %average_width = getelementptr inbounds %struct.font, %struct.font* %131, i32 0, i32 7
  store i32 %129, i32* %average_width, align 4
  %132 = load %struct.font*, %struct.font** %font, align 8
  %max_width = getelementptr inbounds %struct.font, %struct.font* %132, i32 0, i32 3
  store i32 %129, i32* %max_width, align 4
  %133 = load %struct.font*, %struct.font** %font, align 8
  %min_width = getelementptr inbounds %struct.font, %struct.font* %133, i32 0, i32 2
  store i32 %129, i32* %min_width, align 4
  %134 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %135 = load %struct._XftFont*, %struct._XftFont** %xftfont, align 8
  call void @XftTextExtents8(%struct._XDisplay* %134, %struct._XftFont* %135, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @ascii_printable, i32 0, i64 1), i32 94, %struct._XGlyphInfo* %extents)
  br label %if.end.207

if.else.191:                                      ; preds = %land.lhs.true.187, %if.end.184
  %136 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %137 = load %struct._XftFont*, %struct._XftFont** %xftfont, align 8
  call void @XftTextExtents8(%struct._XDisplay* %136, %struct._XftFont* %137, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @ascii_printable, i32 0, i32 0), i32 1, %struct._XGlyphInfo* %extents)
  %xOff = getelementptr inbounds %struct._XGlyphInfo, %struct._XGlyphInfo* %extents, i32 0, i32 4
  %138 = load i16, i16* %xOff, align 2
  %conv192 = sext i16 %138 to i32
  %139 = load %struct.font*, %struct.font** %font, align 8
  %space_width193 = getelementptr inbounds %struct.font, %struct.font* %139, i32 0, i32 6
  store i32 %conv192, i32* %space_width193, align 4
  %140 = load %struct.font*, %struct.font** %font, align 8
  %max_width194 = getelementptr inbounds %struct.font, %struct.font* %140, i32 0, i32 3
  store i32 %conv192, i32* %max_width194, align 4
  %141 = load %struct.font*, %struct.font** %font, align 8
  %min_width195 = getelementptr inbounds %struct.font, %struct.font* %141, i32 0, i32 2
  store i32 %conv192, i32* %min_width195, align 4
  %142 = load %struct.font*, %struct.font** %font, align 8
  %space_width196 = getelementptr inbounds %struct.font, %struct.font* %142, i32 0, i32 6
  %143 = load i32, i32* %space_width196, align 4
  %cmp197 = icmp sle i32 %143, 0
  br i1 %cmp197, label %if.then.199, label %if.end.201

if.then.199:                                      ; preds = %if.else.191
  %144 = load i32, i32* %pixel_size.addr, align 4
  %145 = load %struct.font*, %struct.font** %font, align 8
  %space_width200 = getelementptr inbounds %struct.font, %struct.font* %145, i32 0, i32 6
  store i32 %144, i32* %space_width200, align 4
  br label %if.end.201

if.end.201:                                       ; preds = %if.then.199, %if.else.191
  %146 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %147 = load %struct._XftFont*, %struct._XftFont** %xftfont, align 8
  call void @XftTextExtents8(%struct._XDisplay* %146, %struct._XftFont* %147, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @ascii_printable, i32 0, i64 1), i32 94, %struct._XGlyphInfo* %extents)
  %148 = load %struct.font*, %struct.font** %font, align 8
  %space_width202 = getelementptr inbounds %struct.font, %struct.font* %148, i32 0, i32 6
  %149 = load i32, i32* %space_width202, align 4
  %xOff203 = getelementptr inbounds %struct._XGlyphInfo, %struct._XGlyphInfo* %extents, i32 0, i32 4
  %150 = load i16, i16* %xOff203, align 2
  %conv204 = sext i16 %150 to i32
  %add205 = add nsw i32 %149, %conv204
  %div = sdiv i32 %add205, 95
  %151 = load %struct.font*, %struct.font** %font, align 8
  %average_width206 = getelementptr inbounds %struct.font, %struct.font* %151, i32 0, i32 7
  store i32 %div, i32* %average_width206, align 4
  br label %if.end.207

if.end.207:                                       ; preds = %if.end.201, %if.then.190
  call void @unblock_input()
  %152 = load %struct._XftFont*, %struct._XftFont** %xftfont, align 8
  %ascent = getelementptr inbounds %struct._XftFont, %struct._XftFont* %152, i32 0, i32 0
  %153 = load i32, i32* %ascent, align 4
  %154 = load %struct.font*, %struct.font** %font, align 8
  %ascent208 = getelementptr inbounds %struct.font, %struct.font* %154, i32 0, i32 8
  store i32 %153, i32* %ascent208, align 4
  %155 = load %struct._XftFont*, %struct._XftFont** %xftfont, align 8
  %descent = getelementptr inbounds %struct._XftFont, %struct._XftFont* %155, i32 0, i32 1
  %156 = load i32, i32* %descent, align 4
  %157 = load %struct.font*, %struct.font** %font, align 8
  %descent209 = getelementptr inbounds %struct.font, %struct.font* %157, i32 0, i32 9
  store i32 %156, i32* %descent209, align 4
  %158 = load i32, i32* %pixel_size.addr, align 4
  %cmp210 = icmp sge i32 %158, 5
  br i1 %cmp210, label %land.lhs.true.212, label %if.end.240

land.lhs.true.212:                                ; preds = %if.end.207
  %159 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 510), align 1
  %tobool213 = trunc i8 %159 to i1
  br i1 %tobool213, label %if.then.215, label %if.end.240

if.then.215:                                      ; preds = %land.lhs.true.212
  %160 = load %struct.font*, %struct.font** %font, align 8
  %ascent216 = getelementptr inbounds %struct.font, %struct.font* %160, i32 0, i32 8
  %161 = load i32, i32* %ascent216, align 4
  %y = getelementptr inbounds %struct._XGlyphInfo, %struct._XGlyphInfo* %extents, i32 0, i32 3
  %162 = load i16, i16* %y, align 2
  %conv217 = sext i16 %162 to i32
  %cmp218 = icmp slt i32 %161, %conv217
  br i1 %cmp218, label %if.then.220, label %if.end.224

if.then.220:                                      ; preds = %if.then.215
  %y221 = getelementptr inbounds %struct._XGlyphInfo, %struct._XGlyphInfo* %extents, i32 0, i32 3
  %163 = load i16, i16* %y221, align 2
  %conv222 = sext i16 %163 to i32
  %164 = load %struct.font*, %struct.font** %font, align 8
  %ascent223 = getelementptr inbounds %struct.font, %struct.font* %164, i32 0, i32 8
  store i32 %conv222, i32* %ascent223, align 4
  br label %if.end.224

if.end.224:                                       ; preds = %if.then.220, %if.then.215
  %165 = load %struct.font*, %struct.font** %font, align 8
  %descent225 = getelementptr inbounds %struct.font, %struct.font* %165, i32 0, i32 9
  %166 = load i32, i32* %descent225, align 4
  %height = getelementptr inbounds %struct._XGlyphInfo, %struct._XGlyphInfo* %extents, i32 0, i32 1
  %167 = load i16, i16* %height, align 2
  %conv226 = zext i16 %167 to i32
  %y227 = getelementptr inbounds %struct._XGlyphInfo, %struct._XGlyphInfo* %extents, i32 0, i32 3
  %168 = load i16, i16* %y227, align 2
  %conv228 = sext i16 %168 to i32
  %sub229 = sub nsw i32 %conv226, %conv228
  %cmp230 = icmp slt i32 %166, %sub229
  br i1 %cmp230, label %if.then.232, label %if.end.239

if.then.232:                                      ; preds = %if.end.224
  %height233 = getelementptr inbounds %struct._XGlyphInfo, %struct._XGlyphInfo* %extents, i32 0, i32 1
  %169 = load i16, i16* %height233, align 2
  %conv234 = zext i16 %169 to i32
  %y235 = getelementptr inbounds %struct._XGlyphInfo, %struct._XGlyphInfo* %extents, i32 0, i32 3
  %170 = load i16, i16* %y235, align 2
  %conv236 = sext i16 %170 to i32
  %sub237 = sub nsw i32 %conv234, %conv236
  %171 = load %struct.font*, %struct.font** %font, align 8
  %descent238 = getelementptr inbounds %struct.font, %struct.font* %171, i32 0, i32 9
  store i32 %sub237, i32* %descent238, align 4
  br label %if.end.239

if.end.239:                                       ; preds = %if.then.232, %if.end.224
  br label %if.end.240

if.end.240:                                       ; preds = %if.end.239, %land.lhs.true.212, %if.end.207
  %172 = load %struct.font*, %struct.font** %font, align 8
  %ascent241 = getelementptr inbounds %struct.font, %struct.font* %172, i32 0, i32 8
  %173 = load i32, i32* %ascent241, align 4
  %174 = load %struct.font*, %struct.font** %font, align 8
  %descent242 = getelementptr inbounds %struct.font, %struct.font* %174, i32 0, i32 9
  %175 = load i32, i32* %descent242, align 4
  %add243 = add nsw i32 %173, %175
  %176 = load %struct.font*, %struct.font** %font, align 8
  %height244 = getelementptr inbounds %struct.font, %struct.font* %176, i32 0, i32 5
  store i32 %add243, i32* %height244, align 4
  %177 = load i64, i64* %entity.addr, align 8
  %call245 = call i64 @AREF(i64 %177, i64 8)
  %shr246 = ashr i64 %call245, 2
  %cmp247 = icmp eq i64 %shr246, 0
  br i1 %cmp247, label %if.then.249, label %if.else.275

if.then.249:                                      ; preds = %if.end.240
  %178 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8
  %units_per_EM = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %178, i32 0, i32 13
  %179 = load i16, i16* %units_per_EM, align 2
  %conv250 = zext i16 %179 to i32
  store i32 %conv250, i32* %upEM, align 4
  %180 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8
  %underline_position = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %180, i32 0, i32 19
  %181 = load i16, i16* %underline_position, align 2
  %conv251 = sext i16 %181 to i32
  %sub252 = sub nsw i32 0, %conv251
  %conv253 = sitofp i32 %sub252 to double
  %182 = load double, double* %size, align 8
  %mul254 = fmul double %conv253, %182
  %183 = load i32, i32* %upEM, align 4
  %conv255 = sitofp i32 %183 to double
  %div256 = fdiv double %mul254, %conv255
  %conv257 = fptosi double %div256 to i32
  %184 = load %struct.font*, %struct.font** %font, align 8
  %underline_position258 = getelementptr inbounds %struct.font, %struct.font* %184, i32 0, i32 11
  store i32 %conv257, i32* %underline_position258, align 4
  %185 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8
  %underline_thickness = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %185, i32 0, i32 20
  %186 = load i16, i16* %underline_thickness, align 2
  %conv259 = sext i16 %186 to i32
  %conv260 = sitofp i32 %conv259 to double
  %187 = load double, double* %size, align 8
  %mul261 = fmul double %conv260, %187
  %188 = load i32, i32* %upEM, align 4
  %conv262 = sitofp i32 %188 to double
  %div263 = fdiv double %mul261, %conv262
  %conv264 = fptosi double %div263 to i32
  %189 = load %struct.font*, %struct.font** %font, align 8
  %underline_thickness265 = getelementptr inbounds %struct.font, %struct.font* %189, i32 0, i32 10
  store i32 %conv264, i32* %underline_thickness265, align 4
  %190 = load %struct.font*, %struct.font** %font, align 8
  %underline_thickness266 = getelementptr inbounds %struct.font, %struct.font* %190, i32 0, i32 10
  %191 = load i32, i32* %underline_thickness266, align 4
  %cmp267 = icmp sgt i32 %191, 2
  br i1 %cmp267, label %if.then.269, label %if.end.274

if.then.269:                                      ; preds = %if.then.249
  %192 = load %struct.font*, %struct.font** %font, align 8
  %underline_thickness270 = getelementptr inbounds %struct.font, %struct.font* %192, i32 0, i32 10
  %193 = load i32, i32* %underline_thickness270, align 4
  %div271 = sdiv i32 %193, 2
  %194 = load %struct.font*, %struct.font** %font, align 8
  %underline_position272 = getelementptr inbounds %struct.font, %struct.font* %194, i32 0, i32 11
  %195 = load i32, i32* %underline_position272, align 4
  %sub273 = sub nsw i32 %195, %div271
  store i32 %sub273, i32* %underline_position272, align 4
  br label %if.end.274

if.end.274:                                       ; preds = %if.then.269, %if.then.249
  br label %if.end.278

if.else.275:                                      ; preds = %if.end.240
  %196 = load %struct.font*, %struct.font** %font, align 8
  %underline_position276 = getelementptr inbounds %struct.font, %struct.font* %196, i32 0, i32 11
  store i32 -1, i32* %underline_position276, align 4
  %197 = load %struct.font*, %struct.font** %font, align 8
  %underline_thickness277 = getelementptr inbounds %struct.font, %struct.font* %197, i32 0, i32 10
  store i32 0, i32* %underline_thickness277, align 4
  br label %if.end.278

if.end.278:                                       ; preds = %if.else.275, %if.end.274
  %198 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8
  %size279 = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %198, i32 0, i32 22
  %199 = load %struct.FT_SizeRec_*, %struct.FT_SizeRec_** %size279, align 8
  %200 = load %struct.xftfont_info*, %struct.xftfont_info** %xftfont_info, align 8
  %ft_size = getelementptr inbounds %struct.xftfont_info, %struct.xftfont_info* %200, i32 0, i32 1
  store %struct.FT_SizeRec_* %199, %struct.FT_SizeRec_** %ft_size, align 8
  %201 = load %struct.font*, %struct.font** %font, align 8
  %baseline_offset = getelementptr inbounds %struct.font, %struct.font* %201, i32 0, i32 13
  store i32 0, i32* %baseline_offset, align 4
  %202 = load %struct.font*, %struct.font** %font, align 8
  %relative_compose = getelementptr inbounds %struct.font, %struct.font* %202, i32 0, i32 14
  store i32 0, i32* %relative_compose, align 4
  %203 = load %struct.font*, %struct.font** %font, align 8
  %default_ascent = getelementptr inbounds %struct.font, %struct.font* %203, i32 0, i32 15
  store i32 0, i32* %default_ascent, align 4
  %204 = load %struct.font*, %struct.font** %font, align 8
  %vertical_centering = getelementptr inbounds %struct.font, %struct.font* %204, i32 0, i32 12
  store i8 0, i8* %vertical_centering, align 1
  %205 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8
  %face_flags = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %205, i32 0, i32 2
  %206 = load i64, i64* %face_flags, align 8
  %and280 = and i64 %206, 8
  %tobool281 = icmp ne i64 %and280, 0
  br i1 %tobool281, label %if.end.317, label %if.then.282

if.then.282:                                      ; preds = %if.end.278
  %207 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8
  %call283 = call i32 @FT_Get_BDF_Property(%struct.FT_FaceRec_* %207, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0), %struct.BDF_PropertyRec_* %rec)
  %cmp284 = icmp eq i32 %call283, 0
  br i1 %cmp284, label %land.lhs.true.286, label %if.end.292

land.lhs.true.286:                                ; preds = %if.then.282
  %type = getelementptr inbounds %struct.BDF_PropertyRec_, %struct.BDF_PropertyRec_* %rec, i32 0, i32 0
  %208 = load i32, i32* %type, align 4
  %cmp287 = icmp eq i32 %208, 2
  br i1 %cmp287, label %if.then.289, label %if.end.292

if.then.289:                                      ; preds = %land.lhs.true.286
  %u290 = getelementptr inbounds %struct.BDF_PropertyRec_, %struct.BDF_PropertyRec_* %rec, i32 0, i32 1
  %integer = bitcast %union.anon.11* %u290 to i32*
  %209 = load i32, i32* %integer, align 4
  %210 = load %struct.font*, %struct.font** %font, align 8
  %baseline_offset291 = getelementptr inbounds %struct.font, %struct.font* %210, i32 0, i32 13
  store i32 %209, i32* %baseline_offset291, align 4
  br label %if.end.292

if.end.292:                                       ; preds = %if.then.289, %land.lhs.true.286, %if.then.282
  %211 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8
  %call293 = call i32 @FT_Get_BDF_Property(%struct.FT_FaceRec_* %211, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0), %struct.BDF_PropertyRec_* %rec)
  %cmp294 = icmp eq i32 %call293, 0
  br i1 %cmp294, label %land.lhs.true.296, label %if.end.304

land.lhs.true.296:                                ; preds = %if.end.292
  %type297 = getelementptr inbounds %struct.BDF_PropertyRec_, %struct.BDF_PropertyRec_* %rec, i32 0, i32 0
  %212 = load i32, i32* %type297, align 4
  %cmp298 = icmp eq i32 %212, 2
  br i1 %cmp298, label %if.then.300, label %if.end.304

if.then.300:                                      ; preds = %land.lhs.true.296
  %u301 = getelementptr inbounds %struct.BDF_PropertyRec_, %struct.BDF_PropertyRec_* %rec, i32 0, i32 1
  %integer302 = bitcast %union.anon.11* %u301 to i32*
  %213 = load i32, i32* %integer302, align 4
  %214 = load %struct.font*, %struct.font** %font, align 8
  %relative_compose303 = getelementptr inbounds %struct.font, %struct.font* %214, i32 0, i32 14
  store i32 %213, i32* %relative_compose303, align 4
  br label %if.end.304

if.end.304:                                       ; preds = %if.then.300, %land.lhs.true.296, %if.end.292
  %215 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8
  %call305 = call i32 @FT_Get_BDF_Property(%struct.FT_FaceRec_* %215, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), %struct.BDF_PropertyRec_* %rec)
  %cmp306 = icmp eq i32 %call305, 0
  br i1 %cmp306, label %land.lhs.true.308, label %if.end.316

land.lhs.true.308:                                ; preds = %if.end.304
  %type309 = getelementptr inbounds %struct.BDF_PropertyRec_, %struct.BDF_PropertyRec_* %rec, i32 0, i32 0
  %216 = load i32, i32* %type309, align 4
  %cmp310 = icmp eq i32 %216, 2
  br i1 %cmp310, label %if.then.312, label %if.end.316

if.then.312:                                      ; preds = %land.lhs.true.308
  %u313 = getelementptr inbounds %struct.BDF_PropertyRec_, %struct.BDF_PropertyRec_* %rec, i32 0, i32 1
  %integer314 = bitcast %union.anon.11* %u313 to i32*
  %217 = load i32, i32* %integer314, align 4
  %218 = load %struct.font*, %struct.font** %font, align 8
  %default_ascent315 = getelementptr inbounds %struct.font, %struct.font* %218, i32 0, i32 15
  store i32 %217, i32* %default_ascent315, align 4
  br label %if.end.316

if.end.316:                                       ; preds = %if.then.312, %land.lhs.true.308, %if.end.304
  br label %if.end.317

if.end.317:                                       ; preds = %if.end.316, %if.end.278
  %219 = load i64, i64* %font_object, align 8
  store i64 %219, i64* %retval
  br label %return

return:                                           ; preds = %if.end.317, %if.then.132, %if.then
  %220 = load i64, i64* %retval
  ret i64 %220
}

; Function Attrs: nounwind uwtable
define internal void @xftfont_close(%struct.font* %font) #0 {
entry:
  %font.addr = alloca %struct.font*, align 8
  %xdi = alloca %struct.x_display_info*, align 8
  %xftfont_info = alloca %struct.xftfont_info*, align 8
  store %struct.font* %font, %struct.font** %font.addr, align 8
  %0 = load %struct.font*, %struct.font** %font.addr, align 8
  %1 = bitcast %struct.font* %0 to %struct.xftfont_info*
  store %struct.xftfont_info* %1, %struct.xftfont_info** %xftfont_info, align 8
  %2 = load %struct.xftfont_info*, %struct.xftfont_info** %xftfont_info, align 8
  %xftfont = getelementptr inbounds %struct.xftfont_info, %struct.xftfont_info* %2, i32 0, i32 5
  %3 = load %struct._XftFont*, %struct._XftFont** %xftfont, align 8
  %tobool = icmp ne %struct._XftFont* %3, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.xftfont_info*, %struct.xftfont_info** %xftfont_info, align 8
  %display = getelementptr inbounds %struct.xftfont_info, %struct.xftfont_info* %4, i32 0, i32 4
  %5 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %call = call %struct.x_display_info* @x_display_info_for_display(%struct._XDisplay* %5)
  store %struct.x_display_info* %call, %struct.x_display_info** %xdi, align 8
  %tobool1 = icmp ne %struct.x_display_info* %call, null
  br i1 %tobool1, label %land.lhs.true.2, label %if.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %6 = load %struct.xftfont_info*, %struct.xftfont_info** %xftfont_info, align 8
  %x_display_id = getelementptr inbounds %struct.xftfont_info, %struct.xftfont_info* %6, i32 0, i32 6
  %7 = load i32, i32* %x_display_id, align 4
  %8 = load %struct.x_display_info*, %struct.x_display_info** %xdi, align 8
  %x_id = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %8, i32 0, i32 26
  %9 = load i32, i32* %x_id, align 4
  %cmp = icmp eq i32 %7, %9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.2
  call void @block_input()
  %10 = load %struct.xftfont_info*, %struct.xftfont_info** %xftfont_info, align 8
  %xftfont3 = getelementptr inbounds %struct.xftfont_info, %struct.xftfont_info* %10, i32 0, i32 5
  %11 = load %struct._XftFont*, %struct._XftFont** %xftfont3, align 8
  call void @XftUnlockFace(%struct._XftFont* %11)
  %12 = load %struct.xftfont_info*, %struct.xftfont_info** %xftfont_info, align 8
  %display4 = getelementptr inbounds %struct.xftfont_info, %struct.xftfont_info* %12, i32 0, i32 4
  %13 = load %struct._XDisplay*, %struct._XDisplay** %display4, align 8
  %14 = load %struct.xftfont_info*, %struct.xftfont_info** %xftfont_info, align 8
  %xftfont5 = getelementptr inbounds %struct.xftfont_info, %struct.xftfont_info* %14, i32 0, i32 5
  %15 = load %struct._XftFont*, %struct._XftFont** %xftfont5, align 8
  call void @XftFontClose(%struct._XDisplay* %13, %struct._XftFont* %15)
  call void @unblock_input()
  %16 = load %struct.xftfont_info*, %struct.xftfont_info** %xftfont_info, align 8
  %xftfont6 = getelementptr inbounds %struct.xftfont_info, %struct.xftfont_info* %16, i32 0, i32 5
  store %struct._XftFont* null, %struct._XftFont** %xftfont6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.2, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @xftfont_prepare_face(%struct.frame* %f, %struct.face* %face) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %face.addr = alloca %struct.face*, align 8
  %xftface_info = alloca %struct.xftface_info*, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store %struct.face* %face, %struct.face** %face.addr, align 8
  %call = call noalias i8* @xmalloc(i64 32)
  %0 = bitcast i8* %call to %struct.xftface_info*
  store %struct.xftface_info* %0, %struct.xftface_info** %xftface_info, align 8
  %1 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %2 = load %struct.face*, %struct.face** %face.addr, align 8
  %3 = load %struct.face*, %struct.face** %face.addr, align 8
  %gc = getelementptr inbounds %struct.face, %struct.face* %3, i32 0, i32 2
  %4 = load %struct._XGC*, %struct._XGC** %gc, align 8
  %5 = load %struct.xftface_info*, %struct.xftface_info** %xftface_info, align 8
  %xft_fg = getelementptr inbounds %struct.xftface_info, %struct.xftface_info* %5, i32 0, i32 0
  %6 = load %struct.xftface_info*, %struct.xftface_info** %xftface_info, align 8
  %xft_bg = getelementptr inbounds %struct.xftface_info, %struct.xftface_info* %6, i32 0, i32 1
  call void @xftfont_get_colors(%struct.frame* %1, %struct.face* %2, %struct._XGC* %4, %struct.xftface_info* null, %struct._XftColor* %xft_fg, %struct._XftColor* %xft_bg)
  %7 = load %struct.xftface_info*, %struct.xftface_info** %xftface_info, align 8
  %8 = bitcast %struct.xftface_info* %7 to i8*
  %9 = load %struct.face*, %struct.face** %face.addr, align 8
  %extra = getelementptr inbounds %struct.face, %struct.face* %9, i32 0, i32 18
  store i8* %8, i8** %extra, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @xftfont_done_face(%struct.frame* %f, %struct.face* %face) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %face.addr = alloca %struct.face*, align 8
  %xftface_info = alloca %struct.xftface_info*, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store %struct.face* %face, %struct.face** %face.addr, align 8
  %0 = load %struct.face*, %struct.face** %face.addr, align 8
  %extra = getelementptr inbounds %struct.face, %struct.face* %0, i32 0, i32 18
  %1 = load i8*, i8** %extra, align 8
  %2 = bitcast i8* %1 to %struct.xftface_info*
  store %struct.xftface_info* %2, %struct.xftface_info** %xftface_info, align 8
  %3 = load %struct.xftface_info*, %struct.xftface_info** %xftface_info, align 8
  %tobool = icmp ne %struct.xftface_info* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.xftface_info*, %struct.xftface_info** %xftface_info, align 8
  %5 = bitcast %struct.xftface_info* %4 to i8*
  call void @xfree(i8* %5)
  %6 = load %struct.face*, %struct.face** %face.addr, align 8
  %extra1 = getelementptr inbounds %struct.face, %struct.face* %6, i32 0, i32 18
  store i8* null, i8** %extra1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @xftfont_has_char(i64 %font, i32 %c) #0 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca i64, align 8
  %c.addr = alloca i32, align 4
  %xftfont_info = alloca %struct.xftfont_info*, align 8
  %cs = alloca %struct.charset*, align 8
  store i64 %font, i64* %font.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  store %struct.charset* null, %struct.charset** %cs, align 8
  %0 = load i64, i64* %font.addr, align 8
  %call = call i64 @AREF(i64 %0, i64 3)
  %call1 = call i64 @builtin_lisp_symbol(i32 583)
  %cmp = icmp eq i64 %call, %call1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @charset_jisx0208, align 4
  %cmp2 = icmp sge i32 %1, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct.charset*, %struct.charset** @charset_table, align 8
  %3 = load i32, i32* @charset_jisx0208, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.charset, %struct.charset* %2, i64 %idx.ext
  store %struct.charset* %add.ptr, %struct.charset** %cs, align 8
  br label %if.end.11

if.else:                                          ; preds = %land.lhs.true, %entry
  %4 = load i64, i64* %font.addr, align 8
  %call3 = call i64 @AREF(i64 %4, i64 3)
  %call4 = call i64 @builtin_lisp_symbol(i32 597)
  %cmp5 = icmp eq i64 %call3, %call4
  br i1 %cmp5, label %land.lhs.true.6, label %if.end

land.lhs.true.6:                                  ; preds = %if.else
  %5 = load i32, i32* @charset_ksc5601, align 4
  %cmp7 = icmp sge i32 %5, 0
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %land.lhs.true.6
  %6 = load %struct.charset*, %struct.charset** @charset_table, align 8
  %7 = load i32, i32* @charset_ksc5601, align 4
  %idx.ext9 = sext i32 %7 to i64
  %add.ptr10 = getelementptr inbounds %struct.charset, %struct.charset* %6, i64 %idx.ext9
  store %struct.charset* %add.ptr10, %struct.charset** %cs, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.8, %land.lhs.true.6, %if.else
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then
  %8 = load %struct.charset*, %struct.charset** %cs, align 8
  %tobool = icmp ne %struct.charset* %8, null
  br i1 %tobool, label %if.then.12, label %if.end.104

if.then.12:                                       ; preds = %if.end.11
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.12
  %9 = load i32, i32* %c.addr, align 4
  %add = add i32 %9, 0
  %cmp13 = icmp ult i32 %add, 128
  br i1 %cmp13, label %land.lhs.true.17, label %cond.false.20

cond.false:                                       ; preds = %if.then.12
  %10 = load i32, i32* %c.addr, align 4
  %conv = sext i32 %10 to i64
  %add14 = add i64 %conv, 0
  %cmp15 = icmp ult i64 %add14, 128
  br i1 %cmp15, label %land.lhs.true.17, label %cond.false.20

land.lhs.true.17:                                 ; preds = %cond.false, %cond.true
  %11 = load %struct.charset*, %struct.charset** %cs, align 8
  %ascii_compatible_p = getelementptr inbounds %struct.charset, %struct.charset* %11, i32 0, i32 5
  %bf.load = load i8, i8* %ascii_compatible_p, align 8
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %cond.true.19, label %cond.false.20

cond.true.19:                                     ; preds = %land.lhs.true.17
  %12 = load i32, i32* %c.addr, align 4
  br label %cond.end.99

cond.false.20:                                    ; preds = %land.lhs.true.17, %cond.false, %cond.true
  %13 = load %struct.charset*, %struct.charset** %cs, align 8
  %unified_p = getelementptr inbounds %struct.charset, %struct.charset* %13, i32 0, i32 5
  %bf.load21 = load i8, i8* %unified_p, align 8
  %bf.lshr22 = lshr i8 %bf.load21, 5
  %bf.clear23 = and i8 %bf.lshr22, 1
  %bf.cast24 = trunc i8 %bf.clear23 to i1
  br i1 %bf.cast24, label %cond.true.32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.false.20
  %14 = load %struct.charset*, %struct.charset** %cs, align 8
  %method = getelementptr inbounds %struct.charset, %struct.charset* %14, i32 0, i32 9
  %15 = load i32, i32* %method, align 4
  %cmp26 = icmp eq i32 %15, 2
  br i1 %cmp26, label %cond.true.32, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %lor.lhs.false
  %16 = load %struct.charset*, %struct.charset** %cs, align 8
  %method29 = getelementptr inbounds %struct.charset, %struct.charset* %16, i32 0, i32 9
  %17 = load i32, i32* %method29, align 4
  %cmp30 = icmp eq i32 %17, 3
  br i1 %cmp30, label %cond.true.32, label %cond.false.34

cond.true.32:                                     ; preds = %lor.lhs.false.28, %lor.lhs.false, %cond.false.20
  %18 = load %struct.charset*, %struct.charset** %cs, align 8
  %19 = load i32, i32* %c.addr, align 4
  %call33 = call i32 @encode_char(%struct.charset* %18, i32 %19)
  br label %cond.end.97

cond.false.34:                                    ; preds = %lor.lhs.false.28
  %20 = load i32, i32* %c.addr, align 4
  %21 = load %struct.charset*, %struct.charset** %cs, align 8
  %min_char = getelementptr inbounds %struct.charset, %struct.charset* %21, i32 0, i32 13
  %22 = load i32, i32* %min_char, align 4
  %cmp35 = icmp slt i32 %20, %22
  br i1 %cmp35, label %cond.true.40, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %cond.false.34
  %23 = load i32, i32* %c.addr, align 4
  %24 = load %struct.charset*, %struct.charset** %cs, align 8
  %max_char = getelementptr inbounds %struct.charset, %struct.charset* %24, i32 0, i32 14
  %25 = load i32, i32* %max_char, align 4
  %cmp38 = icmp sgt i32 %23, %25
  br i1 %cmp38, label %cond.true.40, label %cond.false.41

cond.true.40:                                     ; preds = %lor.lhs.false.37, %cond.false.34
  %26 = load %struct.charset*, %struct.charset** %cs, align 8
  %invalid_code = getelementptr inbounds %struct.charset, %struct.charset* %26, i32 0, i32 15
  %27 = load i32, i32* %invalid_code, align 4
  br label %cond.end.95

cond.false.41:                                    ; preds = %lor.lhs.false.37
  %28 = load %struct.charset*, %struct.charset** %cs, align 8
  %method42 = getelementptr inbounds %struct.charset, %struct.charset* %28, i32 0, i32 9
  %29 = load i32, i32* %method42, align 4
  %cmp43 = icmp eq i32 %29, 0
  br i1 %cmp43, label %cond.true.45, label %cond.false.54

cond.true.45:                                     ; preds = %cond.false.41
  %30 = load %struct.charset*, %struct.charset** %cs, align 8
  %code_linear_p = getelementptr inbounds %struct.charset, %struct.charset* %30, i32 0, i32 5
  %bf.load46 = load i8, i8* %code_linear_p, align 8
  %bf.clear47 = and i8 %bf.load46, 1
  %bf.cast48 = trunc i8 %bf.clear47 to i1
  br i1 %bf.cast48, label %cond.true.50, label %cond.false.52

cond.true.50:                                     ; preds = %cond.true.45
  %31 = load i32, i32* %c.addr, align 4
  %32 = load %struct.charset*, %struct.charset** %cs, align 8
  %code_offset = getelementptr inbounds %struct.charset, %struct.charset* %32, i32 0, i32 17
  %33 = load i32, i32* %code_offset, align 4
  %sub = sub nsw i32 %31, %33
  %34 = load %struct.charset*, %struct.charset** %cs, align 8
  %min_code = getelementptr inbounds %struct.charset, %struct.charset* %34, i32 0, i32 10
  %35 = load i32, i32* %min_code, align 4
  %add51 = add i32 %sub, %35
  br label %cond.end

cond.false.52:                                    ; preds = %cond.true.45
  %36 = load %struct.charset*, %struct.charset** %cs, align 8
  %37 = load i32, i32* %c.addr, align 4
  %call53 = call i32 @encode_char(%struct.charset* %36, i32 %37)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.52, %cond.true.50
  %cond = phi i32 [ %add51, %cond.true.50 ], [ %call53, %cond.false.52 ]
  br label %cond.end.93

cond.false.54:                                    ; preds = %cond.false.41
  %38 = load %struct.charset*, %struct.charset** %cs, align 8
  %method55 = getelementptr inbounds %struct.charset, %struct.charset* %38, i32 0, i32 9
  %39 = load i32, i32* %method55, align 4
  %cmp56 = icmp eq i32 %39, 1
  br i1 %cmp56, label %cond.true.58, label %cond.false.89

cond.true.58:                                     ; preds = %cond.false.54
  %40 = load %struct.charset*, %struct.charset** %cs, align 8
  %compact_codes_p = getelementptr inbounds %struct.charset, %struct.charset* %40, i32 0, i32 5
  %bf.load59 = load i8, i8* %compact_codes_p, align 8
  %bf.lshr60 = lshr i8 %bf.load59, 4
  %bf.clear61 = and i8 %bf.lshr60, 1
  %bf.cast62 = trunc i8 %bf.clear61 to i1
  br i1 %bf.cast62, label %land.lhs.true.64, label %cond.false.85

land.lhs.true.64:                                 ; preds = %cond.true.58
  %41 = load i64, i64* @Vcharset_hash_table, align 8
  %call65 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %41)
  %42 = load %struct.charset*, %struct.charset** %cs, align 8
  %hash_index = getelementptr inbounds %struct.charset, %struct.charset* %42, i32 0, i32 1
  %43 = load i64, i64* %hash_index, align 8
  %call66 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call65, i64 %43)
  %call67 = call i64 @AREF(i64 %call66, i64 5)
  %call68 = call zeroext i1 @CHAR_TABLE_P(i64 %call67)
  br i1 %call68, label %cond.true.70, label %cond.false.85

cond.true.70:                                     ; preds = %land.lhs.true.64
  %44 = load i64, i64* @Vcharset_hash_table, align 8
  %call71 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %44)
  %45 = load %struct.charset*, %struct.charset** %cs, align 8
  %hash_index72 = getelementptr inbounds %struct.charset, %struct.charset* %45, i32 0, i32 1
  %46 = load i64, i64* %hash_index72, align 8
  %call73 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call71, i64 %46)
  %call74 = call i64 @AREF(i64 %call73, i64 5)
  %47 = load i32, i32* %c.addr, align 4
  %call75 = call i64 @CHAR_TABLE_REF(i64 %call74, i32 %47)
  store i64 %call75, i64* @charset_work, align 8
  %48 = load i64, i64* @charset_work, align 8
  %call76 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp77 = icmp eq i64 %48, %call76
  br i1 %cmp77, label %cond.true.79, label %cond.false.81

cond.true.79:                                     ; preds = %cond.true.70
  %49 = load %struct.charset*, %struct.charset** %cs, align 8
  %invalid_code80 = getelementptr inbounds %struct.charset, %struct.charset* %49, i32 0, i32 15
  %50 = load i32, i32* %invalid_code80, align 4
  br label %cond.end.83

cond.false.81:                                    ; preds = %cond.true.70
  %51 = load i64, i64* @charset_work, align 8
  %shr = ashr i64 %51, 2
  %conv82 = trunc i64 %shr to i32
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.false.81, %cond.true.79
  %cond84 = phi i32 [ %50, %cond.true.79 ], [ %conv82, %cond.false.81 ]
  br label %cond.end.87

cond.false.85:                                    ; preds = %land.lhs.true.64, %cond.true.58
  %52 = load %struct.charset*, %struct.charset** %cs, align 8
  %53 = load i32, i32* %c.addr, align 4
  %call86 = call i32 @encode_char(%struct.charset* %52, i32 %53)
  br label %cond.end.87

cond.end.87:                                      ; preds = %cond.false.85, %cond.end.83
  %cond88 = phi i32 [ %cond84, %cond.end.83 ], [ %call86, %cond.false.85 ]
  br label %cond.end.91

cond.false.89:                                    ; preds = %cond.false.54
  %54 = load %struct.charset*, %struct.charset** %cs, align 8
  %55 = load i32, i32* %c.addr, align 4
  %call90 = call i32 @encode_char(%struct.charset* %54, i32 %55)
  br label %cond.end.91

cond.end.91:                                      ; preds = %cond.false.89, %cond.end.87
  %cond92 = phi i32 [ %cond88, %cond.end.87 ], [ %call90, %cond.false.89 ]
  br label %cond.end.93

cond.end.93:                                      ; preds = %cond.end.91, %cond.end
  %cond94 = phi i32 [ %cond, %cond.end ], [ %cond92, %cond.end.91 ]
  br label %cond.end.95

cond.end.95:                                      ; preds = %cond.end.93, %cond.true.40
  %cond96 = phi i32 [ %27, %cond.true.40 ], [ %cond94, %cond.end.93 ]
  br label %cond.end.97

cond.end.97:                                      ; preds = %cond.end.95, %cond.true.32
  %cond98 = phi i32 [ %call33, %cond.true.32 ], [ %cond96, %cond.end.95 ]
  br label %cond.end.99

cond.end.99:                                      ; preds = %cond.end.97, %cond.true.19
  %cond100 = phi i32 [ %12, %cond.true.19 ], [ %cond98, %cond.end.97 ]
  %56 = load %struct.charset*, %struct.charset** %cs, align 8
  %invalid_code101 = getelementptr inbounds %struct.charset, %struct.charset* %56, i32 0, i32 15
  %57 = load i32, i32* %invalid_code101, align 4
  %cmp102 = icmp ne i32 %cond100, %57
  %conv103 = zext i1 %cmp102 to i32
  store i32 %conv103, i32* %retval
  br label %return

if.end.104:                                       ; preds = %if.end.11
  %58 = load i64, i64* %font.addr, align 8
  %call105 = call zeroext i1 @FONT_ENTITY_P(i64 %58)
  br i1 %call105, label %if.then.106, label %if.end.108

if.then.106:                                      ; preds = %if.end.104
  %59 = load i32 (i64, i32)*, i32 (i64, i32)** getelementptr inbounds (%struct.font_driver, %struct.font_driver* @ftfont_driver, i32 0, i32 11), align 8
  %60 = load i64, i64* %font.addr, align 8
  %61 = load i32, i32* %c.addr, align 4
  %call107 = call i32 %59(i64 %60, i32 %61)
  store i32 %call107, i32* %retval
  br label %return

if.end.108:                                       ; preds = %if.end.104
  %62 = load i64, i64* %font.addr, align 8
  %call109 = call %struct.font* @XFONT_OBJECT(i64 %62)
  %63 = bitcast %struct.font* %call109 to %struct.xftfont_info*
  store %struct.xftfont_info* %63, %struct.xftfont_info** %xftfont_info, align 8
  %64 = load %struct.xftfont_info*, %struct.xftfont_info** %xftfont_info, align 8
  %display = getelementptr inbounds %struct.xftfont_info, %struct.xftfont_info* %64, i32 0, i32 4
  %65 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %66 = load %struct.xftfont_info*, %struct.xftfont_info** %xftfont_info, align 8
  %xftfont = getelementptr inbounds %struct.xftfont_info, %struct.xftfont_info* %66, i32 0, i32 5
  %67 = load %struct._XftFont*, %struct._XftFont** %xftfont, align 8
  %68 = load i32, i32* %c.addr, align 4
  %call110 = call i32 @XftCharExists(%struct._XDisplay* %65, %struct._XftFont* %67, i32 %68)
  %cmp111 = icmp eq i32 %call110, 1
  %conv112 = zext i1 %cmp111 to i32
  store i32 %conv112, i32* %retval
  br label %return

return:                                           ; preds = %if.end.108, %if.then.106, %cond.end.99
  %69 = load i32, i32* %retval
  ret i32 %69
}

; Function Attrs: nounwind uwtable
define internal i32 @xftfont_encode_char(%struct.font* %font, i32 %c) #0 {
entry:
  %font.addr = alloca %struct.font*, align 8
  %c.addr = alloca i32, align 4
  %xftfont_info = alloca %struct.xftfont_info*, align 8
  %code = alloca i32, align 4
  store %struct.font* %font, %struct.font** %font.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  %0 = load %struct.font*, %struct.font** %font.addr, align 8
  %1 = bitcast %struct.font* %0 to %struct.xftfont_info*
  store %struct.xftfont_info* %1, %struct.xftfont_info** %xftfont_info, align 8
  %2 = load %struct.xftfont_info*, %struct.xftfont_info** %xftfont_info, align 8
  %display = getelementptr inbounds %struct.xftfont_info, %struct.xftfont_info* %2, i32 0, i32 4
  %3 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %4 = load %struct.xftfont_info*, %struct.xftfont_info** %xftfont_info, align 8
  %xftfont = getelementptr inbounds %struct.xftfont_info, %struct.xftfont_info* %4, i32 0, i32 5
  %5 = load %struct._XftFont*, %struct._XftFont** %xftfont, align 8
  %6 = load i32, i32* %c.addr, align 4
  %call = call i32 @XftCharIndex(%struct._XDisplay* %3, %struct._XftFont* %5, i32 %6)
  store i32 %call, i32* %code, align 4
  %7 = load i32, i32* %code, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load i32, i32* %code, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ -1, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define internal void @xftfont_text_extents(%struct.font* %font, i32* %code, i32 %nglyphs, %struct.font_metrics* %metrics) #0 {
entry:
  %font.addr = alloca %struct.font*, align 8
  %code.addr = alloca i32*, align 8
  %nglyphs.addr = alloca i32, align 4
  %metrics.addr = alloca %struct.font_metrics*, align 8
  %xftfont_info = alloca %struct.xftfont_info*, align 8
  %extents = alloca %struct._XGlyphInfo, align 2
  store %struct.font* %font, %struct.font** %font.addr, align 8
  store i32* %code, i32** %code.addr, align 8
  store i32 %nglyphs, i32* %nglyphs.addr, align 4
  store %struct.font_metrics* %metrics, %struct.font_metrics** %metrics.addr, align 8
  %0 = load %struct.font*, %struct.font** %font.addr, align 8
  %1 = bitcast %struct.font* %0 to %struct.xftfont_info*
  store %struct.xftfont_info* %1, %struct.xftfont_info** %xftfont_info, align 8
  call void @block_input()
  %2 = load %struct.xftfont_info*, %struct.xftfont_info** %xftfont_info, align 8
  %display = getelementptr inbounds %struct.xftfont_info, %struct.xftfont_info* %2, i32 0, i32 4
  %3 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %4 = load %struct.xftfont_info*, %struct.xftfont_info** %xftfont_info, align 8
  %xftfont = getelementptr inbounds %struct.xftfont_info, %struct.xftfont_info* %4, i32 0, i32 5
  %5 = load %struct._XftFont*, %struct._XftFont** %xftfont, align 8
  %6 = load i32*, i32** %code.addr, align 8
  %7 = load i32, i32* %nglyphs.addr, align 4
  call void @XftGlyphExtents(%struct._XDisplay* %3, %struct._XftFont* %5, i32* %6, i32 %7, %struct._XGlyphInfo* %extents)
  call void @unblock_input()
  %x = getelementptr inbounds %struct._XGlyphInfo, %struct._XGlyphInfo* %extents, i32 0, i32 2
  %8 = load i16, i16* %x, align 2
  %conv = sext i16 %8 to i32
  %sub = sub nsw i32 0, %conv
  %conv1 = trunc i32 %sub to i16
  %9 = load %struct.font_metrics*, %struct.font_metrics** %metrics.addr, align 8
  %lbearing = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %9, i32 0, i32 0
  store i16 %conv1, i16* %lbearing, align 2
  %x2 = getelementptr inbounds %struct._XGlyphInfo, %struct._XGlyphInfo* %extents, i32 0, i32 2
  %10 = load i16, i16* %x2, align 2
  %conv3 = sext i16 %10 to i32
  %sub4 = sub nsw i32 0, %conv3
  %width = getelementptr inbounds %struct._XGlyphInfo, %struct._XGlyphInfo* %extents, i32 0, i32 0
  %11 = load i16, i16* %width, align 2
  %conv5 = zext i16 %11 to i32
  %add = add nsw i32 %sub4, %conv5
  %conv6 = trunc i32 %add to i16
  %12 = load %struct.font_metrics*, %struct.font_metrics** %metrics.addr, align 8
  %rbearing = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %12, i32 0, i32 1
  store i16 %conv6, i16* %rbearing, align 2
  %xOff = getelementptr inbounds %struct._XGlyphInfo, %struct._XGlyphInfo* %extents, i32 0, i32 4
  %13 = load i16, i16* %xOff, align 2
  %14 = load %struct.font_metrics*, %struct.font_metrics** %metrics.addr, align 8
  %width7 = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %14, i32 0, i32 2
  store i16 %13, i16* %width7, align 2
  %y = getelementptr inbounds %struct._XGlyphInfo, %struct._XGlyphInfo* %extents, i32 0, i32 3
  %15 = load i16, i16* %y, align 2
  %16 = load %struct.font_metrics*, %struct.font_metrics** %metrics.addr, align 8
  %ascent = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %16, i32 0, i32 3
  store i16 %15, i16* %ascent, align 2
  %height = getelementptr inbounds %struct._XGlyphInfo, %struct._XGlyphInfo* %extents, i32 0, i32 1
  %17 = load i16, i16* %height, align 2
  %conv8 = zext i16 %17 to i32
  %y9 = getelementptr inbounds %struct._XGlyphInfo, %struct._XGlyphInfo* %extents, i32 0, i32 3
  %18 = load i16, i16* %y9, align 2
  %conv10 = sext i16 %18 to i32
  %sub11 = sub nsw i32 %conv8, %conv10
  %conv12 = trunc i32 %sub11 to i16
  %19 = load %struct.font_metrics*, %struct.font_metrics** %metrics.addr, align 8
  %descent = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %19, i32 0, i32 4
  store i16 %conv12, i16* %descent, align 2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @xftfont_draw(%struct.glyph_string* %s, i32 %from, i32 %to, i32 %x, i32 %y, i1 zeroext %with_background) #0 {
entry:
  %s.addr = alloca %struct.glyph_string*, align 8
  %from.addr = alloca i32, align 4
  %to.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %with_background.addr = alloca i8, align 1
  %f = alloca %struct.frame*, align 8
  %face = alloca %struct.face*, align 8
  %xftfont_info = alloca %struct.xftfont_info*, align 8
  %xftface_info = alloca %struct.xftface_info*, align 8
  %xft_draw = alloca %struct._XftDraw*, align 8
  %code = alloca i32*, align 8
  %fg = alloca %struct._XftColor, align 8
  %bg = alloca %struct._XftColor, align 8
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  %height = alloca i32, align 4
  %ascent = alloca i32, align 4
  store %struct.glyph_string* %s, %struct.glyph_string** %s.addr, align 8
  store i32 %from, i32* %from.addr, align 4
  store i32 %to, i32* %to.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %frombool = zext i1 %with_background to i8
  store i8 %frombool, i8* %with_background.addr, align 1
  %0 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %f1 = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %0, i32 0, i32 8
  %1 = load %struct.frame*, %struct.frame** %f1, align 8
  store %struct.frame* %1, %struct.frame** %f, align 8
  %2 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %face2 = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %2, i32 0, i32 17
  %3 = load %struct.face*, %struct.face** %face2, align 8
  store %struct.face* %3, %struct.face** %face, align 8
  %4 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %font = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %4, i32 0, i32 18
  %5 = load %struct.font*, %struct.font** %font, align 8
  %6 = bitcast %struct.font* %5 to %struct.xftfont_info*
  store %struct.xftfont_info* %6, %struct.xftfont_info** %xftfont_info, align 8
  store %struct.xftface_info* null, %struct.xftface_info** %xftface_info, align 8
  %7 = load %struct.frame*, %struct.frame** %f, align 8
  %call = call %struct._XftDraw* @xftfont_get_xft_draw(%struct.frame* %7)
  store %struct._XftDraw* %call, %struct._XftDraw** %xft_draw, align 8
  %8 = load i32, i32* %to.addr, align 4
  %9 = load i32, i32* %from.addr, align 4
  %sub = sub nsw i32 %8, %9
  store i32 %sub, i32* %len, align 4
  %10 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %font3 = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %10, i32 0, i32 18
  %11 = load %struct.font*, %struct.font** %font3, align 8
  %12 = load %struct.face*, %struct.face** %face, align 8
  %font4 = getelementptr inbounds %struct.face, %struct.face* %12, i32 0, i32 10
  %13 = load %struct.font*, %struct.font** %font4, align 8
  %cmp = icmp eq %struct.font* %11, %13
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load %struct.face*, %struct.face** %face, align 8
  %extra = getelementptr inbounds %struct.face, %struct.face* %14, i32 0, i32 18
  %15 = load i8*, i8** %extra, align 8
  %16 = bitcast i8* %15 to %struct.xftface_info*
  store %struct.xftface_info* %16, %struct.xftface_info** %xftface_info, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load %struct.frame*, %struct.frame** %f, align 8
  %18 = load %struct.face*, %struct.face** %face, align 8
  %19 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %gc = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %19, i32 0, i32 24
  %20 = load %struct._XGC*, %struct._XGC** %gc, align 8
  %21 = load %struct.xftface_info*, %struct.xftface_info** %xftface_info, align 8
  %22 = load i8, i8* %with_background.addr, align 1
  %tobool = trunc i8 %22 to i1
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._XftColor* [ %bg, %cond.true ], [ null, %cond.false ]
  call void @xftfont_get_colors(%struct.frame* %17, %struct.face* %18, %struct._XGC* %20, %struct.xftface_info* %21, %struct._XftColor* %fg, %struct._XftColor* %cond)
  call void @block_input()
  %23 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %num_clips = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %23, i32 0, i32 32
  %24 = load i32, i32* %num_clips, align 4
  %cmp5 = icmp sgt i32 %24, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %cond.end
  %25 = load %struct._XftDraw*, %struct._XftDraw** %xft_draw, align 8
  %26 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %clip = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %26, i32 0, i32 31
  %arraydecay = getelementptr inbounds [2 x %struct.XRectangle], [2 x %struct.XRectangle]* %clip, i32 0, i32 0
  %27 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %num_clips7 = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %27, i32 0, i32 32
  %28 = load i32, i32* %num_clips7, align 4
  %call8 = call i32 @XftDrawSetClipRectangles(%struct._XftDraw* %25, i32 0, i32 0, %struct.XRectangle* %arraydecay, i32 %28)
  br label %if.end.10

if.else:                                          ; preds = %cond.end
  %29 = load %struct._XftDraw*, %struct._XftDraw** %xft_draw, align 8
  %call9 = call i32 @XftDrawSetClip(%struct._XftDraw* %29, %struct._XRegion* null)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.6
  %30 = load i8, i8* %with_background.addr, align 1
  %tobool11 = trunc i8 %30 to i1
  br i1 %tobool11, label %if.then.12, label %if.end.38

if.then.12:                                       ; preds = %if.end.10
  %31 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %font13 = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %31, i32 0, i32 18
  %32 = load %struct.font*, %struct.font** %font13, align 8
  %height14 = getelementptr inbounds %struct.font, %struct.font* %32, i32 0, i32 5
  %33 = load i32, i32* %height14, align 4
  store i32 %33, i32* %height, align 4
  %34 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %font15 = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %34, i32 0, i32 18
  %35 = load %struct.font*, %struct.font** %font15, align 8
  %ascent16 = getelementptr inbounds %struct.font, %struct.font* %35, i32 0, i32 8
  %36 = load i32, i32* %ascent16, align 4
  store i32 %36, i32* %ascent, align 4
  %37 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %first_glyph = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %37, i32 0, i32 25
  %38 = load %struct.glyph*, %struct.glyph** %first_glyph, align 8
  %type = getelementptr inbounds %struct.glyph, %struct.glyph* %38, i32 0, i32 6
  %39 = bitcast i24* %type to i32*
  %bf.load = load i32, i32* %39, align 8
  %bf.clear = and i32 %bf.load, 7
  %cmp17 = icmp eq i32 %bf.clear, 2
  br i1 %cmp17, label %land.lhs.true, label %if.end.36

land.lhs.true:                                    ; preds = %if.then.12
  %40 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %first_glyph18 = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %40, i32 0, i32 25
  %41 = load %struct.glyph*, %struct.glyph** %first_glyph18, align 8
  %u = getelementptr inbounds %struct.glyph, %struct.glyph* %41, i32 0, i32 9
  %glyphless = bitcast %union.anon.1* %u to %struct.anon.4*
  %42 = bitcast %struct.anon.4* %glyphless to i32*
  %bf.load19 = load i32, i32* %42, align 4
  %bf.clear20 = and i32 %bf.load19, 3
  %cmp21 = icmp eq i32 %bf.clear20, 3
  br i1 %cmp21, label %if.then.28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %43 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %first_glyph22 = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %43, i32 0, i32 25
  %44 = load %struct.glyph*, %struct.glyph** %first_glyph22, align 8
  %u23 = getelementptr inbounds %struct.glyph, %struct.glyph* %44, i32 0, i32 9
  %glyphless24 = bitcast %union.anon.1* %u23 to %struct.anon.4*
  %45 = bitcast %struct.anon.4* %glyphless24 to i32*
  %bf.load25 = load i32, i32* %45, align 4
  %bf.clear26 = and i32 %bf.load25, 3
  %cmp27 = icmp eq i32 %bf.clear26, 2
  br i1 %cmp27, label %if.then.28, label %if.end.36

if.then.28:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %46 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %first_glyph29 = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %46, i32 0, i32 25
  %47 = load %struct.glyph*, %struct.glyph** %first_glyph29, align 8
  %slice = getelementptr inbounds %struct.glyph, %struct.glyph* %47, i32 0, i32 8
  %glyphless30 = bitcast %union.anon* %slice to %struct.anon.0*
  %lower_yoff = getelementptr inbounds %struct.anon.0, %struct.anon.0* %glyphless30, i32 0, i32 3
  %48 = load i16, i16* %lower_yoff, align 2
  %conv = sext i16 %48 to i32
  %49 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %first_glyph31 = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %49, i32 0, i32 25
  %50 = load %struct.glyph*, %struct.glyph** %first_glyph31, align 8
  %slice32 = getelementptr inbounds %struct.glyph, %struct.glyph* %50, i32 0, i32 8
  %glyphless33 = bitcast %union.anon* %slice32 to %struct.anon.0*
  %upper_yoff = getelementptr inbounds %struct.anon.0, %struct.anon.0* %glyphless33, i32 0, i32 1
  %51 = load i16, i16* %upper_yoff, align 2
  %conv34 = sext i16 %51 to i32
  %sub35 = sub nsw i32 %conv, %conv34
  store i32 %sub35, i32* %ascent, align 4
  store i32 %sub35, i32* %height, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.28, %lor.lhs.false, %if.then.12
  %52 = load %struct._XftDraw*, %struct._XftDraw** %xft_draw, align 8
  %53 = load i32, i32* %x.addr, align 4
  %54 = load i32, i32* %y.addr, align 4
  %55 = load i32, i32* %ascent, align 4
  %sub37 = sub nsw i32 %54, %55
  %56 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %width = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %56, i32 0, i32 3
  %57 = load i32, i32* %width, align 4
  %58 = load i32, i32* %height, align 4
  call void @XftDrawRect(%struct._XftDraw* %52, %struct._XftColor* %bg, i32 %53, i32 %sub37, i32 %57, i32 %58)
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.36, %if.end.10
  %59 = load i32, i32* %len, align 4
  %conv39 = sext i32 %59 to i64
  %mul = mul i64 4, %conv39
  %60 = alloca i8, i64 %mul
  %61 = bitcast i8* %60 to i32*
  store i32* %61, i32** %code, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.38
  %62 = load i32, i32* %i, align 4
  %63 = load i32, i32* %len, align 4
  %cmp40 = icmp slt i32 %62, %63
  br i1 %cmp40, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %64 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %char2b = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %64, i32 0, i32 14
  %65 = load %struct.XChar2b*, %struct.XChar2b** %char2b, align 8
  %66 = load i32, i32* %from.addr, align 4
  %idx.ext = sext i32 %66 to i64
  %add.ptr = getelementptr inbounds %struct.XChar2b, %struct.XChar2b* %65, i64 %idx.ext
  %67 = load i32, i32* %i, align 4
  %idx.ext42 = sext i32 %67 to i64
  %add.ptr43 = getelementptr inbounds %struct.XChar2b, %struct.XChar2b* %add.ptr, i64 %idx.ext42
  %byte1 = getelementptr inbounds %struct.XChar2b, %struct.XChar2b* %add.ptr43, i32 0, i32 0
  %68 = load i8, i8* %byte1, align 1
  %conv44 = zext i8 %68 to i32
  %shl = shl i32 %conv44, 8
  %69 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %char2b45 = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %69, i32 0, i32 14
  %70 = load %struct.XChar2b*, %struct.XChar2b** %char2b45, align 8
  %71 = load i32, i32* %from.addr, align 4
  %idx.ext46 = sext i32 %71 to i64
  %add.ptr47 = getelementptr inbounds %struct.XChar2b, %struct.XChar2b* %70, i64 %idx.ext46
  %72 = load i32, i32* %i, align 4
  %idx.ext48 = sext i32 %72 to i64
  %add.ptr49 = getelementptr inbounds %struct.XChar2b, %struct.XChar2b* %add.ptr47, i64 %idx.ext48
  %byte2 = getelementptr inbounds %struct.XChar2b, %struct.XChar2b* %add.ptr49, i32 0, i32 1
  %73 = load i8, i8* %byte2, align 1
  %conv50 = zext i8 %73 to i32
  %or = or i32 %shl, %conv50
  %74 = load i32, i32* %i, align 4
  %idxprom = sext i32 %74 to i64
  %75 = load i32*, i32** %code, align 8
  %arrayidx = getelementptr inbounds i32, i32* %75, i64 %idxprom
  store i32 %or, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %76 = load i32, i32* %i, align 4
  %inc = add nsw i32 %76, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %77 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %padding_p = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %77, i32 0, i32 23
  %bf.load51 = load i8, i8* %padding_p, align 8
  %bf.lshr = lshr i8 %bf.load51, 7
  %bf.cast = trunc i8 %bf.lshr to i1
  br i1 %bf.cast, label %if.then.52, label %if.else.62

if.then.52:                                       ; preds = %for.end
  store i32 0, i32* %i, align 4
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.59, %if.then.52
  %78 = load i32, i32* %i, align 4
  %79 = load i32, i32* %len, align 4
  %cmp54 = icmp slt i32 %78, %79
  br i1 %cmp54, label %for.body.56, label %for.end.61

for.body.56:                                      ; preds = %for.cond.53
  %80 = load %struct._XftDraw*, %struct._XftDraw** %xft_draw, align 8
  %81 = load %struct.xftfont_info*, %struct.xftfont_info** %xftfont_info, align 8
  %xftfont = getelementptr inbounds %struct.xftfont_info, %struct.xftfont_info* %81, i32 0, i32 5
  %82 = load %struct._XftFont*, %struct._XftFont** %xftfont, align 8
  %83 = load i32, i32* %x.addr, align 4
  %84 = load i32, i32* %i, align 4
  %add = add nsw i32 %83, %84
  %85 = load i32, i32* %y.addr, align 4
  %86 = load i32*, i32** %code, align 8
  %87 = load i32, i32* %i, align 4
  %idx.ext57 = sext i32 %87 to i64
  %add.ptr58 = getelementptr inbounds i32, i32* %86, i64 %idx.ext57
  call void @XftDrawGlyphs(%struct._XftDraw* %80, %struct._XftColor* %fg, %struct._XftFont* %82, i32 %add, i32 %85, i32* %add.ptr58, i32 1)
  br label %for.inc.59

for.inc.59:                                       ; preds = %for.body.56
  %88 = load i32, i32* %i, align 4
  %inc60 = add nsw i32 %88, 1
  store i32 %inc60, i32* %i, align 4
  br label %for.cond.53

for.end.61:                                       ; preds = %for.cond.53
  br label %if.end.64

if.else.62:                                       ; preds = %for.end
  %89 = load %struct._XftDraw*, %struct._XftDraw** %xft_draw, align 8
  %90 = load %struct.xftfont_info*, %struct.xftfont_info** %xftfont_info, align 8
  %xftfont63 = getelementptr inbounds %struct.xftfont_info, %struct.xftfont_info* %90, i32 0, i32 5
  %91 = load %struct._XftFont*, %struct._XftFont** %xftfont63, align 8
  %92 = load i32, i32* %x.addr, align 4
  %93 = load i32, i32* %y.addr, align 4
  %94 = load i32*, i32** %code, align 8
  %95 = load i32, i32* %len, align 4
  call void @XftDrawGlyphs(%struct._XftDraw* %89, %struct._XftColor* %fg, %struct._XftFont* %91, i32 %92, i32 %93, i32* %94, i32 %95)
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.62, %for.end.61
  call void @unblock_input()
  %96 = load i32, i32* %len, align 4
  ret i32 %96
}

; Function Attrs: nounwind uwtable
define internal i32 @xftfont_end_for_frame(%struct.frame* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct.frame*, align 8
  %xft_draw = alloca %struct._XftDraw*, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %1 = load %struct.x_output*, %struct.x_output** %x, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %1, i32 0, i32 44
  %2 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %2, i32 0, i32 2
  %3 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %cmp = icmp eq %struct._XDisplay* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 1063)
  %call1 = call i8* @font_get_frame_data(%struct.frame* %4, i64 %call)
  %5 = bitcast i8* %call1 to %struct._XftDraw*
  store %struct._XftDraw* %5, %struct._XftDraw** %xft_draw, align 8
  %6 = load %struct._XftDraw*, %struct._XftDraw** %xft_draw, align 8
  %tobool = icmp ne %struct._XftDraw* %6, null
  br i1 %tobool, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  call void @block_input()
  %7 = load %struct._XftDraw*, %struct._XftDraw** %xft_draw, align 8
  call void @XftDrawDestroy(%struct._XftDraw* %7)
  call void @unblock_input()
  %8 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 1063)
  call void @font_put_frame_data(%struct.frame* %8, i64 %call3, i8* null)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @xftfont_cached_font_ok(%struct.frame* %f, i64 %font_object, i64 %entity) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %font_object.addr = alloca i64, align 8
  %entity.addr = alloca i64, align 8
  %info = alloca %struct.xftfont_info*, align 8
  %oldpat = alloca %struct._FcPattern*, align 8
  %display = alloca %struct._XDisplay*, align 8
  %pat = alloca %struct._FcPattern*, align 8
  %b1 = alloca i32, align 4
  %b2 = alloca i32, align 4
  %ok = alloca i8, align 1
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %r1 = alloca i32, align 4
  %r2 = alloca i32, align 4
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %font_object, i64* %font_object.addr, align 8
  store i64 %entity, i64* %entity.addr, align 8
  %0 = load i64, i64* %font_object.addr, align 8
  %call = call %struct.font* @XFONT_OBJECT(i64 %0)
  %1 = bitcast %struct.font* %call to %struct.xftfont_info*
  store %struct.xftfont_info* %1, %struct.xftfont_info** %info, align 8
  %2 = load %struct.xftfont_info*, %struct.xftfont_info** %info, align 8
  %xftfont = getelementptr inbounds %struct.xftfont_info, %struct.xftfont_info* %2, i32 0, i32 5
  %3 = load %struct._XftFont*, %struct._XftFont** %xftfont, align 8
  %pattern = getelementptr inbounds %struct._XftFont, %struct._XftFont* %3, i32 0, i32 5
  %4 = load %struct._FcPattern*, %struct._FcPattern** %pattern, align 8
  store %struct._FcPattern* %4, %struct._FcPattern** %oldpat, align 8
  %5 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %5, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %6 = load %struct.x_output*, %struct.x_output** %x, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %6, i32 0, i32 44
  %7 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %display1 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %7, i32 0, i32 2
  %8 = load %struct._XDisplay*, %struct._XDisplay** %display1, align 8
  store %struct._XDisplay* %8, %struct._XDisplay** %display, align 8
  %call2 = call %struct._FcPattern* @FcPatternCreate()
  store %struct._FcPattern* %call2, %struct._FcPattern** %pat, align 8
  store i8 0, i8* %ok, align 1
  %9 = load %struct._FcPattern*, %struct._FcPattern** %pat, align 8
  %10 = load i64, i64* %entity.addr, align 8
  call void @xftfont_add_rendering_parameters(%struct._FcPattern* %9, i64 %10)
  %11 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %12 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data3 = getelementptr inbounds %struct.frame, %struct.frame* %12, i32 0, i32 62
  %x4 = bitcast %union.output_data* %output_data3 to %struct.x_output**
  %13 = load %struct.x_output*, %struct.x_output** %x4, align 8
  %display_info5 = getelementptr inbounds %struct.x_output, %struct.x_output* %13, i32 0, i32 44
  %14 = load %struct.x_display_info*, %struct.x_display_info** %display_info5, align 8
  %screen = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %14, i32 0, i32 6
  %15 = load %struct.Screen*, %struct.Screen** %screen, align 8
  %call6 = call i32 @XScreenNumberOfScreen(%struct.Screen* %15)
  %16 = load %struct._FcPattern*, %struct._FcPattern** %pat, align 8
  call void @XftDefaultSubstitute(%struct._XDisplay* %11, i32 %call6, %struct._FcPattern* %16)
  %17 = load %struct._FcPattern*, %struct._FcPattern** %pat, align 8
  %call7 = call i32 @FcPatternGetBool(%struct._FcPattern* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i32 0, i32* %b1)
  store i32 %call7, i32* %r1, align 4
  %18 = load %struct._FcPattern*, %struct._FcPattern** %oldpat, align 8
  %call8 = call i32 @FcPatternGetBool(%struct._FcPattern* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i32 0, i32* %b2)
  store i32 %call8, i32* %r2, align 4
  %19 = load i32, i32* %r1, align 4
  %20 = load i32, i32* %r2, align 4
  %cmp = icmp ne i32 %19, %20
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %21 = load i32, i32* %b1, align 4
  %22 = load i32, i32* %b2, align 4
  %cmp9 = icmp ne i32 %21, %22
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %23 = load %struct._FcPattern*, %struct._FcPattern** %pat, align 8
  %call10 = call i32 @FcPatternGetBool(%struct._FcPattern* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i32 0, i32* %b1)
  store i32 %call10, i32* %r1, align 4
  %24 = load %struct._FcPattern*, %struct._FcPattern** %oldpat, align 8
  %call11 = call i32 @FcPatternGetBool(%struct._FcPattern* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i32 0, i32* %b2)
  store i32 %call11, i32* %r2, align 4
  %25 = load i32, i32* %r1, align 4
  %26 = load i32, i32* %r2, align 4
  %cmp12 = icmp ne i32 %25, %26
  br i1 %cmp12, label %if.then.15, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %if.end
  %27 = load i32, i32* %b1, align 4
  %28 = load i32, i32* %b2, align 4
  %cmp14 = icmp ne i32 %27, %28
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %lor.lhs.false.13, %if.end
  br label %out

if.end.16:                                        ; preds = %lor.lhs.false.13
  %29 = load %struct._FcPattern*, %struct._FcPattern** %pat, align 8
  %call17 = call i32 @FcPatternGetBool(%struct._FcPattern* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 0, i32* %b1)
  store i32 %call17, i32* %r1, align 4
  %30 = load %struct._FcPattern*, %struct._FcPattern** %oldpat, align 8
  %call18 = call i32 @FcPatternGetBool(%struct._FcPattern* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 0, i32* %b2)
  store i32 %call18, i32* %r2, align 4
  %31 = load i32, i32* %r1, align 4
  %32 = load i32, i32* %r2, align 4
  %cmp19 = icmp ne i32 %31, %32
  br i1 %cmp19, label %if.then.22, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %if.end.16
  %33 = load i32, i32* %b1, align 4
  %34 = load i32, i32* %b2, align 4
  %cmp21 = icmp ne i32 %33, %34
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %lor.lhs.false.20, %if.end.16
  br label %out

if.end.23:                                        ; preds = %lor.lhs.false.20
  %35 = load %struct._FcPattern*, %struct._FcPattern** %pat, align 8
  %call24 = call i32 @FcPatternGetBool(%struct._FcPattern* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 0, i32* %b1)
  store i32 %call24, i32* %r1, align 4
  %36 = load %struct._FcPattern*, %struct._FcPattern** %oldpat, align 8
  %call25 = call i32 @FcPatternGetBool(%struct._FcPattern* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 0, i32* %b2)
  store i32 %call25, i32* %r2, align 4
  %37 = load i32, i32* %r1, align 4
  %38 = load i32, i32* %r2, align 4
  %cmp26 = icmp ne i32 %37, %38
  br i1 %cmp26, label %if.then.29, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %if.end.23
  %39 = load i32, i32* %b1, align 4
  %40 = load i32, i32* %b2, align 4
  %cmp28 = icmp ne i32 %39, %40
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %lor.lhs.false.27, %if.end.23
  br label %out

if.end.30:                                        ; preds = %lor.lhs.false.27
  %41 = load %struct._FcPattern*, %struct._FcPattern** %pat, align 8
  %call31 = call i32 @FcPatternGetInteger(%struct._FcPattern* %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i32 0, i32* %i1)
  store i32 %call31, i32* %r1, align 4
  %42 = load %struct._FcPattern*, %struct._FcPattern** %oldpat, align 8
  %call32 = call i32 @FcPatternGetInteger(%struct._FcPattern* %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i32 0, i32* %i2)
  store i32 %call32, i32* %r2, align 4
  %43 = load i32, i32* %r1, align 4
  %44 = load i32, i32* %r2, align 4
  %cmp33 = icmp ne i32 %43, %44
  br i1 %cmp33, label %if.then.36, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %if.end.30
  %45 = load i32, i32* %i1, align 4
  %46 = load i32, i32* %i2, align 4
  %cmp35 = icmp ne i32 %45, %46
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %lor.lhs.false.34, %if.end.30
  br label %out

if.end.37:                                        ; preds = %lor.lhs.false.34
  %47 = load %struct._FcPattern*, %struct._FcPattern** %pat, align 8
  %call38 = call i32 @FcPatternGetInteger(%struct._FcPattern* %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i32 0, i32* %i1)
  store i32 %call38, i32* %r1, align 4
  %48 = load %struct._FcPattern*, %struct._FcPattern** %oldpat, align 8
  %call39 = call i32 @FcPatternGetInteger(%struct._FcPattern* %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i32 0, i32* %i2)
  store i32 %call39, i32* %r2, align 4
  %49 = load i32, i32* %r1, align 4
  %50 = load i32, i32* %r2, align 4
  %cmp40 = icmp ne i32 %49, %50
  br i1 %cmp40, label %if.then.43, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %if.end.37
  %51 = load i32, i32* %i1, align 4
  %52 = load i32, i32* %i2, align 4
  %cmp42 = icmp ne i32 %51, %52
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %lor.lhs.false.41, %if.end.37
  br label %out

if.end.44:                                        ; preds = %lor.lhs.false.41
  %53 = load %struct._FcPattern*, %struct._FcPattern** %pat, align 8
  %call45 = call i32 @FcPatternGetInteger(%struct._FcPattern* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i32 0, i32* %i1)
  store i32 %call45, i32* %r1, align 4
  %54 = load %struct._FcPattern*, %struct._FcPattern** %oldpat, align 8
  %call46 = call i32 @FcPatternGetInteger(%struct._FcPattern* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i32 0, i32* %i2)
  store i32 %call46, i32* %r2, align 4
  %55 = load i32, i32* %r1, align 4
  %56 = load i32, i32* %r2, align 4
  %cmp47 = icmp ne i32 %55, %56
  br i1 %cmp47, label %if.then.50, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %if.end.44
  %57 = load i32, i32* %i1, align 4
  %58 = load i32, i32* %i2, align 4
  %cmp49 = icmp ne i32 %57, %58
  br i1 %cmp49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %lor.lhs.false.48, %if.end.44
  br label %out

if.end.51:                                        ; preds = %lor.lhs.false.48
  store i8 1, i8* %ok, align 1
  br label %out

out:                                              ; preds = %if.end.51, %if.then.50, %if.then.43, %if.then.36, %if.then.29, %if.then.22, %if.then.15, %if.then
  %59 = load %struct._FcPattern*, %struct._FcPattern** %pat, align 8
  call void @FcPatternDestroy(%struct._FcPattern* %59)
  %60 = load i8, i8* %ok, align 1
  %tobool = trunc i8 %60 to i1
  ret i1 %tobool
}

declare void @register_font_driver(%struct.font_driver*, %struct.frame*) #1

declare void @ASET(i64, i64, i64) #1

declare i64 @assq_no_quit(i64, i64) #1

declare i64 @AREF(i64, i64) #1

declare %struct._FcPattern* @FcPatternCreate() #1

declare i32 @FcPatternAddInteger(%struct._FcPattern*, i8*, i32) #1

declare i32 @FcPatternAddDouble(%struct._FcPattern*, i8*, double) #1

declare i32 @FcPatternAddString(%struct._FcPattern*, i8*, i8*) #1

declare i8* @SDATA(i64) #1

declare i64 @SYMBOL_NAME(i64) #1

declare i32 @FcPatternAddBool(%struct._FcPattern*, i8*, i32) #1

declare i32 @FcPatternAddCharSet(%struct._FcPattern*, i8*, %struct._FcCharSet*) #1

declare %struct._FcCharSet* @ftfont_get_fc_charset(i64) #1

; Function Attrs: nounwind uwtable
define internal void @xftfont_add_rendering_parameters(%struct._FcPattern* %pat, i64 %entity) #0 {
entry:
  %pat.addr = alloca %struct._FcPattern*, align 8
  %entity.addr = alloca i64, align 8
  %tail = alloca i64, align 8
  %ival = alloca i32, align 4
  %key = alloca i64, align 8
  %val = alloca i64, align 8
  store %struct._FcPattern* %pat, %struct._FcPattern** %pat.addr, align 8
  store i64 %entity, i64* %entity.addr, align 8
  %0 = load i64, i64* %entity.addr, align 8
  %call = call i64 @AREF(i64 %0, i64 12)
  store i64 %call, i64* %tail, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %tail, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %tail, align 8
  %sub = sub nsw i64 %2, 3
  %3 = inttoptr i64 %sub to i8*
  %4 = bitcast i8* %3 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %4, i32 0, i32 0
  %5 = load i64, i64* %car, align 8
  %sub2 = sub nsw i64 %5, 3
  %6 = inttoptr i64 %sub2 to i8*
  %7 = bitcast i8* %6 to %struct.Lisp_Cons*
  %car3 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %7, i32 0, i32 0
  %8 = load i64, i64* %car3, align 8
  store i64 %8, i64* %key, align 8
  %9 = load i64, i64* %tail, align 8
  %sub4 = sub nsw i64 %9, 3
  %10 = inttoptr i64 %sub4 to i8*
  %11 = bitcast i8* %10 to %struct.Lisp_Cons*
  %car5 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %11, i32 0, i32 0
  %12 = load i64, i64* %car5, align 8
  %sub6 = sub nsw i64 %12, 3
  %13 = inttoptr i64 %sub6 to i8*
  %14 = bitcast i8* %13 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %14, i32 0, i32 1
  %cdr = bitcast %union.anon.10* %u to i64*
  %15 = load i64, i64* %cdr, align 8
  store i64 %15, i64* %val, align 8
  %16 = load i64, i64* %key, align 8
  %call7 = call i64 @builtin_lisp_symbol(i32 8)
  %cmp8 = icmp eq i64 %16, %call7
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %17 = load %struct._FcPattern*, %struct._FcPattern** %pat.addr, align 8
  %18 = load i64, i64* %val, align 8
  %call10 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp11 = icmp eq i64 %18, %call10
  %cond = select i1 %cmp11, i32 0, i32 1
  %call13 = call i32 @FcPatternAddBool(%struct._FcPattern* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i32 %cond)
  br label %if.end.129

if.else:                                          ; preds = %for.body
  %19 = load i64, i64* %key, align 8
  %call14 = call i64 @builtin_lisp_symbol(i32 61)
  %cmp15 = icmp eq i64 %19, %call14
  br i1 %cmp15, label %if.then.17, label %if.else.23

if.then.17:                                       ; preds = %if.else
  %20 = load %struct._FcPattern*, %struct._FcPattern** %pat.addr, align 8
  %21 = load i64, i64* %val, align 8
  %call18 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp19 = icmp eq i64 %21, %call18
  %cond21 = select i1 %cmp19, i32 0, i32 1
  %call22 = call i32 @FcPatternAddBool(%struct._FcPattern* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i32 %cond21)
  br label %if.end.128

if.else.23:                                       ; preds = %if.else
  %22 = load i64, i64* %key, align 8
  %call24 = call i64 @builtin_lisp_symbol(i32 11)
  %cmp25 = icmp eq i64 %22, %call24
  br i1 %cmp25, label %if.then.27, label %if.else.33

if.then.27:                                       ; preds = %if.else.23
  %23 = load %struct._FcPattern*, %struct._FcPattern** %pat.addr, align 8
  %24 = load i64, i64* %val, align 8
  %call28 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp29 = icmp eq i64 %24, %call28
  %cond31 = select i1 %cmp29, i32 0, i32 1
  %call32 = call i32 @FcPatternAddBool(%struct._FcPattern* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 %cond31)
  br label %if.end.127

if.else.33:                                       ; preds = %if.else.23
  %25 = load i64, i64* %key, align 8
  %call34 = call i64 @builtin_lisp_symbol(i32 62)
  %cmp35 = icmp eq i64 %25, %call34
  br i1 %cmp35, label %if.then.37, label %if.else.57

if.then.37:                                       ; preds = %if.else.33
  %26 = load i64, i64* %val, align 8
  %and38 = and i64 %26, 7
  %conv39 = trunc i64 %and38 to i32
  %and40 = and i32 %conv39, -5
  %cmp41 = icmp eq i32 %and40, 2
  br i1 %cmp41, label %if.then.43, label %if.else.46

if.then.43:                                       ; preds = %if.then.37
  %27 = load %struct._FcPattern*, %struct._FcPattern** %pat.addr, align 8
  %28 = load i64, i64* %val, align 8
  %shr = ashr i64 %28, 2
  %conv44 = trunc i64 %shr to i32
  %call45 = call i32 @FcPatternAddInteger(%struct._FcPattern* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i32 %conv44)
  br label %if.end.56

if.else.46:                                       ; preds = %if.then.37
  %29 = load i64, i64* %val, align 8
  %and47 = and i64 %29, 7
  %conv48 = trunc i64 %and47 to i32
  %cmp49 = icmp eq i32 %conv48, 0
  br i1 %cmp49, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else.46
  %30 = load i64, i64* %val, align 8
  %call51 = call i64 @SYMBOL_NAME(i64 %30)
  %call52 = call i8* @SDATA(i64 %call51)
  %call53 = call i32 @FcNameConstant(i8* %call52, i32* %ival)
  %tobool = icmp ne i32 %call53, 0
  br i1 %tobool, label %if.then.54, label %if.end

if.then.54:                                       ; preds = %land.lhs.true
  %31 = load %struct._FcPattern*, %struct._FcPattern** %pat.addr, align 8
  %32 = load i32, i32* %ival, align 4
  %call55 = call i32 @FcPatternAddInteger(%struct._FcPattern* %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i32 %32)
  br label %if.end

if.end:                                           ; preds = %if.then.54, %land.lhs.true, %if.else.46
  br label %if.end.56

if.end.56:                                        ; preds = %if.end, %if.then.43
  br label %if.end.126

if.else.57:                                       ; preds = %if.else.33
  %33 = load i64, i64* %key, align 8
  %call58 = call i64 @builtin_lisp_symbol(i32 110)
  %cmp59 = icmp eq i64 %33, %call58
  br i1 %cmp59, label %if.then.61, label %if.else.85

if.then.61:                                       ; preds = %if.else.57
  %34 = load i64, i64* %val, align 8
  %and62 = and i64 %34, 7
  %conv63 = trunc i64 %and62 to i32
  %and64 = and i32 %conv63, -5
  %cmp65 = icmp eq i32 %and64, 2
  br i1 %cmp65, label %if.then.67, label %if.else.71

if.then.67:                                       ; preds = %if.then.61
  %35 = load %struct._FcPattern*, %struct._FcPattern** %pat.addr, align 8
  %36 = load i64, i64* %val, align 8
  %shr68 = ashr i64 %36, 2
  %conv69 = trunc i64 %shr68 to i32
  %call70 = call i32 @FcPatternAddInteger(%struct._FcPattern* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i32 %conv69)
  br label %if.end.84

if.else.71:                                       ; preds = %if.then.61
  %37 = load i64, i64* %val, align 8
  %and72 = and i64 %37, 7
  %conv73 = trunc i64 %and72 to i32
  %cmp74 = icmp eq i32 %conv73, 0
  br i1 %cmp74, label %land.lhs.true.76, label %if.end.83

land.lhs.true.76:                                 ; preds = %if.else.71
  %38 = load i64, i64* %val, align 8
  %call77 = call i64 @SYMBOL_NAME(i64 %38)
  %call78 = call i8* @SDATA(i64 %call77)
  %call79 = call i32 @FcNameConstant(i8* %call78, i32* %ival)
  %tobool80 = icmp ne i32 %call79, 0
  br i1 %tobool80, label %if.then.81, label %if.end.83

if.then.81:                                       ; preds = %land.lhs.true.76
  %39 = load %struct._FcPattern*, %struct._FcPattern** %pat.addr, align 8
  %40 = load i32, i32* %ival, align 4
  %call82 = call i32 @FcPatternAddInteger(%struct._FcPattern* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i32 %40)
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.81, %land.lhs.true.76, %if.else.71
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.then.67
  br label %if.end.125

if.else.85:                                       ; preds = %if.else.57
  %41 = load i64, i64* %key, align 8
  %call86 = call i64 @builtin_lisp_symbol(i32 74)
  %cmp87 = icmp eq i64 %41, %call86
  br i1 %cmp87, label %if.then.89, label %if.else.113

if.then.89:                                       ; preds = %if.else.85
  %42 = load i64, i64* %val, align 8
  %and90 = and i64 %42, 7
  %conv91 = trunc i64 %and90 to i32
  %and92 = and i32 %conv91, -5
  %cmp93 = icmp eq i32 %and92, 2
  br i1 %cmp93, label %if.then.95, label %if.else.99

if.then.95:                                       ; preds = %if.then.89
  %43 = load %struct._FcPattern*, %struct._FcPattern** %pat.addr, align 8
  %44 = load i64, i64* %val, align 8
  %shr96 = ashr i64 %44, 2
  %conv97 = trunc i64 %shr96 to i32
  store i32 %conv97, i32* %ival, align 4
  %call98 = call i32 @FcPatternAddInteger(%struct._FcPattern* %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i32 %conv97)
  br label %if.end.112

if.else.99:                                       ; preds = %if.then.89
  %45 = load i64, i64* %val, align 8
  %and100 = and i64 %45, 7
  %conv101 = trunc i64 %and100 to i32
  %cmp102 = icmp eq i32 %conv101, 0
  br i1 %cmp102, label %land.lhs.true.104, label %if.end.111

land.lhs.true.104:                                ; preds = %if.else.99
  %46 = load i64, i64* %val, align 8
  %call105 = call i64 @SYMBOL_NAME(i64 %46)
  %call106 = call i8* @SDATA(i64 %call105)
  %call107 = call i32 @FcNameConstant(i8* %call106, i32* %ival)
  %tobool108 = icmp ne i32 %call107, 0
  br i1 %tobool108, label %if.then.109, label %if.end.111

if.then.109:                                      ; preds = %land.lhs.true.104
  %47 = load %struct._FcPattern*, %struct._FcPattern** %pat.addr, align 8
  %48 = load i32, i32* %ival, align 4
  %call110 = call i32 @FcPatternAddInteger(%struct._FcPattern* %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i32 %48)
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.109, %land.lhs.true.104, %if.else.99
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %if.then.95
  br label %if.end.124

if.else.113:                                      ; preds = %if.else.85
  %49 = load i64, i64* %key, align 8
  %call114 = call i64 @builtin_lisp_symbol(i32 36)
  %cmp115 = icmp eq i64 %49, %call114
  br i1 %cmp115, label %if.then.117, label %if.end.123

if.then.117:                                      ; preds = %if.else.113
  %50 = load %struct._FcPattern*, %struct._FcPattern** %pat.addr, align 8
  %51 = load i64, i64* %val, align 8
  %call118 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp119 = icmp eq i64 %51, %call118
  %cond121 = select i1 %cmp119, i32 0, i32 1
  %call122 = call i32 @FcPatternAddBool(%struct._FcPattern* %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 %cond121)
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.117, %if.else.113
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123, %if.end.112
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.124, %if.end.84
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125, %if.end.56
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126, %if.then.27
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %if.then.17
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.129
  %52 = load i64, i64* %tail, align 8
  %sub130 = sub nsw i64 %52, 3
  %53 = inttoptr i64 %sub130 to i8*
  %54 = bitcast i8* %53 to %struct.Lisp_Cons*
  %u131 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %54, i32 0, i32 1
  %cdr132 = bitcast %union.anon.10* %u131 to i64*
  %55 = load i64, i64* %cdr132, align 8
  store i64 %55, i64* %tail, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @block_input() #1

declare void @XftDefaultSubstitute(%struct._XDisplay*, i32, %struct._FcPattern*) #1

declare i32 @XScreenNumberOfScreen(%struct.Screen*) #1

declare %struct._FcPattern* @XftFontMatch(%struct._XDisplay*, i32, %struct._FcPattern*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @xftfont_fix_match(%struct._FcPattern* %pat, %struct._FcPattern* %match) #0 {
entry:
  %pat.addr = alloca %struct._FcPattern*, align 8
  %match.addr = alloca %struct._FcPattern*, align 8
  %b = alloca i32, align 4
  %i = alloca i32, align 4
  %dpi = alloca double, align 8
  store %struct._FcPattern* %pat, %struct._FcPattern** %pat.addr, align 8
  store %struct._FcPattern* %match, %struct._FcPattern** %match.addr, align 8
  store i32 1, i32* %b, align 4
  %0 = load %struct._FcPattern*, %struct._FcPattern** %pat.addr, align 8
  %call = call i32 @FcPatternGetBool(%struct._FcPattern* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i32 0, i32* %b)
  %1 = load i32, i32* %b, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._FcPattern*, %struct._FcPattern** %match.addr, align 8
  %call1 = call i32 @FcPatternDel(%struct._FcPattern* %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0))
  %3 = load %struct._FcPattern*, %struct._FcPattern** %match.addr, align 8
  %call2 = call i32 @FcPatternAddBool(%struct._FcPattern* %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._FcPattern*, %struct._FcPattern** %pat.addr, align 8
  %call3 = call i32 @FcPatternGetBool(%struct._FcPattern* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i32 0, i32* %b)
  %5 = load i32, i32* %b, align 4
  %tobool4 = icmp ne i32 %5, 0
  br i1 %tobool4, label %if.end.8, label %if.then.5

if.then.5:                                        ; preds = %if.end
  %6 = load %struct._FcPattern*, %struct._FcPattern** %match.addr, align 8
  %call6 = call i32 @FcPatternDel(%struct._FcPattern* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0))
  %7 = load %struct._FcPattern*, %struct._FcPattern** %match.addr, align 8
  %call7 = call i32 @FcPatternAddBool(%struct._FcPattern* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i32 0)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %8 = load %struct._FcPattern*, %struct._FcPattern** %pat.addr, align 8
  %call9 = call i32 @FcPatternGetInteger(%struct._FcPattern* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i32 0, i32* %i)
  %cmp = icmp eq i32 0, %call9
  br i1 %cmp, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.end.8
  %9 = load %struct._FcPattern*, %struct._FcPattern** %match.addr, align 8
  %call11 = call i32 @FcPatternDel(%struct._FcPattern* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0))
  %10 = load %struct._FcPattern*, %struct._FcPattern** %match.addr, align 8
  %11 = load i32, i32* %i, align 4
  %call12 = call i32 @FcPatternAddInteger(%struct._FcPattern* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i32 %11)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %if.end.8
  %12 = load %struct._FcPattern*, %struct._FcPattern** %pat.addr, align 8
  %call14 = call i32 @FcPatternGetInteger(%struct._FcPattern* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i32 0, i32* %i)
  %cmp15 = icmp eq i32 0, %call14
  br i1 %cmp15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %if.end.13
  %13 = load %struct._FcPattern*, %struct._FcPattern** %match.addr, align 8
  %call17 = call i32 @FcPatternDel(%struct._FcPattern* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0))
  %14 = load %struct._FcPattern*, %struct._FcPattern** %match.addr, align 8
  %15 = load i32, i32* %i, align 4
  %call18 = call i32 @FcPatternAddInteger(%struct._FcPattern* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i32 %15)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %if.end.13
  %16 = load %struct._FcPattern*, %struct._FcPattern** %pat.addr, align 8
  %call20 = call i32 @FcPatternGetInteger(%struct._FcPattern* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i32 0, i32* %i)
  %cmp21 = icmp eq i32 0, %call20
  br i1 %cmp21, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %if.end.19
  %17 = load %struct._FcPattern*, %struct._FcPattern** %match.addr, align 8
  %call23 = call i32 @FcPatternDel(%struct._FcPattern* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0))
  %18 = load %struct._FcPattern*, %struct._FcPattern** %match.addr, align 8
  %19 = load i32, i32* %i, align 4
  %call24 = call i32 @FcPatternAddInteger(%struct._FcPattern* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i32 %19)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %if.end.19
  %20 = load %struct._FcPattern*, %struct._FcPattern** %pat.addr, align 8
  %call26 = call i32 @FcPatternGetDouble(%struct._FcPattern* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i32 0, double* %dpi)
  %cmp27 = icmp eq i32 0, %call26
  br i1 %cmp27, label %if.then.28, label %if.end.31

if.then.28:                                       ; preds = %if.end.25
  %21 = load %struct._FcPattern*, %struct._FcPattern** %match.addr, align 8
  %call29 = call i32 @FcPatternDel(%struct._FcPattern* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0))
  %22 = load %struct._FcPattern*, %struct._FcPattern** %match.addr, align 8
  %23 = load double, double* %dpi, align 8
  %call30 = call i32 @FcPatternAddDouble(%struct._FcPattern* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), double %23)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.28, %if.end.25
  ret void
}

declare void @FcPatternDestroy(%struct._FcPattern*) #1

declare %struct._XftFont* @XftFontOpenPattern(%struct._XDisplay*, %struct._FcPattern*) #1

declare void @unblock_input() #1

declare %struct.FT_FaceRec_* @XftLockFace(%struct._XftFont*) #1

declare i64 @font_build_object(i32, i64, i64, double) #1

declare %struct.font* @XFONT_OBJECT(i64) #1

declare i32 @FcPatternGetMatrix(%struct._FcPattern*, i8*, i32, %struct._FcMatrix**) #1

declare void @XftTextExtents8(%struct._XDisplay*, %struct._XftFont*, i8*, i32, %struct._XGlyphInfo*) #1

declare i32 @FT_Get_BDF_Property(%struct.FT_FaceRec_*, i8*, %struct.BDF_PropertyRec_*) #1

declare i32 @FcNameConstant(i8*, i32*) #1

declare i32 @FcPatternGetBool(%struct._FcPattern*, i8*, i32, i32*) #1

declare i32 @FcPatternDel(%struct._FcPattern*, i8*) #1

declare i32 @FcPatternGetInteger(%struct._FcPattern*, i8*, i32, i32*) #1

declare i32 @FcPatternGetDouble(%struct._FcPattern*, i8*, i32, double*) #1

declare %struct.x_display_info* @x_display_info_for_display(%struct._XDisplay*) #1

declare void @XftUnlockFace(%struct._XftFont*) #1

declare void @XftFontClose(%struct._XDisplay*, %struct._XftFont*) #1

declare noalias i8* @xmalloc(i64) #1

; Function Attrs: nounwind uwtable
define internal void @xftfont_get_colors(%struct.frame* %f, %struct.face* %face, %struct._XGC* %gc, %struct.xftface_info* %xftface_info, %struct._XftColor* %fg, %struct._XftColor* %bg) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %face.addr = alloca %struct.face*, align 8
  %gc.addr = alloca %struct._XGC*, align 8
  %xftface_info.addr = alloca %struct.xftface_info*, align 8
  %fg.addr = alloca %struct._XftColor*, align 8
  %bg.addr = alloca %struct._XftColor*, align 8
  %xgcv = alloca %struct.XGCValues, align 8
  %fg_done = alloca i8, align 1
  %bg_done = alloca i8, align 1
  %colors = alloca [2 x %struct.XColor], align 16
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store %struct.face* %face, %struct.face** %face.addr, align 8
  store %struct._XGC* %gc, %struct._XGC** %gc.addr, align 8
  store %struct.xftface_info* %xftface_info, %struct.xftface_info** %xftface_info.addr, align 8
  store %struct._XftColor* %fg, %struct._XftColor** %fg.addr, align 8
  store %struct._XftColor* %bg, %struct._XftColor** %bg.addr, align 8
  %0 = load %struct.xftface_info*, %struct.xftface_info** %xftface_info.addr, align 8
  %tobool = icmp ne %struct.xftface_info* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.face*, %struct.face** %face.addr, align 8
  %gc1 = getelementptr inbounds %struct.face, %struct.face* %1, i32 0, i32 2
  %2 = load %struct._XGC*, %struct._XGC** %gc1, align 8
  %3 = load %struct._XGC*, %struct._XGC** %gc.addr, align 8
  %cmp = icmp eq %struct._XGC* %2, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct._XftColor*, %struct._XftColor** %fg.addr, align 8
  %5 = load %struct.xftface_info*, %struct.xftface_info** %xftface_info.addr, align 8
  %xft_fg = getelementptr inbounds %struct.xftface_info, %struct.xftface_info* %5, i32 0, i32 0
  %6 = bitcast %struct._XftColor* %4 to i8*
  %7 = bitcast %struct._XftColor* %xft_fg to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 16, i32 8, i1 false)
  %8 = load %struct._XftColor*, %struct._XftColor** %bg.addr, align 8
  %tobool2 = icmp ne %struct._XftColor* %8, null
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %9 = load %struct._XftColor*, %struct._XftColor** %bg.addr, align 8
  %10 = load %struct.xftface_info*, %struct.xftface_info** %xftface_info.addr, align 8
  %xft_bg = getelementptr inbounds %struct.xftface_info, %struct.xftface_info* %10, i32 0, i32 1
  %11 = bitcast %struct._XftColor* %9 to i8*
  %12 = bitcast %struct._XftColor* %xft_bg to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 16, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.77

if.else:                                          ; preds = %land.lhs.true, %entry
  store i8 0, i8* %fg_done, align 1
  store i8 0, i8* %bg_done, align 1
  call void @block_input()
  %13 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %13, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %14 = load %struct.x_output*, %struct.x_output** %x, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %14, i32 0, i32 44
  %15 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %15, i32 0, i32 2
  %16 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %17 = load %struct._XGC*, %struct._XGC** %gc.addr, align 8
  %call = call i32 @XGetGCValues(%struct._XDisplay* %16, %struct._XGC* %17, i64 12, %struct.XGCValues* %xgcv)
  %18 = load %struct.xftface_info*, %struct.xftface_info** %xftface_info.addr, align 8
  %tobool4 = icmp ne %struct.xftface_info* %18, null
  br i1 %tobool4, label %if.then.5, label %if.end.34

if.then.5:                                        ; preds = %if.else
  %foreground = getelementptr inbounds %struct.XGCValues, %struct.XGCValues* %xgcv, i32 0, i32 2
  %19 = load i64, i64* %foreground, align 8
  %20 = load %struct.face*, %struct.face** %face.addr, align 8
  %foreground6 = getelementptr inbounds %struct.face, %struct.face* %20, i32 0, i32 4
  %21 = load i64, i64* %foreground6, align 8
  %cmp7 = icmp eq i64 %19, %21
  br i1 %cmp7, label %if.then.8, label %if.else.10

if.then.8:                                        ; preds = %if.then.5
  %22 = load %struct._XftColor*, %struct._XftColor** %fg.addr, align 8
  %23 = load %struct.xftface_info*, %struct.xftface_info** %xftface_info.addr, align 8
  %xft_fg9 = getelementptr inbounds %struct.xftface_info, %struct.xftface_info* %23, i32 0, i32 0
  %24 = bitcast %struct._XftColor* %22 to i8*
  %25 = bitcast %struct._XftColor* %xft_fg9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 16, i32 8, i1 false)
  store i8 1, i8* %fg_done, align 1
  br label %if.end.16

if.else.10:                                       ; preds = %if.then.5
  %foreground11 = getelementptr inbounds %struct.XGCValues, %struct.XGCValues* %xgcv, i32 0, i32 2
  %26 = load i64, i64* %foreground11, align 8
  %27 = load %struct.face*, %struct.face** %face.addr, align 8
  %background = getelementptr inbounds %struct.face, %struct.face* %27, i32 0, i32 5
  %28 = load i64, i64* %background, align 8
  %cmp12 = icmp eq i64 %26, %28
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.else.10
  %29 = load %struct._XftColor*, %struct._XftColor** %fg.addr, align 8
  %30 = load %struct.xftface_info*, %struct.xftface_info** %xftface_info.addr, align 8
  %xft_bg14 = getelementptr inbounds %struct.xftface_info, %struct.xftface_info* %30, i32 0, i32 1
  %31 = bitcast %struct._XftColor* %29 to i8*
  %32 = bitcast %struct._XftColor* %xft_bg14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 16, i32 8, i1 false)
  store i8 1, i8* %fg_done, align 1
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.else.10
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.then.8
  %33 = load %struct._XftColor*, %struct._XftColor** %bg.addr, align 8
  %tobool17 = icmp ne %struct._XftColor* %33, null
  br i1 %tobool17, label %if.else.19, label %if.then.18

if.then.18:                                       ; preds = %if.end.16
  store i8 1, i8* %bg_done, align 1
  br label %if.end.33

if.else.19:                                       ; preds = %if.end.16
  %background20 = getelementptr inbounds %struct.XGCValues, %struct.XGCValues* %xgcv, i32 0, i32 3
  %34 = load i64, i64* %background20, align 8
  %35 = load %struct.face*, %struct.face** %face.addr, align 8
  %background21 = getelementptr inbounds %struct.face, %struct.face* %35, i32 0, i32 5
  %36 = load i64, i64* %background21, align 8
  %cmp22 = icmp eq i64 %34, %36
  br i1 %cmp22, label %if.then.23, label %if.else.25

if.then.23:                                       ; preds = %if.else.19
  %37 = load %struct._XftColor*, %struct._XftColor** %bg.addr, align 8
  %38 = load %struct.xftface_info*, %struct.xftface_info** %xftface_info.addr, align 8
  %xft_bg24 = getelementptr inbounds %struct.xftface_info, %struct.xftface_info* %38, i32 0, i32 1
  %39 = bitcast %struct._XftColor* %37 to i8*
  %40 = bitcast %struct._XftColor* %xft_bg24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 16, i32 8, i1 false)
  store i8 1, i8* %bg_done, align 1
  br label %if.end.32

if.else.25:                                       ; preds = %if.else.19
  %background26 = getelementptr inbounds %struct.XGCValues, %struct.XGCValues* %xgcv, i32 0, i32 3
  %41 = load i64, i64* %background26, align 8
  %42 = load %struct.face*, %struct.face** %face.addr, align 8
  %foreground27 = getelementptr inbounds %struct.face, %struct.face* %42, i32 0, i32 4
  %43 = load i64, i64* %foreground27, align 8
  %cmp28 = icmp eq i64 %41, %43
  br i1 %cmp28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %if.else.25
  %44 = load %struct._XftColor*, %struct._XftColor** %bg.addr, align 8
  %45 = load %struct.xftface_info*, %struct.xftface_info** %xftface_info.addr, align 8
  %xft_fg30 = getelementptr inbounds %struct.xftface_info, %struct.xftface_info* %45, i32 0, i32 0
  %46 = bitcast %struct._XftColor* %44 to i8*
  %47 = bitcast %struct._XftColor* %xft_fg30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 16, i32 8, i1 false)
  store i8 1, i8* %bg_done, align 1
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %if.else.25
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.23
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.18
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.else
  %48 = load i8, i8* %fg_done, align 1
  %tobool35 = trunc i8 %48 to i1
  %conv = zext i1 %tobool35 to i32
  %49 = load i8, i8* %bg_done, align 1
  %tobool36 = trunc i8 %49 to i1
  %conv37 = zext i1 %tobool36 to i32
  %and = and i32 %conv, %conv37
  %tobool38 = icmp ne i32 %and, 0
  br i1 %tobool38, label %if.end.76, label %if.then.39

if.then.39:                                       ; preds = %if.end.34
  %foreground40 = getelementptr inbounds %struct.XGCValues, %struct.XGCValues* %xgcv, i32 0, i32 2
  %50 = load i64, i64* %foreground40, align 8
  %51 = load %struct._XftColor*, %struct._XftColor** %fg.addr, align 8
  %pixel = getelementptr inbounds %struct._XftColor, %struct._XftColor* %51, i32 0, i32 0
  store i64 %50, i64* %pixel, align 8
  %arrayidx = getelementptr inbounds [2 x %struct.XColor], [2 x %struct.XColor]* %colors, i32 0, i64 0
  %pixel41 = getelementptr inbounds %struct.XColor, %struct.XColor* %arrayidx, i32 0, i32 0
  store i64 %50, i64* %pixel41, align 8
  %52 = load %struct._XftColor*, %struct._XftColor** %bg.addr, align 8
  %tobool42 = icmp ne %struct._XftColor* %52, null
  br i1 %tobool42, label %if.then.43, label %if.end.48

if.then.43:                                       ; preds = %if.then.39
  %background44 = getelementptr inbounds %struct.XGCValues, %struct.XGCValues* %xgcv, i32 0, i32 3
  %53 = load i64, i64* %background44, align 8
  %54 = load %struct._XftColor*, %struct._XftColor** %bg.addr, align 8
  %pixel45 = getelementptr inbounds %struct._XftColor, %struct._XftColor* %54, i32 0, i32 0
  store i64 %53, i64* %pixel45, align 8
  %arrayidx46 = getelementptr inbounds [2 x %struct.XColor], [2 x %struct.XColor]* %colors, i32 0, i64 1
  %pixel47 = getelementptr inbounds %struct.XColor, %struct.XColor* %arrayidx46, i32 0, i32 0
  store i64 %53, i64* %pixel47, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.43, %if.then.39
  %55 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %arraydecay = getelementptr inbounds [2 x %struct.XColor], [2 x %struct.XColor]* %colors, i32 0, i32 0
  %56 = load %struct._XftColor*, %struct._XftColor** %bg.addr, align 8
  %tobool49 = icmp ne %struct._XftColor* %56, null
  %cond = select i1 %tobool49, i32 2, i32 1
  call void @x_query_colors(%struct.frame* %55, %struct.XColor* %arraydecay, i32 %cond)
  %57 = load %struct._XftColor*, %struct._XftColor** %fg.addr, align 8
  %color = getelementptr inbounds %struct._XftColor, %struct._XftColor* %57, i32 0, i32 1
  %alpha = getelementptr inbounds %struct.XRenderColor, %struct.XRenderColor* %color, i32 0, i32 3
  store i16 -1, i16* %alpha, align 2
  %arrayidx50 = getelementptr inbounds [2 x %struct.XColor], [2 x %struct.XColor]* %colors, i32 0, i64 0
  %red = getelementptr inbounds %struct.XColor, %struct.XColor* %arrayidx50, i32 0, i32 1
  %58 = load i16, i16* %red, align 2
  %59 = load %struct._XftColor*, %struct._XftColor** %fg.addr, align 8
  %color51 = getelementptr inbounds %struct._XftColor, %struct._XftColor* %59, i32 0, i32 1
  %red52 = getelementptr inbounds %struct.XRenderColor, %struct.XRenderColor* %color51, i32 0, i32 0
  store i16 %58, i16* %red52, align 2
  %arrayidx53 = getelementptr inbounds [2 x %struct.XColor], [2 x %struct.XColor]* %colors, i32 0, i64 0
  %green = getelementptr inbounds %struct.XColor, %struct.XColor* %arrayidx53, i32 0, i32 2
  %60 = load i16, i16* %green, align 2
  %61 = load %struct._XftColor*, %struct._XftColor** %fg.addr, align 8
  %color54 = getelementptr inbounds %struct._XftColor, %struct._XftColor* %61, i32 0, i32 1
  %green55 = getelementptr inbounds %struct.XRenderColor, %struct.XRenderColor* %color54, i32 0, i32 1
  store i16 %60, i16* %green55, align 2
  %arrayidx56 = getelementptr inbounds [2 x %struct.XColor], [2 x %struct.XColor]* %colors, i32 0, i64 0
  %blue = getelementptr inbounds %struct.XColor, %struct.XColor* %arrayidx56, i32 0, i32 3
  %62 = load i16, i16* %blue, align 2
  %63 = load %struct._XftColor*, %struct._XftColor** %fg.addr, align 8
  %color57 = getelementptr inbounds %struct._XftColor, %struct._XftColor* %63, i32 0, i32 1
  %blue58 = getelementptr inbounds %struct.XRenderColor, %struct.XRenderColor* %color57, i32 0, i32 2
  store i16 %62, i16* %blue58, align 2
  %64 = load %struct._XftColor*, %struct._XftColor** %bg.addr, align 8
  %tobool59 = icmp ne %struct._XftColor* %64, null
  br i1 %tobool59, label %if.then.60, label %if.end.75

if.then.60:                                       ; preds = %if.end.48
  %65 = load %struct._XftColor*, %struct._XftColor** %bg.addr, align 8
  %color61 = getelementptr inbounds %struct._XftColor, %struct._XftColor* %65, i32 0, i32 1
  %alpha62 = getelementptr inbounds %struct.XRenderColor, %struct.XRenderColor* %color61, i32 0, i32 3
  store i16 -1, i16* %alpha62, align 2
  %arrayidx63 = getelementptr inbounds [2 x %struct.XColor], [2 x %struct.XColor]* %colors, i32 0, i64 1
  %red64 = getelementptr inbounds %struct.XColor, %struct.XColor* %arrayidx63, i32 0, i32 1
  %66 = load i16, i16* %red64, align 2
  %67 = load %struct._XftColor*, %struct._XftColor** %bg.addr, align 8
  %color65 = getelementptr inbounds %struct._XftColor, %struct._XftColor* %67, i32 0, i32 1
  %red66 = getelementptr inbounds %struct.XRenderColor, %struct.XRenderColor* %color65, i32 0, i32 0
  store i16 %66, i16* %red66, align 2
  %arrayidx67 = getelementptr inbounds [2 x %struct.XColor], [2 x %struct.XColor]* %colors, i32 0, i64 1
  %green68 = getelementptr inbounds %struct.XColor, %struct.XColor* %arrayidx67, i32 0, i32 2
  %68 = load i16, i16* %green68, align 2
  %69 = load %struct._XftColor*, %struct._XftColor** %bg.addr, align 8
  %color69 = getelementptr inbounds %struct._XftColor, %struct._XftColor* %69, i32 0, i32 1
  %green70 = getelementptr inbounds %struct.XRenderColor, %struct.XRenderColor* %color69, i32 0, i32 1
  store i16 %68, i16* %green70, align 2
  %arrayidx71 = getelementptr inbounds [2 x %struct.XColor], [2 x %struct.XColor]* %colors, i32 0, i64 1
  %blue72 = getelementptr inbounds %struct.XColor, %struct.XColor* %arrayidx71, i32 0, i32 3
  %70 = load i16, i16* %blue72, align 2
  %71 = load %struct._XftColor*, %struct._XftColor** %bg.addr, align 8
  %color73 = getelementptr inbounds %struct._XftColor, %struct._XftColor* %71, i32 0, i32 1
  %blue74 = getelementptr inbounds %struct.XRenderColor, %struct.XRenderColor* %color73, i32 0, i32 2
  store i16 %70, i16* %blue74, align 2
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.60, %if.end.48
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.end.34
  call void @unblock_input()
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.end
  ret void
}

declare i32 @XGetGCValues(%struct._XDisplay*, %struct._XGC*, i64, %struct.XGCValues*) #1

declare void @x_query_colors(%struct.frame*, %struct.XColor*, i32) #1

declare void @xfree(i8*) #1

declare i32 @encode_char(%struct.charset*, i32) #1

declare zeroext i1 @CHAR_TABLE_P(i64) #1

declare i64 @HASH_VALUE(%struct.Lisp_Hash_Table*, i64) #1

declare %struct.Lisp_Hash_Table* @XHASH_TABLE(i64) #1

declare i64 @CHAR_TABLE_REF(i64, i32) #1

declare zeroext i1 @FONT_ENTITY_P(i64) #1

declare i32 @XftCharExists(%struct._XDisplay*, %struct._XftFont*, i32) #1

declare i32 @XftCharIndex(%struct._XDisplay*, %struct._XftFont*, i32) #1

declare void @XftGlyphExtents(%struct._XDisplay*, %struct._XftFont*, i32*, i32, %struct._XGlyphInfo*) #1

; Function Attrs: nounwind uwtable
define internal %struct._XftDraw* @xftfont_get_xft_draw(%struct.frame* %f) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %xft_draw = alloca %struct._XftDraw*, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 1063)
  %call1 = call i8* @font_get_frame_data(%struct.frame* %0, i64 %call)
  %1 = bitcast i8* %call1 to %struct._XftDraw*
  store %struct._XftDraw* %1, %struct._XftDraw** %xft_draw, align 8
  %2 = load %struct._XftDraw*, %struct._XftDraw** %xft_draw, align 8
  %tobool = icmp ne %struct._XftDraw* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @block_input()
  %3 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %3, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %4 = load %struct.x_output*, %struct.x_output** %x, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %4, i32 0, i32 44
  %5 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %5, i32 0, i32 2
  %6 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %7 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data2 = getelementptr inbounds %struct.frame, %struct.frame* %7, i32 0, i32 62
  %x3 = bitcast %union.output_data* %output_data2 to %struct.x_output**
  %8 = load %struct.x_output*, %struct.x_output** %x3, align 8
  %window_desc = getelementptr inbounds %struct.x_output, %struct.x_output* %8, i32 0, i32 9
  %9 = load i64, i64* %window_desc, align 8
  %10 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data4 = getelementptr inbounds %struct.frame, %struct.frame* %10, i32 0, i32 62
  %x5 = bitcast %union.output_data* %output_data4 to %struct.x_output**
  %11 = load %struct.x_output*, %struct.x_output** %x5, align 8
  %display_info6 = getelementptr inbounds %struct.x_output, %struct.x_output* %11, i32 0, i32 44
  %12 = load %struct.x_display_info*, %struct.x_display_info** %display_info6, align 8
  %visual = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %12, i32 0, i32 9
  %13 = load %struct.Visual*, %struct.Visual** %visual, align 8
  %14 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data7 = getelementptr inbounds %struct.frame, %struct.frame* %14, i32 0, i32 62
  %x8 = bitcast %union.output_data* %output_data7 to %struct.x_output**
  %15 = load %struct.x_output*, %struct.x_output** %x8, align 8
  %display_info9 = getelementptr inbounds %struct.x_output, %struct.x_output* %15, i32 0, i32 44
  %16 = load %struct.x_display_info*, %struct.x_display_info** %display_info9, align 8
  %cmap = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %16, i32 0, i32 10
  %17 = load i64, i64* %cmap, align 8
  %call10 = call %struct._XftDraw* @XftDrawCreate(%struct._XDisplay* %6, i64 %9, %struct.Visual* %13, i64 %17)
  store %struct._XftDraw* %call10, %struct._XftDraw** %xft_draw, align 8
  call void @unblock_input()
  %18 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %call11 = call i64 @builtin_lisp_symbol(i32 1063)
  %19 = load %struct._XftDraw*, %struct._XftDraw** %xft_draw, align 8
  %20 = bitcast %struct._XftDraw* %19 to i8*
  call void @font_put_frame_data(%struct.frame* %18, i64 %call11, i8* %20)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %21 = load %struct._XftDraw*, %struct._XftDraw** %xft_draw, align 8
  ret %struct._XftDraw* %21
}

declare i32 @XftDrawSetClipRectangles(%struct._XftDraw*, i32, i32, %struct.XRectangle*, i32) #1

declare i32 @XftDrawSetClip(%struct._XftDraw*, %struct._XRegion*) #1

declare void @XftDrawRect(%struct._XftDraw*, %struct._XftColor*, i32, i32, i32, i32) #1

declare void @XftDrawGlyphs(%struct._XftDraw*, %struct._XftColor*, %struct._XftFont*, i32, i32, i32*, i32) #1

declare i8* @font_get_frame_data(%struct.frame*, i64) #1

declare %struct._XftDraw* @XftDrawCreate(%struct._XDisplay*, i64, %struct.Visual*, i64) #1

declare void @font_put_frame_data(%struct.frame*, i64, i8*) #1

declare void @XftDrawDestroy(%struct._XftDraw*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
