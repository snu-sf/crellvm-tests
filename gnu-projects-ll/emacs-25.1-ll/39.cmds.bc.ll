; ModuleID = './src/cmds.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.Lisp_Symbol = type { i16, i64, %union.anon.12, i64, i64, %struct.Lisp_Symbol* }
%union.anon.12 = type { i64 }
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
%struct.terminal = type { %struct.vectorlike_header, i64, i64, i64, i64, %struct.terminal*, i32, i32, i32, i8*, %struct.kboard*, %struct.image_cache*, %union.display_info, %struct.coding_system*, %struct.coding_system*, %struct.redisplay_interface*, void (%struct.frame*, i32, i32)*, void (%struct.frame*, i32, i32)*, {}*, {}*, void (%struct.frame*, i32)*, void (%struct.frame*, i32, i32)*, void (%struct.frame*, %struct.glyph*, i32)*, void (%struct.frame*, %struct.glyph*, i32)*, void (%struct.frame*, i32)*, {}*, void (%struct.frame*, i1)*, void (%struct.terminal*)*, void (%struct.terminal*)*, {}*, {}*, void (%struct.frame*, i32)*, void (%struct.frame**, i32, i64*, i32*, i64*, i64*, i64*)*, {}*, void (%struct.frame*, i1)*, {}*, i64 (%struct.frame*, i32, i32, i32, i64, i8**)*, i64 (%struct.frame*, i64, i64)*, void (%struct.window*, i32, i32, i32)*, void (%struct.window*, i32, i32, i32)*, {}*, void (%struct.window*)*, {}*, i32 (%struct.terminal*, %struct.input_event*)*, {}*, {}*, void (%struct.terminal*)* }
%struct.kboard = type { %struct.kboard*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i8, i8, i64 }
%struct.image_cache = type { %struct.image**, %struct.image**, i64, i64, i64 }
%union.display_info = type { %struct.tty_display_info* }
%struct.tty_display_info = type opaque
%struct.coding_system = type { i64, i32, i32, %union.anon.5, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8*, i64, i64, i64, i64, i8*, i32*, i32, i32, [64 x i8], i32, i32, i1 (%struct.coding_system*, %struct.coding_detection_info*)*, void (%struct.coding_system*)*, i1 (%struct.coding_system*)* }
%union.anon.5 = type { %struct.ccl_spec*, [328 x i8] }
%struct.ccl_spec = type opaque
%struct.coding_detection_info = type { i32, i32, i32 }
%struct.redisplay_interface = type { void (%struct.frame*, i64, i64)**, void (%struct.it*)*, void (%struct.window*, %struct.glyph_row*, %struct.glyph*, i32, i32)*, void (%struct.window*, %struct.glyph_row*, %struct.glyph*, i32, i32)*, void (%struct.window*, %struct.glyph_row*, i32, i32)*, void (%struct.window*, %struct.run*)*, void (%struct.window*, %struct.glyph_row*)*, void (%struct.window*)*, void (%struct.window*, i1, i1)*, {}*, void (%struct.window*)*, void (%struct.glyph*, %struct.frame*, i32*, i32*)*, void (%struct.window*, %struct.glyph_row*, i32, i32)*, void (%struct.window*, %struct.glyph_row*, %struct.draw_fringe_bitmap_params*)*, void (i32, i16*, i32, i32)*, void (i32)*, void (%struct.glyph_string*)*, void (%struct.glyph_string*)*, void (%struct.frame*, i64)*, void (%struct.frame*, i32, i32, i32, i32)*, void (%struct.window*, %struct.glyph_row*, i32, i32, i32, i32, i1, i1)*, void (%struct.window*, i32, i32, i32)*, void (%struct.window*, i32, i32, i32, i32)*, void (%struct.frame*, i32, i32, i32, i32, i32)*, {}*, {}* }
%struct.it = type { i64, %struct.window*, %struct.frame*, i32, i64, i64, i64, i64, i8*, i64, i64, i8, %struct.Lisp_Char_Table*, i64*, i64*, i32, i32, i32, [16 x i64], %struct.display_pos, %struct.display_pos, i64, i64, [16 x i64], [16 x i64], i64, i64, [5 x %struct.iterator_stack_entry], i32, i64, i32, i32, i16, i32, i32, i32, i32, %struct.composition_it, i32, i32, i64, %struct.xwidget*, %struct.it_slice, i64, i16, i16, i64, i64, %struct.text_pos, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, %struct.glyph_row*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.text_pos, i32, i32, i32, i32, i56, i24, %struct.bidi_it, i32 }
%struct.Lisp_Char_Table = type { %struct.vectorlike_header, i64, i64, i64, i64, [64 x i64], [0 x i64] }
%struct.iterator_stack_entry = type { i64, i32, i64, i64, i64, i64, %struct.composition_it, i32, %union.anon.6, %struct.text_pos, %struct.display_pos, i64, i32, i32, i32, i8, i32, i16, i64, i64 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { i64, %struct.it_slice, i64 }
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
%struct.Lisp_Subr = type { %struct.vectorlike_header, %union.anon.11, i16, i16, i8*, i8*, i8* }
%union.anon.11 = type { i64 ()* }

@current_buffer = external global %struct.buffer*, align 8
@.str = private unnamed_addr constant [33 x i8] c"Negative repetition argument %ld\00", align 1
@globals = external global %struct.emacs_globals, align 8
@selected_frame = external global i64, align 8
@syms_of_cmds.o_fwd = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"post-self-insert-hook\00", align 1
@global_map = external global i64, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"self-insert-command\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"beginning-of-line\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"backward-char\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"end-of-line\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"forward-char\00", align 1
@lispsym = external global [1074 x %struct.Lisp_Symbol], align 8
@.str.7 = private unnamed_addr constant [15 x i8] c"no-self-insert\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"forward-point\00", align 1
@Sforward_point = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fforward_point }, i16 1, i16 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.9 = private unnamed_addr constant [3 x i8] c"^p\00", align 1
@Sforward_char = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fforward_char }, i16 0, i16 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* null }, align 8
@Sbackward_char = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fbackward_char }, i16 0, i16 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* null }, align 8
@.str.10 = private unnamed_addr constant [13 x i8] c"forward-line\00", align 1
@Sforward_line = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fforward_line }, i16 0, i16 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* null }, align 8
@Sbeginning_of_line = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fbeginning_of_line }, i16 0, i16 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* null }, align 8
@Send_of_line = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fend_of_line }, i16 0, i16 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* null }, align 8
@.str.11 = private unnamed_addr constant [12 x i8] c"delete-char\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"p\0AP\00", align 1
@Sdelete_char = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fdelete_char }, i16 1, i16 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null }, align 8
@.str.13 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@Sself_insert_command = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fself_insert_command }, i16 1, i16 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0), i8* null }, align 8

; Function Attrs: nounwind uwtable
define i64 @Fforward_point(i64 %n) #0 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i64, i64* %n.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %and1 = and i32 %conv, -5
  %cmp = icmp eq i32 %and1, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 559)
  %1 = load i64, i64* %n.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call, i64 %1) #4
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %4, i32 0, i32 75
  %5 = load i64, i64* %pt, align 8
  %add = add nsw i64 %5, 0
  %6 = load i64, i64* %n.addr, align 8
  %shr = ashr i64 %6, 2
  %add3 = add nsw i64 %add, %shr
  %shl = shl i64 %add3, 2
  %add4 = add i64 %shl, 2
  ret i64 %add4
}

; Function Attrs: noreturn
declare i64 @wrong_type_argument(i64, i64) #1

declare i64 @builtin_lisp_symbol(i32) #2

; Function Attrs: nounwind uwtable
define i64 @Fforward_char(i64 %n) #0 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i64, i64* %n.addr, align 8
  %call = call i64 @move_point(i64 %0, i1 zeroext true)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define internal i64 @move_point(i64 %n, i1 zeroext %forward) #0 {
entry:
  %n.addr = alloca i64, align 8
  %forward.addr = alloca i8, align 1
  %new_point = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  %frombool = zext i1 %forward to i8
  store i8 %frombool, i8* %forward.addr, align 1
  %0 = load i64, i64* %n.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call i64 @make_natnum(i64 1)
  store i64 %call1, i64* %n.addr, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = load i64, i64* %n.addr, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %and2 = and i32 %conv, -5
  %cmp3 = icmp eq i32 %and2, 2
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %call5 = call i64 @builtin_lisp_symbol(i32 559)
  %2 = load i64, i64* %n.addr, align 8
  %3 = call i64 @wrong_type_argument(i64 %call5, i64 %2) #4
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %4, %cond.true
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  %5 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %5, i32 0, i32 75
  %6 = load i64, i64* %pt, align 8
  %add = add nsw i64 %6, 0
  %7 = load i8, i8* %forward.addr, align 1
  %tobool = trunc i8 %7 to i1
  br i1 %tobool, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %if.end
  %8 = load i64, i64* %n.addr, align 8
  %shr = ashr i64 %8, 2
  br label %cond.end.10

cond.false.8:                                     ; preds = %if.end
  %9 = load i64, i64* %n.addr, align 8
  %shr9 = ashr i64 %9, 2
  %sub = sub nsw i64 0, %shr9
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.8, %cond.true.7
  %cond = phi i64 [ %shr, %cond.true.7 ], [ %sub, %cond.false.8 ]
  %add11 = add nsw i64 %add, %cond
  store i64 %add11, i64* %new_point, align 8
  %10 = load i64, i64* %new_point, align 8
  %11 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %11, i32 0, i32 77
  %12 = load i64, i64* %begv, align 8
  %cmp12 = icmp slt i64 %10, %12
  br i1 %cmp12, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %cond.end.10
  %13 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv15 = getelementptr inbounds %struct.buffer, %struct.buffer* %13, i32 0, i32 77
  %14 = load i64, i64* %begv15, align 8
  call void @set_point(i64 %14)
  %call16 = call i64 @builtin_lisp_symbol(i32 200)
  call void @xsignal0(i64 %call16) #4
  unreachable

if.end.17:                                        ; preds = %cond.end.10
  %15 = load i64, i64* %new_point, align 8
  %16 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %16, i32 0, i32 79
  %17 = load i64, i64* %zv, align 8
  %cmp18 = icmp sgt i64 %15, %17
  br i1 %cmp18, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.end.17
  %18 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv21 = getelementptr inbounds %struct.buffer, %struct.buffer* %18, i32 0, i32 79
  %19 = load i64, i64* %zv21, align 8
  call void @set_point(i64 %19)
  %call22 = call i64 @builtin_lisp_symbol(i32 366)
  call void @xsignal0(i64 %call22) #4
  unreachable

if.end.23:                                        ; preds = %if.end.17
  %20 = load i64, i64* %new_point, align 8
  call void @set_point(i64 %20)
  %call24 = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call24
}

; Function Attrs: nounwind uwtable
define i64 @Fbackward_char(i64 %n) #0 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i64, i64* %n.addr, align 8
  %call = call i64 @move_point(i64 %0, i1 zeroext false)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @Fforward_line(i64 %n) #0 {
