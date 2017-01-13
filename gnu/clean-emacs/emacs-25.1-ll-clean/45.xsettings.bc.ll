; ModuleID = './src/xsettings.bc'
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
%struct._GSettings = type { %struct._GObject, %struct._GSettingsPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GSettingsPrivate = type opaque
%struct.Lisp_Subr = type { %struct.vectorlike_header, %union.anon.11, i16, i16, i8*, i8*, i8* }
%union.anon.11 = type { i64 ()* }
%struct.Lisp_Boolfwd = type { i32, i8* }
%struct.Lisp_Objfwd = type { i32, i64* }
%union._XEvent = type { [24 x i64] }
%struct.XAnyEvent = type { i32, i64, i32, %struct._XDisplay*, i64 }
%struct.XClientMessageEvent = type { i32, i64, i32, %struct._XDisplay*, i64, i64, i32, %union.anon.5 }
%union.anon.5 = type { [5 x i64] }
%struct.XPropertyEvent = type { i32, i64, i32, %struct._XDisplay*, i64, i64, i64, i32 }
%struct.xsettings = type { i32, i32, i32, i32, i32, double, i8*, i8*, i32 }
%struct._GVariant = type opaque
%struct._GSettingsSchema = type opaque
%struct._GSettingsSchemaSource = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon.13] }
%union.anon.13 = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GVariantType = type opaque
%struct._FcPattern = type opaque
%struct.Lisp_Cons = type { i64, %union.anon.12 }
%union.anon.12 = type { i64 }

@first_dpyinfo = internal global %struct.x_display_info* null, align 8
@current_mono_font = internal global i8* null, align 8
@current_font = internal global i8* null, align 8
@globals = external global %struct.emacs_globals, align 8
@current_tool_bar_style = internal global i64 0, align 8
@gsettings_client = internal global %struct._GSettings* null, align 8
@Sfont_get_system_font = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon.11 { i64 ()* @Ffont_get_system_font }, i16 0, i16 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.40, i32 0, i32 0), i8* null, i8* null }, align 8
@Sfont_get_system_normal_font = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon.11 { i64 ()* @Ffont_get_system_normal_font }, i16 0, i16 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.41, i32 0, i32 0), i8* null, i8* null }, align 8
@syms_of_xsettings.b_fwd = internal global %struct.Lisp_Boolfwd zeroinitializer, align 8
@.str = private unnamed_addr constant [21 x i8] c"font-use-system-font\00", align 1
@syms_of_xsettings.o_fwd = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"xft-settings\00", align 1
@empty_unibyte_string = external global i64, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"font-render-setting\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"system-font-setting\00", align 1
@Stool_bar_get_system_style = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon.11 { i64 ()* @Ftool_bar_get_system_style }, i16 0, i16 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.42, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"dynamic-setting\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Gtk/ToolbarStyle\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"Xft/\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Gtk/FontName\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"Xft/Antialias\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"Xft/Hinting\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"Xft/HintStyle\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"hintnone\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"hintslight\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"hintmedium\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"hintfull\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"Xft/RGBA\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"rgb\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"bgr\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"vrgb\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"vbgr\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"Xft/DPI\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"Xft/lcdfilter\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"lcddefault\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"antialias\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"hinting\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"hintstyle\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"lcdfilter\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"rgba\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"dpi\00", align 1
@apply_xft_settings.format = internal constant [76 x i8] c"Antialias: %d, Hinting: %d, RGBA: %d, LCDFilter: %d, Hintstyle: %d, DPI: %f\00", align 16
@x_display_list = external global %struct.x_display_info*, align 8
@.str.30 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"both-horiz\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"icons\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.34 = private unnamed_addr constant [28 x i8] c"org.gnome.desktop.interface\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"toolbar-style\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"monospace-font-name\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"font-name\00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"font-get-system-font\00", align 1
@.str.41 = private unnamed_addr constant [28 x i8] c"font-get-system-normal-font\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"tool-bar-get-system-style\00", align 1

; Function Attrs: nounwind uwtable
define void @xft_settings_event(%struct.x_display_info* %dpyinfo, %union._XEvent* %event) #0 {
entry:
  %dpyinfo.addr = alloca %struct.x_display_info*, align 8
  %event.addr = alloca %union._XEvent*, align 8
  %check_window_p = alloca i8, align 1
  %apply_settings_p = alloca i8, align 1
  store %struct.x_display_info* %dpyinfo, %struct.x_display_info** %dpyinfo.addr, align 8
  store %union._XEvent* %event, %union._XEvent** %event.addr, align 8
  store i8 0, i8* %check_window_p, align 1
  store i8 0, i8* %apply_settings_p, align 1
  %0 = load %union._XEvent*, %union._XEvent** %event.addr, align 8
  %type = bitcast %union._XEvent* %0 to i32*
  %1 = load i32, i32* %type, align 4
  switch i32 %1, label %sw.epilog [
    i32 17, label %sw.bb
    i32 33, label %sw.bb.1
    i32 28, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %xsettings_window = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %2, i32 0, i32 121
  %3 = load i64, i64* %xsettings_window, align 8
  %4 = load %union._XEvent*, %union._XEvent** %event.addr, align 8
  %xany = bitcast %union._XEvent* %4 to %struct.XAnyEvent*
  %window = getelementptr inbounds %struct.XAnyEvent, %struct.XAnyEvent* %xany, i32 0, i32 4
  %5 = load i64, i64* %window, align 8
  %cmp = icmp eq i64 %3, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store i8 1, i8* %check_window_p, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %6 = load %union._XEvent*, %union._XEvent** %event.addr, align 8
  %xclient = bitcast %union._XEvent* %6 to %struct.XClientMessageEvent*
  %message_type = getelementptr inbounds %struct.XClientMessageEvent, %struct.XClientMessageEvent* %xclient, i32 0, i32 5
  %7 = load i64, i64* %message_type, align 8
  %8 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %Xatom_xsettings_mgr = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %8, i32 0, i32 120
  %9 = load i64, i64* %Xatom_xsettings_mgr, align 8
  %cmp2 = icmp eq i64 %7, %9
  br i1 %cmp2, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %sw.bb.1
  %10 = load %union._XEvent*, %union._XEvent** %event.addr, align 8
  %xclient3 = bitcast %union._XEvent* %10 to %struct.XClientMessageEvent*
  %data = getelementptr inbounds %struct.XClientMessageEvent, %struct.XClientMessageEvent* %xclient3, i32 0, i32 7
  %l = bitcast %union.anon.5* %data to [5 x i64]*
  %arrayidx = getelementptr inbounds [5 x i64], [5 x i64]* %l, i32 0, i64 1
  %11 = load i64, i64* %arrayidx, align 8
  %12 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %Xatom_xsettings_sel = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %12, i32 0, i32 118
  %13 = load i64, i64* %Xatom_xsettings_sel, align 8
  %cmp4 = icmp eq i64 %11, %13
  br i1 %cmp4, label %land.lhs.true.5, label %if.end.10

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %14 = load %union._XEvent*, %union._XEvent** %event.addr, align 8
  %xclient6 = bitcast %union._XEvent* %14 to %struct.XClientMessageEvent*
  %window7 = getelementptr inbounds %struct.XClientMessageEvent, %struct.XClientMessageEvent* %xclient6, i32 0, i32 4
  %15 = load i64, i64* %window7, align 8
  %16 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %root_window = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %16, i32 0, i32 14
  %17 = load i64, i64* %root_window, align 8
  %cmp8 = icmp eq i64 %15, %17
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %land.lhs.true.5
  store i8 1, i8* %check_window_p, align 1
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %land.lhs.true.5, %land.lhs.true, %sw.bb.1
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %18 = load %union._XEvent*, %union._XEvent** %event.addr, align 8
  %xproperty = bitcast %union._XEvent* %18 to %struct.XPropertyEvent*
  %window12 = getelementptr inbounds %struct.XPropertyEvent, %struct.XPropertyEvent* %xproperty, i32 0, i32 4
  %19 = load i64, i64* %window12, align 8
  %20 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %xsettings_window13 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %20, i32 0, i32 121
  %21 = load i64, i64* %xsettings_window13, align 8
  %cmp14 = icmp eq i64 %19, %21
  br i1 %cmp14, label %land.lhs.true.15, label %if.end.22

land.lhs.true.15:                                 ; preds = %sw.bb.11
  %22 = load %union._XEvent*, %union._XEvent** %event.addr, align 8
  %xproperty16 = bitcast %union._XEvent* %22 to %struct.XPropertyEvent*
  %state = getelementptr inbounds %struct.XPropertyEvent, %struct.XPropertyEvent* %xproperty16, i32 0, i32 7
  %23 = load i32, i32* %state, align 4
  %cmp17 = icmp eq i32 %23, 0
  br i1 %cmp17, label %land.lhs.true.18, label %if.end.22

land.lhs.true.18:                                 ; preds = %land.lhs.true.15
  %24 = load %union._XEvent*, %union._XEvent** %event.addr, align 8
  %xproperty19 = bitcast %union._XEvent* %24 to %struct.XPropertyEvent*
  %atom = getelementptr inbounds %struct.XPropertyEvent, %struct.XPropertyEvent* %xproperty19, i32 0, i32 5
  %25 = load i64, i64* %atom, align 8
  %26 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %Xatom_xsettings_prop = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %26, i32 0, i32 119
  %27 = load i64, i64* %Xatom_xsettings_prop, align 8
  %cmp20 = icmp eq i64 %25, %27
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %land.lhs.true.18
  store i8 1, i8* %apply_settings_p, align 1
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %land.lhs.true.18, %land.lhs.true.15, %sw.bb.11
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end.22, %if.end.10, %if.end
  %28 = load i8, i8* %check_window_p, align 1
  %tobool = trunc i8 %28 to i1
  br i1 %tobool, label %if.then.23, label %if.end.29

if.then.23:                                       ; preds = %sw.epilog
  %29 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %xsettings_window24 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %29, i32 0, i32 121
  store i64 0, i64* %xsettings_window24, align 8
  %30 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  call void @get_prop_window(%struct.x_display_info* %30)
  %31 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %xsettings_window25 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %31, i32 0, i32 121
  %32 = load i64, i64* %xsettings_window25, align 8
  %cmp26 = icmp ne i64 %32, 0
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.then.23
  store i8 1, i8* %apply_settings_p, align 1
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.then.23
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %sw.epilog
  %33 = load i8, i8* %apply_settings_p, align 1
  %tobool30 = trunc i8 %33 to i1
  br i1 %tobool30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.29
  %34 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  call void @read_and_apply_settings(%struct.x_display_info* %34, i1 zeroext true)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.end.29
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @get_prop_window(%struct.x_display_info* %dpyinfo) #0 {
entry:
  %dpyinfo.addr = alloca %struct.x_display_info*, align 8
  %dpy = alloca %struct._XDisplay*, align 8
  store %struct.x_display_info* %dpyinfo, %struct.x_display_info** %dpyinfo.addr, align 8
  %0 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %0, i32 0, i32 2
  %1 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  store %struct._XDisplay* %1, %struct._XDisplay** %dpy, align 8
  %2 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8
  %call = call i32 @XGrabServer(%struct._XDisplay* %2)
  %3 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8
  %4 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %Xatom_xsettings_sel = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %4, i32 0, i32 118
  %5 = load i64, i64* %Xatom_xsettings_sel, align 8
  %call1 = call i64 @XGetSelectionOwner(%struct._XDisplay* %3, i64 %5)
  %6 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %xsettings_window = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %6, i32 0, i32 121
  store i64 %call1, i64* %xsettings_window, align 8
  %7 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %xsettings_window2 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %7, i32 0, i32 121
  %8 = load i64, i64* %xsettings_window2, align 8
  %cmp = icmp ne i64 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8
  %10 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %xsettings_window3 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %10, i32 0, i32 121
  %11 = load i64, i64* %xsettings_window3, align 8
  %call4 = call i32 @XSelectInput(%struct._XDisplay* %9, i64 %11, i64 4325376)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8
  %call5 = call i32 @XUngrabServer(%struct._XDisplay* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @read_and_apply_settings(%struct.x_display_info* %dpyinfo, i1 zeroext %send_event_p) #0 {
entry:
  %dpyinfo.addr = alloca %struct.x_display_info*, align 8
  %send_event_p.addr = alloca i8, align 1
  %settings = alloca %struct.xsettings, align 8
  store %struct.x_display_info* %dpyinfo, %struct.x_display_info** %dpyinfo.addr, align 8
  %frombool = zext i1 %send_event_p to i8
  store i8 %frombool, i8* %send_event_p.addr, align 1
  %0 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %call = call zeroext i1 @read_settings(%struct.x_display_info* %0, %struct.xsettings* %settings)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.19

if.end:                                           ; preds = %entry
  %1 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  call void @apply_xft_settings(%struct.x_display_info* %1, %struct.xsettings* %settings)
  %seen = getelementptr inbounds %struct.xsettings, %struct.xsettings* %settings, i32 0, i32 8
  %2 = load i32, i32* %seen, align 4
  %and = and i32 %2, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.1, label %if.end.8

if.then.1:                                        ; preds = %if.end
  %3 = load i8, i8* %send_event_p.addr, align 1
  %tobool2 = trunc i8 %3 to i1
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then.1
  %tb_style = getelementptr inbounds %struct.xsettings, %struct.xsettings* %settings, i32 0, i32 7
  %4 = load i8*, i8** %tb_style, align 8
  %5 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  call void @store_tool_bar_style_changed(i8* %4, %struct.x_display_info* %5)
  br label %if.end.6

if.else:                                          ; preds = %if.then.1
  %tb_style4 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %settings, i32 0, i32 7
  %6 = load i8*, i8** %tb_style4, align 8
  %call5 = call i64 @map_tool_bar_style(i8* %6)
  store i64 %call5, i64* @current_tool_bar_style, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.3
  %tb_style7 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %settings, i32 0, i32 7
  %7 = load i8*, i8** %tb_style7, align 8
  call void @xfree(i8* %7)
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.6, %if.end
  %seen9 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %settings, i32 0, i32 8
  %8 = load i32, i32* %seen9, align 4
  %and10 = and i32 %8, 64
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.19

if.then.12:                                       ; preds = %if.end.8
  %9 = load i8, i8* %send_event_p.addr, align 1
  %tobool13 = trunc i8 %9 to i1
  br i1 %tobool13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %if.then.12
  %font = getelementptr inbounds %struct.xsettings, %struct.xsettings* %settings, i32 0, i32 6
  %10 = load i8*, i8** %font, align 8
  call void @store_font_name_changed(i8* %10)
  br label %if.end.17

if.else.15:                                       ; preds = %if.then.12
  %font16 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %settings, i32 0, i32 6
  %11 = load i8*, i8** %font16, align 8
  call void @dupstring(i8** @current_font, i8* %11)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.15, %if.then.14
  %font18 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %settings, i32 0, i32 6
  %12 = load i8*, i8** %font18, align 8
  call void @xfree(i8* %12)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then, %if.end.17, %if.end.8
  ret void
}

; Function Attrs: nounwind uwtable
define void @xsettings_initialize(%struct.x_display_info* %dpyinfo) #0 {
entry:
  %dpyinfo.addr = alloca %struct.x_display_info*, align 8
  store %struct.x_display_info* %dpyinfo, %struct.x_display_info** %dpyinfo.addr, align 8
  %0 = load %struct.x_display_info*, %struct.x_display_info** @first_dpyinfo, align 8
  %cmp = icmp eq %struct.x_display_info* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  store %struct.x_display_info* %1, %struct.x_display_info** @first_dpyinfo, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @init_gconf()
  %2 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  call void @init_xsettings(%struct.x_display_info* %2)
  call void @init_gsettings()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @init_gconf() #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @init_xsettings(%struct.x_display_info* %dpyinfo) #0 {
entry:
  %dpyinfo.addr = alloca %struct.x_display_info*, align 8
  %dpy = alloca %struct._XDisplay*, align 8
  store %struct.x_display_info* %dpyinfo, %struct.x_display_info** %dpyinfo.addr, align 8
  %0 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %0, i32 0, i32 2
  %1 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  store %struct._XDisplay* %1, %struct._XDisplay** %dpy, align 8
  call void @block_input()
  %2 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8
  %3 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %root_window = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %3, i32 0, i32 14
  %4 = load i64, i64* %root_window, align 8
  %call = call i32 @XSelectInput(%struct._XDisplay* %2, i64 %4, i64 131072)
  %5 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  call void @get_prop_window(%struct.x_display_info* %5)
  %6 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %xsettings_window = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %6, i32 0, i32 121
  %7 = load i64, i64* %xsettings_window, align 8
  %cmp = icmp ne i64 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  call void @read_and_apply_settings(%struct.x_display_info* %8, i1 zeroext false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @unblock_input()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @init_gsettings() #0 {
entry:
  %val = alloca %struct._GVariant*, align 8
  %schema_found = alloca i8, align 1
  %sc = alloca %struct._GSettingsSchema*, align 8
  store i8 0, i8* %schema_found, align 1
  %call = call %struct._GSettingsSchemaSource* @g_settings_schema_source_get_default()
  %call1 = call %struct._GSettingsSchema* @g_settings_schema_source_lookup(%struct._GSettingsSchemaSource* %call, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.34, i32 0, i32 0), i32 1)
  store %struct._GSettingsSchema* %call1, %struct._GSettingsSchema** %sc, align 8
  %0 = load %struct._GSettingsSchema*, %struct._GSettingsSchema** %sc, align 8
  %cmp = icmp ne %struct._GSettingsSchema* %0, null
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, i8* %schema_found, align 1
  %1 = load %struct._GSettingsSchema*, %struct._GSettingsSchema** %sc, align 8
  %tobool = icmp ne %struct._GSettingsSchema* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GSettingsSchema*, %struct._GSettingsSchema** %sc, align 8
  call void @g_settings_schema_unref(%struct._GSettingsSchema* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8, i8* %schema_found, align 1
  %tobool2 = trunc i8 %3 to i1
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %if.end.43

if.end.4:                                         ; preds = %if.end
  %call5 = call %struct._GSettings* @g_settings_new(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.34, i32 0, i32 0))
  store %struct._GSettings* %call5, %struct._GSettings** @gsettings_client, align 8
  %4 = load %struct._GSettings*, %struct._GSettings** @gsettings_client, align 8
  %tobool6 = icmp ne %struct._GSettings* %4, null
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.4
  br label %if.end.43

if.end.8:                                         ; preds = %if.end.4
  %5 = load %struct._GSettings*, %struct._GSettings** @gsettings_client, align 8
  %6 = bitcast %struct._GSettings* %5 to %struct._GTypeInstance*
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 80)
  %7 = bitcast %struct._GTypeInstance* %call9 to %struct._GObject*
  %8 = bitcast %struct._GObject* %7 to i8*
  %call10 = call i8* @g_object_ref_sink(i8* %8)
  %9 = load %struct._GSettings*, %struct._GSettings** @gsettings_client, align 8
  %10 = bitcast %struct._GSettings* %9 to %struct._GTypeInstance*
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 80)
  %11 = bitcast %struct._GTypeInstance* %call11 to %struct._GObject*
  %12 = bitcast %struct._GObject* %11 to i8*
  %call12 = call i64 @g_signal_connect_data(i8* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), void ()* bitcast (void (%struct._GSettings*, i8*, i8*)* @something_changed_gsettingsCB to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %13 = load %struct._GSettings*, %struct._GSettings** @gsettings_client, align 8
  %call13 = call %struct._GVariant* @g_settings_get_value(%struct._GSettings* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i32 0, i32 0))
  store %struct._GVariant* %call13, %struct._GVariant** %val, align 8
  %14 = load %struct._GVariant*, %struct._GVariant** %val, align 8
  %tobool14 = icmp ne %struct._GVariant* %14, null
  br i1 %tobool14, label %if.then.15, label %if.end.23

