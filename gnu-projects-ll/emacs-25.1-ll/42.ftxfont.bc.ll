; ModuleID = './src/ftxfont.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.composition = type opaque
%struct.input_event = type { i32, i32, i32, i64, i64, i64, i64, i64 }
%union.output_data = type { %struct.tty_output* }
%struct.tty_output = type opaque
%struct.font_driver_list = type { i8, %struct.font_driver*, %struct.font_driver_list* }
%struct.font_metrics = type { i16, i16, i16, i16, i16 }
%struct.font_bitmap = type { i32, i32, i32, i32, i8*, i32, i32, i32 }
%struct.Lisp_Cons = type { i64, %union.anon.10 }
%union.anon.10 = type { i64 }
%struct.XPoint = type { i16, i16 }
%struct.XGCValues = type { i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i64, i32, i32, i32, i32, i64, i32, i8 }
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
%struct.ftxfont_frame_data = type { [2 x %struct.XColor], [6 x %struct._XGC*], %struct.ftxfont_frame_data* }

@ftxfont_driver = common global %struct.font_driver zeroinitializer, align 8
@ftfont_driver = external global %struct.font_driver, align 8

; Function Attrs: nounwind uwtable
define void @syms_of_ftxfont() #0 {
entry:
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.font_driver* @ftxfont_driver to i8*), i8* bitcast (%struct.font_driver* @ftfont_driver to i8*), i64 224, i32 8, i1 false)
  %call = call i64 @builtin_lisp_symbol(i32 469)
  store i64 %call, i64* getelementptr inbounds (%struct.font_driver, %struct.font_driver* @ftxfont_driver, i32 0, i32 0), align 8
  store i64 (%struct.frame*, i64)* @ftxfont_list, i64 (%struct.frame*, i64)** getelementptr inbounds (%struct.font_driver, %struct.font_driver* @ftxfont_driver, i32 0, i32 3), align 8
  store i64 (%struct.frame*, i64)* @ftxfont_match, i64 (%struct.frame*, i64)** getelementptr inbounds (%struct.font_driver, %struct.font_driver* @ftxfont_driver, i32 0, i32 4), align 8
  store i64 (%struct.frame*, i64, i32)* @ftxfont_open, i64 (%struct.frame*, i64, i32)** getelementptr inbounds (%struct.font_driver, %struct.font_driver* @ftxfont_driver, i32 0, i32 7), align 8
  store void (%struct.font*)* @ftxfont_close, void (%struct.font*)** getelementptr inbounds (%struct.font_driver, %struct.font_driver* @ftxfont_driver, i32 0, i32 8), align 8
  store i32 (%struct.glyph_string*, i32, i32, i32, i32, i1)* @ftxfont_draw, i32 (%struct.glyph_string*, i32, i32, i32, i32, i1)** getelementptr inbounds (%struct.font_driver, %struct.font_driver* @ftxfont_driver, i32 0, i32 14), align 8
  store i32 (%struct.frame*)* @ftxfont_end_for_frame, i32 (%struct.frame*)** getelementptr inbounds (%struct.font_driver, %struct.font_driver* @ftxfont_driver, i32 0, i32 21), align 8
  call void @register_font_driver(%struct.font_driver* @ftxfont_driver, %struct.frame* null)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i64 @builtin_lisp_symbol(i32) #2

; Function Attrs: nounwind uwtable
define internal i64 @ftxfont_list(%struct.frame* %f, i64 %spec) #0 {
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
  %call2 = call i64 @builtin_lisp_symbol(i32 469)
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
define internal i64 @ftxfont_match(%struct.frame* %f, i64 %spec) #0 {
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
  %call1 = call zeroext i1 @VECTORP(i64 %3)
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i64, i64* %entity, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 469)
  call void @ASET(i64 %4, i64 0, i64 %call2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, i64* %entity, align 8
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define internal i64 @ftxfont_open(%struct.frame* %f, i64 %entity, i32 %pixel_size) #0 {
entry:
  %retval = alloca i64, align 8
  %f.addr = alloca %struct.frame*, align 8
  %entity.addr = alloca i64, align 8
  %pixel_size.addr = alloca i32, align 4
  %font_object = alloca i64, align 8
  %font = alloca %struct.font*, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %entity, i64* %entity.addr, align 8
  store i32 %pixel_size, i32* %pixel_size.addr, align 4
  %0 = load i64 (%struct.frame*, i64, i32)*, i64 (%struct.frame*, i64, i32)** getelementptr inbounds (%struct.font_driver, %struct.font_driver* @ftfont_driver, i32 0, i32 7), align 8
  %1 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %2 = load i64, i64* %entity.addr, align 8
  %3 = load i32, i32* %pixel_size.addr, align 4
  %call = call i64 %0(%struct.frame* %1, i64 %2, i32 %3)
  store i64 %call, i64* %font_object, align 8
  %4 = load i64, i64* %font_object, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %4, %call1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call2, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %font_object, align 8
  %call3 = call %struct.font* @XFONT_OBJECT(i64 %5)
  store %struct.font* %call3, %struct.font** %font, align 8
  %6 = load %struct.font*, %struct.font** %font, align 8
  %driver = getelementptr inbounds %struct.font, %struct.font* %6, i32 0, i32 18
  store %struct.font_driver* @ftxfont_driver, %struct.font_driver** %driver, align 8
  %7 = load i64, i64* %font_object, align 8
  store i64 %7, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i64, i64* %retval
  ret i64 %8
}

