; ModuleID = './src/data.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Lisp_Symbol = type { i16, i64, %union.anon.0, i64, i64, %struct.Lisp_Symbol* }
%union.anon.0 = type { i64 }
%struct.emacs_globals = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.buffer = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.buffer_text, %struct.buffer_text*, %struct.buffer*, i64, i64, i64, i64, i64, i64, %struct.buffer*, i32, i32, [50 x i8], %struct.timespec, i64, i64, i64, i64, i64, %struct.region_cache*, %struct.region_cache*, %struct.region_cache*, i8, %struct.Lisp_Overlay*, %struct.Lisp_Overlay*, i64, i64 }
%struct.vectorlike_header = type { i64 }
%struct.buffer_text = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.interval*, %struct.Lisp_Marker*, i8 }
%struct.interval = type opaque
%struct.Lisp_Marker = type { i32, %struct.buffer*, %struct.Lisp_Marker*, i64, i64 }
%struct.timespec = type { i64, i64 }
%struct.region_cache = type opaque
%struct.Lisp_Overlay = type { i32, %struct.Lisp_Overlay*, i64, i64, i64 }
%struct.Lisp_Subr = type { %struct.vectorlike_header, %union.anon.1, i16, i16, i8*, i8*, i8* }
%union.anon.1 = type { i64 ()* }
%struct.Lisp_Objfwd = type { i32, i64* }
%struct.Lisp_Cons = type { i64, %union.anon }
%union.anon = type { i64 }
%struct.Lisp_Buffer_Local_Value = type { i8, %union.Lisp_Fwd*, i64, i64, i64 }
%union.Lisp_Fwd = type { %struct.Lisp_Intfwd }
%struct.Lisp_Intfwd = type { i32, i64* }
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
%struct.glyph = type { i64, i64, i16, i16, i16, i16, i24, i24, %union.anon.2, %union.anon.4 }
%union.anon.2 = type { %struct.glyph_slice }
%union.anon.4 = type { i32 }
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
%struct.coding_system = type { i64, i32, i32, %union.anon.8, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8*, i64, i64, i64, i64, i8*, i32*, i32, i32, [64 x i8], i32, i32, i1 (%struct.coding_system*, %struct.coding_detection_info*)*, void (%struct.coding_system*)*, i1 (%struct.coding_system*)* }
%union.anon.8 = type { %struct.ccl_spec*, [328 x i8] }
%struct.ccl_spec = type opaque
%struct.coding_detection_info = type { i32, i32, i32 }
%struct.redisplay_interface = type { void (%struct.frame*, i64, i64)**, void (%struct.it*)*, void (%struct.window*, %struct.glyph_row*, %struct.glyph*, i32, i32)*, void (%struct.window*, %struct.glyph_row*, %struct.glyph*, i32, i32)*, void (%struct.window*, %struct.glyph_row*, i32, i32)*, void (%struct.window*, %struct.run*)*, void (%struct.window*, %struct.glyph_row*)*, void (%struct.window*)*, void (%struct.window*, i1, i1)*, void (%struct.frame*)*, void (%struct.window*)*, void (%struct.glyph*, %struct.frame*, i32*, i32*)*, void (%struct.window*, %struct.glyph_row*, i32, i32)*, void (%struct.window*, %struct.glyph_row*, %struct.draw_fringe_bitmap_params*)*, void (i32, i16*, i32, i32)*, void (i32)*, void (%struct.glyph_string*)*, void (%struct.glyph_string*)*, void (%struct.frame*, i64)*, void (%struct.frame*, i32, i32, i32, i32)*, void (%struct.window*, %struct.glyph_row*, i32, i32, i32, i32, i1, i1)*, void (%struct.window*, i32, i32, i32)*, void (%struct.window*, i32, i32, i32, i32)*, void (%struct.frame*, i32, i32, i32, i32, i32)*, void (%struct.frame*)*, void (%struct.frame*)* }
%struct.it = type { i64, %struct.window*, %struct.frame*, i32, i64, i64, i64, i64, i8*, i64, i64, i8, %struct.Lisp_Char_Table*, i64*, i64*, i32, i32, i32, [16 x i64], %struct.display_pos, %struct.display_pos, i64, i64, [16 x i64], [16 x i64], i64, i64, [5 x %struct.iterator_stack_entry], i32, i64, i32, i32, i16, i32, i32, i32, i32, %struct.composition_it, i32, i32, i64, %struct.xwidget*, %struct.it_slice, i64, i16, i16, i64, i64, %struct.text_pos, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, %struct.glyph_row*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.text_pos, i32, i32, i32, i32, i56, i24, %struct.bidi_it, i32 }
%struct.Lisp_Char_Table = type { %struct.vectorlike_header, i64, i64, i64, i64, [64 x i64], [0 x i64] }
%struct.iterator_stack_entry = type { i64, i32, i64, i64, i64, i64, %struct.composition_it, i32, %union.anon.9, %struct.text_pos, %struct.display_pos, i64, i32, i32, i32, i8, i32, i16, i64, i64 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { i64, %struct.it_slice, i64 }
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
%struct.Lisp_Boolfwd = type { i32, i8* }
%struct.Lisp_Buffer_Objfwd = type { i32, i32, i64 }
%struct.Lisp_Kboard_Objfwd = type { i32, i32 }
%union.Aligned_String = type { %struct.Lisp_String }
%struct.Lisp_String = type { i64, i64, %struct.interval*, i8* }
%union.Lisp_Val_Fwd = type { i64 }
%struct.Lisp_Vector = type { %struct.vectorlike_header, [0 x i64] }

@.str = private unnamed_addr constant [35 x i8] c"Attempt to modify read-only object\00", align 1
@pure = external global [0 x i64], align 8
@lispsym = external global [1074 x %struct.Lisp_Symbol], align 8
@Vautoload_queue = external global i64, align 8
@globals = external global %struct.emacs_globals, align 8
@current_buffer = external global %struct.buffer*, align 8
@selected_frame = external global i64, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"One of \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" or \00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c" should be specified\00", align 1
@buffer_local_flags = external global %struct.buffer, align 8
@last_per_buffer_idx = external global i32, align 4
@all_buffers = external global %struct.buffer*, align 8
@.str.5 = private unnamed_addr constant [34 x i8] c"Symbol %s may not be buffer-local\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Making %s buffer-local while let-bound!\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"Making %s local to %s while let-bound!\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"Making %s buffer-local while locally let-bound!\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Symbol %s may not be frame-local\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"Making %s frame-local while let-bound!\00", align 1
@empty_multibyte_string = external global i64, align 8
@.str.11 = private unnamed_addr constant [52 x i8] c"Not an in-range integer, float, or cons of integers\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"Quit\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"Wrong length argument\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"Wrong type argument\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"Args out of range\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"Symbol's function definition is void\00", align 1
@.str.20 = private unnamed_addr constant [56 x i8] c"Symbol's chain of function indirections contains a loop\00", align 1
@.str.21 = private unnamed_addr constant [56 x i8] c"Symbol's chain of variable indirections contains a loop\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"List contains a loop\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"Symbol's value as variable is void\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"Attempt to set a constant symbol\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"Invalid read syntax\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"Invalid function\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"Wrong number of arguments\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"No catch for tag\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"End of file during parsing\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"Arithmetic error\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"Beginning of buffer\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"End of buffer\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"Buffer is read-only\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"Text is read-only\00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"Arithmetic domain error\00", align 1
@.str.36 = private unnamed_addr constant [23 x i8] c"Arithmetic range error\00", align 1
@.str.37 = private unnamed_addr constant [29 x i8] c"Arithmetic singularity error\00", align 1
@.str.38 = private unnamed_addr constant [26 x i8] c"Arithmetic overflow error\00", align 1
@.str.39 = private unnamed_addr constant [27 x i8] c"Arithmetic underflow error\00", align 1
@Sbyteorder = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon.1 { i64 ()* @Fbyteorder }, i16 0, i16 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.135, i32 0, i32 0), i8* null, i8* null }, align 8
@syms_of_data.o_fwd = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.40 = private unnamed_addr constant [21 x i8] c"most-positive-fixnum\00", align 1
@syms_of_data.o_fwd.41 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.42 = private unnamed_addr constant [21 x i8] c"most-negative-fixnum\00", align 1
@buffer_defaults = external global %struct.buffer, align 8
@Vbuffer_alist = external global i64, align 8
@.str.43 = private unnamed_addr constant [22 x i8] c"Value should be from \00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c" to \00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"indirect-variable\00", align 1
@Sindirect_variable = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Findirect_variable }, i16 1, i16 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.45, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.46 = private unnamed_addr constant [17 x i8] c"interactive-form\00", align 1
@Sinteractive_form = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Finteractive_form }, i16 1, i16 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.47 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@Seq = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Feq }, i16 2, i16 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.48 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@Snull = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fnull }, i16 1, i16 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.49 = private unnamed_addr constant [8 x i8] c"type-of\00", align 1
@Stype_of = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Ftype_of }, i16 1, i16 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.50 = private unnamed_addr constant [6 x i8] c"listp\00", align 1
@Slistp = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Flistp }, i16 1, i16 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.51 = private unnamed_addr constant [7 x i8] c"nlistp\00", align 1
@Snlistp = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fnlistp }, i16 1, i16 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.52 = private unnamed_addr constant [6 x i8] c"consp\00", align 1
@Sconsp = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fconsp }, i16 1, i16 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.53 = private unnamed_addr constant [5 x i8] c"atom\00", align 1
@Satom = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fatom }, i16 1, i16 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.54 = private unnamed_addr constant [9 x i8] c"integerp\00", align 1
@Sintegerp = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fintegerp }, i16 1, i16 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.54, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.55 = private unnamed_addr constant [20 x i8] c"integer-or-marker-p\00", align 1
@Sinteger_or_marker_p = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Finteger_or_marker_p }, i16 1, i16 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.55, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.56 = private unnamed_addr constant [8 x i8] c"numberp\00", align 1
@Snumberp = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fnumberp }, i16 1, i16 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.57 = private unnamed_addr constant [19 x i8] c"number-or-marker-p\00", align 1
@Snumber_or_marker_p = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fnumber_or_marker_p }, i16 1, i16 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.57, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.58 = private unnamed_addr constant [7 x i8] c"floatp\00", align 1
@Sfloatp = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Ffloatp }, i16 1, i16 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.59 = private unnamed_addr constant [8 x i8] c"natnump\00", align 1
@Snatnump = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fnatnump }, i16 1, i16 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.60 = private unnamed_addr constant [8 x i8] c"symbolp\00", align 1
@Ssymbolp = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fsymbolp }, i16 1, i16 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.61 = private unnamed_addr constant [9 x i8] c"keywordp\00", align 1
@Skeywordp = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fkeywordp }, i16 1, i16 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.62 = private unnamed_addr constant [8 x i8] c"stringp\00", align 1
@Sstringp = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fstringp }, i16 1, i16 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.63 = private unnamed_addr constant [19 x i8] c"multibyte-string-p\00", align 1
@Smultibyte_string_p = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fmultibyte_string_p }, i16 1, i16 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.63, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.64 = private unnamed_addr constant [8 x i8] c"vectorp\00", align 1
@Svectorp = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fvectorp }, i16 1, i16 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.65 = private unnamed_addr constant [13 x i8] c"char-table-p\00", align 1
@Schar_table_p = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fchar_table_p }, i16 1, i16 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.65, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.66 = private unnamed_addr constant [23 x i8] c"vector-or-char-table-p\00", align 1
@Svector_or_char_table_p = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fvector_or_char_table_p }, i16 1, i16 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.66, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.67 = private unnamed_addr constant [14 x i8] c"bool-vector-p\00", align 1
@Sbool_vector_p = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fbool_vector_p }, i16 1, i16 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.67, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.68 = private unnamed_addr constant [7 x i8] c"arrayp\00", align 1
@Sarrayp = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Farrayp }, i16 1, i16 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.69 = private unnamed_addr constant [10 x i8] c"sequencep\00", align 1
@Ssequencep = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fsequencep }, i16 1, i16 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.69, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.70 = private unnamed_addr constant [8 x i8] c"bufferp\00", align 1
@Sbufferp = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fbufferp }, i16 1, i16 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.71 = private unnamed_addr constant [8 x i8] c"markerp\00", align 1
@Smarkerp = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fmarkerp }, i16 1, i16 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.72 = private unnamed_addr constant [6 x i8] c"subrp\00", align 1
@Ssubrp = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fsubrp }, i16 1, i16 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.73 = private unnamed_addr constant [21 x i8] c"byte-code-function-p\00", align 1
@Sbyte_code_function_p = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fbyte_code_function_p }, i16 1, i16 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.73, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.74 = private unnamed_addr constant [17 x i8] c"char-or-string-p\00", align 1
@Schar_or_string_p = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fchar_or_string_p }, i16 1, i16 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.74, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.75 = private unnamed_addr constant [4 x i8] c"car\00", align 1
@Scar = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fcar }, i16 1, i16 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.76 = private unnamed_addr constant [4 x i8] c"cdr\00", align 1
@Scdr = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fcdr }, i16 1, i16 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.77 = private unnamed_addr constant [9 x i8] c"car-safe\00", align 1
@Scar_safe = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fcar_safe }, i16 1, i16 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.77, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.78 = private unnamed_addr constant [9 x i8] c"cdr-safe\00", align 1
@Scdr_safe = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fcdr_safe }, i16 1, i16 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.79 = private unnamed_addr constant [7 x i8] c"setcar\00", align 1
@Ssetcar = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fsetcar }, i16 2, i16 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.80 = private unnamed_addr constant [7 x i8] c"setcdr\00", align 1
@Ssetcdr = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fsetcdr }, i16 2, i16 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.80, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.81 = private unnamed_addr constant [16 x i8] c"symbol-function\00", align 1
@Ssymbol_function = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fsymbol_function }, i16 1, i16 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.81, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.82 = private unnamed_addr constant [18 x i8] c"indirect-function\00", align 1
@Sindirect_function = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Findirect_function }, i16 1, i16 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.82, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.83 = private unnamed_addr constant [13 x i8] c"symbol-plist\00", align 1
@Ssymbol_plist = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fsymbol_plist }, i16 1, i16 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.83, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.84 = private unnamed_addr constant [12 x i8] c"symbol-name\00", align 1
@Ssymbol_name = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fsymbol_name }, i16 1, i16 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.84, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.85 = private unnamed_addr constant [11 x i8] c"makunbound\00", align 1
@Smakunbound = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fmakunbound }, i16 1, i16 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.85, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.86 = private unnamed_addr constant [12 x i8] c"fmakunbound\00", align 1
@Sfmakunbound = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Ffmakunbound }, i16 1, i16 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.86, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.87 = private unnamed_addr constant [7 x i8] c"boundp\00", align 1
@Sboundp = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fboundp }, i16 1, i16 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.87, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.88 = private unnamed_addr constant [8 x i8] c"fboundp\00", align 1
@Sfboundp = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Ffboundp }, i16 1, i16 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.88, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.89 = private unnamed_addr constant [5 x i8] c"fset\00", align 1
@Sfset = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Ffset }, i16 2, i16 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.90 = private unnamed_addr constant [9 x i8] c"defalias\00", align 1
@Sdefalias = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Fdefalias }, i16 2, i16 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.90, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.91 = private unnamed_addr constant [9 x i8] c"setplist\00", align 1
@Ssetplist = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fsetplist }, i16 2, i16 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.91, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.92 = private unnamed_addr constant [13 x i8] c"symbol-value\00", align 1
@Ssymbol_value = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fsymbol_value }, i16 1, i16 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.92, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.93 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@Sset = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fset }, i16 2, i16 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.93, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.94 = private unnamed_addr constant [15 x i8] c"default-boundp\00", align 1
@Sdefault_boundp = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fdefault_boundp }, i16 1, i16 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.94, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.95 = private unnamed_addr constant [14 x i8] c"default-value\00", align 1
@Sdefault_value = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fdefault_value }, i16 1, i16 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.95, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.96 = private unnamed_addr constant [12 x i8] c"set-default\00", align 1
@Sset_default = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fset_default }, i16 2, i16 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.96, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.97 = private unnamed_addr constant [13 x i8] c"setq-default\00", align 1
@Ssetq_default = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fsetq_default }, i16 0, i16 -1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.97, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.98 = private unnamed_addr constant [27 x i8] c"make-variable-buffer-local\00", align 1
@.str.99 = private unnamed_addr constant [30 x i8] c"vMake Variable Buffer Local: \00", align 1
@Smake_variable_buffer_local = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fmake_variable_buffer_local }, i16 1, i16 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.99, i32 0, i32 0), i8* null }, align 8
@.str.100 = private unnamed_addr constant [20 x i8] c"make-local-variable\00", align 1
@.str.101 = private unnamed_addr constant [23 x i8] c"vMake Local Variable: \00", align 1
@Smake_local_variable = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fmake_local_variable }, i16 1, i16 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.101, i32 0, i32 0), i8* null }, align 8
@.str.102 = private unnamed_addr constant [20 x i8] c"kill-local-variable\00", align 1
@.str.103 = private unnamed_addr constant [23 x i8] c"vKill Local Variable: \00", align 1
@Skill_local_variable = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fkill_local_variable }, i16 1, i16 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.103, i32 0, i32 0), i8* null }, align 8
@.str.104 = private unnamed_addr constant [26 x i8] c"make-variable-frame-local\00", align 1
@.str.105 = private unnamed_addr constant [29 x i8] c"vMake Variable Frame Local: \00", align 1
@Smake_variable_frame_local = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fmake_variable_frame_local }, i16 1, i16 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.105, i32 0, i32 0), i8* null }, align 8
@.str.106 = private unnamed_addr constant [17 x i8] c"local-variable-p\00", align 1
@Slocal_variable_p = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Flocal_variable_p }, i16 1, i16 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.106, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.107 = private unnamed_addr constant [24 x i8] c"local-variable-if-set-p\00", align 1
@Slocal_variable_if_set_p = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Flocal_variable_if_set_p }, i16 1, i16 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.107, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.108 = private unnamed_addr constant [23 x i8] c"variable-binding-locus\00", align 1
@Svariable_binding_locus = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fvariable_binding_locus }, i16 1, i16 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.108, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.109 = private unnamed_addr constant [5 x i8] c"aref\00", align 1
@Saref = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Faref }, i16 2, i16 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.109, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.110 = private unnamed_addr constant [5 x i8] c"aset\00", align 1
@Saset = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Faset }, i16 3, i16 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.110, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.111 = private unnamed_addr constant [17 x i8] c"number-to-string\00", align 1
@Snumber_to_string = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fnumber_to_string }, i16 1, i16 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.111, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.112 = private unnamed_addr constant [17 x i8] c"string-to-number\00", align 1
@Sstring_to_number = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fstring_to_number }, i16 1, i16 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.112, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.113 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@Seqlsign = internal global { %struct.vectorlike_header, { i64 (i64, i64*)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64*)* } { i64 (i64, i64*)* @Feqlsign }, i16 1, i16 -2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.113, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.114 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@Slss = internal global { %struct.vectorlike_header, { i64 (i64, i64*)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64*)* } { i64 (i64, i64*)* @Flss }, i16 1, i16 -2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.114, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.115 = private unnamed_addr constant [2 x i8] c">\00", align 1
@Sgtr = internal global { %struct.vectorlike_header, { i64 (i64, i64*)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64*)* } { i64 (i64, i64*)* @Fgtr }, i16 1, i16 -2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.115, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.116 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@Sleq = internal global { %struct.vectorlike_header, { i64 (i64, i64*)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64*)* } { i64 (i64, i64*)* @Fleq }, i16 1, i16 -2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.116, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.117 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@Sgeq = internal global { %struct.vectorlike_header, { i64 (i64, i64*)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64*)* } { i64 (i64, i64*)* @Fgeq }, i16 1, i16 -2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.117, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.118 = private unnamed_addr constant [3 x i8] c"/=\00", align 1
@Sneq = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fneq }, i16 2, i16 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.118, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.119 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@Splus = internal global { %struct.vectorlike_header, { i64 (i64, i64*)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64*)* } { i64 (i64, i64*)* @Fplus }, i16 0, i16 -2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.119, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.120 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@Sminus = internal global { %struct.vectorlike_header, { i64 (i64, i64*)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64*)* } { i64 (i64, i64*)* @Fminus }, i16 0, i16 -2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.120, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.121 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@Stimes = internal global { %struct.vectorlike_header, { i64 (i64, i64*)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64*)* } { i64 (i64, i64*)* @Ftimes }, i16 0, i16 -2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.121, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.122 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@Squo = internal global { %struct.vectorlike_header, { i64 (i64, i64*)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64*)* } { i64 (i64, i64*)* @Fquo }, i16 1, i16 -2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.122, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.123 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@Srem = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Frem }, i16 2, i16 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.123, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.124 = private unnamed_addr constant [4 x i8] c"mod\00", align 1
@Smod = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fmod }, i16 2, i16 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.124, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.125 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@Smax = internal global { %struct.vectorlike_header, { i64 (i64, i64*)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64*)* } { i64 (i64, i64*)* @Fmax }, i16 1, i16 -2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.125, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.126 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@Smin = internal global { %struct.vectorlike_header, { i64 (i64, i64*)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64*)* } { i64 (i64, i64*)* @Fmin }, i16 1, i16 -2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.126, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.127 = private unnamed_addr constant [7 x i8] c"logand\00", align 1
@Slogand = internal global { %struct.vectorlike_header, { i64 (i64, i64*)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64*)* } { i64 (i64, i64*)* @Flogand }, i16 0, i16 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.127, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.128 = private unnamed_addr constant [7 x i8] c"logior\00", align 1
@Slogior = internal global { %struct.vectorlike_header, { i64 (i64, i64*)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64*)* } { i64 (i64, i64*)* @Flogior }, i16 0, i16 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.128, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.129 = private unnamed_addr constant [7 x i8] c"logxor\00", align 1
@Slogxor = internal global { %struct.vectorlike_header, { i64 (i64, i64*)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64*)* } { i64 (i64, i64*)* @Flogxor }, i16 0, i16 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.129, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.130 = private unnamed_addr constant [4 x i8] c"lsh\00", align 1
@Slsh = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Flsh }, i16 2, i16 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.130, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.131 = private unnamed_addr constant [4 x i8] c"ash\00", align 1
@Sash = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fash }, i16 2, i16 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.131, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.132 = private unnamed_addr constant [3 x i8] c"1+\00", align 1
@Sadd1 = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fadd1 }, i16 1, i16 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.132, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.133 = private unnamed_addr constant [3 x i8] c"1-\00", align 1
@Ssub1 = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fsub1 }, i16 1, i16 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.133, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.134 = private unnamed_addr constant [7 x i8] c"lognot\00", align 1
@Slognot = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Flognot }, i16 1, i16 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.134, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.135 = private unnamed_addr constant [10 x i8] c"byteorder\00", align 1
@.str.136 = private unnamed_addr constant [11 x i8] c"subr-arity\00", align 1
@Ssubr_arity = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fsubr_arity }, i16 1, i16 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.136, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.137 = private unnamed_addr constant [10 x i8] c"subr-name\00", align 1
@Ssubr_name = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fsubr_name }, i16 1, i16 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.137, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.138 = private unnamed_addr constant [25 x i8] c"bool-vector-exclusive-or\00", align 1
@Sbool_vector_exclusive_or = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Fbool_vector_exclusive_or }, i16 2, i16 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.138, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.139 = private unnamed_addr constant [18 x i8] c"bool-vector-union\00", align 1
@Sbool_vector_union = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Fbool_vector_union }, i16 2, i16 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.139, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.140 = private unnamed_addr constant [25 x i8] c"bool-vector-intersection\00", align 1
@Sbool_vector_intersection = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Fbool_vector_intersection }, i16 2, i16 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.140, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.141 = private unnamed_addr constant [27 x i8] c"bool-vector-set-difference\00", align 1
@Sbool_vector_set_difference = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Fbool_vector_set_difference }, i16 2, i16 3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.141, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.142 = private unnamed_addr constant [16 x i8] c"bool-vector-not\00", align 1
@Sbool_vector_not = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fbool_vector_not }, i16 1, i16 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.142, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.143 = private unnamed_addr constant [20 x i8] c"bool-vector-subsetp\00", align 1
@Sbool_vector_subsetp = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fbool_vector_subsetp }, i16 2, i16 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.143, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.144 = private unnamed_addr constant [30 x i8] c"bool-vector-count-consecutive\00", align 1
@Sbool_vector_count_consecutive = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Fbool_vector_count_consecutive }, i16 3, i16 3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.144, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.145 = private unnamed_addr constant [29 x i8] c"bool-vector-count-population\00", align 1
@Sbool_vector_count_population = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fbool_vector_count_population }, i16 1, i16 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.145, i32 0, i32 0), i8* null, i8* null }, align 8

; Function Attrs: noreturn nounwind uwtable
define i64 @wrong_type_argument(i64 %predicate, i64 %value) #0 {
entry:
  %retval = alloca i64, align 8
  %predicate.addr = alloca i64, align 8
  %value.addr = alloca i64, align 8
  store i64 %predicate, i64* %predicate.addr, align 8
  store i64 %value, i64* %value.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 1044)
  %0 = load i64, i64* %predicate.addr, align 8
  %1 = load i64, i64* %value.addr, align 8
  call void @xsignal2(i64 %call, i64 %0, i64 %1) #7
  unreachable

return:                                           ; No predecessors!
  %2 = load i64, i64* %retval
  ret i64 %2
}

; Function Attrs: noreturn
declare void @xsignal2(i64, i64, i64) #1

declare i64 @builtin_lisp_symbol(i32) #2

; Function Attrs: noreturn nounwind uwtable
define void @pure_write_error(i64 %obj) #0 {
entry:
  %obj.addr = alloca i64, align 8
  store i64 %obj, i64* %obj.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 372)
  %call1 = call i64 @build_string(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i32 0, i32 0))
  %0 = load i64, i64* %obj.addr, align 8
  call void @xsignal2(i64 %call, i64 %call1, i64 %0) #7
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare i64 @build_string(i8*) #2

; Function Attrs: noreturn nounwind uwtable
define void @args_out_of_range(i64 %a1, i64 %a2) #0 {
entry:
  %a1.addr = alloca i64, align 8
  %a2.addr = alloca i64, align 8
  store i64 %a1, i64* %a1.addr, align 8
  store i64 %a2, i64* %a2.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 177)
  %0 = load i64, i64* %a1.addr, align 8
  %1 = load i64, i64* %a2.addr, align 8
  call void @xsignal2(i64 %call, i64 %0, i64 %1) #7
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: noreturn nounwind uwtable
define void @args_out_of_range_3(i64 %a1, i64 %a2, i64 %a3) #0 {
entry:
  %a1.addr = alloca i64, align 8
  %a2.addr = alloca i64, align 8
  %a3.addr = alloca i64, align 8
  store i64 %a1, i64* %a1.addr, align 8
  store i64 %a2, i64* %a2.addr, align 8
  store i64 %a3, i64* %a3.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 177)
  %0 = load i64, i64* %a1.addr, align 8
  %1 = load i64, i64* %a2.addr, align 8
  %2 = load i64, i64* %a3.addr, align 8
  call void @xsignal3(i64 %call, i64 %0, i64 %1, i64 %2) #7
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: noreturn
declare void @xsignal3(i64, i64, i64, i64) #1

; Function Attrs: nounwind readnone uwtable
define i64 @Feq(i64 %obj1, i64 %obj2) #3 {
entry:
  %retval = alloca i64, align 8
  %obj1.addr = alloca i64, align 8
  %obj2.addr = alloca i64, align 8
  store i64 %obj1, i64* %obj1.addr, align 8
  store i64 %obj2, i64* %obj2.addr, align 8
  %0 = load i64, i64* %obj1.addr, align 8
  %1 = load i64, i64* %obj2.addr, align 8
  %cmp = icmp eq i64 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i64, i64* %retval
  ret i64 %2
}

; Function Attrs: nounwind readnone uwtable
define i64 @Fnull(i64 %object) #3 {
entry:
  %retval = alloca i64, align 8
  %object.addr = alloca i64, align 8
  store i64 %object, i64* %object.addr, align 8
  %0 = load i64, i64* %object.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call2, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load i64, i64* %retval
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define i64 @Ftype_of(i64 %object) #4 {
entry:
  %retval = alloca i64, align 8
  %object.addr = alloca i64, align 8
  store i64 %object, i64* %object.addr, align 8
  %0 = load i64, i64* %object.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  switch i32 %conv, label %sw.default.71 [
    i32 2, label %sw.bb
    i32 6, label %sw.bb
    i32 0, label %sw.bb.1
    i32 4, label %sw.bb.3
    i32 3, label %sw.bb.5
    i32 1, label %sw.bb.7
    i32 5, label %sw.bb.17
    i32 7, label %sw.bb.69
  ]

sw.bb:                                            ; preds = %entry, %entry
  %call = call i64 @builtin_lisp_symbol(i32 557)
  store i64 %call, i64* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %call2 = call i64 @builtin_lisp_symbol(i32 896)
  store i64 %call2, i64* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  %call4 = call i64 @builtin_lisp_symbol(i32 882)
  store i64 %call4, i64* %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  %call6 = call i64 @builtin_lisp_symbol(i32 294)
  store i64 %call6, i64* %retval
  br label %return

sw.bb.7:                                          ; preds = %entry
  %1 = load i64, i64* %object.addr, align 8
  %call8 = call i32 @XMISCTYPE(i64 %1)
  switch i32 %call8, label %sw.default [
    i32 24236, label %sw.bb.9
    i32 24237, label %sw.bb.11
    i32 24240, label %sw.bb.13
    i32 24239, label %sw.bb.15
  ]

sw.bb.9:                                          ; preds = %sw.bb.7
  %call10 = call i64 @builtin_lisp_symbol(i32 645)
  store i64 %call10, i64* %retval
  br label %return

sw.bb.11:                                         ; preds = %sw.bb.7
  %call12 = call i64 @builtin_lisp_symbol(i32 729)
  store i64 %call12, i64* %retval
  br label %return

sw.bb.13:                                         ; preds = %sw.bb.7
  %call14 = call i64 @builtin_lisp_symbol(i32 433)
  store i64 %call14, i64* %retval
  br label %return

sw.bb.15:                                         ; preds = %sw.bb.7
  %call16 = call i64 @builtin_lisp_symbol(i32 431)
  store i64 %call16, i64* %retval
  br label %return

sw.default:                                       ; preds = %sw.bb.7
  call void @emacs_abort() #7
  unreachable

sw.bb.17:                                         ; preds = %entry
  %2 = load i64, i64* %object.addr, align 8
  %call18 = call zeroext i1 @WINDOW_CONFIGURATIONP(i64 %2)
  br i1 %call18, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.17
  %call19 = call i64 @builtin_lisp_symbol(i32 1019)
  store i64 %call19, i64* %retval
  br label %return

if.end:                                           ; preds = %sw.bb.17
  %3 = load i64, i64* %object.addr, align 8
  %call20 = call zeroext i1 @PROCESSP(i64 %3)
  br i1 %call20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.end
  %call22 = call i64 @builtin_lisp_symbol(i32 774)
  store i64 %call22, i64* %retval
  br label %return

if.end.23:                                        ; preds = %if.end
  %4 = load i64, i64* %object.addr, align 8
  %call24 = call zeroext i1 @WINDOWP(i64 %4)
  br i1 %call24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.end.23
  %call26 = call i64 @builtin_lisp_symbol(i32 1018)
  store i64 %call26, i64* %retval
  br label %return

if.end.27:                                        ; preds = %if.end.23
  %5 = load i64, i64* %object.addr, align 8
  %call28 = call zeroext i1 @SUBRP(i64 %5)
  br i1 %call28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %if.end.27
  %call30 = call i64 @builtin_lisp_symbol(i32 888)
  store i64 %call30, i64* %retval
  br label %return

if.end.31:                                        ; preds = %if.end.27
  %6 = load i64, i64* %object.addr, align 8
  %call32 = call zeroext i1 @COMPILEDP(i64 %6)
  br i1 %call32, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %if.end.31
  %call34 = call i64 @builtin_lisp_symbol(i32 288)
  store i64 %call34, i64* %retval
  br label %return

if.end.35:                                        ; preds = %if.end.31
  %7 = load i64, i64* %object.addr, align 8
  %call36 = call zeroext i1 @BUFFERP(i64 %7)
  br i1 %call36, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %if.end.35
  %call38 = call i64 @builtin_lisp_symbol(i32 219)
  store i64 %call38, i64* %retval
  br label %return

if.end.39:                                        ; preds = %if.end.35
  %8 = load i64, i64* %object.addr, align 8
  %call40 = call zeroext i1 @CHAR_TABLE_P(i64 %8)
  br i1 %call40, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %if.end.39
  %call42 = call i64 @builtin_lisp_symbol(i32 257)
  store i64 %call42, i64* %retval
  br label %return

if.end.43:                                        ; preds = %if.end.39
  %9 = load i64, i64* %object.addr, align 8
  %call44 = call zeroext i1 @BOOL_VECTOR_P(i64 %9)
  br i1 %call44, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %if.end.43
  %call46 = call i64 @builtin_lisp_symbol(i32 206)
  store i64 %call46, i64* %retval
  br label %return

if.end.47:                                        ; preds = %if.end.43
  %10 = load i64, i64* %object.addr, align 8
  %call48 = call zeroext i1 @FRAMEP(i64 %10)
  br i1 %call48, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %if.end.47
  %call50 = call i64 @builtin_lisp_symbol(i32 456)
  store i64 %call50, i64* %retval
  br label %return

if.end.51:                                        ; preds = %if.end.47
  %11 = load i64, i64* %object.addr, align 8
  %call52 = call zeroext i1 @HASH_TABLE_P(i64 %11)
  br i1 %call52, label %if.then.53, label %if.end.55

if.then.53:                                       ; preds = %if.end.51
  %call54 = call i64 @builtin_lisp_symbol(i32 509)
  store i64 %call54, i64* %retval
  br label %return

if.end.55:                                        ; preds = %if.end.51
  %12 = load i64, i64* %object.addr, align 8
  %call56 = call zeroext i1 @FONT_SPEC_P(i64 %12)
  br i1 %call56, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %if.end.55
  %call58 = call i64 @builtin_lisp_symbol(i32 446)
  store i64 %call58, i64* %retval
  br label %return

if.end.59:                                        ; preds = %if.end.55
  %13 = load i64, i64* %object.addr, align 8
  %call60 = call zeroext i1 @FONT_ENTITY_P(i64 %13)
  br i1 %call60, label %if.then.61, label %if.end.63

if.then.61:                                       ; preds = %if.end.59
  %call62 = call i64 @builtin_lisp_symbol(i32 441)
  store i64 %call62, i64* %retval
  br label %return

if.end.63:                                        ; preds = %if.end.59
  %14 = load i64, i64* %object.addr, align 8
  %call64 = call zeroext i1 @FONT_OBJECT_P(i64 %14)
  br i1 %call64, label %if.then.65, label %if.end.67

if.then.65:                                       ; preds = %if.end.63
  %call66 = call i64 @builtin_lisp_symbol(i32 443)
  store i64 %call66, i64* %retval
  br label %return

if.end.67:                                        ; preds = %if.end.63
  %call68 = call i64 @builtin_lisp_symbol(i32 993)
  store i64 %call68, i64* %retval
  br label %return

sw.bb.69:                                         ; preds = %entry
  %call70 = call i64 @builtin_lisp_symbol(i32 433)
  store i64 %call70, i64* %retval
  br label %return

sw.default.71:                                    ; preds = %entry
  call void @emacs_abort() #7
  unreachable

return:                                           ; preds = %sw.bb.69, %if.end.67, %if.then.65, %if.then.61, %if.then.57, %if.then.53, %if.then.49, %if.then.45, %if.then.41, %if.then.37, %if.then.33, %if.then.29, %if.then.25, %if.then.21, %if.then, %sw.bb.15, %sw.bb.13, %sw.bb.11, %sw.bb.9, %sw.bb.5, %sw.bb.3, %sw.bb.1, %sw.bb
  %15 = load i64, i64* %retval
  ret i64 %15
}

declare i32 @XMISCTYPE(i64) #2

; Function Attrs: noreturn
declare void @emacs_abort() #1

declare zeroext i1 @WINDOW_CONFIGURATIONP(i64) #2

declare zeroext i1 @PROCESSP(i64) #2

declare zeroext i1 @WINDOWP(i64) #2

declare zeroext i1 @SUBRP(i64) #2

declare zeroext i1 @COMPILEDP(i64) #2

declare zeroext i1 @BUFFERP(i64) #2

declare zeroext i1 @CHAR_TABLE_P(i64) #2

declare zeroext i1 @BOOL_VECTOR_P(i64) #2

declare zeroext i1 @FRAMEP(i64) #2

declare zeroext i1 @HASH_TABLE_P(i64) #2

declare zeroext i1 @FONT_SPEC_P(i64) #2

declare zeroext i1 @FONT_ENTITY_P(i64) #2

declare zeroext i1 @FONT_OBJECT_P(i64) #2

; Function Attrs: nounwind readnone uwtable
define i64 @Fconsp(i64 %object) #3 {
entry:
  %retval = alloca i64, align 8
  %object.addr = alloca i64, align 8
  store i64 %object, i64* %object.addr, align 8
  %0 = load i64, i64* %object.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call2, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load i64, i64* %retval
  ret i64 %1
}

; Function Attrs: nounwind readnone uwtable
define i64 @Fatom(i64 %object) #3 {
entry:
  %retval = alloca i64, align 8
  %object.addr = alloca i64, align 8
  store i64 %object, i64* %object.addr, align 8
  %0 = load i64, i64* %object.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call2, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load i64, i64* %retval
  ret i64 %1
}

; Function Attrs: nounwind readnone uwtable
define i64 @Flistp(i64 %object) #3 {
entry:
  %retval = alloca i64, align 8
  %object.addr = alloca i64, align 8
  store i64 %object, i64* %object.addr, align 8
  %0 = load i64, i64* %object.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %object.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp2 = icmp eq i64 %1, %call
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call4 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call4, i64* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call5, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i64, i64* %retval
  ret i64 %2
}

; Function Attrs: nounwind readnone uwtable
define i64 @Fnlistp(i64 %object) #3 {
entry:
  %retval = alloca i64, align 8
  %object.addr = alloca i64, align 8
  store i64 %object, i64* %object.addr, align 8
  %0 = load i64, i64* %object.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %object.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp2 = icmp eq i64 %1, %call
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call4, i64* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %call5 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call5, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i64, i64* %retval
  ret i64 %2
}

; Function Attrs: nounwind readnone uwtable
define i64 @Fsymbolp(i64 %object) #3 {
entry:
  %retval = alloca i64, align 8
  %object.addr = alloca i64, align 8
  store i64 %object, i64* %object.addr, align 8
  %0 = load i64, i64* %object.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call2, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load i64, i64* %retval
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define i64 @Fkeywordp(i64 %object) #4 {
entry:
  %retval = alloca i64, align 8
  %object.addr = alloca i64, align 8
  store i64 %object, i64* %object.addr, align 8
  %0 = load i64, i64* %object.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %object.addr, align 8
  %call = call i64 @SYMBOL_NAME(i64 %1)
  %call2 = call zeroext i8 @SREF(i64 %call, i64 0)
  %conv3 = zext i8 %call2 to i32
  %cmp4 = icmp eq i32 %conv3, 58
  br i1 %cmp4, label %land.lhs.true.6, label %if.end

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %2 = load i64, i64* %object.addr, align 8
  %call7 = call zeroext i1 @SYMBOL_INTERNED_IN_INITIAL_OBARRAY_P(i64 %2)
  br i1 %call7, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.6
  %call9 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call9, i64* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.6, %land.lhs.true, %entry
  %call10 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call10, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i64, i64* %retval
  ret i64 %3
}

declare zeroext i8 @SREF(i64, i64) #2

declare i64 @SYMBOL_NAME(i64) #2

declare zeroext i1 @SYMBOL_INTERNED_IN_INITIAL_OBARRAY_P(i64) #2

; Function Attrs: nounwind uwtable
define i64 @Fvectorp(i64 %object) #4 {
entry:
  %retval = alloca i64, align 8
  %object.addr = alloca i64, align 8
  store i64 %object, i64* %object.addr, align 8
  %0 = load i64, i64* %object.addr, align 8
  %call = call zeroext i1 @VECTORP(i64 %0)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call2, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load i64, i64* %retval
  ret i64 %1
}

declare zeroext i1 @VECTORP(i64) #2

; Function Attrs: nounwind readnone uwtable
define i64 @Fstringp(i64 %object) #3 {
entry:
  %retval = alloca i64, align 8
  %object.addr = alloca i64, align 8
  store i64 %object, i64* %object.addr, align 8
  %0 = load i64, i64* %object.addr, align 8
  %call = call zeroext i1 @STRINGP(i64 %0)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call2, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load i64, i64* %retval
  ret i64 %1
}

declare zeroext i1 @STRINGP(i64) #2

; Function Attrs: nounwind uwtable
define i64 @Fmultibyte_string_p(i64 %object) #4 {
entry:
  %retval = alloca i64, align 8
  %object.addr = alloca i64, align 8
  store i64 %object, i64* %object.addr, align 8
  %0 = load i64, i64* %object.addr, align 8
  %call = call zeroext i1 @STRINGP(i64 %0)
  br i1 %call, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %object.addr, align 8
  %call1 = call zeroext i1 @STRING_MULTIBYTE(i64 %1)
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call2 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call2, i64* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call3, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i64, i64* %retval
  ret i64 %2
}

declare zeroext i1 @STRING_MULTIBYTE(i64) #2

; Function Attrs: nounwind uwtable
define i64 @Fchar_table_p(i64 %object) #4 {
entry:
  %retval = alloca i64, align 8
  %object.addr = alloca i64, align 8
  store i64 %object, i64* %object.addr, align 8
  %0 = load i64, i64* %object.addr, align 8
  %call = call zeroext i1 @CHAR_TABLE_P(i64 %0)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call2, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load i64, i64* %retval
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define i64 @Fvector_or_char_table_p(i64 %object) #4 {
entry:
  %retval = alloca i64, align 8
  %object.addr = alloca i64, align 8
  store i64 %object, i64* %object.addr, align 8
  %0 = load i64, i64* %object.addr, align 8
  %call = call zeroext i1 @VECTORP(i64 %0)
  br i1 %call, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %object.addr, align 8
  %call1 = call zeroext i1 @CHAR_TABLE_P(i64 %1)
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call2 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call2, i64* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call3, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i64, i64* %retval
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define i64 @Fbool_vector_p(i64 %object) #4 {
entry:
  %retval = alloca i64, align 8
  %object.addr = alloca i64, align 8
  store i64 %object, i64* %object.addr, align 8
  %0 = load i64, i64* %object.addr, align 8
  %call = call zeroext i1 @BOOL_VECTOR_P(i64 %0)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call2, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load i64, i64* %retval
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define i64 @Farrayp(i64 %object) #4 {
entry:
  %retval = alloca i64, align 8
  %object.addr = alloca i64, align 8
  store i64 %object, i64* %object.addr, align 8
  %0 = load i64, i64* %object.addr, align 8
  %call = call zeroext i1 @ARRAYP(i64 %0)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call2, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load i64, i64* %retval
  ret i64 %1
}

declare zeroext i1 @ARRAYP(i64) #2

; Function Attrs: nounwind uwtable
define i64 @Fsequencep(i64 %object) #4 {
entry:
  %retval = alloca i64, align 8
  %object.addr = alloca i64, align 8
  store i64 %object, i64* %object.addr, align 8
  %0 = load i64, i64* %object.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %object.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp2 = icmp eq i64 %1, %call
  br i1 %cmp2, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %2 = load i64, i64* %object.addr, align 8
  %call5 = call zeroext i1 @ARRAYP(i64 %2)
  br i1 %call5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.4, %lor.lhs.false, %entry
  %call7 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call7, i64* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.4
  %call8 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call8, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i64, i64* %retval
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define i64 @Fbufferp(i64 %object) #4 {
entry:
  %retval = alloca i64, align 8
  %object.addr = alloca i64, align 8
  store i64 %object, i64* %object.addr, align 8
  %0 = load i64, i64* %object.addr, align 8
  %call = call zeroext i1 @BUFFERP(i64 %0)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call2, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load i64, i64* %retval
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define i64 @Fmarkerp(i64 %object) #4 {
entry:
  %retval = alloca i64, align 8
  %object.addr = alloca i64, align 8
  store i64 %object, i64* %object.addr, align 8
  %0 = load i64, i64* %object.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %object.addr, align 8
  %call = call i32 @XMISCTYPE(i64 %1)
  %cmp2 = icmp eq i32 %call, 24236
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call4 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call4, i64* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call5, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i64, i64* %retval
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define i64 @Fsubrp(i64 %object) #4 {
entry:
  %retval = alloca i64, align 8
  %object.addr = alloca i64, align 8
  store i64 %object, i64* %object.addr, align 8
  %0 = load i64, i64* %object.addr, align 8
  %call = call zeroext i1 @SUBRP(i64 %0)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call2, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load i64, i64* %retval
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define i64 @Fbyte_code_function_p(i64 %object) #4 {
entry:
  %retval = alloca i64, align 8
  %object.addr = alloca i64, align 8
  store i64 %object, i64* %object.addr, align 8
  %0 = load i64, i64* %object.addr, align 8
  %call = call zeroext i1 @COMPILEDP(i64 %0)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call2, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load i64, i64* %retval
  ret i64 %1
}

; Function Attrs: nounwind readnone uwtable
define i64 @Fchar_or_string_p(i64 %object) #3 {
entry:
  %retval = alloca i64, align 8
  %object.addr = alloca i64, align 8
  store i64 %object, i64* %object.addr, align 8
  %0 = load i64, i64* %object.addr, align 8
  %call = call zeroext i1 @NATNUMP(i64 %0)
  br i1 %call, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %object.addr, align 8
  %shr = ashr i64 %1, 2
  %cmp = icmp sle i64 %shr, 4194303
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %2 = load i64, i64* %object.addr, align 8
  %call1 = call zeroext i1 @STRINGP(i64 %2)
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %call2 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call2, i64* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call3, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i64, i64* %retval
  ret i64 %3
}

declare zeroext i1 @NATNUMP(i64) #2

; Function Attrs: nounwind readnone uwtable
define i64 @Fintegerp(i64 %object) #3 {
entry:
  %retval = alloca i64, align 8
  %object.addr = alloca i64, align 8
  store i64 %object, i64* %object.addr, align 8
  %0 = load i64, i64* %object.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %and1 = and i32 %conv, -5
  %cmp = icmp eq i32 %and1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call3, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load i64, i64* %retval
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define i64 @Finteger_or_marker_p(i64 %object) #4 {
entry:
  %retval = alloca i64, align 8
  %object.addr = alloca i64, align 8
  store i64 %object, i64* %object.addr, align 8
  %0 = load i64, i64* %object.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %object.addr, align 8
  %call = call i32 @XMISCTYPE(i64 %1)
  %cmp2 = icmp eq i32 %call, 24236
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %2 = load i64, i64* %object.addr, align 8
  %and4 = and i64 %2, 7
  %conv5 = trunc i64 %and4 to i32
  %and6 = and i32 %conv5, -5
  %cmp7 = icmp eq i32 %and6, 2
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %call9 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call9, i64* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %call10 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call10, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i64, i64* %retval
  ret i64 %3
}

; Function Attrs: nounwind readnone uwtable
define i64 @Fnatnump(i64 %object) #3 {
entry:
  %retval = alloca i64, align 8
  %object.addr = alloca i64, align 8
  store i64 %object, i64* %object.addr, align 8
  %0 = load i64, i64* %object.addr, align 8
  %call = call zeroext i1 @NATNUMP(i64 %0)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call2, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load i64, i64* %retval
  ret i64 %1
}

; Function Attrs: nounwind readnone uwtable
define i64 @Fnumberp(i64 %object) #3 {
entry:
  %retval = alloca i64, align 8
  %object.addr = alloca i64, align 8
  store i64 %object, i64* %object.addr, align 8
  %0 = load i64, i64* %object.addr, align 8
  %call = call zeroext i1 @NUMBERP(i64 %0)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call1, i64* %retval
  br label %return

if.else:                                          ; preds = %entry
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call2, i64* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %1 = load i64, i64* %retval
  ret i64 %1
}

declare zeroext i1 @NUMBERP(i64) #2

; Function Attrs: nounwind uwtable
define i64 @Fnumber_or_marker_p(i64 %object) #4 {
entry:
  %retval = alloca i64, align 8
  %object.addr = alloca i64, align 8
  store i64 %object, i64* %object.addr, align 8
  %0 = load i64, i64* %object.addr, align 8
  %call = call zeroext i1 @NUMBERP(i64 %0)
  br i1 %call, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %object.addr, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %2 = load i64, i64* %object.addr, align 8
  %call2 = call i32 @XMISCTYPE(i64 %2)
  %cmp3 = icmp eq i32 %call2, 24236
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %entry
  %call5 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call5, i64* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call6, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i64, i64* %retval
  ret i64 %3
}

; Function Attrs: nounwind readnone uwtable
define i64 @Ffloatp(i64 %object) #3 {
entry:
  %retval = alloca i64, align 8
  %object.addr = alloca i64, align 8
  store i64 %object, i64* %object.addr, align 8
  %0 = load i64, i64* %object.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call2, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load i64, i64* %retval
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define i64 @Fcar(i64 %list) #4 {
entry:
  %list.addr = alloca i64, align 8
  store i64 %list, i64* %list.addr, align 8
  %0 = load i64, i64* %list.addr, align 8
  %call = call i64 @CAR(i64 %0)
  ret i64 %call
}

declare i64 @CAR(i64) #2

; Function Attrs: nounwind uwtable
define i64 @Fcar_safe(i64 %object) #4 {
entry:
  %object.addr = alloca i64, align 8
  store i64 %object, i64* %object.addr, align 8
  %0 = load i64, i64* %object.addr, align 8
  %call = call i64 @CAR_SAFE(i64 %0)
  ret i64 %call
}

declare i64 @CAR_SAFE(i64) #2

; Function Attrs: nounwind uwtable
define i64 @Fcdr(i64 %list) #4 {
entry:
  %list.addr = alloca i64, align 8
  store i64 %list, i64* %list.addr, align 8
  %0 = load i64, i64* %list.addr, align 8
  %call = call i64 @CDR(i64 %0)
  ret i64 %call
}

declare i64 @CDR(i64) #2

; Function Attrs: nounwind uwtable
define i64 @Fcdr_safe(i64 %object) #4 {
entry:
  %object.addr = alloca i64, align 8
  store i64 %object, i64* %object.addr, align 8
  %0 = load i64, i64* %object.addr, align 8
  %call = call i64 @CDR_SAFE(i64 %0)
  ret i64 %call
}

declare i64 @CDR_SAFE(i64) #2

; Function Attrs: nounwind uwtable
define i64 @Fsetcar(i64 %cell, i64 %newcar) #4 {
entry:
  %cell.addr = alloca i64, align 8
  %newcar.addr = alloca i64, align 8
  store i64 %cell, i64* %cell.addr, align 8
  store i64 %newcar, i64* %newcar.addr, align 8
  %0 = load i64, i64* %cell.addr, align 8
  call void @CHECK_CONS(i64 %0)
  %1 = load i64, i64* %cell.addr, align 8
  %sub = sub nsw i64 %1, 3
  %2 = inttoptr i64 %sub to i8*
  %3 = bitcast i8* %2 to %struct.Lisp_Cons*
  %4 = ptrtoint %struct.Lisp_Cons* %3 to i64
  %sub1 = sub i64 %4, ptrtoint ([0 x i64]* @pure to i64)
  %cmp = icmp ule i64 %sub1, 3000000
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load i64, i64* %cell.addr, align 8
  call void @pure_write_error(i64 %5) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %6
  %7 = load i64, i64* %cell.addr, align 8
  %8 = load i64, i64* %newcar.addr, align 8
  call void @XSETCAR(i64 %7, i64 %8)
  %9 = load i64, i64* %newcar.addr, align 8
  ret i64 %9
}

declare void @CHECK_CONS(i64) #2

declare void @XSETCAR(i64, i64) #2

; Function Attrs: nounwind uwtable
define i64 @Fsetcdr(i64 %cell, i64 %newcdr) #4 {
entry:
  %cell.addr = alloca i64, align 8
  %newcdr.addr = alloca i64, align 8
  store i64 %cell, i64* %cell.addr, align 8
  store i64 %newcdr, i64* %newcdr.addr, align 8
  %0 = load i64, i64* %cell.addr, align 8
  call void @CHECK_CONS(i64 %0)
  %1 = load i64, i64* %cell.addr, align 8
  %sub = sub nsw i64 %1, 3
  %2 = inttoptr i64 %sub to i8*
  %3 = bitcast i8* %2 to %struct.Lisp_Cons*
  %4 = ptrtoint %struct.Lisp_Cons* %3 to i64
  %sub1 = sub i64 %4, ptrtoint ([0 x i64]* @pure to i64)
  %cmp = icmp ule i64 %sub1, 3000000
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load i64, i64* %cell.addr, align 8
  call void @pure_write_error(i64 %5) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %6
  %7 = load i64, i64* %cell.addr, align 8
  %8 = load i64, i64* %newcdr.addr, align 8
  call void @XSETCDR(i64 %7, i64 %8)
  %9 = load i64, i64* %newcdr.addr, align 8
  ret i64 %9
}

declare void @XSETCDR(i64, i64) #2

; Function Attrs: nounwind uwtable
define i64 @Fboundp(i64 %symbol) #4 {
entry:
  %retval = alloca i64, align 8
  %symbol.addr = alloca i64, align 8
  %valcontents = alloca i64, align 8
  %sym = alloca %struct.Lisp_Symbol*, align 8
  %blv = alloca %struct.Lisp_Buffer_Local_Value*, align 8
  store i64 %symbol, i64* %symbol.addr, align 8
  %0 = load i64, i64* %symbol.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 897)
  %1 = load i64, i64* %symbol.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call, i64 %1) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i64, i64* %symbol.addr, align 8
  %sub = sub nsw i64 %4, 0
  %add.ptr = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub
  %5 = bitcast i8* %add.ptr to %struct.Lisp_Symbol*
  store %struct.Lisp_Symbol* %5, %struct.Lisp_Symbol** %sym, align 8
  br label %start

start:                                            ; preds = %sw.bb.2, %cond.end
  %6 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %7 = bitcast %struct.Lisp_Symbol* %6 to i16*
  %bf.load = load i16, i16* %7, align 8
  %bf.lshr = lshr i16 %bf.load, 1
  %bf.clear = and i16 %bf.lshr, 7
  %bf.cast = zext i16 %bf.clear to i32
  switch i32 %bf.cast, label %sw.default [
    i32 4, label %sw.bb
    i32 1, label %sw.bb.2
    i32 2, label %sw.bb.4
    i32 3, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %start
  %8 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %val = getelementptr inbounds %struct.Lisp_Symbol, %struct.Lisp_Symbol* %8, i32 0, i32 2
  %value = bitcast %union.anon.0* %val to i64*
  %9 = load i64, i64* %value, align 8
  store i64 %9, i64* %valcontents, align 8
  br label %sw.epilog

sw.bb.2:                                          ; preds = %start
  %10 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %call3 = call %struct.Lisp_Symbol* @indirect_variable(%struct.Lisp_Symbol* %10)
  store %struct.Lisp_Symbol* %call3, %struct.Lisp_Symbol** %sym, align 8
  br label %start

sw.bb.4:                                          ; preds = %start
  %11 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %call5 = call %struct.Lisp_Buffer_Local_Value* @SYMBOL_BLV(%struct.Lisp_Symbol* %11)
  store %struct.Lisp_Buffer_Local_Value* %call5, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %12 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %fwd = getelementptr inbounds %struct.Lisp_Buffer_Local_Value, %struct.Lisp_Buffer_Local_Value* %12, i32 0, i32 1
  %13 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %fwd, align 8
  %tobool = icmp ne %union.Lisp_Fwd* %13, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.4
  %call6 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call6, i64* %retval
  br label %return

if.else:                                          ; preds = %sw.bb.4
  %14 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %15 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  call void @swap_in_symval_forwarding(%struct.Lisp_Symbol* %14, %struct.Lisp_Buffer_Local_Value* %15)
  %16 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %call7 = call i64 @blv_value(%struct.Lisp_Buffer_Local_Value* %16)
  store i64 %call7, i64* %valcontents, align 8
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %sw.epilog

sw.bb.8:                                          ; preds = %start
  %call9 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call9, i64* %retval
  br label %return

sw.default:                                       ; preds = %start
  call void @emacs_abort() #7
  unreachable

sw.epilog:                                        ; preds = %if.end, %sw.bb
  %17 = load i64, i64* %valcontents, align 8
  %call10 = call i64 @builtin_lisp_symbol(i32 957)
  %cmp11 = icmp eq i64 %17, %call10
  br i1 %cmp11, label %cond.true.13, label %cond.false.15

cond.true.13:                                     ; preds = %sw.epilog
  %call14 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.17

cond.false.15:                                    ; preds = %sw.epilog
  %call16 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.15, %cond.true.13
  %cond = phi i64 [ %call14, %cond.true.13 ], [ %call16, %cond.false.15 ]
  store i64 %cond, i64* %retval
  br label %return

return:                                           ; preds = %cond.end.17, %sw.bb.8, %if.then
  %18 = load i64, i64* %retval
  ret i64 %18
}

; Function Attrs: nounwind uwtable
define %struct.Lisp_Symbol* @indirect_variable(%struct.Lisp_Symbol* %symbol) #4 {
entry:
  %symbol.addr = alloca %struct.Lisp_Symbol*, align 8
  %tortoise = alloca %struct.Lisp_Symbol*, align 8
  %hare = alloca %struct.Lisp_Symbol*, align 8
  %tem = alloca i64, align 8
  store %struct.Lisp_Symbol* %symbol, %struct.Lisp_Symbol** %symbol.addr, align 8
  %0 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %symbol.addr, align 8
  store %struct.Lisp_Symbol* %0, %struct.Lisp_Symbol** %tortoise, align 8
  store %struct.Lisp_Symbol* %0, %struct.Lisp_Symbol** %hare, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.12, %entry
  %1 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %hare, align 8
  %2 = bitcast %struct.Lisp_Symbol* %1 to i16*
  %bf.load = load i16, i16* %2, align 8
  %bf.lshr = lshr i16 %bf.load, 1
  %bf.clear = and i16 %bf.lshr, 7
  %bf.cast = zext i16 %bf.clear to i32
  %cmp = icmp eq i32 %bf.cast, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %hare, align 8
  %call = call %struct.Lisp_Symbol* @SYMBOL_ALIAS(%struct.Lisp_Symbol* %3)
  store %struct.Lisp_Symbol* %call, %struct.Lisp_Symbol** %hare, align 8
  %4 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %hare, align 8
  %5 = bitcast %struct.Lisp_Symbol* %4 to i16*
  %bf.load1 = load i16, i16* %5, align 8
  %bf.lshr2 = lshr i16 %bf.load1, 1
  %bf.clear3 = and i16 %bf.lshr2, 7
  %bf.cast4 = zext i16 %bf.clear3 to i32
  %cmp5 = icmp ne i32 %bf.cast4, 1
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %6 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %hare, align 8
  %call6 = call %struct.Lisp_Symbol* @SYMBOL_ALIAS(%struct.Lisp_Symbol* %6)
  store %struct.Lisp_Symbol* %call6, %struct.Lisp_Symbol** %hare, align 8
  %7 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %tortoise, align 8
  %call7 = call %struct.Lisp_Symbol* @SYMBOL_ALIAS(%struct.Lisp_Symbol* %7)
  store %struct.Lisp_Symbol* %call7, %struct.Lisp_Symbol** %tortoise, align 8
  %8 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %hare, align 8
  %9 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %tortoise, align 8
  %cmp8 = icmp eq %struct.Lisp_Symbol* %8, %9
  br i1 %cmp8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.end
  %10 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %symbol.addr, align 8
  %call10 = call i64 @make_lisp_symbol(%struct.Lisp_Symbol* %10)
  store i64 %call10, i64* %tem, align 8
  %call11 = call i64 @builtin_lisp_symbol(i32 313)
  %11 = load i64, i64* %tem, align 8
  call void @xsignal1(i64 %call11, i64 %11) #7
  unreachable

if.end.12:                                        ; preds = %if.end
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %12 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %hare, align 8
  ret %struct.Lisp_Symbol* %12
}

declare %struct.Lisp_Buffer_Local_Value* @SYMBOL_BLV(%struct.Lisp_Symbol*) #2

; Function Attrs: nounwind uwtable
define internal void @swap_in_symval_forwarding(%struct.Lisp_Symbol* %symbol, %struct.Lisp_Buffer_Local_Value* %blv) #4 {
entry:
  %symbol.addr = alloca %struct.Lisp_Symbol*, align 8
  %blv.addr = alloca %struct.Lisp_Buffer_Local_Value*, align 8
  %tem1 = alloca i64, align 8
  %var = alloca i64, align 8
  store %struct.Lisp_Symbol* %symbol, %struct.Lisp_Symbol** %symbol.addr, align 8
  store %struct.Lisp_Buffer_Local_Value* %blv, %struct.Lisp_Buffer_Local_Value** %blv.addr, align 8
  %0 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv.addr, align 8
  %where = getelementptr inbounds %struct.Lisp_Buffer_Local_Value, %struct.Lisp_Buffer_Local_Value* %0, i32 0, i32 2
  %1 = load i64, i64* %where, align 8
  store i64 %1, i64* %tem1, align 8
  %2 = load i64, i64* %tem1, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %2, %call
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv.addr, align 8
  %4 = bitcast %struct.Lisp_Buffer_Local_Value* %3 to i8*
  %bf.load = load i8, i8* %4, align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false
  %5 = load i64, i64* @selected_frame, align 8
  %6 = load i64, i64* %tem1, align 8
  %cmp1 = icmp eq i64 %5, %6
  br i1 %cmp1, label %if.end.30, label %if.then

cond.false:                                       ; preds = %lor.lhs.false
  %7 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %8 = load i64, i64* %tem1, align 8
  %call2 = call %struct.buffer* @XBUFFER(i64 %8)
  %cmp3 = icmp ne %struct.buffer* %7, %call2
  br i1 %cmp3, label %if.then, label %if.end.30

if.then:                                          ; preds = %cond.false, %cond.true, %entry
  %9 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv.addr, align 8
  %valcell = getelementptr inbounds %struct.Lisp_Buffer_Local_Value, %struct.Lisp_Buffer_Local_Value* %9, i32 0, i32 4
  %10 = load i64, i64* %valcell, align 8
  store i64 %10, i64* %tem1, align 8
  %11 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv.addr, align 8
  %fwd = getelementptr inbounds %struct.Lisp_Buffer_Local_Value, %struct.Lisp_Buffer_Local_Value* %11, i32 0, i32 1
  %12 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %fwd, align 8
  %tobool = icmp ne %union.Lisp_Fwd* %12, null
  br i1 %tobool, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %13 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv.addr, align 8
  %14 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv.addr, align 8
  %fwd5 = getelementptr inbounds %struct.Lisp_Buffer_Local_Value, %struct.Lisp_Buffer_Local_Value* %14, i32 0, i32 1
  %15 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %fwd5, align 8
  %call6 = call i64 @do_symval_forwarding(%union.Lisp_Fwd* %15)
  call void @set_blv_value(%struct.Lisp_Buffer_Local_Value* %13, i64 %call6)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %16 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %symbol.addr, align 8
  %call7 = call i64 @make_lisp_symbol(%struct.Lisp_Symbol* %16)
  store i64 %call7, i64* %var, align 8
  %17 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv.addr, align 8
  %18 = bitcast %struct.Lisp_Buffer_Local_Value* %17 to i8*
  %bf.load8 = load i8, i8* %18, align 8
  %bf.lshr9 = lshr i8 %bf.load8, 1
  %bf.clear10 = and i8 %bf.lshr9, 1
  %bf.cast11 = trunc i8 %bf.clear10 to i1
  br i1 %bf.cast11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end
  %19 = load i64, i64* %var, align 8
  %20 = load i64, i64* @selected_frame, align 8
  %sub = sub nsw i64 %20, 5
  %21 = inttoptr i64 %sub to i8*
  %22 = bitcast i8* %21 to %struct.frame*
  %param_alist = getelementptr inbounds %struct.frame, %struct.frame* %22, i32 0, i32 8
  %23 = load i64, i64* %param_alist, align 8
  %call13 = call i64 @assq_no_quit(i64 %19, i64 %23)
  store i64 %call13, i64* %tem1, align 8
  %24 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv.addr, align 8
  %25 = load i64, i64* @selected_frame, align 8
  call void @set_blv_where(%struct.Lisp_Buffer_Local_Value* %24, i64 %25)
  br label %if.end.16

if.else:                                          ; preds = %if.end
  %26 = load i64, i64* %var, align 8
  %27 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %local_var_alist_ = getelementptr inbounds %struct.buffer, %struct.buffer* %27, i32 0, i32 9
  %28 = load i64, i64* %local_var_alist_, align 8
  %call14 = call i64 @assq_no_quit(i64 %26, i64 %28)
  store i64 %call14, i64* %tem1, align 8
  %29 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv.addr, align 8
  %call15 = call i64 @Fcurrent_buffer()
  call void @set_blv_where(%struct.Lisp_Buffer_Local_Value* %29, i64 %call15)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.12
  %30 = load i64, i64* %tem1, align 8
  %call17 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp18 = icmp eq i64 %30, %call17
  %lnot = xor i1 %cmp18, true
  %31 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv.addr, align 8
  %32 = bitcast %struct.Lisp_Buffer_Local_Value* %31 to i8*
  %33 = zext i1 %lnot to i8
  %bf.load19 = load i8, i8* %32, align 8
  %bf.shl = shl i8 %33, 2
  %bf.clear20 = and i8 %bf.load19, -5
  %bf.set = or i8 %bf.clear20, %bf.shl
  store i8 %bf.set, i8* %32, align 8
  %tobool21 = trunc i8 %33 to i1
  br i1 %tobool21, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %if.end.16
  %34 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv.addr, align 8
  %defcell = getelementptr inbounds %struct.Lisp_Buffer_Local_Value, %struct.Lisp_Buffer_Local_Value* %34, i32 0, i32 3
  %35 = load i64, i64* %defcell, align 8
  store i64 %35, i64* %tem1, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.end.16
  %36 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv.addr, align 8
  %37 = load i64, i64* %tem1, align 8
  call void @set_blv_valcell(%struct.Lisp_Buffer_Local_Value* %36, i64 %37)
  %38 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv.addr, align 8
  %fwd24 = getelementptr inbounds %struct.Lisp_Buffer_Local_Value, %struct.Lisp_Buffer_Local_Value* %38, i32 0, i32 1
  %39 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %fwd24, align 8
  %tobool25 = icmp ne %union.Lisp_Fwd* %39, null
  br i1 %tobool25, label %if.then.26, label %if.end.29

if.then.26:                                       ; preds = %if.end.23
  %40 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv.addr, align 8
  %fwd27 = getelementptr inbounds %struct.Lisp_Buffer_Local_Value, %struct.Lisp_Buffer_Local_Value* %40, i32 0, i32 1
  %41 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %fwd27, align 8
  %42 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv.addr, align 8
  %call28 = call i64 @blv_value(%struct.Lisp_Buffer_Local_Value* %42)
  call void @store_symval_forwarding(%union.Lisp_Fwd* %41, i64 %call28, %struct.buffer* null)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.26, %if.end.23
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %cond.false, %cond.true
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @blv_value(%struct.Lisp_Buffer_Local_Value* %blv) #4 {
entry:
  %blv.addr = alloca %struct.Lisp_Buffer_Local_Value*, align 8
  store %struct.Lisp_Buffer_Local_Value* %blv, %struct.Lisp_Buffer_Local_Value** %blv.addr, align 8
  %0 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv.addr, align 8
  %valcell = getelementptr inbounds %struct.Lisp_Buffer_Local_Value, %struct.Lisp_Buffer_Local_Value* %0, i32 0, i32 4
  %1 = load i64, i64* %valcell, align 8
  %sub = sub nsw i64 %1, 3
  %2 = inttoptr i64 %sub to i8*
  %3 = bitcast i8* %2 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %3, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %4 = load i64, i64* %cdr, align 8
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define i64 @Ffboundp(i64 %symbol) #4 {
entry:
  %symbol.addr = alloca i64, align 8
  store i64 %symbol, i64* %symbol.addr, align 8
  %0 = load i64, i64* %symbol.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 897)
  %1 = load i64, i64* %symbol.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call, i64 %1) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i64, i64* %symbol.addr, align 8
  %sub = sub nsw i64 %4, 0
  %add.ptr = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub
  %5 = bitcast i8* %add.ptr to %struct.Lisp_Symbol*
  %function = getelementptr inbounds %struct.Lisp_Symbol, %struct.Lisp_Symbol* %5, i32 0, i32 3
  %6 = load i64, i64* %function, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp3 = icmp eq i64 %6, %call2
  br i1 %cmp3, label %cond.true.5, label %cond.false.7

cond.true.5:                                      ; preds = %cond.end
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.9

cond.false.7:                                     ; preds = %cond.end
  %call8 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.7, %cond.true.5
  %cond = phi i64 [ %call6, %cond.true.5 ], [ %call8, %cond.false.7 ]
  ret i64 %cond
}

; Function Attrs: nounwind uwtable
define i64 @Fmakunbound(i64 %symbol) #4 {
entry:
  %symbol.addr = alloca i64, align 8
  store i64 %symbol, i64* %symbol.addr, align 8
  %0 = load i64, i64* %symbol.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 897)
  %1 = load i64, i64* %symbol.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call, i64 %1) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i64, i64* %symbol.addr, align 8
  %sub = sub nsw i64 %4, 0
  %add.ptr = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub
  %5 = bitcast i8* %add.ptr to %struct.Lisp_Symbol*
  %6 = bitcast %struct.Lisp_Symbol* %5 to i16*
  %bf.load = load i16, i16* %6, align 8
  %bf.lshr = lshr i16 %bf.load, 4
  %bf.clear = and i16 %bf.lshr, 3
  %bf.cast = zext i16 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %call2 = call i64 @builtin_lisp_symbol(i32 855)
  %7 = load i64, i64* %symbol.addr, align 8
  call void @xsignal1(i64 %call2, i64 %7) #7
  unreachable

if.end:                                           ; preds = %cond.end
  %8 = load i64, i64* %symbol.addr, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 957)
  %call4 = call i64 @Fset(i64 %8, i64 %call3)
  %9 = load i64, i64* %symbol.addr, align 8
  ret i64 %9
}

; Function Attrs: noreturn
declare void @xsignal1(i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fset(i64 %symbol, i64 %newval) #4 {
entry:
  %symbol.addr = alloca i64, align 8
  %newval.addr = alloca i64, align 8
  store i64 %symbol, i64* %symbol.addr, align 8
  store i64 %newval, i64* %newval.addr, align 8
  %0 = load i64, i64* %symbol.addr, align 8
  %1 = load i64, i64* %newval.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  call void @set_internal(i64 %0, i64 %1, i64 %call, i1 zeroext false)
  %2 = load i64, i64* %newval.addr, align 8
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define i64 @Ffmakunbound(i64 %symbol) #4 {
entry:
  %symbol.addr = alloca i64, align 8
  store i64 %symbol, i64* %symbol.addr, align 8
  %0 = load i64, i64* %symbol.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 897)
  %1 = load i64, i64* %symbol.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call, i64 %1) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i64, i64* %symbol.addr, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp3 = icmp eq i64 %4, %call2
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %5 = load i64, i64* %symbol.addr, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp6 = icmp eq i64 %5, %call5
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  %call8 = call i64 @builtin_lisp_symbol(i32 855)
  %6 = load i64, i64* %symbol.addr, align 8
  call void @xsignal1(i64 %call8, i64 %6) #7
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %7 = load i64, i64* %symbol.addr, align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  call void @set_symbol_function(i64 %7, i64 %call9)
  %8 = load i64, i64* %symbol.addr, align 8
  ret i64 %8
}

declare void @set_symbol_function(i64, i64) #2

; Function Attrs: nounwind uwtable
define i64 @Fsymbol_function(i64 %symbol) #4 {
entry:
  %symbol.addr = alloca i64, align 8
  store i64 %symbol, i64* %symbol.addr, align 8
  %0 = load i64, i64* %symbol.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 897)
  %1 = load i64, i64* %symbol.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call, i64 %1) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i64, i64* %symbol.addr, align 8
  %sub = sub nsw i64 %4, 0
  %add.ptr = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub
  %5 = bitcast i8* %add.ptr to %struct.Lisp_Symbol*
  %function = getelementptr inbounds %struct.Lisp_Symbol, %struct.Lisp_Symbol* %5, i32 0, i32 3
  %6 = load i64, i64* %function, align 8
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define i64 @Fsymbol_plist(i64 %symbol) #4 {
entry:
  %symbol.addr = alloca i64, align 8
  store i64 %symbol, i64* %symbol.addr, align 8
  %0 = load i64, i64* %symbol.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 897)
  %1 = load i64, i64* %symbol.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call, i64 %1) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i64, i64* %symbol.addr, align 8
  %sub = sub nsw i64 %4, 0
  %add.ptr = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub
  %5 = bitcast i8* %add.ptr to %struct.Lisp_Symbol*
  %plist = getelementptr inbounds %struct.Lisp_Symbol, %struct.Lisp_Symbol* %5, i32 0, i32 4
  %6 = load i64, i64* %plist, align 8
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define i64 @Fsymbol_name(i64 %symbol) #4 {
entry:
  %symbol.addr = alloca i64, align 8
  %name = alloca i64, align 8
  store i64 %symbol, i64* %symbol.addr, align 8
  %0 = load i64, i64* %symbol.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 897)
  %1 = load i64, i64* %symbol.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call, i64 %1) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i64, i64* %symbol.addr, align 8
  %call2 = call i64 @SYMBOL_NAME(i64 %4)
  store i64 %call2, i64* %name, align 8
  %5 = load i64, i64* %name, align 8
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define i64 @Ffset(i64 %symbol, i64 %definition) #4 {
entry:
  %symbol.addr = alloca i64, align 8
  %definition.addr = alloca i64, align 8
  %function = alloca i64, align 8
  store i64 %symbol, i64* %symbol.addr, align 8
  store i64 %definition, i64* %definition.addr, align 8
  %0 = load i64, i64* %symbol.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 897)
  %1 = load i64, i64* %symbol.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call, i64 %1) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i64, i64* %symbol.addr, align 8
  %sub = sub nsw i64 %4, 0
  %add.ptr = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub
  %5 = bitcast i8* %add.ptr to %struct.Lisp_Symbol*
  %function2 = getelementptr inbounds %struct.Lisp_Symbol, %struct.Lisp_Symbol* %5, i32 0, i32 3
  %6 = load i64, i64* %function2, align 8
  store i64 %6, i64* %function, align 8
  %7 = load i64, i64* @Vautoload_queue, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp4 = icmp eq i64 %7, %call3
  br i1 %cmp4, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.end
  %8 = load i64, i64* %function, align 8
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp7 = icmp eq i64 %8, %call6
  br i1 %cmp7, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %9 = load i64, i64* %symbol.addr, align 8
  %10 = load i64, i64* %function, align 8
  %call9 = call i64 @Fcons(i64 %9, i64 %10)
  %11 = load i64, i64* @Vautoload_queue, align 8
  %call10 = call i64 @Fcons(i64 %call9, i64 %11)
  store i64 %call10, i64* @Vautoload_queue, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %cond.end
  %12 = load i64, i64* %function, align 8
  %call11 = call zeroext i1 @AUTOLOADP(i64 %12)
  br i1 %call11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %if.end
  %13 = load i64, i64* %symbol.addr, align 8
  %call13 = call i64 @builtin_lisp_symbol(i32 191)
  %14 = load i64, i64* %function, align 8
  %sub14 = sub nsw i64 %14, 3
  %15 = inttoptr i64 %sub14 to i8*
  %16 = bitcast i8* %15 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %16, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %17 = load i64, i64* %cdr, align 8
  %call15 = call i64 @Fput(i64 %13, i64 %call13, i64 %17)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.12, %if.end
  %18 = load i64, i64* %definition.addr, align 8
  %call17 = call i32 @valid_lisp_object_p(i64 %18)
  %tobool = icmp ne i32 %call17, 0
  br i1 %tobool, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %if.end.16
  call void @emacs_abort() #7
  unreachable

if.end.19:                                        ; preds = %if.end.16
  %19 = load i64, i64* %symbol.addr, align 8
  %20 = load i64, i64* %definition.addr, align 8
  call void @set_symbol_function(i64 %19, i64 %20)
  %21 = load i64, i64* %definition.addr, align 8
  ret i64 %21
}

declare i64 @Fcons(i64, i64) #2

declare zeroext i1 @AUTOLOADP(i64) #2

declare i64 @Fput(i64, i64, i64) #2

declare i32 @valid_lisp_object_p(i64) #2

; Function Attrs: nounwind uwtable
define i64 @Fdefalias(i64 %symbol, i64 %definition, i64 %docstring) #4 {
entry:
  %symbol.addr = alloca i64, align 8
  %definition.addr = alloca i64, align 8
  %docstring.addr = alloca i64, align 8
  %autoload = alloca i8, align 1
  %hook = alloca i64, align 8
  store i64 %symbol, i64* %symbol.addr, align 8
  store i64 %definition, i64* %definition.addr, align 8
  store i64 %docstring, i64* %docstring.addr, align 8
  %0 = load i64, i64* %symbol.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 897)
  %1 = load i64, i64* %symbol.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call, i64 %1) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 240), align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp3 = icmp eq i64 %4, %call2
  br i1 %cmp3, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.end
  %5 = load i64, i64* %definition.addr, align 8
  %call5 = call i64 @get_keymap(i64 %5, i1 zeroext false, i1 zeroext false)
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp7 = icmp eq i64 %call5, %call6
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load i64, i64* %definition.addr, align 8
  %call9 = call i64 @Fpurecopy(i64 %6)
  store i64 %call9, i64* %definition.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %cond.end
  %7 = load i64, i64* %definition.addr, align 8
  %call10 = call zeroext i1 @AUTOLOADP(i64 %7)
  %frombool = zext i1 %call10 to i8
  store i8 %frombool, i8* %autoload, align 1
  %8 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 240), align 8
  %call11 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp12 = icmp eq i64 %8, %call11
  br i1 %cmp12, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %9 = load i8, i8* %autoload, align 1
  %tobool = trunc i8 %9 to i1
  br i1 %tobool, label %if.end.28, label %if.then.14

if.then.14:                                       ; preds = %lor.lhs.false, %if.end
  %10 = load i64, i64* %symbol.addr, align 8
  %sub = sub nsw i64 %10, 0
  %add.ptr = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub
  %11 = bitcast i8* %add.ptr to %struct.Lisp_Symbol*
  %function = getelementptr inbounds %struct.Lisp_Symbol, %struct.Lisp_Symbol* %11, i32 0, i32 3
  %12 = load i64, i64* %function, align 8
  %call15 = call zeroext i1 @AUTOLOADP(i64 %12)
  br i1 %call15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %if.then.14
  %call17 = call i64 @builtin_lisp_symbol(i32 901)
  %13 = load i64, i64* %symbol.addr, align 8
  %call18 = call i64 @Fcons(i64 %call17, i64 %13)
  call void @LOADHIST_ATTACH(i64 %call18)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %if.then.14
  %14 = load i8, i8* %autoload, align 1
  %tobool20 = trunc i8 %14 to i1
  br i1 %tobool20, label %cond.true.22, label %cond.false.24

cond.true.22:                                     ; preds = %if.end.19
  %call23 = call i64 @builtin_lisp_symbol(i32 191)
  br label %cond.end.26

cond.false.24:                                    ; preds = %if.end.19
  %call25 = call i64 @builtin_lisp_symbol(i32 327)
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.24, %cond.true.22
  %cond = phi i64 [ %call23, %cond.true.22 ], [ %call25, %cond.false.24 ]
  %15 = load i64, i64* %symbol.addr, align 8
  %call27 = call i64 @Fcons(i64 %cond, i64 %15)
  call void @LOADHIST_ATTACH(i64 %call27)
  br label %if.end.28

if.end.28:                                        ; preds = %cond.end.26, %lor.lhs.false
  %16 = load i64, i64* %symbol.addr, align 8
  %call29 = call i64 @builtin_lisp_symbol(i32 323)
  %call30 = call i64 @Fget(i64 %16, i64 %call29)
  store i64 %call30, i64* %hook, align 8
  %17 = load i64, i64* %hook, align 8
  %call31 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp32 = icmp eq i64 %17, %call31
  br i1 %cmp32, label %if.else, label %if.then.34

if.then.34:                                       ; preds = %if.end.28
  %18 = load i64, i64* %hook, align 8
  %19 = load i64, i64* %symbol.addr, align 8
  %20 = load i64, i64* %definition.addr, align 8
  %call35 = call i64 @call2(i64 %18, i64 %19, i64 %20)
  br label %if.end.37

if.else:                                          ; preds = %if.end.28
  %21 = load i64, i64* %symbol.addr, align 8
  %22 = load i64, i64* %definition.addr, align 8
  %call36 = call i64 @Ffset(i64 %21, i64 %22)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else, %if.then.34
  %23 = load i64, i64* %docstring.addr, align 8
  %call38 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp39 = icmp eq i64 %23, %call38
  br i1 %cmp39, label %if.end.44, label %if.then.41

if.then.41:                                       ; preds = %if.end.37
  %24 = load i64, i64* %symbol.addr, align 8
  %call42 = call i64 @builtin_lisp_symbol(i32 477)
  %25 = load i64, i64* %docstring.addr, align 8
  %call43 = call i64 @Fput(i64 %24, i64 %call42, i64 %25)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.41, %if.end.37
  %26 = load i64, i64* %symbol.addr, align 8
  ret i64 %26
}

declare i64 @get_keymap(i64, i1 zeroext, i1 zeroext) #2

declare i64 @Fpurecopy(i64) #2

declare void @LOADHIST_ATTACH(i64) #2

declare i64 @Fget(i64, i64) #2

declare i64 @call2(i64, i64, i64) #2

; Function Attrs: nounwind uwtable
define i64 @Fsetplist(i64 %symbol, i64 %newplist) #4 {
entry:
  %symbol.addr = alloca i64, align 8
  %newplist.addr = alloca i64, align 8
  store i64 %symbol, i64* %symbol.addr, align 8
  store i64 %newplist, i64* %newplist.addr, align 8
  %0 = load i64, i64* %symbol.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 897)
  %1 = load i64, i64* %symbol.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call, i64 %1) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i64, i64* %symbol.addr, align 8
  %5 = load i64, i64* %newplist.addr, align 8
  call void @set_symbol_plist(i64 %4, i64 %5)
  %6 = load i64, i64* %newplist.addr, align 8
  ret i64 %6
}

declare void @set_symbol_plist(i64, i64) #2

; Function Attrs: nounwind uwtable
define i64 @Fsubr_arity(i64 %subr) #4 {
entry:
  %subr.addr = alloca i64, align 8
  %minargs = alloca i16, align 2
  %maxargs = alloca i16, align 2
  store i64 %subr, i64* %subr.addr, align 8
  %0 = load i64, i64* %subr.addr, align 8
  call void @CHECK_SUBR(i64 %0)
  %1 = load i64, i64* %subr.addr, align 8
  %call = call %struct.Lisp_Subr* @XSUBR(i64 %1)
  %min_args = getelementptr inbounds %struct.Lisp_Subr, %struct.Lisp_Subr* %call, i32 0, i32 2
  %2 = load i16, i16* %min_args, align 2
  store i16 %2, i16* %minargs, align 2
  %3 = load i64, i64* %subr.addr, align 8
  %call1 = call %struct.Lisp_Subr* @XSUBR(i64 %3)
  %max_args = getelementptr inbounds %struct.Lisp_Subr, %struct.Lisp_Subr* %call1, i32 0, i32 3
  %4 = load i16, i16* %max_args, align 2
  store i16 %4, i16* %maxargs, align 2
  %5 = load i16, i16* %minargs, align 2
  %conv = sext i16 %5 to i64
  %shl = shl i64 %conv, 2
  %add = add i64 %shl, 2
  %6 = load i16, i16* %maxargs, align 2
  %conv2 = sext i16 %6 to i32
  %cmp = icmp eq i32 %conv2, -2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call4 = call i64 @builtin_lisp_symbol(i32 642)
  br label %cond.end.14

cond.false:                                       ; preds = %entry
  %7 = load i16, i16* %maxargs, align 2
  %conv5 = sext i16 %7 to i32
  %cmp6 = icmp eq i32 %conv5, -1
  br i1 %cmp6, label %cond.true.8, label %cond.false.10

cond.true.8:                                      ; preds = %cond.false
  %call9 = call i64 @builtin_lisp_symbol(i32 969)
  br label %cond.end

cond.false.10:                                    ; preds = %cond.false
  %8 = load i16, i16* %maxargs, align 2
  %conv11 = sext i16 %8 to i64
  %shl12 = shl i64 %conv11, 2
  %add13 = add i64 %shl12, 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false.10, %cond.true.8
  %cond = phi i64 [ %call9, %cond.true.8 ], [ %add13, %cond.false.10 ]
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.end, %cond.true
  %cond15 = phi i64 [ %call4, %cond.true ], [ %cond, %cond.end ]
  %call16 = call i64 @Fcons(i64 %add, i64 %cond15)
  ret i64 %call16
}

; Function Attrs: nounwind uwtable
define internal void @CHECK_SUBR(i64 %x) #4 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %call = call zeroext i1 @SUBRP(i64 %0)
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 889)
  %1 = load i64, i64* %x.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call1, i64 %1) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  ret void
}

declare %struct.Lisp_Subr* @XSUBR(i64) #2

; Function Attrs: nounwind uwtable
define i64 @Fsubr_name(i64 %subr) #4 {
entry:
  %subr.addr = alloca i64, align 8
  %name = alloca i8*, align 8
  store i64 %subr, i64* %subr.addr, align 8
  %0 = load i64, i64* %subr.addr, align 8
  call void @CHECK_SUBR(i64 %0)
  %1 = load i64, i64* %subr.addr, align 8
  %call = call %struct.Lisp_Subr* @XSUBR(i64 %1)
  %symbol_name = getelementptr inbounds %struct.Lisp_Subr, %struct.Lisp_Subr* %call, i32 0, i32 4
  %2 = load i8*, i8** %symbol_name, align 8
  store i8* %2, i8** %name, align 8
  %3 = load i8*, i8** %name, align 8
  %call1 = call i64 @build_string(i8* %3)
  ret i64 %call1
}

; Function Attrs: nounwind uwtable
define i64 @Finteractive_form(i64 %cmd) #4 {
entry:
  %retval = alloca i64, align 8
  %cmd.addr = alloca i64, align 8
  %fun = alloca i64, align 8
  %tmp = alloca i64, align 8
  %spec = alloca i8*, align 8
  %funcar = alloca i64, align 8
  store i64 %cmd, i64* %cmd.addr, align 8
  %0 = load i64, i64* %cmd.addr, align 8
  %call = call i64 @indirect_function(i64 %0)
  store i64 %call, i64* %fun, align 8
  %1 = load i64, i64* %fun, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %1, %call1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call2, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %cmd.addr, align 8
  store i64 %2, i64* %fun, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.12, %if.end
  %3 = load i64, i64* %fun, align 8
  %and = and i64 %3, 7
  %conv = trunc i64 %and to i32
  %cmp3 = icmp eq i32 %conv, 0
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i64, i64* %fun, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 561)
  %call6 = call i64 @Fget(i64 %4, i64 %call5)
  store i64 %call6, i64* %tmp, align 8
  %5 = load i64, i64* %tmp, align 8
  %call7 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp8 = icmp eq i64 %5, %call7
  br i1 %cmp8, label %if.else, label %if.then.10

if.then.10:                                       ; preds = %while.body
  %6 = load i64, i64* %tmp, align 8
  store i64 %6, i64* %retval
  br label %return

if.else:                                          ; preds = %while.body
  %7 = load i64, i64* %fun, align 8
  %call11 = call i64 @Fsymbol_function(i64 %7)
  store i64 %call11, i64* %fun, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.else
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load i64, i64* %fun, align 8
  %call13 = call zeroext i1 @SUBRP(i64 %8)
  br i1 %call13, label %if.then.14, label %if.else.30

if.then.14:                                       ; preds = %while.end
  %9 = load i64, i64* %fun, align 8
  %call16 = call %struct.Lisp_Subr* @XSUBR(i64 %9)
  %intspec = getelementptr inbounds %struct.Lisp_Subr, %struct.Lisp_Subr* %call16, i32 0, i32 5
  %10 = load i8*, i8** %intspec, align 8
  store i8* %10, i8** %spec, align 8
  %11 = load i8*, i8** %spec, align 8
  %tobool = icmp ne i8* %11, null
  br i1 %tobool, label %if.then.17, label %if.end.29

if.then.17:                                       ; preds = %if.then.14
  %call18 = call i64 @builtin_lisp_symbol(i32 560)
  %12 = load i8*, i8** %spec, align 8
  %13 = load i8, i8* %12, align 1
  %conv19 = sext i8 %13 to i32
  %cmp20 = icmp ne i32 %conv19, 40
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.17
  %14 = load i8*, i8** %spec, align 8
  %call22 = call i64 @build_string(i8* %14)
  br label %cond.end

cond.false:                                       ; preds = %if.then.17
  %15 = load i8*, i8** %spec, align 8
  %call23 = call i64 @build_string(i8* %15)
  %call24 = call i64 @builtin_lisp_symbol(i32 0)
  %call25 = call i64 @builtin_lisp_symbol(i32 0)
  %call26 = call i64 @Fread_from_string(i64 %call23, i64 %call24, i64 %call25)
  %call27 = call i64 @Fcar(i64 %call26)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call22, %cond.true ], [ %call27, %cond.false ]
  %call28 = call i64 @list2(i64 %call18, i64 %cond)
  store i64 %call28, i64* %retval
  br label %return

if.end.29:                                        ; preds = %if.then.14
  br label %if.end.80

if.else.30:                                       ; preds = %while.end
  %16 = load i64, i64* %fun, align 8
  %call31 = call zeroext i1 @COMPILEDP(i64 %16)
  br i1 %call31, label %if.then.32, label %if.else.42

if.then.32:                                       ; preds = %if.else.30
  %17 = load i64, i64* %fun, align 8
  %call33 = call i64 @ASIZE(i64 %17)
  %and34 = and i64 %call33, 4095
  %cmp35 = icmp sgt i64 %and34, 5
  br i1 %cmp35, label %if.then.37, label %if.end.41

if.then.37:                                       ; preds = %if.then.32
  %call38 = call i64 @builtin_lisp_symbol(i32 560)
  %18 = load i64, i64* %fun, align 8
  %call39 = call i64 @AREF(i64 %18, i64 5)
  %call40 = call i64 @list2(i64 %call38, i64 %call39)
  store i64 %call40, i64* %retval
  br label %return

if.end.41:                                        ; preds = %if.then.32
  br label %if.end.79

if.else.42:                                       ; preds = %if.else.30
  %19 = load i64, i64* %fun, align 8
  %call43 = call zeroext i1 @AUTOLOADP(i64 %19)
  br i1 %call43, label %if.then.44, label %if.else.48

if.then.44:                                       ; preds = %if.else.42
  %20 = load i64, i64* %fun, align 8
  %21 = load i64, i64* %cmd.addr, align 8
  %call45 = call i64 @builtin_lisp_symbol(i32 0)
  %call46 = call i64 @Fautoload_do_load(i64 %20, i64 %21, i64 %call45)
  %call47 = call i64 @Finteractive_form(i64 %call46)
  store i64 %call47, i64* %retval
  br label %return

if.else.48:                                       ; preds = %if.else.42
  %22 = load i64, i64* %fun, align 8
  %and49 = and i64 %22, 7
  %conv50 = trunc i64 %and49 to i32
  %cmp51 = icmp eq i32 %conv50, 3
  br i1 %cmp51, label %if.then.53, label %if.end.77

if.then.53:                                       ; preds = %if.else.48
  %23 = load i64, i64* %fun, align 8
  %sub = sub nsw i64 %23, 3
  %24 = inttoptr i64 %sub to i8*
  %25 = bitcast i8* %24 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %25, i32 0, i32 0
  %26 = load i64, i64* %car, align 8
  store i64 %26, i64* %funcar, align 8
  %27 = load i64, i64* %funcar, align 8
  %call55 = call i64 @builtin_lisp_symbol(i32 271)
  %cmp56 = icmp eq i64 %27, %call55
  br i1 %cmp56, label %if.then.58, label %if.else.64

if.then.58:                                       ; preds = %if.then.53
  %call59 = call i64 @builtin_lisp_symbol(i32 560)
  %28 = load i64, i64* %fun, align 8
  %sub60 = sub nsw i64 %28, 3
  %29 = inttoptr i64 %sub60 to i8*
  %30 = bitcast i8* %29 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %30, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %31 = load i64, i64* %cdr, align 8
  %call61 = call i64 @Fcdr(i64 %31)
  %call62 = call i64 @Fcdr(i64 %call61)
  %call63 = call i64 @Fassq(i64 %call59, i64 %call62)
  store i64 %call63, i64* %retval
  br label %return

if.else.64:                                       ; preds = %if.then.53
  %32 = load i64, i64* %funcar, align 8
  %call65 = call i64 @builtin_lisp_symbol(i32 598)
  %cmp66 = icmp eq i64 %32, %call65
  br i1 %cmp66, label %if.then.68, label %if.end.75

if.then.68:                                       ; preds = %if.else.64
  %call69 = call i64 @builtin_lisp_symbol(i32 560)
  %33 = load i64, i64* %fun, align 8
  %sub70 = sub nsw i64 %33, 3
  %34 = inttoptr i64 %sub70 to i8*
  %35 = bitcast i8* %34 to %struct.Lisp_Cons*
  %u71 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %35, i32 0, i32 1
  %cdr72 = bitcast %union.anon* %u71 to i64*
  %36 = load i64, i64* %cdr72, align 8
  %call73 = call i64 @Fcdr(i64 %36)
  %call74 = call i64 @Fassq(i64 %call69, i64 %call73)
  store i64 %call74, i64* %retval
  br label %return

if.end.75:                                        ; preds = %if.else.64
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.else.48
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.end.41
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.end.29
  %call81 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call81, i64* %retval
  br label %return

return:                                           ; preds = %if.end.80, %if.then.68, %if.then.58, %if.then.44, %if.then.37, %cond.end, %if.then.10, %if.then
  %37 = load i64, i64* %retval
  ret i64 %37
}

; Function Attrs: nounwind uwtable
define i64 @indirect_function(i64 %object) #4 {
entry:
  %object.addr = alloca i64, align 8
  %tortoise = alloca i64, align 8
  %hare = alloca i64, align 8
  store i64 %object, i64* %object.addr, align 8
  %0 = load i64, i64* %object.addr, align 8
  store i64 %0, i64* %tortoise, align 8
  store i64 %0, i64* %hare, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.24, %entry
  %1 = load i64, i64* %hare, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.cond
  %2 = load i64, i64* %hare, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp2 = icmp eq i64 %2, %call
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.cond
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i64, i64* %hare, align 8
  %sub = sub nsw i64 %3, 0
  %add.ptr = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub
  %4 = bitcast i8* %add.ptr to %struct.Lisp_Symbol*
  %function = getelementptr inbounds %struct.Lisp_Symbol, %struct.Lisp_Symbol* %4, i32 0, i32 3
  %5 = load i64, i64* %function, align 8
  store i64 %5, i64* %hare, align 8
  %6 = load i64, i64* %hare, align 8
  %and4 = and i64 %6, 7
  %conv5 = trunc i64 %and4 to i32
  %cmp6 = icmp eq i32 %conv5, 0
  br i1 %cmp6, label %lor.lhs.false.8, label %if.then.12

lor.lhs.false.8:                                  ; preds = %if.end
  %7 = load i64, i64* %hare, align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp10 = icmp eq i64 %7, %call9
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %lor.lhs.false.8, %if.end
  br label %for.end

if.end.13:                                        ; preds = %lor.lhs.false.8
  %8 = load i64, i64* %hare, align 8
  %sub14 = sub nsw i64 %8, 0
  %add.ptr15 = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub14
  %9 = bitcast i8* %add.ptr15 to %struct.Lisp_Symbol*
  %function16 = getelementptr inbounds %struct.Lisp_Symbol, %struct.Lisp_Symbol* %9, i32 0, i32 3
  %10 = load i64, i64* %function16, align 8
  store i64 %10, i64* %hare, align 8
  %11 = load i64, i64* %tortoise, align 8
  %sub17 = sub nsw i64 %11, 0
  %add.ptr18 = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub17
  %12 = bitcast i8* %add.ptr18 to %struct.Lisp_Symbol*
  %function19 = getelementptr inbounds %struct.Lisp_Symbol, %struct.Lisp_Symbol* %12, i32 0, i32 3
  %13 = load i64, i64* %function19, align 8
  store i64 %13, i64* %tortoise, align 8
  %14 = load i64, i64* %hare, align 8
  %15 = load i64, i64* %tortoise, align 8
  %cmp20 = icmp eq i64 %14, %15
  br i1 %cmp20, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.13
  %call23 = call i64 @builtin_lisp_symbol(i32 312)
  %16 = load i64, i64* %object.addr, align 8
  call void @xsignal1(i64 %call23, i64 %16) #7
  unreachable

if.end.24:                                        ; preds = %if.end.13
  br label %for.cond

for.end:                                          ; preds = %if.then.12, %if.then
  %17 = load i64, i64* %hare, align 8
  ret i64 %17
}

declare i64 @list2(i64, i64) #2

declare i64 @Fread_from_string(i64, i64, i64) #2

declare i64 @ASIZE(i64) #2

declare i64 @AREF(i64, i64) #2

declare i64 @Fautoload_do_load(i64, i64, i64) #2

declare i64 @Fassq(i64, i64) #2

declare %struct.Lisp_Symbol* @SYMBOL_ALIAS(%struct.Lisp_Symbol*) #2

declare i64 @make_lisp_symbol(%struct.Lisp_Symbol*) #2

; Function Attrs: nounwind uwtable
define i64 @Findirect_variable(i64 %object) #4 {
entry:
  %object.addr = alloca i64, align 8
  %sym = alloca %struct.Lisp_Symbol*, align 8
  store i64 %object, i64* %object.addr, align 8
  %0 = load i64, i64* %object.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %object.addr, align 8
  %sub = sub nsw i64 %1, 0
  %add.ptr = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub
  %2 = bitcast i8* %add.ptr to %struct.Lisp_Symbol*
  %call = call %struct.Lisp_Symbol* @indirect_variable(%struct.Lisp_Symbol* %2)
  store %struct.Lisp_Symbol* %call, %struct.Lisp_Symbol** %sym, align 8
  %3 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %call2 = call i64 @make_lisp_symbol(%struct.Lisp_Symbol* %3)
  store i64 %call2, i64* %object.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* %object.addr, align 8
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define i64 @do_symval_forwarding(%union.Lisp_Fwd* %valcontents) #4 {
entry:
  %retval = alloca i64, align 8
  %valcontents.addr = alloca %union.Lisp_Fwd*, align 8
  %val = alloca i64, align 8
  store %union.Lisp_Fwd* %valcontents, %union.Lisp_Fwd** %valcontents.addr, align 8
  %0 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %valcontents.addr, align 8
  %call = call i32 @XFWDTYPE(%union.Lisp_Fwd* %0)
  switch i32 %call, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.2
    i32 2, label %sw.bb.6
    i32 3, label %sw.bb.8
    i32 4, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %valcontents.addr, align 8
  %call1 = call %struct.Lisp_Intfwd* @XINTFWD(%union.Lisp_Fwd* %1)
  %intvar = getelementptr inbounds %struct.Lisp_Intfwd, %struct.Lisp_Intfwd* %call1, i32 0, i32 1
  %2 = load i64*, i64** %intvar, align 8
  %3 = load i64, i64* %2, align 8
  %shl = shl i64 %3, 2
  %add = add i64 %shl, 2
  store i64 %add, i64* %val, align 8
  %4 = load i64, i64* %val, align 8
  store i64 %4, i64* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  %5 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %valcontents.addr, align 8
  %call3 = call %struct.Lisp_Boolfwd* @XBOOLFWD(%union.Lisp_Fwd* %5)
  %boolvar = getelementptr inbounds %struct.Lisp_Boolfwd, %struct.Lisp_Boolfwd* %call3, i32 0, i32 1
  %6 = load i8*, i8** %boolvar, align 8
  %7 = load i8, i8* %6, align 1
  %tobool = trunc i8 %7 to i1
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.2
  %call4 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.2
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call4, %cond.true ], [ %call5, %cond.false ]
  store i64 %cond, i64* %retval
  br label %return

sw.bb.6:                                          ; preds = %entry
  %8 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %valcontents.addr, align 8
  %call7 = call %struct.Lisp_Objfwd* @XOBJFWD(%union.Lisp_Fwd* %8)
  %objvar = getelementptr inbounds %struct.Lisp_Objfwd, %struct.Lisp_Objfwd* %call7, i32 0, i32 1
  %9 = load i64*, i64** %objvar, align 8
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %retval
  br label %return

sw.bb.8:                                          ; preds = %entry
  %11 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %12 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %valcontents.addr, align 8
  %call9 = call %struct.Lisp_Buffer_Objfwd* @XBUFFER_OBJFWD(%union.Lisp_Fwd* %12)
  %offset = getelementptr inbounds %struct.Lisp_Buffer_Objfwd, %struct.Lisp_Buffer_Objfwd* %call9, i32 0, i32 1
  %13 = load i32, i32* %offset, align 4
  %call10 = call i64 @per_buffer_value(%struct.buffer* %11, i32 %13)
  store i64 %call10, i64* %retval
  br label %return

sw.bb.11:                                         ; preds = %entry
  %14 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %valcontents.addr, align 8
  %call12 = call %struct.Lisp_Kboard_Objfwd* @XKBOARD_OBJFWD(%union.Lisp_Fwd* %14)
  %offset13 = getelementptr inbounds %struct.Lisp_Kboard_Objfwd, %struct.Lisp_Kboard_Objfwd* %call12, i32 0, i32 1
  %15 = load i32, i32* %offset13, align 4
  %16 = load i64, i64* @selected_frame, align 8
  %call14 = call zeroext i1 @FRAMEP(i64 %16)
  br i1 %call14, label %land.lhs.true, label %cond.false.17

land.lhs.true:                                    ; preds = %sw.bb.11
  %17 = load i64, i64* @selected_frame, align 8
  %sub = sub nsw i64 %17, 5
  %18 = inttoptr i64 %sub to i8*
  %19 = bitcast i8* %18 to %struct.frame*
  %terminal = getelementptr inbounds %struct.frame, %struct.frame* %19, i32 0, i32 61
  %20 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %cmp = icmp ne %struct.terminal* %20, null
  br i1 %cmp, label %cond.true.15, label %cond.false.17

cond.true.15:                                     ; preds = %land.lhs.true
  %21 = load i64, i64* @selected_frame, align 8
  %sub16 = sub nsw i64 %21, 5
  %22 = inttoptr i64 %sub16 to i8*
  %23 = bitcast i8* %22 to %struct.frame*
  br label %cond.end.18

cond.false.17:                                    ; preds = %land.lhs.true, %sw.bb.11
  call void @emacs_abort() #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end.18

cond.end.18:                                      ; preds = %24, %cond.true.15
  %cond19 = phi %struct.frame* [ %23, %cond.true.15 ], [ null, %24 ]
  %terminal20 = getelementptr inbounds %struct.frame, %struct.frame* %cond19, i32 0, i32 61
  %25 = load %struct.terminal*, %struct.terminal** %terminal20, align 8
  %kboard = getelementptr inbounds %struct.terminal, %struct.terminal* %25, i32 0, i32 10
  %26 = load %struct.kboard*, %struct.kboard** %kboard, align 8
  %27 = bitcast %struct.kboard* %26 to i8*
  %idx.ext = sext i32 %15 to i64
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 %idx.ext
  %28 = bitcast i8* %add.ptr to i64*
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %retval
  br label %return

sw.default:                                       ; preds = %entry
  call void @emacs_abort() #7
  unreachable

return:                                           ; preds = %cond.end.18, %sw.bb.8, %sw.bb.6, %cond.end, %sw.bb
  %30 = load i64, i64* %retval
  ret i64 %30
}

declare i32 @XFWDTYPE(%union.Lisp_Fwd*) #2

; Function Attrs: nounwind uwtable
define internal %struct.Lisp_Intfwd* @XINTFWD(%union.Lisp_Fwd* %a) #4 {
entry:
  %a.addr = alloca %union.Lisp_Fwd*, align 8
  store %union.Lisp_Fwd* %a, %union.Lisp_Fwd** %a.addr, align 8
  %0 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %a.addr, align 8
  %u_intfwd = bitcast %union.Lisp_Fwd* %0 to %struct.Lisp_Intfwd*
  ret %struct.Lisp_Intfwd* %u_intfwd
}

; Function Attrs: nounwind uwtable
define internal %struct.Lisp_Boolfwd* @XBOOLFWD(%union.Lisp_Fwd* %a) #4 {
entry:
  %a.addr = alloca %union.Lisp_Fwd*, align 8
  store %union.Lisp_Fwd* %a, %union.Lisp_Fwd** %a.addr, align 8
  %0 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %a.addr, align 8
  %u_boolfwd = bitcast %union.Lisp_Fwd* %0 to %struct.Lisp_Boolfwd*
  ret %struct.Lisp_Boolfwd* %u_boolfwd
}

; Function Attrs: nounwind uwtable
define internal %struct.Lisp_Objfwd* @XOBJFWD(%union.Lisp_Fwd* %a) #4 {
entry:
  %a.addr = alloca %union.Lisp_Fwd*, align 8
  store %union.Lisp_Fwd* %a, %union.Lisp_Fwd** %a.addr, align 8
  %0 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %a.addr, align 8
  %u_objfwd = bitcast %union.Lisp_Fwd* %0 to %struct.Lisp_Objfwd*
  ret %struct.Lisp_Objfwd* %u_objfwd
}

declare i64 @per_buffer_value(%struct.buffer*, i32) #2

declare %struct.Lisp_Buffer_Objfwd* @XBUFFER_OBJFWD(%union.Lisp_Fwd*) #2

; Function Attrs: nounwind uwtable
define internal %struct.Lisp_Kboard_Objfwd* @XKBOARD_OBJFWD(%union.Lisp_Fwd* %a) #4 {
entry:
  %a.addr = alloca %union.Lisp_Fwd*, align 8
  store %union.Lisp_Fwd* %a, %union.Lisp_Fwd** %a.addr, align 8
  %0 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %a.addr, align 8
  %u_kboard_objfwd = bitcast %union.Lisp_Fwd* %0 to %struct.Lisp_Kboard_Objfwd*
  ret %struct.Lisp_Kboard_Objfwd* %u_kboard_objfwd
}

; Function Attrs: noreturn nounwind uwtable
define void @wrong_choice(i64 %choice, i64 %wrong) #0 {
entry:
  %choice.addr = alloca i64, align 8
  %wrong.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %len = alloca i64, align 8
  %obj = alloca i64, align 8
  %args = alloca i64*, align 8
  %one_of = alloca i64, align 8
  %.compoundliteral = alloca %union.Aligned_String, align 8
  %comma = alloca i64, align 8
  %.compoundliteral3 = alloca %union.Aligned_String, align 8
  %or = alloca i64, align 8
  %.compoundliteral11 = alloca %union.Aligned_String, align 8
  %should_be_specified = alloca i64, align 8
  %.compoundliteral19 = alloca %union.Aligned_String, align 8
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  %alloca_nbytes = alloca i64, align 8
  %arg_ = alloca i64, align 8
  store i64 %choice, i64* %choice.addr, align 8
  store i64 %wrong, i64* %wrong.addr, align 8
  store i64 0, i64* %i, align 8
  %0 = load i64, i64* %choice.addr, align 8
  %call = call i64 @Flength(i64 %0)
  %shr = ashr i64 %call, 2
  store i64 %shr, i64* %len, align 8
  %s = bitcast %union.Aligned_String* %.compoundliteral to %struct.Lisp_String*
  %size = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 0
  store i64 7, i64* %size, align 8
  %size_byte = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 1
  store i64 -1, i64* %size_byte, align 8
  %intervals = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 2
  store %struct.interval* null, %struct.interval** %intervals, align 8
  %data = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 3
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8** %data, align 8
  %s1 = bitcast %union.Aligned_String* %.compoundliteral to %struct.Lisp_String*
  %1 = bitcast %struct.Lisp_String* %s1 to i8*
  %call2 = call i64 @make_lisp_ptr(i8* %1, i32 4)
  store i64 %call2, i64* %one_of, align 8
  %s4 = bitcast %union.Aligned_String* %.compoundliteral3 to %struct.Lisp_String*
  %size5 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s4, i32 0, i32 0
  store i64 2, i64* %size5, align 8
  %size_byte6 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s4, i32 0, i32 1
  store i64 -1, i64* %size_byte6, align 8
  %intervals7 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s4, i32 0, i32 2
  store %struct.interval* null, %struct.interval** %intervals7, align 8
  %data8 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s4, i32 0, i32 3
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8** %data8, align 8
  %s9 = bitcast %union.Aligned_String* %.compoundliteral3 to %struct.Lisp_String*
  %2 = bitcast %struct.Lisp_String* %s9 to i8*
  %call10 = call i64 @make_lisp_ptr(i8* %2, i32 4)
  store i64 %call10, i64* %comma, align 8
  %s12 = bitcast %union.Aligned_String* %.compoundliteral11 to %struct.Lisp_String*
  %size13 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s12, i32 0, i32 0
  store i64 4, i64* %size13, align 8
  %size_byte14 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s12, i32 0, i32 1
  store i64 -1, i64* %size_byte14, align 8
  %intervals15 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s12, i32 0, i32 2
  store %struct.interval* null, %struct.interval** %intervals15, align 8
  %data16 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s12, i32 0, i32 3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8** %data16, align 8
  %s17 = bitcast %union.Aligned_String* %.compoundliteral11 to %struct.Lisp_String*
  %3 = bitcast %struct.Lisp_String* %s17 to i8*
  %call18 = call i64 @make_lisp_ptr(i8* %3, i32 4)
  store i64 %call18, i64* %or, align 8
  %s20 = bitcast %union.Aligned_String* %.compoundliteral19 to %struct.Lisp_String*
  %size21 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s20, i32 0, i32 0
  store i64 20, i64* %size21, align 8
  %size_byte22 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s20, i32 0, i32 1
  store i64 -1, i64* %size_byte22, align 8
  %intervals23 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s20, i32 0, i32 2
  store %struct.interval* null, %struct.interval** %intervals23, align 8
  %data24 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s20, i32 0, i32 3
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i8** %data24, align 8
  %s25 = bitcast %union.Aligned_String* %.compoundliteral19 to %struct.Lisp_String*
  %4 = bitcast %struct.Lisp_String* %s25 to i8*
  %call26 = call i64 @make_lisp_ptr(i8* %4, i32 4)
  store i64 %call26, i64* %should_be_specified, align 8
  store i64 16384, i64* %sa_avail, align 8
  %call27 = call i64 @SPECPDL_INDEX()
  store i64 %call27, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  br i1 false, label %cond.true, label %cond.false.634

cond.true:                                        ; preds = %do.body
  br i1 false, label %cond.true.28, label %cond.false.351

cond.true.28:                                     ; preds = %cond.true
  %5 = load i64, i64* %len, align 8
  %mul = mul nsw i64 %5, 2
  %add = add nsw i64 %mul, 1
  %conv = trunc i64 %add to i8
  %conv29 = sext i8 %conv to i32
  %add30 = add nsw i32 0, %conv29
  %mul31 = mul nsw i32 0, %add30
  %sub = sub nsw i32 %mul31, 1
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %cond.true.33, label %cond.false

cond.true.33:                                     ; preds = %cond.true.28
  %6 = load i64, i64* %len, align 8
  %mul34 = mul nsw i64 %6, 2
  %add35 = add nsw i64 %mul34, 1
  %conv36 = trunc i64 %add35 to i8
  %conv37 = sext i8 %conv36 to i32
  %add38 = add nsw i32 0, %conv37
  %mul39 = mul nsw i32 0, %add38
  %add40 = add nsw i32 %mul39, 0
  %neg = xor i32 %add40, -1
  %cmp41 = icmp eq i32 %neg, -1
  %conv42 = zext i1 %cmp41 to i32
  %sub43 = sub nsw i32 0, %conv42
  %7 = load i64, i64* %len, align 8
  %mul44 = mul nsw i64 %7, 2
  %add45 = add nsw i64 %mul44, 1
  %conv46 = trunc i64 %add45 to i8
  %conv47 = sext i8 %conv46 to i32
  %add48 = add nsw i32 0, %conv47
  %mul49 = mul nsw i32 0, %add48
  %add50 = add nsw i32 %mul49, 1
  %shl = shl i32 %add50, 30
  %sub51 = sub nsw i32 %shl, 1
  %mul52 = mul nsw i32 %sub51, 2
  %add53 = add nsw i32 %mul52, 1
  %sub54 = sub nsw i32 %sub43, %add53
  br label %cond.end

cond.false:                                       ; preds = %cond.true.28
  %8 = load i64, i64* %len, align 8
  %mul55 = mul nsw i64 %8, 2
  %add56 = add nsw i64 %mul55, 1
  %conv57 = trunc i64 %add56 to i8
  %conv58 = sext i8 %conv57 to i32
  %add59 = add nsw i32 0, %conv58
  %mul60 = mul nsw i32 0, %add59
  %add61 = add nsw i32 %mul60, 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.33
  %cond = phi i32 [ %sub54, %cond.true.33 ], [ %add61, %cond.false ]
  %cmp62 = icmp eq i32 %cond, 0
  br i1 %cmp62, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %cond.end
  %9 = load i64, i64* %len, align 8
  %mul64 = mul nsw i64 %9, 2
  %add65 = add nsw i64 %mul64, 1
  %conv66 = trunc i64 %add65 to i8
  %conv67 = sext i8 %conv66 to i32
  %cmp68 = icmp slt i32 %conv67, 0
  br i1 %cmp68, label %cond.true.293, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %cond.end
  br i1 false, label %cond.true.70, label %cond.false.168

cond.true.70:                                     ; preds = %lor.lhs.false
  %10 = load i64, i64* %len, align 8
  %mul71 = mul nsw i64 %10, 2
  %add72 = add nsw i64 %mul71, 1
  %conv73 = trunc i64 %add72 to i8
  %conv74 = sext i8 %conv73 to i32
  %cmp75 = icmp slt i32 %conv74, 0
  br i1 %cmp75, label %cond.true.77, label %cond.false.115

cond.true.77:                                     ; preds = %cond.true.70
  %11 = load i64, i64* %len, align 8
  %mul78 = mul nsw i64 %11, 2
  %add79 = add nsw i64 %mul78, 1
  %conv80 = trunc i64 %add79 to i8
  %conv81 = sext i8 %conv80 to i32
  %12 = load i64, i64* %len, align 8
  %mul82 = mul nsw i64 %12, 2
  %add83 = add nsw i64 %mul82, 1
  %conv84 = trunc i64 %add83 to i8
  %conv85 = sext i8 %conv84 to i32
  %add86 = add nsw i32 0, %conv85
  %mul87 = mul nsw i32 0, %add86
  %sub88 = sub nsw i32 %mul87, 1
  %cmp89 = icmp slt i32 %sub88, 0
  br i1 %cmp89, label %cond.true.91, label %cond.false.103

cond.true.91:                                     ; preds = %cond.true.77
  %13 = load i64, i64* %len, align 8
  %mul92 = mul nsw i64 %13, 2
  %add93 = add nsw i64 %mul92, 1
  %conv94 = trunc i64 %add93 to i8
  %conv95 = sext i8 %conv94 to i32
  %add96 = add nsw i32 0, %conv95
  %mul97 = mul nsw i32 0, %add96
  %add98 = add nsw i32 %mul97, 1
  %shl99 = shl i32 %add98, 30
  %sub100 = sub nsw i32 %shl99, 1
  %mul101 = mul nsw i32 %sub100, 2
  %add102 = add nsw i32 %mul101, 1
  br label %cond.end.111

cond.false.103:                                   ; preds = %cond.true.77
  %14 = load i64, i64* %len, align 8
  %mul104 = mul nsw i64 %14, 2
  %add105 = add nsw i64 %mul104, 1
  %conv106 = trunc i64 %add105 to i8
  %conv107 = sext i8 %conv106 to i32
  %add108 = add nsw i32 0, %conv107
  %mul109 = mul nsw i32 0, %add108
  %sub110 = sub nsw i32 %mul109, 1
  br label %cond.end.111

cond.end.111:                                     ; preds = %cond.false.103, %cond.true.91
  %cond112 = phi i32 [ %add102, %cond.true.91 ], [ %sub110, %cond.false.103 ]
  %div = sdiv i32 %cond112, 8
  %cmp113 = icmp slt i32 %conv81, %div
  br i1 %cmp113, label %cond.true.293, label %lor.lhs.false.267

cond.false.115:                                   ; preds = %cond.true.70
  br i1 false, label %cond.true.116, label %cond.false.117

cond.true.116:                                    ; preds = %cond.false.115
  br i1 false, label %cond.true.293, label %lor.lhs.false.267

cond.false.117:                                   ; preds = %cond.false.115
  %15 = load i64, i64* %len, align 8
  %mul118 = mul nsw i64 %15, 2
  %add119 = add nsw i64 %mul118, 1
  %conv120 = trunc i64 %add119 to i8
  %conv121 = sext i8 %conv120 to i32
  %add122 = add nsw i32 0, %conv121
  %mul123 = mul nsw i32 0, %add122
  %sub124 = sub nsw i32 %mul123, 1
  %cmp125 = icmp slt i32 %sub124, 0
  br i1 %cmp125, label %cond.true.127, label %cond.false.151

cond.true.127:                                    ; preds = %cond.false.117
  %16 = load i64, i64* %len, align 8
  %mul128 = mul nsw i64 %16, 2
  %add129 = add nsw i64 %mul128, 1
  %conv130 = trunc i64 %add129 to i8
  %conv131 = sext i8 %conv130 to i32
  %add132 = add nsw i32 0, %conv131
  %mul133 = mul nsw i32 0, %add132
  %add134 = add nsw i32 %mul133, 0
  %neg135 = xor i32 %add134, -1
  %cmp136 = icmp eq i32 %neg135, -1
  %conv137 = zext i1 %cmp136 to i32
  %sub138 = sub nsw i32 0, %conv137
  %17 = load i64, i64* %len, align 8
  %mul139 = mul nsw i64 %17, 2
  %add140 = add nsw i64 %mul139, 1
  %conv141 = trunc i64 %add140 to i8
  %conv142 = sext i8 %conv141 to i32
  %add143 = add nsw i32 0, %conv142
  %mul144 = mul nsw i32 0, %add143
  %add145 = add nsw i32 %mul144, 1
  %shl146 = shl i32 %add145, 30
  %sub147 = sub nsw i32 %shl146, 1
  %mul148 = mul nsw i32 %sub147, 2
  %add149 = add nsw i32 %mul148, 1
  %sub150 = sub nsw i32 %sub138, %add149
  br label %cond.end.159

cond.false.151:                                   ; preds = %cond.false.117
  %18 = load i64, i64* %len, align 8
  %mul152 = mul nsw i64 %18, 2
  %add153 = add nsw i64 %mul152, 1
  %conv154 = trunc i64 %add153 to i8
  %conv155 = sext i8 %conv154 to i32
  %add156 = add nsw i32 0, %conv155
  %mul157 = mul nsw i32 0, %add156
  %add158 = add nsw i32 %mul157, 0
  br label %cond.end.159

cond.end.159:                                     ; preds = %cond.false.151, %cond.true.127
  %cond160 = phi i32 [ %sub150, %cond.true.127 ], [ %add158, %cond.false.151 ]
  %div161 = sdiv i32 %cond160, 8
  %19 = load i64, i64* %len, align 8
  %mul162 = mul nsw i64 %19, 2
  %add163 = add nsw i64 %mul162, 1
  %conv164 = trunc i64 %add163 to i8
  %conv165 = sext i8 %conv164 to i32
  %cmp166 = icmp slt i32 %div161, %conv165
  br i1 %cmp166, label %cond.true.293, label %lor.lhs.false.267

cond.false.168:                                   ; preds = %lor.lhs.false
  br i1 false, label %cond.true.169, label %cond.false.170

cond.true.169:                                    ; preds = %cond.false.168
  br i1 false, label %cond.true.293, label %lor.lhs.false.267

cond.false.170:                                   ; preds = %cond.false.168
  %20 = load i64, i64* %len, align 8
  %mul171 = mul nsw i64 %20, 2
  %add172 = add nsw i64 %mul171, 1
  %conv173 = trunc i64 %add172 to i8
  %conv174 = sext i8 %conv173 to i32
  %cmp175 = icmp slt i32 %conv174, 0
  br i1 %cmp175, label %cond.true.177, label %cond.false.228

cond.true.177:                                    ; preds = %cond.false.170
  %21 = load i64, i64* %len, align 8
  %mul178 = mul nsw i64 %21, 2
  %add179 = add nsw i64 %mul178, 1
  %conv180 = trunc i64 %add179 to i8
  %conv181 = sext i8 %conv180 to i32
  %22 = load i64, i64* %len, align 8
  %mul182 = mul nsw i64 %22, 2
  %add183 = add nsw i64 %mul182, 1
  %conv184 = trunc i64 %add183 to i8
  %conv185 = sext i8 %conv184 to i32
  %add186 = add nsw i32 0, %conv185
  %mul187 = mul nsw i32 0, %add186
  %sub188 = sub nsw i32 %mul187, 1
  %cmp189 = icmp slt i32 %sub188, 0
  br i1 %cmp189, label %cond.true.191, label %cond.false.215

cond.true.191:                                    ; preds = %cond.true.177
  %23 = load i64, i64* %len, align 8
  %mul192 = mul nsw i64 %23, 2
  %add193 = add nsw i64 %mul192, 1
  %conv194 = trunc i64 %add193 to i8
  %conv195 = sext i8 %conv194 to i32
  %add196 = add nsw i32 0, %conv195
  %mul197 = mul nsw i32 0, %add196
  %add198 = add nsw i32 %mul197, 0
  %neg199 = xor i32 %add198, -1
  %cmp200 = icmp eq i32 %neg199, -1
  %conv201 = zext i1 %cmp200 to i32
  %sub202 = sub nsw i32 0, %conv201
  %24 = load i64, i64* %len, align 8
  %mul203 = mul nsw i64 %24, 2
  %add204 = add nsw i64 %mul203, 1
  %conv205 = trunc i64 %add204 to i8
  %conv206 = sext i8 %conv205 to i32
  %add207 = add nsw i32 0, %conv206
  %mul208 = mul nsw i32 0, %add207
  %add209 = add nsw i32 %mul208, 1
  %shl210 = shl i32 %add209, 30
  %sub211 = sub nsw i32 %shl210, 1
  %mul212 = mul nsw i32 %sub211, 2
  %add213 = add nsw i32 %mul212, 1
  %sub214 = sub nsw i32 %sub202, %add213
  br label %cond.end.223

cond.false.215:                                   ; preds = %cond.true.177
  %25 = load i64, i64* %len, align 8
  %mul216 = mul nsw i64 %25, 2
  %add217 = add nsw i64 %mul216, 1
  %conv218 = trunc i64 %add217 to i8
  %conv219 = sext i8 %conv218 to i32
  %add220 = add nsw i32 0, %conv219
  %mul221 = mul nsw i32 0, %add220
  %add222 = add nsw i32 %mul221, 0
  br label %cond.end.223

cond.end.223:                                     ; preds = %cond.false.215, %cond.true.191
  %cond224 = phi i32 [ %sub214, %cond.true.191 ], [ %add222, %cond.false.215 ]
  %div225 = sdiv i32 %cond224, 8
  %cmp226 = icmp slt i32 %conv181, %div225
  br i1 %cmp226, label %cond.true.293, label %lor.lhs.false.267

cond.false.228:                                   ; preds = %cond.false.170
  %26 = load i64, i64* %len, align 8
  %mul229 = mul nsw i64 %26, 2
  %add230 = add nsw i64 %mul229, 1
  %conv231 = trunc i64 %add230 to i8
  %conv232 = sext i8 %conv231 to i32
  %add233 = add nsw i32 0, %conv232
  %mul234 = mul nsw i32 0, %add233
  %sub235 = sub nsw i32 %mul234, 1
  %cmp236 = icmp slt i32 %sub235, 0
  br i1 %cmp236, label %cond.true.238, label %cond.false.250

cond.true.238:                                    ; preds = %cond.false.228
  %27 = load i64, i64* %len, align 8
  %mul239 = mul nsw i64 %27, 2
  %add240 = add nsw i64 %mul239, 1
  %conv241 = trunc i64 %add240 to i8
  %conv242 = sext i8 %conv241 to i32
  %add243 = add nsw i32 0, %conv242
  %mul244 = mul nsw i32 0, %add243
  %add245 = add nsw i32 %mul244, 1
  %shl246 = shl i32 %add245, 30
  %sub247 = sub nsw i32 %shl246, 1
  %mul248 = mul nsw i32 %sub247, 2
  %add249 = add nsw i32 %mul248, 1
  br label %cond.end.258

cond.false.250:                                   ; preds = %cond.false.228
  %28 = load i64, i64* %len, align 8
  %mul251 = mul nsw i64 %28, 2
  %add252 = add nsw i64 %mul251, 1
  %conv253 = trunc i64 %add252 to i8
  %conv254 = sext i8 %conv253 to i32
  %add255 = add nsw i32 0, %conv254
  %mul256 = mul nsw i32 0, %add255
  %sub257 = sub nsw i32 %mul256, 1
  br label %cond.end.258

cond.end.258:                                     ; preds = %cond.false.250, %cond.true.238
  %cond259 = phi i32 [ %add249, %cond.true.238 ], [ %sub257, %cond.false.250 ]
  %div260 = sdiv i32 %cond259, 8
  %29 = load i64, i64* %len, align 8
  %mul261 = mul nsw i64 %29, 2
  %add262 = add nsw i64 %mul261, 1
  %conv263 = trunc i64 %add262 to i8
  %conv264 = sext i8 %conv263 to i32
  %cmp265 = icmp slt i32 %div260, %conv264
  br i1 %cmp265, label %cond.true.293, label %lor.lhs.false.267

lor.lhs.false.267:                                ; preds = %cond.end.258, %cond.end.223, %cond.true.169, %cond.end.159, %cond.true.116, %cond.end.111
  %30 = load i64, i64* %len, align 8
  %mul268 = mul nsw i64 %30, 2
  %add269 = add nsw i64 %mul268, 1
  %conv270 = trunc i64 %add269 to i8
  %conv271 = sext i8 %conv270 to i32
  %mul272 = mul nsw i32 %conv271, 8
  %mul273 = mul nsw i32 0, %mul272
  %sub274 = sub nsw i32 %mul273, 1
  %cmp275 = icmp slt i32 %sub274, 0
  br i1 %cmp275, label %land.lhs.true.277, label %lor.lhs.false.285

land.lhs.true.277:                                ; preds = %lor.lhs.false.267
  %31 = load i64, i64* %len, align 8
  %mul278 = mul nsw i64 %31, 2
  %add279 = add nsw i64 %mul278, 1
  %conv280 = trunc i64 %add279 to i8
  %conv281 = sext i8 %conv280 to i32
  %mul282 = mul nsw i32 %conv281, 8
  %cmp283 = icmp slt i32 %mul282, -128
  br i1 %cmp283, label %cond.true.293, label %lor.lhs.false.285

lor.lhs.false.285:                                ; preds = %land.lhs.true.277, %lor.lhs.false.267
  %32 = load i64, i64* %len, align 8
  %mul286 = mul nsw i64 %32, 2
  %add287 = add nsw i64 %mul286, 1
  %conv288 = trunc i64 %add287 to i8
  %conv289 = sext i8 %conv288 to i32
  %mul290 = mul nsw i32 %conv289, 8
  %cmp291 = icmp slt i32 127, %mul290
  br i1 %cmp291, label %cond.true.293, label %cond.false.322

cond.true.293:                                    ; preds = %lor.lhs.false.285, %land.lhs.true.277, %cond.end.258, %cond.end.223, %cond.true.169, %cond.end.159, %cond.true.116, %cond.end.111, %land.lhs.true
  %33 = load i64, i64* %len, align 8
  %mul294 = mul nsw i64 %33, 2
  %add295 = add nsw i64 %mul294, 1
  %conv296 = trunc i64 %add295 to i8
  %conv297 = zext i8 %conv296 to i32
  %mul298 = mul nsw i32 %conv297, 8
  %cmp299 = icmp sle i32 %mul298, 127
  br i1 %cmp299, label %cond.true.301, label %cond.false.309

cond.true.301:                                    ; preds = %cond.true.293
  %34 = load i64, i64* %len, align 8
  %mul302 = mul nsw i64 %34, 2
  %add303 = add nsw i64 %mul302, 1
  %conv304 = trunc i64 %add303 to i8
  %conv305 = zext i8 %conv304 to i32
  %mul306 = mul nsw i32 %conv305, 8
  %conv307 = trunc i32 %mul306 to i8
  %conv308 = sext i8 %conv307 to i32
  br label %cond.end.319

cond.false.309:                                   ; preds = %cond.true.293
  %35 = load i64, i64* %len, align 8
  %mul310 = mul nsw i64 %35, 2
  %add311 = add nsw i64 %mul310, 1
  %conv312 = trunc i64 %add311 to i8
  %conv313 = zext i8 %conv312 to i32
  %mul314 = mul nsw i32 %conv313, 8
  %sub315 = sub nsw i32 %mul314, -128
  %conv316 = trunc i32 %sub315 to i8
  %conv317 = sext i8 %conv316 to i32
  %add318 = add nsw i32 %conv317, -128
  br label %cond.end.319

cond.end.319:                                     ; preds = %cond.false.309, %cond.true.301
  %cond320 = phi i32 [ %conv308, %cond.true.301 ], [ %add318, %cond.false.309 ]
  %conv321 = sext i32 %cond320 to i64
  store i64 %conv321, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then, label %lor.lhs.false.2867

cond.false.322:                                   ; preds = %lor.lhs.false.285
  %36 = load i64, i64* %len, align 8
  %mul323 = mul nsw i64 %36, 2
  %add324 = add nsw i64 %mul323, 1
  %conv325 = trunc i64 %add324 to i8
  %conv326 = zext i8 %conv325 to i32
  %mul327 = mul nsw i32 %conv326, 8
  %cmp328 = icmp sle i32 %mul327, 127
  br i1 %cmp328, label %cond.true.330, label %cond.false.338

cond.true.330:                                    ; preds = %cond.false.322
  %37 = load i64, i64* %len, align 8
  %mul331 = mul nsw i64 %37, 2
  %add332 = add nsw i64 %mul331, 1
  %conv333 = trunc i64 %add332 to i8
  %conv334 = zext i8 %conv333 to i32
  %mul335 = mul nsw i32 %conv334, 8
  %conv336 = trunc i32 %mul335 to i8
  %conv337 = sext i8 %conv336 to i32
  br label %cond.end.348

cond.false.338:                                   ; preds = %cond.false.322
  %38 = load i64, i64* %len, align 8
  %mul339 = mul nsw i64 %38, 2
  %add340 = add nsw i64 %mul339, 1
  %conv341 = trunc i64 %add340 to i8
  %conv342 = zext i8 %conv341 to i32
  %mul343 = mul nsw i32 %conv342, 8
  %sub344 = sub nsw i32 %mul343, -128
  %conv345 = trunc i32 %sub344 to i8
  %conv346 = sext i8 %conv345 to i32
  %add347 = add nsw i32 %conv346, -128
  br label %cond.end.348

cond.end.348:                                     ; preds = %cond.false.338, %cond.true.330
  %cond349 = phi i32 [ %conv337, %cond.true.330 ], [ %add347, %cond.false.338 ]
  %conv350 = sext i32 %cond349 to i64
  store i64 %conv350, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then, label %lor.lhs.false.2867

cond.false.351:                                   ; preds = %cond.true
  %39 = load i64, i64* %len, align 8
  %mul352 = mul nsw i64 %39, 2
  %add353 = add nsw i64 %mul352, 1
  %add354 = add nsw i64 0, %add353
  %mul355 = mul nsw i64 0, %add354
  %sub356 = sub nsw i64 %mul355, 1
  %cmp357 = icmp slt i64 %sub356, 0
  br i1 %cmp357, label %cond.true.359, label %cond.false.380

cond.true.359:                                    ; preds = %cond.false.351
  %40 = load i64, i64* %len, align 8
  %mul360 = mul nsw i64 %40, 2
  %add361 = add nsw i64 %mul360, 1
  %add362 = add nsw i64 0, %add361
  %mul363 = mul nsw i64 0, %add362
  %add364 = add nsw i64 %mul363, 0
  %neg365 = xor i64 %add364, -1
  %cmp366 = icmp eq i64 %neg365, -1
  %conv367 = zext i1 %cmp366 to i32
  %sub368 = sub nsw i32 0, %conv367
  %conv369 = sext i32 %sub368 to i64
  %41 = load i64, i64* %len, align 8
  %mul370 = mul nsw i64 %41, 2
  %add371 = add nsw i64 %mul370, 1
  %add372 = add nsw i64 0, %add371
  %mul373 = mul nsw i64 0, %add372
  %add374 = add nsw i64 %mul373, 1
  %shl375 = shl i64 %add374, 62
  %sub376 = sub nsw i64 %shl375, 1
  %mul377 = mul nsw i64 %sub376, 2
  %add378 = add nsw i64 %mul377, 1
  %sub379 = sub nsw i64 %conv369, %add378
  br label %cond.end.386

cond.false.380:                                   ; preds = %cond.false.351
  %42 = load i64, i64* %len, align 8
  %mul381 = mul nsw i64 %42, 2
  %add382 = add nsw i64 %mul381, 1
  %add383 = add nsw i64 0, %add382
  %mul384 = mul nsw i64 0, %add383
  %add385 = add nsw i64 %mul384, 0
  br label %cond.end.386

cond.end.386:                                     ; preds = %cond.false.380, %cond.true.359
  %cond387 = phi i64 [ %sub379, %cond.true.359 ], [ %add385, %cond.false.380 ]
  %cmp388 = icmp eq i64 %cond387, 0
  br i1 %cmp388, label %land.lhs.true.390, label %lor.lhs.false.395

land.lhs.true.390:                                ; preds = %cond.end.386
  %43 = load i64, i64* %len, align 8
  %mul391 = mul nsw i64 %43, 2
  %add392 = add nsw i64 %mul391, 1
  %cmp393 = icmp slt i64 %add392, 0
  br i1 %cmp393, label %cond.true.576, label %lor.lhs.false.395

lor.lhs.false.395:                                ; preds = %land.lhs.true.390, %cond.end.386
  br i1 false, label %cond.true.396, label %cond.false.476

cond.true.396:                                    ; preds = %lor.lhs.false.395
  %44 = load i64, i64* %len, align 8
  %mul397 = mul nsw i64 %44, 2
  %add398 = add nsw i64 %mul397, 1
  %cmp399 = icmp slt i64 %add398, 0
  br i1 %cmp399, label %cond.true.401, label %cond.false.432

cond.true.401:                                    ; preds = %cond.true.396
  %45 = load i64, i64* %len, align 8
  %mul402 = mul nsw i64 %45, 2
  %add403 = add nsw i64 %mul402, 1
  %46 = load i64, i64* %len, align 8
  %mul404 = mul nsw i64 %46, 2
  %add405 = add nsw i64 %mul404, 1
  %add406 = add nsw i64 0, %add405
  %mul407 = mul nsw i64 0, %add406
  %sub408 = sub nsw i64 %mul407, 1
  %cmp409 = icmp slt i64 %sub408, 0
  br i1 %cmp409, label %cond.true.411, label %cond.false.421

cond.true.411:                                    ; preds = %cond.true.401
  %47 = load i64, i64* %len, align 8
  %mul412 = mul nsw i64 %47, 2
  %add413 = add nsw i64 %mul412, 1
  %add414 = add nsw i64 0, %add413
  %mul415 = mul nsw i64 0, %add414
  %add416 = add nsw i64 %mul415, 1
  %shl417 = shl i64 %add416, 62
  %sub418 = sub nsw i64 %shl417, 1
  %mul419 = mul nsw i64 %sub418, 2
  %add420 = add nsw i64 %mul419, 1
  br label %cond.end.427

cond.false.421:                                   ; preds = %cond.true.401
  %48 = load i64, i64* %len, align 8
  %mul422 = mul nsw i64 %48, 2
  %add423 = add nsw i64 %mul422, 1
  %add424 = add nsw i64 0, %add423
  %mul425 = mul nsw i64 0, %add424
  %sub426 = sub nsw i64 %mul425, 1
  br label %cond.end.427

cond.end.427:                                     ; preds = %cond.false.421, %cond.true.411
  %cond428 = phi i64 [ %add420, %cond.true.411 ], [ %sub426, %cond.false.421 ]
  %div429 = sdiv i64 %cond428, 8
  %cmp430 = icmp slt i64 %add403, %div429
  br i1 %cmp430, label %cond.true.576, label %lor.lhs.false.556

cond.false.432:                                   ; preds = %cond.true.396
  br i1 false, label %cond.true.433, label %cond.false.434

cond.true.433:                                    ; preds = %cond.false.432
  br i1 false, label %cond.true.576, label %lor.lhs.false.556

cond.false.434:                                   ; preds = %cond.false.432
  %49 = load i64, i64* %len, align 8
  %mul435 = mul nsw i64 %49, 2
  %add436 = add nsw i64 %mul435, 1
  %add437 = add nsw i64 0, %add436
  %mul438 = mul nsw i64 0, %add437
  %sub439 = sub nsw i64 %mul438, 1
  %cmp440 = icmp slt i64 %sub439, 0
  br i1 %cmp440, label %cond.true.442, label %cond.false.463

cond.true.442:                                    ; preds = %cond.false.434
  %50 = load i64, i64* %len, align 8
  %mul443 = mul nsw i64 %50, 2
  %add444 = add nsw i64 %mul443, 1
  %add445 = add nsw i64 0, %add444
  %mul446 = mul nsw i64 0, %add445
  %add447 = add nsw i64 %mul446, 0
  %neg448 = xor i64 %add447, -1
  %cmp449 = icmp eq i64 %neg448, -1
  %conv450 = zext i1 %cmp449 to i32
  %sub451 = sub nsw i32 0, %conv450
  %conv452 = sext i32 %sub451 to i64
  %51 = load i64, i64* %len, align 8
  %mul453 = mul nsw i64 %51, 2
  %add454 = add nsw i64 %mul453, 1
  %add455 = add nsw i64 0, %add454
  %mul456 = mul nsw i64 0, %add455
  %add457 = add nsw i64 %mul456, 1
  %shl458 = shl i64 %add457, 62
  %sub459 = sub nsw i64 %shl458, 1
  %mul460 = mul nsw i64 %sub459, 2
  %add461 = add nsw i64 %mul460, 1
  %sub462 = sub nsw i64 %conv452, %add461
  br label %cond.end.469

cond.false.463:                                   ; preds = %cond.false.434
  %52 = load i64, i64* %len, align 8
  %mul464 = mul nsw i64 %52, 2
  %add465 = add nsw i64 %mul464, 1
  %add466 = add nsw i64 0, %add465
  %mul467 = mul nsw i64 0, %add466
  %add468 = add nsw i64 %mul467, 0
  br label %cond.end.469

cond.end.469:                                     ; preds = %cond.false.463, %cond.true.442
  %cond470 = phi i64 [ %sub462, %cond.true.442 ], [ %add468, %cond.false.463 ]
  %div471 = sdiv i64 %cond470, 8
  %53 = load i64, i64* %len, align 8
  %mul472 = mul nsw i64 %53, 2
  %add473 = add nsw i64 %mul472, 1
  %cmp474 = icmp slt i64 %div471, %add473
  br i1 %cmp474, label %cond.true.576, label %lor.lhs.false.556

cond.false.476:                                   ; preds = %lor.lhs.false.395
  br i1 false, label %cond.true.477, label %cond.false.478

cond.true.477:                                    ; preds = %cond.false.476
  br i1 false, label %cond.true.576, label %lor.lhs.false.556

cond.false.478:                                   ; preds = %cond.false.476
  %54 = load i64, i64* %len, align 8
  %mul479 = mul nsw i64 %54, 2
  %add480 = add nsw i64 %mul479, 1
  %cmp481 = icmp slt i64 %add480, 0
  br i1 %cmp481, label %cond.true.483, label %cond.false.525

cond.true.483:                                    ; preds = %cond.false.478
  %55 = load i64, i64* %len, align 8
  %mul484 = mul nsw i64 %55, 2
  %add485 = add nsw i64 %mul484, 1
  %56 = load i64, i64* %len, align 8
  %mul486 = mul nsw i64 %56, 2
  %add487 = add nsw i64 %mul486, 1
  %add488 = add nsw i64 0, %add487
  %mul489 = mul nsw i64 0, %add488
  %sub490 = sub nsw i64 %mul489, 1
  %cmp491 = icmp slt i64 %sub490, 0
  br i1 %cmp491, label %cond.true.493, label %cond.false.514

cond.true.493:                                    ; preds = %cond.true.483
  %57 = load i64, i64* %len, align 8
  %mul494 = mul nsw i64 %57, 2
  %add495 = add nsw i64 %mul494, 1
  %add496 = add nsw i64 0, %add495
  %mul497 = mul nsw i64 0, %add496
  %add498 = add nsw i64 %mul497, 0
  %neg499 = xor i64 %add498, -1
  %cmp500 = icmp eq i64 %neg499, -1
  %conv501 = zext i1 %cmp500 to i32
  %sub502 = sub nsw i32 0, %conv501
  %conv503 = sext i32 %sub502 to i64
  %58 = load i64, i64* %len, align 8
  %mul504 = mul nsw i64 %58, 2
  %add505 = add nsw i64 %mul504, 1
  %add506 = add nsw i64 0, %add505
  %mul507 = mul nsw i64 0, %add506
  %add508 = add nsw i64 %mul507, 1
  %shl509 = shl i64 %add508, 62
  %sub510 = sub nsw i64 %shl509, 1
  %mul511 = mul nsw i64 %sub510, 2
  %add512 = add nsw i64 %mul511, 1
  %sub513 = sub nsw i64 %conv503, %add512
  br label %cond.end.520

cond.false.514:                                   ; preds = %cond.true.483
  %59 = load i64, i64* %len, align 8
  %mul515 = mul nsw i64 %59, 2
  %add516 = add nsw i64 %mul515, 1
  %add517 = add nsw i64 0, %add516
  %mul518 = mul nsw i64 0, %add517
  %add519 = add nsw i64 %mul518, 0
  br label %cond.end.520

cond.end.520:                                     ; preds = %cond.false.514, %cond.true.493
  %cond521 = phi i64 [ %sub513, %cond.true.493 ], [ %add519, %cond.false.514 ]
  %div522 = sdiv i64 %cond521, 8
  %cmp523 = icmp slt i64 %add485, %div522
  br i1 %cmp523, label %cond.true.576, label %lor.lhs.false.556

cond.false.525:                                   ; preds = %cond.false.478
  %60 = load i64, i64* %len, align 8
  %mul526 = mul nsw i64 %60, 2
  %add527 = add nsw i64 %mul526, 1
  %add528 = add nsw i64 0, %add527
  %mul529 = mul nsw i64 0, %add528
  %sub530 = sub nsw i64 %mul529, 1
  %cmp531 = icmp slt i64 %sub530, 0
  br i1 %cmp531, label %cond.true.533, label %cond.false.543

cond.true.533:                                    ; preds = %cond.false.525
  %61 = load i64, i64* %len, align 8
  %mul534 = mul nsw i64 %61, 2
  %add535 = add nsw i64 %mul534, 1
  %add536 = add nsw i64 0, %add535
  %mul537 = mul nsw i64 0, %add536
  %add538 = add nsw i64 %mul537, 1
  %shl539 = shl i64 %add538, 62
  %sub540 = sub nsw i64 %shl539, 1
  %mul541 = mul nsw i64 %sub540, 2
  %add542 = add nsw i64 %mul541, 1
  br label %cond.end.549

cond.false.543:                                   ; preds = %cond.false.525
  %62 = load i64, i64* %len, align 8
  %mul544 = mul nsw i64 %62, 2
  %add545 = add nsw i64 %mul544, 1
  %add546 = add nsw i64 0, %add545
  %mul547 = mul nsw i64 0, %add546
  %sub548 = sub nsw i64 %mul547, 1
  br label %cond.end.549

cond.end.549:                                     ; preds = %cond.false.543, %cond.true.533
  %cond550 = phi i64 [ %add542, %cond.true.533 ], [ %sub548, %cond.false.543 ]
  %div551 = sdiv i64 %cond550, 8
  %63 = load i64, i64* %len, align 8
  %mul552 = mul nsw i64 %63, 2
  %add553 = add nsw i64 %mul552, 1
  %cmp554 = icmp slt i64 %div551, %add553
  br i1 %cmp554, label %cond.true.576, label %lor.lhs.false.556

lor.lhs.false.556:                                ; preds = %cond.end.549, %cond.end.520, %cond.true.477, %cond.end.469, %cond.true.433, %cond.end.427
  %64 = load i64, i64* %len, align 8
  %mul557 = mul nsw i64 %64, 2
  %add558 = add nsw i64 %mul557, 1
  %mul559 = mul nsw i64 %add558, 8
  %mul560 = mul nsw i64 0, %mul559
  %sub561 = sub nsw i64 %mul560, 1
  %cmp562 = icmp slt i64 %sub561, 0
  br i1 %cmp562, label %land.lhs.true.564, label %lor.lhs.false.570

land.lhs.true.564:                                ; preds = %lor.lhs.false.556
  %65 = load i64, i64* %len, align 8
  %mul565 = mul nsw i64 %65, 2
  %add566 = add nsw i64 %mul565, 1
  %mul567 = mul nsw i64 %add566, 8
  %cmp568 = icmp slt i64 %mul567, -128
  br i1 %cmp568, label %cond.true.576, label %lor.lhs.false.570

lor.lhs.false.570:                                ; preds = %land.lhs.true.564, %lor.lhs.false.556
  %66 = load i64, i64* %len, align 8
  %mul571 = mul nsw i64 %66, 2
  %add572 = add nsw i64 %mul571, 1
  %mul573 = mul nsw i64 %add572, 8
  %cmp574 = icmp slt i64 127, %mul573
  br i1 %cmp574, label %cond.true.576, label %cond.false.605

cond.true.576:                                    ; preds = %lor.lhs.false.570, %land.lhs.true.564, %cond.end.549, %cond.end.520, %cond.true.477, %cond.end.469, %cond.true.433, %cond.end.427, %land.lhs.true.390
  %67 = load i64, i64* %len, align 8
  %mul577 = mul nsw i64 %67, 2
  %add578 = add nsw i64 %mul577, 1
  %conv579 = trunc i64 %add578 to i8
  %conv580 = zext i8 %conv579 to i32
  %mul581 = mul nsw i32 %conv580, 8
  %cmp582 = icmp sle i32 %mul581, 127
  br i1 %cmp582, label %cond.true.584, label %cond.false.592

cond.true.584:                                    ; preds = %cond.true.576
  %68 = load i64, i64* %len, align 8
  %mul585 = mul nsw i64 %68, 2
  %add586 = add nsw i64 %mul585, 1
  %conv587 = trunc i64 %add586 to i8
  %conv588 = zext i8 %conv587 to i32
  %mul589 = mul nsw i32 %conv588, 8
  %conv590 = trunc i32 %mul589 to i8
  %conv591 = sext i8 %conv590 to i32
  br label %cond.end.602

cond.false.592:                                   ; preds = %cond.true.576
  %69 = load i64, i64* %len, align 8
  %mul593 = mul nsw i64 %69, 2
  %add594 = add nsw i64 %mul593, 1
  %conv595 = trunc i64 %add594 to i8
  %conv596 = zext i8 %conv595 to i32
  %mul597 = mul nsw i32 %conv596, 8
  %sub598 = sub nsw i32 %mul597, -128
  %conv599 = trunc i32 %sub598 to i8
  %conv600 = sext i8 %conv599 to i32
  %add601 = add nsw i32 %conv600, -128
  br label %cond.end.602

cond.end.602:                                     ; preds = %cond.false.592, %cond.true.584
  %cond603 = phi i32 [ %conv591, %cond.true.584 ], [ %add601, %cond.false.592 ]
  %conv604 = sext i32 %cond603 to i64
  store i64 %conv604, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then, label %lor.lhs.false.2867

cond.false.605:                                   ; preds = %lor.lhs.false.570
  %70 = load i64, i64* %len, align 8
  %mul606 = mul nsw i64 %70, 2
  %add607 = add nsw i64 %mul606, 1
  %conv608 = trunc i64 %add607 to i8
  %conv609 = zext i8 %conv608 to i32
  %mul610 = mul nsw i32 %conv609, 8
  %cmp611 = icmp sle i32 %mul610, 127
  br i1 %cmp611, label %cond.true.613, label %cond.false.621

cond.true.613:                                    ; preds = %cond.false.605
  %71 = load i64, i64* %len, align 8
  %mul614 = mul nsw i64 %71, 2
  %add615 = add nsw i64 %mul614, 1
  %conv616 = trunc i64 %add615 to i8
  %conv617 = zext i8 %conv616 to i32
  %mul618 = mul nsw i32 %conv617, 8
  %conv619 = trunc i32 %mul618 to i8
  %conv620 = sext i8 %conv619 to i32
  br label %cond.end.631

cond.false.621:                                   ; preds = %cond.false.605
  %72 = load i64, i64* %len, align 8
  %mul622 = mul nsw i64 %72, 2
  %add623 = add nsw i64 %mul622, 1
  %conv624 = trunc i64 %add623 to i8
  %conv625 = zext i8 %conv624 to i32
  %mul626 = mul nsw i32 %conv625, 8
  %sub627 = sub nsw i32 %mul626, -128
  %conv628 = trunc i32 %sub627 to i8
  %conv629 = sext i8 %conv628 to i32
  %add630 = add nsw i32 %conv629, -128
  br label %cond.end.631

cond.end.631:                                     ; preds = %cond.false.621, %cond.true.613
  %cond632 = phi i32 [ %conv620, %cond.true.613 ], [ %add630, %cond.false.621 ]
  %conv633 = sext i32 %cond632 to i64
  store i64 %conv633, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then, label %lor.lhs.false.2867

cond.false.634:                                   ; preds = %do.body
  br i1 false, label %cond.true.635, label %cond.false.1255

cond.true.635:                                    ; preds = %cond.false.634
  br i1 false, label %cond.true.636, label %cond.false.972

cond.true.636:                                    ; preds = %cond.true.635
  %73 = load i64, i64* %len, align 8
  %mul637 = mul nsw i64 %73, 2
  %add638 = add nsw i64 %mul637, 1
  %conv639 = trunc i64 %add638 to i16
  %conv640 = sext i16 %conv639 to i32
  %add641 = add nsw i32 0, %conv640
  %mul642 = mul nsw i32 0, %add641
  %sub643 = sub nsw i32 %mul642, 1
  %cmp644 = icmp slt i32 %sub643, 0
  br i1 %cmp644, label %cond.true.646, label %cond.false.670

cond.true.646:                                    ; preds = %cond.true.636
  %74 = load i64, i64* %len, align 8
  %mul647 = mul nsw i64 %74, 2
  %add648 = add nsw i64 %mul647, 1
  %conv649 = trunc i64 %add648 to i16
  %conv650 = sext i16 %conv649 to i32
  %add651 = add nsw i32 0, %conv650
  %mul652 = mul nsw i32 0, %add651
  %add653 = add nsw i32 %mul652, 0
  %neg654 = xor i32 %add653, -1
  %cmp655 = icmp eq i32 %neg654, -1
  %conv656 = zext i1 %cmp655 to i32
  %sub657 = sub nsw i32 0, %conv656
  %75 = load i64, i64* %len, align 8
  %mul658 = mul nsw i64 %75, 2
  %add659 = add nsw i64 %mul658, 1
  %conv660 = trunc i64 %add659 to i16
  %conv661 = sext i16 %conv660 to i32
  %add662 = add nsw i32 0, %conv661
  %mul663 = mul nsw i32 0, %add662
  %add664 = add nsw i32 %mul663, 1
  %shl665 = shl i32 %add664, 30
  %sub666 = sub nsw i32 %shl665, 1
  %mul667 = mul nsw i32 %sub666, 2
  %add668 = add nsw i32 %mul667, 1
  %sub669 = sub nsw i32 %sub657, %add668
  br label %cond.end.678

cond.false.670:                                   ; preds = %cond.true.636
  %76 = load i64, i64* %len, align 8
  %mul671 = mul nsw i64 %76, 2
  %add672 = add nsw i64 %mul671, 1
  %conv673 = trunc i64 %add672 to i16
  %conv674 = sext i16 %conv673 to i32
  %add675 = add nsw i32 0, %conv674
  %mul676 = mul nsw i32 0, %add675
  %add677 = add nsw i32 %mul676, 0
  br label %cond.end.678

cond.end.678:                                     ; preds = %cond.false.670, %cond.true.646
  %cond679 = phi i32 [ %sub669, %cond.true.646 ], [ %add677, %cond.false.670 ]
  %cmp680 = icmp eq i32 %cond679, 0
  br i1 %cmp680, label %land.lhs.true.682, label %lor.lhs.false.689

land.lhs.true.682:                                ; preds = %cond.end.678
  %77 = load i64, i64* %len, align 8
  %mul683 = mul nsw i64 %77, 2
  %add684 = add nsw i64 %mul683, 1
  %conv685 = trunc i64 %add684 to i16
  %conv686 = sext i16 %conv685 to i32
  %cmp687 = icmp slt i32 %conv686, 0
  br i1 %cmp687, label %cond.true.914, label %lor.lhs.false.689

lor.lhs.false.689:                                ; preds = %land.lhs.true.682, %cond.end.678
  br i1 false, label %cond.true.690, label %cond.false.789

cond.true.690:                                    ; preds = %lor.lhs.false.689
  %78 = load i64, i64* %len, align 8
  %mul691 = mul nsw i64 %78, 2
  %add692 = add nsw i64 %mul691, 1
  %conv693 = trunc i64 %add692 to i16
  %conv694 = sext i16 %conv693 to i32
  %cmp695 = icmp slt i32 %conv694, 0
  br i1 %cmp695, label %cond.true.697, label %cond.false.736

cond.true.697:                                    ; preds = %cond.true.690
  %79 = load i64, i64* %len, align 8
  %mul698 = mul nsw i64 %79, 2
  %add699 = add nsw i64 %mul698, 1
  %conv700 = trunc i64 %add699 to i16
  %conv701 = sext i16 %conv700 to i32
  %80 = load i64, i64* %len, align 8
  %mul702 = mul nsw i64 %80, 2
  %add703 = add nsw i64 %mul702, 1
  %conv704 = trunc i64 %add703 to i16
  %conv705 = sext i16 %conv704 to i32
  %add706 = add nsw i32 0, %conv705
  %mul707 = mul nsw i32 0, %add706
  %sub708 = sub nsw i32 %mul707, 1
  %cmp709 = icmp slt i32 %sub708, 0
  br i1 %cmp709, label %cond.true.711, label %cond.false.723

cond.true.711:                                    ; preds = %cond.true.697
  %81 = load i64, i64* %len, align 8
  %mul712 = mul nsw i64 %81, 2
  %add713 = add nsw i64 %mul712, 1
  %conv714 = trunc i64 %add713 to i16
  %conv715 = sext i16 %conv714 to i32
  %add716 = add nsw i32 0, %conv715
  %mul717 = mul nsw i32 0, %add716
  %add718 = add nsw i32 %mul717, 1
  %shl719 = shl i32 %add718, 30
  %sub720 = sub nsw i32 %shl719, 1
  %mul721 = mul nsw i32 %sub720, 2
  %add722 = add nsw i32 %mul721, 1
  br label %cond.end.731

cond.false.723:                                   ; preds = %cond.true.697
  %82 = load i64, i64* %len, align 8
  %mul724 = mul nsw i64 %82, 2
  %add725 = add nsw i64 %mul724, 1
  %conv726 = trunc i64 %add725 to i16
  %conv727 = sext i16 %conv726 to i32
  %add728 = add nsw i32 0, %conv727
  %mul729 = mul nsw i32 0, %add728
  %sub730 = sub nsw i32 %mul729, 1
  br label %cond.end.731

cond.end.731:                                     ; preds = %cond.false.723, %cond.true.711
  %cond732 = phi i32 [ %add722, %cond.true.711 ], [ %sub730, %cond.false.723 ]
  %div733 = sdiv i32 %cond732, 8
  %cmp734 = icmp slt i32 %conv701, %div733
  br i1 %cmp734, label %cond.true.914, label %lor.lhs.false.888

cond.false.736:                                   ; preds = %cond.true.690
  br i1 false, label %cond.true.737, label %cond.false.738

cond.true.737:                                    ; preds = %cond.false.736
  br i1 false, label %cond.true.914, label %lor.lhs.false.888

cond.false.738:                                   ; preds = %cond.false.736
  %83 = load i64, i64* %len, align 8
  %mul739 = mul nsw i64 %83, 2
  %add740 = add nsw i64 %mul739, 1
  %conv741 = trunc i64 %add740 to i16
  %conv742 = sext i16 %conv741 to i32
  %add743 = add nsw i32 0, %conv742
  %mul744 = mul nsw i32 0, %add743
  %sub745 = sub nsw i32 %mul744, 1
  %cmp746 = icmp slt i32 %sub745, 0
  br i1 %cmp746, label %cond.true.748, label %cond.false.772

cond.true.748:                                    ; preds = %cond.false.738
  %84 = load i64, i64* %len, align 8
  %mul749 = mul nsw i64 %84, 2
  %add750 = add nsw i64 %mul749, 1
  %conv751 = trunc i64 %add750 to i16
  %conv752 = sext i16 %conv751 to i32
  %add753 = add nsw i32 0, %conv752
  %mul754 = mul nsw i32 0, %add753
  %add755 = add nsw i32 %mul754, 0
  %neg756 = xor i32 %add755, -1
  %cmp757 = icmp eq i32 %neg756, -1
  %conv758 = zext i1 %cmp757 to i32
  %sub759 = sub nsw i32 0, %conv758
  %85 = load i64, i64* %len, align 8
  %mul760 = mul nsw i64 %85, 2
  %add761 = add nsw i64 %mul760, 1
  %conv762 = trunc i64 %add761 to i16
  %conv763 = sext i16 %conv762 to i32
  %add764 = add nsw i32 0, %conv763
  %mul765 = mul nsw i32 0, %add764
  %add766 = add nsw i32 %mul765, 1
  %shl767 = shl i32 %add766, 30
  %sub768 = sub nsw i32 %shl767, 1
  %mul769 = mul nsw i32 %sub768, 2
  %add770 = add nsw i32 %mul769, 1
  %sub771 = sub nsw i32 %sub759, %add770
  br label %cond.end.780

cond.false.772:                                   ; preds = %cond.false.738
  %86 = load i64, i64* %len, align 8
  %mul773 = mul nsw i64 %86, 2
  %add774 = add nsw i64 %mul773, 1
  %conv775 = trunc i64 %add774 to i16
  %conv776 = sext i16 %conv775 to i32
  %add777 = add nsw i32 0, %conv776
  %mul778 = mul nsw i32 0, %add777
  %add779 = add nsw i32 %mul778, 0
  br label %cond.end.780

cond.end.780:                                     ; preds = %cond.false.772, %cond.true.748
  %cond781 = phi i32 [ %sub771, %cond.true.748 ], [ %add779, %cond.false.772 ]
  %div782 = sdiv i32 %cond781, 8
  %87 = load i64, i64* %len, align 8
  %mul783 = mul nsw i64 %87, 2
  %add784 = add nsw i64 %mul783, 1
  %conv785 = trunc i64 %add784 to i16
  %conv786 = sext i16 %conv785 to i32
  %cmp787 = icmp slt i32 %div782, %conv786
  br i1 %cmp787, label %cond.true.914, label %lor.lhs.false.888

cond.false.789:                                   ; preds = %lor.lhs.false.689
  br i1 false, label %cond.true.790, label %cond.false.791

cond.true.790:                                    ; preds = %cond.false.789
  br i1 false, label %cond.true.914, label %lor.lhs.false.888

cond.false.791:                                   ; preds = %cond.false.789
  %88 = load i64, i64* %len, align 8
  %mul792 = mul nsw i64 %88, 2
  %add793 = add nsw i64 %mul792, 1
  %conv794 = trunc i64 %add793 to i16
  %conv795 = sext i16 %conv794 to i32
  %cmp796 = icmp slt i32 %conv795, 0
  br i1 %cmp796, label %cond.true.798, label %cond.false.849

cond.true.798:                                    ; preds = %cond.false.791
  %89 = load i64, i64* %len, align 8
  %mul799 = mul nsw i64 %89, 2
  %add800 = add nsw i64 %mul799, 1
  %conv801 = trunc i64 %add800 to i16
  %conv802 = sext i16 %conv801 to i32
  %90 = load i64, i64* %len, align 8
  %mul803 = mul nsw i64 %90, 2
  %add804 = add nsw i64 %mul803, 1
  %conv805 = trunc i64 %add804 to i16
  %conv806 = sext i16 %conv805 to i32
  %add807 = add nsw i32 0, %conv806
  %mul808 = mul nsw i32 0, %add807
  %sub809 = sub nsw i32 %mul808, 1
  %cmp810 = icmp slt i32 %sub809, 0
  br i1 %cmp810, label %cond.true.812, label %cond.false.836

cond.true.812:                                    ; preds = %cond.true.798
  %91 = load i64, i64* %len, align 8
  %mul813 = mul nsw i64 %91, 2
  %add814 = add nsw i64 %mul813, 1
  %conv815 = trunc i64 %add814 to i16
  %conv816 = sext i16 %conv815 to i32
  %add817 = add nsw i32 0, %conv816
  %mul818 = mul nsw i32 0, %add817
  %add819 = add nsw i32 %mul818, 0
  %neg820 = xor i32 %add819, -1
  %cmp821 = icmp eq i32 %neg820, -1
  %conv822 = zext i1 %cmp821 to i32
  %sub823 = sub nsw i32 0, %conv822
  %92 = load i64, i64* %len, align 8
  %mul824 = mul nsw i64 %92, 2
  %add825 = add nsw i64 %mul824, 1
  %conv826 = trunc i64 %add825 to i16
  %conv827 = sext i16 %conv826 to i32
  %add828 = add nsw i32 0, %conv827
  %mul829 = mul nsw i32 0, %add828
  %add830 = add nsw i32 %mul829, 1
  %shl831 = shl i32 %add830, 30
  %sub832 = sub nsw i32 %shl831, 1
  %mul833 = mul nsw i32 %sub832, 2
  %add834 = add nsw i32 %mul833, 1
  %sub835 = sub nsw i32 %sub823, %add834
  br label %cond.end.844

cond.false.836:                                   ; preds = %cond.true.798
  %93 = load i64, i64* %len, align 8
  %mul837 = mul nsw i64 %93, 2
  %add838 = add nsw i64 %mul837, 1
  %conv839 = trunc i64 %add838 to i16
  %conv840 = sext i16 %conv839 to i32
  %add841 = add nsw i32 0, %conv840
  %mul842 = mul nsw i32 0, %add841
  %add843 = add nsw i32 %mul842, 0
  br label %cond.end.844

cond.end.844:                                     ; preds = %cond.false.836, %cond.true.812
  %cond845 = phi i32 [ %sub835, %cond.true.812 ], [ %add843, %cond.false.836 ]
  %div846 = sdiv i32 %cond845, 8
  %cmp847 = icmp slt i32 %conv802, %div846
  br i1 %cmp847, label %cond.true.914, label %lor.lhs.false.888

cond.false.849:                                   ; preds = %cond.false.791
  %94 = load i64, i64* %len, align 8
  %mul850 = mul nsw i64 %94, 2
  %add851 = add nsw i64 %mul850, 1
  %conv852 = trunc i64 %add851 to i16
  %conv853 = sext i16 %conv852 to i32
  %add854 = add nsw i32 0, %conv853
  %mul855 = mul nsw i32 0, %add854
  %sub856 = sub nsw i32 %mul855, 1
  %cmp857 = icmp slt i32 %sub856, 0
  br i1 %cmp857, label %cond.true.859, label %cond.false.871

cond.true.859:                                    ; preds = %cond.false.849
  %95 = load i64, i64* %len, align 8
  %mul860 = mul nsw i64 %95, 2
  %add861 = add nsw i64 %mul860, 1
  %conv862 = trunc i64 %add861 to i16
  %conv863 = sext i16 %conv862 to i32
  %add864 = add nsw i32 0, %conv863
  %mul865 = mul nsw i32 0, %add864
  %add866 = add nsw i32 %mul865, 1
  %shl867 = shl i32 %add866, 30
  %sub868 = sub nsw i32 %shl867, 1
  %mul869 = mul nsw i32 %sub868, 2
  %add870 = add nsw i32 %mul869, 1
  br label %cond.end.879

cond.false.871:                                   ; preds = %cond.false.849
  %96 = load i64, i64* %len, align 8
  %mul872 = mul nsw i64 %96, 2
  %add873 = add nsw i64 %mul872, 1
  %conv874 = trunc i64 %add873 to i16
  %conv875 = sext i16 %conv874 to i32
  %add876 = add nsw i32 0, %conv875
  %mul877 = mul nsw i32 0, %add876
  %sub878 = sub nsw i32 %mul877, 1
  br label %cond.end.879

cond.end.879:                                     ; preds = %cond.false.871, %cond.true.859
  %cond880 = phi i32 [ %add870, %cond.true.859 ], [ %sub878, %cond.false.871 ]
  %div881 = sdiv i32 %cond880, 8
  %97 = load i64, i64* %len, align 8
  %mul882 = mul nsw i64 %97, 2
  %add883 = add nsw i64 %mul882, 1
  %conv884 = trunc i64 %add883 to i16
  %conv885 = sext i16 %conv884 to i32
  %cmp886 = icmp slt i32 %div881, %conv885
  br i1 %cmp886, label %cond.true.914, label %lor.lhs.false.888

lor.lhs.false.888:                                ; preds = %cond.end.879, %cond.end.844, %cond.true.790, %cond.end.780, %cond.true.737, %cond.end.731
  %98 = load i64, i64* %len, align 8
  %mul889 = mul nsw i64 %98, 2
  %add890 = add nsw i64 %mul889, 1
  %conv891 = trunc i64 %add890 to i16
  %conv892 = sext i16 %conv891 to i32
  %mul893 = mul nsw i32 %conv892, 8
  %mul894 = mul nsw i32 0, %mul893
  %sub895 = sub nsw i32 %mul894, 1
  %cmp896 = icmp slt i32 %sub895, 0
  br i1 %cmp896, label %land.lhs.true.898, label %lor.lhs.false.906

land.lhs.true.898:                                ; preds = %lor.lhs.false.888
  %99 = load i64, i64* %len, align 8
  %mul899 = mul nsw i64 %99, 2
  %add900 = add nsw i64 %mul899, 1
  %conv901 = trunc i64 %add900 to i16
  %conv902 = sext i16 %conv901 to i32
  %mul903 = mul nsw i32 %conv902, 8
  %cmp904 = icmp slt i32 %mul903, -32768
  br i1 %cmp904, label %cond.true.914, label %lor.lhs.false.906

lor.lhs.false.906:                                ; preds = %land.lhs.true.898, %lor.lhs.false.888
  %100 = load i64, i64* %len, align 8
  %mul907 = mul nsw i64 %100, 2
  %add908 = add nsw i64 %mul907, 1
  %conv909 = trunc i64 %add908 to i16
  %conv910 = sext i16 %conv909 to i32
  %mul911 = mul nsw i32 %conv910, 8
  %cmp912 = icmp slt i32 32767, %mul911
  br i1 %cmp912, label %cond.true.914, label %cond.false.943

cond.true.914:                                    ; preds = %lor.lhs.false.906, %land.lhs.true.898, %cond.end.879, %cond.end.844, %cond.true.790, %cond.end.780, %cond.true.737, %cond.end.731, %land.lhs.true.682
  %101 = load i64, i64* %len, align 8
  %mul915 = mul nsw i64 %101, 2
  %add916 = add nsw i64 %mul915, 1
  %conv917 = trunc i64 %add916 to i16
  %conv918 = zext i16 %conv917 to i32
  %mul919 = mul nsw i32 %conv918, 8
  %cmp920 = icmp sle i32 %mul919, 32767
  br i1 %cmp920, label %cond.true.922, label %cond.false.930

cond.true.922:                                    ; preds = %cond.true.914
  %102 = load i64, i64* %len, align 8
  %mul923 = mul nsw i64 %102, 2
  %add924 = add nsw i64 %mul923, 1
  %conv925 = trunc i64 %add924 to i16
  %conv926 = zext i16 %conv925 to i32
  %mul927 = mul nsw i32 %conv926, 8
  %conv928 = trunc i32 %mul927 to i16
  %conv929 = sext i16 %conv928 to i32
  br label %cond.end.940

cond.false.930:                                   ; preds = %cond.true.914
  %103 = load i64, i64* %len, align 8
  %mul931 = mul nsw i64 %103, 2
  %add932 = add nsw i64 %mul931, 1
  %conv933 = trunc i64 %add932 to i16
  %conv934 = zext i16 %conv933 to i32
  %mul935 = mul nsw i32 %conv934, 8
  %sub936 = sub nsw i32 %mul935, -32768
  %conv937 = trunc i32 %sub936 to i16
  %conv938 = sext i16 %conv937 to i32
  %add939 = add nsw i32 %conv938, -32768
  br label %cond.end.940

cond.end.940:                                     ; preds = %cond.false.930, %cond.true.922
  %cond941 = phi i32 [ %conv929, %cond.true.922 ], [ %add939, %cond.false.930 ]
  %conv942 = sext i32 %cond941 to i64
  store i64 %conv942, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then, label %lor.lhs.false.2867

cond.false.943:                                   ; preds = %lor.lhs.false.906
  %104 = load i64, i64* %len, align 8
  %mul944 = mul nsw i64 %104, 2
  %add945 = add nsw i64 %mul944, 1
  %conv946 = trunc i64 %add945 to i16
  %conv947 = zext i16 %conv946 to i32
  %mul948 = mul nsw i32 %conv947, 8
  %cmp949 = icmp sle i32 %mul948, 32767
  br i1 %cmp949, label %cond.true.951, label %cond.false.959

cond.true.951:                                    ; preds = %cond.false.943
  %105 = load i64, i64* %len, align 8
  %mul952 = mul nsw i64 %105, 2
  %add953 = add nsw i64 %mul952, 1
  %conv954 = trunc i64 %add953 to i16
  %conv955 = zext i16 %conv954 to i32
  %mul956 = mul nsw i32 %conv955, 8
  %conv957 = trunc i32 %mul956 to i16
  %conv958 = sext i16 %conv957 to i32
  br label %cond.end.969

cond.false.959:                                   ; preds = %cond.false.943
  %106 = load i64, i64* %len, align 8
  %mul960 = mul nsw i64 %106, 2
  %add961 = add nsw i64 %mul960, 1
  %conv962 = trunc i64 %add961 to i16
  %conv963 = zext i16 %conv962 to i32
  %mul964 = mul nsw i32 %conv963, 8
  %sub965 = sub nsw i32 %mul964, -32768
  %conv966 = trunc i32 %sub965 to i16
  %conv967 = sext i16 %conv966 to i32
  %add968 = add nsw i32 %conv967, -32768
  br label %cond.end.969

cond.end.969:                                     ; preds = %cond.false.959, %cond.true.951
  %cond970 = phi i32 [ %conv958, %cond.true.951 ], [ %add968, %cond.false.959 ]
  %conv971 = sext i32 %cond970 to i64
  store i64 %conv971, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then, label %lor.lhs.false.2867

cond.false.972:                                   ; preds = %cond.true.635
  %107 = load i64, i64* %len, align 8
  %mul973 = mul nsw i64 %107, 2
  %add974 = add nsw i64 %mul973, 1
  %add975 = add nsw i64 0, %add974
  %mul976 = mul nsw i64 0, %add975
  %sub977 = sub nsw i64 %mul976, 1
  %cmp978 = icmp slt i64 %sub977, 0
  br i1 %cmp978, label %cond.true.980, label %cond.false.1001

cond.true.980:                                    ; preds = %cond.false.972
  %108 = load i64, i64* %len, align 8
  %mul981 = mul nsw i64 %108, 2
  %add982 = add nsw i64 %mul981, 1
  %add983 = add nsw i64 0, %add982
  %mul984 = mul nsw i64 0, %add983
  %add985 = add nsw i64 %mul984, 0
  %neg986 = xor i64 %add985, -1
  %cmp987 = icmp eq i64 %neg986, -1
  %conv988 = zext i1 %cmp987 to i32
  %sub989 = sub nsw i32 0, %conv988
  %conv990 = sext i32 %sub989 to i64
  %109 = load i64, i64* %len, align 8
  %mul991 = mul nsw i64 %109, 2
  %add992 = add nsw i64 %mul991, 1
  %add993 = add nsw i64 0, %add992
  %mul994 = mul nsw i64 0, %add993
  %add995 = add nsw i64 %mul994, 1
  %shl996 = shl i64 %add995, 62
  %sub997 = sub nsw i64 %shl996, 1
  %mul998 = mul nsw i64 %sub997, 2
  %add999 = add nsw i64 %mul998, 1
  %sub1000 = sub nsw i64 %conv990, %add999
  br label %cond.end.1007

cond.false.1001:                                  ; preds = %cond.false.972
  %110 = load i64, i64* %len, align 8
  %mul1002 = mul nsw i64 %110, 2
  %add1003 = add nsw i64 %mul1002, 1
  %add1004 = add nsw i64 0, %add1003
  %mul1005 = mul nsw i64 0, %add1004
  %add1006 = add nsw i64 %mul1005, 0
  br label %cond.end.1007

cond.end.1007:                                    ; preds = %cond.false.1001, %cond.true.980
  %cond1008 = phi i64 [ %sub1000, %cond.true.980 ], [ %add1006, %cond.false.1001 ]
  %cmp1009 = icmp eq i64 %cond1008, 0
  br i1 %cmp1009, label %land.lhs.true.1011, label %lor.lhs.false.1016

land.lhs.true.1011:                               ; preds = %cond.end.1007
  %111 = load i64, i64* %len, align 8
  %mul1012 = mul nsw i64 %111, 2
  %add1013 = add nsw i64 %mul1012, 1
  %cmp1014 = icmp slt i64 %add1013, 0
  br i1 %cmp1014, label %cond.true.1197, label %lor.lhs.false.1016

lor.lhs.false.1016:                               ; preds = %land.lhs.true.1011, %cond.end.1007
  br i1 false, label %cond.true.1017, label %cond.false.1097

cond.true.1017:                                   ; preds = %lor.lhs.false.1016
  %112 = load i64, i64* %len, align 8
  %mul1018 = mul nsw i64 %112, 2
  %add1019 = add nsw i64 %mul1018, 1
  %cmp1020 = icmp slt i64 %add1019, 0
  br i1 %cmp1020, label %cond.true.1022, label %cond.false.1053

cond.true.1022:                                   ; preds = %cond.true.1017
  %113 = load i64, i64* %len, align 8
  %mul1023 = mul nsw i64 %113, 2
  %add1024 = add nsw i64 %mul1023, 1
  %114 = load i64, i64* %len, align 8
  %mul1025 = mul nsw i64 %114, 2
  %add1026 = add nsw i64 %mul1025, 1
  %add1027 = add nsw i64 0, %add1026
  %mul1028 = mul nsw i64 0, %add1027
  %sub1029 = sub nsw i64 %mul1028, 1
  %cmp1030 = icmp slt i64 %sub1029, 0
  br i1 %cmp1030, label %cond.true.1032, label %cond.false.1042

cond.true.1032:                                   ; preds = %cond.true.1022
  %115 = load i64, i64* %len, align 8
  %mul1033 = mul nsw i64 %115, 2
  %add1034 = add nsw i64 %mul1033, 1
  %add1035 = add nsw i64 0, %add1034
  %mul1036 = mul nsw i64 0, %add1035
  %add1037 = add nsw i64 %mul1036, 1
  %shl1038 = shl i64 %add1037, 62
  %sub1039 = sub nsw i64 %shl1038, 1
  %mul1040 = mul nsw i64 %sub1039, 2
  %add1041 = add nsw i64 %mul1040, 1
  br label %cond.end.1048

cond.false.1042:                                  ; preds = %cond.true.1022
  %116 = load i64, i64* %len, align 8
  %mul1043 = mul nsw i64 %116, 2
  %add1044 = add nsw i64 %mul1043, 1
  %add1045 = add nsw i64 0, %add1044
  %mul1046 = mul nsw i64 0, %add1045
  %sub1047 = sub nsw i64 %mul1046, 1
  br label %cond.end.1048

cond.end.1048:                                    ; preds = %cond.false.1042, %cond.true.1032
  %cond1049 = phi i64 [ %add1041, %cond.true.1032 ], [ %sub1047, %cond.false.1042 ]
  %div1050 = sdiv i64 %cond1049, 8
  %cmp1051 = icmp slt i64 %add1024, %div1050
  br i1 %cmp1051, label %cond.true.1197, label %lor.lhs.false.1177

cond.false.1053:                                  ; preds = %cond.true.1017
  br i1 false, label %cond.true.1054, label %cond.false.1055

cond.true.1054:                                   ; preds = %cond.false.1053
  br i1 false, label %cond.true.1197, label %lor.lhs.false.1177

cond.false.1055:                                  ; preds = %cond.false.1053
  %117 = load i64, i64* %len, align 8
  %mul1056 = mul nsw i64 %117, 2
  %add1057 = add nsw i64 %mul1056, 1
  %add1058 = add nsw i64 0, %add1057
  %mul1059 = mul nsw i64 0, %add1058
  %sub1060 = sub nsw i64 %mul1059, 1
  %cmp1061 = icmp slt i64 %sub1060, 0
  br i1 %cmp1061, label %cond.true.1063, label %cond.false.1084

cond.true.1063:                                   ; preds = %cond.false.1055
  %118 = load i64, i64* %len, align 8
  %mul1064 = mul nsw i64 %118, 2
  %add1065 = add nsw i64 %mul1064, 1
  %add1066 = add nsw i64 0, %add1065
  %mul1067 = mul nsw i64 0, %add1066
  %add1068 = add nsw i64 %mul1067, 0
  %neg1069 = xor i64 %add1068, -1
  %cmp1070 = icmp eq i64 %neg1069, -1
  %conv1071 = zext i1 %cmp1070 to i32
  %sub1072 = sub nsw i32 0, %conv1071
  %conv1073 = sext i32 %sub1072 to i64
  %119 = load i64, i64* %len, align 8
  %mul1074 = mul nsw i64 %119, 2
  %add1075 = add nsw i64 %mul1074, 1
  %add1076 = add nsw i64 0, %add1075
  %mul1077 = mul nsw i64 0, %add1076
  %add1078 = add nsw i64 %mul1077, 1
  %shl1079 = shl i64 %add1078, 62
  %sub1080 = sub nsw i64 %shl1079, 1
  %mul1081 = mul nsw i64 %sub1080, 2
  %add1082 = add nsw i64 %mul1081, 1
  %sub1083 = sub nsw i64 %conv1073, %add1082
  br label %cond.end.1090

cond.false.1084:                                  ; preds = %cond.false.1055
  %120 = load i64, i64* %len, align 8
  %mul1085 = mul nsw i64 %120, 2
  %add1086 = add nsw i64 %mul1085, 1
  %add1087 = add nsw i64 0, %add1086
  %mul1088 = mul nsw i64 0, %add1087
  %add1089 = add nsw i64 %mul1088, 0
  br label %cond.end.1090

cond.end.1090:                                    ; preds = %cond.false.1084, %cond.true.1063
  %cond1091 = phi i64 [ %sub1083, %cond.true.1063 ], [ %add1089, %cond.false.1084 ]
  %div1092 = sdiv i64 %cond1091, 8
  %121 = load i64, i64* %len, align 8
  %mul1093 = mul nsw i64 %121, 2
  %add1094 = add nsw i64 %mul1093, 1
  %cmp1095 = icmp slt i64 %div1092, %add1094
  br i1 %cmp1095, label %cond.true.1197, label %lor.lhs.false.1177

cond.false.1097:                                  ; preds = %lor.lhs.false.1016
  br i1 false, label %cond.true.1098, label %cond.false.1099

cond.true.1098:                                   ; preds = %cond.false.1097
  br i1 false, label %cond.true.1197, label %lor.lhs.false.1177

cond.false.1099:                                  ; preds = %cond.false.1097
  %122 = load i64, i64* %len, align 8
  %mul1100 = mul nsw i64 %122, 2
  %add1101 = add nsw i64 %mul1100, 1
  %cmp1102 = icmp slt i64 %add1101, 0
  br i1 %cmp1102, label %cond.true.1104, label %cond.false.1146

cond.true.1104:                                   ; preds = %cond.false.1099
  %123 = load i64, i64* %len, align 8
  %mul1105 = mul nsw i64 %123, 2
  %add1106 = add nsw i64 %mul1105, 1
  %124 = load i64, i64* %len, align 8
  %mul1107 = mul nsw i64 %124, 2
  %add1108 = add nsw i64 %mul1107, 1
  %add1109 = add nsw i64 0, %add1108
  %mul1110 = mul nsw i64 0, %add1109
  %sub1111 = sub nsw i64 %mul1110, 1
  %cmp1112 = icmp slt i64 %sub1111, 0
  br i1 %cmp1112, label %cond.true.1114, label %cond.false.1135

cond.true.1114:                                   ; preds = %cond.true.1104
  %125 = load i64, i64* %len, align 8
  %mul1115 = mul nsw i64 %125, 2
  %add1116 = add nsw i64 %mul1115, 1
  %add1117 = add nsw i64 0, %add1116
  %mul1118 = mul nsw i64 0, %add1117
  %add1119 = add nsw i64 %mul1118, 0
  %neg1120 = xor i64 %add1119, -1
  %cmp1121 = icmp eq i64 %neg1120, -1
  %conv1122 = zext i1 %cmp1121 to i32
  %sub1123 = sub nsw i32 0, %conv1122
  %conv1124 = sext i32 %sub1123 to i64
  %126 = load i64, i64* %len, align 8
  %mul1125 = mul nsw i64 %126, 2
  %add1126 = add nsw i64 %mul1125, 1
  %add1127 = add nsw i64 0, %add1126
  %mul1128 = mul nsw i64 0, %add1127
  %add1129 = add nsw i64 %mul1128, 1
  %shl1130 = shl i64 %add1129, 62
  %sub1131 = sub nsw i64 %shl1130, 1
  %mul1132 = mul nsw i64 %sub1131, 2
  %add1133 = add nsw i64 %mul1132, 1
  %sub1134 = sub nsw i64 %conv1124, %add1133
  br label %cond.end.1141

cond.false.1135:                                  ; preds = %cond.true.1104
  %127 = load i64, i64* %len, align 8
  %mul1136 = mul nsw i64 %127, 2
  %add1137 = add nsw i64 %mul1136, 1
  %add1138 = add nsw i64 0, %add1137
  %mul1139 = mul nsw i64 0, %add1138
  %add1140 = add nsw i64 %mul1139, 0
  br label %cond.end.1141

cond.end.1141:                                    ; preds = %cond.false.1135, %cond.true.1114
  %cond1142 = phi i64 [ %sub1134, %cond.true.1114 ], [ %add1140, %cond.false.1135 ]
  %div1143 = sdiv i64 %cond1142, 8
  %cmp1144 = icmp slt i64 %add1106, %div1143
  br i1 %cmp1144, label %cond.true.1197, label %lor.lhs.false.1177

cond.false.1146:                                  ; preds = %cond.false.1099
  %128 = load i64, i64* %len, align 8
  %mul1147 = mul nsw i64 %128, 2
  %add1148 = add nsw i64 %mul1147, 1
  %add1149 = add nsw i64 0, %add1148
  %mul1150 = mul nsw i64 0, %add1149
  %sub1151 = sub nsw i64 %mul1150, 1
  %cmp1152 = icmp slt i64 %sub1151, 0
  br i1 %cmp1152, label %cond.true.1154, label %cond.false.1164

cond.true.1154:                                   ; preds = %cond.false.1146
  %129 = load i64, i64* %len, align 8
  %mul1155 = mul nsw i64 %129, 2
  %add1156 = add nsw i64 %mul1155, 1
  %add1157 = add nsw i64 0, %add1156
  %mul1158 = mul nsw i64 0, %add1157
  %add1159 = add nsw i64 %mul1158, 1
  %shl1160 = shl i64 %add1159, 62
  %sub1161 = sub nsw i64 %shl1160, 1
  %mul1162 = mul nsw i64 %sub1161, 2
  %add1163 = add nsw i64 %mul1162, 1
  br label %cond.end.1170

cond.false.1164:                                  ; preds = %cond.false.1146
  %130 = load i64, i64* %len, align 8
  %mul1165 = mul nsw i64 %130, 2
  %add1166 = add nsw i64 %mul1165, 1
  %add1167 = add nsw i64 0, %add1166
  %mul1168 = mul nsw i64 0, %add1167
  %sub1169 = sub nsw i64 %mul1168, 1
  br label %cond.end.1170

cond.end.1170:                                    ; preds = %cond.false.1164, %cond.true.1154
  %cond1171 = phi i64 [ %add1163, %cond.true.1154 ], [ %sub1169, %cond.false.1164 ]
  %div1172 = sdiv i64 %cond1171, 8
  %131 = load i64, i64* %len, align 8
  %mul1173 = mul nsw i64 %131, 2
  %add1174 = add nsw i64 %mul1173, 1
  %cmp1175 = icmp slt i64 %div1172, %add1174
  br i1 %cmp1175, label %cond.true.1197, label %lor.lhs.false.1177

lor.lhs.false.1177:                               ; preds = %cond.end.1170, %cond.end.1141, %cond.true.1098, %cond.end.1090, %cond.true.1054, %cond.end.1048
  %132 = load i64, i64* %len, align 8
  %mul1178 = mul nsw i64 %132, 2
  %add1179 = add nsw i64 %mul1178, 1
  %mul1180 = mul nsw i64 %add1179, 8
  %mul1181 = mul nsw i64 0, %mul1180
  %sub1182 = sub nsw i64 %mul1181, 1
  %cmp1183 = icmp slt i64 %sub1182, 0
  br i1 %cmp1183, label %land.lhs.true.1185, label %lor.lhs.false.1191

land.lhs.true.1185:                               ; preds = %lor.lhs.false.1177
  %133 = load i64, i64* %len, align 8
  %mul1186 = mul nsw i64 %133, 2
  %add1187 = add nsw i64 %mul1186, 1
  %mul1188 = mul nsw i64 %add1187, 8
  %cmp1189 = icmp slt i64 %mul1188, -32768
  br i1 %cmp1189, label %cond.true.1197, label %lor.lhs.false.1191

lor.lhs.false.1191:                               ; preds = %land.lhs.true.1185, %lor.lhs.false.1177
  %134 = load i64, i64* %len, align 8
  %mul1192 = mul nsw i64 %134, 2
  %add1193 = add nsw i64 %mul1192, 1
  %mul1194 = mul nsw i64 %add1193, 8
  %cmp1195 = icmp slt i64 32767, %mul1194
  br i1 %cmp1195, label %cond.true.1197, label %cond.false.1226

cond.true.1197:                                   ; preds = %lor.lhs.false.1191, %land.lhs.true.1185, %cond.end.1170, %cond.end.1141, %cond.true.1098, %cond.end.1090, %cond.true.1054, %cond.end.1048, %land.lhs.true.1011
  %135 = load i64, i64* %len, align 8
  %mul1198 = mul nsw i64 %135, 2
  %add1199 = add nsw i64 %mul1198, 1
  %conv1200 = trunc i64 %add1199 to i16
  %conv1201 = zext i16 %conv1200 to i32
  %mul1202 = mul nsw i32 %conv1201, 8
  %cmp1203 = icmp sle i32 %mul1202, 32767
  br i1 %cmp1203, label %cond.true.1205, label %cond.false.1213

cond.true.1205:                                   ; preds = %cond.true.1197
  %136 = load i64, i64* %len, align 8
  %mul1206 = mul nsw i64 %136, 2
  %add1207 = add nsw i64 %mul1206, 1
  %conv1208 = trunc i64 %add1207 to i16
  %conv1209 = zext i16 %conv1208 to i32
  %mul1210 = mul nsw i32 %conv1209, 8
  %conv1211 = trunc i32 %mul1210 to i16
  %conv1212 = sext i16 %conv1211 to i32
  br label %cond.end.1223

cond.false.1213:                                  ; preds = %cond.true.1197
  %137 = load i64, i64* %len, align 8
  %mul1214 = mul nsw i64 %137, 2
  %add1215 = add nsw i64 %mul1214, 1
  %conv1216 = trunc i64 %add1215 to i16
  %conv1217 = zext i16 %conv1216 to i32
  %mul1218 = mul nsw i32 %conv1217, 8
  %sub1219 = sub nsw i32 %mul1218, -32768
  %conv1220 = trunc i32 %sub1219 to i16
  %conv1221 = sext i16 %conv1220 to i32
  %add1222 = add nsw i32 %conv1221, -32768
  br label %cond.end.1223

cond.end.1223:                                    ; preds = %cond.false.1213, %cond.true.1205
  %cond1224 = phi i32 [ %conv1212, %cond.true.1205 ], [ %add1222, %cond.false.1213 ]
  %conv1225 = sext i32 %cond1224 to i64
  store i64 %conv1225, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then, label %lor.lhs.false.2867

cond.false.1226:                                  ; preds = %lor.lhs.false.1191
  %138 = load i64, i64* %len, align 8
  %mul1227 = mul nsw i64 %138, 2
  %add1228 = add nsw i64 %mul1227, 1
  %conv1229 = trunc i64 %add1228 to i16
  %conv1230 = zext i16 %conv1229 to i32
  %mul1231 = mul nsw i32 %conv1230, 8
  %cmp1232 = icmp sle i32 %mul1231, 32767
  br i1 %cmp1232, label %cond.true.1234, label %cond.false.1242

cond.true.1234:                                   ; preds = %cond.false.1226
  %139 = load i64, i64* %len, align 8
  %mul1235 = mul nsw i64 %139, 2
  %add1236 = add nsw i64 %mul1235, 1
  %conv1237 = trunc i64 %add1236 to i16
  %conv1238 = zext i16 %conv1237 to i32
  %mul1239 = mul nsw i32 %conv1238, 8
  %conv1240 = trunc i32 %mul1239 to i16
  %conv1241 = sext i16 %conv1240 to i32
  br label %cond.end.1252

cond.false.1242:                                  ; preds = %cond.false.1226
  %140 = load i64, i64* %len, align 8
  %mul1243 = mul nsw i64 %140, 2
  %add1244 = add nsw i64 %mul1243, 1
  %conv1245 = trunc i64 %add1244 to i16
  %conv1246 = zext i16 %conv1245 to i32
  %mul1247 = mul nsw i32 %conv1246, 8
  %sub1248 = sub nsw i32 %mul1247, -32768
  %conv1249 = trunc i32 %sub1248 to i16
  %conv1250 = sext i16 %conv1249 to i32
  %add1251 = add nsw i32 %conv1250, -32768
  br label %cond.end.1252

cond.end.1252:                                    ; preds = %cond.false.1242, %cond.true.1234
  %cond1253 = phi i32 [ %conv1241, %cond.true.1234 ], [ %add1251, %cond.false.1242 ]
  %conv1254 = sext i32 %cond1253 to i64
  store i64 %conv1254, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then, label %lor.lhs.false.2867

cond.false.1255:                                  ; preds = %cond.false.634
  br i1 false, label %cond.true.1256, label %cond.false.1820

cond.true.1256:                                   ; preds = %cond.false.1255
  br i1 false, label %cond.true.1257, label %cond.false.1551

cond.true.1257:                                   ; preds = %cond.true.1256
  %141 = load i64, i64* %len, align 8
  %mul1258 = mul nsw i64 %141, 2
  %add1259 = add nsw i64 %mul1258, 1
  %conv1260 = trunc i64 %add1259 to i32
  %add1261 = add nsw i32 0, %conv1260
  %mul1262 = mul nsw i32 0, %add1261
  %sub1263 = sub nsw i32 %mul1262, 1
  %cmp1264 = icmp slt i32 %sub1263, 0
  br i1 %cmp1264, label %cond.true.1266, label %cond.false.1288

cond.true.1266:                                   ; preds = %cond.true.1257
  %142 = load i64, i64* %len, align 8
  %mul1267 = mul nsw i64 %142, 2
  %add1268 = add nsw i64 %mul1267, 1
  %conv1269 = trunc i64 %add1268 to i32
  %add1270 = add nsw i32 0, %conv1269
  %mul1271 = mul nsw i32 0, %add1270
  %add1272 = add nsw i32 %mul1271, 0
  %neg1273 = xor i32 %add1272, -1
  %cmp1274 = icmp eq i32 %neg1273, -1
  %conv1275 = zext i1 %cmp1274 to i32
  %sub1276 = sub nsw i32 0, %conv1275
  %143 = load i64, i64* %len, align 8
  %mul1277 = mul nsw i64 %143, 2
  %add1278 = add nsw i64 %mul1277, 1
  %conv1279 = trunc i64 %add1278 to i32
  %add1280 = add nsw i32 0, %conv1279
  %mul1281 = mul nsw i32 0, %add1280
  %add1282 = add nsw i32 %mul1281, 1
  %shl1283 = shl i32 %add1282, 30
  %sub1284 = sub nsw i32 %shl1283, 1
  %mul1285 = mul nsw i32 %sub1284, 2
  %add1286 = add nsw i32 %mul1285, 1
  %sub1287 = sub nsw i32 %sub1276, %add1286
  br label %cond.end.1295

cond.false.1288:                                  ; preds = %cond.true.1257
  %144 = load i64, i64* %len, align 8
  %mul1289 = mul nsw i64 %144, 2
  %add1290 = add nsw i64 %mul1289, 1
  %conv1291 = trunc i64 %add1290 to i32
  %add1292 = add nsw i32 0, %conv1291
  %mul1293 = mul nsw i32 0, %add1292
  %add1294 = add nsw i32 %mul1293, 0
  br label %cond.end.1295

cond.end.1295:                                    ; preds = %cond.false.1288, %cond.true.1266
  %cond1296 = phi i32 [ %sub1287, %cond.true.1266 ], [ %add1294, %cond.false.1288 ]
  %cmp1297 = icmp eq i32 %cond1296, 0
  br i1 %cmp1297, label %land.lhs.true.1299, label %lor.lhs.false.1305

land.lhs.true.1299:                               ; preds = %cond.end.1295
  %145 = load i64, i64* %len, align 8
  %mul1300 = mul nsw i64 %145, 2
  %add1301 = add nsw i64 %mul1300, 1
  %conv1302 = trunc i64 %add1301 to i32
  %cmp1303 = icmp slt i32 %conv1302, 0
  br i1 %cmp1303, label %cond.true.1507, label %lor.lhs.false.1305

lor.lhs.false.1305:                               ; preds = %land.lhs.true.1299, %cond.end.1295
  br i1 false, label %cond.true.1306, label %cond.false.1395

cond.true.1306:                                   ; preds = %lor.lhs.false.1305
  %146 = load i64, i64* %len, align 8
  %mul1307 = mul nsw i64 %146, 2
  %add1308 = add nsw i64 %mul1307, 1
  %conv1309 = trunc i64 %add1308 to i32
  %cmp1310 = icmp slt i32 %conv1309, 0
  br i1 %cmp1310, label %cond.true.1312, label %cond.false.1347

cond.true.1312:                                   ; preds = %cond.true.1306
  %147 = load i64, i64* %len, align 8
  %mul1313 = mul nsw i64 %147, 2
  %add1314 = add nsw i64 %mul1313, 1
  %conv1315 = trunc i64 %add1314 to i32
  %148 = load i64, i64* %len, align 8
  %mul1316 = mul nsw i64 %148, 2
  %add1317 = add nsw i64 %mul1316, 1
  %conv1318 = trunc i64 %add1317 to i32
  %add1319 = add nsw i32 0, %conv1318
  %mul1320 = mul nsw i32 0, %add1319
  %sub1321 = sub nsw i32 %mul1320, 1
  %cmp1322 = icmp slt i32 %sub1321, 0
  br i1 %cmp1322, label %cond.true.1324, label %cond.false.1335

cond.true.1324:                                   ; preds = %cond.true.1312
  %149 = load i64, i64* %len, align 8
  %mul1325 = mul nsw i64 %149, 2
  %add1326 = add nsw i64 %mul1325, 1
  %conv1327 = trunc i64 %add1326 to i32
  %add1328 = add nsw i32 0, %conv1327
  %mul1329 = mul nsw i32 0, %add1328
  %add1330 = add nsw i32 %mul1329, 1
  %shl1331 = shl i32 %add1330, 30
  %sub1332 = sub nsw i32 %shl1331, 1
  %mul1333 = mul nsw i32 %sub1332, 2
  %add1334 = add nsw i32 %mul1333, 1
  br label %cond.end.1342

cond.false.1335:                                  ; preds = %cond.true.1312
  %150 = load i64, i64* %len, align 8
  %mul1336 = mul nsw i64 %150, 2
  %add1337 = add nsw i64 %mul1336, 1
  %conv1338 = trunc i64 %add1337 to i32
  %add1339 = add nsw i32 0, %conv1338
  %mul1340 = mul nsw i32 0, %add1339
  %sub1341 = sub nsw i32 %mul1340, 1
  br label %cond.end.1342

cond.end.1342:                                    ; preds = %cond.false.1335, %cond.true.1324
  %cond1343 = phi i32 [ %add1334, %cond.true.1324 ], [ %sub1341, %cond.false.1335 ]
  %div1344 = sdiv i32 %cond1343, 8
  %cmp1345 = icmp slt i32 %conv1315, %div1344
  br i1 %cmp1345, label %cond.true.1507, label %lor.lhs.false.1484

cond.false.1347:                                  ; preds = %cond.true.1306
  br i1 false, label %cond.true.1348, label %cond.false.1349

cond.true.1348:                                   ; preds = %cond.false.1347
  br i1 false, label %cond.true.1507, label %lor.lhs.false.1484

cond.false.1349:                                  ; preds = %cond.false.1347
  %151 = load i64, i64* %len, align 8
  %mul1350 = mul nsw i64 %151, 2
  %add1351 = add nsw i64 %mul1350, 1
  %conv1352 = trunc i64 %add1351 to i32
  %add1353 = add nsw i32 0, %conv1352
  %mul1354 = mul nsw i32 0, %add1353
  %sub1355 = sub nsw i32 %mul1354, 1
  %cmp1356 = icmp slt i32 %sub1355, 0
  br i1 %cmp1356, label %cond.true.1358, label %cond.false.1380

cond.true.1358:                                   ; preds = %cond.false.1349
  %152 = load i64, i64* %len, align 8
  %mul1359 = mul nsw i64 %152, 2
  %add1360 = add nsw i64 %mul1359, 1
  %conv1361 = trunc i64 %add1360 to i32
  %add1362 = add nsw i32 0, %conv1361
  %mul1363 = mul nsw i32 0, %add1362
  %add1364 = add nsw i32 %mul1363, 0
  %neg1365 = xor i32 %add1364, -1
  %cmp1366 = icmp eq i32 %neg1365, -1
  %conv1367 = zext i1 %cmp1366 to i32
  %sub1368 = sub nsw i32 0, %conv1367
  %153 = load i64, i64* %len, align 8
  %mul1369 = mul nsw i64 %153, 2
  %add1370 = add nsw i64 %mul1369, 1
  %conv1371 = trunc i64 %add1370 to i32
  %add1372 = add nsw i32 0, %conv1371
  %mul1373 = mul nsw i32 0, %add1372
  %add1374 = add nsw i32 %mul1373, 1
  %shl1375 = shl i32 %add1374, 30
  %sub1376 = sub nsw i32 %shl1375, 1
  %mul1377 = mul nsw i32 %sub1376, 2
  %add1378 = add nsw i32 %mul1377, 1
  %sub1379 = sub nsw i32 %sub1368, %add1378
  br label %cond.end.1387

cond.false.1380:                                  ; preds = %cond.false.1349
  %154 = load i64, i64* %len, align 8
  %mul1381 = mul nsw i64 %154, 2
  %add1382 = add nsw i64 %mul1381, 1
  %conv1383 = trunc i64 %add1382 to i32
  %add1384 = add nsw i32 0, %conv1383
  %mul1385 = mul nsw i32 0, %add1384
  %add1386 = add nsw i32 %mul1385, 0
  br label %cond.end.1387

cond.end.1387:                                    ; preds = %cond.false.1380, %cond.true.1358
  %cond1388 = phi i32 [ %sub1379, %cond.true.1358 ], [ %add1386, %cond.false.1380 ]
  %div1389 = sdiv i32 %cond1388, 8
  %155 = load i64, i64* %len, align 8
  %mul1390 = mul nsw i64 %155, 2
  %add1391 = add nsw i64 %mul1390, 1
  %conv1392 = trunc i64 %add1391 to i32
  %cmp1393 = icmp slt i32 %div1389, %conv1392
  br i1 %cmp1393, label %cond.true.1507, label %lor.lhs.false.1484

cond.false.1395:                                  ; preds = %lor.lhs.false.1305
  br i1 false, label %cond.true.1396, label %cond.false.1397

cond.true.1396:                                   ; preds = %cond.false.1395
  br i1 false, label %cond.true.1507, label %lor.lhs.false.1484

cond.false.1397:                                  ; preds = %cond.false.1395
  %156 = load i64, i64* %len, align 8
  %mul1398 = mul nsw i64 %156, 2
  %add1399 = add nsw i64 %mul1398, 1
  %conv1400 = trunc i64 %add1399 to i32
  %cmp1401 = icmp slt i32 %conv1400, 0
  br i1 %cmp1401, label %cond.true.1403, label %cond.false.1449

cond.true.1403:                                   ; preds = %cond.false.1397
  %157 = load i64, i64* %len, align 8
  %mul1404 = mul nsw i64 %157, 2
  %add1405 = add nsw i64 %mul1404, 1
  %conv1406 = trunc i64 %add1405 to i32
  %158 = load i64, i64* %len, align 8
  %mul1407 = mul nsw i64 %158, 2
  %add1408 = add nsw i64 %mul1407, 1
  %conv1409 = trunc i64 %add1408 to i32
  %add1410 = add nsw i32 0, %conv1409
  %mul1411 = mul nsw i32 0, %add1410
  %sub1412 = sub nsw i32 %mul1411, 1
  %cmp1413 = icmp slt i32 %sub1412, 0
  br i1 %cmp1413, label %cond.true.1415, label %cond.false.1437

cond.true.1415:                                   ; preds = %cond.true.1403
  %159 = load i64, i64* %len, align 8
  %mul1416 = mul nsw i64 %159, 2
  %add1417 = add nsw i64 %mul1416, 1
  %conv1418 = trunc i64 %add1417 to i32
  %add1419 = add nsw i32 0, %conv1418
  %mul1420 = mul nsw i32 0, %add1419
  %add1421 = add nsw i32 %mul1420, 0
  %neg1422 = xor i32 %add1421, -1
  %cmp1423 = icmp eq i32 %neg1422, -1
  %conv1424 = zext i1 %cmp1423 to i32
  %sub1425 = sub nsw i32 0, %conv1424
  %160 = load i64, i64* %len, align 8
  %mul1426 = mul nsw i64 %160, 2
  %add1427 = add nsw i64 %mul1426, 1
  %conv1428 = trunc i64 %add1427 to i32
  %add1429 = add nsw i32 0, %conv1428
  %mul1430 = mul nsw i32 0, %add1429
  %add1431 = add nsw i32 %mul1430, 1
  %shl1432 = shl i32 %add1431, 30
  %sub1433 = sub nsw i32 %shl1432, 1
  %mul1434 = mul nsw i32 %sub1433, 2
  %add1435 = add nsw i32 %mul1434, 1
  %sub1436 = sub nsw i32 %sub1425, %add1435
  br label %cond.end.1444

cond.false.1437:                                  ; preds = %cond.true.1403
  %161 = load i64, i64* %len, align 8
  %mul1438 = mul nsw i64 %161, 2
  %add1439 = add nsw i64 %mul1438, 1
  %conv1440 = trunc i64 %add1439 to i32
  %add1441 = add nsw i32 0, %conv1440
  %mul1442 = mul nsw i32 0, %add1441
  %add1443 = add nsw i32 %mul1442, 0
  br label %cond.end.1444

cond.end.1444:                                    ; preds = %cond.false.1437, %cond.true.1415
  %cond1445 = phi i32 [ %sub1436, %cond.true.1415 ], [ %add1443, %cond.false.1437 ]
  %div1446 = sdiv i32 %cond1445, 8
  %cmp1447 = icmp slt i32 %conv1406, %div1446
  br i1 %cmp1447, label %cond.true.1507, label %lor.lhs.false.1484

cond.false.1449:                                  ; preds = %cond.false.1397
  %162 = load i64, i64* %len, align 8
  %mul1450 = mul nsw i64 %162, 2
  %add1451 = add nsw i64 %mul1450, 1
  %conv1452 = trunc i64 %add1451 to i32
  %add1453 = add nsw i32 0, %conv1452
  %mul1454 = mul nsw i32 0, %add1453
  %sub1455 = sub nsw i32 %mul1454, 1
  %cmp1456 = icmp slt i32 %sub1455, 0
  br i1 %cmp1456, label %cond.true.1458, label %cond.false.1469

cond.true.1458:                                   ; preds = %cond.false.1449
  %163 = load i64, i64* %len, align 8
  %mul1459 = mul nsw i64 %163, 2
  %add1460 = add nsw i64 %mul1459, 1
  %conv1461 = trunc i64 %add1460 to i32
  %add1462 = add nsw i32 0, %conv1461
  %mul1463 = mul nsw i32 0, %add1462
  %add1464 = add nsw i32 %mul1463, 1
  %shl1465 = shl i32 %add1464, 30
  %sub1466 = sub nsw i32 %shl1465, 1
  %mul1467 = mul nsw i32 %sub1466, 2
  %add1468 = add nsw i32 %mul1467, 1
  br label %cond.end.1476

cond.false.1469:                                  ; preds = %cond.false.1449
  %164 = load i64, i64* %len, align 8
  %mul1470 = mul nsw i64 %164, 2
  %add1471 = add nsw i64 %mul1470, 1
  %conv1472 = trunc i64 %add1471 to i32
  %add1473 = add nsw i32 0, %conv1472
  %mul1474 = mul nsw i32 0, %add1473
  %sub1475 = sub nsw i32 %mul1474, 1
  br label %cond.end.1476

cond.end.1476:                                    ; preds = %cond.false.1469, %cond.true.1458
  %cond1477 = phi i32 [ %add1468, %cond.true.1458 ], [ %sub1475, %cond.false.1469 ]
  %div1478 = sdiv i32 %cond1477, 8
  %165 = load i64, i64* %len, align 8
  %mul1479 = mul nsw i64 %165, 2
  %add1480 = add nsw i64 %mul1479, 1
  %conv1481 = trunc i64 %add1480 to i32
  %cmp1482 = icmp slt i32 %div1478, %conv1481
  br i1 %cmp1482, label %cond.true.1507, label %lor.lhs.false.1484

lor.lhs.false.1484:                               ; preds = %cond.end.1476, %cond.end.1444, %cond.true.1396, %cond.end.1387, %cond.true.1348, %cond.end.1342
  %166 = load i64, i64* %len, align 8
  %mul1485 = mul nsw i64 %166, 2
  %add1486 = add nsw i64 %mul1485, 1
  %conv1487 = trunc i64 %add1486 to i32
  %mul1488 = mul nsw i32 %conv1487, 8
  %mul1489 = mul nsw i32 0, %mul1488
  %sub1490 = sub nsw i32 %mul1489, 1
  %cmp1491 = icmp slt i32 %sub1490, 0
  br i1 %cmp1491, label %land.lhs.true.1493, label %lor.lhs.false.1500

land.lhs.true.1493:                               ; preds = %lor.lhs.false.1484
  %167 = load i64, i64* %len, align 8
  %mul1494 = mul nsw i64 %167, 2
  %add1495 = add nsw i64 %mul1494, 1
  %conv1496 = trunc i64 %add1495 to i32
  %mul1497 = mul nsw i32 %conv1496, 8
  %cmp1498 = icmp slt i32 %mul1497, -2147483648
  br i1 %cmp1498, label %cond.true.1507, label %lor.lhs.false.1500

lor.lhs.false.1500:                               ; preds = %land.lhs.true.1493, %lor.lhs.false.1484
  %168 = load i64, i64* %len, align 8
  %mul1501 = mul nsw i64 %168, 2
  %add1502 = add nsw i64 %mul1501, 1
  %conv1503 = trunc i64 %add1502 to i32
  %mul1504 = mul nsw i32 %conv1503, 8
  %cmp1505 = icmp slt i32 2147483647, %mul1504
  br i1 %cmp1505, label %cond.true.1507, label %cond.false.1529

cond.true.1507:                                   ; preds = %lor.lhs.false.1500, %land.lhs.true.1493, %cond.end.1476, %cond.end.1444, %cond.true.1396, %cond.end.1387, %cond.true.1348, %cond.end.1342, %land.lhs.true.1299
  %169 = load i64, i64* %len, align 8
  %mul1508 = mul nsw i64 %169, 2
  %add1509 = add nsw i64 %mul1508, 1
  %conv1510 = trunc i64 %add1509 to i32
  %mul1511 = mul i32 %conv1510, 8
  %cmp1512 = icmp ule i32 %mul1511, 2147483647
  br i1 %cmp1512, label %cond.true.1514, label %cond.false.1519

cond.true.1514:                                   ; preds = %cond.true.1507
  %170 = load i64, i64* %len, align 8
  %mul1515 = mul nsw i64 %170, 2
  %add1516 = add nsw i64 %mul1515, 1
  %conv1517 = trunc i64 %add1516 to i32
  %mul1518 = mul i32 %conv1517, 8
  br label %cond.end.1526

cond.false.1519:                                  ; preds = %cond.true.1507
  %171 = load i64, i64* %len, align 8
  %mul1520 = mul nsw i64 %171, 2
  %add1521 = add nsw i64 %mul1520, 1
  %conv1522 = trunc i64 %add1521 to i32
  %mul1523 = mul i32 %conv1522, 8
  %sub1524 = sub i32 %mul1523, -2147483648
  %add1525 = add nsw i32 %sub1524, -2147483648
  br label %cond.end.1526

cond.end.1526:                                    ; preds = %cond.false.1519, %cond.true.1514
  %cond1527 = phi i32 [ %mul1518, %cond.true.1514 ], [ %add1525, %cond.false.1519 ]
  %conv1528 = sext i32 %cond1527 to i64
  store i64 %conv1528, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then, label %lor.lhs.false.2867

cond.false.1529:                                  ; preds = %lor.lhs.false.1500
  %172 = load i64, i64* %len, align 8
  %mul1530 = mul nsw i64 %172, 2
  %add1531 = add nsw i64 %mul1530, 1
  %conv1532 = trunc i64 %add1531 to i32
  %mul1533 = mul i32 %conv1532, 8
  %cmp1534 = icmp ule i32 %mul1533, 2147483647
  br i1 %cmp1534, label %cond.true.1536, label %cond.false.1541

cond.true.1536:                                   ; preds = %cond.false.1529
  %173 = load i64, i64* %len, align 8
  %mul1537 = mul nsw i64 %173, 2
  %add1538 = add nsw i64 %mul1537, 1
  %conv1539 = trunc i64 %add1538 to i32
  %mul1540 = mul i32 %conv1539, 8
  br label %cond.end.1548

cond.false.1541:                                  ; preds = %cond.false.1529
  %174 = load i64, i64* %len, align 8
  %mul1542 = mul nsw i64 %174, 2
  %add1543 = add nsw i64 %mul1542, 1
  %conv1544 = trunc i64 %add1543 to i32
  %mul1545 = mul i32 %conv1544, 8
  %sub1546 = sub i32 %mul1545, -2147483648
  %add1547 = add nsw i32 %sub1546, -2147483648
  br label %cond.end.1548

cond.end.1548:                                    ; preds = %cond.false.1541, %cond.true.1536
  %cond1549 = phi i32 [ %mul1540, %cond.true.1536 ], [ %add1547, %cond.false.1541 ]
  %conv1550 = sext i32 %cond1549 to i64
  store i64 %conv1550, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then, label %lor.lhs.false.2867

cond.false.1551:                                  ; preds = %cond.true.1256
  %175 = load i64, i64* %len, align 8
  %mul1552 = mul nsw i64 %175, 2
  %add1553 = add nsw i64 %mul1552, 1
  %add1554 = add nsw i64 0, %add1553
  %mul1555 = mul nsw i64 0, %add1554
  %sub1556 = sub nsw i64 %mul1555, 1
  %cmp1557 = icmp slt i64 %sub1556, 0
  br i1 %cmp1557, label %cond.true.1559, label %cond.false.1580

cond.true.1559:                                   ; preds = %cond.false.1551
  %176 = load i64, i64* %len, align 8
  %mul1560 = mul nsw i64 %176, 2
  %add1561 = add nsw i64 %mul1560, 1
  %add1562 = add nsw i64 0, %add1561
  %mul1563 = mul nsw i64 0, %add1562
  %add1564 = add nsw i64 %mul1563, 0
  %neg1565 = xor i64 %add1564, -1
  %cmp1566 = icmp eq i64 %neg1565, -1
  %conv1567 = zext i1 %cmp1566 to i32
  %sub1568 = sub nsw i32 0, %conv1567
  %conv1569 = sext i32 %sub1568 to i64
  %177 = load i64, i64* %len, align 8
  %mul1570 = mul nsw i64 %177, 2
  %add1571 = add nsw i64 %mul1570, 1
  %add1572 = add nsw i64 0, %add1571
  %mul1573 = mul nsw i64 0, %add1572
  %add1574 = add nsw i64 %mul1573, 1
  %shl1575 = shl i64 %add1574, 62
  %sub1576 = sub nsw i64 %shl1575, 1
  %mul1577 = mul nsw i64 %sub1576, 2
  %add1578 = add nsw i64 %mul1577, 1
  %sub1579 = sub nsw i64 %conv1569, %add1578
  br label %cond.end.1586

cond.false.1580:                                  ; preds = %cond.false.1551
  %178 = load i64, i64* %len, align 8
  %mul1581 = mul nsw i64 %178, 2
  %add1582 = add nsw i64 %mul1581, 1
  %add1583 = add nsw i64 0, %add1582
  %mul1584 = mul nsw i64 0, %add1583
  %add1585 = add nsw i64 %mul1584, 0
  br label %cond.end.1586

cond.end.1586:                                    ; preds = %cond.false.1580, %cond.true.1559
  %cond1587 = phi i64 [ %sub1579, %cond.true.1559 ], [ %add1585, %cond.false.1580 ]
  %cmp1588 = icmp eq i64 %cond1587, 0
  br i1 %cmp1588, label %land.lhs.true.1590, label %lor.lhs.false.1595

land.lhs.true.1590:                               ; preds = %cond.end.1586
  %179 = load i64, i64* %len, align 8
  %mul1591 = mul nsw i64 %179, 2
  %add1592 = add nsw i64 %mul1591, 1
  %cmp1593 = icmp slt i64 %add1592, 0
  br i1 %cmp1593, label %cond.true.1776, label %lor.lhs.false.1595

lor.lhs.false.1595:                               ; preds = %land.lhs.true.1590, %cond.end.1586
  br i1 false, label %cond.true.1596, label %cond.false.1676

cond.true.1596:                                   ; preds = %lor.lhs.false.1595
  %180 = load i64, i64* %len, align 8
  %mul1597 = mul nsw i64 %180, 2
  %add1598 = add nsw i64 %mul1597, 1
  %cmp1599 = icmp slt i64 %add1598, 0
  br i1 %cmp1599, label %cond.true.1601, label %cond.false.1632

cond.true.1601:                                   ; preds = %cond.true.1596
  %181 = load i64, i64* %len, align 8
  %mul1602 = mul nsw i64 %181, 2
  %add1603 = add nsw i64 %mul1602, 1
  %182 = load i64, i64* %len, align 8
  %mul1604 = mul nsw i64 %182, 2
  %add1605 = add nsw i64 %mul1604, 1
  %add1606 = add nsw i64 0, %add1605
  %mul1607 = mul nsw i64 0, %add1606
  %sub1608 = sub nsw i64 %mul1607, 1
  %cmp1609 = icmp slt i64 %sub1608, 0
  br i1 %cmp1609, label %cond.true.1611, label %cond.false.1621

cond.true.1611:                                   ; preds = %cond.true.1601
  %183 = load i64, i64* %len, align 8
  %mul1612 = mul nsw i64 %183, 2
  %add1613 = add nsw i64 %mul1612, 1
  %add1614 = add nsw i64 0, %add1613
  %mul1615 = mul nsw i64 0, %add1614
  %add1616 = add nsw i64 %mul1615, 1
  %shl1617 = shl i64 %add1616, 62
  %sub1618 = sub nsw i64 %shl1617, 1
  %mul1619 = mul nsw i64 %sub1618, 2
  %add1620 = add nsw i64 %mul1619, 1
  br label %cond.end.1627

cond.false.1621:                                  ; preds = %cond.true.1601
  %184 = load i64, i64* %len, align 8
  %mul1622 = mul nsw i64 %184, 2
  %add1623 = add nsw i64 %mul1622, 1
  %add1624 = add nsw i64 0, %add1623
  %mul1625 = mul nsw i64 0, %add1624
  %sub1626 = sub nsw i64 %mul1625, 1
  br label %cond.end.1627

cond.end.1627:                                    ; preds = %cond.false.1621, %cond.true.1611
  %cond1628 = phi i64 [ %add1620, %cond.true.1611 ], [ %sub1626, %cond.false.1621 ]
  %div1629 = sdiv i64 %cond1628, 8
  %cmp1630 = icmp slt i64 %add1603, %div1629
  br i1 %cmp1630, label %cond.true.1776, label %lor.lhs.false.1756

cond.false.1632:                                  ; preds = %cond.true.1596
  br i1 false, label %cond.true.1633, label %cond.false.1634

cond.true.1633:                                   ; preds = %cond.false.1632
  br i1 false, label %cond.true.1776, label %lor.lhs.false.1756

cond.false.1634:                                  ; preds = %cond.false.1632
  %185 = load i64, i64* %len, align 8
  %mul1635 = mul nsw i64 %185, 2
  %add1636 = add nsw i64 %mul1635, 1
  %add1637 = add nsw i64 0, %add1636
  %mul1638 = mul nsw i64 0, %add1637
  %sub1639 = sub nsw i64 %mul1638, 1
  %cmp1640 = icmp slt i64 %sub1639, 0
  br i1 %cmp1640, label %cond.true.1642, label %cond.false.1663

cond.true.1642:                                   ; preds = %cond.false.1634
  %186 = load i64, i64* %len, align 8
  %mul1643 = mul nsw i64 %186, 2
  %add1644 = add nsw i64 %mul1643, 1
  %add1645 = add nsw i64 0, %add1644
  %mul1646 = mul nsw i64 0, %add1645
  %add1647 = add nsw i64 %mul1646, 0
  %neg1648 = xor i64 %add1647, -1
  %cmp1649 = icmp eq i64 %neg1648, -1
  %conv1650 = zext i1 %cmp1649 to i32
  %sub1651 = sub nsw i32 0, %conv1650
  %conv1652 = sext i32 %sub1651 to i64
  %187 = load i64, i64* %len, align 8
  %mul1653 = mul nsw i64 %187, 2
  %add1654 = add nsw i64 %mul1653, 1
  %add1655 = add nsw i64 0, %add1654
  %mul1656 = mul nsw i64 0, %add1655
  %add1657 = add nsw i64 %mul1656, 1
  %shl1658 = shl i64 %add1657, 62
  %sub1659 = sub nsw i64 %shl1658, 1
  %mul1660 = mul nsw i64 %sub1659, 2
  %add1661 = add nsw i64 %mul1660, 1
  %sub1662 = sub nsw i64 %conv1652, %add1661
  br label %cond.end.1669

cond.false.1663:                                  ; preds = %cond.false.1634
  %188 = load i64, i64* %len, align 8
  %mul1664 = mul nsw i64 %188, 2
  %add1665 = add nsw i64 %mul1664, 1
  %add1666 = add nsw i64 0, %add1665
  %mul1667 = mul nsw i64 0, %add1666
  %add1668 = add nsw i64 %mul1667, 0
  br label %cond.end.1669

cond.end.1669:                                    ; preds = %cond.false.1663, %cond.true.1642
  %cond1670 = phi i64 [ %sub1662, %cond.true.1642 ], [ %add1668, %cond.false.1663 ]
  %div1671 = sdiv i64 %cond1670, 8
  %189 = load i64, i64* %len, align 8
  %mul1672 = mul nsw i64 %189, 2
  %add1673 = add nsw i64 %mul1672, 1
  %cmp1674 = icmp slt i64 %div1671, %add1673
  br i1 %cmp1674, label %cond.true.1776, label %lor.lhs.false.1756

cond.false.1676:                                  ; preds = %lor.lhs.false.1595
  br i1 false, label %cond.true.1677, label %cond.false.1678

cond.true.1677:                                   ; preds = %cond.false.1676
  br i1 false, label %cond.true.1776, label %lor.lhs.false.1756

cond.false.1678:                                  ; preds = %cond.false.1676
  %190 = load i64, i64* %len, align 8
  %mul1679 = mul nsw i64 %190, 2
  %add1680 = add nsw i64 %mul1679, 1
  %cmp1681 = icmp slt i64 %add1680, 0
  br i1 %cmp1681, label %cond.true.1683, label %cond.false.1725

cond.true.1683:                                   ; preds = %cond.false.1678
  %191 = load i64, i64* %len, align 8
  %mul1684 = mul nsw i64 %191, 2
  %add1685 = add nsw i64 %mul1684, 1
  %192 = load i64, i64* %len, align 8
  %mul1686 = mul nsw i64 %192, 2
  %add1687 = add nsw i64 %mul1686, 1
  %add1688 = add nsw i64 0, %add1687
  %mul1689 = mul nsw i64 0, %add1688
  %sub1690 = sub nsw i64 %mul1689, 1
  %cmp1691 = icmp slt i64 %sub1690, 0
  br i1 %cmp1691, label %cond.true.1693, label %cond.false.1714

cond.true.1693:                                   ; preds = %cond.true.1683
  %193 = load i64, i64* %len, align 8
  %mul1694 = mul nsw i64 %193, 2
  %add1695 = add nsw i64 %mul1694, 1
  %add1696 = add nsw i64 0, %add1695
  %mul1697 = mul nsw i64 0, %add1696
  %add1698 = add nsw i64 %mul1697, 0
  %neg1699 = xor i64 %add1698, -1
  %cmp1700 = icmp eq i64 %neg1699, -1
  %conv1701 = zext i1 %cmp1700 to i32
  %sub1702 = sub nsw i32 0, %conv1701
  %conv1703 = sext i32 %sub1702 to i64
  %194 = load i64, i64* %len, align 8
  %mul1704 = mul nsw i64 %194, 2
  %add1705 = add nsw i64 %mul1704, 1
  %add1706 = add nsw i64 0, %add1705
  %mul1707 = mul nsw i64 0, %add1706
  %add1708 = add nsw i64 %mul1707, 1
  %shl1709 = shl i64 %add1708, 62
  %sub1710 = sub nsw i64 %shl1709, 1
  %mul1711 = mul nsw i64 %sub1710, 2
  %add1712 = add nsw i64 %mul1711, 1
  %sub1713 = sub nsw i64 %conv1703, %add1712
  br label %cond.end.1720

cond.false.1714:                                  ; preds = %cond.true.1683
  %195 = load i64, i64* %len, align 8
  %mul1715 = mul nsw i64 %195, 2
  %add1716 = add nsw i64 %mul1715, 1
  %add1717 = add nsw i64 0, %add1716
  %mul1718 = mul nsw i64 0, %add1717
  %add1719 = add nsw i64 %mul1718, 0
  br label %cond.end.1720

cond.end.1720:                                    ; preds = %cond.false.1714, %cond.true.1693
  %cond1721 = phi i64 [ %sub1713, %cond.true.1693 ], [ %add1719, %cond.false.1714 ]
  %div1722 = sdiv i64 %cond1721, 8
  %cmp1723 = icmp slt i64 %add1685, %div1722
  br i1 %cmp1723, label %cond.true.1776, label %lor.lhs.false.1756

cond.false.1725:                                  ; preds = %cond.false.1678
  %196 = load i64, i64* %len, align 8
  %mul1726 = mul nsw i64 %196, 2
  %add1727 = add nsw i64 %mul1726, 1
  %add1728 = add nsw i64 0, %add1727
  %mul1729 = mul nsw i64 0, %add1728
  %sub1730 = sub nsw i64 %mul1729, 1
  %cmp1731 = icmp slt i64 %sub1730, 0
  br i1 %cmp1731, label %cond.true.1733, label %cond.false.1743

cond.true.1733:                                   ; preds = %cond.false.1725
  %197 = load i64, i64* %len, align 8
  %mul1734 = mul nsw i64 %197, 2
  %add1735 = add nsw i64 %mul1734, 1
  %add1736 = add nsw i64 0, %add1735
  %mul1737 = mul nsw i64 0, %add1736
  %add1738 = add nsw i64 %mul1737, 1
  %shl1739 = shl i64 %add1738, 62
  %sub1740 = sub nsw i64 %shl1739, 1
  %mul1741 = mul nsw i64 %sub1740, 2
  %add1742 = add nsw i64 %mul1741, 1
  br label %cond.end.1749

cond.false.1743:                                  ; preds = %cond.false.1725
  %198 = load i64, i64* %len, align 8
  %mul1744 = mul nsw i64 %198, 2
  %add1745 = add nsw i64 %mul1744, 1
  %add1746 = add nsw i64 0, %add1745
  %mul1747 = mul nsw i64 0, %add1746
  %sub1748 = sub nsw i64 %mul1747, 1
  br label %cond.end.1749

cond.end.1749:                                    ; preds = %cond.false.1743, %cond.true.1733
  %cond1750 = phi i64 [ %add1742, %cond.true.1733 ], [ %sub1748, %cond.false.1743 ]
  %div1751 = sdiv i64 %cond1750, 8
  %199 = load i64, i64* %len, align 8
  %mul1752 = mul nsw i64 %199, 2
  %add1753 = add nsw i64 %mul1752, 1
  %cmp1754 = icmp slt i64 %div1751, %add1753
  br i1 %cmp1754, label %cond.true.1776, label %lor.lhs.false.1756

lor.lhs.false.1756:                               ; preds = %cond.end.1749, %cond.end.1720, %cond.true.1677, %cond.end.1669, %cond.true.1633, %cond.end.1627
  %200 = load i64, i64* %len, align 8
  %mul1757 = mul nsw i64 %200, 2
  %add1758 = add nsw i64 %mul1757, 1
  %mul1759 = mul nsw i64 %add1758, 8
  %mul1760 = mul nsw i64 0, %mul1759
  %sub1761 = sub nsw i64 %mul1760, 1
  %cmp1762 = icmp slt i64 %sub1761, 0
  br i1 %cmp1762, label %land.lhs.true.1764, label %lor.lhs.false.1770

land.lhs.true.1764:                               ; preds = %lor.lhs.false.1756
  %201 = load i64, i64* %len, align 8
  %mul1765 = mul nsw i64 %201, 2
  %add1766 = add nsw i64 %mul1765, 1
  %mul1767 = mul nsw i64 %add1766, 8
  %cmp1768 = icmp slt i64 %mul1767, -2147483648
  br i1 %cmp1768, label %cond.true.1776, label %lor.lhs.false.1770

lor.lhs.false.1770:                               ; preds = %land.lhs.true.1764, %lor.lhs.false.1756
  %202 = load i64, i64* %len, align 8
  %mul1771 = mul nsw i64 %202, 2
  %add1772 = add nsw i64 %mul1771, 1
  %mul1773 = mul nsw i64 %add1772, 8
  %cmp1774 = icmp slt i64 2147483647, %mul1773
  br i1 %cmp1774, label %cond.true.1776, label %cond.false.1798

cond.true.1776:                                   ; preds = %lor.lhs.false.1770, %land.lhs.true.1764, %cond.end.1749, %cond.end.1720, %cond.true.1677, %cond.end.1669, %cond.true.1633, %cond.end.1627, %land.lhs.true.1590
  %203 = load i64, i64* %len, align 8
  %mul1777 = mul nsw i64 %203, 2
  %add1778 = add nsw i64 %mul1777, 1
  %conv1779 = trunc i64 %add1778 to i32
  %mul1780 = mul i32 %conv1779, 8
  %cmp1781 = icmp ule i32 %mul1780, 2147483647
  br i1 %cmp1781, label %cond.true.1783, label %cond.false.1788

cond.true.1783:                                   ; preds = %cond.true.1776
  %204 = load i64, i64* %len, align 8
  %mul1784 = mul nsw i64 %204, 2
  %add1785 = add nsw i64 %mul1784, 1
  %conv1786 = trunc i64 %add1785 to i32
  %mul1787 = mul i32 %conv1786, 8
  br label %cond.end.1795

cond.false.1788:                                  ; preds = %cond.true.1776
  %205 = load i64, i64* %len, align 8
  %mul1789 = mul nsw i64 %205, 2
  %add1790 = add nsw i64 %mul1789, 1
  %conv1791 = trunc i64 %add1790 to i32
  %mul1792 = mul i32 %conv1791, 8
  %sub1793 = sub i32 %mul1792, -2147483648
  %add1794 = add nsw i32 %sub1793, -2147483648
  br label %cond.end.1795

cond.end.1795:                                    ; preds = %cond.false.1788, %cond.true.1783
  %cond1796 = phi i32 [ %mul1787, %cond.true.1783 ], [ %add1794, %cond.false.1788 ]
  %conv1797 = sext i32 %cond1796 to i64
  store i64 %conv1797, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then, label %lor.lhs.false.2867

cond.false.1798:                                  ; preds = %lor.lhs.false.1770
  %206 = load i64, i64* %len, align 8
  %mul1799 = mul nsw i64 %206, 2
  %add1800 = add nsw i64 %mul1799, 1
  %conv1801 = trunc i64 %add1800 to i32
  %mul1802 = mul i32 %conv1801, 8
  %cmp1803 = icmp ule i32 %mul1802, 2147483647
  br i1 %cmp1803, label %cond.true.1805, label %cond.false.1810

cond.true.1805:                                   ; preds = %cond.false.1798
  %207 = load i64, i64* %len, align 8
  %mul1806 = mul nsw i64 %207, 2
  %add1807 = add nsw i64 %mul1806, 1
  %conv1808 = trunc i64 %add1807 to i32
  %mul1809 = mul i32 %conv1808, 8
  br label %cond.end.1817

cond.false.1810:                                  ; preds = %cond.false.1798
  %208 = load i64, i64* %len, align 8
  %mul1811 = mul nsw i64 %208, 2
  %add1812 = add nsw i64 %mul1811, 1
  %conv1813 = trunc i64 %add1812 to i32
  %mul1814 = mul i32 %conv1813, 8
  %sub1815 = sub i32 %mul1814, -2147483648
  %add1816 = add nsw i32 %sub1815, -2147483648
  br label %cond.end.1817

cond.end.1817:                                    ; preds = %cond.false.1810, %cond.true.1805
  %cond1818 = phi i32 [ %mul1809, %cond.true.1805 ], [ %add1816, %cond.false.1810 ]
  %conv1819 = sext i32 %cond1818 to i64
  store i64 %conv1819, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then, label %lor.lhs.false.2867

cond.false.1820:                                  ; preds = %cond.false.1255
  br i1 true, label %cond.true.1821, label %cond.false.2344

cond.true.1821:                                   ; preds = %cond.false.1820
  br i1 false, label %cond.true.1822, label %cond.false.2083

cond.true.1822:                                   ; preds = %cond.true.1821
  %209 = load i64, i64* %len, align 8
  %mul1823 = mul nsw i64 %209, 2
  %add1824 = add nsw i64 %mul1823, 1
  %add1825 = add nsw i64 0, %add1824
  %mul1826 = mul nsw i64 0, %add1825
  %sub1827 = sub nsw i64 %mul1826, 1
  %cmp1828 = icmp slt i64 %sub1827, 0
  br i1 %cmp1828, label %cond.true.1830, label %cond.false.1851

cond.true.1830:                                   ; preds = %cond.true.1822
  %210 = load i64, i64* %len, align 8
  %mul1831 = mul nsw i64 %210, 2
  %add1832 = add nsw i64 %mul1831, 1
  %add1833 = add nsw i64 0, %add1832
  %mul1834 = mul nsw i64 0, %add1833
  %add1835 = add nsw i64 %mul1834, 0
  %neg1836 = xor i64 %add1835, -1
  %cmp1837 = icmp eq i64 %neg1836, -1
  %conv1838 = zext i1 %cmp1837 to i32
  %sub1839 = sub nsw i32 0, %conv1838
  %conv1840 = sext i32 %sub1839 to i64
  %211 = load i64, i64* %len, align 8
  %mul1841 = mul nsw i64 %211, 2
  %add1842 = add nsw i64 %mul1841, 1
  %add1843 = add nsw i64 0, %add1842
  %mul1844 = mul nsw i64 0, %add1843
  %add1845 = add nsw i64 %mul1844, 1
  %shl1846 = shl i64 %add1845, 62
  %sub1847 = sub nsw i64 %shl1846, 1
  %mul1848 = mul nsw i64 %sub1847, 2
  %add1849 = add nsw i64 %mul1848, 1
  %sub1850 = sub nsw i64 %conv1840, %add1849
  br label %cond.end.1857

cond.false.1851:                                  ; preds = %cond.true.1822
  %212 = load i64, i64* %len, align 8
  %mul1852 = mul nsw i64 %212, 2
  %add1853 = add nsw i64 %mul1852, 1
  %add1854 = add nsw i64 0, %add1853
  %mul1855 = mul nsw i64 0, %add1854
  %add1856 = add nsw i64 %mul1855, 0
  br label %cond.end.1857

cond.end.1857:                                    ; preds = %cond.false.1851, %cond.true.1830
  %cond1858 = phi i64 [ %sub1850, %cond.true.1830 ], [ %add1856, %cond.false.1851 ]
  %cmp1859 = icmp eq i64 %cond1858, 0
  br i1 %cmp1859, label %land.lhs.true.1861, label %lor.lhs.false.1866

land.lhs.true.1861:                               ; preds = %cond.end.1857
  %213 = load i64, i64* %len, align 8
  %mul1862 = mul nsw i64 %213, 2
  %add1863 = add nsw i64 %mul1862, 1
  %cmp1864 = icmp slt i64 %add1863, 0
  br i1 %cmp1864, label %cond.true.2047, label %lor.lhs.false.1866

lor.lhs.false.1866:                               ; preds = %land.lhs.true.1861, %cond.end.1857
  br i1 false, label %cond.true.1867, label %cond.false.1947

cond.true.1867:                                   ; preds = %lor.lhs.false.1866
  %214 = load i64, i64* %len, align 8
  %mul1868 = mul nsw i64 %214, 2
  %add1869 = add nsw i64 %mul1868, 1
  %cmp1870 = icmp slt i64 %add1869, 0
  br i1 %cmp1870, label %cond.true.1872, label %cond.false.1903

cond.true.1872:                                   ; preds = %cond.true.1867
  %215 = load i64, i64* %len, align 8
  %mul1873 = mul nsw i64 %215, 2
  %add1874 = add nsw i64 %mul1873, 1
  %216 = load i64, i64* %len, align 8
  %mul1875 = mul nsw i64 %216, 2
  %add1876 = add nsw i64 %mul1875, 1
  %add1877 = add nsw i64 0, %add1876
  %mul1878 = mul nsw i64 0, %add1877
  %sub1879 = sub nsw i64 %mul1878, 1
  %cmp1880 = icmp slt i64 %sub1879, 0
  br i1 %cmp1880, label %cond.true.1882, label %cond.false.1892

cond.true.1882:                                   ; preds = %cond.true.1872
  %217 = load i64, i64* %len, align 8
  %mul1883 = mul nsw i64 %217, 2
  %add1884 = add nsw i64 %mul1883, 1
  %add1885 = add nsw i64 0, %add1884
  %mul1886 = mul nsw i64 0, %add1885
  %add1887 = add nsw i64 %mul1886, 1
  %shl1888 = shl i64 %add1887, 62
  %sub1889 = sub nsw i64 %shl1888, 1
  %mul1890 = mul nsw i64 %sub1889, 2
  %add1891 = add nsw i64 %mul1890, 1
  br label %cond.end.1898

cond.false.1892:                                  ; preds = %cond.true.1872
  %218 = load i64, i64* %len, align 8
  %mul1893 = mul nsw i64 %218, 2
  %add1894 = add nsw i64 %mul1893, 1
  %add1895 = add nsw i64 0, %add1894
  %mul1896 = mul nsw i64 0, %add1895
  %sub1897 = sub nsw i64 %mul1896, 1
  br label %cond.end.1898

cond.end.1898:                                    ; preds = %cond.false.1892, %cond.true.1882
  %cond1899 = phi i64 [ %add1891, %cond.true.1882 ], [ %sub1897, %cond.false.1892 ]
  %div1900 = sdiv i64 %cond1899, 8
  %cmp1901 = icmp slt i64 %add1874, %div1900
  br i1 %cmp1901, label %cond.true.2047, label %lor.lhs.false.2027

cond.false.1903:                                  ; preds = %cond.true.1867
  br i1 false, label %cond.true.1904, label %cond.false.1905

cond.true.1904:                                   ; preds = %cond.false.1903
  br i1 false, label %cond.true.2047, label %lor.lhs.false.2027

cond.false.1905:                                  ; preds = %cond.false.1903
  %219 = load i64, i64* %len, align 8
  %mul1906 = mul nsw i64 %219, 2
  %add1907 = add nsw i64 %mul1906, 1
  %add1908 = add nsw i64 0, %add1907
  %mul1909 = mul nsw i64 0, %add1908
  %sub1910 = sub nsw i64 %mul1909, 1
  %cmp1911 = icmp slt i64 %sub1910, 0
  br i1 %cmp1911, label %cond.true.1913, label %cond.false.1934

cond.true.1913:                                   ; preds = %cond.false.1905
  %220 = load i64, i64* %len, align 8
  %mul1914 = mul nsw i64 %220, 2
  %add1915 = add nsw i64 %mul1914, 1
  %add1916 = add nsw i64 0, %add1915
  %mul1917 = mul nsw i64 0, %add1916
  %add1918 = add nsw i64 %mul1917, 0
  %neg1919 = xor i64 %add1918, -1
  %cmp1920 = icmp eq i64 %neg1919, -1
  %conv1921 = zext i1 %cmp1920 to i32
  %sub1922 = sub nsw i32 0, %conv1921
  %conv1923 = sext i32 %sub1922 to i64
  %221 = load i64, i64* %len, align 8
  %mul1924 = mul nsw i64 %221, 2
  %add1925 = add nsw i64 %mul1924, 1
  %add1926 = add nsw i64 0, %add1925
  %mul1927 = mul nsw i64 0, %add1926
  %add1928 = add nsw i64 %mul1927, 1
  %shl1929 = shl i64 %add1928, 62
  %sub1930 = sub nsw i64 %shl1929, 1
  %mul1931 = mul nsw i64 %sub1930, 2
  %add1932 = add nsw i64 %mul1931, 1
  %sub1933 = sub nsw i64 %conv1923, %add1932
  br label %cond.end.1940

cond.false.1934:                                  ; preds = %cond.false.1905
  %222 = load i64, i64* %len, align 8
  %mul1935 = mul nsw i64 %222, 2
  %add1936 = add nsw i64 %mul1935, 1
  %add1937 = add nsw i64 0, %add1936
  %mul1938 = mul nsw i64 0, %add1937
  %add1939 = add nsw i64 %mul1938, 0
  br label %cond.end.1940

cond.end.1940:                                    ; preds = %cond.false.1934, %cond.true.1913
  %cond1941 = phi i64 [ %sub1933, %cond.true.1913 ], [ %add1939, %cond.false.1934 ]
  %div1942 = sdiv i64 %cond1941, 8
  %223 = load i64, i64* %len, align 8
  %mul1943 = mul nsw i64 %223, 2
  %add1944 = add nsw i64 %mul1943, 1
  %cmp1945 = icmp slt i64 %div1942, %add1944
  br i1 %cmp1945, label %cond.true.2047, label %lor.lhs.false.2027

cond.false.1947:                                  ; preds = %lor.lhs.false.1866
  br i1 false, label %cond.true.1948, label %cond.false.1949

cond.true.1948:                                   ; preds = %cond.false.1947
  br i1 false, label %cond.true.2047, label %lor.lhs.false.2027

cond.false.1949:                                  ; preds = %cond.false.1947
  %224 = load i64, i64* %len, align 8
  %mul1950 = mul nsw i64 %224, 2
  %add1951 = add nsw i64 %mul1950, 1
  %cmp1952 = icmp slt i64 %add1951, 0
  br i1 %cmp1952, label %cond.true.1954, label %cond.false.1996

cond.true.1954:                                   ; preds = %cond.false.1949
  %225 = load i64, i64* %len, align 8
  %mul1955 = mul nsw i64 %225, 2
  %add1956 = add nsw i64 %mul1955, 1
  %226 = load i64, i64* %len, align 8
  %mul1957 = mul nsw i64 %226, 2
  %add1958 = add nsw i64 %mul1957, 1
  %add1959 = add nsw i64 0, %add1958
  %mul1960 = mul nsw i64 0, %add1959
  %sub1961 = sub nsw i64 %mul1960, 1
  %cmp1962 = icmp slt i64 %sub1961, 0
  br i1 %cmp1962, label %cond.true.1964, label %cond.false.1985

cond.true.1964:                                   ; preds = %cond.true.1954
  %227 = load i64, i64* %len, align 8
  %mul1965 = mul nsw i64 %227, 2
  %add1966 = add nsw i64 %mul1965, 1
  %add1967 = add nsw i64 0, %add1966
  %mul1968 = mul nsw i64 0, %add1967
  %add1969 = add nsw i64 %mul1968, 0
  %neg1970 = xor i64 %add1969, -1
  %cmp1971 = icmp eq i64 %neg1970, -1
  %conv1972 = zext i1 %cmp1971 to i32
  %sub1973 = sub nsw i32 0, %conv1972
  %conv1974 = sext i32 %sub1973 to i64
  %228 = load i64, i64* %len, align 8
  %mul1975 = mul nsw i64 %228, 2
  %add1976 = add nsw i64 %mul1975, 1
  %add1977 = add nsw i64 0, %add1976
  %mul1978 = mul nsw i64 0, %add1977
  %add1979 = add nsw i64 %mul1978, 1
  %shl1980 = shl i64 %add1979, 62
  %sub1981 = sub nsw i64 %shl1980, 1
  %mul1982 = mul nsw i64 %sub1981, 2
  %add1983 = add nsw i64 %mul1982, 1
  %sub1984 = sub nsw i64 %conv1974, %add1983
  br label %cond.end.1991

cond.false.1985:                                  ; preds = %cond.true.1954
  %229 = load i64, i64* %len, align 8
  %mul1986 = mul nsw i64 %229, 2
  %add1987 = add nsw i64 %mul1986, 1
  %add1988 = add nsw i64 0, %add1987
  %mul1989 = mul nsw i64 0, %add1988
  %add1990 = add nsw i64 %mul1989, 0
  br label %cond.end.1991

cond.end.1991:                                    ; preds = %cond.false.1985, %cond.true.1964
  %cond1992 = phi i64 [ %sub1984, %cond.true.1964 ], [ %add1990, %cond.false.1985 ]
  %div1993 = sdiv i64 %cond1992, 8
  %cmp1994 = icmp slt i64 %add1956, %div1993
  br i1 %cmp1994, label %cond.true.2047, label %lor.lhs.false.2027

cond.false.1996:                                  ; preds = %cond.false.1949
  %230 = load i64, i64* %len, align 8
  %mul1997 = mul nsw i64 %230, 2
  %add1998 = add nsw i64 %mul1997, 1
  %add1999 = add nsw i64 0, %add1998
  %mul2000 = mul nsw i64 0, %add1999
  %sub2001 = sub nsw i64 %mul2000, 1
  %cmp2002 = icmp slt i64 %sub2001, 0
  br i1 %cmp2002, label %cond.true.2004, label %cond.false.2014

cond.true.2004:                                   ; preds = %cond.false.1996
  %231 = load i64, i64* %len, align 8
  %mul2005 = mul nsw i64 %231, 2
  %add2006 = add nsw i64 %mul2005, 1
  %add2007 = add nsw i64 0, %add2006
  %mul2008 = mul nsw i64 0, %add2007
  %add2009 = add nsw i64 %mul2008, 1
  %shl2010 = shl i64 %add2009, 62
  %sub2011 = sub nsw i64 %shl2010, 1
  %mul2012 = mul nsw i64 %sub2011, 2
  %add2013 = add nsw i64 %mul2012, 1
  br label %cond.end.2020

cond.false.2014:                                  ; preds = %cond.false.1996
  %232 = load i64, i64* %len, align 8
  %mul2015 = mul nsw i64 %232, 2
  %add2016 = add nsw i64 %mul2015, 1
  %add2017 = add nsw i64 0, %add2016
  %mul2018 = mul nsw i64 0, %add2017
  %sub2019 = sub nsw i64 %mul2018, 1
  br label %cond.end.2020

cond.end.2020:                                    ; preds = %cond.false.2014, %cond.true.2004
  %cond2021 = phi i64 [ %add2013, %cond.true.2004 ], [ %sub2019, %cond.false.2014 ]
  %div2022 = sdiv i64 %cond2021, 8
  %233 = load i64, i64* %len, align 8
  %mul2023 = mul nsw i64 %233, 2
  %add2024 = add nsw i64 %mul2023, 1
  %cmp2025 = icmp slt i64 %div2022, %add2024
  br i1 %cmp2025, label %cond.true.2047, label %lor.lhs.false.2027

lor.lhs.false.2027:                               ; preds = %cond.end.2020, %cond.end.1991, %cond.true.1948, %cond.end.1940, %cond.true.1904, %cond.end.1898
  %234 = load i64, i64* %len, align 8
  %mul2028 = mul nsw i64 %234, 2
  %add2029 = add nsw i64 %mul2028, 1
  %mul2030 = mul nsw i64 %add2029, 8
  %mul2031 = mul nsw i64 0, %mul2030
  %sub2032 = sub nsw i64 %mul2031, 1
  %cmp2033 = icmp slt i64 %sub2032, 0
  br i1 %cmp2033, label %land.lhs.true.2035, label %lor.lhs.false.2041

land.lhs.true.2035:                               ; preds = %lor.lhs.false.2027
  %235 = load i64, i64* %len, align 8
  %mul2036 = mul nsw i64 %235, 2
  %add2037 = add nsw i64 %mul2036, 1
  %mul2038 = mul nsw i64 %add2037, 8
  %cmp2039 = icmp slt i64 %mul2038, -9223372036854775808
  br i1 %cmp2039, label %cond.true.2047, label %lor.lhs.false.2041

lor.lhs.false.2041:                               ; preds = %land.lhs.true.2035, %lor.lhs.false.2027
  %236 = load i64, i64* %len, align 8
  %mul2042 = mul nsw i64 %236, 2
  %add2043 = add nsw i64 %mul2042, 1
  %mul2044 = mul nsw i64 %add2043, 8
  %cmp2045 = icmp slt i64 9223372036854775807, %mul2044
  br i1 %cmp2045, label %cond.true.2047, label %cond.false.2065

cond.true.2047:                                   ; preds = %lor.lhs.false.2041, %land.lhs.true.2035, %cond.end.2020, %cond.end.1991, %cond.true.1948, %cond.end.1940, %cond.true.1904, %cond.end.1898, %land.lhs.true.1861
  %237 = load i64, i64* %len, align 8
  %mul2048 = mul nsw i64 %237, 2
  %add2049 = add nsw i64 %mul2048, 1
  %mul2050 = mul i64 %add2049, 8
  %cmp2051 = icmp ule i64 %mul2050, 9223372036854775807
  br i1 %cmp2051, label %cond.true.2053, label %cond.false.2057

cond.true.2053:                                   ; preds = %cond.true.2047
  %238 = load i64, i64* %len, align 8
  %mul2054 = mul nsw i64 %238, 2
  %add2055 = add nsw i64 %mul2054, 1
  %mul2056 = mul i64 %add2055, 8
  br label %cond.end.2063

cond.false.2057:                                  ; preds = %cond.true.2047
  %239 = load i64, i64* %len, align 8
  %mul2058 = mul nsw i64 %239, 2
  %add2059 = add nsw i64 %mul2058, 1
  %mul2060 = mul i64 %add2059, 8
  %sub2061 = sub i64 %mul2060, -9223372036854775808
  %add2062 = add nsw i64 %sub2061, -9223372036854775808
  br label %cond.end.2063

cond.end.2063:                                    ; preds = %cond.false.2057, %cond.true.2053
  %cond2064 = phi i64 [ %mul2056, %cond.true.2053 ], [ %add2062, %cond.false.2057 ]
  store i64 %cond2064, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then, label %lor.lhs.false.2867

cond.false.2065:                                  ; preds = %lor.lhs.false.2041
  %240 = load i64, i64* %len, align 8
  %mul2066 = mul nsw i64 %240, 2
  %add2067 = add nsw i64 %mul2066, 1
  %mul2068 = mul i64 %add2067, 8
  %cmp2069 = icmp ule i64 %mul2068, 9223372036854775807
  br i1 %cmp2069, label %cond.true.2071, label %cond.false.2075

cond.true.2071:                                   ; preds = %cond.false.2065
  %241 = load i64, i64* %len, align 8
  %mul2072 = mul nsw i64 %241, 2
  %add2073 = add nsw i64 %mul2072, 1
  %mul2074 = mul i64 %add2073, 8
  br label %cond.end.2081

cond.false.2075:                                  ; preds = %cond.false.2065
  %242 = load i64, i64* %len, align 8
  %mul2076 = mul nsw i64 %242, 2
  %add2077 = add nsw i64 %mul2076, 1
  %mul2078 = mul i64 %add2077, 8
  %sub2079 = sub i64 %mul2078, -9223372036854775808
  %add2080 = add nsw i64 %sub2079, -9223372036854775808
  br label %cond.end.2081

cond.end.2081:                                    ; preds = %cond.false.2075, %cond.true.2071
  %cond2082 = phi i64 [ %mul2074, %cond.true.2071 ], [ %add2080, %cond.false.2075 ]
  store i64 %cond2082, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then, label %lor.lhs.false.2867

cond.false.2083:                                  ; preds = %cond.true.1821
  %243 = load i64, i64* %len, align 8
  %mul2084 = mul nsw i64 %243, 2
  %add2085 = add nsw i64 %mul2084, 1
  %add2086 = add nsw i64 0, %add2085
  %mul2087 = mul nsw i64 0, %add2086
  %sub2088 = sub nsw i64 %mul2087, 1
  %cmp2089 = icmp slt i64 %sub2088, 0
  br i1 %cmp2089, label %cond.true.2091, label %cond.false.2112

cond.true.2091:                                   ; preds = %cond.false.2083
  %244 = load i64, i64* %len, align 8
  %mul2092 = mul nsw i64 %244, 2
  %add2093 = add nsw i64 %mul2092, 1
  %add2094 = add nsw i64 0, %add2093
  %mul2095 = mul nsw i64 0, %add2094
  %add2096 = add nsw i64 %mul2095, 0
  %neg2097 = xor i64 %add2096, -1
  %cmp2098 = icmp eq i64 %neg2097, -1
  %conv2099 = zext i1 %cmp2098 to i32
  %sub2100 = sub nsw i32 0, %conv2099
  %conv2101 = sext i32 %sub2100 to i64
  %245 = load i64, i64* %len, align 8
  %mul2102 = mul nsw i64 %245, 2
  %add2103 = add nsw i64 %mul2102, 1
  %add2104 = add nsw i64 0, %add2103
  %mul2105 = mul nsw i64 0, %add2104
  %add2106 = add nsw i64 %mul2105, 1
  %shl2107 = shl i64 %add2106, 62
  %sub2108 = sub nsw i64 %shl2107, 1
  %mul2109 = mul nsw i64 %sub2108, 2
  %add2110 = add nsw i64 %mul2109, 1
  %sub2111 = sub nsw i64 %conv2101, %add2110
  br label %cond.end.2118

cond.false.2112:                                  ; preds = %cond.false.2083
  %246 = load i64, i64* %len, align 8
  %mul2113 = mul nsw i64 %246, 2
  %add2114 = add nsw i64 %mul2113, 1
  %add2115 = add nsw i64 0, %add2114
  %mul2116 = mul nsw i64 0, %add2115
  %add2117 = add nsw i64 %mul2116, 0
  br label %cond.end.2118

cond.end.2118:                                    ; preds = %cond.false.2112, %cond.true.2091
  %cond2119 = phi i64 [ %sub2111, %cond.true.2091 ], [ %add2117, %cond.false.2112 ]
  %cmp2120 = icmp eq i64 %cond2119, 0
  br i1 %cmp2120, label %land.lhs.true.2122, label %lor.lhs.false.2127

land.lhs.true.2122:                               ; preds = %cond.end.2118
  %247 = load i64, i64* %len, align 8
  %mul2123 = mul nsw i64 %247, 2
  %add2124 = add nsw i64 %mul2123, 1
  %cmp2125 = icmp slt i64 %add2124, 0
  br i1 %cmp2125, label %cond.true.2308, label %lor.lhs.false.2127

lor.lhs.false.2127:                               ; preds = %land.lhs.true.2122, %cond.end.2118
  br i1 false, label %cond.true.2128, label %cond.false.2208

cond.true.2128:                                   ; preds = %lor.lhs.false.2127
  %248 = load i64, i64* %len, align 8
  %mul2129 = mul nsw i64 %248, 2
  %add2130 = add nsw i64 %mul2129, 1
  %cmp2131 = icmp slt i64 %add2130, 0
  br i1 %cmp2131, label %cond.true.2133, label %cond.false.2164

cond.true.2133:                                   ; preds = %cond.true.2128
  %249 = load i64, i64* %len, align 8
  %mul2134 = mul nsw i64 %249, 2
  %add2135 = add nsw i64 %mul2134, 1
  %250 = load i64, i64* %len, align 8
  %mul2136 = mul nsw i64 %250, 2
  %add2137 = add nsw i64 %mul2136, 1
  %add2138 = add nsw i64 0, %add2137
  %mul2139 = mul nsw i64 0, %add2138
  %sub2140 = sub nsw i64 %mul2139, 1
  %cmp2141 = icmp slt i64 %sub2140, 0
  br i1 %cmp2141, label %cond.true.2143, label %cond.false.2153

cond.true.2143:                                   ; preds = %cond.true.2133
  %251 = load i64, i64* %len, align 8
  %mul2144 = mul nsw i64 %251, 2
  %add2145 = add nsw i64 %mul2144, 1
  %add2146 = add nsw i64 0, %add2145
  %mul2147 = mul nsw i64 0, %add2146
  %add2148 = add nsw i64 %mul2147, 1
  %shl2149 = shl i64 %add2148, 62
  %sub2150 = sub nsw i64 %shl2149, 1
  %mul2151 = mul nsw i64 %sub2150, 2
  %add2152 = add nsw i64 %mul2151, 1
  br label %cond.end.2159

cond.false.2153:                                  ; preds = %cond.true.2133
  %252 = load i64, i64* %len, align 8
  %mul2154 = mul nsw i64 %252, 2
  %add2155 = add nsw i64 %mul2154, 1
  %add2156 = add nsw i64 0, %add2155
  %mul2157 = mul nsw i64 0, %add2156
  %sub2158 = sub nsw i64 %mul2157, 1
  br label %cond.end.2159

cond.end.2159:                                    ; preds = %cond.false.2153, %cond.true.2143
  %cond2160 = phi i64 [ %add2152, %cond.true.2143 ], [ %sub2158, %cond.false.2153 ]
  %div2161 = sdiv i64 %cond2160, 8
  %cmp2162 = icmp slt i64 %add2135, %div2161
  br i1 %cmp2162, label %cond.true.2308, label %lor.lhs.false.2288

cond.false.2164:                                  ; preds = %cond.true.2128
  br i1 false, label %cond.true.2165, label %cond.false.2166

cond.true.2165:                                   ; preds = %cond.false.2164
  br i1 false, label %cond.true.2308, label %lor.lhs.false.2288

cond.false.2166:                                  ; preds = %cond.false.2164
  %253 = load i64, i64* %len, align 8
  %mul2167 = mul nsw i64 %253, 2
  %add2168 = add nsw i64 %mul2167, 1
  %add2169 = add nsw i64 0, %add2168
  %mul2170 = mul nsw i64 0, %add2169
  %sub2171 = sub nsw i64 %mul2170, 1
  %cmp2172 = icmp slt i64 %sub2171, 0
  br i1 %cmp2172, label %cond.true.2174, label %cond.false.2195

cond.true.2174:                                   ; preds = %cond.false.2166
  %254 = load i64, i64* %len, align 8
  %mul2175 = mul nsw i64 %254, 2
  %add2176 = add nsw i64 %mul2175, 1
  %add2177 = add nsw i64 0, %add2176
  %mul2178 = mul nsw i64 0, %add2177
  %add2179 = add nsw i64 %mul2178, 0
  %neg2180 = xor i64 %add2179, -1
  %cmp2181 = icmp eq i64 %neg2180, -1
  %conv2182 = zext i1 %cmp2181 to i32
  %sub2183 = sub nsw i32 0, %conv2182
  %conv2184 = sext i32 %sub2183 to i64
  %255 = load i64, i64* %len, align 8
  %mul2185 = mul nsw i64 %255, 2
  %add2186 = add nsw i64 %mul2185, 1
  %add2187 = add nsw i64 0, %add2186
  %mul2188 = mul nsw i64 0, %add2187
  %add2189 = add nsw i64 %mul2188, 1
  %shl2190 = shl i64 %add2189, 62
  %sub2191 = sub nsw i64 %shl2190, 1
  %mul2192 = mul nsw i64 %sub2191, 2
  %add2193 = add nsw i64 %mul2192, 1
  %sub2194 = sub nsw i64 %conv2184, %add2193
  br label %cond.end.2201

cond.false.2195:                                  ; preds = %cond.false.2166
  %256 = load i64, i64* %len, align 8
  %mul2196 = mul nsw i64 %256, 2
  %add2197 = add nsw i64 %mul2196, 1
  %add2198 = add nsw i64 0, %add2197
  %mul2199 = mul nsw i64 0, %add2198
  %add2200 = add nsw i64 %mul2199, 0
  br label %cond.end.2201

cond.end.2201:                                    ; preds = %cond.false.2195, %cond.true.2174
  %cond2202 = phi i64 [ %sub2194, %cond.true.2174 ], [ %add2200, %cond.false.2195 ]
  %div2203 = sdiv i64 %cond2202, 8
  %257 = load i64, i64* %len, align 8
  %mul2204 = mul nsw i64 %257, 2
  %add2205 = add nsw i64 %mul2204, 1
  %cmp2206 = icmp slt i64 %div2203, %add2205
  br i1 %cmp2206, label %cond.true.2308, label %lor.lhs.false.2288

cond.false.2208:                                  ; preds = %lor.lhs.false.2127
  br i1 false, label %cond.true.2209, label %cond.false.2210

cond.true.2209:                                   ; preds = %cond.false.2208
  br i1 false, label %cond.true.2308, label %lor.lhs.false.2288

cond.false.2210:                                  ; preds = %cond.false.2208
  %258 = load i64, i64* %len, align 8
  %mul2211 = mul nsw i64 %258, 2
  %add2212 = add nsw i64 %mul2211, 1
  %cmp2213 = icmp slt i64 %add2212, 0
  br i1 %cmp2213, label %cond.true.2215, label %cond.false.2257

cond.true.2215:                                   ; preds = %cond.false.2210
  %259 = load i64, i64* %len, align 8
  %mul2216 = mul nsw i64 %259, 2
  %add2217 = add nsw i64 %mul2216, 1
  %260 = load i64, i64* %len, align 8
  %mul2218 = mul nsw i64 %260, 2
  %add2219 = add nsw i64 %mul2218, 1
  %add2220 = add nsw i64 0, %add2219
  %mul2221 = mul nsw i64 0, %add2220
  %sub2222 = sub nsw i64 %mul2221, 1
  %cmp2223 = icmp slt i64 %sub2222, 0
  br i1 %cmp2223, label %cond.true.2225, label %cond.false.2246

cond.true.2225:                                   ; preds = %cond.true.2215
  %261 = load i64, i64* %len, align 8
  %mul2226 = mul nsw i64 %261, 2
  %add2227 = add nsw i64 %mul2226, 1
  %add2228 = add nsw i64 0, %add2227
  %mul2229 = mul nsw i64 0, %add2228
  %add2230 = add nsw i64 %mul2229, 0
  %neg2231 = xor i64 %add2230, -1
  %cmp2232 = icmp eq i64 %neg2231, -1
  %conv2233 = zext i1 %cmp2232 to i32
  %sub2234 = sub nsw i32 0, %conv2233
  %conv2235 = sext i32 %sub2234 to i64
  %262 = load i64, i64* %len, align 8
  %mul2236 = mul nsw i64 %262, 2
  %add2237 = add nsw i64 %mul2236, 1
  %add2238 = add nsw i64 0, %add2237
  %mul2239 = mul nsw i64 0, %add2238
  %add2240 = add nsw i64 %mul2239, 1
  %shl2241 = shl i64 %add2240, 62
  %sub2242 = sub nsw i64 %shl2241, 1
  %mul2243 = mul nsw i64 %sub2242, 2
  %add2244 = add nsw i64 %mul2243, 1
  %sub2245 = sub nsw i64 %conv2235, %add2244
  br label %cond.end.2252

cond.false.2246:                                  ; preds = %cond.true.2215
  %263 = load i64, i64* %len, align 8
  %mul2247 = mul nsw i64 %263, 2
  %add2248 = add nsw i64 %mul2247, 1
  %add2249 = add nsw i64 0, %add2248
  %mul2250 = mul nsw i64 0, %add2249
  %add2251 = add nsw i64 %mul2250, 0
  br label %cond.end.2252

cond.end.2252:                                    ; preds = %cond.false.2246, %cond.true.2225
  %cond2253 = phi i64 [ %sub2245, %cond.true.2225 ], [ %add2251, %cond.false.2246 ]
  %div2254 = sdiv i64 %cond2253, 8
  %cmp2255 = icmp slt i64 %add2217, %div2254
  br i1 %cmp2255, label %cond.true.2308, label %lor.lhs.false.2288

cond.false.2257:                                  ; preds = %cond.false.2210
  %264 = load i64, i64* %len, align 8
  %mul2258 = mul nsw i64 %264, 2
  %add2259 = add nsw i64 %mul2258, 1
  %add2260 = add nsw i64 0, %add2259
  %mul2261 = mul nsw i64 0, %add2260
  %sub2262 = sub nsw i64 %mul2261, 1
  %cmp2263 = icmp slt i64 %sub2262, 0
  br i1 %cmp2263, label %cond.true.2265, label %cond.false.2275

cond.true.2265:                                   ; preds = %cond.false.2257
  %265 = load i64, i64* %len, align 8
  %mul2266 = mul nsw i64 %265, 2
  %add2267 = add nsw i64 %mul2266, 1
  %add2268 = add nsw i64 0, %add2267
  %mul2269 = mul nsw i64 0, %add2268
  %add2270 = add nsw i64 %mul2269, 1
  %shl2271 = shl i64 %add2270, 62
  %sub2272 = sub nsw i64 %shl2271, 1
  %mul2273 = mul nsw i64 %sub2272, 2
  %add2274 = add nsw i64 %mul2273, 1
  br label %cond.end.2281

cond.false.2275:                                  ; preds = %cond.false.2257
  %266 = load i64, i64* %len, align 8
  %mul2276 = mul nsw i64 %266, 2
  %add2277 = add nsw i64 %mul2276, 1
  %add2278 = add nsw i64 0, %add2277
  %mul2279 = mul nsw i64 0, %add2278
  %sub2280 = sub nsw i64 %mul2279, 1
  br label %cond.end.2281

cond.end.2281:                                    ; preds = %cond.false.2275, %cond.true.2265
  %cond2282 = phi i64 [ %add2274, %cond.true.2265 ], [ %sub2280, %cond.false.2275 ]
  %div2283 = sdiv i64 %cond2282, 8
  %267 = load i64, i64* %len, align 8
  %mul2284 = mul nsw i64 %267, 2
  %add2285 = add nsw i64 %mul2284, 1
  %cmp2286 = icmp slt i64 %div2283, %add2285
  br i1 %cmp2286, label %cond.true.2308, label %lor.lhs.false.2288

lor.lhs.false.2288:                               ; preds = %cond.end.2281, %cond.end.2252, %cond.true.2209, %cond.end.2201, %cond.true.2165, %cond.end.2159
  %268 = load i64, i64* %len, align 8
  %mul2289 = mul nsw i64 %268, 2
  %add2290 = add nsw i64 %mul2289, 1
  %mul2291 = mul nsw i64 %add2290, 8
  %mul2292 = mul nsw i64 0, %mul2291
  %sub2293 = sub nsw i64 %mul2292, 1
  %cmp2294 = icmp slt i64 %sub2293, 0
  br i1 %cmp2294, label %land.lhs.true.2296, label %lor.lhs.false.2302

land.lhs.true.2296:                               ; preds = %lor.lhs.false.2288
  %269 = load i64, i64* %len, align 8
  %mul2297 = mul nsw i64 %269, 2
  %add2298 = add nsw i64 %mul2297, 1
  %mul2299 = mul nsw i64 %add2298, 8
  %cmp2300 = icmp slt i64 %mul2299, -9223372036854775808
  br i1 %cmp2300, label %cond.true.2308, label %lor.lhs.false.2302

lor.lhs.false.2302:                               ; preds = %land.lhs.true.2296, %lor.lhs.false.2288
  %270 = load i64, i64* %len, align 8
  %mul2303 = mul nsw i64 %270, 2
  %add2304 = add nsw i64 %mul2303, 1
  %mul2305 = mul nsw i64 %add2304, 8
  %cmp2306 = icmp slt i64 9223372036854775807, %mul2305
  br i1 %cmp2306, label %cond.true.2308, label %cond.false.2326

cond.true.2308:                                   ; preds = %lor.lhs.false.2302, %land.lhs.true.2296, %cond.end.2281, %cond.end.2252, %cond.true.2209, %cond.end.2201, %cond.true.2165, %cond.end.2159, %land.lhs.true.2122
  %271 = load i64, i64* %len, align 8
  %mul2309 = mul nsw i64 %271, 2
  %add2310 = add nsw i64 %mul2309, 1
  %mul2311 = mul i64 %add2310, 8
  %cmp2312 = icmp ule i64 %mul2311, 9223372036854775807
  br i1 %cmp2312, label %cond.true.2314, label %cond.false.2318

cond.true.2314:                                   ; preds = %cond.true.2308
  %272 = load i64, i64* %len, align 8
  %mul2315 = mul nsw i64 %272, 2
  %add2316 = add nsw i64 %mul2315, 1
  %mul2317 = mul i64 %add2316, 8
  br label %cond.end.2324

cond.false.2318:                                  ; preds = %cond.true.2308
  %273 = load i64, i64* %len, align 8
  %mul2319 = mul nsw i64 %273, 2
  %add2320 = add nsw i64 %mul2319, 1
  %mul2321 = mul i64 %add2320, 8
  %sub2322 = sub i64 %mul2321, -9223372036854775808
  %add2323 = add nsw i64 %sub2322, -9223372036854775808
  br label %cond.end.2324

cond.end.2324:                                    ; preds = %cond.false.2318, %cond.true.2314
  %cond2325 = phi i64 [ %mul2317, %cond.true.2314 ], [ %add2323, %cond.false.2318 ]
  store i64 %cond2325, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then, label %lor.lhs.false.2867

cond.false.2326:                                  ; preds = %lor.lhs.false.2302
  %274 = load i64, i64* %len, align 8
  %mul2327 = mul nsw i64 %274, 2
  %add2328 = add nsw i64 %mul2327, 1
  %mul2329 = mul i64 %add2328, 8
  %cmp2330 = icmp ule i64 %mul2329, 9223372036854775807
  br i1 %cmp2330, label %cond.true.2332, label %cond.false.2336

cond.true.2332:                                   ; preds = %cond.false.2326
  %275 = load i64, i64* %len, align 8
  %mul2333 = mul nsw i64 %275, 2
  %add2334 = add nsw i64 %mul2333, 1
  %mul2335 = mul i64 %add2334, 8
  br label %cond.end.2342

cond.false.2336:                                  ; preds = %cond.false.2326
  %276 = load i64, i64* %len, align 8
  %mul2337 = mul nsw i64 %276, 2
  %add2338 = add nsw i64 %mul2337, 1
  %mul2339 = mul i64 %add2338, 8
  %sub2340 = sub i64 %mul2339, -9223372036854775808
  %add2341 = add nsw i64 %sub2340, -9223372036854775808
  br label %cond.end.2342

cond.end.2342:                                    ; preds = %cond.false.2336, %cond.true.2332
  %cond2343 = phi i64 [ %mul2335, %cond.true.2332 ], [ %add2341, %cond.false.2336 ]
  store i64 %cond2343, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then, label %lor.lhs.false.2867

cond.false.2344:                                  ; preds = %cond.false.1820
  br i1 false, label %cond.true.2345, label %cond.false.2606

cond.true.2345:                                   ; preds = %cond.false.2344
  %277 = load i64, i64* %len, align 8
  %mul2346 = mul nsw i64 %277, 2
  %add2347 = add nsw i64 %mul2346, 1
  %add2348 = add nsw i64 0, %add2347
  %mul2349 = mul nsw i64 0, %add2348
  %sub2350 = sub nsw i64 %mul2349, 1
  %cmp2351 = icmp slt i64 %sub2350, 0
  br i1 %cmp2351, label %cond.true.2353, label %cond.false.2374

cond.true.2353:                                   ; preds = %cond.true.2345
  %278 = load i64, i64* %len, align 8
  %mul2354 = mul nsw i64 %278, 2
  %add2355 = add nsw i64 %mul2354, 1
  %add2356 = add nsw i64 0, %add2355
  %mul2357 = mul nsw i64 0, %add2356
  %add2358 = add nsw i64 %mul2357, 0
  %neg2359 = xor i64 %add2358, -1
  %cmp2360 = icmp eq i64 %neg2359, -1
  %conv2361 = zext i1 %cmp2360 to i32
  %sub2362 = sub nsw i32 0, %conv2361
  %conv2363 = sext i32 %sub2362 to i64
  %279 = load i64, i64* %len, align 8
  %mul2364 = mul nsw i64 %279, 2
  %add2365 = add nsw i64 %mul2364, 1
  %add2366 = add nsw i64 0, %add2365
  %mul2367 = mul nsw i64 0, %add2366
  %add2368 = add nsw i64 %mul2367, 1
  %shl2369 = shl i64 %add2368, 62
  %sub2370 = sub nsw i64 %shl2369, 1
  %mul2371 = mul nsw i64 %sub2370, 2
  %add2372 = add nsw i64 %mul2371, 1
  %sub2373 = sub nsw i64 %conv2363, %add2372
  br label %cond.end.2380

cond.false.2374:                                  ; preds = %cond.true.2345
  %280 = load i64, i64* %len, align 8
  %mul2375 = mul nsw i64 %280, 2
  %add2376 = add nsw i64 %mul2375, 1
  %add2377 = add nsw i64 0, %add2376
  %mul2378 = mul nsw i64 0, %add2377
  %add2379 = add nsw i64 %mul2378, 0
  br label %cond.end.2380

cond.end.2380:                                    ; preds = %cond.false.2374, %cond.true.2353
  %cond2381 = phi i64 [ %sub2373, %cond.true.2353 ], [ %add2379, %cond.false.2374 ]
  %cmp2382 = icmp eq i64 %cond2381, 0
  br i1 %cmp2382, label %land.lhs.true.2384, label %lor.lhs.false.2389

land.lhs.true.2384:                               ; preds = %cond.end.2380
  %281 = load i64, i64* %len, align 8
  %mul2385 = mul nsw i64 %281, 2
  %add2386 = add nsw i64 %mul2385, 1
  %cmp2387 = icmp slt i64 %add2386, 0
  br i1 %cmp2387, label %cond.true.2570, label %lor.lhs.false.2389

lor.lhs.false.2389:                               ; preds = %land.lhs.true.2384, %cond.end.2380
  br i1 false, label %cond.true.2390, label %cond.false.2470

cond.true.2390:                                   ; preds = %lor.lhs.false.2389
  %282 = load i64, i64* %len, align 8
  %mul2391 = mul nsw i64 %282, 2
  %add2392 = add nsw i64 %mul2391, 1
  %cmp2393 = icmp slt i64 %add2392, 0
  br i1 %cmp2393, label %cond.true.2395, label %cond.false.2426

cond.true.2395:                                   ; preds = %cond.true.2390
  %283 = load i64, i64* %len, align 8
  %mul2396 = mul nsw i64 %283, 2
  %add2397 = add nsw i64 %mul2396, 1
  %284 = load i64, i64* %len, align 8
  %mul2398 = mul nsw i64 %284, 2
  %add2399 = add nsw i64 %mul2398, 1
  %add2400 = add nsw i64 0, %add2399
  %mul2401 = mul nsw i64 0, %add2400
  %sub2402 = sub nsw i64 %mul2401, 1
  %cmp2403 = icmp slt i64 %sub2402, 0
  br i1 %cmp2403, label %cond.true.2405, label %cond.false.2415

cond.true.2405:                                   ; preds = %cond.true.2395
  %285 = load i64, i64* %len, align 8
  %mul2406 = mul nsw i64 %285, 2
  %add2407 = add nsw i64 %mul2406, 1
  %add2408 = add nsw i64 0, %add2407
  %mul2409 = mul nsw i64 0, %add2408
  %add2410 = add nsw i64 %mul2409, 1
  %shl2411 = shl i64 %add2410, 62
  %sub2412 = sub nsw i64 %shl2411, 1
  %mul2413 = mul nsw i64 %sub2412, 2
  %add2414 = add nsw i64 %mul2413, 1
  br label %cond.end.2421

cond.false.2415:                                  ; preds = %cond.true.2395
  %286 = load i64, i64* %len, align 8
  %mul2416 = mul nsw i64 %286, 2
  %add2417 = add nsw i64 %mul2416, 1
  %add2418 = add nsw i64 0, %add2417
  %mul2419 = mul nsw i64 0, %add2418
  %sub2420 = sub nsw i64 %mul2419, 1
  br label %cond.end.2421

cond.end.2421:                                    ; preds = %cond.false.2415, %cond.true.2405
  %cond2422 = phi i64 [ %add2414, %cond.true.2405 ], [ %sub2420, %cond.false.2415 ]
  %div2423 = sdiv i64 %cond2422, 8
  %cmp2424 = icmp slt i64 %add2397, %div2423
  br i1 %cmp2424, label %cond.true.2570, label %lor.lhs.false.2550

cond.false.2426:                                  ; preds = %cond.true.2390
  br i1 false, label %cond.true.2427, label %cond.false.2428

cond.true.2427:                                   ; preds = %cond.false.2426
  br i1 false, label %cond.true.2570, label %lor.lhs.false.2550

cond.false.2428:                                  ; preds = %cond.false.2426
  %287 = load i64, i64* %len, align 8
  %mul2429 = mul nsw i64 %287, 2
  %add2430 = add nsw i64 %mul2429, 1
  %add2431 = add nsw i64 0, %add2430
  %mul2432 = mul nsw i64 0, %add2431
  %sub2433 = sub nsw i64 %mul2432, 1
  %cmp2434 = icmp slt i64 %sub2433, 0
  br i1 %cmp2434, label %cond.true.2436, label %cond.false.2457

cond.true.2436:                                   ; preds = %cond.false.2428
  %288 = load i64, i64* %len, align 8
  %mul2437 = mul nsw i64 %288, 2
  %add2438 = add nsw i64 %mul2437, 1
  %add2439 = add nsw i64 0, %add2438
  %mul2440 = mul nsw i64 0, %add2439
  %add2441 = add nsw i64 %mul2440, 0
  %neg2442 = xor i64 %add2441, -1
  %cmp2443 = icmp eq i64 %neg2442, -1
  %conv2444 = zext i1 %cmp2443 to i32
  %sub2445 = sub nsw i32 0, %conv2444
  %conv2446 = sext i32 %sub2445 to i64
  %289 = load i64, i64* %len, align 8
  %mul2447 = mul nsw i64 %289, 2
  %add2448 = add nsw i64 %mul2447, 1
  %add2449 = add nsw i64 0, %add2448
  %mul2450 = mul nsw i64 0, %add2449
  %add2451 = add nsw i64 %mul2450, 1
  %shl2452 = shl i64 %add2451, 62
  %sub2453 = sub nsw i64 %shl2452, 1
  %mul2454 = mul nsw i64 %sub2453, 2
  %add2455 = add nsw i64 %mul2454, 1
  %sub2456 = sub nsw i64 %conv2446, %add2455
  br label %cond.end.2463

cond.false.2457:                                  ; preds = %cond.false.2428
  %290 = load i64, i64* %len, align 8
  %mul2458 = mul nsw i64 %290, 2
  %add2459 = add nsw i64 %mul2458, 1
  %add2460 = add nsw i64 0, %add2459
  %mul2461 = mul nsw i64 0, %add2460
  %add2462 = add nsw i64 %mul2461, 0
  br label %cond.end.2463

cond.end.2463:                                    ; preds = %cond.false.2457, %cond.true.2436
  %cond2464 = phi i64 [ %sub2456, %cond.true.2436 ], [ %add2462, %cond.false.2457 ]
  %div2465 = sdiv i64 %cond2464, 8
  %291 = load i64, i64* %len, align 8
  %mul2466 = mul nsw i64 %291, 2
  %add2467 = add nsw i64 %mul2466, 1
  %cmp2468 = icmp slt i64 %div2465, %add2467
  br i1 %cmp2468, label %cond.true.2570, label %lor.lhs.false.2550

cond.false.2470:                                  ; preds = %lor.lhs.false.2389
  br i1 false, label %cond.true.2471, label %cond.false.2472

cond.true.2471:                                   ; preds = %cond.false.2470
  br i1 false, label %cond.true.2570, label %lor.lhs.false.2550

cond.false.2472:                                  ; preds = %cond.false.2470
  %292 = load i64, i64* %len, align 8
  %mul2473 = mul nsw i64 %292, 2
  %add2474 = add nsw i64 %mul2473, 1
  %cmp2475 = icmp slt i64 %add2474, 0
  br i1 %cmp2475, label %cond.true.2477, label %cond.false.2519

cond.true.2477:                                   ; preds = %cond.false.2472
  %293 = load i64, i64* %len, align 8
  %mul2478 = mul nsw i64 %293, 2
  %add2479 = add nsw i64 %mul2478, 1
  %294 = load i64, i64* %len, align 8
  %mul2480 = mul nsw i64 %294, 2
  %add2481 = add nsw i64 %mul2480, 1
  %add2482 = add nsw i64 0, %add2481
  %mul2483 = mul nsw i64 0, %add2482
  %sub2484 = sub nsw i64 %mul2483, 1
  %cmp2485 = icmp slt i64 %sub2484, 0
  br i1 %cmp2485, label %cond.true.2487, label %cond.false.2508

cond.true.2487:                                   ; preds = %cond.true.2477
  %295 = load i64, i64* %len, align 8
  %mul2488 = mul nsw i64 %295, 2
  %add2489 = add nsw i64 %mul2488, 1
  %add2490 = add nsw i64 0, %add2489
  %mul2491 = mul nsw i64 0, %add2490
  %add2492 = add nsw i64 %mul2491, 0
  %neg2493 = xor i64 %add2492, -1
  %cmp2494 = icmp eq i64 %neg2493, -1
  %conv2495 = zext i1 %cmp2494 to i32
  %sub2496 = sub nsw i32 0, %conv2495
  %conv2497 = sext i32 %sub2496 to i64
  %296 = load i64, i64* %len, align 8
  %mul2498 = mul nsw i64 %296, 2
  %add2499 = add nsw i64 %mul2498, 1
  %add2500 = add nsw i64 0, %add2499
  %mul2501 = mul nsw i64 0, %add2500
  %add2502 = add nsw i64 %mul2501, 1
  %shl2503 = shl i64 %add2502, 62
  %sub2504 = sub nsw i64 %shl2503, 1
  %mul2505 = mul nsw i64 %sub2504, 2
  %add2506 = add nsw i64 %mul2505, 1
  %sub2507 = sub nsw i64 %conv2497, %add2506
  br label %cond.end.2514

cond.false.2508:                                  ; preds = %cond.true.2477
  %297 = load i64, i64* %len, align 8
  %mul2509 = mul nsw i64 %297, 2
  %add2510 = add nsw i64 %mul2509, 1
  %add2511 = add nsw i64 0, %add2510
  %mul2512 = mul nsw i64 0, %add2511
  %add2513 = add nsw i64 %mul2512, 0
  br label %cond.end.2514

cond.end.2514:                                    ; preds = %cond.false.2508, %cond.true.2487
  %cond2515 = phi i64 [ %sub2507, %cond.true.2487 ], [ %add2513, %cond.false.2508 ]
  %div2516 = sdiv i64 %cond2515, 8
  %cmp2517 = icmp slt i64 %add2479, %div2516
  br i1 %cmp2517, label %cond.true.2570, label %lor.lhs.false.2550

cond.false.2519:                                  ; preds = %cond.false.2472
  %298 = load i64, i64* %len, align 8
  %mul2520 = mul nsw i64 %298, 2
  %add2521 = add nsw i64 %mul2520, 1
  %add2522 = add nsw i64 0, %add2521
  %mul2523 = mul nsw i64 0, %add2522
  %sub2524 = sub nsw i64 %mul2523, 1
  %cmp2525 = icmp slt i64 %sub2524, 0
  br i1 %cmp2525, label %cond.true.2527, label %cond.false.2537

cond.true.2527:                                   ; preds = %cond.false.2519
  %299 = load i64, i64* %len, align 8
  %mul2528 = mul nsw i64 %299, 2
  %add2529 = add nsw i64 %mul2528, 1
  %add2530 = add nsw i64 0, %add2529
  %mul2531 = mul nsw i64 0, %add2530
  %add2532 = add nsw i64 %mul2531, 1
  %shl2533 = shl i64 %add2532, 62
  %sub2534 = sub nsw i64 %shl2533, 1
  %mul2535 = mul nsw i64 %sub2534, 2
  %add2536 = add nsw i64 %mul2535, 1
  br label %cond.end.2543

cond.false.2537:                                  ; preds = %cond.false.2519
  %300 = load i64, i64* %len, align 8
  %mul2538 = mul nsw i64 %300, 2
  %add2539 = add nsw i64 %mul2538, 1
  %add2540 = add nsw i64 0, %add2539
  %mul2541 = mul nsw i64 0, %add2540
  %sub2542 = sub nsw i64 %mul2541, 1
  br label %cond.end.2543

cond.end.2543:                                    ; preds = %cond.false.2537, %cond.true.2527
  %cond2544 = phi i64 [ %add2536, %cond.true.2527 ], [ %sub2542, %cond.false.2537 ]
  %div2545 = sdiv i64 %cond2544, 8
  %301 = load i64, i64* %len, align 8
  %mul2546 = mul nsw i64 %301, 2
  %add2547 = add nsw i64 %mul2546, 1
  %cmp2548 = icmp slt i64 %div2545, %add2547
  br i1 %cmp2548, label %cond.true.2570, label %lor.lhs.false.2550

lor.lhs.false.2550:                               ; preds = %cond.end.2543, %cond.end.2514, %cond.true.2471, %cond.end.2463, %cond.true.2427, %cond.end.2421
  %302 = load i64, i64* %len, align 8
  %mul2551 = mul nsw i64 %302, 2
  %add2552 = add nsw i64 %mul2551, 1
  %mul2553 = mul nsw i64 %add2552, 8
  %mul2554 = mul nsw i64 0, %mul2553
  %sub2555 = sub nsw i64 %mul2554, 1
  %cmp2556 = icmp slt i64 %sub2555, 0
  br i1 %cmp2556, label %land.lhs.true.2558, label %lor.lhs.false.2564

land.lhs.true.2558:                               ; preds = %lor.lhs.false.2550
  %303 = load i64, i64* %len, align 8
  %mul2559 = mul nsw i64 %303, 2
  %add2560 = add nsw i64 %mul2559, 1
  %mul2561 = mul nsw i64 %add2560, 8
  %cmp2562 = icmp slt i64 %mul2561, -9223372036854775808
  br i1 %cmp2562, label %cond.true.2570, label %lor.lhs.false.2564

lor.lhs.false.2564:                               ; preds = %land.lhs.true.2558, %lor.lhs.false.2550
  %304 = load i64, i64* %len, align 8
  %mul2565 = mul nsw i64 %304, 2
  %add2566 = add nsw i64 %mul2565, 1
  %mul2567 = mul nsw i64 %add2566, 8
  %cmp2568 = icmp slt i64 9223372036854775807, %mul2567
  br i1 %cmp2568, label %cond.true.2570, label %cond.false.2588

cond.true.2570:                                   ; preds = %lor.lhs.false.2564, %land.lhs.true.2558, %cond.end.2543, %cond.end.2514, %cond.true.2471, %cond.end.2463, %cond.true.2427, %cond.end.2421, %land.lhs.true.2384
  %305 = load i64, i64* %len, align 8
  %mul2571 = mul nsw i64 %305, 2
  %add2572 = add nsw i64 %mul2571, 1
  %mul2573 = mul i64 %add2572, 8
  %cmp2574 = icmp ule i64 %mul2573, 9223372036854775807
  br i1 %cmp2574, label %cond.true.2576, label %cond.false.2580

cond.true.2576:                                   ; preds = %cond.true.2570
  %306 = load i64, i64* %len, align 8
  %mul2577 = mul nsw i64 %306, 2
  %add2578 = add nsw i64 %mul2577, 1
  %mul2579 = mul i64 %add2578, 8
  br label %cond.end.2586

cond.false.2580:                                  ; preds = %cond.true.2570
  %307 = load i64, i64* %len, align 8
  %mul2581 = mul nsw i64 %307, 2
  %add2582 = add nsw i64 %mul2581, 1
  %mul2583 = mul i64 %add2582, 8
  %sub2584 = sub i64 %mul2583, -9223372036854775808
  %add2585 = add nsw i64 %sub2584, -9223372036854775808
  br label %cond.end.2586

cond.end.2586:                                    ; preds = %cond.false.2580, %cond.true.2576
  %cond2587 = phi i64 [ %mul2579, %cond.true.2576 ], [ %add2585, %cond.false.2580 ]
  store i64 %cond2587, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then, label %lor.lhs.false.2867

cond.false.2588:                                  ; preds = %lor.lhs.false.2564
  %308 = load i64, i64* %len, align 8
  %mul2589 = mul nsw i64 %308, 2
  %add2590 = add nsw i64 %mul2589, 1
  %mul2591 = mul i64 %add2590, 8
  %cmp2592 = icmp ule i64 %mul2591, 9223372036854775807
  br i1 %cmp2592, label %cond.true.2594, label %cond.false.2598

cond.true.2594:                                   ; preds = %cond.false.2588
  %309 = load i64, i64* %len, align 8
  %mul2595 = mul nsw i64 %309, 2
  %add2596 = add nsw i64 %mul2595, 1
  %mul2597 = mul i64 %add2596, 8
  br label %cond.end.2604

cond.false.2598:                                  ; preds = %cond.false.2588
  %310 = load i64, i64* %len, align 8
  %mul2599 = mul nsw i64 %310, 2
  %add2600 = add nsw i64 %mul2599, 1
  %mul2601 = mul i64 %add2600, 8
  %sub2602 = sub i64 %mul2601, -9223372036854775808
  %add2603 = add nsw i64 %sub2602, -9223372036854775808
  br label %cond.end.2604

cond.end.2604:                                    ; preds = %cond.false.2598, %cond.true.2594
  %cond2605 = phi i64 [ %mul2597, %cond.true.2594 ], [ %add2603, %cond.false.2598 ]
  store i64 %cond2605, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then, label %lor.lhs.false.2867

cond.false.2606:                                  ; preds = %cond.false.2344
  %311 = load i64, i64* %len, align 8
  %mul2607 = mul nsw i64 %311, 2
  %add2608 = add nsw i64 %mul2607, 1
  %add2609 = add nsw i64 0, %add2608
  %mul2610 = mul nsw i64 0, %add2609
  %sub2611 = sub nsw i64 %mul2610, 1
  %cmp2612 = icmp slt i64 %sub2611, 0
  br i1 %cmp2612, label %cond.true.2614, label %cond.false.2635

cond.true.2614:                                   ; preds = %cond.false.2606
  %312 = load i64, i64* %len, align 8
  %mul2615 = mul nsw i64 %312, 2
  %add2616 = add nsw i64 %mul2615, 1
  %add2617 = add nsw i64 0, %add2616
  %mul2618 = mul nsw i64 0, %add2617
  %add2619 = add nsw i64 %mul2618, 0
  %neg2620 = xor i64 %add2619, -1
  %cmp2621 = icmp eq i64 %neg2620, -1
  %conv2622 = zext i1 %cmp2621 to i32
  %sub2623 = sub nsw i32 0, %conv2622
  %conv2624 = sext i32 %sub2623 to i64
  %313 = load i64, i64* %len, align 8
  %mul2625 = mul nsw i64 %313, 2
  %add2626 = add nsw i64 %mul2625, 1
  %add2627 = add nsw i64 0, %add2626
  %mul2628 = mul nsw i64 0, %add2627
  %add2629 = add nsw i64 %mul2628, 1
  %shl2630 = shl i64 %add2629, 62
  %sub2631 = sub nsw i64 %shl2630, 1
  %mul2632 = mul nsw i64 %sub2631, 2
  %add2633 = add nsw i64 %mul2632, 1
  %sub2634 = sub nsw i64 %conv2624, %add2633
  br label %cond.end.2641

cond.false.2635:                                  ; preds = %cond.false.2606
  %314 = load i64, i64* %len, align 8
  %mul2636 = mul nsw i64 %314, 2
  %add2637 = add nsw i64 %mul2636, 1
  %add2638 = add nsw i64 0, %add2637
  %mul2639 = mul nsw i64 0, %add2638
  %add2640 = add nsw i64 %mul2639, 0
  br label %cond.end.2641

cond.end.2641:                                    ; preds = %cond.false.2635, %cond.true.2614
  %cond2642 = phi i64 [ %sub2634, %cond.true.2614 ], [ %add2640, %cond.false.2635 ]
  %cmp2643 = icmp eq i64 %cond2642, 0
  br i1 %cmp2643, label %land.lhs.true.2645, label %lor.lhs.false.2650

land.lhs.true.2645:                               ; preds = %cond.end.2641
  %315 = load i64, i64* %len, align 8
  %mul2646 = mul nsw i64 %315, 2
  %add2647 = add nsw i64 %mul2646, 1
  %cmp2648 = icmp slt i64 %add2647, 0
  br i1 %cmp2648, label %cond.true.2831, label %lor.lhs.false.2650

lor.lhs.false.2650:                               ; preds = %land.lhs.true.2645, %cond.end.2641
  br i1 false, label %cond.true.2651, label %cond.false.2731

cond.true.2651:                                   ; preds = %lor.lhs.false.2650
  %316 = load i64, i64* %len, align 8
  %mul2652 = mul nsw i64 %316, 2
  %add2653 = add nsw i64 %mul2652, 1
  %cmp2654 = icmp slt i64 %add2653, 0
  br i1 %cmp2654, label %cond.true.2656, label %cond.false.2687

cond.true.2656:                                   ; preds = %cond.true.2651
  %317 = load i64, i64* %len, align 8
  %mul2657 = mul nsw i64 %317, 2
  %add2658 = add nsw i64 %mul2657, 1
  %318 = load i64, i64* %len, align 8
  %mul2659 = mul nsw i64 %318, 2
  %add2660 = add nsw i64 %mul2659, 1
  %add2661 = add nsw i64 0, %add2660
  %mul2662 = mul nsw i64 0, %add2661
  %sub2663 = sub nsw i64 %mul2662, 1
  %cmp2664 = icmp slt i64 %sub2663, 0
  br i1 %cmp2664, label %cond.true.2666, label %cond.false.2676

cond.true.2666:                                   ; preds = %cond.true.2656
  %319 = load i64, i64* %len, align 8
  %mul2667 = mul nsw i64 %319, 2
  %add2668 = add nsw i64 %mul2667, 1
  %add2669 = add nsw i64 0, %add2668
  %mul2670 = mul nsw i64 0, %add2669
  %add2671 = add nsw i64 %mul2670, 1
  %shl2672 = shl i64 %add2671, 62
  %sub2673 = sub nsw i64 %shl2672, 1
  %mul2674 = mul nsw i64 %sub2673, 2
  %add2675 = add nsw i64 %mul2674, 1
  br label %cond.end.2682

cond.false.2676:                                  ; preds = %cond.true.2656
  %320 = load i64, i64* %len, align 8
  %mul2677 = mul nsw i64 %320, 2
  %add2678 = add nsw i64 %mul2677, 1
  %add2679 = add nsw i64 0, %add2678
  %mul2680 = mul nsw i64 0, %add2679
  %sub2681 = sub nsw i64 %mul2680, 1
  br label %cond.end.2682

cond.end.2682:                                    ; preds = %cond.false.2676, %cond.true.2666
  %cond2683 = phi i64 [ %add2675, %cond.true.2666 ], [ %sub2681, %cond.false.2676 ]
  %div2684 = sdiv i64 %cond2683, 8
  %cmp2685 = icmp slt i64 %add2658, %div2684
  br i1 %cmp2685, label %cond.true.2831, label %lor.lhs.false.2811

cond.false.2687:                                  ; preds = %cond.true.2651
  br i1 false, label %cond.true.2688, label %cond.false.2689

cond.true.2688:                                   ; preds = %cond.false.2687
  br i1 false, label %cond.true.2831, label %lor.lhs.false.2811

cond.false.2689:                                  ; preds = %cond.false.2687
  %321 = load i64, i64* %len, align 8
  %mul2690 = mul nsw i64 %321, 2
  %add2691 = add nsw i64 %mul2690, 1
  %add2692 = add nsw i64 0, %add2691
  %mul2693 = mul nsw i64 0, %add2692
  %sub2694 = sub nsw i64 %mul2693, 1
  %cmp2695 = icmp slt i64 %sub2694, 0
  br i1 %cmp2695, label %cond.true.2697, label %cond.false.2718

cond.true.2697:                                   ; preds = %cond.false.2689
  %322 = load i64, i64* %len, align 8
  %mul2698 = mul nsw i64 %322, 2
  %add2699 = add nsw i64 %mul2698, 1
  %add2700 = add nsw i64 0, %add2699
  %mul2701 = mul nsw i64 0, %add2700
  %add2702 = add nsw i64 %mul2701, 0
  %neg2703 = xor i64 %add2702, -1
  %cmp2704 = icmp eq i64 %neg2703, -1
  %conv2705 = zext i1 %cmp2704 to i32
  %sub2706 = sub nsw i32 0, %conv2705
  %conv2707 = sext i32 %sub2706 to i64
  %323 = load i64, i64* %len, align 8
  %mul2708 = mul nsw i64 %323, 2
  %add2709 = add nsw i64 %mul2708, 1
  %add2710 = add nsw i64 0, %add2709
  %mul2711 = mul nsw i64 0, %add2710
  %add2712 = add nsw i64 %mul2711, 1
  %shl2713 = shl i64 %add2712, 62
  %sub2714 = sub nsw i64 %shl2713, 1
  %mul2715 = mul nsw i64 %sub2714, 2
  %add2716 = add nsw i64 %mul2715, 1
  %sub2717 = sub nsw i64 %conv2707, %add2716
  br label %cond.end.2724

cond.false.2718:                                  ; preds = %cond.false.2689
  %324 = load i64, i64* %len, align 8
  %mul2719 = mul nsw i64 %324, 2
  %add2720 = add nsw i64 %mul2719, 1
  %add2721 = add nsw i64 0, %add2720
  %mul2722 = mul nsw i64 0, %add2721
  %add2723 = add nsw i64 %mul2722, 0
  br label %cond.end.2724

cond.end.2724:                                    ; preds = %cond.false.2718, %cond.true.2697
  %cond2725 = phi i64 [ %sub2717, %cond.true.2697 ], [ %add2723, %cond.false.2718 ]
  %div2726 = sdiv i64 %cond2725, 8
  %325 = load i64, i64* %len, align 8
  %mul2727 = mul nsw i64 %325, 2
  %add2728 = add nsw i64 %mul2727, 1
  %cmp2729 = icmp slt i64 %div2726, %add2728
  br i1 %cmp2729, label %cond.true.2831, label %lor.lhs.false.2811

cond.false.2731:                                  ; preds = %lor.lhs.false.2650
  br i1 false, label %cond.true.2732, label %cond.false.2733

cond.true.2732:                                   ; preds = %cond.false.2731
  br i1 false, label %cond.true.2831, label %lor.lhs.false.2811

cond.false.2733:                                  ; preds = %cond.false.2731
  %326 = load i64, i64* %len, align 8
  %mul2734 = mul nsw i64 %326, 2
  %add2735 = add nsw i64 %mul2734, 1
  %cmp2736 = icmp slt i64 %add2735, 0
  br i1 %cmp2736, label %cond.true.2738, label %cond.false.2780

cond.true.2738:                                   ; preds = %cond.false.2733
  %327 = load i64, i64* %len, align 8
  %mul2739 = mul nsw i64 %327, 2
  %add2740 = add nsw i64 %mul2739, 1
  %328 = load i64, i64* %len, align 8
  %mul2741 = mul nsw i64 %328, 2
  %add2742 = add nsw i64 %mul2741, 1
  %add2743 = add nsw i64 0, %add2742
  %mul2744 = mul nsw i64 0, %add2743
  %sub2745 = sub nsw i64 %mul2744, 1
  %cmp2746 = icmp slt i64 %sub2745, 0
  br i1 %cmp2746, label %cond.true.2748, label %cond.false.2769

cond.true.2748:                                   ; preds = %cond.true.2738
  %329 = load i64, i64* %len, align 8
  %mul2749 = mul nsw i64 %329, 2
  %add2750 = add nsw i64 %mul2749, 1
  %add2751 = add nsw i64 0, %add2750
  %mul2752 = mul nsw i64 0, %add2751
  %add2753 = add nsw i64 %mul2752, 0
  %neg2754 = xor i64 %add2753, -1
  %cmp2755 = icmp eq i64 %neg2754, -1
  %conv2756 = zext i1 %cmp2755 to i32
  %sub2757 = sub nsw i32 0, %conv2756
  %conv2758 = sext i32 %sub2757 to i64
  %330 = load i64, i64* %len, align 8
  %mul2759 = mul nsw i64 %330, 2
  %add2760 = add nsw i64 %mul2759, 1
  %add2761 = add nsw i64 0, %add2760
  %mul2762 = mul nsw i64 0, %add2761
  %add2763 = add nsw i64 %mul2762, 1
  %shl2764 = shl i64 %add2763, 62
  %sub2765 = sub nsw i64 %shl2764, 1
  %mul2766 = mul nsw i64 %sub2765, 2
  %add2767 = add nsw i64 %mul2766, 1
  %sub2768 = sub nsw i64 %conv2758, %add2767
  br label %cond.end.2775

cond.false.2769:                                  ; preds = %cond.true.2738
  %331 = load i64, i64* %len, align 8
  %mul2770 = mul nsw i64 %331, 2
  %add2771 = add nsw i64 %mul2770, 1
  %add2772 = add nsw i64 0, %add2771
  %mul2773 = mul nsw i64 0, %add2772
  %add2774 = add nsw i64 %mul2773, 0
  br label %cond.end.2775

cond.end.2775:                                    ; preds = %cond.false.2769, %cond.true.2748
  %cond2776 = phi i64 [ %sub2768, %cond.true.2748 ], [ %add2774, %cond.false.2769 ]
  %div2777 = sdiv i64 %cond2776, 8
  %cmp2778 = icmp slt i64 %add2740, %div2777
  br i1 %cmp2778, label %cond.true.2831, label %lor.lhs.false.2811

cond.false.2780:                                  ; preds = %cond.false.2733
  %332 = load i64, i64* %len, align 8
  %mul2781 = mul nsw i64 %332, 2
  %add2782 = add nsw i64 %mul2781, 1
  %add2783 = add nsw i64 0, %add2782
  %mul2784 = mul nsw i64 0, %add2783
  %sub2785 = sub nsw i64 %mul2784, 1
  %cmp2786 = icmp slt i64 %sub2785, 0
  br i1 %cmp2786, label %cond.true.2788, label %cond.false.2798

cond.true.2788:                                   ; preds = %cond.false.2780
  %333 = load i64, i64* %len, align 8
  %mul2789 = mul nsw i64 %333, 2
  %add2790 = add nsw i64 %mul2789, 1
  %add2791 = add nsw i64 0, %add2790
  %mul2792 = mul nsw i64 0, %add2791
  %add2793 = add nsw i64 %mul2792, 1
  %shl2794 = shl i64 %add2793, 62
  %sub2795 = sub nsw i64 %shl2794, 1
  %mul2796 = mul nsw i64 %sub2795, 2
  %add2797 = add nsw i64 %mul2796, 1
  br label %cond.end.2804

cond.false.2798:                                  ; preds = %cond.false.2780
  %334 = load i64, i64* %len, align 8
  %mul2799 = mul nsw i64 %334, 2
  %add2800 = add nsw i64 %mul2799, 1
  %add2801 = add nsw i64 0, %add2800
  %mul2802 = mul nsw i64 0, %add2801
  %sub2803 = sub nsw i64 %mul2802, 1
  br label %cond.end.2804

cond.end.2804:                                    ; preds = %cond.false.2798, %cond.true.2788
  %cond2805 = phi i64 [ %add2797, %cond.true.2788 ], [ %sub2803, %cond.false.2798 ]
  %div2806 = sdiv i64 %cond2805, 8
  %335 = load i64, i64* %len, align 8
  %mul2807 = mul nsw i64 %335, 2
  %add2808 = add nsw i64 %mul2807, 1
  %cmp2809 = icmp slt i64 %div2806, %add2808
  br i1 %cmp2809, label %cond.true.2831, label %lor.lhs.false.2811

lor.lhs.false.2811:                               ; preds = %cond.end.2804, %cond.end.2775, %cond.true.2732, %cond.end.2724, %cond.true.2688, %cond.end.2682
  %336 = load i64, i64* %len, align 8
  %mul2812 = mul nsw i64 %336, 2
  %add2813 = add nsw i64 %mul2812, 1
  %mul2814 = mul nsw i64 %add2813, 8
  %mul2815 = mul nsw i64 0, %mul2814
  %sub2816 = sub nsw i64 %mul2815, 1
  %cmp2817 = icmp slt i64 %sub2816, 0
  br i1 %cmp2817, label %land.lhs.true.2819, label %lor.lhs.false.2825

land.lhs.true.2819:                               ; preds = %lor.lhs.false.2811
  %337 = load i64, i64* %len, align 8
  %mul2820 = mul nsw i64 %337, 2
  %add2821 = add nsw i64 %mul2820, 1
  %mul2822 = mul nsw i64 %add2821, 8
  %cmp2823 = icmp slt i64 %mul2822, -9223372036854775808
  br i1 %cmp2823, label %cond.true.2831, label %lor.lhs.false.2825

lor.lhs.false.2825:                               ; preds = %land.lhs.true.2819, %lor.lhs.false.2811
  %338 = load i64, i64* %len, align 8
  %mul2826 = mul nsw i64 %338, 2
  %add2827 = add nsw i64 %mul2826, 1
  %mul2828 = mul nsw i64 %add2827, 8
  %cmp2829 = icmp slt i64 9223372036854775807, %mul2828
  br i1 %cmp2829, label %cond.true.2831, label %cond.false.2849

cond.true.2831:                                   ; preds = %lor.lhs.false.2825, %land.lhs.true.2819, %cond.end.2804, %cond.end.2775, %cond.true.2732, %cond.end.2724, %cond.true.2688, %cond.end.2682, %land.lhs.true.2645
  %339 = load i64, i64* %len, align 8
  %mul2832 = mul nsw i64 %339, 2
  %add2833 = add nsw i64 %mul2832, 1
  %mul2834 = mul i64 %add2833, 8
  %cmp2835 = icmp ule i64 %mul2834, 9223372036854775807
  br i1 %cmp2835, label %cond.true.2837, label %cond.false.2841

cond.true.2837:                                   ; preds = %cond.true.2831
  %340 = load i64, i64* %len, align 8
  %mul2838 = mul nsw i64 %340, 2
  %add2839 = add nsw i64 %mul2838, 1
  %mul2840 = mul i64 %add2839, 8
  br label %cond.end.2847

cond.false.2841:                                  ; preds = %cond.true.2831
  %341 = load i64, i64* %len, align 8
  %mul2842 = mul nsw i64 %341, 2
  %add2843 = add nsw i64 %mul2842, 1
  %mul2844 = mul i64 %add2843, 8
  %sub2845 = sub i64 %mul2844, -9223372036854775808
  %add2846 = add nsw i64 %sub2845, -9223372036854775808
  br label %cond.end.2847

cond.end.2847:                                    ; preds = %cond.false.2841, %cond.true.2837
  %cond2848 = phi i64 [ %mul2840, %cond.true.2837 ], [ %add2846, %cond.false.2841 ]
  store i64 %cond2848, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then, label %lor.lhs.false.2867

cond.false.2849:                                  ; preds = %lor.lhs.false.2825
  %342 = load i64, i64* %len, align 8
  %mul2850 = mul nsw i64 %342, 2
  %add2851 = add nsw i64 %mul2850, 1
  %mul2852 = mul i64 %add2851, 8
  %cmp2853 = icmp ule i64 %mul2852, 9223372036854775807
  br i1 %cmp2853, label %cond.true.2855, label %cond.false.2859

cond.true.2855:                                   ; preds = %cond.false.2849
  %343 = load i64, i64* %len, align 8
  %mul2856 = mul nsw i64 %343, 2
  %add2857 = add nsw i64 %mul2856, 1
  %mul2858 = mul i64 %add2857, 8
  br label %cond.end.2865

cond.false.2859:                                  ; preds = %cond.false.2849
  %344 = load i64, i64* %len, align 8
  %mul2860 = mul nsw i64 %344, 2
  %add2861 = add nsw i64 %mul2860, 1
  %mul2862 = mul i64 %add2861, 8
  %sub2863 = sub i64 %mul2862, -9223372036854775808
  %add2864 = add nsw i64 %sub2863, -9223372036854775808
  br label %cond.end.2865

cond.end.2865:                                    ; preds = %cond.false.2859, %cond.true.2855
  %cond2866 = phi i64 [ %mul2858, %cond.true.2855 ], [ %add2864, %cond.false.2859 ]
  store i64 %cond2866, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then, label %lor.lhs.false.2867

lor.lhs.false.2867:                               ; preds = %cond.end.2865, %cond.end.2847, %cond.end.2604, %cond.end.2586, %cond.end.2342, %cond.end.2324, %cond.end.2081, %cond.end.2063, %cond.end.1817, %cond.end.1795, %cond.end.1548, %cond.end.1526, %cond.end.1252, %cond.end.1223, %cond.end.969, %cond.end.940, %cond.end.631, %cond.end.602, %cond.end.348, %cond.end.319
  %345 = load i64, i64* %alloca_nbytes, align 8
  %cmp2868 = icmp ult i64 -1, %345
  br i1 %cmp2868, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.2867, %cond.end.2865, %cond.end.2847, %cond.end.2604, %cond.end.2586, %cond.end.2342, %cond.end.2324, %cond.end.2081, %cond.end.2063, %cond.end.1817, %cond.end.1795, %cond.end.1548, %cond.end.1526, %cond.end.1252, %cond.end.1223, %cond.end.969, %cond.end.940, %cond.end.631, %cond.end.602, %cond.end.348, %cond.end.319
  call void @memory_full(i64 -1) #7
  unreachable

if.else:                                          ; preds = %lor.lhs.false.2867
  %346 = load i64, i64* %alloca_nbytes, align 8
  %347 = load i64, i64* %sa_avail, align 8
  %cmp2870 = icmp sle i64 %346, %347
  br i1 %cmp2870, label %if.then.2872, label %if.else.2874

if.then.2872:                                     ; preds = %if.else
  %348 = load i64, i64* %alloca_nbytes, align 8
  %349 = load i64, i64* %sa_avail, align 8
  %sub2873 = sub nsw i64 %349, %348
  store i64 %sub2873, i64* %sa_avail, align 8
  %350 = load i64, i64* %alloca_nbytes, align 8
  %351 = alloca i8, i64 %350
  %352 = bitcast i8* %351 to i64*
  store i64* %352, i64** %args, align 8
  br label %if.end

if.else.2874:                                     ; preds = %if.else
  %353 = load i64, i64* %alloca_nbytes, align 8
  %call2875 = call noalias i8* @xmalloc(i64 %353)
  %354 = bitcast i8* %call2875 to i64*
  store i64* %354, i64** %args, align 8
  %355 = load i64*, i64** %args, align 8
  %356 = load i64, i64* %len, align 8
  %mul2876 = mul nsw i64 %356, 2
  %add2877 = add nsw i64 %mul2876, 1
  %call2878 = call i64 @make_save_memory(i64* %355, i64 %add2877)
  store i64 %call2878, i64* %arg_, align 8
  store i8 1, i8* %sa_must_free, align 1
  %357 = load i64, i64* %arg_, align 8
  call void @record_unwind_protect(void (i64)* @free_save_value, i64 %357)
  br label %if.end

if.end:                                           ; preds = %if.else.2874, %if.then.2872
  br label %if.end.2879

if.end.2879:                                      ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %if.end.2879
  %358 = load i64, i64* %one_of, align 8
  %359 = load i64, i64* %i, align 8
  %inc = add nsw i64 %359, 1
  store i64 %inc, i64* %i, align 8
  %360 = load i64*, i64** %args, align 8
  %arrayidx = getelementptr inbounds i64, i64* %360, i64 %359
  store i64 %358, i64* %arrayidx, align 8
  %361 = load i64, i64* %choice.addr, align 8
  store i64 %361, i64* %obj, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %362 = load i64, i64* %obj, align 8
  %call2880 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp2881 = icmp eq i64 %362, %call2880
  %lnot = xor i1 %cmp2881, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %363 = load i64, i64* %obj, align 8
  %sub2883 = sub nsw i64 %363, 3
  %364 = inttoptr i64 %sub2883 to i8*
  %365 = bitcast i8* %364 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %365, i32 0, i32 0
  %366 = load i64, i64* %car, align 8
  %call2884 = call i64 @SYMBOL_NAME(i64 %366)
  %367 = load i64, i64* %i, align 8
  %inc2885 = add nsw i64 %367, 1
  store i64 %inc2885, i64* %i, align 8
  %368 = load i64*, i64** %args, align 8
  %arrayidx2886 = getelementptr inbounds i64, i64* %368, i64 %367
  store i64 %call2884, i64* %arrayidx2886, align 8
  %369 = load i64, i64* %obj, align 8
  %sub2887 = sub nsw i64 %369, 3
  %370 = inttoptr i64 %sub2887 to i8*
  %371 = bitcast i8* %370 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %371, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %372 = load i64, i64* %cdr, align 8
  %call2888 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp2889 = icmp eq i64 %372, %call2888
  br i1 %cmp2889, label %cond.true.2891, label %cond.false.2892

cond.true.2891:                                   ; preds = %for.body
  %373 = load i64, i64* %should_be_specified, align 8
  br label %cond.end.2906

cond.false.2892:                                  ; preds = %for.body
  %374 = load i64, i64* %obj, align 8
  %sub2893 = sub nsw i64 %374, 3
  %375 = inttoptr i64 %sub2893 to i8*
  %376 = bitcast i8* %375 to %struct.Lisp_Cons*
  %u2894 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %376, i32 0, i32 1
  %cdr2895 = bitcast %union.anon* %u2894 to i64*
  %377 = load i64, i64* %cdr2895, align 8
  %sub2896 = sub nsw i64 %377, 3
  %378 = inttoptr i64 %sub2896 to i8*
  %379 = bitcast i8* %378 to %struct.Lisp_Cons*
  %u2897 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %379, i32 0, i32 1
  %cdr2898 = bitcast %union.anon* %u2897 to i64*
  %380 = load i64, i64* %cdr2898, align 8
  %call2899 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp2900 = icmp eq i64 %380, %call2899
  br i1 %cmp2900, label %cond.true.2902, label %cond.false.2903

cond.true.2902:                                   ; preds = %cond.false.2892
  %381 = load i64, i64* %or, align 8
  br label %cond.end.2904

cond.false.2903:                                  ; preds = %cond.false.2892
  %382 = load i64, i64* %comma, align 8
  br label %cond.end.2904

cond.end.2904:                                    ; preds = %cond.false.2903, %cond.true.2902
  %cond2905 = phi i64 [ %381, %cond.true.2902 ], [ %382, %cond.false.2903 ]
  br label %cond.end.2906

cond.end.2906:                                    ; preds = %cond.end.2904, %cond.true.2891
  %cond2907 = phi i64 [ %373, %cond.true.2891 ], [ %cond2905, %cond.end.2904 ]
  %383 = load i64, i64* %i, align 8
  %inc2908 = add nsw i64 %383, 1
  store i64 %inc2908, i64* %i, align 8
  %384 = load i64*, i64** %args, align 8
  %arrayidx2909 = getelementptr inbounds i64, i64* %384, i64 %383
  store i64 %cond2907, i64* %arrayidx2909, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end.2906
  %385 = load i64, i64* %obj, align 8
  %sub2910 = sub nsw i64 %385, 3
  %386 = inttoptr i64 %sub2910 to i8*
  %387 = bitcast i8* %386 to %struct.Lisp_Cons*
  %u2911 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %387, i32 0, i32 1
  %cdr2912 = bitcast %union.anon* %u2911 to i64*
  %388 = load i64, i64* %cdr2912, align 8
  store i64 %388, i64* %obj, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %389 = load i64, i64* %i, align 8
  %390 = load i64*, i64** %args, align 8
  %call2913 = call i64 @Fconcat(i64 %389, i64* %390)
  store i64 %call2913, i64* %obj, align 8
  br label %do.body.2914

do.body.2914:                                     ; preds = %for.end
  %391 = load i8, i8* %sa_must_free, align 1
  %tobool = trunc i8 %391 to i1
  br i1 %tobool, label %if.then.2915, label %if.end.2918

if.then.2915:                                     ; preds = %do.body.2914
  store i8 0, i8* %sa_must_free, align 1
  %392 = load i64, i64* %sa_count, align 8
  %call2916 = call i64 @builtin_lisp_symbol(i32 0)
  %call2917 = call i64 @unbind_to(i64 %392, i64 %call2916)
  br label %if.end.2918

if.end.2918:                                      ; preds = %if.then.2915, %do.body.2914
  br label %do.end.2919

do.end.2919:                                      ; preds = %if.end.2918
  %call2920 = call i64 @builtin_lisp_symbol(i32 372)
  %393 = load i64, i64* %obj, align 8
  %394 = load i64, i64* %wrong.addr, align 8
  call void @xsignal2(i64 %call2920, i64 %393, i64 %394) #7
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare i64 @Flength(i64) #2

declare i64 @make_lisp_ptr(i8*, i32) #2

declare i64 @SPECPDL_INDEX() #2

; Function Attrs: noreturn
declare void @memory_full(i64) #1

declare noalias i8* @xmalloc(i64) #2

declare i64 @make_save_memory(i64*, i64) #2

declare void @record_unwind_protect(void (i64)*, i64) #2

declare void @free_save_value(i64) #2

declare i64 @Fconcat(i64, i64*) #2

declare i64 @unbind_to(i64, i64) #2

; Function Attrs: nounwind uwtable
define void @swap_in_global_binding(%struct.Lisp_Symbol* %symbol) #4 {
entry:
  %symbol.addr = alloca %struct.Lisp_Symbol*, align 8
  %blv = alloca %struct.Lisp_Buffer_Local_Value*, align 8
  store %struct.Lisp_Symbol* %symbol, %struct.Lisp_Symbol** %symbol.addr, align 8
  %0 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %symbol.addr, align 8
  %call = call %struct.Lisp_Buffer_Local_Value* @SYMBOL_BLV(%struct.Lisp_Symbol* %0)
  store %struct.Lisp_Buffer_Local_Value* %call, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %1 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %fwd = getelementptr inbounds %struct.Lisp_Buffer_Local_Value, %struct.Lisp_Buffer_Local_Value* %1, i32 0, i32 1
  %2 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %fwd, align 8
  %tobool = icmp ne %union.Lisp_Fwd* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %4 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %fwd1 = getelementptr inbounds %struct.Lisp_Buffer_Local_Value, %struct.Lisp_Buffer_Local_Value* %4, i32 0, i32 1
  %5 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %fwd1, align 8
  %call2 = call i64 @do_symval_forwarding(%union.Lisp_Fwd* %5)
  call void @set_blv_value(%struct.Lisp_Buffer_Local_Value* %3, i64 %call2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %7 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %defcell = getelementptr inbounds %struct.Lisp_Buffer_Local_Value, %struct.Lisp_Buffer_Local_Value* %7, i32 0, i32 3
  %8 = load i64, i64* %defcell, align 8
  call void @set_blv_valcell(%struct.Lisp_Buffer_Local_Value* %6, i64 %8)
  %9 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %fwd3 = getelementptr inbounds %struct.Lisp_Buffer_Local_Value, %struct.Lisp_Buffer_Local_Value* %9, i32 0, i32 1
  %10 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %fwd3, align 8
  %tobool4 = icmp ne %union.Lisp_Fwd* %10, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %11 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %fwd6 = getelementptr inbounds %struct.Lisp_Buffer_Local_Value, %struct.Lisp_Buffer_Local_Value* %11, i32 0, i32 1
  %12 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %fwd6, align 8
  %13 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %defcell7 = getelementptr inbounds %struct.Lisp_Buffer_Local_Value, %struct.Lisp_Buffer_Local_Value* %13, i32 0, i32 3
  %14 = load i64, i64* %defcell7, align 8
  %sub = sub nsw i64 %14, 3
  %15 = inttoptr i64 %sub to i8*
  %16 = bitcast i8* %15 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %16, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %17 = load i64, i64* %cdr, align 8
  call void @store_symval_forwarding(%union.Lisp_Fwd* %12, i64 %17, %struct.buffer* null)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %18 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  call void @set_blv_where(%struct.Lisp_Buffer_Local_Value* %18, i64 %call9)
  %19 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  call void @set_blv_found(%struct.Lisp_Buffer_Local_Value* %19, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_blv_value(%struct.Lisp_Buffer_Local_Value* %blv, i64 %val) #4 {
entry:
  %blv.addr = alloca %struct.Lisp_Buffer_Local_Value*, align 8
  %val.addr = alloca i64, align 8
  store %struct.Lisp_Buffer_Local_Value* %blv, %struct.Lisp_Buffer_Local_Value** %blv.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv.addr, align 8
  %valcell = getelementptr inbounds %struct.Lisp_Buffer_Local_Value, %struct.Lisp_Buffer_Local_Value* %0, i32 0, i32 4
  %1 = load i64, i64* %valcell, align 8
  %2 = load i64, i64* %val.addr, align 8
  call void @XSETCDR(i64 %1, i64 %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_blv_valcell(%struct.Lisp_Buffer_Local_Value* %blv, i64 %val) #4 {
entry:
  %blv.addr = alloca %struct.Lisp_Buffer_Local_Value*, align 8
  %val.addr = alloca i64, align 8
  store %struct.Lisp_Buffer_Local_Value* %blv, %struct.Lisp_Buffer_Local_Value** %blv.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv.addr, align 8
  %valcell = getelementptr inbounds %struct.Lisp_Buffer_Local_Value, %struct.Lisp_Buffer_Local_Value* %1, i32 0, i32 4
  store i64 %0, i64* %valcell, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @store_symval_forwarding(%union.Lisp_Fwd* %valcontents, i64 %newval, %struct.buffer* %buf) #4 {
entry:
  %valcontents.addr = alloca %union.Lisp_Fwd*, align 8
  %newval.addr = alloca i64, align 8
  %buf.addr = alloca %struct.buffer*, align 8
  %offset = alloca i32, align 4
  %idx = alloca i32, align 4
  %tail = alloca i64, align 8
  %buf25 = alloca i64, align 8
  %b = alloca %struct.buffer*, align 8
  %offset51 = alloca i32, align 4
  %predicate = alloca i64, align 8
  %prop = alloca i64, align 8
  %min = alloca i64, align 8
  %max = alloca i64, align 8
  %base = alloca i8*, align 8
  %p = alloca i8*, align 8
  store %union.Lisp_Fwd* %valcontents, %union.Lisp_Fwd** %valcontents.addr, align 8
  store i64 %newval, i64* %newval.addr, align 8
  store %struct.buffer* %buf, %struct.buffer** %buf.addr, align 8
  %0 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %valcontents.addr, align 8
  %call = call i32 @XFWDTYPE(%union.Lisp_Fwd* %0)
  switch i32 %call, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.5
    i32 2, label %sw.bb.10
    i32 3, label %sw.bb.50
    i32 4, label %sw.bb.121
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i64, i64* %newval.addr, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %and1 = and i32 %conv, -5
  %cmp = icmp eq i32 %and1, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %call3 = call i64 @builtin_lisp_symbol(i32 559)
  %2 = load i64, i64* %newval.addr, align 8
  %3 = call i64 @wrong_type_argument(i64 %call3, i64 %2) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %4, %cond.true
  %5 = load i64, i64* %newval.addr, align 8
  %shr = ashr i64 %5, 2
  %6 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %valcontents.addr, align 8
  %call4 = call %struct.Lisp_Intfwd* @XINTFWD(%union.Lisp_Fwd* %6)
  %intvar = getelementptr inbounds %struct.Lisp_Intfwd, %struct.Lisp_Intfwd* %call4, i32 0, i32 1
  %7 = load i64*, i64** %intvar, align 8
  store i64 %shr, i64* %7, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %8 = load i64, i64* %newval.addr, align 8
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp7 = icmp eq i64 %8, %call6
  %lnot = xor i1 %cmp7, true
  %9 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %valcontents.addr, align 8
  %call9 = call %struct.Lisp_Boolfwd* @XBOOLFWD(%union.Lisp_Fwd* %9)
  %boolvar = getelementptr inbounds %struct.Lisp_Boolfwd, %struct.Lisp_Boolfwd* %call9, i32 0, i32 1
  %10 = load i8*, i8** %boolvar, align 8
  %frombool = zext i1 %lnot to i8
  store i8 %frombool, i8* %10, align 1
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  %11 = load i64, i64* %newval.addr, align 8
  %12 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %valcontents.addr, align 8
  %call11 = call %struct.Lisp_Objfwd* @XOBJFWD(%union.Lisp_Fwd* %12)
  %objvar = getelementptr inbounds %struct.Lisp_Objfwd, %struct.Lisp_Objfwd* %call11, i32 0, i32 1
  %13 = load i64*, i64** %objvar, align 8
  store i64 %11, i64* %13, align 8
  %14 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %valcontents.addr, align 8
  %call12 = call %struct.Lisp_Objfwd* @XOBJFWD(%union.Lisp_Fwd* %14)
  %objvar13 = getelementptr inbounds %struct.Lisp_Objfwd, %struct.Lisp_Objfwd* %call12, i32 0, i32 1
  %15 = load i64*, i64** %objvar13, align 8
  %cmp14 = icmp ugt i64* %15, getelementptr inbounds (%struct.buffer, %struct.buffer* @buffer_defaults, i32 0, i32 0, i32 0)
  br i1 %cmp14, label %land.lhs.true, label %if.end.49

land.lhs.true:                                    ; preds = %sw.bb.10
  %16 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %valcontents.addr, align 8
  %call16 = call %struct.Lisp_Objfwd* @XOBJFWD(%union.Lisp_Fwd* %16)
  %objvar17 = getelementptr inbounds %struct.Lisp_Objfwd, %struct.Lisp_Objfwd* %call16, i32 0, i32 1
  %17 = load i64*, i64** %objvar17, align 8
  %cmp18 = icmp ult i64* %17, getelementptr inbounds (%struct.buffer, %struct.buffer* @buffer_defaults, i64 1, i32 0, i32 0)
  br i1 %cmp18, label %if.then, label %if.end.49

if.then:                                          ; preds = %land.lhs.true
  %18 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %valcontents.addr, align 8
  %call20 = call %struct.Lisp_Objfwd* @XOBJFWD(%union.Lisp_Fwd* %18)
  %objvar21 = getelementptr inbounds %struct.Lisp_Objfwd, %struct.Lisp_Objfwd* %call20, i32 0, i32 1
  %19 = load i64*, i64** %objvar21, align 8
  %20 = bitcast i64* %19 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %20 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint (%struct.buffer* @buffer_defaults to i64)
  %conv22 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv22, i32* %offset, align 4
  %21 = load i32, i32* %offset, align 4
  %idx.ext = sext i32 %21 to i64
  %add.ptr = getelementptr inbounds i8, i8* bitcast (%struct.buffer* @buffer_local_flags to i8*), i64 %idx.ext
  %22 = bitcast i8* %add.ptr to i64*
  %23 = load i64, i64* %22, align 8
  %shr23 = ashr i64 %23, 2
  %conv24 = trunc i64 %shr23 to i32
  store i32 %conv24, i32* %idx, align 4
  %24 = load i32, i32* %idx, align 4
  %cmp26 = icmp sle i32 %24, 0
  br i1 %cmp26, label %if.then.28, label %if.end

if.then.28:                                       ; preds = %if.then
  br label %sw.epilog

if.end:                                           ; preds = %if.then
  %25 = load i64, i64* @Vbuffer_alist, align 8
  store i64 %25, i64* %tail, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %26 = load i64, i64* %tail, align 8
  %and29 = and i64 %26, 7
  %conv30 = trunc i64 %and29 to i32
  %cmp31 = icmp eq i32 %conv30, 3
  br i1 %cmp31, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %27 = load i64, i64* %tail, align 8
  %sub = sub nsw i64 %27, 3
  %28 = inttoptr i64 %sub to i8*
  %29 = bitcast i8* %28 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %29, i32 0, i32 0
  %30 = load i64, i64* %car, align 8
  %sub33 = sub nsw i64 %30, 3
  %31 = inttoptr i64 %sub33 to i8*
  %32 = bitcast i8* %31 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %32, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %33 = load i64, i64* %cdr, align 8
  store i64 %33, i64* %buf25, align 8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %34 = phi i1 [ false, %for.cond ], [ true, %land.rhs ]
  br i1 %34, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %35 = load i64, i64* %buf25, align 8
  %call34 = call %struct.buffer* @XBUFFER(i64 %35)
  store %struct.buffer* %call34, %struct.buffer** %b, align 8
  %36 = load i32, i32* %idx, align 4
  %cmp35 = icmp slt i32 %36, 0
  br i1 %cmp35, label %cond.true.39, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %37 = load i32, i32* %idx, align 4
  %38 = load i32, i32* @last_per_buffer_idx, align 4
  %cmp37 = icmp sge i32 %37, %38
  br i1 %cmp37, label %cond.true.39, label %cond.false.40

cond.true.39:                                     ; preds = %lor.lhs.false, %for.body
  call void @emacs_abort() #7
  unreachable
                                                  ; No predecessors!
  br i1 false, label %if.end.45, label %if.then.44

cond.false.40:                                    ; preds = %lor.lhs.false
  %40 = load i32, i32* %idx, align 4
  %idxprom = sext i32 %40 to i64
  %41 = load %struct.buffer*, %struct.buffer** %b, align 8
  %local_flags = getelementptr inbounds %struct.buffer, %struct.buffer* %41, i32 0, i32 84
  %arrayidx = getelementptr inbounds [50 x i8], [50 x i8]* %local_flags, i32 0, i64 %idxprom
  %42 = load i8, i8* %arrayidx, align 1
  %conv41 = sext i8 %42 to i32
  %cmp42 = icmp ne i32 %conv41, 0
  br i1 %cmp42, label %if.end.45, label %if.then.44

if.then.44:                                       ; preds = %cond.false.40, %39
  %43 = load %struct.buffer*, %struct.buffer** %b, align 8
  %44 = load i32, i32* %offset, align 4
  %45 = load i64, i64* %newval.addr, align 8
  call void @set_per_buffer_value(%struct.buffer* %43, i32 %44, i64 %45)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %cond.false.40, %39
  br label %for.inc

for.inc:                                          ; preds = %if.end.45
  %46 = load i64, i64* %tail, align 8
  %sub46 = sub nsw i64 %46, 3
  %47 = inttoptr i64 %sub46 to i8*
  %48 = bitcast i8* %47 to %struct.Lisp_Cons*
  %u47 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %48, i32 0, i32 1
  %cdr48 = bitcast %union.anon* %u47 to i64*
  %49 = load i64, i64* %cdr48, align 8
  store i64 %49, i64* %tail, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  br label %if.end.49

if.end.49:                                        ; preds = %for.end, %land.lhs.true, %sw.bb.10
  br label %sw.epilog

sw.bb.50:                                         ; preds = %entry
  %50 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %valcontents.addr, align 8
  %call52 = call %struct.Lisp_Buffer_Objfwd* @XBUFFER_OBJFWD(%union.Lisp_Fwd* %50)
  %offset53 = getelementptr inbounds %struct.Lisp_Buffer_Objfwd, %struct.Lisp_Buffer_Objfwd* %call52, i32 0, i32 1
  %51 = load i32, i32* %offset53, align 4
  store i32 %51, i32* %offset51, align 4
  %52 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %valcontents.addr, align 8
  %call54 = call %struct.Lisp_Buffer_Objfwd* @XBUFFER_OBJFWD(%union.Lisp_Fwd* %52)
  %predicate55 = getelementptr inbounds %struct.Lisp_Buffer_Objfwd, %struct.Lisp_Buffer_Objfwd* %call54, i32 0, i32 2
  %53 = load i64, i64* %predicate55, align 8
  store i64 %53, i64* %predicate, align 8
  %54 = load i64, i64* %newval.addr, align 8
  %call56 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp57 = icmp eq i64 %54, %call56
  br i1 %cmp57, label %if.end.116, label %if.then.59

if.then.59:                                       ; preds = %sw.bb.50
  %55 = load i64, i64* %predicate, align 8
  %and60 = and i64 %55, 7
  %conv61 = trunc i64 %and60 to i32
  %cmp62 = icmp eq i32 %conv61, 0
  br i1 %cmp62, label %if.then.64, label %if.end.115

if.then.64:                                       ; preds = %if.then.59
  %56 = load i64, i64* %predicate, align 8
  %call65 = call i64 @builtin_lisp_symbol(i32 263)
  %call66 = call i64 @Fget(i64 %56, i64 %call65)
  store i64 %call66, i64* %prop, align 8
  %57 = load i64, i64* %prop, align 8
  %call67 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp68 = icmp eq i64 %57, %call67
  %lnot70 = xor i1 %cmp68, true
  br i1 %lnot70, label %if.then.71, label %if.else

if.then.71:                                       ; preds = %if.then.64
  %58 = load i64, i64* %newval.addr, align 8
  %59 = load i64, i64* %prop, align 8
  %call72 = call i64 @Fmemq(i64 %58, i64 %59)
  %call73 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp74 = icmp eq i64 %call72, %call73
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.then.71
  %60 = load i64, i64* %prop, align 8
  %61 = load i64, i64* %newval.addr, align 8
  call void @wrong_choice(i64 %60, i64 %61) #7
  unreachable

if.end.77:                                        ; preds = %if.then.71
  br label %if.end.114

if.else:                                          ; preds = %if.then.64
  %62 = load i64, i64* %predicate, align 8
  %call78 = call i64 @builtin_lisp_symbol(i32 785)
  %call79 = call i64 @Fget(i64 %62, i64 %call78)
  store i64 %call79, i64* %prop, align 8
  %63 = load i64, i64* %prop, align 8
  %call80 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp81 = icmp eq i64 %63, %call80
  %lnot83 = xor i1 %cmp81, true
  br i1 %lnot83, label %if.then.84, label %if.else.103

if.then.84:                                       ; preds = %if.else
  %64 = load i64, i64* %prop, align 8
  %sub85 = sub nsw i64 %64, 3
  %65 = inttoptr i64 %sub85 to i8*
  %66 = bitcast i8* %65 to %struct.Lisp_Cons*
  %car86 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %66, i32 0, i32 0
  %67 = load i64, i64* %car86, align 8
  store i64 %67, i64* %min, align 8
  %68 = load i64, i64* %prop, align 8
  %sub87 = sub nsw i64 %68, 3
  %69 = inttoptr i64 %sub87 to i8*
  %70 = bitcast i8* %69 to %struct.Lisp_Cons*
  %u88 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %70, i32 0, i32 1
  %cdr89 = bitcast %union.anon* %u88 to i64*
  %71 = load i64, i64* %cdr89, align 8
  store i64 %71, i64* %max, align 8
  %72 = load i64, i64* %newval.addr, align 8
  %call90 = call zeroext i1 @NUMBERP(i64 %72)
  br i1 %call90, label %lor.lhs.false.91, label %if.then.101

lor.lhs.false.91:                                 ; preds = %if.then.84
  %73 = load i64, i64* %newval.addr, align 8
  %74 = load i64, i64* %min, align 8
  %call92 = call i64 @arithcompare(i64 %73, i64 %74, i32 2)
  %call93 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp94 = icmp eq i64 %call92, %call93
  br i1 %cmp94, label %lor.lhs.false.96, label %if.then.101

lor.lhs.false.96:                                 ; preds = %lor.lhs.false.91
  %75 = load i64, i64* %newval.addr, align 8
  %76 = load i64, i64* %max, align 8
  %call97 = call i64 @arithcompare(i64 %75, i64 %76, i32 3)
  %call98 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp99 = icmp eq i64 %call97, %call98
  br i1 %cmp99, label %if.end.102, label %if.then.101

if.then.101:                                      ; preds = %lor.lhs.false.96, %lor.lhs.false.91, %if.then.84
  %77 = load i64, i64* %min, align 8
  %78 = load i64, i64* %max, align 8
  %79 = load i64, i64* %newval.addr, align 8
  call void @wrong_range(i64 %77, i64 %78, i64 %79)
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.101, %lor.lhs.false.96
  br label %if.end.113

if.else.103:                                      ; preds = %if.else
  %80 = load i64, i64* %predicate, align 8
  %call104 = call zeroext i1 @FUNCTIONP(i64 %80)
  br i1 %call104, label %if.then.105, label %if.end.112

if.then.105:                                      ; preds = %if.else.103
  %81 = load i64, i64* %predicate, align 8
  %82 = load i64, i64* %newval.addr, align 8
  %call106 = call i64 @call1(i64 %81, i64 %82)
  %call107 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp108 = icmp eq i64 %call106, %call107
  br i1 %cmp108, label %if.then.110, label %if.end.111

if.then.110:                                      ; preds = %if.then.105
  %83 = load i64, i64* %predicate, align 8
  %84 = load i64, i64* %newval.addr, align 8
  %85 = call i64 @wrong_type_argument(i64 %83, i64 %84) #7
  unreachable

if.end.111:                                       ; preds = %if.then.105
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %if.else.103
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %if.end.102
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %if.end.77
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %if.then.59
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115, %sw.bb.50
  %86 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %cmp117 = icmp eq %struct.buffer* %86, null
  br i1 %cmp117, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %if.end.116
  %87 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  store %struct.buffer* %87, %struct.buffer** %buf.addr, align 8
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.119, %if.end.116
  %88 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %89 = load i32, i32* %offset51, align 4
  %90 = load i64, i64* %newval.addr, align 8
  call void @set_per_buffer_value(%struct.buffer* %88, i32 %89, i64 %90)
  br label %sw.epilog

sw.bb.121:                                        ; preds = %entry
  %91 = load i64, i64* @selected_frame, align 8
  %call122 = call zeroext i1 @FRAMEP(i64 %91)
  br i1 %call122, label %land.lhs.true.124, label %cond.false.130

land.lhs.true.124:                                ; preds = %sw.bb.121
  %92 = load i64, i64* @selected_frame, align 8
  %sub125 = sub nsw i64 %92, 5
  %93 = inttoptr i64 %sub125 to i8*
  %94 = bitcast i8* %93 to %struct.frame*
  %terminal = getelementptr inbounds %struct.frame, %struct.frame* %94, i32 0, i32 61
  %95 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %cmp126 = icmp ne %struct.terminal* %95, null
  br i1 %cmp126, label %cond.true.128, label %cond.false.130

cond.true.128:                                    ; preds = %land.lhs.true.124
  %96 = load i64, i64* @selected_frame, align 8
  %sub129 = sub nsw i64 %96, 5
  %97 = inttoptr i64 %sub129 to i8*
  %98 = bitcast i8* %97 to %struct.frame*
  br label %cond.end.131

cond.false.130:                                   ; preds = %land.lhs.true.124, %sw.bb.121
  call void @emacs_abort() #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end.131

cond.end.131:                                     ; preds = %99, %cond.true.128
  %cond = phi %struct.frame* [ %98, %cond.true.128 ], [ null, %99 ]
  %terminal132 = getelementptr inbounds %struct.frame, %struct.frame* %cond, i32 0, i32 61
  %100 = load %struct.terminal*, %struct.terminal** %terminal132, align 8
  %kboard = getelementptr inbounds %struct.terminal, %struct.terminal* %100, i32 0, i32 10
  %101 = load %struct.kboard*, %struct.kboard** %kboard, align 8
  %102 = bitcast %struct.kboard* %101 to i8*
  store i8* %102, i8** %base, align 8
  %103 = load i8*, i8** %base, align 8
  %104 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %valcontents.addr, align 8
  %call133 = call %struct.Lisp_Kboard_Objfwd* @XKBOARD_OBJFWD(%union.Lisp_Fwd* %104)
  %offset134 = getelementptr inbounds %struct.Lisp_Kboard_Objfwd, %struct.Lisp_Kboard_Objfwd* %call133, i32 0, i32 1
  %105 = load i32, i32* %offset134, align 4
  %idx.ext135 = sext i32 %105 to i64
  %add.ptr136 = getelementptr inbounds i8, i8* %103, i64 %idx.ext135
  store i8* %add.ptr136, i8** %p, align 8
  %106 = load i64, i64* %newval.addr, align 8
  %107 = load i8*, i8** %p, align 8
  %108 = bitcast i8* %107 to i64*
  store i64 %106, i64* %108, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @emacs_abort() #7
  unreachable

sw.epilog:                                        ; preds = %cond.end.131, %if.end.120, %if.end.49, %if.then.28, %sw.bb.5, %cond.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_blv_where(%struct.Lisp_Buffer_Local_Value* %blv, i64 %val) #4 {
entry:
  %blv.addr = alloca %struct.Lisp_Buffer_Local_Value*, align 8
  %val.addr = alloca i64, align 8
  store %struct.Lisp_Buffer_Local_Value* %blv, %struct.Lisp_Buffer_Local_Value** %blv.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv.addr, align 8
  %where = getelementptr inbounds %struct.Lisp_Buffer_Local_Value, %struct.Lisp_Buffer_Local_Value* %1, i32 0, i32 2
  store i64 %0, i64* %where, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_blv_found(%struct.Lisp_Buffer_Local_Value* %blv, i32 %found) #4 {
entry:
  %blv.addr = alloca %struct.Lisp_Buffer_Local_Value*, align 8
  %found.addr = alloca i32, align 4
  store %struct.Lisp_Buffer_Local_Value* %blv, %struct.Lisp_Buffer_Local_Value** %blv.addr, align 8
  store i32 %found, i32* %found.addr, align 4
  %0 = load i32, i32* %found.addr, align 4
  %tobool = icmp ne i32 %0, 0
  %1 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv.addr, align 8
  %2 = bitcast %struct.Lisp_Buffer_Local_Value* %1 to i8*
  %3 = zext i1 %tobool to i8
  %bf.load = load i8, i8* %2, align 8
  %bf.shl = shl i8 %3, 2
  %bf.clear = and i8 %bf.load, -5
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, i8* %2, align 8
  %tobool1 = trunc i8 %3 to i1
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @find_symbol_value(i64 %symbol) #4 {
entry:
  %retval = alloca i64, align 8
  %symbol.addr = alloca i64, align 8
  %sym = alloca %struct.Lisp_Symbol*, align 8
  %blv = alloca %struct.Lisp_Buffer_Local_Value*, align 8
  store i64 %symbol, i64* %symbol.addr, align 8
  %0 = load i64, i64* %symbol.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 897)
  %1 = load i64, i64* %symbol.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call, i64 %1) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i64, i64* %symbol.addr, align 8
  %sub = sub nsw i64 %4, 0
  %add.ptr = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub
  %5 = bitcast i8* %add.ptr to %struct.Lisp_Symbol*
  store %struct.Lisp_Symbol* %5, %struct.Lisp_Symbol** %sym, align 8
  br label %start

start:                                            ; preds = %sw.bb, %cond.end
  %6 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %7 = bitcast %struct.Lisp_Symbol* %6 to i16*
  %bf.load = load i16, i16* %7, align 8
  %bf.lshr = lshr i16 %bf.load, 1
  %bf.clear = and i16 %bf.lshr, 7
  %bf.cast = zext i16 %bf.clear to i32
  switch i32 %bf.cast, label %sw.default [
    i32 1, label %sw.bb
    i32 4, label %sw.bb.3
    i32 2, label %sw.bb.4
    i32 3, label %sw.bb.12
  ]

sw.bb:                                            ; preds = %start
  %8 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %call2 = call %struct.Lisp_Symbol* @indirect_variable(%struct.Lisp_Symbol* %8)
  store %struct.Lisp_Symbol* %call2, %struct.Lisp_Symbol** %sym, align 8
  br label %start

sw.bb.3:                                          ; preds = %start
  %9 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %val = getelementptr inbounds %struct.Lisp_Symbol, %struct.Lisp_Symbol* %9, i32 0, i32 2
  %value = bitcast %union.anon.0* %val to i64*
  %10 = load i64, i64* %value, align 8
  store i64 %10, i64* %retval
  br label %return

sw.bb.4:                                          ; preds = %start
  %11 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %call5 = call %struct.Lisp_Buffer_Local_Value* @SYMBOL_BLV(%struct.Lisp_Symbol* %11)
  store %struct.Lisp_Buffer_Local_Value* %call5, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %12 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %13 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  call void @swap_in_symval_forwarding(%struct.Lisp_Symbol* %12, %struct.Lisp_Buffer_Local_Value* %13)
  %14 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %fwd = getelementptr inbounds %struct.Lisp_Buffer_Local_Value, %struct.Lisp_Buffer_Local_Value* %14, i32 0, i32 1
  %15 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %fwd, align 8
  %tobool = icmp ne %union.Lisp_Fwd* %15, null
  br i1 %tobool, label %cond.true.6, label %cond.false.9

cond.true.6:                                      ; preds = %sw.bb.4
  %16 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %fwd7 = getelementptr inbounds %struct.Lisp_Buffer_Local_Value, %struct.Lisp_Buffer_Local_Value* %16, i32 0, i32 1
  %17 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %fwd7, align 8
  %call8 = call i64 @do_symval_forwarding(%union.Lisp_Fwd* %17)
  br label %cond.end.11

cond.false.9:                                     ; preds = %sw.bb.4
  %18 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %call10 = call i64 @blv_value(%struct.Lisp_Buffer_Local_Value* %18)
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.false.9, %cond.true.6
  %cond = phi i64 [ %call8, %cond.true.6 ], [ %call10, %cond.false.9 ]
  store i64 %cond, i64* %retval
  br label %return

sw.bb.12:                                         ; preds = %start
  %19 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %call13 = call %union.Lisp_Fwd* @SYMBOL_FWD(%struct.Lisp_Symbol* %19)
  %call14 = call i64 @do_symval_forwarding(%union.Lisp_Fwd* %call13)
  store i64 %call14, i64* %retval
  br label %return

sw.default:                                       ; preds = %start
  call void @emacs_abort() #7
  unreachable

return:                                           ; preds = %sw.bb.12, %cond.end.11, %sw.bb.3
  %20 = load i64, i64* %retval
  ret i64 %20
}

declare %union.Lisp_Fwd* @SYMBOL_FWD(%struct.Lisp_Symbol*) #2

; Function Attrs: nounwind uwtable
define i64 @Fsymbol_value(i64 %symbol) #4 {
entry:
  %symbol.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %symbol, i64* %symbol.addr, align 8
  %0 = load i64, i64* %symbol.addr, align 8
  %call = call i64 @find_symbol_value(i64 %0)
  store i64 %call, i64* %val, align 8
  %1 = load i64, i64* %val, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 957)
  %cmp = icmp eq i64 %1, %call1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %val, align 8
  ret i64 %2

if.end:                                           ; preds = %entry
  %call2 = call i64 @builtin_lisp_symbol(i32 1007)
  %3 = load i64, i64* %symbol.addr, align 8
  call void @xsignal1(i64 %call2, i64 %3) #7
  unreachable
}

; Function Attrs: nounwind uwtable
define void @set_internal(i64 %symbol, i64 %newval, i64 %where, i1 zeroext %bindflag) #4 {
entry:
  %symbol.addr = alloca i64, align 8
  %newval.addr = alloca i64, align 8
  %where.addr = alloca i64, align 8
  %bindflag.addr = alloca i8, align 1
  %voide = alloca i8, align 1
  %sym = alloca %struct.Lisp_Symbol*, align 8
  %tem1 = alloca i64, align 8
  %blv = alloca %struct.Lisp_Buffer_Local_Value*, align 8
  %buf = alloca %struct.buffer*, align 8
  %innercontents = alloca %union.Lisp_Fwd*, align 8
  %offset = alloca i32, align 4
  %idx = alloca i32, align 4
  store i64 %symbol, i64* %symbol.addr, align 8
  store i64 %newval, i64* %newval.addr, align 8
  store i64 %where, i64* %where.addr, align 8
  %frombool = zext i1 %bindflag to i8
  store i8 %frombool, i8* %bindflag.addr, align 1
  %0 = load i64, i64* %newval.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 957)
  %cmp = icmp eq i64 %0, %call
  %frombool1 = zext i1 %cmp to i8
  store i8 %frombool1, i8* %voide, align 1
  %1 = load i64, i64* %symbol.addr, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %cmp2 = icmp eq i32 %conv, 0
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call4 = call i64 @builtin_lisp_symbol(i32 897)
  %2 = load i64, i64* %symbol.addr, align 8
  %3 = call i64 @wrong_type_argument(i64 %call4, i64 %2) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %4, %cond.true
  %5 = load i64, i64* %symbol.addr, align 8
  %sub = sub nsw i64 %5, 0
  %add.ptr = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub
  %6 = bitcast i8* %add.ptr to %struct.Lisp_Symbol*
  %7 = bitcast %struct.Lisp_Symbol* %6 to i16*
  %bf.load = load i16, i16* %7, align 8
  %bf.lshr = lshr i16 %bf.load, 4
  %bf.clear = and i16 %bf.lshr, 3
  %bf.cast = zext i16 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %8 = load i64, i64* %symbol.addr, align 8
  %call5 = call i64 @Fkeywordp(i64 %8)
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp7 = icmp eq i64 %call5, %call6
  br i1 %cmp7, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %9 = load i64, i64* %newval.addr, align 8
  %10 = load i64, i64* %symbol.addr, align 8
  %call9 = call i64 @Fsymbol_value(i64 %10)
  %cmp10 = icmp eq i64 %9, %call9
  br i1 %cmp10, label %if.else, label %if.then.12

if.then.12:                                       ; preds = %lor.lhs.false, %if.then
  %call13 = call i64 @builtin_lisp_symbol(i32 855)
  %11 = load i64, i64* %symbol.addr, align 8
  call void @xsignal1(i64 %call13, i64 %11) #7
  unreachable

if.else:                                          ; preds = %lor.lhs.false
  br label %return

if.end:                                           ; preds = %cond.end
  %12 = load i64, i64* %symbol.addr, align 8
  call void @maybe_set_redisplay(i64 %12)
  %13 = load i64, i64* %symbol.addr, align 8
  %sub14 = sub nsw i64 %13, 0
  %add.ptr15 = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub14
  %14 = bitcast i8* %add.ptr15 to %struct.Lisp_Symbol*
  store %struct.Lisp_Symbol* %14, %struct.Lisp_Symbol** %sym, align 8
  br label %start

start:                                            ; preds = %sw.bb, %if.end
  %15 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %16 = bitcast %struct.Lisp_Symbol* %15 to i16*
  %bf.load16 = load i16, i16* %16, align 8
  %bf.lshr17 = lshr i16 %bf.load16, 1
  %bf.clear18 = and i16 %bf.lshr17, 7
  %bf.cast19 = zext i16 %bf.clear18 to i32
  switch i32 %bf.cast19, label %sw.default [
    i32 1, label %sw.bb
    i32 4, label %sw.bb.21
    i32 2, label %sw.bb.22
    i32 3, label %sw.bb.108
  ]

sw.bb:                                            ; preds = %start
  %17 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %call20 = call %struct.Lisp_Symbol* @indirect_variable(%struct.Lisp_Symbol* %17)
  store %struct.Lisp_Symbol* %call20, %struct.Lisp_Symbol** %sym, align 8
  br label %start

sw.bb.21:                                         ; preds = %start
  %18 = load i64, i64* %newval.addr, align 8
  %19 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %val = getelementptr inbounds %struct.Lisp_Symbol, %struct.Lisp_Symbol* %19, i32 0, i32 2
  %value = bitcast %union.anon.0* %val to i64*
  store i64 %18, i64* %value, align 8
  br label %return

sw.bb.22:                                         ; preds = %start
  %20 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %call23 = call %struct.Lisp_Buffer_Local_Value* @SYMBOL_BLV(%struct.Lisp_Symbol* %20)
  store %struct.Lisp_Buffer_Local_Value* %call23, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %21 = load i64, i64* %where.addr, align 8
  %call24 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp25 = icmp eq i64 %21, %call24
  br i1 %cmp25, label %if.then.27, label %if.end.36

if.then.27:                                       ; preds = %sw.bb.22
  %22 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %23 = bitcast %struct.Lisp_Buffer_Local_Value* %22 to i8*
  %bf.load28 = load i8, i8* %23, align 8
  %bf.lshr29 = lshr i8 %bf.load28, 1
  %bf.clear30 = and i8 %bf.lshr29, 1
  %bf.cast31 = trunc i8 %bf.clear30 to i1
  br i1 %bf.cast31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %if.then.27
  %24 = load i64, i64* @selected_frame, align 8
  store i64 %24, i64* %where.addr, align 8
  br label %if.end.35

if.else.33:                                       ; preds = %if.then.27
  %25 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %26 = bitcast %struct.buffer* %25 to i8*
  %call34 = call i64 @make_lisp_ptr(i8* %26, i32 5)
  store i64 %call34, i64* %where.addr, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.33, %if.then.32
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %sw.bb.22
  %27 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %where37 = getelementptr inbounds %struct.Lisp_Buffer_Local_Value, %struct.Lisp_Buffer_Local_Value* %27, i32 0, i32 2
  %28 = load i64, i64* %where37, align 8
  %29 = load i64, i64* %where.addr, align 8
  %cmp38 = icmp eq i64 %28, %29
  br i1 %cmp38, label %lor.lhs.false.40, label %if.then.43

lor.lhs.false.40:                                 ; preds = %if.end.36
  %30 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %valcell = getelementptr inbounds %struct.Lisp_Buffer_Local_Value, %struct.Lisp_Buffer_Local_Value* %30, i32 0, i32 4
  %31 = load i64, i64* %valcell, align 8
  %32 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %defcell = getelementptr inbounds %struct.Lisp_Buffer_Local_Value, %struct.Lisp_Buffer_Local_Value* %32, i32 0, i32 3
  %33 = load i64, i64* %defcell, align 8
  %cmp41 = icmp eq i64 %31, %33
  br i1 %cmp41, label %if.then.43, label %if.end.90

if.then.43:                                       ; preds = %lor.lhs.false.40, %if.end.36
  %34 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %fwd = getelementptr inbounds %struct.Lisp_Buffer_Local_Value, %struct.Lisp_Buffer_Local_Value* %34, i32 0, i32 1
  %35 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %fwd, align 8
  %tobool44 = icmp ne %union.Lisp_Fwd* %35, null
  br i1 %tobool44, label %if.then.45, label %if.end.48

if.then.45:                                       ; preds = %if.then.43
  %36 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %37 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %fwd46 = getelementptr inbounds %struct.Lisp_Buffer_Local_Value, %struct.Lisp_Buffer_Local_Value* %37, i32 0, i32 1
  %38 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %fwd46, align 8
  %call47 = call i64 @do_symval_forwarding(%union.Lisp_Fwd* %38)
  call void @set_blv_value(%struct.Lisp_Buffer_Local_Value* %36, i64 %call47)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.45, %if.then.43
  %39 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %call49 = call i64 @make_lisp_symbol(%struct.Lisp_Symbol* %39)
  store i64 %call49, i64* %symbol.addr, align 8
  %40 = load i64, i64* %symbol.addr, align 8
  %41 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %42 = bitcast %struct.Lisp_Buffer_Local_Value* %41 to i8*
  %bf.load50 = load i8, i8* %42, align 8
  %bf.lshr51 = lshr i8 %bf.load50, 1
  %bf.clear52 = and i8 %bf.lshr51, 1
  %bf.cast53 = trunc i8 %bf.clear52 to i1
  br i1 %bf.cast53, label %cond.true.55, label %cond.false.57

cond.true.55:                                     ; preds = %if.end.48
  %43 = load i64, i64* %where.addr, align 8
  %sub56 = sub nsw i64 %43, 5
  %44 = inttoptr i64 %sub56 to i8*
  %45 = bitcast i8* %44 to %struct.frame*
  %param_alist = getelementptr inbounds %struct.frame, %struct.frame* %45, i32 0, i32 8
  %46 = load i64, i64* %param_alist, align 8
  br label %cond.end.59

cond.false.57:                                    ; preds = %if.end.48
  %47 = load i64, i64* %where.addr, align 8
  %call58 = call %struct.buffer* @XBUFFER(i64 %47)
  %local_var_alist_ = getelementptr inbounds %struct.buffer, %struct.buffer* %call58, i32 0, i32 9
  %48 = load i64, i64* %local_var_alist_, align 8
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.false.57, %cond.true.55
  %cond = phi i64 [ %46, %cond.true.55 ], [ %48, %cond.false.57 ]
  %call60 = call i64 @assq_no_quit(i64 %40, i64 %cond)
  store i64 %call60, i64* %tem1, align 8
  %49 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %50 = load i64, i64* %where.addr, align 8
  call void @set_blv_where(%struct.Lisp_Buffer_Local_Value* %49, i64 %50)
  %51 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %52 = bitcast %struct.Lisp_Buffer_Local_Value* %51 to i8*
  %bf.load61 = load i8, i8* %52, align 8
  %bf.clear62 = and i8 %bf.load61, -5
  %bf.set = or i8 %bf.clear62, 4
  store i8 %bf.set, i8* %52, align 8
  %53 = load i64, i64* %tem1, align 8
  %call63 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp64 = icmp eq i64 %53, %call63
  br i1 %cmp64, label %if.then.66, label %if.end.89

if.then.66:                                       ; preds = %cond.end.59
  %54 = load i8, i8* %bindflag.addr, align 1
  %tobool67 = trunc i8 %54 to i1
  br i1 %tobool67, label %if.then.76, label %lor.lhs.false.69

lor.lhs.false.69:                                 ; preds = %if.then.66
  %55 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %56 = bitcast %struct.Lisp_Buffer_Local_Value* %55 to i8*
  %bf.load70 = load i8, i8* %56, align 8
  %bf.clear71 = and i8 %bf.load70, 1
  %bf.cast72 = trunc i8 %bf.clear71 to i1
  br i1 %bf.cast72, label %lor.lhs.false.73, label %if.then.76

lor.lhs.false.73:                                 ; preds = %lor.lhs.false.69
  %57 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %call74 = call zeroext i1 @let_shadows_buffer_binding_p(%struct.Lisp_Symbol* %57)
  br i1 %call74, label %if.then.76, label %if.else.80

if.then.76:                                       ; preds = %lor.lhs.false.73, %lor.lhs.false.69, %if.then.66
  %58 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %59 = bitcast %struct.Lisp_Buffer_Local_Value* %58 to i8*
  %bf.load77 = load i8, i8* %59, align 8
  %bf.clear78 = and i8 %bf.load77, -5
  store i8 %bf.clear78, i8* %59, align 8
  %60 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %defcell79 = getelementptr inbounds %struct.Lisp_Buffer_Local_Value, %struct.Lisp_Buffer_Local_Value* %60, i32 0, i32 3
  %61 = load i64, i64* %defcell79, align 8
  store i64 %61, i64* %tem1, align 8
  br label %if.end.88

if.else.80:                                       ; preds = %lor.lhs.false.73
  %62 = load i64, i64* %symbol.addr, align 8
  %63 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %defcell81 = getelementptr inbounds %struct.Lisp_Buffer_Local_Value, %struct.Lisp_Buffer_Local_Value* %63, i32 0, i32 3
  %64 = load i64, i64* %defcell81, align 8
  %sub82 = sub nsw i64 %64, 3
  %65 = inttoptr i64 %sub82 to i8*
  %66 = bitcast i8* %65 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %66, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %67 = load i64, i64* %cdr, align 8
  %call83 = call i64 @Fcons(i64 %62, i64 %67)
  store i64 %call83, i64* %tem1, align 8
  %68 = load i64, i64* %where.addr, align 8
  %call84 = call %struct.buffer* @XBUFFER(i64 %68)
  %69 = load i64, i64* %tem1, align 8
  %70 = load i64, i64* %where.addr, align 8
  %call85 = call %struct.buffer* @XBUFFER(i64 %70)
  %local_var_alist_86 = getelementptr inbounds %struct.buffer, %struct.buffer* %call85, i32 0, i32 9
  %71 = load i64, i64* %local_var_alist_86, align 8
  %call87 = call i64 @Fcons(i64 %69, i64 %71)
  call void @bset_local_var_alist(%struct.buffer* %call84, i64 %call87)
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.80, %if.then.76
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %cond.end.59
  %72 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %73 = load i64, i64* %tem1, align 8
  call void @set_blv_valcell(%struct.Lisp_Buffer_Local_Value* %72, i64 %73)
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %lor.lhs.false.40
  %74 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %75 = load i64, i64* %newval.addr, align 8
  call void @set_blv_value(%struct.Lisp_Buffer_Local_Value* %74, i64 %75)
  %76 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %fwd91 = getelementptr inbounds %struct.Lisp_Buffer_Local_Value, %struct.Lisp_Buffer_Local_Value* %76, i32 0, i32 1
  %77 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %fwd91, align 8
  %tobool92 = icmp ne %union.Lisp_Fwd* %77, null
  br i1 %tobool92, label %if.then.93, label %if.end.107

if.then.93:                                       ; preds = %if.end.90
  %78 = load i8, i8* %voide, align 1
  %tobool94 = trunc i8 %78 to i1
  br i1 %tobool94, label %if.then.95, label %if.else.97

if.then.95:                                       ; preds = %if.then.93
  %79 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %fwd96 = getelementptr inbounds %struct.Lisp_Buffer_Local_Value, %struct.Lisp_Buffer_Local_Value* %79, i32 0, i32 1
  store %union.Lisp_Fwd* null, %union.Lisp_Fwd** %fwd96, align 8
  br label %if.end.106

if.else.97:                                       ; preds = %if.then.93
  %80 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %fwd98 = getelementptr inbounds %struct.Lisp_Buffer_Local_Value, %struct.Lisp_Buffer_Local_Value* %80, i32 0, i32 1
  %81 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %fwd98, align 8
  %82 = load i64, i64* %newval.addr, align 8
  %83 = load i64, i64* %where.addr, align 8
  %call99 = call zeroext i1 @BUFFERP(i64 %83)
  br i1 %call99, label %cond.true.101, label %cond.false.103

cond.true.101:                                    ; preds = %if.else.97
  %84 = load i64, i64* %where.addr, align 8
  %call102 = call %struct.buffer* @XBUFFER(i64 %84)
  br label %cond.end.104

cond.false.103:                                   ; preds = %if.else.97
  %85 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  br label %cond.end.104

cond.end.104:                                     ; preds = %cond.false.103, %cond.true.101
  %cond105 = phi %struct.buffer* [ %call102, %cond.true.101 ], [ %85, %cond.false.103 ]
  call void @store_symval_forwarding(%union.Lisp_Fwd* %81, i64 %82, %struct.buffer* %cond105)
  br label %if.end.106

if.end.106:                                       ; preds = %cond.end.104, %if.then.95
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %if.end.90
  br label %sw.epilog

sw.bb.108:                                        ; preds = %start
  %86 = load i64, i64* %where.addr, align 8
  %call109 = call zeroext i1 @BUFFERP(i64 %86)
  br i1 %call109, label %cond.true.111, label %cond.false.113

cond.true.111:                                    ; preds = %sw.bb.108
  %87 = load i64, i64* %where.addr, align 8
  %call112 = call %struct.buffer* @XBUFFER(i64 %87)
  br label %cond.end.114

cond.false.113:                                   ; preds = %sw.bb.108
  %88 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  br label %cond.end.114

cond.end.114:                                     ; preds = %cond.false.113, %cond.true.111
  %cond115 = phi %struct.buffer* [ %call112, %cond.true.111 ], [ %88, %cond.false.113 ]
  store %struct.buffer* %cond115, %struct.buffer** %buf, align 8
  %89 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %call116 = call %union.Lisp_Fwd* @SYMBOL_FWD(%struct.Lisp_Symbol* %89)
  store %union.Lisp_Fwd* %call116, %union.Lisp_Fwd** %innercontents, align 8
  %90 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %innercontents, align 8
  %call117 = call zeroext i1 @BUFFER_OBJFWDP(%union.Lisp_Fwd* %90)
  br i1 %call117, label %if.then.118, label %if.end.137

if.then.118:                                      ; preds = %cond.end.114
  %91 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %innercontents, align 8
  %call119 = call %struct.Lisp_Buffer_Objfwd* @XBUFFER_OBJFWD(%union.Lisp_Fwd* %91)
  %offset120 = getelementptr inbounds %struct.Lisp_Buffer_Objfwd, %struct.Lisp_Buffer_Objfwd* %call119, i32 0, i32 1
  %92 = load i32, i32* %offset120, align 4
  store i32 %92, i32* %offset, align 4
  %93 = load i32, i32* %offset, align 4
  %idx.ext = sext i32 %93 to i64
  %add.ptr121 = getelementptr inbounds i8, i8* bitcast (%struct.buffer* @buffer_local_flags to i8*), i64 %idx.ext
  %94 = bitcast i8* %add.ptr121 to i64*
  %95 = load i64, i64* %94, align 8
  %shr = ashr i64 %95, 2
  %conv122 = trunc i64 %shr to i32
  store i32 %conv122, i32* %idx, align 4
  %96 = load i32, i32* %idx, align 4
  %cmp123 = icmp sgt i32 %96, 0
  br i1 %cmp123, label %land.lhs.true, label %if.end.136

land.lhs.true:                                    ; preds = %if.then.118
  %97 = load i8, i8* %bindflag.addr, align 1
  %tobool125 = trunc i8 %97 to i1
  br i1 %tobool125, label %if.end.136, label %land.lhs.true.126

land.lhs.true.126:                                ; preds = %land.lhs.true
  %98 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %call127 = call zeroext i1 @let_shadows_buffer_binding_p(%struct.Lisp_Symbol* %98)
  br i1 %call127, label %if.end.136, label %if.then.128

if.then.128:                                      ; preds = %land.lhs.true.126
  br label %do.body

do.body:                                          ; preds = %if.then.128
  %99 = load i32, i32* %idx, align 4
  %cmp129 = icmp slt i32 %99, 0
  br i1 %cmp129, label %if.then.134, label %lor.lhs.false.131

lor.lhs.false.131:                                ; preds = %do.body
  %100 = load i32, i32* %idx, align 4
  %101 = load i32, i32* @last_per_buffer_idx, align 4
  %cmp132 = icmp sge i32 %100, %101
  br i1 %cmp132, label %if.then.134, label %if.end.135

if.then.134:                                      ; preds = %lor.lhs.false.131, %do.body
  call void @emacs_abort() #7
  unreachable

if.end.135:                                       ; preds = %lor.lhs.false.131
  %102 = load i32, i32* %idx, align 4
  %idxprom = sext i32 %102 to i64
  %103 = load %struct.buffer*, %struct.buffer** %buf, align 8
  %local_flags = getelementptr inbounds %struct.buffer, %struct.buffer* %103, i32 0, i32 84
  %arrayidx = getelementptr inbounds [50 x i8], [50 x i8]* %local_flags, i32 0, i64 %idxprom
  store i8 1, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %if.end.135
  br label %if.end.136

if.end.136:                                       ; preds = %do.end, %land.lhs.true.126, %land.lhs.true, %if.then.118
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.136, %cond.end.114
  %104 = load i8, i8* %voide, align 1
  %tobool138 = trunc i8 %104 to i1
  br i1 %tobool138, label %if.then.139, label %if.else.145

if.then.139:                                      ; preds = %if.end.137
  %105 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %106 = bitcast %struct.Lisp_Symbol* %105 to i16*
  %bf.load140 = load i16, i16* %106, align 8
  %bf.clear141 = and i16 %bf.load140, -15
  %bf.set142 = or i16 %bf.clear141, 8
  store i16 %bf.set142, i16* %106, align 8
  %107 = load i64, i64* %newval.addr, align 8
  %108 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %val143 = getelementptr inbounds %struct.Lisp_Symbol, %struct.Lisp_Symbol* %108, i32 0, i32 2
  %value144 = bitcast %union.anon.0* %val143 to i64*
  store i64 %107, i64* %value144, align 8
  br label %if.end.146

if.else.145:                                      ; preds = %if.end.137
  %109 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %innercontents, align 8
  %110 = load i64, i64* %newval.addr, align 8
  %111 = load %struct.buffer*, %struct.buffer** %buf, align 8
  call void @store_symval_forwarding(%union.Lisp_Fwd* %109, i64 %110, %struct.buffer* %111)
  br label %if.end.146

if.end.146:                                       ; preds = %if.else.145, %if.then.139
  br label %sw.epilog

sw.default:                                       ; preds = %start
  call void @emacs_abort() #7
  unreachable

sw.epilog:                                        ; preds = %if.end.146, %if.end.107
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.21, %if.else
  ret void
}

declare void @maybe_set_redisplay(i64) #2

declare i64 @assq_no_quit(i64, i64) #2

declare %struct.buffer* @XBUFFER(i64) #2

declare zeroext i1 @let_shadows_buffer_binding_p(%struct.Lisp_Symbol*) #2

declare void @bset_local_var_alist(%struct.buffer*, i64) #2

declare zeroext i1 @BUFFER_OBJFWDP(%union.Lisp_Fwd*) #2

; Function Attrs: nounwind uwtable
define i64 @Fdefault_boundp(i64 %symbol) #4 {
entry:
  %symbol.addr = alloca i64, align 8
  %value = alloca i64, align 8
  store i64 %symbol, i64* %symbol.addr, align 8
  %0 = load i64, i64* %symbol.addr, align 8
  %call = call i64 @default_value(i64 %0)
  store i64 %call, i64* %value, align 8
  %1 = load i64, i64* %value, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 957)
  %cmp = icmp eq i64 %1, %call1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call3 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call2, %cond.true ], [ %call3, %cond.false ]
  ret i64 %cond
}

; Function Attrs: nounwind uwtable
define internal i64 @default_value(i64 %symbol) #4 {
entry:
  %retval = alloca i64, align 8
  %symbol.addr = alloca i64, align 8
  %sym = alloca %struct.Lisp_Symbol*, align 8
  %blv = alloca %struct.Lisp_Buffer_Local_Value*, align 8
  %valcontents = alloca %union.Lisp_Fwd*, align 8
  %offset = alloca i32, align 4
  store i64 %symbol, i64* %symbol.addr, align 8
  %0 = load i64, i64* %symbol.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 897)
  %1 = load i64, i64* %symbol.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call, i64 %1) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i64, i64* %symbol.addr, align 8
  %sub = sub nsw i64 %4, 0
  %add.ptr = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub
  %5 = bitcast i8* %add.ptr to %struct.Lisp_Symbol*
  store %struct.Lisp_Symbol* %5, %struct.Lisp_Symbol** %sym, align 8
  br label %start

start:                                            ; preds = %sw.bb, %cond.end
  %6 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %7 = bitcast %struct.Lisp_Symbol* %6 to i16*
  %bf.load = load i16, i16* %7, align 8
  %bf.lshr = lshr i16 %bf.load, 1
  %bf.clear = and i16 %bf.lshr, 7
  %bf.cast = zext i16 %bf.clear to i32
  switch i32 %bf.cast, label %sw.default [
    i32 1, label %sw.bb
    i32 4, label %sw.bb.3
    i32 2, label %sw.bb.4
    i32 3, label %sw.bb.12
  ]

sw.bb:                                            ; preds = %start
  %8 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %call2 = call %struct.Lisp_Symbol* @indirect_variable(%struct.Lisp_Symbol* %8)
  store %struct.Lisp_Symbol* %call2, %struct.Lisp_Symbol** %sym, align 8
  br label %start

sw.bb.3:                                          ; preds = %start
  %9 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %val = getelementptr inbounds %struct.Lisp_Symbol, %struct.Lisp_Symbol* %9, i32 0, i32 2
  %value = bitcast %union.anon.0* %val to i64*
  %10 = load i64, i64* %value, align 8
  store i64 %10, i64* %retval
  br label %return

sw.bb.4:                                          ; preds = %start
  %11 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %call5 = call %struct.Lisp_Buffer_Local_Value* @SYMBOL_BLV(%struct.Lisp_Symbol* %11)
  store %struct.Lisp_Buffer_Local_Value* %call5, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %12 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %fwd = getelementptr inbounds %struct.Lisp_Buffer_Local_Value, %struct.Lisp_Buffer_Local_Value* %12, i32 0, i32 1
  %13 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %fwd, align 8
  %tobool = icmp ne %union.Lisp_Fwd* %13, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %sw.bb.4
  %14 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %valcell = getelementptr inbounds %struct.Lisp_Buffer_Local_Value, %struct.Lisp_Buffer_Local_Value* %14, i32 0, i32 4
  %15 = load i64, i64* %valcell, align 8
  %16 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %defcell = getelementptr inbounds %struct.Lisp_Buffer_Local_Value, %struct.Lisp_Buffer_Local_Value* %16, i32 0, i32 3
  %17 = load i64, i64* %defcell, align 8
  %cmp6 = icmp eq i64 %15, %17
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %18 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %fwd8 = getelementptr inbounds %struct.Lisp_Buffer_Local_Value, %struct.Lisp_Buffer_Local_Value* %18, i32 0, i32 1
  %19 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %fwd8, align 8
  %call9 = call i64 @do_symval_forwarding(%union.Lisp_Fwd* %19)
  store i64 %call9, i64* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %sw.bb.4
  %20 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %defcell10 = getelementptr inbounds %struct.Lisp_Buffer_Local_Value, %struct.Lisp_Buffer_Local_Value* %20, i32 0, i32 3
  %21 = load i64, i64* %defcell10, align 8
  %sub11 = sub nsw i64 %21, 3
  %22 = inttoptr i64 %sub11 to i8*
  %23 = bitcast i8* %22 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %23, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %24 = load i64, i64* %cdr, align 8
  store i64 %24, i64* %retval
  br label %return

sw.bb.12:                                         ; preds = %start
  %25 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %call13 = call %union.Lisp_Fwd* @SYMBOL_FWD(%struct.Lisp_Symbol* %25)
  store %union.Lisp_Fwd* %call13, %union.Lisp_Fwd** %valcontents, align 8
  %26 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %valcontents, align 8
  %call14 = call zeroext i1 @BUFFER_OBJFWDP(%union.Lisp_Fwd* %26)
  br i1 %call14, label %if.then.15, label %if.end.23

if.then.15:                                       ; preds = %sw.bb.12
  %27 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %valcontents, align 8
  %call16 = call %struct.Lisp_Buffer_Objfwd* @XBUFFER_OBJFWD(%union.Lisp_Fwd* %27)
  %offset17 = getelementptr inbounds %struct.Lisp_Buffer_Objfwd, %struct.Lisp_Buffer_Objfwd* %call16, i32 0, i32 1
  %28 = load i32, i32* %offset17, align 4
  store i32 %28, i32* %offset, align 4
  %29 = load i32, i32* %offset, align 4
  %idx.ext = sext i32 %29 to i64
  %add.ptr18 = getelementptr inbounds i8, i8* bitcast (%struct.buffer* @buffer_local_flags to i8*), i64 %idx.ext
  %30 = bitcast i8* %add.ptr18 to i64*
  %31 = load i64, i64* %30, align 8
  %shr = ashr i64 %31, 2
  %cmp19 = icmp ne i64 %shr, 0
  br i1 %cmp19, label %if.then.21, label %if.end

if.then.21:                                       ; preds = %if.then.15
  %32 = load i32, i32* %offset, align 4
  %call22 = call i64 @per_buffer_default(i32 %32)
  store i64 %call22, i64* %retval
  br label %return

if.end:                                           ; preds = %if.then.15
  br label %if.end.23

if.end.23:                                        ; preds = %if.end, %sw.bb.12
  %33 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %valcontents, align 8
  %call24 = call i64 @do_symval_forwarding(%union.Lisp_Fwd* %33)
  store i64 %call24, i64* %retval
  br label %return

sw.default:                                       ; preds = %start
  call void @emacs_abort() #7
  unreachable

return:                                           ; preds = %if.end.23, %if.then.21, %if.else, %if.then, %sw.bb.3
  %34 = load i64, i64* %retval
  ret i64 %34
}

; Function Attrs: nounwind uwtable
define i64 @Fdefault_value(i64 %symbol) #4 {
entry:
  %symbol.addr = alloca i64, align 8
  %value = alloca i64, align 8
  store i64 %symbol, i64* %symbol.addr, align 8
  %0 = load i64, i64* %symbol.addr, align 8
  %call = call i64 @default_value(i64 %0)
  store i64 %call, i64* %value, align 8
  %1 = load i64, i64* %value, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 957)
  %cmp = icmp eq i64 %1, %call1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %value, align 8
  ret i64 %2

if.end:                                           ; preds = %entry
  %call2 = call i64 @builtin_lisp_symbol(i32 1007)
  %3 = load i64, i64* %symbol.addr, align 8
  call void @xsignal1(i64 %call2, i64 %3) #7
  unreachable
}

; Function Attrs: nounwind uwtable
define i64 @Fset_default(i64 %symbol, i64 %value) #4 {
entry:
  %retval = alloca i64, align 8
  %symbol.addr = alloca i64, align 8
  %value.addr = alloca i64, align 8
  %sym = alloca %struct.Lisp_Symbol*, align 8
  %blv = alloca %struct.Lisp_Buffer_Local_Value*, align 8
  %valcontents = alloca %union.Lisp_Fwd*, align 8
  %offset = alloca i32, align 4
  %idx = alloca i32, align 4
  %b = alloca %struct.buffer*, align 8
  store i64 %symbol, i64* %symbol.addr, align 8
  store i64 %value, i64* %value.addr, align 8
  %0 = load i64, i64* %symbol.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 897)
  %1 = load i64, i64* %symbol.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call, i64 %1) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i64, i64* %symbol.addr, align 8
  %sub = sub nsw i64 %4, 0
  %add.ptr = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub
  %5 = bitcast i8* %add.ptr to %struct.Lisp_Symbol*
  %6 = bitcast %struct.Lisp_Symbol* %5 to i16*
  %bf.load = load i16, i16* %6, align 8
  %bf.lshr = lshr i16 %bf.load, 4
  %bf.clear = and i16 %bf.lshr, 3
  %bf.cast = zext i16 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %7 = load i64, i64* %symbol.addr, align 8
  %call2 = call i64 @Fkeywordp(i64 %7)
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp4 = icmp eq i64 %call2, %call3
  br i1 %cmp4, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %8 = load i64, i64* %value.addr, align 8
  %9 = load i64, i64* %symbol.addr, align 8
  %call6 = call i64 @Fdefault_value(i64 %9)
  %cmp7 = icmp eq i64 %8, %call6
  br i1 %cmp7, label %if.else, label %if.then.9

if.then.9:                                        ; preds = %lor.lhs.false, %if.then
  %call10 = call i64 @builtin_lisp_symbol(i32 855)
  %10 = load i64, i64* %symbol.addr, align 8
  call void @xsignal1(i64 %call10, i64 %10) #7
  unreachable

if.else:                                          ; preds = %lor.lhs.false
  %11 = load i64, i64* %value.addr, align 8
  store i64 %11, i64* %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %12 = load i64, i64* %symbol.addr, align 8
  %sub11 = sub nsw i64 %12, 0
  %add.ptr12 = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub11
  %13 = bitcast i8* %add.ptr12 to %struct.Lisp_Symbol*
  store %struct.Lisp_Symbol* %13, %struct.Lisp_Symbol** %sym, align 8
  br label %start

start:                                            ; preds = %sw.bb, %if.end
  %14 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %15 = bitcast %struct.Lisp_Symbol* %14 to i16*
  %bf.load13 = load i16, i16* %15, align 8
  %bf.lshr14 = lshr i16 %bf.load13, 1
  %bf.clear15 = and i16 %bf.lshr14, 7
  %bf.cast16 = zext i16 %bf.clear15 to i32
  switch i32 %bf.cast16, label %sw.default [
    i32 1, label %sw.bb
    i32 4, label %sw.bb.18
    i32 2, label %sw.bb.20
    i32 3, label %sw.bb.29
  ]

sw.bb:                                            ; preds = %start
  %16 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %call17 = call %struct.Lisp_Symbol* @indirect_variable(%struct.Lisp_Symbol* %16)
  store %struct.Lisp_Symbol* %call17, %struct.Lisp_Symbol** %sym, align 8
  br label %start

sw.bb.18:                                         ; preds = %start
  %17 = load i64, i64* %symbol.addr, align 8
  %18 = load i64, i64* %value.addr, align 8
  %call19 = call i64 @Fset(i64 %17, i64 %18)
  store i64 %call19, i64* %retval
  br label %return

sw.bb.20:                                         ; preds = %start
  %19 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %call21 = call %struct.Lisp_Buffer_Local_Value* @SYMBOL_BLV(%struct.Lisp_Symbol* %19)
  store %struct.Lisp_Buffer_Local_Value* %call21, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %20 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %defcell = getelementptr inbounds %struct.Lisp_Buffer_Local_Value, %struct.Lisp_Buffer_Local_Value* %20, i32 0, i32 3
  %21 = load i64, i64* %defcell, align 8
  %22 = load i64, i64* %value.addr, align 8
  call void @XSETCDR(i64 %21, i64 %22)
  %23 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %fwd = getelementptr inbounds %struct.Lisp_Buffer_Local_Value, %struct.Lisp_Buffer_Local_Value* %23, i32 0, i32 1
  %24 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %fwd, align 8
  %tobool22 = icmp ne %union.Lisp_Fwd* %24, null
  br i1 %tobool22, label %land.lhs.true, label %if.end.28

land.lhs.true:                                    ; preds = %sw.bb.20
  %25 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %defcell23 = getelementptr inbounds %struct.Lisp_Buffer_Local_Value, %struct.Lisp_Buffer_Local_Value* %25, i32 0, i32 3
  %26 = load i64, i64* %defcell23, align 8
  %27 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %valcell = getelementptr inbounds %struct.Lisp_Buffer_Local_Value, %struct.Lisp_Buffer_Local_Value* %27, i32 0, i32 4
  %28 = load i64, i64* %valcell, align 8
  %cmp24 = icmp eq i64 %26, %28
  br i1 %cmp24, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %land.lhs.true
  %29 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %fwd27 = getelementptr inbounds %struct.Lisp_Buffer_Local_Value, %struct.Lisp_Buffer_Local_Value* %29, i32 0, i32 1
  %30 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %fwd27, align 8
  %31 = load i64, i64* %value.addr, align 8
  call void @store_symval_forwarding(%union.Lisp_Fwd* %30, i64 %31, %struct.buffer* null)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %land.lhs.true, %sw.bb.20
  %32 = load i64, i64* %value.addr, align 8
  store i64 %32, i64* %retval
  br label %return

sw.bb.29:                                         ; preds = %start
  %33 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %call30 = call %union.Lisp_Fwd* @SYMBOL_FWD(%struct.Lisp_Symbol* %33)
  store %union.Lisp_Fwd* %call30, %union.Lisp_Fwd** %valcontents, align 8
  %34 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %valcontents, align 8
  %call31 = call zeroext i1 @BUFFER_OBJFWDP(%union.Lisp_Fwd* %34)
  br i1 %call31, label %if.then.32, label %if.else.54

if.then.32:                                       ; preds = %sw.bb.29
  %35 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %valcontents, align 8
  %call33 = call %struct.Lisp_Buffer_Objfwd* @XBUFFER_OBJFWD(%union.Lisp_Fwd* %35)
  %offset34 = getelementptr inbounds %struct.Lisp_Buffer_Objfwd, %struct.Lisp_Buffer_Objfwd* %call33, i32 0, i32 1
  %36 = load i32, i32* %offset34, align 4
  store i32 %36, i32* %offset, align 4
  %37 = load i32, i32* %offset, align 4
  %idx.ext = sext i32 %37 to i64
  %add.ptr35 = getelementptr inbounds i8, i8* bitcast (%struct.buffer* @buffer_local_flags to i8*), i64 %idx.ext
  %38 = bitcast i8* %add.ptr35 to i64*
  %39 = load i64, i64* %38, align 8
  %shr = ashr i64 %39, 2
  %conv36 = trunc i64 %shr to i32
  store i32 %conv36, i32* %idx, align 4
  %40 = load i32, i32* %offset, align 4
  %41 = load i64, i64* %value.addr, align 8
  call void @set_per_buffer_default(i32 %40, i64 %41)
  %42 = load i32, i32* %idx, align 4
  %cmp37 = icmp sgt i32 %42, 0
  br i1 %cmp37, label %if.then.39, label %if.end.53

if.then.39:                                       ; preds = %if.then.32
  %43 = load %struct.buffer*, %struct.buffer** @all_buffers, align 8
  store %struct.buffer* %43, %struct.buffer** %b, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.39
  %44 = load %struct.buffer*, %struct.buffer** %b, align 8
  %tobool40 = icmp ne %struct.buffer* %44, null
  br i1 %tobool40, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %45 = load i32, i32* %idx, align 4
  %cmp41 = icmp slt i32 %45, 0
  br i1 %cmp41, label %cond.true.46, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %for.body
  %46 = load i32, i32* %idx, align 4
  %47 = load i32, i32* @last_per_buffer_idx, align 4
  %cmp44 = icmp sge i32 %46, %47
  br i1 %cmp44, label %cond.true.46, label %cond.false.47

cond.true.46:                                     ; preds = %lor.lhs.false.43, %for.body
  call void @emacs_abort() #7
  unreachable
                                                  ; No predecessors!
  br i1 false, label %if.end.52, label %if.then.51

cond.false.47:                                    ; preds = %lor.lhs.false.43
  %49 = load i32, i32* %idx, align 4
  %idxprom = sext i32 %49 to i64
  %50 = load %struct.buffer*, %struct.buffer** %b, align 8
  %local_flags = getelementptr inbounds %struct.buffer, %struct.buffer* %50, i32 0, i32 84
  %arrayidx = getelementptr inbounds [50 x i8], [50 x i8]* %local_flags, i32 0, i64 %idxprom
  %51 = load i8, i8* %arrayidx, align 1
  %conv48 = sext i8 %51 to i32
  %cmp49 = icmp ne i32 %conv48, 0
  br i1 %cmp49, label %if.end.52, label %if.then.51

if.then.51:                                       ; preds = %cond.false.47, %48
  %52 = load %struct.buffer*, %struct.buffer** %b, align 8
  %53 = load i32, i32* %offset, align 4
  %54 = load i64, i64* %value.addr, align 8
  call void @set_per_buffer_value(%struct.buffer* %52, i32 %53, i64 %54)
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %cond.false.47, %48
  br label %for.inc

for.inc:                                          ; preds = %if.end.52
  %55 = load %struct.buffer*, %struct.buffer** %b, align 8
  %next = getelementptr inbounds %struct.buffer, %struct.buffer* %55, i32 0, i32 74
  %56 = load %struct.buffer*, %struct.buffer** %next, align 8
  store %struct.buffer* %56, %struct.buffer** %b, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.53

if.end.53:                                        ; preds = %for.end, %if.then.32
  %57 = load i64, i64* %value.addr, align 8
  store i64 %57, i64* %retval
  br label %return

if.else.54:                                       ; preds = %sw.bb.29
  %58 = load i64, i64* %symbol.addr, align 8
  %59 = load i64, i64* %value.addr, align 8
  %call55 = call i64 @Fset(i64 %58, i64 %59)
  store i64 %call55, i64* %retval
  br label %return

sw.default:                                       ; preds = %start
  call void @emacs_abort() #7
  unreachable

return:                                           ; preds = %if.else.54, %if.end.53, %if.end.28, %sw.bb.18, %if.else
  %60 = load i64, i64* %retval
  ret i64 %60
}

declare void @set_per_buffer_default(i32, i64) #2

declare void @set_per_buffer_value(%struct.buffer*, i32, i64) #2

; Function Attrs: nounwind uwtable
define i64 @Fsetq_default(i64 %args) #4 {
entry:
  %args.addr = alloca i64, align 8
  %args_left = alloca i64, align 8
  %symbol = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %args, i64* %args.addr, align 8
  %0 = load i64, i64* %args.addr, align 8
  store i64 %0, i64* %val, align 8
  store i64 %0, i64* %args_left, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i64, i64* %args_left, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i64, i64* %args_left, align 8
  %sub = sub nsw i64 %2, 3
  %3 = inttoptr i64 %sub to i8*
  %4 = bitcast i8* %3 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %4, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %5 = load i64, i64* %cdr, align 8
  %call = call i64 @Fcar(i64 %5)
  %call2 = call i64 @eval_sub(i64 %call)
  store i64 %call2, i64* %val, align 8
  %6 = load i64, i64* %args_left, align 8
  %sub3 = sub nsw i64 %6, 3
  %7 = inttoptr i64 %sub3 to i8*
  %8 = bitcast i8* %7 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %8, i32 0, i32 0
  %9 = load i64, i64* %car, align 8
  store i64 %9, i64* %symbol, align 8
  %10 = load i64, i64* %symbol, align 8
  %11 = load i64, i64* %val, align 8
  %call4 = call i64 @Fset_default(i64 %10, i64 %11)
  %12 = load i64, i64* %args_left, align 8
  %sub5 = sub nsw i64 %12, 3
  %13 = inttoptr i64 %sub5 to i8*
  %14 = bitcast i8* %13 to %struct.Lisp_Cons*
  %u6 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %14, i32 0, i32 1
  %cdr7 = bitcast %union.anon* %u6 to i64*
  %15 = load i64, i64* %cdr7, align 8
  %call8 = call i64 @Fcdr(i64 %15)
  store i64 %call8, i64* %args_left, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load i64, i64* %val, align 8
  ret i64 %16
}

declare i64 @eval_sub(i64) #2

; Function Attrs: nounwind uwtable
define i64 @Fmake_variable_buffer_local(i64 %variable) #4 {
entry:
  %retval = alloca i64, align 8
  %variable.addr = alloca i64, align 8
  %sym = alloca %struct.Lisp_Symbol*, align 8
  %blv = alloca %struct.Lisp_Buffer_Local_Value*, align 8
  %valcontents = alloca %union.Lisp_Val_Fwd, align 8
  %forwarded = alloca i8, align 1
  %symbol = alloca i64, align 8
  %format = alloca i64, align 8
  %.compoundliteral = alloca %union.Aligned_String, align 8
  %.compoundliteral52 = alloca [2 x i64], align 8
  store i64 %variable, i64* %variable.addr, align 8
  store %struct.Lisp_Buffer_Local_Value* null, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %0 = load i64, i64* %variable.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 897)
  %1 = load i64, i64* %variable.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call, i64 %1) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i64, i64* %variable.addr, align 8
  %sub = sub nsw i64 %4, 0
  %add.ptr = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub
  %5 = bitcast i8* %add.ptr to %struct.Lisp_Symbol*
  store %struct.Lisp_Symbol* %5, %struct.Lisp_Symbol** %sym, align 8
  br label %start

start:                                            ; preds = %sw.bb, %cond.end
  %6 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %7 = bitcast %struct.Lisp_Symbol* %6 to i16*
  %bf.load = load i16, i16* %7, align 8
  %bf.lshr = lshr i16 %bf.load, 1
  %bf.clear = and i16 %bf.lshr, 7
  %bf.cast = zext i16 %bf.clear to i32
  switch i32 %bf.cast, label %sw.default [
    i32 1, label %sw.bb
    i32 4, label %sw.bb.3
    i32 2, label %sw.bb.11
    i32 3, label %sw.bb.21
  ]

sw.bb:                                            ; preds = %start
  %8 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %call2 = call %struct.Lisp_Symbol* @indirect_variable(%struct.Lisp_Symbol* %8)
  store %struct.Lisp_Symbol* %call2, %struct.Lisp_Symbol** %sym, align 8
  br label %start

sw.bb.3:                                          ; preds = %start
  store i8 0, i8* %forwarded, align 1
  %9 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %val = getelementptr inbounds %struct.Lisp_Symbol, %struct.Lisp_Symbol* %9, i32 0, i32 2
  %value = bitcast %union.anon.0* %val to i64*
  %10 = load i64, i64* %value, align 8
  %value4 = bitcast %union.Lisp_Val_Fwd* %valcontents to i64*
  store i64 %10, i64* %value4, align 8
  %value5 = bitcast %union.Lisp_Val_Fwd* %valcontents to i64*
  %11 = load i64, i64* %value5, align 8
  %call6 = call i64 @builtin_lisp_symbol(i32 957)
  %cmp7 = icmp eq i64 %11, %call6
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.3
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  %value10 = bitcast %union.Lisp_Val_Fwd* %valcontents to i64*
  store i64 %call9, i64* %value10, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.3
  br label %sw.epilog

sw.bb.11:                                         ; preds = %start
  %12 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %call12 = call %struct.Lisp_Buffer_Local_Value* @SYMBOL_BLV(%struct.Lisp_Symbol* %12)
  store %struct.Lisp_Buffer_Local_Value* %call12, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %13 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %14 = bitcast %struct.Lisp_Buffer_Local_Value* %13 to i8*
  %bf.load13 = load i8, i8* %14, align 8
  %bf.lshr14 = lshr i8 %bf.load13, 1
  %bf.clear15 = and i8 %bf.lshr14, 1
  %bf.cast16 = trunc i8 %bf.clear15 to i1
  br i1 %bf.cast16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %sw.bb.11
  %15 = load i64, i64* %variable.addr, align 8
  %call18 = call i64 @SYMBOL_NAME(i64 %15)
  %call19 = call i8* @SDATA(i64 %call18)
  call void (i8*, ...) @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0), i8* %call19) #7
  unreachable

if.end.20:                                        ; preds = %sw.bb.11
  br label %sw.epilog

sw.bb.21:                                         ; preds = %start
  store i8 1, i8* %forwarded, align 1
  %16 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %call22 = call %union.Lisp_Fwd* @SYMBOL_FWD(%struct.Lisp_Symbol* %16)
  %fwd = bitcast %union.Lisp_Val_Fwd* %valcontents to %union.Lisp_Fwd**
  store %union.Lisp_Fwd* %call22, %union.Lisp_Fwd** %fwd, align 8
  %fwd23 = bitcast %union.Lisp_Val_Fwd* %valcontents to %union.Lisp_Fwd**
  %17 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %fwd23, align 8
  %call24 = call zeroext i1 @KBOARD_OBJFWDP(%union.Lisp_Fwd* %17)
  br i1 %call24, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %sw.bb.21
  %18 = load i64, i64* %variable.addr, align 8
  %call26 = call i64 @SYMBOL_NAME(i64 %18)
  %call27 = call i8* @SDATA(i64 %call26)
  call void (i8*, ...) @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0), i8* %call27) #7
  unreachable

if.else:                                          ; preds = %sw.bb.21
  %fwd28 = bitcast %union.Lisp_Val_Fwd* %valcontents to %union.Lisp_Fwd**
  %19 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %fwd28, align 8
  %call29 = call zeroext i1 @BUFFER_OBJFWDP(%union.Lisp_Fwd* %19)
  br i1 %call29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.else
  %20 = load i64, i64* %variable.addr, align 8
  store i64 %20, i64* %retval
  br label %return

if.end.31:                                        ; preds = %if.else
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31
  br label %sw.epilog

sw.default:                                       ; preds = %start
  call void @emacs_abort() #7
  unreachable

sw.epilog:                                        ; preds = %if.end.32, %if.end.20, %if.end
  %21 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %22 = bitcast %struct.Lisp_Symbol* %21 to i16*
  %bf.load33 = load i16, i16* %22, align 8
  %bf.lshr34 = lshr i16 %bf.load33, 4
  %bf.clear35 = and i16 %bf.lshr34, 3
  %bf.cast36 = zext i16 %bf.clear35 to i32
  %tobool = icmp ne i32 %bf.cast36, 0
  br i1 %tobool, label %if.then.37, label %if.end.40

if.then.37:                                       ; preds = %sw.epilog
  %23 = load i64, i64* %variable.addr, align 8
  %call38 = call i64 @SYMBOL_NAME(i64 %23)
  %call39 = call i8* @SDATA(i64 %call38)
  call void (i8*, ...) @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0), i8* %call39) #7
  unreachable

if.end.40:                                        ; preds = %sw.epilog
  %24 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %tobool41 = icmp ne %struct.Lisp_Buffer_Local_Value* %24, null
  br i1 %tobool41, label %if.end.56, label %if.then.42

if.then.42:                                       ; preds = %if.end.40
  %25 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %26 = load i8, i8* %forwarded, align 1
  %tobool43 = trunc i8 %26 to i1
  %coerce.dive = getelementptr %union.Lisp_Val_Fwd, %union.Lisp_Val_Fwd* %valcontents, i32 0, i32 0
  %27 = load i64, i64* %coerce.dive, align 8
  %call44 = call %struct.Lisp_Buffer_Local_Value* @make_blv(%struct.Lisp_Symbol* %25, i1 zeroext %tobool43, i64 %27)
  store %struct.Lisp_Buffer_Local_Value* %call44, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %28 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %29 = bitcast %struct.Lisp_Symbol* %28 to i16*
  %bf.load45 = load i16, i16* %29, align 8
  %bf.clear46 = and i16 %bf.load45, -15
  %bf.set = or i16 %bf.clear46, 4
  store i16 %bf.set, i16* %29, align 8
  %30 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %31 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  call void @SET_SYMBOL_BLV(%struct.Lisp_Symbol* %30, %struct.Lisp_Buffer_Local_Value* %31)
  %32 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %call47 = call i64 @make_lisp_symbol(%struct.Lisp_Symbol* %32)
  store i64 %call47, i64* %symbol, align 8
  %33 = load i64, i64* %symbol, align 8
  %call48 = call zeroext i1 @let_shadows_global_binding_p(i64 %33)
  br i1 %call48, label %if.then.49, label %if.end.55

if.then.49:                                       ; preds = %if.then.42
  %s = bitcast %union.Aligned_String* %.compoundliteral to %struct.Lisp_String*
  %size = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 0
  store i64 39, i64* %size, align 8
  %size_byte = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 1
  store i64 -1, i64* %size_byte, align 8
  %intervals = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 2
  store %struct.interval* null, %struct.interval** %intervals, align 8
  %data = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 3
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i32 0, i32 0), i8** %data, align 8
  %s50 = bitcast %union.Aligned_String* %.compoundliteral to %struct.Lisp_String*
  %34 = bitcast %struct.Lisp_String* %s50 to i8*
  %call51 = call i64 @make_lisp_ptr(i8* %34, i32 4)
  store i64 %call51, i64* %format, align 8
  %arrayinit.begin = getelementptr inbounds [2 x i64], [2 x i64]* %.compoundliteral52, i64 0, i64 0
  %35 = load i64, i64* %format, align 8
  store i64 %35, i64* %arrayinit.begin
  %arrayinit.element = getelementptr inbounds i64, i64* %arrayinit.begin, i64 1
  %36 = load i64, i64* %variable.addr, align 8
  %call53 = call i64 @SYMBOL_NAME(i64 %36)
  store i64 %call53, i64* %arrayinit.element
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %.compoundliteral52, i32 0, i32 0
  %call54 = call i64 @Fmessage(i64 2, i64* %arraydecay)
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.49, %if.then.42
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.end.40
  %37 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %38 = bitcast %struct.Lisp_Buffer_Local_Value* %37 to i8*
  %bf.load57 = load i8, i8* %38, align 8
  %bf.clear58 = and i8 %bf.load57, -2
  %bf.set59 = or i8 %bf.clear58, 1
  store i8 %bf.set59, i8* %38, align 8
  %39 = load i64, i64* %variable.addr, align 8
  store i64 %39, i64* %retval
  br label %return

return:                                           ; preds = %if.end.56, %if.then.30
  %40 = load i64, i64* %retval
  ret i64 %40
}

; Function Attrs: noreturn
declare void @error(i8*, ...) #1

declare i8* @SDATA(i64) #2

; Function Attrs: nounwind uwtable
define internal zeroext i1 @KBOARD_OBJFWDP(%union.Lisp_Fwd* %a) #4 {
entry:
  %a.addr = alloca %union.Lisp_Fwd*, align 8
  store %union.Lisp_Fwd* %a, %union.Lisp_Fwd** %a.addr, align 8
  %0 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %a.addr, align 8
  %call = call i32 @XFWDTYPE(%union.Lisp_Fwd* %0)
  %cmp = icmp eq i32 %call, 4
  ret i1 %cmp
}

; Function Attrs: nounwind uwtable
define internal %struct.Lisp_Buffer_Local_Value* @make_blv(%struct.Lisp_Symbol* %sym, i1 zeroext %forwarded, i64 %valcontents.coerce) #4 {
entry:
  %valcontents = alloca %union.Lisp_Val_Fwd, align 8
  %sym.addr = alloca %struct.Lisp_Symbol*, align 8
  %forwarded.addr = alloca i8, align 1
  %blv = alloca %struct.Lisp_Buffer_Local_Value*, align 8
  %symbol = alloca i64, align 8
  %tem = alloca i64, align 8
  %coerce.dive = getelementptr %union.Lisp_Val_Fwd, %union.Lisp_Val_Fwd* %valcontents, i32 0, i32 0
  store i64 %valcontents.coerce, i64* %coerce.dive, align 8
  store %struct.Lisp_Symbol* %sym, %struct.Lisp_Symbol** %sym.addr, align 8
  %frombool = zext i1 %forwarded to i8
  store i8 %frombool, i8* %forwarded.addr, align 1
  %call = call noalias i8* @xmalloc(i64 40)
  %0 = bitcast i8* %call to %struct.Lisp_Buffer_Local_Value*
  store %struct.Lisp_Buffer_Local_Value* %0, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %1 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym.addr, align 8
  %call1 = call i64 @make_lisp_symbol(%struct.Lisp_Symbol* %1)
  store i64 %call1, i64* %symbol, align 8
  %2 = load i64, i64* %symbol, align 8
  %3 = load i8, i8* %forwarded.addr, align 1
  %tobool = trunc i8 %3 to i1
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %fwd = bitcast %union.Lisp_Val_Fwd* %valcontents to %union.Lisp_Fwd**
  %4 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %fwd, align 8
  %call2 = call i64 @do_symval_forwarding(%union.Lisp_Fwd* %4)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %value = bitcast %union.Lisp_Val_Fwd* %valcontents to i64*
  %5 = load i64, i64* %value, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call2, %cond.true ], [ %5, %cond.false ]
  %call3 = call i64 @Fcons(i64 %2, i64 %cond)
  store i64 %call3, i64* %tem, align 8
  %6 = load i8, i8* %forwarded.addr, align 1
  %tobool4 = trunc i8 %6 to i1
  br i1 %tobool4, label %cond.true.5, label %cond.false.7

cond.true.5:                                      ; preds = %cond.end
  %fwd6 = bitcast %union.Lisp_Val_Fwd* %valcontents to %union.Lisp_Fwd**
  %7 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %fwd6, align 8
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.false.7, %cond.true.5
  %cond9 = phi %union.Lisp_Fwd* [ %7, %cond.true.5 ], [ null, %cond.false.7 ]
  %8 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %fwd10 = getelementptr inbounds %struct.Lisp_Buffer_Local_Value, %struct.Lisp_Buffer_Local_Value* %8, i32 0, i32 1
  store %union.Lisp_Fwd* %cond9, %union.Lisp_Fwd** %fwd10, align 8
  %9 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %call11 = call i64 @builtin_lisp_symbol(i32 0)
  call void @set_blv_where(%struct.Lisp_Buffer_Local_Value* %9, i64 %call11)
  %10 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %11 = bitcast %struct.Lisp_Buffer_Local_Value* %10 to i8*
  %bf.load = load i8, i8* %11, align 8
  %bf.clear = and i8 %bf.load, -3
  store i8 %bf.clear, i8* %11, align 8
  %12 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %13 = bitcast %struct.Lisp_Buffer_Local_Value* %12 to i8*
  %bf.load12 = load i8, i8* %13, align 8
  %bf.clear13 = and i8 %bf.load12, -2
  store i8 %bf.clear13, i8* %13, align 8
  %14 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %15 = load i64, i64* %tem, align 8
  call void @set_blv_defcell(%struct.Lisp_Buffer_Local_Value* %14, i64 %15)
  %16 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %17 = load i64, i64* %tem, align 8
  call void @set_blv_valcell(%struct.Lisp_Buffer_Local_Value* %16, i64 %17)
  %18 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  call void @set_blv_found(%struct.Lisp_Buffer_Local_Value* %18, i32 0)
  %19 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  ret %struct.Lisp_Buffer_Local_Value* %19
}

declare void @SET_SYMBOL_BLV(%struct.Lisp_Symbol*, %struct.Lisp_Buffer_Local_Value*) #2

declare zeroext i1 @let_shadows_global_binding_p(i64) #2

declare i64 @Fmessage(i64, i64*) #2

; Function Attrs: nounwind uwtable
define i64 @Fmake_local_variable(i64 %variable) #4 {
entry:
  %retval = alloca i64, align 8
  %variable.addr = alloca i64, align 8
  %tem = alloca i64, align 8
  %forwarded = alloca i8, align 1
  %valcontents = alloca %union.Lisp_Val_Fwd, align 8
  %sym = alloca %struct.Lisp_Symbol*, align 8
  %blv = alloca %struct.Lisp_Buffer_Local_Value*, align 8
  %symbol = alloca i64, align 8
  %format = alloca i64, align 8
  %.compoundliteral = alloca %union.Aligned_String, align 8
  %.compoundliteral64 = alloca [3 x i64], align 8
  %format78 = alloca i64, align 8
  %.compoundliteral79 = alloca %union.Aligned_String, align 8
  %.compoundliteral87 = alloca [2 x i64], align 8
  store i64 %variable, i64* %variable.addr, align 8
  store %struct.Lisp_Buffer_Local_Value* null, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %0 = load i64, i64* %variable.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 897)
  %1 = load i64, i64* %variable.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call, i64 %1) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i64, i64* %variable.addr, align 8
  %sub = sub nsw i64 %4, 0
  %add.ptr = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub
  %5 = bitcast i8* %add.ptr to %struct.Lisp_Symbol*
  store %struct.Lisp_Symbol* %5, %struct.Lisp_Symbol** %sym, align 8
  br label %start

start:                                            ; preds = %sw.bb, %cond.end
  %6 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %7 = bitcast %struct.Lisp_Symbol* %6 to i16*
  %bf.load = load i16, i16* %7, align 8
  %bf.lshr = lshr i16 %bf.load, 1
  %bf.clear = and i16 %bf.lshr, 7
  %bf.cast = zext i16 %bf.clear to i32
  switch i32 %bf.cast, label %sw.default [
    i32 1, label %sw.bb
    i32 4, label %sw.bb.3
    i32 2, label %sw.bb.5
    i32 3, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %start
  %8 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %call2 = call %struct.Lisp_Symbol* @indirect_variable(%struct.Lisp_Symbol* %8)
  store %struct.Lisp_Symbol* %call2, %struct.Lisp_Symbol** %sym, align 8
  br label %start

sw.bb.3:                                          ; preds = %start
  store i8 0, i8* %forwarded, align 1
  %9 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %val = getelementptr inbounds %struct.Lisp_Symbol, %struct.Lisp_Symbol* %9, i32 0, i32 2
  %value = bitcast %union.anon.0* %val to i64*
  %10 = load i64, i64* %value, align 8
  %value4 = bitcast %union.Lisp_Val_Fwd* %valcontents to i64*
  store i64 %10, i64* %value4, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %start
  %11 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %call6 = call %struct.Lisp_Buffer_Local_Value* @SYMBOL_BLV(%struct.Lisp_Symbol* %11)
  store %struct.Lisp_Buffer_Local_Value* %call6, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %12 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %13 = bitcast %struct.Lisp_Buffer_Local_Value* %12 to i8*
  %bf.load7 = load i8, i8* %13, align 8
  %bf.lshr8 = lshr i8 %bf.load7, 1
  %bf.clear9 = and i8 %bf.lshr8, 1
  %bf.cast10 = trunc i8 %bf.clear9 to i1
  br i1 %bf.cast10, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.5
  %14 = load i64, i64* %variable.addr, align 8
  %call11 = call i64 @SYMBOL_NAME(i64 %14)
  %call12 = call i8* @SDATA(i64 %call11)
  call void (i8*, ...) @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0), i8* %call12) #7
  unreachable

if.end:                                           ; preds = %sw.bb.5
  br label %sw.epilog

sw.bb.13:                                         ; preds = %start
  store i8 1, i8* %forwarded, align 1
  %15 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %call14 = call %union.Lisp_Fwd* @SYMBOL_FWD(%struct.Lisp_Symbol* %15)
  %fwd = bitcast %union.Lisp_Val_Fwd* %valcontents to %union.Lisp_Fwd**
  store %union.Lisp_Fwd* %call14, %union.Lisp_Fwd** %fwd, align 8
  %fwd15 = bitcast %union.Lisp_Val_Fwd* %valcontents to %union.Lisp_Fwd**
  %16 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %fwd15, align 8
  %call16 = call zeroext i1 @KBOARD_OBJFWDP(%union.Lisp_Fwd* %16)
  br i1 %call16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %sw.bb.13
  %17 = load i64, i64* %variable.addr, align 8
  %call18 = call i64 @SYMBOL_NAME(i64 %17)
  %call19 = call i8* @SDATA(i64 %call18)
  call void (i8*, ...) @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0), i8* %call19) #7
  unreachable

if.end.20:                                        ; preds = %sw.bb.13
  br label %sw.epilog

sw.default:                                       ; preds = %start
  call void @emacs_abort() #7
  unreachable

sw.epilog:                                        ; preds = %if.end.20, %if.end, %sw.bb.3
  %18 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %19 = bitcast %struct.Lisp_Symbol* %18 to i16*
  %bf.load21 = load i16, i16* %19, align 8
  %bf.lshr22 = lshr i16 %bf.load21, 4
  %bf.clear23 = and i16 %bf.lshr22, 3
  %bf.cast24 = zext i16 %bf.clear23 to i32
  %tobool = icmp ne i32 %bf.cast24, 0
  br i1 %tobool, label %if.then.25, label %if.end.28

if.then.25:                                       ; preds = %sw.epilog
  %20 = load i64, i64* %variable.addr, align 8
  %call26 = call i64 @SYMBOL_NAME(i64 %20)
  %call27 = call i8* @SDATA(i64 %call26)
  call void (i8*, ...) @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0), i8* %call27) #7
  unreachable

if.end.28:                                        ; preds = %sw.epilog
  %21 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %tobool29 = icmp ne %struct.Lisp_Buffer_Local_Value* %21, null
  br i1 %tobool29, label %cond.true.30, label %cond.false.35

cond.true.30:                                     ; preds = %if.end.28
  %22 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %23 = bitcast %struct.Lisp_Buffer_Local_Value* %22 to i8*
  %bf.load31 = load i8, i8* %23, align 8
  %bf.clear32 = and i8 %bf.load31, 1
  %bf.cast33 = trunc i8 %bf.clear32 to i1
  br i1 %bf.cast33, label %if.then.41, label %if.end.52

cond.false.35:                                    ; preds = %if.end.28
  %24 = load i8, i8* %forwarded, align 1
  %tobool36 = trunc i8 %24 to i1
  br i1 %tobool36, label %land.lhs.true, label %if.end.52

land.lhs.true:                                    ; preds = %cond.false.35
  %fwd38 = bitcast %union.Lisp_Val_Fwd* %valcontents to %union.Lisp_Fwd**
  %25 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %fwd38, align 8
  %call39 = call zeroext i1 @BUFFER_OBJFWDP(%union.Lisp_Fwd* %25)
  br i1 %call39, label %if.then.41, label %if.end.52

if.then.41:                                       ; preds = %land.lhs.true, %cond.true.30
  %26 = load i64, i64* %variable.addr, align 8
  %call42 = call i64 @Fboundp(i64 %26)
  store i64 %call42, i64* %tem, align 8
  %27 = load i64, i64* %variable.addr, align 8
  %28 = load i64, i64* %tem, align 8
  %call43 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp44 = icmp eq i64 %28, %call43
  br i1 %cmp44, label %cond.true.46, label %cond.false.48

cond.true.46:                                     ; preds = %if.then.41
  %29 = load i64, i64* %variable.addr, align 8
  %call47 = call i64 @Fsymbol_value(i64 %29)
  br label %cond.end.50

cond.false.48:                                    ; preds = %if.then.41
  %call49 = call i64 @builtin_lisp_symbol(i32 957)
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.48, %cond.true.46
  %cond = phi i64 [ %call47, %cond.true.46 ], [ %call49, %cond.false.48 ]
  %call51 = call i64 @Fset(i64 %27, i64 %cond)
  %30 = load i64, i64* %variable.addr, align 8
  store i64 %30, i64* %retval
  br label %return

if.end.52:                                        ; preds = %land.lhs.true, %cond.false.35, %cond.true.30
  %31 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %tobool53 = icmp ne %struct.Lisp_Buffer_Local_Value* %31, null
  br i1 %tobool53, label %if.end.69, label %if.then.54

if.then.54:                                       ; preds = %if.end.52
  %32 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %33 = load i8, i8* %forwarded, align 1
  %tobool55 = trunc i8 %33 to i1
  %coerce.dive = getelementptr %union.Lisp_Val_Fwd, %union.Lisp_Val_Fwd* %valcontents, i32 0, i32 0
  %34 = load i64, i64* %coerce.dive, align 8
  %call56 = call %struct.Lisp_Buffer_Local_Value* @make_blv(%struct.Lisp_Symbol* %32, i1 zeroext %tobool55, i64 %34)
  store %struct.Lisp_Buffer_Local_Value* %call56, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %35 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %36 = bitcast %struct.Lisp_Symbol* %35 to i16*
  %bf.load57 = load i16, i16* %36, align 8
  %bf.clear58 = and i16 %bf.load57, -15
  %bf.set = or i16 %bf.clear58, 4
  store i16 %bf.set, i16* %36, align 8
  %37 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %38 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  call void @SET_SYMBOL_BLV(%struct.Lisp_Symbol* %37, %struct.Lisp_Buffer_Local_Value* %38)
  %39 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %call59 = call i64 @make_lisp_symbol(%struct.Lisp_Symbol* %39)
  store i64 %call59, i64* %symbol, align 8
  %40 = load i64, i64* %symbol, align 8
  %call60 = call zeroext i1 @let_shadows_global_binding_p(i64 %40)
  br i1 %call60, label %if.then.61, label %if.end.68

if.then.61:                                       ; preds = %if.then.54
  %s = bitcast %union.Aligned_String* %.compoundliteral to %struct.Lisp_String*
  %size = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 0
  store i64 38, i64* %size, align 8
  %size_byte = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 1
  store i64 -1, i64* %size_byte, align 8
  %intervals = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 2
  store %struct.interval* null, %struct.interval** %intervals, align 8
  %data = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 3
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i32 0, i32 0), i8** %data, align 8
  %s62 = bitcast %union.Aligned_String* %.compoundliteral to %struct.Lisp_String*
  %41 = bitcast %struct.Lisp_String* %s62 to i8*
  %call63 = call i64 @make_lisp_ptr(i8* %41, i32 4)
  store i64 %call63, i64* %format, align 8
  %arrayinit.begin = getelementptr inbounds [3 x i64], [3 x i64]* %.compoundliteral64, i64 0, i64 0
  %42 = load i64, i64* %format, align 8
  store i64 %42, i64* %arrayinit.begin
  %arrayinit.element = getelementptr inbounds i64, i64* %arrayinit.begin, i64 1
  %43 = load i64, i64* %variable.addr, align 8
  %call65 = call i64 @SYMBOL_NAME(i64 %43)
  store i64 %call65, i64* %arrayinit.element
  %arrayinit.element66 = getelementptr inbounds i64, i64* %arrayinit.element, i64 1
  %44 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %name_ = getelementptr inbounds %struct.buffer, %struct.buffer* %44, i32 0, i32 1
  %45 = load i64, i64* %name_, align 8
  store i64 %45, i64* %arrayinit.element66
  %arraydecay = getelementptr inbounds [3 x i64], [3 x i64]* %.compoundliteral64, i32 0, i32 0
  %call67 = call i64 @Fmessage(i64 3, i64* %arraydecay)
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.61, %if.then.54
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.end.52
  %46 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %call70 = call i64 @make_lisp_symbol(%struct.Lisp_Symbol* %46)
  store i64 %call70, i64* %variable.addr, align 8
  %47 = load i64, i64* %variable.addr, align 8
  %48 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %local_var_alist_ = getelementptr inbounds %struct.buffer, %struct.buffer* %48, i32 0, i32 9
  %49 = load i64, i64* %local_var_alist_, align 8
  %call71 = call i64 @Fassq(i64 %47, i64 %49)
  store i64 %call71, i64* %tem, align 8
  %50 = load i64, i64* %tem, align 8
  %call72 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp73 = icmp eq i64 %50, %call72
  br i1 %cmp73, label %if.then.75, label %if.end.105

if.then.75:                                       ; preds = %if.end.69
  %51 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %call76 = call zeroext i1 @let_shadows_buffer_binding_p(%struct.Lisp_Symbol* %51)
  br i1 %call76, label %if.then.77, label %if.end.93

if.then.77:                                       ; preds = %if.then.75
  %s80 = bitcast %union.Aligned_String* %.compoundliteral79 to %struct.Lisp_String*
  %size81 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s80, i32 0, i32 0
  store i64 47, i64* %size81, align 8
  %size_byte82 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s80, i32 0, i32 1
  store i64 -1, i64* %size_byte82, align 8
  %intervals83 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s80, i32 0, i32 2
  store %struct.interval* null, %struct.interval** %intervals83, align 8
  %data84 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s80, i32 0, i32 3
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i32 0, i32 0), i8** %data84, align 8
  %s85 = bitcast %union.Aligned_String* %.compoundliteral79 to %struct.Lisp_String*
  %52 = bitcast %struct.Lisp_String* %s85 to i8*
  %call86 = call i64 @make_lisp_ptr(i8* %52, i32 4)
  store i64 %call86, i64* %format78, align 8
  %arrayinit.begin88 = getelementptr inbounds [2 x i64], [2 x i64]* %.compoundliteral87, i64 0, i64 0
  %53 = load i64, i64* %format78, align 8
  store i64 %53, i64* %arrayinit.begin88
  %arrayinit.element89 = getelementptr inbounds i64, i64* %arrayinit.begin88, i64 1
  %54 = load i64, i64* %variable.addr, align 8
  %call90 = call i64 @SYMBOL_NAME(i64 %54)
  store i64 %call90, i64* %arrayinit.element89
  %arraydecay91 = getelementptr inbounds [2 x i64], [2 x i64]* %.compoundliteral87, i32 0, i32 0
  %call92 = call i64 @Fmessage(i64 2, i64* %arraydecay91)
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.77, %if.then.75
  %55 = load i64, i64* %variable.addr, align 8
  %call94 = call i64 @find_symbol_value(i64 %55)
  %56 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %57 = load i64, i64* %variable.addr, align 8
  %58 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %defcell = getelementptr inbounds %struct.Lisp_Buffer_Local_Value, %struct.Lisp_Buffer_Local_Value* %58, i32 0, i32 3
  %59 = load i64, i64* %defcell, align 8
  %sub95 = sub nsw i64 %59, 3
  %60 = inttoptr i64 %sub95 to i8*
  %61 = bitcast i8* %60 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %61, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %62 = load i64, i64* %cdr, align 8
  %call96 = call i64 @Fcons(i64 %57, i64 %62)
  %63 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %local_var_alist_97 = getelementptr inbounds %struct.buffer, %struct.buffer* %63, i32 0, i32 9
  %64 = load i64, i64* %local_var_alist_97, align 8
  %call98 = call i64 @Fcons(i64 %call96, i64 %64)
  call void @bset_local_var_alist(%struct.buffer* %56, i64 %call98)
  %65 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %66 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %where = getelementptr inbounds %struct.Lisp_Buffer_Local_Value, %struct.Lisp_Buffer_Local_Value* %66, i32 0, i32 2
  %67 = load i64, i64* %where, align 8
  %call99 = call %struct.buffer* @XBUFFER(i64 %67)
  %cmp100 = icmp eq %struct.buffer* %65, %call99
  br i1 %cmp100, label %if.then.102, label %if.end.104

if.then.102:                                      ; preds = %if.end.93
  %68 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %call103 = call i64 @builtin_lisp_symbol(i32 0)
  call void @set_blv_where(%struct.Lisp_Buffer_Local_Value* %68, i64 %call103)
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.102, %if.end.93
  %69 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  call void @set_blv_found(%struct.Lisp_Buffer_Local_Value* %69, i32 0)
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.end.69
  %70 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %fwd106 = getelementptr inbounds %struct.Lisp_Buffer_Local_Value, %struct.Lisp_Buffer_Local_Value* %70, i32 0, i32 1
  %71 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %fwd106, align 8
  %tobool107 = icmp ne %union.Lisp_Fwd* %71, null
  br i1 %tobool107, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %if.end.105
  %72 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %73 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  call void @swap_in_symval_forwarding(%struct.Lisp_Symbol* %72, %struct.Lisp_Buffer_Local_Value* %73)
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.108, %if.end.105
  %74 = load i64, i64* %variable.addr, align 8
  store i64 %74, i64* %retval
  br label %return

return:                                           ; preds = %if.end.109, %cond.end.50
  %75 = load i64, i64* %retval
  ret i64 %75
}

; Function Attrs: nounwind uwtable
define i64 @Fkill_local_variable(i64 %variable) #4 {
entry:
  %retval = alloca i64, align 8
  %variable.addr = alloca i64, align 8
  %tem = alloca i64, align 8
  %blv = alloca %struct.Lisp_Buffer_Local_Value*, align 8
  %sym = alloca %struct.Lisp_Symbol*, align 8
  %valcontents = alloca %union.Lisp_Fwd*, align 8
  %offset = alloca i32, align 4
  %idx = alloca i32, align 4
  %buf = alloca i64, align 8
  store i64 %variable, i64* %variable.addr, align 8
  %0 = load i64, i64* %variable.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 897)
  %1 = load i64, i64* %variable.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call, i64 %1) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i64, i64* %variable.addr, align 8
  %sub = sub nsw i64 %4, 0
  %add.ptr = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub
  %5 = bitcast i8* %add.ptr to %struct.Lisp_Symbol*
  store %struct.Lisp_Symbol* %5, %struct.Lisp_Symbol** %sym, align 8
  br label %start

start:                                            ; preds = %sw.bb, %cond.end
  %6 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %7 = bitcast %struct.Lisp_Symbol* %6 to i16*
  %bf.load = load i16, i16* %7, align 8
  %bf.lshr = lshr i16 %bf.load, 1
  %bf.clear = and i16 %bf.lshr, 7
  %bf.cast = zext i16 %bf.clear to i32
  switch i32 %bf.cast, label %sw.default [
    i32 1, label %sw.bb
    i32 4, label %sw.bb.3
    i32 3, label %sw.bb.4
    i32 2, label %sw.bb.22
  ]

sw.bb:                                            ; preds = %start
  %8 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %call2 = call %struct.Lisp_Symbol* @indirect_variable(%struct.Lisp_Symbol* %8)
  store %struct.Lisp_Symbol* %call2, %struct.Lisp_Symbol** %sym, align 8
  br label %start

sw.bb.3:                                          ; preds = %start
  %9 = load i64, i64* %variable.addr, align 8
  store i64 %9, i64* %retval
  br label %return

sw.bb.4:                                          ; preds = %start
  %10 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %call5 = call %union.Lisp_Fwd* @SYMBOL_FWD(%struct.Lisp_Symbol* %10)
  store %union.Lisp_Fwd* %call5, %union.Lisp_Fwd** %valcontents, align 8
  %11 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %valcontents, align 8
  %call6 = call zeroext i1 @BUFFER_OBJFWDP(%union.Lisp_Fwd* %11)
  br i1 %call6, label %if.then, label %if.end.21

if.then:                                          ; preds = %sw.bb.4
  %12 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %valcontents, align 8
  %call7 = call %struct.Lisp_Buffer_Objfwd* @XBUFFER_OBJFWD(%union.Lisp_Fwd* %12)
  %offset8 = getelementptr inbounds %struct.Lisp_Buffer_Objfwd, %struct.Lisp_Buffer_Objfwd* %call7, i32 0, i32 1
  %13 = load i32, i32* %offset8, align 4
  store i32 %13, i32* %offset, align 4
  %14 = load i32, i32* %offset, align 4
  %idx.ext = sext i32 %14 to i64
  %add.ptr9 = getelementptr inbounds i8, i8* bitcast (%struct.buffer* @buffer_local_flags to i8*), i64 %idx.ext
  %15 = bitcast i8* %add.ptr9 to i64*
  %16 = load i64, i64* %15, align 8
  %shr = ashr i64 %16, 2
  %conv10 = trunc i64 %shr to i32
  store i32 %conv10, i32* %idx, align 4
  %17 = load i32, i32* %idx, align 4
  %cmp11 = icmp sgt i32 %17, 0
  br i1 %cmp11, label %if.then.13, label %if.end.20

if.then.13:                                       ; preds = %if.then
  br label %do.body

do.body:                                          ; preds = %if.then.13
  %18 = load i32, i32* %idx, align 4
  %cmp14 = icmp slt i32 %18, 0
  br i1 %cmp14, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %19 = load i32, i32* %idx, align 4
  %20 = load i32, i32* @last_per_buffer_idx, align 4
  %cmp16 = icmp sge i32 %19, %20
  br i1 %cmp16, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %lor.lhs.false, %do.body
  call void @emacs_abort() #7
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %21 = load i32, i32* %idx, align 4
  %idxprom = sext i32 %21 to i64
  %22 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %local_flags = getelementptr inbounds %struct.buffer, %struct.buffer* %22, i32 0, i32 84
  %arrayidx = getelementptr inbounds [50 x i8], [50 x i8]* %local_flags, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %if.end
  %23 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %24 = load i32, i32* %offset, align 4
  %25 = load i32, i32* %offset, align 4
  %call19 = call i64 @per_buffer_default(i32 %25)
  call void @set_per_buffer_value(%struct.buffer* %23, i32 %24, i64 %call19)
  br label %if.end.20

if.end.20:                                        ; preds = %do.end, %if.then
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %sw.bb.4
  %26 = load i64, i64* %variable.addr, align 8
  store i64 %26, i64* %retval
  br label %return

sw.bb.22:                                         ; preds = %start
  %27 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %call23 = call %struct.Lisp_Buffer_Local_Value* @SYMBOL_BLV(%struct.Lisp_Symbol* %27)
  store %struct.Lisp_Buffer_Local_Value* %call23, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %28 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %29 = bitcast %struct.Lisp_Buffer_Local_Value* %28 to i8*
  %bf.load24 = load i8, i8* %29, align 8
  %bf.lshr25 = lshr i8 %bf.load24, 1
  %bf.clear26 = and i8 %bf.lshr25, 1
  %bf.cast27 = trunc i8 %bf.clear26 to i1
  br i1 %bf.cast27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %sw.bb.22
  %30 = load i64, i64* %variable.addr, align 8
  store i64 %30, i64* %retval
  br label %return

if.end.29:                                        ; preds = %sw.bb.22
  br label %sw.epilog

sw.default:                                       ; preds = %start
  call void @emacs_abort() #7
  unreachable

sw.epilog:                                        ; preds = %if.end.29
  %31 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %call30 = call i64 @make_lisp_symbol(%struct.Lisp_Symbol* %31)
  store i64 %call30, i64* %variable.addr, align 8
  %32 = load i64, i64* %variable.addr, align 8
  %33 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %local_var_alist_ = getelementptr inbounds %struct.buffer, %struct.buffer* %33, i32 0, i32 9
  %34 = load i64, i64* %local_var_alist_, align 8
  %call31 = call i64 @Fassq(i64 %32, i64 %34)
  store i64 %call31, i64* %tem, align 8
  %35 = load i64, i64* %tem, align 8
  %call32 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp33 = icmp eq i64 %35, %call32
  br i1 %cmp33, label %if.end.38, label %if.then.35

if.then.35:                                       ; preds = %sw.epilog
  %36 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %37 = load i64, i64* %tem, align 8
  %38 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %local_var_alist_36 = getelementptr inbounds %struct.buffer, %struct.buffer* %38, i32 0, i32 9
  %39 = load i64, i64* %local_var_alist_36, align 8
  %call37 = call i64 @Fdelq(i64 %37, i64 %39)
  call void @bset_local_var_alist(%struct.buffer* %36, i64 %call37)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.35, %sw.epilog
  %40 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %41 = bitcast %struct.buffer* %40 to i8*
  %call39 = call i64 @make_lisp_ptr(i8* %41, i32 5)
  store i64 %call39, i64* %buf, align 8
  %42 = load i64, i64* %buf, align 8
  %43 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %where = getelementptr inbounds %struct.Lisp_Buffer_Local_Value, %struct.Lisp_Buffer_Local_Value* %43, i32 0, i32 2
  %44 = load i64, i64* %where, align 8
  %cmp40 = icmp eq i64 %42, %44
  br i1 %cmp40, label %if.then.42, label %if.end.47

if.then.42:                                       ; preds = %if.end.38
  %45 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %call43 = call i64 @builtin_lisp_symbol(i32 0)
  call void @set_blv_where(%struct.Lisp_Buffer_Local_Value* %45, i64 %call43)
  %46 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %47 = bitcast %struct.Lisp_Buffer_Local_Value* %46 to i8*
  %bf.load44 = load i8, i8* %47, align 8
  %bf.clear45 = and i8 %bf.load44, -5
  store i8 %bf.clear45, i8* %47, align 8
  %48 = load i64, i64* %variable.addr, align 8
  %call46 = call i64 @find_symbol_value(i64 %48)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.42, %if.end.38
  %49 = load i64, i64* %variable.addr, align 8
  store i64 %49, i64* %retval
  br label %return

return:                                           ; preds = %if.end.47, %if.then.28, %if.end.21, %sw.bb.3
  %50 = load i64, i64* %retval
  ret i64 %50
}

declare i64 @per_buffer_default(i32) #2

declare i64 @Fdelq(i64, i64) #2

; Function Attrs: nounwind uwtable
define i64 @Fmake_variable_frame_local(i64 %variable) #4 {
entry:
  %retval = alloca i64, align 8
  %variable.addr = alloca i64, align 8
  %forwarded = alloca i8, align 1
  %valcontents = alloca %union.Lisp_Val_Fwd, align 8
  %sym = alloca %struct.Lisp_Symbol*, align 8
  %blv = alloca %struct.Lisp_Buffer_Local_Value*, align 8
  %symbol = alloca i64, align 8
  %format = alloca i64, align 8
  %.compoundliteral = alloca %union.Aligned_String, align 8
  %.compoundliteral52 = alloca [2 x i64], align 8
  store i64 %variable, i64* %variable.addr, align 8
  store %struct.Lisp_Buffer_Local_Value* null, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %0 = load i64, i64* %variable.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 897)
  %1 = load i64, i64* %variable.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call, i64 %1) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i64, i64* %variable.addr, align 8
  %sub = sub nsw i64 %4, 0
  %add.ptr = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub
  %5 = bitcast i8* %add.ptr to %struct.Lisp_Symbol*
  store %struct.Lisp_Symbol* %5, %struct.Lisp_Symbol** %sym, align 8
  br label %start

start:                                            ; preds = %sw.bb, %cond.end
  %6 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %7 = bitcast %struct.Lisp_Symbol* %6 to i16*
  %bf.load = load i16, i16* %7, align 8
  %bf.lshr = lshr i16 %bf.load, 1
  %bf.clear = and i16 %bf.lshr, 7
  %bf.cast = zext i16 %bf.clear to i32
  switch i32 %bf.cast, label %sw.default [
    i32 1, label %sw.bb
    i32 4, label %sw.bb.3
    i32 2, label %sw.bb.11
    i32 3, label %sw.bb.20
  ]

sw.bb:                                            ; preds = %start
  %8 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %call2 = call %struct.Lisp_Symbol* @indirect_variable(%struct.Lisp_Symbol* %8)
  store %struct.Lisp_Symbol* %call2, %struct.Lisp_Symbol** %sym, align 8
  br label %start

sw.bb.3:                                          ; preds = %start
  store i8 0, i8* %forwarded, align 1
  %9 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %val = getelementptr inbounds %struct.Lisp_Symbol, %struct.Lisp_Symbol* %9, i32 0, i32 2
  %value = bitcast %union.anon.0* %val to i64*
  %10 = load i64, i64* %value, align 8
  %value4 = bitcast %union.Lisp_Val_Fwd* %valcontents to i64*
  store i64 %10, i64* %value4, align 8
  %value5 = bitcast %union.Lisp_Val_Fwd* %valcontents to i64*
  %11 = load i64, i64* %value5, align 8
  %call6 = call i64 @builtin_lisp_symbol(i32 957)
  %cmp7 = icmp eq i64 %11, %call6
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.3
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  %value10 = bitcast %union.Lisp_Val_Fwd* %valcontents to i64*
  store i64 %call9, i64* %value10, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.3
  br label %sw.epilog

sw.bb.11:                                         ; preds = %start
  %12 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %call12 = call %struct.Lisp_Buffer_Local_Value* @SYMBOL_BLV(%struct.Lisp_Symbol* %12)
  %13 = bitcast %struct.Lisp_Buffer_Local_Value* %call12 to i8*
  %bf.load13 = load i8, i8* %13, align 8
  %bf.lshr14 = lshr i8 %bf.load13, 1
  %bf.clear15 = and i8 %bf.lshr14, 1
  %bf.cast16 = trunc i8 %bf.clear15 to i1
  br i1 %bf.cast16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %sw.bb.11
  %14 = load i64, i64* %variable.addr, align 8
  store i64 %14, i64* %retval
  br label %return

if.else:                                          ; preds = %sw.bb.11
  %15 = load i64, i64* %variable.addr, align 8
  %call18 = call i64 @SYMBOL_NAME(i64 %15)
  %call19 = call i8* @SDATA(i64 %call18)
  call void (i8*, ...) @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0), i8* %call19) #7
  unreachable

sw.bb.20:                                         ; preds = %start
  store i8 1, i8* %forwarded, align 1
  %16 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %call21 = call %union.Lisp_Fwd* @SYMBOL_FWD(%struct.Lisp_Symbol* %16)
  %fwd = bitcast %union.Lisp_Val_Fwd* %valcontents to %union.Lisp_Fwd**
  store %union.Lisp_Fwd* %call21, %union.Lisp_Fwd** %fwd, align 8
  %fwd22 = bitcast %union.Lisp_Val_Fwd* %valcontents to %union.Lisp_Fwd**
  %17 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %fwd22, align 8
  %call23 = call zeroext i1 @KBOARD_OBJFWDP(%union.Lisp_Fwd* %17)
  br i1 %call23, label %if.then.28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.20
  %fwd25 = bitcast %union.Lisp_Val_Fwd* %valcontents to %union.Lisp_Fwd**
  %18 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %fwd25, align 8
  %call26 = call zeroext i1 @BUFFER_OBJFWDP(%union.Lisp_Fwd* %18)
  br i1 %call26, label %if.then.28, label %if.end.31

if.then.28:                                       ; preds = %lor.lhs.false, %sw.bb.20
  %19 = load i64, i64* %variable.addr, align 8
  %call29 = call i64 @SYMBOL_NAME(i64 %19)
  %call30 = call i8* @SDATA(i64 %call29)
  call void (i8*, ...) @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0), i8* %call30) #7
  unreachable

if.end.31:                                        ; preds = %lor.lhs.false
  br label %sw.epilog

sw.default:                                       ; preds = %start
  call void @emacs_abort() #7
  unreachable

sw.epilog:                                        ; preds = %if.end.31, %if.end
  %20 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %21 = bitcast %struct.Lisp_Symbol* %20 to i16*
  %bf.load32 = load i16, i16* %21, align 8
  %bf.lshr33 = lshr i16 %bf.load32, 4
  %bf.clear34 = and i16 %bf.lshr33, 3
  %bf.cast35 = zext i16 %bf.clear34 to i32
  %tobool = icmp ne i32 %bf.cast35, 0
  br i1 %tobool, label %if.then.36, label %if.end.39

if.then.36:                                       ; preds = %sw.epilog
  %22 = load i64, i64* %variable.addr, align 8
  %call37 = call i64 @SYMBOL_NAME(i64 %22)
  %call38 = call i8* @SDATA(i64 %call37)
  call void (i8*, ...) @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0), i8* %call38) #7
  unreachable

if.end.39:                                        ; preds = %sw.epilog
  %23 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %24 = load i8, i8* %forwarded, align 1
  %tobool40 = trunc i8 %24 to i1
  %coerce.dive = getelementptr %union.Lisp_Val_Fwd, %union.Lisp_Val_Fwd* %valcontents, i32 0, i32 0
  %25 = load i64, i64* %coerce.dive, align 8
  %call41 = call %struct.Lisp_Buffer_Local_Value* @make_blv(%struct.Lisp_Symbol* %23, i1 zeroext %tobool40, i64 %25)
  store %struct.Lisp_Buffer_Local_Value* %call41, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %26 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %27 = bitcast %struct.Lisp_Buffer_Local_Value* %26 to i8*
  %bf.load42 = load i8, i8* %27, align 8
  %bf.clear43 = and i8 %bf.load42, -3
  %bf.set = or i8 %bf.clear43, 2
  store i8 %bf.set, i8* %27, align 8
  %28 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %29 = bitcast %struct.Lisp_Symbol* %28 to i16*
  %bf.load44 = load i16, i16* %29, align 8
  %bf.clear45 = and i16 %bf.load44, -15
  %bf.set46 = or i16 %bf.clear45, 4
  store i16 %bf.set46, i16* %29, align 8
  %30 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %31 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  call void @SET_SYMBOL_BLV(%struct.Lisp_Symbol* %30, %struct.Lisp_Buffer_Local_Value* %31)
  %32 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %call47 = call i64 @make_lisp_symbol(%struct.Lisp_Symbol* %32)
  store i64 %call47, i64* %symbol, align 8
  %33 = load i64, i64* %symbol, align 8
  %call48 = call zeroext i1 @let_shadows_global_binding_p(i64 %33)
  br i1 %call48, label %if.then.49, label %if.end.55

if.then.49:                                       ; preds = %if.end.39
  %s = bitcast %union.Aligned_String* %.compoundliteral to %struct.Lisp_String*
  %size = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 0
  store i64 38, i64* %size, align 8
  %size_byte = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 1
  store i64 -1, i64* %size_byte, align 8
  %intervals = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 2
  store %struct.interval* null, %struct.interval** %intervals, align 8
  %data = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 3
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i32 0, i32 0), i8** %data, align 8
  %s50 = bitcast %union.Aligned_String* %.compoundliteral to %struct.Lisp_String*
  %34 = bitcast %struct.Lisp_String* %s50 to i8*
  %call51 = call i64 @make_lisp_ptr(i8* %34, i32 4)
  store i64 %call51, i64* %format, align 8
  %arrayinit.begin = getelementptr inbounds [2 x i64], [2 x i64]* %.compoundliteral52, i64 0, i64 0
  %35 = load i64, i64* %format, align 8
  store i64 %35, i64* %arrayinit.begin
  %arrayinit.element = getelementptr inbounds i64, i64* %arrayinit.begin, i64 1
  %36 = load i64, i64* %variable.addr, align 8
  %call53 = call i64 @SYMBOL_NAME(i64 %36)
  store i64 %call53, i64* %arrayinit.element
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %.compoundliteral52, i32 0, i32 0
  %call54 = call i64 @Fmessage(i64 2, i64* %arraydecay)
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.49, %if.end.39
  %37 = load i64, i64* %variable.addr, align 8
  store i64 %37, i64* %retval
  br label %return

return:                                           ; preds = %if.end.55, %if.then.17
  %38 = load i64, i64* %retval
  ret i64 %38
}

; Function Attrs: nounwind uwtable
define i64 @Flocal_variable_p(i64 %variable, i64 %buffer) #4 {
entry:
  %retval = alloca i64, align 8
  %variable.addr = alloca i64, align 8
  %buffer.addr = alloca i64, align 8
  %buf = alloca %struct.buffer*, align 8
  %sym = alloca %struct.Lisp_Symbol*, align 8
  %tail = alloca i64, align 8
  %elt = alloca i64, align 8
  %tmp = alloca i64, align 8
  %blv = alloca %struct.Lisp_Buffer_Local_Value*, align 8
  %valcontents = alloca %union.Lisp_Fwd*, align 8
  %offset = alloca i32, align 4
  %idx = alloca i32, align 4
  store i64 %variable, i64* %variable.addr, align 8
  store i64 %buffer, i64* %buffer.addr, align 8
  %0 = load i64, i64* %buffer.addr, align 8
  %call = call %struct.buffer* @decode_buffer(i64 %0)
  store %struct.buffer* %call, %struct.buffer** %buf, align 8
  %1 = load i64, i64* %variable.addr, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call2 = call i64 @builtin_lisp_symbol(i32 897)
  %2 = load i64, i64* %variable.addr, align 8
  %3 = call i64 @wrong_type_argument(i64 %call2, i64 %2) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %4, %cond.true
  %5 = load i64, i64* %variable.addr, align 8
  %sub = sub nsw i64 %5, 0
  %add.ptr = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub
  %6 = bitcast i8* %add.ptr to %struct.Lisp_Symbol*
  store %struct.Lisp_Symbol* %6, %struct.Lisp_Symbol** %sym, align 8
  br label %start

start:                                            ; preds = %sw.bb, %cond.end
  %7 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %8 = bitcast %struct.Lisp_Symbol* %7 to i16*
  %bf.load = load i16, i16* %8, align 8
  %bf.lshr = lshr i16 %bf.load, 1
  %bf.clear = and i16 %bf.lshr, 7
  %bf.cast = zext i16 %bf.clear to i32
  switch i32 %bf.cast, label %sw.default [
    i32 1, label %sw.bb
    i32 4, label %sw.bb.4
    i32 2, label %sw.bb.6
    i32 3, label %sw.bb.33
  ]

sw.bb:                                            ; preds = %start
  %9 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %call3 = call %struct.Lisp_Symbol* @indirect_variable(%struct.Lisp_Symbol* %9)
  store %struct.Lisp_Symbol* %call3, %struct.Lisp_Symbol** %sym, align 8
  br label %start

sw.bb.4:                                          ; preds = %start
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call5, i64* %retval
  br label %return

sw.bb.6:                                          ; preds = %start
  %10 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %call8 = call %struct.Lisp_Buffer_Local_Value* @SYMBOL_BLV(%struct.Lisp_Symbol* %10)
  store %struct.Lisp_Buffer_Local_Value* %call8, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %11 = load %struct.buffer*, %struct.buffer** %buf, align 8
  %12 = bitcast %struct.buffer* %11 to i8*
  %call9 = call i64 @make_lisp_ptr(i8* %12, i32 5)
  store i64 %call9, i64* %tmp, align 8
  %13 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %call10 = call i64 @make_lisp_symbol(%struct.Lisp_Symbol* %13)
  store i64 %call10, i64* %variable.addr, align 8
  %14 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %where = getelementptr inbounds %struct.Lisp_Buffer_Local_Value, %struct.Lisp_Buffer_Local_Value* %14, i32 0, i32 2
  %15 = load i64, i64* %where, align 8
  %16 = load i64, i64* %tmp, align 8
  %cmp11 = icmp eq i64 %15, %16
  br i1 %cmp11, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.6
  %17 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %call13 = call i32 @blv_found(%struct.Lisp_Buffer_Local_Value* %17)
  %tobool = icmp ne i32 %call13, 0
  br i1 %tobool, label %cond.true.14, label %cond.false.16

cond.true.14:                                     ; preds = %if.then
  %call15 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end.18

cond.false.16:                                    ; preds = %if.then
  %call17 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.16, %cond.true.14
  %cond = phi i64 [ %call15, %cond.true.14 ], [ %call17, %cond.false.16 ]
  store i64 %cond, i64* %retval
  br label %return

if.else:                                          ; preds = %sw.bb.6
  %18 = load %struct.buffer*, %struct.buffer** %buf, align 8
  %local_var_alist_ = getelementptr inbounds %struct.buffer, %struct.buffer* %18, i32 0, i32 9
  %19 = load i64, i64* %local_var_alist_, align 8
  store i64 %19, i64* %tail, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %20 = load i64, i64* %tail, align 8
  %and19 = and i64 %20, 7
  %conv20 = trunc i64 %and19 to i32
  %cmp21 = icmp eq i32 %conv20, 3
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i64, i64* %tail, align 8
  %sub23 = sub nsw i64 %21, 3
  %22 = inttoptr i64 %sub23 to i8*
  %23 = bitcast i8* %22 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %23, i32 0, i32 0
  %24 = load i64, i64* %car, align 8
  store i64 %24, i64* %elt, align 8
  %25 = load i64, i64* %variable.addr, align 8
  %26 = load i64, i64* %elt, align 8
  %sub24 = sub nsw i64 %26, 3
  %27 = inttoptr i64 %sub24 to i8*
  %28 = bitcast i8* %27 to %struct.Lisp_Cons*
  %car25 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %28, i32 0, i32 0
  %29 = load i64, i64* %car25, align 8
  %cmp26 = icmp eq i64 %25, %29
  br i1 %cmp26, label %if.then.28, label %if.end

if.then.28:                                       ; preds = %for.body
  %call29 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call29, i64* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %30 = load i64, i64* %tail, align 8
  %sub30 = sub nsw i64 %30, 3
  %31 = inttoptr i64 %sub30 to i8*
  %32 = bitcast i8* %31 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %32, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %33 = load i64, i64* %cdr, align 8
  store i64 %33, i64* %tail, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.31

if.end.31:                                        ; preds = %for.end
  %call32 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call32, i64* %retval
  br label %return

sw.bb.33:                                         ; preds = %start
  %34 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %call35 = call %union.Lisp_Fwd* @SYMBOL_FWD(%struct.Lisp_Symbol* %34)
  store %union.Lisp_Fwd* %call35, %union.Lisp_Fwd** %valcontents, align 8
  %35 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %valcontents, align 8
  %call36 = call zeroext i1 @BUFFER_OBJFWDP(%union.Lisp_Fwd* %35)
  br i1 %call36, label %if.then.37, label %if.end.59

if.then.37:                                       ; preds = %sw.bb.33
  %36 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %valcontents, align 8
  %call39 = call %struct.Lisp_Buffer_Objfwd* @XBUFFER_OBJFWD(%union.Lisp_Fwd* %36)
  %offset40 = getelementptr inbounds %struct.Lisp_Buffer_Objfwd, %struct.Lisp_Buffer_Objfwd* %call39, i32 0, i32 1
  %37 = load i32, i32* %offset40, align 4
  store i32 %37, i32* %offset, align 4
  %38 = load i32, i32* %offset, align 4
  %idx.ext = sext i32 %38 to i64
  %add.ptr42 = getelementptr inbounds i8, i8* bitcast (%struct.buffer* @buffer_local_flags to i8*), i64 %idx.ext
  %39 = bitcast i8* %add.ptr42 to i64*
  %40 = load i64, i64* %39, align 8
  %shr = ashr i64 %40, 2
  %conv43 = trunc i64 %shr to i32
  store i32 %conv43, i32* %idx, align 4
  %41 = load i32, i32* %idx, align 4
  %cmp44 = icmp eq i32 %41, -1
  br i1 %cmp44, label %if.then.56, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.37
  %42 = load i32, i32* %idx, align 4
  %cmp46 = icmp slt i32 %42, 0
  br i1 %cmp46, label %cond.true.51, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %lor.lhs.false
  %43 = load i32, i32* %idx, align 4
  %44 = load i32, i32* @last_per_buffer_idx, align 4
  %cmp49 = icmp sge i32 %43, %44
  br i1 %cmp49, label %cond.true.51, label %cond.false.52

cond.true.51:                                     ; preds = %lor.lhs.false.48, %lor.lhs.false
  call void @emacs_abort() #7
  unreachable
                                                  ; No predecessors!
  br i1 false, label %if.then.56, label %if.end.58

cond.false.52:                                    ; preds = %lor.lhs.false.48
  %46 = load i32, i32* %idx, align 4
  %idxprom = sext i32 %46 to i64
  %47 = load %struct.buffer*, %struct.buffer** %buf, align 8
  %local_flags = getelementptr inbounds %struct.buffer, %struct.buffer* %47, i32 0, i32 84
  %arrayidx = getelementptr inbounds [50 x i8], [50 x i8]* %local_flags, i32 0, i64 %idxprom
  %48 = load i8, i8* %arrayidx, align 1
  %conv53 = sext i8 %48 to i32
  %cmp54 = icmp ne i32 %conv53, 0
  br i1 %cmp54, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %cond.false.52, %45, %if.then.37
  %call57 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call57, i64* %retval
  br label %return

if.end.58:                                        ; preds = %cond.false.52, %45
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %sw.bb.33
  %call60 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call60, i64* %retval
  br label %return

sw.default:                                       ; preds = %start
  call void @emacs_abort() #7
  unreachable

return:                                           ; preds = %if.end.59, %if.then.56, %if.end.31, %if.then.28, %cond.end.18, %sw.bb.4
  %49 = load i64, i64* %retval
  ret i64 %49
}

declare %struct.buffer* @decode_buffer(i64) #2

declare i32 @blv_found(%struct.Lisp_Buffer_Local_Value*) #2

; Function Attrs: nounwind uwtable
define i64 @Flocal_variable_if_set_p(i64 %variable, i64 %buffer) #4 {
entry:
  %retval = alloca i64, align 8
  %variable.addr = alloca i64, align 8
  %buffer.addr = alloca i64, align 8
  %sym = alloca %struct.Lisp_Symbol*, align 8
  %blv = alloca %struct.Lisp_Buffer_Local_Value*, align 8
  store i64 %variable, i64* %variable.addr, align 8
  store i64 %buffer, i64* %buffer.addr, align 8
  %0 = load i64, i64* %variable.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 897)
  %1 = load i64, i64* %variable.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call, i64 %1) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i64, i64* %variable.addr, align 8
  %sub = sub nsw i64 %4, 0
  %add.ptr = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub
  %5 = bitcast i8* %add.ptr to %struct.Lisp_Symbol*
  store %struct.Lisp_Symbol* %5, %struct.Lisp_Symbol** %sym, align 8
  br label %start

start:                                            ; preds = %sw.bb, %cond.end
  %6 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %7 = bitcast %struct.Lisp_Symbol* %6 to i16*
  %bf.load = load i16, i16* %7, align 8
  %bf.lshr = lshr i16 %bf.load, 1
  %bf.clear = and i16 %bf.lshr, 7
  %bf.cast = zext i16 %bf.clear to i32
  switch i32 %bf.cast, label %sw.default [
    i32 1, label %sw.bb
    i32 4, label %sw.bb.3
    i32 2, label %sw.bb.5
    i32 3, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %start
  %8 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %call2 = call %struct.Lisp_Symbol* @indirect_variable(%struct.Lisp_Symbol* %8)
  store %struct.Lisp_Symbol* %call2, %struct.Lisp_Symbol** %sym, align 8
  br label %start

sw.bb.3:                                          ; preds = %start
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call4, i64* %retval
  br label %return

sw.bb.5:                                          ; preds = %start
  %9 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %call6 = call %struct.Lisp_Buffer_Local_Value* @SYMBOL_BLV(%struct.Lisp_Symbol* %9)
  store %struct.Lisp_Buffer_Local_Value* %call6, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %10 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  %11 = bitcast %struct.Lisp_Buffer_Local_Value* %10 to i8*
  %bf.load7 = load i8, i8* %11, align 8
  %bf.clear8 = and i8 %bf.load7, 1
  %bf.cast9 = trunc i8 %bf.clear8 to i1
  br i1 %bf.cast9, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.5
  %call10 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call10, i64* %retval
  br label %return

if.end:                                           ; preds = %sw.bb.5
  %12 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %call11 = call i64 @make_lisp_symbol(%struct.Lisp_Symbol* %12)
  store i64 %call11, i64* %variable.addr, align 8
  %13 = load i64, i64* %variable.addr, align 8
  %14 = load i64, i64* %buffer.addr, align 8
  %call12 = call i64 @Flocal_variable_p(i64 %13, i64 %14)
  store i64 %call12, i64* %retval
  br label %return

sw.bb.13:                                         ; preds = %start
  %15 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %call14 = call %union.Lisp_Fwd* @SYMBOL_FWD(%struct.Lisp_Symbol* %15)
  %call15 = call zeroext i1 @BUFFER_OBJFWDP(%union.Lisp_Fwd* %call14)
  br i1 %call15, label %cond.true.17, label %cond.false.19

cond.true.17:                                     ; preds = %sw.bb.13
  %call18 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end.21

cond.false.19:                                    ; preds = %sw.bb.13
  %call20 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.19, %cond.true.17
  %cond = phi i64 [ %call18, %cond.true.17 ], [ %call20, %cond.false.19 ]
  store i64 %cond, i64* %retval
  br label %return

sw.default:                                       ; preds = %start
  call void @emacs_abort() #7
  unreachable

return:                                           ; preds = %cond.end.21, %if.end, %if.then, %sw.bb.3
  %16 = load i64, i64* %retval
  ret i64 %16
}

; Function Attrs: nounwind uwtable
define i64 @Fvariable_binding_locus(i64 %variable) #4 {
entry:
  %retval = alloca i64, align 8
  %variable.addr = alloca i64, align 8
  %sym = alloca %struct.Lisp_Symbol*, align 8
  %valcontents = alloca %union.Lisp_Fwd*, align 8
  store i64 %variable, i64* %variable.addr, align 8
  %0 = load i64, i64* %variable.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 897)
  %1 = load i64, i64* %variable.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call, i64 %1) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i64, i64* %variable.addr, align 8
  %sub = sub nsw i64 %4, 0
  %add.ptr = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub
  %5 = bitcast i8* %add.ptr to %struct.Lisp_Symbol*
  store %struct.Lisp_Symbol* %5, %struct.Lisp_Symbol** %sym, align 8
  %6 = load i64, i64* %variable.addr, align 8
  %call2 = call i64 @find_symbol_value(i64 %6)
  br label %start

start:                                            ; preds = %sw.bb, %cond.end
  %7 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %8 = bitcast %struct.Lisp_Symbol* %7 to i16*
  %bf.load = load i16, i16* %8, align 8
  %bf.lshr = lshr i16 %bf.load, 1
  %bf.clear = and i16 %bf.lshr, 7
  %bf.cast = zext i16 %bf.clear to i32
  switch i32 %bf.cast, label %sw.default [
    i32 1, label %sw.bb
    i32 4, label %sw.bb.4
    i32 3, label %sw.bb.6
    i32 2, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %start
  %9 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %call3 = call %struct.Lisp_Symbol* @indirect_variable(%struct.Lisp_Symbol* %9)
  store %struct.Lisp_Symbol* %call3, %struct.Lisp_Symbol** %sym, align 8
  br label %start

sw.bb.4:                                          ; preds = %start
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call5, i64* %retval
  br label %return

sw.bb.6:                                          ; preds = %start
  %10 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %call7 = call %union.Lisp_Fwd* @SYMBOL_FWD(%struct.Lisp_Symbol* %10)
  store %union.Lisp_Fwd* %call7, %union.Lisp_Fwd** %valcontents, align 8
  %11 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %valcontents, align 8
  %call8 = call zeroext i1 @KBOARD_OBJFWDP(%union.Lisp_Fwd* %11)
  br i1 %call8, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.6
  %12 = load i64, i64* @selected_frame, align 8
  %call9 = call i64 @Fframe_terminal(i64 %12)
  store i64 %call9, i64* %retval
  br label %return

if.else:                                          ; preds = %sw.bb.6
  %13 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %valcontents, align 8
  %call10 = call zeroext i1 @BUFFER_OBJFWDP(%union.Lisp_Fwd* %13)
  br i1 %call10, label %if.end, label %if.then.11

if.then.11:                                       ; preds = %if.else
  %call12 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call12, i64* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.13

if.end.13:                                        ; preds = %if.end
  br label %sw.bb.14

sw.bb.14:                                         ; preds = %start, %if.end.13
  %14 = load i64, i64* %variable.addr, align 8
  %call15 = call i64 @builtin_lisp_symbol(i32 0)
  %call16 = call i64 @Flocal_variable_p(i64 %14, i64 %call15)
  %call17 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp18 = icmp eq i64 %call16, %call17
  br i1 %cmp18, label %if.else.22, label %if.then.20

if.then.20:                                       ; preds = %sw.bb.14
  %call21 = call i64 @Fcurrent_buffer()
  store i64 %call21, i64* %retval
  br label %return

if.else.22:                                       ; preds = %sw.bb.14
  %15 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %16 = bitcast %struct.Lisp_Symbol* %15 to i16*
  %bf.load23 = load i16, i16* %16, align 8
  %bf.lshr24 = lshr i16 %bf.load23, 1
  %bf.clear25 = and i16 %bf.lshr24, 7
  %bf.cast26 = zext i16 %bf.clear25 to i32
  %cmp27 = icmp eq i32 %bf.cast26, 2
  br i1 %cmp27, label %land.lhs.true, label %if.else.33

land.lhs.true:                                    ; preds = %if.else.22
  %17 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %call29 = call %struct.Lisp_Buffer_Local_Value* @SYMBOL_BLV(%struct.Lisp_Symbol* %17)
  %call30 = call i32 @blv_found(%struct.Lisp_Buffer_Local_Value* %call29)
  %tobool = icmp ne i32 %call30, 0
  br i1 %tobool, label %if.then.31, label %if.else.33

if.then.31:                                       ; preds = %land.lhs.true
  %18 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym, align 8
  %call32 = call %struct.Lisp_Buffer_Local_Value* @SYMBOL_BLV(%struct.Lisp_Symbol* %18)
  %where = getelementptr inbounds %struct.Lisp_Buffer_Local_Value, %struct.Lisp_Buffer_Local_Value* %call32, i32 0, i32 2
  %19 = load i64, i64* %where, align 8
  store i64 %19, i64* %retval
  br label %return

if.else.33:                                       ; preds = %land.lhs.true, %if.else.22
  %call34 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call34, i64* %retval
  br label %return

sw.default:                                       ; preds = %start
  call void @emacs_abort() #7
  unreachable

return:                                           ; preds = %if.else.33, %if.then.31, %if.then.20, %if.then.11, %if.then, %sw.bb.4
  %20 = load i64, i64* %retval
  ret i64 %20
}

declare i64 @Fframe_terminal(i64) #2

declare i64 @Fcurrent_buffer() #2

; Function Attrs: nounwind uwtable
define i64 @Findirect_function(i64 %object, i64 %noerror) #4 {
entry:
  %retval = alloca i64, align 8
  %object.addr = alloca i64, align 8
  %noerror.addr = alloca i64, align 8
  %result = alloca i64, align 8
  store i64 %object, i64* %object.addr, align 8
  store i64 %noerror, i64* %noerror.addr, align 8
  %0 = load i64, i64* %object.addr, align 8
  store i64 %0, i64* %result, align 8
  %1 = load i64, i64* %result, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, i64* %result, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp2 = icmp eq i64 %2, %call
  br i1 %cmp2, label %if.end, label %land.lhs.true.4

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %3 = load i64, i64* %result, align 8
  %sub = sub nsw i64 %3, 0
  %add.ptr = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub
  %4 = bitcast i8* %add.ptr to %struct.Lisp_Symbol*
  %function = getelementptr inbounds %struct.Lisp_Symbol, %struct.Lisp_Symbol* %4, i32 0, i32 3
  %5 = load i64, i64* %function, align 8
  store i64 %5, i64* %result, align 8
  %6 = load i64, i64* %result, align 8
  %and5 = and i64 %6, 7
  %conv6 = trunc i64 %and5 to i32
  %cmp7 = icmp eq i32 %conv6, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.4
  %7 = load i64, i64* %result, align 8
  %call9 = call i64 @indirect_function(i64 %7)
  store i64 %call9, i64* %result, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.4, %land.lhs.true, %entry
  %8 = load i64, i64* %result, align 8
  %call10 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp11 = icmp eq i64 %8, %call10
  br i1 %cmp11, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.end
  %9 = load i64, i64* %result, align 8
  store i64 %9, i64* %retval
  br label %return

if.end.14:                                        ; preds = %if.end
  %call15 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call15, i64* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.13
  %10 = load i64, i64* %retval
  ret i64 %10
}

; Function Attrs: nounwind uwtable
define i64 @Faref(i64 %array, i64 %idx) #4 {
entry:
  %retval = alloca i64, align 8
  %array.addr = alloca i64, align 8
  %idx.addr = alloca i64, align 8
  %idxval = alloca i64, align 8
  %c = alloca i32, align 4
  %idxval_byte = alloca i64, align 8
  %size = alloca i64, align 8
  store i64 %array, i64* %array.addr, align 8
  store i64 %idx, i64* %idx.addr, align 8
  %0 = load i64, i64* %idx.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %and1 = and i32 %conv, -5
  %cmp = icmp eq i32 %and1, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 559)
  %1 = load i64, i64* %idx.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call, i64 %1) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i64, i64* %idx.addr, align 8
  %shr = ashr i64 %4, 2
  store i64 %shr, i64* %idxval, align 8
  %5 = load i64, i64* %array.addr, align 8
  %call3 = call zeroext i1 @STRINGP(i64 %5)
  br i1 %call3, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %6 = load i64, i64* %idxval, align 8
  %cmp4 = icmp slt i64 %6, 0
  br i1 %cmp4, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %7 = load i64, i64* %idxval, align 8
  %8 = load i64, i64* %array.addr, align 8
  %call6 = call i64 @SCHARS(i64 %8)
  %cmp7 = icmp sge i64 %7, %call6
  br i1 %cmp7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %lor.lhs.false, %if.then
  %9 = load i64, i64* %array.addr, align 8
  %10 = load i64, i64* %idx.addr, align 8
  call void @args_out_of_range(i64 %9, i64 %10) #7
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %11 = load i64, i64* %array.addr, align 8
  %call10 = call zeroext i1 @STRING_MULTIBYTE(i64 %11)
  br i1 %call10, label %if.end.14, label %if.then.11

if.then.11:                                       ; preds = %if.end
  %12 = load i64, i64* %array.addr, align 8
  %13 = load i64, i64* %idxval, align 8
  %call12 = call zeroext i8 @SREF(i64 %12, i64 %13)
  %conv13 = zext i8 %call12 to i64
  %shl = shl i64 %conv13, 2
  %add = add i64 %shl, 2
  store i64 %add, i64* %retval
  br label %return

if.end.14:                                        ; preds = %if.end
  %14 = load i64, i64* %array.addr, align 8
  %15 = load i64, i64* %idxval, align 8
  %call15 = call i64 @string_char_to_byte(i64 %14, i64 %15)
  store i64 %call15, i64* %idxval_byte, align 8
  %16 = load i64, i64* %array.addr, align 8
  %call16 = call i8* @SDATA(i64 %16)
  %17 = load i64, i64* %idxval_byte, align 8
  %add.ptr = getelementptr inbounds i8, i8* %call16, i64 %17
  %arrayidx = getelementptr inbounds i8, i8* %add.ptr, i64 0
  %18 = load i8, i8* %arrayidx, align 1
  %conv17 = zext i8 %18 to i32
  %and18 = and i32 %conv17, 128
  %tobool = icmp ne i32 %and18, 0
  br i1 %tobool, label %cond.false.24, label %cond.true.19

cond.true.19:                                     ; preds = %if.end.14
  %19 = load i64, i64* %array.addr, align 8
  %call20 = call i8* @SDATA(i64 %19)
  %20 = load i64, i64* %idxval_byte, align 8
  %add.ptr21 = getelementptr inbounds i8, i8* %call20, i64 %20
  %arrayidx22 = getelementptr inbounds i8, i8* %add.ptr21, i64 0
  %21 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %21 to i32
  br label %cond.end.85

cond.false.24:                                    ; preds = %if.end.14
  %22 = load i64, i64* %array.addr, align 8
  %call25 = call i8* @SDATA(i64 %22)
  %23 = load i64, i64* %idxval_byte, align 8
  %add.ptr26 = getelementptr inbounds i8, i8* %call25, i64 %23
  %arrayidx27 = getelementptr inbounds i8, i8* %add.ptr26, i64 0
  %24 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %24 to i32
  %and29 = and i32 %conv28, 32
  %tobool30 = icmp ne i32 %and29, 0
  br i1 %tobool30, label %cond.false.50, label %cond.true.31

cond.true.31:                                     ; preds = %cond.false.24
  %25 = load i64, i64* %array.addr, align 8
  %call32 = call i8* @SDATA(i64 %25)
  %26 = load i64, i64* %idxval_byte, align 8
  %add.ptr33 = getelementptr inbounds i8, i8* %call32, i64 %26
  %arrayidx34 = getelementptr inbounds i8, i8* %add.ptr33, i64 0
  %27 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %27 to i32
  %and36 = and i32 %conv35, 31
  %shl37 = shl i32 %and36, 6
  %28 = load i64, i64* %array.addr, align 8
  %call38 = call i8* @SDATA(i64 %28)
  %29 = load i64, i64* %idxval_byte, align 8
  %add.ptr39 = getelementptr inbounds i8, i8* %call38, i64 %29
  %arrayidx40 = getelementptr inbounds i8, i8* %add.ptr39, i64 1
  %30 = load i8, i8* %arrayidx40, align 1
  %conv41 = zext i8 %30 to i32
  %and42 = and i32 %conv41, 63
  %or = or i32 %shl37, %and42
  %31 = load i64, i64* %array.addr, align 8
  %call43 = call i8* @SDATA(i64 %31)
  %32 = load i64, i64* %idxval_byte, align 8
  %add.ptr44 = getelementptr inbounds i8, i8* %call43, i64 %32
  %arrayidx45 = getelementptr inbounds i8, i8* %add.ptr44, i64 0
  %33 = load i8, i8* %arrayidx45, align 1
  %conv46 = zext i8 %33 to i32
  %cmp47 = icmp slt i32 %conv46, 194
  %cond = select i1 %cmp47, i32 4194176, i32 0
  %add49 = add nsw i32 %or, %cond
  br label %cond.end.83

cond.false.50:                                    ; preds = %cond.false.24
  %34 = load i64, i64* %array.addr, align 8
  %call51 = call i8* @SDATA(i64 %34)
  %35 = load i64, i64* %idxval_byte, align 8
  %add.ptr52 = getelementptr inbounds i8, i8* %call51, i64 %35
  %arrayidx53 = getelementptr inbounds i8, i8* %add.ptr52, i64 0
  %36 = load i8, i8* %arrayidx53, align 1
  %conv54 = zext i8 %36 to i32
  %and55 = and i32 %conv54, 16
  %tobool56 = icmp ne i32 %and55, 0
  br i1 %tobool56, label %cond.false.77, label %cond.true.57

cond.true.57:                                     ; preds = %cond.false.50
  %37 = load i64, i64* %array.addr, align 8
  %call58 = call i8* @SDATA(i64 %37)
  %38 = load i64, i64* %idxval_byte, align 8
  %add.ptr59 = getelementptr inbounds i8, i8* %call58, i64 %38
  %arrayidx60 = getelementptr inbounds i8, i8* %add.ptr59, i64 0
  %39 = load i8, i8* %arrayidx60, align 1
  %conv61 = zext i8 %39 to i32
  %and62 = and i32 %conv61, 15
  %shl63 = shl i32 %and62, 12
  %40 = load i64, i64* %array.addr, align 8
  %call64 = call i8* @SDATA(i64 %40)
  %41 = load i64, i64* %idxval_byte, align 8
  %add.ptr65 = getelementptr inbounds i8, i8* %call64, i64 %41
  %arrayidx66 = getelementptr inbounds i8, i8* %add.ptr65, i64 1
  %42 = load i8, i8* %arrayidx66, align 1
  %conv67 = zext i8 %42 to i32
  %and68 = and i32 %conv67, 63
  %shl69 = shl i32 %and68, 6
  %or70 = or i32 %shl63, %shl69
  %43 = load i64, i64* %array.addr, align 8
  %call71 = call i8* @SDATA(i64 %43)
  %44 = load i64, i64* %idxval_byte, align 8
  %add.ptr72 = getelementptr inbounds i8, i8* %call71, i64 %44
  %arrayidx73 = getelementptr inbounds i8, i8* %add.ptr72, i64 2
  %45 = load i8, i8* %arrayidx73, align 1
  %conv74 = zext i8 %45 to i32
  %and75 = and i32 %conv74, 63
  %or76 = or i32 %or70, %and75
  br label %cond.end.81

cond.false.77:                                    ; preds = %cond.false.50
  %46 = load i64, i64* %array.addr, align 8
  %call78 = call i8* @SDATA(i64 %46)
  %47 = load i64, i64* %idxval_byte, align 8
  %add.ptr79 = getelementptr inbounds i8, i8* %call78, i64 %47
  %call80 = call i32 @string_char(i8* %add.ptr79, i8** null, i32* null)
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.false.77, %cond.true.57
  %cond82 = phi i32 [ %or76, %cond.true.57 ], [ %call80, %cond.false.77 ]
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.end.81, %cond.true.31
  %cond84 = phi i32 [ %add49, %cond.true.31 ], [ %cond82, %cond.end.81 ]
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.end.83, %cond.true.19
  %cond86 = phi i32 [ %conv23, %cond.true.19 ], [ %cond84, %cond.end.83 ]
  store i32 %cond86, i32* %c, align 4
  %48 = load i32, i32* %c, align 4
  %conv87 = sext i32 %48 to i64
  %shl88 = shl i64 %conv87, 2
  %add89 = add i64 %shl88, 2
  store i64 %add89, i64* %retval
  br label %return

if.else:                                          ; preds = %cond.end
  %49 = load i64, i64* %array.addr, align 8
  %call90 = call zeroext i1 @BOOL_VECTOR_P(i64 %49)
  br i1 %call90, label %if.then.91, label %if.else.101

if.then.91:                                       ; preds = %if.else
  %50 = load i64, i64* %idxval, align 8
  %cmp92 = icmp slt i64 %50, 0
  br i1 %cmp92, label %if.then.98, label %lor.lhs.false.94

lor.lhs.false.94:                                 ; preds = %if.then.91
  %51 = load i64, i64* %idxval, align 8
  %52 = load i64, i64* %array.addr, align 8
  %call95 = call i64 @bool_vector_size(i64 %52)
  %cmp96 = icmp sge i64 %51, %call95
  br i1 %cmp96, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %lor.lhs.false.94, %if.then.91
  %53 = load i64, i64* %array.addr, align 8
  %54 = load i64, i64* %idx.addr, align 8
  call void @args_out_of_range(i64 %53, i64 %54) #7
  unreachable

if.end.99:                                        ; preds = %lor.lhs.false.94
  %55 = load i64, i64* %array.addr, align 8
  %56 = load i64, i64* %idxval, align 8
  %call100 = call i64 @bool_vector_ref(i64 %55, i64 %56)
  store i64 %call100, i64* %retval
  br label %return

if.else.101:                                      ; preds = %if.else
  %57 = load i64, i64* %array.addr, align 8
  %call102 = call zeroext i1 @CHAR_TABLE_P(i64 %57)
  br i1 %call102, label %if.then.103, label %if.else.115

if.then.103:                                      ; preds = %if.else.101
  %58 = load i64, i64* %idx.addr, align 8
  %call104 = call zeroext i1 @NATNUMP(i64 %58)
  br i1 %call104, label %land.lhs.true, label %cond.false.110

land.lhs.true:                                    ; preds = %if.then.103
  %59 = load i64, i64* %idx.addr, align 8
  %shr106 = ashr i64 %59, 2
  %cmp107 = icmp sle i64 %shr106, 4194303
  br i1 %cmp107, label %cond.true.109, label %cond.false.110

cond.true.109:                                    ; preds = %land.lhs.true
  br label %cond.end.112

cond.false.110:                                   ; preds = %land.lhs.true, %if.then.103
  %call111 = call i64 @builtin_lisp_symbol(i32 260)
  %60 = load i64, i64* %idx.addr, align 8
  %61 = call i64 @wrong_type_argument(i64 %call111, i64 %60) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end.112

cond.end.112:                                     ; preds = %62, %cond.true.109
  %63 = load i64, i64* %array.addr, align 8
  %64 = load i64, i64* %idxval, align 8
  %conv113 = trunc i64 %64 to i32
  %call114 = call i64 @CHAR_TABLE_REF(i64 %63, i32 %conv113)
  store i64 %call114, i64* %retval
  br label %return

if.else.115:                                      ; preds = %if.else.101
  store i64 0, i64* %size, align 8
  %65 = load i64, i64* %array.addr, align 8
  %call116 = call zeroext i1 @VECTORP(i64 %65)
  br i1 %call116, label %if.then.117, label %if.else.119

if.then.117:                                      ; preds = %if.else.115
  %66 = load i64, i64* %array.addr, align 8
  %call118 = call i64 @ASIZE(i64 %66)
  store i64 %call118, i64* %size, align 8
  br label %if.end.127

if.else.119:                                      ; preds = %if.else.115
  %67 = load i64, i64* %array.addr, align 8
  %call120 = call zeroext i1 @COMPILEDP(i64 %67)
  br i1 %call120, label %if.then.121, label %if.else.124

if.then.121:                                      ; preds = %if.else.119
  %68 = load i64, i64* %array.addr, align 8
  %call122 = call i64 @ASIZE(i64 %68)
  %and123 = and i64 %call122, 4095
  store i64 %and123, i64* %size, align 8
  br label %if.end.126

if.else.124:                                      ; preds = %if.else.119
  %call125 = call i64 @builtin_lisp_symbol(i32 179)
  %69 = load i64, i64* %array.addr, align 8
  %70 = call i64 @wrong_type_argument(i64 %call125, i64 %69) #7
  unreachable

if.end.126:                                       ; preds = %if.then.121
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126, %if.then.117
  %71 = load i64, i64* %idxval, align 8
  %cmp128 = icmp slt i64 %71, 0
  br i1 %cmp128, label %if.then.133, label %lor.lhs.false.130

lor.lhs.false.130:                                ; preds = %if.end.127
  %72 = load i64, i64* %idxval, align 8
  %73 = load i64, i64* %size, align 8
  %cmp131 = icmp sge i64 %72, %73
  br i1 %cmp131, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %lor.lhs.false.130, %if.end.127
  %74 = load i64, i64* %array.addr, align 8
  %75 = load i64, i64* %idx.addr, align 8
  call void @args_out_of_range(i64 %74, i64 %75) #7
  unreachable

if.end.134:                                       ; preds = %lor.lhs.false.130
  %76 = load i64, i64* %array.addr, align 8
  %77 = load i64, i64* %idxval, align 8
  %call135 = call i64 @AREF(i64 %76, i64 %77)
  store i64 %call135, i64* %retval
  br label %return

return:                                           ; preds = %if.end.134, %cond.end.112, %if.end.99, %cond.end.85, %if.then.11
  %78 = load i64, i64* %retval
  ret i64 %78
}

declare i64 @SCHARS(i64) #2

declare i64 @string_char_to_byte(i64, i64) #2

declare i32 @string_char(i8*, i8**, i32*) #2

declare i64 @bool_vector_size(i64) #2

declare i64 @bool_vector_ref(i64, i64) #2

declare i64 @CHAR_TABLE_REF(i64, i32) #2

; Function Attrs: nounwind uwtable
define i64 @Faset(i64 %array, i64 %idx, i64 %newelt) #4 {
entry:
  %retval = alloca i64, align 8
  %array.addr = alloca i64, align 8
  %idx.addr = alloca i64, align 8
  %newelt.addr = alloca i64, align 8
  %idxval = alloca i64, align 8
  %c = alloca i32, align 4
  %idxval_byte = alloca i64, align 8
  %nbytes = alloca i64, align 8
  %prev_bytes = alloca i32, align 4
  %new_bytes = alloca i32, align 4
  %workbuf = alloca [5 x i8], align 1
  %p0 = alloca i8*, align 8
  %p1 = alloca i8*, align 8
  %nchars = alloca i64, align 8
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  %str = alloca i8*, align 8
  %i = alloca i64, align 8
  store i64 %array, i64* %array.addr, align 8
  store i64 %idx, i64* %idx.addr, align 8
  store i64 %newelt, i64* %newelt.addr, align 8
  %0 = load i64, i64* %idx.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %and1 = and i32 %conv, -5
  %cmp = icmp eq i32 %and1, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 559)
  %1 = load i64, i64* %idx.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call, i64 %1) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i64, i64* %idx.addr, align 8
  %shr = ashr i64 %4, 2
  store i64 %shr, i64* %idxval, align 8
  %5 = load i64, i64* %array.addr, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 179)
  call void @CHECK_ARRAY(i64 %5, i64 %call3)
  %6 = load i64, i64* %array.addr, align 8
  %call4 = call zeroext i1 @VECTORP(i64 %6)
  br i1 %call4, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %7 = load i64, i64* %array.addr, align 8
  %call5 = call %struct.Lisp_Vector* @XVECTOR(i64 %7)
  %8 = ptrtoint %struct.Lisp_Vector* %call5 to i64
  %sub = sub i64 %8, ptrtoint ([0 x i64]* @pure to i64)
  %cmp6 = icmp ule i64 %sub, 3000000
  br i1 %cmp6, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %if.then
  %9 = load i64, i64* %array.addr, align 8
  call void @pure_write_error(i64 %9) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end.10

cond.false.9:                                     ; preds = %if.then
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.9, %10
  %11 = load i64, i64* %idxval, align 8
  %cmp11 = icmp slt i64 %11, 0
  br i1 %cmp11, label %if.then.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.10
  %12 = load i64, i64* %idxval, align 8
  %13 = load i64, i64* %array.addr, align 8
  %call13 = call i64 @ASIZE(i64 %13)
  %cmp14 = icmp sge i64 %12, %call13
  br i1 %cmp14, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %lor.lhs.false, %cond.end.10
  %14 = load i64, i64* %array.addr, align 8
  %15 = load i64, i64* %idx.addr, align 8
  call void @args_out_of_range(i64 %14, i64 %15) #7
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %16 = load i64, i64* %array.addr, align 8
  %17 = load i64, i64* %idxval, align 8
  %18 = load i64, i64* %newelt.addr, align 8
  call void @ASET(i64 %16, i64 %17, i64 %18)
  br label %if.end.236

if.else:                                          ; preds = %cond.end
  %19 = load i64, i64* %array.addr, align 8
  %call17 = call zeroext i1 @BOOL_VECTOR_P(i64 %19)
  br i1 %call17, label %if.then.18, label %if.else.30

if.then.18:                                       ; preds = %if.else
  %20 = load i64, i64* %idxval, align 8
  %cmp19 = icmp slt i64 %20, 0
  br i1 %cmp19, label %if.then.25, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %if.then.18
  %21 = load i64, i64* %idxval, align 8
  %22 = load i64, i64* %array.addr, align 8
  %call22 = call i64 @bool_vector_size(i64 %22)
  %cmp23 = icmp sge i64 %21, %call22
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %lor.lhs.false.21, %if.then.18
  %23 = load i64, i64* %array.addr, align 8
  %24 = load i64, i64* %idx.addr, align 8
  call void @args_out_of_range(i64 %23, i64 %24) #7
  unreachable

if.end.26:                                        ; preds = %lor.lhs.false.21
  %25 = load i64, i64* %array.addr, align 8
  %26 = load i64, i64* %idxval, align 8
  %27 = load i64, i64* %newelt.addr, align 8
  %call27 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp28 = icmp eq i64 %27, %call27
  %lnot = xor i1 %cmp28, true
  call void @bool_vector_set(i64 %25, i64 %26, i1 zeroext %lnot)
  br label %if.end.235

if.else.30:                                       ; preds = %if.else
  %28 = load i64, i64* %array.addr, align 8
  %call31 = call zeroext i1 @CHAR_TABLE_P(i64 %28)
  br i1 %call31, label %if.then.32, label %if.else.43

if.then.32:                                       ; preds = %if.else.30
  %29 = load i64, i64* %idx.addr, align 8
  %call33 = call zeroext i1 @NATNUMP(i64 %29)
  br i1 %call33, label %land.lhs.true, label %cond.false.39

land.lhs.true:                                    ; preds = %if.then.32
  %30 = load i64, i64* %idx.addr, align 8
  %shr35 = ashr i64 %30, 2
  %cmp36 = icmp sle i64 %shr35, 4194303
  br i1 %cmp36, label %cond.true.38, label %cond.false.39

cond.true.38:                                     ; preds = %land.lhs.true
  br label %cond.end.41

cond.false.39:                                    ; preds = %land.lhs.true, %if.then.32
  %call40 = call i64 @builtin_lisp_symbol(i32 260)
  %31 = load i64, i64* %idx.addr, align 8
  %32 = call i64 @wrong_type_argument(i64 %call40, i64 %31) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end.41

cond.end.41:                                      ; preds = %33, %cond.true.38
  %34 = load i64, i64* %array.addr, align 8
  %35 = load i64, i64* %idxval, align 8
  %conv42 = trunc i64 %35 to i32
  %36 = load i64, i64* %newelt.addr, align 8
  call void @CHAR_TABLE_SET(i64 %34, i32 %conv42, i64 %36)
  br label %if.end.234

if.else.43:                                       ; preds = %if.else.30
  %37 = load i64, i64* %array.addr, align 8
  %call44 = call %struct.Lisp_String* @XSTRING(i64 %37)
  %38 = ptrtoint %struct.Lisp_String* %call44 to i64
  %sub45 = sub i64 %38, ptrtoint ([0 x i64]* @pure to i64)
  %cmp46 = icmp ule i64 %sub45, 3000000
  br i1 %cmp46, label %cond.true.48, label %cond.false.49

cond.true.48:                                     ; preds = %if.else.43
  %39 = load i64, i64* %array.addr, align 8
  call void @pure_write_error(i64 %39) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end.50

cond.false.49:                                    ; preds = %if.else.43
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.49, %40
  %41 = load i64, i64* %idxval, align 8
  %cmp51 = icmp slt i64 %41, 0
  br i1 %cmp51, label %if.then.57, label %lor.lhs.false.53

lor.lhs.false.53:                                 ; preds = %cond.end.50
  %42 = load i64, i64* %idxval, align 8
  %43 = load i64, i64* %array.addr, align 8
  %call54 = call i64 @SCHARS(i64 %43)
  %cmp55 = icmp sge i64 %42, %call54
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %lor.lhs.false.53, %cond.end.50
  %44 = load i64, i64* %array.addr, align 8
  %45 = load i64, i64* %idx.addr, align 8
  call void @args_out_of_range(i64 %44, i64 %45) #7
  unreachable

if.end.58:                                        ; preds = %lor.lhs.false.53
  %46 = load i64, i64* %newelt.addr, align 8
  %call59 = call zeroext i1 @NATNUMP(i64 %46)
  br i1 %call59, label %land.lhs.true.61, label %cond.false.66

land.lhs.true.61:                                 ; preds = %if.end.58
  %47 = load i64, i64* %newelt.addr, align 8
  %shr62 = ashr i64 %47, 2
  %cmp63 = icmp sle i64 %shr62, 4194303
  br i1 %cmp63, label %cond.true.65, label %cond.false.66

cond.true.65:                                     ; preds = %land.lhs.true.61
  br label %cond.end.68

cond.false.66:                                    ; preds = %land.lhs.true.61, %if.end.58
  %call67 = call i64 @builtin_lisp_symbol(i32 260)
  %48 = load i64, i64* %newelt.addr, align 8
  %49 = call i64 @wrong_type_argument(i64 %call67, i64 %48) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end.68

cond.end.68:                                      ; preds = %50, %cond.true.65
  %51 = load i64, i64* %newelt.addr, align 8
  %shr69 = ashr i64 %51, 2
  %conv70 = trunc i64 %shr69 to i32
  store i32 %conv70, i32* %c, align 4
  %52 = load i64, i64* %array.addr, align 8
  %call71 = call zeroext i1 @STRING_MULTIBYTE(i64 %52)
  br i1 %call71, label %if.then.72, label %if.else.197

if.then.72:                                       ; preds = %cond.end.68
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %workbuf, i32 0, i32 0
  store i8* %arraydecay, i8** %p0, align 8
  %53 = load i64, i64* %array.addr, align 8
  %call73 = call i64 @SBYTES(i64 %53)
  store i64 %call73, i64* %nbytes, align 8
  %54 = load i64, i64* %array.addr, align 8
  %55 = load i64, i64* %idxval, align 8
  %call74 = call i64 @string_char_to_byte(i64 %54, i64 %55)
  store i64 %call74, i64* %idxval_byte, align 8
  %56 = load i64, i64* %array.addr, align 8
  %call75 = call i8* @SDATA(i64 %56)
  %57 = load i64, i64* %idxval_byte, align 8
  %add.ptr = getelementptr inbounds i8, i8* %call75, i64 %57
  store i8* %add.ptr, i8** %p1, align 8
  %58 = load i8*, i8** %p1, align 8
  %59 = load i8, i8* %58, align 1
  %conv76 = zext i8 %59 to i32
  %and77 = and i32 %conv76, 128
  %tobool = icmp ne i32 %and77, 0
  br i1 %tobool, label %cond.false.79, label %cond.true.78

cond.true.78:                                     ; preds = %if.then.72
  br label %cond.end.98

cond.false.79:                                    ; preds = %if.then.72
  %60 = load i8*, i8** %p1, align 8
  %61 = load i8, i8* %60, align 1
  %conv80 = zext i8 %61 to i32
  %and81 = and i32 %conv80, 32
  %tobool82 = icmp ne i32 %and81, 0
  br i1 %tobool82, label %cond.false.84, label %cond.true.83

cond.true.83:                                     ; preds = %cond.false.79
  br label %cond.end.96

cond.false.84:                                    ; preds = %cond.false.79
  %62 = load i8*, i8** %p1, align 8
  %63 = load i8, i8* %62, align 1
  %conv85 = zext i8 %63 to i32
  %and86 = and i32 %conv85, 16
  %tobool87 = icmp ne i32 %and86, 0
  br i1 %tobool87, label %cond.false.89, label %cond.true.88

cond.true.88:                                     ; preds = %cond.false.84
  br label %cond.end.94

cond.false.89:                                    ; preds = %cond.false.84
  %64 = load i8*, i8** %p1, align 8
  %65 = load i8, i8* %64, align 1
  %conv90 = zext i8 %65 to i32
  %and91 = and i32 %conv90, 8
  %tobool92 = icmp ne i32 %and91, 0
  %lnot93 = xor i1 %tobool92, true
  %cond = select i1 %lnot93, i32 4, i32 5
  br label %cond.end.94

cond.end.94:                                      ; preds = %cond.false.89, %cond.true.88
  %cond95 = phi i32 [ 3, %cond.true.88 ], [ %cond, %cond.false.89 ]
  br label %cond.end.96

cond.end.96:                                      ; preds = %cond.end.94, %cond.true.83
  %cond97 = phi i32 [ 2, %cond.true.83 ], [ %cond95, %cond.end.94 ]
  br label %cond.end.98

cond.end.98:                                      ; preds = %cond.end.96, %cond.true.78
  %cond99 = phi i32 [ 1, %cond.true.78 ], [ %cond97, %cond.end.96 ]
  store i32 %cond99, i32* %prev_bytes, align 4
  br i1 true, label %cond.true.100, label %cond.false.103

cond.true.100:                                    ; preds = %cond.end.98
  %66 = load i32, i32* %c, align 4
  %add = add i32 %66, 0
  %cmp101 = icmp ule i32 %add, 127
  br i1 %cmp101, label %cond.true.108, label %cond.false.110

cond.false.103:                                   ; preds = %cond.end.98
  %67 = load i32, i32* %c, align 4
  %conv104 = sext i32 %67 to i64
  %add105 = add i64 %conv104, 0
  %cmp106 = icmp ule i64 %add105, 127
  br i1 %cmp106, label %cond.true.108, label %cond.false.110

cond.true.108:                                    ; preds = %cond.false.103, %cond.true.100
  %68 = load i32, i32* %c, align 4
  %conv109 = trunc i32 %68 to i8
  %69 = load i8*, i8** %p0, align 8
  %arrayidx = getelementptr inbounds i8, i8* %69, i64 0
  store i8 %conv109, i8* %arrayidx, align 1
  br label %cond.end.158

cond.false.110:                                   ; preds = %cond.false.103, %cond.true.100
  br i1 true, label %cond.true.111, label %cond.false.115

cond.true.111:                                    ; preds = %cond.false.110
  %70 = load i32, i32* %c, align 4
  %add112 = add i32 %70, 0
  %cmp113 = icmp ule i32 %add112, 2047
  br i1 %cmp113, label %cond.true.120, label %cond.false.128

cond.false.115:                                   ; preds = %cond.false.110
  %71 = load i32, i32* %c, align 4
  %conv116 = sext i32 %71 to i64
  %add117 = add i64 %conv116, 0
  %cmp118 = icmp ule i64 %add117, 2047
  br i1 %cmp118, label %cond.true.120, label %cond.false.128

cond.true.120:                                    ; preds = %cond.false.115, %cond.true.111
  %72 = load i32, i32* %c, align 4
  %shr121 = ashr i32 %72, 6
  %or = or i32 192, %shr121
  %conv122 = trunc i32 %or to i8
  %73 = load i8*, i8** %p0, align 8
  %arrayidx123 = getelementptr inbounds i8, i8* %73, i64 0
  store i8 %conv122, i8* %arrayidx123, align 1
  %74 = load i32, i32* %c, align 4
  %and124 = and i32 %74, 63
  %or125 = or i32 128, %and124
  %conv126 = trunc i32 %or125 to i8
  %75 = load i8*, i8** %p0, align 8
  %arrayidx127 = getelementptr inbounds i8, i8* %75, i64 1
  store i8 %conv126, i8* %arrayidx127, align 1
  br label %cond.end.156

cond.false.128:                                   ; preds = %cond.false.115, %cond.true.111
  br i1 true, label %cond.true.129, label %cond.false.133

cond.true.129:                                    ; preds = %cond.false.128
  %76 = load i32, i32* %c, align 4
  %add130 = add i32 %76, 0
  %cmp131 = icmp ule i32 %add130, 65535
  br i1 %cmp131, label %cond.true.138, label %cond.false.152

cond.false.133:                                   ; preds = %cond.false.128
  %77 = load i32, i32* %c, align 4
  %conv134 = sext i32 %77 to i64
  %add135 = add i64 %conv134, 0
  %cmp136 = icmp ule i64 %add135, 65535
  br i1 %cmp136, label %cond.true.138, label %cond.false.152

cond.true.138:                                    ; preds = %cond.false.133, %cond.true.129
  %78 = load i32, i32* %c, align 4
  %shr139 = ashr i32 %78, 12
  %or140 = or i32 224, %shr139
  %conv141 = trunc i32 %or140 to i8
  %79 = load i8*, i8** %p0, align 8
  %arrayidx142 = getelementptr inbounds i8, i8* %79, i64 0
  store i8 %conv141, i8* %arrayidx142, align 1
  %80 = load i32, i32* %c, align 4
  %shr143 = ashr i32 %80, 6
  %and144 = and i32 %shr143, 63
  %or145 = or i32 128, %and144
  %conv146 = trunc i32 %or145 to i8
  %81 = load i8*, i8** %p0, align 8
  %arrayidx147 = getelementptr inbounds i8, i8* %81, i64 1
  store i8 %conv146, i8* %arrayidx147, align 1
  %82 = load i32, i32* %c, align 4
  %and148 = and i32 %82, 63
  %or149 = or i32 128, %and148
  %conv150 = trunc i32 %or149 to i8
  %83 = load i8*, i8** %p0, align 8
  %arrayidx151 = getelementptr inbounds i8, i8* %83, i64 2
  store i8 %conv150, i8* %arrayidx151, align 1
  br label %cond.end.154

cond.false.152:                                   ; preds = %cond.false.133, %cond.true.129
  %84 = load i32, i32* %c, align 4
  %85 = load i8*, i8** %p0, align 8
  %call153 = call i32 @char_string(i32 %84, i8* %85)
  br label %cond.end.154

cond.end.154:                                     ; preds = %cond.false.152, %cond.true.138
  %cond155 = phi i32 [ 3, %cond.true.138 ], [ %call153, %cond.false.152 ]
  br label %cond.end.156

cond.end.156:                                     ; preds = %cond.end.154, %cond.true.120
  %cond157 = phi i32 [ 2, %cond.true.120 ], [ %cond155, %cond.end.154 ]
  br label %cond.end.158

cond.end.158:                                     ; preds = %cond.end.156, %cond.true.108
  %cond159 = phi i32 [ 1, %cond.true.108 ], [ %cond157, %cond.end.156 ]
  store i32 %cond159, i32* %new_bytes, align 4
  %86 = load i32, i32* %prev_bytes, align 4
  %87 = load i32, i32* %new_bytes, align 4
  %cmp160 = icmp ne i32 %86, %87
  br i1 %cmp160, label %if.then.162, label %if.end.194

if.then.162:                                      ; preds = %cond.end.158
  %88 = load i64, i64* %array.addr, align 8
  %call163 = call i64 @SCHARS(i64 %88)
  store i64 %call163, i64* %nchars, align 8
  store i64 16384, i64* %sa_avail, align 8
  %call164 = call i64 @SPECPDL_INDEX()
  store i64 %call164, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  %89 = load i64, i64* %nbytes, align 8
  %90 = load i64, i64* %sa_avail, align 8
  %cmp165 = icmp sle i64 %89, %90
  br i1 %cmp165, label %cond.true.167, label %cond.false.169

cond.true.167:                                    ; preds = %if.then.162
  %91 = load i64, i64* %nbytes, align 8
  %92 = load i64, i64* %sa_avail, align 8
  %sub168 = sub nsw i64 %92, %91
  store i64 %sub168, i64* %sa_avail, align 8
  %93 = load i64, i64* %nbytes, align 8
  %94 = alloca i8, i64 %93
  br label %cond.end.171

cond.false.169:                                   ; preds = %if.then.162
  store i8 1, i8* %sa_must_free, align 1
  %95 = load i64, i64* %nbytes, align 8
  %call170 = call i8* @record_xmalloc(i64 %95)
  br label %cond.end.171

cond.end.171:                                     ; preds = %cond.false.169, %cond.true.167
  %cond172 = phi i8* [ %94, %cond.true.167 ], [ %call170, %cond.false.169 ]
  store i8* %cond172, i8** %str, align 8
  %96 = load i8*, i8** %str, align 8
  %97 = load i64, i64* %array.addr, align 8
  %call173 = call i8* @SDATA(i64 %97)
  %98 = load i64, i64* %nbytes, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %96, i8* %call173, i64 %98, i32 1, i1 false)
  %99 = load i64, i64* %array.addr, align 8
  %call174 = call %struct.Lisp_String* @XSTRING(i64 %99)
  %100 = load i64, i64* %nchars, align 8
  %101 = load i64, i64* %nbytes, align 8
  %102 = load i32, i32* %new_bytes, align 4
  %conv175 = sext i32 %102 to i64
  %add176 = add nsw i64 %101, %conv175
  %103 = load i32, i32* %prev_bytes, align 4
  %conv177 = sext i32 %103 to i64
  %sub178 = sub nsw i64 %add176, %conv177
  call void @allocate_string_data(%struct.Lisp_String* %call174, i64 %100, i64 %sub178)
  %104 = load i64, i64* %array.addr, align 8
  %call179 = call i8* @SDATA(i64 %104)
  %105 = load i8*, i8** %str, align 8
  %106 = load i64, i64* %idxval_byte, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call179, i8* %105, i64 %106, i32 1, i1 false)
  %107 = load i64, i64* %array.addr, align 8
  %call180 = call i8* @SDATA(i64 %107)
  %108 = load i64, i64* %idxval_byte, align 8
  %add.ptr181 = getelementptr inbounds i8, i8* %call180, i64 %108
  store i8* %add.ptr181, i8** %p1, align 8
  %109 = load i8*, i8** %p1, align 8
  %110 = load i32, i32* %new_bytes, align 4
  %idx.ext = sext i32 %110 to i64
  %add.ptr182 = getelementptr inbounds i8, i8* %109, i64 %idx.ext
  %111 = load i8*, i8** %str, align 8
  %112 = load i64, i64* %idxval_byte, align 8
  %add.ptr183 = getelementptr inbounds i8, i8* %111, i64 %112
  %113 = load i32, i32* %prev_bytes, align 4
  %idx.ext184 = sext i32 %113 to i64
  %add.ptr185 = getelementptr inbounds i8, i8* %add.ptr183, i64 %idx.ext184
  %114 = load i64, i64* %nbytes, align 8
  %115 = load i64, i64* %idxval_byte, align 8
  %116 = load i32, i32* %prev_bytes, align 4
  %conv186 = sext i32 %116 to i64
  %add187 = add nsw i64 %115, %conv186
  %sub188 = sub nsw i64 %114, %add187
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr182, i8* %add.ptr185, i64 %sub188, i32 1, i1 false)
  br label %do.body

do.body:                                          ; preds = %cond.end.171
  %117 = load i8, i8* %sa_must_free, align 1
  %tobool189 = trunc i8 %117 to i1
  br i1 %tobool189, label %if.then.190, label %if.end.193

if.then.190:                                      ; preds = %do.body
  store i8 0, i8* %sa_must_free, align 1
  %118 = load i64, i64* %sa_count, align 8
  %call191 = call i64 @builtin_lisp_symbol(i32 0)
  %call192 = call i64 @unbind_to(i64 %118, i64 %call191)
  br label %if.end.193

if.end.193:                                       ; preds = %if.then.190, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.193
  call void @clear_string_char_byte_cache()
  br label %if.end.194

if.end.194:                                       ; preds = %do.end, %cond.end.158
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.194
  %119 = load i32, i32* %new_bytes, align 4
  %dec = add nsw i32 %119, -1
  store i32 %dec, i32* %new_bytes, align 4
  %tobool195 = icmp ne i32 %119, 0
  br i1 %tobool195, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %120 = load i8*, i8** %p0, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %incdec.ptr, i8** %p0, align 8
  %121 = load i8, i8* %120, align 1
  %122 = load i8*, i8** %p1, align 8
  %incdec.ptr196 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %incdec.ptr196, i8** %p1, align 8
  store i8 %121, i8* %122, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.233

if.else.197:                                      ; preds = %cond.end.68
  br i1 true, label %cond.true.198, label %cond.false.202

cond.true.198:                                    ; preds = %if.else.197
  %123 = load i32, i32* %c, align 4
  %add199 = add i32 %123, 0
  %cmp200 = icmp ult i32 %add199, 256
  br i1 %cmp200, label %if.end.231, label %if.then.207

cond.false.202:                                   ; preds = %if.else.197
  %124 = load i32, i32* %c, align 4
  %conv203 = sext i32 %124 to i64
  %add204 = add i64 %conv203, 0
  %cmp205 = icmp ult i64 %add204, 256
  br i1 %cmp205, label %if.end.231, label %if.then.207

if.then.207:                                      ; preds = %cond.false.202, %cond.true.198
  %125 = load i64, i64* %array.addr, align 8
  %call208 = call i64 @SBYTES(i64 %125)
  %sub209 = sub nsw i64 %call208, 1
  store i64 %sub209, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.207
  %126 = load i64, i64* %i, align 8
  %cmp210 = icmp sge i64 %126, 0
  br i1 %cmp210, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %127 = load i64, i64* %array.addr, align 8
  %128 = load i64, i64* %i, align 8
  %call212 = call zeroext i8 @SREF(i64 %127, i64 %128)
  %conv213 = zext i8 %call212 to i32
  %cmp214 = icmp sge i32 %conv213, 128
  br i1 %cmp214, label %if.then.216, label %if.end.217

if.then.216:                                      ; preds = %for.body
  %129 = load i64, i64* %array.addr, align 8
  %130 = load i64, i64* %newelt.addr, align 8
  call void @args_out_of_range(i64 %129, i64 %130) #7
  unreachable

if.end.217:                                       ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.217
  %131 = load i64, i64* %i, align 8
  %dec218 = add nsw i64 %131, -1
  store i64 %dec218, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body.219

do.body.219:                                      ; preds = %for.end
  %132 = load i64, i64* %array.addr, align 8
  %call220 = call %struct.Lisp_String* @XSTRING(i64 %132)
  %size = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %call220, i32 0, i32 0
  %133 = load i64, i64* %size, align 8
  %cmp221 = icmp eq i64 %133, 0
  br i1 %cmp221, label %if.then.223, label %if.else.224

if.then.223:                                      ; preds = %do.body.219
  %134 = load i64, i64* @empty_multibyte_string, align 8
  store i64 %134, i64* %array.addr, align 8
  br label %if.end.228

if.else.224:                                      ; preds = %do.body.219
  %135 = load i64, i64* %array.addr, align 8
  %call225 = call %struct.Lisp_String* @XSTRING(i64 %135)
  %size226 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %call225, i32 0, i32 0
  %136 = load i64, i64* %size226, align 8
  %137 = load i64, i64* %array.addr, align 8
  %call227 = call %struct.Lisp_String* @XSTRING(i64 %137)
  %size_byte = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %call227, i32 0, i32 1
  store i64 %136, i64* %size_byte, align 8
  br label %if.end.228

if.end.228:                                       ; preds = %if.else.224, %if.then.223
  br label %do.end.229

do.end.229:                                       ; preds = %if.end.228
  %138 = load i64, i64* %array.addr, align 8
  %139 = load i64, i64* %idx.addr, align 8
  %140 = load i64, i64* %newelt.addr, align 8
  %call230 = call i64 @Faset(i64 %138, i64 %139, i64 %140)
  store i64 %call230, i64* %retval
  br label %return

if.end.231:                                       ; preds = %cond.false.202, %cond.true.198
  %141 = load i64, i64* %array.addr, align 8
  %142 = load i64, i64* %idxval, align 8
  %143 = load i32, i32* %c, align 4
  %conv232 = trunc i32 %143 to i8
  call void @SSET(i64 %141, i64 %142, i8 zeroext %conv232)
  br label %if.end.233

if.end.233:                                       ; preds = %if.end.231, %while.end
  br label %if.end.234

if.end.234:                                       ; preds = %if.end.233, %cond.end.41
  br label %if.end.235

if.end.235:                                       ; preds = %if.end.234, %if.end.26
  br label %if.end.236

if.end.236:                                       ; preds = %if.end.235, %if.end
  %144 = load i64, i64* %newelt.addr, align 8
  store i64 %144, i64* %retval
  br label %return

return:                                           ; preds = %if.end.236, %do.end.229
  %145 = load i64, i64* %retval
  ret i64 %145
}

declare void @CHECK_ARRAY(i64, i64) #2

declare %struct.Lisp_Vector* @XVECTOR(i64) #2

declare void @ASET(i64, i64, i64) #2

declare void @bool_vector_set(i64, i64, i1 zeroext) #2

declare void @CHAR_TABLE_SET(i64, i32, i64) #2

declare %struct.Lisp_String* @XSTRING(i64) #2

declare i64 @SBYTES(i64) #2

declare i32 @char_string(i32, i8*) #2

declare i8* @record_xmalloc(i64) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare void @allocate_string_data(%struct.Lisp_String*, i64, i64) #2

declare void @clear_string_char_byte_cache() #2

declare void @SSET(i64, i64, i8 zeroext) #2

; Function Attrs: nounwind uwtable
define i64 @arithcompare(i64 %num1, i64 %num2, i32 %comparison) #4 {
entry:
  %retval = alloca i64, align 8
  %num1.addr = alloca i64, align 8
  %num2.addr = alloca i64, align 8
  %comparison.addr = alloca i32, align 4
  %f1 = alloca double, align 8
  %f2 = alloca double, align 8
  %floatp = alloca i8, align 1
  store i64 %num1, i64* %num1.addr, align 8
  store i64 %num2, i64* %num2.addr, align 8
  store i32 %comparison, i32* %comparison.addr, align 4
  store double 0.000000e+00, double* %f1, align 8
  store double 0.000000e+00, double* %f2, align 8
  store i8 0, i8* %floatp, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %num1.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %1 = load i64, i64* %num1.addr, align 8
  %call = call i32 @XMISCTYPE(i64 %1)
  %cmp2 = icmp eq i32 %call, 24236
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load i64, i64* %num1.addr, align 8
  %call4 = call i64 @marker_position(i64 %2)
  %call5 = call i64 @make_natnum(i64 %call4)
  store i64 %call5, i64* %num1.addr, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %do.body
  %3 = load i64, i64* %num1.addr, align 8
  %call6 = call zeroext i1 @NUMBERP(i64 %3)
  br i1 %call6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %call8 = call i64 @builtin_lisp_symbol(i32 710)
  %4 = load i64, i64* %num1.addr, align 8
  %5 = call i64 @wrong_type_argument(i64 %call8, i64 %4) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %6, %cond.true
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.9

do.body.9:                                        ; preds = %do.end
  %7 = load i64, i64* %num2.addr, align 8
  %and10 = and i64 %7, 7
  %conv11 = trunc i64 %and10 to i32
  %cmp12 = icmp eq i32 %conv11, 1
  br i1 %cmp12, label %land.lhs.true.14, label %if.else.21

land.lhs.true.14:                                 ; preds = %do.body.9
  %8 = load i64, i64* %num2.addr, align 8
  %call15 = call i32 @XMISCTYPE(i64 %8)
  %cmp16 = icmp eq i32 %call15, 24236
  br i1 %cmp16, label %if.then.18, label %if.else.21

if.then.18:                                       ; preds = %land.lhs.true.14
  %9 = load i64, i64* %num2.addr, align 8
  %call19 = call i64 @marker_position(i64 %9)
  %call20 = call i64 @make_natnum(i64 %call19)
  store i64 %call20, i64* %num2.addr, align 8
  br label %if.end.28

if.else.21:                                       ; preds = %land.lhs.true.14, %do.body.9
  %10 = load i64, i64* %num2.addr, align 8
  %call22 = call zeroext i1 @NUMBERP(i64 %10)
  br i1 %call22, label %cond.true.24, label %cond.false.25

cond.true.24:                                     ; preds = %if.else.21
  br label %cond.end.27

cond.false.25:                                    ; preds = %if.else.21
  %call26 = call i64 @builtin_lisp_symbol(i32 710)
  %11 = load i64, i64* %num2.addr, align 8
  %12 = call i64 @wrong_type_argument(i64 %call26, i64 %11) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end.27

cond.end.27:                                      ; preds = %13, %cond.true.24
  br label %if.end.28

if.end.28:                                        ; preds = %cond.end.27, %if.then.18
  br label %do.end.29

do.end.29:                                        ; preds = %if.end.28
  %14 = load i64, i64* %num1.addr, align 8
  %and30 = and i64 %14, 7
  %conv31 = trunc i64 %and30 to i32
  %cmp32 = icmp eq i32 %conv31, 7
  br i1 %cmp32, label %if.then.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.29
  %15 = load i64, i64* %num2.addr, align 8
  %and34 = and i64 %15, 7
  %conv35 = trunc i64 %and34 to i32
  %cmp36 = icmp eq i32 %conv35, 7
  br i1 %cmp36, label %if.then.38, label %if.end.59

if.then.38:                                       ; preds = %lor.lhs.false, %do.end.29
  store i8 1, i8* %floatp, align 1
  %16 = load i64, i64* %num1.addr, align 8
  %and39 = and i64 %16, 7
  %conv40 = trunc i64 %and39 to i32
  %cmp41 = icmp eq i32 %conv40, 7
  br i1 %cmp41, label %cond.true.43, label %cond.false.45

cond.true.43:                                     ; preds = %if.then.38
  %17 = load i64, i64* %num1.addr, align 8
  %call44 = call double @XFLOAT_DATA(i64 %17)
  br label %cond.end.47

cond.false.45:                                    ; preds = %if.then.38
  %18 = load i64, i64* %num1.addr, align 8
  %shr = ashr i64 %18, 2
  %conv46 = sitofp i64 %shr to double
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.45, %cond.true.43
  %cond = phi double [ %call44, %cond.true.43 ], [ %conv46, %cond.false.45 ]
  store double %cond, double* %f1, align 8
  %19 = load i64, i64* %num2.addr, align 8
  %and48 = and i64 %19, 7
  %conv49 = trunc i64 %and48 to i32
  %cmp50 = icmp eq i32 %conv49, 7
  br i1 %cmp50, label %cond.true.52, label %cond.false.54

cond.true.52:                                     ; preds = %cond.end.47
  %20 = load i64, i64* %num2.addr, align 8
  %call53 = call double @XFLOAT_DATA(i64 %20)
  br label %cond.end.57

cond.false.54:                                    ; preds = %cond.end.47
  %21 = load i64, i64* %num2.addr, align 8
  %shr55 = ashr i64 %21, 2
  %conv56 = sitofp i64 %shr55 to double
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.54, %cond.true.52
  %cond58 = phi double [ %call53, %cond.true.52 ], [ %conv56, %cond.false.54 ]
  store double %cond58, double* %f2, align 8
  br label %if.end.59

if.end.59:                                        ; preds = %cond.end.57, %lor.lhs.false
  %22 = load i32, i32* %comparison.addr, align 4
  switch i32 %22, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.73
    i32 2, label %sw.bb.88
    i32 4, label %sw.bb.103
    i32 3, label %sw.bb.118
    i32 5, label %sw.bb.133
  ]

sw.bb:                                            ; preds = %if.end.59
  %23 = load i8, i8* %floatp, align 1
  %tobool = trunc i8 %23 to i1
  br i1 %tobool, label %cond.true.61, label %cond.false.64

cond.true.61:                                     ; preds = %sw.bb
  %24 = load double, double* %f1, align 8
  %25 = load double, double* %f2, align 8
  %cmp62 = fcmp oeq double %24, %25
  br i1 %cmp62, label %if.then.69, label %if.end.71

cond.false.64:                                    ; preds = %sw.bb
  %26 = load i64, i64* %num1.addr, align 8
  %shr65 = ashr i64 %26, 2
  %27 = load i64, i64* %num2.addr, align 8
  %shr66 = ashr i64 %27, 2
  %cmp67 = icmp eq i64 %shr65, %shr66
  br i1 %cmp67, label %if.then.69, label %if.end.71

if.then.69:                                       ; preds = %cond.false.64, %cond.true.61
  %call70 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call70, i64* %retval
  br label %return

if.end.71:                                        ; preds = %cond.false.64, %cond.true.61
  %call72 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call72, i64* %retval
  br label %return

sw.bb.73:                                         ; preds = %if.end.59
  %28 = load i8, i8* %floatp, align 1
  %tobool74 = trunc i8 %28 to i1
  br i1 %tobool74, label %cond.true.76, label %cond.false.79

cond.true.76:                                     ; preds = %sw.bb.73
  %29 = load double, double* %f1, align 8
  %30 = load double, double* %f2, align 8
  %cmp77 = fcmp une double %29, %30
  br i1 %cmp77, label %if.then.84, label %if.end.86

cond.false.79:                                    ; preds = %sw.bb.73
  %31 = load i64, i64* %num1.addr, align 8
  %shr80 = ashr i64 %31, 2
  %32 = load i64, i64* %num2.addr, align 8
  %shr81 = ashr i64 %32, 2
  %cmp82 = icmp ne i64 %shr80, %shr81
  br i1 %cmp82, label %if.then.84, label %if.end.86

if.then.84:                                       ; preds = %cond.false.79, %cond.true.76
  %call85 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call85, i64* %retval
  br label %return

if.end.86:                                        ; preds = %cond.false.79, %cond.true.76
  %call87 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call87, i64* %retval
  br label %return

sw.bb.88:                                         ; preds = %if.end.59
  %33 = load i8, i8* %floatp, align 1
  %tobool89 = trunc i8 %33 to i1
  br i1 %tobool89, label %cond.true.91, label %cond.false.94

cond.true.91:                                     ; preds = %sw.bb.88
  %34 = load double, double* %f1, align 8
  %35 = load double, double* %f2, align 8
  %cmp92 = fcmp olt double %34, %35
  br i1 %cmp92, label %if.then.99, label %if.end.101

cond.false.94:                                    ; preds = %sw.bb.88
  %36 = load i64, i64* %num1.addr, align 8
  %shr95 = ashr i64 %36, 2
  %37 = load i64, i64* %num2.addr, align 8
  %shr96 = ashr i64 %37, 2
  %cmp97 = icmp slt i64 %shr95, %shr96
  br i1 %cmp97, label %if.then.99, label %if.end.101

if.then.99:                                       ; preds = %cond.false.94, %cond.true.91
  %call100 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call100, i64* %retval
  br label %return

if.end.101:                                       ; preds = %cond.false.94, %cond.true.91
  %call102 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call102, i64* %retval
  br label %return

sw.bb.103:                                        ; preds = %if.end.59
  %38 = load i8, i8* %floatp, align 1
  %tobool104 = trunc i8 %38 to i1
  br i1 %tobool104, label %cond.true.106, label %cond.false.109

cond.true.106:                                    ; preds = %sw.bb.103
  %39 = load double, double* %f1, align 8
  %40 = load double, double* %f2, align 8
  %cmp107 = fcmp ole double %39, %40
  br i1 %cmp107, label %if.then.114, label %if.end.116

cond.false.109:                                   ; preds = %sw.bb.103
  %41 = load i64, i64* %num1.addr, align 8
  %shr110 = ashr i64 %41, 2
  %42 = load i64, i64* %num2.addr, align 8
  %shr111 = ashr i64 %42, 2
  %cmp112 = icmp sle i64 %shr110, %shr111
  br i1 %cmp112, label %if.then.114, label %if.end.116

if.then.114:                                      ; preds = %cond.false.109, %cond.true.106
  %call115 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call115, i64* %retval
  br label %return

if.end.116:                                       ; preds = %cond.false.109, %cond.true.106
  %call117 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call117, i64* %retval
  br label %return

sw.bb.118:                                        ; preds = %if.end.59
  %43 = load i8, i8* %floatp, align 1
  %tobool119 = trunc i8 %43 to i1
  br i1 %tobool119, label %cond.true.121, label %cond.false.124

cond.true.121:                                    ; preds = %sw.bb.118
  %44 = load double, double* %f1, align 8
  %45 = load double, double* %f2, align 8
  %cmp122 = fcmp ogt double %44, %45
  br i1 %cmp122, label %if.then.129, label %if.end.131

cond.false.124:                                   ; preds = %sw.bb.118
  %46 = load i64, i64* %num1.addr, align 8
  %shr125 = ashr i64 %46, 2
  %47 = load i64, i64* %num2.addr, align 8
  %shr126 = ashr i64 %47, 2
  %cmp127 = icmp sgt i64 %shr125, %shr126
  br i1 %cmp127, label %if.then.129, label %if.end.131

if.then.129:                                      ; preds = %cond.false.124, %cond.true.121
  %call130 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call130, i64* %retval
  br label %return

if.end.131:                                       ; preds = %cond.false.124, %cond.true.121
  %call132 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call132, i64* %retval
  br label %return

sw.bb.133:                                        ; preds = %if.end.59
  %48 = load i8, i8* %floatp, align 1
  %tobool134 = trunc i8 %48 to i1
  br i1 %tobool134, label %cond.true.136, label %cond.false.139

cond.true.136:                                    ; preds = %sw.bb.133
  %49 = load double, double* %f1, align 8
  %50 = load double, double* %f2, align 8
  %cmp137 = fcmp oge double %49, %50
  br i1 %cmp137, label %if.then.144, label %if.end.146

cond.false.139:                                   ; preds = %sw.bb.133
  %51 = load i64, i64* %num1.addr, align 8
  %shr140 = ashr i64 %51, 2
  %52 = load i64, i64* %num2.addr, align 8
  %shr141 = ashr i64 %52, 2
  %cmp142 = icmp sge i64 %shr140, %shr141
  br i1 %cmp142, label %if.then.144, label %if.end.146

if.then.144:                                      ; preds = %cond.false.139, %cond.true.136
  %call145 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call145, i64* %retval
  br label %return

if.end.146:                                       ; preds = %cond.false.139, %cond.true.136
  %call147 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call147, i64* %retval
  br label %return

sw.default:                                       ; preds = %if.end.59
  call void @emacs_abort() #7
  unreachable

return:                                           ; preds = %if.end.146, %if.then.144, %if.end.131, %if.then.129, %if.end.116, %if.then.114, %if.end.101, %if.then.99, %if.end.86, %if.then.84, %if.end.71, %if.then.69
  %53 = load i64, i64* %retval
  ret i64 %53
}

declare i64 @make_natnum(i64) #2

declare i64 @marker_position(i64) #2

declare double @XFLOAT_DATA(i64) #2

; Function Attrs: nounwind uwtable
define i64 @Feqlsign(i64 %nargs, i64* %args) #4 {
entry:
  %nargs.addr = alloca i64, align 8
  %args.addr = alloca i64*, align 8
  store i64 %nargs, i64* %nargs.addr, align 8
  store i64* %args, i64** %args.addr, align 8
  %0 = load i64, i64* %nargs.addr, align 8
  %1 = load i64*, i64** %args.addr, align 8
  %call = call i64 @arithcompare_driver(i64 %0, i64* %1, i32 0)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define internal i64 @arithcompare_driver(i64 %nargs, i64* %args, i32 %comparison) #4 {
entry:
  %retval = alloca i64, align 8
  %nargs.addr = alloca i64, align 8
  %args.addr = alloca i64*, align 8
  %comparison.addr = alloca i32, align 4
  %argnum = alloca i64, align 8
  store i64 %nargs, i64* %nargs.addr, align 8
  store i64* %args, i64** %args.addr, align 8
  store i32 %comparison, i32* %comparison.addr, align 4
  store i64 1, i64* %argnum, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %argnum, align 8
  %1 = load i64, i64* %nargs.addr, align 8
  %cmp = icmp slt i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %2 = load i64, i64* %argnum, align 8
  %sub = sub nsw i64 %2, 1
  %3 = load i64*, i64** %args.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 %sub
  %4 = load i64, i64* %arrayidx, align 8
  %5 = load i64, i64* %argnum, align 8
  %6 = load i64*, i64** %args.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, i64* %6, i64 %5
  %7 = load i64, i64* %arrayidx1, align 8
  %8 = load i32, i32* %comparison.addr, align 4
  %call2 = call i64 @arithcompare(i64 %4, i64 %7, i32 %8)
  %cmp3 = icmp eq i64 %call, %call2
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call4, i64* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i64, i64* %argnum, align 8
  %inc = add nsw i64 %9, 1
  store i64 %inc, i64* %argnum, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call5 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call5, i64* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %10 = load i64, i64* %retval
  ret i64 %10
}

; Function Attrs: nounwind uwtable
define i64 @Flss(i64 %nargs, i64* %args) #4 {
entry:
  %nargs.addr = alloca i64, align 8
  %args.addr = alloca i64*, align 8
  store i64 %nargs, i64* %nargs.addr, align 8
  store i64* %args, i64** %args.addr, align 8
  %0 = load i64, i64* %nargs.addr, align 8
  %1 = load i64*, i64** %args.addr, align 8
  %call = call i64 @arithcompare_driver(i64 %0, i64* %1, i32 2)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @Fgtr(i64 %nargs, i64* %args) #4 {
entry:
  %nargs.addr = alloca i64, align 8
  %args.addr = alloca i64*, align 8
  store i64 %nargs, i64* %nargs.addr, align 8
  store i64* %args, i64** %args.addr, align 8
  %0 = load i64, i64* %nargs.addr, align 8
  %1 = load i64*, i64** %args.addr, align 8
  %call = call i64 @arithcompare_driver(i64 %0, i64* %1, i32 3)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @Fleq(i64 %nargs, i64* %args) #4 {
entry:
  %nargs.addr = alloca i64, align 8
  %args.addr = alloca i64*, align 8
  store i64 %nargs, i64* %nargs.addr, align 8
  store i64* %args, i64** %args.addr, align 8
  %0 = load i64, i64* %nargs.addr, align 8
  %1 = load i64*, i64** %args.addr, align 8
  %call = call i64 @arithcompare_driver(i64 %0, i64* %1, i32 4)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @Fgeq(i64 %nargs, i64* %args) #4 {
entry:
  %nargs.addr = alloca i64, align 8
  %args.addr = alloca i64*, align 8
  store i64 %nargs, i64* %nargs.addr, align 8
  store i64* %args, i64** %args.addr, align 8
  %0 = load i64, i64* %nargs.addr, align 8
  %1 = load i64*, i64** %args.addr, align 8
  %call = call i64 @arithcompare_driver(i64 %0, i64* %1, i32 5)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @Fneq(i64 %num1, i64 %num2) #4 {
entry:
  %num1.addr = alloca i64, align 8
  %num2.addr = alloca i64, align 8
  store i64 %num1, i64* %num1.addr, align 8
  store i64 %num2, i64* %num2.addr, align 8
  %0 = load i64, i64* %num1.addr, align 8
  %1 = load i64, i64* %num2.addr, align 8
  %call = call i64 @arithcompare(i64 %0, i64 %1, i32 1)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @intbig_to_lisp(i64 %i) #4 {
entry:
  %i.addr = alloca i64, align 8
  store i64 %i, i64* %i.addr, align 8
  %0 = load i64, i64* %i.addr, align 8
  %shr = ashr i64 %0, 16
  %shl = shl i64 %shr, 2
  %add = add i64 %shl, 2
  %1 = load i64, i64* %i.addr, align 8
  %and = and i64 %1, 65535
  %shl1 = shl i64 %and, 2
  %add2 = add i64 %shl1, 2
  %call = call i64 @Fcons(i64 %add, i64 %add2)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @uintbig_to_lisp(i64 %i) #4 {
entry:
  %i.addr = alloca i64, align 8
  store i64 %i, i64* %i.addr, align 8
  %0 = load i64, i64* %i.addr, align 8
  %shr = lshr i64 %0, 16
  %shl = shl i64 %shr, 2
  %add = add i64 %shl, 2
  %1 = load i64, i64* %i.addr, align 8
  %and = and i64 %1, 65535
  %shl1 = shl i64 %and, 2
  %add2 = add i64 %shl1, 2
  %call = call i64 @Fcons(i64 %add, i64 %add2)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @cons_to_unsigned(i64 %c, i64 %max) #4 {
entry:
  %c.addr = alloca i64, align 8
  %max.addr = alloca i64, align 8
  %valid = alloca i8, align 1
  %val = alloca i64, align 8
  %d = alloca double, align 8
  %top = alloca i64, align 8
  %rest = alloca i64, align 8
  %mid = alloca i64, align 8
  store i64 %c, i64* %c.addr, align 8
  store i64 %max, i64* %max.addr, align 8
  store i8 0, i8* %valid, align 1
  %0 = load i64, i64* %c.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %and1 = and i32 %conv, -5
  %cmp = icmp eq i32 %and1, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %c.addr, align 8
  %shr = ashr i64 %1, 2
  %cmp3 = icmp sle i64 0, %shr
  %frombool = zext i1 %cmp3 to i8
  store i8 %frombool, i8* %valid, align 1
  %2 = load i64, i64* %c.addr, align 8
  %shr5 = ashr i64 %2, 2
  store i64 %shr5, i64* %val, align 8
  br label %if.end.102

if.else:                                          ; preds = %entry
  %3 = load i64, i64* %c.addr, align 8
  %and6 = and i64 %3, 7
  %conv7 = trunc i64 %and6 to i32
  %cmp8 = icmp eq i32 %conv7, 7
  br i1 %cmp8, label %if.then.10, label %if.else.20

if.then.10:                                       ; preds = %if.else
  %4 = load i64, i64* %c.addr, align 8
  %call = call double @XFLOAT_DATA(i64 %4)
  store double %call, double* %d, align 8
  %5 = load double, double* %d, align 8
  %cmp11 = fcmp ole double 0.000000e+00, %5
  br i1 %cmp11, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then.10
  %6 = load double, double* %d, align 8
  %7 = load i64, i64* %max.addr, align 8
  %cmp13 = icmp eq i64 %7, -1
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true
  %8 = load i64, i64* %max.addr, align 8
  %add = add i64 %8, 1
  %conv15 = uitofp i64 %add to double
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 0x43F0000000000000, %cond.true ], [ %conv15, %cond.false ]
  %cmp16 = fcmp olt double %6, %cond
  br i1 %cmp16, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %cond.end
  %9 = load double, double* %d, align 8
  %conv19 = fptoui double %9 to i64
  store i64 %conv19, i64* %val, align 8
  store i8 1, i8* %valid, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.18, %cond.end, %if.then.10
  br label %if.end.101

if.else.20:                                       ; preds = %if.else
  %10 = load i64, i64* %c.addr, align 8
  %and21 = and i64 %10, 7
  %conv22 = trunc i64 %and21 to i32
  %cmp23 = icmp eq i32 %conv22, 3
  br i1 %cmp23, label %land.lhs.true.25, label %if.end.100

land.lhs.true.25:                                 ; preds = %if.else.20
  %11 = load i64, i64* %c.addr, align 8
  %sub = sub nsw i64 %11, 3
  %12 = inttoptr i64 %sub to i8*
  %13 = bitcast i8* %12 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %13, i32 0, i32 0
  %14 = load i64, i64* %car, align 8
  %call26 = call zeroext i1 @NATNUMP(i64 %14)
  br i1 %call26, label %if.then.28, label %if.end.100

if.then.28:                                       ; preds = %land.lhs.true.25
  %15 = load i64, i64* %c.addr, align 8
  %sub29 = sub nsw i64 %15, 3
  %16 = inttoptr i64 %sub29 to i8*
  %17 = bitcast i8* %16 to %struct.Lisp_Cons*
  %car30 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %17, i32 0, i32 0
  %18 = load i64, i64* %car30, align 8
  %shr31 = ashr i64 %18, 2
  store i64 %shr31, i64* %top, align 8
  %19 = load i64, i64* %c.addr, align 8
  %sub32 = sub nsw i64 %19, 3
  %20 = inttoptr i64 %sub32 to i8*
  %21 = bitcast i8* %20 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %21, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %22 = load i64, i64* %cdr, align 8
  store i64 %22, i64* %rest, align 8
  %23 = load i64, i64* %top, align 8
  %cmp33 = icmp ule i64 %23, 16777215
  br i1 %cmp33, label %land.lhs.true.35, label %if.else.75

land.lhs.true.35:                                 ; preds = %if.then.28
  %24 = load i64, i64* %rest, align 8
  %and36 = and i64 %24, 7
  %conv37 = trunc i64 %and36 to i32
  %cmp38 = icmp eq i32 %conv37, 3
  br i1 %cmp38, label %land.lhs.true.40, label %if.else.75

land.lhs.true.40:                                 ; preds = %land.lhs.true.35
  %25 = load i64, i64* %rest, align 8
  %sub41 = sub nsw i64 %25, 3
  %26 = inttoptr i64 %sub41 to i8*
  %27 = bitcast i8* %26 to %struct.Lisp_Cons*
  %car42 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %27, i32 0, i32 0
  %28 = load i64, i64* %car42, align 8
  %call43 = call zeroext i1 @NATNUMP(i64 %28)
  br i1 %call43, label %land.lhs.true.45, label %if.else.75

land.lhs.true.45:                                 ; preds = %land.lhs.true.40
  %29 = load i64, i64* %rest, align 8
  %sub46 = sub nsw i64 %29, 3
  %30 = inttoptr i64 %sub46 to i8*
  %31 = bitcast i8* %30 to %struct.Lisp_Cons*
  %car47 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %31, i32 0, i32 0
  %32 = load i64, i64* %car47, align 8
  %shr48 = ashr i64 %32, 2
  %cmp49 = icmp slt i64 %shr48, 16777216
  br i1 %cmp49, label %land.lhs.true.51, label %if.else.75

land.lhs.true.51:                                 ; preds = %land.lhs.true.45
  %33 = load i64, i64* %rest, align 8
  %sub52 = sub nsw i64 %33, 3
  %34 = inttoptr i64 %sub52 to i8*
  %35 = bitcast i8* %34 to %struct.Lisp_Cons*
  %u53 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %35, i32 0, i32 1
  %cdr54 = bitcast %union.anon* %u53 to i64*
  %36 = load i64, i64* %cdr54, align 8
  %call55 = call zeroext i1 @NATNUMP(i64 %36)
  br i1 %call55, label %land.lhs.true.57, label %if.else.75

land.lhs.true.57:                                 ; preds = %land.lhs.true.51
  %37 = load i64, i64* %rest, align 8
  %sub58 = sub nsw i64 %37, 3
  %38 = inttoptr i64 %sub58 to i8*
  %39 = bitcast i8* %38 to %struct.Lisp_Cons*
  %u59 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %39, i32 0, i32 1
  %cdr60 = bitcast %union.anon* %u59 to i64*
  %40 = load i64, i64* %cdr60, align 8
  %shr61 = ashr i64 %40, 2
  %cmp62 = icmp slt i64 %shr61, 65536
  br i1 %cmp62, label %if.then.64, label %if.else.75

if.then.64:                                       ; preds = %land.lhs.true.57
  %41 = load i64, i64* %rest, align 8
  %sub65 = sub nsw i64 %41, 3
  %42 = inttoptr i64 %sub65 to i8*
  %43 = bitcast i8* %42 to %struct.Lisp_Cons*
  %car66 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %43, i32 0, i32 0
  %44 = load i64, i64* %car66, align 8
  %shr67 = ashr i64 %44, 2
  store i64 %shr67, i64* %mid, align 8
  %45 = load i64, i64* %top, align 8
  %shl = shl i64 %45, 24
  %shl68 = shl i64 %shl, 16
  %46 = load i64, i64* %mid, align 8
  %shl69 = shl i64 %46, 16
  %or = or i64 %shl68, %shl69
  %47 = load i64, i64* %rest, align 8
  %sub70 = sub nsw i64 %47, 3
  %48 = inttoptr i64 %sub70 to i8*
  %49 = bitcast i8* %48 to %struct.Lisp_Cons*
  %u71 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %49, i32 0, i32 1
  %cdr72 = bitcast %union.anon* %u71 to i64*
  %50 = load i64, i64* %cdr72, align 8
  %shr73 = ashr i64 %50, 2
  %or74 = or i64 %or, %shr73
  store i64 %or74, i64* %val, align 8
  store i8 1, i8* %valid, align 1
  br label %if.end.99

if.else.75:                                       ; preds = %land.lhs.true.57, %land.lhs.true.51, %land.lhs.true.45, %land.lhs.true.40, %land.lhs.true.35, %if.then.28
  %51 = load i64, i64* %top, align 8
  %cmp76 = icmp ule i64 %51, 281474976710655
  br i1 %cmp76, label %if.then.78, label %if.end.98

if.then.78:                                       ; preds = %if.else.75
  %52 = load i64, i64* %rest, align 8
  %and79 = and i64 %52, 7
  %conv80 = trunc i64 %and79 to i32
  %cmp81 = icmp eq i32 %conv80, 3
  br i1 %cmp81, label %if.then.83, label %if.end.86

if.then.83:                                       ; preds = %if.then.78
  %53 = load i64, i64* %rest, align 8
  %sub84 = sub nsw i64 %53, 3
  %54 = inttoptr i64 %sub84 to i8*
  %55 = bitcast i8* %54 to %struct.Lisp_Cons*
  %car85 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %55, i32 0, i32 0
  %56 = load i64, i64* %car85, align 8
  store i64 %56, i64* %rest, align 8
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.83, %if.then.78
  %57 = load i64, i64* %rest, align 8
  %call87 = call zeroext i1 @NATNUMP(i64 %57)
  br i1 %call87, label %land.lhs.true.89, label %if.end.97

land.lhs.true.89:                                 ; preds = %if.end.86
  %58 = load i64, i64* %rest, align 8
  %shr90 = ashr i64 %58, 2
  %cmp91 = icmp slt i64 %shr90, 65536
  br i1 %cmp91, label %if.then.93, label %if.end.97

if.then.93:                                       ; preds = %land.lhs.true.89
  %59 = load i64, i64* %top, align 8
  %shl94 = shl i64 %59, 16
  %60 = load i64, i64* %rest, align 8
  %shr95 = ashr i64 %60, 2
  %or96 = or i64 %shl94, %shr95
  store i64 %or96, i64* %val, align 8
  store i8 1, i8* %valid, align 1
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.93, %land.lhs.true.89, %if.end.86
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.else.75
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %if.then.64
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %land.lhs.true.25, %if.else.20
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %if.end
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %if.then
  %61 = load i8, i8* %valid, align 1
  %tobool = trunc i8 %61 to i1
  br i1 %tobool, label %land.lhs.true.104, label %if.then.107

land.lhs.true.104:                                ; preds = %if.end.102
  %62 = load i64, i64* %val, align 8
  %63 = load i64, i64* %max.addr, align 8
  %cmp105 = icmp ule i64 %62, %63
  br i1 %cmp105, label %if.end.108, label %if.then.107

if.then.107:                                      ; preds = %land.lhs.true.104, %if.end.102
  call void (i8*, ...) @error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.11, i32 0, i32 0)) #7
  unreachable

if.end.108:                                       ; preds = %land.lhs.true.104
  %64 = load i64, i64* %val, align 8
  ret i64 %64
}

; Function Attrs: nounwind uwtable
define i64 @cons_to_signed(i64 %c, i64 %min, i64 %max) #4 {
entry:
  %c.addr = alloca i64, align 8
  %min.addr = alloca i64, align 8
  %max.addr = alloca i64, align 8
  %valid = alloca i8, align 1
  %val = alloca i64, align 8
  %d = alloca double, align 8
  %top = alloca i64, align 8
  %rest = alloca i64, align 8
  %mid = alloca i64, align 8
  store i64 %c, i64* %c.addr, align 8
  store i64 %min, i64* %min.addr, align 8
  store i64 %max, i64* %max.addr, align 8
  store i8 0, i8* %valid, align 1
  %0 = load i64, i64* %c.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %and1 = and i32 %conv, -5
  %cmp = icmp eq i32 %and1, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %c.addr, align 8
  %shr = ashr i64 %1, 2
  store i64 %shr, i64* %val, align 8
  store i8 1, i8* %valid, align 1
  br label %if.end.109

if.else:                                          ; preds = %entry
  %2 = load i64, i64* %c.addr, align 8
  %and3 = and i64 %2, 7
  %conv4 = trunc i64 %and3 to i32
  %cmp5 = icmp eq i32 %conv4, 7
  br i1 %cmp5, label %if.then.7, label %if.else.18

if.then.7:                                        ; preds = %if.else
  %3 = load i64, i64* %c.addr, align 8
  %call = call double @XFLOAT_DATA(i64 %3)
  store double %call, double* %d, align 8
  %4 = load i64, i64* %min.addr, align 8
  %conv8 = sitofp i64 %4 to double
  %5 = load double, double* %d, align 8
  %cmp9 = fcmp ole double %conv8, %5
  br i1 %cmp9, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then.7
  %6 = load double, double* %d, align 8
  %7 = load i64, i64* %max.addr, align 8
  %cmp11 = icmp eq i64 %7, 9223372036854775807
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true
  %8 = load i64, i64* %max.addr, align 8
  %add = add nsw i64 %8, 1
  %conv13 = sitofp i64 %add to double
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 0x43E0000000000000, %cond.true ], [ %conv13, %cond.false ]
  %cmp14 = fcmp olt double %6, %cond
  br i1 %cmp14, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %cond.end
  %9 = load double, double* %d, align 8
  %conv17 = fptosi double %9 to i64
  store i64 %conv17, i64* %val, align 8
  store i8 1, i8* %valid, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.16, %cond.end, %if.then.7
  br label %if.end.108

if.else.18:                                       ; preds = %if.else
  %10 = load i64, i64* %c.addr, align 8
  %and19 = and i64 %10, 7
  %conv20 = trunc i64 %and19 to i32
  %cmp21 = icmp eq i32 %conv20, 3
  br i1 %cmp21, label %land.lhs.true.23, label %if.end.107

land.lhs.true.23:                                 ; preds = %if.else.18
  %11 = load i64, i64* %c.addr, align 8
  %sub = sub nsw i64 %11, 3
  %12 = inttoptr i64 %sub to i8*
  %13 = bitcast i8* %12 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %13, i32 0, i32 0
  %14 = load i64, i64* %car, align 8
  %and24 = and i64 %14, 7
  %conv25 = trunc i64 %and24 to i32
  %and26 = and i32 %conv25, -5
  %cmp27 = icmp eq i32 %and26, 2
  br i1 %cmp27, label %if.then.29, label %if.end.107

if.then.29:                                       ; preds = %land.lhs.true.23
  %15 = load i64, i64* %c.addr, align 8
  %sub30 = sub nsw i64 %15, 3
  %16 = inttoptr i64 %sub30 to i8*
  %17 = bitcast i8* %16 to %struct.Lisp_Cons*
  %car31 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %17, i32 0, i32 0
  %18 = load i64, i64* %car31, align 8
  %shr32 = ashr i64 %18, 2
  store i64 %shr32, i64* %top, align 8
  %19 = load i64, i64* %c.addr, align 8
  %sub33 = sub nsw i64 %19, 3
  %20 = inttoptr i64 %sub33 to i8*
  %21 = bitcast i8* %20 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %21, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %22 = load i64, i64* %cdr, align 8
  store i64 %22, i64* %rest, align 8
  %23 = load i64, i64* %top, align 8
  %cmp34 = icmp sle i64 -8388608, %23
  br i1 %cmp34, label %land.lhs.true.36, label %if.else.79

land.lhs.true.36:                                 ; preds = %if.then.29
  %24 = load i64, i64* %top, align 8
  %cmp37 = icmp sle i64 %24, 8388607
  br i1 %cmp37, label %land.lhs.true.39, label %if.else.79

land.lhs.true.39:                                 ; preds = %land.lhs.true.36
  %25 = load i64, i64* %rest, align 8
  %and40 = and i64 %25, 7
  %conv41 = trunc i64 %and40 to i32
  %cmp42 = icmp eq i32 %conv41, 3
  br i1 %cmp42, label %land.lhs.true.44, label %if.else.79

land.lhs.true.44:                                 ; preds = %land.lhs.true.39
  %26 = load i64, i64* %rest, align 8
  %sub45 = sub nsw i64 %26, 3
  %27 = inttoptr i64 %sub45 to i8*
  %28 = bitcast i8* %27 to %struct.Lisp_Cons*
  %car46 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %28, i32 0, i32 0
  %29 = load i64, i64* %car46, align 8
  %call47 = call zeroext i1 @NATNUMP(i64 %29)
  br i1 %call47, label %land.lhs.true.49, label %if.else.79

land.lhs.true.49:                                 ; preds = %land.lhs.true.44
  %30 = load i64, i64* %rest, align 8
  %sub50 = sub nsw i64 %30, 3
  %31 = inttoptr i64 %sub50 to i8*
  %32 = bitcast i8* %31 to %struct.Lisp_Cons*
  %car51 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %32, i32 0, i32 0
  %33 = load i64, i64* %car51, align 8
  %shr52 = ashr i64 %33, 2
  %cmp53 = icmp slt i64 %shr52, 16777216
  br i1 %cmp53, label %land.lhs.true.55, label %if.else.79

land.lhs.true.55:                                 ; preds = %land.lhs.true.49
  %34 = load i64, i64* %rest, align 8
  %sub56 = sub nsw i64 %34, 3
  %35 = inttoptr i64 %sub56 to i8*
  %36 = bitcast i8* %35 to %struct.Lisp_Cons*
  %u57 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %36, i32 0, i32 1
  %cdr58 = bitcast %union.anon* %u57 to i64*
  %37 = load i64, i64* %cdr58, align 8
  %call59 = call zeroext i1 @NATNUMP(i64 %37)
  br i1 %call59, label %land.lhs.true.61, label %if.else.79

land.lhs.true.61:                                 ; preds = %land.lhs.true.55
  %38 = load i64, i64* %rest, align 8
  %sub62 = sub nsw i64 %38, 3
  %39 = inttoptr i64 %sub62 to i8*
  %40 = bitcast i8* %39 to %struct.Lisp_Cons*
  %u63 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %40, i32 0, i32 1
  %cdr64 = bitcast %union.anon* %u63 to i64*
  %41 = load i64, i64* %cdr64, align 8
  %shr65 = ashr i64 %41, 2
  %cmp66 = icmp slt i64 %shr65, 65536
  br i1 %cmp66, label %if.then.68, label %if.else.79

if.then.68:                                       ; preds = %land.lhs.true.61
  %42 = load i64, i64* %rest, align 8
  %sub69 = sub nsw i64 %42, 3
  %43 = inttoptr i64 %sub69 to i8*
  %44 = bitcast i8* %43 to %struct.Lisp_Cons*
  %car70 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %44, i32 0, i32 0
  %45 = load i64, i64* %car70, align 8
  %shr71 = ashr i64 %45, 2
  store i64 %shr71, i64* %mid, align 8
  %46 = load i64, i64* %top, align 8
  %shl = shl i64 %46, 24
  %shl72 = shl i64 %shl, 16
  %47 = load i64, i64* %mid, align 8
  %shl73 = shl i64 %47, 16
  %or = or i64 %shl72, %shl73
  %48 = load i64, i64* %rest, align 8
  %sub74 = sub nsw i64 %48, 3
  %49 = inttoptr i64 %sub74 to i8*
  %50 = bitcast i8* %49 to %struct.Lisp_Cons*
  %u75 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %50, i32 0, i32 1
  %cdr76 = bitcast %union.anon* %u75 to i64*
  %51 = load i64, i64* %cdr76, align 8
  %shr77 = ashr i64 %51, 2
  %or78 = or i64 %or, %shr77
  store i64 %or78, i64* %val, align 8
  store i8 1, i8* %valid, align 1
  br label %if.end.106

if.else.79:                                       ; preds = %land.lhs.true.61, %land.lhs.true.55, %land.lhs.true.49, %land.lhs.true.44, %land.lhs.true.39, %land.lhs.true.36, %if.then.29
  %52 = load i64, i64* %top, align 8
  %cmp80 = icmp sle i64 -140737488355328, %52
  br i1 %cmp80, label %land.lhs.true.82, label %if.end.105

land.lhs.true.82:                                 ; preds = %if.else.79
  %53 = load i64, i64* %top, align 8
  %cmp83 = icmp sle i64 %53, 140737488355327
  br i1 %cmp83, label %if.then.85, label %if.end.105

if.then.85:                                       ; preds = %land.lhs.true.82
  %54 = load i64, i64* %rest, align 8
  %and86 = and i64 %54, 7
  %conv87 = trunc i64 %and86 to i32
  %cmp88 = icmp eq i32 %conv87, 3
  br i1 %cmp88, label %if.then.90, label %if.end.93

if.then.90:                                       ; preds = %if.then.85
  %55 = load i64, i64* %rest, align 8
  %sub91 = sub nsw i64 %55, 3
  %56 = inttoptr i64 %sub91 to i8*
  %57 = bitcast i8* %56 to %struct.Lisp_Cons*
  %car92 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %57, i32 0, i32 0
  %58 = load i64, i64* %car92, align 8
  store i64 %58, i64* %rest, align 8
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.90, %if.then.85
  %59 = load i64, i64* %rest, align 8
  %call94 = call zeroext i1 @NATNUMP(i64 %59)
  br i1 %call94, label %land.lhs.true.96, label %if.end.104

land.lhs.true.96:                                 ; preds = %if.end.93
  %60 = load i64, i64* %rest, align 8
  %shr97 = ashr i64 %60, 2
  %cmp98 = icmp slt i64 %shr97, 65536
  br i1 %cmp98, label %if.then.100, label %if.end.104

if.then.100:                                      ; preds = %land.lhs.true.96
  %61 = load i64, i64* %top, align 8
  %shl101 = shl i64 %61, 16
  %62 = load i64, i64* %rest, align 8
  %shr102 = ashr i64 %62, 2
  %or103 = or i64 %shl101, %shr102
  store i64 %or103, i64* %val, align 8
  store i8 1, i8* %valid, align 1
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.100, %land.lhs.true.96, %if.end.93
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %land.lhs.true.82, %if.else.79
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %if.then.68
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %land.lhs.true.23, %if.else.18
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.end
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.then
  %63 = load i8, i8* %valid, align 1
  %tobool = trunc i8 %63 to i1
  br i1 %tobool, label %land.lhs.true.111, label %if.then.117

land.lhs.true.111:                                ; preds = %if.end.109
  %64 = load i64, i64* %min.addr, align 8
  %65 = load i64, i64* %val, align 8
  %cmp112 = icmp sle i64 %64, %65
  br i1 %cmp112, label %land.lhs.true.114, label %if.then.117

land.lhs.true.114:                                ; preds = %land.lhs.true.111
  %66 = load i64, i64* %val, align 8
  %67 = load i64, i64* %max.addr, align 8
  %cmp115 = icmp sle i64 %66, %67
  br i1 %cmp115, label %if.end.118, label %if.then.117

if.then.117:                                      ; preds = %land.lhs.true.114, %land.lhs.true.111, %if.end.109
  call void (i8*, ...) @error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.11, i32 0, i32 0)) #7
  unreachable

if.end.118:                                       ; preds = %land.lhs.true.114
  %68 = load i64, i64* %val, align 8
  ret i64 %68
}

; Function Attrs: nounwind uwtable
define i64 @Fnumber_to_string(i64 %number) #4 {
entry:
  %number.addr = alloca i64, align 8
  %buffer = alloca [350 x i8], align 16
  %len = alloca i32, align 4
  store i64 %number, i64* %number.addr, align 8
  %0 = load i64, i64* %number.addr, align 8
  call void @CHECK_NUMBER_OR_FLOAT(i64 %0)
  %1 = load i64, i64* %number.addr, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [350 x i8], [350 x i8]* %buffer, i32 0, i32 0
  %2 = load i64, i64* %number.addr, align 8
  %call = call double @XFLOAT_DATA(i64 %2)
  %call2 = call i32 @float_to_string(i8* %arraydecay, double %call)
  store i32 %call2, i32* %len, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %arraydecay3 = getelementptr inbounds [350 x i8], [350 x i8]* %buffer, i32 0, i32 0
  %3 = load i64, i64* %number.addr, align 8
  %shr = ashr i64 %3, 2
  %call4 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i64 %shr) #5
  store i32 %call4, i32* %len, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arraydecay5 = getelementptr inbounds [350 x i8], [350 x i8]* %buffer, i32 0, i32 0
  %4 = load i32, i32* %len, align 4
  %conv6 = sext i32 %4 to i64
  %call7 = call i64 @make_unibyte_string(i8* %arraydecay5, i64 %conv6)
  ret i64 %call7
}

declare void @CHECK_NUMBER_OR_FLOAT(i64) #2

declare i32 @float_to_string(i8*, double) #2

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #6

declare i64 @make_unibyte_string(i8*, i64) #2

; Function Attrs: nounwind uwtable
define i64 @Fstring_to_number(i64 %string, i64 %base) #4 {
entry:
  %string.addr = alloca i64, align 8
  %base.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  %b = alloca i32, align 4
  %val = alloca i64, align 8
  store i64 %string, i64* %string.addr, align 8
  store i64 %base, i64* %base.addr, align 8
  %0 = load i64, i64* %string.addr, align 8
  call void @CHECK_STRING(i64 %0)
  %1 = load i64, i64* %base.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %1, %call
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 10, i32* %b, align 4
  br label %if.end.14

if.else:                                          ; preds = %entry
  %2 = load i64, i64* %base.addr, align 8
  %and = and i64 %2, 7
  %conv = trunc i64 %and to i32
  %and1 = and i32 %conv, -5
  %cmp2 = icmp eq i32 %and1, 2
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %call4 = call i64 @builtin_lisp_symbol(i32 559)
  %3 = load i64, i64* %base.addr, align 8
  %4 = call i64 @wrong_type_argument(i64 %call4, i64 %3) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %5, %cond.true
  %6 = load i64, i64* %base.addr, align 8
  %shr = ashr i64 %6, 2
  %cmp5 = icmp sle i64 2, %shr
  br i1 %cmp5, label %land.lhs.true, label %if.then.10

land.lhs.true:                                    ; preds = %cond.end
  %7 = load i64, i64* %base.addr, align 8
  %shr7 = ashr i64 %7, 2
  %cmp8 = icmp sle i64 %shr7, 16
  br i1 %cmp8, label %if.end, label %if.then.10

if.then.10:                                       ; preds = %land.lhs.true, %cond.end
  %call11 = call i64 @builtin_lisp_symbol(i32 177)
  %8 = load i64, i64* %base.addr, align 8
  call void @xsignal1(i64 %call11, i64 %8) #7
  unreachable

if.end:                                           ; preds = %land.lhs.true
  %9 = load i64, i64* %base.addr, align 8
  %shr12 = ashr i64 %9, 2
  %conv13 = trunc i64 %shr12 to i32
  store i32 %conv13, i32* %b, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then
  %10 = load i64, i64* %string.addr, align 8
  %call15 = call i8* @SSDATA(i64 %10)
  store i8* %call15, i8** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.14
  %11 = load i8*, i8** %p, align 8
  %12 = load i8, i8* %11, align 1
  %conv16 = sext i8 %12 to i32
  %cmp17 = icmp eq i32 %conv16, 32
  br i1 %cmp17, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %13 = load i8*, i8** %p, align 8
  %14 = load i8, i8* %13, align 1
  %conv19 = sext i8 %14 to i32
  %cmp20 = icmp eq i32 %conv19, 9
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %15 = phi i1 [ true, %while.cond ], [ %cmp20, %lor.rhs ]
  br i1 %15, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %16 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %17 = load i8*, i8** %p, align 8
  %18 = load i32, i32* %b, align 4
  %call22 = call i64 @string_to_number(i8* %17, i32 %18, i1 zeroext true)
  store i64 %call22, i64* %val, align 8
  %19 = load i64, i64* %val, align 8
  %call23 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp24 = icmp eq i64 %19, %call23
  br i1 %cmp24, label %cond.true.26, label %cond.false.27

cond.true.26:                                     ; preds = %while.end
  br label %cond.end.28

cond.false.27:                                    ; preds = %while.end
  %20 = load i64, i64* %val, align 8
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.27, %cond.true.26
  %cond = phi i64 [ 2, %cond.true.26 ], [ %20, %cond.false.27 ]
  ret i64 %cond
}

declare void @CHECK_STRING(i64) #2

declare i8* @SSDATA(i64) #2

declare i64 @string_to_number(i8*, i32, i1 zeroext) #2

; Function Attrs: nounwind uwtable
define i64 @Fplus(i64 %nargs, i64* %args) #4 {
entry:
  %nargs.addr = alloca i64, align 8
  %args.addr = alloca i64*, align 8
  store i64 %nargs, i64* %nargs.addr, align 8
  store i64* %args, i64** %args.addr, align 8
  %0 = load i64, i64* %nargs.addr, align 8
  %1 = load i64*, i64** %args.addr, align 8
  %call = call i64 @arith_driver(i32 0, i64 %0, i64* %1)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define internal i64 @arith_driver(i32 %code, i64 %nargs, i64* %args) #4 {
entry:
  %retval = alloca i64, align 8
  %code.addr = alloca i32, align 4
  %nargs.addr = alloca i64, align 8
  %args.addr = alloca i64*, align 8
  %val = alloca i64, align 8
  %argnum = alloca i64, align 8
  %ok_args = alloca i64, align 8
  %accum = alloca i64, align 8
  %next = alloca i64, align 8
  %ok_accum = alloca i64, align 8
  %overflow = alloca i8, align 1
  store i32 %code, i32* %code.addr, align 4
  store i64 %nargs, i64* %nargs.addr, align 8
  store i64* %args, i64** %args.addr, align 8
  store i64 0, i64* %accum, align 8
  store i8 0, i8* %overflow, align 1
  %0 = load i32, i32* %code.addr, align 4
  switch i32 %0, label %sw.default [
    i32 5, label %sw.bb
    i32 6, label %sw.bb
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb.1
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry
  store i64 0, i64* %accum, align 8
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry, %entry
  store i64 1, i64* %accum, align 8
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  store i64 -1, i64* %accum, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.2, %sw.bb.1, %sw.bb
  store i64 0, i64* %argnum, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %1 = load i64, i64* %argnum, align 8
  %2 = load i64, i64* %nargs.addr, align 8
  %cmp = icmp slt i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8, i8* %overflow, align 1
  %tobool = trunc i8 %3 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %4 = load i64, i64* %argnum, align 8
  store i64 %4, i64* %ok_args, align 8
  %5 = load i64, i64* %accum, align 8
  store i64 %5, i64* %ok_accum, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %6 = load i64, i64* %argnum, align 8
  %7 = load i64*, i64** %args.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %7, i64 %6
  %8 = load i64, i64* %arrayidx, align 8
  store i64 %8, i64* %val, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %9 = load i64, i64* %val, align 8
  %and = and i64 %9, 7
  %conv = trunc i64 %and to i32
  %cmp3 = icmp eq i32 %conv, 1
  br i1 %cmp3, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %10 = load i64, i64* %val, align 8
  %call = call i32 @XMISCTYPE(i64 %10)
  %cmp5 = icmp eq i32 %call, 24236
  br i1 %cmp5, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %land.lhs.true
  %11 = load i64, i64* %val, align 8
  %call8 = call i64 @marker_position(i64 %11)
  %call9 = call i64 @make_natnum(i64 %call8)
  store i64 %call9, i64* %val, align 8
  br label %if.end.13

if.else:                                          ; preds = %land.lhs.true, %do.body
  %12 = load i64, i64* %val, align 8
  %call10 = call zeroext i1 @NUMBERP(i64 %12)
  br i1 %call10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %call12 = call i64 @builtin_lisp_symbol(i32 710)
  %13 = load i64, i64* %val, align 8
  %14 = call i64 @wrong_type_argument(i64 %call12, i64 %13) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %15, %cond.true
  br label %if.end.13

if.end.13:                                        ; preds = %cond.end, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end.13
  %16 = load i64, i64* %val, align 8
  %and14 = and i64 %16, 7
  %conv15 = trunc i64 %and14 to i32
  %cmp16 = icmp eq i32 %conv15, 7
  br i1 %cmp16, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %do.end
  %17 = load i64, i64* %ok_accum, align 8
  %conv19 = sitofp i64 %17 to double
  %18 = load i64, i64* %ok_args, align 8
  %19 = load i32, i32* %code.addr, align 4
  %20 = load i64, i64* %nargs.addr, align 8
  %21 = load i64*, i64** %args.addr, align 8
  %call20 = call i64 @float_arith_driver(double %conv19, i64 %18, i32 %19, i64 %20, i64* %21)
  store i64 %call20, i64* %retval
  br label %return

if.end.21:                                        ; preds = %do.end
  %22 = load i64, i64* %val, align 8
  %23 = load i64, i64* %argnum, align 8
  %24 = load i64*, i64** %args.addr, align 8
  %arrayidx22 = getelementptr inbounds i64, i64* %24, i64 %23
  store i64 %22, i64* %arrayidx22, align 8
  %25 = load i64, i64* %argnum, align 8
  %26 = load i64*, i64** %args.addr, align 8
  %arrayidx23 = getelementptr inbounds i64, i64* %26, i64 %25
  %27 = load i64, i64* %arrayidx23, align 8
  %shr = ashr i64 %27, 2
  store i64 %shr, i64* %next, align 8
  %28 = load i32, i32* %code.addr, align 4
  switch i32 %28, label %sw.epilog.728 [
    i32 0, label %sw.bb.24
    i32 1, label %sw.bb.178
    i32 2, label %sw.bb.348
    i32 3, label %sw.bb.580
    i32 4, label %sw.bb.709
    i32 5, label %sw.bb.711
    i32 6, label %sw.bb.713
    i32 7, label %sw.bb.714
    i32 8, label %sw.bb.721
  ]

sw.bb.24:                                         ; preds = %if.end.21
  %29 = load i64, i64* %next, align 8
  %mul = mul nsw i64 0, %29
  %30 = load i64, i64* %accum, align 8
  %add = add nsw i64 %mul, %30
  %mul25 = mul nsw i64 0, %add
  %sub = sub nsw i64 %mul25, 1
  %cmp26 = icmp slt i64 %sub, 0
  br i1 %cmp26, label %cond.true.28, label %cond.false.45

cond.true.28:                                     ; preds = %sw.bb.24
  %31 = load i64, i64* %next, align 8
  %mul29 = mul nsw i64 0, %31
  %32 = load i64, i64* %accum, align 8
  %add30 = add nsw i64 %mul29, %32
  %mul31 = mul nsw i64 0, %add30
  %add32 = add nsw i64 %mul31, 0
  %neg = xor i64 %add32, -1
  %cmp33 = icmp eq i64 %neg, -1
  %conv34 = zext i1 %cmp33 to i32
  %sub35 = sub nsw i32 0, %conv34
  %conv36 = sext i32 %sub35 to i64
  %33 = load i64, i64* %next, align 8
  %mul37 = mul nsw i64 0, %33
  %34 = load i64, i64* %accum, align 8
  %add38 = add nsw i64 %mul37, %34
  %mul39 = mul nsw i64 0, %add38
  %add40 = add nsw i64 %mul39, 1
  %shl = shl i64 %add40, 62
  %sub41 = sub nsw i64 %shl, 1
  %mul42 = mul nsw i64 %sub41, 2
  %add43 = add nsw i64 %mul42, 1
  %sub44 = sub nsw i64 %conv36, %add43
  br label %cond.end.50

cond.false.45:                                    ; preds = %sw.bb.24
  %35 = load i64, i64* %next, align 8
  %mul46 = mul nsw i64 0, %35
  %36 = load i64, i64* %accum, align 8
  %add47 = add nsw i64 %mul46, %36
  %mul48 = mul nsw i64 0, %add47
  %add49 = add nsw i64 %mul48, 0
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.45, %cond.true.28
  %cond = phi i64 [ %sub44, %cond.true.28 ], [ %add49, %cond.false.45 ]
  %cmp51 = icmp slt i64 %cond, 0
  br i1 %cmp51, label %cond.true.53, label %cond.false.118

cond.true.53:                                     ; preds = %cond.end.50
  %37 = load i64, i64* %next, align 8
  %cmp54 = icmp slt i64 %37, 0
  br i1 %cmp54, label %cond.true.56, label %cond.false.92

cond.true.56:                                     ; preds = %cond.true.53
  %38 = load i64, i64* %accum, align 8
  %39 = load i64, i64* %next, align 8
  %mul57 = mul nsw i64 0, %39
  %40 = load i64, i64* %accum, align 8
  %add58 = add nsw i64 %mul57, %40
  %mul59 = mul nsw i64 0, %add58
  %sub60 = sub nsw i64 %mul59, 1
  %cmp61 = icmp slt i64 %sub60, 0
  br i1 %cmp61, label %cond.true.63, label %cond.false.82

cond.true.63:                                     ; preds = %cond.true.56
  %41 = load i64, i64* %next, align 8
  %mul64 = mul nsw i64 0, %41
  %42 = load i64, i64* %accum, align 8
  %add65 = add nsw i64 %mul64, %42
  %mul66 = mul nsw i64 0, %add65
  %add67 = add nsw i64 %mul66, 0
  %neg68 = xor i64 %add67, -1
  %cmp69 = icmp eq i64 %neg68, -1
  %conv70 = zext i1 %cmp69 to i32
  %sub71 = sub nsw i32 0, %conv70
  %conv72 = sext i32 %sub71 to i64
  %43 = load i64, i64* %next, align 8
  %mul73 = mul nsw i64 0, %43
  %44 = load i64, i64* %accum, align 8
  %add74 = add nsw i64 %mul73, %44
  %mul75 = mul nsw i64 0, %add74
  %add76 = add nsw i64 %mul75, 1
  %shl77 = shl i64 %add76, 62
  %sub78 = sub nsw i64 %shl77, 1
  %mul79 = mul nsw i64 %sub78, 2
  %add80 = add nsw i64 %mul79, 1
  %sub81 = sub nsw i64 %conv72, %add80
  br label %cond.end.87

cond.false.82:                                    ; preds = %cond.true.56
  %45 = load i64, i64* %next, align 8
  %mul83 = mul nsw i64 0, %45
  %46 = load i64, i64* %accum, align 8
  %add84 = add nsw i64 %mul83, %46
  %mul85 = mul nsw i64 0, %add84
  %add86 = add nsw i64 %mul85, 0
  br label %cond.end.87

cond.end.87:                                      ; preds = %cond.false.82, %cond.true.63
  %cond88 = phi i64 [ %sub81, %cond.true.63 ], [ %add86, %cond.false.82 ]
  %47 = load i64, i64* %next, align 8
  %sub89 = sub nsw i64 %cond88, %47
  %cmp90 = icmp slt i64 %38, %sub89
  br i1 %cmp90, label %cond.true.149, label %lor.lhs.false

cond.false.92:                                    ; preds = %cond.true.53
  %48 = load i64, i64* %next, align 8
  %mul93 = mul nsw i64 0, %48
  %49 = load i64, i64* %accum, align 8
  %add94 = add nsw i64 %mul93, %49
  %mul95 = mul nsw i64 0, %add94
  %sub96 = sub nsw i64 %mul95, 1
  %cmp97 = icmp slt i64 %sub96, 0
  br i1 %cmp97, label %cond.true.99, label %cond.false.108

cond.true.99:                                     ; preds = %cond.false.92
  %50 = load i64, i64* %next, align 8
  %mul100 = mul nsw i64 0, %50
  %51 = load i64, i64* %accum, align 8
  %add101 = add nsw i64 %mul100, %51
  %mul102 = mul nsw i64 0, %add101
  %add103 = add nsw i64 %mul102, 1
  %shl104 = shl i64 %add103, 62
  %sub105 = sub nsw i64 %shl104, 1
  %mul106 = mul nsw i64 %sub105, 2
  %add107 = add nsw i64 %mul106, 1
  br label %cond.end.113

cond.false.108:                                   ; preds = %cond.false.92
  %52 = load i64, i64* %next, align 8
  %mul109 = mul nsw i64 0, %52
  %53 = load i64, i64* %accum, align 8
  %add110 = add nsw i64 %mul109, %53
  %mul111 = mul nsw i64 0, %add110
  %sub112 = sub nsw i64 %mul111, 1
  br label %cond.end.113

cond.end.113:                                     ; preds = %cond.false.108, %cond.true.99
  %cond114 = phi i64 [ %add107, %cond.true.99 ], [ %sub112, %cond.false.108 ]
  %54 = load i64, i64* %next, align 8
  %sub115 = sub nsw i64 %cond114, %54
  %55 = load i64, i64* %accum, align 8
  %cmp116 = icmp slt i64 %sub115, %55
  br i1 %cmp116, label %cond.true.149, label %lor.lhs.false

cond.false.118:                                   ; preds = %cond.end.50
  %56 = load i64, i64* %accum, align 8
  %cmp119 = icmp slt i64 %56, 0
  br i1 %cmp119, label %cond.true.121, label %cond.false.125

cond.true.121:                                    ; preds = %cond.false.118
  %57 = load i64, i64* %next, align 8
  %58 = load i64, i64* %accum, align 8
  %59 = load i64, i64* %next, align 8
  %add122 = add nsw i64 %58, %59
  %cmp123 = icmp sle i64 %57, %add122
  br i1 %cmp123, label %cond.true.149, label %lor.lhs.false

cond.false.125:                                   ; preds = %cond.false.118
  %60 = load i64, i64* %next, align 8
  %cmp126 = icmp slt i64 %60, 0
  br i1 %cmp126, label %cond.true.128, label %cond.false.132

cond.true.128:                                    ; preds = %cond.false.125
  %61 = load i64, i64* %accum, align 8
  %62 = load i64, i64* %accum, align 8
  %63 = load i64, i64* %next, align 8
  %add129 = add nsw i64 %62, %63
  %cmp130 = icmp sle i64 %61, %add129
  br i1 %cmp130, label %cond.true.149, label %lor.lhs.false

cond.false.132:                                   ; preds = %cond.false.125
  %64 = load i64, i64* %accum, align 8
  %65 = load i64, i64* %next, align 8
  %add133 = add nsw i64 %64, %65
  %66 = load i64, i64* %next, align 8
  %cmp134 = icmp slt i64 %add133, %66
  br i1 %cmp134, label %cond.true.149, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.false.132, %cond.true.128, %cond.true.121, %cond.end.113, %cond.end.87
  %67 = load i64, i64* %accum, align 8
  %68 = load i64, i64* %next, align 8
  %add136 = add nsw i64 %67, %68
  %mul137 = mul nsw i64 0, %add136
  %sub138 = sub nsw i64 %mul137, 1
  %cmp139 = icmp slt i64 %sub138, 0
  br i1 %cmp139, label %land.lhs.true.141, label %lor.lhs.false.145

land.lhs.true.141:                                ; preds = %lor.lhs.false
  %69 = load i64, i64* %accum, align 8
  %70 = load i64, i64* %next, align 8
  %add142 = add nsw i64 %69, %70
  %cmp143 = icmp slt i64 %add142, -9223372036854775808
  br i1 %cmp143, label %cond.true.149, label %lor.lhs.false.145

lor.lhs.false.145:                                ; preds = %land.lhs.true.141, %lor.lhs.false
  %71 = load i64, i64* %accum, align 8
  %72 = load i64, i64* %next, align 8
  %add146 = add nsw i64 %71, %72
  %cmp147 = icmp slt i64 9223372036854775807, %add146
  br i1 %cmp147, label %cond.true.149, label %cond.false.161

cond.true.149:                                    ; preds = %lor.lhs.false.145, %land.lhs.true.141, %cond.false.132, %cond.true.128, %cond.true.121, %cond.end.113, %cond.end.87
  %73 = load i64, i64* %accum, align 8
  %74 = load i64, i64* %next, align 8
  %add150 = add i64 %73, %74
  %cmp151 = icmp ule i64 %add150, 9223372036854775807
  br i1 %cmp151, label %cond.true.153, label %cond.false.155

cond.true.153:                                    ; preds = %cond.true.149
  %75 = load i64, i64* %accum, align 8
  %76 = load i64, i64* %next, align 8
  %add154 = add i64 %75, %76
  br label %cond.end.159

cond.false.155:                                   ; preds = %cond.true.149
  %77 = load i64, i64* %accum, align 8
  %78 = load i64, i64* %next, align 8
  %add156 = add i64 %77, %78
  %sub157 = sub i64 %add156, -9223372036854775808
  %add158 = add nsw i64 %sub157, -9223372036854775808
  br label %cond.end.159

cond.end.159:                                     ; preds = %cond.false.155, %cond.true.153
  %cond160 = phi i64 [ %add154, %cond.true.153 ], [ %add158, %cond.false.155 ]
  store i64 %cond160, i64* %accum, align 8
  br label %cond.end.173

cond.false.161:                                   ; preds = %lor.lhs.false.145
  %79 = load i64, i64* %accum, align 8
  %80 = load i64, i64* %next, align 8
  %add162 = add i64 %79, %80
  %cmp163 = icmp ule i64 %add162, 9223372036854775807
  br i1 %cmp163, label %cond.true.165, label %cond.false.167

cond.true.165:                                    ; preds = %cond.false.161
  %81 = load i64, i64* %accum, align 8
  %82 = load i64, i64* %next, align 8
  %add166 = add i64 %81, %82
  br label %cond.end.171

cond.false.167:                                   ; preds = %cond.false.161
  %83 = load i64, i64* %accum, align 8
  %84 = load i64, i64* %next, align 8
  %add168 = add i64 %83, %84
  %sub169 = sub i64 %add168, -9223372036854775808
  %add170 = add nsw i64 %sub169, -9223372036854775808
  br label %cond.end.171

cond.end.171:                                     ; preds = %cond.false.167, %cond.true.165
  %cond172 = phi i64 [ %add166, %cond.true.165 ], [ %add170, %cond.false.167 ]
  store i64 %cond172, i64* %accum, align 8
  br label %cond.end.173

cond.end.173:                                     ; preds = %cond.end.171, %cond.end.159
  %cond174 = phi i32 [ 1, %cond.end.159 ], [ 0, %cond.end.171 ]
  %85 = load i8, i8* %overflow, align 1
  %tobool175 = trunc i8 %85 to i1
  %conv176 = zext i1 %tobool175 to i32
  %or = or i32 %conv176, %cond174
  %tobool177 = icmp ne i32 %or, 0
  %frombool = zext i1 %tobool177 to i8
  store i8 %frombool, i8* %overflow, align 1
  br label %sw.epilog.728

sw.bb.178:                                        ; preds = %if.end.21
  %86 = load i64, i64* %argnum, align 8
  %tobool179 = icmp ne i64 %86, 0
  br i1 %tobool179, label %if.else.188, label %if.then.180

if.then.180:                                      ; preds = %sw.bb.178
  %87 = load i64, i64* %nargs.addr, align 8
  %cmp181 = icmp eq i64 %87, 1
  br i1 %cmp181, label %cond.true.183, label %cond.false.185

cond.true.183:                                    ; preds = %if.then.180
  %88 = load i64, i64* %next, align 8
  %sub184 = sub nsw i64 0, %88
  br label %cond.end.186

cond.false.185:                                   ; preds = %if.then.180
  %89 = load i64, i64* %next, align 8
  br label %cond.end.186

cond.end.186:                                     ; preds = %cond.false.185, %cond.true.183
  %cond187 = phi i64 [ %sub184, %cond.true.183 ], [ %89, %cond.false.185 ]
  store i64 %cond187, i64* %accum, align 8
  br label %if.end.347

if.else.188:                                      ; preds = %sw.bb.178
  %90 = load i64, i64* %next, align 8
  %mul189 = mul nsw i64 0, %90
  %91 = load i64, i64* %accum, align 8
  %add190 = add nsw i64 %mul189, %91
  %mul191 = mul nsw i64 0, %add190
  %sub192 = sub nsw i64 %mul191, 1
  %cmp193 = icmp slt i64 %sub192, 0
  br i1 %cmp193, label %cond.true.195, label %cond.false.214

cond.true.195:                                    ; preds = %if.else.188
  %92 = load i64, i64* %next, align 8
  %mul196 = mul nsw i64 0, %92
  %93 = load i64, i64* %accum, align 8
  %add197 = add nsw i64 %mul196, %93
  %mul198 = mul nsw i64 0, %add197
  %add199 = add nsw i64 %mul198, 0
  %neg200 = xor i64 %add199, -1
  %cmp201 = icmp eq i64 %neg200, -1
  %conv202 = zext i1 %cmp201 to i32
  %sub203 = sub nsw i32 0, %conv202
  %conv204 = sext i32 %sub203 to i64
  %94 = load i64, i64* %next, align 8
  %mul205 = mul nsw i64 0, %94
  %95 = load i64, i64* %accum, align 8
  %add206 = add nsw i64 %mul205, %95
  %mul207 = mul nsw i64 0, %add206
  %add208 = add nsw i64 %mul207, 1
  %shl209 = shl i64 %add208, 62
  %sub210 = sub nsw i64 %shl209, 1
  %mul211 = mul nsw i64 %sub210, 2
  %add212 = add nsw i64 %mul211, 1
  %sub213 = sub nsw i64 %conv204, %add212
  br label %cond.end.219

cond.false.214:                                   ; preds = %if.else.188
  %96 = load i64, i64* %next, align 8
  %mul215 = mul nsw i64 0, %96
  %97 = load i64, i64* %accum, align 8
  %add216 = add nsw i64 %mul215, %97
  %mul217 = mul nsw i64 0, %add216
  %add218 = add nsw i64 %mul217, 0
  br label %cond.end.219

cond.end.219:                                     ; preds = %cond.false.214, %cond.true.195
  %cond220 = phi i64 [ %sub213, %cond.true.195 ], [ %add218, %cond.false.214 ]
  %cmp221 = icmp slt i64 %cond220, 0
  br i1 %cmp221, label %cond.true.223, label %cond.false.288

cond.true.223:                                    ; preds = %cond.end.219
  %98 = load i64, i64* %next, align 8
  %cmp224 = icmp slt i64 %98, 0
  br i1 %cmp224, label %cond.true.226, label %cond.false.252

cond.true.226:                                    ; preds = %cond.true.223
  %99 = load i64, i64* %next, align 8
  %mul227 = mul nsw i64 0, %99
  %100 = load i64, i64* %accum, align 8
  %add228 = add nsw i64 %mul227, %100
  %mul229 = mul nsw i64 0, %add228
  %sub230 = sub nsw i64 %mul229, 1
  %cmp231 = icmp slt i64 %sub230, 0
  br i1 %cmp231, label %cond.true.233, label %cond.false.242

cond.true.233:                                    ; preds = %cond.true.226
  %101 = load i64, i64* %next, align 8
  %mul234 = mul nsw i64 0, %101
  %102 = load i64, i64* %accum, align 8
  %add235 = add nsw i64 %mul234, %102
  %mul236 = mul nsw i64 0, %add235
  %add237 = add nsw i64 %mul236, 1
  %shl238 = shl i64 %add237, 62
  %sub239 = sub nsw i64 %shl238, 1
  %mul240 = mul nsw i64 %sub239, 2
  %add241 = add nsw i64 %mul240, 1
  br label %cond.end.247

cond.false.242:                                   ; preds = %cond.true.226
  %103 = load i64, i64* %next, align 8
  %mul243 = mul nsw i64 0, %103
  %104 = load i64, i64* %accum, align 8
  %add244 = add nsw i64 %mul243, %104
  %mul245 = mul nsw i64 0, %add244
  %sub246 = sub nsw i64 %mul245, 1
  br label %cond.end.247

cond.end.247:                                     ; preds = %cond.false.242, %cond.true.233
  %cond248 = phi i64 [ %add241, %cond.true.233 ], [ %sub246, %cond.false.242 ]
  %105 = load i64, i64* %next, align 8
  %add249 = add nsw i64 %cond248, %105
  %106 = load i64, i64* %accum, align 8
  %cmp250 = icmp slt i64 %add249, %106
  br i1 %cmp250, label %cond.true.316, label %lor.lhs.false.302

cond.false.252:                                   ; preds = %cond.true.223
  %107 = load i64, i64* %accum, align 8
  %108 = load i64, i64* %next, align 8
  %mul253 = mul nsw i64 0, %108
  %109 = load i64, i64* %accum, align 8
  %add254 = add nsw i64 %mul253, %109
  %mul255 = mul nsw i64 0, %add254
  %sub256 = sub nsw i64 %mul255, 1
  %cmp257 = icmp slt i64 %sub256, 0
  br i1 %cmp257, label %cond.true.259, label %cond.false.278

cond.true.259:                                    ; preds = %cond.false.252
  %110 = load i64, i64* %next, align 8
  %mul260 = mul nsw i64 0, %110
  %111 = load i64, i64* %accum, align 8
  %add261 = add nsw i64 %mul260, %111
  %mul262 = mul nsw i64 0, %add261
  %add263 = add nsw i64 %mul262, 0
  %neg264 = xor i64 %add263, -1
  %cmp265 = icmp eq i64 %neg264, -1
  %conv266 = zext i1 %cmp265 to i32
  %sub267 = sub nsw i32 0, %conv266
  %conv268 = sext i32 %sub267 to i64
  %112 = load i64, i64* %next, align 8
  %mul269 = mul nsw i64 0, %112
  %113 = load i64, i64* %accum, align 8
  %add270 = add nsw i64 %mul269, %113
  %mul271 = mul nsw i64 0, %add270
  %add272 = add nsw i64 %mul271, 1
  %shl273 = shl i64 %add272, 62
  %sub274 = sub nsw i64 %shl273, 1
  %mul275 = mul nsw i64 %sub274, 2
  %add276 = add nsw i64 %mul275, 1
  %sub277 = sub nsw i64 %conv268, %add276
  br label %cond.end.283

cond.false.278:                                   ; preds = %cond.false.252
  %114 = load i64, i64* %next, align 8
  %mul279 = mul nsw i64 0, %114
  %115 = load i64, i64* %accum, align 8
  %add280 = add nsw i64 %mul279, %115
  %mul281 = mul nsw i64 0, %add280
  %add282 = add nsw i64 %mul281, 0
  br label %cond.end.283

cond.end.283:                                     ; preds = %cond.false.278, %cond.true.259
  %cond284 = phi i64 [ %sub277, %cond.true.259 ], [ %add282, %cond.false.278 ]
  %116 = load i64, i64* %next, align 8
  %add285 = add nsw i64 %cond284, %116
  %cmp286 = icmp slt i64 %107, %add285
  br i1 %cmp286, label %cond.true.316, label %lor.lhs.false.302

cond.false.288:                                   ; preds = %cond.end.219
  %117 = load i64, i64* %accum, align 8
  %cmp289 = icmp slt i64 %117, 0
  br i1 %cmp289, label %cond.true.291, label %cond.false.292

cond.true.291:                                    ; preds = %cond.false.288
  br i1 true, label %cond.true.316, label %lor.lhs.false.302

cond.false.292:                                   ; preds = %cond.false.288
  %118 = load i64, i64* %next, align 8
  %cmp293 = icmp slt i64 %118, 0
  br i1 %cmp293, label %cond.true.295, label %cond.false.299

cond.true.295:                                    ; preds = %cond.false.292
  %119 = load i64, i64* %accum, align 8
  %120 = load i64, i64* %next, align 8
  %sub296 = sub nsw i64 %119, %120
  %121 = load i64, i64* %accum, align 8
  %cmp297 = icmp sle i64 %sub296, %121
  br i1 %cmp297, label %cond.true.316, label %lor.lhs.false.302

cond.false.299:                                   ; preds = %cond.false.292
  %122 = load i64, i64* %accum, align 8
  %123 = load i64, i64* %next, align 8
  %cmp300 = icmp slt i64 %122, %123
  br i1 %cmp300, label %cond.true.316, label %lor.lhs.false.302

lor.lhs.false.302:                                ; preds = %cond.false.299, %cond.true.295, %cond.true.291, %cond.end.283, %cond.end.247
  %124 = load i64, i64* %accum, align 8
  %125 = load i64, i64* %next, align 8
  %sub303 = sub nsw i64 %124, %125
  %mul304 = mul nsw i64 0, %sub303
  %sub305 = sub nsw i64 %mul304, 1
  %cmp306 = icmp slt i64 %sub305, 0
  br i1 %cmp306, label %land.lhs.true.308, label %lor.lhs.false.312

land.lhs.true.308:                                ; preds = %lor.lhs.false.302
  %126 = load i64, i64* %accum, align 8
  %127 = load i64, i64* %next, align 8
  %sub309 = sub nsw i64 %126, %127
  %cmp310 = icmp slt i64 %sub309, -9223372036854775808
  br i1 %cmp310, label %cond.true.316, label %lor.lhs.false.312

lor.lhs.false.312:                                ; preds = %land.lhs.true.308, %lor.lhs.false.302
  %128 = load i64, i64* %accum, align 8
  %129 = load i64, i64* %next, align 8
  %sub313 = sub nsw i64 %128, %129
  %cmp314 = icmp slt i64 9223372036854775807, %sub313
  br i1 %cmp314, label %cond.true.316, label %cond.false.328

cond.true.316:                                    ; preds = %lor.lhs.false.312, %land.lhs.true.308, %cond.false.299, %cond.true.295, %cond.true.291, %cond.end.283, %cond.end.247
  %130 = load i64, i64* %accum, align 8
  %131 = load i64, i64* %next, align 8
  %sub317 = sub i64 %130, %131
  %cmp318 = icmp ule i64 %sub317, 9223372036854775807
  br i1 %cmp318, label %cond.true.320, label %cond.false.322

cond.true.320:                                    ; preds = %cond.true.316
  %132 = load i64, i64* %accum, align 8
  %133 = load i64, i64* %next, align 8
  %sub321 = sub i64 %132, %133
  br label %cond.end.326

cond.false.322:                                   ; preds = %cond.true.316
  %134 = load i64, i64* %accum, align 8
  %135 = load i64, i64* %next, align 8
  %sub323 = sub i64 %134, %135
  %sub324 = sub i64 %sub323, -9223372036854775808
  %add325 = add nsw i64 %sub324, -9223372036854775808
  br label %cond.end.326

cond.end.326:                                     ; preds = %cond.false.322, %cond.true.320
  %cond327 = phi i64 [ %sub321, %cond.true.320 ], [ %add325, %cond.false.322 ]
  store i64 %cond327, i64* %accum, align 8
  br label %cond.end.340

cond.false.328:                                   ; preds = %lor.lhs.false.312
  %136 = load i64, i64* %accum, align 8
  %137 = load i64, i64* %next, align 8
  %sub329 = sub i64 %136, %137
  %cmp330 = icmp ule i64 %sub329, 9223372036854775807
  br i1 %cmp330, label %cond.true.332, label %cond.false.334

cond.true.332:                                    ; preds = %cond.false.328
  %138 = load i64, i64* %accum, align 8
  %139 = load i64, i64* %next, align 8
  %sub333 = sub i64 %138, %139
  br label %cond.end.338

cond.false.334:                                   ; preds = %cond.false.328
  %140 = load i64, i64* %accum, align 8
  %141 = load i64, i64* %next, align 8
  %sub335 = sub i64 %140, %141
  %sub336 = sub i64 %sub335, -9223372036854775808
  %add337 = add nsw i64 %sub336, -9223372036854775808
  br label %cond.end.338

cond.end.338:                                     ; preds = %cond.false.334, %cond.true.332
  %cond339 = phi i64 [ %sub333, %cond.true.332 ], [ %add337, %cond.false.334 ]
  store i64 %cond339, i64* %accum, align 8
  br label %cond.end.340

cond.end.340:                                     ; preds = %cond.end.338, %cond.end.326
  %cond341 = phi i32 [ 1, %cond.end.326 ], [ 0, %cond.end.338 ]
  %142 = load i8, i8* %overflow, align 1
  %tobool342 = trunc i8 %142 to i1
  %conv343 = zext i1 %tobool342 to i32
  %or344 = or i32 %conv343, %cond341
  %tobool345 = icmp ne i32 %or344, 0
  %frombool346 = zext i1 %tobool345 to i8
  store i8 %frombool346, i8* %overflow, align 1
  br label %if.end.347

if.end.347:                                       ; preds = %cond.end.340, %cond.end.186
  br label %sw.epilog.728

sw.bb.348:                                        ; preds = %if.end.21
  %143 = load i64, i64* %next, align 8
  %mul349 = mul nsw i64 0, %143
  %144 = load i64, i64* %accum, align 8
  %add350 = add nsw i64 %mul349, %144
  %mul351 = mul nsw i64 0, %add350
  %sub352 = sub nsw i64 %mul351, 1
  %cmp353 = icmp slt i64 %sub352, 0
  br i1 %cmp353, label %cond.true.355, label %cond.false.374

cond.true.355:                                    ; preds = %sw.bb.348
  %145 = load i64, i64* %next, align 8
  %mul356 = mul nsw i64 0, %145
  %146 = load i64, i64* %accum, align 8
  %add357 = add nsw i64 %mul356, %146
  %mul358 = mul nsw i64 0, %add357
  %add359 = add nsw i64 %mul358, 0
  %neg360 = xor i64 %add359, -1
  %cmp361 = icmp eq i64 %neg360, -1
  %conv362 = zext i1 %cmp361 to i32
  %sub363 = sub nsw i32 0, %conv362
  %conv364 = sext i32 %sub363 to i64
  %147 = load i64, i64* %next, align 8
  %mul365 = mul nsw i64 0, %147
  %148 = load i64, i64* %accum, align 8
  %add366 = add nsw i64 %mul365, %148
  %mul367 = mul nsw i64 0, %add366
  %add368 = add nsw i64 %mul367, 1
  %shl369 = shl i64 %add368, 62
  %sub370 = sub nsw i64 %shl369, 1
  %mul371 = mul nsw i64 %sub370, 2
  %add372 = add nsw i64 %mul371, 1
  %sub373 = sub nsw i64 %conv364, %add372
  br label %cond.end.379

cond.false.374:                                   ; preds = %sw.bb.348
  %149 = load i64, i64* %next, align 8
  %mul375 = mul nsw i64 0, %149
  %150 = load i64, i64* %accum, align 8
  %add376 = add nsw i64 %mul375, %150
  %mul377 = mul nsw i64 0, %add376
  %add378 = add nsw i64 %mul377, 0
  br label %cond.end.379

cond.end.379:                                     ; preds = %cond.false.374, %cond.true.355
  %cond380 = phi i64 [ %sub373, %cond.true.355 ], [ %add378, %cond.false.374 ]
  %cmp381 = icmp eq i64 %cond380, 0
  br i1 %cmp381, label %land.lhs.true.383, label %lor.lhs.false.395

land.lhs.true.383:                                ; preds = %cond.end.379
  %151 = load i64, i64* %accum, align 8
  %cmp384 = icmp slt i64 %151, 0
  br i1 %cmp384, label %land.lhs.true.386, label %lor.lhs.false.389

land.lhs.true.386:                                ; preds = %land.lhs.true.383
  %152 = load i64, i64* %next, align 8
  %cmp387 = icmp slt i64 0, %152
  br i1 %cmp387, label %cond.true.549, label %lor.lhs.false.389

lor.lhs.false.389:                                ; preds = %land.lhs.true.386, %land.lhs.true.383
  %153 = load i64, i64* %next, align 8
  %cmp390 = icmp slt i64 %153, 0
  br i1 %cmp390, label %land.lhs.true.392, label %lor.lhs.false.395

land.lhs.true.392:                                ; preds = %lor.lhs.false.389
  %154 = load i64, i64* %accum, align 8
  %cmp393 = icmp slt i64 0, %154
  br i1 %cmp393, label %cond.true.549, label %lor.lhs.false.395

lor.lhs.false.395:                                ; preds = %land.lhs.true.392, %lor.lhs.false.389, %cond.end.379
  %155 = load i64, i64* %next, align 8
  %cmp396 = icmp slt i64 %155, 0
  br i1 %cmp396, label %cond.true.398, label %cond.false.466

cond.true.398:                                    ; preds = %lor.lhs.false.395
  %156 = load i64, i64* %accum, align 8
  %cmp399 = icmp slt i64 %156, 0
  br i1 %cmp399, label %cond.true.401, label %cond.false.426

cond.true.401:                                    ; preds = %cond.true.398
  %157 = load i64, i64* %accum, align 8
  %158 = load i64, i64* %next, align 8
  %mul402 = mul nsw i64 0, %158
  %159 = load i64, i64* %accum, align 8
  %add403 = add nsw i64 %mul402, %159
  %mul404 = mul nsw i64 0, %add403
  %sub405 = sub nsw i64 %mul404, 1
  %cmp406 = icmp slt i64 %sub405, 0
  br i1 %cmp406, label %cond.true.408, label %cond.false.417

cond.true.408:                                    ; preds = %cond.true.401
  %160 = load i64, i64* %next, align 8
  %mul409 = mul nsw i64 0, %160
  %161 = load i64, i64* %accum, align 8
  %add410 = add nsw i64 %mul409, %161
  %mul411 = mul nsw i64 0, %add410
  %add412 = add nsw i64 %mul411, 1
  %shl413 = shl i64 %add412, 62
  %sub414 = sub nsw i64 %shl413, 1
  %mul415 = mul nsw i64 %sub414, 2
  %add416 = add nsw i64 %mul415, 1
  br label %cond.end.422

cond.false.417:                                   ; preds = %cond.true.401
  %162 = load i64, i64* %next, align 8
  %mul418 = mul nsw i64 0, %162
  %163 = load i64, i64* %accum, align 8
  %add419 = add nsw i64 %mul418, %163
  %mul420 = mul nsw i64 0, %add419
  %sub421 = sub nsw i64 %mul420, 1
  br label %cond.end.422

cond.end.422:                                     ; preds = %cond.false.417, %cond.true.408
  %cond423 = phi i64 [ %add416, %cond.true.408 ], [ %sub421, %cond.false.417 ]
  %164 = load i64, i64* %next, align 8
  %div = sdiv i64 %cond423, %164
  %cmp424 = icmp slt i64 %157, %div
  br i1 %cmp424, label %cond.true.549, label %lor.lhs.false.535

cond.false.426:                                   ; preds = %cond.true.398
  %165 = load i64, i64* %next, align 8
  %cmp427 = icmp eq i64 %165, -1
  br i1 %cmp427, label %cond.true.429, label %cond.false.430

cond.true.429:                                    ; preds = %cond.false.426
  br i1 false, label %cond.true.549, label %lor.lhs.false.535

cond.false.430:                                   ; preds = %cond.false.426
  %166 = load i64, i64* %next, align 8
  %mul431 = mul nsw i64 0, %166
  %167 = load i64, i64* %accum, align 8
  %add432 = add nsw i64 %mul431, %167
  %mul433 = mul nsw i64 0, %add432
  %sub434 = sub nsw i64 %mul433, 1
  %cmp435 = icmp slt i64 %sub434, 0
  br i1 %cmp435, label %cond.true.437, label %cond.false.456

cond.true.437:                                    ; preds = %cond.false.430
  %168 = load i64, i64* %next, align 8
  %mul438 = mul nsw i64 0, %168
  %169 = load i64, i64* %accum, align 8
  %add439 = add nsw i64 %mul438, %169
  %mul440 = mul nsw i64 0, %add439
  %add441 = add nsw i64 %mul440, 0
  %neg442 = xor i64 %add441, -1
  %cmp443 = icmp eq i64 %neg442, -1
  %conv444 = zext i1 %cmp443 to i32
  %sub445 = sub nsw i32 0, %conv444
  %conv446 = sext i32 %sub445 to i64
  %170 = load i64, i64* %next, align 8
  %mul447 = mul nsw i64 0, %170
  %171 = load i64, i64* %accum, align 8
  %add448 = add nsw i64 %mul447, %171
  %mul449 = mul nsw i64 0, %add448
  %add450 = add nsw i64 %mul449, 1
  %shl451 = shl i64 %add450, 62
  %sub452 = sub nsw i64 %shl451, 1
  %mul453 = mul nsw i64 %sub452, 2
  %add454 = add nsw i64 %mul453, 1
  %sub455 = sub nsw i64 %conv446, %add454
  br label %cond.end.461

cond.false.456:                                   ; preds = %cond.false.430
  %172 = load i64, i64* %next, align 8
  %mul457 = mul nsw i64 0, %172
  %173 = load i64, i64* %accum, align 8
  %add458 = add nsw i64 %mul457, %173
  %mul459 = mul nsw i64 0, %add458
  %add460 = add nsw i64 %mul459, 0
  br label %cond.end.461

cond.end.461:                                     ; preds = %cond.false.456, %cond.true.437
  %cond462 = phi i64 [ %sub455, %cond.true.437 ], [ %add460, %cond.false.456 ]
  %174 = load i64, i64* %next, align 8
  %div463 = sdiv i64 %cond462, %174
  %175 = load i64, i64* %accum, align 8
  %cmp464 = icmp slt i64 %div463, %175
  br i1 %cmp464, label %cond.true.549, label %lor.lhs.false.535

cond.false.466:                                   ; preds = %lor.lhs.false.395
  %176 = load i64, i64* %next, align 8
  %cmp467 = icmp eq i64 %176, 0
  br i1 %cmp467, label %cond.true.469, label %cond.false.470

cond.true.469:                                    ; preds = %cond.false.466
  br i1 false, label %cond.true.549, label %lor.lhs.false.535

cond.false.470:                                   ; preds = %cond.false.466
  %177 = load i64, i64* %accum, align 8
  %cmp471 = icmp slt i64 %177, 0
  br i1 %cmp471, label %cond.true.473, label %cond.false.509

cond.true.473:                                    ; preds = %cond.false.470
  %178 = load i64, i64* %accum, align 8
  %179 = load i64, i64* %next, align 8
  %mul474 = mul nsw i64 0, %179
  %180 = load i64, i64* %accum, align 8
  %add475 = add nsw i64 %mul474, %180
  %mul476 = mul nsw i64 0, %add475
  %sub477 = sub nsw i64 %mul476, 1
  %cmp478 = icmp slt i64 %sub477, 0
  br i1 %cmp478, label %cond.true.480, label %cond.false.499

cond.true.480:                                    ; preds = %cond.true.473
  %181 = load i64, i64* %next, align 8
  %mul481 = mul nsw i64 0, %181
  %182 = load i64, i64* %accum, align 8
  %add482 = add nsw i64 %mul481, %182
  %mul483 = mul nsw i64 0, %add482
  %add484 = add nsw i64 %mul483, 0
  %neg485 = xor i64 %add484, -1
  %cmp486 = icmp eq i64 %neg485, -1
  %conv487 = zext i1 %cmp486 to i32
  %sub488 = sub nsw i32 0, %conv487
  %conv489 = sext i32 %sub488 to i64
  %183 = load i64, i64* %next, align 8
  %mul490 = mul nsw i64 0, %183
  %184 = load i64, i64* %accum, align 8
  %add491 = add nsw i64 %mul490, %184
  %mul492 = mul nsw i64 0, %add491
  %add493 = add nsw i64 %mul492, 1
  %shl494 = shl i64 %add493, 62
  %sub495 = sub nsw i64 %shl494, 1
  %mul496 = mul nsw i64 %sub495, 2
  %add497 = add nsw i64 %mul496, 1
  %sub498 = sub nsw i64 %conv489, %add497
  br label %cond.end.504

cond.false.499:                                   ; preds = %cond.true.473
  %185 = load i64, i64* %next, align 8
  %mul500 = mul nsw i64 0, %185
  %186 = load i64, i64* %accum, align 8
  %add501 = add nsw i64 %mul500, %186
  %mul502 = mul nsw i64 0, %add501
  %add503 = add nsw i64 %mul502, 0
  br label %cond.end.504

cond.end.504:                                     ; preds = %cond.false.499, %cond.true.480
  %cond505 = phi i64 [ %sub498, %cond.true.480 ], [ %add503, %cond.false.499 ]
  %187 = load i64, i64* %next, align 8
  %div506 = sdiv i64 %cond505, %187
  %cmp507 = icmp slt i64 %178, %div506
  br i1 %cmp507, label %cond.true.549, label %lor.lhs.false.535

cond.false.509:                                   ; preds = %cond.false.470
  %188 = load i64, i64* %next, align 8
  %mul510 = mul nsw i64 0, %188
  %189 = load i64, i64* %accum, align 8
  %add511 = add nsw i64 %mul510, %189
  %mul512 = mul nsw i64 0, %add511
  %sub513 = sub nsw i64 %mul512, 1
  %cmp514 = icmp slt i64 %sub513, 0
  br i1 %cmp514, label %cond.true.516, label %cond.false.525

cond.true.516:                                    ; preds = %cond.false.509
  %190 = load i64, i64* %next, align 8
  %mul517 = mul nsw i64 0, %190
  %191 = load i64, i64* %accum, align 8
  %add518 = add nsw i64 %mul517, %191
  %mul519 = mul nsw i64 0, %add518
  %add520 = add nsw i64 %mul519, 1
  %shl521 = shl i64 %add520, 62
  %sub522 = sub nsw i64 %shl521, 1
  %mul523 = mul nsw i64 %sub522, 2
  %add524 = add nsw i64 %mul523, 1
  br label %cond.end.530

cond.false.525:                                   ; preds = %cond.false.509
  %192 = load i64, i64* %next, align 8
  %mul526 = mul nsw i64 0, %192
  %193 = load i64, i64* %accum, align 8
  %add527 = add nsw i64 %mul526, %193
  %mul528 = mul nsw i64 0, %add527
  %sub529 = sub nsw i64 %mul528, 1
  br label %cond.end.530

cond.end.530:                                     ; preds = %cond.false.525, %cond.true.516
  %cond531 = phi i64 [ %add524, %cond.true.516 ], [ %sub529, %cond.false.525 ]
  %194 = load i64, i64* %next, align 8
  %div532 = sdiv i64 %cond531, %194
  %195 = load i64, i64* %accum, align 8
  %cmp533 = icmp slt i64 %div532, %195
  br i1 %cmp533, label %cond.true.549, label %lor.lhs.false.535

lor.lhs.false.535:                                ; preds = %cond.end.530, %cond.end.504, %cond.true.469, %cond.end.461, %cond.true.429, %cond.end.422
  %196 = load i64, i64* %accum, align 8
  %197 = load i64, i64* %next, align 8
  %mul536 = mul nsw i64 %196, %197
  %mul537 = mul nsw i64 0, %mul536
  %sub538 = sub nsw i64 %mul537, 1
  %cmp539 = icmp slt i64 %sub538, 0
  br i1 %cmp539, label %land.lhs.true.541, label %lor.lhs.false.545

land.lhs.true.541:                                ; preds = %lor.lhs.false.535
  %198 = load i64, i64* %accum, align 8
  %199 = load i64, i64* %next, align 8
  %mul542 = mul nsw i64 %198, %199
  %cmp543 = icmp slt i64 %mul542, -9223372036854775808
  br i1 %cmp543, label %cond.true.549, label %lor.lhs.false.545

lor.lhs.false.545:                                ; preds = %land.lhs.true.541, %lor.lhs.false.535
  %200 = load i64, i64* %accum, align 8
  %201 = load i64, i64* %next, align 8
  %mul546 = mul nsw i64 %200, %201
  %cmp547 = icmp slt i64 9223372036854775807, %mul546
  br i1 %cmp547, label %cond.true.549, label %cond.false.561

cond.true.549:                                    ; preds = %lor.lhs.false.545, %land.lhs.true.541, %cond.end.530, %cond.end.504, %cond.true.469, %cond.end.461, %cond.true.429, %cond.end.422, %land.lhs.true.392, %land.lhs.true.386
  %202 = load i64, i64* %accum, align 8
  %203 = load i64, i64* %next, align 8
  %mul550 = mul i64 %202, %203
  %cmp551 = icmp ule i64 %mul550, 9223372036854775807
  br i1 %cmp551, label %cond.true.553, label %cond.false.555

cond.true.553:                                    ; preds = %cond.true.549
  %204 = load i64, i64* %accum, align 8
  %205 = load i64, i64* %next, align 8
  %mul554 = mul i64 %204, %205
  br label %cond.end.559

cond.false.555:                                   ; preds = %cond.true.549
  %206 = load i64, i64* %accum, align 8
  %207 = load i64, i64* %next, align 8
  %mul556 = mul i64 %206, %207
  %sub557 = sub i64 %mul556, -9223372036854775808
  %add558 = add nsw i64 %sub557, -9223372036854775808
  br label %cond.end.559

cond.end.559:                                     ; preds = %cond.false.555, %cond.true.553
  %cond560 = phi i64 [ %mul554, %cond.true.553 ], [ %add558, %cond.false.555 ]
  store i64 %cond560, i64* %accum, align 8
  br label %cond.end.573

cond.false.561:                                   ; preds = %lor.lhs.false.545
  %208 = load i64, i64* %accum, align 8
  %209 = load i64, i64* %next, align 8
  %mul562 = mul i64 %208, %209
  %cmp563 = icmp ule i64 %mul562, 9223372036854775807
  br i1 %cmp563, label %cond.true.565, label %cond.false.567

cond.true.565:                                    ; preds = %cond.false.561
  %210 = load i64, i64* %accum, align 8
  %211 = load i64, i64* %next, align 8
  %mul566 = mul i64 %210, %211
  br label %cond.end.571

cond.false.567:                                   ; preds = %cond.false.561
  %212 = load i64, i64* %accum, align 8
  %213 = load i64, i64* %next, align 8
  %mul568 = mul i64 %212, %213
  %sub569 = sub i64 %mul568, -9223372036854775808
  %add570 = add nsw i64 %sub569, -9223372036854775808
  br label %cond.end.571

cond.end.571:                                     ; preds = %cond.false.567, %cond.true.565
  %cond572 = phi i64 [ %mul566, %cond.true.565 ], [ %add570, %cond.false.567 ]
  store i64 %cond572, i64* %accum, align 8
  br label %cond.end.573

cond.end.573:                                     ; preds = %cond.end.571, %cond.end.559
  %cond574 = phi i32 [ 1, %cond.end.559 ], [ 0, %cond.end.571 ]
  %214 = load i8, i8* %overflow, align 1
  %tobool575 = trunc i8 %214 to i1
  %conv576 = zext i1 %tobool575 to i32
  %or577 = or i32 %conv576, %cond574
  %tobool578 = icmp ne i32 %or577, 0
  %frombool579 = zext i1 %tobool578 to i8
  store i8 %frombool579, i8* %overflow, align 1
  br label %sw.epilog.728

sw.bb.580:                                        ; preds = %if.end.21
  %215 = load i64, i64* %argnum, align 8
  %tobool581 = icmp ne i64 %215, 0
  br i1 %tobool581, label %if.else.586, label %lor.lhs.false.582

lor.lhs.false.582:                                ; preds = %sw.bb.580
  %216 = load i64, i64* %nargs.addr, align 8
  %cmp583 = icmp eq i64 %216, 1
  br i1 %cmp583, label %if.else.586, label %if.then.585

if.then.585:                                      ; preds = %lor.lhs.false.582
  %217 = load i64, i64* %next, align 8
  store i64 %217, i64* %accum, align 8
  br label %if.end.708

if.else.586:                                      ; preds = %lor.lhs.false.582, %sw.bb.580
  %218 = load i64, i64* %next, align 8
  %cmp587 = icmp eq i64 %218, 0
  br i1 %cmp587, label %if.then.589, label %if.end.591

if.then.589:                                      ; preds = %if.else.586
  %call590 = call i64 @builtin_lisp_symbol(i32 178)
  call void @xsignal0(i64 %call590) #7
  unreachable

if.end.591:                                       ; preds = %if.else.586
  %219 = load i64, i64* %next, align 8
  %mul592 = mul nsw i64 0, %219
  %220 = load i64, i64* %accum, align 8
  %add593 = add nsw i64 %mul592, %220
  %mul594 = mul nsw i64 0, %add593
  %sub595 = sub nsw i64 %mul594, 1
  %cmp596 = icmp slt i64 %sub595, 0
  br i1 %cmp596, label %cond.true.598, label %cond.false.617

cond.true.598:                                    ; preds = %if.end.591
  %221 = load i64, i64* %next, align 8
  %mul599 = mul nsw i64 0, %221
  %222 = load i64, i64* %accum, align 8
  %add600 = add nsw i64 %mul599, %222
  %mul601 = mul nsw i64 0, %add600
  %add602 = add nsw i64 %mul601, 0
  %neg603 = xor i64 %add602, -1
  %cmp604 = icmp eq i64 %neg603, -1
  %conv605 = zext i1 %cmp604 to i32
  %sub606 = sub nsw i32 0, %conv605
  %conv607 = sext i32 %sub606 to i64
  %223 = load i64, i64* %next, align 8
  %mul608 = mul nsw i64 0, %223
  %224 = load i64, i64* %accum, align 8
  %add609 = add nsw i64 %mul608, %224
  %mul610 = mul nsw i64 0, %add609
  %add611 = add nsw i64 %mul610, 1
  %shl612 = shl i64 %add611, 62
  %sub613 = sub nsw i64 %shl612, 1
  %mul614 = mul nsw i64 %sub613, 2
  %add615 = add nsw i64 %mul614, 1
  %sub616 = sub nsw i64 %conv607, %add615
  br label %cond.end.622

cond.false.617:                                   ; preds = %if.end.591
  %225 = load i64, i64* %next, align 8
  %mul618 = mul nsw i64 0, %225
  %226 = load i64, i64* %accum, align 8
  %add619 = add nsw i64 %mul618, %226
  %mul620 = mul nsw i64 0, %add619
  %add621 = add nsw i64 %mul620, 0
  br label %cond.end.622

cond.end.622:                                     ; preds = %cond.false.617, %cond.true.598
  %cond623 = phi i64 [ %sub616, %cond.true.598 ], [ %add621, %cond.false.617 ]
  %cmp624 = icmp slt i64 %cond623, 0
  br i1 %cmp624, label %cond.true.626, label %cond.false.689

cond.true.626:                                    ; preds = %cond.end.622
  %227 = load i64, i64* %next, align 8
  %228 = load i64, i64* %next, align 8
  %mul627 = mul nsw i64 0, %228
  %229 = load i64, i64* %accum, align 8
  %add628 = add nsw i64 %mul627, %229
  %mul629 = mul nsw i64 0, %add628
  %sub630 = sub nsw i64 %mul629, 1
  %cmp631 = icmp slt i64 %sub630, 0
  br i1 %cmp631, label %cond.true.633, label %cond.false.652

cond.true.633:                                    ; preds = %cond.true.626
  %230 = load i64, i64* %next, align 8
  %mul634 = mul nsw i64 0, %230
  %231 = load i64, i64* %accum, align 8
  %add635 = add nsw i64 %mul634, %231
  %mul636 = mul nsw i64 0, %add635
  %add637 = add nsw i64 %mul636, 0
  %neg638 = xor i64 %add637, -1
  %cmp639 = icmp eq i64 %neg638, -1
  %conv640 = zext i1 %cmp639 to i32
  %sub641 = sub nsw i32 0, %conv640
  %conv642 = sext i32 %sub641 to i64
  %232 = load i64, i64* %next, align 8
  %mul643 = mul nsw i64 0, %232
  %233 = load i64, i64* %accum, align 8
  %add644 = add nsw i64 %mul643, %233
  %mul645 = mul nsw i64 0, %add644
  %add646 = add nsw i64 %mul645, 1
  %shl647 = shl i64 %add646, 62
  %sub648 = sub nsw i64 %shl647, 1
  %mul649 = mul nsw i64 %sub648, 2
  %add650 = add nsw i64 %mul649, 1
  %sub651 = sub nsw i64 %conv642, %add650
  br label %cond.end.657

cond.false.652:                                   ; preds = %cond.true.626
  %234 = load i64, i64* %next, align 8
  %mul653 = mul nsw i64 0, %234
  %235 = load i64, i64* %accum, align 8
  %add654 = add nsw i64 %mul653, %235
  %mul655 = mul nsw i64 0, %add654
  %add656 = add nsw i64 %mul655, 0
  br label %cond.end.657

cond.end.657:                                     ; preds = %cond.false.652, %cond.true.633
  %cond658 = phi i64 [ %sub651, %cond.true.633 ], [ %add656, %cond.false.652 ]
  %mul659 = mul nsw i64 0, %cond658
  %sub660 = sub nsw i64 %mul659, 1
  %cmp661 = icmp eq i64 %227, %sub660
  br i1 %cmp661, label %land.lhs.true.663, label %if.else.705

land.lhs.true.663:                                ; preds = %cond.end.657
  %236 = load i64, i64* %accum, align 8
  %237 = load i64, i64* %next, align 8
  %mul664 = mul nsw i64 0, %237
  %238 = load i64, i64* %accum, align 8
  %add665 = add nsw i64 %mul664, %238
  %mul666 = mul nsw i64 0, %add665
  %sub667 = sub nsw i64 %mul666, 1
  %cmp668 = icmp slt i64 %sub667, 0
  br i1 %cmp668, label %cond.true.670, label %cond.false.679

cond.true.670:                                    ; preds = %land.lhs.true.663
  %239 = load i64, i64* %next, align 8
  %mul671 = mul nsw i64 0, %239
  %240 = load i64, i64* %accum, align 8
  %add672 = add nsw i64 %mul671, %240
  %mul673 = mul nsw i64 0, %add672
  %add674 = add nsw i64 %mul673, 1
  %shl675 = shl i64 %add674, 62
  %sub676 = sub nsw i64 %shl675, 1
  %mul677 = mul nsw i64 %sub676, 2
  %add678 = add nsw i64 %mul677, 1
  br label %cond.end.684

cond.false.679:                                   ; preds = %land.lhs.true.663
  %241 = load i64, i64* %next, align 8
  %mul680 = mul nsw i64 0, %241
  %242 = load i64, i64* %accum, align 8
  %add681 = add nsw i64 %mul680, %242
  %mul682 = mul nsw i64 0, %add681
  %sub683 = sub nsw i64 %mul682, 1
  br label %cond.end.684

cond.end.684:                                     ; preds = %cond.false.679, %cond.true.670
  %cond685 = phi i64 [ %add678, %cond.true.670 ], [ %sub683, %cond.false.679 ]
  %sub686 = sub nsw i64 0, %cond685
  %cmp687 = icmp slt i64 %236, %sub686
  br i1 %cmp687, label %if.then.704, label %if.else.705

cond.false.689:                                   ; preds = %cond.end.622
  %243 = load i64, i64* %accum, align 8
  %cmp690 = icmp slt i64 %243, 0
  br i1 %cmp690, label %cond.true.692, label %cond.false.697

cond.true.692:                                    ; preds = %cond.false.689
  %244 = load i64, i64* %next, align 8
  %245 = load i64, i64* %accum, align 8
  %246 = load i64, i64* %next, align 8
  %add693 = add nsw i64 %245, %246
  %sub694 = sub nsw i64 %add693, 1
  %cmp695 = icmp sle i64 %244, %sub694
  br i1 %cmp695, label %if.then.704, label %if.else.705

cond.false.697:                                   ; preds = %cond.false.689
  %247 = load i64, i64* %next, align 8
  %cmp698 = icmp slt i64 %247, 0
  br i1 %cmp698, label %land.lhs.true.700, label %if.else.705

land.lhs.true.700:                                ; preds = %cond.false.697
  %248 = load i64, i64* %accum, align 8
  %249 = load i64, i64* %next, align 8
  %add701 = add nsw i64 %248, %249
  %250 = load i64, i64* %accum, align 8
  %cmp702 = icmp sle i64 %add701, %250
  br i1 %cmp702, label %if.then.704, label %if.else.705

if.then.704:                                      ; preds = %land.lhs.true.700, %cond.true.692, %cond.end.684
  store i8 1, i8* %overflow, align 1
  br label %if.end.707

if.else.705:                                      ; preds = %land.lhs.true.700, %cond.false.697, %cond.true.692, %cond.end.684, %cond.end.657
  %251 = load i64, i64* %next, align 8
  %252 = load i64, i64* %accum, align 8
  %div706 = sdiv i64 %252, %251
  store i64 %div706, i64* %accum, align 8
  br label %if.end.707

if.end.707:                                       ; preds = %if.else.705, %if.then.704
  br label %if.end.708

if.end.708:                                       ; preds = %if.end.707, %if.then.585
  br label %sw.epilog.728

sw.bb.709:                                        ; preds = %if.end.21
  %253 = load i64, i64* %next, align 8
  %254 = load i64, i64* %accum, align 8
  %and710 = and i64 %254, %253
  store i64 %and710, i64* %accum, align 8
  br label %sw.epilog.728

sw.bb.711:                                        ; preds = %if.end.21
  %255 = load i64, i64* %next, align 8
  %256 = load i64, i64* %accum, align 8
  %or712 = or i64 %256, %255
  store i64 %or712, i64* %accum, align 8
  br label %sw.epilog.728

sw.bb.713:                                        ; preds = %if.end.21
  %257 = load i64, i64* %next, align 8
  %258 = load i64, i64* %accum, align 8
  %xor = xor i64 %258, %257
  store i64 %xor, i64* %accum, align 8
  br label %sw.epilog.728

sw.bb.714:                                        ; preds = %if.end.21
  %259 = load i64, i64* %argnum, align 8
  %tobool715 = icmp ne i64 %259, 0
  br i1 %tobool715, label %lor.lhs.false.716, label %if.then.719

lor.lhs.false.716:                                ; preds = %sw.bb.714
  %260 = load i64, i64* %next, align 8
  %261 = load i64, i64* %accum, align 8
  %cmp717 = icmp sgt i64 %260, %261
  br i1 %cmp717, label %if.then.719, label %if.end.720

if.then.719:                                      ; preds = %lor.lhs.false.716, %sw.bb.714
  %262 = load i64, i64* %next, align 8
  store i64 %262, i64* %accum, align 8
  br label %if.end.720

if.end.720:                                       ; preds = %if.then.719, %lor.lhs.false.716
  br label %sw.epilog.728

sw.bb.721:                                        ; preds = %if.end.21
  %263 = load i64, i64* %argnum, align 8
  %tobool722 = icmp ne i64 %263, 0
  br i1 %tobool722, label %lor.lhs.false.723, label %if.then.726

lor.lhs.false.723:                                ; preds = %sw.bb.721
  %264 = load i64, i64* %next, align 8
  %265 = load i64, i64* %accum, align 8
  %cmp724 = icmp slt i64 %264, %265
  br i1 %cmp724, label %if.then.726, label %if.end.727

if.then.726:                                      ; preds = %lor.lhs.false.723, %sw.bb.721
  %266 = load i64, i64* %next, align 8
  store i64 %266, i64* %accum, align 8
  br label %if.end.727

if.end.727:                                       ; preds = %if.then.726, %lor.lhs.false.723
  br label %sw.epilog.728

sw.epilog.728:                                    ; preds = %if.end.21, %if.end.727, %if.end.720, %sw.bb.713, %sw.bb.711, %sw.bb.709, %if.end.708, %cond.end.573, %if.end.347, %cond.end.173
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog.728
  %267 = load i64, i64* %argnum, align 8
  %inc = add nsw i64 %267, 1
  store i64 %inc, i64* %argnum, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %268 = load i64, i64* %accum, align 8
  %shl729 = shl i64 %268, 2
  %add730 = add i64 %shl729, 2
  store i64 %add730, i64* %val, align 8
  %269 = load i64, i64* %val, align 8
  store i64 %269, i64* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.18
  %270 = load i64, i64* %retval
  ret i64 %270
}

; Function Attrs: nounwind uwtable
define i64 @Fminus(i64 %nargs, i64* %args) #4 {
entry:
  %nargs.addr = alloca i64, align 8
  %args.addr = alloca i64*, align 8
  store i64 %nargs, i64* %nargs.addr, align 8
  store i64* %args, i64** %args.addr, align 8
  %0 = load i64, i64* %nargs.addr, align 8
  %1 = load i64*, i64** %args.addr, align 8
  %call = call i64 @arith_driver(i32 1, i64 %0, i64* %1)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @Ftimes(i64 %nargs, i64* %args) #4 {
entry:
  %nargs.addr = alloca i64, align 8
  %args.addr = alloca i64*, align 8
  store i64 %nargs, i64* %nargs.addr, align 8
  store i64* %args, i64** %args.addr, align 8
  %0 = load i64, i64* %nargs.addr, align 8
  %1 = load i64*, i64** %args.addr, align 8
  %call = call i64 @arith_driver(i32 2, i64 %0, i64* %1)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @Fquo(i64 %nargs, i64* %args) #4 {
entry:
  %retval = alloca i64, align 8
  %nargs.addr = alloca i64, align 8
  %args.addr = alloca i64*, align 8
  %argnum = alloca i64, align 8
  store i64 %nargs, i64* %nargs.addr, align 8
  store i64* %args, i64** %args.addr, align 8
  store i64 2, i64* %argnum, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %argnum, align 8
  %1 = load i64, i64* %nargs.addr, align 8
  %cmp = icmp slt i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %argnum, align 8
  %3 = load i64*, i64** %args.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 %2
  %4 = load i64, i64* %arrayidx, align 8
  %and = and i64 %4, 7
  %conv = trunc i64 %and to i32
  %cmp1 = icmp eq i32 %conv, 7
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i64, i64* %nargs.addr, align 8
  %6 = load i64*, i64** %args.addr, align 8
  %call = call i64 @float_arith_driver(double 0.000000e+00, i64 0, i32 3, i64 %5, i64* %6)
  store i64 %call, i64* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i64, i64* %argnum, align 8
  %inc = add nsw i64 %7, 1
  store i64 %inc, i64* %argnum, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i64, i64* %nargs.addr, align 8
  %9 = load i64*, i64** %args.addr, align 8
  %call3 = call i64 @arith_driver(i32 3, i64 %8, i64* %9)
  store i64 %call3, i64* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %10 = load i64, i64* %retval
  ret i64 %10
}

; Function Attrs: nounwind uwtable
define internal i64 @float_arith_driver(double %accum, i64 %argnum, i32 %code, i64 %nargs, i64* %args) #4 {
entry:
  %retval = alloca i64, align 8
  %accum.addr = alloca double, align 8
  %argnum.addr = alloca i64, align 8
  %code.addr = alloca i32, align 4
  %nargs.addr = alloca i64, align 8
  %args.addr = alloca i64*, align 8
  %val = alloca i64, align 8
  %next = alloca double, align 8
  store double %accum, double* %accum.addr, align 8
  store i64 %argnum, i64* %argnum.addr, align 8
  store i32 %code, i32* %code.addr, align 4
  store i64 %nargs, i64* %nargs.addr, align 8
  store i64* %args, i64** %args.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %argnum.addr, align 8
  %1 = load i64, i64* %nargs.addr, align 8
  %cmp = icmp slt i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %argnum.addr, align 8
  %3 = load i64*, i64** %args.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 %2
  %4 = load i64, i64* %arrayidx, align 8
  store i64 %4, i64* %val, align 8
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load i64, i64* %val, align 8
  %and = and i64 %5, 7
  %conv = trunc i64 %and to i32
  %cmp1 = icmp eq i32 %conv, 1
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %6 = load i64, i64* %val, align 8
  %call = call i32 @XMISCTYPE(i64 %6)
  %cmp3 = icmp eq i32 %call, 24236
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %7 = load i64, i64* %val, align 8
  %call5 = call i64 @marker_position(i64 %7)
  %call6 = call i64 @make_natnum(i64 %call5)
  store i64 %call6, i64* %val, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %do.body
  %8 = load i64, i64* %val, align 8
  %call7 = call zeroext i1 @NUMBERP(i64 %8)
  br i1 %call7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %call9 = call i64 @builtin_lisp_symbol(i32 710)
  %9 = load i64, i64* %val, align 8
  %10 = call i64 @wrong_type_argument(i64 %call9, i64 %9) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %11, %cond.true
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %12 = load i64, i64* %val, align 8
  %and10 = and i64 %12, 7
  %conv11 = trunc i64 %and10 to i32
  %cmp12 = icmp eq i32 %conv11, 7
  br i1 %cmp12, label %if.then.14, label %if.else.16

if.then.14:                                       ; preds = %do.end
  %13 = load i64, i64* %val, align 8
  %call15 = call double @XFLOAT_DATA(i64 %13)
  store double %call15, double* %next, align 8
  br label %if.end.20

if.else.16:                                       ; preds = %do.end
  %14 = load i64, i64* %val, align 8
  %15 = load i64, i64* %argnum.addr, align 8
  %16 = load i64*, i64** %args.addr, align 8
  %arrayidx17 = getelementptr inbounds i64, i64* %16, i64 %15
  store i64 %14, i64* %arrayidx17, align 8
  %17 = load i64, i64* %argnum.addr, align 8
  %18 = load i64*, i64** %args.addr, align 8
  %arrayidx18 = getelementptr inbounds i64, i64* %18, i64 %17
  %19 = load i64, i64* %arrayidx18, align 8
  %shr = ashr i64 %19, 2
  %conv19 = sitofp i64 %shr to double
  store double %conv19, double* %next, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.16, %if.then.14
  %20 = load i32, i32* %code.addr, align 4
  switch i32 %20, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.21
    i32 2, label %sw.bb.32
    i32 3, label %sw.bb.33
    i32 4, label %sw.bb.40
    i32 5, label %sw.bb.40
    i32 6, label %sw.bb.40
    i32 7, label %sw.bb.42
    i32 8, label %sw.bb.52
  ]

sw.bb:                                            ; preds = %if.end.20
  %21 = load double, double* %next, align 8
  %22 = load double, double* %accum.addr, align 8
  %add = fadd double %22, %21
  store double %add, double* %accum.addr, align 8
  br label %sw.epilog

sw.bb.21:                                         ; preds = %if.end.20
  %23 = load i64, i64* %argnum.addr, align 8
  %tobool = icmp ne i64 %23, 0
  br i1 %tobool, label %cond.true.22, label %cond.false.23

cond.true.22:                                     ; preds = %sw.bb.21
  %24 = load double, double* %accum.addr, align 8
  %25 = load double, double* %next, align 8
  %sub = fsub double %24, %25
  br label %cond.end.30

cond.false.23:                                    ; preds = %sw.bb.21
  %26 = load i64, i64* %nargs.addr, align 8
  %cmp24 = icmp eq i64 %26, 1
  br i1 %cmp24, label %cond.true.26, label %cond.false.28

cond.true.26:                                     ; preds = %cond.false.23
  %27 = load double, double* %next, align 8
  %sub27 = fsub double -0.000000e+00, %27
  br label %cond.end.29

cond.false.28:                                    ; preds = %cond.false.23
  %28 = load double, double* %next, align 8
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.false.28, %cond.true.26
  %cond = phi double [ %sub27, %cond.true.26 ], [ %28, %cond.false.28 ]
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.end.29, %cond.true.22
  %cond31 = phi double [ %sub, %cond.true.22 ], [ %cond, %cond.end.29 ]
  store double %cond31, double* %accum.addr, align 8
  br label %sw.epilog

sw.bb.32:                                         ; preds = %if.end.20
  %29 = load double, double* %next, align 8
  %30 = load double, double* %accum.addr, align 8
  %mul = fmul double %30, %29
  store double %mul, double* %accum.addr, align 8
  br label %sw.epilog

sw.bb.33:                                         ; preds = %if.end.20
  %31 = load i64, i64* %argnum.addr, align 8
  %tobool34 = icmp ne i64 %31, 0
  br i1 %tobool34, label %if.else.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.33
  %32 = load i64, i64* %nargs.addr, align 8
  %cmp35 = icmp eq i64 %32, 1
  br i1 %cmp35, label %if.else.38, label %if.then.37

if.then.37:                                       ; preds = %lor.lhs.false
  %33 = load double, double* %next, align 8
  store double %33, double* %accum.addr, align 8
  br label %if.end.39

if.else.38:                                       ; preds = %lor.lhs.false, %sw.bb.33
  %34 = load double, double* %next, align 8
  %35 = load double, double* %accum.addr, align 8
  %div = fdiv double %35, %34
  store double %div, double* %accum.addr, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.38, %if.then.37
  br label %sw.epilog

sw.bb.40:                                         ; preds = %if.end.20, %if.end.20, %if.end.20
  %call41 = call i64 @builtin_lisp_symbol(i32 558)
  %36 = load i64, i64* %val, align 8
  %37 = call i64 @wrong_type_argument(i64 %call41, i64 %36) #7
  unreachable
                                                  ; No predecessors!
  store i64 undef, i64* %retval
  br label %return

sw.bb.42:                                         ; preds = %if.end.20
  %39 = load i64, i64* %argnum.addr, align 8
  %tobool43 = icmp ne i64 %39, 0
  br i1 %tobool43, label %lor.lhs.false.44, label %if.then.50

lor.lhs.false.44:                                 ; preds = %sw.bb.42
  %40 = load double, double* %next, align 8
  %41 = load double, double* %next, align 8
  %cmp45 = fcmp une double %40, %41
  br i1 %cmp45, label %if.then.50, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %lor.lhs.false.44
  %42 = load double, double* %next, align 8
  %43 = load double, double* %accum.addr, align 8
  %cmp48 = fcmp ogt double %42, %43
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %lor.lhs.false.47, %lor.lhs.false.44, %sw.bb.42
  %44 = load double, double* %next, align 8
  store double %44, double* %accum.addr, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %lor.lhs.false.47
  br label %sw.epilog

sw.bb.52:                                         ; preds = %if.end.20
  %45 = load i64, i64* %argnum.addr, align 8
  %tobool53 = icmp ne i64 %45, 0
  br i1 %tobool53, label %lor.lhs.false.54, label %if.then.60

lor.lhs.false.54:                                 ; preds = %sw.bb.52
  %46 = load double, double* %next, align 8
  %47 = load double, double* %next, align 8
  %cmp55 = fcmp une double %46, %47
  br i1 %cmp55, label %if.then.60, label %lor.lhs.false.57

lor.lhs.false.57:                                 ; preds = %lor.lhs.false.54
  %48 = load double, double* %next, align 8
  %49 = load double, double* %accum.addr, align 8
  %cmp58 = fcmp olt double %48, %49
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %lor.lhs.false.57, %lor.lhs.false.54, %sw.bb.52
  %50 = load double, double* %next, align 8
  store double %50, double* %accum.addr, align 8
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %lor.lhs.false.57
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.20, %if.end.61, %if.end.51, %if.end.39, %sw.bb.32, %cond.end.30, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %51 = load i64, i64* %argnum.addr, align 8
  %inc = add nsw i64 %51, 1
  store i64 %inc, i64* %argnum.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %52 = load double, double* %accum.addr, align 8
  %call62 = call i64 @make_float(double %52)
  store i64 %call62, i64* %retval
  br label %return

return:                                           ; preds = %for.end, %38
  %53 = load i64, i64* %retval
  ret i64 %53
}

; Function Attrs: nounwind uwtable
define i64 @Frem(i64 %x, i64 %y) #4 {
entry:
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  store i64 %y, i64* %y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %x.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %1 = load i64, i64* %x.addr, align 8
  %call = call i32 @XMISCTYPE(i64 %1)
  %cmp2 = icmp eq i32 %call, 24236
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load i64, i64* %x.addr, align 8
  %call4 = call i64 @marker_position(i64 %2)
  %call5 = call i64 @make_natnum(i64 %call4)
  store i64 %call5, i64* %x.addr, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %do.body
  %3 = load i64, i64* %x.addr, align 8
  %and6 = and i64 %3, 7
  %conv7 = trunc i64 %and6 to i32
  %and8 = and i32 %conv7, -5
  %cmp9 = icmp eq i32 %and8, 2
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %call11 = call i64 @builtin_lisp_symbol(i32 558)
  %4 = load i64, i64* %x.addr, align 8
  %5 = call i64 @wrong_type_argument(i64 %call11, i64 %4) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %6, %cond.true
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %7 = load i64, i64* %y.addr, align 8
  %and13 = and i64 %7, 7
  %conv14 = trunc i64 %and13 to i32
  %cmp15 = icmp eq i32 %conv14, 1
  br i1 %cmp15, label %land.lhs.true.17, label %if.else.24

land.lhs.true.17:                                 ; preds = %do.body.12
  %8 = load i64, i64* %y.addr, align 8
  %call18 = call i32 @XMISCTYPE(i64 %8)
  %cmp19 = icmp eq i32 %call18, 24236
  br i1 %cmp19, label %if.then.21, label %if.else.24

if.then.21:                                       ; preds = %land.lhs.true.17
  %9 = load i64, i64* %y.addr, align 8
  %call22 = call i64 @marker_position(i64 %9)
  %call23 = call i64 @make_natnum(i64 %call22)
  store i64 %call23, i64* %y.addr, align 8
  br label %if.end.34

if.else.24:                                       ; preds = %land.lhs.true.17, %do.body.12
  %10 = load i64, i64* %y.addr, align 8
  %and25 = and i64 %10, 7
  %conv26 = trunc i64 %and25 to i32
  %and27 = and i32 %conv26, -5
  %cmp28 = icmp eq i32 %and27, 2
  br i1 %cmp28, label %cond.true.30, label %cond.false.31

cond.true.30:                                     ; preds = %if.else.24
  br label %cond.end.33

cond.false.31:                                    ; preds = %if.else.24
  %call32 = call i64 @builtin_lisp_symbol(i32 558)
  %11 = load i64, i64* %y.addr, align 8
  %12 = call i64 @wrong_type_argument(i64 %call32, i64 %11) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end.33

cond.end.33:                                      ; preds = %13, %cond.true.30
  br label %if.end.34

if.end.34:                                        ; preds = %cond.end.33, %if.then.21
  br label %do.end.35

do.end.35:                                        ; preds = %if.end.34
  %14 = load i64, i64* %y.addr, align 8
  %shr = ashr i64 %14, 2
  %cmp36 = icmp eq i64 %shr, 0
  br i1 %cmp36, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %do.end.35
  %call39 = call i64 @builtin_lisp_symbol(i32 178)
  call void @xsignal0(i64 %call39) #7
  unreachable

if.end.40:                                        ; preds = %do.end.35
  %15 = load i64, i64* %x.addr, align 8
  %shr41 = ashr i64 %15, 2
  %16 = load i64, i64* %y.addr, align 8
  %shr42 = ashr i64 %16, 2
  %rem = srem i64 %shr41, %shr42
  %shl = shl i64 %rem, 2
  %add = add i64 %shl, 2
  store i64 %add, i64* %val, align 8
  %17 = load i64, i64* %val, align 8
  ret i64 %17
}

; Function Attrs: noreturn
declare void @xsignal0(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fmod(i64 %x, i64 %y) #4 {
entry:
  %retval = alloca i64, align 8
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %i1 = alloca i64, align 8
  %i2 = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  store i64 %y, i64* %y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %x.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %1 = load i64, i64* %x.addr, align 8
  %call = call i32 @XMISCTYPE(i64 %1)
  %cmp2 = icmp eq i32 %call, 24236
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load i64, i64* %x.addr, align 8
  %call4 = call i64 @marker_position(i64 %2)
  %call5 = call i64 @make_natnum(i64 %call4)
  store i64 %call5, i64* %x.addr, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %do.body
  %3 = load i64, i64* %x.addr, align 8
  %call6 = call zeroext i1 @NUMBERP(i64 %3)
  br i1 %call6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %call8 = call i64 @builtin_lisp_symbol(i32 710)
  %4 = load i64, i64* %x.addr, align 8
  %5 = call i64 @wrong_type_argument(i64 %call8, i64 %4) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %6, %cond.true
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.9

do.body.9:                                        ; preds = %do.end
  %7 = load i64, i64* %y.addr, align 8
  %and10 = and i64 %7, 7
  %conv11 = trunc i64 %and10 to i32
  %cmp12 = icmp eq i32 %conv11, 1
  br i1 %cmp12, label %land.lhs.true.14, label %if.else.21

land.lhs.true.14:                                 ; preds = %do.body.9
  %8 = load i64, i64* %y.addr, align 8
  %call15 = call i32 @XMISCTYPE(i64 %8)
  %cmp16 = icmp eq i32 %call15, 24236
  br i1 %cmp16, label %if.then.18, label %if.else.21

if.then.18:                                       ; preds = %land.lhs.true.14
  %9 = load i64, i64* %y.addr, align 8
  %call19 = call i64 @marker_position(i64 %9)
  %call20 = call i64 @make_natnum(i64 %call19)
  store i64 %call20, i64* %y.addr, align 8
  br label %if.end.28

if.else.21:                                       ; preds = %land.lhs.true.14, %do.body.9
  %10 = load i64, i64* %y.addr, align 8
  %call22 = call zeroext i1 @NUMBERP(i64 %10)
  br i1 %call22, label %cond.true.24, label %cond.false.25

cond.true.24:                                     ; preds = %if.else.21
  br label %cond.end.27

cond.false.25:                                    ; preds = %if.else.21
  %call26 = call i64 @builtin_lisp_symbol(i32 710)
  %11 = load i64, i64* %y.addr, align 8
  %12 = call i64 @wrong_type_argument(i64 %call26, i64 %11) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end.27

cond.end.27:                                      ; preds = %13, %cond.true.24
  br label %if.end.28

if.end.28:                                        ; preds = %cond.end.27, %if.then.18
  br label %do.end.29

do.end.29:                                        ; preds = %if.end.28
  %14 = load i64, i64* %x.addr, align 8
  %and30 = and i64 %14, 7
  %conv31 = trunc i64 %and30 to i32
  %cmp32 = icmp eq i32 %conv31, 7
  br i1 %cmp32, label %if.then.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.29
  %15 = load i64, i64* %y.addr, align 8
  %and34 = and i64 %15, 7
  %conv35 = trunc i64 %and34 to i32
  %cmp36 = icmp eq i32 %conv35, 7
  br i1 %cmp36, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %lor.lhs.false, %do.end.29
  %16 = load i64, i64* %x.addr, align 8
  %17 = load i64, i64* %y.addr, align 8
  %call39 = call i64 @fmod_float(i64 %16, i64 %17)
  store i64 %call39, i64* %retval
  br label %return

if.end.40:                                        ; preds = %lor.lhs.false
  %18 = load i64, i64* %x.addr, align 8
  %shr = ashr i64 %18, 2
  store i64 %shr, i64* %i1, align 8
  %19 = load i64, i64* %y.addr, align 8
  %shr41 = ashr i64 %19, 2
  store i64 %shr41, i64* %i2, align 8
  %20 = load i64, i64* %i2, align 8
  %cmp42 = icmp eq i64 %20, 0
  br i1 %cmp42, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.end.40
  %call45 = call i64 @builtin_lisp_symbol(i32 178)
  call void @xsignal0(i64 %call45) #7
  unreachable

if.end.46:                                        ; preds = %if.end.40
  %21 = load i64, i64* %i2, align 8
  %22 = load i64, i64* %i1, align 8
  %rem = srem i64 %22, %21
  store i64 %rem, i64* %i1, align 8
  %23 = load i64, i64* %i2, align 8
  %cmp47 = icmp slt i64 %23, 0
  br i1 %cmp47, label %cond.true.49, label %cond.false.52

cond.true.49:                                     ; preds = %if.end.46
  %24 = load i64, i64* %i1, align 8
  %cmp50 = icmp sgt i64 %24, 0
  br i1 %cmp50, label %if.then.55, label %if.end.56

cond.false.52:                                    ; preds = %if.end.46
  %25 = load i64, i64* %i1, align 8
  %cmp53 = icmp slt i64 %25, 0
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %cond.false.52, %cond.true.49
  %26 = load i64, i64* %i2, align 8
  %27 = load i64, i64* %i1, align 8
  %add = add nsw i64 %27, %26
  store i64 %add, i64* %i1, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %cond.false.52, %cond.true.49
  %28 = load i64, i64* %i1, align 8
  %shl = shl i64 %28, 2
  %add57 = add i64 %shl, 2
  store i64 %add57, i64* %val, align 8
  %29 = load i64, i64* %val, align 8
  store i64 %29, i64* %retval
  br label %return

return:                                           ; preds = %if.end.56, %if.then.38
  %30 = load i64, i64* %retval
  ret i64 %30
}

declare i64 @fmod_float(i64, i64) #2

; Function Attrs: nounwind uwtable
define i64 @Fmax(i64 %nargs, i64* %args) #4 {
entry:
  %nargs.addr = alloca i64, align 8
  %args.addr = alloca i64*, align 8
  store i64 %nargs, i64* %nargs.addr, align 8
  store i64* %args, i64** %args.addr, align 8
  %0 = load i64, i64* %nargs.addr, align 8
  %1 = load i64*, i64** %args.addr, align 8
  %call = call i64 @arith_driver(i32 7, i64 %0, i64* %1)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @Fmin(i64 %nargs, i64* %args) #4 {
entry:
  %nargs.addr = alloca i64, align 8
  %args.addr = alloca i64*, align 8
  store i64 %nargs, i64* %nargs.addr, align 8
  store i64* %args, i64** %args.addr, align 8
  %0 = load i64, i64* %nargs.addr, align 8
  %1 = load i64*, i64** %args.addr, align 8
  %call = call i64 @arith_driver(i32 8, i64 %0, i64* %1)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @Flogand(i64 %nargs, i64* %args) #4 {
entry:
  %nargs.addr = alloca i64, align 8
  %args.addr = alloca i64*, align 8
  store i64 %nargs, i64* %nargs.addr, align 8
  store i64* %args, i64** %args.addr, align 8
  %0 = load i64, i64* %nargs.addr, align 8
  %1 = load i64*, i64** %args.addr, align 8
  %call = call i64 @arith_driver(i32 4, i64 %0, i64* %1)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @Flogior(i64 %nargs, i64* %args) #4 {
entry:
  %nargs.addr = alloca i64, align 8
  %args.addr = alloca i64*, align 8
  store i64 %nargs, i64* %nargs.addr, align 8
  store i64* %args, i64** %args.addr, align 8
  %0 = load i64, i64* %nargs.addr, align 8
  %1 = load i64*, i64** %args.addr, align 8
  %call = call i64 @arith_driver(i32 5, i64 %0, i64* %1)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @Flogxor(i64 %nargs, i64* %args) #4 {
entry:
  %nargs.addr = alloca i64, align 8
  %args.addr = alloca i64*, align 8
  store i64 %nargs, i64* %nargs.addr, align 8
  store i64* %args, i64** %args.addr, align 8
  %0 = load i64, i64* %nargs.addr, align 8
  %1 = load i64*, i64** %args.addr, align 8
  %call = call i64 @arith_driver(i32 6, i64 %0, i64* %1)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @Fash(i64 %value, i64 %count) #4 {
entry:
  %value.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %value, i64* %value.addr, align 8
  store i64 %count, i64* %count.addr, align 8
  %0 = load i64, i64* %value.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %and1 = and i32 %conv, -5
  %cmp = icmp eq i32 %and1, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 559)
  %1 = load i64, i64* %value.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call, i64 %1) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i64, i64* %count.addr, align 8
  %and3 = and i64 %4, 7
  %conv4 = trunc i64 %and3 to i32
  %and5 = and i32 %conv4, -5
  %cmp6 = icmp eq i32 %and5, 2
  br i1 %cmp6, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %cond.end
  br label %cond.end.11

cond.false.9:                                     ; preds = %cond.end
  %call10 = call i64 @builtin_lisp_symbol(i32 559)
  %5 = load i64, i64* %count.addr, align 8
  %6 = call i64 @wrong_type_argument(i64 %call10, i64 %5) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end.11

cond.end.11:                                      ; preds = %7, %cond.true.8
  %8 = load i64, i64* %count.addr, align 8
  %shr = ashr i64 %8, 2
  %cmp12 = icmp sge i64 %shr, 64
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.11
  store i64 2, i64* %val, align 8
  br label %if.end.39

if.else:                                          ; preds = %cond.end.11
  %9 = load i64, i64* %count.addr, align 8
  %shr14 = ashr i64 %9, 2
  %cmp15 = icmp sgt i64 %shr14, 0
  br i1 %cmp15, label %if.then.17, label %if.else.21

if.then.17:                                       ; preds = %if.else
  %10 = load i64, i64* %value.addr, align 8
  %call18 = call i64 @XUINT(i64 %10)
  %11 = load i64, i64* %count.addr, align 8
  %shr19 = ashr i64 %11, 2
  %shl = shl i64 %call18, %shr19
  %shl20 = shl i64 %shl, 2
  %add = add i64 %shl20, 2
  store i64 %add, i64* %val, align 8
  br label %if.end.38

if.else.21:                                       ; preds = %if.else
  %12 = load i64, i64* %count.addr, align 8
  %shr22 = ashr i64 %12, 2
  %cmp23 = icmp sle i64 %shr22, -64
  br i1 %cmp23, label %if.then.25, label %if.else.32

if.then.25:                                       ; preds = %if.else.21
  %13 = load i64, i64* %value.addr, align 8
  %shr26 = ashr i64 %13, 2
  %cmp27 = icmp slt i64 %shr26, 0
  %cond = select i1 %cmp27, i32 -1, i32 0
  %conv29 = sext i32 %cond to i64
  %shl30 = shl i64 %conv29, 2
  %add31 = add i64 %shl30, 2
  store i64 %add31, i64* %val, align 8
  br label %if.end

if.else.32:                                       ; preds = %if.else.21
  %14 = load i64, i64* %value.addr, align 8
  %shr33 = ashr i64 %14, 2
  %15 = load i64, i64* %count.addr, align 8
  %shr34 = ashr i64 %15, 2
  %sub = sub nsw i64 0, %shr34
  %shr35 = ashr i64 %shr33, %sub
  %shl36 = shl i64 %shr35, 2
  %add37 = add i64 %shl36, 2
  store i64 %add37, i64* %val, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.32, %if.then.25
  br label %if.end.38

if.end.38:                                        ; preds = %if.end, %if.then.17
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then
  %16 = load i64, i64* %val, align 8
  ret i64 %16
}

declare i64 @XUINT(i64) #2

; Function Attrs: nounwind uwtable
define i64 @Flsh(i64 %value, i64 %count) #4 {
entry:
  %value.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %value, i64* %value.addr, align 8
  store i64 %count, i64* %count.addr, align 8
  %0 = load i64, i64* %value.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %and1 = and i32 %conv, -5
  %cmp = icmp eq i32 %and1, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 559)
  %1 = load i64, i64* %value.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call, i64 %1) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i64, i64* %count.addr, align 8
  %and3 = and i64 %4, 7
  %conv4 = trunc i64 %and3 to i32
  %and5 = and i32 %conv4, -5
  %cmp6 = icmp eq i32 %and5, 2
  br i1 %cmp6, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %cond.end
  br label %cond.end.11

cond.false.9:                                     ; preds = %cond.end
  %call10 = call i64 @builtin_lisp_symbol(i32 559)
  %5 = load i64, i64* %count.addr, align 8
  %6 = call i64 @wrong_type_argument(i64 %call10, i64 %5) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end.11

cond.end.11:                                      ; preds = %7, %cond.true.8
  %8 = load i64, i64* %count.addr, align 8
  %shr = ashr i64 %8, 2
  %cmp12 = icmp sge i64 %shr, 64
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.11
  store i64 2, i64* %val, align 8
  br label %if.end.33

if.else:                                          ; preds = %cond.end.11
  %9 = load i64, i64* %count.addr, align 8
  %shr14 = ashr i64 %9, 2
  %cmp15 = icmp sgt i64 %shr14, 0
  br i1 %cmp15, label %if.then.17, label %if.else.21

if.then.17:                                       ; preds = %if.else
  %10 = load i64, i64* %value.addr, align 8
  %call18 = call i64 @XUINT(i64 %10)
  %11 = load i64, i64* %count.addr, align 8
  %shr19 = ashr i64 %11, 2
  %shl = shl i64 %call18, %shr19
  %shl20 = shl i64 %shl, 2
  %add = add i64 %shl20, 2
  store i64 %add, i64* %val, align 8
  br label %if.end.32

if.else.21:                                       ; preds = %if.else
  %12 = load i64, i64* %count.addr, align 8
  %shr22 = ashr i64 %12, 2
  %cmp23 = icmp sle i64 %shr22, -64
  br i1 %cmp23, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %if.else.21
  store i64 2, i64* %val, align 8
  br label %if.end

if.else.26:                                       ; preds = %if.else.21
  %13 = load i64, i64* %value.addr, align 8
  %call27 = call i64 @XUINT(i64 %13)
  %14 = load i64, i64* %count.addr, align 8
  %shr28 = ashr i64 %14, 2
  %sub = sub nsw i64 0, %shr28
  %shr29 = lshr i64 %call27, %sub
  %shl30 = shl i64 %shr29, 2
  %add31 = add i64 %shl30, 2
  store i64 %add31, i64* %val, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.26, %if.then.25
  br label %if.end.32

if.end.32:                                        ; preds = %if.end, %if.then.17
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then
  %15 = load i64, i64* %val, align 8
  ret i64 %15
}

; Function Attrs: nounwind uwtable
define i64 @Fadd1(i64 %number) #4 {
entry:
  %retval = alloca i64, align 8
  %number.addr = alloca i64, align 8
  store i64 %number, i64* %number.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %number.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %1 = load i64, i64* %number.addr, align 8
  %call = call i32 @XMISCTYPE(i64 %1)
  %cmp2 = icmp eq i32 %call, 24236
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load i64, i64* %number.addr, align 8
  %call4 = call i64 @marker_position(i64 %2)
  %call5 = call i64 @make_natnum(i64 %call4)
  store i64 %call5, i64* %number.addr, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %do.body
  %3 = load i64, i64* %number.addr, align 8
  %call6 = call zeroext i1 @NUMBERP(i64 %3)
  br i1 %call6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %call8 = call i64 @builtin_lisp_symbol(i32 710)
  %4 = load i64, i64* %number.addr, align 8
  %5 = call i64 @wrong_type_argument(i64 %call8, i64 %4) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %6, %cond.true
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %7 = load i64, i64* %number.addr, align 8
  %and9 = and i64 %7, 7
  %conv10 = trunc i64 %and9 to i32
  %cmp11 = icmp eq i32 %conv10, 7
  br i1 %cmp11, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %do.end
  %8 = load i64, i64* %number.addr, align 8
  %call14 = call double @XFLOAT_DATA(i64 %8)
  %add = fadd double 1.000000e+00, %call14
  %call15 = call i64 @make_float(double %add)
  store i64 %call15, i64* %retval
  br label %return

if.end.16:                                        ; preds = %do.end
  %9 = load i64, i64* %number.addr, align 8
  %shr = ashr i64 %9, 2
  %add17 = add nsw i64 %shr, 1
  %shl = shl i64 %add17, 2
  %add18 = add i64 %shl, 2
  store i64 %add18, i64* %number.addr, align 8
  %10 = load i64, i64* %number.addr, align 8
  store i64 %10, i64* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.13
  %11 = load i64, i64* %retval
  ret i64 %11
}

declare i64 @make_float(double) #2

; Function Attrs: nounwind uwtable
define i64 @Fsub1(i64 %number) #4 {
entry:
  %retval = alloca i64, align 8
  %number.addr = alloca i64, align 8
  store i64 %number, i64* %number.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %number.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %1 = load i64, i64* %number.addr, align 8
  %call = call i32 @XMISCTYPE(i64 %1)
  %cmp2 = icmp eq i32 %call, 24236
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load i64, i64* %number.addr, align 8
  %call4 = call i64 @marker_position(i64 %2)
  %call5 = call i64 @make_natnum(i64 %call4)
  store i64 %call5, i64* %number.addr, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %do.body
  %3 = load i64, i64* %number.addr, align 8
  %call6 = call zeroext i1 @NUMBERP(i64 %3)
  br i1 %call6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %call8 = call i64 @builtin_lisp_symbol(i32 710)
  %4 = load i64, i64* %number.addr, align 8
  %5 = call i64 @wrong_type_argument(i64 %call8, i64 %4) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %6, %cond.true
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %7 = load i64, i64* %number.addr, align 8
  %and9 = and i64 %7, 7
  %conv10 = trunc i64 %and9 to i32
  %cmp11 = icmp eq i32 %conv10, 7
  br i1 %cmp11, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %do.end
  %8 = load i64, i64* %number.addr, align 8
  %call14 = call double @XFLOAT_DATA(i64 %8)
  %add = fadd double -1.000000e+00, %call14
  %call15 = call i64 @make_float(double %add)
  store i64 %call15, i64* %retval
  br label %return

if.end.16:                                        ; preds = %do.end
  %9 = load i64, i64* %number.addr, align 8
  %shr = ashr i64 %9, 2
  %sub = sub nsw i64 %shr, 1
  %shl = shl i64 %sub, 2
  %add17 = add i64 %shl, 2
  store i64 %add17, i64* %number.addr, align 8
  %10 = load i64, i64* %number.addr, align 8
  store i64 %10, i64* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.13
  %11 = load i64, i64* %retval
  ret i64 %11
}

; Function Attrs: nounwind uwtable
define i64 @Flognot(i64 %number) #4 {
entry:
  %number.addr = alloca i64, align 8
  store i64 %number, i64* %number.addr, align 8
  %0 = load i64, i64* %number.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %and1 = and i32 %conv, -5
  %cmp = icmp eq i32 %and1, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 559)
  %1 = load i64, i64* %number.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call, i64 %1) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i64, i64* %number.addr, align 8
  %shr = ashr i64 %4, 2
  %neg = xor i64 %shr, -1
  %shl = shl i64 %neg, 2
  %add = add i64 %shl, 2
  store i64 %add, i64* %number.addr, align 8
  %5 = load i64, i64* %number.addr, align 8
  ret i64 %5
}

; Function Attrs: nounwind readnone uwtable
define i64 @Fbyteorder() #3 {
entry:
  %i = alloca i32, align 4
  %order = alloca i32, align 4
  store i32 67305985, i32* %i, align 4
  %0 = bitcast i32* %i to i8*
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 1
  %cond = select i1 %cmp, i32 108, i32 66
  store i32 %cond, i32* %order, align 4
  %2 = load i32, i32* %order, align 4
  %conv2 = sext i32 %2 to i64
  %shl = shl i64 %conv2, 2
  %add = add i64 %shl, 2
  ret i64 %add
}

; Function Attrs: nounwind uwtable
define i64 @Fbool_vector_exclusive_or(i64 %a, i64 %b, i64 %c) #4 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %c.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  store i64 %c, i64* %c.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %1 = load i64, i64* %b.addr, align 8
  %2 = load i64, i64* %c.addr, align 8
  %call = call i64 @bool_vector_binop_driver(i64 %0, i64 %1, i64 %2, i32 0)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define internal i64 @bool_vector_binop_driver(i64 %a, i64 %b, i64 %dest, i32 %op) #4 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %dest.addr = alloca i64, align 8
  %op.addr = alloca i32, align 4
  %nr_bits = alloca i64, align 8
  %adata = alloca i64*, align 8
  %bdata = alloca i64*, align 8
  %destdata = alloca i64*, align 8
  %i = alloca i64, align 8
  %nr_words = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  store i64 %dest, i64* %dest.addr, align 8
  store i32 %op, i32* %op.addr, align 4
  store i64 0, i64* %i, align 8
  %0 = load i64, i64* %a.addr, align 8
  call void @CHECK_BOOL_VECTOR(i64 %0)
  %1 = load i64, i64* %b.addr, align 8
  call void @CHECK_BOOL_VECTOR(i64 %1)
  %2 = load i64, i64* %a.addr, align 8
  %call = call i64 @bool_vector_size(i64 %2)
  store i64 %call, i64* %nr_bits, align 8
  %3 = load i64, i64* %b.addr, align 8
  %call1 = call i64 @bool_vector_size(i64 %3)
  %4 = load i64, i64* %nr_bits, align 8
  %cmp = icmp ne i64 %call1, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i64, i64* %a.addr, align 8
  %6 = load i64, i64* %b.addr, align 8
  %7 = load i64, i64* %dest.addr, align 8
  call void @wrong_length_argument(i64 %5, i64 %6, i64 %7) #7
  unreachable

if.end:                                           ; preds = %entry
  %8 = load i64, i64* %nr_bits, align 8
  %call2 = call i64 @bool_vector_words(i64 %8)
  store i64 %call2, i64* %nr_words, align 8
  %9 = load i64, i64* %a.addr, align 8
  %call3 = call i64* @bool_vector_data(i64 %9)
  store i64* %call3, i64** %adata, align 8
  %10 = load i64, i64* %b.addr, align 8
  %call4 = call i64* @bool_vector_data(i64 %10)
  store i64* %call4, i64** %bdata, align 8
  %11 = load i64, i64* %dest.addr, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp6 = icmp eq i64 %11, %call5
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end
  %12 = load i64, i64* %nr_bits, align 8
  %call8 = call i64 @make_uninit_bool_vector(i64 %12)
  store i64 %call8, i64* %dest.addr, align 8
  %13 = load i64, i64* %dest.addr, align 8
  %call9 = call i64* @bool_vector_data(i64 %13)
  store i64* %call9, i64** %destdata, align 8
  br label %if.end.77

if.else:                                          ; preds = %if.end
  %14 = load i64, i64* %dest.addr, align 8
  call void @CHECK_BOOL_VECTOR(i64 %14)
  %15 = load i64, i64* %dest.addr, align 8
  %call10 = call i64* @bool_vector_data(i64 %15)
  store i64* %call10, i64** %destdata, align 8
  %16 = load i64, i64* %dest.addr, align 8
  %call11 = call i64 @bool_vector_size(i64 %16)
  %17 = load i64, i64* %nr_bits, align 8
  %cmp12 = icmp ne i64 %call11, %17
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.else
  %18 = load i64, i64* %a.addr, align 8
  %19 = load i64, i64* %b.addr, align 8
  %20 = load i64, i64* %dest.addr, align 8
  call void @wrong_length_argument(i64 %18, i64 %19, i64 %20) #7
  unreachable

if.end.14:                                        ; preds = %if.else
  %21 = load i32, i32* %op.addr, align 4
  switch i32 %21, label %sw.epilog [
    i32 0, label %sw.bb
    i32 4, label %sw.bb.21
    i32 1, label %sw.bb.34
    i32 2, label %sw.bb.47
    i32 3, label %sw.bb.61
  ]

sw.bb:                                            ; preds = %if.end.14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %22 = load i64, i64* %i, align 8
  %23 = load i64, i64* %nr_words, align 8
  %cmp15 = icmp slt i64 %22, %23
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i64, i64* %i, align 8
  %25 = load i64*, i64** %destdata, align 8
  %arrayidx = getelementptr inbounds i64, i64* %25, i64 %24
  %26 = load i64, i64* %arrayidx, align 8
  %27 = load i64, i64* %i, align 8
  %28 = load i64*, i64** %adata, align 8
  %arrayidx16 = getelementptr inbounds i64, i64* %28, i64 %27
  %29 = load i64, i64* %arrayidx16, align 8
  %30 = load i64, i64* %i, align 8
  %31 = load i64*, i64** %bdata, align 8
  %arrayidx17 = getelementptr inbounds i64, i64* %31, i64 %30
  %32 = load i64, i64* %arrayidx17, align 8
  %xor = xor i64 %29, %32
  %cmp18 = icmp ne i64 %26, %xor
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %for.body
  br label %set_dest

if.end.20:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.20
  %33 = load i64, i64* %i, align 8
  %inc = add nsw i64 %33, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.bb.21:                                         ; preds = %if.end.14
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.30, %sw.bb.21
  %34 = load i64, i64* %i, align 8
  %35 = load i64, i64* %nr_words, align 8
  %cmp23 = icmp slt i64 %34, %35
  br i1 %cmp23, label %for.body.24, label %for.end.32

for.body.24:                                      ; preds = %for.cond.22
  %36 = load i64, i64* %i, align 8
  %37 = load i64*, i64** %adata, align 8
  %arrayidx25 = getelementptr inbounds i64, i64* %37, i64 %36
  %38 = load i64, i64* %arrayidx25, align 8
  %39 = load i64, i64* %i, align 8
  %40 = load i64*, i64** %bdata, align 8
  %arrayidx26 = getelementptr inbounds i64, i64* %40, i64 %39
  %41 = load i64, i64* %arrayidx26, align 8
  %neg = xor i64 %41, -1
  %and = and i64 %38, %neg
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %for.body.24
  %call28 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call28, i64* %retval
  br label %return

if.end.29:                                        ; preds = %for.body.24
  br label %for.inc.30

for.inc.30:                                       ; preds = %if.end.29
  %42 = load i64, i64* %i, align 8
  %inc31 = add nsw i64 %42, 1
  store i64 %inc31, i64* %i, align 8
  br label %for.cond.22

for.end.32:                                       ; preds = %for.cond.22
  %call33 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call33, i64* %retval
  br label %return

sw.bb.34:                                         ; preds = %if.end.14
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.44, %sw.bb.34
  %43 = load i64, i64* %i, align 8
  %44 = load i64, i64* %nr_words, align 8
  %cmp36 = icmp slt i64 %43, %44
  br i1 %cmp36, label %for.body.37, label %for.end.46

for.body.37:                                      ; preds = %for.cond.35
  %45 = load i64, i64* %i, align 8
  %46 = load i64*, i64** %destdata, align 8
  %arrayidx38 = getelementptr inbounds i64, i64* %46, i64 %45
  %47 = load i64, i64* %arrayidx38, align 8
  %48 = load i64, i64* %i, align 8
  %49 = load i64*, i64** %adata, align 8
  %arrayidx39 = getelementptr inbounds i64, i64* %49, i64 %48
  %50 = load i64, i64* %arrayidx39, align 8
  %51 = load i64, i64* %i, align 8
  %52 = load i64*, i64** %bdata, align 8
  %arrayidx40 = getelementptr inbounds i64, i64* %52, i64 %51
  %53 = load i64, i64* %arrayidx40, align 8
  %or = or i64 %50, %53
  %cmp41 = icmp ne i64 %47, %or
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %for.body.37
  br label %set_dest

if.end.43:                                        ; preds = %for.body.37
  br label %for.inc.44

for.inc.44:                                       ; preds = %if.end.43
  %54 = load i64, i64* %i, align 8
  %inc45 = add nsw i64 %54, 1
  store i64 %inc45, i64* %i, align 8
  br label %for.cond.35

for.end.46:                                       ; preds = %for.cond.35
  br label %sw.epilog

sw.bb.47:                                         ; preds = %if.end.14
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.58, %sw.bb.47
  %55 = load i64, i64* %i, align 8
  %56 = load i64, i64* %nr_words, align 8
  %cmp49 = icmp slt i64 %55, %56
  br i1 %cmp49, label %for.body.50, label %for.end.60

for.body.50:                                      ; preds = %for.cond.48
  %57 = load i64, i64* %i, align 8
  %58 = load i64*, i64** %destdata, align 8
  %arrayidx51 = getelementptr inbounds i64, i64* %58, i64 %57
  %59 = load i64, i64* %arrayidx51, align 8
  %60 = load i64, i64* %i, align 8
  %61 = load i64*, i64** %adata, align 8
  %arrayidx52 = getelementptr inbounds i64, i64* %61, i64 %60
  %62 = load i64, i64* %arrayidx52, align 8
  %63 = load i64, i64* %i, align 8
  %64 = load i64*, i64** %bdata, align 8
  %arrayidx53 = getelementptr inbounds i64, i64* %64, i64 %63
  %65 = load i64, i64* %arrayidx53, align 8
  %and54 = and i64 %62, %65
  %cmp55 = icmp ne i64 %59, %and54
  br i1 %cmp55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %for.body.50
  br label %set_dest

if.end.57:                                        ; preds = %for.body.50
  br label %for.inc.58

for.inc.58:                                       ; preds = %if.end.57
  %66 = load i64, i64* %i, align 8
  %inc59 = add nsw i64 %66, 1
  store i64 %inc59, i64* %i, align 8
  br label %for.cond.48

for.end.60:                                       ; preds = %for.cond.48
  br label %sw.epilog

sw.bb.61:                                         ; preds = %if.end.14
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.73, %sw.bb.61
  %67 = load i64, i64* %i, align 8
  %68 = load i64, i64* %nr_words, align 8
  %cmp63 = icmp slt i64 %67, %68
  br i1 %cmp63, label %for.body.64, label %for.end.75

for.body.64:                                      ; preds = %for.cond.62
  %69 = load i64, i64* %i, align 8
  %70 = load i64*, i64** %destdata, align 8
  %arrayidx65 = getelementptr inbounds i64, i64* %70, i64 %69
  %71 = load i64, i64* %arrayidx65, align 8
  %72 = load i64, i64* %i, align 8
  %73 = load i64*, i64** %adata, align 8
  %arrayidx66 = getelementptr inbounds i64, i64* %73, i64 %72
  %74 = load i64, i64* %arrayidx66, align 8
  %75 = load i64, i64* %i, align 8
  %76 = load i64*, i64** %bdata, align 8
  %arrayidx67 = getelementptr inbounds i64, i64* %76, i64 %75
  %77 = load i64, i64* %arrayidx67, align 8
  %neg68 = xor i64 %77, -1
  %and69 = and i64 %74, %neg68
  %cmp70 = icmp ne i64 %71, %and69
  br i1 %cmp70, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %for.body.64
  br label %set_dest

if.end.72:                                        ; preds = %for.body.64
  br label %for.inc.73

for.inc.73:                                       ; preds = %if.end.72
  %78 = load i64, i64* %i, align 8
  %inc74 = add nsw i64 %78, 1
  store i64 %inc74, i64* %i, align 8
  br label %for.cond.62

for.end.75:                                       ; preds = %for.cond.62
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.14, %for.end.75, %for.end.60, %for.end.46, %for.end
  %call76 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call76, i64* %retval
  br label %return

if.end.77:                                        ; preds = %if.then.7
  br label %set_dest

set_dest:                                         ; preds = %if.end.77, %if.then.71, %if.then.56, %if.then.42, %if.then.19
  %79 = load i32, i32* %op.addr, align 4
  switch i32 %79, label %sw.default [
    i32 0, label %sw.bb.78
    i32 1, label %sw.bb.89
    i32 2, label %sw.bb.100
    i32 3, label %sw.bb.111
  ]

sw.bb.78:                                         ; preds = %set_dest
  br label %for.cond.79

for.cond.79:                                      ; preds = %for.inc.86, %sw.bb.78
  %80 = load i64, i64* %i, align 8
  %81 = load i64, i64* %nr_words, align 8
  %cmp80 = icmp slt i64 %80, %81
  br i1 %cmp80, label %for.body.81, label %for.end.88

for.body.81:                                      ; preds = %for.cond.79
  %82 = load i64, i64* %i, align 8
  %83 = load i64*, i64** %adata, align 8
  %arrayidx82 = getelementptr inbounds i64, i64* %83, i64 %82
  %84 = load i64, i64* %arrayidx82, align 8
  %85 = load i64, i64* %i, align 8
  %86 = load i64*, i64** %bdata, align 8
  %arrayidx83 = getelementptr inbounds i64, i64* %86, i64 %85
  %87 = load i64, i64* %arrayidx83, align 8
  %xor84 = xor i64 %84, %87
  %88 = load i64, i64* %i, align 8
  %89 = load i64*, i64** %destdata, align 8
  %arrayidx85 = getelementptr inbounds i64, i64* %89, i64 %88
  store i64 %xor84, i64* %arrayidx85, align 8
  br label %for.inc.86

for.inc.86:                                       ; preds = %for.body.81
  %90 = load i64, i64* %i, align 8
  %inc87 = add nsw i64 %90, 1
  store i64 %inc87, i64* %i, align 8
  br label %for.cond.79

for.end.88:                                       ; preds = %for.cond.79
  br label %sw.epilog.123

sw.bb.89:                                         ; preds = %set_dest
  br label %for.cond.90

for.cond.90:                                      ; preds = %for.inc.97, %sw.bb.89
  %91 = load i64, i64* %i, align 8
  %92 = load i64, i64* %nr_words, align 8
  %cmp91 = icmp slt i64 %91, %92
  br i1 %cmp91, label %for.body.92, label %for.end.99

for.body.92:                                      ; preds = %for.cond.90
  %93 = load i64, i64* %i, align 8
  %94 = load i64*, i64** %adata, align 8
  %arrayidx93 = getelementptr inbounds i64, i64* %94, i64 %93
  %95 = load i64, i64* %arrayidx93, align 8
  %96 = load i64, i64* %i, align 8
  %97 = load i64*, i64** %bdata, align 8
  %arrayidx94 = getelementptr inbounds i64, i64* %97, i64 %96
  %98 = load i64, i64* %arrayidx94, align 8
  %or95 = or i64 %95, %98
  %99 = load i64, i64* %i, align 8
  %100 = load i64*, i64** %destdata, align 8
  %arrayidx96 = getelementptr inbounds i64, i64* %100, i64 %99
  store i64 %or95, i64* %arrayidx96, align 8
  br label %for.inc.97

for.inc.97:                                       ; preds = %for.body.92
  %101 = load i64, i64* %i, align 8
  %inc98 = add nsw i64 %101, 1
  store i64 %inc98, i64* %i, align 8
  br label %for.cond.90

for.end.99:                                       ; preds = %for.cond.90
  br label %sw.epilog.123

sw.bb.100:                                        ; preds = %set_dest
  br label %for.cond.101

for.cond.101:                                     ; preds = %for.inc.108, %sw.bb.100
  %102 = load i64, i64* %i, align 8
  %103 = load i64, i64* %nr_words, align 8
  %cmp102 = icmp slt i64 %102, %103
  br i1 %cmp102, label %for.body.103, label %for.end.110

for.body.103:                                     ; preds = %for.cond.101
  %104 = load i64, i64* %i, align 8
  %105 = load i64*, i64** %adata, align 8
  %arrayidx104 = getelementptr inbounds i64, i64* %105, i64 %104
  %106 = load i64, i64* %arrayidx104, align 8
  %107 = load i64, i64* %i, align 8
  %108 = load i64*, i64** %bdata, align 8
  %arrayidx105 = getelementptr inbounds i64, i64* %108, i64 %107
  %109 = load i64, i64* %arrayidx105, align 8
  %and106 = and i64 %106, %109
  %110 = load i64, i64* %i, align 8
  %111 = load i64*, i64** %destdata, align 8
  %arrayidx107 = getelementptr inbounds i64, i64* %111, i64 %110
  store i64 %and106, i64* %arrayidx107, align 8
  br label %for.inc.108

for.inc.108:                                      ; preds = %for.body.103
  %112 = load i64, i64* %i, align 8
  %inc109 = add nsw i64 %112, 1
  store i64 %inc109, i64* %i, align 8
  br label %for.cond.101

for.end.110:                                      ; preds = %for.cond.101
  br label %sw.epilog.123

sw.bb.111:                                        ; preds = %set_dest
  br label %for.cond.112

for.cond.112:                                     ; preds = %for.inc.120, %sw.bb.111
  %113 = load i64, i64* %i, align 8
  %114 = load i64, i64* %nr_words, align 8
  %cmp113 = icmp slt i64 %113, %114
  br i1 %cmp113, label %for.body.114, label %for.end.122

for.body.114:                                     ; preds = %for.cond.112
  %115 = load i64, i64* %i, align 8
  %116 = load i64*, i64** %adata, align 8
  %arrayidx115 = getelementptr inbounds i64, i64* %116, i64 %115
  %117 = load i64, i64* %arrayidx115, align 8
  %118 = load i64, i64* %i, align 8
  %119 = load i64*, i64** %bdata, align 8
  %arrayidx116 = getelementptr inbounds i64, i64* %119, i64 %118
  %120 = load i64, i64* %arrayidx116, align 8
  %neg117 = xor i64 %120, -1
  %and118 = and i64 %117, %neg117
  %121 = load i64, i64* %i, align 8
  %122 = load i64*, i64** %destdata, align 8
  %arrayidx119 = getelementptr inbounds i64, i64* %122, i64 %121
  store i64 %and118, i64* %arrayidx119, align 8
  br label %for.inc.120

for.inc.120:                                      ; preds = %for.body.114
  %123 = load i64, i64* %i, align 8
  %inc121 = add nsw i64 %123, 1
  store i64 %inc121, i64* %i, align 8
  br label %for.cond.112

for.end.122:                                      ; preds = %for.cond.112
  br label %sw.epilog.123

sw.default:                                       ; preds = %set_dest
  unreachable

sw.epilog.123:                                    ; preds = %for.end.122, %for.end.110, %for.end.99, %for.end.88
  %124 = load i64, i64* %dest.addr, align 8
  store i64 %124, i64* %retval
  br label %return

return:                                           ; preds = %sw.epilog.123, %sw.epilog, %for.end.32, %if.then.27
  %125 = load i64, i64* %retval
  ret i64 %125
}

; Function Attrs: nounwind uwtable
define i64 @Fbool_vector_union(i64 %a, i64 %b, i64 %c) #4 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %c.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  store i64 %c, i64* %c.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %1 = load i64, i64* %b.addr, align 8
  %2 = load i64, i64* %c.addr, align 8
  %call = call i64 @bool_vector_binop_driver(i64 %0, i64 %1, i64 %2, i32 1)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @Fbool_vector_intersection(i64 %a, i64 %b, i64 %c) #4 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %c.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  store i64 %c, i64* %c.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %1 = load i64, i64* %b.addr, align 8
  %2 = load i64, i64* %c.addr, align 8
  %call = call i64 @bool_vector_binop_driver(i64 %0, i64 %1, i64 %2, i32 2)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @Fbool_vector_set_difference(i64 %a, i64 %b, i64 %c) #4 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %c.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  store i64 %c, i64* %c.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %1 = load i64, i64* %b.addr, align 8
  %2 = load i64, i64* %c.addr, align 8
  %call = call i64 @bool_vector_binop_driver(i64 %0, i64 %1, i64 %2, i32 3)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @Fbool_vector_subsetp(i64 %a, i64 %b) #4 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %1 = load i64, i64* %b.addr, align 8
  %2 = load i64, i64* %b.addr, align 8
  %call = call i64 @bool_vector_binop_driver(i64 %0, i64 %1, i64 %2, i32 4)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @Fbool_vector_not(i64 %a, i64 %b) #4 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %nr_bits = alloca i64, align 8
  %bdata = alloca i64*, align 8
  %adata = alloca i64*, align 8
  %i = alloca i64, align 8
  %mword = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  call void @CHECK_BOOL_VECTOR(i64 %0)
  %1 = load i64, i64* %a.addr, align 8
  %call = call i64 @bool_vector_size(i64 %1)
  store i64 %call, i64* %nr_bits, align 8
  %2 = load i64, i64* %b.addr, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %2, %call1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %nr_bits, align 8
  %call2 = call i64 @make_uninit_bool_vector(i64 %3)
  store i64 %call2, i64* %b.addr, align 8
  br label %if.end.7

if.else:                                          ; preds = %entry
  %4 = load i64, i64* %b.addr, align 8
  call void @CHECK_BOOL_VECTOR(i64 %4)
  %5 = load i64, i64* %b.addr, align 8
  %call3 = call i64 @bool_vector_size(i64 %5)
  %6 = load i64, i64* %nr_bits, align 8
  %cmp4 = icmp ne i64 %call3, %6
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.else
  %7 = load i64, i64* %a.addr, align 8
  %8 = load i64, i64* %b.addr, align 8
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  call void @wrong_length_argument(i64 %7, i64 %8, i64 %call6) #7
  unreachable

if.end:                                           ; preds = %if.else
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %9 = load i64, i64* %b.addr, align 8
  %call8 = call i64* @bool_vector_data(i64 %9)
  store i64* %call8, i64** %bdata, align 8
  %10 = load i64, i64* %a.addr, align 8
  %call9 = call i64* @bool_vector_data(i64 %10)
  store i64* %call9, i64** %adata, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %11 = load i64, i64* %i, align 8
  %12 = load i64, i64* %nr_bits, align 8
  %div = sdiv i64 %12, 64
  %cmp10 = icmp slt i64 %11, %div
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i64, i64* %i, align 8
  %14 = load i64*, i64** %adata, align 8
  %arrayidx = getelementptr inbounds i64, i64* %14, i64 %13
  %15 = load i64, i64* %arrayidx, align 8
  %neg = xor i64 %15, -1
  %and = and i64 -1, %neg
  %16 = load i64, i64* %i, align 8
  %17 = load i64*, i64** %bdata, align 8
  %arrayidx11 = getelementptr inbounds i64, i64* %17, i64 %16
  store i64 %and, i64* %arrayidx11, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i64, i64* %i, align 8
  %inc = add nsw i64 %18, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i64, i64* %nr_bits, align 8
  %rem = srem i64 %19, 64
  %tobool = icmp ne i64 %rem, 0
  br i1 %tobool, label %if.then.12, label %if.end.20

if.then.12:                                       ; preds = %for.end
  %20 = load i64, i64* %i, align 8
  %21 = load i64*, i64** %adata, align 8
  %arrayidx13 = getelementptr inbounds i64, i64* %21, i64 %20
  %22 = load i64, i64* %arrayidx13, align 8
  %call14 = call i64 @bits_word_to_host_endian(i64 %22)
  store i64 %call14, i64* %mword, align 8
  %23 = load i64, i64* %mword, align 8
  %neg15 = xor i64 %23, -1
  store i64 %neg15, i64* %mword, align 8
  %24 = load i64, i64* %nr_bits, align 8
  %call16 = call i64 @bool_vector_spare_mask(i64 %24)
  %25 = load i64, i64* %mword, align 8
  %and17 = and i64 %25, %call16
  store i64 %and17, i64* %mword, align 8
  %26 = load i64, i64* %mword, align 8
  %call18 = call i64 @bits_word_to_host_endian(i64 %26)
  %27 = load i64, i64* %i, align 8
  %28 = load i64*, i64** %bdata, align 8
  %arrayidx19 = getelementptr inbounds i64, i64* %28, i64 %27
  store i64 %call18, i64* %arrayidx19, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.12, %for.end
  %29 = load i64, i64* %b.addr, align 8
  ret i64 %29
}

declare void @CHECK_BOOL_VECTOR(i64) #2

declare i64 @make_uninit_bool_vector(i64) #2

; Function Attrs: noreturn nounwind uwtable
define internal void @wrong_length_argument(i64 %a1, i64 %a2, i64 %a3) #0 {
entry:
  %a1.addr = alloca i64, align 8
  %a2.addr = alloca i64, align 8
  %a3.addr = alloca i64, align 8
  %size1 = alloca i64, align 8
  %size2 = alloca i64, align 8
  store i64 %a1, i64* %a1.addr, align 8
  store i64 %a2, i64* %a2.addr, align 8
  store i64 %a3, i64* %a3.addr, align 8
  %0 = load i64, i64* %a1.addr, align 8
  %call = call i64 @bool_vector_size(i64 %0)
  %shl = shl i64 %call, 2
  %add = add i64 %shl, 2
  store i64 %add, i64* %size1, align 8
  %1 = load i64, i64* %a2.addr, align 8
  %call1 = call i64 @bool_vector_size(i64 %1)
  %shl2 = shl i64 %call1, 2
  %add3 = add i64 %shl2, 2
  store i64 %add3, i64* %size2, align 8
  %2 = load i64, i64* %a3.addr, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %2, %call4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call5 = call i64 @builtin_lisp_symbol(i32 1042)
  %3 = load i64, i64* %size1, align 8
  %4 = load i64, i64* %size2, align 8
  call void @xsignal2(i64 %call5, i64 %3, i64 %4) #7
  unreachable

if.else:                                          ; preds = %entry
  %call6 = call i64 @builtin_lisp_symbol(i32 1042)
  %5 = load i64, i64* %size1, align 8
  %6 = load i64, i64* %size2, align 8
  %7 = load i64, i64* %a3.addr, align 8
  %call7 = call i64 @bool_vector_size(i64 %7)
  %shl8 = shl i64 %call7, 2
  %add9 = add i64 %shl8, 2
  call void @xsignal3(i64 %call6, i64 %5, i64 %6, i64 %add9) #7
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare i64* @bool_vector_data(i64) #2

; Function Attrs: nounwind uwtable
define internal i64 @bits_word_to_host_endian(i64 %val) #4 {
entry:
  %val.addr = alloca i64, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  ret i64 %0
}

; Function Attrs: nounwind uwtable
define internal i64 @bool_vector_spare_mask(i64 %nr_bits) #4 {
entry:
  %nr_bits.addr = alloca i64, align 8
  store i64 %nr_bits, i64* %nr_bits.addr, align 8
  %0 = load i64, i64* %nr_bits.addr, align 8
  %rem = srem i64 %0, 64
  %shl = shl i64 1, %rem
  %sub = sub i64 %shl, 1
  ret i64 %sub
}

; Function Attrs: nounwind uwtable
define i64 @Fbool_vector_count_population(i64 %a) #4 {
entry:
  %a.addr = alloca i64, align 8
  %count = alloca i64, align 8
  %nr_bits = alloca i64, align 8
  %adata = alloca i64*, align 8
  %i = alloca i64, align 8
  %nwords = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  call void @CHECK_BOOL_VECTOR(i64 %0)
  %1 = load i64, i64* %a.addr, align 8
  %call = call i64 @bool_vector_size(i64 %1)
  store i64 %call, i64* %nr_bits, align 8
  %2 = load i64, i64* %nr_bits, align 8
  %call1 = call i64 @bool_vector_words(i64 %2)
  store i64 %call1, i64* %nwords, align 8
  store i64 0, i64* %count, align 8
  %3 = load i64, i64* %a.addr, align 8
  %call2 = call i64* @bool_vector_data(i64 %3)
  store i64* %call2, i64** %adata, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i64, i64* %i, align 8
  %5 = load i64, i64* %nwords, align 8
  %cmp = icmp slt i64 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i64, i64* %i, align 8
  %7 = load i64*, i64** %adata, align 8
  %arrayidx = getelementptr inbounds i64, i64* %7, i64 %6
  %8 = load i64, i64* %arrayidx, align 8
  %call3 = call i32 @count_one_bits_word(i64 %8)
  %conv = sext i32 %call3 to i64
  %9 = load i64, i64* %count, align 8
  %add = add nsw i64 %9, %conv
  store i64 %add, i64* %count, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i64, i64* %i, align 8
  %inc = add nsw i64 %10, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i64, i64* %count, align 8
  %shl = shl i64 %11, 2
  %add4 = add i64 %shl, 2
  ret i64 %add4
}

declare i64 @bool_vector_words(i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @count_one_bits_word(i64 %w) #4 {
entry:
  %w.addr = alloca i64, align 8
  store i64 %w, i64* %w.addr, align 8
  %0 = load i64, i64* %w.addr, align 8
  %call = call i32 @count_one_bits_l(i64 %0)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i64 @Fbool_vector_count_consecutive(i64 %a, i64 %b, i64 %i) #4 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %i.addr = alloca i64, align 8
  %count = alloca i64, align 8
  %nr_bits = alloca i64, align 8
  %offset = alloca i32, align 4
  %adata = alloca i64*, align 8
  %twiddle = alloca i64, align 8
  %mword = alloca i64, align 8
  %pos = alloca i64, align 8
  %pos0 = alloca i64, align 8
  %nr_words = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  call void @CHECK_BOOL_VECTOR(i64 %0)
  %1 = load i64, i64* %i.addr, align 8
  call void @CHECK_NATNUM(i64 %1)
  %2 = load i64, i64* %a.addr, align 8
  %call = call i64 @bool_vector_size(i64 %2)
  store i64 %call, i64* %nr_bits, align 8
  %3 = load i64, i64* %i.addr, align 8
  %shr = ashr i64 %3, 2
  %4 = load i64, i64* %nr_bits, align 8
  %cmp = icmp sgt i64 %shr, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i64, i64* %a.addr, align 8
  %6 = load i64, i64* %i.addr, align 8
  call void @args_out_of_range(i64 %5, i64 %6) #7
  unreachable

if.end:                                           ; preds = %entry
  %7 = load i64, i64* %a.addr, align 8
  %call1 = call i64* @bool_vector_data(i64 %7)
  store i64* %call1, i64** %adata, align 8
  %8 = load i64, i64* %nr_bits, align 8
  %call2 = call i64 @bool_vector_words(i64 %8)
  store i64 %call2, i64* %nr_words, align 8
  %9 = load i64, i64* %i.addr, align 8
  %shr3 = ashr i64 %9, 2
  %div = sdiv i64 %shr3, 64
  store i64 %div, i64* %pos, align 8
  %10 = load i64, i64* %i.addr, align 8
  %shr4 = ashr i64 %10, 2
  %rem = srem i64 %shr4, 64
  %conv = trunc i64 %rem to i32
  store i32 %conv, i32* %offset, align 4
  store i64 0, i64* %count, align 8
  %11 = load i64, i64* %b.addr, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp6 = icmp eq i64 %11, %call5
  %cond = select i1 %cmp6, i64 0, i64 -1
  store i64 %cond, i64* %twiddle, align 8
  %12 = load i64, i64* %pos, align 8
  %13 = load i64, i64* %nr_words, align 8
  %cmp8 = icmp slt i64 %12, %13
  br i1 %cmp8, label %land.lhs.true, label %if.end.25

land.lhs.true:                                    ; preds = %if.end
  %14 = load i32, i32* %offset, align 4
  %cmp10 = icmp ne i32 %14, 0
  br i1 %cmp10, label %if.then.12, label %if.end.25

if.then.12:                                       ; preds = %land.lhs.true
  %15 = load i64, i64* %pos, align 8
  %16 = load i64*, i64** %adata, align 8
  %arrayidx = getelementptr inbounds i64, i64* %16, i64 %15
  %17 = load i64, i64* %arrayidx, align 8
  %call13 = call i64 @bits_word_to_host_endian(i64 %17)
  store i64 %call13, i64* %mword, align 8
  %18 = load i64, i64* %twiddle, align 8
  %19 = load i64, i64* %mword, align 8
  %xor = xor i64 %19, %18
  store i64 %xor, i64* %mword, align 8
  %20 = load i32, i32* %offset, align 4
  %21 = load i64, i64* %mword, align 8
  %sh_prom = zext i32 %20 to i64
  %shr14 = lshr i64 %21, %sh_prom
  store i64 %shr14, i64* %mword, align 8
  %22 = load i32, i32* %offset, align 4
  %sub = sub nsw i32 64, %22
  %sh_prom15 = zext i32 %sub to i64
  %shl = shl i64 1, %sh_prom15
  %23 = load i64, i64* %mword, align 8
  %or = or i64 %23, %shl
  store i64 %or, i64* %mword, align 8
  %24 = load i64, i64* %mword, align 8
  %call16 = call i32 @count_trailing_zero_bits(i64 %24)
  %conv17 = sext i32 %call16 to i64
  store i64 %conv17, i64* %count, align 8
  %25 = load i64, i64* %pos, align 8
  %inc = add nsw i64 %25, 1
  store i64 %inc, i64* %pos, align 8
  %26 = load i64, i64* %count, align 8
  %27 = load i32, i32* %offset, align 4
  %conv18 = sext i32 %27 to i64
  %add = add nsw i64 %26, %conv18
  %cmp19 = icmp slt i64 %add, 64
  br i1 %cmp19, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %if.then.12
  %28 = load i64, i64* %count, align 8
  %shl22 = shl i64 %28, 2
  %add23 = add i64 %shl22, 2
  store i64 %add23, i64* %retval
  br label %return

if.end.24:                                        ; preds = %if.then.12
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %land.lhs.true, %if.end
  %29 = load i64, i64* %pos, align 8
  store i64 %29, i64* %pos0, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.25
  %30 = load i64, i64* %pos, align 8
  %31 = load i64, i64* %nr_words, align 8
  %cmp26 = icmp slt i64 %30, %31
  br i1 %cmp26, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %32 = load i64, i64* %pos, align 8
  %33 = load i64*, i64** %adata, align 8
  %arrayidx28 = getelementptr inbounds i64, i64* %33, i64 %32
  %34 = load i64, i64* %arrayidx28, align 8
  %35 = load i64, i64* %twiddle, align 8
  %cmp29 = icmp eq i64 %34, %35
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %36 = phi i1 [ false, %while.cond ], [ %cmp29, %land.rhs ]
  br i1 %36, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %37 = load i64, i64* %pos, align 8
  %inc31 = add nsw i64 %37, 1
  store i64 %inc31, i64* %pos, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %38 = load i64, i64* %pos, align 8
  %39 = load i64, i64* %pos0, align 8
  %sub32 = sub nsw i64 %38, %39
  %mul = mul nsw i64 %sub32, 64
  %40 = load i64, i64* %count, align 8
  %add33 = add nsw i64 %40, %mul
  store i64 %add33, i64* %count, align 8
  %41 = load i64, i64* %pos, align 8
  %42 = load i64, i64* %nr_words, align 8
  %cmp34 = icmp slt i64 %41, %42
  br i1 %cmp34, label %if.then.36, label %if.else

if.then.36:                                       ; preds = %while.end
  %43 = load i64, i64* %pos, align 8
  %44 = load i64*, i64** %adata, align 8
  %arrayidx37 = getelementptr inbounds i64, i64* %44, i64 %43
  %45 = load i64, i64* %arrayidx37, align 8
  %call38 = call i64 @bits_word_to_host_endian(i64 %45)
  store i64 %call38, i64* %mword, align 8
  %46 = load i64, i64* %twiddle, align 8
  %47 = load i64, i64* %mword, align 8
  %xor39 = xor i64 %47, %46
  store i64 %xor39, i64* %mword, align 8
  %48 = load i64, i64* %mword, align 8
  %call40 = call i32 @count_trailing_zero_bits(i64 %48)
  %conv41 = sext i32 %call40 to i64
  %49 = load i64, i64* %count, align 8
  %add42 = add nsw i64 %49, %conv41
  store i64 %add42, i64* %count, align 8
  br label %if.end.51

if.else:                                          ; preds = %while.end
  %50 = load i64, i64* %nr_bits, align 8
  %rem43 = srem i64 %50, 64
  %cmp44 = icmp ne i64 %rem43, 0
  br i1 %cmp44, label %if.then.46, label %if.end.50

if.then.46:                                       ; preds = %if.else
  %51 = load i64, i64* %nr_bits, align 8
  %rem47 = srem i64 %51, 64
  %sub48 = sub nsw i64 64, %rem47
  %52 = load i64, i64* %count, align 8
  %sub49 = sub nsw i64 %52, %sub48
  store i64 %sub49, i64* %count, align 8
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.46, %if.else
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.then.36
  %53 = load i64, i64* %count, align 8
  %shl52 = shl i64 %53, 2
  %add53 = add i64 %shl52, 2
  store i64 %add53, i64* %retval
  br label %return

return:                                           ; preds = %if.end.51, %if.then.21
  %54 = load i64, i64* %retval
  ret i64 %54
}

declare void @CHECK_NATNUM(i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @count_trailing_zero_bits(i64 %val) #4 {
entry:
  %val.addr = alloca i64, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %call = call i32 @count_trailing_zeros_l(i64 %0)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @syms_of_data() #4 {
entry:
  %error_tail = alloca i64, align 8
  %arith_tail = alloca i64, align 8
  %call = call i64 @builtin_lisp_symbol(i32 372)
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %call2 = call i64 @pure_cons(i64 %call, i64 %call1)
  store i64 %call2, i64* %error_tail, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 372)
  %call4 = call i64 @builtin_lisp_symbol(i32 373)
  %0 = load i64, i64* %error_tail, align 8
  %call5 = call i64 @Fput(i64 %call3, i64 %call4, i64 %0)
  %call6 = call i64 @builtin_lisp_symbol(i32 372)
  %call7 = call i64 @builtin_lisp_symbol(i32 374)
  %call8 = call i64 @build_pure_c_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0))
  %call9 = call i64 @Fput(i64 %call6, i64 %call7, i64 %call8)
  %call10 = call i64 @builtin_lisp_symbol(i32 782)
  %call11 = call i64 @builtin_lisp_symbol(i32 373)
  %call12 = call i64 @builtin_lisp_symbol(i32 782)
  %call13 = call i64 @builtin_lisp_symbol(i32 0)
  %call14 = call i64 @pure_cons(i64 %call12, i64 %call13)
  %call15 = call i64 @Fput(i64 %call10, i64 %call11, i64 %call14)
  %call16 = call i64 @builtin_lisp_symbol(i32 782)
  %call17 = call i64 @builtin_lisp_symbol(i32 374)
  %call18 = call i64 @build_pure_c_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0))
  %call19 = call i64 @Fput(i64 %call16, i64 %call17, i64 %call18)
  %call20 = call i64 @builtin_lisp_symbol(i32 981)
  %call21 = call i64 @builtin_lisp_symbol(i32 373)
  %call22 = call i64 @builtin_lisp_symbol(i32 981)
  %1 = load i64, i64* %error_tail, align 8
  %call23 = call i64 @pure_cons(i64 %call22, i64 %1)
  %call24 = call i64 @Fput(i64 %call20, i64 %call21, i64 %call23)
  %call25 = call i64 @builtin_lisp_symbol(i32 981)
  %call26 = call i64 @builtin_lisp_symbol(i32 374)
  %call27 = call i64 @build_pure_c_string(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0))
  %call28 = call i64 @Fput(i64 %call25, i64 %call26, i64 %call27)
  %call29 = call i64 @builtin_lisp_symbol(i32 1042)
  %call30 = call i64 @builtin_lisp_symbol(i32 373)
  %call31 = call i64 @builtin_lisp_symbol(i32 1042)
  %2 = load i64, i64* %error_tail, align 8
  %call32 = call i64 @pure_cons(i64 %call31, i64 %2)
  %call33 = call i64 @Fput(i64 %call29, i64 %call30, i64 %call32)
  %call34 = call i64 @builtin_lisp_symbol(i32 1042)
  %call35 = call i64 @builtin_lisp_symbol(i32 374)
  %call36 = call i64 @build_pure_c_string(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0))
  %call37 = call i64 @Fput(i64 %call34, i64 %call35, i64 %call36)
  %call38 = call i64 @builtin_lisp_symbol(i32 1044)
  %call39 = call i64 @builtin_lisp_symbol(i32 373)
  %call40 = call i64 @builtin_lisp_symbol(i32 1044)
  %3 = load i64, i64* %error_tail, align 8
  %call41 = call i64 @pure_cons(i64 %call40, i64 %3)
  %call42 = call i64 @Fput(i64 %call38, i64 %call39, i64 %call41)
  %call43 = call i64 @builtin_lisp_symbol(i32 1044)
  %call44 = call i64 @builtin_lisp_symbol(i32 374)
  %call45 = call i64 @build_pure_c_string(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0))
  %call46 = call i64 @Fput(i64 %call43, i64 %call44, i64 %call45)
  %call47 = call i64 @builtin_lisp_symbol(i32 177)
  %call48 = call i64 @builtin_lisp_symbol(i32 373)
  %call49 = call i64 @builtin_lisp_symbol(i32 177)
  %4 = load i64, i64* %error_tail, align 8
  %call50 = call i64 @pure_cons(i64 %call49, i64 %4)
  %call51 = call i64 @Fput(i64 %call47, i64 %call48, i64 %call50)
  %call52 = call i64 @builtin_lisp_symbol(i32 177)
  %call53 = call i64 @builtin_lisp_symbol(i32 374)
  %call54 = call i64 @build_pure_c_string(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0))
  %call55 = call i64 @Fput(i64 %call52, i64 %call53, i64 %call54)
  %call56 = call i64 @builtin_lisp_symbol(i32 1006)
  %call57 = call i64 @builtin_lisp_symbol(i32 373)
  %call58 = call i64 @builtin_lisp_symbol(i32 1006)
  %5 = load i64, i64* %error_tail, align 8
  %call59 = call i64 @pure_cons(i64 %call58, i64 %5)
  %call60 = call i64 @Fput(i64 %call56, i64 %call57, i64 %call59)
  %call61 = call i64 @builtin_lisp_symbol(i32 1006)
  %call62 = call i64 @builtin_lisp_symbol(i32 374)
  %call63 = call i64 @build_pure_c_string(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i32 0, i32 0))
  %call64 = call i64 @Fput(i64 %call61, i64 %call62, i64 %call63)
  %call65 = call i64 @builtin_lisp_symbol(i32 312)
  %call66 = call i64 @builtin_lisp_symbol(i32 373)
  %call67 = call i64 @builtin_lisp_symbol(i32 312)
  %6 = load i64, i64* %error_tail, align 8
  %call68 = call i64 @pure_cons(i64 %call67, i64 %6)
  %call69 = call i64 @Fput(i64 %call65, i64 %call66, i64 %call68)
  %call70 = call i64 @builtin_lisp_symbol(i32 312)
  %call71 = call i64 @builtin_lisp_symbol(i32 374)
  %call72 = call i64 @build_pure_c_string(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.20, i32 0, i32 0))
  %call73 = call i64 @Fput(i64 %call70, i64 %call71, i64 %call72)
  %call74 = call i64 @builtin_lisp_symbol(i32 313)
  %call75 = call i64 @builtin_lisp_symbol(i32 373)
  %call76 = call i64 @builtin_lisp_symbol(i32 313)
  %7 = load i64, i64* %error_tail, align 8
  %call77 = call i64 @pure_cons(i64 %call76, i64 %7)
  %call78 = call i64 @Fput(i64 %call74, i64 %call75, i64 %call77)
  %call79 = call i64 @builtin_lisp_symbol(i32 313)
  %call80 = call i64 @builtin_lisp_symbol(i32 374)
  %call81 = call i64 @build_pure_c_string(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.21, i32 0, i32 0))
  %call82 = call i64 @Fput(i64 %call79, i64 %call80, i64 %call81)
  %call83 = call i64 @builtin_lisp_symbol(i32 265)
  %call84 = call i64 @builtin_lisp_symbol(i32 373)
  %call85 = call i64 @builtin_lisp_symbol(i32 265)
  %8 = load i64, i64* %error_tail, align 8
  %call86 = call i64 @pure_cons(i64 %call85, i64 %8)
  %call87 = call i64 @Fput(i64 %call83, i64 %call84, i64 %call86)
  %call88 = call i64 @builtin_lisp_symbol(i32 265)
  %call89 = call i64 @builtin_lisp_symbol(i32 374)
  %call90 = call i64 @build_pure_c_string(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i32 0, i32 0))
  %call91 = call i64 @Fput(i64 %call88, i64 %call89, i64 %call90)
  %call92 = call i64 @builtin_lisp_symbol(i32 1007)
  %call93 = call i64 @builtin_lisp_symbol(i32 373)
  %call94 = call i64 @builtin_lisp_symbol(i32 1007)
  %9 = load i64, i64* %error_tail, align 8
  %call95 = call i64 @pure_cons(i64 %call94, i64 %9)
  %call96 = call i64 @Fput(i64 %call92, i64 %call93, i64 %call95)
  %call97 = call i64 @builtin_lisp_symbol(i32 1007)
  %call98 = call i64 @builtin_lisp_symbol(i32 374)
  %call99 = call i64 @build_pure_c_string(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.23, i32 0, i32 0))
  %call100 = call i64 @Fput(i64 %call97, i64 %call98, i64 %call99)
  %call101 = call i64 @builtin_lisp_symbol(i32 855)
  %call102 = call i64 @builtin_lisp_symbol(i32 373)
  %call103 = call i64 @builtin_lisp_symbol(i32 855)
  %10 = load i64, i64* %error_tail, align 8
  %call104 = call i64 @pure_cons(i64 %call103, i64 %10)
  %call105 = call i64 @Fput(i64 %call101, i64 %call102, i64 %call104)
  %call106 = call i64 @builtin_lisp_symbol(i32 855)
  %call107 = call i64 @builtin_lisp_symbol(i32 374)
  %call108 = call i64 @build_pure_c_string(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.24, i32 0, i32 0))
  %call109 = call i64 @Fput(i64 %call106, i64 %call107, i64 %call108)
  %call110 = call i64 @builtin_lisp_symbol(i32 571)
  %call111 = call i64 @builtin_lisp_symbol(i32 373)
  %call112 = call i64 @builtin_lisp_symbol(i32 571)
  %11 = load i64, i64* %error_tail, align 8
  %call113 = call i64 @pure_cons(i64 %call112, i64 %11)
  %call114 = call i64 @Fput(i64 %call110, i64 %call111, i64 %call113)
  %call115 = call i64 @builtin_lisp_symbol(i32 571)
  %call116 = call i64 @builtin_lisp_symbol(i32 374)
  %call117 = call i64 @build_pure_c_string(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i32 0, i32 0))
  %call118 = call i64 @Fput(i64 %call115, i64 %call116, i64 %call117)
  %call119 = call i64 @builtin_lisp_symbol(i32 570)
  %call120 = call i64 @builtin_lisp_symbol(i32 373)
  %call121 = call i64 @builtin_lisp_symbol(i32 570)
  %12 = load i64, i64* %error_tail, align 8
  %call122 = call i64 @pure_cons(i64 %call121, i64 %12)
  %call123 = call i64 @Fput(i64 %call119, i64 %call120, i64 %call122)
  %call124 = call i64 @builtin_lisp_symbol(i32 570)
  %call125 = call i64 @builtin_lisp_symbol(i32 374)
  %call126 = call i64 @build_pure_c_string(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i32 0, i32 0))
  %call127 = call i64 @Fput(i64 %call124, i64 %call125, i64 %call126)
  %call128 = call i64 @builtin_lisp_symbol(i32 1043)
  %call129 = call i64 @builtin_lisp_symbol(i32 373)
  %call130 = call i64 @builtin_lisp_symbol(i32 1043)
  %13 = load i64, i64* %error_tail, align 8
  %call131 = call i64 @pure_cons(i64 %call130, i64 %13)
  %call132 = call i64 @Fput(i64 %call128, i64 %call129, i64 %call131)
  %call133 = call i64 @builtin_lisp_symbol(i32 1043)
  %call134 = call i64 @builtin_lisp_symbol(i32 374)
  %call135 = call i64 @build_pure_c_string(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i32 0, i32 0))
  %call136 = call i64 @Fput(i64 %call133, i64 %call134, i64 %call135)
  %call137 = call i64 @builtin_lisp_symbol(i32 701)
  %call138 = call i64 @builtin_lisp_symbol(i32 373)
  %call139 = call i64 @builtin_lisp_symbol(i32 701)
  %14 = load i64, i64* %error_tail, align 8
  %call140 = call i64 @pure_cons(i64 %call139, i64 %14)
  %call141 = call i64 @Fput(i64 %call137, i64 %call138, i64 %call140)
  %call142 = call i64 @builtin_lisp_symbol(i32 701)
  %call143 = call i64 @builtin_lisp_symbol(i32 374)
  %call144 = call i64 @build_pure_c_string(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i32 0, i32 0))
  %call145 = call i64 @Fput(i64 %call142, i64 %call143, i64 %call144)
  %call146 = call i64 @builtin_lisp_symbol(i32 367)
  %call147 = call i64 @builtin_lisp_symbol(i32 373)
  %call148 = call i64 @builtin_lisp_symbol(i32 367)
  %15 = load i64, i64* %error_tail, align 8
  %call149 = call i64 @pure_cons(i64 %call148, i64 %15)
  %call150 = call i64 @Fput(i64 %call146, i64 %call147, i64 %call149)
  %call151 = call i64 @builtin_lisp_symbol(i32 367)
  %call152 = call i64 @builtin_lisp_symbol(i32 374)
  %call153 = call i64 @build_pure_c_string(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i32 0, i32 0))
  %call154 = call i64 @Fput(i64 %call151, i64 %call152, i64 %call153)
  %call155 = call i64 @builtin_lisp_symbol(i32 178)
  %16 = load i64, i64* %error_tail, align 8
  %call156 = call i64 @pure_cons(i64 %call155, i64 %16)
  store i64 %call156, i64* %arith_tail, align 8
  %call157 = call i64 @builtin_lisp_symbol(i32 178)
  %call158 = call i64 @builtin_lisp_symbol(i32 373)
  %17 = load i64, i64* %arith_tail, align 8
  %call159 = call i64 @Fput(i64 %call157, i64 %call158, i64 %17)
  %call160 = call i64 @builtin_lisp_symbol(i32 178)
  %call161 = call i64 @builtin_lisp_symbol(i32 374)
  %call162 = call i64 @build_pure_c_string(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0))
  %call163 = call i64 @Fput(i64 %call160, i64 %call161, i64 %call162)
  %call164 = call i64 @builtin_lisp_symbol(i32 200)
  %call165 = call i64 @builtin_lisp_symbol(i32 373)
  %call166 = call i64 @builtin_lisp_symbol(i32 200)
  %18 = load i64, i64* %error_tail, align 8
  %call167 = call i64 @pure_cons(i64 %call166, i64 %18)
  %call168 = call i64 @Fput(i64 %call164, i64 %call165, i64 %call167)
  %call169 = call i64 @builtin_lisp_symbol(i32 200)
  %call170 = call i64 @builtin_lisp_symbol(i32 374)
  %call171 = call i64 @build_pure_c_string(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i32 0, i32 0))
  %call172 = call i64 @Fput(i64 %call169, i64 %call170, i64 %call171)
  %call173 = call i64 @builtin_lisp_symbol(i32 366)
  %call174 = call i64 @builtin_lisp_symbol(i32 373)
  %call175 = call i64 @builtin_lisp_symbol(i32 366)
  %19 = load i64, i64* %error_tail, align 8
  %call176 = call i64 @pure_cons(i64 %call175, i64 %19)
  %call177 = call i64 @Fput(i64 %call173, i64 %call174, i64 %call176)
  %call178 = call i64 @builtin_lisp_symbol(i32 366)
  %call179 = call i64 @builtin_lisp_symbol(i32 374)
  %call180 = call i64 @build_pure_c_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0))
  %call181 = call i64 @Fput(i64 %call178, i64 %call179, i64 %call180)
  %call182 = call i64 @builtin_lisp_symbol(i32 228)
  %call183 = call i64 @builtin_lisp_symbol(i32 373)
  %call184 = call i64 @builtin_lisp_symbol(i32 228)
  %20 = load i64, i64* %error_tail, align 8
  %call185 = call i64 @pure_cons(i64 %call184, i64 %20)
  %call186 = call i64 @Fput(i64 %call182, i64 %call183, i64 %call185)
  %call187 = call i64 @builtin_lisp_symbol(i32 228)
  %call188 = call i64 @builtin_lisp_symbol(i32 374)
  %call189 = call i64 @build_pure_c_string(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i32 0, i32 0))
  %call190 = call i64 @Fput(i64 %call187, i64 %call188, i64 %call189)
  %call191 = call i64 @builtin_lisp_symbol(i32 913)
  %call192 = call i64 @builtin_lisp_symbol(i32 373)
  %call193 = call i64 @builtin_lisp_symbol(i32 913)
  %call194 = call i64 @builtin_lisp_symbol(i32 228)
  %21 = load i64, i64* %error_tail, align 8
  %call195 = call i64 @pure_cons(i64 %call194, i64 %21)
  %call196 = call i64 @pure_cons(i64 %call193, i64 %call195)
  %call197 = call i64 @Fput(i64 %call191, i64 %call192, i64 %call196)
  %call198 = call i64 @builtin_lisp_symbol(i32 913)
  %call199 = call i64 @builtin_lisp_symbol(i32 374)
  %call200 = call i64 @build_pure_c_string(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i32 0, i32 0))
  %call201 = call i64 @Fput(i64 %call198, i64 %call199, i64 %call200)
  %call202 = call i64 @builtin_lisp_symbol(i32 349)
  %call203 = call i64 @builtin_lisp_symbol(i32 373)
  %call204 = call i64 @builtin_lisp_symbol(i32 349)
  %22 = load i64, i64* %arith_tail, align 8
  %call205 = call i64 @pure_cons(i64 %call204, i64 %22)
  %call206 = call i64 @Fput(i64 %call202, i64 %call203, i64 %call205)
  %call207 = call i64 @builtin_lisp_symbol(i32 349)
  %call208 = call i64 @builtin_lisp_symbol(i32 374)
  %call209 = call i64 @build_pure_c_string(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i32 0, i32 0))
  %call210 = call i64 @Fput(i64 %call207, i64 %call208, i64 %call209)
  %call211 = call i64 @builtin_lisp_symbol(i32 786)
  %call212 = call i64 @builtin_lisp_symbol(i32 373)
  %call213 = call i64 @builtin_lisp_symbol(i32 786)
  %23 = load i64, i64* %arith_tail, align 8
  %call214 = call i64 @pure_cons(i64 %call213, i64 %23)
  %call215 = call i64 @Fput(i64 %call211, i64 %call212, i64 %call214)
  %call216 = call i64 @builtin_lisp_symbol(i32 786)
  %call217 = call i64 @builtin_lisp_symbol(i32 374)
  %call218 = call i64 @build_pure_c_string(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.36, i32 0, i32 0))
  %call219 = call i64 @Fput(i64 %call216, i64 %call217, i64 %call218)
  %call220 = call i64 @builtin_lisp_symbol(i32 863)
  %call221 = call i64 @builtin_lisp_symbol(i32 373)
  %call222 = call i64 @builtin_lisp_symbol(i32 863)
  %call223 = call i64 @builtin_lisp_symbol(i32 349)
  %24 = load i64, i64* %arith_tail, align 8
  %call224 = call i64 @Fcons(i64 %call223, i64 %24)
  %call225 = call i64 @pure_cons(i64 %call222, i64 %call224)
  %call226 = call i64 @Fput(i64 %call220, i64 %call221, i64 %call225)
  %call227 = call i64 @builtin_lisp_symbol(i32 863)
  %call228 = call i64 @builtin_lisp_symbol(i32 374)
  %call229 = call i64 @build_pure_c_string(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.37, i32 0, i32 0))
  %call230 = call i64 @Fput(i64 %call227, i64 %call228, i64 %call229)
  %call231 = call i64 @builtin_lisp_symbol(i32 728)
  %call232 = call i64 @builtin_lisp_symbol(i32 373)
  %call233 = call i64 @builtin_lisp_symbol(i32 728)
  %call234 = call i64 @builtin_lisp_symbol(i32 349)
  %25 = load i64, i64* %arith_tail, align 8
  %call235 = call i64 @Fcons(i64 %call234, i64 %25)
  %call236 = call i64 @pure_cons(i64 %call233, i64 %call235)
  %call237 = call i64 @Fput(i64 %call231, i64 %call232, i64 %call236)
  %call238 = call i64 @builtin_lisp_symbol(i32 728)
  %call239 = call i64 @builtin_lisp_symbol(i32 374)
  %call240 = call i64 @build_pure_c_string(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.38, i32 0, i32 0))
  %call241 = call i64 @Fput(i64 %call238, i64 %call239, i64 %call240)
  %call242 = call i64 @builtin_lisp_symbol(i32 961)
  %call243 = call i64 @builtin_lisp_symbol(i32 373)
  %call244 = call i64 @builtin_lisp_symbol(i32 961)
  %call245 = call i64 @builtin_lisp_symbol(i32 349)
  %26 = load i64, i64* %arith_tail, align 8
  %call246 = call i64 @Fcons(i64 %call245, i64 %26)
  %call247 = call i64 @pure_cons(i64 %call244, i64 %call246)
  %call248 = call i64 @Fput(i64 %call242, i64 %call243, i64 %call247)
  %call249 = call i64 @builtin_lisp_symbol(i32 961)
  %call250 = call i64 @builtin_lisp_symbol(i32 374)
  %call251 = call i64 @build_pure_c_string(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.39, i32 0, i32 0))
  %call252 = call i64 @Fput(i64 %call249, i64 %call250, i64 %call251)
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sindirect_variable to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sinteractive_form to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Seq to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Snull to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Stype_of to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Slistp to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Snlistp to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sconsp to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Satom to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sintegerp to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sinteger_or_marker_p to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Snumberp to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Snumber_or_marker_p to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sfloatp to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Snatnump to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Ssymbolp to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Skeywordp to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sstringp to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Smultibyte_string_p to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Svectorp to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Schar_table_p to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Svector_or_char_table_p to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sbool_vector_p to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sarrayp to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Ssequencep to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sbufferp to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Smarkerp to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Ssubrp to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sbyte_code_function_p to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Schar_or_string_p to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Scar to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Scdr to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Scar_safe to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Scdr_safe to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Ssetcar to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Ssetcdr to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Ssymbol_function to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sindirect_function to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Ssymbol_plist to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Ssymbol_name to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Smakunbound to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sfmakunbound to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sboundp to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sfboundp to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sfset to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sdefalias to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Ssetplist to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Ssymbol_value to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sset to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sdefault_boundp to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sdefault_value to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sset_default to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Ssetq_default to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Smake_variable_buffer_local to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Smake_local_variable to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Skill_local_variable to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Smake_variable_frame_local to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Slocal_variable_p to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Slocal_variable_if_set_p to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Svariable_binding_locus to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Saref to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Saset to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Snumber_to_string to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sstring_to_number to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64*)* }, i16, i16, i8*, i8*, i8* }* @Seqlsign to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64*)* }, i16, i16, i8*, i8*, i8* }* @Slss to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64*)* }, i16, i16, i8*, i8*, i8* }* @Sgtr to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64*)* }, i16, i16, i8*, i8*, i8* }* @Sleq to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64*)* }, i16, i16, i8*, i8*, i8* }* @Sgeq to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sneq to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64*)* }, i16, i16, i8*, i8*, i8* }* @Splus to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64*)* }, i16, i16, i8*, i8*, i8* }* @Sminus to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64*)* }, i16, i16, i8*, i8*, i8* }* @Stimes to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64*)* }, i16, i16, i8*, i8*, i8* }* @Squo to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Srem to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Smod to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64*)* }, i16, i16, i8*, i8*, i8* }* @Smax to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64*)* }, i16, i16, i8*, i8*, i8* }* @Smin to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64*)* }, i16, i16, i8*, i8*, i8* }* @Slogand to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64*)* }, i16, i16, i8*, i8*, i8* }* @Slogior to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64*)* }, i16, i16, i8*, i8*, i8* }* @Slogxor to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Slsh to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sash to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sadd1 to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Ssub1 to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Slognot to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* @Sbyteorder)
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Ssubr_arity to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Ssubr_name to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sbool_vector_exclusive_or to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sbool_vector_union to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sbool_vector_intersection to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sbool_vector_set_difference to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sbool_vector_not to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sbool_vector_subsetp to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sbool_vector_count_consecutive to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sbool_vector_count_population to %struct.Lisp_Subr*))
  %call253 = call i64 @builtin_lisp_symbol(i32 1015)
  %call254 = call i64 @builtin_lisp_symbol(i32 698)
  %sub = sub nsw i64 %call254, 0
  %add.ptr = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub
  %27 = bitcast i8* %add.ptr to %struct.Lisp_Symbol*
  %function = getelementptr inbounds %struct.Lisp_Symbol, %struct.Lisp_Symbol* %27, i32 0, i32 3
  %28 = load i64, i64* %function, align 8
  call void @set_symbol_function(i64 %call253, i64 %28)
  br label %do.body

do.body:                                          ; preds = %entry
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_data.o_fwd, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.40, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 199))
  br label %do.end

do.end:                                           ; preds = %do.body
  store i64 9223372036854775806, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 199), align 8
  %call255 = call i64 @intern_c_string(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.40, i32 0, i32 0))
  %sub256 = sub nsw i64 %call255, 0
  %add.ptr257 = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub256
  %29 = bitcast i8* %add.ptr257 to %struct.Lisp_Symbol*
  %30 = bitcast %struct.Lisp_Symbol* %29 to i16*
  %bf.load = load i16, i16* %30, align 8
  %bf.clear = and i16 %bf.load, -49
  %bf.set = or i16 %bf.clear, 16
  store i16 %bf.set, i16* %30, align 8
  br label %do.body.258

do.body.258:                                      ; preds = %do.end
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_data.o_fwd.41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 198))
  br label %do.end.259

do.end.259:                                       ; preds = %do.body.258
  store i64 -9223372036854775806, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 198), align 8
  %call260 = call i64 @intern_c_string(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i32 0, i32 0))
  %sub261 = sub nsw i64 %call260, 0
  %add.ptr262 = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub261
  %31 = bitcast i8* %add.ptr262 to %struct.Lisp_Symbol*
  %32 = bitcast %struct.Lisp_Symbol* %31 to i16*
  %bf.load263 = load i16, i16* %32, align 8
  %bf.clear264 = and i16 %bf.load263, -49
  %bf.set265 = or i16 %bf.clear264, 16
  store i16 %bf.set265, i16* %32, align 8
  ret void
}

declare i64 @pure_cons(i64, i64) #2

declare i64 @build_pure_c_string(i8*) #2

declare void @defsubr(%struct.Lisp_Subr*) #2

declare void @defvar_lisp(%struct.Lisp_Objfwd*, i8*, i64*) #2

declare i64 @intern_c_string(i8*) #2

declare i64 @Fmemq(i64, i64) #2

; Function Attrs: nounwind uwtable
define internal void @wrong_range(i64 %min, i64 %max, i64 %wrong) #4 {
entry:
  %min.addr = alloca i64, align 8
  %max.addr = alloca i64, align 8
  %wrong.addr = alloca i64, align 8
  %value_should_be_from = alloca i64, align 8
  %.compoundliteral = alloca %union.Aligned_String, align 8
  %to = alloca i64, align 8
  %.compoundliteral2 = alloca %union.Aligned_String, align 8
  %.compoundliteral11 = alloca [4 x i64], align 8
  store i64 %min, i64* %min.addr, align 8
  store i64 %max, i64* %max.addr, align 8
  store i64 %wrong, i64* %wrong.addr, align 8
  %s = bitcast %union.Aligned_String* %.compoundliteral to %struct.Lisp_String*
  %size = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 0
  store i64 21, i64* %size, align 8
  %size_byte = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 1
  store i64 -1, i64* %size_byte, align 8
  %intervals = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 2
  store %struct.interval* null, %struct.interval** %intervals, align 8
  %data = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 3
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.43, i32 0, i32 0), i8** %data, align 8
  %s1 = bitcast %union.Aligned_String* %.compoundliteral to %struct.Lisp_String*
  %0 = bitcast %struct.Lisp_String* %s1 to i8*
  %call = call i64 @make_lisp_ptr(i8* %0, i32 4)
  store i64 %call, i64* %value_should_be_from, align 8
  %s3 = bitcast %union.Aligned_String* %.compoundliteral2 to %struct.Lisp_String*
  %size4 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s3, i32 0, i32 0
  store i64 4, i64* %size4, align 8
  %size_byte5 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s3, i32 0, i32 1
  store i64 -1, i64* %size_byte5, align 8
  %intervals6 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s3, i32 0, i32 2
  store %struct.interval* null, %struct.interval** %intervals6, align 8
  %data7 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s3, i32 0, i32 3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), i8** %data7, align 8
  %s8 = bitcast %union.Aligned_String* %.compoundliteral2 to %struct.Lisp_String*
  %1 = bitcast %struct.Lisp_String* %s8 to i8*
  %call9 = call i64 @make_lisp_ptr(i8* %1, i32 4)
  store i64 %call9, i64* %to, align 8
  %call10 = call i64 @builtin_lisp_symbol(i32 372)
  %arrayinit.begin = getelementptr inbounds [4 x i64], [4 x i64]* %.compoundliteral11, i64 0, i64 0
  %2 = load i64, i64* %value_should_be_from, align 8
  store i64 %2, i64* %arrayinit.begin
  %arrayinit.element = getelementptr inbounds i64, i64* %arrayinit.begin, i64 1
  %3 = load i64, i64* %min.addr, align 8
  %call12 = call i64 @Fnumber_to_string(i64 %3)
  store i64 %call12, i64* %arrayinit.element
  %arrayinit.element13 = getelementptr inbounds i64, i64* %arrayinit.element, i64 1
  %4 = load i64, i64* %to, align 8
  store i64 %4, i64* %arrayinit.element13
  %arrayinit.element14 = getelementptr inbounds i64, i64* %arrayinit.element13, i64 1
  %5 = load i64, i64* %max.addr, align 8
  %call15 = call i64 @Fnumber_to_string(i64 %5)
  store i64 %call15, i64* %arrayinit.element14
  %arraydecay = getelementptr inbounds [4 x i64], [4 x i64]* %.compoundliteral11, i32 0, i32 0
  %call16 = call i64 @Fconcat(i64 4, i64* %arraydecay)
  %6 = load i64, i64* %wrong.addr, align 8
  call void @xsignal2(i64 %call10, i64 %call16, i64 %6) #7
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare zeroext i1 @FUNCTIONP(i64) #2

declare i64 @call1(i64, i64) #2

; Function Attrs: nounwind uwtable
define internal void @set_blv_defcell(%struct.Lisp_Buffer_Local_Value* %blv, i64 %val) #4 {
entry:
  %blv.addr = alloca %struct.Lisp_Buffer_Local_Value*, align 8
  %val.addr = alloca i64, align 8
  store %struct.Lisp_Buffer_Local_Value* %blv, %struct.Lisp_Buffer_Local_Value** %blv.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv.addr, align 8
  %defcell = getelementptr inbounds %struct.Lisp_Buffer_Local_Value, %struct.Lisp_Buffer_Local_Value* %1, i32 0, i32 3
  store i64 %0, i64* %defcell, align 8
  ret void
}

declare i32 @count_one_bits_l(i64) #2

declare i32 @count_trailing_zeros_l(i64) #2

attributes #0 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
