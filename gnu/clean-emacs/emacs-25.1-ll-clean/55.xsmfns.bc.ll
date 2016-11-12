; ModuleID = './src/xsmfns.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.emacs_globals = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct._SmcConn = type opaque
%struct.Lisp_Objfwd = type { i32, i64* }
%struct.input_event = type { i32, i32, i32, i64, i64, i64, i64, i64 }
%struct.vectorlike_header = type { i64 }
%struct.x_display_info = type { %struct.x_display_info*, %struct.terminal*, %struct._XDisplay*, i32, i64, i32, %struct.Screen*, double, double, %struct.Visual*, i64, i32, i32, i64, i64, i64, i64, i64, i64, void (%struct.frame*, i1)*, %struct._GdkCursor*, %struct._XrmHashBucketRec*, i32, i32, %struct._XGC*, %struct.Mouse_HLInfo, i32, i8*, i32, %struct.x_bitmap_record*, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.frame*, %struct.frame*, %struct.frame*, %struct.frame*, %struct.frame*, %struct.frame*, %struct.frame*, %struct.scroll_bar*, i64, i32, i32, %struct.XRectangle, i64, i64, %struct._XIM*, %struct.XIMStyles*, %struct.xim_inst_t*, %struct.color_name_cache_entry*, %struct.XColor*, i32, i32, i32, i32, i32, i32, i32, i32, i64*, i64, i64, i64, i64, i64*, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, %struct.xcb_connection_t* }
%struct.terminal = type { %struct.vectorlike_header, i64, i64, i64, i64, %struct.terminal*, i32, i32, i32, i8*, %struct.kboard*, %struct.image_cache*, %union.display_info, %struct.coding_system*, %struct.coding_system*, %struct.redisplay_interface*, void (%struct.frame*, i32, i32)*, void (%struct.frame*, i32, i32)*, void (%struct.frame*)*, void (%struct.frame*)*, void (%struct.frame*, i32)*, void (%struct.frame*, i32, i32)*, void (%struct.frame*, %struct.glyph*, i32)*, void (%struct.frame*, %struct.glyph*, i32)*, void (%struct.frame*, i32)*, void (%struct.frame*)*, void (%struct.frame*, i1)*, void (%struct.terminal*)*, void (%struct.terminal*)*, void (%struct.frame*)*, void (%struct.frame*)*, void (%struct.frame*, i32)*, void (%struct.frame**, i32, i64*, i32*, i64*, i64*, i64*)*, void (%struct.frame*)*, void (%struct.frame*, i1)*, void (%struct.frame*)*, i64 (%struct.frame*, i32, i32, i32, i64, i8**)*, i64 (%struct.frame*, i64, i64)*, void (%struct.window*, i32, i32, i32)*, void (%struct.window*, i32, i32, i32)*, void (%struct.frame*)*, void (%struct.window*)*, void (%struct.frame*)*, i32 (%struct.terminal*, %struct.input_event*)*, void (%struct.frame*)*, void (%struct.frame*)*, void (%struct.terminal*)* }
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
%struct.SmcCallbacks = type { %struct.anon.11, %struct.anon.12, %struct.anon.13, %struct.anon.14 }
%struct.anon.11 = type { void (%struct._SmcConn*, i8*, i32, i32, i32, i32)*, i8* }
%struct.anon.12 = type { void (%struct._SmcConn*, i8*)*, i8* }
%struct.anon.13 = type { void (%struct._SmcConn*, i8*)*, i8* }
%struct.anon.14 = type { void (%struct._SmcConn*, i8*)*, i8* }
%struct._IceConn = type opaque
%struct.SmProp = type { i8*, i8*, i32, %struct.SmPropValue* }
%struct.SmPropValue = type { i32, i8* }
%struct.Lisp_Cons = type { i64, %union.anon.15 }
%union.anon.15 = type { i64 }
%struct.Lisp_Subr = type { %struct.vectorlike_header, %union.anon.16, i16, i16, i8*, i8*, i8* }
%union.anon.16 = type { i64 ()* }
%struct.IceReplyWaitInfo = type { i64, i32, i32, i8* }

@ice_fd = internal global i32 -1, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [51 x i8] c"Disabling session management due to pwd error: %s\0A\00", align 1
@doing_interact = internal global i8 0, align 1
@globals = external global %struct.emacs_globals, align 8
@emacs_program = internal global i8* null, align 8
@client_id = internal global i8* null, align 8
@smc_conn = internal global %struct._SmcConn* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"emacs-session-save\00", align 1
@syms_of_xsmfns.o_fwd = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"x-session-id\00", align 1
@syms_of_xsmfns.o_fwd.3 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"x-session-previous-id\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"CloneCommand\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"LISTofARRAY8\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"Program\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"ARRAY8\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"UserID\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"CurrentDirectory\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"RestartCommand\00", align 1
@initial_argc = external global i32, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c"--smid=\00", align 1
@NOSPLASH_OPT = internal global [12 x i8] c"--no-splash\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"--chdir=\00", align 1
@initial_argv = external global i8**, align 8
@emacs_event = internal global %struct.input_event zeroinitializer, align 8
@.str.14 = private unnamed_addr constant [20 x i8] c"handle-save-session\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@Shandle_save_session = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fhandle_save_session }, i16 1, i16 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), i8* null }, align 8

; Function Attrs: nounwind uwtable
define zeroext i1 @x_session_have_connection() #0 {
entry:
  %0 = load i32, i32* @ice_fd, align 4
  %cmp = icmp ne i32 %0, -1
  ret i1 %cmp
}

; Function Attrs: nounwind uwtable
define void @x_session_initialize(%struct.x_display_info* %dpyinfo) #0 {
entry:
  %dpyinfo.addr = alloca %struct.x_display_info*, align 8
  %errorstring = alloca [512 x i8], align 16
  %previous_id = alloca i8*, align 8
  %callbacks = alloca %struct.SmcCallbacks, align 8
  %name_len = alloca i64, align 8
  %z = alloca i8*, align 8
  store %struct.x_display_info* %dpyinfo, %struct.x_display_info** %dpyinfo.addr, align 8
  store i8* null, i8** %previous_id, align 8
  store i64 0, i64* %name_len, align 8
  %call = call i8* @get_current_dir_name() #6
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32* @__errno_location() #7
  %1 = load i32, i32* %call1, align 4
  %call2 = call i8* @emacs_strerror(i32 %1)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i32 0, i32 0), i8* %call2)
  br label %if.end.44

if.end:                                           ; preds = %entry
  store i32 -1, i32* @ice_fd, align 4
  store i8 0, i8* @doing_interact, align 1
  %2 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 362), align 8
  %call4 = call zeroext i1 @STRINGP(i64 %2)
  br i1 %call4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %3 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 362), align 8
  %call6 = call i8* @SSDATA(i64 %3)
  store i8* %call6, i8** %previous_id, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  %4 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 148), align 8
  %call8 = call zeroext i1 @STRINGP(i64 %4)
  br i1 %call8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.7
  %5 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 148), align 8
  %call10 = call i64 @SBYTES(i64 %5)
  %6 = load i64, i64* %name_len, align 8
  %add = add nsw i64 %6, %call10
  store i64 %add, i64* %name_len, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end.7
  %7 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 149), align 8
  %call12 = call zeroext i1 @STRINGP(i64 %7)
  br i1 %call12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.end.11
  %8 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 149), align 8
  %call14 = call i64 @SBYTES(i64 %8)
  %9 = load i64, i64* %name_len, align 8
  %add15 = add nsw i64 %9, %call14
  store i64 %add15, i64* %name_len, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %if.end.11
  %10 = load i64, i64* %name_len, align 8
  %add17 = add nsw i64 %10, 1
  %call18 = call noalias i8* @xmalloc(i64 %add17)
  store i8* %call18, i8** @emacs_program, align 8
  %11 = load i8*, i8** @emacs_program, align 8
  store i8* %11, i8** %z, align 8
  %12 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 148), align 8
  %call19 = call zeroext i1 @STRINGP(i64 %12)
  br i1 %call19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end.16
  %13 = load i8*, i8** %z, align 8
  %14 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 148), align 8
  %call21 = call i8* @lispstpcpy(i8* %13, i64 %14)
  store i8* %call21, i8** %z, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.end.16
  %15 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 149), align 8
  %call23 = call zeroext i1 @STRINGP(i64 %15)
  br i1 %call23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.end.22
  %16 = load i8*, i8** %z, align 8
  %17 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 149), align 8
  %call25 = call i8* @lispstpcpy(i8* %16, i64 %17)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %if.end.22
  %save_yourself = getelementptr inbounds %struct.SmcCallbacks, %struct.SmcCallbacks* %callbacks, i32 0, i32 0
  %callback = getelementptr inbounds %struct.anon.11, %struct.anon.11* %save_yourself, i32 0, i32 0
  store void (%struct._SmcConn*, i8*, i32, i32, i32, i32)* @smc_save_yourself_CB, void (%struct._SmcConn*, i8*, i32, i32, i32, i32)** %callback, align 8
  %save_yourself27 = getelementptr inbounds %struct.SmcCallbacks, %struct.SmcCallbacks* %callbacks, i32 0, i32 0
  %client_data = getelementptr inbounds %struct.anon.11, %struct.anon.11* %save_yourself27, i32 0, i32 1
  store i8* null, i8** %client_data, align 8
  %die = getelementptr inbounds %struct.SmcCallbacks, %struct.SmcCallbacks* %callbacks, i32 0, i32 1
  %callback28 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %die, i32 0, i32 0
  store void (%struct._SmcConn*, i8*)* @smc_die_CB, void (%struct._SmcConn*, i8*)** %callback28, align 8
  %die29 = getelementptr inbounds %struct.SmcCallbacks, %struct.SmcCallbacks* %callbacks, i32 0, i32 1
  %client_data30 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %die29, i32 0, i32 1
  store i8* null, i8** %client_data30, align 8
  %save_complete = getelementptr inbounds %struct.SmcCallbacks, %struct.SmcCallbacks* %callbacks, i32 0, i32 2
  %callback31 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %save_complete, i32 0, i32 0
  store void (%struct._SmcConn*, i8*)* @smc_save_complete_CB, void (%struct._SmcConn*, i8*)** %callback31, align 8
  %save_complete32 = getelementptr inbounds %struct.SmcCallbacks, %struct.SmcCallbacks* %callbacks, i32 0, i32 2
  %client_data33 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %save_complete32, i32 0, i32 1
  store i8* null, i8** %client_data33, align 8
  %shutdown_cancelled = getelementptr inbounds %struct.SmcCallbacks, %struct.SmcCallbacks* %callbacks, i32 0, i32 3
  %callback34 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %shutdown_cancelled, i32 0, i32 0
  store void (%struct._SmcConn*, i8*)* @smc_shutdown_cancelled_CB, void (%struct._SmcConn*, i8*)** %callback34, align 8
  %shutdown_cancelled35 = getelementptr inbounds %struct.SmcCallbacks, %struct.SmcCallbacks* %callbacks, i32 0, i32 3
  %client_data36 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %shutdown_cancelled35, i32 0, i32 1
  store i8* null, i8** %client_data36, align 8
  %call37 = call void (%struct._SmcConn*, i32, i32, i64, i32, i32, i8*)* @SmcSetErrorHandler(void (%struct._SmcConn*, i32, i32, i64, i32, i32, i8*)* @smc_error_handler)
  %call38 = call void (%struct._IceConn*, i32, i32, i64, i32, i32, i8*)* @IceSetErrorHandler(void (%struct._IceConn*, i32, i32, i64, i32, i32, i8*)* @ice_error_handler)
  %call39 = call void (%struct._IceConn*)* @IceSetIOErrorHandler(void (%struct._IceConn*)* @ice_io_error_handler)
  %call40 = call i32 @IceAddConnectionWatch(void (%struct._IceConn*, i8*, i32, i8**)* @ice_conn_watch_CB, i8* null)
  %18 = load i8*, i8** %previous_id, align 8
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %errorstring, i32 0, i32 0
  %call41 = call %struct._SmcConn* @SmcOpenConnection(i8* null, i8* null, i32 1, i32 0, i64 15, %struct.SmcCallbacks* %callbacks, i8* %18, i8** @client_id, i32 512, i8* %arraydecay)
  store %struct._SmcConn* %call41, %struct._SmcConn** @smc_conn, align 8
  %19 = load %struct._SmcConn*, %struct._SmcConn** @smc_conn, align 8
  %cmp = icmp ne %struct._SmcConn* %19, null
  br i1 %cmp, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %if.end.26
  %20 = load i8*, i8** @client_id, align 8
  %call43 = call i64 @build_string(i8* %20)
  store i64 %call43, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 361), align 8
  %21 = load i8*, i8** @client_id, align 8
  call void @gdk_set_sm_client_id(i8* %21)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then, %if.then.42, %if.end.26
  ret void
}

; Function Attrs: nounwind
declare i8* @get_current_dir_name() #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare i8* @emacs_strerror(i32) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

declare zeroext i1 @STRINGP(i64) #2

declare i8* @SSDATA(i64) #2

declare i64 @SBYTES(i64) #2

declare noalias i8* @xmalloc(i64) #2

declare i8* @lispstpcpy(i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal void @smc_save_yourself_CB(%struct._SmcConn* %smcConn, i8* %clientData, i32 %saveType, i32 %shutdown, i32 %interactStyle, i32 %fast) #0 {
entry:
  %smcConn.addr = alloca %struct._SmcConn*, align 8
  %clientData.addr = alloca i8*, align 8
  %saveType.addr = alloca i32, align 4
  %shutdown.addr = alloca i32, align 4
  %interactStyle.addr = alloca i32, align 4
  %fast.addr = alloca i32, align 4
  %props = alloca [5 x %struct.SmProp*], align 16
  %prop_ptr = alloca [5 x %struct.SmProp], align 16
  %values = alloca [20 x %struct.SmPropValue], align 16
  %vp = alloca %struct.SmPropValue*, align 8
  %val_idx = alloca i32, align 4
  %vp_idx = alloca i32, align 4
  %props_idx = alloca i32, align 4
  %i = alloca i32, align 4
  %smid_opt = alloca i8*, align 8
  %chdir_opt = alloca i8*, align 8
  %user_login_name = alloca i64, align 8
  %cwd = alloca i8*, align 8
  store %struct._SmcConn* %smcConn, %struct._SmcConn** %smcConn.addr, align 8
  store i8* %clientData, i8** %clientData.addr, align 8
  store i32 %saveType, i32* %saveType.addr, align 4
  store i32 %shutdown, i32* %shutdown.addr, align 4
  store i32 %interactStyle, i32* %interactStyle.addr, align 4
  store i32 %fast, i32* %fast.addr, align 4
  store i32 0, i32* %val_idx, align 4
  store i32 0, i32* %vp_idx, align 4
  store i32 0, i32* %props_idx, align 4
  store i8* null, i8** %chdir_opt, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %call1 = call i64 @Fuser_login_name(i64 %call)
  store i64 %call1, i64* %user_login_name, align 8
  %0 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 149), align 8
  %call2 = call zeroext i1 @STRINGP(i64 %0)
  br i1 %call2, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %user_login_name, align 8
  %call3 = call zeroext i1 @STRINGP(i64 %1)
  br i1 %call3, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end.1912

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, i32* %props_idx, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [5 x %struct.SmProp], [5 x %struct.SmProp]* %prop_ptr, i32 0, i64 %idxprom
  %3 = load i32, i32* %props_idx, align 4
  %idxprom4 = sext i32 %3 to i64
  %arrayidx5 = getelementptr inbounds [5 x %struct.SmProp*], [5 x %struct.SmProp*]* %props, i32 0, i64 %idxprom4
  store %struct.SmProp* %arrayidx, %struct.SmProp** %arrayidx5, align 8
  %call6 = call noalias i8* @xstrdup(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0))
  %4 = load i32, i32* %props_idx, align 4
  %idxprom7 = sext i32 %4 to i64
  %arrayidx8 = getelementptr inbounds [5 x %struct.SmProp*], [5 x %struct.SmProp*]* %props, i32 0, i64 %idxprom7
  %5 = load %struct.SmProp*, %struct.SmProp** %arrayidx8, align 8
  %name = getelementptr inbounds %struct.SmProp, %struct.SmProp* %5, i32 0, i32 0
  store i8* %call6, i8** %name, align 8
  %call9 = call noalias i8* @xstrdup(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0))
  %6 = load i32, i32* %props_idx, align 4
  %idxprom10 = sext i32 %6 to i64
  %arrayidx11 = getelementptr inbounds [5 x %struct.SmProp*], [5 x %struct.SmProp*]* %props, i32 0, i64 %idxprom10
  %7 = load %struct.SmProp*, %struct.SmProp** %arrayidx11, align 8
  %type = getelementptr inbounds %struct.SmProp, %struct.SmProp* %7, i32 0, i32 1
  store i8* %call9, i8** %type, align 8
  %8 = load i32, i32* %props_idx, align 4
  %idxprom12 = sext i32 %8 to i64
  %arrayidx13 = getelementptr inbounds [5 x %struct.SmProp*], [5 x %struct.SmProp*]* %props, i32 0, i64 %idxprom12
  %9 = load %struct.SmProp*, %struct.SmProp** %arrayidx13, align 8
  %num_vals = getelementptr inbounds %struct.SmProp, %struct.SmProp* %9, i32 0, i32 2
  store i32 1, i32* %num_vals, align 4
  %10 = load i32, i32* %val_idx, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %val_idx, align 4
  %idxprom14 = sext i32 %10 to i64
  %arrayidx15 = getelementptr inbounds [20 x %struct.SmPropValue], [20 x %struct.SmPropValue]* %values, i32 0, i64 %idxprom14
  %11 = load i32, i32* %props_idx, align 4
  %idxprom16 = sext i32 %11 to i64
  %arrayidx17 = getelementptr inbounds [5 x %struct.SmProp*], [5 x %struct.SmProp*]* %props, i32 0, i64 %idxprom16
  %12 = load %struct.SmProp*, %struct.SmProp** %arrayidx17, align 8
  %vals = getelementptr inbounds %struct.SmProp, %struct.SmProp* %12, i32 0, i32 3
  store %struct.SmPropValue* %arrayidx15, %struct.SmPropValue** %vals, align 8
  %13 = load i8*, i8** @emacs_program, align 8
  %call18 = call i64 @strlen(i8* %13) #8
  %conv = trunc i64 %call18 to i32
  %14 = load i32, i32* %props_idx, align 4
  %idxprom19 = sext i32 %14 to i64
  %arrayidx20 = getelementptr inbounds [5 x %struct.SmProp*], [5 x %struct.SmProp*]* %props, i32 0, i64 %idxprom19
  %15 = load %struct.SmProp*, %struct.SmProp** %arrayidx20, align 8
  %vals21 = getelementptr inbounds %struct.SmProp, %struct.SmProp* %15, i32 0, i32 3
  %16 = load %struct.SmPropValue*, %struct.SmPropValue** %vals21, align 8
  %arrayidx22 = getelementptr inbounds %struct.SmPropValue, %struct.SmPropValue* %16, i64 0
  %length = getelementptr inbounds %struct.SmPropValue, %struct.SmPropValue* %arrayidx22, i32 0, i32 0
  store i32 %conv, i32* %length, align 4
  %17 = load i8*, i8** @emacs_program, align 8
  %18 = load i32, i32* %props_idx, align 4
  %idxprom23 = sext i32 %18 to i64
  %arrayidx24 = getelementptr inbounds [5 x %struct.SmProp*], [5 x %struct.SmProp*]* %props, i32 0, i64 %idxprom23
  %19 = load %struct.SmProp*, %struct.SmProp** %arrayidx24, align 8
  %vals25 = getelementptr inbounds %struct.SmProp, %struct.SmProp* %19, i32 0, i32 3
  %20 = load %struct.SmPropValue*, %struct.SmPropValue** %vals25, align 8
  %arrayidx26 = getelementptr inbounds %struct.SmPropValue, %struct.SmPropValue* %20, i64 0
  %value = getelementptr inbounds %struct.SmPropValue, %struct.SmPropValue* %arrayidx26, i32 0, i32 1
  store i8* %17, i8** %value, align 8
  %21 = load i32, i32* %props_idx, align 4
  %inc27 = add nsw i32 %21, 1
  store i32 %inc27, i32* %props_idx, align 4
  %22 = load i32, i32* %props_idx, align 4
  %idxprom28 = sext i32 %22 to i64
  %arrayidx29 = getelementptr inbounds [5 x %struct.SmProp], [5 x %struct.SmProp]* %prop_ptr, i32 0, i64 %idxprom28
  %23 = load i32, i32* %props_idx, align 4
  %idxprom30 = sext i32 %23 to i64
  %arrayidx31 = getelementptr inbounds [5 x %struct.SmProp*], [5 x %struct.SmProp*]* %props, i32 0, i64 %idxprom30
  store %struct.SmProp* %arrayidx29, %struct.SmProp** %arrayidx31, align 8
  %call32 = call noalias i8* @xstrdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0))
  %24 = load i32, i32* %props_idx, align 4
  %idxprom33 = sext i32 %24 to i64
  %arrayidx34 = getelementptr inbounds [5 x %struct.SmProp*], [5 x %struct.SmProp*]* %props, i32 0, i64 %idxprom33
  %25 = load %struct.SmProp*, %struct.SmProp** %arrayidx34, align 8
  %name35 = getelementptr inbounds %struct.SmProp, %struct.SmProp* %25, i32 0, i32 0
  store i8* %call32, i8** %name35, align 8
  %call36 = call noalias i8* @xstrdup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0))
  %26 = load i32, i32* %props_idx, align 4
  %idxprom37 = sext i32 %26 to i64
  %arrayidx38 = getelementptr inbounds [5 x %struct.SmProp*], [5 x %struct.SmProp*]* %props, i32 0, i64 %idxprom37
  %27 = load %struct.SmProp*, %struct.SmProp** %arrayidx38, align 8
  %type39 = getelementptr inbounds %struct.SmProp, %struct.SmProp* %27, i32 0, i32 1
  store i8* %call36, i8** %type39, align 8
  %28 = load i32, i32* %props_idx, align 4
  %idxprom40 = sext i32 %28 to i64
  %arrayidx41 = getelementptr inbounds [5 x %struct.SmProp*], [5 x %struct.SmProp*]* %props, i32 0, i64 %idxprom40
  %29 = load %struct.SmProp*, %struct.SmProp** %arrayidx41, align 8
  %num_vals42 = getelementptr inbounds %struct.SmProp, %struct.SmProp* %29, i32 0, i32 2
  store i32 1, i32* %num_vals42, align 4
  %30 = load i32, i32* %val_idx, align 4
  %inc43 = add nsw i32 %30, 1
  store i32 %inc43, i32* %val_idx, align 4
  %idxprom44 = sext i32 %30 to i64
  %arrayidx45 = getelementptr inbounds [20 x %struct.SmPropValue], [20 x %struct.SmPropValue]* %values, i32 0, i64 %idxprom44
  %31 = load i32, i32* %props_idx, align 4
  %idxprom46 = sext i32 %31 to i64
  %arrayidx47 = getelementptr inbounds [5 x %struct.SmProp*], [5 x %struct.SmProp*]* %props, i32 0, i64 %idxprom46
  %32 = load %struct.SmProp*, %struct.SmProp** %arrayidx47, align 8
  %vals48 = getelementptr inbounds %struct.SmProp, %struct.SmProp* %32, i32 0, i32 3
  store %struct.SmPropValue* %arrayidx45, %struct.SmPropValue** %vals48, align 8
  %33 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 149), align 8
  %call49 = call i64 @SBYTES(i64 %33)
  %conv50 = trunc i64 %call49 to i32
  %34 = load i32, i32* %props_idx, align 4
  %idxprom51 = sext i32 %34 to i64
  %arrayidx52 = getelementptr inbounds [5 x %struct.SmProp*], [5 x %struct.SmProp*]* %props, i32 0, i64 %idxprom51
  %35 = load %struct.SmProp*, %struct.SmProp** %arrayidx52, align 8
  %vals53 = getelementptr inbounds %struct.SmProp, %struct.SmProp* %35, i32 0, i32 3
  %36 = load %struct.SmPropValue*, %struct.SmPropValue** %vals53, align 8
  %arrayidx54 = getelementptr inbounds %struct.SmPropValue, %struct.SmPropValue* %36, i64 0
  %length55 = getelementptr inbounds %struct.SmPropValue, %struct.SmPropValue* %arrayidx54, i32 0, i32 0
  store i32 %conv50, i32* %length55, align 4
  %37 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 149), align 8
  %call56 = call i8* @SDATA(i64 %37)
  %38 = load i32, i32* %props_idx, align 4
  %idxprom57 = sext i32 %38 to i64
  %arrayidx58 = getelementptr inbounds [5 x %struct.SmProp*], [5 x %struct.SmProp*]* %props, i32 0, i64 %idxprom57
  %39 = load %struct.SmProp*, %struct.SmProp** %arrayidx58, align 8
  %vals59 = getelementptr inbounds %struct.SmProp, %struct.SmProp* %39, i32 0, i32 3
  %40 = load %struct.SmPropValue*, %struct.SmPropValue** %vals59, align 8
  %arrayidx60 = getelementptr inbounds %struct.SmPropValue, %struct.SmPropValue* %40, i64 0
  %value61 = getelementptr inbounds %struct.SmPropValue, %struct.SmPropValue* %arrayidx60, i32 0, i32 1
  store i8* %call56, i8** %value61, align 8
  %41 = load i32, i32* %props_idx, align 4
  %inc62 = add nsw i32 %41, 1
  store i32 %inc62, i32* %props_idx, align 4
  %42 = load i32, i32* %props_idx, align 4
  %idxprom63 = sext i32 %42 to i64
  %arrayidx64 = getelementptr inbounds [5 x %struct.SmProp], [5 x %struct.SmProp]* %prop_ptr, i32 0, i64 %idxprom63
  %43 = load i32, i32* %props_idx, align 4
  %idxprom65 = sext i32 %43 to i64
  %arrayidx66 = getelementptr inbounds [5 x %struct.SmProp*], [5 x %struct.SmProp*]* %props, i32 0, i64 %idxprom65
  store %struct.SmProp* %arrayidx64, %struct.SmProp** %arrayidx66, align 8
  %call67 = call noalias i8* @xstrdup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0))
  %44 = load i32, i32* %props_idx, align 4
  %idxprom68 = sext i32 %44 to i64
  %arrayidx69 = getelementptr inbounds [5 x %struct.SmProp*], [5 x %struct.SmProp*]* %props, i32 0, i64 %idxprom68
  %45 = load %struct.SmProp*, %struct.SmProp** %arrayidx69, align 8
  %name70 = getelementptr inbounds %struct.SmProp, %struct.SmProp* %45, i32 0, i32 0
  store i8* %call67, i8** %name70, align 8
  %call71 = call noalias i8* @xstrdup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0))
  %46 = load i32, i32* %props_idx, align 4
  %idxprom72 = sext i32 %46 to i64
  %arrayidx73 = getelementptr inbounds [5 x %struct.SmProp*], [5 x %struct.SmProp*]* %props, i32 0, i64 %idxprom72
  %47 = load %struct.SmProp*, %struct.SmProp** %arrayidx73, align 8
  %type74 = getelementptr inbounds %struct.SmProp, %struct.SmProp* %47, i32 0, i32 1
  store i8* %call71, i8** %type74, align 8
  %48 = load i32, i32* %props_idx, align 4
  %idxprom75 = sext i32 %48 to i64
  %arrayidx76 = getelementptr inbounds [5 x %struct.SmProp*], [5 x %struct.SmProp*]* %props, i32 0, i64 %idxprom75
  %49 = load %struct.SmProp*, %struct.SmProp** %arrayidx76, align 8
  %num_vals77 = getelementptr inbounds %struct.SmProp, %struct.SmProp* %49, i32 0, i32 2
  store i32 1, i32* %num_vals77, align 4
  %50 = load i32, i32* %val_idx, align 4
  %inc78 = add nsw i32 %50, 1
  store i32 %inc78, i32* %val_idx, align 4
  %idxprom79 = sext i32 %50 to i64
  %arrayidx80 = getelementptr inbounds [20 x %struct.SmPropValue], [20 x %struct.SmPropValue]* %values, i32 0, i64 %idxprom79
  %51 = load i32, i32* %props_idx, align 4
  %idxprom81 = sext i32 %51 to i64
  %arrayidx82 = getelementptr inbounds [5 x %struct.SmProp*], [5 x %struct.SmProp*]* %props, i32 0, i64 %idxprom81
  %52 = load %struct.SmProp*, %struct.SmProp** %arrayidx82, align 8
  %vals83 = getelementptr inbounds %struct.SmProp, %struct.SmProp* %52, i32 0, i32 3
  store %struct.SmPropValue* %arrayidx80, %struct.SmPropValue** %vals83, align 8
  %53 = load i64, i64* %user_login_name, align 8
  %call84 = call i64 @SBYTES(i64 %53)
  %conv85 = trunc i64 %call84 to i32
  %54 = load i32, i32* %props_idx, align 4
  %idxprom86 = sext i32 %54 to i64
  %arrayidx87 = getelementptr inbounds [5 x %struct.SmProp*], [5 x %struct.SmProp*]* %props, i32 0, i64 %idxprom86
  %55 = load %struct.SmProp*, %struct.SmProp** %arrayidx87, align 8
  %vals88 = getelementptr inbounds %struct.SmProp, %struct.SmProp* %55, i32 0, i32 3
  %56 = load %struct.SmPropValue*, %struct.SmPropValue** %vals88, align 8
  %arrayidx89 = getelementptr inbounds %struct.SmPropValue, %struct.SmPropValue* %56, i64 0
  %length90 = getelementptr inbounds %struct.SmPropValue, %struct.SmPropValue* %arrayidx89, i32 0, i32 0
  store i32 %conv85, i32* %length90, align 4
  %57 = load i64, i64* %user_login_name, align 8
  %call91 = call i8* @SDATA(i64 %57)
  %58 = load i32, i32* %props_idx, align 4
  %idxprom92 = sext i32 %58 to i64
  %arrayidx93 = getelementptr inbounds [5 x %struct.SmProp*], [5 x %struct.SmProp*]* %props, i32 0, i64 %idxprom92
  %59 = load %struct.SmProp*, %struct.SmProp** %arrayidx93, align 8
  %vals94 = getelementptr inbounds %struct.SmProp, %struct.SmProp* %59, i32 0, i32 3
  %60 = load %struct.SmPropValue*, %struct.SmPropValue** %vals94, align 8
  %arrayidx95 = getelementptr inbounds %struct.SmPropValue, %struct.SmPropValue* %60, i64 0
  %value96 = getelementptr inbounds %struct.SmPropValue, %struct.SmPropValue* %arrayidx95, i32 0, i32 1
  store i8* %call91, i8** %value96, align 8
  %61 = load i32, i32* %props_idx, align 4
  %inc97 = add nsw i32 %61, 1
  store i32 %inc97, i32* %props_idx, align 4
  %call98 = call i8* @get_current_dir_name() #6
  store i8* %call98, i8** %cwd, align 8
  %62 = load i8*, i8** %cwd, align 8
  %tobool = icmp ne i8* %62, null
  br i1 %tobool, label %if.then.99, label %if.end.134