; Function Attrs: nounwind uwtable
define internal void @ftxfont_close(%struct.font* %font) #0 {
entry:
  %font.addr = alloca %struct.font*, align 8
  store %struct.font* %font, %struct.font** %font.addr, align 8
  %0 = load void (%struct.font*)*, void (%struct.font*)** getelementptr inbounds (%struct.font_driver, %struct.font_driver* @ftfont_driver, i32 0, i32 8), align 8
  %1 = load %struct.font*, %struct.font** %font.addr, align 8
  call void %0(%struct.font* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @ftxfont_draw(%struct.glyph_string* %s, i32 %from, i32 %to, i32 %x, i32 %y, i1 zeroext %with_background) #0 {
entry:
  %s.addr = alloca %struct.glyph_string*, align 8
  %from.addr = alloca i32, align 4
  %to.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %with_background.addr = alloca i8, align 1
  %f = alloca %struct.frame*, align 8
  %face = alloca %struct.face*, align 8
  %font = alloca %struct.font*, align 8
  %p = alloca [1792 x %struct.XPoint], align 16
  %n = alloca [7 x i32], align 16
  %code = alloca i32*, align 8
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  %gcs = alloca %struct._XGC**, align 8
  %xadvance = alloca i32, align 4
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  %xgcv = alloca %struct.XGCValues, align 8
  %mask = alloca i64, align 8
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
  %font3 = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %4, i32 0, i32 18
  %5 = load %struct.font*, %struct.font** %font3, align 8
  store %struct.font* %5, %struct.font** %font, align 8
  %6 = load i32, i32* %to.addr, align 4
  %7 = load i32, i32* %from.addr, align 4
  %sub = sub nsw i32 %6, %7
  store i32 %sub, i32* %len, align 4
  %arrayidx = getelementptr inbounds [7 x i32], [7 x i32]* %n, i32 0, i64 6
  store i32 0, i32* %arrayidx, align 4
  %arrayidx4 = getelementptr inbounds [7 x i32], [7 x i32]* %n, i32 0, i64 5
  store i32 0, i32* %arrayidx4, align 4
  %arrayidx5 = getelementptr inbounds [7 x i32], [7 x i32]* %n, i32 0, i64 4
  store i32 0, i32* %arrayidx5, align 4
  %arrayidx6 = getelementptr inbounds [7 x i32], [7 x i32]* %n, i32 0, i64 3
  store i32 0, i32* %arrayidx6, align 4
  %arrayidx7 = getelementptr inbounds [7 x i32], [7 x i32]* %n, i32 0, i64 2
  store i32 0, i32* %arrayidx7, align 4
  %arrayidx8 = getelementptr inbounds [7 x i32], [7 x i32]* %n, i32 0, i64 1
  store i32 0, i32* %arrayidx8, align 4
  %arrayidx9 = getelementptr inbounds [7 x i32], [7 x i32]* %n, i32 0, i64 0
  store i32 0, i32* %arrayidx9, align 4
  store i64 16384, i64* %sa_avail, align 8
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  %8 = load i32, i32* %len, align 4
  %conv = sext i32 %8 to i64
  %9 = load i64, i64* %sa_avail, align 8
  %div = udiv i64 %9, 4
  %div10 = udiv i64 %div, 1
  %cmp = icmp ule i64 %conv, %div10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %10 = load i32, i32* %len, align 4
  %conv12 = sext i32 %10 to i64
  %mul = mul i64 4, %conv12
  %11 = load i64, i64* %sa_avail, align 8
  %sub13 = sub i64 %11, %mul
  store i64 %sub13, i64* %sa_avail, align 8
  %12 = load i32, i32* %len, align 4
  %conv14 = sext i32 %12 to i64
  %mul15 = mul i64 4, %conv14
  %13 = alloca i8, i64 %mul15
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %code, align 8
  br label %if.end

if.else:                                          ; preds = %do.body
  %15 = load i32, i32* %len, align 4
  %conv16 = sext i32 %15 to i64
  %call17 = call noalias i8* @xnmalloc(i64 %conv16, i64 4)
  %16 = bitcast i8* %call17 to i32*
  store i32* %16, i32** %code, align 8
  store i8 1, i8* %sa_must_free, align 1
  %17 = load i32*, i32** %code, align 8
  %18 = bitcast i32* %17 to i8*
  call void @record_unwind_protect_ptr(void (i8*)* @xfree, i8* %18)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  call void @block_input()
  %19 = load i8, i8* %with_background.addr, align 1
  %tobool = trunc i8 %19 to i1
  br i1 %tobool, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %do.end
  %20 = load %struct.frame*, %struct.frame** %f, align 8
  %21 = load %struct.font*, %struct.font** %font, align 8
  %22 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %gc = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %22, i32 0, i32 24
  %23 = load %struct._XGC*, %struct._XGC** %gc, align 8
  %24 = load i32, i32* %x.addr, align 4
  %25 = load i32, i32* %y.addr, align 4
  %26 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %width = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %26, i32 0, i32 3
  %27 = load i32, i32* %width, align 4
  call void @ftxfont_draw_background(%struct.frame* %20, %struct.font* %21, %struct._XGC* %23, i32 %24, i32 %25, i32 %27)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %do.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.19
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* %len, align 4
  %cmp20 = icmp slt i32 %28, %29
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %char2b = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %30, i32 0, i32 14
  %31 = load %struct.XChar2b*, %struct.XChar2b** %char2b, align 8
  %32 = load i32, i32* %from.addr, align 4
  %idx.ext = sext i32 %32 to i64
  %add.ptr = getelementptr inbounds %struct.XChar2b, %struct.XChar2b* %31, i64 %idx.ext
  %33 = load i32, i32* %i, align 4
  %idx.ext22 = sext i32 %33 to i64
  %add.ptr23 = getelementptr inbounds %struct.XChar2b, %struct.XChar2b* %add.ptr, i64 %idx.ext22
  %byte1 = getelementptr inbounds %struct.XChar2b, %struct.XChar2b* %add.ptr23, i32 0, i32 0
  %34 = load i8, i8* %byte1, align 1
  %conv24 = zext i8 %34 to i32
  %shl = shl i32 %conv24, 8
  %35 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %char2b25 = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %35, i32 0, i32 14
  %36 = load %struct.XChar2b*, %struct.XChar2b** %char2b25, align 8
  %37 = load i32, i32* %from.addr, align 4
  %idx.ext26 = sext i32 %37 to i64
  %add.ptr27 = getelementptr inbounds %struct.XChar2b, %struct.XChar2b* %36, i64 %idx.ext26
  %38 = load i32, i32* %i, align 4
  %idx.ext28 = sext i32 %38 to i64
  %add.ptr29 = getelementptr inbounds %struct.XChar2b, %struct.XChar2b* %add.ptr27, i64 %idx.ext28
  %byte2 = getelementptr inbounds %struct.XChar2b, %struct.XChar2b* %add.ptr29, i32 0, i32 1
  %39 = load i8, i8* %byte2, align 1
  %conv30 = zext i8 %39 to i32
  %or = or i32 %shl, %conv30
  %40 = load i32, i32* %i, align 4
  %idxprom = sext i32 %40 to i64
  %41 = load i32*, i32** %code, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %41, i64 %idxprom
  store i32 %or, i32* %arrayidx31, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %42 = load i32, i32* %i, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %43 = load %struct.face*, %struct.face** %face, align 8
  %gc32 = getelementptr inbounds %struct.face, %struct.face* %43, i32 0, i32 2
  %44 = load %struct._XGC*, %struct._XGC** %gc32, align 8
  %45 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %gc33 = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %45, i32 0, i32 24
  %46 = load %struct._XGC*, %struct._XGC** %gc33, align 8
  %cmp34 = icmp eq %struct._XGC* %44, %46
  br i1 %cmp34, label %if.then.36, label %if.else.38

if.then.36:                                       ; preds = %for.end
  %47 = load %struct.frame*, %struct.frame** %f, align 8
  %48 = load %struct.face*, %struct.face** %face, align 8
  %foreground = getelementptr inbounds %struct.face, %struct.face* %48, i32 0, i32 4
  %49 = load i64, i64* %foreground, align 8
  %50 = load %struct.face*, %struct.face** %face, align 8
  %background = getelementptr inbounds %struct.face, %struct.face* %50, i32 0, i32 5
  %51 = load i64, i64* %background, align 8
  %call37 = call %struct._XGC** @ftxfont_get_gcs(%struct.frame* %47, i64 %49, i64 %51)
  store %struct._XGC** %call37, %struct._XGC*** %gcs, align 8
  br label %if.end.45

if.else.38:                                       ; preds = %for.end
  store i64 12, i64* %mask, align 8
  %52 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %52, i32 0, i32 62
  %x39 = bitcast %union.output_data* %output_data to %struct.x_output**
  %53 = load %struct.x_output*, %struct.x_output** %x39, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %53, i32 0, i32 44
  %54 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %54, i32 0, i32 2
  %55 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %56 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %gc40 = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %56, i32 0, i32 24
  %57 = load %struct._XGC*, %struct._XGC** %gc40, align 8
  %58 = load i64, i64* %mask, align 8
  %call41 = call i32 @XGetGCValues(%struct._XDisplay* %55, %struct._XGC* %57, i64 %58, %struct.XGCValues* %xgcv)
  %59 = load %struct.frame*, %struct.frame** %f, align 8
  %foreground42 = getelementptr inbounds %struct.XGCValues, %struct.XGCValues* %xgcv, i32 0, i32 2
  %60 = load i64, i64* %foreground42, align 8
  %background43 = getelementptr inbounds %struct.XGCValues, %struct.XGCValues* %xgcv, i32 0, i32 3
  %61 = load i64, i64* %background43, align 8
  %call44 = call %struct._XGC** @ftxfont_get_gcs(%struct.frame* %59, i64 %60, i64 %61)
  store %struct._XGC** %call44, %struct._XGC*** %gcs, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.38, %if.then.36
  %62 = load %struct._XGC**, %struct._XGC*** %gcs, align 8
  %tobool46 = icmp ne %struct._XGC** %62, null
  br i1 %tobool46, label %if.then.47, label %if.else.101

if.then.47:                                       ; preds = %if.end.45
  %63 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %num_clips = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %63, i32 0, i32 32
  %64 = load i32, i32* %num_clips, align 4
  %tobool48 = icmp ne i32 %64, 0
  br i1 %tobool48, label %if.then.49, label %if.end.65

if.then.49:                                       ; preds = %if.then.47
  store i32 0, i32* %i, align 4
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.62, %if.then.49
  %65 = load i32, i32* %i, align 4
  %cmp51 = icmp slt i32 %65, 6
  br i1 %cmp51, label %for.body.53, label %for.end.64

for.body.53:                                      ; preds = %for.cond.50
  %66 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data54 = getelementptr inbounds %struct.frame, %struct.frame* %66, i32 0, i32 62
  %x55 = bitcast %union.output_data* %output_data54 to %struct.x_output**
  %67 = load %struct.x_output*, %struct.x_output** %x55, align 8
  %display_info56 = getelementptr inbounds %struct.x_output, %struct.x_output* %67, i32 0, i32 44
  %68 = load %struct.x_display_info*, %struct.x_display_info** %display_info56, align 8
  %display57 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %68, i32 0, i32 2
  %69 = load %struct._XDisplay*, %struct._XDisplay** %display57, align 8
  %70 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %70 to i64
  %71 = load %struct._XGC**, %struct._XGC*** %gcs, align 8
  %arrayidx59 = getelementptr inbounds %struct._XGC*, %struct._XGC** %71, i64 %idxprom58
  %72 = load %struct._XGC*, %struct._XGC** %arrayidx59, align 8
  %73 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %clip = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %73, i32 0, i32 31
  %arraydecay = getelementptr inbounds [2 x %struct.XRectangle], [2 x %struct.XRectangle]* %clip, i32 0, i32 0
  %74 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %num_clips60 = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %74, i32 0, i32 32
  %75 = load i32, i32* %num_clips60, align 4
  %call61 = call i32 @XSetClipRectangles(%struct._XDisplay* %69, %struct._XGC* %72, i32 0, i32 0, %struct.XRectangle* %arraydecay, i32 %75, i32 0)
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.body.53
  %76 = load i32, i32* %i, align 4
  %inc63 = add nsw i32 %76, 1
  store i32 %inc63, i32* %i, align 4
  br label %for.cond.50

for.end.64:                                       ; preds = %for.cond.50
  br label %if.end.65

if.end.65:                                        ; preds = %for.end.64, %if.then.47
  store i32 0, i32* %i, align 4
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc.80, %if.end.65
  %77 = load i32, i32* %i, align 4
  %78 = load i32, i32* %len, align 4
  %cmp67 = icmp slt i32 %77, %78
  br i1 %cmp67, label %for.body.69, label %for.end.82

for.body.69:                                      ; preds = %for.cond.66
  %79 = load %struct.frame*, %struct.frame** %f, align 8
  %80 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %gc70 = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %80, i32 0, i32 24
  %81 = load %struct._XGC*, %struct._XGC** %gc70, align 8
  %82 = load %struct._XGC**, %struct._XGC*** %gcs, align 8
  %83 = load %struct.font*, %struct.font** %font, align 8
  %84 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %84 to i64
  %85 = load i32*, i32** %code, align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %85, i64 %idxprom71
  %86 = load i32, i32* %arrayidx72, align 4
  %87 = load i32, i32* %x.addr, align 4
  %88 = load i32, i32* %y.addr, align 4
  %arraydecay73 = getelementptr inbounds [1792 x %struct.XPoint], [1792 x %struct.XPoint]* %p, i32 0, i32 0
  %arraydecay74 = getelementptr inbounds [7 x i32], [7 x i32]* %n, i32 0, i32 0
  %89 = load i32, i32* %i, align 4
  %add = add nsw i32 %89, 1
  %90 = load i32, i32* %len, align 4
  %cmp75 = icmp eq i32 %add, %90
  %call77 = call i32 @ftxfont_draw_bitmap(%struct.frame* %79, %struct._XGC* %81, %struct._XGC** %82, %struct.font* %83, i32 %86, i32 %87, i32 %88, %struct.XPoint* %arraydecay73, i32 256, i32* %arraydecay74, i1 zeroext %cmp75)
  store i32 %call77, i32* %xadvance, align 4
  %91 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %padding_p = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %91, i32 0, i32 23
  %bf.load = load i8, i8* %padding_p, align 8
  %bf.lshr = lshr i8 %bf.load, 7
  %bf.cast = trunc i8 %bf.lshr to i1
  br i1 %bf.cast, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.69
  br label %cond.end

cond.false:                                       ; preds = %for.body.69
  %92 = load i32, i32* %xadvance, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %92, %cond.false ]
  %93 = load i32, i32* %x.addr, align 4
  %add79 = add nsw i32 %93, %cond
  store i32 %add79, i32* %x.addr, align 4
  br label %for.inc.80

for.inc.80:                                       ; preds = %cond.end
  %94 = load i32, i32* %i, align 4
  %inc81 = add nsw i32 %94, 1
  store i32 %inc81, i32* %i, align 4
  br label %for.cond.66

for.end.82:                                       ; preds = %for.cond.66
  %95 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %num_clips83 = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %95, i32 0, i32 32
  %96 = load i32, i32* %num_clips83, align 4
  %tobool84 = icmp ne i32 %96, 0
  br i1 %tobool84, label %if.then.85, label %if.end.100

if.then.85:                                       ; preds = %for.end.82
  store i32 0, i32* %i, align 4
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.97, %if.then.85
  %97 = load i32, i32* %i, align 4
  %cmp87 = icmp slt i32 %97, 6
  br i1 %cmp87, label %for.body.89, label %for.end.99

for.body.89:                                      ; preds = %for.cond.86
  %98 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data90 = getelementptr inbounds %struct.frame, %struct.frame* %98, i32 0, i32 62
  %x91 = bitcast %union.output_data* %output_data90 to %struct.x_output**
  %99 = load %struct.x_output*, %struct.x_output** %x91, align 8
  %display_info92 = getelementptr inbounds %struct.x_output, %struct.x_output* %99, i32 0, i32 44
  %100 = load %struct.x_display_info*, %struct.x_display_info** %display_info92, align 8
  %display93 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %100, i32 0, i32 2
  %101 = load %struct._XDisplay*, %struct._XDisplay** %display93, align 8
  %102 = load i32, i32* %i, align 4
  %idxprom94 = sext i32 %102 to i64
  %103 = load %struct._XGC**, %struct._XGC*** %gcs, align 8
  %arrayidx95 = getelementptr inbounds %struct._XGC*, %struct._XGC** %103, i64 %idxprom94
  %104 = load %struct._XGC*, %struct._XGC** %arrayidx95, align 8
  %call96 = call i32 @XSetClipMask(%struct._XDisplay* %101, %struct._XGC* %104, i64 0)
  br label %for.inc.97

