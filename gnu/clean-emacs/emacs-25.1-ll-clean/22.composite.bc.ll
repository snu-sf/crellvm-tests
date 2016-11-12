; ModuleID = './src/composite.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.buffer_text, %struct.buffer_text*, %struct.buffer*, i64, i64, i64, i64, i64, i64, %struct.buffer*, i32, i32, [50 x i8], %struct.timespec, i64, i64, i64, i64, i64, %struct.region_cache*, %struct.region_cache*, %struct.region_cache*, i8, %struct.Lisp_Overlay*, %struct.Lisp_Overlay*, i64, i64 }
%struct.vectorlike_header = type { i64 }
%struct.buffer_text = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.interval*, %struct.Lisp_Marker*, i8 }
%struct.interval = type { i64, i64, %struct.interval*, %struct.interval*, %union.anon.0, i8, i64 }
%union.anon.0 = type { %struct.interval* }
%struct.Lisp_Marker = type { i32, %struct.buffer*, %struct.Lisp_Marker*, i64, i64 }
%struct.timespec = type { i64, i64 }
%struct.region_cache = type opaque
%struct.Lisp_Overlay = type { i32, %struct.Lisp_Overlay*, i64, i64, i64 }
%struct.composition = type { i32, i16, i16, i16, i16, i16, i32, i32, i64, i8*, i16* }
%struct.emacs_globals = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.coding_system = type { i64, i32, i32, %union.anon.7, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8*, i64, i64, i64, i64, i8*, i32*, i32, i32, [64 x i8], i32, i32, i1 (%struct.coding_system*, %struct.coding_detection_info*)*, void (%struct.coding_system*)*, i1 (%struct.coding_system*)* }
%union.anon.7 = type { %struct.ccl_spec*, [328 x i8] }
%struct.ccl_spec = type opaque
%struct.coding_detection_info = type { i32, i32, i32 }
%struct.Lisp_Objfwd = type { i32, i64* }
%struct.Lisp_Hash_Table = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.hash_table_test, %struct.Lisp_Hash_Table* }
%struct.hash_table_test = type { i64, i64, i64, i1 (%struct.hash_table_test*, i64, i64)*, i64 (%struct.hash_table_test*, i64)* }
%struct.Lisp_Cons = type { i64, %union.anon }
%union.anon = type { i64 }
%struct.Lisp_Vector = type { %struct.vectorlike_header, [0 x i64] }
%struct.font_metrics = type { i16, i16, i16, i16, i16 }
%struct.font = type { %struct.vectorlike_header, [17 x i64], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, %struct.font_driver* }
%struct.font_driver = type { i64, i8, i64 (%struct.frame*)*, i64 (%struct.frame*, i64)*, i64 (%struct.frame*, i64)*, i64 (%struct.frame*)*, void (i64)*, i64 (%struct.frame*, i64, i32)*, void (%struct.font*)*, void (%struct.frame*, %struct.face*)*, void (%struct.frame*, %struct.face*)*, i32 (i64, i32)*, i32 (%struct.font*, i32)*, void (%struct.font*, i32*, i32, %struct.font_metrics*)*, i32 (%struct.glyph_string*, i32, i32, i32, i32, i1)*, i32 (%struct.font*, i32, %struct.font_bitmap*, i32)*, void (%struct.font*, %struct.font_bitmap*)*, i32 (%struct.font*, i32, i32, i32*, i32*)*, i64 (%struct.font*)*, i32 (%struct.font*, i64, i64, i32, i32, i64, i32, i1)*, i32 (%struct.frame*)*, i32 (%struct.frame*)*, i64 (i64)*, i32 (%struct.frame*, %struct.font*)*, i32 (%struct.font*, i32, i32*)*, void (i64, i64)*, i1 (%struct.frame*, i64, i64)*, i64 (%struct.font*)* }
%struct.frame = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.face_cache*, i32, %struct.glyph_pool*, %struct.glyph_pool*, %struct.glyph_matrix*, %struct.glyph_matrix*, i48, i32, i32, i32, i32, i8*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.terminal*, %union.output_data, %struct.font_driver_list*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x double], double, i32, i64, i64 }
%struct.face_cache = type { %struct.face**, %struct.frame*, %struct.face**, i64, i32, i8 }
%struct.face = type { [19 x i64], i32, %struct._XGC*, i64, i64, i64, i64, i64, i64, i64, %struct.font*, i32, i32, i24, i32, %struct.face*, %struct.face*, %struct.face*, i8* }
%struct._XGC = type opaque
%struct.glyph_pool = type { %struct.glyph*, i64, i32, i32 }
%struct.glyph = type { i64, i64, i16, i16, i16, i16, i24, i24, %union.anon.1, %union.anon.3 }
%union.anon.1 = type { %struct.glyph_slice }
%struct.glyph_slice = type { i64 }
%union.anon.3 = type { i32 }
%struct.glyph_matrix = type { %struct.glyph_pool*, %struct.glyph_row*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.buffer*, i64, i64 }
%struct.glyph_row = type <{ [4 x %struct.glyph*], [4 x i16], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.display_pos, %struct.display_pos, %struct.text_pos, %struct.text_pos, i32, [11 x i8], i8, i24, i24, i32, i40, i32, %struct.XRectangle* }>
%struct.display_pos = type { %struct.text_pos, i64, %struct.text_pos, i32 }
%struct.text_pos = type { i64, i64 }
%struct.XRectangle = type { i16, i16, i16, i16 }
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
%struct.redisplay_interface = type { void (%struct.frame*, i64, i64)**, void (%struct.it*)*, void (%struct.window*, %struct.glyph_row*, %struct.glyph*, i32, i32)*, void (%struct.window*, %struct.glyph_row*, %struct.glyph*, i32, i32)*, void (%struct.window*, %struct.glyph_row*, i32, i32)*, void (%struct.window*, %struct.run*)*, void (%struct.window*, %struct.glyph_row*)*, void (%struct.window*)*, void (%struct.window*, i1, i1)*, void (%struct.frame*)*, void (%struct.window*)*, void (%struct.glyph*, %struct.frame*, i32*, i32*)*, void (%struct.window*, %struct.glyph_row*, i32, i32)*, void (%struct.window*, %struct.glyph_row*, %struct.draw_fringe_bitmap_params*)*, void (i32, i16*, i32, i32)*, void (i32)*, void (%struct.glyph_string*)*, void (%struct.glyph_string*)*, void (%struct.frame*, i64)*, void (%struct.frame*, i32, i32, i32, i32)*, void (%struct.window*, %struct.glyph_row*, i32, i32, i32, i32, i1, i1)*, void (%struct.window*, i32, i32, i32)*, void (%struct.window*, i32, i32, i32, i32)*, void (%struct.frame*, i32, i32, i32, i32, i32)*, void (%struct.frame*)*, void (%struct.frame*)* }
%struct.it = type { i64, %struct.window*, %struct.frame*, i32, i64, i64, i64, i64, i8*, i64, i64, i8, %struct.Lisp_Char_Table*, i64*, i64*, i32, i32, i32, [16 x i64], %struct.display_pos, %struct.display_pos, i64, i64, [16 x i64], [16 x i64], i64, i64, [5 x %struct.iterator_stack_entry], i32, i64, i32, i32, i16, i32, i32, i32, i32, %struct.composition_it, i32, i32, i64, %struct.xwidget*, %struct.it_slice, i64, i16, i16, i64, i64, %struct.text_pos, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, %struct.glyph_row*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.text_pos, i32, i32, i32, i32, i56, i24, %struct.bidi_it, i32 }
%struct.window = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.glyph_matrix*, %struct.glyph_matrix*, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, %struct.cursor_pos, %struct.cursor_pos, %struct.cursor_pos, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i64 }
%struct.cursor_pos = type { i32, i32, i32, i32 }
%struct.Lisp_Char_Table = type { %struct.vectorlike_header, i64, i64, i64, i64, [64 x i64], [0 x i64] }
%struct.iterator_stack_entry = type { i64, i32, i64, i64, i64, i64, %struct.composition_it, i32, %union.anon.8, %struct.text_pos, %struct.display_pos, i64, i32, i32, i32, i8, i32, i16, i64, i64 }
%union.anon.8 = type { %struct.anon.9 }
%struct.anon.9 = type { i64, %struct.it_slice, i64 }
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
%struct.input_event = type { i32, i32, i32, i64, i64, i64, i64, i64 }
%union.output_data = type { %struct.tty_output* }
%struct.tty_output = type opaque
%struct.font_driver_list = type { i8, %struct.font_driver*, %struct.font_driver_list* }
%struct.font_bitmap = type { i32, i32, i32, i32, i8*, i32, i32, i32 }
%struct.position_record = type { i64, i64, i8* }
%struct.Lisp_Subr = type { %struct.vectorlike_header, %union.anon.12, i16, i16, i8*, i8*, i8* }
%union.anon.12 = type { i64 ()* }

@composition_hash_table = common global i64 0, align 8
@n_compositions = common global i64 0, align 8
@current_buffer = external global %struct.buffer*, align 8
@composition_table_size = internal global i64 0, align 8
@composition_table = common global %struct.composition** null, align 8
@globals = external global %struct.emacs_globals, align 8
@gstring_hash_table = internal global i64 0, align 8
@Vcoding_system_hash_table = external global i64, align 8
@safe_terminal_coding = external global %struct.coding_system, align 8
@.str = private unnamed_addr constant [30 x i8] c"Attempt to shape unibyte text\00", align 1
@gstring_work = internal global i64 0, align 8
@gstring_work_headers = internal global i64 0, align 8
@syms_of_composite.o_fwd = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"compose-chars-after-function\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"compose-chars-after\00", align 1
@syms_of_composite.o_fwd.3 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"auto-composition-mode\00", align 1
@syms_of_composite.o_fwd.5 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.6 = private unnamed_addr constant [26 x i8] c"auto-composition-function\00", align 1
@syms_of_composite.o_fwd.7 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.8 = private unnamed_addr constant [27 x i8] c"composition-function-table\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"Attempt to shape zero-length text\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"compose-region-internal\00", align 1
@Scompose_region_internal = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64)* @Fcompose_region_internal }, i16 2, i16 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.11 = private unnamed_addr constant [24 x i8] c"compose-string-internal\00", align 1
@Scompose_string_internal = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64, i64)* @Fcompose_string_internal }, i16 3, i16 5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.12 = private unnamed_addr constant [26 x i8] c"find-composition-internal\00", align 1
@Sfind_composition_internal = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64)* @Ffind_composition_internal }, i16 4, i16 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.13 = private unnamed_addr constant [24 x i8] c"composition-get-gstring\00", align 1
@Scomposition_get_gstring = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64)* @Fcomposition_get_gstring }, i16 4, i16 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0), i8* null, i8* null }, align 8

; Function Attrs: nounwind uwtable
define i64 @get_composition_id(i64 %charpos, i64 %bytepos, i64 %nchars, i64 %prop, i64 %string) #0 {
entry:
  %retval = alloca i64, align 8
  %charpos.addr = alloca i64, align 8
  %bytepos.addr = alloca i64, align 8
  %nchars.addr = alloca i64, align 8
  %prop.addr = alloca i64, align 8
  %string.addr = alloca i64, align 8
  %id = alloca i64, align 8
  %length = alloca i64, align 8
  %components = alloca i64, align 8
  %key = alloca i64, align 8
  %key_contents = alloca i64*, align 8
  %glyph_len = alloca i64, align 8
  %hash_table = alloca %struct.Lisp_Hash_Table*, align 8
  %hash_index = alloca i64, align 8
  %hash_code = alloca i64, align 8
  %method = alloca i32, align 4
  %cmp = alloca %struct.composition*, align 8
  %i = alloca i64, align 8
  %ch = alloca i32, align 4
  %chp = alloca i8*, align 8
  %chlen = alloca i32, align 4
  %chp140 = alloca i8*, align 8
  %chlen151 = alloca i32, align 4
  %len = alloca i64, align 8
  %len292 = alloca i64, align 8
  %this_width = alloca i32, align 4
  %leftmost = alloca double, align 8
  %rightmost = alloca double, align 8
  %rule = alloca i32, align 4
  %gref = alloca i32, align 4
  %nref = alloca i32, align 4
  %this_width503 = alloca i32, align 4
  %this_left = alloca double, align 8
  store i64 %charpos, i64* %charpos.addr, align 8
  store i64 %bytepos, i64* %bytepos.addr, align 8
  store i64 %nchars, i64* %nchars.addr, align 8
  store i64 %prop, i64* %prop.addr, align 8
  store i64 %string, i64* %string.addr, align 8
  %0 = load i64, i64* @composition_hash_table, align 8
  %call = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %0)
  store %struct.Lisp_Hash_Table* %call, %struct.Lisp_Hash_Table** %hash_table, align 8
  %1 = load i64, i64* %nchars.addr, align 8
  %cmp1 = icmp eq i64 %1, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i64, i64* %prop.addr, align 8
  %and = and i64 %2, 7
  %conv = trunc i64 %and to i32
  %cmp2 = icmp eq i32 %conv, 3
  br i1 %cmp2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %invalid_composition

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i64, i64* %prop.addr, align 8
  %sub = sub nsw i64 %3, 3
  %4 = inttoptr i64 %sub to i8*
  %5 = bitcast i8* %4 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %5, i32 0, i32 0
  %6 = load i64, i64* %car, align 8
  store i64 %6, i64* %id, align 8
  %7 = load i64, i64* %id, align 8
  %and4 = and i64 %7, 7
  %conv5 = trunc i64 %and4 to i32
  %and6 = and i32 %conv5, -5
  %cmp7 = icmp eq i32 %and6, 2
  br i1 %cmp7, label %if.then.9, label %if.end.19

if.then.9:                                        ; preds = %if.end
  %8 = load i64, i64* %id, align 8
  %shr = ashr i64 %8, 2
  %cmp10 = icmp slt i64 %shr, 0
  br i1 %cmp10, label %if.then.16, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %if.then.9
  %9 = load i64, i64* %id, align 8
  %shr13 = ashr i64 %9, 2
  %10 = load i64, i64* @n_compositions, align 8
  %cmp14 = icmp sge i64 %shr13, %10
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %lor.lhs.false.12, %if.then.9
  br label %invalid_composition

if.end.17:                                        ; preds = %lor.lhs.false.12
  %11 = load i64, i64* %id, align 8
  %shr18 = ashr i64 %11, 2
  store i64 %shr18, i64* %retval
  br label %return

if.end.19:                                        ; preds = %if.end
  %12 = load i64, i64* %id, align 8
  %and20 = and i64 %12, 7
  %conv21 = trunc i64 %and20 to i32
  %cmp22 = icmp eq i32 %conv21, 3
  br i1 %cmp22, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %if.end.19
  br label %invalid_composition

if.end.25:                                        ; preds = %if.end.19
  %13 = load i64, i64* %id, align 8
  %sub26 = sub nsw i64 %13, 3
  %14 = inttoptr i64 %sub26 to i8*
  %15 = bitcast i8* %14 to %struct.Lisp_Cons*
  %car27 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %15, i32 0, i32 0
  %16 = load i64, i64* %car27, align 8
  store i64 %16, i64* %length, align 8
  %17 = load i64, i64* %length, align 8
  %and28 = and i64 %17, 7
  %conv29 = trunc i64 %and28 to i32
  %and30 = and i32 %conv29, -5
  %cmp31 = icmp eq i32 %and30, 2
  br i1 %cmp31, label %lor.lhs.false.33, label %if.then.37

lor.lhs.false.33:                                 ; preds = %if.end.25
  %18 = load i64, i64* %length, align 8
  %shr34 = ashr i64 %18, 2
  %19 = load i64, i64* %nchars.addr, align 8
  %cmp35 = icmp ne i64 %shr34, %19
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %lor.lhs.false.33, %if.end.25
  br label %invalid_composition

if.end.38:                                        ; preds = %lor.lhs.false.33
  %20 = load i64, i64* %id, align 8
  %sub39 = sub nsw i64 %20, 3
  %21 = inttoptr i64 %sub39 to i8*
  %22 = bitcast i8* %21 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %22, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %23 = load i64, i64* %cdr, align 8
  store i64 %23, i64* %components, align 8
  %24 = load i64, i64* %components, align 8
  %and40 = and i64 %24, 7
  %conv41 = trunc i64 %and40 to i32
  %and42 = and i32 %conv41, -5
  %cmp43 = icmp eq i32 %and42, 2
  br i1 %cmp43, label %if.then.45, label %if.else

if.then.45:                                       ; preds = %if.end.38
  %25 = load i64, i64* %components, align 8
  %call46 = call i64 @Fmake_vector(i64 6, i64 %25)
  store i64 %call46, i64* %key, align 8
  br label %if.end.239

if.else:                                          ; preds = %if.end.38
  %26 = load i64, i64* %components, align 8
  %call47 = call zeroext i1 @STRINGP(i64 %26)
  br i1 %call47, label %if.then.54, label %lor.lhs.false.49

lor.lhs.false.49:                                 ; preds = %if.else
  %27 = load i64, i64* %components, align 8
  %and50 = and i64 %27, 7
  %conv51 = trunc i64 %and50 to i32
  %cmp52 = icmp eq i32 %conv51, 3
  br i1 %cmp52, label %if.then.54, label %if.else.56

if.then.54:                                       ; preds = %lor.lhs.false.49, %if.else
  %call55 = call i64 @Fvconcat(i64 1, i64* %components)
  store i64 %call55, i64* %key, align 8
  br label %if.end.238

if.else.56:                                       ; preds = %lor.lhs.false.49
  %28 = load i64, i64* %components, align 8
  %call57 = call zeroext i1 @VECTORP(i64 %28)
  br i1 %call57, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %if.else.56
  %29 = load i64, i64* %components, align 8
  store i64 %29, i64* %key, align 8
  br label %if.end.237

if.else.59:                                       ; preds = %if.else.56
  %30 = load i64, i64* %components, align 8
  %call60 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp61 = icmp eq i64 %30, %call60
  br i1 %cmp61, label %if.then.63, label %if.else.235

if.then.63:                                       ; preds = %if.else.59
  %31 = load i64, i64* %nchars.addr, align 8
  %call64 = call i64 @make_uninit_vector(i64 %31)
  store i64 %call64, i64* %key, align 8
  %32 = load i64, i64* %string.addr, align 8
  %call65 = call zeroext i1 @STRINGP(i64 %32)
  br i1 %call65, label %if.then.66, label %if.else.129

if.then.66:                                       ; preds = %if.then.63
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.66
  %33 = load i64, i64* %i, align 8
  %34 = load i64, i64* %nchars.addr, align 8
  %cmp67 = icmp slt i64 %33, %34
  br i1 %cmp67, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %35 = load i64, i64* %charpos.addr, align 8
  %inc = add nsw i64 %35, 1
  store i64 %inc, i64* %charpos.addr, align 8
  %36 = load i64, i64* %string.addr, align 8
  %call69 = call zeroext i1 @STRING_MULTIBYTE(i64 %36)
  br i1 %call69, label %if.then.70, label %if.else.120

if.then.70:                                       ; preds = %do.body
  %37 = load i64, i64* %bytepos.addr, align 8
  %38 = load i64, i64* %string.addr, align 8
  %call71 = call i8* @SDATA(i64 %38)
  %arrayidx = getelementptr inbounds i8, i8* %call71, i64 %37
  store i8* %arrayidx, i8** %chp, align 8
  %39 = load i8*, i8** %chp, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %39, i64 0
  %40 = load i8, i8* %arrayidx72, align 1
  %conv73 = zext i8 %40 to i32
  %and74 = and i32 %conv73, 128
  %tobool = icmp ne i32 %and74, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.70
  store i32 1, i32* %chlen, align 4
  %41 = load i8*, i8** %chp, align 8
  %arrayidx75 = getelementptr inbounds i8, i8* %41, i64 0
  %42 = load i8, i8* %arrayidx75, align 1
  %conv76 = zext i8 %42 to i32
  br label %cond.end.116

cond.false:                                       ; preds = %if.then.70
  %43 = load i8*, i8** %chp, align 8
  %arrayidx77 = getelementptr inbounds i8, i8* %43, i64 0
  %44 = load i8, i8* %arrayidx77, align 1
  %conv78 = zext i8 %44 to i32
  %and79 = and i32 %conv78, 32
  %tobool80 = icmp ne i32 %and79, 0
  br i1 %tobool80, label %cond.false.92, label %cond.true.81

cond.true.81:                                     ; preds = %cond.false
  store i32 2, i32* %chlen, align 4
  %45 = load i8*, i8** %chp, align 8
  %arrayidx82 = getelementptr inbounds i8, i8* %45, i64 0
  %46 = load i8, i8* %arrayidx82, align 1
  %conv83 = zext i8 %46 to i32
  %and84 = and i32 %conv83, 31
  %shl = shl i32 %and84, 6
  %47 = load i8*, i8** %chp, align 8
  %arrayidx85 = getelementptr inbounds i8, i8* %47, i64 1
  %48 = load i8, i8* %arrayidx85, align 1
  %conv86 = zext i8 %48 to i32
  %and87 = and i32 %conv86, 63
  %or = or i32 %shl, %and87
  %49 = load i8*, i8** %chp, align 8
  %arrayidx88 = getelementptr inbounds i8, i8* %49, i64 0
  %50 = load i8, i8* %arrayidx88, align 1
  %conv89 = zext i8 %50 to i32
  %cmp90 = icmp slt i32 %conv89, 194
  %cond = select i1 %cmp90, i32 4194176, i32 0
  %add = add nsw i32 %or, %cond
  br label %cond.end.114

cond.false.92:                                    ; preds = %cond.false
  %51 = load i8*, i8** %chp, align 8
  %arrayidx93 = getelementptr inbounds i8, i8* %51, i64 0
  %52 = load i8, i8* %arrayidx93, align 1
  %conv94 = zext i8 %52 to i32
  %and95 = and i32 %conv94, 16
  %tobool96 = icmp ne i32 %and95, 0
  br i1 %tobool96, label %cond.false.111, label %cond.true.97

cond.true.97:                                     ; preds = %cond.false.92
  store i32 3, i32* %chlen, align 4
  %53 = load i8*, i8** %chp, align 8
  %arrayidx98 = getelementptr inbounds i8, i8* %53, i64 0
  %54 = load i8, i8* %arrayidx98, align 1
  %conv99 = zext i8 %54 to i32
  %and100 = and i32 %conv99, 15
  %shl101 = shl i32 %and100, 12
  %55 = load i8*, i8** %chp, align 8
  %arrayidx102 = getelementptr inbounds i8, i8* %55, i64 1
  %56 = load i8, i8* %arrayidx102, align 1
  %conv103 = zext i8 %56 to i32
  %and104 = and i32 %conv103, 63
  %shl105 = shl i32 %and104, 6
  %or106 = or i32 %shl101, %shl105
  %57 = load i8*, i8** %chp, align 8
  %arrayidx107 = getelementptr inbounds i8, i8* %57, i64 2
  %58 = load i8, i8* %arrayidx107, align 1
  %conv108 = zext i8 %58 to i32
  %and109 = and i32 %conv108, 63
  %or110 = or i32 %or106, %and109
  br label %cond.end

cond.false.111:                                   ; preds = %cond.false.92
  %59 = load i8*, i8** %chp, align 8
  %call112 = call i32 @string_char(i8* %59, i8** null, i32* %chlen)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.111, %cond.true.97
  %cond113 = phi i32 [ %or110, %cond.true.97 ], [ %call112, %cond.false.111 ]
  br label %cond.end.114

cond.end.114:                                     ; preds = %cond.end, %cond.true.81
  %cond115 = phi i32 [ %add, %cond.true.81 ], [ %cond113, %cond.end ]
  br label %cond.end.116

cond.end.116:                                     ; preds = %cond.end.114, %cond.true
  %cond117 = phi i32 [ %conv76, %cond.true ], [ %cond115, %cond.end.114 ]
  store i32 %cond117, i32* %ch, align 4
  %60 = load i32, i32* %chlen, align 4
  %conv118 = sext i32 %60 to i64
  %61 = load i64, i64* %bytepos.addr, align 8
  %add119 = add nsw i64 %61, %conv118
  store i64 %add119, i64* %bytepos.addr, align 8
  br label %if.end.124

if.else.120:                                      ; preds = %do.body
  %62 = load i64, i64* %string.addr, align 8
  %63 = load i64, i64* %bytepos.addr, align 8
  %call121 = call zeroext i8 @SREF(i64 %62, i64 %63)
  %conv122 = zext i8 %call121 to i32
  store i32 %conv122, i32* %ch, align 4
  %64 = load i64, i64* %bytepos.addr, align 8
  %inc123 = add nsw i64 %64, 1
  store i64 %inc123, i64* %bytepos.addr, align 8
  br label %if.end.124

if.end.124:                                       ; preds = %if.else.120, %cond.end.116
  br label %do.end

do.end:                                           ; preds = %if.end.124
  %65 = load i64, i64* %key, align 8
  %66 = load i64, i64* %i, align 8
  %67 = load i32, i32* %ch, align 4
  %conv125 = sext i32 %67 to i64
  %shl126 = shl i64 %conv125, 2
  %add127 = add i64 %shl126, 2
  call void @ASET(i64 %65, i64 %66, i64 %add127)
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %68 = load i64, i64* %i, align 8
  %inc128 = add nsw i64 %68, 1
  store i64 %inc128, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.234

if.else.129:                                      ; preds = %if.then.63
  store i64 0, i64* %i, align 8
  br label %for.cond.130

for.cond.130:                                     ; preds = %for.inc.231, %if.else.129
  %69 = load i64, i64* %i, align 8
  %70 = load i64, i64* %nchars.addr, align 8
  %cmp131 = icmp slt i64 %69, %70
  br i1 %cmp131, label %for.body.133, label %for.end.233

for.body.133:                                     ; preds = %for.cond.130
  br label %do.body.134

do.body.134:                                      ; preds = %for.body.133
  %71 = load i64, i64* %charpos.addr, align 8
  %inc135 = add nsw i64 %71, 1
  store i64 %inc135, i64* %charpos.addr, align 8
  %72 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_ = getelementptr inbounds %struct.buffer, %struct.buffer* %72, i32 0, i32 39
  %73 = load i64, i64* %enable_multibyte_characters_, align 8
  %call136 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp137 = icmp eq i64 %73, %call136
  br i1 %cmp137, label %if.else.208, label %if.then.139

if.then.139:                                      ; preds = %do.body.134
  %74 = load i64, i64* %bytepos.addr, align 8
  %75 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %75, i32 0, i32 73
  %76 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %gpt_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %76, i32 0, i32 3
  %77 = load i64, i64* %gpt_byte, align 8
  %cmp141 = icmp sge i64 %74, %77
  br i1 %cmp141, label %cond.true.143, label %cond.false.145

cond.true.143:                                    ; preds = %if.then.139
  %78 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text144 = getelementptr inbounds %struct.buffer, %struct.buffer* %78, i32 0, i32 73
  %79 = load %struct.buffer_text*, %struct.buffer_text** %text144, align 8
  %gap_size = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %79, i32 0, i32 5
  %80 = load i64, i64* %gap_size, align 8
  br label %cond.end.146

cond.false.145:                                   ; preds = %if.then.139
  br label %cond.end.146

cond.end.146:                                     ; preds = %cond.false.145, %cond.true.143
  %cond147 = phi i64 [ %80, %cond.true.143 ], [ 0, %cond.false.145 ]
  %81 = load i64, i64* %bytepos.addr, align 8
  %add148 = add nsw i64 %cond147, %81
  %82 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text149 = getelementptr inbounds %struct.buffer, %struct.buffer* %82, i32 0, i32 73
  %83 = load %struct.buffer_text*, %struct.buffer_text** %text149, align 8
  %beg = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %83, i32 0, i32 0
  %84 = load i8*, i8** %beg, align 8
  %add.ptr = getelementptr inbounds i8, i8* %84, i64 %add148
  %add.ptr150 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8* %add.ptr150, i8** %chp140, align 8
  %85 = load i8*, i8** %chp140, align 8
  %arrayidx152 = getelementptr inbounds i8, i8* %85, i64 0
  %86 = load i8, i8* %arrayidx152, align 1
  %conv153 = zext i8 %86 to i32
  %and154 = and i32 %conv153, 128
  %tobool155 = icmp ne i32 %and154, 0
  br i1 %tobool155, label %cond.false.159, label %cond.true.156

cond.true.156:                                    ; preds = %cond.end.146
  store i32 1, i32* %chlen151, align 4
  %87 = load i8*, i8** %chp140, align 8
  %arrayidx157 = getelementptr inbounds i8, i8* %87, i64 0
  %88 = load i8, i8* %arrayidx157, align 1
  %conv158 = zext i8 %88 to i32
  br label %cond.end.204

cond.false.159:                                   ; preds = %cond.end.146
  %89 = load i8*, i8** %chp140, align 8
  %arrayidx160 = getelementptr inbounds i8, i8* %89, i64 0
  %90 = load i8, i8* %arrayidx160, align 1
  %conv161 = zext i8 %90 to i32
  %and162 = and i32 %conv161, 32
  %tobool163 = icmp ne i32 %and162, 0
  br i1 %tobool163, label %cond.false.179, label %cond.true.164

cond.true.164:                                    ; preds = %cond.false.159
  store i32 2, i32* %chlen151, align 4
  %91 = load i8*, i8** %chp140, align 8
  %arrayidx165 = getelementptr inbounds i8, i8* %91, i64 0
  %92 = load i8, i8* %arrayidx165, align 1
  %conv166 = zext i8 %92 to i32
  %and167 = and i32 %conv166, 31
  %shl168 = shl i32 %and167, 6
  %93 = load i8*, i8** %chp140, align 8
  %arrayidx169 = getelementptr inbounds i8, i8* %93, i64 1
  %94 = load i8, i8* %arrayidx169, align 1
  %conv170 = zext i8 %94 to i32
  %and171 = and i32 %conv170, 63
  %or172 = or i32 %shl168, %and171
  %95 = load i8*, i8** %chp140, align 8
  %arrayidx173 = getelementptr inbounds i8, i8* %95, i64 0
  %96 = load i8, i8* %arrayidx173, align 1
  %conv174 = zext i8 %96 to i32
  %cmp175 = icmp slt i32 %conv174, 194
  %cond177 = select i1 %cmp175, i32 4194176, i32 0
  %add178 = add nsw i32 %or172, %cond177
  br label %cond.end.202

cond.false.179:                                   ; preds = %cond.false.159
  %97 = load i8*, i8** %chp140, align 8
  %arrayidx180 = getelementptr inbounds i8, i8* %97, i64 0
  %98 = load i8, i8* %arrayidx180, align 1
  %conv181 = zext i8 %98 to i32
  %and182 = and i32 %conv181, 16
  %tobool183 = icmp ne i32 %and182, 0
  br i1 %tobool183, label %cond.false.198, label %cond.true.184

cond.true.184:                                    ; preds = %cond.false.179
  store i32 3, i32* %chlen151, align 4
  %99 = load i8*, i8** %chp140, align 8
  %arrayidx185 = getelementptr inbounds i8, i8* %99, i64 0
  %100 = load i8, i8* %arrayidx185, align 1
  %conv186 = zext i8 %100 to i32
  %and187 = and i32 %conv186, 15
  %shl188 = shl i32 %and187, 12
  %101 = load i8*, i8** %chp140, align 8
  %arrayidx189 = getelementptr inbounds i8, i8* %101, i64 1
  %102 = load i8, i8* %arrayidx189, align 1
  %conv190 = zext i8 %102 to i32
  %and191 = and i32 %conv190, 63
  %shl192 = shl i32 %and191, 6
  %or193 = or i32 %shl188, %shl192
  %103 = load i8*, i8** %chp140, align 8
  %arrayidx194 = getelementptr inbounds i8, i8* %103, i64 2
  %104 = load i8, i8* %arrayidx194, align 1
  %conv195 = zext i8 %104 to i32
  %and196 = and i32 %conv195, 63
  %or197 = or i32 %or193, %and196
  br label %cond.end.200

cond.false.198:                                   ; preds = %cond.false.179
  %105 = load i8*, i8** %chp140, align 8
  %call199 = call i32 @string_char(i8* %105, i8** null, i32* %chlen151)
  br label %cond.end.200

cond.end.200:                                     ; preds = %cond.false.198, %cond.true.184
  %cond201 = phi i32 [ %or197, %cond.true.184 ], [ %call199, %cond.false.198 ]
  br label %cond.end.202

cond.end.202:                                     ; preds = %cond.end.200, %cond.true.164
  %cond203 = phi i32 [ %add178, %cond.true.164 ], [ %cond201, %cond.end.200 ]
  br label %cond.end.204

cond.end.204:                                     ; preds = %cond.end.202, %cond.true.156
  %cond205 = phi i32 [ %conv158, %cond.true.156 ], [ %cond203, %cond.end.202 ]
  store i32 %cond205, i32* %ch, align 4
  %106 = load i32, i32* %chlen151, align 4
  %conv206 = sext i32 %106 to i64
  %107 = load i64, i64* %bytepos.addr, align 8
  %add207 = add nsw i64 %107, %conv206
  store i64 %add207, i64* %bytepos.addr, align 8
  br label %if.end.226

if.else.208:                                      ; preds = %do.body.134
  %108 = load i64, i64* %bytepos.addr, align 8
  %109 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text209 = getelementptr inbounds %struct.buffer, %struct.buffer* %109, i32 0, i32 73
  %110 = load %struct.buffer_text*, %struct.buffer_text** %text209, align 8
  %gpt_byte210 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %110, i32 0, i32 3
  %111 = load i64, i64* %gpt_byte210, align 8
  %cmp211 = icmp sge i64 %108, %111
  br i1 %cmp211, label %cond.true.213, label %cond.false.216

cond.true.213:                                    ; preds = %if.else.208
  %112 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text214 = getelementptr inbounds %struct.buffer, %struct.buffer* %112, i32 0, i32 73
  %113 = load %struct.buffer_text*, %struct.buffer_text** %text214, align 8
  %gap_size215 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %113, i32 0, i32 5
  %114 = load i64, i64* %gap_size215, align 8
  br label %cond.end.217

cond.false.216:                                   ; preds = %if.else.208
  br label %cond.end.217

cond.end.217:                                     ; preds = %cond.false.216, %cond.true.213
  %cond218 = phi i64 [ %114, %cond.true.213 ], [ 0, %cond.false.216 ]
  %115 = load i64, i64* %bytepos.addr, align 8
  %add219 = add nsw i64 %cond218, %115
  %116 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text220 = getelementptr inbounds %struct.buffer, %struct.buffer* %116, i32 0, i32 73
  %117 = load %struct.buffer_text*, %struct.buffer_text** %text220, align 8
  %beg221 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %117, i32 0, i32 0
  %118 = load i8*, i8** %beg221, align 8
  %add.ptr222 = getelementptr inbounds i8, i8* %118, i64 %add219
  %add.ptr223 = getelementptr inbounds i8, i8* %add.ptr222, i64 -1
  %119 = load i8, i8* %add.ptr223, align 1
  %conv224 = zext i8 %119 to i32
  store i32 %conv224, i32* %ch, align 4
  %120 = load i64, i64* %bytepos.addr, align 8
  %inc225 = add nsw i64 %120, 1
  store i64 %inc225, i64* %bytepos.addr, align 8
  br label %if.end.226

if.end.226:                                       ; preds = %cond.end.217, %cond.end.204
  br label %do.end.227

do.end.227:                                       ; preds = %if.end.226
  %121 = load i64, i64* %key, align 8
  %122 = load i64, i64* %i, align 8
  %123 = load i32, i32* %ch, align 4
  %conv228 = sext i32 %123 to i64
  %shl229 = shl i64 %conv228, 2
  %add230 = add i64 %shl229, 2
  call void @ASET(i64 %121, i64 %122, i64 %add230)
  br label %for.inc.231

for.inc.231:                                      ; preds = %do.end.227
  %124 = load i64, i64* %i, align 8
  %inc232 = add nsw i64 %124, 1
  store i64 %inc232, i64* %i, align 8
  br label %for.cond.130

for.end.233:                                      ; preds = %for.cond.130
  br label %if.end.234

if.end.234:                                       ; preds = %for.end.233, %for.end
  br label %if.end.236

if.else.235:                                      ; preds = %if.else.59
  br label %invalid_composition

if.end.236:                                       ; preds = %if.end.234
  br label %if.end.237

if.end.237:                                       ; preds = %if.end.236, %if.then.58
  br label %if.end.238

if.end.238:                                       ; preds = %if.end.237, %if.then.54
  br label %if.end.239

if.end.239:                                       ; preds = %if.end.238, %if.then.45
  %125 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %hash_table, align 8
  %126 = load i64, i64* %key, align 8
  %call240 = call i64 @hash_lookup(%struct.Lisp_Hash_Table* %125, i64 %126, i64* %hash_code)
  store i64 %call240, i64* %hash_index, align 8
  %127 = load i64, i64* %hash_index, align 8
  %cmp241 = icmp sge i64 %127, 0
  br i1 %cmp241, label %if.then.243, label %if.end.254

if.then.243:                                      ; preds = %if.end.239
  %128 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %hash_table, align 8
  %129 = load i64, i64* %hash_index, align 8
  %call244 = call i64 @HASH_KEY(%struct.Lisp_Hash_Table* %128, i64 %129)
  store i64 %call244, i64* %key, align 8
  %130 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %hash_table, align 8
  %131 = load i64, i64* %hash_index, align 8
  %call245 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %130, i64 %131)
  store i64 %call245, i64* %id, align 8
  %132 = load i64, i64* %prop.addr, align 8
  %133 = load i64, i64* %id, align 8
  call void @XSETCAR(i64 %132, i64 %133)
  %134 = load i64, i64* %prop.addr, align 8
  %135 = load i64, i64* %nchars.addr, align 8
  %shl246 = shl i64 %135, 2
  %add247 = add i64 %shl246, 2
  %136 = load i64, i64* %key, align 8
  %137 = load i64, i64* %prop.addr, align 8
  %sub248 = sub nsw i64 %137, 3
  %138 = inttoptr i64 %sub248 to i8*
  %139 = bitcast i8* %138 to %struct.Lisp_Cons*
  %u249 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %139, i32 0, i32 1
  %cdr250 = bitcast %union.anon* %u249 to i64*
  %140 = load i64, i64* %cdr250, align 8
  %call251 = call i64 @Fcons(i64 %136, i64 %140)
  %call252 = call i64 @Fcons(i64 %add247, i64 %call251)
  call void @XSETCDR(i64 %134, i64 %call252)
  %141 = load i64, i64* %id, align 8
  %shr253 = ashr i64 %141, 2
  store i64 %shr253, i64* %retval
  br label %return

if.end.254:                                       ; preds = %if.end.239
  %142 = load i64, i64* @composition_table_size, align 8
  %143 = load i64, i64* @n_compositions, align 8
  %cmp255 = icmp sle i64 %142, %143
  br i1 %cmp255, label %if.then.257, label %if.end.259

if.then.257:                                      ; preds = %if.end.254
  %144 = load %struct.composition**, %struct.composition*** @composition_table, align 8
  %145 = bitcast %struct.composition** %144 to i8*
  %call258 = call i8* @xpalloc(i8* %145, i64* @composition_table_size, i64 1, i64 -1, i64 8)
  %146 = bitcast i8* %call258 to %struct.composition**
  store %struct.composition** %146, %struct.composition*** @composition_table, align 8
  br label %if.end.259

if.end.259:                                       ; preds = %if.then.257, %if.end.254
  %147 = load i64, i64* %key, align 8
  %call260 = call %struct.Lisp_Vector* @XVECTOR(i64 %147)
  %contents = getelementptr inbounds %struct.Lisp_Vector, %struct.Lisp_Vector* %call260, i32 0, i32 1
  %arraydecay = getelementptr inbounds [0 x i64], [0 x i64]* %contents, i32 0, i32 0
  store i64* %arraydecay, i64** %key_contents, align 8
  %148 = load i64, i64* %components, align 8
  %call261 = call zeroext i1 @VECTORP(i64 %148)
  br i1 %call261, label %land.lhs.true, label %if.else.283

land.lhs.true:                                    ; preds = %if.end.259
  %149 = load i64, i64* %components, align 8
  %call263 = call i64 @ASIZE(i64 %149)
  %cmp264 = icmp sge i64 %call263, 2
  br i1 %cmp264, label %land.lhs.true.266, label %if.else.283

land.lhs.true.266:                                ; preds = %land.lhs.true
  %150 = load i64, i64* %components, align 8
  %call267 = call i64 @AREF(i64 %150, i64 0)
  %call268 = call zeroext i1 @VECTORP(i64 %call267)
  br i1 %call268, label %if.then.270, label %if.else.283

if.then.270:                                      ; preds = %land.lhs.true.266
  %151 = load i64, i64* %key, align 8
  %call271 = call i64 @ASIZE(i64 %151)
  store i64 %call271, i64* %len, align 8
  store i64 1, i64* %i, align 8
  br label %for.cond.272

for.cond.272:                                     ; preds = %for.inc.280, %if.then.270
  %152 = load i64, i64* %i, align 8
  %153 = load i64, i64* %len, align 8
  %cmp273 = icmp slt i64 %152, %153
  br i1 %cmp273, label %for.body.275, label %for.end.282

for.body.275:                                     ; preds = %for.cond.272
  %154 = load i64, i64* %key, align 8
  %155 = load i64, i64* %i, align 8
  %call276 = call i64 @AREF(i64 %154, i64 %155)
  %call277 = call zeroext i1 @VECTORP(i64 %call276)
  br i1 %call277, label %if.end.279, label %if.then.278

if.then.278:                                      ; preds = %for.body.275
  br label %invalid_composition

if.end.279:                                       ; preds = %for.body.275
  br label %for.inc.280

for.inc.280:                                      ; preds = %if.end.279
  %156 = load i64, i64* %i, align 8
  %inc281 = add nsw i64 %156, 1
  store i64 %inc281, i64* %i, align 8
  br label %for.cond.272

for.end.282:                                      ; preds = %for.cond.272
  br label %if.end.314

if.else.283:                                      ; preds = %land.lhs.true.266, %land.lhs.true, %if.end.259
  %157 = load i64, i64* %components, align 8
  %call284 = call zeroext i1 @VECTORP(i64 %157)
  br i1 %call284, label %if.then.291, label %lor.lhs.false.286

lor.lhs.false.286:                                ; preds = %if.else.283
  %158 = load i64, i64* %components, align 8
  %and287 = and i64 %158, 7
  %conv288 = trunc i64 %and287 to i32
  %cmp289 = icmp eq i32 %conv288, 3
  br i1 %cmp289, label %if.then.291, label %if.end.313

if.then.291:                                      ; preds = %lor.lhs.false.286, %if.else.283
  %159 = load i64, i64* %key, align 8
  %call293 = call i64 @ASIZE(i64 %159)
  store i64 %call293, i64* %len292, align 8
  %160 = load i64, i64* %len292, align 8
  %rem = srem i64 %160, 2
  %cmp294 = icmp eq i64 %rem, 0
  br i1 %cmp294, label %if.then.296, label %if.end.297

if.then.296:                                      ; preds = %if.then.291
  br label %invalid_composition

if.end.297:                                       ; preds = %if.then.291
  store i64 0, i64* %i, align 8
  br label %for.cond.298

for.cond.298:                                     ; preds = %for.inc.310, %if.end.297
  %161 = load i64, i64* %i, align 8
  %162 = load i64, i64* %len292, align 8
  %cmp299 = icmp slt i64 %161, %162
  br i1 %cmp299, label %for.body.301, label %for.end.312

for.body.301:                                     ; preds = %for.cond.298
  %163 = load i64, i64* %i, align 8
  %164 = load i64*, i64** %key_contents, align 8
  %arrayidx302 = getelementptr inbounds i64, i64* %164, i64 %163
  %165 = load i64, i64* %arrayidx302, align 8
  %and303 = and i64 %165, 7
  %conv304 = trunc i64 %and303 to i32
  %and305 = and i32 %conv304, -5
  %cmp306 = icmp eq i32 %and305, 2
  br i1 %cmp306, label %if.end.309, label %if.then.308

if.then.308:                                      ; preds = %for.body.301
  br label %invalid_composition

if.end.309:                                       ; preds = %for.body.301
  br label %for.inc.310

for.inc.310:                                      ; preds = %if.end.309
  %166 = load i64, i64* %i, align 8
  %inc311 = add nsw i64 %166, 1
  store i64 %inc311, i64* %i, align 8
  br label %for.cond.298

for.end.312:                                      ; preds = %for.cond.298
  br label %if.end.313

if.end.313:                                       ; preds = %for.end.312, %lor.lhs.false.286
  br label %if.end.314

if.end.314:                                       ; preds = %if.end.313, %for.end.282
  %167 = load i64, i64* @n_compositions, align 8
  %call315 = call i64 @make_natnum(i64 %167)
  store i64 %call315, i64* %id, align 8
  %168 = load i64, i64* %prop.addr, align 8
  %169 = load i64, i64* %id, align 8
  call void @XSETCAR(i64 %168, i64 %169)
  %170 = load i64, i64* %prop.addr, align 8
  %171 = load i64, i64* %nchars.addr, align 8
  %shl316 = shl i64 %171, 2
  %add317 = add i64 %shl316, 2
  %172 = load i64, i64* %key, align 8
  %173 = load i64, i64* %prop.addr, align 8
  %sub318 = sub nsw i64 %173, 3
  %174 = inttoptr i64 %sub318 to i8*
  %175 = bitcast i8* %174 to %struct.Lisp_Cons*
  %u319 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %175, i32 0, i32 1
  %cdr320 = bitcast %union.anon* %u319 to i64*
  %176 = load i64, i64* %cdr320, align 8
  %call321 = call i64 @Fcons(i64 %172, i64 %176)
  %call322 = call i64 @Fcons(i64 %add317, i64 %call321)
  call void @XSETCDR(i64 %170, i64 %call322)
  %177 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %hash_table, align 8
  %178 = load i64, i64* %key, align 8
  %179 = load i64, i64* %id, align 8
  %180 = load i64, i64* %hash_code, align 8
  %call323 = call i64 @hash_put(%struct.Lisp_Hash_Table* %177, i64 %178, i64 %179, i64 %180)
  store i64 %call323, i64* %hash_index, align 8
  %181 = load i64, i64* %components, align 8
  %call324 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp325 = icmp eq i64 %181, %call324
  br i1 %cmp325, label %cond.true.327, label %cond.false.328

cond.true.327:                                    ; preds = %if.end.314
  br label %cond.end.337

cond.false.328:                                   ; preds = %if.end.314
  %182 = load i64, i64* %components, align 8
  %and329 = and i64 %182, 7
  %conv330 = trunc i64 %and329 to i32
  %and331 = and i32 %conv330, -5
  %cmp332 = icmp eq i32 %and331, 2
  br i1 %cmp332, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.false.328
  %183 = load i64, i64* %components, align 8
  %call334 = call zeroext i1 @STRINGP(i64 %183)
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.false.328
  %184 = phi i1 [ true, %cond.false.328 ], [ %call334, %lor.rhs ]
  %cond336 = select i1 %184, i32 2, i32 3
  br label %cond.end.337

cond.end.337:                                     ; preds = %lor.end, %cond.true.327
  %cond338 = phi i32 [ 0, %cond.true.327 ], [ %cond336, %lor.end ]
  store i32 %cond338, i32* %method, align 4
  %185 = load i32, i32* %method, align 4
  %cmp339 = icmp eq i32 %185, 3
  br i1 %cmp339, label %cond.true.341, label %cond.false.344

cond.true.341:                                    ; preds = %cond.end.337
  %186 = load i64, i64* %key, align 8
  %call342 = call i64 @ASIZE(i64 %186)
  %add343 = add nsw i64 %call342, 1
  %div = sdiv i64 %add343, 2
  br label %cond.end.346

cond.false.344:                                   ; preds = %cond.end.337
  %187 = load i64, i64* %key, align 8
  %call345 = call i64 @ASIZE(i64 %187)
  br label %cond.end.346

cond.end.346:                                     ; preds = %cond.false.344, %cond.true.341
  %cond347 = phi i64 [ %div, %cond.true.341 ], [ %call345, %cond.false.344 ]
  store i64 %cond347, i64* %glyph_len, align 8
  %188 = load i64, i64* %glyph_len, align 8
  %cmp348 = icmp slt i64 1073741823, %188
  br i1 %cmp348, label %if.then.350, label %if.end.351

if.then.350:                                      ; preds = %cond.end.346
  call void @memory_full(i64 -1) #4
  unreachable

if.end.351:                                       ; preds = %cond.end.346
  %call352 = call noalias i8* @xmalloc(i64 48)
  %189 = bitcast i8* %call352 to %struct.composition*
  store %struct.composition* %189, %struct.composition** %cmp, align 8
  %190 = load i32, i32* %method, align 4
  %191 = load %struct.composition*, %struct.composition** %cmp, align 8
  %method353 = getelementptr inbounds %struct.composition, %struct.composition* %191, i32 0, i32 7
  store i32 %190, i32* %method353, align 4
  %192 = load i64, i64* %hash_index, align 8
  %193 = load %struct.composition*, %struct.composition** %cmp, align 8
  %hash_index354 = getelementptr inbounds %struct.composition, %struct.composition* %193, i32 0, i32 8
  store i64 %192, i64* %hash_index354, align 8
  %194 = load i64, i64* %glyph_len, align 8
  %conv355 = trunc i64 %194 to i32
  %195 = load %struct.composition*, %struct.composition** %cmp, align 8
  %glyph_len356 = getelementptr inbounds %struct.composition, %struct.composition* %195, i32 0, i32 0
  store i32 %conv355, i32* %glyph_len356, align 4
  %196 = load i64, i64* %glyph_len, align 8
  %call357 = call noalias i8* @xnmalloc(i64 %196, i64 4)
  %197 = bitcast i8* %call357 to i16*
  %198 = load %struct.composition*, %struct.composition** %cmp, align 8
  %offsets = getelementptr inbounds %struct.composition, %struct.composition* %198, i32 0, i32 10
  store i16* %197, i16** %offsets, align 8
  %199 = load %struct.composition*, %struct.composition** %cmp, align 8
  %font = getelementptr inbounds %struct.composition, %struct.composition* %199, i32 0, i32 9
  store i8* null, i8** %font, align 8
  %200 = load %struct.composition*, %struct.composition** %cmp, align 8
  %method358 = getelementptr inbounds %struct.composition, %struct.composition* %200, i32 0, i32 7
  %201 = load i32, i32* %method358, align 4
  %cmp359 = icmp ne i32 %201, 3
  br i1 %cmp359, label %if.then.361, label %if.else.435

if.then.361:                                      ; preds = %if.end.351
  %202 = load %struct.composition*, %struct.composition** %cmp, align 8
  %width = getelementptr inbounds %struct.composition, %struct.composition* %202, i32 0, i32 6
  store i32 0, i32* %width, align 4
  store i64 0, i64* %i, align 8
  br label %for.cond.362

for.cond.362:                                     ; preds = %for.inc.432, %if.then.361
  %203 = load i64, i64* %i, align 8
  %204 = load i64, i64* %glyph_len, align 8
  %cmp363 = icmp slt i64 %203, %204
  br i1 %cmp363, label %for.body.365, label %for.end.434

for.body.365:                                     ; preds = %for.cond.362
  %205 = load i64, i64* %i, align 8
  %206 = load i64*, i64** %key_contents, align 8
  %arrayidx366 = getelementptr inbounds i64, i64* %206, i64 %205
  %207 = load i64, i64* %arrayidx366, align 8
  %shr367 = ashr i64 %207, 2
  %conv368 = trunc i64 %shr367 to i32
  store i32 %conv368, i32* %ch, align 4
  %208 = load i32, i32* %ch, align 4
  %cmp369 = icmp eq i32 %208, 9
  br i1 %cmp369, label %cond.true.371, label %cond.false.372

cond.true.371:                                    ; preds = %for.body.365
  br label %cond.end.424

cond.false.372:                                   ; preds = %for.body.365
  br i1 true, label %cond.true.373, label %cond.false.377

cond.true.373:                                    ; preds = %cond.false.372
  %209 = load i32, i32* %ch, align 4
  %add374 = add i32 %209, 0
  %cmp375 = icmp ult i32 %add374, 128
  br i1 %cmp375, label %cond.true.382, label %cond.false.418

cond.false.377:                                   ; preds = %cond.false.372
  %210 = load i32, i32* %ch, align 4
  %conv378 = sext i32 %210 to i64
  %add379 = add i64 %conv378, 0
  %cmp380 = icmp ult i64 %add379, 128
  br i1 %cmp380, label %cond.true.382, label %cond.false.418

cond.true.382:                                    ; preds = %cond.false.377, %cond.true.373
  %211 = load i32, i32* %ch, align 4
  %cmp383 = icmp slt i32 %211, 32
  br i1 %cmp383, label %cond.true.385, label %cond.false.404

cond.true.385:                                    ; preds = %cond.true.382
  %212 = load i32, i32* %ch, align 4
  %cmp386 = icmp eq i32 %212, 9
  br i1 %cmp386, label %cond.true.388, label %cond.false.391

cond.true.388:                                    ; preds = %cond.true.385
  %213 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %tab_width_ = getelementptr inbounds %struct.buffer, %struct.buffer* %213, i32 0, i32 19
  %214 = load i64, i64* %tab_width_, align 8
  %shr389 = ashr i64 %214, 2
  %call390 = call i32 @sanitize_tab_width(i64 %shr389)
  br label %cond.end.402

cond.false.391:                                   ; preds = %cond.true.385
  %215 = load i32, i32* %ch, align 4
  %cmp392 = icmp eq i32 %215, 10
  br i1 %cmp392, label %cond.true.394, label %cond.false.395

cond.true.394:                                    ; preds = %cond.false.391
  br label %cond.end.400

cond.false.395:                                   ; preds = %cond.false.391
  %216 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %ctl_arrow_ = getelementptr inbounds %struct.buffer, %struct.buffer* %216, i32 0, i32 29
  %217 = load i64, i64* %ctl_arrow_, align 8
  %call396 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp397 = icmp eq i64 %217, %call396
  %cond399 = select i1 %cmp397, i32 4, i32 2
  br label %cond.end.400

cond.end.400:                                     ; preds = %cond.false.395, %cond.true.394
  %cond401 = phi i32 [ 0, %cond.true.394 ], [ %cond399, %cond.false.395 ]
  br label %cond.end.402

cond.end.402:                                     ; preds = %cond.end.400, %cond.true.388
  %cond403 = phi i32 [ %call390, %cond.true.388 ], [ %cond401, %cond.end.400 ]
  br label %cond.end.416

cond.false.404:                                   ; preds = %cond.true.382
  %218 = load i32, i32* %ch, align 4
  %cmp405 = icmp slt i32 %218, 127
  br i1 %cmp405, label %cond.true.407, label %cond.false.408

cond.true.407:                                    ; preds = %cond.false.404
  br label %cond.end.414

cond.false.408:                                   ; preds = %cond.false.404
  %219 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %ctl_arrow_409 = getelementptr inbounds %struct.buffer, %struct.buffer* %219, i32 0, i32 29
  %220 = load i64, i64* %ctl_arrow_409, align 8
  %call410 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp411 = icmp eq i64 %220, %call410
  %cond413 = select i1 %cmp411, i32 4, i32 2
  br label %cond.end.414

cond.end.414:                                     ; preds = %cond.false.408, %cond.true.407
  %cond415 = phi i32 [ 1, %cond.true.407 ], [ %cond413, %cond.false.408 ]
  br label %cond.end.416

cond.end.416:                                     ; preds = %cond.end.414, %cond.end.402
  %cond417 = phi i32 [ %cond403, %cond.end.402 ], [ %cond415, %cond.end.414 ]
  br label %cond.end.422

cond.false.418:                                   ; preds = %cond.false.377, %cond.true.373
  %221 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 28), align 8
  %222 = load i32, i32* %ch, align 4
  %call419 = call i64 @CHAR_TABLE_REF(i64 %221, i32 %222)
  %shr420 = ashr i64 %call419, 2
  %call421 = call i32 @sanitize_char_width(i64 %shr420)
  br label %cond.end.422

cond.end.422:                                     ; preds = %cond.false.418, %cond.end.416
  %cond423 = phi i32 [ %cond417, %cond.end.416 ], [ %call421, %cond.false.418 ]
  br label %cond.end.424

cond.end.424:                                     ; preds = %cond.end.422, %cond.true.371
  %cond425 = phi i32 [ 1, %cond.true.371 ], [ %cond423, %cond.end.422 ]
  store i32 %cond425, i32* %this_width, align 4
  %223 = load %struct.composition*, %struct.composition** %cmp, align 8
  %width426 = getelementptr inbounds %struct.composition, %struct.composition* %223, i32 0, i32 6
  %224 = load i32, i32* %width426, align 4
  %225 = load i32, i32* %this_width, align 4
  %cmp427 = icmp slt i32 %224, %225
  br i1 %cmp427, label %if.then.429, label %if.end.431

if.then.429:                                      ; preds = %cond.end.424
  %226 = load i32, i32* %this_width, align 4
  %227 = load %struct.composition*, %struct.composition** %cmp, align 8
  %width430 = getelementptr inbounds %struct.composition, %struct.composition* %227, i32 0, i32 6
  store i32 %226, i32* %width430, align 4
  br label %if.end.431

if.end.431:                                       ; preds = %if.then.429, %cond.end.424
  br label %for.inc.432

for.inc.432:                                      ; preds = %if.end.431
  %228 = load i64, i64* %i, align 8
  %inc433 = add nsw i64 %228, 1
  store i64 %inc433, i64* %i, align 8
  br label %for.cond.362

for.end.434:                                      ; preds = %for.cond.362
  br label %if.end.616

if.else.435:                                      ; preds = %if.end.351
  store double 0.000000e+00, double* %leftmost, align 8
  %229 = load i64*, i64** %key_contents, align 8
  %arrayidx436 = getelementptr inbounds i64, i64* %229, i64 0
  %230 = load i64, i64* %arrayidx436, align 8
  %shr437 = ashr i64 %230, 2
  %conv438 = trunc i64 %shr437 to i32
  store i32 %conv438, i32* %ch, align 4
  %231 = load i32, i32* %ch, align 4
  %cmp439 = icmp ne i32 %231, 9
  br i1 %cmp439, label %cond.true.441, label %cond.false.495

cond.true.441:                                    ; preds = %if.else.435
  br i1 true, label %cond.true.442, label %cond.false.446

cond.true.442:                                    ; preds = %cond.true.441
  %232 = load i32, i32* %ch, align 4
  %add443 = add i32 %232, 0
  %cmp444 = icmp ult i32 %add443, 128
  br i1 %cmp444, label %cond.true.451, label %cond.false.489

cond.false.446:                                   ; preds = %cond.true.441
  %233 = load i32, i32* %ch, align 4
  %conv447 = sext i32 %233 to i64
  %add448 = add i64 %conv447, 0
  %cmp449 = icmp ult i64 %add448, 128
  br i1 %cmp449, label %cond.true.451, label %cond.false.489

cond.true.451:                                    ; preds = %cond.false.446, %cond.true.442
  %234 = load i32, i32* %ch, align 4
  %cmp452 = icmp slt i32 %234, 32
  br i1 %cmp452, label %cond.true.454, label %cond.false.475

cond.true.454:                                    ; preds = %cond.true.451
  %235 = load i32, i32* %ch, align 4
  %cmp455 = icmp eq i32 %235, 9
  br i1 %cmp455, label %cond.true.457, label %cond.false.461

cond.true.457:                                    ; preds = %cond.true.454
  %236 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %tab_width_458 = getelementptr inbounds %struct.buffer, %struct.buffer* %236, i32 0, i32 19
  %237 = load i64, i64* %tab_width_458, align 8
  %shr459 = ashr i64 %237, 2
  %call460 = call i32 @sanitize_tab_width(i64 %shr459)
  br label %cond.end.473

cond.false.461:                                   ; preds = %cond.true.454
  %238 = load i32, i32* %ch, align 4
  %cmp462 = icmp eq i32 %238, 10
  br i1 %cmp462, label %cond.true.464, label %cond.false.465

cond.true.464:                                    ; preds = %cond.false.461
  br label %cond.end.471

cond.false.465:                                   ; preds = %cond.false.461
  %239 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %ctl_arrow_466 = getelementptr inbounds %struct.buffer, %struct.buffer* %239, i32 0, i32 29
  %240 = load i64, i64* %ctl_arrow_466, align 8
  %call467 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp468 = icmp eq i64 %240, %call467
  %cond470 = select i1 %cmp468, i32 4, i32 2
  br label %cond.end.471

cond.end.471:                                     ; preds = %cond.false.465, %cond.true.464
  %cond472 = phi i32 [ 0, %cond.true.464 ], [ %cond470, %cond.false.465 ]
  br label %cond.end.473

cond.end.473:                                     ; preds = %cond.end.471, %cond.true.457
  %cond474 = phi i32 [ %call460, %cond.true.457 ], [ %cond472, %cond.end.471 ]
  br label %cond.end.487

cond.false.475:                                   ; preds = %cond.true.451
  %241 = load i32, i32* %ch, align 4
  %cmp476 = icmp slt i32 %241, 127
  br i1 %cmp476, label %cond.true.478, label %cond.false.479

cond.true.478:                                    ; preds = %cond.false.475
  br label %cond.end.485

cond.false.479:                                   ; preds = %cond.false.475
  %242 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %ctl_arrow_480 = getelementptr inbounds %struct.buffer, %struct.buffer* %242, i32 0, i32 29
  %243 = load i64, i64* %ctl_arrow_480, align 8
  %call481 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp482 = icmp eq i64 %243, %call481
  %cond484 = select i1 %cmp482, i32 4, i32 2
  br label %cond.end.485

cond.end.485:                                     ; preds = %cond.false.479, %cond.true.478
  %cond486 = phi i32 [ 1, %cond.true.478 ], [ %cond484, %cond.false.479 ]
  br label %cond.end.487

cond.end.487:                                     ; preds = %cond.end.485, %cond.end.473
  %cond488 = phi i32 [ %cond474, %cond.end.473 ], [ %cond486, %cond.end.485 ]
  br label %cond.end.493

cond.false.489:                                   ; preds = %cond.false.446, %cond.true.442
  %244 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 28), align 8
  %245 = load i32, i32* %ch, align 4
  %call490 = call i64 @CHAR_TABLE_REF(i64 %244, i32 %245)
  %shr491 = ashr i64 %call490, 2
  %call492 = call i32 @sanitize_char_width(i64 %shr491)
  br label %cond.end.493

cond.end.493:                                     ; preds = %cond.false.489, %cond.end.487
  %cond494 = phi i32 [ %cond488, %cond.end.487 ], [ %call492, %cond.false.489 ]
  br label %cond.end.496

cond.false.495:                                   ; preds = %if.else.435
  br label %cond.end.496

cond.end.496:                                     ; preds = %cond.false.495, %cond.end.493
  %cond497 = phi i32 [ %cond494, %cond.end.493 ], [ 1, %cond.false.495 ]
  %conv498 = sitofp i32 %cond497 to double
  store double %conv498, double* %rightmost, align 8
  store i64 1, i64* %i, align 8
  br label %for.cond.499

for.cond.499:                                     ; preds = %for.inc.601, %cond.end.496
  %246 = load i64, i64* %i, align 8
  %247 = load i64, i64* %glyph_len, align 8
  %cmp500 = icmp slt i64 %246, %247
  br i1 %cmp500, label %for.body.502, label %for.end.603

for.body.502:                                     ; preds = %for.cond.499
  %248 = load i64, i64* %i, align 8
  %249 = load i64*, i64** %key_contents, align 8
  %arrayidx504 = getelementptr inbounds i64, i64* %249, i64 %248
  %250 = load i64, i64* %arrayidx504, align 8
  %shr505 = ashr i64 %250, 2
  %conv506 = trunc i64 %shr505 to i32
  store i32 %conv506, i32* %rule, align 4
  %251 = load i64, i64* %i, align 8
  %add507 = add nsw i64 %251, 1
  %252 = load i64*, i64** %key_contents, align 8
  %arrayidx508 = getelementptr inbounds i64, i64* %252, i64 %add507
  %253 = load i64, i64* %arrayidx508, align 8
  %shr509 = ashr i64 %253, 2
  %conv510 = trunc i64 %shr509 to i32
  store i32 %conv510, i32* %ch, align 4
  %254 = load i32, i32* %ch, align 4
  %cmp511 = icmp ne i32 %254, 9
  br i1 %cmp511, label %cond.true.513, label %cond.false.567

cond.true.513:                                    ; preds = %for.body.502
  br i1 true, label %cond.true.514, label %cond.false.518

cond.true.514:                                    ; preds = %cond.true.513
  %255 = load i32, i32* %ch, align 4
  %add515 = add i32 %255, 0
  %cmp516 = icmp ult i32 %add515, 128
  br i1 %cmp516, label %cond.true.523, label %cond.false.561

cond.false.518:                                   ; preds = %cond.true.513
  %256 = load i32, i32* %ch, align 4
  %conv519 = sext i32 %256 to i64
  %add520 = add i64 %conv519, 0
  %cmp521 = icmp ult i64 %add520, 128
  br i1 %cmp521, label %cond.true.523, label %cond.false.561

cond.true.523:                                    ; preds = %cond.false.518, %cond.true.514
  %257 = load i32, i32* %ch, align 4
  %cmp524 = icmp slt i32 %257, 32
  br i1 %cmp524, label %cond.true.526, label %cond.false.547

cond.true.526:                                    ; preds = %cond.true.523
  %258 = load i32, i32* %ch, align 4
  %cmp527 = icmp eq i32 %258, 9
  br i1 %cmp527, label %cond.true.529, label %cond.false.533

cond.true.529:                                    ; preds = %cond.true.526
  %259 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %tab_width_530 = getelementptr inbounds %struct.buffer, %struct.buffer* %259, i32 0, i32 19
  %260 = load i64, i64* %tab_width_530, align 8
  %shr531 = ashr i64 %260, 2
  %call532 = call i32 @sanitize_tab_width(i64 %shr531)
  br label %cond.end.545

cond.false.533:                                   ; preds = %cond.true.526
  %261 = load i32, i32* %ch, align 4
  %cmp534 = icmp eq i32 %261, 10
  br i1 %cmp534, label %cond.true.536, label %cond.false.537

cond.true.536:                                    ; preds = %cond.false.533
  br label %cond.end.543

cond.false.537:                                   ; preds = %cond.false.533
  %262 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %ctl_arrow_538 = getelementptr inbounds %struct.buffer, %struct.buffer* %262, i32 0, i32 29
  %263 = load i64, i64* %ctl_arrow_538, align 8
  %call539 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp540 = icmp eq i64 %263, %call539
  %cond542 = select i1 %cmp540, i32 4, i32 2
  br label %cond.end.543

cond.end.543:                                     ; preds = %cond.false.537, %cond.true.536
  %cond544 = phi i32 [ 0, %cond.true.536 ], [ %cond542, %cond.false.537 ]
  br label %cond.end.545

cond.end.545:                                     ; preds = %cond.end.543, %cond.true.529
  %cond546 = phi i32 [ %call532, %cond.true.529 ], [ %cond544, %cond.end.543 ]
  br label %cond.end.559

cond.false.547:                                   ; preds = %cond.true.523
  %264 = load i32, i32* %ch, align 4
  %cmp548 = icmp slt i32 %264, 127
  br i1 %cmp548, label %cond.true.550, label %cond.false.551

cond.true.550:                                    ; preds = %cond.false.547
  br label %cond.end.557

cond.false.551:                                   ; preds = %cond.false.547
  %265 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %ctl_arrow_552 = getelementptr inbounds %struct.buffer, %struct.buffer* %265, i32 0, i32 29
  %266 = load i64, i64* %ctl_arrow_552, align 8
  %call553 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp554 = icmp eq i64 %266, %call553
  %cond556 = select i1 %cmp554, i32 4, i32 2
  br label %cond.end.557

cond.end.557:                                     ; preds = %cond.false.551, %cond.true.550
  %cond558 = phi i32 [ 1, %cond.true.550 ], [ %cond556, %cond.false.551 ]
  br label %cond.end.559

cond.end.559:                                     ; preds = %cond.end.557, %cond.end.545
  %cond560 = phi i32 [ %cond546, %cond.end.545 ], [ %cond558, %cond.end.557 ]
  br label %cond.end.565

cond.false.561:                                   ; preds = %cond.false.518, %cond.true.514
  %267 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 28), align 8
  %268 = load i32, i32* %ch, align 4
  %call562 = call i64 @CHAR_TABLE_REF(i64 %267, i32 %268)
  %shr563 = ashr i64 %call562, 2
  %call564 = call i32 @sanitize_char_width(i64 %shr563)
  br label %cond.end.565

cond.end.565:                                     ; preds = %cond.false.561, %cond.end.559
  %cond566 = phi i32 [ %cond560, %cond.end.559 ], [ %call564, %cond.false.561 ]
  br label %cond.end.568

cond.false.567:                                   ; preds = %for.body.502
  br label %cond.end.568

cond.end.568:                                     ; preds = %cond.false.567, %cond.end.565
  %cond569 = phi i32 [ %cond566, %cond.end.565 ], [ 1, %cond.false.567 ]
  store i32 %cond569, i32* %this_width503, align 4
  br label %do.body.570

do.body.570:                                      ; preds = %cond.end.568
  %269 = load i32, i32* %rule, align 4
  %and571 = and i32 %269, 255
  store i32 %and571, i32* %rule, align 4
  %270 = load i32, i32* %rule, align 4
  %div572 = sdiv i32 %270, 12
  store i32 %div572, i32* %gref, align 4
  %271 = load i32, i32* %gref, align 4
  %cmp573 = icmp sgt i32 %271, 12
  br i1 %cmp573, label %if.then.575, label %if.end.576

if.then.575:                                      ; preds = %do.body.570
  store i32 11, i32* %gref, align 4
  br label %if.end.576

if.end.576:                                       ; preds = %if.then.575, %do.body.570
  %272 = load i32, i32* %rule, align 4
  %rem577 = srem i32 %272, 12
  store i32 %rem577, i32* %nref, align 4
  br label %do.end.578

do.end.578:                                       ; preds = %if.end.576
  %273 = load double, double* %leftmost, align 8
  %274 = load i32, i32* %gref, align 4
  %rem579 = srem i32 %274, 3
  %conv580 = sitofp i32 %rem579 to double
  %275 = load double, double* %rightmost, align 8
  %276 = load double, double* %leftmost, align 8
  %sub581 = fsub double %275, %276
  %mul = fmul double %conv580, %sub581
  %div582 = fdiv double %mul, 2.000000e+00
  %add583 = fadd double %273, %div582
  %277 = load i32, i32* %nref, align 4
  %rem584 = srem i32 %277, 3
  %278 = load i32, i32* %this_width503, align 4
  %mul585 = mul nsw i32 %rem584, %278
  %conv586 = sitofp i32 %mul585 to double
  %div587 = fdiv double %conv586, 2.000000e+00
  %sub588 = fsub double %add583, %div587
  store double %sub588, double* %this_left, align 8
  %279 = load double, double* %this_left, align 8
  %280 = load double, double* %leftmost, align 8
  %cmp589 = fcmp olt double %279, %280
  br i1 %cmp589, label %if.then.591, label %if.end.592

if.then.591:                                      ; preds = %do.end.578
  %281 = load double, double* %this_left, align 8
  store double %281, double* %leftmost, align 8
  br label %if.end.592

if.end.592:                                       ; preds = %if.then.591, %do.end.578
  %282 = load double, double* %this_left, align 8
  %283 = load i32, i32* %this_width503, align 4
  %conv593 = sitofp i32 %283 to double
  %add594 = fadd double %282, %conv593
  %284 = load double, double* %rightmost, align 8
  %cmp595 = fcmp ogt double %add594, %284
  br i1 %cmp595, label %if.then.597, label %if.end.600

if.then.597:                                      ; preds = %if.end.592
  %285 = load double, double* %this_left, align 8
  %286 = load i32, i32* %this_width503, align 4
  %conv598 = sitofp i32 %286 to double
  %add599 = fadd double %285, %conv598
  store double %add599, double* %rightmost, align 8
  br label %if.end.600

if.end.600:                                       ; preds = %if.then.597, %if.end.592
  br label %for.inc.601

for.inc.601:                                      ; preds = %if.end.600
  %287 = load i64, i64* %i, align 8
  %add602 = add nsw i64 %287, 2
  store i64 %add602, i64* %i, align 8
  br label %for.cond.499

for.end.603:                                      ; preds = %for.cond.499
  %288 = load double, double* %rightmost, align 8
  %289 = load double, double* %leftmost, align 8
  %sub604 = fsub double %288, %289
  %conv605 = fptosi double %sub604 to i32
  %290 = load %struct.composition*, %struct.composition** %cmp, align 8
  %width606 = getelementptr inbounds %struct.composition, %struct.composition* %290, i32 0, i32 6
  store i32 %conv605, i32* %width606, align 4
  %291 = load %struct.composition*, %struct.composition** %cmp, align 8
  %width607 = getelementptr inbounds %struct.composition, %struct.composition* %291, i32 0, i32 6
  %292 = load i32, i32* %width607, align 4
  %conv608 = sitofp i32 %292 to double
  %293 = load double, double* %rightmost, align 8
  %294 = load double, double* %leftmost, align 8
  %sub609 = fsub double %293, %294
  %cmp610 = fcmp olt double %conv608, %sub609
  br i1 %cmp610, label %if.then.612, label %if.end.615

if.then.612:                                      ; preds = %for.end.603
  %295 = load %struct.composition*, %struct.composition** %cmp, align 8
  %width613 = getelementptr inbounds %struct.composition, %struct.composition* %295, i32 0, i32 6
  %296 = load i32, i32* %width613, align 4
  %inc614 = add nsw i32 %296, 1
  store i32 %inc614, i32* %width613, align 4
  br label %if.end.615

if.end.615:                                       ; preds = %if.then.612, %for.end.603
  br label %if.end.616

if.end.616:                                       ; preds = %if.end.615, %for.end.434
  %297 = load %struct.composition*, %struct.composition** %cmp, align 8
  %298 = load i64, i64* @n_compositions, align 8
  %299 = load %struct.composition**, %struct.composition*** @composition_table, align 8
  %arrayidx617 = getelementptr inbounds %struct.composition*, %struct.composition** %299, i64 %298
  store %struct.composition* %297, %struct.composition** %arrayidx617, align 8
  %300 = load i64, i64* @n_compositions, align 8
  %inc618 = add nsw i64 %300, 1
  store i64 %inc618, i64* @n_compositions, align 8
  store i64 %300, i64* %retval
  br label %return

invalid_composition:                              ; preds = %if.then.308, %if.then.296, %if.then.278, %if.else.235, %if.then.37, %if.then.24, %if.then.16, %if.then
  store i64 -1, i64* %retval
  br label %return

return:                                           ; preds = %invalid_composition, %if.end.616, %if.then.243, %if.end.17
  %301 = load i64, i64* %retval
  ret i64 %301
}

declare %struct.Lisp_Hash_Table* @XHASH_TABLE(i64) #1

declare i64 @Fmake_vector(i64, i64) #1

declare zeroext i1 @STRINGP(i64) #1

declare i64 @Fvconcat(i64, i64*) #1

declare zeroext i1 @VECTORP(i64) #1

declare i64 @builtin_lisp_symbol(i32) #1

declare i64 @make_uninit_vector(i64) #1

declare zeroext i1 @STRING_MULTIBYTE(i64) #1

declare i8* @SDATA(i64) #1

declare i32 @string_char(i8*, i8**, i32*) #1

declare zeroext i8 @SREF(i64, i64) #1

declare void @ASET(i64, i64, i64) #1

declare i64 @hash_lookup(%struct.Lisp_Hash_Table*, i64, i64*) #1

declare i64 @HASH_KEY(%struct.Lisp_Hash_Table*, i64) #1

declare i64 @HASH_VALUE(%struct.Lisp_Hash_Table*, i64) #1

declare void @XSETCAR(i64, i64) #1

declare void @XSETCDR(i64, i64) #1

declare i64 @Fcons(i64, i64) #1

declare i8* @xpalloc(i8*, i64*, i64, i64, i64) #1

declare %struct.Lisp_Vector* @XVECTOR(i64) #1

declare i64 @ASIZE(i64) #1

declare i64 @AREF(i64, i64) #1

declare i64 @make_natnum(i64) #1

declare i64 @hash_put(%struct.Lisp_Hash_Table*, i64, i64, i64) #1

; Function Attrs: noreturn
declare void @memory_full(i64) #2

declare noalias i8* @xmalloc(i64) #1

declare noalias i8* @xnmalloc(i64, i64) #1

declare i32 @sanitize_tab_width(i64) #1

declare i32 @sanitize_char_width(i64) #1

declare i64 @CHAR_TABLE_REF(i64, i32) #1

; Function Attrs: nounwind uwtable
define zeroext i1 @find_composition(i64 %pos, i64 %limit, i64* %start, i64* %end, i64* %prop, i64 %object) #0 {
entry:
  %retval = alloca i1, align 1
  %pos.addr = alloca i64, align 8
  %limit.addr = alloca i64, align 8
  %start.addr = alloca i64*, align 8
  %end.addr = alloca i64*, align 8
  %prop.addr = alloca i64*, align 8
  %object.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %pos, i64* %pos.addr, align 8
  store i64 %limit, i64* %limit.addr, align 8
  store i64* %start, i64** %start.addr, align 8
  store i64* %end, i64** %end.addr, align 8
  store i64* %prop, i64** %prop.addr, align 8
  store i64 %object, i64* %object.addr, align 8
  %0 = load i64, i64* %pos.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 290)
  %1 = load i64*, i64** %prop.addr, align 8
  %2 = load i64*, i64** %start.addr, align 8
  %3 = load i64*, i64** %end.addr, align 8
  %4 = load i64, i64* %object.addr, align 8
  %call1 = call zeroext i1 @get_property_and_range(i64 %0, i64 %call, i64* %1, i64* %2, i64* %3, i64 %4)
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 true, i1* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %limit.addr, align 8
  %cmp = icmp slt i64 %5, 0
  br i1 %cmp, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load i64, i64* %limit.addr, align 8
  %7 = load i64, i64* %pos.addr, align 8
  %cmp2 = icmp eq i64 %6, %7
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  store i1 false, i1* %retval
  br label %return

if.end.4:                                         ; preds = %lor.lhs.false
  %8 = load i64, i64* %limit.addr, align 8
  %9 = load i64, i64* %pos.addr, align 8
  %cmp5 = icmp sgt i64 %8, %9
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end.4
  %10 = load i64, i64* %pos.addr, align 8
  %shl = shl i64 %10, 2
  %add = add i64 %shl, 2
  %call7 = call i64 @builtin_lisp_symbol(i32 290)
  %11 = load i64, i64* %object.addr, align 8
  %12 = load i64, i64* %limit.addr, align 8
  %shl8 = shl i64 %12, 2
  %add9 = add i64 %shl8, 2
  %call10 = call i64 @Fnext_single_property_change(i64 %add, i64 %call7, i64 %11, i64 %add9)
  store i64 %call10, i64* %val, align 8
  %13 = load i64, i64* %val, align 8
  %shr = ashr i64 %13, 2
  store i64 %shr, i64* %pos.addr, align 8
  %14 = load i64, i64* %pos.addr, align 8
  %15 = load i64, i64* %limit.addr, align 8
  %cmp11 = icmp eq i64 %14, %15
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.6
  store i1 false, i1* %retval
  br label %return

if.end.13:                                        ; preds = %if.then.6
  br label %if.end.28

if.else:                                          ; preds = %if.end.4
  %16 = load i64, i64* %pos.addr, align 8
  %sub = sub nsw i64 %16, 1
  %call14 = call i64 @builtin_lisp_symbol(i32 290)
  %17 = load i64*, i64** %prop.addr, align 8
  %18 = load i64*, i64** %start.addr, align 8
  %19 = load i64*, i64** %end.addr, align 8
  %20 = load i64, i64* %object.addr, align 8
  %call15 = call zeroext i1 @get_property_and_range(i64 %sub, i64 %call14, i64* %17, i64* %18, i64* %19, i64 %20)
  br i1 %call15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.else
  store i1 true, i1* %retval
  br label %return

if.end.17:                                        ; preds = %if.else
  %21 = load i64, i64* %pos.addr, align 8
  %shl18 = shl i64 %21, 2
  %add19 = add i64 %shl18, 2
  %call20 = call i64 @builtin_lisp_symbol(i32 290)
  %22 = load i64, i64* %object.addr, align 8
  %23 = load i64, i64* %limit.addr, align 8
  %shl21 = shl i64 %23, 2
  %add22 = add i64 %shl21, 2
  %call23 = call i64 @Fprevious_single_property_change(i64 %add19, i64 %call20, i64 %22, i64 %add22)
  store i64 %call23, i64* %val, align 8
  %24 = load i64, i64* %val, align 8
  %shr24 = ashr i64 %24, 2
  store i64 %shr24, i64* %pos.addr, align 8
  %25 = load i64, i64* %pos.addr, align 8
  %26 = load i64, i64* %limit.addr, align 8
  %cmp25 = icmp eq i64 %25, %26
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.17
  store i1 false, i1* %retval
  br label %return

if.end.27:                                        ; preds = %if.end.17
  %27 = load i64, i64* %pos.addr, align 8
  %dec = add nsw i64 %27, -1
  store i64 %dec, i64* %pos.addr, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end.13
  %28 = load i64, i64* %pos.addr, align 8
  %call29 = call i64 @builtin_lisp_symbol(i32 290)
  %29 = load i64*, i64** %prop.addr, align 8
  %30 = load i64*, i64** %start.addr, align 8
  %31 = load i64*, i64** %end.addr, align 8
  %32 = load i64, i64* %object.addr, align 8
  %call30 = call zeroext i1 @get_property_and_range(i64 %28, i64 %call29, i64* %29, i64* %30, i64* %31, i64 %32)
  store i1 true, i1* %retval
  br label %return

return:                                           ; preds = %if.end.28, %if.then.26, %if.then.16, %if.then.12, %if.then.3, %if.then
  %33 = load i1, i1* %retval
  ret i1 %33
}

declare zeroext i1 @get_property_and_range(i64, i64, i64*, i64*, i64*, i64) #1

declare i64 @Fnext_single_property_change(i64, i64, i64, i64) #1

declare i64 @Fprevious_single_property_change(i64, i64, i64, i64) #1

; Function Attrs: nounwind uwtable
define void @update_compositions(i64 %from, i64 %to, i32 %check_mask) #0 {
entry:
  %from.addr = alloca i64, align 8
  %to.addr = alloca i64, align 8
  %check_mask.addr = alloca i32, align 4
  %prop = alloca i64, align 8
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %min_pos = alloca i64, align 8
  %max_pos = alloca i64, align 8
  %count = alloca i64, align 8
  store i64 %from, i64* %from.addr, align 8
  store i64 %to, i64* %to.addr, align 8
  store i32 %check_mask, i32* %check_mask.addr, align 4
  %0 = load i64, i64* %from.addr, align 8
  store i64 %0, i64* %min_pos, align 8
  %1 = load i64, i64* %to.addr, align 8
  store i64 %1, i64* %max_pos, align 8
  %2 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 456), align 1
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.114

if.end:                                           ; preds = %entry
  %3 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i32 0, i32 77
  %4 = load i64, i64* %begv, align 8
  %5 = load i64, i64* %from.addr, align 8
  %cmp = icmp sle i64 %4, %5
  br i1 %cmp, label %land.lhs.true, label %if.then.4

land.lhs.true:                                    ; preds = %if.end
  %6 = load i64, i64* %from.addr, align 8
  %7 = load i64, i64* %to.addr, align 8
  %cmp1 = icmp sle i64 %6, %7
  br i1 %cmp1, label %land.lhs.true.2, label %if.then.4

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %8 = load i64, i64* %to.addr, align 8
  %9 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %9, i32 0, i32 79
  %10 = load i64, i64* %zv, align 8
  %cmp3 = icmp sle i64 %8, %10
  br i1 %cmp3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %land.lhs.true.2, %land.lhs.true, %if.end
  br label %if.end.114

if.end.5:                                         ; preds = %land.lhs.true.2
  %11 = load i32, i32* %check_mask.addr, align 4
  %and = and i32 %11, 1
  %tobool6 = icmp ne i32 %and, 0
  br i1 %tobool6, label %if.then.7, label %if.end.42

if.then.7:                                        ; preds = %if.end.5
  %12 = load i64, i64* %from.addr, align 8
  %13 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv8 = getelementptr inbounds %struct.buffer, %struct.buffer* %13, i32 0, i32 77
  %14 = load i64, i64* %begv8, align 8
  %cmp9 = icmp sgt i64 %12, %14
  br i1 %cmp9, label %land.lhs.true.10, label %if.else

land.lhs.true.10:                                 ; preds = %if.then.7
  %15 = load i64, i64* %from.addr, align 8
  %sub = sub nsw i64 %15, 1
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %call11 = call zeroext i1 @find_composition(i64 %sub, i64 -1, i64* %start, i64* %end, i64* %prop, i64 %call)
  br i1 %call11, label %land.lhs.true.12, label %if.else

land.lhs.true.12:                                 ; preds = %land.lhs.true.10
  %16 = load i64, i64* %start, align 8
  %17 = load i64, i64* %end, align 8
  %18 = load i64, i64* %prop, align 8
  %call13 = call zeroext i1 @composition_valid_p(i64 %16, i64 %17, i64 %18)
  br i1 %call13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %land.lhs.true.12
  %19 = load i64, i64* %start, align 8
  store i64 %19, i64* %min_pos, align 8
  %20 = load i64, i64* %end, align 8
  %21 = load i64, i64* %to.addr, align 8
  %cmp15 = icmp sgt i64 %20, %21
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.then.14
  %22 = load i64, i64* %end, align 8
  store i64 %22, i64* %max_pos, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.then.14
  %23 = load i64, i64* %from.addr, align 8
  %24 = load i64, i64* %end, align 8
  %cmp18 = icmp slt i64 %23, %24
  br i1 %cmp18, label %if.then.19, label %if.end.28

if.then.19:                                       ; preds = %if.end.17
  %25 = load i64, i64* %from.addr, align 8
  %shl = shl i64 %25, 2
  %add = add i64 %shl, 2
  %26 = load i64, i64* %end, align 8
  %shl20 = shl i64 %26, 2
  %add21 = add i64 %shl20, 2
  %call22 = call i64 @builtin_lisp_symbol(i32 290)
  %27 = load i64, i64* %prop, align 8
  %sub23 = sub nsw i64 %27, 3
  %28 = inttoptr i64 %sub23 to i8*
  %29 = bitcast i8* %28 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %29, i32 0, i32 0
  %30 = load i64, i64* %car, align 8
  %31 = load i64, i64* %prop, align 8
  %sub24 = sub nsw i64 %31, 3
  %32 = inttoptr i64 %sub24 to i8*
  %33 = bitcast i8* %32 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %33, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %34 = load i64, i64* %cdr, align 8
  %call25 = call i64 @Fcons(i64 %30, i64 %34)
  %call26 = call i64 @builtin_lisp_symbol(i32 0)
  %call27 = call i64 @Fput_text_property(i64 %add, i64 %add21, i64 %call22, i64 %call25, i64 %call26)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.19, %if.end.17
  %35 = load i64, i64* %start, align 8
  %36 = load i64, i64* %end, align 8
  %37 = load i64, i64* %prop, align 8
  call void @run_composition_function(i64 %35, i64 %36, i64 %37)
  %38 = load i64, i64* %end, align 8
  store i64 %38, i64* %from.addr, align 8
  br label %if.end.41

if.else:                                          ; preds = %land.lhs.true.12, %land.lhs.true.10, %if.then.7
  %39 = load i64, i64* %from.addr, align 8
  %40 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv29 = getelementptr inbounds %struct.buffer, %struct.buffer* %40, i32 0, i32 79
  %41 = load i64, i64* %zv29, align 8
  %cmp30 = icmp slt i64 %39, %41
  br i1 %cmp30, label %land.lhs.true.31, label %if.end.40

land.lhs.true.31:                                 ; preds = %if.else
  %42 = load i64, i64* %from.addr, align 8
  %call32 = call i64 @builtin_lisp_symbol(i32 0)
  %call33 = call zeroext i1 @find_composition(i64 %42, i64 -1, i64* %start, i64* %from.addr, i64* %prop, i64 %call32)
  br i1 %call33, label %land.lhs.true.34, label %if.end.40

land.lhs.true.34:                                 ; preds = %land.lhs.true.31
  %43 = load i64, i64* %start, align 8
  %44 = load i64, i64* %from.addr, align 8
  %45 = load i64, i64* %prop, align 8
  %call35 = call zeroext i1 @composition_valid_p(i64 %43, i64 %44, i64 %45)
  br i1 %call35, label %if.then.36, label %if.end.40

if.then.36:                                       ; preds = %land.lhs.true.34
  %46 = load i64, i64* %from.addr, align 8
  %47 = load i64, i64* %to.addr, align 8
  %cmp37 = icmp sgt i64 %46, %47
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.then.36
  %48 = load i64, i64* %from.addr, align 8
  store i64 %48, i64* %max_pos, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %if.then.36
  %49 = load i64, i64* %start, align 8
  %50 = load i64, i64* %from.addr, align 8
  %51 = load i64, i64* %prop, align 8
  call void @run_composition_function(i64 %49, i64 %50, i64 %51)
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %land.lhs.true.34, %land.lhs.true.31, %if.else
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.end.28
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.end.5
  %52 = load i32, i32* %check_mask.addr, align 4
  %and43 = and i32 %52, 4
  %tobool44 = icmp ne i32 %and43, 0
  br i1 %tobool44, label %if.then.45, label %if.end.55

if.then.45:                                       ; preds = %if.end.42
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.45
  %53 = load i64, i64* %from.addr, align 8
  %54 = load i64, i64* %to.addr, align 8
  %sub46 = sub nsw i64 %54, 1
  %cmp47 = icmp slt i64 %53, %sub46
  br i1 %cmp47, label %land.lhs.true.48, label %land.end

land.lhs.true.48:                                 ; preds = %while.cond
  %55 = load i64, i64* %from.addr, align 8
  %56 = load i64, i64* %to.addr, align 8
  %call49 = call i64 @builtin_lisp_symbol(i32 0)
  %call50 = call zeroext i1 @find_composition(i64 %55, i64 %56, i64* %start, i64* %from.addr, i64* %prop, i64 %call49)
  br i1 %call50, label %land.lhs.true.51, label %land.end

land.lhs.true.51:                                 ; preds = %land.lhs.true.48
  %57 = load i64, i64* %start, align 8
  %58 = load i64, i64* %from.addr, align 8
  %59 = load i64, i64* %prop, align 8
  %call52 = call zeroext i1 @composition_valid_p(i64 %57, i64 %58, i64 %59)
  br i1 %call52, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.51
  %60 = load i64, i64* %from.addr, align 8
  %61 = load i64, i64* %to.addr, align 8
  %sub53 = sub nsw i64 %61, 1
  %cmp54 = icmp slt i64 %60, %sub53
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.51, %land.lhs.true.48, %while.cond
  %62 = phi i1 [ false, %land.lhs.true.51 ], [ false, %land.lhs.true.48 ], [ false, %while.cond ], [ %cmp54, %land.rhs ]
  br i1 %62, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %63 = load i64, i64* %start, align 8
  %64 = load i64, i64* %from.addr, align 8
  %65 = load i64, i64* %prop, align 8
  call void @run_composition_function(i64 %63, i64 %64, i64 %65)
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end.55

if.end.55:                                        ; preds = %while.end, %if.end.42
  %66 = load i32, i32* %check_mask.addr, align 4
  %and56 = and i32 %66, 2
  %tobool57 = icmp ne i32 %and56, 0
  br i1 %tobool57, label %if.then.58, label %if.end.94

if.then.58:                                       ; preds = %if.end.55
  %67 = load i64, i64* %from.addr, align 8
  %68 = load i64, i64* %to.addr, align 8
  %cmp59 = icmp slt i64 %67, %68
  br i1 %cmp59, label %land.lhs.true.60, label %if.else.83

land.lhs.true.60:                                 ; preds = %if.then.58
  %69 = load i64, i64* %to.addr, align 8
  %sub61 = sub nsw i64 %69, 1
  %call62 = call i64 @builtin_lisp_symbol(i32 0)
  %call63 = call zeroext i1 @find_composition(i64 %sub61, i64 -1, i64* %start, i64* %end, i64* %prop, i64 %call62)
  br i1 %call63, label %land.lhs.true.64, label %if.else.83

land.lhs.true.64:                                 ; preds = %land.lhs.true.60
  %70 = load i64, i64* %start, align 8
  %71 = load i64, i64* %end, align 8
  %72 = load i64, i64* %prop, align 8
  %call65 = call zeroext i1 @composition_valid_p(i64 %70, i64 %71, i64 %72)
  br i1 %call65, label %if.then.66, label %if.else.83

if.then.66:                                       ; preds = %land.lhs.true.64
  %73 = load i64, i64* %to.addr, align 8
  %74 = load i64, i64* %end, align 8
  %cmp67 = icmp slt i64 %73, %74
  br i1 %cmp67, label %if.then.68, label %if.end.82

if.then.68:                                       ; preds = %if.then.66
  %75 = load i64, i64* %start, align 8
  %shl69 = shl i64 %75, 2
  %add70 = add i64 %shl69, 2
  %76 = load i64, i64* %to.addr, align 8
  %shl71 = shl i64 %76, 2
  %add72 = add i64 %shl71, 2
  %call73 = call i64 @builtin_lisp_symbol(i32 290)
  %77 = load i64, i64* %prop, align 8
  %sub74 = sub nsw i64 %77, 3
  %78 = inttoptr i64 %sub74 to i8*
  %79 = bitcast i8* %78 to %struct.Lisp_Cons*
  %car75 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %79, i32 0, i32 0
  %80 = load i64, i64* %car75, align 8
  %81 = load i64, i64* %prop, align 8
  %sub76 = sub nsw i64 %81, 3
  %82 = inttoptr i64 %sub76 to i8*
  %83 = bitcast i8* %82 to %struct.Lisp_Cons*
  %u77 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %83, i32 0, i32 1
  %cdr78 = bitcast %union.anon* %u77 to i64*
  %84 = load i64, i64* %cdr78, align 8
  %call79 = call i64 @Fcons(i64 %80, i64 %84)
  %call80 = call i64 @builtin_lisp_symbol(i32 0)
  %call81 = call i64 @Fput_text_property(i64 %add70, i64 %add72, i64 %call73, i64 %call79, i64 %call80)
  %85 = load i64, i64* %end, align 8
  store i64 %85, i64* %max_pos, align 8
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.68, %if.then.66
  %86 = load i64, i64* %start, align 8
  %87 = load i64, i64* %end, align 8
  %88 = load i64, i64* %prop, align 8
  call void @run_composition_function(i64 %86, i64 %87, i64 %88)
  br label %if.end.93

if.else.83:                                       ; preds = %land.lhs.true.64, %land.lhs.true.60, %if.then.58
  %89 = load i64, i64* %to.addr, align 8
  %90 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv84 = getelementptr inbounds %struct.buffer, %struct.buffer* %90, i32 0, i32 79
  %91 = load i64, i64* %zv84, align 8
  %cmp85 = icmp slt i64 %89, %91
  br i1 %cmp85, label %land.lhs.true.86, label %if.end.92

land.lhs.true.86:                                 ; preds = %if.else.83
  %92 = load i64, i64* %to.addr, align 8
  %call87 = call i64 @builtin_lisp_symbol(i32 0)
  %call88 = call zeroext i1 @find_composition(i64 %92, i64 -1, i64* %start, i64* %end, i64* %prop, i64 %call87)
  br i1 %call88, label %land.lhs.true.89, label %if.end.92

land.lhs.true.89:                                 ; preds = %land.lhs.true.86
  %93 = load i64, i64* %start, align 8
  %94 = load i64, i64* %end, align 8
  %95 = load i64, i64* %prop, align 8
  %call90 = call zeroext i1 @composition_valid_p(i64 %93, i64 %94, i64 %95)
  br i1 %call90, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %land.lhs.true.89
  %96 = load i64, i64* %start, align 8
  %97 = load i64, i64* %end, align 8
  %98 = load i64, i64* %prop, align 8
  call void @run_composition_function(i64 %96, i64 %97, i64 %98)
  %99 = load i64, i64* %end, align 8
  store i64 %99, i64* %max_pos, align 8
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.91, %land.lhs.true.89, %land.lhs.true.86, %if.else.83
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.end.82
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.end.55
  %100 = load i64, i64* %min_pos, align 8
  %101 = load i64, i64* %max_pos, align 8
  %cmp95 = icmp slt i64 %100, %101
  br i1 %cmp95, label %if.then.96, label %if.end.114

if.then.96:                                       ; preds = %if.end.94
  %call97 = call i64 @SPECPDL_INDEX()
  store i64 %call97, i64* %count, align 8
  %call98 = call i64 @builtin_lisp_symbol(i32 547)
  %call99 = call i64 @builtin_lisp_symbol(i32 901)
  call void @specbind(i64 %call98, i64 %call99)
  %call100 = call i64 @builtin_lisp_symbol(i32 544)
  %call101 = call i64 @builtin_lisp_symbol(i32 901)
  call void @specbind(i64 %call100, i64 %call101)
  %call102 = call i64 @builtin_lisp_symbol(i32 545)
  %call103 = call i64 @builtin_lisp_symbol(i32 901)
  call void @specbind(i64 %call102, i64 %call103)
  %102 = load i64, i64* %min_pos, align 8
  %shl104 = shl i64 %102, 2
  %add105 = add i64 %shl104, 2
  %103 = load i64, i64* %max_pos, align 8
  %shl106 = shl i64 %103, 2
  %add107 = add i64 %shl106, 2
  %call108 = call i64 @builtin_lisp_symbol(i32 185)
  %call109 = call i64 @list1(i64 %call108)
  %call110 = call i64 @builtin_lisp_symbol(i32 0)
  %call111 = call i64 @Fremove_list_of_text_properties(i64 %add105, i64 %add107, i64 %call109, i64 %call110)
  %104 = load i64, i64* %count, align 8
  %call112 = call i64 @builtin_lisp_symbol(i32 0)
  %call113 = call i64 @unbind_to(i64 %104, i64 %call112)
  br label %if.end.114

if.end.114:                                       ; preds = %if.then, %if.then.4, %if.then.96, %if.end.94
  ret void
}

declare zeroext i1 @composition_valid_p(i64, i64, i64) #1

declare i64 @Fput_text_property(i64, i64, i64, i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @run_composition_function(i64 %from, i64 %to, i64 %prop) #0 {
entry:
  %from.addr = alloca i64, align 8
  %to.addr = alloca i64, align 8
  %prop.addr = alloca i64, align 8
  %func = alloca i64, align 8
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  store i64 %from, i64* %from.addr, align 8
  store i64 %to, i64* %to.addr, align 8
  store i64 %prop, i64* %prop.addr, align 8
  %0 = load i64, i64* %prop.addr, align 8
  %call = call zeroext i1 @composition_registered_p(i64 %0)
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i64, i64* %prop.addr, align 8
  %sub = sub nsw i64 %1, 3
  %2 = inttoptr i64 %sub to i8*
  %3 = bitcast i8* %2 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %3, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %4 = load i64, i64* %cdr, align 8
  %sub1 = sub nsw i64 %4, 3
  %5 = inttoptr i64 %sub1 to i8*
  %6 = bitcast i8* %5 to %struct.Lisp_Cons*
  %u2 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %6, i32 0, i32 1
  %cdr3 = bitcast %union.anon* %u2 to i64*
  %7 = load i64, i64* %cdr3, align 8
  %sub4 = sub nsw i64 %7, 3
  %8 = inttoptr i64 %sub4 to i8*
  %9 = bitcast i8* %8 to %struct.Lisp_Cons*
  %u5 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %9, i32 0, i32 1
  %cdr6 = bitcast %union.anon* %u5 to i64*
  %10 = load i64, i64* %cdr6, align 8
  br label %cond.end.14

cond.false:                                       ; preds = %entry
  %11 = load i64, i64* %prop.addr, align 8
  %and = and i64 %11, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %cond.true.8, label %cond.false.12

cond.true.8:                                      ; preds = %cond.false
  %12 = load i64, i64* %prop.addr, align 8
  %sub9 = sub nsw i64 %12, 3
  %13 = inttoptr i64 %sub9 to i8*
  %14 = bitcast i8* %13 to %struct.Lisp_Cons*
  %u10 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %14, i32 0, i32 1
  %cdr11 = bitcast %union.anon* %u10 to i64*
  %15 = load i64, i64* %cdr11, align 8
  br label %cond.end

cond.false.12:                                    ; preds = %cond.false
  %call13 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.12, %cond.true.8
  %cond = phi i64 [ %15, %cond.true.8 ], [ %call13, %cond.false.12 ]
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.end, %cond.true
  %cond15 = phi i64 [ %10, %cond.true ], [ %cond, %cond.end ]
  store i64 %cond15, i64* %func, align 8
  %16 = load i64, i64* %from.addr, align 8
  %17 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %17, i32 0, i32 77
  %18 = load i64, i64* %begv, align 8
  %cmp16 = icmp sgt i64 %16, %18
  br i1 %cmp16, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end.14
  %19 = load i64, i64* %from.addr, align 8
  %sub18 = sub nsw i64 %19, 1
  %call19 = call i64 @builtin_lisp_symbol(i32 0)
  %call20 = call zeroext i1 @find_composition(i64 %sub18, i64 -1, i64* %start, i64* %end, i64* %prop.addr, i64 %call19)
  br i1 %call20, label %land.lhs.true.22, label %if.end

land.lhs.true.22:                                 ; preds = %land.lhs.true
  %20 = load i64, i64* %start, align 8
  %21 = load i64, i64* %end, align 8
  %22 = load i64, i64* %prop.addr, align 8
  %call23 = call zeroext i1 @composition_valid_p(i64 %20, i64 %21, i64 %22)
  br i1 %call23, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.22
  %23 = load i64, i64* %start, align 8
  store i64 %23, i64* %from.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.22, %land.lhs.true, %cond.end.14
  %24 = load i64, i64* %to.addr, align 8
  %25 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %25, i32 0, i32 79
  %26 = load i64, i64* %zv, align 8
  %cmp24 = icmp slt i64 %24, %26
  br i1 %cmp24, label %land.lhs.true.26, label %if.end.33

land.lhs.true.26:                                 ; preds = %if.end
  %27 = load i64, i64* %to.addr, align 8
  %call27 = call i64 @builtin_lisp_symbol(i32 0)
  %call28 = call zeroext i1 @find_composition(i64 %27, i64 -1, i64* %start, i64* %end, i64* %prop.addr, i64 %call27)
  br i1 %call28, label %land.lhs.true.30, label %if.end.33

land.lhs.true.30:                                 ; preds = %land.lhs.true.26
  %28 = load i64, i64* %start, align 8
  %29 = load i64, i64* %end, align 8
  %30 = load i64, i64* %prop.addr, align 8
  %call31 = call zeroext i1 @composition_valid_p(i64 %28, i64 %29, i64 %30)
  br i1 %call31, label %if.end.33, label %if.then.32

if.then.32:                                       ; preds = %land.lhs.true.30
  %31 = load i64, i64* %end, align 8
  store i64 %31, i64* %to.addr, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %land.lhs.true.30, %land.lhs.true.26, %if.end
  %32 = load i64, i64* %func, align 8
  %call34 = call i64 @Ffboundp(i64 %32)
  %call35 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp36 = icmp eq i64 %call34, %call35
  br i1 %cmp36, label %if.end.42, label %if.then.38

if.then.38:                                       ; preds = %if.end.33
  %33 = load i64, i64* %func, align 8
  %34 = load i64, i64* %from.addr, align 8
  %shl = shl i64 %34, 2
  %add = add i64 %shl, 2
  %35 = load i64, i64* %to.addr, align 8
  %shl39 = shl i64 %35, 2
  %add40 = add i64 %shl39, 2
  %call41 = call i64 @call2(i64 %33, i64 %add, i64 %add40)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.38, %if.end.33
  ret void
}

declare i64 @SPECPDL_INDEX() #1

declare void @specbind(i64, i64) #1

declare i64 @Fremove_list_of_text_properties(i64, i64, i64, i64) #1

declare i64 @list1(i64) #1

declare i64 @unbind_to(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @make_composition_value_copy(i64 %list) #0 {
entry:
  %list.addr = alloca i64, align 8
  %plist = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %list, i64* %list.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %list.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* %list.addr, align 8
  %sub = sub nsw i64 %1, 3
  %2 = inttoptr i64 %sub to i8*
  %3 = bitcast i8* %2 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %3, i32 0, i32 0
  %4 = load i64, i64* %car, align 8
  %sub2 = sub nsw i64 %4, 3
  %5 = inttoptr i64 %sub2 to i8*
  %6 = bitcast i8* %5 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %6, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %7 = load i64, i64* %cdr, align 8
  %sub3 = sub nsw i64 %7, 3
  %8 = inttoptr i64 %sub3 to i8*
  %9 = bitcast i8* %8 to %struct.Lisp_Cons*
  %u4 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %9, i32 0, i32 1
  %cdr5 = bitcast %union.anon* %u4 to i64*
  %10 = load i64, i64* %cdr5, align 8
  %sub6 = sub nsw i64 %10, 3
  %11 = inttoptr i64 %sub6 to i8*
  %12 = bitcast i8* %11 to %struct.Lisp_Cons*
  %car7 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %12, i32 0, i32 0
  %13 = load i64, i64* %car7, align 8
  store i64 %13, i64* %plist, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %for.body
  %14 = load i64, i64* %plist, align 8
  %and8 = and i64 %14, 7
  %conv9 = trunc i64 %and8 to i32
  %cmp10 = icmp eq i32 %conv9, 3
  br i1 %cmp10, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %15 = load i64, i64* %plist, align 8
  %sub12 = sub nsw i64 %15, 3
  %16 = inttoptr i64 %sub12 to i8*
  %17 = bitcast i8* %16 to %struct.Lisp_Cons*
  %u13 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %17, i32 0, i32 1
  %cdr14 = bitcast %union.anon* %u13 to i64*
  %18 = load i64, i64* %cdr14, align 8
  %and15 = and i64 %18, 7
  %conv16 = trunc i64 %and15 to i32
  %cmp17 = icmp eq i32 %conv16, 3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %19 = phi i1 [ false, %while.cond ], [ %cmp17, %land.rhs ]
  br i1 %19, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %20 = load i64, i64* %plist, align 8
  %sub19 = sub nsw i64 %20, 3
  %21 = inttoptr i64 %sub19 to i8*
  %22 = bitcast i8* %21 to %struct.Lisp_Cons*
  %car20 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %22, i32 0, i32 0
  %23 = load i64, i64* %car20, align 8
  %call = call i64 @builtin_lisp_symbol(i32 290)
  %cmp21 = icmp eq i64 %23, %call
  br i1 %cmp21, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %24 = load i64, i64* %plist, align 8
  %sub23 = sub nsw i64 %24, 3
  %25 = inttoptr i64 %sub23 to i8*
  %26 = bitcast i8* %25 to %struct.Lisp_Cons*
  %u24 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %26, i32 0, i32 1
  %cdr25 = bitcast %union.anon* %u24 to i64*
  %27 = load i64, i64* %cdr25, align 8
  %sub26 = sub nsw i64 %27, 3
  %28 = inttoptr i64 %sub26 to i8*
  %29 = bitcast i8* %28 to %struct.Lisp_Cons*
  %car27 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %29, i32 0, i32 0
  %30 = load i64, i64* %car27, align 8
  store i64 %30, i64* %val, align 8
  %31 = load i64, i64* %val, align 8
  %and28 = and i64 %31, 7
  %conv29 = trunc i64 %and28 to i32
  %cmp30 = icmp eq i32 %conv29, 3
  br i1 %cmp30, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %32 = load i64, i64* %plist, align 8
  %sub32 = sub nsw i64 %32, 3
  %33 = inttoptr i64 %sub32 to i8*
  %34 = bitcast i8* %33 to %struct.Lisp_Cons*
  %u33 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %34, i32 0, i32 1
  %cdr34 = bitcast %union.anon* %u33 to i64*
  %35 = load i64, i64* %cdr34, align 8
  %36 = load i64, i64* %val, align 8
  %sub35 = sub nsw i64 %36, 3
  %37 = inttoptr i64 %sub35 to i8*
  %38 = bitcast i8* %37 to %struct.Lisp_Cons*
  %car36 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %38, i32 0, i32 0
  %39 = load i64, i64* %car36, align 8
  %40 = load i64, i64* %val, align 8
  %sub37 = sub nsw i64 %40, 3
  %41 = inttoptr i64 %sub37 to i8*
  %42 = bitcast i8* %41 to %struct.Lisp_Cons*
  %u38 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %42, i32 0, i32 1
  %cdr39 = bitcast %union.anon* %u38 to i64*
  %43 = load i64, i64* %cdr39, align 8
  %call40 = call i64 @Fcons(i64 %39, i64 %43)
  call void @XSETCAR(i64 %35, i64 %call40)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.body
  %44 = load i64, i64* %plist, align 8
  %sub41 = sub nsw i64 %44, 3
  %45 = inttoptr i64 %sub41 to i8*
  %46 = bitcast i8* %45 to %struct.Lisp_Cons*
  %u42 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %46, i32 0, i32 1
  %cdr43 = bitcast %union.anon* %u42 to i64*
  %47 = load i64, i64* %cdr43, align 8
  %sub44 = sub nsw i64 %47, 3
  %48 = inttoptr i64 %sub44 to i8*
  %49 = bitcast i8* %48 to %struct.Lisp_Cons*
  %u45 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %49, i32 0, i32 1
  %cdr46 = bitcast %union.anon* %u45 to i64*
  %50 = load i64, i64* %cdr46, align 8
  store i64 %50, i64* %plist, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %51 = load i64, i64* %list.addr, align 8
  %sub47 = sub nsw i64 %51, 3
  %52 = inttoptr i64 %sub47 to i8*
  %53 = bitcast i8* %52 to %struct.Lisp_Cons*
  %u48 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %53, i32 0, i32 1
  %cdr49 = bitcast %union.anon* %u48 to i64*
  %54 = load i64, i64* %cdr49, align 8
  store i64 %54, i64* %list.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @compose_text(i64 %start, i64 %end, i64 %components, i64 %modification_func, i64 %string) #0 {
entry:
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %components.addr = alloca i64, align 8
  %modification_func.addr = alloca i64, align 8
  %string.addr = alloca i64, align 8
  %prop = alloca i64, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  store i64 %components, i64* %components.addr, align 8
  store i64 %modification_func, i64* %modification_func.addr, align 8
  store i64 %string, i64* %string.addr, align 8
  %0 = load i64, i64* %end.addr, align 8
  %1 = load i64, i64* %start.addr, align 8
  %sub = sub nsw i64 %0, %1
  %shl = shl i64 %sub, 2
  %add = add i64 %shl, 2
  %2 = load i64, i64* %components.addr, align 8
  %call = call i64 @Fcons(i64 %add, i64 %2)
  %3 = load i64, i64* %modification_func.addr, align 8
  %call1 = call i64 @Fcons(i64 %call, i64 %3)
  store i64 %call1, i64* %prop, align 8
  %4 = load i64, i64* %start.addr, align 8
  %shl2 = shl i64 %4, 2
  %add3 = add i64 %shl2, 2
  %5 = load i64, i64* %end.addr, align 8
  %shl4 = shl i64 %5, 2
  %add5 = add i64 %shl4, 2
  %call6 = call i64 @builtin_lisp_symbol(i32 290)
  %6 = load i64, i64* %prop, align 8
  %7 = load i64, i64* %string.addr, align 8
  %call7 = call i64 @Fput_text_property(i64 %add3, i64 %add5, i64 %call6, i64 %6, i64 %7)
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @composition_gstring_put_cache(i64 %gstring, i64 %len) #0 {
entry:
  %gstring.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %h = alloca %struct.Lisp_Hash_Table*, align 8
  %hash = alloca i64, align 8
  %header = alloca i64, align 8
  %copy = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %glyph_len = alloca i64, align 8
  store i64 %gstring, i64* %gstring.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i64, i64* @gstring_hash_table, align 8
  %call = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %0)
  store %struct.Lisp_Hash_Table* %call, %struct.Lisp_Hash_Table** %h, align 8
  %1 = load i64, i64* %gstring.addr, align 8
  %call1 = call i64 @AREF(i64 %1, i64 0)
  store i64 %call1, i64* %header, align 8
  %2 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %h, align 8
  %test = getelementptr inbounds %struct.Lisp_Hash_Table, %struct.Lisp_Hash_Table* %2, i32 0, i32 10
  %hashfn = getelementptr inbounds %struct.hash_table_test, %struct.hash_table_test* %test, i32 0, i32 4
  %3 = load i64 (%struct.hash_table_test*, i64)*, i64 (%struct.hash_table_test*, i64)** %hashfn, align 8
  %4 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %h, align 8
  %test2 = getelementptr inbounds %struct.Lisp_Hash_Table, %struct.Lisp_Hash_Table* %4, i32 0, i32 10
  %5 = load i64, i64* %header, align 8
  %call3 = call i64 %3(%struct.hash_table_test* %test2, i64 %5)
  store i64 %call3, i64* %hash, align 8
  %6 = load i64, i64* %len.addr, align 8
  %cmp = icmp slt i64 %6, 0
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %7 = load i64, i64* %gstring.addr, align 8
  %call4 = call i64 @ASIZE(i64 %7)
  %sub = sub nsw i64 %call4, 2
  store i64 %sub, i64* %glyph_len, align 8
  store i64 0, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %8 = load i64, i64* %j, align 8
  %9 = load i64, i64* %glyph_len, align 8
  %cmp5 = icmp slt i64 %8, %9
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i64, i64* %gstring.addr, align 8
  %11 = load i64, i64* %j, align 8
  %add = add nsw i64 %11, 2
  %call6 = call i64 @AREF(i64 %10, i64 %add)
  %call7 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp8 = icmp eq i64 %call6, %call7
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i64, i64* %j, align 8
  %inc = add nsw i64 %12, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.9, %for.cond
  %13 = load i64, i64* %j, align 8
  store i64 %13, i64* %len.addr, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %for.end, %entry
  %14 = load i64, i64* %len.addr, align 8
  %add11 = add nsw i64 %14, 2
  %shl = shl i64 %add11, 2
  %add12 = add i64 %shl, 2
  %call13 = call i64 @builtin_lisp_symbol(i32 0)
  %call14 = call i64 @Fmake_vector(i64 %add12, i64 %call13)
  store i64 %call14, i64* %copy, align 8
  %15 = load i64, i64* %copy, align 8
  %16 = load i64, i64* %header, align 8
  %call15 = call i64 @Fcopy_sequence(i64 %16)
  call void @ASET(i64 %15, i64 0, i64 %call15)
  store i64 0, i64* %i, align 8
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.23, %if.end.10
  %17 = load i64, i64* %i, align 8
  %18 = load i64, i64* %len.addr, align 8
  %cmp17 = icmp slt i64 %17, %18
  br i1 %cmp17, label %for.body.18, label %for.end.25

for.body.18:                                      ; preds = %for.cond.16
  %19 = load i64, i64* %copy, align 8
  %20 = load i64, i64* %i, align 8
  %add19 = add nsw i64 %20, 2
  %21 = load i64, i64* %gstring.addr, align 8
  %22 = load i64, i64* %i, align 8
  %add20 = add nsw i64 %22, 2
  %call21 = call i64 @AREF(i64 %21, i64 %add20)
  %call22 = call i64 @Fcopy_sequence(i64 %call21)
  call void @ASET(i64 %19, i64 %add19, i64 %call22)
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.body.18
  %23 = load i64, i64* %i, align 8
  %inc24 = add nsw i64 %23, 1
  store i64 %inc24, i64* %i, align 8
  br label %for.cond.16

for.end.25:                                       ; preds = %for.cond.16
  %24 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %h, align 8
  %25 = load i64, i64* %copy, align 8
  %call26 = call i64 @AREF(i64 %25, i64 0)
  %26 = load i64, i64* %copy, align 8
  %27 = load i64, i64* %hash, align 8
  %call27 = call i64 @hash_put(%struct.Lisp_Hash_Table* %24, i64 %call26, i64 %26, i64 %27)
  store i64 %call27, i64* %i, align 8
  %28 = load i64, i64* %copy, align 8
  %29 = load i64, i64* %i, align 8
  %shl28 = shl i64 %29, 2
  %add29 = add i64 %shl28, 2
  call void @ASET(i64 %28, i64 1, i64 %add29)
  %30 = load i64, i64* %copy, align 8
  ret i64 %30
}

declare i64 @Fcopy_sequence(i64) #1

; Function Attrs: nounwind uwtable
define i64 @composition_gstring_from_id(i64 %id) #0 {
entry:
  %id.addr = alloca i64, align 8
  %h = alloca %struct.Lisp_Hash_Table*, align 8
  store i64 %id, i64* %id.addr, align 8
  %0 = load i64, i64* @gstring_hash_table, align 8
  %call = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %0)
  store %struct.Lisp_Hash_Table* %call, %struct.Lisp_Hash_Table** %h, align 8
  %1 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %h, align 8
  %2 = load i64, i64* %id.addr, align 8
  %call1 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %1, i64 %2)
  ret i64 %call1
}

; Function Attrs: nounwind uwtable
define zeroext i1 @composition_gstring_p(i64 %gstring) #0 {
entry:
  %retval = alloca i1, align 1
  %gstring.addr = alloca i64, align 8
  %header = alloca i64, align 8
  %i = alloca i64, align 8
  %glyph = alloca i64, align 8
  store i64 %gstring, i64* %gstring.addr, align 8
  %0 = load i64, i64* %gstring.addr, align 8
  %call = call zeroext i1 @VECTORP(i64 %0)
  br i1 %call, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %gstring.addr, align 8
  %call1 = call i64 @ASIZE(i64 %1)
  %cmp = icmp slt i64 %call1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i1 false, i1* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i64, i64* %gstring.addr, align 8
  %call2 = call i64 @AREF(i64 %2, i64 0)
  store i64 %call2, i64* %header, align 8
  %3 = load i64, i64* %header, align 8
  %call3 = call zeroext i1 @VECTORP(i64 %3)
  br i1 %call3, label %lor.lhs.false.4, label %if.then.7

lor.lhs.false.4:                                  ; preds = %if.end
  %4 = load i64, i64* %header, align 8
  %call5 = call i64 @ASIZE(i64 %4)
  %cmp6 = icmp slt i64 %call5, 2
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %lor.lhs.false.4, %if.end
  store i1 false, i1* %retval
  br label %return

if.end.8:                                         ; preds = %lor.lhs.false.4
  %5 = load i64, i64* %gstring.addr, align 8
  %call9 = call i64 @AREF(i64 %5, i64 0)
  %call10 = call i64 @AREF(i64 %call9, i64 0)
  %call11 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp12 = icmp eq i64 %call10, %call11
  br i1 %cmp12, label %if.end.34, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.8
  %6 = load i64, i64* %gstring.addr, align 8
  %call13 = call i64 @AREF(i64 %6, i64 0)
  %call14 = call i64 @AREF(i64 %call13, i64 0)
  %call15 = call zeroext i1 @FONT_OBJECT_P(i64 %call14)
  br i1 %call15, label %if.end.34, label %land.lhs.true.16

land.lhs.true.16:                                 ; preds = %land.lhs.true
  %7 = load i64, i64* @Vcoding_system_hash_table, align 8
  %call17 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %7)
  %8 = load i64, i64* %gstring.addr, align 8
  %call18 = call i64 @AREF(i64 %8, i64 0)
  %call19 = call i64 @AREF(i64 %call18, i64 0)
  %call20 = call i64 @hash_lookup(%struct.Lisp_Hash_Table* %call17, i64 %call19, i64* null)
  %cmp21 = icmp sge i64 %call20, 0
  br i1 %cmp21, label %if.end.34, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %land.lhs.true.16
  %9 = load i64, i64* %gstring.addr, align 8
  %call23 = call i64 @AREF(i64 %9, i64 0)
  %call24 = call i64 @AREF(i64 %call23, i64 0)
  %call25 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp26 = icmp eq i64 %call24, %call25
  br i1 %cmp26, label %if.then.33, label %land.lhs.true.27

land.lhs.true.27:                                 ; preds = %lor.lhs.false.22
  %10 = load i64, i64* %gstring.addr, align 8
  %call28 = call i64 @AREF(i64 %10, i64 0)
  %call29 = call i64 @AREF(i64 %call28, i64 0)
  %call30 = call i64 @Fcoding_system_p(i64 %call29)
  %call31 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp32 = icmp eq i64 %call30, %call31
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %land.lhs.true.27, %lor.lhs.false.22
  store i1 false, i1* %retval
  br label %return

if.end.34:                                        ; preds = %land.lhs.true.27, %land.lhs.true.16, %land.lhs.true, %if.end.8
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.34
  %11 = load i64, i64* %i, align 8
  %12 = load i64, i64* %gstring.addr, align 8
  %call35 = call i64 @AREF(i64 %12, i64 0)
  %call36 = call i64 @ASIZE(i64 %call35)
  %cmp37 = icmp slt i64 %11, %call36
  br i1 %cmp37, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i64, i64* %gstring.addr, align 8
  %call38 = call i64 @AREF(i64 %13, i64 0)
  %14 = load i64, i64* %i, align 8
  %call39 = call i64 @AREF(i64 %call38, i64 %14)
  %call40 = call zeroext i1 @NATNUMP(i64 %call39)
  br i1 %call40, label %if.end.42, label %if.then.41

if.then.41:                                       ; preds = %for.body
  store i1 false, i1* %retval
  br label %return

if.end.42:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.42
  %15 = load i64, i64* %i, align 8
  %inc = add nsw i64 %15, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i64, i64* %gstring.addr, align 8
  %call43 = call i64 @AREF(i64 %16, i64 1)
  %call44 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp45 = icmp eq i64 %call43, %call44
  br i1 %cmp45, label %if.end.50, label %land.lhs.true.46

land.lhs.true.46:                                 ; preds = %for.end
  %17 = load i64, i64* %gstring.addr, align 8
  %call47 = call i64 @AREF(i64 %17, i64 1)
  %call48 = call zeroext i1 @NATNUMP(i64 %call47)
  br i1 %call48, label %if.end.50, label %if.then.49

if.then.49:                                       ; preds = %land.lhs.true.46
  store i1 false, i1* %retval
  br label %return

if.end.50:                                        ; preds = %land.lhs.true.46, %for.end
  store i64 0, i64* %i, align 8
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.66, %if.end.50
  %18 = load i64, i64* %i, align 8
  %19 = load i64, i64* %gstring.addr, align 8
  %call52 = call i64 @ASIZE(i64 %19)
  %sub = sub nsw i64 %call52, 2
  %cmp53 = icmp slt i64 %18, %sub
  br i1 %cmp53, label %for.body.54, label %for.end.68

for.body.54:                                      ; preds = %for.cond.51
  %20 = load i64, i64* %gstring.addr, align 8
  %21 = load i64, i64* %i, align 8
  %add = add nsw i64 %21, 2
  %call55 = call i64 @AREF(i64 %20, i64 %add)
  store i64 %call55, i64* %glyph, align 8
  %22 = load i64, i64* %glyph, align 8
  %call56 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp57 = icmp eq i64 %22, %call56
  br i1 %cmp57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %for.body.54
  br label %for.end.68

if.end.59:                                        ; preds = %for.body.54
  %23 = load i64, i64* %glyph, align 8
  %call60 = call zeroext i1 @VECTORP(i64 %23)
  br i1 %call60, label %lor.lhs.false.61, label %if.then.64

lor.lhs.false.61:                                 ; preds = %if.end.59
  %24 = load i64, i64* %glyph, align 8
  %call62 = call i64 @ASIZE(i64 %24)
  %cmp63 = icmp ne i64 %call62, 10
  br i1 %cmp63, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %lor.lhs.false.61, %if.end.59
  store i1 false, i1* %retval
  br label %return

if.end.65:                                        ; preds = %lor.lhs.false.61
  br label %for.inc.66

for.inc.66:                                       ; preds = %if.end.65
  %25 = load i64, i64* %i, align 8
  %inc67 = add nsw i64 %25, 1
  store i64 %inc67, i64* %i, align 8
  br label %for.cond.51

for.end.68:                                       ; preds = %if.then.58, %for.cond.51
  store i1 true, i1* %retval
  br label %return

return:                                           ; preds = %for.end.68, %if.then.64, %if.then.49, %if.then.41, %if.then.33, %if.then.7, %if.then
  %26 = load i1, i1* %retval
  ret i1 %26
}

declare zeroext i1 @FONT_OBJECT_P(i64) #1

declare i64 @Fcoding_system_p(i64) #1

declare zeroext i1 @NATNUMP(i64) #1

; Function Attrs: nounwind uwtable
define i32 @composition_gstring_width(i64 %gstring, i64 %from, i64 %to, %struct.font_metrics* %metrics) #0 {
entry:
  %gstring.addr = alloca i64, align 8
  %from.addr = alloca i64, align 8
  %to.addr = alloca i64, align 8
  %metrics.addr = alloca %struct.font_metrics*, align 8
  %glyph = alloca i64*, align 8
  %width = alloca i32, align 4
  %font_object = alloca i64, align 8
  %font = alloca %struct.font*, align 8
  %font_ascent = alloca i32, align 4
  %font_descent = alloca i32, align 4
  %x = alloca i32, align 4
  store i64 %gstring, i64* %gstring.addr, align 8
  store i64 %from, i64* %from.addr, align 8
  store i64 %to, i64* %to.addr, align 8
  store %struct.font_metrics* %metrics, %struct.font_metrics** %metrics.addr, align 8
  store i32 0, i32* %width, align 4
  %0 = load %struct.font_metrics*, %struct.font_metrics** %metrics.addr, align 8
  %tobool = icmp ne %struct.font_metrics* %0, null
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %gstring.addr, align 8
  %call = call i64 @AREF(i64 %1, i64 0)
  %call1 = call i64 @AREF(i64 %call, i64 0)
  store i64 %call1, i64* %font_object, align 8
  %2 = load i64, i64* %font_object, align 8
  %call2 = call zeroext i1 @FONT_OBJECT_P(i64 %2)
  br i1 %call2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %3 = load i64, i64* %font_object, align 8
  %call4 = call %struct.font* @XFONT_OBJECT(i64 %3)
  store %struct.font* %call4, %struct.font** %font, align 8
  %4 = load %struct.font*, %struct.font** %font, align 8
  call void @get_font_ascent_descent(%struct.font* %4, i32* %font_ascent, i32* %font_descent)
  %5 = load i32, i32* %font_ascent, align 4
  %conv = trunc i32 %5 to i16
  %6 = load %struct.font_metrics*, %struct.font_metrics** %metrics.addr, align 8
  %ascent = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %6, i32 0, i32 3
  store i16 %conv, i16* %ascent, align 2
  %7 = load i32, i32* %font_descent, align 4
  %conv5 = trunc i32 %7 to i16
  %8 = load %struct.font_metrics*, %struct.font_metrics** %metrics.addr, align 8
  %descent = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %8, i32 0, i32 4
  store i16 %conv5, i16* %descent, align 2
  br label %if.end

if.else:                                          ; preds = %if.then
  %9 = load %struct.font_metrics*, %struct.font_metrics** %metrics.addr, align 8
  %ascent6 = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %9, i32 0, i32 3
  store i16 1, i16* %ascent6, align 2
  %10 = load %struct.font_metrics*, %struct.font_metrics** %metrics.addr, align 8
  %descent7 = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %10, i32 0, i32 4
  store i16 0, i16* %descent7, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  %11 = load %struct.font_metrics*, %struct.font_metrics** %metrics.addr, align 8
  %rbearing = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %11, i32 0, i32 1
  store i16 0, i16* %rbearing, align 2
  %12 = load %struct.font_metrics*, %struct.font_metrics** %metrics.addr, align 8
  %lbearing = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %12, i32 0, i32 0
  store i16 0, i16* %lbearing, align 2
  %13 = load %struct.font_metrics*, %struct.font_metrics** %metrics.addr, align 8
  %width8 = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %13, i32 0, i32 2
  store i16 0, i16* %width8, align 2
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %entry
  %14 = load i64, i64* %gstring.addr, align 8
  %15 = load i64, i64* %from.addr, align 8
  %call10 = call i64* @lgstring_glyph_addr(i64 %14, i64 %15)
  store i64* %call10, i64** %glyph, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.9
  %16 = load i64, i64* %from.addr, align 8
  %17 = load i64, i64* %to.addr, align 8
  %cmp = icmp slt i64 %16, %17
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i64*, i64** %glyph, align 8
  %19 = load i64, i64* %18, align 8
  %call12 = call i64 @AREF(i64 %19, i64 9)
  %call13 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp14 = icmp eq i64 %call12, %call13
  br i1 %cmp14, label %if.then.16, label %if.else.20

if.then.16:                                       ; preds = %for.body
  %20 = load i64*, i64** %glyph, align 8
  %21 = load i64, i64* %20, align 8
  %call17 = call i64 @AREF(i64 %21, i64 4)
  %shr = ashr i64 %call17, 2
  %22 = load i32, i32* %width, align 4
  %conv18 = sext i32 %22 to i64
  %add = add nsw i64 %conv18, %shr
  %conv19 = trunc i64 %add to i32
  store i32 %conv19, i32* %width, align 4
  br label %if.end.30

if.else.20:                                       ; preds = %for.body
  %23 = load i64*, i64** %glyph, align 8
  %24 = load i64, i64* %23, align 8
  %call21 = call i64 @AREF(i64 %24, i64 9)
  %call22 = call zeroext i1 @VECTORP(i64 %call21)
  br i1 %call22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.20
  %25 = load i64*, i64** %glyph, align 8
  %26 = load i64, i64* %25, align 8
  %call24 = call i64 @AREF(i64 %26, i64 9)
  %call25 = call i64 @AREF(i64 %call24, i64 2)
  %shr26 = ashr i64 %call25, 2
  br label %cond.end

cond.false:                                       ; preds = %if.else.20
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %shr26, %cond.true ], [ 0, %cond.false ]
  %27 = load i32, i32* %width, align 4
  %conv27 = sext i32 %27 to i64
  %add28 = add nsw i64 %conv27, %cond
  %conv29 = trunc i64 %add28 to i32
  store i32 %conv29, i32* %width, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %cond.end, %if.then.16
  %28 = load %struct.font_metrics*, %struct.font_metrics** %metrics.addr, align 8
  %tobool31 = icmp ne %struct.font_metrics* %28, null
  br i1 %tobool31, label %if.then.32, label %if.end.128

if.then.32:                                       ; preds = %if.end.30
  %29 = load %struct.font_metrics*, %struct.font_metrics** %metrics.addr, align 8
  %width33 = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %29, i32 0, i32 2
  %30 = load i16, i16* %width33, align 2
  %conv34 = sext i16 %30 to i64
  %31 = load i64*, i64** %glyph, align 8
  %32 = load i64, i64* %31, align 8
  %call35 = call i64 @AREF(i64 %32, i64 5)
  %shr36 = ashr i64 %call35, 2
  %add37 = add nsw i64 %conv34, %shr36
  %33 = load i64*, i64** %glyph, align 8
  %34 = load i64, i64* %33, align 8
  %call38 = call i64 @AREF(i64 %34, i64 9)
  %call39 = call zeroext i1 @VECTORP(i64 %call38)
  br i1 %call39, label %cond.true.41, label %cond.false.45

cond.true.41:                                     ; preds = %if.then.32
  %35 = load i64*, i64** %glyph, align 8
  %36 = load i64, i64* %35, align 8
  %call42 = call i64 @AREF(i64 %36, i64 9)
  %call43 = call i64 @AREF(i64 %call42, i64 0)
  %shr44 = ashr i64 %call43, 2
  br label %cond.end.46

cond.false.45:                                    ; preds = %if.then.32
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.false.45, %cond.true.41
  %cond47 = phi i64 [ %shr44, %cond.true.41 ], [ 0, %cond.false.45 ]
  %add48 = add nsw i64 %add37, %cond47
  %conv49 = trunc i64 %add48 to i32
  store i32 %conv49, i32* %x, align 4
  %37 = load %struct.font_metrics*, %struct.font_metrics** %metrics.addr, align 8
  %lbearing50 = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %37, i32 0, i32 0
  %38 = load i16, i16* %lbearing50, align 2
  %conv51 = sext i16 %38 to i32
  %39 = load i32, i32* %x, align 4
  %cmp52 = icmp sgt i32 %conv51, %39
  br i1 %cmp52, label %if.then.54, label %if.end.57

if.then.54:                                       ; preds = %cond.end.46
  %40 = load i32, i32* %x, align 4
  %conv55 = trunc i32 %40 to i16
  %41 = load %struct.font_metrics*, %struct.font_metrics** %metrics.addr, align 8
  %lbearing56 = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %41, i32 0, i32 0
  store i16 %conv55, i16* %lbearing56, align 2
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.54, %cond.end.46
  %42 = load %struct.font_metrics*, %struct.font_metrics** %metrics.addr, align 8
  %width58 = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %42, i32 0, i32 2
  %43 = load i16, i16* %width58, align 2
  %conv59 = sext i16 %43 to i64
  %44 = load i64*, i64** %glyph, align 8
  %45 = load i64, i64* %44, align 8
  %call60 = call i64 @AREF(i64 %45, i64 6)
  %shr61 = ashr i64 %call60, 2
  %add62 = add nsw i64 %conv59, %shr61
  %46 = load i64*, i64** %glyph, align 8
  %47 = load i64, i64* %46, align 8
  %call63 = call i64 @AREF(i64 %47, i64 9)
  %call64 = call zeroext i1 @VECTORP(i64 %call63)
  br i1 %call64, label %cond.true.66, label %cond.false.70

cond.true.66:                                     ; preds = %if.end.57
  %48 = load i64*, i64** %glyph, align 8
  %49 = load i64, i64* %48, align 8
  %call67 = call i64 @AREF(i64 %49, i64 9)
  %call68 = call i64 @AREF(i64 %call67, i64 0)
  %shr69 = ashr i64 %call68, 2
  br label %cond.end.71

cond.false.70:                                    ; preds = %if.end.57
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.false.70, %cond.true.66
  %cond72 = phi i64 [ %shr69, %cond.true.66 ], [ 0, %cond.false.70 ]
  %add73 = add nsw i64 %add62, %cond72
  %conv74 = trunc i64 %add73 to i32
  store i32 %conv74, i32* %x, align 4
  %50 = load %struct.font_metrics*, %struct.font_metrics** %metrics.addr, align 8
  %rbearing75 = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %50, i32 0, i32 1
  %51 = load i16, i16* %rbearing75, align 2
  %conv76 = sext i16 %51 to i32
  %52 = load i32, i32* %x, align 4
  %cmp77 = icmp slt i32 %conv76, %52
  br i1 %cmp77, label %if.then.79, label %if.end.82

if.then.79:                                       ; preds = %cond.end.71
  %53 = load i32, i32* %x, align 4
  %conv80 = trunc i32 %53 to i16
  %54 = load %struct.font_metrics*, %struct.font_metrics** %metrics.addr, align 8
  %rbearing81 = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %54, i32 0, i32 1
  store i16 %conv80, i16* %rbearing81, align 2
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.79, %cond.end.71
  %55 = load i32, i32* %width, align 4
  %conv83 = trunc i32 %55 to i16
  %56 = load %struct.font_metrics*, %struct.font_metrics** %metrics.addr, align 8
  %width84 = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %56, i32 0, i32 2
  store i16 %conv83, i16* %width84, align 2
  %57 = load i64*, i64** %glyph, align 8
  %58 = load i64, i64* %57, align 8
  %call85 = call i64 @AREF(i64 %58, i64 7)
  %shr86 = ashr i64 %call85, 2
  %59 = load i64*, i64** %glyph, align 8
  %60 = load i64, i64* %59, align 8
  %call87 = call i64 @AREF(i64 %60, i64 9)
  %call88 = call zeroext i1 @VECTORP(i64 %call87)
  br i1 %call88, label %cond.true.90, label %cond.false.94

cond.true.90:                                     ; preds = %if.end.82
  %61 = load i64*, i64** %glyph, align 8
  %62 = load i64, i64* %61, align 8
  %call91 = call i64 @AREF(i64 %62, i64 9)
  %call92 = call i64 @AREF(i64 %call91, i64 1)
  %shr93 = ashr i64 %call92, 2
  br label %cond.end.95

cond.false.94:                                    ; preds = %if.end.82
  br label %cond.end.95

cond.end.95:                                      ; preds = %cond.false.94, %cond.true.90
  %cond96 = phi i64 [ %shr93, %cond.true.90 ], [ 0, %cond.false.94 ]
  %sub = sub nsw i64 %shr86, %cond96
  %conv97 = trunc i64 %sub to i32
  store i32 %conv97, i32* %x, align 4
  %63 = load %struct.font_metrics*, %struct.font_metrics** %metrics.addr, align 8
  %ascent98 = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %63, i32 0, i32 3
  %64 = load i16, i16* %ascent98, align 2
  %conv99 = sext i16 %64 to i32
  %65 = load i32, i32* %x, align 4
  %cmp100 = icmp slt i32 %conv99, %65
  br i1 %cmp100, label %if.then.102, label %if.end.105

if.then.102:                                      ; preds = %cond.end.95
  %66 = load i32, i32* %x, align 4
  %conv103 = trunc i32 %66 to i16
  %67 = load %struct.font_metrics*, %struct.font_metrics** %metrics.addr, align 8
  %ascent104 = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %67, i32 0, i32 3
  store i16 %conv103, i16* %ascent104, align 2
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.102, %cond.end.95
  %68 = load i64*, i64** %glyph, align 8
  %69 = load i64, i64* %68, align 8
  %call106 = call i64 @AREF(i64 %69, i64 8)
  %shr107 = ashr i64 %call106, 2
  %70 = load i64*, i64** %glyph, align 8
  %71 = load i64, i64* %70, align 8
  %call108 = call i64 @AREF(i64 %71, i64 9)
  %call109 = call zeroext i1 @VECTORP(i64 %call108)
  br i1 %call109, label %cond.true.111, label %cond.false.115

cond.true.111:                                    ; preds = %if.end.105
  %72 = load i64*, i64** %glyph, align 8
  %73 = load i64, i64* %72, align 8
  %call112 = call i64 @AREF(i64 %73, i64 9)
  %call113 = call i64 @AREF(i64 %call112, i64 1)
  %shr114 = ashr i64 %call113, 2
  br label %cond.end.116

cond.false.115:                                   ; preds = %if.end.105
  br label %cond.end.116

cond.end.116:                                     ; preds = %cond.false.115, %cond.true.111
  %cond117 = phi i64 [ %shr114, %cond.true.111 ], [ 0, %cond.false.115 ]
  %add118 = add nsw i64 %shr107, %cond117
  %conv119 = trunc i64 %add118 to i32
  store i32 %conv119, i32* %x, align 4
  %74 = load %struct.font_metrics*, %struct.font_metrics** %metrics.addr, align 8
  %descent120 = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %74, i32 0, i32 4
  %75 = load i16, i16* %descent120, align 2
  %conv121 = sext i16 %75 to i32
  %76 = load i32, i32* %x, align 4
  %cmp122 = icmp slt i32 %conv121, %76
  br i1 %cmp122, label %if.then.124, label %if.end.127

if.then.124:                                      ; preds = %cond.end.116
  %77 = load i32, i32* %x, align 4
  %conv125 = trunc i32 %77 to i16
  %78 = load %struct.font_metrics*, %struct.font_metrics** %metrics.addr, align 8
  %descent126 = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %78, i32 0, i32 4
  store i16 %conv125, i16* %descent126, align 2
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.124, %cond.end.116
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %if.end.30
  br label %for.inc

for.inc:                                          ; preds = %if.end.128
  %79 = load i64, i64* %from.addr, align 8
  %inc = add nsw i64 %79, 1
  store i64 %inc, i64* %from.addr, align 8
  %80 = load i64*, i64** %glyph, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %80, i32 1
  store i64* %incdec.ptr, i64** %glyph, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %81 = load i32, i32* %width, align 4
  ret i32 %81
}

declare %struct.font* @XFONT_OBJECT(i64) #1

declare void @get_font_ascent_descent(%struct.font*, i32*, i32*) #1

declare i64* @lgstring_glyph_addr(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @composition_compute_stop_pos(%struct.composition_it* %cmp_it, i64 %charpos, i64 %bytepos, i64 %endpos, i64 %string) #0 {
entry:
  %cmp_it.addr = alloca %struct.composition_it*, align 8
  %charpos.addr = alloca i64, align 8
  %bytepos.addr = alloca i64, align 8
  %endpos.addr = alloca i64, align 8
  %string.addr = alloca i64, align 8
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %c = alloca i32, align 4
  %prop = alloca i64, align 8
  %val = alloca i64, align 8
  %MAX_NEWLINE_DISTANCE = alloca i32, align 4
  %chp = alloca i8*, align 8
  %chlen = alloca i32, align 4
  %chp113 = alloca i8*, align 8
  %chlen124 = alloca i32, align 4
  %ridx = alloca i32, align 4
  %elt = alloca i64, align 8
  %p = alloca i8*, align 8
  %len = alloca i32, align 4
  %limit = alloca i64, align 8
  %elt352 = alloca i64, align 8
  %ridx353 = alloca i32, align 4
  %blen = alloca i32, align 4
  %back = alloca i64, align 8
  %cpos = alloca i64, align 8
  %bpos = alloca i64, align 8
  %chp482 = alloca i8*, align 8
  %chp612 = alloca i8*, align 8
  store %struct.composition_it* %cmp_it, %struct.composition_it** %cmp_it.addr, align 8
  store i64 %charpos, i64* %charpos.addr, align 8
  store i64 %bytepos, i64* %bytepos.addr, align 8
  store i64 %endpos, i64* %endpos.addr, align 8
  store i64 %string, i64* %string.addr, align 8
  store i32 500, i32* %MAX_NEWLINE_DISTANCE, align 4
  %0 = load i64, i64* %charpos.addr, align 8
  %1 = load i64, i64* %endpos.addr, align 8
  %cmp = icmp slt i64 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %endpos.addr, align 8
  %3 = load i64, i64* %charpos.addr, align 8
  %add = add nsw i64 %3, 500
  %cmp1 = icmp sgt i64 %2, %add
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %4 = load i64, i64* %charpos.addr, align 8
  %add3 = add nsw i64 %4, 500
  store i64 %add3, i64* %endpos.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.11

if.else:                                          ; preds = %entry
  %5 = load i64, i64* %endpos.addr, align 8
  %6 = load i64, i64* %charpos.addr, align 8
  %cmp4 = icmp slt i64 %5, %6
  br i1 %cmp4, label %if.then.5, label %if.end.10

if.then.5:                                        ; preds = %if.else
  %7 = load i64, i64* %endpos.addr, align 8
  %cmp6 = icmp slt i64 %7, 0
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.then.5
  %8 = load i64, i64* %string.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp8 = icmp eq i64 %8, %call
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.7
  %9 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %9, i32 0, i32 77
  %10 = load i64, i64* %begv, align 8
  %sub = sub nsw i64 %10, 1
  br label %cond.end

cond.false:                                       ; preds = %if.then.7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ -1, %cond.false ]
  store i64 %cond, i64* %endpos.addr, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %cond.end, %if.then.5
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.else
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.end
  %11 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %id = getelementptr inbounds %struct.composition_it, %struct.composition_it* %11, i32 0, i32 1
  store i64 -1, i64* %id, align 8
  %12 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %ch = getelementptr inbounds %struct.composition_it, %struct.composition_it* %12, i32 0, i32 2
  store i32 -2, i32* %ch, align 4
  %13 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %reversed_p = getelementptr inbounds %struct.composition_it, %struct.composition_it* %13, i32 0, i32 6
  store i8 0, i8* %reversed_p, align 1
  %14 = load i64, i64* %endpos.addr, align 8
  %15 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %stop_pos = getelementptr inbounds %struct.composition_it, %struct.composition_it* %15, i32 0, i32 0
  store i64 %14, i64* %stop_pos, align 8
  %16 = load i64, i64* %charpos.addr, align 8
  %17 = load i64, i64* %endpos.addr, align 8
  %cmp12 = icmp eq i64 %16, %17
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.11
  br label %return

if.end.14:                                        ; preds = %if.end.11
  %18 = load i64, i64* %charpos.addr, align 8
  %19 = load i64, i64* %endpos.addr, align 8
  %cmp15 = icmp slt i64 %18, %19
  br i1 %cmp15, label %land.lhs.true, label %if.end.24

land.lhs.true:                                    ; preds = %if.end.14
  %20 = load i64, i64* %charpos.addr, align 8
  %21 = load i64, i64* %endpos.addr, align 8
  %22 = load i64, i64* %string.addr, align 8
  %call16 = call zeroext i1 @find_composition(i64 %20, i64 %21, i64* %start, i64* %end, i64* %prop, i64 %22)
  br i1 %call16, label %land.lhs.true.17, label %if.end.24

land.lhs.true.17:                                 ; preds = %land.lhs.true
  %23 = load i64, i64* %start, align 8
  %24 = load i64, i64* %charpos.addr, align 8
  %cmp18 = icmp sge i64 %23, %24
  br i1 %cmp18, label %land.lhs.true.19, label %if.end.24

land.lhs.true.19:                                 ; preds = %land.lhs.true.17
  %25 = load i64, i64* %start, align 8
  %26 = load i64, i64* %end, align 8
  %27 = load i64, i64* %prop, align 8
  %call20 = call zeroext i1 @composition_valid_p(i64 %25, i64 %26, i64 %27)
  br i1 %call20, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %land.lhs.true.19
  %28 = load i64, i64* %start, align 8
  store i64 %28, i64* %endpos.addr, align 8
  %29 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %stop_pos22 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %29, i32 0, i32 0
  store i64 %28, i64* %stop_pos22, align 8
  %30 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %ch23 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %30, i32 0, i32 2
  store i32 -1, i32* %ch23, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.21, %land.lhs.true.19, %land.lhs.true.17, %land.lhs.true, %if.end.14
  %31 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_ = getelementptr inbounds %struct.buffer, %struct.buffer* %31, i32 0, i32 39
  %32 = load i64, i64* %enable_multibyte_characters_, align 8
  %call25 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp26 = icmp eq i64 %32, %call25
  br i1 %cmp26, label %if.then.29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.24
  %33 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 6), align 8
  %call27 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp28 = icmp eq i64 %33, %call27
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %lor.lhs.false, %if.end.24
  br label %return

if.end.30:                                        ; preds = %lor.lhs.false
  %34 = load i64, i64* %bytepos.addr, align 8
  %cmp31 = icmp slt i64 %34, 0
  br i1 %cmp31, label %if.then.32, label %if.end.40

if.then.32:                                       ; preds = %if.end.30
  %35 = load i64, i64* %string.addr, align 8
  %call33 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp34 = icmp eq i64 %35, %call33
  br i1 %cmp34, label %if.then.35, label %if.else.37

if.then.35:                                       ; preds = %if.then.32
  %36 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %37 = load i64, i64* %charpos.addr, align 8
  %call36 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %36, i64 %37)
  store i64 %call36, i64* %bytepos.addr, align 8
  br label %if.end.39

if.else.37:                                       ; preds = %if.then.32
  %38 = load i64, i64* %string.addr, align 8
  %39 = load i64, i64* %charpos.addr, align 8
  %call38 = call i64 @string_char_to_byte(i64 %38, i64 %39)
  store i64 %call38, i64* %bytepos.addr, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.37, %if.then.35
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.end.30
  %40 = load i64, i64* %charpos.addr, align 8
  store i64 %40, i64* %start, align 8
  %41 = load i64, i64* %charpos.addr, align 8
  %42 = load i64, i64* %endpos.addr, align 8
  %cmp41 = icmp slt i64 %41, %42
  br i1 %cmp41, label %if.then.42, label %if.else.261

if.then.42:                                       ; preds = %if.end.40
  br label %while.cond

while.cond:                                       ; preds = %if.end.244, %if.then.42
  %43 = load i64, i64* %charpos.addr, align 8
  %44 = load i64, i64* %endpos.addr, align 8
  %cmp43 = icmp slt i64 %43, %44
  br i1 %cmp43, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %45 = load i64, i64* %string.addr, align 8
  %call44 = call zeroext i1 @STRINGP(i64 %45)
  br i1 %call44, label %if.then.45, label %if.else.105

if.then.45:                                       ; preds = %while.body
  br label %do.body

do.body:                                          ; preds = %if.then.45
  %46 = load i64, i64* %charpos.addr, align 8
  %inc = add nsw i64 %46, 1
  store i64 %inc, i64* %charpos.addr, align 8
  %47 = load i64, i64* %string.addr, align 8
  %call46 = call zeroext i1 @STRING_MULTIBYTE(i64 %47)
  br i1 %call46, label %if.then.47, label %if.else.100

if.then.47:                                       ; preds = %do.body
  %48 = load i64, i64* %bytepos.addr, align 8
  %49 = load i64, i64* %string.addr, align 8
  %call48 = call i8* @SDATA(i64 %49)
  %arrayidx = getelementptr inbounds i8, i8* %call48, i64 %48
  store i8* %arrayidx, i8** %chp, align 8
  %50 = load i8*, i8** %chp, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %50, i64 0
  %51 = load i8, i8* %arrayidx49, align 1
  %conv = zext i8 %51 to i32
  %and = and i32 %conv, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.false.53, label %cond.true.50

cond.true.50:                                     ; preds = %if.then.47
  store i32 1, i32* %chlen, align 4
  %52 = load i8*, i8** %chp, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %52, i64 0
  %53 = load i8, i8* %arrayidx51, align 1
  %conv52 = zext i8 %53 to i32
  br label %cond.end.96

cond.false.53:                                    ; preds = %if.then.47
  %54 = load i8*, i8** %chp, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %54, i64 0
  %55 = load i8, i8* %arrayidx54, align 1
  %conv55 = zext i8 %55 to i32
  %and56 = and i32 %conv55, 32
  %tobool57 = icmp ne i32 %and56, 0
  br i1 %tobool57, label %cond.false.71, label %cond.true.58

cond.true.58:                                     ; preds = %cond.false.53
  store i32 2, i32* %chlen, align 4
  %56 = load i8*, i8** %chp, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %56, i64 0
  %57 = load i8, i8* %arrayidx59, align 1
  %conv60 = zext i8 %57 to i32
  %and61 = and i32 %conv60, 31
  %shl = shl i32 %and61, 6
  %58 = load i8*, i8** %chp, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %58, i64 1
  %59 = load i8, i8* %arrayidx62, align 1
  %conv63 = zext i8 %59 to i32
  %and64 = and i32 %conv63, 63
  %or = or i32 %shl, %and64
  %60 = load i8*, i8** %chp, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %60, i64 0
  %61 = load i8, i8* %arrayidx65, align 1
  %conv66 = zext i8 %61 to i32
  %cmp67 = icmp slt i32 %conv66, 194
  %cond69 = select i1 %cmp67, i32 4194176, i32 0
  %add70 = add nsw i32 %or, %cond69
  br label %cond.end.94

cond.false.71:                                    ; preds = %cond.false.53
  %62 = load i8*, i8** %chp, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %62, i64 0
  %63 = load i8, i8* %arrayidx72, align 1
  %conv73 = zext i8 %63 to i32
  %and74 = and i32 %conv73, 16
  %tobool75 = icmp ne i32 %and74, 0
  br i1 %tobool75, label %cond.false.90, label %cond.true.76

cond.true.76:                                     ; preds = %cond.false.71
  store i32 3, i32* %chlen, align 4
  %64 = load i8*, i8** %chp, align 8
  %arrayidx77 = getelementptr inbounds i8, i8* %64, i64 0
  %65 = load i8, i8* %arrayidx77, align 1
  %conv78 = zext i8 %65 to i32
  %and79 = and i32 %conv78, 15
  %shl80 = shl i32 %and79, 12
  %66 = load i8*, i8** %chp, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %66, i64 1
  %67 = load i8, i8* %arrayidx81, align 1
  %conv82 = zext i8 %67 to i32
  %and83 = and i32 %conv82, 63
  %shl84 = shl i32 %and83, 6
  %or85 = or i32 %shl80, %shl84
  %68 = load i8*, i8** %chp, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %68, i64 2
  %69 = load i8, i8* %arrayidx86, align 1
  %conv87 = zext i8 %69 to i32
  %and88 = and i32 %conv87, 63
  %or89 = or i32 %or85, %and88
  br label %cond.end.92

cond.false.90:                                    ; preds = %cond.false.71
  %70 = load i8*, i8** %chp, align 8
  %call91 = call i32 @string_char(i8* %70, i8** null, i32* %chlen)
  br label %cond.end.92

cond.end.92:                                      ; preds = %cond.false.90, %cond.true.76
  %cond93 = phi i32 [ %or89, %cond.true.76 ], [ %call91, %cond.false.90 ]
  br label %cond.end.94

cond.end.94:                                      ; preds = %cond.end.92, %cond.true.58
  %cond95 = phi i32 [ %add70, %cond.true.58 ], [ %cond93, %cond.end.92 ]
  br label %cond.end.96

cond.end.96:                                      ; preds = %cond.end.94, %cond.true.50
  %cond97 = phi i32 [ %conv52, %cond.true.50 ], [ %cond95, %cond.end.94 ]
  store i32 %cond97, i32* %c, align 4
  %71 = load i32, i32* %chlen, align 4
  %conv98 = sext i32 %71 to i64
  %72 = load i64, i64* %bytepos.addr, align 8
  %add99 = add nsw i64 %72, %conv98
  store i64 %add99, i64* %bytepos.addr, align 8
  br label %if.end.104

if.else.100:                                      ; preds = %do.body
  %73 = load i64, i64* %string.addr, align 8
  %74 = load i64, i64* %bytepos.addr, align 8
  %call101 = call zeroext i8 @SREF(i64 %73, i64 %74)
  %conv102 = zext i8 %call101 to i32
  store i32 %conv102, i32* %c, align 4
  %75 = load i64, i64* %bytepos.addr, align 8
  %inc103 = add nsw i64 %75, 1
  store i64 %inc103, i64* %bytepos.addr, align 8
  br label %if.end.104

if.end.104:                                       ; preds = %if.else.100, %cond.end.96
  br label %do.end

do.end:                                           ; preds = %if.end.104
  br label %if.end.201

if.else.105:                                      ; preds = %while.body
  br label %do.body.106

do.body.106:                                      ; preds = %if.else.105
  %76 = load i64, i64* %charpos.addr, align 8
  %inc107 = add nsw i64 %76, 1
  store i64 %inc107, i64* %charpos.addr, align 8
  %77 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_108 = getelementptr inbounds %struct.buffer, %struct.buffer* %77, i32 0, i32 39
  %78 = load i64, i64* %enable_multibyte_characters_108, align 8
  %call109 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp110 = icmp eq i64 %78, %call109
  br i1 %cmp110, label %if.else.181, label %if.then.112

if.then.112:                                      ; preds = %do.body.106
  %79 = load i64, i64* %bytepos.addr, align 8
  %80 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %80, i32 0, i32 73
  %81 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %gpt_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %81, i32 0, i32 3
  %82 = load i64, i64* %gpt_byte, align 8
  %cmp114 = icmp sge i64 %79, %82
  br i1 %cmp114, label %cond.true.116, label %cond.false.118

cond.true.116:                                    ; preds = %if.then.112
  %83 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text117 = getelementptr inbounds %struct.buffer, %struct.buffer* %83, i32 0, i32 73
  %84 = load %struct.buffer_text*, %struct.buffer_text** %text117, align 8
  %gap_size = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %84, i32 0, i32 5
  %85 = load i64, i64* %gap_size, align 8
  br label %cond.end.119

cond.false.118:                                   ; preds = %if.then.112
  br label %cond.end.119

cond.end.119:                                     ; preds = %cond.false.118, %cond.true.116
  %cond120 = phi i64 [ %85, %cond.true.116 ], [ 0, %cond.false.118 ]
  %86 = load i64, i64* %bytepos.addr, align 8
  %add121 = add nsw i64 %cond120, %86
  %87 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text122 = getelementptr inbounds %struct.buffer, %struct.buffer* %87, i32 0, i32 73
  %88 = load %struct.buffer_text*, %struct.buffer_text** %text122, align 8
  %beg = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %88, i32 0, i32 0
  %89 = load i8*, i8** %beg, align 8
  %add.ptr = getelementptr inbounds i8, i8* %89, i64 %add121
  %add.ptr123 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8* %add.ptr123, i8** %chp113, align 8
  %90 = load i8*, i8** %chp113, align 8
  %arrayidx125 = getelementptr inbounds i8, i8* %90, i64 0
  %91 = load i8, i8* %arrayidx125, align 1
  %conv126 = zext i8 %91 to i32
  %and127 = and i32 %conv126, 128
  %tobool128 = icmp ne i32 %and127, 0
  br i1 %tobool128, label %cond.false.132, label %cond.true.129

cond.true.129:                                    ; preds = %cond.end.119
  store i32 1, i32* %chlen124, align 4
  %92 = load i8*, i8** %chp113, align 8
  %arrayidx130 = getelementptr inbounds i8, i8* %92, i64 0
  %93 = load i8, i8* %arrayidx130, align 1
  %conv131 = zext i8 %93 to i32
  br label %cond.end.177

cond.false.132:                                   ; preds = %cond.end.119
  %94 = load i8*, i8** %chp113, align 8
  %arrayidx133 = getelementptr inbounds i8, i8* %94, i64 0
  %95 = load i8, i8* %arrayidx133, align 1
  %conv134 = zext i8 %95 to i32
  %and135 = and i32 %conv134, 32
  %tobool136 = icmp ne i32 %and135, 0
  br i1 %tobool136, label %cond.false.152, label %cond.true.137

cond.true.137:                                    ; preds = %cond.false.132
  store i32 2, i32* %chlen124, align 4
  %96 = load i8*, i8** %chp113, align 8
  %arrayidx138 = getelementptr inbounds i8, i8* %96, i64 0
  %97 = load i8, i8* %arrayidx138, align 1
  %conv139 = zext i8 %97 to i32
  %and140 = and i32 %conv139, 31
  %shl141 = shl i32 %and140, 6
  %98 = load i8*, i8** %chp113, align 8
  %arrayidx142 = getelementptr inbounds i8, i8* %98, i64 1
  %99 = load i8, i8* %arrayidx142, align 1
  %conv143 = zext i8 %99 to i32
  %and144 = and i32 %conv143, 63
  %or145 = or i32 %shl141, %and144
  %100 = load i8*, i8** %chp113, align 8
  %arrayidx146 = getelementptr inbounds i8, i8* %100, i64 0
  %101 = load i8, i8* %arrayidx146, align 1
  %conv147 = zext i8 %101 to i32
  %cmp148 = icmp slt i32 %conv147, 194
  %cond150 = select i1 %cmp148, i32 4194176, i32 0
  %add151 = add nsw i32 %or145, %cond150
  br label %cond.end.175

cond.false.152:                                   ; preds = %cond.false.132
  %102 = load i8*, i8** %chp113, align 8
  %arrayidx153 = getelementptr inbounds i8, i8* %102, i64 0
  %103 = load i8, i8* %arrayidx153, align 1
  %conv154 = zext i8 %103 to i32
  %and155 = and i32 %conv154, 16
  %tobool156 = icmp ne i32 %and155, 0
  br i1 %tobool156, label %cond.false.171, label %cond.true.157

cond.true.157:                                    ; preds = %cond.false.152
  store i32 3, i32* %chlen124, align 4
  %104 = load i8*, i8** %chp113, align 8
  %arrayidx158 = getelementptr inbounds i8, i8* %104, i64 0
  %105 = load i8, i8* %arrayidx158, align 1
  %conv159 = zext i8 %105 to i32
  %and160 = and i32 %conv159, 15
  %shl161 = shl i32 %and160, 12
  %106 = load i8*, i8** %chp113, align 8
  %arrayidx162 = getelementptr inbounds i8, i8* %106, i64 1
  %107 = load i8, i8* %arrayidx162, align 1
  %conv163 = zext i8 %107 to i32
  %and164 = and i32 %conv163, 63
  %shl165 = shl i32 %and164, 6
  %or166 = or i32 %shl161, %shl165
  %108 = load i8*, i8** %chp113, align 8
  %arrayidx167 = getelementptr inbounds i8, i8* %108, i64 2
  %109 = load i8, i8* %arrayidx167, align 1
  %conv168 = zext i8 %109 to i32
  %and169 = and i32 %conv168, 63
  %or170 = or i32 %or166, %and169
  br label %cond.end.173

cond.false.171:                                   ; preds = %cond.false.152
  %110 = load i8*, i8** %chp113, align 8
  %call172 = call i32 @string_char(i8* %110, i8** null, i32* %chlen124)
  br label %cond.end.173

cond.end.173:                                     ; preds = %cond.false.171, %cond.true.157
  %cond174 = phi i32 [ %or170, %cond.true.157 ], [ %call172, %cond.false.171 ]
  br label %cond.end.175

cond.end.175:                                     ; preds = %cond.end.173, %cond.true.137
  %cond176 = phi i32 [ %add151, %cond.true.137 ], [ %cond174, %cond.end.173 ]
  br label %cond.end.177

cond.end.177:                                     ; preds = %cond.end.175, %cond.true.129
  %cond178 = phi i32 [ %conv131, %cond.true.129 ], [ %cond176, %cond.end.175 ]
  store i32 %cond178, i32* %c, align 4
  %111 = load i32, i32* %chlen124, align 4
  %conv179 = sext i32 %111 to i64
  %112 = load i64, i64* %bytepos.addr, align 8
  %add180 = add nsw i64 %112, %conv179
  store i64 %add180, i64* %bytepos.addr, align 8
  br label %if.end.199

if.else.181:                                      ; preds = %do.body.106
  %113 = load i64, i64* %bytepos.addr, align 8
  %114 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text182 = getelementptr inbounds %struct.buffer, %struct.buffer* %114, i32 0, i32 73
  %115 = load %struct.buffer_text*, %struct.buffer_text** %text182, align 8
  %gpt_byte183 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %115, i32 0, i32 3
  %116 = load i64, i64* %gpt_byte183, align 8
  %cmp184 = icmp sge i64 %113, %116
  br i1 %cmp184, label %cond.true.186, label %cond.false.189

cond.true.186:                                    ; preds = %if.else.181
  %117 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text187 = getelementptr inbounds %struct.buffer, %struct.buffer* %117, i32 0, i32 73
  %118 = load %struct.buffer_text*, %struct.buffer_text** %text187, align 8
  %gap_size188 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %118, i32 0, i32 5
  %119 = load i64, i64* %gap_size188, align 8
  br label %cond.end.190

cond.false.189:                                   ; preds = %if.else.181
  br label %cond.end.190

cond.end.190:                                     ; preds = %cond.false.189, %cond.true.186
  %cond191 = phi i64 [ %119, %cond.true.186 ], [ 0, %cond.false.189 ]
  %120 = load i64, i64* %bytepos.addr, align 8
  %add192 = add nsw i64 %cond191, %120
  %121 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text193 = getelementptr inbounds %struct.buffer, %struct.buffer* %121, i32 0, i32 73
  %122 = load %struct.buffer_text*, %struct.buffer_text** %text193, align 8
  %beg194 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %122, i32 0, i32 0
  %123 = load i8*, i8** %beg194, align 8
  %add.ptr195 = getelementptr inbounds i8, i8* %123, i64 %add192
  %add.ptr196 = getelementptr inbounds i8, i8* %add.ptr195, i64 -1
  %124 = load i8, i8* %add.ptr196, align 1
  %conv197 = zext i8 %124 to i32
  store i32 %conv197, i32* %c, align 4
  %125 = load i64, i64* %bytepos.addr, align 8
  %inc198 = add nsw i64 %125, 1
  store i64 %inc198, i64* %bytepos.addr, align 8
  br label %if.end.199

if.end.199:                                       ; preds = %cond.end.190, %cond.end.177
  br label %do.end.200

do.end.200:                                       ; preds = %if.end.199
  br label %if.end.201

if.end.201:                                       ; preds = %do.end.200, %do.end
  %126 = load i32, i32* %c, align 4
  %cmp202 = icmp eq i32 %126, 10
  br i1 %cmp202, label %if.then.204, label %if.end.206

if.then.204:                                      ; preds = %if.end.201
  %127 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %ch205 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %127, i32 0, i32 2
  store i32 -2, i32* %ch205, align 4
  br label %while.end

if.end.206:                                       ; preds = %if.end.201
  %128 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 46), align 8
  %129 = load i32, i32* %c, align 4
  %call207 = call i64 @CHAR_TABLE_REF(i64 %128, i32 %129)
  store i64 %call207, i64* %val, align 8
  %130 = load i64, i64* %val, align 8
  %call208 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp209 = icmp eq i64 %130, %call208
  br i1 %cmp209, label %if.end.244, label %if.then.211

if.then.211:                                      ; preds = %if.end.206
  store i32 0, i32* %ridx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.211
  %131 = load i64, i64* %val, align 8
  %and212 = and i64 %131, 7
  %conv213 = trunc i64 %and212 to i32
  %cmp214 = icmp eq i32 %conv213, 3
  br i1 %cmp214, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %132 = load i64, i64* %val, align 8
  %sub216 = sub nsw i64 %132, 3
  %133 = inttoptr i64 %sub216 to i8*
  %134 = bitcast i8* %133 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %134, i32 0, i32 0
  %135 = load i64, i64* %car, align 8
  store i64 %135, i64* %elt, align 8
  %136 = load i64, i64* %elt, align 8
  %call217 = call zeroext i1 @VECTORP(i64 %136)
  br i1 %call217, label %land.lhs.true.219, label %if.end.241

land.lhs.true.219:                                ; preds = %for.body
  %137 = load i64, i64* %elt, align 8
  %call220 = call i64 @ASIZE(i64 %137)
  %cmp221 = icmp eq i64 %call220, 3
  br i1 %cmp221, label %land.lhs.true.223, label %if.end.241

land.lhs.true.223:                                ; preds = %land.lhs.true.219
  %138 = load i64, i64* %elt, align 8
  %call224 = call i64 @AREF(i64 %138, i64 1)
  %call225 = call zeroext i1 @NATNUMP(i64 %call224)
  br i1 %call225, label %land.lhs.true.227, label %if.end.241

land.lhs.true.227:                                ; preds = %land.lhs.true.223
  %139 = load i64, i64* %charpos.addr, align 8
  %sub228 = sub nsw i64 %139, 1
  %140 = load i64, i64* %elt, align 8
  %call229 = call i64 @AREF(i64 %140, i64 1)
  %shr = ashr i64 %call229, 2
  %sub230 = sub nsw i64 %sub228, %shr
  %141 = load i64, i64* %start, align 8
  %cmp231 = icmp sge i64 %sub230, %141
  br i1 %cmp231, label %if.then.233, label %if.end.241

if.then.233:                                      ; preds = %land.lhs.true.227
  %142 = load i32, i32* %ridx, align 4
  %143 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %rule_idx = getelementptr inbounds %struct.composition_it, %struct.composition_it* %143, i32 0, i32 3
  store i32 %142, i32* %rule_idx, align 4
  %144 = load i64, i64* %elt, align 8
  %call234 = call i64 @AREF(i64 %144, i64 1)
  %shr235 = ashr i64 %call234, 2
  %145 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %lookback = getelementptr inbounds %struct.composition_it, %struct.composition_it* %145, i32 0, i32 4
  store i64 %shr235, i64* %lookback, align 8
  %146 = load i64, i64* %charpos.addr, align 8
  %sub236 = sub nsw i64 %146, 1
  %147 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %lookback237 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %147, i32 0, i32 4
  %148 = load i64, i64* %lookback237, align 8
  %sub238 = sub nsw i64 %sub236, %148
  %149 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %stop_pos239 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %149, i32 0, i32 0
  store i64 %sub238, i64* %stop_pos239, align 8
  %150 = load i32, i32* %c, align 4
  %151 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %ch240 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %151, i32 0, i32 2
  store i32 %150, i32* %ch240, align 4
  br label %return

if.end.241:                                       ; preds = %land.lhs.true.227, %land.lhs.true.223, %land.lhs.true.219, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.241
  %152 = load i64, i64* %val, align 8
  %sub242 = sub nsw i64 %152, 3
  %153 = inttoptr i64 %sub242 to i8*
  %154 = bitcast i8* %153 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %154, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %155 = load i64, i64* %cdr, align 8
  store i64 %155, i64* %val, align 8
  %156 = load i32, i32* %ridx, align 4
  %inc243 = add nsw i32 %156, 1
  store i32 %inc243, i32* %ridx, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.244

if.end.244:                                       ; preds = %for.end, %if.end.206
  br label %while.cond

while.end:                                        ; preds = %if.then.204, %while.cond
  %157 = load i64, i64* %charpos.addr, align 8
  %158 = load i64, i64* %endpos.addr, align 8
  %cmp245 = icmp eq i64 %157, %158
  br i1 %cmp245, label %land.lhs.true.247, label %if.end.260

land.lhs.true.247:                                ; preds = %while.end
  %159 = load i64, i64* %string.addr, align 8
  %call248 = call zeroext i1 @STRINGP(i64 %159)
  br i1 %call248, label %land.lhs.true.250, label %if.then.254

land.lhs.true.250:                                ; preds = %land.lhs.true.247
  %160 = load i64, i64* %endpos.addr, align 8
  %161 = load i64, i64* %string.addr, align 8
  %call251 = call i64 @SCHARS(i64 %161)
  %cmp252 = icmp eq i64 %160, %call251
  br i1 %cmp252, label %if.end.260, label %if.then.254

if.then.254:                                      ; preds = %land.lhs.true.250, %land.lhs.true.247
  %162 = load i64, i64* %endpos.addr, align 8
  %sub255 = sub nsw i64 %162, 3
  store i64 %sub255, i64* %charpos.addr, align 8
  %163 = load i64, i64* %charpos.addr, align 8
  %164 = load i64, i64* %start, align 8
  %cmp256 = icmp slt i64 %163, %164
  br i1 %cmp256, label %if.then.258, label %if.end.259

if.then.258:                                      ; preds = %if.then.254
  %165 = load i64, i64* %start, align 8
  store i64 %165, i64* %charpos.addr, align 8
  br label %if.end.259

if.end.259:                                       ; preds = %if.then.258, %if.then.254
  br label %if.end.260

if.end.260:                                       ; preds = %if.end.259, %land.lhs.true.250, %while.end
  br label %if.end.725

if.else.261:                                      ; preds = %if.end.40
  %166 = load i64, i64* %charpos.addr, align 8
  %167 = load i64, i64* %endpos.addr, align 8
  %cmp262 = icmp sgt i64 %166, %167
  br i1 %cmp262, label %if.then.264, label %if.end.724

if.then.264:                                      ; preds = %if.else.261
  %168 = load i64, i64* %string.addr, align 8
  %call265 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp266 = icmp eq i64 %168, %call265
  br i1 %cmp266, label %if.then.268, label %if.else.284

if.then.268:                                      ; preds = %if.then.264
  %169 = load i64, i64* %bytepos.addr, align 8
  %170 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text269 = getelementptr inbounds %struct.buffer, %struct.buffer* %170, i32 0, i32 73
  %171 = load %struct.buffer_text*, %struct.buffer_text** %text269, align 8
  %gpt_byte270 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %171, i32 0, i32 3
  %172 = load i64, i64* %gpt_byte270, align 8
  %cmp271 = icmp sge i64 %169, %172
  br i1 %cmp271, label %cond.true.273, label %cond.false.276

cond.true.273:                                    ; preds = %if.then.268
  %173 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text274 = getelementptr inbounds %struct.buffer, %struct.buffer* %173, i32 0, i32 73
  %174 = load %struct.buffer_text*, %struct.buffer_text** %text274, align 8
  %gap_size275 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %174, i32 0, i32 5
  %175 = load i64, i64* %gap_size275, align 8
  br label %cond.end.277

cond.false.276:                                   ; preds = %if.then.268
  br label %cond.end.277

cond.end.277:                                     ; preds = %cond.false.276, %cond.true.273
  %cond278 = phi i64 [ %175, %cond.true.273 ], [ 0, %cond.false.276 ]
  %176 = load i64, i64* %bytepos.addr, align 8
  %add279 = add nsw i64 %cond278, %176
  %177 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text280 = getelementptr inbounds %struct.buffer, %struct.buffer* %177, i32 0, i32 73
  %178 = load %struct.buffer_text*, %struct.buffer_text** %text280, align 8
  %beg281 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %178, i32 0, i32 0
  %179 = load i8*, i8** %beg281, align 8
  %add.ptr282 = getelementptr inbounds i8, i8* %179, i64 %add279
  %add.ptr283 = getelementptr inbounds i8, i8* %add.ptr282, i64 -1
  store i8* %add.ptr283, i8** %p, align 8
  br label %if.end.287

if.else.284:                                      ; preds = %if.then.264
  %180 = load i64, i64* %string.addr, align 8
  %call285 = call i8* @SDATA(i64 %180)
  %181 = load i64, i64* %bytepos.addr, align 8
  %add.ptr286 = getelementptr inbounds i8, i8* %call285, i64 %181
  store i8* %add.ptr286, i8** %p, align 8
  br label %if.end.287

if.end.287:                                       ; preds = %if.else.284, %cond.end.277
  %182 = load i8*, i8** %p, align 8
  %arrayidx288 = getelementptr inbounds i8, i8* %182, i64 0
  %183 = load i8, i8* %arrayidx288, align 1
  %conv289 = zext i8 %183 to i32
  %and290 = and i32 %conv289, 128
  %tobool291 = icmp ne i32 %and290, 0
  br i1 %tobool291, label %cond.false.295, label %cond.true.292

cond.true.292:                                    ; preds = %if.end.287
  store i32 1, i32* %len, align 4
  %184 = load i8*, i8** %p, align 8
  %arrayidx293 = getelementptr inbounds i8, i8* %184, i64 0
  %185 = load i8, i8* %arrayidx293, align 1
  %conv294 = zext i8 %185 to i32
  br label %cond.end.340

cond.false.295:                                   ; preds = %if.end.287
  %186 = load i8*, i8** %p, align 8
  %arrayidx296 = getelementptr inbounds i8, i8* %186, i64 0
  %187 = load i8, i8* %arrayidx296, align 1
  %conv297 = zext i8 %187 to i32
  %and298 = and i32 %conv297, 32
  %tobool299 = icmp ne i32 %and298, 0
  br i1 %tobool299, label %cond.false.315, label %cond.true.300

cond.true.300:                                    ; preds = %cond.false.295
  store i32 2, i32* %len, align 4
  %188 = load i8*, i8** %p, align 8
  %arrayidx301 = getelementptr inbounds i8, i8* %188, i64 0
  %189 = load i8, i8* %arrayidx301, align 1
  %conv302 = zext i8 %189 to i32
  %and303 = and i32 %conv302, 31
  %shl304 = shl i32 %and303, 6
  %190 = load i8*, i8** %p, align 8
  %arrayidx305 = getelementptr inbounds i8, i8* %190, i64 1
  %191 = load i8, i8* %arrayidx305, align 1
  %conv306 = zext i8 %191 to i32
  %and307 = and i32 %conv306, 63
  %or308 = or i32 %shl304, %and307
  %192 = load i8*, i8** %p, align 8
  %arrayidx309 = getelementptr inbounds i8, i8* %192, i64 0
  %193 = load i8, i8* %arrayidx309, align 1
  %conv310 = zext i8 %193 to i32
  %cmp311 = icmp slt i32 %conv310, 194
  %cond313 = select i1 %cmp311, i32 4194176, i32 0
  %add314 = add nsw i32 %or308, %cond313
  br label %cond.end.338

cond.false.315:                                   ; preds = %cond.false.295
  %194 = load i8*, i8** %p, align 8
  %arrayidx316 = getelementptr inbounds i8, i8* %194, i64 0
  %195 = load i8, i8* %arrayidx316, align 1
  %conv317 = zext i8 %195 to i32
  %and318 = and i32 %conv317, 16
  %tobool319 = icmp ne i32 %and318, 0
  br i1 %tobool319, label %cond.false.334, label %cond.true.320

cond.true.320:                                    ; preds = %cond.false.315
  store i32 3, i32* %len, align 4
  %196 = load i8*, i8** %p, align 8
  %arrayidx321 = getelementptr inbounds i8, i8* %196, i64 0
  %197 = load i8, i8* %arrayidx321, align 1
  %conv322 = zext i8 %197 to i32
  %and323 = and i32 %conv322, 15
  %shl324 = shl i32 %and323, 12
  %198 = load i8*, i8** %p, align 8
  %arrayidx325 = getelementptr inbounds i8, i8* %198, i64 1
  %199 = load i8, i8* %arrayidx325, align 1
  %conv326 = zext i8 %199 to i32
  %and327 = and i32 %conv326, 63
  %shl328 = shl i32 %and327, 6
  %or329 = or i32 %shl324, %shl328
  %200 = load i8*, i8** %p, align 8
  %arrayidx330 = getelementptr inbounds i8, i8* %200, i64 2
  %201 = load i8, i8* %arrayidx330, align 1
  %conv331 = zext i8 %201 to i32
  %and332 = and i32 %conv331, 63
  %or333 = or i32 %or329, %and332
  br label %cond.end.336

cond.false.334:                                   ; preds = %cond.false.315
  %202 = load i8*, i8** %p, align 8
  %call335 = call i32 @string_char(i8* %202, i8** null, i32* %len)
  br label %cond.end.336

cond.end.336:                                     ; preds = %cond.false.334, %cond.true.320
  %cond337 = phi i32 [ %or333, %cond.true.320 ], [ %call335, %cond.false.334 ]
  br label %cond.end.338

cond.end.338:                                     ; preds = %cond.end.336, %cond.true.300
  %cond339 = phi i32 [ %add314, %cond.true.300 ], [ %cond337, %cond.end.336 ]
  br label %cond.end.340

cond.end.340:                                     ; preds = %cond.end.338, %cond.true.292
  %cond341 = phi i32 [ %conv294, %cond.true.292 ], [ %cond339, %cond.end.338 ]
  store i32 %cond341, i32* %c, align 4
  %203 = load i64, i64* %bytepos.addr, align 8
  %204 = load i32, i32* %len, align 4
  %conv342 = sext i32 %204 to i64
  %add343 = add nsw i64 %203, %conv342
  store i64 %add343, i64* %limit, align 8
  br label %while.cond.344

while.cond.344:                                   ; preds = %cond.end.583, %cond.end.340
  %205 = load i32, i32* %c, align 4
  %call345 = call zeroext i1 @char_composable_p(i32 %205)
  br i1 %call345, label %while.body.346, label %while.end.585

while.body.346:                                   ; preds = %while.cond.344
  %206 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 46), align 8
  %207 = load i32, i32* %c, align 4
  %call347 = call i64 @CHAR_TABLE_REF(i64 %206, i32 %207)
  store i64 %call347, i64* %val, align 8
  %208 = load i64, i64* %val, align 8
  %call348 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp349 = icmp eq i64 %208, %call348
  br i1 %cmp349, label %if.end.453, label %if.then.351

if.then.351:                                      ; preds = %while.body.346
  store i32 0, i32* %ridx353, align 4
  br label %for.cond.354

for.cond.354:                                     ; preds = %for.inc.447, %if.then.351
  %209 = load i64, i64* %val, align 8
  %and355 = and i64 %209, 7
  %conv356 = trunc i64 %and355 to i32
  %cmp357 = icmp eq i32 %conv356, 3
  br i1 %cmp357, label %for.body.359, label %for.end.452

for.body.359:                                     ; preds = %for.cond.354
  %210 = load i64, i64* %val, align 8
  %sub360 = sub nsw i64 %210, 3
  %211 = inttoptr i64 %sub360 to i8*
  %212 = bitcast i8* %211 to %struct.Lisp_Cons*
  %car361 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %212, i32 0, i32 0
  %213 = load i64, i64* %car361, align 8
  store i64 %213, i64* %elt352, align 8
  %214 = load i64, i64* %elt352, align 8
  %call362 = call zeroext i1 @VECTORP(i64 %214)
  br i1 %call362, label %land.lhs.true.364, label %if.end.446

land.lhs.true.364:                                ; preds = %for.body.359
  %215 = load i64, i64* %elt352, align 8
  %call365 = call i64 @ASIZE(i64 %215)
  %cmp366 = icmp eq i64 %call365, 3
  br i1 %cmp366, label %land.lhs.true.368, label %if.end.446

land.lhs.true.368:                                ; preds = %land.lhs.true.364
  %216 = load i64, i64* %elt352, align 8
  %call369 = call i64 @AREF(i64 %216, i64 1)
  %call370 = call zeroext i1 @NATNUMP(i64 %call369)
  br i1 %call370, label %land.lhs.true.372, label %if.end.446

land.lhs.true.372:                                ; preds = %land.lhs.true.368
  %217 = load i64, i64* %charpos.addr, align 8
  %218 = load i64, i64* %elt352, align 8
  %call373 = call i64 @AREF(i64 %218, i64 1)
  %shr374 = ashr i64 %call373, 2
  %sub375 = sub nsw i64 %217, %shr374
  %219 = load i64, i64* %endpos.addr, align 8
  %cmp376 = icmp sgt i64 %sub375, %219
  br i1 %cmp376, label %if.then.378, label %if.end.446

if.then.378:                                      ; preds = %land.lhs.true.372
  %220 = load i64, i64* %elt352, align 8
  %call379 = call i64 @AREF(i64 %220, i64 1)
  %shr380 = ashr i64 %call379, 2
  store i64 %shr380, i64* %back, align 8
  %221 = load i64, i64* %charpos.addr, align 8
  %222 = load i64, i64* %back, align 8
  %sub381 = sub nsw i64 %221, %222
  store i64 %sub381, i64* %cpos, align 8
  %223 = load i64, i64* %back, align 8
  %cmp382 = icmp eq i64 %223, 0
  br i1 %cmp382, label %if.then.384, label %if.else.385

if.then.384:                                      ; preds = %if.then.378
  %224 = load i64, i64* %bytepos.addr, align 8
  store i64 %224, i64* %bpos, align 8
  br label %if.end.395

if.else.385:                                      ; preds = %if.then.378
  %225 = load i64, i64* %string.addr, align 8
  %call386 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp387 = icmp eq i64 %225, %call386
  br i1 %cmp387, label %cond.true.389, label %cond.false.391

cond.true.389:                                    ; preds = %if.else.385
  %226 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %227 = load i64, i64* %cpos, align 8
  %call390 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %226, i64 %227)
  br label %cond.end.393

cond.false.391:                                   ; preds = %if.else.385
  %228 = load i64, i64* %string.addr, align 8
  %229 = load i64, i64* %cpos, align 8
  %call392 = call i64 @string_char_to_byte(i64 %228, i64 %229)
  br label %cond.end.393

cond.end.393:                                     ; preds = %cond.false.391, %cond.true.389
  %cond394 = phi i64 [ %call390, %cond.true.389 ], [ %call392, %cond.false.391 ]
  store i64 %cond394, i64* %bpos, align 8
  br label %if.end.395

if.end.395:                                       ; preds = %cond.end.393, %if.then.384
  %230 = load i64, i64* %elt352, align 8
  %call396 = call i64 @AREF(i64 %230, i64 0)
  %call397 = call zeroext i1 @STRINGP(i64 %call396)
  br i1 %call397, label %if.then.398, label %if.else.403

if.then.398:                                      ; preds = %if.end.395
  %231 = load i64, i64* %elt352, align 8
  %call399 = call i64 @AREF(i64 %231, i64 0)
  %232 = load i64, i64* %cpos, align 8
  %233 = load i64, i64* %bpos, align 8
  %234 = load i64, i64* %start, align 8
  %add400 = add nsw i64 %234, 1
  %235 = load i64, i64* %limit, align 8
  %236 = load i64, i64* %string.addr, align 8
  %call401 = call i64 @fast_looking_at(i64 %call399, i64 %232, i64 %233, i64 %add400, i64 %235, i64 %236)
  %conv402 = trunc i64 %call401 to i32
  store i32 %conv402, i32* %blen, align 4
  br label %if.end.404

if.else.403:                                      ; preds = %if.end.395
  store i32 1, i32* %blen, align 4
  br label %if.end.404

if.end.404:                                       ; preds = %if.else.403, %if.then.398
  %237 = load i32, i32* %blen, align 4
  %cmp405 = icmp sgt i32 %237, 0
  br i1 %cmp405, label %if.then.407, label %if.end.445

if.then.407:                                      ; preds = %if.end.404
  %238 = load i32, i32* %blen, align 4
  %cmp408 = icmp sgt i32 %238, 1
  br i1 %cmp408, label %if.then.410, label %if.end.423

if.then.410:                                      ; preds = %if.then.407
  %239 = load i32, i32* %blen, align 4
  %conv411 = sext i32 %239 to i64
  %240 = load i64, i64* %bpos, align 8
  %add412 = add nsw i64 %240, %conv411
  store i64 %add412, i64* %bpos, align 8
  %241 = load i64, i64* %string.addr, align 8
  %call413 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp414 = icmp eq i64 %241, %call413
  br i1 %cmp414, label %if.then.416, label %if.else.419

if.then.416:                                      ; preds = %if.then.410
  %242 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %243 = load i64, i64* %bpos, align 8
  %call417 = call i64 @buf_bytepos_to_charpos(%struct.buffer* %242, i64 %243)
  %sub418 = sub nsw i64 %call417, 1
  store i64 %sub418, i64* %cpos, align 8
  br label %if.end.422

if.else.419:                                      ; preds = %if.then.410
  %244 = load i64, i64* %string.addr, align 8
  %245 = load i64, i64* %bpos, align 8
  %call420 = call i64 @string_byte_to_char(i64 %244, i64 %245)
  %sub421 = sub nsw i64 %call420, 1
  store i64 %sub421, i64* %cpos, align 8
  br label %if.end.422

if.end.422:                                       ; preds = %if.else.419, %if.then.416
  br label %if.end.423

if.end.423:                                       ; preds = %if.end.422, %if.then.407
  %246 = load i64, i64* %cpos, align 8
  %247 = load i64, i64* %charpos.addr, align 8
  %248 = load i64, i64* %back, align 8
  %sub424 = sub nsw i64 %247, %248
  %sub425 = sub nsw i64 %246, %sub424
  store i64 %sub425, i64* %back, align 8
  %249 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %stop_pos426 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %249, i32 0, i32 0
  %250 = load i64, i64* %stop_pos426, align 8
  %251 = load i64, i64* %cpos, align 8
  %cmp427 = icmp slt i64 %250, %251
  br i1 %cmp427, label %if.then.437, label %lor.lhs.false.429

lor.lhs.false.429:                                ; preds = %if.end.423
  %252 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %stop_pos430 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %252, i32 0, i32 0
  %253 = load i64, i64* %stop_pos430, align 8
  %254 = load i64, i64* %cpos, align 8
  %cmp431 = icmp eq i64 %253, %254
  br i1 %cmp431, label %land.lhs.true.433, label %if.end.444

land.lhs.true.433:                                ; preds = %lor.lhs.false.429
  %255 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %lookback434 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %255, i32 0, i32 4
  %256 = load i64, i64* %lookback434, align 8
  %257 = load i64, i64* %back, align 8
  %cmp435 = icmp slt i64 %256, %257
  br i1 %cmp435, label %if.then.437, label %if.end.444

if.then.437:                                      ; preds = %land.lhs.true.433, %if.end.423
  %258 = load i32, i32* %ridx353, align 4
  %259 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %rule_idx438 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %259, i32 0, i32 3
  store i32 %258, i32* %rule_idx438, align 4
  %260 = load i64, i64* %cpos, align 8
  %261 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %stop_pos439 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %261, i32 0, i32 0
  store i64 %260, i64* %stop_pos439, align 8
  %262 = load i32, i32* %c, align 4
  %263 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %ch440 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %263, i32 0, i32 2
  store i32 %262, i32* %ch440, align 4
  %264 = load i64, i64* %back, align 8
  %265 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %lookback441 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %265, i32 0, i32 4
  store i64 %264, i64* %lookback441, align 8
  %266 = load i64, i64* %back, align 8
  %add442 = add nsw i64 %266, 1
  %conv443 = trunc i64 %add442 to i32
  %267 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %nchars = getelementptr inbounds %struct.composition_it, %struct.composition_it* %267, i32 0, i32 8
  store i32 %conv443, i32* %nchars, align 4
  br label %if.end.444

if.end.444:                                       ; preds = %if.then.437, %land.lhs.true.433, %lor.lhs.false.429
  br label %if.end.445

if.end.445:                                       ; preds = %if.end.444, %if.end.404
  br label %if.end.446

if.end.446:                                       ; preds = %if.end.445, %land.lhs.true.372, %land.lhs.true.368, %land.lhs.true.364, %for.body.359
  br label %for.inc.447

for.inc.447:                                      ; preds = %if.end.446
  %268 = load i64, i64* %val, align 8
  %sub448 = sub nsw i64 %268, 3
  %269 = inttoptr i64 %sub448 to i8*
  %270 = bitcast i8* %269 to %struct.Lisp_Cons*
  %u449 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %270, i32 0, i32 1
  %cdr450 = bitcast %union.anon* %u449 to i64*
  %271 = load i64, i64* %cdr450, align 8
  store i64 %271, i64* %val, align 8
  %272 = load i32, i32* %ridx353, align 4
  %inc451 = add nsw i32 %272, 1
  store i32 %inc451, i32* %ridx353, align 4
  br label %for.cond.354

for.end.452:                                      ; preds = %for.cond.354
  br label %if.end.453

if.end.453:                                       ; preds = %for.end.452, %while.body.346
  %273 = load i64, i64* %charpos.addr, align 8
  %sub454 = sub nsw i64 %273, 1
  %274 = load i64, i64* %endpos.addr, align 8
  %cmp455 = icmp eq i64 %sub454, %274
  br i1 %cmp455, label %if.then.457, label %if.end.458

if.then.457:                                      ; preds = %if.end.453
  br label %while.end.585

if.end.458:                                       ; preds = %if.end.453
  %275 = load i64, i64* %string.addr, align 8
  %call459 = call zeroext i1 @STRINGP(i64 %275)
  br i1 %call459, label %if.then.460, label %if.else.471

if.then.460:                                      ; preds = %if.end.458
  %276 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %276, i32 -1
  store i8* %incdec.ptr, i8** %p, align 8
  %277 = load i64, i64* %bytepos.addr, align 8
  %dec = add nsw i64 %277, -1
  store i64 %dec, i64* %bytepos.addr, align 8
  br label %while.cond.461

while.cond.461:                                   ; preds = %while.body.466, %if.then.460
  %278 = load i8*, i8** %p, align 8
  %279 = load i8, i8* %278, align 1
  %conv462 = zext i8 %279 to i32
  %and463 = and i32 %conv462, 192
  %cmp464 = icmp ne i32 %and463, 128
  %lnot = xor i1 %cmp464, true
  br i1 %lnot, label %while.body.466, label %while.end.469

while.body.466:                                   ; preds = %while.cond.461
  %280 = load i8*, i8** %p, align 8
  %incdec.ptr467 = getelementptr inbounds i8, i8* %280, i32 -1
  store i8* %incdec.ptr467, i8** %p, align 8
  %281 = load i64, i64* %bytepos.addr, align 8
  %dec468 = add nsw i64 %281, -1
  store i64 %dec468, i64* %bytepos.addr, align 8
  br label %while.cond.461

while.end.469:                                    ; preds = %while.cond.461
  %282 = load i64, i64* %charpos.addr, align 8
  %dec470 = add nsw i64 %282, -1
  store i64 %dec470, i64* %charpos.addr, align 8
  br label %if.end.530

if.else.471:                                      ; preds = %if.end.458
  br label %do.body.472

do.body.472:                                      ; preds = %if.else.471
  %283 = load i64, i64* %charpos.addr, align 8
  %dec473 = add nsw i64 %283, -1
  store i64 %dec473, i64* %charpos.addr, align 8
  %284 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_474 = getelementptr inbounds %struct.buffer, %struct.buffer* %284, i32 0, i32 39
  %285 = load i64, i64* %enable_multibyte_characters_474, align 8
  %call475 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp476 = icmp eq i64 %285, %call475
  br i1 %cmp476, label %if.then.478, label %if.else.480

if.then.478:                                      ; preds = %do.body.472
  %286 = load i64, i64* %bytepos.addr, align 8
  %dec479 = add nsw i64 %286, -1
  store i64 %dec479, i64* %bytepos.addr, align 8
  br label %if.end.513

if.else.480:                                      ; preds = %do.body.472
  br label %do.body.481

do.body.481:                                      ; preds = %if.else.480
  %287 = load i64, i64* %bytepos.addr, align 8
  %dec483 = add nsw i64 %287, -1
  store i64 %dec483, i64* %bytepos.addr, align 8
  %288 = load i64, i64* %bytepos.addr, align 8
  %289 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text484 = getelementptr inbounds %struct.buffer, %struct.buffer* %289, i32 0, i32 73
  %290 = load %struct.buffer_text*, %struct.buffer_text** %text484, align 8
  %gpt_byte485 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %290, i32 0, i32 3
  %291 = load i64, i64* %gpt_byte485, align 8
  %cmp486 = icmp slt i64 %288, %291
  br i1 %cmp486, label %if.then.488, label %if.else.493

if.then.488:                                      ; preds = %do.body.481
  %292 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text489 = getelementptr inbounds %struct.buffer, %struct.buffer* %292, i32 0, i32 73
  %293 = load %struct.buffer_text*, %struct.buffer_text** %text489, align 8
  %beg490 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %293, i32 0, i32 0
  %294 = load i8*, i8** %beg490, align 8
  %295 = load i64, i64* %bytepos.addr, align 8
  %add.ptr491 = getelementptr inbounds i8, i8* %294, i64 %295
  %add.ptr492 = getelementptr inbounds i8, i8* %add.ptr491, i64 -1
  store i8* %add.ptr492, i8** %chp482, align 8
  br label %if.end.501

if.else.493:                                      ; preds = %do.body.481
  %296 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text494 = getelementptr inbounds %struct.buffer, %struct.buffer* %296, i32 0, i32 73
  %297 = load %struct.buffer_text*, %struct.buffer_text** %text494, align 8
  %beg495 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %297, i32 0, i32 0
  %298 = load i8*, i8** %beg495, align 8
  %299 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text496 = getelementptr inbounds %struct.buffer, %struct.buffer* %299, i32 0, i32 73
  %300 = load %struct.buffer_text*, %struct.buffer_text** %text496, align 8
  %gap_size497 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %300, i32 0, i32 5
  %301 = load i64, i64* %gap_size497, align 8
  %add.ptr498 = getelementptr inbounds i8, i8* %298, i64 %301
  %302 = load i64, i64* %bytepos.addr, align 8
  %add.ptr499 = getelementptr inbounds i8, i8* %add.ptr498, i64 %302
  %add.ptr500 = getelementptr inbounds i8, i8* %add.ptr499, i64 -1
  store i8* %add.ptr500, i8** %chp482, align 8
  br label %if.end.501

if.end.501:                                       ; preds = %if.else.493, %if.then.488
  br label %while.cond.502

while.cond.502:                                   ; preds = %while.body.508, %if.end.501
  %303 = load i8*, i8** %chp482, align 8
  %304 = load i8, i8* %303, align 1
  %conv503 = zext i8 %304 to i32
  %and504 = and i32 %conv503, 192
  %cmp505 = icmp ne i32 %and504, 128
  %lnot507 = xor i1 %cmp505, true
  br i1 %lnot507, label %while.body.508, label %while.end.511

while.body.508:                                   ; preds = %while.cond.502
  %305 = load i8*, i8** %chp482, align 8
  %incdec.ptr509 = getelementptr inbounds i8, i8* %305, i32 -1
  store i8* %incdec.ptr509, i8** %chp482, align 8
  %306 = load i64, i64* %bytepos.addr, align 8
  %dec510 = add nsw i64 %306, -1
  store i64 %dec510, i64* %bytepos.addr, align 8
  br label %while.cond.502

while.end.511:                                    ; preds = %while.cond.502
  br label %do.end.512

do.end.512:                                       ; preds = %while.end.511
  br label %if.end.513

if.end.513:                                       ; preds = %do.end.512, %if.then.478
  br label %do.end.514

do.end.514:                                       ; preds = %if.end.513
  %307 = load i64, i64* %bytepos.addr, align 8
  %308 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text515 = getelementptr inbounds %struct.buffer, %struct.buffer* %308, i32 0, i32 73
  %309 = load %struct.buffer_text*, %struct.buffer_text** %text515, align 8
  %gpt_byte516 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %309, i32 0, i32 3
  %310 = load i64, i64* %gpt_byte516, align 8
  %cmp517 = icmp sge i64 %307, %310
  br i1 %cmp517, label %cond.true.519, label %cond.false.522

cond.true.519:                                    ; preds = %do.end.514
  %311 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text520 = getelementptr inbounds %struct.buffer, %struct.buffer* %311, i32 0, i32 73
  %312 = load %struct.buffer_text*, %struct.buffer_text** %text520, align 8
  %gap_size521 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %312, i32 0, i32 5
  %313 = load i64, i64* %gap_size521, align 8
  br label %cond.end.523

cond.false.522:                                   ; preds = %do.end.514
  br label %cond.end.523

cond.end.523:                                     ; preds = %cond.false.522, %cond.true.519
  %cond524 = phi i64 [ %313, %cond.true.519 ], [ 0, %cond.false.522 ]
  %314 = load i64, i64* %bytepos.addr, align 8
  %add525 = add nsw i64 %cond524, %314
  %315 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text526 = getelementptr inbounds %struct.buffer, %struct.buffer* %315, i32 0, i32 73
  %316 = load %struct.buffer_text*, %struct.buffer_text** %text526, align 8
  %beg527 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %316, i32 0, i32 0
  %317 = load i8*, i8** %beg527, align 8
  %add.ptr528 = getelementptr inbounds i8, i8* %317, i64 %add525
  %add.ptr529 = getelementptr inbounds i8, i8* %add.ptr528, i64 -1
  store i8* %add.ptr529, i8** %p, align 8
  br label %if.end.530

if.end.530:                                       ; preds = %cond.end.523, %while.end.469
  %318 = load i8*, i8** %p, align 8
  %arrayidx531 = getelementptr inbounds i8, i8* %318, i64 0
  %319 = load i8, i8* %arrayidx531, align 1
  %conv532 = zext i8 %319 to i32
  %and533 = and i32 %conv532, 128
  %tobool534 = icmp ne i32 %and533, 0
  br i1 %tobool534, label %cond.false.538, label %cond.true.535

cond.true.535:                                    ; preds = %if.end.530
  %320 = load i8*, i8** %p, align 8
  %arrayidx536 = getelementptr inbounds i8, i8* %320, i64 0
  %321 = load i8, i8* %arrayidx536, align 1
  %conv537 = zext i8 %321 to i32
  br label %cond.end.583

cond.false.538:                                   ; preds = %if.end.530
  %322 = load i8*, i8** %p, align 8
  %arrayidx539 = getelementptr inbounds i8, i8* %322, i64 0
  %323 = load i8, i8* %arrayidx539, align 1
  %conv540 = zext i8 %323 to i32
  %and541 = and i32 %conv540, 32
  %tobool542 = icmp ne i32 %and541, 0
  br i1 %tobool542, label %cond.false.558, label %cond.true.543

cond.true.543:                                    ; preds = %cond.false.538
  %324 = load i8*, i8** %p, align 8
  %arrayidx544 = getelementptr inbounds i8, i8* %324, i64 0
  %325 = load i8, i8* %arrayidx544, align 1
  %conv545 = zext i8 %325 to i32
  %and546 = and i32 %conv545, 31
  %shl547 = shl i32 %and546, 6
  %326 = load i8*, i8** %p, align 8
  %arrayidx548 = getelementptr inbounds i8, i8* %326, i64 1
  %327 = load i8, i8* %arrayidx548, align 1
  %conv549 = zext i8 %327 to i32
  %and550 = and i32 %conv549, 63
  %or551 = or i32 %shl547, %and550
  %328 = load i8*, i8** %p, align 8
  %arrayidx552 = getelementptr inbounds i8, i8* %328, i64 0
  %329 = load i8, i8* %arrayidx552, align 1
  %conv553 = zext i8 %329 to i32
  %cmp554 = icmp slt i32 %conv553, 194
  %cond556 = select i1 %cmp554, i32 4194176, i32 0
  %add557 = add nsw i32 %or551, %cond556
  br label %cond.end.581

cond.false.558:                                   ; preds = %cond.false.538
  %330 = load i8*, i8** %p, align 8
  %arrayidx559 = getelementptr inbounds i8, i8* %330, i64 0
  %331 = load i8, i8* %arrayidx559, align 1
  %conv560 = zext i8 %331 to i32
  %and561 = and i32 %conv560, 16
  %tobool562 = icmp ne i32 %and561, 0
  br i1 %tobool562, label %cond.false.577, label %cond.true.563

cond.true.563:                                    ; preds = %cond.false.558
  %332 = load i8*, i8** %p, align 8
  %arrayidx564 = getelementptr inbounds i8, i8* %332, i64 0
  %333 = load i8, i8* %arrayidx564, align 1
  %conv565 = zext i8 %333 to i32
  %and566 = and i32 %conv565, 15
  %shl567 = shl i32 %and566, 12
  %334 = load i8*, i8** %p, align 8
  %arrayidx568 = getelementptr inbounds i8, i8* %334, i64 1
  %335 = load i8, i8* %arrayidx568, align 1
  %conv569 = zext i8 %335 to i32
  %and570 = and i32 %conv569, 63
  %shl571 = shl i32 %and570, 6
  %or572 = or i32 %shl567, %shl571
  %336 = load i8*, i8** %p, align 8
  %arrayidx573 = getelementptr inbounds i8, i8* %336, i64 2
  %337 = load i8, i8* %arrayidx573, align 1
  %conv574 = zext i8 %337 to i32
  %and575 = and i32 %conv574, 63
  %or576 = or i32 %or572, %and575
  br label %cond.end.579

cond.false.577:                                   ; preds = %cond.false.558
  %338 = load i8*, i8** %p, align 8
  %call578 = call i32 @string_char(i8* %338, i8** null, i32* null)
  br label %cond.end.579

cond.end.579:                                     ; preds = %cond.false.577, %cond.true.563
  %cond580 = phi i32 [ %or576, %cond.true.563 ], [ %call578, %cond.false.577 ]
  br label %cond.end.581

cond.end.581:                                     ; preds = %cond.end.579, %cond.true.543
  %cond582 = phi i32 [ %add557, %cond.true.543 ], [ %cond580, %cond.end.579 ]
  br label %cond.end.583

cond.end.583:                                     ; preds = %cond.end.581, %cond.true.535
  %cond584 = phi i32 [ %conv537, %cond.true.535 ], [ %cond582, %cond.end.581 ]
  store i32 %cond584, i32* %c, align 4
  br label %while.cond.344

while.end.585:                                    ; preds = %if.then.457, %while.cond.344
  %339 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %ch586 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %339, i32 0, i32 2
  %340 = load i32, i32* %ch586, align 4
  %cmp587 = icmp sge i32 %340, 0
  br i1 %cmp587, label %if.then.589, label %if.end.590

if.then.589:                                      ; preds = %while.end.585
  br label %return

if.end.590:                                       ; preds = %while.end.585
  %341 = load i64, i64* %string.addr, align 8
  %call591 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp592 = icmp eq i64 %341, %call591
  br i1 %cmp592, label %if.then.594, label %if.else.647

if.then.594:                                      ; preds = %if.end.590
  br label %while.cond.595

while.cond.595:                                   ; preds = %do.end.644, %if.then.594
  %342 = load i64, i64* %charpos.addr, align 8
  %sub596 = sub nsw i64 %342, 1
  %343 = load i64, i64* %endpos.addr, align 8
  %cmp597 = icmp sgt i64 %sub596, %343
  br i1 %cmp597, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.595
  %344 = load i32, i32* %c, align 4
  %call599 = call zeroext i1 @char_composable_p(i32 %344)
  %lnot600 = xor i1 %call599, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.595
  %345 = phi i1 [ false, %while.cond.595 ], [ %lnot600, %land.rhs ]
  br i1 %345, label %while.body.601, label %while.end.646

while.body.601:                                   ; preds = %land.end
  br label %do.body.602

do.body.602:                                      ; preds = %while.body.601
  %346 = load i64, i64* %charpos.addr, align 8
  %dec603 = add nsw i64 %346, -1
  store i64 %dec603, i64* %charpos.addr, align 8
  %347 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_604 = getelementptr inbounds %struct.buffer, %struct.buffer* %347, i32 0, i32 39
  %348 = load i64, i64* %enable_multibyte_characters_604, align 8
  %call605 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp606 = icmp eq i64 %348, %call605
  br i1 %cmp606, label %if.then.608, label %if.else.610

if.then.608:                                      ; preds = %do.body.602
  %349 = load i64, i64* %bytepos.addr, align 8
  %dec609 = add nsw i64 %349, -1
  store i64 %dec609, i64* %bytepos.addr, align 8
  br label %if.end.643

if.else.610:                                      ; preds = %do.body.602
  br label %do.body.611

do.body.611:                                      ; preds = %if.else.610
  %350 = load i64, i64* %bytepos.addr, align 8
  %dec613 = add nsw i64 %350, -1
  store i64 %dec613, i64* %bytepos.addr, align 8
  %351 = load i64, i64* %bytepos.addr, align 8
  %352 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text614 = getelementptr inbounds %struct.buffer, %struct.buffer* %352, i32 0, i32 73
  %353 = load %struct.buffer_text*, %struct.buffer_text** %text614, align 8
  %gpt_byte615 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %353, i32 0, i32 3
  %354 = load i64, i64* %gpt_byte615, align 8
  %cmp616 = icmp slt i64 %351, %354
  br i1 %cmp616, label %if.then.618, label %if.else.623

if.then.618:                                      ; preds = %do.body.611
  %355 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text619 = getelementptr inbounds %struct.buffer, %struct.buffer* %355, i32 0, i32 73
  %356 = load %struct.buffer_text*, %struct.buffer_text** %text619, align 8
  %beg620 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %356, i32 0, i32 0
  %357 = load i8*, i8** %beg620, align 8
  %358 = load i64, i64* %bytepos.addr, align 8
  %add.ptr621 = getelementptr inbounds i8, i8* %357, i64 %358
  %add.ptr622 = getelementptr inbounds i8, i8* %add.ptr621, i64 -1
  store i8* %add.ptr622, i8** %chp612, align 8
  br label %if.end.631

if.else.623:                                      ; preds = %do.body.611
  %359 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text624 = getelementptr inbounds %struct.buffer, %struct.buffer* %359, i32 0, i32 73
  %360 = load %struct.buffer_text*, %struct.buffer_text** %text624, align 8
  %beg625 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %360, i32 0, i32 0
  %361 = load i8*, i8** %beg625, align 8
  %362 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text626 = getelementptr inbounds %struct.buffer, %struct.buffer* %362, i32 0, i32 73
  %363 = load %struct.buffer_text*, %struct.buffer_text** %text626, align 8
  %gap_size627 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %363, i32 0, i32 5
  %364 = load i64, i64* %gap_size627, align 8
  %add.ptr628 = getelementptr inbounds i8, i8* %361, i64 %364
  %365 = load i64, i64* %bytepos.addr, align 8
  %add.ptr629 = getelementptr inbounds i8, i8* %add.ptr628, i64 %365
  %add.ptr630 = getelementptr inbounds i8, i8* %add.ptr629, i64 -1
  store i8* %add.ptr630, i8** %chp612, align 8
  br label %if.end.631

if.end.631:                                       ; preds = %if.else.623, %if.then.618
  br label %while.cond.632

while.cond.632:                                   ; preds = %while.body.638, %if.end.631
  %366 = load i8*, i8** %chp612, align 8
  %367 = load i8, i8* %366, align 1
  %conv633 = zext i8 %367 to i32
  %and634 = and i32 %conv633, 192
  %cmp635 = icmp ne i32 %and634, 128
  %lnot637 = xor i1 %cmp635, true
  br i1 %lnot637, label %while.body.638, label %while.end.641

while.body.638:                                   ; preds = %while.cond.632
  %368 = load i8*, i8** %chp612, align 8
  %incdec.ptr639 = getelementptr inbounds i8, i8* %368, i32 -1
  store i8* %incdec.ptr639, i8** %chp612, align 8
  %369 = load i64, i64* %bytepos.addr, align 8
  %dec640 = add nsw i64 %369, -1
  store i64 %dec640, i64* %bytepos.addr, align 8
  br label %while.cond.632

while.end.641:                                    ; preds = %while.cond.632
  br label %do.end.642

do.end.642:                                       ; preds = %while.end.641
  br label %if.end.643

if.end.643:                                       ; preds = %do.end.642, %if.then.608
  br label %do.end.644

do.end.644:                                       ; preds = %if.end.643
  %370 = load i64, i64* %bytepos.addr, align 8
  %call645 = call i32 @FETCH_MULTIBYTE_CHAR(i64 %370)
  store i32 %call645, i32* %c, align 4
  br label %while.cond.595

while.end.646:                                    ; preds = %land.end
  br label %if.end.723

if.else.647:                                      ; preds = %if.end.590
  br label %while.cond.648

while.cond.648:                                   ; preds = %cond.end.720, %if.else.647
  %371 = load i64, i64* %charpos.addr, align 8
  %sub649 = sub nsw i64 %371, 1
  %372 = load i64, i64* %endpos.addr, align 8
  %cmp650 = icmp sgt i64 %sub649, %372
  br i1 %cmp650, label %land.rhs.652, label %land.end.655

land.rhs.652:                                     ; preds = %while.cond.648
  %373 = load i32, i32* %c, align 4
  %call653 = call zeroext i1 @char_composable_p(i32 %373)
  %lnot654 = xor i1 %call653, true
  br label %land.end.655

land.end.655:                                     ; preds = %land.rhs.652, %while.cond.648
  %374 = phi i1 [ false, %while.cond.648 ], [ %lnot654, %land.rhs.652 ]
  br i1 %374, label %while.body.656, label %while.end.722

while.body.656:                                   ; preds = %land.end.655
  %375 = load i8*, i8** %p, align 8
  %incdec.ptr657 = getelementptr inbounds i8, i8* %375, i32 -1
  store i8* %incdec.ptr657, i8** %p, align 8
  br label %while.cond.658

while.cond.658:                                   ; preds = %while.body.664, %while.body.656
  %376 = load i8*, i8** %p, align 8
  %377 = load i8, i8* %376, align 1
  %conv659 = zext i8 %377 to i32
  %and660 = and i32 %conv659, 192
  %cmp661 = icmp ne i32 %and660, 128
  %lnot663 = xor i1 %cmp661, true
  br i1 %lnot663, label %while.body.664, label %while.end.666

while.body.664:                                   ; preds = %while.cond.658
  %378 = load i8*, i8** %p, align 8
  %incdec.ptr665 = getelementptr inbounds i8, i8* %378, i32 -1
  store i8* %incdec.ptr665, i8** %p, align 8
  br label %while.cond.658

while.end.666:                                    ; preds = %while.cond.658
  %379 = load i64, i64* %charpos.addr, align 8
  %dec667 = add nsw i64 %379, -1
  store i64 %dec667, i64* %charpos.addr, align 8
  %380 = load i8*, i8** %p, align 8
  %arrayidx668 = getelementptr inbounds i8, i8* %380, i64 0
  %381 = load i8, i8* %arrayidx668, align 1
  %conv669 = zext i8 %381 to i32
  %and670 = and i32 %conv669, 128
  %tobool671 = icmp ne i32 %and670, 0
  br i1 %tobool671, label %cond.false.675, label %cond.true.672

cond.true.672:                                    ; preds = %while.end.666
  %382 = load i8*, i8** %p, align 8
  %arrayidx673 = getelementptr inbounds i8, i8* %382, i64 0
  %383 = load i8, i8* %arrayidx673, align 1
  %conv674 = zext i8 %383 to i32
  br label %cond.end.720

cond.false.675:                                   ; preds = %while.end.666
  %384 = load i8*, i8** %p, align 8
  %arrayidx676 = getelementptr inbounds i8, i8* %384, i64 0
  %385 = load i8, i8* %arrayidx676, align 1
  %conv677 = zext i8 %385 to i32
  %and678 = and i32 %conv677, 32
  %tobool679 = icmp ne i32 %and678, 0
  br i1 %tobool679, label %cond.false.695, label %cond.true.680

cond.true.680:                                    ; preds = %cond.false.675
  %386 = load i8*, i8** %p, align 8
  %arrayidx681 = getelementptr inbounds i8, i8* %386, i64 0
  %387 = load i8, i8* %arrayidx681, align 1
  %conv682 = zext i8 %387 to i32
  %and683 = and i32 %conv682, 31
  %shl684 = shl i32 %and683, 6
  %388 = load i8*, i8** %p, align 8
  %arrayidx685 = getelementptr inbounds i8, i8* %388, i64 1
  %389 = load i8, i8* %arrayidx685, align 1
  %conv686 = zext i8 %389 to i32
  %and687 = and i32 %conv686, 63
  %or688 = or i32 %shl684, %and687
  %390 = load i8*, i8** %p, align 8
  %arrayidx689 = getelementptr inbounds i8, i8* %390, i64 0
  %391 = load i8, i8* %arrayidx689, align 1
  %conv690 = zext i8 %391 to i32
  %cmp691 = icmp slt i32 %conv690, 194
  %cond693 = select i1 %cmp691, i32 4194176, i32 0
  %add694 = add nsw i32 %or688, %cond693
  br label %cond.end.718

cond.false.695:                                   ; preds = %cond.false.675
  %392 = load i8*, i8** %p, align 8
  %arrayidx696 = getelementptr inbounds i8, i8* %392, i64 0
  %393 = load i8, i8* %arrayidx696, align 1
  %conv697 = zext i8 %393 to i32
  %and698 = and i32 %conv697, 16
  %tobool699 = icmp ne i32 %and698, 0
  br i1 %tobool699, label %cond.false.714, label %cond.true.700

cond.true.700:                                    ; preds = %cond.false.695
  %394 = load i8*, i8** %p, align 8
  %arrayidx701 = getelementptr inbounds i8, i8* %394, i64 0
  %395 = load i8, i8* %arrayidx701, align 1
  %conv702 = zext i8 %395 to i32
  %and703 = and i32 %conv702, 15
  %shl704 = shl i32 %and703, 12
  %396 = load i8*, i8** %p, align 8
  %arrayidx705 = getelementptr inbounds i8, i8* %396, i64 1
  %397 = load i8, i8* %arrayidx705, align 1
  %conv706 = zext i8 %397 to i32
  %and707 = and i32 %conv706, 63
  %shl708 = shl i32 %and707, 6
  %or709 = or i32 %shl704, %shl708
  %398 = load i8*, i8** %p, align 8
  %arrayidx710 = getelementptr inbounds i8, i8* %398, i64 2
  %399 = load i8, i8* %arrayidx710, align 1
  %conv711 = zext i8 %399 to i32
  %and712 = and i32 %conv711, 63
  %or713 = or i32 %or709, %and712
  br label %cond.end.716

cond.false.714:                                   ; preds = %cond.false.695
  %400 = load i8*, i8** %p, align 8
  %call715 = call i32 @string_char(i8* %400, i8** null, i32* null)
  br label %cond.end.716

cond.end.716:                                     ; preds = %cond.false.714, %cond.true.700
  %cond717 = phi i32 [ %or713, %cond.true.700 ], [ %call715, %cond.false.714 ]
  br label %cond.end.718

cond.end.718:                                     ; preds = %cond.end.716, %cond.true.680
  %cond719 = phi i32 [ %add694, %cond.true.680 ], [ %cond717, %cond.end.716 ]
  br label %cond.end.720

cond.end.720:                                     ; preds = %cond.end.718, %cond.true.672
  %cond721 = phi i32 [ %conv674, %cond.true.672 ], [ %cond719, %cond.end.718 ]
  store i32 %cond721, i32* %c, align 4
  br label %while.cond.648

while.end.722:                                    ; preds = %land.end.655
  br label %if.end.723

if.end.723:                                       ; preds = %while.end.722, %while.end.646
  br label %if.end.724

if.end.724:                                       ; preds = %if.end.723, %if.else.261
  br label %if.end.725

if.end.725:                                       ; preds = %if.end.724, %if.end.260
  %401 = load i64, i64* %charpos.addr, align 8
  %402 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %stop_pos726 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %402, i32 0, i32 0
  store i64 %401, i64* %stop_pos726, align 8
  br label %return

return:                                           ; preds = %if.end.725, %if.then.589, %if.then.233, %if.then.29, %if.then.13
  ret void
}

declare i64 @buf_charpos_to_bytepos(%struct.buffer*, i64) #1

declare i64 @string_char_to_byte(i64, i64) #1

declare i64 @SCHARS(i64) #1

; Function Attrs: nounwind uwtable
define internal zeroext i1 @char_composable_p(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  %val = alloca i64, align 8
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %cmp = icmp sgt i32 %0, 32
  br i1 %cmp, label %land.rhs, label %land.end.9

land.rhs:                                         ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %cmp1 = icmp eq i32 %1, 8204
  br i1 %cmp1, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.rhs
  %2 = load i32, i32* %c.addr, align 4
  %cmp2 = icmp eq i32 %2, 8205
  br i1 %cmp2, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %3 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 314), align 8
  %4 = load i32, i32* %c.addr, align 4
  %call = call i64 @CHAR_TABLE_REF(i64 %3, i32 %4)
  store i64 %call, i64* %val, align 8
  %5 = load i64, i64* %val, align 8
  %and = and i64 %5, 7
  %conv = trunc i64 %and to i32
  %and3 = and i32 %conv, -5
  %cmp4 = icmp eq i32 %and3, 2
  br i1 %cmp4, label %land.rhs.6, label %land.end

land.rhs.6:                                       ; preds = %lor.rhs
  %6 = load i64, i64* %val, align 8
  %shr = ashr i64 %6, 2
  %cmp7 = icmp sle i64 %shr, 22
  br label %land.end

land.end:                                         ; preds = %land.rhs.6, %lor.rhs
  %7 = phi i1 [ false, %lor.rhs ], [ %cmp7, %land.rhs.6 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %lor.lhs.false, %land.rhs
  %8 = phi i1 [ true, %lor.lhs.false ], [ true, %land.rhs ], [ %7, %land.end ]
  br label %land.end.9

land.end.9:                                       ; preds = %lor.end, %entry
  %9 = phi i1 [ false, %entry ], [ %8, %lor.end ]
  ret i1 %9
}

declare i64 @fast_looking_at(i64, i64, i64, i64, i64, i64) #1

declare i64 @buf_bytepos_to_charpos(%struct.buffer*, i64) #1

declare i64 @string_byte_to_char(i64, i64) #1

declare i32 @FETCH_MULTIBYTE_CHAR(i64) #1

; Function Attrs: nounwind uwtable
define zeroext i1 @composition_reseat_it(%struct.composition_it* %cmp_it, i64 %charpos, i64 %bytepos, i64 %endpos, %struct.window* %w, %struct.face* %face, i64 %string) #0 {
entry:
  %retval = alloca i1, align 1
  %cmp_it.addr = alloca %struct.composition_it*, align 8
  %charpos.addr = alloca i64, align 8
  %bytepos.addr = alloca i64, align 8
  %endpos.addr = alloca i64, align 8
  %w.addr = alloca %struct.window*, align 8
  %face.addr = alloca %struct.face*, align 8
  %string.addr = alloca i64, align 8
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %prop = alloca i64, align 8
  %lgstring = alloca i64, align 8
  %val = alloca i64, align 8
  %elt = alloca i64, align 8
  %i = alloca i64, align 8
  %cpos = alloca i64, align 8
  %bpos = alloca i64, align 8
  %chp = alloca i8*, align 8
  store %struct.composition_it* %cmp_it, %struct.composition_it** %cmp_it.addr, align 8
  store i64 %charpos, i64* %charpos.addr, align 8
  store i64 %bytepos, i64* %bytepos.addr, align 8
  store i64 %endpos, i64* %endpos.addr, align 8
  store %struct.window* %w, %struct.window** %w.addr, align 8
  store %struct.face* %face, %struct.face** %face.addr, align 8
  store i64 %string, i64* %string.addr, align 8
  %0 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %ch = getelementptr inbounds %struct.composition_it, %struct.composition_it* %0, i32 0, i32 2
  %1 = load i32, i32* %ch, align 4
  %cmp = icmp eq i32 %1, -2
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %2 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %3 = load i64, i64* %charpos.addr, align 8
  %4 = load i64, i64* %bytepos.addr, align 8
  %5 = load i64, i64* %endpos.addr, align 8
  %6 = load i64, i64* %string.addr, align 8
  call void @composition_compute_stop_pos(%struct.composition_it* %2, i64 %3, i64 %4, i64 %5, i64 %6)
  %7 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %ch1 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %7, i32 0, i32 2
  %8 = load i32, i32* %ch1, align 4
  %cmp2 = icmp eq i32 %8, -2
  br i1 %cmp2, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %9 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %stop_pos = getelementptr inbounds %struct.composition_it, %struct.composition_it* %9, i32 0, i32 0
  %10 = load i64, i64* %stop_pos, align 8
  %11 = load i64, i64* %charpos.addr, align 8
  %cmp3 = icmp ne i64 %10, %11
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %lor.lhs.false, %if.then
  store i1 false, i1* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %12 = load i64, i64* %endpos.addr, align 8
  %cmp6 = icmp slt i64 %12, 0
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.5
  %13 = load i64, i64* %string.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp8 = icmp eq i64 %13, %call
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.7
  %14 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %14, i32 0, i32 77
  %15 = load i64, i64* %begv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %15, %cond.true ], [ 0, %cond.false ]
  store i64 %cond, i64* %endpos.addr, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %cond.end, %if.end.5
  %16 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %ch10 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %16, i32 0, i32 2
  %17 = load i32, i32* %ch10, align 4
  %cmp11 = icmp slt i32 %17, 0
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end.9
  %18 = load i64, i64* %charpos.addr, align 8
  %19 = load i64, i64* %string.addr, align 8
  %call13 = call zeroext i1 @find_composition(i64 %18, i64 -1, i64* %start, i64* %end, i64* %prop, i64 %19)
  %20 = load i64, i64* %charpos.addr, align 8
  %21 = load i64, i64* %bytepos.addr, align 8
  %22 = load i64, i64* %end, align 8
  %23 = load i64, i64* %start, align 8
  %sub = sub nsw i64 %22, %23
  %24 = load i64, i64* %prop, align 8
  %25 = load i64, i64* %string.addr, align 8
  %call14 = call i64 @get_composition_id(i64 %20, i64 %21, i64 %sub, i64 %24, i64 %25)
  %26 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %id = getelementptr inbounds %struct.composition_it, %struct.composition_it* %26, i32 0, i32 1
  store i64 %call14, i64* %id, align 8
  %27 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %id15 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %27, i32 0, i32 1
  %28 = load i64, i64* %id15, align 8
  %cmp16 = icmp slt i64 %28, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.12
  br label %no_composition

if.end.18:                                        ; preds = %if.then.12
  %29 = load i64, i64* %end, align 8
  %30 = load i64, i64* %start, align 8
  %sub19 = sub nsw i64 %29, %30
  %conv = trunc i64 %sub19 to i32
  %31 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %nchars = getelementptr inbounds %struct.composition_it, %struct.composition_it* %31, i32 0, i32 8
  store i32 %conv, i32* %nchars, align 4
  %32 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %id20 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %32, i32 0, i32 1
  %33 = load i64, i64* %id20, align 8
  %34 = load %struct.composition**, %struct.composition*** @composition_table, align 8
  %arrayidx = getelementptr inbounds %struct.composition*, %struct.composition** %34, i64 %33
  %35 = load %struct.composition*, %struct.composition** %arrayidx, align 8
  %glyph_len = getelementptr inbounds %struct.composition, %struct.composition* %35, i32 0, i32 0
  %36 = load i32, i32* %glyph_len, align 4
  %37 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %nglyphs = getelementptr inbounds %struct.composition_it, %struct.composition_it* %37, i32 0, i32 5
  store i32 %36, i32* %nglyphs, align 4
  br label %if.end.133

if.else:                                          ; preds = %if.end.9
  %38 = load %struct.window*, %struct.window** %w.addr, align 8
  %tobool = icmp ne %struct.window* %38, null
  br i1 %tobool, label %if.then.21, label %if.else.131

if.then.21:                                       ; preds = %if.else
  %call22 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call22, i64* %lgstring, align 8
  %39 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 46), align 8
  %40 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %ch23 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %40, i32 0, i32 2
  %41 = load i32, i32* %ch23, align 4
  %call24 = call i64 @CHAR_TABLE_REF(i64 %39, i32 %41)
  store i64 %call24, i64* %val, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.21
  %42 = load i64, i64* %i, align 8
  %43 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %rule_idx = getelementptr inbounds %struct.composition_it, %struct.composition_it* %43, i32 0, i32 3
  %44 = load i32, i32* %rule_idx, align 4
  %conv25 = sext i32 %44 to i64
  %cmp26 = icmp slt i64 %42, %conv25
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %45 = load i64, i64* %i, align 8
  %inc = add nsw i64 %45, 1
  store i64 %inc, i64* %i, align 8
  %46 = load i64, i64* %val, align 8
  %sub28 = sub nsw i64 %46, 3
  %47 = inttoptr i64 %sub28 to i8*
  %48 = bitcast i8* %47 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %48, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %49 = load i64, i64* %cdr, align 8
  store i64 %49, i64* %val, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %50 = load i64, i64* %charpos.addr, align 8
  %51 = load i64, i64* %endpos.addr, align 8
  %cmp29 = icmp slt i64 %50, %51
  br i1 %cmp29, label %if.then.31, label %if.else.67

if.then.31:                                       ; preds = %for.end
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.62, %if.then.31
  %52 = load i64, i64* %val, align 8
  %and = and i64 %52, 7
  %conv33 = trunc i64 %and to i32
  %cmp34 = icmp eq i32 %conv33, 3
  br i1 %cmp34, label %for.body.36, label %for.end.66

for.body.36:                                      ; preds = %for.cond.32
  %53 = load i64, i64* %val, align 8
  %sub37 = sub nsw i64 %53, 3
  %54 = inttoptr i64 %sub37 to i8*
  %55 = bitcast i8* %54 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %55, i32 0, i32 0
  %56 = load i64, i64* %car, align 8
  store i64 %56, i64* %elt, align 8
  %57 = load i64, i64* %elt, align 8
  %call38 = call zeroext i1 @VECTORP(i64 %57)
  br i1 %call38, label %lor.lhs.false.39, label %if.then.50

lor.lhs.false.39:                                 ; preds = %for.body.36
  %58 = load i64, i64* %elt, align 8
  %call40 = call i64 @ASIZE(i64 %58)
  %cmp41 = icmp ne i64 %call40, 3
  br i1 %cmp41, label %if.then.50, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %lor.lhs.false.39
  %59 = load i64, i64* %elt, align 8
  %call44 = call i64 @AREF(i64 %59, i64 1)
  %and45 = and i64 %call44, 7
  %conv46 = trunc i64 %and45 to i32
  %and47 = and i32 %conv46, -5
  %cmp48 = icmp eq i32 %and47, 2
  br i1 %cmp48, label %if.end.51, label %if.then.50

if.then.50:                                       ; preds = %lor.lhs.false.43, %lor.lhs.false.39, %for.body.36
  br label %for.inc.62

if.end.51:                                        ; preds = %lor.lhs.false.43
  %60 = load i64, i64* %elt, align 8
  %call52 = call i64 @AREF(i64 %60, i64 1)
  %shr = ashr i64 %call52, 2
  %61 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %lookback = getelementptr inbounds %struct.composition_it, %struct.composition_it* %61, i32 0, i32 4
  %62 = load i64, i64* %lookback, align 8
  %cmp53 = icmp ne i64 %shr, %62
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.51
  br label %no_composition

if.end.56:                                        ; preds = %if.end.51
  %63 = load i64, i64* %elt, align 8
  %64 = load i64, i64* %charpos.addr, align 8
  %65 = load i64, i64* %bytepos.addr, align 8
  %66 = load i64, i64* %endpos.addr, align 8
  %67 = load %struct.window*, %struct.window** %w.addr, align 8
  %68 = load %struct.face*, %struct.face** %face.addr, align 8
  %69 = load i64, i64* %string.addr, align 8
  %call57 = call i64 @autocmp_chars(i64 %63, i64 %64, i64 %65, i64 %66, %struct.window* %67, %struct.face* %68, i64 %69)
  store i64 %call57, i64* %lgstring, align 8
  %70 = load i64, i64* %lgstring, align 8
  %call58 = call zeroext i1 @composition_gstring_p(i64 %70)
  br i1 %call58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.end.56
  br label %for.end.66

if.end.60:                                        ; preds = %if.end.56
  %call61 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call61, i64* %lgstring, align 8
  br label %for.inc.62

for.inc.62:                                       ; preds = %if.end.60, %if.then.50
  %71 = load i64, i64* %val, align 8
  %sub63 = sub nsw i64 %71, 3
  %72 = inttoptr i64 %sub63 to i8*
  %73 = bitcast i8* %72 to %struct.Lisp_Cons*
  %u64 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %73, i32 0, i32 1
  %cdr65 = bitcast %union.anon* %u64 to i64*
  %74 = load i64, i64* %cdr65, align 8
  store i64 %74, i64* %val, align 8
  br label %for.cond.32

for.end.66:                                       ; preds = %if.then.59, %for.cond.32
  %75 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %reversed_p = getelementptr inbounds %struct.composition_it, %struct.composition_it* %75, i32 0, i32 6
  store i8 0, i8* %reversed_p, align 1
  br label %if.end.96

if.else.67:                                       ; preds = %for.end
  %76 = load i64, i64* %charpos.addr, align 8
  store i64 %76, i64* %cpos, align 8
  %77 = load i64, i64* %bytepos.addr, align 8
  store i64 %77, i64* %bpos, align 8
  %78 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %reversed_p68 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %78, i32 0, i32 6
  store i8 1, i8* %reversed_p68, align 1
  %79 = load i64, i64* %val, align 8
  %sub69 = sub nsw i64 %79, 3
  %80 = inttoptr i64 %sub69 to i8*
  %81 = bitcast i8* %80 to %struct.Lisp_Cons*
  %car70 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %81, i32 0, i32 0
  %82 = load i64, i64* %car70, align 8
  store i64 %82, i64* %elt, align 8
  %83 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %lookback71 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %83, i32 0, i32 4
  %84 = load i64, i64* %lookback71, align 8
  %cmp72 = icmp sgt i64 %84, 0
  br i1 %cmp72, label %if.then.74, label %if.end.83

if.then.74:                                       ; preds = %if.else.67
  %85 = load i64, i64* %charpos.addr, align 8
  %86 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %lookback75 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %86, i32 0, i32 4
  %87 = load i64, i64* %lookback75, align 8
  %sub76 = sub nsw i64 %85, %87
  store i64 %sub76, i64* %cpos, align 8
  %88 = load i64, i64* %string.addr, align 8
  %call77 = call zeroext i1 @STRINGP(i64 %88)
  br i1 %call77, label %if.then.78, label %if.else.80

if.then.78:                                       ; preds = %if.then.74
  %89 = load i64, i64* %string.addr, align 8
  %90 = load i64, i64* %cpos, align 8
  %call79 = call i64 @string_char_to_byte(i64 %89, i64 %90)
  store i64 %call79, i64* %bpos, align 8
  br label %if.end.82

if.else.80:                                       ; preds = %if.then.74
  %91 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %92 = load i64, i64* %cpos, align 8
  %call81 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %91, i64 %92)
  store i64 %call81, i64* %bpos, align 8
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.80, %if.then.78
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.else.67
  %93 = load i64, i64* %elt, align 8
  %94 = load i64, i64* %cpos, align 8
  %95 = load i64, i64* %bpos, align 8
  %96 = load i64, i64* %charpos.addr, align 8
  %add = add nsw i64 %96, 1
  %97 = load %struct.window*, %struct.window** %w.addr, align 8
  %98 = load %struct.face*, %struct.face** %face.addr, align 8
  %99 = load i64, i64* %string.addr, align 8
  %call84 = call i64 @autocmp_chars(i64 %93, i64 %94, i64 %95, i64 %add, %struct.window* %97, %struct.face* %98, i64 %99)
  store i64 %call84, i64* %lgstring, align 8
  %100 = load i64, i64* %lgstring, align 8
  %call85 = call zeroext i1 @composition_gstring_p(i64 %100)
  br i1 %call85, label %lor.lhs.false.86, label %if.then.94

lor.lhs.false.86:                                 ; preds = %if.end.83
  %101 = load i64, i64* %cpos, align 8
  %102 = load i64, i64* %lgstring, align 8
  %call87 = call i64 @AREF(i64 %102, i64 0)
  %call88 = call i64 @ASIZE(i64 %call87)
  %sub89 = sub nsw i64 %call88, 1
  %add90 = add nsw i64 %101, %sub89
  %sub91 = sub nsw i64 %add90, 1
  %103 = load i64, i64* %charpos.addr, align 8
  %cmp92 = icmp ne i64 %sub91, %103
  br i1 %cmp92, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %lor.lhs.false.86, %if.end.83
  br label %no_composition

if.end.95:                                        ; preds = %lor.lhs.false.86
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %for.end.66
  %104 = load i64, i64* %lgstring, align 8
  %call97 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp98 = icmp eq i64 %104, %call97
  br i1 %cmp98, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %if.end.96
  br label %no_composition

if.end.101:                                       ; preds = %if.end.96
  %105 = load i64, i64* %lgstring, align 8
  %call102 = call i64 @AREF(i64 %105, i64 1)
  %call103 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp104 = icmp eq i64 %call102, %call103
  br i1 %cmp104, label %if.then.106, label %if.end.108

if.then.106:                                      ; preds = %if.end.101
  %106 = load i64, i64* %lgstring, align 8
  %call107 = call i64 @composition_gstring_put_cache(i64 %106, i64 -1)
  store i64 %call107, i64* %lgstring, align 8
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.106, %if.end.101
  %107 = load i64, i64* %lgstring, align 8
  %call109 = call i64 @AREF(i64 %107, i64 1)
  %shr110 = ashr i64 %call109, 2
  %108 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %id111 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %108, i32 0, i32 1
  store i64 %shr110, i64* %id111, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond.112

for.cond.112:                                     ; preds = %for.inc.125, %if.end.108
  %109 = load i64, i64* %i, align 8
  %110 = load i64, i64* %lgstring, align 8
  %call113 = call i64 @ASIZE(i64 %110)
  %sub114 = sub nsw i64 %call113, 2
  %cmp115 = icmp slt i64 %109, %sub114
  br i1 %cmp115, label %for.body.117, label %for.end.127

for.body.117:                                     ; preds = %for.cond.112
  %111 = load i64, i64* %lgstring, align 8
  %112 = load i64, i64* %i, align 8
  %add118 = add nsw i64 %112, 2
  %call119 = call i64 @AREF(i64 %111, i64 %add118)
  %call120 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp121 = icmp eq i64 %call119, %call120
  br i1 %cmp121, label %if.then.123, label %if.end.124

if.then.123:                                      ; preds = %for.body.117
  br label %for.end.127

if.end.124:                                       ; preds = %for.body.117
  br label %for.inc.125

for.inc.125:                                      ; preds = %if.end.124
  %113 = load i64, i64* %i, align 8
  %inc126 = add nsw i64 %113, 1
  store i64 %inc126, i64* %i, align 8
  br label %for.cond.112

for.end.127:                                      ; preds = %if.then.123, %for.cond.112
  %114 = load i64, i64* %i, align 8
  %conv128 = trunc i64 %114 to i32
  %115 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %nglyphs129 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %115, i32 0, i32 5
  store i32 %conv128, i32* %nglyphs129, align 4
  %116 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %from = getelementptr inbounds %struct.composition_it, %struct.composition_it* %116, i32 0, i32 10
  store i32 0, i32* %from, align 4
  %117 = load i64, i64* %i, align 8
  %conv130 = trunc i64 %117 to i32
  %118 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %to = getelementptr inbounds %struct.composition_it, %struct.composition_it* %118, i32 0, i32 11
  store i32 %conv130, i32* %to, align 4
  br label %if.end.132

if.else.131:                                      ; preds = %if.else
  br label %no_composition

if.end.132:                                       ; preds = %for.end.127
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %if.end.18
  store i1 true, i1* %retval
  br label %return

no_composition:                                   ; preds = %if.else.131, %if.then.100, %if.then.94, %if.then.55, %if.then.17
  %119 = load i64, i64* %charpos.addr, align 8
  %120 = load i64, i64* %endpos.addr, align 8
  %cmp134 = icmp eq i64 %119, %120
  br i1 %cmp134, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %no_composition
  store i1 false, i1* %retval
  br label %return

if.end.137:                                       ; preds = %no_composition
  %121 = load i64, i64* %charpos.addr, align 8
  %122 = load i64, i64* %endpos.addr, align 8
  %cmp138 = icmp slt i64 %121, %122
  br i1 %cmp138, label %if.then.140, label %if.else.221

if.then.140:                                      ; preds = %if.end.137
  %123 = load i64, i64* %charpos.addr, align 8
  %inc141 = add nsw i64 %123, 1
  store i64 %inc141, i64* %charpos.addr, align 8
  %124 = load i64, i64* %string.addr, align 8
  %call142 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp143 = icmp eq i64 %124, %call142
  br i1 %cmp143, label %if.then.145, label %if.else.183

if.then.145:                                      ; preds = %if.then.140
  br label %do.body

do.body:                                          ; preds = %if.then.145
  %125 = load i64, i64* %bytepos.addr, align 8
  %126 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %126, i32 0, i32 73
  %127 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %gpt_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %127, i32 0, i32 3
  %128 = load i64, i64* %gpt_byte, align 8
  %cmp146 = icmp sge i64 %125, %128
  br i1 %cmp146, label %cond.true.148, label %cond.false.150

cond.true.148:                                    ; preds = %do.body
  %129 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text149 = getelementptr inbounds %struct.buffer, %struct.buffer* %129, i32 0, i32 73
  %130 = load %struct.buffer_text*, %struct.buffer_text** %text149, align 8
  %gap_size = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %130, i32 0, i32 5
  %131 = load i64, i64* %gap_size, align 8
  br label %cond.end.151

cond.false.150:                                   ; preds = %do.body
  br label %cond.end.151

cond.end.151:                                     ; preds = %cond.false.150, %cond.true.148
  %cond152 = phi i64 [ %131, %cond.true.148 ], [ 0, %cond.false.150 ]
  %132 = load i64, i64* %bytepos.addr, align 8
  %add153 = add nsw i64 %cond152, %132
  %133 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text154 = getelementptr inbounds %struct.buffer, %struct.buffer* %133, i32 0, i32 73
  %134 = load %struct.buffer_text*, %struct.buffer_text** %text154, align 8
  %beg = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %134, i32 0, i32 0
  %135 = load i8*, i8** %beg, align 8
  %add.ptr = getelementptr inbounds i8, i8* %135, i64 %add153
  %add.ptr155 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8* %add.ptr155, i8** %chp, align 8
  %136 = load i8*, i8** %chp, align 8
  %137 = load i8, i8* %136, align 1
  %conv156 = zext i8 %137 to i32
  %and157 = and i32 %conv156, 128
  %tobool158 = icmp ne i32 %and157, 0
  br i1 %tobool158, label %cond.false.160, label %cond.true.159

cond.true.159:                                    ; preds = %cond.end.151
  br label %cond.end.179

cond.false.160:                                   ; preds = %cond.end.151
  %138 = load i8*, i8** %chp, align 8
  %139 = load i8, i8* %138, align 1
  %conv161 = zext i8 %139 to i32
  %and162 = and i32 %conv161, 32
  %tobool163 = icmp ne i32 %and162, 0
  br i1 %tobool163, label %cond.false.165, label %cond.true.164

cond.true.164:                                    ; preds = %cond.false.160
  br label %cond.end.177

cond.false.165:                                   ; preds = %cond.false.160
  %140 = load i8*, i8** %chp, align 8
  %141 = load i8, i8* %140, align 1
  %conv166 = zext i8 %141 to i32
  %and167 = and i32 %conv166, 16
  %tobool168 = icmp ne i32 %and167, 0
  br i1 %tobool168, label %cond.false.170, label %cond.true.169

cond.true.169:                                    ; preds = %cond.false.165
  br label %cond.end.175

cond.false.170:                                   ; preds = %cond.false.165
  %142 = load i8*, i8** %chp, align 8
  %143 = load i8, i8* %142, align 1
  %conv171 = zext i8 %143 to i32
  %and172 = and i32 %conv171, 8
  %tobool173 = icmp ne i32 %and172, 0
  %lnot = xor i1 %tobool173, true
  %cond174 = select i1 %lnot, i32 4, i32 5
  br label %cond.end.175

cond.end.175:                                     ; preds = %cond.false.170, %cond.true.169
  %cond176 = phi i32 [ 3, %cond.true.169 ], [ %cond174, %cond.false.170 ]
  br label %cond.end.177

cond.end.177:                                     ; preds = %cond.end.175, %cond.true.164
  %cond178 = phi i32 [ 2, %cond.true.164 ], [ %cond176, %cond.end.175 ]
  br label %cond.end.179

cond.end.179:                                     ; preds = %cond.end.177, %cond.true.159
  %cond180 = phi i32 [ 1, %cond.true.159 ], [ %cond178, %cond.end.177 ]
  %conv181 = sext i32 %cond180 to i64
  %144 = load i64, i64* %bytepos.addr, align 8
  %add182 = add nsw i64 %144, %conv181
  store i64 %add182, i64* %bytepos.addr, align 8
  br label %do.end

do.end:                                           ; preds = %cond.end.179
  br label %if.end.220

if.else.183:                                      ; preds = %if.then.140
  %145 = load i64, i64* %string.addr, align 8
  %call184 = call i8* @SDATA(i64 %145)
  %146 = load i64, i64* %bytepos.addr, align 8
  %add.ptr185 = getelementptr inbounds i8, i8* %call184, i64 %146
  %147 = load i8, i8* %add.ptr185, align 1
  %conv186 = zext i8 %147 to i32
  %and187 = and i32 %conv186, 128
  %tobool188 = icmp ne i32 %and187, 0
  br i1 %tobool188, label %cond.false.190, label %cond.true.189

cond.true.189:                                    ; preds = %if.else.183
  br label %cond.end.216

cond.false.190:                                   ; preds = %if.else.183
  %148 = load i64, i64* %string.addr, align 8
  %call191 = call i8* @SDATA(i64 %148)
  %149 = load i64, i64* %bytepos.addr, align 8
  %add.ptr192 = getelementptr inbounds i8, i8* %call191, i64 %149
  %150 = load i8, i8* %add.ptr192, align 1
  %conv193 = zext i8 %150 to i32
  %and194 = and i32 %conv193, 32
  %tobool195 = icmp ne i32 %and194, 0
  br i1 %tobool195, label %cond.false.197, label %cond.true.196

cond.true.196:                                    ; preds = %cond.false.190
  br label %cond.end.214

cond.false.197:                                   ; preds = %cond.false.190
  %151 = load i64, i64* %string.addr, align 8
  %call198 = call i8* @SDATA(i64 %151)
  %152 = load i64, i64* %bytepos.addr, align 8
  %add.ptr199 = getelementptr inbounds i8, i8* %call198, i64 %152
  %153 = load i8, i8* %add.ptr199, align 1
  %conv200 = zext i8 %153 to i32
  %and201 = and i32 %conv200, 16
  %tobool202 = icmp ne i32 %and201, 0
  br i1 %tobool202, label %cond.false.204, label %cond.true.203

cond.true.203:                                    ; preds = %cond.false.197
  br label %cond.end.212

cond.false.204:                                   ; preds = %cond.false.197
  %154 = load i64, i64* %string.addr, align 8
  %call205 = call i8* @SDATA(i64 %154)
  %155 = load i64, i64* %bytepos.addr, align 8
  %add.ptr206 = getelementptr inbounds i8, i8* %call205, i64 %155
  %156 = load i8, i8* %add.ptr206, align 1
  %conv207 = zext i8 %156 to i32
  %and208 = and i32 %conv207, 8
  %tobool209 = icmp ne i32 %and208, 0
  %lnot210 = xor i1 %tobool209, true
  %cond211 = select i1 %lnot210, i32 4, i32 5
  br label %cond.end.212

cond.end.212:                                     ; preds = %cond.false.204, %cond.true.203
  %cond213 = phi i32 [ 3, %cond.true.203 ], [ %cond211, %cond.false.204 ]
  br label %cond.end.214

cond.end.214:                                     ; preds = %cond.end.212, %cond.true.196
  %cond215 = phi i32 [ 2, %cond.true.196 ], [ %cond213, %cond.end.212 ]
  br label %cond.end.216

cond.end.216:                                     ; preds = %cond.end.214, %cond.true.189
  %cond217 = phi i32 [ 1, %cond.true.189 ], [ %cond215, %cond.end.214 ]
  %conv218 = sext i32 %cond217 to i64
  %157 = load i64, i64* %bytepos.addr, align 8
  %add219 = add nsw i64 %157, %conv218
  store i64 %add219, i64* %bytepos.addr, align 8
  br label %if.end.220

if.end.220:                                       ; preds = %cond.end.216, %do.end
  br label %if.end.222

if.else.221:                                      ; preds = %if.end.137
  %158 = load i64, i64* %charpos.addr, align 8
  %dec = add nsw i64 %158, -1
  store i64 %dec, i64* %charpos.addr, align 8
  store i64 -1, i64* %bytepos.addr, align 8
  br label %if.end.222

if.end.222:                                       ; preds = %if.else.221, %if.end.220
  %159 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %reversed_p223 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %159, i32 0, i32 6
  %160 = load i8, i8* %reversed_p223, align 1
  %tobool224 = trunc i8 %160 to i1
  br i1 %tobool224, label %if.then.225, label %if.end.226

if.then.225:                                      ; preds = %if.end.222
  store i64 -1, i64* %endpos.addr, align 8
  br label %if.end.226

if.end.226:                                       ; preds = %if.then.225, %if.end.222
  %161 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %162 = load i64, i64* %charpos.addr, align 8
  %163 = load i64, i64* %bytepos.addr, align 8
  %164 = load i64, i64* %endpos.addr, align 8
  %165 = load i64, i64* %string.addr, align 8
  call void @composition_compute_stop_pos(%struct.composition_it* %161, i64 %162, i64 %163, i64 %164, i64 %165)
  store i1 false, i1* %retval
  br label %return

return:                                           ; preds = %if.end.226, %if.then.136, %if.end.133, %if.then.4
  %166 = load i1, i1* %retval
  ret i1 %166
}

; Function Attrs: nounwind uwtable
define internal i64 @autocmp_chars(i64 %rule, i64 %charpos, i64 %bytepos, i64 %limit, %struct.window* %win, %struct.face* %face, i64 %string) #0 {
entry:
  %retval = alloca i64, align 8
  %rule.addr = alloca i64, align 8
  %charpos.addr = alloca i64, align 8
  %bytepos.addr = alloca i64, align 8
  %limit.addr = alloca i64, align 8
  %win.addr = alloca %struct.window*, align 8
  %face.addr = alloca %struct.face*, align 8
  %string.addr = alloca i64, align 8
  %count = alloca i64, align 8
  %f = alloca %struct.frame*, align 8
  %pos = alloca i64, align 8
  %to = alloca i64, align 8
  %pt = alloca i64, align 8
  %pt_byte = alloca i64, align 8
  %re = alloca i64, align 8
  %font_object = alloca i64, align 8
  %lgstring = alloca i64, align 8
  %len = alloca i64, align 8
  store i64 %rule, i64* %rule.addr, align 8
  store i64 %charpos, i64* %charpos.addr, align 8
  store i64 %bytepos, i64* %bytepos.addr, align 8
  store i64 %limit, i64* %limit.addr, align 8
  store %struct.window* %win, %struct.window** %win.addr, align 8
  store %struct.face* %face, %struct.face** %face.addr, align 8
  store i64 %string, i64* %string.addr, align 8
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %count, align 8
  %0 = load %struct.window*, %struct.window** %win.addr, align 8
  %frame = getelementptr inbounds %struct.window, %struct.window* %0, i32 0, i32 1
  %1 = load i64, i64* %frame, align 8
  %sub = sub nsw i64 %1, 5
  %2 = inttoptr i64 %sub to i8*
  %3 = bitcast i8* %2 to %struct.frame*
  store %struct.frame* %3, %struct.frame** %f, align 8
  %4 = load i64, i64* %charpos.addr, align 8
  %shl = shl i64 %4, 2
  %add = add i64 %shl, 2
  store i64 %add, i64* %pos, align 8
  %5 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt1 = getelementptr inbounds %struct.buffer, %struct.buffer* %5, i32 0, i32 75
  %6 = load i64, i64* %pt1, align 8
  %add2 = add nsw i64 %6, 0
  store i64 %add2, i64* %pt, align 8
  %7 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte3 = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 76
  %8 = load i64, i64* %pt_byte3, align 8
  %add4 = add nsw i64 %8, 0
  store i64 %add4, i64* %pt_byte, align 8
  call void @record_unwind_save_match_data()
  %9 = load i64, i64* %rule.addr, align 8
  %call5 = call i64 @AREF(i64 %9, i64 0)
  store i64 %call5, i64* %re, align 8
  %10 = load i64, i64* %re, align 8
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %10, %call6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 1, i64* %len, align 8
  br label %if.end.27

if.else:                                          ; preds = %entry
  %11 = load i64, i64* %re, align 8
  %call7 = call zeroext i1 @STRINGP(i64 %11)
  br i1 %call7, label %if.else.11, label %if.then.8

if.then.8:                                        ; preds = %if.else
  %12 = load i64, i64* %count, align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  %call10 = call i64 @unbind_to(i64 %12, i64 %call9)
  store i64 %call10, i64* %retval
  br label %return

if.else.11:                                       ; preds = %if.else
  %13 = load i64, i64* %re, align 8
  %14 = load i64, i64* %charpos.addr, align 8
  %15 = load i64, i64* %bytepos.addr, align 8
  %16 = load i64, i64* %limit.addr, align 8
  %17 = load i64, i64* %string.addr, align 8
  %call12 = call i64 @fast_looking_at(i64 %13, i64 %14, i64 %15, i64 %16, i64 -1, i64 %17)
  store i64 %call12, i64* %len, align 8
  %cmp13 = icmp sgt i64 %call12, 0
  br i1 %cmp13, label %if.then.14, label %if.end.25

if.then.14:                                       ; preds = %if.else.11
  %18 = load i64, i64* %string.addr, align 8
  %call15 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp16 = icmp eq i64 %18, %call15
  br i1 %cmp16, label %if.then.17, label %if.else.21

if.then.17:                                       ; preds = %if.then.14
  %19 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %20 = load i64, i64* %bytepos.addr, align 8
  %21 = load i64, i64* %len, align 8
  %add18 = add nsw i64 %20, %21
  %call19 = call i64 @buf_bytepos_to_charpos(%struct.buffer* %19, i64 %add18)
  %22 = load i64, i64* %charpos.addr, align 8
  %sub20 = sub nsw i64 %call19, %22
  store i64 %sub20, i64* %len, align 8
  br label %if.end

if.else.21:                                       ; preds = %if.then.14
  %23 = load i64, i64* %string.addr, align 8
  %24 = load i64, i64* %bytepos.addr, align 8
  %25 = load i64, i64* %len, align 8
  %add22 = add nsw i64 %24, %25
  %call23 = call i64 @string_byte_to_char(i64 %23, i64 %add22)
  %26 = load i64, i64* %charpos.addr, align 8
  %sub24 = sub nsw i64 %call23, %26
  store i64 %sub24, i64* %len, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.21, %if.then.17
  br label %if.end.25

if.end.25:                                        ; preds = %if.end, %if.else.11
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then
  %27 = load i64, i64* %len, align 8
  %cmp28 = icmp sle i64 %27, 0
  br i1 %cmp28, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %if.end.27
  %28 = load i64, i64* %count, align 8
  %call30 = call i64 @builtin_lisp_symbol(i32 0)
  %call31 = call i64 @unbind_to(i64 %28, i64 %call30)
  store i64 %call31, i64* %retval
  br label %return

if.end.32:                                        ; preds = %if.end.27
  %29 = load i64, i64* %charpos.addr, align 8
  %30 = load i64, i64* %len, align 8
  %add33 = add nsw i64 %29, %30
  store i64 %add33, i64* %limit.addr, align 8
  store i64 %add33, i64* %to, align 8
  %31 = load %struct.frame*, %struct.frame** %f, align 8
  %output_method = getelementptr inbounds %struct.frame, %struct.frame* %31, i32 0, i32 26
  %32 = bitcast i48* %output_method to i64*
  %bf.load = load i64, i64* %32, align 8
  %bf.lshr = lshr i64 %bf.load, 23
  %bf.clear = and i64 %bf.lshr, 7
  %bf.cast = trunc i64 %bf.clear to i32
  %cmp34 = icmp eq i32 %bf.cast, 2
  br i1 %cmp34, label %if.then.35, label %if.else.48

if.then.35:                                       ; preds = %if.end.32
  %33 = load i64, i64* %charpos.addr, align 8
  %34 = load i64, i64* %bytepos.addr, align 8
  %35 = load %struct.window*, %struct.window** %win.addr, align 8
  %36 = load %struct.face*, %struct.face** %face.addr, align 8
  %37 = load i64, i64* %string.addr, align 8
  %call36 = call i64 @font_range(i64 %33, i64 %34, i64* %to, %struct.window* %35, %struct.face* %36, i64 %37)
  store i64 %call36, i64* %font_object, align 8
  %38 = load i64, i64* %font_object, align 8
  %call37 = call zeroext i1 @FONT_OBJECT_P(i64 %38)
  br i1 %call37, label %lor.lhs.false, label %if.then.44

lor.lhs.false:                                    ; preds = %if.then.35
  %39 = load i64, i64* %re, align 8
  %call38 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp39 = icmp eq i64 %39, %call38
  br i1 %cmp39, label %if.end.47, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %40 = load i64, i64* %to, align 8
  %41 = load i64, i64* %limit.addr, align 8
  %cmp40 = icmp slt i64 %40, %41
  br i1 %cmp40, label %land.lhs.true.41, label %if.end.47

land.lhs.true.41:                                 ; preds = %land.lhs.true
  %42 = load i64, i64* %re, align 8
  %43 = load i64, i64* %charpos.addr, align 8
  %44 = load i64, i64* %bytepos.addr, align 8
  %45 = load i64, i64* %to, align 8
  %46 = load i64, i64* %string.addr, align 8
  %call42 = call i64 @fast_looking_at(i64 %42, i64 %43, i64 %44, i64 %45, i64 -1, i64 %46)
  %cmp43 = icmp sle i64 %call42, 0
  br i1 %cmp43, label %if.then.44, label %if.end.47

if.then.44:                                       ; preds = %land.lhs.true.41, %if.then.35
  %47 = load i64, i64* %count, align 8
  %call45 = call i64 @builtin_lisp_symbol(i32 0)
  %call46 = call i64 @unbind_to(i64 %47, i64 %call45)
  store i64 %call46, i64* %retval
  br label %return

if.end.47:                                        ; preds = %land.lhs.true.41, %land.lhs.true, %lor.lhs.false
  br label %if.end.50

if.else.48:                                       ; preds = %if.end.32
  %48 = load %struct.window*, %struct.window** %win.addr, align 8
  %frame49 = getelementptr inbounds %struct.window, %struct.window* %48, i32 0, i32 1
  %49 = load i64, i64* %frame49, align 8
  store i64 %49, i64* %font_object, align 8
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.48, %if.end.47
  %50 = load i64, i64* %pos, align 8
  %51 = load i64, i64* %to, align 8
  %shl51 = shl i64 %51, 2
  %add52 = add i64 %shl51, 2
  %52 = load i64, i64* %font_object, align 8
  %53 = load i64, i64* %string.addr, align 8
  %call53 = call i64 @Fcomposition_get_gstring(i64 %50, i64 %add52, i64 %52, i64 %53)
  store i64 %call53, i64* %lgstring, align 8
  %54 = load i64, i64* %lgstring, align 8
  %call54 = call i64 @AREF(i64 %54, i64 1)
  %call55 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp56 = icmp eq i64 %call54, %call55
  br i1 %cmp56, label %if.then.57, label %if.end.67

if.then.57:                                       ; preds = %if.end.50
  %55 = load i64, i64* %string.addr, align 8
  %call58 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp59 = icmp eq i64 %55, %call58
  br i1 %cmp59, label %if.then.60, label %if.end.62

if.then.60:                                       ; preds = %if.then.57
  %56 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %57 = load i64, i64* %pt, align 8
  %58 = load i64, i64* %pt_byte, align 8
  %call61 = call i64 @build_marker(%struct.buffer* %56, i64 %57, i64 %58)
  call void @record_unwind_protect(void (i64)* @restore_point_unwind, i64 %call61)
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.60, %if.then.57
  %59 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 5), align 8
  %60 = load i64, i64* %rule.addr, align 8
  %call63 = call i64 @AREF(i64 %60, i64 2)
  %61 = load i64, i64* %pos, align 8
  %62 = load i64, i64* %to, align 8
  %shl64 = shl i64 %62, 2
  %add65 = add i64 %shl64, 2
  %63 = load i64, i64* %font_object, align 8
  %64 = load i64, i64* %string.addr, align 8
  %call66 = call i64 (i64, i64, ...) @safe_call(i64 6, i64 %59, i64 %call63, i64 %61, i64 %add65, i64 %63, i64 %64)
  store i64 %call66, i64* %lgstring, align 8
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.62, %if.end.50
  %65 = load i64, i64* %count, align 8
  %66 = load i64, i64* %lgstring, align 8
  %call68 = call i64 @unbind_to(i64 %65, i64 %66)
  store i64 %call68, i64* %retval
  br label %return

return:                                           ; preds = %if.end.67, %if.then.44, %if.then.29, %if.then.8
  %67 = load i64, i64* %retval
  ret i64 %67
}

; Function Attrs: nounwind uwtable
define i32 @composition_update_it(%struct.composition_it* %cmp_it, i64 %charpos, i64 %bytepos, i64 %string) #0 {
entry:
  %retval = alloca i32, align 4
  %cmp_it.addr = alloca %struct.composition_it*, align 8
  %charpos.addr = alloca i64, align 8
  %bytepos.addr = alloca i64, align 8
  %string.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %cmp1 = alloca %struct.composition*, align 8
  %gstring = alloca i64, align 8
  %glyph = alloca i64, align 8
  %from = alloca i64, align 8
  store %struct.composition_it* %cmp_it, %struct.composition_it** %cmp_it.addr, align 8
  store i64 %charpos, i64* %charpos.addr, align 8
  store i64 %bytepos, i64* %bytepos.addr, align 8
  store i64 %string, i64* %string.addr, align 8
  %0 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %ch = getelementptr inbounds %struct.composition_it, %struct.composition_it* %0, i32 0, i32 2
  %1 = load i32, i32* %ch, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else.34

if.then:                                          ; preds = %entry
  %2 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %id = getelementptr inbounds %struct.composition_it, %struct.composition_it* %2, i32 0, i32 1
  %3 = load i64, i64* %id, align 8
  %4 = load %struct.composition**, %struct.composition*** @composition_table, align 8
  %arrayidx = getelementptr inbounds %struct.composition*, %struct.composition** %4, i64 %3
  %5 = load %struct.composition*, %struct.composition** %arrayidx, align 8
  store %struct.composition* %5, %struct.composition** %cmp1, align 8
  %6 = load i64, i64* %charpos.addr, align 8
  %7 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %charpos2 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %7, i32 0, i32 7
  store i64 %6, i64* %charpos2, align 8
  %8 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %nglyphs = getelementptr inbounds %struct.composition_it, %struct.composition_it* %8, i32 0, i32 5
  %9 = load i32, i32* %nglyphs, align 4
  %10 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %to = getelementptr inbounds %struct.composition_it, %struct.composition_it* %10, i32 0, i32 11
  store i32 %9, i32* %to, align 4
  %11 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %nglyphs3 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %11, i32 0, i32 5
  %12 = load i32, i32* %nglyphs3, align 4
  %cmp4 = icmp eq i32 %12, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  store i32 -1, i32* %c, align 4
  br label %if.end.21

if.else:                                          ; preds = %if.then
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %13 = load i32, i32* %i, align 4
  %14 = load %struct.composition*, %struct.composition** %cmp1, align 8
  %glyph_len = getelementptr inbounds %struct.composition, %struct.composition* %14, i32 0, i32 0
  %15 = load i32, i32* %glyph_len, align 4
  %cmp6 = icmp slt i32 %13, %15
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct.composition*, %struct.composition** %cmp1, align 8
  %method = getelementptr inbounds %struct.composition, %struct.composition* %16, i32 0, i32 7
  %17 = load i32, i32* %method, align 4
  %cmp7 = icmp eq i32 %17, 3
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %18, 2
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %19 = load i32, i32* %i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %mul, %cond.true ], [ %19, %cond.false ]
  %idxprom = sext i32 %cond to i64
  %20 = load %struct.composition*, %struct.composition** %cmp1, align 8
  %hash_index = getelementptr inbounds %struct.composition, %struct.composition* %20, i32 0, i32 8
  %21 = load i64, i64* %hash_index, align 8
  %mul8 = mul nsw i64 %21, 2
  %22 = load i64, i64* @composition_hash_table, align 8
  %call = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %22)
  %key_and_value = getelementptr inbounds %struct.Lisp_Hash_Table, %struct.Lisp_Hash_Table* %call, i32 0, i32 9
  %23 = load i64, i64* %key_and_value, align 8
  %call9 = call %struct.Lisp_Vector* @XVECTOR(i64 %23)
  %contents = getelementptr inbounds %struct.Lisp_Vector, %struct.Lisp_Vector* %call9, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [0 x i64], [0 x i64]* %contents, i32 0, i64 %mul8
  %24 = load i64, i64* %arrayidx10, align 8
  %call11 = call %struct.Lisp_Vector* @XVECTOR(i64 %24)
  %contents12 = getelementptr inbounds %struct.Lisp_Vector, %struct.Lisp_Vector* %call11, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [0 x i64], [0 x i64]* %contents12, i32 0, i64 %idxprom
  %25 = load i64, i64* %arrayidx13, align 8
  %shr = ashr i64 %25, 2
  %conv = trunc i64 %shr to i32
  store i32 %conv, i32* %c, align 4
  %cmp14 = icmp ne i32 %conv, 9
  br i1 %cmp14, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %cond.end
  br label %for.end

if.end:                                           ; preds = %cond.end
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %26 = load i32, i32* %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.16, %for.cond
  %27 = load i32, i32* %c, align 4
  %cmp17 = icmp eq i32 %27, 9
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %for.end
  store i32 32, i32* %c, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %for.end
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then.5
  %28 = load %struct.composition*, %struct.composition** %cmp1, align 8
  %width = getelementptr inbounds %struct.composition, %struct.composition* %28, i32 0, i32 6
  %29 = load i32, i32* %width, align 4
  %30 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %width22 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %30, i32 0, i32 12
  store i32 %29, i32* %width22, align 4
  %31 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %nchars = getelementptr inbounds %struct.composition_it, %struct.composition_it* %31, i32 0, i32 8
  %32 = load i32, i32* %nchars, align 4
  %conv23 = sext i32 %32 to i64
  %33 = load i64, i64* %charpos.addr, align 8
  %add = add nsw i64 %33, %conv23
  store i64 %add, i64* %charpos.addr, align 8
  %34 = load i64, i64* %string.addr, align 8
  %call24 = call zeroext i1 @STRINGP(i64 %34)
  br i1 %call24, label %if.then.25, label %if.else.28

if.then.25:                                       ; preds = %if.end.21
  %35 = load i64, i64* %string.addr, align 8
  %36 = load i64, i64* %charpos.addr, align 8
  %call26 = call i64 @string_char_to_byte(i64 %35, i64 %36)
  %37 = load i64, i64* %bytepos.addr, align 8
  %sub = sub nsw i64 %call26, %37
  %conv27 = trunc i64 %sub to i32
  %38 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %nbytes = getelementptr inbounds %struct.composition_it, %struct.composition_it* %38, i32 0, i32 9
  store i32 %conv27, i32* %nbytes, align 4
  br label %if.end.33

if.else.28:                                       ; preds = %if.end.21
  %39 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %40 = load i64, i64* %charpos.addr, align 8
  %call29 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %39, i64 %40)
  %41 = load i64, i64* %bytepos.addr, align 8
  %sub30 = sub nsw i64 %call29, %41
  %conv31 = trunc i64 %sub30 to i32
  %42 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %nbytes32 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %42, i32 0, i32 9
  store i32 %conv31, i32* %nbytes32, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.28, %if.then.25
  br label %if.end.227

if.else.34:                                       ; preds = %entry
  %43 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %id35 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %43, i32 0, i32 1
  %44 = load i64, i64* %id35, align 8
  %call36 = call i64 @composition_gstring_from_id(i64 %44)
  store i64 %call36, i64* %gstring, align 8
  %45 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %nglyphs37 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %45, i32 0, i32 5
  %46 = load i32, i32* %nglyphs37, align 4
  %cmp38 = icmp eq i32 %46, 0
  br i1 %cmp38, label %if.then.40, label %if.end.49

if.then.40:                                       ; preds = %if.else.34
  %47 = load i64, i64* %gstring, align 8
  %call41 = call i64 @AREF(i64 %47, i64 0)
  %call42 = call i64 @ASIZE(i64 %call41)
  %sub43 = sub nsw i64 %call42, 1
  %conv44 = trunc i64 %sub43 to i32
  %48 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %nchars45 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %48, i32 0, i32 8
  store i32 %conv44, i32* %nchars45, align 4
  %49 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %width46 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %49, i32 0, i32 12
  store i32 0, i32* %width46, align 4
  %50 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %to47 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %50, i32 0, i32 11
  store i32 0, i32* %to47, align 4
  %51 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %from48 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %51, i32 0, i32 10
  store i32 0, i32* %from48, align 4
  store i32 -1, i32* %retval
  br label %return

if.end.49:                                        ; preds = %if.else.34
  %52 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %reversed_p = getelementptr inbounds %struct.composition_it, %struct.composition_it* %52, i32 0, i32 6
  %53 = load i8, i8* %reversed_p, align 1
  %tobool = trunc i8 %53 to i1
  br i1 %tobool, label %if.else.81, label %if.then.50

if.then.50:                                       ; preds = %if.end.49
  %54 = load i64, i64* %gstring, align 8
  %55 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %from51 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %55, i32 0, i32 10
  %56 = load i32, i32* %from51, align 4
  %add52 = add nsw i32 %56, 2
  %conv53 = sext i32 %add52 to i64
  %call54 = call i64 @AREF(i64 %54, i64 %conv53)
  store i64 %call54, i64* %glyph, align 8
  %57 = load i64, i64* %glyph, align 8
  %call55 = call i64 @AREF(i64 %57, i64 0)
  %shr56 = ashr i64 %call55, 2
  store i64 %shr56, i64* %from, align 8
  %58 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %from57 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %58, i32 0, i32 10
  %59 = load i32, i32* %from57, align 4
  %add58 = add nsw i32 %59, 1
  %60 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %to59 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %60, i32 0, i32 11
  store i32 %add58, i32* %to59, align 4
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.76, %if.then.50
  %61 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %to61 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %61, i32 0, i32 11
  %62 = load i32, i32* %to61, align 4
  %63 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %nglyphs62 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %63, i32 0, i32 5
  %64 = load i32, i32* %nglyphs62, align 4
  %cmp63 = icmp slt i32 %62, %64
  br i1 %cmp63, label %for.body.65, label %for.end.79

for.body.65:                                      ; preds = %for.cond.60
  %65 = load i64, i64* %gstring, align 8
  %66 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %to66 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %66, i32 0, i32 11
  %67 = load i32, i32* %to66, align 4
  %add67 = add nsw i32 %67, 2
  %conv68 = sext i32 %add67 to i64
  %call69 = call i64 @AREF(i64 %65, i64 %conv68)
  store i64 %call69, i64* %glyph, align 8
  %68 = load i64, i64* %glyph, align 8
  %call70 = call i64 @AREF(i64 %68, i64 0)
  %shr71 = ashr i64 %call70, 2
  %69 = load i64, i64* %from, align 8
  %cmp72 = icmp ne i64 %shr71, %69
  br i1 %cmp72, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %for.body.65
  br label %for.end.79

if.end.75:                                        ; preds = %for.body.65
  br label %for.inc.76

for.inc.76:                                       ; preds = %if.end.75
  %70 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %to77 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %70, i32 0, i32 11
  %71 = load i32, i32* %to77, align 4
  %inc78 = add nsw i32 %71, 1
  store i32 %inc78, i32* %to77, align 4
  br label %for.cond.60

for.end.79:                                       ; preds = %if.then.74, %for.cond.60
  %72 = load i64, i64* %charpos.addr, align 8
  %73 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %charpos80 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %73, i32 0, i32 7
  store i64 %72, i64* %charpos80, align 8
  br label %if.end.116

if.else.81:                                       ; preds = %if.end.49
  %74 = load i64, i64* %gstring, align 8
  %75 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %to82 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %75, i32 0, i32 11
  %76 = load i32, i32* %to82, align 4
  %sub83 = sub nsw i32 %76, 1
  %add84 = add nsw i32 %sub83, 2
  %conv85 = sext i32 %add84 to i64
  %call86 = call i64 @AREF(i64 %74, i64 %conv85)
  store i64 %call86, i64* %glyph, align 8
  %77 = load i64, i64* %glyph, align 8
  %call87 = call i64 @AREF(i64 %77, i64 0)
  %shr88 = ashr i64 %call87, 2
  store i64 %shr88, i64* %from, align 8
  %78 = load i64, i64* %charpos.addr, align 8
  %79 = load i64, i64* %glyph, align 8
  %call89 = call i64 @AREF(i64 %79, i64 1)
  %shr90 = ashr i64 %call89, 2
  %80 = load i64, i64* %from, align 8
  %sub91 = sub nsw i64 %shr90, %80
  %sub92 = sub nsw i64 %78, %sub91
  %81 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %charpos93 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %81, i32 0, i32 7
  store i64 %sub92, i64* %charpos93, align 8
  %82 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %to94 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %82, i32 0, i32 11
  %83 = load i32, i32* %to94, align 4
  %sub95 = sub nsw i32 %83, 1
  %84 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %from96 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %84, i32 0, i32 10
  store i32 %sub95, i32* %from96, align 4
  br label %for.cond.97

for.cond.97:                                      ; preds = %for.inc.113, %if.else.81
  %85 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %from98 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %85, i32 0, i32 10
  %86 = load i32, i32* %from98, align 4
  %cmp99 = icmp sgt i32 %86, 0
  br i1 %cmp99, label %for.body.101, label %for.end.115

for.body.101:                                     ; preds = %for.cond.97
  %87 = load i64, i64* %gstring, align 8
  %88 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %from102 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %88, i32 0, i32 10
  %89 = load i32, i32* %from102, align 4
  %sub103 = sub nsw i32 %89, 1
  %add104 = add nsw i32 %sub103, 2
  %conv105 = sext i32 %add104 to i64
  %call106 = call i64 @AREF(i64 %87, i64 %conv105)
  store i64 %call106, i64* %glyph, align 8
  %90 = load i64, i64* %glyph, align 8
  %call107 = call i64 @AREF(i64 %90, i64 0)
  %shr108 = ashr i64 %call107, 2
  %91 = load i64, i64* %from, align 8
  %cmp109 = icmp ne i64 %shr108, %91
  br i1 %cmp109, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %for.body.101
  br label %for.end.115

if.end.112:                                       ; preds = %for.body.101
  br label %for.inc.113

for.inc.113:                                      ; preds = %if.end.112
  %92 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %from114 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %92, i32 0, i32 10
  %93 = load i32, i32* %from114, align 4
  %dec = add nsw i32 %93, -1
  store i32 %dec, i32* %from114, align 4
  br label %for.cond.97

for.end.115:                                      ; preds = %if.then.111, %for.cond.97
  br label %if.end.116

if.end.116:                                       ; preds = %for.end.115, %for.end.79
  %94 = load i64, i64* %gstring, align 8
  %95 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %from117 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %95, i32 0, i32 10
  %96 = load i32, i32* %from117, align 4
  %add118 = add nsw i32 %96, 2
  %conv119 = sext i32 %add118 to i64
  %call120 = call i64 @AREF(i64 %94, i64 %conv119)
  store i64 %call120, i64* %glyph, align 8
  %97 = load i64, i64* %glyph, align 8
  %call121 = call i64 @AREF(i64 %97, i64 1)
  %shr122 = ashr i64 %call121, 2
  %add123 = add nsw i64 %shr122, 1
  %98 = load i64, i64* %from, align 8
  %sub124 = sub nsw i64 %add123, %98
  %conv125 = trunc i64 %sub124 to i32
  %99 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %nchars126 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %99, i32 0, i32 8
  store i32 %conv125, i32* %nchars126, align 4
  %100 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %nbytes127 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %100, i32 0, i32 9
  store i32 0, i32* %nbytes127, align 4
  %101 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %width128 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %101, i32 0, i32 12
  store i32 0, i32* %width128, align 4
  %102 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %nchars129 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %102, i32 0, i32 8
  %103 = load i32, i32* %nchars129, align 4
  %sub130 = sub nsw i32 %103, 1
  store i32 %sub130, i32* %i, align 4
  br label %for.cond.131

for.cond.131:                                     ; preds = %for.inc.224, %if.end.116
  %104 = load i32, i32* %i, align 4
  %cmp132 = icmp sge i32 %104, 0
  br i1 %cmp132, label %for.body.134, label %for.end.226

for.body.134:                                     ; preds = %for.cond.131
  %105 = load i64, i64* %gstring, align 8
  %call135 = call i64 @AREF(i64 %105, i64 0)
  %106 = load i64, i64* %from, align 8
  %107 = load i32, i32* %i, align 4
  %conv136 = sext i32 %107 to i64
  %add137 = add nsw i64 %106, %conv136
  %add138 = add nsw i64 %add137, 1
  %call139 = call i64 @AREF(i64 %call135, i64 %add138)
  %shr140 = ashr i64 %call139, 2
  %conv141 = trunc i64 %shr140 to i32
  store i32 %conv141, i32* %c, align 4
  %108 = load i32, i32* %c, align 4
  %cmp142 = icmp sle i32 %108, 127
  br i1 %cmp142, label %cond.true.144, label %cond.false.145

cond.true.144:                                    ; preds = %for.body.134
  br label %cond.end.167

cond.false.145:                                   ; preds = %for.body.134
  %109 = load i32, i32* %c, align 4
  %cmp146 = icmp sle i32 %109, 2047
  br i1 %cmp146, label %cond.true.148, label %cond.false.149

cond.true.148:                                    ; preds = %cond.false.145
  br label %cond.end.165

cond.false.149:                                   ; preds = %cond.false.145
  %110 = load i32, i32* %c, align 4
  %cmp150 = icmp sle i32 %110, 65535
  br i1 %cmp150, label %cond.true.152, label %cond.false.153

cond.true.152:                                    ; preds = %cond.false.149
  br label %cond.end.163

cond.false.153:                                   ; preds = %cond.false.149
  %111 = load i32, i32* %c, align 4
  %cmp154 = icmp sle i32 %111, 2097151
  br i1 %cmp154, label %cond.true.156, label %cond.false.157

cond.true.156:                                    ; preds = %cond.false.153
  br label %cond.end.161

cond.false.157:                                   ; preds = %cond.false.153
  %112 = load i32, i32* %c, align 4
  %cmp158 = icmp sle i32 %112, 4194175
  %cond160 = select i1 %cmp158, i32 5, i32 2
  br label %cond.end.161

cond.end.161:                                     ; preds = %cond.false.157, %cond.true.156
  %cond162 = phi i32 [ 4, %cond.true.156 ], [ %cond160, %cond.false.157 ]
  br label %cond.end.163

cond.end.163:                                     ; preds = %cond.end.161, %cond.true.152
  %cond164 = phi i32 [ 3, %cond.true.152 ], [ %cond162, %cond.end.161 ]
  br label %cond.end.165

cond.end.165:                                     ; preds = %cond.end.163, %cond.true.148
  %cond166 = phi i32 [ 2, %cond.true.148 ], [ %cond164, %cond.end.163 ]
  br label %cond.end.167

cond.end.167:                                     ; preds = %cond.end.165, %cond.true.144
  %cond168 = phi i32 [ 1, %cond.true.144 ], [ %cond166, %cond.end.165 ]
  %113 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %nbytes169 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %113, i32 0, i32 9
  %114 = load i32, i32* %nbytes169, align 4
  %add170 = add nsw i32 %114, %cond168
  store i32 %add170, i32* %nbytes169, align 4
  br i1 true, label %cond.true.171, label %cond.false.175

cond.true.171:                                    ; preds = %cond.end.167
  %115 = load i32, i32* %c, align 4
  %add172 = add i32 %115, 0
  %cmp173 = icmp ult i32 %add172, 128
  br i1 %cmp173, label %cond.true.180, label %cond.false.216

cond.false.175:                                   ; preds = %cond.end.167
  %116 = load i32, i32* %c, align 4
  %conv176 = sext i32 %116 to i64
  %add177 = add i64 %conv176, 0
  %cmp178 = icmp ult i64 %add177, 128
  br i1 %cmp178, label %cond.true.180, label %cond.false.216

cond.true.180:                                    ; preds = %cond.false.175, %cond.true.171
  %117 = load i32, i32* %c, align 4
  %cmp181 = icmp slt i32 %117, 32
  br i1 %cmp181, label %cond.true.183, label %cond.false.202

cond.true.183:                                    ; preds = %cond.true.180
  %118 = load i32, i32* %c, align 4
  %cmp184 = icmp eq i32 %118, 9
  br i1 %cmp184, label %cond.true.186, label %cond.false.189

cond.true.186:                                    ; preds = %cond.true.183
  %119 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %tab_width_ = getelementptr inbounds %struct.buffer, %struct.buffer* %119, i32 0, i32 19
  %120 = load i64, i64* %tab_width_, align 8
  %shr187 = ashr i64 %120, 2
  %call188 = call i32 @sanitize_tab_width(i64 %shr187)
  br label %cond.end.200

cond.false.189:                                   ; preds = %cond.true.183
  %121 = load i32, i32* %c, align 4
  %cmp190 = icmp eq i32 %121, 10
  br i1 %cmp190, label %cond.true.192, label %cond.false.193

cond.true.192:                                    ; preds = %cond.false.189
  br label %cond.end.198

cond.false.193:                                   ; preds = %cond.false.189
  %122 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %ctl_arrow_ = getelementptr inbounds %struct.buffer, %struct.buffer* %122, i32 0, i32 29
  %123 = load i64, i64* %ctl_arrow_, align 8
  %call194 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp195 = icmp eq i64 %123, %call194
  %cond197 = select i1 %cmp195, i32 4, i32 2
  br label %cond.end.198

cond.end.198:                                     ; preds = %cond.false.193, %cond.true.192
  %cond199 = phi i32 [ 0, %cond.true.192 ], [ %cond197, %cond.false.193 ]
  br label %cond.end.200

cond.end.200:                                     ; preds = %cond.end.198, %cond.true.186
  %cond201 = phi i32 [ %call188, %cond.true.186 ], [ %cond199, %cond.end.198 ]
  br label %cond.end.214

cond.false.202:                                   ; preds = %cond.true.180
  %124 = load i32, i32* %c, align 4
  %cmp203 = icmp slt i32 %124, 127
  br i1 %cmp203, label %cond.true.205, label %cond.false.206

cond.true.205:                                    ; preds = %cond.false.202
  br label %cond.end.212

cond.false.206:                                   ; preds = %cond.false.202
  %125 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %ctl_arrow_207 = getelementptr inbounds %struct.buffer, %struct.buffer* %125, i32 0, i32 29
  %126 = load i64, i64* %ctl_arrow_207, align 8
  %call208 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp209 = icmp eq i64 %126, %call208
  %cond211 = select i1 %cmp209, i32 4, i32 2
  br label %cond.end.212

cond.end.212:                                     ; preds = %cond.false.206, %cond.true.205
  %cond213 = phi i32 [ 1, %cond.true.205 ], [ %cond211, %cond.false.206 ]
  br label %cond.end.214

cond.end.214:                                     ; preds = %cond.end.212, %cond.end.200
  %cond215 = phi i32 [ %cond201, %cond.end.200 ], [ %cond213, %cond.end.212 ]
  br label %cond.end.220

cond.false.216:                                   ; preds = %cond.false.175, %cond.true.171
  %127 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 28), align 8
  %128 = load i32, i32* %c, align 4
  %call217 = call i64 @CHAR_TABLE_REF(i64 %127, i32 %128)
  %shr218 = ashr i64 %call217, 2
  %call219 = call i32 @sanitize_char_width(i64 %shr218)
  br label %cond.end.220

cond.end.220:                                     ; preds = %cond.false.216, %cond.end.214
  %cond221 = phi i32 [ %cond215, %cond.end.214 ], [ %call219, %cond.false.216 ]
  %129 = load %struct.composition_it*, %struct.composition_it** %cmp_it.addr, align 8
  %width222 = getelementptr inbounds %struct.composition_it, %struct.composition_it* %129, i32 0, i32 12
  %130 = load i32, i32* %width222, align 4
  %add223 = add nsw i32 %130, %cond221
  store i32 %add223, i32* %width222, align 4
  br label %for.inc.224

for.inc.224:                                      ; preds = %cond.end.220
  %131 = load i32, i32* %i, align 4
  %dec225 = add nsw i32 %131, -1
  store i32 %dec225, i32* %i, align 4
  br label %for.cond.131

for.end.226:                                      ; preds = %for.cond.131
  br label %if.end.227

if.end.227:                                       ; preds = %for.end.226, %if.end.33
  %132 = load i32, i32* %c, align 4
  store i32 %132, i32* %retval
  br label %return

return:                                           ; preds = %if.end.227, %if.then.40
  %133 = load i32, i32* %retval
  ret i32 %133
}

; Function Attrs: nounwind uwtable
define i64 @composition_adjust_point(i64 %last_pt, i64 %new_pt) #0 {
entry:
  %retval = alloca i64, align 8
  %last_pt.addr = alloca i64, align 8
  %new_pt.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %beg = alloca i64, align 8
  %end = alloca i64, align 8
  %val = alloca i64, align 8
  %glyph = alloca i64, align 8
  store i64 %last_pt, i64* %last_pt.addr, align 8
  store i64 %new_pt, i64* %new_pt.addr, align 8
  %0 = load i64, i64* %new_pt.addr, align 8
  %1 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 77
  %2 = load i64, i64* %begv, align 8
  %cmp = icmp eq i64 %0, %2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i64, i64* %new_pt.addr, align 8
  %4 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %4, i32 0, i32 79
  %5 = load i64, i64* %zv, align 8
  %cmp1 = icmp eq i64 %3, %5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load i64, i64* %new_pt.addr, align 8
  store i64 %6, i64* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load i64, i64* %new_pt.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 290)
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %call3 = call zeroext i1 @get_property_and_range(i64 %7, i64 %call, i64* %val, i64* %beg, i64* %end, i64 %call2)
  br i1 %call3, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %if.end
  %8 = load i64, i64* %beg, align 8
  %9 = load i64, i64* %end, align 8
  %10 = load i64, i64* %val, align 8
  %call4 = call zeroext i1 @composition_valid_p(i64 %8, i64 %9, i64 %10)
  br i1 %call4, label %if.then.5, label %if.end.14

if.then.5:                                        ; preds = %land.lhs.true
  %11 = load i64, i64* %beg, align 8
  %12 = load i64, i64* %new_pt.addr, align 8
  %cmp6 = icmp slt i64 %11, %12
  br i1 %cmp6, label %land.lhs.true.7, label %if.end.13

land.lhs.true.7:                                  ; preds = %if.then.5
  %13 = load i64, i64* %last_pt.addr, align 8
  %14 = load i64, i64* %beg, align 8
  %cmp8 = icmp sle i64 %13, %14
  br i1 %cmp8, label %if.then.11, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %land.lhs.true.7
  %15 = load i64, i64* %last_pt.addr, align 8
  %16 = load i64, i64* %end, align 8
  %cmp10 = icmp sge i64 %15, %16
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %lor.lhs.false.9, %land.lhs.true.7
  %17 = load i64, i64* %new_pt.addr, align 8
  %18 = load i64, i64* %last_pt.addr, align 8
  %cmp12 = icmp slt i64 %17, %18
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.11
  %19 = load i64, i64* %beg, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.11
  %20 = load i64, i64* %end, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %19, %cond.true ], [ %20, %cond.false ]
  store i64 %cond, i64* %retval
  br label %return

if.end.13:                                        ; preds = %lor.lhs.false.9, %if.then.5
  %21 = load i64, i64* %new_pt.addr, align 8
  store i64 %21, i64* %retval
  br label %return

if.end.14:                                        ; preds = %land.lhs.true, %if.end
  %22 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_ = getelementptr inbounds %struct.buffer, %struct.buffer* %22, i32 0, i32 39
  %23 = load i64, i64* %enable_multibyte_characters_, align 8
  %call15 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp16 = icmp eq i64 %23, %call15
  br i1 %cmp16, label %if.then.20, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %if.end.14
  %24 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 6), align 8
  %call18 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp19 = icmp eq i64 %24, %call18
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %lor.lhs.false.17, %if.end.14
  %25 = load i64, i64* %new_pt.addr, align 8
  store i64 %25, i64* %retval
  br label %return

if.end.21:                                        ; preds = %lor.lhs.false.17
  %26 = load i64, i64* %new_pt.addr, align 8
  %call22 = call i64 @builtin_lisp_symbol(i32 0)
  %call23 = call zeroext i1 @find_automatic_composition(i64 %26, i64 -1, i64* %beg, i64* %end, i64* %val, i64 %call22)
  br i1 %call23, label %lor.lhs.false.24, label %if.then.26

lor.lhs.false.24:                                 ; preds = %if.end.21
  %27 = load i64, i64* %beg, align 8
  %28 = load i64, i64* %new_pt.addr, align 8
  %cmp25 = icmp eq i64 %27, %28
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %lor.lhs.false.24, %if.end.21
  %29 = load i64, i64* %new_pt.addr, align 8
  store i64 %29, i64* %retval
  br label %return

if.end.27:                                        ; preds = %lor.lhs.false.24
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.27
  %30 = load i64, i64* %i, align 8
  %31 = load i64, i64* %val, align 8
  %call28 = call i64 @ASIZE(i64 %31)
  %sub = sub nsw i64 %call28, 2
  %cmp29 = icmp slt i64 %30, %sub
  br i1 %cmp29, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load i64, i64* %val, align 8
  %33 = load i64, i64* %i, align 8
  %add = add nsw i64 %33, 2
  %call30 = call i64 @AREF(i64 %32, i64 %add)
  store i64 %call30, i64* %glyph, align 8
  %34 = load i64, i64* %glyph, align 8
  %call31 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp32 = icmp eq i64 %34, %call31
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %for.body
  br label %for.end

if.end.34:                                        ; preds = %for.body
  %35 = load i64, i64* %beg, align 8
  %36 = load i64, i64* %glyph, align 8
  %call35 = call i64 @AREF(i64 %36, i64 0)
  %shr = ashr i64 %call35, 2
  %add36 = add nsw i64 %35, %shr
  %37 = load i64, i64* %new_pt.addr, align 8
  %cmp37 = icmp eq i64 %add36, %37
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.34
  %38 = load i64, i64* %new_pt.addr, align 8
  store i64 %38, i64* %retval
  br label %return

if.end.39:                                        ; preds = %if.end.34
  %39 = load i64, i64* %beg, align 8
  %40 = load i64, i64* %glyph, align 8
  %call40 = call i64 @AREF(i64 %40, i64 1)
  %shr41 = ashr i64 %call40, 2
  %add42 = add nsw i64 %39, %shr41
  %41 = load i64, i64* %new_pt.addr, align 8
  %cmp43 = icmp sge i64 %add42, %41
  br i1 %cmp43, label %if.then.44, label %if.end.57

if.then.44:                                       ; preds = %if.end.39
  %42 = load i64, i64* %new_pt.addr, align 8
  %43 = load i64, i64* %last_pt.addr, align 8
  %cmp45 = icmp slt i64 %42, %43
  br i1 %cmp45, label %cond.true.46, label %cond.false.50

cond.true.46:                                     ; preds = %if.then.44
  %44 = load i64, i64* %beg, align 8
  %45 = load i64, i64* %glyph, align 8
  %call47 = call i64 @AREF(i64 %45, i64 0)
  %shr48 = ashr i64 %call47, 2
  %add49 = add nsw i64 %44, %shr48
  br label %cond.end.55

cond.false.50:                                    ; preds = %if.then.44
  %46 = load i64, i64* %beg, align 8
  %47 = load i64, i64* %glyph, align 8
  %call51 = call i64 @AREF(i64 %47, i64 1)
  %shr52 = ashr i64 %call51, 2
  %add53 = add nsw i64 %46, %shr52
  %add54 = add nsw i64 %add53, 1
  br label %cond.end.55

cond.end.55:                                      ; preds = %cond.false.50, %cond.true.46
  %cond56 = phi i64 [ %add49, %cond.true.46 ], [ %add54, %cond.false.50 ]
  store i64 %cond56, i64* %retval
  br label %return

if.end.57:                                        ; preds = %if.end.39
  br label %for.inc

for.inc:                                          ; preds = %if.end.57
  %48 = load i64, i64* %i, align 8
  %inc = add nsw i64 %48, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.33, %for.cond
  %49 = load i64, i64* %new_pt.addr, align 8
  store i64 %49, i64* %retval
  br label %return

return:                                           ; preds = %for.end, %cond.end.55, %if.then.38, %if.then.26, %if.then.20, %if.end.13, %cond.end, %if.then
  %50 = load i64, i64* %retval
  ret i64 %50
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @find_automatic_composition(i64 %pos, i64 %limit, i64* %start, i64* %end, i64* %gstring, i64 %string) #0 {
entry:
  %retval = alloca i1, align 1
  %pos.addr = alloca i64, align 8
  %limit.addr = alloca i64, align 8
  %start.addr = alloca i64*, align 8
  %end.addr = alloca i64*, align 8
  %gstring.addr = alloca i64*, align 8
  %string.addr = alloca i64, align 8
  %head = alloca i64, align 8
  %tail = alloca i64, align 8
  %stop = alloca i64, align 8
  %fore_check_limit = alloca i64, align 8
  %cur = alloca %struct.position_record, align 8
  %prev = alloca %struct.position_record, align 8
  %c = alloca i32, align 4
  %window = alloca i64, align 8
  %w = alloca %struct.window*, align 8
  %need_adjustment = alloca i8, align 1
  %val = alloca i64, align 8
  %elt = alloca i64, align 8
  %check_pos = alloca i64, align 8
  %check = alloca %struct.position_record, align 8
  store i64 %pos, i64* %pos.addr, align 8
  store i64 %limit, i64* %limit.addr, align 8
  store i64* %start, i64** %start.addr, align 8
  store i64* %end, i64** %end.addr, align 8
  store i64* %gstring, i64** %gstring.addr, align 8
  store i64 %string, i64* %string.addr, align 8
  store i8 0, i8* %need_adjustment, align 1
  %call = call i64 @Fcurrent_buffer()
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %call2 = call i64 @Fget_buffer_window(i64 %call, i64 %call1)
  store i64 %call2, i64* %window, align 8
  %0 = load i64, i64* %window, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %window, align 8
  %call4 = call %struct.window* @XWINDOW(i64 %1)
  store %struct.window* %call4, %struct.window** %w, align 8
  %2 = load i64, i64* %pos.addr, align 8
  %pos5 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 0
  store i64 %2, i64* %pos5, align 8
  %3 = load i64, i64* %string.addr, align 8
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp7 = icmp eq i64 %3, %call6
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end
  %4 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %4, i32 0, i32 77
  %5 = load i64, i64* %begv, align 8
  store i64 %5, i64* %head, align 8
  %6 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 79
  %7 = load i64, i64* %zv, align 8
  store i64 %7, i64* %tail, align 8
  %8 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 73
  %9 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %gpt = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %9, i32 0, i32 1
  %10 = load i64, i64* %gpt, align 8
  store i64 %10, i64* %stop, align 8
  %11 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pos9 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 0
  %12 = load i64, i64* %pos9, align 8
  %call10 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %11, i64 %12)
  %pos_byte = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 1
  store i64 %call10, i64* %pos_byte, align 8
  %pos_byte11 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 1
  %13 = load i64, i64* %pos_byte11, align 8
  %14 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text12 = getelementptr inbounds %struct.buffer, %struct.buffer* %14, i32 0, i32 73
  %15 = load %struct.buffer_text*, %struct.buffer_text** %text12, align 8
  %gpt_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %15, i32 0, i32 3
  %16 = load i64, i64* %gpt_byte, align 8
  %cmp13 = icmp sge i64 %13, %16
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.8
  %17 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text14 = getelementptr inbounds %struct.buffer, %struct.buffer* %17, i32 0, i32 73
  %18 = load %struct.buffer_text*, %struct.buffer_text** %text14, align 8
  %gap_size = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %18, i32 0, i32 5
  %19 = load i64, i64* %gap_size, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %19, %cond.true ], [ 0, %cond.false ]
  %pos_byte15 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 1
  %20 = load i64, i64* %pos_byte15, align 8
  %add = add nsw i64 %cond, %20
  %21 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text16 = getelementptr inbounds %struct.buffer, %struct.buffer* %21, i32 0, i32 73
  %22 = load %struct.buffer_text*, %struct.buffer_text** %text16, align 8
  %beg = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %22, i32 0, i32 0
  %23 = load i8*, i8** %beg, align 8
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 %add
  %add.ptr17 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %p = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  store i8* %add.ptr17, i8** %p, align 8
  br label %if.end.26

if.else:                                          ; preds = %if.end
  store i64 0, i64* %head, align 8
  %24 = load i64, i64* %string.addr, align 8
  %call18 = call i64 @SCHARS(i64 %24)
  store i64 %call18, i64* %tail, align 8
  store i64 -1, i64* %stop, align 8
  %25 = load i64, i64* %string.addr, align 8
  %pos19 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 0
  %26 = load i64, i64* %pos19, align 8
  %call20 = call i64 @string_char_to_byte(i64 %25, i64 %26)
  %pos_byte21 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 1
  store i64 %call20, i64* %pos_byte21, align 8
  %27 = load i64, i64* %string.addr, align 8
  %call22 = call i8* @SDATA(i64 %27)
  %pos_byte23 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 1
  %28 = load i64, i64* %pos_byte23, align 8
  %add.ptr24 = getelementptr inbounds i8, i8* %call22, i64 %28
  %p25 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  store i8* %add.ptr24, i8** %p25, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.else, %cond.end
  %29 = load i64, i64* %limit.addr, align 8
  %cmp27 = icmp slt i64 %29, 0
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.26
  %30 = load i64, i64* %pos.addr, align 8
  store i64 %30, i64* %limit.addr, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.end.26
  %31 = load i64, i64* %limit.addr, align 8
  %32 = load i64, i64* %pos.addr, align 8
  %cmp30 = icmp sle i64 %31, %32
  br i1 %cmp30, label %if.then.31, label %if.else.41

if.then.31:                                       ; preds = %if.end.29
  %33 = load i64, i64* %tail, align 8
  %34 = load i64, i64* %pos.addr, align 8
  %add32 = add nsw i64 %34, 1
  %add33 = add nsw i64 %add32, 3
  %cmp34 = icmp slt i64 %33, %add33
  br i1 %cmp34, label %cond.true.35, label %cond.false.36

cond.true.35:                                     ; preds = %if.then.31
  %35 = load i64, i64* %tail, align 8
  br label %cond.end.39

cond.false.36:                                    ; preds = %if.then.31
  %36 = load i64, i64* %pos.addr, align 8
  %add37 = add nsw i64 %36, 1
  %add38 = add nsw i64 %add37, 3
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.false.36, %cond.true.35
  %cond40 = phi i64 [ %35, %cond.true.35 ], [ %add38, %cond.false.36 ]
  store i64 %cond40, i64* %fore_check_limit, align 8
  br label %if.end.49

if.else.41:                                       ; preds = %if.end.29
  %37 = load i64, i64* %tail, align 8
  %38 = load i64, i64* %limit.addr, align 8
  %add42 = add nsw i64 %38, 3
  %cmp43 = icmp slt i64 %37, %add42
  br i1 %cmp43, label %cond.true.44, label %cond.false.45

cond.true.44:                                     ; preds = %if.else.41
  %39 = load i64, i64* %tail, align 8
  br label %cond.end.47

cond.false.45:                                    ; preds = %if.else.41
  %40 = load i64, i64* %limit.addr, align 8
  %add46 = add nsw i64 %40, 3
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.45, %cond.true.44
  %cond48 = phi i64 [ %39, %cond.true.44 ], [ %add46, %cond.false.45 ]
  store i64 %cond48, i64* %fore_check_limit, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %cond.end.47, %cond.end.39
  br label %while.body

while.body:                                       ; preds = %if.end.49, %do.end.720
  %p50 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %41 = load i8*, i8** %p50, align 8
  %arrayidx = getelementptr inbounds i8, i8* %41, i64 0
  %42 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %42 to i32
  %and = and i32 %conv, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.false.55, label %cond.true.51

cond.true.51:                                     ; preds = %while.body
  %p52 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %43 = load i8*, i8** %p52, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %43, i64 0
  %44 = load i8, i8* %arrayidx53, align 1
  %conv54 = zext i8 %44 to i32
  br label %cond.end.107

cond.false.55:                                    ; preds = %while.body
  %p56 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %45 = load i8*, i8** %p56, align 8
  %arrayidx57 = getelementptr inbounds i8, i8* %45, i64 0
  %46 = load i8, i8* %arrayidx57, align 1
  %conv58 = zext i8 %46 to i32
  %and59 = and i32 %conv58, 32
  %tobool60 = icmp ne i32 %and59, 0
  br i1 %tobool60, label %cond.false.77, label %cond.true.61

cond.true.61:                                     ; preds = %cond.false.55
  %p62 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %47 = load i8*, i8** %p62, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %47, i64 0
  %48 = load i8, i8* %arrayidx63, align 1
  %conv64 = zext i8 %48 to i32
  %and65 = and i32 %conv64, 31
  %shl = shl i32 %and65, 6
  %p66 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %49 = load i8*, i8** %p66, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %49, i64 1
  %50 = load i8, i8* %arrayidx67, align 1
  %conv68 = zext i8 %50 to i32
  %and69 = and i32 %conv68, 63
  %or = or i32 %shl, %and69
  %p70 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %51 = load i8*, i8** %p70, align 8
  %arrayidx71 = getelementptr inbounds i8, i8* %51, i64 0
  %52 = load i8, i8* %arrayidx71, align 1
  %conv72 = zext i8 %52 to i32
  %cmp73 = icmp slt i32 %conv72, 194
  %cond75 = select i1 %cmp73, i32 4194176, i32 0
  %add76 = add nsw i32 %or, %cond75
  br label %cond.end.105

cond.false.77:                                    ; preds = %cond.false.55
  %p78 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %53 = load i8*, i8** %p78, align 8
  %arrayidx79 = getelementptr inbounds i8, i8* %53, i64 0
  %54 = load i8, i8* %arrayidx79, align 1
  %conv80 = zext i8 %54 to i32
  %and81 = and i32 %conv80, 16
  %tobool82 = icmp ne i32 %and81, 0
  br i1 %tobool82, label %cond.false.100, label %cond.true.83

cond.true.83:                                     ; preds = %cond.false.77
  %p84 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %55 = load i8*, i8** %p84, align 8
  %arrayidx85 = getelementptr inbounds i8, i8* %55, i64 0
  %56 = load i8, i8* %arrayidx85, align 1
  %conv86 = zext i8 %56 to i32
  %and87 = and i32 %conv86, 15
  %shl88 = shl i32 %and87, 12
  %p89 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %57 = load i8*, i8** %p89, align 8
  %arrayidx90 = getelementptr inbounds i8, i8* %57, i64 1
  %58 = load i8, i8* %arrayidx90, align 1
  %conv91 = zext i8 %58 to i32
  %and92 = and i32 %conv91, 63
  %shl93 = shl i32 %and92, 6
  %or94 = or i32 %shl88, %shl93
  %p95 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %59 = load i8*, i8** %p95, align 8
  %arrayidx96 = getelementptr inbounds i8, i8* %59, i64 2
  %60 = load i8, i8* %arrayidx96, align 1
  %conv97 = zext i8 %60 to i32
  %and98 = and i32 %conv97, 63
  %or99 = or i32 %or94, %and98
  br label %cond.end.103

cond.false.100:                                   ; preds = %cond.false.77
  %p101 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %61 = load i8*, i8** %p101, align 8
  %call102 = call i32 @string_char(i8* %61, i8** null, i32* null)
  br label %cond.end.103

cond.end.103:                                     ; preds = %cond.false.100, %cond.true.83
  %cond104 = phi i32 [ %or99, %cond.true.83 ], [ %call102, %cond.false.100 ]
  br label %cond.end.105

cond.end.105:                                     ; preds = %cond.end.103, %cond.true.61
  %cond106 = phi i32 [ %add76, %cond.true.61 ], [ %cond104, %cond.end.103 ]
  br label %cond.end.107

cond.end.107:                                     ; preds = %cond.end.105, %cond.true.51
  %cond108 = phi i32 [ %conv54, %cond.true.51 ], [ %cond106, %cond.end.105 ]
  store i32 %cond108, i32* %c, align 4
  %62 = load i32, i32* %c, align 4
  %call109 = call zeroext i1 @char_composable_p(i32 %62)
  br i1 %call109, label %if.end.217, label %if.then.110

if.then.110:                                      ; preds = %cond.end.107
  %63 = load i64, i64* %limit.addr, align 8
  %64 = load i64, i64* %pos.addr, align 8
  %cmp111 = icmp sle i64 %63, %64
  br i1 %cmp111, label %if.then.113, label %if.else.215

if.then.113:                                      ; preds = %if.then.110
  br label %do.body

do.body:                                          ; preds = %do.cond.209, %if.then.113
  %pos114 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 0
  %65 = load i64, i64* %pos114, align 8
  %66 = load i64, i64* %limit.addr, align 8
  %cmp115 = icmp sle i64 %65, %66
  br i1 %cmp115, label %if.then.117, label %if.end.118

if.then.117:                                      ; preds = %do.body
  store i1 false, i1* %retval
  br label %return

if.end.118:                                       ; preds = %do.body
  br label %do.body.119

do.body.119:                                      ; preds = %if.end.118
  %pos120 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 0
  %67 = load i64, i64* %pos120, align 8
  %68 = load i64, i64* %stop, align 8
  %cmp121 = icmp eq i64 %67, %68
  br i1 %cmp121, label %if.then.123, label %if.end.131

if.then.123:                                      ; preds = %do.body.119
  %69 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text124 = getelementptr inbounds %struct.buffer, %struct.buffer* %69, i32 0, i32 73
  %70 = load %struct.buffer_text*, %struct.buffer_text** %text124, align 8
  %beg125 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %70, i32 0, i32 0
  %71 = load i8*, i8** %beg125, align 8
  %72 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text126 = getelementptr inbounds %struct.buffer, %struct.buffer* %72, i32 0, i32 73
  %73 = load %struct.buffer_text*, %struct.buffer_text** %text126, align 8
  %gpt_byte127 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %73, i32 0, i32 3
  %74 = load i64, i64* %gpt_byte127, align 8
  %add.ptr128 = getelementptr inbounds i8, i8* %71, i64 %74
  %add.ptr129 = getelementptr inbounds i8, i8* %add.ptr128, i64 -1
  %p130 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  store i8* %add.ptr129, i8** %p130, align 8
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.123, %do.body.119
  br label %do.body.132

do.body.132:                                      ; preds = %do.cond, %if.end.131
  %pos_byte133 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 1
  %75 = load i64, i64* %pos_byte133, align 8
  %dec = add nsw i64 %75, -1
  store i64 %dec, i64* %pos_byte133, align 8
  %p134 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %76 = load i8*, i8** %p134, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %76, i32 -1
  store i8* %incdec.ptr, i8** %p134, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body.132
  %p135 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %77 = load i8*, i8** %p135, align 8
  %78 = load i8, i8* %77, align 1
  %conv136 = zext i8 %78 to i32
  %and137 = and i32 %conv136, 192
  %cmp138 = icmp ne i32 %and137, 128
  %lnot = xor i1 %cmp138, true
  br i1 %lnot, label %do.body.132, label %do.end

do.end:                                           ; preds = %do.cond
  %pos140 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 0
  %79 = load i64, i64* %pos140, align 8
  %dec141 = add nsw i64 %79, -1
  store i64 %dec141, i64* %pos140, align 8
  br label %do.end.143

do.end.143:                                       ; preds = %do.end
  %p144 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %80 = load i8*, i8** %p144, align 8
  %arrayidx145 = getelementptr inbounds i8, i8* %80, i64 0
  %81 = load i8, i8* %arrayidx145, align 1
  %conv146 = zext i8 %81 to i32
  %and147 = and i32 %conv146, 128
  %tobool148 = icmp ne i32 %and147, 0
  br i1 %tobool148, label %cond.false.153, label %cond.true.149

cond.true.149:                                    ; preds = %do.end.143
  %p150 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %82 = load i8*, i8** %p150, align 8
  %arrayidx151 = getelementptr inbounds i8, i8* %82, i64 0
  %83 = load i8, i8* %arrayidx151, align 1
  %conv152 = zext i8 %83 to i32
  br label %cond.end.207

cond.false.153:                                   ; preds = %do.end.143
  %p154 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %84 = load i8*, i8** %p154, align 8
  %arrayidx155 = getelementptr inbounds i8, i8* %84, i64 0
  %85 = load i8, i8* %arrayidx155, align 1
  %conv156 = zext i8 %85 to i32
  %and157 = and i32 %conv156, 32
  %tobool158 = icmp ne i32 %and157, 0
  br i1 %tobool158, label %cond.false.177, label %cond.true.159

cond.true.159:                                    ; preds = %cond.false.153
  %p160 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %86 = load i8*, i8** %p160, align 8
  %arrayidx161 = getelementptr inbounds i8, i8* %86, i64 0
  %87 = load i8, i8* %arrayidx161, align 1
  %conv162 = zext i8 %87 to i32
  %and163 = and i32 %conv162, 31
  %shl164 = shl i32 %and163, 6
  %p165 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %88 = load i8*, i8** %p165, align 8
  %arrayidx166 = getelementptr inbounds i8, i8* %88, i64 1
  %89 = load i8, i8* %arrayidx166, align 1
  %conv167 = zext i8 %89 to i32
  %and168 = and i32 %conv167, 63
  %or169 = or i32 %shl164, %and168
  %p170 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %90 = load i8*, i8** %p170, align 8
  %arrayidx171 = getelementptr inbounds i8, i8* %90, i64 0
  %91 = load i8, i8* %arrayidx171, align 1
  %conv172 = zext i8 %91 to i32
  %cmp173 = icmp slt i32 %conv172, 194
  %cond175 = select i1 %cmp173, i32 4194176, i32 0
  %add176 = add nsw i32 %or169, %cond175
  br label %cond.end.205

cond.false.177:                                   ; preds = %cond.false.153
  %p178 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %92 = load i8*, i8** %p178, align 8
  %arrayidx179 = getelementptr inbounds i8, i8* %92, i64 0
  %93 = load i8, i8* %arrayidx179, align 1
  %conv180 = zext i8 %93 to i32
  %and181 = and i32 %conv180, 16
  %tobool182 = icmp ne i32 %and181, 0
  br i1 %tobool182, label %cond.false.200, label %cond.true.183

cond.true.183:                                    ; preds = %cond.false.177
  %p184 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %94 = load i8*, i8** %p184, align 8
  %arrayidx185 = getelementptr inbounds i8, i8* %94, i64 0
  %95 = load i8, i8* %arrayidx185, align 1
  %conv186 = zext i8 %95 to i32
  %and187 = and i32 %conv186, 15
  %shl188 = shl i32 %and187, 12
  %p189 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %96 = load i8*, i8** %p189, align 8
  %arrayidx190 = getelementptr inbounds i8, i8* %96, i64 1
  %97 = load i8, i8* %arrayidx190, align 1
  %conv191 = zext i8 %97 to i32
  %and192 = and i32 %conv191, 63
  %shl193 = shl i32 %and192, 6
  %or194 = or i32 %shl188, %shl193
  %p195 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %98 = load i8*, i8** %p195, align 8
  %arrayidx196 = getelementptr inbounds i8, i8* %98, i64 2
  %99 = load i8, i8* %arrayidx196, align 1
  %conv197 = zext i8 %99 to i32
  %and198 = and i32 %conv197, 63
  %or199 = or i32 %or194, %and198
  br label %cond.end.203

cond.false.200:                                   ; preds = %cond.false.177
  %p201 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %100 = load i8*, i8** %p201, align 8
  %call202 = call i32 @string_char(i8* %100, i8** null, i32* null)
  br label %cond.end.203

cond.end.203:                                     ; preds = %cond.false.200, %cond.true.183
  %cond204 = phi i32 [ %or199, %cond.true.183 ], [ %call202, %cond.false.200 ]
  br label %cond.end.205

cond.end.205:                                     ; preds = %cond.end.203, %cond.true.159
  %cond206 = phi i32 [ %add176, %cond.true.159 ], [ %cond204, %cond.end.203 ]
  br label %cond.end.207

cond.end.207:                                     ; preds = %cond.end.205, %cond.true.149
  %cond208 = phi i32 [ %conv152, %cond.true.149 ], [ %cond206, %cond.end.205 ]
  store i32 %cond208, i32* %c, align 4
  br label %do.cond.209

do.cond.209:                                      ; preds = %cond.end.207
  %101 = load i32, i32* %c, align 4
  %call210 = call zeroext i1 @char_composable_p(i32 %101)
  %lnot211 = xor i1 %call210, true
  br i1 %lnot211, label %do.body, label %do.end.212

do.end.212:                                       ; preds = %do.cond.209
  %pos213 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 0
  %102 = load i64, i64* %pos213, align 8
  %add214 = add nsw i64 %102, 1
  store i64 %add214, i64* %fore_check_limit, align 8
  br label %if.end.216

if.else.215:                                      ; preds = %if.then.110
  br label %search_forward

if.end.216:                                       ; preds = %do.end.212
  br label %if.end.217

if.end.217:                                       ; preds = %if.end.216, %cond.end.107
  br label %while.cond.218

while.cond.218:                                   ; preds = %if.end.320, %if.end.217
  %103 = load i64, i64* %head, align 8
  %pos219 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 0
  %104 = load i64, i64* %pos219, align 8
  %cmp220 = icmp slt i64 %103, %104
  br i1 %cmp220, label %while.body.222, label %while.end

while.body.222:                                   ; preds = %while.cond.218
  %105 = bitcast %struct.position_record* %prev to i8*
  %106 = bitcast %struct.position_record* %cur to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %105, i8* %106, i64 24, i32 8, i1 false)
  br label %do.body.223

do.body.223:                                      ; preds = %while.body.222
  %pos224 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 0
  %107 = load i64, i64* %pos224, align 8
  %108 = load i64, i64* %stop, align 8
  %cmp225 = icmp eq i64 %107, %108
  br i1 %cmp225, label %if.then.227, label %if.end.235

if.then.227:                                      ; preds = %do.body.223
  %109 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text228 = getelementptr inbounds %struct.buffer, %struct.buffer* %109, i32 0, i32 73
  %110 = load %struct.buffer_text*, %struct.buffer_text** %text228, align 8
  %beg229 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %110, i32 0, i32 0
  %111 = load i8*, i8** %beg229, align 8
  %112 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text230 = getelementptr inbounds %struct.buffer, %struct.buffer* %112, i32 0, i32 73
  %113 = load %struct.buffer_text*, %struct.buffer_text** %text230, align 8
  %gpt_byte231 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %113, i32 0, i32 3
  %114 = load i64, i64* %gpt_byte231, align 8
  %add.ptr232 = getelementptr inbounds i8, i8* %111, i64 %114
  %add.ptr233 = getelementptr inbounds i8, i8* %add.ptr232, i64 -1
  %p234 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  store i8* %add.ptr233, i8** %p234, align 8
  br label %if.end.235

if.end.235:                                       ; preds = %if.then.227, %do.body.223
  br label %do.body.236

do.body.236:                                      ; preds = %do.cond.241, %if.end.235
  %pos_byte237 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 1
  %115 = load i64, i64* %pos_byte237, align 8
  %dec238 = add nsw i64 %115, -1
  store i64 %dec238, i64* %pos_byte237, align 8
  %p239 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %116 = load i8*, i8** %p239, align 8
  %incdec.ptr240 = getelementptr inbounds i8, i8* %116, i32 -1
  store i8* %incdec.ptr240, i8** %p239, align 8
  br label %do.cond.241

do.cond.241:                                      ; preds = %do.body.236
  %p242 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %117 = load i8*, i8** %p242, align 8
  %118 = load i8, i8* %117, align 1
  %conv243 = zext i8 %118 to i32
  %and244 = and i32 %conv243, 192
  %cmp245 = icmp ne i32 %and244, 128
  %lnot247 = xor i1 %cmp245, true
  br i1 %lnot247, label %do.body.236, label %do.end.248

do.end.248:                                       ; preds = %do.cond.241
  %pos249 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 0
  %119 = load i64, i64* %pos249, align 8
  %dec250 = add nsw i64 %119, -1
  store i64 %dec250, i64* %pos249, align 8
  br label %do.end.252

do.end.252:                                       ; preds = %do.end.248
  %p253 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %120 = load i8*, i8** %p253, align 8
  %arrayidx254 = getelementptr inbounds i8, i8* %120, i64 0
  %121 = load i8, i8* %arrayidx254, align 1
  %conv255 = zext i8 %121 to i32
  %and256 = and i32 %conv255, 128
  %tobool257 = icmp ne i32 %and256, 0
  br i1 %tobool257, label %cond.false.262, label %cond.true.258

cond.true.258:                                    ; preds = %do.end.252
  %p259 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %122 = load i8*, i8** %p259, align 8
  %arrayidx260 = getelementptr inbounds i8, i8* %122, i64 0
  %123 = load i8, i8* %arrayidx260, align 1
  %conv261 = zext i8 %123 to i32
  br label %cond.end.316

cond.false.262:                                   ; preds = %do.end.252
  %p263 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %124 = load i8*, i8** %p263, align 8
  %arrayidx264 = getelementptr inbounds i8, i8* %124, i64 0
  %125 = load i8, i8* %arrayidx264, align 1
  %conv265 = zext i8 %125 to i32
  %and266 = and i32 %conv265, 32
  %tobool267 = icmp ne i32 %and266, 0
  br i1 %tobool267, label %cond.false.286, label %cond.true.268

cond.true.268:                                    ; preds = %cond.false.262
  %p269 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %126 = load i8*, i8** %p269, align 8
  %arrayidx270 = getelementptr inbounds i8, i8* %126, i64 0
  %127 = load i8, i8* %arrayidx270, align 1
  %conv271 = zext i8 %127 to i32
  %and272 = and i32 %conv271, 31
  %shl273 = shl i32 %and272, 6
  %p274 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %128 = load i8*, i8** %p274, align 8
  %arrayidx275 = getelementptr inbounds i8, i8* %128, i64 1
  %129 = load i8, i8* %arrayidx275, align 1
  %conv276 = zext i8 %129 to i32
  %and277 = and i32 %conv276, 63
  %or278 = or i32 %shl273, %and277
  %p279 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %130 = load i8*, i8** %p279, align 8
  %arrayidx280 = getelementptr inbounds i8, i8* %130, i64 0
  %131 = load i8, i8* %arrayidx280, align 1
  %conv281 = zext i8 %131 to i32
  %cmp282 = icmp slt i32 %conv281, 194
  %cond284 = select i1 %cmp282, i32 4194176, i32 0
  %add285 = add nsw i32 %or278, %cond284
  br label %cond.end.314

cond.false.286:                                   ; preds = %cond.false.262
  %p287 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %132 = load i8*, i8** %p287, align 8
  %arrayidx288 = getelementptr inbounds i8, i8* %132, i64 0
  %133 = load i8, i8* %arrayidx288, align 1
  %conv289 = zext i8 %133 to i32
  %and290 = and i32 %conv289, 16
  %tobool291 = icmp ne i32 %and290, 0
  br i1 %tobool291, label %cond.false.309, label %cond.true.292

cond.true.292:                                    ; preds = %cond.false.286
  %p293 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %134 = load i8*, i8** %p293, align 8
  %arrayidx294 = getelementptr inbounds i8, i8* %134, i64 0
  %135 = load i8, i8* %arrayidx294, align 1
  %conv295 = zext i8 %135 to i32
  %and296 = and i32 %conv295, 15
  %shl297 = shl i32 %and296, 12
  %p298 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %136 = load i8*, i8** %p298, align 8
  %arrayidx299 = getelementptr inbounds i8, i8* %136, i64 1
  %137 = load i8, i8* %arrayidx299, align 1
  %conv300 = zext i8 %137 to i32
  %and301 = and i32 %conv300, 63
  %shl302 = shl i32 %and301, 6
  %or303 = or i32 %shl297, %shl302
  %p304 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %138 = load i8*, i8** %p304, align 8
  %arrayidx305 = getelementptr inbounds i8, i8* %138, i64 2
  %139 = load i8, i8* %arrayidx305, align 1
  %conv306 = zext i8 %139 to i32
  %and307 = and i32 %conv306, 63
  %or308 = or i32 %or303, %and307
  br label %cond.end.312

cond.false.309:                                   ; preds = %cond.false.286
  %p310 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %140 = load i8*, i8** %p310, align 8
  %call311 = call i32 @string_char(i8* %140, i8** null, i32* null)
  br label %cond.end.312

cond.end.312:                                     ; preds = %cond.false.309, %cond.true.292
  %cond313 = phi i32 [ %or308, %cond.true.292 ], [ %call311, %cond.false.309 ]
  br label %cond.end.314

cond.end.314:                                     ; preds = %cond.end.312, %cond.true.268
  %cond315 = phi i32 [ %add285, %cond.true.268 ], [ %cond313, %cond.end.312 ]
  br label %cond.end.316

cond.end.316:                                     ; preds = %cond.end.314, %cond.true.258
  %cond317 = phi i32 [ %conv261, %cond.true.258 ], [ %cond315, %cond.end.314 ]
  store i32 %cond317, i32* %c, align 4
  %141 = load i32, i32* %c, align 4
  %call318 = call zeroext i1 @char_composable_p(i32 %141)
  br i1 %call318, label %if.end.320, label %if.then.319

if.then.319:                                      ; preds = %cond.end.316
  %142 = bitcast %struct.position_record* %cur to i8*
  %143 = bitcast %struct.position_record* %prev to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %142, i8* %143, i64 24, i32 8, i1 false)
  br label %while.end

if.end.320:                                       ; preds = %cond.end.316
  br label %while.cond.218

while.end:                                        ; preds = %if.then.319, %while.cond.218
  br label %search_forward

search_forward:                                   ; preds = %while.end, %if.else.215
  %call321 = call i64 @builtin_lisp_symbol(i32 0)
  %144 = load i64*, i64** %gstring.addr, align 8
  store i64 %call321, i64* %144, align 8
  %145 = bitcast %struct.position_record* %prev to i8*
  %146 = bitcast %struct.position_record* %cur to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %145, i8* %146, i64 24, i32 8, i1 false)
  br label %while.cond.322

while.cond.322:                                   ; preds = %if.end.644, %search_forward
  %pos323 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 0
  %147 = load i64, i64* %pos323, align 8
  %148 = load i64, i64* %fore_check_limit, align 8
  %cmp324 = icmp slt i64 %147, %148
  br i1 %cmp324, label %while.body.326, label %while.end.645

while.body.326:                                   ; preds = %while.cond.322
  %p327 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %149 = load i8*, i8** %p327, align 8
  %arrayidx328 = getelementptr inbounds i8, i8* %149, i64 0
  %150 = load i8, i8* %arrayidx328, align 1
  %conv329 = zext i8 %150 to i32
  %and330 = and i32 %conv329, 128
  %tobool331 = icmp ne i32 %and330, 0
  br i1 %tobool331, label %cond.false.336, label %cond.true.332

cond.true.332:                                    ; preds = %while.body.326
  %p333 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %151 = load i8*, i8** %p333, align 8
  %arrayidx334 = getelementptr inbounds i8, i8* %151, i64 0
  %152 = load i8, i8* %arrayidx334, align 1
  %conv335 = zext i8 %152 to i32
  br label %cond.end.390

cond.false.336:                                   ; preds = %while.body.326
  %p337 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %153 = load i8*, i8** %p337, align 8
  %arrayidx338 = getelementptr inbounds i8, i8* %153, i64 0
  %154 = load i8, i8* %arrayidx338, align 1
  %conv339 = zext i8 %154 to i32
  %and340 = and i32 %conv339, 32
  %tobool341 = icmp ne i32 %and340, 0
  br i1 %tobool341, label %cond.false.360, label %cond.true.342

cond.true.342:                                    ; preds = %cond.false.336
  %p343 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %155 = load i8*, i8** %p343, align 8
  %arrayidx344 = getelementptr inbounds i8, i8* %155, i64 0
  %156 = load i8, i8* %arrayidx344, align 1
  %conv345 = zext i8 %156 to i32
  %and346 = and i32 %conv345, 31
  %shl347 = shl i32 %and346, 6
  %p348 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %157 = load i8*, i8** %p348, align 8
  %arrayidx349 = getelementptr inbounds i8, i8* %157, i64 1
  %158 = load i8, i8* %arrayidx349, align 1
  %conv350 = zext i8 %158 to i32
  %and351 = and i32 %conv350, 63
  %or352 = or i32 %shl347, %and351
  %p353 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %159 = load i8*, i8** %p353, align 8
  %arrayidx354 = getelementptr inbounds i8, i8* %159, i64 0
  %160 = load i8, i8* %arrayidx354, align 1
  %conv355 = zext i8 %160 to i32
  %cmp356 = icmp slt i32 %conv355, 194
  %cond358 = select i1 %cmp356, i32 4194176, i32 0
  %add359 = add nsw i32 %or352, %cond358
  br label %cond.end.388

cond.false.360:                                   ; preds = %cond.false.336
  %p361 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %161 = load i8*, i8** %p361, align 8
  %arrayidx362 = getelementptr inbounds i8, i8* %161, i64 0
  %162 = load i8, i8* %arrayidx362, align 1
  %conv363 = zext i8 %162 to i32
  %and364 = and i32 %conv363, 16
  %tobool365 = icmp ne i32 %and364, 0
  br i1 %tobool365, label %cond.false.383, label %cond.true.366

cond.true.366:                                    ; preds = %cond.false.360
  %p367 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %163 = load i8*, i8** %p367, align 8
  %arrayidx368 = getelementptr inbounds i8, i8* %163, i64 0
  %164 = load i8, i8* %arrayidx368, align 1
  %conv369 = zext i8 %164 to i32
  %and370 = and i32 %conv369, 15
  %shl371 = shl i32 %and370, 12
  %p372 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %165 = load i8*, i8** %p372, align 8
  %arrayidx373 = getelementptr inbounds i8, i8* %165, i64 1
  %166 = load i8, i8* %arrayidx373, align 1
  %conv374 = zext i8 %166 to i32
  %and375 = and i32 %conv374, 63
  %shl376 = shl i32 %and375, 6
  %or377 = or i32 %shl371, %shl376
  %p378 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %167 = load i8*, i8** %p378, align 8
  %arrayidx379 = getelementptr inbounds i8, i8* %167, i64 2
  %168 = load i8, i8* %arrayidx379, align 1
  %conv380 = zext i8 %168 to i32
  %and381 = and i32 %conv380, 63
  %or382 = or i32 %or377, %and381
  br label %cond.end.386

cond.false.383:                                   ; preds = %cond.false.360
  %p384 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %169 = load i8*, i8** %p384, align 8
  %call385 = call i32 @string_char(i8* %169, i8** null, i32* null)
  br label %cond.end.386

cond.end.386:                                     ; preds = %cond.false.383, %cond.true.366
  %cond387 = phi i32 [ %or382, %cond.true.366 ], [ %call385, %cond.false.383 ]
  br label %cond.end.388

cond.end.388:                                     ; preds = %cond.end.386, %cond.true.342
  %cond389 = phi i32 [ %add359, %cond.true.342 ], [ %cond387, %cond.end.386 ]
  br label %cond.end.390

cond.end.390:                                     ; preds = %cond.end.388, %cond.true.332
  %cond391 = phi i32 [ %conv335, %cond.true.332 ], [ %cond389, %cond.end.388 ]
  store i32 %cond391, i32* %c, align 4
  %170 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 46), align 8
  %171 = load i32, i32* %c, align 4
  %call392 = call i64 @CHAR_TABLE_REF(i64 %170, i32 %171)
  store i64 %call392, i64* %val, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.390
  %172 = load i64, i64* %val, align 8
  %and393 = and i64 %172, 7
  %conv394 = trunc i64 %and393 to i32
  %cmp395 = icmp eq i32 %conv394, 3
  br i1 %cmp395, label %for.body, label %for.end.550

for.body:                                         ; preds = %for.cond
  %173 = load i64, i64* %val, align 8
  %sub = sub nsw i64 %173, 3
  %174 = inttoptr i64 %sub to i8*
  %175 = bitcast i8* %174 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %175, i32 0, i32 0
  %176 = load i64, i64* %car, align 8
  store i64 %176, i64* %elt, align 8
  %177 = load i64, i64* %elt, align 8
  %call397 = call zeroext i1 @VECTORP(i64 %177)
  br i1 %call397, label %land.lhs.true, label %if.end.548

land.lhs.true:                                    ; preds = %for.body
  %178 = load i64, i64* %elt, align 8
  %call399 = call i64 @ASIZE(i64 %178)
  %cmp400 = icmp eq i64 %call399, 3
  br i1 %cmp400, label %land.lhs.true.402, label %if.end.548

land.lhs.true.402:                                ; preds = %land.lhs.true
  %179 = load i64, i64* %elt, align 8
  %call403 = call i64 @AREF(i64 %179, i64 1)
  %call404 = call zeroext i1 @NATNUMP(i64 %call403)
  br i1 %call404, label %if.then.406, label %if.end.548

if.then.406:                                      ; preds = %land.lhs.true.402
  %pos407 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 0
  %180 = load i64, i64* %pos407, align 8
  %181 = load i64, i64* %elt, align 8
  %call408 = call i64 @AREF(i64 %181, i64 1)
  %shr = ashr i64 %call408, 2
  %sub409 = sub nsw i64 %180, %shr
  store i64 %sub409, i64* %check_pos, align 8
  %182 = load i64, i64* %check_pos, align 8
  %183 = load i64, i64* %head, align 8
  %cmp410 = icmp slt i64 %182, %183
  br i1 %cmp410, label %if.then.420, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.406
  %184 = load i64, i64* %limit.addr, align 8
  %185 = load i64, i64* %pos.addr, align 8
  %cmp412 = icmp sle i64 %184, %185
  br i1 %cmp412, label %cond.true.414, label %cond.false.417

cond.true.414:                                    ; preds = %lor.lhs.false
  %186 = load i64, i64* %pos.addr, align 8
  %187 = load i64, i64* %check_pos, align 8
  %cmp415 = icmp slt i64 %186, %187
  br i1 %cmp415, label %if.then.420, label %if.end.421

cond.false.417:                                   ; preds = %lor.lhs.false
  %188 = load i64, i64* %limit.addr, align 8
  %189 = load i64, i64* %check_pos, align 8
  %cmp418 = icmp sle i64 %188, %189
  br i1 %cmp418, label %if.then.420, label %if.end.421

if.then.420:                                      ; preds = %cond.false.417, %cond.true.414, %if.then.406
  br label %for.inc

if.end.421:                                       ; preds = %cond.false.417, %cond.true.414
  %190 = bitcast %struct.position_record* %check to i8*
  %191 = bitcast %struct.position_record* %cur to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %190, i8* %191, i64 24, i32 8, i1 false)
  br label %for.cond.422

for.cond.422:                                     ; preds = %do.end.456, %if.end.421
  %192 = load i64, i64* %check_pos, align 8
  %pos423 = getelementptr inbounds %struct.position_record, %struct.position_record* %check, i32 0, i32 0
  %193 = load i64, i64* %pos423, align 8
  %cmp424 = icmp slt i64 %192, %193
  br i1 %cmp424, label %for.body.426, label %for.end

for.body.426:                                     ; preds = %for.cond.422
  br label %do.body.427

do.body.427:                                      ; preds = %for.body.426
  %pos428 = getelementptr inbounds %struct.position_record, %struct.position_record* %check, i32 0, i32 0
  %194 = load i64, i64* %pos428, align 8
  %195 = load i64, i64* %stop, align 8
  %cmp429 = icmp eq i64 %194, %195
  br i1 %cmp429, label %if.then.431, label %if.end.439

if.then.431:                                      ; preds = %do.body.427
  %196 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text432 = getelementptr inbounds %struct.buffer, %struct.buffer* %196, i32 0, i32 73
  %197 = load %struct.buffer_text*, %struct.buffer_text** %text432, align 8
  %beg433 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %197, i32 0, i32 0
  %198 = load i8*, i8** %beg433, align 8
  %199 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text434 = getelementptr inbounds %struct.buffer, %struct.buffer* %199, i32 0, i32 73
  %200 = load %struct.buffer_text*, %struct.buffer_text** %text434, align 8
  %gpt_byte435 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %200, i32 0, i32 3
  %201 = load i64, i64* %gpt_byte435, align 8
  %add.ptr436 = getelementptr inbounds i8, i8* %198, i64 %201
  %add.ptr437 = getelementptr inbounds i8, i8* %add.ptr436, i64 -1
  %p438 = getelementptr inbounds %struct.position_record, %struct.position_record* %check, i32 0, i32 2
  store i8* %add.ptr437, i8** %p438, align 8
  br label %if.end.439

if.end.439:                                       ; preds = %if.then.431, %do.body.427
  br label %do.body.440

do.body.440:                                      ; preds = %do.cond.445, %if.end.439
  %pos_byte441 = getelementptr inbounds %struct.position_record, %struct.position_record* %check, i32 0, i32 1
  %202 = load i64, i64* %pos_byte441, align 8
  %dec442 = add nsw i64 %202, -1
  store i64 %dec442, i64* %pos_byte441, align 8
  %p443 = getelementptr inbounds %struct.position_record, %struct.position_record* %check, i32 0, i32 2
  %203 = load i8*, i8** %p443, align 8
  %incdec.ptr444 = getelementptr inbounds i8, i8* %203, i32 -1
  store i8* %incdec.ptr444, i8** %p443, align 8
  br label %do.cond.445

do.cond.445:                                      ; preds = %do.body.440
  %p446 = getelementptr inbounds %struct.position_record, %struct.position_record* %check, i32 0, i32 2
  %204 = load i8*, i8** %p446, align 8
  %205 = load i8, i8* %204, align 1
  %conv447 = zext i8 %205 to i32
  %and448 = and i32 %conv447, 192
  %cmp449 = icmp ne i32 %and448, 128
  %lnot451 = xor i1 %cmp449, true
  br i1 %lnot451, label %do.body.440, label %do.end.452

do.end.452:                                       ; preds = %do.cond.445
  %pos453 = getelementptr inbounds %struct.position_record, %struct.position_record* %check, i32 0, i32 0
  %206 = load i64, i64* %pos453, align 8
  %dec454 = add nsw i64 %206, -1
  store i64 %dec454, i64* %pos453, align 8
  br label %do.end.456

do.end.456:                                       ; preds = %do.end.452
  br label %for.cond.422

for.end:                                          ; preds = %for.cond.422
  %207 = load i64, i64* %elt, align 8
  %pos457 = getelementptr inbounds %struct.position_record, %struct.position_record* %check, i32 0, i32 0
  %208 = load i64, i64* %pos457, align 8
  %pos_byte458 = getelementptr inbounds %struct.position_record, %struct.position_record* %check, i32 0, i32 1
  %209 = load i64, i64* %pos_byte458, align 8
  %210 = load i64, i64* %tail, align 8
  %211 = load %struct.window*, %struct.window** %w, align 8
  %212 = load i64, i64* %string.addr, align 8
  %call459 = call i64 @autocmp_chars(i64 %207, i64 %208, i64 %209, i64 %210, %struct.window* %211, %struct.face* null, i64 %212)
  %213 = load i64*, i64** %gstring.addr, align 8
  store i64 %call459, i64* %213, align 8
  store i8 1, i8* %need_adjustment, align 1
  %214 = load i64*, i64** %gstring.addr, align 8
  %215 = load i64, i64* %214, align 8
  %call460 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp461 = icmp eq i64 %215, %call460
  br i1 %cmp461, label %if.then.463, label %if.else.492

if.then.463:                                      ; preds = %for.end
  %216 = load i64, i64* %string.addr, align 8
  %call464 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp465 = icmp eq i64 %216, %call464
  br i1 %cmp465, label %if.then.467, label %if.else.486

if.then.467:                                      ; preds = %if.then.463
  %pos_byte468 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 1
  %217 = load i64, i64* %pos_byte468, align 8
  %218 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text469 = getelementptr inbounds %struct.buffer, %struct.buffer* %218, i32 0, i32 73
  %219 = load %struct.buffer_text*, %struct.buffer_text** %text469, align 8
  %gpt_byte470 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %219, i32 0, i32 3
  %220 = load i64, i64* %gpt_byte470, align 8
  %cmp471 = icmp sge i64 %217, %220
  br i1 %cmp471, label %cond.true.473, label %cond.false.476

cond.true.473:                                    ; preds = %if.then.467
  %221 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text474 = getelementptr inbounds %struct.buffer, %struct.buffer* %221, i32 0, i32 73
  %222 = load %struct.buffer_text*, %struct.buffer_text** %text474, align 8
  %gap_size475 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %222, i32 0, i32 5
  %223 = load i64, i64* %gap_size475, align 8
  br label %cond.end.477

cond.false.476:                                   ; preds = %if.then.467
  br label %cond.end.477

cond.end.477:                                     ; preds = %cond.false.476, %cond.true.473
  %cond478 = phi i64 [ %223, %cond.true.473 ], [ 0, %cond.false.476 ]
  %pos_byte479 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 1
  %224 = load i64, i64* %pos_byte479, align 8
  %add480 = add nsw i64 %cond478, %224
  %225 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text481 = getelementptr inbounds %struct.buffer, %struct.buffer* %225, i32 0, i32 73
  %226 = load %struct.buffer_text*, %struct.buffer_text** %text481, align 8
  %beg482 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %226, i32 0, i32 0
  %227 = load i8*, i8** %beg482, align 8
  %add.ptr483 = getelementptr inbounds i8, i8* %227, i64 %add480
  %add.ptr484 = getelementptr inbounds i8, i8* %add.ptr483, i64 -1
  %p485 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  store i8* %add.ptr484, i8** %p485, align 8
  br label %if.end.491

if.else.486:                                      ; preds = %if.then.463
  %228 = load i64, i64* %string.addr, align 8
  %call487 = call i8* @SDATA(i64 %228)
  %pos_byte488 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 1
  %229 = load i64, i64* %pos_byte488, align 8
  %add.ptr489 = getelementptr inbounds i8, i8* %call487, i64 %229
  %p490 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  store i8* %add.ptr489, i8** %p490, align 8
  br label %if.end.491

if.end.491:                                       ; preds = %if.else.486, %cond.end.477
  br label %if.end.547

if.else.492:                                      ; preds = %for.end
  %pos493 = getelementptr inbounds %struct.position_record, %struct.position_record* %check, i32 0, i32 0
  %230 = load i64, i64* %pos493, align 8
  %231 = load i64*, i64** %start.addr, align 8
  store i64 %230, i64* %231, align 8
  %pos494 = getelementptr inbounds %struct.position_record, %struct.position_record* %check, i32 0, i32 0
  %232 = load i64, i64* %pos494, align 8
  %233 = load i64*, i64** %gstring.addr, align 8
  %234 = load i64, i64* %233, align 8
  %call495 = call i64 @AREF(i64 %234, i64 0)
  %call496 = call i64 @ASIZE(i64 %call495)
  %sub497 = sub nsw i64 %call496, 1
  %add498 = add nsw i64 %232, %sub497
  %235 = load i64*, i64** %end.addr, align 8
  store i64 %add498, i64* %235, align 8
  %236 = load i64, i64* %pos.addr, align 8
  %237 = load i64, i64* %limit.addr, align 8
  %cmp499 = icmp slt i64 %236, %237
  br i1 %cmp499, label %cond.true.501, label %cond.false.504

cond.true.501:                                    ; preds = %if.else.492
  %238 = load i64, i64* %pos.addr, align 8
  %239 = load i64*, i64** %end.addr, align 8
  %240 = load i64, i64* %239, align 8
  %cmp502 = icmp slt i64 %238, %240
  br i1 %cmp502, label %if.then.510, label %if.end.511

cond.false.504:                                   ; preds = %if.else.492
  %241 = load i64*, i64** %start.addr, align 8
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* %pos.addr, align 8
  %cmp505 = icmp sle i64 %242, %243
  br i1 %cmp505, label %land.lhs.true.507, label %if.end.511

land.lhs.true.507:                                ; preds = %cond.false.504
  %244 = load i64, i64* %pos.addr, align 8
  %245 = load i64*, i64** %end.addr, align 8
  %246 = load i64, i64* %245, align 8
  %cmp508 = icmp slt i64 %244, %246
  br i1 %cmp508, label %if.then.510, label %if.end.511

if.then.510:                                      ; preds = %land.lhs.true.507, %cond.true.501
  store i1 true, i1* %retval
  br label %return

if.end.511:                                       ; preds = %land.lhs.true.507, %cond.false.504, %cond.true.501
  %247 = load i64*, i64** %end.addr, align 8
  %248 = load i64, i64* %247, align 8
  %pos512 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 0
  store i64 %248, i64* %pos512, align 8
  %249 = load i64, i64* %string.addr, align 8
  %call513 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp514 = icmp eq i64 %249, %call513
  br i1 %cmp514, label %if.then.516, label %if.else.538

if.then.516:                                      ; preds = %if.end.511
  %250 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pos517 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 0
  %251 = load i64, i64* %pos517, align 8
  %call518 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %250, i64 %251)
  %pos_byte519 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 1
  store i64 %call518, i64* %pos_byte519, align 8
  %pos_byte520 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 1
  %252 = load i64, i64* %pos_byte520, align 8
  %253 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text521 = getelementptr inbounds %struct.buffer, %struct.buffer* %253, i32 0, i32 73
  %254 = load %struct.buffer_text*, %struct.buffer_text** %text521, align 8
  %gpt_byte522 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %254, i32 0, i32 3
  %255 = load i64, i64* %gpt_byte522, align 8
  %cmp523 = icmp sge i64 %252, %255
  br i1 %cmp523, label %cond.true.525, label %cond.false.528

cond.true.525:                                    ; preds = %if.then.516
  %256 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text526 = getelementptr inbounds %struct.buffer, %struct.buffer* %256, i32 0, i32 73
  %257 = load %struct.buffer_text*, %struct.buffer_text** %text526, align 8
  %gap_size527 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %257, i32 0, i32 5
  %258 = load i64, i64* %gap_size527, align 8
  br label %cond.end.529

cond.false.528:                                   ; preds = %if.then.516
  br label %cond.end.529

cond.end.529:                                     ; preds = %cond.false.528, %cond.true.525
  %cond530 = phi i64 [ %258, %cond.true.525 ], [ 0, %cond.false.528 ]
  %pos_byte531 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 1
  %259 = load i64, i64* %pos_byte531, align 8
  %add532 = add nsw i64 %cond530, %259
  %260 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text533 = getelementptr inbounds %struct.buffer, %struct.buffer* %260, i32 0, i32 73
  %261 = load %struct.buffer_text*, %struct.buffer_text** %text533, align 8
  %beg534 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %261, i32 0, i32 0
  %262 = load i8*, i8** %beg534, align 8
  %add.ptr535 = getelementptr inbounds i8, i8* %262, i64 %add532
  %add.ptr536 = getelementptr inbounds i8, i8* %add.ptr535, i64 -1
  %p537 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  store i8* %add.ptr536, i8** %p537, align 8
  br label %if.end.546

if.else.538:                                      ; preds = %if.end.511
  %263 = load i64, i64* %string.addr, align 8
  %pos539 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 0
  %264 = load i64, i64* %pos539, align 8
  %call540 = call i64 @string_char_to_byte(i64 %263, i64 %264)
  %pos_byte541 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 1
  store i64 %call540, i64* %pos_byte541, align 8
  %265 = load i64, i64* %string.addr, align 8
  %call542 = call i8* @SDATA(i64 %265)
  %pos_byte543 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 1
  %266 = load i64, i64* %pos_byte543, align 8
  %add.ptr544 = getelementptr inbounds i8, i8* %call542, i64 %266
  %p545 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  store i8* %add.ptr544, i8** %p545, align 8
  br label %if.end.546

if.end.546:                                       ; preds = %if.else.538, %cond.end.529
  br label %for.end.550

if.end.547:                                       ; preds = %if.end.491
  br label %if.end.548

if.end.548:                                       ; preds = %if.end.547, %land.lhs.true.402, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.548, %if.then.420
  %267 = load i64, i64* %val, align 8
  %sub549 = sub nsw i64 %267, 3
  %268 = inttoptr i64 %sub549 to i8*
  %269 = bitcast i8* %268 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %269, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %270 = load i64, i64* %cdr, align 8
  store i64 %270, i64* %val, align 8
  br label %for.cond

for.end.550:                                      ; preds = %if.end.546, %for.cond
  %271 = load i64, i64* %val, align 8
  %and551 = and i64 %271, 7
  %conv552 = trunc i64 %and551 to i32
  %cmp553 = icmp eq i32 %conv552, 3
  br i1 %cmp553, label %if.end.644, label %if.then.555

if.then.555:                                      ; preds = %for.end.550
  br label %do.body.556

do.body.556:                                      ; preds = %if.then.555
  %pos557 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 0
  %272 = load i64, i64* %pos557, align 8
  %inc = add nsw i64 %272, 1
  store i64 %inc, i64* %pos557, align 8
  %pos558 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 0
  %273 = load i64, i64* %pos558, align 8
  %274 = load i64, i64* %stop, align 8
  %cmp559 = icmp eq i64 %273, %274
  br i1 %cmp559, label %if.then.561, label %if.else.575

if.then.561:                                      ; preds = %do.body.556
  %275 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text562 = getelementptr inbounds %struct.buffer, %struct.buffer* %275, i32 0, i32 73
  %276 = load %struct.buffer_text*, %struct.buffer_text** %text562, align 8
  %beg563 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %276, i32 0, i32 0
  %277 = load i8*, i8** %beg563, align 8
  %278 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text564 = getelementptr inbounds %struct.buffer, %struct.buffer* %278, i32 0, i32 73
  %279 = load %struct.buffer_text*, %struct.buffer_text** %text564, align 8
  %gpt_byte565 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %279, i32 0, i32 3
  %280 = load i64, i64* %gpt_byte565, align 8
  %add.ptr566 = getelementptr inbounds i8, i8* %277, i64 %280
  %281 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text567 = getelementptr inbounds %struct.buffer, %struct.buffer* %281, i32 0, i32 73
  %282 = load %struct.buffer_text*, %struct.buffer_text** %text567, align 8
  %gap_size568 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %282, i32 0, i32 5
  %283 = load i64, i64* %gap_size568, align 8
  %add.ptr569 = getelementptr inbounds i8, i8* %add.ptr566, i64 %283
  %add.ptr570 = getelementptr inbounds i8, i8* %add.ptr569, i64 -1
  %p571 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  store i8* %add.ptr570, i8** %p571, align 8
  %284 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text572 = getelementptr inbounds %struct.buffer, %struct.buffer* %284, i32 0, i32 73
  %285 = load %struct.buffer_text*, %struct.buffer_text** %text572, align 8
  %gpt_byte573 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %285, i32 0, i32 3
  %286 = load i64, i64* %gpt_byte573, align 8
  %pos_byte574 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 1
  store i64 %286, i64* %pos_byte574, align 8
  br label %if.end.641

if.else.575:                                      ; preds = %do.body.556
  %p576 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %287 = load i8*, i8** %p576, align 8
  %288 = load i8, i8* %287, align 1
  %conv577 = zext i8 %288 to i32
  %and578 = and i32 %conv577, 128
  %tobool579 = icmp ne i32 %and578, 0
  br i1 %tobool579, label %cond.false.581, label %cond.true.580

cond.true.580:                                    ; preds = %if.else.575
  br label %cond.end.604

cond.false.581:                                   ; preds = %if.else.575
  %p582 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %289 = load i8*, i8** %p582, align 8
  %290 = load i8, i8* %289, align 1
  %conv583 = zext i8 %290 to i32
  %and584 = and i32 %conv583, 32
  %tobool585 = icmp ne i32 %and584, 0
  br i1 %tobool585, label %cond.false.587, label %cond.true.586

cond.true.586:                                    ; preds = %cond.false.581
  br label %cond.end.602

cond.false.587:                                   ; preds = %cond.false.581
  %p588 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %291 = load i8*, i8** %p588, align 8
  %292 = load i8, i8* %291, align 1
  %conv589 = zext i8 %292 to i32
  %and590 = and i32 %conv589, 16
  %tobool591 = icmp ne i32 %and590, 0
  br i1 %tobool591, label %cond.false.593, label %cond.true.592

cond.true.592:                                    ; preds = %cond.false.587
  br label %cond.end.600

cond.false.593:                                   ; preds = %cond.false.587
  %p594 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %293 = load i8*, i8** %p594, align 8
  %294 = load i8, i8* %293, align 1
  %conv595 = zext i8 %294 to i32
  %and596 = and i32 %conv595, 8
  %tobool597 = icmp ne i32 %and596, 0
  %lnot598 = xor i1 %tobool597, true
  %cond599 = select i1 %lnot598, i32 4, i32 5
  br label %cond.end.600

cond.end.600:                                     ; preds = %cond.false.593, %cond.true.592
  %cond601 = phi i32 [ 3, %cond.true.592 ], [ %cond599, %cond.false.593 ]
  br label %cond.end.602

cond.end.602:                                     ; preds = %cond.end.600, %cond.true.586
  %cond603 = phi i32 [ 2, %cond.true.586 ], [ %cond601, %cond.end.600 ]
  br label %cond.end.604

cond.end.604:                                     ; preds = %cond.end.602, %cond.true.580
  %cond605 = phi i32 [ 1, %cond.true.580 ], [ %cond603, %cond.end.602 ]
  %conv606 = sext i32 %cond605 to i64
  %pos_byte607 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 1
  %295 = load i64, i64* %pos_byte607, align 8
  %add608 = add nsw i64 %295, %conv606
  store i64 %add608, i64* %pos_byte607, align 8
  %p609 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %296 = load i8*, i8** %p609, align 8
  %297 = load i8, i8* %296, align 1
  %conv610 = zext i8 %297 to i32
  %and611 = and i32 %conv610, 128
  %tobool612 = icmp ne i32 %and611, 0
  br i1 %tobool612, label %cond.false.614, label %cond.true.613

cond.true.613:                                    ; preds = %cond.end.604
  br label %cond.end.637

cond.false.614:                                   ; preds = %cond.end.604
  %p615 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %298 = load i8*, i8** %p615, align 8
  %299 = load i8, i8* %298, align 1
  %conv616 = zext i8 %299 to i32
  %and617 = and i32 %conv616, 32
  %tobool618 = icmp ne i32 %and617, 0
  br i1 %tobool618, label %cond.false.620, label %cond.true.619

cond.true.619:                                    ; preds = %cond.false.614
  br label %cond.end.635

cond.false.620:                                   ; preds = %cond.false.614
  %p621 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %300 = load i8*, i8** %p621, align 8
  %301 = load i8, i8* %300, align 1
  %conv622 = zext i8 %301 to i32
  %and623 = and i32 %conv622, 16
  %tobool624 = icmp ne i32 %and623, 0
  br i1 %tobool624, label %cond.false.626, label %cond.true.625

cond.true.625:                                    ; preds = %cond.false.620
  br label %cond.end.633

cond.false.626:                                   ; preds = %cond.false.620
  %p627 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %302 = load i8*, i8** %p627, align 8
  %303 = load i8, i8* %302, align 1
  %conv628 = zext i8 %303 to i32
  %and629 = and i32 %conv628, 8
  %tobool630 = icmp ne i32 %and629, 0
  %lnot631 = xor i1 %tobool630, true
  %cond632 = select i1 %lnot631, i32 4, i32 5
  br label %cond.end.633

cond.end.633:                                     ; preds = %cond.false.626, %cond.true.625
  %cond634 = phi i32 [ 3, %cond.true.625 ], [ %cond632, %cond.false.626 ]
  br label %cond.end.635

cond.end.635:                                     ; preds = %cond.end.633, %cond.true.619
  %cond636 = phi i32 [ 2, %cond.true.619 ], [ %cond634, %cond.end.633 ]
  br label %cond.end.637

cond.end.637:                                     ; preds = %cond.end.635, %cond.true.613
  %cond638 = phi i32 [ 1, %cond.true.613 ], [ %cond636, %cond.end.635 ]
  %p639 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %304 = load i8*, i8** %p639, align 8
  %idx.ext = sext i32 %cond638 to i64
  %add.ptr640 = getelementptr inbounds i8, i8* %304, i64 %idx.ext
  store i8* %add.ptr640, i8** %p639, align 8
  br label %if.end.641

if.end.641:                                       ; preds = %cond.end.637, %if.then.561
  br label %do.end.643

do.end.643:                                       ; preds = %if.end.641
  br label %if.end.644

if.end.644:                                       ; preds = %do.end.643, %for.end.550
  br label %while.cond.322

while.end.645:                                    ; preds = %while.cond.322
  %305 = load i64, i64* %pos.addr, align 8
  %306 = load i64, i64* %limit.addr, align 8
  %cmp646 = icmp slt i64 %305, %306
  br i1 %cmp646, label %if.then.648, label %if.end.649

if.then.648:                                      ; preds = %while.end.645
  store i1 false, i1* %retval
  br label %return

if.end.649:                                       ; preds = %while.end.645
  %307 = load i64*, i64** %gstring.addr, align 8
  %308 = load i64, i64* %307, align 8
  %call650 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp651 = icmp eq i64 %308, %call650
  br i1 %cmp651, label %if.end.654, label %if.then.653

if.then.653:                                      ; preds = %if.end.649
  store i1 true, i1* %retval
  br label %return

if.end.654:                                       ; preds = %if.end.649
  %pos655 = getelementptr inbounds %struct.position_record, %struct.position_record* %prev, i32 0, i32 0
  %309 = load i64, i64* %pos655, align 8
  %310 = load i64, i64* %head, align 8
  %cmp656 = icmp eq i64 %309, %310
  br i1 %cmp656, label %if.then.658, label %if.end.659

if.then.658:                                      ; preds = %if.end.654
  store i1 false, i1* %retval
  br label %return

if.end.659:                                       ; preds = %if.end.654
  %311 = bitcast %struct.position_record* %cur to i8*
  %312 = bitcast %struct.position_record* %prev to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %311, i8* %312, i64 24, i32 8, i1 false)
  %313 = load i8, i8* %need_adjustment, align 1
  %tobool660 = trunc i8 %313 to i1
  br i1 %tobool660, label %if.then.661, label %if.end.690

if.then.661:                                      ; preds = %if.end.659
  %314 = load i64, i64* %string.addr, align 8
  %call662 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp663 = icmp eq i64 %314, %call662
  br i1 %cmp663, label %if.then.665, label %if.else.684

if.then.665:                                      ; preds = %if.then.661
  %pos_byte666 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 1
  %315 = load i64, i64* %pos_byte666, align 8
  %316 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text667 = getelementptr inbounds %struct.buffer, %struct.buffer* %316, i32 0, i32 73
  %317 = load %struct.buffer_text*, %struct.buffer_text** %text667, align 8
  %gpt_byte668 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %317, i32 0, i32 3
  %318 = load i64, i64* %gpt_byte668, align 8
  %cmp669 = icmp sge i64 %315, %318
  br i1 %cmp669, label %cond.true.671, label %cond.false.674

cond.true.671:                                    ; preds = %if.then.665
  %319 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text672 = getelementptr inbounds %struct.buffer, %struct.buffer* %319, i32 0, i32 73
  %320 = load %struct.buffer_text*, %struct.buffer_text** %text672, align 8
  %gap_size673 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %320, i32 0, i32 5
  %321 = load i64, i64* %gap_size673, align 8
  br label %cond.end.675

cond.false.674:                                   ; preds = %if.then.665
  br label %cond.end.675

cond.end.675:                                     ; preds = %cond.false.674, %cond.true.671
  %cond676 = phi i64 [ %321, %cond.true.671 ], [ 0, %cond.false.674 ]
  %pos_byte677 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 1
  %322 = load i64, i64* %pos_byte677, align 8
  %add678 = add nsw i64 %cond676, %322
  %323 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text679 = getelementptr inbounds %struct.buffer, %struct.buffer* %323, i32 0, i32 73
  %324 = load %struct.buffer_text*, %struct.buffer_text** %text679, align 8
  %beg680 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %324, i32 0, i32 0
  %325 = load i8*, i8** %beg680, align 8
  %add.ptr681 = getelementptr inbounds i8, i8* %325, i64 %add678
  %add.ptr682 = getelementptr inbounds i8, i8* %add.ptr681, i64 -1
  %p683 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  store i8* %add.ptr682, i8** %p683, align 8
  br label %if.end.689

if.else.684:                                      ; preds = %if.then.661
  %326 = load i64, i64* %string.addr, align 8
  %call685 = call i8* @SDATA(i64 %326)
  %pos_byte686 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 1
  %327 = load i64, i64* %pos_byte686, align 8
  %add.ptr687 = getelementptr inbounds i8, i8* %call685, i64 %327
  %p688 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  store i8* %add.ptr687, i8** %p688, align 8
  br label %if.end.689

if.end.689:                                       ; preds = %if.else.684, %cond.end.675
  br label %if.end.690

if.end.690:                                       ; preds = %if.end.689, %if.end.659
  br label %do.body.691

do.body.691:                                      ; preds = %if.end.690
  %pos692 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 0
  %328 = load i64, i64* %pos692, align 8
  %329 = load i64, i64* %stop, align 8
  %cmp693 = icmp eq i64 %328, %329
  br i1 %cmp693, label %if.then.695, label %if.end.703

if.then.695:                                      ; preds = %do.body.691
  %330 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text696 = getelementptr inbounds %struct.buffer, %struct.buffer* %330, i32 0, i32 73
  %331 = load %struct.buffer_text*, %struct.buffer_text** %text696, align 8
  %beg697 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %331, i32 0, i32 0
  %332 = load i8*, i8** %beg697, align 8
  %333 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text698 = getelementptr inbounds %struct.buffer, %struct.buffer* %333, i32 0, i32 73
  %334 = load %struct.buffer_text*, %struct.buffer_text** %text698, align 8
  %gpt_byte699 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %334, i32 0, i32 3
  %335 = load i64, i64* %gpt_byte699, align 8
  %add.ptr700 = getelementptr inbounds i8, i8* %332, i64 %335
  %add.ptr701 = getelementptr inbounds i8, i8* %add.ptr700, i64 -1
  %p702 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  store i8* %add.ptr701, i8** %p702, align 8
  br label %if.end.703

if.end.703:                                       ; preds = %if.then.695, %do.body.691
  br label %do.body.704

do.body.704:                                      ; preds = %do.cond.709, %if.end.703
  %pos_byte705 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 1
  %336 = load i64, i64* %pos_byte705, align 8
  %dec706 = add nsw i64 %336, -1
  store i64 %dec706, i64* %pos_byte705, align 8
  %p707 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %337 = load i8*, i8** %p707, align 8
  %incdec.ptr708 = getelementptr inbounds i8, i8* %337, i32 -1
  store i8* %incdec.ptr708, i8** %p707, align 8
  br label %do.cond.709

do.cond.709:                                      ; preds = %do.body.704
  %p710 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 2
  %338 = load i8*, i8** %p710, align 8
  %339 = load i8, i8* %338, align 1
  %conv711 = zext i8 %339 to i32
  %and712 = and i32 %conv711, 192
  %cmp713 = icmp ne i32 %and712, 128
  %lnot715 = xor i1 %cmp713, true
  br i1 %lnot715, label %do.body.704, label %do.end.716

do.end.716:                                       ; preds = %do.cond.709
  %pos717 = getelementptr inbounds %struct.position_record, %struct.position_record* %cur, i32 0, i32 0
  %340 = load i64, i64* %pos717, align 8
  %dec718 = add nsw i64 %340, -1
  store i64 %dec718, i64* %pos717, align 8
  br label %do.end.720

do.end.720:                                       ; preds = %do.end.716
  br label %while.body

return:                                           ; preds = %if.then.658, %if.then.653, %if.then.648, %if.then.510, %if.then.117, %if.then
  %341 = load i1, i1* %retval
  ret i1 %341
}

; Function Attrs: nounwind uwtable
define i64 @Fcomposition_get_gstring(i64 %from, i64 %to, i64 %font_object, i64 %string) #0 {
entry:
  %retval = alloca i64, align 8
  %from.addr = alloca i64, align 8
  %to.addr = alloca i64, align 8
  %font_object.addr = alloca i64, align 8
  %string.addr = alloca i64, align 8
  %gstring = alloca i64, align 8
  %header = alloca i64, align 8
  %frompos = alloca i64, align 8
  %frombyte = alloca i64, align 8
  %topos = alloca i64, align 8
  %coding = alloca %struct.coding_system*, align 8
  %terminal = alloca %struct.terminal*, align 8
  store i64 %from, i64* %from.addr, align 8
  store i64 %to, i64* %to.addr, align 8
  store i64 %font_object, i64* %font_object.addr, align 8
  store i64 %string, i64* %string.addr, align 8
  %0 = load i64, i64* %font_object.addr, align 8
  %call = call zeroext i1 @FONT_OBJECT_P(i64 %0)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %font_object.addr, align 8
  %call1 = call %struct.terminal* @decode_live_terminal(i64 %1)
  store %struct.terminal* %call1, %struct.terminal** %terminal, align 8
  %2 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %terminal_coding = getelementptr inbounds %struct.terminal, %struct.terminal* %2, i32 0, i32 13
  %3 = load %struct.coding_system*, %struct.coding_system** %terminal_coding, align 8
  %common_flags = getelementptr inbounds %struct.coding_system, %struct.coding_system* %3, i32 0, i32 1
  %bf.load = load i32, i32* %common_flags, align 8
  %bf.clear = and i32 %bf.load, 16383
  %and = and i32 %bf.clear, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %4 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %terminal_coding2 = getelementptr inbounds %struct.terminal, %struct.terminal* %4, i32 0, i32 13
  %5 = load %struct.coding_system*, %struct.coding_system** %terminal_coding2, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.coding_system* [ %5, %cond.true ], [ @safe_terminal_coding, %cond.false ]
  store %struct.coding_system* %cond, %struct.coding_system** %coding, align 8
  %6 = load i64, i64* @Vcoding_system_hash_table, align 8
  %call3 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %6)
  %7 = load %struct.coding_system*, %struct.coding_system** %coding, align 8
  %id = getelementptr inbounds %struct.coding_system, %struct.coding_system* %7, i32 0, i32 0
  %8 = load i64, i64* %id, align 8
  %call4 = call i64 @HASH_KEY(%struct.Lisp_Hash_Table* %call3, i64 %8)
  store i64 %call4, i64* %font_object.addr, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %9 = load i64, i64* %string.addr, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %9, %call5
  br i1 %cmp, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %10 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_ = getelementptr inbounds %struct.buffer, %struct.buffer* %10, i32 0, i32 39
  %11 = load i64, i64* %enable_multibyte_characters_, align 8
  %call7 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp8 = icmp eq i64 %11, %call7
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.then.6
  call void (i8*, ...) @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0)) #4
  unreachable

if.end.10:                                        ; preds = %if.then.6
  call void @validate_region(i64* %from.addr, i64* %to.addr)
  %12 = load i64, i64* %from.addr, align 8
  %shr = ashr i64 %12, 2
  store i64 %shr, i64* %frompos, align 8
  %13 = load i64, i64* %to.addr, align 8
  %shr11 = ashr i64 %13, 2
  store i64 %shr11, i64* %topos, align 8
  %14 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %15 = load i64, i64* %frompos, align 8
  %call12 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %14, i64 %15)
  store i64 %call12, i64* %frombyte, align 8
  br label %if.end.18

if.else:                                          ; preds = %if.end
  %16 = load i64, i64* %string.addr, align 8
  call void @CHECK_STRING(i64 %16)
  %17 = load i64, i64* %string.addr, align 8
  %18 = load i64, i64* %from.addr, align 8
  %19 = load i64, i64* %to.addr, align 8
  %20 = load i64, i64* %string.addr, align 8
  %call13 = call i64 @SCHARS(i64 %20)
  call void @validate_subarray(i64 %17, i64 %18, i64 %19, i64 %call13, i64* %frompos, i64* %topos)
  %21 = load i64, i64* %string.addr, align 8
  %call14 = call zeroext i1 @STRING_MULTIBYTE(i64 %21)
  br i1 %call14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.else
  call void (i8*, ...) @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0)) #4
  unreachable

if.end.16:                                        ; preds = %if.else
  %22 = load i64, i64* %string.addr, align 8
  %23 = load i64, i64* %frompos, align 8
  %call17 = call i64 @string_char_to_byte(i64 %22, i64 %23)
  store i64 %call17, i64* %frombyte, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.16, %if.end.10
  %call19 = call i64 @builtin_lisp_symbol(i32 0)
  %24 = load i64, i64* %frompos, align 8
  %25 = load i64, i64* %frombyte, align 8
  %26 = load i64, i64* %topos, align 8
  %27 = load i64, i64* %font_object.addr, align 8
  %28 = load i64, i64* %string.addr, align 8
  %call20 = call i64 @fill_gstring_header(i64 %call19, i64 %24, i64 %25, i64 %26, i64 %27, i64 %28)
  store i64 %call20, i64* %header, align 8
  %29 = load i64, i64* %header, align 8
  %call21 = call i64 @gstring_lookup_cache(i64 %29)
  store i64 %call21, i64* %gstring, align 8
  %30 = load i64, i64* %gstring, align 8
  %call22 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp23 = icmp eq i64 %30, %call22
  br i1 %cmp23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %if.end.18
  %31 = load i64, i64* %gstring, align 8
  store i64 %31, i64* %retval
  br label %return

if.end.25:                                        ; preds = %if.end.18
  %32 = load i64, i64* @gstring_work, align 8
  %call26 = call i64 @ASIZE(i64 %32)
  %sub = sub nsw i64 %call26, 2
  %33 = load i64, i64* %topos, align 8
  %34 = load i64, i64* %frompos, align 8
  %sub27 = sub nsw i64 %33, %34
  %cmp28 = icmp slt i64 %sub, %sub27
  br i1 %cmp28, label %if.then.29, label %if.end.34

if.then.29:                                       ; preds = %if.end.25
  %35 = load i64, i64* %topos, align 8
  %36 = load i64, i64* %frompos, align 8
  %sub30 = sub nsw i64 %35, %36
  %add = add nsw i64 %sub30, 2
  %shl = shl i64 %add, 2
  %add31 = add i64 %shl, 2
  %call32 = call i64 @builtin_lisp_symbol(i32 0)
  %call33 = call i64 @Fmake_vector(i64 %add31, i64 %call32)
  store i64 %call33, i64* @gstring_work, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.29, %if.end.25
  %37 = load i64, i64* @gstring_work, align 8
  %38 = load i64, i64* %header, align 8
  call void @ASET(i64 %37, i64 0, i64 %38)
  %39 = load i64, i64* @gstring_work, align 8
  %call35 = call i64 @builtin_lisp_symbol(i32 0)
  call void @ASET(i64 %39, i64 1, i64 %call35)
  %40 = load i64, i64* @gstring_work, align 8
  call void @fill_gstring_body(i64 %40)
  %41 = load i64, i64* @gstring_work, align 8
  store i64 %41, i64* %retval
  br label %return

return:                                           ; preds = %if.end.34, %if.then.24
  %42 = load i64, i64* %retval
  ret i64 %42
}

declare %struct.terminal* @decode_live_terminal(i64) #1

; Function Attrs: noreturn
declare void @error(i8*, ...) #2

declare void @validate_region(i64*, i64*) #1

declare void @CHECK_STRING(i64) #1

declare void @validate_subarray(i64, i64, i64, i64, i64*, i64*) #1

; Function Attrs: nounwind uwtable
define internal i64 @fill_gstring_header(i64 %header, i64 %from, i64 %from_byte, i64 %to, i64 %font_object, i64 %string) #0 {
entry:
  %header.addr = alloca i64, align 8
  %from.addr = alloca i64, align 8
  %from_byte.addr = alloca i64, align 8
  %to.addr = alloca i64, align 8
  %font_object.addr = alloca i64, align 8
  %string.addr = alloca i64, align 8
  %len = alloca i64, align 8
  %i = alloca i64, align 8
  %c = alloca i32, align 4
  %chp = alloca i8*, align 8
  %chlen = alloca i32, align 4
  %fetch_ptr = alloca i8*, align 8
  %fetch_len = alloca i32, align 4
  store i64 %header, i64* %header.addr, align 8
  store i64 %from, i64* %from.addr, align 8
  store i64 %from_byte, i64* %from_byte.addr, align 8
  store i64 %to, i64* %to.addr, align 8
  store i64 %font_object, i64* %font_object.addr, align 8
  store i64 %string, i64* %string.addr, align 8
  %0 = load i64, i64* %to.addr, align 8
  %1 = load i64, i64* %from.addr, align 8
  %sub = sub nsw i64 %0, %1
  store i64 %sub, i64* %len, align 8
  %2 = load i64, i64* %len, align 8
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %header.addr, align 8
  %call = call zeroext i1 @VECTORP(i64 %3)
  br i1 %call, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %4 = load i64, i64* %header.addr, align 8
  %call2 = call i64 @ASIZE(i64 %4)
  %5 = load i64, i64* %len, align 8
  %add = add nsw i64 %5, 1
  %cmp3 = icmp ne i64 %call2, %add
  br i1 %cmp3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %if.then.1
  %6 = load i64, i64* %header.addr, align 8
  %7 = load i64, i64* %len, align 8
  %add5 = add nsw i64 %7, 1
  %shl = shl i64 %add5, 2
  %add6 = add i64 %shl, 2
  call void @args_out_of_range(i64 %6, i64 %add6) #4
  unreachable

if.end.7:                                         ; preds = %if.then.1
  br label %if.end.16

if.else:                                          ; preds = %if.end
  %8 = load i64, i64* %len, align 8
  %cmp8 = icmp sle i64 %8, 8
  br i1 %cmp8, label %if.then.9, label %if.else.12

if.then.9:                                        ; preds = %if.else
  %9 = load i64, i64* @gstring_work_headers, align 8
  %10 = load i64, i64* %len, align 8
  %sub10 = sub nsw i64 %10, 1
  %call11 = call i64 @AREF(i64 %9, i64 %sub10)
  store i64 %call11, i64* %header.addr, align 8
  br label %if.end.15

if.else.12:                                       ; preds = %if.else
  %11 = load i64, i64* %len, align 8
  %add13 = add nsw i64 %11, 1
  %call14 = call i64 @make_uninit_vector(i64 %add13)
  store i64 %call14, i64* %header.addr, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.12, %if.then.9
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.end.7
  %12 = load i64, i64* %header.addr, align 8
  %13 = load i64, i64* %font_object.addr, align 8
  call void @ASET(i64 %12, i64 0, i64 %13)
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.16
  %14 = load i64, i64* %i, align 8
  %15 = load i64, i64* %len, align 8
  %cmp17 = icmp slt i64 %14, %15
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i64, i64* %string.addr, align 8
  %call18 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp19 = icmp eq i64 %16, %call18
  br i1 %cmp19, label %if.then.20, label %if.else.77

if.then.20:                                       ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %if.then.20
  %17 = load i64, i64* %from_byte.addr, align 8
  %18 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %18, i32 0, i32 73
  %19 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %gpt_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %19, i32 0, i32 3
  %20 = load i64, i64* %gpt_byte, align 8
  %cmp21 = icmp sge i64 %17, %20
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body
  %21 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text22 = getelementptr inbounds %struct.buffer, %struct.buffer* %21, i32 0, i32 73
  %22 = load %struct.buffer_text*, %struct.buffer_text** %text22, align 8
  %gap_size = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %22, i32 0, i32 5
  %23 = load i64, i64* %gap_size, align 8
  br label %cond.end

cond.false:                                       ; preds = %do.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %23, %cond.true ], [ 0, %cond.false ]
  %24 = load i64, i64* %from_byte.addr, align 8
  %add23 = add nsw i64 %cond, %24
  %25 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text24 = getelementptr inbounds %struct.buffer, %struct.buffer* %25, i32 0, i32 73
  %26 = load %struct.buffer_text*, %struct.buffer_text** %text24, align 8
  %beg = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %26, i32 0, i32 0
  %27 = load i8*, i8** %beg, align 8
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 %add23
  %add.ptr25 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8* %add.ptr25, i8** %chp, align 8
  %28 = load i8*, i8** %chp, align 8
  %arrayidx = getelementptr inbounds i8, i8* %28, i64 0
  %29 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %29 to i32
  %and = and i32 %conv, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.false.29, label %cond.true.26

cond.true.26:                                     ; preds = %cond.end
  store i32 1, i32* %chlen, align 4
  %30 = load i8*, i8** %chp, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %30, i64 0
  %31 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %31 to i32
  br label %cond.end.73

cond.false.29:                                    ; preds = %cond.end
  %32 = load i8*, i8** %chp, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %32, i64 0
  %33 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %33 to i32
  %and32 = and i32 %conv31, 32
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %cond.false.48, label %cond.true.34

cond.true.34:                                     ; preds = %cond.false.29
  store i32 2, i32* %chlen, align 4
  %34 = load i8*, i8** %chp, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %34, i64 0
  %35 = load i8, i8* %arrayidx35, align 1
  %conv36 = zext i8 %35 to i32
  %and37 = and i32 %conv36, 31
  %shl38 = shl i32 %and37, 6
  %36 = load i8*, i8** %chp, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %36, i64 1
  %37 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %37 to i32
  %and41 = and i32 %conv40, 63
  %or = or i32 %shl38, %and41
  %38 = load i8*, i8** %chp, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %38, i64 0
  %39 = load i8, i8* %arrayidx42, align 1
  %conv43 = zext i8 %39 to i32
  %cmp44 = icmp slt i32 %conv43, 194
  %cond46 = select i1 %cmp44, i32 4194176, i32 0
  %add47 = add nsw i32 %or, %cond46
  br label %cond.end.71

cond.false.48:                                    ; preds = %cond.false.29
  %40 = load i8*, i8** %chp, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %40, i64 0
  %41 = load i8, i8* %arrayidx49, align 1
  %conv50 = zext i8 %41 to i32
  %and51 = and i32 %conv50, 16
  %tobool52 = icmp ne i32 %and51, 0
  br i1 %tobool52, label %cond.false.67, label %cond.true.53

cond.true.53:                                     ; preds = %cond.false.48
  store i32 3, i32* %chlen, align 4
  %42 = load i8*, i8** %chp, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %42, i64 0
  %43 = load i8, i8* %arrayidx54, align 1
  %conv55 = zext i8 %43 to i32
  %and56 = and i32 %conv55, 15
  %shl57 = shl i32 %and56, 12
  %44 = load i8*, i8** %chp, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %44, i64 1
  %45 = load i8, i8* %arrayidx58, align 1
  %conv59 = zext i8 %45 to i32
  %and60 = and i32 %conv59, 63
  %shl61 = shl i32 %and60, 6
  %or62 = or i32 %shl57, %shl61
  %46 = load i8*, i8** %chp, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %46, i64 2
  %47 = load i8, i8* %arrayidx63, align 1
  %conv64 = zext i8 %47 to i32
  %and65 = and i32 %conv64, 63
  %or66 = or i32 %or62, %and65
  br label %cond.end.69

cond.false.67:                                    ; preds = %cond.false.48
  %48 = load i8*, i8** %chp, align 8
  %call68 = call i32 @string_char(i8* %48, i8** null, i32* %chlen)
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.false.67, %cond.true.53
  %cond70 = phi i32 [ %or66, %cond.true.53 ], [ %call68, %cond.false.67 ]
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.end.69, %cond.true.34
  %cond72 = phi i32 [ %add47, %cond.true.34 ], [ %cond70, %cond.end.69 ]
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.end.71, %cond.true.26
  %cond74 = phi i32 [ %conv28, %cond.true.26 ], [ %cond72, %cond.end.71 ]
  store i32 %cond74, i32* %c, align 4
  %49 = load i32, i32* %chlen, align 4
  %conv75 = sext i32 %49 to i64
  %50 = load i64, i64* %from_byte.addr, align 8
  %add76 = add nsw i64 %50, %conv75
  store i64 %add76, i64* %from_byte.addr, align 8
  %51 = load i64, i64* %from.addr, align 8
  %inc = add nsw i64 %51, 1
  store i64 %inc, i64* %from.addr, align 8
  br label %do.end

do.end:                                           ; preds = %cond.end.73
  br label %if.end.139

if.else.77:                                       ; preds = %for.body
  br label %do.body.78

do.body.78:                                       ; preds = %if.else.77
  %52 = load i64, i64* %from_byte.addr, align 8
  %53 = load i64, i64* %string.addr, align 8
  %call79 = call i8* @SDATA(i64 %53)
  %arrayidx80 = getelementptr inbounds i8, i8* %call79, i64 %52
  store i8* %arrayidx80, i8** %fetch_ptr, align 8
  %54 = load i8*, i8** %fetch_ptr, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %54, i64 0
  %55 = load i8, i8* %arrayidx81, align 1
  %conv82 = zext i8 %55 to i32
  %and83 = and i32 %conv82, 128
  %tobool84 = icmp ne i32 %and83, 0
  br i1 %tobool84, label %cond.false.88, label %cond.true.85

cond.true.85:                                     ; preds = %do.body.78
  store i32 1, i32* %fetch_len, align 4
  %56 = load i8*, i8** %fetch_ptr, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %56, i64 0
  %57 = load i8, i8* %arrayidx86, align 1
  %conv87 = zext i8 %57 to i32
  br label %cond.end.133

cond.false.88:                                    ; preds = %do.body.78
  %58 = load i8*, i8** %fetch_ptr, align 8
  %arrayidx89 = getelementptr inbounds i8, i8* %58, i64 0
  %59 = load i8, i8* %arrayidx89, align 1
  %conv90 = zext i8 %59 to i32
  %and91 = and i32 %conv90, 32
  %tobool92 = icmp ne i32 %and91, 0
  br i1 %tobool92, label %cond.false.108, label %cond.true.93

cond.true.93:                                     ; preds = %cond.false.88
  store i32 2, i32* %fetch_len, align 4
  %60 = load i8*, i8** %fetch_ptr, align 8
  %arrayidx94 = getelementptr inbounds i8, i8* %60, i64 0
  %61 = load i8, i8* %arrayidx94, align 1
  %conv95 = zext i8 %61 to i32
  %and96 = and i32 %conv95, 31
  %shl97 = shl i32 %and96, 6
  %62 = load i8*, i8** %fetch_ptr, align 8
  %arrayidx98 = getelementptr inbounds i8, i8* %62, i64 1
  %63 = load i8, i8* %arrayidx98, align 1
  %conv99 = zext i8 %63 to i32
  %and100 = and i32 %conv99, 63
  %or101 = or i32 %shl97, %and100
  %64 = load i8*, i8** %fetch_ptr, align 8
  %arrayidx102 = getelementptr inbounds i8, i8* %64, i64 0
  %65 = load i8, i8* %arrayidx102, align 1
  %conv103 = zext i8 %65 to i32
  %cmp104 = icmp slt i32 %conv103, 194
  %cond106 = select i1 %cmp104, i32 4194176, i32 0
  %add107 = add nsw i32 %or101, %cond106
  br label %cond.end.131

cond.false.108:                                   ; preds = %cond.false.88
  %66 = load i8*, i8** %fetch_ptr, align 8
  %arrayidx109 = getelementptr inbounds i8, i8* %66, i64 0
  %67 = load i8, i8* %arrayidx109, align 1
  %conv110 = zext i8 %67 to i32
  %and111 = and i32 %conv110, 16
  %tobool112 = icmp ne i32 %and111, 0
  br i1 %tobool112, label %cond.false.127, label %cond.true.113

cond.true.113:                                    ; preds = %cond.false.108
  store i32 3, i32* %fetch_len, align 4
  %68 = load i8*, i8** %fetch_ptr, align 8
  %arrayidx114 = getelementptr inbounds i8, i8* %68, i64 0
  %69 = load i8, i8* %arrayidx114, align 1
  %conv115 = zext i8 %69 to i32
  %and116 = and i32 %conv115, 15
  %shl117 = shl i32 %and116, 12
  %70 = load i8*, i8** %fetch_ptr, align 8
  %arrayidx118 = getelementptr inbounds i8, i8* %70, i64 1
  %71 = load i8, i8* %arrayidx118, align 1
  %conv119 = zext i8 %71 to i32
  %and120 = and i32 %conv119, 63
  %shl121 = shl i32 %and120, 6
  %or122 = or i32 %shl117, %shl121
  %72 = load i8*, i8** %fetch_ptr, align 8
  %arrayidx123 = getelementptr inbounds i8, i8* %72, i64 2
  %73 = load i8, i8* %arrayidx123, align 1
  %conv124 = zext i8 %73 to i32
  %and125 = and i32 %conv124, 63
  %or126 = or i32 %or122, %and125
  br label %cond.end.129

cond.false.127:                                   ; preds = %cond.false.108
  %74 = load i8*, i8** %fetch_ptr, align 8
  %call128 = call i32 @string_char(i8* %74, i8** null, i32* %fetch_len)
  br label %cond.end.129

cond.end.129:                                     ; preds = %cond.false.127, %cond.true.113
  %cond130 = phi i32 [ %or126, %cond.true.113 ], [ %call128, %cond.false.127 ]
  br label %cond.end.131

cond.end.131:                                     ; preds = %cond.end.129, %cond.true.93
  %cond132 = phi i32 [ %add107, %cond.true.93 ], [ %cond130, %cond.end.129 ]
  br label %cond.end.133

cond.end.133:                                     ; preds = %cond.end.131, %cond.true.85
  %cond134 = phi i32 [ %conv87, %cond.true.85 ], [ %cond132, %cond.end.131 ]
  store i32 %cond134, i32* %c, align 4
  %75 = load i32, i32* %fetch_len, align 4
  %conv135 = sext i32 %75 to i64
  %76 = load i64, i64* %from_byte.addr, align 8
  %add136 = add nsw i64 %76, %conv135
  store i64 %add136, i64* %from_byte.addr, align 8
  %77 = load i64, i64* %from.addr, align 8
  %inc137 = add nsw i64 %77, 1
  store i64 %inc137, i64* %from.addr, align 8
  br label %do.end.138

do.end.138:                                       ; preds = %cond.end.133
  br label %if.end.139

if.end.139:                                       ; preds = %do.end.138, %do.end
  %78 = load i64, i64* %header.addr, align 8
  %79 = load i64, i64* %i, align 8
  %add140 = add nsw i64 %79, 1
  %80 = load i32, i32* %c, align 4
  %conv141 = sext i32 %80 to i64
  %shl142 = shl i64 %conv141, 2
  %add143 = add i64 %shl142, 2
  call void @ASET(i64 %78, i64 %add140, i64 %add143)
  br label %for.inc

for.inc:                                          ; preds = %if.end.139
  %81 = load i64, i64* %i, align 8
  %inc144 = add nsw i64 %81, 1
  store i64 %inc144, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %82 = load i64, i64* %header.addr, align 8
  ret i64 %82
}

; Function Attrs: nounwind uwtable
define internal i64 @gstring_lookup_cache(i64 %header) #0 {
entry:
  %header.addr = alloca i64, align 8
  %h = alloca %struct.Lisp_Hash_Table*, align 8
  %i = alloca i64, align 8
  store i64 %header, i64* %header.addr, align 8
  %0 = load i64, i64* @gstring_hash_table, align 8
  %call = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %0)
  store %struct.Lisp_Hash_Table* %call, %struct.Lisp_Hash_Table** %h, align 8
  %1 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %h, align 8
  %2 = load i64, i64* %header.addr, align 8
  %call1 = call i64 @hash_lookup(%struct.Lisp_Hash_Table* %1, i64 %2, i64* null)
  store i64 %call1, i64* %i, align 8
  %3 = load i64, i64* %i, align 8
  %cmp = icmp sge i64 %3, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %h, align 8
  %5 = load i64, i64* %i, align 8
  %call2 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %4, i64 %5)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call2, %cond.true ], [ %call3, %cond.false ]
  ret i64 %cond
}

; Function Attrs: nounwind uwtable
define internal void @fill_gstring_body(i64 %gstring) #0 {
entry:
  %gstring.addr = alloca i64, align 8
  %font_object = alloca i64, align 8
  %header = alloca i64, align 8
  %len = alloca i64, align 8
  %i = alloca i64, align 8
  %g = alloca i64, align 8
  %c = alloca i32, align 4
  %width = alloca i32, align 4
  store i64 %gstring, i64* %gstring.addr, align 8
  %0 = load i64, i64* %gstring.addr, align 8
  %call = call i64 @AREF(i64 %0, i64 0)
  %call1 = call i64 @AREF(i64 %call, i64 0)
  store i64 %call1, i64* %font_object, align 8
  %1 = load i64, i64* %gstring.addr, align 8
  %call2 = call i64 @AREF(i64 %1, i64 0)
  store i64 %call2, i64* %header, align 8
  %2 = load i64, i64* %gstring.addr, align 8
  %call3 = call i64 @AREF(i64 %2, i64 0)
  %call4 = call i64 @ASIZE(i64 %call3)
  %sub = sub nsw i64 %call4, 1
  store i64 %sub, i64* %len, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i64, i64* %i, align 8
  %4 = load i64, i64* %len, align 8
  %cmp = icmp slt i64 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i64, i64* %gstring.addr, align 8
  %6 = load i64, i64* %i, align 8
  %add = add nsw i64 %6, 2
  %call5 = call i64 @AREF(i64 %5, i64 %add)
  store i64 %call5, i64* %g, align 8
  %7 = load i64, i64* %header, align 8
  %8 = load i64, i64* %i, align 8
  %add6 = add nsw i64 %8, 1
  %call7 = call i64 @AREF(i64 %7, i64 %add6)
  %shr = ashr i64 %call7, 2
  %conv = trunc i64 %shr to i32
  store i32 %conv, i32* %c, align 4
  %9 = load i64, i64* %g, align 8
  %call8 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp9 = icmp eq i64 %9, %call8
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %call11 = call i64 @builtin_lisp_symbol(i32 0)
  %call12 = call i64 @Fmake_vector(i64 42, i64 %call11)
  store i64 %call12, i64* %g, align 8
  %10 = load i64, i64* %gstring.addr, align 8
  %11 = load i64, i64* %i, align 8
  %add13 = add nsw i64 %11, 2
  %12 = load i64, i64* %g, align 8
  call void @ASET(i64 %10, i64 %add13, i64 %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %13 = load i64, i64* %g, align 8
  %14 = load i64, i64* %i, align 8
  %shl = shl i64 %14, 2
  %add14 = add i64 %shl, 2
  call void @ASET(i64 %13, i64 0, i64 %add14)
  %15 = load i64, i64* %g, align 8
  %16 = load i64, i64* %i, align 8
  %shl15 = shl i64 %16, 2
  %add16 = add i64 %shl15, 2
  call void @ASET(i64 %15, i64 1, i64 %add16)
  %17 = load i64, i64* %g, align 8
  %18 = load i32, i32* %c, align 4
  %conv17 = sext i32 %18 to i64
  %shl18 = shl i64 %conv17, 2
  %add19 = add i64 %shl18, 2
  call void @ASET(i64 %17, i64 2, i64 %add19)
  %19 = load i64, i64* %font_object, align 8
  %call20 = call zeroext i1 @FONT_OBJECT_P(i64 %19)
  br i1 %call20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.end
  %20 = load i64, i64* %g, align 8
  %21 = load i64, i64* %font_object, align 8
  call void @font_fill_lglyph_metrics(i64 %20, i64 %21)
  br label %if.end.60

if.else:                                          ; preds = %if.end
  %22 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 28), align 8
  %23 = load i32, i32* %c, align 4
  %call22 = call i64 @CHAR_TABLE_REF(i64 %22, i32 %23)
  %shr23 = ashr i64 %call22, 2
  %conv24 = trunc i64 %shr23 to i32
  store i32 %conv24, i32* %width, align 4
  %24 = load i64, i64* %g, align 8
  %25 = load i32, i32* %c, align 4
  %cmp25 = icmp eq i32 %25, -1
  br i1 %cmp25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %call27 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.52

cond.false:                                       ; preds = %if.else
  %26 = load i32, i32* %c, align 4
  %cmp28 = icmp sle i32 0, %26
  br i1 %cmp28, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.false
  %27 = load i32, i32* %c, align 4
  %conv30 = sext i32 %27 to i64
  %cmp31 = icmp sle i64 -2305843009213693952, %conv30
  br i1 %cmp31, label %land.lhs.true, label %cond.false.40

land.lhs.true:                                    ; preds = %lor.lhs.false, %cond.false
  %28 = load i32, i32* %c, align 4
  %conv33 = sext i32 %28 to i64
  %cmp34 = icmp sle i64 %conv33, 2305843009213693951
  br i1 %cmp34, label %cond.true.36, label %cond.false.40

cond.true.36:                                     ; preds = %land.lhs.true
  %29 = load i32, i32* %c, align 4
  %conv37 = sext i32 %29 to i64
  %shl38 = shl i64 %conv37, 2
  %add39 = add i64 %shl38, 2
  br label %cond.end.50

cond.false.40:                                    ; preds = %land.lhs.true, %lor.lhs.false
  %30 = load i32, i32* %c, align 4
  %mul = mul nsw i32 0, %30
  %sub41 = sub nsw i32 %mul, 1
  %cmp42 = icmp slt i32 %sub41, 0
  br i1 %cmp42, label %cond.true.44, label %cond.false.47

cond.true.44:                                     ; preds = %cond.false.40
  %31 = load i32, i32* %c, align 4
  %conv45 = sext i32 %31 to i64
  %call46 = call i64 @intbig_to_lisp(i64 %conv45)
  br label %cond.end

cond.false.47:                                    ; preds = %cond.false.40
  %32 = load i32, i32* %c, align 4
  %conv48 = sext i32 %32 to i64
  %call49 = call i64 @uintbig_to_lisp(i64 %conv48)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.47, %cond.true.44
  %cond = phi i64 [ %call46, %cond.true.44 ], [ %call49, %cond.false.47 ]
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.end, %cond.true.36
  %cond51 = phi i64 [ %add39, %cond.true.36 ], [ %cond, %cond.end ]
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.end.50, %cond.true
  %cond53 = phi i64 [ %call27, %cond.true ], [ %cond51, %cond.end.50 ]
  call void @ASET(i64 %24, i64 3, i64 %cond53)
  %33 = load i64, i64* %g, align 8
  call void @ASET(i64 %33, i64 5, i64 2)
  %34 = load i64, i64* %g, align 8
  %35 = load i32, i32* %width, align 4
  %conv54 = sext i32 %35 to i64
  %shl55 = shl i64 %conv54, 2
  %add56 = add i64 %shl55, 2
  call void @ASET(i64 %34, i64 6, i64 %add56)
  %36 = load i64, i64* %g, align 8
  %37 = load i32, i32* %width, align 4
  %conv57 = sext i32 %37 to i64
  %shl58 = shl i64 %conv57, 2
  %add59 = add i64 %shl58, 2
  call void @ASET(i64 %36, i64 4, i64 %add59)
  %38 = load i64, i64* %g, align 8
  call void @ASET(i64 %38, i64 7, i64 6)
  %39 = load i64, i64* %g, align 8
  call void @ASET(i64 %39, i64 8, i64 2)
  br label %if.end.60

if.end.60:                                        ; preds = %cond.end.52, %if.then.21
  %40 = load i64, i64* %g, align 8
  %call61 = call i64 @builtin_lisp_symbol(i32 0)
  call void @ASET(i64 %40, i64 9, i64 %call61)
  br label %for.inc

for.inc:                                          ; preds = %if.end.60
  %41 = load i64, i64* %i, align 8
  %inc = add nsw i64 %41, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = load i64, i64* %i, align 8
  %43 = load i64, i64* %gstring.addr, align 8
  %call62 = call i64 @ASIZE(i64 %43)
  %sub63 = sub nsw i64 %call62, 2
  %cmp64 = icmp slt i64 %42, %sub63
  br i1 %cmp64, label %if.then.66, label %if.end.69

if.then.66:                                       ; preds = %for.end
  %44 = load i64, i64* %gstring.addr, align 8
  %45 = load i64, i64* %i, align 8
  %add67 = add nsw i64 %45, 2
  %call68 = call i64 @builtin_lisp_symbol(i32 0)
  call void @ASET(i64 %44, i64 %add67, i64 %call68)
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.66, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @Fcompose_region_internal(i64 %start, i64 %end, i64 %components, i64 %modification_func) #0 {
entry:
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %components.addr = alloca i64, align 8
  %modification_func.addr = alloca i64, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  store i64 %components, i64* %components.addr, align 8
  store i64 %modification_func, i64* %modification_func.addr, align 8
  call void @validate_region(i64* %start.addr, i64* %end.addr)
  %0 = load i64, i64* %components.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %components.addr, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %and1 = and i32 %conv, -5
  %cmp2 = icmp eq i32 %and1, 2
  br i1 %cmp2, label %if.end, label %land.lhs.true.4

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %2 = load i64, i64* %components.addr, align 8
  %and5 = and i64 %2, 7
  %conv6 = trunc i64 %and5 to i32
  %cmp7 = icmp eq i32 %conv6, 3
  br i1 %cmp7, label %if.end, label %land.lhs.true.9

land.lhs.true.9:                                  ; preds = %land.lhs.true.4
  %3 = load i64, i64* %components.addr, align 8
  %call10 = call zeroext i1 @STRINGP(i64 %3)
  br i1 %call10, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.9
  %4 = load i64, i64* %components.addr, align 8
  call void @CHECK_VECTOR(i64 %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.9, %land.lhs.true.4, %land.lhs.true, %entry
  %5 = load i64, i64* %start.addr, align 8
  %shr = ashr i64 %5, 2
  %6 = load i64, i64* %end.addr, align 8
  %shr11 = ashr i64 %6, 2
  %7 = load i64, i64* %components.addr, align 8
  %8 = load i64, i64* %modification_func.addr, align 8
  %call12 = call i64 @builtin_lisp_symbol(i32 0)
  call void @compose_text(i64 %shr, i64 %shr11, i64 %7, i64 %8, i64 %call12)
  %call13 = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call13
}

declare void @CHECK_VECTOR(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fcompose_string_internal(i64 %string, i64 %start, i64 %end, i64 %components, i64 %modification_func) #0 {
entry:
  %string.addr = alloca i64, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %components.addr = alloca i64, align 8
  %modification_func.addr = alloca i64, align 8
  %from = alloca i64, align 8
  %to = alloca i64, align 8
  store i64 %string, i64* %string.addr, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  store i64 %components, i64* %components.addr, align 8
  store i64 %modification_func, i64* %modification_func.addr, align 8
  %0 = load i64, i64* %string.addr, align 8
  call void @CHECK_STRING(i64 %0)
  %1 = load i64, i64* %string.addr, align 8
  %2 = load i64, i64* %start.addr, align 8
  %3 = load i64, i64* %end.addr, align 8
  %4 = load i64, i64* %string.addr, align 8
  %call = call i64 @SCHARS(i64 %4)
  call void @validate_subarray(i64 %1, i64 %2, i64 %3, i64 %call, i64* %from, i64* %to)
  %5 = load i64, i64* %from, align 8
  %6 = load i64, i64* %to, align 8
  %7 = load i64, i64* %components.addr, align 8
  %8 = load i64, i64* %modification_func.addr, align 8
  %9 = load i64, i64* %string.addr, align 8
  call void @compose_text(i64 %5, i64 %6, i64 %7, i64 %8, i64 %9)
  %10 = load i64, i64* %string.addr, align 8
  ret i64 %10
}

; Function Attrs: nounwind uwtable
define i64 @Ffind_composition_internal(i64 %pos, i64 %limit, i64 %string, i64 %detail_p) #0 {
entry:
  %retval = alloca i64, align 8
  %pos.addr = alloca i64, align 8
  %limit.addr = alloca i64, align 8
  %string.addr = alloca i64, align 8
  %detail_p.addr = alloca i64, align 8
  %prop = alloca i64, align 8
  %tail = alloca i64, align 8
  %gstring = alloca i64, align 8
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %from = alloca i64, align 8
  %to = alloca i64, align 8
  %id = alloca i32, align 4
  %s = alloca i64, align 8
  %e = alloca i64, align 8
  %start_byte = alloca i64, align 8
  %components = alloca i64, align 8
  %relative_p = alloca i64, align 8
  %mod_func = alloca i64, align 8
  %method = alloca i32, align 4
  %width = alloca i32, align 4
  store i64 %pos, i64* %pos.addr, align 8
  store i64 %limit, i64* %limit.addr, align 8
  store i64 %string, i64* %string.addr, align 8
  store i64 %detail_p, i64* %detail_p.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %pos.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %1 = load i64, i64* %pos.addr, align 8
  %call = call i32 @XMISCTYPE(i64 %1)
  %cmp2 = icmp eq i32 %call, 24236
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load i64, i64* %pos.addr, align 8
  %call4 = call i64 @marker_position(i64 %2)
  %call5 = call i64 @make_natnum(i64 %call4)
  store i64 %call5, i64* %pos.addr, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %do.body
  %3 = load i64, i64* %pos.addr, align 8
  %and6 = and i64 %3, 7
  %conv7 = trunc i64 %and6 to i32
  %and8 = and i32 %conv7, -5
  %cmp9 = icmp eq i32 %and8, 2
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %call11 = call i64 @builtin_lisp_symbol(i32 558)
  %4 = load i64, i64* %pos.addr, align 8
  %5 = call i64 @wrong_type_argument(i64 %call11, i64 %4) #4
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %6, %cond.true
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %7 = load i64, i64* %limit.addr, align 8
  %call12 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp13 = icmp eq i64 %7, %call12
  br i1 %cmp13, label %if.else.47, label %if.then.15

if.then.15:                                       ; preds = %do.end
  br label %do.body.16

do.body.16:                                       ; preds = %if.then.15
  %8 = load i64, i64* %limit.addr, align 8
  %and17 = and i64 %8, 7
  %conv18 = trunc i64 %and17 to i32
  %cmp19 = icmp eq i32 %conv18, 1
  br i1 %cmp19, label %land.lhs.true.21, label %if.else.28

land.lhs.true.21:                                 ; preds = %do.body.16
  %9 = load i64, i64* %limit.addr, align 8
  %call22 = call i32 @XMISCTYPE(i64 %9)
  %cmp23 = icmp eq i32 %call22, 24236
  br i1 %cmp23, label %if.then.25, label %if.else.28

if.then.25:                                       ; preds = %land.lhs.true.21
  %10 = load i64, i64* %limit.addr, align 8
  %call26 = call i64 @marker_position(i64 %10)
  %call27 = call i64 @make_natnum(i64 %call26)
  store i64 %call27, i64* %limit.addr, align 8
  br label %if.end.38

if.else.28:                                       ; preds = %land.lhs.true.21, %do.body.16
  %11 = load i64, i64* %limit.addr, align 8
  %and29 = and i64 %11, 7
  %conv30 = trunc i64 %and29 to i32
  %and31 = and i32 %conv30, -5
  %cmp32 = icmp eq i32 %and31, 2
  br i1 %cmp32, label %cond.true.34, label %cond.false.35

cond.true.34:                                     ; preds = %if.else.28
  br label %cond.end.37

cond.false.35:                                    ; preds = %if.else.28
  %call36 = call i64 @builtin_lisp_symbol(i32 558)
  %12 = load i64, i64* %limit.addr, align 8
  %13 = call i64 @wrong_type_argument(i64 %call36, i64 %12) #4
  unreachable
                                                  ; No predecessors!
  br label %cond.end.37

cond.end.37:                                      ; preds = %14, %cond.true.34
  br label %if.end.38

if.end.38:                                        ; preds = %cond.end.37, %if.then.25
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %15 = load i64, i64* %limit.addr, align 8
  %shr = ashr i64 %15, 2
  %16 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %16, i32 0, i32 79
  %17 = load i64, i64* %zv, align 8
  %cmp40 = icmp slt i64 %shr, %17
  br i1 %cmp40, label %cond.true.42, label %cond.false.44

cond.true.42:                                     ; preds = %do.end.39
  %18 = load i64, i64* %limit.addr, align 8
  %shr43 = ashr i64 %18, 2
  br label %cond.end.46

cond.false.44:                                    ; preds = %do.end.39
  %19 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv45 = getelementptr inbounds %struct.buffer, %struct.buffer* %19, i32 0, i32 79
  %20 = load i64, i64* %zv45, align 8
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.false.44, %cond.true.42
  %cond = phi i64 [ %shr43, %cond.true.42 ], [ %20, %cond.false.44 ]
  store i64 %cond, i64* %to, align 8
  br label %if.end.48

if.else.47:                                       ; preds = %do.end
  store i64 -1, i64* %to, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.47, %cond.end.46
  %21 = load i64, i64* %string.addr, align 8
  %call49 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp50 = icmp eq i64 %21, %call49
  br i1 %cmp50, label %if.else.62, label %if.then.52

if.then.52:                                       ; preds = %if.end.48
  %22 = load i64, i64* %string.addr, align 8
  call void @CHECK_STRING(i64 %22)
  %23 = load i64, i64* %pos.addr, align 8
  %shr53 = ashr i64 %23, 2
  %cmp54 = icmp slt i64 %shr53, 0
  br i1 %cmp54, label %if.then.60, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.52
  %24 = load i64, i64* %pos.addr, align 8
  %shr56 = ashr i64 %24, 2
  %25 = load i64, i64* %string.addr, align 8
  %call57 = call i64 @SCHARS(i64 %25)
  %cmp58 = icmp sgt i64 %shr56, %call57
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %lor.lhs.false, %if.then.52
  %26 = load i64, i64* %string.addr, align 8
  %27 = load i64, i64* %pos.addr, align 8
  call void @args_out_of_range(i64 %26, i64 %27) #4
  unreachable

if.end.61:                                        ; preds = %lor.lhs.false
  br label %if.end.74

if.else.62:                                       ; preds = %if.end.48
  %28 = load i64, i64* %pos.addr, align 8
  %shr63 = ashr i64 %28, 2
  %29 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %29, i32 0, i32 77
  %30 = load i64, i64* %begv, align 8
  %cmp64 = icmp slt i64 %shr63, %30
  br i1 %cmp64, label %if.then.71, label %lor.lhs.false.66

lor.lhs.false.66:                                 ; preds = %if.else.62
  %31 = load i64, i64* %pos.addr, align 8
  %shr67 = ashr i64 %31, 2
  %32 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv68 = getelementptr inbounds %struct.buffer, %struct.buffer* %32, i32 0, i32 79
  %33 = load i64, i64* %zv68, align 8
  %cmp69 = icmp sgt i64 %shr67, %33
  br i1 %cmp69, label %if.then.71, label %if.end.73

if.then.71:                                       ; preds = %lor.lhs.false.66, %if.else.62
  %call72 = call i64 @Fcurrent_buffer()
  %34 = load i64, i64* %pos.addr, align 8
  call void @args_out_of_range(i64 %call72, i64 %34) #4
  unreachable

if.end.73:                                        ; preds = %lor.lhs.false.66
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.end.61
  %35 = load i64, i64* %pos.addr, align 8
  %shr75 = ashr i64 %35, 2
  store i64 %shr75, i64* %from, align 8
  %36 = load i64, i64* %from, align 8
  %37 = load i64, i64* %to, align 8
  %38 = load i64, i64* %string.addr, align 8
  %call76 = call zeroext i1 @find_composition(i64 %36, i64 %37, i64* %start, i64* %end, i64* %prop, i64 %38)
  br i1 %call76, label %if.end.94, label %if.then.77

if.then.77:                                       ; preds = %if.end.74
  %39 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_ = getelementptr inbounds %struct.buffer, %struct.buffer* %39, i32 0, i32 39
  %40 = load i64, i64* %enable_multibyte_characters_, align 8
  %call78 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp79 = icmp eq i64 %40, %call78
  br i1 %cmp79, label %if.end.92, label %land.lhs.true.81

land.lhs.true.81:                                 ; preds = %if.then.77
  %41 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 6), align 8
  %call82 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp83 = icmp eq i64 %41, %call82
  br i1 %cmp83, label %if.end.92, label %land.lhs.true.85

land.lhs.true.85:                                 ; preds = %land.lhs.true.81
  %42 = load i64, i64* %from, align 8
  %43 = load i64, i64* %to, align 8
  %44 = load i64, i64* %string.addr, align 8
  %call86 = call zeroext i1 @find_automatic_composition(i64 %42, i64 %43, i64* %start, i64* %end, i64* %gstring, i64 %44)
  br i1 %call86, label %if.then.88, label %if.end.92

if.then.88:                                       ; preds = %land.lhs.true.85
  %45 = load i64, i64* %start, align 8
  %shl = shl i64 %45, 2
  %add = add i64 %shl, 2
  %46 = load i64, i64* %end, align 8
  %shl89 = shl i64 %46, 2
  %add90 = add i64 %shl89, 2
  %47 = load i64, i64* %gstring, align 8
  %call91 = call i64 @list3(i64 %add, i64 %add90, i64 %47)
  store i64 %call91, i64* %retval
  br label %return

if.end.92:                                        ; preds = %land.lhs.true.85, %land.lhs.true.81, %if.then.77
  %call93 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call93, i64* %retval
  br label %return

if.end.94:                                        ; preds = %if.end.74
  %48 = load i64, i64* %end, align 8
  %49 = load i64, i64* %pos.addr, align 8
  %shr95 = ashr i64 %49, 2
  %cmp96 = icmp sle i64 %48, %shr95
  br i1 %cmp96, label %if.then.102, label %lor.lhs.false.98

lor.lhs.false.98:                                 ; preds = %if.end.94
  %50 = load i64, i64* %start, align 8
  %51 = load i64, i64* %pos.addr, align 8
  %shr99 = ashr i64 %51, 2
  %cmp100 = icmp sgt i64 %50, %shr99
  br i1 %cmp100, label %if.then.102, label %if.end.122

if.then.102:                                      ; preds = %lor.lhs.false.98, %if.end.94
  %52 = load i64, i64* %from, align 8
  %53 = load i64, i64* %to, align 8
  %54 = load i64, i64* %string.addr, align 8
  %call103 = call zeroext i1 @find_automatic_composition(i64 %52, i64 %53, i64* %s, i64* %e, i64* %gstring, i64 %54)
  br i1 %call103, label %land.lhs.true.105, label %if.end.121

land.lhs.true.105:                                ; preds = %if.then.102
  %55 = load i64, i64* %e, align 8
  %56 = load i64, i64* %pos.addr, align 8
  %shr106 = ashr i64 %56, 2
  %cmp107 = icmp sle i64 %55, %shr106
  br i1 %cmp107, label %cond.true.109, label %cond.false.112

cond.true.109:                                    ; preds = %land.lhs.true.105
  %57 = load i64, i64* %e, align 8
  %58 = load i64, i64* %end, align 8
  %cmp110 = icmp sgt i64 %57, %58
  br i1 %cmp110, label %if.then.115, label %if.end.121

cond.false.112:                                   ; preds = %land.lhs.true.105
  %59 = load i64, i64* %s, align 8
  %60 = load i64, i64* %start, align 8
  %cmp113 = icmp slt i64 %59, %60
  br i1 %cmp113, label %if.then.115, label %if.end.121

if.then.115:                                      ; preds = %cond.false.112, %cond.true.109
  %61 = load i64, i64* %s, align 8
  %shl116 = shl i64 %61, 2
  %add117 = add i64 %shl116, 2
  %62 = load i64, i64* %e, align 8
  %shl118 = shl i64 %62, 2
  %add119 = add i64 %shl118, 2
  %63 = load i64, i64* %gstring, align 8
  %call120 = call i64 @list3(i64 %add117, i64 %add119, i64 %63)
  store i64 %call120, i64* %retval
  br label %return

if.end.121:                                       ; preds = %cond.false.112, %cond.true.109, %if.then.102
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %lor.lhs.false.98
  %64 = load i64, i64* %start, align 8
  %65 = load i64, i64* %end, align 8
  %66 = load i64, i64* %prop, align 8
  %call123 = call zeroext i1 @composition_valid_p(i64 %64, i64 %65, i64 %66)
  br i1 %call123, label %if.end.131, label %if.then.124

if.then.124:                                      ; preds = %if.end.122
  %67 = load i64, i64* %start, align 8
  %shl125 = shl i64 %67, 2
  %add126 = add i64 %shl125, 2
  %68 = load i64, i64* %end, align 8
  %shl127 = shl i64 %68, 2
  %add128 = add i64 %shl127, 2
  %call129 = call i64 @builtin_lisp_symbol(i32 0)
  %call130 = call i64 @list3(i64 %add126, i64 %add128, i64 %call129)
  store i64 %call130, i64* %retval
  br label %return

if.end.131:                                       ; preds = %if.end.122
  %69 = load i64, i64* %detail_p.addr, align 8
  %call132 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp133 = icmp eq i64 %69, %call132
  br i1 %cmp133, label %if.then.135, label %if.end.142

if.then.135:                                      ; preds = %if.end.131
  %70 = load i64, i64* %start, align 8
  %shl136 = shl i64 %70, 2
  %add137 = add i64 %shl136, 2
  %71 = load i64, i64* %end, align 8
  %shl138 = shl i64 %71, 2
  %add139 = add i64 %shl138, 2
  %call140 = call i64 @builtin_lisp_symbol(i32 901)
  %call141 = call i64 @list3(i64 %add137, i64 %add139, i64 %call140)
  store i64 %call141, i64* %retval
  br label %return

if.end.142:                                       ; preds = %if.end.131
  %72 = load i64, i64* %prop, align 8
  %call143 = call zeroext i1 @composition_registered_p(i64 %72)
  br i1 %call143, label %if.then.144, label %if.else.147

if.then.144:                                      ; preds = %if.end.142
  %73 = load i64, i64* %prop, align 8
  %sub = sub nsw i64 %73, 3
  %74 = inttoptr i64 %sub to i8*
  %75 = bitcast i8* %74 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %75, i32 0, i32 0
  %76 = load i64, i64* %car, align 8
  %shr145 = ashr i64 %76, 2
  %conv146 = trunc i64 %shr145 to i32
  store i32 %conv146, i32* %id, align 4
  br label %if.end.160

if.else.147:                                      ; preds = %if.end.142
  %77 = load i64, i64* %string.addr, align 8
  %call148 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp149 = icmp eq i64 %77, %call148
  br i1 %cmp149, label %cond.true.151, label %cond.false.153

cond.true.151:                                    ; preds = %if.else.147
  %78 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %79 = load i64, i64* %start, align 8
  %call152 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %78, i64 %79)
  br label %cond.end.155

cond.false.153:                                   ; preds = %if.else.147
  %80 = load i64, i64* %string.addr, align 8
  %81 = load i64, i64* %start, align 8
  %call154 = call i64 @string_char_to_byte(i64 %80, i64 %81)
  br label %cond.end.155

cond.end.155:                                     ; preds = %cond.false.153, %cond.true.151
  %cond156 = phi i64 [ %call152, %cond.true.151 ], [ %call154, %cond.false.153 ]
  store i64 %cond156, i64* %start_byte, align 8
  %82 = load i64, i64* %start, align 8
  %83 = load i64, i64* %start_byte, align 8
  %84 = load i64, i64* %end, align 8
  %85 = load i64, i64* %start, align 8
  %sub157 = sub nsw i64 %84, %85
  %86 = load i64, i64* %prop, align 8
  %87 = load i64, i64* %string.addr, align 8
  %call158 = call i64 @get_composition_id(i64 %82, i64 %83, i64 %sub157, i64 %86, i64 %87)
  %conv159 = trunc i64 %call158 to i32
  store i32 %conv159, i32* %id, align 4
  br label %if.end.160

if.end.160:                                       ; preds = %cond.end.155, %if.then.144
  %88 = load i32, i32* %id, align 4
  %cmp161 = icmp sge i32 %88, 0
  br i1 %cmp161, label %if.then.163, label %if.else.223

if.then.163:                                      ; preds = %if.end.160
  %89 = load i64, i64* %prop, align 8
  %call164 = call i32 @composition_method(i64 %89)
  store i32 %call164, i32* %method, align 4
  %90 = load i32, i32* %id, align 4
  %idxprom = sext i32 %90 to i64
  %91 = load %struct.composition**, %struct.composition*** @composition_table, align 8
  %arrayidx = getelementptr inbounds %struct.composition*, %struct.composition** %91, i64 %idxprom
  %92 = load %struct.composition*, %struct.composition** %arrayidx, align 8
  %width165 = getelementptr inbounds %struct.composition, %struct.composition* %92, i32 0, i32 6
  %93 = load i32, i32* %width165, align 4
  store i32 %93, i32* %width, align 4
  %94 = load i64, i64* %prop, align 8
  %call166 = call zeroext i1 @composition_registered_p(i64 %94)
  br i1 %call166, label %cond.true.168, label %cond.false.175

cond.true.168:                                    ; preds = %if.then.163
  %95 = load i64, i64* %prop, align 8
  %sub169 = sub nsw i64 %95, 3
  %96 = inttoptr i64 %sub169 to i8*
  %97 = bitcast i8* %96 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %97, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %98 = load i64, i64* %cdr, align 8
  %sub170 = sub nsw i64 %98, 3
  %99 = inttoptr i64 %sub170 to i8*
  %100 = bitcast i8* %99 to %struct.Lisp_Cons*
  %u171 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %100, i32 0, i32 1
  %cdr172 = bitcast %union.anon* %u171 to i64*
  %101 = load i64, i64* %cdr172, align 8
  %sub173 = sub nsw i64 %101, 3
  %102 = inttoptr i64 %sub173 to i8*
  %103 = bitcast i8* %102 to %struct.Lisp_Cons*
  %car174 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %103, i32 0, i32 0
  %104 = load i64, i64* %car174, align 8
  br label %cond.end.181

cond.false.175:                                   ; preds = %if.then.163
  %105 = load i64, i64* %prop, align 8
  %sub176 = sub nsw i64 %105, 3
  %106 = inttoptr i64 %sub176 to i8*
  %107 = bitcast i8* %106 to %struct.Lisp_Cons*
  %car177 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %107, i32 0, i32 0
  %108 = load i64, i64* %car177, align 8
  %sub178 = sub nsw i64 %108, 3
  %109 = inttoptr i64 %sub178 to i8*
  %110 = bitcast i8* %109 to %struct.Lisp_Cons*
  %u179 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %110, i32 0, i32 1
  %cdr180 = bitcast %union.anon* %u179 to i64*
  %111 = load i64, i64* %cdr180, align 8
  br label %cond.end.181

cond.end.181:                                     ; preds = %cond.false.175, %cond.true.168
  %cond182 = phi i64 [ %104, %cond.true.168 ], [ %111, %cond.false.175 ]
  %call183 = call i64 @Fcopy_sequence(i64 %cond182)
  store i64 %call183, i64* %components, align 8
  %112 = load i32, i32* %method, align 4
  %cmp184 = icmp eq i32 %112, 3
  br i1 %cmp184, label %cond.true.186, label %cond.false.188

cond.true.186:                                    ; preds = %cond.end.181
  %call187 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.190

cond.false.188:                                   ; preds = %cond.end.181
  %call189 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end.190

cond.end.190:                                     ; preds = %cond.false.188, %cond.true.186
  %cond191 = phi i64 [ %call187, %cond.true.186 ], [ %call189, %cond.false.188 ]
  store i64 %cond191, i64* %relative_p, align 8
  %113 = load i64, i64* %prop, align 8
  %call192 = call zeroext i1 @composition_registered_p(i64 %113)
  br i1 %call192, label %cond.true.194, label %cond.false.204

cond.true.194:                                    ; preds = %cond.end.190
  %114 = load i64, i64* %prop, align 8
  %sub195 = sub nsw i64 %114, 3
  %115 = inttoptr i64 %sub195 to i8*
  %116 = bitcast i8* %115 to %struct.Lisp_Cons*
  %u196 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %116, i32 0, i32 1
  %cdr197 = bitcast %union.anon* %u196 to i64*
  %117 = load i64, i64* %cdr197, align 8
  %sub198 = sub nsw i64 %117, 3
  %118 = inttoptr i64 %sub198 to i8*
  %119 = bitcast i8* %118 to %struct.Lisp_Cons*
  %u199 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %119, i32 0, i32 1
  %cdr200 = bitcast %union.anon* %u199 to i64*
  %120 = load i64, i64* %cdr200, align 8
  %sub201 = sub nsw i64 %120, 3
  %121 = inttoptr i64 %sub201 to i8*
  %122 = bitcast i8* %121 to %struct.Lisp_Cons*
  %u202 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %122, i32 0, i32 1
  %cdr203 = bitcast %union.anon* %u202 to i64*
  %123 = load i64, i64* %cdr203, align 8
  br label %cond.end.217

cond.false.204:                                   ; preds = %cond.end.190
  %124 = load i64, i64* %prop, align 8
  %and205 = and i64 %124, 7
  %conv206 = trunc i64 %and205 to i32
  %cmp207 = icmp eq i32 %conv206, 3
  br i1 %cmp207, label %cond.true.209, label %cond.false.213

cond.true.209:                                    ; preds = %cond.false.204
  %125 = load i64, i64* %prop, align 8
  %sub210 = sub nsw i64 %125, 3
  %126 = inttoptr i64 %sub210 to i8*
  %127 = bitcast i8* %126 to %struct.Lisp_Cons*
  %u211 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %127, i32 0, i32 1
  %cdr212 = bitcast %union.anon* %u211 to i64*
  %128 = load i64, i64* %cdr212, align 8
  br label %cond.end.215

cond.false.213:                                   ; preds = %cond.false.204
  %call214 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.215

cond.end.215:                                     ; preds = %cond.false.213, %cond.true.209
  %cond216 = phi i64 [ %128, %cond.true.209 ], [ %call214, %cond.false.213 ]
  br label %cond.end.217

cond.end.217:                                     ; preds = %cond.end.215, %cond.true.194
  %cond218 = phi i64 [ %123, %cond.true.194 ], [ %cond216, %cond.end.215 ]
  store i64 %cond218, i64* %mod_func, align 8
  %129 = load i64, i64* %components, align 8
  %130 = load i64, i64* %relative_p, align 8
  %131 = load i64, i64* %mod_func, align 8
  %132 = load i32, i32* %width, align 4
  %conv219 = sext i32 %132 to i64
  %shl220 = shl i64 %conv219, 2
  %add221 = add i64 %shl220, 2
  %call222 = call i64 @list4(i64 %129, i64 %130, i64 %131, i64 %add221)
  store i64 %call222, i64* %tail, align 8
  br label %if.end.225

if.else.223:                                      ; preds = %if.end.160
  %call224 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call224, i64* %tail, align 8
  br label %if.end.225

if.end.225:                                       ; preds = %if.else.223, %cond.end.217
  %133 = load i64, i64* %start, align 8
  %shl226 = shl i64 %133, 2
  %add227 = add i64 %shl226, 2
  %134 = load i64, i64* %end, align 8
  %shl228 = shl i64 %134, 2
  %add229 = add i64 %shl228, 2
  %135 = load i64, i64* %tail, align 8
  %call230 = call i64 @Fcons(i64 %add229, i64 %135)
  %call231 = call i64 @Fcons(i64 %add227, i64 %call230)
  store i64 %call231, i64* %retval
  br label %return

return:                                           ; preds = %if.end.225, %if.then.135, %if.then.124, %if.then.115, %if.end.92, %if.then.88
  %136 = load i64, i64* %retval
  ret i64 %136
}

declare i32 @XMISCTYPE(i64) #1

declare i64 @marker_position(i64) #1

; Function Attrs: noreturn
declare i64 @wrong_type_argument(i64, i64) #2

; Function Attrs: noreturn
declare void @args_out_of_range(i64, i64) #2

declare i64 @Fcurrent_buffer() #1

declare i64 @list3(i64, i64, i64) #1

declare zeroext i1 @composition_registered_p(i64) #1

declare i32 @composition_method(i64) #1

declare i64 @list4(i64, i64, i64, i64) #1

; Function Attrs: nounwind uwtable
define void @syms_of_composite() #0 {
entry:
  %i = alloca i32, align 4
  %args = alloca [4 x i64], align 16
  %arrayinit.begin = getelementptr inbounds [4 x i64], [4 x i64]* %args, i64 0, i64 0
  %call = call i64 @builtin_lisp_symbol(i32 129)
  store i64 %call, i64* %arrayinit.begin
  %arrayinit.element = getelementptr inbounds i64, i64* %arrayinit.begin, i64 1
  %call1 = call i64 @builtin_lisp_symbol(i32 371)
  store i64 %call1, i64* %arrayinit.element
  %arrayinit.element2 = getelementptr inbounds i64, i64* %arrayinit.element, i64 1
  %call3 = call i64 @builtin_lisp_symbol(i32 118)
  store i64 %call3, i64* %arrayinit.element2
  %arrayinit.element4 = getelementptr inbounds i64, i64* %arrayinit.element2, i64 1
  store i64 1246, i64* %arrayinit.element4
  %arraydecay = getelementptr inbounds [4 x i64], [4 x i64]* %args, i32 0, i32 0
  %call5 = call i64 @Fmake_hash_table(i64 4, i64* %arraydecay)
  store i64 %call5, i64* @composition_hash_table, align 8
  call void @staticpro(i64* @composition_hash_table)
  %arraydecay6 = getelementptr inbounds [4 x i64], [4 x i64]* %args, i32 0, i32 0
  %call7 = call i64 @Fmake_hash_table(i64 4, i64* %arraydecay6)
  store i64 %call7, i64* @gstring_hash_table, align 8
  call void @staticpro(i64* @gstring_hash_table)
  call void @staticpro(i64* @gstring_work_headers)
  %call8 = call i64 @make_uninit_vector(i64 8)
  store i64 %call8, i64* @gstring_work_headers, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* @gstring_work_headers, align 8
  %2 = load i32, i32* %i, align 4
  %conv = sext i32 %2 to i64
  %3 = load i32, i32* %i, align 4
  %add = add nsw i32 %3, 2
  %conv9 = sext i32 %add to i64
  %shl = shl i64 %conv9, 2
  %add10 = add i64 %shl, 2
  %call11 = call i64 @builtin_lisp_symbol(i32 0)
  %call12 = call i64 @Fmake_vector(i64 %add10, i64 %call11)
  call void @ASET(i64 %1, i64 %conv, i64 %call12)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @staticpro(i64* @gstring_work)
  %call13 = call i64 @builtin_lisp_symbol(i32 0)
  %call14 = call i64 @Fmake_vector(i64 42, i64 %call13)
  store i64 %call14, i64* @gstring_work, align 8
  %call15 = call i64 @builtin_lisp_symbol(i32 290)
  %call16 = call i64 @builtin_lisp_symbol(i32 901)
  %call17 = call i64 @Fcons(i64 %call15, i64 %call16)
  %5 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 291), align 8
  %call18 = call i64 @Fcons(i64 %call17, i64 %5)
  store i64 %call18, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 291), align 8
  br label %do.body

do.body:                                          ; preds = %for.end
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_composite.o_fwd, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 45))
  br label %do.end

do.end:                                           ; preds = %do.body
  %call19 = call i64 @intern_c_string(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store i64 %call19, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 45), align 8
  br label %do.body.20

do.body.20:                                       ; preds = %do.end
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_composite.o_fwd.3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 6))
  br label %do.end.21

do.end.21:                                        ; preds = %do.body.20
  %call22 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call22, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 6), align 8
  br label %do.body.23

do.body.23:                                       ; preds = %do.end.21
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_composite.o_fwd.5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 5))
  br label %do.end.24

do.end.24:                                        ; preds = %do.body.23
  %call25 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call25, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 5), align 8
  br label %do.body.26

do.body.26:                                       ; preds = %do.end.24
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_composite.o_fwd.7, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 46))
  br label %do.end.27

do.end.27:                                        ; preds = %do.body.26
  %call28 = call i64 @builtin_lisp_symbol(i32 0)
  %call29 = call i64 @builtin_lisp_symbol(i32 0)
  %call30 = call i64 @Fmake_char_table(i64 %call28, i64 %call29)
  store i64 %call30, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 46), align 8
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Scompose_region_internal to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Scompose_string_internal to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sfind_composition_internal to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Scomposition_get_gstring to %struct.Lisp_Subr*))
  ret void
}

declare i64 @Fmake_hash_table(i64, i64*) #1

declare void @staticpro(i64*) #1

declare void @defvar_lisp(%struct.Lisp_Objfwd*, i8*, i64*) #1

declare i64 @intern_c_string(i8*) #1

declare i64 @Fmake_char_table(i64, i64) #1

declare void @defsubr(%struct.Lisp_Subr*) #1

declare i64 @Ffboundp(i64) #1

declare i64 @call2(i64, i64, i64) #1

declare void @record_unwind_save_match_data() #1

declare i64 @font_range(i64, i64, i64*, %struct.window*, %struct.face*, i64) #1

declare void @record_unwind_protect(void (i64)*, i64) #1

declare void @restore_point_unwind(i64) #1

declare i64 @build_marker(%struct.buffer*, i64, i64) #1

declare i64 @safe_call(i64, i64, ...) #1

declare i64 @Fget_buffer_window(i64, i64) #1

declare %struct.window* @XWINDOW(i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare void @font_fill_lglyph_metrics(i64, i64) #1

declare i64 @intbig_to_lisp(i64) #1

declare i64 @uintbig_to_lisp(i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