if.then.15:                                       ; preds = %if.end.8
  %15 = load %struct._GVariant*, %struct._GVariant** %val, align 8
  %call16 = call %struct._GVariant* @g_variant_ref_sink(%struct._GVariant* %15)
  %16 = load %struct._GVariant*, %struct._GVariant** %val, align 8
  %call17 = call i32 @g_variant_is_of_type(%struct._GVariant* %16, %struct._GVariantType* bitcast ([2 x i8]* @.str.37 to %struct._GVariantType*))
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %if.then.15
  %17 = load %struct._GVariant*, %struct._GVariant** %val, align 8
  %call20 = call i8* @g_variant_get_string(%struct._GVariant* %17, i64* null)
  %call21 = call i64 @map_tool_bar_style(i8* %call20)
  store i64 %call21, i64* @current_tool_bar_style, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %if.then.15
  %18 = load %struct._GVariant*, %struct._GVariant** %val, align 8
  call void @g_variant_unref(%struct._GVariant* %18)
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end.8
  %19 = load %struct._GSettings*, %struct._GSettings** @gsettings_client, align 8
  %call24 = call %struct._GVariant* @g_settings_get_value(%struct._GSettings* %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.38, i32 0, i32 0))
  store %struct._GVariant* %call24, %struct._GVariant** %val, align 8
  %20 = load %struct._GVariant*, %struct._GVariant** %val, align 8
  %tobool25 = icmp ne %struct._GVariant* %20, null
  br i1 %tobool25, label %if.then.26, label %if.end.33

if.then.26:                                       ; preds = %if.end.23
  %21 = load %struct._GVariant*, %struct._GVariant** %val, align 8
  %call27 = call %struct._GVariant* @g_variant_ref_sink(%struct._GVariant* %21)
  %22 = load %struct._GVariant*, %struct._GVariant** %val, align 8
  %call28 = call i32 @g_variant_is_of_type(%struct._GVariant* %22, %struct._GVariantType* bitcast ([2 x i8]* @.str.37 to %struct._GVariantType*))
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.then.26
  %23 = load %struct._GVariant*, %struct._GVariant** %val, align 8
  %call31 = call i8* @g_variant_get_string(%struct._GVariant* %23, i64* null)
  call void @dupstring(i8** @current_mono_font, i8* %call31)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %if.then.26
  %24 = load %struct._GVariant*, %struct._GVariant** %val, align 8
  call void @g_variant_unref(%struct._GVariant* %24)
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end.23
  %25 = load %struct._GSettings*, %struct._GSettings** @gsettings_client, align 8
  %call34 = call %struct._GVariant* @g_settings_get_value(%struct._GSettings* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0))
  store %struct._GVariant* %call34, %struct._GVariant** %val, align 8
  %26 = load %struct._GVariant*, %struct._GVariant** %val, align 8
  %tobool35 = icmp ne %struct._GVariant* %26, null
  br i1 %tobool35, label %if.then.36, label %if.end.43

if.then.36:                                       ; preds = %if.end.33
  %27 = load %struct._GVariant*, %struct._GVariant** %val, align 8
  %call37 = call %struct._GVariant* @g_variant_ref_sink(%struct._GVariant* %27)
  %28 = load %struct._GVariant*, %struct._GVariant** %val, align 8
  %call38 = call i32 @g_variant_is_of_type(%struct._GVariant* %28, %struct._GVariantType* bitcast ([2 x i8]* @.str.37 to %struct._GVariantType*))
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %if.then.36
  %29 = load %struct._GVariant*, %struct._GVariant** %val, align 8
  %call41 = call i8* @g_variant_get_string(%struct._GVariant* %29, i64* null)
  call void @dupstring(i8** @current_font, i8* %call41)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %if.then.36
  %30 = load %struct._GVariant*, %struct._GVariant** %val, align 8
  call void @g_variant_unref(%struct._GVariant* %30)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.3, %if.then.7, %if.end.42, %if.end.33
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @xsettings_get_system_font() #0 {
entry:
  %0 = load i8*, i8** @current_mono_font, align 8
  ret i8* %0
}

; Function Attrs: nounwind uwtable
define i64 @Ffont_get_system_normal_font() #0 {
entry:
  %0 = load i8*, i8** @current_font, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i8*, i8** @current_font, align 8
  %call = call i64 @build_string(i8* %1)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call, %cond.true ], [ %call1, %cond.false ]
  ret i64 %cond
}

declare i64 @build_string(i8*) #1

declare i64 @builtin_lisp_symbol(i32) #1

; Function Attrs: nounwind uwtable
define i64 @Ffont_get_system_font() #0 {
entry:
  %0 = load i8*, i8** @current_mono_font, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i8*, i8** @current_mono_font, align 8
  %call = call i64 @build_string(i8* %1)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call, %cond.true ], [ %call1, %cond.false ]
  ret i64 %cond
}

; Function Attrs: nounwind uwtable
define i64 @Ftool_bar_get_system_style() #0 {
entry:
  %retval = alloca i64, align 8
  %0 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 303), align 8
  %call = call i64 @builtin_lisp_symbol(i32 537)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 303), align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 910)
  %cmp2 = icmp eq i64 %1, %call1
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %2 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 303), align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 211)
  %cmp5 = icmp eq i64 %2, %call4
  br i1 %cmp5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.3
  %3 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 303), align 8
  %call7 = call i64 @builtin_lisp_symbol(i32 212)
  %cmp8 = icmp eq i64 %3, %call7
  br i1 %cmp8, label %if.then, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.6
  %4 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 303), align 8
  %call10 = call i64 @builtin_lisp_symbol(i32 911)
  %cmp11 = icmp eq i64 %4, %call10
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.9, %lor.lhs.false.6, %lor.lhs.false.3, %lor.lhs.false, %entry
  %5 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 303), align 8
  store i64 %5, i64* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.9
  %6 = load i64, i64* @current_tool_bar_style, align 8
  %call12 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp13 = icmp eq i64 %6, %call12
  br i1 %cmp13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.end
  %7 = load i64, i64* @current_tool_bar_style, align 8
  store i64 %7, i64* %retval
  br label %return

if.end.15:                                        ; preds = %if.end
  %call16 = call i64 @builtin_lisp_symbol(i32 537)
  store i64 %call16, i64* %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.14, %if.then
  %8 = load i64, i64* %retval
  ret i64 %8
}