for.inc.97:                                       ; preds = %for.body.89
  %105 = load i32, i32* %i, align 4
  %inc98 = add nsw i32 %105, 1
  store i32 %inc98, i32* %i, align 4
  br label %for.cond.86

for.end.99:                                       ; preds = %for.cond.86
  br label %if.end.100

if.end.100:                                       ; preds = %for.end.99, %for.end.82
  br label %if.end.128

if.else.101:                                      ; preds = %if.end.45
  store i32 0, i32* %i, align 4
  br label %for.cond.102

for.cond.102:                                     ; preds = %for.inc.125, %if.else.101
  %106 = load i32, i32* %i, align 4
  %107 = load i32, i32* %len, align 4
  %cmp103 = icmp slt i32 %106, %107
  br i1 %cmp103, label %for.body.105, label %for.end.127

for.body.105:                                     ; preds = %for.cond.102
  %108 = load %struct.frame*, %struct.frame** %f, align 8
  %109 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %gc106 = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %109, i32 0, i32 24
  %110 = load %struct._XGC*, %struct._XGC** %gc106, align 8
  %111 = load %struct.font*, %struct.font** %font, align 8
  %112 = load i32, i32* %i, align 4
  %idxprom107 = sext i32 %112 to i64
  %113 = load i32*, i32** %code, align 8
  %arrayidx108 = getelementptr inbounds i32, i32* %113, i64 %idxprom107
  %114 = load i32, i32* %arrayidx108, align 4
  %115 = load i32, i32* %x.addr, align 4
  %116 = load i32, i32* %y.addr, align 4
  %arraydecay109 = getelementptr inbounds [1792 x %struct.XPoint], [1792 x %struct.XPoint]* %p, i32 0, i32 0
  %arraydecay110 = getelementptr inbounds [7 x i32], [7 x i32]* %n, i32 0, i32 0
  %117 = load i32, i32* %i, align 4
  %add111 = add nsw i32 %117, 1
  %118 = load i32, i32* %len, align 4
  %cmp112 = icmp eq i32 %add111, %118
  %call114 = call i32 @ftxfont_draw_bitmap(%struct.frame* %108, %struct._XGC* %110, %struct._XGC** null, %struct.font* %111, i32 %114, i32 %115, i32 %116, %struct.XPoint* %arraydecay109, i32 1792, i32* %arraydecay110, i1 zeroext %cmp112)
  store i32 %call114, i32* %xadvance, align 4
  %119 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %padding_p115 = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %119, i32 0, i32 23
  %bf.load116 = load i8, i8* %padding_p115, align 8
  %bf.lshr117 = lshr i8 %bf.load116, 7
  %bf.cast118 = trunc i8 %bf.lshr117 to i1
  br i1 %bf.cast118, label %cond.true.120, label %cond.false.121

cond.true.120:                                    ; preds = %for.body.105
  br label %cond.end.122

cond.false.121:                                   ; preds = %for.body.105
  %120 = load i32, i32* %xadvance, align 4
  br label %cond.end.122

cond.end.122:                                     ; preds = %cond.false.121, %cond.true.120
  %cond123 = phi i32 [ 1, %cond.true.120 ], [ %120, %cond.false.121 ]
  %121 = load i32, i32* %x.addr, align 4
  %add124 = add nsw i32 %121, %cond123
  store i32 %add124, i32* %x.addr, align 4
  br label %for.inc.125

for.inc.125:                                      ; preds = %cond.end.122
  %122 = load i32, i32* %i, align 4
  %inc126 = add nsw i32 %122, 1
  store i32 %inc126, i32* %i, align 4
  br label %for.cond.102

for.end.127:                                      ; preds = %for.cond.102
  br label %if.end.128

if.end.128:                                       ; preds = %for.end.127, %if.end.100
  call void @unblock_input()
  br label %do.body.129

do.body.129:                                      ; preds = %if.end.128
  %123 = load i8, i8* %sa_must_free, align 1
  %tobool130 = trunc i8 %123 to i1
  br i1 %tobool130, label %if.then.131, label %if.end.134

if.then.131:                                      ; preds = %do.body.129
  store i8 0, i8* %sa_must_free, align 1
  %124 = load i64, i64* %sa_count, align 8
  %call132 = call i64 @builtin_lisp_symbol(i32 0)
  %call133 = call i64 @unbind_to(i64 %124, i64 %call132)
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.131, %do.body.129
  br label %do.end.135

do.end.135:                                       ; preds = %if.end.134
  %125 = load i32, i32* %len, align 4
  ret i32 %125
}

; Function Attrs: nounwind uwtable
define internal i32 @ftxfont_end_for_frame(%struct.frame* %f) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %data = alloca %struct.ftxfont_frame_data*, align 8
  %next = alloca %struct.ftxfont_frame_data*, align 8
  %i = alloca i32, align 4
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 469)
  %call1 = call i8* @font_get_frame_data(%struct.frame* %0, i64 %call)
  %1 = bitcast i8* %call1 to %struct.ftxfont_frame_data*
  store %struct.ftxfont_frame_data* %1, %struct.ftxfont_frame_data** %data, align 8
  call void @block_input()
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %2 = load %struct.ftxfont_frame_data*, %struct.ftxfont_frame_data** %data, align 8
  %tobool = icmp ne %struct.ftxfont_frame_data* %2, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.ftxfont_frame_data*, %struct.ftxfont_frame_data** %data, align 8
  %next2 = getelementptr inbounds %struct.ftxfont_frame_data, %struct.ftxfont_frame_data* %3, i32 0, i32 2
  %4 = load %struct.ftxfont_frame_data*, %struct.ftxfont_frame_data** %next2, align 8
  store %struct.ftxfont_frame_data* %4, %struct.ftxfont_frame_data** %next, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %5 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %5, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %6, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %7 = load %struct.x_output*, %struct.x_output** %x, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %7, i32 0, i32 44
  %8 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %8, i32 0, i32 2
  %9 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.ftxfont_frame_data*, %struct.ftxfont_frame_data** %data, align 8
  %gcs = getelementptr inbounds %struct.ftxfont_frame_data, %struct.ftxfont_frame_data* %11, i32 0, i32 1
  %arrayidx = getelementptr inbounds [6 x %struct._XGC*], [6 x %struct._XGC*]* %gcs, i32 0, i64 %idxprom
  %12 = load %struct._XGC*, %struct._XGC** %arrayidx, align 8
  %call3 = call i32 @XFreeGC(%struct._XDisplay* %9, %struct._XGC* %12)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct.ftxfont_frame_data*, %struct.ftxfont_frame_data** %data, align 8
  %15 = bitcast %struct.ftxfont_frame_data* %14 to i8*
  call void @xfree(i8* %15)
  %16 = load %struct.ftxfont_frame_data*, %struct.ftxfont_frame_data** %next, align 8
  store %struct.ftxfont_frame_data* %16, %struct.ftxfont_frame_data** %data, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @unblock_input()
  %17 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 469)
  call void @font_put_frame_data(%struct.frame* %17, i64 %call4, i8* null)
  ret i32 0
}

declare void @register_font_driver(%struct.font_driver*, %struct.frame*) #2

declare void @ASET(i64, i64, i64) #2

declare zeroext i1 @VECTORP(i64) #2

declare %struct.font* @XFONT_OBJECT(i64) #2

declare i64 @SPECPDL_INDEX() #2

declare noalias i8* @xnmalloc(i64, i64) #2

declare void @record_unwind_protect_ptr(void (i8*)*, i8*) #2

declare void @xfree(i8*) #2

declare void @block_input() #2

; Function Attrs: nounwind uwtable
define internal void @ftxfont_draw_background(%struct.frame* %f, %struct.font* %font, %struct._XGC* %gc, i32 %x, i32 %y, i32 %width) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %font.addr = alloca %struct.font*, align 8
  %gc.addr = alloca %struct._XGC*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %xgcv = alloca %struct.XGCValues, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store %struct.font* %font, %struct.font** %font.addr, align 8
  store %struct._XGC* %gc, %struct._XGC** %gc.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 62
  %x1 = bitcast %union.output_data* %output_data to %struct.x_output**
  %1 = load %struct.x_output*, %struct.x_output** %x1, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %1, i32 0, i32 44
  %2 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %2, i32 0, i32 2
  %3 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %4 = load %struct._XGC*, %struct._XGC** %gc.addr, align 8
  %call = call i32 @XGetGCValues(%struct._XDisplay* %3, %struct._XGC* %4, i64 12, %struct.XGCValues* %xgcv)
  %5 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data2 = getelementptr inbounds %struct.frame, %struct.frame* %5, i32 0, i32 62
  %x3 = bitcast %union.output_data* %output_data2 to %struct.x_output**
  %6 = load %struct.x_output*, %struct.x_output** %x3, align 8
  %display_info4 = getelementptr inbounds %struct.x_output, %struct.x_output* %6, i32 0, i32 44
  %7 = load %struct.x_display_info*, %struct.x_display_info** %display_info4, align 8
  %display5 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %7, i32 0, i32 2
  %8 = load %struct._XDisplay*, %struct._XDisplay** %display5, align 8
  %9 = load %struct._XGC*, %struct._XGC** %gc.addr, align 8
  %background = getelementptr inbounds %struct.XGCValues, %struct.XGCValues* %xgcv, i32 0, i32 3
  %10 = load i64, i64* %background, align 8
  %call6 = call i32 @XSetForeground(%struct._XDisplay* %8, %struct._XGC* %9, i64 %10)
  %11 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data7 = getelementptr inbounds %struct.frame, %struct.frame* %11, i32 0, i32 62
  %x8 = bitcast %union.output_data* %output_data7 to %struct.x_output**
  %12 = load %struct.x_output*, %struct.x_output** %x8, align 8
  %display_info9 = getelementptr inbounds %struct.x_output, %struct.x_output* %12, i32 0, i32 44
  %13 = load %struct.x_display_info*, %struct.x_display_info** %display_info9, align 8
  %display10 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %13, i32 0, i32 2
  %14 = load %struct._XDisplay*, %struct._XDisplay** %display10, align 8
  %15 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data11 = getelementptr inbounds %struct.frame, %struct.frame* %15, i32 0, i32 62
  %x12 = bitcast %union.output_data* %output_data11 to %struct.x_output**
  %16 = load %struct.x_output*, %struct.x_output** %x12, align 8
  %window_desc = getelementptr inbounds %struct.x_output, %struct.x_output* %16, i32 0, i32 9
  %17 = load i64, i64* %window_desc, align 8
  %18 = load %struct._XGC*, %struct._XGC** %gc.addr, align 8
  %19 = load i32, i32* %x.addr, align 4
  %20 = load i32, i32* %y.addr, align 4
  %21 = load %struct.font*, %struct.font** %font.addr, align 8
  %ascent = getelementptr inbounds %struct.font, %struct.font* %21, i32 0, i32 8
  %22 = load i32, i32* %ascent, align 4
  %sub = sub nsw i32 %20, %22
  %23 = load i32, i32* %width.addr, align 4
  %24 = load %struct.font*, %struct.font** %font.addr, align 8
  %height = getelementptr inbounds %struct.font, %struct.font* %24, i32 0, i32 5
  %25 = load i32, i32* %height, align 4
  %call13 = call i32 @XFillRectangle(%struct._XDisplay* %14, i64 %17, %struct._XGC* %18, i32 %19, i32 %sub, i32 %23, i32 %25)
  %26 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data14 = getelementptr inbounds %struct.frame, %struct.frame* %26, i32 0, i32 62
  %x15 = bitcast %union.output_data* %output_data14 to %struct.x_output**
  %27 = load %struct.x_output*, %struct.x_output** %x15, align 8
  %display_info16 = getelementptr inbounds %struct.x_output, %struct.x_output* %27, i32 0, i32 44
  %28 = load %struct.x_display_info*, %struct.x_display_info** %display_info16, align 8
  %display17 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %28, i32 0, i32 2
  %29 = load %struct._XDisplay*, %struct._XDisplay** %display17, align 8
  %30 = load %struct._XGC*, %struct._XGC** %gc.addr, align 8
  %foreground = getelementptr inbounds %struct.XGCValues, %struct.XGCValues* %xgcv, i32 0, i32 2
  %31 = load i64, i64* %foreground, align 8
  %call18 = call i32 @XSetForeground(%struct._XDisplay* %29, %struct._XGC* %30, i64 %31)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._XGC** @ftxfont_get_gcs(%struct.frame* %f, i64 %foreground, i64 %background) #0 {