if.then.99:                                       ; preds = %if.end
  %63 = load i32, i32* %props_idx, align 4
  %idxprom100 = sext i32 %63 to i64
  %arrayidx101 = getelementptr inbounds [5 x %struct.SmProp], [5 x %struct.SmProp]* %prop_ptr, i32 0, i64 %idxprom100
  %64 = load i32, i32* %props_idx, align 4
  %idxprom102 = sext i32 %64 to i64
  %arrayidx103 = getelementptr inbounds [5 x %struct.SmProp*], [5 x %struct.SmProp*]* %props, i32 0, i64 %idxprom102
  store %struct.SmProp* %arrayidx101, %struct.SmProp** %arrayidx103, align 8
  %call104 = call noalias i8* @xstrdup(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0))
  %65 = load i32, i32* %props_idx, align 4
  %idxprom105 = sext i32 %65 to i64
  %arrayidx106 = getelementptr inbounds [5 x %struct.SmProp*], [5 x %struct.SmProp*]* %props, i32 0, i64 %idxprom105
  %66 = load %struct.SmProp*, %struct.SmProp** %arrayidx106, align 8
  %name107 = getelementptr inbounds %struct.SmProp, %struct.SmProp* %66, i32 0, i32 0
  store i8* %call104, i8** %name107, align 8
  %call108 = call noalias i8* @xstrdup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0))
  %67 = load i32, i32* %props_idx, align 4
  %idxprom109 = sext i32 %67 to i64
  %arrayidx110 = getelementptr inbounds [5 x %struct.SmProp*], [5 x %struct.SmProp*]* %props, i32 0, i64 %idxprom109
  %68 = load %struct.SmProp*, %struct.SmProp** %arrayidx110, align 8
  %type111 = getelementptr inbounds %struct.SmProp, %struct.SmProp* %68, i32 0, i32 1
  store i8* %call108, i8** %type111, align 8
  %69 = load i32, i32* %props_idx, align 4
  %idxprom112 = sext i32 %69 to i64
  %arrayidx113 = getelementptr inbounds [5 x %struct.SmProp*], [5 x %struct.SmProp*]* %props, i32 0, i64 %idxprom112
  %70 = load %struct.SmProp*, %struct.SmProp** %arrayidx113, align 8
  %num_vals114 = getelementptr inbounds %struct.SmProp, %struct.SmProp* %70, i32 0, i32 2
  store i32 1, i32* %num_vals114, align 4
  %71 = load i32, i32* %val_idx, align 4
  %inc115 = add nsw i32 %71, 1
  store i32 %inc115, i32* %val_idx, align 4
  %idxprom116 = sext i32 %71 to i64
  %arrayidx117 = getelementptr inbounds [20 x %struct.SmPropValue], [20 x %struct.SmPropValue]* %values, i32 0, i64 %idxprom116
  %72 = load i32, i32* %props_idx, align 4
  %idxprom118 = sext i32 %72 to i64
  %arrayidx119 = getelementptr inbounds [5 x %struct.SmProp*], [5 x %struct.SmProp*]* %props, i32 0, i64 %idxprom118
  %73 = load %struct.SmProp*, %struct.SmProp** %arrayidx119, align 8
  %vals120 = getelementptr inbounds %struct.SmProp, %struct.SmProp* %73, i32 0, i32 3
  store %struct.SmPropValue* %arrayidx117, %struct.SmPropValue** %vals120, align 8
  %74 = load i8*, i8** %cwd, align 8
  %call121 = call i64 @strlen(i8* %74) #8
  %conv122 = trunc i64 %call121 to i32
  %75 = load i32, i32* %props_idx, align 4
  %idxprom123 = sext i32 %75 to i64
  %arrayidx124 = getelementptr inbounds [5 x %struct.SmProp*], [5 x %struct.SmProp*]* %props, i32 0, i64 %idxprom123
  %76 = load %struct.SmProp*, %struct.SmProp** %arrayidx124, align 8
  %vals125 = getelementptr inbounds %struct.SmProp, %struct.SmProp* %76, i32 0, i32 3
  %77 = load %struct.SmPropValue*, %struct.SmPropValue** %vals125, align 8
  %arrayidx126 = getelementptr inbounds %struct.SmPropValue, %struct.SmPropValue* %77, i64 0
  %length127 = getelementptr inbounds %struct.SmPropValue, %struct.SmPropValue* %arrayidx126, i32 0, i32 0
  store i32 %conv122, i32* %length127, align 4
  %78 = load i8*, i8** %cwd, align 8
  %79 = load i32, i32* %props_idx, align 4
  %idxprom128 = sext i32 %79 to i64
  %arrayidx129 = getelementptr inbounds [5 x %struct.SmProp*], [5 x %struct.SmProp*]* %props, i32 0, i64 %idxprom128
  %80 = load %struct.SmProp*, %struct.SmProp** %arrayidx129, align 8
  %vals130 = getelementptr inbounds %struct.SmProp, %struct.SmProp* %80, i32 0, i32 3
  %81 = load %struct.SmPropValue*, %struct.SmPropValue** %vals130, align 8
  %arrayidx131 = getelementptr inbounds %struct.SmPropValue, %struct.SmPropValue* %81, i64 0
  %value132 = getelementptr inbounds %struct.SmPropValue, %struct.SmPropValue* %arrayidx131, i32 0, i32 1
  store i8* %78, i8** %value132, align 8
  %82 = load i32, i32* %props_idx, align 4
  %inc133 = add nsw i32 %82, 1
  store i32 %inc133, i32* %props_idx, align 4
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.99, %if.end
  %83 = load i32, i32* %props_idx, align 4
  %idxprom135 = sext i32 %83 to i64
  %arrayidx136 = getelementptr inbounds [5 x %struct.SmProp], [5 x %struct.SmProp]* %prop_ptr, i32 0, i64 %idxprom135
  %84 = load i32, i32* %props_idx, align 4
  %idxprom137 = sext i32 %84 to i64
  %arrayidx138 = getelementptr inbounds [5 x %struct.SmProp*], [5 x %struct.SmProp*]* %props, i32 0, i64 %idxprom137
  store %struct.SmProp* %arrayidx136, %struct.SmProp** %arrayidx138, align 8
  %call139 = call noalias i8* @xstrdup(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0))
  %85 = load i32, i32* %props_idx, align 4
  %idxprom140 = sext i32 %85 to i64
  %arrayidx141 = getelementptr inbounds [5 x %struct.SmProp*], [5 x %struct.SmProp*]* %props, i32 0, i64 %idxprom140
  %86 = load %struct.SmProp*, %struct.SmProp** %arrayidx141, align 8
  %name142 = getelementptr inbounds %struct.SmProp, %struct.SmProp* %86, i32 0, i32 0
  store i8* %call139, i8** %name142, align 8
  %call143 = call noalias i8* @xstrdup(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0))
  %87 = load i32, i32* %props_idx, align 4
  %idxprom144 = sext i32 %87 to i64
  %arrayidx145 = getelementptr inbounds [5 x %struct.SmProp*], [5 x %struct.SmProp*]* %props, i32 0, i64 %idxprom144
  %88 = load %struct.SmProp*, %struct.SmProp** %arrayidx145, align 8
  %type146 = getelementptr inbounds %struct.SmProp, %struct.SmProp* %88, i32 0, i32 1
  store i8* %call143, i8** %type146, align 8
  br i1 false, label %cond.true, label %cond.false.497

cond.true:                                        ; preds = %if.end.134
  br i1 false, label %cond.true.147, label %cond.false.338

cond.true.147:                                    ; preds = %cond.true
  %89 = load i32, i32* @initial_argc, align 4
  %conv148 = trunc i32 %89 to i8
  %conv149 = sext i8 %conv148 to i32
  %add = add nsw i32 0, %conv149
  %mul = mul nsw i32 0, %add
  %sub = sub nsw i32 %mul, 1
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %cond.true.151, label %cond.false

cond.true.151:                                    ; preds = %cond.true.147
  %90 = load i32, i32* @initial_argc, align 4
  %conv152 = trunc i32 %90 to i8
  %conv153 = sext i8 %conv152 to i32
  %add154 = add nsw i32 0, %conv153
  %mul155 = mul nsw i32 0, %add154
  %add156 = add nsw i32 %mul155, 0
  %neg = xor i32 %add156, -1
  %cmp157 = icmp eq i32 %neg, -1
  %conv158 = zext i1 %cmp157 to i32
  %sub159 = sub nsw i32 0, %conv158
  %91 = load i32, i32* @initial_argc, align 4
  %conv160 = trunc i32 %91 to i8
  %conv161 = sext i8 %conv160 to i32
  %add162 = add nsw i32 0, %conv161
  %mul163 = mul nsw i32 0, %add162
  %add164 = add nsw i32 %mul163, 1
  %shl = shl i32 %add164, 30
  %sub165 = sub nsw i32 %shl, 1
  %mul166 = mul nsw i32 %sub165, 2
  %add167 = add nsw i32 %mul166, 1
  %sub168 = sub nsw i32 %sub159, %add167
  br label %cond.end

cond.false:                                       ; preds = %cond.true.147
  %92 = load i32, i32* @initial_argc, align 4
  %conv169 = trunc i32 %92 to i8
  %conv170 = sext i8 %conv169 to i32
  %add171 = add nsw i32 0, %conv170
  %mul172 = mul nsw i32 0, %add171
  %add173 = add nsw i32 %mul172, 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.151
  %cond = phi i32 [ %sub168, %cond.true.151 ], [ %add173, %cond.false ]
  %cmp174 = icmp slt i32 %cond, 0
  br i1 %cmp174, label %cond.true.176, label %cond.false.249

cond.true.176:                                    ; preds = %cond.end
  br i1 false, label %cond.true.177, label %cond.false.218

cond.true.177:                                    ; preds = %cond.true.176
  %93 = load i32, i32* @initial_argc, align 4
  %conv178 = trunc i32 %93 to i8
  %conv179 = sext i8 %conv178 to i32
  %94 = load i32, i32* @initial_argc, align 4
  %conv180 = trunc i32 %94 to i8
  %conv181 = sext i8 %conv180 to i32
  %add182 = add nsw i32 0, %conv181
  %mul183 = mul nsw i32 0, %add182
  %sub184 = sub nsw i32 %mul183, 1
  %cmp185 = icmp slt i32 %sub184, 0
  br i1 %cmp185, label %cond.true.187, label %cond.false.207

cond.true.187:                                    ; preds = %cond.true.177
  %95 = load i32, i32* @initial_argc, align 4
  %conv188 = trunc i32 %95 to i8
  %conv189 = sext i8 %conv188 to i32
  %add190 = add nsw i32 0, %conv189
  %mul191 = mul nsw i32 0, %add190
  %add192 = add nsw i32 %mul191, 0
  %neg193 = xor i32 %add192, -1
  %cmp194 = icmp eq i32 %neg193, -1
  %conv195 = zext i1 %cmp194 to i32
  %sub196 = sub nsw i32 0, %conv195
  %96 = load i32, i32* @initial_argc, align 4
  %conv197 = trunc i32 %96 to i8
  %conv198 = sext i8 %conv197 to i32
  %add199 = add nsw i32 0, %conv198
  %mul200 = mul nsw i32 0, %add199
  %add201 = add nsw i32 %mul200, 1
  %shl202 = shl i32 %add201, 30
  %sub203 = sub nsw i32 %shl202, 1
  %mul204 = mul nsw i32 %sub203, 2
  %add205 = add nsw i32 %mul204, 1
  %sub206 = sub nsw i32 %sub196, %add205
  br label %cond.end.213

cond.false.207:                                   ; preds = %cond.true.177
  %97 = load i32, i32* @initial_argc, align 4
  %conv208 = trunc i32 %97 to i8
  %conv209 = sext i8 %conv208 to i32
  %add210 = add nsw i32 0, %conv209
  %mul211 = mul nsw i32 0, %add210
  %add212 = add nsw i32 %mul211, 0
  br label %cond.end.213

cond.end.213:                                     ; preds = %cond.false.207, %cond.true.187
  %cond214 = phi i32 [ %sub206, %cond.true.187 ], [ %add212, %cond.false.207 ]
  %sub215 = sub nsw i32 %cond214, 3
  %cmp216 = icmp slt i32 %conv179, %sub215
  br i1 %cmp216, label %cond.true.294, label %lor.lhs.false.275

cond.false.218:                                   ; preds = %cond.true.176
  %98 = load i32, i32* @initial_argc, align 4
  %conv219 = trunc i32 %98 to i8
  %conv220 = sext i8 %conv219 to i32
  %add221 = add nsw i32 0, %conv220
  %mul222 = mul nsw i32 0, %add221
  %sub223 = sub nsw i32 %mul222, 1
  %cmp224 = icmp slt i32 %sub223, 0
  br i1 %cmp224, label %cond.true.226, label %cond.false.236

cond.true.226:                                    ; preds = %cond.false.218
  %99 = load i32, i32* @initial_argc, align 4
  %conv227 = trunc i32 %99 to i8
  %conv228 = sext i8 %conv227 to i32
  %add229 = add nsw i32 0, %conv228
  %mul230 = mul nsw i32 0, %add229
  %add231 = add nsw i32 %mul230, 1
  %shl232 = shl i32 %add231, 30
  %sub233 = sub nsw i32 %shl232, 1
  %mul234 = mul nsw i32 %sub233, 2
  %add235 = add nsw i32 %mul234, 1
  br label %cond.end.242

cond.false.236:                                   ; preds = %cond.false.218
  %100 = load i32, i32* @initial_argc, align 4
  %conv237 = trunc i32 %100 to i8
  %conv238 = sext i8 %conv237 to i32
  %add239 = add nsw i32 0, %conv238
  %mul240 = mul nsw i32 0, %add239
  %sub241 = sub nsw i32 %mul240, 1
  br label %cond.end.242

cond.end.242:                                     ; preds = %cond.false.236, %cond.true.226
  %cond243 = phi i32 [ %add235, %cond.true.226 ], [ %sub241, %cond.false.236 ]
  %sub244 = sub nsw i32 %cond243, 3
  %101 = load i32, i32* @initial_argc, align 4
  %conv245 = trunc i32 %101 to i8
  %conv246 = sext i8 %conv245 to i32
  %cmp247 = icmp slt i32 %sub244, %conv246
  br i1 %cmp247, label %cond.true.294, label %lor.lhs.false.275

cond.false.249:                                   ; preds = %cond.end
  %102 = load i32, i32* @initial_argc, align 4
  %conv250 = trunc i32 %102 to i8
  %conv251 = sext i8 %conv250 to i32
  %cmp252 = icmp slt i32 %conv251, 0
  br i1 %cmp252, label %cond.true.254, label %cond.false.260

cond.true.254:                                    ; preds = %cond.false.249
  %103 = load i32, i32* @initial_argc, align 4
  %conv255 = trunc i32 %103 to i8
  %conv256 = sext i8 %conv255 to i32
  %add257 = add nsw i32 %conv256, 3
  %cmp258 = icmp sle i32 3, %add257
  br i1 %cmp258, label %cond.true.294, label %lor.lhs.false.275

cond.false.260:                                   ; preds = %cond.false.249
  br i1 false, label %cond.true.261, label %cond.false.269

cond.true.261:                                    ; preds = %cond.false.260
  %104 = load i32, i32* @initial_argc, align 4
  %conv262 = trunc i32 %104 to i8
  %conv263 = sext i8 %conv262 to i32
  %105 = load i32, i32* @initial_argc, align 4
  %conv264 = trunc i32 %105 to i8
  %conv265 = sext i8 %conv264 to i32
  %add266 = add nsw i32 %conv265, 3
  %cmp267 = icmp sle i32 %conv263, %add266
  br i1 %cmp267, label %cond.true.294, label %lor.lhs.false.275

cond.false.269:                                   ; preds = %cond.false.260
  %106 = load i32, i32* @initial_argc, align 4
  %conv270 = trunc i32 %106 to i8
  %conv271 = sext i8 %conv270 to i32
  %add272 = add nsw i32 %conv271, 3
  %cmp273 = icmp slt i32 %add272, 3
  br i1 %cmp273, label %cond.true.294, label %lor.lhs.false.275

lor.lhs.false.275:                                ; preds = %cond.false.269, %cond.true.261, %cond.true.254, %cond.end.242, %cond.end.213
  %107 = load i32, i32* @initial_argc, align 4
  %conv276 = trunc i32 %107 to i8
  %conv277 = sext i8 %conv276 to i32
  %add278 = add nsw i32 %conv277, 3
  %mul279 = mul nsw i32 0, %add278
  %sub280 = sub nsw i32 %mul279, 1
  %cmp281 = icmp slt i32 %sub280, 0
  br i1 %cmp281, label %land.lhs.true, label %lor.lhs.false.288

land.lhs.true:                                    ; preds = %lor.lhs.false.275
  %108 = load i32, i32* @initial_argc, align 4
  %conv283 = trunc i32 %108 to i8
  %conv284 = sext i8 %conv283 to i32
  %add285 = add nsw i32 %conv284, 3
  %cmp286 = icmp slt i32 %add285, -128
  br i1 %cmp286, label %cond.true.294, label %lor.lhs.false.288

lor.lhs.false.288:                                ; preds = %land.lhs.true, %lor.lhs.false.275
  %109 = load i32, i32* @initial_argc, align 4
  %conv289 = trunc i32 %109 to i8
  %conv290 = sext i8 %conv289 to i32
  %add291 = add nsw i32 %conv290, 3
  %cmp292 = icmp slt i32 127, %add291
  br i1 %cmp292, label %cond.true.294, label %cond.false.316

cond.true.294:                                    ; preds = %lor.lhs.false.288, %land.lhs.true, %cond.false.269, %cond.true.261, %cond.true.254, %cond.end.242, %cond.end.213
  %110 = load i32, i32* @initial_argc, align 4
  %conv295 = trunc i32 %110 to i8
  %conv296 = zext i8 %conv295 to i32
  %add297 = add nsw i32 %conv296, 3
  %cmp298 = icmp sle i32 %add297, 127
  br i1 %cmp298, label %cond.true.300, label %cond.false.306

