; ModuleID = './src/fringe.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fringe_bitmap = type { i16*, i32 }
%struct.buffer = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.buffer_text, %struct.buffer_text*, %struct.buffer*, i64, i64, i64, i64, i64, i64, %struct.buffer*, i32, i32, [50 x i8], %struct.timespec, i64, i64, i64, i64, i64, %struct.region_cache*, %struct.region_cache*, %struct.region_cache*, i8, %struct.Lisp_Overlay*, %struct.Lisp_Overlay*, i64, i64 }
%struct.vectorlike_header = type { i64 }
%struct.buffer_text = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.interval*, %struct.Lisp_Marker*, i8 }
%struct.interval = type opaque
%struct.Lisp_Marker = type { i32, %struct.buffer*, %struct.Lisp_Marker*, i64, i64 }
%struct.timespec = type { i64, i64 }
%struct.region_cache = type opaque
%struct.Lisp_Overlay = type { i32, %struct.Lisp_Overlay*, i64, i64, i64 }
%struct.emacs_globals = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.Lisp_Objfwd = type { i32, i64* }
%struct.window = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.glyph_matrix*, %struct.glyph_matrix*, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, %struct.cursor_pos, %struct.cursor_pos, %struct.cursor_pos, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i64 }
%struct.glyph_matrix = type { %struct.glyph_pool*, %struct.glyph_row*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.buffer*, i64, i64 }
%struct.glyph_pool = type { %struct.glyph*, i64, i32, i32 }
%struct.glyph = type { i64, i64, i16, i16, i16, i16, i24, i24, %union.anon, %union.anon.1 }
%union.anon = type { %struct.glyph_slice }
%struct.glyph_slice = type { i64 }
%union.anon.1 = type { i32 }
%struct.cursor_pos = type { i32, i32, i32, i32 }
%struct.glyph_row = type <{ [4 x %struct.glyph*], [4 x i16], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.display_pos, %struct.display_pos, %struct.text_pos, %struct.text_pos, i32, [11 x i8], i8, i24, i24, i32, i40, i32, %struct.XRectangle* }>
%struct.display_pos = type { %struct.text_pos, i64, %struct.text_pos, i32 }
%struct.text_pos = type { i64, i64 }
%struct.XRectangle = type { i16, i16, i16, i16 }
%struct.Lisp_Cons = type { i64, %union.anon.9 }
%union.anon.9 = type { i64 }
%struct.frame = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.face_cache*, i32, %struct.glyph_pool*, %struct.glyph_pool*, %struct.glyph_matrix*, %struct.glyph_matrix*, i48, i32, i32, i32, i32, i8*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.terminal*, %union.output_data, %struct.font_driver_list*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x double], double, i32, i64, i64 }
%struct.face_cache = type { %struct.face**, %struct.frame*, %struct.face**, i64, i32, i8 }
%struct.face = type { [19 x i64], i32, %struct._XGC*, i64, i64, i64, i64, i64, i64, i64, %struct.font*, i32, i32, i24, i32, %struct.face*, %struct.face*, %struct.face*, i8* }
%struct._XGC = type opaque
%struct.font = type opaque
%struct.terminal = type { %struct.vectorlike_header, i64, i64, i64, i64, %struct.terminal*, i32, i32, i32, i8*, %struct.kboard*, %struct.image_cache*, %union.display_info, %struct.coding_system*, %struct.coding_system*, %struct.redisplay_interface*, void (%struct.frame*, i32, i32)*, void (%struct.frame*, i32, i32)*, void (%struct.frame*)*, void (%struct.frame*)*, void (%struct.frame*, i32)*, void (%struct.frame*, i32, i32)*, void (%struct.frame*, %struct.glyph*, i32)*, void (%struct.frame*, %struct.glyph*, i32)*, void (%struct.frame*, i32)*, void (%struct.frame*)*, void (%struct.frame*, i1)*, void (%struct.terminal*)*, void (%struct.terminal*)*, void (%struct.frame*)*, void (%struct.frame*)*, void (%struct.frame*, i32)*, void (%struct.frame**, i32, i64*, i32*, i64*, i64*, i64*)*, void (%struct.frame*)*, void (%struct.frame*, i1)*, void (%struct.frame*)*, i64 (%struct.frame*, i32, i32, i32, i64, i8**)*, i64 (%struct.frame*, i64, i64)*, void (%struct.window*, i32, i32, i32)*, void (%struct.window*, i32, i32, i32)*, void (%struct.frame*)*, void (%struct.window*)*, void (%struct.frame*)*, i32 (%struct.terminal*, %struct.input_event*)*, void (%struct.frame*)*, void (%struct.frame*)*, void (%struct.terminal*)* }
%struct.kboard = type opaque
%struct.image_cache = type { %struct.image**, %struct.image**, i64, i64, i64 }
%struct.image = type { %struct.timespec, i64, i64, %struct._XImage*, %struct._XImage*, i64*, i32, i64, i64, i64, i8, i32, i32, [4 x i32], i32, i64, i64, i32, i32, i32, %struct.image_type*, i8, i64, i64, i64, %struct.image*, %struct.image* }
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
%struct.font_driver_list = type opaque
%struct.Lisp_Subr = type { %struct.vectorlike_header, %union.anon.10, i16, i16, i8*, i8*, i8* }
%union.anon.10 = type { i64 ()* }

@max_used_fringe_bitmap = global i32 24, align 4
@fringe_bitmaps = internal global %struct.fringe_bitmap** null, align 8
@current_buffer = external global %struct.buffer*, align 8
@globals = external global %struct.emacs_globals, align 8
@selected_window = external global i64, align 8
@minibuf_level = external global i64, align 8
@minibuf_selected_window = external global i64, align 8
@minibuf_window = external global i64, align 8
@.str = private unnamed_addr constant [19 x i8] c"Bad align argument\00", align 1
@max_fringe_bitmaps = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"No free fringe bitmap slots\00", align 1
@fringe_faces = internal global i64* null, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"Undefined fringe bitmap\00", align 1
@selected_frame = external global i64, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"No such face\00", align 1
@syms_of_fringe.o_fwd = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"overflow-newline-into-fringe\00", align 1
@syms_of_fringe.o_fwd.5 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.6 = private unnamed_addr constant [15 x i8] c"fringe-bitmaps\00", align 1
@buffer_defaults = external global %struct.buffer, align 8
@swap_nibble = internal constant [16 x i8] c"\00\08\04\0C\02\0A\06\0E\01\09\05\0D\03\0B\07\0F", align 16
@.str.7 = private unnamed_addr constant [22 x i8] c"destroy-fringe-bitmap\00", align 1
@Sdestroy_fringe_bitmap = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fdestroy_fringe_bitmap }, i16 1, i16 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.8 = private unnamed_addr constant [21 x i8] c"define-fringe-bitmap\00", align 1
@Sdefine_fringe_bitmap = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64, i64)* @Fdefine_fringe_bitmap }, i16 2, i16 5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.9 = private unnamed_addr constant [22 x i8] c"fringe-bitmaps-at-pos\00", align 1
@Sfringe_bitmaps_at_pos = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Ffringe_bitmaps_at_pos }, i16 0, i16 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.10 = private unnamed_addr constant [23 x i8] c"set-fringe-bitmap-face\00", align 1
@Sset_fringe_bitmap_face = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fset_fringe_bitmap_face }, i16 1, i16 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* null }, align 8
@question_mark_bits = internal global [9 x i16] [i16 60, i16 126, i16 126, i16 12, i16 24, i16 24, i16 0, i16 24, i16 24], align 16
@exclamation_mark_bits = internal global [10 x i16] [i16 24, i16 24, i16 24, i16 24, i16 24, i16 24, i16 24, i16 24, i16 0, i16 24], align 16
@left_arrow_bits = internal global [8 x i16] [i16 24, i16 48, i16 96, i16 252, i16 252, i16 96, i16 48, i16 24], align 16
@right_arrow_bits = internal global [8 x i16] [i16 24, i16 12, i16 6, i16 63, i16 63, i16 6, i16 12, i16 24], align 16
@up_arrow_bits = internal global [8 x i16] [i16 24, i16 60, i16 126, i16 255, i16 24, i16 24, i16 24, i16 24], align 16
@down_arrow_bits = internal global [8 x i16] [i16 24, i16 24, i16 24, i16 24, i16 255, i16 126, i16 60, i16 24], align 16
@left_curly_arrow_bits = internal global [8 x i16] [i16 60, i16 124, i16 192, i16 228, i16 252, i16 124, i16 60, i16 124], align 16
@right_curly_arrow_bits = internal global [8 x i16] [i16 60, i16 62, i16 3, i16 39, i16 63, i16 62, i16 60, i16 62], align 16
@left_triangle_bits = internal global [8 x i16] [i16 3, i16 15, i16 31, i16 63, i16 63, i16 31, i16 15, i16 3], align 16
@right_triangle_bits = internal global [8 x i16] [i16 192, i16 240, i16 248, i16 252, i16 252, i16 248, i16 240, i16 192], align 16
@top_left_angle_bits = internal global [8 x i16] [i16 252, i16 252, i16 192, i16 192, i16 192, i16 192, i16 192, i16 0], align 16
@top_right_angle_bits = internal global [8 x i16] [i16 63, i16 63, i16 3, i16 3, i16 3, i16 3, i16 3, i16 0], align 16
@bottom_left_angle_bits = internal global [8 x i16] [i16 0, i16 192, i16 192, i16 192, i16 192, i16 192, i16 252, i16 252], align 16
@bottom_right_angle_bits = internal global [8 x i16] [i16 0, i16 3, i16 3, i16 3, i16 3, i16 3, i16 63, i16 63], align 16
@left_bracket_bits = internal global [10 x i16] [i16 252, i16 252, i16 192, i16 192, i16 192, i16 192, i16 192, i16 192, i16 252, i16 252], align 16
@right_bracket_bits = internal global [10 x i16] [i16 63, i16 63, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 63, i16 63], align 16
@filled_rectangle_bits = internal global [13 x i16] [i16 254, i16 254, i16 254, i16 254, i16 254, i16 254, i16 254, i16 254, i16 254, i16 254, i16 254, i16 254, i16 254], align 16
@hollow_rectangle_bits = internal global [13 x i16] [i16 254, i16 130, i16 130, i16 130, i16 130, i16 130, i16 130, i16 130, i16 130, i16 130, i16 130, i16 130, i16 254], align 16
@filled_square_bits = internal global [6 x i16] [i16 126, i16 126, i16 126, i16 126, i16 126, i16 126], align 2
@hollow_square_bits = internal global [6 x i16] [i16 126, i16 66, i16 66, i16 66, i16 66, i16 126], align 2
@vertical_bar_bits = internal global [13 x i16] [i16 192, i16 192, i16 192, i16 192, i16 192, i16 192, i16 192, i16 192, i16 192, i16 192, i16 192, i16 192, i16 192], align 16
@horizontal_bar_bits = internal global [2 x i16] [i16 254, i16 254], align 2
@empty_line_bits = internal global [72 x i16] [i16 0, i16 60, i16 0, i16 0, i16 60, i16 0, i16 0, i16 60, i16 0, i16 0, i16 60, i16 0, i16 0, i16 60, i16 0, i16 0, i16 60, i16 0, i16 0, i16 60, i16 0, i16 0, i16 60, i16 0, i16 0, i16 60, i16 0, i16 0, i16 60, i16 0, i16 0, i16 60, i16 0, i16 0, i16 60, i16 0, i16 0, i16 60, i16 0, i16 0, i16 60, i16 0, i16 0, i16 60, i16 0, i16 0, i16 60, i16 0, i16 0, i16 60, i16 0, i16 0, i16 60, i16 0, i16 0, i16 60, i16 0, i16 0, i16 60, i16 0, i16 0, i16 60, i16 0, i16 0, i16 60, i16 0, i16 0, i16 60, i16 0, i16 0, i16 60, i16 0], align 16
@standard_bitmaps = internal global <{ { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 } }> <{ { i16*, i8, i8, i8, i8 } zeroinitializer, { i16*, i8, i8, i8, i8 } { i16* getelementptr inbounds ([9 x i16], [9 x i16]* @question_mark_bits, i32 0, i32 0), i8 9, i8 8, i8 0, i8 0 }, { i16*, i8, i8, i8, i8 } { i16* getelementptr inbounds ([10 x i16], [10 x i16]* @exclamation_mark_bits, i32 0, i32 0), i8 10, i8 8, i8 0, i8 0 }, { i16*, i8, i8, i8, i8 } { i16* getelementptr inbounds ([8 x i16], [8 x i16]* @left_arrow_bits, i32 0, i32 0), i8 8, i8 8, i8 0, i8 0 }, { i16*, i8, i8, i8, i8 } { i16* getelementptr inbounds ([8 x i16], [8 x i16]* @right_arrow_bits, i32 0, i32 0), i8 8, i8 8, i8 0, i8 0 }, { i16*, i8, i8, i8, i8 } { i16* getelementptr inbounds ([8 x i16], [8 x i16]* @up_arrow_bits, i32 0, i32 0), i8 8, i8 8, i8 0, i8 1 }, { i16*, i8, i8, i8, i8 } { i16* getelementptr inbounds ([8 x i16], [8 x i16]* @down_arrow_bits, i32 0, i32 0), i8 8, i8 8, i8 0, i8 2 }, { i16*, i8, i8, i8, i8 } { i16* getelementptr inbounds ([8 x i16], [8 x i16]* @left_curly_arrow_bits, i32 0, i32 0), i8 8, i8 8, i8 0, i8 0 }, { i16*, i8, i8, i8, i8 } { i16* getelementptr inbounds ([8 x i16], [8 x i16]* @right_curly_arrow_bits, i32 0, i32 0), i8 8, i8 8, i8 0, i8 0 }, { i16*, i8, i8, i8, i8 } { i16* getelementptr inbounds ([8 x i16], [8 x i16]* @left_triangle_bits, i32 0, i32 0), i8 8, i8 8, i8 0, i8 0 }, { i16*, i8, i8, i8, i8 } { i16* getelementptr inbounds ([8 x i16], [8 x i16]* @right_triangle_bits, i32 0, i32 0), i8 8, i8 8, i8 0, i8 0 }, { i16*, i8, i8, i8, i8 } { i16* getelementptr inbounds ([8 x i16], [8 x i16]* @top_left_angle_bits, i32 0, i32 0), i8 8, i8 8, i8 0, i8 1 }, { i16*, i8, i8, i8, i8 } { i16* getelementptr inbounds ([8 x i16], [8 x i16]* @top_right_angle_bits, i32 0, i32 0), i8 8, i8 8, i8 0, i8 1 }, { i16*, i8, i8, i8, i8 } { i16* getelementptr inbounds ([8 x i16], [8 x i16]* @bottom_left_angle_bits, i32 0, i32 0), i8 8, i8 8, i8 0, i8 2 }, { i16*, i8, i8, i8, i8 } { i16* getelementptr inbounds ([8 x i16], [8 x i16]* @bottom_right_angle_bits, i32 0, i32 0), i8 8, i8 8, i8 0, i8 2 }, { i16*, i8, i8, i8, i8 } { i16* getelementptr inbounds ([10 x i16], [10 x i16]* @left_bracket_bits, i32 0, i32 0), i8 10, i8 8, i8 0, i8 0 }, { i16*, i8, i8, i8, i8 } { i16* getelementptr inbounds ([10 x i16], [10 x i16]* @right_bracket_bits, i32 0, i32 0), i8 10, i8 8, i8 0, i8 0 }, { i16*, i8, i8, i8, i8 } { i16* getelementptr inbounds ([13 x i16], [13 x i16]* @filled_rectangle_bits, i32 0, i32 0), i8 13, i8 8, i8 0, i8 0 }, { i16*, i8, i8, i8, i8 } { i16* getelementptr inbounds ([13 x i16], [13 x i16]* @hollow_rectangle_bits, i32 0, i32 0), i8 13, i8 8, i8 0, i8 0 }, { i16*, i8, i8, i8, i8 } { i16* getelementptr inbounds ([6 x i16], [6 x i16]* @filled_square_bits, i32 0, i32 0), i8 6, i8 8, i8 0, i8 0 }, { i16*, i8, i8, i8, i8 } { i16* getelementptr inbounds ([6 x i16], [6 x i16]* @hollow_square_bits, i32 0, i32 0), i8 6, i8 8, i8 0, i8 0 }, { i16*, i8, i8, i8, i8 } { i16* getelementptr inbounds ([13 x i16], [13 x i16]* @vertical_bar_bits, i32 0, i32 0), i8 13, i8 8, i8 0, i8 0 }, { i16*, i8, i8, i8, i8 } { i16* getelementptr inbounds ([2 x i16], [2 x i16]* @horizontal_bar_bits, i32 0, i32 0), i8 2, i8 8, i8 0, i8 2 }, { i16*, i8, i8, i8, i8 } { i16* getelementptr inbounds ([72 x i16], [72 x i16]* @empty_line_bits, i32 0, i32 0), i8 72, i8 8, i8 3, i8 1 } }>, align 16

; Function Attrs: nounwind uwtable
define i32 @lookup_fringe_bitmap(i64 %bitmap) #0 {
entry:
  %retval = alloca i32, align 4
  %bitmap.addr = alloca i64, align 8
  %bn = alloca i64, align 8
  store i64 %bitmap, i64* %bitmap.addr, align 8
  %0 = load i64, i64* %bitmap.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 467)
  %call1 = call i64 @Fget(i64 %0, i64 %call)
  store i64 %call1, i64* %bitmap.addr, align 8
  %1 = load i64, i64* %bitmap.addr, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %and2 = and i32 %conv, -5
  %cmp = icmp eq i32 %and2, 2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %bitmap.addr, align 8
  %shr = ashr i64 %2, 2
  store i64 %shr, i64* %bn, align 8
  %3 = load i64, i64* %bn, align 8
  %cmp4 = icmp sgt i64 %3, 0
  br i1 %cmp4, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %if.end
  %4 = load i64, i64* %bn, align 8
  %5 = load i32, i32* @max_used_fringe_bitmap, align 4
  %conv6 = sext i32 %5 to i64
  %cmp7 = icmp slt i64 %4, %conv6
  br i1 %cmp7, label %land.lhs.true.9, label %if.end.16

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %6 = load i64, i64* %bn, align 8
  %cmp10 = icmp ult i64 %6, 24
  br i1 %cmp10, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.9
  %7 = load i64, i64* %bn, align 8
  %8 = load %struct.fringe_bitmap**, %struct.fringe_bitmap*** @fringe_bitmaps, align 8
  %arrayidx = getelementptr inbounds %struct.fringe_bitmap*, %struct.fringe_bitmap** %8, i64 %7
  %9 = load %struct.fringe_bitmap*, %struct.fringe_bitmap** %arrayidx, align 8
  %cmp12 = icmp ne %struct.fringe_bitmap* %9, null
  br i1 %cmp12, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %lor.lhs.false, %land.lhs.true.9
  %10 = load i64, i64* %bn, align 8
  %conv15 = trunc i64 %10 to i32
  store i32 %conv15, i32* %retval
  br label %return

if.end.16:                                        ; preds = %lor.lhs.false, %land.lhs.true, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.14, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

declare i64 @Fget(i64, i64) #1

declare i64 @builtin_lisp_symbol(i32) #1

; Function Attrs: nounwind uwtable
define void @draw_fringe_bitmap(%struct.window* %w, %struct.glyph_row* %row, i32 %left_p) #0 {
entry:
  %w.addr = alloca %struct.window*, align 8
  %row.addr = alloca %struct.glyph_row*, align 8
  %left_p.addr = alloca i32, align 4
  %overlay = alloca i32, align 4
  %cursor = alloca i64, align 8
  %bm = alloca i32, align 4
  store %struct.window* %w, %struct.window** %w.addr, align 8
  store %struct.glyph_row* %row, %struct.glyph_row** %row.addr, align 8
  store i32 %left_p, i32* %left_p.addr, align 4
  store i32 0, i32* %overlay, align 4
  %0 = load i32, i32* %left_p.addr, align 4
  %1 = load %struct.glyph_row*, %struct.glyph_row** %row.addr, align 8
  %reversed_p = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %1, i32 0, i32 22
  %2 = bitcast i40* %reversed_p to i64*
  %bf.load = load i64, i64* %2, align 4
  %bf.lshr = lshr i64 %bf.load, 34
  %bf.clear = and i64 %bf.lshr, 1
  %bf.cast = trunc i64 %bf.clear to i1
  %conv = zext i1 %bf.cast to i32
  %cmp = icmp eq i32 %0, %conv
  br i1 %cmp, label %land.lhs.true, label %if.end.38

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.glyph_row*, %struct.glyph_row** %row.addr, align 8
  %cursor_in_fringe_p = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %3, i32 0, i32 22
  %4 = bitcast i40* %cursor_in_fringe_p to i64*
  %bf.load2 = load i64, i64* %4, align 4
  %bf.lshr3 = lshr i64 %bf.load2, 28
  %bf.clear4 = and i64 %bf.lshr3, 1
  %bf.cast5 = trunc i64 %bf.clear4 to i1
  br i1 %bf.cast5, label %if.then, label %if.end.38

if.then:                                          ; preds = %land.lhs.true
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %cursor, align 8
  %5 = load %struct.window*, %struct.window** %w.addr, align 8
  %phys_cursor_type = getelementptr inbounds %struct.window, %struct.window* %5, i32 0, i32 53
  %6 = load i32, i32* %phys_cursor_type, align 4
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.13
    i32 2, label %sw.bb.15
    i32 3, label %sw.bb.17
    i32 -1, label %sw.bb.19
  ]

sw.bb:                                            ; preds = %if.then
  %7 = load %struct.glyph_row*, %struct.glyph_row** %row.addr, align 8
  %visible_height = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %7, i32 0, i32 10
  %8 = load i32, i32* %visible_height, align 4
  %conv7 = sext i32 %8 to i64
  %cmp8 = icmp uge i64 %conv7, 13
  br i1 %cmp8, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %sw.bb
  %call11 = call i64 @builtin_lisp_symbol(i32 521)
  store i64 %call11, i64* %cursor, align 8
  br label %if.end

if.else:                                          ; preds = %sw.bb
  %call12 = call i64 @builtin_lisp_symbol(i32 522)
  store i64 %call12, i64* %cursor, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.10
  br label %sw.epilog

sw.bb.13:                                         ; preds = %if.then
  %call14 = call i64 @builtin_lisp_symbol(i32 218)
  store i64 %call14, i64* %cursor, align 8
  br label %sw.epilog

sw.bb.15:                                         ; preds = %if.then
  %call16 = call i64 @builtin_lisp_symbol(i32 196)
  store i64 %call16, i64* %cursor, align 8
  br label %sw.epilog

sw.bb.17:                                         ; preds = %if.then
  %call18 = call i64 @builtin_lisp_symbol(i32 512)
  store i64 %call18, i64* %cursor, align 8
  br label %sw.epilog

sw.bb.19:                                         ; preds = %if.then
  br label %sw.default

sw.default:                                       ; preds = %if.then, %sw.bb.19
  %9 = load %struct.window*, %struct.window** %w.addr, align 8
  %phys_cursor_on_p = getelementptr inbounds %struct.window, %struct.window* %9, i32 0, i32 67
  %bf.load20 = load i16, i16* %phys_cursor_on_p, align 4
  %bf.clear21 = and i16 %bf.load20, -129
  store i16 %bf.clear21, i16* %phys_cursor_on_p, align 4
  %10 = load %struct.glyph_row*, %struct.glyph_row** %row.addr, align 8
  %cursor_in_fringe_p22 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %10, i32 0, i32 22
  %11 = bitcast i40* %cursor_in_fringe_p22 to i64*
  %bf.load23 = load i64, i64* %11, align 4
  %bf.clear24 = and i64 %bf.load23, -268435457
  store i64 %bf.clear24, i64* %11, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.17, %sw.bb.15, %sw.bb.13, %if.end
  %12 = load i64, i64* %cursor, align 8
  %call25 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp26 = icmp eq i64 %12, %call25
  br i1 %cmp26, label %if.end.37, label %if.then.28

if.then.28:                                       ; preds = %sw.epilog
  %13 = load %struct.window*, %struct.window** %w.addr, align 8
  %14 = load i64, i64* %cursor, align 8
  %call29 = call i32 @get_logical_cursor_bitmap(%struct.window* %13, i64 %14)
  store i32 %call29, i32* %bm, align 4
  %15 = load i32, i32* %bm, align 4
  %cmp30 = icmp ne i32 %15, 0
  br i1 %cmp30, label %if.then.32, label %if.end.36

if.then.32:                                       ; preds = %if.then.28
  %16 = load %struct.window*, %struct.window** %w.addr, align 8
  %17 = load %struct.glyph_row*, %struct.glyph_row** %row.addr, align 8
  %18 = load i32, i32* %left_p.addr, align 4
  %19 = load i32, i32* %bm, align 4
  call void @draw_fringe_bitmap_1(%struct.window* %16, %struct.glyph_row* %17, i32 %18, i32 2, i32 %19)
  %20 = load i64, i64* %cursor, align 8
  %call33 = call i64 @builtin_lisp_symbol(i32 218)
  %cmp34 = icmp eq i64 %20, %call33
  %cond = select i1 %cmp34, i32 3, i32 1
  store i32 %cond, i32* %overlay, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.32, %if.then.28
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %sw.epilog
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %land.lhs.true, %entry
  %21 = load %struct.window*, %struct.window** %w.addr, align 8
  %22 = load %struct.glyph_row*, %struct.glyph_row** %row.addr, align 8
  %23 = load i32, i32* %left_p.addr, align 4
  %24 = load i32, i32* %overlay, align 4
  call void @draw_fringe_bitmap_1(%struct.window* %21, %struct.glyph_row* %22, i32 %23, i32 %24, i32 0)
  %25 = load i32, i32* %left_p.addr, align 4
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %land.lhs.true.39, label %if.end.44

land.lhs.true.39:                                 ; preds = %if.end.38
  %26 = load %struct.glyph_row*, %struct.glyph_row** %row.addr, align 8
  %overlay_arrow_bitmap = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %26, i32 0, i32 16
  %27 = load i32, i32* %overlay_arrow_bitmap, align 4
  %cmp40 = icmp ne i32 %27, 0
  br i1 %cmp40, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %land.lhs.true.39
  %28 = load %struct.window*, %struct.window** %w.addr, align 8
  %29 = load %struct.glyph_row*, %struct.glyph_row** %row.addr, align 8
  %30 = load %struct.glyph_row*, %struct.glyph_row** %row.addr, align 8
  %overlay_arrow_bitmap43 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %30, i32 0, i32 16
  %31 = load i32, i32* %overlay_arrow_bitmap43, align 4
  call void @draw_fringe_bitmap_1(%struct.window* %28, %struct.glyph_row* %29, i32 1, i32 1, i32 %31)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %land.lhs.true.39, %if.end.38
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @get_logical_cursor_bitmap(%struct.window* %w, i64 %cursor) #0 {
entry:
  %retval = alloca i32, align 4
  %w.addr = alloca %struct.window*, align 8
  %cursor.addr = alloca i64, align 8
  %cmap = alloca i64, align 8
  %bm = alloca i64, align 8
  store %struct.window* %w, %struct.window** %w.addr, align 8
  store i64 %cursor, i64* %cursor.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %bm, align 8
  %0 = load %struct.window*, %struct.window** %w.addr, align 8
  %contents = getelementptr inbounds %struct.window, %struct.window* %0, i32 0, i32 10
  %1 = load i64, i64* %contents, align 8
  %call1 = call %struct.buffer* @XBUFFER(i64 %1)
  %fringe_cursor_alist_ = getelementptr inbounds %struct.buffer, %struct.buffer* %call1, i32 0, i32 65
  %2 = load i64, i64* %fringe_cursor_alist_, align 8
  store i64 %2, i64* %cmap, align 8
  %3 = load i64, i64* %cmap, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %3, %call2
  %lnot = xor i1 %cmp, true
  br i1 %lnot, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %4 = load i64, i64* %cursor.addr, align 8
  %5 = load i64, i64* %cmap, align 8
  %call3 = call i64 @Fassq(i64 %4, i64 %5)
  store i64 %call3, i64* %bm, align 8
  %6 = load i64, i64* %bm, align 8
  %and = and i64 %6, 7
  %conv = trunc i64 %and to i32
  %cmp4 = icmp eq i32 %conv, 3
  br i1 %cmp4, label %if.then.6, label %if.end.12

if.then.6:                                        ; preds = %if.then
  %7 = load i64, i64* %bm, align 8
  %sub = sub nsw i64 %7, 3
  %8 = inttoptr i64 %sub to i8*
  %9 = bitcast i8* %8 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %9, i32 0, i32 1
  %cdr = bitcast %union.anon.9* %u to i64*
  %10 = load i64, i64* %cdr, align 8
  store i64 %10, i64* %bm, align 8
  %11 = load i64, i64* %bm, align 8
  %call7 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp8 = icmp eq i64 %11, %call7
  br i1 %cmp8, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then.6
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.6
  %12 = load i64, i64* %bm, align 8
  %call11 = call i32 @lookup_fringe_bitmap(i64 %12)
  store i32 %call11, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.then
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %entry
  %13 = load i64, i64* %cmap, align 8
  %14 = load i64, i64* getelementptr inbounds (%struct.buffer, %struct.buffer* @buffer_defaults, i32 0, i32 65), align 8
  %cmp14 = icmp eq i64 %13, %14
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.13
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end.13
  %15 = load i64, i64* %cursor.addr, align 8
  %16 = load i64, i64* getelementptr inbounds (%struct.buffer, %struct.buffer* @buffer_defaults, i32 0, i32 65), align 8
  %call18 = call i64 @Fassq(i64 %15, i64 %16)
  store i64 %call18, i64* %bm, align 8
  %17 = load i64, i64* %bm, align 8
  %and19 = and i64 %17, 7
  %conv20 = trunc i64 %and19 to i32
  %cmp21 = icmp eq i32 %conv20, 3
  br i1 %cmp21, label %lor.lhs.false, label %if.then.29

lor.lhs.false:                                    ; preds = %if.end.17
  %18 = load i64, i64* %bm, align 8
  %sub23 = sub nsw i64 %18, 3
  %19 = inttoptr i64 %sub23 to i8*
  %20 = bitcast i8* %19 to %struct.Lisp_Cons*
  %u24 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %20, i32 0, i32 1
  %cdr25 = bitcast %union.anon.9* %u24 to i64*
  %21 = load i64, i64* %cdr25, align 8
  store i64 %21, i64* %bm, align 8
  %22 = load i64, i64* %bm, align 8
  %call26 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp27 = icmp eq i64 %22, %call26
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %lor.lhs.false, %if.end.17
  store i32 0, i32* %retval
  br label %return

if.end.30:                                        ; preds = %lor.lhs.false
  %23 = load i64, i64* %bm, align 8
  %call31 = call i32 @lookup_fringe_bitmap(i64 %23)
  store i32 %call31, i32* %retval
  br label %return

return:                                           ; preds = %if.end.30, %if.then.29, %if.then.16, %if.end, %if.then.10
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal void @draw_fringe_bitmap_1(%struct.window* %w, %struct.glyph_row* %row, i32 %left_p, i32 %overlay, i32 %which) #0 {
entry:
  %w.addr = alloca %struct.window*, align 8
  %row.addr = alloca %struct.glyph_row*, align 8
  %left_p.addr = alloca i32, align 4
  %overlay.addr = alloca i32, align 4
  %which.addr = alloca i32, align 4
  %f = alloca %struct.frame*, align 8
  %p = alloca %struct.draw_fringe_bitmap_params, align 8
  %fb = alloca %struct.fringe_bitmap*, align 8
  %period = alloca i32, align 4
  %face_id = alloca i32, align 4
  %offset = alloca i32, align 4
  %header_line_height = alloca i32, align 4
  %face = alloca i64, align 8
  %wd238 = alloca i32, align 4
  %x = alloca i32, align 4
  %x379 = alloca i32, align 4
  %wd388 = alloca i32, align 4
  store %struct.window* %w, %struct.window** %w.addr, align 8
  store %struct.glyph_row* %row, %struct.glyph_row** %row.addr, align 8
  store i32 %left_p, i32* %left_p.addr, align 4
  store i32 %overlay, i32* %overlay.addr, align 4
  store i32 %which, i32* %which.addr, align 4
  %0 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame = getelementptr inbounds %struct.window, %struct.window* %0, i32 0, i32 1
  %1 = load i64, i64* %frame, align 8
  %sub = sub nsw i64 %1, 5
  %2 = inttoptr i64 %sub to i8*
  %3 = bitcast i8* %2 to %struct.frame*
  store %struct.frame* %3, %struct.frame** %f, align 8
  store i32 0, i32* %face_id, align 4
  %4 = load i32, i32* %overlay.addr, align 4
  %and = and i32 %4, 1
  %cmp = icmp eq i32 %and, 1
  %overlay_p = getelementptr inbounds %struct.draw_fringe_bitmap_params, %struct.draw_fringe_bitmap_params* %p, i32 0, i32 11
  %5 = zext i1 %cmp to i8
  %bf.load = load i8, i8* %overlay_p, align 4
  %bf.shl = shl i8 %5, 1
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, i8* %overlay_p, align 4
  %tobool = trunc i8 %5 to i1
  %6 = load i32, i32* %overlay.addr, align 4
  %and1 = and i32 %6, 2
  %cmp2 = icmp eq i32 %and1, 2
  %cursor_p = getelementptr inbounds %struct.draw_fringe_bitmap_params, %struct.draw_fringe_bitmap_params* %p, i32 0, i32 11
  %7 = zext i1 %cmp2 to i8
  %bf.load3 = load i8, i8* %cursor_p, align 4
  %bf.clear4 = and i8 %bf.load3, -2
  %bf.set5 = or i8 %bf.clear4, %7
  store i8 %bf.set5, i8* %cursor_p, align 4
  %tobool6 = trunc i8 %7 to i1
  %8 = load i32, i32* %which.addr, align 4
  %cmp7 = icmp ne i32 %8, 0
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %offset, align 4
  br label %if.end.27

if.else:                                          ; preds = %entry
  %9 = load i32, i32* %left_p.addr, align 4
  %tobool8 = icmp ne i32 %9, 0
  br i1 %tobool8, label %if.then.9, label %if.else.16

if.then.9:                                        ; preds = %if.else
  %10 = load %struct.glyph_row*, %struct.glyph_row** %row.addr, align 8
  %left_fringe_bitmap = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %10, i32 0, i32 17
  %11 = bitcast [11 x i8]* %left_fringe_bitmap to i88*
  %bf.load10 = load i88, i88* %11, align 4
  %bf.lshr = lshr i88 %bf.load10, 32
  %bf.clear11 = and i88 %bf.lshr, 65535
  %bf.cast = trunc i88 %bf.clear11 to i32
  store i32 %bf.cast, i32* %which.addr, align 4
  %12 = load %struct.glyph_row*, %struct.glyph_row** %row.addr, align 8
  %left_fringe_face_id = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %12, i32 0, i32 20
  %13 = bitcast i24* %left_fringe_face_id to i32*
  %bf.load12 = load i32, i32* %13, align 4
  %bf.clear13 = and i32 %bf.load12, 1048575
  store i32 %bf.clear13, i32* %face_id, align 4
  %14 = load %struct.glyph_row*, %struct.glyph_row** %row.addr, align 8
  %left_fringe_offset = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %14, i32 0, i32 21
  %bf.load14 = load i32, i32* %left_fringe_offset, align 8
  %bf.shl15 = shl i32 %bf.load14, 4
  %bf.ashr = ashr i32 %bf.shl15, 24
  store i32 %bf.ashr, i32* %offset, align 4
  br label %if.end

if.else.16:                                       ; preds = %if.else
  %15 = load %struct.glyph_row*, %struct.glyph_row** %row.addr, align 8
  %right_fringe_bitmap = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %15, i32 0, i32 17
  %16 = bitcast [11 x i8]* %right_fringe_bitmap to i88*
  %bf.load17 = load i88, i88* %16, align 4
  %bf.lshr18 = lshr i88 %bf.load17, 48
  %bf.clear19 = and i88 %bf.lshr18, 65535
  %bf.cast20 = trunc i88 %bf.clear19 to i32
  store i32 %bf.cast20, i32* %which.addr, align 4
  %17 = load %struct.glyph_row*, %struct.glyph_row** %row.addr, align 8
  %right_fringe_face_id = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %17, i32 0, i32 21
  %bf.load21 = load i32, i32* %right_fringe_face_id, align 8
  %bf.clear22 = and i32 %bf.load21, 1048575
  store i32 %bf.clear22, i32* %face_id, align 4
  %18 = load %struct.glyph_row*, %struct.glyph_row** %row.addr, align 8
  %right_fringe_offset = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %18, i32 0, i32 22
  %19 = bitcast i40* %right_fringe_offset to i64*
  %bf.load23 = load i64, i64* %19, align 4
  %bf.shl24 = shl i64 %bf.load23, 56
  %bf.ashr25 = ashr i64 %bf.shl24, 56
  %bf.cast26 = trunc i64 %bf.ashr25 to i32
  store i32 %bf.cast26, i32* %offset, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.16, %if.then.9
  br label %if.end.27

if.end.27:                                        ; preds = %if.end, %if.then
  %20 = load i32, i32* %face_id, align 4
  %cmp28 = icmp eq i32 %20, 0
  br i1 %cmp28, label %if.then.29, label %if.end.37

if.then.29:                                       ; preds = %if.end.27
  %21 = load i32, i32* %which.addr, align 4
  %idxprom = sext i32 %21 to i64
  %22 = load i64*, i64** @fringe_faces, align 8
  %arrayidx = getelementptr inbounds i64, i64* %22, i64 %idxprom
  %23 = load i64, i64* %arrayidx, align 8
  store i64 %23, i64* %face, align 8
  %24 = load i64, i64* %face, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp30 = icmp eq i64 %24, %call
  br i1 %cmp30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.29
  %25 = load %struct.frame*, %struct.frame** %f, align 8
  %call31 = call i64 @builtin_lisp_symbol(i32 467)
  %call32 = call i32 @lookup_named_face(%struct.frame* %25, i64 %call31, i1 zeroext false)
  br label %cond.end

cond.false:                                       ; preds = %if.then.29
  %26 = load %struct.frame*, %struct.frame** %f, align 8
  %27 = load i64, i64* %face, align 8
  %call33 = call i32 @lookup_derived_face(%struct.frame* %26, i64 %27, i32 4, i1 zeroext false)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call32, %cond.true ], [ %call33, %cond.false ]
  store i32 %cond, i32* %face_id, align 4
  %28 = load i32, i32* %face_id, align 4
  %cmp34 = icmp slt i32 %28, 0
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %cond.end
  store i32 4, i32* %face_id, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %cond.end
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end.27
  %29 = load i32, i32* %which.addr, align 4
  %call38 = call %struct.fringe_bitmap* @get_fringe_bitmap_data(i32 %29)
  store %struct.fringe_bitmap* %call38, %struct.fringe_bitmap** %fb, align 8
  %30 = load %struct.fringe_bitmap*, %struct.fringe_bitmap** %fb, align 8
  %period39 = getelementptr inbounds %struct.fringe_bitmap, %struct.fringe_bitmap* %30, i32 0, i32 1
  %bf.load40 = load i32, i32* %period39, align 8
  %bf.lshr41 = lshr i32 %bf.load40, 16
  %bf.clear42 = and i32 %bf.lshr41, 255
  store i32 %bf.clear42, i32* %period, align 4
  %31 = load %struct.glyph_row*, %struct.glyph_row** %row.addr, align 8
  %y = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %31, i32 0, i32 4
  %32 = load i32, i32* %y, align 4
  %33 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame43 = getelementptr inbounds %struct.window, %struct.window* %33, i32 0, i32 1
  %34 = load i64, i64* %frame43, align 8
  %sub44 = sub nsw i64 %34, 5
  %35 = inttoptr i64 %sub44 to i8*
  %36 = bitcast i8* %35 to %struct.frame*
  %internal_border_width = getelementptr inbounds %struct.frame, %struct.frame* %36, i32 0, i32 51
  %37 = load i32, i32* %internal_border_width, align 4
  %38 = load %struct.window*, %struct.window** %w.addr, align 8
  %pixel_top = getelementptr inbounds %struct.window, %struct.window* %38, i32 0, i32 31
  %39 = load i32, i32* %pixel_top, align 4
  %add = add nsw i32 %37, %39
  %add45 = add nsw i32 %32, %add
  %40 = load i32, i32* %offset, align 4
  %add46 = add nsw i32 %add45, %40
  %y47 = getelementptr inbounds %struct.draw_fringe_bitmap_params, %struct.draw_fringe_bitmap_params* %p, i32 0, i32 6
  store i32 %add46, i32* %y47, align 4
  %41 = load i32, i32* %which.addr, align 4
  %which48 = getelementptr inbounds %struct.draw_fringe_bitmap_params, %struct.draw_fringe_bitmap_params* %p, i32 0, i32 0
  store i32 %41, i32* %which48, align 4
  %42 = load %struct.fringe_bitmap*, %struct.fringe_bitmap** %fb, align 8
  %bits = getelementptr inbounds %struct.fringe_bitmap, %struct.fringe_bitmap* %42, i32 0, i32 0
  %43 = load i16*, i16** %bits, align 8
  %bits49 = getelementptr inbounds %struct.draw_fringe_bitmap_params, %struct.draw_fringe_bitmap_params* %p, i32 0, i32 1
  store i16* %43, i16** %bits49, align 8
  %44 = load %struct.fringe_bitmap*, %struct.fringe_bitmap** %fb, align 8
  %width = getelementptr inbounds %struct.fringe_bitmap, %struct.fringe_bitmap* %44, i32 0, i32 1
  %bf.load50 = load i32, i32* %width, align 8
  %bf.lshr51 = lshr i32 %bf.load50, 8
  %bf.clear52 = and i32 %bf.lshr51, 255
  %wd = getelementptr inbounds %struct.draw_fringe_bitmap_params, %struct.draw_fringe_bitmap_params* %p, i32 0, i32 2
  store i32 %bf.clear52, i32* %wd, align 4
  %45 = load %struct.fringe_bitmap*, %struct.fringe_bitmap** %fb, align 8
  %height = getelementptr inbounds %struct.fringe_bitmap, %struct.fringe_bitmap* %45, i32 0, i32 1
  %bf.load53 = load i32, i32* %height, align 8
  %bf.clear54 = and i32 %bf.load53, 255
  %h = getelementptr inbounds %struct.draw_fringe_bitmap_params, %struct.draw_fringe_bitmap_params* %p, i32 0, i32 3
  store i32 %bf.clear54, i32* %h, align 4
  %46 = load i32, i32* %period, align 4
  %cmp55 = icmp sgt i32 %46, 0
  br i1 %cmp55, label %cond.true.56, label %cond.false.58

cond.true.56:                                     ; preds = %if.end.37
  %y57 = getelementptr inbounds %struct.draw_fringe_bitmap_params, %struct.draw_fringe_bitmap_params* %p, i32 0, i32 6
  %47 = load i32, i32* %y57, align 4
  %48 = load i32, i32* %period, align 4
  %rem = srem i32 %47, %48
  br label %cond.end.59

cond.false.58:                                    ; preds = %if.end.37
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.false.58, %cond.true.56
  %cond60 = phi i32 [ %rem, %cond.true.56 ], [ 0, %cond.false.58 ]
  %dh = getelementptr inbounds %struct.draw_fringe_bitmap_params, %struct.draw_fringe_bitmap_params* %p, i32 0, i32 4
  store i32 %cond60, i32* %dh, align 4
  %dh61 = getelementptr inbounds %struct.draw_fringe_bitmap_params, %struct.draw_fringe_bitmap_params* %p, i32 0, i32 4
  %49 = load i32, i32* %dh61, align 4
  %h62 = getelementptr inbounds %struct.draw_fringe_bitmap_params, %struct.draw_fringe_bitmap_params* %p, i32 0, i32 3
  %50 = load i32, i32* %h62, align 4
  %sub63 = sub nsw i32 %50, %49
  store i32 %sub63, i32* %h62, align 4
  %51 = load %struct.fringe_bitmap*, %struct.fringe_bitmap** %fb, align 8
  %align = getelementptr inbounds %struct.fringe_bitmap, %struct.fringe_bitmap* %51, i32 0, i32 1
  %bf.load64 = load i32, i32* %align, align 8
  %bf.lshr65 = lshr i32 %bf.load64, 24
  %bf.clear66 = and i32 %bf.lshr65, 3
  switch i32 %bf.clear66, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb.72
    i32 1, label %sw.bb.77
  ]

sw.bb:                                            ; preds = %cond.end.59
  %52 = load %struct.glyph_row*, %struct.glyph_row** %row.addr, align 8
  %height67 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %52, i32 0, i32 7
  %53 = load i32, i32* %height67, align 4
  %h68 = getelementptr inbounds %struct.draw_fringe_bitmap_params, %struct.draw_fringe_bitmap_params* %p, i32 0, i32 3
  %54 = load i32, i32* %h68, align 4
  %sub69 = sub nsw i32 %53, %54
  %div = sdiv i32 %sub69, 2
  %y70 = getelementptr inbounds %struct.draw_fringe_bitmap_params, %struct.draw_fringe_bitmap_params* %p, i32 0, i32 6
  %55 = load i32, i32* %y70, align 4
  %add71 = add nsw i32 %55, %div
  store i32 %add71, i32* %y70, align 4
  br label %sw.epilog

sw.bb.72:                                         ; preds = %cond.end.59
  %56 = load %struct.glyph_row*, %struct.glyph_row** %row.addr, align 8
  %visible_height = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %56, i32 0, i32 10
  %57 = load i32, i32* %visible_height, align 4
  %h73 = getelementptr inbounds %struct.draw_fringe_bitmap_params, %struct.draw_fringe_bitmap_params* %p, i32 0, i32 3
  %58 = load i32, i32* %h73, align 4
  %sub74 = sub nsw i32 %57, %58
  %y75 = getelementptr inbounds %struct.draw_fringe_bitmap_params, %struct.draw_fringe_bitmap_params* %p, i32 0, i32 6
  %59 = load i32, i32* %y75, align 4
  %add76 = add nsw i32 %59, %sub74
  store i32 %add76, i32* %y75, align 4
  br label %sw.epilog

sw.bb.77:                                         ; preds = %cond.end.59
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end.59, %sw.bb.77, %sw.bb.72, %sw.bb
  br i1 true, label %cond.true.78, label %cond.false.82

cond.true.78:                                     ; preds = %sw.epilog
  %60 = load i32, i32* %face_id, align 4
  %add79 = add i32 %60, 0
  %61 = load %struct.frame*, %struct.frame** %f, align 8
  %face_cache = getelementptr inbounds %struct.frame, %struct.frame* %61, i32 0, i32 20
  %62 = load %struct.face_cache*, %struct.face_cache** %face_cache, align 8
  %used = getelementptr inbounds %struct.face_cache, %struct.face_cache* %62, i32 0, i32 4
  %63 = load i32, i32* %used, align 4
  %add80 = add i32 %63, 0
  %cmp81 = icmp ult i32 %add79, %add80
  br i1 %cmp81, label %cond.true.90, label %cond.false.94

cond.false.82:                                    ; preds = %sw.epilog
  %64 = load i32, i32* %face_id, align 4
  %conv = sext i32 %64 to i64
  %add83 = add i64 %conv, 0
  %65 = load %struct.frame*, %struct.frame** %f, align 8
  %face_cache84 = getelementptr inbounds %struct.frame, %struct.frame* %65, i32 0, i32 20
  %66 = load %struct.face_cache*, %struct.face_cache** %face_cache84, align 8
  %used85 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %66, i32 0, i32 4
  %67 = load i32, i32* %used85, align 4
  %conv86 = sext i32 %67 to i64
  %add87 = add i64 %conv86, 0
  %cmp88 = icmp ult i64 %add83, %add87
  br i1 %cmp88, label %cond.true.90, label %cond.false.94

cond.true.90:                                     ; preds = %cond.false.82, %cond.true.78
  %68 = load i32, i32* %face_id, align 4
  %idxprom91 = sext i32 %68 to i64
  %69 = load %struct.frame*, %struct.frame** %f, align 8
  %face_cache92 = getelementptr inbounds %struct.frame, %struct.frame* %69, i32 0, i32 20
  %70 = load %struct.face_cache*, %struct.face_cache** %face_cache92, align 8
  %faces_by_id = getelementptr inbounds %struct.face_cache, %struct.face_cache* %70, i32 0, i32 2
  %71 = load %struct.face**, %struct.face*** %faces_by_id, align 8
  %arrayidx93 = getelementptr inbounds %struct.face*, %struct.face** %71, i64 %idxprom91
  %72 = load %struct.face*, %struct.face** %arrayidx93, align 8
  br label %cond.end.95

cond.false.94:                                    ; preds = %cond.false.82, %cond.true.78
  br label %cond.end.95

cond.end.95:                                      ; preds = %cond.false.94, %cond.true.90
  %cond96 = phi %struct.face* [ %72, %cond.true.90 ], [ null, %cond.false.94 ]
  %face97 = getelementptr inbounds %struct.draw_fringe_bitmap_params, %struct.draw_fringe_bitmap_params* %p, i32 0, i32 12
  store %struct.face* %cond96, %struct.face** %face97, align 8
  %face98 = getelementptr inbounds %struct.draw_fringe_bitmap_params, %struct.draw_fringe_bitmap_params* %p, i32 0, i32 12
  %73 = load %struct.face*, %struct.face** %face98, align 8
  %cmp99 = icmp eq %struct.face* %73, null
  br i1 %cmp99, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %cond.end.95
  br label %if.end.563

if.end.102:                                       ; preds = %cond.end.95
  %74 = load %struct.frame*, %struct.frame** %f, align 8
  %face103 = getelementptr inbounds %struct.draw_fringe_bitmap_params, %struct.draw_fringe_bitmap_params* %p, i32 0, i32 12
  %75 = load %struct.face*, %struct.face** %face103, align 8
  call void @prepare_face_for_display(%struct.frame* %74, %struct.face* %75)
  %bx = getelementptr inbounds %struct.draw_fringe_bitmap_params, %struct.draw_fringe_bitmap_params* %p, i32 0, i32 7
  store i32 -1, i32* %bx, align 4
  %76 = load %struct.window*, %struct.window** %w.addr, align 8
  %contents = getelementptr inbounds %struct.window, %struct.window* %76, i32 0, i32 10
  %77 = load i64, i64* %contents, align 8
  %call104 = call zeroext i1 @BUFFERP(i64 %77)
  br i1 %call104, label %cond.true.106, label %cond.false.177

cond.true.106:                                    ; preds = %if.end.102
  %78 = load %struct.window*, %struct.window** %w.addr, align 8
  %mini = getelementptr inbounds %struct.window, %struct.window* %78, i32 0, i32 67
  %bf.load107 = load i16, i16* %mini, align 4
  %bf.clear108 = and i16 %bf.load107, 1
  %bf.cast109 = trunc i16 %bf.clear108 to i1
  br i1 %bf.cast109, label %cond.false.218, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.true.106
  %79 = load %struct.window*, %struct.window** %w.addr, align 8
  %pseudo_window_p = getelementptr inbounds %struct.window, %struct.window* %79, i32 0, i32 67
  %bf.load110 = load i16, i16* %pseudo_window_p, align 4
  %bf.lshr111 = lshr i16 %bf.load110, 11
  %bf.clear112 = and i16 %bf.lshr111, 1
  %bf.cast113 = trunc i16 %bf.clear112 to i1
  br i1 %bf.cast113, label %cond.false.218, label %land.lhs.true.114

land.lhs.true.114:                                ; preds = %land.lhs.true
  %80 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame115 = getelementptr inbounds %struct.window, %struct.window* %80, i32 0, i32 1
  %81 = load i64, i64* %frame115, align 8
  %sub116 = sub nsw i64 %81, 5
  %82 = inttoptr i64 %sub116 to i8*
  %83 = bitcast i8* %82 to %struct.frame*
  %wants_modeline = getelementptr inbounds %struct.frame, %struct.frame* %83, i32 0, i32 26
  %84 = bitcast i48* %wants_modeline to i64*
  %bf.load117 = load i64, i64* %84, align 8
  %bf.lshr118 = lshr i64 %bf.load117, 14
  %bf.clear119 = and i64 %bf.lshr118, 1
  %bf.cast120 = trunc i64 %bf.clear119 to i1
  br i1 %bf.cast120, label %land.lhs.true.122, label %cond.false.218

land.lhs.true.122:                                ; preds = %land.lhs.true.114
  %85 = load %struct.window*, %struct.window** %w.addr, align 8
  %contents123 = getelementptr inbounds %struct.window, %struct.window* %85, i32 0, i32 10
  %86 = load i64, i64* %contents123, align 8
  %call124 = call %struct.buffer* @XBUFFER(i64 %86)
  %header_line_format_ = getelementptr inbounds %struct.buffer, %struct.buffer* %call124, i32 0, i32 13
  %87 = load i64, i64* %header_line_format_, align 8
  %call125 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp126 = icmp eq i64 %87, %call125
  br i1 %cmp126, label %cond.false.218, label %land.lhs.true.128

land.lhs.true.128:                                ; preds = %land.lhs.true.122
  %88 = load %struct.window*, %struct.window** %w.addr, align 8
  %pixel_height = getelementptr inbounds %struct.window, %struct.window* %88, i32 0, i32 35
  %89 = load i32, i32* %pixel_height, align 4
  %90 = load %struct.window*, %struct.window** %w.addr, align 8
  %contents129 = getelementptr inbounds %struct.window, %struct.window* %90, i32 0, i32 10
  %91 = load i64, i64* %contents129, align 8
  %call130 = call zeroext i1 @BUFFERP(i64 %91)
  br i1 %call130, label %cond.true.132, label %cond.false.164

cond.true.132:                                    ; preds = %land.lhs.true.128
  %92 = load %struct.window*, %struct.window** %w.addr, align 8
  %mini133 = getelementptr inbounds %struct.window, %struct.window* %92, i32 0, i32 67
  %bf.load134 = load i16, i16* %mini133, align 4
  %bf.clear135 = and i16 %bf.load134, 1
  %bf.cast136 = trunc i16 %bf.clear135 to i1
  br i1 %bf.cast136, label %cond.false.169, label %land.lhs.true.137

land.lhs.true.137:                                ; preds = %cond.true.132
  %93 = load %struct.window*, %struct.window** %w.addr, align 8
  %pseudo_window_p138 = getelementptr inbounds %struct.window, %struct.window* %93, i32 0, i32 67
  %bf.load139 = load i16, i16* %pseudo_window_p138, align 4
  %bf.lshr140 = lshr i16 %bf.load139, 11
  %bf.clear141 = and i16 %bf.lshr140, 1
  %bf.cast142 = trunc i16 %bf.clear141 to i1
  br i1 %bf.cast142, label %cond.false.169, label %land.lhs.true.143

land.lhs.true.143:                                ; preds = %land.lhs.true.137
  %94 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame144 = getelementptr inbounds %struct.window, %struct.window* %94, i32 0, i32 1
  %95 = load i64, i64* %frame144, align 8
  %sub145 = sub nsw i64 %95, 5
  %96 = inttoptr i64 %sub145 to i8*
  %97 = bitcast i8* %96 to %struct.frame*
  %wants_modeline146 = getelementptr inbounds %struct.frame, %struct.frame* %97, i32 0, i32 26
  %98 = bitcast i48* %wants_modeline146 to i64*
  %bf.load147 = load i64, i64* %98, align 8
  %bf.lshr148 = lshr i64 %bf.load147, 14
  %bf.clear149 = and i64 %bf.lshr148, 1
  %bf.cast150 = trunc i64 %bf.clear149 to i1
  br i1 %bf.cast150, label %land.lhs.true.152, label %cond.false.169

land.lhs.true.152:                                ; preds = %land.lhs.true.143
  %99 = load %struct.window*, %struct.window** %w.addr, align 8
  %contents153 = getelementptr inbounds %struct.window, %struct.window* %99, i32 0, i32 10
  %100 = load i64, i64* %contents153, align 8
  %call154 = call %struct.buffer* @XBUFFER(i64 %100)
  %mode_line_format_ = getelementptr inbounds %struct.buffer, %struct.buffer* %call154, i32 0, i32 12
  %101 = load i64, i64* %mode_line_format_, align 8
  %call155 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp156 = icmp eq i64 %101, %call155
  br i1 %cmp156, label %cond.false.169, label %land.lhs.true.158

land.lhs.true.158:                                ; preds = %land.lhs.true.152
  %102 = load %struct.window*, %struct.window** %w.addr, align 8
  %pixel_height159 = getelementptr inbounds %struct.window, %struct.window* %102, i32 0, i32 35
  %103 = load i32, i32* %pixel_height159, align 4
  %104 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame160 = getelementptr inbounds %struct.window, %struct.window* %104, i32 0, i32 1
  %105 = load i64, i64* %frame160, align 8
  %sub161 = sub nsw i64 %105, 5
  %106 = inttoptr i64 %sub161 to i8*
  %107 = bitcast i8* %106 to %struct.frame*
  %line_height = getelementptr inbounds %struct.frame, %struct.frame* %107, i32 0, i32 60
  %108 = load i32, i32* %line_height, align 4
  %cmp162 = icmp sgt i32 %103, %108
  br i1 %cmp162, label %cond.true.165, label %cond.false.169

cond.false.164:                                   ; preds = %land.lhs.true.128
  br i1 false, label %cond.true.165, label %cond.false.169

cond.true.165:                                    ; preds = %cond.false.164, %land.lhs.true.158
  %109 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame166 = getelementptr inbounds %struct.window, %struct.window* %109, i32 0, i32 1
  %110 = load i64, i64* %frame166, align 8
  %sub167 = sub nsw i64 %110, 5
  %111 = inttoptr i64 %sub167 to i8*
  %112 = bitcast i8* %111 to %struct.frame*
  %line_height168 = getelementptr inbounds %struct.frame, %struct.frame* %112, i32 0, i32 60
  %113 = load i32, i32* %line_height168, align 4
  %mul = mul nsw i32 2, %113
  br label %cond.end.173

cond.false.169:                                   ; preds = %cond.false.164, %land.lhs.true.158, %land.lhs.true.152, %land.lhs.true.143, %land.lhs.true.137, %cond.true.132
  %114 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame170 = getelementptr inbounds %struct.window, %struct.window* %114, i32 0, i32 1
  %115 = load i64, i64* %frame170, align 8
  %sub171 = sub nsw i64 %115, 5
  %116 = inttoptr i64 %sub171 to i8*
  %117 = bitcast i8* %116 to %struct.frame*
  %line_height172 = getelementptr inbounds %struct.frame, %struct.frame* %117, i32 0, i32 60
  %118 = load i32, i32* %line_height172, align 4
  br label %cond.end.173

cond.end.173:                                     ; preds = %cond.false.169, %cond.true.165
  %cond174 = phi i32 [ %mul, %cond.true.165 ], [ %118, %cond.false.169 ]
  %cmp175 = icmp sgt i32 %89, %cond174
  br i1 %cmp175, label %cond.true.178, label %cond.false.218

cond.false.177:                                   ; preds = %if.end.102
  br i1 false, label %cond.true.178, label %cond.false.218

cond.true.178:                                    ; preds = %cond.false.177, %cond.end.173
  %119 = load %struct.window*, %struct.window** %w.addr, align 8
  %header_line_height179 = getelementptr inbounds %struct.window, %struct.window* %119, i32 0, i32 64
  %120 = load i32, i32* %header_line_height179, align 4
  %cmp180 = icmp sge i32 %120, 0
  br i1 %cmp180, label %cond.true.182, label %cond.false.184

cond.true.182:                                    ; preds = %cond.true.178
  %121 = load %struct.window*, %struct.window** %w.addr, align 8
  %header_line_height183 = getelementptr inbounds %struct.window, %struct.window* %121, i32 0, i32 64
  %122 = load i32, i32* %header_line_height183, align 4
  br label %cond.end.216

cond.false.184:                                   ; preds = %cond.true.178
  %123 = load %struct.window*, %struct.window** %w.addr, align 8
  %current_matrix = getelementptr inbounds %struct.window, %struct.window* %123, i32 0, i32 24
  %124 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix, align 8
  %tobool185 = icmp ne %struct.glyph_matrix* %124, null
  br i1 %tobool185, label %land.lhs.true.186, label %cond.false.194

land.lhs.true.186:                                ; preds = %cond.false.184
  %125 = load %struct.window*, %struct.window** %w.addr, align 8
  %current_matrix187 = getelementptr inbounds %struct.window, %struct.window* %125, i32 0, i32 24
  %126 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix187, align 8
  %rows = getelementptr inbounds %struct.glyph_matrix, %struct.glyph_matrix* %126, i32 0, i32 1
  %127 = load %struct.glyph_row*, %struct.glyph_row** %rows, align 8
  %tobool188 = icmp ne %struct.glyph_row* %127, null
  br i1 %tobool188, label %cond.true.189, label %cond.false.194

cond.true.189:                                    ; preds = %land.lhs.true.186
  %128 = load %struct.window*, %struct.window** %w.addr, align 8
  %current_matrix190 = getelementptr inbounds %struct.window, %struct.window* %128, i32 0, i32 24
  %129 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix190, align 8
  %rows191 = getelementptr inbounds %struct.glyph_matrix, %struct.glyph_matrix* %129, i32 0, i32 1
  %130 = load %struct.glyph_row*, %struct.glyph_row** %rows191, align 8
  %height192 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %130, i32 0, i32 7
  %131 = load i32, i32* %height192, align 4
  %tobool193 = icmp ne i32 %131, 0
  br i1 %tobool193, label %cond.true.195, label %cond.false.209

cond.false.194:                                   ; preds = %land.lhs.true.186, %cond.false.184
  br i1 false, label %cond.true.195, label %cond.false.209

cond.true.195:                                    ; preds = %cond.false.194, %cond.true.189
  %132 = load %struct.window*, %struct.window** %w.addr, align 8
  %current_matrix196 = getelementptr inbounds %struct.window, %struct.window* %132, i32 0, i32 24
  %133 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix196, align 8
  %tobool197 = icmp ne %struct.glyph_matrix* %133, null
  br i1 %tobool197, label %land.lhs.true.198, label %cond.false.206

land.lhs.true.198:                                ; preds = %cond.true.195
  %134 = load %struct.window*, %struct.window** %w.addr, align 8
  %current_matrix199 = getelementptr inbounds %struct.window, %struct.window* %134, i32 0, i32 24
  %135 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix199, align 8
  %rows200 = getelementptr inbounds %struct.glyph_matrix, %struct.glyph_matrix* %135, i32 0, i32 1
  %136 = load %struct.glyph_row*, %struct.glyph_row** %rows200, align 8
  %tobool201 = icmp ne %struct.glyph_row* %136, null
  br i1 %tobool201, label %cond.true.202, label %cond.false.206

cond.true.202:                                    ; preds = %land.lhs.true.198
  %137 = load %struct.window*, %struct.window** %w.addr, align 8
  %current_matrix203 = getelementptr inbounds %struct.window, %struct.window* %137, i32 0, i32 24
  %138 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix203, align 8
  %rows204 = getelementptr inbounds %struct.glyph_matrix, %struct.glyph_matrix* %138, i32 0, i32 1
  %139 = load %struct.glyph_row*, %struct.glyph_row** %rows204, align 8
  %height205 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %139, i32 0, i32 7
  %140 = load i32, i32* %height205, align 4
  br label %cond.end.207

cond.false.206:                                   ; preds = %land.lhs.true.198, %cond.true.195
  br label %cond.end.207

cond.end.207:                                     ; preds = %cond.false.206, %cond.true.202
  %cond208 = phi i32 [ %140, %cond.true.202 ], [ 0, %cond.false.206 ]
  br label %cond.end.213

cond.false.209:                                   ; preds = %cond.false.194, %cond.true.189
  %141 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame210 = getelementptr inbounds %struct.window, %struct.window* %141, i32 0, i32 1
  %142 = load i64, i64* %frame210, align 8
  %sub211 = sub nsw i64 %142, 5
  %143 = inttoptr i64 %sub211 to i8*
  %144 = bitcast i8* %143 to %struct.frame*
  %call212 = call i32 @estimate_mode_line_height(%struct.frame* %144, i32 5)
  br label %cond.end.213

cond.end.213:                                     ; preds = %cond.false.209, %cond.end.207
  %cond214 = phi i32 [ %cond208, %cond.end.207 ], [ %call212, %cond.false.209 ]
  %145 = load %struct.window*, %struct.window** %w.addr, align 8
  %header_line_height215 = getelementptr inbounds %struct.window, %struct.window* %145, i32 0, i32 64
  store i32 %cond214, i32* %header_line_height215, align 4
  br label %cond.end.216

cond.end.216:                                     ; preds = %cond.end.213, %cond.true.182
  %cond217 = phi i32 [ %122, %cond.true.182 ], [ %cond214, %cond.end.213 ]
  br label %cond.end.219

cond.false.218:                                   ; preds = %cond.false.177, %cond.end.173, %land.lhs.true.122, %land.lhs.true.114, %land.lhs.true, %cond.true.106
  br label %cond.end.219

cond.end.219:                                     ; preds = %cond.false.218, %cond.end.216
  %cond220 = phi i32 [ %cond217, %cond.end.216 ], [ 0, %cond.false.218 ]
  store i32 %cond220, i32* %header_line_height, align 4
  %146 = load i32, i32* %header_line_height, align 4
  %147 = load %struct.glyph_row*, %struct.glyph_row** %row.addr, align 8
  %y221 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %147, i32 0, i32 4
  %148 = load i32, i32* %y221, align 4
  %cmp222 = icmp sgt i32 %146, %148
  br i1 %cmp222, label %cond.true.224, label %cond.false.225

cond.true.224:                                    ; preds = %cond.end.219
  %149 = load i32, i32* %header_line_height, align 4
  br label %cond.end.227

cond.false.225:                                   ; preds = %cond.end.219
  %150 = load %struct.glyph_row*, %struct.glyph_row** %row.addr, align 8
  %y226 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %150, i32 0, i32 4
  %151 = load i32, i32* %y226, align 4
  br label %cond.end.227

cond.end.227:                                     ; preds = %cond.false.225, %cond.true.224
  %cond228 = phi i32 [ %149, %cond.true.224 ], [ %151, %cond.false.225 ]
  %152 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame229 = getelementptr inbounds %struct.window, %struct.window* %152, i32 0, i32 1
  %153 = load i64, i64* %frame229, align 8
  %sub230 = sub nsw i64 %153, 5
  %154 = inttoptr i64 %sub230 to i8*
  %155 = bitcast i8* %154 to %struct.frame*
  %internal_border_width231 = getelementptr inbounds %struct.frame, %struct.frame* %155, i32 0, i32 51
  %156 = load i32, i32* %internal_border_width231, align 4
  %157 = load %struct.window*, %struct.window** %w.addr, align 8
  %pixel_top232 = getelementptr inbounds %struct.window, %struct.window* %157, i32 0, i32 31
  %158 = load i32, i32* %pixel_top232, align 4
  %add233 = add nsw i32 %156, %158
  %add234 = add nsw i32 %cond228, %add233
  %by = getelementptr inbounds %struct.draw_fringe_bitmap_params, %struct.draw_fringe_bitmap_params* %p, i32 0, i32 9
  store i32 %add234, i32* %by, align 4
  %159 = load %struct.glyph_row*, %struct.glyph_row** %row.addr, align 8
  %visible_height235 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %159, i32 0, i32 10
  %160 = load i32, i32* %visible_height235, align 4
  %ny = getelementptr inbounds %struct.draw_fringe_bitmap_params, %struct.draw_fringe_bitmap_params* %p, i32 0, i32 10
  store i32 %160, i32* %ny, align 4
  %161 = load i32, i32* %left_p.addr, align 4
  %tobool236 = icmp ne i32 %161, 0
  br i1 %tobool236, label %if.then.237, label %if.else.378

if.then.237:                                      ; preds = %cond.end.227
  %162 = load %struct.window*, %struct.window** %w.addr, align 8
  %left_fringe_width = getelementptr inbounds %struct.window, %struct.window* %162, i32 0, i32 57
  %163 = load i32, i32* %left_fringe_width, align 4
  %cmp239 = icmp sge i32 %163, 0
  br i1 %cmp239, label %cond.true.241, label %cond.false.243

cond.true.241:                                    ; preds = %if.then.237
  %164 = load %struct.window*, %struct.window** %w.addr, align 8
  %left_fringe_width242 = getelementptr inbounds %struct.window, %struct.window* %164, i32 0, i32 57
  %165 = load i32, i32* %left_fringe_width242, align 4
  br label %cond.end.247

cond.false.243:                                   ; preds = %if.then.237
  %166 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame244 = getelementptr inbounds %struct.window, %struct.window* %166, i32 0, i32 1
  %167 = load i64, i64* %frame244, align 8
  %sub245 = sub nsw i64 %167, 5
  %168 = inttoptr i64 %sub245 to i8*
  %169 = bitcast i8* %168 to %struct.frame*
  %left_fringe_width246 = getelementptr inbounds %struct.frame, %struct.frame* %169, i32 0, i32 54
  %170 = load i32, i32* %left_fringe_width246, align 4
  br label %cond.end.247

cond.end.247:                                     ; preds = %cond.false.243, %cond.true.241
  %cond248 = phi i32 [ %165, %cond.true.241 ], [ %170, %cond.false.243 ]
  store i32 %cond248, i32* %wd238, align 4
  %171 = load %struct.window*, %struct.window** %w.addr, align 8
  %172 = load %struct.window*, %struct.window** %w.addr, align 8
  %fringes_outside_margins = getelementptr inbounds %struct.window, %struct.window* %172, i32 0, i32 67
  %bf.load249 = load i16, i16* %fringes_outside_margins, align 4
  %bf.lshr250 = lshr i16 %bf.load249, 12
  %bf.clear251 = and i16 %bf.lshr250, 1
  %bf.cast252 = trunc i16 %bf.clear251 to i1
  %cond254 = select i1 %bf.cast252, i32 0, i32 1
  %call255 = call i32 @window_box_left(%struct.window* %171, i32 %cond254)
  store i32 %call255, i32* %x, align 4
  %wd256 = getelementptr inbounds %struct.draw_fringe_bitmap_params, %struct.draw_fringe_bitmap_params* %p, i32 0, i32 2
  %173 = load i32, i32* %wd256, align 4
  %174 = load i32, i32* %wd238, align 4
  %cmp257 = icmp sgt i32 %173, %174
  br i1 %cmp257, label %if.then.259, label %if.end.261

if.then.259:                                      ; preds = %cond.end.247
  %175 = load i32, i32* %wd238, align 4
  %wd260 = getelementptr inbounds %struct.draw_fringe_bitmap_params, %struct.draw_fringe_bitmap_params* %p, i32 0, i32 2
  store i32 %175, i32* %wd260, align 4
  br label %if.end.261

if.end.261:                                       ; preds = %if.then.259, %cond.end.247
  %176 = load i32, i32* %x, align 4
  %wd262 = getelementptr inbounds %struct.draw_fringe_bitmap_params, %struct.draw_fringe_bitmap_params* %p, i32 0, i32 2
  %177 = load i32, i32* %wd262, align 4
  %sub263 = sub nsw i32 %176, %177
  %178 = load i32, i32* %wd238, align 4
  %wd264 = getelementptr inbounds %struct.draw_fringe_bitmap_params, %struct.draw_fringe_bitmap_params* %p, i32 0, i32 2
  %179 = load i32, i32* %wd264, align 4
  %sub265 = sub nsw i32 %178, %179
  %div266 = sdiv i32 %sub265, 2
  %sub267 = sub nsw i32 %sub263, %div266
  %x268 = getelementptr inbounds %struct.draw_fringe_bitmap_params, %struct.draw_fringe_bitmap_params* %p, i32 0, i32 5
  store i32 %sub267, i32* %x268, align 4
  %wd269 = getelementptr inbounds %struct.draw_fringe_bitmap_params, %struct.draw_fringe_bitmap_params* %p, i32 0, i32 2
  %180 = load i32, i32* %wd269, align 4
  %181 = load i32, i32* %wd238, align 4
  %cmp270 = icmp slt i32 %180, %181
  br i1 %cmp270, label %if.then.285, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.261
  %y272 = getelementptr inbounds %struct.draw_fringe_bitmap_params, %struct.draw_fringe_bitmap_params* %p, i32 0, i32 6
  %182 = load i32, i32* %y272, align 4
  %by273 = getelementptr inbounds %struct.draw_fringe_bitmap_params, %struct.draw_fringe_bitmap_params* %p, i32 0, i32 9
  %183 = load i32, i32* %by273, align 4
  %cmp274 = icmp sgt i32 %182, %183
  br i1 %cmp274, label %if.then.285, label %lor.lhs.false.276

lor.lhs.false.276:                                ; preds = %lor.lhs.false
  %y277 = getelementptr inbounds %struct.draw_fringe_bitmap_params, %struct.draw_fringe_bitmap_params* %p, i32 0, i32 6
  %184 = load i32, i32* %y277, align 4
  %h278 = getelementptr inbounds %struct.draw_fringe_bitmap_params, %struct.draw_fringe_bitmap_params* %p, i32 0, i32 3
  %185 = load i32, i32* %h278, align 4
  %add279 = add nsw i32 %184, %185
  %by280 = getelementptr inbounds %struct.draw_fringe_bitmap_params, %struct.draw_fringe_bitmap_params* %p, i32 0, i32 9
  %186 = load i32, i32* %by280, align 4
  %ny281 = getelementptr inbounds %struct.draw_fringe_bitmap_params, %struct.draw_fringe_bitmap_params* %p, i32 0, i32 10
  %187 = load i32, i32* %ny281, align 4
  %add282 = add nsw i32 %186, %187
  %cmp283 = icmp slt i32 %add279, %add282
  br i1 %cmp283, label %if.then.285, label %if.end.377

if.then.285:                                      ; preds = %lor.lhs.false.276, %lor.lhs.false, %if.end.261
  %188 = load %struct.window*, %struct.window** %w.addr, align 8
  %pixel_left = getelementptr inbounds %struct.window, %struct.window* %188, i32 0, i32 30
  %189 = load i32, i32* %pixel_left, align 4
  %cmp286 = icmp eq i32 %189, 0
  br i1 %cmp286, label %land.end, label %land.lhs.true.288

land.lhs.true.288:                                ; preds = %if.then.285
  %190 = load %struct.frame*, %struct.frame** %f, align 8
  %right_divider_width = getelementptr inbounds %struct.frame, %struct.frame* %190, i32 0, i32 52
  %191 = load i32, i32* %right_divider_width, align 4
  %tobool289 = icmp ne i32 %191, 0
  br i1 %tobool289, label %land.end, label %land.lhs.true.290

land.lhs.true.290:                                ; preds = %land.lhs.true.288
  %192 = load %struct.window*, %struct.window** %w.addr, align 8
  %pseudo_window_p291 = getelementptr inbounds %struct.window, %struct.window* %192, i32 0, i32 67
  %bf.load292 = load i16, i16* %pseudo_window_p291, align 4
  %bf.lshr293 = lshr i16 %bf.load292, 11
  %bf.clear294 = and i16 %bf.lshr293, 1
  %bf.cast295 = trunc i16 %bf.clear294 to i1
  br i1 %bf.cast295, label %cond.true.297, label %cond.false.298

cond.true.297:                                    ; preds = %land.lhs.true.290
  br label %cond.end.326

cond.false.298:                                   ; preds = %land.lhs.true.290
  %193 = load %struct.window*, %struct.window** %w.addr, align 8
  %vertical_scroll_bar_type = getelementptr inbounds %struct.window, %struct.window* %193, i32 0, i32 16
  %194 = load i64, i64* %vertical_scroll_bar_type, align 8
  %call299 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp300 = icmp eq i64 %194, %call299
  br i1 %cmp300, label %cond.true.302, label %cond.false.310

cond.true.302:                                    ; preds = %cond.false.298
  %195 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame303 = getelementptr inbounds %struct.window, %struct.window* %195, i32 0, i32 1
  %196 = load i64, i64* %frame303, align 8
  %sub304 = sub nsw i64 %196, 5
  %197 = inttoptr i64 %sub304 to i8*
  %198 = bitcast i8* %197 to %struct.frame*
  %vertical_scroll_bar_type305 = getelementptr inbounds %struct.frame, %struct.frame* %198, i32 0, i32 26
  %199 = bitcast i48* %vertical_scroll_bar_type305 to i64*
  %bf.load306 = load i64, i64* %199, align 8
  %bf.lshr307 = lshr i64 %bf.load306, 30
  %bf.clear308 = and i64 %bf.lshr307, 3
  %bf.cast309 = trunc i64 %bf.clear308 to i32
  br label %cond.end.324

cond.false.310:                                   ; preds = %cond.false.298
  %200 = load %struct.window*, %struct.window** %w.addr, align 8
  %vertical_scroll_bar_type311 = getelementptr inbounds %struct.window, %struct.window* %200, i32 0, i32 16
  %201 = load i64, i64* %vertical_scroll_bar_type311, align 8
  %call312 = call i64 @builtin_lisp_symbol(i32 607)
  %cmp313 = icmp eq i64 %201, %call312
  br i1 %cmp313, label %cond.true.315, label %cond.false.316

cond.true.315:                                    ; preds = %cond.false.310
  br label %cond.end.322

cond.false.316:                                   ; preds = %cond.false.310
  %202 = load %struct.window*, %struct.window** %w.addr, align 8
  %vertical_scroll_bar_type317 = getelementptr inbounds %struct.window, %struct.window* %202, i32 0, i32 16
  %203 = load i64, i64* %vertical_scroll_bar_type317, align 8
  %call318 = call i64 @builtin_lisp_symbol(i32 811)
  %cmp319 = icmp eq i64 %203, %call318
  %cond321 = select i1 %cmp319, i32 2, i32 0
  br label %cond.end.322

cond.end.322:                                     ; preds = %cond.false.316, %cond.true.315
  %cond323 = phi i32 [ 1, %cond.true.315 ], [ %cond321, %cond.false.316 ]
  br label %cond.end.324

cond.end.324:                                     ; preds = %cond.end.322, %cond.true.302
  %cond325 = phi i32 [ %bf.cast309, %cond.true.302 ], [ %cond323, %cond.end.322 ]
  br label %cond.end.326

cond.end.326:                                     ; preds = %cond.end.324, %cond.true.297
  %cond327 = phi i32 [ 0, %cond.true.297 ], [ %cond325, %cond.end.324 ]
  %cmp328 = icmp eq i32 %cond327, 1
  br i1 %cmp328, label %land.end, label %lor.lhs.false.330

lor.lhs.false.330:                                ; preds = %cond.end.326
  %204 = load %struct.window*, %struct.window** %w.addr, align 8
  %pseudo_window_p331 = getelementptr inbounds %struct.window, %struct.window* %204, i32 0, i32 67
  %bf.load332 = load i16, i16* %pseudo_window_p331, align 4
  %bf.lshr333 = lshr i16 %bf.load332, 11
  %bf.clear334 = and i16 %bf.lshr333, 1
  %bf.cast335 = trunc i16 %bf.clear334 to i1
  br i1 %bf.cast335, label %cond.true.337, label %cond.false.338

cond.true.337:                                    ; preds = %lor.lhs.false.330
  br label %cond.end.367

cond.false.338:                                   ; preds = %lor.lhs.false.330
  %205 = load %struct.window*, %struct.window** %w.addr, align 8
  %vertical_scroll_bar_type339 = getelementptr inbounds %struct.window, %struct.window* %205, i32 0, i32 16
  %206 = load i64, i64* %vertical_scroll_bar_type339, align 8
  %call340 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp341 = icmp eq i64 %206, %call340
  br i1 %cmp341, label %cond.true.343, label %cond.false.351

cond.true.343:                                    ; preds = %cond.false.338
  %207 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame344 = getelementptr inbounds %struct.window, %struct.window* %207, i32 0, i32 1
  %208 = load i64, i64* %frame344, align 8
  %sub345 = sub nsw i64 %208, 5
  %209 = inttoptr i64 %sub345 to i8*
  %210 = bitcast i8* %209 to %struct.frame*
  %vertical_scroll_bar_type346 = getelementptr inbounds %struct.frame, %struct.frame* %210, i32 0, i32 26
  %211 = bitcast i48* %vertical_scroll_bar_type346 to i64*
  %bf.load347 = load i64, i64* %211, align 8
  %bf.lshr348 = lshr i64 %bf.load347, 30
  %bf.clear349 = and i64 %bf.lshr348, 3
  %bf.cast350 = trunc i64 %bf.clear349 to i32
  br label %cond.end.365

cond.false.351:                                   ; preds = %cond.false.338
  %212 = load %struct.window*, %struct.window** %w.addr, align 8
  %vertical_scroll_bar_type352 = getelementptr inbounds %struct.window, %struct.window* %212, i32 0, i32 16
  %213 = load i64, i64* %vertical_scroll_bar_type352, align 8
  %call353 = call i64 @builtin_lisp_symbol(i32 607)
  %cmp354 = icmp eq i64 %213, %call353
  br i1 %cmp354, label %cond.true.356, label %cond.false.357

cond.true.356:                                    ; preds = %cond.false.351
  br label %cond.end.363

cond.false.357:                                   ; preds = %cond.false.351
  %214 = load %struct.window*, %struct.window** %w.addr, align 8
  %vertical_scroll_bar_type358 = getelementptr inbounds %struct.window, %struct.window* %214, i32 0, i32 16
  %215 = load i64, i64* %vertical_scroll_bar_type358, align 8
  %call359 = call i64 @builtin_lisp_symbol(i32 811)
  %cmp360 = icmp eq i64 %215, %call359
  %cond362 = select i1 %cmp360, i32 2, i32 0
  br label %cond.end.363

cond.end.363:                                     ; preds = %cond.false.357, %cond.true.356
  %cond364 = phi i32 [ 1, %cond.true.356 ], [ %cond362, %cond.false.357 ]
  br label %cond.end.365

cond.end.365:                                     ; preds = %cond.end.363, %cond.true.343
  %cond366 = phi i32 [ %bf.cast350, %cond.true.343 ], [ %cond364, %cond.end.363 ]
  br label %cond.end.367

cond.end.367:                                     ; preds = %cond.end.365, %cond.true.337
  %cond368 = phi i32 [ 0, %cond.true.337 ], [ %cond366, %cond.end.365 ]
  %cmp369 = icmp eq i32 %cond368, 2
  br i1 %cmp369, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %cond.end.367
  %216 = load %struct.window*, %struct.window** %w.addr, align 8
  %left_margin_cols = getelementptr inbounds %struct.window, %struct.window* %216, i32 0, i32 59
  %217 = load i32, i32* %left_margin_cols, align 4
  %cmp371 = icmp eq i32 %217, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end.367, %cond.end.326, %land.lhs.true.288, %if.then.285
  %218 = phi i1 [ false, %cond.end.367 ], [ false, %cond.end.326 ], [ false, %land.lhs.true.288 ], [ false, %if.then.285 ], [ %cmp371, %land.rhs ]
  %cond373 = select i1 %218, i32 1, i32 0
  %219 = load i32, i32* %wd238, align 4
  %sub374 = sub nsw i32 %219, %cond373
  store i32 %sub374, i32* %wd238, align 4
  %220 = load i32, i32* %x, align 4
  %221 = load i32, i32* %wd238, align 4
  %sub375 = sub nsw i32 %220, %221
  %bx376 = getelementptr inbounds %struct.draw_fringe_bitmap_params, %struct.draw_fringe_bitmap_params* %p, i32 0, i32 7
  store i32 %sub375, i32* %bx376, align 4
  %222 = load i32, i32* %wd238, align 4
  %nx = getelementptr inbounds %struct.draw_fringe_bitmap_params, %struct.draw_fringe_bitmap_params* %p, i32 0, i32 8
  store i32 %222, i32* %nx, align 4
  br label %if.end.377

if.end.377:                                       ; preds = %land.end, %lor.lhs.false.276
  br label %if.end.431

if.else.378:                                      ; preds = %cond.end.227
  %223 = load %struct.window*, %struct.window** %w.addr, align 8
  %224 = load %struct.window*, %struct.window** %w.addr, align 8
  %fringes_outside_margins380 = getelementptr inbounds %struct.window, %struct.window* %224, i32 0, i32 67
  %bf.load381 = load i16, i16* %fringes_outside_margins380, align 4
  %bf.lshr382 = lshr i16 %bf.load381, 12
  %bf.clear383 = and i16 %bf.lshr382, 1
  %bf.cast384 = trunc i16 %bf.clear383 to i1
  %cond386 = select i1 %bf.cast384, i32 2, i32 1
  %call387 = call i32 @window_box_right(%struct.window* %223, i32 %cond386)
  store i32 %call387, i32* %x379, align 4
  %225 = load %struct.window*, %struct.window** %w.addr, align 8
  %right_fringe_width = getelementptr inbounds %struct.window, %struct.window* %225, i32 0, i32 58
  %226 = load i32, i32* %right_fringe_width, align 4
  %cmp389 = icmp sge i32 %226, 0
  br i1 %cmp389, label %cond.true.391, label %cond.false.393

cond.true.391:                                    ; preds = %if.else.378
  %227 = load %struct.window*, %struct.window** %w.addr, align 8
  %right_fringe_width392 = getelementptr inbounds %struct.window, %struct.window* %227, i32 0, i32 58
  %228 = load i32, i32* %right_fringe_width392, align 4
  br label %cond.end.397

cond.false.393:                                   ; preds = %if.else.378
  %229 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame394 = getelementptr inbounds %struct.window, %struct.window* %229, i32 0, i32 1
  %230 = load i64, i64* %frame394, align 8
  %sub395 = sub nsw i64 %230, 5
  %231 = inttoptr i64 %sub395 to i8*
  %232 = bitcast i8* %231 to %struct.frame*
  %right_fringe_width396 = getelementptr inbounds %struct.frame, %struct.frame* %232, i32 0, i32 55
  %233 = load i32, i32* %right_fringe_width396, align 4
  br label %cond.end.397

cond.end.397:                                     ; preds = %cond.false.393, %cond.true.391
  %cond398 = phi i32 [ %228, %cond.true.391 ], [ %233, %cond.false.393 ]
  store i32 %cond398, i32* %wd388, align 4
  %wd399 = getelementptr inbounds %struct.draw_fringe_bitmap_params, %struct.draw_fringe_bitmap_params* %p, i32 0, i32 2
  %234 = load i32, i32* %wd399, align 4
  %235 = load i32, i32* %wd388, align 4
  %cmp400 = icmp sgt i32 %234, %235
  br i1 %cmp400, label %if.then.402, label %if.end.404

if.then.402:                                      ; preds = %cond.end.397
  %236 = load i32, i32* %wd388, align 4
  %wd403 = getelementptr inbounds %struct.draw_fringe_bitmap_params, %struct.draw_fringe_bitmap_params* %p, i32 0, i32 2
  store i32 %236, i32* %wd403, align 4
  br label %if.end.404

if.end.404:                                       ; preds = %if.then.402, %cond.end.397
  %237 = load i32, i32* %x379, align 4
  %238 = load i32, i32* %wd388, align 4
  %wd405 = getelementptr inbounds %struct.draw_fringe_bitmap_params, %struct.draw_fringe_bitmap_params* %p, i32 0, i32 2
  %239 = load i32, i32* %wd405, align 4
  %sub406 = sub nsw i32 %238, %239
  %div407 = sdiv i32 %sub406, 2
  %add408 = add nsw i32 %237, %div407
  %x409 = getelementptr inbounds %struct.draw_fringe_bitmap_params, %struct.draw_fringe_bitmap_params* %p, i32 0, i32 5
  store i32 %add408, i32* %x409, align 4
  %wd410 = getelementptr inbounds %struct.draw_fringe_bitmap_params, %struct.draw_fringe_bitmap_params* %p, i32 0, i32 2
  %240 = load i32, i32* %wd410, align 4
  %241 = load i32, i32* %wd388, align 4
  %cmp411 = icmp slt i32 %240, %241
  br i1 %cmp411, label %if.then.427, label %lor.lhs.false.413

lor.lhs.false.413:                                ; preds = %if.end.404
  %y414 = getelementptr inbounds %struct.draw_fringe_bitmap_params, %struct.draw_fringe_bitmap_params* %p, i32 0, i32 6
  %242 = load i32, i32* %y414, align 4
  %by415 = getelementptr inbounds %struct.draw_fringe_bitmap_params, %struct.draw_fringe_bitmap_params* %p, i32 0, i32 9
  %243 = load i32, i32* %by415, align 4
  %cmp416 = icmp sgt i32 %242, %243
  br i1 %cmp416, label %if.then.427, label %lor.lhs.false.418

lor.lhs.false.418:                                ; preds = %lor.lhs.false.413
  %y419 = getelementptr inbounds %struct.draw_fringe_bitmap_params, %struct.draw_fringe_bitmap_params* %p, i32 0, i32 6
  %244 = load i32, i32* %y419, align 4
  %h420 = getelementptr inbounds %struct.draw_fringe_bitmap_params, %struct.draw_fringe_bitmap_params* %p, i32 0, i32 3
  %245 = load i32, i32* %h420, align 4
  %add421 = add nsw i32 %244, %245
  %by422 = getelementptr inbounds %struct.draw_fringe_bitmap_params, %struct.draw_fringe_bitmap_params* %p, i32 0, i32 9
  %246 = load i32, i32* %by422, align 4
  %ny423 = getelementptr inbounds %struct.draw_fringe_bitmap_params, %struct.draw_fringe_bitmap_params* %p, i32 0, i32 10
  %247 = load i32, i32* %ny423, align 4
  %add424 = add nsw i32 %246, %247
  %cmp425 = icmp slt i32 %add421, %add424
  br i1 %cmp425, label %if.then.427, label %if.end.430

if.then.427:                                      ; preds = %lor.lhs.false.418, %lor.lhs.false.413, %if.end.404
  %248 = load i32, i32* %x379, align 4
  %bx428 = getelementptr inbounds %struct.draw_fringe_bitmap_params, %struct.draw_fringe_bitmap_params* %p, i32 0, i32 7
  store i32 %248, i32* %bx428, align 4
  %249 = load i32, i32* %wd388, align 4
  %nx429 = getelementptr inbounds %struct.draw_fringe_bitmap_params, %struct.draw_fringe_bitmap_params* %p, i32 0, i32 8
  store i32 %249, i32* %nx429, align 4
  br label %if.end.430

if.end.430:                                       ; preds = %if.then.427, %lor.lhs.false.418
  br label %if.end.431

if.end.431:                                       ; preds = %if.end.430, %if.end.377
  %x432 = getelementptr inbounds %struct.draw_fringe_bitmap_params, %struct.draw_fringe_bitmap_params* %p, i32 0, i32 5
  %250 = load i32, i32* %x432, align 4
  %251 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame433 = getelementptr inbounds %struct.window, %struct.window* %251, i32 0, i32 1
  %252 = load i64, i64* %frame433, align 8
  %sub434 = sub nsw i64 %252, 5
  %253 = inttoptr i64 %sub434 to i8*
  %254 = bitcast i8* %253 to %struct.frame*
  %internal_border_width435 = getelementptr inbounds %struct.frame, %struct.frame* %254, i32 0, i32 51
  %255 = load i32, i32* %internal_border_width435, align 4
  %256 = load %struct.window*, %struct.window** %w.addr, align 8
  %pixel_left436 = getelementptr inbounds %struct.window, %struct.window* %256, i32 0, i32 30
  %257 = load i32, i32* %pixel_left436, align 4
  %258 = load %struct.window*, %struct.window** %w.addr, align 8
  %pseudo_window_p437 = getelementptr inbounds %struct.window, %struct.window* %258, i32 0, i32 67
  %bf.load438 = load i16, i16* %pseudo_window_p437, align 4
  %bf.lshr439 = lshr i16 %bf.load438, 11
  %bf.clear440 = and i16 %bf.lshr439, 1
  %bf.cast441 = trunc i16 %bf.clear440 to i1
  br i1 %bf.cast441, label %cond.true.443, label %cond.false.444

cond.true.443:                                    ; preds = %if.end.431
  br label %cond.end.473

cond.false.444:                                   ; preds = %if.end.431
  %259 = load %struct.window*, %struct.window** %w.addr, align 8
  %vertical_scroll_bar_type445 = getelementptr inbounds %struct.window, %struct.window* %259, i32 0, i32 16
  %260 = load i64, i64* %vertical_scroll_bar_type445, align 8
  %call446 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp447 = icmp eq i64 %260, %call446
  br i1 %cmp447, label %cond.true.449, label %cond.false.457

cond.true.449:                                    ; preds = %cond.false.444
  %261 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame450 = getelementptr inbounds %struct.window, %struct.window* %261, i32 0, i32 1
  %262 = load i64, i64* %frame450, align 8
  %sub451 = sub nsw i64 %262, 5
  %263 = inttoptr i64 %sub451 to i8*
  %264 = bitcast i8* %263 to %struct.frame*
  %vertical_scroll_bar_type452 = getelementptr inbounds %struct.frame, %struct.frame* %264, i32 0, i32 26
  %265 = bitcast i48* %vertical_scroll_bar_type452 to i64*
  %bf.load453 = load i64, i64* %265, align 8
  %bf.lshr454 = lshr i64 %bf.load453, 30
  %bf.clear455 = and i64 %bf.lshr454, 3
  %bf.cast456 = trunc i64 %bf.clear455 to i32
  br label %cond.end.471

cond.false.457:                                   ; preds = %cond.false.444
  %266 = load %struct.window*, %struct.window** %w.addr, align 8
  %vertical_scroll_bar_type458 = getelementptr inbounds %struct.window, %struct.window* %266, i32 0, i32 16
  %267 = load i64, i64* %vertical_scroll_bar_type458, align 8
  %call459 = call i64 @builtin_lisp_symbol(i32 607)
  %cmp460 = icmp eq i64 %267, %call459
  br i1 %cmp460, label %cond.true.462, label %cond.false.463

cond.true.462:                                    ; preds = %cond.false.457
  br label %cond.end.469

cond.false.463:                                   ; preds = %cond.false.457
  %268 = load %struct.window*, %struct.window** %w.addr, align 8
  %vertical_scroll_bar_type464 = getelementptr inbounds %struct.window, %struct.window* %268, i32 0, i32 16
  %269 = load i64, i64* %vertical_scroll_bar_type464, align 8
  %call465 = call i64 @builtin_lisp_symbol(i32 811)
  %cmp466 = icmp eq i64 %269, %call465
  %cond468 = select i1 %cmp466, i32 2, i32 0
  br label %cond.end.469

cond.end.469:                                     ; preds = %cond.false.463, %cond.true.462
  %cond470 = phi i32 [ 1, %cond.true.462 ], [ %cond468, %cond.false.463 ]
  br label %cond.end.471

cond.end.471:                                     ; preds = %cond.end.469, %cond.true.449
  %cond472 = phi i32 [ %bf.cast456, %cond.true.449 ], [ %cond470, %cond.end.469 ]
  br label %cond.end.473

cond.end.473:                                     ; preds = %cond.end.471, %cond.true.443
  %cond474 = phi i32 [ 0, %cond.true.443 ], [ %cond472, %cond.end.471 ]
  %cmp475 = icmp eq i32 %cond474, 1
  br i1 %cmp475, label %cond.true.477, label %cond.false.487

cond.true.477:                                    ; preds = %cond.end.473
  %270 = load %struct.window*, %struct.window** %w.addr, align 8
  %scroll_bar_width = getelementptr inbounds %struct.window, %struct.window* %270, i32 0, i32 61
  %271 = load i32, i32* %scroll_bar_width, align 4
  %cmp478 = icmp sge i32 %271, 0
  br i1 %cmp478, label %cond.true.480, label %cond.false.482

cond.true.480:                                    ; preds = %cond.true.477
  %272 = load %struct.window*, %struct.window** %w.addr, align 8
  %scroll_bar_width481 = getelementptr inbounds %struct.window, %struct.window* %272, i32 0, i32 61
  %273 = load i32, i32* %scroll_bar_width481, align 4
  br label %cond.end.485

cond.false.482:                                   ; preds = %cond.true.477
  %274 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame483 = getelementptr inbounds %struct.window, %struct.window* %274, i32 0, i32 1
  %275 = load i64, i64* %frame483, align 8
  %sub484 = sub nsw i64 %275, 5
  %276 = inttoptr i64 %sub484 to i8*
  %277 = bitcast i8* %276 to %struct.frame*
  %config_scroll_bar_width = getelementptr inbounds %struct.frame, %struct.frame* %277, i32 0, i32 69
  %278 = load i32, i32* %config_scroll_bar_width, align 4
  br label %cond.end.485

cond.end.485:                                     ; preds = %cond.false.482, %cond.true.480
  %cond486 = phi i32 [ %273, %cond.true.480 ], [ %278, %cond.false.482 ]
  br label %cond.end.488

cond.false.487:                                   ; preds = %cond.end.473
  br label %cond.end.488

cond.end.488:                                     ; preds = %cond.false.487, %cond.end.485
  %cond489 = phi i32 [ %cond486, %cond.end.485 ], [ 0, %cond.false.487 ]
  %add490 = add nsw i32 %257, %cond489
  %add491 = add nsw i32 %255, %add490
  %cmp492 = icmp sge i32 %250, %add491
  br i1 %cmp492, label %land.lhs.true.494, label %if.end.563

land.lhs.true.494:                                ; preds = %cond.end.488
  %x495 = getelementptr inbounds %struct.draw_fringe_bitmap_params, %struct.draw_fringe_bitmap_params* %p, i32 0, i32 5
  %279 = load i32, i32* %x495, align 4
  %wd496 = getelementptr inbounds %struct.draw_fringe_bitmap_params, %struct.draw_fringe_bitmap_params* %p, i32 0, i32 2
  %280 = load i32, i32* %wd496, align 4
  %add497 = add nsw i32 %279, %280
  %281 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame498 = getelementptr inbounds %struct.window, %struct.window* %281, i32 0, i32 1
  %282 = load i64, i64* %frame498, align 8
  %sub499 = sub nsw i64 %282, 5
  %283 = inttoptr i64 %sub499 to i8*
  %284 = bitcast i8* %283 to %struct.frame*
  %internal_border_width500 = getelementptr inbounds %struct.frame, %struct.frame* %284, i32 0, i32 51
  %285 = load i32, i32* %internal_border_width500, align 4
  %286 = load %struct.window*, %struct.window** %w.addr, align 8
  %pixel_left501 = getelementptr inbounds %struct.window, %struct.window* %286, i32 0, i32 30
  %287 = load i32, i32* %pixel_left501, align 4
  %288 = load %struct.window*, %struct.window** %w.addr, align 8
  %pseudo_window_p502 = getelementptr inbounds %struct.window, %struct.window* %288, i32 0, i32 67
  %bf.load503 = load i16, i16* %pseudo_window_p502, align 4
  %bf.lshr504 = lshr i16 %bf.load503, 11
  %bf.clear505 = and i16 %bf.lshr504, 1
  %bf.cast506 = trunc i16 %bf.clear505 to i1
  br i1 %bf.cast506, label %cond.true.508, label %cond.false.509

cond.true.508:                                    ; preds = %land.lhs.true.494
  br label %cond.end.538

cond.false.509:                                   ; preds = %land.lhs.true.494
  %289 = load %struct.window*, %struct.window** %w.addr, align 8
  %vertical_scroll_bar_type510 = getelementptr inbounds %struct.window, %struct.window* %289, i32 0, i32 16
  %290 = load i64, i64* %vertical_scroll_bar_type510, align 8
  %call511 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp512 = icmp eq i64 %290, %call511
  br i1 %cmp512, label %cond.true.514, label %cond.false.522

cond.true.514:                                    ; preds = %cond.false.509
  %291 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame515 = getelementptr inbounds %struct.window, %struct.window* %291, i32 0, i32 1
  %292 = load i64, i64* %frame515, align 8
  %sub516 = sub nsw i64 %292, 5
  %293 = inttoptr i64 %sub516 to i8*
  %294 = bitcast i8* %293 to %struct.frame*
  %vertical_scroll_bar_type517 = getelementptr inbounds %struct.frame, %struct.frame* %294, i32 0, i32 26
  %295 = bitcast i48* %vertical_scroll_bar_type517 to i64*
  %bf.load518 = load i64, i64* %295, align 8
  %bf.lshr519 = lshr i64 %bf.load518, 30
  %bf.clear520 = and i64 %bf.lshr519, 3
  %bf.cast521 = trunc i64 %bf.clear520 to i32
  br label %cond.end.536

cond.false.522:                                   ; preds = %cond.false.509
  %296 = load %struct.window*, %struct.window** %w.addr, align 8
  %vertical_scroll_bar_type523 = getelementptr inbounds %struct.window, %struct.window* %296, i32 0, i32 16
  %297 = load i64, i64* %vertical_scroll_bar_type523, align 8
  %call524 = call i64 @builtin_lisp_symbol(i32 607)
  %cmp525 = icmp eq i64 %297, %call524
  br i1 %cmp525, label %cond.true.527, label %cond.false.528

cond.true.527:                                    ; preds = %cond.false.522
  br label %cond.end.534

cond.false.528:                                   ; preds = %cond.false.522
  %298 = load %struct.window*, %struct.window** %w.addr, align 8
  %vertical_scroll_bar_type529 = getelementptr inbounds %struct.window, %struct.window* %298, i32 0, i32 16
  %299 = load i64, i64* %vertical_scroll_bar_type529, align 8
  %call530 = call i64 @builtin_lisp_symbol(i32 811)
  %cmp531 = icmp eq i64 %299, %call530
  %cond533 = select i1 %cmp531, i32 2, i32 0
  br label %cond.end.534

cond.end.534:                                     ; preds = %cond.false.528, %cond.true.527
  %cond535 = phi i32 [ 1, %cond.true.527 ], [ %cond533, %cond.false.528 ]
  br label %cond.end.536

cond.end.536:                                     ; preds = %cond.end.534, %cond.true.514
  %cond537 = phi i32 [ %bf.cast521, %cond.true.514 ], [ %cond535, %cond.end.534 ]
  br label %cond.end.538

cond.end.538:                                     ; preds = %cond.end.536, %cond.true.508
  %cond539 = phi i32 [ 0, %cond.true.508 ], [ %cond537, %cond.end.536 ]
  %cmp540 = icmp eq i32 %cond539, 1
  br i1 %cmp540, label %cond.true.542, label %cond.false.554

cond.true.542:                                    ; preds = %cond.end.538
  %300 = load %struct.window*, %struct.window** %w.addr, align 8
  %scroll_bar_width543 = getelementptr inbounds %struct.window, %struct.window* %300, i32 0, i32 61
  %301 = load i32, i32* %scroll_bar_width543, align 4
  %cmp544 = icmp sge i32 %301, 0
  br i1 %cmp544, label %cond.true.546, label %cond.false.548

cond.true.546:                                    ; preds = %cond.true.542
  %302 = load %struct.window*, %struct.window** %w.addr, align 8
  %scroll_bar_width547 = getelementptr inbounds %struct.window, %struct.window* %302, i32 0, i32 61
  %303 = load i32, i32* %scroll_bar_width547, align 4
  br label %cond.end.552

cond.false.548:                                   ; preds = %cond.true.542
  %304 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame549 = getelementptr inbounds %struct.window, %struct.window* %304, i32 0, i32 1
  %305 = load i64, i64* %frame549, align 8
  %sub550 = sub nsw i64 %305, 5
  %306 = inttoptr i64 %sub550 to i8*
  %307 = bitcast i8* %306 to %struct.frame*
  %config_scroll_bar_width551 = getelementptr inbounds %struct.frame, %struct.frame* %307, i32 0, i32 69
  %308 = load i32, i32* %config_scroll_bar_width551, align 4
  br label %cond.end.552

cond.end.552:                                     ; preds = %cond.false.548, %cond.true.546
  %cond553 = phi i32 [ %303, %cond.true.546 ], [ %308, %cond.false.548 ]
  br label %cond.end.555

cond.false.554:                                   ; preds = %cond.end.538
  br label %cond.end.555

cond.end.555:                                     ; preds = %cond.false.554, %cond.end.552
  %cond556 = phi i32 [ %cond553, %cond.end.552 ], [ 0, %cond.false.554 ]
  %add557 = add nsw i32 %287, %cond556
  %add558 = add nsw i32 %285, %add557
  %309 = load %struct.window*, %struct.window** %w.addr, align 8
  %pixel_width = getelementptr inbounds %struct.window, %struct.window* %309, i32 0, i32 34
  %310 = load i32, i32* %pixel_width, align 4
  %add559 = add nsw i32 %add558, %310
  %cmp560 = icmp sle i32 %add497, %add559
  br i1 %cmp560, label %if.then.562, label %if.end.563

if.then.562:                                      ; preds = %cond.end.555
  %311 = load %struct.frame*, %struct.frame** %f, align 8
  %terminal = getelementptr inbounds %struct.frame, %struct.frame* %311, i32 0, i32 61
  %312 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %rif = getelementptr inbounds %struct.terminal, %struct.terminal* %312, i32 0, i32 15
  %313 = load %struct.redisplay_interface*, %struct.redisplay_interface** %rif, align 8
  %draw_fringe_bitmap = getelementptr inbounds %struct.redisplay_interface, %struct.redisplay_interface* %313, i32 0, i32 13
  %314 = load void (%struct.window*, %struct.glyph_row*, %struct.draw_fringe_bitmap_params*)*, void (%struct.window*, %struct.glyph_row*, %struct.draw_fringe_bitmap_params*)** %draw_fringe_bitmap, align 8
  %315 = load %struct.window*, %struct.window** %w.addr, align 8
  %316 = load %struct.glyph_row*, %struct.glyph_row** %row.addr, align 8
  call void %314(%struct.window* %315, %struct.glyph_row* %316, %struct.draw_fringe_bitmap_params* %p)
  br label %if.end.563

if.end.563:                                       ; preds = %if.then.101, %if.then.562, %cond.end.555, %cond.end.488
  ret void
}

; Function Attrs: nounwind uwtable
define void @draw_row_fringe_bitmaps(%struct.window* %w, %struct.glyph_row* %row) #0 {
entry:
  %w.addr = alloca %struct.window*, align 8
  %row.addr = alloca %struct.glyph_row*, align 8
  store %struct.window* %w, %struct.window** %w.addr, align 8
  store %struct.glyph_row* %row, %struct.glyph_row** %row.addr, align 8
  %0 = load %struct.glyph_row*, %struct.glyph_row** %row.addr, align 8
  %visible_height = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %0, i32 0, i32 10
  %1 = load i32, i32* %visible_height, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.18

if.end:                                           ; preds = %entry
  %2 = load %struct.window*, %struct.window** %w.addr, align 8
  %left_fringe_width = getelementptr inbounds %struct.window, %struct.window* %2, i32 0, i32 57
  %3 = load i32, i32* %left_fringe_width, align 4
  %cmp1 = icmp sge i32 %3, 0
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %4 = load %struct.window*, %struct.window** %w.addr, align 8
  %left_fringe_width2 = getelementptr inbounds %struct.window, %struct.window* %4, i32 0, i32 57
  %5 = load i32, i32* %left_fringe_width2, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %6 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame = getelementptr inbounds %struct.window, %struct.window* %6, i32 0, i32 1
  %7 = load i64, i64* %frame, align 8
  %sub = sub nsw i64 %7, 5
  %8 = inttoptr i64 %sub to i8*
  %9 = bitcast i8* %8 to %struct.frame*
  %left_fringe_width3 = getelementptr inbounds %struct.frame, %struct.frame* %9, i32 0, i32 54
  %10 = load i32, i32* %left_fringe_width3, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ %10, %cond.false ]
  %cmp4 = icmp ne i32 %cond, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %cond.end
  %11 = load %struct.window*, %struct.window** %w.addr, align 8
  %12 = load %struct.glyph_row*, %struct.glyph_row** %row.addr, align 8
  call void @draw_fringe_bitmap(%struct.window* %11, %struct.glyph_row* %12, i32 1)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %cond.end
  %13 = load %struct.window*, %struct.window** %w.addr, align 8
  %right_fringe_width = getelementptr inbounds %struct.window, %struct.window* %13, i32 0, i32 58
  %14 = load i32, i32* %right_fringe_width, align 4
  %cmp7 = icmp sge i32 %14, 0
  br i1 %cmp7, label %cond.true.8, label %cond.false.10

cond.true.8:                                      ; preds = %if.end.6
  %15 = load %struct.window*, %struct.window** %w.addr, align 8
  %right_fringe_width9 = getelementptr inbounds %struct.window, %struct.window* %15, i32 0, i32 58
  %16 = load i32, i32* %right_fringe_width9, align 4
  br label %cond.end.14

cond.false.10:                                    ; preds = %if.end.6
  %17 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame11 = getelementptr inbounds %struct.window, %struct.window* %17, i32 0, i32 1
  %18 = load i64, i64* %frame11, align 8
  %sub12 = sub nsw i64 %18, 5
  %19 = inttoptr i64 %sub12 to i8*
  %20 = bitcast i8* %19 to %struct.frame*
  %right_fringe_width13 = getelementptr inbounds %struct.frame, %struct.frame* %20, i32 0, i32 55
  %21 = load i32, i32* %right_fringe_width13, align 4
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.10, %cond.true.8
  %cond15 = phi i32 [ %16, %cond.true.8 ], [ %21, %cond.false.10 ]
  %cmp16 = icmp ne i32 %cond15, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %cond.end.14
  %22 = load %struct.window*, %struct.window** %w.addr, align 8
  %23 = load %struct.glyph_row*, %struct.glyph_row** %row.addr, align 8
  call void @draw_fringe_bitmap(%struct.window* %22, %struct.glyph_row* %23, i32 0)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then, %if.then.17, %cond.end.14
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i1 @draw_window_fringes(%struct.window* %w, i1 zeroext %no_fringe_p) #0 {
entry:
  %retval = alloca i1, align 1
  %w.addr = alloca %struct.window*, align 8
  %no_fringe_p.addr = alloca i8, align 1
  %row = alloca %struct.glyph_row*, align 8
  %yb = alloca i32, align 4
  %nrows = alloca i32, align 4
  %y = alloca i32, align 4
  %rn = alloca i32, align 4
  %updated_p = alloca i8, align 1
  store %struct.window* %w, %struct.window** %w.addr, align 8
  %frombool = zext i1 %no_fringe_p to i8
  store i8 %frombool, i8* %no_fringe_p.addr, align 1
  %0 = load %struct.window*, %struct.window** %w.addr, align 8
  %call = call i32 @window_text_bottom_y(%struct.window* %0)
  store i32 %call, i32* %yb, align 4
  %1 = load %struct.window*, %struct.window** %w.addr, align 8
  %current_matrix = getelementptr inbounds %struct.window, %struct.window* %1, i32 0, i32 24
  %2 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix, align 8
  %nrows1 = getelementptr inbounds %struct.glyph_matrix, %struct.glyph_matrix* %2, i32 0, i32 3
  %3 = load i32, i32* %nrows1, align 4
  store i32 %3, i32* %nrows, align 4
  store i8 0, i8* %updated_p, align 1
  %4 = load %struct.window*, %struct.window** %w.addr, align 8
  %pseudo_window_p = getelementptr inbounds %struct.window, %struct.window* %4, i32 0, i32 67
  %bf.load = load i16, i16* %pseudo_window_p, align 4
  %bf.lshr = lshr i16 %bf.load, 11
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = trunc i16 %bf.clear to i1
  br i1 %bf.cast, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i8, i8* %updated_p, align 1
  %tobool = trunc i8 %5 to i1
  store i1 %tobool, i1* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i8, i8* %no_fringe_p.addr, align 1
  %tobool2 = trunc i8 %6 to i1
  br i1 %tobool2, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %if.end
  %7 = load %struct.window*, %struct.window** %w.addr, align 8
  %left_fringe_width = getelementptr inbounds %struct.window, %struct.window* %7, i32 0, i32 57
  %8 = load i32, i32* %left_fringe_width, align 4
  %cmp = icmp sge i32 %8, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %9 = load %struct.window*, %struct.window** %w.addr, align 8
  %left_fringe_width3 = getelementptr inbounds %struct.window, %struct.window* %9, i32 0, i32 57
  %10 = load i32, i32* %left_fringe_width3, align 4
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true
  %11 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame = getelementptr inbounds %struct.window, %struct.window* %11, i32 0, i32 1
  %12 = load i64, i64* %frame, align 8
  %sub = sub nsw i64 %12, 5
  %13 = inttoptr i64 %sub to i8*
  %14 = bitcast i8* %13 to %struct.frame*
  %left_fringe_width4 = getelementptr inbounds %struct.frame, %struct.frame* %14, i32 0, i32 54
  %15 = load i32, i32* %left_fringe_width4, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %10, %cond.true ], [ %15, %cond.false ]
  %cmp5 = icmp eq i32 %cond, 0
  br i1 %cmp5, label %if.then.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %16 = load %struct.window*, %struct.window** %w.addr, align 8
  %right_fringe_width = getelementptr inbounds %struct.window, %struct.window* %16, i32 0, i32 58
  %17 = load i32, i32* %right_fringe_width, align 4
  %cmp6 = icmp sge i32 %17, 0
  br i1 %cmp6, label %cond.true.7, label %cond.false.9

cond.true.7:                                      ; preds = %lor.lhs.false
  %18 = load %struct.window*, %struct.window** %w.addr, align 8
  %right_fringe_width8 = getelementptr inbounds %struct.window, %struct.window* %18, i32 0, i32 58
  %19 = load i32, i32* %right_fringe_width8, align 4
  br label %cond.end.13

cond.false.9:                                     ; preds = %lor.lhs.false
  %20 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame10 = getelementptr inbounds %struct.window, %struct.window* %20, i32 0, i32 1
  %21 = load i64, i64* %frame10, align 8
  %sub11 = sub nsw i64 %21, 5
  %22 = inttoptr i64 %sub11 to i8*
  %23 = bitcast i8* %22 to %struct.frame*
  %right_fringe_width12 = getelementptr inbounds %struct.frame, %struct.frame* %23, i32 0, i32 55
  %24 = load i32, i32* %right_fringe_width12, align 4
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.9, %cond.true.7
  %cond14 = phi i32 [ %19, %cond.true.7 ], [ %24, %cond.false.9 ]
  %cmp15 = icmp eq i32 %cond14, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %cond.end.13, %cond.end
  store i8 1, i8* %updated_p, align 1
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %cond.end.13, %if.end
  %25 = load %struct.window*, %struct.window** %w.addr, align 8
  %vscroll = getelementptr inbounds %struct.window, %struct.window* %25, i32 0, i32 68
  %26 = load i32, i32* %vscroll, align 4
  store i32 %26, i32* %y, align 4
  store i32 0, i32* %rn, align 4
  %27 = load %struct.window*, %struct.window** %w.addr, align 8
  %current_matrix18 = getelementptr inbounds %struct.window, %struct.window* %27, i32 0, i32 24
  %28 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix18, align 8
  %rows = getelementptr inbounds %struct.glyph_matrix, %struct.glyph_matrix* %28, i32 0, i32 1
  %29 = load %struct.glyph_row*, %struct.glyph_row** %rows, align 8
  store %struct.glyph_row* %29, %struct.glyph_row** %row, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.17
  %30 = load i32, i32* %y, align 4
  %31 = load i32, i32* %yb, align 4
  %cmp19 = icmp slt i32 %30, %31
  br i1 %cmp19, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %32 = load i32, i32* %rn, align 4
  %33 = load i32, i32* %nrows, align 4
  %cmp20 = icmp slt i32 %32, %33
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %34 = phi i1 [ false, %for.cond ], [ %cmp20, %land.rhs ]
  br i1 %34, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %35 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %redraw_fringe_bitmaps_p = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %35, i32 0, i32 22
  %36 = bitcast i40* %redraw_fringe_bitmaps_p to i64*
  %bf.load21 = load i64, i64* %36, align 4
  %bf.lshr22 = lshr i64 %bf.load21, 9
  %bf.clear23 = and i64 %bf.lshr22, 1
  %bf.cast24 = trunc i64 %bf.clear23 to i1
  br i1 %bf.cast24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %for.body
  br label %for.inc

if.end.26:                                        ; preds = %for.body
  %37 = load %struct.window*, %struct.window** %w.addr, align 8
  %38 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  call void @draw_row_fringe_bitmaps(%struct.window* %37, %struct.glyph_row* %38)
  %39 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %redraw_fringe_bitmaps_p27 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %39, i32 0, i32 22
  %40 = bitcast i40* %redraw_fringe_bitmaps_p27 to i64*
  %bf.load28 = load i64, i64* %40, align 4
  %bf.clear29 = and i64 %bf.load28, -513
  store i64 %bf.clear29, i64* %40, align 4
  store i8 1, i8* %updated_p, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end.26, %if.then.25
  %41 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %height = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %41, i32 0, i32 7
  %42 = load i32, i32* %height, align 4
  %43 = load i32, i32* %y, align 4
  %add = add nsw i32 %43, %42
  store i32 %add, i32* %y, align 4
  %44 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %incdec.ptr = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %44, i32 1
  store %struct.glyph_row* %incdec.ptr, %struct.glyph_row** %row, align 8
  %45 = load i32, i32* %rn, align 4
  %inc = add nsw i32 %45, 1
  store i32 %inc, i32* %rn, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %46 = load i8, i8* %updated_p, align 1
  %tobool30 = trunc i8 %46 to i1
  store i1 %tobool30, i1* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %47 = load i1, i1* %retval
  ret i1 %47
}

declare i32 @window_text_bottom_y(%struct.window*) #1

; Function Attrs: nounwind uwtable
define zeroext i1 @update_window_fringes(%struct.window* %w, i1 zeroext %keep_current_p) #0 {
entry:
  %retval = alloca i1, align 1
  %w.addr = alloca %struct.window*, align 8
  %keep_current_p.addr = alloca i8, align 1
  %row = alloca %struct.glyph_row*, align 8
  %cur = alloca %struct.glyph_row*, align 8
  %yb = alloca i32, align 4
  %rn = alloca i32, align 4
  %nrows = alloca i32, align 4
  %y = alloca i32, align 4
  %redraw_p = alloca i8, align 1
  %boundary_top = alloca i64, align 8
  %boundary_bot = alloca i64, align 8
  %arrow_top = alloca i64, align 8
  %arrow_bot = alloca i64, align 8
  %empty_pos = alloca i64, align 8
  %ind = alloca i64, align 8
  %bitmap_cache = alloca [32 x i32], align 16
  %top_ind_rn = alloca i32, align 4
  %bot_ind_rn = alloca i32, align 4
  %top_ind_min_y = alloca i32, align 4
  %bot_ind_max_y = alloca i32, align 4
  %top_row_ends_at_zv_p = alloca i32, align 4
  %bot_row_ends_at_zv_p = alloca i32, align 4
  %pos = alloca i64, align 8
  %bn = alloca i32, align 4
  %fb = alloca %struct.fringe_bitmap*, align 8
  %row1 = alloca %struct.glyph_row*, align 8
  %top_ind_max_y = alloca i32, align 4
  %bn1044 = alloca i32, align 4
  %fb1200 = alloca %struct.fringe_bitmap*, align 8
  %row11216 = alloca %struct.glyph_row*, align 8
  %bot_ind_min_y = alloca i32, align 4
  %left = alloca i32, align 4
  %right = alloca i32, align 4
  %left_face_id = alloca i32, align 4
  %right_face_id = alloca i32, align 4
  %left_offset = alloca i32, align 4
  %right_offset = alloca i32, align 4
  %periodic_p = alloca i8, align 1
  store %struct.window* %w, %struct.window** %w.addr, align 8
  %frombool = zext i1 %keep_current_p to i8
  store i8 %frombool, i8* %keep_current_p.addr, align 1
  store %struct.glyph_row* null, %struct.glyph_row** %cur, align 8
  %0 = load %struct.window*, %struct.window** %w.addr, align 8
  %call = call i32 @window_text_bottom_y(%struct.window* %0)
  store i32 %call, i32* %yb, align 4
  %1 = load %struct.window*, %struct.window** %w.addr, align 8
  %current_matrix = getelementptr inbounds %struct.window, %struct.window* %1, i32 0, i32 24
  %2 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix, align 8
  %nrows1 = getelementptr inbounds %struct.glyph_matrix, %struct.glyph_matrix* %2, i32 0, i32 3
  %3 = load i32, i32* %nrows1, align 4
  store i32 %3, i32* %nrows, align 4
  store i8 0, i8* %redraw_p, align 1
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call2, i64* %boundary_top, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call3, i64* %boundary_bot, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call4, i64* %arrow_top, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call5, i64* %arrow_bot, align 8
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call6, i64* %ind, align 8
  %4 = load %struct.window*, %struct.window** %w.addr, align 8
  %pseudo_window_p = getelementptr inbounds %struct.window, %struct.window* %4, i32 0, i32 67
  %bf.load = load i16, i16* %pseudo_window_p, align 4
  %bf.lshr = lshr i16 %bf.load, 11
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = trunc i16 %bf.clear to i1
  br i1 %bf.cast, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.window*, %struct.window** %w.addr, align 8
  %mini = getelementptr inbounds %struct.window, %struct.window* %5, i32 0, i32 67
  %bf.load7 = load i16, i16* %mini, align 4
  %bf.clear8 = and i16 %bf.load7, 1
  %bf.cast9 = trunc i16 %bf.clear8 to i1
  br i1 %bf.cast9, label %if.end.83, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %6 = load %struct.window*, %struct.window** %w.addr, align 8
  %contents = getelementptr inbounds %struct.window, %struct.window* %6, i32 0, i32 10
  %7 = load i64, i64* %contents, align 8
  %call10 = call %struct.buffer* @XBUFFER(i64 %7)
  %indicate_buffer_boundaries_ = getelementptr inbounds %struct.buffer, %struct.buffer* %call10, i32 0, i32 63
  %8 = load i64, i64* %indicate_buffer_boundaries_, align 8
  store i64 %8, i64* %ind, align 8
  %9 = load i64, i64* %ind, align 8
  %call11 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %9, %call11
  %lnot = xor i1 %cmp, true
  br i1 %lnot, label %if.then.12, label %if.end.83

if.then.12:                                       ; preds = %land.lhs.true
  %10 = load i64, i64* %ind, align 8
  %call13 = call i64 @builtin_lisp_symbol(i32 607)
  %cmp14 = icmp eq i64 %10, %call13
  br i1 %cmp14, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.12
  %11 = load i64, i64* %ind, align 8
  %call15 = call i64 @builtin_lisp_symbol(i32 811)
  %cmp16 = icmp eq i64 %11, %call15
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %lor.lhs.false, %if.then.12
  %12 = load i64, i64* %ind, align 8
  store i64 %12, i64* %arrow_bot, align 8
  store i64 %12, i64* %arrow_top, align 8
  store i64 %12, i64* %boundary_bot, align 8
  store i64 %12, i64* %boundary_top, align 8
  br label %if.end.82

if.else:                                          ; preds = %lor.lhs.false
  %13 = load i64, i64* %ind, align 8
  %and = and i64 %13, 7
  %conv = trunc i64 %and to i32
  %cmp18 = icmp eq i32 %conv, 3
  br i1 %cmp18, label %land.lhs.true.20, label %if.else.79

land.lhs.true.20:                                 ; preds = %if.else
  %14 = load i64, i64* %ind, align 8
  %sub = sub nsw i64 %14, 3
  %15 = inttoptr i64 %sub to i8*
  %16 = bitcast i8* %15 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %16, i32 0, i32 0
  %17 = load i64, i64* %car, align 8
  %and21 = and i64 %17, 7
  %conv22 = trunc i64 %and21 to i32
  %cmp23 = icmp eq i32 %conv22, 3
  br i1 %cmp23, label %if.then.25, label %if.else.79

if.then.25:                                       ; preds = %land.lhs.true.20
  %call26 = call i64 @builtin_lisp_symbol(i32 901)
  %18 = load i64, i64* %ind, align 8
  %call27 = call i64 @Fassq(i64 %call26, i64 %18)
  store i64 %call27, i64* %pos, align 8
  %19 = load i64, i64* %pos, align 8
  %call28 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp29 = icmp eq i64 %19, %call28
  %lnot31 = xor i1 %cmp29, true
  br i1 %lnot31, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %if.then.25
  %20 = load i64, i64* %pos, align 8
  %sub33 = sub nsw i64 %20, 3
  %21 = inttoptr i64 %sub33 to i8*
  %22 = bitcast i8* %21 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %22, i32 0, i32 1
  %cdr = bitcast %union.anon.9* %u to i64*
  %23 = load i64, i64* %cdr, align 8
  store i64 %23, i64* %arrow_bot, align 8
  store i64 %23, i64* %arrow_top, align 8
  store i64 %23, i64* %boundary_bot, align 8
  store i64 %23, i64* %boundary_top, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %if.then.25
  %call35 = call i64 @builtin_lisp_symbol(i32 928)
  %24 = load i64, i64* %ind, align 8
  %call36 = call i64 @Fassq(i64 %call35, i64 %24)
  store i64 %call36, i64* %pos, align 8
  %25 = load i64, i64* %pos, align 8
  %call37 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp38 = icmp eq i64 %25, %call37
  %lnot40 = xor i1 %cmp38, true
  br i1 %lnot40, label %if.then.41, label %if.end.45

if.then.41:                                       ; preds = %if.end.34
  %26 = load i64, i64* %pos, align 8
  %sub42 = sub nsw i64 %26, 3
  %27 = inttoptr i64 %sub42 to i8*
  %28 = bitcast i8* %27 to %struct.Lisp_Cons*
  %u43 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %28, i32 0, i32 1
  %cdr44 = bitcast %union.anon.9* %u43 to i64*
  %29 = load i64, i64* %cdr44, align 8
  store i64 %29, i64* %boundary_top, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.41, %if.end.34
  %call46 = call i64 @builtin_lisp_symbol(i32 213)
  %30 = load i64, i64* %ind, align 8
  %call47 = call i64 @Fassq(i64 %call46, i64 %30)
  store i64 %call47, i64* %pos, align 8
  %31 = load i64, i64* %pos, align 8
  %call48 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp49 = icmp eq i64 %31, %call48
  %lnot51 = xor i1 %cmp49, true
  br i1 %lnot51, label %if.then.52, label %if.end.56

if.then.52:                                       ; preds = %if.end.45
  %32 = load i64, i64* %pos, align 8
  %sub53 = sub nsw i64 %32, 3
  %33 = inttoptr i64 %sub53 to i8*
  %34 = bitcast i8* %33 to %struct.Lisp_Cons*
  %u54 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %34, i32 0, i32 1
  %cdr55 = bitcast %union.anon.9* %u54 to i64*
  %35 = load i64, i64* %cdr55, align 8
  store i64 %35, i64* %boundary_bot, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.52, %if.end.45
  %call57 = call i64 @builtin_lisp_symbol(i32 977)
  %36 = load i64, i64* %ind, align 8
  %call58 = call i64 @Fassq(i64 %call57, i64 %36)
  store i64 %call58, i64* %pos, align 8
  %37 = load i64, i64* %pos, align 8
  %call59 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp60 = icmp eq i64 %37, %call59
  %lnot62 = xor i1 %cmp60, true
  br i1 %lnot62, label %if.then.63, label %if.end.67

if.then.63:                                       ; preds = %if.end.56
  %38 = load i64, i64* %pos, align 8
  %sub64 = sub nsw i64 %38, 3
  %39 = inttoptr i64 %sub64 to i8*
  %40 = bitcast i8* %39 to %struct.Lisp_Cons*
  %u65 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %40, i32 0, i32 1
  %cdr66 = bitcast %union.anon.9* %u65 to i64*
  %41 = load i64, i64* %cdr66, align 8
  store i64 %41, i64* %arrow_top, align 8
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.63, %if.end.56
  %call68 = call i64 @builtin_lisp_symbol(i32 352)
  %42 = load i64, i64* %ind, align 8
  %call69 = call i64 @Fassq(i64 %call68, i64 %42)
  store i64 %call69, i64* %pos, align 8
  %43 = load i64, i64* %pos, align 8
  %call70 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp71 = icmp eq i64 %43, %call70
  %lnot73 = xor i1 %cmp71, true
  br i1 %lnot73, label %if.then.74, label %if.end.78

if.then.74:                                       ; preds = %if.end.67
  %44 = load i64, i64* %pos, align 8
  %sub75 = sub nsw i64 %44, 3
  %45 = inttoptr i64 %sub75 to i8*
  %46 = bitcast i8* %45 to %struct.Lisp_Cons*
  %u76 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %46, i32 0, i32 1
  %cdr77 = bitcast %union.anon.9* %u76 to i64*
  %47 = load i64, i64* %cdr77, align 8
  store i64 %47, i64* %arrow_bot, align 8
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.74, %if.end.67
  br label %if.end.81

if.else.79:                                       ; preds = %land.lhs.true.20, %if.else
  %call80 = call i64 @builtin_lisp_symbol(i32 607)
  store i64 %call80, i64* %boundary_bot, align 8
  store i64 %call80, i64* %boundary_top, align 8
  br label %if.end.81

if.end.81:                                        ; preds = %if.else.79, %if.end.78
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.then.17
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %land.lhs.true, %if.end
  store i32 -1, i32* %bot_ind_rn, align 4
  store i32 -1, i32* %top_ind_rn, align 4
  %48 = load i64, i64* %ind, align 8
  %call84 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp85 = icmp eq i64 %48, %call84
  br i1 %cmp85, label %if.end.581, label %if.then.87

if.then.87:                                       ; preds = %if.end.83
  %49 = load %struct.window*, %struct.window** %w.addr, align 8
  %vscroll = getelementptr inbounds %struct.window, %struct.window* %49, i32 0, i32 68
  %50 = load i32, i32* %vscroll, align 4
  store i32 %50, i32* %y, align 4
  store i32 0, i32* %rn, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.87
  %51 = load i32, i32* %y, align 4
  %52 = load i32, i32* %yb, align 4
  %cmp88 = icmp slt i32 %51, %52
  br i1 %cmp88, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %53 = load i32, i32* %rn, align 4
  %54 = load i32, i32* %nrows, align 4
  %cmp90 = icmp slt i32 %53, %54
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %55 = phi i1 [ false, %for.cond ], [ %cmp90, %land.rhs ]
  br i1 %55, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %56 = load %struct.window*, %struct.window** %w.addr, align 8
  %desired_matrix = getelementptr inbounds %struct.window, %struct.window* %56, i32 0, i32 25
  %57 = load %struct.glyph_matrix*, %struct.glyph_matrix** %desired_matrix, align 8
  %rows = getelementptr inbounds %struct.glyph_matrix, %struct.glyph_matrix* %57, i32 0, i32 1
  %58 = load %struct.glyph_row*, %struct.glyph_row** %rows, align 8
  %59 = load i32, i32* %rn, align 4
  %idx.ext = sext i32 %59 to i64
  %add.ptr = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %58, i64 %idx.ext
  store %struct.glyph_row* %add.ptr, %struct.glyph_row** %row, align 8
  %60 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %enabled_p = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %60, i32 0, i32 22
  %61 = bitcast i40* %enabled_p to i64*
  %bf.load92 = load i64, i64* %61, align 4
  %bf.lshr93 = lshr i64 %bf.load92, 10
  %bf.clear94 = and i64 %bf.lshr93, 1
  %bf.cast95 = trunc i64 %bf.clear94 to i1
  br i1 %bf.cast95, label %if.end.101, label %if.then.96

if.then.96:                                       ; preds = %for.body
  %62 = load %struct.window*, %struct.window** %w.addr, align 8
  %current_matrix97 = getelementptr inbounds %struct.window, %struct.window* %62, i32 0, i32 24
  %63 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix97, align 8
  %rows98 = getelementptr inbounds %struct.glyph_matrix, %struct.glyph_matrix* %63, i32 0, i32 1
  %64 = load %struct.glyph_row*, %struct.glyph_row** %rows98, align 8
  %65 = load i32, i32* %rn, align 4
  %idx.ext99 = sext i32 %65 to i64
  %add.ptr100 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %64, i64 %idx.ext99
  store %struct.glyph_row* %add.ptr100, %struct.glyph_row** %row, align 8
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.96, %for.body
  %66 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %indicate_top_line_p = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %66, i32 0, i32 22
  %67 = bitcast i40* %indicate_top_line_p to i64*
  %bf.load102 = load i64, i64* %67, align 4
  %bf.clear103 = and i64 %bf.load102, -2147483649
  store i64 %bf.clear103, i64* %67, align 4
  %68 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %indicate_bob_p = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %68, i32 0, i32 22
  %69 = bitcast i40* %indicate_bob_p to i64*
  %bf.load104 = load i64, i64* %69, align 4
  %bf.clear105 = and i64 %bf.load104, -1073741825
  store i64 %bf.clear105, i64* %69, align 4
  %70 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %indicate_bottom_line_p = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %70, i32 0, i32 22
  %71 = bitcast i40* %indicate_bottom_line_p to i64*
  %bf.load106 = load i64, i64* %71, align 4
  %bf.clear107 = and i64 %bf.load106, -8589934593
  store i64 %bf.clear107, i64* %71, align 4
  %72 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %indicate_eob_p = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %72, i32 0, i32 22
  %73 = bitcast i40* %indicate_eob_p to i64*
  %bf.load108 = load i64, i64* %73, align 4
  %bf.clear109 = and i64 %bf.load108, -4294967297
  store i64 %bf.clear109, i64* %73, align 4
  %74 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %mode_line_p = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %74, i32 0, i32 22
  %75 = bitcast i40* %mode_line_p to i64*
  %bf.load110 = load i64, i64* %75, align 4
  %bf.lshr111 = lshr i64 %bf.load110, 20
  %bf.clear112 = and i64 %bf.lshr111, 1
  %bf.cast113 = trunc i64 %bf.clear112 to i1
  br i1 %bf.cast113, label %if.end.578, label %if.then.114

if.then.114:                                      ; preds = %if.end.101
  %76 = load i32, i32* %top_ind_rn, align 4
  %cmp115 = icmp slt i32 %76, 0
  br i1 %cmp115, label %land.lhs.true.117, label %if.end.293

land.lhs.true.117:                                ; preds = %if.then.114
  %77 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %visible_height = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %77, i32 0, i32 10
  %78 = load i32, i32* %visible_height, align 4
  %cmp118 = icmp sgt i32 %78, 0
  br i1 %cmp118, label %if.then.120, label %if.end.293

if.then.120:                                      ; preds = %land.lhs.true.117
  %79 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %minpos = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %79, i32 0, i32 14
  %charpos = getelementptr inbounds %struct.text_pos, %struct.text_pos* %minpos, i32 0, i32 0
  %80 = load i64, i64* %charpos, align 8
  %81 = load %struct.window*, %struct.window** %w.addr, align 8
  %contents121 = getelementptr inbounds %struct.window, %struct.window* %81, i32 0, i32 10
  %82 = load i64, i64* %contents121, align 8
  %call122 = call %struct.buffer* @XBUFFER(i64 %82)
  %83 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp123 = icmp eq %struct.buffer* %call122, %83
  br i1 %cmp123, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.120
  %84 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %84, i32 0, i32 77
  %85 = load i64, i64* %begv, align 8
  br label %cond.end.139

cond.false:                                       ; preds = %if.then.120
  %86 = load %struct.window*, %struct.window** %w.addr, align 8
  %contents125 = getelementptr inbounds %struct.window, %struct.window* %86, i32 0, i32 10
  %87 = load i64, i64* %contents125, align 8
  %call126 = call %struct.buffer* @XBUFFER(i64 %87)
  %begv_marker_ = getelementptr inbounds %struct.buffer, %struct.buffer* %call126, i32 0, i32 46
  %88 = load i64, i64* %begv_marker_, align 8
  %call127 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp128 = icmp eq i64 %88, %call127
  br i1 %cmp128, label %cond.true.130, label %cond.false.134

cond.true.130:                                    ; preds = %cond.false
  %89 = load %struct.window*, %struct.window** %w.addr, align 8
  %contents131 = getelementptr inbounds %struct.window, %struct.window* %89, i32 0, i32 10
  %90 = load i64, i64* %contents131, align 8
  %call132 = call %struct.buffer* @XBUFFER(i64 %90)
  %begv133 = getelementptr inbounds %struct.buffer, %struct.buffer* %call132, i32 0, i32 77
  %91 = load i64, i64* %begv133, align 8
  br label %cond.end

cond.false.134:                                   ; preds = %cond.false
  %92 = load %struct.window*, %struct.window** %w.addr, align 8
  %contents135 = getelementptr inbounds %struct.window, %struct.window* %92, i32 0, i32 10
  %93 = load i64, i64* %contents135, align 8
  %call136 = call %struct.buffer* @XBUFFER(i64 %93)
  %begv_marker_137 = getelementptr inbounds %struct.buffer, %struct.buffer* %call136, i32 0, i32 46
  %94 = load i64, i64* %begv_marker_137, align 8
  %call138 = call i64 @marker_position(i64 %94)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.134, %cond.true.130
  %cond = phi i64 [ %91, %cond.true.130 ], [ %call138, %cond.false.134 ]
  br label %cond.end.139

cond.end.139:                                     ; preds = %cond.end, %cond.true
  %cond140 = phi i64 [ %85, %cond.true ], [ %cond, %cond.end ]
  %cmp141 = icmp sle i64 %80, %cond140
  br i1 %cmp141, label %land.lhs.true.143, label %if.else.280

land.lhs.true.143:                                ; preds = %cond.end.139
  %95 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %height = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %95, i32 0, i32 7
  %96 = load i32, i32* %height, align 4
  %97 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %visible_height144 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %97, i32 0, i32 10
  %98 = load i32, i32* %visible_height144, align 4
  %cmp145 = icmp ne i32 %96, %98
  br i1 %cmp145, label %land.lhs.true.147, label %if.then.271

land.lhs.true.147:                                ; preds = %land.lhs.true.143
  %99 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %y148 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %99, i32 0, i32 4
  %100 = load i32, i32* %y148, align 4
  %101 = load %struct.window*, %struct.window** %w.addr, align 8
  %contents149 = getelementptr inbounds %struct.window, %struct.window* %101, i32 0, i32 10
  %102 = load i64, i64* %contents149, align 8
  %call150 = call zeroext i1 @BUFFERP(i64 %102)
  br i1 %call150, label %cond.true.152, label %cond.false.225

cond.true.152:                                    ; preds = %land.lhs.true.147
  %103 = load %struct.window*, %struct.window** %w.addr, align 8
  %mini153 = getelementptr inbounds %struct.window, %struct.window* %103, i32 0, i32 67
  %bf.load154 = load i16, i16* %mini153, align 4
  %bf.clear155 = and i16 %bf.load154, 1
  %bf.cast156 = trunc i16 %bf.clear155 to i1
  br i1 %bf.cast156, label %cond.false.266, label %land.lhs.true.157

land.lhs.true.157:                                ; preds = %cond.true.152
  %104 = load %struct.window*, %struct.window** %w.addr, align 8
  %pseudo_window_p158 = getelementptr inbounds %struct.window, %struct.window* %104, i32 0, i32 67
  %bf.load159 = load i16, i16* %pseudo_window_p158, align 4
  %bf.lshr160 = lshr i16 %bf.load159, 11
  %bf.clear161 = and i16 %bf.lshr160, 1
  %bf.cast162 = trunc i16 %bf.clear161 to i1
  br i1 %bf.cast162, label %cond.false.266, label %land.lhs.true.163

land.lhs.true.163:                                ; preds = %land.lhs.true.157
  %105 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame = getelementptr inbounds %struct.window, %struct.window* %105, i32 0, i32 1
  %106 = load i64, i64* %frame, align 8
  %sub164 = sub nsw i64 %106, 5
  %107 = inttoptr i64 %sub164 to i8*
  %108 = bitcast i8* %107 to %struct.frame*
  %wants_modeline = getelementptr inbounds %struct.frame, %struct.frame* %108, i32 0, i32 26
  %109 = bitcast i48* %wants_modeline to i64*
  %bf.load165 = load i64, i64* %109, align 8
  %bf.lshr166 = lshr i64 %bf.load165, 14
  %bf.clear167 = and i64 %bf.lshr166, 1
  %bf.cast168 = trunc i64 %bf.clear167 to i1
  br i1 %bf.cast168, label %land.lhs.true.170, label %cond.false.266

land.lhs.true.170:                                ; preds = %land.lhs.true.163
  %110 = load %struct.window*, %struct.window** %w.addr, align 8
  %contents171 = getelementptr inbounds %struct.window, %struct.window* %110, i32 0, i32 10
  %111 = load i64, i64* %contents171, align 8
  %call172 = call %struct.buffer* @XBUFFER(i64 %111)
  %header_line_format_ = getelementptr inbounds %struct.buffer, %struct.buffer* %call172, i32 0, i32 13
  %112 = load i64, i64* %header_line_format_, align 8
  %call173 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp174 = icmp eq i64 %112, %call173
  br i1 %cmp174, label %cond.false.266, label %land.lhs.true.176

land.lhs.true.176:                                ; preds = %land.lhs.true.170
  %113 = load %struct.window*, %struct.window** %w.addr, align 8
  %pixel_height = getelementptr inbounds %struct.window, %struct.window* %113, i32 0, i32 35
  %114 = load i32, i32* %pixel_height, align 4
  %115 = load %struct.window*, %struct.window** %w.addr, align 8
  %contents177 = getelementptr inbounds %struct.window, %struct.window* %115, i32 0, i32 10
  %116 = load i64, i64* %contents177, align 8
  %call178 = call zeroext i1 @BUFFERP(i64 %116)
  br i1 %call178, label %cond.true.180, label %cond.false.212

cond.true.180:                                    ; preds = %land.lhs.true.176
  %117 = load %struct.window*, %struct.window** %w.addr, align 8
  %mini181 = getelementptr inbounds %struct.window, %struct.window* %117, i32 0, i32 67
  %bf.load182 = load i16, i16* %mini181, align 4
  %bf.clear183 = and i16 %bf.load182, 1
  %bf.cast184 = trunc i16 %bf.clear183 to i1
  br i1 %bf.cast184, label %cond.false.217, label %land.lhs.true.185

land.lhs.true.185:                                ; preds = %cond.true.180
  %118 = load %struct.window*, %struct.window** %w.addr, align 8
  %pseudo_window_p186 = getelementptr inbounds %struct.window, %struct.window* %118, i32 0, i32 67
  %bf.load187 = load i16, i16* %pseudo_window_p186, align 4
  %bf.lshr188 = lshr i16 %bf.load187, 11
  %bf.clear189 = and i16 %bf.lshr188, 1
  %bf.cast190 = trunc i16 %bf.clear189 to i1
  br i1 %bf.cast190, label %cond.false.217, label %land.lhs.true.191

land.lhs.true.191:                                ; preds = %land.lhs.true.185
  %119 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame192 = getelementptr inbounds %struct.window, %struct.window* %119, i32 0, i32 1
  %120 = load i64, i64* %frame192, align 8
  %sub193 = sub nsw i64 %120, 5
  %121 = inttoptr i64 %sub193 to i8*
  %122 = bitcast i8* %121 to %struct.frame*
  %wants_modeline194 = getelementptr inbounds %struct.frame, %struct.frame* %122, i32 0, i32 26
  %123 = bitcast i48* %wants_modeline194 to i64*
  %bf.load195 = load i64, i64* %123, align 8
  %bf.lshr196 = lshr i64 %bf.load195, 14
  %bf.clear197 = and i64 %bf.lshr196, 1
  %bf.cast198 = trunc i64 %bf.clear197 to i1
  br i1 %bf.cast198, label %land.lhs.true.200, label %cond.false.217

land.lhs.true.200:                                ; preds = %land.lhs.true.191
  %124 = load %struct.window*, %struct.window** %w.addr, align 8
  %contents201 = getelementptr inbounds %struct.window, %struct.window* %124, i32 0, i32 10
  %125 = load i64, i64* %contents201, align 8
  %call202 = call %struct.buffer* @XBUFFER(i64 %125)
  %mode_line_format_ = getelementptr inbounds %struct.buffer, %struct.buffer* %call202, i32 0, i32 12
  %126 = load i64, i64* %mode_line_format_, align 8
  %call203 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp204 = icmp eq i64 %126, %call203
  br i1 %cmp204, label %cond.false.217, label %land.lhs.true.206

land.lhs.true.206:                                ; preds = %land.lhs.true.200
  %127 = load %struct.window*, %struct.window** %w.addr, align 8
  %pixel_height207 = getelementptr inbounds %struct.window, %struct.window* %127, i32 0, i32 35
  %128 = load i32, i32* %pixel_height207, align 4
  %129 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame208 = getelementptr inbounds %struct.window, %struct.window* %129, i32 0, i32 1
  %130 = load i64, i64* %frame208, align 8
  %sub209 = sub nsw i64 %130, 5
  %131 = inttoptr i64 %sub209 to i8*
  %132 = bitcast i8* %131 to %struct.frame*
  %line_height = getelementptr inbounds %struct.frame, %struct.frame* %132, i32 0, i32 60
  %133 = load i32, i32* %line_height, align 4
  %cmp210 = icmp sgt i32 %128, %133
  br i1 %cmp210, label %cond.true.213, label %cond.false.217

cond.false.212:                                   ; preds = %land.lhs.true.176
  br i1 false, label %cond.true.213, label %cond.false.217

cond.true.213:                                    ; preds = %cond.false.212, %land.lhs.true.206
  %134 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame214 = getelementptr inbounds %struct.window, %struct.window* %134, i32 0, i32 1
  %135 = load i64, i64* %frame214, align 8
  %sub215 = sub nsw i64 %135, 5
  %136 = inttoptr i64 %sub215 to i8*
  %137 = bitcast i8* %136 to %struct.frame*
  %line_height216 = getelementptr inbounds %struct.frame, %struct.frame* %137, i32 0, i32 60
  %138 = load i32, i32* %line_height216, align 4
  %mul = mul nsw i32 2, %138
  br label %cond.end.221

cond.false.217:                                   ; preds = %cond.false.212, %land.lhs.true.206, %land.lhs.true.200, %land.lhs.true.191, %land.lhs.true.185, %cond.true.180
  %139 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame218 = getelementptr inbounds %struct.window, %struct.window* %139, i32 0, i32 1
  %140 = load i64, i64* %frame218, align 8
  %sub219 = sub nsw i64 %140, 5
  %141 = inttoptr i64 %sub219 to i8*
  %142 = bitcast i8* %141 to %struct.frame*
  %line_height220 = getelementptr inbounds %struct.frame, %struct.frame* %142, i32 0, i32 60
  %143 = load i32, i32* %line_height220, align 4
  br label %cond.end.221

cond.end.221:                                     ; preds = %cond.false.217, %cond.true.213
  %cond222 = phi i32 [ %mul, %cond.true.213 ], [ %143, %cond.false.217 ]
  %cmp223 = icmp sgt i32 %114, %cond222
  br i1 %cmp223, label %cond.true.226, label %cond.false.266

cond.false.225:                                   ; preds = %land.lhs.true.147
  br i1 false, label %cond.true.226, label %cond.false.266

cond.true.226:                                    ; preds = %cond.false.225, %cond.end.221
  %144 = load %struct.window*, %struct.window** %w.addr, align 8
  %header_line_height = getelementptr inbounds %struct.window, %struct.window* %144, i32 0, i32 64
  %145 = load i32, i32* %header_line_height, align 4
  %cmp227 = icmp sge i32 %145, 0
  br i1 %cmp227, label %cond.true.229, label %cond.false.231

cond.true.229:                                    ; preds = %cond.true.226
  %146 = load %struct.window*, %struct.window** %w.addr, align 8
  %header_line_height230 = getelementptr inbounds %struct.window, %struct.window* %146, i32 0, i32 64
  %147 = load i32, i32* %header_line_height230, align 4
  br label %cond.end.264

cond.false.231:                                   ; preds = %cond.true.226
  %148 = load %struct.window*, %struct.window** %w.addr, align 8
  %current_matrix232 = getelementptr inbounds %struct.window, %struct.window* %148, i32 0, i32 24
  %149 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix232, align 8
  %tobool = icmp ne %struct.glyph_matrix* %149, null
  br i1 %tobool, label %land.lhs.true.233, label %cond.false.242

land.lhs.true.233:                                ; preds = %cond.false.231
  %150 = load %struct.window*, %struct.window** %w.addr, align 8
  %current_matrix234 = getelementptr inbounds %struct.window, %struct.window* %150, i32 0, i32 24
  %151 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix234, align 8
  %rows235 = getelementptr inbounds %struct.glyph_matrix, %struct.glyph_matrix* %151, i32 0, i32 1
  %152 = load %struct.glyph_row*, %struct.glyph_row** %rows235, align 8
  %tobool236 = icmp ne %struct.glyph_row* %152, null
  br i1 %tobool236, label %cond.true.237, label %cond.false.242

cond.true.237:                                    ; preds = %land.lhs.true.233
  %153 = load %struct.window*, %struct.window** %w.addr, align 8
  %current_matrix238 = getelementptr inbounds %struct.window, %struct.window* %153, i32 0, i32 24
  %154 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix238, align 8
  %rows239 = getelementptr inbounds %struct.glyph_matrix, %struct.glyph_matrix* %154, i32 0, i32 1
  %155 = load %struct.glyph_row*, %struct.glyph_row** %rows239, align 8
  %height240 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %155, i32 0, i32 7
  %156 = load i32, i32* %height240, align 4
  %tobool241 = icmp ne i32 %156, 0
  br i1 %tobool241, label %cond.true.243, label %cond.false.257

cond.false.242:                                   ; preds = %land.lhs.true.233, %cond.false.231
  br i1 false, label %cond.true.243, label %cond.false.257

cond.true.243:                                    ; preds = %cond.false.242, %cond.true.237
  %157 = load %struct.window*, %struct.window** %w.addr, align 8
  %current_matrix244 = getelementptr inbounds %struct.window, %struct.window* %157, i32 0, i32 24
  %158 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix244, align 8
  %tobool245 = icmp ne %struct.glyph_matrix* %158, null
  br i1 %tobool245, label %land.lhs.true.246, label %cond.false.254

land.lhs.true.246:                                ; preds = %cond.true.243
  %159 = load %struct.window*, %struct.window** %w.addr, align 8
  %current_matrix247 = getelementptr inbounds %struct.window, %struct.window* %159, i32 0, i32 24
  %160 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix247, align 8
  %rows248 = getelementptr inbounds %struct.glyph_matrix, %struct.glyph_matrix* %160, i32 0, i32 1
  %161 = load %struct.glyph_row*, %struct.glyph_row** %rows248, align 8
  %tobool249 = icmp ne %struct.glyph_row* %161, null
  br i1 %tobool249, label %cond.true.250, label %cond.false.254

cond.true.250:                                    ; preds = %land.lhs.true.246
  %162 = load %struct.window*, %struct.window** %w.addr, align 8
  %current_matrix251 = getelementptr inbounds %struct.window, %struct.window* %162, i32 0, i32 24
  %163 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix251, align 8
  %rows252 = getelementptr inbounds %struct.glyph_matrix, %struct.glyph_matrix* %163, i32 0, i32 1
  %164 = load %struct.glyph_row*, %struct.glyph_row** %rows252, align 8
  %height253 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %164, i32 0, i32 7
  %165 = load i32, i32* %height253, align 4
  br label %cond.end.255

cond.false.254:                                   ; preds = %land.lhs.true.246, %cond.true.243
  br label %cond.end.255

cond.end.255:                                     ; preds = %cond.false.254, %cond.true.250
  %cond256 = phi i32 [ %165, %cond.true.250 ], [ 0, %cond.false.254 ]
  br label %cond.end.261

cond.false.257:                                   ; preds = %cond.false.242, %cond.true.237
  %166 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame258 = getelementptr inbounds %struct.window, %struct.window* %166, i32 0, i32 1
  %167 = load i64, i64* %frame258, align 8
  %sub259 = sub nsw i64 %167, 5
  %168 = inttoptr i64 %sub259 to i8*
  %169 = bitcast i8* %168 to %struct.frame*
  %call260 = call i32 @estimate_mode_line_height(%struct.frame* %169, i32 5)
  br label %cond.end.261

cond.end.261:                                     ; preds = %cond.false.257, %cond.end.255
  %cond262 = phi i32 [ %cond256, %cond.end.255 ], [ %call260, %cond.false.257 ]
  %170 = load %struct.window*, %struct.window** %w.addr, align 8
  %header_line_height263 = getelementptr inbounds %struct.window, %struct.window* %170, i32 0, i32 64
  store i32 %cond262, i32* %header_line_height263, align 4
  br label %cond.end.264

cond.end.264:                                     ; preds = %cond.end.261, %cond.true.229
  %cond265 = phi i32 [ %147, %cond.true.229 ], [ %cond262, %cond.end.261 ]
  br label %cond.end.267

cond.false.266:                                   ; preds = %cond.false.225, %cond.end.221, %land.lhs.true.170, %land.lhs.true.163, %land.lhs.true.157, %cond.true.152
  br label %cond.end.267

cond.end.267:                                     ; preds = %cond.false.266, %cond.end.264
  %cond268 = phi i32 [ %cond265, %cond.end.264 ], [ 0, %cond.false.266 ]
  %cmp269 = icmp slt i32 %100, %cond268
  br i1 %cmp269, label %if.else.280, label %if.then.271

if.then.271:                                      ; preds = %cond.end.267, %land.lhs.true.143
  %171 = load i64, i64* %boundary_top, align 8
  %call272 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp273 = icmp eq i64 %171, %call272
  %lnot275 = xor i1 %cmp273, true
  %172 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %indicate_bob_p276 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %172, i32 0, i32 22
  %173 = bitcast i40* %indicate_bob_p276 to i64*
  %174 = zext i1 %lnot275 to i64
  %bf.load277 = load i64, i64* %173, align 4
  %bf.shl = shl i64 %174, 30
  %bf.clear278 = and i64 %bf.load277, -1073741825
  %bf.set = or i64 %bf.clear278, %bf.shl
  store i64 %bf.set, i64* %173, align 4
  %bf.result.cast = trunc i64 %174 to i8
  %tobool279 = trunc i8 %bf.result.cast to i1
  br label %if.end.292

if.else.280:                                      ; preds = %cond.end.267, %cond.end.139
  %175 = load i64, i64* %arrow_top, align 8
  %call281 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp282 = icmp eq i64 %175, %call281
  %lnot284 = xor i1 %cmp282, true
  %176 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %indicate_top_line_p285 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %176, i32 0, i32 22
  %177 = bitcast i40* %indicate_top_line_p285 to i64*
  %178 = zext i1 %lnot284 to i64
  %bf.load286 = load i64, i64* %177, align 4
  %bf.shl287 = shl i64 %178, 31
  %bf.clear288 = and i64 %bf.load286, -2147483649
  %bf.set289 = or i64 %bf.clear288, %bf.shl287
  store i64 %bf.set289, i64* %177, align 4
  %bf.result.cast290 = trunc i64 %178 to i8
  %tobool291 = trunc i8 %bf.result.cast290 to i1
  br label %if.end.292

if.end.292:                                       ; preds = %if.else.280, %if.then.271
  %179 = load i32, i32* %rn, align 4
  store i32 %179, i32* %top_ind_rn, align 4
  br label %if.end.293

if.end.293:                                       ; preds = %if.end.292, %land.lhs.true.117, %if.then.114
  %180 = load i32, i32* %bot_ind_rn, align 4
  %cmp294 = icmp slt i32 %180, 0
  br i1 %cmp294, label %if.then.296, label %if.end.577

if.then.296:                                      ; preds = %if.end.293
  %181 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %maxpos = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %181, i32 0, i32 15
  %charpos297 = getelementptr inbounds %struct.text_pos, %struct.text_pos* %maxpos, i32 0, i32 0
  %182 = load i64, i64* %charpos297, align 8
  %183 = load %struct.window*, %struct.window** %w.addr, align 8
  %contents298 = getelementptr inbounds %struct.window, %struct.window* %183, i32 0, i32 10
  %184 = load i64, i64* %contents298, align 8
  %call299 = call %struct.buffer* @XBUFFER(i64 %184)
  %185 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp300 = icmp eq %struct.buffer* %call299, %185
  br i1 %cmp300, label %cond.true.302, label %cond.false.303

cond.true.302:                                    ; preds = %if.then.296
  %186 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %186, i32 0, i32 79
  %187 = load i64, i64* %zv, align 8
  br label %cond.end.320

cond.false.303:                                   ; preds = %if.then.296
  %188 = load %struct.window*, %struct.window** %w.addr, align 8
  %contents304 = getelementptr inbounds %struct.window, %struct.window* %188, i32 0, i32 10
  %189 = load i64, i64* %contents304, align 8
  %call305 = call %struct.buffer* @XBUFFER(i64 %189)
  %zv_marker_ = getelementptr inbounds %struct.buffer, %struct.buffer* %call305, i32 0, i32 47
  %190 = load i64, i64* %zv_marker_, align 8
  %call306 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp307 = icmp eq i64 %190, %call306
  br i1 %cmp307, label %cond.true.309, label %cond.false.313

cond.true.309:                                    ; preds = %cond.false.303
  %191 = load %struct.window*, %struct.window** %w.addr, align 8
  %contents310 = getelementptr inbounds %struct.window, %struct.window* %191, i32 0, i32 10
  %192 = load i64, i64* %contents310, align 8
  %call311 = call %struct.buffer* @XBUFFER(i64 %192)
  %zv312 = getelementptr inbounds %struct.buffer, %struct.buffer* %call311, i32 0, i32 79
  %193 = load i64, i64* %zv312, align 8
  br label %cond.end.318

cond.false.313:                                   ; preds = %cond.false.303
  %194 = load %struct.window*, %struct.window** %w.addr, align 8
  %contents314 = getelementptr inbounds %struct.window, %struct.window* %194, i32 0, i32 10
  %195 = load i64, i64* %contents314, align 8
  %call315 = call %struct.buffer* @XBUFFER(i64 %195)
  %zv_marker_316 = getelementptr inbounds %struct.buffer, %struct.buffer* %call315, i32 0, i32 47
  %196 = load i64, i64* %zv_marker_316, align 8
  %call317 = call i64 @marker_position(i64 %196)
  br label %cond.end.318

cond.end.318:                                     ; preds = %cond.false.313, %cond.true.309
  %cond319 = phi i64 [ %193, %cond.true.309 ], [ %call317, %cond.false.313 ]
  br label %cond.end.320

cond.end.320:                                     ; preds = %cond.end.318, %cond.true.302
  %cond321 = phi i64 [ %187, %cond.true.302 ], [ %cond319, %cond.end.318 ]
  %cmp322 = icmp sge i64 %182, %cond321
  br i1 %cmp322, label %land.lhs.true.324, label %if.else.558

land.lhs.true.324:                                ; preds = %cond.end.320
  %197 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %height325 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %197, i32 0, i32 7
  %198 = load i32, i32* %height325, align 4
  %199 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %visible_height326 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %199, i32 0, i32 10
  %200 = load i32, i32* %visible_height326, align 4
  %cmp327 = icmp ne i32 %198, %200
  br i1 %cmp327, label %land.lhs.true.329, label %if.then.546

land.lhs.true.329:                                ; preds = %land.lhs.true.324
  %201 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %y330 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %201, i32 0, i32 4
  %202 = load i32, i32* %y330, align 4
  %203 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %height331 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %203, i32 0, i32 7
  %204 = load i32, i32* %height331, align 4
  %add = add nsw i32 %202, %204
  %205 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %extra_line_spacing = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %205, i32 0, i32 11
  %206 = load i32, i32* %extra_line_spacing, align 4
  %sub332 = sub nsw i32 %add, %206
  %207 = load %struct.window*, %struct.window** %w.addr, align 8
  %pixel_height333 = getelementptr inbounds %struct.window, %struct.window* %207, i32 0, i32 35
  %208 = load i32, i32* %pixel_height333, align 4
  %209 = load %struct.window*, %struct.window** %w.addr, align 8
  %pixel_top = getelementptr inbounds %struct.window, %struct.window* %209, i32 0, i32 31
  %210 = load i32, i32* %pixel_top, align 4
  %211 = load %struct.window*, %struct.window** %w.addr, align 8
  %pixel_height334 = getelementptr inbounds %struct.window, %struct.window* %211, i32 0, i32 35
  %212 = load i32, i32* %pixel_height334, align 4
  %add335 = add nsw i32 %210, %212
  %213 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame336 = getelementptr inbounds %struct.window, %struct.window* %213, i32 0, i32 1
  %214 = load i64, i64* %frame336, align 8
  %sub337 = sub nsw i64 %214, 5
  %215 = inttoptr i64 %sub337 to i8*
  %216 = bitcast i8* %215 to %struct.frame*
  %root_window = getelementptr inbounds %struct.frame, %struct.frame* %216, i32 0, i32 5
  %217 = load i64, i64* %root_window, align 8
  %call338 = call %struct.window* @XWINDOW(i64 %217)
  %pixel_top339 = getelementptr inbounds %struct.window, %struct.window* %call338, i32 0, i32 31
  %218 = load i32, i32* %pixel_top339, align 4
  %219 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame340 = getelementptr inbounds %struct.window, %struct.window* %219, i32 0, i32 1
  %220 = load i64, i64* %frame340, align 8
  %sub341 = sub nsw i64 %220, 5
  %221 = inttoptr i64 %sub341 to i8*
  %222 = bitcast i8* %221 to %struct.frame*
  %root_window342 = getelementptr inbounds %struct.frame, %struct.frame* %222, i32 0, i32 5
  %223 = load i64, i64* %root_window342, align 8
  %call343 = call %struct.window* @XWINDOW(i64 %223)
  %pixel_height344 = getelementptr inbounds %struct.window, %struct.window* %call343, i32 0, i32 35
  %224 = load i32, i32* %pixel_height344, align 4
  %add345 = add nsw i32 %218, %224
  %cmp346 = icmp eq i32 %add335, %add345
  br i1 %cmp346, label %land.lhs.true.348, label %lor.lhs.false.356

land.lhs.true.348:                                ; preds = %land.lhs.true.329
  %225 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame349 = getelementptr inbounds %struct.window, %struct.window* %225, i32 0, i32 1
  %226 = load i64, i64* %frame349, align 8
  %sub350 = sub nsw i64 %226, 5
  %227 = inttoptr i64 %sub350 to i8*
  %228 = bitcast i8* %227 to %struct.frame*
  %root_window351 = getelementptr inbounds %struct.frame, %struct.frame* %228, i32 0, i32 5
  %229 = load i64, i64* %root_window351, align 8
  %call352 = call %struct.window* @XWINDOW(i64 %229)
  %next = getelementptr inbounds %struct.window, %struct.window* %call352, i32 0, i32 2
  %230 = load i64, i64* %next, align 8
  %call353 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp354 = icmp eq i64 %230, %call353
  br i1 %cmp354, label %cond.true.369, label %lor.lhs.false.356

lor.lhs.false.356:                                ; preds = %land.lhs.true.348, %land.lhs.true.329
  %231 = load %struct.window*, %struct.window** %w.addr, align 8
  %prev = getelementptr inbounds %struct.window, %struct.window* %231, i32 0, i32 3
  %232 = load i64, i64* %prev, align 8
  %233 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame357 = getelementptr inbounds %struct.window, %struct.window* %233, i32 0, i32 1
  %234 = load i64, i64* %frame357, align 8
  %sub358 = sub nsw i64 %234, 5
  %235 = inttoptr i64 %sub358 to i8*
  %236 = bitcast i8* %235 to %struct.frame*
  %root_window359 = getelementptr inbounds %struct.frame, %struct.frame* %236, i32 0, i32 5
  %237 = load i64, i64* %root_window359, align 8
  %cmp360 = icmp eq i64 %232, %237
  br i1 %cmp360, label %cond.true.369, label %lor.lhs.false.362

lor.lhs.false.362:                                ; preds = %lor.lhs.false.356
  %238 = load %struct.window*, %struct.window** %w.addr, align 8
  %pseudo_window_p363 = getelementptr inbounds %struct.window, %struct.window* %238, i32 0, i32 67
  %bf.load364 = load i16, i16* %pseudo_window_p363, align 4
  %bf.lshr365 = lshr i16 %bf.load364, 11
  %bf.clear366 = and i16 %bf.lshr365, 1
  %bf.cast367 = trunc i16 %bf.clear366 to i1
  br i1 %bf.cast367, label %cond.true.369, label %cond.false.370

cond.true.369:                                    ; preds = %lor.lhs.false.362, %lor.lhs.false.356, %land.lhs.true.348
  br label %cond.end.373

cond.false.370:                                   ; preds = %lor.lhs.false.362
  %239 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame371 = getelementptr inbounds %struct.window, %struct.window* %239, i32 0, i32 1
  %240 = load i64, i64* %frame371, align 8
  %sub372 = sub nsw i64 %240, 5
  %241 = inttoptr i64 %sub372 to i8*
  %242 = bitcast i8* %241 to %struct.frame*
  %bottom_divider_width = getelementptr inbounds %struct.frame, %struct.frame* %242, i32 0, i32 53
  %243 = load i32, i32* %bottom_divider_width, align 4
  br label %cond.end.373

cond.end.373:                                     ; preds = %cond.false.370, %cond.true.369
  %cond374 = phi i32 [ 0, %cond.true.369 ], [ %243, %cond.false.370 ]
  %sub375 = sub nsw i32 %208, %cond374
  %244 = load %struct.window*, %struct.window** %w.addr, align 8
  %pseudo_window_p376 = getelementptr inbounds %struct.window, %struct.window* %244, i32 0, i32 67
  %bf.load377 = load i16, i16* %pseudo_window_p376, align 4
  %bf.lshr378 = lshr i16 %bf.load377, 11
  %bf.clear379 = and i16 %bf.lshr378, 1
  %bf.cast380 = trunc i16 %bf.clear379 to i1
  br i1 %bf.cast380, label %cond.true.395, label %lor.lhs.false.382

lor.lhs.false.382:                                ; preds = %cond.end.373
  %245 = load %struct.window*, %struct.window** %w.addr, align 8
  %mini383 = getelementptr inbounds %struct.window, %struct.window* %245, i32 0, i32 67
  %bf.load384 = load i16, i16* %mini383, align 4
  %bf.clear385 = and i16 %bf.load384, 1
  %bf.cast386 = trunc i16 %bf.clear385 to i1
  br i1 %bf.cast386, label %land.lhs.true.388, label %cond.false.396

land.lhs.true.388:                                ; preds = %lor.lhs.false.382
  %246 = load %struct.window*, %struct.window** %w.addr, align 8
  %prev389 = getelementptr inbounds %struct.window, %struct.window* %246, i32 0, i32 3
  %247 = load i64, i64* %prev389, align 8
  %248 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame390 = getelementptr inbounds %struct.window, %struct.window* %248, i32 0, i32 1
  %249 = load i64, i64* %frame390, align 8
  %sub391 = sub nsw i64 %249, 5
  %250 = inttoptr i64 %sub391 to i8*
  %251 = bitcast i8* %250 to %struct.frame*
  %root_window392 = getelementptr inbounds %struct.frame, %struct.frame* %251, i32 0, i32 5
  %252 = load i64, i64* %root_window392, align 8
  %cmp393 = icmp eq i64 %247, %252
  br i1 %cmp393, label %cond.true.395, label %cond.false.396

cond.true.395:                                    ; preds = %land.lhs.true.388, %cond.end.373
  br i1 false, label %cond.true.415, label %cond.false.425

cond.false.396:                                   ; preds = %land.lhs.true.388, %lor.lhs.false.382
  %253 = load %struct.window*, %struct.window** %w.addr, align 8
  %horizontal_scroll_bar_type = getelementptr inbounds %struct.window, %struct.window* %253, i32 0, i32 18
  %254 = load i64, i64* %horizontal_scroll_bar_type, align 8
  %call397 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp398 = icmp eq i64 %254, %call397
  br i1 %cmp398, label %cond.true.400, label %cond.false.408

cond.true.400:                                    ; preds = %cond.false.396
  %255 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame401 = getelementptr inbounds %struct.window, %struct.window* %255, i32 0, i32 1
  %256 = load i64, i64* %frame401, align 8
  %sub402 = sub nsw i64 %256, 5
  %257 = inttoptr i64 %sub402 to i8*
  %258 = bitcast i8* %257 to %struct.frame*
  %horizontal_scroll_bars = getelementptr inbounds %struct.frame, %struct.frame* %258, i32 0, i32 26
  %259 = bitcast i48* %horizontal_scroll_bars to i64*
  %bf.load403 = load i64, i64* %259, align 8
  %bf.lshr404 = lshr i64 %bf.load403, 32
  %bf.clear405 = and i64 %bf.lshr404, 1
  %bf.cast406 = trunc i64 %bf.clear405 to i1
  br i1 %bf.cast406, label %cond.true.415, label %cond.false.425

cond.false.408:                                   ; preds = %cond.false.396
  %260 = load %struct.window*, %struct.window** %w.addr, align 8
  %horizontal_scroll_bar_type409 = getelementptr inbounds %struct.window, %struct.window* %260, i32 0, i32 18
  %261 = load i64, i64* %horizontal_scroll_bar_type409, align 8
  %call410 = call i64 @builtin_lisp_symbol(i32 213)
  %cmp411 = icmp eq i64 %261, %call410
  br i1 %cmp411, label %cond.true.413, label %cond.false.414

cond.true.413:                                    ; preds = %cond.false.408
  br i1 true, label %cond.true.415, label %cond.false.425

cond.false.414:                                   ; preds = %cond.false.408
  br i1 false, label %cond.true.415, label %cond.false.425

cond.true.415:                                    ; preds = %cond.false.414, %cond.true.413, %cond.true.400, %cond.true.395
  %262 = load %struct.window*, %struct.window** %w.addr, align 8
  %scroll_bar_height = getelementptr inbounds %struct.window, %struct.window* %262, i32 0, i32 62
  %263 = load i32, i32* %scroll_bar_height, align 4
  %cmp416 = icmp sge i32 %263, 0
  br i1 %cmp416, label %cond.true.418, label %cond.false.420

cond.true.418:                                    ; preds = %cond.true.415
  %264 = load %struct.window*, %struct.window** %w.addr, align 8
  %scroll_bar_height419 = getelementptr inbounds %struct.window, %struct.window* %264, i32 0, i32 62
  %265 = load i32, i32* %scroll_bar_height419, align 4
  br label %cond.end.423

cond.false.420:                                   ; preds = %cond.true.415
  %266 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame421 = getelementptr inbounds %struct.window, %struct.window* %266, i32 0, i32 1
  %267 = load i64, i64* %frame421, align 8
  %sub422 = sub nsw i64 %267, 5
  %268 = inttoptr i64 %sub422 to i8*
  %269 = bitcast i8* %268 to %struct.frame*
  %config_scroll_bar_height = getelementptr inbounds %struct.frame, %struct.frame* %269, i32 0, i32 71
  %270 = load i32, i32* %config_scroll_bar_height, align 4
  br label %cond.end.423

cond.end.423:                                     ; preds = %cond.false.420, %cond.true.418
  %cond424 = phi i32 [ %265, %cond.true.418 ], [ %270, %cond.false.420 ]
  br label %cond.end.426

cond.false.425:                                   ; preds = %cond.false.414, %cond.true.413, %cond.true.400, %cond.true.395
  br label %cond.end.426

cond.end.426:                                     ; preds = %cond.false.425, %cond.end.423
  %cond427 = phi i32 [ %cond424, %cond.end.423 ], [ 0, %cond.false.425 ]
  %sub428 = sub nsw i32 %sub375, %cond427
  %271 = load %struct.window*, %struct.window** %w.addr, align 8
  %contents429 = getelementptr inbounds %struct.window, %struct.window* %271, i32 0, i32 10
  %272 = load i64, i64* %contents429, align 8
  %call430 = call zeroext i1 @BUFFERP(i64 %272)
  br i1 %call430, label %cond.true.432, label %cond.false.466

cond.true.432:                                    ; preds = %cond.end.426
  %273 = load %struct.window*, %struct.window** %w.addr, align 8
  %mini433 = getelementptr inbounds %struct.window, %struct.window* %273, i32 0, i32 67
  %bf.load434 = load i16, i16* %mini433, align 4
  %bf.clear435 = and i16 %bf.load434, 1
  %bf.cast436 = trunc i16 %bf.clear435 to i1
  br i1 %bf.cast436, label %cond.false.540, label %land.lhs.true.437

land.lhs.true.437:                                ; preds = %cond.true.432
  %274 = load %struct.window*, %struct.window** %w.addr, align 8
  %pseudo_window_p438 = getelementptr inbounds %struct.window, %struct.window* %274, i32 0, i32 67
  %bf.load439 = load i16, i16* %pseudo_window_p438, align 4
  %bf.lshr440 = lshr i16 %bf.load439, 11
  %bf.clear441 = and i16 %bf.lshr440, 1
  %bf.cast442 = trunc i16 %bf.clear441 to i1
  br i1 %bf.cast442, label %cond.false.540, label %land.lhs.true.443

land.lhs.true.443:                                ; preds = %land.lhs.true.437
  %275 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame444 = getelementptr inbounds %struct.window, %struct.window* %275, i32 0, i32 1
  %276 = load i64, i64* %frame444, align 8
  %sub445 = sub nsw i64 %276, 5
  %277 = inttoptr i64 %sub445 to i8*
  %278 = bitcast i8* %277 to %struct.frame*
  %wants_modeline446 = getelementptr inbounds %struct.frame, %struct.frame* %278, i32 0, i32 26
  %279 = bitcast i48* %wants_modeline446 to i64*
  %bf.load447 = load i64, i64* %279, align 8
  %bf.lshr448 = lshr i64 %bf.load447, 14
  %bf.clear449 = and i64 %bf.lshr448, 1
  %bf.cast450 = trunc i64 %bf.clear449 to i1
  br i1 %bf.cast450, label %land.lhs.true.452, label %cond.false.540

land.lhs.true.452:                                ; preds = %land.lhs.true.443
  %280 = load %struct.window*, %struct.window** %w.addr, align 8
  %contents453 = getelementptr inbounds %struct.window, %struct.window* %280, i32 0, i32 10
  %281 = load i64, i64* %contents453, align 8
  %call454 = call %struct.buffer* @XBUFFER(i64 %281)
  %mode_line_format_455 = getelementptr inbounds %struct.buffer, %struct.buffer* %call454, i32 0, i32 12
  %282 = load i64, i64* %mode_line_format_455, align 8
  %call456 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp457 = icmp eq i64 %282, %call456
  br i1 %cmp457, label %cond.false.540, label %land.lhs.true.459

land.lhs.true.459:                                ; preds = %land.lhs.true.452
  %283 = load %struct.window*, %struct.window** %w.addr, align 8
  %pixel_height460 = getelementptr inbounds %struct.window, %struct.window* %283, i32 0, i32 35
  %284 = load i32, i32* %pixel_height460, align 4
  %285 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame461 = getelementptr inbounds %struct.window, %struct.window* %285, i32 0, i32 1
  %286 = load i64, i64* %frame461, align 8
  %sub462 = sub nsw i64 %286, 5
  %287 = inttoptr i64 %sub462 to i8*
  %288 = bitcast i8* %287 to %struct.frame*
  %line_height463 = getelementptr inbounds %struct.frame, %struct.frame* %288, i32 0, i32 60
  %289 = load i32, i32* %line_height463, align 4
  %cmp464 = icmp sgt i32 %284, %289
  br i1 %cmp464, label %cond.true.467, label %cond.false.540

cond.false.466:                                   ; preds = %cond.end.426
  br i1 false, label %cond.true.467, label %cond.false.540

cond.true.467:                                    ; preds = %cond.false.466, %land.lhs.true.459
  %290 = load %struct.window*, %struct.window** %w.addr, align 8
  %mode_line_height = getelementptr inbounds %struct.window, %struct.window* %290, i32 0, i32 63
  %291 = load i32, i32* %mode_line_height, align 4
  %cmp468 = icmp sge i32 %291, 0
  br i1 %cmp468, label %cond.true.470, label %cond.false.472

cond.true.470:                                    ; preds = %cond.true.467
  %292 = load %struct.window*, %struct.window** %w.addr, align 8
  %mode_line_height471 = getelementptr inbounds %struct.window, %struct.window* %292, i32 0, i32 63
  %293 = load i32, i32* %mode_line_height471, align 4
  br label %cond.end.538

cond.false.472:                                   ; preds = %cond.true.467
  %294 = load %struct.window*, %struct.window** %w.addr, align 8
  %current_matrix473 = getelementptr inbounds %struct.window, %struct.window* %294, i32 0, i32 24
  %295 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix473, align 8
  %tobool474 = icmp ne %struct.glyph_matrix* %295, null
  br i1 %tobool474, label %land.lhs.true.475, label %cond.false.489

land.lhs.true.475:                                ; preds = %cond.false.472
  %296 = load %struct.window*, %struct.window** %w.addr, align 8
  %current_matrix476 = getelementptr inbounds %struct.window, %struct.window* %296, i32 0, i32 24
  %297 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix476, align 8
  %rows477 = getelementptr inbounds %struct.glyph_matrix, %struct.glyph_matrix* %297, i32 0, i32 1
  %298 = load %struct.glyph_row*, %struct.glyph_row** %rows477, align 8
  %tobool478 = icmp ne %struct.glyph_row* %298, null
  br i1 %tobool478, label %cond.true.479, label %cond.false.489

cond.true.479:                                    ; preds = %land.lhs.true.475
  %299 = load %struct.window*, %struct.window** %w.addr, align 8
  %current_matrix480 = getelementptr inbounds %struct.window, %struct.window* %299, i32 0, i32 24
  %300 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix480, align 8
  %rows481 = getelementptr inbounds %struct.glyph_matrix, %struct.glyph_matrix* %300, i32 0, i32 1
  %301 = load %struct.glyph_row*, %struct.glyph_row** %rows481, align 8
  %302 = load %struct.window*, %struct.window** %w.addr, align 8
  %current_matrix482 = getelementptr inbounds %struct.window, %struct.window* %302, i32 0, i32 24
  %303 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix482, align 8
  %nrows483 = getelementptr inbounds %struct.glyph_matrix, %struct.glyph_matrix* %303, i32 0, i32 3
  %304 = load i32, i32* %nrows483, align 4
  %idx.ext484 = sext i32 %304 to i64
  %add.ptr485 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %301, i64 %idx.ext484
  %add.ptr486 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %add.ptr485, i64 -1
  %height487 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %add.ptr486, i32 0, i32 7
  %305 = load i32, i32* %height487, align 4
  %tobool488 = icmp ne i32 %305, 0
  br i1 %tobool488, label %cond.true.490, label %cond.false.509

cond.false.489:                                   ; preds = %land.lhs.true.475, %cond.false.472
  br i1 false, label %cond.true.490, label %cond.false.509

cond.true.490:                                    ; preds = %cond.false.489, %cond.true.479
  %306 = load %struct.window*, %struct.window** %w.addr, align 8
  %current_matrix491 = getelementptr inbounds %struct.window, %struct.window* %306, i32 0, i32 24
  %307 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix491, align 8
  %tobool492 = icmp ne %struct.glyph_matrix* %307, null
  br i1 %tobool492, label %land.lhs.true.493, label %cond.false.506

land.lhs.true.493:                                ; preds = %cond.true.490
  %308 = load %struct.window*, %struct.window** %w.addr, align 8
  %current_matrix494 = getelementptr inbounds %struct.window, %struct.window* %308, i32 0, i32 24
  %309 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix494, align 8
  %rows495 = getelementptr inbounds %struct.glyph_matrix, %struct.glyph_matrix* %309, i32 0, i32 1
  %310 = load %struct.glyph_row*, %struct.glyph_row** %rows495, align 8
  %tobool496 = icmp ne %struct.glyph_row* %310, null
  br i1 %tobool496, label %cond.true.497, label %cond.false.506

cond.true.497:                                    ; preds = %land.lhs.true.493
  %311 = load %struct.window*, %struct.window** %w.addr, align 8
  %current_matrix498 = getelementptr inbounds %struct.window, %struct.window* %311, i32 0, i32 24
  %312 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix498, align 8
  %rows499 = getelementptr inbounds %struct.glyph_matrix, %struct.glyph_matrix* %312, i32 0, i32 1
  %313 = load %struct.glyph_row*, %struct.glyph_row** %rows499, align 8
  %314 = load %struct.window*, %struct.window** %w.addr, align 8
  %current_matrix500 = getelementptr inbounds %struct.window, %struct.window* %314, i32 0, i32 24
  %315 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix500, align 8
  %nrows501 = getelementptr inbounds %struct.glyph_matrix, %struct.glyph_matrix* %315, i32 0, i32 3
  %316 = load i32, i32* %nrows501, align 4
  %idx.ext502 = sext i32 %316 to i64
  %add.ptr503 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %313, i64 %idx.ext502
  %add.ptr504 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %add.ptr503, i64 -1
  %height505 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %add.ptr504, i32 0, i32 7
  %317 = load i32, i32* %height505, align 4
  br label %cond.end.507

cond.false.506:                                   ; preds = %land.lhs.true.493, %cond.true.490
  br label %cond.end.507

cond.end.507:                                     ; preds = %cond.false.506, %cond.true.497
  %cond508 = phi i32 [ %317, %cond.true.497 ], [ 0, %cond.false.506 ]
  br label %cond.end.535

cond.false.509:                                   ; preds = %cond.false.489, %cond.true.479
  %318 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame510 = getelementptr inbounds %struct.window, %struct.window* %318, i32 0, i32 1
  %319 = load i64, i64* %frame510, align 8
  %sub511 = sub nsw i64 %319, 5
  %320 = inttoptr i64 %sub511 to i8*
  %321 = bitcast i8* %320 to %struct.frame*
  %322 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 473), align 1
  %tobool512 = trunc i8 %322 to i1
  br i1 %tobool512, label %lor.lhs.false.513, label %lor.end

lor.lhs.false.513:                                ; preds = %cond.false.509
  %323 = load %struct.window*, %struct.window** %w.addr, align 8
  %324 = load i64, i64* @selected_window, align 8
  %call514 = call %struct.window* @XWINDOW(i64 %324)
  %cmp515 = icmp eq %struct.window* %323, %call514
  br i1 %cmp515, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.513
  %325 = load i64, i64* @minibuf_level, align 8
  %cmp517 = icmp sgt i64 %325, 0
  br i1 %cmp517, label %land.lhs.true.519, label %land.end.532

land.lhs.true.519:                                ; preds = %lor.rhs
  %326 = load i64, i64* @minibuf_selected_window, align 8
  %call520 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp521 = icmp eq i64 %326, %call520
  br i1 %cmp521, label %land.end.532, label %land.lhs.true.523

land.lhs.true.523:                                ; preds = %land.lhs.true.519
  %327 = load i64, i64* @selected_window, align 8
  %call524 = call %struct.window* @XWINDOW(i64 %327)
  %328 = load i64, i64* @minibuf_window, align 8
  %call525 = call %struct.window* @XWINDOW(i64 %328)
  %cmp526 = icmp eq %struct.window* %call524, %call525
  br i1 %cmp526, label %land.rhs.528, label %land.end.532

land.rhs.528:                                     ; preds = %land.lhs.true.523
  %329 = load %struct.window*, %struct.window** %w.addr, align 8
  %330 = load i64, i64* @minibuf_selected_window, align 8
  %call529 = call %struct.window* @XWINDOW(i64 %330)
  %cmp530 = icmp eq %struct.window* %329, %call529
  br label %land.end.532

land.end.532:                                     ; preds = %land.rhs.528, %land.lhs.true.523, %land.lhs.true.519, %lor.rhs
  %331 = phi i1 [ false, %land.lhs.true.523 ], [ false, %land.lhs.true.519 ], [ false, %lor.rhs ], [ %cmp530, %land.rhs.528 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end.532, %lor.lhs.false.513, %cond.false.509
  %332 = phi i1 [ true, %lor.lhs.false.513 ], [ true, %cond.false.509 ], [ %331, %land.end.532 ]
  %cond533 = select i1 %332, i32 1, i32 2
  %call534 = call i32 @estimate_mode_line_height(%struct.frame* %321, i32 %cond533)
  br label %cond.end.535

cond.end.535:                                     ; preds = %lor.end, %cond.end.507
  %cond536 = phi i32 [ %cond508, %cond.end.507 ], [ %call534, %lor.end ]
  %333 = load %struct.window*, %struct.window** %w.addr, align 8
  %mode_line_height537 = getelementptr inbounds %struct.window, %struct.window* %333, i32 0, i32 63
  store i32 %cond536, i32* %mode_line_height537, align 4
  br label %cond.end.538

cond.end.538:                                     ; preds = %cond.end.535, %cond.true.470
  %cond539 = phi i32 [ %293, %cond.true.470 ], [ %cond536, %cond.end.535 ]
  br label %cond.end.541

cond.false.540:                                   ; preds = %cond.false.466, %land.lhs.true.459, %land.lhs.true.452, %land.lhs.true.443, %land.lhs.true.437, %cond.true.432
  br label %cond.end.541

cond.end.541:                                     ; preds = %cond.false.540, %cond.end.538
  %cond542 = phi i32 [ %cond539, %cond.end.538 ], [ 0, %cond.false.540 ]
  %sub543 = sub nsw i32 %sub428, %cond542
  %cmp544 = icmp sgt i32 %sub332, %sub543
  br i1 %cmp544, label %if.else.558, label %if.then.546

if.then.546:                                      ; preds = %cond.end.541, %land.lhs.true.324
  %334 = load i64, i64* %boundary_bot, align 8
  %call547 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp548 = icmp eq i64 %334, %call547
  %lnot550 = xor i1 %cmp548, true
  %335 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %indicate_eob_p551 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %335, i32 0, i32 22
  %336 = bitcast i40* %indicate_eob_p551 to i64*
  %337 = zext i1 %lnot550 to i64
  %bf.load552 = load i64, i64* %336, align 4
  %bf.shl553 = shl i64 %337, 32
  %bf.clear554 = and i64 %bf.load552, -4294967297
  %bf.set555 = or i64 %bf.clear554, %bf.shl553
  store i64 %bf.set555, i64* %336, align 4
  %bf.result.cast556 = trunc i64 %337 to i8
  %tobool557 = trunc i8 %bf.result.cast556 to i1
  %338 = load i32, i32* %rn, align 4
  store i32 %338, i32* %bot_ind_rn, align 4
  br label %if.end.576

if.else.558:                                      ; preds = %cond.end.541, %cond.end.320
  %339 = load i32, i32* %y, align 4
  %340 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %height559 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %340, i32 0, i32 7
  %341 = load i32, i32* %height559, align 4
  %add560 = add nsw i32 %339, %341
  %342 = load i32, i32* %yb, align 4
  %cmp561 = icmp sge i32 %add560, %342
  br i1 %cmp561, label %if.then.563, label %if.end.575

if.then.563:                                      ; preds = %if.else.558
  %343 = load i64, i64* %arrow_bot, align 8
  %call564 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp565 = icmp eq i64 %343, %call564
  %lnot567 = xor i1 %cmp565, true
  %344 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %indicate_bottom_line_p568 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %344, i32 0, i32 22
  %345 = bitcast i40* %indicate_bottom_line_p568 to i64*
  %346 = zext i1 %lnot567 to i64
  %bf.load569 = load i64, i64* %345, align 4
  %bf.shl570 = shl i64 %346, 33
  %bf.clear571 = and i64 %bf.load569, -8589934593
  %bf.set572 = or i64 %bf.clear571, %bf.shl570
  store i64 %bf.set572, i64* %345, align 4
  %bf.result.cast573 = trunc i64 %346 to i8
  %tobool574 = trunc i8 %bf.result.cast573 to i1
  %347 = load i32, i32* %rn, align 4
  store i32 %347, i32* %bot_ind_rn, align 4
  br label %if.end.575

if.end.575:                                       ; preds = %if.then.563, %if.else.558
  br label %if.end.576

if.end.576:                                       ; preds = %if.end.575, %if.then.546
  br label %if.end.577

if.end.577:                                       ; preds = %if.end.576, %if.end.293
  br label %if.end.578

if.end.578:                                       ; preds = %if.end.577, %if.end.101
  br label %for.inc

for.inc:                                          ; preds = %if.end.578
  %348 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %height579 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %348, i32 0, i32 7
  %349 = load i32, i32* %height579, align 4
  %350 = load i32, i32* %y, align 4
  %add580 = add nsw i32 %350, %349
  store i32 %add580, i32* %y, align 4
  %351 = load i32, i32* %rn, align 4
  %inc = add nsw i32 %351, 1
  store i32 %inc, i32* %rn, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  br label %if.end.581

if.end.581:                                       ; preds = %for.end, %if.end.83
  %352 = load %struct.window*, %struct.window** %w.addr, align 8
  %contents582 = getelementptr inbounds %struct.window, %struct.window* %352, i32 0, i32 10
  %353 = load i64, i64* %contents582, align 8
  %call583 = call %struct.buffer* @XBUFFER(i64 %353)
  %indicate_empty_lines_ = getelementptr inbounds %struct.buffer, %struct.buffer* %call583, i32 0, i32 62
  %354 = load i64, i64* %indicate_empty_lines_, align 8
  store i64 %354, i64* %empty_pos, align 8
  %355 = load i64, i64* %empty_pos, align 8
  %call584 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp585 = icmp eq i64 %355, %call584
  br i1 %cmp585, label %if.end.610, label %land.lhs.true.587

land.lhs.true.587:                                ; preds = %if.end.581
  %356 = load i64, i64* %empty_pos, align 8
  %call588 = call i64 @builtin_lisp_symbol(i32 811)
  %cmp589 = icmp eq i64 %356, %call588
  br i1 %cmp589, label %if.end.610, label %if.then.591

if.then.591:                                      ; preds = %land.lhs.true.587
  %357 = load %struct.window*, %struct.window** %w.addr, align 8
  %left_fringe_width = getelementptr inbounds %struct.window, %struct.window* %357, i32 0, i32 57
  %358 = load i32, i32* %left_fringe_width, align 4
  %cmp592 = icmp sge i32 %358, 0
  br i1 %cmp592, label %cond.true.594, label %cond.false.596

cond.true.594:                                    ; preds = %if.then.591
  %359 = load %struct.window*, %struct.window** %w.addr, align 8
  %left_fringe_width595 = getelementptr inbounds %struct.window, %struct.window* %359, i32 0, i32 57
  %360 = load i32, i32* %left_fringe_width595, align 4
  br label %cond.end.600

cond.false.596:                                   ; preds = %if.then.591
  %361 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame597 = getelementptr inbounds %struct.window, %struct.window* %361, i32 0, i32 1
  %362 = load i64, i64* %frame597, align 8
  %sub598 = sub nsw i64 %362, 5
  %363 = inttoptr i64 %sub598 to i8*
  %364 = bitcast i8* %363 to %struct.frame*
  %left_fringe_width599 = getelementptr inbounds %struct.frame, %struct.frame* %364, i32 0, i32 54
  %365 = load i32, i32* %left_fringe_width599, align 4
  br label %cond.end.600

cond.end.600:                                     ; preds = %cond.false.596, %cond.true.594
  %cond601 = phi i32 [ %360, %cond.true.594 ], [ %365, %cond.false.596 ]
  %cmp602 = icmp eq i32 %cond601, 0
  br i1 %cmp602, label %cond.true.604, label %cond.false.606

cond.true.604:                                    ; preds = %cond.end.600
  %call605 = call i64 @builtin_lisp_symbol(i32 811)
  br label %cond.end.608

cond.false.606:                                   ; preds = %cond.end.600
  %call607 = call i64 @builtin_lisp_symbol(i32 607)
  br label %cond.end.608

cond.end.608:                                     ; preds = %cond.false.606, %cond.true.604
  %cond609 = phi i64 [ %call605, %cond.true.604 ], [ %call607, %cond.false.606 ]
  store i64 %cond609, i64* %empty_pos, align 8
  br label %if.end.610

if.end.610:                                       ; preds = %cond.end.608, %land.lhs.true.587, %if.end.581
  store i32 0, i32* %y, align 4
  br label %for.cond.611

for.cond.611:                                     ; preds = %for.inc.615, %if.end.610
  %366 = load i32, i32* %y, align 4
  %cmp612 = icmp slt i32 %366, 32
  br i1 %cmp612, label %for.body.614, label %for.end.617

for.body.614:                                     ; preds = %for.cond.611
  %367 = load i32, i32* %y, align 4
  %idxprom = sext i32 %367 to i64
  %arrayidx = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 %idxprom
  store i32 -1, i32* %arrayidx, align 4
  br label %for.inc.615

for.inc.615:                                      ; preds = %for.body.614
  %368 = load i32, i32* %y, align 4
  %inc616 = add nsw i32 %368, 1
  store i32 %inc616, i32* %y, align 4
  br label %for.cond.611

for.end.617:                                      ; preds = %for.cond.611
  store i32 -1, i32* %bot_ind_max_y, align 4
  store i32 -1, i32* %top_ind_min_y, align 4
  %369 = load i32, i32* %top_ind_rn, align 4
  %cmp618 = icmp sge i32 %369, 0
  br i1 %cmp618, label %if.then.620, label %if.end.1040

if.then.620:                                      ; preds = %for.end.617
  store i32 0, i32* %bn, align 4
  %370 = load %struct.window*, %struct.window** %w.addr, align 8
  %desired_matrix621 = getelementptr inbounds %struct.window, %struct.window* %370, i32 0, i32 25
  %371 = load %struct.glyph_matrix*, %struct.glyph_matrix** %desired_matrix621, align 8
  %rows622 = getelementptr inbounds %struct.glyph_matrix, %struct.glyph_matrix* %371, i32 0, i32 1
  %372 = load %struct.glyph_row*, %struct.glyph_row** %rows622, align 8
  %373 = load i32, i32* %top_ind_rn, align 4
  %idx.ext623 = sext i32 %373 to i64
  %add.ptr624 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %372, i64 %idx.ext623
  store %struct.glyph_row* %add.ptr624, %struct.glyph_row** %row, align 8
  %374 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %enabled_p625 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %374, i32 0, i32 22
  %375 = bitcast i40* %enabled_p625 to i64*
  %bf.load626 = load i64, i64* %375, align 4
  %bf.lshr627 = lshr i64 %bf.load626, 10
  %bf.clear628 = and i64 %bf.lshr627, 1
  %bf.cast629 = trunc i64 %bf.clear628 to i1
  br i1 %bf.cast629, label %if.end.635, label %if.then.630

if.then.630:                                      ; preds = %if.then.620
  %376 = load %struct.window*, %struct.window** %w.addr, align 8
  %current_matrix631 = getelementptr inbounds %struct.window, %struct.window* %376, i32 0, i32 24
  %377 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix631, align 8
  %rows632 = getelementptr inbounds %struct.glyph_matrix, %struct.glyph_matrix* %377, i32 0, i32 1
  %378 = load %struct.glyph_row*, %struct.glyph_row** %rows632, align 8
  %379 = load i32, i32* %top_ind_rn, align 4
  %idx.ext633 = sext i32 %379 to i64
  %add.ptr634 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %378, i64 %idx.ext633
  store %struct.glyph_row* %add.ptr634, %struct.glyph_row** %row, align 8
  br label %if.end.635

if.end.635:                                       ; preds = %if.then.630, %if.then.620
  %380 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %ends_at_zv_p = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %380, i32 0, i32 22
  %381 = bitcast i40* %ends_at_zv_p to i64*
  %bf.load636 = load i64, i64* %381, align 4
  %bf.lshr637 = lshr i64 %bf.load636, 15
  %bf.clear638 = and i64 %bf.lshr637, 1
  %bf.cast639 = trunc i64 %bf.clear638 to i1
  %conv640 = zext i1 %bf.cast639 to i32
  store i32 %conv640, i32* %top_row_ends_at_zv_p, align 4
  %382 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %indicate_bob_p641 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %382, i32 0, i32 22
  %383 = bitcast i40* %indicate_bob_p641 to i64*
  %bf.load642 = load i64, i64* %383, align 4
  %bf.lshr643 = lshr i64 %bf.load642, 30
  %bf.clear644 = and i64 %bf.lshr643, 1
  %bf.cast645 = trunc i64 %bf.clear644 to i1
  br i1 %bf.cast645, label %if.then.646, label %if.else.785

if.then.646:                                      ; preds = %if.end.635
  %384 = load i64, i64* %boundary_top, align 8
  %call647 = call i64 @builtin_lisp_symbol(i32 607)
  %cmp648 = icmp eq i64 %384, %call647
  br i1 %cmp648, label %if.then.650, label %if.else.717

if.then.650:                                      ; preds = %if.then.646
  %385 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %indicate_eob_p651 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %385, i32 0, i32 22
  %386 = bitcast i40* %indicate_eob_p651 to i64*
  %bf.load652 = load i64, i64* %386, align 4
  %bf.lshr653 = lshr i64 %bf.load652, 32
  %bf.clear654 = and i64 %bf.lshr653, 1
  %bf.cast655 = trunc i64 %bf.clear654 to i1
  br i1 %bf.cast655, label %land.lhs.true.657, label %cond.false.703

land.lhs.true.657:                                ; preds = %if.then.650
  %387 = load i64, i64* %boundary_bot, align 8
  %call658 = call i64 @builtin_lisp_symbol(i32 607)
  %cmp659 = icmp eq i64 %387, %call658
  br i1 %cmp659, label %cond.true.661, label %cond.false.703

cond.true.661:                                    ; preds = %land.lhs.true.657
  %388 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %ends_at_zv_p662 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %388, i32 0, i32 22
  %389 = bitcast i40* %ends_at_zv_p662 to i64*
  %bf.load663 = load i64, i64* %389, align 4
  %bf.lshr664 = lshr i64 %bf.load663, 15
  %bf.clear665 = and i64 %bf.lshr664, 1
  %bf.cast666 = trunc i64 %bf.clear665 to i1
  %conv667 = zext i1 %bf.cast666 to i32
  %add668 = add nsw i32 4, %conv667
  %idxprom669 = sext i32 %add668 to i64
  %arrayidx670 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 %idxprom669
  %390 = load i32, i32* %arrayidx670, align 4
  %cmp671 = icmp sge i32 %390, 0
  br i1 %cmp671, label %cond.true.673, label %cond.false.683

cond.true.673:                                    ; preds = %cond.true.661
  %391 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %ends_at_zv_p674 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %391, i32 0, i32 22
  %392 = bitcast i40* %ends_at_zv_p674 to i64*
  %bf.load675 = load i64, i64* %392, align 4
  %bf.lshr676 = lshr i64 %bf.load675, 15
  %bf.clear677 = and i64 %bf.lshr676, 1
  %bf.cast678 = trunc i64 %bf.clear677 to i1
  %conv679 = zext i1 %bf.cast678 to i32
  %add680 = add nsw i32 4, %conv679
  %idxprom681 = sext i32 %add680 to i64
  %arrayidx682 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 %idxprom681
  %393 = load i32, i32* %arrayidx682, align 4
  br label %cond.end.701

cond.false.683:                                   ; preds = %cond.true.661
  %394 = load %struct.window*, %struct.window** %w.addr, align 8
  %call684 = call i64 @builtin_lisp_symbol(i32 929)
  %395 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %ends_at_zv_p685 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %395, i32 0, i32 22
  %396 = bitcast i40* %ends_at_zv_p685 to i64*
  %bf.load686 = load i64, i64* %396, align 4
  %bf.lshr687 = lshr i64 %bf.load686, 15
  %bf.clear688 = and i64 %bf.lshr687, 1
  %bf.cast689 = trunc i64 %bf.clear688 to i1
  %conv690 = zext i1 %bf.cast689 to i32
  %call691 = call i32 @get_logical_fringe_bitmap(%struct.window* %394, i64 %call684, i32 0, i32 %conv690)
  %397 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %ends_at_zv_p692 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %397, i32 0, i32 22
  %398 = bitcast i40* %ends_at_zv_p692 to i64*
  %bf.load693 = load i64, i64* %398, align 4
  %bf.lshr694 = lshr i64 %bf.load693, 15
  %bf.clear695 = and i64 %bf.lshr694, 1
  %bf.cast696 = trunc i64 %bf.clear695 to i1
  %conv697 = zext i1 %bf.cast696 to i32
  %add698 = add nsw i32 4, %conv697
  %idxprom699 = sext i32 %add698 to i64
  %arrayidx700 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 %idxprom699
  store i32 %call691, i32* %arrayidx700, align 4
  br label %cond.end.701

cond.end.701:                                     ; preds = %cond.false.683, %cond.true.673
  %cond702 = phi i32 [ %393, %cond.true.673 ], [ %call691, %cond.false.683 ]
  br label %cond.end.715

cond.false.703:                                   ; preds = %land.lhs.true.657, %if.then.650
  %arrayidx704 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 8
  %399 = load i32, i32* %arrayidx704, align 4
  %cmp705 = icmp sge i32 %399, 0
  br i1 %cmp705, label %cond.true.707, label %cond.false.709

cond.true.707:                                    ; preds = %cond.false.703
  %arrayidx708 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 8
  %400 = load i32, i32* %arrayidx708, align 4
  br label %cond.end.713

cond.false.709:                                   ; preds = %cond.false.703
  %401 = load %struct.window*, %struct.window** %w.addr, align 8
  %call710 = call i64 @builtin_lisp_symbol(i32 928)
  %call711 = call i32 @get_logical_fringe_bitmap(%struct.window* %401, i64 %call710, i32 0, i32 0)
  %arrayidx712 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 8
  store i32 %call711, i32* %arrayidx712, align 4
  br label %cond.end.713

cond.end.713:                                     ; preds = %cond.false.709, %cond.true.707
  %cond714 = phi i32 [ %400, %cond.true.707 ], [ %call711, %cond.false.709 ]
  br label %cond.end.715

cond.end.715:                                     ; preds = %cond.end.713, %cond.end.701
  %cond716 = phi i32 [ %cond702, %cond.end.701 ], [ %cond714, %cond.end.713 ]
  store i32 %cond716, i32* %bn, align 4
  br label %if.end.784

if.else.717:                                      ; preds = %if.then.646
  %402 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %indicate_eob_p718 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %402, i32 0, i32 22
  %403 = bitcast i40* %indicate_eob_p718 to i64*
  %bf.load719 = load i64, i64* %403, align 4
  %bf.lshr720 = lshr i64 %bf.load719, 32
  %bf.clear721 = and i64 %bf.lshr720, 1
  %bf.cast722 = trunc i64 %bf.clear721 to i1
  br i1 %bf.cast722, label %land.lhs.true.724, label %cond.false.770

land.lhs.true.724:                                ; preds = %if.else.717
  %404 = load i64, i64* %boundary_bot, align 8
  %call725 = call i64 @builtin_lisp_symbol(i32 811)
  %cmp726 = icmp eq i64 %404, %call725
  br i1 %cmp726, label %cond.true.728, label %cond.false.770

cond.true.728:                                    ; preds = %land.lhs.true.724
  %405 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %ends_at_zv_p729 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %405, i32 0, i32 22
  %406 = bitcast i40* %ends_at_zv_p729 to i64*
  %bf.load730 = load i64, i64* %406, align 4
  %bf.lshr731 = lshr i64 %bf.load730, 15
  %bf.clear732 = and i64 %bf.lshr731, 1
  %bf.cast733 = trunc i64 %bf.clear732 to i1
  %conv734 = zext i1 %bf.cast733 to i32
  %add735 = add nsw i32 6, %conv734
  %idxprom736 = sext i32 %add735 to i64
  %arrayidx737 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 %idxprom736
  %407 = load i32, i32* %arrayidx737, align 4
  %cmp738 = icmp sge i32 %407, 0
  br i1 %cmp738, label %cond.true.740, label %cond.false.750

cond.true.740:                                    ; preds = %cond.true.728
  %408 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %ends_at_zv_p741 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %408, i32 0, i32 22
  %409 = bitcast i40* %ends_at_zv_p741 to i64*
  %bf.load742 = load i64, i64* %409, align 4
  %bf.lshr743 = lshr i64 %bf.load742, 15
  %bf.clear744 = and i64 %bf.lshr743, 1
  %bf.cast745 = trunc i64 %bf.clear744 to i1
  %conv746 = zext i1 %bf.cast745 to i32
  %add747 = add nsw i32 6, %conv746
  %idxprom748 = sext i32 %add747 to i64
  %arrayidx749 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 %idxprom748
  %410 = load i32, i32* %arrayidx749, align 4
  br label %cond.end.768

cond.false.750:                                   ; preds = %cond.true.728
  %411 = load %struct.window*, %struct.window** %w.addr, align 8
  %call751 = call i64 @builtin_lisp_symbol(i32 929)
  %412 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %ends_at_zv_p752 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %412, i32 0, i32 22
  %413 = bitcast i40* %ends_at_zv_p752 to i64*
  %bf.load753 = load i64, i64* %413, align 4
  %bf.lshr754 = lshr i64 %bf.load753, 15
  %bf.clear755 = and i64 %bf.lshr754, 1
  %bf.cast756 = trunc i64 %bf.clear755 to i1
  %conv757 = zext i1 %bf.cast756 to i32
  %call758 = call i32 @get_logical_fringe_bitmap(%struct.window* %411, i64 %call751, i32 1, i32 %conv757)
  %414 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %ends_at_zv_p759 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %414, i32 0, i32 22
  %415 = bitcast i40* %ends_at_zv_p759 to i64*
  %bf.load760 = load i64, i64* %415, align 4
  %bf.lshr761 = lshr i64 %bf.load760, 15
  %bf.clear762 = and i64 %bf.lshr761, 1
  %bf.cast763 = trunc i64 %bf.clear762 to i1
  %conv764 = zext i1 %bf.cast763 to i32
  %add765 = add nsw i32 6, %conv764
  %idxprom766 = sext i32 %add765 to i64
  %arrayidx767 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 %idxprom766
  store i32 %call758, i32* %arrayidx767, align 4
  br label %cond.end.768

cond.end.768:                                     ; preds = %cond.false.750, %cond.true.740
  %cond769 = phi i32 [ %410, %cond.true.740 ], [ %call758, %cond.false.750 ]
  br label %cond.end.782

cond.false.770:                                   ; preds = %land.lhs.true.724, %if.else.717
  %arrayidx771 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 10
  %416 = load i32, i32* %arrayidx771, align 4
  %cmp772 = icmp sge i32 %416, 0
  br i1 %cmp772, label %cond.true.774, label %cond.false.776

cond.true.774:                                    ; preds = %cond.false.770
  %arrayidx775 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 10
  %417 = load i32, i32* %arrayidx775, align 4
  br label %cond.end.780

cond.false.776:                                   ; preds = %cond.false.770
  %418 = load %struct.window*, %struct.window** %w.addr, align 8
  %call777 = call i64 @builtin_lisp_symbol(i32 928)
  %call778 = call i32 @get_logical_fringe_bitmap(%struct.window* %418, i64 %call777, i32 1, i32 0)
  %arrayidx779 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 10
  store i32 %call778, i32* %arrayidx779, align 4
  br label %cond.end.780

cond.end.780:                                     ; preds = %cond.false.776, %cond.true.774
  %cond781 = phi i32 [ %417, %cond.true.774 ], [ %call778, %cond.false.776 ]
  br label %cond.end.782

cond.end.782:                                     ; preds = %cond.end.780, %cond.end.768
  %cond783 = phi i32 [ %cond769, %cond.end.768 ], [ %cond781, %cond.end.780 ]
  store i32 %cond783, i32* %bn, align 4
  br label %if.end.784

if.end.784:                                       ; preds = %cond.end.782, %cond.end.715
  br label %if.end.821

if.else.785:                                      ; preds = %if.end.635
  %419 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %indicate_top_line_p786 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %419, i32 0, i32 22
  %420 = bitcast i40* %indicate_top_line_p786 to i64*
  %bf.load787 = load i64, i64* %420, align 4
  %bf.lshr788 = lshr i64 %bf.load787, 31
  %bf.clear789 = and i64 %bf.lshr788, 1
  %bf.cast790 = trunc i64 %bf.clear789 to i1
  br i1 %bf.cast790, label %if.then.791, label %if.end.820

if.then.791:                                      ; preds = %if.else.785
  %421 = load i64, i64* %arrow_top, align 8
  %call792 = call i64 @builtin_lisp_symbol(i32 607)
  %cmp793 = icmp eq i64 %421, %call792
  br i1 %cmp793, label %if.then.795, label %if.else.807

if.then.795:                                      ; preds = %if.then.791
  %arrayidx796 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 24
  %422 = load i32, i32* %arrayidx796, align 4
  %cmp797 = icmp sge i32 %422, 0
  br i1 %cmp797, label %cond.true.799, label %cond.false.801

cond.true.799:                                    ; preds = %if.then.795
  %arrayidx800 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 24
  %423 = load i32, i32* %arrayidx800, align 4
  br label %cond.end.805

cond.false.801:                                   ; preds = %if.then.795
  %424 = load %struct.window*, %struct.window** %w.addr, align 8
  %call802 = call i64 @builtin_lisp_symbol(i32 977)
  %call803 = call i32 @get_logical_fringe_bitmap(%struct.window* %424, i64 %call802, i32 0, i32 0)
  %arrayidx804 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 24
  store i32 %call803, i32* %arrayidx804, align 4
  br label %cond.end.805

cond.end.805:                                     ; preds = %cond.false.801, %cond.true.799
  %cond806 = phi i32 [ %423, %cond.true.799 ], [ %call803, %cond.false.801 ]
  store i32 %cond806, i32* %bn, align 4
  br label %if.end.819

if.else.807:                                      ; preds = %if.then.791
  %arrayidx808 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 26
  %425 = load i32, i32* %arrayidx808, align 4
  %cmp809 = icmp sge i32 %425, 0
  br i1 %cmp809, label %cond.true.811, label %cond.false.813

cond.true.811:                                    ; preds = %if.else.807
  %arrayidx812 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 26
  %426 = load i32, i32* %arrayidx812, align 4
  br label %cond.end.817

cond.false.813:                                   ; preds = %if.else.807
  %427 = load %struct.window*, %struct.window** %w.addr, align 8
  %call814 = call i64 @builtin_lisp_symbol(i32 977)
  %call815 = call i32 @get_logical_fringe_bitmap(%struct.window* %427, i64 %call814, i32 1, i32 0)
  %arrayidx816 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 26
  store i32 %call815, i32* %arrayidx816, align 4
  br label %cond.end.817

cond.end.817:                                     ; preds = %cond.false.813, %cond.true.811
  %cond818 = phi i32 [ %426, %cond.true.811 ], [ %call815, %cond.false.813 ]
  store i32 %cond818, i32* %bn, align 4
  br label %if.end.819

if.end.819:                                       ; preds = %cond.end.817, %cond.end.805
  br label %if.end.820

if.end.820:                                       ; preds = %if.end.819, %if.else.785
  br label %if.end.821

if.end.821:                                       ; preds = %if.end.820, %if.end.784
  %428 = load i32, i32* %bn, align 4
  %cmp822 = icmp ne i32 %428, 0
  br i1 %cmp822, label %if.then.824, label %if.end.1039

if.then.824:                                      ; preds = %if.end.821
  %429 = load i32, i32* %bn, align 4
  %call825 = call %struct.fringe_bitmap* @get_fringe_bitmap_data(i32 %429)
  store %struct.fringe_bitmap* %call825, %struct.fringe_bitmap** %fb, align 8
  %430 = load %struct.fringe_bitmap*, %struct.fringe_bitmap** %fb, align 8
  %align = getelementptr inbounds %struct.fringe_bitmap, %struct.fringe_bitmap* %430, i32 0, i32 1
  %bf.load826 = load i32, i32* %align, align 8
  %bf.lshr827 = lshr i32 %bf.load826, 24
  %bf.clear828 = and i32 %bf.lshr827, 3
  %cmp829 = icmp eq i32 %bf.clear828, 1
  br i1 %cmp829, label %land.lhs.true.831, label %if.end.1038

land.lhs.true.831:                                ; preds = %if.then.824
  %431 = load %struct.fringe_bitmap*, %struct.fringe_bitmap** %fb, align 8
  %period = getelementptr inbounds %struct.fringe_bitmap, %struct.fringe_bitmap* %431, i32 0, i32 1
  %bf.load832 = load i32, i32* %period, align 8
  %bf.lshr833 = lshr i32 %bf.load832, 16
  %bf.clear834 = and i32 %bf.lshr833, 255
  %cmp835 = icmp eq i32 %bf.clear834, 0
  br i1 %cmp835, label %if.then.837, label %if.end.1038

if.then.837:                                      ; preds = %land.lhs.true.831
  %432 = load %struct.window*, %struct.window** %w.addr, align 8
  %contents838 = getelementptr inbounds %struct.window, %struct.window* %432, i32 0, i32 10
  %433 = load i64, i64* %contents838, align 8
  %call839 = call zeroext i1 @BUFFERP(i64 %433)
  br i1 %call839, label %cond.true.841, label %cond.false.921

cond.true.841:                                    ; preds = %if.then.837
  %434 = load %struct.window*, %struct.window** %w.addr, align 8
  %mini842 = getelementptr inbounds %struct.window, %struct.window* %434, i32 0, i32 67
  %bf.load843 = load i16, i16* %mini842, align 4
  %bf.clear844 = and i16 %bf.load843, 1
  %bf.cast845 = trunc i16 %bf.clear844 to i1
  br i1 %bf.cast845, label %cond.false.964, label %land.lhs.true.846

land.lhs.true.846:                                ; preds = %cond.true.841
  %435 = load %struct.window*, %struct.window** %w.addr, align 8
  %pseudo_window_p847 = getelementptr inbounds %struct.window, %struct.window* %435, i32 0, i32 67
  %bf.load848 = load i16, i16* %pseudo_window_p847, align 4
  %bf.lshr849 = lshr i16 %bf.load848, 11
  %bf.clear850 = and i16 %bf.lshr849, 1
  %bf.cast851 = trunc i16 %bf.clear850 to i1
  br i1 %bf.cast851, label %cond.false.964, label %land.lhs.true.852

land.lhs.true.852:                                ; preds = %land.lhs.true.846
  %436 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame853 = getelementptr inbounds %struct.window, %struct.window* %436, i32 0, i32 1
  %437 = load i64, i64* %frame853, align 8
  %sub854 = sub nsw i64 %437, 5
  %438 = inttoptr i64 %sub854 to i8*
  %439 = bitcast i8* %438 to %struct.frame*
  %wants_modeline855 = getelementptr inbounds %struct.frame, %struct.frame* %439, i32 0, i32 26
  %440 = bitcast i48* %wants_modeline855 to i64*
  %bf.load856 = load i64, i64* %440, align 8
  %bf.lshr857 = lshr i64 %bf.load856, 14
  %bf.clear858 = and i64 %bf.lshr857, 1
  %bf.cast859 = trunc i64 %bf.clear858 to i1
  br i1 %bf.cast859, label %land.lhs.true.861, label %cond.false.964

land.lhs.true.861:                                ; preds = %land.lhs.true.852
  %441 = load %struct.window*, %struct.window** %w.addr, align 8
  %contents862 = getelementptr inbounds %struct.window, %struct.window* %441, i32 0, i32 10
  %442 = load i64, i64* %contents862, align 8
  %call863 = call %struct.buffer* @XBUFFER(i64 %442)
  %header_line_format_864 = getelementptr inbounds %struct.buffer, %struct.buffer* %call863, i32 0, i32 13
  %443 = load i64, i64* %header_line_format_864, align 8
  %call865 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp866 = icmp eq i64 %443, %call865
  br i1 %cmp866, label %cond.false.964, label %land.lhs.true.868

land.lhs.true.868:                                ; preds = %land.lhs.true.861
  %444 = load %struct.window*, %struct.window** %w.addr, align 8
  %pixel_height869 = getelementptr inbounds %struct.window, %struct.window* %444, i32 0, i32 35
  %445 = load i32, i32* %pixel_height869, align 4
  %446 = load %struct.window*, %struct.window** %w.addr, align 8
  %contents870 = getelementptr inbounds %struct.window, %struct.window* %446, i32 0, i32 10
  %447 = load i64, i64* %contents870, align 8
  %call871 = call zeroext i1 @BUFFERP(i64 %447)
  br i1 %call871, label %cond.true.873, label %cond.false.907

cond.true.873:                                    ; preds = %land.lhs.true.868
  %448 = load %struct.window*, %struct.window** %w.addr, align 8
  %mini874 = getelementptr inbounds %struct.window, %struct.window* %448, i32 0, i32 67
  %bf.load875 = load i16, i16* %mini874, align 4
  %bf.clear876 = and i16 %bf.load875, 1
  %bf.cast877 = trunc i16 %bf.clear876 to i1
  br i1 %bf.cast877, label %cond.false.913, label %land.lhs.true.878

land.lhs.true.878:                                ; preds = %cond.true.873
  %449 = load %struct.window*, %struct.window** %w.addr, align 8
  %pseudo_window_p879 = getelementptr inbounds %struct.window, %struct.window* %449, i32 0, i32 67
  %bf.load880 = load i16, i16* %pseudo_window_p879, align 4
  %bf.lshr881 = lshr i16 %bf.load880, 11
  %bf.clear882 = and i16 %bf.lshr881, 1
  %bf.cast883 = trunc i16 %bf.clear882 to i1
  br i1 %bf.cast883, label %cond.false.913, label %land.lhs.true.884

land.lhs.true.884:                                ; preds = %land.lhs.true.878
  %450 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame885 = getelementptr inbounds %struct.window, %struct.window* %450, i32 0, i32 1
  %451 = load i64, i64* %frame885, align 8
  %sub886 = sub nsw i64 %451, 5
  %452 = inttoptr i64 %sub886 to i8*
  %453 = bitcast i8* %452 to %struct.frame*
  %wants_modeline887 = getelementptr inbounds %struct.frame, %struct.frame* %453, i32 0, i32 26
  %454 = bitcast i48* %wants_modeline887 to i64*
  %bf.load888 = load i64, i64* %454, align 8
  %bf.lshr889 = lshr i64 %bf.load888, 14
  %bf.clear890 = and i64 %bf.lshr889, 1
  %bf.cast891 = trunc i64 %bf.clear890 to i1
  br i1 %bf.cast891, label %land.lhs.true.893, label %cond.false.913

land.lhs.true.893:                                ; preds = %land.lhs.true.884
  %455 = load %struct.window*, %struct.window** %w.addr, align 8
  %contents894 = getelementptr inbounds %struct.window, %struct.window* %455, i32 0, i32 10
  %456 = load i64, i64* %contents894, align 8
  %call895 = call %struct.buffer* @XBUFFER(i64 %456)
  %mode_line_format_896 = getelementptr inbounds %struct.buffer, %struct.buffer* %call895, i32 0, i32 12
  %457 = load i64, i64* %mode_line_format_896, align 8
  %call897 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp898 = icmp eq i64 %457, %call897
  br i1 %cmp898, label %cond.false.913, label %land.lhs.true.900

land.lhs.true.900:                                ; preds = %land.lhs.true.893
  %458 = load %struct.window*, %struct.window** %w.addr, align 8
  %pixel_height901 = getelementptr inbounds %struct.window, %struct.window* %458, i32 0, i32 35
  %459 = load i32, i32* %pixel_height901, align 4
  %460 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame902 = getelementptr inbounds %struct.window, %struct.window* %460, i32 0, i32 1
  %461 = load i64, i64* %frame902, align 8
  %sub903 = sub nsw i64 %461, 5
  %462 = inttoptr i64 %sub903 to i8*
  %463 = bitcast i8* %462 to %struct.frame*
  %line_height904 = getelementptr inbounds %struct.frame, %struct.frame* %463, i32 0, i32 60
  %464 = load i32, i32* %line_height904, align 4
  %cmp905 = icmp sgt i32 %459, %464
  br i1 %cmp905, label %cond.true.908, label %cond.false.913

cond.false.907:                                   ; preds = %land.lhs.true.868
  br i1 false, label %cond.true.908, label %cond.false.913

cond.true.908:                                    ; preds = %cond.false.907, %land.lhs.true.900
  %465 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame909 = getelementptr inbounds %struct.window, %struct.window* %465, i32 0, i32 1
  %466 = load i64, i64* %frame909, align 8
  %sub910 = sub nsw i64 %466, 5
  %467 = inttoptr i64 %sub910 to i8*
  %468 = bitcast i8* %467 to %struct.frame*
  %line_height911 = getelementptr inbounds %struct.frame, %struct.frame* %468, i32 0, i32 60
  %469 = load i32, i32* %line_height911, align 4
  %mul912 = mul nsw i32 2, %469
  br label %cond.end.917

cond.false.913:                                   ; preds = %cond.false.907, %land.lhs.true.900, %land.lhs.true.893, %land.lhs.true.884, %land.lhs.true.878, %cond.true.873
  %470 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame914 = getelementptr inbounds %struct.window, %struct.window* %470, i32 0, i32 1
  %471 = load i64, i64* %frame914, align 8
  %sub915 = sub nsw i64 %471, 5
  %472 = inttoptr i64 %sub915 to i8*
  %473 = bitcast i8* %472 to %struct.frame*
  %line_height916 = getelementptr inbounds %struct.frame, %struct.frame* %473, i32 0, i32 60
  %474 = load i32, i32* %line_height916, align 4
  br label %cond.end.917

cond.end.917:                                     ; preds = %cond.false.913, %cond.true.908
  %cond918 = phi i32 [ %mul912, %cond.true.908 ], [ %474, %cond.false.913 ]
  %cmp919 = icmp sgt i32 %445, %cond918
  br i1 %cmp919, label %cond.true.922, label %cond.false.964

cond.false.921:                                   ; preds = %if.then.837
  br i1 false, label %cond.true.922, label %cond.false.964

cond.true.922:                                    ; preds = %cond.false.921, %cond.end.917
  %475 = load %struct.window*, %struct.window** %w.addr, align 8
  %header_line_height923 = getelementptr inbounds %struct.window, %struct.window* %475, i32 0, i32 64
  %476 = load i32, i32* %header_line_height923, align 4
  %cmp924 = icmp sge i32 %476, 0
  br i1 %cmp924, label %cond.true.926, label %cond.false.928

cond.true.926:                                    ; preds = %cond.true.922
  %477 = load %struct.window*, %struct.window** %w.addr, align 8
  %header_line_height927 = getelementptr inbounds %struct.window, %struct.window* %477, i32 0, i32 64
  %478 = load i32, i32* %header_line_height927, align 4
  br label %cond.end.962

cond.false.928:                                   ; preds = %cond.true.922
  %479 = load %struct.window*, %struct.window** %w.addr, align 8
  %current_matrix929 = getelementptr inbounds %struct.window, %struct.window* %479, i32 0, i32 24
  %480 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix929, align 8
  %tobool930 = icmp ne %struct.glyph_matrix* %480, null
  br i1 %tobool930, label %land.lhs.true.931, label %cond.false.940

land.lhs.true.931:                                ; preds = %cond.false.928
  %481 = load %struct.window*, %struct.window** %w.addr, align 8
  %current_matrix932 = getelementptr inbounds %struct.window, %struct.window* %481, i32 0, i32 24
  %482 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix932, align 8
  %rows933 = getelementptr inbounds %struct.glyph_matrix, %struct.glyph_matrix* %482, i32 0, i32 1
  %483 = load %struct.glyph_row*, %struct.glyph_row** %rows933, align 8
  %tobool934 = icmp ne %struct.glyph_row* %483, null
  br i1 %tobool934, label %cond.true.935, label %cond.false.940

cond.true.935:                                    ; preds = %land.lhs.true.931
  %484 = load %struct.window*, %struct.window** %w.addr, align 8
  %current_matrix936 = getelementptr inbounds %struct.window, %struct.window* %484, i32 0, i32 24
  %485 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix936, align 8
  %rows937 = getelementptr inbounds %struct.glyph_matrix, %struct.glyph_matrix* %485, i32 0, i32 1
  %486 = load %struct.glyph_row*, %struct.glyph_row** %rows937, align 8
  %height938 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %486, i32 0, i32 7
  %487 = load i32, i32* %height938, align 4
  %tobool939 = icmp ne i32 %487, 0
  br i1 %tobool939, label %cond.true.941, label %cond.false.955

cond.false.940:                                   ; preds = %land.lhs.true.931, %cond.false.928
  br i1 false, label %cond.true.941, label %cond.false.955

cond.true.941:                                    ; preds = %cond.false.940, %cond.true.935
  %488 = load %struct.window*, %struct.window** %w.addr, align 8
  %current_matrix942 = getelementptr inbounds %struct.window, %struct.window* %488, i32 0, i32 24
  %489 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix942, align 8
  %tobool943 = icmp ne %struct.glyph_matrix* %489, null
  br i1 %tobool943, label %land.lhs.true.944, label %cond.false.952

land.lhs.true.944:                                ; preds = %cond.true.941
  %490 = load %struct.window*, %struct.window** %w.addr, align 8
  %current_matrix945 = getelementptr inbounds %struct.window, %struct.window* %490, i32 0, i32 24
  %491 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix945, align 8
  %rows946 = getelementptr inbounds %struct.glyph_matrix, %struct.glyph_matrix* %491, i32 0, i32 1
  %492 = load %struct.glyph_row*, %struct.glyph_row** %rows946, align 8
  %tobool947 = icmp ne %struct.glyph_row* %492, null
  br i1 %tobool947, label %cond.true.948, label %cond.false.952

cond.true.948:                                    ; preds = %land.lhs.true.944
  %493 = load %struct.window*, %struct.window** %w.addr, align 8
  %current_matrix949 = getelementptr inbounds %struct.window, %struct.window* %493, i32 0, i32 24
  %494 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix949, align 8
  %rows950 = getelementptr inbounds %struct.glyph_matrix, %struct.glyph_matrix* %494, i32 0, i32 1
  %495 = load %struct.glyph_row*, %struct.glyph_row** %rows950, align 8
  %height951 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %495, i32 0, i32 7
  %496 = load i32, i32* %height951, align 4
  br label %cond.end.953

cond.false.952:                                   ; preds = %land.lhs.true.944, %cond.true.941
  br label %cond.end.953

cond.end.953:                                     ; preds = %cond.false.952, %cond.true.948
  %cond954 = phi i32 [ %496, %cond.true.948 ], [ 0, %cond.false.952 ]
  br label %cond.end.959

cond.false.955:                                   ; preds = %cond.false.940, %cond.true.935
  %497 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame956 = getelementptr inbounds %struct.window, %struct.window* %497, i32 0, i32 1
  %498 = load i64, i64* %frame956, align 8
  %sub957 = sub nsw i64 %498, 5
  %499 = inttoptr i64 %sub957 to i8*
  %500 = bitcast i8* %499 to %struct.frame*
  %call958 = call i32 @estimate_mode_line_height(%struct.frame* %500, i32 5)
  br label %cond.end.959

cond.end.959:                                     ; preds = %cond.false.955, %cond.end.953
  %cond960 = phi i32 [ %cond954, %cond.end.953 ], [ %call958, %cond.false.955 ]
  %501 = load %struct.window*, %struct.window** %w.addr, align 8
  %header_line_height961 = getelementptr inbounds %struct.window, %struct.window* %501, i32 0, i32 64
  store i32 %cond960, i32* %header_line_height961, align 4
  br label %cond.end.962

cond.end.962:                                     ; preds = %cond.end.959, %cond.true.926
  %cond963 = phi i32 [ %478, %cond.true.926 ], [ %cond960, %cond.end.959 ]
  br label %cond.end.965

cond.false.964:                                   ; preds = %cond.false.921, %cond.end.917, %land.lhs.true.861, %land.lhs.true.852, %land.lhs.true.846, %cond.true.841
  br label %cond.end.965

cond.end.965:                                     ; preds = %cond.false.964, %cond.end.962
  %cond966 = phi i32 [ %cond963, %cond.end.962 ], [ 0, %cond.false.964 ]
  store i32 %cond966, i32* %top_ind_min_y, align 4
  %502 = load i32, i32* %top_ind_min_y, align 4
  %503 = load %struct.fringe_bitmap*, %struct.fringe_bitmap** %fb, align 8
  %height967 = getelementptr inbounds %struct.fringe_bitmap, %struct.fringe_bitmap* %503, i32 0, i32 1
  %bf.load968 = load i32, i32* %height967, align 8
  %bf.clear969 = and i32 %bf.load968, 255
  %add970 = add nsw i32 %502, %bf.clear969
  store i32 %add970, i32* %top_ind_max_y, align 4
  %504 = load i32, i32* %top_ind_max_y, align 4
  %505 = load i32, i32* %yb, align 4
  %cmp971 = icmp sgt i32 %504, %505
  br i1 %cmp971, label %if.then.973, label %if.end.974

if.then.973:                                      ; preds = %cond.end.965
  %506 = load i32, i32* %yb, align 4
  store i32 %506, i32* %top_ind_max_y, align 4
  br label %if.end.974

if.end.974:                                       ; preds = %if.then.973, %cond.end.965
  %507 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %y975 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %507, i32 0, i32 4
  %508 = load i32, i32* %y975, align 4
  %509 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %height976 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %509, i32 0, i32 7
  %510 = load i32, i32* %height976, align 4
  %add977 = add nsw i32 %508, %510
  store i32 %add977, i32* %y, align 4
  %511 = load i32, i32* %top_ind_rn, align 4
  %add978 = add nsw i32 %511, 1
  store i32 %add978, i32* %rn, align 4
  br label %for.cond.979

for.cond.979:                                     ; preds = %for.inc.1033, %if.end.974
  %512 = load i32, i32* %y, align 4
  %513 = load i32, i32* %top_ind_max_y, align 4
  %cmp980 = icmp slt i32 %512, %513
  br i1 %cmp980, label %land.rhs.982, label %land.end.985

land.rhs.982:                                     ; preds = %for.cond.979
  %514 = load i32, i32* %rn, align 4
  %515 = load i32, i32* %nrows, align 4
  %cmp983 = icmp slt i32 %514, %515
  br label %land.end.985

land.end.985:                                     ; preds = %land.rhs.982, %for.cond.979
  %516 = phi i1 [ false, %for.cond.979 ], [ %cmp983, %land.rhs.982 ]
  br i1 %516, label %for.body.986, label %for.end.1037

for.body.986:                                     ; preds = %land.end.985
  %517 = load i32, i32* %bot_ind_rn, align 4
  %cmp987 = icmp sge i32 %517, 0
  br i1 %cmp987, label %land.lhs.true.989, label %if.end.993

land.lhs.true.989:                                ; preds = %for.body.986
  %518 = load i32, i32* %rn, align 4
  %519 = load i32, i32* %bot_ind_rn, align 4
  %cmp990 = icmp sge i32 %518, %519
  br i1 %cmp990, label %if.then.992, label %if.end.993

if.then.992:                                      ; preds = %land.lhs.true.989
  br label %for.end.1037

if.end.993:                                       ; preds = %land.lhs.true.989, %for.body.986
  %520 = load %struct.window*, %struct.window** %w.addr, align 8
  %desired_matrix994 = getelementptr inbounds %struct.window, %struct.window* %520, i32 0, i32 25
  %521 = load %struct.glyph_matrix*, %struct.glyph_matrix** %desired_matrix994, align 8
  %rows995 = getelementptr inbounds %struct.glyph_matrix, %struct.glyph_matrix* %521, i32 0, i32 1
  %522 = load %struct.glyph_row*, %struct.glyph_row** %rows995, align 8
  %523 = load i32, i32* %rn, align 4
  %idx.ext996 = sext i32 %523 to i64
  %add.ptr997 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %522, i64 %idx.ext996
  store %struct.glyph_row* %add.ptr997, %struct.glyph_row** %row1, align 8
  %524 = load %struct.glyph_row*, %struct.glyph_row** %row1, align 8
  %enabled_p998 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %524, i32 0, i32 22
  %525 = bitcast i40* %enabled_p998 to i64*
  %bf.load999 = load i64, i64* %525, align 4
  %bf.lshr1000 = lshr i64 %bf.load999, 10
  %bf.clear1001 = and i64 %bf.lshr1000, 1
  %bf.cast1002 = trunc i64 %bf.clear1001 to i1
  br i1 %bf.cast1002, label %if.end.1008, label %if.then.1003

if.then.1003:                                     ; preds = %if.end.993
  %526 = load %struct.window*, %struct.window** %w.addr, align 8
  %current_matrix1004 = getelementptr inbounds %struct.window, %struct.window* %526, i32 0, i32 24
  %527 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix1004, align 8
  %rows1005 = getelementptr inbounds %struct.glyph_matrix, %struct.glyph_matrix* %527, i32 0, i32 1
  %528 = load %struct.glyph_row*, %struct.glyph_row** %rows1005, align 8
  %529 = load i32, i32* %rn, align 4
  %idx.ext1006 = sext i32 %529 to i64
  %add.ptr1007 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %528, i64 %idx.ext1006
  store %struct.glyph_row* %add.ptr1007, %struct.glyph_row** %row1, align 8
  br label %if.end.1008

if.end.1008:                                      ; preds = %if.then.1003, %if.end.993
  %530 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %indicate_bob_p1009 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %530, i32 0, i32 22
  %531 = bitcast i40* %indicate_bob_p1009 to i64*
  %bf.load1010 = load i64, i64* %531, align 4
  %bf.lshr1011 = lshr i64 %bf.load1010, 30
  %bf.clear1012 = and i64 %bf.lshr1011, 1
  %bf.cast1013 = trunc i64 %bf.clear1012 to i1
  %532 = load %struct.glyph_row*, %struct.glyph_row** %row1, align 8
  %indicate_bob_p1014 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %532, i32 0, i32 22
  %533 = bitcast i40* %indicate_bob_p1014 to i64*
  %534 = zext i1 %bf.cast1013 to i64
  %bf.load1015 = load i64, i64* %533, align 4
  %bf.shl1016 = shl i64 %534, 30
  %bf.clear1017 = and i64 %bf.load1015, -1073741825
  %bf.set1018 = or i64 %bf.clear1017, %bf.shl1016
  store i64 %bf.set1018, i64* %533, align 4
  %bf.result.cast1019 = trunc i64 %534 to i8
  %tobool1020 = trunc i8 %bf.result.cast1019 to i1
  %535 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %indicate_top_line_p1021 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %535, i32 0, i32 22
  %536 = bitcast i40* %indicate_top_line_p1021 to i64*
  %bf.load1022 = load i64, i64* %536, align 4
  %bf.lshr1023 = lshr i64 %bf.load1022, 31
  %bf.clear1024 = and i64 %bf.lshr1023, 1
  %bf.cast1025 = trunc i64 %bf.clear1024 to i1
  %537 = load %struct.glyph_row*, %struct.glyph_row** %row1, align 8
  %indicate_top_line_p1026 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %537, i32 0, i32 22
  %538 = bitcast i40* %indicate_top_line_p1026 to i64*
  %539 = zext i1 %bf.cast1025 to i64
  %bf.load1027 = load i64, i64* %538, align 4
  %bf.shl1028 = shl i64 %539, 31
  %bf.clear1029 = and i64 %bf.load1027, -2147483649
  %bf.set1030 = or i64 %bf.clear1029, %bf.shl1028
  store i64 %bf.set1030, i64* %538, align 4
  %bf.result.cast1031 = trunc i64 %539 to i8
  %tobool1032 = trunc i8 %bf.result.cast1031 to i1
  br label %for.inc.1033

for.inc.1033:                                     ; preds = %if.end.1008
  %540 = load %struct.glyph_row*, %struct.glyph_row** %row1, align 8
  %height1034 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %540, i32 0, i32 7
  %541 = load i32, i32* %height1034, align 4
  %542 = load i32, i32* %y, align 4
  %add1035 = add nsw i32 %542, %541
  store i32 %add1035, i32* %y, align 4
  %543 = load i32, i32* %rn, align 4
  %inc1036 = add nsw i32 %543, 1
  store i32 %inc1036, i32* %rn, align 4
  br label %for.cond.979

for.end.1037:                                     ; preds = %if.then.992, %land.end.985
  br label %if.end.1038

if.end.1038:                                      ; preds = %for.end.1037, %land.lhs.true.831, %if.then.824
  br label %if.end.1039

if.end.1039:                                      ; preds = %if.end.1038, %if.end.821
  br label %if.end.1040

if.end.1040:                                      ; preds = %if.end.1039, %for.end.617
  %544 = load i32, i32* %bot_ind_rn, align 4
  %cmp1041 = icmp sge i32 %544, 0
  br i1 %cmp1041, label %if.then.1043, label %if.end.1548

if.then.1043:                                     ; preds = %if.end.1040
  store i32 0, i32* %bn1044, align 4
  %545 = load %struct.window*, %struct.window** %w.addr, align 8
  %desired_matrix1045 = getelementptr inbounds %struct.window, %struct.window* %545, i32 0, i32 25
  %546 = load %struct.glyph_matrix*, %struct.glyph_matrix** %desired_matrix1045, align 8
  %rows1046 = getelementptr inbounds %struct.glyph_matrix, %struct.glyph_matrix* %546, i32 0, i32 1
  %547 = load %struct.glyph_row*, %struct.glyph_row** %rows1046, align 8
  %548 = load i32, i32* %bot_ind_rn, align 4
  %idx.ext1047 = sext i32 %548 to i64
  %add.ptr1048 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %547, i64 %idx.ext1047
  store %struct.glyph_row* %add.ptr1048, %struct.glyph_row** %row, align 8
  %549 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %enabled_p1049 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %549, i32 0, i32 22
  %550 = bitcast i40* %enabled_p1049 to i64*
  %bf.load1050 = load i64, i64* %550, align 4
  %bf.lshr1051 = lshr i64 %bf.load1050, 10
  %bf.clear1052 = and i64 %bf.lshr1051, 1
  %bf.cast1053 = trunc i64 %bf.clear1052 to i1
  br i1 %bf.cast1053, label %if.end.1059, label %if.then.1054

if.then.1054:                                     ; preds = %if.then.1043
  %551 = load %struct.window*, %struct.window** %w.addr, align 8
  %current_matrix1055 = getelementptr inbounds %struct.window, %struct.window* %551, i32 0, i32 24
  %552 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix1055, align 8
  %rows1056 = getelementptr inbounds %struct.glyph_matrix, %struct.glyph_matrix* %552, i32 0, i32 1
  %553 = load %struct.glyph_row*, %struct.glyph_row** %rows1056, align 8
  %554 = load i32, i32* %bot_ind_rn, align 4
  %idx.ext1057 = sext i32 %554 to i64
  %add.ptr1058 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %553, i64 %idx.ext1057
  store %struct.glyph_row* %add.ptr1058, %struct.glyph_row** %row, align 8
  br label %if.end.1059

if.end.1059:                                      ; preds = %if.then.1054, %if.then.1043
  %555 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %ends_at_zv_p1060 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %555, i32 0, i32 22
  %556 = bitcast i40* %ends_at_zv_p1060 to i64*
  %bf.load1061 = load i64, i64* %556, align 4
  %bf.lshr1062 = lshr i64 %bf.load1061, 15
  %bf.clear1063 = and i64 %bf.lshr1062, 1
  %bf.cast1064 = trunc i64 %bf.clear1063 to i1
  %conv1065 = zext i1 %bf.cast1064 to i32
  store i32 %conv1065, i32* %bot_row_ends_at_zv_p, align 4
  %557 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %indicate_eob_p1066 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %557, i32 0, i32 22
  %558 = bitcast i40* %indicate_eob_p1066 to i64*
  %bf.load1067 = load i64, i64* %558, align 4
  %bf.lshr1068 = lshr i64 %bf.load1067, 32
  %bf.clear1069 = and i64 %bf.lshr1068, 1
  %bf.cast1070 = trunc i64 %bf.clear1069 to i1
  br i1 %bf.cast1070, label %if.then.1071, label %if.else.1160

if.then.1071:                                     ; preds = %if.end.1059
  %559 = load i64, i64* %boundary_bot, align 8
  %call1072 = call i64 @builtin_lisp_symbol(i32 607)
  %cmp1073 = icmp eq i64 %559, %call1072
  br i1 %cmp1073, label %if.then.1075, label %if.else.1117

if.then.1075:                                     ; preds = %if.then.1071
  %560 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %ends_at_zv_p1076 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %560, i32 0, i32 22
  %561 = bitcast i40* %ends_at_zv_p1076 to i64*
  %bf.load1077 = load i64, i64* %561, align 4
  %bf.lshr1078 = lshr i64 %bf.load1077, 15
  %bf.clear1079 = and i64 %bf.lshr1078, 1
  %bf.cast1080 = trunc i64 %bf.clear1079 to i1
  %conv1081 = zext i1 %bf.cast1080 to i32
  %add1082 = add nsw i32 12, %conv1081
  %idxprom1083 = sext i32 %add1082 to i64
  %arrayidx1084 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 %idxprom1083
  %562 = load i32, i32* %arrayidx1084, align 4
  %cmp1085 = icmp sge i32 %562, 0
  br i1 %cmp1085, label %cond.true.1087, label %cond.false.1097

cond.true.1087:                                   ; preds = %if.then.1075
  %563 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %ends_at_zv_p1088 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %563, i32 0, i32 22
  %564 = bitcast i40* %ends_at_zv_p1088 to i64*
  %bf.load1089 = load i64, i64* %564, align 4
  %bf.lshr1090 = lshr i64 %bf.load1089, 15
  %bf.clear1091 = and i64 %bf.lshr1090, 1
  %bf.cast1092 = trunc i64 %bf.clear1091 to i1
  %conv1093 = zext i1 %bf.cast1092 to i32
  %add1094 = add nsw i32 12, %conv1093
  %idxprom1095 = sext i32 %add1094 to i64
  %arrayidx1096 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 %idxprom1095
  %565 = load i32, i32* %arrayidx1096, align 4
  br label %cond.end.1115

cond.false.1097:                                  ; preds = %if.then.1075
  %566 = load %struct.window*, %struct.window** %w.addr, align 8
  %call1098 = call i64 @builtin_lisp_symbol(i32 213)
  %567 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %ends_at_zv_p1099 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %567, i32 0, i32 22
  %568 = bitcast i40* %ends_at_zv_p1099 to i64*
  %bf.load1100 = load i64, i64* %568, align 4
  %bf.lshr1101 = lshr i64 %bf.load1100, 15
  %bf.clear1102 = and i64 %bf.lshr1101, 1
  %bf.cast1103 = trunc i64 %bf.clear1102 to i1
  %conv1104 = zext i1 %bf.cast1103 to i32
  %call1105 = call i32 @get_logical_fringe_bitmap(%struct.window* %566, i64 %call1098, i32 0, i32 %conv1104)
  %569 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %ends_at_zv_p1106 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %569, i32 0, i32 22
  %570 = bitcast i40* %ends_at_zv_p1106 to i64*
  %bf.load1107 = load i64, i64* %570, align 4
  %bf.lshr1108 = lshr i64 %bf.load1107, 15
  %bf.clear1109 = and i64 %bf.lshr1108, 1
  %bf.cast1110 = trunc i64 %bf.clear1109 to i1
  %conv1111 = zext i1 %bf.cast1110 to i32
  %add1112 = add nsw i32 12, %conv1111
  %idxprom1113 = sext i32 %add1112 to i64
  %arrayidx1114 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 %idxprom1113
  store i32 %call1105, i32* %arrayidx1114, align 4
  br label %cond.end.1115

cond.end.1115:                                    ; preds = %cond.false.1097, %cond.true.1087
  %cond1116 = phi i32 [ %565, %cond.true.1087 ], [ %call1105, %cond.false.1097 ]
  store i32 %cond1116, i32* %bn1044, align 4
  br label %if.end.1159

if.else.1117:                                     ; preds = %if.then.1071
  %571 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %ends_at_zv_p1118 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %571, i32 0, i32 22
  %572 = bitcast i40* %ends_at_zv_p1118 to i64*
  %bf.load1119 = load i64, i64* %572, align 4
  %bf.lshr1120 = lshr i64 %bf.load1119, 15
  %bf.clear1121 = and i64 %bf.lshr1120, 1
  %bf.cast1122 = trunc i64 %bf.clear1121 to i1
  %conv1123 = zext i1 %bf.cast1122 to i32
  %add1124 = add nsw i32 14, %conv1123
  %idxprom1125 = sext i32 %add1124 to i64
  %arrayidx1126 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 %idxprom1125
  %573 = load i32, i32* %arrayidx1126, align 4
  %cmp1127 = icmp sge i32 %573, 0
  br i1 %cmp1127, label %cond.true.1129, label %cond.false.1139

cond.true.1129:                                   ; preds = %if.else.1117
  %574 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %ends_at_zv_p1130 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %574, i32 0, i32 22
  %575 = bitcast i40* %ends_at_zv_p1130 to i64*
  %bf.load1131 = load i64, i64* %575, align 4
  %bf.lshr1132 = lshr i64 %bf.load1131, 15
  %bf.clear1133 = and i64 %bf.lshr1132, 1
  %bf.cast1134 = trunc i64 %bf.clear1133 to i1
  %conv1135 = zext i1 %bf.cast1134 to i32
  %add1136 = add nsw i32 14, %conv1135
  %idxprom1137 = sext i32 %add1136 to i64
  %arrayidx1138 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 %idxprom1137
  %576 = load i32, i32* %arrayidx1138, align 4
  br label %cond.end.1157

cond.false.1139:                                  ; preds = %if.else.1117
  %577 = load %struct.window*, %struct.window** %w.addr, align 8
  %call1140 = call i64 @builtin_lisp_symbol(i32 213)
  %578 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %ends_at_zv_p1141 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %578, i32 0, i32 22
  %579 = bitcast i40* %ends_at_zv_p1141 to i64*
  %bf.load1142 = load i64, i64* %579, align 4
  %bf.lshr1143 = lshr i64 %bf.load1142, 15
  %bf.clear1144 = and i64 %bf.lshr1143, 1
  %bf.cast1145 = trunc i64 %bf.clear1144 to i1
  %conv1146 = zext i1 %bf.cast1145 to i32
  %call1147 = call i32 @get_logical_fringe_bitmap(%struct.window* %577, i64 %call1140, i32 1, i32 %conv1146)
  %580 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %ends_at_zv_p1148 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %580, i32 0, i32 22
  %581 = bitcast i40* %ends_at_zv_p1148 to i64*
  %bf.load1149 = load i64, i64* %581, align 4
  %bf.lshr1150 = lshr i64 %bf.load1149, 15
  %bf.clear1151 = and i64 %bf.lshr1150, 1
  %bf.cast1152 = trunc i64 %bf.clear1151 to i1
  %conv1153 = zext i1 %bf.cast1152 to i32
  %add1154 = add nsw i32 14, %conv1153
  %idxprom1155 = sext i32 %add1154 to i64
  %arrayidx1156 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 %idxprom1155
  store i32 %call1147, i32* %arrayidx1156, align 4
  br label %cond.end.1157

cond.end.1157:                                    ; preds = %cond.false.1139, %cond.true.1129
  %cond1158 = phi i32 [ %576, %cond.true.1129 ], [ %call1147, %cond.false.1139 ]
  store i32 %cond1158, i32* %bn1044, align 4
  br label %if.end.1159

if.end.1159:                                      ; preds = %cond.end.1157, %cond.end.1115
  br label %if.end.1196

if.else.1160:                                     ; preds = %if.end.1059
  %582 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %indicate_bottom_line_p1161 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %582, i32 0, i32 22
  %583 = bitcast i40* %indicate_bottom_line_p1161 to i64*
  %bf.load1162 = load i64, i64* %583, align 4
  %bf.lshr1163 = lshr i64 %bf.load1162, 33
  %bf.clear1164 = and i64 %bf.lshr1163, 1
  %bf.cast1165 = trunc i64 %bf.clear1164 to i1
  br i1 %bf.cast1165, label %if.then.1166, label %if.end.1195

if.then.1166:                                     ; preds = %if.else.1160
  %584 = load i64, i64* %arrow_bot, align 8
  %call1167 = call i64 @builtin_lisp_symbol(i32 607)
  %cmp1168 = icmp eq i64 %584, %call1167
  br i1 %cmp1168, label %if.then.1170, label %if.else.1182

if.then.1170:                                     ; preds = %if.then.1166
  %arrayidx1171 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 28
  %585 = load i32, i32* %arrayidx1171, align 4
  %cmp1172 = icmp sge i32 %585, 0
  br i1 %cmp1172, label %cond.true.1174, label %cond.false.1176

cond.true.1174:                                   ; preds = %if.then.1170
  %arrayidx1175 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 28
  %586 = load i32, i32* %arrayidx1175, align 4
  br label %cond.end.1180

cond.false.1176:                                  ; preds = %if.then.1170
  %587 = load %struct.window*, %struct.window** %w.addr, align 8
  %call1177 = call i64 @builtin_lisp_symbol(i32 352)
  %call1178 = call i32 @get_logical_fringe_bitmap(%struct.window* %587, i64 %call1177, i32 0, i32 0)
  %arrayidx1179 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 28
  store i32 %call1178, i32* %arrayidx1179, align 4
  br label %cond.end.1180

cond.end.1180:                                    ; preds = %cond.false.1176, %cond.true.1174
  %cond1181 = phi i32 [ %586, %cond.true.1174 ], [ %call1178, %cond.false.1176 ]
  store i32 %cond1181, i32* %bn1044, align 4
  br label %if.end.1194

if.else.1182:                                     ; preds = %if.then.1166
  %arrayidx1183 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 30
  %588 = load i32, i32* %arrayidx1183, align 4
  %cmp1184 = icmp sge i32 %588, 0
  br i1 %cmp1184, label %cond.true.1186, label %cond.false.1188

cond.true.1186:                                   ; preds = %if.else.1182
  %arrayidx1187 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 30
  %589 = load i32, i32* %arrayidx1187, align 4
  br label %cond.end.1192

cond.false.1188:                                  ; preds = %if.else.1182
  %590 = load %struct.window*, %struct.window** %w.addr, align 8
  %call1189 = call i64 @builtin_lisp_symbol(i32 352)
  %call1190 = call i32 @get_logical_fringe_bitmap(%struct.window* %590, i64 %call1189, i32 1, i32 0)
  %arrayidx1191 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 30
  store i32 %call1190, i32* %arrayidx1191, align 4
  br label %cond.end.1192

cond.end.1192:                                    ; preds = %cond.false.1188, %cond.true.1186
  %cond1193 = phi i32 [ %589, %cond.true.1186 ], [ %call1190, %cond.false.1188 ]
  store i32 %cond1193, i32* %bn1044, align 4
  br label %if.end.1194

if.end.1194:                                      ; preds = %cond.end.1192, %cond.end.1180
  br label %if.end.1195

if.end.1195:                                      ; preds = %if.end.1194, %if.else.1160
  br label %if.end.1196

if.end.1196:                                      ; preds = %if.end.1195, %if.end.1159
  %591 = load i32, i32* %bn1044, align 4
  %cmp1197 = icmp ne i32 %591, 0
  br i1 %cmp1197, label %if.then.1199, label %if.end.1547

if.then.1199:                                     ; preds = %if.end.1196
  %592 = load i32, i32* %bn1044, align 4
  %call1201 = call %struct.fringe_bitmap* @get_fringe_bitmap_data(i32 %592)
  store %struct.fringe_bitmap* %call1201, %struct.fringe_bitmap** %fb1200, align 8
  %593 = load %struct.fringe_bitmap*, %struct.fringe_bitmap** %fb1200, align 8
  %align1202 = getelementptr inbounds %struct.fringe_bitmap, %struct.fringe_bitmap* %593, i32 0, i32 1
  %bf.load1203 = load i32, i32* %align1202, align 8
  %bf.lshr1204 = lshr i32 %bf.load1203, 24
  %bf.clear1205 = and i32 %bf.lshr1204, 3
  %cmp1206 = icmp eq i32 %bf.clear1205, 2
  br i1 %cmp1206, label %land.lhs.true.1208, label %if.end.1546

land.lhs.true.1208:                               ; preds = %if.then.1199
  %594 = load %struct.fringe_bitmap*, %struct.fringe_bitmap** %fb1200, align 8
  %period1209 = getelementptr inbounds %struct.fringe_bitmap, %struct.fringe_bitmap* %594, i32 0, i32 1
  %bf.load1210 = load i32, i32* %period1209, align 8
  %bf.lshr1211 = lshr i32 %bf.load1210, 16
  %bf.clear1212 = and i32 %bf.lshr1211, 255
  %cmp1213 = icmp eq i32 %bf.clear1212, 0
  br i1 %cmp1213, label %if.then.1215, label %if.end.1546

if.then.1215:                                     ; preds = %land.lhs.true.1208
  %595 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %y1217 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %595, i32 0, i32 4
  %596 = load i32, i32* %y1217, align 4
  %597 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %visible_height1218 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %597, i32 0, i32 10
  %598 = load i32, i32* %visible_height1218, align 4
  %add1219 = add nsw i32 %596, %598
  store i32 %add1219, i32* %bot_ind_max_y, align 4
  %599 = load i32, i32* %bot_ind_max_y, align 4
  %600 = load %struct.fringe_bitmap*, %struct.fringe_bitmap** %fb1200, align 8
  %height1220 = getelementptr inbounds %struct.fringe_bitmap, %struct.fringe_bitmap* %600, i32 0, i32 1
  %bf.load1221 = load i32, i32* %height1220, align 8
  %bf.clear1222 = and i32 %bf.load1221, 255
  %sub1223 = sub nsw i32 %599, %bf.clear1222
  store i32 %sub1223, i32* %bot_ind_min_y, align 4
  %601 = load i32, i32* %bot_ind_min_y, align 4
  %602 = load %struct.window*, %struct.window** %w.addr, align 8
  %contents1224 = getelementptr inbounds %struct.window, %struct.window* %602, i32 0, i32 10
  %603 = load i64, i64* %contents1224, align 8
  %call1225 = call zeroext i1 @BUFFERP(i64 %603)
  br i1 %call1225, label %cond.true.1227, label %cond.false.1307

cond.true.1227:                                   ; preds = %if.then.1215
  %604 = load %struct.window*, %struct.window** %w.addr, align 8
  %mini1228 = getelementptr inbounds %struct.window, %struct.window* %604, i32 0, i32 67
  %bf.load1229 = load i16, i16* %mini1228, align 4
  %bf.clear1230 = and i16 %bf.load1229, 1
  %bf.cast1231 = trunc i16 %bf.clear1230 to i1
  br i1 %bf.cast1231, label %cond.false.1350, label %land.lhs.true.1232

land.lhs.true.1232:                               ; preds = %cond.true.1227
  %605 = load %struct.window*, %struct.window** %w.addr, align 8
  %pseudo_window_p1233 = getelementptr inbounds %struct.window, %struct.window* %605, i32 0, i32 67
  %bf.load1234 = load i16, i16* %pseudo_window_p1233, align 4
  %bf.lshr1235 = lshr i16 %bf.load1234, 11
  %bf.clear1236 = and i16 %bf.lshr1235, 1
  %bf.cast1237 = trunc i16 %bf.clear1236 to i1
  br i1 %bf.cast1237, label %cond.false.1350, label %land.lhs.true.1238

land.lhs.true.1238:                               ; preds = %land.lhs.true.1232
  %606 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame1239 = getelementptr inbounds %struct.window, %struct.window* %606, i32 0, i32 1
  %607 = load i64, i64* %frame1239, align 8
  %sub1240 = sub nsw i64 %607, 5
  %608 = inttoptr i64 %sub1240 to i8*
  %609 = bitcast i8* %608 to %struct.frame*
  %wants_modeline1241 = getelementptr inbounds %struct.frame, %struct.frame* %609, i32 0, i32 26
  %610 = bitcast i48* %wants_modeline1241 to i64*
  %bf.load1242 = load i64, i64* %610, align 8
  %bf.lshr1243 = lshr i64 %bf.load1242, 14
  %bf.clear1244 = and i64 %bf.lshr1243, 1
  %bf.cast1245 = trunc i64 %bf.clear1244 to i1
  br i1 %bf.cast1245, label %land.lhs.true.1247, label %cond.false.1350

land.lhs.true.1247:                               ; preds = %land.lhs.true.1238
  %611 = load %struct.window*, %struct.window** %w.addr, align 8
  %contents1248 = getelementptr inbounds %struct.window, %struct.window* %611, i32 0, i32 10
  %612 = load i64, i64* %contents1248, align 8
  %call1249 = call %struct.buffer* @XBUFFER(i64 %612)
  %header_line_format_1250 = getelementptr inbounds %struct.buffer, %struct.buffer* %call1249, i32 0, i32 13
  %613 = load i64, i64* %header_line_format_1250, align 8
  %call1251 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1252 = icmp eq i64 %613, %call1251
  br i1 %cmp1252, label %cond.false.1350, label %land.lhs.true.1254

land.lhs.true.1254:                               ; preds = %land.lhs.true.1247
  %614 = load %struct.window*, %struct.window** %w.addr, align 8
  %pixel_height1255 = getelementptr inbounds %struct.window, %struct.window* %614, i32 0, i32 35
  %615 = load i32, i32* %pixel_height1255, align 4
  %616 = load %struct.window*, %struct.window** %w.addr, align 8
  %contents1256 = getelementptr inbounds %struct.window, %struct.window* %616, i32 0, i32 10
  %617 = load i64, i64* %contents1256, align 8
  %call1257 = call zeroext i1 @BUFFERP(i64 %617)
  br i1 %call1257, label %cond.true.1259, label %cond.false.1293

cond.true.1259:                                   ; preds = %land.lhs.true.1254
  %618 = load %struct.window*, %struct.window** %w.addr, align 8
  %mini1260 = getelementptr inbounds %struct.window, %struct.window* %618, i32 0, i32 67
  %bf.load1261 = load i16, i16* %mini1260, align 4
  %bf.clear1262 = and i16 %bf.load1261, 1
  %bf.cast1263 = trunc i16 %bf.clear1262 to i1
  br i1 %bf.cast1263, label %cond.false.1299, label %land.lhs.true.1264

land.lhs.true.1264:                               ; preds = %cond.true.1259
  %619 = load %struct.window*, %struct.window** %w.addr, align 8
  %pseudo_window_p1265 = getelementptr inbounds %struct.window, %struct.window* %619, i32 0, i32 67
  %bf.load1266 = load i16, i16* %pseudo_window_p1265, align 4
  %bf.lshr1267 = lshr i16 %bf.load1266, 11
  %bf.clear1268 = and i16 %bf.lshr1267, 1
  %bf.cast1269 = trunc i16 %bf.clear1268 to i1
  br i1 %bf.cast1269, label %cond.false.1299, label %land.lhs.true.1270

land.lhs.true.1270:                               ; preds = %land.lhs.true.1264
  %620 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame1271 = getelementptr inbounds %struct.window, %struct.window* %620, i32 0, i32 1
  %621 = load i64, i64* %frame1271, align 8
  %sub1272 = sub nsw i64 %621, 5
  %622 = inttoptr i64 %sub1272 to i8*
  %623 = bitcast i8* %622 to %struct.frame*
  %wants_modeline1273 = getelementptr inbounds %struct.frame, %struct.frame* %623, i32 0, i32 26
  %624 = bitcast i48* %wants_modeline1273 to i64*
  %bf.load1274 = load i64, i64* %624, align 8
  %bf.lshr1275 = lshr i64 %bf.load1274, 14
  %bf.clear1276 = and i64 %bf.lshr1275, 1
  %bf.cast1277 = trunc i64 %bf.clear1276 to i1
  br i1 %bf.cast1277, label %land.lhs.true.1279, label %cond.false.1299

land.lhs.true.1279:                               ; preds = %land.lhs.true.1270
  %625 = load %struct.window*, %struct.window** %w.addr, align 8
  %contents1280 = getelementptr inbounds %struct.window, %struct.window* %625, i32 0, i32 10
  %626 = load i64, i64* %contents1280, align 8
  %call1281 = call %struct.buffer* @XBUFFER(i64 %626)
  %mode_line_format_1282 = getelementptr inbounds %struct.buffer, %struct.buffer* %call1281, i32 0, i32 12
  %627 = load i64, i64* %mode_line_format_1282, align 8
  %call1283 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1284 = icmp eq i64 %627, %call1283
  br i1 %cmp1284, label %cond.false.1299, label %land.lhs.true.1286

land.lhs.true.1286:                               ; preds = %land.lhs.true.1279
  %628 = load %struct.window*, %struct.window** %w.addr, align 8
  %pixel_height1287 = getelementptr inbounds %struct.window, %struct.window* %628, i32 0, i32 35
  %629 = load i32, i32* %pixel_height1287, align 4
  %630 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame1288 = getelementptr inbounds %struct.window, %struct.window* %630, i32 0, i32 1
  %631 = load i64, i64* %frame1288, align 8
  %sub1289 = sub nsw i64 %631, 5
  %632 = inttoptr i64 %sub1289 to i8*
  %633 = bitcast i8* %632 to %struct.frame*
  %line_height1290 = getelementptr inbounds %struct.frame, %struct.frame* %633, i32 0, i32 60
  %634 = load i32, i32* %line_height1290, align 4
  %cmp1291 = icmp sgt i32 %629, %634
  br i1 %cmp1291, label %cond.true.1294, label %cond.false.1299

cond.false.1293:                                  ; preds = %land.lhs.true.1254
  br i1 false, label %cond.true.1294, label %cond.false.1299

cond.true.1294:                                   ; preds = %cond.false.1293, %land.lhs.true.1286
  %635 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame1295 = getelementptr inbounds %struct.window, %struct.window* %635, i32 0, i32 1
  %636 = load i64, i64* %frame1295, align 8
  %sub1296 = sub nsw i64 %636, 5
  %637 = inttoptr i64 %sub1296 to i8*
  %638 = bitcast i8* %637 to %struct.frame*
  %line_height1297 = getelementptr inbounds %struct.frame, %struct.frame* %638, i32 0, i32 60
  %639 = load i32, i32* %line_height1297, align 4
  %mul1298 = mul nsw i32 2, %639
  br label %cond.end.1303

cond.false.1299:                                  ; preds = %cond.false.1293, %land.lhs.true.1286, %land.lhs.true.1279, %land.lhs.true.1270, %land.lhs.true.1264, %cond.true.1259
  %640 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame1300 = getelementptr inbounds %struct.window, %struct.window* %640, i32 0, i32 1
  %641 = load i64, i64* %frame1300, align 8
  %sub1301 = sub nsw i64 %641, 5
  %642 = inttoptr i64 %sub1301 to i8*
  %643 = bitcast i8* %642 to %struct.frame*
  %line_height1302 = getelementptr inbounds %struct.frame, %struct.frame* %643, i32 0, i32 60
  %644 = load i32, i32* %line_height1302, align 4
  br label %cond.end.1303

cond.end.1303:                                    ; preds = %cond.false.1299, %cond.true.1294
  %cond1304 = phi i32 [ %mul1298, %cond.true.1294 ], [ %644, %cond.false.1299 ]
  %cmp1305 = icmp sgt i32 %615, %cond1304
  br i1 %cmp1305, label %cond.true.1308, label %cond.false.1350

cond.false.1307:                                  ; preds = %if.then.1215
  br i1 false, label %cond.true.1308, label %cond.false.1350

cond.true.1308:                                   ; preds = %cond.false.1307, %cond.end.1303
  %645 = load %struct.window*, %struct.window** %w.addr, align 8
  %header_line_height1309 = getelementptr inbounds %struct.window, %struct.window* %645, i32 0, i32 64
  %646 = load i32, i32* %header_line_height1309, align 4
  %cmp1310 = icmp sge i32 %646, 0
  br i1 %cmp1310, label %cond.true.1312, label %cond.false.1314

cond.true.1312:                                   ; preds = %cond.true.1308
  %647 = load %struct.window*, %struct.window** %w.addr, align 8
  %header_line_height1313 = getelementptr inbounds %struct.window, %struct.window* %647, i32 0, i32 64
  %648 = load i32, i32* %header_line_height1313, align 4
  br label %cond.end.1348

cond.false.1314:                                  ; preds = %cond.true.1308
  %649 = load %struct.window*, %struct.window** %w.addr, align 8
  %current_matrix1315 = getelementptr inbounds %struct.window, %struct.window* %649, i32 0, i32 24
  %650 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix1315, align 8
  %tobool1316 = icmp ne %struct.glyph_matrix* %650, null
  br i1 %tobool1316, label %land.lhs.true.1317, label %cond.false.1326

land.lhs.true.1317:                               ; preds = %cond.false.1314
  %651 = load %struct.window*, %struct.window** %w.addr, align 8
  %current_matrix1318 = getelementptr inbounds %struct.window, %struct.window* %651, i32 0, i32 24
  %652 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix1318, align 8
  %rows1319 = getelementptr inbounds %struct.glyph_matrix, %struct.glyph_matrix* %652, i32 0, i32 1
  %653 = load %struct.glyph_row*, %struct.glyph_row** %rows1319, align 8
  %tobool1320 = icmp ne %struct.glyph_row* %653, null
  br i1 %tobool1320, label %cond.true.1321, label %cond.false.1326

cond.true.1321:                                   ; preds = %land.lhs.true.1317
  %654 = load %struct.window*, %struct.window** %w.addr, align 8
  %current_matrix1322 = getelementptr inbounds %struct.window, %struct.window* %654, i32 0, i32 24
  %655 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix1322, align 8
  %rows1323 = getelementptr inbounds %struct.glyph_matrix, %struct.glyph_matrix* %655, i32 0, i32 1
  %656 = load %struct.glyph_row*, %struct.glyph_row** %rows1323, align 8
  %height1324 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %656, i32 0, i32 7
  %657 = load i32, i32* %height1324, align 4
  %tobool1325 = icmp ne i32 %657, 0
  br i1 %tobool1325, label %cond.true.1327, label %cond.false.1341

cond.false.1326:                                  ; preds = %land.lhs.true.1317, %cond.false.1314
  br i1 false, label %cond.true.1327, label %cond.false.1341

cond.true.1327:                                   ; preds = %cond.false.1326, %cond.true.1321
  %658 = load %struct.window*, %struct.window** %w.addr, align 8
  %current_matrix1328 = getelementptr inbounds %struct.window, %struct.window* %658, i32 0, i32 24
  %659 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix1328, align 8
  %tobool1329 = icmp ne %struct.glyph_matrix* %659, null
  br i1 %tobool1329, label %land.lhs.true.1330, label %cond.false.1338

land.lhs.true.1330:                               ; preds = %cond.true.1327
  %660 = load %struct.window*, %struct.window** %w.addr, align 8
  %current_matrix1331 = getelementptr inbounds %struct.window, %struct.window* %660, i32 0, i32 24
  %661 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix1331, align 8
  %rows1332 = getelementptr inbounds %struct.glyph_matrix, %struct.glyph_matrix* %661, i32 0, i32 1
  %662 = load %struct.glyph_row*, %struct.glyph_row** %rows1332, align 8
  %tobool1333 = icmp ne %struct.glyph_row* %662, null
  br i1 %tobool1333, label %cond.true.1334, label %cond.false.1338

cond.true.1334:                                   ; preds = %land.lhs.true.1330
  %663 = load %struct.window*, %struct.window** %w.addr, align 8
  %current_matrix1335 = getelementptr inbounds %struct.window, %struct.window* %663, i32 0, i32 24
  %664 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix1335, align 8
  %rows1336 = getelementptr inbounds %struct.glyph_matrix, %struct.glyph_matrix* %664, i32 0, i32 1
  %665 = load %struct.glyph_row*, %struct.glyph_row** %rows1336, align 8
  %height1337 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %665, i32 0, i32 7
  %666 = load i32, i32* %height1337, align 4
  br label %cond.end.1339

cond.false.1338:                                  ; preds = %land.lhs.true.1330, %cond.true.1327
  br label %cond.end.1339

cond.end.1339:                                    ; preds = %cond.false.1338, %cond.true.1334
  %cond1340 = phi i32 [ %666, %cond.true.1334 ], [ 0, %cond.false.1338 ]
  br label %cond.end.1345

cond.false.1341:                                  ; preds = %cond.false.1326, %cond.true.1321
  %667 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame1342 = getelementptr inbounds %struct.window, %struct.window* %667, i32 0, i32 1
  %668 = load i64, i64* %frame1342, align 8
  %sub1343 = sub nsw i64 %668, 5
  %669 = inttoptr i64 %sub1343 to i8*
  %670 = bitcast i8* %669 to %struct.frame*
  %call1344 = call i32 @estimate_mode_line_height(%struct.frame* %670, i32 5)
  br label %cond.end.1345

cond.end.1345:                                    ; preds = %cond.false.1341, %cond.end.1339
  %cond1346 = phi i32 [ %cond1340, %cond.end.1339 ], [ %call1344, %cond.false.1341 ]
  %671 = load %struct.window*, %struct.window** %w.addr, align 8
  %header_line_height1347 = getelementptr inbounds %struct.window, %struct.window* %671, i32 0, i32 64
  store i32 %cond1346, i32* %header_line_height1347, align 4
  br label %cond.end.1348

cond.end.1348:                                    ; preds = %cond.end.1345, %cond.true.1312
  %cond1349 = phi i32 [ %648, %cond.true.1312 ], [ %cond1346, %cond.end.1345 ]
  br label %cond.end.1351

cond.false.1350:                                  ; preds = %cond.false.1307, %cond.end.1303, %land.lhs.true.1247, %land.lhs.true.1238, %land.lhs.true.1232, %cond.true.1227
  br label %cond.end.1351

cond.end.1351:                                    ; preds = %cond.false.1350, %cond.end.1348
  %cond1352 = phi i32 [ %cond1349, %cond.end.1348 ], [ 0, %cond.false.1350 ]
  %cmp1353 = icmp slt i32 %601, %cond1352
  br i1 %cmp1353, label %if.then.1355, label %if.end.1485

if.then.1355:                                     ; preds = %cond.end.1351
  %672 = load %struct.window*, %struct.window** %w.addr, align 8
  %contents1356 = getelementptr inbounds %struct.window, %struct.window* %672, i32 0, i32 10
  %673 = load i64, i64* %contents1356, align 8
  %call1357 = call zeroext i1 @BUFFERP(i64 %673)
  br i1 %call1357, label %cond.true.1359, label %cond.false.1439

cond.true.1359:                                   ; preds = %if.then.1355
  %674 = load %struct.window*, %struct.window** %w.addr, align 8
  %mini1360 = getelementptr inbounds %struct.window, %struct.window* %674, i32 0, i32 67
  %bf.load1361 = load i16, i16* %mini1360, align 4
  %bf.clear1362 = and i16 %bf.load1361, 1
  %bf.cast1363 = trunc i16 %bf.clear1362 to i1
  br i1 %bf.cast1363, label %cond.false.1482, label %land.lhs.true.1364

land.lhs.true.1364:                               ; preds = %cond.true.1359
  %675 = load %struct.window*, %struct.window** %w.addr, align 8
  %pseudo_window_p1365 = getelementptr inbounds %struct.window, %struct.window* %675, i32 0, i32 67
  %bf.load1366 = load i16, i16* %pseudo_window_p1365, align 4
  %bf.lshr1367 = lshr i16 %bf.load1366, 11
  %bf.clear1368 = and i16 %bf.lshr1367, 1
  %bf.cast1369 = trunc i16 %bf.clear1368 to i1
  br i1 %bf.cast1369, label %cond.false.1482, label %land.lhs.true.1370

land.lhs.true.1370:                               ; preds = %land.lhs.true.1364
  %676 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame1371 = getelementptr inbounds %struct.window, %struct.window* %676, i32 0, i32 1
  %677 = load i64, i64* %frame1371, align 8
  %sub1372 = sub nsw i64 %677, 5
  %678 = inttoptr i64 %sub1372 to i8*
  %679 = bitcast i8* %678 to %struct.frame*
  %wants_modeline1373 = getelementptr inbounds %struct.frame, %struct.frame* %679, i32 0, i32 26
  %680 = bitcast i48* %wants_modeline1373 to i64*
  %bf.load1374 = load i64, i64* %680, align 8
  %bf.lshr1375 = lshr i64 %bf.load1374, 14
  %bf.clear1376 = and i64 %bf.lshr1375, 1
  %bf.cast1377 = trunc i64 %bf.clear1376 to i1
  br i1 %bf.cast1377, label %land.lhs.true.1379, label %cond.false.1482

land.lhs.true.1379:                               ; preds = %land.lhs.true.1370
  %681 = load %struct.window*, %struct.window** %w.addr, align 8
  %contents1380 = getelementptr inbounds %struct.window, %struct.window* %681, i32 0, i32 10
  %682 = load i64, i64* %contents1380, align 8
  %call1381 = call %struct.buffer* @XBUFFER(i64 %682)
  %header_line_format_1382 = getelementptr inbounds %struct.buffer, %struct.buffer* %call1381, i32 0, i32 13
  %683 = load i64, i64* %header_line_format_1382, align 8
  %call1383 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1384 = icmp eq i64 %683, %call1383
  br i1 %cmp1384, label %cond.false.1482, label %land.lhs.true.1386

land.lhs.true.1386:                               ; preds = %land.lhs.true.1379
  %684 = load %struct.window*, %struct.window** %w.addr, align 8
  %pixel_height1387 = getelementptr inbounds %struct.window, %struct.window* %684, i32 0, i32 35
  %685 = load i32, i32* %pixel_height1387, align 4
  %686 = load %struct.window*, %struct.window** %w.addr, align 8
  %contents1388 = getelementptr inbounds %struct.window, %struct.window* %686, i32 0, i32 10
  %687 = load i64, i64* %contents1388, align 8
  %call1389 = call zeroext i1 @BUFFERP(i64 %687)
  br i1 %call1389, label %cond.true.1391, label %cond.false.1425

cond.true.1391:                                   ; preds = %land.lhs.true.1386
  %688 = load %struct.window*, %struct.window** %w.addr, align 8
  %mini1392 = getelementptr inbounds %struct.window, %struct.window* %688, i32 0, i32 67
  %bf.load1393 = load i16, i16* %mini1392, align 4
  %bf.clear1394 = and i16 %bf.load1393, 1
  %bf.cast1395 = trunc i16 %bf.clear1394 to i1
  br i1 %bf.cast1395, label %cond.false.1431, label %land.lhs.true.1396

land.lhs.true.1396:                               ; preds = %cond.true.1391
  %689 = load %struct.window*, %struct.window** %w.addr, align 8
  %pseudo_window_p1397 = getelementptr inbounds %struct.window, %struct.window* %689, i32 0, i32 67
  %bf.load1398 = load i16, i16* %pseudo_window_p1397, align 4
  %bf.lshr1399 = lshr i16 %bf.load1398, 11
  %bf.clear1400 = and i16 %bf.lshr1399, 1
  %bf.cast1401 = trunc i16 %bf.clear1400 to i1
  br i1 %bf.cast1401, label %cond.false.1431, label %land.lhs.true.1402

land.lhs.true.1402:                               ; preds = %land.lhs.true.1396
  %690 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame1403 = getelementptr inbounds %struct.window, %struct.window* %690, i32 0, i32 1
  %691 = load i64, i64* %frame1403, align 8
  %sub1404 = sub nsw i64 %691, 5
  %692 = inttoptr i64 %sub1404 to i8*
  %693 = bitcast i8* %692 to %struct.frame*
  %wants_modeline1405 = getelementptr inbounds %struct.frame, %struct.frame* %693, i32 0, i32 26
  %694 = bitcast i48* %wants_modeline1405 to i64*
  %bf.load1406 = load i64, i64* %694, align 8
  %bf.lshr1407 = lshr i64 %bf.load1406, 14
  %bf.clear1408 = and i64 %bf.lshr1407, 1
  %bf.cast1409 = trunc i64 %bf.clear1408 to i1
  br i1 %bf.cast1409, label %land.lhs.true.1411, label %cond.false.1431

land.lhs.true.1411:                               ; preds = %land.lhs.true.1402
  %695 = load %struct.window*, %struct.window** %w.addr, align 8
  %contents1412 = getelementptr inbounds %struct.window, %struct.window* %695, i32 0, i32 10
  %696 = load i64, i64* %contents1412, align 8
  %call1413 = call %struct.buffer* @XBUFFER(i64 %696)
  %mode_line_format_1414 = getelementptr inbounds %struct.buffer, %struct.buffer* %call1413, i32 0, i32 12
  %697 = load i64, i64* %mode_line_format_1414, align 8
  %call1415 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1416 = icmp eq i64 %697, %call1415
  br i1 %cmp1416, label %cond.false.1431, label %land.lhs.true.1418

land.lhs.true.1418:                               ; preds = %land.lhs.true.1411
  %698 = load %struct.window*, %struct.window** %w.addr, align 8
  %pixel_height1419 = getelementptr inbounds %struct.window, %struct.window* %698, i32 0, i32 35
  %699 = load i32, i32* %pixel_height1419, align 4
  %700 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame1420 = getelementptr inbounds %struct.window, %struct.window* %700, i32 0, i32 1
  %701 = load i64, i64* %frame1420, align 8
  %sub1421 = sub nsw i64 %701, 5
  %702 = inttoptr i64 %sub1421 to i8*
  %703 = bitcast i8* %702 to %struct.frame*
  %line_height1422 = getelementptr inbounds %struct.frame, %struct.frame* %703, i32 0, i32 60
  %704 = load i32, i32* %line_height1422, align 4
  %cmp1423 = icmp sgt i32 %699, %704
  br i1 %cmp1423, label %cond.true.1426, label %cond.false.1431

cond.false.1425:                                  ; preds = %land.lhs.true.1386
  br i1 false, label %cond.true.1426, label %cond.false.1431

cond.true.1426:                                   ; preds = %cond.false.1425, %land.lhs.true.1418
  %705 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame1427 = getelementptr inbounds %struct.window, %struct.window* %705, i32 0, i32 1
  %706 = load i64, i64* %frame1427, align 8
  %sub1428 = sub nsw i64 %706, 5
  %707 = inttoptr i64 %sub1428 to i8*
  %708 = bitcast i8* %707 to %struct.frame*
  %line_height1429 = getelementptr inbounds %struct.frame, %struct.frame* %708, i32 0, i32 60
  %709 = load i32, i32* %line_height1429, align 4
  %mul1430 = mul nsw i32 2, %709
  br label %cond.end.1435

cond.false.1431:                                  ; preds = %cond.false.1425, %land.lhs.true.1418, %land.lhs.true.1411, %land.lhs.true.1402, %land.lhs.true.1396, %cond.true.1391
  %710 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame1432 = getelementptr inbounds %struct.window, %struct.window* %710, i32 0, i32 1
  %711 = load i64, i64* %frame1432, align 8
  %sub1433 = sub nsw i64 %711, 5
  %712 = inttoptr i64 %sub1433 to i8*
  %713 = bitcast i8* %712 to %struct.frame*
  %line_height1434 = getelementptr inbounds %struct.frame, %struct.frame* %713, i32 0, i32 60
  %714 = load i32, i32* %line_height1434, align 4
  br label %cond.end.1435

cond.end.1435:                                    ; preds = %cond.false.1431, %cond.true.1426
  %cond1436 = phi i32 [ %mul1430, %cond.true.1426 ], [ %714, %cond.false.1431 ]
  %cmp1437 = icmp sgt i32 %685, %cond1436
  br i1 %cmp1437, label %cond.true.1440, label %cond.false.1482

cond.false.1439:                                  ; preds = %if.then.1355
  br i1 false, label %cond.true.1440, label %cond.false.1482

cond.true.1440:                                   ; preds = %cond.false.1439, %cond.end.1435
  %715 = load %struct.window*, %struct.window** %w.addr, align 8
  %header_line_height1441 = getelementptr inbounds %struct.window, %struct.window* %715, i32 0, i32 64
  %716 = load i32, i32* %header_line_height1441, align 4
  %cmp1442 = icmp sge i32 %716, 0
  br i1 %cmp1442, label %cond.true.1444, label %cond.false.1446

cond.true.1444:                                   ; preds = %cond.true.1440
  %717 = load %struct.window*, %struct.window** %w.addr, align 8
  %header_line_height1445 = getelementptr inbounds %struct.window, %struct.window* %717, i32 0, i32 64
  %718 = load i32, i32* %header_line_height1445, align 4
  br label %cond.end.1480

cond.false.1446:                                  ; preds = %cond.true.1440
  %719 = load %struct.window*, %struct.window** %w.addr, align 8
  %current_matrix1447 = getelementptr inbounds %struct.window, %struct.window* %719, i32 0, i32 24
  %720 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix1447, align 8
  %tobool1448 = icmp ne %struct.glyph_matrix* %720, null
  br i1 %tobool1448, label %land.lhs.true.1449, label %cond.false.1458

land.lhs.true.1449:                               ; preds = %cond.false.1446
  %721 = load %struct.window*, %struct.window** %w.addr, align 8
  %current_matrix1450 = getelementptr inbounds %struct.window, %struct.window* %721, i32 0, i32 24
  %722 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix1450, align 8
  %rows1451 = getelementptr inbounds %struct.glyph_matrix, %struct.glyph_matrix* %722, i32 0, i32 1
  %723 = load %struct.glyph_row*, %struct.glyph_row** %rows1451, align 8
  %tobool1452 = icmp ne %struct.glyph_row* %723, null
  br i1 %tobool1452, label %cond.true.1453, label %cond.false.1458

cond.true.1453:                                   ; preds = %land.lhs.true.1449
  %724 = load %struct.window*, %struct.window** %w.addr, align 8
  %current_matrix1454 = getelementptr inbounds %struct.window, %struct.window* %724, i32 0, i32 24
  %725 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix1454, align 8
  %rows1455 = getelementptr inbounds %struct.glyph_matrix, %struct.glyph_matrix* %725, i32 0, i32 1
  %726 = load %struct.glyph_row*, %struct.glyph_row** %rows1455, align 8
  %height1456 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %726, i32 0, i32 7
  %727 = load i32, i32* %height1456, align 4
  %tobool1457 = icmp ne i32 %727, 0
  br i1 %tobool1457, label %cond.true.1459, label %cond.false.1473

cond.false.1458:                                  ; preds = %land.lhs.true.1449, %cond.false.1446
  br i1 false, label %cond.true.1459, label %cond.false.1473

cond.true.1459:                                   ; preds = %cond.false.1458, %cond.true.1453
  %728 = load %struct.window*, %struct.window** %w.addr, align 8
  %current_matrix1460 = getelementptr inbounds %struct.window, %struct.window* %728, i32 0, i32 24
  %729 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix1460, align 8
  %tobool1461 = icmp ne %struct.glyph_matrix* %729, null
  br i1 %tobool1461, label %land.lhs.true.1462, label %cond.false.1470

land.lhs.true.1462:                               ; preds = %cond.true.1459
  %730 = load %struct.window*, %struct.window** %w.addr, align 8
  %current_matrix1463 = getelementptr inbounds %struct.window, %struct.window* %730, i32 0, i32 24
  %731 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix1463, align 8
  %rows1464 = getelementptr inbounds %struct.glyph_matrix, %struct.glyph_matrix* %731, i32 0, i32 1
  %732 = load %struct.glyph_row*, %struct.glyph_row** %rows1464, align 8
  %tobool1465 = icmp ne %struct.glyph_row* %732, null
  br i1 %tobool1465, label %cond.true.1466, label %cond.false.1470

cond.true.1466:                                   ; preds = %land.lhs.true.1462
  %733 = load %struct.window*, %struct.window** %w.addr, align 8
  %current_matrix1467 = getelementptr inbounds %struct.window, %struct.window* %733, i32 0, i32 24
  %734 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix1467, align 8
  %rows1468 = getelementptr inbounds %struct.glyph_matrix, %struct.glyph_matrix* %734, i32 0, i32 1
  %735 = load %struct.glyph_row*, %struct.glyph_row** %rows1468, align 8
  %height1469 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %735, i32 0, i32 7
  %736 = load i32, i32* %height1469, align 4
  br label %cond.end.1471

cond.false.1470:                                  ; preds = %land.lhs.true.1462, %cond.true.1459
  br label %cond.end.1471

cond.end.1471:                                    ; preds = %cond.false.1470, %cond.true.1466
  %cond1472 = phi i32 [ %736, %cond.true.1466 ], [ 0, %cond.false.1470 ]
  br label %cond.end.1477

cond.false.1473:                                  ; preds = %cond.false.1458, %cond.true.1453
  %737 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame1474 = getelementptr inbounds %struct.window, %struct.window* %737, i32 0, i32 1
  %738 = load i64, i64* %frame1474, align 8
  %sub1475 = sub nsw i64 %738, 5
  %739 = inttoptr i64 %sub1475 to i8*
  %740 = bitcast i8* %739 to %struct.frame*
  %call1476 = call i32 @estimate_mode_line_height(%struct.frame* %740, i32 5)
  br label %cond.end.1477

cond.end.1477:                                    ; preds = %cond.false.1473, %cond.end.1471
  %cond1478 = phi i32 [ %cond1472, %cond.end.1471 ], [ %call1476, %cond.false.1473 ]
  %741 = load %struct.window*, %struct.window** %w.addr, align 8
  %header_line_height1479 = getelementptr inbounds %struct.window, %struct.window* %741, i32 0, i32 64
  store i32 %cond1478, i32* %header_line_height1479, align 4
  br label %cond.end.1480

cond.end.1480:                                    ; preds = %cond.end.1477, %cond.true.1444
  %cond1481 = phi i32 [ %718, %cond.true.1444 ], [ %cond1478, %cond.end.1477 ]
  br label %cond.end.1483

cond.false.1482:                                  ; preds = %cond.false.1439, %cond.end.1435, %land.lhs.true.1379, %land.lhs.true.1370, %land.lhs.true.1364, %cond.true.1359
  br label %cond.end.1483

cond.end.1483:                                    ; preds = %cond.false.1482, %cond.end.1480
  %cond1484 = phi i32 [ %cond1481, %cond.end.1480 ], [ 0, %cond.false.1482 ]
  store i32 %cond1484, i32* %bot_ind_min_y, align 4
  br label %if.end.1485

if.end.1485:                                      ; preds = %cond.end.1483, %cond.end.1351
  %742 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %y1486 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %742, i32 0, i32 4
  %743 = load i32, i32* %y1486, align 4
  store i32 %743, i32* %y, align 4
  %744 = load i32, i32* %bot_ind_rn, align 4
  %sub1487 = sub nsw i32 %744, 1
  store i32 %sub1487, i32* %rn, align 4
  br label %for.cond.1488

for.cond.1488:                                    ; preds = %for.inc.1542, %if.end.1485
  %745 = load i32, i32* %y, align 4
  %746 = load i32, i32* %bot_ind_min_y, align 4
  %cmp1489 = icmp sge i32 %745, %746
  br i1 %cmp1489, label %land.rhs.1491, label %land.end.1494

land.rhs.1491:                                    ; preds = %for.cond.1488
  %747 = load i32, i32* %rn, align 4
  %cmp1492 = icmp sge i32 %747, 0
  br label %land.end.1494

land.end.1494:                                    ; preds = %land.rhs.1491, %for.cond.1488
  %748 = phi i1 [ false, %for.cond.1488 ], [ %cmp1492, %land.rhs.1491 ]
  br i1 %748, label %for.body.1495, label %for.end.1545

for.body.1495:                                    ; preds = %land.end.1494
  %749 = load i32, i32* %top_ind_rn, align 4
  %cmp1496 = icmp sge i32 %749, 0
  br i1 %cmp1496, label %land.lhs.true.1498, label %if.end.1502

land.lhs.true.1498:                               ; preds = %for.body.1495
  %750 = load i32, i32* %rn, align 4
  %751 = load i32, i32* %top_ind_rn, align 4
  %cmp1499 = icmp sle i32 %750, %751
  br i1 %cmp1499, label %if.then.1501, label %if.end.1502

if.then.1501:                                     ; preds = %land.lhs.true.1498
  br label %for.end.1545

if.end.1502:                                      ; preds = %land.lhs.true.1498, %for.body.1495
  %752 = load %struct.window*, %struct.window** %w.addr, align 8
  %desired_matrix1503 = getelementptr inbounds %struct.window, %struct.window* %752, i32 0, i32 25
  %753 = load %struct.glyph_matrix*, %struct.glyph_matrix** %desired_matrix1503, align 8
  %rows1504 = getelementptr inbounds %struct.glyph_matrix, %struct.glyph_matrix* %753, i32 0, i32 1
  %754 = load %struct.glyph_row*, %struct.glyph_row** %rows1504, align 8
  %755 = load i32, i32* %rn, align 4
  %idx.ext1505 = sext i32 %755 to i64
  %add.ptr1506 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %754, i64 %idx.ext1505
  store %struct.glyph_row* %add.ptr1506, %struct.glyph_row** %row11216, align 8
  %756 = load %struct.glyph_row*, %struct.glyph_row** %row11216, align 8
  %enabled_p1507 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %756, i32 0, i32 22
  %757 = bitcast i40* %enabled_p1507 to i64*
  %bf.load1508 = load i64, i64* %757, align 4
  %bf.lshr1509 = lshr i64 %bf.load1508, 10
  %bf.clear1510 = and i64 %bf.lshr1509, 1
  %bf.cast1511 = trunc i64 %bf.clear1510 to i1
  br i1 %bf.cast1511, label %if.end.1517, label %if.then.1512

if.then.1512:                                     ; preds = %if.end.1502
  %758 = load %struct.window*, %struct.window** %w.addr, align 8
  %current_matrix1513 = getelementptr inbounds %struct.window, %struct.window* %758, i32 0, i32 24
  %759 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix1513, align 8
  %rows1514 = getelementptr inbounds %struct.glyph_matrix, %struct.glyph_matrix* %759, i32 0, i32 1
  %760 = load %struct.glyph_row*, %struct.glyph_row** %rows1514, align 8
  %761 = load i32, i32* %rn, align 4
  %idx.ext1515 = sext i32 %761 to i64
  %add.ptr1516 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %760, i64 %idx.ext1515
  store %struct.glyph_row* %add.ptr1516, %struct.glyph_row** %row11216, align 8
  br label %if.end.1517

if.end.1517:                                      ; preds = %if.then.1512, %if.end.1502
  %762 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %indicate_eob_p1518 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %762, i32 0, i32 22
  %763 = bitcast i40* %indicate_eob_p1518 to i64*
  %bf.load1519 = load i64, i64* %763, align 4
  %bf.lshr1520 = lshr i64 %bf.load1519, 32
  %bf.clear1521 = and i64 %bf.lshr1520, 1
  %bf.cast1522 = trunc i64 %bf.clear1521 to i1
  %764 = load %struct.glyph_row*, %struct.glyph_row** %row11216, align 8
  %indicate_eob_p1523 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %764, i32 0, i32 22
  %765 = bitcast i40* %indicate_eob_p1523 to i64*
  %766 = zext i1 %bf.cast1522 to i64
  %bf.load1524 = load i64, i64* %765, align 4
  %bf.shl1525 = shl i64 %766, 32
  %bf.clear1526 = and i64 %bf.load1524, -4294967297
  %bf.set1527 = or i64 %bf.clear1526, %bf.shl1525
  store i64 %bf.set1527, i64* %765, align 4
  %bf.result.cast1528 = trunc i64 %766 to i8
  %tobool1529 = trunc i8 %bf.result.cast1528 to i1
  %767 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %indicate_bottom_line_p1530 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %767, i32 0, i32 22
  %768 = bitcast i40* %indicate_bottom_line_p1530 to i64*
  %bf.load1531 = load i64, i64* %768, align 4
  %bf.lshr1532 = lshr i64 %bf.load1531, 33
  %bf.clear1533 = and i64 %bf.lshr1532, 1
  %bf.cast1534 = trunc i64 %bf.clear1533 to i1
  %769 = load %struct.glyph_row*, %struct.glyph_row** %row11216, align 8
  %indicate_bottom_line_p1535 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %769, i32 0, i32 22
  %770 = bitcast i40* %indicate_bottom_line_p1535 to i64*
  %771 = zext i1 %bf.cast1534 to i64
  %bf.load1536 = load i64, i64* %770, align 4
  %bf.shl1537 = shl i64 %771, 33
  %bf.clear1538 = and i64 %bf.load1536, -8589934593
  %bf.set1539 = or i64 %bf.clear1538, %bf.shl1537
  store i64 %bf.set1539, i64* %770, align 4
  %bf.result.cast1540 = trunc i64 %771 to i8
  %tobool1541 = trunc i8 %bf.result.cast1540 to i1
  br label %for.inc.1542

for.inc.1542:                                     ; preds = %if.end.1517
  %772 = load %struct.glyph_row*, %struct.glyph_row** %row11216, align 8
  %height1543 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %772, i32 0, i32 7
  %773 = load i32, i32* %height1543, align 4
  %774 = load i32, i32* %y, align 4
  %sub1544 = sub nsw i32 %774, %773
  store i32 %sub1544, i32* %y, align 4
  %775 = load i32, i32* %rn, align 4
  %dec = add nsw i32 %775, -1
  store i32 %dec, i32* %rn, align 4
  br label %for.cond.1488

for.end.1545:                                     ; preds = %if.then.1501, %land.end.1494
  br label %if.end.1546

if.end.1546:                                      ; preds = %for.end.1545, %land.lhs.true.1208, %if.then.1199
  br label %if.end.1547

if.end.1547:                                      ; preds = %if.end.1546, %if.end.1196
  br label %if.end.1548

if.end.1548:                                      ; preds = %if.end.1547, %if.end.1040
  %776 = load %struct.window*, %struct.window** %w.addr, align 8
  %vscroll1549 = getelementptr inbounds %struct.window, %struct.window* %776, i32 0, i32 68
  %777 = load i32, i32* %vscroll1549, align 4
  store i32 %777, i32* %y, align 4
  store i32 0, i32* %rn, align 4
  br label %for.cond.1550

for.cond.1550:                                    ; preds = %for.inc.2379, %if.end.1548
  %778 = load i32, i32* %y, align 4
  %779 = load i32, i32* %yb, align 4
  %cmp1551 = icmp slt i32 %778, %779
  br i1 %cmp1551, label %land.rhs.1553, label %land.end.1556

land.rhs.1553:                                    ; preds = %for.cond.1550
  %780 = load i32, i32* %rn, align 4
  %781 = load i32, i32* %nrows, align 4
  %cmp1554 = icmp slt i32 %780, %781
  br label %land.end.1556

land.end.1556:                                    ; preds = %land.rhs.1553, %for.cond.1550
  %782 = phi i1 [ false, %for.cond.1550 ], [ %cmp1554, %land.rhs.1553 ]
  br i1 %782, label %for.body.1557, label %for.end.2383

for.body.1557:                                    ; preds = %land.end.1556
  %783 = load %struct.window*, %struct.window** %w.addr, align 8
  %desired_matrix1558 = getelementptr inbounds %struct.window, %struct.window* %783, i32 0, i32 25
  %784 = load %struct.glyph_matrix*, %struct.glyph_matrix** %desired_matrix1558, align 8
  %rows1559 = getelementptr inbounds %struct.glyph_matrix, %struct.glyph_matrix* %784, i32 0, i32 1
  %785 = load %struct.glyph_row*, %struct.glyph_row** %rows1559, align 8
  %786 = load i32, i32* %rn, align 4
  %idx.ext1560 = sext i32 %786 to i64
  %add.ptr1561 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %785, i64 %idx.ext1560
  store %struct.glyph_row* %add.ptr1561, %struct.glyph_row** %row, align 8
  %787 = load %struct.window*, %struct.window** %w.addr, align 8
  %current_matrix1562 = getelementptr inbounds %struct.window, %struct.window* %787, i32 0, i32 24
  %788 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix1562, align 8
  %rows1563 = getelementptr inbounds %struct.glyph_matrix, %struct.glyph_matrix* %788, i32 0, i32 1
  %789 = load %struct.glyph_row*, %struct.glyph_row** %rows1563, align 8
  %790 = load i32, i32* %rn, align 4
  %idx.ext1564 = sext i32 %790 to i64
  %add.ptr1565 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %789, i64 %idx.ext1564
  store %struct.glyph_row* %add.ptr1565, %struct.glyph_row** %cur, align 8
  %791 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %enabled_p1566 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %791, i32 0, i32 22
  %792 = bitcast i40* %enabled_p1566 to i64*
  %bf.load1567 = load i64, i64* %792, align 4
  %bf.lshr1568 = lshr i64 %bf.load1567, 10
  %bf.clear1569 = and i64 %bf.lshr1568, 1
  %bf.cast1570 = trunc i64 %bf.clear1569 to i1
  br i1 %bf.cast1570, label %if.end.1572, label %if.then.1571

if.then.1571:                                     ; preds = %for.body.1557
  %793 = load %struct.glyph_row*, %struct.glyph_row** %cur, align 8
  store %struct.glyph_row* %793, %struct.glyph_row** %row, align 8
  br label %if.end.1572

if.end.1572:                                      ; preds = %if.then.1571, %for.body.1557
  store i32 0, i32* %right_face_id, align 4
  store i32 0, i32* %left_face_id, align 4
  store i32 0, i32* %right_offset, align 4
  store i32 0, i32* %left_offset, align 4
  store i8 0, i8* %periodic_p, align 1
  %794 = load %struct.window*, %struct.window** %w.addr, align 8
  %left_fringe_width1573 = getelementptr inbounds %struct.window, %struct.window* %794, i32 0, i32 57
  %795 = load i32, i32* %left_fringe_width1573, align 4
  %cmp1574 = icmp sge i32 %795, 0
  br i1 %cmp1574, label %cond.true.1576, label %cond.false.1578

cond.true.1576:                                   ; preds = %if.end.1572
  %796 = load %struct.window*, %struct.window** %w.addr, align 8
  %left_fringe_width1577 = getelementptr inbounds %struct.window, %struct.window* %796, i32 0, i32 57
  %797 = load i32, i32* %left_fringe_width1577, align 4
  br label %cond.end.1582

cond.false.1578:                                  ; preds = %if.end.1572
  %798 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame1579 = getelementptr inbounds %struct.window, %struct.window* %798, i32 0, i32 1
  %799 = load i64, i64* %frame1579, align 8
  %sub1580 = sub nsw i64 %799, 5
  %800 = inttoptr i64 %sub1580 to i8*
  %801 = bitcast i8* %800 to %struct.frame*
  %left_fringe_width1581 = getelementptr inbounds %struct.frame, %struct.frame* %801, i32 0, i32 54
  %802 = load i32, i32* %left_fringe_width1581, align 4
  br label %cond.end.1582

cond.end.1582:                                    ; preds = %cond.false.1578, %cond.true.1576
  %cond1583 = phi i32 [ %797, %cond.true.1576 ], [ %802, %cond.false.1578 ]
  %cmp1584 = icmp eq i32 %cond1583, 0
  br i1 %cmp1584, label %if.then.1586, label %if.else.1587

if.then.1586:                                     ; preds = %cond.end.1582
  store i32 0, i32* %left, align 4
  br label %if.end.1860

if.else.1587:                                     ; preds = %cond.end.1582
  %803 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %left_user_fringe_bitmap = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %803, i32 0, i32 17
  %804 = bitcast [11 x i8]* %left_user_fringe_bitmap to i88*
  %bf.load1588 = load i88, i88* %804, align 4
  %bf.clear1589 = and i88 %bf.load1588, 65535
  %bf.cast1590 = trunc i88 %bf.clear1589 to i32
  %cmp1591 = icmp ne i32 %bf.cast1590, 0
  br i1 %cmp1591, label %if.then.1593, label %if.else.1602

if.then.1593:                                     ; preds = %if.else.1587
  %805 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %left_user_fringe_bitmap1594 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %805, i32 0, i32 17
  %806 = bitcast [11 x i8]* %left_user_fringe_bitmap1594 to i88*
  %bf.load1595 = load i88, i88* %806, align 4
  %bf.clear1596 = and i88 %bf.load1595, 65535
  %bf.cast1597 = trunc i88 %bf.clear1596 to i32
  store i32 %bf.cast1597, i32* %left, align 4
  %807 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %left_user_fringe_face_id = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %807, i32 0, i32 17
  %808 = bitcast [11 x i8]* %left_user_fringe_face_id to i88*
  %bf.load1598 = load i88, i88* %808, align 4
  %bf.lshr1599 = lshr i88 %bf.load1598, 64
  %bf.clear1600 = and i88 %bf.lshr1599, 1048575
  %bf.cast1601 = trunc i88 %bf.clear1600 to i32
  store i32 %bf.cast1601, i32* %left_face_id, align 4
  br label %if.end.1859

if.else.1602:                                     ; preds = %if.else.1587
  %809 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %reversed_p = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %809, i32 0, i32 22
  %810 = bitcast i40* %reversed_p to i64*
  %bf.load1603 = load i64, i64* %810, align 4
  %bf.lshr1604 = lshr i64 %bf.load1603, 34
  %bf.clear1605 = and i64 %bf.lshr1604, 1
  %bf.cast1606 = trunc i64 %bf.clear1605 to i1
  br i1 %bf.cast1606, label %lor.lhs.false.1613, label %land.lhs.true.1607

land.lhs.true.1607:                               ; preds = %if.else.1602
  %811 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %truncated_on_left_p = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %811, i32 0, i32 22
  %812 = bitcast i40* %truncated_on_left_p to i64*
  %bf.load1608 = load i64, i64* %812, align 4
  %bf.lshr1609 = lshr i64 %bf.load1608, 11
  %bf.clear1610 = and i64 %bf.lshr1609, 1
  %bf.cast1611 = trunc i64 %bf.clear1610 to i1
  br i1 %bf.cast1611, label %if.then.1626, label %lor.lhs.false.1613

lor.lhs.false.1613:                               ; preds = %land.lhs.true.1607, %if.else.1602
  %813 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %reversed_p1614 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %813, i32 0, i32 22
  %814 = bitcast i40* %reversed_p1614 to i64*
  %bf.load1615 = load i64, i64* %814, align 4
  %bf.lshr1616 = lshr i64 %bf.load1615, 34
  %bf.clear1617 = and i64 %bf.lshr1616, 1
  %bf.cast1618 = trunc i64 %bf.clear1617 to i1
  br i1 %bf.cast1618, label %land.lhs.true.1620, label %if.else.1638

land.lhs.true.1620:                               ; preds = %lor.lhs.false.1613
  %815 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %truncated_on_right_p = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %815, i32 0, i32 22
  %816 = bitcast i40* %truncated_on_right_p to i64*
  %bf.load1621 = load i64, i64* %816, align 4
  %bf.lshr1622 = lshr i64 %bf.load1621, 12
  %bf.clear1623 = and i64 %bf.lshr1622, 1
  %bf.cast1624 = trunc i64 %bf.clear1623 to i1
  br i1 %bf.cast1624, label %if.then.1626, label %if.else.1638

if.then.1626:                                     ; preds = %land.lhs.true.1620, %land.lhs.true.1607
  %arrayidx1627 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 0
  %817 = load i32, i32* %arrayidx1627, align 4
  %cmp1628 = icmp sge i32 %817, 0
  br i1 %cmp1628, label %cond.true.1630, label %cond.false.1632

cond.true.1630:                                   ; preds = %if.then.1626
  %arrayidx1631 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 0
  %818 = load i32, i32* %arrayidx1631, align 4
  br label %cond.end.1636

cond.false.1632:                                  ; preds = %if.then.1626
  %819 = load %struct.window*, %struct.window** %w.addr, align 8
  %call1633 = call i64 @builtin_lisp_symbol(i32 936)
  %call1634 = call i32 @get_logical_fringe_bitmap(%struct.window* %819, i64 %call1633, i32 0, i32 0)
  %arrayidx1635 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 0
  store i32 %call1634, i32* %arrayidx1635, align 4
  br label %cond.end.1636

cond.end.1636:                                    ; preds = %cond.false.1632, %cond.true.1630
  %cond1637 = phi i32 [ %818, %cond.true.1630 ], [ %call1634, %cond.false.1632 ]
  store i32 %cond1637, i32* %left, align 4
  br label %if.end.1858

if.else.1638:                                     ; preds = %land.lhs.true.1620, %lor.lhs.false.1613
  %820 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %indicate_bob_p1639 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %820, i32 0, i32 22
  %821 = bitcast i40* %indicate_bob_p1639 to i64*
  %bf.load1640 = load i64, i64* %821, align 4
  %bf.lshr1641 = lshr i64 %bf.load1640, 30
  %bf.clear1642 = and i64 %bf.lshr1641, 1
  %bf.cast1643 = trunc i64 %bf.clear1642 to i1
  br i1 %bf.cast1643, label %land.lhs.true.1645, label %if.else.1698

land.lhs.true.1645:                               ; preds = %if.else.1638
  %822 = load i64, i64* %boundary_top, align 8
  %call1646 = call i64 @builtin_lisp_symbol(i32 607)
  %cmp1647 = icmp eq i64 %822, %call1646
  br i1 %cmp1647, label %if.then.1649, label %if.else.1698

if.then.1649:                                     ; preds = %land.lhs.true.1645
  %823 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %indicate_eob_p1650 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %823, i32 0, i32 22
  %824 = bitcast i40* %indicate_eob_p1650 to i64*
  %bf.load1651 = load i64, i64* %824, align 4
  %bf.lshr1652 = lshr i64 %bf.load1651, 32
  %bf.clear1653 = and i64 %bf.lshr1652, 1
  %bf.cast1654 = trunc i64 %bf.clear1653 to i1
  br i1 %bf.cast1654, label %land.lhs.true.1656, label %cond.false.1678

land.lhs.true.1656:                               ; preds = %if.then.1649
  %825 = load i64, i64* %boundary_bot, align 8
  %call1657 = call i64 @builtin_lisp_symbol(i32 607)
  %cmp1658 = icmp eq i64 %825, %call1657
  br i1 %cmp1658, label %cond.true.1660, label %cond.false.1678

cond.true.1660:                                   ; preds = %land.lhs.true.1656
  %826 = load i32, i32* %top_row_ends_at_zv_p, align 4
  %add1661 = add nsw i32 4, %826
  %idxprom1662 = sext i32 %add1661 to i64
  %arrayidx1663 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 %idxprom1662
  %827 = load i32, i32* %arrayidx1663, align 4
  %cmp1664 = icmp sge i32 %827, 0
  br i1 %cmp1664, label %cond.true.1666, label %cond.false.1670

cond.true.1666:                                   ; preds = %cond.true.1660
  %828 = load i32, i32* %top_row_ends_at_zv_p, align 4
  %add1667 = add nsw i32 4, %828
  %idxprom1668 = sext i32 %add1667 to i64
  %arrayidx1669 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 %idxprom1668
  %829 = load i32, i32* %arrayidx1669, align 4
  br label %cond.end.1676

cond.false.1670:                                  ; preds = %cond.true.1660
  %830 = load %struct.window*, %struct.window** %w.addr, align 8
  %call1671 = call i64 @builtin_lisp_symbol(i32 929)
  %831 = load i32, i32* %top_row_ends_at_zv_p, align 4
  %call1672 = call i32 @get_logical_fringe_bitmap(%struct.window* %830, i64 %call1671, i32 0, i32 %831)
  %832 = load i32, i32* %top_row_ends_at_zv_p, align 4
  %add1673 = add nsw i32 4, %832
  %idxprom1674 = sext i32 %add1673 to i64
  %arrayidx1675 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 %idxprom1674
  store i32 %call1672, i32* %arrayidx1675, align 4
  br label %cond.end.1676

cond.end.1676:                                    ; preds = %cond.false.1670, %cond.true.1666
  %cond1677 = phi i32 [ %829, %cond.true.1666 ], [ %call1672, %cond.false.1670 ]
  br label %cond.end.1690

cond.false.1678:                                  ; preds = %land.lhs.true.1656, %if.then.1649
  %arrayidx1679 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 8
  %833 = load i32, i32* %arrayidx1679, align 4
  %cmp1680 = icmp sge i32 %833, 0
  br i1 %cmp1680, label %cond.true.1682, label %cond.false.1684

cond.true.1682:                                   ; preds = %cond.false.1678
  %arrayidx1683 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 8
  %834 = load i32, i32* %arrayidx1683, align 4
  br label %cond.end.1688

cond.false.1684:                                  ; preds = %cond.false.1678
  %835 = load %struct.window*, %struct.window** %w.addr, align 8
  %call1685 = call i64 @builtin_lisp_symbol(i32 928)
  %call1686 = call i32 @get_logical_fringe_bitmap(%struct.window* %835, i64 %call1685, i32 0, i32 0)
  %arrayidx1687 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 8
  store i32 %call1686, i32* %arrayidx1687, align 4
  br label %cond.end.1688

cond.end.1688:                                    ; preds = %cond.false.1684, %cond.true.1682
  %cond1689 = phi i32 [ %834, %cond.true.1682 ], [ %call1686, %cond.false.1684 ]
  br label %cond.end.1690

cond.end.1690:                                    ; preds = %cond.end.1688, %cond.end.1676
  %cond1691 = phi i32 [ %cond1677, %cond.end.1676 ], [ %cond1689, %cond.end.1688 ]
  store i32 %cond1691, i32* %left, align 4
  %836 = load i32, i32* %top_ind_min_y, align 4
  %cmp1692 = icmp sge i32 %836, 0
  br i1 %cmp1692, label %if.then.1694, label %if.end.1697

if.then.1694:                                     ; preds = %cond.end.1690
  %837 = load i32, i32* %top_ind_min_y, align 4
  %838 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %y1695 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %838, i32 0, i32 4
  %839 = load i32, i32* %y1695, align 4
  %sub1696 = sub nsw i32 %837, %839
  store i32 %sub1696, i32* %left_offset, align 4
  br label %if.end.1697

if.end.1697:                                      ; preds = %if.then.1694, %cond.end.1690
  br label %if.end.1857

if.else.1698:                                     ; preds = %land.lhs.true.1645, %if.else.1638
  %840 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %indicate_eob_p1699 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %840, i32 0, i32 22
  %841 = bitcast i40* %indicate_eob_p1699 to i64*
  %bf.load1700 = load i64, i64* %841, align 4
  %bf.lshr1701 = lshr i64 %bf.load1700, 32
  %bf.clear1702 = and i64 %bf.lshr1701, 1
  %bf.cast1703 = trunc i64 %bf.clear1702 to i1
  br i1 %bf.cast1703, label %land.lhs.true.1705, label %if.else.1735

land.lhs.true.1705:                               ; preds = %if.else.1698
  %842 = load i64, i64* %boundary_bot, align 8
  %call1706 = call i64 @builtin_lisp_symbol(i32 607)
  %cmp1707 = icmp eq i64 %842, %call1706
  br i1 %cmp1707, label %if.then.1709, label %if.else.1735

if.then.1709:                                     ; preds = %land.lhs.true.1705
  %843 = load i32, i32* %bot_row_ends_at_zv_p, align 4
  %add1710 = add nsw i32 12, %843
  %idxprom1711 = sext i32 %add1710 to i64
  %arrayidx1712 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 %idxprom1711
  %844 = load i32, i32* %arrayidx1712, align 4
  %cmp1713 = icmp sge i32 %844, 0
  br i1 %cmp1713, label %cond.true.1715, label %cond.false.1719

cond.true.1715:                                   ; preds = %if.then.1709
  %845 = load i32, i32* %bot_row_ends_at_zv_p, align 4
  %add1716 = add nsw i32 12, %845
  %idxprom1717 = sext i32 %add1716 to i64
  %arrayidx1718 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 %idxprom1717
  %846 = load i32, i32* %arrayidx1718, align 4
  br label %cond.end.1725

cond.false.1719:                                  ; preds = %if.then.1709
  %847 = load %struct.window*, %struct.window** %w.addr, align 8
  %call1720 = call i64 @builtin_lisp_symbol(i32 213)
  %848 = load i32, i32* %bot_row_ends_at_zv_p, align 4
  %call1721 = call i32 @get_logical_fringe_bitmap(%struct.window* %847, i64 %call1720, i32 0, i32 %848)
  %849 = load i32, i32* %bot_row_ends_at_zv_p, align 4
  %add1722 = add nsw i32 12, %849
  %idxprom1723 = sext i32 %add1722 to i64
  %arrayidx1724 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 %idxprom1723
  store i32 %call1721, i32* %arrayidx1724, align 4
  br label %cond.end.1725

cond.end.1725:                                    ; preds = %cond.false.1719, %cond.true.1715
  %cond1726 = phi i32 [ %846, %cond.true.1715 ], [ %call1721, %cond.false.1719 ]
  store i32 %cond1726, i32* %left, align 4
  %850 = load i32, i32* %bot_ind_max_y, align 4
  %cmp1727 = icmp sge i32 %850, 0
  br i1 %cmp1727, label %if.then.1729, label %if.end.1734

if.then.1729:                                     ; preds = %cond.end.1725
  %851 = load i32, i32* %bot_ind_max_y, align 4
  %852 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %y1730 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %852, i32 0, i32 4
  %853 = load i32, i32* %y1730, align 4
  %854 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %visible_height1731 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %854, i32 0, i32 10
  %855 = load i32, i32* %visible_height1731, align 4
  %add1732 = add nsw i32 %853, %855
  %sub1733 = sub nsw i32 %851, %add1732
  store i32 %sub1733, i32* %left_offset, align 4
  br label %if.end.1734

if.end.1734:                                      ; preds = %if.then.1729, %cond.end.1725
  br label %if.end.1856

if.else.1735:                                     ; preds = %land.lhs.true.1705, %if.else.1698
  %856 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %reversed_p1736 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %856, i32 0, i32 22
  %857 = bitcast i40* %reversed_p1736 to i64*
  %bf.load1737 = load i64, i64* %857, align 4
  %bf.lshr1738 = lshr i64 %bf.load1737, 34
  %bf.clear1739 = and i64 %bf.lshr1738, 1
  %bf.cast1740 = trunc i64 %bf.clear1739 to i1
  br i1 %bf.cast1740, label %lor.lhs.false.1744, label %land.lhs.true.1741

land.lhs.true.1741:                               ; preds = %if.else.1735
  %858 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %continuation_lines_width = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %858, i32 0, i32 23
  %859 = load i32, i32* %continuation_lines_width, align 4
  %cmp1742 = icmp sgt i32 %859, 0
  br i1 %cmp1742, label %if.then.1757, label %lor.lhs.false.1744

lor.lhs.false.1744:                               ; preds = %land.lhs.true.1741, %if.else.1735
  %860 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %reversed_p1745 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %860, i32 0, i32 22
  %861 = bitcast i40* %reversed_p1745 to i64*
  %bf.load1746 = load i64, i64* %861, align 4
  %bf.lshr1747 = lshr i64 %bf.load1746, 34
  %bf.clear1748 = and i64 %bf.lshr1747, 1
  %bf.cast1749 = trunc i64 %bf.clear1748 to i1
  br i1 %bf.cast1749, label %land.lhs.true.1751, label %if.else.1769

land.lhs.true.1751:                               ; preds = %lor.lhs.false.1744
  %862 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %continued_p = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %862, i32 0, i32 22
  %863 = bitcast i40* %continued_p to i64*
  %bf.load1752 = load i64, i64* %863, align 4
  %bf.lshr1753 = lshr i64 %bf.load1752, 13
  %bf.clear1754 = and i64 %bf.lshr1753, 1
  %bf.cast1755 = trunc i64 %bf.clear1754 to i1
  br i1 %bf.cast1755, label %if.then.1757, label %if.else.1769

if.then.1757:                                     ; preds = %land.lhs.true.1751, %land.lhs.true.1741
  %arrayidx1758 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 16
  %864 = load i32, i32* %arrayidx1758, align 4
  %cmp1759 = icmp sge i32 %864, 0
  br i1 %cmp1759, label %cond.true.1761, label %cond.false.1763

cond.true.1761:                                   ; preds = %if.then.1757
  %arrayidx1762 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 16
  %865 = load i32, i32* %arrayidx1762, align 4
  br label %cond.end.1767

cond.false.1763:                                  ; preds = %if.then.1757
  %866 = load %struct.window*, %struct.window** %w.addr, align 8
  %call1764 = call i64 @builtin_lisp_symbol(i32 297)
  %call1765 = call i32 @get_logical_fringe_bitmap(%struct.window* %866, i64 %call1764, i32 0, i32 0)
  %arrayidx1766 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 16
  store i32 %call1765, i32* %arrayidx1766, align 4
  br label %cond.end.1767

cond.end.1767:                                    ; preds = %cond.false.1763, %cond.true.1761
  %cond1768 = phi i32 [ %865, %cond.true.1761 ], [ %call1765, %cond.false.1763 ]
  store i32 %cond1768, i32* %left, align 4
  br label %if.end.1855

if.else.1769:                                     ; preds = %land.lhs.true.1751, %lor.lhs.false.1744
  %867 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %indicate_empty_line_p = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %867, i32 0, i32 22
  %868 = bitcast i40* %indicate_empty_line_p to i64*
  %bf.load1770 = load i64, i64* %868, align 4
  %bf.lshr1771 = lshr i64 %bf.load1770, 17
  %bf.clear1772 = and i64 %bf.lshr1771, 1
  %bf.cast1773 = trunc i64 %bf.clear1772 to i1
  br i1 %bf.cast1773, label %land.lhs.true.1775, label %if.else.1791

land.lhs.true.1775:                               ; preds = %if.else.1769
  %869 = load i64, i64* %empty_pos, align 8
  %call1776 = call i64 @builtin_lisp_symbol(i32 607)
  %cmp1777 = icmp eq i64 %869, %call1776
  br i1 %cmp1777, label %if.then.1779, label %if.else.1791

if.then.1779:                                     ; preds = %land.lhs.true.1775
  %arrayidx1780 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 20
  %870 = load i32, i32* %arrayidx1780, align 4
  %cmp1781 = icmp sge i32 %870, 0
  br i1 %cmp1781, label %cond.true.1783, label %cond.false.1785

cond.true.1783:                                   ; preds = %if.then.1779
  %arrayidx1784 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 20
  %871 = load i32, i32* %arrayidx1784, align 4
  br label %cond.end.1789

cond.false.1785:                                  ; preds = %if.then.1779
  %872 = load %struct.window*, %struct.window** %w.addr, align 8
  %call1786 = call i64 @builtin_lisp_symbol(i32 364)
  %call1787 = call i32 @get_logical_fringe_bitmap(%struct.window* %872, i64 %call1786, i32 0, i32 0)
  %arrayidx1788 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 20
  store i32 %call1787, i32* %arrayidx1788, align 4
  br label %cond.end.1789

cond.end.1789:                                    ; preds = %cond.false.1785, %cond.true.1783
  %cond1790 = phi i32 [ %871, %cond.true.1783 ], [ %call1787, %cond.false.1785 ]
  store i32 %cond1790, i32* %left, align 4
  br label %if.end.1854

if.else.1791:                                     ; preds = %land.lhs.true.1775, %if.else.1769
  %873 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %indicate_top_line_p1792 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %873, i32 0, i32 22
  %874 = bitcast i40* %indicate_top_line_p1792 to i64*
  %bf.load1793 = load i64, i64* %874, align 4
  %bf.lshr1794 = lshr i64 %bf.load1793, 31
  %bf.clear1795 = and i64 %bf.lshr1794, 1
  %bf.cast1796 = trunc i64 %bf.clear1795 to i1
  br i1 %bf.cast1796, label %land.lhs.true.1798, label %if.else.1820

land.lhs.true.1798:                               ; preds = %if.else.1791
  %875 = load i64, i64* %arrow_top, align 8
  %call1799 = call i64 @builtin_lisp_symbol(i32 607)
  %cmp1800 = icmp eq i64 %875, %call1799
  br i1 %cmp1800, label %if.then.1802, label %if.else.1820

if.then.1802:                                     ; preds = %land.lhs.true.1798
  %arrayidx1803 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 24
  %876 = load i32, i32* %arrayidx1803, align 4
  %cmp1804 = icmp sge i32 %876, 0
  br i1 %cmp1804, label %cond.true.1806, label %cond.false.1808

cond.true.1806:                                   ; preds = %if.then.1802
  %arrayidx1807 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 24
  %877 = load i32, i32* %arrayidx1807, align 4
  br label %cond.end.1812

cond.false.1808:                                  ; preds = %if.then.1802
  %878 = load %struct.window*, %struct.window** %w.addr, align 8
  %call1809 = call i64 @builtin_lisp_symbol(i32 977)
  %call1810 = call i32 @get_logical_fringe_bitmap(%struct.window* %878, i64 %call1809, i32 0, i32 0)
  %arrayidx1811 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 24
  store i32 %call1810, i32* %arrayidx1811, align 4
  br label %cond.end.1812

cond.end.1812:                                    ; preds = %cond.false.1808, %cond.true.1806
  %cond1813 = phi i32 [ %877, %cond.true.1806 ], [ %call1810, %cond.false.1808 ]
  store i32 %cond1813, i32* %left, align 4
  %879 = load i32, i32* %top_ind_min_y, align 4
  %cmp1814 = icmp sge i32 %879, 0
  br i1 %cmp1814, label %if.then.1816, label %if.end.1819

if.then.1816:                                     ; preds = %cond.end.1812
  %880 = load i32, i32* %top_ind_min_y, align 4
  %881 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %y1817 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %881, i32 0, i32 4
  %882 = load i32, i32* %y1817, align 4
  %sub1818 = sub nsw i32 %880, %882
  store i32 %sub1818, i32* %left_offset, align 4
  br label %if.end.1819

if.end.1819:                                      ; preds = %if.then.1816, %cond.end.1812
  br label %if.end.1853

if.else.1820:                                     ; preds = %land.lhs.true.1798, %if.else.1791
  %883 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %indicate_bottom_line_p1821 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %883, i32 0, i32 22
  %884 = bitcast i40* %indicate_bottom_line_p1821 to i64*
  %bf.load1822 = load i64, i64* %884, align 4
  %bf.lshr1823 = lshr i64 %bf.load1822, 33
  %bf.clear1824 = and i64 %bf.lshr1823, 1
  %bf.cast1825 = trunc i64 %bf.clear1824 to i1
  br i1 %bf.cast1825, label %land.lhs.true.1827, label %if.else.1851

land.lhs.true.1827:                               ; preds = %if.else.1820
  %885 = load i64, i64* %arrow_bot, align 8
  %call1828 = call i64 @builtin_lisp_symbol(i32 607)
  %cmp1829 = icmp eq i64 %885, %call1828
  br i1 %cmp1829, label %if.then.1831, label %if.else.1851

if.then.1831:                                     ; preds = %land.lhs.true.1827
  %arrayidx1832 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 28
  %886 = load i32, i32* %arrayidx1832, align 4
  %cmp1833 = icmp sge i32 %886, 0
  br i1 %cmp1833, label %cond.true.1835, label %cond.false.1837

cond.true.1835:                                   ; preds = %if.then.1831
  %arrayidx1836 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 28
  %887 = load i32, i32* %arrayidx1836, align 4
  br label %cond.end.1841

cond.false.1837:                                  ; preds = %if.then.1831
  %888 = load %struct.window*, %struct.window** %w.addr, align 8
  %call1838 = call i64 @builtin_lisp_symbol(i32 352)
  %call1839 = call i32 @get_logical_fringe_bitmap(%struct.window* %888, i64 %call1838, i32 0, i32 0)
  %arrayidx1840 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 28
  store i32 %call1839, i32* %arrayidx1840, align 4
  br label %cond.end.1841

cond.end.1841:                                    ; preds = %cond.false.1837, %cond.true.1835
  %cond1842 = phi i32 [ %887, %cond.true.1835 ], [ %call1839, %cond.false.1837 ]
  store i32 %cond1842, i32* %left, align 4
  %889 = load i32, i32* %bot_ind_max_y, align 4
  %cmp1843 = icmp sge i32 %889, 0
  br i1 %cmp1843, label %if.then.1845, label %if.end.1850

if.then.1845:                                     ; preds = %cond.end.1841
  %890 = load i32, i32* %bot_ind_max_y, align 4
  %891 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %y1846 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %891, i32 0, i32 4
  %892 = load i32, i32* %y1846, align 4
  %893 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %visible_height1847 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %893, i32 0, i32 10
  %894 = load i32, i32* %visible_height1847, align 4
  %add1848 = add nsw i32 %892, %894
  %sub1849 = sub nsw i32 %890, %add1848
  store i32 %sub1849, i32* %left_offset, align 4
  br label %if.end.1850

if.end.1850:                                      ; preds = %if.then.1845, %cond.end.1841
  br label %if.end.1852

if.else.1851:                                     ; preds = %land.lhs.true.1827, %if.else.1820
  store i32 0, i32* %left, align 4
  br label %if.end.1852

if.end.1852:                                      ; preds = %if.else.1851, %if.end.1850
  br label %if.end.1853

if.end.1853:                                      ; preds = %if.end.1852, %if.end.1819
  br label %if.end.1854

if.end.1854:                                      ; preds = %if.end.1853, %cond.end.1789
  br label %if.end.1855

if.end.1855:                                      ; preds = %if.end.1854, %cond.end.1767
  br label %if.end.1856

if.end.1856:                                      ; preds = %if.end.1855, %if.end.1734
  br label %if.end.1857

if.end.1857:                                      ; preds = %if.end.1856, %if.end.1697
  br label %if.end.1858

if.end.1858:                                      ; preds = %if.end.1857, %cond.end.1636
  br label %if.end.1859

if.end.1859:                                      ; preds = %if.end.1858, %if.then.1593
  br label %if.end.1860

if.end.1860:                                      ; preds = %if.end.1859, %if.then.1586
  %895 = load %struct.window*, %struct.window** %w.addr, align 8
  %right_fringe_width = getelementptr inbounds %struct.window, %struct.window* %895, i32 0, i32 58
  %896 = load i32, i32* %right_fringe_width, align 4
  %cmp1861 = icmp sge i32 %896, 0
  br i1 %cmp1861, label %cond.true.1863, label %cond.false.1865

cond.true.1863:                                   ; preds = %if.end.1860
  %897 = load %struct.window*, %struct.window** %w.addr, align 8
  %right_fringe_width1864 = getelementptr inbounds %struct.window, %struct.window* %897, i32 0, i32 58
  %898 = load i32, i32* %right_fringe_width1864, align 4
  br label %cond.end.1869

cond.false.1865:                                  ; preds = %if.end.1860
  %899 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame1866 = getelementptr inbounds %struct.window, %struct.window* %899, i32 0, i32 1
  %900 = load i64, i64* %frame1866, align 8
  %sub1867 = sub nsw i64 %900, 5
  %901 = inttoptr i64 %sub1867 to i8*
  %902 = bitcast i8* %901 to %struct.frame*
  %right_fringe_width1868 = getelementptr inbounds %struct.frame, %struct.frame* %902, i32 0, i32 55
  %903 = load i32, i32* %right_fringe_width1868, align 4
  br label %cond.end.1869

cond.end.1869:                                    ; preds = %cond.false.1865, %cond.true.1863
  %cond1870 = phi i32 [ %898, %cond.true.1863 ], [ %903, %cond.false.1865 ]
  %cmp1871 = icmp eq i32 %cond1870, 0
  br i1 %cmp1871, label %if.then.1873, label %if.else.1874

if.then.1873:                                     ; preds = %cond.end.1869
  store i32 0, i32* %right, align 4
  br label %if.end.2153

if.else.1874:                                     ; preds = %cond.end.1869
  %904 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %right_user_fringe_bitmap = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %904, i32 0, i32 17
  %905 = bitcast [11 x i8]* %right_user_fringe_bitmap to i88*
  %bf.load1875 = load i88, i88* %905, align 4
  %bf.lshr1876 = lshr i88 %bf.load1875, 16
  %bf.clear1877 = and i88 %bf.lshr1876, 65535
  %bf.cast1878 = trunc i88 %bf.clear1877 to i32
  %cmp1879 = icmp ne i32 %bf.cast1878, 0
  br i1 %cmp1879, label %if.then.1881, label %if.else.1889

if.then.1881:                                     ; preds = %if.else.1874
  %906 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %right_user_fringe_bitmap1882 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %906, i32 0, i32 17
  %907 = bitcast [11 x i8]* %right_user_fringe_bitmap1882 to i88*
  %bf.load1883 = load i88, i88* %907, align 4
  %bf.lshr1884 = lshr i88 %bf.load1883, 16
  %bf.clear1885 = and i88 %bf.lshr1884, 65535
  %bf.cast1886 = trunc i88 %bf.clear1885 to i32
  store i32 %bf.cast1886, i32* %right, align 4
  %908 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %right_user_fringe_face_id = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %908, i32 0, i32 19
  %909 = bitcast i24* %right_user_fringe_face_id to i32*
  %bf.load1887 = load i32, i32* %909, align 8
  %bf.clear1888 = and i32 %bf.load1887, 1048575
  store i32 %bf.clear1888, i32* %right_face_id, align 4
  br label %if.end.2152

if.else.1889:                                     ; preds = %if.else.1874
  %910 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %reversed_p1890 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %910, i32 0, i32 22
  %911 = bitcast i40* %reversed_p1890 to i64*
  %bf.load1891 = load i64, i64* %911, align 4
  %bf.lshr1892 = lshr i64 %bf.load1891, 34
  %bf.clear1893 = and i64 %bf.lshr1892, 1
  %bf.cast1894 = trunc i64 %bf.clear1893 to i1
  br i1 %bf.cast1894, label %lor.lhs.false.1902, label %land.lhs.true.1895

land.lhs.true.1895:                               ; preds = %if.else.1889
  %912 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %truncated_on_right_p1896 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %912, i32 0, i32 22
  %913 = bitcast i40* %truncated_on_right_p1896 to i64*
  %bf.load1897 = load i64, i64* %913, align 4
  %bf.lshr1898 = lshr i64 %bf.load1897, 12
  %bf.clear1899 = and i64 %bf.lshr1898, 1
  %bf.cast1900 = trunc i64 %bf.clear1899 to i1
  br i1 %bf.cast1900, label %if.then.1916, label %lor.lhs.false.1902

lor.lhs.false.1902:                               ; preds = %land.lhs.true.1895, %if.else.1889
  %914 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %reversed_p1903 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %914, i32 0, i32 22
  %915 = bitcast i40* %reversed_p1903 to i64*
  %bf.load1904 = load i64, i64* %915, align 4
  %bf.lshr1905 = lshr i64 %bf.load1904, 34
  %bf.clear1906 = and i64 %bf.lshr1905, 1
  %bf.cast1907 = trunc i64 %bf.clear1906 to i1
  br i1 %bf.cast1907, label %land.lhs.true.1909, label %if.else.1928

land.lhs.true.1909:                               ; preds = %lor.lhs.false.1902
  %916 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %truncated_on_left_p1910 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %916, i32 0, i32 22
  %917 = bitcast i40* %truncated_on_left_p1910 to i64*
  %bf.load1911 = load i64, i64* %917, align 4
  %bf.lshr1912 = lshr i64 %bf.load1911, 11
  %bf.clear1913 = and i64 %bf.lshr1912, 1
  %bf.cast1914 = trunc i64 %bf.clear1913 to i1
  br i1 %bf.cast1914, label %if.then.1916, label %if.else.1928

if.then.1916:                                     ; preds = %land.lhs.true.1909, %land.lhs.true.1895
  %arrayidx1917 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 2
  %918 = load i32, i32* %arrayidx1917, align 4
  %cmp1918 = icmp sge i32 %918, 0
  br i1 %cmp1918, label %cond.true.1920, label %cond.false.1922

cond.true.1920:                                   ; preds = %if.then.1916
  %arrayidx1921 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 2
  %919 = load i32, i32* %arrayidx1921, align 4
  br label %cond.end.1926

cond.false.1922:                                  ; preds = %if.then.1916
  %920 = load %struct.window*, %struct.window** %w.addr, align 8
  %call1923 = call i64 @builtin_lisp_symbol(i32 936)
  %call1924 = call i32 @get_logical_fringe_bitmap(%struct.window* %920, i64 %call1923, i32 1, i32 0)
  %arrayidx1925 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 2
  store i32 %call1924, i32* %arrayidx1925, align 4
  br label %cond.end.1926

cond.end.1926:                                    ; preds = %cond.false.1922, %cond.true.1920
  %cond1927 = phi i32 [ %919, %cond.true.1920 ], [ %call1924, %cond.false.1922 ]
  store i32 %cond1927, i32* %right, align 4
  br label %if.end.2151

if.else.1928:                                     ; preds = %land.lhs.true.1909, %lor.lhs.false.1902
  %921 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %indicate_bob_p1929 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %921, i32 0, i32 22
  %922 = bitcast i40* %indicate_bob_p1929 to i64*
  %bf.load1930 = load i64, i64* %922, align 4
  %bf.lshr1931 = lshr i64 %bf.load1930, 30
  %bf.clear1932 = and i64 %bf.lshr1931, 1
  %bf.cast1933 = trunc i64 %bf.clear1932 to i1
  br i1 %bf.cast1933, label %land.lhs.true.1935, label %if.else.1988

land.lhs.true.1935:                               ; preds = %if.else.1928
  %923 = load i64, i64* %boundary_top, align 8
  %call1936 = call i64 @builtin_lisp_symbol(i32 811)
  %cmp1937 = icmp eq i64 %923, %call1936
  br i1 %cmp1937, label %if.then.1939, label %if.else.1988

if.then.1939:                                     ; preds = %land.lhs.true.1935
  %924 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %indicate_eob_p1940 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %924, i32 0, i32 22
  %925 = bitcast i40* %indicate_eob_p1940 to i64*
  %bf.load1941 = load i64, i64* %925, align 4
  %bf.lshr1942 = lshr i64 %bf.load1941, 32
  %bf.clear1943 = and i64 %bf.lshr1942, 1
  %bf.cast1944 = trunc i64 %bf.clear1943 to i1
  br i1 %bf.cast1944, label %land.lhs.true.1946, label %cond.false.1968

land.lhs.true.1946:                               ; preds = %if.then.1939
  %926 = load i64, i64* %boundary_bot, align 8
  %call1947 = call i64 @builtin_lisp_symbol(i32 811)
  %cmp1948 = icmp eq i64 %926, %call1947
  br i1 %cmp1948, label %cond.true.1950, label %cond.false.1968

cond.true.1950:                                   ; preds = %land.lhs.true.1946
  %927 = load i32, i32* %top_row_ends_at_zv_p, align 4
  %add1951 = add nsw i32 6, %927
  %idxprom1952 = sext i32 %add1951 to i64
  %arrayidx1953 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 %idxprom1952
  %928 = load i32, i32* %arrayidx1953, align 4
  %cmp1954 = icmp sge i32 %928, 0
  br i1 %cmp1954, label %cond.true.1956, label %cond.false.1960

cond.true.1956:                                   ; preds = %cond.true.1950
  %929 = load i32, i32* %top_row_ends_at_zv_p, align 4
  %add1957 = add nsw i32 6, %929
  %idxprom1958 = sext i32 %add1957 to i64
  %arrayidx1959 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 %idxprom1958
  %930 = load i32, i32* %arrayidx1959, align 4
  br label %cond.end.1966

cond.false.1960:                                  ; preds = %cond.true.1950
  %931 = load %struct.window*, %struct.window** %w.addr, align 8
  %call1961 = call i64 @builtin_lisp_symbol(i32 929)
  %932 = load i32, i32* %top_row_ends_at_zv_p, align 4
  %call1962 = call i32 @get_logical_fringe_bitmap(%struct.window* %931, i64 %call1961, i32 1, i32 %932)
  %933 = load i32, i32* %top_row_ends_at_zv_p, align 4
  %add1963 = add nsw i32 6, %933
  %idxprom1964 = sext i32 %add1963 to i64
  %arrayidx1965 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 %idxprom1964
  store i32 %call1962, i32* %arrayidx1965, align 4
  br label %cond.end.1966

cond.end.1966:                                    ; preds = %cond.false.1960, %cond.true.1956
  %cond1967 = phi i32 [ %930, %cond.true.1956 ], [ %call1962, %cond.false.1960 ]
  br label %cond.end.1980

cond.false.1968:                                  ; preds = %land.lhs.true.1946, %if.then.1939
  %arrayidx1969 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 10
  %934 = load i32, i32* %arrayidx1969, align 4
  %cmp1970 = icmp sge i32 %934, 0
  br i1 %cmp1970, label %cond.true.1972, label %cond.false.1974

cond.true.1972:                                   ; preds = %cond.false.1968
  %arrayidx1973 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 10
  %935 = load i32, i32* %arrayidx1973, align 4
  br label %cond.end.1978

cond.false.1974:                                  ; preds = %cond.false.1968
  %936 = load %struct.window*, %struct.window** %w.addr, align 8
  %call1975 = call i64 @builtin_lisp_symbol(i32 928)
  %call1976 = call i32 @get_logical_fringe_bitmap(%struct.window* %936, i64 %call1975, i32 1, i32 0)
  %arrayidx1977 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 10
  store i32 %call1976, i32* %arrayidx1977, align 4
  br label %cond.end.1978

cond.end.1978:                                    ; preds = %cond.false.1974, %cond.true.1972
  %cond1979 = phi i32 [ %935, %cond.true.1972 ], [ %call1976, %cond.false.1974 ]
  br label %cond.end.1980

cond.end.1980:                                    ; preds = %cond.end.1978, %cond.end.1966
  %cond1981 = phi i32 [ %cond1967, %cond.end.1966 ], [ %cond1979, %cond.end.1978 ]
  store i32 %cond1981, i32* %right, align 4
  %937 = load i32, i32* %top_ind_min_y, align 4
  %cmp1982 = icmp sge i32 %937, 0
  br i1 %cmp1982, label %if.then.1984, label %if.end.1987

if.then.1984:                                     ; preds = %cond.end.1980
  %938 = load i32, i32* %top_ind_min_y, align 4
  %939 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %y1985 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %939, i32 0, i32 4
  %940 = load i32, i32* %y1985, align 4
  %sub1986 = sub nsw i32 %938, %940
  store i32 %sub1986, i32* %right_offset, align 4
  br label %if.end.1987

if.end.1987:                                      ; preds = %if.then.1984, %cond.end.1980
  br label %if.end.2150

if.else.1988:                                     ; preds = %land.lhs.true.1935, %if.else.1928
  %941 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %indicate_eob_p1989 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %941, i32 0, i32 22
  %942 = bitcast i40* %indicate_eob_p1989 to i64*
  %bf.load1990 = load i64, i64* %942, align 4
  %bf.lshr1991 = lshr i64 %bf.load1990, 32
  %bf.clear1992 = and i64 %bf.lshr1991, 1
  %bf.cast1993 = trunc i64 %bf.clear1992 to i1
  br i1 %bf.cast1993, label %land.lhs.true.1995, label %if.else.2025

land.lhs.true.1995:                               ; preds = %if.else.1988
  %943 = load i64, i64* %boundary_bot, align 8
  %call1996 = call i64 @builtin_lisp_symbol(i32 811)
  %cmp1997 = icmp eq i64 %943, %call1996
  br i1 %cmp1997, label %if.then.1999, label %if.else.2025

if.then.1999:                                     ; preds = %land.lhs.true.1995
  %944 = load i32, i32* %bot_row_ends_at_zv_p, align 4
  %add2000 = add nsw i32 14, %944
  %idxprom2001 = sext i32 %add2000 to i64
  %arrayidx2002 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 %idxprom2001
  %945 = load i32, i32* %arrayidx2002, align 4
  %cmp2003 = icmp sge i32 %945, 0
  br i1 %cmp2003, label %cond.true.2005, label %cond.false.2009

cond.true.2005:                                   ; preds = %if.then.1999
  %946 = load i32, i32* %bot_row_ends_at_zv_p, align 4
  %add2006 = add nsw i32 14, %946
  %idxprom2007 = sext i32 %add2006 to i64
  %arrayidx2008 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 %idxprom2007
  %947 = load i32, i32* %arrayidx2008, align 4
  br label %cond.end.2015

cond.false.2009:                                  ; preds = %if.then.1999
  %948 = load %struct.window*, %struct.window** %w.addr, align 8
  %call2010 = call i64 @builtin_lisp_symbol(i32 213)
  %949 = load i32, i32* %bot_row_ends_at_zv_p, align 4
  %call2011 = call i32 @get_logical_fringe_bitmap(%struct.window* %948, i64 %call2010, i32 1, i32 %949)
  %950 = load i32, i32* %bot_row_ends_at_zv_p, align 4
  %add2012 = add nsw i32 14, %950
  %idxprom2013 = sext i32 %add2012 to i64
  %arrayidx2014 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 %idxprom2013
  store i32 %call2011, i32* %arrayidx2014, align 4
  br label %cond.end.2015

cond.end.2015:                                    ; preds = %cond.false.2009, %cond.true.2005
  %cond2016 = phi i32 [ %947, %cond.true.2005 ], [ %call2011, %cond.false.2009 ]
  store i32 %cond2016, i32* %right, align 4
  %951 = load i32, i32* %bot_ind_max_y, align 4
  %cmp2017 = icmp sge i32 %951, 0
  br i1 %cmp2017, label %if.then.2019, label %if.end.2024

if.then.2019:                                     ; preds = %cond.end.2015
  %952 = load i32, i32* %bot_ind_max_y, align 4
  %953 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %y2020 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %953, i32 0, i32 4
  %954 = load i32, i32* %y2020, align 4
  %955 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %visible_height2021 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %955, i32 0, i32 10
  %956 = load i32, i32* %visible_height2021, align 4
  %add2022 = add nsw i32 %954, %956
  %sub2023 = sub nsw i32 %952, %add2022
  store i32 %sub2023, i32* %right_offset, align 4
  br label %if.end.2024

if.end.2024:                                      ; preds = %if.then.2019, %cond.end.2015
  br label %if.end.2149

if.else.2025:                                     ; preds = %land.lhs.true.1995, %if.else.1988
  %957 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %reversed_p2026 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %957, i32 0, i32 22
  %958 = bitcast i40* %reversed_p2026 to i64*
  %bf.load2027 = load i64, i64* %958, align 4
  %bf.lshr2028 = lshr i64 %bf.load2027, 34
  %bf.clear2029 = and i64 %bf.lshr2028, 1
  %bf.cast2030 = trunc i64 %bf.clear2029 to i1
  br i1 %bf.cast2030, label %lor.lhs.false.2038, label %land.lhs.true.2031

land.lhs.true.2031:                               ; preds = %if.else.2025
  %959 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %continued_p2032 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %959, i32 0, i32 22
  %960 = bitcast i40* %continued_p2032 to i64*
  %bf.load2033 = load i64, i64* %960, align 4
  %bf.lshr2034 = lshr i64 %bf.load2033, 13
  %bf.clear2035 = and i64 %bf.lshr2034, 1
  %bf.cast2036 = trunc i64 %bf.clear2035 to i1
  br i1 %bf.cast2036, label %if.then.2049, label %lor.lhs.false.2038

lor.lhs.false.2038:                               ; preds = %land.lhs.true.2031, %if.else.2025
  %961 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %reversed_p2039 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %961, i32 0, i32 22
  %962 = bitcast i40* %reversed_p2039 to i64*
  %bf.load2040 = load i64, i64* %962, align 4
  %bf.lshr2041 = lshr i64 %bf.load2040, 34
  %bf.clear2042 = and i64 %bf.lshr2041, 1
  %bf.cast2043 = trunc i64 %bf.clear2042 to i1
  br i1 %bf.cast2043, label %land.lhs.true.2045, label %if.else.2061

land.lhs.true.2045:                               ; preds = %lor.lhs.false.2038
  %963 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %continuation_lines_width2046 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %963, i32 0, i32 23
  %964 = load i32, i32* %continuation_lines_width2046, align 4
  %cmp2047 = icmp sgt i32 %964, 0
  br i1 %cmp2047, label %if.then.2049, label %if.else.2061

if.then.2049:                                     ; preds = %land.lhs.true.2045, %land.lhs.true.2031
  %arrayidx2050 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 18
  %965 = load i32, i32* %arrayidx2050, align 4
  %cmp2051 = icmp sge i32 %965, 0
  br i1 %cmp2051, label %cond.true.2053, label %cond.false.2055

cond.true.2053:                                   ; preds = %if.then.2049
  %arrayidx2054 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 18
  %966 = load i32, i32* %arrayidx2054, align 4
  br label %cond.end.2059

cond.false.2055:                                  ; preds = %if.then.2049
  %967 = load %struct.window*, %struct.window** %w.addr, align 8
  %call2056 = call i64 @builtin_lisp_symbol(i32 297)
  %call2057 = call i32 @get_logical_fringe_bitmap(%struct.window* %967, i64 %call2056, i32 1, i32 0)
  %arrayidx2058 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 18
  store i32 %call2057, i32* %arrayidx2058, align 4
  br label %cond.end.2059

cond.end.2059:                                    ; preds = %cond.false.2055, %cond.true.2053
  %cond2060 = phi i32 [ %966, %cond.true.2053 ], [ %call2057, %cond.false.2055 ]
  store i32 %cond2060, i32* %right, align 4
  br label %if.end.2148

if.else.2061:                                     ; preds = %land.lhs.true.2045, %lor.lhs.false.2038
  %968 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %indicate_top_line_p2062 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %968, i32 0, i32 22
  %969 = bitcast i40* %indicate_top_line_p2062 to i64*
  %bf.load2063 = load i64, i64* %969, align 4
  %bf.lshr2064 = lshr i64 %bf.load2063, 31
  %bf.clear2065 = and i64 %bf.lshr2064, 1
  %bf.cast2066 = trunc i64 %bf.clear2065 to i1
  br i1 %bf.cast2066, label %land.lhs.true.2068, label %if.else.2090

land.lhs.true.2068:                               ; preds = %if.else.2061
  %970 = load i64, i64* %arrow_top, align 8
  %call2069 = call i64 @builtin_lisp_symbol(i32 811)
  %cmp2070 = icmp eq i64 %970, %call2069
  br i1 %cmp2070, label %if.then.2072, label %if.else.2090

if.then.2072:                                     ; preds = %land.lhs.true.2068
  %arrayidx2073 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 26
  %971 = load i32, i32* %arrayidx2073, align 4
  %cmp2074 = icmp sge i32 %971, 0
  br i1 %cmp2074, label %cond.true.2076, label %cond.false.2078

cond.true.2076:                                   ; preds = %if.then.2072
  %arrayidx2077 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 26
  %972 = load i32, i32* %arrayidx2077, align 4
  br label %cond.end.2082

cond.false.2078:                                  ; preds = %if.then.2072
  %973 = load %struct.window*, %struct.window** %w.addr, align 8
  %call2079 = call i64 @builtin_lisp_symbol(i32 977)
  %call2080 = call i32 @get_logical_fringe_bitmap(%struct.window* %973, i64 %call2079, i32 1, i32 0)
  %arrayidx2081 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 26
  store i32 %call2080, i32* %arrayidx2081, align 4
  br label %cond.end.2082

cond.end.2082:                                    ; preds = %cond.false.2078, %cond.true.2076
  %cond2083 = phi i32 [ %972, %cond.true.2076 ], [ %call2080, %cond.false.2078 ]
  store i32 %cond2083, i32* %right, align 4
  %974 = load i32, i32* %top_ind_min_y, align 4
  %cmp2084 = icmp sge i32 %974, 0
  br i1 %cmp2084, label %if.then.2086, label %if.end.2089

if.then.2086:                                     ; preds = %cond.end.2082
  %975 = load i32, i32* %top_ind_min_y, align 4
  %976 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %y2087 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %976, i32 0, i32 4
  %977 = load i32, i32* %y2087, align 4
  %sub2088 = sub nsw i32 %975, %977
  store i32 %sub2088, i32* %right_offset, align 4
  br label %if.end.2089

if.end.2089:                                      ; preds = %if.then.2086, %cond.end.2082
  br label %if.end.2147

if.else.2090:                                     ; preds = %land.lhs.true.2068, %if.else.2061
  %978 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %indicate_bottom_line_p2091 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %978, i32 0, i32 22
  %979 = bitcast i40* %indicate_bottom_line_p2091 to i64*
  %bf.load2092 = load i64, i64* %979, align 4
  %bf.lshr2093 = lshr i64 %bf.load2092, 33
  %bf.clear2094 = and i64 %bf.lshr2093, 1
  %bf.cast2095 = trunc i64 %bf.clear2094 to i1
  br i1 %bf.cast2095, label %land.lhs.true.2097, label %if.else.2121

land.lhs.true.2097:                               ; preds = %if.else.2090
  %980 = load i64, i64* %arrow_bot, align 8
  %call2098 = call i64 @builtin_lisp_symbol(i32 811)
  %cmp2099 = icmp eq i64 %980, %call2098
  br i1 %cmp2099, label %if.then.2101, label %if.else.2121

if.then.2101:                                     ; preds = %land.lhs.true.2097
  %arrayidx2102 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 30
  %981 = load i32, i32* %arrayidx2102, align 4
  %cmp2103 = icmp sge i32 %981, 0
  br i1 %cmp2103, label %cond.true.2105, label %cond.false.2107

cond.true.2105:                                   ; preds = %if.then.2101
  %arrayidx2106 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 30
  %982 = load i32, i32* %arrayidx2106, align 4
  br label %cond.end.2111

cond.false.2107:                                  ; preds = %if.then.2101
  %983 = load %struct.window*, %struct.window** %w.addr, align 8
  %call2108 = call i64 @builtin_lisp_symbol(i32 352)
  %call2109 = call i32 @get_logical_fringe_bitmap(%struct.window* %983, i64 %call2108, i32 1, i32 0)
  %arrayidx2110 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 30
  store i32 %call2109, i32* %arrayidx2110, align 4
  br label %cond.end.2111

cond.end.2111:                                    ; preds = %cond.false.2107, %cond.true.2105
  %cond2112 = phi i32 [ %982, %cond.true.2105 ], [ %call2109, %cond.false.2107 ]
  store i32 %cond2112, i32* %right, align 4
  %984 = load i32, i32* %bot_ind_max_y, align 4
  %cmp2113 = icmp sge i32 %984, 0
  br i1 %cmp2113, label %if.then.2115, label %if.end.2120

if.then.2115:                                     ; preds = %cond.end.2111
  %985 = load i32, i32* %bot_ind_max_y, align 4
  %986 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %y2116 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %986, i32 0, i32 4
  %987 = load i32, i32* %y2116, align 4
  %988 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %visible_height2117 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %988, i32 0, i32 10
  %989 = load i32, i32* %visible_height2117, align 4
  %add2118 = add nsw i32 %987, %989
  %sub2119 = sub nsw i32 %985, %add2118
  store i32 %sub2119, i32* %right_offset, align 4
  br label %if.end.2120

if.end.2120:                                      ; preds = %if.then.2115, %cond.end.2111
  br label %if.end.2146

if.else.2121:                                     ; preds = %land.lhs.true.2097, %if.else.2090
  %990 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %indicate_empty_line_p2122 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %990, i32 0, i32 22
  %991 = bitcast i40* %indicate_empty_line_p2122 to i64*
  %bf.load2123 = load i64, i64* %991, align 4
  %bf.lshr2124 = lshr i64 %bf.load2123, 17
  %bf.clear2125 = and i64 %bf.lshr2124, 1
  %bf.cast2126 = trunc i64 %bf.clear2125 to i1
  br i1 %bf.cast2126, label %land.lhs.true.2128, label %if.else.2144

land.lhs.true.2128:                               ; preds = %if.else.2121
  %992 = load i64, i64* %empty_pos, align 8
  %call2129 = call i64 @builtin_lisp_symbol(i32 811)
  %cmp2130 = icmp eq i64 %992, %call2129
  br i1 %cmp2130, label %if.then.2132, label %if.else.2144

if.then.2132:                                     ; preds = %land.lhs.true.2128
  %arrayidx2133 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 22
  %993 = load i32, i32* %arrayidx2133, align 4
  %cmp2134 = icmp sge i32 %993, 0
  br i1 %cmp2134, label %cond.true.2136, label %cond.false.2138

cond.true.2136:                                   ; preds = %if.then.2132
  %arrayidx2137 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 22
  %994 = load i32, i32* %arrayidx2137, align 4
  br label %cond.end.2142

cond.false.2138:                                  ; preds = %if.then.2132
  %995 = load %struct.window*, %struct.window** %w.addr, align 8
  %call2139 = call i64 @builtin_lisp_symbol(i32 364)
  %call2140 = call i32 @get_logical_fringe_bitmap(%struct.window* %995, i64 %call2139, i32 1, i32 0)
  %arrayidx2141 = getelementptr inbounds [32 x i32], [32 x i32]* %bitmap_cache, i32 0, i64 22
  store i32 %call2140, i32* %arrayidx2141, align 4
  br label %cond.end.2142

cond.end.2142:                                    ; preds = %cond.false.2138, %cond.true.2136
  %cond2143 = phi i32 [ %994, %cond.true.2136 ], [ %call2140, %cond.false.2138 ]
  store i32 %cond2143, i32* %right, align 4
  br label %if.end.2145

if.else.2144:                                     ; preds = %land.lhs.true.2128, %if.else.2121
  store i32 0, i32* %right, align 4
  br label %if.end.2145

if.end.2145:                                      ; preds = %if.else.2144, %cond.end.2142
  br label %if.end.2146

if.end.2146:                                      ; preds = %if.end.2145, %if.end.2120
  br label %if.end.2147

if.end.2147:                                      ; preds = %if.end.2146, %if.end.2089
  br label %if.end.2148

if.end.2148:                                      ; preds = %if.end.2147, %cond.end.2059
  br label %if.end.2149

if.end.2149:                                      ; preds = %if.end.2148, %if.end.2024
  br label %if.end.2150

if.end.2150:                                      ; preds = %if.end.2149, %if.end.1987
  br label %if.end.2151

if.end.2151:                                      ; preds = %if.end.2150, %cond.end.1926
  br label %if.end.2152

if.end.2152:                                      ; preds = %if.end.2151, %if.then.1881
  br label %if.end.2153

if.end.2153:                                      ; preds = %if.end.2152, %if.then.1873
  %996 = load i32, i32* %left, align 4
  %call2154 = call %struct.fringe_bitmap* @get_fringe_bitmap_data(i32 %996)
  %period2155 = getelementptr inbounds %struct.fringe_bitmap, %struct.fringe_bitmap* %call2154, i32 0, i32 1
  %bf.load2156 = load i32, i32* %period2155, align 8
  %bf.lshr2157 = lshr i32 %bf.load2156, 16
  %bf.clear2158 = and i32 %bf.lshr2157, 255
  %cmp2159 = icmp ne i32 %bf.clear2158, 0
  br i1 %cmp2159, label %lor.end.2169, label %lor.rhs.2161

lor.rhs.2161:                                     ; preds = %if.end.2153
  %997 = load i32, i32* %right, align 4
  %call2162 = call %struct.fringe_bitmap* @get_fringe_bitmap_data(i32 %997)
  %period2163 = getelementptr inbounds %struct.fringe_bitmap, %struct.fringe_bitmap* %call2162, i32 0, i32 1
  %bf.load2164 = load i32, i32* %period2163, align 8
  %bf.lshr2165 = lshr i32 %bf.load2164, 16
  %bf.clear2166 = and i32 %bf.lshr2165, 255
  %cmp2167 = icmp ne i32 %bf.clear2166, 0
  br label %lor.end.2169

lor.end.2169:                                     ; preds = %lor.rhs.2161, %if.end.2153
  %998 = phi i1 [ true, %if.end.2153 ], [ %cmp2167, %lor.rhs.2161 ]
  %frombool2170 = zext i1 %998 to i8
  store i8 %frombool2170, i8* %periodic_p, align 1
  %999 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %y2171 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %999, i32 0, i32 4
  %1000 = load i32, i32* %y2171, align 4
  %1001 = load %struct.glyph_row*, %struct.glyph_row** %cur, align 8
  %y2172 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %1001, i32 0, i32 4
  %1002 = load i32, i32* %y2172, align 4
  %cmp2173 = icmp ne i32 %1000, %1002
  br i1 %cmp2173, label %if.then.2247, label %lor.lhs.false.2175

lor.lhs.false.2175:                               ; preds = %lor.end.2169
  %1003 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %visible_height2176 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %1003, i32 0, i32 10
  %1004 = load i32, i32* %visible_height2176, align 4
  %1005 = load %struct.glyph_row*, %struct.glyph_row** %cur, align 8
  %visible_height2177 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %1005, i32 0, i32 10
  %1006 = load i32, i32* %visible_height2177, align 4
  %cmp2178 = icmp ne i32 %1004, %1006
  br i1 %cmp2178, label %if.then.2247, label %lor.lhs.false.2180

lor.lhs.false.2180:                               ; preds = %lor.lhs.false.2175
  %1007 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %ends_at_zv_p2181 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %1007, i32 0, i32 22
  %1008 = bitcast i40* %ends_at_zv_p2181 to i64*
  %bf.load2182 = load i64, i64* %1008, align 4
  %bf.lshr2183 = lshr i64 %bf.load2182, 15
  %bf.clear2184 = and i64 %bf.lshr2183, 1
  %bf.cast2185 = trunc i64 %bf.clear2184 to i1
  %conv2186 = zext i1 %bf.cast2185 to i32
  %1009 = load %struct.glyph_row*, %struct.glyph_row** %cur, align 8
  %ends_at_zv_p2187 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %1009, i32 0, i32 22
  %1010 = bitcast i40* %ends_at_zv_p2187 to i64*
  %bf.load2188 = load i64, i64* %1010, align 4
  %bf.lshr2189 = lshr i64 %bf.load2188, 15
  %bf.clear2190 = and i64 %bf.lshr2189, 1
  %bf.cast2191 = trunc i64 %bf.clear2190 to i1
  %conv2192 = zext i1 %bf.cast2191 to i32
  %cmp2193 = icmp ne i32 %conv2186, %conv2192
  br i1 %cmp2193, label %if.then.2247, label %lor.lhs.false.2195

lor.lhs.false.2195:                               ; preds = %lor.lhs.false.2180
  %1011 = load i32, i32* %left, align 4
  %1012 = load %struct.glyph_row*, %struct.glyph_row** %cur, align 8
  %left_fringe_bitmap = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %1012, i32 0, i32 17
  %1013 = bitcast [11 x i8]* %left_fringe_bitmap to i88*
  %bf.load2196 = load i88, i88* %1013, align 4
  %bf.lshr2197 = lshr i88 %bf.load2196, 32
  %bf.clear2198 = and i88 %bf.lshr2197, 65535
  %bf.cast2199 = trunc i88 %bf.clear2198 to i32
  %cmp2200 = icmp ne i32 %1011, %bf.cast2199
  br i1 %cmp2200, label %if.then.2247, label %lor.lhs.false.2202

lor.lhs.false.2202:                               ; preds = %lor.lhs.false.2195
  %1014 = load i32, i32* %right, align 4
  %1015 = load %struct.glyph_row*, %struct.glyph_row** %cur, align 8
  %right_fringe_bitmap = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %1015, i32 0, i32 17
  %1016 = bitcast [11 x i8]* %right_fringe_bitmap to i88*
  %bf.load2203 = load i88, i88* %1016, align 4
  %bf.lshr2204 = lshr i88 %bf.load2203, 48
  %bf.clear2205 = and i88 %bf.lshr2204, 65535
  %bf.cast2206 = trunc i88 %bf.clear2205 to i32
  %cmp2207 = icmp ne i32 %1014, %bf.cast2206
  br i1 %cmp2207, label %if.then.2247, label %lor.lhs.false.2209

lor.lhs.false.2209:                               ; preds = %lor.lhs.false.2202
  %1017 = load i32, i32* %left_face_id, align 4
  %1018 = load %struct.glyph_row*, %struct.glyph_row** %cur, align 8
  %left_fringe_face_id = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %1018, i32 0, i32 20
  %1019 = bitcast i24* %left_fringe_face_id to i32*
  %bf.load2210 = load i32, i32* %1019, align 4
  %bf.clear2211 = and i32 %bf.load2210, 1048575
  %cmp2212 = icmp ne i32 %1017, %bf.clear2211
  br i1 %cmp2212, label %if.then.2247, label %lor.lhs.false.2214

lor.lhs.false.2214:                               ; preds = %lor.lhs.false.2209
  %1020 = load i32, i32* %right_face_id, align 4
  %1021 = load %struct.glyph_row*, %struct.glyph_row** %cur, align 8
  %right_fringe_face_id = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %1021, i32 0, i32 21
  %bf.load2215 = load i32, i32* %right_fringe_face_id, align 8
  %bf.clear2216 = and i32 %bf.load2215, 1048575
  %cmp2217 = icmp ne i32 %1020, %bf.clear2216
  br i1 %cmp2217, label %if.then.2247, label %lor.lhs.false.2219

lor.lhs.false.2219:                               ; preds = %lor.lhs.false.2214
  %1022 = load i32, i32* %left_offset, align 4
  %1023 = load %struct.glyph_row*, %struct.glyph_row** %cur, align 8
  %left_fringe_offset = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %1023, i32 0, i32 21
  %bf.load2220 = load i32, i32* %left_fringe_offset, align 8
  %bf.shl2221 = shl i32 %bf.load2220, 4
  %bf.ashr = ashr i32 %bf.shl2221, 24
  %cmp2222 = icmp ne i32 %1022, %bf.ashr
  br i1 %cmp2222, label %if.then.2247, label %lor.lhs.false.2224

lor.lhs.false.2224:                               ; preds = %lor.lhs.false.2219
  %1024 = load i32, i32* %right_offset, align 4
  %1025 = load %struct.glyph_row*, %struct.glyph_row** %cur, align 8
  %right_fringe_offset = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %1025, i32 0, i32 22
  %1026 = bitcast i40* %right_fringe_offset to i64*
  %bf.load2225 = load i64, i64* %1026, align 4
  %bf.shl2226 = shl i64 %bf.load2225, 56
  %bf.ashr2227 = ashr i64 %bf.shl2226, 56
  %bf.cast2228 = trunc i64 %bf.ashr2227 to i32
  %cmp2229 = icmp ne i32 %1024, %bf.cast2228
  br i1 %cmp2229, label %if.then.2247, label %lor.lhs.false.2231

lor.lhs.false.2231:                               ; preds = %lor.lhs.false.2224
  %1027 = load i8, i8* %periodic_p, align 1
  %tobool2232 = trunc i8 %1027 to i1
  %conv2233 = zext i1 %tobool2232 to i32
  %1028 = load %struct.glyph_row*, %struct.glyph_row** %cur, align 8
  %fringe_bitmap_periodic_p = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %1028, i32 0, i32 22
  %1029 = bitcast i40* %fringe_bitmap_periodic_p to i64*
  %bf.load2234 = load i64, i64* %1029, align 4
  %bf.lshr2235 = lshr i64 %bf.load2234, 8
  %bf.clear2236 = and i64 %bf.lshr2235, 1
  %bf.cast2237 = trunc i64 %bf.clear2236 to i1
  %conv2238 = zext i1 %bf.cast2237 to i32
  %cmp2239 = icmp ne i32 %conv2233, %conv2238
  br i1 %cmp2239, label %if.then.2247, label %lor.lhs.false.2241

lor.lhs.false.2241:                               ; preds = %lor.lhs.false.2231
  %1030 = load %struct.glyph_row*, %struct.glyph_row** %cur, align 8
  %redraw_fringe_bitmaps_p = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %1030, i32 0, i32 22
  %1031 = bitcast i40* %redraw_fringe_bitmaps_p to i64*
  %bf.load2242 = load i64, i64* %1031, align 4
  %bf.lshr2243 = lshr i64 %bf.load2242, 9
  %bf.clear2244 = and i64 %bf.lshr2243, 1
  %bf.cast2245 = trunc i64 %bf.clear2244 to i1
  br i1 %bf.cast2245, label %if.then.2247, label %if.end.2304

if.then.2247:                                     ; preds = %lor.lhs.false.2241, %lor.lhs.false.2231, %lor.lhs.false.2224, %lor.lhs.false.2219, %lor.lhs.false.2214, %lor.lhs.false.2209, %lor.lhs.false.2202, %lor.lhs.false.2195, %lor.lhs.false.2180, %lor.lhs.false.2175, %lor.end.2169
  store i8 1, i8* %redraw_p, align 1
  %1032 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %redraw_fringe_bitmaps_p2248 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %1032, i32 0, i32 22
  %1033 = bitcast i40* %redraw_fringe_bitmaps_p2248 to i64*
  %bf.load2249 = load i64, i64* %1033, align 4
  %bf.clear2250 = and i64 %bf.load2249, -513
  %bf.set2251 = or i64 %bf.clear2250, 512
  store i64 %bf.set2251, i64* %1033, align 4
  %1034 = load i8, i8* %keep_current_p.addr, align 1
  %tobool2252 = trunc i8 %1034 to i1
  br i1 %tobool2252, label %if.end.2303, label %if.then.2253

if.then.2253:                                     ; preds = %if.then.2247
  %1035 = load %struct.glyph_row*, %struct.glyph_row** %cur, align 8
  %redraw_fringe_bitmaps_p2254 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %1035, i32 0, i32 22
  %1036 = bitcast i40* %redraw_fringe_bitmaps_p2254 to i64*
  %bf.load2255 = load i64, i64* %1036, align 4
  %bf.clear2256 = and i64 %bf.load2255, -513
  %bf.set2257 = or i64 %bf.clear2256, 512
  store i64 %bf.set2257, i64* %1036, align 4
  %1037 = load i32, i32* %left, align 4
  %1038 = load %struct.glyph_row*, %struct.glyph_row** %cur, align 8
  %left_fringe_bitmap2258 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %1038, i32 0, i32 17
  %1039 = bitcast [11 x i8]* %left_fringe_bitmap2258 to i88*
  %1040 = zext i32 %1037 to i88
  %bf.load2259 = load i88, i88* %1039, align 4
  %bf.value = and i88 %1040, 65535
  %bf.shl2260 = shl i88 %bf.value, 32
  %bf.clear2261 = and i88 %bf.load2259, -281470681743361
  %bf.set2262 = or i88 %bf.clear2261, %bf.shl2260
  store i88 %bf.set2262, i88* %1039, align 4
  %bf.result.cast2263 = trunc i88 %bf.value to i32
  %1041 = load i32, i32* %right, align 4
  %1042 = load %struct.glyph_row*, %struct.glyph_row** %cur, align 8
  %right_fringe_bitmap2264 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %1042, i32 0, i32 17
  %1043 = bitcast [11 x i8]* %right_fringe_bitmap2264 to i88*
  %1044 = zext i32 %1041 to i88
  %bf.load2265 = load i88, i88* %1043, align 4
  %bf.value2266 = and i88 %1044, 65535
  %bf.shl2267 = shl i88 %bf.value2266, 48
  %bf.clear2268 = and i88 %bf.load2265, -18446462598732840961
  %bf.set2269 = or i88 %bf.clear2268, %bf.shl2267
  store i88 %bf.set2269, i88* %1043, align 4
  %bf.result.cast2270 = trunc i88 %bf.value2266 to i32
  %1045 = load i32, i32* %left_face_id, align 4
  %1046 = load %struct.glyph_row*, %struct.glyph_row** %cur, align 8
  %left_fringe_face_id2271 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %1046, i32 0, i32 20
  %1047 = bitcast i24* %left_fringe_face_id2271 to i32*
  %bf.load2272 = load i32, i32* %1047, align 4
  %bf.value2273 = and i32 %1045, 1048575
  %bf.clear2274 = and i32 %bf.load2272, -1048576
  %bf.set2275 = or i32 %bf.clear2274, %bf.value2273
  store i32 %bf.set2275, i32* %1047, align 4
  %1048 = load i32, i32* %right_face_id, align 4
  %1049 = load %struct.glyph_row*, %struct.glyph_row** %cur, align 8
  %right_fringe_face_id2276 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %1049, i32 0, i32 21
  %bf.load2277 = load i32, i32* %right_fringe_face_id2276, align 8
  %bf.value2278 = and i32 %1048, 1048575
  %bf.clear2279 = and i32 %bf.load2277, -1048576
  %bf.set2280 = or i32 %bf.clear2279, %bf.value2278
  store i32 %bf.set2280, i32* %right_fringe_face_id2276, align 8
  %1050 = load i32, i32* %left_offset, align 4
  %1051 = load %struct.glyph_row*, %struct.glyph_row** %cur, align 8
  %left_fringe_offset2281 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %1051, i32 0, i32 21
  %bf.load2282 = load i32, i32* %left_fringe_offset2281, align 8
  %bf.value2283 = and i32 %1050, 255
  %bf.shl2284 = shl i32 %bf.value2283, 20
  %bf.clear2285 = and i32 %bf.load2282, -267386881
  %bf.set2286 = or i32 %bf.clear2285, %bf.shl2284
  store i32 %bf.set2286, i32* %left_fringe_offset2281, align 8
  %bf.result.shl = shl i32 %bf.value2283, 24
  %bf.result.ashr = ashr i32 %bf.result.shl, 24
  %1052 = load i32, i32* %right_offset, align 4
  %1053 = load %struct.glyph_row*, %struct.glyph_row** %cur, align 8
  %right_fringe_offset2287 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %1053, i32 0, i32 22
  %1054 = bitcast i40* %right_fringe_offset2287 to i64*
  %1055 = zext i32 %1052 to i64
  %bf.load2288 = load i64, i64* %1054, align 4
  %bf.value2289 = and i64 %1055, 255
  %bf.clear2290 = and i64 %bf.load2288, -256
  %bf.set2291 = or i64 %bf.clear2290, %bf.value2289
  store i64 %bf.set2291, i64* %1054, align 4
  %bf.result.shl2292 = shl i64 %bf.value2289, 56
  %bf.result.ashr2293 = ashr i64 %bf.result.shl2292, 56
  %bf.result.cast2294 = trunc i64 %bf.result.ashr2293 to i32
  %1056 = load i8, i8* %periodic_p, align 1
  %tobool2295 = trunc i8 %1056 to i1
  %1057 = load %struct.glyph_row*, %struct.glyph_row** %cur, align 8
  %fringe_bitmap_periodic_p2296 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %1057, i32 0, i32 22
  %1058 = bitcast i40* %fringe_bitmap_periodic_p2296 to i64*
  %1059 = zext i1 %tobool2295 to i64
  %bf.load2297 = load i64, i64* %1058, align 4
  %bf.shl2298 = shl i64 %1059, 8
  %bf.clear2299 = and i64 %bf.load2297, -257
  %bf.set2300 = or i64 %bf.clear2299, %bf.shl2298
  store i64 %bf.set2300, i64* %1058, align 4
  %bf.result.cast2301 = trunc i64 %1059 to i8
  %tobool2302 = trunc i8 %bf.result.cast2301 to i1
  br label %if.end.2303

if.end.2303:                                      ; preds = %if.then.2253, %if.then.2247
  br label %if.end.2304

if.end.2304:                                      ; preds = %if.end.2303, %lor.lhs.false.2241
  %1060 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %overlay_arrow_bitmap = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %1060, i32 0, i32 16
  %1061 = load i32, i32* %overlay_arrow_bitmap, align 4
  %cmp2305 = icmp slt i32 %1061, 0
  br i1 %cmp2305, label %if.then.2307, label %if.end.2311

if.then.2307:                                     ; preds = %if.end.2304
  %1062 = load %struct.window*, %struct.window** %w.addr, align 8
  %call2308 = call i64 @builtin_lisp_symbol(i32 730)
  %call2309 = call i32 @get_logical_fringe_bitmap(%struct.window* %1062, i64 %call2308, i32 0, i32 0)
  %1063 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %overlay_arrow_bitmap2310 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %1063, i32 0, i32 16
  store i32 %call2309, i32* %overlay_arrow_bitmap2310, align 4
  br label %if.end.2311

if.end.2311:                                      ; preds = %if.then.2307, %if.end.2304
  %1064 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %overlay_arrow_bitmap2312 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %1064, i32 0, i32 16
  %1065 = load i32, i32* %overlay_arrow_bitmap2312, align 4
  %1066 = load %struct.glyph_row*, %struct.glyph_row** %cur, align 8
  %overlay_arrow_bitmap2313 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %1066, i32 0, i32 16
  %1067 = load i32, i32* %overlay_arrow_bitmap2313, align 4
  %cmp2314 = icmp ne i32 %1065, %1067
  br i1 %cmp2314, label %if.then.2316, label %if.end.2330

if.then.2316:                                     ; preds = %if.end.2311
  store i8 1, i8* %redraw_p, align 1
  %1068 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %redraw_fringe_bitmaps_p2317 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %1068, i32 0, i32 22
  %1069 = bitcast i40* %redraw_fringe_bitmaps_p2317 to i64*
  %bf.load2318 = load i64, i64* %1069, align 4
  %bf.clear2319 = and i64 %bf.load2318, -513
  %bf.set2320 = or i64 %bf.clear2319, 512
  store i64 %bf.set2320, i64* %1069, align 4
  %1070 = load i8, i8* %keep_current_p.addr, align 1
  %tobool2321 = trunc i8 %1070 to i1
  br i1 %tobool2321, label %if.end.2329, label %if.then.2322

if.then.2322:                                     ; preds = %if.then.2316
  %1071 = load %struct.glyph_row*, %struct.glyph_row** %cur, align 8
  %redraw_fringe_bitmaps_p2323 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %1071, i32 0, i32 22
  %1072 = bitcast i40* %redraw_fringe_bitmaps_p2323 to i64*
  %bf.load2324 = load i64, i64* %1072, align 4
  %bf.clear2325 = and i64 %bf.load2324, -513
  %bf.set2326 = or i64 %bf.clear2325, 512
  store i64 %bf.set2326, i64* %1072, align 4
  %1073 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %overlay_arrow_bitmap2327 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %1073, i32 0, i32 16
  %1074 = load i32, i32* %overlay_arrow_bitmap2327, align 4
  %1075 = load %struct.glyph_row*, %struct.glyph_row** %cur, align 8
  %overlay_arrow_bitmap2328 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %1075, i32 0, i32 16
  store i32 %1074, i32* %overlay_arrow_bitmap2328, align 4
  br label %if.end.2329

if.end.2329:                                      ; preds = %if.then.2322, %if.then.2316
  br label %if.end.2330

if.end.2330:                                      ; preds = %if.end.2329, %if.end.2311
  %1076 = load i32, i32* %left, align 4
  %1077 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %left_fringe_bitmap2331 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %1077, i32 0, i32 17
  %1078 = bitcast [11 x i8]* %left_fringe_bitmap2331 to i88*
  %1079 = zext i32 %1076 to i88
  %bf.load2332 = load i88, i88* %1078, align 4
  %bf.value2333 = and i88 %1079, 65535
  %bf.shl2334 = shl i88 %bf.value2333, 32
  %bf.clear2335 = and i88 %bf.load2332, -281470681743361
  %bf.set2336 = or i88 %bf.clear2335, %bf.shl2334
  store i88 %bf.set2336, i88* %1078, align 4
  %bf.result.cast2337 = trunc i88 %bf.value2333 to i32
  %1080 = load i32, i32* %right, align 4
  %1081 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %right_fringe_bitmap2338 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %1081, i32 0, i32 17
  %1082 = bitcast [11 x i8]* %right_fringe_bitmap2338 to i88*
  %1083 = zext i32 %1080 to i88
  %bf.load2339 = load i88, i88* %1082, align 4
  %bf.value2340 = and i88 %1083, 65535
  %bf.shl2341 = shl i88 %bf.value2340, 48
  %bf.clear2342 = and i88 %bf.load2339, -18446462598732840961
  %bf.set2343 = or i88 %bf.clear2342, %bf.shl2341
  store i88 %bf.set2343, i88* %1082, align 4
  %bf.result.cast2344 = trunc i88 %bf.value2340 to i32
  %1084 = load i32, i32* %left_face_id, align 4
  %1085 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %left_fringe_face_id2345 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %1085, i32 0, i32 20
  %1086 = bitcast i24* %left_fringe_face_id2345 to i32*
  %bf.load2346 = load i32, i32* %1086, align 4
  %bf.value2347 = and i32 %1084, 1048575
  %bf.clear2348 = and i32 %bf.load2346, -1048576
  %bf.set2349 = or i32 %bf.clear2348, %bf.value2347
  store i32 %bf.set2349, i32* %1086, align 4
  %1087 = load i32, i32* %right_face_id, align 4
  %1088 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %right_fringe_face_id2350 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %1088, i32 0, i32 21
  %bf.load2351 = load i32, i32* %right_fringe_face_id2350, align 8
  %bf.value2352 = and i32 %1087, 1048575
  %bf.clear2353 = and i32 %bf.load2351, -1048576
  %bf.set2354 = or i32 %bf.clear2353, %bf.value2352
  store i32 %bf.set2354, i32* %right_fringe_face_id2350, align 8
  %1089 = load i32, i32* %left_offset, align 4
  %1090 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %left_fringe_offset2355 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %1090, i32 0, i32 21
  %bf.load2356 = load i32, i32* %left_fringe_offset2355, align 8
  %bf.value2357 = and i32 %1089, 255
  %bf.shl2358 = shl i32 %bf.value2357, 20
  %bf.clear2359 = and i32 %bf.load2356, -267386881
  %bf.set2360 = or i32 %bf.clear2359, %bf.shl2358
  store i32 %bf.set2360, i32* %left_fringe_offset2355, align 8
  %bf.result.shl2361 = shl i32 %bf.value2357, 24
  %bf.result.ashr2362 = ashr i32 %bf.result.shl2361, 24
  %1091 = load i32, i32* %right_offset, align 4
  %1092 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %right_fringe_offset2363 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %1092, i32 0, i32 22
  %1093 = bitcast i40* %right_fringe_offset2363 to i64*
  %1094 = zext i32 %1091 to i64
  %bf.load2364 = load i64, i64* %1093, align 4
  %bf.value2365 = and i64 %1094, 255
  %bf.clear2366 = and i64 %bf.load2364, -256
  %bf.set2367 = or i64 %bf.clear2366, %bf.value2365
  store i64 %bf.set2367, i64* %1093, align 4
  %bf.result.shl2368 = shl i64 %bf.value2365, 56
  %bf.result.ashr2369 = ashr i64 %bf.result.shl2368, 56
  %bf.result.cast2370 = trunc i64 %bf.result.ashr2369 to i32
  %1095 = load i8, i8* %periodic_p, align 1
  %tobool2371 = trunc i8 %1095 to i1
  %1096 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %fringe_bitmap_periodic_p2372 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %1096, i32 0, i32 22
  %1097 = bitcast i40* %fringe_bitmap_periodic_p2372 to i64*
  %1098 = zext i1 %tobool2371 to i64
  %bf.load2373 = load i64, i64* %1097, align 4
  %bf.shl2374 = shl i64 %1098, 8
  %bf.clear2375 = and i64 %bf.load2373, -257
  %bf.set2376 = or i64 %bf.clear2375, %bf.shl2374
  store i64 %bf.set2376, i64* %1097, align 4
  %bf.result.cast2377 = trunc i64 %1098 to i8
  %tobool2378 = trunc i8 %bf.result.cast2377 to i1
  br label %for.inc.2379

for.inc.2379:                                     ; preds = %if.end.2330
  %1099 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %height2380 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %1099, i32 0, i32 7
  %1100 = load i32, i32* %height2380, align 4
  %1101 = load i32, i32* %y, align 4
  %add2381 = add nsw i32 %1101, %1100
  store i32 %add2381, i32* %y, align 4
  %1102 = load i32, i32* %rn, align 4
  %inc2382 = add nsw i32 %1102, 1
  store i32 %inc2382, i32* %rn, align 4
  br label %for.cond.1550

for.end.2383:                                     ; preds = %land.end.1556
  %1103 = load i8, i8* %redraw_p, align 1
  %tobool2384 = trunc i8 %1103 to i1
  br i1 %tobool2384, label %land.rhs.2386, label %land.end.2389

land.rhs.2386:                                    ; preds = %for.end.2383
  %1104 = load i8, i8* %keep_current_p.addr, align 1
  %tobool2387 = trunc i8 %1104 to i1
  %lnot2388 = xor i1 %tobool2387, true
  br label %land.end.2389

land.end.2389:                                    ; preds = %land.rhs.2386, %for.end.2383
  %1105 = phi i1 [ false, %for.end.2383 ], [ %lnot2388, %land.rhs.2386 ]
  store i1 %1105, i1* %retval
  br label %return

return:                                           ; preds = %land.end.2389, %if.then
  %1106 = load i1, i1* %retval
  ret i1 %1106
}

declare %struct.buffer* @XBUFFER(i64) #1

declare i64 @Fassq(i64, i64) #1

declare i64 @marker_position(i64) #1

declare zeroext i1 @BUFFERP(i64) #1

declare i32 @estimate_mode_line_height(%struct.frame*, i32) #1

declare %struct.window* @XWINDOW(i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @get_logical_fringe_bitmap(%struct.window* %w, i64 %bitmap, i32 %right_p, i32 %partial_p) #0 {
entry:
  %retval = alloca i32, align 4
  %w.addr = alloca %struct.window*, align 8
  %bitmap.addr = alloca i64, align 8
  %right_p.addr = alloca i32, align 4
  %partial_p.addr = alloca i32, align 4
  %cmap = alloca i64, align 8
  %bm1 = alloca i64, align 8
  %bm2 = alloca i64, align 8
  %bm = alloca i64, align 8
  %ln1 = alloca i64, align 8
  %ln2 = alloca i64, align 8
  %ix1 = alloca i32, align 4
  %ix2 = alloca i32, align 4
  store %struct.window* %w, %struct.window** %w.addr, align 8
  store i64 %bitmap, i64* %bitmap.addr, align 8
  store i32 %right_p, i32* %right_p.addr, align 4
  store i32 %partial_p, i32* %partial_p.addr, align 4
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %bm1, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* %bm2, align 8
  store i64 0, i64* %ln1, align 8
  store i64 0, i64* %ln2, align 8
  %0 = load i32, i32* %right_p.addr, align 4
  store i32 %0, i32* %ix1, align 4
  %1 = load i32, i32* %ix1, align 4
  %2 = load i32, i32* %partial_p.addr, align 4
  %tobool = icmp ne i32 %2, 0
  %cond = select i1 %tobool, i32 2, i32 0
  %add = add nsw i32 %1, %cond
  store i32 %add, i32* %ix2, align 4
  %3 = load %struct.window*, %struct.window** %w.addr, align 8
  %contents = getelementptr inbounds %struct.window, %struct.window* %3, i32 0, i32 10
  %4 = load i64, i64* %contents, align 8
  %call2 = call %struct.buffer* @XBUFFER(i64 %4)
  %fringe_indicator_alist_ = getelementptr inbounds %struct.buffer, %struct.buffer* %call2, i32 0, i32 64
  %5 = load i64, i64* %fringe_indicator_alist_, align 8
  store i64 %5, i64* %cmap, align 8
  %6 = load i64, i64* %cmap, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %6, %call3
  %lnot = xor i1 %cmp, true
  br i1 %lnot, label %if.then, label %if.end.57

if.then:                                          ; preds = %entry
  %7 = load i64, i64* %bitmap.addr, align 8
  %8 = load i64, i64* %cmap, align 8
  %call4 = call i64 @Fassq(i64 %7, i64 %8)
  store i64 %call4, i64* %bm1, align 8
  %9 = load i64, i64* %bm1, align 8
  %and = and i64 %9, 7
  %conv = trunc i64 %and to i32
  %cmp5 = icmp eq i32 %conv, 3
  br i1 %cmp5, label %if.then.7, label %if.end.56

if.then.7:                                        ; preds = %if.then
  %10 = load i64, i64* %bm1, align 8
  %sub = sub nsw i64 %10, 3
  %11 = inttoptr i64 %sub to i8*
  %12 = bitcast i8* %11 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %12, i32 0, i32 1
  %cdr = bitcast %union.anon.9* %u to i64*
  %13 = load i64, i64* %cdr, align 8
  store i64 %13, i64* %bm1, align 8
  %14 = load i64, i64* %bm1, align 8
  %call8 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp9 = icmp eq i64 %14, %call8
  br i1 %cmp9, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then.7
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.7
  %15 = load i64, i64* %bm1, align 8
  %and12 = and i64 %15, 7
  %conv13 = trunc i64 %and12 to i32
  %cmp14 = icmp eq i32 %conv13, 3
  br i1 %cmp14, label %if.then.16, label %if.else.48

if.then.16:                                       ; preds = %if.end
  %16 = load i64, i64* %bm1, align 8
  %call17 = call i64 @Flength(i64 %16)
  %shr = ashr i64 %call17, 2
  store i64 %shr, i64* %ln1, align 8
  %17 = load i32, i32* %partial_p.addr, align 4
  %tobool18 = icmp ne i32 %17, 0
  br i1 %tobool18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.then.16
  %18 = load i64, i64* %ln1, align 8
  %19 = load i32, i32* %ix2, align 4
  %conv20 = sext i32 %19 to i64
  %cmp21 = icmp sgt i64 %18, %conv20
  br i1 %cmp21, label %if.then.23, label %if.end.32

if.then.23:                                       ; preds = %if.then.19
  %20 = load i32, i32* %ix2, align 4
  %conv24 = sext i32 %20 to i64
  %shl = shl i64 %conv24, 2
  %add25 = add i64 %shl, 2
  %21 = load i64, i64* %bm1, align 8
  %call26 = call i64 @Fnth(i64 %add25, i64 %21)
  store i64 %call26, i64* %bm, align 8
  %22 = load i64, i64* %bm, align 8
  %call27 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp28 = icmp eq i64 %22, %call27
  br i1 %cmp28, label %if.end.31, label %if.then.30

if.then.30:                                       ; preds = %if.then.23
  br label %found

if.end.31:                                        ; preds = %if.then.23
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.19
  br label %if.end.47

if.else:                                          ; preds = %if.then.16
  %23 = load i64, i64* %ln1, align 8
  %24 = load i32, i32* %ix1, align 4
  %conv33 = sext i32 %24 to i64
  %cmp34 = icmp sgt i64 %23, %conv33
  br i1 %cmp34, label %if.then.36, label %if.end.46

if.then.36:                                       ; preds = %if.else
  %25 = load i32, i32* %ix1, align 4
  %conv37 = sext i32 %25 to i64
  %shl38 = shl i64 %conv37, 2
  %add39 = add i64 %shl38, 2
  %26 = load i64, i64* %bm1, align 8
  %call40 = call i64 @Fnth(i64 %add39, i64 %26)
  store i64 %call40, i64* %bm, align 8
  %27 = load i64, i64* %bm, align 8
  %call41 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp42 = icmp eq i64 %27, %call41
  br i1 %cmp42, label %if.end.45, label %if.then.44

if.then.44:                                       ; preds = %if.then.36
  br label %found

if.end.45:                                        ; preds = %if.then.36
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.else
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.end.32
  br label %if.end.55

if.else.48:                                       ; preds = %if.end
  %28 = load i64, i64* %bm1, align 8
  store i64 %28, i64* %bm, align 8
  %29 = load i64, i64* %bm, align 8
  %call49 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp50 = icmp eq i64 %29, %call49
  %lnot52 = xor i1 %cmp50, true
  br i1 %lnot52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.else.48
  br label %found

if.end.54:                                        ; preds = %if.else.48
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.end.47
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.then
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %entry
  %30 = load i64, i64* %cmap, align 8
  %31 = load i64, i64* getelementptr inbounds (%struct.buffer, %struct.buffer* @buffer_defaults, i32 0, i32 64), align 8
  %cmp58 = icmp eq i64 %30, %31
  br i1 %cmp58, label %if.end.105, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.57
  %32 = load i64, i64* getelementptr inbounds (%struct.buffer, %struct.buffer* @buffer_defaults, i32 0, i32 64), align 8
  %call60 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp61 = icmp eq i64 %32, %call60
  br i1 %cmp61, label %if.end.105, label %if.then.63

if.then.63:                                       ; preds = %land.lhs.true
  %33 = load i64, i64* %bitmap.addr, align 8
  %34 = load i64, i64* getelementptr inbounds (%struct.buffer, %struct.buffer* @buffer_defaults, i32 0, i32 64), align 8
  %call64 = call i64 @Fassq(i64 %33, i64 %34)
  store i64 %call64, i64* %bm2, align 8
  %35 = load i64, i64* %bm2, align 8
  %and65 = and i64 %35, 7
  %conv66 = trunc i64 %and65 to i32
  %cmp67 = icmp eq i32 %conv66, 3
  br i1 %cmp67, label %if.then.69, label %if.end.104

if.then.69:                                       ; preds = %if.then.63
  %36 = load i64, i64* %bm2, align 8
  %sub70 = sub nsw i64 %36, 3
  %37 = inttoptr i64 %sub70 to i8*
  %38 = bitcast i8* %37 to %struct.Lisp_Cons*
  %u71 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %38, i32 0, i32 1
  %cdr72 = bitcast %union.anon.9* %u71 to i64*
  %39 = load i64, i64* %cdr72, align 8
  store i64 %39, i64* %bm2, align 8
  %40 = load i64, i64* %bm2, align 8
  %call73 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp74 = icmp eq i64 %40, %call73
  %lnot76 = xor i1 %cmp74, true
  br i1 %lnot76, label %if.then.77, label %if.end.103

if.then.77:                                       ; preds = %if.then.69
  %41 = load i64, i64* %bm2, align 8
  %and78 = and i64 %41, 7
  %conv79 = trunc i64 %and78 to i32
  %cmp80 = icmp eq i32 %conv79, 3
  br i1 %cmp80, label %if.then.82, label %if.end.102

if.then.82:                                       ; preds = %if.then.77
  %42 = load i64, i64* %bm2, align 8
  %call83 = call i64 @Flength(i64 %42)
  %shr84 = ashr i64 %call83, 2
  store i64 %shr84, i64* %ln2, align 8
  %43 = load i32, i32* %partial_p.addr, align 4
  %tobool85 = icmp ne i32 %43, 0
  br i1 %tobool85, label %if.then.86, label %if.end.101

if.then.86:                                       ; preds = %if.then.82
  %44 = load i64, i64* %ln2, align 8
  %45 = load i32, i32* %ix2, align 4
  %conv87 = sext i32 %45 to i64
  %cmp88 = icmp sgt i64 %44, %conv87
  br i1 %cmp88, label %if.then.90, label %if.end.100

if.then.90:                                       ; preds = %if.then.86
  %46 = load i32, i32* %ix2, align 4
  %conv91 = sext i32 %46 to i64
  %shl92 = shl i64 %conv91, 2
  %add93 = add i64 %shl92, 2
  %47 = load i64, i64* %bm2, align 8
  %call94 = call i64 @Fnth(i64 %add93, i64 %47)
  store i64 %call94, i64* %bm, align 8
  %48 = load i64, i64* %bm, align 8
  %call95 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp96 = icmp eq i64 %48, %call95
  br i1 %cmp96, label %if.end.99, label %if.then.98

if.then.98:                                       ; preds = %if.then.90
  br label %found

if.end.99:                                        ; preds = %if.then.90
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.then.86
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %if.then.82
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %if.then.77
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %if.then.69
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %if.then.63
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %land.lhs.true, %if.end.57
  %49 = load i64, i64* %ln1, align 8
  %50 = load i32, i32* %ix1, align 4
  %conv106 = sext i32 %50 to i64
  %cmp107 = icmp sgt i64 %49, %conv106
  br i1 %cmp107, label %if.then.109, label %if.end.119

if.then.109:                                      ; preds = %if.end.105
  %51 = load i32, i32* %ix1, align 4
  %conv110 = sext i32 %51 to i64
  %shl111 = shl i64 %conv110, 2
  %add112 = add i64 %shl111, 2
  %52 = load i64, i64* %bm1, align 8
  %call113 = call i64 @Fnth(i64 %add112, i64 %52)
  store i64 %call113, i64* %bm, align 8
  %53 = load i64, i64* %bm, align 8
  %call114 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp115 = icmp eq i64 %53, %call114
  br i1 %cmp115, label %if.end.118, label %if.then.117

if.then.117:                                      ; preds = %if.then.109
  br label %found

if.end.118:                                       ; preds = %if.then.109
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %if.end.105
  %54 = load i64, i64* %ln2, align 8
  %55 = load i32, i32* %ix1, align 4
  %conv120 = sext i32 %55 to i64
  %cmp121 = icmp sgt i64 %54, %conv120
  br i1 %cmp121, label %if.then.123, label %if.else.133

if.then.123:                                      ; preds = %if.end.119
  %56 = load i32, i32* %ix1, align 4
  %conv124 = sext i32 %56 to i64
  %shl125 = shl i64 %conv124, 2
  %add126 = add i64 %shl125, 2
  %57 = load i64, i64* %bm2, align 8
  %call127 = call i64 @Fnth(i64 %add126, i64 %57)
  store i64 %call127, i64* %bm, align 8
  %58 = load i64, i64* %bm, align 8
  %call128 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp129 = icmp eq i64 %58, %call128
  br i1 %cmp129, label %if.end.132, label %if.then.131

if.then.131:                                      ; preds = %if.then.123
  br label %found

if.end.132:                                       ; preds = %if.then.123
  store i32 0, i32* %retval
  br label %return

if.else.133:                                      ; preds = %if.end.119
  %59 = load i64, i64* %bm2, align 8
  store i64 %59, i64* %bm, align 8
  %60 = load i64, i64* %bm, align 8
  %call134 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp135 = icmp eq i64 %60, %call134
  br i1 %cmp135, label %if.then.137, label %if.end.138

if.then.137:                                      ; preds = %if.else.133
  store i32 0, i32* %retval
  br label %return

if.end.138:                                       ; preds = %if.else.133
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.138
  br label %found

found:                                            ; preds = %if.end.139, %if.then.131, %if.then.117, %if.then.98, %if.then.53, %if.then.44, %if.then.30
  %61 = load i64, i64* %bm, align 8
  %call140 = call i32 @lookup_fringe_bitmap(i64 %61)
  store i32 %call140, i32* %retval
  br label %return

return:                                           ; preds = %found, %if.then.137, %if.end.132, %if.then.11
  %62 = load i32, i32* %retval
  ret i32 %62
}

; Function Attrs: nounwind uwtable
define internal %struct.fringe_bitmap* @get_fringe_bitmap_data(i32 %bn) #0 {
entry:
  %bn.addr = alloca i32, align 4
  %fb = alloca %struct.fringe_bitmap*, align 8
  store i32 %bn, i32* %bn.addr, align 4
  %0 = load i32, i32* %bn.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.fringe_bitmap**, %struct.fringe_bitmap*** @fringe_bitmaps, align 8
  %arrayidx = getelementptr inbounds %struct.fringe_bitmap*, %struct.fringe_bitmap** %1, i64 %idxprom
  %2 = load %struct.fringe_bitmap*, %struct.fringe_bitmap** %arrayidx, align 8
  store %struct.fringe_bitmap* %2, %struct.fringe_bitmap** %fb, align 8
  %3 = load %struct.fringe_bitmap*, %struct.fringe_bitmap** %fb, align 8
  %cmp = icmp eq %struct.fringe_bitmap* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %bn.addr, align 4
  %conv = sext i32 %4 to i64
  %cmp1 = icmp ult i64 %conv, 24
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %5 = load i32, i32* %bn.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ 1, %cond.false ]
  %idxprom3 = sext i32 %cond to i64
  %arrayidx4 = getelementptr inbounds [24 x %struct.fringe_bitmap], [24 x %struct.fringe_bitmap]* bitcast (<{ { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 } }>* @standard_bitmaps to [24 x %struct.fringe_bitmap]*), i32 0, i64 %idxprom3
  store %struct.fringe_bitmap* %arrayidx4, %struct.fringe_bitmap** %fb, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %6 = load %struct.fringe_bitmap*, %struct.fringe_bitmap** %fb, align 8
  ret %struct.fringe_bitmap* %6
}

; Function Attrs: nounwind uwtable
define i64 @Fdestroy_fringe_bitmap(i64 %bitmap) #0 {
entry:
  %retval = alloca i64, align 8
  %bitmap.addr = alloca i64, align 8
  %n = alloca i32, align 4
  store i64 %bitmap, i64* %bitmap.addr, align 8
  %0 = load i64, i64* %bitmap.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 897)
  %1 = load i64, i64* %bitmap.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call, i64 %1) #4
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i64, i64* %bitmap.addr, align 8
  %call2 = call i32 @lookup_fringe_bitmap(i64 %4)
  store i32 %call2, i32* %n, align 4
  %5 = load i32, i32* %n, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call3, i64* %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %6 = load i32, i32* %n, align 4
  call void @destroy_fringe_bitmap(i32 %6)
  %7 = load i32, i32* %n, align 4
  %conv4 = sext i32 %7 to i64
  %cmp5 = icmp uge i64 %conv4, 24
  br i1 %cmp5, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %if.end
  %8 = load i64, i64* %bitmap.addr, align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 112), align 8
  %call8 = call i64 @Fdelq(i64 %8, i64 %9)
  store i64 %call8, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 112), align 8
  %10 = load i64, i64* %bitmap.addr, align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 467)
  %call10 = call i64 @builtin_lisp_symbol(i32 0)
  %call11 = call i64 @Fput(i64 %10, i64 %call9, i64 %call10)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.7, %if.end
  %call13 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call13, i64* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then
  %11 = load i64, i64* %retval
  ret i64 %11
}

; Function Attrs: noreturn
declare i64 @wrong_type_argument(i64, i64) #2

; Function Attrs: nounwind uwtable
define internal void @destroy_fringe_bitmap(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %fbp = alloca %struct.fringe_bitmap**, align 8
  %rif = alloca %struct.redisplay_interface*, align 8
  store i32 %n, i32* %n.addr, align 4
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %0 = load i32, i32* %n.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i64*, i64** @fringe_faces, align 8
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 %idxprom
  store i64 %call, i64* %arrayidx, align 8
  %2 = load i32, i32* %n.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %3 = load %struct.fringe_bitmap**, %struct.fringe_bitmap*** @fringe_bitmaps, align 8
  %arrayidx2 = getelementptr inbounds %struct.fringe_bitmap*, %struct.fringe_bitmap** %3, i64 %idxprom1
  store %struct.fringe_bitmap** %arrayidx2, %struct.fringe_bitmap*** %fbp, align 8
  %4 = load %struct.fringe_bitmap**, %struct.fringe_bitmap*** %fbp, align 8
  %5 = load %struct.fringe_bitmap*, %struct.fringe_bitmap** %4, align 8
  %tobool = icmp ne %struct.fringe_bitmap* %5, null
  br i1 %tobool, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct.fringe_bitmap**, %struct.fringe_bitmap*** %fbp, align 8
  %7 = load %struct.fringe_bitmap*, %struct.fringe_bitmap** %6, align 8
  %dynamic = getelementptr inbounds %struct.fringe_bitmap, %struct.fringe_bitmap* %7, i32 0, i32 1
  %bf.load = load i32, i32* %dynamic, align 8
  %bf.lshr = lshr i32 %bf.load, 26
  %bf.clear = and i32 %bf.lshr, 1
  %bf.cast = trunc i32 %bf.clear to i1
  br i1 %bf.cast, label %if.then, label %if.end.13

if.then:                                          ; preds = %land.lhs.true
  %8 = load i64, i64* @selected_frame, align 8
  %call3 = call zeroext i1 @FRAMEP(i64 %8)
  br i1 %call3, label %land.lhs.true.4, label %cond.false

land.lhs.true.4:                                  ; preds = %if.then
  %9 = load i64, i64* @selected_frame, align 8
  %sub = sub nsw i64 %9, 5
  %10 = inttoptr i64 %sub to i8*
  %11 = bitcast i8* %10 to %struct.frame*
  %terminal = getelementptr inbounds %struct.frame, %struct.frame* %11, i32 0, i32 61
  %12 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %cmp = icmp ne %struct.terminal* %12, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.4
  %13 = load i64, i64* @selected_frame, align 8
  %sub5 = sub nsw i64 %13, 5
  %14 = inttoptr i64 %sub5 to i8*
  %15 = bitcast i8* %14 to %struct.frame*
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.4, %if.then
  call void @emacs_abort() #4
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %16, %cond.true
  %cond = phi %struct.frame* [ %15, %cond.true ], [ null, %16 ]
  %terminal6 = getelementptr inbounds %struct.frame, %struct.frame* %cond, i32 0, i32 61
  %17 = load %struct.terminal*, %struct.terminal** %terminal6, align 8
  %rif7 = getelementptr inbounds %struct.terminal, %struct.terminal* %17, i32 0, i32 15
  %18 = load %struct.redisplay_interface*, %struct.redisplay_interface** %rif7, align 8
  store %struct.redisplay_interface* %18, %struct.redisplay_interface** %rif, align 8
  %19 = load %struct.redisplay_interface*, %struct.redisplay_interface** %rif, align 8
  %tobool8 = icmp ne %struct.redisplay_interface* %19, null
  br i1 %tobool8, label %land.lhs.true.9, label %if.end

land.lhs.true.9:                                  ; preds = %cond.end
  %20 = load %struct.redisplay_interface*, %struct.redisplay_interface** %rif, align 8
  %destroy_fringe_bitmap = getelementptr inbounds %struct.redisplay_interface, %struct.redisplay_interface* %20, i32 0, i32 15
  %21 = load void (i32)*, void (i32)** %destroy_fringe_bitmap, align 8
  %tobool10 = icmp ne void (i32)* %21, null
  br i1 %tobool10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %land.lhs.true.9
  %22 = load %struct.redisplay_interface*, %struct.redisplay_interface** %rif, align 8
  %destroy_fringe_bitmap12 = getelementptr inbounds %struct.redisplay_interface, %struct.redisplay_interface* %22, i32 0, i32 15
  %23 = load void (i32)*, void (i32)** %destroy_fringe_bitmap12, align 8
  %24 = load i32, i32* %n.addr, align 4
  call void %23(i32 %24)
  br label %if.end

if.end:                                           ; preds = %if.then.11, %land.lhs.true.9, %cond.end
  %25 = load %struct.fringe_bitmap**, %struct.fringe_bitmap*** %fbp, align 8
  %26 = load %struct.fringe_bitmap*, %struct.fringe_bitmap** %25, align 8
  %27 = bitcast %struct.fringe_bitmap* %26 to i8*
  call void @xfree(i8* %27)
  %28 = load %struct.fringe_bitmap**, %struct.fringe_bitmap*** %fbp, align 8
  store %struct.fringe_bitmap* null, %struct.fringe_bitmap** %28, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %land.lhs.true, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.13
  %29 = load i32, i32* @max_used_fringe_bitmap, align 4
  %conv = sext i32 %29 to i64
  %cmp14 = icmp ugt i64 %conv, 24
  br i1 %cmp14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %30 = load i32, i32* @max_used_fringe_bitmap, align 4
  %sub16 = sub nsw i32 %30, 1
  %idxprom17 = sext i32 %sub16 to i64
  %31 = load %struct.fringe_bitmap**, %struct.fringe_bitmap*** @fringe_bitmaps, align 8
  %arrayidx18 = getelementptr inbounds %struct.fringe_bitmap*, %struct.fringe_bitmap** %31, i64 %idxprom17
  %32 = load %struct.fringe_bitmap*, %struct.fringe_bitmap** %arrayidx18, align 8
  %cmp19 = icmp eq %struct.fringe_bitmap* %32, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %33 = phi i1 [ false, %while.cond ], [ %cmp19, %land.rhs ]
  br i1 %33, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %34 = load i32, i32* @max_used_fringe_bitmap, align 4
  %dec = add nsw i32 %34, -1
  store i32 %dec, i32* @max_used_fringe_bitmap, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  ret void
}

declare i64 @Fdelq(i64, i64) #1

declare i64 @Fput(i64, i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fdefine_fringe_bitmap(i64 %bitmap, i64 %bits, i64 %height, i64 %width, i64 %align) #0 {
entry:
  %bitmap.addr = alloca i64, align 8
  %bits.addr = alloca i64, align 8
  %height.addr = alloca i64, align 8
  %width.addr = alloca i64, align 8
  %align.addr = alloca i64, align 8
  %n = alloca i32, align 4
  %h = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %b = alloca i16*, align 8
  %fb = alloca %struct.fringe_bitmap, align 8
  %xfb = alloca %struct.fringe_bitmap*, align 8
  %fill1 = alloca i32, align 4
  %fill2 = alloca i32, align 4
  %period115 = alloca i64, align 8
  %bitmaps = alloca i32, align 4
  %elt = alloca i64, align 8
  store i64 %bitmap, i64* %bitmap.addr, align 8
  store i64 %bits, i64* %bits.addr, align 8
  store i64 %height, i64* %height.addr, align 8
  store i64 %width, i64* %width.addr, align 8
  store i64 %align, i64* %align.addr, align 8
  store i32 0, i32* %fill1, align 4
  store i32 0, i32* %fill2, align 4
  %0 = load i64, i64* %bitmap.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 897)
  %1 = load i64, i64* %bitmap.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call, i64 %1) #4
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i64, i64* %bits.addr, align 8
  %call2 = call i64 @CHECK_VECTOR_OR_STRING(i64 %4)
  %conv3 = trunc i64 %call2 to i32
  store i32 %conv3, i32* %h, align 4
  %5 = load i64, i64* %height.addr, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp5 = icmp eq i64 %5, %call4
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %6 = load i32, i32* %h, align 4
  %height7 = getelementptr inbounds %struct.fringe_bitmap, %struct.fringe_bitmap* %fb, i32 0, i32 1
  %bf.load = load i32, i32* %height7, align 8
  %bf.value = and i32 %6, 255
  %bf.clear = and i32 %bf.load, -256
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, i32* %height7, align 8
  br label %if.end.57

if.else:                                          ; preds = %cond.end
  %7 = load i64, i64* %height.addr, align 8
  %and8 = and i64 %7, 7
  %conv9 = trunc i64 %and8 to i32
  %and10 = and i32 %conv9, -5
  %cmp11 = icmp eq i32 %and10, 2
  br i1 %cmp11, label %cond.true.13, label %cond.false.14

cond.true.13:                                     ; preds = %if.else
  br label %cond.end.16

cond.false.14:                                    ; preds = %if.else
  %call15 = call i64 @builtin_lisp_symbol(i32 559)
  %8 = load i64, i64* %height.addr, align 8
  %9 = call i64 @wrong_type_argument(i64 %call15, i64 %8) #4
  unreachable
                                                  ; No predecessors!
  br label %cond.end.16

cond.end.16:                                      ; preds = %10, %cond.true.13
  %11 = load i64, i64* %height.addr, align 8
  %shr = ashr i64 %11, 2
  %cmp17 = icmp slt i64 %shr, 255
  br i1 %cmp17, label %cond.true.19, label %cond.false.21

cond.true.19:                                     ; preds = %cond.end.16
  %12 = load i64, i64* %height.addr, align 8
  %shr20 = ashr i64 %12, 2
  br label %cond.end.22

cond.false.21:                                    ; preds = %cond.end.16
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.21, %cond.true.19
  %cond = phi i64 [ %shr20, %cond.true.19 ], [ 255, %cond.false.21 ]
  %cmp23 = icmp sgt i64 0, %cond
  br i1 %cmp23, label %cond.true.25, label %cond.false.26

cond.true.25:                                     ; preds = %cond.end.22
  br label %cond.end.35

cond.false.26:                                    ; preds = %cond.end.22
  %13 = load i64, i64* %height.addr, align 8
  %shr27 = ashr i64 %13, 2
  %cmp28 = icmp slt i64 %shr27, 255
  br i1 %cmp28, label %cond.true.30, label %cond.false.32

cond.true.30:                                     ; preds = %cond.false.26
  %14 = load i64, i64* %height.addr, align 8
  %shr31 = ashr i64 %14, 2
  br label %cond.end.33

cond.false.32:                                    ; preds = %cond.false.26
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.false.32, %cond.true.30
  %cond34 = phi i64 [ %shr31, %cond.true.30 ], [ 255, %cond.false.32 ]
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.end.33, %cond.true.25
  %cond36 = phi i64 [ 0, %cond.true.25 ], [ %cond34, %cond.end.33 ]
  %conv37 = trunc i64 %cond36 to i32
  %height38 = getelementptr inbounds %struct.fringe_bitmap, %struct.fringe_bitmap* %fb, i32 0, i32 1
  %bf.load39 = load i32, i32* %height38, align 8
  %bf.value40 = and i32 %conv37, 255
  %bf.clear41 = and i32 %bf.load39, -256
  %bf.set42 = or i32 %bf.clear41, %bf.value40
  store i32 %bf.set42, i32* %height38, align 8
  %height43 = getelementptr inbounds %struct.fringe_bitmap, %struct.fringe_bitmap* %fb, i32 0, i32 1
  %bf.load44 = load i32, i32* %height43, align 8
  %bf.clear45 = and i32 %bf.load44, 255
  %15 = load i32, i32* %h, align 4
  %cmp46 = icmp sgt i32 %bf.clear45, %15
  br i1 %cmp46, label %if.then.48, label %if.end

if.then.48:                                       ; preds = %cond.end.35
  %height49 = getelementptr inbounds %struct.fringe_bitmap, %struct.fringe_bitmap* %fb, i32 0, i32 1
  %bf.load50 = load i32, i32* %height49, align 8
  %bf.clear51 = and i32 %bf.load50, 255
  %16 = load i32, i32* %h, align 4
  %sub = sub nsw i32 %bf.clear51, %16
  %div = sdiv i32 %sub, 2
  store i32 %div, i32* %fill1, align 4
  %height52 = getelementptr inbounds %struct.fringe_bitmap, %struct.fringe_bitmap* %fb, i32 0, i32 1
  %bf.load53 = load i32, i32* %height52, align 8
  %bf.clear54 = and i32 %bf.load53, 255
  %17 = load i32, i32* %h, align 4
  %sub55 = sub nsw i32 %bf.clear54, %17
  %18 = load i32, i32* %fill1, align 4
  %sub56 = sub nsw i32 %sub55, %18
  store i32 %sub56, i32* %fill2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.48, %cond.end.35
  br label %if.end.57

if.end.57:                                        ; preds = %if.end, %if.then
  %19 = load i64, i64* %width.addr, align 8
  %call58 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp59 = icmp eq i64 %19, %call58
  br i1 %cmp59, label %if.then.61, label %if.else.66

if.then.61:                                       ; preds = %if.end.57
  %width62 = getelementptr inbounds %struct.fringe_bitmap, %struct.fringe_bitmap* %fb, i32 0, i32 1
  %bf.load63 = load i32, i32* %width62, align 8
  %bf.clear64 = and i32 %bf.load63, -65281
  %bf.set65 = or i32 %bf.clear64, 2048
  store i32 %bf.set65, i32* %width62, align 8
  br label %if.end.104

if.else.66:                                       ; preds = %if.end.57
  %20 = load i64, i64* %width.addr, align 8
  %and67 = and i64 %20, 7
  %conv68 = trunc i64 %and67 to i32
  %and69 = and i32 %conv68, -5
  %cmp70 = icmp eq i32 %and69, 2
  br i1 %cmp70, label %cond.true.72, label %cond.false.73

cond.true.72:                                     ; preds = %if.else.66
  br label %cond.end.75

cond.false.73:                                    ; preds = %if.else.66
  %call74 = call i64 @builtin_lisp_symbol(i32 559)
  %21 = load i64, i64* %width.addr, align 8
  %22 = call i64 @wrong_type_argument(i64 %call74, i64 %21) #4
  unreachable
                                                  ; No predecessors!
  br label %cond.end.75

cond.end.75:                                      ; preds = %23, %cond.true.72
  %24 = load i64, i64* %width.addr, align 8
  %shr76 = ashr i64 %24, 2
  %cmp77 = icmp slt i64 %shr76, 255
  br i1 %cmp77, label %cond.true.79, label %cond.false.81

cond.true.79:                                     ; preds = %cond.end.75
  %25 = load i64, i64* %width.addr, align 8
  %shr80 = ashr i64 %25, 2
  br label %cond.end.82

cond.false.81:                                    ; preds = %cond.end.75
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.false.81, %cond.true.79
  %cond83 = phi i64 [ %shr80, %cond.true.79 ], [ 255, %cond.false.81 ]
  %cmp84 = icmp sgt i64 0, %cond83
  br i1 %cmp84, label %cond.true.86, label %cond.false.87

cond.true.86:                                     ; preds = %cond.end.82
  br label %cond.end.96

cond.false.87:                                    ; preds = %cond.end.82
  %26 = load i64, i64* %width.addr, align 8
  %shr88 = ashr i64 %26, 2
  %cmp89 = icmp slt i64 %shr88, 255
  br i1 %cmp89, label %cond.true.91, label %cond.false.93

cond.true.91:                                     ; preds = %cond.false.87
  %27 = load i64, i64* %width.addr, align 8
  %shr92 = ashr i64 %27, 2
  br label %cond.end.94

cond.false.93:                                    ; preds = %cond.false.87
  br label %cond.end.94

cond.end.94:                                      ; preds = %cond.false.93, %cond.true.91
  %cond95 = phi i64 [ %shr92, %cond.true.91 ], [ 255, %cond.false.93 ]
  br label %cond.end.96

cond.end.96:                                      ; preds = %cond.end.94, %cond.true.86
  %cond97 = phi i64 [ 0, %cond.true.86 ], [ %cond95, %cond.end.94 ]
  %conv98 = trunc i64 %cond97 to i32
  %width99 = getelementptr inbounds %struct.fringe_bitmap, %struct.fringe_bitmap* %fb, i32 0, i32 1
  %bf.load100 = load i32, i32* %width99, align 8
  %bf.value101 = and i32 %conv98, 255
  %bf.shl = shl i32 %bf.value101, 8
  %bf.clear102 = and i32 %bf.load100, -65281
  %bf.set103 = or i32 %bf.clear102, %bf.shl
  store i32 %bf.set103, i32* %width99, align 8
  br label %if.end.104

if.end.104:                                       ; preds = %cond.end.96, %if.then.61
  %period = getelementptr inbounds %struct.fringe_bitmap, %struct.fringe_bitmap* %fb, i32 0, i32 1
  %bf.load105 = load i32, i32* %period, align 8
  %bf.clear106 = and i32 %bf.load105, -16711681
  store i32 %bf.clear106, i32* %period, align 8
  %align107 = getelementptr inbounds %struct.fringe_bitmap, %struct.fringe_bitmap* %fb, i32 0, i32 1
  %bf.load108 = load i32, i32* %align107, align 8
  %bf.clear109 = and i32 %bf.load108, -50331649
  store i32 %bf.clear109, i32* %align107, align 8
  %28 = load i64, i64* %align.addr, align 8
  %and110 = and i64 %28, 7
  %conv111 = trunc i64 %and110 to i32
  %cmp112 = icmp eq i32 %conv111, 3
  br i1 %cmp112, label %if.then.114, label %if.end.144

if.then.114:                                      ; preds = %if.end.104
  %29 = load i64, i64* %align.addr, align 8
  %sub116 = sub nsw i64 %29, 3
  %30 = inttoptr i64 %sub116 to i8*
  %31 = bitcast i8* %30 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %31, i32 0, i32 1
  %cdr = bitcast %union.anon.9* %u to i64*
  %32 = load i64, i64* %cdr, align 8
  store i64 %32, i64* %period115, align 8
  %33 = load i64, i64* %period115, align 8
  %and117 = and i64 %33, 7
  %conv118 = trunc i64 %and117 to i32
  %cmp119 = icmp eq i32 %conv118, 3
  br i1 %cmp119, label %if.then.121, label %if.end.141

if.then.121:                                      ; preds = %if.then.114
  %34 = load i64, i64* %period115, align 8
  %sub122 = sub nsw i64 %34, 3
  %35 = inttoptr i64 %sub122 to i8*
  %36 = bitcast i8* %35 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %36, i32 0, i32 0
  %37 = load i64, i64* %car, align 8
  store i64 %37, i64* %period115, align 8
  %38 = load i64, i64* %period115, align 8
  %call123 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp124 = icmp eq i64 %38, %call123
  br i1 %cmp124, label %if.end.140, label %if.then.126

if.then.126:                                      ; preds = %if.then.121
  %height127 = getelementptr inbounds %struct.fringe_bitmap, %struct.fringe_bitmap* %fb, i32 0, i32 1
  %bf.load128 = load i32, i32* %height127, align 8
  %bf.clear129 = and i32 %bf.load128, 255
  %period130 = getelementptr inbounds %struct.fringe_bitmap, %struct.fringe_bitmap* %fb, i32 0, i32 1
  %bf.load131 = load i32, i32* %period130, align 8
  %bf.value132 = and i32 %bf.clear129, 255
  %bf.shl133 = shl i32 %bf.value132, 16
  %bf.clear134 = and i32 %bf.load131, -16711681
  %bf.set135 = or i32 %bf.clear134, %bf.shl133
  store i32 %bf.set135, i32* %period130, align 8
  %height136 = getelementptr inbounds %struct.fringe_bitmap, %struct.fringe_bitmap* %fb, i32 0, i32 1
  %bf.load137 = load i32, i32* %height136, align 8
  %bf.clear138 = and i32 %bf.load137, -256
  %bf.set139 = or i32 %bf.clear138, 255
  store i32 %bf.set139, i32* %height136, align 8
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.126, %if.then.121
  br label %if.end.141

if.end.141:                                       ; preds = %if.end.140, %if.then.114
  %39 = load i64, i64* %align.addr, align 8
  %sub142 = sub nsw i64 %39, 3
  %40 = inttoptr i64 %sub142 to i8*
  %41 = bitcast i8* %40 to %struct.Lisp_Cons*
  %car143 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %41, i32 0, i32 0
  %42 = load i64, i64* %car143, align 8
  store i64 %42, i64* %align.addr, align 8
  br label %if.end.144

if.end.144:                                       ; preds = %if.end.141, %if.end.104
  %43 = load i64, i64* %align.addr, align 8
  %call145 = call i64 @builtin_lisp_symbol(i32 928)
  %cmp146 = icmp eq i64 %43, %call145
  br i1 %cmp146, label %if.then.148, label %if.else.153

if.then.148:                                      ; preds = %if.end.144
  %align149 = getelementptr inbounds %struct.fringe_bitmap, %struct.fringe_bitmap* %fb, i32 0, i32 1
  %bf.load150 = load i32, i32* %align149, align 8
  %bf.clear151 = and i32 %bf.load150, -50331649
  %bf.set152 = or i32 %bf.clear151, 16777216
  store i32 %bf.set152, i32* %align149, align 8
  br label %if.end.172

if.else.153:                                      ; preds = %if.end.144
  %44 = load i64, i64* %align.addr, align 8
  %call154 = call i64 @builtin_lisp_symbol(i32 213)
  %cmp155 = icmp eq i64 %44, %call154
  br i1 %cmp155, label %if.then.157, label %if.else.162

if.then.157:                                      ; preds = %if.else.153
  %align158 = getelementptr inbounds %struct.fringe_bitmap, %struct.fringe_bitmap* %fb, i32 0, i32 1
  %bf.load159 = load i32, i32* %align158, align 8
  %bf.clear160 = and i32 %bf.load159, -50331649
  %bf.set161 = or i32 %bf.clear160, 33554432
  store i32 %bf.set161, i32* %align158, align 8
  br label %if.end.171

if.else.162:                                      ; preds = %if.else.153
  %45 = load i64, i64* %align.addr, align 8
  %call163 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp164 = icmp eq i64 %45, %call163
  br i1 %cmp164, label %if.end.170, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else.162
  %46 = load i64, i64* %align.addr, align 8
  %call166 = call i64 @builtin_lisp_symbol(i32 251)
  %cmp167 = icmp eq i64 %46, %call166
  br i1 %cmp167, label %if.end.170, label %if.then.169

if.then.169:                                      ; preds = %land.lhs.true
  call void (i8*, ...) @error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0)) #4
  unreachable

if.end.170:                                       ; preds = %land.lhs.true, %if.else.162
  br label %if.end.171

if.end.171:                                       ; preds = %if.end.170, %if.then.157
  br label %if.end.172

if.end.172:                                       ; preds = %if.end.171, %if.then.148
  %47 = load i64, i64* %bitmap.addr, align 8
  %call173 = call i32 @lookup_fringe_bitmap(i64 %47)
  store i32 %call173, i32* %n, align 4
  %48 = load i32, i32* %n, align 4
  %tobool = icmp ne i32 %48, 0
  br i1 %tobool, label %if.end.217, label %if.then.174

if.then.174:                                      ; preds = %if.end.172
  %49 = load i32, i32* @max_used_fringe_bitmap, align 4
  %50 = load i32, i32* @max_fringe_bitmaps, align 4
  %cmp175 = icmp slt i32 %49, %50
  br i1 %cmp175, label %if.then.177, label %if.else.178

if.then.177:                                      ; preds = %if.then.174
  %51 = load i32, i32* @max_used_fringe_bitmap, align 4
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* @max_used_fringe_bitmap, align 4
  store i32 %51, i32* %n, align 4
  br label %if.end.211

if.else.178:                                      ; preds = %if.then.174
  store i32 24, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.178
  %52 = load i32, i32* %n, align 4
  %53 = load i32, i32* @max_fringe_bitmaps, align 4
  %cmp179 = icmp slt i32 %52, %53
  br i1 %cmp179, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %54 = load i32, i32* %n, align 4
  %idxprom = sext i32 %54 to i64
  %55 = load %struct.fringe_bitmap**, %struct.fringe_bitmap*** @fringe_bitmaps, align 8
  %arrayidx = getelementptr inbounds %struct.fringe_bitmap*, %struct.fringe_bitmap** %55, i64 %idxprom
  %56 = load %struct.fringe_bitmap*, %struct.fringe_bitmap** %arrayidx, align 8
  %cmp181 = icmp eq %struct.fringe_bitmap* %56, null
  br i1 %cmp181, label %if.then.183, label %if.end.184

if.then.183:                                      ; preds = %for.body
  br label %for.end

if.end.184:                                       ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.184
  %57 = load i32, i32* %n, align 4
  %inc185 = add nsw i32 %57, 1
  store i32 %inc185, i32* %n, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.183, %for.cond
  %58 = load i32, i32* %n, align 4
  %59 = load i32, i32* @max_fringe_bitmaps, align 4
  %cmp186 = icmp eq i32 %58, %59
  br i1 %cmp186, label %if.then.188, label %if.end.210

if.then.188:                                      ; preds = %for.end
  %60 = load i32, i32* @max_fringe_bitmaps, align 4
  %add = add nsw i32 %60, 20
  store i32 %add, i32* %bitmaps, align 4
  %61 = load i32, i32* %bitmaps, align 4
  %cmp189 = icmp slt i32 65536, %61
  br i1 %cmp189, label %if.then.191, label %if.end.192

if.then.191:                                      ; preds = %if.then.188
  call void (i8*, ...) @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0)) #4
  unreachable

if.end.192:                                       ; preds = %if.then.188
  %62 = load i32, i32* @max_fringe_bitmaps, align 4
  store i32 %62, i32* %i, align 4
  %63 = load %struct.fringe_bitmap**, %struct.fringe_bitmap*** @fringe_bitmaps, align 8
  %64 = bitcast %struct.fringe_bitmap** %63 to i8*
  %65 = load i32, i32* %bitmaps, align 4
  %conv193 = sext i32 %65 to i64
  %mul = mul i64 %conv193, 8
  %call194 = call i8* @xrealloc(i8* %64, i64 %mul)
  %66 = bitcast i8* %call194 to %struct.fringe_bitmap**
  store %struct.fringe_bitmap** %66, %struct.fringe_bitmap*** @fringe_bitmaps, align 8
  %67 = load i64*, i64** @fringe_faces, align 8
  %68 = bitcast i64* %67 to i8*
  %69 = load i32, i32* %bitmaps, align 4
  %conv195 = sext i32 %69 to i64
  %mul196 = mul i64 %conv195, 8
  %call197 = call i8* @xrealloc(i8* %68, i64 %mul196)
  %70 = bitcast i8* %call197 to i64*
  store i64* %70, i64** @fringe_faces, align 8
  %71 = load i32, i32* @max_fringe_bitmaps, align 4
  store i32 %71, i32* %i, align 4
  br label %for.cond.198

for.cond.198:                                     ; preds = %for.inc.207, %if.end.192
  %72 = load i32, i32* %i, align 4
  %73 = load i32, i32* %bitmaps, align 4
  %cmp199 = icmp slt i32 %72, %73
  br i1 %cmp199, label %for.body.201, label %for.end.209

for.body.201:                                     ; preds = %for.cond.198
  %74 = load i32, i32* %i, align 4
  %idxprom202 = sext i32 %74 to i64
  %75 = load %struct.fringe_bitmap**, %struct.fringe_bitmap*** @fringe_bitmaps, align 8
  %arrayidx203 = getelementptr inbounds %struct.fringe_bitmap*, %struct.fringe_bitmap** %75, i64 %idxprom202
  store %struct.fringe_bitmap* null, %struct.fringe_bitmap** %arrayidx203, align 8
  %call204 = call i64 @builtin_lisp_symbol(i32 0)
  %76 = load i32, i32* %i, align 4
  %idxprom205 = sext i32 %76 to i64
  %77 = load i64*, i64** @fringe_faces, align 8
  %arrayidx206 = getelementptr inbounds i64, i64* %77, i64 %idxprom205
  store i64 %call204, i64* %arrayidx206, align 8
  br label %for.inc.207

for.inc.207:                                      ; preds = %for.body.201
  %78 = load i32, i32* %i, align 4
  %inc208 = add nsw i32 %78, 1
  store i32 %inc208, i32* %i, align 4
  br label %for.cond.198

for.end.209:                                      ; preds = %for.cond.198
  %79 = load i32, i32* %bitmaps, align 4
  store i32 %79, i32* @max_fringe_bitmaps, align 4
  br label %if.end.210

if.end.210:                                       ; preds = %for.end.209, %for.end
  br label %if.end.211

if.end.211:                                       ; preds = %if.end.210, %if.then.177
  %80 = load i64, i64* %bitmap.addr, align 8
  %81 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 112), align 8
  %call212 = call i64 @Fcons(i64 %80, i64 %81)
  store i64 %call212, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 112), align 8
  %82 = load i64, i64* %bitmap.addr, align 8
  %call213 = call i64 @builtin_lisp_symbol(i32 467)
  %83 = load i32, i32* %n, align 4
  %conv214 = sext i32 %83 to i64
  %shl = shl i64 %conv214, 2
  %add215 = add i64 %shl, 2
  %call216 = call i64 @Fput(i64 %82, i64 %call213, i64 %add215)
  br label %if.end.217

if.end.217:                                       ; preds = %if.end.211, %if.end.172
  %dynamic = getelementptr inbounds %struct.fringe_bitmap, %struct.fringe_bitmap* %fb, i32 0, i32 1
  %bf.load218 = load i32, i32* %dynamic, align 8
  %bf.clear219 = and i32 %bf.load218, -67108865
  %bf.set220 = or i32 %bf.clear219, 67108864
  store i32 %bf.set220, i32* %dynamic, align 8
  %height221 = getelementptr inbounds %struct.fringe_bitmap, %struct.fringe_bitmap* %fb, i32 0, i32 1
  %bf.load222 = load i32, i32* %height221, align 8
  %bf.clear223 = and i32 %bf.load222, 255
  %conv224 = zext i32 %bf.clear223 to i64
  %mul225 = mul i64 %conv224, 2
  %add226 = add i64 16, %mul225
  %call227 = call noalias i8* @xmalloc(i64 %add226)
  %84 = bitcast i8* %call227 to %struct.fringe_bitmap*
  store %struct.fringe_bitmap* %84, %struct.fringe_bitmap** %xfb, align 8
  %85 = load %struct.fringe_bitmap*, %struct.fringe_bitmap** %xfb, align 8
  %add.ptr = getelementptr inbounds %struct.fringe_bitmap, %struct.fringe_bitmap* %85, i64 1
  %86 = bitcast %struct.fringe_bitmap* %add.ptr to i16*
  store i16* %86, i16** %b, align 8
  %bits228 = getelementptr inbounds %struct.fringe_bitmap, %struct.fringe_bitmap* %fb, i32 0, i32 0
  store i16* %86, i16** %bits228, align 8
  %87 = load i16*, i16** %b, align 8
  %88 = bitcast i16* %87 to i8*
  %height229 = getelementptr inbounds %struct.fringe_bitmap, %struct.fringe_bitmap* %fb, i32 0, i32 1
  %bf.load230 = load i32, i32* %height229, align 8
  %bf.clear231 = and i32 %bf.load230, 255
  %conv232 = zext i32 %bf.clear231 to i64
  call void @llvm.memset.p0i8.i64(i8* %88, i8 0, i64 %conv232, i32 2, i1 false)
  store i32 0, i32* %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end.298, %if.end.217
  %89 = load i32, i32* %j, align 4
  %height233 = getelementptr inbounds %struct.fringe_bitmap, %struct.fringe_bitmap* %fb, i32 0, i32 1
  %bf.load234 = load i32, i32* %height233, align 8
  %bf.clear235 = and i32 %bf.load234, 255
  %cmp236 = icmp slt i32 %89, %bf.clear235
  br i1 %cmp236, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.238

for.cond.238:                                     ; preds = %for.inc.250, %while.body
  %90 = load i32, i32* %i, align 4
  %91 = load i32, i32* %fill1, align 4
  %cmp239 = icmp slt i32 %90, %91
  br i1 %cmp239, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.238
  %92 = load i32, i32* %j, align 4
  %height241 = getelementptr inbounds %struct.fringe_bitmap, %struct.fringe_bitmap* %fb, i32 0, i32 1
  %bf.load242 = load i32, i32* %height241, align 8
  %bf.clear243 = and i32 %bf.load242, 255
  %cmp244 = icmp slt i32 %92, %bf.clear243
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.238
  %93 = phi i1 [ false, %for.cond.238 ], [ %cmp244, %land.rhs ]
  br i1 %93, label %for.body.246, label %for.end.252

for.body.246:                                     ; preds = %land.end
  %94 = load i32, i32* %j, align 4
  %inc247 = add nsw i32 %94, 1
  store i32 %inc247, i32* %j, align 4
  %idxprom248 = sext i32 %94 to i64
  %95 = load i16*, i16** %b, align 8
  %arrayidx249 = getelementptr inbounds i16, i16* %95, i64 %idxprom248
  store i16 0, i16* %arrayidx249, align 2
  br label %for.inc.250

for.inc.250:                                      ; preds = %for.body.246
  %96 = load i32, i32* %i, align 4
  %inc251 = add nsw i32 %96, 1
  store i32 %inc251, i32* %i, align 4
  br label %for.cond.238

for.end.252:                                      ; preds = %land.end
  store i32 0, i32* %i, align 4
  br label %for.cond.253

for.cond.253:                                     ; preds = %for.inc.279, %for.end.252
  %97 = load i32, i32* %i, align 4
  %98 = load i32, i32* %h, align 4
  %cmp254 = icmp slt i32 %97, %98
  br i1 %cmp254, label %land.rhs.256, label %land.end.262

land.rhs.256:                                     ; preds = %for.cond.253
  %99 = load i32, i32* %j, align 4
  %height257 = getelementptr inbounds %struct.fringe_bitmap, %struct.fringe_bitmap* %fb, i32 0, i32 1
  %bf.load258 = load i32, i32* %height257, align 8
  %bf.clear259 = and i32 %bf.load258, 255
  %cmp260 = icmp slt i32 %99, %bf.clear259
  br label %land.end.262

land.end.262:                                     ; preds = %land.rhs.256, %for.cond.253
  %100 = phi i1 [ false, %for.cond.253 ], [ %cmp260, %land.rhs.256 ]
  br i1 %100, label %for.body.263, label %for.end.281

for.body.263:                                     ; preds = %land.end.262
  %101 = load i64, i64* %bits.addr, align 8
  %102 = load i32, i32* %i, align 4
  %conv264 = sext i32 %102 to i64
  %shl265 = shl i64 %conv264, 2
  %add266 = add i64 %shl265, 2
  %call267 = call i64 @Faref(i64 %101, i64 %add266)
  store i64 %call267, i64* %elt, align 8
  %103 = load i64, i64* %elt, align 8
  %call268 = call zeroext i1 @NUMBERP(i64 %103)
  br i1 %call268, label %cond.true.270, label %cond.false.272

cond.true.270:                                    ; preds = %for.body.263
  %104 = load i64, i64* %elt, align 8
  %shr271 = ashr i64 %104, 2
  br label %cond.end.273

cond.false.272:                                   ; preds = %for.body.263
  br label %cond.end.273

cond.end.273:                                     ; preds = %cond.false.272, %cond.true.270
  %cond274 = phi i64 [ %shr271, %cond.true.270 ], [ 0, %cond.false.272 ]
  %conv275 = trunc i64 %cond274 to i16
  %105 = load i32, i32* %j, align 4
  %inc276 = add nsw i32 %105, 1
  store i32 %inc276, i32* %j, align 4
  %idxprom277 = sext i32 %105 to i64
  %106 = load i16*, i16** %b, align 8
  %arrayidx278 = getelementptr inbounds i16, i16* %106, i64 %idxprom277
  store i16 %conv275, i16* %arrayidx278, align 2
  br label %for.inc.279

for.inc.279:                                      ; preds = %cond.end.273
  %107 = load i32, i32* %i, align 4
  %inc280 = add nsw i32 %107, 1
  store i32 %inc280, i32* %i, align 4
  br label %for.cond.253

for.end.281:                                      ; preds = %land.end.262
  store i32 0, i32* %i, align 4
  br label %for.cond.282

for.cond.282:                                     ; preds = %for.inc.296, %for.end.281
  %108 = load i32, i32* %i, align 4
  %109 = load i32, i32* %fill2, align 4
  %cmp283 = icmp slt i32 %108, %109
  br i1 %cmp283, label %land.rhs.285, label %land.end.291

land.rhs.285:                                     ; preds = %for.cond.282
  %110 = load i32, i32* %j, align 4
  %height286 = getelementptr inbounds %struct.fringe_bitmap, %struct.fringe_bitmap* %fb, i32 0, i32 1
  %bf.load287 = load i32, i32* %height286, align 8
  %bf.clear288 = and i32 %bf.load287, 255
  %cmp289 = icmp slt i32 %110, %bf.clear288
  br label %land.end.291

land.end.291:                                     ; preds = %land.rhs.285, %for.cond.282
  %111 = phi i1 [ false, %for.cond.282 ], [ %cmp289, %land.rhs.285 ]
  br i1 %111, label %for.body.292, label %for.end.298

for.body.292:                                     ; preds = %land.end.291
  %112 = load i32, i32* %j, align 4
  %inc293 = add nsw i32 %112, 1
  store i32 %inc293, i32* %j, align 4
  %idxprom294 = sext i32 %112 to i64
  %113 = load i16*, i16** %b, align 8
  %arrayidx295 = getelementptr inbounds i16, i16* %113, i64 %idxprom294
  store i16 0, i16* %arrayidx295, align 2
  br label %for.inc.296

for.inc.296:                                      ; preds = %for.body.292
  %114 = load i32, i32* %i, align 4
  %inc297 = add nsw i32 %114, 1
  store i32 %inc297, i32* %i, align 4
  br label %for.cond.282

for.end.298:                                      ; preds = %land.end.291
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %115 = load %struct.fringe_bitmap*, %struct.fringe_bitmap** %xfb, align 8
  %116 = bitcast %struct.fringe_bitmap* %115 to i8*
  %117 = bitcast %struct.fringe_bitmap* %fb to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %116, i8* %117, i64 16, i32 8, i1 false)
  %118 = load i32, i32* %n, align 4
  %119 = load %struct.fringe_bitmap*, %struct.fringe_bitmap** %xfb, align 8
  call void @init_fringe_bitmap(i32 %118, %struct.fringe_bitmap* %119, i32 0)
  %120 = load i64, i64* %bitmap.addr, align 8
  ret i64 %120
}

declare i64 @CHECK_VECTOR_OR_STRING(i64) #1

; Function Attrs: noreturn
declare void @error(i8*, ...) #2

declare i8* @xrealloc(i8*, i64) #1

declare i64 @Fcons(i64, i64) #1

declare noalias i8* @xmalloc(i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

declare i64 @Faref(i64, i64) #1

declare zeroext i1 @NUMBERP(i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal void @init_fringe_bitmap(i32 %which, %struct.fringe_bitmap* %fb, i32 %once_p) #0 {
entry:
  %which.addr = alloca i32, align 4
  %fb.addr = alloca %struct.fringe_bitmap*, align 8
  %once_p.addr = alloca i32, align 4
  %bits = alloca i16*, align 8
  %j = alloca i32, align 4
  %cbits = alloca i8*, align 8
  %b = alloca i16, align 2
  %c = alloca i8, align 1
  %b32 = alloca i16, align 2
  %rif = alloca %struct.redisplay_interface*, align 8
  store i32 %which, i32* %which.addr, align 4
  store %struct.fringe_bitmap* %fb, %struct.fringe_bitmap** %fb.addr, align 8
  store i32 %once_p, i32* %once_p.addr, align 4
  %0 = load i32, i32* %once_p.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.fringe_bitmap*, %struct.fringe_bitmap** %fb.addr, align 8
  %dynamic = getelementptr inbounds %struct.fringe_bitmap, %struct.fringe_bitmap* %1, i32 0, i32 1
  %bf.load = load i32, i32* %dynamic, align 8
  %bf.lshr = lshr i32 %bf.load, 26
  %bf.clear = and i32 %bf.lshr, 1
  %bf.cast = trunc i32 %bf.clear to i1
  br i1 %bf.cast, label %if.then, label %if.end.75

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load %struct.fringe_bitmap*, %struct.fringe_bitmap** %fb.addr, align 8
  %bits1 = getelementptr inbounds %struct.fringe_bitmap, %struct.fringe_bitmap* %2, i32 0, i32 0
  %3 = load i16*, i16** %bits1, align 8
  store i16* %3, i16** %bits, align 8
  %4 = load %struct.fringe_bitmap*, %struct.fringe_bitmap** %fb.addr, align 8
  %width = getelementptr inbounds %struct.fringe_bitmap, %struct.fringe_bitmap* %4, i32 0, i32 1
  %bf.load2 = load i32, i32* %width, align 8
  %bf.lshr3 = lshr i32 %bf.load2, 8
  %bf.clear4 = and i32 %bf.lshr3, 255
  %cmp = icmp sle i32 %bf.clear4, 8
  br i1 %cmp, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %5 = load %struct.fringe_bitmap*, %struct.fringe_bitmap** %fb.addr, align 8
  %bits6 = getelementptr inbounds %struct.fringe_bitmap, %struct.fringe_bitmap* %5, i32 0, i32 0
  %6 = load i16*, i16** %bits6, align 8
  %7 = bitcast i16* %6 to i8*
  store i8* %7, i8** %cbits, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.5
  %8 = load i32, i32* %j, align 4
  %9 = load %struct.fringe_bitmap*, %struct.fringe_bitmap** %fb.addr, align 8
  %height = getelementptr inbounds %struct.fringe_bitmap, %struct.fringe_bitmap* %9, i32 0, i32 1
  %bf.load7 = load i32, i32* %height, align 8
  %bf.clear8 = and i32 %bf.load7, 255
  %cmp9 = icmp slt i32 %8, %bf.clear8
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i16*, i16** %bits, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %10, i32 1
  store i16* %incdec.ptr, i16** %bits, align 8
  %11 = load i16, i16* %10, align 2
  store i16 %11, i16* %b, align 2
  %12 = load i16, i16* %b, align 2
  %conv = zext i16 %12 to i32
  %and = and i32 %conv, 15
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* @swap_nibble, i32 0, i64 %idxprom
  %13 = load i8, i8* %arrayidx, align 1
  %conv10 = zext i8 %13 to i32
  %shl = shl i32 %conv10, 4
  %14 = load i16, i16* %b, align 2
  %conv11 = zext i16 %14 to i32
  %shr = ashr i32 %conv11, 4
  %and12 = and i32 %shr, 15
  %idxprom13 = sext i32 %and12 to i64
  %arrayidx14 = getelementptr inbounds [16 x i8], [16 x i8]* @swap_nibble, i32 0, i64 %idxprom13
  %15 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %15 to i32
  %or = or i32 %shl, %conv15
  %conv16 = trunc i32 %or to i8
  store i8 %conv16, i8* %c, align 1
  %16 = load i8, i8* %c, align 1
  %conv17 = zext i8 %16 to i32
  %17 = load %struct.fringe_bitmap*, %struct.fringe_bitmap** %fb.addr, align 8
  %width18 = getelementptr inbounds %struct.fringe_bitmap, %struct.fringe_bitmap* %17, i32 0, i32 1
  %bf.load19 = load i32, i32* %width18, align 8
  %bf.lshr20 = lshr i32 %bf.load19, 8
  %bf.clear21 = and i32 %bf.lshr20, 255
  %sub = sub nsw i32 8, %bf.clear21
  %shr22 = ashr i32 %conv17, %sub
  %conv23 = trunc i32 %shr22 to i8
  %18 = load i8*, i8** %cbits, align 8
  %incdec.ptr24 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr24, i8** %cbits, align 8
  store i8 %conv23, i8* %18, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %j, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %j, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.72, %if.else
  %20 = load i32, i32* %j, align 4
  %21 = load %struct.fringe_bitmap*, %struct.fringe_bitmap** %fb.addr, align 8
  %height26 = getelementptr inbounds %struct.fringe_bitmap, %struct.fringe_bitmap* %21, i32 0, i32 1
  %bf.load27 = load i32, i32* %height26, align 8
  %bf.clear28 = and i32 %bf.load27, 255
  %cmp29 = icmp slt i32 %20, %bf.clear28
  br i1 %cmp29, label %for.body.31, label %for.end.74

for.body.31:                                      ; preds = %for.cond.25
  %22 = load i16*, i16** %bits, align 8
  %23 = load i16, i16* %22, align 2
  store i16 %23, i16* %b32, align 2
  %24 = load i16, i16* %b32, align 2
  %conv33 = zext i16 %24 to i32
  %and34 = and i32 %conv33, 15
  %idxprom35 = sext i32 %and34 to i64
  %arrayidx36 = getelementptr inbounds [16 x i8], [16 x i8]* @swap_nibble, i32 0, i64 %idxprom35
  %25 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %25 to i32
  %shl38 = shl i32 %conv37, 12
  %26 = load i16, i16* %b32, align 2
  %conv39 = zext i16 %26 to i32
  %shr40 = ashr i32 %conv39, 4
  %and41 = and i32 %shr40, 15
  %idxprom42 = sext i32 %and41 to i64
  %arrayidx43 = getelementptr inbounds [16 x i8], [16 x i8]* @swap_nibble, i32 0, i64 %idxprom42
  %27 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %27 to i32
  %shl45 = shl i32 %conv44, 8
  %or46 = or i32 %shl38, %shl45
  %28 = load i16, i16* %b32, align 2
  %conv47 = zext i16 %28 to i32
  %shr48 = ashr i32 %conv47, 8
  %and49 = and i32 %shr48, 15
  %idxprom50 = sext i32 %and49 to i64
  %arrayidx51 = getelementptr inbounds [16 x i8], [16 x i8]* @swap_nibble, i32 0, i64 %idxprom50
  %29 = load i8, i8* %arrayidx51, align 1
  %conv52 = zext i8 %29 to i32
  %shl53 = shl i32 %conv52, 4
  %or54 = or i32 %or46, %shl53
  %30 = load i16, i16* %b32, align 2
  %conv55 = zext i16 %30 to i32
  %shr56 = ashr i32 %conv55, 12
  %and57 = and i32 %shr56, 15
  %idxprom58 = sext i32 %and57 to i64
  %arrayidx59 = getelementptr inbounds [16 x i8], [16 x i8]* @swap_nibble, i32 0, i64 %idxprom58
  %31 = load i8, i8* %arrayidx59, align 1
  %conv60 = zext i8 %31 to i32
  %or61 = or i32 %or54, %conv60
  %conv62 = trunc i32 %or61 to i16
  store i16 %conv62, i16* %b32, align 2
  %32 = load %struct.fringe_bitmap*, %struct.fringe_bitmap** %fb.addr, align 8
  %width63 = getelementptr inbounds %struct.fringe_bitmap, %struct.fringe_bitmap* %32, i32 0, i32 1
  %bf.load64 = load i32, i32* %width63, align 8
  %bf.lshr65 = lshr i32 %bf.load64, 8
  %bf.clear66 = and i32 %bf.lshr65, 255
  %sub67 = sub nsw i32 16, %bf.clear66
  %33 = load i16, i16* %b32, align 2
  %conv68 = zext i16 %33 to i32
  %shr69 = ashr i32 %conv68, %sub67
  %conv70 = trunc i32 %shr69 to i16
  store i16 %conv70, i16* %b32, align 2
  %34 = load i16, i16* %b32, align 2
  %35 = load i16*, i16** %bits, align 8
  %incdec.ptr71 = getelementptr inbounds i16, i16* %35, i32 1
  store i16* %incdec.ptr71, i16** %bits, align 8
  store i16 %34, i16* %35, align 2
  br label %for.inc.72

for.inc.72:                                       ; preds = %for.body.31
  %36 = load i32, i32* %j, align 4
  %inc73 = add nsw i32 %36, 1
  store i32 %inc73, i32* %j, align 4
  br label %for.cond.25

for.end.74:                                       ; preds = %for.cond.25
  br label %if.end

if.end:                                           ; preds = %for.end.74, %for.end
  br label %if.end.75

if.end.75:                                        ; preds = %if.end, %lor.lhs.false
  %37 = load i32, i32* %once_p.addr, align 4
  %tobool76 = icmp ne i32 %37, 0
  br i1 %tobool76, label %if.end.105, label %if.then.77

if.then.77:                                       ; preds = %if.end.75
  %38 = load i64, i64* @selected_frame, align 8
  %call = call zeroext i1 @FRAMEP(i64 %38)
  br i1 %call, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.then.77
  %39 = load i64, i64* @selected_frame, align 8
  %sub79 = sub nsw i64 %39, 5
  %40 = inttoptr i64 %sub79 to i8*
  %41 = bitcast i8* %40 to %struct.frame*
  %terminal = getelementptr inbounds %struct.frame, %struct.frame* %41, i32 0, i32 61
  %42 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %cmp80 = icmp ne %struct.terminal* %42, null
  br i1 %cmp80, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %43 = load i64, i64* @selected_frame, align 8
  %sub82 = sub nsw i64 %43, 5
  %44 = inttoptr i64 %sub82 to i8*
  %45 = bitcast i8* %44 to %struct.frame*
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.then.77
  call void @emacs_abort() #4
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %46, %cond.true
  %cond = phi %struct.frame* [ %45, %cond.true ], [ null, %46 ]
  %terminal83 = getelementptr inbounds %struct.frame, %struct.frame* %cond, i32 0, i32 61
  %47 = load %struct.terminal*, %struct.terminal** %terminal83, align 8
  %rif84 = getelementptr inbounds %struct.terminal, %struct.terminal* %47, i32 0, i32 15
  %48 = load %struct.redisplay_interface*, %struct.redisplay_interface** %rif84, align 8
  store %struct.redisplay_interface* %48, %struct.redisplay_interface** %rif, align 8
  %49 = load i32, i32* %which.addr, align 4
  call void @destroy_fringe_bitmap(i32 %49)
  %50 = load %struct.redisplay_interface*, %struct.redisplay_interface** %rif, align 8
  %tobool85 = icmp ne %struct.redisplay_interface* %50, null
  br i1 %tobool85, label %land.lhs.true.86, label %if.end.98

land.lhs.true.86:                                 ; preds = %cond.end
  %51 = load %struct.redisplay_interface*, %struct.redisplay_interface** %rif, align 8
  %define_fringe_bitmap = getelementptr inbounds %struct.redisplay_interface, %struct.redisplay_interface* %51, i32 0, i32 14
  %52 = load void (i32, i16*, i32, i32)*, void (i32, i16*, i32, i32)** %define_fringe_bitmap, align 8
  %tobool87 = icmp ne void (i32, i16*, i32, i32)* %52, null
  br i1 %tobool87, label %if.then.88, label %if.end.98

if.then.88:                                       ; preds = %land.lhs.true.86
  %53 = load %struct.redisplay_interface*, %struct.redisplay_interface** %rif, align 8
  %define_fringe_bitmap89 = getelementptr inbounds %struct.redisplay_interface, %struct.redisplay_interface* %53, i32 0, i32 14
  %54 = load void (i32, i16*, i32, i32)*, void (i32, i16*, i32, i32)** %define_fringe_bitmap89, align 8
  %55 = load i32, i32* %which.addr, align 4
  %56 = load %struct.fringe_bitmap*, %struct.fringe_bitmap** %fb.addr, align 8
  %bits90 = getelementptr inbounds %struct.fringe_bitmap, %struct.fringe_bitmap* %56, i32 0, i32 0
  %57 = load i16*, i16** %bits90, align 8
  %58 = load %struct.fringe_bitmap*, %struct.fringe_bitmap** %fb.addr, align 8
  %height91 = getelementptr inbounds %struct.fringe_bitmap, %struct.fringe_bitmap* %58, i32 0, i32 1
  %bf.load92 = load i32, i32* %height91, align 8
  %bf.clear93 = and i32 %bf.load92, 255
  %59 = load %struct.fringe_bitmap*, %struct.fringe_bitmap** %fb.addr, align 8
  %width94 = getelementptr inbounds %struct.fringe_bitmap, %struct.fringe_bitmap* %59, i32 0, i32 1
  %bf.load95 = load i32, i32* %width94, align 8
  %bf.lshr96 = lshr i32 %bf.load95, 8
  %bf.clear97 = and i32 %bf.lshr96, 255
  call void %54(i32 %55, i16* %57, i32 %bf.clear93, i32 %bf.clear97)
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.88, %land.lhs.true.86, %cond.end
  %60 = load %struct.fringe_bitmap*, %struct.fringe_bitmap** %fb.addr, align 8
  %61 = load i32, i32* %which.addr, align 4
  %idxprom99 = sext i32 %61 to i64
  %62 = load %struct.fringe_bitmap**, %struct.fringe_bitmap*** @fringe_bitmaps, align 8
  %arrayidx100 = getelementptr inbounds %struct.fringe_bitmap*, %struct.fringe_bitmap** %62, i64 %idxprom99
  store %struct.fringe_bitmap* %60, %struct.fringe_bitmap** %arrayidx100, align 8
  %63 = load i32, i32* %which.addr, align 4
  %64 = load i32, i32* @max_used_fringe_bitmap, align 4
  %cmp101 = icmp sge i32 %63, %64
  br i1 %cmp101, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %if.end.98
  %65 = load i32, i32* %which.addr, align 4
  %add = add nsw i32 %65, 1
  store i32 %add, i32* @max_used_fringe_bitmap, align 4
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.103, %if.end.98
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.end.75
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @Fset_fringe_bitmap_face(i64 %bitmap, i64 %face) #0 {
entry:
  %bitmap.addr = alloca i64, align 8
  %face.addr = alloca i64, align 8
  %n = alloca i32, align 4
  %f = alloca %struct.frame*, align 8
  store i64 %bitmap, i64* %bitmap.addr, align 8
  store i64 %face, i64* %face.addr, align 8
  %0 = load i64, i64* %bitmap.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 897)
  %1 = load i64, i64* %bitmap.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call, i64 %1) #4
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i64, i64* %bitmap.addr, align 8
  %call2 = call i32 @lookup_fringe_bitmap(i64 %4)
  store i32 %call2, i32* %n, align 4
  %5 = load i32, i32* %n, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  call void (i8*, ...) @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %cond.end
  %6 = load i64, i64* %face.addr, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp4 = icmp eq i64 %6, %call3
  br i1 %cmp4, label %if.end.35, label %if.then.6

if.then.6:                                        ; preds = %if.end
  %7 = load i64, i64* @selected_frame, align 8
  %call7 = call zeroext i1 @FRAMEP(i64 %7)
  br i1 %call7, label %land.lhs.true, label %cond.false.13

land.lhs.true:                                    ; preds = %if.then.6
  %8 = load i64, i64* @selected_frame, align 8
  %sub = sub nsw i64 %8, 5
  %9 = inttoptr i64 %sub to i8*
  %10 = bitcast i8* %9 to %struct.frame*
  %terminal = getelementptr inbounds %struct.frame, %struct.frame* %10, i32 0, i32 61
  %11 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %cmp9 = icmp ne %struct.terminal* %11, null
  br i1 %cmp9, label %cond.true.11, label %cond.false.13

cond.true.11:                                     ; preds = %land.lhs.true
  %12 = load i64, i64* @selected_frame, align 8
  %sub12 = sub nsw i64 %12, 5
  %13 = inttoptr i64 %sub12 to i8*
  %14 = bitcast i8* %13 to %struct.frame*
  br label %cond.end.14

cond.false.13:                                    ; preds = %land.lhs.true, %if.then.6
  call void @emacs_abort() #4
  unreachable
                                                  ; No predecessors!
  br label %cond.end.14

cond.end.14:                                      ; preds = %15, %cond.true.11
  %cond = phi %struct.frame* [ %14, %cond.true.11 ], [ null, %15 ]
  store %struct.frame* %cond, %struct.frame** %f, align 8
  br i1 true, label %cond.true.15, label %cond.false.18

cond.true.15:                                     ; preds = %cond.end.14
  %16 = load %struct.frame*, %struct.frame** %f, align 8
  %face_cache = getelementptr inbounds %struct.frame, %struct.frame* %16, i32 0, i32 20
  %17 = load %struct.face_cache*, %struct.face_cache** %face_cache, align 8
  %used = getelementptr inbounds %struct.face_cache, %struct.face_cache* %17, i32 0, i32 4
  %18 = load i32, i32* %used, align 4
  %add = add i32 %18, 0
  %cmp16 = icmp ult i32 4, %add
  br i1 %cmp16, label %cond.true.25, label %cond.false.28

cond.false.18:                                    ; preds = %cond.end.14
  %19 = load %struct.frame*, %struct.frame** %f, align 8
  %face_cache19 = getelementptr inbounds %struct.frame, %struct.frame* %19, i32 0, i32 20
  %20 = load %struct.face_cache*, %struct.face_cache** %face_cache19, align 8
  %used20 = getelementptr inbounds %struct.face_cache, %struct.face_cache* %20, i32 0, i32 4
  %21 = load i32, i32* %used20, align 4
  %conv21 = sext i32 %21 to i64
  %add22 = add i64 %conv21, 0
  %cmp23 = icmp ult i64 4, %add22
  br i1 %cmp23, label %cond.true.25, label %cond.false.28

cond.true.25:                                     ; preds = %cond.false.18, %cond.true.15
  %22 = load %struct.frame*, %struct.frame** %f, align 8
  %face_cache26 = getelementptr inbounds %struct.frame, %struct.frame* %22, i32 0, i32 20
  %23 = load %struct.face_cache*, %struct.face_cache** %face_cache26, align 8
  %faces_by_id = getelementptr inbounds %struct.face_cache, %struct.face_cache* %23, i32 0, i32 2
  %24 = load %struct.face**, %struct.face*** %faces_by_id, align 8
  %arrayidx = getelementptr inbounds %struct.face*, %struct.face** %24, i64 4
  %25 = load %struct.face*, %struct.face** %arrayidx, align 8
  %tobool27 = icmp ne %struct.face* %25, null
  br i1 %tobool27, label %land.lhs.true.29, label %if.end.34

cond.false.28:                                    ; preds = %cond.false.18, %cond.true.15
  br i1 false, label %land.lhs.true.29, label %if.end.34

land.lhs.true.29:                                 ; preds = %cond.false.28, %cond.true.25
  %26 = load %struct.frame*, %struct.frame** %f, align 8
  %27 = load i64, i64* %face.addr, align 8
  %call30 = call i32 @lookup_derived_face(%struct.frame* %26, i64 %27, i32 4, i1 zeroext true)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %land.lhs.true.29
  call void (i8*, ...) @error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0)) #4
  unreachable

if.end.34:                                        ; preds = %land.lhs.true.29, %cond.false.28, %cond.true.25
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.end
  %28 = load i64, i64* %face.addr, align 8
  %29 = load i32, i32* %n, align 4
  %idxprom = sext i32 %29 to i64
  %30 = load i64*, i64** @fringe_faces, align 8
  %arrayidx36 = getelementptr inbounds i64, i64* %30, i64 %idxprom
  store i64 %28, i64* %arrayidx36, align 8
  %call37 = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call37
}

declare zeroext i1 @FRAMEP(i64) #1

; Function Attrs: noreturn
declare void @emacs_abort() #2

declare i32 @lookup_derived_face(%struct.frame*, i64, i32, i1 zeroext) #1

; Function Attrs: nounwind uwtable
define i64 @Ffringe_bitmaps_at_pos(i64 %pos, i64 %window) #0 {
entry:
  %retval = alloca i64, align 8
  %pos.addr = alloca i64, align 8
  %window.addr = alloca i64, align 8
  %w = alloca %struct.window*, align 8
  %row = alloca %struct.glyph_row*, align 8
  %textpos = alloca i64, align 8
  store i64 %pos, i64* %pos.addr, align 8
  store i64 %window, i64* %window.addr, align 8
  %0 = load i64, i64* %window.addr, align 8
  %call = call %struct.window* @decode_any_window(i64 %0)
  store %struct.window* %call, %struct.window** %w, align 8
  %1 = load %struct.window*, %struct.window** %w, align 8
  %2 = bitcast %struct.window* %1 to i8*
  %call1 = call i64 @make_lisp_ptr(i8* %2, i32 5)
  store i64 %call1, i64* %window.addr, align 8
  %3 = load i64, i64* %pos.addr, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %3, %call2
  br i1 %cmp, label %if.else.26, label %if.then

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %4 = load i64, i64* %pos.addr, align 8
  %and = and i64 %4, 7
  %conv = trunc i64 %and to i32
  %cmp3 = icmp eq i32 %conv, 1
  br i1 %cmp3, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %5 = load i64, i64* %pos.addr, align 8
  %call5 = call i32 @XMISCTYPE(i64 %5)
  %cmp6 = icmp eq i32 %call5, 24236
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %land.lhs.true
  %6 = load i64, i64* %pos.addr, align 8
  %call9 = call i64 @marker_position(i64 %6)
  %call10 = call i64 @make_natnum(i64 %call9)
  store i64 %call10, i64* %pos.addr, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %do.body
  %7 = load i64, i64* %pos.addr, align 8
  %and11 = and i64 %7, 7
  %conv12 = trunc i64 %and11 to i32
  %and13 = and i32 %conv12, -5
  %cmp14 = icmp eq i32 %and13, 2
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %call16 = call i64 @builtin_lisp_symbol(i32 558)
  %8 = load i64, i64* %pos.addr, align 8
  %9 = call i64 @wrong_type_argument(i64 %call16, i64 %8) #4
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %10, %cond.true
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end
  %11 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %11, i32 0, i32 77
  %12 = load i64, i64* %begv, align 8
  %13 = load i64, i64* %pos.addr, align 8
  %shr = ashr i64 %13, 2
  %cmp17 = icmp sle i64 %12, %shr
  br i1 %cmp17, label %land.lhs.true.19, label %if.then.23

land.lhs.true.19:                                 ; preds = %do.end
  %14 = load i64, i64* %pos.addr, align 8
  %shr20 = ashr i64 %14, 2
  %15 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %15, i32 0, i32 79
  %16 = load i64, i64* %zv, align 8
  %cmp21 = icmp sle i64 %shr20, %16
  br i1 %cmp21, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %land.lhs.true.19, %do.end
  %17 = load i64, i64* %window.addr, align 8
  %18 = load i64, i64* %pos.addr, align 8
  call void @args_out_of_range(i64 %17, i64 %18) #4
  unreachable

if.end.24:                                        ; preds = %land.lhs.true.19
  %19 = load i64, i64* %pos.addr, align 8
  %shr25 = ashr i64 %19, 2
  store i64 %shr25, i64* %textpos, align 8
  br label %if.end.34

if.else.26:                                       ; preds = %entry
  %20 = load %struct.window*, %struct.window** %w, align 8
  %21 = load i64, i64* @selected_window, align 8
  %call27 = call %struct.window* @XWINDOW(i64 %21)
  %cmp28 = icmp eq %struct.window* %20, %call27
  br i1 %cmp28, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %if.else.26
  %22 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %22, i32 0, i32 75
  %23 = load i64, i64* %pt, align 8
  %add = add nsw i64 %23, 0
  store i64 %add, i64* %textpos, align 8
  br label %if.end.33

if.else.31:                                       ; preds = %if.else.26
  %24 = load %struct.window*, %struct.window** %w, align 8
  %pointm = getelementptr inbounds %struct.window, %struct.window* %24, i32 0, i32 12
  %25 = load i64, i64* %pointm, align 8
  %call32 = call i64 @marker_position(i64 %25)
  store i64 %call32, i64* %textpos, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.31, %if.then.30
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.end.24
  %26 = load %struct.window*, %struct.window** %w, align 8
  %current_matrix = getelementptr inbounds %struct.window, %struct.window* %26, i32 0, i32 24
  %27 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix, align 8
  %rows = getelementptr inbounds %struct.glyph_matrix, %struct.glyph_matrix* %27, i32 0, i32 1
  %28 = load %struct.glyph_row*, %struct.glyph_row** %rows, align 8
  %mode_line_p = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %28, i32 0, i32 22
  %29 = bitcast i40* %mode_line_p to i64*
  %bf.load = load i64, i64* %29, align 4
  %bf.lshr = lshr i64 %bf.load, 20
  %bf.clear = and i64 %bf.lshr, 1
  %bf.cast = trunc i64 %bf.clear to i1
  br i1 %bf.cast, label %cond.true.36, label %cond.false.39

cond.true.36:                                     ; preds = %if.end.34
  %30 = load %struct.window*, %struct.window** %w, align 8
  %current_matrix37 = getelementptr inbounds %struct.window, %struct.window* %30, i32 0, i32 24
  %31 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix37, align 8
  %rows38 = getelementptr inbounds %struct.glyph_matrix, %struct.glyph_matrix* %31, i32 0, i32 1
  %32 = load %struct.glyph_row*, %struct.glyph_row** %rows38, align 8
  %add.ptr = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %32, i64 1
  br label %cond.end.42

cond.false.39:                                    ; preds = %if.end.34
  %33 = load %struct.window*, %struct.window** %w, align 8
  %current_matrix40 = getelementptr inbounds %struct.window, %struct.window* %33, i32 0, i32 24
  %34 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix40, align 8
  %rows41 = getelementptr inbounds %struct.glyph_matrix, %struct.glyph_matrix* %34, i32 0, i32 1
  %35 = load %struct.glyph_row*, %struct.glyph_row** %rows41, align 8
  br label %cond.end.42

cond.end.42:                                      ; preds = %cond.false.39, %cond.true.36
  %cond = phi %struct.glyph_row* [ %add.ptr, %cond.true.36 ], [ %35, %cond.false.39 ]
  store %struct.glyph_row* %cond, %struct.glyph_row** %row, align 8
  %36 = load %struct.window*, %struct.window** %w, align 8
  %37 = load i64, i64* %textpos, align 8
  %38 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %call43 = call %struct.glyph_row* @row_containing_pos(%struct.window* %36, i64 %37, %struct.glyph_row* %38, %struct.glyph_row* null, i32 0)
  store %struct.glyph_row* %call43, %struct.glyph_row** %row, align 8
  %39 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %tobool = icmp ne %struct.glyph_row* %39, null
  br i1 %tobool, label %if.then.44, label %if.else.73

if.then.44:                                       ; preds = %cond.end.42
  %40 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %left_fringe_bitmap = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %40, i32 0, i32 17
  %41 = bitcast [11 x i8]* %left_fringe_bitmap to i88*
  %bf.load45 = load i88, i88* %41, align 4
  %bf.lshr46 = lshr i88 %bf.load45, 32
  %bf.clear47 = and i88 %bf.lshr46, 65535
  %bf.cast48 = trunc i88 %bf.clear47 to i32
  %call49 = call i64 @get_fringe_bitmap_name(i32 %bf.cast48)
  %42 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %right_fringe_bitmap = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %42, i32 0, i32 17
  %43 = bitcast [11 x i8]* %right_fringe_bitmap to i88*
  %bf.load50 = load i88, i88* %43, align 4
  %bf.lshr51 = lshr i88 %bf.load50, 48
  %bf.clear52 = and i88 %bf.lshr51, 65535
  %bf.cast53 = trunc i88 %bf.clear52 to i32
  %call54 = call i64 @get_fringe_bitmap_name(i32 %bf.cast53)
  %44 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %overlay_arrow_bitmap = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %44, i32 0, i32 16
  %45 = load i32, i32* %overlay_arrow_bitmap, align 4
  %cmp55 = icmp eq i32 %45, 0
  br i1 %cmp55, label %cond.true.57, label %cond.false.59

cond.true.57:                                     ; preds = %if.then.44
  %call58 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.70

cond.false.59:                                    ; preds = %if.then.44
  %46 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %overlay_arrow_bitmap60 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %46, i32 0, i32 16
  %47 = load i32, i32* %overlay_arrow_bitmap60, align 4
  %cmp61 = icmp slt i32 %47, 0
  br i1 %cmp61, label %cond.true.63, label %cond.false.65

cond.true.63:                                     ; preds = %cond.false.59
  %call64 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end.68

cond.false.65:                                    ; preds = %cond.false.59
  %48 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %overlay_arrow_bitmap66 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %48, i32 0, i32 16
  %49 = load i32, i32* %overlay_arrow_bitmap66, align 4
  %call67 = call i64 @get_fringe_bitmap_name(i32 %49)
  br label %cond.end.68

cond.end.68:                                      ; preds = %cond.false.65, %cond.true.63
  %cond69 = phi i64 [ %call64, %cond.true.63 ], [ %call67, %cond.false.65 ]
  br label %cond.end.70

cond.end.70:                                      ; preds = %cond.end.68, %cond.true.57
  %cond71 = phi i64 [ %call58, %cond.true.57 ], [ %cond69, %cond.end.68 ]
  %call72 = call i64 @list3(i64 %call49, i64 %call54, i64 %cond71)
  store i64 %call72, i64* %retval
  br label %return

if.else.73:                                       ; preds = %cond.end.42
  %call74 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call74, i64* %retval
  br label %return

return:                                           ; preds = %if.else.73, %cond.end.70
  %50 = load i64, i64* %retval
  ret i64 %50
}

declare %struct.window* @decode_any_window(i64) #1

declare i64 @make_lisp_ptr(i8*, i32) #1

declare i32 @XMISCTYPE(i64) #1

declare i64 @make_natnum(i64) #1

; Function Attrs: noreturn
declare void @args_out_of_range(i64, i64) #2

declare %struct.glyph_row* @row_containing_pos(%struct.window*, i64, %struct.glyph_row*, %struct.glyph_row*, i32) #1

declare i64 @list3(i64, i64, i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @get_fringe_bitmap_name(i32 %bn) #0 {
entry:
  %retval = alloca i64, align 8
  %bn.addr = alloca i32, align 4
  %bitmaps = alloca i64, align 8
  %num = alloca i64, align 8
  %bitmap = alloca i64, align 8
  store i32 %bn, i32* %bn.addr, align 4
  %0 = load i32, i32* %bn.addr, align 4
  %cmp = icmp sle i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 112), align 8
  store i64 %1, i64* %bitmaps, align 8
  %2 = load i32, i32* %bn.addr, align 4
  %conv = sext i32 %2 to i64
  %shl = shl i64 %conv, 2
  %add = add i64 %shl, 2
  store i64 %add, i64* %num, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.9, %if.end
  %3 = load i64, i64* %bitmaps, align 8
  %and = and i64 %3, 7
  %conv1 = trunc i64 %and to i32
  %cmp2 = icmp eq i32 %conv1, 3
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i64, i64* %bitmaps, align 8
  %sub = sub nsw i64 %4, 3
  %5 = inttoptr i64 %sub to i8*
  %6 = bitcast i8* %5 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %6, i32 0, i32 0
  %7 = load i64, i64* %car, align 8
  store i64 %7, i64* %bitmap, align 8
  %8 = load i64, i64* %num, align 8
  %9 = load i64, i64* %bitmap, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 467)
  %call5 = call i64 @Fget(i64 %9, i64 %call4)
  %cmp6 = icmp eq i64 %8, %call5
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %while.body
  %10 = load i64, i64* %bitmap, align 8
  store i64 %10, i64* %retval
  br label %return

if.end.9:                                         ; preds = %while.body
  %11 = load i64, i64* %bitmaps, align 8
  %sub10 = sub nsw i64 %11, 3
  %12 = inttoptr i64 %sub10 to i8*
  %13 = bitcast i8* %12 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %13, i32 0, i32 1
  %cdr = bitcast %union.anon.9* %u to i64*
  %14 = load i64, i64* %cdr, align 8
  store i64 %14, i64* %bitmaps, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = load i64, i64* %num, align 8
  store i64 %15, i64* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.8, %if.then
  %16 = load i64, i64* %retval
  ret i64 %16
}

; Function Attrs: nounwind uwtable
define void @syms_of_fringe() #0 {
entry:
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sdestroy_fringe_bitmap to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sdefine_fringe_bitmap to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sfringe_bitmaps_at_pos to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sset_fringe_bitmap_face to %struct.Lisp_Subr*))
  br label %do.body

do.body:                                          ; preds = %entry
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_fringe.o_fwd, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 212))
  br label %do.end

do.end:                                           ; preds = %do.body
  %call = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 212), align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_fringe.o_fwd.5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 112))
  br label %do.end.2

do.end.2:                                         ; preds = %do.body.1
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call3, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 112), align 8
  ret void
}

declare void @defsubr(%struct.Lisp_Subr*) #1

declare void @defvar_lisp(%struct.Lisp_Objfwd*, i8*, i64*) #1

; Function Attrs: nounwind uwtable
define void @mark_fringe_data() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @max_fringe_bitmaps, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i64*, i64** @fringe_faces, align 8
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 %idxprom
  %4 = load i64, i64* %arrayidx, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1 = icmp eq i64 %4, %call
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load i64*, i64** @fringe_faces, align 8
  %arrayidx3 = getelementptr inbounds i64, i64* %6, i64 %idxprom2
  %7 = load i64, i64* %arrayidx3, align 8
  call void @mark_object(i64 %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @mark_object(i64) #1

; Function Attrs: nounwind uwtable
define void @init_fringe_once() #0 {
entry:
  %bt = alloca i32, align 4
  store i32 1, i32* %bt, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %bt, align 4
  %conv = sext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 24
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %bt, align 4
  %2 = load i32, i32* %bt, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [24 x %struct.fringe_bitmap], [24 x %struct.fringe_bitmap]* bitcast (<{ { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 }, { i16*, i8, i8, i8, i8 } }>* @standard_bitmaps to [24 x %struct.fringe_bitmap]*), i32 0, i64 %idxprom
  call void @init_fringe_bitmap(i32 %1, %struct.fringe_bitmap* %arrayidx, i32 1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %bt, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %bt, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_fringe() #0 {
entry:
  store i32 44, i32* @max_fringe_bitmaps, align 4
  %0 = load i32, i32* @max_fringe_bitmaps, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 8
  %call = call noalias i8* @xzalloc(i64 %mul)
  %1 = bitcast i8* %call to %struct.fringe_bitmap**
  store %struct.fringe_bitmap** %1, %struct.fringe_bitmap*** @fringe_bitmaps, align 8
  %2 = load i32, i32* @max_fringe_bitmaps, align 4
  %conv1 = sext i32 %2 to i64
  %mul2 = mul i64 %conv1, 8
  %call3 = call noalias i8* @xzalloc(i64 %mul2)
  %3 = bitcast i8* %call3 to i64*
  store i64* %3, i64** @fringe_faces, align 8
  ret void
}

declare noalias i8* @xzalloc(i64) #1

declare i32 @lookup_named_face(%struct.frame*, i64, i1 zeroext) #1

declare void @prepare_face_for_display(%struct.frame*, %struct.face*) #1

declare i32 @window_box_left(%struct.window*, i32) #1

declare i32 @window_box_right(%struct.window*, i32) #1

declare i64 @Flength(i64) #1

declare i64 @Fnth(i64, i64) #1

declare void @xfree(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