entry:
  %retval = alloca %struct._XGC**, align 8
  %f.addr = alloca %struct.frame*, align 8
  %foreground.addr = alloca i64, align 8
  %background.addr = alloca i64, align 8
  %color = alloca %struct.XColor, align 8
  %xgcv = alloca %struct.XGCValues, align 8
  %i = alloca i32, align 4
  %data = alloca %struct.ftxfont_frame_data*, align 8
  %prev = alloca %struct.ftxfont_frame_data*, align 8
  %this = alloca %struct.ftxfont_frame_data*, align 8
  %new = alloca %struct.ftxfont_frame_data*, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %foreground, i64* %foreground.addr, align 8
  store i64 %background, i64* %background.addr, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 469)
  %call1 = call i8* @font_get_frame_data(%struct.frame* %0, i64 %call)
  %1 = bitcast i8* %call1 to %struct.ftxfont_frame_data*
  store %struct.ftxfont_frame_data* %1, %struct.ftxfont_frame_data** %data, align 8
  store %struct.ftxfont_frame_data* null, %struct.ftxfont_frame_data** %prev, align 8
  store %struct.ftxfont_frame_data* null, %struct.ftxfont_frame_data** %this, align 8
  %2 = load %struct.ftxfont_frame_data*, %struct.ftxfont_frame_data** %data, align 8
  %tobool = icmp ne %struct.ftxfont_frame_data* %2, null
  br i1 %tobool, label %if.then, label %if.end.22

if.then:                                          ; preds = %entry
  %3 = load %struct.ftxfont_frame_data*, %struct.ftxfont_frame_data** %data, align 8
  store %struct.ftxfont_frame_data* %3, %struct.ftxfont_frame_data** %this, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load %struct.ftxfont_frame_data*, %struct.ftxfont_frame_data** %this, align 8
  %tobool2 = icmp ne %struct.ftxfont_frame_data* %4, null
  br i1 %tobool2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.ftxfont_frame_data*, %struct.ftxfont_frame_data** %this, align 8
  %colors = getelementptr inbounds %struct.ftxfont_frame_data, %struct.ftxfont_frame_data* %5, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.XColor], [2 x %struct.XColor]* %colors, i32 0, i64 0
  %pixel = getelementptr inbounds %struct.XColor, %struct.XColor* %arrayidx, i32 0, i32 0
  %6 = load i64, i64* %pixel, align 8
  %7 = load i64, i64* %background.addr, align 8
  %cmp = icmp ult i64 %6, %7
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %8 = load %struct.ftxfont_frame_data*, %struct.ftxfont_frame_data** %this, align 8
  %colors4 = getelementptr inbounds %struct.ftxfont_frame_data, %struct.ftxfont_frame_data* %8, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [2 x %struct.XColor], [2 x %struct.XColor]* %colors4, i32 0, i64 0
  %pixel6 = getelementptr inbounds %struct.XColor, %struct.XColor* %arrayidx5, i32 0, i32 0
  %9 = load i64, i64* %pixel6, align 8
  %10 = load i64, i64* %background.addr, align 8
  %cmp7 = icmp ugt i64 %9, %10
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  br label %for.end

if.end.9:                                         ; preds = %if.end
  %11 = load %struct.ftxfont_frame_data*, %struct.ftxfont_frame_data** %this, align 8
  %colors10 = getelementptr inbounds %struct.ftxfont_frame_data, %struct.ftxfont_frame_data* %11, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [2 x %struct.XColor], [2 x %struct.XColor]* %colors10, i32 0, i64 1
  %pixel12 = getelementptr inbounds %struct.XColor, %struct.XColor* %arrayidx11, i32 0, i32 0
  %12 = load i64, i64* %pixel12, align 8
  %13 = load i64, i64* %foreground.addr, align 8
  %cmp13 = icmp ult i64 %12, %13
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.9
  br label %for.inc

if.end.15:                                        ; preds = %if.end.9
  %14 = load %struct.ftxfont_frame_data*, %struct.ftxfont_frame_data** %this, align 8
  %colors16 = getelementptr inbounds %struct.ftxfont_frame_data, %struct.ftxfont_frame_data* %14, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [2 x %struct.XColor], [2 x %struct.XColor]* %colors16, i32 0, i64 1
  %pixel18 = getelementptr inbounds %struct.XColor, %struct.XColor* %arrayidx17, i32 0, i32 0
  %15 = load i64, i64* %pixel18, align 8
  %16 = load i64, i64* %foreground.addr, align 8
  %cmp19 = icmp ugt i64 %15, %16
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.15
  br label %for.end

if.end.21:                                        ; preds = %if.end.15
  %17 = load %struct.ftxfont_frame_data*, %struct.ftxfont_frame_data** %this, align 8
  %gcs = getelementptr inbounds %struct.ftxfont_frame_data, %struct.ftxfont_frame_data* %17, i32 0, i32 1
  %arraydecay = getelementptr inbounds [6 x %struct._XGC*], [6 x %struct._XGC*]* %gcs, i32 0, i32 0
  store %struct._XGC** %arraydecay, %struct._XGC*** %retval
  br label %return

for.inc:                                          ; preds = %if.then.14, %if.then.3
  %18 = load %struct.ftxfont_frame_data*, %struct.ftxfont_frame_data** %this, align 8
  store %struct.ftxfont_frame_data* %18, %struct.ftxfont_frame_data** %prev, align 8
  %19 = load %struct.ftxfont_frame_data*, %struct.ftxfont_frame_data** %this, align 8
  %next = getelementptr inbounds %struct.ftxfont_frame_data, %struct.ftxfont_frame_data* %19, i32 0, i32 2
  %20 = load %struct.ftxfont_frame_data*, %struct.ftxfont_frame_data** %next, align 8
  store %struct.ftxfont_frame_data* %20, %struct.ftxfont_frame_data** %this, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.20, %if.then.8, %for.cond
  br label %if.end.22

if.end.22:                                        ; preds = %for.end, %entry
  %call23 = call noalias i8* @xmalloc(i64 88)
  %21 = bitcast i8* %call23 to %struct.ftxfont_frame_data*
  store %struct.ftxfont_frame_data* %21, %struct.ftxfont_frame_data** %new, align 8
  %22 = load %struct.ftxfont_frame_data*, %struct.ftxfont_frame_data** %this, align 8
  %23 = load %struct.ftxfont_frame_data*, %struct.ftxfont_frame_data** %new, align 8
  %next24 = getelementptr inbounds %struct.ftxfont_frame_data, %struct.ftxfont_frame_data* %23, i32 0, i32 2
  store %struct.ftxfont_frame_data* %22, %struct.ftxfont_frame_data** %next24, align 8
  %24 = load %struct.ftxfont_frame_data*, %struct.ftxfont_frame_data** %prev, align 8
  %tobool25 = icmp ne %struct.ftxfont_frame_data* %24, null
  br i1 %tobool25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.end.22
  %25 = load %struct.ftxfont_frame_data*, %struct.ftxfont_frame_data** %new, align 8
  %26 = load %struct.ftxfont_frame_data*, %struct.ftxfont_frame_data** %prev, align 8
  %next27 = getelementptr inbounds %struct.ftxfont_frame_data, %struct.ftxfont_frame_data* %26, i32 0, i32 2
  store %struct.ftxfont_frame_data* %25, %struct.ftxfont_frame_data** %next27, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.end.22
  %27 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %call29 = call i64 @builtin_lisp_symbol(i32 469)
  %28 = load %struct.ftxfont_frame_data*, %struct.ftxfont_frame_data** %new, align 8
  %29 = bitcast %struct.ftxfont_frame_data* %28 to i8*
  call void @font_put_frame_data(%struct.frame* %27, i64 %call29, i8* %29)
  %30 = load i64, i64* %background.addr, align 8
  %31 = load %struct.ftxfont_frame_data*, %struct.ftxfont_frame_data** %new, align 8
  %colors30 = getelementptr inbounds %struct.ftxfont_frame_data, %struct.ftxfont_frame_data* %31, i32 0, i32 0
  %arrayidx31 = getelementptr inbounds [2 x %struct.XColor], [2 x %struct.XColor]* %colors30, i32 0, i64 0
  %pixel32 = getelementptr inbounds %struct.XColor, %struct.XColor* %arrayidx31, i32 0, i32 0
  store i64 %30, i64* %pixel32, align 8
  %32 = load i64, i64* %foreground.addr, align 8
  %33 = load %struct.ftxfont_frame_data*, %struct.ftxfont_frame_data** %new, align 8
  %colors33 = getelementptr inbounds %struct.ftxfont_frame_data, %struct.ftxfont_frame_data* %33, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [2 x %struct.XColor], [2 x %struct.XColor]* %colors33, i32 0, i64 1
  %pixel35 = getelementptr inbounds %struct.XColor, %struct.XColor* %arrayidx34, i32 0, i32 0
  store i64 %32, i64* %pixel35, align 8
  call void @block_input()
  %34 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %34, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %35 = load %struct.x_output*, %struct.x_output** %x, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %35, i32 0, i32 44
  %36 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %36, i32 0, i32 2
  %37 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %38 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data36 = getelementptr inbounds %struct.frame, %struct.frame* %38, i32 0, i32 62
  %x37 = bitcast %union.output_data* %output_data36 to %struct.x_output**
  %39 = load %struct.x_output*, %struct.x_output** %x37, align 8
  %display_info38 = getelementptr inbounds %struct.x_output, %struct.x_output* %39, i32 0, i32 44
  %40 = load %struct.x_display_info*, %struct.x_display_info** %display_info38, align 8
  %cmap = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %40, i32 0, i32 10
  %41 = load i64, i64* %cmap, align 8
  %42 = load %struct.ftxfont_frame_data*, %struct.ftxfont_frame_data** %new, align 8
  %colors39 = getelementptr inbounds %struct.ftxfont_frame_data, %struct.ftxfont_frame_data* %42, i32 0, i32 0
  %arraydecay40 = getelementptr inbounds [2 x %struct.XColor], [2 x %struct.XColor]* %colors39, i32 0, i32 0
  %call41 = call i32 @XQueryColors(%struct._XDisplay* %37, i64 %41, %struct.XColor* %arraydecay40, i32 2)
  store i32 1, i32* %i, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.101, %if.end.28
  %43 = load i32, i32* %i, align 4
  %cmp43 = icmp slt i32 %43, 7
  br i1 %cmp43, label %for.body.44, label %for.end.102

