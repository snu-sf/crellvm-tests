; ModuleID = './src/menu.bc'
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
%struct.Lisp_Cons = type { i64, %union.anon }
%union.anon = type { i64 }
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
%struct.composition = type { i32, i16, i16, i16, i16, i16, i32, i32, i64, i8*, i16* }
%struct.glyph = type { i64, i64, i16, i16, i16, i16, i24, i24, %union.anon.0, %union.anon.2 }
%union.anon.0 = type { %struct.glyph_slice }
%union.anon.2 = type { i32 }
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
%struct.kboard = type { %struct.kboard*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i8, i8, i64 }
%struct.image_cache = type { %struct.image**, %struct.image**, i64, i64, i64 }
%union.display_info = type { %struct.tty_display_info* }
%struct.tty_display_info = type opaque
%struct.coding_system = type { i64, i32, i32, %union.anon.6, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8*, i64, i64, i64, i64, i8*, i32*, i32, i32, [64 x i8], i32, i32, i1 (%struct.coding_system*, %struct.coding_detection_info*)*, void (%struct.coding_system*)*, i1 (%struct.coding_system*)* }
%union.anon.6 = type { %struct.ccl_spec*, [328 x i8] }
%struct.ccl_spec = type opaque
%struct.coding_detection_info = type { i32, i32, i32 }
%struct.redisplay_interface = type { void (%struct.frame*, i64, i64)**, void (%struct.it*)*, void (%struct.window*, %struct.glyph_row*, %struct.glyph*, i32, i32)*, void (%struct.window*, %struct.glyph_row*, %struct.glyph*, i32, i32)*, void (%struct.window*, %struct.glyph_row*, i32, i32)*, void (%struct.window*, %struct.run*)*, void (%struct.window*, %struct.glyph_row*)*, void (%struct.window*)*, void (%struct.window*, i1, i1)*, void (%struct.frame*)*, void (%struct.window*)*, void (%struct.glyph*, %struct.frame*, i32*, i32*)*, void (%struct.window*, %struct.glyph_row*, i32, i32)*, void (%struct.window*, %struct.glyph_row*, %struct.draw_fringe_bitmap_params*)*, void (i32, i16*, i32, i32)*, void (i32)*, void (%struct.glyph_string*)*, void (%struct.glyph_string*)*, void (%struct.frame*, i64)*, void (%struct.frame*, i32, i32, i32, i32)*, void (%struct.window*, %struct.glyph_row*, i32, i32, i32, i32, i1, i1)*, void (%struct.window*, i32, i32, i32)*, void (%struct.window*, i32, i32, i32, i32)*, void (%struct.frame*, i32, i32, i32, i32, i32)*, void (%struct.frame*)*, void (%struct.frame*)* }
%struct.it = type { i64, %struct.window*, %struct.frame*, i32, i64, i64, i64, i64, i8*, i64, i64, i8, %struct.Lisp_Char_Table*, i64*, i64*, i32, i32, i32, [16 x i64], %struct.display_pos, %struct.display_pos, i64, i64, [16 x i64], [16 x i64], i64, i64, [5 x %struct.iterator_stack_entry], i32, i64, i32, i32, i16, i32, i32, i32, i32, %struct.composition_it, i32, i32, i64, %struct.xwidget*, %struct.it_slice, i64, i16, i16, i64, i64, %struct.text_pos, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, %struct.glyph_row*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.text_pos, i32, i32, i32, i32, i56, i24, %struct.bidi_it, i32 }
%struct.Lisp_Char_Table = type { %struct.vectorlike_header, i64, i64, i64, i64, [64 x i64], [0 x i64] }
%struct.iterator_stack_entry = type { i64, i32, i64, i64, i64, i64, %struct.composition_it, i32, %union.anon.7, %struct.text_pos, %struct.display_pos, i64, i32, i32, i32, i8, i32, i16, i64, i64 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { i64, %struct.it_slice, i64 }
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
%struct.tty_output = type opaque
%struct.font_driver_list = type { i8, %struct.font_driver*, %struct.font_driver_list* }
%struct.skp = type { i64, i32, i32 }
%struct._widget_value = type { i64, i8*, i8*, i64, i8*, i64, i8, i8, i8, i32, %struct._widget_value*, i8*, %struct._widget_value* }
%struct.Lisp_Subr = type { %struct.vectorlike_header, %union.anon.12, i16, i16, i8*, i8*, i8* }
%union.anon.12 = type { i64 ()* }
%union.Aligned_String = type { %struct.Lisp_String }
%struct.Lisp_String = type { i64, i64, %struct.interval*, i8* }

@menu_items_inuse = common global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Trying to use a menu from within a menu-entry\00", align 1
@menu_items = common global i64 0, align 8
@menu_items_allocated = common global i32 0, align 4
@menu_items_used = common global i32 0, align 4
@menu_items_n_panes = common global i32 0, align 4
@menu_items_submenu_depth = internal global i32 0, align 4
@globals = external global %struct.emacs_globals, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"menu\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@current_buffer = external global %struct.buffer*, align 8
@selected_frame = external global i64, align 8
@selected_window = external global i64, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@item_properties = external global i64, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"[ ] \00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"[X] \00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"( ) \00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"(*) \00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c" >\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"x-popup-menu\00", align 1
@Sx_popup_menu = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fx_popup_menu }, i16 2, i16 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.11 = private unnamed_addr constant [15 x i8] c"x-popup-dialog\00", align 1
@Sx_popup_dialog = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Fx_popup_dialog }, i16 2, i16 3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.12 = private unnamed_addr constant [21 x i8] c"menu-bar-menu-at-x-y\00", align 1
@Smenu_bar_menu_at_x_y = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Fmenu_bar_menu_at_x_y }, i16 2, i16 3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* null }, align 8

; Function Attrs: nounwind uwtable
define void @init_menu_items() #0 {
entry:
  %0 = load i64, i64* @menu_items_inuse, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i64, i64* @menu_items, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp2 = icmp eq i64 %1, %call1
  br i1 %cmp2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %if.end
  store i32 60, i32* @menu_items_allocated, align 4
  %2 = load i32, i32* @menu_items_allocated, align 4
  %conv = sext i32 %2 to i64
  %shl = shl i64 %conv, 2
  %add = add i64 %shl, 2
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %call5 = call i64 @Fmake_vector(i64 %add, i64 %call4)
  store i64 %call5, i64* @menu_items, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.3, %if.end
  %call7 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call7, i64* @menu_items_inuse, align 8
  store i32 0, i32* @menu_items_used, align 4
  store i32 0, i32* @menu_items_n_panes, align 4
  store i32 0, i32* @menu_items_submenu_depth, align 4
  ret void
}

declare i64 @builtin_lisp_symbol(i32) #1

; Function Attrs: noreturn
declare void @error(i8*, ...) #2

declare i64 @Fmake_vector(i64, i64) #1

; Function Attrs: nounwind readnone uwtable
define void @finish_menu_items() #3 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define void @unuse_menu_items() #0 {
entry:
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* @menu_items_inuse, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @discard_menu_items() #0 {
entry:
  %0 = load i32, i32* @menu_items_allocated, align 4
  %cmp = icmp sgt i32 %0, 200
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* @menu_items, align 8
  store i32 0, i32* @menu_items_allocated, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @save_menu_items() #0 {
entry:
  %saved = alloca i64, align 8
  %0 = load i64, i64* @menu_items_inuse, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %1 = load i64, i64* @menu_items, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %1, %cond.true ], [ %call1, %cond.false ]
  %2 = load i32, i32* @menu_items_used, align 4
  %conv = sext i32 %2 to i64
  %shl = shl i64 %conv, 2
  %add = add i64 %shl, 2
  %3 = load i32, i32* @menu_items_n_panes, align 4
  %conv2 = sext i32 %3 to i64
  %shl3 = shl i64 %conv2, 2
  %add4 = add i64 %shl3, 2
  %4 = load i32, i32* @menu_items_submenu_depth, align 4
  %conv5 = sext i32 %4 to i64
  %shl6 = shl i64 %conv5, 2
  %add7 = add i64 %shl6, 2
  %call8 = call i64 @list4(i64 %cond, i64 %add, i64 %add4, i64 %add7)
  store i64 %call8, i64* %saved, align 8
  %5 = load i64, i64* %saved, align 8
  call void @record_unwind_protect(void (i64)* @restore_menu_items, i64 %5)
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call9, i64* @menu_items_inuse, align 8
  %call10 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call10, i64* @menu_items, align 8
  ret void
}

declare i64 @list4(i64, i64, i64, i64) #1

declare void @record_unwind_protect(void (i64)*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @restore_menu_items(i64 %saved) #0 {
entry:
  %saved.addr = alloca i64, align 8
  store i64 %saved, i64* %saved.addr, align 8
  %0 = load i64, i64* %saved.addr, align 8
  %sub = sub nsw i64 %0, 3
  %1 = inttoptr i64 %sub to i8*
  %2 = bitcast i8* %1 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %2, i32 0, i32 0
  %3 = load i64, i64* %car, align 8
  store i64 %3, i64* @menu_items, align 8
  %4 = load i64, i64* @menu_items, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %4, %call
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call1, %cond.true ], [ %call2, %cond.false ]
  store i64 %cond, i64* @menu_items_inuse, align 8
  %5 = load i64, i64* @menu_items, align 8
  %call3 = call zeroext i1 @VECTORP(i64 %5)
  br i1 %call3, label %cond.true.4, label %cond.false.6

cond.true.4:                                      ; preds = %cond.end
  %6 = load i64, i64* @menu_items, align 8
  %call5 = call i64 @ASIZE(i64 %6)
  br label %cond.end.7

cond.false.6:                                     ; preds = %cond.end
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.false.6, %cond.true.4
  %cond8 = phi i64 [ %call5, %cond.true.4 ], [ 0, %cond.false.6 ]
  %conv = trunc i64 %cond8 to i32
  store i32 %conv, i32* @menu_items_allocated, align 4
  %7 = load i64, i64* %saved.addr, align 8
  %sub9 = sub nsw i64 %7, 3
  %8 = inttoptr i64 %sub9 to i8*
  %9 = bitcast i8* %8 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %9, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %10 = load i64, i64* %cdr, align 8
  store i64 %10, i64* %saved.addr, align 8
  %11 = load i64, i64* %saved.addr, align 8
  %sub10 = sub nsw i64 %11, 3
  %12 = inttoptr i64 %sub10 to i8*
  %13 = bitcast i8* %12 to %struct.Lisp_Cons*
  %car11 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %13, i32 0, i32 0
  %14 = load i64, i64* %car11, align 8
  %shr = ashr i64 %14, 2
  %conv12 = trunc i64 %shr to i32
  store i32 %conv12, i32* @menu_items_used, align 4
  %15 = load i64, i64* %saved.addr, align 8
  %sub13 = sub nsw i64 %15, 3
  %16 = inttoptr i64 %sub13 to i8*
  %17 = bitcast i8* %16 to %struct.Lisp_Cons*
  %u14 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %17, i32 0, i32 1
  %cdr15 = bitcast %union.anon* %u14 to i64*
  %18 = load i64, i64* %cdr15, align 8
  store i64 %18, i64* %saved.addr, align 8
  %19 = load i64, i64* %saved.addr, align 8
  %sub16 = sub nsw i64 %19, 3
  %20 = inttoptr i64 %sub16 to i8*
  %21 = bitcast i8* %20 to %struct.Lisp_Cons*
  %car17 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %21, i32 0, i32 0
  %22 = load i64, i64* %car17, align 8
  %shr18 = ashr i64 %22, 2
  %conv19 = trunc i64 %shr18 to i32
  store i32 %conv19, i32* @menu_items_n_panes, align 4
  %23 = load i64, i64* %saved.addr, align 8
  %sub20 = sub nsw i64 %23, 3
  %24 = inttoptr i64 %sub20 to i8*
  %25 = bitcast i8* %24 to %struct.Lisp_Cons*
  %u21 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %25, i32 0, i32 1
  %cdr22 = bitcast %union.anon* %u21 to i64*
  %26 = load i64, i64* %cdr22, align 8
  store i64 %26, i64* %saved.addr, align 8
  %27 = load i64, i64* %saved.addr, align 8
  %sub23 = sub nsw i64 %27, 3
  %28 = inttoptr i64 %sub23 to i8*
  %29 = bitcast i8* %28 to %struct.Lisp_Cons*
  %car24 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %29, i32 0, i32 0
  %30 = load i64, i64* %car24, align 8
  %shr25 = ashr i64 %30, 2
  %conv26 = trunc i64 %shr25 to i32
  store i32 %conv26, i32* @menu_items_submenu_depth, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @list_of_panes(i64 %menu) #0 {
entry:
  %menu.addr = alloca i64, align 8
  %tail = alloca i64, align 8
  %elt = alloca i64, align 8
  %pane_name = alloca i64, align 8
  %pane_data = alloca i64, align 8
  store i64 %menu, i64* %menu.addr, align 8
  call void @init_menu_items()
  %0 = load i64, i64* %menu.addr, align 8
  store i64 %0, i64* %tail, align 8
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
  store i64 %5, i64* %elt, align 8
  %6 = load i64, i64* %elt, align 8
  %call = call i64 @Fcar(i64 %6)
  store i64 %call, i64* %pane_name, align 8
  %7 = load i64, i64* %pane_name, align 8
  call void @CHECK_STRING(i64 %7)
  %8 = load i64, i64* %pane_name, align 8
  %call2 = call i64 @encode_menu_string(i64 %8)
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  call void @push_menu_pane(i64 %call2, i64 %call3)
  %9 = load i64, i64* %elt, align 8
  %call4 = call i64 @Fcdr(i64 %9)
  store i64 %call4, i64* %pane_data, align 8
  %10 = load i64, i64* %pane_data, align 8
  call void @CHECK_CONS(i64 %10)
  %11 = load i64, i64* %pane_data, align 8
  call void @list_of_items(i64 %11)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i64, i64* %tail, align 8
  %sub5 = sub nsw i64 %12, 3
  %13 = inttoptr i64 %sub5 to i8*
  %14 = bitcast i8* %13 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %14, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %15 = load i64, i64* %cdr, align 8
  store i64 %15, i64* %tail, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @finish_menu_items() #7
  ret void
}

declare i64 @Fcar(i64) #1

declare void @CHECK_STRING(i64) #1

; Function Attrs: nounwind uwtable
define internal void @push_menu_pane(i64 %name, i64 %prefix_vec) #0 {
entry:
  %name.addr = alloca i64, align 8
  %prefix_vec.addr = alloca i64, align 8
  store i64 %name, i64* %name.addr, align 8
  store i64 %prefix_vec, i64* %prefix_vec.addr, align 8
  call void @ensure_menu_items(i32 3)
  %0 = load i32, i32* @menu_items_submenu_depth, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @menu_items_n_panes, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @menu_items_n_panes, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, i64* @menu_items, align 8
  %3 = load i32, i32* @menu_items_used, align 4
  %conv = sext i32 %3 to i64
  %call = call i64 @builtin_lisp_symbol(i32 901)
  call void @ASET(i64 %2, i64 %conv, i64 %call)
  %4 = load i32, i32* @menu_items_used, align 4
  %inc1 = add nsw i32 %4, 1
  store i32 %inc1, i32* @menu_items_used, align 4
  %5 = load i64, i64* @menu_items, align 8
  %6 = load i32, i32* @menu_items_used, align 4
  %conv2 = sext i32 %6 to i64
  %7 = load i64, i64* %name.addr, align 8
  call void @ASET(i64 %5, i64 %conv2, i64 %7)
  %8 = load i32, i32* @menu_items_used, align 4
  %inc3 = add nsw i32 %8, 1
  store i32 %inc3, i32* @menu_items_used, align 4
  %9 = load i64, i64* @menu_items, align 8
  %10 = load i32, i32* @menu_items_used, align 4
  %conv4 = sext i32 %10 to i64
  %11 = load i64, i64* %prefix_vec.addr, align 8
  call void @ASET(i64 %9, i64 %conv4, i64 %11)
  %12 = load i32, i32* @menu_items_used, align 4
  %inc5 = add nsw i32 %12, 1
  store i32 %inc5, i32* @menu_items_used, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @encode_menu_string(i64 %str) #0 {
entry:
  %retval = alloca i64, align 8
  %str.addr = alloca i64, align 8
  store i64 %str, i64* %str.addr, align 8
  %0 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 179), align 8
  %sub = sub nsw i64 %0, 5
  %1 = inttoptr i64 %sub to i8*
  %2 = bitcast i8* %1 to %struct.frame*
  %output_method = getelementptr inbounds %struct.frame, %struct.frame* %2, i32 0, i32 26
  %3 = bitcast i48* %output_method to i64*
  %bf.load = load i64, i64* %3, align 8
  %bf.lshr = lshr i64 %bf.load, 23
  %bf.clear = and i64 %bf.lshr, 7
  %bf.cast = trunc i64 %bf.clear to i32
  %cmp = icmp eq i32 %bf.cast, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i64, i64* %str.addr, align 8
  store i64 %4, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %str.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 988)
  %call1 = call i64 @code_convert_string_norecord(i64 %5, i64 %call, i1 zeroext true)
  store i64 %call1, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i64, i64* %retval
  ret i64 %6
}

declare i64 @Fcdr(i64) #1

declare void @CHECK_CONS(i64) #1

; Function Attrs: nounwind uwtable
define internal void @list_of_items(i64 %pane) #0 {
entry:
  %pane.addr = alloca i64, align 8
  %tail = alloca i64, align 8
  %item = alloca i64, align 8
  %item1 = alloca i64, align 8
  store i64 %pane, i64* %pane.addr, align 8
  %0 = load i64, i64* %pane.addr, align 8
  store i64 %0, i64* %tail, align 8
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
  store i64 %5, i64* %item, align 8
  %6 = load i64, i64* %item, align 8
  %call = call zeroext i1 @STRINGP(i64 %6)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %7 = load i64, i64* %item, align 8
  %call2 = call i64 @encode_menu_string(i64 %7)
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %call5 = call i64 @builtin_lisp_symbol(i32 901)
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  %call7 = call i64 @builtin_lisp_symbol(i32 0)
  %call8 = call i64 @builtin_lisp_symbol(i32 0)
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  call void @push_menu_item(i64 %call2, i64 %call3, i64 %call4, i64 %call5, i64 %call6, i64 %call7, i64 %call8, i64 %call9)
  br label %if.end.26

if.else:                                          ; preds = %for.body
  %8 = load i64, i64* %item, align 8
  %and10 = and i64 %8, 7
  %conv11 = trunc i64 %and10 to i32
  %cmp12 = icmp eq i32 %conv11, 3
  br i1 %cmp12, label %if.then.14, label %if.else.25

if.then.14:                                       ; preds = %if.else
  %9 = load i64, i64* %item, align 8
  %sub15 = sub nsw i64 %9, 3
  %10 = inttoptr i64 %sub15 to i8*
  %11 = bitcast i8* %10 to %struct.Lisp_Cons*
  %car16 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %11, i32 0, i32 0
  %12 = load i64, i64* %car16, align 8
  store i64 %12, i64* %item1, align 8
  %13 = load i64, i64* %item1, align 8
  call void @CHECK_STRING(i64 %13)
  %14 = load i64, i64* %item1, align 8
  %call17 = call i64 @encode_menu_string(i64 %14)
  %call18 = call i64 @builtin_lisp_symbol(i32 901)
  %15 = load i64, i64* %item, align 8
  %sub19 = sub nsw i64 %15, 3
  %16 = inttoptr i64 %sub19 to i8*
  %17 = bitcast i8* %16 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %17, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %18 = load i64, i64* %cdr, align 8
  %call20 = call i64 @builtin_lisp_symbol(i32 901)
  %call21 = call i64 @builtin_lisp_symbol(i32 0)
  %call22 = call i64 @builtin_lisp_symbol(i32 0)
  %call23 = call i64 @builtin_lisp_symbol(i32 0)
  %call24 = call i64 @builtin_lisp_symbol(i32 0)
  call void @push_menu_item(i64 %call17, i64 %call18, i64 %18, i64 %call20, i64 %call21, i64 %call22, i64 %call23, i64 %call24)
  br label %if.end

if.else.25:                                       ; preds = %if.else
  call void @push_left_right_boundary()
  br label %if.end

if.end:                                           ; preds = %if.else.25, %if.then.14
  br label %if.end.26

if.end.26:                                        ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %19 = load i64, i64* %tail, align 8
  %sub27 = sub nsw i64 %19, 3
  %20 = inttoptr i64 %sub27 to i8*
  %21 = bitcast i8* %20 to %struct.Lisp_Cons*
  %u28 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %21, i32 0, i32 1
  %cdr29 = bitcast %union.anon* %u28 to i64*
  %22 = load i64, i64* %cdr29, align 8
  store i64 %22, i64* %tail, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i1 @parse_single_submenu(i64 %item_key, i64 %item_name, i64 %maps) #0 {
entry:
  %item_key.addr = alloca i64, align 8
  %item_name.addr = alloca i64, align 8
  %maps.addr = alloca i64, align 8
  %length = alloca i64, align 8
  %len = alloca i64, align 8
  %mapvec = alloca i64*, align 8
  %i = alloca i64, align 8
  %top_level_items = alloca i8, align 1
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  %alloca_nbytes = alloca i64, align 8
  %arg_ = alloca i64, align 8
  %prompt = alloca i64, align 8
  store i64 %item_key, i64* %item_key.addr, align 8
  store i64 %item_name, i64* %item_name.addr, align 8
  store i64 %maps, i64* %maps.addr, align 8
  store i8 0, i8* %top_level_items, align 1
  store i64 16384, i64* %sa_avail, align 8
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  %0 = load i64, i64* %maps.addr, align 8
  %call1 = call i64 @Flength(i64 %0)
  store i64 %call1, i64* %length, align 8
  %1 = load i64, i64* %length, align 8
  %shr = ashr i64 %1, 2
  store i64 %shr, i64* %len, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br i1 false, label %cond.true, label %cond.false.472

cond.true:                                        ; preds = %do.body
  br i1 false, label %cond.true.2, label %cond.false.257

cond.true.2:                                      ; preds = %cond.true
  %2 = load i64, i64* %len, align 8
  %conv = trunc i64 %2 to i8
  %conv3 = sext i8 %conv to i32
  %add = add nsw i32 0, %conv3
  %mul = mul nsw i32 0, %add
  %sub = sub nsw i32 %mul, 1
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %cond.true.5, label %cond.false

cond.true.5:                                      ; preds = %cond.true.2
  %3 = load i64, i64* %len, align 8
  %conv6 = trunc i64 %3 to i8
  %conv7 = sext i8 %conv6 to i32
  %add8 = add nsw i32 0, %conv7
  %mul9 = mul nsw i32 0, %add8
  %add10 = add nsw i32 %mul9, 0
  %neg = xor i32 %add10, -1
  %cmp11 = icmp eq i32 %neg, -1
  %conv12 = zext i1 %cmp11 to i32
  %sub13 = sub nsw i32 0, %conv12
  %4 = load i64, i64* %len, align 8
  %conv14 = trunc i64 %4 to i8
  %conv15 = sext i8 %conv14 to i32
  %add16 = add nsw i32 0, %conv15
  %mul17 = mul nsw i32 0, %add16
  %add18 = add nsw i32 %mul17, 1
  %shl = shl i32 %add18, 30
  %sub19 = sub nsw i32 %shl, 1
  %mul20 = mul nsw i32 %sub19, 2
  %add21 = add nsw i32 %mul20, 1
  %sub22 = sub nsw i32 %sub13, %add21
  br label %cond.end

cond.false:                                       ; preds = %cond.true.2
  %5 = load i64, i64* %len, align 8
  %conv23 = trunc i64 %5 to i8
  %conv24 = sext i8 %conv23 to i32
  %add25 = add nsw i32 0, %conv24
  %mul26 = mul nsw i32 0, %add25
  %add27 = add nsw i32 %mul26, 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.5
  %cond = phi i32 [ %sub22, %cond.true.5 ], [ %add27, %cond.false ]
  %cmp28 = icmp eq i32 %cond, 0
  br i1 %cmp28, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %cond.end
  %6 = load i64, i64* %len, align 8
  %conv30 = trunc i64 %6 to i8
  %conv31 = sext i8 %conv30 to i32
  %cmp32 = icmp slt i32 %conv31, 0
  br i1 %cmp32, label %cond.true.211, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %cond.end
  br i1 false, label %cond.true.34, label %cond.false.112

cond.true.34:                                     ; preds = %lor.lhs.false
  %7 = load i64, i64* %len, align 8
  %conv35 = trunc i64 %7 to i8
  %conv36 = sext i8 %conv35 to i32
  %cmp37 = icmp slt i32 %conv36, 0
  br i1 %cmp37, label %cond.true.39, label %cond.false.69

cond.true.39:                                     ; preds = %cond.true.34
  %8 = load i64, i64* %len, align 8
  %conv40 = trunc i64 %8 to i8
  %conv41 = sext i8 %conv40 to i32
  %9 = load i64, i64* %len, align 8
  %conv42 = trunc i64 %9 to i8
  %conv43 = sext i8 %conv42 to i32
  %add44 = add nsw i32 0, %conv43
  %mul45 = mul nsw i32 0, %add44
  %sub46 = sub nsw i32 %mul45, 1
  %cmp47 = icmp slt i32 %sub46, 0
  br i1 %cmp47, label %cond.true.49, label %cond.false.59

cond.true.49:                                     ; preds = %cond.true.39
  %10 = load i64, i64* %len, align 8
  %conv50 = trunc i64 %10 to i8
  %conv51 = sext i8 %conv50 to i32
  %add52 = add nsw i32 0, %conv51
  %mul53 = mul nsw i32 0, %add52
  %add54 = add nsw i32 %mul53, 1
  %shl55 = shl i32 %add54, 30
  %sub56 = sub nsw i32 %shl55, 1
  %mul57 = mul nsw i32 %sub56, 2
  %add58 = add nsw i32 %mul57, 1
  br label %cond.end.65

cond.false.59:                                    ; preds = %cond.true.39
  %11 = load i64, i64* %len, align 8
  %conv60 = trunc i64 %11 to i8
  %conv61 = sext i8 %conv60 to i32
  %add62 = add nsw i32 0, %conv61
  %mul63 = mul nsw i32 0, %add62
  %sub64 = sub nsw i32 %mul63, 1
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.59, %cond.true.49
  %cond66 = phi i32 [ %add58, %cond.true.49 ], [ %sub64, %cond.false.59 ]
  %div = sdiv i32 %cond66, 8
  %cmp67 = icmp slt i32 %conv41, %div
  br i1 %cmp67, label %cond.true.211, label %lor.lhs.false.191

cond.false.69:                                    ; preds = %cond.true.34
  br i1 false, label %cond.true.70, label %cond.false.71

cond.true.70:                                     ; preds = %cond.false.69
  br i1 false, label %cond.true.211, label %lor.lhs.false.191

cond.false.71:                                    ; preds = %cond.false.69
  %12 = load i64, i64* %len, align 8
  %conv72 = trunc i64 %12 to i8
  %conv73 = sext i8 %conv72 to i32
  %add74 = add nsw i32 0, %conv73
  %mul75 = mul nsw i32 0, %add74
  %sub76 = sub nsw i32 %mul75, 1
  %cmp77 = icmp slt i32 %sub76, 0
  br i1 %cmp77, label %cond.true.79, label %cond.false.99

cond.true.79:                                     ; preds = %cond.false.71
  %13 = load i64, i64* %len, align 8
  %conv80 = trunc i64 %13 to i8
  %conv81 = sext i8 %conv80 to i32
  %add82 = add nsw i32 0, %conv81
  %mul83 = mul nsw i32 0, %add82
  %add84 = add nsw i32 %mul83, 0
  %neg85 = xor i32 %add84, -1
  %cmp86 = icmp eq i32 %neg85, -1
  %conv87 = zext i1 %cmp86 to i32
  %sub88 = sub nsw i32 0, %conv87
  %14 = load i64, i64* %len, align 8
  %conv89 = trunc i64 %14 to i8
  %conv90 = sext i8 %conv89 to i32
  %add91 = add nsw i32 0, %conv90
  %mul92 = mul nsw i32 0, %add91
  %add93 = add nsw i32 %mul92, 1
  %shl94 = shl i32 %add93, 30
  %sub95 = sub nsw i32 %shl94, 1
  %mul96 = mul nsw i32 %sub95, 2
  %add97 = add nsw i32 %mul96, 1
  %sub98 = sub nsw i32 %sub88, %add97
  br label %cond.end.105

cond.false.99:                                    ; preds = %cond.false.71
  %15 = load i64, i64* %len, align 8
  %conv100 = trunc i64 %15 to i8
  %conv101 = sext i8 %conv100 to i32
  %add102 = add nsw i32 0, %conv101
  %mul103 = mul nsw i32 0, %add102
  %add104 = add nsw i32 %mul103, 0
  br label %cond.end.105

cond.end.105:                                     ; preds = %cond.false.99, %cond.true.79
  %cond106 = phi i32 [ %sub98, %cond.true.79 ], [ %add104, %cond.false.99 ]
  %div107 = sdiv i32 %cond106, 8
  %16 = load i64, i64* %len, align 8
  %conv108 = trunc i64 %16 to i8
  %conv109 = sext i8 %conv108 to i32
  %cmp110 = icmp slt i32 %div107, %conv109
  br i1 %cmp110, label %cond.true.211, label %lor.lhs.false.191

cond.false.112:                                   ; preds = %lor.lhs.false
  br i1 false, label %cond.true.113, label %cond.false.114

cond.true.113:                                    ; preds = %cond.false.112
  br i1 false, label %cond.true.211, label %lor.lhs.false.191

cond.false.114:                                   ; preds = %cond.false.112
  %17 = load i64, i64* %len, align 8
  %conv115 = trunc i64 %17 to i8
  %conv116 = sext i8 %conv115 to i32
  %cmp117 = icmp slt i32 %conv116, 0
  br i1 %cmp117, label %cond.true.119, label %cond.false.160

cond.true.119:                                    ; preds = %cond.false.114
  %18 = load i64, i64* %len, align 8
  %conv120 = trunc i64 %18 to i8
  %conv121 = sext i8 %conv120 to i32
  %19 = load i64, i64* %len, align 8
  %conv122 = trunc i64 %19 to i8
  %conv123 = sext i8 %conv122 to i32
  %add124 = add nsw i32 0, %conv123
  %mul125 = mul nsw i32 0, %add124
  %sub126 = sub nsw i32 %mul125, 1
  %cmp127 = icmp slt i32 %sub126, 0
  br i1 %cmp127, label %cond.true.129, label %cond.false.149

cond.true.129:                                    ; preds = %cond.true.119
  %20 = load i64, i64* %len, align 8
  %conv130 = trunc i64 %20 to i8
  %conv131 = sext i8 %conv130 to i32
  %add132 = add nsw i32 0, %conv131
  %mul133 = mul nsw i32 0, %add132
  %add134 = add nsw i32 %mul133, 0
  %neg135 = xor i32 %add134, -1
  %cmp136 = icmp eq i32 %neg135, -1
  %conv137 = zext i1 %cmp136 to i32
  %sub138 = sub nsw i32 0, %conv137
  %21 = load i64, i64* %len, align 8
  %conv139 = trunc i64 %21 to i8
  %conv140 = sext i8 %conv139 to i32
  %add141 = add nsw i32 0, %conv140
  %mul142 = mul nsw i32 0, %add141
  %add143 = add nsw i32 %mul142, 1
  %shl144 = shl i32 %add143, 30
  %sub145 = sub nsw i32 %shl144, 1
  %mul146 = mul nsw i32 %sub145, 2
  %add147 = add nsw i32 %mul146, 1
  %sub148 = sub nsw i32 %sub138, %add147
  br label %cond.end.155

cond.false.149:                                   ; preds = %cond.true.119
  %22 = load i64, i64* %len, align 8
  %conv150 = trunc i64 %22 to i8
  %conv151 = sext i8 %conv150 to i32
  %add152 = add nsw i32 0, %conv151
  %mul153 = mul nsw i32 0, %add152
  %add154 = add nsw i32 %mul153, 0
  br label %cond.end.155

cond.end.155:                                     ; preds = %cond.false.149, %cond.true.129
  %cond156 = phi i32 [ %sub148, %cond.true.129 ], [ %add154, %cond.false.149 ]
  %div157 = sdiv i32 %cond156, 8
  %cmp158 = icmp slt i32 %conv121, %div157
  br i1 %cmp158, label %cond.true.211, label %lor.lhs.false.191

cond.false.160:                                   ; preds = %cond.false.114
  %23 = load i64, i64* %len, align 8
  %conv161 = trunc i64 %23 to i8
  %conv162 = sext i8 %conv161 to i32
  %add163 = add nsw i32 0, %conv162
  %mul164 = mul nsw i32 0, %add163
  %sub165 = sub nsw i32 %mul164, 1
  %cmp166 = icmp slt i32 %sub165, 0
  br i1 %cmp166, label %cond.true.168, label %cond.false.178

cond.true.168:                                    ; preds = %cond.false.160
  %24 = load i64, i64* %len, align 8
  %conv169 = trunc i64 %24 to i8
  %conv170 = sext i8 %conv169 to i32
  %add171 = add nsw i32 0, %conv170
  %mul172 = mul nsw i32 0, %add171
  %add173 = add nsw i32 %mul172, 1
  %shl174 = shl i32 %add173, 30
  %sub175 = sub nsw i32 %shl174, 1
  %mul176 = mul nsw i32 %sub175, 2
  %add177 = add nsw i32 %mul176, 1
  br label %cond.end.184

cond.false.178:                                   ; preds = %cond.false.160
  %25 = load i64, i64* %len, align 8
  %conv179 = trunc i64 %25 to i8
  %conv180 = sext i8 %conv179 to i32
  %add181 = add nsw i32 0, %conv180
  %mul182 = mul nsw i32 0, %add181
  %sub183 = sub nsw i32 %mul182, 1
  br label %cond.end.184

cond.end.184:                                     ; preds = %cond.false.178, %cond.true.168
  %cond185 = phi i32 [ %add177, %cond.true.168 ], [ %sub183, %cond.false.178 ]
  %div186 = sdiv i32 %cond185, 8
  %26 = load i64, i64* %len, align 8
  %conv187 = trunc i64 %26 to i8
  %conv188 = sext i8 %conv187 to i32
  %cmp189 = icmp slt i32 %div186, %conv188
  br i1 %cmp189, label %cond.true.211, label %lor.lhs.false.191

lor.lhs.false.191:                                ; preds = %cond.end.184, %cond.end.155, %cond.true.113, %cond.end.105, %cond.true.70, %cond.end.65
  %27 = load i64, i64* %len, align 8
  %conv192 = trunc i64 %27 to i8
  %conv193 = sext i8 %conv192 to i32
  %mul194 = mul nsw i32 %conv193, 8
  %mul195 = mul nsw i32 0, %mul194
  %sub196 = sub nsw i32 %mul195, 1
  %cmp197 = icmp slt i32 %sub196, 0
  br i1 %cmp197, label %land.lhs.true.199, label %lor.lhs.false.205

land.lhs.true.199:                                ; preds = %lor.lhs.false.191
  %28 = load i64, i64* %len, align 8
  %conv200 = trunc i64 %28 to i8
  %conv201 = sext i8 %conv200 to i32
  %mul202 = mul nsw i32 %conv201, 8
  %cmp203 = icmp slt i32 %mul202, -128
  br i1 %cmp203, label %cond.true.211, label %lor.lhs.false.205

lor.lhs.false.205:                                ; preds = %land.lhs.true.199, %lor.lhs.false.191
  %29 = load i64, i64* %len, align 8
  %conv206 = trunc i64 %29 to i8
  %conv207 = sext i8 %conv206 to i32
  %mul208 = mul nsw i32 %conv207, 8
  %cmp209 = icmp slt i32 127, %mul208
  br i1 %cmp209, label %cond.true.211, label %cond.false.234

cond.true.211:                                    ; preds = %lor.lhs.false.205, %land.lhs.true.199, %cond.end.184, %cond.end.155, %cond.true.113, %cond.end.105, %cond.true.70, %cond.end.65, %land.lhs.true
  %30 = load i64, i64* %len, align 8
  %conv212 = trunc i64 %30 to i8
  %conv213 = zext i8 %conv212 to i32
  %mul214 = mul nsw i32 %conv213, 8
  %cmp215 = icmp sle i32 %mul214, 127
  br i1 %cmp215, label %cond.true.217, label %cond.false.223

cond.true.217:                                    ; preds = %cond.true.211
  %31 = load i64, i64* %len, align 8
  %conv218 = trunc i64 %31 to i8
  %conv219 = zext i8 %conv218 to i32
  %mul220 = mul nsw i32 %conv219, 8
  %conv221 = trunc i32 %mul220 to i8
  %conv222 = sext i8 %conv221 to i32
  br label %cond.end.231

cond.false.223:                                   ; preds = %cond.true.211
  %32 = load i64, i64* %len, align 8
  %conv224 = trunc i64 %32 to i8
  %conv225 = zext i8 %conv224 to i32
  %mul226 = mul nsw i32 %conv225, 8
  %sub227 = sub nsw i32 %mul226, -128
  %conv228 = trunc i32 %sub227 to i8
  %conv229 = sext i8 %conv228 to i32
  %add230 = add nsw i32 %conv229, -128
  br label %cond.end.231

cond.end.231:                                     ; preds = %cond.false.223, %cond.true.217
  %cond232 = phi i32 [ %conv222, %cond.true.217 ], [ %add230, %cond.false.223 ]
  %conv233 = sext i32 %cond232 to i64
  store i64 %conv233, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then, label %lor.lhs.false.2161

cond.false.234:                                   ; preds = %lor.lhs.false.205
  %33 = load i64, i64* %len, align 8
  %conv235 = trunc i64 %33 to i8
  %conv236 = zext i8 %conv235 to i32
  %mul237 = mul nsw i32 %conv236, 8
  %cmp238 = icmp sle i32 %mul237, 127
  br i1 %cmp238, label %cond.true.240, label %cond.false.246

cond.true.240:                                    ; preds = %cond.false.234
  %34 = load i64, i64* %len, align 8
  %conv241 = trunc i64 %34 to i8
  %conv242 = zext i8 %conv241 to i32
  %mul243 = mul nsw i32 %conv242, 8
  %conv244 = trunc i32 %mul243 to i8
  %conv245 = sext i8 %conv244 to i32
  br label %cond.end.254

cond.false.246:                                   ; preds = %cond.false.234
  %35 = load i64, i64* %len, align 8
  %conv247 = trunc i64 %35 to i8
  %conv248 = zext i8 %conv247 to i32
  %mul249 = mul nsw i32 %conv248, 8
  %sub250 = sub nsw i32 %mul249, -128
  %conv251 = trunc i32 %sub250 to i8
  %conv252 = sext i8 %conv251 to i32
  %add253 = add nsw i32 %conv252, -128
  br label %cond.end.254

cond.end.254:                                     ; preds = %cond.false.246, %cond.true.240
  %cond255 = phi i32 [ %conv245, %cond.true.240 ], [ %add253, %cond.false.246 ]
  %conv256 = sext i32 %cond255 to i64
  store i64 %conv256, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then, label %lor.lhs.false.2161

cond.false.257:                                   ; preds = %cond.true
  %36 = load i64, i64* %len, align 8
  %add258 = add nsw i64 0, %36
  %mul259 = mul nsw i64 0, %add258
  %sub260 = sub nsw i64 %mul259, 1
  %cmp261 = icmp slt i64 %sub260, 0
  br i1 %cmp261, label %cond.true.263, label %cond.false.280

cond.true.263:                                    ; preds = %cond.false.257
  %37 = load i64, i64* %len, align 8
  %add264 = add nsw i64 0, %37
  %mul265 = mul nsw i64 0, %add264
  %add266 = add nsw i64 %mul265, 0
  %neg267 = xor i64 %add266, -1
  %cmp268 = icmp eq i64 %neg267, -1
  %conv269 = zext i1 %cmp268 to i32
  %sub270 = sub nsw i32 0, %conv269
  %conv271 = sext i32 %sub270 to i64
  %38 = load i64, i64* %len, align 8
  %add272 = add nsw i64 0, %38
  %mul273 = mul nsw i64 0, %add272
  %add274 = add nsw i64 %mul273, 1
  %shl275 = shl i64 %add274, 62
  %sub276 = sub nsw i64 %shl275, 1
  %mul277 = mul nsw i64 %sub276, 2
  %add278 = add nsw i64 %mul277, 1
  %sub279 = sub nsw i64 %conv271, %add278
  br label %cond.end.284

cond.false.280:                                   ; preds = %cond.false.257
  %39 = load i64, i64* %len, align 8
  %add281 = add nsw i64 0, %39
  %mul282 = mul nsw i64 0, %add281
  %add283 = add nsw i64 %mul282, 0
  br label %cond.end.284

cond.end.284:                                     ; preds = %cond.false.280, %cond.true.263
  %cond285 = phi i64 [ %sub279, %cond.true.263 ], [ %add283, %cond.false.280 ]
  %cmp286 = icmp eq i64 %cond285, 0
  br i1 %cmp286, label %land.lhs.true.288, label %lor.lhs.false.291

land.lhs.true.288:                                ; preds = %cond.end.284
  %40 = load i64, i64* %len, align 8
  %cmp289 = icmp slt i64 %40, 0
  br i1 %cmp289, label %cond.true.426, label %lor.lhs.false.291

lor.lhs.false.291:                                ; preds = %land.lhs.true.288, %cond.end.284
  br i1 false, label %cond.true.292, label %cond.false.352

cond.true.292:                                    ; preds = %lor.lhs.false.291
  %41 = load i64, i64* %len, align 8
  %cmp293 = icmp slt i64 %41, 0
  br i1 %cmp293, label %cond.true.295, label %cond.false.318

cond.true.295:                                    ; preds = %cond.true.292
  %42 = load i64, i64* %len, align 8
  %43 = load i64, i64* %len, align 8
  %add296 = add nsw i64 0, %43
  %mul297 = mul nsw i64 0, %add296
  %sub298 = sub nsw i64 %mul297, 1
  %cmp299 = icmp slt i64 %sub298, 0
  br i1 %cmp299, label %cond.true.301, label %cond.false.309

cond.true.301:                                    ; preds = %cond.true.295
  %44 = load i64, i64* %len, align 8
  %add302 = add nsw i64 0, %44
  %mul303 = mul nsw i64 0, %add302
  %add304 = add nsw i64 %mul303, 1
  %shl305 = shl i64 %add304, 62
  %sub306 = sub nsw i64 %shl305, 1
  %mul307 = mul nsw i64 %sub306, 2
  %add308 = add nsw i64 %mul307, 1
  br label %cond.end.313

cond.false.309:                                   ; preds = %cond.true.295
  %45 = load i64, i64* %len, align 8
  %add310 = add nsw i64 0, %45
  %mul311 = mul nsw i64 0, %add310
  %sub312 = sub nsw i64 %mul311, 1
  br label %cond.end.313

cond.end.313:                                     ; preds = %cond.false.309, %cond.true.301
  %cond314 = phi i64 [ %add308, %cond.true.301 ], [ %sub312, %cond.false.309 ]
  %div315 = sdiv i64 %cond314, 8
  %cmp316 = icmp slt i64 %42, %div315
  br i1 %cmp316, label %cond.true.426, label %lor.lhs.false.412

cond.false.318:                                   ; preds = %cond.true.292
  br i1 false, label %cond.true.319, label %cond.false.320

cond.true.319:                                    ; preds = %cond.false.318
  br i1 false, label %cond.true.426, label %lor.lhs.false.412

cond.false.320:                                   ; preds = %cond.false.318
  %46 = load i64, i64* %len, align 8
  %add321 = add nsw i64 0, %46
  %mul322 = mul nsw i64 0, %add321
  %sub323 = sub nsw i64 %mul322, 1
  %cmp324 = icmp slt i64 %sub323, 0
  br i1 %cmp324, label %cond.true.326, label %cond.false.343

cond.true.326:                                    ; preds = %cond.false.320
  %47 = load i64, i64* %len, align 8
  %add327 = add nsw i64 0, %47
  %mul328 = mul nsw i64 0, %add327
  %add329 = add nsw i64 %mul328, 0
  %neg330 = xor i64 %add329, -1
  %cmp331 = icmp eq i64 %neg330, -1
  %conv332 = zext i1 %cmp331 to i32
  %sub333 = sub nsw i32 0, %conv332
  %conv334 = sext i32 %sub333 to i64
  %48 = load i64, i64* %len, align 8
  %add335 = add nsw i64 0, %48
  %mul336 = mul nsw i64 0, %add335
  %add337 = add nsw i64 %mul336, 1
  %shl338 = shl i64 %add337, 62
  %sub339 = sub nsw i64 %shl338, 1
  %mul340 = mul nsw i64 %sub339, 2
  %add341 = add nsw i64 %mul340, 1
  %sub342 = sub nsw i64 %conv334, %add341
  br label %cond.end.347

cond.false.343:                                   ; preds = %cond.false.320
  %49 = load i64, i64* %len, align 8
  %add344 = add nsw i64 0, %49
  %mul345 = mul nsw i64 0, %add344
  %add346 = add nsw i64 %mul345, 0
  br label %cond.end.347

cond.end.347:                                     ; preds = %cond.false.343, %cond.true.326
  %cond348 = phi i64 [ %sub342, %cond.true.326 ], [ %add346, %cond.false.343 ]
  %div349 = sdiv i64 %cond348, 8
  %50 = load i64, i64* %len, align 8
  %cmp350 = icmp slt i64 %div349, %50
  br i1 %cmp350, label %cond.true.426, label %lor.lhs.false.412

cond.false.352:                                   ; preds = %lor.lhs.false.291
  br i1 false, label %cond.true.353, label %cond.false.354

cond.true.353:                                    ; preds = %cond.false.352
  br i1 false, label %cond.true.426, label %lor.lhs.false.412

cond.false.354:                                   ; preds = %cond.false.352
  %51 = load i64, i64* %len, align 8
  %cmp355 = icmp slt i64 %51, 0
  br i1 %cmp355, label %cond.true.357, label %cond.false.389

cond.true.357:                                    ; preds = %cond.false.354
  %52 = load i64, i64* %len, align 8
  %53 = load i64, i64* %len, align 8
  %add358 = add nsw i64 0, %53
  %mul359 = mul nsw i64 0, %add358
  %sub360 = sub nsw i64 %mul359, 1
  %cmp361 = icmp slt i64 %sub360, 0
  br i1 %cmp361, label %cond.true.363, label %cond.false.380

cond.true.363:                                    ; preds = %cond.true.357
  %54 = load i64, i64* %len, align 8
  %add364 = add nsw i64 0, %54
  %mul365 = mul nsw i64 0, %add364
  %add366 = add nsw i64 %mul365, 0
  %neg367 = xor i64 %add366, -1
  %cmp368 = icmp eq i64 %neg367, -1
  %conv369 = zext i1 %cmp368 to i32
  %sub370 = sub nsw i32 0, %conv369
  %conv371 = sext i32 %sub370 to i64
  %55 = load i64, i64* %len, align 8
  %add372 = add nsw i64 0, %55
  %mul373 = mul nsw i64 0, %add372
  %add374 = add nsw i64 %mul373, 1
  %shl375 = shl i64 %add374, 62
  %sub376 = sub nsw i64 %shl375, 1
  %mul377 = mul nsw i64 %sub376, 2
  %add378 = add nsw i64 %mul377, 1
  %sub379 = sub nsw i64 %conv371, %add378
  br label %cond.end.384

cond.false.380:                                   ; preds = %cond.true.357
  %56 = load i64, i64* %len, align 8
  %add381 = add nsw i64 0, %56
  %mul382 = mul nsw i64 0, %add381
  %add383 = add nsw i64 %mul382, 0
  br label %cond.end.384

cond.end.384:                                     ; preds = %cond.false.380, %cond.true.363
  %cond385 = phi i64 [ %sub379, %cond.true.363 ], [ %add383, %cond.false.380 ]
  %div386 = sdiv i64 %cond385, 8
  %cmp387 = icmp slt i64 %52, %div386
  br i1 %cmp387, label %cond.true.426, label %lor.lhs.false.412

cond.false.389:                                   ; preds = %cond.false.354
  %57 = load i64, i64* %len, align 8
  %add390 = add nsw i64 0, %57
  %mul391 = mul nsw i64 0, %add390
  %sub392 = sub nsw i64 %mul391, 1
  %cmp393 = icmp slt i64 %sub392, 0
  br i1 %cmp393, label %cond.true.395, label %cond.false.403

cond.true.395:                                    ; preds = %cond.false.389
  %58 = load i64, i64* %len, align 8
  %add396 = add nsw i64 0, %58
  %mul397 = mul nsw i64 0, %add396
  %add398 = add nsw i64 %mul397, 1
  %shl399 = shl i64 %add398, 62
  %sub400 = sub nsw i64 %shl399, 1
  %mul401 = mul nsw i64 %sub400, 2
  %add402 = add nsw i64 %mul401, 1
  br label %cond.end.407

cond.false.403:                                   ; preds = %cond.false.389
  %59 = load i64, i64* %len, align 8
  %add404 = add nsw i64 0, %59
  %mul405 = mul nsw i64 0, %add404
  %sub406 = sub nsw i64 %mul405, 1
  br label %cond.end.407

cond.end.407:                                     ; preds = %cond.false.403, %cond.true.395
  %cond408 = phi i64 [ %add402, %cond.true.395 ], [ %sub406, %cond.false.403 ]
  %div409 = sdiv i64 %cond408, 8
  %60 = load i64, i64* %len, align 8
  %cmp410 = icmp slt i64 %div409, %60
  br i1 %cmp410, label %cond.true.426, label %lor.lhs.false.412

lor.lhs.false.412:                                ; preds = %cond.end.407, %cond.end.384, %cond.true.353, %cond.end.347, %cond.true.319, %cond.end.313
  %61 = load i64, i64* %len, align 8
  %mul413 = mul nsw i64 %61, 8
  %mul414 = mul nsw i64 0, %mul413
  %sub415 = sub nsw i64 %mul414, 1
  %cmp416 = icmp slt i64 %sub415, 0
  br i1 %cmp416, label %land.lhs.true.418, label %lor.lhs.false.422

land.lhs.true.418:                                ; preds = %lor.lhs.false.412
  %62 = load i64, i64* %len, align 8
  %mul419 = mul nsw i64 %62, 8
  %cmp420 = icmp slt i64 %mul419, -128
  br i1 %cmp420, label %cond.true.426, label %lor.lhs.false.422

lor.lhs.false.422:                                ; preds = %land.lhs.true.418, %lor.lhs.false.412
  %63 = load i64, i64* %len, align 8
  %mul423 = mul nsw i64 %63, 8
  %cmp424 = icmp slt i64 127, %mul423
  br i1 %cmp424, label %cond.true.426, label %cond.false.449

cond.true.426:                                    ; preds = %lor.lhs.false.422, %land.lhs.true.418, %cond.end.407, %cond.end.384, %cond.true.353, %cond.end.347, %cond.true.319, %cond.end.313, %land.lhs.true.288
  %64 = load i64, i64* %len, align 8
  %conv427 = trunc i64 %64 to i8
  %conv428 = zext i8 %conv427 to i32
  %mul429 = mul nsw i32 %conv428, 8
  %cmp430 = icmp sle i32 %mul429, 127
  br i1 %cmp430, label %cond.true.432, label %cond.false.438

cond.true.432:                                    ; preds = %cond.true.426
  %65 = load i64, i64* %len, align 8
  %conv433 = trunc i64 %65 to i8
  %conv434 = zext i8 %conv433 to i32
  %mul435 = mul nsw i32 %conv434, 8
  %conv436 = trunc i32 %mul435 to i8
  %conv437 = sext i8 %conv436 to i32
  br label %cond.end.446

cond.false.438:                                   ; preds = %cond.true.426
  %66 = load i64, i64* %len, align 8
  %conv439 = trunc i64 %66 to i8
  %conv440 = zext i8 %conv439 to i32
  %mul441 = mul nsw i32 %conv440, 8
  %sub442 = sub nsw i32 %mul441, -128
  %conv443 = trunc i32 %sub442 to i8
  %conv444 = sext i8 %conv443 to i32
  %add445 = add nsw i32 %conv444, -128
  br label %cond.end.446

cond.end.446:                                     ; preds = %cond.false.438, %cond.true.432
  %cond447 = phi i32 [ %conv437, %cond.true.432 ], [ %add445, %cond.false.438 ]
  %conv448 = sext i32 %cond447 to i64
  store i64 %conv448, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then, label %lor.lhs.false.2161

cond.false.449:                                   ; preds = %lor.lhs.false.422
  %67 = load i64, i64* %len, align 8
  %conv450 = trunc i64 %67 to i8
  %conv451 = zext i8 %conv450 to i32
  %mul452 = mul nsw i32 %conv451, 8
  %cmp453 = icmp sle i32 %mul452, 127
  br i1 %cmp453, label %cond.true.455, label %cond.false.461

cond.true.455:                                    ; preds = %cond.false.449
  %68 = load i64, i64* %len, align 8
  %conv456 = trunc i64 %68 to i8
  %conv457 = zext i8 %conv456 to i32
  %mul458 = mul nsw i32 %conv457, 8
  %conv459 = trunc i32 %mul458 to i8
  %conv460 = sext i8 %conv459 to i32
  br label %cond.end.469

cond.false.461:                                   ; preds = %cond.false.449
  %69 = load i64, i64* %len, align 8
  %conv462 = trunc i64 %69 to i8
  %conv463 = zext i8 %conv462 to i32
  %mul464 = mul nsw i32 %conv463, 8
  %sub465 = sub nsw i32 %mul464, -128
  %conv466 = trunc i32 %sub465 to i8
  %conv467 = sext i8 %conv466 to i32
  %add468 = add nsw i32 %conv467, -128
  br label %cond.end.469

cond.end.469:                                     ; preds = %cond.false.461, %cond.true.455
  %cond470 = phi i32 [ %conv460, %cond.true.455 ], [ %add468, %cond.false.461 ]
  %conv471 = sext i32 %cond470 to i64
  store i64 %conv471, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then, label %lor.lhs.false.2161

cond.false.472:                                   ; preds = %do.body
  br i1 false, label %cond.true.473, label %cond.false.957

cond.true.473:                                    ; preds = %cond.false.472
  br i1 false, label %cond.true.474, label %cond.false.742

cond.true.474:                                    ; preds = %cond.true.473
  %70 = load i64, i64* %len, align 8
  %conv475 = trunc i64 %70 to i16
  %conv476 = sext i16 %conv475 to i32
  %add477 = add nsw i32 0, %conv476
  %mul478 = mul nsw i32 0, %add477
  %sub479 = sub nsw i32 %mul478, 1
  %cmp480 = icmp slt i32 %sub479, 0
  br i1 %cmp480, label %cond.true.482, label %cond.false.502

cond.true.482:                                    ; preds = %cond.true.474
  %71 = load i64, i64* %len, align 8
  %conv483 = trunc i64 %71 to i16
  %conv484 = sext i16 %conv483 to i32
  %add485 = add nsw i32 0, %conv484
  %mul486 = mul nsw i32 0, %add485
  %add487 = add nsw i32 %mul486, 0
  %neg488 = xor i32 %add487, -1
  %cmp489 = icmp eq i32 %neg488, -1
  %conv490 = zext i1 %cmp489 to i32
  %sub491 = sub nsw i32 0, %conv490
  %72 = load i64, i64* %len, align 8
  %conv492 = trunc i64 %72 to i16
  %conv493 = sext i16 %conv492 to i32
  %add494 = add nsw i32 0, %conv493
  %mul495 = mul nsw i32 0, %add494
  %add496 = add nsw i32 %mul495, 1
  %shl497 = shl i32 %add496, 30
  %sub498 = sub nsw i32 %shl497, 1
  %mul499 = mul nsw i32 %sub498, 2
  %add500 = add nsw i32 %mul499, 1
  %sub501 = sub nsw i32 %sub491, %add500
  br label %cond.end.508

cond.false.502:                                   ; preds = %cond.true.474
  %73 = load i64, i64* %len, align 8
  %conv503 = trunc i64 %73 to i16
  %conv504 = sext i16 %conv503 to i32
  %add505 = add nsw i32 0, %conv504
  %mul506 = mul nsw i32 0, %add505
  %add507 = add nsw i32 %mul506, 0
  br label %cond.end.508

cond.end.508:                                     ; preds = %cond.false.502, %cond.true.482
  %cond509 = phi i32 [ %sub501, %cond.true.482 ], [ %add507, %cond.false.502 ]
  %cmp510 = icmp eq i32 %cond509, 0
  br i1 %cmp510, label %land.lhs.true.512, label %lor.lhs.false.517

land.lhs.true.512:                                ; preds = %cond.end.508
  %74 = load i64, i64* %len, align 8
  %conv513 = trunc i64 %74 to i16
  %conv514 = sext i16 %conv513 to i32
  %cmp515 = icmp slt i32 %conv514, 0
  br i1 %cmp515, label %cond.true.696, label %lor.lhs.false.517

lor.lhs.false.517:                                ; preds = %land.lhs.true.512, %cond.end.508
  br i1 false, label %cond.true.518, label %cond.false.597

cond.true.518:                                    ; preds = %lor.lhs.false.517
  %75 = load i64, i64* %len, align 8
  %conv519 = trunc i64 %75 to i16
  %conv520 = sext i16 %conv519 to i32
  %cmp521 = icmp slt i32 %conv520, 0
  br i1 %cmp521, label %cond.true.523, label %cond.false.554

cond.true.523:                                    ; preds = %cond.true.518
  %76 = load i64, i64* %len, align 8
  %conv524 = trunc i64 %76 to i16
  %conv525 = sext i16 %conv524 to i32
  %77 = load i64, i64* %len, align 8
  %conv526 = trunc i64 %77 to i16
  %conv527 = sext i16 %conv526 to i32
  %add528 = add nsw i32 0, %conv527
  %mul529 = mul nsw i32 0, %add528
  %sub530 = sub nsw i32 %mul529, 1
  %cmp531 = icmp slt i32 %sub530, 0
  br i1 %cmp531, label %cond.true.533, label %cond.false.543

cond.true.533:                                    ; preds = %cond.true.523
  %78 = load i64, i64* %len, align 8
  %conv534 = trunc i64 %78 to i16
  %conv535 = sext i16 %conv534 to i32
  %add536 = add nsw i32 0, %conv535
  %mul537 = mul nsw i32 0, %add536
  %add538 = add nsw i32 %mul537, 1
  %shl539 = shl i32 %add538, 30
  %sub540 = sub nsw i32 %shl539, 1
  %mul541 = mul nsw i32 %sub540, 2
  %add542 = add nsw i32 %mul541, 1
  br label %cond.end.549

cond.false.543:                                   ; preds = %cond.true.523
  %79 = load i64, i64* %len, align 8
  %conv544 = trunc i64 %79 to i16
  %conv545 = sext i16 %conv544 to i32
  %add546 = add nsw i32 0, %conv545
  %mul547 = mul nsw i32 0, %add546
  %sub548 = sub nsw i32 %mul547, 1
  br label %cond.end.549

cond.end.549:                                     ; preds = %cond.false.543, %cond.true.533
  %cond550 = phi i32 [ %add542, %cond.true.533 ], [ %sub548, %cond.false.543 ]
  %div551 = sdiv i32 %cond550, 8
  %cmp552 = icmp slt i32 %conv525, %div551
  br i1 %cmp552, label %cond.true.696, label %lor.lhs.false.676

cond.false.554:                                   ; preds = %cond.true.518
  br i1 false, label %cond.true.555, label %cond.false.556

cond.true.555:                                    ; preds = %cond.false.554
  br i1 false, label %cond.true.696, label %lor.lhs.false.676

cond.false.556:                                   ; preds = %cond.false.554
  %80 = load i64, i64* %len, align 8
  %conv557 = trunc i64 %80 to i16
  %conv558 = sext i16 %conv557 to i32
  %add559 = add nsw i32 0, %conv558
  %mul560 = mul nsw i32 0, %add559
  %sub561 = sub nsw i32 %mul560, 1
  %cmp562 = icmp slt i32 %sub561, 0
  br i1 %cmp562, label %cond.true.564, label %cond.false.584

cond.true.564:                                    ; preds = %cond.false.556
  %81 = load i64, i64* %len, align 8
  %conv565 = trunc i64 %81 to i16
  %conv566 = sext i16 %conv565 to i32
  %add567 = add nsw i32 0, %conv566
  %mul568 = mul nsw i32 0, %add567
  %add569 = add nsw i32 %mul568, 0
  %neg570 = xor i32 %add569, -1
  %cmp571 = icmp eq i32 %neg570, -1
  %conv572 = zext i1 %cmp571 to i32
  %sub573 = sub nsw i32 0, %conv572
  %82 = load i64, i64* %len, align 8
  %conv574 = trunc i64 %82 to i16
  %conv575 = sext i16 %conv574 to i32
  %add576 = add nsw i32 0, %conv575
  %mul577 = mul nsw i32 0, %add576
  %add578 = add nsw i32 %mul577, 1
  %shl579 = shl i32 %add578, 30
  %sub580 = sub nsw i32 %shl579, 1
  %mul581 = mul nsw i32 %sub580, 2
  %add582 = add nsw i32 %mul581, 1
  %sub583 = sub nsw i32 %sub573, %add582
  br label %cond.end.590

cond.false.584:                                   ; preds = %cond.false.556
  %83 = load i64, i64* %len, align 8
  %conv585 = trunc i64 %83 to i16
  %conv586 = sext i16 %conv585 to i32
  %add587 = add nsw i32 0, %conv586
  %mul588 = mul nsw i32 0, %add587
  %add589 = add nsw i32 %mul588, 0
  br label %cond.end.590

cond.end.590:                                     ; preds = %cond.false.584, %cond.true.564
  %cond591 = phi i32 [ %sub583, %cond.true.564 ], [ %add589, %cond.false.584 ]
  %div592 = sdiv i32 %cond591, 8
  %84 = load i64, i64* %len, align 8
  %conv593 = trunc i64 %84 to i16
  %conv594 = sext i16 %conv593 to i32
  %cmp595 = icmp slt i32 %div592, %conv594
  br i1 %cmp595, label %cond.true.696, label %lor.lhs.false.676

cond.false.597:                                   ; preds = %lor.lhs.false.517
  br i1 false, label %cond.true.598, label %cond.false.599

cond.true.598:                                    ; preds = %cond.false.597
  br i1 false, label %cond.true.696, label %lor.lhs.false.676

cond.false.599:                                   ; preds = %cond.false.597
  %85 = load i64, i64* %len, align 8
  %conv600 = trunc i64 %85 to i16
  %conv601 = sext i16 %conv600 to i32
  %cmp602 = icmp slt i32 %conv601, 0
  br i1 %cmp602, label %cond.true.604, label %cond.false.645

cond.true.604:                                    ; preds = %cond.false.599
  %86 = load i64, i64* %len, align 8
  %conv605 = trunc i64 %86 to i16
  %conv606 = sext i16 %conv605 to i32
  %87 = load i64, i64* %len, align 8
  %conv607 = trunc i64 %87 to i16
  %conv608 = sext i16 %conv607 to i32
  %add609 = add nsw i32 0, %conv608
  %mul610 = mul nsw i32 0, %add609
  %sub611 = sub nsw i32 %mul610, 1
  %cmp612 = icmp slt i32 %sub611, 0
  br i1 %cmp612, label %cond.true.614, label %cond.false.634

cond.true.614:                                    ; preds = %cond.true.604
  %88 = load i64, i64* %len, align 8
  %conv615 = trunc i64 %88 to i16
  %conv616 = sext i16 %conv615 to i32
  %add617 = add nsw i32 0, %conv616
  %mul618 = mul nsw i32 0, %add617
  %add619 = add nsw i32 %mul618, 0
  %neg620 = xor i32 %add619, -1
  %cmp621 = icmp eq i32 %neg620, -1
  %conv622 = zext i1 %cmp621 to i32
  %sub623 = sub nsw i32 0, %conv622
  %89 = load i64, i64* %len, align 8
  %conv624 = trunc i64 %89 to i16
  %conv625 = sext i16 %conv624 to i32
  %add626 = add nsw i32 0, %conv625
  %mul627 = mul nsw i32 0, %add626
  %add628 = add nsw i32 %mul627, 1
  %shl629 = shl i32 %add628, 30
  %sub630 = sub nsw i32 %shl629, 1
  %mul631 = mul nsw i32 %sub630, 2
  %add632 = add nsw i32 %mul631, 1
  %sub633 = sub nsw i32 %sub623, %add632
  br label %cond.end.640

cond.false.634:                                   ; preds = %cond.true.604
  %90 = load i64, i64* %len, align 8
  %conv635 = trunc i64 %90 to i16
  %conv636 = sext i16 %conv635 to i32
  %add637 = add nsw i32 0, %conv636
  %mul638 = mul nsw i32 0, %add637
  %add639 = add nsw i32 %mul638, 0
  br label %cond.end.640

cond.end.640:                                     ; preds = %cond.false.634, %cond.true.614
  %cond641 = phi i32 [ %sub633, %cond.true.614 ], [ %add639, %cond.false.634 ]
  %div642 = sdiv i32 %cond641, 8
  %cmp643 = icmp slt i32 %conv606, %div642
  br i1 %cmp643, label %cond.true.696, label %lor.lhs.false.676

cond.false.645:                                   ; preds = %cond.false.599
  %91 = load i64, i64* %len, align 8
  %conv646 = trunc i64 %91 to i16
  %conv647 = sext i16 %conv646 to i32
  %add648 = add nsw i32 0, %conv647
  %mul649 = mul nsw i32 0, %add648
  %sub650 = sub nsw i32 %mul649, 1
  %cmp651 = icmp slt i32 %sub650, 0
  br i1 %cmp651, label %cond.true.653, label %cond.false.663

cond.true.653:                                    ; preds = %cond.false.645
  %92 = load i64, i64* %len, align 8
  %conv654 = trunc i64 %92 to i16
  %conv655 = sext i16 %conv654 to i32
  %add656 = add nsw i32 0, %conv655
  %mul657 = mul nsw i32 0, %add656
  %add658 = add nsw i32 %mul657, 1
  %shl659 = shl i32 %add658, 30
  %sub660 = sub nsw i32 %shl659, 1
  %mul661 = mul nsw i32 %sub660, 2
  %add662 = add nsw i32 %mul661, 1
  br label %cond.end.669

cond.false.663:                                   ; preds = %cond.false.645
  %93 = load i64, i64* %len, align 8
  %conv664 = trunc i64 %93 to i16
  %conv665 = sext i16 %conv664 to i32
  %add666 = add nsw i32 0, %conv665
  %mul667 = mul nsw i32 0, %add666
  %sub668 = sub nsw i32 %mul667, 1
  br label %cond.end.669

cond.end.669:                                     ; preds = %cond.false.663, %cond.true.653
  %cond670 = phi i32 [ %add662, %cond.true.653 ], [ %sub668, %cond.false.663 ]
  %div671 = sdiv i32 %cond670, 8
  %94 = load i64, i64* %len, align 8
  %conv672 = trunc i64 %94 to i16
  %conv673 = sext i16 %conv672 to i32
  %cmp674 = icmp slt i32 %div671, %conv673
  br i1 %cmp674, label %cond.true.696, label %lor.lhs.false.676

lor.lhs.false.676:                                ; preds = %cond.end.669, %cond.end.640, %cond.true.598, %cond.end.590, %cond.true.555, %cond.end.549
  %95 = load i64, i64* %len, align 8
  %conv677 = trunc i64 %95 to i16
  %conv678 = sext i16 %conv677 to i32
  %mul679 = mul nsw i32 %conv678, 8
  %mul680 = mul nsw i32 0, %mul679
  %sub681 = sub nsw i32 %mul680, 1
  %cmp682 = icmp slt i32 %sub681, 0
  br i1 %cmp682, label %land.lhs.true.684, label %lor.lhs.false.690

land.lhs.true.684:                                ; preds = %lor.lhs.false.676
  %96 = load i64, i64* %len, align 8
  %conv685 = trunc i64 %96 to i16
  %conv686 = sext i16 %conv685 to i32
  %mul687 = mul nsw i32 %conv686, 8
  %cmp688 = icmp slt i32 %mul687, -32768
  br i1 %cmp688, label %cond.true.696, label %lor.lhs.false.690

lor.lhs.false.690:                                ; preds = %land.lhs.true.684, %lor.lhs.false.676
  %97 = load i64, i64* %len, align 8
  %conv691 = trunc i64 %97 to i16
  %conv692 = sext i16 %conv691 to i32
  %mul693 = mul nsw i32 %conv692, 8
  %cmp694 = icmp slt i32 32767, %mul693
  br i1 %cmp694, label %cond.true.696, label %cond.false.719

cond.true.696:                                    ; preds = %lor.lhs.false.690, %land.lhs.true.684, %cond.end.669, %cond.end.640, %cond.true.598, %cond.end.590, %cond.true.555, %cond.end.549, %land.lhs.true.512
  %98 = load i64, i64* %len, align 8
  %conv697 = trunc i64 %98 to i16
  %conv698 = zext i16 %conv697 to i32
  %mul699 = mul nsw i32 %conv698, 8
  %cmp700 = icmp sle i32 %mul699, 32767
  br i1 %cmp700, label %cond.true.702, label %cond.false.708

cond.true.702:                                    ; preds = %cond.true.696
  %99 = load i64, i64* %len, align 8
  %conv703 = trunc i64 %99 to i16
  %conv704 = zext i16 %conv703 to i32
  %mul705 = mul nsw i32 %conv704, 8
  %conv706 = trunc i32 %mul705 to i16
  %conv707 = sext i16 %conv706 to i32
  br label %cond.end.716

cond.false.708:                                   ; preds = %cond.true.696
  %100 = load i64, i64* %len, align 8
  %conv709 = trunc i64 %100 to i16
  %conv710 = zext i16 %conv709 to i32
  %mul711 = mul nsw i32 %conv710, 8
  %sub712 = sub nsw i32 %mul711, -32768
  %conv713 = trunc i32 %sub712 to i16
  %conv714 = sext i16 %conv713 to i32
  %add715 = add nsw i32 %conv714, -32768
  br label %cond.end.716

cond.end.716:                                     ; preds = %cond.false.708, %cond.true.702
  %cond717 = phi i32 [ %conv707, %cond.true.702 ], [ %add715, %cond.false.708 ]
  %conv718 = sext i32 %cond717 to i64
  store i64 %conv718, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then, label %lor.lhs.false.2161

cond.false.719:                                   ; preds = %lor.lhs.false.690
  %101 = load i64, i64* %len, align 8
  %conv720 = trunc i64 %101 to i16
  %conv721 = zext i16 %conv720 to i32
  %mul722 = mul nsw i32 %conv721, 8
  %cmp723 = icmp sle i32 %mul722, 32767
  br i1 %cmp723, label %cond.true.725, label %cond.false.731

cond.true.725:                                    ; preds = %cond.false.719
  %102 = load i64, i64* %len, align 8
  %conv726 = trunc i64 %102 to i16
  %conv727 = zext i16 %conv726 to i32
  %mul728 = mul nsw i32 %conv727, 8
  %conv729 = trunc i32 %mul728 to i16
  %conv730 = sext i16 %conv729 to i32
  br label %cond.end.739

cond.false.731:                                   ; preds = %cond.false.719
  %103 = load i64, i64* %len, align 8
  %conv732 = trunc i64 %103 to i16
  %conv733 = zext i16 %conv732 to i32
  %mul734 = mul nsw i32 %conv733, 8
  %sub735 = sub nsw i32 %mul734, -32768
  %conv736 = trunc i32 %sub735 to i16
  %conv737 = sext i16 %conv736 to i32
  %add738 = add nsw i32 %conv737, -32768
  br label %cond.end.739

cond.end.739:                                     ; preds = %cond.false.731, %cond.true.725
  %cond740 = phi i32 [ %conv730, %cond.true.725 ], [ %add738, %cond.false.731 ]
  %conv741 = sext i32 %cond740 to i64
  store i64 %conv741, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then, label %lor.lhs.false.2161

cond.false.742:                                   ; preds = %cond.true.473
  %104 = load i64, i64* %len, align 8
  %add743 = add nsw i64 0, %104
  %mul744 = mul nsw i64 0, %add743
  %sub745 = sub nsw i64 %mul744, 1
  %cmp746 = icmp slt i64 %sub745, 0
  br i1 %cmp746, label %cond.true.748, label %cond.false.765

cond.true.748:                                    ; preds = %cond.false.742
  %105 = load i64, i64* %len, align 8
  %add749 = add nsw i64 0, %105
  %mul750 = mul nsw i64 0, %add749
  %add751 = add nsw i64 %mul750, 0
  %neg752 = xor i64 %add751, -1
  %cmp753 = icmp eq i64 %neg752, -1
  %conv754 = zext i1 %cmp753 to i32
  %sub755 = sub nsw i32 0, %conv754
  %conv756 = sext i32 %sub755 to i64
  %106 = load i64, i64* %len, align 8
  %add757 = add nsw i64 0, %106
  %mul758 = mul nsw i64 0, %add757
  %add759 = add nsw i64 %mul758, 1
  %shl760 = shl i64 %add759, 62
  %sub761 = sub nsw i64 %shl760, 1
  %mul762 = mul nsw i64 %sub761, 2
  %add763 = add nsw i64 %mul762, 1
  %sub764 = sub nsw i64 %conv756, %add763
  br label %cond.end.769

cond.false.765:                                   ; preds = %cond.false.742
  %107 = load i64, i64* %len, align 8
  %add766 = add nsw i64 0, %107
  %mul767 = mul nsw i64 0, %add766
  %add768 = add nsw i64 %mul767, 0
  br label %cond.end.769

cond.end.769:                                     ; preds = %cond.false.765, %cond.true.748
  %cond770 = phi i64 [ %sub764, %cond.true.748 ], [ %add768, %cond.false.765 ]
  %cmp771 = icmp eq i64 %cond770, 0
  br i1 %cmp771, label %land.lhs.true.773, label %lor.lhs.false.776

land.lhs.true.773:                                ; preds = %cond.end.769
  %108 = load i64, i64* %len, align 8
  %cmp774 = icmp slt i64 %108, 0
  br i1 %cmp774, label %cond.true.911, label %lor.lhs.false.776

lor.lhs.false.776:                                ; preds = %land.lhs.true.773, %cond.end.769
  br i1 false, label %cond.true.777, label %cond.false.837

cond.true.777:                                    ; preds = %lor.lhs.false.776
  %109 = load i64, i64* %len, align 8
  %cmp778 = icmp slt i64 %109, 0
  br i1 %cmp778, label %cond.true.780, label %cond.false.803

cond.true.780:                                    ; preds = %cond.true.777
  %110 = load i64, i64* %len, align 8
  %111 = load i64, i64* %len, align 8
  %add781 = add nsw i64 0, %111
  %mul782 = mul nsw i64 0, %add781
  %sub783 = sub nsw i64 %mul782, 1
  %cmp784 = icmp slt i64 %sub783, 0
  br i1 %cmp784, label %cond.true.786, label %cond.false.794

cond.true.786:                                    ; preds = %cond.true.780
  %112 = load i64, i64* %len, align 8
  %add787 = add nsw i64 0, %112
  %mul788 = mul nsw i64 0, %add787
  %add789 = add nsw i64 %mul788, 1
  %shl790 = shl i64 %add789, 62
  %sub791 = sub nsw i64 %shl790, 1
  %mul792 = mul nsw i64 %sub791, 2
  %add793 = add nsw i64 %mul792, 1
  br label %cond.end.798

cond.false.794:                                   ; preds = %cond.true.780
  %113 = load i64, i64* %len, align 8
  %add795 = add nsw i64 0, %113
  %mul796 = mul nsw i64 0, %add795
  %sub797 = sub nsw i64 %mul796, 1
  br label %cond.end.798

cond.end.798:                                     ; preds = %cond.false.794, %cond.true.786
  %cond799 = phi i64 [ %add793, %cond.true.786 ], [ %sub797, %cond.false.794 ]
  %div800 = sdiv i64 %cond799, 8
  %cmp801 = icmp slt i64 %110, %div800
  br i1 %cmp801, label %cond.true.911, label %lor.lhs.false.897

cond.false.803:                                   ; preds = %cond.true.777
  br i1 false, label %cond.true.804, label %cond.false.805

cond.true.804:                                    ; preds = %cond.false.803
  br i1 false, label %cond.true.911, label %lor.lhs.false.897

cond.false.805:                                   ; preds = %cond.false.803
  %114 = load i64, i64* %len, align 8
  %add806 = add nsw i64 0, %114
  %mul807 = mul nsw i64 0, %add806
  %sub808 = sub nsw i64 %mul807, 1
  %cmp809 = icmp slt i64 %sub808, 0
  br i1 %cmp809, label %cond.true.811, label %cond.false.828

cond.true.811:                                    ; preds = %cond.false.805
  %115 = load i64, i64* %len, align 8
  %add812 = add nsw i64 0, %115
  %mul813 = mul nsw i64 0, %add812
  %add814 = add nsw i64 %mul813, 0
  %neg815 = xor i64 %add814, -1
  %cmp816 = icmp eq i64 %neg815, -1
  %conv817 = zext i1 %cmp816 to i32
  %sub818 = sub nsw i32 0, %conv817
  %conv819 = sext i32 %sub818 to i64
  %116 = load i64, i64* %len, align 8
  %add820 = add nsw i64 0, %116
  %mul821 = mul nsw i64 0, %add820
  %add822 = add nsw i64 %mul821, 1
  %shl823 = shl i64 %add822, 62
  %sub824 = sub nsw i64 %shl823, 1
  %mul825 = mul nsw i64 %sub824, 2
  %add826 = add nsw i64 %mul825, 1
  %sub827 = sub nsw i64 %conv819, %add826
  br label %cond.end.832

cond.false.828:                                   ; preds = %cond.false.805
  %117 = load i64, i64* %len, align 8
  %add829 = add nsw i64 0, %117
  %mul830 = mul nsw i64 0, %add829
  %add831 = add nsw i64 %mul830, 0
  br label %cond.end.832

cond.end.832:                                     ; preds = %cond.false.828, %cond.true.811
  %cond833 = phi i64 [ %sub827, %cond.true.811 ], [ %add831, %cond.false.828 ]
  %div834 = sdiv i64 %cond833, 8
  %118 = load i64, i64* %len, align 8
  %cmp835 = icmp slt i64 %div834, %118
  br i1 %cmp835, label %cond.true.911, label %lor.lhs.false.897

cond.false.837:                                   ; preds = %lor.lhs.false.776
  br i1 false, label %cond.true.838, label %cond.false.839

cond.true.838:                                    ; preds = %cond.false.837
  br i1 false, label %cond.true.911, label %lor.lhs.false.897

cond.false.839:                                   ; preds = %cond.false.837
  %119 = load i64, i64* %len, align 8
  %cmp840 = icmp slt i64 %119, 0
  br i1 %cmp840, label %cond.true.842, label %cond.false.874

cond.true.842:                                    ; preds = %cond.false.839
  %120 = load i64, i64* %len, align 8
  %121 = load i64, i64* %len, align 8
  %add843 = add nsw i64 0, %121
  %mul844 = mul nsw i64 0, %add843
  %sub845 = sub nsw i64 %mul844, 1
  %cmp846 = icmp slt i64 %sub845, 0
  br i1 %cmp846, label %cond.true.848, label %cond.false.865

cond.true.848:                                    ; preds = %cond.true.842
  %122 = load i64, i64* %len, align 8
  %add849 = add nsw i64 0, %122
  %mul850 = mul nsw i64 0, %add849
  %add851 = add nsw i64 %mul850, 0
  %neg852 = xor i64 %add851, -1
  %cmp853 = icmp eq i64 %neg852, -1
  %conv854 = zext i1 %cmp853 to i32
  %sub855 = sub nsw i32 0, %conv854
  %conv856 = sext i32 %sub855 to i64
  %123 = load i64, i64* %len, align 8
  %add857 = add nsw i64 0, %123
  %mul858 = mul nsw i64 0, %add857
  %add859 = add nsw i64 %mul858, 1
  %shl860 = shl i64 %add859, 62
  %sub861 = sub nsw i64 %shl860, 1
  %mul862 = mul nsw i64 %sub861, 2
  %add863 = add nsw i64 %mul862, 1
  %sub864 = sub nsw i64 %conv856, %add863
  br label %cond.end.869

cond.false.865:                                   ; preds = %cond.true.842
  %124 = load i64, i64* %len, align 8
  %add866 = add nsw i64 0, %124
  %mul867 = mul nsw i64 0, %add866
  %add868 = add nsw i64 %mul867, 0
  br label %cond.end.869

cond.end.869:                                     ; preds = %cond.false.865, %cond.true.848
  %cond870 = phi i64 [ %sub864, %cond.true.848 ], [ %add868, %cond.false.865 ]
  %div871 = sdiv i64 %cond870, 8
  %cmp872 = icmp slt i64 %120, %div871
  br i1 %cmp872, label %cond.true.911, label %lor.lhs.false.897

cond.false.874:                                   ; preds = %cond.false.839
  %125 = load i64, i64* %len, align 8
  %add875 = add nsw i64 0, %125
  %mul876 = mul nsw i64 0, %add875
  %sub877 = sub nsw i64 %mul876, 1
  %cmp878 = icmp slt i64 %sub877, 0
  br i1 %cmp878, label %cond.true.880, label %cond.false.888

cond.true.880:                                    ; preds = %cond.false.874
  %126 = load i64, i64* %len, align 8
  %add881 = add nsw i64 0, %126
  %mul882 = mul nsw i64 0, %add881
  %add883 = add nsw i64 %mul882, 1
  %shl884 = shl i64 %add883, 62
  %sub885 = sub nsw i64 %shl884, 1
  %mul886 = mul nsw i64 %sub885, 2
  %add887 = add nsw i64 %mul886, 1
  br label %cond.end.892

cond.false.888:                                   ; preds = %cond.false.874
  %127 = load i64, i64* %len, align 8
  %add889 = add nsw i64 0, %127
  %mul890 = mul nsw i64 0, %add889
  %sub891 = sub nsw i64 %mul890, 1
  br label %cond.end.892

cond.end.892:                                     ; preds = %cond.false.888, %cond.true.880
  %cond893 = phi i64 [ %add887, %cond.true.880 ], [ %sub891, %cond.false.888 ]
  %div894 = sdiv i64 %cond893, 8
  %128 = load i64, i64* %len, align 8
  %cmp895 = icmp slt i64 %div894, %128
  br i1 %cmp895, label %cond.true.911, label %lor.lhs.false.897

lor.lhs.false.897:                                ; preds = %cond.end.892, %cond.end.869, %cond.true.838, %cond.end.832, %cond.true.804, %cond.end.798
  %129 = load i64, i64* %len, align 8
  %mul898 = mul nsw i64 %129, 8
  %mul899 = mul nsw i64 0, %mul898
  %sub900 = sub nsw i64 %mul899, 1
  %cmp901 = icmp slt i64 %sub900, 0
  br i1 %cmp901, label %land.lhs.true.903, label %lor.lhs.false.907

land.lhs.true.903:                                ; preds = %lor.lhs.false.897
  %130 = load i64, i64* %len, align 8
  %mul904 = mul nsw i64 %130, 8
  %cmp905 = icmp slt i64 %mul904, -32768
  br i1 %cmp905, label %cond.true.911, label %lor.lhs.false.907

lor.lhs.false.907:                                ; preds = %land.lhs.true.903, %lor.lhs.false.897
  %131 = load i64, i64* %len, align 8
  %mul908 = mul nsw i64 %131, 8
  %cmp909 = icmp slt i64 32767, %mul908
  br i1 %cmp909, label %cond.true.911, label %cond.false.934

cond.true.911:                                    ; preds = %lor.lhs.false.907, %land.lhs.true.903, %cond.end.892, %cond.end.869, %cond.true.838, %cond.end.832, %cond.true.804, %cond.end.798, %land.lhs.true.773
  %132 = load i64, i64* %len, align 8
  %conv912 = trunc i64 %132 to i16
  %conv913 = zext i16 %conv912 to i32
  %mul914 = mul nsw i32 %conv913, 8
  %cmp915 = icmp sle i32 %mul914, 32767
  br i1 %cmp915, label %cond.true.917, label %cond.false.923

cond.true.917:                                    ; preds = %cond.true.911
  %133 = load i64, i64* %len, align 8
  %conv918 = trunc i64 %133 to i16
  %conv919 = zext i16 %conv918 to i32
  %mul920 = mul nsw i32 %conv919, 8
  %conv921 = trunc i32 %mul920 to i16
  %conv922 = sext i16 %conv921 to i32
  br label %cond.end.931

cond.false.923:                                   ; preds = %cond.true.911
  %134 = load i64, i64* %len, align 8
  %conv924 = trunc i64 %134 to i16
  %conv925 = zext i16 %conv924 to i32
  %mul926 = mul nsw i32 %conv925, 8
  %sub927 = sub nsw i32 %mul926, -32768
  %conv928 = trunc i32 %sub927 to i16
  %conv929 = sext i16 %conv928 to i32
  %add930 = add nsw i32 %conv929, -32768
  br label %cond.end.931

cond.end.931:                                     ; preds = %cond.false.923, %cond.true.917
  %cond932 = phi i32 [ %conv922, %cond.true.917 ], [ %add930, %cond.false.923 ]
  %conv933 = sext i32 %cond932 to i64
  store i64 %conv933, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then, label %lor.lhs.false.2161

cond.false.934:                                   ; preds = %lor.lhs.false.907
  %135 = load i64, i64* %len, align 8
  %conv935 = trunc i64 %135 to i16
  %conv936 = zext i16 %conv935 to i32
  %mul937 = mul nsw i32 %conv936, 8
  %cmp938 = icmp sle i32 %mul937, 32767
  br i1 %cmp938, label %cond.true.940, label %cond.false.946

cond.true.940:                                    ; preds = %cond.false.934
  %136 = load i64, i64* %len, align 8
  %conv941 = trunc i64 %136 to i16
  %conv942 = zext i16 %conv941 to i32
  %mul943 = mul nsw i32 %conv942, 8
  %conv944 = trunc i32 %mul943 to i16
  %conv945 = sext i16 %conv944 to i32
  br label %cond.end.954

cond.false.946:                                   ; preds = %cond.false.934
  %137 = load i64, i64* %len, align 8
  %conv947 = trunc i64 %137 to i16
  %conv948 = zext i16 %conv947 to i32
  %mul949 = mul nsw i32 %conv948, 8
  %sub950 = sub nsw i32 %mul949, -32768
  %conv951 = trunc i32 %sub950 to i16
  %conv952 = sext i16 %conv951 to i32
  %add953 = add nsw i32 %conv952, -32768
  br label %cond.end.954

cond.end.954:                                     ; preds = %cond.false.946, %cond.true.940
  %cond955 = phi i32 [ %conv945, %cond.true.940 ], [ %add953, %cond.false.946 ]
  %conv956 = sext i32 %cond955 to i64
  store i64 %conv956, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then, label %lor.lhs.false.2161

cond.false.957:                                   ; preds = %cond.false.472
  br i1 false, label %cond.true.958, label %cond.false.1386

cond.true.958:                                    ; preds = %cond.false.957
  br i1 false, label %cond.true.959, label %cond.false.1185

cond.true.959:                                    ; preds = %cond.true.958
  %138 = load i64, i64* %len, align 8
  %conv960 = trunc i64 %138 to i32
  %add961 = add nsw i32 0, %conv960
  %mul962 = mul nsw i32 0, %add961
  %sub963 = sub nsw i32 %mul962, 1
  %cmp964 = icmp slt i32 %sub963, 0
  br i1 %cmp964, label %cond.true.966, label %cond.false.984

cond.true.966:                                    ; preds = %cond.true.959
  %139 = load i64, i64* %len, align 8
  %conv967 = trunc i64 %139 to i32
  %add968 = add nsw i32 0, %conv967
  %mul969 = mul nsw i32 0, %add968
  %add970 = add nsw i32 %mul969, 0
  %neg971 = xor i32 %add970, -1
  %cmp972 = icmp eq i32 %neg971, -1
  %conv973 = zext i1 %cmp972 to i32
  %sub974 = sub nsw i32 0, %conv973
  %140 = load i64, i64* %len, align 8
  %conv975 = trunc i64 %140 to i32
  %add976 = add nsw i32 0, %conv975
  %mul977 = mul nsw i32 0, %add976
  %add978 = add nsw i32 %mul977, 1
  %shl979 = shl i32 %add978, 30
  %sub980 = sub nsw i32 %shl979, 1
  %mul981 = mul nsw i32 %sub980, 2
  %add982 = add nsw i32 %mul981, 1
  %sub983 = sub nsw i32 %sub974, %add982
  br label %cond.end.989

cond.false.984:                                   ; preds = %cond.true.959
  %141 = load i64, i64* %len, align 8
  %conv985 = trunc i64 %141 to i32
  %add986 = add nsw i32 0, %conv985
  %mul987 = mul nsw i32 0, %add986
  %add988 = add nsw i32 %mul987, 0
  br label %cond.end.989

cond.end.989:                                     ; preds = %cond.false.984, %cond.true.966
  %cond990 = phi i32 [ %sub983, %cond.true.966 ], [ %add988, %cond.false.984 ]
  %cmp991 = icmp eq i32 %cond990, 0
  br i1 %cmp991, label %land.lhs.true.993, label %lor.lhs.false.997

land.lhs.true.993:                                ; preds = %cond.end.989
  %142 = load i64, i64* %len, align 8
  %conv994 = trunc i64 %142 to i32
  %cmp995 = icmp slt i32 %conv994, 0
  br i1 %cmp995, label %cond.true.1153, label %lor.lhs.false.997

lor.lhs.false.997:                                ; preds = %land.lhs.true.993, %cond.end.989
  br i1 false, label %cond.true.998, label %cond.false.1067

cond.true.998:                                    ; preds = %lor.lhs.false.997
  %143 = load i64, i64* %len, align 8
  %conv999 = trunc i64 %143 to i32
  %cmp1000 = icmp slt i32 %conv999, 0
  br i1 %cmp1000, label %cond.true.1002, label %cond.false.1029

cond.true.1002:                                   ; preds = %cond.true.998
  %144 = load i64, i64* %len, align 8
  %conv1003 = trunc i64 %144 to i32
  %145 = load i64, i64* %len, align 8
  %conv1004 = trunc i64 %145 to i32
  %add1005 = add nsw i32 0, %conv1004
  %mul1006 = mul nsw i32 0, %add1005
  %sub1007 = sub nsw i32 %mul1006, 1
  %cmp1008 = icmp slt i32 %sub1007, 0
  br i1 %cmp1008, label %cond.true.1010, label %cond.false.1019

cond.true.1010:                                   ; preds = %cond.true.1002
  %146 = load i64, i64* %len, align 8
  %conv1011 = trunc i64 %146 to i32
  %add1012 = add nsw i32 0, %conv1011
  %mul1013 = mul nsw i32 0, %add1012
  %add1014 = add nsw i32 %mul1013, 1
  %shl1015 = shl i32 %add1014, 30
  %sub1016 = sub nsw i32 %shl1015, 1
  %mul1017 = mul nsw i32 %sub1016, 2
  %add1018 = add nsw i32 %mul1017, 1
  br label %cond.end.1024

cond.false.1019:                                  ; preds = %cond.true.1002
  %147 = load i64, i64* %len, align 8
  %conv1020 = trunc i64 %147 to i32
  %add1021 = add nsw i32 0, %conv1020
  %mul1022 = mul nsw i32 0, %add1021
  %sub1023 = sub nsw i32 %mul1022, 1
  br label %cond.end.1024

cond.end.1024:                                    ; preds = %cond.false.1019, %cond.true.1010
  %cond1025 = phi i32 [ %add1018, %cond.true.1010 ], [ %sub1023, %cond.false.1019 ]
  %div1026 = sdiv i32 %cond1025, 8
  %cmp1027 = icmp slt i32 %conv1003, %div1026
  br i1 %cmp1027, label %cond.true.1153, label %lor.lhs.false.1136

cond.false.1029:                                  ; preds = %cond.true.998
  br i1 false, label %cond.true.1030, label %cond.false.1031

cond.true.1030:                                   ; preds = %cond.false.1029
  br i1 false, label %cond.true.1153, label %lor.lhs.false.1136

cond.false.1031:                                  ; preds = %cond.false.1029
  %148 = load i64, i64* %len, align 8
  %conv1032 = trunc i64 %148 to i32
  %add1033 = add nsw i32 0, %conv1032
  %mul1034 = mul nsw i32 0, %add1033
  %sub1035 = sub nsw i32 %mul1034, 1
  %cmp1036 = icmp slt i32 %sub1035, 0
  br i1 %cmp1036, label %cond.true.1038, label %cond.false.1056

cond.true.1038:                                   ; preds = %cond.false.1031
  %149 = load i64, i64* %len, align 8
  %conv1039 = trunc i64 %149 to i32
  %add1040 = add nsw i32 0, %conv1039
  %mul1041 = mul nsw i32 0, %add1040
  %add1042 = add nsw i32 %mul1041, 0
  %neg1043 = xor i32 %add1042, -1
  %cmp1044 = icmp eq i32 %neg1043, -1
  %conv1045 = zext i1 %cmp1044 to i32
  %sub1046 = sub nsw i32 0, %conv1045
  %150 = load i64, i64* %len, align 8
  %conv1047 = trunc i64 %150 to i32
  %add1048 = add nsw i32 0, %conv1047
  %mul1049 = mul nsw i32 0, %add1048
  %add1050 = add nsw i32 %mul1049, 1
  %shl1051 = shl i32 %add1050, 30
  %sub1052 = sub nsw i32 %shl1051, 1
  %mul1053 = mul nsw i32 %sub1052, 2
  %add1054 = add nsw i32 %mul1053, 1
  %sub1055 = sub nsw i32 %sub1046, %add1054
  br label %cond.end.1061

cond.false.1056:                                  ; preds = %cond.false.1031
  %151 = load i64, i64* %len, align 8
  %conv1057 = trunc i64 %151 to i32
  %add1058 = add nsw i32 0, %conv1057
  %mul1059 = mul nsw i32 0, %add1058
  %add1060 = add nsw i32 %mul1059, 0
  br label %cond.end.1061

cond.end.1061:                                    ; preds = %cond.false.1056, %cond.true.1038
  %cond1062 = phi i32 [ %sub1055, %cond.true.1038 ], [ %add1060, %cond.false.1056 ]
  %div1063 = sdiv i32 %cond1062, 8
  %152 = load i64, i64* %len, align 8
  %conv1064 = trunc i64 %152 to i32
  %cmp1065 = icmp slt i32 %div1063, %conv1064
  br i1 %cmp1065, label %cond.true.1153, label %lor.lhs.false.1136

cond.false.1067:                                  ; preds = %lor.lhs.false.997
  br i1 false, label %cond.true.1068, label %cond.false.1069

cond.true.1068:                                   ; preds = %cond.false.1067
  br i1 false, label %cond.true.1153, label %lor.lhs.false.1136

cond.false.1069:                                  ; preds = %cond.false.1067
  %153 = load i64, i64* %len, align 8
  %conv1070 = trunc i64 %153 to i32
  %cmp1071 = icmp slt i32 %conv1070, 0
  br i1 %cmp1071, label %cond.true.1073, label %cond.false.1109

cond.true.1073:                                   ; preds = %cond.false.1069
  %154 = load i64, i64* %len, align 8
  %conv1074 = trunc i64 %154 to i32
  %155 = load i64, i64* %len, align 8
  %conv1075 = trunc i64 %155 to i32
  %add1076 = add nsw i32 0, %conv1075
  %mul1077 = mul nsw i32 0, %add1076
  %sub1078 = sub nsw i32 %mul1077, 1
  %cmp1079 = icmp slt i32 %sub1078, 0
  br i1 %cmp1079, label %cond.true.1081, label %cond.false.1099

cond.true.1081:                                   ; preds = %cond.true.1073
  %156 = load i64, i64* %len, align 8
  %conv1082 = trunc i64 %156 to i32
  %add1083 = add nsw i32 0, %conv1082
  %mul1084 = mul nsw i32 0, %add1083
  %add1085 = add nsw i32 %mul1084, 0
  %neg1086 = xor i32 %add1085, -1
  %cmp1087 = icmp eq i32 %neg1086, -1
  %conv1088 = zext i1 %cmp1087 to i32
  %sub1089 = sub nsw i32 0, %conv1088
  %157 = load i64, i64* %len, align 8
  %conv1090 = trunc i64 %157 to i32
  %add1091 = add nsw i32 0, %conv1090
  %mul1092 = mul nsw i32 0, %add1091
  %add1093 = add nsw i32 %mul1092, 1
  %shl1094 = shl i32 %add1093, 30
  %sub1095 = sub nsw i32 %shl1094, 1
  %mul1096 = mul nsw i32 %sub1095, 2
  %add1097 = add nsw i32 %mul1096, 1
  %sub1098 = sub nsw i32 %sub1089, %add1097
  br label %cond.end.1104

cond.false.1099:                                  ; preds = %cond.true.1073
  %158 = load i64, i64* %len, align 8
  %conv1100 = trunc i64 %158 to i32
  %add1101 = add nsw i32 0, %conv1100
  %mul1102 = mul nsw i32 0, %add1101
  %add1103 = add nsw i32 %mul1102, 0
  br label %cond.end.1104

cond.end.1104:                                    ; preds = %cond.false.1099, %cond.true.1081
  %cond1105 = phi i32 [ %sub1098, %cond.true.1081 ], [ %add1103, %cond.false.1099 ]
  %div1106 = sdiv i32 %cond1105, 8
  %cmp1107 = icmp slt i32 %conv1074, %div1106
  br i1 %cmp1107, label %cond.true.1153, label %lor.lhs.false.1136

cond.false.1109:                                  ; preds = %cond.false.1069
  %159 = load i64, i64* %len, align 8
  %conv1110 = trunc i64 %159 to i32
  %add1111 = add nsw i32 0, %conv1110
  %mul1112 = mul nsw i32 0, %add1111
  %sub1113 = sub nsw i32 %mul1112, 1
  %cmp1114 = icmp slt i32 %sub1113, 0
  br i1 %cmp1114, label %cond.true.1116, label %cond.false.1125

cond.true.1116:                                   ; preds = %cond.false.1109
  %160 = load i64, i64* %len, align 8
  %conv1117 = trunc i64 %160 to i32
  %add1118 = add nsw i32 0, %conv1117
  %mul1119 = mul nsw i32 0, %add1118
  %add1120 = add nsw i32 %mul1119, 1
  %shl1121 = shl i32 %add1120, 30
  %sub1122 = sub nsw i32 %shl1121, 1
  %mul1123 = mul nsw i32 %sub1122, 2
  %add1124 = add nsw i32 %mul1123, 1
  br label %cond.end.1130

cond.false.1125:                                  ; preds = %cond.false.1109
  %161 = load i64, i64* %len, align 8
  %conv1126 = trunc i64 %161 to i32
  %add1127 = add nsw i32 0, %conv1126
  %mul1128 = mul nsw i32 0, %add1127
  %sub1129 = sub nsw i32 %mul1128, 1
  br label %cond.end.1130

cond.end.1130:                                    ; preds = %cond.false.1125, %cond.true.1116
  %cond1131 = phi i32 [ %add1124, %cond.true.1116 ], [ %sub1129, %cond.false.1125 ]
  %div1132 = sdiv i32 %cond1131, 8
  %162 = load i64, i64* %len, align 8
  %conv1133 = trunc i64 %162 to i32
  %cmp1134 = icmp slt i32 %div1132, %conv1133
  br i1 %cmp1134, label %cond.true.1153, label %lor.lhs.false.1136

lor.lhs.false.1136:                               ; preds = %cond.end.1130, %cond.end.1104, %cond.true.1068, %cond.end.1061, %cond.true.1030, %cond.end.1024
  %163 = load i64, i64* %len, align 8
  %conv1137 = trunc i64 %163 to i32
  %mul1138 = mul nsw i32 %conv1137, 8
  %mul1139 = mul nsw i32 0, %mul1138
  %sub1140 = sub nsw i32 %mul1139, 1
  %cmp1141 = icmp slt i32 %sub1140, 0
  br i1 %cmp1141, label %land.lhs.true.1143, label %lor.lhs.false.1148

land.lhs.true.1143:                               ; preds = %lor.lhs.false.1136
  %164 = load i64, i64* %len, align 8
  %conv1144 = trunc i64 %164 to i32
  %mul1145 = mul nsw i32 %conv1144, 8
  %cmp1146 = icmp slt i32 %mul1145, -2147483648
  br i1 %cmp1146, label %cond.true.1153, label %lor.lhs.false.1148

lor.lhs.false.1148:                               ; preds = %land.lhs.true.1143, %lor.lhs.false.1136
  %165 = load i64, i64* %len, align 8
  %conv1149 = trunc i64 %165 to i32
  %mul1150 = mul nsw i32 %conv1149, 8
  %cmp1151 = icmp slt i32 2147483647, %mul1150
  br i1 %cmp1151, label %cond.true.1153, label %cond.false.1169

cond.true.1153:                                   ; preds = %lor.lhs.false.1148, %land.lhs.true.1143, %cond.end.1130, %cond.end.1104, %cond.true.1068, %cond.end.1061, %cond.true.1030, %cond.end.1024, %land.lhs.true.993
  %166 = load i64, i64* %len, align 8
  %conv1154 = trunc i64 %166 to i32
  %mul1155 = mul i32 %conv1154, 8
  %cmp1156 = icmp ule i32 %mul1155, 2147483647
  br i1 %cmp1156, label %cond.true.1158, label %cond.false.1161

cond.true.1158:                                   ; preds = %cond.true.1153
  %167 = load i64, i64* %len, align 8
  %conv1159 = trunc i64 %167 to i32
  %mul1160 = mul i32 %conv1159, 8
  br label %cond.end.1166

cond.false.1161:                                  ; preds = %cond.true.1153
  %168 = load i64, i64* %len, align 8
  %conv1162 = trunc i64 %168 to i32
  %mul1163 = mul i32 %conv1162, 8
  %sub1164 = sub i32 %mul1163, -2147483648
  %add1165 = add nsw i32 %sub1164, -2147483648
  br label %cond.end.1166

cond.end.1166:                                    ; preds = %cond.false.1161, %cond.true.1158
  %cond1167 = phi i32 [ %mul1160, %cond.true.1158 ], [ %add1165, %cond.false.1161 ]
  %conv1168 = sext i32 %cond1167 to i64
  store i64 %conv1168, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then, label %lor.lhs.false.2161

cond.false.1169:                                  ; preds = %lor.lhs.false.1148
  %169 = load i64, i64* %len, align 8
  %conv1170 = trunc i64 %169 to i32
  %mul1171 = mul i32 %conv1170, 8
  %cmp1172 = icmp ule i32 %mul1171, 2147483647
  br i1 %cmp1172, label %cond.true.1174, label %cond.false.1177

cond.true.1174:                                   ; preds = %cond.false.1169
  %170 = load i64, i64* %len, align 8
  %conv1175 = trunc i64 %170 to i32
  %mul1176 = mul i32 %conv1175, 8
  br label %cond.end.1182

cond.false.1177:                                  ; preds = %cond.false.1169
  %171 = load i64, i64* %len, align 8
  %conv1178 = trunc i64 %171 to i32
  %mul1179 = mul i32 %conv1178, 8
  %sub1180 = sub i32 %mul1179, -2147483648
  %add1181 = add nsw i32 %sub1180, -2147483648
  br label %cond.end.1182

cond.end.1182:                                    ; preds = %cond.false.1177, %cond.true.1174
  %cond1183 = phi i32 [ %mul1176, %cond.true.1174 ], [ %add1181, %cond.false.1177 ]
  %conv1184 = sext i32 %cond1183 to i64
  store i64 %conv1184, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then, label %lor.lhs.false.2161

cond.false.1185:                                  ; preds = %cond.true.958
  %172 = load i64, i64* %len, align 8
  %add1186 = add nsw i64 0, %172
  %mul1187 = mul nsw i64 0, %add1186
  %sub1188 = sub nsw i64 %mul1187, 1
  %cmp1189 = icmp slt i64 %sub1188, 0
  br i1 %cmp1189, label %cond.true.1191, label %cond.false.1208

cond.true.1191:                                   ; preds = %cond.false.1185
  %173 = load i64, i64* %len, align 8
  %add1192 = add nsw i64 0, %173
  %mul1193 = mul nsw i64 0, %add1192
  %add1194 = add nsw i64 %mul1193, 0
  %neg1195 = xor i64 %add1194, -1
  %cmp1196 = icmp eq i64 %neg1195, -1
  %conv1197 = zext i1 %cmp1196 to i32
  %sub1198 = sub nsw i32 0, %conv1197
  %conv1199 = sext i32 %sub1198 to i64
  %174 = load i64, i64* %len, align 8
  %add1200 = add nsw i64 0, %174
  %mul1201 = mul nsw i64 0, %add1200
  %add1202 = add nsw i64 %mul1201, 1
  %shl1203 = shl i64 %add1202, 62
  %sub1204 = sub nsw i64 %shl1203, 1
  %mul1205 = mul nsw i64 %sub1204, 2
  %add1206 = add nsw i64 %mul1205, 1
  %sub1207 = sub nsw i64 %conv1199, %add1206
  br label %cond.end.1212

cond.false.1208:                                  ; preds = %cond.false.1185
  %175 = load i64, i64* %len, align 8
  %add1209 = add nsw i64 0, %175
  %mul1210 = mul nsw i64 0, %add1209
  %add1211 = add nsw i64 %mul1210, 0
  br label %cond.end.1212

cond.end.1212:                                    ; preds = %cond.false.1208, %cond.true.1191
  %cond1213 = phi i64 [ %sub1207, %cond.true.1191 ], [ %add1211, %cond.false.1208 ]
  %cmp1214 = icmp eq i64 %cond1213, 0
  br i1 %cmp1214, label %land.lhs.true.1216, label %lor.lhs.false.1219

land.lhs.true.1216:                               ; preds = %cond.end.1212
  %176 = load i64, i64* %len, align 8
  %cmp1217 = icmp slt i64 %176, 0
  br i1 %cmp1217, label %cond.true.1354, label %lor.lhs.false.1219

lor.lhs.false.1219:                               ; preds = %land.lhs.true.1216, %cond.end.1212
  br i1 false, label %cond.true.1220, label %cond.false.1280

cond.true.1220:                                   ; preds = %lor.lhs.false.1219
  %177 = load i64, i64* %len, align 8
  %cmp1221 = icmp slt i64 %177, 0
  br i1 %cmp1221, label %cond.true.1223, label %cond.false.1246

cond.true.1223:                                   ; preds = %cond.true.1220
  %178 = load i64, i64* %len, align 8
  %179 = load i64, i64* %len, align 8
  %add1224 = add nsw i64 0, %179
  %mul1225 = mul nsw i64 0, %add1224
  %sub1226 = sub nsw i64 %mul1225, 1
  %cmp1227 = icmp slt i64 %sub1226, 0
  br i1 %cmp1227, label %cond.true.1229, label %cond.false.1237

cond.true.1229:                                   ; preds = %cond.true.1223
  %180 = load i64, i64* %len, align 8
  %add1230 = add nsw i64 0, %180
  %mul1231 = mul nsw i64 0, %add1230
  %add1232 = add nsw i64 %mul1231, 1
  %shl1233 = shl i64 %add1232, 62
  %sub1234 = sub nsw i64 %shl1233, 1
  %mul1235 = mul nsw i64 %sub1234, 2
  %add1236 = add nsw i64 %mul1235, 1
  br label %cond.end.1241

cond.false.1237:                                  ; preds = %cond.true.1223
  %181 = load i64, i64* %len, align 8
  %add1238 = add nsw i64 0, %181
  %mul1239 = mul nsw i64 0, %add1238
  %sub1240 = sub nsw i64 %mul1239, 1
  br label %cond.end.1241

cond.end.1241:                                    ; preds = %cond.false.1237, %cond.true.1229
  %cond1242 = phi i64 [ %add1236, %cond.true.1229 ], [ %sub1240, %cond.false.1237 ]
  %div1243 = sdiv i64 %cond1242, 8
  %cmp1244 = icmp slt i64 %178, %div1243
  br i1 %cmp1244, label %cond.true.1354, label %lor.lhs.false.1340

cond.false.1246:                                  ; preds = %cond.true.1220
  br i1 false, label %cond.true.1247, label %cond.false.1248

cond.true.1247:                                   ; preds = %cond.false.1246
  br i1 false, label %cond.true.1354, label %lor.lhs.false.1340

cond.false.1248:                                  ; preds = %cond.false.1246
  %182 = load i64, i64* %len, align 8
  %add1249 = add nsw i64 0, %182
  %mul1250 = mul nsw i64 0, %add1249
  %sub1251 = sub nsw i64 %mul1250, 1
  %cmp1252 = icmp slt i64 %sub1251, 0
  br i1 %cmp1252, label %cond.true.1254, label %cond.false.1271

cond.true.1254:                                   ; preds = %cond.false.1248
  %183 = load i64, i64* %len, align 8
  %add1255 = add nsw i64 0, %183
  %mul1256 = mul nsw i64 0, %add1255
  %add1257 = add nsw i64 %mul1256, 0
  %neg1258 = xor i64 %add1257, -1
  %cmp1259 = icmp eq i64 %neg1258, -1
  %conv1260 = zext i1 %cmp1259 to i32
  %sub1261 = sub nsw i32 0, %conv1260
  %conv1262 = sext i32 %sub1261 to i64
  %184 = load i64, i64* %len, align 8
  %add1263 = add nsw i64 0, %184
  %mul1264 = mul nsw i64 0, %add1263
  %add1265 = add nsw i64 %mul1264, 1
  %shl1266 = shl i64 %add1265, 62
  %sub1267 = sub nsw i64 %shl1266, 1
  %mul1268 = mul nsw i64 %sub1267, 2
  %add1269 = add nsw i64 %mul1268, 1
  %sub1270 = sub nsw i64 %conv1262, %add1269
  br label %cond.end.1275

cond.false.1271:                                  ; preds = %cond.false.1248
  %185 = load i64, i64* %len, align 8
  %add1272 = add nsw i64 0, %185
  %mul1273 = mul nsw i64 0, %add1272
  %add1274 = add nsw i64 %mul1273, 0
  br label %cond.end.1275

cond.end.1275:                                    ; preds = %cond.false.1271, %cond.true.1254
  %cond1276 = phi i64 [ %sub1270, %cond.true.1254 ], [ %add1274, %cond.false.1271 ]
  %div1277 = sdiv i64 %cond1276, 8
  %186 = load i64, i64* %len, align 8
  %cmp1278 = icmp slt i64 %div1277, %186
  br i1 %cmp1278, label %cond.true.1354, label %lor.lhs.false.1340

cond.false.1280:                                  ; preds = %lor.lhs.false.1219
  br i1 false, label %cond.true.1281, label %cond.false.1282

cond.true.1281:                                   ; preds = %cond.false.1280
  br i1 false, label %cond.true.1354, label %lor.lhs.false.1340

cond.false.1282:                                  ; preds = %cond.false.1280
  %187 = load i64, i64* %len, align 8
  %cmp1283 = icmp slt i64 %187, 0
  br i1 %cmp1283, label %cond.true.1285, label %cond.false.1317

cond.true.1285:                                   ; preds = %cond.false.1282
  %188 = load i64, i64* %len, align 8
  %189 = load i64, i64* %len, align 8
  %add1286 = add nsw i64 0, %189
  %mul1287 = mul nsw i64 0, %add1286
  %sub1288 = sub nsw i64 %mul1287, 1
  %cmp1289 = icmp slt i64 %sub1288, 0
  br i1 %cmp1289, label %cond.true.1291, label %cond.false.1308

cond.true.1291:                                   ; preds = %cond.true.1285
  %190 = load i64, i64* %len, align 8
  %add1292 = add nsw i64 0, %190
  %mul1293 = mul nsw i64 0, %add1292
  %add1294 = add nsw i64 %mul1293, 0
  %neg1295 = xor i64 %add1294, -1
  %cmp1296 = icmp eq i64 %neg1295, -1
  %conv1297 = zext i1 %cmp1296 to i32
  %sub1298 = sub nsw i32 0, %conv1297
  %conv1299 = sext i32 %sub1298 to i64
  %191 = load i64, i64* %len, align 8
  %add1300 = add nsw i64 0, %191
  %mul1301 = mul nsw i64 0, %add1300
  %add1302 = add nsw i64 %mul1301, 1
  %shl1303 = shl i64 %add1302, 62
  %sub1304 = sub nsw i64 %shl1303, 1
  %mul1305 = mul nsw i64 %sub1304, 2
  %add1306 = add nsw i64 %mul1305, 1
  %sub1307 = sub nsw i64 %conv1299, %add1306
  br label %cond.end.1312

cond.false.1308:                                  ; preds = %cond.true.1285
  %192 = load i64, i64* %len, align 8
  %add1309 = add nsw i64 0, %192
  %mul1310 = mul nsw i64 0, %add1309
  %add1311 = add nsw i64 %mul1310, 0
  br label %cond.end.1312

cond.end.1312:                                    ; preds = %cond.false.1308, %cond.true.1291
  %cond1313 = phi i64 [ %sub1307, %cond.true.1291 ], [ %add1311, %cond.false.1308 ]
  %div1314 = sdiv i64 %cond1313, 8
  %cmp1315 = icmp slt i64 %188, %div1314
  br i1 %cmp1315, label %cond.true.1354, label %lor.lhs.false.1340

cond.false.1317:                                  ; preds = %cond.false.1282
  %193 = load i64, i64* %len, align 8
  %add1318 = add nsw i64 0, %193
  %mul1319 = mul nsw i64 0, %add1318
  %sub1320 = sub nsw i64 %mul1319, 1
  %cmp1321 = icmp slt i64 %sub1320, 0
  br i1 %cmp1321, label %cond.true.1323, label %cond.false.1331

cond.true.1323:                                   ; preds = %cond.false.1317
  %194 = load i64, i64* %len, align 8
  %add1324 = add nsw i64 0, %194
  %mul1325 = mul nsw i64 0, %add1324
  %add1326 = add nsw i64 %mul1325, 1
  %shl1327 = shl i64 %add1326, 62
  %sub1328 = sub nsw i64 %shl1327, 1
  %mul1329 = mul nsw i64 %sub1328, 2
  %add1330 = add nsw i64 %mul1329, 1
  br label %cond.end.1335

cond.false.1331:                                  ; preds = %cond.false.1317
  %195 = load i64, i64* %len, align 8
  %add1332 = add nsw i64 0, %195
  %mul1333 = mul nsw i64 0, %add1332
  %sub1334 = sub nsw i64 %mul1333, 1
  br label %cond.end.1335

cond.end.1335:                                    ; preds = %cond.false.1331, %cond.true.1323
  %cond1336 = phi i64 [ %add1330, %cond.true.1323 ], [ %sub1334, %cond.false.1331 ]
  %div1337 = sdiv i64 %cond1336, 8
  %196 = load i64, i64* %len, align 8
  %cmp1338 = icmp slt i64 %div1337, %196
  br i1 %cmp1338, label %cond.true.1354, label %lor.lhs.false.1340

lor.lhs.false.1340:                               ; preds = %cond.end.1335, %cond.end.1312, %cond.true.1281, %cond.end.1275, %cond.true.1247, %cond.end.1241
  %197 = load i64, i64* %len, align 8
  %mul1341 = mul nsw i64 %197, 8
  %mul1342 = mul nsw i64 0, %mul1341
  %sub1343 = sub nsw i64 %mul1342, 1
  %cmp1344 = icmp slt i64 %sub1343, 0
  br i1 %cmp1344, label %land.lhs.true.1346, label %lor.lhs.false.1350

land.lhs.true.1346:                               ; preds = %lor.lhs.false.1340
  %198 = load i64, i64* %len, align 8
  %mul1347 = mul nsw i64 %198, 8
  %cmp1348 = icmp slt i64 %mul1347, -2147483648
  br i1 %cmp1348, label %cond.true.1354, label %lor.lhs.false.1350

lor.lhs.false.1350:                               ; preds = %land.lhs.true.1346, %lor.lhs.false.1340
  %199 = load i64, i64* %len, align 8
  %mul1351 = mul nsw i64 %199, 8
  %cmp1352 = icmp slt i64 2147483647, %mul1351
  br i1 %cmp1352, label %cond.true.1354, label %cond.false.1370

cond.true.1354:                                   ; preds = %lor.lhs.false.1350, %land.lhs.true.1346, %cond.end.1335, %cond.end.1312, %cond.true.1281, %cond.end.1275, %cond.true.1247, %cond.end.1241, %land.lhs.true.1216
  %200 = load i64, i64* %len, align 8
  %conv1355 = trunc i64 %200 to i32
  %mul1356 = mul i32 %conv1355, 8
  %cmp1357 = icmp ule i32 %mul1356, 2147483647
  br i1 %cmp1357, label %cond.true.1359, label %cond.false.1362

cond.true.1359:                                   ; preds = %cond.true.1354
  %201 = load i64, i64* %len, align 8
  %conv1360 = trunc i64 %201 to i32
  %mul1361 = mul i32 %conv1360, 8
  br label %cond.end.1367

cond.false.1362:                                  ; preds = %cond.true.1354
  %202 = load i64, i64* %len, align 8
  %conv1363 = trunc i64 %202 to i32
  %mul1364 = mul i32 %conv1363, 8
  %sub1365 = sub i32 %mul1364, -2147483648
  %add1366 = add nsw i32 %sub1365, -2147483648
  br label %cond.end.1367

cond.end.1367:                                    ; preds = %cond.false.1362, %cond.true.1359
  %cond1368 = phi i32 [ %mul1361, %cond.true.1359 ], [ %add1366, %cond.false.1362 ]
  %conv1369 = sext i32 %cond1368 to i64
  store i64 %conv1369, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then, label %lor.lhs.false.2161

cond.false.1370:                                  ; preds = %lor.lhs.false.1350
  %203 = load i64, i64* %len, align 8
  %conv1371 = trunc i64 %203 to i32
  %mul1372 = mul i32 %conv1371, 8
  %cmp1373 = icmp ule i32 %mul1372, 2147483647
  br i1 %cmp1373, label %cond.true.1375, label %cond.false.1378

cond.true.1375:                                   ; preds = %cond.false.1370
  %204 = load i64, i64* %len, align 8
  %conv1376 = trunc i64 %204 to i32
  %mul1377 = mul i32 %conv1376, 8
  br label %cond.end.1383

cond.false.1378:                                  ; preds = %cond.false.1370
  %205 = load i64, i64* %len, align 8
  %conv1379 = trunc i64 %205 to i32
  %mul1380 = mul i32 %conv1379, 8
  %sub1381 = sub i32 %mul1380, -2147483648
  %add1382 = add nsw i32 %sub1381, -2147483648
  br label %cond.end.1383

cond.end.1383:                                    ; preds = %cond.false.1378, %cond.true.1375
  %cond1384 = phi i32 [ %mul1377, %cond.true.1375 ], [ %add1382, %cond.false.1378 ]
  %conv1385 = sext i32 %cond1384 to i64
  store i64 %conv1385, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then, label %lor.lhs.false.2161

cond.false.1386:                                  ; preds = %cond.false.957
  br i1 true, label %cond.true.1387, label %cond.false.1774

cond.true.1387:                                   ; preds = %cond.false.1386
  br i1 false, label %cond.true.1388, label %cond.false.1581

cond.true.1388:                                   ; preds = %cond.true.1387
  %206 = load i64, i64* %len, align 8
  %add1389 = add nsw i64 0, %206
  %mul1390 = mul nsw i64 0, %add1389
  %sub1391 = sub nsw i64 %mul1390, 1
  %cmp1392 = icmp slt i64 %sub1391, 0
  br i1 %cmp1392, label %cond.true.1394, label %cond.false.1411

cond.true.1394:                                   ; preds = %cond.true.1388
  %207 = load i64, i64* %len, align 8
  %add1395 = add nsw i64 0, %207
  %mul1396 = mul nsw i64 0, %add1395
  %add1397 = add nsw i64 %mul1396, 0
  %neg1398 = xor i64 %add1397, -1
  %cmp1399 = icmp eq i64 %neg1398, -1
  %conv1400 = zext i1 %cmp1399 to i32
  %sub1401 = sub nsw i32 0, %conv1400
  %conv1402 = sext i32 %sub1401 to i64
  %208 = load i64, i64* %len, align 8
  %add1403 = add nsw i64 0, %208
  %mul1404 = mul nsw i64 0, %add1403
  %add1405 = add nsw i64 %mul1404, 1
  %shl1406 = shl i64 %add1405, 62
  %sub1407 = sub nsw i64 %shl1406, 1
  %mul1408 = mul nsw i64 %sub1407, 2
  %add1409 = add nsw i64 %mul1408, 1
  %sub1410 = sub nsw i64 %conv1402, %add1409
  br label %cond.end.1415

cond.false.1411:                                  ; preds = %cond.true.1388
  %209 = load i64, i64* %len, align 8
  %add1412 = add nsw i64 0, %209
  %mul1413 = mul nsw i64 0, %add1412
  %add1414 = add nsw i64 %mul1413, 0
  br label %cond.end.1415

cond.end.1415:                                    ; preds = %cond.false.1411, %cond.true.1394
  %cond1416 = phi i64 [ %sub1410, %cond.true.1394 ], [ %add1414, %cond.false.1411 ]
  %cmp1417 = icmp eq i64 %cond1416, 0
  br i1 %cmp1417, label %land.lhs.true.1419, label %lor.lhs.false.1422

land.lhs.true.1419:                               ; preds = %cond.end.1415
  %210 = load i64, i64* %len, align 8
  %cmp1420 = icmp slt i64 %210, 0
  br i1 %cmp1420, label %cond.true.1557, label %lor.lhs.false.1422

lor.lhs.false.1422:                               ; preds = %land.lhs.true.1419, %cond.end.1415
  br i1 false, label %cond.true.1423, label %cond.false.1483

cond.true.1423:                                   ; preds = %lor.lhs.false.1422
  %211 = load i64, i64* %len, align 8
  %cmp1424 = icmp slt i64 %211, 0
  br i1 %cmp1424, label %cond.true.1426, label %cond.false.1449

cond.true.1426:                                   ; preds = %cond.true.1423
  %212 = load i64, i64* %len, align 8
  %213 = load i64, i64* %len, align 8
  %add1427 = add nsw i64 0, %213
  %mul1428 = mul nsw i64 0, %add1427
  %sub1429 = sub nsw i64 %mul1428, 1
  %cmp1430 = icmp slt i64 %sub1429, 0
  br i1 %cmp1430, label %cond.true.1432, label %cond.false.1440

cond.true.1432:                                   ; preds = %cond.true.1426
  %214 = load i64, i64* %len, align 8
  %add1433 = add nsw i64 0, %214
  %mul1434 = mul nsw i64 0, %add1433
  %add1435 = add nsw i64 %mul1434, 1
  %shl1436 = shl i64 %add1435, 62
  %sub1437 = sub nsw i64 %shl1436, 1
  %mul1438 = mul nsw i64 %sub1437, 2
  %add1439 = add nsw i64 %mul1438, 1
  br label %cond.end.1444

cond.false.1440:                                  ; preds = %cond.true.1426
  %215 = load i64, i64* %len, align 8
  %add1441 = add nsw i64 0, %215
  %mul1442 = mul nsw i64 0, %add1441
  %sub1443 = sub nsw i64 %mul1442, 1
  br label %cond.end.1444

cond.end.1444:                                    ; preds = %cond.false.1440, %cond.true.1432
  %cond1445 = phi i64 [ %add1439, %cond.true.1432 ], [ %sub1443, %cond.false.1440 ]
  %div1446 = sdiv i64 %cond1445, 8
  %cmp1447 = icmp slt i64 %212, %div1446
  br i1 %cmp1447, label %cond.true.1557, label %lor.lhs.false.1543

cond.false.1449:                                  ; preds = %cond.true.1423
  br i1 false, label %cond.true.1450, label %cond.false.1451

cond.true.1450:                                   ; preds = %cond.false.1449
  br i1 false, label %cond.true.1557, label %lor.lhs.false.1543

cond.false.1451:                                  ; preds = %cond.false.1449
  %216 = load i64, i64* %len, align 8
  %add1452 = add nsw i64 0, %216
  %mul1453 = mul nsw i64 0, %add1452
  %sub1454 = sub nsw i64 %mul1453, 1
  %cmp1455 = icmp slt i64 %sub1454, 0
  br i1 %cmp1455, label %cond.true.1457, label %cond.false.1474

cond.true.1457:                                   ; preds = %cond.false.1451
  %217 = load i64, i64* %len, align 8
  %add1458 = add nsw i64 0, %217
  %mul1459 = mul nsw i64 0, %add1458
  %add1460 = add nsw i64 %mul1459, 0
  %neg1461 = xor i64 %add1460, -1
  %cmp1462 = icmp eq i64 %neg1461, -1
  %conv1463 = zext i1 %cmp1462 to i32
  %sub1464 = sub nsw i32 0, %conv1463
  %conv1465 = sext i32 %sub1464 to i64
  %218 = load i64, i64* %len, align 8
  %add1466 = add nsw i64 0, %218
  %mul1467 = mul nsw i64 0, %add1466
  %add1468 = add nsw i64 %mul1467, 1
  %shl1469 = shl i64 %add1468, 62
  %sub1470 = sub nsw i64 %shl1469, 1
  %mul1471 = mul nsw i64 %sub1470, 2
  %add1472 = add nsw i64 %mul1471, 1
  %sub1473 = sub nsw i64 %conv1465, %add1472
  br label %cond.end.1478

cond.false.1474:                                  ; preds = %cond.false.1451
  %219 = load i64, i64* %len, align 8
  %add1475 = add nsw i64 0, %219
  %mul1476 = mul nsw i64 0, %add1475
  %add1477 = add nsw i64 %mul1476, 0
  br label %cond.end.1478

cond.end.1478:                                    ; preds = %cond.false.1474, %cond.true.1457
  %cond1479 = phi i64 [ %sub1473, %cond.true.1457 ], [ %add1477, %cond.false.1474 ]
  %div1480 = sdiv i64 %cond1479, 8
  %220 = load i64, i64* %len, align 8
  %cmp1481 = icmp slt i64 %div1480, %220
  br i1 %cmp1481, label %cond.true.1557, label %lor.lhs.false.1543

cond.false.1483:                                  ; preds = %lor.lhs.false.1422
  br i1 false, label %cond.true.1484, label %cond.false.1485

cond.true.1484:                                   ; preds = %cond.false.1483
  br i1 false, label %cond.true.1557, label %lor.lhs.false.1543

cond.false.1485:                                  ; preds = %cond.false.1483
  %221 = load i64, i64* %len, align 8
  %cmp1486 = icmp slt i64 %221, 0
  br i1 %cmp1486, label %cond.true.1488, label %cond.false.1520

cond.true.1488:                                   ; preds = %cond.false.1485
  %222 = load i64, i64* %len, align 8
  %223 = load i64, i64* %len, align 8
  %add1489 = add nsw i64 0, %223
  %mul1490 = mul nsw i64 0, %add1489
  %sub1491 = sub nsw i64 %mul1490, 1
  %cmp1492 = icmp slt i64 %sub1491, 0
  br i1 %cmp1492, label %cond.true.1494, label %cond.false.1511

cond.true.1494:                                   ; preds = %cond.true.1488
  %224 = load i64, i64* %len, align 8
  %add1495 = add nsw i64 0, %224
  %mul1496 = mul nsw i64 0, %add1495
  %add1497 = add nsw i64 %mul1496, 0
  %neg1498 = xor i64 %add1497, -1
  %cmp1499 = icmp eq i64 %neg1498, -1
  %conv1500 = zext i1 %cmp1499 to i32
  %sub1501 = sub nsw i32 0, %conv1500
  %conv1502 = sext i32 %sub1501 to i64
  %225 = load i64, i64* %len, align 8
  %add1503 = add nsw i64 0, %225
  %mul1504 = mul nsw i64 0, %add1503
  %add1505 = add nsw i64 %mul1504, 1
  %shl1506 = shl i64 %add1505, 62
  %sub1507 = sub nsw i64 %shl1506, 1
  %mul1508 = mul nsw i64 %sub1507, 2
  %add1509 = add nsw i64 %mul1508, 1
  %sub1510 = sub nsw i64 %conv1502, %add1509
  br label %cond.end.1515

cond.false.1511:                                  ; preds = %cond.true.1488
  %226 = load i64, i64* %len, align 8
  %add1512 = add nsw i64 0, %226
  %mul1513 = mul nsw i64 0, %add1512
  %add1514 = add nsw i64 %mul1513, 0
  br label %cond.end.1515

cond.end.1515:                                    ; preds = %cond.false.1511, %cond.true.1494
  %cond1516 = phi i64 [ %sub1510, %cond.true.1494 ], [ %add1514, %cond.false.1511 ]
  %div1517 = sdiv i64 %cond1516, 8
  %cmp1518 = icmp slt i64 %222, %div1517
  br i1 %cmp1518, label %cond.true.1557, label %lor.lhs.false.1543

cond.false.1520:                                  ; preds = %cond.false.1485
  %227 = load i64, i64* %len, align 8
  %add1521 = add nsw i64 0, %227
  %mul1522 = mul nsw i64 0, %add1521
  %sub1523 = sub nsw i64 %mul1522, 1
  %cmp1524 = icmp slt i64 %sub1523, 0
  br i1 %cmp1524, label %cond.true.1526, label %cond.false.1534

cond.true.1526:                                   ; preds = %cond.false.1520
  %228 = load i64, i64* %len, align 8
  %add1527 = add nsw i64 0, %228
  %mul1528 = mul nsw i64 0, %add1527
  %add1529 = add nsw i64 %mul1528, 1
  %shl1530 = shl i64 %add1529, 62
  %sub1531 = sub nsw i64 %shl1530, 1
  %mul1532 = mul nsw i64 %sub1531, 2
  %add1533 = add nsw i64 %mul1532, 1
  br label %cond.end.1538

cond.false.1534:                                  ; preds = %cond.false.1520
  %229 = load i64, i64* %len, align 8
  %add1535 = add nsw i64 0, %229
  %mul1536 = mul nsw i64 0, %add1535
  %sub1537 = sub nsw i64 %mul1536, 1
  br label %cond.end.1538

cond.end.1538:                                    ; preds = %cond.false.1534, %cond.true.1526
  %cond1539 = phi i64 [ %add1533, %cond.true.1526 ], [ %sub1537, %cond.false.1534 ]
  %div1540 = sdiv i64 %cond1539, 8
  %230 = load i64, i64* %len, align 8
  %cmp1541 = icmp slt i64 %div1540, %230
  br i1 %cmp1541, label %cond.true.1557, label %lor.lhs.false.1543

lor.lhs.false.1543:                               ; preds = %cond.end.1538, %cond.end.1515, %cond.true.1484, %cond.end.1478, %cond.true.1450, %cond.end.1444
  %231 = load i64, i64* %len, align 8
  %mul1544 = mul nsw i64 %231, 8
  %mul1545 = mul nsw i64 0, %mul1544
  %sub1546 = sub nsw i64 %mul1545, 1
  %cmp1547 = icmp slt i64 %sub1546, 0
  br i1 %cmp1547, label %land.lhs.true.1549, label %lor.lhs.false.1553

land.lhs.true.1549:                               ; preds = %lor.lhs.false.1543
  %232 = load i64, i64* %len, align 8
  %mul1550 = mul nsw i64 %232, 8
  %cmp1551 = icmp slt i64 %mul1550, -9223372036854775808
  br i1 %cmp1551, label %cond.true.1557, label %lor.lhs.false.1553

lor.lhs.false.1553:                               ; preds = %land.lhs.true.1549, %lor.lhs.false.1543
  %233 = load i64, i64* %len, align 8
  %mul1554 = mul nsw i64 %233, 8
  %cmp1555 = icmp slt i64 9223372036854775807, %mul1554
  br i1 %cmp1555, label %cond.true.1557, label %cond.false.1569

cond.true.1557:                                   ; preds = %lor.lhs.false.1553, %land.lhs.true.1549, %cond.end.1538, %cond.end.1515, %cond.true.1484, %cond.end.1478, %cond.true.1450, %cond.end.1444, %land.lhs.true.1419
  %234 = load i64, i64* %len, align 8
  %mul1558 = mul i64 %234, 8
  %cmp1559 = icmp ule i64 %mul1558, 9223372036854775807
  br i1 %cmp1559, label %cond.true.1561, label %cond.false.1563

cond.true.1561:                                   ; preds = %cond.true.1557
  %235 = load i64, i64* %len, align 8
  %mul1562 = mul i64 %235, 8
  br label %cond.end.1567

cond.false.1563:                                  ; preds = %cond.true.1557
  %236 = load i64, i64* %len, align 8
  %mul1564 = mul i64 %236, 8
  %sub1565 = sub i64 %mul1564, -9223372036854775808
  %add1566 = add nsw i64 %sub1565, -9223372036854775808
  br label %cond.end.1567

cond.end.1567:                                    ; preds = %cond.false.1563, %cond.true.1561
  %cond1568 = phi i64 [ %mul1562, %cond.true.1561 ], [ %add1566, %cond.false.1563 ]
  store i64 %cond1568, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then, label %lor.lhs.false.2161

cond.false.1569:                                  ; preds = %lor.lhs.false.1553
  %237 = load i64, i64* %len, align 8
  %mul1570 = mul i64 %237, 8
  %cmp1571 = icmp ule i64 %mul1570, 9223372036854775807
  br i1 %cmp1571, label %cond.true.1573, label %cond.false.1575

cond.true.1573:                                   ; preds = %cond.false.1569
  %238 = load i64, i64* %len, align 8
  %mul1574 = mul i64 %238, 8
  br label %cond.end.1579

cond.false.1575:                                  ; preds = %cond.false.1569
  %239 = load i64, i64* %len, align 8
  %mul1576 = mul i64 %239, 8
  %sub1577 = sub i64 %mul1576, -9223372036854775808
  %add1578 = add nsw i64 %sub1577, -9223372036854775808
  br label %cond.end.1579

cond.end.1579:                                    ; preds = %cond.false.1575, %cond.true.1573
  %cond1580 = phi i64 [ %mul1574, %cond.true.1573 ], [ %add1578, %cond.false.1575 ]
  store i64 %cond1580, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then, label %lor.lhs.false.2161

cond.false.1581:                                  ; preds = %cond.true.1387
  %240 = load i64, i64* %len, align 8
  %add1582 = add nsw i64 0, %240
  %mul1583 = mul nsw i64 0, %add1582
  %sub1584 = sub nsw i64 %mul1583, 1
  %cmp1585 = icmp slt i64 %sub1584, 0
  br i1 %cmp1585, label %cond.true.1587, label %cond.false.1604

cond.true.1587:                                   ; preds = %cond.false.1581
  %241 = load i64, i64* %len, align 8
  %add1588 = add nsw i64 0, %241
  %mul1589 = mul nsw i64 0, %add1588
  %add1590 = add nsw i64 %mul1589, 0
  %neg1591 = xor i64 %add1590, -1
  %cmp1592 = icmp eq i64 %neg1591, -1
  %conv1593 = zext i1 %cmp1592 to i32
  %sub1594 = sub nsw i32 0, %conv1593
  %conv1595 = sext i32 %sub1594 to i64
  %242 = load i64, i64* %len, align 8
  %add1596 = add nsw i64 0, %242
  %mul1597 = mul nsw i64 0, %add1596
  %add1598 = add nsw i64 %mul1597, 1
  %shl1599 = shl i64 %add1598, 62
  %sub1600 = sub nsw i64 %shl1599, 1
  %mul1601 = mul nsw i64 %sub1600, 2
  %add1602 = add nsw i64 %mul1601, 1
  %sub1603 = sub nsw i64 %conv1595, %add1602
  br label %cond.end.1608

cond.false.1604:                                  ; preds = %cond.false.1581
  %243 = load i64, i64* %len, align 8
  %add1605 = add nsw i64 0, %243
  %mul1606 = mul nsw i64 0, %add1605
  %add1607 = add nsw i64 %mul1606, 0
  br label %cond.end.1608

cond.end.1608:                                    ; preds = %cond.false.1604, %cond.true.1587
  %cond1609 = phi i64 [ %sub1603, %cond.true.1587 ], [ %add1607, %cond.false.1604 ]
  %cmp1610 = icmp eq i64 %cond1609, 0
  br i1 %cmp1610, label %land.lhs.true.1612, label %lor.lhs.false.1615

land.lhs.true.1612:                               ; preds = %cond.end.1608
  %244 = load i64, i64* %len, align 8
  %cmp1613 = icmp slt i64 %244, 0
  br i1 %cmp1613, label %cond.true.1750, label %lor.lhs.false.1615

lor.lhs.false.1615:                               ; preds = %land.lhs.true.1612, %cond.end.1608
  br i1 false, label %cond.true.1616, label %cond.false.1676

cond.true.1616:                                   ; preds = %lor.lhs.false.1615
  %245 = load i64, i64* %len, align 8
  %cmp1617 = icmp slt i64 %245, 0
  br i1 %cmp1617, label %cond.true.1619, label %cond.false.1642

cond.true.1619:                                   ; preds = %cond.true.1616
  %246 = load i64, i64* %len, align 8
  %247 = load i64, i64* %len, align 8
  %add1620 = add nsw i64 0, %247
  %mul1621 = mul nsw i64 0, %add1620
  %sub1622 = sub nsw i64 %mul1621, 1
  %cmp1623 = icmp slt i64 %sub1622, 0
  br i1 %cmp1623, label %cond.true.1625, label %cond.false.1633

cond.true.1625:                                   ; preds = %cond.true.1619
  %248 = load i64, i64* %len, align 8
  %add1626 = add nsw i64 0, %248
  %mul1627 = mul nsw i64 0, %add1626
  %add1628 = add nsw i64 %mul1627, 1
  %shl1629 = shl i64 %add1628, 62
  %sub1630 = sub nsw i64 %shl1629, 1
  %mul1631 = mul nsw i64 %sub1630, 2
  %add1632 = add nsw i64 %mul1631, 1
  br label %cond.end.1637

cond.false.1633:                                  ; preds = %cond.true.1619
  %249 = load i64, i64* %len, align 8
  %add1634 = add nsw i64 0, %249
  %mul1635 = mul nsw i64 0, %add1634
  %sub1636 = sub nsw i64 %mul1635, 1
  br label %cond.end.1637

cond.end.1637:                                    ; preds = %cond.false.1633, %cond.true.1625
  %cond1638 = phi i64 [ %add1632, %cond.true.1625 ], [ %sub1636, %cond.false.1633 ]
  %div1639 = sdiv i64 %cond1638, 8
  %cmp1640 = icmp slt i64 %246, %div1639
  br i1 %cmp1640, label %cond.true.1750, label %lor.lhs.false.1736

cond.false.1642:                                  ; preds = %cond.true.1616
  br i1 false, label %cond.true.1643, label %cond.false.1644

cond.true.1643:                                   ; preds = %cond.false.1642
  br i1 false, label %cond.true.1750, label %lor.lhs.false.1736

cond.false.1644:                                  ; preds = %cond.false.1642
  %250 = load i64, i64* %len, align 8
  %add1645 = add nsw i64 0, %250
  %mul1646 = mul nsw i64 0, %add1645
  %sub1647 = sub nsw i64 %mul1646, 1
  %cmp1648 = icmp slt i64 %sub1647, 0
  br i1 %cmp1648, label %cond.true.1650, label %cond.false.1667

cond.true.1650:                                   ; preds = %cond.false.1644
  %251 = load i64, i64* %len, align 8
  %add1651 = add nsw i64 0, %251
  %mul1652 = mul nsw i64 0, %add1651
  %add1653 = add nsw i64 %mul1652, 0
  %neg1654 = xor i64 %add1653, -1
  %cmp1655 = icmp eq i64 %neg1654, -1
  %conv1656 = zext i1 %cmp1655 to i32
  %sub1657 = sub nsw i32 0, %conv1656
  %conv1658 = sext i32 %sub1657 to i64
  %252 = load i64, i64* %len, align 8
  %add1659 = add nsw i64 0, %252
  %mul1660 = mul nsw i64 0, %add1659
  %add1661 = add nsw i64 %mul1660, 1
  %shl1662 = shl i64 %add1661, 62
  %sub1663 = sub nsw i64 %shl1662, 1
  %mul1664 = mul nsw i64 %sub1663, 2
  %add1665 = add nsw i64 %mul1664, 1
  %sub1666 = sub nsw i64 %conv1658, %add1665
  br label %cond.end.1671

cond.false.1667:                                  ; preds = %cond.false.1644
  %253 = load i64, i64* %len, align 8
  %add1668 = add nsw i64 0, %253
  %mul1669 = mul nsw i64 0, %add1668
  %add1670 = add nsw i64 %mul1669, 0
  br label %cond.end.1671

cond.end.1671:                                    ; preds = %cond.false.1667, %cond.true.1650
  %cond1672 = phi i64 [ %sub1666, %cond.true.1650 ], [ %add1670, %cond.false.1667 ]
  %div1673 = sdiv i64 %cond1672, 8
  %254 = load i64, i64* %len, align 8
  %cmp1674 = icmp slt i64 %div1673, %254
  br i1 %cmp1674, label %cond.true.1750, label %lor.lhs.false.1736

cond.false.1676:                                  ; preds = %lor.lhs.false.1615
  br i1 false, label %cond.true.1677, label %cond.false.1678

cond.true.1677:                                   ; preds = %cond.false.1676
  br i1 false, label %cond.true.1750, label %lor.lhs.false.1736

cond.false.1678:                                  ; preds = %cond.false.1676
  %255 = load i64, i64* %len, align 8
  %cmp1679 = icmp slt i64 %255, 0
  br i1 %cmp1679, label %cond.true.1681, label %cond.false.1713

cond.true.1681:                                   ; preds = %cond.false.1678
  %256 = load i64, i64* %len, align 8
  %257 = load i64, i64* %len, align 8
  %add1682 = add nsw i64 0, %257
  %mul1683 = mul nsw i64 0, %add1682
  %sub1684 = sub nsw i64 %mul1683, 1
  %cmp1685 = icmp slt i64 %sub1684, 0
  br i1 %cmp1685, label %cond.true.1687, label %cond.false.1704

cond.true.1687:                                   ; preds = %cond.true.1681
  %258 = load i64, i64* %len, align 8
  %add1688 = add nsw i64 0, %258
  %mul1689 = mul nsw i64 0, %add1688
  %add1690 = add nsw i64 %mul1689, 0
  %neg1691 = xor i64 %add1690, -1
  %cmp1692 = icmp eq i64 %neg1691, -1
  %conv1693 = zext i1 %cmp1692 to i32
  %sub1694 = sub nsw i32 0, %conv1693
  %conv1695 = sext i32 %sub1694 to i64
  %259 = load i64, i64* %len, align 8
  %add1696 = add nsw i64 0, %259
  %mul1697 = mul nsw i64 0, %add1696
  %add1698 = add nsw i64 %mul1697, 1
  %shl1699 = shl i64 %add1698, 62
  %sub1700 = sub nsw i64 %shl1699, 1
  %mul1701 = mul nsw i64 %sub1700, 2
  %add1702 = add nsw i64 %mul1701, 1
  %sub1703 = sub nsw i64 %conv1695, %add1702
  br label %cond.end.1708

cond.false.1704:                                  ; preds = %cond.true.1681
  %260 = load i64, i64* %len, align 8
  %add1705 = add nsw i64 0, %260
  %mul1706 = mul nsw i64 0, %add1705
  %add1707 = add nsw i64 %mul1706, 0
  br label %cond.end.1708

cond.end.1708:                                    ; preds = %cond.false.1704, %cond.true.1687
  %cond1709 = phi i64 [ %sub1703, %cond.true.1687 ], [ %add1707, %cond.false.1704 ]
  %div1710 = sdiv i64 %cond1709, 8
  %cmp1711 = icmp slt i64 %256, %div1710
  br i1 %cmp1711, label %cond.true.1750, label %lor.lhs.false.1736

cond.false.1713:                                  ; preds = %cond.false.1678
  %261 = load i64, i64* %len, align 8
  %add1714 = add nsw i64 0, %261
  %mul1715 = mul nsw i64 0, %add1714
  %sub1716 = sub nsw i64 %mul1715, 1
  %cmp1717 = icmp slt i64 %sub1716, 0
  br i1 %cmp1717, label %cond.true.1719, label %cond.false.1727

cond.true.1719:                                   ; preds = %cond.false.1713
  %262 = load i64, i64* %len, align 8
  %add1720 = add nsw i64 0, %262
  %mul1721 = mul nsw i64 0, %add1720
  %add1722 = add nsw i64 %mul1721, 1
  %shl1723 = shl i64 %add1722, 62
  %sub1724 = sub nsw i64 %shl1723, 1
  %mul1725 = mul nsw i64 %sub1724, 2
  %add1726 = add nsw i64 %mul1725, 1
  br label %cond.end.1731

cond.false.1727:                                  ; preds = %cond.false.1713
  %263 = load i64, i64* %len, align 8
  %add1728 = add nsw i64 0, %263
  %mul1729 = mul nsw i64 0, %add1728
  %sub1730 = sub nsw i64 %mul1729, 1
  br label %cond.end.1731

cond.end.1731:                                    ; preds = %cond.false.1727, %cond.true.1719
  %cond1732 = phi i64 [ %add1726, %cond.true.1719 ], [ %sub1730, %cond.false.1727 ]
  %div1733 = sdiv i64 %cond1732, 8
  %264 = load i64, i64* %len, align 8
  %cmp1734 = icmp slt i64 %div1733, %264
  br i1 %cmp1734, label %cond.true.1750, label %lor.lhs.false.1736

lor.lhs.false.1736:                               ; preds = %cond.end.1731, %cond.end.1708, %cond.true.1677, %cond.end.1671, %cond.true.1643, %cond.end.1637
  %265 = load i64, i64* %len, align 8
  %mul1737 = mul nsw i64 %265, 8
  %mul1738 = mul nsw i64 0, %mul1737
  %sub1739 = sub nsw i64 %mul1738, 1
  %cmp1740 = icmp slt i64 %sub1739, 0
  br i1 %cmp1740, label %land.lhs.true.1742, label %lor.lhs.false.1746

land.lhs.true.1742:                               ; preds = %lor.lhs.false.1736
  %266 = load i64, i64* %len, align 8
  %mul1743 = mul nsw i64 %266, 8
  %cmp1744 = icmp slt i64 %mul1743, -9223372036854775808
  br i1 %cmp1744, label %cond.true.1750, label %lor.lhs.false.1746

lor.lhs.false.1746:                               ; preds = %land.lhs.true.1742, %lor.lhs.false.1736
  %267 = load i64, i64* %len, align 8
  %mul1747 = mul nsw i64 %267, 8
  %cmp1748 = icmp slt i64 9223372036854775807, %mul1747
  br i1 %cmp1748, label %cond.true.1750, label %cond.false.1762

cond.true.1750:                                   ; preds = %lor.lhs.false.1746, %land.lhs.true.1742, %cond.end.1731, %cond.end.1708, %cond.true.1677, %cond.end.1671, %cond.true.1643, %cond.end.1637, %land.lhs.true.1612
  %268 = load i64, i64* %len, align 8
  %mul1751 = mul i64 %268, 8
  %cmp1752 = icmp ule i64 %mul1751, 9223372036854775807
  br i1 %cmp1752, label %cond.true.1754, label %cond.false.1756

cond.true.1754:                                   ; preds = %cond.true.1750
  %269 = load i64, i64* %len, align 8
  %mul1755 = mul i64 %269, 8
  br label %cond.end.1760

cond.false.1756:                                  ; preds = %cond.true.1750
  %270 = load i64, i64* %len, align 8
  %mul1757 = mul i64 %270, 8
  %sub1758 = sub i64 %mul1757, -9223372036854775808
  %add1759 = add nsw i64 %sub1758, -9223372036854775808
  br label %cond.end.1760

cond.end.1760:                                    ; preds = %cond.false.1756, %cond.true.1754
  %cond1761 = phi i64 [ %mul1755, %cond.true.1754 ], [ %add1759, %cond.false.1756 ]
  store i64 %cond1761, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then, label %lor.lhs.false.2161

cond.false.1762:                                  ; preds = %lor.lhs.false.1746
  %271 = load i64, i64* %len, align 8
  %mul1763 = mul i64 %271, 8
  %cmp1764 = icmp ule i64 %mul1763, 9223372036854775807
  br i1 %cmp1764, label %cond.true.1766, label %cond.false.1768

cond.true.1766:                                   ; preds = %cond.false.1762
  %272 = load i64, i64* %len, align 8
  %mul1767 = mul i64 %272, 8
  br label %cond.end.1772

cond.false.1768:                                  ; preds = %cond.false.1762
  %273 = load i64, i64* %len, align 8
  %mul1769 = mul i64 %273, 8
  %sub1770 = sub i64 %mul1769, -9223372036854775808
  %add1771 = add nsw i64 %sub1770, -9223372036854775808
  br label %cond.end.1772

cond.end.1772:                                    ; preds = %cond.false.1768, %cond.true.1766
  %cond1773 = phi i64 [ %mul1767, %cond.true.1766 ], [ %add1771, %cond.false.1768 ]
  store i64 %cond1773, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then, label %lor.lhs.false.2161

cond.false.1774:                                  ; preds = %cond.false.1386
  br i1 false, label %cond.true.1775, label %cond.false.1968

cond.true.1775:                                   ; preds = %cond.false.1774
  %274 = load i64, i64* %len, align 8
  %add1776 = add nsw i64 0, %274
  %mul1777 = mul nsw i64 0, %add1776
  %sub1778 = sub nsw i64 %mul1777, 1
  %cmp1779 = icmp slt i64 %sub1778, 0
  br i1 %cmp1779, label %cond.true.1781, label %cond.false.1798

cond.true.1781:                                   ; preds = %cond.true.1775
  %275 = load i64, i64* %len, align 8
  %add1782 = add nsw i64 0, %275
  %mul1783 = mul nsw i64 0, %add1782
  %add1784 = add nsw i64 %mul1783, 0
  %neg1785 = xor i64 %add1784, -1
  %cmp1786 = icmp eq i64 %neg1785, -1
  %conv1787 = zext i1 %cmp1786 to i32
  %sub1788 = sub nsw i32 0, %conv1787
  %conv1789 = sext i32 %sub1788 to i64
  %276 = load i64, i64* %len, align 8
  %add1790 = add nsw i64 0, %276
  %mul1791 = mul nsw i64 0, %add1790
  %add1792 = add nsw i64 %mul1791, 1
  %shl1793 = shl i64 %add1792, 62
  %sub1794 = sub nsw i64 %shl1793, 1
  %mul1795 = mul nsw i64 %sub1794, 2
  %add1796 = add nsw i64 %mul1795, 1
  %sub1797 = sub nsw i64 %conv1789, %add1796
  br label %cond.end.1802

cond.false.1798:                                  ; preds = %cond.true.1775
  %277 = load i64, i64* %len, align 8
  %add1799 = add nsw i64 0, %277
  %mul1800 = mul nsw i64 0, %add1799
  %add1801 = add nsw i64 %mul1800, 0
  br label %cond.end.1802

cond.end.1802:                                    ; preds = %cond.false.1798, %cond.true.1781
  %cond1803 = phi i64 [ %sub1797, %cond.true.1781 ], [ %add1801, %cond.false.1798 ]
  %cmp1804 = icmp eq i64 %cond1803, 0
  br i1 %cmp1804, label %land.lhs.true.1806, label %lor.lhs.false.1809

land.lhs.true.1806:                               ; preds = %cond.end.1802
  %278 = load i64, i64* %len, align 8
  %cmp1807 = icmp slt i64 %278, 0
  br i1 %cmp1807, label %cond.true.1944, label %lor.lhs.false.1809

lor.lhs.false.1809:                               ; preds = %land.lhs.true.1806, %cond.end.1802
  br i1 false, label %cond.true.1810, label %cond.false.1870

cond.true.1810:                                   ; preds = %lor.lhs.false.1809
  %279 = load i64, i64* %len, align 8
  %cmp1811 = icmp slt i64 %279, 0
  br i1 %cmp1811, label %cond.true.1813, label %cond.false.1836

cond.true.1813:                                   ; preds = %cond.true.1810
  %280 = load i64, i64* %len, align 8
  %281 = load i64, i64* %len, align 8
  %add1814 = add nsw i64 0, %281
  %mul1815 = mul nsw i64 0, %add1814
  %sub1816 = sub nsw i64 %mul1815, 1
  %cmp1817 = icmp slt i64 %sub1816, 0
  br i1 %cmp1817, label %cond.true.1819, label %cond.false.1827

cond.true.1819:                                   ; preds = %cond.true.1813
  %282 = load i64, i64* %len, align 8
  %add1820 = add nsw i64 0, %282
  %mul1821 = mul nsw i64 0, %add1820
  %add1822 = add nsw i64 %mul1821, 1
  %shl1823 = shl i64 %add1822, 62
  %sub1824 = sub nsw i64 %shl1823, 1
  %mul1825 = mul nsw i64 %sub1824, 2
  %add1826 = add nsw i64 %mul1825, 1
  br label %cond.end.1831

cond.false.1827:                                  ; preds = %cond.true.1813
  %283 = load i64, i64* %len, align 8
  %add1828 = add nsw i64 0, %283
  %mul1829 = mul nsw i64 0, %add1828
  %sub1830 = sub nsw i64 %mul1829, 1
  br label %cond.end.1831

cond.end.1831:                                    ; preds = %cond.false.1827, %cond.true.1819
  %cond1832 = phi i64 [ %add1826, %cond.true.1819 ], [ %sub1830, %cond.false.1827 ]
  %div1833 = sdiv i64 %cond1832, 8
  %cmp1834 = icmp slt i64 %280, %div1833
  br i1 %cmp1834, label %cond.true.1944, label %lor.lhs.false.1930

cond.false.1836:                                  ; preds = %cond.true.1810
  br i1 false, label %cond.true.1837, label %cond.false.1838

cond.true.1837:                                   ; preds = %cond.false.1836
  br i1 false, label %cond.true.1944, label %lor.lhs.false.1930

cond.false.1838:                                  ; preds = %cond.false.1836
  %284 = load i64, i64* %len, align 8
  %add1839 = add nsw i64 0, %284
  %mul1840 = mul nsw i64 0, %add1839
  %sub1841 = sub nsw i64 %mul1840, 1
  %cmp1842 = icmp slt i64 %sub1841, 0
  br i1 %cmp1842, label %cond.true.1844, label %cond.false.1861

cond.true.1844:                                   ; preds = %cond.false.1838
  %285 = load i64, i64* %len, align 8
  %add1845 = add nsw i64 0, %285
  %mul1846 = mul nsw i64 0, %add1845
  %add1847 = add nsw i64 %mul1846, 0
  %neg1848 = xor i64 %add1847, -1
  %cmp1849 = icmp eq i64 %neg1848, -1
  %conv1850 = zext i1 %cmp1849 to i32
  %sub1851 = sub nsw i32 0, %conv1850
  %conv1852 = sext i32 %sub1851 to i64
  %286 = load i64, i64* %len, align 8
  %add1853 = add nsw i64 0, %286
  %mul1854 = mul nsw i64 0, %add1853
  %add1855 = add nsw i64 %mul1854, 1
  %shl1856 = shl i64 %add1855, 62
  %sub1857 = sub nsw i64 %shl1856, 1
  %mul1858 = mul nsw i64 %sub1857, 2
  %add1859 = add nsw i64 %mul1858, 1
  %sub1860 = sub nsw i64 %conv1852, %add1859
  br label %cond.end.1865

cond.false.1861:                                  ; preds = %cond.false.1838
  %287 = load i64, i64* %len, align 8
  %add1862 = add nsw i64 0, %287
  %mul1863 = mul nsw i64 0, %add1862
  %add1864 = add nsw i64 %mul1863, 0
  br label %cond.end.1865

cond.end.1865:                                    ; preds = %cond.false.1861, %cond.true.1844
  %cond1866 = phi i64 [ %sub1860, %cond.true.1844 ], [ %add1864, %cond.false.1861 ]
  %div1867 = sdiv i64 %cond1866, 8
  %288 = load i64, i64* %len, align 8
  %cmp1868 = icmp slt i64 %div1867, %288
  br i1 %cmp1868, label %cond.true.1944, label %lor.lhs.false.1930

cond.false.1870:                                  ; preds = %lor.lhs.false.1809
  br i1 false, label %cond.true.1871, label %cond.false.1872

cond.true.1871:                                   ; preds = %cond.false.1870
  br i1 false, label %cond.true.1944, label %lor.lhs.false.1930

cond.false.1872:                                  ; preds = %cond.false.1870
  %289 = load i64, i64* %len, align 8
  %cmp1873 = icmp slt i64 %289, 0
  br i1 %cmp1873, label %cond.true.1875, label %cond.false.1907

cond.true.1875:                                   ; preds = %cond.false.1872
  %290 = load i64, i64* %len, align 8
  %291 = load i64, i64* %len, align 8
  %add1876 = add nsw i64 0, %291
  %mul1877 = mul nsw i64 0, %add1876
  %sub1878 = sub nsw i64 %mul1877, 1
  %cmp1879 = icmp slt i64 %sub1878, 0
  br i1 %cmp1879, label %cond.true.1881, label %cond.false.1898

cond.true.1881:                                   ; preds = %cond.true.1875
  %292 = load i64, i64* %len, align 8
  %add1882 = add nsw i64 0, %292
  %mul1883 = mul nsw i64 0, %add1882
  %add1884 = add nsw i64 %mul1883, 0
  %neg1885 = xor i64 %add1884, -1
  %cmp1886 = icmp eq i64 %neg1885, -1
  %conv1887 = zext i1 %cmp1886 to i32
  %sub1888 = sub nsw i32 0, %conv1887
  %conv1889 = sext i32 %sub1888 to i64
  %293 = load i64, i64* %len, align 8
  %add1890 = add nsw i64 0, %293
  %mul1891 = mul nsw i64 0, %add1890
  %add1892 = add nsw i64 %mul1891, 1
  %shl1893 = shl i64 %add1892, 62
  %sub1894 = sub nsw i64 %shl1893, 1
  %mul1895 = mul nsw i64 %sub1894, 2
  %add1896 = add nsw i64 %mul1895, 1
  %sub1897 = sub nsw i64 %conv1889, %add1896
  br label %cond.end.1902

cond.false.1898:                                  ; preds = %cond.true.1875
  %294 = load i64, i64* %len, align 8
  %add1899 = add nsw i64 0, %294
  %mul1900 = mul nsw i64 0, %add1899
  %add1901 = add nsw i64 %mul1900, 0
  br label %cond.end.1902

cond.end.1902:                                    ; preds = %cond.false.1898, %cond.true.1881
  %cond1903 = phi i64 [ %sub1897, %cond.true.1881 ], [ %add1901, %cond.false.1898 ]
  %div1904 = sdiv i64 %cond1903, 8
  %cmp1905 = icmp slt i64 %290, %div1904
  br i1 %cmp1905, label %cond.true.1944, label %lor.lhs.false.1930

cond.false.1907:                                  ; preds = %cond.false.1872
  %295 = load i64, i64* %len, align 8
  %add1908 = add nsw i64 0, %295
  %mul1909 = mul nsw i64 0, %add1908
  %sub1910 = sub nsw i64 %mul1909, 1
  %cmp1911 = icmp slt i64 %sub1910, 0
  br i1 %cmp1911, label %cond.true.1913, label %cond.false.1921

cond.true.1913:                                   ; preds = %cond.false.1907
  %296 = load i64, i64* %len, align 8
  %add1914 = add nsw i64 0, %296
  %mul1915 = mul nsw i64 0, %add1914
  %add1916 = add nsw i64 %mul1915, 1
  %shl1917 = shl i64 %add1916, 62
  %sub1918 = sub nsw i64 %shl1917, 1
  %mul1919 = mul nsw i64 %sub1918, 2
  %add1920 = add nsw i64 %mul1919, 1
  br label %cond.end.1925

cond.false.1921:                                  ; preds = %cond.false.1907
  %297 = load i64, i64* %len, align 8
  %add1922 = add nsw i64 0, %297
  %mul1923 = mul nsw i64 0, %add1922
  %sub1924 = sub nsw i64 %mul1923, 1
  br label %cond.end.1925

cond.end.1925:                                    ; preds = %cond.false.1921, %cond.true.1913
  %cond1926 = phi i64 [ %add1920, %cond.true.1913 ], [ %sub1924, %cond.false.1921 ]
  %div1927 = sdiv i64 %cond1926, 8
  %298 = load i64, i64* %len, align 8
  %cmp1928 = icmp slt i64 %div1927, %298
  br i1 %cmp1928, label %cond.true.1944, label %lor.lhs.false.1930

lor.lhs.false.1930:                               ; preds = %cond.end.1925, %cond.end.1902, %cond.true.1871, %cond.end.1865, %cond.true.1837, %cond.end.1831
  %299 = load i64, i64* %len, align 8
  %mul1931 = mul nsw i64 %299, 8
  %mul1932 = mul nsw i64 0, %mul1931
  %sub1933 = sub nsw i64 %mul1932, 1
  %cmp1934 = icmp slt i64 %sub1933, 0
  br i1 %cmp1934, label %land.lhs.true.1936, label %lor.lhs.false.1940

land.lhs.true.1936:                               ; preds = %lor.lhs.false.1930
  %300 = load i64, i64* %len, align 8
  %mul1937 = mul nsw i64 %300, 8
  %cmp1938 = icmp slt i64 %mul1937, -9223372036854775808
  br i1 %cmp1938, label %cond.true.1944, label %lor.lhs.false.1940

lor.lhs.false.1940:                               ; preds = %land.lhs.true.1936, %lor.lhs.false.1930
  %301 = load i64, i64* %len, align 8
  %mul1941 = mul nsw i64 %301, 8
  %cmp1942 = icmp slt i64 9223372036854775807, %mul1941
  br i1 %cmp1942, label %cond.true.1944, label %cond.false.1956

cond.true.1944:                                   ; preds = %lor.lhs.false.1940, %land.lhs.true.1936, %cond.end.1925, %cond.end.1902, %cond.true.1871, %cond.end.1865, %cond.true.1837, %cond.end.1831, %land.lhs.true.1806
  %302 = load i64, i64* %len, align 8
  %mul1945 = mul i64 %302, 8
  %cmp1946 = icmp ule i64 %mul1945, 9223372036854775807
  br i1 %cmp1946, label %cond.true.1948, label %cond.false.1950

cond.true.1948:                                   ; preds = %cond.true.1944
  %303 = load i64, i64* %len, align 8
  %mul1949 = mul i64 %303, 8
  br label %cond.end.1954

cond.false.1950:                                  ; preds = %cond.true.1944
  %304 = load i64, i64* %len, align 8
  %mul1951 = mul i64 %304, 8
  %sub1952 = sub i64 %mul1951, -9223372036854775808
  %add1953 = add nsw i64 %sub1952, -9223372036854775808
  br label %cond.end.1954

cond.end.1954:                                    ; preds = %cond.false.1950, %cond.true.1948
  %cond1955 = phi i64 [ %mul1949, %cond.true.1948 ], [ %add1953, %cond.false.1950 ]
  store i64 %cond1955, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then, label %lor.lhs.false.2161

cond.false.1956:                                  ; preds = %lor.lhs.false.1940
  %305 = load i64, i64* %len, align 8
  %mul1957 = mul i64 %305, 8
  %cmp1958 = icmp ule i64 %mul1957, 9223372036854775807
  br i1 %cmp1958, label %cond.true.1960, label %cond.false.1962

cond.true.1960:                                   ; preds = %cond.false.1956
  %306 = load i64, i64* %len, align 8
  %mul1961 = mul i64 %306, 8
  br label %cond.end.1966

cond.false.1962:                                  ; preds = %cond.false.1956
  %307 = load i64, i64* %len, align 8
  %mul1963 = mul i64 %307, 8
  %sub1964 = sub i64 %mul1963, -9223372036854775808
  %add1965 = add nsw i64 %sub1964, -9223372036854775808
  br label %cond.end.1966

cond.end.1966:                                    ; preds = %cond.false.1962, %cond.true.1960
  %cond1967 = phi i64 [ %mul1961, %cond.true.1960 ], [ %add1965, %cond.false.1962 ]
  store i64 %cond1967, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then, label %lor.lhs.false.2161

cond.false.1968:                                  ; preds = %cond.false.1774
  %308 = load i64, i64* %len, align 8
  %add1969 = add nsw i64 0, %308
  %mul1970 = mul nsw i64 0, %add1969
  %sub1971 = sub nsw i64 %mul1970, 1
  %cmp1972 = icmp slt i64 %sub1971, 0
  br i1 %cmp1972, label %cond.true.1974, label %cond.false.1991

cond.true.1974:                                   ; preds = %cond.false.1968
  %309 = load i64, i64* %len, align 8
  %add1975 = add nsw i64 0, %309
  %mul1976 = mul nsw i64 0, %add1975
  %add1977 = add nsw i64 %mul1976, 0
  %neg1978 = xor i64 %add1977, -1
  %cmp1979 = icmp eq i64 %neg1978, -1
  %conv1980 = zext i1 %cmp1979 to i32
  %sub1981 = sub nsw i32 0, %conv1980
  %conv1982 = sext i32 %sub1981 to i64
  %310 = load i64, i64* %len, align 8
  %add1983 = add nsw i64 0, %310
  %mul1984 = mul nsw i64 0, %add1983
  %add1985 = add nsw i64 %mul1984, 1
  %shl1986 = shl i64 %add1985, 62
  %sub1987 = sub nsw i64 %shl1986, 1
  %mul1988 = mul nsw i64 %sub1987, 2
  %add1989 = add nsw i64 %mul1988, 1
  %sub1990 = sub nsw i64 %conv1982, %add1989
  br label %cond.end.1995

cond.false.1991:                                  ; preds = %cond.false.1968
  %311 = load i64, i64* %len, align 8
  %add1992 = add nsw i64 0, %311
  %mul1993 = mul nsw i64 0, %add1992
  %add1994 = add nsw i64 %mul1993, 0
  br label %cond.end.1995

cond.end.1995:                                    ; preds = %cond.false.1991, %cond.true.1974
  %cond1996 = phi i64 [ %sub1990, %cond.true.1974 ], [ %add1994, %cond.false.1991 ]
  %cmp1997 = icmp eq i64 %cond1996, 0
  br i1 %cmp1997, label %land.lhs.true.1999, label %lor.lhs.false.2002

land.lhs.true.1999:                               ; preds = %cond.end.1995
  %312 = load i64, i64* %len, align 8
  %cmp2000 = icmp slt i64 %312, 0
  br i1 %cmp2000, label %cond.true.2137, label %lor.lhs.false.2002

lor.lhs.false.2002:                               ; preds = %land.lhs.true.1999, %cond.end.1995
  br i1 false, label %cond.true.2003, label %cond.false.2063

cond.true.2003:                                   ; preds = %lor.lhs.false.2002
  %313 = load i64, i64* %len, align 8
  %cmp2004 = icmp slt i64 %313, 0
  br i1 %cmp2004, label %cond.true.2006, label %cond.false.2029

cond.true.2006:                                   ; preds = %cond.true.2003
  %314 = load i64, i64* %len, align 8
  %315 = load i64, i64* %len, align 8
  %add2007 = add nsw i64 0, %315
  %mul2008 = mul nsw i64 0, %add2007
  %sub2009 = sub nsw i64 %mul2008, 1
  %cmp2010 = icmp slt i64 %sub2009, 0
  br i1 %cmp2010, label %cond.true.2012, label %cond.false.2020

cond.true.2012:                                   ; preds = %cond.true.2006
  %316 = load i64, i64* %len, align 8
  %add2013 = add nsw i64 0, %316
  %mul2014 = mul nsw i64 0, %add2013
  %add2015 = add nsw i64 %mul2014, 1
  %shl2016 = shl i64 %add2015, 62
  %sub2017 = sub nsw i64 %shl2016, 1
  %mul2018 = mul nsw i64 %sub2017, 2
  %add2019 = add nsw i64 %mul2018, 1
  br label %cond.end.2024

cond.false.2020:                                  ; preds = %cond.true.2006
  %317 = load i64, i64* %len, align 8
  %add2021 = add nsw i64 0, %317
  %mul2022 = mul nsw i64 0, %add2021
  %sub2023 = sub nsw i64 %mul2022, 1
  br label %cond.end.2024

cond.end.2024:                                    ; preds = %cond.false.2020, %cond.true.2012
  %cond2025 = phi i64 [ %add2019, %cond.true.2012 ], [ %sub2023, %cond.false.2020 ]
  %div2026 = sdiv i64 %cond2025, 8
  %cmp2027 = icmp slt i64 %314, %div2026
  br i1 %cmp2027, label %cond.true.2137, label %lor.lhs.false.2123

cond.false.2029:                                  ; preds = %cond.true.2003
  br i1 false, label %cond.true.2030, label %cond.false.2031

cond.true.2030:                                   ; preds = %cond.false.2029
  br i1 false, label %cond.true.2137, label %lor.lhs.false.2123

cond.false.2031:                                  ; preds = %cond.false.2029
  %318 = load i64, i64* %len, align 8
  %add2032 = add nsw i64 0, %318
  %mul2033 = mul nsw i64 0, %add2032
  %sub2034 = sub nsw i64 %mul2033, 1
  %cmp2035 = icmp slt i64 %sub2034, 0
  br i1 %cmp2035, label %cond.true.2037, label %cond.false.2054

cond.true.2037:                                   ; preds = %cond.false.2031
  %319 = load i64, i64* %len, align 8
  %add2038 = add nsw i64 0, %319
  %mul2039 = mul nsw i64 0, %add2038
  %add2040 = add nsw i64 %mul2039, 0
  %neg2041 = xor i64 %add2040, -1
  %cmp2042 = icmp eq i64 %neg2041, -1
  %conv2043 = zext i1 %cmp2042 to i32
  %sub2044 = sub nsw i32 0, %conv2043
  %conv2045 = sext i32 %sub2044 to i64
  %320 = load i64, i64* %len, align 8
  %add2046 = add nsw i64 0, %320
  %mul2047 = mul nsw i64 0, %add2046
  %add2048 = add nsw i64 %mul2047, 1
  %shl2049 = shl i64 %add2048, 62
  %sub2050 = sub nsw i64 %shl2049, 1
  %mul2051 = mul nsw i64 %sub2050, 2
  %add2052 = add nsw i64 %mul2051, 1
  %sub2053 = sub nsw i64 %conv2045, %add2052
  br label %cond.end.2058

cond.false.2054:                                  ; preds = %cond.false.2031
  %321 = load i64, i64* %len, align 8
  %add2055 = add nsw i64 0, %321
  %mul2056 = mul nsw i64 0, %add2055
  %add2057 = add nsw i64 %mul2056, 0
  br label %cond.end.2058

cond.end.2058:                                    ; preds = %cond.false.2054, %cond.true.2037
  %cond2059 = phi i64 [ %sub2053, %cond.true.2037 ], [ %add2057, %cond.false.2054 ]
  %div2060 = sdiv i64 %cond2059, 8
  %322 = load i64, i64* %len, align 8
  %cmp2061 = icmp slt i64 %div2060, %322
  br i1 %cmp2061, label %cond.true.2137, label %lor.lhs.false.2123

cond.false.2063:                                  ; preds = %lor.lhs.false.2002
  br i1 false, label %cond.true.2064, label %cond.false.2065

cond.true.2064:                                   ; preds = %cond.false.2063
  br i1 false, label %cond.true.2137, label %lor.lhs.false.2123

cond.false.2065:                                  ; preds = %cond.false.2063
  %323 = load i64, i64* %len, align 8
  %cmp2066 = icmp slt i64 %323, 0
  br i1 %cmp2066, label %cond.true.2068, label %cond.false.2100

cond.true.2068:                                   ; preds = %cond.false.2065
  %324 = load i64, i64* %len, align 8
  %325 = load i64, i64* %len, align 8
  %add2069 = add nsw i64 0, %325
  %mul2070 = mul nsw i64 0, %add2069
  %sub2071 = sub nsw i64 %mul2070, 1
  %cmp2072 = icmp slt i64 %sub2071, 0
  br i1 %cmp2072, label %cond.true.2074, label %cond.false.2091

cond.true.2074:                                   ; preds = %cond.true.2068
  %326 = load i64, i64* %len, align 8
  %add2075 = add nsw i64 0, %326
  %mul2076 = mul nsw i64 0, %add2075
  %add2077 = add nsw i64 %mul2076, 0
  %neg2078 = xor i64 %add2077, -1
  %cmp2079 = icmp eq i64 %neg2078, -1
  %conv2080 = zext i1 %cmp2079 to i32
  %sub2081 = sub nsw i32 0, %conv2080
  %conv2082 = sext i32 %sub2081 to i64
  %327 = load i64, i64* %len, align 8
  %add2083 = add nsw i64 0, %327
  %mul2084 = mul nsw i64 0, %add2083
  %add2085 = add nsw i64 %mul2084, 1
  %shl2086 = shl i64 %add2085, 62
  %sub2087 = sub nsw i64 %shl2086, 1
  %mul2088 = mul nsw i64 %sub2087, 2
  %add2089 = add nsw i64 %mul2088, 1
  %sub2090 = sub nsw i64 %conv2082, %add2089
  br label %cond.end.2095

cond.false.2091:                                  ; preds = %cond.true.2068
  %328 = load i64, i64* %len, align 8
  %add2092 = add nsw i64 0, %328
  %mul2093 = mul nsw i64 0, %add2092
  %add2094 = add nsw i64 %mul2093, 0
  br label %cond.end.2095

cond.end.2095:                                    ; preds = %cond.false.2091, %cond.true.2074
  %cond2096 = phi i64 [ %sub2090, %cond.true.2074 ], [ %add2094, %cond.false.2091 ]
  %div2097 = sdiv i64 %cond2096, 8
  %cmp2098 = icmp slt i64 %324, %div2097
  br i1 %cmp2098, label %cond.true.2137, label %lor.lhs.false.2123

cond.false.2100:                                  ; preds = %cond.false.2065
  %329 = load i64, i64* %len, align 8
  %add2101 = add nsw i64 0, %329
  %mul2102 = mul nsw i64 0, %add2101
  %sub2103 = sub nsw i64 %mul2102, 1
  %cmp2104 = icmp slt i64 %sub2103, 0
  br i1 %cmp2104, label %cond.true.2106, label %cond.false.2114

cond.true.2106:                                   ; preds = %cond.false.2100
  %330 = load i64, i64* %len, align 8
  %add2107 = add nsw i64 0, %330
  %mul2108 = mul nsw i64 0, %add2107
  %add2109 = add nsw i64 %mul2108, 1
  %shl2110 = shl i64 %add2109, 62
  %sub2111 = sub nsw i64 %shl2110, 1
  %mul2112 = mul nsw i64 %sub2111, 2
  %add2113 = add nsw i64 %mul2112, 1
  br label %cond.end.2118

cond.false.2114:                                  ; preds = %cond.false.2100
  %331 = load i64, i64* %len, align 8
  %add2115 = add nsw i64 0, %331
  %mul2116 = mul nsw i64 0, %add2115
  %sub2117 = sub nsw i64 %mul2116, 1
  br label %cond.end.2118

cond.end.2118:                                    ; preds = %cond.false.2114, %cond.true.2106
  %cond2119 = phi i64 [ %add2113, %cond.true.2106 ], [ %sub2117, %cond.false.2114 ]
  %div2120 = sdiv i64 %cond2119, 8
  %332 = load i64, i64* %len, align 8
  %cmp2121 = icmp slt i64 %div2120, %332
  br i1 %cmp2121, label %cond.true.2137, label %lor.lhs.false.2123

lor.lhs.false.2123:                               ; preds = %cond.end.2118, %cond.end.2095, %cond.true.2064, %cond.end.2058, %cond.true.2030, %cond.end.2024
  %333 = load i64, i64* %len, align 8
  %mul2124 = mul nsw i64 %333, 8
  %mul2125 = mul nsw i64 0, %mul2124
  %sub2126 = sub nsw i64 %mul2125, 1
  %cmp2127 = icmp slt i64 %sub2126, 0
  br i1 %cmp2127, label %land.lhs.true.2129, label %lor.lhs.false.2133

land.lhs.true.2129:                               ; preds = %lor.lhs.false.2123
  %334 = load i64, i64* %len, align 8
  %mul2130 = mul nsw i64 %334, 8
  %cmp2131 = icmp slt i64 %mul2130, -9223372036854775808
  br i1 %cmp2131, label %cond.true.2137, label %lor.lhs.false.2133

lor.lhs.false.2133:                               ; preds = %land.lhs.true.2129, %lor.lhs.false.2123
  %335 = load i64, i64* %len, align 8
  %mul2134 = mul nsw i64 %335, 8
  %cmp2135 = icmp slt i64 9223372036854775807, %mul2134
  br i1 %cmp2135, label %cond.true.2137, label %cond.false.2149

cond.true.2137:                                   ; preds = %lor.lhs.false.2133, %land.lhs.true.2129, %cond.end.2118, %cond.end.2095, %cond.true.2064, %cond.end.2058, %cond.true.2030, %cond.end.2024, %land.lhs.true.1999
  %336 = load i64, i64* %len, align 8
  %mul2138 = mul i64 %336, 8
  %cmp2139 = icmp ule i64 %mul2138, 9223372036854775807
  br i1 %cmp2139, label %cond.true.2141, label %cond.false.2143

cond.true.2141:                                   ; preds = %cond.true.2137
  %337 = load i64, i64* %len, align 8
  %mul2142 = mul i64 %337, 8
  br label %cond.end.2147

cond.false.2143:                                  ; preds = %cond.true.2137
  %338 = load i64, i64* %len, align 8
  %mul2144 = mul i64 %338, 8
  %sub2145 = sub i64 %mul2144, -9223372036854775808
  %add2146 = add nsw i64 %sub2145, -9223372036854775808
  br label %cond.end.2147

cond.end.2147:                                    ; preds = %cond.false.2143, %cond.true.2141
  %cond2148 = phi i64 [ %mul2142, %cond.true.2141 ], [ %add2146, %cond.false.2143 ]
  store i64 %cond2148, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then, label %lor.lhs.false.2161

cond.false.2149:                                  ; preds = %lor.lhs.false.2133
  %339 = load i64, i64* %len, align 8
  %mul2150 = mul i64 %339, 8
  %cmp2151 = icmp ule i64 %mul2150, 9223372036854775807
  br i1 %cmp2151, label %cond.true.2153, label %cond.false.2155

cond.true.2153:                                   ; preds = %cond.false.2149
  %340 = load i64, i64* %len, align 8
  %mul2154 = mul i64 %340, 8
  br label %cond.end.2159

cond.false.2155:                                  ; preds = %cond.false.2149
  %341 = load i64, i64* %len, align 8
  %mul2156 = mul i64 %341, 8
  %sub2157 = sub i64 %mul2156, -9223372036854775808
  %add2158 = add nsw i64 %sub2157, -9223372036854775808
  br label %cond.end.2159

cond.end.2159:                                    ; preds = %cond.false.2155, %cond.true.2153
  %cond2160 = phi i64 [ %mul2154, %cond.true.2153 ], [ %add2158, %cond.false.2155 ]
  store i64 %cond2160, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then, label %lor.lhs.false.2161

lor.lhs.false.2161:                               ; preds = %cond.end.2159, %cond.end.2147, %cond.end.1966, %cond.end.1954, %cond.end.1772, %cond.end.1760, %cond.end.1579, %cond.end.1567, %cond.end.1383, %cond.end.1367, %cond.end.1182, %cond.end.1166, %cond.end.954, %cond.end.931, %cond.end.739, %cond.end.716, %cond.end.469, %cond.end.446, %cond.end.254, %cond.end.231
  %342 = load i64, i64* %alloca_nbytes, align 8
  %cmp2162 = icmp ult i64 -1, %342
  br i1 %cmp2162, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.2161, %cond.end.2159, %cond.end.2147, %cond.end.1966, %cond.end.1954, %cond.end.1772, %cond.end.1760, %cond.end.1579, %cond.end.1567, %cond.end.1383, %cond.end.1367, %cond.end.1182, %cond.end.1166, %cond.end.954, %cond.end.931, %cond.end.739, %cond.end.716, %cond.end.469, %cond.end.446, %cond.end.254, %cond.end.231
  call void @memory_full(i64 -1) #6
  unreachable

if.else:                                          ; preds = %lor.lhs.false.2161
  %343 = load i64, i64* %alloca_nbytes, align 8
  %344 = load i64, i64* %sa_avail, align 8
  %cmp2164 = icmp sle i64 %343, %344
  br i1 %cmp2164, label %if.then.2166, label %if.else.2168

if.then.2166:                                     ; preds = %if.else
  %345 = load i64, i64* %alloca_nbytes, align 8
  %346 = load i64, i64* %sa_avail, align 8
  %sub2167 = sub nsw i64 %346, %345
  store i64 %sub2167, i64* %sa_avail, align 8
  %347 = load i64, i64* %alloca_nbytes, align 8
  %348 = alloca i8, i64 %347
  %349 = bitcast i8* %348 to i64*
  store i64* %349, i64** %mapvec, align 8
  br label %if.end

if.else.2168:                                     ; preds = %if.else
  %350 = load i64, i64* %alloca_nbytes, align 8
  %call2169 = call noalias i8* @xmalloc(i64 %350)
  %351 = bitcast i8* %call2169 to i64*
  store i64* %351, i64** %mapvec, align 8
  %352 = load i64*, i64** %mapvec, align 8
  %353 = load i64, i64* %len, align 8
  %call2170 = call i64 @make_save_memory(i64* %352, i64 %353)
  store i64 %call2170, i64* %arg_, align 8
  store i8 1, i8* %sa_must_free, align 1
  %354 = load i64, i64* %arg_, align 8
  call void @record_unwind_protect(void (i64)* @free_save_value, i64 %354)
  br label %if.end

if.end:                                           ; preds = %if.else.2168, %if.then.2166
  br label %if.end.2171

if.end.2171:                                      ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %if.end.2171
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %355 = load i64, i64* %i, align 8
  %356 = load i64, i64* %len, align 8
  %cmp2172 = icmp slt i64 %355, %356
  br i1 %cmp2172, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %357 = load i64, i64* %maps.addr, align 8
  %call2174 = call i64 @Fcar(i64 %357)
  %358 = load i64, i64* %i, align 8
  %359 = load i64*, i64** %mapvec, align 8
  %arrayidx = getelementptr inbounds i64, i64* %359, i64 %358
  store i64 %call2174, i64* %arrayidx, align 8
  %360 = load i64, i64* %maps.addr, align 8
  %call2175 = call i64 @Fcdr(i64 %360)
  store i64 %call2175, i64* %maps.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %361 = load i64, i64* %i, align 8
  %inc = add nsw i64 %361, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i64 0, i64* %i, align 8
  br label %for.cond.2176

for.cond.2176:                                    ; preds = %for.inc.2206, %for.end
  %362 = load i64, i64* %i, align 8
  %363 = load i64, i64* %len, align 8
  %cmp2177 = icmp slt i64 %362, %363
  br i1 %cmp2177, label %for.body.2179, label %for.end.2208

for.body.2179:                                    ; preds = %for.cond.2176
  %364 = load i64, i64* %i, align 8
  %365 = load i64*, i64** %mapvec, align 8
  %arrayidx2180 = getelementptr inbounds i64, i64* %365, i64 %364
  %366 = load i64, i64* %arrayidx2180, align 8
  %call2181 = call i64 @get_keymap(i64 %366, i1 zeroext false, i1 zeroext false)
  %call2182 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp2183 = icmp eq i64 %call2181, %call2182
  br i1 %cmp2183, label %if.then.2185, label %if.else.2194

if.then.2185:                                     ; preds = %for.body.2179
  store i8 1, i8* %top_level_items, align 1
  %call2186 = call i64 @builtin_lisp_symbol(i32 0)
  %call2187 = call i64 @builtin_lisp_symbol(i32 0)
  call void @push_menu_pane(i64 %call2186, i64 %call2187)
  %367 = load i64, i64* %item_name.addr, align 8
  %call2188 = call i64 @builtin_lisp_symbol(i32 901)
  %368 = load i64, i64* %item_key.addr, align 8
  %369 = load i64, i64* %i, align 8
  %370 = load i64*, i64** %mapvec, align 8
  %arrayidx2189 = getelementptr inbounds i64, i64* %370, i64 %369
  %371 = load i64, i64* %arrayidx2189, align 8
  %call2190 = call i64 @builtin_lisp_symbol(i32 0)
  %call2191 = call i64 @builtin_lisp_symbol(i32 0)
  %call2192 = call i64 @builtin_lisp_symbol(i32 0)
  %call2193 = call i64 @builtin_lisp_symbol(i32 0)
  call void @push_menu_item(i64 %367, i64 %call2188, i64 %368, i64 %371, i64 %call2190, i64 %call2191, i64 %call2192, i64 %call2193)
  br label %if.end.2205

if.else.2194:                                     ; preds = %for.body.2179
  %372 = load i64, i64* %i, align 8
  %373 = load i64*, i64** %mapvec, align 8
  %arrayidx2195 = getelementptr inbounds i64, i64* %373, i64 %372
  %374 = load i64, i64* %arrayidx2195, align 8
  %call2196 = call i64 @Fkeymap_prompt(i64 %374)
  store i64 %call2196, i64* %prompt, align 8
  %375 = load i64, i64* %i, align 8
  %376 = load i64*, i64** %mapvec, align 8
  %arrayidx2197 = getelementptr inbounds i64, i64* %376, i64 %375
  %377 = load i64, i64* %arrayidx2197, align 8
  %378 = load i64, i64* %prompt, align 8
  %call2198 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp2199 = icmp eq i64 %378, %call2198
  br i1 %cmp2199, label %cond.false.2202, label %cond.true.2201

cond.true.2201:                                   ; preds = %if.else.2194
  %379 = load i64, i64* %prompt, align 8
  br label %cond.end.2203

cond.false.2202:                                  ; preds = %if.else.2194
  %380 = load i64, i64* %item_name.addr, align 8
  br label %cond.end.2203

cond.end.2203:                                    ; preds = %cond.false.2202, %cond.true.2201
  %cond2204 = phi i64 [ %379, %cond.true.2201 ], [ %380, %cond.false.2202 ]
  %381 = load i64, i64* %item_key.addr, align 8
  call void @single_keymap_panes(i64 %377, i64 %cond2204, i64 %381, i32 10)
  br label %if.end.2205

if.end.2205:                                      ; preds = %cond.end.2203, %if.then.2185
  br label %for.inc.2206

for.inc.2206:                                     ; preds = %if.end.2205
  %382 = load i64, i64* %i, align 8
  %inc2207 = add nsw i64 %382, 1
  store i64 %inc2207, i64* %i, align 8
  br label %for.cond.2176

for.end.2208:                                     ; preds = %for.cond.2176
  br label %do.body.2209

do.body.2209:                                     ; preds = %for.end.2208
  %383 = load i8, i8* %sa_must_free, align 1
  %tobool = trunc i8 %383 to i1
  br i1 %tobool, label %if.then.2210, label %if.end.2213

if.then.2210:                                     ; preds = %do.body.2209
  store i8 0, i8* %sa_must_free, align 1
  %384 = load i64, i64* %sa_count, align 8
  %call2211 = call i64 @builtin_lisp_symbol(i32 0)
  %call2212 = call i64 @unbind_to(i64 %384, i64 %call2211)
  br label %if.end.2213

if.end.2213:                                      ; preds = %if.then.2210, %do.body.2209
  br label %do.end.2214

do.end.2214:                                      ; preds = %if.end.2213
  %385 = load i8, i8* %top_level_items, align 1
  %tobool2215 = trunc i8 %385 to i1
  ret i1 %tobool2215
}

declare i64 @SPECPDL_INDEX() #1

declare i64 @Flength(i64) #1

; Function Attrs: noreturn
declare void @memory_full(i64) #2

declare noalias i8* @xmalloc(i64) #1

declare i64 @make_save_memory(i64*, i64) #1

declare void @free_save_value(i64) #1

declare i64 @get_keymap(i64, i1 zeroext, i1 zeroext) #1

; Function Attrs: nounwind uwtable
define internal void @push_menu_item(i64 %name, i64 %enable, i64 %key, i64 %def, i64 %equiv, i64 %type, i64 %selected, i64 %help) #0 {
entry:
  %name.addr = alloca i64, align 8
  %enable.addr = alloca i64, align 8
  %key.addr = alloca i64, align 8
  %def.addr = alloca i64, align 8
  %equiv.addr = alloca i64, align 8
  %type.addr = alloca i64, align 8
  %selected.addr = alloca i64, align 8
  %help.addr = alloca i64, align 8
  store i64 %name, i64* %name.addr, align 8
  store i64 %enable, i64* %enable.addr, align 8
  store i64 %key, i64* %key.addr, align 8
  store i64 %def, i64* %def.addr, align 8
  store i64 %equiv, i64* %equiv.addr, align 8
  store i64 %type, i64* %type.addr, align 8
  store i64 %selected, i64* %selected.addr, align 8
  store i64 %help, i64* %help.addr, align 8
  call void @ensure_menu_items(i32 8)
  %0 = load i64, i64* @menu_items, align 8
  %1 = load i32, i32* @menu_items_used, align 4
  %add = add nsw i32 %1, 0
  %conv = sext i32 %add to i64
  %2 = load i64, i64* %name.addr, align 8
  call void @ASET(i64 %0, i64 %conv, i64 %2)
  %3 = load i64, i64* @menu_items, align 8
  %4 = load i32, i32* @menu_items_used, align 4
  %add1 = add nsw i32 %4, 1
  %conv2 = sext i32 %add1 to i64
  %5 = load i64, i64* %enable.addr, align 8
  call void @ASET(i64 %3, i64 %conv2, i64 %5)
  %6 = load i64, i64* @menu_items, align 8
  %7 = load i32, i32* @menu_items_used, align 4
  %add3 = add nsw i32 %7, 2
  %conv4 = sext i32 %add3 to i64
  %8 = load i64, i64* %key.addr, align 8
  call void @ASET(i64 %6, i64 %conv4, i64 %8)
  %9 = load i64, i64* @menu_items, align 8
  %10 = load i32, i32* @menu_items_used, align 4
  %add5 = add nsw i32 %10, 3
  %conv6 = sext i32 %add5 to i64
  %11 = load i64, i64* %equiv.addr, align 8
  call void @ASET(i64 %9, i64 %conv6, i64 %11)
  %12 = load i64, i64* @menu_items, align 8
  %13 = load i32, i32* @menu_items_used, align 4
  %add7 = add nsw i32 %13, 4
  %conv8 = sext i32 %add7 to i64
  %14 = load i64, i64* %def.addr, align 8
  call void @ASET(i64 %12, i64 %conv8, i64 %14)
  %15 = load i64, i64* @menu_items, align 8
  %16 = load i32, i32* @menu_items_used, align 4
  %add9 = add nsw i32 %16, 5
  %conv10 = sext i32 %add9 to i64
  %17 = load i64, i64* %type.addr, align 8
  call void @ASET(i64 %15, i64 %conv10, i64 %17)
  %18 = load i64, i64* @menu_items, align 8
  %19 = load i32, i32* @menu_items_used, align 4
  %add11 = add nsw i32 %19, 6
  %conv12 = sext i32 %add11 to i64
  %20 = load i64, i64* %selected.addr, align 8
  call void @ASET(i64 %18, i64 %conv12, i64 %20)
  %21 = load i64, i64* @menu_items, align 8
  %22 = load i32, i32* @menu_items_used, align 4
  %add13 = add nsw i32 %22, 7
  %conv14 = sext i32 %add13 to i64
  %23 = load i64, i64* %help.addr, align 8
  call void @ASET(i64 %21, i64 %conv14, i64 %23)
  %24 = load i32, i32* @menu_items_used, align 4
  %add15 = add nsw i32 %24, 8
  store i32 %add15, i32* @menu_items_used, align 4
  ret void
}

declare i64 @Fkeymap_prompt(i64) #1

; Function Attrs: nounwind uwtable
define internal void @single_keymap_panes(i64 %keymap, i64 %pane_name, i64 %prefix, i32 %maxdepth) #0 {
entry:
  %keymap.addr = alloca i64, align 8
  %pane_name.addr = alloca i64, align 8
  %prefix.addr = alloca i64, align 8
  %maxdepth.addr = alloca i32, align 4
  %skp = alloca %struct.skp, align 8
  %elt = alloca i64, align 8
  %eltcdr = alloca i64, align 8
  %string = alloca i64, align 8
  store i64 %keymap, i64* %keymap.addr, align 8
  store i64 %pane_name, i64* %pane_name.addr, align 8
  store i64 %prefix, i64* %prefix.addr, align 8
  store i32 %maxdepth, i32* %maxdepth.addr, align 4
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %pending_maps = getelementptr inbounds %struct.skp, %struct.skp* %skp, i32 0, i32 0
  store i64 %call, i64* %pending_maps, align 8
  %0 = load i32, i32* %maxdepth.addr, align 4
  %maxdepth1 = getelementptr inbounds %struct.skp, %struct.skp* %skp, i32 0, i32 1
  store i32 %0, i32* %maxdepth1, align 4
  %notbuttons = getelementptr inbounds %struct.skp, %struct.skp* %skp, i32 0, i32 2
  store i32 0, i32* %notbuttons, align 4
  %1 = load i32, i32* %maxdepth.addr, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.end

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %pane_name.addr, align 8
  %3 = load i64, i64* %prefix.addr, align 8
  call void @push_menu_pane(i64 %2, i64 %3)
  %call2 = call zeroext i1 @have_boxes()
  br i1 %call2, label %if.end.5, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %4 = load i32, i32* @menu_items_used, align 4
  %notbuttons4 = getelementptr inbounds %struct.skp, %struct.skp* %skp, i32 0, i32 2
  store i32 %4, i32* %notbuttons4, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %5 = load i64, i64* %keymap.addr, align 8
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  %6 = bitcast %struct.skp* %skp to i8*
  call void @map_keymap_canonical(i64 %5, void (i64, i64, i64, i8*)* @single_menu_item, i64 %call6, i8* %6)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.5
  %pending_maps7 = getelementptr inbounds %struct.skp, %struct.skp* %skp, i32 0, i32 0
  %7 = load i64, i64* %pending_maps7, align 8
  %and = and i64 %7, 7
  %conv = trunc i64 %and to i32
  %cmp8 = icmp eq i32 %conv, 3
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %pending_maps10 = getelementptr inbounds %struct.skp, %struct.skp* %skp, i32 0, i32 0
  %8 = load i64, i64* %pending_maps10, align 8
  %sub = sub nsw i64 %8, 3
  %9 = inttoptr i64 %sub to i8*
  %10 = bitcast i8* %9 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %10, i32 0, i32 0
  %11 = load i64, i64* %car, align 8
  store i64 %11, i64* %elt, align 8
  %12 = load i64, i64* %elt, align 8
  %sub11 = sub nsw i64 %12, 3
  %13 = inttoptr i64 %sub11 to i8*
  %14 = bitcast i8* %13 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %14, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %15 = load i64, i64* %cdr, align 8
  store i64 %15, i64* %eltcdr, align 8
  %16 = load i64, i64* %eltcdr, align 8
  %sub12 = sub nsw i64 %16, 3
  %17 = inttoptr i64 %sub12 to i8*
  %18 = bitcast i8* %17 to %struct.Lisp_Cons*
  %car13 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %18, i32 0, i32 0
  %19 = load i64, i64* %car13, align 8
  store i64 %19, i64* %string, align 8
  %20 = load i64, i64* %elt, align 8
  %call14 = call i64 @Fcar(i64 %20)
  %21 = load i64, i64* %string, align 8
  %22 = load i64, i64* %eltcdr, align 8
  %sub15 = sub nsw i64 %22, 3
  %23 = inttoptr i64 %sub15 to i8*
  %24 = bitcast i8* %23 to %struct.Lisp_Cons*
  %u16 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %24, i32 0, i32 1
  %cdr17 = bitcast %union.anon* %u16 to i64*
  %25 = load i64, i64* %cdr17, align 8
  %26 = load i32, i32* %maxdepth.addr, align 4
  %sub18 = sub nsw i32 %26, 1
  call void @single_keymap_panes(i64 %call14, i64 %21, i64 %25, i32 %sub18)
  %pending_maps19 = getelementptr inbounds %struct.skp, %struct.skp* %skp, i32 0, i32 0
  %27 = load i64, i64* %pending_maps19, align 8
  %sub20 = sub nsw i64 %27, 3
  %28 = inttoptr i64 %sub20 to i8*
  %29 = bitcast i8* %28 to %struct.Lisp_Cons*
  %u21 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %29, i32 0, i32 1
  %cdr22 = bitcast %union.anon* %u21 to i64*
  %30 = load i64, i64* %cdr22, align 8
  %pending_maps23 = getelementptr inbounds %struct.skp, %struct.skp* %skp, i32 0, i32 0
  store i64 %30, i64* %pending_maps23, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  ret void
}

declare i64 @unbind_to(i64, i64) #1

; Function Attrs: nounwind uwtable
define %struct._widget_value* @make_widget_value(i8* %name, i8* %value, i1 zeroext %enabled, i64 %help) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %enabled.addr = alloca i8, align 1
  %help.addr = alloca i64, align 8
  %wv = alloca %struct._widget_value*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  %frombool = zext i1 %enabled to i8
  store i8 %frombool, i8* %enabled.addr, align 1
  store i64 %help, i64* %help.addr, align 8
  call void @block_input()
  %call = call noalias i8* @xzalloc(i64 80)
  %0 = bitcast i8* %call to %struct._widget_value*
  store %struct._widget_value* %0, %struct._widget_value** %wv, align 8
  call void @unblock_input()
  %1 = load i8*, i8** %name.addr, align 8
  %2 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %name1 = getelementptr inbounds %struct._widget_value, %struct._widget_value* %2, i32 0, i32 1
  store i8* %1, i8** %name1, align 8
  %3 = load i8*, i8** %value.addr, align 8
  %4 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %value2 = getelementptr inbounds %struct._widget_value, %struct._widget_value* %4, i32 0, i32 2
  store i8* %3, i8** %value2, align 8
  %5 = load i8, i8* %enabled.addr, align 1
  %tobool = trunc i8 %5 to i1
  %6 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %enabled3 = getelementptr inbounds %struct._widget_value, %struct._widget_value* %6, i32 0, i32 6
  %frombool4 = zext i1 %tobool to i8
  store i8 %frombool4, i8* %enabled3, align 1
  %7 = load i64, i64* %help.addr, align 8
  %8 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %help5 = getelementptr inbounds %struct._widget_value, %struct._widget_value* %8, i32 0, i32 5
  store i64 %7, i64* %help5, align 8
  %9 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  ret %struct._widget_value* %9
}

declare void @block_input() #1

declare noalias i8* @xzalloc(i64) #1

declare void @unblock_input() #1

; Function Attrs: nounwind uwtable
define void @free_menubar_widget_value_tree(%struct._widget_value* %wv) #0 {
entry:
  %wv.addr = alloca %struct._widget_value*, align 8
  store %struct._widget_value* %wv, %struct._widget_value** %wv.addr, align 8
  %0 = load %struct._widget_value*, %struct._widget_value** %wv.addr, align 8
  %tobool = icmp ne %struct._widget_value* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._widget_value*, %struct._widget_value** %wv.addr, align 8
  %key = getelementptr inbounds %struct._widget_value, %struct._widget_value* %1, i32 0, i32 4
  store i8* inttoptr (i64 3735928559 to i8*), i8** %key, align 8
  %2 = load %struct._widget_value*, %struct._widget_value** %wv.addr, align 8
  %value = getelementptr inbounds %struct._widget_value, %struct._widget_value* %2, i32 0, i32 2
  store i8* inttoptr (i64 3735928559 to i8*), i8** %value, align 8
  %3 = load %struct._widget_value*, %struct._widget_value** %wv.addr, align 8
  %name = getelementptr inbounds %struct._widget_value, %struct._widget_value* %3, i32 0, i32 1
  store i8* inttoptr (i64 3735928559 to i8*), i8** %name, align 8
  %4 = load %struct._widget_value*, %struct._widget_value** %wv.addr, align 8
  %contents = getelementptr inbounds %struct._widget_value, %struct._widget_value* %4, i32 0, i32 10
  %5 = load %struct._widget_value*, %struct._widget_value** %contents, align 8
  %tobool1 = icmp ne %struct._widget_value* %5, null
  br i1 %tobool1, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %if.end
  %6 = load %struct._widget_value*, %struct._widget_value** %wv.addr, align 8
  %contents2 = getelementptr inbounds %struct._widget_value, %struct._widget_value* %6, i32 0, i32 10
  %7 = load %struct._widget_value*, %struct._widget_value** %contents2, align 8
  %cmp = icmp ne %struct._widget_value* %7, inttoptr (i64 1 to %struct._widget_value*)
  br i1 %cmp, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %land.lhs.true
  %8 = load %struct._widget_value*, %struct._widget_value** %wv.addr, align 8
  %contents4 = getelementptr inbounds %struct._widget_value, %struct._widget_value* %8, i32 0, i32 10
  %9 = load %struct._widget_value*, %struct._widget_value** %contents4, align 8
  call void @free_menubar_widget_value_tree(%struct._widget_value* %9)
  %10 = load %struct._widget_value*, %struct._widget_value** %wv.addr, align 8
  %contents5 = getelementptr inbounds %struct._widget_value, %struct._widget_value* %10, i32 0, i32 10
  store %struct._widget_value* inttoptr (i64 3735928559 to %struct._widget_value*), %struct._widget_value** %contents5, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.3, %land.lhs.true, %if.end
  %11 = load %struct._widget_value*, %struct._widget_value** %wv.addr, align 8
  %next = getelementptr inbounds %struct._widget_value, %struct._widget_value* %11, i32 0, i32 12
  %12 = load %struct._widget_value*, %struct._widget_value** %next, align 8
  %tobool7 = icmp ne %struct._widget_value* %12, null
  br i1 %tobool7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end.6
  %13 = load %struct._widget_value*, %struct._widget_value** %wv.addr, align 8
  %next9 = getelementptr inbounds %struct._widget_value, %struct._widget_value* %13, i32 0, i32 12
  %14 = load %struct._widget_value*, %struct._widget_value** %next9, align 8
  call void @free_menubar_widget_value_tree(%struct._widget_value* %14)
  %15 = load %struct._widget_value*, %struct._widget_value** %wv.addr, align 8
  %next10 = getelementptr inbounds %struct._widget_value, %struct._widget_value* %15, i32 0, i32 12
  store %struct._widget_value* inttoptr (i64 3735928559 to %struct._widget_value*), %struct._widget_value** %next10, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.end.6
  call void @block_input()
  %16 = load %struct._widget_value*, %struct._widget_value** %wv.addr, align 8
  %17 = bitcast %struct._widget_value* %16 to i8*
  call void @xfree(i8* %17)
  call void @unblock_input()
  br label %return

return:                                           ; preds = %if.end.11, %if.then
  ret void
}

declare void @xfree(i8*) #1

; Function Attrs: nounwind uwtable
define %struct._widget_value* @digest_single_submenu(i32 %start, i32 %end, i1 zeroext %top_level_items) #0 {
entry:
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %top_level_items.addr = alloca i8, align 1
  %wv = alloca %struct._widget_value*, align 8
  %prev_wv = alloca %struct._widget_value*, align 8
  %save_wv = alloca %struct._widget_value*, align 8
  %first_wv = alloca %struct._widget_value*, align 8
  %i = alloca i32, align 4
  %submenu_depth = alloca i32, align 4
  %submenu_stack = alloca %struct._widget_value**, align 8
  %panes_seen = alloca i8, align 1
  %f = alloca %struct.frame*, align 8
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  %pane_name = alloca i64, align 8
  %pane_string = alloca i8*, align 8
  %item_name = alloca i64, align 8
  %enable = alloca i64, align 8
  %descrip = alloca i64, align 8
  %def = alloca i64, align 8
  %type = alloca i64, align 8
  %selected = alloca i64, align 8
  %help = alloca i64, align 8
  store i32 %start, i32* %start.addr, align 4
  store i32 %end, i32* %end.addr, align 4
  %frombool = zext i1 %top_level_items to i8
  store i8 %frombool, i8* %top_level_items.addr, align 1
  store i32 0, i32* %submenu_depth, align 4
  store i8 0, i8* %panes_seen, align 1
  %0 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 179), align 8
  %sub = sub nsw i64 %0, 5
  %1 = inttoptr i64 %sub to i8*
  %2 = bitcast i8* %1 to %struct.frame*
  store %struct.frame* %2, %struct.frame** %f, align 8
  store i64 16384, i64* %sa_avail, align 8
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @menu_items_used, align 4
  %conv = sext i32 %3 to i64
  %4 = load i64, i64* %sa_avail, align 8
  %div = udiv i64 %4, 8
  %div1 = udiv i64 %div, 1
  %cmp = icmp ule i64 %conv, %div1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %5 = load i32, i32* @menu_items_used, align 4
  %conv3 = sext i32 %5 to i64
  %mul = mul i64 8, %conv3
  %6 = load i64, i64* %sa_avail, align 8
  %sub4 = sub i64 %6, %mul
  store i64 %sub4, i64* %sa_avail, align 8
  %7 = load i32, i32* @menu_items_used, align 4
  %conv5 = sext i32 %7 to i64
  %mul6 = mul i64 8, %conv5
  %8 = alloca i8, i64 %mul6
  %9 = bitcast i8* %8 to %struct._widget_value**
  store %struct._widget_value** %9, %struct._widget_value*** %submenu_stack, align 8
  br label %if.end

if.else:                                          ; preds = %do.body
  %10 = load i32, i32* @menu_items_used, align 4
  %conv7 = sext i32 %10 to i64
  %call8 = call noalias i8* @xnmalloc(i64 %conv7, i64 8)
  %11 = bitcast i8* %call8 to %struct._widget_value**
  store %struct._widget_value** %11, %struct._widget_value*** %submenu_stack, align 8
  store i8 1, i8* %sa_must_free, align 1
  %12 = load %struct._widget_value**, %struct._widget_value*** %submenu_stack, align 8
  %13 = bitcast %struct._widget_value** %12 to i8*
  call void @record_unwind_protect_ptr(void (i8*)* @xfree, i8* %13)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  %call10 = call %struct._widget_value* @make_widget_value(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* null, i1 zeroext true, i64 %call9)
  store %struct._widget_value* %call10, %struct._widget_value** %wv, align 8
  %14 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %button_type = getelementptr inbounds %struct._widget_value, %struct._widget_value* %14, i32 0, i32 9
  store i32 0, i32* %button_type, align 4
  %15 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  store %struct._widget_value* %15, %struct._widget_value** %first_wv, align 8
  store %struct._widget_value* null, %struct._widget_value** %save_wv, align 8
  store %struct._widget_value* null, %struct._widget_value** %prev_wv, align 8
  %16 = load i32, i32* %start.addr, align 4
  store i32 %16, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.207, %do.end
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %end.addr, align 4
  %cmp11 = icmp slt i32 %17, %18
  br i1 %cmp11, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load i64, i64* @menu_items, align 8
  %20 = load i32, i32* %i, align 4
  %conv13 = sext i32 %20 to i64
  %call14 = call i64 @AREF(i64 %19, i64 %conv13)
  %call15 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp16 = icmp eq i64 %call14, %call15
  br i1 %cmp16, label %if.then.18, label %if.else.20

if.then.18:                                       ; preds = %while.body
  %21 = load %struct._widget_value*, %struct._widget_value** %save_wv, align 8
  %22 = load i32, i32* %submenu_depth, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %submenu_depth, align 4
  %idxprom = sext i32 %22 to i64
  %23 = load %struct._widget_value**, %struct._widget_value*** %submenu_stack, align 8
  %arrayidx = getelementptr inbounds %struct._widget_value*, %struct._widget_value** %23, i64 %idxprom
  store %struct._widget_value* %21, %struct._widget_value** %arrayidx, align 8
  %24 = load %struct._widget_value*, %struct._widget_value** %prev_wv, align 8
  store %struct._widget_value* %24, %struct._widget_value** %save_wv, align 8
  store %struct._widget_value* null, %struct._widget_value** %prev_wv, align 8
  %25 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %25, 1
  store i32 %inc19, i32* %i, align 4
  br label %if.end.207

if.else.20:                                       ; preds = %while.body
  %26 = load i64, i64* @menu_items, align 8
  %27 = load i32, i32* %i, align 4
  %conv21 = sext i32 %27 to i64
  %call22 = call i64 @AREF(i64 %26, i64 %conv21)
  %call23 = call i64 @builtin_lisp_symbol(i32 598)
  %cmp24 = icmp eq i64 %call22, %call23
  br i1 %cmp24, label %if.then.26, label %if.else.30

if.then.26:                                       ; preds = %if.else.20
  %28 = load %struct._widget_value*, %struct._widget_value** %save_wv, align 8
  store %struct._widget_value* %28, %struct._widget_value** %prev_wv, align 8
  %29 = load i32, i32* %submenu_depth, align 4
  %dec = add nsw i32 %29, -1
  store i32 %dec, i32* %submenu_depth, align 4
  %idxprom27 = sext i32 %dec to i64
  %30 = load %struct._widget_value**, %struct._widget_value*** %submenu_stack, align 8
  %arrayidx28 = getelementptr inbounds %struct._widget_value*, %struct._widget_value** %30, i64 %idxprom27
  %31 = load %struct._widget_value*, %struct._widget_value** %arrayidx28, align 8
  store %struct._widget_value* %31, %struct._widget_value** %save_wv, align 8
  %32 = load i32, i32* %i, align 4
  %inc29 = add nsw i32 %32, 1
  store i32 %inc29, i32* %i, align 4
  br label %if.end.206

if.else.30:                                       ; preds = %if.else.20
  %33 = load i64, i64* @menu_items, align 8
  %34 = load i32, i32* %i, align 4
  %conv31 = sext i32 %34 to i64
  %call32 = call i64 @AREF(i64 %33, i64 %conv31)
  %call33 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp34 = icmp eq i64 %call32, %call33
  br i1 %cmp34, label %land.lhs.true, label %if.else.39

land.lhs.true:                                    ; preds = %if.else.30
  %35 = load i32, i32* %submenu_depth, align 4
  %cmp36 = icmp ne i32 %35, 0
  br i1 %cmp36, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %land.lhs.true
  %36 = load i32, i32* %i, align 4
  %add = add nsw i32 %36, 3
  store i32 %add, i32* %i, align 4
  br label %if.end.205

if.else.39:                                       ; preds = %land.lhs.true, %if.else.30
  %37 = load i64, i64* @menu_items, align 8
  %38 = load i32, i32* %i, align 4
  %conv40 = sext i32 %38 to i64
  %call41 = call i64 @AREF(i64 %37, i64 %conv40)
  %call42 = call i64 @builtin_lisp_symbol(i32 783)
  %cmp43 = icmp eq i64 %call41, %call42
  br i1 %cmp43, label %if.then.45, label %if.else.47

if.then.45:                                       ; preds = %if.else.39
  %39 = load i32, i32* %i, align 4
  %add46 = add nsw i32 %39, 1
  store i32 %add46, i32* %i, align 4
  br label %if.end.204

if.else.47:                                       ; preds = %if.else.39
  %40 = load i64, i64* @menu_items, align 8
  %41 = load i32, i32* %i, align 4
  %conv48 = sext i32 %41 to i64
  %call49 = call i64 @AREF(i64 %40, i64 %conv48)
  %call50 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp51 = icmp eq i64 %call49, %call50
  br i1 %cmp51, label %if.then.53, label %if.else.92

if.then.53:                                       ; preds = %if.else.47
  store i8 1, i8* %panes_seen, align 1
  %42 = load i64, i64* @menu_items, align 8
  %43 = load i32, i32* %i, align 4
  %add54 = add nsw i32 %43, 1
  %conv55 = sext i32 %add54 to i64
  %call56 = call i64 @AREF(i64 %42, i64 %conv55)
  store i64 %call56, i64* %pane_name, align 8
  %44 = load %struct.frame*, %struct.frame** %f, align 8
  %output_method = getelementptr inbounds %struct.frame, %struct.frame* %44, i32 0, i32 26
  %45 = bitcast i48* %output_method to i64*
  %bf.load = load i64, i64* %45, align 8
  %bf.lshr = lshr i64 %bf.load, 23
  %bf.clear = and i64 %bf.lshr, 7
  %bf.cast = trunc i64 %bf.clear to i32
  %cmp57 = icmp eq i32 %bf.cast, 1
  br i1 %cmp57, label %if.end.71, label %if.then.59

if.then.59:                                       ; preds = %if.then.53
  %46 = load i64, i64* %pane_name, align 8
  %call60 = call zeroext i1 @STRINGP(i64 %46)
  br i1 %call60, label %land.lhs.true.62, label %if.end.70

land.lhs.true.62:                                 ; preds = %if.then.59
  %47 = load i64, i64* %pane_name, align 8
  %call63 = call zeroext i1 @STRING_MULTIBYTE(i64 %47)
  br i1 %call63, label %if.then.65, label %if.end.70

if.then.65:                                       ; preds = %land.lhs.true.62
  %48 = load i64, i64* %pane_name, align 8
  %call66 = call i64 @builtin_lisp_symbol(i32 988)
  %call67 = call i64 @code_convert_string_norecord(i64 %48, i64 %call66, i1 zeroext true)
  store i64 %call67, i64* %pane_name, align 8
  %49 = load i64, i64* @menu_items, align 8
  %50 = load i32, i32* %i, align 4
  %add68 = add nsw i32 %50, 1
  %conv69 = sext i32 %add68 to i64
  %51 = load i64, i64* %pane_name, align 8
  call void @ASET(i64 %49, i64 %conv69, i64 %51)
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.65, %land.lhs.true.62, %if.then.59
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.then.53
  %52 = load i64, i64* %pane_name, align 8
  %call72 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp73 = icmp eq i64 %52, %call72
  br i1 %cmp73, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.71
  br label %cond.end

cond.false:                                       ; preds = %if.end.71
  %53 = load i64, i64* %pane_name, align 8
  %call75 = call i8* @SSDATA(i64 %53)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), %cond.true ], [ %call75, %cond.false ]
  store i8* %cond, i8** %pane_string, align 8
  %54 = load i32, i32* @menu_items_n_panes, align 4
  %cmp76 = icmp eq i32 %54, 1
  br i1 %cmp76, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %cond.end
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8** %pane_string, align 8
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.78, %cond.end
  %55 = load i8*, i8** %pane_string, align 8
  %call80 = call i32 @strcmp(i8* %55, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0)) #8
  %tobool = icmp ne i32 %call80, 0
  br i1 %tobool, label %if.then.81, label %if.else.89

if.then.81:                                       ; preds = %if.end.79
  %call82 = call i64 @builtin_lisp_symbol(i32 0)
  %call83 = call %struct._widget_value* @make_widget_value(i8* null, i8* inttoptr (i64 1 to i8*), i1 zeroext true, i64 %call82)
  store %struct._widget_value* %call83, %struct._widget_value** %wv, align 8
  %56 = load %struct._widget_value*, %struct._widget_value** %save_wv, align 8
  %tobool84 = icmp ne %struct._widget_value* %56, null
  br i1 %tobool84, label %if.then.85, label %if.else.86

if.then.85:                                       ; preds = %if.then.81
  %57 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %58 = load %struct._widget_value*, %struct._widget_value** %save_wv, align 8
  %next = getelementptr inbounds %struct._widget_value, %struct._widget_value* %58, i32 0, i32 12
  store %struct._widget_value* %57, %struct._widget_value** %next, align 8
  br label %if.end.87

if.else.86:                                       ; preds = %if.then.81
  %59 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %60 = load %struct._widget_value*, %struct._widget_value** %first_wv, align 8
  %contents = getelementptr inbounds %struct._widget_value, %struct._widget_value* %60, i32 0, i32 10
  store %struct._widget_value* %59, %struct._widget_value** %contents, align 8
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.86, %if.then.85
  %61 = load i64, i64* %pane_name, align 8
  %62 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %lname = getelementptr inbounds %struct._widget_value, %struct._widget_value* %62, i32 0, i32 0
  store i64 %61, i64* %lname, align 8
  %63 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %button_type88 = getelementptr inbounds %struct._widget_value, %struct._widget_value* %63, i32 0, i32 9
  store i32 0, i32* %button_type88, align 4
  %64 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  store %struct._widget_value* %64, %struct._widget_value** %save_wv, align 8
  br label %if.end.90

if.else.89:                                       ; preds = %if.end.79
  %65 = load %struct._widget_value*, %struct._widget_value** %first_wv, align 8
  store %struct._widget_value* %65, %struct._widget_value** %save_wv, align 8
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.89, %if.end.87
  store %struct._widget_value* null, %struct._widget_value** %prev_wv, align 8
  %66 = load i32, i32* %i, align 4
  %add91 = add nsw i32 %66, 3
  store i32 %add91, i32* %i, align 4
  br label %if.end.203

if.else.92:                                       ; preds = %if.else.47
  %67 = load i8, i8* %panes_seen, align 1
  %tobool93 = trunc i8 %67 to i1
  br i1 %tobool93, label %if.end.95, label %if.then.94

if.then.94:                                       ; preds = %if.else.92
  call void @emacs_abort() #6
  unreachable

if.end.95:                                        ; preds = %if.else.92
  %68 = load i64, i64* @menu_items, align 8
  %69 = load i32, i32* %i, align 4
  %add96 = add nsw i32 %69, 0
  %conv97 = sext i32 %add96 to i64
  %call98 = call i64 @AREF(i64 %68, i64 %conv97)
  store i64 %call98, i64* %item_name, align 8
  %70 = load i64, i64* @menu_items, align 8
  %71 = load i32, i32* %i, align 4
  %add99 = add nsw i32 %71, 1
  %conv100 = sext i32 %add99 to i64
  %call101 = call i64 @AREF(i64 %70, i64 %conv100)
  store i64 %call101, i64* %enable, align 8
  %72 = load i64, i64* @menu_items, align 8
  %73 = load i32, i32* %i, align 4
  %add102 = add nsw i32 %73, 3
  %conv103 = sext i32 %add102 to i64
  %call104 = call i64 @AREF(i64 %72, i64 %conv103)
  store i64 %call104, i64* %descrip, align 8
  %74 = load i64, i64* @menu_items, align 8
  %75 = load i32, i32* %i, align 4
  %add105 = add nsw i32 %75, 4
  %conv106 = sext i32 %add105 to i64
  %call107 = call i64 @AREF(i64 %74, i64 %conv106)
  store i64 %call107, i64* %def, align 8
  %76 = load i64, i64* @menu_items, align 8
  %77 = load i32, i32* %i, align 4
  %add108 = add nsw i32 %77, 5
  %conv109 = sext i32 %add108 to i64
  %call110 = call i64 @AREF(i64 %76, i64 %conv109)
  store i64 %call110, i64* %type, align 8
  %78 = load i64, i64* @menu_items, align 8
  %79 = load i32, i32* %i, align 4
  %add111 = add nsw i32 %79, 6
  %conv112 = sext i32 %add111 to i64
  %call113 = call i64 @AREF(i64 %78, i64 %conv112)
  store i64 %call113, i64* %selected, align 8
  %80 = load i64, i64* @menu_items, align 8
  %81 = load i32, i32* %i, align 4
  %add114 = add nsw i32 %81, 7
  %conv115 = sext i32 %add114 to i64
  %call116 = call i64 @AREF(i64 %80, i64 %conv115)
  store i64 %call116, i64* %help, align 8
  %82 = load %struct.frame*, %struct.frame** %f, align 8
  %output_method117 = getelementptr inbounds %struct.frame, %struct.frame* %82, i32 0, i32 26
  %83 = bitcast i48* %output_method117 to i64*
  %bf.load118 = load i64, i64* %83, align 8
  %bf.lshr119 = lshr i64 %bf.load118, 23
  %bf.clear120 = and i64 %bf.lshr119, 7
  %bf.cast121 = trunc i64 %bf.clear120 to i32
  %cmp122 = icmp eq i32 %bf.cast121, 1
  br i1 %cmp122, label %if.end.143, label %if.then.124

if.then.124:                                      ; preds = %if.end.95
  %84 = load i64, i64* %item_name, align 8
  %call125 = call zeroext i1 @STRING_MULTIBYTE(i64 %84)
  br i1 %call125, label %if.then.126, label %if.end.131

if.then.126:                                      ; preds = %if.then.124
  %85 = load i64, i64* %item_name, align 8
  %call127 = call i64 @builtin_lisp_symbol(i32 988)
  %call128 = call i64 @code_convert_string_norecord(i64 %85, i64 %call127, i1 zeroext true)
  store i64 %call128, i64* %item_name, align 8
  %86 = load i64, i64* @menu_items, align 8
  %87 = load i32, i32* %i, align 4
  %add129 = add nsw i32 %87, 0
  %conv130 = sext i32 %add129 to i64
  %88 = load i64, i64* %item_name, align 8
  call void @ASET(i64 %86, i64 %conv130, i64 %88)
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.126, %if.then.124
  %89 = load i64, i64* %descrip, align 8
  %call132 = call zeroext i1 @STRINGP(i64 %89)
  br i1 %call132, label %land.lhs.true.134, label %if.end.142

land.lhs.true.134:                                ; preds = %if.end.131
  %90 = load i64, i64* %descrip, align 8
  %call135 = call zeroext i1 @STRING_MULTIBYTE(i64 %90)
  br i1 %call135, label %if.then.137, label %if.end.142

if.then.137:                                      ; preds = %land.lhs.true.134
  %91 = load i64, i64* %descrip, align 8
  %call138 = call i64 @builtin_lisp_symbol(i32 988)
  %call139 = call i64 @code_convert_string_norecord(i64 %91, i64 %call138, i1 zeroext true)
  store i64 %call139, i64* %descrip, align 8
  %92 = load i64, i64* @menu_items, align 8
  %93 = load i32, i32* %i, align 4
  %add140 = add nsw i32 %93, 3
  %conv141 = sext i32 %add140 to i64
  %94 = load i64, i64* %descrip, align 8
  call void @ASET(i64 %92, i64 %conv141, i64 %94)
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.137, %land.lhs.true.134, %if.end.131
  br label %if.end.143

if.end.143:                                       ; preds = %if.end.142, %if.end.95
  %95 = load i64, i64* %enable, align 8
  %call144 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp145 = icmp eq i64 %95, %call144
  %lnot = xor i1 %cmp145, true
  %96 = load i64, i64* %help, align 8
  %call147 = call zeroext i1 @STRINGP(i64 %96)
  br i1 %call147, label %cond.true.149, label %cond.false.150

cond.true.149:                                    ; preds = %if.end.143
  %97 = load i64, i64* %help, align 8
  br label %cond.end.152

cond.false.150:                                   ; preds = %if.end.143
  %call151 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.152

cond.end.152:                                     ; preds = %cond.false.150, %cond.true.149
  %cond153 = phi i64 [ %97, %cond.true.149 ], [ %call151, %cond.false.150 ]
  %call154 = call %struct._widget_value* @make_widget_value(i8* null, i8* null, i1 zeroext %lnot, i64 %cond153)
  store %struct._widget_value* %call154, %struct._widget_value** %wv, align 8
  %98 = load %struct._widget_value*, %struct._widget_value** %prev_wv, align 8
  %tobool155 = icmp ne %struct._widget_value* %98, null
  br i1 %tobool155, label %if.then.156, label %if.else.158

if.then.156:                                      ; preds = %cond.end.152
  %99 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %100 = load %struct._widget_value*, %struct._widget_value** %prev_wv, align 8
  %next157 = getelementptr inbounds %struct._widget_value, %struct._widget_value* %100, i32 0, i32 12
  store %struct._widget_value* %99, %struct._widget_value** %next157, align 8
  br label %if.end.160

if.else.158:                                      ; preds = %cond.end.152
  %101 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %102 = load %struct._widget_value*, %struct._widget_value** %save_wv, align 8
  %contents159 = getelementptr inbounds %struct._widget_value, %struct._widget_value* %102, i32 0, i32 10
  store %struct._widget_value* %101, %struct._widget_value** %contents159, align 8
  br label %if.end.160

if.end.160:                                       ; preds = %if.else.158, %if.then.156
  %103 = load i64, i64* %item_name, align 8
  %104 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %lname161 = getelementptr inbounds %struct._widget_value, %struct._widget_value* %104, i32 0, i32 0
  store i64 %103, i64* %lname161, align 8
  %105 = load i64, i64* %descrip, align 8
  %call162 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp163 = icmp eq i64 %105, %call162
  br i1 %cmp163, label %if.end.166, label %if.then.165

if.then.165:                                      ; preds = %if.end.160
  %106 = load i64, i64* %descrip, align 8
  %107 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %lkey = getelementptr inbounds %struct._widget_value, %struct._widget_value* %107, i32 0, i32 3
  store i64 %106, i64* %lkey, align 8
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.165, %if.end.160
  %108 = load i64, i64* %def, align 8
  %call167 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp168 = icmp eq i64 %108, %call167
  br i1 %cmp168, label %cond.false.172, label %cond.true.170

cond.true.170:                                    ; preds = %if.end.166
  %109 = load i32, i32* %i, align 4
  %conv171 = sext i32 %109 to i64
  %110 = inttoptr i64 %conv171 to i8*
  br label %cond.end.173

cond.false.172:                                   ; preds = %if.end.166
  br label %cond.end.173

cond.end.173:                                     ; preds = %cond.false.172, %cond.true.170
  %cond174 = phi i8* [ %110, %cond.true.170 ], [ null, %cond.false.172 ]
  %111 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %call_data = getelementptr inbounds %struct._widget_value, %struct._widget_value* %111, i32 0, i32 11
  store i8* %cond174, i8** %call_data, align 8
  %112 = load i64, i64* %type, align 8
  %call175 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp176 = icmp eq i64 %112, %call175
  br i1 %cmp176, label %if.then.178, label %if.else.180

if.then.178:                                      ; preds = %cond.end.173
  %113 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %button_type179 = getelementptr inbounds %struct._widget_value, %struct._widget_value* %113, i32 0, i32 9
  store i32 0, i32* %button_type179, align 4
  br label %if.end.195

if.else.180:                                      ; preds = %cond.end.173
  %114 = load i64, i64* %type, align 8
  %call181 = call i64 @builtin_lisp_symbol(i32 101)
  %cmp182 = icmp eq i64 %114, %call181
  br i1 %cmp182, label %if.then.184, label %if.else.186

if.then.184:                                      ; preds = %if.else.180
  %115 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %button_type185 = getelementptr inbounds %struct._widget_value, %struct._widget_value* %115, i32 0, i32 9
  store i32 2, i32* %button_type185, align 4
  br label %if.end.194

if.else.186:                                      ; preds = %if.else.180
  %116 = load i64, i64* %type, align 8
  %call187 = call i64 @builtin_lisp_symbol(i32 130)
  %cmp188 = icmp eq i64 %116, %call187
  br i1 %cmp188, label %if.then.190, label %if.else.192

if.then.190:                                      ; preds = %if.else.186
  %117 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %button_type191 = getelementptr inbounds %struct._widget_value, %struct._widget_value* %117, i32 0, i32 9
  store i32 1, i32* %button_type191, align 4
  br label %if.end.193

if.else.192:                                      ; preds = %if.else.186
  call void @emacs_abort() #6
  unreachable

if.end.193:                                       ; preds = %if.then.190
  br label %if.end.194

if.end.194:                                       ; preds = %if.end.193, %if.then.184
  br label %if.end.195

if.end.195:                                       ; preds = %if.end.194, %if.then.178
  %118 = load i64, i64* %selected, align 8
  %call196 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp197 = icmp eq i64 %118, %call196
  %lnot199 = xor i1 %cmp197, true
  %119 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %selected200 = getelementptr inbounds %struct._widget_value, %struct._widget_value* %119, i32 0, i32 7
  %frombool201 = zext i1 %lnot199 to i8
  store i8 %frombool201, i8* %selected200, align 1
  %120 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  store %struct._widget_value* %120, %struct._widget_value** %prev_wv, align 8
  %121 = load i32, i32* %i, align 4
  %add202 = add nsw i32 %121, 8
  store i32 %add202, i32* %i, align 4
  br label %if.end.203

if.end.203:                                       ; preds = %if.end.195, %if.end.90
  br label %if.end.204

if.end.204:                                       ; preds = %if.end.203, %if.then.45
  br label %if.end.205

if.end.205:                                       ; preds = %if.end.204, %if.then.38
  br label %if.end.206

if.end.206:                                       ; preds = %if.end.205, %if.then.26
  br label %if.end.207

if.end.207:                                       ; preds = %if.end.206, %if.then.18
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %122 = load i8, i8* %top_level_items.addr, align 1
  %tobool208 = trunc i8 %122 to i1
  br i1 %tobool208, label %land.lhs.true.210, label %if.end.220

land.lhs.true.210:                                ; preds = %while.end
  %123 = load %struct._widget_value*, %struct._widget_value** %first_wv, align 8
  %contents211 = getelementptr inbounds %struct._widget_value, %struct._widget_value* %123, i32 0, i32 10
  %124 = load %struct._widget_value*, %struct._widget_value** %contents211, align 8
  %tobool212 = icmp ne %struct._widget_value* %124, null
  br i1 %tobool212, label %land.lhs.true.213, label %if.end.220

land.lhs.true.213:                                ; preds = %land.lhs.true.210
  %125 = load %struct._widget_value*, %struct._widget_value** %first_wv, align 8
  %contents214 = getelementptr inbounds %struct._widget_value, %struct._widget_value* %125, i32 0, i32 10
  %126 = load %struct._widget_value*, %struct._widget_value** %contents214, align 8
  %next215 = getelementptr inbounds %struct._widget_value, %struct._widget_value* %126, i32 0, i32 12
  %127 = load %struct._widget_value*, %struct._widget_value** %next215, align 8
  %cmp216 = icmp eq %struct._widget_value* %127, null
  br i1 %cmp216, label %if.then.218, label %if.end.220

if.then.218:                                      ; preds = %land.lhs.true.213
  %128 = load %struct._widget_value*, %struct._widget_value** %first_wv, align 8
  store %struct._widget_value* %128, %struct._widget_value** %wv, align 8
  %129 = load %struct._widget_value*, %struct._widget_value** %first_wv, align 8
  %contents219 = getelementptr inbounds %struct._widget_value, %struct._widget_value* %129, i32 0, i32 10
  %130 = load %struct._widget_value*, %struct._widget_value** %contents219, align 8
  store %struct._widget_value* %130, %struct._widget_value** %first_wv, align 8
  %131 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %132 = bitcast %struct._widget_value* %131 to i8*
  call void @xfree(i8* %132)
  br label %if.end.220

if.end.220:                                       ; preds = %if.then.218, %land.lhs.true.213, %land.lhs.true.210, %while.end
  br label %do.body.221

do.body.221:                                      ; preds = %if.end.220
  %133 = load i8, i8* %sa_must_free, align 1
  %tobool222 = trunc i8 %133 to i1
  br i1 %tobool222, label %if.then.223, label %if.end.226

if.then.223:                                      ; preds = %do.body.221
  store i8 0, i8* %sa_must_free, align 1
  %134 = load i64, i64* %sa_count, align 8
  %call224 = call i64 @builtin_lisp_symbol(i32 0)
  %call225 = call i64 @unbind_to(i64 %134, i64 %call224)
  br label %if.end.226

if.end.226:                                       ; preds = %if.then.223, %do.body.221
  br label %do.end.227

do.end.227:                                       ; preds = %if.end.226
  %135 = load %struct._widget_value*, %struct._widget_value** %first_wv, align 8
  ret %struct._widget_value* %135
}

declare noalias i8* @xnmalloc(i64, i64) #1

declare void @record_unwind_protect_ptr(void (i8*)*, i8*) #1

declare i64 @AREF(i64, i64) #1

declare zeroext i1 @STRINGP(i64) #1

declare zeroext i1 @STRING_MULTIBYTE(i64) #1

declare i64 @code_convert_string_norecord(i64, i64, i1 zeroext) #1

declare void @ASET(i64, i64, i64) #1

declare i8* @SSDATA(i64) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: noreturn
declare void @emacs_abort() #2

; Function Attrs: nounwind uwtable
define void @update_submenu_strings(%struct._widget_value* %first_wv) #0 {
entry:
  %first_wv.addr = alloca %struct._widget_value*, align 8
  %wv = alloca %struct._widget_value*, align 8
  store %struct._widget_value* %first_wv, %struct._widget_value** %first_wv.addr, align 8
  %0 = load %struct._widget_value*, %struct._widget_value** %first_wv.addr, align 8
  store %struct._widget_value* %0, %struct._widget_value** %wv, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %tobool = icmp ne %struct._widget_value* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %lname = getelementptr inbounds %struct._widget_value, %struct._widget_value* %2, i32 0, i32 0
  %3 = load i64, i64* %lname, align 8
  %call = call zeroext i1 @STRINGP(i64 %3)
  br i1 %call, label %if.then, label %if.end.11

if.then:                                          ; preds = %for.body
  %4 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %lname1 = getelementptr inbounds %struct._widget_value, %struct._widget_value* %4, i32 0, i32 0
  %5 = load i64, i64* %lname1, align 8
  %call2 = call i8* @SSDATA(i64 %5)
  %6 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %name = getelementptr inbounds %struct._widget_value, %struct._widget_value* %6, i32 0, i32 1
  store i8* %call2, i8** %name, align 8
  %7 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %value = getelementptr inbounds %struct._widget_value, %struct._widget_value* %7, i32 0, i32 2
  %8 = load i8*, i8** %value, align 8
  %cmp = icmp eq i8* %8, inttoptr (i64 1 to i8*)
  br i1 %cmp, label %if.then.3, label %if.end.10

if.then.3:                                        ; preds = %if.then
  %9 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %name4 = getelementptr inbounds %struct._widget_value, %struct._widget_value* %9, i32 0, i32 1
  %10 = load i8*, i8** %name4, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 0
  %11 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %11 to i32
  %cmp5 = icmp eq i32 %conv, 64
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then.3
  %12 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %name8 = getelementptr inbounds %struct._widget_value, %struct._widget_value* %12, i32 0, i32 1
  %13 = load i8*, i8** %name8, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %name8, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then.3
  %14 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %value9 = getelementptr inbounds %struct._widget_value, %struct._widget_value* %14, i32 0, i32 2
  store i8* null, i8** %value9, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %for.body
  %15 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %lkey = getelementptr inbounds %struct._widget_value, %struct._widget_value* %15, i32 0, i32 3
  %16 = load i64, i64* %lkey, align 8
  %call12 = call zeroext i1 @STRINGP(i64 %16)
  br i1 %call12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.end.11
  %17 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %lkey14 = getelementptr inbounds %struct._widget_value, %struct._widget_value* %17, i32 0, i32 3
  %18 = load i64, i64* %lkey14, align 8
  %call15 = call i8* @SSDATA(i64 %18)
  %19 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %key = getelementptr inbounds %struct._widget_value, %struct._widget_value* %19, i32 0, i32 4
  store i8* %call15, i8** %key, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %if.end.11
  %20 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %contents = getelementptr inbounds %struct._widget_value, %struct._widget_value* %20, i32 0, i32 10
  %21 = load %struct._widget_value*, %struct._widget_value** %contents, align 8
  %tobool17 = icmp ne %struct._widget_value* %21, null
  br i1 %tobool17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end.16
  %22 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %contents19 = getelementptr inbounds %struct._widget_value, %struct._widget_value* %22, i32 0, i32 10
  %23 = load %struct._widget_value*, %struct._widget_value** %contents19, align 8
  call void @update_submenu_strings(%struct._widget_value* %23)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.end.16
  br label %for.inc

for.inc:                                          ; preds = %if.end.20
  %24 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %next = getelementptr inbounds %struct._widget_value, %struct._widget_value* %24, i32 0, i32 12
  %25 = load %struct._widget_value*, %struct._widget_value** %next, align 8
  store %struct._widget_value* %25, %struct._widget_value** %wv, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @find_and_call_menu_selection(%struct.frame* %f, i32 %menu_bar_items_used, i64 %vector, i8* %client_data) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %menu_bar_items_used.addr = alloca i32, align 4
  %vector.addr = alloca i64, align 8
  %client_data.addr = alloca i8*, align 8
  %prefix = alloca i64, align 8
  %entry1 = alloca i64, align 8
  %subprefix_stack = alloca i64*, align 8
  %submenu_depth = alloca i32, align 4
  %i = alloca i32, align 4
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  %j = alloca i32, align 4
  %buf = alloca %struct.input_event, align 8
  %frame = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i32 %menu_bar_items_used, i32* %menu_bar_items_used.addr, align 4
  store i64 %vector, i64* %vector.addr, align 8
  store i8* %client_data, i8** %client_data.addr, align 8
  store i32 0, i32* %submenu_depth, align 4
  store i64 16384, i64* %sa_avail, align 8
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call2, i64* %entry1, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %menu_bar_items_used.addr, align 4
  %conv = sext i32 %0 to i64
  %1 = load i64, i64* %sa_avail, align 8
  %div = udiv i64 %1, 8
  %div3 = udiv i64 %div, 1
  %cmp = icmp ule i64 %conv, %div3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %2 = load i32, i32* %menu_bar_items_used.addr, align 4
  %conv5 = sext i32 %2 to i64
  %mul = mul i64 8, %conv5
  %3 = load i64, i64* %sa_avail, align 8
  %sub = sub i64 %3, %mul
  store i64 %sub, i64* %sa_avail, align 8
  %4 = load i32, i32* %menu_bar_items_used.addr, align 4
  %conv6 = sext i32 %4 to i64
  %mul7 = mul i64 8, %conv6
  %5 = alloca i8, i64 %mul7
  %6 = bitcast i8* %5 to i64*
  store i64* %6, i64** %subprefix_stack, align 8
  br label %if.end

if.else:                                          ; preds = %do.body
  %7 = load i32, i32* %menu_bar_items_used.addr, align 4
  %conv8 = sext i32 %7 to i64
  %call9 = call noalias i8* @xnmalloc(i64 %conv8, i64 8)
  %8 = bitcast i8* %call9 to i64*
  store i64* %8, i64** %subprefix_stack, align 8
  store i8 1, i8* %sa_must_free, align 1
  %9 = load i64*, i64** %subprefix_stack, align 8
  %10 = bitcast i64* %9 to i8*
  call void @record_unwind_protect_ptr(void (i8*)* @xfree, i8* %10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %call10 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call10, i64* %prefix, align 8
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.85, %do.end
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %menu_bar_items_used.addr, align 4
  %cmp11 = icmp slt i32 %11, %12
  br i1 %cmp11, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load i64, i64* %vector.addr, align 8
  %14 = load i32, i32* %i, align 4
  %conv13 = sext i32 %14 to i64
  %call14 = call i64 @AREF(i64 %13, i64 %conv13)
  %call15 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp16 = icmp eq i64 %call14, %call15
  br i1 %cmp16, label %if.then.18, label %if.else.20

if.then.18:                                       ; preds = %while.body
  %15 = load i64, i64* %prefix, align 8
  %16 = load i32, i32* %submenu_depth, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %submenu_depth, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load i64*, i64** %subprefix_stack, align 8
  %arrayidx = getelementptr inbounds i64, i64* %17, i64 %idxprom
  store i64 %15, i64* %arrayidx, align 8
  %18 = load i64, i64* %entry1, align 8
  store i64 %18, i64* %prefix, align 8
  %19 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %19, 1
  store i32 %inc19, i32* %i, align 4
  br label %if.end.85

if.else.20:                                       ; preds = %while.body
  %20 = load i64, i64* %vector.addr, align 8
  %21 = load i32, i32* %i, align 4
  %conv21 = sext i32 %21 to i64
  %call22 = call i64 @AREF(i64 %20, i64 %conv21)
  %call23 = call i64 @builtin_lisp_symbol(i32 598)
  %cmp24 = icmp eq i64 %call22, %call23
  br i1 %cmp24, label %if.then.26, label %if.else.30

if.then.26:                                       ; preds = %if.else.20
  %22 = load i32, i32* %submenu_depth, align 4
  %dec = add nsw i32 %22, -1
  store i32 %dec, i32* %submenu_depth, align 4
  %idxprom27 = sext i32 %dec to i64
  %23 = load i64*, i64** %subprefix_stack, align 8
  %arrayidx28 = getelementptr inbounds i64, i64* %23, i64 %idxprom27
  %24 = load i64, i64* %arrayidx28, align 8
  store i64 %24, i64* %prefix, align 8
  %25 = load i32, i32* %i, align 4
  %inc29 = add nsw i32 %25, 1
  store i32 %inc29, i32* %i, align 4
  br label %if.end.84

if.else.30:                                       ; preds = %if.else.20
  %26 = load i64, i64* %vector.addr, align 8
  %27 = load i32, i32* %i, align 4
  %conv31 = sext i32 %27 to i64
  %call32 = call i64 @AREF(i64 %26, i64 %conv31)
  %call33 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp34 = icmp eq i64 %call32, %call33
  br i1 %cmp34, label %if.then.36, label %if.else.40

if.then.36:                                       ; preds = %if.else.30
  %28 = load i64, i64* %vector.addr, align 8
  %29 = load i32, i32* %i, align 4
  %add = add nsw i32 %29, 2
  %conv37 = sext i32 %add to i64
  %call38 = call i64 @AREF(i64 %28, i64 %conv37)
  store i64 %call38, i64* %prefix, align 8
  %30 = load i32, i32* %i, align 4
  %add39 = add nsw i32 %30, 3
  store i32 %add39, i32* %i, align 4
  br label %if.end.83

if.else.40:                                       ; preds = %if.else.30
  %31 = load i64, i64* %vector.addr, align 8
  %32 = load i32, i32* %i, align 4
  %add41 = add nsw i32 %32, 2
  %conv42 = sext i32 %add41 to i64
  %call43 = call i64 @AREF(i64 %31, i64 %conv42)
  store i64 %call43, i64* %entry1, align 8
  %33 = load i8*, i8** %client_data.addr, align 8
  %34 = ptrtoint i8* %33 to i64
  %35 = load i32, i32* %i, align 4
  %conv44 = sext i32 %35 to i64
  %cmp45 = icmp eq i64 %34, %conv44
  br i1 %cmp45, label %if.then.47, label %if.end.81

if.then.47:                                       ; preds = %if.else.40
  %36 = bitcast %struct.input_event* %buf to i8*
  call void @llvm.memset.p0i8.i64(i8* %36, i8 0, i64 56, i32 8, i1 false)
  %37 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %38 = bitcast %struct.frame* %37 to i8*
  %call48 = call i64 @make_lisp_ptr(i8* %38, i32 5)
  store i64 %call48, i64* %frame, align 8
  %39 = bitcast %struct.input_event* %buf to i32*
  %bf.load = load i32, i32* %39, align 8
  %bf.clear = and i32 %bf.load, -65536
  %bf.set = or i32 %bf.clear, 14
  store i32 %bf.set, i32* %39, align 8
  %40 = load i64, i64* %frame, align 8
  %frame_or_window = getelementptr inbounds %struct.input_event, %struct.input_event* %buf, i32 0, i32 6
  store i64 %40, i64* %frame_or_window, align 8
  %41 = load i64, i64* %frame, align 8
  %arg = getelementptr inbounds %struct.input_event, %struct.input_event* %buf, i32 0, i32 7
  store i64 %41, i64* %arg, align 8
  call void @kbd_buffer_store_event(%struct.input_event* %buf)
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.47
  %42 = load i32, i32* %j, align 4
  %43 = load i32, i32* %submenu_depth, align 4
  %cmp49 = icmp slt i32 %42, %43
  br i1 %cmp49, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %44 = load i32, i32* %j, align 4
  %idxprom51 = sext i32 %44 to i64
  %45 = load i64*, i64** %subprefix_stack, align 8
  %arrayidx52 = getelementptr inbounds i64, i64* %45, i64 %idxprom51
  %46 = load i64, i64* %arrayidx52, align 8
  %call53 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp54 = icmp eq i64 %46, %call53
  br i1 %cmp54, label %if.end.64, label %if.then.56

if.then.56:                                       ; preds = %for.body
  %47 = bitcast %struct.input_event* %buf to i32*
  %bf.load57 = load i32, i32* %47, align 8
  %bf.clear58 = and i32 %bf.load57, -65536
  %bf.set59 = or i32 %bf.clear58, 14
  store i32 %bf.set59, i32* %47, align 8
  %48 = load i64, i64* %frame, align 8
  %frame_or_window60 = getelementptr inbounds %struct.input_event, %struct.input_event* %buf, i32 0, i32 6
  store i64 %48, i64* %frame_or_window60, align 8
  %49 = load i32, i32* %j, align 4
  %idxprom61 = sext i32 %49 to i64
  %50 = load i64*, i64** %subprefix_stack, align 8
  %arrayidx62 = getelementptr inbounds i64, i64* %50, i64 %idxprom61
  %51 = load i64, i64* %arrayidx62, align 8
  %arg63 = getelementptr inbounds %struct.input_event, %struct.input_event* %buf, i32 0, i32 7
  store i64 %51, i64* %arg63, align 8
  call void @kbd_buffer_store_event(%struct.input_event* %buf)
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.56, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.64
  %52 = load i32, i32* %j, align 4
  %inc65 = add nsw i32 %52, 1
  store i32 %inc65, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %53 = load i64, i64* %prefix, align 8
  %call66 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp67 = icmp eq i64 %53, %call66
  br i1 %cmp67, label %if.end.75, label %if.then.69

if.then.69:                                       ; preds = %for.end
  %54 = bitcast %struct.input_event* %buf to i32*
  %bf.load70 = load i32, i32* %54, align 8
  %bf.clear71 = and i32 %bf.load70, -65536
  %bf.set72 = or i32 %bf.clear71, 14
  store i32 %bf.set72, i32* %54, align 8
  %55 = load i64, i64* %frame, align 8
  %frame_or_window73 = getelementptr inbounds %struct.input_event, %struct.input_event* %buf, i32 0, i32 6
  store i64 %55, i64* %frame_or_window73, align 8
  %56 = load i64, i64* %prefix, align 8
  %arg74 = getelementptr inbounds %struct.input_event, %struct.input_event* %buf, i32 0, i32 7
  store i64 %56, i64* %arg74, align 8
  call void @kbd_buffer_store_event(%struct.input_event* %buf)
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.69, %for.end
  %57 = bitcast %struct.input_event* %buf to i32*
  %bf.load76 = load i32, i32* %57, align 8
  %bf.clear77 = and i32 %bf.load76, -65536
  %bf.set78 = or i32 %bf.clear77, 14
  store i32 %bf.set78, i32* %57, align 8
  %58 = load i64, i64* %frame, align 8
  %frame_or_window79 = getelementptr inbounds %struct.input_event, %struct.input_event* %buf, i32 0, i32 6
  store i64 %58, i64* %frame_or_window79, align 8
  %59 = load i64, i64* %entry1, align 8
  %arg80 = getelementptr inbounds %struct.input_event, %struct.input_event* %buf, i32 0, i32 7
  store i64 %59, i64* %arg80, align 8
  call void @kbd_buffer_store_event(%struct.input_event* %buf)
  br label %while.end

if.end.81:                                        ; preds = %if.else.40
  %60 = load i32, i32* %i, align 4
  %add82 = add nsw i32 %60, 8
  store i32 %add82, i32* %i, align 4
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.81, %if.then.36
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.then.26
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.then.18
  br label %while.cond

while.end:                                        ; preds = %if.end.75, %while.cond
  br label %do.body.86

do.body.86:                                       ; preds = %while.end
  %61 = load i8, i8* %sa_must_free, align 1
  %tobool = trunc i8 %61 to i1
  br i1 %tobool, label %if.then.87, label %if.end.90

if.then.87:                                       ; preds = %do.body.86
  store i8 0, i8* %sa_must_free, align 1
  %62 = load i64, i64* %sa_count, align 8
  %call88 = call i64 @builtin_lisp_symbol(i32 0)
  %call89 = call i64 @unbind_to(i64 %62, i64 %call88)
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.87, %do.body.86
  br label %do.end.91

do.end.91:                                        ; preds = %if.end.90
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

declare i64 @make_lisp_ptr(i8*, i32) #1

declare void @kbd_buffer_store_event(%struct.input_event*) #1

; Function Attrs: nounwind uwtable
define i64 @menu_item_width(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %len = alloca i64, align 8
  %p = alloca i8*, align 8
  %ch_len = alloca i32, align 4
  %ch = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i64 0, i64* %len, align 8
  %0 = load i8*, i8** %str.addr, align 8
  store i8* %0, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end.91, %entry
  %1 = load i8*, i8** %p, align 8
  %2 = load i8, i8* %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %and = and i32 %conv, 128
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %cond.false, label %cond.true

cond.true:                                        ; preds = %for.body
  store i32 1, i32* %ch_len, align 4
  %5 = load i8*, i8** %p, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %6 to i32
  br label %cond.end.41

cond.false:                                       ; preds = %for.body
  %7 = load i8*, i8** %p, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %8 to i32
  %and6 = and i32 %conv5, 32
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %cond.false.18, label %cond.true.8

cond.true.8:                                      ; preds = %cond.false
  store i32 2, i32* %ch_len, align 4
  %9 = load i8*, i8** %p, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %9, i64 0
  %10 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %10 to i32
  %and11 = and i32 %conv10, 31
  %shl = shl i32 %and11, 6
  %11 = load i8*, i8** %p, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %12 to i32
  %and14 = and i32 %conv13, 63
  %or = or i32 %shl, %and14
  %13 = load i8*, i8** %p, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %13, i64 0
  %14 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %14 to i32
  %cmp = icmp slt i32 %conv16, 194
  %cond = select i1 %cmp, i32 4194176, i32 0
  %add = add nsw i32 %or, %cond
  br label %cond.end.39

cond.false.18:                                    ; preds = %cond.false
  %15 = load i8*, i8** %p, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %15, i64 0
  %16 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %16 to i32
  %and21 = and i32 %conv20, 16
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %cond.false.37, label %cond.true.23

cond.true.23:                                     ; preds = %cond.false.18
  store i32 3, i32* %ch_len, align 4
  %17 = load i8*, i8** %p, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %17, i64 0
  %18 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %18 to i32
  %and26 = and i32 %conv25, 15
  %shl27 = shl i32 %and26, 12
  %19 = load i8*, i8** %p, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %19, i64 1
  %20 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %20 to i32
  %and30 = and i32 %conv29, 63
  %shl31 = shl i32 %and30, 6
  %or32 = or i32 %shl27, %shl31
  %21 = load i8*, i8** %p, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %21, i64 2
  %22 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %22 to i32
  %and35 = and i32 %conv34, 63
  %or36 = or i32 %or32, %and35
  br label %cond.end

cond.false.37:                                    ; preds = %cond.false.18
  %23 = load i8*, i8** %p, align 8
  %call = call i32 @string_char(i8* %23, i8** null, i32* %ch_len)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.37, %cond.true.23
  %cond38 = phi i32 [ %or36, %cond.true.23 ], [ %call, %cond.false.37 ]
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.end, %cond.true.8
  %cond40 = phi i32 [ %add, %cond.true.8 ], [ %cond38, %cond.end ]
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.end.39, %cond.true
  %cond42 = phi i32 [ %conv3, %cond.true ], [ %cond40, %cond.end.39 ]
  store i32 %cond42, i32* %ch, align 4
  br i1 true, label %cond.true.43, label %cond.false.47

cond.true.43:                                     ; preds = %cond.end.41
  %24 = load i32, i32* %ch, align 4
  %add44 = add i32 %24, 0
  %cmp45 = icmp ult i32 %add44, 128
  br i1 %cmp45, label %cond.true.52, label %cond.false.87

cond.false.47:                                    ; preds = %cond.end.41
  %25 = load i32, i32* %ch, align 4
  %conv48 = sext i32 %25 to i64
  %add49 = add i64 %conv48, 0
  %cmp50 = icmp ult i64 %add49, 128
  br i1 %cmp50, label %cond.true.52, label %cond.false.87

cond.true.52:                                     ; preds = %cond.false.47, %cond.true.43
  %26 = load i32, i32* %ch, align 4
  %cmp53 = icmp slt i32 %26, 32
  br i1 %cmp53, label %cond.true.55, label %cond.false.73

cond.true.55:                                     ; preds = %cond.true.52
  %27 = load i32, i32* %ch, align 4
  %cmp56 = icmp eq i32 %27, 9
  br i1 %cmp56, label %cond.true.58, label %cond.false.60

cond.true.58:                                     ; preds = %cond.true.55
  %28 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %tab_width_ = getelementptr inbounds %struct.buffer, %struct.buffer* %28, i32 0, i32 19
  %29 = load i64, i64* %tab_width_, align 8
  %shr = ashr i64 %29, 2
  %call59 = call i32 @sanitize_tab_width(i64 %shr)
  br label %cond.end.71

cond.false.60:                                    ; preds = %cond.true.55
  %30 = load i32, i32* %ch, align 4
  %cmp61 = icmp eq i32 %30, 10
  br i1 %cmp61, label %cond.true.63, label %cond.false.64

cond.true.63:                                     ; preds = %cond.false.60
  br label %cond.end.69

cond.false.64:                                    ; preds = %cond.false.60
  %31 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %ctl_arrow_ = getelementptr inbounds %struct.buffer, %struct.buffer* %31, i32 0, i32 29
  %32 = load i64, i64* %ctl_arrow_, align 8
  %call65 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp66 = icmp eq i64 %32, %call65
  %cond68 = select i1 %cmp66, i32 4, i32 2
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.false.64, %cond.true.63
  %cond70 = phi i32 [ 0, %cond.true.63 ], [ %cond68, %cond.false.64 ]
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.end.69, %cond.true.58
  %cond72 = phi i32 [ %call59, %cond.true.58 ], [ %cond70, %cond.end.69 ]
  br label %cond.end.85

cond.false.73:                                    ; preds = %cond.true.52
  %33 = load i32, i32* %ch, align 4
  %cmp74 = icmp slt i32 %33, 127
  br i1 %cmp74, label %cond.true.76, label %cond.false.77

cond.true.76:                                     ; preds = %cond.false.73
  br label %cond.end.83

cond.false.77:                                    ; preds = %cond.false.73
  %34 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %ctl_arrow_78 = getelementptr inbounds %struct.buffer, %struct.buffer* %34, i32 0, i32 29
  %35 = load i64, i64* %ctl_arrow_78, align 8
  %call79 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp80 = icmp eq i64 %35, %call79
  %cond82 = select i1 %cmp80, i32 4, i32 2
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.false.77, %cond.true.76
  %cond84 = phi i32 [ 1, %cond.true.76 ], [ %cond82, %cond.false.77 ]
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.end.83, %cond.end.71
  %cond86 = phi i32 [ %cond72, %cond.end.71 ], [ %cond84, %cond.end.83 ]
  br label %cond.end.91

cond.false.87:                                    ; preds = %cond.false.47, %cond.true.43
  %36 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 28), align 8
  %37 = load i32, i32* %ch, align 4
  %call88 = call i64 @CHAR_TABLE_REF(i64 %36, i32 %37)
  %shr89 = ashr i64 %call88, 2
  %call90 = call i32 @sanitize_char_width(i64 %shr89)
  br label %cond.end.91

cond.end.91:                                      ; preds = %cond.false.87, %cond.end.85
  %cond92 = phi i32 [ %cond86, %cond.end.85 ], [ %call90, %cond.false.87 ]
  %conv93 = sext i32 %cond92 to i64
  %38 = load i64, i64* %len, align 8
  %add94 = add nsw i64 %38, %conv93
  store i64 %add94, i64* %len, align 8
  %39 = load i32, i32* %ch_len, align 4
  %40 = load i8*, i8** %p, align 8
  %idx.ext = sext i32 %39 to i64
  %add.ptr = getelementptr inbounds i8, i8* %40, i64 %idx.ext
  store i8* %add.ptr, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = load i64, i64* %len, align 8
  ret i64 %41
}

declare i32 @string_char(i8*, i8**, i32*) #1

declare i32 @sanitize_tab_width(i64) #1

declare i32 @sanitize_char_width(i64) #1

declare i64 @CHAR_TABLE_REF(i64, i32) #1

; Function Attrs: nounwind uwtable
define i64 @Fmenu_bar_menu_at_x_y(i64 %x, i64 %y, i64 %frame) #0 {
entry:
  %retval = alloca i64, align 8
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
  %frame.addr = alloca i64, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %f = alloca %struct.frame*, align 8
  %items = alloca i64, align 8
  %item = alloca i64, align 8
  %i = alloca i32, align 4
  %pos = alloca i64, align 8
  %str = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  store i64 %y, i64* %y.addr, align 8
  store i64 %frame, i64* %frame.addr, align 8
  %0 = load i64, i64* %frame.addr, align 8
  %call = call %struct.frame* @decode_any_frame(i64 %0)
  store %struct.frame* %call, %struct.frame** %f, align 8
  %1 = load %struct.frame*, %struct.frame** %f, align 8
  %terminal = getelementptr inbounds %struct.frame, %struct.frame* %1, i32 0, i32 61
  %2 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %cmp = icmp ne %struct.terminal* %2, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.frame*, %struct.frame** %f, align 8
  %4 = load i64, i64* %x.addr, align 8
  %shr = ashr i64 %4, 2
  %conv = trunc i64 %shr to i32
  %5 = load i64, i64* %y.addr, align 8
  %shr2 = ashr i64 %5, 2
  %conv3 = trunc i64 %shr2 to i32
  call void @pixel_to_glyph_coords(%struct.frame* %3, i32 %conv, i32 %conv3, i32* %col, i32* %row, %struct.XRectangle* null, i1 zeroext true)
  %6 = load i32, i32* %row, align 4
  %cmp4 = icmp sle i32 0, %6
  br i1 %cmp4, label %land.lhs.true, label %if.end.41

land.lhs.true:                                    ; preds = %if.end
  %7 = load i32, i32* %row, align 4
  %8 = load %struct.frame*, %struct.frame** %f, align 8
  %menu_bar_lines = getelementptr inbounds %struct.frame, %struct.frame* %8, i32 0, i32 57
  %9 = load i32, i32* %menu_bar_lines, align 4
  %cmp6 = icmp slt i32 %7, %9
  br i1 %cmp6, label %if.then.8, label %if.end.41

if.then.8:                                        ; preds = %land.lhs.true
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call9, i64* %item, align 8
  %10 = load %struct.frame*, %struct.frame** %f, align 8
  %menu_bar_items = getelementptr inbounds %struct.frame, %struct.frame* %10, i32 0, i32 11
  %11 = load i64, i64* %menu_bar_items, align 8
  store i64 %11, i64* %items, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.8
  %12 = load i32, i32* %i, align 4
  %conv10 = sext i32 %12 to i64
  %13 = load i64, i64* %items, align 8
  %call11 = call i64 @ASIZE(i64 %13)
  %cmp12 = icmp slt i64 %conv10, %call11
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i64, i64* %items, align 8
  %15 = load i32, i32* %i, align 4
  %add = add nsw i32 %15, 1
  %conv14 = sext i32 %add to i64
  %call15 = call i64 @AREF(i64 %14, i64 %conv14)
  store i64 %call15, i64* %str, align 8
  %16 = load i64, i64* %items, align 8
  %17 = load i32, i32* %i, align 4
  %add16 = add nsw i32 %17, 3
  %conv17 = sext i32 %add16 to i64
  %call18 = call i64 @AREF(i64 %16, i64 %conv17)
  store i64 %call18, i64* %pos, align 8
  %18 = load i64, i64* %str, align 8
  %call19 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp20 = icmp eq i64 %18, %call19
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %for.body
  %19 = load i64, i64* %item, align 8
  store i64 %19, i64* %retval
  br label %return

if.end.23:                                        ; preds = %for.body
  %20 = load i64, i64* %pos, align 8
  %shr24 = ashr i64 %20, 2
  %21 = load i32, i32* %col, align 4
  %conv25 = sext i32 %21 to i64
  %cmp26 = icmp sle i64 %shr24, %conv25
  br i1 %cmp26, label %land.lhs.true.28, label %if.end.39

land.lhs.true.28:                                 ; preds = %if.end.23
  %22 = load i32, i32* %col, align 4
  %conv29 = sext i32 %22 to i64
  %23 = load i64, i64* %pos, align 8
  %shr30 = ashr i64 %23, 2
  %24 = load i64, i64* %str, align 8
  %call31 = call i8* @SDATA(i64 %24)
  %call32 = call i64 @menu_item_width(i8* %call31)
  %add33 = add nsw i64 %shr30, %call32
  %cmp34 = icmp sle i64 %conv29, %add33
  br i1 %cmp34, label %if.then.36, label %if.end.39

if.then.36:                                       ; preds = %land.lhs.true.28
  %25 = load i64, i64* %items, align 8
  %26 = load i32, i32* %i, align 4
  %conv37 = sext i32 %26 to i64
  %call38 = call i64 @AREF(i64 %25, i64 %conv37)
  store i64 %call38, i64* %item, align 8
  %27 = load i64, i64* %item, align 8
  store i64 %27, i64* %retval
  br label %return

if.end.39:                                        ; preds = %land.lhs.true.28, %if.end.23
  br label %for.inc

for.inc:                                          ; preds = %if.end.39
  %28 = load i32, i32* %i, align 4
  %add40 = add nsw i32 %28, 4
  store i32 %add40, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.41

if.end.41:                                        ; preds = %for.end, %land.lhs.true, %if.end
  %call42 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call42, i64* %retval
  br label %return

return:                                           ; preds = %if.end.41, %if.then.36, %if.then.22, %if.then
  %29 = load i64, i64* %retval
  ret i64 %29
}

declare %struct.frame* @decode_any_frame(i64) #1

declare void @pixel_to_glyph_coords(%struct.frame*, i32, i32, i32*, i32*, %struct.XRectangle*, i1 zeroext) #1

declare i64 @ASIZE(i64) #1

declare i8* @SDATA(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fx_popup_menu(i64 %position, i64 %menu) #0 {
entry:
  %retval = alloca i64, align 8
  %position.addr = alloca i64, align 8
  %menu.addr = alloca i64, align 8
  %keymap = alloca i64, align 8
  %tem = alloca i64, align 8
  %tem2 = alloca i64, align 8
  %xpos = alloca i32, align 4
  %ypos = alloca i32, align 4
  %title = alloca i64, align 8
  %error_name = alloca i8*, align 8
  %selection = alloca i64, align 8
  %f = alloca %struct.frame*, align 8
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  %window = alloca i64, align 8
  %menuflags = alloca i32, align 4
  %specpdl_count = alloca i64, align 8
  %get_current_pos_p = alloca i8, align 1
  %new_f = alloca %struct.frame*, align 8
  %cur_x = alloca i32, align 4
  %cur_y = alloca i32, align 4
  %bar_window = alloca i64, align 8
  %part = alloca i32, align 4
  %time = alloca i64, align 8
  %mouse_position_hook = alloca void (%struct.frame**, i32, i64*, i32*, i64*, i64*, i64*)*, align 8
  %win = alloca %struct.window*, align 8
  %prompt = alloca i64, align 8
  %nmaps = alloca i64, align 8
  %maps = alloca i64*, align 8
  %i = alloca i64, align 8
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  %alloca_nbytes = alloca i64, align 8
  %arg_ = alloca i64, align 8
  %prompt2533 = alloca i64, align 8
  store i64 %position, i64* %position.addr, align 8
  store i64 %menu, i64* %menu.addr, align 8
  store i32 0, i32* %xpos, align 4
  store i32 0, i32* %ypos, align 4
  store i8* null, i8** %error_name, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %selection, align 8
  store %struct.frame* null, %struct.frame** %f, align 8
  store i32 0, i32* %menuflags, align 4
  %call1 = call i64 @SPECPDL_INDEX()
  store i64 %call1, i64* %specpdl_count, align 8
  %0 = load i64, i64* %position.addr, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call3, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i8 0, i8* %get_current_pos_p, align 1
  %1 = load i64, i64* %position.addr, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp5 = icmp eq i64 %1, %call4
  br i1 %cmp5, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i64, i64* %position.addr, align 8
  %and = and i64 %2, 7
  %conv = trunc i64 %and to i32
  %cmp6 = icmp eq i32 %conv, 3
  br i1 %cmp6, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false
  %3 = load i64, i64* %position.addr, align 8
  %sub = sub nsw i64 %3, 3
  %4 = inttoptr i64 %sub to i8*
  %5 = bitcast i8* %4 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %5, i32 0, i32 0
  %6 = load i64, i64* %car, align 8
  %call8 = call i64 @builtin_lisp_symbol(i32 651)
  %cmp9 = icmp eq i64 %6, %call8
  br i1 %cmp9, label %if.then.17, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %land.lhs.true
  %7 = load i64, i64* %position.addr, align 8
  %sub12 = sub nsw i64 %7, 3
  %8 = inttoptr i64 %sub12 to i8*
  %9 = bitcast i8* %8 to %struct.Lisp_Cons*
  %car13 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %9, i32 0, i32 0
  %10 = load i64, i64* %car13, align 8
  %call14 = call i64 @builtin_lisp_symbol(i32 921)
  %cmp15 = icmp eq i64 %10, %call14
  br i1 %cmp15, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %lor.lhs.false.11, %land.lhs.true, %if.end
  store i8 1, i8* %get_current_pos_p, align 1
  br label %if.end.70

if.else:                                          ; preds = %lor.lhs.false.11, %lor.lhs.false
  %11 = load i64, i64* %position.addr, align 8
  %call18 = call i64 @Fcar(i64 %11)
  store i64 %call18, i64* %tem, align 8
  %12 = load i64, i64* %tem, align 8
  %and19 = and i64 %12, 7
  %conv20 = trunc i64 %and19 to i32
  %cmp21 = icmp eq i32 %conv20, 3
  br i1 %cmp21, label %if.then.23, label %if.else.30

if.then.23:                                       ; preds = %if.else
  %13 = load i64, i64* %position.addr, align 8
  %call24 = call i64 @Fcdr(i64 %13)
  %call25 = call i64 @Fcar(i64 %call24)
  store i64 %call25, i64* %window, align 8
  %14 = load i64, i64* %tem, align 8
  %sub26 = sub nsw i64 %14, 3
  %15 = inttoptr i64 %sub26 to i8*
  %16 = bitcast i8* %15 to %struct.Lisp_Cons*
  %car27 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %16, i32 0, i32 0
  %17 = load i64, i64* %car27, align 8
  store i64 %17, i64* %x, align 8
  %18 = load i64, i64* %tem, align 8
  %sub28 = sub nsw i64 %18, 3
  %19 = inttoptr i64 %sub28 to i8*
  %20 = bitcast i8* %19 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %20, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %21 = load i64, i64* %cdr, align 8
  %call29 = call i64 @Fcar(i64 %21)
  store i64 %call29, i64* %y, align 8
  br label %if.end.60

if.else.30:                                       ; preds = %if.else
  %22 = load i32, i32* %menuflags, align 4
  %or = or i32 %22, 2
  store i32 %or, i32* %menuflags, align 4
  %23 = load i64, i64* %position.addr, align 8
  %call31 = call i64 @Fcdr(i64 %23)
  %call32 = call i64 @Fcar(i64 %call31)
  store i64 %call32, i64* %tem, align 8
  %24 = load i64, i64* %tem, align 8
  %call33 = call i64 @Fcar(i64 %24)
  store i64 %call33, i64* %window, align 8
  %25 = load i64, i64* %tem, align 8
  %call34 = call i64 @Fcdr(i64 %25)
  %call35 = call i64 @Fcar(i64 %call34)
  store i64 %call35, i64* %tem2, align 8
  %26 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 377), align 8
  %call36 = call i64 @CDR_SAFE(i64 %26)
  %call37 = call i64 @CAR_SAFE(i64 %call36)
  %27 = load i64, i64* %position.addr, align 8
  %call38 = call i64 @CDR_SAFE(i64 %27)
  %call39 = call i64 @CAR_SAFE(i64 %call38)
  %cmp40 = icmp eq i64 %call37, %call39
  br i1 %cmp40, label %if.end.54, label %land.lhs.true.42

land.lhs.true.42:                                 ; preds = %if.else.30
  %28 = load i64, i64* %tem2, align 8
  %and43 = and i64 %28, 7
  %conv44 = trunc i64 %and43 to i32
  %cmp45 = icmp eq i32 %conv44, 3
  br i1 %cmp45, label %land.lhs.true.47, label %if.end.54

land.lhs.true.47:                                 ; preds = %land.lhs.true.42
  %29 = load i64, i64* %tem2, align 8
  %call48 = call i64 @Fcar(i64 %29)
  %call49 = call i64 @builtin_lisp_symbol(i32 651)
  %cmp50 = icmp eq i64 %call48, %call49
  br i1 %cmp50, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %land.lhs.true.47
  %30 = load i32, i32* %menuflags, align 4
  %or53 = or i32 %30, 4
  store i32 %or53, i32* %menuflags, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.52, %land.lhs.true.47, %land.lhs.true.42, %if.else.30
  %31 = load i64, i64* %tem, align 8
  %call55 = call i64 @Fcdr(i64 %31)
  %call56 = call i64 @Fcdr(i64 %call55)
  %call57 = call i64 @Fcar(i64 %call56)
  store i64 %call57, i64* %tem, align 8
  %32 = load i64, i64* %tem, align 8
  %call58 = call i64 @Fcar(i64 %32)
  store i64 %call58, i64* %x, align 8
  %33 = load i64, i64* %tem, align 8
  %call59 = call i64 @Fcdr(i64 %33)
  store i64 %call59, i64* %y, align 8
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.54, %if.then.23
  %34 = load i64, i64* %x, align 8
  %call61 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp62 = icmp eq i64 %34, %call61
  br i1 %cmp62, label %land.lhs.true.64, label %if.end.69

land.lhs.true.64:                                 ; preds = %if.end.60
  %35 = load i64, i64* %y, align 8
  %call65 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp66 = icmp eq i64 %35, %call65
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %land.lhs.true.64
  store i8 1, i8* %get_current_pos_p, align 1
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.68, %land.lhs.true.64, %if.end.60
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.then.17
  %36 = load i8, i8* %get_current_pos_p, align 1
  %tobool = trunc i8 %36 to i1
  br i1 %tobool, label %if.then.71, label %if.end.107

if.then.71:                                       ; preds = %if.end.70
  %37 = load i64, i64* @selected_frame, align 8
  %call72 = call zeroext i1 @FRAMEP(i64 %37)
  br i1 %call72, label %land.lhs.true.74, label %cond.false

land.lhs.true.74:                                 ; preds = %if.then.71
  %38 = load i64, i64* @selected_frame, align 8
  %sub75 = sub nsw i64 %38, 5
  %39 = inttoptr i64 %sub75 to i8*
  %40 = bitcast i8* %39 to %struct.frame*
  %terminal = getelementptr inbounds %struct.frame, %struct.frame* %40, i32 0, i32 61
  %41 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %cmp76 = icmp ne %struct.terminal* %41, null
  br i1 %cmp76, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.74
  %42 = load i64, i64* @selected_frame, align 8
  %sub78 = sub nsw i64 %42, 5
  %43 = inttoptr i64 %sub78 to i8*
  %44 = bitcast i8* %43 to %struct.frame*
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.74, %if.then.71
  call void @emacs_abort() #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %45, %cond.true
  %cond = phi %struct.frame* [ %44, %cond.true ], [ null, %45 ]
  store %struct.frame* %cond, %struct.frame** %new_f, align 8
  %call79 = call i64 @make_natnum(i64 0)
  store i64 %call79, i64* %x, align 8
  %call80 = call i64 @make_natnum(i64 0)
  store i64 %call80, i64* %y, align 8
  %46 = load %struct.frame*, %struct.frame** %new_f, align 8
  %output_method = getelementptr inbounds %struct.frame, %struct.frame* %46, i32 0, i32 26
  %47 = bitcast i48* %output_method to i64*
  %bf.load = load i64, i64* %47, align 8
  %bf.lshr = lshr i64 %bf.load, 23
  %bf.clear = and i64 %bf.lshr, 7
  %bf.cast = trunc i64 %bf.clear to i32
  %cmp81 = icmp eq i32 %bf.cast, 2
  br i1 %cmp81, label %if.then.83, label %if.else.92

if.then.83:                                       ; preds = %cond.end
  %48 = load %struct.frame*, %struct.frame** %new_f, align 8
  %cmp84 = icmp ne %struct.frame* %48, null
  br i1 %cmp84, label %if.then.86, label %if.end.91

if.then.86:                                       ; preds = %if.then.83
  %49 = load %struct.frame*, %struct.frame** %new_f, align 8
  call void @x_relative_mouse_position(%struct.frame* %49, i32* %cur_x, i32* %cur_y)
  %50 = load i32, i32* %cur_x, align 4
  %conv87 = sext i32 %50 to i64
  %shl = shl i64 %conv87, 2
  %add = add i64 %shl, 2
  store i64 %add, i64* %x, align 8
  %51 = load i32, i32* %cur_y, align 4
  %conv88 = sext i32 %51 to i64
  %shl89 = shl i64 %conv88, 2
  %add90 = add i64 %shl89, 2
  store i64 %add90, i64* %y, align 8
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.86, %if.then.83
  br label %if.end.98

if.else.92:                                       ; preds = %cond.end
  %52 = load %struct.frame*, %struct.frame** %new_f, align 8
  %terminal93 = getelementptr inbounds %struct.frame, %struct.frame* %52, i32 0, i32 61
  %53 = load %struct.terminal*, %struct.terminal** %terminal93, align 8
  %mouse_position_hook94 = getelementptr inbounds %struct.terminal, %struct.terminal* %53, i32 0, i32 32
  %54 = load void (%struct.frame**, i32, i64*, i32*, i64*, i64*, i64*)*, void (%struct.frame**, i32, i64*, i32*, i64*, i64*, i64*)** %mouse_position_hook94, align 8
  store void (%struct.frame**, i32, i64*, i32*, i64*, i64*, i64*)* %54, void (%struct.frame**, i32, i64*, i32*, i64*, i64*, i64*)** %mouse_position_hook, align 8
  %55 = load void (%struct.frame**, i32, i64*, i32*, i64*, i64*, i64*)*, void (%struct.frame**, i32, i64*, i32*, i64*, i64*, i64*)** %mouse_position_hook, align 8
  %tobool95 = icmp ne void (%struct.frame**, i32, i64*, i32*, i64*, i64*, i64*)* %55, null
  br i1 %tobool95, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %if.else.92
  %56 = load void (%struct.frame**, i32, i64*, i32*, i64*, i64*, i64*)*, void (%struct.frame**, i32, i64*, i32*, i64*, i64*, i64*)** %mouse_position_hook, align 8
  call void %56(%struct.frame** %new_f, i32 1, i64* %bar_window, i32* %part, i64* %x, i64* %y, i64* %time)
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.96, %if.else.92
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.end.91
  %57 = load %struct.frame*, %struct.frame** %new_f, align 8
  %cmp99 = icmp ne %struct.frame* %57, null
  br i1 %cmp99, label %if.then.101, label %if.else.103

if.then.101:                                      ; preds = %if.end.98
  %58 = load %struct.frame*, %struct.frame** %new_f, align 8
  %59 = bitcast %struct.frame* %58 to i8*
  %call102 = call i64 @make_lisp_ptr(i8* %59, i32 5)
  store i64 %call102, i64* %window, align 8
  br label %if.end.106

if.else.103:                                      ; preds = %if.end.98
  %60 = load i64, i64* @selected_window, align 8
  store i64 %60, i64* %window, align 8
  %call104 = call i64 @make_natnum(i64 0)
  store i64 %call104, i64* %x, align 8
  %call105 = call i64 @make_natnum(i64 0)
  store i64 %call105, i64* %y, align 8
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.103, %if.then.101
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %if.end.70
  %61 = load i64, i64* %window, align 8
  %call108 = call zeroext i1 @FRAMEP(i64 %61)
  br i1 %call108, label %if.then.109, label %if.else.111

if.then.109:                                      ; preds = %if.end.107
  %62 = load i64, i64* %window, align 8
  %sub110 = sub nsw i64 %62, 5
  %63 = inttoptr i64 %sub110 to i8*
  %64 = bitcast i8* %63 to %struct.frame*
  store %struct.frame* %64, %struct.frame** %f, align 8
  store i32 0, i32* %xpos, align 4
  store i32 0, i32* %ypos, align 4
  br label %if.end.135

if.else.111:                                      ; preds = %if.end.107
  %65 = load i64, i64* %window, align 8
  %call112 = call zeroext i1 @WINDOWP(i64 %65)
  br i1 %call112, label %if.then.113, label %if.else.133

if.then.113:                                      ; preds = %if.else.111
  %66 = load i64, i64* %window, align 8
  %call114 = call %struct.window* @XWINDOW(i64 %66)
  store %struct.window* %call114, %struct.window** %win, align 8
  %67 = load i64, i64* %window, align 8
  %call115 = call zeroext i1 @WINDOWP(i64 %67)
  br i1 %call115, label %land.lhs.true.117, label %cond.false.122

land.lhs.true.117:                                ; preds = %if.then.113
  %68 = load i64, i64* %window, align 8
  %call118 = call %struct.window* @XWINDOW(i64 %68)
  %contents = getelementptr inbounds %struct.window, %struct.window* %call118, i32 0, i32 10
  %69 = load i64, i64* %contents, align 8
  %call119 = call zeroext i1 @BUFFERP(i64 %69)
  br i1 %call119, label %cond.true.121, label %cond.false.122

cond.true.121:                                    ; preds = %land.lhs.true.117
  br label %cond.end.124

cond.false.122:                                   ; preds = %land.lhs.true.117, %if.then.113
  %call123 = call i64 @builtin_lisp_symbol(i32 1027)
  %70 = load i64, i64* %window, align 8
  %71 = call i64 @wrong_type_argument(i64 %call123, i64 %70) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end.124

cond.end.124:                                     ; preds = %72, %cond.true.121
  %73 = load %struct.window*, %struct.window** %win, align 8
  %frame = getelementptr inbounds %struct.window, %struct.window* %73, i32 0, i32 1
  %74 = load i64, i64* %frame, align 8
  %sub125 = sub nsw i64 %74, 5
  %75 = inttoptr i64 %sub125 to i8*
  %76 = bitcast i8* %75 to %struct.frame*
  store %struct.frame* %76, %struct.frame** %f, align 8
  %77 = load %struct.window*, %struct.window** %win, align 8
  %frame126 = getelementptr inbounds %struct.window, %struct.window* %77, i32 0, i32 1
  %78 = load i64, i64* %frame126, align 8
  %sub127 = sub nsw i64 %78, 5
  %79 = inttoptr i64 %sub127 to i8*
  %80 = bitcast i8* %79 to %struct.frame*
  %internal_border_width = getelementptr inbounds %struct.frame, %struct.frame* %80, i32 0, i32 51
  %81 = load i32, i32* %internal_border_width, align 4
  %82 = load %struct.window*, %struct.window** %win, align 8
  %pixel_left = getelementptr inbounds %struct.window, %struct.window* %82, i32 0, i32 30
  %83 = load i32, i32* %pixel_left, align 4
  %add128 = add nsw i32 %81, %83
  store i32 %add128, i32* %xpos, align 4
  %84 = load %struct.window*, %struct.window** %win, align 8
  %frame129 = getelementptr inbounds %struct.window, %struct.window* %84, i32 0, i32 1
  %85 = load i64, i64* %frame129, align 8
  %sub130 = sub nsw i64 %85, 5
  %86 = inttoptr i64 %sub130 to i8*
  %87 = bitcast i8* %86 to %struct.frame*
  %internal_border_width131 = getelementptr inbounds %struct.frame, %struct.frame* %87, i32 0, i32 51
  %88 = load i32, i32* %internal_border_width131, align 4
  %89 = load %struct.window*, %struct.window** %win, align 8
  %pixel_top = getelementptr inbounds %struct.window, %struct.window* %89, i32 0, i32 31
  %90 = load i32, i32* %pixel_top, align 4
  %add132 = add nsw i32 %88, %90
  store i32 %add132, i32* %ypos, align 4
  br label %if.end.134

if.else.133:                                      ; preds = %if.else.111
  %91 = load i64, i64* %window, align 8
  call void @CHECK_WINDOW(i64 %91)
  br label %if.end.134

if.end.134:                                       ; preds = %if.else.133, %cond.end.124
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.134, %if.then.109
  br label %do.body

do.body:                                          ; preds = %if.end.135
  %92 = load i64, i64* %x, align 8
  %and136 = and i64 %92, 7
  %conv137 = trunc i64 %and136 to i32
  %and138 = and i32 %conv137, -5
  %cmp139 = icmp eq i32 %and138, 2
  br i1 %cmp139, label %cond.true.141, label %cond.false.142

cond.true.141:                                    ; preds = %do.body
  br label %cond.end.144

cond.false.142:                                   ; preds = %do.body
  %call143 = call i64 @builtin_lisp_symbol(i32 559)
  %93 = load i64, i64* %x, align 8
  %94 = call i64 @wrong_type_argument(i64 %call143, i64 %93) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end.144

cond.end.144:                                     ; preds = %95, %cond.true.141
  %96 = load i32, i32* %xpos, align 4
  %conv145 = sext i32 %96 to i64
  %cmp146 = icmp slt i64 %conv145, 2305843007066210304
  br i1 %cmp146, label %cond.true.148, label %cond.false.151

cond.true.148:                                    ; preds = %cond.end.144
  %97 = load i32, i32* %xpos, align 4
  %conv149 = sext i32 %97 to i64
  %sub150 = sub nsw i64 -2147483648, %conv149
  br label %cond.end.152

cond.false.151:                                   ; preds = %cond.end.144
  br label %cond.end.152

cond.end.152:                                     ; preds = %cond.false.151, %cond.true.148
  %cond153 = phi i64 [ %sub150, %cond.true.148 ], [ -2305843009213693952, %cond.false.151 ]
  %98 = load i64, i64* %x, align 8
  %shr = ashr i64 %98, 2
  %cmp154 = icmp sle i64 %cond153, %shr
  br i1 %cmp154, label %land.lhs.true.156, label %if.then.162

land.lhs.true.156:                                ; preds = %cond.end.152
  %99 = load i64, i64* %x, align 8
  %shr157 = ashr i64 %99, 2
  %100 = load i32, i32* %xpos, align 4
  %sub158 = sub nsw i32 2147483647, %100
  %conv159 = sext i32 %sub158 to i64
  %cmp160 = icmp sle i64 %shr157, %conv159
  br i1 %cmp160, label %if.end.213, label %if.then.162

if.then.162:                                      ; preds = %land.lhs.true.156, %cond.end.152
  %101 = load i64, i64* %x, align 8
  %102 = load i32, i32* %xpos, align 4
  %conv163 = sext i32 %102 to i64
  %cmp164 = icmp slt i64 %conv163, 2305843007066210304
  br i1 %cmp164, label %cond.true.166, label %cond.false.169

cond.true.166:                                    ; preds = %if.then.162
  %103 = load i32, i32* %xpos, align 4
  %conv167 = sext i32 %103 to i64
  %sub168 = sub nsw i64 -2147483648, %conv167
  br label %cond.end.170

cond.false.169:                                   ; preds = %if.then.162
  br label %cond.end.170

cond.end.170:                                     ; preds = %cond.false.169, %cond.true.166
  %cond171 = phi i64 [ %sub168, %cond.true.166 ], [ -2305843009213693952, %cond.false.169 ]
  %cmp172 = icmp slt i64 %cond171, 0
  br i1 %cmp172, label %land.lhs.true.174, label %cond.false.187

land.lhs.true.174:                                ; preds = %cond.end.170
  %104 = load i32, i32* %xpos, align 4
  %conv175 = sext i32 %104 to i64
  %cmp176 = icmp slt i64 %conv175, 2305843007066210304
  br i1 %cmp176, label %cond.true.178, label %cond.false.181

cond.true.178:                                    ; preds = %land.lhs.true.174
  %105 = load i32, i32* %xpos, align 4
  %conv179 = sext i32 %105 to i64
  %sub180 = sub nsw i64 -2147483648, %conv179
  br label %cond.end.182

cond.false.181:                                   ; preds = %land.lhs.true.174
  br label %cond.end.182

cond.end.182:                                     ; preds = %cond.false.181, %cond.true.178
  %cond183 = phi i64 [ %sub180, %cond.true.178 ], [ -2305843009213693952, %cond.false.181 ]
  %cmp184 = icmp slt i64 %cond183, -2305843009213693952
  br i1 %cmp184, label %cond.true.186, label %cond.false.187

cond.true.186:                                    ; preds = %cond.end.182
  br label %cond.end.197

cond.false.187:                                   ; preds = %cond.end.182, %cond.end.170
  %106 = load i32, i32* %xpos, align 4
  %conv188 = sext i32 %106 to i64
  %cmp189 = icmp slt i64 %conv188, 2305843007066210304
  br i1 %cmp189, label %cond.true.191, label %cond.false.194

cond.true.191:                                    ; preds = %cond.false.187
  %107 = load i32, i32* %xpos, align 4
  %conv192 = sext i32 %107 to i64
  %sub193 = sub nsw i64 -2147483648, %conv192
  br label %cond.end.195

cond.false.194:                                   ; preds = %cond.false.187
  br label %cond.end.195

cond.end.195:                                     ; preds = %cond.false.194, %cond.true.191
  %cond196 = phi i64 [ %sub193, %cond.true.191 ], [ -2305843009213693952, %cond.false.194 ]
  br label %cond.end.197

cond.end.197:                                     ; preds = %cond.end.195, %cond.true.186
  %cond198 = phi i64 [ -2305843009213693952, %cond.true.186 ], [ %cond196, %cond.end.195 ]
  %shl199 = shl i64 %cond198, 2
  %add200 = add i64 %shl199, 2
  %108 = load i32, i32* %xpos, align 4
  %sub201 = sub nsw i32 2147483647, %108
  %conv202 = sext i32 %sub201 to i64
  %cmp203 = icmp slt i64 %conv202, 2305843009213693951
  br i1 %cmp203, label %cond.true.205, label %cond.false.208

cond.true.205:                                    ; preds = %cond.end.197
  %109 = load i32, i32* %xpos, align 4
  %sub206 = sub nsw i32 2147483647, %109
  %conv207 = sext i32 %sub206 to i64
  br label %cond.end.209

cond.false.208:                                   ; preds = %cond.end.197
  br label %cond.end.209

cond.end.209:                                     ; preds = %cond.false.208, %cond.true.205
  %cond210 = phi i64 [ %conv207, %cond.true.205 ], [ 2305843009213693951, %cond.false.208 ]
  %shl211 = shl i64 %cond210, 2
  %add212 = add i64 %shl211, 2
  call void @args_out_of_range_3(i64 %101, i64 %add200, i64 %add212) #6
  unreachable

if.end.213:                                       ; preds = %land.lhs.true.156
  br label %do.end

do.end:                                           ; preds = %if.end.213
  br label %do.body.214

do.body.214:                                      ; preds = %do.end
  %110 = load i64, i64* %y, align 8
  %and215 = and i64 %110, 7
  %conv216 = trunc i64 %and215 to i32
  %and217 = and i32 %conv216, -5
  %cmp218 = icmp eq i32 %and217, 2
  br i1 %cmp218, label %cond.true.220, label %cond.false.221

cond.true.220:                                    ; preds = %do.body.214
  br label %cond.end.223

cond.false.221:                                   ; preds = %do.body.214
  %call222 = call i64 @builtin_lisp_symbol(i32 559)
  %111 = load i64, i64* %y, align 8
  %112 = call i64 @wrong_type_argument(i64 %call222, i64 %111) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end.223

cond.end.223:                                     ; preds = %113, %cond.true.220
  %114 = load i32, i32* %ypos, align 4
  %conv224 = sext i32 %114 to i64
  %cmp225 = icmp slt i64 %conv224, 2305843007066210304
  br i1 %cmp225, label %cond.true.227, label %cond.false.230

cond.true.227:                                    ; preds = %cond.end.223
  %115 = load i32, i32* %ypos, align 4
  %conv228 = sext i32 %115 to i64
  %sub229 = sub nsw i64 -2147483648, %conv228
  br label %cond.end.231

cond.false.230:                                   ; preds = %cond.end.223
  br label %cond.end.231

cond.end.231:                                     ; preds = %cond.false.230, %cond.true.227
  %cond232 = phi i64 [ %sub229, %cond.true.227 ], [ -2305843009213693952, %cond.false.230 ]
  %116 = load i64, i64* %y, align 8
  %shr233 = ashr i64 %116, 2
  %cmp234 = icmp sle i64 %cond232, %shr233
  br i1 %cmp234, label %land.lhs.true.236, label %if.then.242

land.lhs.true.236:                                ; preds = %cond.end.231
  %117 = load i64, i64* %y, align 8
  %shr237 = ashr i64 %117, 2
  %118 = load i32, i32* %ypos, align 4
  %sub238 = sub nsw i32 2147483647, %118
  %conv239 = sext i32 %sub238 to i64
  %cmp240 = icmp sle i64 %shr237, %conv239
  br i1 %cmp240, label %if.end.293, label %if.then.242

if.then.242:                                      ; preds = %land.lhs.true.236, %cond.end.231
  %119 = load i64, i64* %y, align 8
  %120 = load i32, i32* %ypos, align 4
  %conv243 = sext i32 %120 to i64
  %cmp244 = icmp slt i64 %conv243, 2305843007066210304
  br i1 %cmp244, label %cond.true.246, label %cond.false.249

cond.true.246:                                    ; preds = %if.then.242
  %121 = load i32, i32* %ypos, align 4
  %conv247 = sext i32 %121 to i64
  %sub248 = sub nsw i64 -2147483648, %conv247
  br label %cond.end.250

cond.false.249:                                   ; preds = %if.then.242
  br label %cond.end.250

cond.end.250:                                     ; preds = %cond.false.249, %cond.true.246
  %cond251 = phi i64 [ %sub248, %cond.true.246 ], [ -2305843009213693952, %cond.false.249 ]
  %cmp252 = icmp slt i64 %cond251, 0
  br i1 %cmp252, label %land.lhs.true.254, label %cond.false.267

land.lhs.true.254:                                ; preds = %cond.end.250
  %122 = load i32, i32* %ypos, align 4
  %conv255 = sext i32 %122 to i64
  %cmp256 = icmp slt i64 %conv255, 2305843007066210304
  br i1 %cmp256, label %cond.true.258, label %cond.false.261

cond.true.258:                                    ; preds = %land.lhs.true.254
  %123 = load i32, i32* %ypos, align 4
  %conv259 = sext i32 %123 to i64
  %sub260 = sub nsw i64 -2147483648, %conv259
  br label %cond.end.262

cond.false.261:                                   ; preds = %land.lhs.true.254
  br label %cond.end.262

cond.end.262:                                     ; preds = %cond.false.261, %cond.true.258
  %cond263 = phi i64 [ %sub260, %cond.true.258 ], [ -2305843009213693952, %cond.false.261 ]
  %cmp264 = icmp slt i64 %cond263, -2305843009213693952
  br i1 %cmp264, label %cond.true.266, label %cond.false.267

cond.true.266:                                    ; preds = %cond.end.262
  br label %cond.end.277

cond.false.267:                                   ; preds = %cond.end.262, %cond.end.250
  %124 = load i32, i32* %ypos, align 4
  %conv268 = sext i32 %124 to i64
  %cmp269 = icmp slt i64 %conv268, 2305843007066210304
  br i1 %cmp269, label %cond.true.271, label %cond.false.274

cond.true.271:                                    ; preds = %cond.false.267
  %125 = load i32, i32* %ypos, align 4
  %conv272 = sext i32 %125 to i64
  %sub273 = sub nsw i64 -2147483648, %conv272
  br label %cond.end.275

cond.false.274:                                   ; preds = %cond.false.267
  br label %cond.end.275

cond.end.275:                                     ; preds = %cond.false.274, %cond.true.271
  %cond276 = phi i64 [ %sub273, %cond.true.271 ], [ -2305843009213693952, %cond.false.274 ]
  br label %cond.end.277

cond.end.277:                                     ; preds = %cond.end.275, %cond.true.266
  %cond278 = phi i64 [ -2305843009213693952, %cond.true.266 ], [ %cond276, %cond.end.275 ]
  %shl279 = shl i64 %cond278, 2
  %add280 = add i64 %shl279, 2
  %126 = load i32, i32* %ypos, align 4
  %sub281 = sub nsw i32 2147483647, %126
  %conv282 = sext i32 %sub281 to i64
  %cmp283 = icmp slt i64 %conv282, 2305843009213693951
  br i1 %cmp283, label %cond.true.285, label %cond.false.288

cond.true.285:                                    ; preds = %cond.end.277
  %127 = load i32, i32* %ypos, align 4
  %sub286 = sub nsw i32 2147483647, %127
  %conv287 = sext i32 %sub286 to i64
  br label %cond.end.289

cond.false.288:                                   ; preds = %cond.end.277
  br label %cond.end.289

cond.end.289:                                     ; preds = %cond.false.288, %cond.true.285
  %cond290 = phi i64 [ %conv287, %cond.true.285 ], [ 2305843009213693951, %cond.false.288 ]
  %shl291 = shl i64 %cond290, 2
  %add292 = add i64 %shl291, 2
  call void @args_out_of_range_3(i64 %119, i64 %add280, i64 %add292) #6
  unreachable

if.end.293:                                       ; preds = %land.lhs.true.236
  br label %do.end.294

do.end.294:                                       ; preds = %if.end.293
  %128 = load i64, i64* %x, align 8
  %shr295 = ashr i64 %128, 2
  %129 = load i32, i32* %xpos, align 4
  %conv296 = sext i32 %129 to i64
  %add297 = add nsw i64 %conv296, %shr295
  %conv298 = trunc i64 %add297 to i32
  store i32 %conv298, i32* %xpos, align 4
  %130 = load i64, i64* %y, align 8
  %shr299 = ashr i64 %130, 2
  %131 = load i32, i32* %ypos, align 4
  %conv300 = sext i32 %131 to i64
  %add301 = add nsw i64 %conv300, %shr299
  %conv302 = trunc i64 %add301 to i32
  store i32 %conv302, i32* %ypos, align 4
  %132 = load %struct.frame*, %struct.frame** %f, align 8
  %133 = bitcast %struct.frame* %132 to i8*
  %call303 = call i64 @make_lisp_ptr(i8* %133, i32 5)
  store i64 %call303, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 179), align 8
  call void @record_unwind_protect_void(void ()* @unuse_menu_items)
  %call304 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call304, i64* %title, align 8
  %134 = load i64, i64* %menu.addr, align 8
  %call305 = call i64 @get_keymap(i64 %134, i1 zeroext false, i1 zeroext false)
  store i64 %call305, i64* %keymap, align 8
  %135 = load i64, i64* %keymap, align 8
  %and306 = and i64 %135, 7
  %conv307 = trunc i64 %and306 to i32
  %cmp308 = icmp eq i32 %conv307, 3
  br i1 %cmp308, label %if.then.310, label %if.else.326

if.then.310:                                      ; preds = %do.end.294
  call void @keymap_panes(i64* %menu.addr, i64 1)
  %136 = load i64, i64* %keymap, align 8
  %call311 = call i64 @Fkeymap_prompt(i64 %136)
  store i64 %call311, i64* %prompt, align 8
  %137 = load i64, i64* %prompt, align 8
  %call312 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp313 = icmp eq i64 %137, %call312
  br i1 %cmp313, label %if.end.316, label %if.then.315

if.then.315:                                      ; preds = %if.then.310
  %138 = load i64, i64* %prompt, align 8
  store i64 %138, i64* %title, align 8
  br label %if.end.316

if.end.316:                                       ; preds = %if.then.315, %if.then.310
  %139 = load i64, i64* %prompt, align 8
  %call317 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp318 = icmp eq i64 %139, %call317
  br i1 %cmp318, label %if.end.324, label %land.lhs.true.320

land.lhs.true.320:                                ; preds = %if.end.316
  %140 = load i32, i32* @menu_items_n_panes, align 4
  %cmp321 = icmp sge i32 %140, 0
  br i1 %cmp321, label %if.then.323, label %if.end.324

if.then.323:                                      ; preds = %land.lhs.true.320
  %141 = load i64, i64* @menu_items, align 8
  %142 = load i64, i64* %prompt, align 8
  call void @ASET(i64 %141, i64 1, i64 %142)
  br label %if.end.324

if.end.324:                                       ; preds = %if.then.323, %land.lhs.true.320, %if.end.316
  %143 = load i32, i32* %menuflags, align 4
  %or325 = or i32 %143, 1
  store i32 %or325, i32* %menuflags, align 4
  br label %if.end.2571

if.else.326:                                      ; preds = %do.end.294
  %144 = load i64, i64* %menu.addr, align 8
  %and327 = and i64 %144, 7
  %conv328 = trunc i64 %and327 to i32
  %cmp329 = icmp eq i32 %conv328, 3
  br i1 %cmp329, label %land.lhs.true.331, label %if.else.2566

land.lhs.true.331:                                ; preds = %if.else.326
  %145 = load i64, i64* %menu.addr, align 8
  %sub332 = sub nsw i64 %145, 3
  %146 = inttoptr i64 %sub332 to i8*
  %147 = bitcast i8* %146 to %struct.Lisp_Cons*
  %car333 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %147, i32 0, i32 0
  %148 = load i64, i64* %car333, align 8
  %call334 = call i64 @get_keymap(i64 %148, i1 zeroext false, i1 zeroext false)
  %call335 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp336 = icmp eq i64 %call334, %call335
  br i1 %cmp336, label %if.else.2566, label %if.then.338

if.then.338:                                      ; preds = %land.lhs.true.331
  %149 = load i64, i64* %menu.addr, align 8
  %call339 = call i64 @Flength(i64 %149)
  %shr340 = ashr i64 %call339, 2
  store i64 %shr340, i64* %nmaps, align 8
  store i64 16384, i64* %sa_avail, align 8
  %call341 = call i64 @SPECPDL_INDEX()
  store i64 %call341, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  br label %do.body.342

do.body.342:                                      ; preds = %if.then.338
  br i1 false, label %cond.true.343, label %cond.false.824

cond.true.343:                                    ; preds = %do.body.342
  br i1 false, label %cond.true.344, label %cond.false.609

cond.true.344:                                    ; preds = %cond.true.343
  %150 = load i64, i64* %nmaps, align 8
  %conv345 = trunc i64 %150 to i8
  %conv346 = sext i8 %conv345 to i32
  %add347 = add nsw i32 0, %conv346
  %mul = mul nsw i32 0, %add347
  %sub348 = sub nsw i32 %mul, 1
  %cmp349 = icmp slt i32 %sub348, 0
  br i1 %cmp349, label %cond.true.351, label %cond.false.370

cond.true.351:                                    ; preds = %cond.true.344
  %151 = load i64, i64* %nmaps, align 8
  %conv352 = trunc i64 %151 to i8
  %conv353 = sext i8 %conv352 to i32
  %add354 = add nsw i32 0, %conv353
  %mul355 = mul nsw i32 0, %add354
  %add356 = add nsw i32 %mul355, 0
  %neg = xor i32 %add356, -1
  %cmp357 = icmp eq i32 %neg, -1
  %conv358 = zext i1 %cmp357 to i32
  %sub359 = sub nsw i32 0, %conv358
  %152 = load i64, i64* %nmaps, align 8
  %conv360 = trunc i64 %152 to i8
  %conv361 = sext i8 %conv360 to i32
  %add362 = add nsw i32 0, %conv361
  %mul363 = mul nsw i32 0, %add362
  %add364 = add nsw i32 %mul363, 1
  %shl365 = shl i32 %add364, 30
  %sub366 = sub nsw i32 %shl365, 1
  %mul367 = mul nsw i32 %sub366, 2
  %add368 = add nsw i32 %mul367, 1
  %sub369 = sub nsw i32 %sub359, %add368
  br label %cond.end.376

cond.false.370:                                   ; preds = %cond.true.344
  %153 = load i64, i64* %nmaps, align 8
  %conv371 = trunc i64 %153 to i8
  %conv372 = sext i8 %conv371 to i32
  %add373 = add nsw i32 0, %conv372
  %mul374 = mul nsw i32 0, %add373
  %add375 = add nsw i32 %mul374, 0
  br label %cond.end.376

cond.end.376:                                     ; preds = %cond.false.370, %cond.true.351
  %cond377 = phi i32 [ %sub369, %cond.true.351 ], [ %add375, %cond.false.370 ]
  %cmp378 = icmp eq i32 %cond377, 0
  br i1 %cmp378, label %land.lhs.true.380, label %lor.lhs.false.385

land.lhs.true.380:                                ; preds = %cond.end.376
  %154 = load i64, i64* %nmaps, align 8
  %conv381 = trunc i64 %154 to i8
  %conv382 = sext i8 %conv381 to i32
  %cmp383 = icmp slt i32 %conv382, 0
  br i1 %cmp383, label %cond.true.563, label %lor.lhs.false.385

lor.lhs.false.385:                                ; preds = %land.lhs.true.380, %cond.end.376
  br i1 false, label %cond.true.386, label %cond.false.464

cond.true.386:                                    ; preds = %lor.lhs.false.385
  %155 = load i64, i64* %nmaps, align 8
  %conv387 = trunc i64 %155 to i8
  %conv388 = sext i8 %conv387 to i32
  %cmp389 = icmp slt i32 %conv388, 0
  br i1 %cmp389, label %cond.true.391, label %cond.false.421

cond.true.391:                                    ; preds = %cond.true.386
  %156 = load i64, i64* %nmaps, align 8
  %conv392 = trunc i64 %156 to i8
  %conv393 = sext i8 %conv392 to i32
  %157 = load i64, i64* %nmaps, align 8
  %conv394 = trunc i64 %157 to i8
  %conv395 = sext i8 %conv394 to i32
  %add396 = add nsw i32 0, %conv395
  %mul397 = mul nsw i32 0, %add396
  %sub398 = sub nsw i32 %mul397, 1
  %cmp399 = icmp slt i32 %sub398, 0
  br i1 %cmp399, label %cond.true.401, label %cond.false.411

cond.true.401:                                    ; preds = %cond.true.391
  %158 = load i64, i64* %nmaps, align 8
  %conv402 = trunc i64 %158 to i8
  %conv403 = sext i8 %conv402 to i32
  %add404 = add nsw i32 0, %conv403
  %mul405 = mul nsw i32 0, %add404
  %add406 = add nsw i32 %mul405, 1
  %shl407 = shl i32 %add406, 30
  %sub408 = sub nsw i32 %shl407, 1
  %mul409 = mul nsw i32 %sub408, 2
  %add410 = add nsw i32 %mul409, 1
  br label %cond.end.417

cond.false.411:                                   ; preds = %cond.true.391
  %159 = load i64, i64* %nmaps, align 8
  %conv412 = trunc i64 %159 to i8
  %conv413 = sext i8 %conv412 to i32
  %add414 = add nsw i32 0, %conv413
  %mul415 = mul nsw i32 0, %add414
  %sub416 = sub nsw i32 %mul415, 1
  br label %cond.end.417

cond.end.417:                                     ; preds = %cond.false.411, %cond.true.401
  %cond418 = phi i32 [ %add410, %cond.true.401 ], [ %sub416, %cond.false.411 ]
  %div = sdiv i32 %cond418, 8
  %cmp419 = icmp slt i32 %conv393, %div
  br i1 %cmp419, label %cond.true.563, label %lor.lhs.false.543

cond.false.421:                                   ; preds = %cond.true.386
  br i1 false, label %cond.true.422, label %cond.false.423

cond.true.422:                                    ; preds = %cond.false.421
  br i1 false, label %cond.true.563, label %lor.lhs.false.543

cond.false.423:                                   ; preds = %cond.false.421
  %160 = load i64, i64* %nmaps, align 8
  %conv424 = trunc i64 %160 to i8
  %conv425 = sext i8 %conv424 to i32
  %add426 = add nsw i32 0, %conv425
  %mul427 = mul nsw i32 0, %add426
  %sub428 = sub nsw i32 %mul427, 1
  %cmp429 = icmp slt i32 %sub428, 0
  br i1 %cmp429, label %cond.true.431, label %cond.false.451

cond.true.431:                                    ; preds = %cond.false.423
  %161 = load i64, i64* %nmaps, align 8
  %conv432 = trunc i64 %161 to i8
  %conv433 = sext i8 %conv432 to i32
  %add434 = add nsw i32 0, %conv433
  %mul435 = mul nsw i32 0, %add434
  %add436 = add nsw i32 %mul435, 0
  %neg437 = xor i32 %add436, -1
  %cmp438 = icmp eq i32 %neg437, -1
  %conv439 = zext i1 %cmp438 to i32
  %sub440 = sub nsw i32 0, %conv439
  %162 = load i64, i64* %nmaps, align 8
  %conv441 = trunc i64 %162 to i8
  %conv442 = sext i8 %conv441 to i32
  %add443 = add nsw i32 0, %conv442
  %mul444 = mul nsw i32 0, %add443
  %add445 = add nsw i32 %mul444, 1
  %shl446 = shl i32 %add445, 30
  %sub447 = sub nsw i32 %shl446, 1
  %mul448 = mul nsw i32 %sub447, 2
  %add449 = add nsw i32 %mul448, 1
  %sub450 = sub nsw i32 %sub440, %add449
  br label %cond.end.457

cond.false.451:                                   ; preds = %cond.false.423
  %163 = load i64, i64* %nmaps, align 8
  %conv452 = trunc i64 %163 to i8
  %conv453 = sext i8 %conv452 to i32
  %add454 = add nsw i32 0, %conv453
  %mul455 = mul nsw i32 0, %add454
  %add456 = add nsw i32 %mul455, 0
  br label %cond.end.457

cond.end.457:                                     ; preds = %cond.false.451, %cond.true.431
  %cond458 = phi i32 [ %sub450, %cond.true.431 ], [ %add456, %cond.false.451 ]
  %div459 = sdiv i32 %cond458, 8
  %164 = load i64, i64* %nmaps, align 8
  %conv460 = trunc i64 %164 to i8
  %conv461 = sext i8 %conv460 to i32
  %cmp462 = icmp slt i32 %div459, %conv461
  br i1 %cmp462, label %cond.true.563, label %lor.lhs.false.543

cond.false.464:                                   ; preds = %lor.lhs.false.385
  br i1 false, label %cond.true.465, label %cond.false.466

cond.true.465:                                    ; preds = %cond.false.464
  br i1 false, label %cond.true.563, label %lor.lhs.false.543

cond.false.466:                                   ; preds = %cond.false.464
  %165 = load i64, i64* %nmaps, align 8
  %conv467 = trunc i64 %165 to i8
  %conv468 = sext i8 %conv467 to i32
  %cmp469 = icmp slt i32 %conv468, 0
  br i1 %cmp469, label %cond.true.471, label %cond.false.512

cond.true.471:                                    ; preds = %cond.false.466
  %166 = load i64, i64* %nmaps, align 8
  %conv472 = trunc i64 %166 to i8
  %conv473 = sext i8 %conv472 to i32
  %167 = load i64, i64* %nmaps, align 8
  %conv474 = trunc i64 %167 to i8
  %conv475 = sext i8 %conv474 to i32
  %add476 = add nsw i32 0, %conv475
  %mul477 = mul nsw i32 0, %add476
  %sub478 = sub nsw i32 %mul477, 1
  %cmp479 = icmp slt i32 %sub478, 0
  br i1 %cmp479, label %cond.true.481, label %cond.false.501

cond.true.481:                                    ; preds = %cond.true.471
  %168 = load i64, i64* %nmaps, align 8
  %conv482 = trunc i64 %168 to i8
  %conv483 = sext i8 %conv482 to i32
  %add484 = add nsw i32 0, %conv483
  %mul485 = mul nsw i32 0, %add484
  %add486 = add nsw i32 %mul485, 0
  %neg487 = xor i32 %add486, -1
  %cmp488 = icmp eq i32 %neg487, -1
  %conv489 = zext i1 %cmp488 to i32
  %sub490 = sub nsw i32 0, %conv489
  %169 = load i64, i64* %nmaps, align 8
  %conv491 = trunc i64 %169 to i8
  %conv492 = sext i8 %conv491 to i32
  %add493 = add nsw i32 0, %conv492
  %mul494 = mul nsw i32 0, %add493
  %add495 = add nsw i32 %mul494, 1
  %shl496 = shl i32 %add495, 30
  %sub497 = sub nsw i32 %shl496, 1
  %mul498 = mul nsw i32 %sub497, 2
  %add499 = add nsw i32 %mul498, 1
  %sub500 = sub nsw i32 %sub490, %add499
  br label %cond.end.507

cond.false.501:                                   ; preds = %cond.true.471
  %170 = load i64, i64* %nmaps, align 8
  %conv502 = trunc i64 %170 to i8
  %conv503 = sext i8 %conv502 to i32
  %add504 = add nsw i32 0, %conv503
  %mul505 = mul nsw i32 0, %add504
  %add506 = add nsw i32 %mul505, 0
  br label %cond.end.507

cond.end.507:                                     ; preds = %cond.false.501, %cond.true.481
  %cond508 = phi i32 [ %sub500, %cond.true.481 ], [ %add506, %cond.false.501 ]
  %div509 = sdiv i32 %cond508, 8
  %cmp510 = icmp slt i32 %conv473, %div509
  br i1 %cmp510, label %cond.true.563, label %lor.lhs.false.543

cond.false.512:                                   ; preds = %cond.false.466
  %171 = load i64, i64* %nmaps, align 8
  %conv513 = trunc i64 %171 to i8
  %conv514 = sext i8 %conv513 to i32
  %add515 = add nsw i32 0, %conv514
  %mul516 = mul nsw i32 0, %add515
  %sub517 = sub nsw i32 %mul516, 1
  %cmp518 = icmp slt i32 %sub517, 0
  br i1 %cmp518, label %cond.true.520, label %cond.false.530

cond.true.520:                                    ; preds = %cond.false.512
  %172 = load i64, i64* %nmaps, align 8
  %conv521 = trunc i64 %172 to i8
  %conv522 = sext i8 %conv521 to i32
  %add523 = add nsw i32 0, %conv522
  %mul524 = mul nsw i32 0, %add523
  %add525 = add nsw i32 %mul524, 1
  %shl526 = shl i32 %add525, 30
  %sub527 = sub nsw i32 %shl526, 1
  %mul528 = mul nsw i32 %sub527, 2
  %add529 = add nsw i32 %mul528, 1
  br label %cond.end.536

cond.false.530:                                   ; preds = %cond.false.512
  %173 = load i64, i64* %nmaps, align 8
  %conv531 = trunc i64 %173 to i8
  %conv532 = sext i8 %conv531 to i32
  %add533 = add nsw i32 0, %conv532
  %mul534 = mul nsw i32 0, %add533
  %sub535 = sub nsw i32 %mul534, 1
  br label %cond.end.536

cond.end.536:                                     ; preds = %cond.false.530, %cond.true.520
  %cond537 = phi i32 [ %add529, %cond.true.520 ], [ %sub535, %cond.false.530 ]
  %div538 = sdiv i32 %cond537, 8
  %174 = load i64, i64* %nmaps, align 8
  %conv539 = trunc i64 %174 to i8
  %conv540 = sext i8 %conv539 to i32
  %cmp541 = icmp slt i32 %div538, %conv540
  br i1 %cmp541, label %cond.true.563, label %lor.lhs.false.543

lor.lhs.false.543:                                ; preds = %cond.end.536, %cond.end.507, %cond.true.465, %cond.end.457, %cond.true.422, %cond.end.417
  %175 = load i64, i64* %nmaps, align 8
  %conv544 = trunc i64 %175 to i8
  %conv545 = sext i8 %conv544 to i32
  %mul546 = mul nsw i32 %conv545, 8
  %mul547 = mul nsw i32 0, %mul546
  %sub548 = sub nsw i32 %mul547, 1
  %cmp549 = icmp slt i32 %sub548, 0
  br i1 %cmp549, label %land.lhs.true.551, label %lor.lhs.false.557

land.lhs.true.551:                                ; preds = %lor.lhs.false.543
  %176 = load i64, i64* %nmaps, align 8
  %conv552 = trunc i64 %176 to i8
  %conv553 = sext i8 %conv552 to i32
  %mul554 = mul nsw i32 %conv553, 8
  %cmp555 = icmp slt i32 %mul554, -128
  br i1 %cmp555, label %cond.true.563, label %lor.lhs.false.557

lor.lhs.false.557:                                ; preds = %land.lhs.true.551, %lor.lhs.false.543
  %177 = load i64, i64* %nmaps, align 8
  %conv558 = trunc i64 %177 to i8
  %conv559 = sext i8 %conv558 to i32
  %mul560 = mul nsw i32 %conv559, 8
  %cmp561 = icmp slt i32 127, %mul560
  br i1 %cmp561, label %cond.true.563, label %cond.false.586

cond.true.563:                                    ; preds = %lor.lhs.false.557, %land.lhs.true.551, %cond.end.536, %cond.end.507, %cond.true.465, %cond.end.457, %cond.true.422, %cond.end.417, %land.lhs.true.380
  %178 = load i64, i64* %nmaps, align 8
  %conv564 = trunc i64 %178 to i8
  %conv565 = zext i8 %conv564 to i32
  %mul566 = mul nsw i32 %conv565, 8
  %cmp567 = icmp sle i32 %mul566, 127
  br i1 %cmp567, label %cond.true.569, label %cond.false.575

cond.true.569:                                    ; preds = %cond.true.563
  %179 = load i64, i64* %nmaps, align 8
  %conv570 = trunc i64 %179 to i8
  %conv571 = zext i8 %conv570 to i32
  %mul572 = mul nsw i32 %conv571, 8
  %conv573 = trunc i32 %mul572 to i8
  %conv574 = sext i8 %conv573 to i32
  br label %cond.end.583

cond.false.575:                                   ; preds = %cond.true.563
  %180 = load i64, i64* %nmaps, align 8
  %conv576 = trunc i64 %180 to i8
  %conv577 = zext i8 %conv576 to i32
  %mul578 = mul nsw i32 %conv577, 8
  %sub579 = sub nsw i32 %mul578, -128
  %conv580 = trunc i32 %sub579 to i8
  %conv581 = sext i8 %conv580 to i32
  %add582 = add nsw i32 %conv581, -128
  br label %cond.end.583

cond.end.583:                                     ; preds = %cond.false.575, %cond.true.569
  %cond584 = phi i32 [ %conv574, %cond.true.569 ], [ %add582, %cond.false.575 ]
  %conv585 = sext i32 %cond584 to i64
  store i64 %conv585, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then.2516, label %lor.lhs.false.2513

cond.false.586:                                   ; preds = %lor.lhs.false.557
  %181 = load i64, i64* %nmaps, align 8
  %conv587 = trunc i64 %181 to i8
  %conv588 = zext i8 %conv587 to i32
  %mul589 = mul nsw i32 %conv588, 8
  %cmp590 = icmp sle i32 %mul589, 127
  br i1 %cmp590, label %cond.true.592, label %cond.false.598

cond.true.592:                                    ; preds = %cond.false.586
  %182 = load i64, i64* %nmaps, align 8
  %conv593 = trunc i64 %182 to i8
  %conv594 = zext i8 %conv593 to i32
  %mul595 = mul nsw i32 %conv594, 8
  %conv596 = trunc i32 %mul595 to i8
  %conv597 = sext i8 %conv596 to i32
  br label %cond.end.606

cond.false.598:                                   ; preds = %cond.false.586
  %183 = load i64, i64* %nmaps, align 8
  %conv599 = trunc i64 %183 to i8
  %conv600 = zext i8 %conv599 to i32
  %mul601 = mul nsw i32 %conv600, 8
  %sub602 = sub nsw i32 %mul601, -128
  %conv603 = trunc i32 %sub602 to i8
  %conv604 = sext i8 %conv603 to i32
  %add605 = add nsw i32 %conv604, -128
  br label %cond.end.606

cond.end.606:                                     ; preds = %cond.false.598, %cond.true.592
  %cond607 = phi i32 [ %conv597, %cond.true.592 ], [ %add605, %cond.false.598 ]
  %conv608 = sext i32 %cond607 to i64
  store i64 %conv608, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then.2516, label %lor.lhs.false.2513

cond.false.609:                                   ; preds = %cond.true.343
  %184 = load i64, i64* %nmaps, align 8
  %add610 = add nsw i64 0, %184
  %mul611 = mul nsw i64 0, %add610
  %sub612 = sub nsw i64 %mul611, 1
  %cmp613 = icmp slt i64 %sub612, 0
  br i1 %cmp613, label %cond.true.615, label %cond.false.632

cond.true.615:                                    ; preds = %cond.false.609
  %185 = load i64, i64* %nmaps, align 8
  %add616 = add nsw i64 0, %185
  %mul617 = mul nsw i64 0, %add616
  %add618 = add nsw i64 %mul617, 0
  %neg619 = xor i64 %add618, -1
  %cmp620 = icmp eq i64 %neg619, -1
  %conv621 = zext i1 %cmp620 to i32
  %sub622 = sub nsw i32 0, %conv621
  %conv623 = sext i32 %sub622 to i64
  %186 = load i64, i64* %nmaps, align 8
  %add624 = add nsw i64 0, %186
  %mul625 = mul nsw i64 0, %add624
  %add626 = add nsw i64 %mul625, 1
  %shl627 = shl i64 %add626, 62
  %sub628 = sub nsw i64 %shl627, 1
  %mul629 = mul nsw i64 %sub628, 2
  %add630 = add nsw i64 %mul629, 1
  %sub631 = sub nsw i64 %conv623, %add630
  br label %cond.end.636

cond.false.632:                                   ; preds = %cond.false.609
  %187 = load i64, i64* %nmaps, align 8
  %add633 = add nsw i64 0, %187
  %mul634 = mul nsw i64 0, %add633
  %add635 = add nsw i64 %mul634, 0
  br label %cond.end.636

cond.end.636:                                     ; preds = %cond.false.632, %cond.true.615
  %cond637 = phi i64 [ %sub631, %cond.true.615 ], [ %add635, %cond.false.632 ]
  %cmp638 = icmp eq i64 %cond637, 0
  br i1 %cmp638, label %land.lhs.true.640, label %lor.lhs.false.643

land.lhs.true.640:                                ; preds = %cond.end.636
  %188 = load i64, i64* %nmaps, align 8
  %cmp641 = icmp slt i64 %188, 0
  br i1 %cmp641, label %cond.true.778, label %lor.lhs.false.643

lor.lhs.false.643:                                ; preds = %land.lhs.true.640, %cond.end.636
  br i1 false, label %cond.true.644, label %cond.false.704

cond.true.644:                                    ; preds = %lor.lhs.false.643
  %189 = load i64, i64* %nmaps, align 8
  %cmp645 = icmp slt i64 %189, 0
  br i1 %cmp645, label %cond.true.647, label %cond.false.670

cond.true.647:                                    ; preds = %cond.true.644
  %190 = load i64, i64* %nmaps, align 8
  %191 = load i64, i64* %nmaps, align 8
  %add648 = add nsw i64 0, %191
  %mul649 = mul nsw i64 0, %add648
  %sub650 = sub nsw i64 %mul649, 1
  %cmp651 = icmp slt i64 %sub650, 0
  br i1 %cmp651, label %cond.true.653, label %cond.false.661

cond.true.653:                                    ; preds = %cond.true.647
  %192 = load i64, i64* %nmaps, align 8
  %add654 = add nsw i64 0, %192
  %mul655 = mul nsw i64 0, %add654
  %add656 = add nsw i64 %mul655, 1
  %shl657 = shl i64 %add656, 62
  %sub658 = sub nsw i64 %shl657, 1
  %mul659 = mul nsw i64 %sub658, 2
  %add660 = add nsw i64 %mul659, 1
  br label %cond.end.665

cond.false.661:                                   ; preds = %cond.true.647
  %193 = load i64, i64* %nmaps, align 8
  %add662 = add nsw i64 0, %193
  %mul663 = mul nsw i64 0, %add662
  %sub664 = sub nsw i64 %mul663, 1
  br label %cond.end.665

cond.end.665:                                     ; preds = %cond.false.661, %cond.true.653
  %cond666 = phi i64 [ %add660, %cond.true.653 ], [ %sub664, %cond.false.661 ]
  %div667 = sdiv i64 %cond666, 8
  %cmp668 = icmp slt i64 %190, %div667
  br i1 %cmp668, label %cond.true.778, label %lor.lhs.false.764

cond.false.670:                                   ; preds = %cond.true.644
  br i1 false, label %cond.true.671, label %cond.false.672

cond.true.671:                                    ; preds = %cond.false.670
  br i1 false, label %cond.true.778, label %lor.lhs.false.764

cond.false.672:                                   ; preds = %cond.false.670
  %194 = load i64, i64* %nmaps, align 8
  %add673 = add nsw i64 0, %194
  %mul674 = mul nsw i64 0, %add673
  %sub675 = sub nsw i64 %mul674, 1
  %cmp676 = icmp slt i64 %sub675, 0
  br i1 %cmp676, label %cond.true.678, label %cond.false.695

cond.true.678:                                    ; preds = %cond.false.672
  %195 = load i64, i64* %nmaps, align 8
  %add679 = add nsw i64 0, %195
  %mul680 = mul nsw i64 0, %add679
  %add681 = add nsw i64 %mul680, 0
  %neg682 = xor i64 %add681, -1
  %cmp683 = icmp eq i64 %neg682, -1
  %conv684 = zext i1 %cmp683 to i32
  %sub685 = sub nsw i32 0, %conv684
  %conv686 = sext i32 %sub685 to i64
  %196 = load i64, i64* %nmaps, align 8
  %add687 = add nsw i64 0, %196
  %mul688 = mul nsw i64 0, %add687
  %add689 = add nsw i64 %mul688, 1
  %shl690 = shl i64 %add689, 62
  %sub691 = sub nsw i64 %shl690, 1
  %mul692 = mul nsw i64 %sub691, 2
  %add693 = add nsw i64 %mul692, 1
  %sub694 = sub nsw i64 %conv686, %add693
  br label %cond.end.699

cond.false.695:                                   ; preds = %cond.false.672
  %197 = load i64, i64* %nmaps, align 8
  %add696 = add nsw i64 0, %197
  %mul697 = mul nsw i64 0, %add696
  %add698 = add nsw i64 %mul697, 0
  br label %cond.end.699

cond.end.699:                                     ; preds = %cond.false.695, %cond.true.678
  %cond700 = phi i64 [ %sub694, %cond.true.678 ], [ %add698, %cond.false.695 ]
  %div701 = sdiv i64 %cond700, 8
  %198 = load i64, i64* %nmaps, align 8
  %cmp702 = icmp slt i64 %div701, %198
  br i1 %cmp702, label %cond.true.778, label %lor.lhs.false.764

cond.false.704:                                   ; preds = %lor.lhs.false.643
  br i1 false, label %cond.true.705, label %cond.false.706

cond.true.705:                                    ; preds = %cond.false.704
  br i1 false, label %cond.true.778, label %lor.lhs.false.764

cond.false.706:                                   ; preds = %cond.false.704
  %199 = load i64, i64* %nmaps, align 8
  %cmp707 = icmp slt i64 %199, 0
  br i1 %cmp707, label %cond.true.709, label %cond.false.741

cond.true.709:                                    ; preds = %cond.false.706
  %200 = load i64, i64* %nmaps, align 8
  %201 = load i64, i64* %nmaps, align 8
  %add710 = add nsw i64 0, %201
  %mul711 = mul nsw i64 0, %add710
  %sub712 = sub nsw i64 %mul711, 1
  %cmp713 = icmp slt i64 %sub712, 0
  br i1 %cmp713, label %cond.true.715, label %cond.false.732

cond.true.715:                                    ; preds = %cond.true.709
  %202 = load i64, i64* %nmaps, align 8
  %add716 = add nsw i64 0, %202
  %mul717 = mul nsw i64 0, %add716
  %add718 = add nsw i64 %mul717, 0
  %neg719 = xor i64 %add718, -1
  %cmp720 = icmp eq i64 %neg719, -1
  %conv721 = zext i1 %cmp720 to i32
  %sub722 = sub nsw i32 0, %conv721
  %conv723 = sext i32 %sub722 to i64
  %203 = load i64, i64* %nmaps, align 8
  %add724 = add nsw i64 0, %203
  %mul725 = mul nsw i64 0, %add724
  %add726 = add nsw i64 %mul725, 1
  %shl727 = shl i64 %add726, 62
  %sub728 = sub nsw i64 %shl727, 1
  %mul729 = mul nsw i64 %sub728, 2
  %add730 = add nsw i64 %mul729, 1
  %sub731 = sub nsw i64 %conv723, %add730
  br label %cond.end.736

cond.false.732:                                   ; preds = %cond.true.709
  %204 = load i64, i64* %nmaps, align 8
  %add733 = add nsw i64 0, %204
  %mul734 = mul nsw i64 0, %add733
  %add735 = add nsw i64 %mul734, 0
  br label %cond.end.736

cond.end.736:                                     ; preds = %cond.false.732, %cond.true.715
  %cond737 = phi i64 [ %sub731, %cond.true.715 ], [ %add735, %cond.false.732 ]
  %div738 = sdiv i64 %cond737, 8
  %cmp739 = icmp slt i64 %200, %div738
  br i1 %cmp739, label %cond.true.778, label %lor.lhs.false.764

cond.false.741:                                   ; preds = %cond.false.706
  %205 = load i64, i64* %nmaps, align 8
  %add742 = add nsw i64 0, %205
  %mul743 = mul nsw i64 0, %add742
  %sub744 = sub nsw i64 %mul743, 1
  %cmp745 = icmp slt i64 %sub744, 0
  br i1 %cmp745, label %cond.true.747, label %cond.false.755

cond.true.747:                                    ; preds = %cond.false.741
  %206 = load i64, i64* %nmaps, align 8
  %add748 = add nsw i64 0, %206
  %mul749 = mul nsw i64 0, %add748
  %add750 = add nsw i64 %mul749, 1
  %shl751 = shl i64 %add750, 62
  %sub752 = sub nsw i64 %shl751, 1
  %mul753 = mul nsw i64 %sub752, 2
  %add754 = add nsw i64 %mul753, 1
  br label %cond.end.759

cond.false.755:                                   ; preds = %cond.false.741
  %207 = load i64, i64* %nmaps, align 8
  %add756 = add nsw i64 0, %207
  %mul757 = mul nsw i64 0, %add756
  %sub758 = sub nsw i64 %mul757, 1
  br label %cond.end.759

cond.end.759:                                     ; preds = %cond.false.755, %cond.true.747
  %cond760 = phi i64 [ %add754, %cond.true.747 ], [ %sub758, %cond.false.755 ]
  %div761 = sdiv i64 %cond760, 8
  %208 = load i64, i64* %nmaps, align 8
  %cmp762 = icmp slt i64 %div761, %208
  br i1 %cmp762, label %cond.true.778, label %lor.lhs.false.764

lor.lhs.false.764:                                ; preds = %cond.end.759, %cond.end.736, %cond.true.705, %cond.end.699, %cond.true.671, %cond.end.665
  %209 = load i64, i64* %nmaps, align 8
  %mul765 = mul nsw i64 %209, 8
  %mul766 = mul nsw i64 0, %mul765
  %sub767 = sub nsw i64 %mul766, 1
  %cmp768 = icmp slt i64 %sub767, 0
  br i1 %cmp768, label %land.lhs.true.770, label %lor.lhs.false.774

land.lhs.true.770:                                ; preds = %lor.lhs.false.764
  %210 = load i64, i64* %nmaps, align 8
  %mul771 = mul nsw i64 %210, 8
  %cmp772 = icmp slt i64 %mul771, -128
  br i1 %cmp772, label %cond.true.778, label %lor.lhs.false.774

lor.lhs.false.774:                                ; preds = %land.lhs.true.770, %lor.lhs.false.764
  %211 = load i64, i64* %nmaps, align 8
  %mul775 = mul nsw i64 %211, 8
  %cmp776 = icmp slt i64 127, %mul775
  br i1 %cmp776, label %cond.true.778, label %cond.false.801

cond.true.778:                                    ; preds = %lor.lhs.false.774, %land.lhs.true.770, %cond.end.759, %cond.end.736, %cond.true.705, %cond.end.699, %cond.true.671, %cond.end.665, %land.lhs.true.640
  %212 = load i64, i64* %nmaps, align 8
  %conv779 = trunc i64 %212 to i8
  %conv780 = zext i8 %conv779 to i32
  %mul781 = mul nsw i32 %conv780, 8
  %cmp782 = icmp sle i32 %mul781, 127
  br i1 %cmp782, label %cond.true.784, label %cond.false.790

cond.true.784:                                    ; preds = %cond.true.778
  %213 = load i64, i64* %nmaps, align 8
  %conv785 = trunc i64 %213 to i8
  %conv786 = zext i8 %conv785 to i32
  %mul787 = mul nsw i32 %conv786, 8
  %conv788 = trunc i32 %mul787 to i8
  %conv789 = sext i8 %conv788 to i32
  br label %cond.end.798

cond.false.790:                                   ; preds = %cond.true.778
  %214 = load i64, i64* %nmaps, align 8
  %conv791 = trunc i64 %214 to i8
  %conv792 = zext i8 %conv791 to i32
  %mul793 = mul nsw i32 %conv792, 8
  %sub794 = sub nsw i32 %mul793, -128
  %conv795 = trunc i32 %sub794 to i8
  %conv796 = sext i8 %conv795 to i32
  %add797 = add nsw i32 %conv796, -128
  br label %cond.end.798

cond.end.798:                                     ; preds = %cond.false.790, %cond.true.784
  %cond799 = phi i32 [ %conv789, %cond.true.784 ], [ %add797, %cond.false.790 ]
  %conv800 = sext i32 %cond799 to i64
  store i64 %conv800, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then.2516, label %lor.lhs.false.2513

cond.false.801:                                   ; preds = %lor.lhs.false.774
  %215 = load i64, i64* %nmaps, align 8
  %conv802 = trunc i64 %215 to i8
  %conv803 = zext i8 %conv802 to i32
  %mul804 = mul nsw i32 %conv803, 8
  %cmp805 = icmp sle i32 %mul804, 127
  br i1 %cmp805, label %cond.true.807, label %cond.false.813

cond.true.807:                                    ; preds = %cond.false.801
  %216 = load i64, i64* %nmaps, align 8
  %conv808 = trunc i64 %216 to i8
  %conv809 = zext i8 %conv808 to i32
  %mul810 = mul nsw i32 %conv809, 8
  %conv811 = trunc i32 %mul810 to i8
  %conv812 = sext i8 %conv811 to i32
  br label %cond.end.821

cond.false.813:                                   ; preds = %cond.false.801
  %217 = load i64, i64* %nmaps, align 8
  %conv814 = trunc i64 %217 to i8
  %conv815 = zext i8 %conv814 to i32
  %mul816 = mul nsw i32 %conv815, 8
  %sub817 = sub nsw i32 %mul816, -128
  %conv818 = trunc i32 %sub817 to i8
  %conv819 = sext i8 %conv818 to i32
  %add820 = add nsw i32 %conv819, -128
  br label %cond.end.821

cond.end.821:                                     ; preds = %cond.false.813, %cond.true.807
  %cond822 = phi i32 [ %conv812, %cond.true.807 ], [ %add820, %cond.false.813 ]
  %conv823 = sext i32 %cond822 to i64
  store i64 %conv823, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then.2516, label %lor.lhs.false.2513

cond.false.824:                                   ; preds = %do.body.342
  br i1 false, label %cond.true.825, label %cond.false.1309

cond.true.825:                                    ; preds = %cond.false.824
  br i1 false, label %cond.true.826, label %cond.false.1094

cond.true.826:                                    ; preds = %cond.true.825
  %218 = load i64, i64* %nmaps, align 8
  %conv827 = trunc i64 %218 to i16
  %conv828 = sext i16 %conv827 to i32
  %add829 = add nsw i32 0, %conv828
  %mul830 = mul nsw i32 0, %add829
  %sub831 = sub nsw i32 %mul830, 1
  %cmp832 = icmp slt i32 %sub831, 0
  br i1 %cmp832, label %cond.true.834, label %cond.false.854

cond.true.834:                                    ; preds = %cond.true.826
  %219 = load i64, i64* %nmaps, align 8
  %conv835 = trunc i64 %219 to i16
  %conv836 = sext i16 %conv835 to i32
  %add837 = add nsw i32 0, %conv836
  %mul838 = mul nsw i32 0, %add837
  %add839 = add nsw i32 %mul838, 0
  %neg840 = xor i32 %add839, -1
  %cmp841 = icmp eq i32 %neg840, -1
  %conv842 = zext i1 %cmp841 to i32
  %sub843 = sub nsw i32 0, %conv842
  %220 = load i64, i64* %nmaps, align 8
  %conv844 = trunc i64 %220 to i16
  %conv845 = sext i16 %conv844 to i32
  %add846 = add nsw i32 0, %conv845
  %mul847 = mul nsw i32 0, %add846
  %add848 = add nsw i32 %mul847, 1
  %shl849 = shl i32 %add848, 30
  %sub850 = sub nsw i32 %shl849, 1
  %mul851 = mul nsw i32 %sub850, 2
  %add852 = add nsw i32 %mul851, 1
  %sub853 = sub nsw i32 %sub843, %add852
  br label %cond.end.860

cond.false.854:                                   ; preds = %cond.true.826
  %221 = load i64, i64* %nmaps, align 8
  %conv855 = trunc i64 %221 to i16
  %conv856 = sext i16 %conv855 to i32
  %add857 = add nsw i32 0, %conv856
  %mul858 = mul nsw i32 0, %add857
  %add859 = add nsw i32 %mul858, 0
  br label %cond.end.860

cond.end.860:                                     ; preds = %cond.false.854, %cond.true.834
  %cond861 = phi i32 [ %sub853, %cond.true.834 ], [ %add859, %cond.false.854 ]
  %cmp862 = icmp eq i32 %cond861, 0
  br i1 %cmp862, label %land.lhs.true.864, label %lor.lhs.false.869

land.lhs.true.864:                                ; preds = %cond.end.860
  %222 = load i64, i64* %nmaps, align 8
  %conv865 = trunc i64 %222 to i16
  %conv866 = sext i16 %conv865 to i32
  %cmp867 = icmp slt i32 %conv866, 0
  br i1 %cmp867, label %cond.true.1048, label %lor.lhs.false.869

lor.lhs.false.869:                                ; preds = %land.lhs.true.864, %cond.end.860
  br i1 false, label %cond.true.870, label %cond.false.949

cond.true.870:                                    ; preds = %lor.lhs.false.869
  %223 = load i64, i64* %nmaps, align 8
  %conv871 = trunc i64 %223 to i16
  %conv872 = sext i16 %conv871 to i32
  %cmp873 = icmp slt i32 %conv872, 0
  br i1 %cmp873, label %cond.true.875, label %cond.false.906

cond.true.875:                                    ; preds = %cond.true.870
  %224 = load i64, i64* %nmaps, align 8
  %conv876 = trunc i64 %224 to i16
  %conv877 = sext i16 %conv876 to i32
  %225 = load i64, i64* %nmaps, align 8
  %conv878 = trunc i64 %225 to i16
  %conv879 = sext i16 %conv878 to i32
  %add880 = add nsw i32 0, %conv879
  %mul881 = mul nsw i32 0, %add880
  %sub882 = sub nsw i32 %mul881, 1
  %cmp883 = icmp slt i32 %sub882, 0
  br i1 %cmp883, label %cond.true.885, label %cond.false.895

cond.true.885:                                    ; preds = %cond.true.875
  %226 = load i64, i64* %nmaps, align 8
  %conv886 = trunc i64 %226 to i16
  %conv887 = sext i16 %conv886 to i32
  %add888 = add nsw i32 0, %conv887
  %mul889 = mul nsw i32 0, %add888
  %add890 = add nsw i32 %mul889, 1
  %shl891 = shl i32 %add890, 30
  %sub892 = sub nsw i32 %shl891, 1
  %mul893 = mul nsw i32 %sub892, 2
  %add894 = add nsw i32 %mul893, 1
  br label %cond.end.901

cond.false.895:                                   ; preds = %cond.true.875
  %227 = load i64, i64* %nmaps, align 8
  %conv896 = trunc i64 %227 to i16
  %conv897 = sext i16 %conv896 to i32
  %add898 = add nsw i32 0, %conv897
  %mul899 = mul nsw i32 0, %add898
  %sub900 = sub nsw i32 %mul899, 1
  br label %cond.end.901

cond.end.901:                                     ; preds = %cond.false.895, %cond.true.885
  %cond902 = phi i32 [ %add894, %cond.true.885 ], [ %sub900, %cond.false.895 ]
  %div903 = sdiv i32 %cond902, 8
  %cmp904 = icmp slt i32 %conv877, %div903
  br i1 %cmp904, label %cond.true.1048, label %lor.lhs.false.1028

cond.false.906:                                   ; preds = %cond.true.870
  br i1 false, label %cond.true.907, label %cond.false.908

cond.true.907:                                    ; preds = %cond.false.906
  br i1 false, label %cond.true.1048, label %lor.lhs.false.1028

cond.false.908:                                   ; preds = %cond.false.906
  %228 = load i64, i64* %nmaps, align 8
  %conv909 = trunc i64 %228 to i16
  %conv910 = sext i16 %conv909 to i32
  %add911 = add nsw i32 0, %conv910
  %mul912 = mul nsw i32 0, %add911
  %sub913 = sub nsw i32 %mul912, 1
  %cmp914 = icmp slt i32 %sub913, 0
  br i1 %cmp914, label %cond.true.916, label %cond.false.936

cond.true.916:                                    ; preds = %cond.false.908
  %229 = load i64, i64* %nmaps, align 8
  %conv917 = trunc i64 %229 to i16
  %conv918 = sext i16 %conv917 to i32
  %add919 = add nsw i32 0, %conv918
  %mul920 = mul nsw i32 0, %add919
  %add921 = add nsw i32 %mul920, 0
  %neg922 = xor i32 %add921, -1
  %cmp923 = icmp eq i32 %neg922, -1
  %conv924 = zext i1 %cmp923 to i32
  %sub925 = sub nsw i32 0, %conv924
  %230 = load i64, i64* %nmaps, align 8
  %conv926 = trunc i64 %230 to i16
  %conv927 = sext i16 %conv926 to i32
  %add928 = add nsw i32 0, %conv927
  %mul929 = mul nsw i32 0, %add928
  %add930 = add nsw i32 %mul929, 1
  %shl931 = shl i32 %add930, 30
  %sub932 = sub nsw i32 %shl931, 1
  %mul933 = mul nsw i32 %sub932, 2
  %add934 = add nsw i32 %mul933, 1
  %sub935 = sub nsw i32 %sub925, %add934
  br label %cond.end.942

cond.false.936:                                   ; preds = %cond.false.908
  %231 = load i64, i64* %nmaps, align 8
  %conv937 = trunc i64 %231 to i16
  %conv938 = sext i16 %conv937 to i32
  %add939 = add nsw i32 0, %conv938
  %mul940 = mul nsw i32 0, %add939
  %add941 = add nsw i32 %mul940, 0
  br label %cond.end.942

cond.end.942:                                     ; preds = %cond.false.936, %cond.true.916
  %cond943 = phi i32 [ %sub935, %cond.true.916 ], [ %add941, %cond.false.936 ]
  %div944 = sdiv i32 %cond943, 8
  %232 = load i64, i64* %nmaps, align 8
  %conv945 = trunc i64 %232 to i16
  %conv946 = sext i16 %conv945 to i32
  %cmp947 = icmp slt i32 %div944, %conv946
  br i1 %cmp947, label %cond.true.1048, label %lor.lhs.false.1028

cond.false.949:                                   ; preds = %lor.lhs.false.869
  br i1 false, label %cond.true.950, label %cond.false.951

cond.true.950:                                    ; preds = %cond.false.949
  br i1 false, label %cond.true.1048, label %lor.lhs.false.1028

cond.false.951:                                   ; preds = %cond.false.949
  %233 = load i64, i64* %nmaps, align 8
  %conv952 = trunc i64 %233 to i16
  %conv953 = sext i16 %conv952 to i32
  %cmp954 = icmp slt i32 %conv953, 0
  br i1 %cmp954, label %cond.true.956, label %cond.false.997

cond.true.956:                                    ; preds = %cond.false.951
  %234 = load i64, i64* %nmaps, align 8
  %conv957 = trunc i64 %234 to i16
  %conv958 = sext i16 %conv957 to i32
  %235 = load i64, i64* %nmaps, align 8
  %conv959 = trunc i64 %235 to i16
  %conv960 = sext i16 %conv959 to i32
  %add961 = add nsw i32 0, %conv960
  %mul962 = mul nsw i32 0, %add961
  %sub963 = sub nsw i32 %mul962, 1
  %cmp964 = icmp slt i32 %sub963, 0
  br i1 %cmp964, label %cond.true.966, label %cond.false.986

cond.true.966:                                    ; preds = %cond.true.956
  %236 = load i64, i64* %nmaps, align 8
  %conv967 = trunc i64 %236 to i16
  %conv968 = sext i16 %conv967 to i32
  %add969 = add nsw i32 0, %conv968
  %mul970 = mul nsw i32 0, %add969
  %add971 = add nsw i32 %mul970, 0
  %neg972 = xor i32 %add971, -1
  %cmp973 = icmp eq i32 %neg972, -1
  %conv974 = zext i1 %cmp973 to i32
  %sub975 = sub nsw i32 0, %conv974
  %237 = load i64, i64* %nmaps, align 8
  %conv976 = trunc i64 %237 to i16
  %conv977 = sext i16 %conv976 to i32
  %add978 = add nsw i32 0, %conv977
  %mul979 = mul nsw i32 0, %add978
  %add980 = add nsw i32 %mul979, 1
  %shl981 = shl i32 %add980, 30
  %sub982 = sub nsw i32 %shl981, 1
  %mul983 = mul nsw i32 %sub982, 2
  %add984 = add nsw i32 %mul983, 1
  %sub985 = sub nsw i32 %sub975, %add984
  br label %cond.end.992

cond.false.986:                                   ; preds = %cond.true.956
  %238 = load i64, i64* %nmaps, align 8
  %conv987 = trunc i64 %238 to i16
  %conv988 = sext i16 %conv987 to i32
  %add989 = add nsw i32 0, %conv988
  %mul990 = mul nsw i32 0, %add989
  %add991 = add nsw i32 %mul990, 0
  br label %cond.end.992

cond.end.992:                                     ; preds = %cond.false.986, %cond.true.966
  %cond993 = phi i32 [ %sub985, %cond.true.966 ], [ %add991, %cond.false.986 ]
  %div994 = sdiv i32 %cond993, 8
  %cmp995 = icmp slt i32 %conv958, %div994
  br i1 %cmp995, label %cond.true.1048, label %lor.lhs.false.1028

cond.false.997:                                   ; preds = %cond.false.951
  %239 = load i64, i64* %nmaps, align 8
  %conv998 = trunc i64 %239 to i16
  %conv999 = sext i16 %conv998 to i32
  %add1000 = add nsw i32 0, %conv999
  %mul1001 = mul nsw i32 0, %add1000
  %sub1002 = sub nsw i32 %mul1001, 1
  %cmp1003 = icmp slt i32 %sub1002, 0
  br i1 %cmp1003, label %cond.true.1005, label %cond.false.1015

cond.true.1005:                                   ; preds = %cond.false.997
  %240 = load i64, i64* %nmaps, align 8
  %conv1006 = trunc i64 %240 to i16
  %conv1007 = sext i16 %conv1006 to i32
  %add1008 = add nsw i32 0, %conv1007
  %mul1009 = mul nsw i32 0, %add1008
  %add1010 = add nsw i32 %mul1009, 1
  %shl1011 = shl i32 %add1010, 30
  %sub1012 = sub nsw i32 %shl1011, 1
  %mul1013 = mul nsw i32 %sub1012, 2
  %add1014 = add nsw i32 %mul1013, 1
  br label %cond.end.1021

cond.false.1015:                                  ; preds = %cond.false.997
  %241 = load i64, i64* %nmaps, align 8
  %conv1016 = trunc i64 %241 to i16
  %conv1017 = sext i16 %conv1016 to i32
  %add1018 = add nsw i32 0, %conv1017
  %mul1019 = mul nsw i32 0, %add1018
  %sub1020 = sub nsw i32 %mul1019, 1
  br label %cond.end.1021

cond.end.1021:                                    ; preds = %cond.false.1015, %cond.true.1005
  %cond1022 = phi i32 [ %add1014, %cond.true.1005 ], [ %sub1020, %cond.false.1015 ]
  %div1023 = sdiv i32 %cond1022, 8
  %242 = load i64, i64* %nmaps, align 8
  %conv1024 = trunc i64 %242 to i16
  %conv1025 = sext i16 %conv1024 to i32
  %cmp1026 = icmp slt i32 %div1023, %conv1025
  br i1 %cmp1026, label %cond.true.1048, label %lor.lhs.false.1028

lor.lhs.false.1028:                               ; preds = %cond.end.1021, %cond.end.992, %cond.true.950, %cond.end.942, %cond.true.907, %cond.end.901
  %243 = load i64, i64* %nmaps, align 8
  %conv1029 = trunc i64 %243 to i16
  %conv1030 = sext i16 %conv1029 to i32
  %mul1031 = mul nsw i32 %conv1030, 8
  %mul1032 = mul nsw i32 0, %mul1031
  %sub1033 = sub nsw i32 %mul1032, 1
  %cmp1034 = icmp slt i32 %sub1033, 0
  br i1 %cmp1034, label %land.lhs.true.1036, label %lor.lhs.false.1042

land.lhs.true.1036:                               ; preds = %lor.lhs.false.1028
  %244 = load i64, i64* %nmaps, align 8
  %conv1037 = trunc i64 %244 to i16
  %conv1038 = sext i16 %conv1037 to i32
  %mul1039 = mul nsw i32 %conv1038, 8
  %cmp1040 = icmp slt i32 %mul1039, -32768
  br i1 %cmp1040, label %cond.true.1048, label %lor.lhs.false.1042

lor.lhs.false.1042:                               ; preds = %land.lhs.true.1036, %lor.lhs.false.1028
  %245 = load i64, i64* %nmaps, align 8
  %conv1043 = trunc i64 %245 to i16
  %conv1044 = sext i16 %conv1043 to i32
  %mul1045 = mul nsw i32 %conv1044, 8
  %cmp1046 = icmp slt i32 32767, %mul1045
  br i1 %cmp1046, label %cond.true.1048, label %cond.false.1071

cond.true.1048:                                   ; preds = %lor.lhs.false.1042, %land.lhs.true.1036, %cond.end.1021, %cond.end.992, %cond.true.950, %cond.end.942, %cond.true.907, %cond.end.901, %land.lhs.true.864
  %246 = load i64, i64* %nmaps, align 8
  %conv1049 = trunc i64 %246 to i16
  %conv1050 = zext i16 %conv1049 to i32
  %mul1051 = mul nsw i32 %conv1050, 8
  %cmp1052 = icmp sle i32 %mul1051, 32767
  br i1 %cmp1052, label %cond.true.1054, label %cond.false.1060

cond.true.1054:                                   ; preds = %cond.true.1048
  %247 = load i64, i64* %nmaps, align 8
  %conv1055 = trunc i64 %247 to i16
  %conv1056 = zext i16 %conv1055 to i32
  %mul1057 = mul nsw i32 %conv1056, 8
  %conv1058 = trunc i32 %mul1057 to i16
  %conv1059 = sext i16 %conv1058 to i32
  br label %cond.end.1068

cond.false.1060:                                  ; preds = %cond.true.1048
  %248 = load i64, i64* %nmaps, align 8
  %conv1061 = trunc i64 %248 to i16
  %conv1062 = zext i16 %conv1061 to i32
  %mul1063 = mul nsw i32 %conv1062, 8
  %sub1064 = sub nsw i32 %mul1063, -32768
  %conv1065 = trunc i32 %sub1064 to i16
  %conv1066 = sext i16 %conv1065 to i32
  %add1067 = add nsw i32 %conv1066, -32768
  br label %cond.end.1068

cond.end.1068:                                    ; preds = %cond.false.1060, %cond.true.1054
  %cond1069 = phi i32 [ %conv1059, %cond.true.1054 ], [ %add1067, %cond.false.1060 ]
  %conv1070 = sext i32 %cond1069 to i64
  store i64 %conv1070, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then.2516, label %lor.lhs.false.2513

cond.false.1071:                                  ; preds = %lor.lhs.false.1042
  %249 = load i64, i64* %nmaps, align 8
  %conv1072 = trunc i64 %249 to i16
  %conv1073 = zext i16 %conv1072 to i32
  %mul1074 = mul nsw i32 %conv1073, 8
  %cmp1075 = icmp sle i32 %mul1074, 32767
  br i1 %cmp1075, label %cond.true.1077, label %cond.false.1083

cond.true.1077:                                   ; preds = %cond.false.1071
  %250 = load i64, i64* %nmaps, align 8
  %conv1078 = trunc i64 %250 to i16
  %conv1079 = zext i16 %conv1078 to i32
  %mul1080 = mul nsw i32 %conv1079, 8
  %conv1081 = trunc i32 %mul1080 to i16
  %conv1082 = sext i16 %conv1081 to i32
  br label %cond.end.1091

cond.false.1083:                                  ; preds = %cond.false.1071
  %251 = load i64, i64* %nmaps, align 8
  %conv1084 = trunc i64 %251 to i16
  %conv1085 = zext i16 %conv1084 to i32
  %mul1086 = mul nsw i32 %conv1085, 8
  %sub1087 = sub nsw i32 %mul1086, -32768
  %conv1088 = trunc i32 %sub1087 to i16
  %conv1089 = sext i16 %conv1088 to i32
  %add1090 = add nsw i32 %conv1089, -32768
  br label %cond.end.1091

cond.end.1091:                                    ; preds = %cond.false.1083, %cond.true.1077
  %cond1092 = phi i32 [ %conv1082, %cond.true.1077 ], [ %add1090, %cond.false.1083 ]
  %conv1093 = sext i32 %cond1092 to i64
  store i64 %conv1093, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then.2516, label %lor.lhs.false.2513

cond.false.1094:                                  ; preds = %cond.true.825
  %252 = load i64, i64* %nmaps, align 8
  %add1095 = add nsw i64 0, %252
  %mul1096 = mul nsw i64 0, %add1095
  %sub1097 = sub nsw i64 %mul1096, 1
  %cmp1098 = icmp slt i64 %sub1097, 0
  br i1 %cmp1098, label %cond.true.1100, label %cond.false.1117

cond.true.1100:                                   ; preds = %cond.false.1094
  %253 = load i64, i64* %nmaps, align 8
  %add1101 = add nsw i64 0, %253
  %mul1102 = mul nsw i64 0, %add1101
  %add1103 = add nsw i64 %mul1102, 0
  %neg1104 = xor i64 %add1103, -1
  %cmp1105 = icmp eq i64 %neg1104, -1
  %conv1106 = zext i1 %cmp1105 to i32
  %sub1107 = sub nsw i32 0, %conv1106
  %conv1108 = sext i32 %sub1107 to i64
  %254 = load i64, i64* %nmaps, align 8
  %add1109 = add nsw i64 0, %254
  %mul1110 = mul nsw i64 0, %add1109
  %add1111 = add nsw i64 %mul1110, 1
  %shl1112 = shl i64 %add1111, 62
  %sub1113 = sub nsw i64 %shl1112, 1
  %mul1114 = mul nsw i64 %sub1113, 2
  %add1115 = add nsw i64 %mul1114, 1
  %sub1116 = sub nsw i64 %conv1108, %add1115
  br label %cond.end.1121

cond.false.1117:                                  ; preds = %cond.false.1094
  %255 = load i64, i64* %nmaps, align 8
  %add1118 = add nsw i64 0, %255
  %mul1119 = mul nsw i64 0, %add1118
  %add1120 = add nsw i64 %mul1119, 0
  br label %cond.end.1121

cond.end.1121:                                    ; preds = %cond.false.1117, %cond.true.1100
  %cond1122 = phi i64 [ %sub1116, %cond.true.1100 ], [ %add1120, %cond.false.1117 ]
  %cmp1123 = icmp eq i64 %cond1122, 0
  br i1 %cmp1123, label %land.lhs.true.1125, label %lor.lhs.false.1128

land.lhs.true.1125:                               ; preds = %cond.end.1121
  %256 = load i64, i64* %nmaps, align 8
  %cmp1126 = icmp slt i64 %256, 0
  br i1 %cmp1126, label %cond.true.1263, label %lor.lhs.false.1128

lor.lhs.false.1128:                               ; preds = %land.lhs.true.1125, %cond.end.1121
  br i1 false, label %cond.true.1129, label %cond.false.1189

cond.true.1129:                                   ; preds = %lor.lhs.false.1128
  %257 = load i64, i64* %nmaps, align 8
  %cmp1130 = icmp slt i64 %257, 0
  br i1 %cmp1130, label %cond.true.1132, label %cond.false.1155

cond.true.1132:                                   ; preds = %cond.true.1129
  %258 = load i64, i64* %nmaps, align 8
  %259 = load i64, i64* %nmaps, align 8
  %add1133 = add nsw i64 0, %259
  %mul1134 = mul nsw i64 0, %add1133
  %sub1135 = sub nsw i64 %mul1134, 1
  %cmp1136 = icmp slt i64 %sub1135, 0
  br i1 %cmp1136, label %cond.true.1138, label %cond.false.1146

cond.true.1138:                                   ; preds = %cond.true.1132
  %260 = load i64, i64* %nmaps, align 8
  %add1139 = add nsw i64 0, %260
  %mul1140 = mul nsw i64 0, %add1139
  %add1141 = add nsw i64 %mul1140, 1
  %shl1142 = shl i64 %add1141, 62
  %sub1143 = sub nsw i64 %shl1142, 1
  %mul1144 = mul nsw i64 %sub1143, 2
  %add1145 = add nsw i64 %mul1144, 1
  br label %cond.end.1150

cond.false.1146:                                  ; preds = %cond.true.1132
  %261 = load i64, i64* %nmaps, align 8
  %add1147 = add nsw i64 0, %261
  %mul1148 = mul nsw i64 0, %add1147
  %sub1149 = sub nsw i64 %mul1148, 1
  br label %cond.end.1150

cond.end.1150:                                    ; preds = %cond.false.1146, %cond.true.1138
  %cond1151 = phi i64 [ %add1145, %cond.true.1138 ], [ %sub1149, %cond.false.1146 ]
  %div1152 = sdiv i64 %cond1151, 8
  %cmp1153 = icmp slt i64 %258, %div1152
  br i1 %cmp1153, label %cond.true.1263, label %lor.lhs.false.1249

cond.false.1155:                                  ; preds = %cond.true.1129
  br i1 false, label %cond.true.1156, label %cond.false.1157

cond.true.1156:                                   ; preds = %cond.false.1155
  br i1 false, label %cond.true.1263, label %lor.lhs.false.1249

cond.false.1157:                                  ; preds = %cond.false.1155
  %262 = load i64, i64* %nmaps, align 8
  %add1158 = add nsw i64 0, %262
  %mul1159 = mul nsw i64 0, %add1158
  %sub1160 = sub nsw i64 %mul1159, 1
  %cmp1161 = icmp slt i64 %sub1160, 0
  br i1 %cmp1161, label %cond.true.1163, label %cond.false.1180

cond.true.1163:                                   ; preds = %cond.false.1157
  %263 = load i64, i64* %nmaps, align 8
  %add1164 = add nsw i64 0, %263
  %mul1165 = mul nsw i64 0, %add1164
  %add1166 = add nsw i64 %mul1165, 0
  %neg1167 = xor i64 %add1166, -1
  %cmp1168 = icmp eq i64 %neg1167, -1
  %conv1169 = zext i1 %cmp1168 to i32
  %sub1170 = sub nsw i32 0, %conv1169
  %conv1171 = sext i32 %sub1170 to i64
  %264 = load i64, i64* %nmaps, align 8
  %add1172 = add nsw i64 0, %264
  %mul1173 = mul nsw i64 0, %add1172
  %add1174 = add nsw i64 %mul1173, 1
  %shl1175 = shl i64 %add1174, 62
  %sub1176 = sub nsw i64 %shl1175, 1
  %mul1177 = mul nsw i64 %sub1176, 2
  %add1178 = add nsw i64 %mul1177, 1
  %sub1179 = sub nsw i64 %conv1171, %add1178
  br label %cond.end.1184

cond.false.1180:                                  ; preds = %cond.false.1157
  %265 = load i64, i64* %nmaps, align 8
  %add1181 = add nsw i64 0, %265
  %mul1182 = mul nsw i64 0, %add1181
  %add1183 = add nsw i64 %mul1182, 0
  br label %cond.end.1184

cond.end.1184:                                    ; preds = %cond.false.1180, %cond.true.1163
  %cond1185 = phi i64 [ %sub1179, %cond.true.1163 ], [ %add1183, %cond.false.1180 ]
  %div1186 = sdiv i64 %cond1185, 8
  %266 = load i64, i64* %nmaps, align 8
  %cmp1187 = icmp slt i64 %div1186, %266
  br i1 %cmp1187, label %cond.true.1263, label %lor.lhs.false.1249

cond.false.1189:                                  ; preds = %lor.lhs.false.1128
  br i1 false, label %cond.true.1190, label %cond.false.1191

cond.true.1190:                                   ; preds = %cond.false.1189
  br i1 false, label %cond.true.1263, label %lor.lhs.false.1249

cond.false.1191:                                  ; preds = %cond.false.1189
  %267 = load i64, i64* %nmaps, align 8
  %cmp1192 = icmp slt i64 %267, 0
  br i1 %cmp1192, label %cond.true.1194, label %cond.false.1226

cond.true.1194:                                   ; preds = %cond.false.1191
  %268 = load i64, i64* %nmaps, align 8
  %269 = load i64, i64* %nmaps, align 8
  %add1195 = add nsw i64 0, %269
  %mul1196 = mul nsw i64 0, %add1195
  %sub1197 = sub nsw i64 %mul1196, 1
  %cmp1198 = icmp slt i64 %sub1197, 0
  br i1 %cmp1198, label %cond.true.1200, label %cond.false.1217

cond.true.1200:                                   ; preds = %cond.true.1194
  %270 = load i64, i64* %nmaps, align 8
  %add1201 = add nsw i64 0, %270
  %mul1202 = mul nsw i64 0, %add1201
  %add1203 = add nsw i64 %mul1202, 0
  %neg1204 = xor i64 %add1203, -1
  %cmp1205 = icmp eq i64 %neg1204, -1
  %conv1206 = zext i1 %cmp1205 to i32
  %sub1207 = sub nsw i32 0, %conv1206
  %conv1208 = sext i32 %sub1207 to i64
  %271 = load i64, i64* %nmaps, align 8
  %add1209 = add nsw i64 0, %271
  %mul1210 = mul nsw i64 0, %add1209
  %add1211 = add nsw i64 %mul1210, 1
  %shl1212 = shl i64 %add1211, 62
  %sub1213 = sub nsw i64 %shl1212, 1
  %mul1214 = mul nsw i64 %sub1213, 2
  %add1215 = add nsw i64 %mul1214, 1
  %sub1216 = sub nsw i64 %conv1208, %add1215
  br label %cond.end.1221

cond.false.1217:                                  ; preds = %cond.true.1194
  %272 = load i64, i64* %nmaps, align 8
  %add1218 = add nsw i64 0, %272
  %mul1219 = mul nsw i64 0, %add1218
  %add1220 = add nsw i64 %mul1219, 0
  br label %cond.end.1221

cond.end.1221:                                    ; preds = %cond.false.1217, %cond.true.1200
  %cond1222 = phi i64 [ %sub1216, %cond.true.1200 ], [ %add1220, %cond.false.1217 ]
  %div1223 = sdiv i64 %cond1222, 8
  %cmp1224 = icmp slt i64 %268, %div1223
  br i1 %cmp1224, label %cond.true.1263, label %lor.lhs.false.1249

cond.false.1226:                                  ; preds = %cond.false.1191
  %273 = load i64, i64* %nmaps, align 8
  %add1227 = add nsw i64 0, %273
  %mul1228 = mul nsw i64 0, %add1227
  %sub1229 = sub nsw i64 %mul1228, 1
  %cmp1230 = icmp slt i64 %sub1229, 0
  br i1 %cmp1230, label %cond.true.1232, label %cond.false.1240

cond.true.1232:                                   ; preds = %cond.false.1226
  %274 = load i64, i64* %nmaps, align 8
  %add1233 = add nsw i64 0, %274
  %mul1234 = mul nsw i64 0, %add1233
  %add1235 = add nsw i64 %mul1234, 1
  %shl1236 = shl i64 %add1235, 62
  %sub1237 = sub nsw i64 %shl1236, 1
  %mul1238 = mul nsw i64 %sub1237, 2
  %add1239 = add nsw i64 %mul1238, 1
  br label %cond.end.1244

cond.false.1240:                                  ; preds = %cond.false.1226
  %275 = load i64, i64* %nmaps, align 8
  %add1241 = add nsw i64 0, %275
  %mul1242 = mul nsw i64 0, %add1241
  %sub1243 = sub nsw i64 %mul1242, 1
  br label %cond.end.1244

cond.end.1244:                                    ; preds = %cond.false.1240, %cond.true.1232
  %cond1245 = phi i64 [ %add1239, %cond.true.1232 ], [ %sub1243, %cond.false.1240 ]
  %div1246 = sdiv i64 %cond1245, 8
  %276 = load i64, i64* %nmaps, align 8
  %cmp1247 = icmp slt i64 %div1246, %276
  br i1 %cmp1247, label %cond.true.1263, label %lor.lhs.false.1249

lor.lhs.false.1249:                               ; preds = %cond.end.1244, %cond.end.1221, %cond.true.1190, %cond.end.1184, %cond.true.1156, %cond.end.1150
  %277 = load i64, i64* %nmaps, align 8
  %mul1250 = mul nsw i64 %277, 8
  %mul1251 = mul nsw i64 0, %mul1250
  %sub1252 = sub nsw i64 %mul1251, 1
  %cmp1253 = icmp slt i64 %sub1252, 0
  br i1 %cmp1253, label %land.lhs.true.1255, label %lor.lhs.false.1259

land.lhs.true.1255:                               ; preds = %lor.lhs.false.1249
  %278 = load i64, i64* %nmaps, align 8
  %mul1256 = mul nsw i64 %278, 8
  %cmp1257 = icmp slt i64 %mul1256, -32768
  br i1 %cmp1257, label %cond.true.1263, label %lor.lhs.false.1259

lor.lhs.false.1259:                               ; preds = %land.lhs.true.1255, %lor.lhs.false.1249
  %279 = load i64, i64* %nmaps, align 8
  %mul1260 = mul nsw i64 %279, 8
  %cmp1261 = icmp slt i64 32767, %mul1260
  br i1 %cmp1261, label %cond.true.1263, label %cond.false.1286

cond.true.1263:                                   ; preds = %lor.lhs.false.1259, %land.lhs.true.1255, %cond.end.1244, %cond.end.1221, %cond.true.1190, %cond.end.1184, %cond.true.1156, %cond.end.1150, %land.lhs.true.1125
  %280 = load i64, i64* %nmaps, align 8
  %conv1264 = trunc i64 %280 to i16
  %conv1265 = zext i16 %conv1264 to i32
  %mul1266 = mul nsw i32 %conv1265, 8
  %cmp1267 = icmp sle i32 %mul1266, 32767
  br i1 %cmp1267, label %cond.true.1269, label %cond.false.1275

cond.true.1269:                                   ; preds = %cond.true.1263
  %281 = load i64, i64* %nmaps, align 8
  %conv1270 = trunc i64 %281 to i16
  %conv1271 = zext i16 %conv1270 to i32
  %mul1272 = mul nsw i32 %conv1271, 8
  %conv1273 = trunc i32 %mul1272 to i16
  %conv1274 = sext i16 %conv1273 to i32
  br label %cond.end.1283

cond.false.1275:                                  ; preds = %cond.true.1263
  %282 = load i64, i64* %nmaps, align 8
  %conv1276 = trunc i64 %282 to i16
  %conv1277 = zext i16 %conv1276 to i32
  %mul1278 = mul nsw i32 %conv1277, 8
  %sub1279 = sub nsw i32 %mul1278, -32768
  %conv1280 = trunc i32 %sub1279 to i16
  %conv1281 = sext i16 %conv1280 to i32
  %add1282 = add nsw i32 %conv1281, -32768
  br label %cond.end.1283

cond.end.1283:                                    ; preds = %cond.false.1275, %cond.true.1269
  %cond1284 = phi i32 [ %conv1274, %cond.true.1269 ], [ %add1282, %cond.false.1275 ]
  %conv1285 = sext i32 %cond1284 to i64
  store i64 %conv1285, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then.2516, label %lor.lhs.false.2513

cond.false.1286:                                  ; preds = %lor.lhs.false.1259
  %283 = load i64, i64* %nmaps, align 8
  %conv1287 = trunc i64 %283 to i16
  %conv1288 = zext i16 %conv1287 to i32
  %mul1289 = mul nsw i32 %conv1288, 8
  %cmp1290 = icmp sle i32 %mul1289, 32767
  br i1 %cmp1290, label %cond.true.1292, label %cond.false.1298

cond.true.1292:                                   ; preds = %cond.false.1286
  %284 = load i64, i64* %nmaps, align 8
  %conv1293 = trunc i64 %284 to i16
  %conv1294 = zext i16 %conv1293 to i32
  %mul1295 = mul nsw i32 %conv1294, 8
  %conv1296 = trunc i32 %mul1295 to i16
  %conv1297 = sext i16 %conv1296 to i32
  br label %cond.end.1306

cond.false.1298:                                  ; preds = %cond.false.1286
  %285 = load i64, i64* %nmaps, align 8
  %conv1299 = trunc i64 %285 to i16
  %conv1300 = zext i16 %conv1299 to i32
  %mul1301 = mul nsw i32 %conv1300, 8
  %sub1302 = sub nsw i32 %mul1301, -32768
  %conv1303 = trunc i32 %sub1302 to i16
  %conv1304 = sext i16 %conv1303 to i32
  %add1305 = add nsw i32 %conv1304, -32768
  br label %cond.end.1306

cond.end.1306:                                    ; preds = %cond.false.1298, %cond.true.1292
  %cond1307 = phi i32 [ %conv1297, %cond.true.1292 ], [ %add1305, %cond.false.1298 ]
  %conv1308 = sext i32 %cond1307 to i64
  store i64 %conv1308, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then.2516, label %lor.lhs.false.2513

cond.false.1309:                                  ; preds = %cond.false.824
  br i1 false, label %cond.true.1310, label %cond.false.1738

cond.true.1310:                                   ; preds = %cond.false.1309
  br i1 false, label %cond.true.1311, label %cond.false.1537

cond.true.1311:                                   ; preds = %cond.true.1310
  %286 = load i64, i64* %nmaps, align 8
  %conv1312 = trunc i64 %286 to i32
  %add1313 = add nsw i32 0, %conv1312
  %mul1314 = mul nsw i32 0, %add1313
  %sub1315 = sub nsw i32 %mul1314, 1
  %cmp1316 = icmp slt i32 %sub1315, 0
  br i1 %cmp1316, label %cond.true.1318, label %cond.false.1336

cond.true.1318:                                   ; preds = %cond.true.1311
  %287 = load i64, i64* %nmaps, align 8
  %conv1319 = trunc i64 %287 to i32
  %add1320 = add nsw i32 0, %conv1319
  %mul1321 = mul nsw i32 0, %add1320
  %add1322 = add nsw i32 %mul1321, 0
  %neg1323 = xor i32 %add1322, -1
  %cmp1324 = icmp eq i32 %neg1323, -1
  %conv1325 = zext i1 %cmp1324 to i32
  %sub1326 = sub nsw i32 0, %conv1325
  %288 = load i64, i64* %nmaps, align 8
  %conv1327 = trunc i64 %288 to i32
  %add1328 = add nsw i32 0, %conv1327
  %mul1329 = mul nsw i32 0, %add1328
  %add1330 = add nsw i32 %mul1329, 1
  %shl1331 = shl i32 %add1330, 30
  %sub1332 = sub nsw i32 %shl1331, 1
  %mul1333 = mul nsw i32 %sub1332, 2
  %add1334 = add nsw i32 %mul1333, 1
  %sub1335 = sub nsw i32 %sub1326, %add1334
  br label %cond.end.1341

cond.false.1336:                                  ; preds = %cond.true.1311
  %289 = load i64, i64* %nmaps, align 8
  %conv1337 = trunc i64 %289 to i32
  %add1338 = add nsw i32 0, %conv1337
  %mul1339 = mul nsw i32 0, %add1338
  %add1340 = add nsw i32 %mul1339, 0
  br label %cond.end.1341

cond.end.1341:                                    ; preds = %cond.false.1336, %cond.true.1318
  %cond1342 = phi i32 [ %sub1335, %cond.true.1318 ], [ %add1340, %cond.false.1336 ]
  %cmp1343 = icmp eq i32 %cond1342, 0
  br i1 %cmp1343, label %land.lhs.true.1345, label %lor.lhs.false.1349

land.lhs.true.1345:                               ; preds = %cond.end.1341
  %290 = load i64, i64* %nmaps, align 8
  %conv1346 = trunc i64 %290 to i32
  %cmp1347 = icmp slt i32 %conv1346, 0
  br i1 %cmp1347, label %cond.true.1505, label %lor.lhs.false.1349

lor.lhs.false.1349:                               ; preds = %land.lhs.true.1345, %cond.end.1341
  br i1 false, label %cond.true.1350, label %cond.false.1419

cond.true.1350:                                   ; preds = %lor.lhs.false.1349
  %291 = load i64, i64* %nmaps, align 8
  %conv1351 = trunc i64 %291 to i32
  %cmp1352 = icmp slt i32 %conv1351, 0
  br i1 %cmp1352, label %cond.true.1354, label %cond.false.1381

cond.true.1354:                                   ; preds = %cond.true.1350
  %292 = load i64, i64* %nmaps, align 8
  %conv1355 = trunc i64 %292 to i32
  %293 = load i64, i64* %nmaps, align 8
  %conv1356 = trunc i64 %293 to i32
  %add1357 = add nsw i32 0, %conv1356
  %mul1358 = mul nsw i32 0, %add1357
  %sub1359 = sub nsw i32 %mul1358, 1
  %cmp1360 = icmp slt i32 %sub1359, 0
  br i1 %cmp1360, label %cond.true.1362, label %cond.false.1371

cond.true.1362:                                   ; preds = %cond.true.1354
  %294 = load i64, i64* %nmaps, align 8
  %conv1363 = trunc i64 %294 to i32
  %add1364 = add nsw i32 0, %conv1363
  %mul1365 = mul nsw i32 0, %add1364
  %add1366 = add nsw i32 %mul1365, 1
  %shl1367 = shl i32 %add1366, 30
  %sub1368 = sub nsw i32 %shl1367, 1
  %mul1369 = mul nsw i32 %sub1368, 2
  %add1370 = add nsw i32 %mul1369, 1
  br label %cond.end.1376

cond.false.1371:                                  ; preds = %cond.true.1354
  %295 = load i64, i64* %nmaps, align 8
  %conv1372 = trunc i64 %295 to i32
  %add1373 = add nsw i32 0, %conv1372
  %mul1374 = mul nsw i32 0, %add1373
  %sub1375 = sub nsw i32 %mul1374, 1
  br label %cond.end.1376

cond.end.1376:                                    ; preds = %cond.false.1371, %cond.true.1362
  %cond1377 = phi i32 [ %add1370, %cond.true.1362 ], [ %sub1375, %cond.false.1371 ]
  %div1378 = sdiv i32 %cond1377, 8
  %cmp1379 = icmp slt i32 %conv1355, %div1378
  br i1 %cmp1379, label %cond.true.1505, label %lor.lhs.false.1488

cond.false.1381:                                  ; preds = %cond.true.1350
  br i1 false, label %cond.true.1382, label %cond.false.1383

cond.true.1382:                                   ; preds = %cond.false.1381
  br i1 false, label %cond.true.1505, label %lor.lhs.false.1488

cond.false.1383:                                  ; preds = %cond.false.1381
  %296 = load i64, i64* %nmaps, align 8
  %conv1384 = trunc i64 %296 to i32
  %add1385 = add nsw i32 0, %conv1384
  %mul1386 = mul nsw i32 0, %add1385
  %sub1387 = sub nsw i32 %mul1386, 1
  %cmp1388 = icmp slt i32 %sub1387, 0
  br i1 %cmp1388, label %cond.true.1390, label %cond.false.1408

cond.true.1390:                                   ; preds = %cond.false.1383
  %297 = load i64, i64* %nmaps, align 8
  %conv1391 = trunc i64 %297 to i32
  %add1392 = add nsw i32 0, %conv1391
  %mul1393 = mul nsw i32 0, %add1392
  %add1394 = add nsw i32 %mul1393, 0
  %neg1395 = xor i32 %add1394, -1
  %cmp1396 = icmp eq i32 %neg1395, -1
  %conv1397 = zext i1 %cmp1396 to i32
  %sub1398 = sub nsw i32 0, %conv1397
  %298 = load i64, i64* %nmaps, align 8
  %conv1399 = trunc i64 %298 to i32
  %add1400 = add nsw i32 0, %conv1399
  %mul1401 = mul nsw i32 0, %add1400
  %add1402 = add nsw i32 %mul1401, 1
  %shl1403 = shl i32 %add1402, 30
  %sub1404 = sub nsw i32 %shl1403, 1
  %mul1405 = mul nsw i32 %sub1404, 2
  %add1406 = add nsw i32 %mul1405, 1
  %sub1407 = sub nsw i32 %sub1398, %add1406
  br label %cond.end.1413

cond.false.1408:                                  ; preds = %cond.false.1383
  %299 = load i64, i64* %nmaps, align 8
  %conv1409 = trunc i64 %299 to i32
  %add1410 = add nsw i32 0, %conv1409
  %mul1411 = mul nsw i32 0, %add1410
  %add1412 = add nsw i32 %mul1411, 0
  br label %cond.end.1413

cond.end.1413:                                    ; preds = %cond.false.1408, %cond.true.1390
  %cond1414 = phi i32 [ %sub1407, %cond.true.1390 ], [ %add1412, %cond.false.1408 ]
  %div1415 = sdiv i32 %cond1414, 8
  %300 = load i64, i64* %nmaps, align 8
  %conv1416 = trunc i64 %300 to i32
  %cmp1417 = icmp slt i32 %div1415, %conv1416
  br i1 %cmp1417, label %cond.true.1505, label %lor.lhs.false.1488

cond.false.1419:                                  ; preds = %lor.lhs.false.1349
  br i1 false, label %cond.true.1420, label %cond.false.1421

cond.true.1420:                                   ; preds = %cond.false.1419
  br i1 false, label %cond.true.1505, label %lor.lhs.false.1488

cond.false.1421:                                  ; preds = %cond.false.1419
  %301 = load i64, i64* %nmaps, align 8
  %conv1422 = trunc i64 %301 to i32
  %cmp1423 = icmp slt i32 %conv1422, 0
  br i1 %cmp1423, label %cond.true.1425, label %cond.false.1461

cond.true.1425:                                   ; preds = %cond.false.1421
  %302 = load i64, i64* %nmaps, align 8
  %conv1426 = trunc i64 %302 to i32
  %303 = load i64, i64* %nmaps, align 8
  %conv1427 = trunc i64 %303 to i32
  %add1428 = add nsw i32 0, %conv1427
  %mul1429 = mul nsw i32 0, %add1428
  %sub1430 = sub nsw i32 %mul1429, 1
  %cmp1431 = icmp slt i32 %sub1430, 0
  br i1 %cmp1431, label %cond.true.1433, label %cond.false.1451

cond.true.1433:                                   ; preds = %cond.true.1425
  %304 = load i64, i64* %nmaps, align 8
  %conv1434 = trunc i64 %304 to i32
  %add1435 = add nsw i32 0, %conv1434
  %mul1436 = mul nsw i32 0, %add1435
  %add1437 = add nsw i32 %mul1436, 0
  %neg1438 = xor i32 %add1437, -1
  %cmp1439 = icmp eq i32 %neg1438, -1
  %conv1440 = zext i1 %cmp1439 to i32
  %sub1441 = sub nsw i32 0, %conv1440
  %305 = load i64, i64* %nmaps, align 8
  %conv1442 = trunc i64 %305 to i32
  %add1443 = add nsw i32 0, %conv1442
  %mul1444 = mul nsw i32 0, %add1443
  %add1445 = add nsw i32 %mul1444, 1
  %shl1446 = shl i32 %add1445, 30
  %sub1447 = sub nsw i32 %shl1446, 1
  %mul1448 = mul nsw i32 %sub1447, 2
  %add1449 = add nsw i32 %mul1448, 1
  %sub1450 = sub nsw i32 %sub1441, %add1449
  br label %cond.end.1456

cond.false.1451:                                  ; preds = %cond.true.1425
  %306 = load i64, i64* %nmaps, align 8
  %conv1452 = trunc i64 %306 to i32
  %add1453 = add nsw i32 0, %conv1452
  %mul1454 = mul nsw i32 0, %add1453
  %add1455 = add nsw i32 %mul1454, 0
  br label %cond.end.1456

cond.end.1456:                                    ; preds = %cond.false.1451, %cond.true.1433
  %cond1457 = phi i32 [ %sub1450, %cond.true.1433 ], [ %add1455, %cond.false.1451 ]
  %div1458 = sdiv i32 %cond1457, 8
  %cmp1459 = icmp slt i32 %conv1426, %div1458
  br i1 %cmp1459, label %cond.true.1505, label %lor.lhs.false.1488

cond.false.1461:                                  ; preds = %cond.false.1421
  %307 = load i64, i64* %nmaps, align 8
  %conv1462 = trunc i64 %307 to i32
  %add1463 = add nsw i32 0, %conv1462
  %mul1464 = mul nsw i32 0, %add1463
  %sub1465 = sub nsw i32 %mul1464, 1
  %cmp1466 = icmp slt i32 %sub1465, 0
  br i1 %cmp1466, label %cond.true.1468, label %cond.false.1477

cond.true.1468:                                   ; preds = %cond.false.1461
  %308 = load i64, i64* %nmaps, align 8
  %conv1469 = trunc i64 %308 to i32
  %add1470 = add nsw i32 0, %conv1469
  %mul1471 = mul nsw i32 0, %add1470
  %add1472 = add nsw i32 %mul1471, 1
  %shl1473 = shl i32 %add1472, 30
  %sub1474 = sub nsw i32 %shl1473, 1
  %mul1475 = mul nsw i32 %sub1474, 2
  %add1476 = add nsw i32 %mul1475, 1
  br label %cond.end.1482

cond.false.1477:                                  ; preds = %cond.false.1461
  %309 = load i64, i64* %nmaps, align 8
  %conv1478 = trunc i64 %309 to i32
  %add1479 = add nsw i32 0, %conv1478
  %mul1480 = mul nsw i32 0, %add1479
  %sub1481 = sub nsw i32 %mul1480, 1
  br label %cond.end.1482

cond.end.1482:                                    ; preds = %cond.false.1477, %cond.true.1468
  %cond1483 = phi i32 [ %add1476, %cond.true.1468 ], [ %sub1481, %cond.false.1477 ]
  %div1484 = sdiv i32 %cond1483, 8
  %310 = load i64, i64* %nmaps, align 8
  %conv1485 = trunc i64 %310 to i32
  %cmp1486 = icmp slt i32 %div1484, %conv1485
  br i1 %cmp1486, label %cond.true.1505, label %lor.lhs.false.1488

lor.lhs.false.1488:                               ; preds = %cond.end.1482, %cond.end.1456, %cond.true.1420, %cond.end.1413, %cond.true.1382, %cond.end.1376
  %311 = load i64, i64* %nmaps, align 8
  %conv1489 = trunc i64 %311 to i32
  %mul1490 = mul nsw i32 %conv1489, 8
  %mul1491 = mul nsw i32 0, %mul1490
  %sub1492 = sub nsw i32 %mul1491, 1
  %cmp1493 = icmp slt i32 %sub1492, 0
  br i1 %cmp1493, label %land.lhs.true.1495, label %lor.lhs.false.1500

land.lhs.true.1495:                               ; preds = %lor.lhs.false.1488
  %312 = load i64, i64* %nmaps, align 8
  %conv1496 = trunc i64 %312 to i32
  %mul1497 = mul nsw i32 %conv1496, 8
  %cmp1498 = icmp slt i32 %mul1497, -2147483648
  br i1 %cmp1498, label %cond.true.1505, label %lor.lhs.false.1500

lor.lhs.false.1500:                               ; preds = %land.lhs.true.1495, %lor.lhs.false.1488
  %313 = load i64, i64* %nmaps, align 8
  %conv1501 = trunc i64 %313 to i32
  %mul1502 = mul nsw i32 %conv1501, 8
  %cmp1503 = icmp slt i32 2147483647, %mul1502
  br i1 %cmp1503, label %cond.true.1505, label %cond.false.1521

cond.true.1505:                                   ; preds = %lor.lhs.false.1500, %land.lhs.true.1495, %cond.end.1482, %cond.end.1456, %cond.true.1420, %cond.end.1413, %cond.true.1382, %cond.end.1376, %land.lhs.true.1345
  %314 = load i64, i64* %nmaps, align 8
  %conv1506 = trunc i64 %314 to i32
  %mul1507 = mul i32 %conv1506, 8
  %cmp1508 = icmp ule i32 %mul1507, 2147483647
  br i1 %cmp1508, label %cond.true.1510, label %cond.false.1513

cond.true.1510:                                   ; preds = %cond.true.1505
  %315 = load i64, i64* %nmaps, align 8
  %conv1511 = trunc i64 %315 to i32
  %mul1512 = mul i32 %conv1511, 8
  br label %cond.end.1518

cond.false.1513:                                  ; preds = %cond.true.1505
  %316 = load i64, i64* %nmaps, align 8
  %conv1514 = trunc i64 %316 to i32
  %mul1515 = mul i32 %conv1514, 8
  %sub1516 = sub i32 %mul1515, -2147483648
  %add1517 = add nsw i32 %sub1516, -2147483648
  br label %cond.end.1518

cond.end.1518:                                    ; preds = %cond.false.1513, %cond.true.1510
  %cond1519 = phi i32 [ %mul1512, %cond.true.1510 ], [ %add1517, %cond.false.1513 ]
  %conv1520 = sext i32 %cond1519 to i64
  store i64 %conv1520, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then.2516, label %lor.lhs.false.2513

cond.false.1521:                                  ; preds = %lor.lhs.false.1500
  %317 = load i64, i64* %nmaps, align 8
  %conv1522 = trunc i64 %317 to i32
  %mul1523 = mul i32 %conv1522, 8
  %cmp1524 = icmp ule i32 %mul1523, 2147483647
  br i1 %cmp1524, label %cond.true.1526, label %cond.false.1529

cond.true.1526:                                   ; preds = %cond.false.1521
  %318 = load i64, i64* %nmaps, align 8
  %conv1527 = trunc i64 %318 to i32
  %mul1528 = mul i32 %conv1527, 8
  br label %cond.end.1534

cond.false.1529:                                  ; preds = %cond.false.1521
  %319 = load i64, i64* %nmaps, align 8
  %conv1530 = trunc i64 %319 to i32
  %mul1531 = mul i32 %conv1530, 8
  %sub1532 = sub i32 %mul1531, -2147483648
  %add1533 = add nsw i32 %sub1532, -2147483648
  br label %cond.end.1534

cond.end.1534:                                    ; preds = %cond.false.1529, %cond.true.1526
  %cond1535 = phi i32 [ %mul1528, %cond.true.1526 ], [ %add1533, %cond.false.1529 ]
  %conv1536 = sext i32 %cond1535 to i64
  store i64 %conv1536, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then.2516, label %lor.lhs.false.2513

cond.false.1537:                                  ; preds = %cond.true.1310
  %320 = load i64, i64* %nmaps, align 8
  %add1538 = add nsw i64 0, %320
  %mul1539 = mul nsw i64 0, %add1538
  %sub1540 = sub nsw i64 %mul1539, 1
  %cmp1541 = icmp slt i64 %sub1540, 0
  br i1 %cmp1541, label %cond.true.1543, label %cond.false.1560

cond.true.1543:                                   ; preds = %cond.false.1537
  %321 = load i64, i64* %nmaps, align 8
  %add1544 = add nsw i64 0, %321
  %mul1545 = mul nsw i64 0, %add1544
  %add1546 = add nsw i64 %mul1545, 0
  %neg1547 = xor i64 %add1546, -1
  %cmp1548 = icmp eq i64 %neg1547, -1
  %conv1549 = zext i1 %cmp1548 to i32
  %sub1550 = sub nsw i32 0, %conv1549
  %conv1551 = sext i32 %sub1550 to i64
  %322 = load i64, i64* %nmaps, align 8
  %add1552 = add nsw i64 0, %322
  %mul1553 = mul nsw i64 0, %add1552
  %add1554 = add nsw i64 %mul1553, 1
  %shl1555 = shl i64 %add1554, 62
  %sub1556 = sub nsw i64 %shl1555, 1
  %mul1557 = mul nsw i64 %sub1556, 2
  %add1558 = add nsw i64 %mul1557, 1
  %sub1559 = sub nsw i64 %conv1551, %add1558
  br label %cond.end.1564

cond.false.1560:                                  ; preds = %cond.false.1537
  %323 = load i64, i64* %nmaps, align 8
  %add1561 = add nsw i64 0, %323
  %mul1562 = mul nsw i64 0, %add1561
  %add1563 = add nsw i64 %mul1562, 0
  br label %cond.end.1564

cond.end.1564:                                    ; preds = %cond.false.1560, %cond.true.1543
  %cond1565 = phi i64 [ %sub1559, %cond.true.1543 ], [ %add1563, %cond.false.1560 ]
  %cmp1566 = icmp eq i64 %cond1565, 0
  br i1 %cmp1566, label %land.lhs.true.1568, label %lor.lhs.false.1571

land.lhs.true.1568:                               ; preds = %cond.end.1564
  %324 = load i64, i64* %nmaps, align 8
  %cmp1569 = icmp slt i64 %324, 0
  br i1 %cmp1569, label %cond.true.1706, label %lor.lhs.false.1571

lor.lhs.false.1571:                               ; preds = %land.lhs.true.1568, %cond.end.1564
  br i1 false, label %cond.true.1572, label %cond.false.1632

cond.true.1572:                                   ; preds = %lor.lhs.false.1571
  %325 = load i64, i64* %nmaps, align 8
  %cmp1573 = icmp slt i64 %325, 0
  br i1 %cmp1573, label %cond.true.1575, label %cond.false.1598

cond.true.1575:                                   ; preds = %cond.true.1572
  %326 = load i64, i64* %nmaps, align 8
  %327 = load i64, i64* %nmaps, align 8
  %add1576 = add nsw i64 0, %327
  %mul1577 = mul nsw i64 0, %add1576
  %sub1578 = sub nsw i64 %mul1577, 1
  %cmp1579 = icmp slt i64 %sub1578, 0
  br i1 %cmp1579, label %cond.true.1581, label %cond.false.1589

cond.true.1581:                                   ; preds = %cond.true.1575
  %328 = load i64, i64* %nmaps, align 8
  %add1582 = add nsw i64 0, %328
  %mul1583 = mul nsw i64 0, %add1582
  %add1584 = add nsw i64 %mul1583, 1
  %shl1585 = shl i64 %add1584, 62
  %sub1586 = sub nsw i64 %shl1585, 1
  %mul1587 = mul nsw i64 %sub1586, 2
  %add1588 = add nsw i64 %mul1587, 1
  br label %cond.end.1593

cond.false.1589:                                  ; preds = %cond.true.1575
  %329 = load i64, i64* %nmaps, align 8
  %add1590 = add nsw i64 0, %329
  %mul1591 = mul nsw i64 0, %add1590
  %sub1592 = sub nsw i64 %mul1591, 1
  br label %cond.end.1593

cond.end.1593:                                    ; preds = %cond.false.1589, %cond.true.1581
  %cond1594 = phi i64 [ %add1588, %cond.true.1581 ], [ %sub1592, %cond.false.1589 ]
  %div1595 = sdiv i64 %cond1594, 8
  %cmp1596 = icmp slt i64 %326, %div1595
  br i1 %cmp1596, label %cond.true.1706, label %lor.lhs.false.1692

cond.false.1598:                                  ; preds = %cond.true.1572
  br i1 false, label %cond.true.1599, label %cond.false.1600

cond.true.1599:                                   ; preds = %cond.false.1598
  br i1 false, label %cond.true.1706, label %lor.lhs.false.1692

cond.false.1600:                                  ; preds = %cond.false.1598
  %330 = load i64, i64* %nmaps, align 8
  %add1601 = add nsw i64 0, %330
  %mul1602 = mul nsw i64 0, %add1601
  %sub1603 = sub nsw i64 %mul1602, 1
  %cmp1604 = icmp slt i64 %sub1603, 0
  br i1 %cmp1604, label %cond.true.1606, label %cond.false.1623

cond.true.1606:                                   ; preds = %cond.false.1600
  %331 = load i64, i64* %nmaps, align 8
  %add1607 = add nsw i64 0, %331
  %mul1608 = mul nsw i64 0, %add1607
  %add1609 = add nsw i64 %mul1608, 0
  %neg1610 = xor i64 %add1609, -1
  %cmp1611 = icmp eq i64 %neg1610, -1
  %conv1612 = zext i1 %cmp1611 to i32
  %sub1613 = sub nsw i32 0, %conv1612
  %conv1614 = sext i32 %sub1613 to i64
  %332 = load i64, i64* %nmaps, align 8
  %add1615 = add nsw i64 0, %332
  %mul1616 = mul nsw i64 0, %add1615
  %add1617 = add nsw i64 %mul1616, 1
  %shl1618 = shl i64 %add1617, 62
  %sub1619 = sub nsw i64 %shl1618, 1
  %mul1620 = mul nsw i64 %sub1619, 2
  %add1621 = add nsw i64 %mul1620, 1
  %sub1622 = sub nsw i64 %conv1614, %add1621
  br label %cond.end.1627

cond.false.1623:                                  ; preds = %cond.false.1600
  %333 = load i64, i64* %nmaps, align 8
  %add1624 = add nsw i64 0, %333
  %mul1625 = mul nsw i64 0, %add1624
  %add1626 = add nsw i64 %mul1625, 0
  br label %cond.end.1627

cond.end.1627:                                    ; preds = %cond.false.1623, %cond.true.1606
  %cond1628 = phi i64 [ %sub1622, %cond.true.1606 ], [ %add1626, %cond.false.1623 ]
  %div1629 = sdiv i64 %cond1628, 8
  %334 = load i64, i64* %nmaps, align 8
  %cmp1630 = icmp slt i64 %div1629, %334
  br i1 %cmp1630, label %cond.true.1706, label %lor.lhs.false.1692

cond.false.1632:                                  ; preds = %lor.lhs.false.1571
  br i1 false, label %cond.true.1633, label %cond.false.1634

cond.true.1633:                                   ; preds = %cond.false.1632
  br i1 false, label %cond.true.1706, label %lor.lhs.false.1692

cond.false.1634:                                  ; preds = %cond.false.1632
  %335 = load i64, i64* %nmaps, align 8
  %cmp1635 = icmp slt i64 %335, 0
  br i1 %cmp1635, label %cond.true.1637, label %cond.false.1669

cond.true.1637:                                   ; preds = %cond.false.1634
  %336 = load i64, i64* %nmaps, align 8
  %337 = load i64, i64* %nmaps, align 8
  %add1638 = add nsw i64 0, %337
  %mul1639 = mul nsw i64 0, %add1638
  %sub1640 = sub nsw i64 %mul1639, 1
  %cmp1641 = icmp slt i64 %sub1640, 0
  br i1 %cmp1641, label %cond.true.1643, label %cond.false.1660

cond.true.1643:                                   ; preds = %cond.true.1637
  %338 = load i64, i64* %nmaps, align 8
  %add1644 = add nsw i64 0, %338
  %mul1645 = mul nsw i64 0, %add1644
  %add1646 = add nsw i64 %mul1645, 0
  %neg1647 = xor i64 %add1646, -1
  %cmp1648 = icmp eq i64 %neg1647, -1
  %conv1649 = zext i1 %cmp1648 to i32
  %sub1650 = sub nsw i32 0, %conv1649
  %conv1651 = sext i32 %sub1650 to i64
  %339 = load i64, i64* %nmaps, align 8
  %add1652 = add nsw i64 0, %339
  %mul1653 = mul nsw i64 0, %add1652
  %add1654 = add nsw i64 %mul1653, 1
  %shl1655 = shl i64 %add1654, 62
  %sub1656 = sub nsw i64 %shl1655, 1
  %mul1657 = mul nsw i64 %sub1656, 2
  %add1658 = add nsw i64 %mul1657, 1
  %sub1659 = sub nsw i64 %conv1651, %add1658
  br label %cond.end.1664

cond.false.1660:                                  ; preds = %cond.true.1637
  %340 = load i64, i64* %nmaps, align 8
  %add1661 = add nsw i64 0, %340
  %mul1662 = mul nsw i64 0, %add1661
  %add1663 = add nsw i64 %mul1662, 0
  br label %cond.end.1664

cond.end.1664:                                    ; preds = %cond.false.1660, %cond.true.1643
  %cond1665 = phi i64 [ %sub1659, %cond.true.1643 ], [ %add1663, %cond.false.1660 ]
  %div1666 = sdiv i64 %cond1665, 8
  %cmp1667 = icmp slt i64 %336, %div1666
  br i1 %cmp1667, label %cond.true.1706, label %lor.lhs.false.1692

cond.false.1669:                                  ; preds = %cond.false.1634
  %341 = load i64, i64* %nmaps, align 8
  %add1670 = add nsw i64 0, %341
  %mul1671 = mul nsw i64 0, %add1670
  %sub1672 = sub nsw i64 %mul1671, 1
  %cmp1673 = icmp slt i64 %sub1672, 0
  br i1 %cmp1673, label %cond.true.1675, label %cond.false.1683

cond.true.1675:                                   ; preds = %cond.false.1669
  %342 = load i64, i64* %nmaps, align 8
  %add1676 = add nsw i64 0, %342
  %mul1677 = mul nsw i64 0, %add1676
  %add1678 = add nsw i64 %mul1677, 1
  %shl1679 = shl i64 %add1678, 62
  %sub1680 = sub nsw i64 %shl1679, 1
  %mul1681 = mul nsw i64 %sub1680, 2
  %add1682 = add nsw i64 %mul1681, 1
  br label %cond.end.1687

cond.false.1683:                                  ; preds = %cond.false.1669
  %343 = load i64, i64* %nmaps, align 8
  %add1684 = add nsw i64 0, %343
  %mul1685 = mul nsw i64 0, %add1684
  %sub1686 = sub nsw i64 %mul1685, 1
  br label %cond.end.1687

cond.end.1687:                                    ; preds = %cond.false.1683, %cond.true.1675
  %cond1688 = phi i64 [ %add1682, %cond.true.1675 ], [ %sub1686, %cond.false.1683 ]
  %div1689 = sdiv i64 %cond1688, 8
  %344 = load i64, i64* %nmaps, align 8
  %cmp1690 = icmp slt i64 %div1689, %344
  br i1 %cmp1690, label %cond.true.1706, label %lor.lhs.false.1692

lor.lhs.false.1692:                               ; preds = %cond.end.1687, %cond.end.1664, %cond.true.1633, %cond.end.1627, %cond.true.1599, %cond.end.1593
  %345 = load i64, i64* %nmaps, align 8
  %mul1693 = mul nsw i64 %345, 8
  %mul1694 = mul nsw i64 0, %mul1693
  %sub1695 = sub nsw i64 %mul1694, 1
  %cmp1696 = icmp slt i64 %sub1695, 0
  br i1 %cmp1696, label %land.lhs.true.1698, label %lor.lhs.false.1702

land.lhs.true.1698:                               ; preds = %lor.lhs.false.1692
  %346 = load i64, i64* %nmaps, align 8
  %mul1699 = mul nsw i64 %346, 8
  %cmp1700 = icmp slt i64 %mul1699, -2147483648
  br i1 %cmp1700, label %cond.true.1706, label %lor.lhs.false.1702

lor.lhs.false.1702:                               ; preds = %land.lhs.true.1698, %lor.lhs.false.1692
  %347 = load i64, i64* %nmaps, align 8
  %mul1703 = mul nsw i64 %347, 8
  %cmp1704 = icmp slt i64 2147483647, %mul1703
  br i1 %cmp1704, label %cond.true.1706, label %cond.false.1722

cond.true.1706:                                   ; preds = %lor.lhs.false.1702, %land.lhs.true.1698, %cond.end.1687, %cond.end.1664, %cond.true.1633, %cond.end.1627, %cond.true.1599, %cond.end.1593, %land.lhs.true.1568
  %348 = load i64, i64* %nmaps, align 8
  %conv1707 = trunc i64 %348 to i32
  %mul1708 = mul i32 %conv1707, 8
  %cmp1709 = icmp ule i32 %mul1708, 2147483647
  br i1 %cmp1709, label %cond.true.1711, label %cond.false.1714

cond.true.1711:                                   ; preds = %cond.true.1706
  %349 = load i64, i64* %nmaps, align 8
  %conv1712 = trunc i64 %349 to i32
  %mul1713 = mul i32 %conv1712, 8
  br label %cond.end.1719

cond.false.1714:                                  ; preds = %cond.true.1706
  %350 = load i64, i64* %nmaps, align 8
  %conv1715 = trunc i64 %350 to i32
  %mul1716 = mul i32 %conv1715, 8
  %sub1717 = sub i32 %mul1716, -2147483648
  %add1718 = add nsw i32 %sub1717, -2147483648
  br label %cond.end.1719

cond.end.1719:                                    ; preds = %cond.false.1714, %cond.true.1711
  %cond1720 = phi i32 [ %mul1713, %cond.true.1711 ], [ %add1718, %cond.false.1714 ]
  %conv1721 = sext i32 %cond1720 to i64
  store i64 %conv1721, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then.2516, label %lor.lhs.false.2513

cond.false.1722:                                  ; preds = %lor.lhs.false.1702
  %351 = load i64, i64* %nmaps, align 8
  %conv1723 = trunc i64 %351 to i32
  %mul1724 = mul i32 %conv1723, 8
  %cmp1725 = icmp ule i32 %mul1724, 2147483647
  br i1 %cmp1725, label %cond.true.1727, label %cond.false.1730

cond.true.1727:                                   ; preds = %cond.false.1722
  %352 = load i64, i64* %nmaps, align 8
  %conv1728 = trunc i64 %352 to i32
  %mul1729 = mul i32 %conv1728, 8
  br label %cond.end.1735

cond.false.1730:                                  ; preds = %cond.false.1722
  %353 = load i64, i64* %nmaps, align 8
  %conv1731 = trunc i64 %353 to i32
  %mul1732 = mul i32 %conv1731, 8
  %sub1733 = sub i32 %mul1732, -2147483648
  %add1734 = add nsw i32 %sub1733, -2147483648
  br label %cond.end.1735

cond.end.1735:                                    ; preds = %cond.false.1730, %cond.true.1727
  %cond1736 = phi i32 [ %mul1729, %cond.true.1727 ], [ %add1734, %cond.false.1730 ]
  %conv1737 = sext i32 %cond1736 to i64
  store i64 %conv1737, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then.2516, label %lor.lhs.false.2513

cond.false.1738:                                  ; preds = %cond.false.1309
  br i1 true, label %cond.true.1739, label %cond.false.2126

cond.true.1739:                                   ; preds = %cond.false.1738
  br i1 false, label %cond.true.1740, label %cond.false.1933

cond.true.1740:                                   ; preds = %cond.true.1739
  %354 = load i64, i64* %nmaps, align 8
  %add1741 = add nsw i64 0, %354
  %mul1742 = mul nsw i64 0, %add1741
  %sub1743 = sub nsw i64 %mul1742, 1
  %cmp1744 = icmp slt i64 %sub1743, 0
  br i1 %cmp1744, label %cond.true.1746, label %cond.false.1763

cond.true.1746:                                   ; preds = %cond.true.1740
  %355 = load i64, i64* %nmaps, align 8
  %add1747 = add nsw i64 0, %355
  %mul1748 = mul nsw i64 0, %add1747
  %add1749 = add nsw i64 %mul1748, 0
  %neg1750 = xor i64 %add1749, -1
  %cmp1751 = icmp eq i64 %neg1750, -1
  %conv1752 = zext i1 %cmp1751 to i32
  %sub1753 = sub nsw i32 0, %conv1752
  %conv1754 = sext i32 %sub1753 to i64
  %356 = load i64, i64* %nmaps, align 8
  %add1755 = add nsw i64 0, %356
  %mul1756 = mul nsw i64 0, %add1755
  %add1757 = add nsw i64 %mul1756, 1
  %shl1758 = shl i64 %add1757, 62
  %sub1759 = sub nsw i64 %shl1758, 1
  %mul1760 = mul nsw i64 %sub1759, 2
  %add1761 = add nsw i64 %mul1760, 1
  %sub1762 = sub nsw i64 %conv1754, %add1761
  br label %cond.end.1767

cond.false.1763:                                  ; preds = %cond.true.1740
  %357 = load i64, i64* %nmaps, align 8
  %add1764 = add nsw i64 0, %357
  %mul1765 = mul nsw i64 0, %add1764
  %add1766 = add nsw i64 %mul1765, 0
  br label %cond.end.1767

cond.end.1767:                                    ; preds = %cond.false.1763, %cond.true.1746
  %cond1768 = phi i64 [ %sub1762, %cond.true.1746 ], [ %add1766, %cond.false.1763 ]
  %cmp1769 = icmp eq i64 %cond1768, 0
  br i1 %cmp1769, label %land.lhs.true.1771, label %lor.lhs.false.1774

land.lhs.true.1771:                               ; preds = %cond.end.1767
  %358 = load i64, i64* %nmaps, align 8
  %cmp1772 = icmp slt i64 %358, 0
  br i1 %cmp1772, label %cond.true.1909, label %lor.lhs.false.1774

lor.lhs.false.1774:                               ; preds = %land.lhs.true.1771, %cond.end.1767
  br i1 false, label %cond.true.1775, label %cond.false.1835

cond.true.1775:                                   ; preds = %lor.lhs.false.1774
  %359 = load i64, i64* %nmaps, align 8
  %cmp1776 = icmp slt i64 %359, 0
  br i1 %cmp1776, label %cond.true.1778, label %cond.false.1801

cond.true.1778:                                   ; preds = %cond.true.1775
  %360 = load i64, i64* %nmaps, align 8
  %361 = load i64, i64* %nmaps, align 8
  %add1779 = add nsw i64 0, %361
  %mul1780 = mul nsw i64 0, %add1779
  %sub1781 = sub nsw i64 %mul1780, 1
  %cmp1782 = icmp slt i64 %sub1781, 0
  br i1 %cmp1782, label %cond.true.1784, label %cond.false.1792

cond.true.1784:                                   ; preds = %cond.true.1778
  %362 = load i64, i64* %nmaps, align 8
  %add1785 = add nsw i64 0, %362
  %mul1786 = mul nsw i64 0, %add1785
  %add1787 = add nsw i64 %mul1786, 1
  %shl1788 = shl i64 %add1787, 62
  %sub1789 = sub nsw i64 %shl1788, 1
  %mul1790 = mul nsw i64 %sub1789, 2
  %add1791 = add nsw i64 %mul1790, 1
  br label %cond.end.1796

cond.false.1792:                                  ; preds = %cond.true.1778
  %363 = load i64, i64* %nmaps, align 8
  %add1793 = add nsw i64 0, %363
  %mul1794 = mul nsw i64 0, %add1793
  %sub1795 = sub nsw i64 %mul1794, 1
  br label %cond.end.1796

cond.end.1796:                                    ; preds = %cond.false.1792, %cond.true.1784
  %cond1797 = phi i64 [ %add1791, %cond.true.1784 ], [ %sub1795, %cond.false.1792 ]
  %div1798 = sdiv i64 %cond1797, 8
  %cmp1799 = icmp slt i64 %360, %div1798
  br i1 %cmp1799, label %cond.true.1909, label %lor.lhs.false.1895

cond.false.1801:                                  ; preds = %cond.true.1775
  br i1 false, label %cond.true.1802, label %cond.false.1803

cond.true.1802:                                   ; preds = %cond.false.1801
  br i1 false, label %cond.true.1909, label %lor.lhs.false.1895

cond.false.1803:                                  ; preds = %cond.false.1801
  %364 = load i64, i64* %nmaps, align 8
  %add1804 = add nsw i64 0, %364
  %mul1805 = mul nsw i64 0, %add1804
  %sub1806 = sub nsw i64 %mul1805, 1
  %cmp1807 = icmp slt i64 %sub1806, 0
  br i1 %cmp1807, label %cond.true.1809, label %cond.false.1826

cond.true.1809:                                   ; preds = %cond.false.1803
  %365 = load i64, i64* %nmaps, align 8
  %add1810 = add nsw i64 0, %365
  %mul1811 = mul nsw i64 0, %add1810
  %add1812 = add nsw i64 %mul1811, 0
  %neg1813 = xor i64 %add1812, -1
  %cmp1814 = icmp eq i64 %neg1813, -1
  %conv1815 = zext i1 %cmp1814 to i32
  %sub1816 = sub nsw i32 0, %conv1815
  %conv1817 = sext i32 %sub1816 to i64
  %366 = load i64, i64* %nmaps, align 8
  %add1818 = add nsw i64 0, %366
  %mul1819 = mul nsw i64 0, %add1818
  %add1820 = add nsw i64 %mul1819, 1
  %shl1821 = shl i64 %add1820, 62
  %sub1822 = sub nsw i64 %shl1821, 1
  %mul1823 = mul nsw i64 %sub1822, 2
  %add1824 = add nsw i64 %mul1823, 1
  %sub1825 = sub nsw i64 %conv1817, %add1824
  br label %cond.end.1830

cond.false.1826:                                  ; preds = %cond.false.1803
  %367 = load i64, i64* %nmaps, align 8
  %add1827 = add nsw i64 0, %367
  %mul1828 = mul nsw i64 0, %add1827
  %add1829 = add nsw i64 %mul1828, 0
  br label %cond.end.1830

cond.end.1830:                                    ; preds = %cond.false.1826, %cond.true.1809
  %cond1831 = phi i64 [ %sub1825, %cond.true.1809 ], [ %add1829, %cond.false.1826 ]
  %div1832 = sdiv i64 %cond1831, 8
  %368 = load i64, i64* %nmaps, align 8
  %cmp1833 = icmp slt i64 %div1832, %368
  br i1 %cmp1833, label %cond.true.1909, label %lor.lhs.false.1895

cond.false.1835:                                  ; preds = %lor.lhs.false.1774
  br i1 false, label %cond.true.1836, label %cond.false.1837

cond.true.1836:                                   ; preds = %cond.false.1835
  br i1 false, label %cond.true.1909, label %lor.lhs.false.1895

cond.false.1837:                                  ; preds = %cond.false.1835
  %369 = load i64, i64* %nmaps, align 8
  %cmp1838 = icmp slt i64 %369, 0
  br i1 %cmp1838, label %cond.true.1840, label %cond.false.1872

cond.true.1840:                                   ; preds = %cond.false.1837
  %370 = load i64, i64* %nmaps, align 8
  %371 = load i64, i64* %nmaps, align 8
  %add1841 = add nsw i64 0, %371
  %mul1842 = mul nsw i64 0, %add1841
  %sub1843 = sub nsw i64 %mul1842, 1
  %cmp1844 = icmp slt i64 %sub1843, 0
  br i1 %cmp1844, label %cond.true.1846, label %cond.false.1863

cond.true.1846:                                   ; preds = %cond.true.1840
  %372 = load i64, i64* %nmaps, align 8
  %add1847 = add nsw i64 0, %372
  %mul1848 = mul nsw i64 0, %add1847
  %add1849 = add nsw i64 %mul1848, 0
  %neg1850 = xor i64 %add1849, -1
  %cmp1851 = icmp eq i64 %neg1850, -1
  %conv1852 = zext i1 %cmp1851 to i32
  %sub1853 = sub nsw i32 0, %conv1852
  %conv1854 = sext i32 %sub1853 to i64
  %373 = load i64, i64* %nmaps, align 8
  %add1855 = add nsw i64 0, %373
  %mul1856 = mul nsw i64 0, %add1855
  %add1857 = add nsw i64 %mul1856, 1
  %shl1858 = shl i64 %add1857, 62
  %sub1859 = sub nsw i64 %shl1858, 1
  %mul1860 = mul nsw i64 %sub1859, 2
  %add1861 = add nsw i64 %mul1860, 1
  %sub1862 = sub nsw i64 %conv1854, %add1861
  br label %cond.end.1867

cond.false.1863:                                  ; preds = %cond.true.1840
  %374 = load i64, i64* %nmaps, align 8
  %add1864 = add nsw i64 0, %374
  %mul1865 = mul nsw i64 0, %add1864
  %add1866 = add nsw i64 %mul1865, 0
  br label %cond.end.1867

cond.end.1867:                                    ; preds = %cond.false.1863, %cond.true.1846
  %cond1868 = phi i64 [ %sub1862, %cond.true.1846 ], [ %add1866, %cond.false.1863 ]
  %div1869 = sdiv i64 %cond1868, 8
  %cmp1870 = icmp slt i64 %370, %div1869
  br i1 %cmp1870, label %cond.true.1909, label %lor.lhs.false.1895

cond.false.1872:                                  ; preds = %cond.false.1837
  %375 = load i64, i64* %nmaps, align 8
  %add1873 = add nsw i64 0, %375
  %mul1874 = mul nsw i64 0, %add1873
  %sub1875 = sub nsw i64 %mul1874, 1
  %cmp1876 = icmp slt i64 %sub1875, 0
  br i1 %cmp1876, label %cond.true.1878, label %cond.false.1886

cond.true.1878:                                   ; preds = %cond.false.1872
  %376 = load i64, i64* %nmaps, align 8
  %add1879 = add nsw i64 0, %376
  %mul1880 = mul nsw i64 0, %add1879
  %add1881 = add nsw i64 %mul1880, 1
  %shl1882 = shl i64 %add1881, 62
  %sub1883 = sub nsw i64 %shl1882, 1
  %mul1884 = mul nsw i64 %sub1883, 2
  %add1885 = add nsw i64 %mul1884, 1
  br label %cond.end.1890

cond.false.1886:                                  ; preds = %cond.false.1872
  %377 = load i64, i64* %nmaps, align 8
  %add1887 = add nsw i64 0, %377
  %mul1888 = mul nsw i64 0, %add1887
  %sub1889 = sub nsw i64 %mul1888, 1
  br label %cond.end.1890

cond.end.1890:                                    ; preds = %cond.false.1886, %cond.true.1878
  %cond1891 = phi i64 [ %add1885, %cond.true.1878 ], [ %sub1889, %cond.false.1886 ]
  %div1892 = sdiv i64 %cond1891, 8
  %378 = load i64, i64* %nmaps, align 8
  %cmp1893 = icmp slt i64 %div1892, %378
  br i1 %cmp1893, label %cond.true.1909, label %lor.lhs.false.1895

lor.lhs.false.1895:                               ; preds = %cond.end.1890, %cond.end.1867, %cond.true.1836, %cond.end.1830, %cond.true.1802, %cond.end.1796
  %379 = load i64, i64* %nmaps, align 8
  %mul1896 = mul nsw i64 %379, 8
  %mul1897 = mul nsw i64 0, %mul1896
  %sub1898 = sub nsw i64 %mul1897, 1
  %cmp1899 = icmp slt i64 %sub1898, 0
  br i1 %cmp1899, label %land.lhs.true.1901, label %lor.lhs.false.1905

land.lhs.true.1901:                               ; preds = %lor.lhs.false.1895
  %380 = load i64, i64* %nmaps, align 8
  %mul1902 = mul nsw i64 %380, 8
  %cmp1903 = icmp slt i64 %mul1902, -9223372036854775808
  br i1 %cmp1903, label %cond.true.1909, label %lor.lhs.false.1905

lor.lhs.false.1905:                               ; preds = %land.lhs.true.1901, %lor.lhs.false.1895
  %381 = load i64, i64* %nmaps, align 8
  %mul1906 = mul nsw i64 %381, 8
  %cmp1907 = icmp slt i64 9223372036854775807, %mul1906
  br i1 %cmp1907, label %cond.true.1909, label %cond.false.1921

cond.true.1909:                                   ; preds = %lor.lhs.false.1905, %land.lhs.true.1901, %cond.end.1890, %cond.end.1867, %cond.true.1836, %cond.end.1830, %cond.true.1802, %cond.end.1796, %land.lhs.true.1771
  %382 = load i64, i64* %nmaps, align 8
  %mul1910 = mul i64 %382, 8
  %cmp1911 = icmp ule i64 %mul1910, 9223372036854775807
  br i1 %cmp1911, label %cond.true.1913, label %cond.false.1915

cond.true.1913:                                   ; preds = %cond.true.1909
  %383 = load i64, i64* %nmaps, align 8
  %mul1914 = mul i64 %383, 8
  br label %cond.end.1919

cond.false.1915:                                  ; preds = %cond.true.1909
  %384 = load i64, i64* %nmaps, align 8
  %mul1916 = mul i64 %384, 8
  %sub1917 = sub i64 %mul1916, -9223372036854775808
  %add1918 = add nsw i64 %sub1917, -9223372036854775808
  br label %cond.end.1919

cond.end.1919:                                    ; preds = %cond.false.1915, %cond.true.1913
  %cond1920 = phi i64 [ %mul1914, %cond.true.1913 ], [ %add1918, %cond.false.1915 ]
  store i64 %cond1920, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then.2516, label %lor.lhs.false.2513

cond.false.1921:                                  ; preds = %lor.lhs.false.1905
  %385 = load i64, i64* %nmaps, align 8
  %mul1922 = mul i64 %385, 8
  %cmp1923 = icmp ule i64 %mul1922, 9223372036854775807
  br i1 %cmp1923, label %cond.true.1925, label %cond.false.1927

cond.true.1925:                                   ; preds = %cond.false.1921
  %386 = load i64, i64* %nmaps, align 8
  %mul1926 = mul i64 %386, 8
  br label %cond.end.1931

cond.false.1927:                                  ; preds = %cond.false.1921
  %387 = load i64, i64* %nmaps, align 8
  %mul1928 = mul i64 %387, 8
  %sub1929 = sub i64 %mul1928, -9223372036854775808
  %add1930 = add nsw i64 %sub1929, -9223372036854775808
  br label %cond.end.1931

cond.end.1931:                                    ; preds = %cond.false.1927, %cond.true.1925
  %cond1932 = phi i64 [ %mul1926, %cond.true.1925 ], [ %add1930, %cond.false.1927 ]
  store i64 %cond1932, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then.2516, label %lor.lhs.false.2513

cond.false.1933:                                  ; preds = %cond.true.1739
  %388 = load i64, i64* %nmaps, align 8
  %add1934 = add nsw i64 0, %388
  %mul1935 = mul nsw i64 0, %add1934
  %sub1936 = sub nsw i64 %mul1935, 1
  %cmp1937 = icmp slt i64 %sub1936, 0
  br i1 %cmp1937, label %cond.true.1939, label %cond.false.1956

cond.true.1939:                                   ; preds = %cond.false.1933
  %389 = load i64, i64* %nmaps, align 8
  %add1940 = add nsw i64 0, %389
  %mul1941 = mul nsw i64 0, %add1940
  %add1942 = add nsw i64 %mul1941, 0
  %neg1943 = xor i64 %add1942, -1
  %cmp1944 = icmp eq i64 %neg1943, -1
  %conv1945 = zext i1 %cmp1944 to i32
  %sub1946 = sub nsw i32 0, %conv1945
  %conv1947 = sext i32 %sub1946 to i64
  %390 = load i64, i64* %nmaps, align 8
  %add1948 = add nsw i64 0, %390
  %mul1949 = mul nsw i64 0, %add1948
  %add1950 = add nsw i64 %mul1949, 1
  %shl1951 = shl i64 %add1950, 62
  %sub1952 = sub nsw i64 %shl1951, 1
  %mul1953 = mul nsw i64 %sub1952, 2
  %add1954 = add nsw i64 %mul1953, 1
  %sub1955 = sub nsw i64 %conv1947, %add1954
  br label %cond.end.1960

cond.false.1956:                                  ; preds = %cond.false.1933
  %391 = load i64, i64* %nmaps, align 8
  %add1957 = add nsw i64 0, %391
  %mul1958 = mul nsw i64 0, %add1957
  %add1959 = add nsw i64 %mul1958, 0
  br label %cond.end.1960

cond.end.1960:                                    ; preds = %cond.false.1956, %cond.true.1939
  %cond1961 = phi i64 [ %sub1955, %cond.true.1939 ], [ %add1959, %cond.false.1956 ]
  %cmp1962 = icmp eq i64 %cond1961, 0
  br i1 %cmp1962, label %land.lhs.true.1964, label %lor.lhs.false.1967

land.lhs.true.1964:                               ; preds = %cond.end.1960
  %392 = load i64, i64* %nmaps, align 8
  %cmp1965 = icmp slt i64 %392, 0
  br i1 %cmp1965, label %cond.true.2102, label %lor.lhs.false.1967

lor.lhs.false.1967:                               ; preds = %land.lhs.true.1964, %cond.end.1960
  br i1 false, label %cond.true.1968, label %cond.false.2028

cond.true.1968:                                   ; preds = %lor.lhs.false.1967
  %393 = load i64, i64* %nmaps, align 8
  %cmp1969 = icmp slt i64 %393, 0
  br i1 %cmp1969, label %cond.true.1971, label %cond.false.1994

cond.true.1971:                                   ; preds = %cond.true.1968
  %394 = load i64, i64* %nmaps, align 8
  %395 = load i64, i64* %nmaps, align 8
  %add1972 = add nsw i64 0, %395
  %mul1973 = mul nsw i64 0, %add1972
  %sub1974 = sub nsw i64 %mul1973, 1
  %cmp1975 = icmp slt i64 %sub1974, 0
  br i1 %cmp1975, label %cond.true.1977, label %cond.false.1985

cond.true.1977:                                   ; preds = %cond.true.1971
  %396 = load i64, i64* %nmaps, align 8
  %add1978 = add nsw i64 0, %396
  %mul1979 = mul nsw i64 0, %add1978
  %add1980 = add nsw i64 %mul1979, 1
  %shl1981 = shl i64 %add1980, 62
  %sub1982 = sub nsw i64 %shl1981, 1
  %mul1983 = mul nsw i64 %sub1982, 2
  %add1984 = add nsw i64 %mul1983, 1
  br label %cond.end.1989

cond.false.1985:                                  ; preds = %cond.true.1971
  %397 = load i64, i64* %nmaps, align 8
  %add1986 = add nsw i64 0, %397
  %mul1987 = mul nsw i64 0, %add1986
  %sub1988 = sub nsw i64 %mul1987, 1
  br label %cond.end.1989

cond.end.1989:                                    ; preds = %cond.false.1985, %cond.true.1977
  %cond1990 = phi i64 [ %add1984, %cond.true.1977 ], [ %sub1988, %cond.false.1985 ]
  %div1991 = sdiv i64 %cond1990, 8
  %cmp1992 = icmp slt i64 %394, %div1991
  br i1 %cmp1992, label %cond.true.2102, label %lor.lhs.false.2088

cond.false.1994:                                  ; preds = %cond.true.1968
  br i1 false, label %cond.true.1995, label %cond.false.1996

cond.true.1995:                                   ; preds = %cond.false.1994
  br i1 false, label %cond.true.2102, label %lor.lhs.false.2088

cond.false.1996:                                  ; preds = %cond.false.1994
  %398 = load i64, i64* %nmaps, align 8
  %add1997 = add nsw i64 0, %398
  %mul1998 = mul nsw i64 0, %add1997
  %sub1999 = sub nsw i64 %mul1998, 1
  %cmp2000 = icmp slt i64 %sub1999, 0
  br i1 %cmp2000, label %cond.true.2002, label %cond.false.2019

cond.true.2002:                                   ; preds = %cond.false.1996
  %399 = load i64, i64* %nmaps, align 8
  %add2003 = add nsw i64 0, %399
  %mul2004 = mul nsw i64 0, %add2003
  %add2005 = add nsw i64 %mul2004, 0
  %neg2006 = xor i64 %add2005, -1
  %cmp2007 = icmp eq i64 %neg2006, -1
  %conv2008 = zext i1 %cmp2007 to i32
  %sub2009 = sub nsw i32 0, %conv2008
  %conv2010 = sext i32 %sub2009 to i64
  %400 = load i64, i64* %nmaps, align 8
  %add2011 = add nsw i64 0, %400
  %mul2012 = mul nsw i64 0, %add2011
  %add2013 = add nsw i64 %mul2012, 1
  %shl2014 = shl i64 %add2013, 62
  %sub2015 = sub nsw i64 %shl2014, 1
  %mul2016 = mul nsw i64 %sub2015, 2
  %add2017 = add nsw i64 %mul2016, 1
  %sub2018 = sub nsw i64 %conv2010, %add2017
  br label %cond.end.2023

cond.false.2019:                                  ; preds = %cond.false.1996
  %401 = load i64, i64* %nmaps, align 8
  %add2020 = add nsw i64 0, %401
  %mul2021 = mul nsw i64 0, %add2020
  %add2022 = add nsw i64 %mul2021, 0
  br label %cond.end.2023

cond.end.2023:                                    ; preds = %cond.false.2019, %cond.true.2002
  %cond2024 = phi i64 [ %sub2018, %cond.true.2002 ], [ %add2022, %cond.false.2019 ]
  %div2025 = sdiv i64 %cond2024, 8
  %402 = load i64, i64* %nmaps, align 8
  %cmp2026 = icmp slt i64 %div2025, %402
  br i1 %cmp2026, label %cond.true.2102, label %lor.lhs.false.2088

cond.false.2028:                                  ; preds = %lor.lhs.false.1967
  br i1 false, label %cond.true.2029, label %cond.false.2030

cond.true.2029:                                   ; preds = %cond.false.2028
  br i1 false, label %cond.true.2102, label %lor.lhs.false.2088

cond.false.2030:                                  ; preds = %cond.false.2028
  %403 = load i64, i64* %nmaps, align 8
  %cmp2031 = icmp slt i64 %403, 0
  br i1 %cmp2031, label %cond.true.2033, label %cond.false.2065

cond.true.2033:                                   ; preds = %cond.false.2030
  %404 = load i64, i64* %nmaps, align 8
  %405 = load i64, i64* %nmaps, align 8
  %add2034 = add nsw i64 0, %405
  %mul2035 = mul nsw i64 0, %add2034
  %sub2036 = sub nsw i64 %mul2035, 1
  %cmp2037 = icmp slt i64 %sub2036, 0
  br i1 %cmp2037, label %cond.true.2039, label %cond.false.2056

cond.true.2039:                                   ; preds = %cond.true.2033
  %406 = load i64, i64* %nmaps, align 8
  %add2040 = add nsw i64 0, %406
  %mul2041 = mul nsw i64 0, %add2040
  %add2042 = add nsw i64 %mul2041, 0
  %neg2043 = xor i64 %add2042, -1
  %cmp2044 = icmp eq i64 %neg2043, -1
  %conv2045 = zext i1 %cmp2044 to i32
  %sub2046 = sub nsw i32 0, %conv2045
  %conv2047 = sext i32 %sub2046 to i64
  %407 = load i64, i64* %nmaps, align 8
  %add2048 = add nsw i64 0, %407
  %mul2049 = mul nsw i64 0, %add2048
  %add2050 = add nsw i64 %mul2049, 1
  %shl2051 = shl i64 %add2050, 62
  %sub2052 = sub nsw i64 %shl2051, 1
  %mul2053 = mul nsw i64 %sub2052, 2
  %add2054 = add nsw i64 %mul2053, 1
  %sub2055 = sub nsw i64 %conv2047, %add2054
  br label %cond.end.2060

cond.false.2056:                                  ; preds = %cond.true.2033
  %408 = load i64, i64* %nmaps, align 8
  %add2057 = add nsw i64 0, %408
  %mul2058 = mul nsw i64 0, %add2057
  %add2059 = add nsw i64 %mul2058, 0
  br label %cond.end.2060

cond.end.2060:                                    ; preds = %cond.false.2056, %cond.true.2039
  %cond2061 = phi i64 [ %sub2055, %cond.true.2039 ], [ %add2059, %cond.false.2056 ]
  %div2062 = sdiv i64 %cond2061, 8
  %cmp2063 = icmp slt i64 %404, %div2062
  br i1 %cmp2063, label %cond.true.2102, label %lor.lhs.false.2088

cond.false.2065:                                  ; preds = %cond.false.2030
  %409 = load i64, i64* %nmaps, align 8
  %add2066 = add nsw i64 0, %409
  %mul2067 = mul nsw i64 0, %add2066
  %sub2068 = sub nsw i64 %mul2067, 1
  %cmp2069 = icmp slt i64 %sub2068, 0
  br i1 %cmp2069, label %cond.true.2071, label %cond.false.2079

cond.true.2071:                                   ; preds = %cond.false.2065
  %410 = load i64, i64* %nmaps, align 8
  %add2072 = add nsw i64 0, %410
  %mul2073 = mul nsw i64 0, %add2072
  %add2074 = add nsw i64 %mul2073, 1
  %shl2075 = shl i64 %add2074, 62
  %sub2076 = sub nsw i64 %shl2075, 1
  %mul2077 = mul nsw i64 %sub2076, 2
  %add2078 = add nsw i64 %mul2077, 1
  br label %cond.end.2083

cond.false.2079:                                  ; preds = %cond.false.2065
  %411 = load i64, i64* %nmaps, align 8
  %add2080 = add nsw i64 0, %411
  %mul2081 = mul nsw i64 0, %add2080
  %sub2082 = sub nsw i64 %mul2081, 1
  br label %cond.end.2083

cond.end.2083:                                    ; preds = %cond.false.2079, %cond.true.2071
  %cond2084 = phi i64 [ %add2078, %cond.true.2071 ], [ %sub2082, %cond.false.2079 ]
  %div2085 = sdiv i64 %cond2084, 8
  %412 = load i64, i64* %nmaps, align 8
  %cmp2086 = icmp slt i64 %div2085, %412
  br i1 %cmp2086, label %cond.true.2102, label %lor.lhs.false.2088

lor.lhs.false.2088:                               ; preds = %cond.end.2083, %cond.end.2060, %cond.true.2029, %cond.end.2023, %cond.true.1995, %cond.end.1989
  %413 = load i64, i64* %nmaps, align 8
  %mul2089 = mul nsw i64 %413, 8
  %mul2090 = mul nsw i64 0, %mul2089
  %sub2091 = sub nsw i64 %mul2090, 1
  %cmp2092 = icmp slt i64 %sub2091, 0
  br i1 %cmp2092, label %land.lhs.true.2094, label %lor.lhs.false.2098

land.lhs.true.2094:                               ; preds = %lor.lhs.false.2088
  %414 = load i64, i64* %nmaps, align 8
  %mul2095 = mul nsw i64 %414, 8
  %cmp2096 = icmp slt i64 %mul2095, -9223372036854775808
  br i1 %cmp2096, label %cond.true.2102, label %lor.lhs.false.2098

lor.lhs.false.2098:                               ; preds = %land.lhs.true.2094, %lor.lhs.false.2088
  %415 = load i64, i64* %nmaps, align 8
  %mul2099 = mul nsw i64 %415, 8
  %cmp2100 = icmp slt i64 9223372036854775807, %mul2099
  br i1 %cmp2100, label %cond.true.2102, label %cond.false.2114

cond.true.2102:                                   ; preds = %lor.lhs.false.2098, %land.lhs.true.2094, %cond.end.2083, %cond.end.2060, %cond.true.2029, %cond.end.2023, %cond.true.1995, %cond.end.1989, %land.lhs.true.1964
  %416 = load i64, i64* %nmaps, align 8
  %mul2103 = mul i64 %416, 8
  %cmp2104 = icmp ule i64 %mul2103, 9223372036854775807
  br i1 %cmp2104, label %cond.true.2106, label %cond.false.2108

cond.true.2106:                                   ; preds = %cond.true.2102
  %417 = load i64, i64* %nmaps, align 8
  %mul2107 = mul i64 %417, 8
  br label %cond.end.2112

cond.false.2108:                                  ; preds = %cond.true.2102
  %418 = load i64, i64* %nmaps, align 8
  %mul2109 = mul i64 %418, 8
  %sub2110 = sub i64 %mul2109, -9223372036854775808
  %add2111 = add nsw i64 %sub2110, -9223372036854775808
  br label %cond.end.2112

cond.end.2112:                                    ; preds = %cond.false.2108, %cond.true.2106
  %cond2113 = phi i64 [ %mul2107, %cond.true.2106 ], [ %add2111, %cond.false.2108 ]
  store i64 %cond2113, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then.2516, label %lor.lhs.false.2513

cond.false.2114:                                  ; preds = %lor.lhs.false.2098
  %419 = load i64, i64* %nmaps, align 8
  %mul2115 = mul i64 %419, 8
  %cmp2116 = icmp ule i64 %mul2115, 9223372036854775807
  br i1 %cmp2116, label %cond.true.2118, label %cond.false.2120

cond.true.2118:                                   ; preds = %cond.false.2114
  %420 = load i64, i64* %nmaps, align 8
  %mul2119 = mul i64 %420, 8
  br label %cond.end.2124

cond.false.2120:                                  ; preds = %cond.false.2114
  %421 = load i64, i64* %nmaps, align 8
  %mul2121 = mul i64 %421, 8
  %sub2122 = sub i64 %mul2121, -9223372036854775808
  %add2123 = add nsw i64 %sub2122, -9223372036854775808
  br label %cond.end.2124

cond.end.2124:                                    ; preds = %cond.false.2120, %cond.true.2118
  %cond2125 = phi i64 [ %mul2119, %cond.true.2118 ], [ %add2123, %cond.false.2120 ]
  store i64 %cond2125, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then.2516, label %lor.lhs.false.2513

cond.false.2126:                                  ; preds = %cond.false.1738
  br i1 false, label %cond.true.2127, label %cond.false.2320

cond.true.2127:                                   ; preds = %cond.false.2126
  %422 = load i64, i64* %nmaps, align 8
  %add2128 = add nsw i64 0, %422
  %mul2129 = mul nsw i64 0, %add2128
  %sub2130 = sub nsw i64 %mul2129, 1
  %cmp2131 = icmp slt i64 %sub2130, 0
  br i1 %cmp2131, label %cond.true.2133, label %cond.false.2150

cond.true.2133:                                   ; preds = %cond.true.2127
  %423 = load i64, i64* %nmaps, align 8
  %add2134 = add nsw i64 0, %423
  %mul2135 = mul nsw i64 0, %add2134
  %add2136 = add nsw i64 %mul2135, 0
  %neg2137 = xor i64 %add2136, -1
  %cmp2138 = icmp eq i64 %neg2137, -1
  %conv2139 = zext i1 %cmp2138 to i32
  %sub2140 = sub nsw i32 0, %conv2139
  %conv2141 = sext i32 %sub2140 to i64
  %424 = load i64, i64* %nmaps, align 8
  %add2142 = add nsw i64 0, %424
  %mul2143 = mul nsw i64 0, %add2142
  %add2144 = add nsw i64 %mul2143, 1
  %shl2145 = shl i64 %add2144, 62
  %sub2146 = sub nsw i64 %shl2145, 1
  %mul2147 = mul nsw i64 %sub2146, 2
  %add2148 = add nsw i64 %mul2147, 1
  %sub2149 = sub nsw i64 %conv2141, %add2148
  br label %cond.end.2154

cond.false.2150:                                  ; preds = %cond.true.2127
  %425 = load i64, i64* %nmaps, align 8
  %add2151 = add nsw i64 0, %425
  %mul2152 = mul nsw i64 0, %add2151
  %add2153 = add nsw i64 %mul2152, 0
  br label %cond.end.2154

cond.end.2154:                                    ; preds = %cond.false.2150, %cond.true.2133
  %cond2155 = phi i64 [ %sub2149, %cond.true.2133 ], [ %add2153, %cond.false.2150 ]
  %cmp2156 = icmp eq i64 %cond2155, 0
  br i1 %cmp2156, label %land.lhs.true.2158, label %lor.lhs.false.2161

land.lhs.true.2158:                               ; preds = %cond.end.2154
  %426 = load i64, i64* %nmaps, align 8
  %cmp2159 = icmp slt i64 %426, 0
  br i1 %cmp2159, label %cond.true.2296, label %lor.lhs.false.2161

lor.lhs.false.2161:                               ; preds = %land.lhs.true.2158, %cond.end.2154
  br i1 false, label %cond.true.2162, label %cond.false.2222

cond.true.2162:                                   ; preds = %lor.lhs.false.2161
  %427 = load i64, i64* %nmaps, align 8
  %cmp2163 = icmp slt i64 %427, 0
  br i1 %cmp2163, label %cond.true.2165, label %cond.false.2188

cond.true.2165:                                   ; preds = %cond.true.2162
  %428 = load i64, i64* %nmaps, align 8
  %429 = load i64, i64* %nmaps, align 8
  %add2166 = add nsw i64 0, %429
  %mul2167 = mul nsw i64 0, %add2166
  %sub2168 = sub nsw i64 %mul2167, 1
  %cmp2169 = icmp slt i64 %sub2168, 0
  br i1 %cmp2169, label %cond.true.2171, label %cond.false.2179

cond.true.2171:                                   ; preds = %cond.true.2165
  %430 = load i64, i64* %nmaps, align 8
  %add2172 = add nsw i64 0, %430
  %mul2173 = mul nsw i64 0, %add2172
  %add2174 = add nsw i64 %mul2173, 1
  %shl2175 = shl i64 %add2174, 62
  %sub2176 = sub nsw i64 %shl2175, 1
  %mul2177 = mul nsw i64 %sub2176, 2
  %add2178 = add nsw i64 %mul2177, 1
  br label %cond.end.2183

cond.false.2179:                                  ; preds = %cond.true.2165
  %431 = load i64, i64* %nmaps, align 8
  %add2180 = add nsw i64 0, %431
  %mul2181 = mul nsw i64 0, %add2180
  %sub2182 = sub nsw i64 %mul2181, 1
  br label %cond.end.2183

cond.end.2183:                                    ; preds = %cond.false.2179, %cond.true.2171
  %cond2184 = phi i64 [ %add2178, %cond.true.2171 ], [ %sub2182, %cond.false.2179 ]
  %div2185 = sdiv i64 %cond2184, 8
  %cmp2186 = icmp slt i64 %428, %div2185
  br i1 %cmp2186, label %cond.true.2296, label %lor.lhs.false.2282

cond.false.2188:                                  ; preds = %cond.true.2162
  br i1 false, label %cond.true.2189, label %cond.false.2190

cond.true.2189:                                   ; preds = %cond.false.2188
  br i1 false, label %cond.true.2296, label %lor.lhs.false.2282

cond.false.2190:                                  ; preds = %cond.false.2188
  %432 = load i64, i64* %nmaps, align 8
  %add2191 = add nsw i64 0, %432
  %mul2192 = mul nsw i64 0, %add2191
  %sub2193 = sub nsw i64 %mul2192, 1
  %cmp2194 = icmp slt i64 %sub2193, 0
  br i1 %cmp2194, label %cond.true.2196, label %cond.false.2213

cond.true.2196:                                   ; preds = %cond.false.2190
  %433 = load i64, i64* %nmaps, align 8
  %add2197 = add nsw i64 0, %433
  %mul2198 = mul nsw i64 0, %add2197
  %add2199 = add nsw i64 %mul2198, 0
  %neg2200 = xor i64 %add2199, -1
  %cmp2201 = icmp eq i64 %neg2200, -1
  %conv2202 = zext i1 %cmp2201 to i32
  %sub2203 = sub nsw i32 0, %conv2202
  %conv2204 = sext i32 %sub2203 to i64
  %434 = load i64, i64* %nmaps, align 8
  %add2205 = add nsw i64 0, %434
  %mul2206 = mul nsw i64 0, %add2205
  %add2207 = add nsw i64 %mul2206, 1
  %shl2208 = shl i64 %add2207, 62
  %sub2209 = sub nsw i64 %shl2208, 1
  %mul2210 = mul nsw i64 %sub2209, 2
  %add2211 = add nsw i64 %mul2210, 1
  %sub2212 = sub nsw i64 %conv2204, %add2211
  br label %cond.end.2217

cond.false.2213:                                  ; preds = %cond.false.2190
  %435 = load i64, i64* %nmaps, align 8
  %add2214 = add nsw i64 0, %435
  %mul2215 = mul nsw i64 0, %add2214
  %add2216 = add nsw i64 %mul2215, 0
  br label %cond.end.2217

cond.end.2217:                                    ; preds = %cond.false.2213, %cond.true.2196
  %cond2218 = phi i64 [ %sub2212, %cond.true.2196 ], [ %add2216, %cond.false.2213 ]
  %div2219 = sdiv i64 %cond2218, 8
  %436 = load i64, i64* %nmaps, align 8
  %cmp2220 = icmp slt i64 %div2219, %436
  br i1 %cmp2220, label %cond.true.2296, label %lor.lhs.false.2282

cond.false.2222:                                  ; preds = %lor.lhs.false.2161
  br i1 false, label %cond.true.2223, label %cond.false.2224

cond.true.2223:                                   ; preds = %cond.false.2222
  br i1 false, label %cond.true.2296, label %lor.lhs.false.2282

cond.false.2224:                                  ; preds = %cond.false.2222
  %437 = load i64, i64* %nmaps, align 8
  %cmp2225 = icmp slt i64 %437, 0
  br i1 %cmp2225, label %cond.true.2227, label %cond.false.2259

cond.true.2227:                                   ; preds = %cond.false.2224
  %438 = load i64, i64* %nmaps, align 8
  %439 = load i64, i64* %nmaps, align 8
  %add2228 = add nsw i64 0, %439
  %mul2229 = mul nsw i64 0, %add2228
  %sub2230 = sub nsw i64 %mul2229, 1
  %cmp2231 = icmp slt i64 %sub2230, 0
  br i1 %cmp2231, label %cond.true.2233, label %cond.false.2250

cond.true.2233:                                   ; preds = %cond.true.2227
  %440 = load i64, i64* %nmaps, align 8
  %add2234 = add nsw i64 0, %440
  %mul2235 = mul nsw i64 0, %add2234
  %add2236 = add nsw i64 %mul2235, 0
  %neg2237 = xor i64 %add2236, -1
  %cmp2238 = icmp eq i64 %neg2237, -1
  %conv2239 = zext i1 %cmp2238 to i32
  %sub2240 = sub nsw i32 0, %conv2239
  %conv2241 = sext i32 %sub2240 to i64
  %441 = load i64, i64* %nmaps, align 8
  %add2242 = add nsw i64 0, %441
  %mul2243 = mul nsw i64 0, %add2242
  %add2244 = add nsw i64 %mul2243, 1
  %shl2245 = shl i64 %add2244, 62
  %sub2246 = sub nsw i64 %shl2245, 1
  %mul2247 = mul nsw i64 %sub2246, 2
  %add2248 = add nsw i64 %mul2247, 1
  %sub2249 = sub nsw i64 %conv2241, %add2248
  br label %cond.end.2254

cond.false.2250:                                  ; preds = %cond.true.2227
  %442 = load i64, i64* %nmaps, align 8
  %add2251 = add nsw i64 0, %442
  %mul2252 = mul nsw i64 0, %add2251
  %add2253 = add nsw i64 %mul2252, 0
  br label %cond.end.2254

cond.end.2254:                                    ; preds = %cond.false.2250, %cond.true.2233
  %cond2255 = phi i64 [ %sub2249, %cond.true.2233 ], [ %add2253, %cond.false.2250 ]
  %div2256 = sdiv i64 %cond2255, 8
  %cmp2257 = icmp slt i64 %438, %div2256
  br i1 %cmp2257, label %cond.true.2296, label %lor.lhs.false.2282

cond.false.2259:                                  ; preds = %cond.false.2224
  %443 = load i64, i64* %nmaps, align 8
  %add2260 = add nsw i64 0, %443
  %mul2261 = mul nsw i64 0, %add2260
  %sub2262 = sub nsw i64 %mul2261, 1
  %cmp2263 = icmp slt i64 %sub2262, 0
  br i1 %cmp2263, label %cond.true.2265, label %cond.false.2273

cond.true.2265:                                   ; preds = %cond.false.2259
  %444 = load i64, i64* %nmaps, align 8
  %add2266 = add nsw i64 0, %444
  %mul2267 = mul nsw i64 0, %add2266
  %add2268 = add nsw i64 %mul2267, 1
  %shl2269 = shl i64 %add2268, 62
  %sub2270 = sub nsw i64 %shl2269, 1
  %mul2271 = mul nsw i64 %sub2270, 2
  %add2272 = add nsw i64 %mul2271, 1
  br label %cond.end.2277

cond.false.2273:                                  ; preds = %cond.false.2259
  %445 = load i64, i64* %nmaps, align 8
  %add2274 = add nsw i64 0, %445
  %mul2275 = mul nsw i64 0, %add2274
  %sub2276 = sub nsw i64 %mul2275, 1
  br label %cond.end.2277

cond.end.2277:                                    ; preds = %cond.false.2273, %cond.true.2265
  %cond2278 = phi i64 [ %add2272, %cond.true.2265 ], [ %sub2276, %cond.false.2273 ]
  %div2279 = sdiv i64 %cond2278, 8
  %446 = load i64, i64* %nmaps, align 8
  %cmp2280 = icmp slt i64 %div2279, %446
  br i1 %cmp2280, label %cond.true.2296, label %lor.lhs.false.2282

lor.lhs.false.2282:                               ; preds = %cond.end.2277, %cond.end.2254, %cond.true.2223, %cond.end.2217, %cond.true.2189, %cond.end.2183
  %447 = load i64, i64* %nmaps, align 8
  %mul2283 = mul nsw i64 %447, 8
  %mul2284 = mul nsw i64 0, %mul2283
  %sub2285 = sub nsw i64 %mul2284, 1
  %cmp2286 = icmp slt i64 %sub2285, 0
  br i1 %cmp2286, label %land.lhs.true.2288, label %lor.lhs.false.2292

land.lhs.true.2288:                               ; preds = %lor.lhs.false.2282
  %448 = load i64, i64* %nmaps, align 8
  %mul2289 = mul nsw i64 %448, 8
  %cmp2290 = icmp slt i64 %mul2289, -9223372036854775808
  br i1 %cmp2290, label %cond.true.2296, label %lor.lhs.false.2292

lor.lhs.false.2292:                               ; preds = %land.lhs.true.2288, %lor.lhs.false.2282
  %449 = load i64, i64* %nmaps, align 8
  %mul2293 = mul nsw i64 %449, 8
  %cmp2294 = icmp slt i64 9223372036854775807, %mul2293
  br i1 %cmp2294, label %cond.true.2296, label %cond.false.2308

cond.true.2296:                                   ; preds = %lor.lhs.false.2292, %land.lhs.true.2288, %cond.end.2277, %cond.end.2254, %cond.true.2223, %cond.end.2217, %cond.true.2189, %cond.end.2183, %land.lhs.true.2158
  %450 = load i64, i64* %nmaps, align 8
  %mul2297 = mul i64 %450, 8
  %cmp2298 = icmp ule i64 %mul2297, 9223372036854775807
  br i1 %cmp2298, label %cond.true.2300, label %cond.false.2302

cond.true.2300:                                   ; preds = %cond.true.2296
  %451 = load i64, i64* %nmaps, align 8
  %mul2301 = mul i64 %451, 8
  br label %cond.end.2306

cond.false.2302:                                  ; preds = %cond.true.2296
  %452 = load i64, i64* %nmaps, align 8
  %mul2303 = mul i64 %452, 8
  %sub2304 = sub i64 %mul2303, -9223372036854775808
  %add2305 = add nsw i64 %sub2304, -9223372036854775808
  br label %cond.end.2306

cond.end.2306:                                    ; preds = %cond.false.2302, %cond.true.2300
  %cond2307 = phi i64 [ %mul2301, %cond.true.2300 ], [ %add2305, %cond.false.2302 ]
  store i64 %cond2307, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then.2516, label %lor.lhs.false.2513

cond.false.2308:                                  ; preds = %lor.lhs.false.2292
  %453 = load i64, i64* %nmaps, align 8
  %mul2309 = mul i64 %453, 8
  %cmp2310 = icmp ule i64 %mul2309, 9223372036854775807
  br i1 %cmp2310, label %cond.true.2312, label %cond.false.2314

cond.true.2312:                                   ; preds = %cond.false.2308
  %454 = load i64, i64* %nmaps, align 8
  %mul2313 = mul i64 %454, 8
  br label %cond.end.2318

cond.false.2314:                                  ; preds = %cond.false.2308
  %455 = load i64, i64* %nmaps, align 8
  %mul2315 = mul i64 %455, 8
  %sub2316 = sub i64 %mul2315, -9223372036854775808
  %add2317 = add nsw i64 %sub2316, -9223372036854775808
  br label %cond.end.2318

cond.end.2318:                                    ; preds = %cond.false.2314, %cond.true.2312
  %cond2319 = phi i64 [ %mul2313, %cond.true.2312 ], [ %add2317, %cond.false.2314 ]
  store i64 %cond2319, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then.2516, label %lor.lhs.false.2513

cond.false.2320:                                  ; preds = %cond.false.2126
  %456 = load i64, i64* %nmaps, align 8
  %add2321 = add nsw i64 0, %456
  %mul2322 = mul nsw i64 0, %add2321
  %sub2323 = sub nsw i64 %mul2322, 1
  %cmp2324 = icmp slt i64 %sub2323, 0
  br i1 %cmp2324, label %cond.true.2326, label %cond.false.2343

cond.true.2326:                                   ; preds = %cond.false.2320
  %457 = load i64, i64* %nmaps, align 8
  %add2327 = add nsw i64 0, %457
  %mul2328 = mul nsw i64 0, %add2327
  %add2329 = add nsw i64 %mul2328, 0
  %neg2330 = xor i64 %add2329, -1
  %cmp2331 = icmp eq i64 %neg2330, -1
  %conv2332 = zext i1 %cmp2331 to i32
  %sub2333 = sub nsw i32 0, %conv2332
  %conv2334 = sext i32 %sub2333 to i64
  %458 = load i64, i64* %nmaps, align 8
  %add2335 = add nsw i64 0, %458
  %mul2336 = mul nsw i64 0, %add2335
  %add2337 = add nsw i64 %mul2336, 1
  %shl2338 = shl i64 %add2337, 62
  %sub2339 = sub nsw i64 %shl2338, 1
  %mul2340 = mul nsw i64 %sub2339, 2
  %add2341 = add nsw i64 %mul2340, 1
  %sub2342 = sub nsw i64 %conv2334, %add2341
  br label %cond.end.2347

cond.false.2343:                                  ; preds = %cond.false.2320
  %459 = load i64, i64* %nmaps, align 8
  %add2344 = add nsw i64 0, %459
  %mul2345 = mul nsw i64 0, %add2344
  %add2346 = add nsw i64 %mul2345, 0
  br label %cond.end.2347

cond.end.2347:                                    ; preds = %cond.false.2343, %cond.true.2326
  %cond2348 = phi i64 [ %sub2342, %cond.true.2326 ], [ %add2346, %cond.false.2343 ]
  %cmp2349 = icmp eq i64 %cond2348, 0
  br i1 %cmp2349, label %land.lhs.true.2351, label %lor.lhs.false.2354

land.lhs.true.2351:                               ; preds = %cond.end.2347
  %460 = load i64, i64* %nmaps, align 8
  %cmp2352 = icmp slt i64 %460, 0
  br i1 %cmp2352, label %cond.true.2489, label %lor.lhs.false.2354

lor.lhs.false.2354:                               ; preds = %land.lhs.true.2351, %cond.end.2347
  br i1 false, label %cond.true.2355, label %cond.false.2415

cond.true.2355:                                   ; preds = %lor.lhs.false.2354
  %461 = load i64, i64* %nmaps, align 8
  %cmp2356 = icmp slt i64 %461, 0
  br i1 %cmp2356, label %cond.true.2358, label %cond.false.2381

cond.true.2358:                                   ; preds = %cond.true.2355
  %462 = load i64, i64* %nmaps, align 8
  %463 = load i64, i64* %nmaps, align 8
  %add2359 = add nsw i64 0, %463
  %mul2360 = mul nsw i64 0, %add2359
  %sub2361 = sub nsw i64 %mul2360, 1
  %cmp2362 = icmp slt i64 %sub2361, 0
  br i1 %cmp2362, label %cond.true.2364, label %cond.false.2372

cond.true.2364:                                   ; preds = %cond.true.2358
  %464 = load i64, i64* %nmaps, align 8
  %add2365 = add nsw i64 0, %464
  %mul2366 = mul nsw i64 0, %add2365
  %add2367 = add nsw i64 %mul2366, 1
  %shl2368 = shl i64 %add2367, 62
  %sub2369 = sub nsw i64 %shl2368, 1
  %mul2370 = mul nsw i64 %sub2369, 2
  %add2371 = add nsw i64 %mul2370, 1
  br label %cond.end.2376

cond.false.2372:                                  ; preds = %cond.true.2358
  %465 = load i64, i64* %nmaps, align 8
  %add2373 = add nsw i64 0, %465
  %mul2374 = mul nsw i64 0, %add2373
  %sub2375 = sub nsw i64 %mul2374, 1
  br label %cond.end.2376

cond.end.2376:                                    ; preds = %cond.false.2372, %cond.true.2364
  %cond2377 = phi i64 [ %add2371, %cond.true.2364 ], [ %sub2375, %cond.false.2372 ]
  %div2378 = sdiv i64 %cond2377, 8
  %cmp2379 = icmp slt i64 %462, %div2378
  br i1 %cmp2379, label %cond.true.2489, label %lor.lhs.false.2475

cond.false.2381:                                  ; preds = %cond.true.2355
  br i1 false, label %cond.true.2382, label %cond.false.2383

cond.true.2382:                                   ; preds = %cond.false.2381
  br i1 false, label %cond.true.2489, label %lor.lhs.false.2475

cond.false.2383:                                  ; preds = %cond.false.2381
  %466 = load i64, i64* %nmaps, align 8
  %add2384 = add nsw i64 0, %466
  %mul2385 = mul nsw i64 0, %add2384
  %sub2386 = sub nsw i64 %mul2385, 1
  %cmp2387 = icmp slt i64 %sub2386, 0
  br i1 %cmp2387, label %cond.true.2389, label %cond.false.2406

cond.true.2389:                                   ; preds = %cond.false.2383
  %467 = load i64, i64* %nmaps, align 8
  %add2390 = add nsw i64 0, %467
  %mul2391 = mul nsw i64 0, %add2390
  %add2392 = add nsw i64 %mul2391, 0
  %neg2393 = xor i64 %add2392, -1
  %cmp2394 = icmp eq i64 %neg2393, -1
  %conv2395 = zext i1 %cmp2394 to i32
  %sub2396 = sub nsw i32 0, %conv2395
  %conv2397 = sext i32 %sub2396 to i64
  %468 = load i64, i64* %nmaps, align 8
  %add2398 = add nsw i64 0, %468
  %mul2399 = mul nsw i64 0, %add2398
  %add2400 = add nsw i64 %mul2399, 1
  %shl2401 = shl i64 %add2400, 62
  %sub2402 = sub nsw i64 %shl2401, 1
  %mul2403 = mul nsw i64 %sub2402, 2
  %add2404 = add nsw i64 %mul2403, 1
  %sub2405 = sub nsw i64 %conv2397, %add2404
  br label %cond.end.2410

cond.false.2406:                                  ; preds = %cond.false.2383
  %469 = load i64, i64* %nmaps, align 8
  %add2407 = add nsw i64 0, %469
  %mul2408 = mul nsw i64 0, %add2407
  %add2409 = add nsw i64 %mul2408, 0
  br label %cond.end.2410

cond.end.2410:                                    ; preds = %cond.false.2406, %cond.true.2389
  %cond2411 = phi i64 [ %sub2405, %cond.true.2389 ], [ %add2409, %cond.false.2406 ]
  %div2412 = sdiv i64 %cond2411, 8
  %470 = load i64, i64* %nmaps, align 8
  %cmp2413 = icmp slt i64 %div2412, %470
  br i1 %cmp2413, label %cond.true.2489, label %lor.lhs.false.2475

cond.false.2415:                                  ; preds = %lor.lhs.false.2354
  br i1 false, label %cond.true.2416, label %cond.false.2417

cond.true.2416:                                   ; preds = %cond.false.2415
  br i1 false, label %cond.true.2489, label %lor.lhs.false.2475

cond.false.2417:                                  ; preds = %cond.false.2415
  %471 = load i64, i64* %nmaps, align 8
  %cmp2418 = icmp slt i64 %471, 0
  br i1 %cmp2418, label %cond.true.2420, label %cond.false.2452

cond.true.2420:                                   ; preds = %cond.false.2417
  %472 = load i64, i64* %nmaps, align 8
  %473 = load i64, i64* %nmaps, align 8
  %add2421 = add nsw i64 0, %473
  %mul2422 = mul nsw i64 0, %add2421
  %sub2423 = sub nsw i64 %mul2422, 1
  %cmp2424 = icmp slt i64 %sub2423, 0
  br i1 %cmp2424, label %cond.true.2426, label %cond.false.2443

cond.true.2426:                                   ; preds = %cond.true.2420
  %474 = load i64, i64* %nmaps, align 8
  %add2427 = add nsw i64 0, %474
  %mul2428 = mul nsw i64 0, %add2427
  %add2429 = add nsw i64 %mul2428, 0
  %neg2430 = xor i64 %add2429, -1
  %cmp2431 = icmp eq i64 %neg2430, -1
  %conv2432 = zext i1 %cmp2431 to i32
  %sub2433 = sub nsw i32 0, %conv2432
  %conv2434 = sext i32 %sub2433 to i64
  %475 = load i64, i64* %nmaps, align 8
  %add2435 = add nsw i64 0, %475
  %mul2436 = mul nsw i64 0, %add2435
  %add2437 = add nsw i64 %mul2436, 1
  %shl2438 = shl i64 %add2437, 62
  %sub2439 = sub nsw i64 %shl2438, 1
  %mul2440 = mul nsw i64 %sub2439, 2
  %add2441 = add nsw i64 %mul2440, 1
  %sub2442 = sub nsw i64 %conv2434, %add2441
  br label %cond.end.2447

cond.false.2443:                                  ; preds = %cond.true.2420
  %476 = load i64, i64* %nmaps, align 8
  %add2444 = add nsw i64 0, %476
  %mul2445 = mul nsw i64 0, %add2444
  %add2446 = add nsw i64 %mul2445, 0
  br label %cond.end.2447

cond.end.2447:                                    ; preds = %cond.false.2443, %cond.true.2426
  %cond2448 = phi i64 [ %sub2442, %cond.true.2426 ], [ %add2446, %cond.false.2443 ]
  %div2449 = sdiv i64 %cond2448, 8
  %cmp2450 = icmp slt i64 %472, %div2449
  br i1 %cmp2450, label %cond.true.2489, label %lor.lhs.false.2475

cond.false.2452:                                  ; preds = %cond.false.2417
  %477 = load i64, i64* %nmaps, align 8
  %add2453 = add nsw i64 0, %477
  %mul2454 = mul nsw i64 0, %add2453
  %sub2455 = sub nsw i64 %mul2454, 1
  %cmp2456 = icmp slt i64 %sub2455, 0
  br i1 %cmp2456, label %cond.true.2458, label %cond.false.2466

cond.true.2458:                                   ; preds = %cond.false.2452
  %478 = load i64, i64* %nmaps, align 8
  %add2459 = add nsw i64 0, %478
  %mul2460 = mul nsw i64 0, %add2459
  %add2461 = add nsw i64 %mul2460, 1
  %shl2462 = shl i64 %add2461, 62
  %sub2463 = sub nsw i64 %shl2462, 1
  %mul2464 = mul nsw i64 %sub2463, 2
  %add2465 = add nsw i64 %mul2464, 1
  br label %cond.end.2470

cond.false.2466:                                  ; preds = %cond.false.2452
  %479 = load i64, i64* %nmaps, align 8
  %add2467 = add nsw i64 0, %479
  %mul2468 = mul nsw i64 0, %add2467
  %sub2469 = sub nsw i64 %mul2468, 1
  br label %cond.end.2470

cond.end.2470:                                    ; preds = %cond.false.2466, %cond.true.2458
  %cond2471 = phi i64 [ %add2465, %cond.true.2458 ], [ %sub2469, %cond.false.2466 ]
  %div2472 = sdiv i64 %cond2471, 8
  %480 = load i64, i64* %nmaps, align 8
  %cmp2473 = icmp slt i64 %div2472, %480
  br i1 %cmp2473, label %cond.true.2489, label %lor.lhs.false.2475

lor.lhs.false.2475:                               ; preds = %cond.end.2470, %cond.end.2447, %cond.true.2416, %cond.end.2410, %cond.true.2382, %cond.end.2376
  %481 = load i64, i64* %nmaps, align 8
  %mul2476 = mul nsw i64 %481, 8
  %mul2477 = mul nsw i64 0, %mul2476
  %sub2478 = sub nsw i64 %mul2477, 1
  %cmp2479 = icmp slt i64 %sub2478, 0
  br i1 %cmp2479, label %land.lhs.true.2481, label %lor.lhs.false.2485

land.lhs.true.2481:                               ; preds = %lor.lhs.false.2475
  %482 = load i64, i64* %nmaps, align 8
  %mul2482 = mul nsw i64 %482, 8
  %cmp2483 = icmp slt i64 %mul2482, -9223372036854775808
  br i1 %cmp2483, label %cond.true.2489, label %lor.lhs.false.2485

lor.lhs.false.2485:                               ; preds = %land.lhs.true.2481, %lor.lhs.false.2475
  %483 = load i64, i64* %nmaps, align 8
  %mul2486 = mul nsw i64 %483, 8
  %cmp2487 = icmp slt i64 9223372036854775807, %mul2486
  br i1 %cmp2487, label %cond.true.2489, label %cond.false.2501

cond.true.2489:                                   ; preds = %lor.lhs.false.2485, %land.lhs.true.2481, %cond.end.2470, %cond.end.2447, %cond.true.2416, %cond.end.2410, %cond.true.2382, %cond.end.2376, %land.lhs.true.2351
  %484 = load i64, i64* %nmaps, align 8
  %mul2490 = mul i64 %484, 8
  %cmp2491 = icmp ule i64 %mul2490, 9223372036854775807
  br i1 %cmp2491, label %cond.true.2493, label %cond.false.2495

cond.true.2493:                                   ; preds = %cond.true.2489
  %485 = load i64, i64* %nmaps, align 8
  %mul2494 = mul i64 %485, 8
  br label %cond.end.2499

cond.false.2495:                                  ; preds = %cond.true.2489
  %486 = load i64, i64* %nmaps, align 8
  %mul2496 = mul i64 %486, 8
  %sub2497 = sub i64 %mul2496, -9223372036854775808
  %add2498 = add nsw i64 %sub2497, -9223372036854775808
  br label %cond.end.2499

cond.end.2499:                                    ; preds = %cond.false.2495, %cond.true.2493
  %cond2500 = phi i64 [ %mul2494, %cond.true.2493 ], [ %add2498, %cond.false.2495 ]
  store i64 %cond2500, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then.2516, label %lor.lhs.false.2513

cond.false.2501:                                  ; preds = %lor.lhs.false.2485
  %487 = load i64, i64* %nmaps, align 8
  %mul2502 = mul i64 %487, 8
  %cmp2503 = icmp ule i64 %mul2502, 9223372036854775807
  br i1 %cmp2503, label %cond.true.2505, label %cond.false.2507

cond.true.2505:                                   ; preds = %cond.false.2501
  %488 = load i64, i64* %nmaps, align 8
  %mul2506 = mul i64 %488, 8
  br label %cond.end.2511

cond.false.2507:                                  ; preds = %cond.false.2501
  %489 = load i64, i64* %nmaps, align 8
  %mul2508 = mul i64 %489, 8
  %sub2509 = sub i64 %mul2508, -9223372036854775808
  %add2510 = add nsw i64 %sub2509, -9223372036854775808
  br label %cond.end.2511

cond.end.2511:                                    ; preds = %cond.false.2507, %cond.true.2505
  %cond2512 = phi i64 [ %mul2506, %cond.true.2505 ], [ %add2510, %cond.false.2507 ]
  store i64 %cond2512, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then.2516, label %lor.lhs.false.2513

lor.lhs.false.2513:                               ; preds = %cond.end.2511, %cond.end.2499, %cond.end.2318, %cond.end.2306, %cond.end.2124, %cond.end.2112, %cond.end.1931, %cond.end.1919, %cond.end.1735, %cond.end.1719, %cond.end.1534, %cond.end.1518, %cond.end.1306, %cond.end.1283, %cond.end.1091, %cond.end.1068, %cond.end.821, %cond.end.798, %cond.end.606, %cond.end.583
  %490 = load i64, i64* %alloca_nbytes, align 8
  %cmp2514 = icmp ult i64 -1, %490
  br i1 %cmp2514, label %if.then.2516, label %if.else.2517

if.then.2516:                                     ; preds = %lor.lhs.false.2513, %cond.end.2511, %cond.end.2499, %cond.end.2318, %cond.end.2306, %cond.end.2124, %cond.end.2112, %cond.end.1931, %cond.end.1919, %cond.end.1735, %cond.end.1719, %cond.end.1534, %cond.end.1518, %cond.end.1306, %cond.end.1283, %cond.end.1091, %cond.end.1068, %cond.end.821, %cond.end.798, %cond.end.606, %cond.end.583
  call void @memory_full(i64 -1) #6
  unreachable

if.else.2517:                                     ; preds = %lor.lhs.false.2513
  %491 = load i64, i64* %alloca_nbytes, align 8
  %492 = load i64, i64* %sa_avail, align 8
  %cmp2518 = icmp sle i64 %491, %492
  br i1 %cmp2518, label %if.then.2520, label %if.else.2522

if.then.2520:                                     ; preds = %if.else.2517
  %493 = load i64, i64* %alloca_nbytes, align 8
  %494 = load i64, i64* %sa_avail, align 8
  %sub2521 = sub nsw i64 %494, %493
  store i64 %sub2521, i64* %sa_avail, align 8
  %495 = load i64, i64* %alloca_nbytes, align 8
  %496 = alloca i8, i64 %495
  %497 = bitcast i8* %496 to i64*
  store i64* %497, i64** %maps, align 8
  br label %if.end.2525

if.else.2522:                                     ; preds = %if.else.2517
  %498 = load i64, i64* %alloca_nbytes, align 8
  %call2523 = call noalias i8* @xmalloc(i64 %498)
  %499 = bitcast i8* %call2523 to i64*
  store i64* %499, i64** %maps, align 8
  %500 = load i64*, i64** %maps, align 8
  %501 = load i64, i64* %nmaps, align 8
  %call2524 = call i64 @make_save_memory(i64* %500, i64 %501)
  store i64 %call2524, i64* %arg_, align 8
  store i8 1, i8* %sa_must_free, align 1
  %502 = load i64, i64* %arg_, align 8
  call void @record_unwind_protect(void (i64)* @free_save_value, i64 %502)
  br label %if.end.2525

if.end.2525:                                      ; preds = %if.else.2522, %if.then.2520
  br label %if.end.2526

if.end.2526:                                      ; preds = %if.end.2525
  br label %do.end.2527

do.end.2527:                                      ; preds = %if.end.2526
  %call2528 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call2528, i64* %title, align 8
  %503 = load i64, i64* %menu.addr, align 8
  store i64 %503, i64* %tem, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.2527
  %504 = load i64, i64* %tem, align 8
  %and2529 = and i64 %504, 7
  %conv2530 = trunc i64 %and2529 to i32
  %cmp2531 = icmp eq i32 %conv2530, 3
  br i1 %cmp2531, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %505 = load i64, i64* %tem, align 8
  %sub2534 = sub nsw i64 %505, 3
  %506 = inttoptr i64 %sub2534 to i8*
  %507 = bitcast i8* %506 to %struct.Lisp_Cons*
  %car2535 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %507, i32 0, i32 0
  %508 = load i64, i64* %car2535, align 8
  %call2536 = call i64 @get_keymap(i64 %508, i1 zeroext true, i1 zeroext false)
  store i64 %call2536, i64* %keymap, align 8
  %509 = load i64, i64* %i, align 8
  %inc = add nsw i64 %509, 1
  store i64 %inc, i64* %i, align 8
  %510 = load i64*, i64** %maps, align 8
  %arrayidx = getelementptr inbounds i64, i64* %510, i64 %509
  store i64 %call2536, i64* %arrayidx, align 8
  %511 = load i64, i64* %keymap, align 8
  %call2537 = call i64 @Fkeymap_prompt(i64 %511)
  store i64 %call2537, i64* %prompt2533, align 8
  %512 = load i64, i64* %title, align 8
  %call2538 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp2539 = icmp eq i64 %512, %call2538
  br i1 %cmp2539, label %land.lhs.true.2541, label %if.end.2546

land.lhs.true.2541:                               ; preds = %for.body
  %513 = load i64, i64* %prompt2533, align 8
  %call2542 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp2543 = icmp eq i64 %513, %call2542
  br i1 %cmp2543, label %if.end.2546, label %if.then.2545

if.then.2545:                                     ; preds = %land.lhs.true.2541
  %514 = load i64, i64* %prompt2533, align 8
  store i64 %514, i64* %title, align 8
  br label %if.end.2546

if.end.2546:                                      ; preds = %if.then.2545, %land.lhs.true.2541, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.2546
  %515 = load i64, i64* %tem, align 8
  %sub2547 = sub nsw i64 %515, 3
  %516 = inttoptr i64 %sub2547 to i8*
  %517 = bitcast i8* %516 to %struct.Lisp_Cons*
  %u2548 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %517, i32 0, i32 1
  %cdr2549 = bitcast %union.anon* %u2548 to i64*
  %518 = load i64, i64* %cdr2549, align 8
  store i64 %518, i64* %tem, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %519 = load i64*, i64** %maps, align 8
  %520 = load i64, i64* %nmaps, align 8
  call void @keymap_panes(i64* %519, i64 %520)
  %521 = load i64, i64* %title, align 8
  %call2550 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp2551 = icmp eq i64 %521, %call2550
  br i1 %cmp2551, label %if.end.2557, label %land.lhs.true.2553

land.lhs.true.2553:                               ; preds = %for.end
  %522 = load i32, i32* @menu_items_n_panes, align 4
  %cmp2554 = icmp sge i32 %522, 0
  br i1 %cmp2554, label %if.then.2556, label %if.end.2557

if.then.2556:                                     ; preds = %land.lhs.true.2553
  %523 = load i64, i64* @menu_items, align 8
  %524 = load i64, i64* %title, align 8
  call void @ASET(i64 %523, i64 1, i64 %524)
  br label %if.end.2557

if.end.2557:                                      ; preds = %if.then.2556, %land.lhs.true.2553, %for.end
  %525 = load i32, i32* %menuflags, align 4
  %or2558 = or i32 %525, 1
  store i32 %or2558, i32* %menuflags, align 4
  br label %do.body.2559

do.body.2559:                                     ; preds = %if.end.2557
  %526 = load i8, i8* %sa_must_free, align 1
  %tobool2560 = trunc i8 %526 to i1
  br i1 %tobool2560, label %if.then.2561, label %if.end.2564

if.then.2561:                                     ; preds = %do.body.2559
  store i8 0, i8* %sa_must_free, align 1
  %527 = load i64, i64* %sa_count, align 8
  %call2562 = call i64 @builtin_lisp_symbol(i32 0)
  %call2563 = call i64 @unbind_to(i64 %527, i64 %call2562)
  br label %if.end.2564

if.end.2564:                                      ; preds = %if.then.2561, %do.body.2559
  br label %do.end.2565

do.end.2565:                                      ; preds = %if.end.2564
  br label %if.end.2570

if.else.2566:                                     ; preds = %land.lhs.true.331, %if.else.326
  %528 = load i64, i64* %menu.addr, align 8
  %call2567 = call i64 @Fcar(i64 %528)
  store i64 %call2567, i64* %title, align 8
  %529 = load i64, i64* %title, align 8
  call void @CHECK_STRING(i64 %529)
  %530 = load i64, i64* %menu.addr, align 8
  %call2568 = call i64 @Fcdr(i64 %530)
  call void @list_of_panes(i64 %call2568)
  %531 = load i32, i32* %menuflags, align 4
  %and2569 = and i32 %531, -2
  store i32 %and2569, i32* %menuflags, align 4
  br label %if.end.2570

if.end.2570:                                      ; preds = %if.else.2566, %do.end.2565
  br label %if.end.2571

if.end.2571:                                      ; preds = %if.end.2570, %if.end.324
  %532 = load i64, i64* %specpdl_count, align 8
  %call2572 = call i64 @builtin_lisp_symbol(i32 0)
  %call2573 = call i64 @unbind_to(i64 %532, i64 %call2572)
  %533 = load %struct.frame*, %struct.frame** %f, align 8
  %output_method2574 = getelementptr inbounds %struct.frame, %struct.frame* %533, i32 0, i32 26
  %534 = bitcast i48* %output_method2574 to i64*
  %bf.load2575 = load i64, i64* %534, align 8
  %bf.lshr2576 = lshr i64 %bf.load2575, 23
  %bf.clear2577 = and i64 %bf.lshr2576, 7
  %bf.cast2578 = trunc i64 %bf.clear2577 to i32
  %cmp2579 = icmp eq i32 %bf.cast2578, 1
  br i1 %cmp2579, label %if.end.2583, label %if.then.2581

if.then.2581:                                     ; preds = %if.end.2571
  %call2582 = call i64 @Fx_hide_tip()
  br label %if.end.2583

if.end.2583:                                      ; preds = %if.then.2581, %if.end.2571
  %535 = load %struct.frame*, %struct.frame** %f, align 8
  %output_method2584 = getelementptr inbounds %struct.frame, %struct.frame* %535, i32 0, i32 26
  %536 = bitcast i48* %output_method2584 to i64*
  %bf.load2585 = load i64, i64* %536, align 8
  %bf.lshr2586 = lshr i64 %bf.load2585, 23
  %bf.clear2587 = and i64 %bf.lshr2586, 7
  %bf.cast2588 = trunc i64 %bf.clear2587 to i32
  %cmp2589 = icmp eq i32 %bf.cast2588, 0
  br i1 %cmp2589, label %if.end.2594, label %if.then.2591

if.then.2591:                                     ; preds = %if.end.2583
  %537 = load %struct.frame*, %struct.frame** %f, align 8
  %terminal2592 = getelementptr inbounds %struct.frame, %struct.frame* %537, i32 0, i32 61
  %538 = load %struct.terminal*, %struct.terminal** %terminal2592, align 8
  %menu_show_hook = getelementptr inbounds %struct.terminal, %struct.terminal* %538, i32 0, i32 36
  %539 = load i64 (%struct.frame*, i32, i32, i32, i64, i8**)*, i64 (%struct.frame*, i32, i32, i32, i64, i8**)** %menu_show_hook, align 8
  %540 = load %struct.frame*, %struct.frame** %f, align 8
  %541 = load i32, i32* %xpos, align 4
  %542 = load i32, i32* %ypos, align 4
  %543 = load i32, i32* %menuflags, align 4
  %544 = load i64, i64* %title, align 8
  %call2593 = call i64 %539(%struct.frame* %540, i32 %541, i32 %542, i32 %543, i64 %544, i8** %error_name)
  store i64 %call2593, i64* %selection, align 8
  br label %if.end.2594

if.end.2594:                                      ; preds = %if.then.2591, %if.end.2583
  call void @discard_menu_items()
  %545 = load i8*, i8** %error_name, align 8
  %tobool2595 = icmp ne i8* %545, null
  br i1 %tobool2595, label %if.then.2596, label %if.end.2597

if.then.2596:                                     ; preds = %if.end.2594
  %546 = load i8*, i8** %error_name, align 8
  call void (i8*, ...) @error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* %546) #6
  unreachable

if.end.2597:                                      ; preds = %if.end.2594
  %547 = load i64, i64* %selection, align 8
  store i64 %547, i64* %retval
  br label %return

return:                                           ; preds = %if.end.2597, %if.then
  %548 = load i64, i64* %retval
  ret i64 %548
}

declare i64 @CAR_SAFE(i64) #1

declare i64 @CDR_SAFE(i64) #1

declare zeroext i1 @FRAMEP(i64) #1

declare i64 @make_natnum(i64) #1

declare void @x_relative_mouse_position(%struct.frame*, i32*, i32*) #1

declare zeroext i1 @WINDOWP(i64) #1

declare %struct.window* @XWINDOW(i64) #1

declare zeroext i1 @BUFFERP(i64) #1

; Function Attrs: noreturn
declare i64 @wrong_type_argument(i64, i64) #2

declare void @CHECK_WINDOW(i64) #1

; Function Attrs: noreturn
declare void @args_out_of_range_3(i64, i64, i64) #2

declare void @record_unwind_protect_void(void ()*) #1

; Function Attrs: nounwind uwtable
define internal void @keymap_panes(i64* %keymaps, i64 %nmaps) #0 {
entry:
  %keymaps.addr = alloca i64*, align 8
  %nmaps.addr = alloca i64, align 8
  %mapno = alloca i64, align 8
  store i64* %keymaps, i64** %keymaps.addr, align 8
  store i64 %nmaps, i64* %nmaps.addr, align 8
  call void @init_menu_items()
  store i64 0, i64* %mapno, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %mapno, align 8
  %1 = load i64, i64* %nmaps.addr, align 8
  %cmp = icmp slt i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %mapno, align 8
  %3 = load i64*, i64** %keymaps.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 %2
  %4 = load i64, i64* %arrayidx, align 8
  %5 = load i64, i64* %mapno, align 8
  %6 = load i64*, i64** %keymaps.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, i64* %6, i64 %5
  %7 = load i64, i64* %arrayidx1, align 8
  %call = call i64 @Fkeymap_prompt(i64 %7)
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  call void @single_keymap_panes(i64 %4, i64 %call, i64 %call2, i32 10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i64, i64* %mapno, align 8
  %inc = add nsw i64 %8, 1
  store i64 %inc, i64* %mapno, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @finish_menu_items() #7
  ret void
}

declare i64 @Fx_hide_tip() #1

; Function Attrs: nounwind uwtable
define i64 @Fx_popup_dialog(i64 %position, i64 %contents, i64 %header) #0 {
entry:
  %retval = alloca i64, align 8
  %position.addr = alloca i64, align 8
  %contents.addr = alloca i64, align 8
  %header.addr = alloca i64, align 8
  %f = alloca %struct.frame*, align 8
  %window = alloca i64, align 8
  %tem = alloca i64, align 8
  %selection = alloca i64, align 8
  store i64 %position, i64* %position.addr, align 8
  store i64 %contents, i64* %contents.addr, align 8
  store i64 %header, i64* %header.addr, align 8
  store %struct.frame* null, %struct.frame** %f, align 8
  %0 = load i64, i64* %position.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 901)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %position.addr, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %cmp1 = icmp eq i32 %conv, 3
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false
  %2 = load i64, i64* %position.addr, align 8
  %sub = sub nsw i64 %2, 3
  %3 = inttoptr i64 %sub to i8*
  %4 = bitcast i8* %3 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %4, i32 0, i32 0
  %5 = load i64, i64* %car, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 651)
  %cmp4 = icmp eq i64 %5, %call3
  br i1 %cmp4, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %land.lhs.true
  %6 = load i64, i64* %position.addr, align 8
  %sub7 = sub nsw i64 %6, 3
  %7 = inttoptr i64 %sub7 to i8*
  %8 = bitcast i8* %7 to %struct.Lisp_Cons*
  %car8 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %8, i32 0, i32 0
  %9 = load i64, i64* %car8, align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 921)
  %cmp10 = icmp eq i64 %9, %call9
  br i1 %cmp10, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.6, %land.lhs.true, %entry
  %10 = load i64, i64* @selected_window, align 8
  store i64 %10, i64* %window, align 8
  br label %if.end.43

if.else:                                          ; preds = %lor.lhs.false.6, %lor.lhs.false
  %11 = load i64, i64* %position.addr, align 8
  %and12 = and i64 %11, 7
  %conv13 = trunc i64 %and12 to i32
  %cmp14 = icmp eq i32 %conv13, 3
  br i1 %cmp14, label %if.then.16, label %if.else.32

if.then.16:                                       ; preds = %if.else
  %12 = load i64, i64* %position.addr, align 8
  %sub17 = sub nsw i64 %12, 3
  %13 = inttoptr i64 %sub17 to i8*
  %14 = bitcast i8* %13 to %struct.Lisp_Cons*
  %car18 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %14, i32 0, i32 0
  %15 = load i64, i64* %car18, align 8
  store i64 %15, i64* %tem, align 8
  %16 = load i64, i64* %tem, align 8
  %and19 = and i64 %16, 7
  %conv20 = trunc i64 %and19 to i32
  %cmp21 = icmp eq i32 %conv20, 3
  br i1 %cmp21, label %if.then.23, label %if.else.26

if.then.23:                                       ; preds = %if.then.16
  %17 = load i64, i64* %position.addr, align 8
  %sub24 = sub nsw i64 %17, 3
  %18 = inttoptr i64 %sub24 to i8*
  %19 = bitcast i8* %18 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %19, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %20 = load i64, i64* %cdr, align 8
  %call25 = call i64 @Fcar(i64 %20)
  store i64 %call25, i64* %window, align 8
  br label %if.end

if.else.26:                                       ; preds = %if.then.16
  %21 = load i64, i64* %position.addr, align 8
  %sub27 = sub nsw i64 %21, 3
  %22 = inttoptr i64 %sub27 to i8*
  %23 = bitcast i8* %22 to %struct.Lisp_Cons*
  %u28 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %23, i32 0, i32 1
  %cdr29 = bitcast %union.anon* %u28 to i64*
  %24 = load i64, i64* %cdr29, align 8
  %call30 = call i64 @Fcar(i64 %24)
  store i64 %call30, i64* %tem, align 8
  %25 = load i64, i64* %tem, align 8
  %call31 = call i64 @Fcar(i64 %25)
  store i64 %call31, i64* %window, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.26, %if.then.23
  br label %if.end.42

if.else.32:                                       ; preds = %if.else
  %26 = load i64, i64* %position.addr, align 8
  %call33 = call zeroext i1 @WINDOWP(i64 %26)
  br i1 %call33, label %if.then.38, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %if.else.32
  %27 = load i64, i64* %position.addr, align 8
  %call36 = call zeroext i1 @FRAMEP(i64 %27)
  br i1 %call36, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %lor.lhs.false.35, %if.else.32
  %28 = load i64, i64* %position.addr, align 8
  store i64 %28, i64* %window, align 8
  br label %if.end.41

if.else.39:                                       ; preds = %lor.lhs.false.35
  %call40 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call40, i64* %window, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.39, %if.then.38
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.end
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.then
  %29 = load i64, i64* %window, align 8
  %call44 = call zeroext i1 @FRAMEP(i64 %29)
  br i1 %call44, label %if.then.45, label %if.else.47

if.then.45:                                       ; preds = %if.end.43
  %30 = load i64, i64* %window, align 8
  %sub46 = sub nsw i64 %30, 5
  %31 = inttoptr i64 %sub46 to i8*
  %32 = bitcast i8* %31 to %struct.frame*
  store %struct.frame* %32, %struct.frame** %f, align 8
  br label %if.end.62

if.else.47:                                       ; preds = %if.end.43
  %33 = load i64, i64* %window, align 8
  %call48 = call zeroext i1 @WINDOWP(i64 %33)
  br i1 %call48, label %if.then.49, label %if.else.60

if.then.49:                                       ; preds = %if.else.47
  %34 = load i64, i64* %window, align 8
  %call50 = call zeroext i1 @WINDOWP(i64 %34)
  br i1 %call50, label %land.lhs.true.52, label %cond.false

land.lhs.true.52:                                 ; preds = %if.then.49
  %35 = load i64, i64* %window, align 8
  %call53 = call %struct.window* @XWINDOW(i64 %35)
  %contents54 = getelementptr inbounds %struct.window, %struct.window* %call53, i32 0, i32 10
  %36 = load i64, i64* %contents54, align 8
  %call55 = call zeroext i1 @BUFFERP(i64 %36)
  br i1 %call55, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.52
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.52, %if.then.49
  %call57 = call i64 @builtin_lisp_symbol(i32 1027)
  %37 = load i64, i64* %window, align 8
  %38 = call i64 @wrong_type_argument(i64 %call57, i64 %37) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %39, %cond.true
  %40 = load i64, i64* %window, align 8
  %call58 = call %struct.window* @XWINDOW(i64 %40)
  %frame = getelementptr inbounds %struct.window, %struct.window* %call58, i32 0, i32 1
  %41 = load i64, i64* %frame, align 8
  %sub59 = sub nsw i64 %41, 5
  %42 = inttoptr i64 %sub59 to i8*
  %43 = bitcast i8* %42 to %struct.frame*
  store %struct.frame* %43, %struct.frame** %f, align 8
  br label %if.end.61

if.else.60:                                       ; preds = %if.else.47
  %44 = load i64, i64* %window, align 8
  call void @CHECK_WINDOW(i64 %44)
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.60, %cond.end
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.45
  %45 = load %struct.frame*, %struct.frame** %f, align 8
  %46 = bitcast %struct.frame* %45 to i8*
  %call63 = call i64 @make_lisp_ptr(i8* %46, i32 5)
  store i64 %call63, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 179), align 8
  %call64 = call i64 @builtin_lisp_symbol(i32 901)
  %call65 = call i64 @Fredisplay(i64 %call64)
  %47 = load %struct.frame*, %struct.frame** %f, align 8
  %terminal = getelementptr inbounds %struct.frame, %struct.frame* %47, i32 0, i32 61
  %48 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %popup_dialog_hook = getelementptr inbounds %struct.terminal, %struct.terminal* %48, i32 0, i32 37
  %49 = load i64 (%struct.frame*, i64, i64)*, i64 (%struct.frame*, i64, i64)** %popup_dialog_hook, align 8
  %tobool = icmp ne i64 (%struct.frame*, i64, i64)* %49, null
  br i1 %tobool, label %if.then.66, label %if.end.70

if.then.66:                                       ; preds = %if.end.62
  %50 = load %struct.frame*, %struct.frame** %f, align 8
  %terminal67 = getelementptr inbounds %struct.frame, %struct.frame* %50, i32 0, i32 61
  %51 = load %struct.terminal*, %struct.terminal** %terminal67, align 8
  %popup_dialog_hook68 = getelementptr inbounds %struct.terminal, %struct.terminal* %51, i32 0, i32 37
  %52 = load i64 (%struct.frame*, i64, i64)*, i64 (%struct.frame*, i64, i64)** %popup_dialog_hook68, align 8
  %53 = load %struct.frame*, %struct.frame** %f, align 8
  %54 = load i64, i64* %header.addr, align 8
  %55 = load i64, i64* %contents.addr, align 8
  %call69 = call i64 %52(%struct.frame* %53, i64 %54, i64 %55)
  store i64 %call69, i64* %selection, align 8
  %56 = load i64, i64* %selection, align 8
  store i64 %56, i64* %retval
  br label %return

if.end.70:                                        ; preds = %if.end.62
  %57 = load %struct.frame*, %struct.frame** %f, align 8
  %58 = load i64, i64* %contents.addr, align 8
  %call71 = call i64 @emulate_dialog_with_menu(%struct.frame* %57, i64 %58)
  store i64 %call71, i64* %retval
  br label %return

return:                                           ; preds = %if.end.70, %if.then.66
  %59 = load i64, i64* %retval
  ret i64 %59
}

declare i64 @Fredisplay(i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @emulate_dialog_with_menu(%struct.frame* %f, i64 %contents) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %contents.addr = alloca i64, align 8
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  %frame = alloca i64, align 8
  %newpos = alloca i64, align 8
  %prompt = alloca i64, align 8
  %x_coord = alloca i32, align 4
  %y_coord = alloca i32, align 4
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %contents, i64* %contents.addr, align 8
  %0 = load i64, i64* %contents.addr, align 8
  %call = call i64 @Fcar(i64 %0)
  store i64 %call, i64* %prompt, align 8
  %1 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_method = getelementptr inbounds %struct.frame, %struct.frame* %1, i32 0, i32 26
  %2 = bitcast i48* %output_method to i64*
  %bf.load = load i64, i64* %2, align 8
  %bf.lshr = lshr i64 %bf.load, 23
  %bf.clear = and i64 %bf.lshr, 7
  %bf.cast = trunc i64 %bf.clear to i32
  %cmp = icmp eq i32 %bf.cast, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %pixel_width = getelementptr inbounds %struct.frame, %struct.frame* %3, i32 0, i32 46
  %4 = load i32, i32* %pixel_width, align 4
  store i32 %4, i32* %x_coord, align 4
  %5 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %pixel_height = getelementptr inbounds %struct.frame, %struct.frame* %5, i32 0, i32 47
  %6 = load i32, i32* %pixel_height, align 4
  store i32 %6, i32* %y_coord, align 4
  br label %if.end.5

if.else:                                          ; preds = %entry
  %7 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %text_cols = getelementptr inbounds %struct.frame, %struct.frame* %7, i32 0, i32 36
  %8 = load i32, i32* %text_cols, align 4
  store i32 %8, i32* %x_coord, align 4
  %9 = load i64, i64* %prompt, align 8
  %call1 = call zeroext i1 @STRINGP(i64 %9)
  br i1 %call1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  %10 = load i64, i64* %prompt, align 8
  %call3 = call i64 @SCHARS(i64 %10)
  %11 = load i32, i32* %x_coord, align 4
  %conv = sext i32 %11 to i64
  %sub = sub nsw i64 %conv, %call3
  %conv4 = trunc i64 %sub to i32
  store i32 %conv4, i32* %x_coord, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.else
  %12 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %total_lines = getelementptr inbounds %struct.frame, %struct.frame* %12, i32 0, i32 39
  %13 = load i32, i32* %total_lines, align 4
  store i32 %13, i32* %y_coord, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %14 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %15 = bitcast %struct.frame* %14 to i8*
  %call6 = call i64 @make_lisp_ptr(i8* %15, i32 5)
  store i64 %call6, i64* %frame, align 8
  %16 = load i32, i32* %x_coord, align 4
  %div = sdiv i32 %16, 2
  %conv7 = sext i32 %div to i64
  %shl = shl i64 %conv7, 2
  %add = add i64 %shl, 2
  store i64 %add, i64* %x, align 8
  %17 = load i32, i32* %y_coord, align 4
  %div8 = sdiv i32 %17, 2
  %conv9 = sext i32 %div8 to i64
  %shl10 = shl i64 %conv9, 2
  %add11 = add i64 %shl10, 2
  store i64 %add11, i64* %y, align 8
  %18 = load i64, i64* %x, align 8
  %19 = load i64, i64* %y, align 8
  %call12 = call i64 @list2(i64 %18, i64 %19)
  %20 = load i64, i64* %frame, align 8
  %call13 = call i64 @list2(i64 %call12, i64 %20)
  store i64 %call13, i64* %newpos, align 8
  %21 = load i64, i64* %newpos, align 8
  %22 = load i64, i64* %prompt, align 8
  %23 = load i64, i64* %contents.addr, align 8
  %call14 = call i64 @list2(i64 %22, i64 %23)
  %call15 = call i64 @Fx_popup_menu(i64 %21, i64 %call14)
  ret i64 %call15
}

; Function Attrs: nounwind uwtable
define void @syms_of_menu() #0 {
entry:
  call void @staticpro(i64* @menu_items)
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* @menu_items, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* @menu_items_inuse, align 8
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sx_popup_menu to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sx_popup_dialog to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Smenu_bar_menu_at_x_y to %struct.Lisp_Subr*))
  ret void
}

declare void @staticpro(i64*) #1

declare void @defsubr(%struct.Lisp_Subr*) #1

declare zeroext i1 @VECTORP(i64) #1

; Function Attrs: nounwind uwtable
define internal void @ensure_menu_items(i32 %items) #0 {
entry:
  %items.addr = alloca i32, align 4
  %incr = alloca i32, align 4
  store i32 %items, i32* %items.addr, align 4
  %0 = load i32, i32* %items.addr, align 4
  %1 = load i32, i32* @menu_items_allocated, align 4
  %2 = load i32, i32* @menu_items_used, align 4
  %sub = sub nsw i32 %1, %2
  %sub1 = sub nsw i32 %0, %sub
  store i32 %sub1, i32* %incr, align 4
  %3 = load i32, i32* %incr, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i64, i64* @menu_items, align 8
  %5 = load i32, i32* %incr, align 4
  %conv = sext i32 %5 to i64
  %call = call i64 @larger_vector(i64 %4, i64 %conv, i64 2147483647)
  store i64 %call, i64* @menu_items, align 8
  %6 = load i64, i64* @menu_items, align 8
  %call2 = call i64 @ASIZE(i64 %6)
  %conv3 = trunc i64 %call2 to i32
  store i32 %conv3, i32* @menu_items_allocated, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i64 @larger_vector(i64, i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @push_left_right_boundary() #0 {
entry:
  call void @ensure_menu_items(i32 1)
  %0 = load i64, i64* @menu_items, align 8
  %1 = load i32, i32* @menu_items_used, align 4
  %conv = sext i32 %1 to i64
  %call = call i64 @builtin_lisp_symbol(i32 783)
  call void @ASET(i64 %0, i64 %conv, i64 %call)
  %2 = load i32, i32* @menu_items_used, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* @menu_items_used, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @have_boxes() #0 {
entry:
  %retval = alloca i1, align 1
  %0 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 179), align 8
  %sub = sub nsw i64 %0, 5
  %1 = inttoptr i64 %sub to i8*
  %2 = bitcast i8* %1 to %struct.frame*
  %output_method = getelementptr inbounds %struct.frame, %struct.frame* %2, i32 0, i32 26
  %3 = bitcast i48* %output_method to i64*
  %bf.load = load i64, i64* %3, align 8
  %bf.lshr = lshr i64 %bf.load, 23
  %bf.clear = and i64 %bf.lshr, 7
  %bf.cast = trunc i64 %bf.clear to i32
  %cmp = icmp eq i32 %bf.cast, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 true, i1* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i1 false, i1* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i1, i1* %retval
  ret i1 %4
}

declare void @map_keymap_canonical(i64, void (i64, i64, i64, i8*)*, i64, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @single_menu_item(i64 %key, i64 %item, i64 %dummy, i8* %skp_v) #0 {
entry:
  %key.addr = alloca i64, align 8
  %item.addr = alloca i64, align 8
  %dummy.addr = alloca i64, align 8
  %skp_v.addr = alloca i8*, align 8
  %map = alloca i64, align 8
  %item_string = alloca i64, align 8
  %enabled = alloca i64, align 8
  %res = alloca i8, align 1
  %skp = alloca %struct.skp*, align 8
  %prefix = alloca i8*, align 8
  %type = alloca i64, align 8
  %selected = alloca i64, align 8
  %idx = alloca i32, align 4
  %submenu = alloca i32, align 4
  %tem = alloca i64, align 8
  %spaces = alloca i64, align 8
  %.compoundliteral = alloca %union.Aligned_String, align 8
  %prefix_obj = alloca i64, align 8
  %.compoundliteral118 = alloca %union.Aligned_String, align 8
  %space_gt = alloca i64, align 8
  %.compoundliteral137 = alloca %union.Aligned_String, align 8
  store i64 %key, i64* %key.addr, align 8
  store i64 %item, i64* %item.addr, align 8
  store i64 %dummy, i64* %dummy.addr, align 8
  store i8* %skp_v, i8** %skp_v.addr, align 8
  %0 = load i8*, i8** %skp_v.addr, align 8
  %1 = bitcast i8* %0 to %struct.skp*
  store %struct.skp* %1, %struct.skp** %skp, align 8
  %2 = load i64, i64* %item.addr, align 8
  %call = call zeroext i1 @parse_menu_item(i64 %2, i32 0)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %res, align 1
  %3 = load i8, i8* %res, align 1
  %tobool = trunc i8 %3 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.170

if.end:                                           ; preds = %entry
  %4 = load i64, i64* @item_properties, align 8
  %call1 = call i64 @AREF(i64 %4, i64 3)
  store i64 %call1, i64* %map, align 8
  %5 = load i64, i64* @item_properties, align 8
  %call2 = call i64 @AREF(i64 %5, i64 8)
  store i64 %call2, i64* %enabled, align 8
  %6 = load i64, i64* @item_properties, align 8
  %call3 = call i64 @AREF(i64 %6, i64 1)
  store i64 %call3, i64* %item_string, align 8
  %7 = load i64, i64* %map, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %7, %call4
  br i1 %cmp, label %if.end.18, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %8 = load i64, i64* %item_string, align 8
  %call5 = call zeroext i8 @SREF(i64 %8, i64 0)
  %conv = zext i8 %call5 to i32
  %cmp6 = icmp eq i32 %conv, 64
  br i1 %cmp6, label %if.then.8, label %if.end.18

if.then.8:                                        ; preds = %land.lhs.true
  %9 = load i64, i64* %enabled, align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp10 = icmp eq i64 %9, %call9
  br i1 %cmp10, label %if.end.17, label %if.then.12

if.then.12:                                       ; preds = %if.then.8
  %10 = load i64, i64* %map, align 8
  %11 = load i64, i64* %item_string, align 8
  %12 = load i64, i64* %key.addr, align 8
  %call13 = call i64 @Fcons(i64 %11, i64 %12)
  %call14 = call i64 @Fcons(i64 %10, i64 %call13)
  %13 = load %struct.skp*, %struct.skp** %skp, align 8
  %pending_maps = getelementptr inbounds %struct.skp, %struct.skp* %13, i32 0, i32 0
  %14 = load i64, i64* %pending_maps, align 8
  %call15 = call i64 @Fcons(i64 %call14, i64 %14)
  %15 = load %struct.skp*, %struct.skp** %skp, align 8
  %pending_maps16 = getelementptr inbounds %struct.skp, %struct.skp* %15, i32 0, i32 0
  store i64 %call15, i64* %pending_maps16, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.12, %if.then.8
  br label %if.end.170

if.end.18:                                        ; preds = %land.lhs.true, %if.end
  %call19 = call zeroext i1 @have_boxes()
  br i1 %call19, label %if.end.129, label %if.then.20

if.then.20:                                       ; preds = %if.end.18
  store i8* null, i8** %prefix, align 8
  %16 = load i64, i64* @item_properties, align 8
  %call21 = call i64 @AREF(i64 %16, i64 4)
  store i64 %call21, i64* %type, align 8
  %17 = load i64, i64* %type, align 8
  %call22 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp23 = icmp eq i64 %17, %call22
  br i1 %cmp23, label %if.else.100, label %if.then.25

if.then.25:                                       ; preds = %if.then.20
  %18 = load i64, i64* @item_properties, align 8
  %call26 = call i64 @AREF(i64 %18, i64 6)
  store i64 %call26, i64* %selected, align 8
  %19 = load %struct.skp*, %struct.skp** %skp, align 8
  %notbuttons = getelementptr inbounds %struct.skp, %struct.skp* %19, i32 0, i32 2
  %20 = load i32, i32* %notbuttons, align 4
  %tobool27 = icmp ne i32 %20, 0
  br i1 %tobool27, label %if.then.28, label %if.end.81

if.then.28:                                       ; preds = %if.then.25
  %21 = load %struct.skp*, %struct.skp** %skp, align 8
  %notbuttons29 = getelementptr inbounds %struct.skp, %struct.skp* %21, i32 0, i32 2
  %22 = load i32, i32* %notbuttons29, align 4
  store i32 %22, i32* %idx, align 4
  store i32 0, i32* %submenu, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.79, %if.then.28
  %23 = load i32, i32* %idx, align 4
  %24 = load i32, i32* @menu_items_used, align 4
  %cmp30 = icmp slt i32 %23, %24
  br i1 %cmp30, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %25 = load i64, i64* @menu_items, align 8
  %26 = load i32, i32* %idx, align 4
  %add = add nsw i32 %26, 0
  %conv32 = sext i32 %add to i64
  %call33 = call i64 @AREF(i64 %25, i64 %conv32)
  store i64 %call33, i64* %tem, align 8
  %27 = load i64, i64* %tem, align 8
  %call34 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp35 = icmp eq i64 %27, %call34
  br i1 %cmp35, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %while.body
  %28 = load i32, i32* %idx, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %idx, align 4
  %29 = load i32, i32* %submenu, align 4
  %inc38 = add nsw i32 %29, 1
  store i32 %inc38, i32* %submenu, align 4
  br label %if.end.79

if.else:                                          ; preds = %while.body
  %30 = load i64, i64* %tem, align 8
  %call39 = call i64 @builtin_lisp_symbol(i32 598)
  %cmp40 = icmp eq i64 %30, %call39
  br i1 %cmp40, label %if.then.42, label %if.else.44

if.then.42:                                       ; preds = %if.else
  %31 = load i32, i32* %idx, align 4
  %inc43 = add nsw i32 %31, 1
  store i32 %inc43, i32* %idx, align 4
  %32 = load i32, i32* %submenu, align 4
  %dec = add nsw i32 %32, -1
  store i32 %dec, i32* %submenu, align 4
  br label %if.end.78

if.else.44:                                       ; preds = %if.else
  %33 = load i64, i64* %tem, align 8
  %call45 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp46 = icmp eq i64 %33, %call45
  br i1 %cmp46, label %if.then.48, label %if.else.50

if.then.48:                                       ; preds = %if.else.44
  %34 = load i32, i32* %idx, align 4
  %add49 = add nsw i32 %34, 3
  store i32 %add49, i32* %idx, align 4
  br label %if.end.77

if.else.50:                                       ; preds = %if.else.44
  %35 = load i64, i64* %tem, align 8
  %call51 = call i64 @builtin_lisp_symbol(i32 783)
  %cmp52 = icmp eq i64 %35, %call51
  br i1 %cmp52, label %if.then.54, label %if.else.56

if.then.54:                                       ; preds = %if.else.50
  %36 = load i32, i32* %idx, align 4
  %inc55 = add nsw i32 %36, 1
  store i32 %inc55, i32* %idx, align 4
  br label %if.end.76

if.else.56:                                       ; preds = %if.else.50
  %37 = load i32, i32* %submenu, align 4
  %tobool57 = icmp ne i32 %37, 0
  br i1 %tobool57, label %if.end.74, label %land.lhs.true.58

land.lhs.true.58:                                 ; preds = %if.else.56
  %38 = load i64, i64* %tem, align 8
  %call59 = call zeroext i8 @SREF(i64 %38, i64 0)
  %conv60 = zext i8 %call59 to i32
  %cmp61 = icmp ne i32 %conv60, 0
  br i1 %cmp61, label %land.lhs.true.63, label %if.end.74

land.lhs.true.63:                                 ; preds = %land.lhs.true.58
  %39 = load i64, i64* %tem, align 8
  %call64 = call zeroext i8 @SREF(i64 %39, i64 0)
  %conv65 = zext i8 %call64 to i32
  %cmp66 = icmp ne i32 %conv65, 45
  br i1 %cmp66, label %if.then.68, label %if.end.74

if.then.68:                                       ; preds = %land.lhs.true.63
  %s = bitcast %union.Aligned_String* %.compoundliteral to %struct.Lisp_String*
  %size = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 0
  store i64 4, i64* %size, align 8
  %size_byte = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 1
  store i64 -1, i64* %size_byte, align 8
  %intervals = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 2
  store %struct.interval* null, %struct.interval** %intervals, align 8
  %data = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8** %data, align 8
  %s69 = bitcast %union.Aligned_String* %.compoundliteral to %struct.Lisp_String*
  %40 = bitcast %struct.Lisp_String* %s69 to i8*
  %call70 = call i64 @make_lisp_ptr(i8* %40, i32 4)
  store i64 %call70, i64* %spaces, align 8
  %41 = load i64, i64* @menu_items, align 8
  %42 = load i32, i32* %idx, align 4
  %add71 = add nsw i32 %42, 0
  %conv72 = sext i32 %add71 to i64
  %43 = load i64, i64* %spaces, align 8
  %44 = load i64, i64* %tem, align 8
  %call73 = call i64 @concat2(i64 %43, i64 %44)
  call void @ASET(i64 %41, i64 %conv72, i64 %call73)
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.68, %land.lhs.true.63, %land.lhs.true.58, %if.else.56
  %45 = load i32, i32* %idx, align 4
  %add75 = add nsw i32 %45, 8
  store i32 %add75, i32* %idx, align 4
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.74, %if.then.54
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.then.48
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.then.42
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.then.37
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %46 = load %struct.skp*, %struct.skp** %skp, align 8
  %notbuttons80 = getelementptr inbounds %struct.skp, %struct.skp* %46, i32 0, i32 2
  store i32 0, i32* %notbuttons80, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %while.end, %if.then.25
  %47 = load i64, i64* %type, align 8
  %call82 = call i64 @builtin_lisp_symbol(i32 130)
  %cmp83 = icmp eq i64 %47, %call82
  br i1 %cmp83, label %if.then.85, label %if.else.89

if.then.85:                                       ; preds = %if.end.81
  %48 = load i64, i64* %selected, align 8
  %call86 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp87 = icmp eq i64 %48, %call86
  %cond = select i1 %cmp87, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0)
  store i8* %cond, i8** %prefix, align 8
  br label %if.end.99

if.else.89:                                       ; preds = %if.end.81
  %49 = load i64, i64* %type, align 8
  %call90 = call i64 @builtin_lisp_symbol(i32 101)
  %cmp91 = icmp eq i64 %49, %call90
  br i1 %cmp91, label %if.then.93, label %if.end.98

if.then.93:                                       ; preds = %if.else.89
  %50 = load i64, i64* %selected, align 8
  %call94 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp95 = icmp eq i64 %50, %call94
  %cond97 = select i1 %cmp95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0)
  store i8* %cond97, i8** %prefix, align 8
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.93, %if.else.89
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %if.then.85
  br label %if.end.115

if.else.100:                                      ; preds = %if.then.20
  %51 = load %struct.skp*, %struct.skp** %skp, align 8
  %notbuttons101 = getelementptr inbounds %struct.skp, %struct.skp* %51, i32 0, i32 2
  %52 = load i32, i32* %notbuttons101, align 4
  %tobool102 = icmp ne i32 %52, 0
  br i1 %tobool102, label %if.end.114, label %land.lhs.true.103

land.lhs.true.103:                                ; preds = %if.else.100
  %53 = load i64, i64* %item_string, align 8
  %call104 = call zeroext i8 @SREF(i64 %53, i64 0)
  %conv105 = zext i8 %call104 to i32
  %cmp106 = icmp ne i32 %conv105, 0
  br i1 %cmp106, label %land.lhs.true.108, label %if.end.114

land.lhs.true.108:                                ; preds = %land.lhs.true.103
  %54 = load i64, i64* %item_string, align 8
  %call109 = call zeroext i8 @SREF(i64 %54, i64 0)
  %conv110 = zext i8 %call109 to i32
  %cmp111 = icmp ne i32 %conv110, 45
  br i1 %cmp111, label %if.then.113, label %if.end.114

if.then.113:                                      ; preds = %land.lhs.true.108
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8** %prefix, align 8
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.113, %land.lhs.true.108, %land.lhs.true.103, %if.else.100
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %if.end.99
  %55 = load i8*, i8** %prefix, align 8
  %tobool116 = icmp ne i8* %55, null
  br i1 %tobool116, label %if.then.117, label %if.end.128

if.then.117:                                      ; preds = %if.end.115
  %s119 = bitcast %union.Aligned_String* %.compoundliteral118 to %struct.Lisp_String*
  %size120 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s119, i32 0, i32 0
  %56 = load i8*, i8** %prefix, align 8
  %call121 = call i64 @strlen(i8* %56) #8
  store i64 %call121, i64* %size120, align 8
  %size_byte122 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s119, i32 0, i32 1
  store i64 -1, i64* %size_byte122, align 8
  %intervals123 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s119, i32 0, i32 2
  store %struct.interval* null, %struct.interval** %intervals123, align 8
  %data124 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s119, i32 0, i32 3
  %57 = load i8*, i8** %prefix, align 8
  store i8* %57, i8** %data124, align 8
  %s125 = bitcast %union.Aligned_String* %.compoundliteral118 to %struct.Lisp_String*
  %58 = bitcast %struct.Lisp_String* %s125 to i8*
  %call126 = call i64 @make_lisp_ptr(i8* %58, i32 4)
  store i64 %call126, i64* %prefix_obj, align 8
  %59 = load i64, i64* %prefix_obj, align 8
  %60 = load i64, i64* %item_string, align 8
  %call127 = call i64 @concat2(i64 %59, i64 %60)
  store i64 %call127, i64* %item_string, align 8
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.117, %if.end.115
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128, %if.end.18
  %61 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 179), align 8
  %sub = sub nsw i64 %61, 5
  %62 = inttoptr i64 %sub to i8*
  %63 = bitcast i8* %62 to %struct.frame*
  %output_method = getelementptr inbounds %struct.frame, %struct.frame* %63, i32 0, i32 26
  %64 = bitcast i48* %output_method to i64*
  %bf.load = load i64, i64* %64, align 8
  %bf.lshr = lshr i64 %bf.load, 23
  %bf.clear = and i64 %bf.lshr, 7
  %bf.cast = trunc i64 %bf.clear to i32
  %cmp130 = icmp eq i32 %bf.cast, 1
  br i1 %cmp130, label %land.lhs.true.132, label %if.end.146

land.lhs.true.132:                                ; preds = %if.end.129
  %65 = load i64, i64* %map, align 8
  %call133 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp134 = icmp eq i64 %65, %call133
  br i1 %cmp134, label %if.end.146, label %if.then.136

if.then.136:                                      ; preds = %land.lhs.true.132
  %s138 = bitcast %union.Aligned_String* %.compoundliteral137 to %struct.Lisp_String*
  %size139 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s138, i32 0, i32 0
  store i64 2, i64* %size139, align 8
  %size_byte140 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s138, i32 0, i32 1
  store i64 -1, i64* %size_byte140, align 8
  %intervals141 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s138, i32 0, i32 2
  store %struct.interval* null, %struct.interval** %intervals141, align 8
  %data142 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s138, i32 0, i32 3
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8** %data142, align 8
  %s143 = bitcast %union.Aligned_String* %.compoundliteral137 to %struct.Lisp_String*
  %66 = bitcast %struct.Lisp_String* %s143 to i8*
  %call144 = call i64 @make_lisp_ptr(i8* %66, i32 4)
  store i64 %call144, i64* %space_gt, align 8
  %67 = load i64, i64* %item_string, align 8
  %68 = load i64, i64* %space_gt, align 8
  %call145 = call i64 @concat2(i64 %67, i64 %68)
  store i64 %call145, i64* %item_string, align 8
  br label %if.end.146

if.end.146:                                       ; preds = %if.then.136, %land.lhs.true.132, %if.end.129
  %69 = load i64, i64* %item_string, align 8
  %70 = load i64, i64* %enabled, align 8
  %71 = load i64, i64* %key.addr, align 8
  %72 = load i64, i64* @item_properties, align 8
  %call147 = call i64 @AREF(i64 %72, i64 2)
  %73 = load i64, i64* @item_properties, align 8
  %call148 = call i64 @AREF(i64 %73, i64 5)
  %74 = load i64, i64* @item_properties, align 8
  %call149 = call i64 @AREF(i64 %74, i64 4)
  %75 = load i64, i64* @item_properties, align 8
  %call150 = call i64 @AREF(i64 %75, i64 6)
  %76 = load i64, i64* @item_properties, align 8
  %call151 = call i64 @AREF(i64 %76, i64 7)
  call void @push_menu_item(i64 %69, i64 %70, i64 %71, i64 %call147, i64 %call148, i64 %call149, i64 %call150, i64 %call151)
  %77 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 179), align 8
  %sub152 = sub nsw i64 %77, 5
  %78 = inttoptr i64 %sub152 to i8*
  %79 = bitcast i8* %78 to %struct.frame*
  %output_method153 = getelementptr inbounds %struct.frame, %struct.frame* %79, i32 0, i32 26
  %80 = bitcast i48* %output_method153 to i64*
  %bf.load154 = load i64, i64* %80, align 8
  %bf.lshr155 = lshr i64 %bf.load154, 23
  %bf.clear156 = and i64 %bf.lshr155, 7
  %bf.cast157 = trunc i64 %bf.clear156 to i32
  %cmp158 = icmp eq i32 %bf.cast157, 2
  br i1 %cmp158, label %land.lhs.true.160, label %if.end.170

land.lhs.true.160:                                ; preds = %if.end.146
  %81 = load i64, i64* %map, align 8
  %call161 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp162 = icmp eq i64 %81, %call161
  br i1 %cmp162, label %if.end.170, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.160
  %82 = load i64, i64* %enabled, align 8
  %call164 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp165 = icmp eq i64 %82, %call164
  br i1 %cmp165, label %if.end.170, label %if.then.167

if.then.167:                                      ; preds = %lor.lhs.false
  call void @push_submenu_start()
  %83 = load i64, i64* %map, align 8
  %call168 = call i64 @builtin_lisp_symbol(i32 0)
  %84 = load i64, i64* %key.addr, align 8
  %85 = load %struct.skp*, %struct.skp** %skp, align 8
  %maxdepth = getelementptr inbounds %struct.skp, %struct.skp* %85, i32 0, i32 1
  %86 = load i32, i32* %maxdepth, align 4
  %sub169 = sub nsw i32 %86, 1
  call void @single_keymap_panes(i64 %83, i64 %call168, i64 %84, i32 %sub169)
  call void @push_submenu_end()
  br label %if.end.170

if.end.170:                                       ; preds = %if.then, %if.end.17, %if.then.167, %lor.lhs.false, %land.lhs.true.160, %if.end.146
  ret void
}

declare zeroext i1 @parse_menu_item(i64, i32) #1

declare zeroext i8 @SREF(i64, i64) #1

declare i64 @Fcons(i64, i64) #1

declare i64 @concat2(i64, i64) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind uwtable
define internal void @push_submenu_start() #0 {
entry:
  call void @ensure_menu_items(i32 1)
  %0 = load i64, i64* @menu_items, align 8
  %1 = load i32, i32* @menu_items_used, align 4
  %conv = sext i32 %1 to i64
  %call = call i64 @builtin_lisp_symbol(i32 0)
  call void @ASET(i64 %0, i64 %conv, i64 %call)
  %2 = load i32, i32* @menu_items_used, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* @menu_items_used, align 4
  %3 = load i32, i32* @menu_items_submenu_depth, align 4
  %inc1 = add nsw i32 %3, 1
  store i32 %inc1, i32* @menu_items_submenu_depth, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @push_submenu_end() #0 {
entry:
  call void @ensure_menu_items(i32 1)
  %0 = load i64, i64* @menu_items, align 8
  %1 = load i32, i32* @menu_items_used, align 4
  %conv = sext i32 %1 to i64
  %call = call i64 @builtin_lisp_symbol(i32 598)
  call void @ASET(i64 %0, i64 %conv, i64 %call)
  %2 = load i32, i32* @menu_items_used, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* @menu_items_used, align 4
  %3 = load i32, i32* @menu_items_submenu_depth, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* @menu_items_submenu_depth, align 4
  ret void
}

declare i64 @SCHARS(i64) #1

declare i64 @list2(i64, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