cond.true.300:                                    ; preds = %cond.true.294
  %111 = load i32, i32* @initial_argc, align 4
  %conv301 = trunc i32 %111 to i8
  %conv302 = zext i8 %conv301 to i32
  %add303 = add nsw i32 %conv302, 3
  %conv304 = trunc i32 %add303 to i8
  %conv305 = sext i8 %conv304 to i32
  br label %cond.end.314

cond.false.306:                                   ; preds = %cond.true.294
  %112 = load i32, i32* @initial_argc, align 4
  %conv307 = trunc i32 %112 to i8
  %conv308 = zext i8 %conv307 to i32
  %add309 = add nsw i32 %conv308, 3
  %sub310 = sub nsw i32 %add309, -128
  %conv311 = trunc i32 %sub310 to i8
  %conv312 = sext i8 %conv311 to i32
  %add313 = add nsw i32 %conv312, -128
  br label %cond.end.314

cond.end.314:                                     ; preds = %cond.false.306, %cond.true.300
  %cond315 = phi i32 [ %conv305, %cond.true.300 ], [ %add313, %cond.false.306 ]
  store i32 %cond315, i32* %i, align 4
  br i1 true, label %if.then.1780, label %if.end.1781

cond.false.316:                                   ; preds = %lor.lhs.false.288
  %113 = load i32, i32* @initial_argc, align 4
  %conv317 = trunc i32 %113 to i8
  %conv318 = zext i8 %conv317 to i32
  %add319 = add nsw i32 %conv318, 3
  %cmp320 = icmp sle i32 %add319, 127
  br i1 %cmp320, label %cond.true.322, label %cond.false.328

cond.true.322:                                    ; preds = %cond.false.316
  %114 = load i32, i32* @initial_argc, align 4
  %conv323 = trunc i32 %114 to i8
  %conv324 = zext i8 %conv323 to i32
  %add325 = add nsw i32 %conv324, 3
  %conv326 = trunc i32 %add325 to i8
  %conv327 = sext i8 %conv326 to i32
  br label %cond.end.336

cond.false.328:                                   ; preds = %cond.false.316
  %115 = load i32, i32* @initial_argc, align 4
  %conv329 = trunc i32 %115 to i8
  %conv330 = zext i8 %conv329 to i32
  %add331 = add nsw i32 %conv330, 3
  %sub332 = sub nsw i32 %add331, -128
  %conv333 = trunc i32 %sub332 to i8
  %conv334 = sext i8 %conv333 to i32
  %add335 = add nsw i32 %conv334, -128
  br label %cond.end.336

cond.end.336:                                     ; preds = %cond.false.328, %cond.true.322
  %cond337 = phi i32 [ %conv327, %cond.true.322 ], [ %add335, %cond.false.328 ]
  store i32 %cond337, i32* %i, align 4
  br i1 false, label %if.then.1780, label %if.end.1781

cond.false.338:                                   ; preds = %cond.true
  %116 = load i32, i32* @initial_argc, align 4
  %add339 = add nsw i32 0, %116
  %mul340 = mul nsw i32 0, %add339
  %sub341 = sub nsw i32 %mul340, 1
  %cmp342 = icmp slt i32 %sub341, 0
  br i1 %cmp342, label %cond.true.344, label %cond.false.360

cond.true.344:                                    ; preds = %cond.false.338
  %117 = load i32, i32* @initial_argc, align 4
  %add345 = add nsw i32 0, %117
  %mul346 = mul nsw i32 0, %add345
  %add347 = add nsw i32 %mul346, 0
  %neg348 = xor i32 %add347, -1
  %cmp349 = icmp eq i32 %neg348, -1
  %conv350 = zext i1 %cmp349 to i32
  %sub351 = sub nsw i32 0, %conv350
  %118 = load i32, i32* @initial_argc, align 4
  %add352 = add nsw i32 0, %118
  %mul353 = mul nsw i32 0, %add352
  %add354 = add nsw i32 %mul353, 1
  %shl355 = shl i32 %add354, 30
  %sub356 = sub nsw i32 %shl355, 1
  %mul357 = mul nsw i32 %sub356, 2
  %add358 = add nsw i32 %mul357, 1
  %sub359 = sub nsw i32 %sub351, %add358
  br label %cond.end.364

cond.false.360:                                   ; preds = %cond.false.338
  %119 = load i32, i32* @initial_argc, align 4
  %add361 = add nsw i32 0, %119
  %mul362 = mul nsw i32 0, %add361
  %add363 = add nsw i32 %mul362, 0
  br label %cond.end.364

cond.end.364:                                     ; preds = %cond.false.360, %cond.true.344
  %cond365 = phi i32 [ %sub359, %cond.true.344 ], [ %add363, %cond.false.360 ]
  %cmp366 = icmp slt i32 %cond365, 0
  br i1 %cmp366, label %cond.true.368, label %cond.false.423

cond.true.368:                                    ; preds = %cond.end.364
  br i1 false, label %cond.true.369, label %cond.false.400

cond.true.369:                                    ; preds = %cond.true.368
  %120 = load i32, i32* @initial_argc, align 4
  %121 = load i32, i32* @initial_argc, align 4
  %add370 = add nsw i32 0, %121
  %mul371 = mul nsw i32 0, %add370
  %sub372 = sub nsw i32 %mul371, 1
  %cmp373 = icmp slt i32 %sub372, 0
  br i1 %cmp373, label %cond.true.375, label %cond.false.391

cond.true.375:                                    ; preds = %cond.true.369
  %122 = load i32, i32* @initial_argc, align 4
  %add376 = add nsw i32 0, %122
  %mul377 = mul nsw i32 0, %add376
  %add378 = add nsw i32 %mul377, 0
  %neg379 = xor i32 %add378, -1
  %cmp380 = icmp eq i32 %neg379, -1
  %conv381 = zext i1 %cmp380 to i32
  %sub382 = sub nsw i32 0, %conv381
  %123 = load i32, i32* @initial_argc, align 4
  %add383 = add nsw i32 0, %123
  %mul384 = mul nsw i32 0, %add383
  %add385 = add nsw i32 %mul384, 1
  %shl386 = shl i32 %add385, 30
  %sub387 = sub nsw i32 %shl386, 1
  %mul388 = mul nsw i32 %sub387, 2
  %add389 = add nsw i32 %mul388, 1
  %sub390 = sub nsw i32 %sub382, %add389
  br label %cond.end.395

cond.false.391:                                   ; preds = %cond.true.369
  %124 = load i32, i32* @initial_argc, align 4
  %add392 = add nsw i32 0, %124
  %mul393 = mul nsw i32 0, %add392
  %add394 = add nsw i32 %mul393, 0
  br label %cond.end.395

cond.end.395:                                     ; preds = %cond.false.391, %cond.true.375
  %cond396 = phi i32 [ %sub390, %cond.true.375 ], [ %add394, %cond.false.391 ]
  %sub397 = sub nsw i32 %cond396, 3
  %cmp398 = icmp slt i32 %120, %sub397
  br i1 %cmp398, label %cond.true.453, label %lor.lhs.false.439

cond.false.400:                                   ; preds = %cond.true.368
  %125 = load i32, i32* @initial_argc, align 4
  %add401 = add nsw i32 0, %125
  %mul402 = mul nsw i32 0, %add401
  %sub403 = sub nsw i32 %mul402, 1
  %cmp404 = icmp slt i32 %sub403, 0
  br i1 %cmp404, label %cond.true.406, label %cond.false.414

cond.true.406:                                    ; preds = %cond.false.400
  %126 = load i32, i32* @initial_argc, align 4
  %add407 = add nsw i32 0, %126
  %mul408 = mul nsw i32 0, %add407
  %add409 = add nsw i32 %mul408, 1
  %shl410 = shl i32 %add409, 30
  %sub411 = sub nsw i32 %shl410, 1
  %mul412 = mul nsw i32 %sub411, 2
  %add413 = add nsw i32 %mul412, 1
  br label %cond.end.418

cond.false.414:                                   ; preds = %cond.false.400
  %127 = load i32, i32* @initial_argc, align 4
  %add415 = add nsw i32 0, %127
  %mul416 = mul nsw i32 0, %add415
  %sub417 = sub nsw i32 %mul416, 1
  br label %cond.end.418

cond.end.418:                                     ; preds = %cond.false.414, %cond.true.406
  %cond419 = phi i32 [ %add413, %cond.true.406 ], [ %sub417, %cond.false.414 ]
  %sub420 = sub nsw i32 %cond419, 3
  %128 = load i32, i32* @initial_argc, align 4
  %cmp421 = icmp slt i32 %sub420, %128
  br i1 %cmp421, label %cond.true.453, label %lor.lhs.false.439

cond.false.423:                                   ; preds = %cond.end.364
  %129 = load i32, i32* @initial_argc, align 4
  %cmp424 = icmp slt i32 %129, 0
  br i1 %cmp424, label %cond.true.426, label %cond.false.430

cond.true.426:                                    ; preds = %cond.false.423
  %130 = load i32, i32* @initial_argc, align 4
  %add427 = add nsw i32 %130, 3
  %cmp428 = icmp sle i32 3, %add427
  br i1 %cmp428, label %cond.true.453, label %lor.lhs.false.439

cond.false.430:                                   ; preds = %cond.false.423
  br i1 false, label %cond.true.431, label %cond.false.435

cond.true.431:                                    ; preds = %cond.false.430
  %131 = load i32, i32* @initial_argc, align 4
  %132 = load i32, i32* @initial_argc, align 4
  %add432 = add nsw i32 %132, 3
  %cmp433 = icmp sle i32 %131, %add432
  br i1 %cmp433, label %cond.true.453, label %lor.lhs.false.439

cond.false.435:                                   ; preds = %cond.false.430
  %133 = load i32, i32* @initial_argc, align 4
  %add436 = add nsw i32 %133, 3
  %cmp437 = icmp slt i32 %add436, 3
  br i1 %cmp437, label %cond.true.453, label %lor.lhs.false.439

lor.lhs.false.439:                                ; preds = %cond.false.435, %cond.true.431, %cond.true.426, %cond.end.418, %cond.end.395
  %134 = load i32, i32* @initial_argc, align 4
  %add440 = add nsw i32 %134, 3
  %mul441 = mul nsw i32 0, %add440
  %sub442 = sub nsw i32 %mul441, 1
  %cmp443 = icmp slt i32 %sub442, 0
  br i1 %cmp443, label %land.lhs.true.445, label %lor.lhs.false.449

land.lhs.true.445:                                ; preds = %lor.lhs.false.439
  %135 = load i32, i32* @initial_argc, align 4
  %add446 = add nsw i32 %135, 3
  %cmp447 = icmp slt i32 %add446, -128
  br i1 %cmp447, label %cond.true.453, label %lor.lhs.false.449

lor.lhs.false.449:                                ; preds = %land.lhs.true.445, %lor.lhs.false.439
  %136 = load i32, i32* @initial_argc, align 4
  %add450 = add nsw i32 %136, 3
  %cmp451 = icmp slt i32 127, %add450
  br i1 %cmp451, label %cond.true.453, label %cond.false.475

cond.true.453:                                    ; preds = %lor.lhs.false.449, %land.lhs.true.445, %cond.false.435, %cond.true.431, %cond.true.426, %cond.end.418, %cond.end.395
  %137 = load i32, i32* @initial_argc, align 4
  %conv454 = trunc i32 %137 to i8
  %conv455 = zext i8 %conv454 to i32
  %add456 = add nsw i32 %conv455, 3
  %cmp457 = icmp sle i32 %add456, 127
  br i1 %cmp457, label %cond.true.459, label %cond.false.465

cond.true.459:                                    ; preds = %cond.true.453
  %138 = load i32, i32* @initial_argc, align 4
  %conv460 = trunc i32 %138 to i8
  %conv461 = zext i8 %conv460 to i32
  %add462 = add nsw i32 %conv461, 3
  %conv463 = trunc i32 %add462 to i8
  %conv464 = sext i8 %conv463 to i32
  br label %cond.end.473

cond.false.465:                                   ; preds = %cond.true.453
  %139 = load i32, i32* @initial_argc, align 4
  %conv466 = trunc i32 %139 to i8
  %conv467 = zext i8 %conv466 to i32
  %add468 = add nsw i32 %conv467, 3
  %sub469 = sub nsw i32 %add468, -128
  %conv470 = trunc i32 %sub469 to i8
  %conv471 = sext i8 %conv470 to i32
  %add472 = add nsw i32 %conv471, -128
  br label %cond.end.473

cond.end.473:                                     ; preds = %cond.false.465, %cond.true.459
  %cond474 = phi i32 [ %conv464, %cond.true.459 ], [ %add472, %cond.false.465 ]
  store i32 %cond474, i32* %i, align 4
  br i1 true, label %if.then.1780, label %if.end.1781

cond.false.475:                                   ; preds = %lor.lhs.false.449
  %140 = load i32, i32* @initial_argc, align 4
  %conv476 = trunc i32 %140 to i8
  %conv477 = zext i8 %conv476 to i32
  %add478 = add nsw i32 %conv477, 3
  %cmp479 = icmp sle i32 %add478, 127
  br i1 %cmp479, label %cond.true.481, label %cond.false.487

cond.true.481:                                    ; preds = %cond.false.475
  %141 = load i32, i32* @initial_argc, align 4
  %conv482 = trunc i32 %141 to i8
  %conv483 = zext i8 %conv482 to i32
  %add484 = add nsw i32 %conv483, 3
  %conv485 = trunc i32 %add484 to i8
  %conv486 = sext i8 %conv485 to i32
  br label %cond.end.495

cond.false.487:                                   ; preds = %cond.false.475
  %142 = load i32, i32* @initial_argc, align 4
  %conv488 = trunc i32 %142 to i8
  %conv489 = zext i8 %conv488 to i32
  %add490 = add nsw i32 %conv489, 3
  %sub491 = sub nsw i32 %add490, -128
  %conv492 = trunc i32 %sub491 to i8
  %conv493 = sext i8 %conv492 to i32
  %add494 = add nsw i32 %conv493, -128
  br label %cond.end.495

cond.end.495:                                     ; preds = %cond.false.487, %cond.true.481
  %cond496 = phi i32 [ %conv486, %cond.true.481 ], [ %add494, %cond.false.487 ]
  store i32 %cond496, i32* %i, align 4
  br i1 false, label %if.then.1780, label %if.end.1781

cond.false.497:                                   ; preds = %if.end.134
  br i1 false, label %cond.true.498, label %cond.false.859

cond.true.498:                                    ; preds = %cond.false.497
  br i1 false, label %cond.true.499, label %cond.false.700

cond.true.499:                                    ; preds = %cond.true.498
  %143 = load i32, i32* @initial_argc, align 4
  %conv500 = trunc i32 %143 to i16
  %conv501 = sext i16 %conv500 to i32
  %add502 = add nsw i32 0, %conv501
  %mul503 = mul nsw i32 0, %add502
  %sub504 = sub nsw i32 %mul503, 1
  %cmp505 = icmp slt i32 %sub504, 0
  br i1 %cmp505, label %cond.true.507, label %cond.false.527

cond.true.507:                                    ; preds = %cond.true.499
  %144 = load i32, i32* @initial_argc, align 4
  %conv508 = trunc i32 %144 to i16
  %conv509 = sext i16 %conv508 to i32
  %add510 = add nsw i32 0, %conv509
  %mul511 = mul nsw i32 0, %add510
  %add512 = add nsw i32 %mul511, 0
  %neg513 = xor i32 %add512, -1
  %cmp514 = icmp eq i32 %neg513, -1
  %conv515 = zext i1 %cmp514 to i32
  %sub516 = sub nsw i32 0, %conv515
  %145 = load i32, i32* @initial_argc, align 4
  %conv517 = trunc i32 %145 to i16
  %conv518 = sext i16 %conv517 to i32
  %add519 = add nsw i32 0, %conv518
  %mul520 = mul nsw i32 0, %add519
  %add521 = add nsw i32 %mul520, 1
  %shl522 = shl i32 %add521, 30
  %sub523 = sub nsw i32 %shl522, 1
  %mul524 = mul nsw i32 %sub523, 2
  %add525 = add nsw i32 %mul524, 1
  %sub526 = sub nsw i32 %sub516, %add525
  br label %cond.end.533

cond.false.527:                                   ; preds = %cond.true.499
  %146 = load i32, i32* @initial_argc, align 4
  %conv528 = trunc i32 %146 to i16
  %conv529 = sext i16 %conv528 to i32
  %add530 = add nsw i32 0, %conv529
  %mul531 = mul nsw i32 0, %add530
  %add532 = add nsw i32 %mul531, 0
  br label %cond.end.533

cond.end.533:                                     ; preds = %cond.false.527, %cond.true.507
  %cond534 = phi i32 [ %sub526, %cond.true.507 ], [ %add532, %cond.false.527 ]
  %cmp535 = icmp slt i32 %cond534, 0
  br i1 %cmp535, label %cond.true.537, label %cond.false.610

cond.true.537:                                    ; preds = %cond.end.533
  br i1 false, label %cond.true.538, label %cond.false.579

cond.true.538:                                    ; preds = %cond.true.537
  %147 = load i32, i32* @initial_argc, align 4
  %conv539 = trunc i32 %147 to i16
  %conv540 = sext i16 %conv539 to i32
  %148 = load i32, i32* @initial_argc, align 4
  %conv541 = trunc i32 %148 to i16
  %conv542 = sext i16 %conv541 to i32
  %add543 = add nsw i32 0, %conv542
  %mul544 = mul nsw i32 0, %add543
  %sub545 = sub nsw i32 %mul544, 1
  %cmp546 = icmp slt i32 %sub545, 0
  br i1 %cmp546, label %cond.true.548, label %cond.false.568

cond.true.548:                                    ; preds = %cond.true.538
  %149 = load i32, i32* @initial_argc, align 4
  %conv549 = trunc i32 %149 to i16
  %conv550 = sext i16 %conv549 to i32
  %add551 = add nsw i32 0, %conv550
  %mul552 = mul nsw i32 0, %add551
  %add553 = add nsw i32 %mul552, 0
  %neg554 = xor i32 %add553, -1
  %cmp555 = icmp eq i32 %neg554, -1
  %conv556 = zext i1 %cmp555 to i32
  %sub557 = sub nsw i32 0, %conv556
  %150 = load i32, i32* @initial_argc, align 4
  %conv558 = trunc i32 %150 to i16
  %conv559 = sext i16 %conv558 to i32
  %add560 = add nsw i32 0, %conv559
  %mul561 = mul nsw i32 0, %add560
  %add562 = add nsw i32 %mul561, 1
  %shl563 = shl i32 %add562, 30
  %sub564 = sub nsw i32 %shl563, 1
  %mul565 = mul nsw i32 %sub564, 2
  %add566 = add nsw i32 %mul565, 1
  %sub567 = sub nsw i32 %sub557, %add566
  br label %cond.end.574

cond.false.568:                                   ; preds = %cond.true.538
  %151 = load i32, i32* @initial_argc, align 4
  %conv569 = trunc i32 %151 to i16
  %conv570 = sext i16 %conv569 to i32
  %add571 = add nsw i32 0, %conv570
  %mul572 = mul nsw i32 0, %add571
  %add573 = add nsw i32 %mul572, 0
  br label %cond.end.574

cond.end.574:                                     ; preds = %cond.false.568, %cond.true.548
  %cond575 = phi i32 [ %sub567, %cond.true.548 ], [ %add573, %cond.false.568 ]
  %sub576 = sub nsw i32 %cond575, 3
  %cmp577 = icmp slt i32 %conv540, %sub576
  br i1 %cmp577, label %cond.true.656, label %lor.lhs.false.636

cond.false.579:                                   ; preds = %cond.true.537
  %152 = load i32, i32* @initial_argc, align 4
  %conv580 = trunc i32 %152 to i16
  %conv581 = sext i16 %conv580 to i32
  %add582 = add nsw i32 0, %conv581
  %mul583 = mul nsw i32 0, %add582
  %sub584 = sub nsw i32 %mul583, 1
  %cmp585 = icmp slt i32 %sub584, 0
  br i1 %cmp585, label %cond.true.587, label %cond.false.597

cond.true.587:                                    ; preds = %cond.false.579
  %153 = load i32, i32* @initial_argc, align 4
  %conv588 = trunc i32 %153 to i16
  %conv589 = sext i16 %conv588 to i32
  %add590 = add nsw i32 0, %conv589
  %mul591 = mul nsw i32 0, %add590
  %add592 = add nsw i32 %mul591, 1
  %shl593 = shl i32 %add592, 30
  %sub594 = sub nsw i32 %shl593, 1
  %mul595 = mul nsw i32 %sub594, 2
  %add596 = add nsw i32 %mul595, 1
  br label %cond.end.603

cond.false.597:                                   ; preds = %cond.false.579
  %154 = load i32, i32* @initial_argc, align 4
  %conv598 = trunc i32 %154 to i16
  %conv599 = sext i16 %conv598 to i32
  %add600 = add nsw i32 0, %conv599
  %mul601 = mul nsw i32 0, %add600
  %sub602 = sub nsw i32 %mul601, 1
  br label %cond.end.603

cond.end.603:                                     ; preds = %cond.false.597, %cond.true.587
  %cond604 = phi i32 [ %add596, %cond.true.587 ], [ %sub602, %cond.false.597 ]
  %sub605 = sub nsw i32 %cond604, 3
  %155 = load i32, i32* @initial_argc, align 4
  %conv606 = trunc i32 %155 to i16
  %conv607 = sext i16 %conv606 to i32
  %cmp608 = icmp slt i32 %sub605, %conv607
  br i1 %cmp608, label %cond.true.656, label %lor.lhs.false.636

cond.false.610:                                   ; preds = %cond.end.533
  %156 = load i32, i32* @initial_argc, align 4
  %conv611 = trunc i32 %156 to i16
  %conv612 = sext i16 %conv611 to i32
  %cmp613 = icmp slt i32 %conv612, 0
  br i1 %cmp613, label %cond.true.615, label %cond.false.621

cond.true.615:                                    ; preds = %cond.false.610
  %157 = load i32, i32* @initial_argc, align 4
  %conv616 = trunc i32 %157 to i16
  %conv617 = sext i16 %conv616 to i32
  %add618 = add nsw i32 %conv617, 3
  %cmp619 = icmp sle i32 3, %add618
  br i1 %cmp619, label %cond.true.656, label %lor.lhs.false.636

cond.false.621:                                   ; preds = %cond.false.610
  br i1 false, label %cond.true.622, label %cond.false.630

cond.true.622:                                    ; preds = %cond.false.621
  %158 = load i32, i32* @initial_argc, align 4
  %conv623 = trunc i32 %158 to i16
  %conv624 = sext i16 %conv623 to i32
  %159 = load i32, i32* @initial_argc, align 4
  %conv625 = trunc i32 %159 to i16
  %conv626 = sext i16 %conv625 to i32
  %add627 = add nsw i32 %conv626, 3
  %cmp628 = icmp sle i32 %conv624, %add627
  br i1 %cmp628, label %cond.true.656, label %lor.lhs.false.636

cond.false.630:                                   ; preds = %cond.false.621
  %160 = load i32, i32* @initial_argc, align 4
  %conv631 = trunc i32 %160 to i16
  %conv632 = sext i16 %conv631 to i32
  %add633 = add nsw i32 %conv632, 3
  %cmp634 = icmp slt i32 %add633, 3
  br i1 %cmp634, label %cond.true.656, label %lor.lhs.false.636

lor.lhs.false.636:                                ; preds = %cond.false.630, %cond.true.622, %cond.true.615, %cond.end.603, %cond.end.574
  %161 = load i32, i32* @initial_argc, align 4
  %conv637 = trunc i32 %161 to i16
  %conv638 = sext i16 %conv637 to i32
  %add639 = add nsw i32 %conv638, 3
  %mul640 = mul nsw i32 0, %add639
  %sub641 = sub nsw i32 %mul640, 1
  %cmp642 = icmp slt i32 %sub641, 0
  br i1 %cmp642, label %land.lhs.true.644, label %lor.lhs.false.650

land.lhs.true.644:                                ; preds = %lor.lhs.false.636
  %162 = load i32, i32* @initial_argc, align 4
  %conv645 = trunc i32 %162 to i16
  %conv646 = sext i16 %conv645 to i32
  %add647 = add nsw i32 %conv646, 3
  %cmp648 = icmp slt i32 %add647, -32768
  br i1 %cmp648, label %cond.true.656, label %lor.lhs.false.650

lor.lhs.false.650:                                ; preds = %land.lhs.true.644, %lor.lhs.false.636
  %163 = load i32, i32* @initial_argc, align 4
  %conv651 = trunc i32 %163 to i16
  %conv652 = sext i16 %conv651 to i32
  %add653 = add nsw i32 %conv652, 3
  %cmp654 = icmp slt i32 32767, %add653
  br i1 %cmp654, label %cond.true.656, label %cond.false.678