for.body.44:                                      ; preds = %for.cond.42
  %44 = load %struct.ftxfont_frame_data*, %struct.ftxfont_frame_data** %new, align 8
  %colors45 = getelementptr inbounds %struct.ftxfont_frame_data, %struct.ftxfont_frame_data* %44, i32 0, i32 0
  %arrayidx46 = getelementptr inbounds [2 x %struct.XColor], [2 x %struct.XColor]* %colors45, i32 0, i64 1
  %red = getelementptr inbounds %struct.XColor, %struct.XColor* %arrayidx46, i32 0, i32 1
  %45 = load i16, i16* %red, align 2
  %conv = zext i16 %45 to i32
  %46 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %conv, %46
  %47 = load %struct.ftxfont_frame_data*, %struct.ftxfont_frame_data** %new, align 8
  %colors47 = getelementptr inbounds %struct.ftxfont_frame_data, %struct.ftxfont_frame_data* %47, i32 0, i32 0
  %arrayidx48 = getelementptr inbounds [2 x %struct.XColor], [2 x %struct.XColor]* %colors47, i32 0, i64 0
  %red49 = getelementptr inbounds %struct.XColor, %struct.XColor* %arrayidx48, i32 0, i32 1
  %48 = load i16, i16* %red49, align 2
  %conv50 = zext i16 %48 to i32
  %49 = load i32, i32* %i, align 4
  %sub = sub nsw i32 8, %49
  %mul51 = mul nsw i32 %conv50, %sub
  %add = add nsw i32 %mul, %mul51
  %div = sdiv i32 %add, 8
  %conv52 = trunc i32 %div to i16
  %red53 = getelementptr inbounds %struct.XColor, %struct.XColor* %color, i32 0, i32 1
  store i16 %conv52, i16* %red53, align 2
  %50 = load %struct.ftxfont_frame_data*, %struct.ftxfont_frame_data** %new, align 8
  %colors54 = getelementptr inbounds %struct.ftxfont_frame_data, %struct.ftxfont_frame_data* %50, i32 0, i32 0
  %arrayidx55 = getelementptr inbounds [2 x %struct.XColor], [2 x %struct.XColor]* %colors54, i32 0, i64 1
  %green = getelementptr inbounds %struct.XColor, %struct.XColor* %arrayidx55, i32 0, i32 2
  %51 = load i16, i16* %green, align 2
  %conv56 = zext i16 %51 to i32
  %52 = load i32, i32* %i, align 4
  %mul57 = mul nsw i32 %conv56, %52
  %53 = load %struct.ftxfont_frame_data*, %struct.ftxfont_frame_data** %new, align 8
  %colors58 = getelementptr inbounds %struct.ftxfont_frame_data, %struct.ftxfont_frame_data* %53, i32 0, i32 0
  %arrayidx59 = getelementptr inbounds [2 x %struct.XColor], [2 x %struct.XColor]* %colors58, i32 0, i64 0
  %green60 = getelementptr inbounds %struct.XColor, %struct.XColor* %arrayidx59, i32 0, i32 2
  %54 = load i16, i16* %green60, align 2
  %conv61 = zext i16 %54 to i32
  %55 = load i32, i32* %i, align 4
  %sub62 = sub nsw i32 8, %55
  %mul63 = mul nsw i32 %conv61, %sub62
  %add64 = add nsw i32 %mul57, %mul63
  %div65 = sdiv i32 %add64, 8
  %conv66 = trunc i32 %div65 to i16
  %green67 = getelementptr inbounds %struct.XColor, %struct.XColor* %color, i32 0, i32 2
  store i16 %conv66, i16* %green67, align 2
  %56 = load %struct.ftxfont_frame_data*, %struct.ftxfont_frame_data** %new, align 8
  %colors68 = getelementptr inbounds %struct.ftxfont_frame_data, %struct.ftxfont_frame_data* %56, i32 0, i32 0
  %arrayidx69 = getelementptr inbounds [2 x %struct.XColor], [2 x %struct.XColor]* %colors68, i32 0, i64 1
  %blue = getelementptr inbounds %struct.XColor, %struct.XColor* %arrayidx69, i32 0, i32 3
  %57 = load i16, i16* %blue, align 2
  %conv70 = zext i16 %57 to i32
  %58 = load i32, i32* %i, align 4
  %mul71 = mul nsw i32 %conv70, %58
  %59 = load %struct.ftxfont_frame_data*, %struct.ftxfont_frame_data** %new, align 8
  %colors72 = getelementptr inbounds %struct.ftxfont_frame_data, %struct.ftxfont_frame_data* %59, i32 0, i32 0
  %arrayidx73 = getelementptr inbounds [2 x %struct.XColor], [2 x %struct.XColor]* %colors72, i32 0, i64 0
  %blue74 = getelementptr inbounds %struct.XColor, %struct.XColor* %arrayidx73, i32 0, i32 3
  %60 = load i16, i16* %blue74, align 2
  %conv75 = zext i16 %60 to i32
  %61 = load i32, i32* %i, align 4
  %sub76 = sub nsw i32 8, %61
  %mul77 = mul nsw i32 %conv75, %sub76
  %add78 = add nsw i32 %mul71, %mul77
  %div79 = sdiv i32 %add78, 8
  %conv80 = trunc i32 %div79 to i16
  %blue81 = getelementptr inbounds %struct.XColor, %struct.XColor* %color, i32 0, i32 3
  store i16 %conv80, i16* %blue81, align 2
  %62 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %63 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data82 = getelementptr inbounds %struct.frame, %struct.frame* %63, i32 0, i32 62
  %x83 = bitcast %union.output_data* %output_data82 to %struct.x_output**
  %64 = load %struct.x_output*, %struct.x_output** %x83, align 8
  %display_info84 = getelementptr inbounds %struct.x_output, %struct.x_output* %64, i32 0, i32 44
  %65 = load %struct.x_display_info*, %struct.x_display_info** %display_info84, align 8
  %cmap85 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %65, i32 0, i32 10
  %66 = load i64, i64* %cmap85, align 8
  %call86 = call zeroext i1 @x_alloc_nearest_color(%struct.frame* %62, i64 %66, %struct.XColor* %color)
  br i1 %call86, label %if.end.88, label %if.then.87

if.then.87:                                       ; preds = %for.body.44
  br label %for.end.102

if.end.88:                                        ; preds = %for.body.44
  %pixel89 = getelementptr inbounds %struct.XColor, %struct.XColor* %color, i32 0, i32 0
  %67 = load i64, i64* %pixel89, align 8
  %foreground90 = getelementptr inbounds %struct.XGCValues, %struct.XGCValues* %xgcv, i32 0, i32 2
  store i64 %67, i64* %foreground90, align 8
  %68 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data91 = getelementptr inbounds %struct.frame, %struct.frame* %68, i32 0, i32 62
  %x92 = bitcast %union.output_data* %output_data91 to %struct.x_output**
  %69 = load %struct.x_output*, %struct.x_output** %x92, align 8
  %display_info93 = getelementptr inbounds %struct.x_output, %struct.x_output* %69, i32 0, i32 44
  %70 = load %struct.x_display_info*, %struct.x_display_info** %display_info93, align 8
  %display94 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %70, i32 0, i32 2
  %71 = load %struct._XDisplay*, %struct._XDisplay** %display94, align 8
  %72 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data95 = getelementptr inbounds %struct.frame, %struct.frame* %72, i32 0, i32 62
  %x96 = bitcast %union.output_data* %output_data95 to %struct.x_output**
  %73 = load %struct.x_output*, %struct.x_output** %x96, align 8
  %window_desc = getelementptr inbounds %struct.x_output, %struct.x_output* %73, i32 0, i32 9
  %74 = load i64, i64* %window_desc, align 8
  %call97 = call %struct._XGC* @XCreateGC(%struct._XDisplay* %71, i64 %74, i64 4, %struct.XGCValues* %xgcv)
  %75 = load i32, i32* %i, align 4
  %sub98 = sub nsw i32 %75, 1
  %idxprom = sext i32 %sub98 to i64
  %76 = load %struct.ftxfont_frame_data*, %struct.ftxfont_frame_data** %new, align 8
  %gcs99 = getelementptr inbounds %struct.ftxfont_frame_data, %struct.ftxfont_frame_data* %76, i32 0, i32 1
  %arrayidx100 = getelementptr inbounds [6 x %struct._XGC*], [6 x %struct._XGC*]* %gcs99, i32 0, i64 %idxprom
  store %struct._XGC* %call97, %struct._XGC** %arrayidx100, align 8
  br label %for.inc.101

for.inc.101:                                      ; preds = %if.end.88
  %77 = load i32, i32* %i, align 4
  %inc = add nsw i32 %77, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.42

for.end.102:                                      ; preds = %if.then.87, %for.cond.42
  call void @unblock_input()
  %78 = load i32, i32* %i, align 4
  %cmp103 = icmp slt i32 %78, 7
  br i1 %cmp103, label %if.then.105, label %if.end.131

if.then.105:                                      ; preds = %for.end.102
  call void @block_input()
  %79 = load i32, i32* %i, align 4
  %dec = add nsw i32 %79, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.106

for.cond.106:                                     ; preds = %for.inc.118, %if.then.105
  %80 = load i32, i32* %i, align 4
  %cmp107 = icmp sge i32 %80, 0
  br i1 %cmp107, label %for.body.109, label %for.end.120

for.body.109:                                     ; preds = %for.cond.106
  %81 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data110 = getelementptr inbounds %struct.frame, %struct.frame* %81, i32 0, i32 62
  %x111 = bitcast %union.output_data* %output_data110 to %struct.x_output**
  %82 = load %struct.x_output*, %struct.x_output** %x111, align 8
  %display_info112 = getelementptr inbounds %struct.x_output, %struct.x_output* %82, i32 0, i32 44
  %83 = load %struct.x_display_info*, %struct.x_display_info** %display_info112, align 8
  %display113 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %83, i32 0, i32 2
  %84 = load %struct._XDisplay*, %struct._XDisplay** %display113, align 8
  %85 = load i32, i32* %i, align 4
  %idxprom114 = sext i32 %85 to i64
  %86 = load %struct.ftxfont_frame_data*, %struct.ftxfont_frame_data** %new, align 8
  %gcs115 = getelementptr inbounds %struct.ftxfont_frame_data, %struct.ftxfont_frame_data* %86, i32 0, i32 1
  %arrayidx116 = getelementptr inbounds [6 x %struct._XGC*], [6 x %struct._XGC*]* %gcs115, i32 0, i64 %idxprom114
  %87 = load %struct._XGC*, %struct._XGC** %arrayidx116, align 8
  %call117 = call i32 @XFreeGC(%struct._XDisplay* %84, %struct._XGC* %87)
  br label %for.inc.118