; Function Attrs: nounwind uwtable
define void @syms_of_xsettings() #0 {
entry:
  store i8* null, i8** @current_mono_font, align 8
  store i8* null, i8** @current_font, align 8
  store %struct.x_display_info* null, %struct.x_display_info** @first_dpyinfo, align 8
  store %struct._GSettings* null, %struct._GSettings** @gsettings_client, align 8
  call void @defsubr(%struct.Lisp_Subr* @Sfont_get_system_font)
  call void @defsubr(%struct.Lisp_Subr* @Sfont_get_system_normal_font)
  br label %do.body

do.body:                                          ; preds = %entry
  call void @defvar_bool(%struct.Lisp_Boolfwd* @syms_of_xsettings.b_fwd, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 495))
  br label %do.end

do.end:                                           ; preds = %do.body
  store i8 0, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 495), align 1
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_xsettings.o_fwd, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 367))
  br label %do.end.2

do.end.2:                                         ; preds = %do.body.1
  %0 = load i64, i64* @empty_unibyte_string, align 8
  store i64 %0, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 367), align 8
  %call = call i64 @intern_c_string(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %call4 = call i64 @Fprovide(i64 %call, i64 %call3)
  %call5 = call i64 @intern_c_string(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0))
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  %call7 = call i64 @Fprovide(i64 %call5, i64 %call6)
  %call8 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call8, i64* @current_tool_bar_style, align 8
  call void @defsubr(%struct.Lisp_Subr* @Stool_bar_get_system_style)
  %call9 = call i64 @intern_c_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0))
  %call10 = call i64 @builtin_lisp_symbol(i32 0)
  %call11 = call i64 @Fprovide(i64 %call9, i64 %call10)
  ret void
}

declare void @defsubr(%struct.Lisp_Subr*) #1

declare void @defvar_bool(%struct.Lisp_Boolfwd*, i8*, i8*) #1

declare void @defvar_lisp(%struct.Lisp_Objfwd*, i8*, i64*) #1

declare i64 @Fprovide(i64, i64) #1

declare i64 @intern_c_string(i8*) #1

declare i32 @XGrabServer(%struct._XDisplay*) #1

declare i64 @XGetSelectionOwner(%struct._XDisplay*, i64) #1

declare i32 @XSelectInput(%struct._XDisplay*, i64, i64) #1

declare i32 @XUngrabServer(%struct._XDisplay*) #1

; Function Attrs: nounwind uwtable
define internal zeroext i1 @read_settings(%struct.x_display_info* %dpyinfo, %struct.xsettings* %settings) #0 {
entry:
  %dpyinfo.addr = alloca %struct.x_display_info*, align 8
  %settings.addr = alloca %struct.xsettings*, align 8
  %act_type = alloca i64, align 8
  %act_form = alloca i32, align 4
  %nitems = alloca i64, align 8
  %bytes_after = alloca i64, align 8
  %prop = alloca i8*, align 8
  %dpy = alloca %struct._XDisplay*, align 8
  %rc = alloca i32, align 4
  %got_settings = alloca i8, align 1
  store %struct.x_display_info* %dpyinfo, %struct.x_display_info** %dpyinfo.addr, align 8
  store %struct.xsettings* %settings, %struct.xsettings** %settings.addr, align 8
  store i8* null, i8** %prop, align 8
  %0 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %0, i32 0, i32 2
  %1 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  store %struct._XDisplay* %1, %struct._XDisplay** %dpy, align 8
  store i8 0, i8* %got_settings, align 1
  %2 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8
  call void @x_catch_errors(%struct._XDisplay* %2)
  %3 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8
  %4 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %xsettings_window = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %4, i32 0, i32 121
  %5 = load i64, i64* %xsettings_window, align 8
  %6 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %Xatom_xsettings_prop = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %6, i32 0, i32 119
  %7 = load i64, i64* %Xatom_xsettings_prop, align 8
  %call = call i32 @XGetWindowProperty(%struct._XDisplay* %3, i64 %5, i64 %7, i64 0, i64 9223372036854775807, i32 0, i64 0, i64* %act_type, i32* %act_form, i64* %nitems, i64* %bytes_after, i8** %prop)
  store i32 %call, i32* %rc, align 4
  %8 = load i32, i32* %rc, align 4
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %9 = load i8*, i8** %prop, align 8
  %cmp1 = icmp ne i8* %9, null
  br i1 %cmp1, label %land.lhs.true.2, label %if.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %10 = load i32, i32* %act_form, align 4
  %cmp3 = icmp eq i32 %10, 8
  br i1 %cmp3, label %land.lhs.true.4, label %if.end

land.lhs.true.4:                                  ; preds = %land.lhs.true.2
  %11 = load i64, i64* %nitems, align 8
  %cmp5 = icmp ugt i64 %11, 0
  br i1 %cmp5, label %land.lhs.true.6, label %if.end

land.lhs.true.6:                                  ; preds = %land.lhs.true.4
  %12 = load i64, i64* %act_type, align 8
  %13 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %Xatom_xsettings_prop7 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %13, i32 0, i32 119
  %14 = load i64, i64* %Xatom_xsettings_prop7, align 8
  %cmp8 = icmp eq i64 %12, %14
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.6
  %15 = load i8*, i8** %prop, align 8
  %16 = load i64, i64* %nitems, align 8
  %17 = load %struct.xsettings*, %struct.xsettings** %settings.addr, align 8
  %call9 = call i32 @parse_settings(i8* %15, i64 %16, %struct.xsettings* %17)
  %cmp10 = icmp ne i32 %call9, 0
  %frombool = zext i1 %cmp10 to i8
  store i8 %frombool, i8* %got_settings, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.6, %land.lhs.true.4, %land.lhs.true.2, %land.lhs.true, %entry
  %18 = load i8*, i8** %prop, align 8
  %call11 = call i32 @XFree(i8* %18)
  call void @x_uncatch_errors()
  %19 = load i8, i8* %got_settings, align 1
  %tobool = trunc i8 %19 to i1
  ret i1 %tobool
}

; Function Attrs: nounwind uwtable
define internal void @apply_xft_settings(%struct.x_display_info* %dpyinfo, %struct.xsettings* %settings) #0 {
entry:
  %dpyinfo.addr = alloca %struct.x_display_info*, align 8
  %settings.addr = alloca %struct.xsettings*, align 8
  %pat = alloca %struct._FcPattern*, align 8
  %oldsettings = alloca %struct.xsettings, align 8
  %changed = alloca i8, align 1
  %buf = alloca [436 x i8], align 16
  store %struct.x_display_info* %dpyinfo, %struct.x_display_info** %dpyinfo.addr, align 8
  store %struct.xsettings* %settings, %struct.xsettings** %settings.addr, align 8
  store i8 0, i8* %changed, align 1
  %0 = bitcast %struct.xsettings* %oldsettings to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 56, i32 8, i1 false)
  %call = call %struct._FcPattern* @FcPatternCreate()
  store %struct._FcPattern* %call, %struct._FcPattern** %pat, align 8
  %1 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %1, i32 0, i32 2
  %2 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %3 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %screen = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %3, i32 0, i32 6
  %4 = load %struct.Screen*, %struct.Screen** %screen, align 8
  %call1 = call i32 @XScreenNumberOfScreen(%struct.Screen* %4)
  %5 = load %struct._FcPattern*, %struct._FcPattern** %pat, align 8
  call void @XftDefaultSubstitute(%struct._XDisplay* %2, i32 %call1, %struct._FcPattern* %5)
  %6 = load %struct._FcPattern*, %struct._FcPattern** %pat, align 8
  %aa = getelementptr inbounds %struct.xsettings, %struct.xsettings* %oldsettings, i32 0, i32 0
  %call2 = call i32 @FcPatternGetBool(%struct._FcPattern* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i32 0, i32* %aa)
  %7 = load %struct._FcPattern*, %struct._FcPattern** %pat, align 8
  %hinting = getelementptr inbounds %struct.xsettings, %struct.xsettings* %oldsettings, i32 0, i32 1
  %call3 = call i32 @FcPatternGetBool(%struct._FcPattern* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i32 0, i32* %hinting)
  %8 = load %struct._FcPattern*, %struct._FcPattern** %pat, align 8
  %hintstyle = getelementptr inbounds %struct.xsettings, %struct.xsettings* %oldsettings, i32 0, i32 4
  %call4 = call i32 @FcPatternGetInteger(%struct._FcPattern* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i32 0, i32* %hintstyle)
  %9 = load %struct._FcPattern*, %struct._FcPattern** %pat, align 8
  %lcdfilter = getelementptr inbounds %struct.xsettings, %struct.xsettings* %oldsettings, i32 0, i32 3
  %call5 = call i32 @FcPatternGetInteger(%struct._FcPattern* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i32 0, i32* %lcdfilter)
  %10 = load %struct._FcPattern*, %struct._FcPattern** %pat, align 8
  %rgba = getelementptr inbounds %struct.xsettings, %struct.xsettings* %oldsettings, i32 0, i32 2
  %call6 = call i32 @FcPatternGetInteger(%struct._FcPattern* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i32 0, i32* %rgba)
  %11 = load %struct._FcPattern*, %struct._FcPattern** %pat, align 8
  %dpi = getelementptr inbounds %struct.xsettings, %struct.xsettings* %oldsettings, i32 0, i32 5
  %call7 = call i32 @FcPatternGetDouble(%struct._FcPattern* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i32 0, double* %dpi)
  %12 = load %struct.xsettings*, %struct.xsettings** %settings.addr, align 8
  %seen = getelementptr inbounds %struct.xsettings, %struct.xsettings* %12, i32 0, i32 8
  %13 = load i32, i32* %seen, align 4
  %and = and i32 %13, 1
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %aa8 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %oldsettings, i32 0, i32 0
  %14 = load i32, i32* %aa8, align 4
  %15 = load %struct.xsettings*, %struct.xsettings** %settings.addr, align 8
  %aa9 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %15, i32 0, i32 0
  %16 = load i32, i32* %aa9, align 4
  %cmp10 = icmp ne i32 %14, %16
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %17 = load %struct._FcPattern*, %struct._FcPattern** %pat, align 8
  %call11 = call i32 @FcPatternDel(%struct._FcPattern* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0))
  %18 = load %struct._FcPattern*, %struct._FcPattern** %pat, align 8
  %19 = load %struct.xsettings*, %struct.xsettings** %settings.addr, align 8
  %aa12 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %19, i32 0, i32 0
  %20 = load i32, i32* %aa12, align 4
  %call13 = call i32 @FcPatternAddBool(%struct._FcPattern* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i32 %20)
  store i8 1, i8* %changed, align 1
  %21 = load %struct.xsettings*, %struct.xsettings** %settings.addr, align 8
  %aa14 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %21, i32 0, i32 0
  %22 = load i32, i32* %aa14, align 4
  %aa15 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %oldsettings, i32 0, i32 0
  store i32 %22, i32* %aa15, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %23 = load %struct.xsettings*, %struct.xsettings** %settings.addr, align 8
  %seen16 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %23, i32 0, i32 8
  %24 = load i32, i32* %seen16, align 4
  %and17 = and i32 %24, 2
  %cmp18 = icmp ne i32 %and17, 0
  br i1 %cmp18, label %land.lhs.true.19, label %if.end.29

land.lhs.true.19:                                 ; preds = %if.end
  %hinting20 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %oldsettings, i32 0, i32 1
  %25 = load i32, i32* %hinting20, align 4
  %26 = load %struct.xsettings*, %struct.xsettings** %settings.addr, align 8
  %hinting21 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %26, i32 0, i32 1
  %27 = load i32, i32* %hinting21, align 4
  %cmp22 = icmp ne i32 %25, %27
  br i1 %cmp22, label %if.then.23, label %if.end.29

if.then.23:                                       ; preds = %land.lhs.true.19
  %28 = load %struct._FcPattern*, %struct._FcPattern** %pat, align 8
  %call24 = call i32 @FcPatternDel(%struct._FcPattern* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0))
  %29 = load %struct._FcPattern*, %struct._FcPattern** %pat, align 8
  %30 = load %struct.xsettings*, %struct.xsettings** %settings.addr, align 8
  %hinting25 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %30, i32 0, i32 1
  %31 = load i32, i32* %hinting25, align 4
  %call26 = call i32 @FcPatternAddBool(%struct._FcPattern* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i32 %31)
  store i8 1, i8* %changed, align 1
  %32 = load %struct.xsettings*, %struct.xsettings** %settings.addr, align 8
  %hinting27 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %32, i32 0, i32 1
  %33 = load i32, i32* %hinting27, align 4
  %hinting28 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %oldsettings, i32 0, i32 1
  store i32 %33, i32* %hinting28, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.23, %land.lhs.true.19, %if.end
  %34 = load %struct.xsettings*, %struct.xsettings** %settings.addr, align 8
  %seen30 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %34, i32 0, i32 8
  %35 = load i32, i32* %seen30, align 4
  %and31 = and i32 %35, 4
  %cmp32 = icmp ne i32 %and31, 0
  br i1 %cmp32, label %land.lhs.true.33, label %if.end.43