entry:
  %n.addr = alloca i64, align 8
  %opoint = alloca i64, align 8
  %pos = alloca i64, align 8
  %pos_byte = alloca i64, align 8
  %shortage = alloca i64, align 8
  %count = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 75
  %1 = load i64, i64* %pt, align 8
  %add = add nsw i64 %1, 0
  store i64 %add, i64* %opoint, align 8
  %2 = load i64, i64* %n.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %2, %call
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 1, i64* %count, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i64, i64* %n.addr, align 8
  %and = and i64 %3, 7
  %conv = trunc i64 %and to i32
  %and1 = and i32 %conv, -5
  %cmp2 = icmp eq i32 %and1, 2
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %call4 = call i64 @builtin_lisp_symbol(i32 559)
  %4 = load i64, i64* %n.addr, align 8
  %5 = call i64 @wrong_type_argument(i64 %call4, i64 %4) #4
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %6, %cond.true
  %7 = load i64, i64* %n.addr, align 8
  %shr = ashr i64 %7, 2
  store i64 %shr, i64* %count, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  %8 = load i64, i64* %count, align 8
  %call5 = call i64 @scan_newline_from_point(i64 %8, i64* %pos, i64* %pos_byte)
  store i64 %call5, i64* %shortage, align 8
  %9 = load i64, i64* %pos, align 8
  %10 = load i64, i64* %pos_byte, align 8
  call void @set_point_both(i64 %9, i64 %10)
  %11 = load i64, i64* %shortage, align 8
  %cmp6 = icmp sgt i64 %11, 0
  br i1 %cmp6, label %land.lhs.true, label %if.end.35

land.lhs.true:                                    ; preds = %if.end
  %12 = load i64, i64* %count, align 8
  %cmp8 = icmp sle i64 %12, 0
  br i1 %cmp8, label %if.then.34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %13 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %13, i32 0, i32 79
  %14 = load i64, i64* %zv, align 8
  %15 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %15, i32 0, i32 77
  %16 = load i64, i64* %begv, align 8
  %cmp10 = icmp sgt i64 %14, %16
  br i1 %cmp10, label %land.lhs.true.12, label %if.end.35

land.lhs.true.12:                                 ; preds = %lor.lhs.false
  %17 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt13 = getelementptr inbounds %struct.buffer, %struct.buffer* %17, i32 0, i32 75
  %18 = load i64, i64* %pt13, align 8
  %add14 = add nsw i64 %18, 0
  %19 = load i64, i64* %opoint, align 8
  %cmp15 = icmp ne i64 %add14, %19
  br i1 %cmp15, label %land.lhs.true.17, label %if.end.35

land.lhs.true.17:                                 ; preds = %land.lhs.true.12
  %20 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %20, i32 0, i32 76
  %21 = load i64, i64* %pt_byte, align 8
  %add18 = add nsw i64 %21, 0
  %sub = sub nsw i64 %add18, 1
  %22 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %22, i32 0, i32 73
  %23 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %gpt_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %23, i32 0, i32 3
  %24 = load i64, i64* %gpt_byte, align 8
  %cmp19 = icmp sge i64 %sub, %24
  br i1 %cmp19, label %cond.true.21, label %cond.false.23

cond.true.21:                                     ; preds = %land.lhs.true.17
  %25 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text22 = getelementptr inbounds %struct.buffer, %struct.buffer* %25, i32 0, i32 73
  %26 = load %struct.buffer_text*, %struct.buffer_text** %text22, align 8
  %gap_size = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %26, i32 0, i32 5
  %27 = load i64, i64* %gap_size, align 8
  br label %cond.end.24

cond.false.23:                                    ; preds = %land.lhs.true.17
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.23, %cond.true.21
  %cond = phi i64 [ %27, %cond.true.21 ], [ 0, %cond.false.23 ]
  %28 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte25 = getelementptr inbounds %struct.buffer, %struct.buffer* %28, i32 0, i32 76
  %29 = load i64, i64* %pt_byte25, align 8
  %add26 = add nsw i64 %29, 0
  %sub27 = sub nsw i64 %add26, 1
  %add28 = add nsw i64 %cond, %sub27
  %30 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text29 = getelementptr inbounds %struct.buffer, %struct.buffer* %30, i32 0, i32 73
  %31 = load %struct.buffer_text*, %struct.buffer_text** %text29, align 8
  %beg = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %31, i32 0, i32 0
  %32 = load i8*, i8** %beg, align 8
  %add.ptr = getelementptr inbounds i8, i8* %32, i64 %add28
  %add.ptr30 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %33 = load i8, i8* %add.ptr30, align 1
  %conv31 = zext i8 %33 to i32
  %cmp32 = icmp ne i32 %conv31, 10
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %cond.end.24, %land.lhs.true
  %34 = load i64, i64* %shortage, align 8
  %dec = add nsw i64 %34, -1
  store i64 %dec, i64* %shortage, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %cond.end.24, %land.lhs.true.12, %lor.lhs.false, %if.end
  %35 = load i64, i64* %count, align 8
  %cmp36 = icmp sle i64 %35, 0
  br i1 %cmp36, label %cond.true.38, label %cond.false.40

cond.true.38:                                     ; preds = %if.end.35
  %36 = load i64, i64* %shortage, align 8
  %sub39 = sub nsw i64 0, %36
  br label %cond.end.41

cond.false.40:                                    ; preds = %if.end.35
  %37 = load i64, i64* %shortage, align 8
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.40, %cond.true.38
  %cond42 = phi i64 [ %sub39, %cond.true.38 ], [ %37, %cond.false.40 ]
  %shl = shl i64 %cond42, 2
  %add43 = add i64 %shl, 2
  ret i64 %add43
}

declare i64 @scan_newline_from_point(i64, i64*, i64*) #2

declare void @set_point_both(i64, i64) #2

; Function Attrs: nounwind uwtable
define i64 @Fbeginning_of_line(i64 %n) #0 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i64, i64* %n.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call i64 @make_natnum(i64 1)
  store i64 %call1, i64* %n.addr, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = load i64, i64* %n.addr, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %and2 = and i32 %conv, -5
  %cmp3 = icmp eq i32 %and2, 2
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %call5 = call i64 @builtin_lisp_symbol(i32 559)
  %2 = load i64, i64* %n.addr, align 8
  %3 = call i64 @wrong_type_argument(i64 %call5, i64 %2) #4
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %4, %cond.true
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  %5 = load i64, i64* %n.addr, align 8
  %call6 = call i64 @Fline_beginning_position(i64 %5)
  %shr = ashr i64 %call6, 2
  call void @set_point(i64 %shr)
  %call7 = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call7
}

declare i64 @make_natnum(i64) #2

declare void @set_point(i64) #2

declare i64 @Fline_beginning_position(i64) #2

; Function Attrs: nounwind uwtable
define i64 @Fend_of_line(i64 %n) #0 {
entry:
  %n.addr = alloca i64, align 8
  %newpos = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i64, i64* %n.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call i64 @make_natnum(i64 1)
  store i64 %call1, i64* %n.addr, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = load i64, i64* %n.addr, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %and2 = and i32 %conv, -5
  %cmp3 = icmp eq i32 %and2, 2
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %call5 = call i64 @builtin_lisp_symbol(i32 559)
  %2 = load i64, i64* %n.addr, align 8
  %3 = call i64 @wrong_type_argument(i64 %call5, i64 %2) #4
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %4, %cond.true
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  br label %while.body

while.body:                                       ; preds = %if.end, %if.end.88
  %5 = load i64, i64* %n.addr, align 8
  %call6 = call i64 @Fline_end_position(i64 %5)
  %shr = ashr i64 %call6, 2
  store i64 %shr, i64* %newpos, align 8
  %6 = load i64, i64* %newpos, align 8
  call void @set_point(i64 %6)
  %7 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 75
  %8 = load i64, i64* %pt, align 8
  %add = add nsw i64 %8, 0
  %9 = load i64, i64* %newpos, align 8
  %cmp7 = icmp sgt i64 %add, %9
  br i1 %cmp7, label %land.lhs.true, label %if.else.41

land.lhs.true:                                    ; preds = %while.body
  %10 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_ = getelementptr inbounds %struct.buffer, %struct.buffer* %10, i32 0, i32 39
  %11 = load i64, i64* %enable_multibyte_characters_, align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp10 = icmp eq i64 %11, %call9
  br i1 %cmp10, label %cond.false.16, label %cond.true.12

cond.true.12:                                     ; preds = %land.lhs.true
  %12 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt13 = getelementptr inbounds %struct.buffer, %struct.buffer* %12, i32 0, i32 75
  %13 = load i64, i64* %pt13, align 8
  %add14 = add nsw i64 %13, 0
  %sub = sub nsw i64 %add14, 1
  %call15 = call i32 @FETCH_MULTIBYTE_CHAR(i64 %sub)
  br label %cond.end.33

cond.false.16:                                    ; preds = %land.lhs.true
  %14 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt17 = getelementptr inbounds %struct.buffer, %struct.buffer* %14, i32 0, i32 75
  %15 = load i64, i64* %pt17, align 8
  %add18 = add nsw i64 %15, 0
  %sub19 = sub nsw i64 %add18, 1
  %16 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %16, i32 0, i32 73
  %17 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %gpt_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %17, i32 0, i32 3
  %18 = load i64, i64* %gpt_byte, align 8
  %cmp20 = icmp sge i64 %sub19, %18
  br i1 %cmp20, label %cond.true.22, label %cond.false.24

cond.true.22:                                     ; preds = %cond.false.16
  %19 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text23 = getelementptr inbounds %struct.buffer, %struct.buffer* %19, i32 0, i32 73
  %20 = load %struct.buffer_text*, %struct.buffer_text** %text23, align 8
  %gap_size = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %20, i32 0, i32 5
  %21 = load i64, i64* %gap_size, align 8
  br label %cond.end.25

cond.false.24:                                    ; preds = %cond.false.16
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.24, %cond.true.22
  %cond = phi i64 [ %21, %cond.true.22 ], [ 0, %cond.false.24 ]
  %22 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt26 = getelementptr inbounds %struct.buffer, %struct.buffer* %22, i32 0, i32 75
  %23 = load i64, i64* %pt26, align 8
  %add27 = add nsw i64 %23, 0
  %sub28 = sub nsw i64 %add27, 1
  %add29 = add nsw i64 %cond, %sub28
  %24 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text30 = getelementptr inbounds %struct.buffer, %struct.buffer* %24, i32 0, i32 73
  %25 = load %struct.buffer_text*, %struct.buffer_text** %text30, align 8
  %beg = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %25, i32 0, i32 0
  %26 = load i8*, i8** %beg, align 8
  %add.ptr = getelementptr inbounds i8, i8* %26, i64 %add29
  %add.ptr31 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %27 = load i8, i8* %add.ptr31, align 1
  %conv32 = zext i8 %27 to i32
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.end.25, %cond.true.12
  %cond34 = phi i32 [ %call15, %cond.true.12 ], [ %conv32, %cond.end.25 ]
  %cmp35 = icmp eq i32 %cond34, 10
  br i1 %cmp35, label %if.then.37, label %if.else.41

if.then.37:                                       ; preds = %cond.end.33
  %28 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt38 = getelementptr inbounds %struct.buffer, %struct.buffer* %28, i32 0, i32 75
  %29 = load i64, i64* %pt38, align 8
  %add39 = add nsw i64 %29, 0
  %sub40 = sub nsw i64 %add39, 1
  call void @set_point(i64 %sub40)
  br label %while.end