for.inc.118:                                      ; preds = %for.body.109
  %88 = load i32, i32* %i, align 4
  %dec119 = add nsw i32 %88, -1
  store i32 %dec119, i32* %i, align 4
  br label %for.cond.106

for.end.120:                                      ; preds = %for.cond.106
  call void @unblock_input()
  %89 = load %struct.ftxfont_frame_data*, %struct.ftxfont_frame_data** %prev, align 8
  %tobool121 = icmp ne %struct.ftxfont_frame_data* %89, null
  br i1 %tobool121, label %if.then.122, label %if.else

if.then.122:                                      ; preds = %for.end.120
  %90 = load %struct.ftxfont_frame_data*, %struct.ftxfont_frame_data** %new, align 8
  %next123 = getelementptr inbounds %struct.ftxfont_frame_data, %struct.ftxfont_frame_data* %90, i32 0, i32 2
  %91 = load %struct.ftxfont_frame_data*, %struct.ftxfont_frame_data** %next123, align 8
  %92 = load %struct.ftxfont_frame_data*, %struct.ftxfont_frame_data** %prev, align 8
  %next124 = getelementptr inbounds %struct.ftxfont_frame_data, %struct.ftxfont_frame_data* %92, i32 0, i32 2
  store %struct.ftxfont_frame_data* %91, %struct.ftxfont_frame_data** %next124, align 8
  br label %if.end.130

if.else:                                          ; preds = %for.end.120
  %93 = load %struct.ftxfont_frame_data*, %struct.ftxfont_frame_data** %data, align 8
  %tobool125 = icmp ne %struct.ftxfont_frame_data* %93, null
  br i1 %tobool125, label %if.then.126, label %if.end.129

if.then.126:                                      ; preds = %if.else
  %94 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %call127 = call i64 @builtin_lisp_symbol(i32 469)
  %95 = load %struct.ftxfont_frame_data*, %struct.ftxfont_frame_data** %new, align 8
  %next128 = getelementptr inbounds %struct.ftxfont_frame_data, %struct.ftxfont_frame_data* %95, i32 0, i32 2
  %96 = load %struct.ftxfont_frame_data*, %struct.ftxfont_frame_data** %next128, align 8
  %97 = bitcast %struct.ftxfont_frame_data* %96 to i8*
  call void @font_put_frame_data(%struct.frame* %94, i64 %call127, i8* %97)
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.126, %if.else
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.129, %if.then.122
  %98 = load %struct.ftxfont_frame_data*, %struct.ftxfont_frame_data** %new, align 8
  %99 = bitcast %struct.ftxfont_frame_data* %98 to i8*
  call void @xfree(i8* %99)
  store %struct._XGC** null, %struct._XGC*** %retval
  br label %return

if.end.131:                                       ; preds = %for.end.102
  %100 = load %struct.ftxfont_frame_data*, %struct.ftxfont_frame_data** %new, align 8
  %gcs132 = getelementptr inbounds %struct.ftxfont_frame_data, %struct.ftxfont_frame_data* %100, i32 0, i32 1
  %arraydecay133 = getelementptr inbounds [6 x %struct._XGC*], [6 x %struct._XGC*]* %gcs132, i32 0, i32 0
  store %struct._XGC** %arraydecay133, %struct._XGC*** %retval
  br label %return

return:                                           ; preds = %if.end.131, %if.end.130, %if.end.21
  %101 = load %struct._XGC**, %struct._XGC*** %retval
  ret %struct._XGC** %101
}

declare i32 @XGetGCValues(%struct._XDisplay*, %struct._XGC*, i64, %struct.XGCValues*) #2