land.lhs.true.33:                                 ; preds = %if.end.29
  %rgba34 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %oldsettings, i32 0, i32 2
  %36 = load i32, i32* %rgba34, align 4
  %37 = load %struct.xsettings*, %struct.xsettings** %settings.addr, align 8
  %rgba35 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %37, i32 0, i32 2
  %38 = load i32, i32* %rgba35, align 4
  %cmp36 = icmp ne i32 %36, %38
  br i1 %cmp36, label %if.then.37, label %if.end.43

if.then.37:                                       ; preds = %land.lhs.true.33
  %39 = load %struct._FcPattern*, %struct._FcPattern** %pat, align 8
  %call38 = call i32 @FcPatternDel(%struct._FcPattern* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0))
  %40 = load %struct._FcPattern*, %struct._FcPattern** %pat, align 8
  %41 = load %struct.xsettings*, %struct.xsettings** %settings.addr, align 8
  %rgba39 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %41, i32 0, i32 2
  %42 = load i32, i32* %rgba39, align 4
  %call40 = call i32 @FcPatternAddInteger(%struct._FcPattern* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i32 %42)
  %43 = load %struct.xsettings*, %struct.xsettings** %settings.addr, align 8
  %rgba41 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %43, i32 0, i32 2
  %44 = load i32, i32* %rgba41, align 4
  %rgba42 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %oldsettings, i32 0, i32 2
  store i32 %44, i32* %rgba42, align 4
  store i8 1, i8* %changed, align 1
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.37, %land.lhs.true.33, %if.end.29
  %45 = load %struct.xsettings*, %struct.xsettings** %settings.addr, align 8
  %seen44 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %45, i32 0, i32 8
  %46 = load i32, i32* %seen44, align 4
  %and45 = and i32 %46, 8
  %cmp46 = icmp ne i32 %and45, 0
  br i1 %cmp46, label %land.lhs.true.47, label %if.end.57

land.lhs.true.47:                                 ; preds = %if.end.43
  %lcdfilter48 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %oldsettings, i32 0, i32 3
  %47 = load i32, i32* %lcdfilter48, align 4
  %48 = load %struct.xsettings*, %struct.xsettings** %settings.addr, align 8
  %lcdfilter49 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %48, i32 0, i32 3
  %49 = load i32, i32* %lcdfilter49, align 4
  %cmp50 = icmp ne i32 %47, %49
  br i1 %cmp50, label %if.then.51, label %if.end.57

if.then.51:                                       ; preds = %land.lhs.true.47
  %50 = load %struct._FcPattern*, %struct._FcPattern** %pat, align 8
  %call52 = call i32 @FcPatternDel(%struct._FcPattern* %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0))
  %51 = load %struct._FcPattern*, %struct._FcPattern** %pat, align 8
  %52 = load %struct.xsettings*, %struct.xsettings** %settings.addr, align 8
  %lcdfilter53 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %52, i32 0, i32 3
  %53 = load i32, i32* %lcdfilter53, align 4
  %call54 = call i32 @FcPatternAddInteger(%struct._FcPattern* %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i32 %53)
  store i8 1, i8* %changed, align 1
  %54 = load %struct.xsettings*, %struct.xsettings** %settings.addr, align 8
  %lcdfilter55 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %54, i32 0, i32 3
  %55 = load i32, i32* %lcdfilter55, align 4
  %lcdfilter56 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %oldsettings, i32 0, i32 3
  store i32 %55, i32* %lcdfilter56, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.51, %land.lhs.true.47, %if.end.43
  %56 = load %struct.xsettings*, %struct.xsettings** %settings.addr, align 8
  %seen58 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %56, i32 0, i32 8
  %57 = load i32, i32* %seen58, align 4
  %and59 = and i32 %57, 16
  %cmp60 = icmp ne i32 %and59, 0
  br i1 %cmp60, label %land.lhs.true.61, label %if.end.71

land.lhs.true.61:                                 ; preds = %if.end.57
  %hintstyle62 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %oldsettings, i32 0, i32 4
  %58 = load i32, i32* %hintstyle62, align 4
  %59 = load %struct.xsettings*, %struct.xsettings** %settings.addr, align 8
  %hintstyle63 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %59, i32 0, i32 4
  %60 = load i32, i32* %hintstyle63, align 4
  %cmp64 = icmp ne i32 %58, %60
  br i1 %cmp64, label %if.then.65, label %if.end.71

if.then.65:                                       ; preds = %land.lhs.true.61
  %61 = load %struct._FcPattern*, %struct._FcPattern** %pat, align 8
  %call66 = call i32 @FcPatternDel(%struct._FcPattern* %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0))
  %62 = load %struct._FcPattern*, %struct._FcPattern** %pat, align 8
  %63 = load %struct.xsettings*, %struct.xsettings** %settings.addr, align 8
  %hintstyle67 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %63, i32 0, i32 4
  %64 = load i32, i32* %hintstyle67, align 4
  %call68 = call i32 @FcPatternAddInteger(%struct._FcPattern* %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i32 %64)
  store i8 1, i8* %changed, align 1
  %65 = load %struct.xsettings*, %struct.xsettings** %settings.addr, align 8
  %hintstyle69 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %65, i32 0, i32 4
  %66 = load i32, i32* %hintstyle69, align 4
  %hintstyle70 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %oldsettings, i32 0, i32 4
  store i32 %66, i32* %hintstyle70, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.65, %land.lhs.true.61, %if.end.57
  %67 = load %struct.xsettings*, %struct.xsettings** %settings.addr, align 8
  %seen72 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %67, i32 0, i32 8
  %68 = load i32, i32* %seen72, align 4
  %and73 = and i32 %68, 32
  %cmp74 = icmp ne i32 %and73, 0
  br i1 %cmp74, label %land.lhs.true.75, label %if.end.89

land.lhs.true.75:                                 ; preds = %if.end.71
  %dpi76 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %oldsettings, i32 0, i32 5
  %69 = load double, double* %dpi76, align 8
  %70 = load %struct.xsettings*, %struct.xsettings** %settings.addr, align 8
  %dpi77 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %70, i32 0, i32 5
  %71 = load double, double* %dpi77, align 8
  %cmp78 = fcmp une double %69, %71
  br i1 %cmp78, label %land.lhs.true.79, label %if.end.89

land.lhs.true.79:                                 ; preds = %land.lhs.true.75
  %72 = load %struct.xsettings*, %struct.xsettings** %settings.addr, align 8
  %dpi80 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %72, i32 0, i32 5
  %73 = load double, double* %dpi80, align 8
  %cmp81 = fcmp ogt double %73, 0.000000e+00
  br i1 %cmp81, label %if.then.82, label %if.end.89

if.then.82:                                       ; preds = %land.lhs.true.79
  %74 = load %struct._FcPattern*, %struct._FcPattern** %pat, align 8
  %call83 = call i32 @FcPatternDel(%struct._FcPattern* %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0))
  %75 = load %struct._FcPattern*, %struct._FcPattern** %pat, align 8
  %76 = load %struct.xsettings*, %struct.xsettings** %settings.addr, align 8
  %dpi84 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %76, i32 0, i32 5
  %77 = load double, double* %dpi84, align 8
  %call85 = call i32 @FcPatternAddDouble(%struct._FcPattern* %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), double %77)
  store i8 1, i8* %changed, align 1
  %78 = load %struct.xsettings*, %struct.xsettings** %settings.addr, align 8
  %dpi86 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %78, i32 0, i32 5
  %79 = load double, double* %dpi86, align 8
  %dpi87 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %oldsettings, i32 0, i32 5
  store double %79, double* %dpi87, align 8
  %80 = load %struct.xsettings*, %struct.xsettings** %settings.addr, align 8
  %dpi88 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %80, i32 0, i32 5
  %81 = load double, double* %dpi88, align 8
  %82 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %resx = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %82, i32 0, i32 7
  store double %81, double* %resx, align 8
  %83 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %resy = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %83, i32 0, i32 8
  store double %81, double* %resy, align 8
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.82, %land.lhs.true.79, %land.lhs.true.75, %if.end.71
  %84 = load i8, i8* %changed, align 1
  %tobool = trunc i8 %84 to i1
  br i1 %tobool, label %if.then.90, label %if.else

if.then.90:                                       ; preds = %if.end.89
  %85 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %display91 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %85, i32 0, i32 2
  %86 = load %struct._XDisplay*, %struct._XDisplay** %display91, align 8
  %87 = load %struct._FcPattern*, %struct._FcPattern** %pat, align 8
  %call92 = call i32 @XftDefaultSet(%struct._XDisplay* %86, %struct._FcPattern* %87)
  %call93 = call i64 @builtin_lisp_symbol(i32 445)
  %88 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %name_list_element = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %88, i32 0, i32 4
  %89 = load i64, i64* %name_list_element, align 8
  %sub = sub nsw i64 %89, 3
  %90 = inttoptr i64 %sub to i8*
  %91 = bitcast i8* %90 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %91, i32 0, i32 0
  %92 = load i64, i64* %car, align 8
  call void @store_config_changed_event(i64 %call93, i64 %92)
  %arraydecay = getelementptr inbounds [436 x i8], [436 x i8]* %buf, i32 0, i32 0
  %aa94 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %oldsettings, i32 0, i32 0
  %93 = load i32, i32* %aa94, align 4
  %hinting95 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %oldsettings, i32 0, i32 1
  %94 = load i32, i32* %hinting95, align 4
  %rgba96 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %oldsettings, i32 0, i32 2
  %95 = load i32, i32* %rgba96, align 4
  %lcdfilter97 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %oldsettings, i32 0, i32 3
  %96 = load i32, i32* %lcdfilter97, align 4
  %hintstyle98 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %oldsettings, i32 0, i32 4
  %97 = load i32, i32* %hintstyle98, align 4
  %dpi99 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %oldsettings, i32 0, i32 5
  %98 = load double, double* %dpi99, align 8
  %call100 = call i64 (i8*, i8*, ...) @make_formatted_string(i8* %arraydecay, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @apply_xft_settings.format, i32 0, i32 0), i32 %93, i32 %94, i32 %95, i32 %96, i32 %97, double %98)
  store i64 %call100, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 367), align 8
  br label %if.end.101

if.else:                                          ; preds = %if.end.89
  %99 = load %struct._FcPattern*, %struct._FcPattern** %pat, align 8
  call void @FcPatternDestroy(%struct._FcPattern* %99)
  br label %if.end.101

if.end.101:                                       ; preds = %if.else, %if.then.90
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @store_tool_bar_style_changed(i8* %newstyle, %struct.x_display_info* %dpyinfo) #0 {
entry:
  %newstyle.addr = alloca i8*, align 8
  %dpyinfo.addr = alloca %struct.x_display_info*, align 8
  %style = alloca i64, align 8
  store i8* %newstyle, i8** %newstyle.addr, align 8
  store %struct.x_display_info* %dpyinfo, %struct.x_display_info** %dpyinfo.addr, align 8
  %0 = load i8*, i8** %newstyle.addr, align 8
  %call = call i64 @map_tool_bar_style(i8* %0)
  store i64 %call, i64* %style, align 8
  %1 = load i64, i64* @current_tool_bar_style, align 8
  %2 = load i64, i64* %style, align 8
  %cmp = icmp eq i64 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.4

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %style, align 8
  store i64 %3, i64* @current_tool_bar_style, align 8
  %4 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %call1 = call zeroext i1 @dpyinfo_valid(%struct.x_display_info* %4)
  br i1 %call1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %call3 = call i64 @builtin_lisp_symbol(i32 926)
  %5 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %name_list_element = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %5, i32 0, i32 4
  %6 = load i64, i64* %name_list_element, align 8
  %sub = sub nsw i64 %6, 3
  %7 = inttoptr i64 %sub to i8*
  %8 = bitcast i8* %7 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %8, i32 0, i32 0
  %9 = load i64, i64* %car, align 8
  call void @store_config_changed_event(i64 %call3, i64 %9)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then, %if.then.2, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @map_tool_bar_style(i8* %tool_bar_style) #0 {
entry:
  %tool_bar_style.addr = alloca i8*, align 8
  %style = alloca i64, align 8
  store i8* %tool_bar_style, i8** %tool_bar_style.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %style, align 8
  %0 = load i8*, i8** %tool_bar_style.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end.21

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %tool_bar_style.addr, align 8
  %call1 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0)) #5
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %call3 = call i64 @builtin_lisp_symbol(i32 211)
  store i64 %call3, i64* %style, align 8
  br label %if.end.20

if.else:                                          ; preds = %if.then
  %2 = load i8*, i8** %tool_bar_style.addr, align 8
  %call4 = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0)) #5
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then.6, label %if.else.8

if.then.6:                                        ; preds = %if.else
  %call7 = call i64 @builtin_lisp_symbol(i32 212)
  store i64 %call7, i64* %style, align 8
  br label %if.end.19

if.else.8:                                        ; preds = %if.else
  %3 = load i8*, i8** %tool_bar_style.addr, align 8
  %call9 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0)) #5
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.else.13

if.then.11:                                       ; preds = %if.else.8
  %call12 = call i64 @builtin_lisp_symbol(i32 537)
  store i64 %call12, i64* %style, align 8
  br label %if.end.18