if.else.41:                                       ; preds = %cond.end.33, %while.body
  %30 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt42 = getelementptr inbounds %struct.buffer, %struct.buffer* %30, i32 0, i32 75
  %31 = load i64, i64* %pt42, align 8
  %add43 = add nsw i64 %31, 0
  %32 = load i64, i64* %newpos, align 8
  %cmp44 = icmp sgt i64 %add43, %32
  br i1 %cmp44, label %land.lhs.true.46, label %if.else.86

land.lhs.true.46:                                 ; preds = %if.else.41
  %33 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt47 = getelementptr inbounds %struct.buffer, %struct.buffer* %33, i32 0, i32 75
  %34 = load i64, i64* %pt47, align 8
  %add48 = add nsw i64 %34, 0
  %35 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %35, i32 0, i32 79
  %36 = load i64, i64* %zv, align 8
  %cmp49 = icmp slt i64 %add48, %36
  br i1 %cmp49, label %land.lhs.true.51, label %if.else.86

land.lhs.true.51:                                 ; preds = %land.lhs.true.46
  %37 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_52 = getelementptr inbounds %struct.buffer, %struct.buffer* %37, i32 0, i32 39
  %38 = load i64, i64* %enable_multibyte_characters_52, align 8
  %call53 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp54 = icmp eq i64 %38, %call53
  br i1 %cmp54, label %cond.false.60, label %cond.true.56

cond.true.56:                                     ; preds = %land.lhs.true.51
  %39 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt57 = getelementptr inbounds %struct.buffer, %struct.buffer* %39, i32 0, i32 75
  %40 = load i64, i64* %pt57, align 8
  %add58 = add nsw i64 %40, 0
  %call59 = call i32 @FETCH_MULTIBYTE_CHAR(i64 %add58)
  br label %cond.end.81

cond.false.60:                                    ; preds = %land.lhs.true.51
  %41 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt61 = getelementptr inbounds %struct.buffer, %struct.buffer* %41, i32 0, i32 75
  %42 = load i64, i64* %pt61, align 8
  %add62 = add nsw i64 %42, 0
  %43 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text63 = getelementptr inbounds %struct.buffer, %struct.buffer* %43, i32 0, i32 73
  %44 = load %struct.buffer_text*, %struct.buffer_text** %text63, align 8
  %gpt_byte64 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %44, i32 0, i32 3
  %45 = load i64, i64* %gpt_byte64, align 8
  %cmp65 = icmp sge i64 %add62, %45
  br i1 %cmp65, label %cond.true.67, label %cond.false.70

cond.true.67:                                     ; preds = %cond.false.60
  %46 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text68 = getelementptr inbounds %struct.buffer, %struct.buffer* %46, i32 0, i32 73
  %47 = load %struct.buffer_text*, %struct.buffer_text** %text68, align 8
  %gap_size69 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %47, i32 0, i32 5
  %48 = load i64, i64* %gap_size69, align 8
  br label %cond.end.71

cond.false.70:                                    ; preds = %cond.false.60
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.false.70, %cond.true.67
  %cond72 = phi i64 [ %48, %cond.true.67 ], [ 0, %cond.false.70 ]
  %49 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt73 = getelementptr inbounds %struct.buffer, %struct.buffer* %49, i32 0, i32 75
  %50 = load i64, i64* %pt73, align 8
  %add74 = add nsw i64 %50, 0
  %add75 = add nsw i64 %cond72, %add74
  %51 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text76 = getelementptr inbounds %struct.buffer, %struct.buffer* %51, i32 0, i32 73
  %52 = load %struct.buffer_text*, %struct.buffer_text** %text76, align 8
  %beg77 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %52, i32 0, i32 0
  %53 = load i8*, i8** %beg77, align 8
  %add.ptr78 = getelementptr inbounds i8, i8* %53, i64 %add75
  %add.ptr79 = getelementptr inbounds i8, i8* %add.ptr78, i64 -1
  %54 = load i8, i8* %add.ptr79, align 1
  %conv80 = zext i8 %54 to i32
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.end.71, %cond.true.56
  %cond82 = phi i32 [ %call59, %cond.true.56 ], [ %conv80, %cond.end.71 ]
  %cmp83 = icmp ne i32 %cond82, 10
  br i1 %cmp83, label %if.then.85, label %if.else.86

if.then.85:                                       ; preds = %cond.end.81
  store i64 6, i64* %n.addr, align 8
  br label %if.end.87

if.else.86:                                       ; preds = %cond.end.81, %land.lhs.true.46, %if.else.41
  br label %while.end

if.end.87:                                        ; preds = %if.then.85
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87
  br label %while.body

while.end:                                        ; preds = %if.else.86, %if.then.37
  %call89 = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call89
}

declare i64 @Fline_end_position(i64) #2

declare i32 @FETCH_MULTIBYTE_CHAR(i64) #2

; Function Attrs: nounwind uwtable
define i64 @Fdelete_char(i64 %n, i64 %killflag) #0 {
entry:
  %n.addr = alloca i64, align 8
  %killflag.addr = alloca i64, align 8
  %pos = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  store i64 %killflag, i64* %killflag.addr, align 8
  %0 = load i64, i64* %n.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %and1 = and i32 %conv, -5
  %cmp = icmp eq i32 %and1, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 559)
  %1 = load i64, i64* %n.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call, i64 %1) #4
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i64, i64* %n.addr, align 8
  %shr = ashr i64 %4, 2
  %cmp3 = icmp slt i64 %shr, 0
  br i1 %cmp3, label %cond.true.5, label %cond.false.7

cond.true.5:                                      ; preds = %cond.end
  %5 = load i64, i64* %n.addr, align 8
  %shr6 = ashr i64 %5, 2
  %sub = sub nsw i64 0, %shr6
  br label %cond.end.9

cond.false.7:                                     ; preds = %cond.end
  %6 = load i64, i64* %n.addr, align 8
  %shr8 = ashr i64 %6, 2
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.7, %cond.true.5
  %cond = phi i64 [ %sub, %cond.true.5 ], [ %shr8, %cond.false.7 ]
  %cmp10 = icmp slt i64 %cond, 2
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.9
  %call12 = call i64 @builtin_lisp_symbol(i32 968)
  %call13 = call i64 @call0(i64 %call12)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.9
  %7 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 75
  %8 = load i64, i64* %pt, align 8
  %add = add nsw i64 %8, 0
  %9 = load i64, i64* %n.addr, align 8
  %shr14 = ashr i64 %9, 2
  %add15 = add nsw i64 %add, %shr14
  store i64 %add15, i64* %pos, align 8
  %10 = load i64, i64* %killflag.addr, align 8
  %call16 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp17 = icmp eq i64 %10, %call16
  br i1 %cmp17, label %if.then.19, label %if.else.41

if.then.19:                                       ; preds = %if.end
  %11 = load i64, i64* %n.addr, align 8
  %shr20 = ashr i64 %11, 2
  %cmp21 = icmp slt i64 %shr20, 0
  br i1 %cmp21, label %if.then.23, label %if.else.31

if.then.23:                                       ; preds = %if.then.19
  %12 = load i64, i64* %pos, align 8
  %13 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %13, i32 0, i32 77
  %14 = load i64, i64* %begv, align 8
  %cmp24 = icmp slt i64 %12, %14
  br i1 %cmp24, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %if.then.23
  %call27 = call i64 @builtin_lisp_symbol(i32 200)
  call void @xsignal0(i64 %call27) #4
  unreachable

if.else:                                          ; preds = %if.then.23
  %15 = load i64, i64* %pos, align 8
  %16 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt28 = getelementptr inbounds %struct.buffer, %struct.buffer* %16, i32 0, i32 75
  %17 = load i64, i64* %pt28, align 8
  %add29 = add nsw i64 %17, 0
  call void @del_range(i64 %15, i64 %add29)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else
  br label %if.end.40

if.else.31:                                       ; preds = %if.then.19
  %18 = load i64, i64* %pos, align 8
  %19 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %19, i32 0, i32 79
  %20 = load i64, i64* %zv, align 8
  %cmp32 = icmp sgt i64 %18, %20
  br i1 %cmp32, label %if.then.34, label %if.else.36

if.then.34:                                       ; preds = %if.else.31
  %call35 = call i64 @builtin_lisp_symbol(i32 366)
  call void @xsignal0(i64 %call35) #4
  unreachable

if.else.36:                                       ; preds = %if.else.31
  %21 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt37 = getelementptr inbounds %struct.buffer, %struct.buffer* %21, i32 0, i32 75
  %22 = load i64, i64* %pt37, align 8
  %add38 = add nsw i64 %22, 0
  %23 = load i64, i64* %pos, align 8
  call void @del_range(i64 %add38, i64 %23)
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.36
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.end.30
  br label %if.end.44

if.else.41:                                       ; preds = %if.end
  %call42 = call i64 @builtin_lisp_symbol(i32 596)
  %24 = load i64, i64* %n.addr, align 8
  %call43 = call i64 @call1(i64 %call42, i64 %24)
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.41, %if.end.40
  %call45 = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call45
}

declare i64 @call0(i64) #2

; Function Attrs: noreturn
declare void @xsignal0(i64) #1

declare void @del_range(i64, i64) #2

declare i64 @call1(i64, i64) #2

; Function Attrs: nounwind uwtable
define i64 @Fself_insert_command(i64 %n) #0 {
entry:
  %n.addr = alloca i64, align 8
  %character = alloca i32, align 4
  %val = alloca i32, align 4
  store i64 %n, i64* %n.addr, align 8
  %0 = load i64, i64* %n.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %and1 = and i32 %conv, -5
  %cmp = icmp eq i32 %and1, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 559)
  %1 = load i64, i64* %n.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call, i64 %1) #4
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i64, i64* %n.addr, align 8
  %shr = ashr i64 %4, 2
  %cmp3 = icmp slt i64 %shr, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %5 = load i64, i64* %n.addr, align 8
  %shr5 = ashr i64 %5, 2
  call void (i8*, ...) @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0), i64 %shr5) #4
  unreachable

if.end:                                           ; preds = %cond.end
  %6 = load i64, i64* %n.addr, align 8
  %shr6 = ashr i64 %6, 2
  %cmp7 = icmp slt i64 %shr6, 2
  br i1 %cmp7, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.end
  %call10 = call i64 @builtin_lisp_symbol(i32 968)
  %call11 = call i64 @call0(i64 %call10)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %if.end
  %7 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 375), align 8
  %call13 = call zeroext i1 @NATNUMP(i64 %7)
  br i1 %call13, label %land.lhs.true, label %if.then.18

land.lhs.true:                                    ; preds = %if.end.12
  %8 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 375), align 8
  %shr15 = ashr i64 %8, 2
  %cmp16 = icmp sle i64 %shr15, 4194303
  br i1 %cmp16, label %if.else, label %if.then.18

if.then.18:                                       ; preds = %land.lhs.true, %if.end.12
  call void @bitch_at_user()
  br label %if.end.40