declare i32 @XSetClipRectangles(%struct._XDisplay*, %struct._XGC*, i32, i32, %struct.XRectangle*, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @ftxfont_draw_bitmap(%struct.frame* %f, %struct._XGC* %gc_fore, %struct._XGC** %gcs, %struct.font* %font, i32 %code, i32 %x, i32 %y, %struct.XPoint* %p, i32 %size, i32* %n, i1 zeroext %flush) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct.frame*, align 8
  %gc_fore.addr = alloca %struct._XGC*, align 8
  %gcs.addr = alloca %struct._XGC**, align 8
  %font.addr = alloca %struct.font*, align 8
  %code.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %p.addr = alloca %struct.XPoint*, align 8
  %size.addr = alloca i32, align 4
  %n.addr = alloca i32*, align 8
  %flush.addr = alloca i8, align 1
  %bitmap = alloca %struct.font_bitmap, align 8
  %b = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %idx = alloca i32, align 4
  %pp = alloca %struct.XPoint*, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store %struct._XGC* %gc_fore, %struct._XGC** %gc_fore.addr, align 8
  store %struct._XGC** %gcs, %struct._XGC*** %gcs.addr, align 8
  store %struct.font* %font, %struct.font** %font.addr, align 8
  store i32 %code, i32* %code.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct.XPoint* %p, %struct.XPoint** %p.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32* %n, i32** %n.addr, align 8
  %frombool = zext i1 %flush to i8
  store i8 %frombool, i8* %flush.addr, align 1
  %0 = load i32 (%struct.font*, i32, %struct.font_bitmap*, i32)*, i32 (%struct.font*, i32, %struct.font_bitmap*, i32)** getelementptr inbounds (%struct.font_driver, %struct.font_driver* @ftfont_driver, i32 0, i32 15), align 8
  %1 = load %struct.font*, %struct.font** %font.addr, align 8
  %2 = load i32, i32* %code.addr, align 4
  %3 = load i32, i32* %size.addr, align 4
  %cmp = icmp sgt i32 %3, 256
  %cond = select i1 %cmp, i32 1, i32 8
  %call = call i32 %0(%struct.font* %1, i32 %2, %struct.font_bitmap* %bitmap, i32 %cond)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %size.addr, align 4
  %cmp2 = icmp sgt i32 %4, 256
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4
  %buffer = getelementptr inbounds %struct.font_bitmap, %struct.font_bitmap* %bitmap, i32 0, i32 4
  %5 = load i8*, i8** %buffer, align 8
  store i8* %5, i8** %b, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.34, %if.then.3
  %6 = load i32, i32* %i, align 4
  %rows = getelementptr inbounds %struct.font_bitmap, %struct.font_bitmap* %bitmap, i32 0, i32 1
  %7 = load i32, i32* %rows, align 4
  %cmp4 = icmp slt i32 %6, %7
  br i1 %cmp4, label %for.body, label %for.end.36

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body
  %8 = load i32, i32* %j, align 4
  %width = getelementptr inbounds %struct.font_bitmap, %struct.font_bitmap* %bitmap, i32 0, i32 2
  %9 = load i32, i32* %width, align 4
  %cmp6 = icmp slt i32 %8, %9
  br i1 %cmp6, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.5
  %10 = load i32, i32* %j, align 4
  %div = sdiv i32 %10, 8
  %idxprom = sext i32 %div to i64
  %11 = load i8*, i8** %b, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %idxprom
  %12 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %12 to i32
  %13 = load i32, i32* %j, align 4
  %rem = srem i32 %13, 8
  %sub = sub nsw i32 7, %rem
  %shl = shl i32 1, %sub
  %and = and i32 %conv, %shl
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.8, label %if.end.32

if.then.8:                                        ; preds = %for.body.7
  %14 = load i32, i32* %x.addr, align 4
  %left = getelementptr inbounds %struct.font_bitmap, %struct.font_bitmap* %bitmap, i32 0, i32 5
  %15 = load i32, i32* %left, align 4
  %add = add nsw i32 %14, %15
  %16 = load i32, i32* %j, align 4
  %add9 = add nsw i32 %add, %16
  %conv10 = trunc i32 %add9 to i16
  %17 = load i32*, i32** %n.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %17, i64 0
  %18 = load i32, i32* %arrayidx11, align 4
  %idxprom12 = sext i32 %18 to i64
  %19 = load %struct.XPoint*, %struct.XPoint** %p.addr, align 8
  %arrayidx13 = getelementptr inbounds %struct.XPoint, %struct.XPoint* %19, i64 %idxprom12
  %x14 = getelementptr inbounds %struct.XPoint, %struct.XPoint* %arrayidx13, i32 0, i32 0
  store i16 %conv10, i16* %x14, align 2
  %20 = load i32, i32* %y.addr, align 4
  %top = getelementptr inbounds %struct.font_bitmap, %struct.font_bitmap* %bitmap, i32 0, i32 6
  %21 = load i32, i32* %top, align 4
  %sub15 = sub nsw i32 %20, %21
  %22 = load i32, i32* %i, align 4
  %add16 = add nsw i32 %sub15, %22
  %conv17 = trunc i32 %add16 to i16
  %23 = load i32*, i32** %n.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %23, i64 0
  %24 = load i32, i32* %arrayidx18, align 4
  %idxprom19 = sext i32 %24 to i64
  %25 = load %struct.XPoint*, %struct.XPoint** %p.addr, align 8
  %arrayidx20 = getelementptr inbounds %struct.XPoint, %struct.XPoint* %25, i64 %idxprom19
  %y21 = getelementptr inbounds %struct.XPoint, %struct.XPoint* %arrayidx20, i32 0, i32 1
  store i16 %conv17, i16* %y21, align 2
  %26 = load i32*, i32** %n.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %26, i64 0
  %27 = load i32, i32* %arrayidx22, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %arrayidx22, align 4
  %28 = load i32, i32* %size.addr, align 4
  %cmp23 = icmp eq i32 %inc, %28
  br i1 %cmp23, label %if.then.25, label %if.end.31

if.then.25:                                       ; preds = %if.then.8
  %29 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %29, i32 0, i32 62
  %x26 = bitcast %union.output_data* %output_data to %struct.x_output**
  %30 = load %struct.x_output*, %struct.x_output** %x26, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %30, i32 0, i32 44
  %31 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %31, i32 0, i32 2
  %32 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %33 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data27 = getelementptr inbounds %struct.frame, %struct.frame* %33, i32 0, i32 62
  %x28 = bitcast %union.output_data* %output_data27 to %struct.x_output**
  %34 = load %struct.x_output*, %struct.x_output** %x28, align 8
  %window_desc = getelementptr inbounds %struct.x_output, %struct.x_output* %34, i32 0, i32 9
  %35 = load i64, i64* %window_desc, align 8
  %36 = load %struct._XGC*, %struct._XGC** %gc_fore.addr, align 8
  %37 = load %struct.XPoint*, %struct.XPoint** %p.addr, align 8
  %38 = load i32, i32* %size.addr, align 4
  %call29 = call i32 @XDrawPoints(%struct._XDisplay* %32, i64 %35, %struct._XGC* %36, %struct.XPoint* %37, i32 %38, i32 0)
  %39 = load i32*, i32** %n.addr, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 0, i32* %arrayidx30, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.25, %if.then.8
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %for.body.7
  br label %for.inc

for.inc:                                          ; preds = %if.end.32
  %40 = load i32, i32* %j, align 4
  %inc33 = add nsw i32 %40, 1
  store i32 %inc33, i32* %j, align 4
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.end
  %41 = load i32, i32* %i, align 4
  %inc35 = add nsw i32 %41, 1
  store i32 %inc35, i32* %i, align 4
  %pitch = getelementptr inbounds %struct.font_bitmap, %struct.font_bitmap* %bitmap, i32 0, i32 3
  %42 = load i32, i32* %pitch, align 4
  %43 = load i8*, i8** %b, align 8
  %idx.ext = sext i32 %42 to i64
  %add.ptr = getelementptr inbounds i8, i8* %43, i64 %idx.ext
  store i8* %add.ptr, i8** %b, align 8
  br label %for.cond

for.end.36:                                       ; preds = %for.cond
  %44 = load i8, i8* %flush.addr, align 1
  %tobool37 = trunc i8 %44 to i1
  br i1 %tobool37, label %land.lhs.true, label %if.end.52

land.lhs.true:                                    ; preds = %for.end.36
  %45 = load i32*, i32** %n.addr, align 8
  %arrayidx39 = getelementptr inbounds i32, i32* %45, i64 0
  %46 = load i32, i32* %arrayidx39, align 4
  %cmp40 = icmp sgt i32 %46, 0
  br i1 %cmp40, label %if.then.42, label %if.end.52

if.then.42:                                       ; preds = %land.lhs.true
  %47 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data43 = getelementptr inbounds %struct.frame, %struct.frame* %47, i32 0, i32 62
  %x44 = bitcast %union.output_data* %output_data43 to %struct.x_output**
  %48 = load %struct.x_output*, %struct.x_output** %x44, align 8
  %display_info45 = getelementptr inbounds %struct.x_output, %struct.x_output* %48, i32 0, i32 44
  %49 = load %struct.x_display_info*, %struct.x_display_info** %display_info45, align 8
  %display46 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %49, i32 0, i32 2
  %50 = load %struct._XDisplay*, %struct._XDisplay** %display46, align 8
  %51 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data47 = getelementptr inbounds %struct.frame, %struct.frame* %51, i32 0, i32 62
  %x48 = bitcast %union.output_data* %output_data47 to %struct.x_output**
  %52 = load %struct.x_output*, %struct.x_output** %x48, align 8
  %window_desc49 = getelementptr inbounds %struct.x_output, %struct.x_output* %52, i32 0, i32 9
  %53 = load i64, i64* %window_desc49, align 8
  %54 = load %struct._XGC*, %struct._XGC** %gc_fore.addr, align 8
  %55 = load %struct.XPoint*, %struct.XPoint** %p.addr, align 8
  %56 = load i32*, i32** %n.addr, align 8
  %arrayidx50 = getelementptr inbounds i32, i32* %56, i64 0
  %57 = load i32, i32* %arrayidx50, align 4
  %call51 = call i32 @XDrawPoints(%struct._XDisplay* %50, i64 %53, %struct._XGC* %54, %struct.XPoint* %55, i32 %57, i32 0)
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.42, %land.lhs.true, %for.end.36
  br label %if.end.185

if.else:                                          ; preds = %if.end
  store i32 0, i32* %i, align 4
  %buffer53 = getelementptr inbounds %struct.font_bitmap, %struct.font_bitmap* %bitmap, i32 0, i32 4
  %58 = load i8*, i8** %buffer53, align 8
  store i8* %58, i8** %b, align 8
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.133, %if.else
  %59 = load i32, i32* %i, align 4
  %rows55 = getelementptr inbounds %struct.font_bitmap, %struct.font_bitmap* %bitmap, i32 0, i32 1
  %60 = load i32, i32* %rows55, align 4
  %cmp56 = icmp slt i32 %59, %60
  br i1 %cmp56, label %for.body.58, label %for.end.138

for.body.58:                                      ; preds = %for.cond.54
  store i32 0, i32* %j, align 4
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.130, %for.body.58
  %61 = load i32, i32* %j, align 4
  %width60 = getelementptr inbounds %struct.font_bitmap, %struct.font_bitmap* %bitmap, i32 0, i32 2
  %62 = load i32, i32* %width60, align 4
  %cmp61 = icmp slt i32 %61, %62
  br i1 %cmp61, label %for.body.63, label %for.end.132

for.body.63:                                      ; preds = %for.cond.59
  %bits_per_pixel = getelementptr inbounds %struct.font_bitmap, %struct.font_bitmap* %bitmap, i32 0, i32 0
  %63 = load i32, i32* %bits_per_pixel, align 4
  %cmp64 = icmp eq i32 %63, 1
  br i1 %cmp64, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.63
  %64 = load i32, i32* %j, align 4
  %div66 = sdiv i32 %64, 8
  %idxprom67 = sext i32 %div66 to i64
  %65 = load i8*, i8** %b, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %65, i64 %idxprom67
  %66 = load i8, i8* %arrayidx68, align 1
  %conv69 = zext i8 %66 to i32
  %67 = load i32, i32* %j, align 4
  %rem70 = srem i32 %67, 8
  %sub71 = sub nsw i32 7, %rem70
  %shl72 = shl i32 1, %sub71
  %and73 = and i32 %conv69, %shl72
  %tobool74 = icmp ne i32 %and73, 0
  %cond75 = select i1 %tobool74, i32 6, i32 -1
  br label %cond.end

cond.false:                                       ; preds = %for.body.63
  %68 = load i32, i32* %j, align 4
  %idxprom76 = sext i32 %68 to i64
  %69 = load i8*, i8** %b, align 8
  %arrayidx77 = getelementptr inbounds i8, i8* %69, i64 %idxprom76
  %70 = load i8, i8* %arrayidx77, align 1
  %conv78 = zext i8 %70 to i32
  %shr = ashr i32 %conv78, 5
  %sub79 = sub nsw i32 %shr, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond80 = phi i32 [ %cond75, %cond.true ], [ %sub79, %cond.false ]
  store i32 %cond80, i32* %idx, align 4
  %71 = load i32, i32* %idx, align 4
  %cmp81 = icmp sge i32 %71, 0
  br i1 %cmp81, label %if.then.83, label %if.end.129

if.then.83:                                       ; preds = %cond.end
  %72 = load %struct.XPoint*, %struct.XPoint** %p.addr, align 8
  %73 = load i32, i32* %size.addr, align 4
  %74 = load i32, i32* %idx, align 4
  %mul = mul nsw i32 %73, %74
  %idx.ext84 = sext i32 %mul to i64
  %add.ptr85 = getelementptr inbounds %struct.XPoint, %struct.XPoint* %72, i64 %idx.ext84
  store %struct.XPoint* %add.ptr85, %struct.XPoint** %pp, align 8
  %75 = load i32, i32* %x.addr, align 4
  %left86 = getelementptr inbounds %struct.font_bitmap, %struct.font_bitmap* %bitmap, i32 0, i32 5
  %76 = load i32, i32* %left86, align 4
  %add87 = add nsw i32 %75, %76
  %77 = load i32, i32* %j, align 4
  %add88 = add nsw i32 %add87, %77
  %conv89 = trunc i32 %add88 to i16
  %78 = load i32, i32* %idx, align 4
  %idxprom90 = sext i32 %78 to i64
  %79 = load i32*, i32** %n.addr, align 8
  %arrayidx91 = getelementptr inbounds i32, i32* %79, i64 %idxprom90
  %80 = load i32, i32* %arrayidx91, align 4
  %idxprom92 = sext i32 %80 to i64
  %81 = load %struct.XPoint*, %struct.XPoint** %pp, align 8
  %arrayidx93 = getelementptr inbounds %struct.XPoint, %struct.XPoint* %81, i64 %idxprom92
  %x94 = getelementptr inbounds %struct.XPoint, %struct.XPoint* %arrayidx93, i32 0, i32 0
  store i16 %conv89, i16* %x94, align 2
  %82 = load i32, i32* %y.addr, align 4
  %top95 = getelementptr inbounds %struct.font_bitmap, %struct.font_bitmap* %bitmap, i32 0, i32 6
  %83 = load i32, i32* %top95, align 4
  %sub96 = sub nsw i32 %82, %83
  %84 = load i32, i32* %i, align 4
  %add97 = add nsw i32 %sub96, %84
  %conv98 = trunc i32 %add97 to i16
  %85 = load i32, i32* %idx, align 4
  %idxprom99 = sext i32 %85 to i64
  %86 = load i32*, i32** %n.addr, align 8
  %arrayidx100 = getelementptr inbounds i32, i32* %86, i64 %idxprom99
  %87 = load i32, i32* %arrayidx100, align 4
  %idxprom101 = sext i32 %87 to i64
  %88 = load %struct.XPoint*, %struct.XPoint** %pp, align 8
  %arrayidx102 = getelementptr inbounds %struct.XPoint, %struct.XPoint* %88, i64 %idxprom101
  %y103 = getelementptr inbounds %struct.XPoint, %struct.XPoint* %arrayidx102, i32 0, i32 1
  store i16 %conv98, i16* %y103, align 2
  %89 = load i32, i32* %idx, align 4
  %idxprom104 = sext i32 %89 to i64
  %90 = load i32*, i32** %n.addr, align 8
  %arrayidx105 = getelementptr inbounds i32, i32* %90, i64 %idxprom104
  %91 = load i32, i32* %arrayidx105, align 4
  %inc106 = add nsw i32 %91, 1
  store i32 %inc106, i32* %arrayidx105, align 4
  %92 = load i32, i32* %size.addr, align 4
  %cmp107 = icmp eq i32 %inc106, %92
  br i1 %cmp107, label %if.then.109, label %if.end.128

if.then.109:                                      ; preds = %if.then.83
  %93 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data110 = getelementptr inbounds %struct.frame, %struct.frame* %93, i32 0, i32 62
  %x111 = bitcast %union.output_data* %output_data110 to %struct.x_output**
  %94 = load %struct.x_output*, %struct.x_output** %x111, align 8
  %display_info112 = getelementptr inbounds %struct.x_output, %struct.x_output* %94, i32 0, i32 44
  %95 = load %struct.x_display_info*, %struct.x_display_info** %display_info112, align 8
  %display113 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %95, i32 0, i32 2
  %96 = load %struct._XDisplay*, %struct._XDisplay** %display113, align 8
  %97 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data114 = getelementptr inbounds %struct.frame, %struct.frame* %97, i32 0, i32 62
  %x115 = bitcast %union.output_data* %output_data114 to %struct.x_output**
  %98 = load %struct.x_output*, %struct.x_output** %x115, align 8
  %window_desc116 = getelementptr inbounds %struct.x_output, %struct.x_output* %98, i32 0, i32 9
  %99 = load i64, i64* %window_desc116, align 8
  %100 = load i32, i32* %idx, align 4
  %cmp117 = icmp eq i32 %100, 6
  br i1 %cmp117, label %cond.true.119, label %cond.false.120

cond.true.119:                                    ; preds = %if.then.109
  %101 = load %struct._XGC*, %struct._XGC** %gc_fore.addr, align 8
  br label %cond.end.123

cond.false.120:                                   ; preds = %if.then.109
  %102 = load i32, i32* %idx, align 4
  %idxprom121 = sext i32 %102 to i64
  %103 = load %struct._XGC**, %struct._XGC*** %gcs.addr, align 8
  %arrayidx122 = getelementptr inbounds %struct._XGC*, %struct._XGC** %103, i64 %idxprom121
  %104 = load %struct._XGC*, %struct._XGC** %arrayidx122, align 8
  br label %cond.end.123

cond.end.123:                                     ; preds = %cond.false.120, %cond.true.119
  %cond124 = phi %struct._XGC* [ %101, %cond.true.119 ], [ %104, %cond.false.120 ]
  %105 = load %struct.XPoint*, %struct.XPoint** %pp, align 8
  %106 = load i32, i32* %size.addr, align 4
  %call125 = call i32 @XDrawPoints(%struct._XDisplay* %96, i64 %99, %struct._XGC* %cond124, %struct.XPoint* %105, i32 %106, i32 0)
  %107 = load i32, i32* %idx, align 4
  %idxprom126 = sext i32 %107 to i64
  %108 = load i32*, i32** %n.addr, align 8
  %arrayidx127 = getelementptr inbounds i32, i32* %108, i64 %idxprom126
  store i32 0, i32* %arrayidx127, align 4
  br label %if.end.128

if.end.128:                                       ; preds = %cond.end.123, %if.then.83
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128, %cond.end
  br label %for.inc.130

for.inc.130:                                      ; preds = %if.end.129
  %109 = load i32, i32* %j, align 4
  %inc131 = add nsw i32 %109, 1
  store i32 %inc131, i32* %j, align 4
  br label %for.cond.59

for.end.132:                                      ; preds = %for.cond.59
  br label %for.inc.133

for.inc.133:                                      ; preds = %for.end.132
  %110 = load i32, i32* %i, align 4
  %inc134 = add nsw i32 %110, 1
  store i32 %inc134, i32* %i, align 4
  %pitch135 = getelementptr inbounds %struct.font_bitmap, %struct.font_bitmap* %bitmap, i32 0, i32 3
  %111 = load i32, i32* %pitch135, align 4
  %112 = load i8*, i8** %b, align 8
  %idx.ext136 = sext i32 %111 to i64
  %add.ptr137 = getelementptr inbounds i8, i8* %112, i64 %idx.ext136
  store i8* %add.ptr137, i8** %b, align 8
  br label %for.cond.54

for.end.138:                                      ; preds = %for.cond.54
  %113 = load i8, i8* %flush.addr, align 1
  %tobool139 = trunc i8 %113 to i1
  br i1 %tobool139, label %if.then.140, label %if.end.184

if.then.140:                                      ; preds = %for.end.138
  store i32 0, i32* %i, align 4
  br label %for.cond.141

for.cond.141:                                     ; preds = %for.inc.166, %if.then.140
  %114 = load i32, i32* %i, align 4
  %cmp142 = icmp slt i32 %114, 6
  br i1 %cmp142, label %for.body.144, label %for.end.168

for.body.144:                                     ; preds = %for.cond.141
  %115 = load i32, i32* %i, align 4
  %idxprom145 = sext i32 %115 to i64
  %116 = load i32*, i32** %n.addr, align 8
  %arrayidx146 = getelementptr inbounds i32, i32* %116, i64 %idxprom145
  %117 = load i32, i32* %arrayidx146, align 4
  %cmp147 = icmp sgt i32 %117, 0
  br i1 %cmp147, label %if.then.149, label %if.end.165

if.then.149:                                      ; preds = %for.body.144
  %118 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data150 = getelementptr inbounds %struct.frame, %struct.frame* %118, i32 0, i32 62
  %x151 = bitcast %union.output_data* %output_data150 to %struct.x_output**
  %119 = load %struct.x_output*, %struct.x_output** %x151, align 8
  %display_info152 = getelementptr inbounds %struct.x_output, %struct.x_output* %119, i32 0, i32 44
  %120 = load %struct.x_display_info*, %struct.x_display_info** %display_info152, align 8
  %display153 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %120, i32 0, i32 2
  %121 = load %struct._XDisplay*, %struct._XDisplay** %display153, align 8
  %122 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data154 = getelementptr inbounds %struct.frame, %struct.frame* %122, i32 0, i32 62
  %x155 = bitcast %union.output_data* %output_data154 to %struct.x_output**
  %123 = load %struct.x_output*, %struct.x_output** %x155, align 8
  %window_desc156 = getelementptr inbounds %struct.x_output, %struct.x_output* %123, i32 0, i32 9
  %124 = load i64, i64* %window_desc156, align 8
  %125 = load i32, i32* %i, align 4
  %idxprom157 = sext i32 %125 to i64
  %126 = load %struct._XGC**, %struct._XGC*** %gcs.addr, align 8
  %arrayidx158 = getelementptr inbounds %struct._XGC*, %struct._XGC** %126, i64 %idxprom157
  %127 = load %struct._XGC*, %struct._XGC** %arrayidx158, align 8
  %128 = load %struct.XPoint*, %struct.XPoint** %p.addr, align 8
  %129 = load i32, i32* %i, align 4
  %mul159 = mul nsw i32 256, %129
  %idx.ext160 = sext i32 %mul159 to i64
  %add.ptr161 = getelementptr inbounds %struct.XPoint, %struct.XPoint* %128, i64 %idx.ext160
  %130 = load i32, i32* %i, align 4
  %idxprom162 = sext i32 %130 to i64
  %131 = load i32*, i32** %n.addr, align 8
  %arrayidx163 = getelementptr inbounds i32, i32* %131, i64 %idxprom162
  %132 = load i32, i32* %arrayidx163, align 4
  %call164 = call i32 @XDrawPoints(%struct._XDisplay* %121, i64 %124, %struct._XGC* %127, %struct.XPoint* %add.ptr161, i32 %132, i32 0)
  br label %if.end.165

if.end.165:                                       ; preds = %if.then.149, %for.body.144
  br label %for.inc.166

for.inc.166:                                      ; preds = %if.end.165
  %133 = load i32, i32* %i, align 4
  %inc167 = add nsw i32 %133, 1
  store i32 %inc167, i32* %i, align 4
  br label %for.cond.141

for.end.168:                                      ; preds = %for.cond.141
  %134 = load i32*, i32** %n.addr, align 8
  %arrayidx169 = getelementptr inbounds i32, i32* %134, i64 6
  %135 = load i32, i32* %arrayidx169, align 4
  %cmp170 = icmp sgt i32 %135, 0
  br i1 %cmp170, label %if.then.172, label %if.end.183

if.then.172:                                      ; preds = %for.end.168
  %136 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data173 = getelementptr inbounds %struct.frame, %struct.frame* %136, i32 0, i32 62
  %x174 = bitcast %union.output_data* %output_data173 to %struct.x_output**
  %137 = load %struct.x_output*, %struct.x_output** %x174, align 8
  %display_info175 = getelementptr inbounds %struct.x_output, %struct.x_output* %137, i32 0, i32 44
  %138 = load %struct.x_display_info*, %struct.x_display_info** %display_info175, align 8
  %display176 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %138, i32 0, i32 2
  %139 = load %struct._XDisplay*, %struct._XDisplay** %display176, align 8
  %140 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data177 = getelementptr inbounds %struct.frame, %struct.frame* %140, i32 0, i32 62
  %x178 = bitcast %union.output_data* %output_data177 to %struct.x_output**
  %141 = load %struct.x_output*, %struct.x_output** %x178, align 8
  %window_desc179 = getelementptr inbounds %struct.x_output, %struct.x_output* %141, i32 0, i32 9
  %142 = load i64, i64* %window_desc179, align 8
  %143 = load %struct._XGC*, %struct._XGC** %gc_fore.addr, align 8
  %144 = load %struct.XPoint*, %struct.XPoint** %p.addr, align 8
  %add.ptr180 = getelementptr inbounds %struct.XPoint, %struct.XPoint* %144, i64 1536
  %145 = load i32*, i32** %n.addr, align 8
  %arrayidx181 = getelementptr inbounds i32, i32* %145, i64 6
  %146 = load i32, i32* %arrayidx181, align 4
  %call182 = call i32 @XDrawPoints(%struct._XDisplay* %139, i64 %142, %struct._XGC* %143, %struct.XPoint* %add.ptr180, i32 %146, i32 0)
  br label %if.end.183

if.end.183:                                       ; preds = %if.then.172, %for.end.168
  br label %if.end.184

if.end.184:                                       ; preds = %if.end.183, %for.end.138
  br label %if.end.185

if.end.185:                                       ; preds = %if.end.184, %if.end.52
  %147 = load void (%struct.font*, %struct.font_bitmap*)*, void (%struct.font*, %struct.font_bitmap*)** getelementptr inbounds (%struct.font_driver, %struct.font_driver* @ftfont_driver, i32 0, i32 16), align 8
  %tobool186 = icmp ne void (%struct.font*, %struct.font_bitmap*)* %147, null
  br i1 %tobool186, label %if.then.187, label %if.end.188

if.then.187:                                      ; preds = %if.end.185
  %148 = load void (%struct.font*, %struct.font_bitmap*)*, void (%struct.font*, %struct.font_bitmap*)** getelementptr inbounds (%struct.font_driver, %struct.font_driver* @ftfont_driver, i32 0, i32 16), align 8
  %149 = load %struct.font*, %struct.font** %font.addr, align 8
  call void %148(%struct.font* %149, %struct.font_bitmap* %bitmap)
  br label %if.end.188

if.end.188:                                       ; preds = %if.then.187, %if.end.185
  %advance = getelementptr inbounds %struct.font_bitmap, %struct.font_bitmap* %bitmap, i32 0, i32 7
  %150 = load i32, i32* %advance, align 4
  store i32 %150, i32* %retval
  br label %return

return:                                           ; preds = %if.end.188, %if.then
  %151 = load i32, i32* %retval
  ret i32 %151
}

declare i32 @XSetClipMask(%struct._XDisplay*, %struct._XGC*, i64) #2

declare void @unblock_input() #2

declare i64 @unbind_to(i64, i64) #2

declare i32 @XSetForeground(%struct._XDisplay*, %struct._XGC*, i64) #2

declare i32 @XFillRectangle(%struct._XDisplay*, i64, %struct._XGC*, i32, i32, i32, i32) #2

declare i8* @font_get_frame_data(%struct.frame*, i64) #2

declare noalias i8* @xmalloc(i64) #2

declare void @font_put_frame_data(%struct.frame*, i64, i8*) #2

declare i32 @XQueryColors(%struct._XDisplay*, i64, %struct.XColor*, i32) #2

declare zeroext i1 @x_alloc_nearest_color(%struct.frame*, i64, %struct.XColor*) #2

declare %struct._XGC* @XCreateGC(%struct._XDisplay*, i64, i64, %struct.XGCValues*) #2

declare i32 @XFreeGC(%struct._XDisplay*, %struct._XGC*) #2

declare i32 @XDrawPoints(%struct._XDisplay*, i64, %struct._XGC*, %struct.XPoint*, i32, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