cond.true.656:                                    ; preds = %lor.lhs.false.650, %land.lhs.true.644, %cond.false.630, %cond.true.622, %cond.true.615, %cond.end.603, %cond.end.574
  %164 = load i32, i32* @initial_argc, align 4
  %conv657 = trunc i32 %164 to i16
  %conv658 = zext i16 %conv657 to i32
  %add659 = add nsw i32 %conv658, 3
  %cmp660 = icmp sle i32 %add659, 32767
  br i1 %cmp660, label %cond.true.662, label %cond.false.668

cond.true.662:                                    ; preds = %cond.true.656
  %165 = load i32, i32* @initial_argc, align 4
  %conv663 = trunc i32 %165 to i16
  %conv664 = zext i16 %conv663 to i32
  %add665 = add nsw i32 %conv664, 3
  %conv666 = trunc i32 %add665 to i16
  %conv667 = sext i16 %conv666 to i32
  br label %cond.end.676

cond.false.668:                                   ; preds = %cond.true.656
  %166 = load i32, i32* @initial_argc, align 4
  %conv669 = trunc i32 %166 to i16
  %conv670 = zext i16 %conv669 to i32
  %add671 = add nsw i32 %conv670, 3
  %sub672 = sub nsw i32 %add671, -32768
  %conv673 = trunc i32 %sub672 to i16
  %conv674 = sext i16 %conv673 to i32
  %add675 = add nsw i32 %conv674, -32768
  br label %cond.end.676

cond.end.676:                                     ; preds = %cond.false.668, %cond.true.662
  %cond677 = phi i32 [ %conv667, %cond.true.662 ], [ %add675, %cond.false.668 ]
  store i32 %cond677, i32* %i, align 4
  br i1 true, label %if.then.1780, label %if.end.1781

cond.false.678:                                   ; preds = %lor.lhs.false.650
  %167 = load i32, i32* @initial_argc, align 4
  %conv679 = trunc i32 %167 to i16
  %conv680 = zext i16 %conv679 to i32
  %add681 = add nsw i32 %conv680, 3
  %cmp682 = icmp sle i32 %add681, 32767
  br i1 %cmp682, label %cond.true.684, label %cond.false.690

cond.true.684:                                    ; preds = %cond.false.678
  %168 = load i32, i32* @initial_argc, align 4
  %conv685 = trunc i32 %168 to i16
  %conv686 = zext i16 %conv685 to i32
  %add687 = add nsw i32 %conv686, 3
  %conv688 = trunc i32 %add687 to i16
  %conv689 = sext i16 %conv688 to i32
  br label %cond.end.698

cond.false.690:                                   ; preds = %cond.false.678
  %169 = load i32, i32* @initial_argc, align 4
  %conv691 = trunc i32 %169 to i16
  %conv692 = zext i16 %conv691 to i32
  %add693 = add nsw i32 %conv692, 3
  %sub694 = sub nsw i32 %add693, -32768
  %conv695 = trunc i32 %sub694 to i16
  %conv696 = sext i16 %conv695 to i32
  %add697 = add nsw i32 %conv696, -32768
  br label %cond.end.698

cond.end.698:                                     ; preds = %cond.false.690, %cond.true.684
  %cond699 = phi i32 [ %conv689, %cond.true.684 ], [ %add697, %cond.false.690 ]
  store i32 %cond699, i32* %i, align 4
  br i1 false, label %if.then.1780, label %if.end.1781

cond.false.700:                                   ; preds = %cond.true.498
  %170 = load i32, i32* @initial_argc, align 4
  %add701 = add nsw i32 0, %170
  %mul702 = mul nsw i32 0, %add701
  %sub703 = sub nsw i32 %mul702, 1
  %cmp704 = icmp slt i32 %sub703, 0
  br i1 %cmp704, label %cond.true.706, label %cond.false.722

cond.true.706:                                    ; preds = %cond.false.700
  %171 = load i32, i32* @initial_argc, align 4
  %add707 = add nsw i32 0, %171
  %mul708 = mul nsw i32 0, %add707
  %add709 = add nsw i32 %mul708, 0
  %neg710 = xor i32 %add709, -1
  %cmp711 = icmp eq i32 %neg710, -1
  %conv712 = zext i1 %cmp711 to i32
  %sub713 = sub nsw i32 0, %conv712
  %172 = load i32, i32* @initial_argc, align 4
  %add714 = add nsw i32 0, %172
  %mul715 = mul nsw i32 0, %add714
  %add716 = add nsw i32 %mul715, 1
  %shl717 = shl i32 %add716, 30
  %sub718 = sub nsw i32 %shl717, 1
  %mul719 = mul nsw i32 %sub718, 2
  %add720 = add nsw i32 %mul719, 1
  %sub721 = sub nsw i32 %sub713, %add720
  br label %cond.end.726

cond.false.722:                                   ; preds = %cond.false.700
  %173 = load i32, i32* @initial_argc, align 4
  %add723 = add nsw i32 0, %173
  %mul724 = mul nsw i32 0, %add723
  %add725 = add nsw i32 %mul724, 0
  br label %cond.end.726

cond.end.726:                                     ; preds = %cond.false.722, %cond.true.706
  %cond727 = phi i32 [ %sub721, %cond.true.706 ], [ %add725, %cond.false.722 ]
  %cmp728 = icmp slt i32 %cond727, 0
  br i1 %cmp728, label %cond.true.730, label %cond.false.785

cond.true.730:                                    ; preds = %cond.end.726
  br i1 false, label %cond.true.731, label %cond.false.762

cond.true.731:                                    ; preds = %cond.true.730
  %174 = load i32, i32* @initial_argc, align 4
  %175 = load i32, i32* @initial_argc, align 4
  %add732 = add nsw i32 0, %175
  %mul733 = mul nsw i32 0, %add732
  %sub734 = sub nsw i32 %mul733, 1
  %cmp735 = icmp slt i32 %sub734, 0
  br i1 %cmp735, label %cond.true.737, label %cond.false.753

cond.true.737:                                    ; preds = %cond.true.731
  %176 = load i32, i32* @initial_argc, align 4
  %add738 = add nsw i32 0, %176
  %mul739 = mul nsw i32 0, %add738
  %add740 = add nsw i32 %mul739, 0
  %neg741 = xor i32 %add740, -1
  %cmp742 = icmp eq i32 %neg741, -1
  %conv743 = zext i1 %cmp742 to i32
  %sub744 = sub nsw i32 0, %conv743
  %177 = load i32, i32* @initial_argc, align 4
  %add745 = add nsw i32 0, %177
  %mul746 = mul nsw i32 0, %add745
  %add747 = add nsw i32 %mul746, 1
  %shl748 = shl i32 %add747, 30
  %sub749 = sub nsw i32 %shl748, 1
  %mul750 = mul nsw i32 %sub749, 2
  %add751 = add nsw i32 %mul750, 1
  %sub752 = sub nsw i32 %sub744, %add751
  br label %cond.end.757

cond.false.753:                                   ; preds = %cond.true.731
  %178 = load i32, i32* @initial_argc, align 4
  %add754 = add nsw i32 0, %178
  %mul755 = mul nsw i32 0, %add754
  %add756 = add nsw i32 %mul755, 0
  br label %cond.end.757

cond.end.757:                                     ; preds = %cond.false.753, %cond.true.737
  %cond758 = phi i32 [ %sub752, %cond.true.737 ], [ %add756, %cond.false.753 ]
  %sub759 = sub nsw i32 %cond758, 3
  %cmp760 = icmp slt i32 %174, %sub759
  br i1 %cmp760, label %cond.true.815, label %lor.lhs.false.801

cond.false.762:                                   ; preds = %cond.true.730
  %179 = load i32, i32* @initial_argc, align 4
  %add763 = add nsw i32 0, %179
  %mul764 = mul nsw i32 0, %add763
  %sub765 = sub nsw i32 %mul764, 1
  %cmp766 = icmp slt i32 %sub765, 0
  br i1 %cmp766, label %cond.true.768, label %cond.false.776

cond.true.768:                                    ; preds = %cond.false.762
  %180 = load i32, i32* @initial_argc, align 4
  %add769 = add nsw i32 0, %180
  %mul770 = mul nsw i32 0, %add769
  %add771 = add nsw i32 %mul770, 1
  %shl772 = shl i32 %add771, 30
  %sub773 = sub nsw i32 %shl772, 1
  %mul774 = mul nsw i32 %sub773, 2
  %add775 = add nsw i32 %mul774, 1
  br label %cond.end.780

cond.false.776:                                   ; preds = %cond.false.762
  %181 = load i32, i32* @initial_argc, align 4
  %add777 = add nsw i32 0, %181
  %mul778 = mul nsw i32 0, %add777
  %sub779 = sub nsw i32 %mul778, 1
  br label %cond.end.780

cond.end.780:                                     ; preds = %cond.false.776, %cond.true.768
  %cond781 = phi i32 [ %add775, %cond.true.768 ], [ %sub779, %cond.false.776 ]
  %sub782 = sub nsw i32 %cond781, 3
  %182 = load i32, i32* @initial_argc, align 4
  %cmp783 = icmp slt i32 %sub782, %182
  br i1 %cmp783, label %cond.true.815, label %lor.lhs.false.801

cond.false.785:                                   ; preds = %cond.end.726
  %183 = load i32, i32* @initial_argc, align 4
  %cmp786 = icmp slt i32 %183, 0
  br i1 %cmp786, label %cond.true.788, label %cond.false.792

cond.true.788:                                    ; preds = %cond.false.785
  %184 = load i32, i32* @initial_argc, align 4
  %add789 = add nsw i32 %184, 3
  %cmp790 = icmp sle i32 3, %add789
  br i1 %cmp790, label %cond.true.815, label %lor.lhs.false.801

cond.false.792:                                   ; preds = %cond.false.785
  br i1 false, label %cond.true.793, label %cond.false.797

cond.true.793:                                    ; preds = %cond.false.792
  %185 = load i32, i32* @initial_argc, align 4
  %186 = load i32, i32* @initial_argc, align 4
  %add794 = add nsw i32 %186, 3
  %cmp795 = icmp sle i32 %185, %add794
  br i1 %cmp795, label %cond.true.815, label %lor.lhs.false.801

cond.false.797:                                   ; preds = %cond.false.792
  %187 = load i32, i32* @initial_argc, align 4
  %add798 = add nsw i32 %187, 3
  %cmp799 = icmp slt i32 %add798, 3
  br i1 %cmp799, label %cond.true.815, label %lor.lhs.false.801

lor.lhs.false.801:                                ; preds = %cond.false.797, %cond.true.793, %cond.true.788, %cond.end.780, %cond.end.757
  %188 = load i32, i32* @initial_argc, align 4
  %add802 = add nsw i32 %188, 3
  %mul803 = mul nsw i32 0, %add802
  %sub804 = sub nsw i32 %mul803, 1
  %cmp805 = icmp slt i32 %sub804, 0
  br i1 %cmp805, label %land.lhs.true.807, label %lor.lhs.false.811

land.lhs.true.807:                                ; preds = %lor.lhs.false.801
  %189 = load i32, i32* @initial_argc, align 4
  %add808 = add nsw i32 %189, 3
  %cmp809 = icmp slt i32 %add808, -32768
  br i1 %cmp809, label %cond.true.815, label %lor.lhs.false.811

lor.lhs.false.811:                                ; preds = %land.lhs.true.807, %lor.lhs.false.801
  %190 = load i32, i32* @initial_argc, align 4
  %add812 = add nsw i32 %190, 3
  %cmp813 = icmp slt i32 32767, %add812
  br i1 %cmp813, label %cond.true.815, label %cond.false.837

cond.true.815:                                    ; preds = %lor.lhs.false.811, %land.lhs.true.807, %cond.false.797, %cond.true.793, %cond.true.788, %cond.end.780, %cond.end.757
  %191 = load i32, i32* @initial_argc, align 4
  %conv816 = trunc i32 %191 to i16
  %conv817 = zext i16 %conv816 to i32
  %add818 = add nsw i32 %conv817, 3
  %cmp819 = icmp sle i32 %add818, 32767
  br i1 %cmp819, label %cond.true.821, label %cond.false.827

cond.true.821:                                    ; preds = %cond.true.815
  %192 = load i32, i32* @initial_argc, align 4
  %conv822 = trunc i32 %192 to i16
  %conv823 = zext i16 %conv822 to i32
  %add824 = add nsw i32 %conv823, 3
  %conv825 = trunc i32 %add824 to i16
  %conv826 = sext i16 %conv825 to i32
  br label %cond.end.835

cond.false.827:                                   ; preds = %cond.true.815
  %193 = load i32, i32* @initial_argc, align 4
  %conv828 = trunc i32 %193 to i16
  %conv829 = zext i16 %conv828 to i32
  %add830 = add nsw i32 %conv829, 3
  %sub831 = sub nsw i32 %add830, -32768
  %conv832 = trunc i32 %sub831 to i16
  %conv833 = sext i16 %conv832 to i32
  %add834 = add nsw i32 %conv833, -32768
  br label %cond.end.835

cond.end.835:                                     ; preds = %cond.false.827, %cond.true.821
  %cond836 = phi i32 [ %conv826, %cond.true.821 ], [ %add834, %cond.false.827 ]
  store i32 %cond836, i32* %i, align 4
  br i1 true, label %if.then.1780, label %if.end.1781

cond.false.837:                                   ; preds = %lor.lhs.false.811
  %194 = load i32, i32* @initial_argc, align 4
  %conv838 = trunc i32 %194 to i16
  %conv839 = zext i16 %conv838 to i32
  %add840 = add nsw i32 %conv839, 3
  %cmp841 = icmp sle i32 %add840, 32767
  br i1 %cmp841, label %cond.true.843, label %cond.false.849

cond.true.843:                                    ; preds = %cond.false.837
  %195 = load i32, i32* @initial_argc, align 4
  %conv844 = trunc i32 %195 to i16
  %conv845 = zext i16 %conv844 to i32
  %add846 = add nsw i32 %conv845, 3
  %conv847 = trunc i32 %add846 to i16
  %conv848 = sext i16 %conv847 to i32
  br label %cond.end.857

cond.false.849:                                   ; preds = %cond.false.837
  %196 = load i32, i32* @initial_argc, align 4
  %conv850 = trunc i32 %196 to i16
  %conv851 = zext i16 %conv850 to i32
  %add852 = add nsw i32 %conv851, 3
  %sub853 = sub nsw i32 %add852, -32768
  %conv854 = trunc i32 %sub853 to i16
  %conv855 = sext i16 %conv854 to i32
  %add856 = add nsw i32 %conv855, -32768
  br label %cond.end.857

cond.end.857:                                     ; preds = %cond.false.849, %cond.true.843
  %cond858 = phi i32 [ %conv848, %cond.true.843 ], [ %add856, %cond.false.849 ]
  store i32 %cond858, i32* %i, align 4
  br i1 false, label %if.then.1780, label %if.end.1781

cond.false.859:                                   ; preds = %cond.false.497
  br i1 true, label %cond.true.860, label %cond.false.1139

cond.true.860:                                    ; preds = %cond.false.859
  br i1 false, label %cond.true.861, label %cond.false.1000

cond.true.861:                                    ; preds = %cond.true.860
  %197 = load i32, i32* @initial_argc, align 4
  %add862 = add nsw i32 0, %197
  %mul863 = mul nsw i32 0, %add862
  %sub864 = sub nsw i32 %mul863, 1
  %cmp865 = icmp slt i32 %sub864, 0
  br i1 %cmp865, label %cond.true.867, label %cond.false.883

cond.true.867:                                    ; preds = %cond.true.861
  %198 = load i32, i32* @initial_argc, align 4
  %add868 = add nsw i32 0, %198
  %mul869 = mul nsw i32 0, %add868
  %add870 = add nsw i32 %mul869, 0
  %neg871 = xor i32 %add870, -1
  %cmp872 = icmp eq i32 %neg871, -1
  %conv873 = zext i1 %cmp872 to i32
  %sub874 = sub nsw i32 0, %conv873
  %199 = load i32, i32* @initial_argc, align 4
  %add875 = add nsw i32 0, %199
  %mul876 = mul nsw i32 0, %add875
  %add877 = add nsw i32 %mul876, 1
  %shl878 = shl i32 %add877, 30
  %sub879 = sub nsw i32 %shl878, 1
  %mul880 = mul nsw i32 %sub879, 2
  %add881 = add nsw i32 %mul880, 1
  %sub882 = sub nsw i32 %sub874, %add881
  br label %cond.end.887

cond.false.883:                                   ; preds = %cond.true.861
  %200 = load i32, i32* @initial_argc, align 4
  %add884 = add nsw i32 0, %200
  %mul885 = mul nsw i32 0, %add884
  %add886 = add nsw i32 %mul885, 0
  br label %cond.end.887

cond.end.887:                                     ; preds = %cond.false.883, %cond.true.867
  %cond888 = phi i32 [ %sub882, %cond.true.867 ], [ %add886, %cond.false.883 ]
  %cmp889 = icmp slt i32 %cond888, 0
  br i1 %cmp889, label %cond.true.891, label %cond.false.946

cond.true.891:                                    ; preds = %cond.end.887
  br i1 false, label %cond.true.892, label %cond.false.923

cond.true.892:                                    ; preds = %cond.true.891
  %201 = load i32, i32* @initial_argc, align 4
  %202 = load i32, i32* @initial_argc, align 4
  %add893 = add nsw i32 0, %202
  %mul894 = mul nsw i32 0, %add893
  %sub895 = sub nsw i32 %mul894, 1
  %cmp896 = icmp slt i32 %sub895, 0
  br i1 %cmp896, label %cond.true.898, label %cond.false.914

cond.true.898:                                    ; preds = %cond.true.892
  %203 = load i32, i32* @initial_argc, align 4
  %add899 = add nsw i32 0, %203
  %mul900 = mul nsw i32 0, %add899
  %add901 = add nsw i32 %mul900, 0
  %neg902 = xor i32 %add901, -1
  %cmp903 = icmp eq i32 %neg902, -1
  %conv904 = zext i1 %cmp903 to i32
  %sub905 = sub nsw i32 0, %conv904
  %204 = load i32, i32* @initial_argc, align 4
  %add906 = add nsw i32 0, %204
  %mul907 = mul nsw i32 0, %add906
  %add908 = add nsw i32 %mul907, 1
  %shl909 = shl i32 %add908, 30
  %sub910 = sub nsw i32 %shl909, 1
  %mul911 = mul nsw i32 %sub910, 2
  %add912 = add nsw i32 %mul911, 1
  %sub913 = sub nsw i32 %sub905, %add912
  br label %cond.end.918

cond.false.914:                                   ; preds = %cond.true.892
  %205 = load i32, i32* @initial_argc, align 4
  %add915 = add nsw i32 0, %205
  %mul916 = mul nsw i32 0, %add915
  %add917 = add nsw i32 %mul916, 0
  br label %cond.end.918

cond.end.918:                                     ; preds = %cond.false.914, %cond.true.898
  %cond919 = phi i32 [ %sub913, %cond.true.898 ], [ %add917, %cond.false.914 ]
  %sub920 = sub nsw i32 %cond919, 3
  %cmp921 = icmp slt i32 %201, %sub920
  br i1 %cmp921, label %cond.true.976, label %lor.lhs.false.962

cond.false.923:                                   ; preds = %cond.true.891
  %206 = load i32, i32* @initial_argc, align 4
  %add924 = add nsw i32 0, %206
  %mul925 = mul nsw i32 0, %add924
  %sub926 = sub nsw i32 %mul925, 1
  %cmp927 = icmp slt i32 %sub926, 0
  br i1 %cmp927, label %cond.true.929, label %cond.false.937

cond.true.929:                                    ; preds = %cond.false.923
  %207 = load i32, i32* @initial_argc, align 4
  %add930 = add nsw i32 0, %207
  %mul931 = mul nsw i32 0, %add930
  %add932 = add nsw i32 %mul931, 1
  %shl933 = shl i32 %add932, 30
  %sub934 = sub nsw i32 %shl933, 1
  %mul935 = mul nsw i32 %sub934, 2
  %add936 = add nsw i32 %mul935, 1
  br label %cond.end.941

cond.false.937:                                   ; preds = %cond.false.923
  %208 = load i32, i32* @initial_argc, align 4
  %add938 = add nsw i32 0, %208
  %mul939 = mul nsw i32 0, %add938
  %sub940 = sub nsw i32 %mul939, 1
  br label %cond.end.941

cond.end.941:                                     ; preds = %cond.false.937, %cond.true.929
  %cond942 = phi i32 [ %add936, %cond.true.929 ], [ %sub940, %cond.false.937 ]
  %sub943 = sub nsw i32 %cond942, 3
  %209 = load i32, i32* @initial_argc, align 4
  %cmp944 = icmp slt i32 %sub943, %209
  br i1 %cmp944, label %cond.true.976, label %lor.lhs.false.962

cond.false.946:                                   ; preds = %cond.end.887
  %210 = load i32, i32* @initial_argc, align 4
  %cmp947 = icmp slt i32 %210, 0
  br i1 %cmp947, label %cond.true.949, label %cond.false.953

cond.true.949:                                    ; preds = %cond.false.946
  %211 = load i32, i32* @initial_argc, align 4
  %add950 = add nsw i32 %211, 3
  %cmp951 = icmp sle i32 3, %add950
  br i1 %cmp951, label %cond.true.976, label %lor.lhs.false.962

cond.false.953:                                   ; preds = %cond.false.946
  br i1 false, label %cond.true.954, label %cond.false.958

cond.true.954:                                    ; preds = %cond.false.953
  %212 = load i32, i32* @initial_argc, align 4
  %213 = load i32, i32* @initial_argc, align 4
  %add955 = add nsw i32 %213, 3
  %cmp956 = icmp sle i32 %212, %add955
  br i1 %cmp956, label %cond.true.976, label %lor.lhs.false.962

cond.false.958:                                   ; preds = %cond.false.953
  %214 = load i32, i32* @initial_argc, align 4
  %add959 = add nsw i32 %214, 3
  %cmp960 = icmp slt i32 %add959, 3
  br i1 %cmp960, label %cond.true.976, label %lor.lhs.false.962

lor.lhs.false.962:                                ; preds = %cond.false.958, %cond.true.954, %cond.true.949, %cond.end.941, %cond.end.918
  %215 = load i32, i32* @initial_argc, align 4
  %add963 = add nsw i32 %215, 3
  %mul964 = mul nsw i32 0, %add963
  %sub965 = sub nsw i32 %mul964, 1
  %cmp966 = icmp slt i32 %sub965, 0
  br i1 %cmp966, label %land.lhs.true.968, label %lor.lhs.false.972

land.lhs.true.968:                                ; preds = %lor.lhs.false.962
  %216 = load i32, i32* @initial_argc, align 4
  %add969 = add nsw i32 %216, 3
  %cmp970 = icmp slt i32 %add969, -2147483648
  br i1 %cmp970, label %cond.true.976, label %lor.lhs.false.972

lor.lhs.false.972:                                ; preds = %land.lhs.true.968, %lor.lhs.false.962
  %217 = load i32, i32* @initial_argc, align 4
  %add973 = add nsw i32 %217, 3
  %cmp974 = icmp slt i32 2147483647, %add973
  br i1 %cmp974, label %cond.true.976, label %cond.false.988

cond.true.976:                                    ; preds = %lor.lhs.false.972, %land.lhs.true.968, %cond.false.958, %cond.true.954, %cond.true.949, %cond.end.941, %cond.end.918
  %218 = load i32, i32* @initial_argc, align 4
  %add977 = add i32 %218, 3
  %cmp978 = icmp ule i32 %add977, 2147483647
  br i1 %cmp978, label %cond.true.980, label %cond.false.982

cond.true.980:                                    ; preds = %cond.true.976
  %219 = load i32, i32* @initial_argc, align 4
  %add981 = add i32 %219, 3
  br label %cond.end.986

cond.false.982:                                   ; preds = %cond.true.976
  %220 = load i32, i32* @initial_argc, align 4
  %add983 = add i32 %220, 3
  %sub984 = sub i32 %add983, -2147483648
  %add985 = add nsw i32 %sub984, -2147483648
  br label %cond.end.986

cond.end.986:                                     ; preds = %cond.false.982, %cond.true.980
  %cond987 = phi i32 [ %add981, %cond.true.980 ], [ %add985, %cond.false.982 ]
  store i32 %cond987, i32* %i, align 4
  br i1 true, label %if.then.1780, label %if.end.1781