if.else.13:                                       ; preds = %if.else.8
  %4 = load i8*, i8** %tool_bar_style.addr, align 8
  %call14 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0)) #5
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %if.else.13
  %call17 = call i64 @builtin_lisp_symbol(i32 910)
  store i64 %call17, i64* %style, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.16, %if.else.13
  br label %if.end.18

if.end.18:                                        ; preds = %if.end, %if.then.11
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.6
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.then.2
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %entry
  %5 = load i64, i64* %style, align 8
  ret i64 %5
}

declare void @xfree(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @store_font_name_changed(i8* %newfont) #0 {
entry:
  %newfont.addr = alloca i8*, align 8
  store i8* %newfont, i8** %newfont.addr, align 8
  %0 = load i8*, i8** @current_font, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %newfont.addr, align 8
  %2 = load i8*, i8** @current_font, align 8
  %call = call i32 @strcmp(i8* %1, i8* %2) #5
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %if.end.5

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load i8*, i8** %newfont.addr, align 8
  call void @dupstring(i8** @current_font, i8* %3)
  %4 = load %struct.x_display_info*, %struct.x_display_info** @first_dpyinfo, align 8
  %call2 = call zeroext i1 @dpyinfo_valid(%struct.x_display_info* %4)
  br i1 %call2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %call4 = call i64 @builtin_lisp_symbol(i32 442)
  %5 = load %struct.x_display_info*, %struct.x_display_info** @first_dpyinfo, align 8
  %name_list_element = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %5, i32 0, i32 4
  %6 = load i64, i64* %name_list_element, align 8
  %sub = sub nsw i64 %6, 3
  %7 = inttoptr i64 %sub to i8*
  %8 = bitcast i8* %7 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %8, i32 0, i32 0
  %9 = load i64, i64* %car, align 8
  call void @store_config_changed_event(i64 %call4, i64 %9)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then, %if.then.3, %if.end
  ret void
}

declare void @dupstring(i8**, i8*) #1

declare void @x_catch_errors(%struct._XDisplay*) #1

declare i32 @XGetWindowProperty(%struct._XDisplay*, i64, i64, i64, i64, i32, i64, i64*, i32*, i64*, i64*, i8**) #1

; Function Attrs: nounwind uwtable
define internal i32 @parse_settings(i8* %prop, i64 %bytes, %struct.xsettings* %settings) #0 {
entry:
  %retval = alloca i32, align 4
  %prop.addr = alloca i8*, align 8
  %bytes.addr = alloca i64, align 8
  %settings.addr = alloca %struct.xsettings*, align 8
  %byteorder = alloca i64, align 8
  %my_bo = alloca i32, align 4
  %that_bo = alloca i32, align 4
  %n_settings = alloca i32, align 4
  %bytes_parsed = alloca i32, align 4
  %settings_seen = alloca i32, align 4
  %i = alloca i32, align 4
  %__v = alloca i32, align 4
  %__x = alloca i32, align 4
  %tmp = alloca i32, align 4
  %type = alloca i32, align 4
  %nlen = alloca i16, align 2
  %vlen = alloca i32, align 4
  %ival = alloca i32, align 4
  %name = alloca [128 x i8], align 16
  %sval = alloca [128 x i8], align 16
  %want_this = alloca i8, align 1
  %to_cpy = alloca i32, align 4
  %__v33 = alloca i16, align 2
  %__x35 = alloca i16, align 2
  %tmp36 = alloca i16, align 2
  %__v95 = alloca i32, align 4
  %__x97 = alloca i32, align 4
  %tmp98 = alloca i32, align 4
  %__v116 = alloca i32, align 4
  %__x118 = alloca i32, align 4
  %tmp119 = alloca i32, align 4
  store i8* %prop, i8** %prop.addr, align 8
  store i64 %bytes, i64* %bytes.addr, align 8
  store %struct.xsettings* %settings, %struct.xsettings** %settings.addr, align 8
  %call = call i64 @Fbyteorder() #6
  store i64 %call, i64* %byteorder, align 8
  %0 = load i64, i64* %byteorder, align 8
  %shr = ashr i64 %0, 2
  %cmp = icmp eq i64 %shr, 66
  %cond = select i1 %cmp, i32 1, i32 0
  store i32 %cond, i32* %my_bo, align 4
  %1 = load i8*, i8** %prop.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  store i32 %conv, i32* %that_bo, align 4
  store i32 0, i32* %bytes_parsed, align 4
  store i32 0, i32* %settings_seen, align 4
  store i32 0, i32* %i, align 4
  %3 = load i64, i64* %bytes.addr, align 8
  %cmp1 = icmp ult i64 %3, 12
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %settings_seen, align 4
  store i32 %4, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = bitcast i32* %n_settings to i8*
  %6 = load i8*, i8** %prop.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %add.ptr, i64 4, i32 1, i1 false)
  %7 = load i32, i32* %my_bo, align 4
  %8 = load i32, i32* %that_bo, align 4
  %cmp3 = icmp ne i32 %7, %8
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %9 = load i32, i32* %n_settings, align 4
  store i32 %9, i32* %__x, align 4
  %10 = load i32, i32* %__x, align 4
  %11 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %10) #6, !srcloc !1
  store i32 %11, i32* %__v, align 4
  %12 = load i32, i32* %__v, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  store i32 %13, i32* %n_settings, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  store i32 12, i32* %bytes_parsed, align 4
  %14 = load %struct.xsettings*, %struct.xsettings** %settings.addr, align 8
  %15 = bitcast %struct.xsettings* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* %15, i8 0, i64 56, i32 8, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %if.end.324, %if.end.6
  %16 = load i32, i32* %bytes_parsed, align 4
  %add = add nsw i32 %16, 4
  %conv7 = sext i32 %add to i64
  %17 = load i64, i64* %bytes.addr, align 8
  %cmp8 = icmp ult i64 %conv7, %17
  br i1 %cmp8, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %18 = load i32, i32* %settings_seen, align 4
  %cmp10 = icmp slt i32 %18, 7
  br i1 %cmp10, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %n_settings, align 4
  %cmp12 = icmp ult i32 %19, %20
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %21 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp12, %land.rhs ]
  br i1 %21, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %22 = load i32, i32* %bytes_parsed, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %bytes_parsed, align 4
  %idxprom = sext i32 %22 to i64
  %23 = load i8*, i8** %prop.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %23, i64 %idxprom
  %24 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %24 to i32
  store i32 %conv16, i32* %type, align 4
  store i32 0, i32* %ival, align 4
  %arrayidx24 = getelementptr inbounds [128 x i8], [128 x i8]* %sval, i32 0, i64 0
  store i8 0, i8* %arrayidx24, align 1
  %25 = load i32, i32* %i, align 4
  %inc25 = add nsw i32 %25, 1
  store i32 %inc25, i32* %i, align 4
  %26 = load i32, i32* %bytes_parsed, align 4
  %inc26 = add nsw i32 %26, 1
  store i32 %inc26, i32* %bytes_parsed, align 4
  %27 = bitcast i16* %nlen to i8*
  %28 = load i8*, i8** %prop.addr, align 8
  %29 = load i32, i32* %bytes_parsed, align 4
  %idx.ext = sext i32 %29 to i64
  %add.ptr27 = getelementptr inbounds i8, i8* %28, i64 %idx.ext
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %add.ptr27, i64 2, i32 1, i1 false)
  %30 = load i32, i32* %bytes_parsed, align 4
  %add28 = add nsw i32 %30, 2
  store i32 %add28, i32* %bytes_parsed, align 4
  %31 = load i32, i32* %my_bo, align 4
  %32 = load i32, i32* %that_bo, align 4
  %cmp29 = icmp ne i32 %31, %32
  br i1 %cmp29, label %if.then.31, label %if.end.37

if.then.31:                                       ; preds = %while.body
  %33 = load i16, i16* %nlen, align 2
  store i16 %33, i16* %__x35, align 2
  %34 = load i16, i16* %__x35, align 2
  %35 = call i16 asm "rorw $$8, ${0:w}", "=r,0,~{cc},~{dirflag},~{fpsr},~{flags}"(i16 %34) #6, !srcloc !2
  store i16 %35, i16* %__v33, align 2
  %36 = load i16, i16* %__v33, align 2
  store i16 %36, i16* %tmp36
  %37 = load i16, i16* %tmp36
  store i16 %37, i16* %nlen, align 2
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.31, %while.body
  %38 = load i32, i32* %bytes_parsed, align 4
  %39 = load i16, i16* %nlen, align 2
  %conv38 = zext i16 %39 to i32
  %add39 = add nsw i32 %38, %conv38
  %conv40 = sext i32 %add39 to i64
  %40 = load i64, i64* %bytes.addr, align 8
  %cmp41 = icmp ugt i64 %conv40, %40
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.37
  %41 = load i32, i32* %settings_seen, align 4
  store i32 %41, i32* %retval
  br label %return

if.end.44:                                        ; preds = %if.end.37
  %42 = load i16, i16* %nlen, align 2
  %conv45 = zext i16 %42 to i64
  %cmp46 = icmp ult i64 %conv45, 127
  br i1 %cmp46, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.44
  %43 = load i16, i16* %nlen, align 2
  %conv48 = zext i16 %43 to i64
  br label %cond.end

cond.false:                                       ; preds = %if.end.44
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond49 = phi i64 [ %conv48, %cond.true ], [ 127, %cond.false ]
  %conv50 = trunc i64 %cond49 to i32
  store i32 %conv50, i32* %to_cpy, align 4
  %44 = bitcast [128 x i8]* %name to i8*
  %45 = load i8*, i8** %prop.addr, align 8
  %46 = load i32, i32* %bytes_parsed, align 4
  %idx.ext51 = sext i32 %46 to i64
  %add.ptr52 = getelementptr inbounds i8, i8* %45, i64 %idx.ext51
  %47 = load i32, i32* %to_cpy, align 4
  %conv53 = sext i32 %47 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %add.ptr52, i64 %conv53, i32 1, i1 false)
  %48 = load i32, i32* %to_cpy, align 4
  %idxprom54 = sext i32 %48 to i64
  %arrayidx55 = getelementptr inbounds [128 x i8], [128 x i8]* %name, i32 0, i64 %idxprom54
  store i8 0, i8* %arrayidx55, align 1
  %49 = load i16, i16* %nlen, align 2
  %conv56 = zext i16 %49 to i32
  %50 = load i32, i32* %bytes_parsed, align 4
  %add57 = add nsw i32 %50, %conv56
  store i32 %add57, i32* %bytes_parsed, align 4
  %51 = load i32, i32* %bytes_parsed, align 4
  %add58 = add nsw i32 %51, 3
  %and = and i32 %add58, -4
  store i32 %and, i32* %bytes_parsed, align 4
  %52 = load i32, i32* %bytes_parsed, align 4
  %add59 = add nsw i32 %52, 4
  store i32 %add59, i32* %bytes_parsed, align 4
  %53 = load i32, i32* %bytes_parsed, align 4
  %conv60 = sext i32 %53 to i64
  %54 = load i64, i64* %bytes.addr, align 8
  %cmp61 = icmp ugt i64 %conv60, %54
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %cond.end
  %55 = load i32, i32* %settings_seen, align 4
  store i32 %55, i32* %retval
  br label %return

if.end.64:                                        ; preds = %cond.end
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %name, i32 0, i32 0
  %call65 = call i32 @strcmp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i8* %arraydecay) #5
  %cmp66 = icmp eq i32 %call65, 0
  %frombool = zext i1 %cmp66 to i8
  store i8 %frombool, i8* %want_this, align 1
  %56 = load i16, i16* %nlen, align 2
  %conv68 = zext i16 %56 to i32
  %cmp69 = icmp sgt i32 %conv68, 6
  br i1 %cmp69, label %land.lhs.true.71, label %lor.lhs.false

land.lhs.true.71:                                 ; preds = %if.end.64
  %arraydecay72 = getelementptr inbounds [128 x i8], [128 x i8]* %name, i32 0, i32 0
  %call73 = call i32 @memcmp(i8* %arraydecay72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i64 4) #5
  %cmp74 = icmp eq i32 %call73, 0
  br i1 %cmp74, label %if.then.80, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.71, %if.end.64
  %arraydecay76 = getelementptr inbounds [128 x i8], [128 x i8]* %name, i32 0, i32 0
  %call77 = call i32 @strcmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* %arraydecay76) #5
  %cmp78 = icmp eq i32 %call77, 0
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %lor.lhs.false, %land.lhs.true.71
  store i8 1, i8* %want_this, align 1
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.80, %lor.lhs.false
  %57 = load i32, i32* %type, align 4
  switch i32 %57, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.102
    i32 2, label %sw.bb.141
  ]

sw.bb:                                            ; preds = %if.end.81
  %58 = load i32, i32* %bytes_parsed, align 4
  %add82 = add nsw i32 %58, 4
  %conv83 = sext i32 %add82 to i64
  %59 = load i64, i64* %bytes.addr, align 8
  %cmp84 = icmp ugt i64 %conv83, %59
  br i1 %cmp84, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %sw.bb
  %60 = load i32, i32* %settings_seen, align 4
  store i32 %60, i32* %retval
  br label %return