if.else:                                          ; preds = %land.lhs.true
  %9 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 307), align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 375), align 8
  %shr19 = ashr i64 %10, 2
  %conv20 = trunc i64 %shr19 to i32
  %call21 = call i32 @translate_char(i64 %9, i32 %conv20)
  store i32 %call21, i32* %character, align 4
  %11 = load i32, i32* %character, align 4
  %12 = load i64, i64* %n.addr, align 8
  %shr22 = ashr i64 %12, 2
  %call23 = call i32 @internal_self_insert(i32 %11, i64 %shr22)
  store i32 %call23, i32* %val, align 4
  %13 = load i32, i32* %val, align 4
  %cmp24 = icmp eq i32 %13, 2
  br i1 %cmp24, label %if.then.26, label %if.end.30

if.then.26:                                       ; preds = %if.else
  %call27 = call i64 @builtin_lisp_symbol(i32 964)
  %call28 = call i64 @builtin_lisp_symbol(i32 0)
  %call29 = call i64 @Fset(i64 %call27, i64 %call28)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.26, %if.else
  %14 = load i64, i64* @selected_frame, align 8
  %call31 = call zeroext i1 @FRAMEP(i64 %14)
  br i1 %call31, label %land.lhs.true.33, label %cond.false.38

land.lhs.true.33:                                 ; preds = %if.end.30
  %15 = load i64, i64* @selected_frame, align 8
  %sub = sub nsw i64 %15, 5
  %16 = inttoptr i64 %sub to i8*
  %17 = bitcast i8* %16 to %struct.frame*
  %terminal = getelementptr inbounds %struct.frame, %struct.frame* %17, i32 0, i32 61
  %18 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %cmp34 = icmp ne %struct.terminal* %18, null
  br i1 %cmp34, label %cond.true.36, label %cond.false.38

cond.true.36:                                     ; preds = %land.lhs.true.33
  %19 = load i64, i64* @selected_frame, align 8
  %sub37 = sub nsw i64 %19, 5
  %20 = inttoptr i64 %sub37 to i8*
  %21 = bitcast i8* %20 to %struct.frame*
  br label %cond.end.39

cond.false.38:                                    ; preds = %land.lhs.true.33, %if.end.30
  call void @emacs_abort() #4
  unreachable
                                                  ; No predecessors!
  br label %cond.end.39

cond.end.39:                                      ; preds = %22, %cond.true.36
  %cond = phi %struct.frame* [ %21, %cond.true.36 ], [ null, %22 ]
  call void @frame_make_pointer_invisible(%struct.frame* %cond)
  br label %if.end.40

if.end.40:                                        ; preds = %cond.end.39, %if.then.18
  %call41 = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call41
}

; Function Attrs: noreturn
declare void @error(i8*, ...) #1

declare zeroext i1 @NATNUMP(i64) #2

declare void @bitch_at_user() #2

declare i32 @translate_char(i64, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @internal_self_insert(i32 %c, i64 %n) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %n.addr = alloca i64, align 8
  %hairy = alloca i32, align 4
  %tem = alloca i64, align 8
  %synt = alloca i32, align 4
  %overwrite = alloca i64, align 8
  %len = alloca i32, align 4
  %str = alloca [5 x i8], align 1
  %chars_to_delete = alloca i64, align 8
  %spaces_to_insert = alloca i64, align 8
  %c2 = alloca i32, align 4
  %cwidth = alloca i32, align 4
  %pos = alloca i64, align 8
  %pos_byte = alloca i64, align 8
  %curcol = alloca i64, align 8
  %target_clm = alloca i64, align 8
  %actual_clm = alloca i64, align 8
  %actual = alloca i64, align 8
  %chp = alloca i8*, align 8
  %modiff = alloca i64, align 8
  %sym = alloca i64, align 8
  %prop = alloca i64, align 8
  %mc = alloca i32, align 4
  %string = alloca i64, align 8
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  %strn = alloca i8*, align 8
  %p = alloca i8*, align 8
  %auto_fill_result = alloca i64, align 8
  store i32 %c, i32* %c.addr, align 4
  store i64 %n, i64* %n.addr, align 8
  store i32 0, i32* %hairy, align 4
  store i64 0, i64* %chars_to_delete, align 8
  store i64 0, i64* %spaces_to_insert, align 8
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %overwrite_mode_ = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 35
  %1 = load i64, i64* %overwrite_mode_, align 8
  store i64 %1, i64* %overwrite, align 8
  %2 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 13), align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %2, %call
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %3 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 0), align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp2 = icmp eq i64 %3, %call1
  br i1 %cmp2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %hairy, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %4 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_ = getelementptr inbounds %struct.buffer, %struct.buffer* %4, i32 0, i32 39
  %5 = load i64, i64* %enable_multibyte_characters_, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp4 = icmp eq i64 %5, %call3
  br i1 %cmp4, label %if.else, label %if.then.5

if.then.5:                                        ; preds = %if.end
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.5
  %6 = load i32, i32* %c.addr, align 4
  %add = add i32 %6, 0
  %cmp6 = icmp ule i32 %add, 127
  br i1 %cmp6, label %cond.true.10, label %cond.false.12

cond.false:                                       ; preds = %if.then.5
  %7 = load i32, i32* %c.addr, align 4
  %conv = sext i32 %7 to i64
  %add7 = add i64 %conv, 0
  %cmp8 = icmp ule i64 %add7, 127
  br i1 %cmp8, label %cond.true.10, label %cond.false.12

cond.true.10:                                     ; preds = %cond.false, %cond.true
  %8 = load i32, i32* %c.addr, align 4
  %conv11 = trunc i32 %8 to i8
  %arrayidx = getelementptr inbounds [5 x i8], [5 x i8]* %str, i32 0, i64 0
  store i8 %conv11, i8* %arrayidx, align 1
  br label %cond.end.56

cond.false.12:                                    ; preds = %cond.false, %cond.true
  br i1 true, label %cond.true.13, label %cond.false.17

cond.true.13:                                     ; preds = %cond.false.12
  %9 = load i32, i32* %c.addr, align 4
  %add14 = add i32 %9, 0
  %cmp15 = icmp ule i32 %add14, 2047
  br i1 %cmp15, label %cond.true.22, label %cond.false.28

cond.false.17:                                    ; preds = %cond.false.12
  %10 = load i32, i32* %c.addr, align 4
  %conv18 = sext i32 %10 to i64
  %add19 = add i64 %conv18, 0
  %cmp20 = icmp ule i64 %add19, 2047
  br i1 %cmp20, label %cond.true.22, label %cond.false.28

cond.true.22:                                     ; preds = %cond.false.17, %cond.true.13
  %11 = load i32, i32* %c.addr, align 4
  %shr = ashr i32 %11, 6
  %or = or i32 192, %shr
  %conv23 = trunc i32 %or to i8
  %arrayidx24 = getelementptr inbounds [5 x i8], [5 x i8]* %str, i32 0, i64 0
  store i8 %conv23, i8* %arrayidx24, align 1
  %12 = load i32, i32* %c.addr, align 4
  %and = and i32 %12, 63
  %or25 = or i32 128, %and
  %conv26 = trunc i32 %or25 to i8
  %arrayidx27 = getelementptr inbounds [5 x i8], [5 x i8]* %str, i32 0, i64 1
  store i8 %conv26, i8* %arrayidx27, align 1
  br label %cond.end.54

cond.false.28:                                    ; preds = %cond.false.17, %cond.true.13
  br i1 true, label %cond.true.29, label %cond.false.33

cond.true.29:                                     ; preds = %cond.false.28
  %13 = load i32, i32* %c.addr, align 4
  %add30 = add i32 %13, 0
  %cmp31 = icmp ule i32 %add30, 65535
  br i1 %cmp31, label %cond.true.38, label %cond.false.52

cond.false.33:                                    ; preds = %cond.false.28
  %14 = load i32, i32* %c.addr, align 4
  %conv34 = sext i32 %14 to i64
  %add35 = add i64 %conv34, 0
  %cmp36 = icmp ule i64 %add35, 65535
  br i1 %cmp36, label %cond.true.38, label %cond.false.52

cond.true.38:                                     ; preds = %cond.false.33, %cond.true.29
  %15 = load i32, i32* %c.addr, align 4
  %shr39 = ashr i32 %15, 12
  %or40 = or i32 224, %shr39
  %conv41 = trunc i32 %or40 to i8
  %arrayidx42 = getelementptr inbounds [5 x i8], [5 x i8]* %str, i32 0, i64 0
  store i8 %conv41, i8* %arrayidx42, align 1
  %16 = load i32, i32* %c.addr, align 4
  %shr43 = ashr i32 %16, 6
  %and44 = and i32 %shr43, 63
  %or45 = or i32 128, %and44
  %conv46 = trunc i32 %or45 to i8
  %arrayidx47 = getelementptr inbounds [5 x i8], [5 x i8]* %str, i32 0, i64 1
  store i8 %conv46, i8* %arrayidx47, align 1
  %17 = load i32, i32* %c.addr, align 4
  %and48 = and i32 %17, 63
  %or49 = or i32 128, %and48
  %conv50 = trunc i32 %or49 to i8
  %arrayidx51 = getelementptr inbounds [5 x i8], [5 x i8]* %str, i32 0, i64 2
  store i8 %conv50, i8* %arrayidx51, align 1
  br label %cond.end

cond.false.52:                                    ; preds = %cond.false.33, %cond.true.29
  %18 = load i32, i32* %c.addr, align 4
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %str, i32 0, i32 0
  %call53 = call i32 @char_string(i32 %18, i8* %arraydecay)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.52, %cond.true.38
  %cond = phi i32 [ 3, %cond.true.38 ], [ %call53, %cond.false.52 ]
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.end, %cond.true.22
  %cond55 = phi i32 [ 2, %cond.true.22 ], [ %cond, %cond.end ]
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.end.54, %cond.true.10
  %cond57 = phi i32 [ 1, %cond.true.10 ], [ %cond55, %cond.end.54 ]
  store i32 %cond57, i32* %len, align 4
  %19 = load i32, i32* %len, align 4
  %cmp58 = icmp eq i32 %19, 1
  br i1 %cmp58, label %if.then.60, label %if.end.63

if.then.60:                                       ; preds = %cond.end.56
  %arraydecay61 = getelementptr inbounds [5 x i8], [5 x i8]* %str, i32 0, i32 0
  %20 = load i8, i8* %arraydecay61, align 1
  %conv62 = zext i8 %20 to i32
  store i32 %conv62, i32* %c.addr, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.60, %cond.end.56
  br label %if.end.86

if.else:                                          ; preds = %if.end
  br i1 true, label %cond.true.64, label %cond.false.68

cond.true.64:                                     ; preds = %if.else
  %21 = load i32, i32* %c.addr, align 4
  %add65 = add i32 %21, 0
  %cmp66 = icmp ult i32 %add65, 256
  br i1 %cmp66, label %cond.true.73, label %cond.false.74

cond.false.68:                                    ; preds = %if.else
  %22 = load i32, i32* %c.addr, align 4
  %conv69 = sext i32 %22 to i64
  %add70 = add i64 %conv69, 0
  %cmp71 = icmp ult i64 %add70, 256
  br i1 %cmp71, label %cond.true.73, label %cond.false.74

cond.true.73:                                     ; preds = %cond.false.68, %cond.true.64
  %23 = load i32, i32* %c.addr, align 4
  br label %cond.end.82