cond.false.988:                                   ; preds = %lor.lhs.false.972
  %221 = load i32, i32* @initial_argc, align 4
  %add989 = add i32 %221, 3
  %cmp990 = icmp ule i32 %add989, 2147483647
  br i1 %cmp990, label %cond.true.992, label %cond.false.994

cond.true.992:                                    ; preds = %cond.false.988
  %222 = load i32, i32* @initial_argc, align 4
  %add993 = add i32 %222, 3
  br label %cond.end.998

cond.false.994:                                   ; preds = %cond.false.988
  %223 = load i32, i32* @initial_argc, align 4
  %add995 = add i32 %223, 3
  %sub996 = sub i32 %add995, -2147483648
  %add997 = add nsw i32 %sub996, -2147483648
  br label %cond.end.998

cond.end.998:                                     ; preds = %cond.false.994, %cond.true.992
  %cond999 = phi i32 [ %add993, %cond.true.992 ], [ %add997, %cond.false.994 ]
  store i32 %cond999, i32* %i, align 4
  br i1 false, label %if.then.1780, label %if.end.1781

cond.false.1000:                                  ; preds = %cond.true.860
  %224 = load i32, i32* @initial_argc, align 4
  %add1001 = add nsw i32 0, %224
  %mul1002 = mul nsw i32 0, %add1001
  %sub1003 = sub nsw i32 %mul1002, 1
  %cmp1004 = icmp slt i32 %sub1003, 0
  br i1 %cmp1004, label %cond.true.1006, label %cond.false.1022

cond.true.1006:                                   ; preds = %cond.false.1000
  %225 = load i32, i32* @initial_argc, align 4
  %add1007 = add nsw i32 0, %225
  %mul1008 = mul nsw i32 0, %add1007
  %add1009 = add nsw i32 %mul1008, 0
  %neg1010 = xor i32 %add1009, -1
  %cmp1011 = icmp eq i32 %neg1010, -1
  %conv1012 = zext i1 %cmp1011 to i32
  %sub1013 = sub nsw i32 0, %conv1012
  %226 = load i32, i32* @initial_argc, align 4
  %add1014 = add nsw i32 0, %226
  %mul1015 = mul nsw i32 0, %add1014
  %add1016 = add nsw i32 %mul1015, 1
  %shl1017 = shl i32 %add1016, 30
  %sub1018 = sub nsw i32 %shl1017, 1
  %mul1019 = mul nsw i32 %sub1018, 2
  %add1020 = add nsw i32 %mul1019, 1
  %sub1021 = sub nsw i32 %sub1013, %add1020
  br label %cond.end.1026

cond.false.1022:                                  ; preds = %cond.false.1000
  %227 = load i32, i32* @initial_argc, align 4
  %add1023 = add nsw i32 0, %227
  %mul1024 = mul nsw i32 0, %add1023
  %add1025 = add nsw i32 %mul1024, 0
  br label %cond.end.1026

cond.end.1026:                                    ; preds = %cond.false.1022, %cond.true.1006
  %cond1027 = phi i32 [ %sub1021, %cond.true.1006 ], [ %add1025, %cond.false.1022 ]
  %cmp1028 = icmp slt i32 %cond1027, 0
  br i1 %cmp1028, label %cond.true.1030, label %cond.false.1085

cond.true.1030:                                   ; preds = %cond.end.1026
  br i1 false, label %cond.true.1031, label %cond.false.1062

cond.true.1031:                                   ; preds = %cond.true.1030
  %228 = load i32, i32* @initial_argc, align 4
  %229 = load i32, i32* @initial_argc, align 4
  %add1032 = add nsw i32 0, %229
  %mul1033 = mul nsw i32 0, %add1032
  %sub1034 = sub nsw i32 %mul1033, 1
  %cmp1035 = icmp slt i32 %sub1034, 0
  br i1 %cmp1035, label %cond.true.1037, label %cond.false.1053

cond.true.1037:                                   ; preds = %cond.true.1031
  %230 = load i32, i32* @initial_argc, align 4
  %add1038 = add nsw i32 0, %230
  %mul1039 = mul nsw i32 0, %add1038
  %add1040 = add nsw i32 %mul1039, 0
  %neg1041 = xor i32 %add1040, -1
  %cmp1042 = icmp eq i32 %neg1041, -1
  %conv1043 = zext i1 %cmp1042 to i32
  %sub1044 = sub nsw i32 0, %conv1043
  %231 = load i32, i32* @initial_argc, align 4
  %add1045 = add nsw i32 0, %231
  %mul1046 = mul nsw i32 0, %add1045
  %add1047 = add nsw i32 %mul1046, 1
  %shl1048 = shl i32 %add1047, 30
  %sub1049 = sub nsw i32 %shl1048, 1
  %mul1050 = mul nsw i32 %sub1049, 2
  %add1051 = add nsw i32 %mul1050, 1
  %sub1052 = sub nsw i32 %sub1044, %add1051
  br label %cond.end.1057

cond.false.1053:                                  ; preds = %cond.true.1031
  %232 = load i32, i32* @initial_argc, align 4
  %add1054 = add nsw i32 0, %232
  %mul1055 = mul nsw i32 0, %add1054
  %add1056 = add nsw i32 %mul1055, 0
  br label %cond.end.1057

cond.end.1057:                                    ; preds = %cond.false.1053, %cond.true.1037
  %cond1058 = phi i32 [ %sub1052, %cond.true.1037 ], [ %add1056, %cond.false.1053 ]
  %sub1059 = sub nsw i32 %cond1058, 3
  %cmp1060 = icmp slt i32 %228, %sub1059
  br i1 %cmp1060, label %cond.true.1115, label %lor.lhs.false.1101

cond.false.1062:                                  ; preds = %cond.true.1030
  %233 = load i32, i32* @initial_argc, align 4
  %add1063 = add nsw i32 0, %233
  %mul1064 = mul nsw i32 0, %add1063
  %sub1065 = sub nsw i32 %mul1064, 1
  %cmp1066 = icmp slt i32 %sub1065, 0
  br i1 %cmp1066, label %cond.true.1068, label %cond.false.1076

cond.true.1068:                                   ; preds = %cond.false.1062
  %234 = load i32, i32* @initial_argc, align 4
  %add1069 = add nsw i32 0, %234
  %mul1070 = mul nsw i32 0, %add1069
  %add1071 = add nsw i32 %mul1070, 1
  %shl1072 = shl i32 %add1071, 30
  %sub1073 = sub nsw i32 %shl1072, 1
  %mul1074 = mul nsw i32 %sub1073, 2
  %add1075 = add nsw i32 %mul1074, 1
  br label %cond.end.1080

cond.false.1076:                                  ; preds = %cond.false.1062
  %235 = load i32, i32* @initial_argc, align 4
  %add1077 = add nsw i32 0, %235
  %mul1078 = mul nsw i32 0, %add1077
  %sub1079 = sub nsw i32 %mul1078, 1
  br label %cond.end.1080

cond.end.1080:                                    ; preds = %cond.false.1076, %cond.true.1068
  %cond1081 = phi i32 [ %add1075, %cond.true.1068 ], [ %sub1079, %cond.false.1076 ]
  %sub1082 = sub nsw i32 %cond1081, 3
  %236 = load i32, i32* @initial_argc, align 4
  %cmp1083 = icmp slt i32 %sub1082, %236
  br i1 %cmp1083, label %cond.true.1115, label %lor.lhs.false.1101

cond.false.1085:                                  ; preds = %cond.end.1026
  %237 = load i32, i32* @initial_argc, align 4
  %cmp1086 = icmp slt i32 %237, 0
  br i1 %cmp1086, label %cond.true.1088, label %cond.false.1092

cond.true.1088:                                   ; preds = %cond.false.1085
  %238 = load i32, i32* @initial_argc, align 4
  %add1089 = add nsw i32 %238, 3
  %cmp1090 = icmp sle i32 3, %add1089
  br i1 %cmp1090, label %cond.true.1115, label %lor.lhs.false.1101

cond.false.1092:                                  ; preds = %cond.false.1085
  br i1 false, label %cond.true.1093, label %cond.false.1097

cond.true.1093:                                   ; preds = %cond.false.1092
  %239 = load i32, i32* @initial_argc, align 4
  %240 = load i32, i32* @initial_argc, align 4
  %add1094 = add nsw i32 %240, 3
  %cmp1095 = icmp sle i32 %239, %add1094
  br i1 %cmp1095, label %cond.true.1115, label %lor.lhs.false.1101

cond.false.1097:                                  ; preds = %cond.false.1092
  %241 = load i32, i32* @initial_argc, align 4
  %add1098 = add nsw i32 %241, 3
  %cmp1099 = icmp slt i32 %add1098, 3
  br i1 %cmp1099, label %cond.true.1115, label %lor.lhs.false.1101

lor.lhs.false.1101:                               ; preds = %cond.false.1097, %cond.true.1093, %cond.true.1088, %cond.end.1080, %cond.end.1057
  %242 = load i32, i32* @initial_argc, align 4
  %add1102 = add nsw i32 %242, 3
  %mul1103 = mul nsw i32 0, %add1102
  %sub1104 = sub nsw i32 %mul1103, 1
  %cmp1105 = icmp slt i32 %sub1104, 0
  br i1 %cmp1105, label %land.lhs.true.1107, label %lor.lhs.false.1111

land.lhs.true.1107:                               ; preds = %lor.lhs.false.1101
  %243 = load i32, i32* @initial_argc, align 4
  %add1108 = add nsw i32 %243, 3
  %cmp1109 = icmp slt i32 %add1108, -2147483648
  br i1 %cmp1109, label %cond.true.1115, label %lor.lhs.false.1111

lor.lhs.false.1111:                               ; preds = %land.lhs.true.1107, %lor.lhs.false.1101
  %244 = load i32, i32* @initial_argc, align 4
  %add1112 = add nsw i32 %244, 3
  %cmp1113 = icmp slt i32 2147483647, %add1112
  br i1 %cmp1113, label %cond.true.1115, label %cond.false.1127

cond.true.1115:                                   ; preds = %lor.lhs.false.1111, %land.lhs.true.1107, %cond.false.1097, %cond.true.1093, %cond.true.1088, %cond.end.1080, %cond.end.1057
  %245 = load i32, i32* @initial_argc, align 4
  %add1116 = add i32 %245, 3
  %cmp1117 = icmp ule i32 %add1116, 2147483647
  br i1 %cmp1117, label %cond.true.1119, label %cond.false.1121

cond.true.1119:                                   ; preds = %cond.true.1115
  %246 = load i32, i32* @initial_argc, align 4
  %add1120 = add i32 %246, 3
  br label %cond.end.1125

cond.false.1121:                                  ; preds = %cond.true.1115
  %247 = load i32, i32* @initial_argc, align 4
  %add1122 = add i32 %247, 3
  %sub1123 = sub i32 %add1122, -2147483648
  %add1124 = add nsw i32 %sub1123, -2147483648
  br label %cond.end.1125

cond.end.1125:                                    ; preds = %cond.false.1121, %cond.true.1119
  %cond1126 = phi i32 [ %add1120, %cond.true.1119 ], [ %add1124, %cond.false.1121 ]
  store i32 %cond1126, i32* %i, align 4
  br i1 true, label %if.then.1780, label %if.end.1781

cond.false.1127:                                  ; preds = %lor.lhs.false.1111
  %248 = load i32, i32* @initial_argc, align 4
  %add1128 = add i32 %248, 3
  %cmp1129 = icmp ule i32 %add1128, 2147483647
  br i1 %cmp1129, label %cond.true.1131, label %cond.false.1133

cond.true.1131:                                   ; preds = %cond.false.1127
  %249 = load i32, i32* @initial_argc, align 4
  %add1132 = add i32 %249, 3
  br label %cond.end.1137

cond.false.1133:                                  ; preds = %cond.false.1127
  %250 = load i32, i32* @initial_argc, align 4
  %add1134 = add i32 %250, 3
  %sub1135 = sub i32 %add1134, -2147483648
  %add1136 = add nsw i32 %sub1135, -2147483648
  br label %cond.end.1137

cond.end.1137:                                    ; preds = %cond.false.1133, %cond.true.1131
  %cond1138 = phi i32 [ %add1132, %cond.true.1131 ], [ %add1136, %cond.false.1133 ]
  store i32 %cond1138, i32* %i, align 4
  br i1 false, label %if.then.1780, label %if.end.1781

cond.false.1139:                                  ; preds = %cond.false.859
  br i1 false, label %cond.true.1140, label %cond.false.1460

cond.true.1140:                                   ; preds = %cond.false.1139
  br i1 true, label %cond.true.1141, label %cond.false.1311

cond.true.1141:                                   ; preds = %cond.true.1140
  %251 = load i32, i32* @initial_argc, align 4
  %conv1142 = sext i32 %251 to i64
  %add1143 = add nsw i64 0, %conv1142
  %mul1144 = mul nsw i64 0, %add1143
  %sub1145 = sub nsw i64 %mul1144, 1
  %cmp1146 = icmp slt i64 %sub1145, 0
  br i1 %cmp1146, label %cond.true.1148, label %cond.false.1167

cond.true.1148:                                   ; preds = %cond.true.1141
  %252 = load i32, i32* @initial_argc, align 4
  %conv1149 = sext i32 %252 to i64
  %add1150 = add nsw i64 0, %conv1149
  %mul1151 = mul nsw i64 0, %add1150
  %add1152 = add nsw i64 %mul1151, 0
  %neg1153 = xor i64 %add1152, -1
  %cmp1154 = icmp eq i64 %neg1153, -1
  %conv1155 = zext i1 %cmp1154 to i32
  %sub1156 = sub nsw i32 0, %conv1155
  %conv1157 = sext i32 %sub1156 to i64
  %253 = load i32, i32* @initial_argc, align 4
  %conv1158 = sext i32 %253 to i64
  %add1159 = add nsw i64 0, %conv1158
  %mul1160 = mul nsw i64 0, %add1159
  %add1161 = add nsw i64 %mul1160, 1
  %shl1162 = shl i64 %add1161, 62
  %sub1163 = sub nsw i64 %shl1162, 1
  %mul1164 = mul nsw i64 %sub1163, 2
  %add1165 = add nsw i64 %mul1164, 1
  %sub1166 = sub nsw i64 %conv1157, %add1165
  br label %cond.end.1172

cond.false.1167:                                  ; preds = %cond.true.1141
  %254 = load i32, i32* @initial_argc, align 4
  %conv1168 = sext i32 %254 to i64
  %add1169 = add nsw i64 0, %conv1168
  %mul1170 = mul nsw i64 0, %add1169
  %add1171 = add nsw i64 %mul1170, 0
  br label %cond.end.1172

cond.end.1172:                                    ; preds = %cond.false.1167, %cond.true.1148
  %cond1173 = phi i64 [ %sub1166, %cond.true.1148 ], [ %add1171, %cond.false.1167 ]
  %cmp1174 = icmp slt i64 %cond1173, 0
  br i1 %cmp1174, label %cond.true.1176, label %cond.false.1241

cond.true.1176:                                   ; preds = %cond.end.1172
  br i1 false, label %cond.true.1177, label %cond.false.1214

cond.true.1177:                                   ; preds = %cond.true.1176
  %255 = load i32, i32* @initial_argc, align 4
  %conv1178 = sext i32 %255 to i64
  %256 = load i32, i32* @initial_argc, align 4
  %conv1179 = sext i32 %256 to i64
  %add1180 = add nsw i64 0, %conv1179
  %mul1181 = mul nsw i64 0, %add1180
  %sub1182 = sub nsw i64 %mul1181, 1
  %cmp1183 = icmp slt i64 %sub1182, 0
  br i1 %cmp1183, label %cond.true.1185, label %cond.false.1204

cond.true.1185:                                   ; preds = %cond.true.1177
  %257 = load i32, i32* @initial_argc, align 4
  %conv1186 = sext i32 %257 to i64
  %add1187 = add nsw i64 0, %conv1186
  %mul1188 = mul nsw i64 0, %add1187
  %add1189 = add nsw i64 %mul1188, 0
  %neg1190 = xor i64 %add1189, -1
  %cmp1191 = icmp eq i64 %neg1190, -1
  %conv1192 = zext i1 %cmp1191 to i32
  %sub1193 = sub nsw i32 0, %conv1192
  %conv1194 = sext i32 %sub1193 to i64
  %258 = load i32, i32* @initial_argc, align 4
  %conv1195 = sext i32 %258 to i64
  %add1196 = add nsw i64 0, %conv1195
  %mul1197 = mul nsw i64 0, %add1196
  %add1198 = add nsw i64 %mul1197, 1
  %shl1199 = shl i64 %add1198, 62
  %sub1200 = sub nsw i64 %shl1199, 1
  %mul1201 = mul nsw i64 %sub1200, 2
  %add1202 = add nsw i64 %mul1201, 1
  %sub1203 = sub nsw i64 %conv1194, %add1202
  br label %cond.end.1209

cond.false.1204:                                  ; preds = %cond.true.1177
  %259 = load i32, i32* @initial_argc, align 4
  %conv1205 = sext i32 %259 to i64
  %add1206 = add nsw i64 0, %conv1205
  %mul1207 = mul nsw i64 0, %add1206
  %add1208 = add nsw i64 %mul1207, 0
  br label %cond.end.1209

cond.end.1209:                                    ; preds = %cond.false.1204, %cond.true.1185
  %cond1210 = phi i64 [ %sub1203, %cond.true.1185 ], [ %add1208, %cond.false.1204 ]
  %sub1211 = sub nsw i64 %cond1210, 3
  %cmp1212 = icmp slt i64 %conv1178, %sub1211
  br i1 %cmp1212, label %cond.true.1279, label %lor.lhs.false.1262

cond.false.1214:                                  ; preds = %cond.true.1176
  %260 = load i32, i32* @initial_argc, align 4
  %conv1215 = sext i32 %260 to i64
  %add1216 = add nsw i64 0, %conv1215
  %mul1217 = mul nsw i64 0, %add1216
  %sub1218 = sub nsw i64 %mul1217, 1
  %cmp1219 = icmp slt i64 %sub1218, 0
  br i1 %cmp1219, label %cond.true.1221, label %cond.false.1230

cond.true.1221:                                   ; preds = %cond.false.1214
  %261 = load i32, i32* @initial_argc, align 4
  %conv1222 = sext i32 %261 to i64
  %add1223 = add nsw i64 0, %conv1222
  %mul1224 = mul nsw i64 0, %add1223
  %add1225 = add nsw i64 %mul1224, 1
  %shl1226 = shl i64 %add1225, 62
  %sub1227 = sub nsw i64 %shl1226, 1
  %mul1228 = mul nsw i64 %sub1227, 2
  %add1229 = add nsw i64 %mul1228, 1
  br label %cond.end.1235

cond.false.1230:                                  ; preds = %cond.false.1214
  %262 = load i32, i32* @initial_argc, align 4
  %conv1231 = sext i32 %262 to i64
  %add1232 = add nsw i64 0, %conv1231
  %mul1233 = mul nsw i64 0, %add1232
  %sub1234 = sub nsw i64 %mul1233, 1
  br label %cond.end.1235

cond.end.1235:                                    ; preds = %cond.false.1230, %cond.true.1221
  %cond1236 = phi i64 [ %add1229, %cond.true.1221 ], [ %sub1234, %cond.false.1230 ]
  %sub1237 = sub nsw i64 %cond1236, 3
  %263 = load i32, i32* @initial_argc, align 4
  %conv1238 = sext i32 %263 to i64
  %cmp1239 = icmp slt i64 %sub1237, %conv1238
  br i1 %cmp1239, label %cond.true.1279, label %lor.lhs.false.1262

cond.false.1241:                                  ; preds = %cond.end.1172
  %264 = load i32, i32* @initial_argc, align 4
  %conv1242 = sext i32 %264 to i64
  %cmp1243 = icmp slt i64 %conv1242, 0
  br i1 %cmp1243, label %cond.true.1245, label %cond.false.1250

cond.true.1245:                                   ; preds = %cond.false.1241
  %265 = load i32, i32* @initial_argc, align 4
  %conv1246 = sext i32 %265 to i64
  %add1247 = add nsw i64 %conv1246, 3
  %cmp1248 = icmp sle i64 3, %add1247
  br i1 %cmp1248, label %cond.true.1279, label %lor.lhs.false.1262

cond.false.1250:                                  ; preds = %cond.false.1241
  br i1 false, label %cond.true.1251, label %cond.false.1257

cond.true.1251:                                   ; preds = %cond.false.1250
  %266 = load i32, i32* @initial_argc, align 4
  %conv1252 = sext i32 %266 to i64
  %267 = load i32, i32* @initial_argc, align 4
  %conv1253 = sext i32 %267 to i64
  %add1254 = add nsw i64 %conv1253, 3
  %cmp1255 = icmp sle i64 %conv1252, %add1254
  br i1 %cmp1255, label %cond.true.1279, label %lor.lhs.false.1262

cond.false.1257:                                  ; preds = %cond.false.1250
  %268 = load i32, i32* @initial_argc, align 4
  %conv1258 = sext i32 %268 to i64
  %add1259 = add nsw i64 %conv1258, 3
  %cmp1260 = icmp slt i64 %add1259, 3
  br i1 %cmp1260, label %cond.true.1279, label %lor.lhs.false.1262

lor.lhs.false.1262:                               ; preds = %cond.false.1257, %cond.true.1251, %cond.true.1245, %cond.end.1235, %cond.end.1209
  %269 = load i32, i32* @initial_argc, align 4
  %conv1263 = sext i32 %269 to i64
  %add1264 = add nsw i64 %conv1263, 3
  %mul1265 = mul nsw i64 0, %add1264
  %sub1266 = sub nsw i64 %mul1265, 1
  %cmp1267 = icmp slt i64 %sub1266, 0
  br i1 %cmp1267, label %land.lhs.true.1269, label %lor.lhs.false.1274

land.lhs.true.1269:                               ; preds = %lor.lhs.false.1262
  %270 = load i32, i32* @initial_argc, align 4
  %conv1270 = sext i32 %270 to i64
  %add1271 = add nsw i64 %conv1270, 3
  %cmp1272 = icmp slt i64 %add1271, -9223372036854775808
  br i1 %cmp1272, label %cond.true.1279, label %lor.lhs.false.1274

lor.lhs.false.1274:                               ; preds = %land.lhs.true.1269, %lor.lhs.false.1262
  %271 = load i32, i32* @initial_argc, align 4
  %conv1275 = sext i32 %271 to i64
  %add1276 = add nsw i64 %conv1275, 3
  %cmp1277 = icmp slt i64 9223372036854775807, %add1276
  br i1 %cmp1277, label %cond.true.1279, label %cond.false.1295

cond.true.1279:                                   ; preds = %lor.lhs.false.1274, %land.lhs.true.1269, %cond.false.1257, %cond.true.1251, %cond.true.1245, %cond.end.1235, %cond.end.1209
  %272 = load i32, i32* @initial_argc, align 4
  %conv1280 = sext i32 %272 to i64
  %add1281 = add i64 %conv1280, 3
  %cmp1282 = icmp ule i64 %add1281, 9223372036854775807
  br i1 %cmp1282, label %cond.true.1284, label %cond.false.1287

cond.true.1284:                                   ; preds = %cond.true.1279
  %273 = load i32, i32* @initial_argc, align 4
  %conv1285 = sext i32 %273 to i64
  %add1286 = add i64 %conv1285, 3
  br label %cond.end.1292

cond.false.1287:                                  ; preds = %cond.true.1279
  %274 = load i32, i32* @initial_argc, align 4
  %conv1288 = sext i32 %274 to i64
  %add1289 = add i64 %conv1288, 3
  %sub1290 = sub i64 %add1289, -9223372036854775808
  %add1291 = add nsw i64 %sub1290, -9223372036854775808
  br label %cond.end.1292

cond.end.1292:                                    ; preds = %cond.false.1287, %cond.true.1284
  %cond1293 = phi i64 [ %add1286, %cond.true.1284 ], [ %add1291, %cond.false.1287 ]
  %conv1294 = trunc i64 %cond1293 to i32
  store i32 %conv1294, i32* %i, align 4
  br i1 true, label %if.then.1780, label %if.end.1781

cond.false.1295:                                  ; preds = %lor.lhs.false.1274
  %275 = load i32, i32* @initial_argc, align 4
  %conv1296 = sext i32 %275 to i64
  %add1297 = add i64 %conv1296, 3
  %cmp1298 = icmp ule i64 %add1297, 9223372036854775807
  br i1 %cmp1298, label %cond.true.1300, label %cond.false.1303

cond.true.1300:                                   ; preds = %cond.false.1295
  %276 = load i32, i32* @initial_argc, align 4
  %conv1301 = sext i32 %276 to i64
  %add1302 = add i64 %conv1301, 3
  br label %cond.end.1308