if.end.87:                                        ; preds = %sw.bb
  %61 = load i8, i8* %want_this, align 1
  %tobool = trunc i8 %61 to i1
  br i1 %tobool, label %if.then.88, label %if.end.100

if.then.88:                                       ; preds = %if.end.87
  %62 = bitcast i32* %ival to i8*
  %63 = load i8*, i8** %prop.addr, align 8
  %64 = load i32, i32* %bytes_parsed, align 4
  %idx.ext89 = sext i32 %64 to i64
  %add.ptr90 = getelementptr inbounds i8, i8* %63, i64 %idx.ext89
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %62, i8* %add.ptr90, i64 4, i32 1, i1 false)
  %65 = load i32, i32* %my_bo, align 4
  %66 = load i32, i32* %that_bo, align 4
  %cmp91 = icmp ne i32 %65, %66
  br i1 %cmp91, label %if.then.93, label %if.end.99

if.then.93:                                       ; preds = %if.then.88
  %67 = load i32, i32* %ival, align 4
  store i32 %67, i32* %__x97, align 4
  %68 = load i32, i32* %__x97, align 4
  %69 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %68) #6, !srcloc !3
  store i32 %69, i32* %__v95, align 4
  %70 = load i32, i32* %__v95, align 4
  store i32 %70, i32* %tmp98
  %71 = load i32, i32* %tmp98
  store i32 %71, i32* %ival, align 4
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.93, %if.then.88
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.end.87
  %72 = load i32, i32* %bytes_parsed, align 4
  %add101 = add nsw i32 %72, 4
  store i32 %add101, i32* %bytes_parsed, align 4
  br label %sw.epilog

sw.bb.102:                                        ; preds = %if.end.81
  %73 = load i32, i32* %bytes_parsed, align 4
  %add103 = add nsw i32 %73, 4
  %conv104 = sext i32 %add103 to i64
  %74 = load i64, i64* %bytes.addr, align 8
  %cmp105 = icmp ugt i64 %conv104, %74
  br i1 %cmp105, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %sw.bb.102
  %75 = load i32, i32* %settings_seen, align 4
  store i32 %75, i32* %retval
  br label %return

if.end.108:                                       ; preds = %sw.bb.102
  %76 = bitcast i32* %vlen to i8*
  %77 = load i8*, i8** %prop.addr, align 8
  %78 = load i32, i32* %bytes_parsed, align 4
  %idx.ext109 = sext i32 %78 to i64
  %add.ptr110 = getelementptr inbounds i8, i8* %77, i64 %idx.ext109
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %76, i8* %add.ptr110, i64 4, i32 1, i1 false)
  %79 = load i32, i32* %bytes_parsed, align 4
  %add111 = add nsw i32 %79, 4
  store i32 %add111, i32* %bytes_parsed, align 4
  %80 = load i32, i32* %my_bo, align 4
  %81 = load i32, i32* %that_bo, align 4
  %cmp112 = icmp ne i32 %80, %81
  br i1 %cmp112, label %if.then.114, label %if.end.120

if.then.114:                                      ; preds = %if.end.108
  %82 = load i32, i32* %vlen, align 4
  store i32 %82, i32* %__x118, align 4
  %83 = load i32, i32* %__x118, align 4
  %84 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %83) #6, !srcloc !4
  store i32 %84, i32* %__v116, align 4
  %85 = load i32, i32* %__v116, align 4
  store i32 %85, i32* %tmp119
  %86 = load i32, i32* %tmp119
  store i32 %86, i32* %vlen, align 4
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.114, %if.end.108
  %87 = load i8, i8* %want_this, align 1
  %tobool121 = trunc i8 %87 to i1
  br i1 %tobool121, label %if.then.122, label %if.end.137

if.then.122:                                      ; preds = %if.end.120
  %88 = load i32, i32* %vlen, align 4
  %conv123 = zext i32 %88 to i64
  %cmp124 = icmp ult i64 %conv123, 127
  br i1 %cmp124, label %cond.true.126, label %cond.false.128

cond.true.126:                                    ; preds = %if.then.122
  %89 = load i32, i32* %vlen, align 4
  %conv127 = zext i32 %89 to i64
  br label %cond.end.129

cond.false.128:                                   ; preds = %if.then.122
  br label %cond.end.129

cond.end.129:                                     ; preds = %cond.false.128, %cond.true.126
  %cond130 = phi i64 [ %conv127, %cond.true.126 ], [ 127, %cond.false.128 ]
  %conv131 = trunc i64 %cond130 to i32
  store i32 %conv131, i32* %to_cpy, align 4
  %90 = bitcast [128 x i8]* %sval to i8*
  %91 = load i8*, i8** %prop.addr, align 8
  %92 = load i32, i32* %bytes_parsed, align 4
  %idx.ext132 = sext i32 %92 to i64
  %add.ptr133 = getelementptr inbounds i8, i8* %91, i64 %idx.ext132
  %93 = load i32, i32* %to_cpy, align 4
  %conv134 = sext i32 %93 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %90, i8* %add.ptr133, i64 %conv134, i32 1, i1 false)
  %94 = load i32, i32* %to_cpy, align 4
  %idxprom135 = sext i32 %94 to i64
  %arrayidx136 = getelementptr inbounds [128 x i8], [128 x i8]* %sval, i32 0, i64 %idxprom135
  store i8 0, i8* %arrayidx136, align 1
  br label %if.end.137

if.end.137:                                       ; preds = %cond.end.129, %if.end.120
  %95 = load i32, i32* %vlen, align 4
  %96 = load i32, i32* %bytes_parsed, align 4
  %add138 = add i32 %96, %95
  store i32 %add138, i32* %bytes_parsed, align 4
  %97 = load i32, i32* %bytes_parsed, align 4
  %add139 = add nsw i32 %97, 3
  %and140 = and i32 %add139, -4
  store i32 %and140, i32* %bytes_parsed, align 4
  br label %sw.epilog

sw.bb.141:                                        ; preds = %if.end.81
  %98 = load i32, i32* %bytes_parsed, align 4
  %add142 = add nsw i32 %98, 8
  %conv143 = sext i32 %add142 to i64
  %99 = load i64, i64* %bytes.addr, align 8
  %cmp144 = icmp ugt i64 %conv143, %99
  br i1 %cmp144, label %if.then.146, label %if.end.147

if.then.146:                                      ; preds = %sw.bb.141
  %100 = load i32, i32* %settings_seen, align 4
  store i32 %100, i32* %retval
  br label %return

if.end.147:                                       ; preds = %sw.bb.141
  %101 = load i32, i32* %bytes_parsed, align 4
  %add148 = add nsw i32 %101, 8
  store i32 %add148, i32* %bytes_parsed, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.81
  %102 = load i32, i32* %settings_seen, align 4
  store i32 %102, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.147, %if.end.137, %if.end.100
  %103 = load i8, i8* %want_this, align 1
  %tobool149 = trunc i8 %103 to i1
  br i1 %tobool149, label %if.then.150, label %if.end.324

if.then.150:                                      ; preds = %sw.epilog
  %arraydecay151 = getelementptr inbounds [128 x i8], [128 x i8]* %name, i32 0, i32 0
  %call152 = call i32 @strcmp(i8* %arraydecay151, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0)) #5
  %cmp153 = icmp eq i32 %call152, 0
  br i1 %cmp153, label %if.then.155, label %if.else

if.then.155:                                      ; preds = %if.then.150
  %104 = load %struct.xsettings*, %struct.xsettings** %settings.addr, align 8
  %tb_style = getelementptr inbounds %struct.xsettings, %struct.xsettings* %104, i32 0, i32 7
  %arraydecay156 = getelementptr inbounds [128 x i8], [128 x i8]* %sval, i32 0, i32 0
  call void @dupstring(i8** %tb_style, i8* %arraydecay156)
  %105 = load %struct.xsettings*, %struct.xsettings** %settings.addr, align 8
  %seen = getelementptr inbounds %struct.xsettings, %struct.xsettings* %105, i32 0, i32 8
  %106 = load i32, i32* %seen, align 4
  %or = or i32 %106, 128
  store i32 %or, i32* %seen, align 4
  br label %if.end.320

if.else:                                          ; preds = %if.then.150
  %arraydecay157 = getelementptr inbounds [128 x i8], [128 x i8]* %name, i32 0, i32 0
  %call158 = call i32 @strcmp(i8* %arraydecay157, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0)) #5
  %cmp159 = icmp eq i32 %call158, 0
  br i1 %cmp159, label %if.then.161, label %if.else.165

if.then.161:                                      ; preds = %if.else
  %107 = load %struct.xsettings*, %struct.xsettings** %settings.addr, align 8
  %font = getelementptr inbounds %struct.xsettings, %struct.xsettings* %107, i32 0, i32 6
  %arraydecay162 = getelementptr inbounds [128 x i8], [128 x i8]* %sval, i32 0, i32 0
  call void @dupstring(i8** %font, i8* %arraydecay162)
  %108 = load %struct.xsettings*, %struct.xsettings** %settings.addr, align 8
  %seen163 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %108, i32 0, i32 8
  %109 = load i32, i32* %seen163, align 4
  %or164 = or i32 %109, 64
  store i32 %or164, i32* %seen163, align 4
  br label %if.end.319

if.else.165:                                      ; preds = %if.else
  %arraydecay166 = getelementptr inbounds [128 x i8], [128 x i8]* %name, i32 0, i32 0
  %call167 = call i32 @strcmp(i8* %arraydecay166, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0)) #5
  %cmp168 = icmp eq i32 %call167, 0
  br i1 %cmp168, label %if.then.170, label %if.else.175

if.then.170:                                      ; preds = %if.else.165
  %110 = load %struct.xsettings*, %struct.xsettings** %settings.addr, align 8
  %seen171 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %110, i32 0, i32 8
  %111 = load i32, i32* %seen171, align 4
  %or172 = or i32 %111, 1
  store i32 %or172, i32* %seen171, align 4
  %112 = load i32, i32* %ival, align 4
  %cmp173 = icmp ne i32 %112, 0
  %conv174 = zext i1 %cmp173 to i32
  %113 = load %struct.xsettings*, %struct.xsettings** %settings.addr, align 8
  %aa = getelementptr inbounds %struct.xsettings, %struct.xsettings* %113, i32 0, i32 0
  store i32 %conv174, i32* %aa, align 4
  br label %if.end.318

if.else.175:                                      ; preds = %if.else.165
  %arraydecay176 = getelementptr inbounds [128 x i8], [128 x i8]* %name, i32 0, i32 0
  %call177 = call i32 @strcmp(i8* %arraydecay176, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0)) #5
  %cmp178 = icmp eq i32 %call177, 0
  br i1 %cmp178, label %if.then.180, label %if.else.185

if.then.180:                                      ; preds = %if.else.175
  %114 = load %struct.xsettings*, %struct.xsettings** %settings.addr, align 8
  %seen181 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %114, i32 0, i32 8
  %115 = load i32, i32* %seen181, align 4
  %or182 = or i32 %115, 2
  store i32 %or182, i32* %seen181, align 4
  %116 = load i32, i32* %ival, align 4
  %cmp183 = icmp ne i32 %116, 0
  %conv184 = zext i1 %cmp183 to i32
  %117 = load %struct.xsettings*, %struct.xsettings** %settings.addr, align 8
  %hinting = getelementptr inbounds %struct.xsettings, %struct.xsettings* %117, i32 0, i32 1
  store i32 %conv184, i32* %hinting, align 4
  br label %if.end.317

if.else.185:                                      ; preds = %if.else.175
  %arraydecay186 = getelementptr inbounds [128 x i8], [128 x i8]* %name, i32 0, i32 0
  %call187 = call i32 @strcmp(i8* %arraydecay186, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0)) #5
  %cmp188 = icmp eq i32 %call187, 0
  br i1 %cmp188, label %if.then.190, label %if.else.226

if.then.190:                                      ; preds = %if.else.185
  %118 = load %struct.xsettings*, %struct.xsettings** %settings.addr, align 8
  %seen191 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %118, i32 0, i32 8
  %119 = load i32, i32* %seen191, align 4
  %or192 = or i32 %119, 16
  store i32 %or192, i32* %seen191, align 4
  %arraydecay193 = getelementptr inbounds [128 x i8], [128 x i8]* %sval, i32 0, i32 0
  %call194 = call i32 @strcmp(i8* %arraydecay193, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0)) #5
  %cmp195 = icmp eq i32 %call194, 0
  br i1 %cmp195, label %if.then.197, label %if.else.198

if.then.197:                                      ; preds = %if.then.190
  %120 = load %struct.xsettings*, %struct.xsettings** %settings.addr, align 8
  %hintstyle = getelementptr inbounds %struct.xsettings, %struct.xsettings* %120, i32 0, i32 4
  store i32 0, i32* %hintstyle, align 4
  br label %if.end.225