cond.false.74:                                    ; preds = %cond.false.68, %cond.true.64
  %24 = load i32, i32* %c.addr, align 4
  %cmp75 = icmp sgt i32 %24, 4194175
  br i1 %cmp75, label %cond.true.77, label %cond.false.78

cond.true.77:                                     ; preds = %cond.false.74
  %25 = load i32, i32* %c.addr, align 4
  %sub = sub nsw i32 %25, 4194048
  br label %cond.end.80

cond.false.78:                                    ; preds = %cond.false.74
  %26 = load i32, i32* %c.addr, align 4
  %and79 = and i32 %26, 255
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.false.78, %cond.true.77
  %cond81 = phi i32 [ %sub, %cond.true.77 ], [ %and79, %cond.false.78 ]
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.end.80, %cond.true.73
  %cond83 = phi i32 [ %23, %cond.true.73 ], [ %cond81, %cond.end.80 ]
  %conv84 = trunc i32 %cond83 to i8
  %arrayidx85 = getelementptr inbounds [5 x i8], [5 x i8]* %str, i32 0, i64 0
  store i8 %conv84, i8* %arrayidx85, align 1
  store i32 1, i32* %len, align 4
  br label %if.end.86

if.end.86:                                        ; preds = %cond.end.82, %if.end.63
  %27 = load i64, i64* %overwrite, align 8
  %call87 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp88 = icmp eq i64 %27, %call87
  br i1 %cmp88, label %if.end.228, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.86
  %28 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %28, i32 0, i32 75
  %29 = load i64, i64* %pt, align 8
  %add90 = add nsw i64 %29, 0
  %30 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %30, i32 0, i32 79
  %31 = load i64, i64* %zv, align 8
  %cmp91 = icmp slt i64 %add90, %31
  br i1 %cmp91, label %if.then.93, label %if.end.228

if.then.93:                                       ; preds = %land.lhs.true
  %32 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_94 = getelementptr inbounds %struct.buffer, %struct.buffer* %32, i32 0, i32 39
  %33 = load i64, i64* %enable_multibyte_characters_94, align 8
  %call95 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp96 = icmp eq i64 %33, %call95
  br i1 %cmp96, label %cond.false.101, label %cond.true.98

cond.true.98:                                     ; preds = %if.then.93
  %34 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %34, i32 0, i32 76
  %35 = load i64, i64* %pt_byte, align 8
  %add99 = add nsw i64 %35, 0
  %call100 = call i32 @FETCH_MULTIBYTE_CHAR(i64 %add99)
  br label %cond.end.117

cond.false.101:                                   ; preds = %if.then.93
  %36 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte102 = getelementptr inbounds %struct.buffer, %struct.buffer* %36, i32 0, i32 76
  %37 = load i64, i64* %pt_byte102, align 8
  %add103 = add nsw i64 %37, 0
  %38 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %38, i32 0, i32 73
  %39 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %gpt_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %39, i32 0, i32 3
  %40 = load i64, i64* %gpt_byte, align 8
  %cmp104 = icmp sge i64 %add103, %40
  br i1 %cmp104, label %cond.true.106, label %cond.false.108

cond.true.106:                                    ; preds = %cond.false.101
  %41 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text107 = getelementptr inbounds %struct.buffer, %struct.buffer* %41, i32 0, i32 73
  %42 = load %struct.buffer_text*, %struct.buffer_text** %text107, align 8
  %gap_size = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %42, i32 0, i32 5
  %43 = load i64, i64* %gap_size, align 8
  br label %cond.end.109

cond.false.108:                                   ; preds = %cond.false.101
  br label %cond.end.109

cond.end.109:                                     ; preds = %cond.false.108, %cond.true.106
  %cond110 = phi i64 [ %43, %cond.true.106 ], [ 0, %cond.false.108 ]
  %44 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte111 = getelementptr inbounds %struct.buffer, %struct.buffer* %44, i32 0, i32 76
  %45 = load i64, i64* %pt_byte111, align 8
  %add112 = add nsw i64 %45, 0
  %add113 = add nsw i64 %cond110, %add112
  %46 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text114 = getelementptr inbounds %struct.buffer, %struct.buffer* %46, i32 0, i32 73
  %47 = load %struct.buffer_text*, %struct.buffer_text** %text114, align 8
  %beg = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %47, i32 0, i32 0
  %48 = load i8*, i8** %beg, align 8
  %add.ptr = getelementptr inbounds i8, i8* %48, i64 %add113
  %add.ptr115 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %49 = load i8, i8* %add.ptr115, align 1
  %conv116 = zext i8 %49 to i32
  br label %cond.end.117

cond.end.117:                                     ; preds = %cond.end.109, %cond.true.98
  %cond118 = phi i32 [ %call100, %cond.true.98 ], [ %conv116, %cond.end.109 ]
  store i32 %cond118, i32* %c2, align 4
  %50 = load i64, i64* %overwrite, align 8
  %call119 = call i64 @builtin_lisp_symbol(i32 737)
  %cmp120 = icmp eq i64 %50, %call119
  br i1 %cmp120, label %if.then.122, label %if.else.129

if.then.122:                                      ; preds = %cond.end.117
  %51 = load i64, i64* %n.addr, align 8
  %cmp123 = icmp slt i64 %51, 9223372036854775807
  br i1 %cmp123, label %cond.true.125, label %cond.false.126

cond.true.125:                                    ; preds = %if.then.122
  %52 = load i64, i64* %n.addr, align 8
  br label %cond.end.127

cond.false.126:                                   ; preds = %if.then.122
  br label %cond.end.127

cond.end.127:                                     ; preds = %cond.false.126, %cond.true.125
  %cond128 = phi i64 [ %52, %cond.true.125 ], [ 9223372036854775807, %cond.false.126 ]
  store i64 %cond128, i64* %chars_to_delete, align 8
  br label %if.end.227

if.else.129:                                      ; preds = %cond.end.117
  %53 = load i32, i32* %c.addr, align 4
  %cmp130 = icmp ne i32 %53, 10
  br i1 %cmp130, label %land.lhs.true.132, label %if.end.226

land.lhs.true.132:                                ; preds = %if.else.129
  %54 = load i32, i32* %c2, align 4
  %cmp133 = icmp ne i32 %54, 10
  br i1 %cmp133, label %land.lhs.true.135, label %if.end.226

land.lhs.true.135:                                ; preds = %land.lhs.true.132
  %55 = load i32, i32* %c.addr, align 4
  %conv136 = sext i32 %55 to i64
  %shl = shl i64 %conv136, 2
  %add137 = add i64 %shl, 2
  %call138 = call i64 @Fchar_width(i64 %add137)
  %shr139 = ashr i64 %call138, 2
  %conv140 = trunc i64 %shr139 to i32
  store i32 %conv140, i32* %cwidth, align 4
  %cmp141 = icmp ne i32 %conv140, 0
  br i1 %cmp141, label %if.then.143, label %if.end.226

if.then.143:                                      ; preds = %land.lhs.true.135
  %56 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt144 = getelementptr inbounds %struct.buffer, %struct.buffer* %56, i32 0, i32 75
  %57 = load i64, i64* %pt144, align 8
  %add145 = add nsw i64 %57, 0
  store i64 %add145, i64* %pos, align 8
  %58 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte146 = getelementptr inbounds %struct.buffer, %struct.buffer* %58, i32 0, i32 76
  %59 = load i64, i64* %pt_byte146, align 8
  %add147 = add nsw i64 %59, 0
  store i64 %add147, i64* %pos_byte, align 8
  %call148 = call i64 @current_column()
  store i64 %call148, i64* %curcol, align 8
  %60 = load i64, i64* %n.addr, align 8
  %61 = load i64, i64* %curcol, align 8
  %sub149 = sub nsw i64 2305843009213693951, %61
  %62 = load i32, i32* %cwidth, align 4
  %conv150 = sext i32 %62 to i64
  %div = sdiv i64 %sub149, %conv150
  %cmp151 = icmp sle i64 %60, %div
  br i1 %cmp151, label %if.then.153, label %if.end.225

if.then.153:                                      ; preds = %if.then.143
  %63 = load i64, i64* %curcol, align 8
  %64 = load i64, i64* %n.addr, align 8
  %65 = load i32, i32* %cwidth, align 4
  %conv154 = sext i32 %65 to i64
  %mul = mul nsw i64 %64, %conv154
  %add155 = add nsw i64 %63, %mul
  store i64 %add155, i64* %target_clm, align 8
  %66 = load i64, i64* %target_clm, align 8
  %shl156 = shl i64 %66, 2
  %add157 = add i64 %shl156, 2
  %call158 = call i64 @builtin_lisp_symbol(i32 0)
  %call159 = call i64 @Fmove_to_column(i64 %add157, i64 %call158)
  %shr160 = ashr i64 %call159, 2
  store i64 %shr160, i64* %actual_clm, align 8
  %67 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt161 = getelementptr inbounds %struct.buffer, %struct.buffer* %67, i32 0, i32 75
  %68 = load i64, i64* %pt161, align 8
  %add162 = add nsw i64 %68, 0
  %69 = load i64, i64* %pos, align 8
  %sub163 = sub nsw i64 %add162, %69
  store i64 %sub163, i64* %chars_to_delete, align 8
  %70 = load i64, i64* %actual_clm, align 8
  %71 = load i64, i64* %target_clm, align 8
  %cmp164 = icmp sgt i64 %70, %71
  br i1 %cmp164, label %if.then.166, label %if.end.224

if.then.166:                                      ; preds = %if.then.153
  %72 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte167 = getelementptr inbounds %struct.buffer, %struct.buffer* %72, i32 0, i32 76
  %73 = load i64, i64* %pt_byte167, align 8
  %add168 = add nsw i64 %73, 0
  store i64 %add168, i64* %actual, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.166
  %74 = load i64, i64* %actual, align 8
  %dec = add nsw i64 %74, -1
  store i64 %dec, i64* %actual, align 8
  %75 = load i64, i64* %actual, align 8
  %76 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text169 = getelementptr inbounds %struct.buffer, %struct.buffer* %76, i32 0, i32 73
  %77 = load %struct.buffer_text*, %struct.buffer_text** %text169, align 8
  %gpt_byte170 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %77, i32 0, i32 3
  %78 = load i64, i64* %gpt_byte170, align 8
  %cmp171 = icmp slt i64 %75, %78
  br i1 %cmp171, label %if.then.173, label %if.else.178

if.then.173:                                      ; preds = %do.body
  %79 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text174 = getelementptr inbounds %struct.buffer, %struct.buffer* %79, i32 0, i32 73
  %80 = load %struct.buffer_text*, %struct.buffer_text** %text174, align 8
  %beg175 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %80, i32 0, i32 0
  %81 = load i8*, i8** %beg175, align 8
  %82 = load i64, i64* %actual, align 8
  %add.ptr176 = getelementptr inbounds i8, i8* %81, i64 %82
  %add.ptr177 = getelementptr inbounds i8, i8* %add.ptr176, i64 -1
  store i8* %add.ptr177, i8** %chp, align 8
  br label %if.end.186