cond.false.1303:                                  ; preds = %cond.false.1295
  %277 = load i32, i32* @initial_argc, align 4
  %conv1304 = sext i32 %277 to i64
  %add1305 = add i64 %conv1304, 3
  %sub1306 = sub i64 %add1305, -9223372036854775808
  %add1307 = add nsw i64 %sub1306, -9223372036854775808
  br label %cond.end.1308

cond.end.1308:                                    ; preds = %cond.false.1303, %cond.true.1300
  %cond1309 = phi i64 [ %add1302, %cond.true.1300 ], [ %add1307, %cond.false.1303 ]
  %conv1310 = trunc i64 %cond1309 to i32
  store i32 %conv1310, i32* %i, align 4
  br i1 false, label %if.then.1780, label %if.end.1781

cond.false.1311:                                  ; preds = %cond.true.1140
  %278 = load i32, i32* @initial_argc, align 4
  %add1312 = add nsw i32 0, %278
  %mul1313 = mul nsw i32 0, %add1312
  %sub1314 = sub nsw i32 %mul1313, 1
  %cmp1315 = icmp slt i32 %sub1314, 0
  br i1 %cmp1315, label %cond.true.1317, label %cond.false.1333

cond.true.1317:                                   ; preds = %cond.false.1311
  %279 = load i32, i32* @initial_argc, align 4
  %add1318 = add nsw i32 0, %279
  %mul1319 = mul nsw i32 0, %add1318
  %add1320 = add nsw i32 %mul1319, 0
  %neg1321 = xor i32 %add1320, -1
  %cmp1322 = icmp eq i32 %neg1321, -1
  %conv1323 = zext i1 %cmp1322 to i32
  %sub1324 = sub nsw i32 0, %conv1323
  %280 = load i32, i32* @initial_argc, align 4
  %add1325 = add nsw i32 0, %280
  %mul1326 = mul nsw i32 0, %add1325
  %add1327 = add nsw i32 %mul1326, 1
  %shl1328 = shl i32 %add1327, 30
  %sub1329 = sub nsw i32 %shl1328, 1
  %mul1330 = mul nsw i32 %sub1329, 2
  %add1331 = add nsw i32 %mul1330, 1
  %sub1332 = sub nsw i32 %sub1324, %add1331
  br label %cond.end.1337

cond.false.1333:                                  ; preds = %cond.false.1311
  %281 = load i32, i32* @initial_argc, align 4
  %add1334 = add nsw i32 0, %281
  %mul1335 = mul nsw i32 0, %add1334
  %add1336 = add nsw i32 %mul1335, 0
  br label %cond.end.1337

cond.end.1337:                                    ; preds = %cond.false.1333, %cond.true.1317
  %cond1338 = phi i32 [ %sub1332, %cond.true.1317 ], [ %add1336, %cond.false.1333 ]
  %cmp1339 = icmp slt i32 %cond1338, 0
  br i1 %cmp1339, label %cond.true.1341, label %cond.false.1396

cond.true.1341:                                   ; preds = %cond.end.1337
  br i1 false, label %cond.true.1342, label %cond.false.1373

cond.true.1342:                                   ; preds = %cond.true.1341
  %282 = load i32, i32* @initial_argc, align 4
  %283 = load i32, i32* @initial_argc, align 4
  %add1343 = add nsw i32 0, %283
  %mul1344 = mul nsw i32 0, %add1343
  %sub1345 = sub nsw i32 %mul1344, 1
  %cmp1346 = icmp slt i32 %sub1345, 0
  br i1 %cmp1346, label %cond.true.1348, label %cond.false.1364

cond.true.1348:                                   ; preds = %cond.true.1342
  %284 = load i32, i32* @initial_argc, align 4
  %add1349 = add nsw i32 0, %284
  %mul1350 = mul nsw i32 0, %add1349
  %add1351 = add nsw i32 %mul1350, 0
  %neg1352 = xor i32 %add1351, -1
  %cmp1353 = icmp eq i32 %neg1352, -1
  %conv1354 = zext i1 %cmp1353 to i32
  %sub1355 = sub nsw i32 0, %conv1354
  %285 = load i32, i32* @initial_argc, align 4
  %add1356 = add nsw i32 0, %285
  %mul1357 = mul nsw i32 0, %add1356
  %add1358 = add nsw i32 %mul1357, 1
  %shl1359 = shl i32 %add1358, 30
  %sub1360 = sub nsw i32 %shl1359, 1
  %mul1361 = mul nsw i32 %sub1360, 2
  %add1362 = add nsw i32 %mul1361, 1
  %sub1363 = sub nsw i32 %sub1355, %add1362
  br label %cond.end.1368

cond.false.1364:                                  ; preds = %cond.true.1342
  %286 = load i32, i32* @initial_argc, align 4
  %add1365 = add nsw i32 0, %286
  %mul1366 = mul nsw i32 0, %add1365
  %add1367 = add nsw i32 %mul1366, 0
  br label %cond.end.1368

cond.end.1368:                                    ; preds = %cond.false.1364, %cond.true.1348
  %cond1369 = phi i32 [ %sub1363, %cond.true.1348 ], [ %add1367, %cond.false.1364 ]
  %sub1370 = sub nsw i32 %cond1369, 3
  %cmp1371 = icmp slt i32 %282, %sub1370
  br i1 %cmp1371, label %cond.true.1428, label %lor.lhs.false.1412

cond.false.1373:                                  ; preds = %cond.true.1341
  %287 = load i32, i32* @initial_argc, align 4
  %add1374 = add nsw i32 0, %287
  %mul1375 = mul nsw i32 0, %add1374
  %sub1376 = sub nsw i32 %mul1375, 1
  %cmp1377 = icmp slt i32 %sub1376, 0
  br i1 %cmp1377, label %cond.true.1379, label %cond.false.1387

cond.true.1379:                                   ; preds = %cond.false.1373
  %288 = load i32, i32* @initial_argc, align 4
  %add1380 = add nsw i32 0, %288
  %mul1381 = mul nsw i32 0, %add1380
  %add1382 = add nsw i32 %mul1381, 1
  %shl1383 = shl i32 %add1382, 30
  %sub1384 = sub nsw i32 %shl1383, 1
  %mul1385 = mul nsw i32 %sub1384, 2
  %add1386 = add nsw i32 %mul1385, 1
  br label %cond.end.1391

cond.false.1387:                                  ; preds = %cond.false.1373
  %289 = load i32, i32* @initial_argc, align 4
  %add1388 = add nsw i32 0, %289
  %mul1389 = mul nsw i32 0, %add1388
  %sub1390 = sub nsw i32 %mul1389, 1
  br label %cond.end.1391

cond.end.1391:                                    ; preds = %cond.false.1387, %cond.true.1379
  %cond1392 = phi i32 [ %add1386, %cond.true.1379 ], [ %sub1390, %cond.false.1387 ]
  %sub1393 = sub nsw i32 %cond1392, 3
  %290 = load i32, i32* @initial_argc, align 4
  %cmp1394 = icmp slt i32 %sub1393, %290
  br i1 %cmp1394, label %cond.true.1428, label %lor.lhs.false.1412

cond.false.1396:                                  ; preds = %cond.end.1337
  %291 = load i32, i32* @initial_argc, align 4
  %cmp1397 = icmp slt i32 %291, 0
  br i1 %cmp1397, label %cond.true.1399, label %cond.false.1403

cond.true.1399:                                   ; preds = %cond.false.1396
  %292 = load i32, i32* @initial_argc, align 4
  %add1400 = add nsw i32 %292, 3
  %cmp1401 = icmp sle i32 3, %add1400
  br i1 %cmp1401, label %cond.true.1428, label %lor.lhs.false.1412

cond.false.1403:                                  ; preds = %cond.false.1396
  br i1 false, label %cond.true.1404, label %cond.false.1408

cond.true.1404:                                   ; preds = %cond.false.1403
  %293 = load i32, i32* @initial_argc, align 4
  %294 = load i32, i32* @initial_argc, align 4
  %add1405 = add nsw i32 %294, 3
  %cmp1406 = icmp sle i32 %293, %add1405
  br i1 %cmp1406, label %cond.true.1428, label %lor.lhs.false.1412

cond.false.1408:                                  ; preds = %cond.false.1403
  %295 = load i32, i32* @initial_argc, align 4
  %add1409 = add nsw i32 %295, 3
  %cmp1410 = icmp slt i32 %add1409, 3
  br i1 %cmp1410, label %cond.true.1428, label %lor.lhs.false.1412

lor.lhs.false.1412:                               ; preds = %cond.false.1408, %cond.true.1404, %cond.true.1399, %cond.end.1391, %cond.end.1368
  %296 = load i32, i32* @initial_argc, align 4
  %add1413 = add nsw i32 %296, 3
  %mul1414 = mul nsw i32 0, %add1413
  %sub1415 = sub nsw i32 %mul1414, 1
  %cmp1416 = icmp slt i32 %sub1415, 0
  br i1 %cmp1416, label %land.lhs.true.1418, label %lor.lhs.false.1423

land.lhs.true.1418:                               ; preds = %lor.lhs.false.1412
  %297 = load i32, i32* @initial_argc, align 4
  %add1419 = add nsw i32 %297, 3
  %conv1420 = sext i32 %add1419 to i64
  %cmp1421 = icmp slt i64 %conv1420, -9223372036854775808
  br i1 %cmp1421, label %cond.true.1428, label %lor.lhs.false.1423

lor.lhs.false.1423:                               ; preds = %land.lhs.true.1418, %lor.lhs.false.1412
  %298 = load i32, i32* @initial_argc, align 4
  %add1424 = add nsw i32 %298, 3
  %conv1425 = sext i32 %add1424 to i64
  %cmp1426 = icmp slt i64 9223372036854775807, %conv1425
  br i1 %cmp1426, label %cond.true.1428, label %cond.false.1444

cond.true.1428:                                   ; preds = %lor.lhs.false.1423, %land.lhs.true.1418, %cond.false.1408, %cond.true.1404, %cond.true.1399, %cond.end.1391, %cond.end.1368
  %299 = load i32, i32* @initial_argc, align 4
  %conv1429 = sext i32 %299 to i64
  %add1430 = add i64 %conv1429, 3
  %cmp1431 = icmp ule i64 %add1430, 9223372036854775807
  br i1 %cmp1431, label %cond.true.1433, label %cond.false.1436

cond.true.1433:                                   ; preds = %cond.true.1428
  %300 = load i32, i32* @initial_argc, align 4
  %conv1434 = sext i32 %300 to i64
  %add1435 = add i64 %conv1434, 3
  br label %cond.end.1441

cond.false.1436:                                  ; preds = %cond.true.1428
  %301 = load i32, i32* @initial_argc, align 4
  %conv1437 = sext i32 %301 to i64
  %add1438 = add i64 %conv1437, 3
  %sub1439 = sub i64 %add1438, -9223372036854775808
  %add1440 = add nsw i64 %sub1439, -9223372036854775808
  br label %cond.end.1441

cond.end.1441:                                    ; preds = %cond.false.1436, %cond.true.1433
  %cond1442 = phi i64 [ %add1435, %cond.true.1433 ], [ %add1440, %cond.false.1436 ]
  %conv1443 = trunc i64 %cond1442 to i32
  store i32 %conv1443, i32* %i, align 4
  br i1 true, label %if.then.1780, label %if.end.1781

cond.false.1444:                                  ; preds = %lor.lhs.false.1423
  %302 = load i32, i32* @initial_argc, align 4
  %conv1445 = sext i32 %302 to i64
  %add1446 = add i64 %conv1445, 3
  %cmp1447 = icmp ule i64 %add1446, 9223372036854775807
  br i1 %cmp1447, label %cond.true.1449, label %cond.false.1452

cond.true.1449:                                   ; preds = %cond.false.1444
  %303 = load i32, i32* @initial_argc, align 4
  %conv1450 = sext i32 %303 to i64
  %add1451 = add i64 %conv1450, 3
  br label %cond.end.1457

cond.false.1452:                                  ; preds = %cond.false.1444
  %304 = load i32, i32* @initial_argc, align 4
  %conv1453 = sext i32 %304 to i64
  %add1454 = add i64 %conv1453, 3
  %sub1455 = sub i64 %add1454, -9223372036854775808
  %add1456 = add nsw i64 %sub1455, -9223372036854775808
  br label %cond.end.1457

cond.end.1457:                                    ; preds = %cond.false.1452, %cond.true.1449
  %cond1458 = phi i64 [ %add1451, %cond.true.1449 ], [ %add1456, %cond.false.1452 ]
  %conv1459 = trunc i64 %cond1458 to i32
  store i32 %conv1459, i32* %i, align 4
  br i1 false, label %if.then.1780, label %if.end.1781

cond.false.1460:                                  ; preds = %cond.false.1139
  br i1 true, label %cond.true.1461, label %cond.false.1631

cond.true.1461:                                   ; preds = %cond.false.1460
  %305 = load i32, i32* @initial_argc, align 4
  %conv1462 = sext i32 %305 to i64
  %add1463 = add nsw i64 0, %conv1462
  %mul1464 = mul nsw i64 0, %add1463
  %sub1465 = sub nsw i64 %mul1464, 1
  %cmp1466 = icmp slt i64 %sub1465, 0
  br i1 %cmp1466, label %cond.true.1468, label %cond.false.1487

cond.true.1468:                                   ; preds = %cond.true.1461
  %306 = load i32, i32* @initial_argc, align 4
  %conv1469 = sext i32 %306 to i64
  %add1470 = add nsw i64 0, %conv1469
  %mul1471 = mul nsw i64 0, %add1470
  %add1472 = add nsw i64 %mul1471, 0
  %neg1473 = xor i64 %add1472, -1
  %cmp1474 = icmp eq i64 %neg1473, -1
  %conv1475 = zext i1 %cmp1474 to i32
  %sub1476 = sub nsw i32 0, %conv1475
  %conv1477 = sext i32 %sub1476 to i64
  %307 = load i32, i32* @initial_argc, align 4
  %conv1478 = sext i32 %307 to i64
  %add1479 = add nsw i64 0, %conv1478
  %mul1480 = mul nsw i64 0, %add1479
  %add1481 = add nsw i64 %mul1480, 1
  %shl1482 = shl i64 %add1481, 62
  %sub1483 = sub nsw i64 %shl1482, 1
  %mul1484 = mul nsw i64 %sub1483, 2
  %add1485 = add nsw i64 %mul1484, 1
  %sub1486 = sub nsw i64 %conv1477, %add1485
  br label %cond.end.1492

cond.false.1487:                                  ; preds = %cond.true.1461
  %308 = load i32, i32* @initial_argc, align 4
  %conv1488 = sext i32 %308 to i64
  %add1489 = add nsw i64 0, %conv1488
  %mul1490 = mul nsw i64 0, %add1489
  %add1491 = add nsw i64 %mul1490, 0
  br label %cond.end.1492

cond.end.1492:                                    ; preds = %cond.false.1487, %cond.true.1468
  %cond1493 = phi i64 [ %sub1486, %cond.true.1468 ], [ %add1491, %cond.false.1487 ]
  %cmp1494 = icmp slt i64 %cond1493, 0
  br i1 %cmp1494, label %cond.true.1496, label %cond.false.1561

cond.true.1496:                                   ; preds = %cond.end.1492
  br i1 false, label %cond.true.1497, label %cond.false.1534

cond.true.1497:                                   ; preds = %cond.true.1496
  %309 = load i32, i32* @initial_argc, align 4
  %conv1498 = sext i32 %309 to i64
  %310 = load i32, i32* @initial_argc, align 4
  %conv1499 = sext i32 %310 to i64
  %add1500 = add nsw i64 0, %conv1499
  %mul1501 = mul nsw i64 0, %add1500
  %sub1502 = sub nsw i64 %mul1501, 1
  %cmp1503 = icmp slt i64 %sub1502, 0
  br i1 %cmp1503, label %cond.true.1505, label %cond.false.1524

cond.true.1505:                                   ; preds = %cond.true.1497
  %311 = load i32, i32* @initial_argc, align 4
  %conv1506 = sext i32 %311 to i64
  %add1507 = add nsw i64 0, %conv1506
  %mul1508 = mul nsw i64 0, %add1507
  %add1509 = add nsw i64 %mul1508, 0
  %neg1510 = xor i64 %add1509, -1
  %cmp1511 = icmp eq i64 %neg1510, -1
  %conv1512 = zext i1 %cmp1511 to i32
  %sub1513 = sub nsw i32 0, %conv1512
  %conv1514 = sext i32 %sub1513 to i64
  %312 = load i32, i32* @initial_argc, align 4
  %conv1515 = sext i32 %312 to i64
  %add1516 = add nsw i64 0, %conv1515
  %mul1517 = mul nsw i64 0, %add1516
  %add1518 = add nsw i64 %mul1517, 1
  %shl1519 = shl i64 %add1518, 62
  %sub1520 = sub nsw i64 %shl1519, 1
  %mul1521 = mul nsw i64 %sub1520, 2
  %add1522 = add nsw i64 %mul1521, 1
  %sub1523 = sub nsw i64 %conv1514, %add1522
  br label %cond.end.1529

cond.false.1524:                                  ; preds = %cond.true.1497
  %313 = load i32, i32* @initial_argc, align 4
  %conv1525 = sext i32 %313 to i64
  %add1526 = add nsw i64 0, %conv1525
  %mul1527 = mul nsw i64 0, %add1526
  %add1528 = add nsw i64 %mul1527, 0
  br label %cond.end.1529

cond.end.1529:                                    ; preds = %cond.false.1524, %cond.true.1505
  %cond1530 = phi i64 [ %sub1523, %cond.true.1505 ], [ %add1528, %cond.false.1524 ]
  %sub1531 = sub nsw i64 %cond1530, 3
  %cmp1532 = icmp slt i64 %conv1498, %sub1531
  br i1 %cmp1532, label %cond.true.1599, label %lor.lhs.false.1582

cond.false.1534:                                  ; preds = %cond.true.1496
  %314 = load i32, i32* @initial_argc, align 4
  %conv1535 = sext i32 %314 to i64
  %add1536 = add nsw i64 0, %conv1535
  %mul1537 = mul nsw i64 0, %add1536
  %sub1538 = sub nsw i64 %mul1537, 1
  %cmp1539 = icmp slt i64 %sub1538, 0
  br i1 %cmp1539, label %cond.true.1541, label %cond.false.1550

cond.true.1541:                                   ; preds = %cond.false.1534
  %315 = load i32, i32* @initial_argc, align 4
  %conv1542 = sext i32 %315 to i64
  %add1543 = add nsw i64 0, %conv1542
  %mul1544 = mul nsw i64 0, %add1543
  %add1545 = add nsw i64 %mul1544, 1
  %shl1546 = shl i64 %add1545, 62
  %sub1547 = sub nsw i64 %shl1546, 1
  %mul1548 = mul nsw i64 %sub1547, 2
  %add1549 = add nsw i64 %mul1548, 1
  br label %cond.end.1555

cond.false.1550:                                  ; preds = %cond.false.1534
  %316 = load i32, i32* @initial_argc, align 4
  %conv1551 = sext i32 %316 to i64
  %add1552 = add nsw i64 0, %conv1551
  %mul1553 = mul nsw i64 0, %add1552
  %sub1554 = sub nsw i64 %mul1553, 1
  br label %cond.end.1555

cond.end.1555:                                    ; preds = %cond.false.1550, %cond.true.1541
  %cond1556 = phi i64 [ %add1549, %cond.true.1541 ], [ %sub1554, %cond.false.1550 ]
  %sub1557 = sub nsw i64 %cond1556, 3
  %317 = load i32, i32* @initial_argc, align 4
  %conv1558 = sext i32 %317 to i64
  %cmp1559 = icmp slt i64 %sub1557, %conv1558
  br i1 %cmp1559, label %cond.true.1599, label %lor.lhs.false.1582

cond.false.1561:                                  ; preds = %cond.end.1492
  %318 = load i32, i32* @initial_argc, align 4
  %conv1562 = sext i32 %318 to i64
  %cmp1563 = icmp slt i64 %conv1562, 0
  br i1 %cmp1563, label %cond.true.1565, label %cond.false.1570

cond.true.1565:                                   ; preds = %cond.false.1561
  %319 = load i32, i32* @initial_argc, align 4
  %conv1566 = sext i32 %319 to i64
  %add1567 = add nsw i64 %conv1566, 3
  %cmp1568 = icmp sle i64 3, %add1567
  br i1 %cmp1568, label %cond.true.1599, label %lor.lhs.false.1582

cond.false.1570:                                  ; preds = %cond.false.1561
  br i1 false, label %cond.true.1571, label %cond.false.1577

cond.true.1571:                                   ; preds = %cond.false.1570
  %320 = load i32, i32* @initial_argc, align 4
  %conv1572 = sext i32 %320 to i64
  %321 = load i32, i32* @initial_argc, align 4
  %conv1573 = sext i32 %321 to i64
  %add1574 = add nsw i64 %conv1573, 3
  %cmp1575 = icmp sle i64 %conv1572, %add1574
  br i1 %cmp1575, label %cond.true.1599, label %lor.lhs.false.1582

cond.false.1577:                                  ; preds = %cond.false.1570
  %322 = load i32, i32* @initial_argc, align 4
  %conv1578 = sext i32 %322 to i64
  %add1579 = add nsw i64 %conv1578, 3
  %cmp1580 = icmp slt i64 %add1579, 3
  br i1 %cmp1580, label %cond.true.1599, label %lor.lhs.false.1582

lor.lhs.false.1582:                               ; preds = %cond.false.1577, %cond.true.1571, %cond.true.1565, %cond.end.1555, %cond.end.1529
  %323 = load i32, i32* @initial_argc, align 4
  %conv1583 = sext i32 %323 to i64
  %add1584 = add nsw i64 %conv1583, 3
  %mul1585 = mul nsw i64 0, %add1584
  %sub1586 = sub nsw i64 %mul1585, 1
  %cmp1587 = icmp slt i64 %sub1586, 0
  br i1 %cmp1587, label %land.lhs.true.1589, label %lor.lhs.false.1594

land.lhs.true.1589:                               ; preds = %lor.lhs.false.1582
  %324 = load i32, i32* @initial_argc, align 4
  %conv1590 = sext i32 %324 to i64
  %add1591 = add nsw i64 %conv1590, 3
  %cmp1592 = icmp slt i64 %add1591, -9223372036854775808
  br i1 %cmp1592, label %cond.true.1599, label %lor.lhs.false.1594

lor.lhs.false.1594:                               ; preds = %land.lhs.true.1589, %lor.lhs.false.1582
  %325 = load i32, i32* @initial_argc, align 4
  %conv1595 = sext i32 %325 to i64
  %add1596 = add nsw i64 %conv1595, 3
  %cmp1597 = icmp slt i64 9223372036854775807, %add1596
  br i1 %cmp1597, label %cond.true.1599, label %cond.false.1615

cond.true.1599:                                   ; preds = %lor.lhs.false.1594, %land.lhs.true.1589, %cond.false.1577, %cond.true.1571, %cond.true.1565, %cond.end.1555, %cond.end.1529
  %326 = load i32, i32* @initial_argc, align 4
  %conv1600 = sext i32 %326 to i64
  %add1601 = add i64 %conv1600, 3
  %cmp1602 = icmp ule i64 %add1601, 9223372036854775807
  br i1 %cmp1602, label %cond.true.1604, label %cond.false.1607

cond.true.1604:                                   ; preds = %cond.true.1599
  %327 = load i32, i32* @initial_argc, align 4
  %conv1605 = sext i32 %327 to i64
  %add1606 = add i64 %conv1605, 3
  br label %cond.end.1612

cond.false.1607:                                  ; preds = %cond.true.1599
  %328 = load i32, i32* @initial_argc, align 4
  %conv1608 = sext i32 %328 to i64
  %add1609 = add i64 %conv1608, 3
  %sub1610 = sub i64 %add1609, -9223372036854775808
  %add1611 = add nsw i64 %sub1610, -9223372036854775808
  br label %cond.end.1612

cond.end.1612:                                    ; preds = %cond.false.1607, %cond.true.1604
  %cond1613 = phi i64 [ %add1606, %cond.true.1604 ], [ %add1611, %cond.false.1607 ]
  %conv1614 = trunc i64 %cond1613 to i32
  store i32 %conv1614, i32* %i, align 4
  br i1 true, label %if.then.1780, label %if.end.1781

cond.false.1615:                                  ; preds = %lor.lhs.false.1594
  %329 = load i32, i32* @initial_argc, align 4
  %conv1616 = sext i32 %329 to i64
  %add1617 = add i64 %conv1616, 3
  %cmp1618 = icmp ule i64 %add1617, 9223372036854775807
  br i1 %cmp1618, label %cond.true.1620, label %cond.false.1623