if.else.198:                                      ; preds = %if.then.190
  %arraydecay199 = getelementptr inbounds [128 x i8], [128 x i8]* %sval, i32 0, i32 0
  %call200 = call i32 @strcmp(i8* %arraydecay199, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0)) #5
  %cmp201 = icmp eq i32 %call200, 0
  br i1 %cmp201, label %if.then.203, label %if.else.205

if.then.203:                                      ; preds = %if.else.198
  %121 = load %struct.xsettings*, %struct.xsettings** %settings.addr, align 8
  %hintstyle204 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %121, i32 0, i32 4
  store i32 1, i32* %hintstyle204, align 4
  br label %if.end.224

if.else.205:                                      ; preds = %if.else.198
  %arraydecay206 = getelementptr inbounds [128 x i8], [128 x i8]* %sval, i32 0, i32 0
  %call207 = call i32 @strcmp(i8* %arraydecay206, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0)) #5
  %cmp208 = icmp eq i32 %call207, 0
  br i1 %cmp208, label %if.then.210, label %if.else.212

if.then.210:                                      ; preds = %if.else.205
  %122 = load %struct.xsettings*, %struct.xsettings** %settings.addr, align 8
  %hintstyle211 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %122, i32 0, i32 4
  store i32 2, i32* %hintstyle211, align 4
  br label %if.end.223

if.else.212:                                      ; preds = %if.else.205
  %arraydecay213 = getelementptr inbounds [128 x i8], [128 x i8]* %sval, i32 0, i32 0
  %call214 = call i32 @strcmp(i8* %arraydecay213, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0)) #5
  %cmp215 = icmp eq i32 %call214, 0
  br i1 %cmp215, label %if.then.217, label %if.else.219

if.then.217:                                      ; preds = %if.else.212
  %123 = load %struct.xsettings*, %struct.xsettings** %settings.addr, align 8
  %hintstyle218 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %123, i32 0, i32 4
  store i32 3, i32* %hintstyle218, align 4
  br label %if.end.222

if.else.219:                                      ; preds = %if.else.212
  %124 = load %struct.xsettings*, %struct.xsettings** %settings.addr, align 8
  %seen220 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %124, i32 0, i32 8
  %125 = load i32, i32* %seen220, align 4
  %and221 = and i32 %125, -17
  store i32 %and221, i32* %seen220, align 4
  br label %if.end.222

if.end.222:                                       ; preds = %if.else.219, %if.then.217
  br label %if.end.223

if.end.223:                                       ; preds = %if.end.222, %if.then.210
  br label %if.end.224

if.end.224:                                       ; preds = %if.end.223, %if.then.203
  br label %if.end.225

if.end.225:                                       ; preds = %if.end.224, %if.then.197
  br label %if.end.316

if.else.226:                                      ; preds = %if.else.185
  %arraydecay227 = getelementptr inbounds [128 x i8], [128 x i8]* %name, i32 0, i32 0
  %call228 = call i32 @strcmp(i8* %arraydecay227, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0)) #5
  %cmp229 = icmp eq i32 %call228, 0
  br i1 %cmp229, label %if.then.231, label %if.else.275

if.then.231:                                      ; preds = %if.else.226
  %126 = load %struct.xsettings*, %struct.xsettings** %settings.addr, align 8
  %seen232 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %126, i32 0, i32 8
  %127 = load i32, i32* %seen232, align 4
  %or233 = or i32 %127, 4
  store i32 %or233, i32* %seen232, align 4
  %arraydecay234 = getelementptr inbounds [128 x i8], [128 x i8]* %sval, i32 0, i32 0
  %call235 = call i32 @strcmp(i8* %arraydecay234, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0)) #5
  %cmp236 = icmp eq i32 %call235, 0
  br i1 %cmp236, label %if.then.238, label %if.else.239

if.then.238:                                      ; preds = %if.then.231
  %128 = load %struct.xsettings*, %struct.xsettings** %settings.addr, align 8
  %rgba = getelementptr inbounds %struct.xsettings, %struct.xsettings* %128, i32 0, i32 2
  store i32 5, i32* %rgba, align 4
  br label %if.end.274

if.else.239:                                      ; preds = %if.then.231
  %arraydecay240 = getelementptr inbounds [128 x i8], [128 x i8]* %sval, i32 0, i32 0
  %call241 = call i32 @strcmp(i8* %arraydecay240, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0)) #5
  %cmp242 = icmp eq i32 %call241, 0
  br i1 %cmp242, label %if.then.244, label %if.else.246

if.then.244:                                      ; preds = %if.else.239
  %129 = load %struct.xsettings*, %struct.xsettings** %settings.addr, align 8
  %rgba245 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %129, i32 0, i32 2
  store i32 1, i32* %rgba245, align 4
  br label %if.end.273

if.else.246:                                      ; preds = %if.else.239
  %arraydecay247 = getelementptr inbounds [128 x i8], [128 x i8]* %sval, i32 0, i32 0
  %call248 = call i32 @strcmp(i8* %arraydecay247, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0)) #5
  %cmp249 = icmp eq i32 %call248, 0
  br i1 %cmp249, label %if.then.251, label %if.else.253

if.then.251:                                      ; preds = %if.else.246
  %130 = load %struct.xsettings*, %struct.xsettings** %settings.addr, align 8
  %rgba252 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %130, i32 0, i32 2
  store i32 2, i32* %rgba252, align 4
  br label %if.end.272

if.else.253:                                      ; preds = %if.else.246
  %arraydecay254 = getelementptr inbounds [128 x i8], [128 x i8]* %sval, i32 0, i32 0
  %call255 = call i32 @strcmp(i8* %arraydecay254, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0)) #5
  %cmp256 = icmp eq i32 %call255, 0
  br i1 %cmp256, label %if.then.258, label %if.else.260

if.then.258:                                      ; preds = %if.else.253
  %131 = load %struct.xsettings*, %struct.xsettings** %settings.addr, align 8
  %rgba259 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %131, i32 0, i32 2
  store i32 3, i32* %rgba259, align 4
  br label %if.end.271

if.else.260:                                      ; preds = %if.else.253
  %arraydecay261 = getelementptr inbounds [128 x i8], [128 x i8]* %sval, i32 0, i32 0
  %call262 = call i32 @strcmp(i8* %arraydecay261, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0)) #5
  %cmp263 = icmp eq i32 %call262, 0
  br i1 %cmp263, label %if.then.265, label %if.else.267

if.then.265:                                      ; preds = %if.else.260
  %132 = load %struct.xsettings*, %struct.xsettings** %settings.addr, align 8
  %rgba266 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %132, i32 0, i32 2
  store i32 4, i32* %rgba266, align 4
  br label %if.end.270

if.else.267:                                      ; preds = %if.else.260
  %133 = load %struct.xsettings*, %struct.xsettings** %settings.addr, align 8
  %seen268 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %133, i32 0, i32 8
  %134 = load i32, i32* %seen268, align 4
  %and269 = and i32 %134, -5
  store i32 %and269, i32* %seen268, align 4
  br label %if.end.270

if.end.270:                                       ; preds = %if.else.267, %if.then.265
  br label %if.end.271

if.end.271:                                       ; preds = %if.end.270, %if.then.258
  br label %if.end.272

if.end.272:                                       ; preds = %if.end.271, %if.then.251
  br label %if.end.273

if.end.273:                                       ; preds = %if.end.272, %if.then.244
  br label %if.end.274

if.end.274:                                       ; preds = %if.end.273, %if.then.238
  br label %if.end.315

if.else.275:                                      ; preds = %if.else.226
  %arraydecay276 = getelementptr inbounds [128 x i8], [128 x i8]* %name, i32 0, i32 0
  %call277 = call i32 @strcmp(i8* %arraydecay276, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0)) #5
  %cmp278 = icmp eq i32 %call277, 0
  br i1 %cmp278, label %land.lhs.true.280, label %if.else.287

land.lhs.true.280:                                ; preds = %if.else.275
  %135 = load i32, i32* %ival, align 4
  %cmp281 = icmp ne i32 %135, -1
  br i1 %cmp281, label %if.then.283, label %if.else.287

if.then.283:                                      ; preds = %land.lhs.true.280
  %136 = load %struct.xsettings*, %struct.xsettings** %settings.addr, align 8
  %seen284 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %136, i32 0, i32 8
  %137 = load i32, i32* %seen284, align 4
  %or285 = or i32 %137, 32
  store i32 %or285, i32* %seen284, align 4
  %138 = load i32, i32* %ival, align 4
  %conv286 = uitofp i32 %138 to double
  %div = fdiv double %conv286, 1.024000e+03
  %139 = load %struct.xsettings*, %struct.xsettings** %settings.addr, align 8
  %dpi = getelementptr inbounds %struct.xsettings, %struct.xsettings* %139, i32 0, i32 5
  store double %div, double* %dpi, align 8
  br label %if.end.314

if.else.287:                                      ; preds = %land.lhs.true.280, %if.else.275
  %arraydecay288 = getelementptr inbounds [128 x i8], [128 x i8]* %name, i32 0, i32 0
  %call289 = call i32 @strcmp(i8* %arraydecay288, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i32 0, i32 0)) #5
  %cmp290 = icmp eq i32 %call289, 0
  br i1 %cmp290, label %if.then.292, label %if.else.312

if.then.292:                                      ; preds = %if.else.287
  %140 = load %struct.xsettings*, %struct.xsettings** %settings.addr, align 8
  %seen293 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %140, i32 0, i32 8
  %141 = load i32, i32* %seen293, align 4
  %or294 = or i32 %141, 8
  store i32 %or294, i32* %seen293, align 4
  %arraydecay295 = getelementptr inbounds [128 x i8], [128 x i8]* %sval, i32 0, i32 0
  %call296 = call i32 @strcmp(i8* %arraydecay295, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0)) #5
  %cmp297 = icmp eq i32 %call296, 0
  br i1 %cmp297, label %if.then.299, label %if.else.300

if.then.299:                                      ; preds = %if.then.292
  %142 = load %struct.xsettings*, %struct.xsettings** %settings.addr, align 8
  %lcdfilter = getelementptr inbounds %struct.xsettings, %struct.xsettings* %142, i32 0, i32 3
  store i32 0, i32* %lcdfilter, align 4
  br label %if.end.311

if.else.300:                                      ; preds = %if.then.292
  %arraydecay301 = getelementptr inbounds [128 x i8], [128 x i8]* %sval, i32 0, i32 0
  %call302 = call i32 @strcmp(i8* %arraydecay301, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0)) #5
  %cmp303 = icmp eq i32 %call302, 0
  br i1 %cmp303, label %if.then.305, label %if.else.307

if.then.305:                                      ; preds = %if.else.300
  %143 = load %struct.xsettings*, %struct.xsettings** %settings.addr, align 8
  %lcdfilter306 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %143, i32 0, i32 3
  store i32 1, i32* %lcdfilter306, align 4
  br label %if.end.310

if.else.307:                                      ; preds = %if.else.300
  %144 = load %struct.xsettings*, %struct.xsettings** %settings.addr, align 8
  %seen308 = getelementptr inbounds %struct.xsettings, %struct.xsettings* %144, i32 0, i32 8
  %145 = load i32, i32* %seen308, align 4
  %and309 = and i32 %145, -9
  store i32 %and309, i32* %seen308, align 4
  br label %if.end.310

if.end.310:                                       ; preds = %if.else.307, %if.then.305
  br label %if.end.311

if.end.311:                                       ; preds = %if.end.310, %if.then.299
  br label %if.end.313

if.else.312:                                      ; preds = %if.else.287
  store i8 0, i8* %want_this, align 1
  br label %if.end.313

if.end.313:                                       ; preds = %if.else.312, %if.end.311
  br label %if.end.314

if.end.314:                                       ; preds = %if.end.313, %if.then.283
  br label %if.end.315

if.end.315:                                       ; preds = %if.end.314, %if.end.274
  br label %if.end.316

if.end.316:                                       ; preds = %if.end.315, %if.end.225
  br label %if.end.317

if.end.317:                                       ; preds = %if.end.316, %if.then.180
  br label %if.end.318

if.end.318:                                       ; preds = %if.end.317, %if.then.170
  br label %if.end.319

if.end.319:                                       ; preds = %if.end.318, %if.then.161
  br label %if.end.320

if.end.320:                                       ; preds = %if.end.319, %if.then.155
  %146 = load i8, i8* %want_this, align 1
  %tobool321 = trunc i8 %146 to i1
  %conv322 = zext i1 %tobool321 to i32
  %147 = load i32, i32* %settings_seen, align 4
  %add323 = add nsw i32 %147, %conv322
  store i32 %add323, i32* %settings_seen, align 4
  br label %if.end.324

if.end.324:                                       ; preds = %if.end.320, %sw.epilog
  br label %while.cond

while.end:                                        ; preds = %land.end
  %148 = load i32, i32* %settings_seen, align 4
  store i32 %148, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %sw.default, %if.then.146, %if.then.107, %if.then.86, %if.then.63, %if.then.43, %if.then
  %149 = load i32, i32* %retval
  ret i32 %149
}

declare i32 @XFree(i8*) #1

declare void @x_uncatch_errors() #1

; Function Attrs: nounwind readnone
declare i64 @Fbyteorder() #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

declare %struct._FcPattern* @FcPatternCreate() #1

