; ModuleID = './src/indent.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.buffer_text, %struct.buffer_text*, %struct.buffer*, i64, i64, i64, i64, i64, i64, %struct.buffer*, i32, i32, [50 x i8], %struct.timespec, i64, i64, i64, i64, i64, %struct.region_cache*, %struct.region_cache*, %struct.region_cache*, i8, %struct.Lisp_Overlay*, %struct.Lisp_Overlay*, i64, i64 }
%struct.vectorlike_header = type { i64 }
%struct.buffer_text = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.interval*, %struct.Lisp_Marker*, i8 }
%struct.interval = type { i64, i64, %struct.interval*, %struct.interval*, %union.anon, i8, i64 }
%union.anon = type { %struct.interval* }
%struct.Lisp_Marker = type { i32, %struct.buffer*, %struct.Lisp_Marker*, i64, i64 }
%struct.timespec = type { i64, i64 }
%struct.region_cache = type opaque
%struct.Lisp_Overlay = type { i32, %struct.Lisp_Overlay*, i64, i64, i64 }
%struct.emacs_globals = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.position = type { i64, i64, i64, i64, i64, i32 }
%struct.Lisp_Boolfwd = type { i32, i8* }
%struct.Lisp_Subr = type { %struct.vectorlike_header, %union.anon.11, i16, i16, i8*, i8*, i8* }
%union.anon.11 = type { i64 ()* }
%struct.Lisp_Char_Table = type { %struct.vectorlike_header, i64, i64, i64, i64, [64 x i64], [0 x i64] }
%struct.Lisp_Vector = type { %struct.vectorlike_header, [0 x i64] }
%struct.Lisp_Sub_Char_Table = type { %struct.vectorlike_header, i32, i32, [0 x i64] }
%struct.window = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.glyph_matrix*, %struct.glyph_matrix*, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, %struct.cursor_pos, %struct.cursor_pos, %struct.cursor_pos, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i64 }
%struct.glyph_matrix = type { %struct.glyph_pool*, %struct.glyph_row*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.buffer*, i64, i64 }
%struct.glyph_pool = type { %struct.glyph*, i64, i32, i32 }
%struct.glyph = type { i64, i64, i16, i16, i16, i16, i24, i24, %union.anon.0, %union.anon.2 }
%union.anon.0 = type { %struct.glyph_slice }
%struct.glyph_slice = type { i64 }
%union.anon.2 = type { i32 }
%struct.glyph_row = type <{ [4 x %struct.glyph*], [4 x i16], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.display_pos, %struct.display_pos, %struct.text_pos, %struct.text_pos, i32, [11 x i8], i8, i24, i24, i32, i40, i32, %struct.XRectangle* }>
%struct.display_pos = type { %struct.text_pos, i64, %struct.text_pos, i32 }
%struct.text_pos = type { i64, i64 }
%struct.XRectangle = type { i16, i16, i16, i16 }
%struct.cursor_pos = type { i32, i32, i32, i32 }
%struct.composition_it = type { i64, i64, i32, i32, i64, i32, i8, i64, i32, i32, i32, i32, i32 }
%struct.face = type { [19 x i64], i32, %struct._XGC*, i64, i64, i64, i64, i64, i64, i64, %struct.font*, i32, i32, i24, i32, %struct.face*, %struct.face*, %struct.face*, i8* }
%struct._XGC = type opaque
%struct.font = type { %struct.vectorlike_header, [17 x i64], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, %struct.font_driver* }
%struct.font_driver = type { i64, i8, i64 (%struct.frame*)*, i64 (%struct.frame*, i64)*, i64 (%struct.frame*, i64)*, i64 (%struct.frame*)*, void (i64)*, i64 (%struct.frame*, i64, i32)*, void (%struct.font*)*, void (%struct.frame*, %struct.face*)*, void (%struct.frame*, %struct.face*)*, i32 (i64, i32)*, i32 (%struct.font*, i32)*, void (%struct.font*, i32*, i32, %struct.font_metrics*)*, i32 (%struct.glyph_string*, i32, i32, i32, i32, i1)*, i32 (%struct.font*, i32, %struct.font_bitmap*, i32)*, void (%struct.font*, %struct.font_bitmap*)*, i32 (%struct.font*, i32, i32, i32*, i32*)*, i64 (%struct.font*)*, i32 (%struct.font*, i64, i64, i32, i32, i64, i32, i1)*, i32 (%struct.frame*)*, i32 (%struct.frame*)*, i64 (i64)*, i32 (%struct.frame*, %struct.font*)*, i32 (%struct.font*, i32, i32*)*, void (i64, i64)*, i1 (%struct.frame*, i64, i64)*, i64 (%struct.font*)* }
%struct.frame = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.face_cache*, i32, %struct.glyph_pool*, %struct.glyph_pool*, %struct.glyph_matrix*, %struct.glyph_matrix*, i48, i32, i32, i32, i32, i8*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.terminal*, %union.output_data, %struct.font_driver_list*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x double], double, i32, i64, i64 }
%struct.face_cache = type { %struct.face**, %struct.frame*, %struct.face**, i64, i32, i8 }
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
%struct.iterator_stack_entry = type { i64, i32, i64, i64, i64, i64, %struct.composition_it, i32, %union.anon.6, %struct.text_pos, %struct.display_pos, i64, i32, i32, i32, i8, i32, i16, i64, i64 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { i64, %struct.it_slice, i64 }
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
%struct.Lisp_Cons = type { i64, %union.anon.10 }
%union.anon.10 = type { i64 }

@current_buffer = external global %struct.buffer*, align 8
@globals = external global %struct.emacs_globals, align 8
@last_known_column_point = common global i64 0, align 8
@last_known_column_modified = internal global i64 0, align 8
@last_known_column = internal global i64 0, align 8
@immediate_quit = external global i8, align 1
@pending_signals = external global i8, align 1
@val_compute_motion = internal global %struct.position zeroinitializer, align 8
@val_vmotion = internal global %struct.position zeroinitializer, align 8
@noninteractive = external global i8, align 1
@syms_of_indent.b_fwd = internal global %struct.Lisp_Boolfwd zeroinitializer, align 8
@.str = private unnamed_addr constant [17 x i8] c"indent-tabs-mode\00", align 1
@Scurrent_indentation = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon.11 { i64 ()* @Fcurrent_indentation }, i16 0, i16 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i8* null, i8* null }, align 8
@Scurrent_column = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon.11 { i64 ()* @Fcurrent_column }, i16 0, i16 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"current-indentation\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"indent-to\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"NIndent to column: \00", align 1
@Sindent_to = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Findent_to }, i16 1, i16 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i8* null }, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"current-column\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"move-to-column\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"NMove to column: \00", align 1
@Smove_to_column = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fmove_to_column }, i16 1, i16 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i8* null }, align 8
@.str.7 = private unnamed_addr constant [16 x i8] c"vertical-motion\00", align 1
@Svertical_motion = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Fvertical_motion }, i16 1, i16 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.8 = private unnamed_addr constant [15 x i8] c"compute-motion\00", align 1
@Scompute_motion = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64, i64, i64, i64)* @Fcompute_motion }, i16 7, i16 7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* null }, align 8

; Function Attrs: nounwind uwtable
define %struct.Lisp_Char_Table* @buffer_display_table() #0 {
entry:
  %retval = alloca %struct.Lisp_Char_Table*, align 8
  %thisbuf = alloca i64, align 8
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %display_table_ = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 37
  %1 = load i64, i64* %display_table_, align 8
  store i64 %1, i64* %thisbuf, align 8
  %2 = load i64, i64* %thisbuf, align 8
  %call = call zeroext i1 @CHAR_TABLE_P(i64 %2)
  br i1 %call, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i64, i64* %thisbuf, align 8
  %call1 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %3)
  %purpose = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call1, i32 0, i32 3
  %4 = load i64, i64* %purpose, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 346)
  %cmp = icmp eq i64 %4, %call2
  br i1 %cmp, label %land.lhs.true.3, label %if.end

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %5 = load i64, i64* %thisbuf, align 8
  %call4 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %5)
  %call5 = call i32 @CHAR_TABLE_EXTRA_SLOTS(%struct.Lisp_Char_Table* %call4)
  %cmp6 = icmp eq i32 %call5, 6
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.3
  %6 = load i64, i64* %thisbuf, align 8
  %call7 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %6)
  store %struct.Lisp_Char_Table* %call7, %struct.Lisp_Char_Table** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.3, %land.lhs.true, %entry
  %7 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 275), align 8
  %call8 = call zeroext i1 @CHAR_TABLE_P(i64 %7)
  br i1 %call8, label %land.lhs.true.9, label %if.end.20

land.lhs.true.9:                                  ; preds = %if.end
  %8 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 275), align 8
  %call10 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %8)
  %purpose11 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call10, i32 0, i32 3
  %9 = load i64, i64* %purpose11, align 8
  %call12 = call i64 @builtin_lisp_symbol(i32 346)
  %cmp13 = icmp eq i64 %9, %call12
  br i1 %cmp13, label %land.lhs.true.14, label %if.end.20

land.lhs.true.14:                                 ; preds = %land.lhs.true.9
  %10 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 275), align 8
  %call15 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %10)
  %call16 = call i32 @CHAR_TABLE_EXTRA_SLOTS(%struct.Lisp_Char_Table* %call15)
  %cmp17 = icmp eq i32 %call16, 6
  br i1 %cmp17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %land.lhs.true.14
  %11 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 275), align 8
  %call19 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %11)
  store %struct.Lisp_Char_Table* %call19, %struct.Lisp_Char_Table** %retval
  br label %return

if.end.20:                                        ; preds = %land.lhs.true.14, %land.lhs.true.9, %if.end
  store %struct.Lisp_Char_Table* null, %struct.Lisp_Char_Table** %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.then.18, %if.then
  %12 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %retval
  ret %struct.Lisp_Char_Table* %12
}

declare zeroext i1 @CHAR_TABLE_P(i64) #1

declare %struct.Lisp_Char_Table* @XCHAR_TABLE(i64) #1

declare i64 @builtin_lisp_symbol(i32) #1

declare i32 @CHAR_TABLE_EXTRA_SLOTS(%struct.Lisp_Char_Table*) #1

; Function Attrs: nounwind uwtable
define zeroext i1 @disptab_matches_widthtab(%struct.Lisp_Char_Table* %disptab, %struct.Lisp_Vector* %widthtab) #0 {
entry:
  %retval = alloca i1, align 1
  %disptab.addr = alloca %struct.Lisp_Char_Table*, align 8
  %widthtab.addr = alloca %struct.Lisp_Vector*, align 8
  %i = alloca i32, align 4
  store %struct.Lisp_Char_Table* %disptab, %struct.Lisp_Char_Table** %disptab.addr, align 8
  store %struct.Lisp_Vector* %widthtab, %struct.Lisp_Vector** %widthtab.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %disptab.addr, align 8
  %call = call i32 @character_width(i32 %1, %struct.Lisp_Char_Table* %2)
  %conv = sext i32 %call to i64
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.Lisp_Vector*, %struct.Lisp_Vector** %widthtab.addr, align 8
  %contents = getelementptr inbounds %struct.Lisp_Vector, %struct.Lisp_Vector* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* %contents, i32 0, i64 %idxprom
  %5 = load i64, i64* %arrayidx, align 8
  %shr = ashr i64 %5, 2
  %cmp1 = icmp ne i64 %conv, %shr
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i1 false, i1* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i1 true, i1* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load i1, i1* %retval
  ret i1 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @character_width(i32 %c, %struct.Lisp_Char_Table* %dp) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %dp.addr = alloca %struct.Lisp_Char_Table*, align 8
  %elt = alloca i64, align 8
  store i32 %c, i32* %c.addr, align 4
  store %struct.Lisp_Char_Table* %dp, %struct.Lisp_Char_Table** %dp.addr, align 8
  %0 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp.addr, align 8
  %tobool = icmp ne %struct.Lisp_Char_Table* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %1 = load i32, i32* %c.addr, align 4
  %add = add i32 %1, 0
  %cmp = icmp ult i32 %add, 128
  br i1 %cmp, label %cond.true.4, label %cond.false.19

cond.false:                                       ; preds = %land.lhs.true
  %2 = load i32, i32* %c.addr, align 4
  %conv = sext i32 %2 to i64
  %add1 = add i64 %conv, 0
  %cmp2 = icmp ult i64 %add1, 128
  br i1 %cmp2, label %cond.true.4, label %cond.false.19

cond.true.4:                                      ; preds = %cond.false, %cond.true
  %3 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp.addr, align 8
  %ascii = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %3, i32 0, i32 4
  %4 = load i64, i64* %ascii, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp5 = icmp eq i64 %4, %call
  br i1 %cmp5, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %cond.true.4
  %5 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp.addr, align 8
  %defalt = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %5, i32 0, i32 1
  %6 = load i64, i64* %defalt, align 8
  br label %cond.end.17

cond.false.8:                                     ; preds = %cond.true.4
  %7 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp.addr, align 8
  %ascii9 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %7, i32 0, i32 4
  %8 = load i64, i64* %ascii9, align 8
  %call10 = call zeroext i1 @SUB_CHAR_TABLE_P(i64 %8)
  br i1 %call10, label %cond.true.12, label %cond.false.15

cond.true.12:                                     ; preds = %cond.false.8
  %9 = load i32, i32* %c.addr, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp.addr, align 8
  %ascii13 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %10, i32 0, i32 4
  %11 = load i64, i64* %ascii13, align 8
  %call14 = call %struct.Lisp_Sub_Char_Table* @XSUB_CHAR_TABLE(i64 %11)
  %contents = getelementptr inbounds %struct.Lisp_Sub_Char_Table, %struct.Lisp_Sub_Char_Table* %call14, i32 0, i32 3
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* %contents, i32 0, i64 %idxprom
  %12 = load i64, i64* %arrayidx, align 8
  br label %cond.end

cond.false.15:                                    ; preds = %cond.false.8
  %13 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp.addr, align 8
  %ascii16 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %13, i32 0, i32 4
  %14 = load i64, i64* %ascii16, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.15, %cond.true.12
  %cond = phi i64 [ %12, %cond.true.12 ], [ %14, %cond.false.15 ]
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.end, %cond.true.7
  %cond18 = phi i64 [ %6, %cond.true.7 ], [ %cond, %cond.end ]
  br label %cond.end.21

cond.false.19:                                    ; preds = %cond.false, %cond.true
  %15 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp.addr, align 8
  %16 = load i32, i32* %c.addr, align 4
  %call20 = call i64 @disp_char_vector(%struct.Lisp_Char_Table* %15, i32 %16)
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.19, %cond.end.17
  %cond22 = phi i64 [ %cond18, %cond.end.17 ], [ %call20, %cond.false.19 ]
  store i64 %cond22, i64* %elt, align 8
  %17 = load i64, i64* %elt, align 8
  %call23 = call zeroext i1 @VECTORP(i64 %17)
  br i1 %call23, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.21
  %18 = load i64, i64* %elt, align 8
  %call25 = call i64 @ASIZE(i64 %18)
  %conv26 = trunc i64 %call25 to i32
  store i32 %conv26, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end.21, %entry
  %19 = load i32, i32* %c.addr, align 4
  %cmp27 = icmp eq i32 %19, 10
  br i1 %cmp27, label %if.then.34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %20 = load i32, i32* %c.addr, align 4
  %cmp29 = icmp eq i32 %20, 9
  br i1 %cmp29, label %if.then.34, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %lor.lhs.false
  %21 = load i32, i32* %c.addr, align 4
  %cmp32 = icmp eq i32 %21, 13
  br i1 %cmp32, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %lor.lhs.false.31, %lor.lhs.false, %if.end
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false.31
  %22 = load i32, i32* %c.addr, align 4
  %cmp35 = icmp sge i32 %22, 32
  br i1 %cmp35, label %land.lhs.true.37, label %if.else.41

land.lhs.true.37:                                 ; preds = %if.else
  %23 = load i32, i32* %c.addr, align 4
  %cmp38 = icmp slt i32 %23, 127
  br i1 %cmp38, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %land.lhs.true.37
  store i32 1, i32* %retval
  br label %return

if.else.41:                                       ; preds = %land.lhs.true.37, %if.else
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.41, %if.then.40, %if.then.34, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define void @recompute_width_table(%struct.buffer* %buf, %struct.Lisp_Char_Table* %disptab) #0 {
entry:
  %buf.addr = alloca %struct.buffer*, align 8
  %disptab.addr = alloca %struct.Lisp_Char_Table*, align 8
  %i = alloca i32, align 4
  %widthtab = alloca %struct.Lisp_Vector*, align 8
  store %struct.buffer* %buf, %struct.buffer** %buf.addr, align 8
  store %struct.Lisp_Char_Table* %disptab, %struct.Lisp_Char_Table** %disptab.addr, align 8
  %0 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %width_table_ = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 44
  %1 = load i64, i64* %width_table_, align 8
  %call = call zeroext i1 @VECTORP(i64 %1)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %call1 = call i64 @make_uninit_vector(i64 256)
  call void @bset_width_table(%struct.buffer* %2, i64 %call1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %width_table_2 = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i32 0, i32 44
  %4 = load i64, i64* %width_table_2, align 8
  %call3 = call %struct.Lisp_Vector* @XVECTOR(i64 %4)
  store %struct.Lisp_Vector* %call3, %struct.Lisp_Vector** %widthtab, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %5, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %7 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %disptab.addr, align 8
  %call4 = call i32 @character_width(i32 %6, %struct.Lisp_Char_Table* %7)
  %conv = sext i32 %call4 to i64
  %call5 = call i64 @make_natnum(i64 %conv)
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.Lisp_Vector*, %struct.Lisp_Vector** %widthtab, align 8
  %contents = getelementptr inbounds %struct.Lisp_Vector, %struct.Lisp_Vector* %9, i32 0, i32 1
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* %contents, i32 0, i64 %idxprom
  store i64 %call5, i64* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare zeroext i1 @VECTORP(i64) #1

declare void @bset_width_table(%struct.buffer*, i64) #1

declare i64 @make_uninit_vector(i64) #1

declare %struct.Lisp_Vector* @XVECTOR(i64) #1

declare i64 @make_natnum(i64) #1

; Function Attrs: nounwind uwtable
define i64 @skip_invisible(i64 %pos, i64* %next_boundary_p, i64 %to, i64 %window) #0 {
entry:
  %retval = alloca i64, align 8
  %pos.addr = alloca i64, align 8
  %next_boundary_p.addr = alloca i64*, align 8
  %to.addr = alloca i64, align 8
  %window.addr = alloca i64, align 8
  %prop = alloca i64, align 8
  %position = alloca i64, align 8
  %overlay_limit = alloca i64, align 8
  %proplimit = alloca i64, align 8
  %buffer = alloca i64, align 8
  %tmp = alloca i64, align 8
  %end = alloca i64, align 8
  %inv_p = alloca i32, align 4
  store i64 %pos, i64* %pos.addr, align 8
  store i64* %next_boundary_p, i64** %next_boundary_p.addr, align 8
  store i64 %to, i64* %to.addr, align 8
  store i64 %window, i64* %window.addr, align 8
  %0 = load i64, i64* %pos.addr, align 8
  %call = call i64 @make_natnum(i64 %0)
  store i64 %call, i64* %position, align 8
  %1 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %2 = bitcast %struct.buffer* %1 to i8*
  %call3 = call i64 @make_lisp_ptr(i8* %2, i32 5)
  store i64 %call3, i64* %buffer, align 8
  %3 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %4 = load i64, i64* %pos.addr, align 8
  call void @recenter_overlay_lists(%struct.buffer* %3, i64 %4)
  %5 = load i64, i64* %position, align 8
  %call4 = call i64 @Fnext_overlay_change(i64 %5)
  store i64 %call4, i64* %overlay_limit, align 8
  %6 = load i64, i64* %position, align 8
  %7 = load i64, i64* %buffer, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 901)
  %call6 = call i64 @Fnext_property_change(i64 %6, i64 %7, i64 %call5)
  store i64 %call6, i64* %proplimit, align 8
  %8 = load i64, i64* %overlay_limit, align 8
  %shr = ashr i64 %8, 2
  %9 = load i64, i64* %proplimit, align 8
  %shr7 = ashr i64 %9, 2
  %cmp = icmp slt i64 %shr, %shr7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i64, i64* %overlay_limit, align 8
  store i64 %10, i64* %proplimit, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i64, i64* %proplimit, align 8
  %shr8 = ashr i64 %11, 2
  %12 = load i64, i64* %pos.addr, align 8
  %add = add nsw i64 %12, 100
  %cmp9 = icmp sgt i64 %shr8, %add
  br i1 %cmp9, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %13 = load i64, i64* %proplimit, align 8
  %shr10 = ashr i64 %13, 2
  %14 = load i64, i64* %to.addr, align 8
  %cmp11 = icmp sge i64 %shr10, %14
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %lor.lhs.false, %if.end
  %15 = load i64, i64* %proplimit, align 8
  %shr13 = ashr i64 %15, 2
  %16 = load i64*, i64** %next_boundary_p.addr, align 8
  store i64 %shr13, i64* %16, align 8
  br label %if.end.26

if.else:                                          ; preds = %lor.lhs.false
  %17 = load i64, i64* %pos.addr, align 8
  %add14 = add nsw i64 %17, 100
  %18 = load i64, i64* %to.addr, align 8
  %cmp15 = icmp slt i64 %add14, %18
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %19 = load i64, i64* %pos.addr, align 8
  %add16 = add nsw i64 %19, 100
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %20 = load i64, i64* %to.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add16, %cond.true ], [ %20, %cond.false ]
  %call17 = call i64 @make_natnum(i64 %cond)
  store i64 %call17, i64* %proplimit, align 8
  %21 = load i64, i64* %overlay_limit, align 8
  %shr18 = ashr i64 %21, 2
  %22 = load i64, i64* %proplimit, align 8
  %shr19 = ashr i64 %22, 2
  %cmp20 = icmp slt i64 %shr18, %shr19
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %cond.end
  %23 = load i64, i64* %overlay_limit, align 8
  store i64 %23, i64* %proplimit, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %cond.end
  %24 = load i64, i64* %position, align 8
  %call23 = call i64 @builtin_lisp_symbol(i32 574)
  %25 = load i64, i64* %buffer, align 8
  %26 = load i64, i64* %proplimit, align 8
  %call24 = call i64 @Fnext_single_property_change(i64 %24, i64 %call23, i64 %25, i64 %26)
  store i64 %call24, i64* %tmp, align 8
  %27 = load i64, i64* %tmp, align 8
  %shr25 = ashr i64 %27, 2
  store i64 %shr25, i64* %end, align 8
  %28 = load i64, i64* %end, align 8
  %29 = load i64*, i64** %next_boundary_p.addr, align 8
  store i64 %28, i64* %29, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.22, %if.then.12
  %30 = load i64, i64* %position, align 8
  %call27 = call i64 @builtin_lisp_symbol(i32 574)
  %31 = load i64, i64* %window.addr, align 8
  %call28 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp29 = icmp eq i64 %31, %call28
  br i1 %cmp29, label %cond.false.33, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.26
  %32 = load i64, i64* %window.addr, align 8
  %call30 = call %struct.window* @XWINDOW(i64 %32)
  %contents = getelementptr inbounds %struct.window, %struct.window* %call30, i32 0, i32 10
  %33 = load i64, i64* %contents, align 8
  %34 = load i64, i64* %buffer, align 8
  %cmp31 = icmp eq i64 %33, %34
  br i1 %cmp31, label %cond.true.32, label %cond.false.33

cond.true.32:                                     ; preds = %land.lhs.true
  %35 = load i64, i64* %window.addr, align 8
  br label %cond.end.34

cond.false.33:                                    ; preds = %land.lhs.true, %if.end.26
  %36 = load i64, i64* %buffer, align 8
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.false.33, %cond.true.32
  %cond35 = phi i64 [ %35, %cond.true.32 ], [ %36, %cond.false.33 ]
  %call36 = call i64 @Fget_char_property(i64 %30, i64 %call27, i64 %cond35)
  store i64 %call36, i64* %prop, align 8
  %37 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %invisibility_spec_ = getelementptr inbounds %struct.buffer, %struct.buffer* %37, i32 0, i32 50
  %38 = load i64, i64* %invisibility_spec_, align 8
  %call37 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp38 = icmp eq i64 %38, %call37
  br i1 %cmp38, label %cond.true.39, label %cond.false.42

cond.true.39:                                     ; preds = %cond.end.34
  %39 = load i64, i64* %prop, align 8
  %call40 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp41 = icmp eq i64 %39, %call40
  %lnot = xor i1 %cmp41, true
  %lnot.ext = zext i1 %lnot to i32
  br label %cond.end.45

cond.false.42:                                    ; preds = %cond.end.34
  %40 = load i64, i64* %prop, align 8
  %41 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %invisibility_spec_43 = getelementptr inbounds %struct.buffer, %struct.buffer* %41, i32 0, i32 50
  %42 = load i64, i64* %invisibility_spec_43, align 8
  %call44 = call i32 @invisible_prop(i64 %40, i64 %42)
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.42, %cond.true.39
  %cond46 = phi i32 [ %lnot.ext, %cond.true.39 ], [ %call44, %cond.false.42 ]
  store i32 %cond46, i32* %inv_p, align 4
  %43 = load i64, i64* %window.addr, align 8
  %call47 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp48 = icmp eq i64 %43, %call47
  br i1 %cmp48, label %cond.true.49, label %cond.false.51

cond.true.49:                                     ; preds = %cond.end.45
  %44 = load i32, i32* %inv_p, align 4
  %cmp50 = icmp eq i32 %44, 1
  br i1 %cmp50, label %if.then.52, label %if.end.53

cond.false.51:                                    ; preds = %cond.end.45
  %45 = load i32, i32* %inv_p, align 4
  %tobool = icmp ne i32 %45, 0
  br i1 %tobool, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %cond.false.51, %cond.true.49
  %46 = load i64*, i64** %next_boundary_p.addr, align 8
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %retval
  br label %return

if.end.53:                                        ; preds = %cond.false.51, %cond.true.49
  %48 = load i64, i64* %pos.addr, align 8
  store i64 %48, i64* %retval
  br label %return

return:                                           ; preds = %if.end.53, %if.then.52
  %49 = load i64, i64* %retval
  ret i64 %49
}

declare i64 @make_lisp_ptr(i8*, i32) #1

declare void @recenter_overlay_lists(%struct.buffer*, i64) #1

declare i64 @Fnext_overlay_change(i64) #1

declare i64 @Fnext_property_change(i64, i64, i64) #1

declare i64 @Fnext_single_property_change(i64, i64, i64, i64) #1

declare i64 @Fget_char_property(i64, i64, i64) #1

declare %struct.window* @XWINDOW(i64) #1

declare i32 @invisible_prop(i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fcurrent_column() #0 {
entry:
  %temp = alloca i64, align 8
  %call = call i64 @current_column()
  %call1 = call i64 @make_natnum(i64 %call)
  store i64 %call1, i64* %temp, align 8
  %0 = load i64, i64* %temp, align 8
  ret i64 %0
}

; Function Attrs: nounwind uwtable
define i64 @current_column() #0 {
entry:
  %retval = alloca i64, align 8
  %col = alloca i64, align 8
  %ptr = alloca i8*, align 8
  %stop = alloca i8*, align 8
  %tab_seen = alloca i8, align 1
  %post_tab = alloca i64, align 8
  %c = alloca i32, align 4
  %tab_width = alloca i32, align 4
  %ctl_arrow = alloca i8, align 1
  %dp = alloca %struct.Lisp_Char_Table*, align 8
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  %charvec = alloca i64, align 8
  %entry197 = alloca i64, align 8
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %tab_width_ = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 19
  %1 = load i64, i64* %tab_width_, align 8
  %shr = ashr i64 %1, 2
  %call = call i32 @sanitize_tab_width(i64 %shr)
  store i32 %call, i32* %tab_width, align 4
  %2 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %ctl_arrow_ = getelementptr inbounds %struct.buffer, %struct.buffer* %2, i32 0, i32 29
  %3 = load i64, i64* %ctl_arrow_, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %3, %call1
  %lnot = xor i1 %cmp, true
  %frombool = zext i1 %lnot to i8
  store i8 %frombool, i8* %ctl_arrow, align 1
  %call2 = call %struct.Lisp_Char_Table* @buffer_display_table()
  store %struct.Lisp_Char_Table* %call2, %struct.Lisp_Char_Table** %dp, align 8
  %4 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %4, i32 0, i32 75
  %5 = load i64, i64* %pt, align 8
  %add = add nsw i64 %5, 0
  %6 = load i64, i64* @last_known_column_point, align 8
  %cmp3 = icmp eq i64 %add, %6
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 73
  %8 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %8, i32 0, i32 6
  %9 = load i64, i64* %modiff, align 8
  %10 = load i64, i64* @last_known_column_modified, align 8
  %cmp4 = icmp eq i64 %9, %10
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %11 = load i64, i64* @last_known_column, align 8
  store i64 %11, i64* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %12 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %call5 = call %struct.interval* @buffer_intervals(%struct.buffer* %12)
  %tobool = icmp ne %struct.interval* %call5, null
  br i1 %tobool, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call6 = call zeroext i1 @buffer_has_overlays()
  br i1 %call6, label %if.then.11, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false
  %13 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text8 = getelementptr inbounds %struct.buffer, %struct.buffer* %13, i32 0, i32 73
  %14 = load %struct.buffer_text*, %struct.buffer_text** %text8, align 8
  %z = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %14, i32 0, i32 2
  %15 = load i64, i64* %z, align 8
  %16 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text9 = getelementptr inbounds %struct.buffer, %struct.buffer* %16, i32 0, i32 73
  %17 = load %struct.buffer_text*, %struct.buffer_text** %text9, align 8
  %z_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %17, i32 0, i32 4
  %18 = load i64, i64* %z_byte, align 8
  %cmp10 = icmp ne i64 %15, %18
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %lor.lhs.false.7, %lor.lhs.false, %if.end
  %call12 = call i64 @current_column_1()
  store i64 %call12, i64* %retval
  br label %return

if.end.13:                                        ; preds = %lor.lhs.false.7
  %19 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %19, i32 0, i32 76
  %20 = load i64, i64* %pt_byte, align 8
  %add14 = add nsw i64 %20, 0
  %sub = sub nsw i64 %add14, 1
  %21 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text15 = getelementptr inbounds %struct.buffer, %struct.buffer* %21, i32 0, i32 73
  %22 = load %struct.buffer_text*, %struct.buffer_text** %text15, align 8
  %gpt_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %22, i32 0, i32 3
  %23 = load i64, i64* %gpt_byte, align 8
  %cmp16 = icmp sge i64 %sub, %23
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.13
  %24 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text17 = getelementptr inbounds %struct.buffer, %struct.buffer* %24, i32 0, i32 73
  %25 = load %struct.buffer_text*, %struct.buffer_text** %text17, align 8
  %gap_size = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %25, i32 0, i32 5
  %26 = load i64, i64* %gap_size, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %26, %cond.true ], [ 0, %cond.false ]
  %27 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte18 = getelementptr inbounds %struct.buffer, %struct.buffer* %27, i32 0, i32 76
  %28 = load i64, i64* %pt_byte18, align 8
  %add19 = add nsw i64 %28, 0
  %sub20 = sub nsw i64 %add19, 1
  %add21 = add nsw i64 %cond, %sub20
  %29 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text22 = getelementptr inbounds %struct.buffer, %struct.buffer* %29, i32 0, i32 73
  %30 = load %struct.buffer_text*, %struct.buffer_text** %text22, align 8
  %beg = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %30, i32 0, i32 0
  %31 = load i8*, i8** %beg, align 8
  %add.ptr = getelementptr inbounds i8, i8* %31, i64 %add21
  %add.ptr23 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %add.ptr24 = getelementptr inbounds i8, i8* %add.ptr23, i64 1
  store i8* %add.ptr24, i8** %ptr, align 8
  %32 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt25 = getelementptr inbounds %struct.buffer, %struct.buffer* %32, i32 0, i32 75
  %33 = load i64, i64* %pt25, align 8
  %add26 = add nsw i64 %33, 0
  %34 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %34, i32 0, i32 77
  %35 = load i64, i64* %begv, align 8
  %cmp27 = icmp eq i64 %add26, %35
  br i1 %cmp27, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %cond.end
  %36 = load i8*, i8** %ptr, align 8
  store i8* %36, i8** %stop, align 8
  br label %if.end.65

if.else:                                          ; preds = %cond.end
  %37 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt29 = getelementptr inbounds %struct.buffer, %struct.buffer* %37, i32 0, i32 75
  %38 = load i64, i64* %pt29, align 8
  %add30 = add nsw i64 %38, 0
  %39 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text31 = getelementptr inbounds %struct.buffer, %struct.buffer* %39, i32 0, i32 73
  %40 = load %struct.buffer_text*, %struct.buffer_text** %text31, align 8
  %gpt = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %40, i32 0, i32 1
  %41 = load i64, i64* %gpt, align 8
  %cmp32 = icmp sle i64 %add30, %41
  br i1 %cmp32, label %if.then.38, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %if.else
  %42 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv34 = getelementptr inbounds %struct.buffer, %struct.buffer* %42, i32 0, i32 77
  %43 = load i64, i64* %begv34, align 8
  %44 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text35 = getelementptr inbounds %struct.buffer, %struct.buffer* %44, i32 0, i32 73
  %45 = load %struct.buffer_text*, %struct.buffer_text** %text35, align 8
  %gpt36 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %45, i32 0, i32 1
  %46 = load i64, i64* %gpt36, align 8
  %cmp37 = icmp sgt i64 %43, %46
  br i1 %cmp37, label %if.then.38, label %if.else.54

if.then.38:                                       ; preds = %lor.lhs.false.33, %if.else
  %47 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %47, i32 0, i32 78
  %48 = load i64, i64* %begv_byte, align 8
  %49 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text39 = getelementptr inbounds %struct.buffer, %struct.buffer* %49, i32 0, i32 73
  %50 = load %struct.buffer_text*, %struct.buffer_text** %text39, align 8
  %gpt_byte40 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %50, i32 0, i32 3
  %51 = load i64, i64* %gpt_byte40, align 8
  %cmp41 = icmp sge i64 %48, %51
  br i1 %cmp41, label %cond.true.42, label %cond.false.45

cond.true.42:                                     ; preds = %if.then.38
  %52 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text43 = getelementptr inbounds %struct.buffer, %struct.buffer* %52, i32 0, i32 73
  %53 = load %struct.buffer_text*, %struct.buffer_text** %text43, align 8
  %gap_size44 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %53, i32 0, i32 5
  %54 = load i64, i64* %gap_size44, align 8
  br label %cond.end.46

cond.false.45:                                    ; preds = %if.then.38
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.false.45, %cond.true.42
  %cond47 = phi i64 [ %54, %cond.true.42 ], [ 0, %cond.false.45 ]
  %55 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte48 = getelementptr inbounds %struct.buffer, %struct.buffer* %55, i32 0, i32 78
  %56 = load i64, i64* %begv_byte48, align 8
  %add49 = add nsw i64 %cond47, %56
  %57 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text50 = getelementptr inbounds %struct.buffer, %struct.buffer* %57, i32 0, i32 73
  %58 = load %struct.buffer_text*, %struct.buffer_text** %text50, align 8
  %beg51 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %58, i32 0, i32 0
  %59 = load i8*, i8** %beg51, align 8
  %add.ptr52 = getelementptr inbounds i8, i8* %59, i64 %add49
  %add.ptr53 = getelementptr inbounds i8, i8* %add.ptr52, i64 -1
  store i8* %add.ptr53, i8** %stop, align 8
  br label %if.end.64

if.else.54:                                       ; preds = %lor.lhs.false.33
  %60 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text55 = getelementptr inbounds %struct.buffer, %struct.buffer* %60, i32 0, i32 73
  %61 = load %struct.buffer_text*, %struct.buffer_text** %text55, align 8
  %beg56 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %61, i32 0, i32 0
  %62 = load i8*, i8** %beg56, align 8
  %63 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text57 = getelementptr inbounds %struct.buffer, %struct.buffer* %63, i32 0, i32 73
  %64 = load %struct.buffer_text*, %struct.buffer_text** %text57, align 8
  %gpt_byte58 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %64, i32 0, i32 3
  %65 = load i64, i64* %gpt_byte58, align 8
  %add.ptr59 = getelementptr inbounds i8, i8* %62, i64 %65
  %66 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text60 = getelementptr inbounds %struct.buffer, %struct.buffer* %66, i32 0, i32 73
  %67 = load %struct.buffer_text*, %struct.buffer_text** %text60, align 8
  %gap_size61 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %67, i32 0, i32 5
  %68 = load i64, i64* %gap_size61, align 8
  %add.ptr62 = getelementptr inbounds i8, i8* %add.ptr59, i64 %68
  %add.ptr63 = getelementptr inbounds i8, i8* %add.ptr62, i64 -1
  store i8* %add.ptr63, i8** %stop, align 8
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.54, %cond.end.46
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.then.28
  store i64 0, i64* %col, align 8
  store i8 0, i8* %tab_seen, align 1
  store i64 0, i64* %post_tab, align 8
  br label %while.body

while.body:                                       ; preds = %if.end.65, %for.end
  %69 = load i8*, i8** %ptr, align 8
  %70 = load i8*, i8** %stop, align 8
  %cmp66 = icmp eq i8* %69, %70
  br i1 %cmp66, label %if.then.67, label %if.end.115

if.then.67:                                       ; preds = %while.body
  %71 = load i8*, i8** %ptr, align 8
  %72 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte68 = getelementptr inbounds %struct.buffer, %struct.buffer* %72, i32 0, i32 78
  %73 = load i64, i64* %begv_byte68, align 8
  %74 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text69 = getelementptr inbounds %struct.buffer, %struct.buffer* %74, i32 0, i32 73
  %75 = load %struct.buffer_text*, %struct.buffer_text** %text69, align 8
  %gpt_byte70 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %75, i32 0, i32 3
  %76 = load i64, i64* %gpt_byte70, align 8
  %cmp71 = icmp sge i64 %73, %76
  br i1 %cmp71, label %cond.true.72, label %cond.false.75

cond.true.72:                                     ; preds = %if.then.67
  %77 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text73 = getelementptr inbounds %struct.buffer, %struct.buffer* %77, i32 0, i32 73
  %78 = load %struct.buffer_text*, %struct.buffer_text** %text73, align 8
  %gap_size74 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %78, i32 0, i32 5
  %79 = load i64, i64* %gap_size74, align 8
  br label %cond.end.76

cond.false.75:                                    ; preds = %if.then.67
  br label %cond.end.76

cond.end.76:                                      ; preds = %cond.false.75, %cond.true.72
  %cond77 = phi i64 [ %79, %cond.true.72 ], [ 0, %cond.false.75 ]
  %80 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte78 = getelementptr inbounds %struct.buffer, %struct.buffer* %80, i32 0, i32 78
  %81 = load i64, i64* %begv_byte78, align 8
  %add79 = add nsw i64 %cond77, %81
  %82 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text80 = getelementptr inbounds %struct.buffer, %struct.buffer* %82, i32 0, i32 73
  %83 = load %struct.buffer_text*, %struct.buffer_text** %text80, align 8
  %beg81 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %83, i32 0, i32 0
  %84 = load i8*, i8** %beg81, align 8
  %add.ptr82 = getelementptr inbounds i8, i8* %84, i64 %add79
  %add.ptr83 = getelementptr inbounds i8, i8* %add.ptr82, i64 -1
  %cmp84 = icmp eq i8* %71, %add.ptr83
  br i1 %cmp84, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %cond.end.76
  br label %while.end

if.end.86:                                        ; preds = %cond.end.76
  %85 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte87 = getelementptr inbounds %struct.buffer, %struct.buffer* %85, i32 0, i32 78
  %86 = load i64, i64* %begv_byte87, align 8
  %87 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text88 = getelementptr inbounds %struct.buffer, %struct.buffer* %87, i32 0, i32 73
  %88 = load %struct.buffer_text*, %struct.buffer_text** %text88, align 8
  %gpt_byte89 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %88, i32 0, i32 3
  %89 = load i64, i64* %gpt_byte89, align 8
  %cmp90 = icmp sge i64 %86, %89
  br i1 %cmp90, label %cond.true.91, label %cond.false.94

cond.true.91:                                     ; preds = %if.end.86
  %90 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text92 = getelementptr inbounds %struct.buffer, %struct.buffer* %90, i32 0, i32 73
  %91 = load %struct.buffer_text*, %struct.buffer_text** %text92, align 8
  %gap_size93 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %91, i32 0, i32 5
  %92 = load i64, i64* %gap_size93, align 8
  br label %cond.end.95

cond.false.94:                                    ; preds = %if.end.86
  br label %cond.end.95

cond.end.95:                                      ; preds = %cond.false.94, %cond.true.91
  %cond96 = phi i64 [ %92, %cond.true.91 ], [ 0, %cond.false.94 ]
  %93 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte97 = getelementptr inbounds %struct.buffer, %struct.buffer* %93, i32 0, i32 78
  %94 = load i64, i64* %begv_byte97, align 8
  %add98 = add nsw i64 %cond96, %94
  %95 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text99 = getelementptr inbounds %struct.buffer, %struct.buffer* %95, i32 0, i32 73
  %96 = load %struct.buffer_text*, %struct.buffer_text** %text99, align 8
  %beg100 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %96, i32 0, i32 0
  %97 = load i8*, i8** %beg100, align 8
  %add.ptr101 = getelementptr inbounds i8, i8* %97, i64 %add98
  %add.ptr102 = getelementptr inbounds i8, i8* %add.ptr101, i64 -1
  store i8* %add.ptr102, i8** %stop, align 8
  %98 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text103 = getelementptr inbounds %struct.buffer, %struct.buffer* %98, i32 0, i32 73
  %99 = load %struct.buffer_text*, %struct.buffer_text** %text103, align 8
  %beg104 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %99, i32 0, i32 0
  %100 = load i8*, i8** %beg104, align 8
  %101 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text105 = getelementptr inbounds %struct.buffer, %struct.buffer* %101, i32 0, i32 73
  %102 = load %struct.buffer_text*, %struct.buffer_text** %text105, align 8
  %gpt_byte106 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %102, i32 0, i32 3
  %103 = load i64, i64* %gpt_byte106, align 8
  %add.ptr107 = getelementptr inbounds i8, i8* %100, i64 %103
  %add.ptr108 = getelementptr inbounds i8, i8* %add.ptr107, i64 -1
  store i8* %add.ptr108, i8** %ptr, align 8
  %104 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv109 = getelementptr inbounds %struct.buffer, %struct.buffer* %104, i32 0, i32 77
  %105 = load i64, i64* %begv109, align 8
  %106 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text110 = getelementptr inbounds %struct.buffer, %struct.buffer* %106, i32 0, i32 73
  %107 = load %struct.buffer_text*, %struct.buffer_text** %text110, align 8
  %gpt111 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %107, i32 0, i32 1
  %108 = load i64, i64* %gpt111, align 8
  %cmp112 = icmp sge i64 %105, %108
  br i1 %cmp112, label %if.then.113, label %if.end.114

if.then.113:                                      ; preds = %cond.end.95
  br label %while.end

if.end.114:                                       ; preds = %cond.end.95
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %while.body
  %109 = load i8*, i8** %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %109, i32 -1
  store i8* %incdec.ptr, i8** %ptr, align 8
  %110 = load i8, i8* %incdec.ptr, align 1
  %conv = zext i8 %110 to i32
  store i32 %conv, i32* %c, align 4
  %111 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %tobool116 = icmp ne %struct.Lisp_Char_Table* %111, null
  br i1 %tobool116, label %land.lhs.true.117, label %if.else.189

land.lhs.true.117:                                ; preds = %if.end.115
  br i1 true, label %cond.true.118, label %cond.false.122

cond.true.118:                                    ; preds = %land.lhs.true.117
  %112 = load i32, i32* %c, align 4
  %add119 = add i32 %112, 0
  %cmp120 = icmp ult i32 %add119, 128
  br i1 %cmp120, label %cond.true.127, label %cond.false.145

cond.false.122:                                   ; preds = %land.lhs.true.117
  %113 = load i32, i32* %c, align 4
  %conv123 = sext i32 %113 to i64
  %add124 = add i64 %conv123, 0
  %cmp125 = icmp ult i64 %add124, 128
  br i1 %cmp125, label %cond.true.127, label %cond.false.145

cond.true.127:                                    ; preds = %cond.false.122, %cond.true.118
  %114 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %ascii = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %114, i32 0, i32 4
  %115 = load i64, i64* %ascii, align 8
  %call128 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp129 = icmp eq i64 %115, %call128
  br i1 %cmp129, label %cond.true.131, label %cond.false.132

cond.true.131:                                    ; preds = %cond.true.127
  %116 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %defalt = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %116, i32 0, i32 1
  %117 = load i64, i64* %defalt, align 8
  br label %cond.end.143

cond.false.132:                                   ; preds = %cond.true.127
  %118 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %ascii133 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %118, i32 0, i32 4
  %119 = load i64, i64* %ascii133, align 8
  %call134 = call zeroext i1 @SUB_CHAR_TABLE_P(i64 %119)
  br i1 %call134, label %cond.true.136, label %cond.false.139

cond.true.136:                                    ; preds = %cond.false.132
  %120 = load i32, i32* %c, align 4
  %idxprom = sext i32 %120 to i64
  %121 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %ascii137 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %121, i32 0, i32 4
  %122 = load i64, i64* %ascii137, align 8
  %call138 = call %struct.Lisp_Sub_Char_Table* @XSUB_CHAR_TABLE(i64 %122)
  %contents = getelementptr inbounds %struct.Lisp_Sub_Char_Table, %struct.Lisp_Sub_Char_Table* %call138, i32 0, i32 3
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* %contents, i32 0, i64 %idxprom
  %123 = load i64, i64* %arrayidx, align 8
  br label %cond.end.141

cond.false.139:                                   ; preds = %cond.false.132
  %124 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %ascii140 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %124, i32 0, i32 4
  %125 = load i64, i64* %ascii140, align 8
  br label %cond.end.141

cond.end.141:                                     ; preds = %cond.false.139, %cond.true.136
  %cond142 = phi i64 [ %123, %cond.true.136 ], [ %125, %cond.false.139 ]
  br label %cond.end.143

cond.end.143:                                     ; preds = %cond.end.141, %cond.true.131
  %cond144 = phi i64 [ %117, %cond.true.131 ], [ %cond142, %cond.end.141 ]
  br label %cond.end.147

cond.false.145:                                   ; preds = %cond.false.122, %cond.true.118
  %126 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %127 = load i32, i32* %c, align 4
  %call146 = call i64 @disp_char_vector(%struct.Lisp_Char_Table* %126, i32 %127)
  br label %cond.end.147

cond.end.147:                                     ; preds = %cond.false.145, %cond.end.143
  %cond148 = phi i64 [ %cond144, %cond.end.143 ], [ %call146, %cond.false.145 ]
  %call149 = call zeroext i1 @VECTORP(i64 %cond148)
  br i1 %call149, label %if.then.151, label %if.else.189

if.then.151:                                      ; preds = %cond.end.147
  br i1 true, label %cond.true.152, label %cond.false.156

cond.true.152:                                    ; preds = %if.then.151
  %128 = load i32, i32* %c, align 4
  %add153 = add i32 %128, 0
  %cmp154 = icmp ult i32 %add153, 128
  br i1 %cmp154, label %cond.true.161, label %cond.false.184

cond.false.156:                                   ; preds = %if.then.151
  %129 = load i32, i32* %c, align 4
  %conv157 = sext i32 %129 to i64
  %add158 = add i64 %conv157, 0
  %cmp159 = icmp ult i64 %add158, 128
  br i1 %cmp159, label %cond.true.161, label %cond.false.184

cond.true.161:                                    ; preds = %cond.false.156, %cond.true.152
  %130 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %ascii162 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %130, i32 0, i32 4
  %131 = load i64, i64* %ascii162, align 8
  %call163 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp164 = icmp eq i64 %131, %call163
  br i1 %cmp164, label %cond.true.166, label %cond.false.168

cond.true.166:                                    ; preds = %cond.true.161
  %132 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %defalt167 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %132, i32 0, i32 1
  %133 = load i64, i64* %defalt167, align 8
  br label %cond.end.182

cond.false.168:                                   ; preds = %cond.true.161
  %134 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %ascii169 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %134, i32 0, i32 4
  %135 = load i64, i64* %ascii169, align 8
  %call170 = call zeroext i1 @SUB_CHAR_TABLE_P(i64 %135)
  br i1 %call170, label %cond.true.172, label %cond.false.178

cond.true.172:                                    ; preds = %cond.false.168
  %136 = load i32, i32* %c, align 4
  %idxprom173 = sext i32 %136 to i64
  %137 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %ascii174 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %137, i32 0, i32 4
  %138 = load i64, i64* %ascii174, align 8
  %call175 = call %struct.Lisp_Sub_Char_Table* @XSUB_CHAR_TABLE(i64 %138)
  %contents176 = getelementptr inbounds %struct.Lisp_Sub_Char_Table, %struct.Lisp_Sub_Char_Table* %call175, i32 0, i32 3
  %arrayidx177 = getelementptr inbounds [0 x i64], [0 x i64]* %contents176, i32 0, i64 %idxprom173
  %139 = load i64, i64* %arrayidx177, align 8
  br label %cond.end.180

cond.false.178:                                   ; preds = %cond.false.168
  %140 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %ascii179 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %140, i32 0, i32 4
  %141 = load i64, i64* %ascii179, align 8
  br label %cond.end.180

cond.end.180:                                     ; preds = %cond.false.178, %cond.true.172
  %cond181 = phi i64 [ %139, %cond.true.172 ], [ %141, %cond.false.178 ]
  br label %cond.end.182

cond.end.182:                                     ; preds = %cond.end.180, %cond.true.166
  %cond183 = phi i64 [ %133, %cond.true.166 ], [ %cond181, %cond.end.180 ]
  br label %cond.end.186

cond.false.184:                                   ; preds = %cond.false.156, %cond.true.152
  %142 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %143 = load i32, i32* %c, align 4
  %call185 = call i64 @disp_char_vector(%struct.Lisp_Char_Table* %142, i32 %143)
  br label %cond.end.186

cond.end.186:                                     ; preds = %cond.false.184, %cond.end.182
  %cond187 = phi i64 [ %cond183, %cond.end.182 ], [ %call185, %cond.false.184 ]
  store i64 %cond187, i64* %charvec, align 8
  %144 = load i64, i64* %charvec, align 8
  %call188 = call i64 @ASIZE(i64 %144)
  store i64 %call188, i64* %n, align 8
  br label %if.end.191

if.else.189:                                      ; preds = %cond.end.147, %if.end.115
  %call190 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call190, i64* %charvec, align 8
  store i64 1, i64* %n, align 8
  br label %if.end.191

if.end.191:                                       ; preds = %if.else.189, %cond.end.186
  %145 = load i64, i64* %n, align 8
  %sub192 = sub nsw i64 %145, 1
  store i64 %sub192, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.191
  %146 = load i64, i64* %i, align 8
  %cmp193 = icmp sge i64 %146, 0
  br i1 %cmp193, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %147 = load i64, i64* %charvec, align 8
  %call195 = call zeroext i1 @VECTORP(i64 %147)
  br i1 %call195, label %if.then.196, label %if.end.204

if.then.196:                                      ; preds = %for.body
  %148 = load i64, i64* %charvec, align 8
  %149 = load i64, i64* %i, align 8
  %call198 = call i64 @AREF(i64 %148, i64 %149)
  store i64 %call198, i64* %entry197, align 8
  %150 = load i64, i64* %entry197, align 8
  %call199 = call zeroext i1 @GLYPH_CODE_P(i64 %150)
  br i1 %call199, label %if.then.200, label %if.else.202

if.then.200:                                      ; preds = %if.then.196
  %151 = load i64, i64* %entry197, align 8
  %call201 = call i32 @GLYPH_CODE_CHAR(i64 %151)
  store i32 %call201, i32* %c, align 4
  br label %if.end.203

if.else.202:                                      ; preds = %if.then.196
  store i32 32, i32* %c, align 4
  br label %if.end.203

if.end.203:                                       ; preds = %if.else.202, %if.then.200
  br label %if.end.204

if.end.204:                                       ; preds = %if.end.203, %for.body
  %152 = load i32, i32* %c, align 4
  %cmp205 = icmp sge i32 %152, 32
  br i1 %cmp205, label %land.lhs.true.207, label %if.else.211

land.lhs.true.207:                                ; preds = %if.end.204
  %153 = load i32, i32* %c, align 4
  %cmp208 = icmp slt i32 %153, 127
  br i1 %cmp208, label %if.then.210, label %if.else.211

if.then.210:                                      ; preds = %land.lhs.true.207
  %154 = load i64, i64* %col, align 8
  %inc = add nsw i64 %154, 1
  store i64 %inc, i64* %col, align 8
  br label %if.end.250

if.else.211:                                      ; preds = %land.lhs.true.207, %if.end.204
  %155 = load i32, i32* %c, align 4
  %cmp212 = icmp eq i32 %155, 10
  br i1 %cmp212, label %if.then.221, label %lor.lhs.false.214

lor.lhs.false.214:                                ; preds = %if.else.211
  %156 = load i32, i32* %c, align 4
  %cmp215 = icmp eq i32 %156, 13
  br i1 %cmp215, label %land.lhs.true.217, label %if.else.223

land.lhs.true.217:                                ; preds = %lor.lhs.false.214
  %157 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %selective_display_ = getelementptr inbounds %struct.buffer, %struct.buffer* %157, i32 0, i32 32
  %158 = load i64, i64* %selective_display_, align 8
  %call218 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp219 = icmp eq i64 %158, %call218
  br i1 %cmp219, label %if.then.221, label %if.else.223

if.then.221:                                      ; preds = %land.lhs.true.217, %if.else.211
  %159 = load i8*, i8** %ptr, align 8
  %incdec.ptr222 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %incdec.ptr222, i8** %ptr, align 8
  br label %start_of_line_found

if.else.223:                                      ; preds = %land.lhs.true.217, %lor.lhs.false.214
  %160 = load i32, i32* %c, align 4
  %cmp224 = icmp eq i32 %160, 9
  br i1 %cmp224, label %if.then.226, label %if.else.235

if.then.226:                                      ; preds = %if.else.223
  %161 = load i8, i8* %tab_seen, align 1
  %tobool227 = trunc i8 %161 to i1
  br i1 %tobool227, label %if.then.228, label %if.end.233

if.then.228:                                      ; preds = %if.then.226
  %162 = load i64, i64* %col, align 8
  %163 = load i32, i32* %tab_width, align 4
  %conv229 = sext i32 %163 to i64
  %add230 = add nsw i64 %162, %conv229
  %164 = load i32, i32* %tab_width, align 4
  %conv231 = sext i32 %164 to i64
  %div = sdiv i64 %add230, %conv231
  %165 = load i32, i32* %tab_width, align 4
  %conv232 = sext i32 %165 to i64
  %mul = mul nsw i64 %div, %conv232
  store i64 %mul, i64* %col, align 8
  br label %if.end.233

if.end.233:                                       ; preds = %if.then.228, %if.then.226
  %166 = load i64, i64* %col, align 8
  %167 = load i64, i64* %post_tab, align 8
  %add234 = add nsw i64 %167, %166
  store i64 %add234, i64* %post_tab, align 8
  store i64 0, i64* %col, align 8
  store i8 1, i8* %tab_seen, align 1
  br label %if.end.248

if.else.235:                                      ; preds = %if.else.223
  %168 = load i64, i64* %charvec, align 8
  %call236 = call zeroext i1 @VECTORP(i64 %168)
  br i1 %call236, label %if.then.237, label %if.else.239

if.then.237:                                      ; preds = %if.else.235
  %169 = load i64, i64* %col, align 8
  %inc238 = add nsw i64 %169, 1
  store i64 %inc238, i64* %col, align 8
  br label %if.end.247

if.else.239:                                      ; preds = %if.else.235
  %170 = load i8, i8* %ctl_arrow, align 1
  %tobool240 = trunc i8 %170 to i1
  br i1 %tobool240, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.else.239
  %171 = load i32, i32* %c, align 4
  %cmp242 = icmp slt i32 %171, 128
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else.239
  %172 = phi i1 [ false, %if.else.239 ], [ %cmp242, %land.rhs ]
  %cond244 = select i1 %172, i32 2, i32 4
  %conv245 = sext i32 %cond244 to i64
  %173 = load i64, i64* %col, align 8
  %add246 = add nsw i64 %173, %conv245
  store i64 %add246, i64* %col, align 8
  br label %if.end.247

if.end.247:                                       ; preds = %land.end, %if.then.237
  br label %if.end.248

if.end.248:                                       ; preds = %if.end.247, %if.end.233
  br label %if.end.249

if.end.249:                                       ; preds = %if.end.248
  br label %if.end.250

if.end.250:                                       ; preds = %if.end.249, %if.then.210
  br label %for.inc

for.inc:                                          ; preds = %if.end.250
  %174 = load i64, i64* %i, align 8
  %dec = add nsw i64 %174, -1
  store i64 %dec, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.body

while.end:                                        ; preds = %if.then.113, %if.then.85
  br label %start_of_line_found

start_of_line_found:                              ; preds = %while.end, %if.then.221
  %175 = load i8, i8* %tab_seen, align 1
  %tobool251 = trunc i8 %175 to i1
  br i1 %tobool251, label %if.then.252, label %if.end.260

if.then.252:                                      ; preds = %start_of_line_found
  %176 = load i64, i64* %col, align 8
  %177 = load i32, i32* %tab_width, align 4
  %conv253 = sext i32 %177 to i64
  %add254 = add nsw i64 %176, %conv253
  %178 = load i32, i32* %tab_width, align 4
  %conv255 = sext i32 %178 to i64
  %div256 = sdiv i64 %add254, %conv255
  %179 = load i32, i32* %tab_width, align 4
  %conv257 = sext i32 %179 to i64
  %mul258 = mul nsw i64 %div256, %conv257
  store i64 %mul258, i64* %col, align 8
  %180 = load i64, i64* %post_tab, align 8
  %181 = load i64, i64* %col, align 8
  %add259 = add nsw i64 %181, %180
  store i64 %add259, i64* %col, align 8
  br label %if.end.260

if.end.260:                                       ; preds = %if.then.252, %start_of_line_found
  %182 = load i64, i64* %col, align 8
  store i64 %182, i64* @last_known_column, align 8
  %183 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt261 = getelementptr inbounds %struct.buffer, %struct.buffer* %183, i32 0, i32 75
  %184 = load i64, i64* %pt261, align 8
  %add262 = add nsw i64 %184, 0
  store i64 %add262, i64* @last_known_column_point, align 8
  %185 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text263 = getelementptr inbounds %struct.buffer, %struct.buffer* %185, i32 0, i32 73
  %186 = load %struct.buffer_text*, %struct.buffer_text** %text263, align 8
  %modiff264 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %186, i32 0, i32 6
  %187 = load i64, i64* %modiff264, align 8
  store i64 %187, i64* @last_known_column_modified, align 8
  %188 = load i64, i64* %col, align 8
  store i64 %188, i64* %retval
  br label %return

return:                                           ; preds = %if.end.260, %if.then.11, %if.then
  %189 = load i64, i64* %retval
  ret i64 %189
}

; Function Attrs: nounwind uwtable
define void @invalidate_current_column() #0 {
entry:
  store i64 0, i64* @last_known_column_point, align 8
  ret void
}

declare i32 @sanitize_tab_width(i64) #1

declare %struct.interval* @buffer_intervals(%struct.buffer*) #1

declare zeroext i1 @buffer_has_overlays() #1

; Function Attrs: nounwind uwtable
define internal i64 @current_column_1() #0 {
entry:
  %col = alloca i64, align 8
  %opoint = alloca i64, align 8
  store i64 2305843009213693951, i64* %col, align 8
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 75
  %1 = load i64, i64* %pt, align 8
  %add = add nsw i64 %1, 0
  store i64 %add, i64* %opoint, align 8
  call void @scan_for_column(i64* %opoint, i64* %col, i64* null)
  %2 = load i64, i64* %col, align 8
  ret i64 %2
}

declare zeroext i1 @SUB_CHAR_TABLE_P(i64) #1

declare %struct.Lisp_Sub_Char_Table* @XSUB_CHAR_TABLE(i64) #1

declare i64 @disp_char_vector(%struct.Lisp_Char_Table*, i32) #1

declare i64 @ASIZE(i64) #1

declare i64 @AREF(i64, i64) #1

declare zeroext i1 @GLYPH_CODE_P(i64) #1

declare i32 @GLYPH_CODE_CHAR(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Findent_to(i64 %column, i64 %minimum) #0 {
entry:
  %retval = alloca i64, align 8
  %column.addr = alloca i64, align 8
  %minimum.addr = alloca i64, align 8
  %mincol = alloca i64, align 8
  %fromcol = alloca i64, align 8
  %tab_width = alloca i32, align 4
  %n = alloca i64, align 8
  store i64 %column, i64* %column.addr, align 8
  store i64 %minimum, i64* %minimum.addr, align 8
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %tab_width_ = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 19
  %1 = load i64, i64* %tab_width_, align 8
  %shr = ashr i64 %1, 2
  %call = call i32 @sanitize_tab_width(i64 %shr)
  store i32 %call, i32* %tab_width, align 4
  %2 = load i64, i64* %column.addr, align 8
  %and = and i64 %2, 7
  %conv = trunc i64 %and to i32
  %and1 = and i32 %conv, -5
  %cmp = icmp eq i32 %and1, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call3 = call i64 @builtin_lisp_symbol(i32 559)
  %3 = load i64, i64* %column.addr, align 8
  %4 = call i64 @wrong_type_argument(i64 %call3, i64 %3) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %5, %cond.true
  %6 = load i64, i64* %minimum.addr, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp5 = icmp eq i64 %6, %call4
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %call7 = call i64 @make_natnum(i64 0)
  store i64 %call7, i64* %minimum.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %7 = load i64, i64* %minimum.addr, align 8
  %and8 = and i64 %7, 7
  %conv9 = trunc i64 %and8 to i32
  %and10 = and i32 %conv9, -5
  %cmp11 = icmp eq i32 %and10, 2
  br i1 %cmp11, label %cond.true.13, label %cond.false.14

cond.true.13:                                     ; preds = %if.end
  br label %cond.end.16

cond.false.14:                                    ; preds = %if.end
  %call15 = call i64 @builtin_lisp_symbol(i32 559)
  %8 = load i64, i64* %minimum.addr, align 8
  %9 = call i64 @wrong_type_argument(i64 %call15, i64 %8) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.16

cond.end.16:                                      ; preds = %10, %cond.true.13
  %call17 = call i64 @current_column()
  store i64 %call17, i64* %fromcol, align 8
  %11 = load i64, i64* %fromcol, align 8
  %12 = load i64, i64* %minimum.addr, align 8
  %shr18 = ashr i64 %12, 2
  %add = add nsw i64 %11, %shr18
  store i64 %add, i64* %mincol, align 8
  %13 = load i64, i64* %mincol, align 8
  %14 = load i64, i64* %column.addr, align 8
  %shr19 = ashr i64 %14, 2
  %cmp20 = icmp slt i64 %13, %shr19
  br i1 %cmp20, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %cond.end.16
  %15 = load i64, i64* %column.addr, align 8
  %shr23 = ashr i64 %15, 2
  store i64 %shr23, i64* %mincol, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %cond.end.16
  %16 = load i64, i64* %fromcol, align 8
  %17 = load i64, i64* %mincol, align 8
  %cmp25 = icmp eq i64 %16, %17
  br i1 %cmp25, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.end.24
  %18 = load i64, i64* %mincol, align 8
  %shl = shl i64 %18, 2
  %add28 = add i64 %shl, 2
  store i64 %add28, i64* %retval
  br label %return

if.end.29:                                        ; preds = %if.end.24
  %19 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 446), align 1
  %tobool = trunc i8 %19 to i1
  br i1 %tobool, label %if.then.30, label %if.end.45

if.then.30:                                       ; preds = %if.end.29
  %20 = load i64, i64* %mincol, align 8
  %21 = load i32, i32* %tab_width, align 4
  %conv31 = sext i32 %21 to i64
  %div = sdiv i64 %20, %conv31
  %22 = load i64, i64* %fromcol, align 8
  %23 = load i32, i32* %tab_width, align 4
  %conv32 = sext i32 %23 to i64
  %div33 = sdiv i64 %22, %conv32
  %sub = sub nsw i64 %div, %div33
  %call34 = call i64 @make_natnum(i64 %sub)
  store i64 %call34, i64* %n, align 8
  %24 = load i64, i64* %n, align 8
  %shr35 = ashr i64 %24, 2
  %cmp36 = icmp ne i64 %shr35, 0
  br i1 %cmp36, label %if.then.38, label %if.end.44

if.then.38:                                       ; preds = %if.then.30
  %25 = load i64, i64* %n, align 8
  %call39 = call i64 @builtin_lisp_symbol(i32 901)
  %call40 = call i64 @Finsert_char(i64 38, i64 %25, i64 %call39)
  %26 = load i64, i64* %mincol, align 8
  %27 = load i32, i32* %tab_width, align 4
  %conv41 = sext i32 %27 to i64
  %div42 = sdiv i64 %26, %conv41
  %28 = load i32, i32* %tab_width, align 4
  %conv43 = sext i32 %28 to i64
  %mul = mul nsw i64 %div42, %conv43
  store i64 %mul, i64* %fromcol, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.38, %if.then.30
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.end.29
  %29 = load i64, i64* %mincol, align 8
  %30 = load i64, i64* %fromcol, align 8
  %sub46 = sub nsw i64 %29, %30
  %call47 = call i64 @make_natnum(i64 %sub46)
  store i64 %call47, i64* %column.addr, align 8
  %31 = load i64, i64* %column.addr, align 8
  %call48 = call i64 @builtin_lisp_symbol(i32 901)
  %call49 = call i64 @Finsert_char(i64 130, i64 %31, i64 %call48)
  %32 = load i64, i64* %mincol, align 8
  store i64 %32, i64* @last_known_column, align 8
  %33 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %33, i32 0, i32 75
  %34 = load i64, i64* %pt, align 8
  %add50 = add nsw i64 %34, 0
  store i64 %add50, i64* @last_known_column_point, align 8
  %35 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %35, i32 0, i32 73
  %36 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %36, i32 0, i32 6
  %37 = load i64, i64* %modiff, align 8
  store i64 %37, i64* @last_known_column_modified, align 8
  %38 = load i64, i64* %mincol, align 8
  %shl51 = shl i64 %38, 2
  %add52 = add i64 %shl51, 2
  store i64 %add52, i64* %column.addr, align 8
  %39 = load i64, i64* %column.addr, align 8
  store i64 %39, i64* %retval
  br label %return

return:                                           ; preds = %if.end.45, %if.then.27
  %40 = load i64, i64* %retval
  ret i64 %40
}

; Function Attrs: noreturn
declare i64 @wrong_type_argument(i64, i64) #2

declare i64 @Finsert_char(i64, i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fcurrent_indentation() #0 {
entry:
  %posbyte = alloca i64, align 8
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 75
  %1 = load i64, i64* %pt, align 8
  %add = add nsw i64 %1, 0
  %2 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %2, i32 0, i32 76
  %3 = load i64, i64* %pt_byte, align 8
  %add1 = add nsw i64 %3, 0
  %4 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %4, i32 0, i32 77
  %5 = load i64, i64* %begv, align 8
  %6 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 78
  %7 = load i64, i64* %begv_byte, align 8
  %call = call i64 @find_newline(i64 %add, i64 %add1, i64 %5, i64 %7, i64 -1, i64* null, i64* %posbyte, i1 zeroext true)
  %8 = load i64, i64* %posbyte, align 8
  %call2 = call i64 @position_indentation(i64 %8)
  %shl = shl i64 %call2, 2
  %add3 = add i64 %shl, 2
  ret i64 %add3
}

declare i64 @find_newline(i64, i64, i64, i64, i64, i64*, i64*, i1 zeroext) #1

; Function Attrs: nounwind uwtable
define internal i64 @position_indentation(i64 %pos_byte) #0 {
entry:
  %retval = alloca i64, align 8
  %pos_byte.addr = alloca i64, align 8
  %column = alloca i64, align 8
  %tab_width = alloca i32, align 4
  %p = alloca i8*, align 8
  %stop = alloca i8*, align 8
  %start = alloca i8*, align 8
  %next_boundary_byte = alloca i64, align 8
  %ceiling = alloca i64, align 8
  %stop_pos_byte = alloca i64, align 8
  %next_boundary = alloca i64, align 8
  %pos = alloca i64, align 8
  %c = alloca i32, align 4
  %chp = alloca i8*, align 8
  store i64 %pos_byte, i64* %pos_byte.addr, align 8
  store i64 0, i64* %column, align 8
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %tab_width_ = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 19
  %1 = load i64, i64* %tab_width_, align 8
  %shr = ashr i64 %1, 2
  %call = call i32 @sanitize_tab_width(i64 %shr)
  store i32 %call, i32* %tab_width, align 4
  %2 = load i64, i64* %pos_byte.addr, align 8
  store i64 %2, i64* %next_boundary_byte, align 8
  %3 = load i64, i64* %next_boundary_byte, align 8
  store i64 %3, i64* %ceiling, align 8
  %4 = load i64, i64* %pos_byte.addr, align 8
  %5 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %5, i32 0, i32 73
  %6 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %gpt_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %6, i32 0, i32 3
  %7 = load i64, i64* %gpt_byte, align 8
  %cmp = icmp sge i64 %4, %7
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text1 = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 73
  %9 = load %struct.buffer_text*, %struct.buffer_text** %text1, align 8
  %gap_size = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %9, i32 0, i32 5
  %10 = load i64, i64* %gap_size, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %10, %cond.true ], [ 0, %cond.false ]
  %11 = load i64, i64* %pos_byte.addr, align 8
  %add = add nsw i64 %cond, %11
  %12 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text2 = getelementptr inbounds %struct.buffer, %struct.buffer* %12, i32 0, i32 73
  %13 = load %struct.buffer_text*, %struct.buffer_text** %text2, align 8
  %beg = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %13, i32 0, i32 0
  %14 = load i8*, i8** %beg, align 8
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %add
  %add.ptr3 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8* %add.ptr3, i8** %p, align 8
  %15 = load i8*, i8** %p, align 8
  store i8* %15, i8** %stop, align 8
  %16 = load i8*, i8** %p, align 8
  store i8* %16, i8** %start, align 8
  br label %while.body

while.body:                                       ; preds = %cond.end, %sw.epilog
  br label %while.cond.4

while.cond.4:                                     ; preds = %cond.end.84, %while.body
  %17 = load i8*, i8** %p, align 8
  %18 = load i8*, i8** %stop, align 8
  %cmp5 = icmp eq i8* %17, %18
  br i1 %cmp5, label %while.body.6, label %while.end

while.body.6:                                     ; preds = %while.cond.4
  %19 = load i8*, i8** %p, align 8
  %20 = load i8*, i8** %start, align 8
  %cmp7 = icmp ne i8* %19, %20
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %while.body.6
  %21 = load i8*, i8** %p, align 8
  %22 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text8 = getelementptr inbounds %struct.buffer, %struct.buffer* %22, i32 0, i32 73
  %23 = load %struct.buffer_text*, %struct.buffer_text** %text8, align 8
  %beg9 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %23, i32 0, i32 0
  %24 = load i8*, i8** %beg9, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %21 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %24 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %25 = load i8*, i8** %p, align 8
  %26 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text10 = getelementptr inbounds %struct.buffer, %struct.buffer* %26, i32 0, i32 73
  %27 = load %struct.buffer_text*, %struct.buffer_text** %text10, align 8
  %beg11 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %27, i32 0, i32 0
  %28 = load i8*, i8** %beg11, align 8
  %sub.ptr.lhs.cast12 = ptrtoint i8* %25 to i64
  %sub.ptr.rhs.cast13 = ptrtoint i8* %28 to i64
  %sub.ptr.sub14 = sub i64 %sub.ptr.lhs.cast12, %sub.ptr.rhs.cast13
  %29 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text15 = getelementptr inbounds %struct.buffer, %struct.buffer* %29, i32 0, i32 73
  %30 = load %struct.buffer_text*, %struct.buffer_text** %text15, align 8
  %gpt_byte16 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %30, i32 0, i32 3
  %31 = load i64, i64* %gpt_byte16, align 8
  %sub = sub nsw i64 %31, 1
  %cmp17 = icmp sle i64 %sub.ptr.sub14, %sub
  br i1 %cmp17, label %cond.true.18, label %cond.false.19

cond.true.18:                                     ; preds = %if.then
  br label %cond.end.22

cond.false.19:                                    ; preds = %if.then
  %32 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text20 = getelementptr inbounds %struct.buffer, %struct.buffer* %32, i32 0, i32 73
  %33 = load %struct.buffer_text*, %struct.buffer_text** %text20, align 8
  %gap_size21 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %33, i32 0, i32 5
  %34 = load i64, i64* %gap_size21, align 8
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.19, %cond.true.18
  %cond23 = phi i64 [ 0, %cond.true.18 ], [ %34, %cond.false.19 ]
  %sub24 = sub nsw i64 %sub.ptr.sub, %cond23
  %add25 = add nsw i64 %sub24, 1
  store i64 %add25, i64* %pos_byte.addr, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end.22, %while.body.6
  %35 = load i64, i64* %pos_byte.addr, align 8
  %36 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %36, i32 0, i32 80
  %37 = load i64, i64* %zv_byte, align 8
  %cmp26 = icmp eq i64 %35, %37
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end
  %38 = load i64, i64* %column, align 8
  store i64 %38, i64* %retval
  br label %return

if.end.28:                                        ; preds = %if.end
  %39 = load i64, i64* %pos_byte.addr, align 8
  %40 = load i64, i64* %next_boundary_byte, align 8
  %cmp29 = icmp eq i64 %39, %40
  br i1 %cmp29, label %if.then.30, label %if.end.36

if.then.30:                                       ; preds = %if.end.28
  %41 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %42 = load i64, i64* %pos_byte.addr, align 8
  %call31 = call i64 @buf_bytepos_to_charpos(%struct.buffer* %41, i64 %42)
  store i64 %call31, i64* %pos, align 8
  %43 = load i64, i64* %pos, align 8
  %44 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %44, i32 0, i32 79
  %45 = load i64, i64* %zv, align 8
  %call32 = call i64 @builtin_lisp_symbol(i32 0)
  %call33 = call i64 @skip_invisible(i64 %43, i64* %next_boundary, i64 %45, i64 %call32)
  store i64 %call33, i64* %pos, align 8
  %46 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %47 = load i64, i64* %pos, align 8
  %call34 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %46, i64 %47)
  store i64 %call34, i64* %pos_byte.addr, align 8
  %48 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %49 = load i64, i64* %next_boundary, align 8
  %call35 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %48, i64 %49)
  store i64 %call35, i64* %next_boundary_byte, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.30, %if.end.28
  %50 = load i64, i64* %pos_byte.addr, align 8
  %51 = load i64, i64* %ceiling, align 8
  %cmp37 = icmp sge i64 %50, %51
  br i1 %cmp37, label %if.then.38, label %if.end.54

if.then.38:                                       ; preds = %if.end.36
  %52 = load i64, i64* %pos_byte.addr, align 8
  %53 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text39 = getelementptr inbounds %struct.buffer, %struct.buffer* %53, i32 0, i32 73
  %54 = load %struct.buffer_text*, %struct.buffer_text** %text39, align 8
  %gpt_byte40 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %54, i32 0, i32 3
  %55 = load i64, i64* %gpt_byte40, align 8
  %cmp41 = icmp slt i64 %52, %55
  br i1 %cmp41, label %land.lhs.true, label %cond.false.48

land.lhs.true:                                    ; preds = %if.then.38
  %56 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text42 = getelementptr inbounds %struct.buffer, %struct.buffer* %56, i32 0, i32 73
  %57 = load %struct.buffer_text*, %struct.buffer_text** %text42, align 8
  %gpt = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %57, i32 0, i32 1
  %58 = load i64, i64* %gpt, align 8
  %59 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv43 = getelementptr inbounds %struct.buffer, %struct.buffer* %59, i32 0, i32 79
  %60 = load i64, i64* %zv43, align 8
  %cmp44 = icmp slt i64 %58, %60
  br i1 %cmp44, label %cond.true.45, label %cond.false.48

cond.true.45:                                     ; preds = %land.lhs.true
  %61 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text46 = getelementptr inbounds %struct.buffer, %struct.buffer* %61, i32 0, i32 73
  %62 = load %struct.buffer_text*, %struct.buffer_text** %text46, align 8
  %gpt_byte47 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %62, i32 0, i32 3
  %63 = load i64, i64* %gpt_byte47, align 8
  br label %cond.end.50

cond.false.48:                                    ; preds = %land.lhs.true, %if.then.38
  %64 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte49 = getelementptr inbounds %struct.buffer, %struct.buffer* %64, i32 0, i32 80
  %65 = load i64, i64* %zv_byte49, align 8
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.48, %cond.true.45
  %cond51 = phi i64 [ %63, %cond.true.45 ], [ %65, %cond.false.48 ]
  %sub52 = sub nsw i64 %cond51, 1
  %add53 = add nsw i64 %sub52, 1
  store i64 %add53, i64* %ceiling, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %cond.end.50, %if.end.36
  %66 = load i64, i64* %ceiling, align 8
  %67 = load i64, i64* %next_boundary_byte, align 8
  %cmp55 = icmp slt i64 %66, %67
  br i1 %cmp55, label %cond.true.56, label %cond.false.57

cond.true.56:                                     ; preds = %if.end.54
  %68 = load i64, i64* %ceiling, align 8
  br label %cond.end.58

cond.false.57:                                    ; preds = %if.end.54
  %69 = load i64, i64* %next_boundary_byte, align 8
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.false.57, %cond.true.56
  %cond59 = phi i64 [ %68, %cond.true.56 ], [ %69, %cond.false.57 ]
  store i64 %cond59, i64* %stop_pos_byte, align 8
  %70 = load i64, i64* %stop_pos_byte, align 8
  %sub60 = sub nsw i64 %70, 1
  %71 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text61 = getelementptr inbounds %struct.buffer, %struct.buffer* %71, i32 0, i32 73
  %72 = load %struct.buffer_text*, %struct.buffer_text** %text61, align 8
  %gpt_byte62 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %72, i32 0, i32 3
  %73 = load i64, i64* %gpt_byte62, align 8
  %cmp63 = icmp sge i64 %sub60, %73
  br i1 %cmp63, label %cond.true.64, label %cond.false.67

cond.true.64:                                     ; preds = %cond.end.58
  %74 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text65 = getelementptr inbounds %struct.buffer, %struct.buffer* %74, i32 0, i32 73
  %75 = load %struct.buffer_text*, %struct.buffer_text** %text65, align 8
  %gap_size66 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %75, i32 0, i32 5
  %76 = load i64, i64* %gap_size66, align 8
  br label %cond.end.68

cond.false.67:                                    ; preds = %cond.end.58
  br label %cond.end.68

cond.end.68:                                      ; preds = %cond.false.67, %cond.true.64
  %cond69 = phi i64 [ %76, %cond.true.64 ], [ 0, %cond.false.67 ]
  %77 = load i64, i64* %stop_pos_byte, align 8
  %sub70 = sub nsw i64 %77, 1
  %add71 = add nsw i64 %cond69, %sub70
  %78 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text72 = getelementptr inbounds %struct.buffer, %struct.buffer* %78, i32 0, i32 73
  %79 = load %struct.buffer_text*, %struct.buffer_text** %text72, align 8
  %beg73 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %79, i32 0, i32 0
  %80 = load i8*, i8** %beg73, align 8
  %add.ptr74 = getelementptr inbounds i8, i8* %80, i64 %add71
  %add.ptr75 = getelementptr inbounds i8, i8* %add.ptr74, i64 -1
  %add.ptr76 = getelementptr inbounds i8, i8* %add.ptr75, i64 1
  store i8* %add.ptr76, i8** %stop, align 8
  %81 = load i64, i64* %pos_byte.addr, align 8
  %82 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text77 = getelementptr inbounds %struct.buffer, %struct.buffer* %82, i32 0, i32 73
  %83 = load %struct.buffer_text*, %struct.buffer_text** %text77, align 8
  %gpt_byte78 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %83, i32 0, i32 3
  %84 = load i64, i64* %gpt_byte78, align 8
  %cmp79 = icmp sge i64 %81, %84
  br i1 %cmp79, label %cond.true.80, label %cond.false.83

cond.true.80:                                     ; preds = %cond.end.68
  %85 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text81 = getelementptr inbounds %struct.buffer, %struct.buffer* %85, i32 0, i32 73
  %86 = load %struct.buffer_text*, %struct.buffer_text** %text81, align 8
  %gap_size82 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %86, i32 0, i32 5
  %87 = load i64, i64* %gap_size82, align 8
  br label %cond.end.84

cond.false.83:                                    ; preds = %cond.end.68
  br label %cond.end.84

cond.end.84:                                      ; preds = %cond.false.83, %cond.true.80
  %cond85 = phi i64 [ %87, %cond.true.80 ], [ 0, %cond.false.83 ]
  %88 = load i64, i64* %pos_byte.addr, align 8
  %add86 = add nsw i64 %cond85, %88
  %89 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text87 = getelementptr inbounds %struct.buffer, %struct.buffer* %89, i32 0, i32 73
  %90 = load %struct.buffer_text*, %struct.buffer_text** %text87, align 8
  %beg88 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %90, i32 0, i32 0
  %91 = load i8*, i8** %beg88, align 8
  %add.ptr89 = getelementptr inbounds i8, i8* %91, i64 %add86
  %add.ptr90 = getelementptr inbounds i8, i8* %add.ptr89, i64 -1
  store i8* %add.ptr90, i8** %p, align 8
  br label %while.cond.4

while.end:                                        ; preds = %while.cond.4
  %92 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %93 = load i8, i8* %92, align 1
  %conv = zext i8 %93 to i32
  switch i32 %conv, label %sw.default [
    i32 160, label %sw.bb
    i32 32, label %sw.bb.96
    i32 9, label %sw.bb.97
  ]

sw.bb:                                            ; preds = %while.end
  %94 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_ = getelementptr inbounds %struct.buffer, %struct.buffer* %94, i32 0, i32 39
  %95 = load i64, i64* %enable_multibyte_characters_, align 8
  %call91 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp92 = icmp eq i64 %95, %call91
  br i1 %cmp92, label %if.end.95, label %if.then.94

if.then.94:                                       ; preds = %sw.bb
  %96 = load i64, i64* %column, align 8
  store i64 %96, i64* %retval
  br label %return

if.end.95:                                        ; preds = %sw.bb
  br label %sw.bb.96

sw.bb.96:                                         ; preds = %while.end, %if.end.95
  %97 = load i64, i64* %column, align 8
  %inc = add nsw i64 %97, 1
  store i64 %inc, i64* %column, align 8
  br label %sw.epilog

sw.bb.97:                                         ; preds = %while.end
  %98 = load i32, i32* %tab_width, align 4
  %conv98 = sext i32 %98 to i64
  %99 = load i64, i64* %column, align 8
  %100 = load i32, i32* %tab_width, align 4
  %conv99 = sext i32 %100 to i64
  %rem = srem i64 %99, %conv99
  %sub100 = sub nsw i64 %conv98, %rem
  %101 = load i64, i64* %column, align 8
  %add101 = add nsw i64 %101, %sub100
  store i64 %add101, i64* %column, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %while.end
  br i1 true, label %cond.true.102, label %cond.false.107

cond.true.102:                                    ; preds = %sw.default
  %102 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %102, i64 -1
  %103 = load i8, i8* %arrayidx, align 1
  %conv103 = zext i8 %103 to i32
  %add104 = add i32 %conv103, 0
  %cmp105 = icmp ult i32 %add104, 128
  br i1 %cmp105, label %if.then.117, label %lor.lhs.false

cond.false.107:                                   ; preds = %sw.default
  %104 = load i8*, i8** %p, align 8
  %arrayidx108 = getelementptr inbounds i8, i8* %104, i64 -1
  %105 = load i8, i8* %arrayidx108, align 1
  %conv109 = zext i8 %105 to i64
  %add110 = add i64 %conv109, 0
  %cmp111 = icmp ult i64 %add110, 128
  br i1 %cmp111, label %if.then.117, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.false.107, %cond.true.102
  %106 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_113 = getelementptr inbounds %struct.buffer, %struct.buffer* %106, i32 0, i32 39
  %107 = load i64, i64* %enable_multibyte_characters_113, align 8
  %call114 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp115 = icmp eq i64 %107, %call114
  br i1 %cmp115, label %if.then.117, label %if.end.118

if.then.117:                                      ; preds = %lor.lhs.false, %cond.false.107, %cond.true.102
  %108 = load i64, i64* %column, align 8
  store i64 %108, i64* %retval
  br label %return

if.end.118:                                       ; preds = %lor.lhs.false
  %109 = load i8*, i8** %p, align 8
  %add.ptr119 = getelementptr inbounds i8, i8* %109, i64 -1
  %110 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text120 = getelementptr inbounds %struct.buffer, %struct.buffer* %110, i32 0, i32 73
  %111 = load %struct.buffer_text*, %struct.buffer_text** %text120, align 8
  %beg121 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %111, i32 0, i32 0
  %112 = load i8*, i8** %beg121, align 8
  %sub.ptr.lhs.cast122 = ptrtoint i8* %add.ptr119 to i64
  %sub.ptr.rhs.cast123 = ptrtoint i8* %112 to i64
  %sub.ptr.sub124 = sub i64 %sub.ptr.lhs.cast122, %sub.ptr.rhs.cast123
  %113 = load i8*, i8** %p, align 8
  %add.ptr125 = getelementptr inbounds i8, i8* %113, i64 -1
  %114 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text126 = getelementptr inbounds %struct.buffer, %struct.buffer* %114, i32 0, i32 73
  %115 = load %struct.buffer_text*, %struct.buffer_text** %text126, align 8
  %beg127 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %115, i32 0, i32 0
  %116 = load i8*, i8** %beg127, align 8
  %sub.ptr.lhs.cast128 = ptrtoint i8* %add.ptr125 to i64
  %sub.ptr.rhs.cast129 = ptrtoint i8* %116 to i64
  %sub.ptr.sub130 = sub i64 %sub.ptr.lhs.cast128, %sub.ptr.rhs.cast129
  %117 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text131 = getelementptr inbounds %struct.buffer, %struct.buffer* %117, i32 0, i32 73
  %118 = load %struct.buffer_text*, %struct.buffer_text** %text131, align 8
  %gpt_byte132 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %118, i32 0, i32 3
  %119 = load i64, i64* %gpt_byte132, align 8
  %sub133 = sub nsw i64 %119, 1
  %cmp134 = icmp sle i64 %sub.ptr.sub130, %sub133
  br i1 %cmp134, label %cond.true.136, label %cond.false.137

cond.true.136:                                    ; preds = %if.end.118
  br label %cond.end.140

cond.false.137:                                   ; preds = %if.end.118
  %120 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text138 = getelementptr inbounds %struct.buffer, %struct.buffer* %120, i32 0, i32 73
  %121 = load %struct.buffer_text*, %struct.buffer_text** %text138, align 8
  %gap_size139 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %121, i32 0, i32 5
  %122 = load i64, i64* %gap_size139, align 8
  br label %cond.end.140

cond.end.140:                                     ; preds = %cond.false.137, %cond.true.136
  %cond141 = phi i64 [ 0, %cond.true.136 ], [ %122, %cond.false.137 ]
  %sub142 = sub nsw i64 %sub.ptr.sub124, %cond141
  %add143 = add nsw i64 %sub142, 1
  store i64 %add143, i64* %pos_byte.addr, align 8
  %123 = load i64, i64* %pos_byte.addr, align 8
  %call144 = call i32 @FETCH_MULTIBYTE_CHAR(i64 %123)
  store i32 %call144, i32* %c, align 4
  %124 = load i32, i32* %c, align 4
  %call145 = call zeroext i1 @CHAR_HAS_CATEGORY(i32 %124, i32 32)
  br i1 %call145, label %if.then.146, label %if.else

if.then.146:                                      ; preds = %cond.end.140
  %125 = load i64, i64* %column, align 8
  %inc147 = add nsw i64 %125, 1
  store i64 %inc147, i64* %column, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.146
  %126 = load i64, i64* %pos_byte.addr, align 8
  %127 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text148 = getelementptr inbounds %struct.buffer, %struct.buffer* %127, i32 0, i32 73
  %128 = load %struct.buffer_text*, %struct.buffer_text** %text148, align 8
  %gpt_byte149 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %128, i32 0, i32 3
  %129 = load i64, i64* %gpt_byte149, align 8
  %cmp150 = icmp sge i64 %126, %129
  br i1 %cmp150, label %cond.true.152, label %cond.false.155

cond.true.152:                                    ; preds = %do.body
  %130 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text153 = getelementptr inbounds %struct.buffer, %struct.buffer* %130, i32 0, i32 73
  %131 = load %struct.buffer_text*, %struct.buffer_text** %text153, align 8
  %gap_size154 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %131, i32 0, i32 5
  %132 = load i64, i64* %gap_size154, align 8
  br label %cond.end.156

cond.false.155:                                   ; preds = %do.body
  br label %cond.end.156

cond.end.156:                                     ; preds = %cond.false.155, %cond.true.152
  %cond157 = phi i64 [ %132, %cond.true.152 ], [ 0, %cond.false.155 ]
  %133 = load i64, i64* %pos_byte.addr, align 8
  %add158 = add nsw i64 %cond157, %133
  %134 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text159 = getelementptr inbounds %struct.buffer, %struct.buffer* %134, i32 0, i32 73
  %135 = load %struct.buffer_text*, %struct.buffer_text** %text159, align 8
  %beg160 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %135, i32 0, i32 0
  %136 = load i8*, i8** %beg160, align 8
  %add.ptr161 = getelementptr inbounds i8, i8* %136, i64 %add158
  %add.ptr162 = getelementptr inbounds i8, i8* %add.ptr161, i64 -1
  store i8* %add.ptr162, i8** %chp, align 8
  %137 = load i8*, i8** %chp, align 8
  %138 = load i8, i8* %137, align 1
  %conv163 = zext i8 %138 to i32
  %and = and i32 %conv163, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.false.165, label %cond.true.164

cond.true.164:                                    ; preds = %cond.end.156
  br label %cond.end.184

cond.false.165:                                   ; preds = %cond.end.156
  %139 = load i8*, i8** %chp, align 8
  %140 = load i8, i8* %139, align 1
  %conv166 = zext i8 %140 to i32
  %and167 = and i32 %conv166, 32
  %tobool168 = icmp ne i32 %and167, 0
  br i1 %tobool168, label %cond.false.170, label %cond.true.169

cond.true.169:                                    ; preds = %cond.false.165
  br label %cond.end.182

cond.false.170:                                   ; preds = %cond.false.165
  %141 = load i8*, i8** %chp, align 8
  %142 = load i8, i8* %141, align 1
  %conv171 = zext i8 %142 to i32
  %and172 = and i32 %conv171, 16
  %tobool173 = icmp ne i32 %and172, 0
  br i1 %tobool173, label %cond.false.175, label %cond.true.174

cond.true.174:                                    ; preds = %cond.false.170
  br label %cond.end.180

cond.false.175:                                   ; preds = %cond.false.170
  %143 = load i8*, i8** %chp, align 8
  %144 = load i8, i8* %143, align 1
  %conv176 = zext i8 %144 to i32
  %and177 = and i32 %conv176, 8
  %tobool178 = icmp ne i32 %and177, 0
  %lnot = xor i1 %tobool178, true
  %cond179 = select i1 %lnot, i32 4, i32 5
  br label %cond.end.180

cond.end.180:                                     ; preds = %cond.false.175, %cond.true.174
  %cond181 = phi i32 [ 3, %cond.true.174 ], [ %cond179, %cond.false.175 ]
  br label %cond.end.182

cond.end.182:                                     ; preds = %cond.end.180, %cond.true.169
  %cond183 = phi i32 [ 2, %cond.true.169 ], [ %cond181, %cond.end.180 ]
  br label %cond.end.184

cond.end.184:                                     ; preds = %cond.end.182, %cond.true.164
  %cond185 = phi i32 [ 1, %cond.true.164 ], [ %cond183, %cond.end.182 ]
  %conv186 = sext i32 %cond185 to i64
  %145 = load i64, i64* %pos_byte.addr, align 8
  %add187 = add nsw i64 %145, %conv186
  store i64 %add187, i64* %pos_byte.addr, align 8
  br label %do.end

do.end:                                           ; preds = %cond.end.184
  %146 = load i64, i64* %pos_byte.addr, align 8
  %147 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text188 = getelementptr inbounds %struct.buffer, %struct.buffer* %147, i32 0, i32 73
  %148 = load %struct.buffer_text*, %struct.buffer_text** %text188, align 8
  %gpt_byte189 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %148, i32 0, i32 3
  %149 = load i64, i64* %gpt_byte189, align 8
  %cmp190 = icmp sge i64 %146, %149
  br i1 %cmp190, label %cond.true.192, label %cond.false.195

cond.true.192:                                    ; preds = %do.end
  %150 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text193 = getelementptr inbounds %struct.buffer, %struct.buffer* %150, i32 0, i32 73
  %151 = load %struct.buffer_text*, %struct.buffer_text** %text193, align 8
  %gap_size194 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %151, i32 0, i32 5
  %152 = load i64, i64* %gap_size194, align 8
  br label %cond.end.196

cond.false.195:                                   ; preds = %do.end
  br label %cond.end.196

cond.end.196:                                     ; preds = %cond.false.195, %cond.true.192
  %cond197 = phi i64 [ %152, %cond.true.192 ], [ 0, %cond.false.195 ]
  %153 = load i64, i64* %pos_byte.addr, align 8
  %add198 = add nsw i64 %cond197, %153
  %154 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text199 = getelementptr inbounds %struct.buffer, %struct.buffer* %154, i32 0, i32 73
  %155 = load %struct.buffer_text*, %struct.buffer_text** %text199, align 8
  %beg200 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %155, i32 0, i32 0
  %156 = load i8*, i8** %beg200, align 8
  %add.ptr201 = getelementptr inbounds i8, i8* %156, i64 %add198
  %add.ptr202 = getelementptr inbounds i8, i8* %add.ptr201, i64 -1
  store i8* %add.ptr202, i8** %p, align 8
  br label %if.end.203

if.else:                                          ; preds = %cond.end.140
  %157 = load i64, i64* %column, align 8
  store i64 %157, i64* %retval
  br label %return

if.end.203:                                       ; preds = %cond.end.196
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.203, %sw.bb.97, %sw.bb.96
  br label %while.body

return:                                           ; preds = %if.else, %if.then.117, %if.then.94, %if.then.27
  %158 = load i64, i64* %retval
  ret i64 %158
}

; Function Attrs: nounwind uwtable
define zeroext i1 @indented_beyond_p(i64 %pos, i64 %pos_byte, i64 %column) #0 {
entry:
  %pos.addr = alloca i64, align 8
  %pos_byte.addr = alloca i64, align 8
  %column.addr = alloca i64, align 8
  %chp = alloca i8*, align 8
  store i64 %pos, i64* %pos.addr, align 8
  store i64 %pos_byte, i64* %pos_byte.addr, align 8
  store i64 %column, i64* %column.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %do.end.36, %entry
  %0 = load i64, i64* %pos.addr, align 8
  %1 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 77
  %2 = load i64, i64* %begv, align 8
  %cmp = icmp sgt i64 %0, %2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load i64, i64* %pos_byte.addr, align 8
  %4 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %4, i32 0, i32 73
  %5 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %gpt_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %5, i32 0, i32 3
  %6 = load i64, i64* %gpt_byte, align 8
  %cmp1 = icmp sge i64 %3, %6
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.rhs
  %7 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text2 = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 73
  %8 = load %struct.buffer_text*, %struct.buffer_text** %text2, align 8
  %gap_size = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %8, i32 0, i32 5
  %9 = load i64, i64* %gap_size, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.rhs
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %9, %cond.true ], [ 0, %cond.false ]
  %10 = load i64, i64* %pos_byte.addr, align 8
  %add = add nsw i64 %cond, %10
  %11 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text3 = getelementptr inbounds %struct.buffer, %struct.buffer* %11, i32 0, i32 73
  %12 = load %struct.buffer_text*, %struct.buffer_text** %text3, align 8
  %beg = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %12, i32 0, i32 0
  %13 = load i8*, i8** %beg, align 8
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %add
  %add.ptr4 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %14 = load i8, i8* %add.ptr4, align 1
  %conv = zext i8 %14 to i32
  %cmp5 = icmp eq i32 %conv, 10
  br label %land.end

land.end:                                         ; preds = %cond.end, %while.cond
  %15 = phi i1 [ false, %while.cond ], [ %cmp5, %cond.end ]
  br i1 %15, label %while.body, label %while.end.39

while.body:                                       ; preds = %land.end
  br label %do.body

do.body:                                          ; preds = %while.body
  %16 = load i64, i64* %pos.addr, align 8
  %dec = add nsw i64 %16, -1
  store i64 %dec, i64* %pos.addr, align 8
  %17 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_ = getelementptr inbounds %struct.buffer, %struct.buffer* %17, i32 0, i32 39
  %18 = load i64, i64* %enable_multibyte_characters_, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp7 = icmp eq i64 %18, %call
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %19 = load i64, i64* %pos_byte.addr, align 8
  %dec9 = add nsw i64 %19, -1
  store i64 %dec9, i64* %pos_byte.addr, align 8
  br label %if.end.35

if.else:                                          ; preds = %do.body
  br label %do.body.10

do.body.10:                                       ; preds = %if.else
  %20 = load i64, i64* %pos_byte.addr, align 8
  %dec11 = add nsw i64 %20, -1
  store i64 %dec11, i64* %pos_byte.addr, align 8
  %21 = load i64, i64* %pos_byte.addr, align 8
  %22 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text12 = getelementptr inbounds %struct.buffer, %struct.buffer* %22, i32 0, i32 73
  %23 = load %struct.buffer_text*, %struct.buffer_text** %text12, align 8
  %gpt_byte13 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %23, i32 0, i32 3
  %24 = load i64, i64* %gpt_byte13, align 8
  %cmp14 = icmp slt i64 %21, %24
  br i1 %cmp14, label %if.then.16, label %if.else.21

if.then.16:                                       ; preds = %do.body.10
  %25 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text17 = getelementptr inbounds %struct.buffer, %struct.buffer* %25, i32 0, i32 73
  %26 = load %struct.buffer_text*, %struct.buffer_text** %text17, align 8
  %beg18 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %26, i32 0, i32 0
  %27 = load i8*, i8** %beg18, align 8
  %28 = load i64, i64* %pos_byte.addr, align 8
  %add.ptr19 = getelementptr inbounds i8, i8* %27, i64 %28
  %add.ptr20 = getelementptr inbounds i8, i8* %add.ptr19, i64 -1
  store i8* %add.ptr20, i8** %chp, align 8
  br label %if.end

if.else.21:                                       ; preds = %do.body.10
  %29 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text22 = getelementptr inbounds %struct.buffer, %struct.buffer* %29, i32 0, i32 73
  %30 = load %struct.buffer_text*, %struct.buffer_text** %text22, align 8
  %beg23 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %30, i32 0, i32 0
  %31 = load i8*, i8** %beg23, align 8
  %32 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text24 = getelementptr inbounds %struct.buffer, %struct.buffer* %32, i32 0, i32 73
  %33 = load %struct.buffer_text*, %struct.buffer_text** %text24, align 8
  %gap_size25 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %33, i32 0, i32 5
  %34 = load i64, i64* %gap_size25, align 8
  %add.ptr26 = getelementptr inbounds i8, i8* %31, i64 %34
  %35 = load i64, i64* %pos_byte.addr, align 8
  %add.ptr27 = getelementptr inbounds i8, i8* %add.ptr26, i64 %35
  %add.ptr28 = getelementptr inbounds i8, i8* %add.ptr27, i64 -1
  store i8* %add.ptr28, i8** %chp, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.21, %if.then.16
  br label %while.cond.29

while.cond.29:                                    ; preds = %while.body.33, %if.end
  %36 = load i8*, i8** %chp, align 8
  %37 = load i8, i8* %36, align 1
  %conv30 = zext i8 %37 to i32
  %and = and i32 %conv30, 192
  %cmp31 = icmp ne i32 %and, 128
  %lnot = xor i1 %cmp31, true
  br i1 %lnot, label %while.body.33, label %while.end

while.body.33:                                    ; preds = %while.cond.29
  %38 = load i8*, i8** %chp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %38, i32 -1
  store i8* %incdec.ptr, i8** %chp, align 8
  %39 = load i64, i64* %pos_byte.addr, align 8
  %dec34 = add nsw i64 %39, -1
  store i64 %dec34, i64* %pos_byte.addr, align 8
  br label %while.cond.29

while.end:                                        ; preds = %while.cond.29
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end.35

if.end.35:                                        ; preds = %do.end, %if.then
  br label %do.end.36

do.end.36:                                        ; preds = %if.end.35
  %40 = load i64, i64* %pos.addr, align 8
  %41 = load i64, i64* %pos_byte.addr, align 8
  %42 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv37 = getelementptr inbounds %struct.buffer, %struct.buffer* %42, i32 0, i32 77
  %43 = load i64, i64* %begv37, align 8
  %44 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %44, i32 0, i32 78
  %45 = load i64, i64* %begv_byte, align 8
  %call38 = call i64 @find_newline(i64 %40, i64 %41, i64 %43, i64 %45, i64 -1, i64* null, i64* %pos_byte.addr, i1 zeroext false)
  store i64 %call38, i64* %pos.addr, align 8
  br label %while.cond

while.end.39:                                     ; preds = %land.end
  %46 = load i64, i64* %pos_byte.addr, align 8
  %call40 = call i64 @position_indentation(i64 %46)
  %47 = load i64, i64* %column.addr, align 8
  %cmp41 = icmp sge i64 %call40, %47
  ret i1 %cmp41
}

; Function Attrs: nounwind uwtable
define i64 @Fmove_to_column(i64 %column, i64 %force) #0 {
entry:
  %column.addr = alloca i64, align 8
  %force.addr = alloca i64, align 8
  %pos = alloca i64, align 8
  %prev_col = alloca i64, align 8
  %col = alloca i64, align 8
  %goal = alloca i64, align 8
  %c = alloca i32, align 4
  %pos_byte = alloca i64, align 8
  %chp = alloca i8*, align 8
  %goal_pt = alloca i64, align 8
  %goal_pt_byte = alloca i64, align 8
  store i64 %column, i64* %column.addr, align 8
  store i64 %force, i64* %force.addr, align 8
  %0 = load i64, i64* %column.addr, align 8
  call void @CHECK_NATNUM(i64 %0)
  %1 = load i64, i64* %column.addr, align 8
  %shr = ashr i64 %1, 2
  store i64 %shr, i64* %goal, align 8
  %2 = load i64, i64* %goal, align 8
  store i64 %2, i64* %col, align 8
  %3 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i32 0, i32 79
  %4 = load i64, i64* %zv, align 8
  store i64 %4, i64* %pos, align 8
  call void @scan_for_column(i64* %pos, i64* %col, i64* %prev_col)
  %5 = load i64, i64* %pos, align 8
  call void @set_point(i64 %5)
  %6 = load i64, i64* %force.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %6, %call
  br i1 %cmp, label %if.end.63, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %7 = load i64, i64* %col, align 8
  %8 = load i64, i64* %goal, align 8
  %cmp1 = icmp sgt i64 %7, %8
  br i1 %cmp1, label %if.then, label %if.end.63

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %9, i32 0, i32 76
  %10 = load i64, i64* %pt_byte, align 8
  %add = add nsw i64 %10, 0
  store i64 %add, i64* %pos_byte, align 8
  br label %do.body

do.body:                                          ; preds = %if.then
  %11 = load i64, i64* %pos_byte, align 8
  %dec = add nsw i64 %11, -1
  store i64 %dec, i64* %pos_byte, align 8
  %12 = load i64, i64* %pos_byte, align 8
  %13 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %13, i32 0, i32 73
  %14 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %gpt_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %14, i32 0, i32 3
  %15 = load i64, i64* %gpt_byte, align 8
  %cmp2 = icmp slt i64 %12, %15
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  %16 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text4 = getelementptr inbounds %struct.buffer, %struct.buffer* %16, i32 0, i32 73
  %17 = load %struct.buffer_text*, %struct.buffer_text** %text4, align 8
  %beg = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %17, i32 0, i32 0
  %18 = load i8*, i8** %beg, align 8
  %19 = load i64, i64* %pos_byte, align 8
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 %19
  %add.ptr5 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8* %add.ptr5, i8** %chp, align 8
  br label %if.end

if.else:                                          ; preds = %do.body
  %20 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text6 = getelementptr inbounds %struct.buffer, %struct.buffer* %20, i32 0, i32 73
  %21 = load %struct.buffer_text*, %struct.buffer_text** %text6, align 8
  %beg7 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %21, i32 0, i32 0
  %22 = load i8*, i8** %beg7, align 8
  %23 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text8 = getelementptr inbounds %struct.buffer, %struct.buffer* %23, i32 0, i32 73
  %24 = load %struct.buffer_text*, %struct.buffer_text** %text8, align 8
  %gap_size = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %24, i32 0, i32 5
  %25 = load i64, i64* %gap_size, align 8
  %add.ptr9 = getelementptr inbounds i8, i8* %22, i64 %25
  %26 = load i64, i64* %pos_byte, align 8
  %add.ptr10 = getelementptr inbounds i8, i8* %add.ptr9, i64 %26
  %add.ptr11 = getelementptr inbounds i8, i8* %add.ptr10, i64 -1
  store i8* %add.ptr11, i8** %chp, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %27 = load i8*, i8** %chp, align 8
  %28 = load i8, i8* %27, align 1
  %conv = zext i8 %28 to i32
  %and = and i32 %conv, 192
  %cmp12 = icmp ne i32 %and, 128
  %lnot = xor i1 %cmp12, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %29 = load i8*, i8** %chp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %29, i32 -1
  store i8* %incdec.ptr, i8** %chp, align 8
  %30 = load i64, i64* %pos_byte, align 8
  %dec14 = add nsw i64 %30, -1
  store i64 %dec14, i64* %pos_byte, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  %31 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_ = getelementptr inbounds %struct.buffer, %struct.buffer* %31, i32 0, i32 39
  %32 = load i64, i64* %enable_multibyte_characters_, align 8
  %call15 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp16 = icmp eq i64 %32, %call15
  br i1 %cmp16, label %cond.false, label %cond.true

cond.true:                                        ; preds = %do.end
  %33 = load i64, i64* %pos_byte, align 8
  %call18 = call i32 @FETCH_MULTIBYTE_CHAR(i64 %33)
  br label %cond.end.33

cond.false:                                       ; preds = %do.end
  %34 = load i64, i64* %pos_byte, align 8
  %35 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text19 = getelementptr inbounds %struct.buffer, %struct.buffer* %35, i32 0, i32 73
  %36 = load %struct.buffer_text*, %struct.buffer_text** %text19, align 8
  %gpt_byte20 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %36, i32 0, i32 3
  %37 = load i64, i64* %gpt_byte20, align 8
  %cmp21 = icmp sge i64 %34, %37
  br i1 %cmp21, label %cond.true.23, label %cond.false.26

cond.true.23:                                     ; preds = %cond.false
  %38 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text24 = getelementptr inbounds %struct.buffer, %struct.buffer* %38, i32 0, i32 73
  %39 = load %struct.buffer_text*, %struct.buffer_text** %text24, align 8
  %gap_size25 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %39, i32 0, i32 5
  %40 = load i64, i64* %gap_size25, align 8
  br label %cond.end

cond.false.26:                                    ; preds = %cond.false
  br label %cond.end

cond.end:                                         ; preds = %cond.false.26, %cond.true.23
  %cond = phi i64 [ %40, %cond.true.23 ], [ 0, %cond.false.26 ]
  %41 = load i64, i64* %pos_byte, align 8
  %add27 = add nsw i64 %cond, %41
  %42 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text28 = getelementptr inbounds %struct.buffer, %struct.buffer* %42, i32 0, i32 73
  %43 = load %struct.buffer_text*, %struct.buffer_text** %text28, align 8
  %beg29 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %43, i32 0, i32 0
  %44 = load i8*, i8** %beg29, align 8
  %add.ptr30 = getelementptr inbounds i8, i8* %44, i64 %add27
  %add.ptr31 = getelementptr inbounds i8, i8* %add.ptr30, i64 -1
  %45 = load i8, i8* %add.ptr31, align 1
  %conv32 = zext i8 %45 to i32
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.end, %cond.true
  %cond34 = phi i32 [ %call18, %cond.true ], [ %conv32, %cond.end ]
  store i32 %cond34, i32* %c, align 4
  %46 = load i32, i32* %c, align 4
  %cmp35 = icmp eq i32 %46, 9
  br i1 %cmp35, label %land.lhs.true.37, label %if.end.62

land.lhs.true.37:                                 ; preds = %cond.end.33
  %47 = load i64, i64* %prev_col, align 8
  %48 = load i64, i64* %goal, align 8
  %cmp38 = icmp slt i64 %47, %48
  br i1 %cmp38, label %if.then.40, label %if.end.62

if.then.40:                                       ; preds = %land.lhs.true.37
  %49 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %49, i32 0, i32 75
  %50 = load i64, i64* %pt, align 8
  %add41 = add nsw i64 %50, 0
  %sub = sub nsw i64 %add41, 1
  %51 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte42 = getelementptr inbounds %struct.buffer, %struct.buffer* %51, i32 0, i32 76
  %52 = load i64, i64* %pt_byte42, align 8
  %add43 = add nsw i64 %52, 0
  %sub44 = sub nsw i64 %add43, 1
  call void @set_point_both(i64 %sub, i64 %sub44)
  %53 = load i64, i64* %goal, align 8
  %54 = load i64, i64* %prev_col, align 8
  %sub45 = sub nsw i64 %53, %54
  %shl = shl i64 %sub45, 2
  %add46 = add i64 %shl, 2
  %call47 = call i64 @builtin_lisp_symbol(i32 901)
  %call48 = call i64 @Finsert_char(i64 130, i64 %add46, i64 %call47)
  %55 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt49 = getelementptr inbounds %struct.buffer, %struct.buffer* %55, i32 0, i32 75
  %56 = load i64, i64* %pt49, align 8
  %add50 = add nsw i64 %56, 0
  %57 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt51 = getelementptr inbounds %struct.buffer, %struct.buffer* %57, i32 0, i32 75
  %58 = load i64, i64* %pt51, align 8
  %add52 = add nsw i64 %58, 0
  %add53 = add nsw i64 %add52, 1
  call void @del_range(i64 %add50, i64 %add53)
  %59 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt54 = getelementptr inbounds %struct.buffer, %struct.buffer* %59, i32 0, i32 75
  %60 = load i64, i64* %pt54, align 8
  %add55 = add nsw i64 %60, 0
  store i64 %add55, i64* %goal_pt, align 8
  %61 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte56 = getelementptr inbounds %struct.buffer, %struct.buffer* %61, i32 0, i32 76
  %62 = load i64, i64* %pt_byte56, align 8
  %add57 = add nsw i64 %62, 0
  store i64 %add57, i64* %goal_pt_byte, align 8
  %63 = load i64, i64* %col, align 8
  %shl58 = shl i64 %63, 2
  %add59 = add i64 %shl58, 2
  %call60 = call i64 @builtin_lisp_symbol(i32 0)
  %call61 = call i64 @Findent_to(i64 %add59, i64 %call60)
  %64 = load i64, i64* %goal_pt, align 8
  %65 = load i64, i64* %goal_pt_byte, align 8
  call void @set_point_both(i64 %64, i64 %65)
  %66 = load i64, i64* %goal, align 8
  store i64 %66, i64* %col, align 8
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.40, %land.lhs.true.37, %cond.end.33
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %land.lhs.true, %entry
  %67 = load i64, i64* %col, align 8
  %68 = load i64, i64* %goal, align 8
  %cmp64 = icmp slt i64 %67, %68
  br i1 %cmp64, label %land.lhs.true.66, label %if.end.75

land.lhs.true.66:                                 ; preds = %if.end.63
  %69 = load i64, i64* %force.addr, align 8
  %call67 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp68 = icmp eq i64 %69, %call67
  br i1 %cmp68, label %if.then.70, label %if.end.75

if.then.70:                                       ; preds = %land.lhs.true.66
  %70 = load i64, i64* %goal, align 8
  store i64 %70, i64* %col, align 8
  %shl71 = shl i64 %70, 2
  %add72 = add i64 %shl71, 2
  %call73 = call i64 @builtin_lisp_symbol(i32 0)
  %call74 = call i64 @Findent_to(i64 %add72, i64 %call73)
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.70, %land.lhs.true.66, %if.end.63
  %71 = load i64, i64* %col, align 8
  store i64 %71, i64* @last_known_column, align 8
  %72 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt76 = getelementptr inbounds %struct.buffer, %struct.buffer* %72, i32 0, i32 75
  %73 = load i64, i64* %pt76, align 8
  %add77 = add nsw i64 %73, 0
  store i64 %add77, i64* @last_known_column_point, align 8
  %74 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text78 = getelementptr inbounds %struct.buffer, %struct.buffer* %74, i32 0, i32 73
  %75 = load %struct.buffer_text*, %struct.buffer_text** %text78, align 8
  %modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %75, i32 0, i32 6
  %76 = load i64, i64* %modiff, align 8
  store i64 %76, i64* @last_known_column_modified, align 8
  %77 = load i64, i64* %col, align 8
  %shl79 = shl i64 %77, 2
  %add80 = add i64 %shl79, 2
  ret i64 %add80
}

declare void @CHECK_NATNUM(i64) #1

; Function Attrs: nounwind uwtable
define internal void @scan_for_column(i64* %endpos, i64* %goalcol, i64* %prevcol) #0 {
entry:
  %endpos.addr = alloca i64*, align 8
  %goalcol.addr = alloca i64*, align 8
  %prevcol.addr = alloca i64*, align 8
  %tab_width = alloca i32, align 4
  %ctl_arrow = alloca i8, align 1
  %dp = alloca %struct.Lisp_Char_Table*, align 8
  %multibyte = alloca i8, align 1
  %cmp_it = alloca %struct.composition_it, align 8
  %window = alloca i64, align 8
  %w = alloca %struct.window*, align 8
  %col = alloca i64, align 8
  %prev_col = alloca i64, align 8
  %goal = alloca i64, align 8
  %end = alloca i64, align 8
  %scan = alloca i64, align 8
  %scan_byte = alloca i64, align 8
  %next_boundary = alloca i64, align 8
  %c = alloca i32, align 4
  %old_scan = alloca i64, align 8
  %endp = alloca i64, align 8
  %width = alloca i32, align 4
  %charvec = alloca i64, align 8
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  %entry179 = alloca i64, align 8
  %ptr = alloca i8*, align 8
  %bytes = alloca i32, align 4
  %width239 = alloca i32, align 4
  %ch = alloca i32, align 4
  store i64* %endpos, i64** %endpos.addr, align 8
  store i64* %goalcol, i64** %goalcol.addr, align 8
  store i64* %prevcol, i64** %prevcol.addr, align 8
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %tab_width_ = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 19
  %1 = load i64, i64* %tab_width_, align 8
  %shr = ashr i64 %1, 2
  %call = call i32 @sanitize_tab_width(i64 %shr)
  store i32 %call, i32* %tab_width, align 4
  %2 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %ctl_arrow_ = getelementptr inbounds %struct.buffer, %struct.buffer* %2, i32 0, i32 29
  %3 = load i64, i64* %ctl_arrow_, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %3, %call1
  %lnot = xor i1 %cmp, true
  %frombool = zext i1 %lnot to i8
  store i8 %frombool, i8* %ctl_arrow, align 1
  %call2 = call %struct.Lisp_Char_Table* @buffer_display_table()
  store %struct.Lisp_Char_Table* %call2, %struct.Lisp_Char_Table** %dp, align 8
  %4 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_ = getelementptr inbounds %struct.buffer, %struct.buffer* %4, i32 0, i32 39
  %5 = load i64, i64* %enable_multibyte_characters_, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp4 = icmp eq i64 %5, %call3
  %lnot5 = xor i1 %cmp4, true
  %frombool6 = zext i1 %lnot5 to i8
  store i8 %frombool6, i8* %multibyte, align 1
  store i64 0, i64* %col, align 8
  store i64 0, i64* %prev_col, align 8
  %6 = load i64*, i64** %goalcol.addr, align 8
  %tobool = icmp ne i64* %6, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load i64*, i64** %goalcol.addr, align 8
  %8 = load i64, i64* %7, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %8, %cond.true ], [ 2305843009213693951, %cond.false ]
  store i64 %cond, i64* %goal, align 8
  %9 = load i64*, i64** %endpos.addr, align 8
  %tobool7 = icmp ne i64* %9, null
  br i1 %tobool7, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %cond.end
  %10 = load i64*, i64** %endpos.addr, align 8
  %11 = load i64, i64* %10, align 8
  br label %cond.end.10

cond.false.9:                                     ; preds = %cond.end
  %12 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %12, i32 0, i32 75
  %13 = load i64, i64* %pt, align 8
  %add = add nsw i64 %13, 0
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.9, %cond.true.8
  %cond11 = phi i64 [ %11, %cond.true.8 ], [ %add, %cond.false.9 ]
  store i64 %cond11, i64* %end, align 8
  %14 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt12 = getelementptr inbounds %struct.buffer, %struct.buffer* %14, i32 0, i32 75
  %15 = load i64, i64* %pt12, align 8
  %add13 = add nsw i64 %15, 0
  %16 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %16, i32 0, i32 76
  %17 = load i64, i64* %pt_byte, align 8
  %add14 = add nsw i64 %17, 0
  %18 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %18, i32 0, i32 77
  %19 = load i64, i64* %begv, align 8
  %20 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %20, i32 0, i32 78
  %21 = load i64, i64* %begv_byte, align 8
  %call15 = call i64 @find_newline(i64 %add13, i64 %add14, i64 %19, i64 %21, i64 -1, i64* null, i64* %scan_byte, i1 zeroext true)
  store i64 %call15, i64* %scan, align 8
  %22 = load i64, i64* %scan, align 8
  store i64 %22, i64* %next_boundary, align 8
  %call16 = call i64 @Fcurrent_buffer()
  %call17 = call i64 @builtin_lisp_symbol(i32 0)
  %call18 = call i64 @Fget_buffer_window(i64 %call16, i64 %call17)
  store i64 %call18, i64* %window, align 8
  %23 = load i64, i64* %window, align 8
  %call19 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp20 = icmp eq i64 %23, %call19
  br i1 %cmp20, label %cond.false.23, label %cond.true.21

cond.true.21:                                     ; preds = %cond.end.10
  %24 = load i64, i64* %window, align 8
  %call22 = call %struct.window* @XWINDOW(i64 %24)
  br label %cond.end.24

cond.false.23:                                    ; preds = %cond.end.10
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.23, %cond.true.21
  %cond25 = phi %struct.window* [ %call22, %cond.true.21 ], [ null, %cond.false.23 ]
  store %struct.window* %cond25, %struct.window** %w, align 8
  %25 = bitcast %struct.composition_it* %cmp_it to i8*
  call void @llvm.memset.p0i8.i64(i8* %25, i8 0, i64 72, i32 8, i1 false)
  %id = getelementptr inbounds %struct.composition_it, %struct.composition_it* %cmp_it, i32 0, i32 1
  store i64 -1, i64* %id, align 8
  %26 = load i64, i64* %scan, align 8
  %27 = load i64, i64* %scan_byte, align 8
  %28 = load i64, i64* %end, align 8
  %call26 = call i64 @builtin_lisp_symbol(i32 0)
  call void @composition_compute_stop_pos(%struct.composition_it* %cmp_it, i64 %26, i64 %27, i64 %28, i64 %call26)
  br label %while.cond

while.cond:                                       ; preds = %if.end.503, %if.end.84, %if.then.47, %cond.end.24
  %29 = load i64, i64* %scan, align 8
  %30 = load i64, i64* %end, align 8
  %cmp27 = icmp slt i64 %29, %30
  br i1 %cmp27, label %while.body, label %while.end.506

while.body:                                       ; preds = %while.cond
  br label %while.cond.28

while.cond.28:                                    ; preds = %if.end.37, %while.body
  %31 = load i64, i64* %scan, align 8
  %32 = load i64, i64* %next_boundary, align 8
  %cmp29 = icmp eq i64 %31, %32
  br i1 %cmp29, label %while.body.30, label %while.end

while.body.30:                                    ; preds = %while.cond.28
  %33 = load i64, i64* %scan, align 8
  store i64 %33, i64* %old_scan, align 8
  %34 = load i64, i64* %scan, align 8
  %35 = load i64, i64* %end, align 8
  %call31 = call i64 @builtin_lisp_symbol(i32 0)
  %call32 = call i64 @skip_invisible(i64 %34, i64* %next_boundary, i64 %35, i64 %call31)
  store i64 %call32, i64* %scan, align 8
  %36 = load i64, i64* %scan, align 8
  %37 = load i64, i64* %old_scan, align 8
  %cmp33 = icmp ne i64 %36, %37
  br i1 %cmp33, label %if.then, label %if.end

if.then:                                          ; preds = %while.body.30
  %38 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %39 = load i64, i64* %scan, align 8
  %call34 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %38, i64 %39)
  store i64 %call34, i64* %scan_byte, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.30
  %40 = load i64, i64* %scan, align 8
  %41 = load i64, i64* %end, align 8
  %cmp35 = icmp sge i64 %40, %41
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end
  br label %endloop

if.end.37:                                        ; preds = %if.end
  br label %while.cond.28

while.end:                                        ; preds = %while.cond.28
  %42 = load i64, i64* %col, align 8
  %43 = load i64, i64* %goal, align 8
  %cmp38 = icmp sge i64 %42, %43
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %while.end
  br label %while.end.506

if.end.40:                                        ; preds = %while.end
  %44 = load i64, i64* %col, align 8
  store i64 %44, i64* %prev_col, align 8
  %45 = load i64, i64* %scan, align 8
  %46 = load i64, i64* %col, align 8
  %call41 = call i32 @check_display_width(i64 %45, i64 %46, i64* %endp)
  store i32 %call41, i32* %width, align 4
  %47 = load i32, i32* %width, align 4
  %cmp42 = icmp sge i32 %47, 0
  br i1 %cmp42, label %if.then.43, label %if.end.50

if.then.43:                                       ; preds = %if.end.40
  %48 = load i32, i32* %width, align 4
  %conv = sext i32 %48 to i64
  %49 = load i64, i64* %col, align 8
  %add44 = add nsw i64 %49, %conv
  store i64 %add44, i64* %col, align 8
  %50 = load i64, i64* %endp, align 8
  %51 = load i64, i64* %scan, align 8
  %cmp45 = icmp sgt i64 %50, %51
  br i1 %cmp45, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %if.then.43
  %52 = load i64, i64* %endp, align 8
  store i64 %52, i64* %scan, align 8
  %53 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %54 = load i64, i64* %scan, align 8
  %call48 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %53, i64 %54)
  store i64 %call48, i64* %scan_byte, align 8
  br label %while.cond

if.end.49:                                        ; preds = %if.then.43
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.end.40
  %id51 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %cmp_it, i32 0, i32 1
  %55 = load i64, i64* %id51, align 8
  %cmp52 = icmp sge i64 %55, 0
  br i1 %cmp52, label %if.then.59, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.50
  %56 = load i64, i64* %scan, align 8
  %stop_pos = getelementptr inbounds %struct.composition_it, %struct.composition_it* %cmp_it, i32 0, i32 0
  %57 = load i64, i64* %stop_pos, align 8
  %cmp54 = icmp eq i64 %56, %57
  br i1 %cmp54, label %land.lhs.true, label %if.end.62

land.lhs.true:                                    ; preds = %lor.lhs.false
  %58 = load i64, i64* %scan, align 8
  %59 = load i64, i64* %scan_byte, align 8
  %60 = load i64, i64* %end, align 8
  %61 = load %struct.window*, %struct.window** %w, align 8
  %call56 = call i64 @builtin_lisp_symbol(i32 0)
  %call57 = call zeroext i1 @composition_reseat_it(%struct.composition_it* %cmp_it, i64 %58, i64 %59, i64 %60, %struct.window* %61, %struct.face* null, i64 %call56)
  br i1 %call57, label %if.then.59, label %if.end.62

if.then.59:                                       ; preds = %land.lhs.true, %if.end.50
  %62 = load i64, i64* %scan, align 8
  %63 = load i64, i64* %scan_byte, align 8
  %call60 = call i64 @builtin_lisp_symbol(i32 0)
  %call61 = call i32 @composition_update_it(%struct.composition_it* %cmp_it, i64 %62, i64 %63, i64 %call60)
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.59, %land.lhs.true, %lor.lhs.false
  %id63 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %cmp_it, i32 0, i32 1
  %64 = load i64, i64* %id63, align 8
  %cmp64 = icmp sge i64 %64, 0
  br i1 %cmp64, label %if.then.66, label %if.end.85

if.then.66:                                       ; preds = %if.end.62
  %nchars = getelementptr inbounds %struct.composition_it, %struct.composition_it* %cmp_it, i32 0, i32 8
  %65 = load i32, i32* %nchars, align 4
  %conv67 = sext i32 %65 to i64
  %66 = load i64, i64* %scan, align 8
  %add68 = add nsw i64 %66, %conv67
  store i64 %add68, i64* %scan, align 8
  %nbytes = getelementptr inbounds %struct.composition_it, %struct.composition_it* %cmp_it, i32 0, i32 9
  %67 = load i32, i32* %nbytes, align 4
  %conv69 = sext i32 %67 to i64
  %68 = load i64, i64* %scan_byte, align 8
  %add70 = add nsw i64 %68, %conv69
  store i64 %add70, i64* %scan_byte, align 8
  %69 = load i64, i64* %scan, align 8
  %70 = load i64, i64* %end, align 8
  %cmp71 = icmp sle i64 %69, %70
  br i1 %cmp71, label %if.then.73, label %if.end.77

if.then.73:                                       ; preds = %if.then.66
  %width74 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %cmp_it, i32 0, i32 12
  %71 = load i32, i32* %width74, align 4
  %conv75 = sext i32 %71 to i64
  %72 = load i64, i64* %col, align 8
  %add76 = add nsw i64 %72, %conv75
  store i64 %add76, i64* %col, align 8
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.73, %if.then.66
  %to = getelementptr inbounds %struct.composition_it, %struct.composition_it* %cmp_it, i32 0, i32 11
  %73 = load i32, i32* %to, align 4
  %nglyphs = getelementptr inbounds %struct.composition_it, %struct.composition_it* %cmp_it, i32 0, i32 5
  %74 = load i32, i32* %nglyphs, align 4
  %cmp78 = icmp eq i32 %73, %74
  br i1 %cmp78, label %if.then.80, label %if.else

if.then.80:                                       ; preds = %if.end.77
  %id81 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %cmp_it, i32 0, i32 1
  store i64 -1, i64* %id81, align 8
  %75 = load i64, i64* %scan, align 8
  %76 = load i64, i64* %scan_byte, align 8
  %77 = load i64, i64* %end, align 8
  %call82 = call i64 @builtin_lisp_symbol(i32 0)
  call void @composition_compute_stop_pos(%struct.composition_it* %cmp_it, i64 %75, i64 %76, i64 %77, i64 %call82)
  br label %if.end.84

if.else:                                          ; preds = %if.end.77
  %to83 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %cmp_it, i32 0, i32 11
  %78 = load i32, i32* %to83, align 4
  %from = getelementptr inbounds %struct.composition_it, %struct.composition_it* %cmp_it, i32 0, i32 10
  store i32 %78, i32* %from, align 4
  br label %if.end.84

if.end.84:                                        ; preds = %if.else, %if.then.80
  br label %while.cond

if.end.85:                                        ; preds = %if.end.62
  %79 = load i64, i64* %scan_byte, align 8
  %80 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %80, i32 0, i32 73
  %81 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %gpt_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %81, i32 0, i32 3
  %82 = load i64, i64* %gpt_byte, align 8
  %cmp86 = icmp sge i64 %79, %82
  br i1 %cmp86, label %cond.true.88, label %cond.false.90

cond.true.88:                                     ; preds = %if.end.85
  %83 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text89 = getelementptr inbounds %struct.buffer, %struct.buffer* %83, i32 0, i32 73
  %84 = load %struct.buffer_text*, %struct.buffer_text** %text89, align 8
  %gap_size = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %84, i32 0, i32 5
  %85 = load i64, i64* %gap_size, align 8
  br label %cond.end.91

cond.false.90:                                    ; preds = %if.end.85
  br label %cond.end.91

cond.end.91:                                      ; preds = %cond.false.90, %cond.true.88
  %cond92 = phi i64 [ %85, %cond.true.88 ], [ 0, %cond.false.90 ]
  %86 = load i64, i64* %scan_byte, align 8
  %add93 = add nsw i64 %cond92, %86
  %87 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text94 = getelementptr inbounds %struct.buffer, %struct.buffer* %87, i32 0, i32 73
  %88 = load %struct.buffer_text*, %struct.buffer_text** %text94, align 8
  %beg = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %88, i32 0, i32 0
  %89 = load i8*, i8** %beg, align 8
  %add.ptr = getelementptr inbounds i8, i8* %89, i64 %add93
  %add.ptr95 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %90 = load i8, i8* %add.ptr95, align 1
  %conv96 = zext i8 %90 to i32
  store i32 %conv96, i32* %c, align 4
  %91 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %cmp97 = icmp ne %struct.Lisp_Char_Table* %91, null
  br i1 %cmp97, label %land.lhs.true.99, label %if.else.208

land.lhs.true.99:                                 ; preds = %cond.end.91
  %92 = load i8, i8* %multibyte, align 1
  %tobool100 = trunc i8 %92 to i1
  br i1 %tobool100, label %land.lhs.true.102, label %land.lhs.true.105

land.lhs.true.102:                                ; preds = %land.lhs.true.99
  %93 = load i32, i32* %c, align 4
  %and = and i32 %93, 192
  %cmp103 = icmp eq i32 %and, 192
  br i1 %cmp103, label %if.else.208, label %land.lhs.true.105

land.lhs.true.105:                                ; preds = %land.lhs.true.102, %land.lhs.true.99
  br i1 true, label %cond.true.106, label %cond.false.110

cond.true.106:                                    ; preds = %land.lhs.true.105
  %94 = load i32, i32* %c, align 4
  %add107 = add i32 %94, 0
  %cmp108 = icmp ult i32 %add107, 128
  br i1 %cmp108, label %cond.true.115, label %cond.false.133

cond.false.110:                                   ; preds = %land.lhs.true.105
  %95 = load i32, i32* %c, align 4
  %conv111 = sext i32 %95 to i64
  %add112 = add i64 %conv111, 0
  %cmp113 = icmp ult i64 %add112, 128
  br i1 %cmp113, label %cond.true.115, label %cond.false.133

cond.true.115:                                    ; preds = %cond.false.110, %cond.true.106
  %96 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %ascii = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %96, i32 0, i32 4
  %97 = load i64, i64* %ascii, align 8
  %call116 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp117 = icmp eq i64 %97, %call116
  br i1 %cmp117, label %cond.true.119, label %cond.false.120

cond.true.119:                                    ; preds = %cond.true.115
  %98 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %defalt = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %98, i32 0, i32 1
  %99 = load i64, i64* %defalt, align 8
  br label %cond.end.131

cond.false.120:                                   ; preds = %cond.true.115
  %100 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %ascii121 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %100, i32 0, i32 4
  %101 = load i64, i64* %ascii121, align 8
  %call122 = call zeroext i1 @SUB_CHAR_TABLE_P(i64 %101)
  br i1 %call122, label %cond.true.124, label %cond.false.127

cond.true.124:                                    ; preds = %cond.false.120
  %102 = load i32, i32* %c, align 4
  %idxprom = sext i32 %102 to i64
  %103 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %ascii125 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %103, i32 0, i32 4
  %104 = load i64, i64* %ascii125, align 8
  %call126 = call %struct.Lisp_Sub_Char_Table* @XSUB_CHAR_TABLE(i64 %104)
  %contents = getelementptr inbounds %struct.Lisp_Sub_Char_Table, %struct.Lisp_Sub_Char_Table* %call126, i32 0, i32 3
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* %contents, i32 0, i64 %idxprom
  %105 = load i64, i64* %arrayidx, align 8
  br label %cond.end.129

cond.false.127:                                   ; preds = %cond.false.120
  %106 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %ascii128 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %106, i32 0, i32 4
  %107 = load i64, i64* %ascii128, align 8
  br label %cond.end.129

cond.end.129:                                     ; preds = %cond.false.127, %cond.true.124
  %cond130 = phi i64 [ %105, %cond.true.124 ], [ %107, %cond.false.127 ]
  br label %cond.end.131

cond.end.131:                                     ; preds = %cond.end.129, %cond.true.119
  %cond132 = phi i64 [ %99, %cond.true.119 ], [ %cond130, %cond.end.129 ]
  br label %cond.end.135

cond.false.133:                                   ; preds = %cond.false.110, %cond.true.106
  %108 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %109 = load i32, i32* %c, align 4
  %call134 = call i64 @disp_char_vector(%struct.Lisp_Char_Table* %108, i32 %109)
  br label %cond.end.135

cond.end.135:                                     ; preds = %cond.false.133, %cond.end.131
  %cond136 = phi i64 [ %cond132, %cond.end.131 ], [ %call134, %cond.false.133 ]
  %call137 = call zeroext i1 @VECTORP(i64 %cond136)
  br i1 %call137, label %if.then.139, label %if.else.208

if.then.139:                                      ; preds = %cond.end.135
  br i1 true, label %cond.true.140, label %cond.false.144

cond.true.140:                                    ; preds = %if.then.139
  %110 = load i32, i32* %c, align 4
  %add141 = add i32 %110, 0
  %cmp142 = icmp ult i32 %add141, 128
  br i1 %cmp142, label %cond.true.149, label %cond.false.172

cond.false.144:                                   ; preds = %if.then.139
  %111 = load i32, i32* %c, align 4
  %conv145 = sext i32 %111 to i64
  %add146 = add i64 %conv145, 0
  %cmp147 = icmp ult i64 %add146, 128
  br i1 %cmp147, label %cond.true.149, label %cond.false.172

cond.true.149:                                    ; preds = %cond.false.144, %cond.true.140
  %112 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %ascii150 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %112, i32 0, i32 4
  %113 = load i64, i64* %ascii150, align 8
  %call151 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp152 = icmp eq i64 %113, %call151
  br i1 %cmp152, label %cond.true.154, label %cond.false.156

cond.true.154:                                    ; preds = %cond.true.149
  %114 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %defalt155 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %114, i32 0, i32 1
  %115 = load i64, i64* %defalt155, align 8
  br label %cond.end.170

cond.false.156:                                   ; preds = %cond.true.149
  %116 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %ascii157 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %116, i32 0, i32 4
  %117 = load i64, i64* %ascii157, align 8
  %call158 = call zeroext i1 @SUB_CHAR_TABLE_P(i64 %117)
  br i1 %call158, label %cond.true.160, label %cond.false.166

cond.true.160:                                    ; preds = %cond.false.156
  %118 = load i32, i32* %c, align 4
  %idxprom161 = sext i32 %118 to i64
  %119 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %ascii162 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %119, i32 0, i32 4
  %120 = load i64, i64* %ascii162, align 8
  %call163 = call %struct.Lisp_Sub_Char_Table* @XSUB_CHAR_TABLE(i64 %120)
  %contents164 = getelementptr inbounds %struct.Lisp_Sub_Char_Table, %struct.Lisp_Sub_Char_Table* %call163, i32 0, i32 3
  %arrayidx165 = getelementptr inbounds [0 x i64], [0 x i64]* %contents164, i32 0, i64 %idxprom161
  %121 = load i64, i64* %arrayidx165, align 8
  br label %cond.end.168

cond.false.166:                                   ; preds = %cond.false.156
  %122 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %ascii167 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %122, i32 0, i32 4
  %123 = load i64, i64* %ascii167, align 8
  br label %cond.end.168

cond.end.168:                                     ; preds = %cond.false.166, %cond.true.160
  %cond169 = phi i64 [ %121, %cond.true.160 ], [ %123, %cond.false.166 ]
  br label %cond.end.170

cond.end.170:                                     ; preds = %cond.end.168, %cond.true.154
  %cond171 = phi i64 [ %115, %cond.true.154 ], [ %cond169, %cond.end.168 ]
  br label %cond.end.174

cond.false.172:                                   ; preds = %cond.false.144, %cond.true.140
  %124 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %125 = load i32, i32* %c, align 4
  %call173 = call i64 @disp_char_vector(%struct.Lisp_Char_Table* %124, i32 %125)
  br label %cond.end.174

cond.end.174:                                     ; preds = %cond.false.172, %cond.end.170
  %cond175 = phi i64 [ %cond171, %cond.end.170 ], [ %call173, %cond.false.172 ]
  store i64 %cond175, i64* %charvec, align 8
  %126 = load i64, i64* %charvec, align 8
  %call176 = call i64 @ASIZE(i64 %126)
  store i64 %call176, i64* %n, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.174
  %127 = load i64, i64* %i, align 8
  %128 = load i64, i64* %n, align 8
  %cmp177 = icmp slt i64 %127, %128
  br i1 %cmp177, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %129 = load i64, i64* %charvec, align 8
  %130 = load i64, i64* %i, align 8
  %call180 = call i64 @AREF(i64 %129, i64 %130)
  store i64 %call180, i64* %entry179, align 8
  %131 = load i64, i64* %entry179, align 8
  %call181 = call zeroext i1 @GLYPH_CODE_P(i64 %131)
  br i1 %call181, label %if.then.182, label %if.else.184

if.then.182:                                      ; preds = %for.body
  %132 = load i64, i64* %entry179, align 8
  %call183 = call i32 @GLYPH_CODE_CHAR(i64 %132)
  store i32 %call183, i32* %c, align 4
  br label %if.end.185

if.else.184:                                      ; preds = %for.body
  store i32 32, i32* %c, align 4
  br label %if.end.185

if.end.185:                                       ; preds = %if.else.184, %if.then.182
  %133 = load i32, i32* %c, align 4
  %cmp186 = icmp eq i32 %133, 10
  br i1 %cmp186, label %if.then.188, label %if.end.189

if.then.188:                                      ; preds = %if.end.185
  br label %endloop

if.end.189:                                       ; preds = %if.end.185
  %134 = load i32, i32* %c, align 4
  %cmp190 = icmp eq i32 %134, 13
  br i1 %cmp190, label %land.lhs.true.192, label %if.end.197

land.lhs.true.192:                                ; preds = %if.end.189
  %135 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %selective_display_ = getelementptr inbounds %struct.buffer, %struct.buffer* %135, i32 0, i32 32
  %136 = load i64, i64* %selective_display_, align 8
  %call193 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp194 = icmp eq i64 %136, %call193
  br i1 %cmp194, label %if.then.196, label %if.end.197

if.then.196:                                      ; preds = %land.lhs.true.192
  br label %endloop

if.end.197:                                       ; preds = %land.lhs.true.192, %if.end.189
  %137 = load i32, i32* %c, align 4
  %cmp198 = icmp eq i32 %137, 9
  br i1 %cmp198, label %if.then.200, label %if.else.205

if.then.200:                                      ; preds = %if.end.197
  %138 = load i32, i32* %tab_width, align 4
  %conv201 = sext i32 %138 to i64
  %139 = load i64, i64* %col, align 8
  %add202 = add nsw i64 %139, %conv201
  store i64 %add202, i64* %col, align 8
  %140 = load i64, i64* %col, align 8
  %141 = load i32, i32* %tab_width, align 4
  %conv203 = sext i32 %141 to i64
  %div = sdiv i64 %140, %conv203
  %142 = load i32, i32* %tab_width, align 4
  %conv204 = sext i32 %142 to i64
  %mul = mul nsw i64 %div, %conv204
  store i64 %mul, i64* %col, align 8
  br label %if.end.206

if.else.205:                                      ; preds = %if.end.197
  %143 = load i64, i64* %col, align 8
  %inc = add nsw i64 %143, 1
  store i64 %inc, i64* %col, align 8
  br label %if.end.206

if.end.206:                                       ; preds = %if.else.205, %if.then.200
  br label %for.inc

for.inc:                                          ; preds = %if.end.206
  %144 = load i64, i64* %i, align 8
  %inc207 = add nsw i64 %144, 1
  store i64 %inc207, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.503

if.else.208:                                      ; preds = %cond.end.135, %land.lhs.true.102, %cond.end.91
  %145 = load i32, i32* %c, align 4
  %cmp209 = icmp eq i32 %145, 10
  br i1 %cmp209, label %if.then.211, label %if.end.212

if.then.211:                                      ; preds = %if.else.208
  br label %endloop

if.end.212:                                       ; preds = %if.else.208
  %146 = load i32, i32* %c, align 4
  %cmp213 = icmp eq i32 %146, 13
  br i1 %cmp213, label %land.lhs.true.215, label %if.end.221

land.lhs.true.215:                                ; preds = %if.end.212
  %147 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %selective_display_216 = getelementptr inbounds %struct.buffer, %struct.buffer* %147, i32 0, i32 32
  %148 = load i64, i64* %selective_display_216, align 8
  %call217 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp218 = icmp eq i64 %148, %call217
  br i1 %cmp218, label %if.then.220, label %if.end.221

if.then.220:                                      ; preds = %land.lhs.true.215
  br label %endloop

if.end.221:                                       ; preds = %land.lhs.true.215, %if.end.212
  %149 = load i32, i32* %c, align 4
  %cmp222 = icmp eq i32 %149, 9
  br i1 %cmp222, label %if.then.224, label %if.else.231

if.then.224:                                      ; preds = %if.end.221
  %150 = load i32, i32* %tab_width, align 4
  %conv225 = sext i32 %150 to i64
  %151 = load i64, i64* %col, align 8
  %add226 = add nsw i64 %151, %conv225
  store i64 %add226, i64* %col, align 8
  %152 = load i64, i64* %col, align 8
  %153 = load i32, i32* %tab_width, align 4
  %conv227 = sext i32 %153 to i64
  %div228 = sdiv i64 %152, %conv227
  %154 = load i32, i32* %tab_width, align 4
  %conv229 = sext i32 %154 to i64
  %mul230 = mul nsw i64 %div228, %conv229
  store i64 %mul230, i64* %col, align 8
  br label %if.end.502

if.else.231:                                      ; preds = %if.end.221
  %155 = load i8, i8* %multibyte, align 1
  %tobool232 = trunc i8 %155 to i1
  br i1 %tobool232, label %land.lhs.true.234, label %if.else.478

land.lhs.true.234:                                ; preds = %if.else.231
  %156 = load i32, i32* %c, align 4
  %and235 = and i32 %156, 192
  %cmp236 = icmp eq i32 %and235, 192
  br i1 %cmp236, label %if.then.238, label %if.else.478

if.then.238:                                      ; preds = %land.lhs.true.234
  %157 = load i64, i64* %scan_byte, align 8
  %158 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text240 = getelementptr inbounds %struct.buffer, %struct.buffer* %158, i32 0, i32 73
  %159 = load %struct.buffer_text*, %struct.buffer_text** %text240, align 8
  %gpt_byte241 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %159, i32 0, i32 3
  %160 = load i64, i64* %gpt_byte241, align 8
  %cmp242 = icmp sge i64 %157, %160
  br i1 %cmp242, label %cond.true.244, label %cond.false.247

cond.true.244:                                    ; preds = %if.then.238
  %161 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text245 = getelementptr inbounds %struct.buffer, %struct.buffer* %161, i32 0, i32 73
  %162 = load %struct.buffer_text*, %struct.buffer_text** %text245, align 8
  %gap_size246 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %162, i32 0, i32 5
  %163 = load i64, i64* %gap_size246, align 8
  br label %cond.end.248

cond.false.247:                                   ; preds = %if.then.238
  br label %cond.end.248

cond.end.248:                                     ; preds = %cond.false.247, %cond.true.244
  %cond249 = phi i64 [ %163, %cond.true.244 ], [ 0, %cond.false.247 ]
  %164 = load i64, i64* %scan_byte, align 8
  %add250 = add nsw i64 %cond249, %164
  %165 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text251 = getelementptr inbounds %struct.buffer, %struct.buffer* %165, i32 0, i32 73
  %166 = load %struct.buffer_text*, %struct.buffer_text** %text251, align 8
  %beg252 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %166, i32 0, i32 0
  %167 = load i8*, i8** %beg252, align 8
  %add.ptr253 = getelementptr inbounds i8, i8* %167, i64 %add250
  %add.ptr254 = getelementptr inbounds i8, i8* %add.ptr253, i64 -1
  store i8* %add.ptr254, i8** %ptr, align 8
  br label %do.body

do.body:                                          ; preds = %cond.end.248
  %168 = load i8*, i8** %ptr, align 8
  %arrayidx255 = getelementptr inbounds i8, i8* %168, i64 0
  %169 = load i8, i8* %arrayidx255, align 1
  %conv256 = zext i8 %169 to i32
  %and257 = and i32 %conv256, 128
  %tobool258 = icmp ne i32 %and257, 0
  br i1 %tobool258, label %cond.false.262, label %cond.true.259

cond.true.259:                                    ; preds = %do.body
  store i32 1, i32* %bytes, align 4
  %170 = load i8*, i8** %ptr, align 8
  %arrayidx260 = getelementptr inbounds i8, i8* %170, i64 0
  %171 = load i8, i8* %arrayidx260, align 1
  %conv261 = zext i8 %171 to i32
  br label %cond.end.305

cond.false.262:                                   ; preds = %do.body
  %172 = load i8*, i8** %ptr, align 8
  %arrayidx263 = getelementptr inbounds i8, i8* %172, i64 0
  %173 = load i8, i8* %arrayidx263, align 1
  %conv264 = zext i8 %173 to i32
  %and265 = and i32 %conv264, 32
  %tobool266 = icmp ne i32 %and265, 0
  br i1 %tobool266, label %cond.false.280, label %cond.true.267

cond.true.267:                                    ; preds = %cond.false.262
  store i32 2, i32* %bytes, align 4
  %174 = load i8*, i8** %ptr, align 8
  %arrayidx268 = getelementptr inbounds i8, i8* %174, i64 0
  %175 = load i8, i8* %arrayidx268, align 1
  %conv269 = zext i8 %175 to i32
  %and270 = and i32 %conv269, 31
  %shl = shl i32 %and270, 6
  %176 = load i8*, i8** %ptr, align 8
  %arrayidx271 = getelementptr inbounds i8, i8* %176, i64 1
  %177 = load i8, i8* %arrayidx271, align 1
  %conv272 = zext i8 %177 to i32
  %and273 = and i32 %conv272, 63
  %or = or i32 %shl, %and273
  %178 = load i8*, i8** %ptr, align 8
  %arrayidx274 = getelementptr inbounds i8, i8* %178, i64 0
  %179 = load i8, i8* %arrayidx274, align 1
  %conv275 = zext i8 %179 to i32
  %cmp276 = icmp slt i32 %conv275, 194
  %cond278 = select i1 %cmp276, i32 4194176, i32 0
  %add279 = add nsw i32 %or, %cond278
  br label %cond.end.303

cond.false.280:                                   ; preds = %cond.false.262
  %180 = load i8*, i8** %ptr, align 8
  %arrayidx281 = getelementptr inbounds i8, i8* %180, i64 0
  %181 = load i8, i8* %arrayidx281, align 1
  %conv282 = zext i8 %181 to i32
  %and283 = and i32 %conv282, 16
  %tobool284 = icmp ne i32 %and283, 0
  br i1 %tobool284, label %cond.false.299, label %cond.true.285

cond.true.285:                                    ; preds = %cond.false.280
  store i32 3, i32* %bytes, align 4
  %182 = load i8*, i8** %ptr, align 8
  %arrayidx286 = getelementptr inbounds i8, i8* %182, i64 0
  %183 = load i8, i8* %arrayidx286, align 1
  %conv287 = zext i8 %183 to i32
  %and288 = and i32 %conv287, 15
  %shl289 = shl i32 %and288, 12
  %184 = load i8*, i8** %ptr, align 8
  %arrayidx290 = getelementptr inbounds i8, i8* %184, i64 1
  %185 = load i8, i8* %arrayidx290, align 1
  %conv291 = zext i8 %185 to i32
  %and292 = and i32 %conv291, 63
  %shl293 = shl i32 %and292, 6
  %or294 = or i32 %shl289, %shl293
  %186 = load i8*, i8** %ptr, align 8
  %arrayidx295 = getelementptr inbounds i8, i8* %186, i64 2
  %187 = load i8, i8* %arrayidx295, align 1
  %conv296 = zext i8 %187 to i32
  %and297 = and i32 %conv296, 63
  %or298 = or i32 %or294, %and297
  br label %cond.end.301

cond.false.299:                                   ; preds = %cond.false.280
  %188 = load i8*, i8** %ptr, align 8
  %call300 = call i32 @string_char(i8* %188, i8** null, i32* %bytes)
  br label %cond.end.301

cond.end.301:                                     ; preds = %cond.false.299, %cond.true.285
  %cond302 = phi i32 [ %or298, %cond.true.285 ], [ %call300, %cond.false.299 ]
  br label %cond.end.303

cond.end.303:                                     ; preds = %cond.end.301, %cond.true.267
  %cond304 = phi i32 [ %add279, %cond.true.267 ], [ %cond302, %cond.end.301 ]
  br label %cond.end.305

cond.end.305:                                     ; preds = %cond.end.303, %cond.true.259
  %cond306 = phi i32 [ %conv261, %cond.true.259 ], [ %cond304, %cond.end.303 ]
  store i32 %cond306, i32* %ch, align 4
  %189 = load i8*, i8** %ptr, align 8
  %190 = load i8, i8* %189, align 1
  %conv307 = zext i8 %190 to i32
  %and308 = and i32 %conv307, 128
  %tobool309 = icmp ne i32 %and308, 0
  br i1 %tobool309, label %cond.false.311, label %cond.true.310

cond.true.310:                                    ; preds = %cond.end.305
  br label %cond.end.331

cond.false.311:                                   ; preds = %cond.end.305
  %191 = load i8*, i8** %ptr, align 8
  %192 = load i8, i8* %191, align 1
  %conv312 = zext i8 %192 to i32
  %and313 = and i32 %conv312, 32
  %tobool314 = icmp ne i32 %and313, 0
  br i1 %tobool314, label %cond.false.316, label %cond.true.315

cond.true.315:                                    ; preds = %cond.false.311
  br label %cond.end.329

cond.false.316:                                   ; preds = %cond.false.311
  %193 = load i8*, i8** %ptr, align 8
  %194 = load i8, i8* %193, align 1
  %conv317 = zext i8 %194 to i32
  %and318 = and i32 %conv317, 16
  %tobool319 = icmp ne i32 %and318, 0
  br i1 %tobool319, label %cond.false.321, label %cond.true.320

cond.true.320:                                    ; preds = %cond.false.316
  br label %cond.end.327

cond.false.321:                                   ; preds = %cond.false.316
  %195 = load i8*, i8** %ptr, align 8
  %196 = load i8, i8* %195, align 1
  %conv322 = zext i8 %196 to i32
  %and323 = and i32 %conv322, 8
  %tobool324 = icmp ne i32 %and323, 0
  %lnot325 = xor i1 %tobool324, true
  %cond326 = select i1 %lnot325, i32 4, i32 5
  br label %cond.end.327

cond.end.327:                                     ; preds = %cond.false.321, %cond.true.320
  %cond328 = phi i32 [ 3, %cond.true.320 ], [ %cond326, %cond.false.321 ]
  br label %cond.end.329

cond.end.329:                                     ; preds = %cond.end.327, %cond.true.315
  %cond330 = phi i32 [ 2, %cond.true.315 ], [ %cond328, %cond.end.327 ]
  br label %cond.end.331

cond.end.331:                                     ; preds = %cond.end.329, %cond.true.310
  %cond332 = phi i32 [ 1, %cond.true.310 ], [ %cond330, %cond.end.329 ]
  %197 = load i32, i32* %bytes, align 4
  %cmp333 = icmp ne i32 %cond332, %197
  br i1 %cmp333, label %if.then.335, label %if.else.337

if.then.335:                                      ; preds = %cond.end.331
  %198 = load i32, i32* %bytes, align 4
  %mul336 = mul nsw i32 %198, 4
  store i32 %mul336, i32* %width239, align 4
  br label %if.end.473

if.else.337:                                      ; preds = %cond.end.331
  %199 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %cmp338 = icmp ne %struct.Lisp_Char_Table* %199, null
  br i1 %cmp338, label %land.lhs.true.340, label %if.else.418

land.lhs.true.340:                                ; preds = %if.else.337
  br i1 true, label %cond.true.341, label %cond.false.345

cond.true.341:                                    ; preds = %land.lhs.true.340
  %200 = load i32, i32* %ch, align 4
  %add342 = add i32 %200, 0
  %cmp343 = icmp ult i32 %add342, 128
  br i1 %cmp343, label %cond.true.350, label %cond.false.373

cond.false.345:                                   ; preds = %land.lhs.true.340
  %201 = load i32, i32* %ch, align 4
  %conv346 = sext i32 %201 to i64
  %add347 = add i64 %conv346, 0
  %cmp348 = icmp ult i64 %add347, 128
  br i1 %cmp348, label %cond.true.350, label %cond.false.373

cond.true.350:                                    ; preds = %cond.false.345, %cond.true.341
  %202 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %ascii351 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %202, i32 0, i32 4
  %203 = load i64, i64* %ascii351, align 8
  %call352 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp353 = icmp eq i64 %203, %call352
  br i1 %cmp353, label %cond.true.355, label %cond.false.357

cond.true.355:                                    ; preds = %cond.true.350
  %204 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %defalt356 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %204, i32 0, i32 1
  %205 = load i64, i64* %defalt356, align 8
  br label %cond.end.371

cond.false.357:                                   ; preds = %cond.true.350
  %206 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %ascii358 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %206, i32 0, i32 4
  %207 = load i64, i64* %ascii358, align 8
  %call359 = call zeroext i1 @SUB_CHAR_TABLE_P(i64 %207)
  br i1 %call359, label %cond.true.361, label %cond.false.367

cond.true.361:                                    ; preds = %cond.false.357
  %208 = load i32, i32* %ch, align 4
  %idxprom362 = sext i32 %208 to i64
  %209 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %ascii363 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %209, i32 0, i32 4
  %210 = load i64, i64* %ascii363, align 8
  %call364 = call %struct.Lisp_Sub_Char_Table* @XSUB_CHAR_TABLE(i64 %210)
  %contents365 = getelementptr inbounds %struct.Lisp_Sub_Char_Table, %struct.Lisp_Sub_Char_Table* %call364, i32 0, i32 3
  %arrayidx366 = getelementptr inbounds [0 x i64], [0 x i64]* %contents365, i32 0, i64 %idxprom362
  %211 = load i64, i64* %arrayidx366, align 8
  br label %cond.end.369

cond.false.367:                                   ; preds = %cond.false.357
  %212 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %ascii368 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %212, i32 0, i32 4
  %213 = load i64, i64* %ascii368, align 8
  br label %cond.end.369

cond.end.369:                                     ; preds = %cond.false.367, %cond.true.361
  %cond370 = phi i64 [ %211, %cond.true.361 ], [ %213, %cond.false.367 ]
  br label %cond.end.371

cond.end.371:                                     ; preds = %cond.end.369, %cond.true.355
  %cond372 = phi i64 [ %205, %cond.true.355 ], [ %cond370, %cond.end.369 ]
  br label %cond.end.375

cond.false.373:                                   ; preds = %cond.false.345, %cond.true.341
  %214 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %215 = load i32, i32* %ch, align 4
  %call374 = call i64 @disp_char_vector(%struct.Lisp_Char_Table* %214, i32 %215)
  br label %cond.end.375

cond.end.375:                                     ; preds = %cond.false.373, %cond.end.371
  %cond376 = phi i64 [ %cond372, %cond.end.371 ], [ %call374, %cond.false.373 ]
  %call377 = call zeroext i1 @VECTORP(i64 %cond376)
  br i1 %call377, label %if.then.379, label %if.else.418

if.then.379:                                      ; preds = %cond.end.375
  br i1 true, label %cond.true.380, label %cond.false.384

cond.true.380:                                    ; preds = %if.then.379
  %216 = load i32, i32* %ch, align 4
  %add381 = add i32 %216, 0
  %cmp382 = icmp ult i32 %add381, 128
  br i1 %cmp382, label %cond.true.389, label %cond.false.412

cond.false.384:                                   ; preds = %if.then.379
  %217 = load i32, i32* %ch, align 4
  %conv385 = sext i32 %217 to i64
  %add386 = add i64 %conv385, 0
  %cmp387 = icmp ult i64 %add386, 128
  br i1 %cmp387, label %cond.true.389, label %cond.false.412

cond.true.389:                                    ; preds = %cond.false.384, %cond.true.380
  %218 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %ascii390 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %218, i32 0, i32 4
  %219 = load i64, i64* %ascii390, align 8
  %call391 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp392 = icmp eq i64 %219, %call391
  br i1 %cmp392, label %cond.true.394, label %cond.false.396

cond.true.394:                                    ; preds = %cond.true.389
  %220 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %defalt395 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %220, i32 0, i32 1
  %221 = load i64, i64* %defalt395, align 8
  br label %cond.end.410

cond.false.396:                                   ; preds = %cond.true.389
  %222 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %ascii397 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %222, i32 0, i32 4
  %223 = load i64, i64* %ascii397, align 8
  %call398 = call zeroext i1 @SUB_CHAR_TABLE_P(i64 %223)
  br i1 %call398, label %cond.true.400, label %cond.false.406

cond.true.400:                                    ; preds = %cond.false.396
  %224 = load i32, i32* %ch, align 4
  %idxprom401 = sext i32 %224 to i64
  %225 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %ascii402 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %225, i32 0, i32 4
  %226 = load i64, i64* %ascii402, align 8
  %call403 = call %struct.Lisp_Sub_Char_Table* @XSUB_CHAR_TABLE(i64 %226)
  %contents404 = getelementptr inbounds %struct.Lisp_Sub_Char_Table, %struct.Lisp_Sub_Char_Table* %call403, i32 0, i32 3
  %arrayidx405 = getelementptr inbounds [0 x i64], [0 x i64]* %contents404, i32 0, i64 %idxprom401
  %227 = load i64, i64* %arrayidx405, align 8
  br label %cond.end.408

cond.false.406:                                   ; preds = %cond.false.396
  %228 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %ascii407 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %228, i32 0, i32 4
  %229 = load i64, i64* %ascii407, align 8
  br label %cond.end.408

cond.end.408:                                     ; preds = %cond.false.406, %cond.true.400
  %cond409 = phi i64 [ %227, %cond.true.400 ], [ %229, %cond.false.406 ]
  br label %cond.end.410

cond.end.410:                                     ; preds = %cond.end.408, %cond.true.394
  %cond411 = phi i64 [ %221, %cond.true.394 ], [ %cond409, %cond.end.408 ]
  br label %cond.end.414

cond.false.412:                                   ; preds = %cond.false.384, %cond.true.380
  %230 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %231 = load i32, i32* %ch, align 4
  %call413 = call i64 @disp_char_vector(%struct.Lisp_Char_Table* %230, i32 %231)
  br label %cond.end.414

cond.end.414:                                     ; preds = %cond.false.412, %cond.end.410
  %cond415 = phi i64 [ %cond411, %cond.end.410 ], [ %call413, %cond.false.412 ]
  %call416 = call i64 @ASIZE(i64 %cond415)
  %call417 = call i32 @sanitize_char_width(i64 %call416)
  store i32 %call417, i32* %width239, align 4
  br label %if.end.472

if.else.418:                                      ; preds = %cond.end.375, %if.else.337
  br i1 true, label %cond.true.419, label %cond.false.423

cond.true.419:                                    ; preds = %if.else.418
  %232 = load i32, i32* %ch, align 4
  %add420 = add i32 %232, 0
  %cmp421 = icmp ult i32 %add420, 128
  br i1 %cmp421, label %cond.true.428, label %cond.false.466

cond.false.423:                                   ; preds = %if.else.418
  %233 = load i32, i32* %ch, align 4
  %conv424 = sext i32 %233 to i64
  %add425 = add i64 %conv424, 0
  %cmp426 = icmp ult i64 %add425, 128
  br i1 %cmp426, label %cond.true.428, label %cond.false.466

cond.true.428:                                    ; preds = %cond.false.423, %cond.true.419
  %234 = load i32, i32* %ch, align 4
  %cmp429 = icmp slt i32 %234, 32
  br i1 %cmp429, label %cond.true.431, label %cond.false.452

cond.true.431:                                    ; preds = %cond.true.428
  %235 = load i32, i32* %ch, align 4
  %cmp432 = icmp eq i32 %235, 9
  br i1 %cmp432, label %cond.true.434, label %cond.false.438

cond.true.434:                                    ; preds = %cond.true.431
  %236 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %tab_width_435 = getelementptr inbounds %struct.buffer, %struct.buffer* %236, i32 0, i32 19
  %237 = load i64, i64* %tab_width_435, align 8
  %shr436 = ashr i64 %237, 2
  %call437 = call i32 @sanitize_tab_width(i64 %shr436)
  br label %cond.end.450

cond.false.438:                                   ; preds = %cond.true.431
  %238 = load i32, i32* %ch, align 4
  %cmp439 = icmp eq i32 %238, 10
  br i1 %cmp439, label %cond.true.441, label %cond.false.442

cond.true.441:                                    ; preds = %cond.false.438
  br label %cond.end.448

cond.false.442:                                   ; preds = %cond.false.438
  %239 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %ctl_arrow_443 = getelementptr inbounds %struct.buffer, %struct.buffer* %239, i32 0, i32 29
  %240 = load i64, i64* %ctl_arrow_443, align 8
  %call444 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp445 = icmp eq i64 %240, %call444
  %cond447 = select i1 %cmp445, i32 4, i32 2
  br label %cond.end.448

cond.end.448:                                     ; preds = %cond.false.442, %cond.true.441
  %cond449 = phi i32 [ 0, %cond.true.441 ], [ %cond447, %cond.false.442 ]
  br label %cond.end.450

cond.end.450:                                     ; preds = %cond.end.448, %cond.true.434
  %cond451 = phi i32 [ %call437, %cond.true.434 ], [ %cond449, %cond.end.448 ]
  br label %cond.end.464

cond.false.452:                                   ; preds = %cond.true.428
  %241 = load i32, i32* %ch, align 4
  %cmp453 = icmp slt i32 %241, 127
  br i1 %cmp453, label %cond.true.455, label %cond.false.456

cond.true.455:                                    ; preds = %cond.false.452
  br label %cond.end.462

cond.false.456:                                   ; preds = %cond.false.452
  %242 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %ctl_arrow_457 = getelementptr inbounds %struct.buffer, %struct.buffer* %242, i32 0, i32 29
  %243 = load i64, i64* %ctl_arrow_457, align 8
  %call458 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp459 = icmp eq i64 %243, %call458
  %cond461 = select i1 %cmp459, i32 4, i32 2
  br label %cond.end.462

cond.end.462:                                     ; preds = %cond.false.456, %cond.true.455
  %cond463 = phi i32 [ 1, %cond.true.455 ], [ %cond461, %cond.false.456 ]
  br label %cond.end.464

cond.end.464:                                     ; preds = %cond.end.462, %cond.end.450
  %cond465 = phi i32 [ %cond451, %cond.end.450 ], [ %cond463, %cond.end.462 ]
  br label %cond.end.470

cond.false.466:                                   ; preds = %cond.false.423, %cond.true.419
  %244 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 28), align 8
  %245 = load i32, i32* %ch, align 4
  %call467 = call i64 @CHAR_TABLE_REF(i64 %244, i32 %245)
  %shr468 = ashr i64 %call467, 2
  %call469 = call i32 @sanitize_char_width(i64 %shr468)
  br label %cond.end.470

cond.end.470:                                     ; preds = %cond.false.466, %cond.end.464
  %cond471 = phi i32 [ %cond465, %cond.end.464 ], [ %call469, %cond.false.466 ]
  store i32 %cond471, i32* %width239, align 4
  br label %if.end.472

if.end.472:                                       ; preds = %cond.end.470, %cond.end.414
  br label %if.end.473

if.end.473:                                       ; preds = %if.end.472, %if.then.335
  br label %do.end

do.end:                                           ; preds = %if.end.473
  %246 = load i32, i32* %bytes, align 4
  %sub = sub nsw i32 %246, 1
  %conv474 = sext i32 %sub to i64
  %247 = load i64, i64* %scan_byte, align 8
  %add475 = add nsw i64 %247, %conv474
  store i64 %add475, i64* %scan_byte, align 8
  %248 = load i32, i32* %width239, align 4
  %conv476 = sext i32 %248 to i64
  %249 = load i64, i64* %col, align 8
  %add477 = add nsw i64 %249, %conv476
  store i64 %add477, i64* %col, align 8
  br label %if.end.501

if.else.478:                                      ; preds = %land.lhs.true.234, %if.else.231
  %250 = load i8, i8* %ctl_arrow, align 1
  %tobool479 = trunc i8 %250 to i1
  br i1 %tobool479, label %land.lhs.true.481, label %if.else.489

land.lhs.true.481:                                ; preds = %if.else.478
  %251 = load i32, i32* %c, align 4
  %cmp482 = icmp slt i32 %251, 32
  br i1 %cmp482, label %if.then.487, label %lor.lhs.false.484

lor.lhs.false.484:                                ; preds = %land.lhs.true.481
  %252 = load i32, i32* %c, align 4
  %cmp485 = icmp eq i32 %252, 127
  br i1 %cmp485, label %if.then.487, label %if.else.489

if.then.487:                                      ; preds = %lor.lhs.false.484, %land.lhs.true.481
  %253 = load i64, i64* %col, align 8
  %add488 = add nsw i64 %253, 2
  store i64 %add488, i64* %col, align 8
  br label %if.end.500

if.else.489:                                      ; preds = %lor.lhs.false.484, %if.else.478
  %254 = load i32, i32* %c, align 4
  %cmp490 = icmp slt i32 %254, 32
  br i1 %cmp490, label %if.then.495, label %lor.lhs.false.492

lor.lhs.false.492:                                ; preds = %if.else.489
  %255 = load i32, i32* %c, align 4
  %cmp493 = icmp sge i32 %255, 127
  br i1 %cmp493, label %if.then.495, label %if.else.497

if.then.495:                                      ; preds = %lor.lhs.false.492, %if.else.489
  %256 = load i64, i64* %col, align 8
  %add496 = add nsw i64 %256, 4
  store i64 %add496, i64* %col, align 8
  br label %if.end.499

if.else.497:                                      ; preds = %lor.lhs.false.492
  %257 = load i64, i64* %col, align 8
  %inc498 = add nsw i64 %257, 1
  store i64 %inc498, i64* %col, align 8
  br label %if.end.499

if.end.499:                                       ; preds = %if.else.497, %if.then.495
  br label %if.end.500

if.end.500:                                       ; preds = %if.end.499, %if.then.487
  br label %if.end.501

if.end.501:                                       ; preds = %if.end.500, %do.end
  br label %if.end.502

if.end.502:                                       ; preds = %if.end.501, %if.then.224
  br label %if.end.503

if.end.503:                                       ; preds = %if.end.502, %for.end
  %258 = load i64, i64* %scan, align 8
  %inc504 = add nsw i64 %258, 1
  store i64 %inc504, i64* %scan, align 8
  %259 = load i64, i64* %scan_byte, align 8
  %inc505 = add nsw i64 %259, 1
  store i64 %inc505, i64* %scan_byte, align 8
  br label %while.cond

while.end.506:                                    ; preds = %if.then.39, %while.cond
  br label %endloop

endloop:                                          ; preds = %while.end.506, %if.then.220, %if.then.211, %if.then.196, %if.then.188, %if.then.36
  %260 = load i64, i64* %col, align 8
  store i64 %260, i64* @last_known_column, align 8
  %261 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt507 = getelementptr inbounds %struct.buffer, %struct.buffer* %261, i32 0, i32 75
  %262 = load i64, i64* %pt507, align 8
  %add508 = add nsw i64 %262, 0
  store i64 %add508, i64* @last_known_column_point, align 8
  %263 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text509 = getelementptr inbounds %struct.buffer, %struct.buffer* %263, i32 0, i32 73
  %264 = load %struct.buffer_text*, %struct.buffer_text** %text509, align 8
  %modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %264, i32 0, i32 6
  %265 = load i64, i64* %modiff, align 8
  store i64 %265, i64* @last_known_column_modified, align 8
  %266 = load i64*, i64** %goalcol.addr, align 8
  %tobool510 = icmp ne i64* %266, null
  br i1 %tobool510, label %if.then.511, label %if.end.512

if.then.511:                                      ; preds = %endloop
  %267 = load i64, i64* %col, align 8
  %268 = load i64*, i64** %goalcol.addr, align 8
  store i64 %267, i64* %268, align 8
  br label %if.end.512

if.end.512:                                       ; preds = %if.then.511, %endloop
  %269 = load i64*, i64** %endpos.addr, align 8
  %tobool513 = icmp ne i64* %269, null
  br i1 %tobool513, label %if.then.514, label %if.end.515

if.then.514:                                      ; preds = %if.end.512
  %270 = load i64, i64* %scan, align 8
  %271 = load i64*, i64** %endpos.addr, align 8
  store i64 %270, i64* %271, align 8
  br label %if.end.515

if.end.515:                                       ; preds = %if.then.514, %if.end.512
  %272 = load i64*, i64** %prevcol.addr, align 8
  %tobool516 = icmp ne i64* %272, null
  br i1 %tobool516, label %if.then.517, label %if.end.518

if.then.517:                                      ; preds = %if.end.515
  %273 = load i64, i64* %prev_col, align 8
  %274 = load i64*, i64** %prevcol.addr, align 8
  store i64 %273, i64* %274, align 8
  br label %if.end.518

if.end.518:                                       ; preds = %if.then.517, %if.end.515
  ret void
}

declare void @set_point(i64) #1

declare i32 @FETCH_MULTIBYTE_CHAR(i64) #1

declare void @set_point_both(i64, i64) #1

declare void @del_range(i64, i64) #1

; Function Attrs: nounwind uwtable
define %struct.position* @compute_motion(i64 %from, i64 %frombyte, i64 %fromvpos, i64 %fromhpos, i1 zeroext %did_motion, i64 %to, i64 %tovpos, i64 %tohpos, i64 %width, i64 %hscroll, i32 %tab_offset, %struct.window* %win) #0 {
entry:
  %from.addr = alloca i64, align 8
  %frombyte.addr = alloca i64, align 8
  %fromvpos.addr = alloca i64, align 8
  %fromhpos.addr = alloca i64, align 8
  %did_motion.addr = alloca i8, align 1
  %to.addr = alloca i64, align 8
  %tovpos.addr = alloca i64, align 8
  %tohpos.addr = alloca i64, align 8
  %width.addr = alloca i64, align 8
  %hscroll.addr = alloca i64, align 8
  %tab_offset.addr = alloca i32, align 4
  %win.addr = alloca %struct.window*, align 8
  %hpos = alloca i64, align 8
  %vpos = alloca i64, align 8
  %pos = alloca i64, align 8
  %pos_byte = alloca i64, align 8
  %c = alloca i32, align 4
  %tab_width = alloca i32, align 4
  %ctl_arrow = alloca i8, align 1
  %dp = alloca %struct.Lisp_Char_Table*, align 8
  %selective = alloca i64, align 8
  %selective_rlen = alloca i64, align 8
  %next_boundary = alloca i64, align 8
  %width_run_start = alloca i64, align 8
  %width_run_end = alloca i64, align 8
  %width_run_width = alloca i64, align 8
  %width_table = alloca i64*, align 8
  %next_width_run = alloca i64, align 8
  %window = alloca i64, align 8
  %multibyte = alloca i8, align 1
  %wide_column_end_hpos = alloca i64, align 8
  %prev_pos = alloca i64, align 8
  %prev_pos_byte = alloca i64, align 8
  %prev_hpos = alloca i64, align 8
  %prev_vpos = alloca i64, align 8
  %contin_hpos = alloca i64, align 8
  %prev_tab_offset = alloca i32, align 4
  %continuation_glyph_width = alloca i32, align 4
  %cache_buffer = alloca %struct.buffer*, align 8
  %width_cache = alloca %struct.region_cache*, align 8
  %cmp_it = alloca %struct.composition_it, align 8
  %pos_here = alloca i64, align 8
  %newpos = alloca i64, align 8
  %ovstr = alloca i8*, align 8
  %ovlen = alloca i64, align 8
  %total_width = alloca i64, align 8
  %truncate = alloca i8, align 1
  %run_end = alloca i64, align 8
  %common_width = alloca i32, align 4
  %run_end_hpos = alloca i64, align 8
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  %charvec = alloca i64, align 8
  %entry477 = alloca i64, align 8
  %tem = alloca i32, align 4
  %chp = alloca i8*, align 8
  %chp610 = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  %mb_bytes = alloca i32, align 4
  %mb_width = alloca i32, align 4
  %ch = alloca i32, align 4
  store i64 %from, i64* %from.addr, align 8
  store i64 %frombyte, i64* %frombyte.addr, align 8
  store i64 %fromvpos, i64* %fromvpos.addr, align 8
  store i64 %fromhpos, i64* %fromhpos.addr, align 8
  %frombool = zext i1 %did_motion to i8
  store i8 %frombool, i8* %did_motion.addr, align 1
  store i64 %to, i64* %to.addr, align 8
  store i64 %tovpos, i64* %tovpos.addr, align 8
  store i64 %tohpos, i64* %tohpos.addr, align 8
  store i64 %width, i64* %width.addr, align 8
  store i64 %hscroll, i64* %hscroll.addr, align 8
  store i32 %tab_offset, i32* %tab_offset.addr, align 4
  store %struct.window* %win, %struct.window** %win.addr, align 8
  %0 = load i64, i64* %fromhpos.addr, align 8
  store i64 %0, i64* %hpos, align 8
  %1 = load i64, i64* %fromvpos.addr, align 8
  store i64 %1, i64* %vpos, align 8
  store i32 0, i32* %c, align 4
  %2 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %tab_width_ = getelementptr inbounds %struct.buffer, %struct.buffer* %2, i32 0, i32 19
  %3 = load i64, i64* %tab_width_, align 8
  %shr = ashr i64 %3, 2
  %call = call i32 @sanitize_tab_width(i64 %shr)
  store i32 %call, i32* %tab_width, align 4
  %4 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %ctl_arrow_ = getelementptr inbounds %struct.buffer, %struct.buffer* %4, i32 0, i32 29
  %5 = load i64, i64* %ctl_arrow_, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %5, %call1
  %lnot = xor i1 %cmp, true
  %frombool2 = zext i1 %lnot to i8
  store i8 %frombool2, i8* %ctl_arrow, align 1
  %6 = load %struct.window*, %struct.window** %win.addr, align 8
  %call3 = call %struct.Lisp_Char_Table* @window_display_table(%struct.window* %6)
  store %struct.Lisp_Char_Table* %call3, %struct.Lisp_Char_Table** %dp, align 8
  %7 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %selective_display_ = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 32
  %8 = load i64, i64* %selective_display_, align 8
  %and = and i64 %8, 7
  %conv = trunc i64 %and to i32
  %and4 = and i32 %conv, -5
  %cmp5 = icmp eq i32 %and4, 2
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %9 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %selective_display_7 = getelementptr inbounds %struct.buffer, %struct.buffer* %9, i32 0, i32 32
  %10 = load i64, i64* %selective_display_7, align 8
  %shr8 = ashr i64 %10, 2
  br label %cond.end

cond.false:                                       ; preds = %entry
  %11 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %selective_display_9 = getelementptr inbounds %struct.buffer, %struct.buffer* %11, i32 0, i32 32
  %12 = load i64, i64* %selective_display_9, align 8
  %call10 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp11 = icmp eq i64 %12, %call10
  %lnot13 = xor i1 %cmp11, true
  %cond = select i1 %lnot13, i32 -1, i32 0
  %conv14 = sext i32 %cond to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond15 = phi i64 [ %shr8, %cond.true ], [ %conv14, %cond.false ]
  store i64 %cond15, i64* %selective, align 8
  %13 = load i64, i64* %selective, align 8
  %tobool = icmp ne i64 %13, 0
  br i1 %tobool, label %land.lhs.true, label %cond.false.24

land.lhs.true:                                    ; preds = %cond.end
  %14 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %tobool16 = icmp ne %struct.Lisp_Char_Table* %14, null
  br i1 %tobool16, label %land.lhs.true.17, label %cond.false.24

land.lhs.true.17:                                 ; preds = %land.lhs.true
  %15 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %extras = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %15, i32 0, i32 6
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* %extras, i32 0, i64 4
  %16 = load i64, i64* %arrayidx, align 8
  %call18 = call zeroext i1 @VECTORP(i64 %16)
  br i1 %call18, label %cond.true.20, label %cond.false.24

cond.true.20:                                     ; preds = %land.lhs.true.17
  %17 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %extras21 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %17, i32 0, i32 6
  %arrayidx22 = getelementptr inbounds [0 x i64], [0 x i64]* %extras21, i32 0, i64 4
  %18 = load i64, i64* %arrayidx22, align 8
  %call23 = call i64 @ASIZE(i64 %18)
  br label %cond.end.25

cond.false.24:                                    ; preds = %land.lhs.true.17, %land.lhs.true, %cond.end
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.24, %cond.true.20
  %cond26 = phi i64 [ %call23, %cond.true.20 ], [ 0, %cond.false.24 ]
  store i64 %cond26, i64* %selective_rlen, align 8
  %19 = load i64, i64* %from.addr, align 8
  store i64 %19, i64* %next_boundary, align 8
  %20 = load i64, i64* %from.addr, align 8
  store i64 %20, i64* %width_run_start, align 8
  %21 = load i64, i64* %from.addr, align 8
  store i64 %21, i64* %width_run_end, align 8
  store i64 0, i64* %width_run_width, align 8
  %22 = load i64, i64* %from.addr, align 8
  store i64 %22, i64* %next_width_run, align 8
  %23 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_ = getelementptr inbounds %struct.buffer, %struct.buffer* %23, i32 0, i32 39
  %24 = load i64, i64* %enable_multibyte_characters_, align 8
  %call27 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp28 = icmp eq i64 %24, %call27
  %lnot30 = xor i1 %cmp28, true
  %frombool31 = zext i1 %lnot30 to i8
  store i8 %frombool31, i8* %multibyte, align 1
  store i64 0, i64* %wide_column_end_hpos, align 8
  store i64 0, i64* %prev_hpos, align 8
  store i64 0, i64* %prev_vpos, align 8
  %25 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  store %struct.buffer* %25, %struct.buffer** %cache_buffer, align 8
  %26 = load %struct.window*, %struct.window** %win.addr, align 8
  %27 = bitcast %struct.window* %26 to i8*
  %call32 = call i64 @make_lisp_ptr(i8* %27, i32 5)
  store i64 %call32, i64* %window, align 8
  %28 = load %struct.buffer*, %struct.buffer** %cache_buffer, align 8
  %base_buffer = getelementptr inbounds %struct.buffer, %struct.buffer* %28, i32 0, i32 81
  %29 = load %struct.buffer*, %struct.buffer** %base_buffer, align 8
  %tobool33 = icmp ne %struct.buffer* %29, null
  br i1 %tobool33, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.25
  %30 = load %struct.buffer*, %struct.buffer** %cache_buffer, align 8
  %base_buffer34 = getelementptr inbounds %struct.buffer, %struct.buffer* %30, i32 0, i32 81
  %31 = load %struct.buffer*, %struct.buffer** %base_buffer34, align 8
  store %struct.buffer* %31, %struct.buffer** %cache_buffer, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.25
  %call35 = call %struct.region_cache* @width_run_cache_on_off()
  store %struct.region_cache* %call35, %struct.region_cache** %width_cache, align 8
  %32 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %call36 = call %struct.Lisp_Char_Table* @buffer_display_table()
  %cmp37 = icmp eq %struct.Lisp_Char_Table* %32, %call36
  br i1 %cmp37, label %if.then.39, label %if.else

if.then.39:                                       ; preds = %if.end
  %33 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %width_table_ = getelementptr inbounds %struct.buffer, %struct.buffer* %33, i32 0, i32 44
  %34 = load i64, i64* %width_table_, align 8
  %call40 = call zeroext i1 @VECTORP(i64 %34)
  br i1 %call40, label %cond.true.42, label %cond.false.45

cond.true.42:                                     ; preds = %if.then.39
  %35 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %width_table_43 = getelementptr inbounds %struct.buffer, %struct.buffer* %35, i32 0, i32 44
  %36 = load i64, i64* %width_table_43, align 8
  %call44 = call %struct.Lisp_Vector* @XVECTOR(i64 %36)
  %contents = getelementptr inbounds %struct.Lisp_Vector, %struct.Lisp_Vector* %call44, i32 0, i32 1
  %arraydecay = getelementptr inbounds [0 x i64], [0 x i64]* %contents, i32 0, i32 0
  br label %cond.end.46

cond.false.45:                                    ; preds = %if.then.39
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.false.45, %cond.true.42
  %cond47 = phi i64* [ %arraydecay, %cond.true.42 ], [ null, %cond.false.45 ]
  store i64* %cond47, i64** %width_table, align 8
  br label %if.end.48

if.else:                                          ; preds = %if.end
  store i64* null, i64** %width_table, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.else, %cond.end.46
  %37 = load i64, i64* %width.addr, align 8
  %cmp49 = icmp slt i64 %37, 0
  br i1 %cmp49, label %if.then.51, label %if.end.59

if.then.51:                                       ; preds = %if.end.48
  %38 = load %struct.window*, %struct.window** %win.addr, align 8
  %call52 = call i32 @window_body_width(%struct.window* %38, i1 zeroext false)
  %conv53 = sext i32 %call52 to i64
  store i64 %conv53, i64* %width.addr, align 8
  %39 = load %struct.window*, %struct.window** %win.addr, align 8
  %frame = getelementptr inbounds %struct.window, %struct.window* %39, i32 0, i32 1
  %40 = load i64, i64* %frame, align 8
  %sub = sub nsw i64 %40, 5
  %41 = inttoptr i64 %sub to i8*
  %42 = bitcast i8* %41 to %struct.frame*
  %output_method = getelementptr inbounds %struct.frame, %struct.frame* %42, i32 0, i32 26
  %43 = bitcast i48* %output_method to i64*
  %bf.load = load i64, i64* %43, align 8
  %bf.lshr = lshr i64 %bf.load, 23
  %bf.clear = and i64 %bf.lshr, 7
  %bf.cast = trunc i64 %bf.clear to i32
  %cmp54 = icmp eq i32 %bf.cast, 2
  br i1 %cmp54, label %if.end.58, label %if.then.56

if.then.56:                                       ; preds = %if.then.51
  %44 = load i64, i64* %width.addr, align 8
  %sub57 = sub nsw i64 %44, 1
  store i64 %sub57, i64* %width.addr, align 8
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.56, %if.then.51
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.end.48
  store i32 1, i32* %continuation_glyph_width, align 4
  %45 = load %struct.window*, %struct.window** %win.addr, align 8
  %frame60 = getelementptr inbounds %struct.window, %struct.window* %45, i32 0, i32 1
  %46 = load i64, i64* %frame60, align 8
  %sub61 = sub nsw i64 %46, 5
  %47 = inttoptr i64 %sub61 to i8*
  %48 = bitcast i8* %47 to %struct.frame*
  %output_method62 = getelementptr inbounds %struct.frame, %struct.frame* %48, i32 0, i32 26
  %49 = bitcast i48* %output_method62 to i64*
  %bf.load63 = load i64, i64* %49, align 8
  %bf.lshr64 = lshr i64 %bf.load63, 23
  %bf.clear65 = and i64 %bf.lshr64, 7
  %bf.cast66 = trunc i64 %bf.clear65 to i32
  %cmp67 = icmp eq i32 %bf.cast66, 2
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.end.59
  store i32 0, i32* %continuation_glyph_width, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.69, %if.end.59
  store i8 1, i8* @immediate_quit, align 1
  br label %do.body

do.body:                                          ; preds = %if.end.70
  %50 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call71 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp72 = icmp eq i64 %50, %call71
  br i1 %cmp72, label %if.else.79, label %land.lhs.true.74

land.lhs.true.74:                                 ; preds = %do.body
  %51 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call75 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp76 = icmp eq i64 %51, %call75
  br i1 %cmp76, label %if.then.78, label %if.else.79

if.then.78:                                       ; preds = %land.lhs.true.74
  call void @process_quit_flag()
  br label %if.end.83

if.else.79:                                       ; preds = %land.lhs.true.74, %do.body
  %52 = load volatile i8, i8* @pending_signals, align 1
  %tobool80 = trunc i8 %52 to i1
  br i1 %tobool80, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %if.else.79
  call void @process_pending_signals()
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.81, %if.else.79
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.then.78
  br label %do.end

do.end:                                           ; preds = %if.end.83
  %53 = load i64, i64* %from.addr, align 8
  store i64 %53, i64* %prev_pos, align 8
  store i64 %53, i64* %pos, align 8
  %54 = load i64, i64* %frombyte.addr, align 8
  store i64 %54, i64* %prev_pos_byte, align 8
  store i64 %54, i64* %pos_byte, align 8
  store i64 0, i64* %contin_hpos, align 8
  %55 = load i32, i32* %tab_offset.addr, align 4
  store i32 %55, i32* %prev_tab_offset, align 4
  %56 = bitcast %struct.composition_it* %cmp_it to i8*
  call void @llvm.memset.p0i8.i64(i8* %56, i8 0, i64 72, i32 8, i1 false)
  %id = getelementptr inbounds %struct.composition_it, %struct.composition_it* %cmp_it, i32 0, i32 1
  store i64 -1, i64* %id, align 8
  %57 = load i64, i64* %pos, align 8
  %58 = load i64, i64* %pos_byte, align 8
  %59 = load i64, i64* %to.addr, align 8
  %call84 = call i64 @builtin_lisp_symbol(i32 0)
  call void @composition_compute_stop_pos(%struct.composition_it* %cmp_it, i64 %57, i64 %58, i64 %59, i64 %call84)
  br label %while.body

while.body:                                       ; preds = %do.end, %if.end.346, %if.end.985
  br label %while.cond.85

while.cond.85:                                    ; preds = %if.end.147, %while.body
  %60 = load i64, i64* %pos, align 8
  %61 = load i64, i64* %next_boundary, align 8
  %cmp86 = icmp eq i64 %60, %61
  br i1 %cmp86, label %while.body.88, label %while.end

while.body.88:                                    ; preds = %while.cond.85
  %62 = load i64, i64* %pos, align 8
  store i64 %62, i64* %pos_here, align 8
  %63 = load i64, i64* %vpos, align 8
  %64 = load i64, i64* %tovpos.addr, align 8
  %cmp89 = icmp sgt i64 %63, %64
  br i1 %cmp89, label %if.then.96, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body.88
  %65 = load i64, i64* %vpos, align 8
  %66 = load i64, i64* %tovpos.addr, align 8
  %cmp91 = icmp eq i64 %65, %66
  br i1 %cmp91, label %land.lhs.true.93, label %if.end.112

land.lhs.true.93:                                 ; preds = %lor.lhs.false
  %67 = load i64, i64* %hpos, align 8
  %68 = load i64, i64* %tohpos.addr, align 8
  %cmp94 = icmp sge i64 %67, %68
  br i1 %cmp94, label %if.then.96, label %if.end.112

if.then.96:                                       ; preds = %land.lhs.true.93, %while.body.88
  %69 = load i64, i64* %contin_hpos, align 8
  %tobool97 = icmp ne i64 %69, 0
  br i1 %tobool97, label %land.lhs.true.98, label %if.end.111

land.lhs.true.98:                                 ; preds = %if.then.96
  %70 = load i64, i64* %prev_hpos, align 8
  %cmp99 = icmp eq i64 %70, 0
  br i1 %cmp99, label %land.lhs.true.101, label %if.end.111

land.lhs.true.101:                                ; preds = %land.lhs.true.98
  %71 = load i64, i64* %hpos, align 8
  %72 = load i64, i64* %tohpos.addr, align 8
  %cmp102 = icmp sgt i64 %71, %72
  br i1 %cmp102, label %land.lhs.true.104, label %if.end.111

land.lhs.true.104:                                ; preds = %land.lhs.true.101
  %73 = load i64, i64* %contin_hpos, align 8
  %74 = load i64, i64* %width.addr, align 8
  %cmp105 = icmp eq i64 %73, %74
  br i1 %cmp105, label %if.then.110, label %lor.lhs.false.107

lor.lhs.false.107:                                ; preds = %land.lhs.true.104
  %75 = load i64, i64* %wide_column_end_hpos, align 8
  %76 = load i64, i64* %width.addr, align 8
  %cmp108 = icmp sgt i64 %75, %76
  br i1 %cmp108, label %if.then.110, label %if.end.111

if.then.110:                                      ; preds = %lor.lhs.false.107, %land.lhs.true.104
  %77 = load i64, i64* %prev_pos, align 8
  store i64 %77, i64* %pos, align 8
  %78 = load i64, i64* %prev_pos_byte, align 8
  store i64 %78, i64* %pos_byte, align 8
  %79 = load i64, i64* %prev_hpos, align 8
  store i64 %79, i64* %hpos, align 8
  %80 = load i64, i64* %prev_vpos, align 8
  store i64 %80, i64* %vpos, align 8
  %81 = load i32, i32* %prev_tab_offset, align 4
  store i32 %81, i32* %tab_offset.addr, align 4
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.110, %lor.lhs.false.107, %land.lhs.true.101, %land.lhs.true.98, %if.then.96
  br label %while.end

if.end.112:                                       ; preds = %land.lhs.true.93, %lor.lhs.false
  %82 = load i8, i8* %did_motion.addr, align 1
  %tobool113 = trunc i8 %82 to i1
  br i1 %tobool113, label %if.end.126, label %if.then.114

if.then.114:                                      ; preds = %if.end.112
  %83 = load i64, i64* %pos, align 8
  %84 = load %struct.window*, %struct.window** %win.addr, align 8
  %call115 = call i64 @overlay_strings(i64 %83, %struct.window* %84, i8** %ovstr)
  store i64 %call115, i64* %ovlen, align 8
  %85 = load i8, i8* %multibyte, align 1
  %tobool116 = trunc i8 %85 to i1
  br i1 %tobool116, label %land.lhs.true.118, label %cond.false.123

land.lhs.true.118:                                ; preds = %if.then.114
  %86 = load i64, i64* %ovlen, align 8
  %cmp119 = icmp sgt i64 %86, 0
  br i1 %cmp119, label %cond.true.121, label %cond.false.123

cond.true.121:                                    ; preds = %land.lhs.true.118
  %87 = load i8*, i8** %ovstr, align 8
  %88 = load i64, i64* %ovlen, align 8
  %call122 = call i64 @strwidth(i8* %87, i64 %88)
  br label %cond.end.124

cond.false.123:                                   ; preds = %land.lhs.true.118, %if.then.114
  %89 = load i64, i64* %ovlen, align 8
  br label %cond.end.124

cond.end.124:                                     ; preds = %cond.false.123, %cond.true.121
  %cond125 = phi i64 [ %call122, %cond.true.121 ], [ %89, %cond.false.123 ]
  %90 = load i64, i64* %hpos, align 8
  %add = add nsw i64 %90, %cond125
  store i64 %add, i64* %hpos, align 8
  br label %if.end.126

if.end.126:                                       ; preds = %cond.end.124, %if.end.112
  store i8 0, i8* %did_motion.addr, align 1
  %91 = load i64, i64* %pos, align 8
  %92 = load i64, i64* %to.addr, align 8
  %cmp127 = icmp sge i64 %91, %92
  br i1 %cmp127, label %if.then.129, label %if.end.130

if.then.129:                                      ; preds = %if.end.126
  br label %while.end

if.end.130:                                       ; preds = %if.end.126
  %93 = load i64, i64* %pos, align 8
  %94 = load i64, i64* %to.addr, align 8
  %95 = load i64, i64* %window, align 8
  %call131 = call i64 @skip_invisible(i64 %93, i64* %next_boundary, i64 %94, i64 %95)
  store i64 %call131, i64* %newpos, align 8
  %96 = load i64, i64* %newpos, align 8
  %97 = load i64, i64* %to.addr, align 8
  %cmp132 = icmp sge i64 %96, %97
  br i1 %cmp132, label %if.then.134, label %if.end.142

if.then.134:                                      ; preds = %if.end.130
  %98 = load i64, i64* %to.addr, align 8
  %99 = load i64, i64* %newpos, align 8
  %cmp135 = icmp slt i64 %98, %99
  br i1 %cmp135, label %cond.true.137, label %cond.false.138

cond.true.137:                                    ; preds = %if.then.134
  %100 = load i64, i64* %to.addr, align 8
  br label %cond.end.139

cond.false.138:                                   ; preds = %if.then.134
  %101 = load i64, i64* %newpos, align 8
  br label %cond.end.139

cond.end.139:                                     ; preds = %cond.false.138, %cond.true.137
  %cond140 = phi i64 [ %100, %cond.true.137 ], [ %101, %cond.false.138 ]
  store i64 %cond140, i64* %pos, align 8
  %102 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %103 = load i64, i64* %pos, align 8
  %call141 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %102, i64 %103)
  store i64 %call141, i64* %pos_byte, align 8
  br label %after_loop

if.end.142:                                       ; preds = %if.end.130
  %104 = load i64, i64* %newpos, align 8
  %105 = load i64, i64* %pos_here, align 8
  %cmp143 = icmp ne i64 %104, %105
  br i1 %cmp143, label %if.then.145, label %if.end.147

if.then.145:                                      ; preds = %if.end.142
  %106 = load i64, i64* %newpos, align 8
  store i64 %106, i64* %pos, align 8
  %107 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %108 = load i64, i64* %pos, align 8
  %call146 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %107, i64 %108)
  store i64 %call146, i64* %pos_byte, align 8
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.145, %if.end.142
  br label %while.cond.85

while.end:                                        ; preds = %if.then.129, %if.end.111, %while.cond.85
  %109 = load i64, i64* %hpos, align 8
  %110 = load i64, i64* %width.addr, align 8
  %cmp148 = icmp sgt i64 %109, %110
  br i1 %cmp148, label %if.then.150, label %if.end.210

if.then.150:                                      ; preds = %while.end
  %111 = load i64, i64* %width.addr, align 8
  %112 = load i32, i32* %continuation_glyph_width, align 4
  %conv151 = sext i32 %112 to i64
  %add152 = add nsw i64 %111, %conv151
  store i64 %add152, i64* %total_width, align 8
  store i8 0, i8* %truncate, align 1
  %113 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 309), align 8
  %call153 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp154 = icmp eq i64 %113, %call153
  br i1 %cmp154, label %if.end.175, label %land.lhs.true.156

land.lhs.true.156:                                ; preds = %if.then.150
  %114 = load i64, i64* %total_width, align 8
  %115 = load %struct.window*, %struct.window** %win.addr, align 8
  %frame157 = getelementptr inbounds %struct.window, %struct.window* %115, i32 0, i32 1
  %116 = load i64, i64* %frame157, align 8
  %sub158 = sub nsw i64 %116, 5
  %117 = inttoptr i64 %sub158 to i8*
  %118 = bitcast i8* %117 to %struct.frame*
  %text_cols = getelementptr inbounds %struct.frame, %struct.frame* %118, i32 0, i32 36
  %119 = load i32, i32* %text_cols, align 4
  %conv159 = sext i32 %119 to i64
  %cmp160 = icmp slt i64 %114, %conv159
  br i1 %cmp160, label %if.then.162, label %if.end.175

if.then.162:                                      ; preds = %land.lhs.true.156
  %120 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 309), align 8
  %and163 = and i64 %120, 7
  %conv164 = trunc i64 %and163 to i32
  %and165 = and i32 %conv164, -5
  %cmp166 = icmp eq i32 %and165, 2
  br i1 %cmp166, label %if.then.168, label %if.else.173

if.then.168:                                      ; preds = %if.then.162
  %121 = load i64, i64* %total_width, align 8
  %122 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 309), align 8
  %shr169 = ashr i64 %122, 2
  %cmp170 = icmp slt i64 %121, %shr169
  %frombool172 = zext i1 %cmp170 to i8
  store i8 %frombool172, i8* %truncate, align 1
  br label %if.end.174

if.else.173:                                      ; preds = %if.then.162
  store i8 1, i8* %truncate, align 1
  br label %if.end.174

if.end.174:                                       ; preds = %if.else.173, %if.then.168
  br label %if.end.175

if.end.175:                                       ; preds = %if.end.174, %land.lhs.true.156, %if.then.150
  %123 = load i64, i64* %hscroll.addr, align 8
  %tobool176 = icmp ne i64 %123, 0
  br i1 %tobool176, label %if.then.184, label %lor.lhs.false.177

lor.lhs.false.177:                                ; preds = %if.end.175
  %124 = load i8, i8* %truncate, align 1
  %tobool178 = trunc i8 %124 to i1
  br i1 %tobool178, label %if.then.184, label %lor.lhs.false.180

lor.lhs.false.180:                                ; preds = %lor.lhs.false.177
  %125 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %truncate_lines_ = getelementptr inbounds %struct.buffer, %struct.buffer* %125, i32 0, i32 27
  %126 = load i64, i64* %truncate_lines_, align 8
  %call181 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp182 = icmp eq i64 %126, %call181
  br i1 %cmp182, label %if.else.195, label %if.then.184

if.then.184:                                      ; preds = %lor.lhs.false.180, %lor.lhs.false.177, %if.end.175
  %127 = load i64, i64* %pos, align 8
  %128 = load i64, i64* %to.addr, align 8
  %cmp185 = icmp sle i64 %127, %128
  br i1 %cmp185, label %if.then.187, label %if.end.194

if.then.187:                                      ; preds = %if.then.184
  %129 = load i64, i64* %pos, align 8
  %130 = load i64, i64* %to.addr, align 8
  %call188 = call i64 @find_before_next_newline(i64 %129, i64 %130, i64 1, i64* %pos_byte)
  store i64 %call188, i64* %pos, align 8
  %131 = load i64, i64* %width.addr, align 8
  store i64 %131, i64* %hpos, align 8
  %132 = load i64, i64* %pos, align 8
  %133 = load i64, i64* %next_boundary, align 8
  %cmp189 = icmp sge i64 %132, %133
  br i1 %cmp189, label %if.then.191, label %if.end.193

if.then.191:                                      ; preds = %if.then.187
  %134 = load i64, i64* %pos, align 8
  %add192 = add nsw i64 %134, 1
  store i64 %add192, i64* %next_boundary, align 8
  br label %if.end.193

if.end.193:                                       ; preds = %if.then.191, %if.then.187
  %135 = load i64, i64* %width.addr, align 8
  store i64 %135, i64* %prev_hpos, align 8
  %136 = load i64, i64* %vpos, align 8
  store i64 %136, i64* %prev_vpos, align 8
  %137 = load i32, i32* %tab_offset.addr, align 4
  store i32 %137, i32* %prev_tab_offset, align 4
  br label %if.end.194

if.end.194:                                       ; preds = %if.end.193, %if.then.184
  br label %if.end.209

if.else.195:                                      ; preds = %lor.lhs.false.180
  %138 = load i32, i32* %tab_offset.addr, align 4
  store i32 %138, i32* %prev_tab_offset, align 4
  %139 = load i64, i64* %wide_column_end_hpos, align 8
  %140 = load i64, i64* %width.addr, align 8
  %cmp196 = icmp sgt i64 %139, %140
  br i1 %cmp196, label %if.then.198, label %if.else.203

if.then.198:                                      ; preds = %if.else.195
  %141 = load i64, i64* %prev_hpos, align 8
  %142 = load i64, i64* %hpos, align 8
  %sub199 = sub nsw i64 %142, %141
  store i64 %sub199, i64* %hpos, align 8
  %143 = load i64, i64* %prev_hpos, align 8
  %144 = load i32, i32* %tab_offset.addr, align 4
  %conv200 = sext i32 %144 to i64
  %add201 = add nsw i64 %conv200, %143
  %conv202 = trunc i64 %add201 to i32
  store i32 %conv202, i32* %tab_offset.addr, align 4
  br label %if.end.208

if.else.203:                                      ; preds = %if.else.195
  %145 = load i64, i64* %width.addr, align 8
  %146 = load i32, i32* %tab_offset.addr, align 4
  %conv204 = sext i32 %146 to i64
  %add205 = add nsw i64 %conv204, %145
  %conv206 = trunc i64 %add205 to i32
  store i32 %conv206, i32* %tab_offset.addr, align 4
  %147 = load i64, i64* %width.addr, align 8
  %148 = load i64, i64* %hpos, align 8
  %sub207 = sub nsw i64 %148, %147
  store i64 %sub207, i64* %hpos, align 8
  br label %if.end.208

if.end.208:                                       ; preds = %if.else.203, %if.then.198
  %149 = load i64, i64* %vpos, align 8
  %inc = add nsw i64 %149, 1
  store i64 %inc, i64* %vpos, align 8
  %150 = load i64, i64* %prev_hpos, align 8
  store i64 %150, i64* %contin_hpos, align 8
  store i64 0, i64* %prev_hpos, align 8
  %151 = load i64, i64* %vpos, align 8
  store i64 %151, i64* %prev_vpos, align 8
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.208, %if.end.194
  br label %if.end.210

if.end.210:                                       ; preds = %if.end.209, %while.end
  %152 = load i64, i64* %pos, align 8
  %153 = load i64, i64* %to.addr, align 8
  %cmp211 = icmp sgt i64 %152, %153
  br i1 %cmp211, label %if.then.213, label %if.end.226

if.then.213:                                      ; preds = %if.end.210
  %154 = load i64, i64* %prev_pos, align 8
  store i64 %154, i64* %pos, align 8
  %155 = load i64, i64* %prev_pos_byte, align 8
  store i64 %155, i64* %pos_byte, align 8
  %156 = load i64, i64* %prev_hpos, align 8
  store i64 %156, i64* %hpos, align 8
  %157 = load i64, i64* %prev_vpos, align 8
  store i64 %157, i64* %vpos, align 8
  %158 = load i32, i32* %prev_tab_offset, align 4
  store i32 %158, i32* %tab_offset.addr, align 4
  %159 = load i64, i64* %contin_hpos, align 8
  %tobool214 = icmp ne i64 %159, 0
  br i1 %tobool214, label %land.lhs.true.215, label %if.end.225

land.lhs.true.215:                                ; preds = %if.then.213
  %160 = load i64, i64* %prev_hpos, align 8
  %cmp216 = icmp eq i64 %160, 0
  br i1 %cmp216, label %land.lhs.true.218, label %if.end.225

land.lhs.true.218:                                ; preds = %land.lhs.true.215
  %161 = load i64, i64* %contin_hpos, align 8
  %162 = load i64, i64* %width.addr, align 8
  %cmp219 = icmp slt i64 %161, %162
  br i1 %cmp219, label %land.lhs.true.221, label %if.end.225

land.lhs.true.221:                                ; preds = %land.lhs.true.218
  %163 = load i64, i64* %wide_column_end_hpos, align 8
  %tobool222 = icmp ne i64 %163, 0
  br i1 %tobool222, label %if.end.225, label %if.then.223

if.then.223:                                      ; preds = %land.lhs.true.221
  %164 = load i64, i64* %contin_hpos, align 8
  store i64 %164, i64* %hpos, align 8
  %165 = load i64, i64* %vpos, align 8
  %sub224 = sub nsw i64 %165, 1
  store i64 %sub224, i64* %vpos, align 8
  br label %if.end.225

if.end.225:                                       ; preds = %if.then.223, %land.lhs.true.221, %land.lhs.true.218, %land.lhs.true.215, %if.then.213
  br label %while.end.986

if.end.226:                                       ; preds = %if.end.210
  %166 = load i64, i64* %vpos, align 8
  %167 = load i64, i64* %tovpos.addr, align 8
  %cmp227 = icmp sgt i64 %166, %167
  br i1 %cmp227, label %if.then.235, label %lor.lhs.false.229

lor.lhs.false.229:                                ; preds = %if.end.226
  %168 = load i64, i64* %vpos, align 8
  %169 = load i64, i64* %tovpos.addr, align 8
  %cmp230 = icmp eq i64 %168, %169
  br i1 %cmp230, label %land.lhs.true.232, label %if.end.251

land.lhs.true.232:                                ; preds = %lor.lhs.false.229
  %170 = load i64, i64* %hpos, align 8
  %171 = load i64, i64* %tohpos.addr, align 8
  %cmp233 = icmp sge i64 %170, %171
  br i1 %cmp233, label %if.then.235, label %if.end.251

if.then.235:                                      ; preds = %land.lhs.true.232, %if.end.226
  %172 = load i64, i64* %contin_hpos, align 8
  %tobool236 = icmp ne i64 %172, 0
  br i1 %tobool236, label %land.lhs.true.237, label %if.end.250

land.lhs.true.237:                                ; preds = %if.then.235
  %173 = load i64, i64* %prev_hpos, align 8
  %cmp238 = icmp eq i64 %173, 0
  br i1 %cmp238, label %land.lhs.true.240, label %if.end.250

land.lhs.true.240:                                ; preds = %land.lhs.true.237
  %174 = load i64, i64* %hpos, align 8
  %175 = load i64, i64* %tohpos.addr, align 8
  %cmp241 = icmp sgt i64 %174, %175
  br i1 %cmp241, label %land.lhs.true.243, label %if.end.250

land.lhs.true.243:                                ; preds = %land.lhs.true.240
  %176 = load i64, i64* %contin_hpos, align 8
  %177 = load i64, i64* %width.addr, align 8
  %cmp244 = icmp eq i64 %176, %177
  br i1 %cmp244, label %if.then.249, label %lor.lhs.false.246

lor.lhs.false.246:                                ; preds = %land.lhs.true.243
  %178 = load i64, i64* %wide_column_end_hpos, align 8
  %179 = load i64, i64* %width.addr, align 8
  %cmp247 = icmp sgt i64 %178, %179
  br i1 %cmp247, label %if.then.249, label %if.end.250

if.then.249:                                      ; preds = %lor.lhs.false.246, %land.lhs.true.243
  %180 = load i64, i64* %prev_pos, align 8
  store i64 %180, i64* %pos, align 8
  %181 = load i64, i64* %prev_pos_byte, align 8
  store i64 %181, i64* %pos_byte, align 8
  %182 = load i64, i64* %prev_hpos, align 8
  store i64 %182, i64* %hpos, align 8
  %183 = load i64, i64* %prev_vpos, align 8
  store i64 %183, i64* %vpos, align 8
  %184 = load i32, i32* %prev_tab_offset, align 4
  store i32 %184, i32* %tab_offset.addr, align 4
  br label %if.end.250

if.end.250:                                       ; preds = %if.then.249, %lor.lhs.false.246, %land.lhs.true.240, %land.lhs.true.237, %if.then.235
  br label %while.end.986

if.end.251:                                       ; preds = %land.lhs.true.232, %lor.lhs.false.229
  %185 = load i64, i64* %pos, align 8
  %186 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %186, i32 0, i32 79
  %187 = load i64, i64* %zv, align 8
  %cmp252 = icmp eq i64 %185, %187
  br i1 %cmp252, label %if.then.254, label %if.end.255

if.then.254:                                      ; preds = %if.end.251
  br label %while.end.986

if.end.255:                                       ; preds = %if.end.251
  %188 = load i64, i64* %hpos, align 8
  store i64 %188, i64* %prev_hpos, align 8
  %189 = load i64, i64* %vpos, align 8
  store i64 %189, i64* %prev_vpos, align 8
  %190 = load i64, i64* %pos, align 8
  store i64 %190, i64* %prev_pos, align 8
  %191 = load i64, i64* %pos_byte, align 8
  store i64 %191, i64* %prev_pos_byte, align 8
  store i64 0, i64* %wide_column_end_hpos, align 8
  %192 = load %struct.region_cache*, %struct.region_cache** %width_cache, align 8
  %tobool256 = icmp ne %struct.region_cache* %192, null
  br i1 %tobool256, label %land.lhs.true.257, label %if.else.311

land.lhs.true.257:                                ; preds = %if.end.255
  %193 = load i64, i64* %pos, align 8
  %194 = load i64, i64* %next_width_run, align 8
  %cmp258 = icmp sge i64 %193, %194
  br i1 %cmp258, label %if.then.260, label %if.else.311

if.then.260:                                      ; preds = %land.lhs.true.257
  %195 = load %struct.buffer*, %struct.buffer** %cache_buffer, align 8
  %196 = load %struct.region_cache*, %struct.region_cache** %width_cache, align 8
  %197 = load i64, i64* %pos, align 8
  %call261 = call i32 @region_cache_forward(%struct.buffer* %195, %struct.region_cache* %196, i64 %197, i64* %run_end)
  store i32 %call261, i32* %common_width, align 4
  %198 = load i32, i32* %common_width, align 4
  %cmp262 = icmp ne i32 %198, 0
  br i1 %cmp262, label %if.then.264, label %if.end.309

if.then.264:                                      ; preds = %if.then.260
  %199 = load i64, i64* %run_end, align 8
  %200 = load i64, i64* %to.addr, align 8
  %cmp265 = icmp sgt i64 %199, %200
  br i1 %cmp265, label %if.then.267, label %if.end.268

if.then.267:                                      ; preds = %if.then.264
  %201 = load i64, i64* %to.addr, align 8
  store i64 %201, i64* %run_end, align 8
  br label %if.end.268

if.end.268:                                       ; preds = %if.then.267, %if.then.264
  %202 = load i64, i64* %hpos, align 8
  %203 = load i64, i64* %run_end, align 8
  %204 = load i64, i64* %pos, align 8
  %sub269 = sub nsw i64 %203, %204
  %205 = load i32, i32* %common_width, align 4
  %conv270 = sext i32 %205 to i64
  %mul = mul nsw i64 %sub269, %conv270
  %add271 = add nsw i64 %202, %mul
  store i64 %add271, i64* %run_end_hpos, align 8
  %206 = load i64, i64* %vpos, align 8
  %207 = load i64, i64* %tovpos.addr, align 8
  %cmp272 = icmp eq i64 %206, %207
  br i1 %cmp272, label %land.lhs.true.274, label %if.end.285

land.lhs.true.274:                                ; preds = %if.end.268
  %208 = load i64, i64* %run_end_hpos, align 8
  %209 = load i64, i64* %tohpos.addr, align 8
  %cmp275 = icmp sgt i64 %208, %209
  br i1 %cmp275, label %if.then.277, label %if.end.285

if.then.277:                                      ; preds = %land.lhs.true.274
  %210 = load i64, i64* %pos, align 8
  %211 = load i64, i64* %tohpos.addr, align 8
  %212 = load i64, i64* %hpos, align 8
  %sub278 = sub nsw i64 %211, %212
  %213 = load i32, i32* %common_width, align 4
  %conv279 = sext i32 %213 to i64
  %div = sdiv i64 %sub278, %conv279
  %add280 = add nsw i64 %210, %div
  store i64 %add280, i64* %run_end, align 8
  %214 = load i64, i64* %hpos, align 8
  %215 = load i64, i64* %run_end, align 8
  %216 = load i64, i64* %pos, align 8
  %sub281 = sub nsw i64 %215, %216
  %217 = load i32, i32* %common_width, align 4
  %conv282 = sext i32 %217 to i64
  %mul283 = mul nsw i64 %sub281, %conv282
  %add284 = add nsw i64 %214, %mul283
  store i64 %add284, i64* %run_end_hpos, align 8
  br label %if.end.285

if.end.285:                                       ; preds = %if.then.277, %land.lhs.true.274, %if.end.268
  %218 = load i64, i64* %run_end_hpos, align 8
  %219 = load i64, i64* %width.addr, align 8
  %cmp286 = icmp sge i64 %218, %219
  br i1 %cmp286, label %if.then.288, label %if.end.297

if.then.288:                                      ; preds = %if.end.285
  %220 = load i64, i64* %pos, align 8
  %221 = load i64, i64* %width.addr, align 8
  %222 = load i64, i64* %hpos, align 8
  %sub289 = sub nsw i64 %221, %222
  %223 = load i32, i32* %common_width, align 4
  %conv290 = sext i32 %223 to i64
  %div291 = sdiv i64 %sub289, %conv290
  %add292 = add nsw i64 %220, %div291
  store i64 %add292, i64* %run_end, align 8
  %224 = load i64, i64* %hpos, align 8
  %225 = load i64, i64* %run_end, align 8
  %226 = load i64, i64* %pos, align 8
  %sub293 = sub nsw i64 %225, %226
  %227 = load i32, i32* %common_width, align 4
  %conv294 = sext i32 %227 to i64
  %mul295 = mul nsw i64 %sub293, %conv294
  %add296 = add nsw i64 %224, %mul295
  store i64 %add296, i64* %run_end_hpos, align 8
  br label %if.end.297

if.end.297:                                       ; preds = %if.then.288, %if.end.285
  %228 = load i64, i64* %run_end_hpos, align 8
  store i64 %228, i64* %hpos, align 8
  %229 = load i64, i64* %run_end, align 8
  %230 = load i64, i64* %pos, align 8
  %cmp298 = icmp sgt i64 %229, %230
  br i1 %cmp298, label %if.then.300, label %if.end.303

if.then.300:                                      ; preds = %if.end.297
  %231 = load i64, i64* %hpos, align 8
  %232 = load i32, i32* %common_width, align 4
  %conv301 = sext i32 %232 to i64
  %sub302 = sub nsw i64 %231, %conv301
  store i64 %sub302, i64* %prev_hpos, align 8
  br label %if.end.303

if.end.303:                                       ; preds = %if.then.300, %if.end.297
  %233 = load i64, i64* %pos, align 8
  %234 = load i64, i64* %run_end, align 8
  %cmp304 = icmp ne i64 %233, %234
  br i1 %cmp304, label %if.then.306, label %if.end.308

if.then.306:                                      ; preds = %if.end.303
  %235 = load i64, i64* %run_end, align 8
  store i64 %235, i64* %pos, align 8
  %236 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %237 = load i64, i64* %pos, align 8
  %call307 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %236, i64 %237)
  store i64 %call307, i64* %pos_byte, align 8
  br label %if.end.308

if.end.308:                                       ; preds = %if.then.306, %if.end.303
  br label %if.end.309

if.end.309:                                       ; preds = %if.end.308, %if.then.260
  %238 = load i64, i64* %run_end, align 8
  %add310 = add nsw i64 %238, 1
  store i64 %add310, i64* %next_width_run, align 8
  br label %if.end.985

if.else.311:                                      ; preds = %land.lhs.true.257, %if.end.255
  %id312 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %cmp_it, i32 0, i32 1
  %239 = load i64, i64* %id312, align 8
  %cmp313 = icmp sge i64 %239, 0
  br i1 %cmp313, label %if.then.322, label %lor.lhs.false.315

lor.lhs.false.315:                                ; preds = %if.else.311
  %240 = load i64, i64* %pos, align 8
  %stop_pos = getelementptr inbounds %struct.composition_it, %struct.composition_it* %cmp_it, i32 0, i32 0
  %241 = load i64, i64* %stop_pos, align 8
  %cmp316 = icmp eq i64 %240, %241
  br i1 %cmp316, label %land.lhs.true.318, label %if.end.325

land.lhs.true.318:                                ; preds = %lor.lhs.false.315
  %242 = load i64, i64* %pos, align 8
  %243 = load i64, i64* %pos_byte, align 8
  %244 = load i64, i64* %to.addr, align 8
  %245 = load %struct.window*, %struct.window** %win.addr, align 8
  %call319 = call i64 @builtin_lisp_symbol(i32 0)
  %call320 = call zeroext i1 @composition_reseat_it(%struct.composition_it* %cmp_it, i64 %242, i64 %243, i64 %244, %struct.window* %245, %struct.face* null, i64 %call319)
  br i1 %call320, label %if.then.322, label %if.end.325

if.then.322:                                      ; preds = %land.lhs.true.318, %if.else.311
  %246 = load i64, i64* %pos, align 8
  %247 = load i64, i64* %pos_byte, align 8
  %call323 = call i64 @builtin_lisp_symbol(i32 0)
  %call324 = call i32 @composition_update_it(%struct.composition_it* %cmp_it, i64 %246, i64 %247, i64 %call323)
  br label %if.end.325

if.end.325:                                       ; preds = %if.then.322, %land.lhs.true.318, %lor.lhs.false.315
  %id326 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %cmp_it, i32 0, i32 1
  %248 = load i64, i64* %id326, align 8
  %cmp327 = icmp sge i64 %248, 0
  br i1 %cmp327, label %if.then.329, label %if.end.347

if.then.329:                                      ; preds = %if.end.325
  %nchars = getelementptr inbounds %struct.composition_it, %struct.composition_it* %cmp_it, i32 0, i32 8
  %249 = load i32, i32* %nchars, align 4
  %conv330 = sext i32 %249 to i64
  %250 = load i64, i64* %pos, align 8
  %add331 = add nsw i64 %250, %conv330
  store i64 %add331, i64* %pos, align 8
  %nbytes = getelementptr inbounds %struct.composition_it, %struct.composition_it* %cmp_it, i32 0, i32 9
  %251 = load i32, i32* %nbytes, align 4
  %conv332 = sext i32 %251 to i64
  %252 = load i64, i64* %pos_byte, align 8
  %add333 = add nsw i64 %252, %conv332
  store i64 %add333, i64* %pos_byte, align 8
  %width334 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %cmp_it, i32 0, i32 12
  %253 = load i32, i32* %width334, align 4
  %conv335 = sext i32 %253 to i64
  %254 = load i64, i64* %hpos, align 8
  %add336 = add nsw i64 %254, %conv335
  store i64 %add336, i64* %hpos, align 8
  %to337 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %cmp_it, i32 0, i32 11
  %255 = load i32, i32* %to337, align 4
  %nglyphs = getelementptr inbounds %struct.composition_it, %struct.composition_it* %cmp_it, i32 0, i32 5
  %256 = load i32, i32* %nglyphs, align 4
  %cmp338 = icmp eq i32 %255, %256
  br i1 %cmp338, label %if.then.340, label %if.else.343

if.then.340:                                      ; preds = %if.then.329
  %id341 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %cmp_it, i32 0, i32 1
  store i64 -1, i64* %id341, align 8
  %257 = load i64, i64* %pos, align 8
  %258 = load i64, i64* %pos_byte, align 8
  %259 = load i64, i64* %to.addr, align 8
  %call342 = call i64 @builtin_lisp_symbol(i32 0)
  call void @composition_compute_stop_pos(%struct.composition_it* %cmp_it, i64 %257, i64 %258, i64 %259, i64 %call342)
  br label %if.end.346

if.else.343:                                      ; preds = %if.then.329
  %to344 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %cmp_it, i32 0, i32 11
  %260 = load i32, i32* %to344, align 4
  %from345 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %cmp_it, i32 0, i32 10
  store i32 %260, i32* %from345, align 4
  br label %if.end.346

if.end.346:                                       ; preds = %if.else.343, %if.then.340
  br label %while.body

if.end.347:                                       ; preds = %if.end.325
  %261 = load i64, i64* %pos_byte, align 8
  %262 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %262, i32 0, i32 73
  %263 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %gpt_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %263, i32 0, i32 3
  %264 = load i64, i64* %gpt_byte, align 8
  %cmp348 = icmp sge i64 %261, %264
  br i1 %cmp348, label %cond.true.350, label %cond.false.352

cond.true.350:                                    ; preds = %if.end.347
  %265 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text351 = getelementptr inbounds %struct.buffer, %struct.buffer* %265, i32 0, i32 73
  %266 = load %struct.buffer_text*, %struct.buffer_text** %text351, align 8
  %gap_size = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %266, i32 0, i32 5
  %267 = load i64, i64* %gap_size, align 8
  br label %cond.end.353

cond.false.352:                                   ; preds = %if.end.347
  br label %cond.end.353

cond.end.353:                                     ; preds = %cond.false.352, %cond.true.350
  %cond354 = phi i64 [ %267, %cond.true.350 ], [ 0, %cond.false.352 ]
  %268 = load i64, i64* %pos_byte, align 8
  %add355 = add nsw i64 %cond354, %268
  %269 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text356 = getelementptr inbounds %struct.buffer, %struct.buffer* %269, i32 0, i32 73
  %270 = load %struct.buffer_text*, %struct.buffer_text** %text356, align 8
  %beg = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %270, i32 0, i32 0
  %271 = load i8*, i8** %beg, align 8
  %add.ptr = getelementptr inbounds i8, i8* %271, i64 %add355
  %add.ptr357 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %272 = load i8, i8* %add.ptr357, align 1
  %conv358 = zext i8 %272 to i32
  store i32 %conv358, i32* %c, align 4
  %273 = load i64, i64* %pos, align 8
  %inc359 = add nsw i64 %273, 1
  store i64 %inc359, i64* %pos, align 8
  %274 = load i64, i64* %pos_byte, align 8
  %inc360 = add nsw i64 %274, 1
  store i64 %inc360, i64* %pos_byte, align 8
  %275 = load %struct.region_cache*, %struct.region_cache** %width_cache, align 8
  %tobool361 = icmp ne %struct.region_cache* %275, null
  br i1 %tobool361, label %if.then.362, label %if.end.385

if.then.362:                                      ; preds = %cond.end.353
  %276 = load i64, i64* %pos, align 8
  %sub363 = sub nsw i64 %276, 1
  %277 = load i64, i64* %width_run_end, align 8
  %cmp364 = icmp eq i64 %sub363, %277
  br i1 %cmp364, label %land.lhs.true.366, label %if.else.372

land.lhs.true.366:                                ; preds = %if.then.362
  %278 = load i32, i32* %c, align 4
  %idxprom = sext i32 %278 to i64
  %279 = load i64*, i64** %width_table, align 8
  %arrayidx367 = getelementptr inbounds i64, i64* %279, i64 %idxprom
  %280 = load i64, i64* %arrayidx367, align 8
  %shr368 = ashr i64 %280, 2
  %281 = load i64, i64* %width_run_width, align 8
  %cmp369 = icmp eq i64 %shr368, %281
  br i1 %cmp369, label %if.then.371, label %if.else.372

if.then.371:                                      ; preds = %land.lhs.true.366
  %282 = load i64, i64* %pos, align 8
  store i64 %282, i64* %width_run_end, align 8
  br label %if.end.384

if.else.372:                                      ; preds = %land.lhs.true.366, %if.then.362
  %283 = load i64, i64* %width_run_start, align 8
  %284 = load i64, i64* %width_run_end, align 8
  %cmp373 = icmp slt i64 %283, %284
  br i1 %cmp373, label %land.lhs.true.375, label %if.end.379

land.lhs.true.375:                                ; preds = %if.else.372
  %285 = load i64, i64* %width_run_width, align 8
  %cmp376 = icmp eq i64 %285, 1
  br i1 %cmp376, label %if.then.378, label %if.end.379

if.then.378:                                      ; preds = %land.lhs.true.375
  %286 = load %struct.buffer*, %struct.buffer** %cache_buffer, align 8
  %287 = load %struct.region_cache*, %struct.region_cache** %width_cache, align 8
  %288 = load i64, i64* %width_run_start, align 8
  %289 = load i64, i64* %width_run_end, align 8
  call void @know_region_cache(%struct.buffer* %286, %struct.region_cache* %287, i64 %288, i64 %289)
  br label %if.end.379

if.end.379:                                       ; preds = %if.then.378, %land.lhs.true.375, %if.else.372
  %290 = load i32, i32* %c, align 4
  %idxprom380 = sext i32 %290 to i64
  %291 = load i64*, i64** %width_table, align 8
  %arrayidx381 = getelementptr inbounds i64, i64* %291, i64 %idxprom380
  %292 = load i64, i64* %arrayidx381, align 8
  %shr382 = ashr i64 %292, 2
  store i64 %shr382, i64* %width_run_width, align 8
  %293 = load i64, i64* %pos, align 8
  %sub383 = sub nsw i64 %293, 1
  store i64 %sub383, i64* %width_run_start, align 8
  %294 = load i64, i64* %pos, align 8
  store i64 %294, i64* %width_run_end, align 8
  br label %if.end.384

if.end.384:                                       ; preds = %if.end.379, %if.then.371
  br label %if.end.385

if.end.385:                                       ; preds = %if.end.384, %cond.end.353
  %295 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %cmp386 = icmp ne %struct.Lisp_Char_Table* %295, null
  br i1 %cmp386, label %land.lhs.true.388, label %if.else.470

land.lhs.true.388:                                ; preds = %if.end.385
  %296 = load i8, i8* %multibyte, align 1
  %tobool389 = trunc i8 %296 to i1
  br i1 %tobool389, label %land.lhs.true.391, label %land.lhs.true.395

land.lhs.true.391:                                ; preds = %land.lhs.true.388
  %297 = load i32, i32* %c, align 4
  %and392 = and i32 %297, 192
  %cmp393 = icmp eq i32 %and392, 192
  br i1 %cmp393, label %if.else.470, label %land.lhs.true.395

land.lhs.true.395:                                ; preds = %land.lhs.true.391, %land.lhs.true.388
  br i1 true, label %cond.true.396, label %cond.false.400

cond.true.396:                                    ; preds = %land.lhs.true.395
  %298 = load i32, i32* %c, align 4
  %add397 = add i32 %298, 0
  %cmp398 = icmp ult i32 %add397, 128
  br i1 %cmp398, label %cond.true.405, label %cond.false.426

cond.false.400:                                   ; preds = %land.lhs.true.395
  %299 = load i32, i32* %c, align 4
  %conv401 = sext i32 %299 to i64
  %add402 = add i64 %conv401, 0
  %cmp403 = icmp ult i64 %add402, 128
  br i1 %cmp403, label %cond.true.405, label %cond.false.426

cond.true.405:                                    ; preds = %cond.false.400, %cond.true.396
  %300 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %ascii = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %300, i32 0, i32 4
  %301 = load i64, i64* %ascii, align 8
  %call406 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp407 = icmp eq i64 %301, %call406
  br i1 %cmp407, label %cond.true.409, label %cond.false.410

cond.true.409:                                    ; preds = %cond.true.405
  %302 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %defalt = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %302, i32 0, i32 1
  %303 = load i64, i64* %defalt, align 8
  br label %cond.end.424

cond.false.410:                                   ; preds = %cond.true.405
  %304 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %ascii411 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %304, i32 0, i32 4
  %305 = load i64, i64* %ascii411, align 8
  %call412 = call zeroext i1 @SUB_CHAR_TABLE_P(i64 %305)
  br i1 %call412, label %cond.true.414, label %cond.false.420

cond.true.414:                                    ; preds = %cond.false.410
  %306 = load i32, i32* %c, align 4
  %idxprom415 = sext i32 %306 to i64
  %307 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %ascii416 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %307, i32 0, i32 4
  %308 = load i64, i64* %ascii416, align 8
  %call417 = call %struct.Lisp_Sub_Char_Table* @XSUB_CHAR_TABLE(i64 %308)
  %contents418 = getelementptr inbounds %struct.Lisp_Sub_Char_Table, %struct.Lisp_Sub_Char_Table* %call417, i32 0, i32 3
  %arrayidx419 = getelementptr inbounds [0 x i64], [0 x i64]* %contents418, i32 0, i64 %idxprom415
  %309 = load i64, i64* %arrayidx419, align 8
  br label %cond.end.422

cond.false.420:                                   ; preds = %cond.false.410
  %310 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %ascii421 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %310, i32 0, i32 4
  %311 = load i64, i64* %ascii421, align 8
  br label %cond.end.422

cond.end.422:                                     ; preds = %cond.false.420, %cond.true.414
  %cond423 = phi i64 [ %309, %cond.true.414 ], [ %311, %cond.false.420 ]
  br label %cond.end.424

cond.end.424:                                     ; preds = %cond.end.422, %cond.true.409
  %cond425 = phi i64 [ %303, %cond.true.409 ], [ %cond423, %cond.end.422 ]
  br label %cond.end.428

cond.false.426:                                   ; preds = %cond.false.400, %cond.true.396
  %312 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %313 = load i32, i32* %c, align 4
  %call427 = call i64 @disp_char_vector(%struct.Lisp_Char_Table* %312, i32 %313)
  br label %cond.end.428

cond.end.428:                                     ; preds = %cond.false.426, %cond.end.424
  %cond429 = phi i64 [ %cond425, %cond.end.424 ], [ %call427, %cond.false.426 ]
  %call430 = call zeroext i1 @VECTORP(i64 %cond429)
  br i1 %call430, label %if.then.432, label %if.else.470

if.then.432:                                      ; preds = %cond.end.428
  br i1 true, label %cond.true.433, label %cond.false.437

cond.true.433:                                    ; preds = %if.then.432
  %314 = load i32, i32* %c, align 4
  %add434 = add i32 %314, 0
  %cmp435 = icmp ult i32 %add434, 128
  br i1 %cmp435, label %cond.true.442, label %cond.false.465

cond.false.437:                                   ; preds = %if.then.432
  %315 = load i32, i32* %c, align 4
  %conv438 = sext i32 %315 to i64
  %add439 = add i64 %conv438, 0
  %cmp440 = icmp ult i64 %add439, 128
  br i1 %cmp440, label %cond.true.442, label %cond.false.465

cond.true.442:                                    ; preds = %cond.false.437, %cond.true.433
  %316 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %ascii443 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %316, i32 0, i32 4
  %317 = load i64, i64* %ascii443, align 8
  %call444 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp445 = icmp eq i64 %317, %call444
  br i1 %cmp445, label %cond.true.447, label %cond.false.449

cond.true.447:                                    ; preds = %cond.true.442
  %318 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %defalt448 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %318, i32 0, i32 1
  %319 = load i64, i64* %defalt448, align 8
  br label %cond.end.463

cond.false.449:                                   ; preds = %cond.true.442
  %320 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %ascii450 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %320, i32 0, i32 4
  %321 = load i64, i64* %ascii450, align 8
  %call451 = call zeroext i1 @SUB_CHAR_TABLE_P(i64 %321)
  br i1 %call451, label %cond.true.453, label %cond.false.459

cond.true.453:                                    ; preds = %cond.false.449
  %322 = load i32, i32* %c, align 4
  %idxprom454 = sext i32 %322 to i64
  %323 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %ascii455 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %323, i32 0, i32 4
  %324 = load i64, i64* %ascii455, align 8
  %call456 = call %struct.Lisp_Sub_Char_Table* @XSUB_CHAR_TABLE(i64 %324)
  %contents457 = getelementptr inbounds %struct.Lisp_Sub_Char_Table, %struct.Lisp_Sub_Char_Table* %call456, i32 0, i32 3
  %arrayidx458 = getelementptr inbounds [0 x i64], [0 x i64]* %contents457, i32 0, i64 %idxprom454
  %325 = load i64, i64* %arrayidx458, align 8
  br label %cond.end.461

cond.false.459:                                   ; preds = %cond.false.449
  %326 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %ascii460 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %326, i32 0, i32 4
  %327 = load i64, i64* %ascii460, align 8
  br label %cond.end.461

cond.end.461:                                     ; preds = %cond.false.459, %cond.true.453
  %cond462 = phi i64 [ %325, %cond.true.453 ], [ %327, %cond.false.459 ]
  br label %cond.end.463

cond.end.463:                                     ; preds = %cond.end.461, %cond.true.447
  %cond464 = phi i64 [ %319, %cond.true.447 ], [ %cond462, %cond.end.461 ]
  br label %cond.end.467

cond.false.465:                                   ; preds = %cond.false.437, %cond.true.433
  %328 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %329 = load i32, i32* %c, align 4
  %call466 = call i64 @disp_char_vector(%struct.Lisp_Char_Table* %328, i32 %329)
  br label %cond.end.467

cond.end.467:                                     ; preds = %cond.false.465, %cond.end.463
  %cond468 = phi i64 [ %cond464, %cond.end.463 ], [ %call466, %cond.false.465 ]
  store i64 %cond468, i64* %charvec, align 8
  %330 = load i64, i64* %charvec, align 8
  %call469 = call i64 @ASIZE(i64 %330)
  store i64 %call469, i64* %n, align 8
  br label %if.end.472

if.else.470:                                      ; preds = %cond.end.428, %land.lhs.true.391, %if.end.385
  %call471 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call471, i64* %charvec, align 8
  store i64 1, i64* %n, align 8
  br label %if.end.472

if.end.472:                                       ; preds = %if.else.470, %cond.end.467
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.472
  %331 = load i64, i64* %i, align 8
  %332 = load i64, i64* %n, align 8
  %cmp473 = icmp slt i64 %331, %332
  br i1 %cmp473, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %333 = load i64, i64* %charvec, align 8
  %call475 = call zeroext i1 @VECTORP(i64 %333)
  br i1 %call475, label %if.then.476, label %if.end.484

if.then.476:                                      ; preds = %for.body
  %334 = load i64, i64* %charvec, align 8
  %335 = load i64, i64* %i, align 8
  %call478 = call i64 @AREF(i64 %334, i64 %335)
  store i64 %call478, i64* %entry477, align 8
  %336 = load i64, i64* %entry477, align 8
  %call479 = call zeroext i1 @GLYPH_CODE_P(i64 %336)
  br i1 %call479, label %if.then.480, label %if.else.482

if.then.480:                                      ; preds = %if.then.476
  %337 = load i64, i64* %entry477, align 8
  %call481 = call i32 @GLYPH_CODE_CHAR(i64 %337)
  store i32 %call481, i32* %c, align 4
  br label %if.end.483

if.else.482:                                      ; preds = %if.then.476
  store i32 32, i32* %c, align 4
  br label %if.end.483

if.end.483:                                       ; preds = %if.else.482, %if.then.480
  br label %if.end.484

if.end.484:                                       ; preds = %if.end.483, %for.body
  %338 = load i32, i32* %c, align 4
  %cmp485 = icmp sge i32 %338, 32
  br i1 %cmp485, label %land.lhs.true.487, label %if.else.492

land.lhs.true.487:                                ; preds = %if.end.484
  %339 = load i32, i32* %c, align 4
  %cmp488 = icmp slt i32 %339, 127
  br i1 %cmp488, label %if.then.490, label %if.else.492

if.then.490:                                      ; preds = %land.lhs.true.487
  %340 = load i64, i64* %hpos, align 8
  %inc491 = add nsw i64 %340, 1
  store i64 %inc491, i64* %hpos, align 8
  br label %if.end.983

if.else.492:                                      ; preds = %land.lhs.true.487, %if.end.484
  %341 = load i32, i32* %c, align 4
  %cmp493 = icmp eq i32 %341, 9
  br i1 %cmp493, label %if.then.495, label %if.else.513

if.then.495:                                      ; preds = %if.else.492
  %342 = load i64, i64* %hpos, align 8
  %343 = load i32, i32* %tab_offset.addr, align 4
  %conv496 = sext i32 %343 to i64
  %add497 = add nsw i64 %342, %conv496
  %344 = load i64, i64* %hscroll.addr, align 8
  %add498 = add nsw i64 %add497, %344
  %345 = load i64, i64* %hscroll.addr, align 8
  %cmp499 = icmp sgt i64 %345, 0
  %conv500 = zext i1 %cmp499 to i32
  %conv501 = sext i32 %conv500 to i64
  %sub502 = sub nsw i64 %add498, %conv501
  %346 = load i32, i32* %tab_width, align 4
  %conv503 = sext i32 %346 to i64
  %rem = srem i64 %sub502, %conv503
  %conv504 = trunc i64 %rem to i32
  store i32 %conv504, i32* %tem, align 4
  %347 = load i32, i32* %tem, align 4
  %cmp505 = icmp slt i32 %347, 0
  br i1 %cmp505, label %if.then.507, label %if.end.509

if.then.507:                                      ; preds = %if.then.495
  %348 = load i32, i32* %tab_width, align 4
  %349 = load i32, i32* %tem, align 4
  %add508 = add nsw i32 %349, %348
  store i32 %add508, i32* %tem, align 4
  br label %if.end.509

if.end.509:                                       ; preds = %if.then.507, %if.then.495
  %350 = load i32, i32* %tab_width, align 4
  %351 = load i32, i32* %tem, align 4
  %sub510 = sub nsw i32 %350, %351
  %conv511 = sext i32 %sub510 to i64
  %352 = load i64, i64* %hpos, align 8
  %add512 = add nsw i64 %352, %conv511
  store i64 %add512, i64* %hpos, align 8
  br label %if.end.982

if.else.513:                                      ; preds = %if.else.492
  %353 = load i32, i32* %c, align 4
  %cmp514 = icmp eq i32 %353, 10
  br i1 %cmp514, label %if.then.516, label %if.else.655

if.then.516:                                      ; preds = %if.else.513
  %354 = load i64, i64* %selective, align 8
  %cmp517 = icmp sgt i64 %354, 0
  br i1 %cmp517, label %land.lhs.true.519, label %if.else.645

land.lhs.true.519:                                ; preds = %if.then.516
  %355 = load i64, i64* %pos, align 8
  %356 = load i64, i64* %pos_byte, align 8
  %357 = load i64, i64* %selective, align 8
  %call520 = call zeroext i1 @indented_beyond_p(i64 %355, i64 %356, i64 %357)
  br i1 %call520, label %if.then.522, label %if.else.645

if.then.522:                                      ; preds = %land.lhs.true.519
  %358 = load i64, i64* %pos, align 8
  %359 = load i64, i64* %to.addr, align 8
  %cmp523 = icmp slt i64 %358, %359
  br i1 %cmp523, label %if.then.525, label %if.end.644

if.then.525:                                      ; preds = %if.then.522
  br label %do.body.526

do.body.526:                                      ; preds = %land.end, %if.then.525
  %360 = load i64, i64* %pos, align 8
  %361 = load i64, i64* %to.addr, align 8
  %call527 = call i64 @find_before_next_newline(i64 %360, i64 %361, i64 1, i64* %pos_byte)
  store i64 %call527, i64* %pos, align 8
  %362 = load i64, i64* %pos, align 8
  %363 = load i64, i64* %to.addr, align 8
  %cmp528 = icmp slt i64 %362, %363
  br i1 %cmp528, label %if.then.530, label %if.end.587

if.then.530:                                      ; preds = %do.body.526
  br label %do.body.531

do.body.531:                                      ; preds = %if.then.530
  %364 = load i64, i64* %pos, align 8
  %inc532 = add nsw i64 %364, 1
  store i64 %inc532, i64* %pos, align 8
  %365 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_533 = getelementptr inbounds %struct.buffer, %struct.buffer* %365, i32 0, i32 39
  %366 = load i64, i64* %enable_multibyte_characters_533, align 8
  %call534 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp535 = icmp eq i64 %366, %call534
  br i1 %cmp535, label %if.then.537, label %if.else.539

if.then.537:                                      ; preds = %do.body.531
  %367 = load i64, i64* %pos_byte, align 8
  %inc538 = add nsw i64 %367, 1
  store i64 %inc538, i64* %pos_byte, align 8
  br label %if.end.585

if.else.539:                                      ; preds = %do.body.531
  br label %do.body.540

do.body.540:                                      ; preds = %if.else.539
  %368 = load i64, i64* %pos_byte, align 8
  %369 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text541 = getelementptr inbounds %struct.buffer, %struct.buffer* %369, i32 0, i32 73
  %370 = load %struct.buffer_text*, %struct.buffer_text** %text541, align 8
  %gpt_byte542 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %370, i32 0, i32 3
  %371 = load i64, i64* %gpt_byte542, align 8
  %cmp543 = icmp sge i64 %368, %371
  br i1 %cmp543, label %cond.true.545, label %cond.false.548

cond.true.545:                                    ; preds = %do.body.540
  %372 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text546 = getelementptr inbounds %struct.buffer, %struct.buffer* %372, i32 0, i32 73
  %373 = load %struct.buffer_text*, %struct.buffer_text** %text546, align 8
  %gap_size547 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %373, i32 0, i32 5
  %374 = load i64, i64* %gap_size547, align 8
  br label %cond.end.549

cond.false.548:                                   ; preds = %do.body.540
  br label %cond.end.549

cond.end.549:                                     ; preds = %cond.false.548, %cond.true.545
  %cond550 = phi i64 [ %374, %cond.true.545 ], [ 0, %cond.false.548 ]
  %375 = load i64, i64* %pos_byte, align 8
  %add551 = add nsw i64 %cond550, %375
  %376 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text552 = getelementptr inbounds %struct.buffer, %struct.buffer* %376, i32 0, i32 73
  %377 = load %struct.buffer_text*, %struct.buffer_text** %text552, align 8
  %beg553 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %377, i32 0, i32 0
  %378 = load i8*, i8** %beg553, align 8
  %add.ptr554 = getelementptr inbounds i8, i8* %378, i64 %add551
  %add.ptr555 = getelementptr inbounds i8, i8* %add.ptr554, i64 -1
  store i8* %add.ptr555, i8** %chp, align 8
  %379 = load i8*, i8** %chp, align 8
  %380 = load i8, i8* %379, align 1
  %conv556 = zext i8 %380 to i32
  %and557 = and i32 %conv556, 128
  %tobool558 = icmp ne i32 %and557, 0
  br i1 %tobool558, label %cond.false.560, label %cond.true.559

cond.true.559:                                    ; preds = %cond.end.549
  br label %cond.end.580

cond.false.560:                                   ; preds = %cond.end.549
  %381 = load i8*, i8** %chp, align 8
  %382 = load i8, i8* %381, align 1
  %conv561 = zext i8 %382 to i32
  %and562 = and i32 %conv561, 32
  %tobool563 = icmp ne i32 %and562, 0
  br i1 %tobool563, label %cond.false.565, label %cond.true.564

cond.true.564:                                    ; preds = %cond.false.560
  br label %cond.end.578

cond.false.565:                                   ; preds = %cond.false.560
  %383 = load i8*, i8** %chp, align 8
  %384 = load i8, i8* %383, align 1
  %conv566 = zext i8 %384 to i32
  %and567 = and i32 %conv566, 16
  %tobool568 = icmp ne i32 %and567, 0
  br i1 %tobool568, label %cond.false.570, label %cond.true.569

cond.true.569:                                    ; preds = %cond.false.565
  br label %cond.end.576

cond.false.570:                                   ; preds = %cond.false.565
  %385 = load i8*, i8** %chp, align 8
  %386 = load i8, i8* %385, align 1
  %conv571 = zext i8 %386 to i32
  %and572 = and i32 %conv571, 8
  %tobool573 = icmp ne i32 %and572, 0
  %lnot574 = xor i1 %tobool573, true
  %cond575 = select i1 %lnot574, i32 4, i32 5
  br label %cond.end.576

cond.end.576:                                     ; preds = %cond.false.570, %cond.true.569
  %cond577 = phi i32 [ 3, %cond.true.569 ], [ %cond575, %cond.false.570 ]
  br label %cond.end.578

cond.end.578:                                     ; preds = %cond.end.576, %cond.true.564
  %cond579 = phi i32 [ 2, %cond.true.564 ], [ %cond577, %cond.end.576 ]
  br label %cond.end.580

cond.end.580:                                     ; preds = %cond.end.578, %cond.true.559
  %cond581 = phi i32 [ 1, %cond.true.559 ], [ %cond579, %cond.end.578 ]
  %conv582 = sext i32 %cond581 to i64
  %387 = load i64, i64* %pos_byte, align 8
  %add583 = add nsw i64 %387, %conv582
  store i64 %add583, i64* %pos_byte, align 8
  br label %do.end.584

do.end.584:                                       ; preds = %cond.end.580
  br label %if.end.585

if.end.585:                                       ; preds = %do.end.584, %if.then.537
  br label %do.end.586

do.end.586:                                       ; preds = %if.end.585
  br label %if.end.587

if.end.587:                                       ; preds = %do.end.586, %do.body.526
  br label %do.cond

do.cond:                                          ; preds = %if.end.587
  %388 = load i64, i64* %pos, align 8
  %389 = load i64, i64* %to.addr, align 8
  %cmp588 = icmp slt i64 %388, %389
  br i1 %cmp588, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %390 = load i64, i64* %pos, align 8
  %391 = load i64, i64* %pos_byte, align 8
  %392 = load i64, i64* %selective, align 8
  %call590 = call zeroext i1 @indented_beyond_p(i64 %390, i64 %391, i64 %392)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %393 = phi i1 [ false, %do.cond ], [ %call590, %land.rhs ]
  br i1 %393, label %do.body.526, label %do.end.592

do.end.592:                                       ; preds = %land.end
  %394 = load i64, i64* %selective_rlen, align 8
  %tobool593 = icmp ne i64 %394, 0
  br i1 %tobool593, label %if.then.594, label %if.end.600

if.then.594:                                      ; preds = %do.end.592
  %395 = load i64, i64* %selective_rlen, align 8
  %396 = load i64, i64* %hpos, align 8
  %add595 = add nsw i64 %396, %395
  store i64 %add595, i64* %hpos, align 8
  %397 = load i64, i64* %hpos, align 8
  %398 = load i64, i64* %width.addr, align 8
  %cmp596 = icmp sge i64 %397, %398
  br i1 %cmp596, label %if.then.598, label %if.end.599

if.then.598:                                      ; preds = %if.then.594
  %399 = load i64, i64* %width.addr, align 8
  store i64 %399, i64* %hpos, align 8
  br label %if.end.599

if.end.599:                                       ; preds = %if.then.598, %if.then.594
  br label %if.end.600

if.end.600:                                       ; preds = %if.end.599, %do.end.592
  br label %do.body.601

do.body.601:                                      ; preds = %if.end.600
  %400 = load i64, i64* %pos, align 8
  %dec = add nsw i64 %400, -1
  store i64 %dec, i64* %pos, align 8
  %401 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_602 = getelementptr inbounds %struct.buffer, %struct.buffer* %401, i32 0, i32 39
  %402 = load i64, i64* %enable_multibyte_characters_602, align 8
  %call603 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp604 = icmp eq i64 %402, %call603
  br i1 %cmp604, label %if.then.606, label %if.else.608

if.then.606:                                      ; preds = %do.body.601
  %403 = load i64, i64* %pos_byte, align 8
  %dec607 = add nsw i64 %403, -1
  store i64 %dec607, i64* %pos_byte, align 8
  br label %if.end.641

if.else.608:                                      ; preds = %do.body.601
  br label %do.body.609

do.body.609:                                      ; preds = %if.else.608
  %404 = load i64, i64* %pos_byte, align 8
  %dec611 = add nsw i64 %404, -1
  store i64 %dec611, i64* %pos_byte, align 8
  %405 = load i64, i64* %pos_byte, align 8
  %406 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text612 = getelementptr inbounds %struct.buffer, %struct.buffer* %406, i32 0, i32 73
  %407 = load %struct.buffer_text*, %struct.buffer_text** %text612, align 8
  %gpt_byte613 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %407, i32 0, i32 3
  %408 = load i64, i64* %gpt_byte613, align 8
  %cmp614 = icmp slt i64 %405, %408
  br i1 %cmp614, label %if.then.616, label %if.else.621

if.then.616:                                      ; preds = %do.body.609
  %409 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text617 = getelementptr inbounds %struct.buffer, %struct.buffer* %409, i32 0, i32 73
  %410 = load %struct.buffer_text*, %struct.buffer_text** %text617, align 8
  %beg618 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %410, i32 0, i32 0
  %411 = load i8*, i8** %beg618, align 8
  %412 = load i64, i64* %pos_byte, align 8
  %add.ptr619 = getelementptr inbounds i8, i8* %411, i64 %412
  %add.ptr620 = getelementptr inbounds i8, i8* %add.ptr619, i64 -1
  store i8* %add.ptr620, i8** %chp610, align 8
  br label %if.end.629

if.else.621:                                      ; preds = %do.body.609
  %413 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text622 = getelementptr inbounds %struct.buffer, %struct.buffer* %413, i32 0, i32 73
  %414 = load %struct.buffer_text*, %struct.buffer_text** %text622, align 8
  %beg623 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %414, i32 0, i32 0
  %415 = load i8*, i8** %beg623, align 8
  %416 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text624 = getelementptr inbounds %struct.buffer, %struct.buffer* %416, i32 0, i32 73
  %417 = load %struct.buffer_text*, %struct.buffer_text** %text624, align 8
  %gap_size625 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %417, i32 0, i32 5
  %418 = load i64, i64* %gap_size625, align 8
  %add.ptr626 = getelementptr inbounds i8, i8* %415, i64 %418
  %419 = load i64, i64* %pos_byte, align 8
  %add.ptr627 = getelementptr inbounds i8, i8* %add.ptr626, i64 %419
  %add.ptr628 = getelementptr inbounds i8, i8* %add.ptr627, i64 -1
  store i8* %add.ptr628, i8** %chp610, align 8
  br label %if.end.629

if.end.629:                                       ; preds = %if.else.621, %if.then.616
  br label %while.cond.630

while.cond.630:                                   ; preds = %while.body.636, %if.end.629
  %420 = load i8*, i8** %chp610, align 8
  %421 = load i8, i8* %420, align 1
  %conv631 = zext i8 %421 to i32
  %and632 = and i32 %conv631, 192
  %cmp633 = icmp ne i32 %and632, 128
  %lnot635 = xor i1 %cmp633, true
  br i1 %lnot635, label %while.body.636, label %while.end.638

while.body.636:                                   ; preds = %while.cond.630
  %422 = load i8*, i8** %chp610, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %422, i32 -1
  store i8* %incdec.ptr, i8** %chp610, align 8
  %423 = load i64, i64* %pos_byte, align 8
  %dec637 = add nsw i64 %423, -1
  store i64 %dec637, i64* %pos_byte, align 8
  br label %while.cond.630

while.end.638:                                    ; preds = %while.cond.630
  br label %do.end.640

do.end.640:                                       ; preds = %while.end.638
  br label %if.end.641

if.end.641:                                       ; preds = %do.end.640, %if.then.606
  br label %do.end.643

do.end.643:                                       ; preds = %if.end.641
  br label %if.end.644

if.end.644:                                       ; preds = %do.end.643, %if.then.522
  br label %if.end.654

if.else.645:                                      ; preds = %land.lhs.true.519, %if.then.516
  %424 = load i64, i64* %vpos, align 8
  %inc646 = add nsw i64 %424, 1
  store i64 %inc646, i64* %vpos, align 8
  store i64 0, i64* %hpos, align 8
  %425 = load i64, i64* %hscroll.addr, align 8
  %426 = load i64, i64* %hpos, align 8
  %sub647 = sub nsw i64 %426, %425
  store i64 %sub647, i64* %hpos, align 8
  %427 = load i64, i64* %hscroll.addr, align 8
  %cmp648 = icmp sgt i64 %427, 0
  br i1 %cmp648, label %if.then.650, label %if.end.653

if.then.650:                                      ; preds = %if.else.645
  %428 = load i32, i32* %continuation_glyph_width, align 4
  %conv651 = sext i32 %428 to i64
  %429 = load i64, i64* %hpos, align 8
  %add652 = add nsw i64 %429, %conv651
  store i64 %add652, i64* %hpos, align 8
  br label %if.end.653

if.end.653:                                       ; preds = %if.then.650, %if.else.645
  store i32 0, i32* %tab_offset.addr, align 4
  br label %if.end.654

if.end.654:                                       ; preds = %if.end.653, %if.end.644
  store i64 0, i64* %contin_hpos, align 8
  br label %if.end.981

if.else.655:                                      ; preds = %if.else.513
  %430 = load i32, i32* %c, align 4
  %cmp656 = icmp eq i32 %430, 13
  br i1 %cmp656, label %land.lhs.true.658, label %if.else.679

land.lhs.true.658:                                ; preds = %if.else.655
  %431 = load i64, i64* %selective, align 8
  %cmp659 = icmp slt i64 %431, 0
  br i1 %cmp659, label %if.then.661, label %if.else.679

if.then.661:                                      ; preds = %land.lhs.true.658
  %432 = load i64, i64* %pos, align 8
  %433 = load i64, i64* %to.addr, align 8
  %cmp662 = icmp slt i64 %432, %433
  br i1 %cmp662, label %if.then.664, label %if.end.666

if.then.664:                                      ; preds = %if.then.661
  %434 = load i64, i64* %pos, align 8
  %435 = load i64, i64* %to.addr, align 8
  %call665 = call i64 @find_before_next_newline(i64 %434, i64 %435, i64 1, i64* %pos_byte)
  store i64 %call665, i64* %pos, align 8
  br label %if.end.666

if.end.666:                                       ; preds = %if.then.664, %if.then.661
  %436 = load i64, i64* %pos, align 8
  %437 = load i64, i64* %next_boundary, align 8
  %cmp667 = icmp sgt i64 %436, %437
  br i1 %cmp667, label %if.then.669, label %if.end.670

if.then.669:                                      ; preds = %if.end.666
  %438 = load i64, i64* %pos, align 8
  store i64 %438, i64* %next_boundary, align 8
  br label %if.end.670

if.end.670:                                       ; preds = %if.then.669, %if.end.666
  %439 = load i64, i64* %selective_rlen, align 8
  %tobool671 = icmp ne i64 %439, 0
  br i1 %tobool671, label %if.then.672, label %if.end.678

if.then.672:                                      ; preds = %if.end.670
  %440 = load i64, i64* %selective_rlen, align 8
  %441 = load i64, i64* %hpos, align 8
  %add673 = add nsw i64 %441, %440
  store i64 %add673, i64* %hpos, align 8
  %442 = load i64, i64* %hpos, align 8
  %443 = load i64, i64* %width.addr, align 8
  %cmp674 = icmp sge i64 %442, %443
  br i1 %cmp674, label %if.then.676, label %if.end.677

if.then.676:                                      ; preds = %if.then.672
  %444 = load i64, i64* %width.addr, align 8
  store i64 %444, i64* %hpos, align 8
  br label %if.end.677

if.end.677:                                       ; preds = %if.then.676, %if.then.672
  br label %if.end.678

if.end.678:                                       ; preds = %if.end.677, %if.end.670
  br label %if.end.980

if.else.679:                                      ; preds = %land.lhs.true.658, %if.else.655
  %445 = load i8, i8* %multibyte, align 1
  %tobool680 = trunc i8 %445 to i1
  br i1 %tobool680, label %land.lhs.true.682, label %if.else.964

land.lhs.true.682:                                ; preds = %if.else.679
  %446 = load i32, i32* %c, align 4
  %and683 = and i32 %446, 192
  %cmp684 = icmp eq i32 %and683, 192
  br i1 %cmp684, label %if.then.686, label %if.else.964

if.then.686:                                      ; preds = %land.lhs.true.682
  %447 = load i64, i64* %pos_byte, align 8
  %dec687 = add nsw i64 %447, -1
  store i64 %dec687, i64* %pos_byte, align 8
  %448 = load i64, i64* %pos_byte, align 8
  %449 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text688 = getelementptr inbounds %struct.buffer, %struct.buffer* %449, i32 0, i32 73
  %450 = load %struct.buffer_text*, %struct.buffer_text** %text688, align 8
  %gpt_byte689 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %450, i32 0, i32 3
  %451 = load i64, i64* %gpt_byte689, align 8
  %cmp690 = icmp sge i64 %448, %451
  br i1 %cmp690, label %cond.true.692, label %cond.false.695

cond.true.692:                                    ; preds = %if.then.686
  %452 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text693 = getelementptr inbounds %struct.buffer, %struct.buffer* %452, i32 0, i32 73
  %453 = load %struct.buffer_text*, %struct.buffer_text** %text693, align 8
  %gap_size694 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %453, i32 0, i32 5
  %454 = load i64, i64* %gap_size694, align 8
  br label %cond.end.696

cond.false.695:                                   ; preds = %if.then.686
  br label %cond.end.696

cond.end.696:                                     ; preds = %cond.false.695, %cond.true.692
  %cond697 = phi i64 [ %454, %cond.true.692 ], [ 0, %cond.false.695 ]
  %455 = load i64, i64* %pos_byte, align 8
  %add698 = add nsw i64 %cond697, %455
  %456 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text699 = getelementptr inbounds %struct.buffer, %struct.buffer* %456, i32 0, i32 73
  %457 = load %struct.buffer_text*, %struct.buffer_text** %text699, align 8
  %beg700 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %457, i32 0, i32 0
  %458 = load i8*, i8** %beg700, align 8
  %add.ptr701 = getelementptr inbounds i8, i8* %458, i64 %add698
  %add.ptr702 = getelementptr inbounds i8, i8* %add.ptr701, i64 -1
  store i8* %add.ptr702, i8** %ptr, align 8
  br label %do.body.703

do.body.703:                                      ; preds = %cond.end.696
  %459 = load i8*, i8** %ptr, align 8
  %arrayidx704 = getelementptr inbounds i8, i8* %459, i64 0
  %460 = load i8, i8* %arrayidx704, align 1
  %conv705 = zext i8 %460 to i32
  %and706 = and i32 %conv705, 128
  %tobool707 = icmp ne i32 %and706, 0
  br i1 %tobool707, label %cond.false.711, label %cond.true.708

cond.true.708:                                    ; preds = %do.body.703
  store i32 1, i32* %mb_bytes, align 4
  %461 = load i8*, i8** %ptr, align 8
  %arrayidx709 = getelementptr inbounds i8, i8* %461, i64 0
  %462 = load i8, i8* %arrayidx709, align 1
  %conv710 = zext i8 %462 to i32
  br label %cond.end.754

cond.false.711:                                   ; preds = %do.body.703
  %463 = load i8*, i8** %ptr, align 8
  %arrayidx712 = getelementptr inbounds i8, i8* %463, i64 0
  %464 = load i8, i8* %arrayidx712, align 1
  %conv713 = zext i8 %464 to i32
  %and714 = and i32 %conv713, 32
  %tobool715 = icmp ne i32 %and714, 0
  br i1 %tobool715, label %cond.false.729, label %cond.true.716

cond.true.716:                                    ; preds = %cond.false.711
  store i32 2, i32* %mb_bytes, align 4
  %465 = load i8*, i8** %ptr, align 8
  %arrayidx717 = getelementptr inbounds i8, i8* %465, i64 0
  %466 = load i8, i8* %arrayidx717, align 1
  %conv718 = zext i8 %466 to i32
  %and719 = and i32 %conv718, 31
  %shl = shl i32 %and719, 6
  %467 = load i8*, i8** %ptr, align 8
  %arrayidx720 = getelementptr inbounds i8, i8* %467, i64 1
  %468 = load i8, i8* %arrayidx720, align 1
  %conv721 = zext i8 %468 to i32
  %and722 = and i32 %conv721, 63
  %or = or i32 %shl, %and722
  %469 = load i8*, i8** %ptr, align 8
  %arrayidx723 = getelementptr inbounds i8, i8* %469, i64 0
  %470 = load i8, i8* %arrayidx723, align 1
  %conv724 = zext i8 %470 to i32
  %cmp725 = icmp slt i32 %conv724, 194
  %cond727 = select i1 %cmp725, i32 4194176, i32 0
  %add728 = add nsw i32 %or, %cond727
  br label %cond.end.752

cond.false.729:                                   ; preds = %cond.false.711
  %471 = load i8*, i8** %ptr, align 8
  %arrayidx730 = getelementptr inbounds i8, i8* %471, i64 0
  %472 = load i8, i8* %arrayidx730, align 1
  %conv731 = zext i8 %472 to i32
  %and732 = and i32 %conv731, 16
  %tobool733 = icmp ne i32 %and732, 0
  br i1 %tobool733, label %cond.false.748, label %cond.true.734

cond.true.734:                                    ; preds = %cond.false.729
  store i32 3, i32* %mb_bytes, align 4
  %473 = load i8*, i8** %ptr, align 8
  %arrayidx735 = getelementptr inbounds i8, i8* %473, i64 0
  %474 = load i8, i8* %arrayidx735, align 1
  %conv736 = zext i8 %474 to i32
  %and737 = and i32 %conv736, 15
  %shl738 = shl i32 %and737, 12
  %475 = load i8*, i8** %ptr, align 8
  %arrayidx739 = getelementptr inbounds i8, i8* %475, i64 1
  %476 = load i8, i8* %arrayidx739, align 1
  %conv740 = zext i8 %476 to i32
  %and741 = and i32 %conv740, 63
  %shl742 = shl i32 %and741, 6
  %or743 = or i32 %shl738, %shl742
  %477 = load i8*, i8** %ptr, align 8
  %arrayidx744 = getelementptr inbounds i8, i8* %477, i64 2
  %478 = load i8, i8* %arrayidx744, align 1
  %conv745 = zext i8 %478 to i32
  %and746 = and i32 %conv745, 63
  %or747 = or i32 %or743, %and746
  br label %cond.end.750

cond.false.748:                                   ; preds = %cond.false.729
  %479 = load i8*, i8** %ptr, align 8
  %call749 = call i32 @string_char(i8* %479, i8** null, i32* %mb_bytes)
  br label %cond.end.750

cond.end.750:                                     ; preds = %cond.false.748, %cond.true.734
  %cond751 = phi i32 [ %or747, %cond.true.734 ], [ %call749, %cond.false.748 ]
  br label %cond.end.752

cond.end.752:                                     ; preds = %cond.end.750, %cond.true.716
  %cond753 = phi i32 [ %add728, %cond.true.716 ], [ %cond751, %cond.end.750 ]
  br label %cond.end.754

cond.end.754:                                     ; preds = %cond.end.752, %cond.true.708
  %cond755 = phi i32 [ %conv710, %cond.true.708 ], [ %cond753, %cond.end.752 ]
  store i32 %cond755, i32* %ch, align 4
  %480 = load i8*, i8** %ptr, align 8
  %481 = load i8, i8* %480, align 1
  %conv756 = zext i8 %481 to i32
  %and757 = and i32 %conv756, 128
  %tobool758 = icmp ne i32 %and757, 0
  br i1 %tobool758, label %cond.false.760, label %cond.true.759

cond.true.759:                                    ; preds = %cond.end.754
  br label %cond.end.780

cond.false.760:                                   ; preds = %cond.end.754
  %482 = load i8*, i8** %ptr, align 8
  %483 = load i8, i8* %482, align 1
  %conv761 = zext i8 %483 to i32
  %and762 = and i32 %conv761, 32
  %tobool763 = icmp ne i32 %and762, 0
  br i1 %tobool763, label %cond.false.765, label %cond.true.764

cond.true.764:                                    ; preds = %cond.false.760
  br label %cond.end.778

cond.false.765:                                   ; preds = %cond.false.760
  %484 = load i8*, i8** %ptr, align 8
  %485 = load i8, i8* %484, align 1
  %conv766 = zext i8 %485 to i32
  %and767 = and i32 %conv766, 16
  %tobool768 = icmp ne i32 %and767, 0
  br i1 %tobool768, label %cond.false.770, label %cond.true.769

cond.true.769:                                    ; preds = %cond.false.765
  br label %cond.end.776

cond.false.770:                                   ; preds = %cond.false.765
  %486 = load i8*, i8** %ptr, align 8
  %487 = load i8, i8* %486, align 1
  %conv771 = zext i8 %487 to i32
  %and772 = and i32 %conv771, 8
  %tobool773 = icmp ne i32 %and772, 0
  %lnot774 = xor i1 %tobool773, true
  %cond775 = select i1 %lnot774, i32 4, i32 5
  br label %cond.end.776

cond.end.776:                                     ; preds = %cond.false.770, %cond.true.769
  %cond777 = phi i32 [ 3, %cond.true.769 ], [ %cond775, %cond.false.770 ]
  br label %cond.end.778

cond.end.778:                                     ; preds = %cond.end.776, %cond.true.764
  %cond779 = phi i32 [ 2, %cond.true.764 ], [ %cond777, %cond.end.776 ]
  br label %cond.end.780

cond.end.780:                                     ; preds = %cond.end.778, %cond.true.759
  %cond781 = phi i32 [ 1, %cond.true.759 ], [ %cond779, %cond.end.778 ]
  %488 = load i32, i32* %mb_bytes, align 4
  %cmp782 = icmp ne i32 %cond781, %488
  br i1 %cmp782, label %if.then.784, label %if.else.786

if.then.784:                                      ; preds = %cond.end.780
  %489 = load i32, i32* %mb_bytes, align 4
  %mul785 = mul nsw i32 %489, 4
  store i32 %mul785, i32* %mb_width, align 4
  br label %if.end.922

if.else.786:                                      ; preds = %cond.end.780
  %490 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %cmp787 = icmp ne %struct.Lisp_Char_Table* %490, null
  br i1 %cmp787, label %land.lhs.true.789, label %if.else.867

land.lhs.true.789:                                ; preds = %if.else.786
  br i1 true, label %cond.true.790, label %cond.false.794

cond.true.790:                                    ; preds = %land.lhs.true.789
  %491 = load i32, i32* %ch, align 4
  %add791 = add i32 %491, 0
  %cmp792 = icmp ult i32 %add791, 128
  br i1 %cmp792, label %cond.true.799, label %cond.false.822

cond.false.794:                                   ; preds = %land.lhs.true.789
  %492 = load i32, i32* %ch, align 4
  %conv795 = sext i32 %492 to i64
  %add796 = add i64 %conv795, 0
  %cmp797 = icmp ult i64 %add796, 128
  br i1 %cmp797, label %cond.true.799, label %cond.false.822

cond.true.799:                                    ; preds = %cond.false.794, %cond.true.790
  %493 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %ascii800 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %493, i32 0, i32 4
  %494 = load i64, i64* %ascii800, align 8
  %call801 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp802 = icmp eq i64 %494, %call801
  br i1 %cmp802, label %cond.true.804, label %cond.false.806

cond.true.804:                                    ; preds = %cond.true.799
  %495 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %defalt805 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %495, i32 0, i32 1
  %496 = load i64, i64* %defalt805, align 8
  br label %cond.end.820

cond.false.806:                                   ; preds = %cond.true.799
  %497 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %ascii807 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %497, i32 0, i32 4
  %498 = load i64, i64* %ascii807, align 8
  %call808 = call zeroext i1 @SUB_CHAR_TABLE_P(i64 %498)
  br i1 %call808, label %cond.true.810, label %cond.false.816

cond.true.810:                                    ; preds = %cond.false.806
  %499 = load i32, i32* %ch, align 4
  %idxprom811 = sext i32 %499 to i64
  %500 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %ascii812 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %500, i32 0, i32 4
  %501 = load i64, i64* %ascii812, align 8
  %call813 = call %struct.Lisp_Sub_Char_Table* @XSUB_CHAR_TABLE(i64 %501)
  %contents814 = getelementptr inbounds %struct.Lisp_Sub_Char_Table, %struct.Lisp_Sub_Char_Table* %call813, i32 0, i32 3
  %arrayidx815 = getelementptr inbounds [0 x i64], [0 x i64]* %contents814, i32 0, i64 %idxprom811
  %502 = load i64, i64* %arrayidx815, align 8
  br label %cond.end.818

cond.false.816:                                   ; preds = %cond.false.806
  %503 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %ascii817 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %503, i32 0, i32 4
  %504 = load i64, i64* %ascii817, align 8
  br label %cond.end.818

cond.end.818:                                     ; preds = %cond.false.816, %cond.true.810
  %cond819 = phi i64 [ %502, %cond.true.810 ], [ %504, %cond.false.816 ]
  br label %cond.end.820

cond.end.820:                                     ; preds = %cond.end.818, %cond.true.804
  %cond821 = phi i64 [ %496, %cond.true.804 ], [ %cond819, %cond.end.818 ]
  br label %cond.end.824

cond.false.822:                                   ; preds = %cond.false.794, %cond.true.790
  %505 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %506 = load i32, i32* %ch, align 4
  %call823 = call i64 @disp_char_vector(%struct.Lisp_Char_Table* %505, i32 %506)
  br label %cond.end.824

cond.end.824:                                     ; preds = %cond.false.822, %cond.end.820
  %cond825 = phi i64 [ %cond821, %cond.end.820 ], [ %call823, %cond.false.822 ]
  %call826 = call zeroext i1 @VECTORP(i64 %cond825)
  br i1 %call826, label %if.then.828, label %if.else.867

if.then.828:                                      ; preds = %cond.end.824
  br i1 true, label %cond.true.829, label %cond.false.833

cond.true.829:                                    ; preds = %if.then.828
  %507 = load i32, i32* %ch, align 4
  %add830 = add i32 %507, 0
  %cmp831 = icmp ult i32 %add830, 128
  br i1 %cmp831, label %cond.true.838, label %cond.false.861

cond.false.833:                                   ; preds = %if.then.828
  %508 = load i32, i32* %ch, align 4
  %conv834 = sext i32 %508 to i64
  %add835 = add i64 %conv834, 0
  %cmp836 = icmp ult i64 %add835, 128
  br i1 %cmp836, label %cond.true.838, label %cond.false.861

cond.true.838:                                    ; preds = %cond.false.833, %cond.true.829
  %509 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %ascii839 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %509, i32 0, i32 4
  %510 = load i64, i64* %ascii839, align 8
  %call840 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp841 = icmp eq i64 %510, %call840
  br i1 %cmp841, label %cond.true.843, label %cond.false.845

cond.true.843:                                    ; preds = %cond.true.838
  %511 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %defalt844 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %511, i32 0, i32 1
  %512 = load i64, i64* %defalt844, align 8
  br label %cond.end.859

cond.false.845:                                   ; preds = %cond.true.838
  %513 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %ascii846 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %513, i32 0, i32 4
  %514 = load i64, i64* %ascii846, align 8
  %call847 = call zeroext i1 @SUB_CHAR_TABLE_P(i64 %514)
  br i1 %call847, label %cond.true.849, label %cond.false.855

cond.true.849:                                    ; preds = %cond.false.845
  %515 = load i32, i32* %ch, align 4
  %idxprom850 = sext i32 %515 to i64
  %516 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %ascii851 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %516, i32 0, i32 4
  %517 = load i64, i64* %ascii851, align 8
  %call852 = call %struct.Lisp_Sub_Char_Table* @XSUB_CHAR_TABLE(i64 %517)
  %contents853 = getelementptr inbounds %struct.Lisp_Sub_Char_Table, %struct.Lisp_Sub_Char_Table* %call852, i32 0, i32 3
  %arrayidx854 = getelementptr inbounds [0 x i64], [0 x i64]* %contents853, i32 0, i64 %idxprom850
  %518 = load i64, i64* %arrayidx854, align 8
  br label %cond.end.857

cond.false.855:                                   ; preds = %cond.false.845
  %519 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %ascii856 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %519, i32 0, i32 4
  %520 = load i64, i64* %ascii856, align 8
  br label %cond.end.857

cond.end.857:                                     ; preds = %cond.false.855, %cond.true.849
  %cond858 = phi i64 [ %518, %cond.true.849 ], [ %520, %cond.false.855 ]
  br label %cond.end.859

cond.end.859:                                     ; preds = %cond.end.857, %cond.true.843
  %cond860 = phi i64 [ %512, %cond.true.843 ], [ %cond858, %cond.end.857 ]
  br label %cond.end.863

cond.false.861:                                   ; preds = %cond.false.833, %cond.true.829
  %521 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %dp, align 8
  %522 = load i32, i32* %ch, align 4
  %call862 = call i64 @disp_char_vector(%struct.Lisp_Char_Table* %521, i32 %522)
  br label %cond.end.863

cond.end.863:                                     ; preds = %cond.false.861, %cond.end.859
  %cond864 = phi i64 [ %cond860, %cond.end.859 ], [ %call862, %cond.false.861 ]
  %call865 = call i64 @ASIZE(i64 %cond864)
  %call866 = call i32 @sanitize_char_width(i64 %call865)
  store i32 %call866, i32* %mb_width, align 4
  br label %if.end.921

if.else.867:                                      ; preds = %cond.end.824, %if.else.786
  br i1 true, label %cond.true.868, label %cond.false.872

cond.true.868:                                    ; preds = %if.else.867
  %523 = load i32, i32* %ch, align 4
  %add869 = add i32 %523, 0
  %cmp870 = icmp ult i32 %add869, 128
  br i1 %cmp870, label %cond.true.877, label %cond.false.915

cond.false.872:                                   ; preds = %if.else.867
  %524 = load i32, i32* %ch, align 4
  %conv873 = sext i32 %524 to i64
  %add874 = add i64 %conv873, 0
  %cmp875 = icmp ult i64 %add874, 128
  br i1 %cmp875, label %cond.true.877, label %cond.false.915

cond.true.877:                                    ; preds = %cond.false.872, %cond.true.868
  %525 = load i32, i32* %ch, align 4
  %cmp878 = icmp slt i32 %525, 32
  br i1 %cmp878, label %cond.true.880, label %cond.false.901

cond.true.880:                                    ; preds = %cond.true.877
  %526 = load i32, i32* %ch, align 4
  %cmp881 = icmp eq i32 %526, 9
  br i1 %cmp881, label %cond.true.883, label %cond.false.887

cond.true.883:                                    ; preds = %cond.true.880
  %527 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %tab_width_884 = getelementptr inbounds %struct.buffer, %struct.buffer* %527, i32 0, i32 19
  %528 = load i64, i64* %tab_width_884, align 8
  %shr885 = ashr i64 %528, 2
  %call886 = call i32 @sanitize_tab_width(i64 %shr885)
  br label %cond.end.899

cond.false.887:                                   ; preds = %cond.true.880
  %529 = load i32, i32* %ch, align 4
  %cmp888 = icmp eq i32 %529, 10
  br i1 %cmp888, label %cond.true.890, label %cond.false.891

cond.true.890:                                    ; preds = %cond.false.887
  br label %cond.end.897

cond.false.891:                                   ; preds = %cond.false.887
  %530 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %ctl_arrow_892 = getelementptr inbounds %struct.buffer, %struct.buffer* %530, i32 0, i32 29
  %531 = load i64, i64* %ctl_arrow_892, align 8
  %call893 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp894 = icmp eq i64 %531, %call893
  %cond896 = select i1 %cmp894, i32 4, i32 2
  br label %cond.end.897

cond.end.897:                                     ; preds = %cond.false.891, %cond.true.890
  %cond898 = phi i32 [ 0, %cond.true.890 ], [ %cond896, %cond.false.891 ]
  br label %cond.end.899

cond.end.899:                                     ; preds = %cond.end.897, %cond.true.883
  %cond900 = phi i32 [ %call886, %cond.true.883 ], [ %cond898, %cond.end.897 ]
  br label %cond.end.913

cond.false.901:                                   ; preds = %cond.true.877
  %532 = load i32, i32* %ch, align 4
  %cmp902 = icmp slt i32 %532, 127
  br i1 %cmp902, label %cond.true.904, label %cond.false.905

cond.true.904:                                    ; preds = %cond.false.901
  br label %cond.end.911

cond.false.905:                                   ; preds = %cond.false.901
  %533 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %ctl_arrow_906 = getelementptr inbounds %struct.buffer, %struct.buffer* %533, i32 0, i32 29
  %534 = load i64, i64* %ctl_arrow_906, align 8
  %call907 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp908 = icmp eq i64 %534, %call907
  %cond910 = select i1 %cmp908, i32 4, i32 2
  br label %cond.end.911

cond.end.911:                                     ; preds = %cond.false.905, %cond.true.904
  %cond912 = phi i32 [ 1, %cond.true.904 ], [ %cond910, %cond.false.905 ]
  br label %cond.end.913

cond.end.913:                                     ; preds = %cond.end.911, %cond.end.899
  %cond914 = phi i32 [ %cond900, %cond.end.899 ], [ %cond912, %cond.end.911 ]
  br label %cond.end.919

cond.false.915:                                   ; preds = %cond.false.872, %cond.true.868
  %535 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 28), align 8
  %536 = load i32, i32* %ch, align 4
  %call916 = call i64 @CHAR_TABLE_REF(i64 %535, i32 %536)
  %shr917 = ashr i64 %call916, 2
  %call918 = call i32 @sanitize_char_width(i64 %shr917)
  br label %cond.end.919

cond.end.919:                                     ; preds = %cond.false.915, %cond.end.913
  %cond920 = phi i32 [ %cond914, %cond.end.913 ], [ %call918, %cond.false.915 ]
  store i32 %cond920, i32* %mb_width, align 4
  br label %if.end.921

if.end.921:                                       ; preds = %cond.end.919, %cond.end.863
  br label %if.end.922

if.end.922:                                       ; preds = %if.end.921, %if.then.784
  br label %do.end.924

do.end.924:                                       ; preds = %if.end.922
  %537 = load i32, i32* %mb_bytes, align 4
  %conv925 = sext i32 %537 to i64
  %538 = load i64, i64* %pos_byte, align 8
  %add926 = add nsw i64 %538, %conv925
  store i64 %add926, i64* %pos_byte, align 8
  %539 = load i32, i32* %mb_width, align 4
  %cmp927 = icmp sgt i32 %539, 1
  br i1 %cmp927, label %land.lhs.true.929, label %if.end.961

land.lhs.true.929:                                ; preds = %do.end.924
  %540 = load i8*, i8** %ptr, align 8
  %541 = load i8, i8* %540, align 1
  %conv930 = zext i8 %541 to i32
  %and931 = and i32 %conv930, 128
  %tobool932 = icmp ne i32 %and931, 0
  br i1 %tobool932, label %cond.false.934, label %cond.true.933

cond.true.933:                                    ; preds = %land.lhs.true.929
  br label %cond.end.954

cond.false.934:                                   ; preds = %land.lhs.true.929
  %542 = load i8*, i8** %ptr, align 8
  %543 = load i8, i8* %542, align 1
  %conv935 = zext i8 %543 to i32
  %and936 = and i32 %conv935, 32
  %tobool937 = icmp ne i32 %and936, 0
  br i1 %tobool937, label %cond.false.939, label %cond.true.938

cond.true.938:                                    ; preds = %cond.false.934
  br label %cond.end.952

cond.false.939:                                   ; preds = %cond.false.934
  %544 = load i8*, i8** %ptr, align 8
  %545 = load i8, i8* %544, align 1
  %conv940 = zext i8 %545 to i32
  %and941 = and i32 %conv940, 16
  %tobool942 = icmp ne i32 %and941, 0
  br i1 %tobool942, label %cond.false.944, label %cond.true.943

cond.true.943:                                    ; preds = %cond.false.939
  br label %cond.end.950

cond.false.944:                                   ; preds = %cond.false.939
  %546 = load i8*, i8** %ptr, align 8
  %547 = load i8, i8* %546, align 1
  %conv945 = zext i8 %547 to i32
  %and946 = and i32 %conv945, 8
  %tobool947 = icmp ne i32 %and946, 0
  %lnot948 = xor i1 %tobool947, true
  %cond949 = select i1 %lnot948, i32 4, i32 5
  br label %cond.end.950

cond.end.950:                                     ; preds = %cond.false.944, %cond.true.943
  %cond951 = phi i32 [ 3, %cond.true.943 ], [ %cond949, %cond.false.944 ]
  br label %cond.end.952

cond.end.952:                                     ; preds = %cond.end.950, %cond.true.938
  %cond953 = phi i32 [ 2, %cond.true.938 ], [ %cond951, %cond.end.950 ]
  br label %cond.end.954

cond.end.954:                                     ; preds = %cond.end.952, %cond.true.933
  %cond955 = phi i32 [ 1, %cond.true.933 ], [ %cond953, %cond.end.952 ]
  %548 = load i32, i32* %mb_bytes, align 4
  %cmp956 = icmp eq i32 %cond955, %548
  br i1 %cmp956, label %if.then.958, label %if.end.961

if.then.958:                                      ; preds = %cond.end.954
  %549 = load i64, i64* %hpos, align 8
  %550 = load i32, i32* %mb_width, align 4
  %conv959 = sext i32 %550 to i64
  %add960 = add nsw i64 %549, %conv959
  store i64 %add960, i64* %wide_column_end_hpos, align 8
  br label %if.end.961

if.end.961:                                       ; preds = %if.then.958, %cond.end.954, %do.end.924
  %551 = load i32, i32* %mb_width, align 4
  %conv962 = sext i32 %551 to i64
  %552 = load i64, i64* %hpos, align 8
  %add963 = add nsw i64 %552, %conv962
  store i64 %add963, i64* %hpos, align 8
  br label %if.end.979

if.else.964:                                      ; preds = %land.lhs.true.682, %if.else.679
  %553 = load i64, i64* %charvec, align 8
  %call965 = call zeroext i1 @VECTORP(i64 %553)
  br i1 %call965, label %if.then.966, label %if.else.968

if.then.966:                                      ; preds = %if.else.964
  %554 = load i64, i64* %hpos, align 8
  %inc967 = add nsw i64 %554, 1
  store i64 %inc967, i64* %hpos, align 8
  br label %if.end.978

if.else.968:                                      ; preds = %if.else.964
  %555 = load i8, i8* %ctl_arrow, align 1
  %tobool969 = trunc i8 %555 to i1
  br i1 %tobool969, label %land.rhs.971, label %land.end.974

land.rhs.971:                                     ; preds = %if.else.968
  %556 = load i32, i32* %c, align 4
  %cmp972 = icmp slt i32 %556, 128
  br label %land.end.974

land.end.974:                                     ; preds = %land.rhs.971, %if.else.968
  %557 = phi i1 [ false, %if.else.968 ], [ %cmp972, %land.rhs.971 ]
  %cond975 = select i1 %557, i32 2, i32 4
  %conv976 = sext i32 %cond975 to i64
  %558 = load i64, i64* %hpos, align 8
  %add977 = add nsw i64 %558, %conv976
  store i64 %add977, i64* %hpos, align 8
  br label %if.end.978

if.end.978:                                       ; preds = %land.end.974, %if.then.966
  br label %if.end.979

if.end.979:                                       ; preds = %if.end.978, %if.end.961
  br label %if.end.980

if.end.980:                                       ; preds = %if.end.979, %if.end.678
  br label %if.end.981

if.end.981:                                       ; preds = %if.end.980, %if.end.654
  br label %if.end.982

if.end.982:                                       ; preds = %if.end.981, %if.end.509
  br label %if.end.983

if.end.983:                                       ; preds = %if.end.982, %if.then.490
  br label %for.inc

for.inc:                                          ; preds = %if.end.983
  %559 = load i64, i64* %i, align 8
  %inc984 = add nsw i64 %559, 1
  store i64 %inc984, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.985

if.end.985:                                       ; preds = %for.end, %if.end.309
  br label %while.body

while.end.986:                                    ; preds = %if.then.254, %if.end.250, %if.end.225
  br label %after_loop

after_loop:                                       ; preds = %while.end.986, %cond.end.139
  %560 = load %struct.region_cache*, %struct.region_cache** %width_cache, align 8
  %tobool987 = icmp ne %struct.region_cache* %560, null
  br i1 %tobool987, label %land.lhs.true.988, label %if.end.995

land.lhs.true.988:                                ; preds = %after_loop
  %561 = load i64, i64* %width_run_width, align 8
  %cmp989 = icmp eq i64 %561, 1
  br i1 %cmp989, label %land.lhs.true.991, label %if.end.995

land.lhs.true.991:                                ; preds = %land.lhs.true.988
  %562 = load i64, i64* %width_run_start, align 8
  %563 = load i64, i64* %width_run_end, align 8
  %cmp992 = icmp slt i64 %562, %563
  br i1 %cmp992, label %if.then.994, label %if.end.995

if.then.994:                                      ; preds = %land.lhs.true.991
  %564 = load %struct.buffer*, %struct.buffer** %cache_buffer, align 8
  %565 = load %struct.region_cache*, %struct.region_cache** %width_cache, align 8
  %566 = load i64, i64* %width_run_start, align 8
  %567 = load i64, i64* %width_run_end, align 8
  call void @know_region_cache(%struct.buffer* %564, %struct.region_cache* %565, i64 %566, i64 %567)
  br label %if.end.995

if.end.995:                                       ; preds = %if.then.994, %land.lhs.true.991, %land.lhs.true.988, %after_loop
  %568 = load i64, i64* %pos, align 8
  store i64 %568, i64* getelementptr inbounds (%struct.position, %struct.position* @val_compute_motion, i32 0, i32 0), align 8
  %569 = load i64, i64* %pos_byte, align 8
  store i64 %569, i64* getelementptr inbounds (%struct.position, %struct.position* @val_compute_motion, i32 0, i32 1), align 8
  %570 = load i64, i64* %hpos, align 8
  store i64 %570, i64* getelementptr inbounds (%struct.position, %struct.position* @val_compute_motion, i32 0, i32 2), align 8
  %571 = load i64, i64* %vpos, align 8
  store i64 %571, i64* getelementptr inbounds (%struct.position, %struct.position* @val_compute_motion, i32 0, i32 3), align 8
  %572 = load i64, i64* %contin_hpos, align 8
  %tobool996 = icmp ne i64 %572, 0
  br i1 %tobool996, label %land.lhs.true.997, label %if.else.1001

land.lhs.true.997:                                ; preds = %if.end.995
  %573 = load i64, i64* %prev_hpos, align 8
  %cmp998 = icmp eq i64 %573, 0
  br i1 %cmp998, label %if.then.1000, label %if.else.1001

if.then.1000:                                     ; preds = %land.lhs.true.997
  %574 = load i64, i64* %contin_hpos, align 8
  store i64 %574, i64* getelementptr inbounds (%struct.position, %struct.position* @val_compute_motion, i32 0, i32 4), align 8
  br label %if.end.1002

if.else.1001:                                     ; preds = %land.lhs.true.997, %if.end.995
  %575 = load i64, i64* %prev_hpos, align 8
  store i64 %575, i64* getelementptr inbounds (%struct.position, %struct.position* @val_compute_motion, i32 0, i32 4), align 8
  br label %if.end.1002

if.end.1002:                                      ; preds = %if.else.1001, %if.then.1000
  %576 = load i64, i64* %contin_hpos, align 8
  %tobool1003 = icmp ne i64 %576, 0
  br i1 %tobool1003, label %land.rhs.1004, label %land.end.1007

land.rhs.1004:                                    ; preds = %if.end.1002
  %577 = load i64, i64* %prev_hpos, align 8
  %cmp1005 = icmp eq i64 %577, 0
  br label %land.end.1007

land.end.1007:                                    ; preds = %land.rhs.1004, %if.end.1002
  %578 = phi i1 [ false, %if.end.1002 ], [ %cmp1005, %land.rhs.1004 ]
  %land.ext = zext i1 %578 to i32
  store i32 %land.ext, i32* getelementptr inbounds (%struct.position, %struct.position* @val_compute_motion, i32 0, i32 5), align 4
  store i8 0, i8* @immediate_quit, align 1
  ret %struct.position* @val_compute_motion
}

declare %struct.Lisp_Char_Table* @window_display_table(%struct.window*) #1

; Function Attrs: nounwind uwtable
define internal %struct.region_cache* @width_run_cache_on_off() #0 {
entry:
  %retval = alloca %struct.region_cache*, align 8
  %cache_buffer = alloca %struct.buffer*, align 8
  %indirect_p = alloca i8, align 1
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  store %struct.buffer* %0, %struct.buffer** %cache_buffer, align 8
  store i8 0, i8* %indirect_p, align 1
  %1 = load %struct.buffer*, %struct.buffer** %cache_buffer, align 8
  %base_buffer = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 81
  %2 = load %struct.buffer*, %struct.buffer** %base_buffer, align 8
  %tobool = icmp ne %struct.buffer* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.buffer*, %struct.buffer** %cache_buffer, align 8
  %base_buffer1 = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i32 0, i32 81
  %4 = load %struct.buffer*, %struct.buffer** %base_buffer1, align 8
  store %struct.buffer* %4, %struct.buffer** %cache_buffer, align 8
  store i8 1, i8* %indirect_p, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cache_long_scans_ = getelementptr inbounds %struct.buffer, %struct.buffer* %5, i32 0, i32 43
  %6 = load i64, i64* %cache_long_scans_, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %6, %call
  br i1 %cmp, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_ = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 39
  %8 = load i64, i64* %enable_multibyte_characters_, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp3 = icmp eq i64 %8, %call2
  br i1 %cmp3, label %if.else, label %if.then.4

if.then.4:                                        ; preds = %lor.lhs.false, %if.end
  %9 = load i8, i8* %indirect_p, align 1
  %tobool5 = trunc i8 %9 to i1
  br i1 %tobool5, label %lor.lhs.false.6, label %if.then.14

lor.lhs.false.6:                                  ; preds = %if.then.4
  %10 = load %struct.buffer*, %struct.buffer** %cache_buffer, align 8
  %cache_long_scans_7 = getelementptr inbounds %struct.buffer, %struct.buffer* %10, i32 0, i32 43
  %11 = load i64, i64* %cache_long_scans_7, align 8
  %call8 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp9 = icmp eq i64 %11, %call8
  br i1 %cmp9, label %if.then.14, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false.6
  %12 = load %struct.buffer*, %struct.buffer** %cache_buffer, align 8
  %enable_multibyte_characters_11 = getelementptr inbounds %struct.buffer, %struct.buffer* %12, i32 0, i32 39
  %13 = load i64, i64* %enable_multibyte_characters_11, align 8
  %call12 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp13 = icmp eq i64 %13, %call12
  br i1 %cmp13, label %if.end.21, label %if.then.14

if.then.14:                                       ; preds = %lor.lhs.false.10, %lor.lhs.false.6, %if.then.4
  %14 = load %struct.buffer*, %struct.buffer** %cache_buffer, align 8
  %width_run_cache = getelementptr inbounds %struct.buffer, %struct.buffer* %14, i32 0, i32 92
  %15 = load %struct.region_cache*, %struct.region_cache** %width_run_cache, align 8
  %tobool15 = icmp ne %struct.region_cache* %15, null
  br i1 %tobool15, label %if.then.16, label %if.end.20

if.then.16:                                       ; preds = %if.then.14
  %16 = load %struct.buffer*, %struct.buffer** %cache_buffer, align 8
  %width_run_cache17 = getelementptr inbounds %struct.buffer, %struct.buffer* %16, i32 0, i32 92
  %17 = load %struct.region_cache*, %struct.region_cache** %width_run_cache17, align 8
  call void @free_region_cache(%struct.region_cache* %17)
  %18 = load %struct.buffer*, %struct.buffer** %cache_buffer, align 8
  %width_run_cache18 = getelementptr inbounds %struct.buffer, %struct.buffer* %18, i32 0, i32 92
  store %struct.region_cache* null, %struct.region_cache** %width_run_cache18, align 8
  %19 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %call19 = call i64 @builtin_lisp_symbol(i32 0)
  call void @bset_width_table(%struct.buffer* %19, i64 %call19)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.16, %if.then.14
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %lor.lhs.false.10
  store %struct.region_cache* null, %struct.region_cache** %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %20 = load i8, i8* %indirect_p, align 1
  %tobool22 = trunc i8 %20 to i1
  br i1 %tobool22, label %lor.lhs.false.23, label %if.then.30

lor.lhs.false.23:                                 ; preds = %if.else
  %21 = load %struct.buffer*, %struct.buffer** %cache_buffer, align 8
  %cache_long_scans_24 = getelementptr inbounds %struct.buffer, %struct.buffer* %21, i32 0, i32 43
  %22 = load i64, i64* %cache_long_scans_24, align 8
  %call25 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp26 = icmp eq i64 %22, %call25
  br i1 %cmp26, label %if.end.38, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false.23
  %23 = load %struct.buffer*, %struct.buffer** %cache_buffer, align 8
  %enable_multibyte_characters_27 = getelementptr inbounds %struct.buffer, %struct.buffer* %23, i32 0, i32 39
  %24 = load i64, i64* %enable_multibyte_characters_27, align 8
  %call28 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp29 = icmp eq i64 %24, %call28
  br i1 %cmp29, label %if.then.30, label %if.end.38

if.then.30:                                       ; preds = %land.lhs.true, %if.else
  %25 = load %struct.buffer*, %struct.buffer** %cache_buffer, align 8
  %width_run_cache31 = getelementptr inbounds %struct.buffer, %struct.buffer* %25, i32 0, i32 92
  %26 = load %struct.region_cache*, %struct.region_cache** %width_run_cache31, align 8
  %cmp32 = icmp eq %struct.region_cache* %26, null
  br i1 %cmp32, label %if.then.33, label %if.end.37

if.then.33:                                       ; preds = %if.then.30
  %call34 = call %struct.region_cache* @new_region_cache()
  %27 = load %struct.buffer*, %struct.buffer** %cache_buffer, align 8
  %width_run_cache35 = getelementptr inbounds %struct.buffer, %struct.buffer* %27, i32 0, i32 92
  store %struct.region_cache* %call34, %struct.region_cache** %width_run_cache35, align 8
  %28 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %call36 = call %struct.Lisp_Char_Table* @buffer_display_table()
  call void @recompute_width_table(%struct.buffer* %28, %struct.Lisp_Char_Table* %call36)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.33, %if.then.30
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %land.lhs.true, %lor.lhs.false.23
  %29 = load %struct.buffer*, %struct.buffer** %cache_buffer, align 8
  %width_run_cache39 = getelementptr inbounds %struct.buffer, %struct.buffer* %29, i32 0, i32 92
  %30 = load %struct.region_cache*, %struct.region_cache** %width_run_cache39, align 8
  store %struct.region_cache* %30, %struct.region_cache** %retval
  br label %return

return:                                           ; preds = %if.end.38, %if.end.21
  %31 = load %struct.region_cache*, %struct.region_cache** %retval
  ret %struct.region_cache* %31
}

declare i32 @window_body_width(%struct.window*, i1 zeroext) #1

declare void @process_quit_flag() #1

declare void @process_pending_signals() #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

declare void @composition_compute_stop_pos(%struct.composition_it*, i64, i64, i64, i64) #1

declare i64 @overlay_strings(i64, %struct.window*, i8**) #1

declare i64 @strwidth(i8*, i64) #1

declare i64 @buf_charpos_to_bytepos(%struct.buffer*, i64) #1

declare i64 @find_before_next_newline(i64, i64, i64, i64*) #1

declare i32 @region_cache_forward(%struct.buffer*, %struct.region_cache*, i64, i64*) #1

declare zeroext i1 @composition_reseat_it(%struct.composition_it*, i64, i64, i64, %struct.window*, %struct.face*, i64) #1

declare i32 @composition_update_it(%struct.composition_it*, i64, i64, i64) #1

declare void @know_region_cache(%struct.buffer*, %struct.region_cache*, i64, i64) #1

declare i32 @string_char(i8*, i8**, i32*) #1

declare i32 @sanitize_char_width(i64) #1

declare i64 @CHAR_TABLE_REF(i64, i32) #1

; Function Attrs: nounwind uwtable
define i64 @Fcompute_motion(i64 %from, i64 %frompos, i64 %to, i64 %topos, i64 %width, i64 %offsets, i64 %window) #0 {
entry:
  %from.addr = alloca i64, align 8
  %frompos.addr = alloca i64, align 8
  %to.addr = alloca i64, align 8
  %topos.addr = alloca i64, align 8
  %width.addr = alloca i64, align 8
  %offsets.addr = alloca i64, align 8
  %window.addr = alloca i64, align 8
  %w = alloca %struct.window*, align 8
  %bufpos = alloca i64, align 8
  %hpos = alloca i64, align 8
  %vpos = alloca i64, align 8
  %prevhpos = alloca i64, align 8
  %pos = alloca %struct.position*, align 8
  %hscroll = alloca i64, align 8
  %tab_offset = alloca i32, align 4
  store i64 %from, i64* %from.addr, align 8
  store i64 %frompos, i64* %frompos.addr, align 8
  store i64 %to, i64* %to.addr, align 8
  store i64 %topos, i64* %topos.addr, align 8
  store i64 %width, i64* %width.addr, align 8
  store i64 %offsets, i64* %offsets.addr, align 8
  store i64 %window, i64* %window.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %from.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %1 = load i64, i64* %from.addr, align 8
  %call = call i32 @XMISCTYPE(i64 %1)
  %cmp2 = icmp eq i32 %call, 24236
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load i64, i64* %from.addr, align 8
  %call4 = call i64 @marker_position(i64 %2)
  %call5 = call i64 @make_natnum(i64 %call4)
  store i64 %call5, i64* %from.addr, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %do.body
  %3 = load i64, i64* %from.addr, align 8
  %and6 = and i64 %3, 7
  %conv7 = trunc i64 %and6 to i32
  %and8 = and i32 %conv7, -5
  %cmp9 = icmp eq i32 %and8, 2
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %call11 = call i64 @builtin_lisp_symbol(i32 558)
  %4 = load i64, i64* %from.addr, align 8
  %5 = call i64 @wrong_type_argument(i64 %call11, i64 %4) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %6, %cond.true
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %7 = load i64, i64* %frompos.addr, align 8
  call void @CHECK_CONS(i64 %7)
  %8 = load i64, i64* %frompos.addr, align 8
  call void @CHECK_NUMBER_CAR(i64 %8)
  %9 = load i64, i64* %frompos.addr, align 8
  call void @CHECK_NUMBER_CDR(i64 %9)
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %10 = load i64, i64* %to.addr, align 8
  %and13 = and i64 %10, 7
  %conv14 = trunc i64 %and13 to i32
  %cmp15 = icmp eq i32 %conv14, 1
  br i1 %cmp15, label %land.lhs.true.17, label %if.else.24

land.lhs.true.17:                                 ; preds = %do.body.12
  %11 = load i64, i64* %to.addr, align 8
  %call18 = call i32 @XMISCTYPE(i64 %11)
  %cmp19 = icmp eq i32 %call18, 24236
  br i1 %cmp19, label %if.then.21, label %if.else.24

if.then.21:                                       ; preds = %land.lhs.true.17
  %12 = load i64, i64* %to.addr, align 8
  %call22 = call i64 @marker_position(i64 %12)
  %call23 = call i64 @make_natnum(i64 %call22)
  store i64 %call23, i64* %to.addr, align 8
  br label %if.end.34

if.else.24:                                       ; preds = %land.lhs.true.17, %do.body.12
  %13 = load i64, i64* %to.addr, align 8
  %and25 = and i64 %13, 7
  %conv26 = trunc i64 %and25 to i32
  %and27 = and i32 %conv26, -5
  %cmp28 = icmp eq i32 %and27, 2
  br i1 %cmp28, label %cond.true.30, label %cond.false.31

cond.true.30:                                     ; preds = %if.else.24
  br label %cond.end.33

cond.false.31:                                    ; preds = %if.else.24
  %call32 = call i64 @builtin_lisp_symbol(i32 558)
  %14 = load i64, i64* %to.addr, align 8
  %15 = call i64 @wrong_type_argument(i64 %call32, i64 %14) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.33

cond.end.33:                                      ; preds = %16, %cond.true.30
  br label %if.end.34

if.end.34:                                        ; preds = %cond.end.33, %if.then.21
  br label %do.end.35

do.end.35:                                        ; preds = %if.end.34
  %17 = load i64, i64* %topos.addr, align 8
  %call36 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp37 = icmp eq i64 %17, %call36
  br i1 %cmp37, label %if.end.40, label %if.then.39

if.then.39:                                       ; preds = %do.end.35
  %18 = load i64, i64* %topos.addr, align 8
  call void @CHECK_CONS(i64 %18)
  %19 = load i64, i64* %topos.addr, align 8
  call void @CHECK_NUMBER_CAR(i64 %19)
  %20 = load i64, i64* %topos.addr, align 8
  call void @CHECK_NUMBER_CDR(i64 %20)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %do.end.35
  %21 = load i64, i64* %width.addr, align 8
  %call41 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp42 = icmp eq i64 %21, %call41
  br i1 %cmp42, label %if.end.54, label %if.then.44

if.then.44:                                       ; preds = %if.end.40
  %22 = load i64, i64* %width.addr, align 8
  %and45 = and i64 %22, 7
  %conv46 = trunc i64 %and45 to i32
  %and47 = and i32 %conv46, -5
  %cmp48 = icmp eq i32 %and47, 2
  br i1 %cmp48, label %cond.true.50, label %cond.false.51

cond.true.50:                                     ; preds = %if.then.44
  br label %cond.end.53

cond.false.51:                                    ; preds = %if.then.44
  %call52 = call i64 @builtin_lisp_symbol(i32 559)
  %23 = load i64, i64* %width.addr, align 8
  %24 = call i64 @wrong_type_argument(i64 %call52, i64 %23) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.53

cond.end.53:                                      ; preds = %25, %cond.true.50
  br label %if.end.54

if.end.54:                                        ; preds = %cond.end.53, %if.end.40
  %26 = load i64, i64* %offsets.addr, align 8
  %call55 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp56 = icmp eq i64 %26, %call55
  br i1 %cmp56, label %if.else.94, label %if.then.58

if.then.58:                                       ; preds = %if.end.54
  %27 = load i64, i64* %offsets.addr, align 8
  call void @CHECK_CONS(i64 %27)
  %28 = load i64, i64* %offsets.addr, align 8
  call void @CHECK_NUMBER_CAR(i64 %28)
  %29 = load i64, i64* %offsets.addr, align 8
  call void @CHECK_NUMBER_CDR(i64 %29)
  %30 = load i64, i64* %offsets.addr, align 8
  %sub = sub nsw i64 %30, 3
  %31 = inttoptr i64 %sub to i8*
  %32 = bitcast i8* %31 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %32, i32 0, i32 0
  %33 = load i64, i64* %car, align 8
  %shr = ashr i64 %33, 2
  %cmp59 = icmp sle i64 0, %shr
  br i1 %cmp59, label %land.lhs.true.61, label %if.then.79

land.lhs.true.61:                                 ; preds = %if.then.58
  %34 = load i64, i64* %offsets.addr, align 8
  %sub62 = sub nsw i64 %34, 3
  %35 = inttoptr i64 %sub62 to i8*
  %36 = bitcast i8* %35 to %struct.Lisp_Cons*
  %car63 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %36, i32 0, i32 0
  %37 = load i64, i64* %car63, align 8
  %shr64 = ashr i64 %37, 2
  %cmp65 = icmp sle i64 %shr64, 9223372036854775807
  br i1 %cmp65, label %land.lhs.true.67, label %if.then.79

land.lhs.true.67:                                 ; preds = %land.lhs.true.61
  %38 = load i64, i64* %offsets.addr, align 8
  %sub68 = sub nsw i64 %38, 3
  %39 = inttoptr i64 %sub68 to i8*
  %40 = bitcast i8* %39 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %40, i32 0, i32 1
  %cdr = bitcast %union.anon.10* %u to i64*
  %41 = load i64, i64* %cdr, align 8
  %shr69 = ashr i64 %41, 2
  %cmp70 = icmp sle i64 0, %shr69
  br i1 %cmp70, label %land.lhs.true.72, label %if.then.79

land.lhs.true.72:                                 ; preds = %land.lhs.true.67
  %42 = load i64, i64* %offsets.addr, align 8
  %sub73 = sub nsw i64 %42, 3
  %43 = inttoptr i64 %sub73 to i8*
  %44 = bitcast i8* %43 to %struct.Lisp_Cons*
  %u74 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %44, i32 0, i32 1
  %cdr75 = bitcast %union.anon.10* %u74 to i64*
  %45 = load i64, i64* %cdr75, align 8
  %shr76 = ashr i64 %45, 2
  %cmp77 = icmp sle i64 %shr76, 2147483647
  br i1 %cmp77, label %if.end.85, label %if.then.79

if.then.79:                                       ; preds = %land.lhs.true.72, %land.lhs.true.67, %land.lhs.true.61, %if.then.58
  %46 = load i64, i64* %offsets.addr, align 8
  %sub80 = sub nsw i64 %46, 3
  %47 = inttoptr i64 %sub80 to i8*
  %48 = bitcast i8* %47 to %struct.Lisp_Cons*
  %car81 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %48, i32 0, i32 0
  %49 = load i64, i64* %car81, align 8
  %50 = load i64, i64* %offsets.addr, align 8
  %sub82 = sub nsw i64 %50, 3
  %51 = inttoptr i64 %sub82 to i8*
  %52 = bitcast i8* %51 to %struct.Lisp_Cons*
  %u83 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %52, i32 0, i32 1
  %cdr84 = bitcast %union.anon.10* %u83 to i64*
  %53 = load i64, i64* %cdr84, align 8
  call void @args_out_of_range(i64 %49, i64 %53) #5
  unreachable

if.end.85:                                        ; preds = %land.lhs.true.72
  %54 = load i64, i64* %offsets.addr, align 8
  %sub86 = sub nsw i64 %54, 3
  %55 = inttoptr i64 %sub86 to i8*
  %56 = bitcast i8* %55 to %struct.Lisp_Cons*
  %car87 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %56, i32 0, i32 0
  %57 = load i64, i64* %car87, align 8
  %shr88 = ashr i64 %57, 2
  store i64 %shr88, i64* %hscroll, align 8
  %58 = load i64, i64* %offsets.addr, align 8
  %sub89 = sub nsw i64 %58, 3
  %59 = inttoptr i64 %sub89 to i8*
  %60 = bitcast i8* %59 to %struct.Lisp_Cons*
  %u90 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %60, i32 0, i32 1
  %cdr91 = bitcast %union.anon.10* %u90 to i64*
  %61 = load i64, i64* %cdr91, align 8
  %shr92 = ashr i64 %61, 2
  %conv93 = trunc i64 %shr92 to i32
  store i32 %conv93, i32* %tab_offset, align 4
  br label %if.end.95

if.else.94:                                       ; preds = %if.end.54
  store i32 0, i32* %tab_offset, align 4
  store i64 0, i64* %hscroll, align 8
  br label %if.end.95

if.end.95:                                        ; preds = %if.else.94, %if.end.85
  %62 = load i64, i64* %window.addr, align 8
  %call96 = call %struct.window* @decode_live_window(i64 %62)
  store %struct.window* %call96, %struct.window** %w, align 8
  %63 = load i64, i64* %from.addr, align 8
  %shr97 = ashr i64 %63, 2
  %64 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %64, i32 0, i32 77
  %65 = load i64, i64* %begv, align 8
  %cmp98 = icmp slt i64 %shr97, %65
  br i1 %cmp98, label %if.then.103, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.95
  %66 = load i64, i64* %from.addr, align 8
  %shr100 = ashr i64 %66, 2
  %67 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %67, i32 0, i32 79
  %68 = load i64, i64* %zv, align 8
  %cmp101 = icmp sgt i64 %shr100, %68
  br i1 %cmp101, label %if.then.103, label %if.end.108

if.then.103:                                      ; preds = %lor.lhs.false, %if.end.95
  %69 = load i64, i64* %from.addr, align 8
  %70 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv104 = getelementptr inbounds %struct.buffer, %struct.buffer* %70, i32 0, i32 77
  %71 = load i64, i64* %begv104, align 8
  %shl = shl i64 %71, 2
  %add = add i64 %shl, 2
  %72 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv105 = getelementptr inbounds %struct.buffer, %struct.buffer* %72, i32 0, i32 79
  %73 = load i64, i64* %zv105, align 8
  %shl106 = shl i64 %73, 2
  %add107 = add i64 %shl106, 2
  call void @args_out_of_range_3(i64 %69, i64 %add, i64 %add107) #5
  unreachable

if.end.108:                                       ; preds = %lor.lhs.false
  %74 = load i64, i64* %to.addr, align 8
  %shr109 = ashr i64 %74, 2
  %75 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv110 = getelementptr inbounds %struct.buffer, %struct.buffer* %75, i32 0, i32 77
  %76 = load i64, i64* %begv110, align 8
  %cmp111 = icmp slt i64 %shr109, %76
  br i1 %cmp111, label %if.then.118, label %lor.lhs.false.113

lor.lhs.false.113:                                ; preds = %if.end.108
  %77 = load i64, i64* %to.addr, align 8
  %shr114 = ashr i64 %77, 2
  %78 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv115 = getelementptr inbounds %struct.buffer, %struct.buffer* %78, i32 0, i32 79
  %79 = load i64, i64* %zv115, align 8
  %cmp116 = icmp sgt i64 %shr114, %79
  br i1 %cmp116, label %if.then.118, label %if.end.125

if.then.118:                                      ; preds = %lor.lhs.false.113, %if.end.108
  %80 = load i64, i64* %to.addr, align 8
  %81 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv119 = getelementptr inbounds %struct.buffer, %struct.buffer* %81, i32 0, i32 77
  %82 = load i64, i64* %begv119, align 8
  %shl120 = shl i64 %82, 2
  %add121 = add i64 %shl120, 2
  %83 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv122 = getelementptr inbounds %struct.buffer, %struct.buffer* %83, i32 0, i32 79
  %84 = load i64, i64* %zv122, align 8
  %shl123 = shl i64 %84, 2
  %add124 = add i64 %shl123, 2
  call void @args_out_of_range_3(i64 %80, i64 %add121, i64 %add124) #5
  unreachable

if.end.125:                                       ; preds = %lor.lhs.false.113
  %85 = load i64, i64* %from.addr, align 8
  %shr126 = ashr i64 %85, 2
  %86 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %87 = load i64, i64* %from.addr, align 8
  %shr127 = ashr i64 %87, 2
  %call128 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %86, i64 %shr127)
  %88 = load i64, i64* %frompos.addr, align 8
  %sub129 = sub nsw i64 %88, 3
  %89 = inttoptr i64 %sub129 to i8*
  %90 = bitcast i8* %89 to %struct.Lisp_Cons*
  %u130 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %90, i32 0, i32 1
  %cdr131 = bitcast %union.anon.10* %u130 to i64*
  %91 = load i64, i64* %cdr131, align 8
  %shr132 = ashr i64 %91, 2
  %92 = load i64, i64* %frompos.addr, align 8
  %sub133 = sub nsw i64 %92, 3
  %93 = inttoptr i64 %sub133 to i8*
  %94 = bitcast i8* %93 to %struct.Lisp_Cons*
  %car134 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %94, i32 0, i32 0
  %95 = load i64, i64* %car134, align 8
  %shr135 = ashr i64 %95, 2
  %96 = load i64, i64* %to.addr, align 8
  %shr136 = ashr i64 %96, 2
  %97 = load i64, i64* %topos.addr, align 8
  %call137 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp138 = icmp eq i64 %97, %call137
  br i1 %cmp138, label %cond.true.140, label %cond.false.143

cond.true.140:                                    ; preds = %if.end.125
  %98 = load %struct.window*, %struct.window** %w, align 8
  %call141 = call i32 @window_internal_height(%struct.window* %98)
  %conv142 = sext i32 %call141 to i64
  br label %cond.end.148

cond.false.143:                                   ; preds = %if.end.125
  %99 = load i64, i64* %topos.addr, align 8
  %sub144 = sub nsw i64 %99, 3
  %100 = inttoptr i64 %sub144 to i8*
  %101 = bitcast i8* %100 to %struct.Lisp_Cons*
  %u145 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %101, i32 0, i32 1
  %cdr146 = bitcast %union.anon.10* %u145 to i64*
  %102 = load i64, i64* %cdr146, align 8
  %shr147 = ashr i64 %102, 2
  br label %cond.end.148

cond.end.148:                                     ; preds = %cond.false.143, %cond.true.140
  %cond = phi i64 [ %conv142, %cond.true.140 ], [ %shr147, %cond.false.143 ]
  %103 = load i64, i64* %topos.addr, align 8
  %call149 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp150 = icmp eq i64 %103, %call149
  br i1 %cmp150, label %cond.true.152, label %cond.false.160

cond.true.152:                                    ; preds = %cond.end.148
  %104 = load %struct.window*, %struct.window** %w, align 8
  %call153 = call i32 @window_body_width(%struct.window* %104, i1 zeroext false)
  %105 = load %struct.window*, %struct.window** %w, align 8
  %frame = getelementptr inbounds %struct.window, %struct.window* %105, i32 0, i32 1
  %106 = load i64, i64* %frame, align 8
  %sub154 = sub nsw i64 %106, 5
  %107 = inttoptr i64 %sub154 to i8*
  %108 = bitcast i8* %107 to %struct.frame*
  %output_method = getelementptr inbounds %struct.frame, %struct.frame* %108, i32 0, i32 26
  %109 = bitcast i48* %output_method to i64*
  %bf.load = load i64, i64* %109, align 8
  %bf.lshr = lshr i64 %bf.load, 23
  %bf.clear = and i64 %bf.lshr, 7
  %bf.cast = trunc i64 %bf.clear to i32
  %cmp155 = icmp eq i32 %bf.cast, 2
  %cond157 = select i1 %cmp155, i32 0, i32 1
  %sub158 = sub nsw i32 %call153, %cond157
  %conv159 = sext i32 %sub158 to i64
  br label %cond.end.164

cond.false.160:                                   ; preds = %cond.end.148
  %110 = load i64, i64* %topos.addr, align 8
  %sub161 = sub nsw i64 %110, 3
  %111 = inttoptr i64 %sub161 to i8*
  %112 = bitcast i8* %111 to %struct.Lisp_Cons*
  %car162 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %112, i32 0, i32 0
  %113 = load i64, i64* %car162, align 8
  %shr163 = ashr i64 %113, 2
  br label %cond.end.164

cond.end.164:                                     ; preds = %cond.false.160, %cond.true.152
  %cond165 = phi i64 [ %conv159, %cond.true.152 ], [ %shr163, %cond.false.160 ]
  %114 = load i64, i64* %width.addr, align 8
  %call166 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp167 = icmp eq i64 %114, %call166
  br i1 %cmp167, label %cond.true.169, label %cond.false.170

cond.true.169:                                    ; preds = %cond.end.164
  br label %cond.end.172

cond.false.170:                                   ; preds = %cond.end.164
  %115 = load i64, i64* %width.addr, align 8
  %shr171 = ashr i64 %115, 2
  br label %cond.end.172

cond.end.172:                                     ; preds = %cond.false.170, %cond.true.169
  %cond173 = phi i64 [ -1, %cond.true.169 ], [ %shr171, %cond.false.170 ]
  %116 = load i64, i64* %hscroll, align 8
  %117 = load i32, i32* %tab_offset, align 4
  %118 = load %struct.window*, %struct.window** %w, align 8
  %call174 = call %struct.position* @compute_motion(i64 %shr126, i64 %call128, i64 %shr132, i64 %shr135, i1 zeroext false, i64 %shr136, i64 %cond, i64 %cond165, i64 %cond173, i64 %116, i32 %117, %struct.window* %118)
  store %struct.position* %call174, %struct.position** %pos, align 8
  %119 = load %struct.position*, %struct.position** %pos, align 8
  %bufpos175 = getelementptr inbounds %struct.position, %struct.position* %119, i32 0, i32 0
  %120 = load i64, i64* %bufpos175, align 8
  %call176 = call i64 @make_natnum(i64 %120)
  store i64 %call176, i64* %bufpos, align 8
  %121 = load %struct.position*, %struct.position** %pos, align 8
  %hpos177 = getelementptr inbounds %struct.position, %struct.position* %121, i32 0, i32 2
  %122 = load i64, i64* %hpos177, align 8
  %shl178 = shl i64 %122, 2
  %add179 = add i64 %shl178, 2
  store i64 %add179, i64* %hpos, align 8
  %123 = load %struct.position*, %struct.position** %pos, align 8
  %vpos180 = getelementptr inbounds %struct.position, %struct.position* %123, i32 0, i32 3
  %124 = load i64, i64* %vpos180, align 8
  %shl181 = shl i64 %124, 2
  %add182 = add i64 %shl181, 2
  store i64 %add182, i64* %vpos, align 8
  %125 = load %struct.position*, %struct.position** %pos, align 8
  %prevhpos183 = getelementptr inbounds %struct.position, %struct.position* %125, i32 0, i32 4
  %126 = load i64, i64* %prevhpos183, align 8
  %shl184 = shl i64 %126, 2
  %add185 = add i64 %shl184, 2
  store i64 %add185, i64* %prevhpos, align 8
  %127 = load i64, i64* %bufpos, align 8
  %128 = load i64, i64* %hpos, align 8
  %129 = load i64, i64* %vpos, align 8
  %130 = load i64, i64* %prevhpos, align 8
  %131 = load %struct.position*, %struct.position** %pos, align 8
  %contin = getelementptr inbounds %struct.position, %struct.position* %131, i32 0, i32 5
  %132 = load i32, i32* %contin, align 4
  %tobool = icmp ne i32 %132, 0
  br i1 %tobool, label %cond.true.186, label %cond.false.188

cond.true.186:                                    ; preds = %cond.end.172
  %call187 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end.190

cond.false.188:                                   ; preds = %cond.end.172
  %call189 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.190

cond.end.190:                                     ; preds = %cond.false.188, %cond.true.186
  %cond191 = phi i64 [ %call187, %cond.true.186 ], [ %call189, %cond.false.188 ]
  %call192 = call i64 @list5(i64 %127, i64 %128, i64 %129, i64 %130, i64 %cond191)
  ret i64 %call192
}

declare i32 @XMISCTYPE(i64) #1

declare i64 @marker_position(i64) #1

declare void @CHECK_CONS(i64) #1

declare void @CHECK_NUMBER_CAR(i64) #1

declare void @CHECK_NUMBER_CDR(i64) #1

; Function Attrs: noreturn
declare void @args_out_of_range(i64, i64) #2

declare %struct.window* @decode_live_window(i64) #1

; Function Attrs: noreturn
declare void @args_out_of_range_3(i64, i64, i64) #2

declare i32 @window_internal_height(%struct.window*) #1

declare i64 @list5(i64, i64, i64, i64, i64) #1

; Function Attrs: nounwind uwtable
define %struct.position* @vmotion(i64 %from, i64 %from_byte, i64 %vtarget, %struct.window* %w) #0 {
entry:
  %retval = alloca %struct.position*, align 8
  %from.addr = alloca i64, align 8
  %from_byte.addr = alloca i64, align 8
  %vtarget.addr = alloca i64, align 8
  %w.addr = alloca %struct.window*, align 8
  %hscroll = alloca i64, align 8
  %pos = alloca %struct.position, align 8
  %vpos = alloca i64, align 8
  %prevline = alloca i64, align 8
  %first = alloca i64, align 8
  %lmargin = alloca i64, align 8
  %selective = alloca i64, align 8
  %window = alloca i64, align 8
  %did_motion = alloca i8, align 1
  %text_prop_object = alloca i64, align 8
  %bytepos = alloca i64, align 8
  %propval = alloca i64, align 8
  %chp = alloca i8*, align 8
  %chp98 = alloca i8*, align 8
  %bytepos168 = alloca i64, align 8
  %propval169 = alloca i64, align 8
  %chp215 = alloca i8*, align 8
  store i64 %from, i64* %from.addr, align 8
  store i64 %from_byte, i64* %from_byte.addr, align 8
  store i64 %vtarget, i64* %vtarget.addr, align 8
  store %struct.window* %w, %struct.window** %w.addr, align 8
  %0 = load %struct.window*, %struct.window** %w.addr, align 8
  %hscroll1 = getelementptr inbounds %struct.window, %struct.window* %0, i32 0, i32 38
  %1 = load i64, i64* %hscroll1, align 8
  store i64 %1, i64* %hscroll, align 8
  store i64 0, i64* %vpos, align 8
  %2 = load i64, i64* %hscroll, align 8
  %cmp = icmp sgt i64 %2, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load i64, i64* %hscroll, align 8
  %sub = sub nsw i64 1, %3
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ 0, %cond.false ]
  store i64 %cond, i64* %lmargin, align 8
  %4 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %selective_display_ = getelementptr inbounds %struct.buffer, %struct.buffer* %4, i32 0, i32 32
  %5 = load i64, i64* %selective_display_, align 8
  %and = and i64 %5, 7
  %conv = trunc i64 %and to i32
  %and2 = and i32 %conv, -5
  %cmp3 = icmp eq i32 %and2, 2
  br i1 %cmp3, label %cond.true.5, label %cond.false.7

cond.true.5:                                      ; preds = %cond.end
  %6 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %selective_display_6 = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 32
  %7 = load i64, i64* %selective_display_6, align 8
  %shr = ashr i64 %7, 2
  %call = call i64 @clip_to_bounds(i64 -1, i64 %shr, i64 9223372036854775807)
  br label %cond.end.14

cond.false.7:                                     ; preds = %cond.end
  %8 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %selective_display_8 = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 32
  %9 = load i64, i64* %selective_display_8, align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp10 = icmp eq i64 %9, %call9
  %lnot = xor i1 %cmp10, true
  %cond12 = select i1 %lnot, i32 -1, i32 0
  %conv13 = sext i32 %cond12 to i64
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.7, %cond.true.5
  %cond15 = phi i64 [ %call, %cond.true.5 ], [ %conv13, %cond.false.7 ]
  store i64 %cond15, i64* %selective, align 8
  %10 = load %struct.window*, %struct.window** %w.addr, align 8
  %11 = bitcast %struct.window* %10 to i8*
  %call16 = call i64 @make_lisp_ptr(i8* %11, i32 5)
  store i64 %call16, i64* %window, align 8
  %12 = load %struct.window*, %struct.window** %w.addr, align 8
  %contents = getelementptr inbounds %struct.window, %struct.window* %12, i32 0, i32 10
  %13 = load i64, i64* %contents, align 8
  %call17 = call i64 @Fcurrent_buffer()
  %cmp18 = icmp eq i64 %13, %call17
  br i1 %cmp18, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.14
  %14 = load i64, i64* %window, align 8
  store i64 %14, i64* %text_prop_object, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end.14
  %call20 = call i64 @Fcurrent_buffer()
  store i64 %call20, i64* %text_prop_object, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load i64, i64* %vpos, align 8
  %16 = load i64, i64* %vtarget.addr, align 8
  %cmp21 = icmp sge i64 %15, %16
  br i1 %cmp21, label %if.then.23, label %if.end.142

if.then.23:                                       ; preds = %if.end
  store i64 1, i64* %first, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.end.133, %if.then.23
  %17 = load i64, i64* %vpos, align 8
  %18 = load i64, i64* %vtarget.addr, align 8
  %cmp24 = icmp sgt i64 %17, %18
  br i1 %cmp24, label %land.rhs, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %19 = load i64, i64* %first, align 8
  %tobool = icmp ne i64 %19, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false, %while.cond
  %20 = load i64, i64* %from.addr, align 8
  %21 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %21, i32 0, i32 77
  %22 = load i64, i64* %begv, align 8
  %cmp26 = icmp sgt i64 %20, %22
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false
  %23 = phi i1 [ false, %lor.lhs.false ], [ %cmp26, %land.rhs ]
  br i1 %23, label %while.body, label %while.end.137

while.body:                                       ; preds = %land.end
  %24 = load i64, i64* %from_byte.addr, align 8
  store i64 %24, i64* %bytepos, align 8
  %25 = load i64, i64* %from.addr, align 8
  store i64 %25, i64* %prevline, align 8
  br label %do.body

do.body:                                          ; preds = %while.body
  %26 = load i64, i64* %prevline, align 8
  %dec = add nsw i64 %26, -1
  store i64 %dec, i64* %prevline, align 8
  %27 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_ = getelementptr inbounds %struct.buffer, %struct.buffer* %27, i32 0, i32 39
  %28 = load i64, i64* %enable_multibyte_characters_, align 8
  %call28 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp29 = icmp eq i64 %28, %call28
  br i1 %cmp29, label %if.then.31, label %if.else.33

if.then.31:                                       ; preds = %do.body
  %29 = load i64, i64* %bytepos, align 8
  %dec32 = add nsw i64 %29, -1
  store i64 %dec32, i64* %bytepos, align 8
  br label %if.end.57

if.else.33:                                       ; preds = %do.body
  br label %do.body.34

do.body.34:                                       ; preds = %if.else.33
  %30 = load i64, i64* %bytepos, align 8
  %dec35 = add nsw i64 %30, -1
  store i64 %dec35, i64* %bytepos, align 8
  %31 = load i64, i64* %bytepos, align 8
  %32 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %32, i32 0, i32 73
  %33 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %gpt_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %33, i32 0, i32 3
  %34 = load i64, i64* %gpt_byte, align 8
  %cmp36 = icmp slt i64 %31, %34
  br i1 %cmp36, label %if.then.38, label %if.else.41

if.then.38:                                       ; preds = %do.body.34
  %35 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text39 = getelementptr inbounds %struct.buffer, %struct.buffer* %35, i32 0, i32 73
  %36 = load %struct.buffer_text*, %struct.buffer_text** %text39, align 8
  %beg = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %36, i32 0, i32 0
  %37 = load i8*, i8** %beg, align 8
  %38 = load i64, i64* %bytepos, align 8
  %add.ptr = getelementptr inbounds i8, i8* %37, i64 %38
  %add.ptr40 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8* %add.ptr40, i8** %chp, align 8
  br label %if.end.48

if.else.41:                                       ; preds = %do.body.34
  %39 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text42 = getelementptr inbounds %struct.buffer, %struct.buffer* %39, i32 0, i32 73
  %40 = load %struct.buffer_text*, %struct.buffer_text** %text42, align 8
  %beg43 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %40, i32 0, i32 0
  %41 = load i8*, i8** %beg43, align 8
  %42 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text44 = getelementptr inbounds %struct.buffer, %struct.buffer* %42, i32 0, i32 73
  %43 = load %struct.buffer_text*, %struct.buffer_text** %text44, align 8
  %gap_size = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %43, i32 0, i32 5
  %44 = load i64, i64* %gap_size, align 8
  %add.ptr45 = getelementptr inbounds i8, i8* %41, i64 %44
  %45 = load i64, i64* %bytepos, align 8
  %add.ptr46 = getelementptr inbounds i8, i8* %add.ptr45, i64 %45
  %add.ptr47 = getelementptr inbounds i8, i8* %add.ptr46, i64 -1
  store i8* %add.ptr47, i8** %chp, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.41, %if.then.38
  br label %while.cond.49

while.cond.49:                                    ; preds = %while.body.55, %if.end.48
  %46 = load i8*, i8** %chp, align 8
  %47 = load i8, i8* %46, align 1
  %conv50 = zext i8 %47 to i32
  %and51 = and i32 %conv50, 192
  %cmp52 = icmp ne i32 %and51, 128
  %lnot54 = xor i1 %cmp52, true
  br i1 %lnot54, label %while.body.55, label %while.end

while.body.55:                                    ; preds = %while.cond.49
  %48 = load i8*, i8** %chp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %48, i32 -1
  store i8* %incdec.ptr, i8** %chp, align 8
  %49 = load i64, i64* %bytepos, align 8
  %dec56 = add nsw i64 %49, -1
  store i64 %dec56, i64* %bytepos, align 8
  br label %while.cond.49

while.end:                                        ; preds = %while.cond.49
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end.57

if.end.57:                                        ; preds = %do.end, %if.then.31
  br label %do.end.58

do.end.58:                                        ; preds = %if.end.57
  %50 = load i64, i64* %prevline, align 8
  %51 = load i64, i64* %bytepos, align 8
  %call59 = call i64 @find_newline_no_quit(i64 %50, i64 %51, i64 -1, i64* %bytepos)
  store i64 %call59, i64* %prevline, align 8
  br label %while.cond.60

while.cond.60:                                    ; preds = %do.end.131, %do.end.58
  %52 = load i64, i64* %prevline, align 8
  %53 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv61 = getelementptr inbounds %struct.buffer, %struct.buffer* %53, i32 0, i32 77
  %54 = load i64, i64* %begv61, align 8
  %cmp62 = icmp sgt i64 %52, %54
  br i1 %cmp62, label %land.rhs.64, label %land.end.86

land.rhs.64:                                      ; preds = %while.cond.60
  %55 = load i64, i64* %selective, align 8
  %cmp65 = icmp sgt i64 %55, 0
  br i1 %cmp65, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %land.rhs.64
  %56 = load i64, i64* %prevline, align 8
  %57 = load i64, i64* %bytepos, align 8
  %58 = load i64, i64* %selective, align 8
  %call67 = call zeroext i1 @indented_beyond_p(i64 %56, i64 %57, i64 %58)
  br i1 %call67, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true, %land.rhs.64
  %59 = load i64, i64* %prevline, align 8
  %sub69 = sub nsw i64 %59, 1
  %shl = shl i64 %sub69, 2
  %add = add i64 %shl, 2
  %call70 = call i64 @builtin_lisp_symbol(i32 574)
  %60 = load i64, i64* %text_prop_object, align 8
  %call71 = call i64 @Fget_char_property(i64 %add, i64 %call70, i64 %60)
  store i64 %call71, i64* %propval, align 8
  %61 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %invisibility_spec_ = getelementptr inbounds %struct.buffer, %struct.buffer* %61, i32 0, i32 50
  %62 = load i64, i64* %invisibility_spec_, align 8
  %call72 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp73 = icmp eq i64 %62, %call72
  br i1 %cmp73, label %cond.true.75, label %cond.false.80

cond.true.75:                                     ; preds = %lor.rhs
  %63 = load i64, i64* %propval, align 8
  %call76 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp77 = icmp eq i64 %63, %call76
  %lnot79 = xor i1 %cmp77, true
  %lnot.ext = zext i1 %lnot79 to i32
  br label %cond.end.83

cond.false.80:                                    ; preds = %lor.rhs
  %64 = load i64, i64* %propval, align 8
  %65 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %invisibility_spec_81 = getelementptr inbounds %struct.buffer, %struct.buffer* %65, i32 0, i32 50
  %66 = load i64, i64* %invisibility_spec_81, align 8
  %call82 = call i32 @invisible_prop(i64 %64, i64 %66)
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.false.80, %cond.true.75
  %cond84 = phi i32 [ %lnot.ext, %cond.true.75 ], [ %call82, %cond.false.80 ]
  %tobool85 = icmp ne i32 %cond84, 0
  br label %lor.end

lor.end:                                          ; preds = %cond.end.83, %land.lhs.true
  %67 = phi i1 [ true, %land.lhs.true ], [ %tobool85, %cond.end.83 ]
  br label %land.end.86

land.end.86:                                      ; preds = %lor.end, %while.cond.60
  %68 = phi i1 [ false, %while.cond.60 ], [ %67, %lor.end ]
  br i1 %68, label %while.body.87, label %while.end.133

while.body.87:                                    ; preds = %land.end.86
  br label %do.body.88

do.body.88:                                       ; preds = %while.body.87
  %69 = load i64, i64* %prevline, align 8
  %dec89 = add nsw i64 %69, -1
  store i64 %dec89, i64* %prevline, align 8
  %70 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_90 = getelementptr inbounds %struct.buffer, %struct.buffer* %70, i32 0, i32 39
  %71 = load i64, i64* %enable_multibyte_characters_90, align 8
  %call91 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp92 = icmp eq i64 %71, %call91
  br i1 %cmp92, label %if.then.94, label %if.else.96

if.then.94:                                       ; preds = %do.body.88
  %72 = load i64, i64* %bytepos, align 8
  %dec95 = add nsw i64 %72, -1
  store i64 %dec95, i64* %bytepos, align 8
  br label %if.end.130

if.else.96:                                       ; preds = %do.body.88
  br label %do.body.97

do.body.97:                                       ; preds = %if.else.96
  %73 = load i64, i64* %bytepos, align 8
  %dec99 = add nsw i64 %73, -1
  store i64 %dec99, i64* %bytepos, align 8
  %74 = load i64, i64* %bytepos, align 8
  %75 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text100 = getelementptr inbounds %struct.buffer, %struct.buffer* %75, i32 0, i32 73
  %76 = load %struct.buffer_text*, %struct.buffer_text** %text100, align 8
  %gpt_byte101 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %76, i32 0, i32 3
  %77 = load i64, i64* %gpt_byte101, align 8
  %cmp102 = icmp slt i64 %74, %77
  br i1 %cmp102, label %if.then.104, label %if.else.109

if.then.104:                                      ; preds = %do.body.97
  %78 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text105 = getelementptr inbounds %struct.buffer, %struct.buffer* %78, i32 0, i32 73
  %79 = load %struct.buffer_text*, %struct.buffer_text** %text105, align 8
  %beg106 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %79, i32 0, i32 0
  %80 = load i8*, i8** %beg106, align 8
  %81 = load i64, i64* %bytepos, align 8
  %add.ptr107 = getelementptr inbounds i8, i8* %80, i64 %81
  %add.ptr108 = getelementptr inbounds i8, i8* %add.ptr107, i64 -1
  store i8* %add.ptr108, i8** %chp98, align 8
  br label %if.end.117

if.else.109:                                      ; preds = %do.body.97
  %82 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text110 = getelementptr inbounds %struct.buffer, %struct.buffer* %82, i32 0, i32 73
  %83 = load %struct.buffer_text*, %struct.buffer_text** %text110, align 8
  %beg111 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %83, i32 0, i32 0
  %84 = load i8*, i8** %beg111, align 8
  %85 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text112 = getelementptr inbounds %struct.buffer, %struct.buffer* %85, i32 0, i32 73
  %86 = load %struct.buffer_text*, %struct.buffer_text** %text112, align 8
  %gap_size113 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %86, i32 0, i32 5
  %87 = load i64, i64* %gap_size113, align 8
  %add.ptr114 = getelementptr inbounds i8, i8* %84, i64 %87
  %88 = load i64, i64* %bytepos, align 8
  %add.ptr115 = getelementptr inbounds i8, i8* %add.ptr114, i64 %88
  %add.ptr116 = getelementptr inbounds i8, i8* %add.ptr115, i64 -1
  store i8* %add.ptr116, i8** %chp98, align 8
  br label %if.end.117

if.end.117:                                       ; preds = %if.else.109, %if.then.104
  br label %while.cond.118

while.cond.118:                                   ; preds = %while.body.125, %if.end.117
  %89 = load i8*, i8** %chp98, align 8
  %90 = load i8, i8* %89, align 1
  %conv119 = zext i8 %90 to i32
  %and120 = and i32 %conv119, 192
  %cmp121 = icmp ne i32 %and120, 128
  %lnot123 = xor i1 %cmp121, true
  br i1 %lnot123, label %while.body.125, label %while.end.128

while.body.125:                                   ; preds = %while.cond.118
  %91 = load i8*, i8** %chp98, align 8
  %incdec.ptr126 = getelementptr inbounds i8, i8* %91, i32 -1
  store i8* %incdec.ptr126, i8** %chp98, align 8
  %92 = load i64, i64* %bytepos, align 8
  %dec127 = add nsw i64 %92, -1
  store i64 %dec127, i64* %bytepos, align 8
  br label %while.cond.118

while.end.128:                                    ; preds = %while.cond.118
  br label %do.end.129

do.end.129:                                       ; preds = %while.end.128
  br label %if.end.130

if.end.130:                                       ; preds = %do.end.129, %if.then.94
  br label %do.end.131

do.end.131:                                       ; preds = %if.end.130
  %93 = load i64, i64* %prevline, align 8
  %94 = load i64, i64* %bytepos, align 8
  %call132 = call i64 @find_newline_no_quit(i64 %93, i64 %94, i64 -1, i64* %bytepos)
  store i64 %call132, i64* %prevline, align 8
  br label %while.cond.60

while.end.133:                                    ; preds = %land.end.86
  %95 = load i64, i64* %prevline, align 8
  %96 = load i64, i64* %bytepos, align 8
  %97 = load i64, i64* %lmargin, align 8
  %98 = load i64, i64* %from.addr, align 8
  %99 = load i64, i64* %hscroll, align 8
  %100 = load %struct.window*, %struct.window** %w.addr, align 8
  %call134 = call %struct.position* @compute_motion(i64 %95, i64 %96, i64 0, i64 %97, i1 zeroext false, i64 %98, i64 32768, i64 32768, i64 -1, i64 %99, i32 0, %struct.window* %100)
  %101 = bitcast %struct.position* %pos to i8*
  %102 = bitcast %struct.position* %call134 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %101, i8* %102, i64 48, i32 8, i1 false)
  %vpos135 = getelementptr inbounds %struct.position, %struct.position* %pos, i32 0, i32 3
  %103 = load i64, i64* %vpos135, align 8
  %104 = load i64, i64* %vpos, align 8
  %sub136 = sub nsw i64 %104, %103
  store i64 %sub136, i64* %vpos, align 8
  store i64 0, i64* %first, align 8
  %105 = load i64, i64* %prevline, align 8
  store i64 %105, i64* %from.addr, align 8
  %106 = load i64, i64* %bytepos, align 8
  store i64 %106, i64* %from_byte.addr, align 8
  br label %while.cond

while.end.137:                                    ; preds = %land.end
  %107 = load i64, i64* %vpos, align 8
  %108 = load i64, i64* %vtarget.addr, align 8
  %cmp138 = icmp sge i64 %107, %108
  br i1 %cmp138, label %if.then.140, label %if.end.141

if.then.140:                                      ; preds = %while.end.137
  %109 = load i64, i64* %from.addr, align 8
  store i64 %109, i64* getelementptr inbounds (%struct.position, %struct.position* @val_vmotion, i32 0, i32 0), align 8
  %110 = load i64, i64* %from_byte.addr, align 8
  store i64 %110, i64* getelementptr inbounds (%struct.position, %struct.position* @val_vmotion, i32 0, i32 1), align 8
  %111 = load i64, i64* %vpos, align 8
  store i64 %111, i64* getelementptr inbounds (%struct.position, %struct.position* @val_vmotion, i32 0, i32 3), align 8
  %112 = load i64, i64* %lmargin, align 8
  store i64 %112, i64* getelementptr inbounds (%struct.position, %struct.position* @val_vmotion, i32 0, i32 2), align 8
  store i32 0, i32* getelementptr inbounds (%struct.position, %struct.position* @val_vmotion, i32 0, i32 5), align 4
  store i64 0, i64* getelementptr inbounds (%struct.position, %struct.position* @val_vmotion, i32 0, i32 4), align 8
  store %struct.position* @val_vmotion, %struct.position** %retval
  br label %return

if.end.141:                                       ; preds = %while.end.137
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.141, %if.end
  %113 = load i64, i64* %from.addr, align 8
  %114 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv143 = getelementptr inbounds %struct.buffer, %struct.buffer* %114, i32 0, i32 77
  %115 = load i64, i64* %begv143, align 8
  %cmp144 = icmp sgt i64 %113, %115
  br i1 %cmp144, label %land.lhs.true.146, label %if.else.252

land.lhs.true.146:                                ; preds = %if.end.142
  %116 = load i64, i64* %from_byte.addr, align 8
  %sub147 = sub nsw i64 %116, 1
  %117 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text148 = getelementptr inbounds %struct.buffer, %struct.buffer* %117, i32 0, i32 73
  %118 = load %struct.buffer_text*, %struct.buffer_text** %text148, align 8
  %gpt_byte149 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %118, i32 0, i32 3
  %119 = load i64, i64* %gpt_byte149, align 8
  %cmp150 = icmp sge i64 %sub147, %119
  br i1 %cmp150, label %cond.true.152, label %cond.false.155

cond.true.152:                                    ; preds = %land.lhs.true.146
  %120 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text153 = getelementptr inbounds %struct.buffer, %struct.buffer* %120, i32 0, i32 73
  %121 = load %struct.buffer_text*, %struct.buffer_text** %text153, align 8
  %gap_size154 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %121, i32 0, i32 5
  %122 = load i64, i64* %gap_size154, align 8
  br label %cond.end.156

cond.false.155:                                   ; preds = %land.lhs.true.146
  br label %cond.end.156

cond.end.156:                                     ; preds = %cond.false.155, %cond.true.152
  %cond157 = phi i64 [ %122, %cond.true.152 ], [ 0, %cond.false.155 ]
  %123 = load i64, i64* %from_byte.addr, align 8
  %sub158 = sub nsw i64 %123, 1
  %add159 = add nsw i64 %cond157, %sub158
  %124 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text160 = getelementptr inbounds %struct.buffer, %struct.buffer* %124, i32 0, i32 73
  %125 = load %struct.buffer_text*, %struct.buffer_text** %text160, align 8
  %beg161 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %125, i32 0, i32 0
  %126 = load i8*, i8** %beg161, align 8
  %add.ptr162 = getelementptr inbounds i8, i8* %126, i64 %add159
  %add.ptr163 = getelementptr inbounds i8, i8* %add.ptr162, i64 -1
  %127 = load i8, i8* %add.ptr163, align 1
  %conv164 = zext i8 %127 to i32
  %cmp165 = icmp ne i32 %conv164, 10
  br i1 %cmp165, label %if.then.167, label %if.else.252

if.then.167:                                      ; preds = %cond.end.156
  %128 = load i64, i64* %from.addr, align 8
  %129 = load i64, i64* %from_byte.addr, align 8
  %call170 = call i64 @find_newline_no_quit(i64 %128, i64 %129, i64 -1, i64* %bytepos168)
  store i64 %call170, i64* %prevline, align 8
  br label %while.cond.171

while.cond.171:                                   ; preds = %do.end.248, %if.then.167
  %130 = load i64, i64* %prevline, align 8
  %131 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv172 = getelementptr inbounds %struct.buffer, %struct.buffer* %131, i32 0, i32 77
  %132 = load i64, i64* %begv172, align 8
  %cmp173 = icmp sgt i64 %130, %132
  br i1 %cmp173, label %land.rhs.175, label %land.end.203

land.rhs.175:                                     ; preds = %while.cond.171
  %133 = load i64, i64* %selective, align 8
  %cmp176 = icmp sgt i64 %133, 0
  br i1 %cmp176, label %land.lhs.true.178, label %lor.rhs.181

land.lhs.true.178:                                ; preds = %land.rhs.175
  %134 = load i64, i64* %prevline, align 8
  %135 = load i64, i64* %bytepos168, align 8
  %136 = load i64, i64* %selective, align 8
  %call179 = call zeroext i1 @indented_beyond_p(i64 %134, i64 %135, i64 %136)
  br i1 %call179, label %lor.end.202, label %lor.rhs.181

lor.rhs.181:                                      ; preds = %land.lhs.true.178, %land.rhs.175
  %137 = load i64, i64* %prevline, align 8
  %shl182 = shl i64 %137, 2
  %add183 = add i64 %shl182, 2
  %call184 = call i64 @builtin_lisp_symbol(i32 574)
  %138 = load i64, i64* %text_prop_object, align 8
  %call185 = call i64 @Fget_char_property(i64 %add183, i64 %call184, i64 %138)
  store i64 %call185, i64* %propval169, align 8
  %139 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %invisibility_spec_186 = getelementptr inbounds %struct.buffer, %struct.buffer* %139, i32 0, i32 50
  %140 = load i64, i64* %invisibility_spec_186, align 8
  %call187 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp188 = icmp eq i64 %140, %call187
  br i1 %cmp188, label %cond.true.190, label %cond.false.196

cond.true.190:                                    ; preds = %lor.rhs.181
  %141 = load i64, i64* %propval169, align 8
  %call191 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp192 = icmp eq i64 %141, %call191
  %lnot194 = xor i1 %cmp192, true
  %lnot.ext195 = zext i1 %lnot194 to i32
  br label %cond.end.199

cond.false.196:                                   ; preds = %lor.rhs.181
  %142 = load i64, i64* %propval169, align 8
  %143 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %invisibility_spec_197 = getelementptr inbounds %struct.buffer, %struct.buffer* %143, i32 0, i32 50
  %144 = load i64, i64* %invisibility_spec_197, align 8
  %call198 = call i32 @invisible_prop(i64 %142, i64 %144)
  br label %cond.end.199

cond.end.199:                                     ; preds = %cond.false.196, %cond.true.190
  %cond200 = phi i32 [ %lnot.ext195, %cond.true.190 ], [ %call198, %cond.false.196 ]
  %tobool201 = icmp ne i32 %cond200, 0
  br label %lor.end.202

lor.end.202:                                      ; preds = %cond.end.199, %land.lhs.true.178
  %145 = phi i1 [ true, %land.lhs.true.178 ], [ %tobool201, %cond.end.199 ]
  br label %land.end.203

land.end.203:                                     ; preds = %lor.end.202, %while.cond.171
  %146 = phi i1 [ false, %while.cond.171 ], [ %145, %lor.end.202 ]
  br i1 %146, label %while.body.204, label %while.end.250

while.body.204:                                   ; preds = %land.end.203
  br label %do.body.205

do.body.205:                                      ; preds = %while.body.204
  %147 = load i64, i64* %prevline, align 8
  %dec206 = add nsw i64 %147, -1
  store i64 %dec206, i64* %prevline, align 8
  %148 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_207 = getelementptr inbounds %struct.buffer, %struct.buffer* %148, i32 0, i32 39
  %149 = load i64, i64* %enable_multibyte_characters_207, align 8
  %call208 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp209 = icmp eq i64 %149, %call208
  br i1 %cmp209, label %if.then.211, label %if.else.213

if.then.211:                                      ; preds = %do.body.205
  %150 = load i64, i64* %bytepos168, align 8
  %dec212 = add nsw i64 %150, -1
  store i64 %dec212, i64* %bytepos168, align 8
  br label %if.end.247

if.else.213:                                      ; preds = %do.body.205
  br label %do.body.214

do.body.214:                                      ; preds = %if.else.213
  %151 = load i64, i64* %bytepos168, align 8
  %dec216 = add nsw i64 %151, -1
  store i64 %dec216, i64* %bytepos168, align 8
  %152 = load i64, i64* %bytepos168, align 8
  %153 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text217 = getelementptr inbounds %struct.buffer, %struct.buffer* %153, i32 0, i32 73
  %154 = load %struct.buffer_text*, %struct.buffer_text** %text217, align 8
  %gpt_byte218 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %154, i32 0, i32 3
  %155 = load i64, i64* %gpt_byte218, align 8
  %cmp219 = icmp slt i64 %152, %155
  br i1 %cmp219, label %if.then.221, label %if.else.226

if.then.221:                                      ; preds = %do.body.214
  %156 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text222 = getelementptr inbounds %struct.buffer, %struct.buffer* %156, i32 0, i32 73
  %157 = load %struct.buffer_text*, %struct.buffer_text** %text222, align 8
  %beg223 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %157, i32 0, i32 0
  %158 = load i8*, i8** %beg223, align 8
  %159 = load i64, i64* %bytepos168, align 8
  %add.ptr224 = getelementptr inbounds i8, i8* %158, i64 %159
  %add.ptr225 = getelementptr inbounds i8, i8* %add.ptr224, i64 -1
  store i8* %add.ptr225, i8** %chp215, align 8
  br label %if.end.234

if.else.226:                                      ; preds = %do.body.214
  %160 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text227 = getelementptr inbounds %struct.buffer, %struct.buffer* %160, i32 0, i32 73
  %161 = load %struct.buffer_text*, %struct.buffer_text** %text227, align 8
  %beg228 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %161, i32 0, i32 0
  %162 = load i8*, i8** %beg228, align 8
  %163 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text229 = getelementptr inbounds %struct.buffer, %struct.buffer* %163, i32 0, i32 73
  %164 = load %struct.buffer_text*, %struct.buffer_text** %text229, align 8
  %gap_size230 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %164, i32 0, i32 5
  %165 = load i64, i64* %gap_size230, align 8
  %add.ptr231 = getelementptr inbounds i8, i8* %162, i64 %165
  %166 = load i64, i64* %bytepos168, align 8
  %add.ptr232 = getelementptr inbounds i8, i8* %add.ptr231, i64 %166
  %add.ptr233 = getelementptr inbounds i8, i8* %add.ptr232, i64 -1
  store i8* %add.ptr233, i8** %chp215, align 8
  br label %if.end.234

if.end.234:                                       ; preds = %if.else.226, %if.then.221
  br label %while.cond.235

while.cond.235:                                   ; preds = %while.body.242, %if.end.234
  %167 = load i8*, i8** %chp215, align 8
  %168 = load i8, i8* %167, align 1
  %conv236 = zext i8 %168 to i32
  %and237 = and i32 %conv236, 192
  %cmp238 = icmp ne i32 %and237, 128
  %lnot240 = xor i1 %cmp238, true
  br i1 %lnot240, label %while.body.242, label %while.end.245

while.body.242:                                   ; preds = %while.cond.235
  %169 = load i8*, i8** %chp215, align 8
  %incdec.ptr243 = getelementptr inbounds i8, i8* %169, i32 -1
  store i8* %incdec.ptr243, i8** %chp215, align 8
  %170 = load i64, i64* %bytepos168, align 8
  %dec244 = add nsw i64 %170, -1
  store i64 %dec244, i64* %bytepos168, align 8
  br label %while.cond.235

while.end.245:                                    ; preds = %while.cond.235
  br label %do.end.246

do.end.246:                                       ; preds = %while.end.245
  br label %if.end.247

if.end.247:                                       ; preds = %do.end.246, %if.then.211
  br label %do.end.248

do.end.248:                                       ; preds = %if.end.247
  %171 = load i64, i64* %prevline, align 8
  %172 = load i64, i64* %bytepos168, align 8
  %call249 = call i64 @find_newline_no_quit(i64 %171, i64 %172, i64 -1, i64* %bytepos168)
  store i64 %call249, i64* %prevline, align 8
  br label %while.cond.171

while.end.250:                                    ; preds = %land.end.203
  %173 = load i64, i64* %prevline, align 8
  %174 = load i64, i64* %bytepos168, align 8
  %175 = load i64, i64* %lmargin, align 8
  %176 = load i64, i64* %from.addr, align 8
  %177 = load i64, i64* %hscroll, align 8
  %178 = load %struct.window*, %struct.window** %w.addr, align 8
  %call251 = call %struct.position* @compute_motion(i64 %173, i64 %174, i64 0, i64 %175, i1 zeroext false, i64 %176, i64 32768, i64 32768, i64 -1, i64 %177, i32 0, %struct.window* %178)
  %179 = bitcast %struct.position* %pos to i8*
  %180 = bitcast %struct.position* %call251 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %179, i8* %180, i64 48, i32 8, i1 false)
  store i8 1, i8* %did_motion, align 1
  br label %if.end.254

if.else.252:                                      ; preds = %cond.end.156, %if.end.142
  %181 = load i64, i64* %lmargin, align 8
  %hpos = getelementptr inbounds %struct.position, %struct.position* %pos, i32 0, i32 2
  store i64 %181, i64* %hpos, align 8
  %vpos253 = getelementptr inbounds %struct.position, %struct.position* %pos, i32 0, i32 3
  store i64 0, i64* %vpos253, align 8
  store i8 0, i8* %did_motion, align 1
  br label %if.end.254

if.end.254:                                       ; preds = %if.else.252, %while.end.250
  %182 = load i64, i64* %from.addr, align 8
  %183 = load i64, i64* %from_byte.addr, align 8
  %184 = load i64, i64* %vpos, align 8
  %hpos255 = getelementptr inbounds %struct.position, %struct.position* %pos, i32 0, i32 2
  %185 = load i64, i64* %hpos255, align 8
  %186 = load i8, i8* %did_motion, align 1
  %tobool256 = trunc i8 %186 to i1
  %187 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %187, i32 0, i32 79
  %188 = load i64, i64* %zv, align 8
  %189 = load i64, i64* %vtarget.addr, align 8
  %190 = load i64, i64* %hscroll, align 8
  %191 = load %struct.window*, %struct.window** %w.addr, align 8
  %call257 = call %struct.position* @compute_motion(i64 %182, i64 %183, i64 %184, i64 %185, i1 zeroext %tobool256, i64 %188, i64 %189, i64 -32768, i64 -1, i64 %190, i32 0, %struct.window* %191)
  store %struct.position* %call257, %struct.position** %retval
  br label %return

return:                                           ; preds = %if.end.254, %if.then.140
  %192 = load %struct.position*, %struct.position** %retval
  ret %struct.position* %192
}

declare i64 @clip_to_bounds(i64, i64, i64) #1

declare i64 @Fcurrent_buffer() #1

declare i64 @find_newline_no_quit(i64, i64, i64, i64*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define i64 @Fvertical_motion(i64 %lines, i64 %window, i64 %cur_col) #0 {
entry:
  %lines.addr = alloca i64, align 8
  %window.addr = alloca i64, align 8
  %cur_col.addr = alloca i64, align 8
  %it = alloca %struct.it, align 8
  %pt = alloca %struct.text_pos, align 8
  %w = alloca %struct.window*, align 8
  %old_buffer = alloca i64, align 8
  %old_charpos = alloca i64, align 8
  %old_bytepos = alloca i64, align 8
  %lcols = alloca i64, align 8
  %itdata = alloca i8*, align 8
  %lcols_given = alloca i8, align 1
  %pos = alloca %struct.position, align 8
  %it_start = alloca i64, align 8
  %it_overshoot_count = alloca i64, align 8
  %first_x = alloca i32, align 4
  %overshoot_handled = alloca i8, align 1
  %disp_string_at_start_p = alloca i8, align 1
  %nlines = alloca i64, align 8
  %vpos_init = alloca i32, align 4
  %start_col = alloca double, align 8
  %start_x = alloca i32, align 4
  %to_x = alloca i32, align 4
  %start_x_given = alloca i8, align 1
  %s = alloca i8*, align 8
  %e = alloca i8*, align 8
  store i64 %lines, i64* %lines.addr, align 8
  store i64 %window, i64* %window.addr, align 8
  store i64 %cur_col, i64* %cur_col.addr, align 8
  store i8* null, i8** %itdata, align 8
  %0 = load i64, i64* %lines.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, i8* %lcols_given, align 1
  %1 = load i8, i8* %lcols_given, align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %lines.addr, align 8
  %sub = sub nsw i64 %2, 3
  %3 = inttoptr i64 %sub to i8*
  %4 = bitcast i8* %3 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %4, i32 0, i32 0
  %5 = load i64, i64* %car, align 8
  store i64 %5, i64* %lcols, align 8
  %6 = load i64, i64* %lines.addr, align 8
  %sub2 = sub nsw i64 %6, 3
  %7 = inttoptr i64 %sub2 to i8*
  %8 = bitcast i8* %7 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %8, i32 0, i32 1
  %cdr = bitcast %union.anon.10* %u to i64*
  %9 = load i64, i64* %cdr, align 8
  store i64 %9, i64* %lines.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i64, i64* %lines.addr, align 8
  %and3 = and i64 %10, 7
  %conv4 = trunc i64 %and3 to i32
  %and5 = and i32 %conv4, -5
  %cmp6 = icmp eq i32 %and5, 2
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call = call i64 @builtin_lisp_symbol(i32 559)
  %11 = load i64, i64* %lines.addr, align 8
  %12 = call i64 @wrong_type_argument(i64 %call, i64 %11) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %13, %cond.true
  %14 = load i64, i64* %window.addr, align 8
  %call8 = call %struct.window* @decode_live_window(i64 %14)
  store %struct.window* %call8, %struct.window** %w, align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call9, i64* %old_buffer, align 8
  %15 = load %struct.window*, %struct.window** %w, align 8
  %contents = getelementptr inbounds %struct.window, %struct.window* %15, i32 0, i32 10
  %16 = load i64, i64* %contents, align 8
  %call10 = call %struct.buffer* @XBUFFER(i64 %16)
  %17 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp11 = icmp ne %struct.buffer* %call10, %17
  br i1 %cmp11, label %if.then.13, label %if.end.56

if.then.13:                                       ; preds = %cond.end
  %18 = load %struct.window*, %struct.window** %w, align 8
  %contents14 = getelementptr inbounds %struct.window, %struct.window* %18, i32 0, i32 10
  %19 = load i64, i64* %contents14, align 8
  store i64 %19, i64* %old_buffer, align 8
  %20 = load %struct.window*, %struct.window** %w, align 8
  %pointm = getelementptr inbounds %struct.window, %struct.window* %20, i32 0, i32 12
  %21 = load i64, i64* %pointm, align 8
  %call15 = call i64 @marker_position(i64 %21)
  store i64 %call15, i64* %old_charpos, align 8
  %22 = load %struct.window*, %struct.window** %w, align 8
  %pointm16 = getelementptr inbounds %struct.window, %struct.window* %22, i32 0, i32 12
  %23 = load i64, i64* %pointm16, align 8
  %call17 = call i64 @marker_byte_position(i64 %23)
  store i64 %call17, i64* %old_bytepos, align 8
  %24 = load %struct.window*, %struct.window** %w, align 8
  %call18 = call i64 @Fcurrent_buffer()
  call void @wset_buffer(%struct.window* %24, i64 %call18)
  %25 = load %struct.window*, %struct.window** %w, align 8
  %pointm19 = getelementptr inbounds %struct.window, %struct.window* %25, i32 0, i32 12
  %26 = load i64, i64* %pointm19, align 8
  %27 = load %struct.window*, %struct.window** %w, align 8
  %contents20 = getelementptr inbounds %struct.window, %struct.window* %27, i32 0, i32 10
  %28 = load i64, i64* %contents20, align 8
  %29 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %30 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp21 = icmp eq %struct.buffer* %29, %30
  br i1 %cmp21, label %cond.true.23, label %cond.false.25

cond.true.23:                                     ; preds = %if.then.13
  %31 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt24 = getelementptr inbounds %struct.buffer, %struct.buffer* %31, i32 0, i32 75
  %32 = load i64, i64* %pt24, align 8
  %add = add nsw i64 %32, 0
  br label %cond.end.35

cond.false.25:                                    ; preds = %if.then.13
  %33 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_marker_ = getelementptr inbounds %struct.buffer, %struct.buffer* %33, i32 0, i32 45
  %34 = load i64, i64* %pt_marker_, align 8
  %call26 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp27 = icmp eq i64 %34, %call26
  br i1 %cmp27, label %cond.true.29, label %cond.false.31

cond.true.29:                                     ; preds = %cond.false.25
  %35 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt30 = getelementptr inbounds %struct.buffer, %struct.buffer* %35, i32 0, i32 75
  %36 = load i64, i64* %pt30, align 8
  br label %cond.end.34

cond.false.31:                                    ; preds = %cond.false.25
  %37 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_marker_32 = getelementptr inbounds %struct.buffer, %struct.buffer* %37, i32 0, i32 45
  %38 = load i64, i64* %pt_marker_32, align 8
  %call33 = call i64 @marker_position(i64 %38)
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.false.31, %cond.true.29
  %cond = phi i64 [ %36, %cond.true.29 ], [ %call33, %cond.false.31 ]
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.end.34, %cond.true.23
  %cond36 = phi i64 [ %add, %cond.true.23 ], [ %cond, %cond.end.34 ]
  %39 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %40 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp37 = icmp eq %struct.buffer* %39, %40
  br i1 %cmp37, label %cond.true.39, label %cond.false.41

cond.true.39:                                     ; preds = %cond.end.35
  %41 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %41, i32 0, i32 76
  %42 = load i64, i64* %pt_byte, align 8
  %add40 = add nsw i64 %42, 0
  br label %cond.end.53

cond.false.41:                                    ; preds = %cond.end.35
  %43 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_marker_42 = getelementptr inbounds %struct.buffer, %struct.buffer* %43, i32 0, i32 45
  %44 = load i64, i64* %pt_marker_42, align 8
  %call43 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp44 = icmp eq i64 %44, %call43
  br i1 %cmp44, label %cond.true.46, label %cond.false.48

cond.true.46:                                     ; preds = %cond.false.41
  %45 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte47 = getelementptr inbounds %struct.buffer, %struct.buffer* %45, i32 0, i32 76
  %46 = load i64, i64* %pt_byte47, align 8
  br label %cond.end.51

cond.false.48:                                    ; preds = %cond.false.41
  %47 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_marker_49 = getelementptr inbounds %struct.buffer, %struct.buffer* %47, i32 0, i32 45
  %48 = load i64, i64* %pt_marker_49, align 8
  %call50 = call i64 @marker_byte_position(i64 %48)
  br label %cond.end.51

cond.end.51:                                      ; preds = %cond.false.48, %cond.true.46
  %cond52 = phi i64 [ %46, %cond.true.46 ], [ %call50, %cond.false.48 ]
  br label %cond.end.53

cond.end.53:                                      ; preds = %cond.end.51, %cond.true.39
  %cond54 = phi i64 [ %add40, %cond.true.39 ], [ %cond52, %cond.end.51 ]
  %call55 = call i64 @set_marker_both(i64 %26, i64 %28, i64 %cond36, i64 %cond54)
  br label %if.end.56

if.end.56:                                        ; preds = %cond.end.53, %cond.end
  %49 = load i8, i8* @noninteractive, align 1
  %tobool57 = trunc i8 %49 to i1
  br i1 %tobool57, label %if.then.58, label %if.else

if.then.58:                                       ; preds = %if.end.56
  %50 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt59 = getelementptr inbounds %struct.buffer, %struct.buffer* %50, i32 0, i32 75
  %51 = load i64, i64* %pt59, align 8
  %add60 = add nsw i64 %51, 0
  %52 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte61 = getelementptr inbounds %struct.buffer, %struct.buffer* %52, i32 0, i32 76
  %53 = load i64, i64* %pt_byte61, align 8
  %add62 = add nsw i64 %53, 0
  %54 = load i64, i64* %lines.addr, align 8
  %shr = ashr i64 %54, 2
  %55 = load %struct.window*, %struct.window** %w, align 8
  %call63 = call %struct.position* @vmotion(i64 %add60, i64 %add62, i64 %shr, %struct.window* %55)
  %56 = bitcast %struct.position* %pos to i8*
  %57 = bitcast %struct.position* %call63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* %57, i64 48, i32 8, i1 false)
  %bufpos = getelementptr inbounds %struct.position, %struct.position* %pos, i32 0, i32 0
  %58 = load i64, i64* %bufpos, align 8
  %bytepos = getelementptr inbounds %struct.position, %struct.position* %pos, i32 0, i32 1
  %59 = load i64, i64* %bytepos, align 8
  call void @set_point_both(i64 %58, i64 %59)
  %vpos = getelementptr inbounds %struct.position, %struct.position* %pos, i32 0, i32 3
  %60 = load i64, i64* %vpos, align 8
  %conv64 = trunc i64 %60 to i32
  %vpos65 = getelementptr inbounds %struct.it, %struct.it* %it, i32 0, i32 76
  store i32 %conv64, i32* %vpos65, align 4
  br label %if.end.415

if.else:                                          ; preds = %if.end.56
  store i64 0, i64* %it_overshoot_count, align 8
  store i8 0, i8* %overshoot_handled, align 1
  store i8 0, i8* %disp_string_at_start_p, align 1
  %61 = load i64, i64* %lines.addr, align 8
  %shr66 = ashr i64 %61, 2
  store i64 %shr66, i64* %nlines, align 8
  store i32 0, i32* %vpos_init, align 4
  store i32 -1, i32* %to_x, align 4
  %62 = load i64, i64* %cur_col.addr, align 8
  %call67 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp68 = icmp eq i64 %62, %call67
  %lnot = xor i1 %cmp68, true
  %frombool70 = zext i1 %lnot to i8
  store i8 %frombool70, i8* %start_x_given, align 1
  %63 = load i8, i8* %start_x_given, align 1
  %tobool71 = trunc i8 %63 to i1
  br i1 %tobool71, label %if.then.72, label %if.end.75

if.then.72:                                       ; preds = %if.else
  %64 = load i64, i64* %cur_col.addr, align 8
  %call73 = call double @extract_float(i64 %64)
  store double %call73, double* %start_col, align 8
  %65 = load %struct.window*, %struct.window** %w, align 8
  %66 = load i64, i64* %window.addr, align 8
  %67 = load double, double* %start_col, align 8
  %68 = load i64, i64* %cur_col.addr, align 8
  %call74 = call i32 @window_column_x(%struct.window* %65, i64 %66, double %67, i64 %68)
  store i32 %call74, i32* %start_x, align 4
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.72, %if.else
  %call76 = call i8* @bidi_shelve_cache()
  store i8* %call76, i8** %itdata, align 8
  %69 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt77 = getelementptr inbounds %struct.buffer, %struct.buffer* %69, i32 0, i32 75
  %70 = load i64, i64* %pt77, align 8
  %add78 = add nsw i64 %70, 0
  %charpos = getelementptr inbounds %struct.text_pos, %struct.text_pos* %pt, i32 0, i32 0
  store i64 %add78, i64* %charpos, align 8
  %71 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte79 = getelementptr inbounds %struct.buffer, %struct.buffer* %71, i32 0, i32 76
  %72 = load i64, i64* %pt_byte79, align 8
  %add80 = add nsw i64 %72, 0
  %bytepos81 = getelementptr inbounds %struct.text_pos, %struct.text_pos* %pt, i32 0, i32 1
  store i64 %add80, i64* %bytepos81, align 8
  %73 = load %struct.window*, %struct.window** %w, align 8
  %74 = bitcast %struct.text_pos* %pt to { i64, i64 }*
  %75 = getelementptr { i64, i64 }, { i64, i64 }* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 1
  %77 = getelementptr { i64, i64 }, { i64, i64 }* %74, i32 0, i32 1
  %78 = load i64, i64* %77, align 1
  call void @start_display(%struct.it* %it, %struct.window* %73, i64 %76, i64 %78)
  %first_visible_x = getelementptr inbounds %struct.it, %struct.it* %it, i32 0, i32 51
  %79 = load i32, i32* %first_visible_x, align 4
  store i32 %79, i32* %first_x, align 4
  %current = getelementptr inbounds %struct.it, %struct.it* %it, i32 0, i32 20
  %pos82 = getelementptr inbounds %struct.display_pos, %struct.display_pos* %current, i32 0, i32 0
  %charpos83 = getelementptr inbounds %struct.text_pos, %struct.text_pos* %pos82, i32 0, i32 0
  %80 = load i64, i64* %charpos83, align 8
  store i64 %80, i64* %it_start, align 8
  %cmp_it = getelementptr inbounds %struct.it, %struct.it* %it, i32 0, i32 37
  %id = getelementptr inbounds %struct.composition_it, %struct.composition_it* %cmp_it, i32 0, i32 1
  %81 = load i64, i64* %id, align 8
  %cmp84 = icmp sge i64 %81, 0
  br i1 %cmp84, label %if.then.86, label %if.else.87

if.then.86:                                       ; preds = %if.end.75
  store i64 0, i64* %it_overshoot_count, align 8
  br label %if.end.127

if.else.87:                                       ; preds = %if.end.75
  %method = getelementptr inbounds %struct.it, %struct.it* %it, i32 0, i32 3
  %82 = load i32, i32* %method, align 4
  %cmp88 = icmp eq i32 %82, 2
  br i1 %cmp88, label %if.then.90, label %if.else.117

if.then.90:                                       ; preds = %if.else.87
  %string = getelementptr inbounds %struct.it, %struct.it* %it, i32 0, i32 25
  %83 = load i64, i64* %string, align 8
  %call91 = call i8* @SSDATA(i64 %83)
  store i8* %call91, i8** %s, align 8
  %84 = load i8*, i8** %s, align 8
  %string92 = getelementptr inbounds %struct.it, %struct.it* %it, i32 0, i32 25
  %85 = load i64, i64* %string92, align 8
  %call93 = call i64 @SBYTES(i64 %85)
  %add.ptr = getelementptr inbounds i8, i8* %84, i64 %call93
  store i8* %add.ptr, i8** %e, align 8
  %area = getelementptr inbounds %struct.it, %struct.it* %it, i32 0, i32 60
  %86 = load i32, i32* %area, align 4
  %cmp94 = icmp eq i32 %86, 1
  br i1 %cmp94, label %land.lhs.true, label %land.end.105

land.lhs.true:                                    ; preds = %if.then.90
  %string_from_display_prop_p = getelementptr inbounds %struct.it, %struct.it* %it, i32 0, i32 11
  %bf.load = load i8, i8* %string_from_display_prop_p, align 8
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %land.rhs, label %land.end.105

land.rhs:                                         ; preds = %land.lhs.true
  %sp = getelementptr inbounds %struct.it, %struct.it* %it, i32 0, i32 28
  %87 = load i32, i32* %sp, align 4
  %cmp97 = icmp sgt i32 %87, 0
  br i1 %cmp97, label %land.rhs.99, label %land.end

land.rhs.99:                                      ; preds = %land.rhs
  %sp100 = getelementptr inbounds %struct.it, %struct.it* %it, i32 0, i32 28
  %88 = load i32, i32* %sp100, align 4
  %sub101 = sub nsw i32 %88, 1
  %idxprom = sext i32 %sub101 to i64
  %stack = getelementptr inbounds %struct.it, %struct.it* %it, i32 0, i32 27
  %arrayidx = getelementptr inbounds [5 x %struct.iterator_stack_entry], [5 x %struct.iterator_stack_entry]* %stack, i32 0, i64 %idxprom
  %method102 = getelementptr inbounds %struct.iterator_stack_entry, %struct.iterator_stack_entry* %arrayidx, i32 0, i32 13
  %89 = load i32, i32* %method102, align 4
  %cmp103 = icmp eq i32 %89, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs.99, %land.rhs
  %90 = phi i1 [ false, %land.rhs ], [ %cmp103, %land.rhs.99 ]
  br label %land.end.105

land.end.105:                                     ; preds = %land.end, %land.lhs.true, %if.then.90
  %91 = phi i1 [ false, %land.lhs.true ], [ false, %if.then.90 ], [ %90, %land.end ]
  %frombool106 = zext i1 %91 to i8
  store i8 %frombool106, i8* %disp_string_at_start_p, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end.113, %land.end.105
  %92 = load i8*, i8** %s, align 8
  %93 = load i8*, i8** %e, align 8
  %cmp107 = icmp ult i8* %92, %93
  br i1 %cmp107, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %94 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  %95 = load i8, i8* %94, align 1
  %conv109 = sext i8 %95 to i32
  %cmp110 = icmp eq i32 %conv109, 10
  br i1 %cmp110, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %while.body
  %96 = load i64, i64* %it_overshoot_count, align 8
  %inc = add nsw i64 %96, 1
  store i64 %inc, i64* %it_overshoot_count, align 8
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.112, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %97 = load i64, i64* %it_overshoot_count, align 8
  %tobool114 = icmp ne i64 %97, 0
  br i1 %tobool114, label %if.end.116, label %if.then.115

if.then.115:                                      ; preds = %while.end
  store i64 -1, i64* %it_overshoot_count, align 8
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.115, %while.end
  br label %if.end.126

if.else.117:                                      ; preds = %if.else.87
  %method118 = getelementptr inbounds %struct.it, %struct.it* %it, i32 0, i32 3
  %98 = load i32, i32* %method118, align 4
  %cmp119 = icmp eq i32 %98, 4
  br i1 %cmp119, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.else.117
  %method121 = getelementptr inbounds %struct.it, %struct.it* %it, i32 0, i32 3
  %99 = load i32, i32* %method121, align 4
  %cmp122 = icmp eq i32 %99, 5
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.else.117
  %100 = phi i1 [ true, %if.else.117 ], [ %cmp122, %lor.rhs ]
  %lnot124 = xor i1 %100, true
  %lnot.ext = zext i1 %lnot124 to i32
  %conv125 = sext i32 %lnot.ext to i64
  store i64 %conv125, i64* %it_overshoot_count, align 8
  br label %if.end.126

if.end.126:                                       ; preds = %lor.end, %if.end.116
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126, %if.then.86
  %101 = load i8, i8* %start_x_given, align 1
  %tobool128 = trunc i8 %101 to i1
  br i1 %tobool128, label %if.then.129, label %if.else.131

if.then.129:                                      ; preds = %if.end.127
  %102 = load double, double* %start_col, align 8
  %conv130 = fptosi double %102 to i32
  %hpos = getelementptr inbounds %struct.it, %struct.it* %it, i32 0, i32 77
  store i32 %conv130, i32* %hpos, align 4
  %103 = load i32, i32* %start_x, align 4
  %current_x = getelementptr inbounds %struct.it, %struct.it* %it, i32 0, i32 71
  store i32 %103, i32* %current_x, align 4
  br label %if.end.134

if.else.131:                                      ; preds = %if.end.127
  call void @reseat_at_previous_visible_line_start(%struct.it* %it)
  %hpos132 = getelementptr inbounds %struct.it, %struct.it* %it, i32 0, i32 77
  store i32 0, i32* %hpos132, align 4
  %current_x133 = getelementptr inbounds %struct.it, %struct.it* %it, i32 0, i32 71
  store i32 0, i32* %current_x133, align 4
  br label %if.end.134

if.end.134:                                       ; preds = %if.else.131, %if.then.129
  %current135 = getelementptr inbounds %struct.it, %struct.it* %it, i32 0, i32 20
  %pos136 = getelementptr inbounds %struct.display_pos, %struct.display_pos* %current135, i32 0, i32 0
  %charpos137 = getelementptr inbounds %struct.text_pos, %struct.text_pos* %pos136, i32 0, i32 0
  %104 = load i64, i64* %charpos137, align 8
  %105 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt138 = getelementptr inbounds %struct.buffer, %struct.buffer* %105, i32 0, i32 75
  %106 = load i64, i64* %pt138, align 8
  %add139 = add nsw i64 %106, 0
  %cmp140 = icmp ne i64 %104, %add139
  br i1 %cmp140, label %if.then.142, label %if.end.174

if.then.142:                                      ; preds = %if.end.134
  %107 = load i8, i8* %disp_string_at_start_p, align 1
  %tobool143 = trunc i8 %107 to i1
  br i1 %tobool143, label %lor.lhs.false, label %cond.true.164

lor.lhs.false:                                    ; preds = %if.then.142
  %current144 = getelementptr inbounds %struct.it, %struct.it* %it, i32 0, i32 20
  %pos145 = getelementptr inbounds %struct.display_pos, %struct.display_pos* %current144, i32 0, i32 0
  %bytepos146 = getelementptr inbounds %struct.text_pos, %struct.text_pos* %pos145, i32 0, i32 1
  %108 = load i64, i64* %bytepos146, align 8
  %109 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %109, i32 0, i32 73
  %110 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %gpt_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %110, i32 0, i32 3
  %111 = load i64, i64* %gpt_byte, align 8
  %cmp147 = icmp sge i64 %108, %111
  br i1 %cmp147, label %cond.true.149, label %cond.false.151

cond.true.149:                                    ; preds = %lor.lhs.false
  %112 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text150 = getelementptr inbounds %struct.buffer, %struct.buffer* %112, i32 0, i32 73
  %113 = load %struct.buffer_text*, %struct.buffer_text** %text150, align 8
  %gap_size = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %113, i32 0, i32 5
  %114 = load i64, i64* %gap_size, align 8
  br label %cond.end.152

cond.false.151:                                   ; preds = %lor.lhs.false
  br label %cond.end.152

cond.end.152:                                     ; preds = %cond.false.151, %cond.true.149
  %cond153 = phi i64 [ %114, %cond.true.149 ], [ 0, %cond.false.151 ]
  %current154 = getelementptr inbounds %struct.it, %struct.it* %it, i32 0, i32 20
  %pos155 = getelementptr inbounds %struct.display_pos, %struct.display_pos* %current154, i32 0, i32 0
  %bytepos156 = getelementptr inbounds %struct.text_pos, %struct.text_pos* %pos155, i32 0, i32 1
  %115 = load i64, i64* %bytepos156, align 8
  %add157 = add nsw i64 %cond153, %115
  %116 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text158 = getelementptr inbounds %struct.buffer, %struct.buffer* %116, i32 0, i32 73
  %117 = load %struct.buffer_text*, %struct.buffer_text** %text158, align 8
  %beg = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %117, i32 0, i32 0
  %118 = load i8*, i8** %beg, align 8
  %add.ptr159 = getelementptr inbounds i8, i8* %118, i64 %add157
  %add.ptr160 = getelementptr inbounds i8, i8* %add.ptr159, i64 -1
  %119 = load i8, i8* %add.ptr160, align 1
  %conv161 = zext i8 %119 to i32
  %cmp162 = icmp eq i32 %conv161, 10
  br i1 %cmp162, label %cond.true.164, label %cond.false.167

cond.true.164:                                    ; preds = %cond.end.152, %if.then.142
  %120 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt165 = getelementptr inbounds %struct.buffer, %struct.buffer* %120, i32 0, i32 75
  %121 = load i64, i64* %pt165, align 8
  %add166 = add nsw i64 %121, 0
  br label %cond.end.171

cond.false.167:                                   ; preds = %cond.end.152
  %122 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt168 = getelementptr inbounds %struct.buffer, %struct.buffer* %122, i32 0, i32 75
  %123 = load i64, i64* %pt168, align 8
  %add169 = add nsw i64 %123, 0
  %sub170 = sub nsw i64 %add169, 1
  br label %cond.end.171

cond.end.171:                                     ; preds = %cond.false.167, %cond.true.164
  %cond172 = phi i64 [ %add166, %cond.true.164 ], [ %sub170, %cond.false.167 ]
  %call173 = call i32 @move_it_to(%struct.it* %it, i64 %cond172, i32 -1, i32 -1, i32 -1, i32 8)
  br label %if.end.174

if.end.174:                                       ; preds = %cond.end.171, %if.end.134
  %current175 = getelementptr inbounds %struct.it, %struct.it* %it, i32 0, i32 20
  %pos176 = getelementptr inbounds %struct.display_pos, %struct.display_pos* %current175, i32 0, i32 0
  %charpos177 = getelementptr inbounds %struct.text_pos, %struct.text_pos* %pos176, i32 0, i32 0
  %124 = load i64, i64* %charpos177, align 8
  %125 = load i64, i64* %it_start, align 8
  %cmp178 = icmp sgt i64 %124, %125
  br i1 %cmp178, label %if.then.180, label %if.else.233

if.then.180:                                      ; preds = %if.end.174
  %126 = load i64, i64* %it_overshoot_count, align 8
  %cmp181 = icmp slt i64 %126, 0
  br i1 %cmp181, label %land.lhs.true.183, label %if.else.191

land.lhs.true.183:                                ; preds = %if.then.180
  %method184 = getelementptr inbounds %struct.it, %struct.it* %it, i32 0, i32 3
  %127 = load i32, i32* %method184, align 4
  %cmp185 = icmp eq i32 %127, 0
  br i1 %cmp185, label %land.lhs.true.187, label %if.else.191

land.lhs.true.187:                                ; preds = %land.lhs.true.183
  %c = getelementptr inbounds %struct.it, %struct.it* %it, i32 0, i32 35
  %128 = load i32, i32* %c, align 4
  %cmp188 = icmp eq i32 %128, 10
  br i1 %cmp188, label %if.then.190, label %if.else.191

if.then.190:                                      ; preds = %land.lhs.true.187
  store i64 1, i64* %it_overshoot_count, align 8
  br label %if.end.215

if.else.191:                                      ; preds = %land.lhs.true.187, %land.lhs.true.183, %if.then.180
  %129 = load i64, i64* %it_overshoot_count, align 8
  %cmp192 = icmp eq i64 %129, 1
  br i1 %cmp192, label %land.lhs.true.194, label %if.else.203

land.lhs.true.194:                                ; preds = %if.else.191
  %vpos195 = getelementptr inbounds %struct.it, %struct.it* %it, i32 0, i32 76
  %130 = load i32, i32* %vpos195, align 4
  %cmp196 = icmp eq i32 %130, 0
  br i1 %cmp196, label %land.lhs.true.198, label %if.else.203

land.lhs.true.198:                                ; preds = %land.lhs.true.194
  %current_x199 = getelementptr inbounds %struct.it, %struct.it* %it, i32 0, i32 71
  %131 = load i32, i32* %current_x199, align 4
  %last_visible_x = getelementptr inbounds %struct.it, %struct.it* %it, i32 0, i32 52
  %132 = load i32, i32* %last_visible_x, align 4
  %cmp200 = icmp slt i32 %131, %132
  br i1 %cmp200, label %if.then.202, label %if.else.203

if.then.202:                                      ; preds = %land.lhs.true.198
  store i64 0, i64* %it_overshoot_count, align 8
  br label %if.end.214

if.else.203:                                      ; preds = %land.lhs.true.198, %land.lhs.true.194, %if.else.191
  %133 = load i8, i8* %disp_string_at_start_p, align 1
  %tobool204 = trunc i8 %133 to i1
  br i1 %tobool204, label %land.lhs.true.206, label %if.end.213

land.lhs.true.206:                                ; preds = %if.else.203
  %vpos207 = getelementptr inbounds %struct.it, %struct.it* %it, i32 0, i32 76
  %134 = load i32, i32* %vpos207, align 4
  %cmp208 = icmp sgt i32 %134, 0
  br i1 %cmp208, label %if.then.210, label %if.end.213

if.then.210:                                      ; preds = %land.lhs.true.206
  %vpos211 = getelementptr inbounds %struct.it, %struct.it* %it, i32 0, i32 76
  %135 = load i32, i32* %vpos211, align 4
  %conv212 = sext i32 %135 to i64
  store i64 %conv212, i64* %it_overshoot_count, align 8
  br label %if.end.213

if.end.213:                                       ; preds = %if.then.210, %land.lhs.true.206, %if.else.203
  br label %if.end.214

if.end.214:                                       ; preds = %if.end.213, %if.then.202
  br label %if.end.215

if.end.215:                                       ; preds = %if.end.214, %if.then.190
  %line_wrap = getelementptr inbounds %struct.it, %struct.it* %it, i32 0, i32 33
  %136 = load i32, i32* %line_wrap, align 4
  %cmp216 = icmp eq i32 %136, 0
  br i1 %cmp216, label %land.lhs.true.218, label %if.end.227

land.lhs.true.218:                                ; preds = %if.end.215
  %current_x219 = getelementptr inbounds %struct.it, %struct.it* %it, i32 0, i32 71
  %137 = load i32, i32* %current_x219, align 4
  %last_visible_x220 = getelementptr inbounds %struct.it, %struct.it* %it, i32 0, i32 52
  %138 = load i32, i32* %last_visible_x220, align 4
  %cmp221 = icmp sge i32 %137, %138
  br i1 %cmp221, label %land.lhs.true.223, label %if.end.227

land.lhs.true.223:                                ; preds = %land.lhs.true.218
  %139 = load i64, i64* %it_overshoot_count, align 8
  %cmp224 = icmp eq i64 %139, 0
  br i1 %cmp224, label %if.then.226, label %if.end.227

if.then.226:                                      ; preds = %land.lhs.true.223
  store i64 1, i64* %it_overshoot_count, align 8
  br label %if.end.227

if.end.227:                                       ; preds = %if.then.226, %land.lhs.true.223, %land.lhs.true.218, %if.end.215
  %140 = load i64, i64* %it_overshoot_count, align 8
  %cmp228 = icmp sgt i64 %140, 0
  br i1 %cmp228, label %if.then.230, label %if.end.232

if.then.230:                                      ; preds = %if.end.227
  %141 = load i64, i64* %it_overshoot_count, align 8
  %sub231 = sub nsw i64 0, %141
  call void @move_it_by_lines(%struct.it* %it, i64 %sub231)
  br label %if.end.232

if.end.232:                                       ; preds = %if.then.230, %if.end.227
  store i8 1, i8* %overshoot_handled, align 1
  br label %if.end.273

if.else.233:                                      ; preds = %if.end.174
  %current234 = getelementptr inbounds %struct.it, %struct.it* %it, i32 0, i32 20
  %pos235 = getelementptr inbounds %struct.display_pos, %struct.display_pos* %current234, i32 0, i32 0
  %charpos236 = getelementptr inbounds %struct.text_pos, %struct.text_pos* %pos235, i32 0, i32 0
  %142 = load i64, i64* %charpos236, align 8
  %143 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt237 = getelementptr inbounds %struct.buffer, %struct.buffer* %143, i32 0, i32 75
  %144 = load i64, i64* %pt237, align 8
  %add238 = add nsw i64 %144, 0
  %sub239 = sub nsw i64 %add238, 1
  %cmp240 = icmp eq i64 %142, %sub239
  br i1 %cmp240, label %land.lhs.true.242, label %if.end.272

land.lhs.true.242:                                ; preds = %if.else.233
  %145 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte243 = getelementptr inbounds %struct.buffer, %struct.buffer* %145, i32 0, i32 76
  %146 = load i64, i64* %pt_byte243, align 8
  %add244 = add nsw i64 %146, 0
  %sub245 = sub nsw i64 %add244, 1
  %147 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text246 = getelementptr inbounds %struct.buffer, %struct.buffer* %147, i32 0, i32 73
  %148 = load %struct.buffer_text*, %struct.buffer_text** %text246, align 8
  %gpt_byte247 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %148, i32 0, i32 3
  %149 = load i64, i64* %gpt_byte247, align 8
  %cmp248 = icmp sge i64 %sub245, %149
  br i1 %cmp248, label %cond.true.250, label %cond.false.253

cond.true.250:                                    ; preds = %land.lhs.true.242
  %150 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text251 = getelementptr inbounds %struct.buffer, %struct.buffer* %150, i32 0, i32 73
  %151 = load %struct.buffer_text*, %struct.buffer_text** %text251, align 8
  %gap_size252 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %151, i32 0, i32 5
  %152 = load i64, i64* %gap_size252, align 8
  br label %cond.end.254

cond.false.253:                                   ; preds = %land.lhs.true.242
  br label %cond.end.254

cond.end.254:                                     ; preds = %cond.false.253, %cond.true.250
  %cond255 = phi i64 [ %152, %cond.true.250 ], [ 0, %cond.false.253 ]
  %153 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte256 = getelementptr inbounds %struct.buffer, %struct.buffer* %153, i32 0, i32 76
  %154 = load i64, i64* %pt_byte256, align 8
  %add257 = add nsw i64 %154, 0
  %sub258 = sub nsw i64 %add257, 1
  %add259 = add nsw i64 %cond255, %sub258
  %155 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text260 = getelementptr inbounds %struct.buffer, %struct.buffer* %155, i32 0, i32 73
  %156 = load %struct.buffer_text*, %struct.buffer_text** %text260, align 8
  %beg261 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %156, i32 0, i32 0
  %157 = load i8*, i8** %beg261, align 8
  %add.ptr262 = getelementptr inbounds i8, i8* %157, i64 %add259
  %add.ptr263 = getelementptr inbounds i8, i8* %add.ptr262, i64 -1
  %158 = load i8, i8* %add.ptr263, align 1
  %conv264 = zext i8 %158 to i32
  %cmp265 = icmp eq i32 %conv264, 10
  br i1 %cmp265, label %land.lhs.true.267, label %if.end.272

land.lhs.true.267:                                ; preds = %cond.end.254
  %159 = load i64, i64* %nlines, align 8
  %cmp268 = icmp sle i64 %159, 0
  br i1 %cmp268, label %if.then.270, label %if.end.272

if.then.270:                                      ; preds = %land.lhs.true.267
  %160 = load i64, i64* %nlines, align 8
  %inc271 = add nsw i64 %160, 1
  store i64 %inc271, i64* %nlines, align 8
  store i32 -1, i32* %vpos_init, align 4
  store i8 1, i8* %overshoot_handled, align 1
  br label %if.end.272

if.end.272:                                       ; preds = %if.then.270, %land.lhs.true.267, %cond.end.254, %if.else.233
  br label %if.end.273

if.end.273:                                       ; preds = %if.end.272, %if.end.232
  %161 = load i8, i8* %lcols_given, align 1
  %tobool274 = trunc i8 %161 to i1
  br i1 %tobool274, label %if.then.275, label %if.end.278

if.then.275:                                      ; preds = %if.end.273
  %162 = load %struct.window*, %struct.window** %w, align 8
  %163 = load i64, i64* %window.addr, align 8
  %164 = load i64, i64* %lcols, align 8
  %call276 = call double @extract_float(i64 %164)
  %165 = load i64, i64* %lcols, align 8
  %call277 = call i32 @window_column_x(%struct.window* %162, i64 %163, double %call276, i64 %165)
  store i32 %call277, i32* %to_x, align 4
  br label %if.end.278

if.end.278:                                       ; preds = %if.then.275, %if.end.273
  %166 = load i64, i64* %nlines, align 8
  %cmp279 = icmp sle i64 %166, 0
  br i1 %cmp279, label %if.then.281, label %if.else.308

if.then.281:                                      ; preds = %if.end.278
  %167 = load i32, i32* %vpos_init, align 4
  %vpos282 = getelementptr inbounds %struct.it, %struct.it* %it, i32 0, i32 76
  store i32 %167, i32* %vpos282, align 4
  %168 = load i64, i64* %nlines, align 8
  %cmp283 = icmp slt i64 %168, 0
  br i1 %cmp283, label %land.lhs.true.285, label %lor.lhs.false.291

land.lhs.true.285:                                ; preds = %if.then.281
  %current286 = getelementptr inbounds %struct.it, %struct.it* %it, i32 0, i32 20
  %pos287 = getelementptr inbounds %struct.display_pos, %struct.display_pos* %current286, i32 0, i32 0
  %charpos288 = getelementptr inbounds %struct.text_pos, %struct.text_pos* %pos287, i32 0, i32 0
  %169 = load i64, i64* %charpos288, align 8
  %cmp289 = icmp sgt i64 %169, 0
  br i1 %cmp289, label %if.then.300, label %lor.lhs.false.291

lor.lhs.false.291:                                ; preds = %land.lhs.true.285, %if.then.281
  %170 = load i64, i64* %nlines, align 8
  %cmp292 = icmp eq i64 %170, 0
  br i1 %cmp292, label %land.lhs.true.294, label %if.end.307

land.lhs.true.294:                                ; preds = %lor.lhs.false.291
  %171 = load i8, i8* %start_x_given, align 1
  %tobool295 = trunc i8 %171 to i1
  br i1 %tobool295, label %land.lhs.true.297, label %if.then.300

land.lhs.true.297:                                ; preds = %land.lhs.true.294
  %172 = load i32, i32* %start_x, align 4
  %173 = load i32, i32* %to_x, align 4
  %cmp298 = icmp sle i32 %172, %173
  br i1 %cmp298, label %if.end.307, label %if.then.300

if.then.300:                                      ; preds = %land.lhs.true.297, %land.lhs.true.294, %land.lhs.true.285
  %174 = load i64, i64* %nlines, align 8
  %cmp301 = icmp sgt i64 -9223372036854775808, %174
  br i1 %cmp301, label %cond.true.303, label %cond.false.304

cond.true.303:                                    ; preds = %if.then.300
  br label %cond.end.305

cond.false.304:                                   ; preds = %if.then.300
  %175 = load i64, i64* %nlines, align 8
  br label %cond.end.305

cond.end.305:                                     ; preds = %cond.false.304, %cond.true.303
  %cond306 = phi i64 [ -9223372036854775808, %cond.true.303 ], [ %175, %cond.false.304 ]
  call void @move_it_by_lines(%struct.it* %it, i64 %cond306)
  br label %if.end.307

if.end.307:                                       ; preds = %cond.end.305, %land.lhs.true.297, %lor.lhs.false.291
  br label %if.end.366

if.else.308:                                      ; preds = %if.end.278
  %176 = load i8, i8* %overshoot_handled, align 1
  %tobool309 = trunc i8 %176 to i1
  br i1 %tobool309, label %if.then.310, label %if.else.318

if.then.310:                                      ; preds = %if.else.308
  %177 = load i32, i32* %vpos_init, align 4
  %vpos311 = getelementptr inbounds %struct.it, %struct.it* %it, i32 0, i32 76
  store i32 %177, i32* %vpos311, align 4
  %178 = load i64, i64* %nlines, align 8
  %cmp312 = icmp slt i64 9223372036854775807, %178
  br i1 %cmp312, label %cond.true.314, label %cond.false.315

cond.true.314:                                    ; preds = %if.then.310
  br label %cond.end.316

cond.false.315:                                   ; preds = %if.then.310
  %179 = load i64, i64* %nlines, align 8
  br label %cond.end.316

cond.end.316:                                     ; preds = %cond.false.315, %cond.true.314
  %cond317 = phi i64 [ 9223372036854775807, %cond.true.314 ], [ %179, %cond.false.315 ]
  call void @move_it_by_lines(%struct.it* %it, i64 %cond317)
  br label %if.end.365

if.else.318:                                      ; preds = %if.else.308
  %180 = load i64, i64* %it_start, align 8
  %181 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %181, i32 0, i32 79
  %182 = load i64, i64* %zv, align 8
  %cmp319 = icmp slt i64 %180, %182
  br i1 %cmp319, label %if.then.321, label %if.else.343

if.then.321:                                      ; preds = %if.else.318
  br label %while.cond.322

while.cond.322:                                   ; preds = %while.body.328, %if.then.321
  %current323 = getelementptr inbounds %struct.it, %struct.it* %it, i32 0, i32 20
  %pos324 = getelementptr inbounds %struct.display_pos, %struct.display_pos* %current323, i32 0, i32 0
  %charpos325 = getelementptr inbounds %struct.text_pos, %struct.text_pos* %pos324, i32 0, i32 0
  %183 = load i64, i64* %charpos325, align 8
  %184 = load i64, i64* %it_start, align 8
  %cmp326 = icmp sle i64 %183, %184
  br i1 %cmp326, label %while.body.328, label %while.end.330

while.body.328:                                   ; preds = %while.cond.322
  %vpos329 = getelementptr inbounds %struct.it, %struct.it* %it, i32 0, i32 76
  store i32 0, i32* %vpos329, align 4
  call void @move_it_by_lines(%struct.it* %it, i64 1)
  br label %while.cond.322

while.end.330:                                    ; preds = %while.cond.322
  %185 = load i64, i64* %nlines, align 8
  %cmp331 = icmp sgt i64 %185, 1
  br i1 %cmp331, label %if.then.333, label %if.end.342

if.then.333:                                      ; preds = %while.end.330
  %186 = load i64, i64* %nlines, align 8
  %sub334 = sub nsw i64 %186, 1
  %cmp335 = icmp slt i64 9223372036854775807, %sub334
  br i1 %cmp335, label %cond.true.337, label %cond.false.338

cond.true.337:                                    ; preds = %if.then.333
  br label %cond.end.340

cond.false.338:                                   ; preds = %if.then.333
  %187 = load i64, i64* %nlines, align 8
  %sub339 = sub nsw i64 %187, 1
  br label %cond.end.340

cond.end.340:                                     ; preds = %cond.false.338, %cond.true.337
  %cond341 = phi i64 [ 9223372036854775807, %cond.true.337 ], [ %sub339, %cond.false.338 ]
  call void @move_it_by_lines(%struct.it* %it, i64 %cond341)
  br label %if.end.342

if.end.342:                                       ; preds = %cond.end.340, %while.end.330
  br label %if.end.364

if.else.343:                                      ; preds = %if.else.318
  %vpos344 = getelementptr inbounds %struct.it, %struct.it* %it, i32 0, i32 76
  store i32 0, i32* %vpos344, align 4
  %188 = load i64, i64* %nlines, align 8
  %cmp345 = icmp slt i64 9223372036854775807, %188
  br i1 %cmp345, label %cond.true.347, label %cond.false.348

cond.true.347:                                    ; preds = %if.else.343
  br label %cond.end.349

cond.false.348:                                   ; preds = %if.else.343
  %189 = load i64, i64* %nlines, align 8
  br label %cond.end.349

cond.end.349:                                     ; preds = %cond.false.348, %cond.true.347
  %cond350 = phi i64 [ 9223372036854775807, %cond.true.347 ], [ %189, %cond.false.348 ]
  call void @move_it_by_lines(%struct.it* %it, i64 %cond350)
  %current351 = getelementptr inbounds %struct.it, %struct.it* %it, i32 0, i32 20
  %pos352 = getelementptr inbounds %struct.display_pos, %struct.display_pos* %current351, i32 0, i32 0
  %charpos353 = getelementptr inbounds %struct.text_pos, %struct.text_pos* %pos352, i32 0, i32 0
  %190 = load i64, i64* %charpos353, align 8
  %charpos354 = getelementptr inbounds %struct.text_pos, %struct.text_pos* %pt, i32 0, i32 0
  %191 = load i64, i64* %charpos354, align 8
  %cmp355 = icmp eq i64 %190, %191
  br i1 %cmp355, label %land.lhs.true.357, label %if.end.363

land.lhs.true.357:                                ; preds = %cond.end.349
  %charpos358 = getelementptr inbounds %struct.text_pos, %struct.text_pos* %pt, i32 0, i32 0
  %192 = load i64, i64* %charpos358, align 8
  %193 = load i64, i64* %it_start, align 8
  %cmp359 = icmp eq i64 %192, %193
  br i1 %cmp359, label %if.then.361, label %if.end.363

if.then.361:                                      ; preds = %land.lhs.true.357
  %vpos362 = getelementptr inbounds %struct.it, %struct.it* %it, i32 0, i32 76
  store i32 0, i32* %vpos362, align 4
  br label %if.end.363

if.end.363:                                       ; preds = %if.then.361, %land.lhs.true.357, %cond.end.349
  br label %if.end.364

if.end.364:                                       ; preds = %if.end.363, %if.end.342
  br label %if.end.365

if.end.365:                                       ; preds = %if.end.364, %cond.end.316
  br label %if.end.366

if.end.366:                                       ; preds = %if.end.365, %if.end.307
  %194 = load i8, i8* %lcols_given, align 1
  %tobool367 = trunc i8 %194 to i1
  br i1 %tobool367, label %if.then.368, label %if.end.408

if.then.368:                                      ; preds = %if.end.366
  %195 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv369 = getelementptr inbounds %struct.buffer, %struct.buffer* %195, i32 0, i32 79
  %196 = load i64, i64* %zv369, align 8
  %197 = load i32, i32* %first_x, align 4
  %198 = load i32, i32* %to_x, align 4
  %add370 = add nsw i32 %197, %198
  call void @move_it_in_display_line(%struct.it* %it, i64 %196, i32 %add370, i32 1)
  %199 = load i64, i64* %nlines, align 8
  %cmp371 = icmp sgt i64 %199, 0
  br i1 %cmp371, label %land.lhs.true.373, label %if.end.407

land.lhs.true.373:                                ; preds = %if.then.368
  %area374 = getelementptr inbounds %struct.it, %struct.it* %it, i32 0, i32 60
  %200 = load i32, i32* %area374, align 4
  %cmp375 = icmp eq i32 %200, 1
  br i1 %cmp375, label %if.then.377, label %if.end.407

if.then.377:                                      ; preds = %land.lhs.true.373
  br label %while.cond.378

while.cond.378:                                   ; preds = %while.body.403, %if.then.377
  %method379 = getelementptr inbounds %struct.it, %struct.it* %it, i32 0, i32 3
  %201 = load i32, i32* %method379, align 4
  %cmp380 = icmp eq i32 %201, 2
  br i1 %cmp380, label %land.lhs.true.382, label %land.end.402

land.lhs.true.382:                                ; preds = %while.cond.378
  %string_from_display_prop_p383 = getelementptr inbounds %struct.it, %struct.it* %it, i32 0, i32 11
  %bf.load384 = load i8, i8* %string_from_display_prop_p383, align 8
  %bf.lshr385 = lshr i8 %bf.load384, 2
  %bf.clear386 = and i8 %bf.lshr385, 1
  %bf.cast387 = trunc i8 %bf.clear386 to i1
  br i1 %bf.cast387, label %land.end.402, label %land.rhs.388

land.rhs.388:                                     ; preds = %land.lhs.true.382
  %string389 = getelementptr inbounds %struct.it, %struct.it* %it, i32 0, i32 25
  %202 = load i64, i64* %string389, align 8
  %call390 = call i8* @SSDATA(i64 %202)
  %current391 = getelementptr inbounds %struct.it, %struct.it* %it, i32 0, i32 20
  %string_pos = getelementptr inbounds %struct.display_pos, %struct.display_pos* %current391, i32 0, i32 2
  %bytepos392 = getelementptr inbounds %struct.text_pos, %struct.text_pos* %string_pos, i32 0, i32 1
  %203 = load i64, i64* %bytepos392, align 8
  %add.ptr393 = getelementptr inbounds i8, i8* %call390, i64 %203
  %string394 = getelementptr inbounds %struct.it, %struct.it* %it, i32 0, i32 25
  %204 = load i64, i64* %string394, align 8
  %call395 = call i64 @SBYTES(i64 %204)
  %current396 = getelementptr inbounds %struct.it, %struct.it* %it, i32 0, i32 20
  %string_pos397 = getelementptr inbounds %struct.display_pos, %struct.display_pos* %current396, i32 0, i32 2
  %bytepos398 = getelementptr inbounds %struct.text_pos, %struct.text_pos* %string_pos397, i32 0, i32 1
  %205 = load i64, i64* %bytepos398, align 8
  %sub399 = sub nsw i64 %call395, %205
  %call400 = call i8* @memchr(i8* %add.ptr393, i32 10, i64 %sub399) #6
  %tobool401 = icmp ne i8* %call400, null
  br label %land.end.402

land.end.402:                                     ; preds = %land.rhs.388, %land.lhs.true.382, %while.cond.378
  %206 = phi i1 [ false, %land.lhs.true.382 ], [ false, %while.cond.378 ], [ %tobool401, %land.rhs.388 ]
  br i1 %206, label %while.body.403, label %while.end.406

while.body.403:                                   ; preds = %land.end.402
  call void @move_it_by_lines(%struct.it* %it, i64 1)
  %207 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv404 = getelementptr inbounds %struct.buffer, %struct.buffer* %207, i32 0, i32 79
  %208 = load i64, i64* %zv404, align 8
  %209 = load i32, i32* %first_x, align 4
  %210 = load i32, i32* %to_x, align 4
  %add405 = add nsw i32 %209, %210
  call void @move_it_in_display_line(%struct.it* %it, i64 %208, i32 %add405, i32 1)
  br label %while.cond.378

while.end.406:                                    ; preds = %land.end.402
  br label %if.end.407

if.end.407:                                       ; preds = %while.end.406, %land.lhs.true.373, %if.then.368
  br label %if.end.408

if.end.408:                                       ; preds = %if.end.407, %if.end.366
  %current409 = getelementptr inbounds %struct.it, %struct.it* %it, i32 0, i32 20
  %pos410 = getelementptr inbounds %struct.display_pos, %struct.display_pos* %current409, i32 0, i32 0
  %charpos411 = getelementptr inbounds %struct.text_pos, %struct.text_pos* %pos410, i32 0, i32 0
  %211 = load i64, i64* %charpos411, align 8
  %current412 = getelementptr inbounds %struct.it, %struct.it* %it, i32 0, i32 20
  %pos413 = getelementptr inbounds %struct.display_pos, %struct.display_pos* %current412, i32 0, i32 0
  %bytepos414 = getelementptr inbounds %struct.text_pos, %struct.text_pos* %pos413, i32 0, i32 1
  %212 = load i64, i64* %bytepos414, align 8
  call void @set_point_both(i64 %211, i64 %212)
  %213 = load i8*, i8** %itdata, align 8
  call void @bidi_unshelve_cache(i8* %213, i1 zeroext false)
  br label %if.end.415

if.end.415:                                       ; preds = %if.end.408, %if.then.58
  %214 = load i64, i64* %old_buffer, align 8
  %call416 = call zeroext i1 @BUFFERP(i64 %214)
  br i1 %call416, label %if.then.417, label %if.end.421

if.then.417:                                      ; preds = %if.end.415
  %215 = load %struct.window*, %struct.window** %w, align 8
  %216 = load i64, i64* %old_buffer, align 8
  call void @wset_buffer(%struct.window* %215, i64 %216)
  %217 = load %struct.window*, %struct.window** %w, align 8
  %pointm418 = getelementptr inbounds %struct.window, %struct.window* %217, i32 0, i32 12
  %218 = load i64, i64* %pointm418, align 8
  %219 = load %struct.window*, %struct.window** %w, align 8
  %contents419 = getelementptr inbounds %struct.window, %struct.window* %219, i32 0, i32 10
  %220 = load i64, i64* %contents419, align 8
  %221 = load i64, i64* %old_charpos, align 8
  %222 = load i64, i64* %old_bytepos, align 8
  %call420 = call i64 @set_marker_both(i64 %218, i64 %220, i64 %221, i64 %222)
  br label %if.end.421

if.end.421:                                       ; preds = %if.then.417, %if.end.415
  %vpos422 = getelementptr inbounds %struct.it, %struct.it* %it, i32 0, i32 76
  %223 = load i32, i32* %vpos422, align 4
  %conv423 = sext i32 %223 to i64
  %shl = shl i64 %conv423, 2
  %add424 = add i64 %shl, 2
  ret i64 %add424
}

declare %struct.buffer* @XBUFFER(i64) #1

declare i64 @marker_byte_position(i64) #1

declare void @wset_buffer(%struct.window*, i64) #1

declare i64 @set_marker_both(i64, i64, i64, i64) #1

declare double @extract_float(i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @window_column_x(%struct.window* %w, i64 %window, double %col, i64 %column) #0 {
entry:
  %w.addr = alloca %struct.window*, align 8
  %window.addr = alloca i64, align 8
  %col.addr = alloca double, align 8
  %column.addr = alloca i64, align 8
  %x = alloca double, align 8
  store %struct.window* %w, %struct.window** %w.addr, align 8
  store i64 %window, i64* %window.addr, align 8
  store double %col, double* %col.addr, align 8
  store i64 %column, i64* %column.addr, align 8
  %0 = load double, double* %col.addr, align 8
  %1 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame = getelementptr inbounds %struct.window, %struct.window* %1, i32 0, i32 1
  %2 = load i64, i64* %frame, align 8
  %sub = sub nsw i64 %2, 5
  %3 = inttoptr i64 %sub to i8*
  %4 = bitcast i8* %3 to %struct.frame*
  %column_width = getelementptr inbounds %struct.frame, %struct.frame* %4, i32 0, i32 59
  %5 = load i32, i32* %column_width, align 4
  %conv = sitofp i32 %5 to double
  %mul = fmul double %0, %conv
  %add = fadd double %mul, 5.000000e-01
  store double %add, double* %x, align 8
  %6 = load double, double* %x, align 8
  %cmp = fcmp ole double 0xC1E0000000000000, %6
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %7 = load double, double* %x, align 8
  %cmp2 = fcmp ole double %7, 0x41DFFFFFFFC00000
  br i1 %cmp2, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  %8 = load i64, i64* %window.addr, align 8
  %9 = load i64, i64* %column.addr, align 8
  call void @args_out_of_range(i64 %8, i64 %9) #5
  unreachable

if.end:                                           ; preds = %land.lhs.true
  %10 = load double, double* %x, align 8
  %conv4 = fptosi double %10 to i32
  ret i32 %conv4
}

declare i8* @bidi_shelve_cache() #1

declare void @start_display(%struct.it*, %struct.window*, i64, i64) #1

declare i8* @SSDATA(i64) #1

declare i64 @SBYTES(i64) #1

declare void @reseat_at_previous_visible_line_start(%struct.it*) #1

declare i32 @move_it_to(%struct.it*, i64, i32, i32, i32, i32) #1

declare void @move_it_by_lines(%struct.it*, i64) #1

declare void @move_it_in_display_line(%struct.it*, i64, i32, i32) #1

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #4

declare void @bidi_unshelve_cache(i8*, i1 zeroext) #1

declare zeroext i1 @BUFFERP(i64) #1

; Function Attrs: nounwind uwtable
define void @syms_of_indent() #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %entry
  call void @defvar_bool(%struct.Lisp_Boolfwd* @syms_of_indent.b_fwd, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 446))
  br label %do.end

do.end:                                           ; preds = %do.body
  store i8 1, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 446), align 1
  call void @defsubr(%struct.Lisp_Subr* @Scurrent_indentation)
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sindent_to to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* @Scurrent_column)
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Smove_to_column to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Svertical_motion to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Scompute_motion to %struct.Lisp_Subr*))
  ret void
}

declare void @defvar_bool(%struct.Lisp_Boolfwd*, i8*, i8*) #1

declare void @defsubr(%struct.Lisp_Subr*) #1

declare i64 @buf_bytepos_to_charpos(%struct.buffer*, i64) #1

declare zeroext i1 @CHAR_HAS_CATEGORY(i32, i32) #1

declare i64 @Fget_buffer_window(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @check_display_width(i64 %pos, i64 %col, i64* %endpos) #0 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca i64, align 8
  %col.addr = alloca i64, align 8
  %endpos.addr = alloca i64*, align 8
  %val = alloca i64, align 8
  %overlay = alloca i64, align 8
  %plist = alloca i64, align 8
  %prop = alloca i64, align 8
  %width = alloca i32, align 4
  %align_to_max = alloca i64, align 8
  %start = alloca i64, align 8
  %b = alloca i32, align 4
  %wd = alloca i32, align 4
  %p = alloca i8*, align 8
  %ch = alloca i32, align 4
  store i64 %pos, i64* %pos.addr, align 8
  store i64 %col, i64* %col.addr, align 8
  store i64* %endpos, i64** %endpos.addr, align 8
  %0 = load i64, i64* %pos.addr, align 8
  %shl = shl i64 %0, 2
  %add = add i64 %shl, 2
  %call = call i64 @builtin_lisp_symbol(i32 344)
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %call2 = call i64 @get_char_property_and_overlay(i64 %add, i64 %call, i64 %call1, i64* %overlay)
  store i64 %call2, i64* %val, align 8
  %and = and i64 %call2, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %land.lhs.true, label %if.end.346

land.lhs.true:                                    ; preds = %entry
  %call4 = call i64 @builtin_lisp_symbol(i32 868)
  %1 = load i64, i64* %val, align 8
  %sub = sub nsw i64 %1, 3
  %2 = inttoptr i64 %sub to i8*
  %3 = bitcast i8* %2 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %3, i32 0, i32 0
  %4 = load i64, i64* %car, align 8
  %cmp5 = icmp eq i64 %call4, %4
  br i1 %cmp5, label %if.then, label %if.end.346

if.then:                                          ; preds = %land.lhs.true
  %5 = load i64, i64* %val, align 8
  %sub7 = sub nsw i64 %5, 3
  %6 = inttoptr i64 %sub7 to i8*
  %7 = bitcast i8* %6 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %7, i32 0, i32 1
  %cdr = bitcast %union.anon.10* %u to i64*
  %8 = load i64, i64* %cdr, align 8
  store i64 %8, i64* %plist, align 8
  store i32 -1, i32* %width, align 4
  %9 = load i64, i64* %col.addr, align 8
  %cmp8 = icmp slt i64 %9, 2305843007066210304
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %10 = load i64, i64* %col.addr, align 8
  %add10 = add nsw i64 2147483647, %10
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add10, %cond.true ], [ 2305843009213693951, %cond.false ]
  store i64 %cond, i64* %align_to_max, align 8
  %11 = load i64, i64* %plist, align 8
  %call11 = call i64 @builtin_lisp_symbol(i32 139)
  %call12 = call i64 @Fplist_get(i64 %11, i64 %call11)
  store i64 %call12, i64* %prop, align 8
  %12 = load i64, i64* %prop, align 8
  %call13 = call zeroext i1 @RANGED_INTEGERP(i64 0, i64 %12, i64 2147483647)
  br i1 %call13, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %13 = load i64, i64* %plist, align 8
  %call15 = call i64 @builtin_lisp_symbol(i32 106)
  %call16 = call i64 @Fplist_get(i64 %13, i64 %call15)
  store i64 %call16, i64* %prop, align 8
  %14 = load i64, i64* %prop, align 8
  %call17 = call zeroext i1 @RANGED_INTEGERP(i64 0, i64 %14, i64 2147483647)
  br i1 %call17, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %lor.lhs.false, %cond.end
  %15 = load i64, i64* %prop, align 8
  %shr = ashr i64 %15, 2
  %conv20 = trunc i64 %shr to i32
  store i32 %conv20, i32* %width, align 4
  br label %if.end.69

if.else:                                          ; preds = %lor.lhs.false
  %16 = load i64, i64* %prop, align 8
  %and21 = and i64 %16, 7
  %conv22 = trunc i64 %and21 to i32
  %cmp23 = icmp eq i32 %conv22, 7
  br i1 %cmp23, label %land.lhs.true.25, label %if.else.37

land.lhs.true.25:                                 ; preds = %if.else
  %17 = load i64, i64* %prop, align 8
  %call26 = call double @XFLOAT_DATA(i64 %17)
  %cmp27 = fcmp ole double 0.000000e+00, %call26
  br i1 %cmp27, label %land.lhs.true.29, label %if.else.37

land.lhs.true.29:                                 ; preds = %land.lhs.true.25
  %18 = load i64, i64* %prop, align 8
  %call30 = call double @XFLOAT_DATA(i64 %18)
  %cmp31 = fcmp ole double %call30, 0x41DFFFFFFFC00000
  br i1 %cmp31, label %if.then.33, label %if.else.37

if.then.33:                                       ; preds = %land.lhs.true.29
  %19 = load i64, i64* %prop, align 8
  %call34 = call double @XFLOAT_DATA(i64 %19)
  %add35 = fadd double %call34, 5.000000e-01
  %conv36 = fptosi double %add35 to i32
  store i32 %conv36, i32* %width, align 4
  br label %if.end.68

if.else.37:                                       ; preds = %land.lhs.true.29, %land.lhs.true.25, %if.else
  %20 = load i64, i64* %plist, align 8
  %call38 = call i64 @builtin_lisp_symbol(i32 7)
  %call39 = call i64 @Fplist_get(i64 %20, i64 %call38)
  store i64 %call39, i64* %prop, align 8
  %21 = load i64, i64* %col.addr, align 8
  %22 = load i64, i64* %prop, align 8
  %23 = load i64, i64* %align_to_max, align 8
  %call40 = call zeroext i1 @RANGED_INTEGERP(i64 %21, i64 %22, i64 %23)
  br i1 %call40, label %if.then.41, label %if.else.45

if.then.41:                                       ; preds = %if.else.37
  %24 = load i64, i64* %prop, align 8
  %shr42 = ashr i64 %24, 2
  %25 = load i64, i64* %col.addr, align 8
  %sub43 = sub nsw i64 %shr42, %25
  %conv44 = trunc i64 %sub43 to i32
  store i32 %conv44, i32* %width, align 4
  br label %if.end.67

if.else.45:                                       ; preds = %if.else.37
  %26 = load i64, i64* %prop, align 8
  %and46 = and i64 %26, 7
  %conv47 = trunc i64 %and46 to i32
  %cmp48 = icmp eq i32 %conv47, 7
  br i1 %cmp48, label %land.lhs.true.50, label %if.end

land.lhs.true.50:                                 ; preds = %if.else.45
  %27 = load i64, i64* %col.addr, align 8
  %conv51 = sitofp i64 %27 to double
  %28 = load i64, i64* %prop, align 8
  %call52 = call double @XFLOAT_DATA(i64 %28)
  %cmp53 = fcmp ole double %conv51, %call52
  br i1 %cmp53, label %land.lhs.true.55, label %if.end

land.lhs.true.55:                                 ; preds = %land.lhs.true.50
  %29 = load i64, i64* %prop, align 8
  %call56 = call double @XFLOAT_DATA(i64 %29)
  %30 = load i64, i64* %align_to_max, align 8
  %conv57 = sitofp i64 %30 to double
  %cmp58 = fcmp ole double %call56, %conv57
  br i1 %cmp58, label %if.then.60, label %if.end

if.then.60:                                       ; preds = %land.lhs.true.55
  %31 = load i64, i64* %prop, align 8
  %call61 = call double @XFLOAT_DATA(i64 %31)
  %add62 = fadd double %call61, 5.000000e-01
  %conv63 = fptosi double %add62 to i32
  %conv64 = sext i32 %conv63 to i64
  %32 = load i64, i64* %col.addr, align 8
  %sub65 = sub nsw i64 %conv64, %32
  %conv66 = trunc i64 %sub65 to i32
  store i32 %conv66, i32* %width, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.60, %land.lhs.true.55, %land.lhs.true.50, %if.else.45
  br label %if.end.67

if.end.67:                                        ; preds = %if.end, %if.then.41
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.then.33
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.then.19
  %33 = load i32, i32* %width, align 4
  %cmp70 = icmp sge i32 %33, 0
  br i1 %cmp70, label %if.then.72, label %if.end.345

if.then.72:                                       ; preds = %if.end.69
  %34 = load i64, i64* %overlay, align 8
  %call73 = call zeroext i1 @OVERLAYP(i64 %34)
  br i1 %call73, label %if.then.74, label %if.else.93

if.then.74:                                       ; preds = %if.then.72
  %35 = load i64, i64* %overlay, align 8
  %call75 = call %struct.Lisp_Overlay* @XOVERLAY(i64 %35)
  %end = getelementptr inbounds %struct.Lisp_Overlay, %struct.Lisp_Overlay* %call75, i32 0, i32 3
  %36 = load i64, i64* %end, align 8
  %and76 = and i64 %36, 7
  %conv77 = trunc i64 %and76 to i32
  %cmp78 = icmp eq i32 %conv77, 1
  br i1 %cmp78, label %land.lhs.true.80, label %cond.false.90

land.lhs.true.80:                                 ; preds = %if.then.74
  %37 = load i64, i64* %overlay, align 8
  %call81 = call %struct.Lisp_Overlay* @XOVERLAY(i64 %37)
  %end82 = getelementptr inbounds %struct.Lisp_Overlay, %struct.Lisp_Overlay* %call81, i32 0, i32 3
  %38 = load i64, i64* %end82, align 8
  %call83 = call i32 @XMISCTYPE(i64 %38)
  %cmp84 = icmp eq i32 %call83, 24236
  br i1 %cmp84, label %cond.true.86, label %cond.false.90

cond.true.86:                                     ; preds = %land.lhs.true.80
  %39 = load i64, i64* %overlay, align 8
  %call87 = call %struct.Lisp_Overlay* @XOVERLAY(i64 %39)
  %end88 = getelementptr inbounds %struct.Lisp_Overlay, %struct.Lisp_Overlay* %call87, i32 0, i32 3
  %40 = load i64, i64* %end88, align 8
  %call89 = call i64 @marker_position(i64 %40)
  br label %cond.end.91

cond.false.90:                                    ; preds = %land.lhs.true.80, %if.then.74
  call void @emacs_abort() #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.91

cond.end.91:                                      ; preds = %41, %cond.true.86
  %cond92 = phi i64 [ %call89, %cond.true.86 ], [ 0, %41 ]
  %42 = load i64*, i64** %endpos.addr, align 8
  store i64 %cond92, i64* %42, align 8
  br label %if.end.97

if.else.93:                                       ; preds = %if.then.72
  %43 = load i64, i64* %pos.addr, align 8
  %call94 = call i64 @builtin_lisp_symbol(i32 344)
  %44 = load i64*, i64** %endpos.addr, align 8
  %call95 = call i64 @builtin_lisp_symbol(i32 0)
  %call96 = call zeroext i1 @get_property_and_range(i64 %43, i64 %call94, i64* %val, i64* %start, i64* %44, i64 %call95)
  br label %if.end.97

if.end.97:                                        ; preds = %if.else.93, %cond.end.91
  %45 = load i64, i64* %plist, align 8
  %call98 = call i64 @builtin_lisp_symbol(i32 106)
  %call99 = call i64 @Fplist_get(i64 %45, i64 %call98)
  %call100 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp101 = icmp eq i64 %call99, %call100
  br i1 %cmp101, label %if.end.344, label %land.lhs.true.103

land.lhs.true.103:                                ; preds = %if.end.97
  %46 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_ = getelementptr inbounds %struct.buffer, %struct.buffer* %46, i32 0, i32 39
  %47 = load i64, i64* %enable_multibyte_characters_, align 8
  %call104 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp105 = icmp eq i64 %47, %call104
  br i1 %cmp105, label %if.end.344, label %if.then.107

if.then.107:                                      ; preds = %land.lhs.true.103
  %48 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %49 = load i64, i64* %pos.addr, align 8
  %call108 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %48, i64 %49)
  %50 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %50, i32 0, i32 73
  %51 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %gpt_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %51, i32 0, i32 3
  %52 = load i64, i64* %gpt_byte, align 8
  %cmp109 = icmp sge i64 %call108, %52
  br i1 %cmp109, label %cond.true.111, label %cond.false.113

cond.true.111:                                    ; preds = %if.then.107
  %53 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text112 = getelementptr inbounds %struct.buffer, %struct.buffer* %53, i32 0, i32 73
  %54 = load %struct.buffer_text*, %struct.buffer_text** %text112, align 8
  %gap_size = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %54, i32 0, i32 5
  %55 = load i64, i64* %gap_size, align 8
  br label %cond.end.114

cond.false.113:                                   ; preds = %if.then.107
  br label %cond.end.114

cond.end.114:                                     ; preds = %cond.false.113, %cond.true.111
  %cond115 = phi i64 [ %55, %cond.true.111 ], [ 0, %cond.false.113 ]
  %56 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %57 = load i64, i64* %pos.addr, align 8
  %call116 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %56, i64 %57)
  %add117 = add nsw i64 %cond115, %call116
  %58 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text118 = getelementptr inbounds %struct.buffer, %struct.buffer* %58, i32 0, i32 73
  %59 = load %struct.buffer_text*, %struct.buffer_text** %text118, align 8
  %beg = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %59, i32 0, i32 0
  %60 = load i8*, i8** %beg, align 8
  %add.ptr = getelementptr inbounds i8, i8* %60, i64 %add117
  %add.ptr119 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8* %add.ptr119, i8** %p, align 8
  br label %do.body

do.body:                                          ; preds = %cond.end.114
  %61 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %61, i64 0
  %62 = load i8, i8* %arrayidx, align 1
  %conv120 = zext i8 %62 to i32
  %and121 = and i32 %conv120, 128
  %tobool = icmp ne i32 %and121, 0
  br i1 %tobool, label %cond.false.125, label %cond.true.122

cond.true.122:                                    ; preds = %do.body
  store i32 1, i32* %b, align 4
  %63 = load i8*, i8** %p, align 8
  %arrayidx123 = getelementptr inbounds i8, i8* %63, i64 0
  %64 = load i8, i8* %arrayidx123, align 1
  %conv124 = zext i8 %64 to i32
  br label %cond.end.169

cond.false.125:                                   ; preds = %do.body
  %65 = load i8*, i8** %p, align 8
  %arrayidx126 = getelementptr inbounds i8, i8* %65, i64 0
  %66 = load i8, i8* %arrayidx126, align 1
  %conv127 = zext i8 %66 to i32
  %and128 = and i32 %conv127, 32
  %tobool129 = icmp ne i32 %and128, 0
  br i1 %tobool129, label %cond.false.144, label %cond.true.130

cond.true.130:                                    ; preds = %cond.false.125
  store i32 2, i32* %b, align 4
  %67 = load i8*, i8** %p, align 8
  %arrayidx131 = getelementptr inbounds i8, i8* %67, i64 0
  %68 = load i8, i8* %arrayidx131, align 1
  %conv132 = zext i8 %68 to i32
  %and133 = and i32 %conv132, 31
  %shl134 = shl i32 %and133, 6
  %69 = load i8*, i8** %p, align 8
  %arrayidx135 = getelementptr inbounds i8, i8* %69, i64 1
  %70 = load i8, i8* %arrayidx135, align 1
  %conv136 = zext i8 %70 to i32
  %and137 = and i32 %conv136, 63
  %or = or i32 %shl134, %and137
  %71 = load i8*, i8** %p, align 8
  %arrayidx138 = getelementptr inbounds i8, i8* %71, i64 0
  %72 = load i8, i8* %arrayidx138, align 1
  %conv139 = zext i8 %72 to i32
  %cmp140 = icmp slt i32 %conv139, 194
  %cond142 = select i1 %cmp140, i32 4194176, i32 0
  %add143 = add nsw i32 %or, %cond142
  br label %cond.end.167

cond.false.144:                                   ; preds = %cond.false.125
  %73 = load i8*, i8** %p, align 8
  %arrayidx145 = getelementptr inbounds i8, i8* %73, i64 0
  %74 = load i8, i8* %arrayidx145, align 1
  %conv146 = zext i8 %74 to i32
  %and147 = and i32 %conv146, 16
  %tobool148 = icmp ne i32 %and147, 0
  br i1 %tobool148, label %cond.false.163, label %cond.true.149

cond.true.149:                                    ; preds = %cond.false.144
  store i32 3, i32* %b, align 4
  %75 = load i8*, i8** %p, align 8
  %arrayidx150 = getelementptr inbounds i8, i8* %75, i64 0
  %76 = load i8, i8* %arrayidx150, align 1
  %conv151 = zext i8 %76 to i32
  %and152 = and i32 %conv151, 15
  %shl153 = shl i32 %and152, 12
  %77 = load i8*, i8** %p, align 8
  %arrayidx154 = getelementptr inbounds i8, i8* %77, i64 1
  %78 = load i8, i8* %arrayidx154, align 1
  %conv155 = zext i8 %78 to i32
  %and156 = and i32 %conv155, 63
  %shl157 = shl i32 %and156, 6
  %or158 = or i32 %shl153, %shl157
  %79 = load i8*, i8** %p, align 8
  %arrayidx159 = getelementptr inbounds i8, i8* %79, i64 2
  %80 = load i8, i8* %arrayidx159, align 1
  %conv160 = zext i8 %80 to i32
  %and161 = and i32 %conv160, 63
  %or162 = or i32 %or158, %and161
  br label %cond.end.165

cond.false.163:                                   ; preds = %cond.false.144
  %81 = load i8*, i8** %p, align 8
  %call164 = call i32 @string_char(i8* %81, i8** null, i32* %b)
  br label %cond.end.165

cond.end.165:                                     ; preds = %cond.false.163, %cond.true.149
  %cond166 = phi i32 [ %or162, %cond.true.149 ], [ %call164, %cond.false.163 ]
  br label %cond.end.167

cond.end.167:                                     ; preds = %cond.end.165, %cond.true.130
  %cond168 = phi i32 [ %add143, %cond.true.130 ], [ %cond166, %cond.end.165 ]
  br label %cond.end.169

cond.end.169:                                     ; preds = %cond.end.167, %cond.true.122
  %cond170 = phi i32 [ %conv124, %cond.true.122 ], [ %cond168, %cond.end.167 ]
  store i32 %cond170, i32* %ch, align 4
  %82 = load i8*, i8** %p, align 8
  %83 = load i8, i8* %82, align 1
  %conv171 = zext i8 %83 to i32
  %and172 = and i32 %conv171, 128
  %tobool173 = icmp ne i32 %and172, 0
  br i1 %tobool173, label %cond.false.175, label %cond.true.174

cond.true.174:                                    ; preds = %cond.end.169
  br label %cond.end.194

cond.false.175:                                   ; preds = %cond.end.169
  %84 = load i8*, i8** %p, align 8
  %85 = load i8, i8* %84, align 1
  %conv176 = zext i8 %85 to i32
  %and177 = and i32 %conv176, 32
  %tobool178 = icmp ne i32 %and177, 0
  br i1 %tobool178, label %cond.false.180, label %cond.true.179

cond.true.179:                                    ; preds = %cond.false.175
  br label %cond.end.192

cond.false.180:                                   ; preds = %cond.false.175
  %86 = load i8*, i8** %p, align 8
  %87 = load i8, i8* %86, align 1
  %conv181 = zext i8 %87 to i32
  %and182 = and i32 %conv181, 16
  %tobool183 = icmp ne i32 %and182, 0
  br i1 %tobool183, label %cond.false.185, label %cond.true.184

cond.true.184:                                    ; preds = %cond.false.180
  br label %cond.end.190

cond.false.185:                                   ; preds = %cond.false.180
  %88 = load i8*, i8** %p, align 8
  %89 = load i8, i8* %88, align 1
  %conv186 = zext i8 %89 to i32
  %and187 = and i32 %conv186, 8
  %tobool188 = icmp ne i32 %and187, 0
  %lnot = xor i1 %tobool188, true
  %cond189 = select i1 %lnot, i32 4, i32 5
  br label %cond.end.190

cond.end.190:                                     ; preds = %cond.false.185, %cond.true.184
  %cond191 = phi i32 [ 3, %cond.true.184 ], [ %cond189, %cond.false.185 ]
  br label %cond.end.192

cond.end.192:                                     ; preds = %cond.end.190, %cond.true.179
  %cond193 = phi i32 [ 2, %cond.true.179 ], [ %cond191, %cond.end.190 ]
  br label %cond.end.194

cond.end.194:                                     ; preds = %cond.end.192, %cond.true.174
  %cond195 = phi i32 [ 1, %cond.true.174 ], [ %cond193, %cond.end.192 ]
  %90 = load i32, i32* %b, align 4
  %cmp196 = icmp ne i32 %cond195, %90
  br i1 %cmp196, label %if.then.198, label %if.else.199

if.then.198:                                      ; preds = %cond.end.194
  %91 = load i32, i32* %b, align 4
  %mul = mul nsw i32 %91, 4
  store i32 %mul, i32* %wd, align 4
  br label %if.end.342

if.else.199:                                      ; preds = %cond.end.194
  %call200 = call %struct.Lisp_Char_Table* @buffer_display_table()
  %cmp201 = icmp ne %struct.Lisp_Char_Table* %call200, null
  br i1 %cmp201, label %land.lhs.true.203, label %if.else.289

land.lhs.true.203:                                ; preds = %if.else.199
  br i1 true, label %cond.true.204, label %cond.false.208

cond.true.204:                                    ; preds = %land.lhs.true.203
  %92 = load i32, i32* %ch, align 4
  %add205 = add i32 %92, 0
  %cmp206 = icmp ult i32 %add205, 128
  br i1 %cmp206, label %cond.true.213, label %cond.false.237

cond.false.208:                                   ; preds = %land.lhs.true.203
  %93 = load i32, i32* %ch, align 4
  %conv209 = sext i32 %93 to i64
  %add210 = add i64 %conv209, 0
  %cmp211 = icmp ult i64 %add210, 128
  br i1 %cmp211, label %cond.true.213, label %cond.false.237

cond.true.213:                                    ; preds = %cond.false.208, %cond.true.204
  %call214 = call %struct.Lisp_Char_Table* @buffer_display_table()
  %ascii = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call214, i32 0, i32 4
  %94 = load i64, i64* %ascii, align 8
  %call215 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp216 = icmp eq i64 %94, %call215
  br i1 %cmp216, label %cond.true.218, label %cond.false.220

cond.true.218:                                    ; preds = %cond.true.213
  %call219 = call %struct.Lisp_Char_Table* @buffer_display_table()
  %defalt = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call219, i32 0, i32 1
  %95 = load i64, i64* %defalt, align 8
  br label %cond.end.235

cond.false.220:                                   ; preds = %cond.true.213
  %call221 = call %struct.Lisp_Char_Table* @buffer_display_table()
  %ascii222 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call221, i32 0, i32 4
  %96 = load i64, i64* %ascii222, align 8
  %call223 = call zeroext i1 @SUB_CHAR_TABLE_P(i64 %96)
  br i1 %call223, label %cond.true.225, label %cond.false.230

cond.true.225:                                    ; preds = %cond.false.220
  %97 = load i32, i32* %ch, align 4
  %idxprom = sext i32 %97 to i64
  %call226 = call %struct.Lisp_Char_Table* @buffer_display_table()
  %ascii227 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call226, i32 0, i32 4
  %98 = load i64, i64* %ascii227, align 8
  %call228 = call %struct.Lisp_Sub_Char_Table* @XSUB_CHAR_TABLE(i64 %98)
  %contents = getelementptr inbounds %struct.Lisp_Sub_Char_Table, %struct.Lisp_Sub_Char_Table* %call228, i32 0, i32 3
  %arrayidx229 = getelementptr inbounds [0 x i64], [0 x i64]* %contents, i32 0, i64 %idxprom
  %99 = load i64, i64* %arrayidx229, align 8
  br label %cond.end.233

cond.false.230:                                   ; preds = %cond.false.220
  %call231 = call %struct.Lisp_Char_Table* @buffer_display_table()
  %ascii232 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call231, i32 0, i32 4
  %100 = load i64, i64* %ascii232, align 8
  br label %cond.end.233

cond.end.233:                                     ; preds = %cond.false.230, %cond.true.225
  %cond234 = phi i64 [ %99, %cond.true.225 ], [ %100, %cond.false.230 ]
  br label %cond.end.235

cond.end.235:                                     ; preds = %cond.end.233, %cond.true.218
  %cond236 = phi i64 [ %95, %cond.true.218 ], [ %cond234, %cond.end.233 ]
  br label %cond.end.240

cond.false.237:                                   ; preds = %cond.false.208, %cond.true.204
  %call238 = call %struct.Lisp_Char_Table* @buffer_display_table()
  %101 = load i32, i32* %ch, align 4
  %call239 = call i64 @disp_char_vector(%struct.Lisp_Char_Table* %call238, i32 %101)
  br label %cond.end.240

cond.end.240:                                     ; preds = %cond.false.237, %cond.end.235
  %cond241 = phi i64 [ %cond236, %cond.end.235 ], [ %call239, %cond.false.237 ]
  %call242 = call zeroext i1 @VECTORP(i64 %cond241)
  br i1 %call242, label %if.then.244, label %if.else.289

if.then.244:                                      ; preds = %cond.end.240
  br i1 true, label %cond.true.245, label %cond.false.249

cond.true.245:                                    ; preds = %if.then.244
  %102 = load i32, i32* %ch, align 4
  %add246 = add i32 %102, 0
  %cmp247 = icmp ult i32 %add246, 128
  br i1 %cmp247, label %cond.true.254, label %cond.false.282

cond.false.249:                                   ; preds = %if.then.244
  %103 = load i32, i32* %ch, align 4
  %conv250 = sext i32 %103 to i64
  %add251 = add i64 %conv250, 0
  %cmp252 = icmp ult i64 %add251, 128
  br i1 %cmp252, label %cond.true.254, label %cond.false.282

cond.true.254:                                    ; preds = %cond.false.249, %cond.true.245
  %call255 = call %struct.Lisp_Char_Table* @buffer_display_table()
  %ascii256 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call255, i32 0, i32 4
  %104 = load i64, i64* %ascii256, align 8
  %call257 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp258 = icmp eq i64 %104, %call257
  br i1 %cmp258, label %cond.true.260, label %cond.false.263

cond.true.260:                                    ; preds = %cond.true.254
  %call261 = call %struct.Lisp_Char_Table* @buffer_display_table()
  %defalt262 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call261, i32 0, i32 1
  %105 = load i64, i64* %defalt262, align 8
  br label %cond.end.280

cond.false.263:                                   ; preds = %cond.true.254
  %call264 = call %struct.Lisp_Char_Table* @buffer_display_table()
  %ascii265 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call264, i32 0, i32 4
  %106 = load i64, i64* %ascii265, align 8
  %call266 = call zeroext i1 @SUB_CHAR_TABLE_P(i64 %106)
  br i1 %call266, label %cond.true.268, label %cond.false.275

cond.true.268:                                    ; preds = %cond.false.263
  %107 = load i32, i32* %ch, align 4
  %idxprom269 = sext i32 %107 to i64
  %call270 = call %struct.Lisp_Char_Table* @buffer_display_table()
  %ascii271 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call270, i32 0, i32 4
  %108 = load i64, i64* %ascii271, align 8
  %call272 = call %struct.Lisp_Sub_Char_Table* @XSUB_CHAR_TABLE(i64 %108)
  %contents273 = getelementptr inbounds %struct.Lisp_Sub_Char_Table, %struct.Lisp_Sub_Char_Table* %call272, i32 0, i32 3
  %arrayidx274 = getelementptr inbounds [0 x i64], [0 x i64]* %contents273, i32 0, i64 %idxprom269
  %109 = load i64, i64* %arrayidx274, align 8
  br label %cond.end.278

cond.false.275:                                   ; preds = %cond.false.263
  %call276 = call %struct.Lisp_Char_Table* @buffer_display_table()
  %ascii277 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call276, i32 0, i32 4
  %110 = load i64, i64* %ascii277, align 8
  br label %cond.end.278

cond.end.278:                                     ; preds = %cond.false.275, %cond.true.268
  %cond279 = phi i64 [ %109, %cond.true.268 ], [ %110, %cond.false.275 ]
  br label %cond.end.280

cond.end.280:                                     ; preds = %cond.end.278, %cond.true.260
  %cond281 = phi i64 [ %105, %cond.true.260 ], [ %cond279, %cond.end.278 ]
  br label %cond.end.285

cond.false.282:                                   ; preds = %cond.false.249, %cond.true.245
  %call283 = call %struct.Lisp_Char_Table* @buffer_display_table()
  %111 = load i32, i32* %ch, align 4
  %call284 = call i64 @disp_char_vector(%struct.Lisp_Char_Table* %call283, i32 %111)
  br label %cond.end.285

cond.end.285:                                     ; preds = %cond.false.282, %cond.end.280
  %cond286 = phi i64 [ %cond281, %cond.end.280 ], [ %call284, %cond.false.282 ]
  %call287 = call i64 @ASIZE(i64 %cond286)
  %call288 = call i32 @sanitize_char_width(i64 %call287)
  store i32 %call288, i32* %wd, align 4
  br label %if.end.341

if.else.289:                                      ; preds = %cond.end.240, %if.else.199
  br i1 true, label %cond.true.290, label %cond.false.294

cond.true.290:                                    ; preds = %if.else.289
  %112 = load i32, i32* %ch, align 4
  %add291 = add i32 %112, 0
  %cmp292 = icmp ult i32 %add291, 128
  br i1 %cmp292, label %cond.true.299, label %cond.false.335

cond.false.294:                                   ; preds = %if.else.289
  %113 = load i32, i32* %ch, align 4
  %conv295 = sext i32 %113 to i64
  %add296 = add i64 %conv295, 0
  %cmp297 = icmp ult i64 %add296, 128
  br i1 %cmp297, label %cond.true.299, label %cond.false.335

cond.true.299:                                    ; preds = %cond.false.294, %cond.true.290
  %114 = load i32, i32* %ch, align 4
  %cmp300 = icmp slt i32 %114, 32
  br i1 %cmp300, label %cond.true.302, label %cond.false.321

cond.true.302:                                    ; preds = %cond.true.299
  %115 = load i32, i32* %ch, align 4
  %cmp303 = icmp eq i32 %115, 9
  br i1 %cmp303, label %cond.true.305, label %cond.false.308

cond.true.305:                                    ; preds = %cond.true.302
  %116 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %tab_width_ = getelementptr inbounds %struct.buffer, %struct.buffer* %116, i32 0, i32 19
  %117 = load i64, i64* %tab_width_, align 8
  %shr306 = ashr i64 %117, 2
  %call307 = call i32 @sanitize_tab_width(i64 %shr306)
  br label %cond.end.319

cond.false.308:                                   ; preds = %cond.true.302
  %118 = load i32, i32* %ch, align 4
  %cmp309 = icmp eq i32 %118, 10
  br i1 %cmp309, label %cond.true.311, label %cond.false.312

cond.true.311:                                    ; preds = %cond.false.308
  br label %cond.end.317

cond.false.312:                                   ; preds = %cond.false.308
  %119 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %ctl_arrow_ = getelementptr inbounds %struct.buffer, %struct.buffer* %119, i32 0, i32 29
  %120 = load i64, i64* %ctl_arrow_, align 8
  %call313 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp314 = icmp eq i64 %120, %call313
  %cond316 = select i1 %cmp314, i32 4, i32 2
  br label %cond.end.317

cond.end.317:                                     ; preds = %cond.false.312, %cond.true.311
  %cond318 = phi i32 [ 0, %cond.true.311 ], [ %cond316, %cond.false.312 ]
  br label %cond.end.319

cond.end.319:                                     ; preds = %cond.end.317, %cond.true.305
  %cond320 = phi i32 [ %call307, %cond.true.305 ], [ %cond318, %cond.end.317 ]
  br label %cond.end.333

cond.false.321:                                   ; preds = %cond.true.299
  %121 = load i32, i32* %ch, align 4
  %cmp322 = icmp slt i32 %121, 127
  br i1 %cmp322, label %cond.true.324, label %cond.false.325

cond.true.324:                                    ; preds = %cond.false.321
  br label %cond.end.331

cond.false.325:                                   ; preds = %cond.false.321
  %122 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %ctl_arrow_326 = getelementptr inbounds %struct.buffer, %struct.buffer* %122, i32 0, i32 29
  %123 = load i64, i64* %ctl_arrow_326, align 8
  %call327 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp328 = icmp eq i64 %123, %call327
  %cond330 = select i1 %cmp328, i32 4, i32 2
  br label %cond.end.331

cond.end.331:                                     ; preds = %cond.false.325, %cond.true.324
  %cond332 = phi i32 [ 1, %cond.true.324 ], [ %cond330, %cond.false.325 ]
  br label %cond.end.333

cond.end.333:                                     ; preds = %cond.end.331, %cond.end.319
  %cond334 = phi i32 [ %cond320, %cond.end.319 ], [ %cond332, %cond.end.331 ]
  br label %cond.end.339

cond.false.335:                                   ; preds = %cond.false.294, %cond.true.290
  %124 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 28), align 8
  %125 = load i32, i32* %ch, align 4
  %call336 = call i64 @CHAR_TABLE_REF(i64 %124, i32 %125)
  %shr337 = ashr i64 %call336, 2
  %call338 = call i32 @sanitize_char_width(i64 %shr337)
  br label %cond.end.339

cond.end.339:                                     ; preds = %cond.false.335, %cond.end.333
  %cond340 = phi i32 [ %cond334, %cond.end.333 ], [ %call338, %cond.false.335 ]
  store i32 %cond340, i32* %wd, align 4
  br label %if.end.341

if.end.341:                                       ; preds = %cond.end.339, %cond.end.285
  br label %if.end.342

if.end.342:                                       ; preds = %if.end.341, %if.then.198
  br label %do.end

do.end:                                           ; preds = %if.end.342
  %126 = load i32, i32* %wd, align 4
  %127 = load i32, i32* %width, align 4
  %mul343 = mul nsw i32 %127, %126
  store i32 %mul343, i32* %width, align 4
  br label %if.end.344

if.end.344:                                       ; preds = %do.end, %land.lhs.true.103, %if.end.97
  %128 = load i32, i32* %width, align 4
  store i32 %128, i32* %retval
  br label %return

if.end.345:                                       ; preds = %if.end.69
  br label %if.end.346

if.end.346:                                       ; preds = %if.end.345, %land.lhs.true, %entry
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.346, %if.end.344
  %129 = load i32, i32* %retval
  ret i32 %129
}

declare i64 @get_char_property_and_overlay(i64, i64, i64, i64*) #1

declare i64 @Fplist_get(i64, i64) #1

declare zeroext i1 @RANGED_INTEGERP(i64, i64, i64) #1

declare double @XFLOAT_DATA(i64) #1

declare zeroext i1 @OVERLAYP(i64) #1

declare %struct.Lisp_Overlay* @XOVERLAY(i64) #1

; Function Attrs: noreturn
declare void @emacs_abort() #2

declare zeroext i1 @get_property_and_range(i64, i64, i64*, i64*, i64*, i64) #1

declare void @free_region_cache(%struct.region_cache*) #1

declare %struct.region_cache* @new_region_cache() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