cond.true.1620:                                   ; preds = %cond.false.1615
  %330 = load i32, i32* @initial_argc, align 4
  %conv1621 = sext i32 %330 to i64
  %add1622 = add i64 %conv1621, 3
  br label %cond.end.1628

cond.false.1623:                                  ; preds = %cond.false.1615
  %331 = load i32, i32* @initial_argc, align 4
  %conv1624 = sext i32 %331 to i64
  %add1625 = add i64 %conv1624, 3
  %sub1626 = sub i64 %add1625, -9223372036854775808
  %add1627 = add nsw i64 %sub1626, -9223372036854775808
  br label %cond.end.1628

cond.end.1628:                                    ; preds = %cond.false.1623, %cond.true.1620
  %cond1629 = phi i64 [ %add1622, %cond.true.1620 ], [ %add1627, %cond.false.1623 ]
  %conv1630 = trunc i64 %cond1629 to i32
  store i32 %conv1630, i32* %i, align 4
  br i1 false, label %if.then.1780, label %if.end.1781

cond.false.1631:                                  ; preds = %cond.false.1460
  %332 = load i32, i32* @initial_argc, align 4
  %add1632 = add nsw i32 0, %332
  %mul1633 = mul nsw i32 0, %add1632
  %sub1634 = sub nsw i32 %mul1633, 1
  %cmp1635 = icmp slt i32 %sub1634, 0
  br i1 %cmp1635, label %cond.true.1637, label %cond.false.1653

cond.true.1637:                                   ; preds = %cond.false.1631
  %333 = load i32, i32* @initial_argc, align 4
  %add1638 = add nsw i32 0, %333
  %mul1639 = mul nsw i32 0, %add1638
  %add1640 = add nsw i32 %mul1639, 0
  %neg1641 = xor i32 %add1640, -1
  %cmp1642 = icmp eq i32 %neg1641, -1
  %conv1643 = zext i1 %cmp1642 to i32
  %sub1644 = sub nsw i32 0, %conv1643
  %334 = load i32, i32* @initial_argc, align 4
  %add1645 = add nsw i32 0, %334
  %mul1646 = mul nsw i32 0, %add1645
  %add1647 = add nsw i32 %mul1646, 1
  %shl1648 = shl i32 %add1647, 30
  %sub1649 = sub nsw i32 %shl1648, 1
  %mul1650 = mul nsw i32 %sub1649, 2
  %add1651 = add nsw i32 %mul1650, 1
  %sub1652 = sub nsw i32 %sub1644, %add1651
  br label %cond.end.1657

cond.false.1653:                                  ; preds = %cond.false.1631
  %335 = load i32, i32* @initial_argc, align 4
  %add1654 = add nsw i32 0, %335
  %mul1655 = mul nsw i32 0, %add1654
  %add1656 = add nsw i32 %mul1655, 0
  br label %cond.end.1657

cond.end.1657:                                    ; preds = %cond.false.1653, %cond.true.1637
  %cond1658 = phi i32 [ %sub1652, %cond.true.1637 ], [ %add1656, %cond.false.1653 ]
  %cmp1659 = icmp slt i32 %cond1658, 0
  br i1 %cmp1659, label %cond.true.1661, label %cond.false.1716

cond.true.1661:                                   ; preds = %cond.end.1657
  br i1 false, label %cond.true.1662, label %cond.false.1693

cond.true.1662:                                   ; preds = %cond.true.1661
  %336 = load i32, i32* @initial_argc, align 4
  %337 = load i32, i32* @initial_argc, align 4
  %add1663 = add nsw i32 0, %337
  %mul1664 = mul nsw i32 0, %add1663
  %sub1665 = sub nsw i32 %mul1664, 1
  %cmp1666 = icmp slt i32 %sub1665, 0
  br i1 %cmp1666, label %cond.true.1668, label %cond.false.1684

cond.true.1668:                                   ; preds = %cond.true.1662
  %338 = load i32, i32* @initial_argc, align 4
  %add1669 = add nsw i32 0, %338
  %mul1670 = mul nsw i32 0, %add1669
  %add1671 = add nsw i32 %mul1670, 0
  %neg1672 = xor i32 %add1671, -1
  %cmp1673 = icmp eq i32 %neg1672, -1
  %conv1674 = zext i1 %cmp1673 to i32
  %sub1675 = sub nsw i32 0, %conv1674
  %339 = load i32, i32* @initial_argc, align 4
  %add1676 = add nsw i32 0, %339
  %mul1677 = mul nsw i32 0, %add1676
  %add1678 = add nsw i32 %mul1677, 1
  %shl1679 = shl i32 %add1678, 30
  %sub1680 = sub nsw i32 %shl1679, 1
  %mul1681 = mul nsw i32 %sub1680, 2
  %add1682 = add nsw i32 %mul1681, 1
  %sub1683 = sub nsw i32 %sub1675, %add1682
  br label %cond.end.1688

cond.false.1684:                                  ; preds = %cond.true.1662
  %340 = load i32, i32* @initial_argc, align 4
  %add1685 = add nsw i32 0, %340
  %mul1686 = mul nsw i32 0, %add1685
  %add1687 = add nsw i32 %mul1686, 0
  br label %cond.end.1688

cond.end.1688:                                    ; preds = %cond.false.1684, %cond.true.1668
  %cond1689 = phi i32 [ %sub1683, %cond.true.1668 ], [ %add1687, %cond.false.1684 ]
  %sub1690 = sub nsw i32 %cond1689, 3
  %cmp1691 = icmp slt i32 %336, %sub1690
  br i1 %cmp1691, label %cond.true.1748, label %lor.lhs.false.1732

cond.false.1693:                                  ; preds = %cond.true.1661
  %341 = load i32, i32* @initial_argc, align 4
  %add1694 = add nsw i32 0, %341
  %mul1695 = mul nsw i32 0, %add1694
  %sub1696 = sub nsw i32 %mul1695, 1
  %cmp1697 = icmp slt i32 %sub1696, 0
  br i1 %cmp1697, label %cond.true.1699, label %cond.false.1707

cond.true.1699:                                   ; preds = %cond.false.1693
  %342 = load i32, i32* @initial_argc, align 4
  %add1700 = add nsw i32 0, %342
  %mul1701 = mul nsw i32 0, %add1700
  %add1702 = add nsw i32 %mul1701, 1
  %shl1703 = shl i32 %add1702, 30
  %sub1704 = sub nsw i32 %shl1703, 1
  %mul1705 = mul nsw i32 %sub1704, 2
  %add1706 = add nsw i32 %mul1705, 1
  br label %cond.end.1711

cond.false.1707:                                  ; preds = %cond.false.1693
  %343 = load i32, i32* @initial_argc, align 4
  %add1708 = add nsw i32 0, %343
  %mul1709 = mul nsw i32 0, %add1708
  %sub1710 = sub nsw i32 %mul1709, 1
  br label %cond.end.1711

cond.end.1711:                                    ; preds = %cond.false.1707, %cond.true.1699
  %cond1712 = phi i32 [ %add1706, %cond.true.1699 ], [ %sub1710, %cond.false.1707 ]
  %sub1713 = sub nsw i32 %cond1712, 3
  %344 = load i32, i32* @initial_argc, align 4
  %cmp1714 = icmp slt i32 %sub1713, %344
  br i1 %cmp1714, label %cond.true.1748, label %lor.lhs.false.1732

cond.false.1716:                                  ; preds = %cond.end.1657
  %345 = load i32, i32* @initial_argc, align 4
  %cmp1717 = icmp slt i32 %345, 0
  br i1 %cmp1717, label %cond.true.1719, label %cond.false.1723

cond.true.1719:                                   ; preds = %cond.false.1716
  %346 = load i32, i32* @initial_argc, align 4
  %add1720 = add nsw i32 %346, 3
  %cmp1721 = icmp sle i32 3, %add1720
  br i1 %cmp1721, label %cond.true.1748, label %lor.lhs.false.1732

cond.false.1723:                                  ; preds = %cond.false.1716
  br i1 false, label %cond.true.1724, label %cond.false.1728

cond.true.1724:                                   ; preds = %cond.false.1723
  %347 = load i32, i32* @initial_argc, align 4
  %348 = load i32, i32* @initial_argc, align 4
  %add1725 = add nsw i32 %348, 3
  %cmp1726 = icmp sle i32 %347, %add1725
  br i1 %cmp1726, label %cond.true.1748, label %lor.lhs.false.1732

cond.false.1728:                                  ; preds = %cond.false.1723
  %349 = load i32, i32* @initial_argc, align 4
  %add1729 = add nsw i32 %349, 3
  %cmp1730 = icmp slt i32 %add1729, 3
  br i1 %cmp1730, label %cond.true.1748, label %lor.lhs.false.1732

lor.lhs.false.1732:                               ; preds = %cond.false.1728, %cond.true.1724, %cond.true.1719, %cond.end.1711, %cond.end.1688
  %350 = load i32, i32* @initial_argc, align 4
  %add1733 = add nsw i32 %350, 3
  %mul1734 = mul nsw i32 0, %add1733
  %sub1735 = sub nsw i32 %mul1734, 1
  %cmp1736 = icmp slt i32 %sub1735, 0
  br i1 %cmp1736, label %land.lhs.true.1738, label %lor.lhs.false.1743

land.lhs.true.1738:                               ; preds = %lor.lhs.false.1732
  %351 = load i32, i32* @initial_argc, align 4
  %add1739 = add nsw i32 %351, 3
  %conv1740 = sext i32 %add1739 to i64
  %cmp1741 = icmp slt i64 %conv1740, -9223372036854775808
  br i1 %cmp1741, label %cond.true.1748, label %lor.lhs.false.1743

lor.lhs.false.1743:                               ; preds = %land.lhs.true.1738, %lor.lhs.false.1732
  %352 = load i32, i32* @initial_argc, align 4
  %add1744 = add nsw i32 %352, 3
  %conv1745 = sext i32 %add1744 to i64
  %cmp1746 = icmp slt i64 9223372036854775807, %conv1745
  br i1 %cmp1746, label %cond.true.1748, label %cond.false.1764

cond.true.1748:                                   ; preds = %lor.lhs.false.1743, %land.lhs.true.1738, %cond.false.1728, %cond.true.1724, %cond.true.1719, %cond.end.1711, %cond.end.1688
  %353 = load i32, i32* @initial_argc, align 4
  %conv1749 = sext i32 %353 to i64
  %add1750 = add i64 %conv1749, 3
  %cmp1751 = icmp ule i64 %add1750, 9223372036854775807
  br i1 %cmp1751, label %cond.true.1753, label %cond.false.1756

cond.true.1753:                                   ; preds = %cond.true.1748
  %354 = load i32, i32* @initial_argc, align 4
  %conv1754 = sext i32 %354 to i64
  %add1755 = add i64 %conv1754, 3
  br label %cond.end.1761

cond.false.1756:                                  ; preds = %cond.true.1748
  %355 = load i32, i32* @initial_argc, align 4
  %conv1757 = sext i32 %355 to i64
  %add1758 = add i64 %conv1757, 3
  %sub1759 = sub i64 %add1758, -9223372036854775808
  %add1760 = add nsw i64 %sub1759, -9223372036854775808
  br label %cond.end.1761

cond.end.1761:                                    ; preds = %cond.false.1756, %cond.true.1753
  %cond1762 = phi i64 [ %add1755, %cond.true.1753 ], [ %add1760, %cond.false.1756 ]
  %conv1763 = trunc i64 %cond1762 to i32
  store i32 %conv1763, i32* %i, align 4
  br i1 true, label %if.then.1780, label %if.end.1781

cond.false.1764:                                  ; preds = %lor.lhs.false.1743
  %356 = load i32, i32* @initial_argc, align 4
  %conv1765 = sext i32 %356 to i64
  %add1766 = add i64 %conv1765, 3
  %cmp1767 = icmp ule i64 %add1766, 9223372036854775807
  br i1 %cmp1767, label %cond.true.1769, label %cond.false.1772

cond.true.1769:                                   ; preds = %cond.false.1764
  %357 = load i32, i32* @initial_argc, align 4
  %conv1770 = sext i32 %357 to i64
  %add1771 = add i64 %conv1770, 3
  br label %cond.end.1777

cond.false.1772:                                  ; preds = %cond.false.1764
  %358 = load i32, i32* @initial_argc, align 4
  %conv1773 = sext i32 %358 to i64
  %add1774 = add i64 %conv1773, 3
  %sub1775 = sub i64 %add1774, -9223372036854775808
  %add1776 = add nsw i64 %sub1775, -9223372036854775808
  br label %cond.end.1777

cond.end.1777:                                    ; preds = %cond.false.1772, %cond.true.1769
  %cond1778 = phi i64 [ %add1771, %cond.true.1769 ], [ %add1776, %cond.false.1772 ]
  %conv1779 = trunc i64 %cond1778 to i32
  store i32 %conv1779, i32* %i, align 4
  br i1 false, label %if.then.1780, label %if.end.1781

if.then.1780:                                     ; preds = %cond.end.1777, %cond.end.1761, %cond.end.1628, %cond.end.1612, %cond.end.1457, %cond.end.1441, %cond.end.1308, %cond.end.1292, %cond.end.1137, %cond.end.1125, %cond.end.998, %cond.end.986, %cond.end.857, %cond.end.835, %cond.end.698, %cond.end.676, %cond.end.495, %cond.end.473, %cond.end.336, %cond.end.314
  call void @memory_full(i64 -1) #9
  unreachable

if.end.1781:                                      ; preds = %cond.end.1777, %cond.end.1761, %cond.end.1628, %cond.end.1612, %cond.end.1457, %cond.end.1441, %cond.end.1308, %cond.end.1292, %cond.end.1137, %cond.end.1125, %cond.end.998, %cond.end.986, %cond.end.857, %cond.end.835, %cond.end.698, %cond.end.676, %cond.end.495, %cond.end.473, %cond.end.336, %cond.end.314
  %359 = load i32, i32* %i, align 4
  %360 = load i32, i32* %props_idx, align 4
  %idxprom1782 = sext i32 %360 to i64
  %arrayidx1783 = getelementptr inbounds [5 x %struct.SmProp*], [5 x %struct.SmProp*]* %props, i32 0, i64 %idxprom1782
  %361 = load %struct.SmProp*, %struct.SmProp** %arrayidx1783, align 8
  %num_vals1784 = getelementptr inbounds %struct.SmProp, %struct.SmProp* %361, i32 0, i32 2
  store i32 %359, i32* %num_vals1784, align 4
  %362 = load i32, i32* %i, align 4
  %conv1785 = sext i32 %362 to i64
  %call1786 = call noalias i8* @xnmalloc(i64 %conv1785, i64 16)
  %363 = bitcast i8* %call1786 to %struct.SmPropValue*
  store %struct.SmPropValue* %363, %struct.SmPropValue** %vp, align 8
  %364 = load %struct.SmPropValue*, %struct.SmPropValue** %vp, align 8
  %365 = load i32, i32* %props_idx, align 4
  %idxprom1787 = sext i32 %365 to i64
  %arrayidx1788 = getelementptr inbounds [5 x %struct.SmProp*], [5 x %struct.SmProp*]* %props, i32 0, i64 %idxprom1787
  %366 = load %struct.SmProp*, %struct.SmProp** %arrayidx1788, align 8
  %vals1789 = getelementptr inbounds %struct.SmProp, %struct.SmProp* %366, i32 0, i32 3
  store %struct.SmPropValue* %364, %struct.SmPropValue** %vals1789, align 8
  %367 = load i8*, i8** @emacs_program, align 8
  %call1790 = call i64 @strlen(i8* %367) #8
  %conv1791 = trunc i64 %call1790 to i32
  %368 = load i32, i32* %vp_idx, align 4
  %idxprom1792 = sext i32 %368 to i64
  %369 = load i32, i32* %props_idx, align 4
  %idxprom1793 = sext i32 %369 to i64
  %arrayidx1794 = getelementptr inbounds [5 x %struct.SmProp*], [5 x %struct.SmProp*]* %props, i32 0, i64 %idxprom1793
  %370 = load %struct.SmProp*, %struct.SmProp** %arrayidx1794, align 8
  %vals1795 = getelementptr inbounds %struct.SmProp, %struct.SmProp* %370, i32 0, i32 3
  %371 = load %struct.SmPropValue*, %struct.SmPropValue** %vals1795, align 8
  %arrayidx1796 = getelementptr inbounds %struct.SmPropValue, %struct.SmPropValue* %371, i64 %idxprom1792
  %length1797 = getelementptr inbounds %struct.SmPropValue, %struct.SmPropValue* %arrayidx1796, i32 0, i32 0
  store i32 %conv1791, i32* %length1797, align 4
  %372 = load i8*, i8** @emacs_program, align 8
  %373 = load i32, i32* %vp_idx, align 4
  %inc1798 = add nsw i32 %373, 1
  store i32 %inc1798, i32* %vp_idx, align 4
  %idxprom1799 = sext i32 %373 to i64
  %374 = load i32, i32* %props_idx, align 4
  %idxprom1800 = sext i32 %374 to i64
  %arrayidx1801 = getelementptr inbounds [5 x %struct.SmProp*], [5 x %struct.SmProp*]* %props, i32 0, i64 %idxprom1800
  %375 = load %struct.SmProp*, %struct.SmProp** %arrayidx1801, align 8
  %vals1802 = getelementptr inbounds %struct.SmProp, %struct.SmProp* %375, i32 0, i32 3
  %376 = load %struct.SmPropValue*, %struct.SmPropValue** %vals1802, align 8
  %arrayidx1803 = getelementptr inbounds %struct.SmPropValue, %struct.SmPropValue* %376, i64 %idxprom1799
  %value1804 = getelementptr inbounds %struct.SmPropValue, %struct.SmPropValue* %arrayidx1803, i32 0, i32 1
  store i8* %372, i8** %value1804, align 8
  %377 = load i8*, i8** @client_id, align 8
  %call1805 = call i64 @strlen(i8* %377) #8
  %add1806 = add i64 7, %call1805
  %add1807 = add i64 %add1806, 1
  %call1808 = call noalias i8* @xmalloc(i64 %add1807)
  store i8* %call1808, i8** %smid_opt, align 8
  %378 = load i8*, i8** %smid_opt, align 8
  %call1809 = call i8* @stpcpy(i8* %378, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0)) #6
  %379 = load i8*, i8** @client_id, align 8
  %call1810 = call i8* @strcpy(i8* %call1809, i8* %379) #6
  %380 = load i8*, i8** %smid_opt, align 8
  %call1811 = call i64 @strlen(i8* %380) #8
  %conv1812 = trunc i64 %call1811 to i32
  %381 = load i32, i32* %vp_idx, align 4
  %idxprom1813 = sext i32 %381 to i64
  %382 = load i32, i32* %props_idx, align 4
  %idxprom1814 = sext i32 %382 to i64
  %arrayidx1815 = getelementptr inbounds [5 x %struct.SmProp*], [5 x %struct.SmProp*]* %props, i32 0, i64 %idxprom1814
  %383 = load %struct.SmProp*, %struct.SmProp** %arrayidx1815, align 8
  %vals1816 = getelementptr inbounds %struct.SmProp, %struct.SmProp* %383, i32 0, i32 3
  %384 = load %struct.SmPropValue*, %struct.SmPropValue** %vals1816, align 8
  %arrayidx1817 = getelementptr inbounds %struct.SmPropValue, %struct.SmPropValue* %384, i64 %idxprom1813
  %length1818 = getelementptr inbounds %struct.SmPropValue, %struct.SmPropValue* %arrayidx1817, i32 0, i32 0
  store i32 %conv1812, i32* %length1818, align 4
  %385 = load i8*, i8** %smid_opt, align 8
  %386 = load i32, i32* %vp_idx, align 4
  %inc1819 = add nsw i32 %386, 1
  store i32 %inc1819, i32* %vp_idx, align 4
  %idxprom1820 = sext i32 %386 to i64
  %387 = load i32, i32* %props_idx, align 4
  %idxprom1821 = sext i32 %387 to i64
  %arrayidx1822 = getelementptr inbounds [5 x %struct.SmProp*], [5 x %struct.SmProp*]* %props, i32 0, i64 %idxprom1821
  %388 = load %struct.SmProp*, %struct.SmProp** %arrayidx1822, align 8
  %vals1823 = getelementptr inbounds %struct.SmProp, %struct.SmProp* %388, i32 0, i32 3
  %389 = load %struct.SmPropValue*, %struct.SmPropValue** %vals1823, align 8
  %arrayidx1824 = getelementptr inbounds %struct.SmPropValue, %struct.SmPropValue* %389, i64 %idxprom1820
  %value1825 = getelementptr inbounds %struct.SmPropValue, %struct.SmPropValue* %arrayidx1824, i32 0, i32 1
  store i8* %385, i8** %value1825, align 8
  %call1826 = call i64 @strlen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @NOSPLASH_OPT, i32 0, i32 0)) #8
  %conv1827 = trunc i64 %call1826 to i32
  %390 = load i32, i32* %vp_idx, align 4
  %idxprom1828 = sext i32 %390 to i64
  %391 = load i32, i32* %props_idx, align 4
  %idxprom1829 = sext i32 %391 to i64
  %arrayidx1830 = getelementptr inbounds [5 x %struct.SmProp*], [5 x %struct.SmProp*]* %props, i32 0, i64 %idxprom1829
  %392 = load %struct.SmProp*, %struct.SmProp** %arrayidx1830, align 8
  %vals1831 = getelementptr inbounds %struct.SmProp, %struct.SmProp* %392, i32 0, i32 3
  %393 = load %struct.SmPropValue*, %struct.SmPropValue** %vals1831, align 8
  %arrayidx1832 = getelementptr inbounds %struct.SmPropValue, %struct.SmPropValue* %393, i64 %idxprom1828
  %length1833 = getelementptr inbounds %struct.SmPropValue, %struct.SmPropValue* %arrayidx1832, i32 0, i32 0
  store i32 %conv1827, i32* %length1833, align 4
  %394 = load i32, i32* %vp_idx, align 4
  %inc1834 = add nsw i32 %394, 1
  store i32 %inc1834, i32* %vp_idx, align 4
  %idxprom1835 = sext i32 %394 to i64
  %395 = load i32, i32* %props_idx, align 4
  %idxprom1836 = sext i32 %395 to i64
  %arrayidx1837 = getelementptr inbounds [5 x %struct.SmProp*], [5 x %struct.SmProp*]* %props, i32 0, i64 %idxprom1836
  %396 = load %struct.SmProp*, %struct.SmProp** %arrayidx1837, align 8
  %vals1838 = getelementptr inbounds %struct.SmProp, %struct.SmProp* %396, i32 0, i32 3
  %397 = load %struct.SmPropValue*, %struct.SmPropValue** %vals1838, align 8
  %arrayidx1839 = getelementptr inbounds %struct.SmPropValue, %struct.SmPropValue* %397, i64 %idxprom1835
  %value1840 = getelementptr inbounds %struct.SmPropValue, %struct.SmPropValue* %arrayidx1839, i32 0, i32 1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @NOSPLASH_OPT, i32 0, i32 0), i8** %value1840, align 8
  %398 = load i8*, i8** %cwd, align 8
  %tobool1841 = icmp ne i8* %398, null
  br i1 %tobool1841, label %if.then.1842, label %if.end.1864