declare void @XftDefaultSubstitute(%struct._XDisplay*, i32, %struct._FcPattern*) #1

declare i32 @XScreenNumberOfScreen(%struct.Screen*) #1

declare i32 @FcPatternGetBool(%struct._FcPattern*, i8*, i32, i32*) #1

declare i32 @FcPatternGetInteger(%struct._FcPattern*, i8*, i32, i32*) #1

declare i32 @FcPatternGetDouble(%struct._FcPattern*, i8*, i32, double*) #1

declare i32 @FcPatternDel(%struct._FcPattern*, i8*) #1

declare i32 @FcPatternAddBool(%struct._FcPattern*, i8*, i32) #1

declare i32 @FcPatternAddInteger(%struct._FcPattern*, i8*, i32) #1

declare i32 @FcPatternAddDouble(%struct._FcPattern*, i8*, double) #1

declare i32 @XftDefaultSet(%struct._XDisplay*, %struct._FcPattern*) #1

; Function Attrs: nounwind uwtable
define internal void @store_config_changed_event(i64 %arg, i64 %display_name) #0 {
entry:
  %arg.addr = alloca i64, align 8
  %display_name.addr = alloca i64, align 8
  %event = alloca %struct.input_event, align 8
  store i64 %arg, i64* %arg.addr, align 8
  store i64 %display_name, i64* %display_name.addr, align 8
  %0 = bitcast %struct.input_event* %event to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 56, i32 8, i1 false)
  %1 = bitcast %struct.input_event* %event to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, -65536
  %bf.set = or i32 %bf.clear, 26
  store i32 %bf.set, i32* %1, align 8
  %2 = load i64, i64* %display_name.addr, align 8
  %frame_or_window = getelementptr inbounds %struct.input_event, %struct.input_event* %event, i32 0, i32 6
  store i64 %2, i64* %frame_or_window, align 8
  %3 = load i64, i64* %arg.addr, align 8
  %arg1 = getelementptr inbounds %struct.input_event, %struct.input_event* %event, i32 0, i32 7
  store i64 %3, i64* %arg1, align 8
  call void @kbd_buffer_store_event(%struct.input_event* %event)
  ret void
}

declare i64 @make_formatted_string(i8*, i8*, ...) #1

declare void @FcPatternDestroy(%struct._FcPattern*) #1

declare void @kbd_buffer_store_event(%struct.input_event*) #1

; Function Attrs: nounwind uwtable
define internal zeroext i1 @dpyinfo_valid(%struct.x_display_info* %dpyinfo) #0 {
entry:
  %dpyinfo.addr = alloca %struct.x_display_info*, align 8
  %found = alloca i8, align 1
  %d = alloca %struct.x_display_info*, align 8
  store %struct.x_display_info* %dpyinfo, %struct.x_display_info** %dpyinfo.addr, align 8
  store i8 0, i8* %found, align 1
  %0 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %cmp = icmp ne %struct.x_display_info* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.x_display_info*, %struct.x_display_info** @x_display_list, align 8
  store %struct.x_display_info* %1, %struct.x_display_info** %d, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i8, i8* %found, align 1
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %for.cond
  %3 = load %struct.x_display_info*, %struct.x_display_info** %d, align 8
  %tobool1 = icmp ne %struct.x_display_info* %3, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %tobool1, %land.rhs ]
  br i1 %4, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %5 = load %struct.x_display_info*, %struct.x_display_info** %d, align 8
  %6 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %cmp2 = icmp eq %struct.x_display_info* %5, %6
  br i1 %cmp2, label %land.rhs.3, label %land.end.6

land.rhs.3:                                       ; preds = %for.body
  %7 = load %struct.x_display_info*, %struct.x_display_info** %d, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %7, i32 0, i32 2
  %8 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %9 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %display4 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %9, i32 0, i32 2
  %10 = load %struct._XDisplay*, %struct._XDisplay** %display4, align 8
  %cmp5 = icmp eq %struct._XDisplay* %8, %10
  br label %land.end.6

land.end.6:                                       ; preds = %land.rhs.3, %for.body
  %11 = phi i1 [ false, %for.body ], [ %cmp5, %land.rhs.3 ]
  %frombool = zext i1 %11 to i8
  store i8 %frombool, i8* %found, align 1
  br label %for.inc

for.inc:                                          ; preds = %land.end.6
  %12 = load %struct.x_display_info*, %struct.x_display_info** %d, align 8
  %next = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %12, i32 0, i32 0
  %13 = load %struct.x_display_info*, %struct.x_display_info** %next, align 8
  store %struct.x_display_info* %13, %struct.x_display_info** %d, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %14 = load i8, i8* %found, align 1
  %tobool7 = trunc i8 %14 to i1
  ret i1 %tobool7
}

declare void @block_input() #1

declare void @unblock_input() #1

declare %struct._GSettingsSchema* @g_settings_schema_source_lookup(%struct._GSettingsSchemaSource*, i8*, i32) #1

declare %struct._GSettingsSchemaSource* @g_settings_schema_source_get_default() #1

declare void @g_settings_schema_unref(%struct._GSettingsSchema*) #1

declare %struct._GSettings* @g_settings_new(i8*) #1

declare i8* @g_object_ref_sink(i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @something_changed_gsettingsCB(%struct._GSettings* %settings, i8* %key, i8* %user_data) #0 {
entry:
  %settings.addr = alloca %struct._GSettings*, align 8
  %key.addr = alloca i8*, align 8
  %user_data.addr = alloca i8*, align 8
  %val = alloca %struct._GVariant*, align 8
  %newstyle = alloca i8*, align 8
  %newfont = alloca i8*, align 8
  %newfont33 = alloca i8*, align 8
  store %struct._GSettings* %settings, %struct._GSettings** %settings.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i8*, i8** %key.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i32 0, i32 0)) #5
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._GSettings*, %struct._GSettings** %settings.addr, align 8
  %call1 = call %struct._GVariant* @g_settings_get_value(%struct._GSettings* %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i32 0, i32 0))
  store %struct._GVariant* %call1, %struct._GVariant** %val, align 8
  %2 = load %struct._GVariant*, %struct._GVariant** %val, align 8
  %tobool = icmp ne %struct._GVariant* %2, null
  br i1 %tobool, label %if.then.2, label %if.end.8

if.then.2:                                        ; preds = %if.then
  %3 = load %struct._GVariant*, %struct._GVariant** %val, align 8
  %call3 = call %struct._GVariant* @g_variant_ref_sink(%struct._GVariant* %3)
  %4 = load %struct._GVariant*, %struct._GVariant** %val, align 8
  %call4 = call i32 @g_variant_is_of_type(%struct._GVariant* %4, %struct._GVariantType* bitcast ([2 x i8]* @.str.37 to %struct._GVariantType*))
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then.2
  %5 = load %struct._GVariant*, %struct._GVariant** %val, align 8
  %call7 = call i8* @g_variant_get_string(%struct._GVariant* %5, i64* null)
  store i8* %call7, i8** %newstyle, align 8
  %6 = load i8*, i8** %newstyle, align 8
  %7 = load %struct.x_display_info*, %struct.x_display_info** @first_dpyinfo, align 8
  call void @store_tool_bar_style_changed(i8* %6, %struct.x_display_info* %7)
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then.2
  %8 = load %struct._GVariant*, %struct._GVariant** %val, align 8
  call void @g_variant_unref(%struct._GVariant* %8)
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  br label %if.end.39

if.else:                                          ; preds = %entry
  %9 = load i8*, i8** %key.addr, align 8
  %call9 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.38, i32 0, i32 0)) #5
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.else.22

if.then.11:                                       ; preds = %if.else
  %10 = load %struct._GSettings*, %struct._GSettings** %settings.addr, align 8
  %call12 = call %struct._GVariant* @g_settings_get_value(%struct._GSettings* %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.38, i32 0, i32 0))
  store %struct._GVariant* %call12, %struct._GVariant** %val, align 8
  %11 = load %struct._GVariant*, %struct._GVariant** %val, align 8
  %tobool13 = icmp ne %struct._GVariant* %11, null
  br i1 %tobool13, label %if.then.14, label %if.end.21

if.then.14:                                       ; preds = %if.then.11
  %12 = load %struct._GVariant*, %struct._GVariant** %val, align 8
  %call15 = call %struct._GVariant* @g_variant_ref_sink(%struct._GVariant* %12)
  %13 = load %struct._GVariant*, %struct._GVariant** %val, align 8
  %call16 = call i32 @g_variant_is_of_type(%struct._GVariant* %13, %struct._GVariantType* bitcast ([2 x i8]* @.str.37 to %struct._GVariantType*))
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.then.14
  %14 = load %struct._GVariant*, %struct._GVariant** %val, align 8
  %call19 = call i8* @g_variant_get_string(%struct._GVariant* %14, i64* null)
  store i8* %call19, i8** %newfont, align 8
  %15 = load i8*, i8** %newfont, align 8
  call void @store_monospaced_changed(i8* %15)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.then.14
  %16 = load %struct._GVariant*, %struct._GVariant** %val, align 8
  call void @g_variant_unref(%struct._GVariant* %16)
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then.11
  br label %if.end.38

if.else.22:                                       ; preds = %if.else
  %17 = load i8*, i8** %key.addr, align 8
  %call23 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0)) #5
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %if.then.25, label %if.end.37

if.then.25:                                       ; preds = %if.else.22
  %18 = load %struct._GSettings*, %struct._GSettings** %settings.addr, align 8
  %call26 = call %struct._GVariant* @g_settings_get_value(%struct._GSettings* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0))
  store %struct._GVariant* %call26, %struct._GVariant** %val, align 8
  %19 = load %struct._GVariant*, %struct._GVariant** %val, align 8
  %tobool27 = icmp ne %struct._GVariant* %19, null
  br i1 %tobool27, label %if.then.28, label %if.end.36

if.then.28:                                       ; preds = %if.then.25
  %20 = load %struct._GVariant*, %struct._GVariant** %val, align 8
  %call29 = call %struct._GVariant* @g_variant_ref_sink(%struct._GVariant* %20)
  %21 = load %struct._GVariant*, %struct._GVariant** %val, align 8
  %call30 = call i32 @g_variant_is_of_type(%struct._GVariant* %21, %struct._GVariantType* bitcast ([2 x i8]* @.str.37 to %struct._GVariantType*))
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %if.then.28
  %22 = load %struct._GVariant*, %struct._GVariant** %val, align 8
  %call34 = call i8* @g_variant_get_string(%struct._GVariant* %22, i64* null)
  store i8* %call34, i8** %newfont33, align 8
  %23 = load i8*, i8** %newfont33, align 8
  call void @store_font_name_changed(i8* %23)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.32, %if.then.28
  %24 = load %struct._GVariant*, %struct._GVariant** %val, align 8
  call void @g_variant_unref(%struct._GVariant* %24)
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.25
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.else.22
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.end.21
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.end.8
  ret void
}

declare %struct._GVariant* @g_settings_get_value(%struct._GSettings*, i8*) #1

declare %struct._GVariant* @g_variant_ref_sink(%struct._GVariant*) #1

declare i32 @g_variant_is_of_type(%struct._GVariant*, %struct._GVariantType*) #1

declare i8* @g_variant_get_string(%struct._GVariant*, i64*) #1

declare void @g_variant_unref(%struct._GVariant*) #1

; Function Attrs: nounwind uwtable
define internal void @store_monospaced_changed(i8* %newfont) #0 {
entry:
  %newfont.addr = alloca i8*, align 8
  store i8* %newfont, i8** %newfont.addr, align 8
  %0 = load i8*, i8** @current_mono_font, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %newfont.addr, align 8
  %2 = load i8*, i8** @current_mono_font, align 8
  %call = call i32 @strcmp(i8* %1, i8* %2) #5
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %if.end.6

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load i8*, i8** %newfont.addr, align 8
  call void @dupstring(i8** @current_mono_font, i8* %3)
  %4 = load %struct.x_display_info*, %struct.x_display_info** @first_dpyinfo, align 8
  %call2 = call zeroext i1 @dpyinfo_valid(%struct.x_display_info* %4)
  br i1 %call2, label %land.lhs.true.3, label %if.end.6

land.lhs.true.3:                                  ; preds = %if.end
  %5 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 495), align 1
  %tobool = trunc i8 %5 to i1
  br i1 %tobool, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %land.lhs.true.3
  %call5 = call i64 @builtin_lisp_symbol(i32 682)
  %6 = load %struct.x_display_info*, %struct.x_display_info** @first_dpyinfo, align 8
  %name_list_element = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %6, i32 0, i32 4
  %7 = load i64, i64* %name_list_element, align 8
  %sub = sub nsw i64 %7, 3
  %8 = inttoptr i64 %sub to i8*
  %9 = bitcast i8* %8 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %9, i32 0, i32 0
  %10 = load i64, i64* %car, align 8
  call void @store_config_changed_event(i64 %call5, i64 %10)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then, %if.then.4, %land.lhs.true.3, %if.end
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{i32 2549883}
!2 = !{i32 2550628}
!3 = !{i32 2551706}
!4 = !{i32 2552243}