if.else.178:                                      ; preds = %do.body
  %83 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text179 = getelementptr inbounds %struct.buffer, %struct.buffer* %83, i32 0, i32 73
  %84 = load %struct.buffer_text*, %struct.buffer_text** %text179, align 8
  %beg180 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %84, i32 0, i32 0
  %85 = load i8*, i8** %beg180, align 8
  %86 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text181 = getelementptr inbounds %struct.buffer, %struct.buffer* %86, i32 0, i32 73
  %87 = load %struct.buffer_text*, %struct.buffer_text** %text181, align 8
  %gap_size182 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %87, i32 0, i32 5
  %88 = load i64, i64* %gap_size182, align 8
  %add.ptr183 = getelementptr inbounds i8, i8* %85, i64 %88
  %89 = load i64, i64* %actual, align 8
  %add.ptr184 = getelementptr inbounds i8, i8* %add.ptr183, i64 %89
  %add.ptr185 = getelementptr inbounds i8, i8* %add.ptr184, i64 -1
  store i8* %add.ptr185, i8** %chp, align 8
  br label %if.end.186

if.end.186:                                       ; preds = %if.else.178, %if.then.173
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.186
  %90 = load i8*, i8** %chp, align 8
  %91 = load i8, i8* %90, align 1
  %conv187 = zext i8 %91 to i32
  %and188 = and i32 %conv187, 192
  %cmp189 = icmp ne i32 %and188, 128
  %lnot = xor i1 %cmp189, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %92 = load i8*, i8** %chp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %92, i32 -1
  store i8* %incdec.ptr, i8** %chp, align 8
  %93 = load i64, i64* %actual, align 8
  %dec191 = add nsw i64 %93, -1
  store i64 %dec191, i64* %actual, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  %94 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_192 = getelementptr inbounds %struct.buffer, %struct.buffer* %94, i32 0, i32 39
  %95 = load i64, i64* %enable_multibyte_characters_192, align 8
  %call193 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp194 = icmp eq i64 %95, %call193
  br i1 %cmp194, label %cond.false.198, label %cond.true.196

cond.true.196:                                    ; preds = %do.end
  %96 = load i64, i64* %actual, align 8
  %call197 = call i32 @FETCH_MULTIBYTE_CHAR(i64 %96)
  br label %cond.end.215

cond.false.198:                                   ; preds = %do.end
  %97 = load i64, i64* %actual, align 8
  %98 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text199 = getelementptr inbounds %struct.buffer, %struct.buffer* %98, i32 0, i32 73
  %99 = load %struct.buffer_text*, %struct.buffer_text** %text199, align 8
  %gpt_byte200 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %99, i32 0, i32 3
  %100 = load i64, i64* %gpt_byte200, align 8
  %cmp201 = icmp sge i64 %97, %100
  br i1 %cmp201, label %cond.true.203, label %cond.false.206

cond.true.203:                                    ; preds = %cond.false.198
  %101 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text204 = getelementptr inbounds %struct.buffer, %struct.buffer* %101, i32 0, i32 73
  %102 = load %struct.buffer_text*, %struct.buffer_text** %text204, align 8
  %gap_size205 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %102, i32 0, i32 5
  %103 = load i64, i64* %gap_size205, align 8
  br label %cond.end.207

cond.false.206:                                   ; preds = %cond.false.198
  br label %cond.end.207

cond.end.207:                                     ; preds = %cond.false.206, %cond.true.203
  %cond208 = phi i64 [ %103, %cond.true.203 ], [ 0, %cond.false.206 ]
  %104 = load i64, i64* %actual, align 8
  %add209 = add nsw i64 %cond208, %104
  %105 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text210 = getelementptr inbounds %struct.buffer, %struct.buffer* %105, i32 0, i32 73
  %106 = load %struct.buffer_text*, %struct.buffer_text** %text210, align 8
  %beg211 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %106, i32 0, i32 0
  %107 = load i8*, i8** %beg211, align 8
  %add.ptr212 = getelementptr inbounds i8, i8* %107, i64 %add209
  %add.ptr213 = getelementptr inbounds i8, i8* %add.ptr212, i64 -1
  %108 = load i8, i8* %add.ptr213, align 1
  %conv214 = zext i8 %108 to i32
  br label %cond.end.215

cond.end.215:                                     ; preds = %cond.end.207, %cond.true.196
  %cond216 = phi i32 [ %call197, %cond.true.196 ], [ %conv214, %cond.end.207 ]
  %cmp217 = icmp eq i32 %cond216, 9
  br i1 %cmp217, label %if.then.219, label %if.else.221

if.then.219:                                      ; preds = %cond.end.215
  %109 = load i64, i64* %chars_to_delete, align 8
  %dec220 = add nsw i64 %109, -1
  store i64 %dec220, i64* %chars_to_delete, align 8
  br label %if.end.223

if.else.221:                                      ; preds = %cond.end.215
  %110 = load i64, i64* %actual_clm, align 8
  %111 = load i64, i64* %target_clm, align 8
  %sub222 = sub nsw i64 %110, %111
  store i64 %sub222, i64* %spaces_to_insert, align 8
  br label %if.end.223

if.end.223:                                       ; preds = %if.else.221, %if.then.219
  br label %if.end.224

if.end.224:                                       ; preds = %if.end.223, %if.then.153
  %112 = load i64, i64* %pos, align 8
  %113 = load i64, i64* %pos_byte, align 8
  call void @set_point_both(i64 %112, i64 %113)
  br label %if.end.225

if.end.225:                                       ; preds = %if.end.224, %if.then.143
  br label %if.end.226

if.end.226:                                       ; preds = %if.end.225, %land.lhs.true.135, %land.lhs.true.132, %if.else.129
  br label %if.end.227

if.end.227:                                       ; preds = %if.end.226, %cond.end.127
  store i32 2, i32* %hairy, align 4
  br label %if.end.228

if.end.228:                                       ; preds = %if.end.227, %land.lhs.true, %if.end.86
  %114 = load i32, i32* %c.addr, align 4
  %call229 = call i32 @SYNTAX(i32 %114)
  store i32 %call229, i32* %synt, align 4
  %115 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %abbrev_mode_ = getelementptr inbounds %struct.buffer, %struct.buffer* %115, i32 0, i32 36
  %116 = load i64, i64* %abbrev_mode_, align 8
  %call230 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp231 = icmp eq i64 %116, %call230
  br i1 %cmp231, label %if.end.326, label %land.lhs.true.233

land.lhs.true.233:                                ; preds = %if.end.228
  %117 = load i32, i32* %synt, align 4
  %cmp234 = icmp ne i32 %117, 2
  br i1 %cmp234, label %land.lhs.true.236, label %if.end.326

land.lhs.true.236:                                ; preds = %land.lhs.true.233
  %118 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %read_only_ = getelementptr inbounds %struct.buffer, %struct.buffer* %118, i32 0, i32 7
  %119 = load i64, i64* %read_only_, align 8
  %call237 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp238 = icmp eq i64 %119, %call237
  br i1 %cmp238, label %land.lhs.true.240, label %if.end.326

land.lhs.true.240:                                ; preds = %land.lhs.true.236
  %120 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt241 = getelementptr inbounds %struct.buffer, %struct.buffer* %120, i32 0, i32 75
  %121 = load i64, i64* %pt241, align 8
  %add242 = add nsw i64 %121, 0
  %122 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %122, i32 0, i32 77
  %123 = load i64, i64* %begv, align 8
  %cmp243 = icmp sgt i64 %add242, %123
  br i1 %cmp243, label %land.lhs.true.245, label %if.end.326

land.lhs.true.245:                                ; preds = %land.lhs.true.240
  %124 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_246 = getelementptr inbounds %struct.buffer, %struct.buffer* %124, i32 0, i32 39
  %125 = load i64, i64* %enable_multibyte_characters_246, align 8
  %call247 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp248 = icmp eq i64 %125, %call247
  br i1 %cmp248, label %cond.false.253, label %cond.true.250

cond.true.250:                                    ; preds = %land.lhs.true.245
  %call251 = call i64 @Fprevious_char()
  %shr252 = ashr i64 %call251, 2
  br label %cond.end.275

cond.false.253:                                   ; preds = %land.lhs.true.245
  br i1 false, label %cond.true.254, label %cond.false.260

cond.true.254:                                    ; preds = %cond.false.253
  %call255 = call i64 @Fprevious_char()
  %shr256 = ashr i64 %call255, 2
  %add257 = add nsw i64 %shr256, 0
  %cmp258 = icmp slt i64 %add257, 128
  br i1 %cmp258, label %cond.true.266, label %cond.false.269

cond.false.260:                                   ; preds = %cond.false.253
  %call261 = call i64 @Fprevious_char()
  %shr262 = ashr i64 %call261, 2
  %add263 = add i64 %shr262, 0
  %cmp264 = icmp ult i64 %add263, 128
  br i1 %cmp264, label %cond.true.266, label %cond.false.269

cond.true.266:                                    ; preds = %cond.false.260, %cond.true.254
  %call267 = call i64 @Fprevious_char()
  %shr268 = ashr i64 %call267, 2
  br label %cond.end.273

cond.false.269:                                   ; preds = %cond.false.260, %cond.true.254
  %call270 = call i64 @Fprevious_char()
  %shr271 = ashr i64 %call270, 2
  %add272 = add nsw i64 %shr271, 4194048
  br label %cond.end.273

cond.end.273:                                     ; preds = %cond.false.269, %cond.true.266
  %cond274 = phi i64 [ %shr268, %cond.true.266 ], [ %add272, %cond.false.269 ]
  br label %cond.end.275

cond.end.275:                                     ; preds = %cond.end.273, %cond.true.250
  %cond276 = phi i64 [ %shr252, %cond.true.250 ], [ %cond274, %cond.end.273 ]
  %conv277 = trunc i64 %cond276 to i32
  %call278 = call i32 @SYNTAX(i32 %conv277)
  %cmp279 = icmp eq i32 %call278, 2
  br i1 %cmp279, label %if.then.281, label %if.end.326

if.then.281:                                      ; preds = %cond.end.275
  %126 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text282 = getelementptr inbounds %struct.buffer, %struct.buffer* %126, i32 0, i32 73
  %127 = load %struct.buffer_text*, %struct.buffer_text** %text282, align 8
  %modiff283 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %127, i32 0, i32 6
  %128 = load i64, i64* %modiff283, align 8
  store i64 %128, i64* %modiff, align 8
  %call284 = call i64 @builtin_lisp_symbol(i32 388)
  %call285 = call i64 @call0(i64 %call284)
  store i64 %call285, i64* %sym, align 8
  %129 = load i64, i64* %sym, align 8
  %and286 = and i64 %129, 7
  %conv287 = trunc i64 %and286 to i32
  %cmp288 = icmp eq i32 %conv287, 0
  br i1 %cmp288, label %land.lhs.true.290, label %if.end.319

land.lhs.true.290:                                ; preds = %if.then.281
  %130 = load i64, i64* %sym, align 8
  %call291 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp292 = icmp eq i64 %130, %call291
  br i1 %cmp292, label %if.end.319, label %land.lhs.true.294