if.then.1842:                                     ; preds = %if.end.1781
  %399 = load i8*, i8** %cwd, align 8
  %call1843 = call i64 @strlen(i8* %399) #8
  %add1844 = add i64 8, %call1843
  %add1845 = add i64 %add1844, 1
  %call1846 = call noalias i8* @xmalloc(i64 %add1845)
  store i8* %call1846, i8** %chdir_opt, align 8
  %400 = load i8*, i8** %chdir_opt, align 8
  %call1847 = call i8* @stpcpy(i8* %400, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0)) #6
  %401 = load i8*, i8** %cwd, align 8
  %call1848 = call i8* @strcpy(i8* %call1847, i8* %401) #6
  %402 = load i8*, i8** %chdir_opt, align 8
  %call1849 = call i64 @strlen(i8* %402) #8
  %conv1850 = trunc i64 %call1849 to i32
  %403 = load i32, i32* %vp_idx, align 4
  %idxprom1851 = sext i32 %403 to i64
  %404 = load i32, i32* %props_idx, align 4
  %idxprom1852 = sext i32 %404 to i64
  %arrayidx1853 = getelementptr inbounds [5 x %struct.SmProp*], [5 x %struct.SmProp*]* %props, i32 0, i64 %idxprom1852
  %405 = load %struct.SmProp*, %struct.SmProp** %arrayidx1853, align 8
  %vals1854 = getelementptr inbounds %struct.SmProp, %struct.SmProp* %405, i32 0, i32 3
  %406 = load %struct.SmPropValue*, %struct.SmPropValue** %vals1854, align 8
  %arrayidx1855 = getelementptr inbounds %struct.SmPropValue, %struct.SmPropValue* %406, i64 %idxprom1851
  %length1856 = getelementptr inbounds %struct.SmPropValue, %struct.SmPropValue* %arrayidx1855, i32 0, i32 0
  store i32 %conv1850, i32* %length1856, align 4
  %407 = load i8*, i8** %chdir_opt, align 8
  %408 = load i32, i32* %vp_idx, align 4
  %inc1857 = add nsw i32 %408, 1
  store i32 %inc1857, i32* %vp_idx, align 4
  %idxprom1858 = sext i32 %408 to i64
  %409 = load i32, i32* %props_idx, align 4
  %idxprom1859 = sext i32 %409 to i64
  %arrayidx1860 = getelementptr inbounds [5 x %struct.SmProp*], [5 x %struct.SmProp*]* %props, i32 0, i64 %idxprom1859
  %410 = load %struct.SmProp*, %struct.SmProp** %arrayidx1860, align 8
  %vals1861 = getelementptr inbounds %struct.SmProp, %struct.SmProp* %410, i32 0, i32 3
  %411 = load %struct.SmPropValue*, %struct.SmPropValue** %vals1861, align 8
  %arrayidx1862 = getelementptr inbounds %struct.SmPropValue, %struct.SmPropValue* %411, i64 %idxprom1858
  %value1863 = getelementptr inbounds %struct.SmPropValue, %struct.SmPropValue* %arrayidx1862, i32 0, i32 1
  store i8* %407, i8** %value1863, align 8
  br label %if.end.1864

if.end.1864:                                      ; preds = %if.then.1842, %if.end.1781
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.1864
  %412 = load i32, i32* %i, align 4
  %413 = load i32, i32* @initial_argc, align 4
  %cmp1865 = icmp slt i32 %412, %413
  br i1 %cmp1865, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %414 = load i32, i32* %i, align 4
  %idxprom1867 = sext i32 %414 to i64
  %415 = load i8**, i8*** @initial_argv, align 8
  %arrayidx1868 = getelementptr inbounds i8*, i8** %415, i64 %idxprom1867
  %416 = load i8*, i8** %arrayidx1868, align 8
  %call1869 = call i64 @strlen(i8* %416) #8
  %conv1870 = trunc i64 %call1869 to i32
  %417 = load i32, i32* %vp_idx, align 4
  %idxprom1871 = sext i32 %417 to i64
  %418 = load i32, i32* %props_idx, align 4
  %idxprom1872 = sext i32 %418 to i64
  %arrayidx1873 = getelementptr inbounds [5 x %struct.SmProp*], [5 x %struct.SmProp*]* %props, i32 0, i64 %idxprom1872
  %419 = load %struct.SmProp*, %struct.SmProp** %arrayidx1873, align 8
  %vals1874 = getelementptr inbounds %struct.SmProp, %struct.SmProp* %419, i32 0, i32 3
  %420 = load %struct.SmPropValue*, %struct.SmPropValue** %vals1874, align 8
  %arrayidx1875 = getelementptr inbounds %struct.SmPropValue, %struct.SmPropValue* %420, i64 %idxprom1871
  %length1876 = getelementptr inbounds %struct.SmPropValue, %struct.SmPropValue* %arrayidx1875, i32 0, i32 0
  store i32 %conv1870, i32* %length1876, align 4
  %421 = load i32, i32* %i, align 4
  %idxprom1877 = sext i32 %421 to i64
  %422 = load i8**, i8*** @initial_argv, align 8
  %arrayidx1878 = getelementptr inbounds i8*, i8** %422, i64 %idxprom1877
  %423 = load i8*, i8** %arrayidx1878, align 8
  %424 = load i32, i32* %vp_idx, align 4
  %inc1879 = add nsw i32 %424, 1
  store i32 %inc1879, i32* %vp_idx, align 4
  %idxprom1880 = sext i32 %424 to i64
  %425 = load i32, i32* %props_idx, align 4
  %idxprom1881 = sext i32 %425 to i64
  %arrayidx1882 = getelementptr inbounds [5 x %struct.SmProp*], [5 x %struct.SmProp*]* %props, i32 0, i64 %idxprom1881
  %426 = load %struct.SmProp*, %struct.SmProp** %arrayidx1882, align 8
  %vals1883 = getelementptr inbounds %struct.SmProp, %struct.SmProp* %426, i32 0, i32 3
  %427 = load %struct.SmPropValue*, %struct.SmPropValue** %vals1883, align 8
  %arrayidx1884 = getelementptr inbounds %struct.SmPropValue, %struct.SmPropValue* %427, i64 %idxprom1880
  %value1885 = getelementptr inbounds %struct.SmPropValue, %struct.SmPropValue* %arrayidx1884, i32 0, i32 1
  store i8* %423, i8** %value1885, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %428 = load i32, i32* %i, align 4
  %inc1886 = add nsw i32 %428, 1
  store i32 %inc1886, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %429 = load i32, i32* %props_idx, align 4
  %inc1887 = add nsw i32 %429, 1
  store i32 %inc1887, i32* %props_idx, align 4
  %430 = load %struct._SmcConn*, %struct._SmcConn** %smcConn.addr, align 8
  %431 = load i32, i32* %props_idx, align 4
  %arraydecay = getelementptr inbounds [5 x %struct.SmProp*], [5 x %struct.SmProp*]* %props, i32 0, i32 0
  call void @SmcSetProperties(%struct._SmcConn* %430, i32 %431, %struct.SmProp** %arraydecay)
  %432 = load i8*, i8** %smid_opt, align 8
  call void @xfree(i8* %432)
  %433 = load i8*, i8** %chdir_opt, align 8
  call void @xfree(i8* %433)
  %434 = load i8*, i8** %cwd, align 8
  call void @xfree(i8* %434)
  %435 = load %struct.SmPropValue*, %struct.SmPropValue** %vp, align 8
  %436 = bitcast %struct.SmPropValue* %435 to i8*
  call void @xfree(i8* %436)
  store i32 0, i32* %i, align 4
  br label %for.cond.1888

for.cond.1888:                                    ; preds = %for.inc.1898, %for.end
  %437 = load i32, i32* %i, align 4
  %438 = load i32, i32* %props_idx, align 4
  %cmp1889 = icmp slt i32 %437, %438
  br i1 %cmp1889, label %for.body.1891, label %for.end.1900

for.body.1891:                                    ; preds = %for.cond.1888
  %439 = load i32, i32* %i, align 4
  %idxprom1892 = sext i32 %439 to i64
  %arrayidx1893 = getelementptr inbounds [5 x %struct.SmProp*], [5 x %struct.SmProp*]* %props, i32 0, i64 %idxprom1892
  %440 = load %struct.SmProp*, %struct.SmProp** %arrayidx1893, align 8
  %type1894 = getelementptr inbounds %struct.SmProp, %struct.SmProp* %440, i32 0, i32 1
  %441 = load i8*, i8** %type1894, align 8
  call void @xfree(i8* %441)
  %442 = load i32, i32* %i, align 4
  %idxprom1895 = sext i32 %442 to i64
  %arrayidx1896 = getelementptr inbounds [5 x %struct.SmProp*], [5 x %struct.SmProp*]* %props, i32 0, i64 %idxprom1895
  %443 = load %struct.SmProp*, %struct.SmProp** %arrayidx1896, align 8
  %name1897 = getelementptr inbounds %struct.SmProp, %struct.SmProp* %443, i32 0, i32 0
  %444 = load i8*, i8** %name1897, align 8
  call void @xfree(i8* %444)
  br label %for.inc.1898

for.inc.1898:                                     ; preds = %for.body.1891
  %445 = load i32, i32* %i, align 4
  %inc1899 = add nsw i32 %445, 1
  store i32 %inc1899, i32* %i, align 4
  br label %for.cond.1888

for.end.1900:                                     ; preds = %for.cond.1888
  %446 = load i32, i32* %interactStyle.addr, align 4
  %cmp1901 = icmp ne i32 %446, 2
  br i1 %cmp1901, label %if.then.1911, label %lor.lhs.false.1903

lor.lhs.false.1903:                               ; preds = %for.end.1900
  %447 = load i32, i32* %shutdown.addr, align 4
  %tobool1904 = icmp ne i32 %447, 0
  br i1 %tobool1904, label %lor.lhs.false.1905, label %if.then.1911

lor.lhs.false.1905:                               ; preds = %lor.lhs.false.1903
  %448 = load i32, i32* %saveType.addr, align 4
  %cmp1906 = icmp eq i32 %448, 1
  br i1 %cmp1906, label %if.then.1911, label %lor.lhs.false.1908

lor.lhs.false.1908:                               ; preds = %lor.lhs.false.1905
  %449 = load %struct._SmcConn*, %struct._SmcConn** %smcConn.addr, align 8
  %call1909 = call i32 @SmcInteractRequest(%struct._SmcConn* %449, i32 1, void (%struct._SmcConn*, i8*)* @smc_interact_CB, i8* null)
  %tobool1910 = icmp ne i32 %call1909, 0
  br i1 %tobool1910, label %if.end.1912, label %if.then.1911

if.then.1911:                                     ; preds = %lor.lhs.false.1908, %lor.lhs.false.1905, %lor.lhs.false.1903, %for.end.1900
  %450 = load %struct._SmcConn*, %struct._SmcConn** %smcConn.addr, align 8
  call void @SmcSaveYourselfDone(%struct._SmcConn* %450, i32 1)
  br label %if.end.1912

if.end.1912:                                      ; preds = %if.then, %if.then.1911, %lor.lhs.false.1908
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @smc_die_CB(%struct._SmcConn* %smcConn, i8* %clientData) #0 {
entry:
  %smcConn.addr = alloca %struct._SmcConn*, align 8
  %clientData.addr = alloca i8*, align 8
  store %struct._SmcConn* %smcConn, %struct._SmcConn** %smcConn.addr, align 8
  store i8* %clientData, i8** %clientData.addr, align 8
  %bf.load = load i32, i32* getelementptr inbounds (%struct.input_event, %struct.input_event* @emacs_event, i32 0, i32 0), align 8
  %bf.clear = and i32 %bf.load, -65536
  %bf.set = or i32 %bf.clear, 25
  store i32 %bf.set, i32* getelementptr inbounds (%struct.input_event, %struct.input_event* @emacs_event, i32 0, i32 0), align 8
  %call = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call, i64* getelementptr inbounds (%struct.input_event, %struct.input_event* @emacs_event, i32 0, i32 7), align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @smc_save_complete_CB(%struct._SmcConn* %smcConn, i8* %clientData) #0 {
entry:
  %smcConn.addr = alloca %struct._SmcConn*, align 8
  %clientData.addr = alloca i8*, align 8
  store %struct._SmcConn* %smcConn, %struct._SmcConn** %smcConn.addr, align 8
  store i8* %clientData, i8** %clientData.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @smc_shutdown_cancelled_CB(%struct._SmcConn* %smcConn, i8* %clientData) #0 {
entry:
  %smcConn.addr = alloca %struct._SmcConn*, align 8
  %clientData.addr = alloca i8*, align 8
  store %struct._SmcConn* %smcConn, %struct._SmcConn** %smcConn.addr, align 8
  store i8* %clientData, i8** %clientData.addr, align 8
  ret void
}

declare void (%struct._SmcConn*, i32, i32, i64, i32, i32, i8*)* @SmcSetErrorHandler(void (%struct._SmcConn*, i32, i32, i64, i32, i32, i8*)*) #2

; Function Attrs: nounwind uwtable
define internal void @smc_error_handler(%struct._SmcConn* %smcConn, i32 %swap, i32 %offendingMinorOpcode, i64 %offendingSequence, i32 %errorClass, i32 %severity, i8* %values) #0 {
entry:
  %smcConn.addr = alloca %struct._SmcConn*, align 8
  %swap.addr = alloca i32, align 4
  %offendingMinorOpcode.addr = alloca i32, align 4
  %offendingSequence.addr = alloca i64, align 8
  %errorClass.addr = alloca i32, align 4
  %severity.addr = alloca i32, align 4
  %values.addr = alloca i8*, align 8
  store %struct._SmcConn* %smcConn, %struct._SmcConn** %smcConn.addr, align 8
  store i32 %swap, i32* %swap.addr, align 4
  store i32 %offendingMinorOpcode, i32* %offendingMinorOpcode.addr, align 4
  store i64 %offendingSequence, i64* %offendingSequence.addr, align 8
  store i32 %errorClass, i32* %errorClass.addr, align 4
  store i32 %severity, i32* %severity.addr, align 4
  store i8* %values, i8** %values.addr, align 8
  ret void
}

declare void (%struct._IceConn*, i32, i32, i64, i32, i32, i8*)* @IceSetErrorHandler(void (%struct._IceConn*, i32, i32, i64, i32, i32, i8*)*) #2

; Function Attrs: nounwind uwtable
define internal void @ice_error_handler(%struct._IceConn* %iceConn, i32 %swap, i32 %offendingMinorOpcode, i64 %offendingSequence, i32 %errorClass, i32 %severity, i8* %values) #0 {
entry:
  %iceConn.addr = alloca %struct._IceConn*, align 8
  %swap.addr = alloca i32, align 4
  %offendingMinorOpcode.addr = alloca i32, align 4
  %offendingSequence.addr = alloca i64, align 8
  %errorClass.addr = alloca i32, align 4
  %severity.addr = alloca i32, align 4
  %values.addr = alloca i8*, align 8
  store %struct._IceConn* %iceConn, %struct._IceConn** %iceConn.addr, align 8
  store i32 %swap, i32* %swap.addr, align 4
  store i32 %offendingMinorOpcode, i32* %offendingMinorOpcode.addr, align 4
  store i64 %offendingSequence, i64* %offendingSequence.addr, align 8
  store i32 %errorClass, i32* %errorClass.addr, align 4
  store i32 %severity, i32* %severity.addr, align 4
  store i8* %values, i8** %values.addr, align 8
  ret void
}

declare void (%struct._IceConn*)* @IceSetIOErrorHandler(void (%struct._IceConn*)*) #2

; Function Attrs: nounwind uwtable
define internal void @ice_io_error_handler(%struct._IceConn* %iceConn) #0 {
entry:
  %iceConn.addr = alloca %struct._IceConn*, align 8
  store %struct._IceConn* %iceConn, %struct._IceConn** %iceConn.addr, align 8
  call void @ice_connection_closed()
  ret void
}

declare i32 @IceAddConnectionWatch(void (%struct._IceConn*, i8*, i32, i8**)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @ice_conn_watch_CB(%struct._IceConn* %iceConn, i8* %clientData, i32 %opening, i8** %watchData) #0 {
entry:
  %iceConn.addr = alloca %struct._IceConn*, align 8
  %clientData.addr = alloca i8*, align 8
  %opening.addr = alloca i32, align 4
  %watchData.addr = alloca i8**, align 8
  store %struct._IceConn* %iceConn, %struct._IceConn** %iceConn.addr, align 8
  store i8* %clientData, i8** %clientData.addr, align 8
  store i32 %opening, i32* %opening.addr, align 4
  store i8** %watchData, i8*** %watchData.addr, align 8
  %0 = load i32, i32* %opening.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @ice_connection_closed()
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._IceConn*, %struct._IceConn** %iceConn.addr, align 8
  %call = call i32 @IceConnectionNumber(%struct._IceConn* %1)
  store i32 %call, i32* @ice_fd, align 4
  %2 = load i32, i32* @ice_fd, align 4
  call void @add_read_fd(i32 %2, void (i32, i8*)* @x_session_check_input, i8* null)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare %struct._SmcConn* @SmcOpenConnection(i8*, i8*, i32, i32, i64, %struct.SmcCallbacks*, i8*, i8**, i32, i8*) #2

declare i64 @build_string(i8*) #2

declare void @gdk_set_sm_client_id(i8*) #2

; Function Attrs: nounwind uwtable
define void @x_session_close() #0 {
entry:
  call void @ice_connection_closed()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ice_connection_closed() #0 {
entry:
  %0 = load i32, i32* @ice_fd, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @ice_fd, align 4
  call void @delete_read_fd(i32 %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 -1, i32* @ice_fd, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @Fhandle_save_session(i64 %event) #0 {
entry:
  %event.addr = alloca i64, align 8
  %kill_emacs = alloca i8, align 1
  %cancel_shutdown = alloca i8, align 1
  store i64 %event, i64* %event.addr, align 8
  %0 = load i64, i64* %event.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %event.addr, align 8
  %sub = sub nsw i64 %1, 3
  %2 = inttoptr i64 %sub to i8*
  %3 = bitcast i8* %2 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %3, i32 0, i32 1
  %cdr = bitcast %union.anon.15* %u to i64*
  %4 = load i64, i64* %cdr, align 8
  %and2 = and i64 %4, 7
  %conv3 = trunc i64 %and2 to i32
  %cmp4 = icmp eq i32 %conv3, 3
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %call = call i64 @builtin_lisp_symbol(i32 901)
  %5 = load i64, i64* %event.addr, align 8
  %sub6 = sub nsw i64 %5, 3
  %6 = inttoptr i64 %sub6 to i8*
  %7 = bitcast i8* %6 to %struct.Lisp_Cons*
  %u7 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %7, i32 0, i32 1
  %cdr8 = bitcast %union.anon.15* %u7 to i64*
  %8 = load i64, i64* %cdr8, align 8
  %sub9 = sub nsw i64 %8, 3
  %9 = inttoptr i64 %sub9 to i8*
  %10 = bitcast i8* %9 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %10, i32 0, i32 0
  %11 = load i64, i64* %car, align 8
  %cmp10 = icmp eq i64 %call, %11
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp10, %land.rhs ]
  %frombool = zext i1 %12 to i8
  store i8 %frombool, i8* %kill_emacs, align 1
  %13 = load i8, i8* @doing_interact, align 1
  %tobool = trunc i8 %13 to i1
  br i1 %tobool, label %land.lhs.true.13, label %if.else

land.lhs.true.13:                                 ; preds = %land.end
  %14 = load i8, i8* %kill_emacs, align 1
  %tobool14 = trunc i8 %14 to i1
  br i1 %tobool14, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true.13
  %call15 = call i64 @intern(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0))
  %call16 = call i64 @call0(i64 %call15)
  %call17 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp18 = icmp eq i64 %call16, %call17
  %lnot = xor i1 %cmp18, true
  %frombool20 = zext i1 %lnot to i8
  store i8 %frombool20, i8* %cancel_shutdown, align 1
  %15 = load %struct._SmcConn*, %struct._SmcConn** @smc_conn, align 8
  %16 = load i8, i8* %cancel_shutdown, align 1
  %tobool21 = trunc i8 %16 to i1
  %conv22 = zext i1 %tobool21 to i32
  call void @SmcInteractDone(%struct._SmcConn* %15, i32 %conv22)
  %17 = load %struct._SmcConn*, %struct._SmcConn** @smc_conn, align 8
  call void @SmcSaveYourselfDone(%struct._SmcConn* %17, i32 1)
  store i8 0, i8* @doing_interact, align 1
  br label %if.end.26

if.else:                                          ; preds = %land.lhs.true.13, %land.end
  %18 = load i8, i8* %kill_emacs, align 1
  %tobool23 = trunc i8 %18 to i1
  br i1 %tobool23, label %if.then.24, label %if.end

if.then.24:                                       ; preds = %if.else
  %call25 = call i64 @builtin_lisp_symbol(i32 0)
  %19 = call i64 @Fkill_emacs(i64 %call25) #9
  unreachable

if.end:                                           ; preds = %if.else
  br label %if.end.26

if.end.26:                                        ; preds = %if.end, %if.then
  %call27 = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call27
}

declare i64 @builtin_lisp_symbol(i32) #2

declare i64 @call0(i64) #2

declare i64 @intern(i8*) #2

declare void @SmcInteractDone(%struct._SmcConn*, i32) #2

declare void @SmcSaveYourselfDone(%struct._SmcConn*, i32) #2

; Function Attrs: noreturn
declare i64 @Fkill_emacs(i64) #4

; Function Attrs: nounwind uwtable
define void @syms_of_xsmfns() #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %entry
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_xsmfns.o_fwd, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 361))
  br label %do.end

do.end:                                           ; preds = %do.body
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 361), align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_xsmfns.o_fwd.3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 362))
  br label %do.end.2

do.end.2:                                         ; preds = %do.body.1
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call3, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 362), align 8
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Shandle_save_session to %struct.Lisp_Subr*))
  ret void
}

declare void @defvar_lisp(%struct.Lisp_Objfwd*, i8*, i64*) #2

declare void @defsubr(%struct.Lisp_Subr*) #2

declare i64 @Fuser_login_name(i64) #2

declare noalias i8* @xstrdup(i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare i8* @SDATA(i64) #2

; Function Attrs: noreturn
declare void @memory_full(i64) #4

declare noalias i8* @xnmalloc(i64, i64) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @stpcpy(i8*, i8*) #1

declare void @SmcSetProperties(%struct._SmcConn*, i32, %struct.SmProp**) #2

declare void @xfree(i8*) #2

declare i32 @SmcInteractRequest(%struct._SmcConn*, i32, void (%struct._SmcConn*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @smc_interact_CB(%struct._SmcConn* %smcConn, i8* %clientData) #0 {
entry:
  %smcConn.addr = alloca %struct._SmcConn*, align 8
  %clientData.addr = alloca i8*, align 8
  store %struct._SmcConn* %smcConn, %struct._SmcConn** %smcConn.addr, align 8
  store i8* %clientData, i8** %clientData.addr, align 8
  store i8 1, i8* @doing_interact, align 1
  %bf.load = load i32, i32* getelementptr inbounds (%struct.input_event, %struct.input_event* @emacs_event, i32 0, i32 0), align 8
  %bf.clear = and i32 %bf.load, -65536
  %bf.set = or i32 %bf.clear, 25
  store i32 %bf.set, i32* getelementptr inbounds (%struct.input_event, %struct.input_event* @emacs_event, i32 0, i32 0), align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* getelementptr inbounds (%struct.input_event, %struct.input_event* @emacs_event, i32 0, i32 7), align 8
  ret void
}

declare i32 @IceConnectionNumber(%struct._IceConn*) #2

declare void @add_read_fd(i32, void (i32, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @x_session_check_input(i32 %fd, i8* %data) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* @ice_fd, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.14

if.end:                                           ; preds = %entry
  %bf.load = load i32, i32* getelementptr inbounds (%struct.input_event, %struct.input_event* @emacs_event, i32 0, i32 0), align 8
  %bf.clear = and i32 %bf.load, -65536
  store i32 %bf.clear, i32* getelementptr inbounds (%struct.input_event, %struct.input_event* @emacs_event, i32 0, i32 0), align 8
  %1 = load %struct._SmcConn*, %struct._SmcConn** @smc_conn, align 8
  %call = call %struct._IceConn* @SmcGetIceConnection(%struct._SmcConn* %1)
  %call1 = call i32 @IceProcessMessages(%struct._IceConn* %call, %struct.IceReplyWaitInfo* null, i32* null)
  store i32 %call1, i32* %ret, align 4
  %2 = load i32, i32* %ret, align 4
  %cmp2 = icmp ne i32 %2, 0
  br i1 %cmp2, label %if.then.3, label %if.end.9

if.then.3:                                        ; preds = %if.end
  %3 = load i32, i32* %ret, align 4
  %cmp4 = icmp eq i32 %3, 1
  br i1 %cmp4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.then.3
  %4 = load %struct._SmcConn*, %struct._SmcConn** @smc_conn, align 8
  %call6 = call %struct._IceConn* @SmcGetIceConnection(%struct._SmcConn* %4)
  %call7 = call i32 @IceCloseConnection(%struct._IceConn* %call6)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.then.3
  call void @ice_connection_closed()
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.end
  %bf.load10 = load i32, i32* getelementptr inbounds (%struct.input_event, %struct.input_event* @emacs_event, i32 0, i32 0), align 8
  %bf.clear11 = and i32 %bf.load10, 65535
  %cmp12 = icmp ne i32 %bf.clear11, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.9
  call void @kbd_buffer_store_event(%struct.input_event* @emacs_event)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then, %if.then.13, %if.end.9
  ret void
}

declare i32 @IceProcessMessages(%struct._IceConn*, %struct.IceReplyWaitInfo*, i32*) #2

declare %struct._IceConn* @SmcGetIceConnection(%struct._SmcConn*) #2

declare i32 @IceCloseConnection(%struct._IceConn*) #2

declare void @kbd_buffer_store_event(%struct.input_event*) #2

declare void @delete_read_fd(i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