land.lhs.true.294:                                ; preds = %land.lhs.true.290
  %131 = load i64, i64* %sym, align 8
  %sub295 = sub nsw i64 %131, 0
  %add.ptr296 = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub295
  %132 = bitcast i8* %add.ptr296 to %struct.Lisp_Symbol*
  %function = getelementptr inbounds %struct.Lisp_Symbol, %struct.Lisp_Symbol* %132, i32 0, i32 3
  %133 = load i64, i64* %function, align 8
  %call297 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp298 = icmp eq i64 %133, %call297
  br i1 %cmp298, label %if.end.319, label %land.lhs.true.300

land.lhs.true.300:                                ; preds = %land.lhs.true.294
  %134 = load i64, i64* %sym, align 8
  %sub301 = sub nsw i64 %134, 0
  %add.ptr302 = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub301
  %135 = bitcast i8* %add.ptr302 to %struct.Lisp_Symbol*
  %function303 = getelementptr inbounds %struct.Lisp_Symbol, %struct.Lisp_Symbol* %135, i32 0, i32 3
  %136 = load i64, i64* %function303, align 8
  %and304 = and i64 %136, 7
  %conv305 = trunc i64 %and304 to i32
  %cmp306 = icmp eq i32 %conv305, 0
  br i1 %cmp306, label %if.then.308, label %if.end.319

if.then.308:                                      ; preds = %land.lhs.true.300
  %137 = load i64, i64* %sym, align 8
  %sub309 = sub nsw i64 %137, 0
  %add.ptr310 = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub309
  %138 = bitcast i8* %add.ptr310 to %struct.Lisp_Symbol*
  %function311 = getelementptr inbounds %struct.Lisp_Symbol, %struct.Lisp_Symbol* %138, i32 0, i32 3
  %139 = load i64, i64* %function311, align 8
  %call312 = call i64 @intern(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0))
  %call313 = call i64 @Fget(i64 %139, i64 %call312)
  store i64 %call313, i64* %prop, align 8
  %140 = load i64, i64* %prop, align 8
  %call314 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp315 = icmp eq i64 %140, %call314
  br i1 %cmp315, label %if.end.318, label %if.then.317

if.then.317:                                      ; preds = %if.then.308
  store i32 1, i32* %retval
  br label %return

if.end.318:                                       ; preds = %if.then.308
  br label %if.end.319

if.end.319:                                       ; preds = %if.end.318, %land.lhs.true.300, %land.lhs.true.294, %land.lhs.true.290, %if.then.281
  %141 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text320 = getelementptr inbounds %struct.buffer, %struct.buffer* %141, i32 0, i32 73
  %142 = load %struct.buffer_text*, %struct.buffer_text** %text320, align 8
  %modiff321 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %142, i32 0, i32 6
  %143 = load i64, i64* %modiff321, align 8
  %144 = load i64, i64* %modiff, align 8
  %cmp322 = icmp ne i64 %143, %144
  br i1 %cmp322, label %if.then.324, label %if.end.325

if.then.324:                                      ; preds = %if.end.319
  store i32 2, i32* %hairy, align 4
  br label %if.end.325

if.end.325:                                       ; preds = %if.then.324, %if.end.319
  br label %if.end.326

if.end.326:                                       ; preds = %if.end.325, %cond.end.275, %land.lhs.true.240, %land.lhs.true.236, %land.lhs.true.233, %if.end.228
  %145 = load i64, i64* %chars_to_delete, align 8
  %tobool = icmp ne i64 %145, 0
  br i1 %tobool, label %if.then.327, label %if.else.381

if.then.327:                                      ; preds = %if.end.326
  %146 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_328 = getelementptr inbounds %struct.buffer, %struct.buffer* %146, i32 0, i32 39
  %147 = load i64, i64* %enable_multibyte_characters_328, align 8
  %call329 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp330 = icmp eq i64 %147, %call329
  br i1 %cmp330, label %land.lhs.true.332, label %cond.false.357

land.lhs.true.332:                                ; preds = %if.then.327
  br i1 true, label %cond.true.333, label %cond.false.337

cond.true.333:                                    ; preds = %land.lhs.true.332
  %148 = load i32, i32* %c.addr, align 4
  %add334 = add i32 %148, 0
  %cmp335 = icmp ult i32 %add334, 256
  br i1 %cmp335, label %cond.true.342, label %cond.false.357

cond.false.337:                                   ; preds = %land.lhs.true.332
  %149 = load i32, i32* %c.addr, align 4
  %conv338 = sext i32 %149 to i64
  %add339 = add i64 %conv338, 0
  %cmp340 = icmp ult i64 %add339, 256
  br i1 %cmp340, label %cond.true.342, label %cond.false.357

cond.true.342:                                    ; preds = %cond.false.337, %cond.true.333
  br i1 true, label %cond.true.343, label %cond.false.347

cond.true.343:                                    ; preds = %cond.true.342
  %150 = load i32, i32* %c.addr, align 4
  %add344 = add i32 %150, 0
  %cmp345 = icmp ult i32 %add344, 128
  br i1 %cmp345, label %cond.true.352, label %cond.false.353

cond.false.347:                                   ; preds = %cond.true.342
  %151 = load i32, i32* %c.addr, align 4
  %conv348 = sext i32 %151 to i64
  %add349 = add i64 %conv348, 0
  %cmp350 = icmp ult i64 %add349, 128
  br i1 %cmp350, label %cond.true.352, label %cond.false.353

cond.true.352:                                    ; preds = %cond.false.347, %cond.true.343
  %152 = load i32, i32* %c.addr, align 4
  br label %cond.end.355

cond.false.353:                                   ; preds = %cond.false.347, %cond.true.343
  %153 = load i32, i32* %c.addr, align 4
  %add354 = add nsw i32 %153, 4194048
  br label %cond.end.355

cond.end.355:                                     ; preds = %cond.false.353, %cond.true.352
  %cond356 = phi i32 [ %152, %cond.true.352 ], [ %add354, %cond.false.353 ]
  br label %cond.end.358

cond.false.357:                                   ; preds = %cond.false.337, %cond.true.333, %if.then.327
  %154 = load i32, i32* %c.addr, align 4
  br label %cond.end.358

cond.end.358:                                     ; preds = %cond.false.357, %cond.end.355
  %cond359 = phi i32 [ %cond356, %cond.end.355 ], [ %154, %cond.false.357 ]
  store i32 %cond359, i32* %mc, align 4
  %155 = load i64, i64* %n.addr, align 8
  %shl360 = shl i64 %155, 2
  %add361 = add i64 %shl360, 2
  %156 = load i32, i32* %mc, align 4
  %conv362 = sext i32 %156 to i64
  %shl363 = shl i64 %conv362, 2
  %add364 = add i64 %shl363, 2
  %call365 = call i64 @Fmake_string(i64 %add361, i64 %add364)
  store i64 %call365, i64* %string, align 8
  %157 = load i64, i64* %spaces_to_insert, align 8
  %tobool366 = icmp ne i64 %157, 0
  br i1 %tobool366, label %if.then.367, label %if.end.372

if.then.367:                                      ; preds = %cond.end.358
  %158 = load i64, i64* %spaces_to_insert, align 8
  %shl368 = shl i64 %158, 2
  %add369 = add i64 %shl368, 2
  %call370 = call i64 @Fmake_string(i64 %add369, i64 130)
  store i64 %call370, i64* %tem, align 8
  %159 = load i64, i64* %string, align 8
  %160 = load i64, i64* %tem, align 8
  %call371 = call i64 @concat2(i64 %159, i64 %160)
  store i64 %call371, i64* %string, align 8
  br label %if.end.372

if.end.372:                                       ; preds = %if.then.367, %cond.end.358
  %161 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt373 = getelementptr inbounds %struct.buffer, %struct.buffer* %161, i32 0, i32 75
  %162 = load i64, i64* %pt373, align 8
  %add374 = add nsw i64 %162, 0
  %163 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt375 = getelementptr inbounds %struct.buffer, %struct.buffer* %163, i32 0, i32 75
  %164 = load i64, i64* %pt375, align 8
  %add376 = add nsw i64 %164, 0
  %165 = load i64, i64* %chars_to_delete, align 8
  %add377 = add nsw i64 %add376, %165
  %166 = load i64, i64* %string, align 8
  call void @replace_range(i64 %add374, i64 %add377, i64 %166, i1 zeroext true, i1 zeroext true, i1 zeroext true, i1 zeroext false)
  %167 = load i64, i64* %n.addr, align 8
  %shl378 = shl i64 %167, 2
  %add379 = add i64 %shl378, 2
  %call380 = call i64 @Fforward_char(i64 %add379)
  br label %if.end.426

if.else.381:                                      ; preds = %if.end.326
  %168 = load i64, i64* %n.addr, align 8
  %cmp382 = icmp sgt i64 %168, 1
  br i1 %cmp382, label %if.then.384, label %if.else.418

if.then.384:                                      ; preds = %if.else.381
  store i64 16384, i64* %sa_avail, align 8
  %call385 = call i64 @SPECPDL_INDEX()
  store i64 %call385, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  br label %do.body.386

do.body.386:                                      ; preds = %if.then.384
  %169 = load i64, i64* %n.addr, align 8
  %170 = load i64, i64* %sa_avail, align 8
  %div387 = udiv i64 %170, 1
  %171 = load i32, i32* %len, align 4
  %conv388 = sext i32 %171 to i64
  %div389 = udiv i64 %div387, %conv388
  %cmp390 = icmp ule i64 %169, %div389
  br i1 %cmp390, label %if.then.392, label %if.else.400

if.then.392:                                      ; preds = %do.body.386
  %172 = load i32, i32* %len, align 4
  %conv393 = sext i32 %172 to i64
  %mul394 = mul i64 1, %conv393
  %173 = load i64, i64* %n.addr, align 8
  %mul395 = mul i64 %mul394, %173
  %174 = load i64, i64* %sa_avail, align 8
  %sub396 = sub i64 %174, %mul395
  store i64 %sub396, i64* %sa_avail, align 8
  %175 = load i32, i32* %len, align 4
  %conv397 = sext i32 %175 to i64
  %mul398 = mul i64 1, %conv397
  %176 = load i64, i64* %n.addr, align 8
  %mul399 = mul i64 %mul398, %176
  %177 = alloca i8, i64 %mul399
  store i8* %177, i8** %strn, align 8
  br label %if.end.404

if.else.400:                                      ; preds = %do.body.386
  %178 = load i64, i64* %n.addr, align 8
  %179 = load i32, i32* %len, align 4
  %conv401 = sext i32 %179 to i64
  %mul402 = mul i64 1, %conv401
  %call403 = call noalias i8* @xnmalloc(i64 %178, i64 %mul402)
  store i8* %call403, i8** %strn, align 8
  store i8 1, i8* %sa_must_free, align 1
  %180 = load i8*, i8** %strn, align 8
  call void @record_unwind_protect_ptr(void (i8*)* @xfree, i8* %180)
  br label %if.end.404

if.end.404:                                       ; preds = %if.else.400, %if.then.392
  br label %do.end.405

do.end.405:                                       ; preds = %if.end.404
  %181 = load i8*, i8** %strn, align 8
  store i8* %181, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.405
  %182 = load i64, i64* %n.addr, align 8
  %cmp406 = icmp sgt i64 %182, 0
  br i1 %cmp406, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %183 = load i8*, i8** %p, align 8
  %184 = bitcast [5 x i8]* %str to i8*
  %185 = load i32, i32* %len, align 4
  %conv408 = sext i32 %185 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %183, i8* %184, i64 %conv408, i32 1, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %186 = load i64, i64* %n.addr, align 8
  %dec409 = add nsw i64 %186, -1
  store i64 %dec409, i64* %n.addr, align 8
  %187 = load i32, i32* %len, align 4
  %188 = load i8*, i8** %p, align 8
  %idx.ext = sext i32 %187 to i64
  %add.ptr410 = getelementptr inbounds i8, i8* %188, i64 %idx.ext
  store i8* %add.ptr410, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %189 = load i8*, i8** %strn, align 8
  %190 = load i8*, i8** %p, align 8
  %191 = load i8*, i8** %strn, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %190 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %191 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @insert_and_inherit(i8* %189, i64 %sub.ptr.sub)
  br label %do.body.411

do.body.411:                                      ; preds = %for.end
  %192 = load i8, i8* %sa_must_free, align 1
  %tobool412 = trunc i8 %192 to i1
  br i1 %tobool412, label %if.then.413, label %if.end.416

if.then.413:                                      ; preds = %do.body.411
  store i8 0, i8* %sa_must_free, align 1
  %193 = load i64, i64* %sa_count, align 8
  %call414 = call i64 @builtin_lisp_symbol(i32 0)
  %call415 = call i64 @unbind_to(i64 %193, i64 %call414)
  br label %if.end.416

if.end.416:                                       ; preds = %if.then.413, %do.body.411
  br label %do.end.417

do.end.417:                                       ; preds = %if.end.416
  br label %if.end.425

if.else.418:                                      ; preds = %if.else.381
  %194 = load i64, i64* %n.addr, align 8
  %cmp419 = icmp sgt i64 %194, 0
  br i1 %cmp419, label %if.then.421, label %if.end.424

if.then.421:                                      ; preds = %if.else.418
  %arraydecay422 = getelementptr inbounds [5 x i8], [5 x i8]* %str, i32 0, i32 0
  %195 = load i32, i32* %len, align 4
  %conv423 = sext i32 %195 to i64
  call void @insert_and_inherit(i8* %arraydecay422, i64 %conv423)
  br label %if.end.424

if.end.424:                                       ; preds = %if.then.421, %if.else.418
  br label %if.end.425

if.end.425:                                       ; preds = %if.end.424, %do.end.417
  br label %if.end.426

if.end.426:                                       ; preds = %if.end.425, %if.end.372
  %196 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 7), align 8
  %call427 = call zeroext i1 @CHAR_TABLE_P(i64 %196)
  br i1 %call427, label %cond.true.429, label %cond.false.434

cond.true.429:                                    ; preds = %if.end.426
  %197 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 7), align 8
  %198 = load i32, i32* %c.addr, align 4
  %call430 = call i64 @CHAR_TABLE_REF(i64 %197, i32 %198)
  %call431 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp432 = icmp eq i64 %call430, %call431
  br i1 %cmp432, label %if.end.478, label %land.lhs.true.440

cond.false.434:                                   ; preds = %if.end.426
  %199 = load i32, i32* %c.addr, align 4
  %cmp435 = icmp eq i32 %199, 32
  br i1 %cmp435, label %land.lhs.true.440, label %lor.lhs.false.437

lor.lhs.false.437:                                ; preds = %cond.false.434
  %200 = load i32, i32* %c.addr, align 4
  %cmp438 = icmp eq i32 %200, 10
  br i1 %cmp438, label %land.lhs.true.440, label %if.end.478

land.lhs.true.440:                                ; preds = %lor.lhs.false.437, %cond.false.434, %cond.true.429
  %201 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %auto_fill_function_ = getelementptr inbounds %struct.buffer, %struct.buffer* %201, i32 0, i32 22
  %202 = load i64, i64* %auto_fill_function_, align 8
  %call441 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp442 = icmp eq i64 %202, %call441
  br i1 %cmp442, label %if.end.478, label %if.then.444

if.then.444:                                      ; preds = %land.lhs.true.440
  %203 = load i32, i32* %c.addr, align 4
  %cmp445 = icmp eq i32 %203, 10
  br i1 %cmp445, label %if.then.447, label %if.end.454

if.then.447:                                      ; preds = %if.then.444
  %204 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt448 = getelementptr inbounds %struct.buffer, %struct.buffer* %204, i32 0, i32 75
  %205 = load i64, i64* %pt448, align 8
  %add449 = add nsw i64 %205, 0
  %sub450 = sub nsw i64 %add449, 1
  %206 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte451 = getelementptr inbounds %struct.buffer, %struct.buffer* %206, i32 0, i32 76
  %207 = load i64, i64* %pt_byte451, align 8
  %add452 = add nsw i64 %207, 0
  %sub453 = sub nsw i64 %add452, 1
  call void @set_point_both(i64 %sub450, i64 %sub453)
  br label %if.end.454

if.end.454:                                       ; preds = %if.then.447, %if.then.444
  %208 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %auto_fill_function_455 = getelementptr inbounds %struct.buffer, %struct.buffer* %208, i32 0, i32 22
  %209 = load i64, i64* %auto_fill_function_455, align 8
  %call456 = call i64 @call0(i64 %209)
  store i64 %call456, i64* %auto_fill_result, align 8
  %210 = load i32, i32* %c.addr, align 4
  %cmp457 = icmp eq i32 %210, 10
  br i1 %cmp457, label %land.lhs.true.459, label %if.end.472

land.lhs.true.459:                                ; preds = %if.end.454
  %211 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt460 = getelementptr inbounds %struct.buffer, %struct.buffer* %211, i32 0, i32 75
  %212 = load i64, i64* %pt460, align 8
  %add461 = add nsw i64 %212, 0
  %213 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv462 = getelementptr inbounds %struct.buffer, %struct.buffer* %213, i32 0, i32 79
  %214 = load i64, i64* %zv462, align 8
  %cmp463 = icmp slt i64 %add461, %214
  br i1 %cmp463, label %if.then.465, label %if.end.472

if.then.465:                                      ; preds = %land.lhs.true.459
  %215 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt466 = getelementptr inbounds %struct.buffer, %struct.buffer* %215, i32 0, i32 75
  %216 = load i64, i64* %pt466, align 8
  %add467 = add nsw i64 %216, 0
  %add468 = add nsw i64 %add467, 1
  %217 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte469 = getelementptr inbounds %struct.buffer, %struct.buffer* %217, i32 0, i32 76
  %218 = load i64, i64* %pt_byte469, align 8
  %add470 = add nsw i64 %218, 0
  %add471 = add nsw i64 %add470, 1
  call void @set_point_both(i64 %add468, i64 %add471)
  br label %if.end.472

if.end.472:                                       ; preds = %if.then.465, %land.lhs.true.459, %if.end.454
  %219 = load i64, i64* %auto_fill_result, align 8
  %call473 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp474 = icmp eq i64 %219, %call473
  br i1 %cmp474, label %if.end.477, label %if.then.476

if.then.476:                                      ; preds = %if.end.472
  store i32 2, i32* %hairy, align 4
  br label %if.end.477

if.end.477:                                       ; preds = %if.then.476, %if.end.472
  br label %if.end.478

if.end.478:                                       ; preds = %if.end.477, %land.lhs.true.440, %lor.lhs.false.437, %cond.true.429
  %call479 = call i64 @builtin_lisp_symbol(i32 764)
  call void @run_hook(i64 %call479)
  %220 = load i32, i32* %hairy, align 4
  store i32 %220, i32* %retval
  br label %return

return:                                           ; preds = %if.end.478, %if.then.317
  %221 = load i32, i32* %retval
  ret i32 %221
}

declare i64 @Fset(i64, i64) #2

declare void @frame_make_pointer_invisible(%struct.frame*) #2

declare zeroext i1 @FRAMEP(i64) #2

; Function Attrs: noreturn
declare void @emacs_abort() #1

; Function Attrs: nounwind uwtable
define void @syms_of_cmds() #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %entry
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_cmds.o_fwd, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 221))
  br label %do.end

do.end:                                           ; preds = %do.body
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 221), align 8
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sforward_point to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sforward_char to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sbackward_char to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sforward_line to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sbeginning_of_line to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Send_of_line to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sdelete_char to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sself_insert_command to %struct.Lisp_Subr*))
  ret void
}

declare void @defvar_lisp(%struct.Lisp_Objfwd*, i8*, i64*) #2

declare void @defsubr(%struct.Lisp_Subr*) #2

; Function Attrs: nounwind uwtable
define void @keys_of_cmds() #0 {
entry:
  %n = alloca i32, align 4
  %0 = load i64, i64* @global_map, align 8
  call void @initial_define_key(i64 %0, i32 9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store i32 32, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %1, 127
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* @global_map, align 8
  %3 = load i32, i32* %n, align 4
  call void @initial_define_key(i64 %2, i32 %3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %n, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 160, i32* %n, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.4, %for.end
  %5 = load i32, i32* %n, align 4
  %cmp2 = icmp slt i32 %5, 256
  br i1 %cmp2, label %for.body.3, label %for.end.6

for.body.3:                                       ; preds = %for.cond.1
  %6 = load i64, i64* @global_map, align 8
  %7 = load i32, i32* %n, align 4
  call void @initial_define_key(i64 %6, i32 %7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %for.inc.4

for.inc.4:                                        ; preds = %for.body.3
  %8 = load i32, i32* %n, align 4
  %inc5 = add nsw i32 %8, 1
  store i32 %inc5, i32* %n, align 4
  br label %for.cond.1

for.end.6:                                        ; preds = %for.cond.1
  %9 = load i64, i64* @global_map, align 8
  call void @initial_define_key(i64 %9, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0))
  %10 = load i64, i64* @global_map, align 8
  call void @initial_define_key(i64 %10, i32 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0))
  %11 = load i64, i64* @global_map, align 8
  call void @initial_define_key(i64 %11, i32 5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0))
  %12 = load i64, i64* @global_map, align 8
  call void @initial_define_key(i64 %12, i32 6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0))
  ret void
}

declare void @initial_define_key(i64, i32, i8*) #2

declare i32 @char_string(i32, i8*) #2

declare i64 @Fchar_width(i64) #2

declare i64 @current_column() #2

declare i64 @Fmove_to_column(i64, i64) #2

declare i32 @SYNTAX(i32) #2

declare i64 @Fprevious_char() #2

declare i64 @Fget(i64, i64) #2

declare i64 @intern(i8*) #2

declare i64 @Fmake_string(i64, i64) #2

declare i64 @concat2(i64, i64) #2

declare void @replace_range(i64, i64, i64, i1 zeroext, i1 zeroext, i1 zeroext, i1 zeroext) #2

declare i64 @SPECPDL_INDEX() #2

declare noalias i8* @xnmalloc(i64, i64) #2

declare void @record_unwind_protect_ptr(void (i8*)*, i8*) #2

declare void @xfree(i8*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare void @insert_and_inherit(i8*, i64) #2

declare i64 @unbind_to(i64, i64) #2

declare zeroext i1 @CHAR_TABLE_P(i64) #2

declare i64 @CHAR_TABLE_REF(i64, i32) #2

declare void @run_hook(i64) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
