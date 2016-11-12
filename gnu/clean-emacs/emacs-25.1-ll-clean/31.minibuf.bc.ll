; ModuleID = './src/minibuf.bc'
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
%struct.Lisp_Symbol = type { i16, i64, %union.anon.6, i64, i64, %struct.Lisp_Symbol* }
%union.anon.6 = type { i64 }
%struct.Lisp_Objfwd = type { i32, i64* }
%struct.Lisp_Boolfwd = type { i32, i8* }
%struct.Lisp_Subr = type { %struct.vectorlike_header, %union.anon.7, i16, i16, i8*, i8*, i8* }
%union.anon.7 = type { i64 ()* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.window = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.glyph_matrix*, %struct.glyph_matrix*, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, %struct.cursor_pos, %struct.cursor_pos, %struct.cursor_pos, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i64 }
%struct.glyph_matrix = type { %struct.glyph_pool*, %struct.glyph_row*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.buffer*, i64, i64 }
%struct.glyph_pool = type { %struct.glyph*, i64, i32, i32 }
%struct.glyph = type { i64, i64, i16, i16, i16, i16, i24, i24, %union.anon, %union.anon.1 }
%union.anon = type { %struct.glyph_slice }
%struct.glyph_slice = type { i64 }
%union.anon.1 = type { i32 }
%struct.glyph_row = type <{ [4 x %struct.glyph*], [4 x i16], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.display_pos, %struct.display_pos, %struct.text_pos, %struct.text_pos, i32, [11 x i8], i8, i24, i24, i32, i40, i32, %struct.XRectangle* }>
%struct.display_pos = type { %struct.text_pos, i64, %struct.text_pos, i32 }
%struct.text_pos = type { i64, i64 }
%struct.XRectangle = type { i16, i16, i16, i16 }
%struct.cursor_pos = type { i32, i32, i32, i32 }
%struct.Lisp_Cons = type { i64, %union.anon.5 }
%union.anon.5 = type { i64 }
%struct.frame = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.face_cache*, i32, %struct.glyph_pool*, %struct.glyph_pool*, %struct.glyph_matrix*, %struct.glyph_matrix*, i48, i32, i32, i32, i32, i8*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.terminal*, %union.output_data, %struct.font_driver_list*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x double], double, i32, i64, i64 }
%struct.face_cache = type { %struct.face**, %struct.frame*, %struct.face**, i64, i32, i8 }
%struct.face = type { [19 x i64], i32, %struct._XGC*, i64, i64, i64, i64, i64, i64, i64, %struct.font*, i32, i32, i24, i32, %struct.face*, %struct.face*, %struct.face*, i8* }
%struct._XGC = type opaque
%struct.font = type { %struct.vectorlike_header, [17 x i64], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, %struct.font_driver* }
%struct.font_driver = type { i64, i8, i64 (%struct.frame*)*, i64 (%struct.frame*, i64)*, i64 (%struct.frame*, i64)*, i64 (%struct.frame*)*, void (i64)*, i64 (%struct.frame*, i64, i32)*, void (%struct.font*)*, void (%struct.frame*, %struct.face*)*, void (%struct.frame*, %struct.face*)*, i32 (i64, i32)*, i32 (%struct.font*, i32)*, void (%struct.font*, i32*, i32, %struct.font_metrics*)*, i32 (%struct.glyph_string*, i32, i32, i32, i32, i1)*, i32 (%struct.font*, i32, %struct.font_bitmap*, i32)*, void (%struct.font*, %struct.font_bitmap*)*, i32 (%struct.font*, i32, i32, i32*, i32*)*, i64 (%struct.font*)*, i32 (%struct.font*, i64, i64, i32, i32, i64, i32, i1)*, i32 (%struct.frame*)*, i32 (%struct.frame*)*, i64 (i64)*, i32 (%struct.frame*, %struct.font*)*, i32 (%struct.font*, i32, i32*)*, void (i64, i64)*, i1 (%struct.frame*, i64, i64)*, i64 (%struct.font*)* }
%struct.font_metrics = type { i16, i16, i16, i16, i16 }
%struct.glyph_string = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.frame*, %struct.window*, %struct._XDisplay*, i64, %struct.glyph_row*, i32, %struct.XChar2b*, i32, i32, %struct.face*, %struct.font*, %struct.composition*, i64, i32, i32, i8, %struct._XGC*, %struct.glyph*, %struct.image*, %struct.xwidget*, %struct.glyph_slice, %struct.glyph_string*, %struct.glyph_string*, [2 x %struct.XRectangle], i32, i32, i32, %struct.glyph_string*, %struct.glyph_string* }
%struct._XDisplay = type opaque
%struct.XChar2b = type { i8, i8 }
%struct.composition = type { i32, i16, i16, i16, i16, i16, i32, i32, i64, i8*, i16* }
%struct.image = type { %struct.timespec, i64, i64, %struct._XImage*, %struct._XImage*, i64*, i32, i64, i64, i64, i8, i32, i32, [4 x i32], i32, i64, i64, i32, i32, i32, %struct.image_type*, i8, i64, i64, i64, %struct.image*, %struct.image* }
%struct._XImage = type { i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i8*, %struct.funcs }
%struct.funcs = type { %struct._XImage* (%struct._XDisplay*, %struct.Visual*, i32, i32, i32, i8*, i32, i32, i32, i32)*, i32 (%struct._XImage*)*, i64 (%struct._XImage*, i32, i32)*, i32 (%struct._XImage*, i32, i32, i64)*, %struct._XImage* (%struct._XImage*, i32, i32, i32, i32)*, i32 (%struct._XImage*, i64)* }
%struct.Visual = type { %struct._XExtData*, i64, i32, i64, i64, i64, i32, i32 }
%struct._XExtData = type { i32, %struct._XExtData*, i32 (%struct._XExtData*)*, i8* }
%struct.image_type = type { i32, i1 (i64)*, i1 (%struct.frame*, %struct.image*)*, void (%struct.frame*, %struct.image*)*, i1 ()*, %struct.image_type* }
%struct.xwidget = type opaque
%struct.font_bitmap = type { i32, i32, i32, i32, i8*, i32, i32, i32 }
%struct.terminal = type { %struct.vectorlike_header, i64, i64, i64, i64, %struct.terminal*, i32, i32, i32, i8*, %struct.kboard*, %struct.image_cache*, %union.display_info, %struct.coding_system*, %struct.coding_system*, %struct.redisplay_interface*, void (%struct.frame*, i32, i32)*, void (%struct.frame*, i32, i32)*, {}*, {}*, void (%struct.frame*, i32)*, void (%struct.frame*, i32, i32)*, void (%struct.frame*, %struct.glyph*, i32)*, void (%struct.frame*, %struct.glyph*, i32)*, void (%struct.frame*, i32)*, {}*, void (%struct.frame*, i1)*, void (%struct.terminal*)*, void (%struct.terminal*)*, {}*, {}*, void (%struct.frame*, i32)*, void (%struct.frame**, i32, i64*, i32*, i64*, i64*, i64*)*, {}*, void (%struct.frame*, i1)*, {}*, i64 (%struct.frame*, i32, i32, i32, i64, i8**)*, i64 (%struct.frame*, i64, i64)*, void (%struct.window*, i32, i32, i32)*, void (%struct.window*, i32, i32, i32)*, {}*, void (%struct.window*)*, {}*, i32 (%struct.terminal*, %struct.input_event*)*, {}*, {}*, void (%struct.terminal*)* }
%struct.kboard = type { %struct.kboard*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i8, i8, i64 }
%struct.image_cache = type { %struct.image**, %struct.image**, i64, i64, i64 }
%union.display_info = type { %struct.tty_display_info* }
%struct.tty_display_info = type opaque
%struct.coding_system = type { i64, i32, i32, %union.anon.8, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8*, i64, i64, i64, i64, i8*, i32*, i32, i32, [64 x i8], i32, i32, i1 (%struct.coding_system*, %struct.coding_detection_info*)*, void (%struct.coding_system*)*, i1 (%struct.coding_system*)* }
%union.anon.8 = type { %struct.ccl_spec*, [328 x i8] }
%struct.ccl_spec = type opaque
%struct.coding_detection_info = type { i32, i32, i32 }
%struct.redisplay_interface = type { void (%struct.frame*, i64, i64)**, void (%struct.it*)*, void (%struct.window*, %struct.glyph_row*, %struct.glyph*, i32, i32)*, void (%struct.window*, %struct.glyph_row*, %struct.glyph*, i32, i32)*, void (%struct.window*, %struct.glyph_row*, i32, i32)*, void (%struct.window*, %struct.run*)*, void (%struct.window*, %struct.glyph_row*)*, void (%struct.window*)*, void (%struct.window*, i1, i1)*, {}*, void (%struct.window*)*, void (%struct.glyph*, %struct.frame*, i32*, i32*)*, void (%struct.window*, %struct.glyph_row*, i32, i32)*, void (%struct.window*, %struct.glyph_row*, %struct.draw_fringe_bitmap_params*)*, void (i32, i16*, i32, i32)*, void (i32)*, void (%struct.glyph_string*)*, void (%struct.glyph_string*)*, void (%struct.frame*, i64)*, void (%struct.frame*, i32, i32, i32, i32)*, void (%struct.window*, %struct.glyph_row*, i32, i32, i32, i32, i1, i1)*, void (%struct.window*, i32, i32, i32)*, void (%struct.window*, i32, i32, i32, i32)*, void (%struct.frame*, i32, i32, i32, i32, i32)*, {}*, {}* }
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
%union.Aligned_String = type { %struct.Lisp_String }
%struct.Lisp_String = type { i64, i64, %struct.interval*, i8* }
%struct.Lisp_Hash_Table = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.hash_table_test, %struct.Lisp_Hash_Table* }
%struct.hash_table_test = type { i64, i64, i64, i1 (%struct.hash_table_test*, i64, i64)*, i64 (%struct.hash_table_test*, i64)* }
%struct.emacs_tty = type { %struct.termios }
%struct.termios = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }

@minibuf_level = common global i64 0, align 8
@minibuf_window = external global i64, align 8
@.str = private unnamed_addr constant [34 x i8] c"Window is not a minibuffer window\00", align 1
@Vminibuffer_list = common global i64 0, align 8
@current_buffer = external global %struct.buffer*, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Cannot do completion in the prompt\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c" *Minibuf-%ld*\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"minibuffer-inactive-mode\00", align 1
@globals = external global %struct.emacs_globals, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"%s (default %s): \00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"internal-complete-buffer\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Bad data in guts of obarray\00", align 1
@lispsym = external global [1074 x %struct.Lisp_Symbol], align 8
@.str.7 = private unnamed_addr constant [25 x i8] c"completing-read-function\00", align 1
@Vbuffer_alist = external global i64, align 8
@pending_signals = external global i8, align 1
@minibuf_prompt = internal global i64 0, align 8
@minibuf_save_list = internal global i64 0, align 8
@last_minibuf_string = common global i64 0, align 8
@syms_of_minibuf.o_fwd = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.8 = private unnamed_addr constant [24 x i8] c"read-expression-history\00", align 1
@syms_of_minibuf.o_fwd.9 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.10 = private unnamed_addr constant [21 x i8] c"read-buffer-function\00", align 1
@syms_of_minibuf.b_fwd = internal global %struct.Lisp_Boolfwd zeroinitializer, align 8
@.str.11 = private unnamed_addr constant [35 x i8] c"read-buffer-completion-ignore-case\00", align 1
@syms_of_minibuf.o_fwd.12 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.13 = private unnamed_addr constant [22 x i8] c"minibuffer-setup-hook\00", align 1
@syms_of_minibuf.o_fwd.14 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.15 = private unnamed_addr constant [21 x i8] c"minibuffer-exit-hook\00", align 1
@syms_of_minibuf.o_fwd.16 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.17 = private unnamed_addr constant [15 x i8] c"history-length\00", align 1
@syms_of_minibuf.b_fwd.18 = internal global %struct.Lisp_Boolfwd zeroinitializer, align 8
@.str.19 = private unnamed_addr constant [26 x i8] c"history-delete-duplicates\00", align 1
@syms_of_minibuf.o_fwd.20 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.21 = private unnamed_addr constant [22 x i8] c"history-add-new-input\00", align 1
@syms_of_minibuf.b_fwd.22 = internal global %struct.Lisp_Boolfwd zeroinitializer, align 8
@.str.23 = private unnamed_addr constant [23 x i8] c"completion-ignore-case\00", align 1
@syms_of_minibuf.b_fwd.24 = internal global %struct.Lisp_Boolfwd zeroinitializer, align 8
@.str.25 = private unnamed_addr constant [29 x i8] c"enable-recursive-minibuffers\00", align 1
@syms_of_minibuf.o_fwd.26 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.27 = private unnamed_addr constant [28 x i8] c"minibuffer-completion-table\00", align 1
@syms_of_minibuf.o_fwd.28 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.29 = private unnamed_addr constant [32 x i8] c"minibuffer-completion-predicate\00", align 1
@syms_of_minibuf.o_fwd.30 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.31 = private unnamed_addr constant [30 x i8] c"minibuffer-completion-confirm\00", align 1
@syms_of_minibuf.o_fwd.32 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.33 = private unnamed_addr constant [32 x i8] c"minibuffer-completing-file-name\00", align 1
@syms_of_minibuf.o_fwd.34 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.35 = private unnamed_addr constant [21 x i8] c"minibuffer-help-form\00", align 1
@syms_of_minibuf.o_fwd.36 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.37 = private unnamed_addr constant [28 x i8] c"minibuffer-history-variable\00", align 1
@syms_of_minibuf.o_fwd.38 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.39 = private unnamed_addr constant [28 x i8] c"minibuffer-history-position\00", align 1
@syms_of_minibuf.b_fwd.40 = internal global %struct.Lisp_Boolfwd zeroinitializer, align 8
@.str.41 = private unnamed_addr constant [22 x i8] c"minibuffer-auto-raise\00", align 1
@syms_of_minibuf.o_fwd.42 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.43 = private unnamed_addr constant [23 x i8] c"completion-regexp-list\00", align 1
@syms_of_minibuf.b_fwd.44 = internal global %struct.Lisp_Boolfwd zeroinitializer, align 8
@.str.45 = private unnamed_addr constant [33 x i8] c"minibuffer-allow-text-properties\00", align 1
@syms_of_minibuf.o_fwd.46 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.47 = private unnamed_addr constant [29 x i8] c"minibuffer-prompt-properties\00", align 1
@syms_of_minibuf.o_fwd.48 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.49 = private unnamed_addr constant [15 x i8] c"read-hide-char\00", align 1
@Sactive_minibuffer_window = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon.7 { i64 ()* @Factive_minibuffer_window }, i16 0, i16 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.55, i32 0, i32 0), i8* null, i8* null }, align 8
@Sminibuffer_depth = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon.7 { i64 ()* @Fminibuffer_depth }, i16 0, i16 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.63, i32 0, i32 0), i8* null, i8* null }, align 8
@Sminibuffer_prompt = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon.7 { i64 ()* @Fminibuffer_prompt }, i16 0, i16 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.64, i32 0, i32 0), i8* null, i8* null }, align 8
@Sminibuffer_prompt_end = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon.7 { i64 ()* @Fminibuffer_prompt_end }, i16 0, i16 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.66, i32 0, i32 0), i8* null, i8* null }, align 8
@Sminibuffer_contents = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon.7 { i64 ()* @Fminibuffer_contents }, i16 0, i16 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.67, i32 0, i32 0), i8* null, i8* null }, align 8
@Sminibuffer_contents_no_properties = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon.7 { i64 ()* @Fminibuffer_contents_no_properties }, i16 0, i16 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.68, i32 0, i32 0), i8* null, i8* null }, align 8
@Sminibuffer_completion_contents = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon.7 { i64 ()* @Fminibuffer_completion_contents }, i16 0, i16 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.69, i32 0, i32 0), i8* null, i8* null }, align 8
@empty_unibyte_string = external global i64, align 8
@selected_window = external global i64, align 8
@.str.50 = private unnamed_addr constant [56 x i8] c"Command attempted to use minibuffer while in minibuffer\00", align 1
@noninteractive = external global i8, align 1
@daemon_pipe = external global [2 x i32], align 4
@selected_frame = external global i64, align 8
@minibuf_prompt_width = internal global i64 0, align 8
@minibuf_selected_window = external global i64, align 8
@Vframe_list = external global i64, align 8
@stdin = external global %struct._IO_FILE*, align 8
@stdout = external global %struct._IO_FILE*, align 8
@.str.51 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.53 = private unnamed_addr constant [25 x i8] c"Error reading from stdin\00", align 1
@.str.54 = private unnamed_addr constant [38 x i8] c"Trailing garbage following expression\00", align 1
@.str.55 = private unnamed_addr constant [25 x i8] c"active-minibuffer-window\00", align 1
@.str.56 = private unnamed_addr constant [22 x i8] c"set-minibuffer-window\00", align 1
@Sset_minibuffer_window = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fset_minibuffer_window }, i16 1, i16 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.56, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.57 = private unnamed_addr constant [21 x i8] c"read-from-minibuffer\00", align 1
@Sread_from_minibuffer = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64, i64, i64, i64)* @Fread_from_minibuffer }, i16 1, i16 7, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.57, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.58 = private unnamed_addr constant [12 x i8] c"read-string\00", align 1
@Sread_string = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64, i64)* @Fread_string }, i16 1, i16 5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.59 = private unnamed_addr constant [13 x i8] c"read-command\00", align 1
@Sread_command = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fread_command }, i16 1, i16 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.59, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.60 = private unnamed_addr constant [14 x i8] c"read-variable\00", align 1
@Sread_variable = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fread_variable }, i16 1, i16 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.60, i32 0, i32 0), i8* null, i8* null }, align 8
@Sinternal_complete_buffer = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Finternal_complete_buffer }, i16 3, i16 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.61 = private unnamed_addr constant [12 x i8] c"read-buffer\00", align 1
@Sread_buffer = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64)* @Fread_buffer }, i16 1, i16 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.61, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.62 = private unnamed_addr constant [21 x i8] c"read-no-blanks-input\00", align 1
@Sread_no_blanks_input = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Fread_no_blanks_input }, i16 1, i16 3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.62, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.63 = private unnamed_addr constant [17 x i8] c"minibuffer-depth\00", align 1
@.str.64 = private unnamed_addr constant [18 x i8] c"minibuffer-prompt\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"minibufferp\00", align 1
@Sminibufferp = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fminibufferp }, i16 0, i16 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.65, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.66 = private unnamed_addr constant [22 x i8] c"minibuffer-prompt-end\00", align 1
@.str.67 = private unnamed_addr constant [20 x i8] c"minibuffer-contents\00", align 1
@.str.68 = private unnamed_addr constant [34 x i8] c"minibuffer-contents-no-properties\00", align 1
@.str.69 = private unnamed_addr constant [31 x i8] c"minibuffer-completion-contents\00", align 1
@.str.70 = private unnamed_addr constant [15 x i8] c"try-completion\00", align 1
@Stry_completion = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Ftry_completion }, i16 2, i16 3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.70, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.71 = private unnamed_addr constant [16 x i8] c"all-completions\00", align 1
@Sall_completions = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64)* @Fall_completions }, i16 2, i16 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.71, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.72 = private unnamed_addr constant [16 x i8] c"test-completion\00", align 1
@Stest_completion = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Ftest_completion }, i16 2, i16 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.72, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.73 = private unnamed_addr constant [13 x i8] c"assoc-string\00", align 1
@Sassoc_string = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Fassoc_string }, i16 2, i16 3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.73, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.74 = private unnamed_addr constant [16 x i8] c"completing-read\00", align 1
@Scompleting_read = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64, i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64, i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @Fcompleting_read }, i16 2, i16 8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.74, i32 0, i32 0), i8* null, i8* null }, align 8

; Function Attrs: nounwind uwtable
define i64 @Factive_minibuffer_window() #0 {
entry:
  %0 = load i64, i64* @minibuf_level, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i64, i64* @minibuf_window, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %1, %cond.true ], [ %call, %cond.false ]
  ret i64 %cond
}

declare i64 @builtin_lisp_symbol(i32) #1

; Function Attrs: nounwind uwtable
define i64 @Fset_minibuffer_window(i64 %window) #0 {
entry:
  %window.addr = alloca i64, align 8
  store i64 %window, i64* %window.addr, align 8
  %0 = load i64, i64* %window.addr, align 8
  call void @CHECK_WINDOW(i64 %0)
  %1 = load i64, i64* %window.addr, align 8
  %call = call %struct.window* @XWINDOW(i64 %1)
  %mini = getelementptr inbounds %struct.window, %struct.window* %call, i32 0, i32 67
  %bf.load = load i16, i16* %mini, align 4
  %bf.clear = and i16 %bf.load, 1
  %bf.cast = trunc i16 %bf.clear to i1
  br i1 %bf.cast, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %window.addr, align 8
  store i64 %2, i64* @minibuf_window, align 8
  %3 = load i64, i64* %window.addr, align 8
  ret i64 %3
}

declare void @CHECK_WINDOW(i64) #1

declare %struct.window* @XWINDOW(i64) #1

; Function Attrs: noreturn
declare void @error(i8*, ...) #2

; Function Attrs: nounwind uwtable
define i64 @Fminibufferp(i64 %buffer) #0 {
entry:
  %buffer.addr = alloca i64, align 8
  %tem = alloca i64, align 8
  store i64 %buffer, i64* %buffer.addr, align 8
  %0 = load i64, i64* %buffer.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call i64 @Fcurrent_buffer()
  store i64 %call1, i64* %buffer.addr, align 8
  br label %if.end.6

if.else:                                          ; preds = %entry
  %1 = load i64, i64* %buffer.addr, align 8
  %call2 = call zeroext i1 @STRINGP(i64 %1)
  br i1 %call2, label %if.then.3, label %if.else.5

if.then.3:                                        ; preds = %if.else
  %2 = load i64, i64* %buffer.addr, align 8
  %call4 = call i64 @Fget_buffer(i64 %2)
  store i64 %call4, i64* %buffer.addr, align 8
  br label %if.end

if.else.5:                                        ; preds = %if.else
  %3 = load i64, i64* %buffer.addr, align 8
  call void @CHECK_BUFFER(i64 %3)
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %4 = load i64, i64* %buffer.addr, align 8
  %5 = load i64, i64* @Vminibuffer_list, align 8
  %call7 = call i64 @Fmemq(i64 %4, i64 %5)
  store i64 %call7, i64* %tem, align 8
  %6 = load i64, i64* %tem, align 8
  %call8 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp9 = icmp eq i64 %6, %call8
  br i1 %cmp9, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end.6
  %call10 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  %call11 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call10, %cond.true ], [ %call11, %cond.false ]
  ret i64 %cond
}

declare i64 @Fcurrent_buffer() #1

declare zeroext i1 @STRINGP(i64) #1

declare i64 @Fget_buffer(i64) #1

declare void @CHECK_BUFFER(i64) #1

declare i64 @Fmemq(i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fminibuffer_prompt_end() #0 {
entry:
  %retval = alloca i64, align 8
  %beg = alloca i64, align 8
  %end = alloca i64, align 8
  %tem = alloca i64, align 8
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 77
  %1 = load i64, i64* %begv, align 8
  %shl = shl i64 %1, 2
  %add = add i64 %shl, 2
  store i64 %add, i64* %beg, align 8
  %call = call i64 @Fcurrent_buffer()
  %2 = load i64, i64* @Vminibuffer_list, align 8
  %call1 = call i64 @Fmemq(i64 %call, i64 %2)
  store i64 %call1, i64* %tem, align 8
  %3 = load i64, i64* %tem, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %3, %call2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i64, i64* %beg, align 8
  store i64 %4, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %beg, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %call5 = call i64 @Ffield_end(i64 %5, i64 %call3, i64 %call4)
  store i64 %call5, i64* %end, align 8
  %6 = load i64, i64* %end, align 8
  %shr = ashr i64 %6, 2
  %7 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 79
  %8 = load i64, i64* %zv, align 8
  %cmp6 = icmp eq i64 %shr, %8
  br i1 %cmp6, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %9 = load i64, i64* %beg, align 8
  %call7 = call i64 @builtin_lisp_symbol(i32 403)
  %call8 = call i64 @builtin_lisp_symbol(i32 0)
  %call9 = call i64 @Fget_char_property(i64 %9, i64 %call7, i64 %call8)
  %call10 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp11 = icmp eq i64 %call9, %call10
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %land.lhs.true
  %10 = load i64, i64* %beg, align 8
  store i64 %10, i64* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, i64* %end, align 8
  store i64 %11, i64* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.12, %if.then
  %12 = load i64, i64* %retval
  ret i64 %12
}

declare i64 @Ffield_end(i64, i64, i64) #1

declare i64 @Fget_char_property(i64, i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fminibuffer_contents() #0 {
entry:
  %prompt_end = alloca i64, align 8
  %call = call i64 @Fminibuffer_prompt_end()
  %shr = ashr i64 %call, 2
  store i64 %shr, i64* %prompt_end, align 8
  %0 = load i64, i64* %prompt_end, align 8
  %1 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 79
  %2 = load i64, i64* %zv, align 8
  %call1 = call i64 @make_buffer_string(i64 %0, i64 %2, i1 zeroext true)
  ret i64 %call1
}

declare i64 @make_buffer_string(i64, i64, i1 zeroext) #1

; Function Attrs: nounwind uwtable
define i64 @Fminibuffer_contents_no_properties() #0 {
entry:
  %prompt_end = alloca i64, align 8
  %call = call i64 @Fminibuffer_prompt_end()
  %shr = ashr i64 %call, 2
  store i64 %shr, i64* %prompt_end, align 8
  %0 = load i64, i64* %prompt_end, align 8
  %1 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 79
  %2 = load i64, i64* %zv, align 8
  %call1 = call i64 @make_buffer_string(i64 %0, i64 %2, i1 zeroext false)
  ret i64 %call1
}

; Function Attrs: nounwind uwtable
define i64 @Fminibuffer_completion_contents() #0 {
entry:
  %prompt_end = alloca i64, align 8
  %call = call i64 @Fminibuffer_prompt_end()
  %shr = ashr i64 %call, 2
  store i64 %shr, i64* %prompt_end, align 8
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 75
  %1 = load i64, i64* %pt, align 8
  %add = add nsw i64 %1, 0
  %2 = load i64, i64* %prompt_end, align 8
  %cmp = icmp slt i64 %add, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %prompt_end, align 8
  %4 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt1 = getelementptr inbounds %struct.buffer, %struct.buffer* %4, i32 0, i32 75
  %5 = load i64, i64* %pt1, align 8
  %add2 = add nsw i64 %5, 0
  %call3 = call i64 @make_buffer_string(i64 %3, i64 %add2, i1 zeroext true)
  ret i64 %call3
}

; Function Attrs: nounwind uwtable
define i64 @get_minibuffer(i64 %depth) #0 {
entry:
  %depth.addr = alloca i64, align 8
  %tail = alloca i64, align 8
  %num = alloca i64, align 8
  %buf = alloca i64, align 8
  %name = alloca [32 x i8], align 16
  %count = alloca i64, align 8
  store i64 %depth, i64* %depth.addr, align 8
  %0 = load i64, i64* %depth.addr, align 8
  %call = call i64 @make_natnum(i64 %0)
  store i64 %call, i64* %num, align 8
  %1 = load i64, i64* %num, align 8
  %2 = load i64, i64* @Vminibuffer_list, align 8
  %call1 = call i64 @Fnthcdr(i64 %1, i64 %2)
  store i64 %call1, i64* %tail, align 8
  %3 = load i64, i64* %tail, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %3, %call2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %call4 = call i64 @list1(i64 %call3)
  store i64 %call4, i64* %tail, align 8
  %4 = load i64, i64* @Vminibuffer_list, align 8
  %5 = load i64, i64* %tail, align 8
  %call5 = call i64 @nconc2(i64 %4, i64 %5)
  store i64 %call5, i64* @Vminibuffer_list, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i64, i64* %tail, align 8
  %call6 = call i64 @Fcar(i64 %6)
  store i64 %call6, i64* %buf, align 8
  %7 = load i64, i64* %buf, align 8
  %call7 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp8 = icmp eq i64 %7, %call7
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %8 = load i64, i64* %buf, align 8
  %call9 = call %struct.buffer* @XBUFFER(i64 %8)
  %name_ = getelementptr inbounds %struct.buffer, %struct.buffer* %call9, i32 0, i32 1
  %9 = load i64, i64* %name_, align 8
  %call10 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp11 = icmp eq i64 %9, %call10
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %lor.lhs.false, %if.end
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %name, i32 0, i32 0
  %10 = load i64, i64* %depth.addr, align 8
  %call13 = call i64 (i8*, i8*, ...) @make_formatted_string(i8* %arraydecay, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i64 %10)
  %call14 = call i64 @Fget_buffer_create(i64 %call13)
  store i64 %call14, i64* %buf, align 8
  %11 = load i64, i64* %buf, align 8
  %call15 = call i64 @Fbuffer_enable_undo(i64 %11)
  %12 = load i64, i64* %tail, align 8
  %13 = load i64, i64* %buf, align 8
  call void @XSETCAR(i64 %12, i64 %13)
  br label %if.end.32

if.else:                                          ; preds = %lor.lhs.false
  %call16 = call i64 @SPECPDL_INDEX()
  store i64 %call16, i64* %count, align 8
  %14 = load i64, i64* %buf, align 8
  %call17 = call %struct.buffer* @XBUFFER(i64 %14)
  call void @delete_all_overlays(%struct.buffer* %call17)
  %15 = load i64, i64* %buf, align 8
  %call18 = call %struct.buffer* @XBUFFER(i64 %15)
  call void @reset_buffer(%struct.buffer* %call18)
  call void @record_unwind_current_buffer()
  %16 = load i64, i64* %buf, align 8
  %call19 = call i64 @Fset_buffer(i64 %16)
  %call20 = call i64 @intern(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0))
  %call21 = call i64 @Ffboundp(i64 %call20)
  %call22 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp23 = icmp eq i64 %call21, %call22
  br i1 %cmp23, label %if.else.27, label %if.then.24

if.then.24:                                       ; preds = %if.else
  %call25 = call i64 @intern(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0))
  %call26 = call i64 @call0(i64 %call25)
  br label %if.end.29

if.else.27:                                       ; preds = %if.else
  %call28 = call i64 @Fkill_all_local_variables()
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.27, %if.then.24
  %17 = load i64, i64* %count, align 8
  %call30 = call i64 @builtin_lisp_symbol(i32 0)
  %call31 = call i64 @unbind_to(i64 %17, i64 %call30)
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.29, %if.then.12
  %18 = load i64, i64* %buf, align 8
  ret i64 %18
}

declare i64 @make_natnum(i64) #1

declare i64 @Fnthcdr(i64, i64) #1

declare i64 @list1(i64) #1

declare i64 @nconc2(i64, i64) #1

declare i64 @Fcar(i64) #1

declare %struct.buffer* @XBUFFER(i64) #1

declare i64 @Fget_buffer_create(i64) #1

declare i64 @make_formatted_string(i8*, i8*, ...) #1

declare i64 @Fbuffer_enable_undo(i64) #1

declare void @XSETCAR(i64, i64) #1

declare i64 @SPECPDL_INDEX() #1

declare void @delete_all_overlays(%struct.buffer*) #1

declare void @reset_buffer(%struct.buffer*) #1

declare void @record_unwind_current_buffer() #1

declare i64 @Fset_buffer(i64) #1

declare i64 @Ffboundp(i64) #1

declare i64 @intern(i8*) #1

declare i64 @call0(i64) #1

declare i64 @Fkill_all_local_variables() #1

declare i64 @unbind_to(i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fread_from_minibuffer(i64 %prompt, i64 %initial_contents, i64 %keymap, i64 %read, i64 %hist, i64 %default_value, i64 %inherit_input_method) #0 {
entry:
  %prompt.addr = alloca i64, align 8
  %initial_contents.addr = alloca i64, align 8
  %keymap.addr = alloca i64, align 8
  %read.addr = alloca i64, align 8
  %hist.addr = alloca i64, align 8
  %default_value.addr = alloca i64, align 8
  %inherit_input_method.addr = alloca i64, align 8
  %histvar = alloca i64, align 8
  %histpos = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %prompt, i64* %prompt.addr, align 8
  store i64 %initial_contents, i64* %initial_contents.addr, align 8
  store i64 %keymap, i64* %keymap.addr, align 8
  store i64 %read, i64* %read.addr, align 8
  store i64 %hist, i64* %hist.addr, align 8
  store i64 %default_value, i64* %default_value.addr, align 8
  store i64 %inherit_input_method, i64* %inherit_input_method.addr, align 8
  %0 = load i64, i64* %prompt.addr, align 8
  call void @CHECK_STRING(i64 %0)
  %1 = load i64, i64* %keymap.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %1, %call
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 190), align 8
  store i64 %2, i64* %keymap.addr, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i64, i64* %keymap.addr, align 8
  %call1 = call i64 @get_keymap(i64 %3, i1 zeroext true, i1 zeroext false)
  store i64 %call1, i64* %keymap.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i64, i64* %hist.addr, align 8
  %and = and i64 %4, 7
  %conv = trunc i64 %and to i32
  %cmp2 = icmp eq i32 %conv, 0
  br i1 %cmp2, label %if.then.4, label %if.else.6

if.then.4:                                        ; preds = %if.end
  %5 = load i64, i64* %hist.addr, align 8
  store i64 %5, i64* %histvar, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call5, i64* %histpos, align 8
  br label %if.end.9

if.else.6:                                        ; preds = %if.end
  %6 = load i64, i64* %hist.addr, align 8
  %call7 = call i64 @Fcar_safe(i64 %6)
  store i64 %call7, i64* %histvar, align 8
  %7 = load i64, i64* %hist.addr, align 8
  %call8 = call i64 @Fcdr_safe(i64 %7)
  store i64 %call8, i64* %histpos, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.else.6, %if.then.4
  %8 = load i64, i64* %histvar, align 8
  %call10 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp11 = icmp eq i64 %8, %call10
  br i1 %cmp11, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end.9
  %call14 = call i64 @builtin_lisp_symbol(i32 665)
  store i64 %call14, i64* %histvar, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.end.9
  %9 = load i64, i64* %histpos, align 8
  %call16 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp17 = icmp eq i64 %9, %call16
  br i1 %cmp17, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end.15
  %call20 = call i64 @make_natnum(i64 0)
  store i64 %call20, i64* %histpos, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.end.15
  %10 = load i64, i64* %keymap.addr, align 8
  %11 = load i64, i64* %initial_contents.addr, align 8
  %12 = load i64, i64* %prompt.addr, align 8
  %13 = load i64, i64* %read.addr, align 8
  %call22 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp23 = icmp eq i64 %13, %call22
  %lnot = xor i1 %cmp23, true
  %14 = load i64, i64* %histvar, align 8
  %15 = load i64, i64* %histpos, align 8
  %16 = load i64, i64* %default_value.addr, align 8
  %17 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 471), align 1
  %tobool = trunc i8 %17 to i1
  %18 = load i64, i64* %inherit_input_method.addr, align 8
  %call25 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp26 = icmp eq i64 %18, %call25
  %lnot28 = xor i1 %cmp26, true
  %call29 = call i64 @read_minibuf(i64 %10, i64 %11, i64 %12, i1 zeroext %lnot, i64 %14, i64 %15, i64 %16, i1 zeroext %tobool, i1 zeroext %lnot28)
  store i64 %call29, i64* %val, align 8
  %19 = load i64, i64* %val, align 8
  ret i64 %19
}

declare void @CHECK_STRING(i64) #1

declare i64 @get_keymap(i64, i1 zeroext, i1 zeroext) #1

declare i64 @Fcar_safe(i64) #1

declare i64 @Fcdr_safe(i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @read_minibuf(i64 %map, i64 %initial, i64 %prompt, i1 zeroext %expflag, i64 %histvar, i64 %histpos, i64 %defalt, i1 zeroext %allow_props, i1 zeroext %inherit_input_method) #0 {
entry:
  %retval = alloca i64, align 8
  %map.addr = alloca i64, align 8
  %initial.addr = alloca i64, align 8
  %prompt.addr = alloca i64, align 8
  %expflag.addr = alloca i8, align 1
  %histvar.addr = alloca i64, align 8
  %histpos.addr = alloca i64, align 8
  %defalt.addr = alloca i64, align 8
  %allow_props.addr = alloca i8, align 1
  %inherit_input_method.addr = alloca i8, align 1
  %val = alloca i64, align 8
  %count = alloca i64, align 8
  %mini_frame = alloca i64, align 8
  %ambient_dir = alloca i64, align 8
  %minibuffer = alloca i64, align 8
  %input_method = alloca i64, align 8
  %enable_multibyte = alloca i64, align 8
  %pos = alloca i64, align 8
  %histstring = alloca i64, align 8
  %histval = alloca i64, align 8
  %empty_minibuf = alloca i64, align 8
  %dummy = alloca i64, align 8
  %frame = alloca i64, align 8
  %backup_n = alloca i64, align 8
  %tail = alloca i64, align 8
  %buf = alloca i64, align 8
  %root_window = alloca i64, align 8
  %mini_window = alloca i64, align 8
  %count1 = alloca i64, align 8
  %length = alloca i64, align 8
  %temp = alloca i64, align 8
  store i64 %map, i64* %map.addr, align 8
  store i64 %initial, i64* %initial.addr, align 8
  store i64 %prompt, i64* %prompt.addr, align 8
  %frombool = zext i1 %expflag to i8
  store i8 %frombool, i8* %expflag.addr, align 1
  store i64 %histvar, i64* %histvar.addr, align 8
  store i64 %histpos, i64* %histpos.addr, align 8
  store i64 %defalt, i64* %defalt.addr, align 8
  %frombool1 = zext i1 %allow_props to i8
  store i8 %frombool1, i8* %allow_props.addr, align 1
  %frombool2 = zext i1 %inherit_input_method to i8
  store i8 %frombool2, i8* %inherit_input_method.addr, align 1
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %count, align 8
  store i64 0, i64* %pos, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 663)
  %0 = load i64, i64* %defalt.addr, align 8
  call void @specbind(i64 %call3, i64 %0)
  %call4 = call i64 @builtin_lisp_symbol(i32 547)
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  call void @specbind(i64 %call4, i64 %call5)
  %call6 = call i64 @intern(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.33, i32 0, i32 0))
  %1 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 182), align 8
  call void @specbind(i64 %call6, i64 %1)
  %2 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 182), align 8
  %call7 = call i64 @builtin_lisp_symbol(i32 598)
  %cmp = icmp eq i64 %2, %call7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call8 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call8, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 182), align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 438), align 1
  %tobool = trunc i8 %3 to i1
  br i1 %tobool, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  call void @cancel_hourglass()
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end
  %4 = load i64, i64* %initial.addr, align 8
  %call11 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp12 = icmp eq i64 %4, %call11
  br i1 %cmp12, label %if.end.41, label %if.then.13

if.then.13:                                       ; preds = %if.end.10
  %5 = load i64, i64* %initial.addr, align 8
  %and = and i64 %5, 7
  %conv = trunc i64 %and to i32
  %cmp14 = icmp eq i32 %conv, 3
  br i1 %cmp14, label %if.then.16, label %if.else.39

if.then.16:                                       ; preds = %if.then.13
  %6 = load i64, i64* %initial.addr, align 8
  %sub = sub nsw i64 %6, 3
  %7 = inttoptr i64 %sub to i8*
  %8 = bitcast i8* %7 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %8, i32 0, i32 1
  %cdr = bitcast %union.anon.5* %u to i64*
  %9 = load i64, i64* %cdr, align 8
  store i64 %9, i64* %backup_n, align 8
  %10 = load i64, i64* %initial.addr, align 8
  %sub17 = sub nsw i64 %10, 3
  %11 = inttoptr i64 %sub17 to i8*
  %12 = bitcast i8* %11 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %12, i32 0, i32 0
  %13 = load i64, i64* %car, align 8
  store i64 %13, i64* %initial.addr, align 8
  %14 = load i64, i64* %initial.addr, align 8
  call void @CHECK_STRING(i64 %14)
  %15 = load i64, i64* %backup_n, align 8
  %call18 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp19 = icmp eq i64 %15, %call18
  br i1 %cmp19, label %if.end.38, label %if.then.21

if.then.21:                                       ; preds = %if.then.16
  %16 = load i64, i64* %backup_n, align 8
  %and22 = and i64 %16, 7
  %conv23 = trunc i64 %and22 to i32
  %and24 = and i32 %conv23, -5
  %cmp25 = icmp eq i32 %and24, 2
  br i1 %cmp25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.21
  br label %cond.end

cond.false:                                       ; preds = %if.then.21
  %call27 = call i64 @builtin_lisp_symbol(i32 559)
  %17 = load i64, i64* %backup_n, align 8
  %18 = call i64 @wrong_type_argument(i64 %call27, i64 %17) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %19, %cond.true
  %20 = load i64, i64* %backup_n, align 8
  %shr = ashr i64 %20, 2
  %cmp28 = icmp slt i64 %shr, 1
  br i1 %cmp28, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %cond.end
  %21 = load i64, i64* %initial.addr, align 8
  %call31 = call i64 @SCHARS(i64 %21)
  %sub32 = sub nsw i64 0, %call31
  store i64 %sub32, i64* %pos, align 8
  br label %if.end.37

if.else:                                          ; preds = %cond.end
  %22 = load i64, i64* %backup_n, align 8
  %shr33 = ashr i64 %22, 2
  %sub34 = sub nsw i64 %shr33, 1
  %23 = load i64, i64* %initial.addr, align 8
  %call35 = call i64 @SCHARS(i64 %23)
  %sub36 = sub nsw i64 %sub34, %call35
  store i64 %sub36, i64* %pos, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.else, %if.then.30
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.16
  br label %if.end.40

if.else.39:                                       ; preds = %if.then.13
  %24 = load i64, i64* %initial.addr, align 8
  call void @CHECK_STRING(i64 %24)
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.39, %if.end.38
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.end.10
  %call42 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call42, i64* %val, align 8
  %25 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %directory_ = getelementptr inbounds %struct.buffer, %struct.buffer* %25, i32 0, i32 3
  %26 = load i64, i64* %directory_, align 8
  store i64 %26, i64* %ambient_dir, align 8
  %call43 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call43, i64* %input_method, align 8
  %call44 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call44, i64* %enable_multibyte, align 8
  %27 = load i64, i64* %prompt.addr, align 8
  %call45 = call zeroext i1 @STRINGP(i64 %27)
  br i1 %call45, label %if.end.47, label %if.then.46

if.then.46:                                       ; preds = %if.end.41
  %28 = load i64, i64* @empty_unibyte_string, align 8
  store i64 %28, i64* %prompt.addr, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %if.end.41
  %29 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 439), align 1
  %tobool48 = trunc i8 %29 to i1
  br i1 %tobool48, label %if.end.58, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.47
  %30 = load i64, i64* @minibuf_level, align 8
  %cmp49 = icmp sgt i64 %30, 0
  br i1 %cmp49, label %if.then.51, label %if.end.58

if.then.51:                                       ; preds = %land.lhs.true
  %31 = load i64, i64* @selected_window, align 8
  %32 = load i64, i64* @minibuf_window, align 8
  %cmp52 = icmp eq i64 %31, %32
  br i1 %cmp52, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %if.then.51
  call void (i8*, ...) @error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.50, i32 0, i32 0)) #5
  unreachable

if.else.55:                                       ; preds = %if.then.51
  %call56 = call i64 @builtin_lisp_symbol(i32 387)
  %call57 = call i64 @build_string(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.50, i32 0, i32 0))
  %33 = call i64 @Fthrow(i64 %call56, i64 %call57) #5
  unreachable

if.end.58:                                        ; preds = %land.lhs.true, %if.end.47
  %34 = load i8, i8* @noninteractive, align 1
  %tobool59 = trunc i8 %34 to i1
  br i1 %tobool59, label %land.lhs.true.66, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.58
  %35 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @daemon_pipe, i32 0, i64 1), align 4
  %cmp61 = icmp ne i32 %35, 0
  br i1 %cmp61, label %land.lhs.true.63, label %if.end.76

land.lhs.true.63:                                 ; preds = %lor.lhs.false
  %36 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @daemon_pipe, i32 0, i64 1), align 4
  %cmp64 = icmp sge i32 %36, 0
  br i1 %cmp64, label %land.lhs.true.66, label %if.end.76

land.lhs.true.66:                                 ; preds = %land.lhs.true.63, %if.end.58
  %37 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 86), align 8
  %call67 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp68 = icmp eq i64 %37, %call67
  br i1 %cmp68, label %if.then.70, label %if.end.76

if.then.70:                                       ; preds = %land.lhs.true.66
  %38 = load i64, i64* %map.addr, align 8
  %39 = load i64, i64* %initial.addr, align 8
  %40 = load i64, i64* %prompt.addr, align 8
  %41 = load i64, i64* %pos, align 8
  %shl = shl i64 %41, 2
  %add = add i64 %shl, 2
  %42 = load i8, i8* %expflag.addr, align 1
  %tobool71 = trunc i8 %42 to i1
  %43 = load i64, i64* %histvar.addr, align 8
  %44 = load i64, i64* %histpos.addr, align 8
  %45 = load i64, i64* %defalt.addr, align 8
  %46 = load i8, i8* %allow_props.addr, align 1
  %tobool72 = trunc i8 %46 to i1
  %47 = load i8, i8* %inherit_input_method.addr, align 1
  %tobool73 = trunc i8 %47 to i1
  %call74 = call i64 @read_minibuf_noninteractive(i64 %38, i64 %39, i64 %40, i64 %add, i1 zeroext %tobool71, i64 %43, i64 %44, i64 %45, i1 zeroext %tobool72, i1 zeroext %tobool73)
  store i64 %call74, i64* %val, align 8
  %48 = load i64, i64* %count, align 8
  %49 = load i64, i64* %val, align 8
  %call75 = call i64 @unbind_to(i64 %48, i64 %49)
  store i64 %call75, i64* %retval
  br label %return

if.end.76:                                        ; preds = %land.lhs.true.66, %land.lhs.true.63, %lor.lhs.false
  %call77 = call i64 @Fcurrent_buffer()
  call void @record_unwind_protect(void (i64)* @restore_buffer, i64 %call77)
  call void @choose_minibuf_frame()
  call void @record_unwind_protect_void(void ()* @choose_minibuf_frame)
  %call78 = call i64 @builtin_lisp_symbol(i32 0)
  %call79 = call i64 @Fcurrent_window_configuration(i64 %call78)
  call void @record_unwind_protect(void (i64)* @restore_window_configuration, i64 %call79)
  %50 = load i64, i64* @minibuf_window, align 8
  %call80 = call %struct.window* @XWINDOW(i64 %50)
  %frame81 = getelementptr inbounds %struct.window, %struct.window* %call80, i32 0, i32 1
  %51 = load i64, i64* %frame81, align 8
  store i64 %51, i64* %mini_frame, align 8
  %52 = load i64, i64* %mini_frame, align 8
  %53 = load i64, i64* @selected_frame, align 8
  %cmp82 = icmp eq i64 %52, %53
  br i1 %cmp82, label %if.end.86, label %if.then.84

if.then.84:                                       ; preds = %if.end.76
  %54 = load i64, i64* %mini_frame, align 8
  %call85 = call i64 @Fcurrent_window_configuration(i64 %54)
  call void @record_unwind_protect(void (i64)* @restore_window_configuration, i64 %call85)
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.84, %if.end.76
  %55 = load i64, i64* %mini_frame, align 8
  %call87 = call i64 @Fmake_frame_visible(i64 %55)
  %56 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 472), align 1
  %tobool88 = trunc i8 %56 to i1
  br i1 %tobool88, label %if.then.89, label %if.end.91

if.then.89:                                       ; preds = %if.end.86
  %57 = load i64, i64* %mini_frame, align 8
  %call90 = call i64 @Fraise_frame(i64 %57)
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.89, %if.end.86
  %58 = load i64, i64* %mini_frame, align 8
  %sub92 = sub nsw i64 %58, 5
  %59 = inttoptr i64 %sub92 to i8*
  %60 = bitcast i8* %59 to %struct.frame*
  call void @temporarily_switch_to_single_kboard(%struct.frame* %60)
  %61 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 216), align 8
  %62 = load i64, i64* @minibuf_window, align 8
  %63 = load i64, i64* @minibuf_save_list, align 8
  %call93 = call i64 @Fcons(i64 %62, i64 %63)
  %call94 = call i64 @Fcons(i64 %61, i64 %call93)
  store i64 %call94, i64* @minibuf_save_list, align 8
  %64 = load i64, i64* @minibuf_prompt, align 8
  %65 = load i64, i64* @minibuf_prompt_width, align 8
  %shl95 = shl i64 %65, 2
  %add96 = add i64 %shl95, 2
  %66 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 123), align 8
  %67 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 50), align 8
  %68 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 188), align 8
  %69 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 189), align 8
  %70 = load i64, i64* @minibuf_save_list, align 8
  %call97 = call i64 @Fcons(i64 %69, i64 %70)
  %call98 = call i64 @Fcons(i64 %68, i64 %call97)
  %call99 = call i64 @Fcons(i64 %67, i64 %call98)
  %call100 = call i64 @Fcons(i64 %66, i64 %call99)
  %call101 = call i64 @Fcons(i64 %add96, i64 %call100)
  %call102 = call i64 @Fcons(i64 %64, i64 %call101)
  store i64 %call102, i64* @minibuf_save_list, align 8
  call void @record_unwind_protect_void(void ()* @read_minibuf_unwind)
  %71 = load i64, i64* @minibuf_level, align 8
  %inc = add nsw i64 %71, 1
  store i64 %inc, i64* @minibuf_level, align 8
  call void @record_unwind_protect_void(void ()* @run_exit_minibuf_hook)
  store i64 0, i64* @minibuf_prompt_width, align 8
  %72 = load i64, i64* %prompt.addr, align 8
  %call103 = call i64 @Fcopy_sequence(i64 %72)
  store i64 %call103, i64* @minibuf_prompt, align 8
  %73 = load i64, i64* %histpos.addr, align 8
  store i64 %73, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 188), align 8
  %74 = load i64, i64* %histvar.addr, align 8
  store i64 %74, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 189), align 8
  %75 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 187), align 8
  store i64 %75, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 123), align 8
  %76 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 182), align 8
  %call104 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp105 = icmp eq i64 %76, %call104
  br i1 %cmp105, label %if.end.109, label %if.then.107

if.then.107:                                      ; preds = %if.end.91
  %call108 = call i64 @builtin_lisp_symbol(i32 598)
  store i64 %call108, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 182), align 8
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.107, %if.end.91
  %77 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 189), align 8
  %call110 = call i64 @find_symbol_value(i64 %77)
  store i64 %call110, i64* %histval, align 8
  %78 = load i64, i64* %histval, align 8
  %call111 = call i64 @builtin_lisp_symbol(i32 957)
  %cmp112 = icmp eq i64 %78, %call111
  br i1 %cmp112, label %if.then.114, label %if.end.118

if.then.114:                                      ; preds = %if.end.109
  %79 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 189), align 8
  %call115 = call i64 @builtin_lisp_symbol(i32 0)
  %call116 = call i64 @Fset(i64 %79, i64 %call115)
  %call117 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call117, i64* %histval, align 8
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.114, %if.end.109
  %80 = load i8, i8* %inherit_input_method.addr, align 1
  %tobool119 = trunc i8 %80 to i1
  br i1 %tobool119, label %if.then.120, label %if.end.123

if.then.120:                                      ; preds = %if.end.118
  %call121 = call i64 @builtin_lisp_symbol(i32 304)
  %call122 = call i64 @Fsymbol_value(i64 %call121)
  store i64 %call122, i64* %input_method, align 8
  %81 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_ = getelementptr inbounds %struct.buffer, %struct.buffer* %81, i32 0, i32 39
  %82 = load i64, i64* %enable_multibyte_characters_, align 8
  store i64 %82, i64* %enable_multibyte, align 8
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.120, %if.end.118
  %83 = load i64, i64* @minibuf_level, align 8
  %call124 = call i64 @get_minibuffer(i64 %83)
  store i64 %call124, i64* %minibuffer, align 8
  %84 = load i64, i64* %minibuffer, align 8
  %call125 = call i64 @Fset_buffer(i64 %84)
  %85 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %call126 = call i64 @builtin_lisp_symbol(i32 0)
  call void @bset_truncate_lines(%struct.buffer* %85, i64 %call126)
  %86 = load i8, i8* %inherit_input_method.addr, align 1
  %tobool127 = trunc i8 %86 to i1
  br i1 %tobool127, label %if.then.128, label %if.end.129

if.then.128:                                      ; preds = %if.end.123
  %87 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %88 = load i64, i64* %enable_multibyte, align 8
  call void @bset_enable_multibyte_characters(%struct.buffer* %87, i64 %88)
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.128, %if.end.123
  %89 = load i64, i64* %ambient_dir, align 8
  %call130 = call zeroext i1 @STRINGP(i64 %89)
  br i1 %call130, label %if.then.131, label %if.else.132

if.then.131:                                      ; preds = %if.end.129
  %90 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %91 = load i64, i64* %ambient_dir, align 8
  call void @bset_directory(%struct.buffer* %90, i64 %91)
  br label %if.end.152

if.else.132:                                      ; preds = %if.end.129
  %92 = load i64, i64* @Vbuffer_alist, align 8
  store i64 %92, i64* %tail, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.132
  %93 = load i64, i64* %tail, align 8
  %and133 = and i64 %93, 7
  %conv134 = trunc i64 %and133 to i32
  %cmp135 = icmp eq i32 %conv134, 3
  br i1 %cmp135, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %94 = load i64, i64* %tail, align 8
  %sub137 = sub nsw i64 %94, 3
  %95 = inttoptr i64 %sub137 to i8*
  %96 = bitcast i8* %95 to %struct.Lisp_Cons*
  %car138 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %96, i32 0, i32 0
  %97 = load i64, i64* %car138, align 8
  %sub139 = sub nsw i64 %97, 3
  %98 = inttoptr i64 %sub139 to i8*
  %99 = bitcast i8* %98 to %struct.Lisp_Cons*
  %u140 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %99, i32 0, i32 1
  %cdr141 = bitcast %union.anon.5* %u140 to i64*
  %100 = load i64, i64* %cdr141, align 8
  store i64 %100, i64* %buf, align 8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %101 = phi i1 [ false, %for.cond ], [ true, %land.rhs ]
  br i1 %101, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %102 = load i64, i64* %buf, align 8
  %call142 = call %struct.buffer* @XBUFFER(i64 %102)
  %directory_143 = getelementptr inbounds %struct.buffer, %struct.buffer* %call142, i32 0, i32 3
  %103 = load i64, i64* %directory_143, align 8
  %call144 = call zeroext i1 @STRINGP(i64 %103)
  br i1 %call144, label %if.then.145, label %if.end.148

if.then.145:                                      ; preds = %for.body
  %104 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %105 = load i64, i64* %buf, align 8
  %call146 = call %struct.buffer* @XBUFFER(i64 %105)
  %directory_147 = getelementptr inbounds %struct.buffer, %struct.buffer* %call146, i32 0, i32 3
  %106 = load i64, i64* %directory_147, align 8
  call void @bset_directory(%struct.buffer* %104, i64 %106)
  br label %for.end

if.end.148:                                       ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.148
  %107 = load i64, i64* %tail, align 8
  %sub149 = sub nsw i64 %107, 3
  %108 = inttoptr i64 %sub149 to i8*
  %109 = bitcast i8* %108 to %struct.Lisp_Cons*
  %u150 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %109, i32 0, i32 1
  %cdr151 = bitcast %union.anon.5* %u150 to i64*
  %110 = load i64, i64* %cdr151, align 8
  store i64 %110, i64* %tail, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.145, %land.end
  br label %if.end.152

if.end.152:                                       ; preds = %for.end, %if.then.131
  %111 = load i64, i64* %mini_frame, align 8
  %112 = load i64, i64* @selected_frame, align 8
  %cmp153 = icmp eq i64 %111, %112
  br i1 %cmp153, label %if.end.157, label %if.then.155

if.then.155:                                      ; preds = %if.end.152
  %113 = load i64, i64* @selected_frame, align 8
  %114 = load i64, i64* %mini_frame, align 8
  %call156 = call i64 @Fredirect_frame_focus(i64 %113, i64 %114)
  br label %if.end.157

if.end.157:                                       ; preds = %if.then.155, %if.end.152
  %115 = load i64, i64* @selected_window, align 8
  store i64 %115, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 181), align 8
  %116 = load i64, i64* @minibuf_level, align 8
  %cmp158 = icmp eq i64 %116, 1
  br i1 %cmp158, label %if.then.163, label %lor.lhs.false.160

lor.lhs.false.160:                                ; preds = %if.end.157
  %117 = load i64, i64* @minibuf_window, align 8
  %118 = load i64, i64* @selected_window, align 8
  %cmp161 = icmp eq i64 %117, %118
  br i1 %cmp161, label %if.end.164, label %if.then.163

if.then.163:                                      ; preds = %lor.lhs.false.160, %if.end.157
  %119 = load i64, i64* @selected_window, align 8
  store i64 %119, i64* @minibuf_selected_window, align 8
  br label %if.end.164

if.end.164:                                       ; preds = %if.then.163, %lor.lhs.false.160
  %call165 = call i64 @get_minibuffer(i64 0)
  store i64 %call165, i64* %empty_minibuf, align 8
  %120 = load i64, i64* @Vframe_list, align 8
  store i64 %120, i64* %dummy, align 8
  br label %for.cond.166

for.cond.166:                                     ; preds = %for.inc.191, %if.end.164
  %121 = load i64, i64* %dummy, align 8
  %and167 = and i64 %121, 7
  %conv168 = trunc i64 %and167 to i32
  %cmp169 = icmp eq i32 %conv168, 3
  br i1 %cmp169, label %land.rhs.171, label %land.end.174

land.rhs.171:                                     ; preds = %for.cond.166
  %122 = load i64, i64* %dummy, align 8
  %sub172 = sub nsw i64 %122, 3
  %123 = inttoptr i64 %sub172 to i8*
  %124 = bitcast i8* %123 to %struct.Lisp_Cons*
  %car173 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %124, i32 0, i32 0
  %125 = load i64, i64* %car173, align 8
  store i64 %125, i64* %frame, align 8
  br label %land.end.174

land.end.174:                                     ; preds = %land.rhs.171, %for.cond.166
  %126 = phi i1 [ false, %for.cond.166 ], [ true, %land.rhs.171 ]
  br i1 %126, label %for.body.175, label %for.end.195

for.body.175:                                     ; preds = %land.end.174
  %127 = load i64, i64* %frame, align 8
  %call176 = call i64 @Fframe_root_window(i64 %127)
  store i64 %call176, i64* %root_window, align 8
  %128 = load i64, i64* %root_window, align 8
  %call177 = call %struct.window* @XWINDOW(i64 %128)
  %next = getelementptr inbounds %struct.window, %struct.window* %call177, i32 0, i32 2
  %129 = load i64, i64* %next, align 8
  store i64 %129, i64* %mini_window, align 8
  %130 = load i64, i64* %mini_window, align 8
  %call178 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp179 = icmp eq i64 %130, %call178
  br i1 %cmp179, label %if.end.190, label %land.lhs.true.181

land.lhs.true.181:                                ; preds = %for.body.175
  %131 = load i64, i64* %mini_window, align 8
  %132 = load i64, i64* @minibuf_window, align 8
  %cmp182 = icmp eq i64 %131, %132
  br i1 %cmp182, label %if.end.190, label %land.lhs.true.184

land.lhs.true.184:                                ; preds = %land.lhs.true.181
  %133 = load i64, i64* %mini_window, align 8
  %call185 = call i64 @Fwindow_minibuffer_p(i64 %133)
  %call186 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp187 = icmp eq i64 %call185, %call186
  br i1 %cmp187, label %if.end.190, label %if.then.189

if.then.189:                                      ; preds = %land.lhs.true.184
  %134 = load i64, i64* %mini_window, align 8
  %135 = load i64, i64* %empty_minibuf, align 8
  call void @set_window_buffer(i64 %134, i64 %135, i1 zeroext false, i1 zeroext false)
  br label %if.end.190

if.end.190:                                       ; preds = %if.then.189, %land.lhs.true.184, %land.lhs.true.181, %for.body.175
  br label %for.inc.191

for.inc.191:                                      ; preds = %if.end.190
  %136 = load i64, i64* %dummy, align 8
  %sub192 = sub nsw i64 %136, 3
  %137 = inttoptr i64 %sub192 to i8*
  %138 = bitcast i8* %137 to %struct.Lisp_Cons*
  %u193 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %138, i32 0, i32 1
  %cdr194 = bitcast %union.anon.5* %u193 to i64*
  %139 = load i64, i64* %cdr194, align 8
  store i64 %139, i64* %dummy, align 8
  br label %for.cond.166

for.end.195:                                      ; preds = %land.end.174
  %140 = load i64, i64* @minibuf_window, align 8
  %call196 = call i64 @Fcurrent_buffer()
  call void @set_window_buffer(i64 %140, i64 %call196, i1 zeroext false, i1 zeroext false)
  %141 = load i64, i64* @minibuf_window, align 8
  %call197 = call i64 @builtin_lisp_symbol(i32 0)
  %call198 = call i64 @Fselect_window(i64 %141, i64 %call197)
  %142 = load i64, i64* @minibuf_window, align 8
  %call199 = call %struct.window* @XWINDOW(i64 %142)
  %hscroll = getelementptr inbounds %struct.window, %struct.window* %call199, i32 0, i32 38
  store i64 0, i64* %hscroll, align 8
  %143 = load i64, i64* @minibuf_window, align 8
  %call200 = call %struct.window* @XWINDOW(i64 %143)
  %suspend_auto_hscroll = getelementptr inbounds %struct.window, %struct.window* %call200, i32 0, i32 67
  %bf.load = load i16, i16* %suspend_auto_hscroll, align 4
  %bf.clear = and i16 %bf.load, 32767
  store i16 %bf.clear, i16* %suspend_auto_hscroll, align 4
  %call201 = call i64 @builtin_lisp_symbol(i32 771)
  %call202 = call i64 @Fmake_local_variable(i64 %call201)
  store i8 1, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 482), align 1
  %call203 = call i64 @SPECPDL_INDEX()
  store i64 %call203, i64* %count1, align 8
  %call204 = call i64 @builtin_lisp_symbol(i32 547)
  %call205 = call i64 @builtin_lisp_symbol(i32 901)
  call void @specbind(i64 %call204, i64 %call205)
  %call206 = call i64 @builtin_lisp_symbol(i32 544)
  %call207 = call i64 @builtin_lisp_symbol(i32 901)
  call void @specbind(i64 %call206, i64 %call207)
  %call208 = call i64 @Ferase_buffer()
  %144 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_209 = getelementptr inbounds %struct.buffer, %struct.buffer* %144, i32 0, i32 39
  %145 = load i64, i64* %enable_multibyte_characters_209, align 8
  %call210 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp211 = icmp eq i64 %145, %call210
  br i1 %cmp211, label %if.end.217, label %land.lhs.true.213

land.lhs.true.213:                                ; preds = %for.end.195
  %146 = load i64, i64* @minibuf_prompt, align 8
  %call214 = call zeroext i1 @STRING_MULTIBYTE(i64 %146)
  br i1 %call214, label %if.end.217, label %if.then.215

if.then.215:                                      ; preds = %land.lhs.true.213
  %147 = load i64, i64* @minibuf_prompt, align 8
  %call216 = call i64 @Fstring_make_multibyte(i64 %147)
  store i64 %call216, i64* @minibuf_prompt, align 8
  br label %if.end.217

if.end.217:                                       ; preds = %if.then.215, %land.lhs.true.213, %for.end.195
  %call218 = call i64 @Finsert(i64 1, i64* @minibuf_prompt)
  %148 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %148, i32 0, i32 75
  %149 = load i64, i64* %pt, align 8
  %add219 = add nsw i64 %149, 0
  %cmp220 = icmp sgt i64 %add219, 1
  br i1 %cmp220, label %if.then.222, label %if.end.253

if.then.222:                                      ; preds = %if.end.217
  %150 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt223 = getelementptr inbounds %struct.buffer, %struct.buffer* %150, i32 0, i32 75
  %151 = load i64, i64* %pt223, align 8
  %add224 = add nsw i64 %151, 0
  %shl225 = shl i64 %add224, 2
  %add226 = add i64 %shl225, 2
  %call227 = call i64 @builtin_lisp_symbol(i32 468)
  %call228 = call i64 @builtin_lisp_symbol(i32 901)
  %call229 = call i64 @builtin_lisp_symbol(i32 0)
  %call230 = call i64 @Fput_text_property(i64 6, i64 %add226, i64 %call227, i64 %call228, i64 %call229)
  %152 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt231 = getelementptr inbounds %struct.buffer, %struct.buffer* %152, i32 0, i32 75
  %153 = load i64, i64* %pt231, align 8
  %add232 = add nsw i64 %153, 0
  %shl233 = shl i64 %add232, 2
  %add234 = add i64 %shl233, 2
  %call235 = call i64 @builtin_lisp_symbol(i32 794)
  %call236 = call i64 @builtin_lisp_symbol(i32 901)
  %call237 = call i64 @builtin_lisp_symbol(i32 0)
  %call238 = call i64 @Fput_text_property(i64 6, i64 %add234, i64 %call235, i64 %call236, i64 %call237)
  %154 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt239 = getelementptr inbounds %struct.buffer, %struct.buffer* %154, i32 0, i32 75
  %155 = load i64, i64* %pt239, align 8
  %add240 = add nsw i64 %155, 0
  %shl241 = shl i64 %add240, 2
  %add242 = add i64 %shl241, 2
  %call243 = call i64 @builtin_lisp_symbol(i32 403)
  %call244 = call i64 @builtin_lisp_symbol(i32 901)
  %call245 = call i64 @builtin_lisp_symbol(i32 0)
  %call246 = call i64 @Fput_text_property(i64 6, i64 %add242, i64 %call243, i64 %call244, i64 %call245)
  %156 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt247 = getelementptr inbounds %struct.buffer, %struct.buffer* %156, i32 0, i32 75
  %157 = load i64, i64* %pt247, align 8
  %add248 = add nsw i64 %157, 0
  %shl249 = shl i64 %add248, 2
  %add250 = add i64 %shl249, 2
  %158 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 193), align 8
  %call251 = call i64 @builtin_lisp_symbol(i32 0)
  %call252 = call i64 @Fadd_text_properties(i64 6, i64 %add250, i64 %158, i64 %call251)
  br label %if.end.253

if.end.253:                                       ; preds = %if.then.222, %if.end.217
  %159 = load i64, i64* %count1, align 8
  %call254 = call i64 @builtin_lisp_symbol(i32 0)
  %call255 = call i64 @unbind_to(i64 %159, i64 %call254)
  %call256 = call i64 @current_column()
  store i64 %call256, i64* @minibuf_prompt_width, align 8
  %160 = load i64, i64* %initial.addr, align 8
  %call257 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp258 = icmp eq i64 %160, %call257
  br i1 %cmp258, label %if.end.265, label %if.then.260

if.then.260:                                      ; preds = %if.end.253
  %call261 = call i64 @Finsert(i64 1, i64* %initial.addr)
  %161 = load i64, i64* %pos, align 8
  %shl262 = shl i64 %161, 2
  %add263 = add i64 %shl262, 2
  %call264 = call i64 @Fforward_char(i64 %add263)
  br label %if.end.265

if.end.265:                                       ; preds = %if.then.260, %if.end.253
  call void @clear_message(i1 zeroext true, i1 zeroext true)
  %162 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %163 = load i64, i64* %map.addr, align 8
  call void @bset_keymap(%struct.buffer* %162, i64 %163)
  %164 = load i64, i64* %input_method, align 8
  %call266 = call zeroext i1 @STRINGP(i64 %164)
  br i1 %call266, label %land.lhs.true.268, label %if.end.277

land.lhs.true.268:                                ; preds = %if.end.265
  %call269 = call i64 @builtin_lisp_symbol(i32 159)
  %call270 = call i64 @Ffboundp(i64 %call269)
  %call271 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp272 = icmp eq i64 %call270, %call271
  br i1 %cmp272, label %if.end.277, label %if.then.274

if.then.274:                                      ; preds = %land.lhs.true.268
  %call275 = call i64 @builtin_lisp_symbol(i32 159)
  %165 = load i64, i64* %input_method, align 8
  %call276 = call i64 @call1(i64 %call275, i64 %165)
  br label %if.end.277

if.end.277:                                       ; preds = %if.then.274, %land.lhs.true.268, %if.end.265
  %call278 = call i64 @builtin_lisp_symbol(i32 667)
  call void @run_hook(i64 %call278)
  %166 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %call279 = call i64 @builtin_lisp_symbol(i32 0)
  call void @bset_undo_list(%struct.buffer* %166, i64 %call279)
  %call280 = call i64 @recursive_edit_1()
  %167 = load i64, i64* @minibuf_window, align 8
  %call281 = call %struct.window* @XWINDOW(i64 %167)
  %cursor = getelementptr inbounds %struct.window, %struct.window* %call281, i32 0, i32 49
  %vpos = getelementptr inbounds %struct.cursor_pos, %struct.cursor_pos* %cursor, i32 0, i32 3
  %168 = load i32, i32* %vpos, align 4
  %cmp282 = icmp sge i32 %168, 0
  br i1 %cmp282, label %land.lhs.true.284, label %if.end.299

land.lhs.true.284:                                ; preds = %if.end.277
  %169 = load i8, i8* @noninteractive, align 1
  %tobool285 = trunc i8 %169 to i1
  br i1 %tobool285, label %if.end.299, label %if.then.286

if.then.286:                                      ; preds = %land.lhs.true.284
  %170 = load i64, i64* @minibuf_window, align 8
  %call287 = call %struct.window* @XWINDOW(i64 %170)
  %cursor288 = getelementptr inbounds %struct.window, %struct.window* %call287, i32 0, i32 49
  %hpos = getelementptr inbounds %struct.cursor_pos, %struct.cursor_pos* %cursor288, i32 0, i32 2
  store i32 0, i32* %hpos, align 4
  %171 = load i64, i64* @minibuf_window, align 8
  %call289 = call %struct.window* @XWINDOW(i64 %171)
  %cursor290 = getelementptr inbounds %struct.window, %struct.window* %call289, i32 0, i32 49
  %x = getelementptr inbounds %struct.cursor_pos, %struct.cursor_pos* %cursor290, i32 0, i32 0
  store i32 0, i32* %x, align 4
  %172 = load i64, i64* @minibuf_window, align 8
  %call291 = call %struct.window* @XWINDOW(i64 %172)
  %must_be_updated_p = getelementptr inbounds %struct.window, %struct.window* %call291, i32 0, i32 67
  %bf.load292 = load i16, i16* %must_be_updated_p, align 4
  %bf.clear293 = and i16 %bf.load292, -1025
  %bf.set = or i16 %bf.clear293, 1024
  store i16 %bf.set, i16* %must_be_updated_p, align 4
  %173 = load i64, i64* @selected_frame, align 8
  %sub294 = sub nsw i64 %173, 5
  %174 = inttoptr i64 %sub294 to i8*
  %175 = bitcast i8* %174 to %struct.frame*
  %call295 = call zeroext i1 @update_frame(%struct.frame* %175, i1 zeroext true, i1 zeroext true)
  %176 = load i64, i64* @minibuf_window, align 8
  %call296 = call %struct.window* @XWINDOW(i64 %176)
  %frame297 = getelementptr inbounds %struct.window, %struct.window* %call296, i32 0, i32 1
  %177 = load i64, i64* %frame297, align 8
  %sub298 = sub nsw i64 %177, 5
  %178 = inttoptr i64 %sub298 to i8*
  %179 = bitcast i8* %178 to %struct.frame*
  call void @flush_frame(%struct.frame* %179)
  br label %if.end.299

if.end.299:                                       ; preds = %if.then.286, %land.lhs.true.284, %if.end.277
  %180 = load i64, i64* %minibuffer, align 8
  %call300 = call i64 @Fset_buffer(i64 %180)
  %181 = load i8, i8* %allow_props.addr, align 1
  %tobool301 = trunc i8 %181 to i1
  br i1 %tobool301, label %if.then.302, label %if.else.304

if.then.302:                                      ; preds = %if.end.299
  %call303 = call i64 @Fminibuffer_contents()
  store i64 %call303, i64* %val, align 8
  br label %if.end.306

if.else.304:                                      ; preds = %if.end.299
  %call305 = call i64 @Fminibuffer_contents_no_properties()
  store i64 %call305, i64* %val, align 8
  br label %if.end.306

if.end.306:                                       ; preds = %if.else.304, %if.then.302
  %182 = load i64, i64* %val, align 8
  store i64 %182, i64* @last_minibuf_string, align 8
  %183 = load i64, i64* %val, align 8
  %call307 = call i64 @SCHARS(i64 %183)
  %cmp308 = icmp ne i64 %call307, 0
  br i1 %cmp308, label %if.then.310, label %if.else.311

if.then.310:                                      ; preds = %if.end.306
  %184 = load i64, i64* %val, align 8
  store i64 %184, i64* %histstring, align 8
  br label %if.end.331

if.else.311:                                      ; preds = %if.end.306
  %185 = load i64, i64* %defalt.addr, align 8
  %call312 = call zeroext i1 @STRINGP(i64 %185)
  br i1 %call312, label %if.then.313, label %if.else.314

if.then.313:                                      ; preds = %if.else.311
  %186 = load i64, i64* %defalt.addr, align 8
  store i64 %186, i64* %histstring, align 8
  br label %if.end.330

if.else.314:                                      ; preds = %if.else.311
  %187 = load i64, i64* %defalt.addr, align 8
  %and315 = and i64 %187, 7
  %conv316 = trunc i64 %and315 to i32
  %cmp317 = icmp eq i32 %conv316, 3
  br i1 %cmp317, label %land.lhs.true.319, label %if.else.327

land.lhs.true.319:                                ; preds = %if.else.314
  %188 = load i64, i64* %defalt.addr, align 8
  %sub320 = sub nsw i64 %188, 3
  %189 = inttoptr i64 %sub320 to i8*
  %190 = bitcast i8* %189 to %struct.Lisp_Cons*
  %car321 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %190, i32 0, i32 0
  %191 = load i64, i64* %car321, align 8
  %call322 = call zeroext i1 @STRINGP(i64 %191)
  br i1 %call322, label %if.then.324, label %if.else.327

if.then.324:                                      ; preds = %land.lhs.true.319
  %192 = load i64, i64* %defalt.addr, align 8
  %sub325 = sub nsw i64 %192, 3
  %193 = inttoptr i64 %sub325 to i8*
  %194 = bitcast i8* %193 to %struct.Lisp_Cons*
  %car326 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %194, i32 0, i32 0
  %195 = load i64, i64* %car326, align 8
  store i64 %195, i64* %histstring, align 8
  br label %if.end.329

if.else.327:                                      ; preds = %land.lhs.true.319, %if.else.314
  %call328 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call328, i64* %histstring, align 8
  br label %if.end.329

if.end.329:                                       ; preds = %if.else.327, %if.then.324
  br label %if.end.330

if.end.330:                                       ; preds = %if.end.329, %if.then.313
  br label %if.end.331

if.end.331:                                       ; preds = %if.end.330, %if.then.310
  %196 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 124), align 8
  %call332 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp333 = icmp eq i64 %196, %call332
  br i1 %cmp333, label %if.end.399, label %land.lhs.true.335

land.lhs.true.335:                                ; preds = %if.end.331
  %197 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 189), align 8
  %and336 = and i64 %197, 7
  %conv337 = trunc i64 %and336 to i32
  %cmp338 = icmp eq i32 %conv337, 0
  br i1 %cmp338, label %land.lhs.true.340, label %if.end.399

land.lhs.true.340:                                ; preds = %land.lhs.true.335
  %198 = load i64, i64* %histstring, align 8
  %call341 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp342 = icmp eq i64 %198, %call341
  br i1 %cmp342, label %if.end.399, label %if.then.344

if.then.344:                                      ; preds = %land.lhs.true.340
  %199 = load i64, i64* %histval, align 8
  %call345 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp346 = icmp eq i64 %199, %call345
  br i1 %cmp346, label %if.then.359, label %lor.lhs.false.348

lor.lhs.false.348:                                ; preds = %if.then.344
  %200 = load i64, i64* %histval, align 8
  %and349 = and i64 %200, 7
  %conv350 = trunc i64 %and349 to i32
  %cmp351 = icmp eq i32 %conv350, 3
  br i1 %cmp351, label %land.lhs.true.353, label %if.end.398

land.lhs.true.353:                                ; preds = %lor.lhs.false.348
  %201 = load i64, i64* %histstring, align 8
  %202 = load i64, i64* %histval, align 8
  %call354 = call i64 @Fcar(i64 %202)
  %call355 = call i64 @Fequal(i64 %201, i64 %call354)
  %call356 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp357 = icmp eq i64 %call355, %call356
  br i1 %cmp357, label %if.then.359, label %if.end.398

if.then.359:                                      ; preds = %land.lhs.true.353, %if.then.344
  %203 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 445), align 1
  %tobool360 = trunc i8 %203 to i1
  br i1 %tobool360, label %if.then.361, label %if.end.363

if.then.361:                                      ; preds = %if.then.359
  %204 = load i64, i64* %histstring, align 8
  %205 = load i64, i64* %histval, align 8
  %call362 = call i64 @Fdelete(i64 %204, i64 %205)
  br label %if.end.363

if.end.363:                                       ; preds = %if.then.361, %if.then.359
  %206 = load i64, i64* %histstring, align 8
  %207 = load i64, i64* %histval, align 8
  %call364 = call i64 @Fcons(i64 %206, i64 %207)
  store i64 %call364, i64* %histval, align 8
  %208 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 189), align 8
  %209 = load i64, i64* %histval, align 8
  %call365 = call i64 @Fset(i64 %208, i64 %209)
  %210 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 189), align 8
  %call366 = call i64 @builtin_lisp_symbol(i32 520)
  %call367 = call i64 @Fget(i64 %210, i64 %call366)
  store i64 %call367, i64* %length, align 8
  %211 = load i64, i64* %length, align 8
  %call368 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp369 = icmp eq i64 %211, %call368
  br i1 %cmp369, label %if.then.371, label %if.end.372

if.then.371:                                      ; preds = %if.end.363
  %212 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 125), align 8
  store i64 %212, i64* %length, align 8
  br label %if.end.372

if.end.372:                                       ; preds = %if.then.371, %if.end.363
  %213 = load i64, i64* %length, align 8
  %and373 = and i64 %213, 7
  %conv374 = trunc i64 %and373 to i32
  %and375 = and i32 %conv374, -5
  %cmp376 = icmp eq i32 %and375, 2
  br i1 %cmp376, label %if.then.378, label %if.end.397

if.then.378:                                      ; preds = %if.end.372
  %214 = load i64, i64* %length, align 8
  %shr379 = ashr i64 %214, 2
  %cmp380 = icmp sle i64 %shr379, 0
  br i1 %cmp380, label %if.then.382, label %if.else.385

if.then.382:                                      ; preds = %if.then.378
  %215 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 189), align 8
  %call383 = call i64 @builtin_lisp_symbol(i32 0)
  %call384 = call i64 @Fset(i64 %215, i64 %call383)
  br label %if.end.396

if.else.385:                                      ; preds = %if.then.378
  %216 = load i64, i64* %length, align 8
  %call386 = call i64 @Fsub1(i64 %216)
  %217 = load i64, i64* %histval, align 8
  %call387 = call i64 @Fnthcdr(i64 %call386, i64 %217)
  store i64 %call387, i64* %temp, align 8
  %218 = load i64, i64* %temp, align 8
  %and388 = and i64 %218, 7
  %conv389 = trunc i64 %and388 to i32
  %cmp390 = icmp eq i32 %conv389, 3
  br i1 %cmp390, label %if.then.392, label %if.end.395

if.then.392:                                      ; preds = %if.else.385
  %219 = load i64, i64* %temp, align 8
  %call393 = call i64 @builtin_lisp_symbol(i32 0)
  %call394 = call i64 @Fsetcdr(i64 %219, i64 %call393)
  br label %if.end.395

if.end.395:                                       ; preds = %if.then.392, %if.else.385
  br label %if.end.396

if.end.396:                                       ; preds = %if.end.395, %if.then.382
  br label %if.end.397

if.end.397:                                       ; preds = %if.end.396, %if.end.372
  br label %if.end.398

if.end.398:                                       ; preds = %if.end.397, %land.lhs.true.353, %lor.lhs.false.348
  br label %if.end.399

if.end.399:                                       ; preds = %if.end.398, %land.lhs.true.340, %land.lhs.true.335, %if.end.331
  %220 = load i8, i8* %expflag.addr, align 1
  %tobool400 = trunc i8 %220 to i1
  br i1 %tobool400, label %if.then.401, label %if.end.403

if.then.401:                                      ; preds = %if.end.399
  %221 = load i64, i64* %val, align 8
  %222 = load i64, i64* %defalt.addr, align 8
  %call402 = call i64 @string_to_object(i64 %221, i64 %222)
  store i64 %call402, i64* %val, align 8
  br label %if.end.403

if.end.403:                                       ; preds = %if.then.401, %if.end.399
  %223 = load i64, i64* %count, align 8
  %224 = load i64, i64* %val, align 8
  %call404 = call i64 @unbind_to(i64 %223, i64 %224)
  store i64 %call404, i64* %retval
  br label %return

return:                                           ; preds = %if.end.403, %if.then.70
  %225 = load i64, i64* %retval
  ret i64 %225
}

; Function Attrs: nounwind uwtable
define i64 @Fread_string(i64 %prompt, i64 %initial_input, i64 %history, i64 %default_value, i64 %inherit_input_method) #0 {
entry:
  %prompt.addr = alloca i64, align 8
  %initial_input.addr = alloca i64, align 8
  %history.addr = alloca i64, align 8
  %default_value.addr = alloca i64, align 8
  %inherit_input_method.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %count = alloca i64, align 8
  store i64 %prompt, i64* %prompt.addr, align 8
  store i64 %initial_input, i64* %initial_input.addr, align 8
  store i64 %history, i64* %history.addr, align 8
  store i64 %default_value, i64* %default_value.addr, align 8
  store i64 %inherit_input_method, i64* %inherit_input_method.addr, align 8
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %count, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 662)
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  call void @specbind(i64 %call1, i64 %call2)
  %0 = load i64, i64* %prompt.addr, align 8
  %1 = load i64, i64* %initial_input.addr, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %2 = load i64, i64* %history.addr, align 8
  %3 = load i64, i64* %default_value.addr, align 8
  %4 = load i64, i64* %inherit_input_method.addr, align 8
  %call5 = call i64 @Fread_from_minibuffer(i64 %0, i64 %1, i64 %call3, i64 %call4, i64 %2, i64 %3, i64 %4)
  store i64 %call5, i64* %val, align 8
  %5 = load i64, i64* %val, align 8
  %call6 = call zeroext i1 @STRINGP(i64 %5)
  br i1 %call6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load i64, i64* %val, align 8
  %call7 = call i64 @SCHARS(i64 %6)
  %cmp = icmp eq i64 %call7, 0
  br i1 %cmp, label %land.lhs.true.8, label %if.end

land.lhs.true.8:                                  ; preds = %land.lhs.true
  %7 = load i64, i64* %default_value.addr, align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp10 = icmp eq i64 %7, %call9
  br i1 %cmp10, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.8
  %8 = load i64, i64* %default_value.addr, align 8
  %and = and i64 %8, 7
  %conv = trunc i64 %and to i32
  %cmp11 = icmp eq i32 %conv, 3
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %9 = load i64, i64* %default_value.addr, align 8
  %sub = sub nsw i64 %9, 3
  %10 = inttoptr i64 %sub to i8*
  %11 = bitcast i8* %10 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %11, i32 0, i32 0
  %12 = load i64, i64* %car, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %13 = load i64, i64* %default_value.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %12, %cond.true ], [ %13, %cond.false ]
  store i64 %cond, i64* %val, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end, %land.lhs.true.8, %land.lhs.true, %entry
  %14 = load i64, i64* %count, align 8
  %15 = load i64, i64* %val, align 8
  %call13 = call i64 @unbind_to(i64 %14, i64 %15)
  ret i64 %call13
}

declare void @specbind(i64, i64) #1

declare i64 @SCHARS(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fread_no_blanks_input(i64 %prompt, i64 %initial, i64 %inherit_input_method) #0 {
entry:
  %prompt.addr = alloca i64, align 8
  %initial.addr = alloca i64, align 8
  %inherit_input_method.addr = alloca i64, align 8
  store i64 %prompt, i64* %prompt.addr, align 8
  store i64 %initial, i64* %initial.addr, align 8
  store i64 %inherit_input_method, i64* %inherit_input_method.addr, align 8
  %0 = load i64, i64* %prompt.addr, align 8
  call void @CHECK_STRING(i64 %0)
  %1 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 191), align 8
  %2 = load i64, i64* %initial.addr, align 8
  %3 = load i64, i64* %prompt.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 665)
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %4 = load i64, i64* %inherit_input_method.addr, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %4, %call2
  %lnot = xor i1 %cmp, true
  %call3 = call i64 @read_minibuf(i64 %1, i64 %2, i64 %3, i1 zeroext false, i64 %call, i64 2, i64 %call1, i1 zeroext false, i1 zeroext %lnot)
  ret i64 %call3
}

; Function Attrs: nounwind uwtable
define i64 @Fread_command(i64 %prompt, i64 %default_value) #0 {
entry:
  %retval = alloca i64, align 8
  %prompt.addr = alloca i64, align 8
  %default_value.addr = alloca i64, align 8
  %name = alloca i64, align 8
  %default_string = alloca i64, align 8
  store i64 %prompt, i64* %prompt.addr, align 8
  store i64 %default_value, i64* %default_value.addr, align 8
  %0 = load i64, i64* %default_value.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* %default_string, align 8
  br label %if.end.7

if.else:                                          ; preds = %entry
  %1 = load i64, i64* %default_value.addr, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %cmp2 = icmp eq i32 %conv, 0
  br i1 %cmp2, label %if.then.4, label %if.else.6

if.then.4:                                        ; preds = %if.else
  %2 = load i64, i64* %default_value.addr, align 8
  %call5 = call i64 @SYMBOL_NAME(i64 %2)
  store i64 %call5, i64* %default_string, align 8
  br label %if.end

if.else.6:                                        ; preds = %if.else
  %3 = load i64, i64* %default_value.addr, align 8
  store i64 %3, i64* %default_string, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.6, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %4 = load i64, i64* %prompt.addr, align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 207), align 8
  %call8 = call i64 @builtin_lisp_symbol(i32 286)
  %call9 = call i64 @builtin_lisp_symbol(i32 901)
  %call10 = call i64 @builtin_lisp_symbol(i32 0)
  %call11 = call i64 @builtin_lisp_symbol(i32 0)
  %6 = load i64, i64* %default_string, align 8
  %call12 = call i64 @builtin_lisp_symbol(i32 0)
  %call13 = call i64 @Fcompleting_read(i64 %4, i64 %5, i64 %call8, i64 %call9, i64 %call10, i64 %call11, i64 %6, i64 %call12)
  store i64 %call13, i64* %name, align 8
  %7 = load i64, i64* %name, align 8
  %call14 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp15 = icmp eq i64 %7, %call14
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.7
  %8 = load i64, i64* %name, align 8
  store i64 %8, i64* %retval
  br label %return

if.end.18:                                        ; preds = %if.end.7
  %9 = load i64, i64* %name, align 8
  %call19 = call i64 @builtin_lisp_symbol(i32 0)
  %call20 = call i64 @Fintern(i64 %9, i64 %call19)
  store i64 %call20, i64* %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.then.17
  %10 = load i64, i64* %retval
  ret i64 %10
}

declare i64 @SYMBOL_NAME(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fcompleting_read(i64 %prompt, i64 %collection, i64 %predicate, i64 %require_match, i64 %initial_input, i64 %hist, i64 %def, i64 %inherit_input_method) #0 {
entry:
  %prompt.addr = alloca i64, align 8
  %collection.addr = alloca i64, align 8
  %predicate.addr = alloca i64, align 8
  %require_match.addr = alloca i64, align 8
  %initial_input.addr = alloca i64, align 8
  %hist.addr = alloca i64, align 8
  %def.addr = alloca i64, align 8
  %inherit_input_method.addr = alloca i64, align 8
  %.compoundliteral = alloca [9 x i64], align 8
  store i64 %prompt, i64* %prompt.addr, align 8
  store i64 %collection, i64* %collection.addr, align 8
  store i64 %predicate, i64* %predicate.addr, align 8
  store i64 %require_match, i64* %require_match.addr, align 8
  store i64 %initial_input, i64* %initial_input.addr, align 8
  store i64 %hist, i64* %hist.addr, align 8
  store i64 %def, i64* %def.addr, align 8
  store i64 %inherit_input_method, i64* %inherit_input_method.addr, align 8
  %arrayinit.begin = getelementptr inbounds [9 x i64], [9 x i64]* %.compoundliteral, i64 0, i64 0
  %call = call i64 @intern(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i32 0, i32 0))
  %call1 = call i64 @Fsymbol_value(i64 %call)
  store i64 %call1, i64* %arrayinit.begin
  %arrayinit.element = getelementptr inbounds i64, i64* %arrayinit.begin, i64 1
  %0 = load i64, i64* %prompt.addr, align 8
  store i64 %0, i64* %arrayinit.element
  %arrayinit.element2 = getelementptr inbounds i64, i64* %arrayinit.element, i64 1
  %1 = load i64, i64* %collection.addr, align 8
  store i64 %1, i64* %arrayinit.element2
  %arrayinit.element3 = getelementptr inbounds i64, i64* %arrayinit.element2, i64 1
  %2 = load i64, i64* %predicate.addr, align 8
  store i64 %2, i64* %arrayinit.element3
  %arrayinit.element4 = getelementptr inbounds i64, i64* %arrayinit.element3, i64 1
  %3 = load i64, i64* %require_match.addr, align 8
  store i64 %3, i64* %arrayinit.element4
  %arrayinit.element5 = getelementptr inbounds i64, i64* %arrayinit.element4, i64 1
  %4 = load i64, i64* %initial_input.addr, align 8
  store i64 %4, i64* %arrayinit.element5
  %arrayinit.element6 = getelementptr inbounds i64, i64* %arrayinit.element5, i64 1
  %5 = load i64, i64* %hist.addr, align 8
  store i64 %5, i64* %arrayinit.element6
  %arrayinit.element7 = getelementptr inbounds i64, i64* %arrayinit.element6, i64 1
  %6 = load i64, i64* %def.addr, align 8
  store i64 %6, i64* %arrayinit.element7
  %arrayinit.element8 = getelementptr inbounds i64, i64* %arrayinit.element7, i64 1
  %7 = load i64, i64* %inherit_input_method.addr, align 8
  store i64 %7, i64* %arrayinit.element8
  %arraydecay = getelementptr inbounds [9 x i64], [9 x i64]* %.compoundliteral, i32 0, i32 0
  %call9 = call i64 @Ffuncall(i64 9, i64* %arraydecay)
  ret i64 %call9
}

declare i64 @Fintern(i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fread_variable(i64 %prompt, i64 %default_value) #0 {
entry:
  %retval = alloca i64, align 8
  %prompt.addr = alloca i64, align 8
  %default_value.addr = alloca i64, align 8
  %name = alloca i64, align 8
  %default_string = alloca i64, align 8
  store i64 %prompt, i64* %prompt.addr, align 8
  store i64 %default_value, i64* %default_value.addr, align 8
  %0 = load i64, i64* %default_value.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* %default_string, align 8
  br label %if.end.7

if.else:                                          ; preds = %entry
  %1 = load i64, i64* %default_value.addr, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %cmp2 = icmp eq i32 %conv, 0
  br i1 %cmp2, label %if.then.4, label %if.else.6

if.then.4:                                        ; preds = %if.else
  %2 = load i64, i64* %default_value.addr, align 8
  %call5 = call i64 @SYMBOL_NAME(i64 %2)
  store i64 %call5, i64* %default_string, align 8
  br label %if.end

if.else.6:                                        ; preds = %if.else
  %3 = load i64, i64* %default_value.addr, align 8
  store i64 %3, i64* %default_string, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.6, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %4 = load i64, i64* %prompt.addr, align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 207), align 8
  %call8 = call i64 @builtin_lisp_symbol(i32 310)
  %call9 = call i64 @builtin_lisp_symbol(i32 901)
  %call10 = call i64 @builtin_lisp_symbol(i32 0)
  %call11 = call i64 @builtin_lisp_symbol(i32 0)
  %6 = load i64, i64* %default_string, align 8
  %call12 = call i64 @builtin_lisp_symbol(i32 0)
  %call13 = call i64 @Fcompleting_read(i64 %4, i64 %5, i64 %call8, i64 %call9, i64 %call10, i64 %call11, i64 %6, i64 %call12)
  store i64 %call13, i64* %name, align 8
  %7 = load i64, i64* %name, align 8
  %call14 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp15 = icmp eq i64 %7, %call14
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.7
  %8 = load i64, i64* %name, align 8
  store i64 %8, i64* %retval
  br label %return

if.end.18:                                        ; preds = %if.end.7
  %9 = load i64, i64* %name, align 8
  %call19 = call i64 @builtin_lisp_symbol(i32 0)
  %call20 = call i64 @Fintern(i64 %9, i64 %call19)
  store i64 %call20, i64* %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.then.17
  %10 = load i64, i64* %retval
  ret i64 %10
}

; Function Attrs: nounwind uwtable
define i64 @Fread_buffer(i64 %prompt, i64 %def, i64 %require_match, i64 %predicate) #0 {
entry:
  %prompt.addr = alloca i64, align 8
  %def.addr = alloca i64, align 8
  %require_match.addr = alloca i64, align 8
  %predicate.addr = alloca i64, align 8
  %result = alloca i64, align 8
  %s = alloca i8*, align 8
  %len = alloca i64, align 8
  %count = alloca i64, align 8
  %format = alloca i64, align 8
  %.compoundliteral = alloca %union.Aligned_String, align 8
  %.compoundliteral48 = alloca [3 x i64], align 8
  store i64 %prompt, i64* %prompt.addr, align 8
  store i64 %def, i64* %def.addr, align 8
  store i64 %require_match, i64* %require_match.addr, align 8
  store i64 %predicate, i64* %predicate.addr, align 8
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %count, align 8
  %0 = load i64, i64* %def.addr, align 8
  %call1 = call zeroext i1 @BUFFERP(i64 %0)
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %def.addr, align 8
  %call2 = call %struct.buffer* @XBUFFER(i64 %1)
  %name_ = getelementptr inbounds %struct.buffer, %struct.buffer* %call2, i32 0, i32 1
  %2 = load i64, i64* %name_, align 8
  store i64 %2, i64* %def.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call3 = call i64 @builtin_lisp_symbol(i32 289)
  %3 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 485), align 1
  %tobool = trunc i8 %3 to i1
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %call4 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call4, %cond.true ], [ %call5, %cond.false ]
  call void @specbind(i64 %call3, i64 %cond)
  %4 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 242), align 8
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %4, %call6
  br i1 %cmp, label %if.then.7, label %if.else.65

if.then.7:                                        ; preds = %cond.end
  %5 = load i64, i64* %def.addr, align 8
  %call8 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp9 = icmp eq i64 %5, %call8
  br i1 %cmp9, label %if.end.59, label %if.then.10

if.then.10:                                       ; preds = %if.then.7
  %6 = load i64, i64* %prompt.addr, align 8
  %call11 = call zeroext i1 @STRINGP(i64 %6)
  br i1 %call11, label %if.then.12, label %if.end.44

if.then.12:                                       ; preds = %if.then.10
  %7 = load i64, i64* %prompt.addr, align 8
  %call13 = call i8* @SSDATA(i64 %7)
  store i8* %call13, i8** %s, align 8
  %8 = load i64, i64* %prompt.addr, align 8
  %call14 = call i64 @SBYTES(i64 %8)
  store i64 %call14, i64* %len, align 8
  %9 = load i64, i64* %len, align 8
  %cmp15 = icmp sge i64 %9, 2
  br i1 %cmp15, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.12
  %10 = load i64, i64* %len, align 8
  %sub = sub nsw i64 %10, 2
  %11 = load i8*, i8** %s, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %sub
  %12 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %12 to i32
  %cmp16 = icmp eq i32 %conv, 58
  br i1 %cmp16, label %land.lhs.true.18, label %if.else

land.lhs.true.18:                                 ; preds = %land.lhs.true
  %13 = load i64, i64* %len, align 8
  %sub19 = sub nsw i64 %13, 1
  %14 = load i8*, i8** %s, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %14, i64 %sub19
  %15 = load i8, i8* %arrayidx20, align 1
  %conv21 = sext i8 %15 to i32
  %cmp22 = icmp eq i32 %conv21, 32
  br i1 %cmp22, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %land.lhs.true.18
  %16 = load i64, i64* %len, align 8
  %sub25 = sub nsw i64 %16, 2
  store i64 %sub25, i64* %len, align 8
  br label %if.end.41

if.else:                                          ; preds = %land.lhs.true.18, %land.lhs.true, %if.then.12
  %17 = load i64, i64* %len, align 8
  %cmp26 = icmp sge i64 %17, 1
  br i1 %cmp26, label %land.lhs.true.28, label %if.end.40

land.lhs.true.28:                                 ; preds = %if.else
  %18 = load i64, i64* %len, align 8
  %sub29 = sub nsw i64 %18, 1
  %19 = load i8*, i8** %s, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %19, i64 %sub29
  %20 = load i8, i8* %arrayidx30, align 1
  %conv31 = sext i8 %20 to i32
  %cmp32 = icmp eq i32 %conv31, 58
  br i1 %cmp32, label %if.then.39, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.28
  %21 = load i64, i64* %len, align 8
  %sub34 = sub nsw i64 %21, 1
  %22 = load i8*, i8** %s, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %22, i64 %sub34
  %23 = load i8, i8* %arrayidx35, align 1
  %conv36 = sext i8 %23 to i32
  %cmp37 = icmp eq i32 %conv36, 32
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %lor.lhs.false, %land.lhs.true.28
  %24 = load i64, i64* %len, align 8
  %dec = add nsw i64 %24, -1
  store i64 %dec, i64* %len, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %lor.lhs.false, %if.else
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.24
  %25 = load i8*, i8** %s, align 8
  %26 = load i64, i64* %len, align 8
  %27 = load i64, i64* %prompt.addr, align 8
  %call42 = call zeroext i1 @STRING_MULTIBYTE(i64 %27)
  %call43 = call i64 @make_specified_string(i8* %25, i64 -1, i64 %26, i1 zeroext %call42)
  store i64 %call43, i64* %prompt.addr, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.41, %if.then.10
  %s45 = bitcast %union.Aligned_String* %.compoundliteral to %struct.Lisp_String*
  %size = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s45, i32 0, i32 0
  store i64 17, i64* %size, align 8
  %size_byte = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s45, i32 0, i32 1
  store i64 -1, i64* %size_byte, align 8
  %intervals = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s45, i32 0, i32 2
  store %struct.interval* null, %struct.interval** %intervals, align 8
  %data = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s45, i32 0, i32 3
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i8** %data, align 8
  %s46 = bitcast %union.Aligned_String* %.compoundliteral to %struct.Lisp_String*
  %28 = bitcast %struct.Lisp_String* %s46 to i8*
  %call47 = call i64 @make_lisp_ptr(i8* %28, i32 4)
  store i64 %call47, i64* %format, align 8
  %arrayinit.begin = getelementptr inbounds [3 x i64], [3 x i64]* %.compoundliteral48, i64 0, i64 0
  %29 = load i64, i64* %format, align 8
  store i64 %29, i64* %arrayinit.begin
  %arrayinit.element = getelementptr inbounds i64, i64* %arrayinit.begin, i64 1
  %30 = load i64, i64* %prompt.addr, align 8
  store i64 %30, i64* %arrayinit.element
  %arrayinit.element49 = getelementptr inbounds i64, i64* %arrayinit.element, i64 1
  %31 = load i64, i64* %def.addr, align 8
  %and = and i64 %31, 7
  %conv50 = trunc i64 %and to i32
  %cmp51 = icmp eq i32 %conv50, 3
  br i1 %cmp51, label %cond.true.53, label %cond.false.55

cond.true.53:                                     ; preds = %if.end.44
  %32 = load i64, i64* %def.addr, align 8
  %sub54 = sub nsw i64 %32, 3
  %33 = inttoptr i64 %sub54 to i8*
  %34 = bitcast i8* %33 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %34, i32 0, i32 0
  %35 = load i64, i64* %car, align 8
  br label %cond.end.56

cond.false.55:                                    ; preds = %if.end.44
  %36 = load i64, i64* %def.addr, align 8
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.false.55, %cond.true.53
  %cond57 = phi i64 [ %35, %cond.true.53 ], [ %36, %cond.false.55 ]
  store i64 %cond57, i64* %arrayinit.element49
  %arraydecay = getelementptr inbounds [3 x i64], [3 x i64]* %.compoundliteral48, i32 0, i32 0
  %call58 = call i64 @Fformat(i64 3, i64* %arraydecay)
  store i64 %call58, i64* %prompt.addr, align 8
  br label %if.end.59

if.end.59:                                        ; preds = %cond.end.56, %if.then.7
  %37 = load i64, i64* %prompt.addr, align 8
  %call60 = call i64 @intern(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0))
  %38 = load i64, i64* %predicate.addr, align 8
  %39 = load i64, i64* %require_match.addr, align 8
  %call61 = call i64 @builtin_lisp_symbol(i32 0)
  %call62 = call i64 @builtin_lisp_symbol(i32 224)
  %40 = load i64, i64* %def.addr, align 8
  %call63 = call i64 @builtin_lisp_symbol(i32 0)
  %call64 = call i64 @Fcompleting_read(i64 %37, i64 %call60, i64 %38, i64 %39, i64 %call61, i64 %call62, i64 %40, i64 %call63)
  store i64 %call64, i64* %result, align 8
  br label %if.end.75

if.else.65:                                       ; preds = %cond.end
  %41 = load i64, i64* %predicate.addr, align 8
  %call66 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp67 = icmp eq i64 %41, %call66
  br i1 %cmp67, label %cond.true.69, label %cond.false.71

cond.true.69:                                     ; preds = %if.else.65
  %42 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 242), align 8
  %43 = load i64, i64* %prompt.addr, align 8
  %44 = load i64, i64* %def.addr, align 8
  %45 = load i64, i64* %require_match.addr, align 8
  %call70 = call i64 @call3(i64 %42, i64 %43, i64 %44, i64 %45)
  br label %cond.end.73

cond.false.71:                                    ; preds = %if.else.65
  %46 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 242), align 8
  %47 = load i64, i64* %prompt.addr, align 8
  %48 = load i64, i64* %def.addr, align 8
  %49 = load i64, i64* %require_match.addr, align 8
  %50 = load i64, i64* %predicate.addr, align 8
  %call72 = call i64 @call4(i64 %46, i64 %47, i64 %48, i64 %49, i64 %50)
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.false.71, %cond.true.69
  %cond74 = phi i64 [ %call70, %cond.true.69 ], [ %call72, %cond.false.71 ]
  store i64 %cond74, i64* %result, align 8
  br label %if.end.75

if.end.75:                                        ; preds = %cond.end.73, %if.end.59
  %51 = load i64, i64* %count, align 8
  %52 = load i64, i64* %result, align 8
  %call76 = call i64 @unbind_to(i64 %51, i64 %52)
  ret i64 %call76
}

declare zeroext i1 @BUFFERP(i64) #1

declare i8* @SSDATA(i64) #1

declare i64 @SBYTES(i64) #1

declare i64 @make_specified_string(i8*, i64, i64, i1 zeroext) #1

declare zeroext i1 @STRING_MULTIBYTE(i64) #1

declare i64 @make_lisp_ptr(i8*, i32) #1

declare i64 @Fformat(i64, i64*) #1

declare i64 @call3(i64, i64, i64, i64) #1

declare i64 @call4(i64, i64, i64, i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Ftry_completion(i64 %string, i64 %collection, i64 %predicate) #0 {
entry:
  %retval = alloca i64, align 8
  %string.addr = alloca i64, align 8
  %collection.addr = alloca i64, align 8
  %predicate.addr = alloca i64, align 8
  %bestmatch = alloca i64, align 8
  %tail = alloca i64, align 8
  %elt = alloca i64, align 8
  %eltstring = alloca i64, align 8
  %bestmatchsize = alloca i64, align 8
  %compare = alloca i64, align 8
  %matchsize = alloca i64, align 8
  %type = alloca i32, align 4
  %idx = alloca i64, align 8
  %obsize = alloca i64, align 8
  %matchcount = alloca i32, align 4
  %bindcount = alloca i64, align 8
  %bucket = alloca i64, align 8
  %zero = alloca i64, align 8
  %end = alloca i64, align 8
  %tem = alloca i64, align 8
  %regexps = alloca i64, align 8
  store i64 %string, i64* %string.addr, align 8
  store i64 %collection, i64* %collection.addr, align 8
  store i64 %predicate, i64* %predicate.addr, align 8
  store i64 0, i64* %bestmatchsize, align 8
  %0 = load i64, i64* %collection.addr, align 8
  %call = call zeroext i1 @HASH_TABLE_P(i64 %0)
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.9

cond.false:                                       ; preds = %entry
  %1 = load i64, i64* %collection.addr, align 8
  %call1 = call zeroext i1 @VECTORP(i64 %1)
  br i1 %call1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.false
  br label %cond.end

cond.false.3:                                     ; preds = %cond.false
  %2 = load i64, i64* %collection.addr, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %2, %call4
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.false.3
  %3 = load i64, i64* %collection.addr, align 8
  %and = and i64 %3, 7
  %conv = trunc i64 %and to i32
  %cmp5 = icmp eq i32 %conv, 3
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %4 = load i64, i64* %collection.addr, align 8
  %call7 = call zeroext i1 @FUNCTIONP(i64 %4)
  %lnot = xor i1 %call7, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %5 = phi i1 [ false, %lor.rhs ], [ %lnot, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %cond.false.3
  %6 = phi i1 [ true, %cond.false.3 ], [ %5, %land.end ]
  %cond = select i1 %6, i32 1, i32 0
  br label %cond.end

cond.end:                                         ; preds = %lor.end, %cond.true.2
  %cond8 = phi i32 [ 2, %cond.true.2 ], [ %cond, %lor.end ]
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.end, %cond.true
  %cond10 = phi i32 [ 3, %cond.true ], [ %cond8, %cond.end ]
  store i32 %cond10, i32* %type, align 4
  store i64 0, i64* %idx, align 8
  store i64 0, i64* %obsize, align 8
  store i32 0, i32* %matchcount, align 4
  store i64 -1, i64* %bindcount, align 8
  %7 = load i64, i64* %string.addr, align 8
  call void @CHECK_STRING(i64 %7)
  %8 = load i32, i32* %type, align 4
  %cmp11 = icmp eq i32 %8, 0
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.9
  %9 = load i64, i64* %collection.addr, align 8
  %10 = load i64, i64* %string.addr, align 8
  %11 = load i64, i64* %predicate.addr, align 8
  %call13 = call i64 @builtin_lisp_symbol(i32 0)
  %call14 = call i64 @call3(i64 %9, i64 %10, i64 %11, i64 %call13)
  store i64 %call14, i64* %retval
  br label %return

if.end:                                           ; preds = %cond.end.9
  %call15 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call15, i64* %bucket, align 8
  store i64 %call15, i64* %bestmatch, align 8
  store i64 2, i64* %zero, align 8
  %12 = load i64, i64* %collection.addr, align 8
  store i64 %12, i64* %tail, align 8
  %13 = load i32, i32* %type, align 4
  %cmp16 = icmp eq i32 %13, 2
  br i1 %cmp16, label %if.then.18, label %if.end.22

if.then.18:                                       ; preds = %if.end
  %14 = load i64, i64* %collection.addr, align 8
  %call19 = call i64 @check_obarray(i64 %14)
  store i64 %call19, i64* %collection.addr, align 8
  %15 = load i64, i64* %collection.addr, align 8
  %call20 = call i64 @ASIZE(i64 %15)
  store i64 %call20, i64* %obsize, align 8
  %16 = load i64, i64* %collection.addr, align 8
  %17 = load i64, i64* %idx, align 8
  %call21 = call i64 @AREF(i64 %16, i64 %17)
  store i64 %call21, i64* %bucket, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.18, %if.end
  br label %while.body

while.body:                                       ; preds = %if.end.22, %if.else.68, %if.then.160, %if.then.194, %if.end.304
  %18 = load i32, i32* %type, align 4
  %cmp23 = icmp eq i32 %18, 1
  br i1 %cmp23, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %while.body
  %19 = load i64, i64* %tail, align 8
  %and26 = and i64 %19, 7
  %conv27 = trunc i64 %and26 to i32
  %cmp28 = icmp eq i32 %conv27, 3
  br i1 %cmp28, label %if.end.31, label %if.then.30

if.then.30:                                       ; preds = %if.then.25
  br label %while.end.305

if.end.31:                                        ; preds = %if.then.25
  %20 = load i64, i64* %tail, align 8
  %sub = sub nsw i64 %20, 3
  %21 = inttoptr i64 %sub to i8*
  %22 = bitcast i8* %21 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %22, i32 0, i32 0
  %23 = load i64, i64* %car, align 8
  store i64 %23, i64* %elt, align 8
  %24 = load i64, i64* %elt, align 8
  %and32 = and i64 %24, 7
  %conv33 = trunc i64 %and32 to i32
  %cmp34 = icmp eq i32 %conv33, 3
  br i1 %cmp34, label %cond.true.36, label %cond.false.39

cond.true.36:                                     ; preds = %if.end.31
  %25 = load i64, i64* %elt, align 8
  %sub37 = sub nsw i64 %25, 3
  %26 = inttoptr i64 %sub37 to i8*
  %27 = bitcast i8* %26 to %struct.Lisp_Cons*
  %car38 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %27, i32 0, i32 0
  %28 = load i64, i64* %car38, align 8
  br label %cond.end.40

cond.false.39:                                    ; preds = %if.end.31
  %29 = load i64, i64* %elt, align 8
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.39, %cond.true.36
  %cond41 = phi i64 [ %28, %cond.true.36 ], [ %29, %cond.false.39 ]
  store i64 %cond41, i64* %eltstring, align 8
  %30 = load i64, i64* %tail, align 8
  %sub42 = sub nsw i64 %30, 3
  %31 = inttoptr i64 %sub42 to i8*
  %32 = bitcast i8* %31 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %32, i32 0, i32 1
  %cdr = bitcast %union.anon.5* %u to i64*
  %33 = load i64, i64* %cdr, align 8
  store i64 %33, i64* %tail, align 8
  br label %if.end.97

if.else:                                          ; preds = %while.body
  %34 = load i32, i32* %type, align 4
  %cmp43 = icmp eq i32 %34, 2
  br i1 %cmp43, label %if.then.45, label %if.else.71

if.then.45:                                       ; preds = %if.else
  %35 = load i64, i64* %bucket, align 8
  %36 = load i64, i64* %zero, align 8
  %cmp46 = icmp eq i64 %35, %36
  br i1 %cmp46, label %if.else.64, label %if.then.48

if.then.48:                                       ; preds = %if.then.45
  %37 = load i64, i64* %bucket, align 8
  %and49 = and i64 %37, 7
  %conv50 = trunc i64 %and49 to i32
  %cmp51 = icmp eq i32 %conv50, 0
  br i1 %cmp51, label %if.end.54, label %if.then.53

if.then.53:                                       ; preds = %if.then.48
  call void (i8*, ...) @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i32 0, i32 0)) #5
  unreachable

if.end.54:                                        ; preds = %if.then.48
  %38 = load i64, i64* %bucket, align 8
  store i64 %38, i64* %elt, align 8
  %39 = load i64, i64* %elt, align 8
  store i64 %39, i64* %eltstring, align 8
  %40 = load i64, i64* %bucket, align 8
  %sub55 = sub nsw i64 %40, 0
  %add.ptr = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub55
  %41 = bitcast i8* %add.ptr to %struct.Lisp_Symbol*
  %next = getelementptr inbounds %struct.Lisp_Symbol, %struct.Lisp_Symbol* %41, i32 0, i32 5
  %42 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %next, align 8
  %tobool = icmp ne %struct.Lisp_Symbol* %42, null
  br i1 %tobool, label %if.then.56, label %if.else.61

if.then.56:                                       ; preds = %if.end.54
  %43 = load i64, i64* %bucket, align 8
  %sub57 = sub nsw i64 %43, 0
  %add.ptr58 = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub57
  %44 = bitcast i8* %add.ptr58 to %struct.Lisp_Symbol*
  %next59 = getelementptr inbounds %struct.Lisp_Symbol, %struct.Lisp_Symbol* %44, i32 0, i32 5
  %45 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %next59, align 8
  %call60 = call i64 @make_lisp_symbol(%struct.Lisp_Symbol* %45)
  store i64 %call60, i64* %bucket, align 8
  br label %if.end.63

if.else.61:                                       ; preds = %if.end.54
  %call62 = call i64 @make_natnum(i64 0)
  store i64 %call62, i64* %bucket, align 8
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.61, %if.then.56
  br label %if.end.70

if.else.64:                                       ; preds = %if.then.45
  %46 = load i64, i64* %idx, align 8
  %inc = add nsw i64 %46, 1
  store i64 %inc, i64* %idx, align 8
  %47 = load i64, i64* %obsize, align 8
  %cmp65 = icmp sge i64 %inc, %47
  br i1 %cmp65, label %if.then.67, label %if.else.68

if.then.67:                                       ; preds = %if.else.64
  br label %while.end.305

if.else.68:                                       ; preds = %if.else.64
  %48 = load i64, i64* %collection.addr, align 8
  %49 = load i64, i64* %idx, align 8
  %call69 = call i64 @AREF(i64 %48, i64 %49)
  store i64 %call69, i64* %bucket, align 8
  br label %while.body

if.end.70:                                        ; preds = %if.end.63
  br label %if.end.96

if.else.71:                                       ; preds = %if.else
  br label %while.cond.72

while.cond.72:                                    ; preds = %while.body.84, %if.else.71
  %50 = load i64, i64* %idx, align 8
  %51 = load i64, i64* %collection.addr, align 8
  %call73 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %51)
  %call74 = call i64 @HASH_TABLE_SIZE(%struct.Lisp_Hash_Table* %call73)
  %cmp75 = icmp slt i64 %50, %call74
  br i1 %cmp75, label %land.rhs.77, label %land.end.83

land.rhs.77:                                      ; preds = %while.cond.72
  %52 = load i64, i64* %collection.addr, align 8
  %call78 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %52)
  %53 = load i64, i64* %idx, align 8
  %call79 = call i64 @HASH_HASH(%struct.Lisp_Hash_Table* %call78, i64 %53)
  %call80 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp81 = icmp eq i64 %call79, %call80
  br label %land.end.83

land.end.83:                                      ; preds = %land.rhs.77, %while.cond.72
  %54 = phi i1 [ false, %while.cond.72 ], [ %cmp81, %land.rhs.77 ]
  br i1 %54, label %while.body.84, label %while.end

while.body.84:                                    ; preds = %land.end.83
  %55 = load i64, i64* %idx, align 8
  %inc85 = add nsw i64 %55, 1
  store i64 %inc85, i64* %idx, align 8
  br label %while.cond.72

while.end:                                        ; preds = %land.end.83
  %56 = load i64, i64* %idx, align 8
  %57 = load i64, i64* %collection.addr, align 8
  %call86 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %57)
  %call87 = call i64 @HASH_TABLE_SIZE(%struct.Lisp_Hash_Table* %call86)
  %cmp88 = icmp sge i64 %56, %call87
  br i1 %cmp88, label %if.then.90, label %if.else.91

if.then.90:                                       ; preds = %while.end
  br label %while.end.305

if.else.91:                                       ; preds = %while.end
  %58 = load i64, i64* %collection.addr, align 8
  %call92 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %58)
  %59 = load i64, i64* %idx, align 8
  %inc93 = add nsw i64 %59, 1
  store i64 %inc93, i64* %idx, align 8
  %call94 = call i64 @HASH_KEY(%struct.Lisp_Hash_Table* %call92, i64 %59)
  store i64 %call94, i64* %eltstring, align 8
  store i64 %call94, i64* %elt, align 8
  br label %if.end.95

if.end.95:                                        ; preds = %if.else.91
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.end.70
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %cond.end.40
  %60 = load i64, i64* %eltstring, align 8
  %and98 = and i64 %60, 7
  %conv99 = trunc i64 %and98 to i32
  %cmp100 = icmp eq i32 %conv99, 0
  br i1 %cmp100, label %if.then.102, label %if.end.104

if.then.102:                                      ; preds = %if.end.97
  %61 = load i64, i64* %eltstring, align 8
  %call103 = call i64 @Fsymbol_name(i64 %61)
  store i64 %call103, i64* %eltstring, align 8
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.102, %if.end.97
  %62 = load i64, i64* %eltstring, align 8
  %call105 = call zeroext i1 @STRINGP(i64 %62)
  br i1 %call105, label %land.lhs.true, label %if.end.304

land.lhs.true:                                    ; preds = %if.end.104
  %63 = load i64, i64* %string.addr, align 8
  %call107 = call i64 @SCHARS(i64 %63)
  %64 = load i64, i64* %eltstring, align 8
  %call108 = call i64 @SCHARS(i64 %64)
  %cmp109 = icmp sle i64 %call107, %call108
  br i1 %cmp109, label %land.lhs.true.111, label %if.end.304

land.lhs.true.111:                                ; preds = %land.lhs.true
  %65 = load i64, i64* %eltstring, align 8
  %66 = load i64, i64* %zero, align 8
  %67 = load i64, i64* %string.addr, align 8
  %call112 = call i64 @SCHARS(i64 %67)
  %shl = shl i64 %call112, 2
  %add = add i64 %shl, 2
  %68 = load i64, i64* %string.addr, align 8
  %69 = load i64, i64* %zero, align 8
  %call113 = call i64 @builtin_lisp_symbol(i32 0)
  %70 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 428), align 1
  %tobool114 = trunc i8 %70 to i1
  br i1 %tobool114, label %cond.true.116, label %cond.false.118

cond.true.116:                                    ; preds = %land.lhs.true.111
  %call117 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end.120

cond.false.118:                                   ; preds = %land.lhs.true.111
  %call119 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.120

cond.end.120:                                     ; preds = %cond.false.118, %cond.true.116
  %cond121 = phi i64 [ %call117, %cond.true.116 ], [ %call119, %cond.false.118 ]
  %call122 = call i64 @Fcompare_strings(i64 %65, i64 %66, i64 %add, i64 %68, i64 %69, i64 %call113, i64 %cond121)
  store i64 %call122, i64* %tem, align 8
  %call123 = call i64 @builtin_lisp_symbol(i32 901)
  %71 = load i64, i64* %tem, align 8
  %cmp124 = icmp eq i64 %call123, %71
  br i1 %cmp124, label %if.then.126, label %if.end.304

if.then.126:                                      ; preds = %cond.end.120
  %72 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 44), align 8
  store i64 %72, i64* %regexps, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.126
  %73 = load i64, i64* %regexps, align 8
  %and127 = and i64 %73, 7
  %conv128 = trunc i64 %and127 to i32
  %cmp129 = icmp eq i32 %conv128, 3
  br i1 %cmp129, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %74 = load i64, i64* %bindcount, align 8
  %cmp131 = icmp slt i64 %74, 0
  br i1 %cmp131, label %if.then.133, label %if.end.144

if.then.133:                                      ; preds = %for.body
  %call134 = call i64 @SPECPDL_INDEX()
  store i64 %call134, i64* %bindcount, align 8
  %call135 = call i64 @builtin_lisp_symbol(i32 238)
  %75 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 428), align 1
  %tobool136 = trunc i8 %75 to i1
  br i1 %tobool136, label %cond.true.138, label %cond.false.140

cond.true.138:                                    ; preds = %if.then.133
  %call139 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end.142

cond.false.140:                                   ; preds = %if.then.133
  %call141 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.142

cond.end.142:                                     ; preds = %cond.false.140, %cond.true.138
  %cond143 = phi i64 [ %call139, %cond.true.138 ], [ %call141, %cond.false.140 ]
  call void @specbind(i64 %call135, i64 %cond143)
  br label %if.end.144

if.end.144:                                       ; preds = %cond.end.142, %for.body
  %76 = load i64, i64* %regexps, align 8
  %sub145 = sub nsw i64 %76, 3
  %77 = inttoptr i64 %sub145 to i8*
  %78 = bitcast i8* %77 to %struct.Lisp_Cons*
  %car146 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %78, i32 0, i32 0
  %79 = load i64, i64* %car146, align 8
  %80 = load i64, i64* %eltstring, align 8
  %81 = load i64, i64* %zero, align 8
  %call147 = call i64 @Fstring_match(i64 %79, i64 %80, i64 %81)
  store i64 %call147, i64* %tem, align 8
  %82 = load i64, i64* %tem, align 8
  %call148 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp149 = icmp eq i64 %82, %call148
  br i1 %cmp149, label %if.then.151, label %if.end.152

if.then.151:                                      ; preds = %if.end.144
  br label %for.end

if.end.152:                                       ; preds = %if.end.144
  br label %for.inc

for.inc:                                          ; preds = %if.end.152
  %83 = load i64, i64* %regexps, align 8
  %sub153 = sub nsw i64 %83, 3
  %84 = inttoptr i64 %sub153 to i8*
  %85 = bitcast i8* %84 to %struct.Lisp_Cons*
  %u154 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %85, i32 0, i32 1
  %cdr155 = bitcast %union.anon.5* %u154 to i64*
  %86 = load i64, i64* %cdr155, align 8
  store i64 %86, i64* %regexps, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.151, %for.cond
  %87 = load i64, i64* %regexps, align 8
  %and156 = and i64 %87, 7
  %conv157 = trunc i64 %and156 to i32
  %cmp158 = icmp eq i32 %conv157, 3
  br i1 %cmp158, label %if.then.160, label %if.end.161

if.then.160:                                      ; preds = %for.end
  br label %while.body

if.end.161:                                       ; preds = %for.end
  %88 = load i64, i64* %predicate.addr, align 8
  %call162 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp163 = icmp eq i64 %88, %call162
  br i1 %cmp163, label %if.end.196, label %if.then.165

if.then.165:                                      ; preds = %if.end.161
  %89 = load i64, i64* %predicate.addr, align 8
  %call166 = call i64 @builtin_lisp_symbol(i32 286)
  %cmp167 = icmp eq i64 %89, %call166
  br i1 %cmp167, label %if.then.169, label %if.else.172

if.then.169:                                      ; preds = %if.then.165
  %90 = load i64, i64* %elt, align 8
  %call170 = call i64 @builtin_lisp_symbol(i32 0)
  %call171 = call i64 @Fcommandp(i64 %90, i64 %call170)
  store i64 %call171, i64* %tem, align 8
  br label %if.end.190

if.else.172:                                      ; preds = %if.then.165
  %91 = load i64, i64* %bindcount, align 8
  %cmp173 = icmp sge i64 %91, 0
  br i1 %cmp173, label %if.then.175, label %if.end.178

if.then.175:                                      ; preds = %if.else.172
  %92 = load i64, i64* %bindcount, align 8
  %call176 = call i64 @builtin_lisp_symbol(i32 0)
  %call177 = call i64 @unbind_to(i64 %92, i64 %call176)
  store i64 -1, i64* %bindcount, align 8
  br label %if.end.178

if.end.178:                                       ; preds = %if.then.175, %if.else.172
  %93 = load i32, i32* %type, align 4
  %cmp179 = icmp eq i32 %93, 3
  br i1 %cmp179, label %cond.true.181, label %cond.false.186

cond.true.181:                                    ; preds = %if.end.178
  %94 = load i64, i64* %predicate.addr, align 8
  %95 = load i64, i64* %elt, align 8
  %96 = load i64, i64* %collection.addr, align 8
  %call182 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %96)
  %97 = load i64, i64* %idx, align 8
  %sub183 = sub nsw i64 %97, 1
  %call184 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call182, i64 %sub183)
  %call185 = call i64 @call2(i64 %94, i64 %95, i64 %call184)
  br label %cond.end.188

cond.false.186:                                   ; preds = %if.end.178
  %98 = load i64, i64* %predicate.addr, align 8
  %99 = load i64, i64* %elt, align 8
  %call187 = call i64 @call1(i64 %98, i64 %99)
  br label %cond.end.188

cond.end.188:                                     ; preds = %cond.false.186, %cond.true.181
  %cond189 = phi i64 [ %call185, %cond.true.181 ], [ %call187, %cond.false.186 ]
  store i64 %cond189, i64* %tem, align 8
  br label %if.end.190

if.end.190:                                       ; preds = %cond.end.188, %if.then.169
  %100 = load i64, i64* %tem, align 8
  %call191 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp192 = icmp eq i64 %100, %call191
  br i1 %cmp192, label %if.then.194, label %if.end.195

if.then.194:                                      ; preds = %if.end.190
  br label %while.body

if.end.195:                                       ; preds = %if.end.190
  br label %if.end.196

if.end.196:                                       ; preds = %if.end.195, %if.end.161
  %101 = load i64, i64* %bestmatch, align 8
  %call197 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp198 = icmp eq i64 %101, %call197
  br i1 %cmp198, label %if.then.200, label %if.else.202

if.then.200:                                      ; preds = %if.end.196
  store i32 1, i32* %matchcount, align 4
  %102 = load i64, i64* %eltstring, align 8
  store i64 %102, i64* %bestmatch, align 8
  %103 = load i64, i64* %eltstring, align 8
  %call201 = call i64 @SCHARS(i64 %103)
  store i64 %call201, i64* %bestmatchsize, align 8
  br label %if.end.303

if.else.202:                                      ; preds = %if.end.196
  %104 = load i64, i64* %bestmatchsize, align 8
  %105 = load i64, i64* %eltstring, align 8
  %call203 = call i64 @SCHARS(i64 %105)
  %cmp204 = icmp slt i64 %104, %call203
  br i1 %cmp204, label %cond.true.206, label %cond.false.207

cond.true.206:                                    ; preds = %if.else.202
  %106 = load i64, i64* %bestmatchsize, align 8
  br label %cond.end.209

cond.false.207:                                   ; preds = %if.else.202
  %107 = load i64, i64* %eltstring, align 8
  %call208 = call i64 @SCHARS(i64 %107)
  br label %cond.end.209

cond.end.209:                                     ; preds = %cond.false.207, %cond.true.206
  %cond210 = phi i64 [ %106, %cond.true.206 ], [ %call208, %cond.false.207 ]
  store i64 %cond210, i64* %compare, align 8
  %108 = load i64, i64* %bestmatch, align 8
  %109 = load i64, i64* %zero, align 8
  %110 = load i64, i64* %compare, align 8
  %shl211 = shl i64 %110, 2
  %add212 = add i64 %shl211, 2
  %111 = load i64, i64* %eltstring, align 8
  %112 = load i64, i64* %zero, align 8
  %113 = load i64, i64* %compare, align 8
  %shl213 = shl i64 %113, 2
  %add214 = add i64 %shl213, 2
  %114 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 428), align 1
  %tobool215 = trunc i8 %114 to i1
  br i1 %tobool215, label %cond.true.217, label %cond.false.219

cond.true.217:                                    ; preds = %cond.end.209
  %call218 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end.221

cond.false.219:                                   ; preds = %cond.end.209
  %call220 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.221

cond.end.221:                                     ; preds = %cond.false.219, %cond.true.217
  %cond222 = phi i64 [ %call218, %cond.true.217 ], [ %call220, %cond.false.219 ]
  %call223 = call i64 @Fcompare_strings(i64 %108, i64 %109, i64 %add212, i64 %111, i64 %112, i64 %add214, i64 %cond222)
  store i64 %call223, i64* %tem, align 8
  %115 = load i64, i64* %tem, align 8
  %call224 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp225 = icmp eq i64 %115, %call224
  br i1 %cmp225, label %cond.true.227, label %cond.false.228

cond.true.227:                                    ; preds = %cond.end.221
  %116 = load i64, i64* %compare, align 8
  br label %cond.end.239

cond.false.228:                                   ; preds = %cond.end.221
  %117 = load i64, i64* %tem, align 8
  %shr = ashr i64 %117, 2
  %cmp229 = icmp slt i64 %shr, 0
  br i1 %cmp229, label %cond.true.231, label %cond.false.234

cond.true.231:                                    ; preds = %cond.false.228
  %118 = load i64, i64* %tem, align 8
  %shr232 = ashr i64 %118, 2
  %sub233 = sub nsw i64 0, %shr232
  br label %cond.end.236

cond.false.234:                                   ; preds = %cond.false.228
  %119 = load i64, i64* %tem, align 8
  %shr235 = ashr i64 %119, 2
  br label %cond.end.236

cond.end.236:                                     ; preds = %cond.false.234, %cond.true.231
  %cond237 = phi i64 [ %sub233, %cond.true.231 ], [ %shr235, %cond.false.234 ]
  %sub238 = sub nsw i64 %cond237, 1
  br label %cond.end.239

cond.end.239:                                     ; preds = %cond.end.236, %cond.true.227
  %cond240 = phi i64 [ %116, %cond.true.227 ], [ %sub238, %cond.end.236 ]
  store i64 %cond240, i64* %matchsize, align 8
  %120 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 428), align 1
  %tobool241 = trunc i8 %120 to i1
  br i1 %tobool241, label %if.then.242, label %if.end.281

if.then.242:                                      ; preds = %cond.end.239
  %121 = load i64, i64* %matchsize, align 8
  %122 = load i64, i64* %eltstring, align 8
  %call243 = call i64 @SCHARS(i64 %122)
  %cmp244 = icmp eq i64 %121, %call243
  br i1 %cmp244, label %land.lhs.true.246, label %lor.lhs.false

land.lhs.true.246:                                ; preds = %if.then.242
  %123 = load i64, i64* %matchsize, align 8
  %124 = load i64, i64* %bestmatch, align 8
  %call247 = call i64 @SCHARS(i64 %124)
  %cmp248 = icmp slt i64 %123, %call247
  br i1 %cmp248, label %if.then.279, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.246, %if.then.242
  %125 = load i64, i64* %matchsize, align 8
  %126 = load i64, i64* %eltstring, align 8
  %call250 = call i64 @SCHARS(i64 %126)
  %cmp251 = icmp eq i64 %125, %call250
  %conv252 = zext i1 %cmp251 to i32
  %127 = load i64, i64* %matchsize, align 8
  %128 = load i64, i64* %bestmatch, align 8
  %call253 = call i64 @SCHARS(i64 %128)
  %cmp254 = icmp eq i64 %127, %call253
  %conv255 = zext i1 %cmp254 to i32
  %cmp256 = icmp eq i32 %conv252, %conv255
  br i1 %cmp256, label %land.lhs.true.258, label %if.end.280

land.lhs.true.258:                                ; preds = %lor.lhs.false
  %129 = load i64, i64* %eltstring, align 8
  %130 = load i64, i64* %zero, align 8
  %131 = load i64, i64* %string.addr, align 8
  %call259 = call i64 @SCHARS(i64 %131)
  %shl260 = shl i64 %call259, 2
  %add261 = add i64 %shl260, 2
  %132 = load i64, i64* %string.addr, align 8
  %133 = load i64, i64* %zero, align 8
  %call262 = call i64 @builtin_lisp_symbol(i32 0)
  %call263 = call i64 @builtin_lisp_symbol(i32 0)
  %call264 = call i64 @Fcompare_strings(i64 %129, i64 %130, i64 %add261, i64 %132, i64 %133, i64 %call262, i64 %call263)
  store i64 %call264, i64* %tem, align 8
  %call265 = call i64 @builtin_lisp_symbol(i32 901)
  %134 = load i64, i64* %tem, align 8
  %cmp266 = icmp eq i64 %call265, %134
  br i1 %cmp266, label %land.lhs.true.268, label %if.end.280

land.lhs.true.268:                                ; preds = %land.lhs.true.258
  %135 = load i64, i64* %bestmatch, align 8
  %136 = load i64, i64* %zero, align 8
  %137 = load i64, i64* %string.addr, align 8
  %call269 = call i64 @SCHARS(i64 %137)
  %shl270 = shl i64 %call269, 2
  %add271 = add i64 %shl270, 2
  %138 = load i64, i64* %string.addr, align 8
  %139 = load i64, i64* %zero, align 8
  %call272 = call i64 @builtin_lisp_symbol(i32 0)
  %call273 = call i64 @builtin_lisp_symbol(i32 0)
  %call274 = call i64 @Fcompare_strings(i64 %135, i64 %136, i64 %add271, i64 %138, i64 %139, i64 %call272, i64 %call273)
  store i64 %call274, i64* %tem, align 8
  %call275 = call i64 @builtin_lisp_symbol(i32 901)
  %140 = load i64, i64* %tem, align 8
  %cmp276 = icmp eq i64 %call275, %140
  %lnot278 = xor i1 %cmp276, true
  br i1 %lnot278, label %if.then.279, label %if.end.280

if.then.279:                                      ; preds = %land.lhs.true.268, %land.lhs.true.246
  %141 = load i64, i64* %eltstring, align 8
  store i64 %141, i64* %bestmatch, align 8
  br label %if.end.280

if.end.280:                                       ; preds = %if.then.279, %land.lhs.true.268, %land.lhs.true.258, %lor.lhs.false
  br label %if.end.281

if.end.281:                                       ; preds = %if.end.280, %cond.end.239
  %142 = load i64, i64* %bestmatchsize, align 8
  %143 = load i64, i64* %eltstring, align 8
  %call282 = call i64 @SCHARS(i64 %143)
  %cmp283 = icmp ne i64 %142, %call282
  br i1 %cmp283, label %if.then.288, label %lor.lhs.false.285

lor.lhs.false.285:                                ; preds = %if.end.281
  %144 = load i64, i64* %bestmatchsize, align 8
  %145 = load i64, i64* %matchsize, align 8
  %cmp286 = icmp ne i64 %144, %145
  br i1 %cmp286, label %if.then.288, label %if.end.292

if.then.288:                                      ; preds = %lor.lhs.false.285, %if.end.281
  %146 = load i32, i32* %matchcount, align 4
  %cmp289 = icmp sle i32 %146, 1
  %conv290 = zext i1 %cmp289 to i32
  %147 = load i32, i32* %matchcount, align 4
  %add291 = add nsw i32 %147, %conv290
  store i32 %add291, i32* %matchcount, align 4
  br label %if.end.292

if.end.292:                                       ; preds = %if.then.288, %lor.lhs.false.285
  %148 = load i64, i64* %matchsize, align 8
  store i64 %148, i64* %bestmatchsize, align 8
  %149 = load i64, i64* %matchsize, align 8
  %150 = load i64, i64* %string.addr, align 8
  %call293 = call i64 @SCHARS(i64 %150)
  %cmp294 = icmp sle i64 %149, %call293
  br i1 %cmp294, label %land.lhs.true.296, label %if.end.302

land.lhs.true.296:                                ; preds = %if.end.292
  %151 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 428), align 1
  %tobool297 = trunc i8 %151 to i1
  br i1 %tobool297, label %if.end.302, label %land.lhs.true.298

land.lhs.true.298:                                ; preds = %land.lhs.true.296
  %152 = load i32, i32* %matchcount, align 4
  %cmp299 = icmp sgt i32 %152, 1
  br i1 %cmp299, label %if.then.301, label %if.end.302

if.then.301:                                      ; preds = %land.lhs.true.298
  br label %while.end.305

if.end.302:                                       ; preds = %land.lhs.true.298, %land.lhs.true.296, %if.end.292
  br label %if.end.303

if.end.303:                                       ; preds = %if.end.302, %if.then.200
  br label %if.end.304

if.end.304:                                       ; preds = %if.end.303, %cond.end.120, %land.lhs.true, %if.end.104
  br label %while.body

while.end.305:                                    ; preds = %if.then.301, %if.then.90, %if.then.67, %if.then.30
  %153 = load i64, i64* %bindcount, align 8
  %cmp306 = icmp sge i64 %153, 0
  br i1 %cmp306, label %if.then.308, label %if.end.311

if.then.308:                                      ; preds = %while.end.305
  %154 = load i64, i64* %bindcount, align 8
  %call309 = call i64 @builtin_lisp_symbol(i32 0)
  %call310 = call i64 @unbind_to(i64 %154, i64 %call309)
  store i64 -1, i64* %bindcount, align 8
  br label %if.end.311

if.end.311:                                       ; preds = %if.then.308, %while.end.305
  %155 = load i64, i64* %bestmatch, align 8
  %call312 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp313 = icmp eq i64 %155, %call312
  br i1 %cmp313, label %if.then.315, label %if.end.317

if.then.315:                                      ; preds = %if.end.311
  %call316 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call316, i64* %retval
  br label %return

if.end.317:                                       ; preds = %if.end.311
  %156 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 428), align 1
  %tobool318 = trunc i8 %156 to i1
  br i1 %tobool318, label %land.lhs.true.320, label %if.end.330

land.lhs.true.320:                                ; preds = %if.end.317
  %157 = load i64, i64* %bestmatchsize, align 8
  %158 = load i64, i64* %string.addr, align 8
  %call321 = call i64 @SCHARS(i64 %158)
  %cmp322 = icmp eq i64 %157, %call321
  br i1 %cmp322, label %land.lhs.true.324, label %if.end.330

land.lhs.true.324:                                ; preds = %land.lhs.true.320
  %159 = load i64, i64* %bestmatch, align 8
  %call325 = call i64 @SCHARS(i64 %159)
  %160 = load i64, i64* %bestmatchsize, align 8
  %cmp326 = icmp sgt i64 %call325, %160
  br i1 %cmp326, label %if.then.328, label %if.end.330

if.then.328:                                      ; preds = %land.lhs.true.324
  %161 = load i64, i64* %string.addr, align 8
  %162 = load i64, i64* %bestmatch, align 8
  %call329 = call i64 @minibuf_conform_representation(i64 %161, i64 %162)
  store i64 %call329, i64* %retval
  br label %return

if.end.330:                                       ; preds = %land.lhs.true.324, %land.lhs.true.320, %if.end.317
  %163 = load i32, i32* %matchcount, align 4
  %cmp331 = icmp eq i32 %163, 1
  br i1 %cmp331, label %land.lhs.true.333, label %if.end.340

land.lhs.true.333:                                ; preds = %if.end.330
  %164 = load i64, i64* %bestmatch, align 8
  %165 = load i64, i64* %string.addr, align 8
  %call334 = call i64 @Fequal(i64 %164, i64 %165)
  %call335 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp336 = icmp eq i64 %call334, %call335
  br i1 %cmp336, label %if.end.340, label %if.then.338

if.then.338:                                      ; preds = %land.lhs.true.333
  %call339 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call339, i64* %retval
  br label %return

if.end.340:                                       ; preds = %land.lhs.true.333, %if.end.330
  %call341 = call i64 @make_natnum(i64 0)
  store i64 %call341, i64* %zero, align 8
  %166 = load i64, i64* %bestmatchsize, align 8
  %call342 = call i64 @make_natnum(i64 %166)
  store i64 %call342, i64* %end, align 8
  %167 = load i64, i64* %bestmatch, align 8
  %168 = load i64, i64* %zero, align 8
  %169 = load i64, i64* %end, align 8
  %call343 = call i64 @Fsubstring(i64 %167, i64 %168, i64 %169)
  store i64 %call343, i64* %retval
  br label %return

return:                                           ; preds = %if.end.340, %if.then.338, %if.then.328, %if.then.315, %if.then
  %170 = load i64, i64* %retval
  ret i64 %170
}

declare zeroext i1 @HASH_TABLE_P(i64) #1

declare zeroext i1 @VECTORP(i64) #1

declare zeroext i1 @FUNCTIONP(i64) #1

declare i64 @check_obarray(i64) #1

declare i64 @ASIZE(i64) #1

declare i64 @AREF(i64, i64) #1

declare i64 @make_lisp_symbol(%struct.Lisp_Symbol*) #1

declare i64 @HASH_TABLE_SIZE(%struct.Lisp_Hash_Table*) #1

declare %struct.Lisp_Hash_Table* @XHASH_TABLE(i64) #1

declare i64 @HASH_HASH(%struct.Lisp_Hash_Table*, i64) #1

declare i64 @HASH_KEY(%struct.Lisp_Hash_Table*, i64) #1

declare i64 @Fsymbol_name(i64) #1

declare i64 @Fcompare_strings(i64, i64, i64, i64, i64, i64, i64) #1

declare i64 @Fstring_match(i64, i64, i64) #1

declare i64 @Fcommandp(i64, i64) #1

declare i64 @call2(i64, i64, i64) #1

declare i64 @HASH_VALUE(%struct.Lisp_Hash_Table*, i64) #1

declare i64 @call1(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @minibuf_conform_representation(i64 %string, i64 %basis) #0 {
entry:
  %retval = alloca i64, align 8
  %string.addr = alloca i64, align 8
  %basis.addr = alloca i64, align 8
  store i64 %string, i64* %string.addr, align 8
  store i64 %basis, i64* %basis.addr, align 8
  %0 = load i64, i64* %string.addr, align 8
  %call = call zeroext i1 @STRING_MULTIBYTE(i64 %0)
  %conv = zext i1 %call to i32
  %1 = load i64, i64* %basis.addr, align 8
  %call1 = call zeroext i1 @STRING_MULTIBYTE(i64 %1)
  %conv2 = zext i1 %call1 to i32
  %cmp = icmp eq i32 %conv, %conv2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %string.addr, align 8
  store i64 %2, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %string.addr, align 8
  %call4 = call zeroext i1 @STRING_MULTIBYTE(i64 %3)
  br i1 %call4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %4 = load i64, i64* %string.addr, align 8
  %call6 = call i64 @Fstring_make_unibyte(i64 %4)
  store i64 %call6, i64* %retval
  br label %return

if.else:                                          ; preds = %if.end
  %5 = load i64, i64* %string.addr, align 8
  %call7 = call i64 @Fstring_make_multibyte(i64 %5)
  store i64 %call7, i64* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.5, %if.then
  %6 = load i64, i64* %retval
  ret i64 %6
}

declare i64 @Fequal(i64, i64) #1

declare i64 @Fsubstring(i64, i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fall_completions(i64 %string, i64 %collection, i64 %predicate, i64 %hide_spaces) #0 {
entry:
  %retval = alloca i64, align 8
  %string.addr = alloca i64, align 8
  %collection.addr = alloca i64, align 8
  %predicate.addr = alloca i64, align 8
  %hide_spaces.addr = alloca i64, align 8
  %tail = alloca i64, align 8
  %elt = alloca i64, align 8
  %eltstring = alloca i64, align 8
  %allmatches = alloca i64, align 8
  %type = alloca i32, align 4
  %idx = alloca i64, align 8
  %obsize = alloca i64, align 8
  %bindcount = alloca i64, align 8
  %bucket = alloca i64, align 8
  %tem = alloca i64, align 8
  %zero = alloca i64, align 8
  %regexps = alloca i64, align 8
  store i64 %string, i64* %string.addr, align 8
  store i64 %collection, i64* %collection.addr, align 8
  store i64 %predicate, i64* %predicate.addr, align 8
  store i64 %hide_spaces, i64* %hide_spaces.addr, align 8
  %0 = load i64, i64* %collection.addr, align 8
  %call = call zeroext i1 @HASH_TABLE_P(i64 %0)
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.8

cond.false:                                       ; preds = %entry
  %1 = load i64, i64* %collection.addr, align 8
  %call1 = call zeroext i1 @VECTORP(i64 %1)
  br i1 %call1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.false
  br label %cond.end

cond.false.3:                                     ; preds = %cond.false
  %2 = load i64, i64* %collection.addr, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %2, %call4
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.false.3
  %3 = load i64, i64* %collection.addr, align 8
  %and = and i64 %3, 7
  %conv = trunc i64 %and to i32
  %cmp5 = icmp eq i32 %conv, 3
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %4 = load i64, i64* %collection.addr, align 8
  %call7 = call zeroext i1 @FUNCTIONP(i64 %4)
  %lnot = xor i1 %call7, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %5 = phi i1 [ false, %lor.rhs ], [ %lnot, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %cond.false.3
  %6 = phi i1 [ true, %cond.false.3 ], [ %5, %land.end ]
  %lor.ext = zext i1 %6 to i32
  br label %cond.end

cond.end:                                         ; preds = %lor.end, %cond.true.2
  %cond = phi i32 [ 2, %cond.true.2 ], [ %lor.ext, %lor.end ]
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.end, %cond.true
  %cond9 = phi i32 [ 3, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond9, i32* %type, align 4
  store i64 0, i64* %idx, align 8
  store i64 0, i64* %obsize, align 8
  store i64 -1, i64* %bindcount, align 8
  %7 = load i64, i64* %string.addr, align 8
  call void @CHECK_STRING(i64 %7)
  %8 = load i32, i32* %type, align 4
  %cmp10 = icmp eq i32 %8, 0
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.8
  %9 = load i64, i64* %collection.addr, align 8
  %10 = load i64, i64* %string.addr, align 8
  %11 = load i64, i64* %predicate.addr, align 8
  %call12 = call i64 @builtin_lisp_symbol(i32 901)
  %call13 = call i64 @call3(i64 %9, i64 %10, i64 %11, i64 %call12)
  store i64 %call13, i64* %retval
  br label %return

if.end:                                           ; preds = %cond.end.8
  %call14 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call14, i64* %bucket, align 8
  store i64 %call14, i64* %allmatches, align 8
  store i64 2, i64* %zero, align 8
  %12 = load i64, i64* %collection.addr, align 8
  store i64 %12, i64* %tail, align 8
  %13 = load i32, i32* %type, align 4
  %cmp15 = icmp eq i32 %13, 2
  br i1 %cmp15, label %if.then.17, label %if.end.21

if.then.17:                                       ; preds = %if.end
  %14 = load i64, i64* %collection.addr, align 8
  %call18 = call i64 @check_obarray(i64 %14)
  store i64 %call18, i64* %collection.addr, align 8
  %15 = load i64, i64* %collection.addr, align 8
  %call19 = call i64 @ASIZE(i64 %15)
  store i64 %call19, i64* %obsize, align 8
  %16 = load i64, i64* %collection.addr, align 8
  %17 = load i64, i64* %idx, align 8
  %call20 = call i64 @AREF(i64 %16, i64 %17)
  store i64 %call20, i64* %bucket, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.17, %if.end
  br label %while.body

while.body:                                       ; preds = %if.end.21, %if.else.67, %if.then.178, %if.then.212, %if.end.216
  %18 = load i32, i32* %type, align 4
  %cmp22 = icmp eq i32 %18, 1
  br i1 %cmp22, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %while.body
  %19 = load i64, i64* %tail, align 8
  %and25 = and i64 %19, 7
  %conv26 = trunc i64 %and25 to i32
  %cmp27 = icmp eq i32 %conv26, 3
  br i1 %cmp27, label %if.end.30, label %if.then.29

if.then.29:                                       ; preds = %if.then.24
  br label %while.end.217

if.end.30:                                        ; preds = %if.then.24
  %20 = load i64, i64* %tail, align 8
  %sub = sub nsw i64 %20, 3
  %21 = inttoptr i64 %sub to i8*
  %22 = bitcast i8* %21 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %22, i32 0, i32 0
  %23 = load i64, i64* %car, align 8
  store i64 %23, i64* %elt, align 8
  %24 = load i64, i64* %elt, align 8
  %and31 = and i64 %24, 7
  %conv32 = trunc i64 %and31 to i32
  %cmp33 = icmp eq i32 %conv32, 3
  br i1 %cmp33, label %cond.true.35, label %cond.false.38

cond.true.35:                                     ; preds = %if.end.30
  %25 = load i64, i64* %elt, align 8
  %sub36 = sub nsw i64 %25, 3
  %26 = inttoptr i64 %sub36 to i8*
  %27 = bitcast i8* %26 to %struct.Lisp_Cons*
  %car37 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %27, i32 0, i32 0
  %28 = load i64, i64* %car37, align 8
  br label %cond.end.39

cond.false.38:                                    ; preds = %if.end.30
  %29 = load i64, i64* %elt, align 8
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.false.38, %cond.true.35
  %cond40 = phi i64 [ %28, %cond.true.35 ], [ %29, %cond.false.38 ]
  store i64 %cond40, i64* %eltstring, align 8
  %30 = load i64, i64* %tail, align 8
  %sub41 = sub nsw i64 %30, 3
  %31 = inttoptr i64 %sub41 to i8*
  %32 = bitcast i8* %31 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %32, i32 0, i32 1
  %cdr = bitcast %union.anon.5* %u to i64*
  %33 = load i64, i64* %cdr, align 8
  store i64 %33, i64* %tail, align 8
  br label %if.end.96

if.else:                                          ; preds = %while.body
  %34 = load i32, i32* %type, align 4
  %cmp42 = icmp eq i32 %34, 2
  br i1 %cmp42, label %if.then.44, label %if.else.70

if.then.44:                                       ; preds = %if.else
  %35 = load i64, i64* %bucket, align 8
  %36 = load i64, i64* %zero, align 8
  %cmp45 = icmp eq i64 %35, %36
  br i1 %cmp45, label %if.else.63, label %if.then.47

if.then.47:                                       ; preds = %if.then.44
  %37 = load i64, i64* %bucket, align 8
  %and48 = and i64 %37, 7
  %conv49 = trunc i64 %and48 to i32
  %cmp50 = icmp eq i32 %conv49, 0
  br i1 %cmp50, label %if.end.53, label %if.then.52

if.then.52:                                       ; preds = %if.then.47
  call void (i8*, ...) @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i32 0, i32 0)) #5
  unreachable

if.end.53:                                        ; preds = %if.then.47
  %38 = load i64, i64* %bucket, align 8
  store i64 %38, i64* %elt, align 8
  %39 = load i64, i64* %elt, align 8
  store i64 %39, i64* %eltstring, align 8
  %40 = load i64, i64* %bucket, align 8
  %sub54 = sub nsw i64 %40, 0
  %add.ptr = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub54
  %41 = bitcast i8* %add.ptr to %struct.Lisp_Symbol*
  %next = getelementptr inbounds %struct.Lisp_Symbol, %struct.Lisp_Symbol* %41, i32 0, i32 5
  %42 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %next, align 8
  %tobool = icmp ne %struct.Lisp_Symbol* %42, null
  br i1 %tobool, label %if.then.55, label %if.else.60

if.then.55:                                       ; preds = %if.end.53
  %43 = load i64, i64* %bucket, align 8
  %sub56 = sub nsw i64 %43, 0
  %add.ptr57 = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub56
  %44 = bitcast i8* %add.ptr57 to %struct.Lisp_Symbol*
  %next58 = getelementptr inbounds %struct.Lisp_Symbol, %struct.Lisp_Symbol* %44, i32 0, i32 5
  %45 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %next58, align 8
  %call59 = call i64 @make_lisp_symbol(%struct.Lisp_Symbol* %45)
  store i64 %call59, i64* %bucket, align 8
  br label %if.end.62

if.else.60:                                       ; preds = %if.end.53
  %call61 = call i64 @make_natnum(i64 0)
  store i64 %call61, i64* %bucket, align 8
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.60, %if.then.55
  br label %if.end.69

if.else.63:                                       ; preds = %if.then.44
  %46 = load i64, i64* %idx, align 8
  %inc = add nsw i64 %46, 1
  store i64 %inc, i64* %idx, align 8
  %47 = load i64, i64* %obsize, align 8
  %cmp64 = icmp sge i64 %inc, %47
  br i1 %cmp64, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %if.else.63
  br label %while.end.217

if.else.67:                                       ; preds = %if.else.63
  %48 = load i64, i64* %collection.addr, align 8
  %49 = load i64, i64* %idx, align 8
  %call68 = call i64 @AREF(i64 %48, i64 %49)
  store i64 %call68, i64* %bucket, align 8
  br label %while.body

if.end.69:                                        ; preds = %if.end.62
  br label %if.end.95

if.else.70:                                       ; preds = %if.else
  br label %while.cond.71

while.cond.71:                                    ; preds = %while.body.83, %if.else.70
  %50 = load i64, i64* %idx, align 8
  %51 = load i64, i64* %collection.addr, align 8
  %call72 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %51)
  %call73 = call i64 @HASH_TABLE_SIZE(%struct.Lisp_Hash_Table* %call72)
  %cmp74 = icmp slt i64 %50, %call73
  br i1 %cmp74, label %land.rhs.76, label %land.end.82

land.rhs.76:                                      ; preds = %while.cond.71
  %52 = load i64, i64* %collection.addr, align 8
  %call77 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %52)
  %53 = load i64, i64* %idx, align 8
  %call78 = call i64 @HASH_HASH(%struct.Lisp_Hash_Table* %call77, i64 %53)
  %call79 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp80 = icmp eq i64 %call78, %call79
  br label %land.end.82

land.end.82:                                      ; preds = %land.rhs.76, %while.cond.71
  %54 = phi i1 [ false, %while.cond.71 ], [ %cmp80, %land.rhs.76 ]
  br i1 %54, label %while.body.83, label %while.end

while.body.83:                                    ; preds = %land.end.82
  %55 = load i64, i64* %idx, align 8
  %inc84 = add nsw i64 %55, 1
  store i64 %inc84, i64* %idx, align 8
  br label %while.cond.71

while.end:                                        ; preds = %land.end.82
  %56 = load i64, i64* %idx, align 8
  %57 = load i64, i64* %collection.addr, align 8
  %call85 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %57)
  %call86 = call i64 @HASH_TABLE_SIZE(%struct.Lisp_Hash_Table* %call85)
  %cmp87 = icmp sge i64 %56, %call86
  br i1 %cmp87, label %if.then.89, label %if.else.90

if.then.89:                                       ; preds = %while.end
  br label %while.end.217

if.else.90:                                       ; preds = %while.end
  %58 = load i64, i64* %collection.addr, align 8
  %call91 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %58)
  %59 = load i64, i64* %idx, align 8
  %inc92 = add nsw i64 %59, 1
  store i64 %inc92, i64* %idx, align 8
  %call93 = call i64 @HASH_KEY(%struct.Lisp_Hash_Table* %call91, i64 %59)
  store i64 %call93, i64* %eltstring, align 8
  store i64 %call93, i64* %elt, align 8
  br label %if.end.94

if.end.94:                                        ; preds = %if.else.90
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.end.69
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %cond.end.39
  %60 = load i64, i64* %eltstring, align 8
  %and97 = and i64 %60, 7
  %conv98 = trunc i64 %and97 to i32
  %cmp99 = icmp eq i32 %conv98, 0
  br i1 %cmp99, label %if.then.101, label %if.end.103

if.then.101:                                      ; preds = %if.end.96
  %61 = load i64, i64* %eltstring, align 8
  %call102 = call i64 @Fsymbol_name(i64 %61)
  store i64 %call102, i64* %eltstring, align 8
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.101, %if.end.96
  %62 = load i64, i64* %eltstring, align 8
  %call104 = call zeroext i1 @STRINGP(i64 %62)
  br i1 %call104, label %land.lhs.true, label %if.end.216

land.lhs.true:                                    ; preds = %if.end.103
  %63 = load i64, i64* %string.addr, align 8
  %call106 = call i64 @SCHARS(i64 %63)
  %64 = load i64, i64* %eltstring, align 8
  %call107 = call i64 @SCHARS(i64 %64)
  %cmp108 = icmp sle i64 %call106, %call107
  br i1 %cmp108, label %land.lhs.true.110, label %if.end.216

land.lhs.true.110:                                ; preds = %land.lhs.true
  %65 = load i64, i64* %hide_spaces.addr, align 8
  %call111 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp112 = icmp eq i64 %65, %call111
  br i1 %cmp112, label %land.lhs.true.127, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.110
  %66 = load i64, i64* %string.addr, align 8
  %call114 = call i64 @SBYTES(i64 %66)
  %cmp115 = icmp sgt i64 %call114, 0
  br i1 %cmp115, label %land.lhs.true.117, label %lor.lhs.false.122

land.lhs.true.117:                                ; preds = %lor.lhs.false
  %67 = load i64, i64* %string.addr, align 8
  %call118 = call zeroext i8 @SREF(i64 %67, i64 0)
  %conv119 = zext i8 %call118 to i32
  %cmp120 = icmp eq i32 %conv119, 32
  br i1 %cmp120, label %land.lhs.true.127, label %lor.lhs.false.122

lor.lhs.false.122:                                ; preds = %land.lhs.true.117, %lor.lhs.false
  %68 = load i64, i64* %eltstring, align 8
  %call123 = call zeroext i8 @SREF(i64 %68, i64 0)
  %conv124 = zext i8 %call123 to i32
  %cmp125 = icmp ne i32 %conv124, 32
  br i1 %cmp125, label %land.lhs.true.127, label %if.end.216

land.lhs.true.127:                                ; preds = %lor.lhs.false.122, %land.lhs.true.117, %land.lhs.true.110
  %69 = load i64, i64* %eltstring, align 8
  %70 = load i64, i64* %zero, align 8
  %71 = load i64, i64* %string.addr, align 8
  %call128 = call i64 @SCHARS(i64 %71)
  %shl = shl i64 %call128, 2
  %add = add i64 %shl, 2
  %72 = load i64, i64* %string.addr, align 8
  %73 = load i64, i64* %zero, align 8
  %74 = load i64, i64* %string.addr, align 8
  %call129 = call i64 @SCHARS(i64 %74)
  %shl130 = shl i64 %call129, 2
  %add131 = add i64 %shl130, 2
  %75 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 428), align 1
  %tobool132 = trunc i8 %75 to i1
  br i1 %tobool132, label %cond.true.134, label %cond.false.136

cond.true.134:                                    ; preds = %land.lhs.true.127
  %call135 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end.138

cond.false.136:                                   ; preds = %land.lhs.true.127
  %call137 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.138

cond.end.138:                                     ; preds = %cond.false.136, %cond.true.134
  %cond139 = phi i64 [ %call135, %cond.true.134 ], [ %call137, %cond.false.136 ]
  %call140 = call i64 @Fcompare_strings(i64 %69, i64 %70, i64 %add, i64 %72, i64 %73, i64 %add131, i64 %cond139)
  store i64 %call140, i64* %tem, align 8
  %call141 = call i64 @builtin_lisp_symbol(i32 901)
  %76 = load i64, i64* %tem, align 8
  %cmp142 = icmp eq i64 %call141, %76
  br i1 %cmp142, label %if.then.144, label %if.end.216

if.then.144:                                      ; preds = %cond.end.138
  %77 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 44), align 8
  store i64 %77, i64* %regexps, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.144
  %78 = load i64, i64* %regexps, align 8
  %and145 = and i64 %78, 7
  %conv146 = trunc i64 %and145 to i32
  %cmp147 = icmp eq i32 %conv146, 3
  br i1 %cmp147, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %79 = load i64, i64* %bindcount, align 8
  %cmp149 = icmp slt i64 %79, 0
  br i1 %cmp149, label %if.then.151, label %if.end.162

if.then.151:                                      ; preds = %for.body
  %call152 = call i64 @SPECPDL_INDEX()
  store i64 %call152, i64* %bindcount, align 8
  %call153 = call i64 @builtin_lisp_symbol(i32 238)
  %80 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 428), align 1
  %tobool154 = trunc i8 %80 to i1
  br i1 %tobool154, label %cond.true.156, label %cond.false.158

cond.true.156:                                    ; preds = %if.then.151
  %call157 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end.160

cond.false.158:                                   ; preds = %if.then.151
  %call159 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.160

cond.end.160:                                     ; preds = %cond.false.158, %cond.true.156
  %cond161 = phi i64 [ %call157, %cond.true.156 ], [ %call159, %cond.false.158 ]
  call void @specbind(i64 %call153, i64 %cond161)
  br label %if.end.162

if.end.162:                                       ; preds = %cond.end.160, %for.body
  %81 = load i64, i64* %regexps, align 8
  %sub163 = sub nsw i64 %81, 3
  %82 = inttoptr i64 %sub163 to i8*
  %83 = bitcast i8* %82 to %struct.Lisp_Cons*
  %car164 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %83, i32 0, i32 0
  %84 = load i64, i64* %car164, align 8
  %85 = load i64, i64* %eltstring, align 8
  %86 = load i64, i64* %zero, align 8
  %call165 = call i64 @Fstring_match(i64 %84, i64 %85, i64 %86)
  store i64 %call165, i64* %tem, align 8
  %87 = load i64, i64* %tem, align 8
  %call166 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp167 = icmp eq i64 %87, %call166
  br i1 %cmp167, label %if.then.169, label %if.end.170

if.then.169:                                      ; preds = %if.end.162
  br label %for.end

if.end.170:                                       ; preds = %if.end.162
  br label %for.inc

for.inc:                                          ; preds = %if.end.170
  %88 = load i64, i64* %regexps, align 8
  %sub171 = sub nsw i64 %88, 3
  %89 = inttoptr i64 %sub171 to i8*
  %90 = bitcast i8* %89 to %struct.Lisp_Cons*
  %u172 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %90, i32 0, i32 1
  %cdr173 = bitcast %union.anon.5* %u172 to i64*
  %91 = load i64, i64* %cdr173, align 8
  store i64 %91, i64* %regexps, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.169, %for.cond
  %92 = load i64, i64* %regexps, align 8
  %and174 = and i64 %92, 7
  %conv175 = trunc i64 %and174 to i32
  %cmp176 = icmp eq i32 %conv175, 3
  br i1 %cmp176, label %if.then.178, label %if.end.179

if.then.178:                                      ; preds = %for.end
  br label %while.body

if.end.179:                                       ; preds = %for.end
  %93 = load i64, i64* %predicate.addr, align 8
  %call180 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp181 = icmp eq i64 %93, %call180
  br i1 %cmp181, label %if.end.214, label %if.then.183

if.then.183:                                      ; preds = %if.end.179
  %94 = load i64, i64* %predicate.addr, align 8
  %call184 = call i64 @builtin_lisp_symbol(i32 286)
  %cmp185 = icmp eq i64 %94, %call184
  br i1 %cmp185, label %if.then.187, label %if.else.190

if.then.187:                                      ; preds = %if.then.183
  %95 = load i64, i64* %elt, align 8
  %call188 = call i64 @builtin_lisp_symbol(i32 0)
  %call189 = call i64 @Fcommandp(i64 %95, i64 %call188)
  store i64 %call189, i64* %tem, align 8
  br label %if.end.208

if.else.190:                                      ; preds = %if.then.183
  %96 = load i64, i64* %bindcount, align 8
  %cmp191 = icmp sge i64 %96, 0
  br i1 %cmp191, label %if.then.193, label %if.end.196

if.then.193:                                      ; preds = %if.else.190
  %97 = load i64, i64* %bindcount, align 8
  %call194 = call i64 @builtin_lisp_symbol(i32 0)
  %call195 = call i64 @unbind_to(i64 %97, i64 %call194)
  store i64 -1, i64* %bindcount, align 8
  br label %if.end.196

if.end.196:                                       ; preds = %if.then.193, %if.else.190
  %98 = load i32, i32* %type, align 4
  %cmp197 = icmp eq i32 %98, 3
  br i1 %cmp197, label %cond.true.199, label %cond.false.204

cond.true.199:                                    ; preds = %if.end.196
  %99 = load i64, i64* %predicate.addr, align 8
  %100 = load i64, i64* %elt, align 8
  %101 = load i64, i64* %collection.addr, align 8
  %call200 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %101)
  %102 = load i64, i64* %idx, align 8
  %sub201 = sub nsw i64 %102, 1
  %call202 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call200, i64 %sub201)
  %call203 = call i64 @call2(i64 %99, i64 %100, i64 %call202)
  br label %cond.end.206

cond.false.204:                                   ; preds = %if.end.196
  %103 = load i64, i64* %predicate.addr, align 8
  %104 = load i64, i64* %elt, align 8
  %call205 = call i64 @call1(i64 %103, i64 %104)
  br label %cond.end.206

cond.end.206:                                     ; preds = %cond.false.204, %cond.true.199
  %cond207 = phi i64 [ %call203, %cond.true.199 ], [ %call205, %cond.false.204 ]
  store i64 %cond207, i64* %tem, align 8
  br label %if.end.208

if.end.208:                                       ; preds = %cond.end.206, %if.then.187
  %105 = load i64, i64* %tem, align 8
  %call209 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp210 = icmp eq i64 %105, %call209
  br i1 %cmp210, label %if.then.212, label %if.end.213

if.then.212:                                      ; preds = %if.end.208
  br label %while.body

if.end.213:                                       ; preds = %if.end.208
  br label %if.end.214

if.end.214:                                       ; preds = %if.end.213, %if.end.179
  %106 = load i64, i64* %eltstring, align 8
  %107 = load i64, i64* %allmatches, align 8
  %call215 = call i64 @Fcons(i64 %106, i64 %107)
  store i64 %call215, i64* %allmatches, align 8
  br label %if.end.216

if.end.216:                                       ; preds = %if.end.214, %cond.end.138, %lor.lhs.false.122, %land.lhs.true, %if.end.103
  br label %while.body

while.end.217:                                    ; preds = %if.then.89, %if.then.66, %if.then.29
  %108 = load i64, i64* %bindcount, align 8
  %cmp218 = icmp sge i64 %108, 0
  br i1 %cmp218, label %if.then.220, label %if.end.223

if.then.220:                                      ; preds = %while.end.217
  %109 = load i64, i64* %bindcount, align 8
  %call221 = call i64 @builtin_lisp_symbol(i32 0)
  %call222 = call i64 @unbind_to(i64 %109, i64 %call221)
  store i64 -1, i64* %bindcount, align 8
  br label %if.end.223

if.end.223:                                       ; preds = %if.then.220, %while.end.217
  %110 = load i64, i64* %allmatches, align 8
  %call224 = call i64 @Fnreverse(i64 %110)
  store i64 %call224, i64* %retval
  br label %return

return:                                           ; preds = %if.end.223, %if.then
  %111 = load i64, i64* %retval
  ret i64 %111
}

declare zeroext i8 @SREF(i64, i64) #1

declare i64 @Fcons(i64, i64) #1

declare i64 @Fnreverse(i64) #1

declare i64 @Ffuncall(i64, i64*) #1

declare i64 @Fsymbol_value(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Ftest_completion(i64 %string, i64 %collection, i64 %predicate) #0 {
entry:
  %retval = alloca i64, align 8
  %string.addr = alloca i64, align 8
  %collection.addr = alloca i64, align 8
  %predicate.addr = alloca i64, align 8
  %regexps = alloca i64, align 8
  %tail = alloca i64, align 8
  %tem = alloca i64, align 8
  %i = alloca i64, align 8
  %h = alloca %struct.Lisp_Hash_Table*, align 8
  %key = alloca i64, align 8
  %count = alloca i64, align 8
  store i64 %string, i64* %string.addr, align 8
  store i64 %collection, i64* %collection.addr, align 8
  store i64 %predicate, i64* %predicate.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %tem, align 8
  store i64 0, i64* %i, align 8
  %0 = load i64, i64* %string.addr, align 8
  call void @CHECK_STRING(i64 %0)
  %1 = load i64, i64* %collection.addr, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %1, %call1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i64, i64* %collection.addr, align 8
  %and = and i64 %2, 7
  %conv = trunc i64 %and to i32
  %cmp2 = icmp eq i32 %conv, 3
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false
  %3 = load i64, i64* %collection.addr, align 8
  %call4 = call zeroext i1 @FUNCTIONP(i64 %3)
  br i1 %call4, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  %4 = load i64, i64* %string.addr, align 8
  %5 = load i64, i64* %collection.addr, align 8
  %6 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 428), align 1
  %tobool = trunc i8 %6 to i1
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %call6 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %call7 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call6, %cond.true ], [ %call7, %cond.false ]
  %call8 = call i64 @Fassoc_string(i64 %4, i64 %5, i64 %cond)
  store i64 %call8, i64* %tem, align 8
  %7 = load i64, i64* %tem, align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp10 = icmp eq i64 %7, %call9
  br i1 %cmp10, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %cond.end
  %call13 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call13, i64* %retval
  br label %return

if.end:                                           ; preds = %cond.end
  br label %if.end.143

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %8 = load i64, i64* %collection.addr, align 8
  %call14 = call zeroext i1 @VECTORP(i64 %8)
  br i1 %call14, label %if.then.15, label %if.else.81

if.then.15:                                       ; preds = %if.else
  %9 = load i64, i64* %collection.addr, align 8
  %10 = load i64, i64* %string.addr, align 8
  %call16 = call i8* @SSDATA(i64 %10)
  %11 = load i64, i64* %string.addr, align 8
  %call17 = call i64 @SCHARS(i64 %11)
  %12 = load i64, i64* %string.addr, align 8
  %call18 = call i64 @SBYTES(i64 %12)
  %call19 = call i64 @oblookup(i64 %9, i8* %call16, i64 %call17, i64 %call18)
  store i64 %call19, i64* %tem, align 8
  %13 = load i64, i64* %tem, align 8
  %and20 = and i64 %13, 7
  %conv21 = trunc i64 %and20 to i32
  %cmp22 = icmp eq i32 %conv21, 0
  br i1 %cmp22, label %if.end.35, label %if.then.24

if.then.24:                                       ; preds = %if.then.15
  %14 = load i64, i64* %string.addr, align 8
  %call25 = call zeroext i1 @STRING_MULTIBYTE(i64 %14)
  br i1 %call25, label %if.then.26, label %if.else.28

if.then.26:                                       ; preds = %if.then.24
  %15 = load i64, i64* %string.addr, align 8
  %call27 = call i64 @Fstring_make_unibyte(i64 %15)
  store i64 %call27, i64* %string.addr, align 8
  br label %if.end.30

if.else.28:                                       ; preds = %if.then.24
  %16 = load i64, i64* %string.addr, align 8
  %call29 = call i64 @Fstring_make_multibyte(i64 %16)
  store i64 %call29, i64* %string.addr, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.28, %if.then.26
  %17 = load i64, i64* %collection.addr, align 8
  %18 = load i64, i64* %string.addr, align 8
  %call31 = call i8* @SSDATA(i64 %18)
  %19 = load i64, i64* %string.addr, align 8
  %call32 = call i64 @SCHARS(i64 %19)
  %20 = load i64, i64* %string.addr, align 8
  %call33 = call i64 @SBYTES(i64 %20)
  %call34 = call i64 @oblookup(i64 %17, i8* %call31, i64 %call32, i64 %call33)
  store i64 %call34, i64* %tem, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.30, %if.then.15
  %21 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 428), align 1
  %tobool36 = trunc i8 %21 to i1
  br i1 %tobool36, label %land.lhs.true.38, label %if.end.73

land.lhs.true.38:                                 ; preds = %if.end.35
  %22 = load i64, i64* %tem, align 8
  %and39 = and i64 %22, 7
  %conv40 = trunc i64 %and39 to i32
  %cmp41 = icmp eq i32 %conv40, 0
  br i1 %cmp41, label %if.end.73, label %if.then.43

if.then.43:                                       ; preds = %land.lhs.true.38
  %23 = load i64, i64* %collection.addr, align 8
  %call44 = call i64 @ASIZE(i64 %23)
  %sub = sub nsw i64 %call44, 1
  store i64 %sub, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.43
  %24 = load i64, i64* %i, align 8
  %cmp45 = icmp sge i64 %24, 0
  br i1 %cmp45, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load i64, i64* %collection.addr, align 8
  %26 = load i64, i64* %i, align 8
  %call47 = call i64 @AREF(i64 %25, i64 %26)
  store i64 %call47, i64* %tail, align 8
  %27 = load i64, i64* %tail, align 8
  %and48 = and i64 %27, 7
  %conv49 = trunc i64 %and48 to i32
  %cmp50 = icmp eq i32 %conv49, 0
  br i1 %cmp50, label %if.then.52, label %if.end.72

if.then.52:                                       ; preds = %for.body
  br label %while.body

while.body:                                       ; preds = %if.then.52, %if.end.67
  %28 = load i64, i64* %string.addr, align 8
  %call53 = call i64 @builtin_lisp_symbol(i32 0)
  %29 = load i64, i64* %tail, align 8
  %call54 = call i64 @Fsymbol_name(i64 %29)
  %call55 = call i64 @builtin_lisp_symbol(i32 0)
  %call56 = call i64 @builtin_lisp_symbol(i32 901)
  %call57 = call i64 @Fcompare_strings(i64 %28, i64 2, i64 %call53, i64 %call54, i64 2, i64 %call55, i64 %call56)
  %call58 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp59 = icmp eq i64 %call57, %call58
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %while.body
  %30 = load i64, i64* %tail, align 8
  store i64 %30, i64* %tem, align 8
  br label %while.end

if.end.62:                                        ; preds = %while.body
  %31 = load i64, i64* %tail, align 8
  %sub63 = sub nsw i64 %31, 0
  %add.ptr = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub63
  %32 = bitcast i8* %add.ptr to %struct.Lisp_Symbol*
  %next = getelementptr inbounds %struct.Lisp_Symbol, %struct.Lisp_Symbol* %32, i32 0, i32 5
  %33 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %next, align 8
  %cmp64 = icmp eq %struct.Lisp_Symbol* %33, null
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.end.62
  br label %while.end

if.end.67:                                        ; preds = %if.end.62
  %34 = load i64, i64* %tail, align 8
  %sub68 = sub nsw i64 %34, 0
  %add.ptr69 = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub68
  %35 = bitcast i8* %add.ptr69 to %struct.Lisp_Symbol*
  %next70 = getelementptr inbounds %struct.Lisp_Symbol, %struct.Lisp_Symbol* %35, i32 0, i32 5
  %36 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %next70, align 8
  %call71 = call i64 @make_lisp_symbol(%struct.Lisp_Symbol* %36)
  store i64 %call71, i64* %tail, align 8
  br label %while.body

while.end:                                        ; preds = %if.then.66, %if.then.61
  br label %if.end.72

if.end.72:                                        ; preds = %while.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.72
  %37 = load i64, i64* %i, align 8
  %dec = add nsw i64 %37, -1
  store i64 %dec, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.73

if.end.73:                                        ; preds = %for.end, %land.lhs.true.38, %if.end.35
  %38 = load i64, i64* %tem, align 8
  %and74 = and i64 %38, 7
  %conv75 = trunc i64 %and74 to i32
  %cmp76 = icmp eq i32 %conv75, 0
  br i1 %cmp76, label %if.end.80, label %if.then.78

if.then.78:                                       ; preds = %if.end.73
  %call79 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call79, i64* %retval
  br label %return

if.end.80:                                        ; preds = %if.end.73
  br label %if.end.142

if.else.81:                                       ; preds = %if.else
  %39 = load i64, i64* %collection.addr, align 8
  %call82 = call zeroext i1 @HASH_TABLE_P(i64 %39)
  br i1 %call82, label %if.then.83, label %if.else.138

if.then.83:                                       ; preds = %if.else.81
  %40 = load i64, i64* %collection.addr, align 8
  %call84 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %40)
  store %struct.Lisp_Hash_Table* %call84, %struct.Lisp_Hash_Table** %h, align 8
  %call85 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call85, i64* %key, align 8
  %41 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %h, align 8
  %42 = load i64, i64* %string.addr, align 8
  %call86 = call i64 @hash_lookup(%struct.Lisp_Hash_Table* %41, i64 %42, i64* null)
  store i64 %call86, i64* %i, align 8
  %43 = load i64, i64* %i, align 8
  %cmp87 = icmp sge i64 %43, 0
  br i1 %cmp87, label %if.then.89, label %if.else.91

if.then.89:                                       ; preds = %if.then.83
  %44 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %h, align 8
  %45 = load i64, i64* %i, align 8
  %call90 = call i64 @HASH_KEY(%struct.Lisp_Hash_Table* %44, i64 %45)
  store i64 %call90, i64* %tem, align 8
  br label %if.end.133

if.else.91:                                       ; preds = %if.then.83
  store i64 0, i64* %i, align 8
  br label %for.cond.92

for.cond.92:                                      ; preds = %for.inc.131, %if.else.91
  %46 = load i64, i64* %i, align 8
  %47 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %h, align 8
  %call93 = call i64 @HASH_TABLE_SIZE(%struct.Lisp_Hash_Table* %47)
  %cmp94 = icmp slt i64 %46, %call93
  br i1 %cmp94, label %for.body.96, label %for.end.132

for.body.96:                                      ; preds = %for.cond.92
  %48 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %h, align 8
  %49 = load i64, i64* %i, align 8
  %call97 = call i64 @HASH_HASH(%struct.Lisp_Hash_Table* %48, i64 %49)
  %call98 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp99 = icmp eq i64 %call97, %call98
  br i1 %cmp99, label %if.end.130, label %land.lhs.true.101

land.lhs.true.101:                                ; preds = %for.body.96
  %50 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %h, align 8
  %51 = load i64, i64* %i, align 8
  %call102 = call i64 @HASH_KEY(%struct.Lisp_Hash_Table* %50, i64 %51)
  store i64 %call102, i64* %key, align 8
  %52 = load i64, i64* %key, align 8
  %and103 = and i64 %52, 7
  %conv104 = trunc i64 %and103 to i32
  %cmp105 = icmp eq i32 %conv104, 0
  br i1 %cmp105, label %cond.true.107, label %cond.false.109

cond.true.107:                                    ; preds = %land.lhs.true.101
  %53 = load i64, i64* %key, align 8
  %call108 = call i64 @Fsymbol_name(i64 %53)
  store i64 %call108, i64* %key, align 8
  br label %cond.end.110

cond.false.109:                                   ; preds = %land.lhs.true.101
  %54 = load i64, i64* %key, align 8
  br label %cond.end.110

cond.end.110:                                     ; preds = %cond.false.109, %cond.true.107
  %cond111 = phi i64 [ %call108, %cond.true.107 ], [ %54, %cond.false.109 ]
  %55 = load i64, i64* %key, align 8
  %call112 = call zeroext i1 @STRINGP(i64 %55)
  br i1 %call112, label %land.lhs.true.114, label %if.end.130

land.lhs.true.114:                                ; preds = %cond.end.110
  %56 = load i64, i64* %string.addr, align 8
  %call115 = call i64 @builtin_lisp_symbol(i32 0)
  %57 = load i64, i64* %key, align 8
  %call116 = call i64 @builtin_lisp_symbol(i32 0)
  %58 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 428), align 1
  %tobool117 = trunc i8 %58 to i1
  br i1 %tobool117, label %cond.true.119, label %cond.false.121

cond.true.119:                                    ; preds = %land.lhs.true.114
  %call120 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end.123

cond.false.121:                                   ; preds = %land.lhs.true.114
  %call122 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.123

cond.end.123:                                     ; preds = %cond.false.121, %cond.true.119
  %cond124 = phi i64 [ %call120, %cond.true.119 ], [ %call122, %cond.false.121 ]
  %call125 = call i64 @Fcompare_strings(i64 %56, i64 2, i64 %call115, i64 %57, i64 2, i64 %call116, i64 %cond124)
  %call126 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp127 = icmp eq i64 %call125, %call126
  br i1 %cmp127, label %if.then.129, label %if.end.130

if.then.129:                                      ; preds = %cond.end.123
  %59 = load i64, i64* %key, align 8
  store i64 %59, i64* %tem, align 8
  br label %for.end.132

if.end.130:                                       ; preds = %cond.end.123, %cond.end.110, %for.body.96
  br label %for.inc.131

for.inc.131:                                      ; preds = %if.end.130
  %60 = load i64, i64* %i, align 8
  %inc = add nsw i64 %60, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond.92

for.end.132:                                      ; preds = %if.then.129, %for.cond.92
  br label %if.end.133

if.end.133:                                       ; preds = %for.end.132, %if.then.89
  %61 = load i64, i64* %tem, align 8
  %call134 = call zeroext i1 @STRINGP(i64 %61)
  br i1 %call134, label %if.end.137, label %if.then.135

if.then.135:                                      ; preds = %if.end.133
  %call136 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call136, i64* %retval
  br label %return

if.end.137:                                       ; preds = %if.end.133
  br label %if.end.141

if.else.138:                                      ; preds = %if.else.81
  %62 = load i64, i64* %collection.addr, align 8
  %63 = load i64, i64* %string.addr, align 8
  %64 = load i64, i64* %predicate.addr, align 8
  %call139 = call i64 @builtin_lisp_symbol(i32 598)
  %call140 = call i64 @call3(i64 %62, i64 %63, i64 %64, i64 %call139)
  store i64 %call140, i64* %retval
  br label %return

if.end.141:                                       ; preds = %if.end.137
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.141, %if.end.80
  br label %if.end.143

if.end.143:                                       ; preds = %if.end.142, %if.end
  %65 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 44), align 8
  %and144 = and i64 %65, 7
  %conv145 = trunc i64 %and144 to i32
  %cmp146 = icmp eq i32 %conv145, 3
  br i1 %cmp146, label %if.then.148, label %if.end.188

if.then.148:                                      ; preds = %if.end.143
  %call149 = call i64 @SPECPDL_INDEX()
  store i64 %call149, i64* %count, align 8
  %call150 = call i64 @builtin_lisp_symbol(i32 238)
  %66 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 428), align 1
  %tobool151 = trunc i8 %66 to i1
  br i1 %tobool151, label %cond.true.153, label %cond.false.155

cond.true.153:                                    ; preds = %if.then.148
  %call154 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end.157

cond.false.155:                                   ; preds = %if.then.148
  %call156 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.157

cond.end.157:                                     ; preds = %cond.false.155, %cond.true.153
  %cond158 = phi i64 [ %call154, %cond.true.153 ], [ %call156, %cond.false.155 ]
  call void @specbind(i64 %call150, i64 %cond158)
  %67 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 44), align 8
  store i64 %67, i64* %regexps, align 8
  br label %for.cond.159

for.cond.159:                                     ; preds = %for.inc.183, %cond.end.157
  %68 = load i64, i64* %regexps, align 8
  %and160 = and i64 %68, 7
  %conv161 = trunc i64 %and160 to i32
  %cmp162 = icmp eq i32 %conv161, 3
  br i1 %cmp162, label %for.body.164, label %for.end.185

for.body.164:                                     ; preds = %for.cond.159
  %69 = load i64, i64* %regexps, align 8
  %sub165 = sub nsw i64 %69, 3
  %70 = inttoptr i64 %sub165 to i8*
  %71 = bitcast i8* %70 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %71, i32 0, i32 0
  %72 = load i64, i64* %car, align 8
  %73 = load i64, i64* %tem, align 8
  %and166 = and i64 %73, 7
  %conv167 = trunc i64 %and166 to i32
  %cmp168 = icmp eq i32 %conv167, 0
  br i1 %cmp168, label %cond.true.170, label %cond.false.171

cond.true.170:                                    ; preds = %for.body.164
  %74 = load i64, i64* %string.addr, align 8
  br label %cond.end.172

cond.false.171:                                   ; preds = %for.body.164
  %75 = load i64, i64* %tem, align 8
  br label %cond.end.172

cond.end.172:                                     ; preds = %cond.false.171, %cond.true.170
  %cond173 = phi i64 [ %74, %cond.true.170 ], [ %75, %cond.false.171 ]
  %call174 = call i64 @builtin_lisp_symbol(i32 0)
  %call175 = call i64 @Fstring_match(i64 %72, i64 %cond173, i64 %call174)
  %call176 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp177 = icmp eq i64 %call175, %call176
  br i1 %cmp177, label %if.then.179, label %if.end.182

if.then.179:                                      ; preds = %cond.end.172
  %76 = load i64, i64* %count, align 8
  %call180 = call i64 @builtin_lisp_symbol(i32 0)
  %call181 = call i64 @unbind_to(i64 %76, i64 %call180)
  store i64 %call181, i64* %retval
  br label %return

if.end.182:                                       ; preds = %cond.end.172
  br label %for.inc.183

for.inc.183:                                      ; preds = %if.end.182
  %77 = load i64, i64* %regexps, align 8
  %sub184 = sub nsw i64 %77, 3
  %78 = inttoptr i64 %sub184 to i8*
  %79 = bitcast i8* %78 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %79, i32 0, i32 1
  %cdr = bitcast %union.anon.5* %u to i64*
  %80 = load i64, i64* %cdr, align 8
  store i64 %80, i64* %regexps, align 8
  br label %for.cond.159

for.end.185:                                      ; preds = %for.cond.159
  %81 = load i64, i64* %count, align 8
  %call186 = call i64 @builtin_lisp_symbol(i32 0)
  %call187 = call i64 @unbind_to(i64 %81, i64 %call186)
  br label %if.end.188

if.end.188:                                       ; preds = %for.end.185, %if.end.143
  %82 = load i64, i64* %predicate.addr, align 8
  %call189 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp190 = icmp eq i64 %82, %call189
  br i1 %cmp190, label %if.else.203, label %if.then.192

if.then.192:                                      ; preds = %if.end.188
  %83 = load i64, i64* %collection.addr, align 8
  %call193 = call zeroext i1 @HASH_TABLE_P(i64 %83)
  br i1 %call193, label %cond.true.195, label %cond.false.199

cond.true.195:                                    ; preds = %if.then.192
  %84 = load i64, i64* %predicate.addr, align 8
  %85 = load i64, i64* %tem, align 8
  %86 = load i64, i64* %collection.addr, align 8
  %call196 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %86)
  %87 = load i64, i64* %i, align 8
  %call197 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call196, i64 %87)
  %call198 = call i64 @call2(i64 %84, i64 %85, i64 %call197)
  br label %cond.end.201

cond.false.199:                                   ; preds = %if.then.192
  %88 = load i64, i64* %predicate.addr, align 8
  %89 = load i64, i64* %tem, align 8
  %call200 = call i64 @call1(i64 %88, i64 %89)
  br label %cond.end.201

cond.end.201:                                     ; preds = %cond.false.199, %cond.true.195
  %cond202 = phi i64 [ %call198, %cond.true.195 ], [ %call200, %cond.false.199 ]
  store i64 %cond202, i64* %retval
  br label %return

if.else.203:                                      ; preds = %if.end.188
  %call204 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call204, i64* %retval
  br label %return

return:                                           ; preds = %if.else.203, %cond.end.201, %if.then.179, %if.else.138, %if.then.135, %if.then.78, %if.then.12
  %90 = load i64, i64* %retval
  ret i64 %90
}

; Function Attrs: nounwind uwtable
define i64 @Fassoc_string(i64 %key, i64 %list, i64 %case_fold) #0 {
entry:
  %retval = alloca i64, align 8
  %key.addr = alloca i64, align 8
  %list.addr = alloca i64, align 8
  %case_fold.addr = alloca i64, align 8
  %tail = alloca i64, align 8
  %elt = alloca i64, align 8
  %tem = alloca i64, align 8
  %thiscar = alloca i64, align 8
  store i64 %key, i64* %key.addr, align 8
  store i64 %list, i64* %list.addr, align 8
  store i64 %case_fold, i64* %case_fold.addr, align 8
  %0 = load i64, i64* %key.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %key.addr, align 8
  %call = call i64 @Fsymbol_name(i64 %1)
  store i64 %call, i64* %key.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, i64* %list.addr, align 8
  store i64 %2, i64* %tail, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i64, i64* %tail, align 8
  %and2 = and i64 %3, 7
  %conv3 = trunc i64 %and2 to i32
  %cmp4 = icmp eq i32 %conv3, 3
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %tail, align 8
  %sub = sub nsw i64 %4, 3
  %5 = inttoptr i64 %sub to i8*
  %6 = bitcast i8* %5 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %6, i32 0, i32 0
  %7 = load i64, i64* %car, align 8
  store i64 %7, i64* %elt, align 8
  %8 = load i64, i64* %elt, align 8
  %and6 = and i64 %8, 7
  %conv7 = trunc i64 %and6 to i32
  %cmp8 = icmp eq i32 %conv7, 3
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %9 = load i64, i64* %elt, align 8
  %sub10 = sub nsw i64 %9, 3
  %10 = inttoptr i64 %sub10 to i8*
  %11 = bitcast i8* %10 to %struct.Lisp_Cons*
  %car11 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %11, i32 0, i32 0
  %12 = load i64, i64* %car11, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %13 = load i64, i64* %elt, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %12, %cond.true ], [ %13, %cond.false ]
  store i64 %cond, i64* %thiscar, align 8
  %14 = load i64, i64* %thiscar, align 8
  %and12 = and i64 %14, 7
  %conv13 = trunc i64 %and12 to i32
  %cmp14 = icmp eq i32 %conv13, 0
  br i1 %cmp14, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %cond.end
  %15 = load i64, i64* %thiscar, align 8
  %call17 = call i64 @Fsymbol_name(i64 %15)
  store i64 %call17, i64* %thiscar, align 8
  br label %if.end.21

if.else:                                          ; preds = %cond.end
  %16 = load i64, i64* %thiscar, align 8
  %call18 = call zeroext i1 @STRINGP(i64 %16)
  br i1 %call18, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %if.else
  br label %for.inc

if.end.20:                                        ; preds = %if.else
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then.16
  %17 = load i64, i64* %thiscar, align 8
  %call22 = call i64 @builtin_lisp_symbol(i32 0)
  %18 = load i64, i64* %key.addr, align 8
  %call23 = call i64 @builtin_lisp_symbol(i32 0)
  %19 = load i64, i64* %case_fold.addr, align 8
  %call24 = call i64 @Fcompare_strings(i64 %17, i64 2, i64 %call22, i64 %18, i64 2, i64 %call23, i64 %19)
  store i64 %call24, i64* %tem, align 8
  %20 = load i64, i64* %tem, align 8
  %call25 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp26 = icmp eq i64 %20, %call25
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.21
  %21 = load i64, i64* %elt, align 8
  store i64 %21, i64* %retval
  br label %return

if.end.29:                                        ; preds = %if.end.21
  br label %do.body

do.body:                                          ; preds = %if.end.29
  %22 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call30 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp31 = icmp eq i64 %22, %call30
  br i1 %cmp31, label %if.else.37, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.body
  %23 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call33 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp34 = icmp eq i64 %23, %call33
  br i1 %cmp34, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %land.lhs.true
  call void @process_quit_flag()
  br label %if.end.40

if.else.37:                                       ; preds = %land.lhs.true, %do.body
  %24 = load volatile i8, i8* @pending_signals, align 1
  %tobool = trunc i8 %24 to i1
  br i1 %tobool, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.else.37
  call void @process_pending_signals()
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %if.else.37
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.36
  br label %do.end

do.end:                                           ; preds = %if.end.40
  br label %for.inc

for.inc:                                          ; preds = %do.end, %if.then.19
  %25 = load i64, i64* %tail, align 8
  %sub41 = sub nsw i64 %25, 3
  %26 = inttoptr i64 %sub41 to i8*
  %27 = bitcast i8* %26 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %27, i32 0, i32 1
  %cdr = bitcast %union.anon.5* %u to i64*
  %28 = load i64, i64* %cdr, align 8
  store i64 %28, i64* %tail, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call42 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call42, i64* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.28
  %29 = load i64, i64* %retval
  ret i64 %29
}

declare i64 @oblookup(i64, i8*, i64, i64) #1

declare i64 @Fstring_make_unibyte(i64) #1

declare i64 @Fstring_make_multibyte(i64) #1

declare i64 @hash_lookup(%struct.Lisp_Hash_Table*, i64, i64*) #1

; Function Attrs: nounwind uwtable
define i64 @Finternal_complete_buffer(i64 %string, i64 %predicate, i64 %flag) #0 {
entry:
  %retval = alloca i64, align 8
  %string.addr = alloca i64, align 8
  %predicate.addr = alloca i64, align 8
  %flag.addr = alloca i64, align 8
  %res = alloca i64, align 8
  %bufs = alloca i64, align 8
  store i64 %string, i64* %string.addr, align 8
  store i64 %predicate, i64* %predicate.addr, align 8
  store i64 %flag, i64* %flag.addr, align 8
  %0 = load i64, i64* %flag.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %string.addr, align 8
  %2 = load i64, i64* @Vbuffer_alist, align 8
  %3 = load i64, i64* %predicate.addr, align 8
  %call1 = call i64 @Ftry_completion(i64 %1, i64 %2, i64 %3)
  store i64 %call1, i64* %retval
  br label %return

if.else:                                          ; preds = %entry
  %4 = load i64, i64* %flag.addr, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp3 = icmp eq i64 %4, %call2
  br i1 %cmp3, label %if.then.4, label %if.else.57

if.then.4:                                        ; preds = %if.else
  %5 = load i64, i64* %string.addr, align 8
  %6 = load i64, i64* @Vbuffer_alist, align 8
  %7 = load i64, i64* %predicate.addr, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  %call6 = call i64 @Fall_completions(i64 %5, i64 %6, i64 %7, i64 %call5)
  store i64 %call6, i64* %res, align 8
  %8 = load i64, i64* %string.addr, align 8
  %call7 = call i64 @SCHARS(i64 %8)
  %cmp8 = icmp sgt i64 %call7, 0
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.then.4
  %9 = load i64, i64* %res, align 8
  store i64 %9, i64* %retval
  br label %return

if.else.10:                                       ; preds = %if.then.4
  %10 = load i64, i64* %res, align 8
  store i64 %10, i64* %bufs, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else.10
  %11 = load i64, i64* %bufs, align 8
  %and = and i64 %11, 7
  %conv = trunc i64 %and to i32
  %cmp11 = icmp eq i32 %conv, 3
  br i1 %cmp11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %12 = load i64, i64* %bufs, align 8
  %sub = sub nsw i64 %12, 3
  %13 = inttoptr i64 %sub to i8*
  %14 = bitcast i8* %13 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %14, i32 0, i32 0
  %15 = load i64, i64* %car, align 8
  %call13 = call zeroext i8 @SREF(i64 %15, i64 0)
  %conv14 = zext i8 %call13 to i32
  %cmp15 = icmp eq i32 %conv14, 32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %16 = phi i1 [ false, %while.cond ], [ %cmp15, %land.rhs ]
  br i1 %16, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %17 = load i64, i64* %bufs, align 8
  %sub17 = sub nsw i64 %17, 3
  %18 = inttoptr i64 %sub17 to i8*
  %19 = bitcast i8* %18 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %19, i32 0, i32 1
  %cdr = bitcast %union.anon.5* %u to i64*
  %20 = load i64, i64* %cdr, align 8
  store i64 %20, i64* %bufs, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %21 = load i64, i64* %bufs, align 8
  %call18 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp19 = icmp eq i64 %21, %call18
  br i1 %cmp19, label %if.then.21, label %if.end

if.then.21:                                       ; preds = %while.end
  %22 = load i64, i64* %res, align 8
  %call22 = call i64 @Flength(i64 %22)
  %23 = load i64, i64* @Vbuffer_alist, align 8
  %call23 = call i64 @Flength(i64 %23)
  %cmp24 = icmp eq i64 %call22, %call23
  br i1 %cmp24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.21
  %24 = load i64, i64* %res, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.21
  %25 = load i64, i64* %bufs, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %24, %cond.true ], [ %25, %cond.false ]
  store i64 %cond, i64* %retval
  br label %return

if.end:                                           ; preds = %while.end
  %26 = load i64, i64* %bufs, align 8
  store i64 %26, i64* %res, align 8
  br label %while.cond.26

while.cond.26:                                    ; preds = %if.end.55, %if.end
  %27 = load i64, i64* %bufs, align 8
  %sub27 = sub nsw i64 %27, 3
  %28 = inttoptr i64 %sub27 to i8*
  %29 = bitcast i8* %28 to %struct.Lisp_Cons*
  %u28 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %29, i32 0, i32 1
  %cdr29 = bitcast %union.anon.5* %u28 to i64*
  %30 = load i64, i64* %cdr29, align 8
  %and30 = and i64 %30, 7
  %conv31 = trunc i64 %and30 to i32
  %cmp32 = icmp eq i32 %conv31, 3
  br i1 %cmp32, label %while.body.34, label %while.end.56

while.body.34:                                    ; preds = %while.cond.26
  %31 = load i64, i64* %bufs, align 8
  %sub35 = sub nsw i64 %31, 3
  %32 = inttoptr i64 %sub35 to i8*
  %33 = bitcast i8* %32 to %struct.Lisp_Cons*
  %u36 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %33, i32 0, i32 1
  %cdr37 = bitcast %union.anon.5* %u36 to i64*
  %34 = load i64, i64* %cdr37, align 8
  %sub38 = sub nsw i64 %34, 3
  %35 = inttoptr i64 %sub38 to i8*
  %36 = bitcast i8* %35 to %struct.Lisp_Cons*
  %car39 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %36, i32 0, i32 0
  %37 = load i64, i64* %car39, align 8
  %call40 = call zeroext i8 @SREF(i64 %37, i64 0)
  %conv41 = zext i8 %call40 to i32
  %cmp42 = icmp eq i32 %conv41, 32
  br i1 %cmp42, label %if.then.44, label %if.else.51

if.then.44:                                       ; preds = %while.body.34
  %38 = load i64, i64* %bufs, align 8
  %39 = load i64, i64* %bufs, align 8
  %sub45 = sub nsw i64 %39, 3
  %40 = inttoptr i64 %sub45 to i8*
  %41 = bitcast i8* %40 to %struct.Lisp_Cons*
  %u46 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %41, i32 0, i32 1
  %cdr47 = bitcast %union.anon.5* %u46 to i64*
  %42 = load i64, i64* %cdr47, align 8
  %sub48 = sub nsw i64 %42, 3
  %43 = inttoptr i64 %sub48 to i8*
  %44 = bitcast i8* %43 to %struct.Lisp_Cons*
  %u49 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %44, i32 0, i32 1
  %cdr50 = bitcast %union.anon.5* %u49 to i64*
  %45 = load i64, i64* %cdr50, align 8
  call void @XSETCDR(i64 %38, i64 %45)
  br label %if.end.55

if.else.51:                                       ; preds = %while.body.34
  %46 = load i64, i64* %bufs, align 8
  %sub52 = sub nsw i64 %46, 3
  %47 = inttoptr i64 %sub52 to i8*
  %48 = bitcast i8* %47 to %struct.Lisp_Cons*
  %u53 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %48, i32 0, i32 1
  %cdr54 = bitcast %union.anon.5* %u53 to i64*
  %49 = load i64, i64* %cdr54, align 8
  store i64 %49, i64* %bufs, align 8
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.51, %if.then.44
  br label %while.cond.26

while.end.56:                                     ; preds = %while.cond.26
  %50 = load i64, i64* %res, align 8
  store i64 %50, i64* %retval
  br label %return

if.else.57:                                       ; preds = %if.else
  %51 = load i64, i64* %flag.addr, align 8
  %call58 = call i64 @builtin_lisp_symbol(i32 598)
  %cmp59 = icmp eq i64 %51, %call58
  br i1 %cmp59, label %if.then.61, label %if.else.63

if.then.61:                                       ; preds = %if.else.57
  %52 = load i64, i64* %string.addr, align 8
  %53 = load i64, i64* @Vbuffer_alist, align 8
  %54 = load i64, i64* %predicate.addr, align 8
  %call62 = call i64 @Ftest_completion(i64 %52, i64 %53, i64 %54)
  store i64 %call62, i64* %retval
  br label %return

if.else.63:                                       ; preds = %if.else.57
  %55 = load i64, i64* %flag.addr, align 8
  %call64 = call i64 @builtin_lisp_symbol(i32 659)
  %cmp65 = icmp eq i64 %55, %call64
  br i1 %cmp65, label %if.then.67, label %if.else.73

if.then.67:                                       ; preds = %if.else.63
  %call68 = call i64 @builtin_lisp_symbol(i32 659)
  %call69 = call i64 @builtin_lisp_symbol(i32 241)
  %call70 = call i64 @builtin_lisp_symbol(i32 219)
  %call71 = call i64 @Fcons(i64 %call69, i64 %call70)
  %call72 = call i64 @list2(i64 %call68, i64 %call71)
  store i64 %call72, i64* %retval
  br label %return

if.else.73:                                       ; preds = %if.else.63
  %call74 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call74, i64* %retval
  br label %return

return:                                           ; preds = %if.else.73, %if.then.67, %if.then.61, %while.end.56, %cond.end, %if.then.9, %if.then
  %56 = load i64, i64* %retval
  ret i64 %56
}

declare i64 @Flength(i64) #1

declare void @XSETCDR(i64, i64) #1

declare i64 @list2(i64, i64) #1

declare void @process_quit_flag() #1

declare void @process_pending_signals() #1

; Function Attrs: nounwind uwtable
define i64 @Fminibuffer_depth() #0 {
entry:
  %0 = load i64, i64* @minibuf_level, align 8
  %shl = shl i64 %0, 2
  %add = add i64 %shl, 2
  ret i64 %add
}

; Function Attrs: nounwind uwtable
define i64 @Fminibuffer_prompt() #0 {
entry:
  %0 = load i64, i64* @minibuf_prompt, align 8
  %call = call i64 @Fcopy_sequence(i64 %0)
  ret i64 %call
}

declare i64 @Fcopy_sequence(i64) #1

; Function Attrs: nounwind uwtable
define void @init_minibuf_once() #0 {
entry:
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* @Vminibuffer_list, align 8
  call void @staticpro(i64* @Vminibuffer_list)
  ret void
}

declare void @staticpro(i64*) #1

; Function Attrs: nounwind uwtable
define void @syms_of_minibuf() #0 {
entry:
  store i64 0, i64* @minibuf_level, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* @minibuf_prompt, align 8
  call void @staticpro(i64* @minibuf_prompt)
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* @minibuf_save_list, align 8
  call void @staticpro(i64* @minibuf_save_list)
  %call2 = call i64 @builtin_lisp_symbol(i32 663)
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %call4 = call i64 @Fset(i64 %call2, i64 %call3)
  call void @staticpro(i64* @last_minibuf_string)
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call5, i64* @last_minibuf_string, align 8
  %call6 = call i64 @builtin_lisp_symbol(i32 224)
  %call7 = call i64 @builtin_lisp_symbol(i32 0)
  %call8 = call i64 @Fset(i64 %call6, i64 %call7)
  br label %do.body

do.body:                                          ; preds = %entry
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_minibuf.o_fwd, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 244))
  br label %do.end

do.end:                                           ; preds = %do.body
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call9, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 244), align 8
  br label %do.body.10

do.body.10:                                       ; preds = %do.end
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_minibuf.o_fwd.9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 242))
  br label %do.end.11

do.end.11:                                        ; preds = %do.body.10
  %call12 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call12, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 242), align 8
  br label %do.body.13

do.body.13:                                       ; preds = %do.end.11
  call void @defvar_bool(%struct.Lisp_Boolfwd* @syms_of_minibuf.b_fwd, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 485))
  br label %do.end.14

do.end.14:                                        ; preds = %do.body.13
  store i8 0, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 485), align 1
  br label %do.body.15

do.body.15:                                       ; preds = %do.end.14
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_minibuf.o_fwd.12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 194))
  br label %do.end.16

do.end.16:                                        ; preds = %do.body.15
  %call17 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call17, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 194), align 8
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.16
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_minibuf.o_fwd.14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 186))
  br label %do.end.19

do.end.19:                                        ; preds = %do.body.18
  %call20 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call20, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 186), align 8
  br label %do.body.21

do.body.21:                                       ; preds = %do.end.19
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_minibuf.o_fwd.16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 125))
  br label %do.end.22

do.end.22:                                        ; preds = %do.body.21
  %call23 = call i64 @make_natnum(i64 100)
  store i64 %call23, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 125), align 8
  br label %do.body.24

do.body.24:                                       ; preds = %do.end.22
  call void @defvar_bool(%struct.Lisp_Boolfwd* @syms_of_minibuf.b_fwd.18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 445))
  br label %do.end.25

do.end.25:                                        ; preds = %do.body.24
  store i8 0, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 445), align 1
  br label %do.body.26

do.body.26:                                       ; preds = %do.end.25
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_minibuf.o_fwd.20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 124))
  br label %do.end.27

do.end.27:                                        ; preds = %do.body.26
  %call28 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call28, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 124), align 8
  br label %do.body.29

do.body.29:                                       ; preds = %do.end.27
  call void @defvar_bool(%struct.Lisp_Boolfwd* @syms_of_minibuf.b_fwd.22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 428))
  br label %do.end.30

do.end.30:                                        ; preds = %do.body.29
  store i8 0, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 428), align 1
  br label %do.body.31

do.body.31:                                       ; preds = %do.end.30
  call void @defvar_bool(%struct.Lisp_Boolfwd* @syms_of_minibuf.b_fwd.24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 439))
  br label %do.end.32

do.end.32:                                        ; preds = %do.body.31
  store i8 0, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 439), align 1
  br label %do.body.33

do.body.33:                                       ; preds = %do.end.32
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_minibuf.o_fwd.26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 185))
  br label %do.end.34

do.end.34:                                        ; preds = %do.body.33
  %call35 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call35, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 185), align 8
  br label %do.body.36

do.body.36:                                       ; preds = %do.end.34
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_minibuf.o_fwd.28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.29, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 184))
  br label %do.end.37

do.end.37:                                        ; preds = %do.body.36
  %call38 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call38, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 184), align 8
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.37
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_minibuf.o_fwd.30, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.31, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 183))
  br label %do.end.40

do.end.40:                                        ; preds = %do.body.39
  %call41 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call41, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 183), align 8
  br label %do.body.42

do.body.42:                                       ; preds = %do.end.40
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_minibuf.o_fwd.32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.33, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 182))
  br label %do.end.43

do.end.43:                                        ; preds = %do.body.42
  %call44 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call44, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 182), align 8
  br label %do.body.45

do.body.45:                                       ; preds = %do.end.43
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_minibuf.o_fwd.34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 187))
  br label %do.end.46

do.end.46:                                        ; preds = %do.body.45
  %call47 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call47, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 187), align 8
  br label %do.body.48

do.body.48:                                       ; preds = %do.end.46
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_minibuf.o_fwd.36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.37, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 189))
  br label %do.end.49

do.end.49:                                        ; preds = %do.body.48
  %call50 = call i64 @make_natnum(i64 0)
  store i64 %call50, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 189), align 8
  br label %do.body.51

do.body.51:                                       ; preds = %do.end.49
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_minibuf.o_fwd.38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.39, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 188))
  br label %do.end.52

do.end.52:                                        ; preds = %do.body.51
  %call53 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call53, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 188), align 8
  br label %do.body.54

do.body.54:                                       ; preds = %do.end.52
  call void @defvar_bool(%struct.Lisp_Boolfwd* @syms_of_minibuf.b_fwd.40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 472))
  br label %do.end.55

do.end.55:                                        ; preds = %do.body.54
  store i8 0, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 472), align 1
  br label %do.body.56

do.body.56:                                       ; preds = %do.end.55
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_minibuf.o_fwd.42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.43, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 44))
  br label %do.end.57

do.end.57:                                        ; preds = %do.body.56
  %call58 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call58, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 44), align 8
  br label %do.body.59

do.body.59:                                       ; preds = %do.end.57
  call void @defvar_bool(%struct.Lisp_Boolfwd* @syms_of_minibuf.b_fwd.44, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 471))
  br label %do.end.60

do.end.60:                                        ; preds = %do.body.59
  store i8 0, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 471), align 1
  br label %do.body.61

do.body.61:                                       ; preds = %do.end.60
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_minibuf.o_fwd.46, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.47, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 193))
  br label %do.end.62

do.end.62:                                        ; preds = %do.body.61
  %call63 = call i64 @builtin_lisp_symbol(i32 792)
  %call64 = call i64 @builtin_lisp_symbol(i32 901)
  %call65 = call i64 @list2(i64 %call63, i64 %call64)
  store i64 %call65, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 193), align 8
  br label %do.body.66

do.body.66:                                       ; preds = %do.end.62
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_minibuf.o_fwd.48, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 245))
  br label %do.end.67

do.end.67:                                        ; preds = %do.body.66
  %call68 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call68, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 245), align 8
  call void @defsubr(%struct.Lisp_Subr* @Sactive_minibuffer_window)
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sset_minibuffer_window to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sread_from_minibuffer to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sread_string to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sread_command to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sread_variable to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sinternal_complete_buffer to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sread_buffer to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sread_no_blanks_input to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* @Sminibuffer_depth)
  call void @defsubr(%struct.Lisp_Subr* @Sminibuffer_prompt)
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sminibufferp to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* @Sminibuffer_prompt_end)
  call void @defsubr(%struct.Lisp_Subr* @Sminibuffer_contents)
  call void @defsubr(%struct.Lisp_Subr* @Sminibuffer_contents_no_properties)
  call void @defsubr(%struct.Lisp_Subr* @Sminibuffer_completion_contents)
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Stry_completion to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sall_completions to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Stest_completion to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sassoc_string to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64, i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Scompleting_read to %struct.Lisp_Subr*))
  ret void
}

declare i64 @Fset(i64, i64) #1

declare void @defvar_lisp(%struct.Lisp_Objfwd*, i8*, i64*) #1

declare void @defvar_bool(%struct.Lisp_Boolfwd*, i8*, i8*) #1

declare void @defsubr(%struct.Lisp_Subr*) #1

declare void @cancel_hourglass() #1

; Function Attrs: noreturn
declare i64 @wrong_type_argument(i64, i64) #2

; Function Attrs: noreturn
declare i64 @Fthrow(i64, i64) #2

declare i64 @build_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal i64 @read_minibuf_noninteractive(i64 %map, i64 %initial, i64 %prompt, i64 %backup_n, i1 zeroext %expflag, i64 %histvar, i64 %histpos, i64 %defalt, i1 zeroext %allow_props, i1 zeroext %inherit_input_method) #0 {
entry:
  %map.addr = alloca i64, align 8
  %initial.addr = alloca i64, align 8
  %prompt.addr = alloca i64, align 8
  %backup_n.addr = alloca i64, align 8
  %expflag.addr = alloca i8, align 1
  %histvar.addr = alloca i64, align 8
  %histpos.addr = alloca i64, align 8
  %defalt.addr = alloca i64, align 8
  %allow_props.addr = alloca i8, align 1
  %inherit_input_method.addr = alloca i8, align 1
  %size = alloca i64, align 8
  %len = alloca i64, align 8
  %line = alloca i8*, align 8
  %val = alloca i64, align 8
  %c = alloca i32, align 4
  %hide_char = alloca i8, align 1
  %etty = alloca %struct.emacs_tty, align 4
  %etty_valid = alloca i8, align 1
  store i64 %map, i64* %map.addr, align 8
  store i64 %initial, i64* %initial.addr, align 8
  store i64 %prompt, i64* %prompt.addr, align 8
  store i64 %backup_n, i64* %backup_n.addr, align 8
  %frombool = zext i1 %expflag to i8
  store i8 %frombool, i8* %expflag.addr, align 1
  store i64 %histvar, i64* %histvar.addr, align 8
  store i64 %histpos, i64* %histpos.addr, align 8
  store i64 %defalt, i64* %defalt.addr, align 8
  %frombool1 = zext i1 %allow_props to i8
  store i8 %frombool1, i8* %allow_props.addr, align 1
  %frombool2 = zext i1 %inherit_input_method to i8
  store i8 %frombool2, i8* %inherit_input_method.addr, align 1
  store i8 0, i8* %hide_char, align 1
  %0 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 245), align 8
  %call = call zeroext i1 @NATNUMP(i64 %0)
  br i1 %call, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 245), align 8
  %shr = ashr i64 %1, 2
  %cmp = icmp sle i64 %shr, 4194303
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 245), align 8
  %shr3 = ashr i64 %2, 2
  %conv = trunc i64 %shr3 to i8
  store i8 %conv, i8* %hide_char, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %3 = load i8, i8* %hide_char, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %if.then.4, label %if.end.16

if.then.4:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call5 = call i32 @fileno(%struct._IO_FILE* %4) #6
  %call6 = call i32 @emacs_get_tty(i32 %call5, %struct.emacs_tty* %etty)
  %cmp7 = icmp eq i32 %call6, 0
  %frombool9 = zext i1 %cmp7 to i8
  store i8 %frombool9, i8* %etty_valid, align 1
  %5 = load i8, i8* %etty_valid, align 1
  %tobool10 = trunc i8 %5 to i1
  br i1 %tobool10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.then.4
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call12 = call i32 @fileno(%struct._IO_FILE* %6) #6
  %call13 = call i32 @set_binary_mode(i32 %call12, i32 0)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.then.4
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call15 = call i32 @fileno(%struct._IO_FILE* %7) #6
  call void @suppress_echo_on_tty(i32 %call15)
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.14, %if.end
  %8 = load i64, i64* %prompt.addr, align 8
  %call17 = call i8* @SDATA(i64 %8)
  %9 = load i64, i64* %prompt.addr, align 8
  %call18 = call i64 @SBYTES(i64 %9)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call19 = call i64 @fwrite(i8* %call17, i64 1, i64 %call18, %struct._IO_FILE* %10)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call20 = call i32 @fflush(%struct._IO_FILE* %11)
  %call21 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call21, i64* %val, align 8
  store i64 100, i64* %size, align 8
  store i64 0, i64* %len, align 8
  %12 = load i64, i64* %size, align 8
  %call22 = call noalias i8* @xmalloc(i64 %12)
  store i8* %call22, i8** %line, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.47, %if.end.16
  %call23 = call i32 @getchar()
  store i32 %call23, i32* %c, align 4
  %cmp24 = icmp ne i32 %call23, 10
  br i1 %cmp24, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %13 = load i32, i32* %c, align 4
  %cmp26 = icmp ne i32 %13, 13
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %14 = phi i1 [ false, %while.cond ], [ %cmp26, %land.rhs ]
  br i1 %14, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %15 = load i32, i32* %c, align 4
  %cmp28 = icmp eq i32 %15, -1
  br i1 %cmp28, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %while.body
  %call31 = call i32* @__errno_location() #7
  %16 = load i32, i32* %call31, align 4
  %cmp32 = icmp ne i32 %16, 4
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.then.30
  br label %while.end

if.end.35:                                        ; preds = %if.then.30
  br label %if.end.47

if.else:                                          ; preds = %while.body
  %17 = load i8, i8* %hide_char, align 1
  %tobool36 = icmp ne i8 %17, 0
  br i1 %tobool36, label %if.then.37, label %if.end.40

if.then.37:                                       ; preds = %if.else
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %19 = load i8, i8* %hide_char, align 1
  %conv38 = zext i8 %19 to i32
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0), i32 %conv38)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.37, %if.else
  %20 = load i64, i64* %len, align 8
  %21 = load i64, i64* %size, align 8
  %cmp41 = icmp eq i64 %20, %21
  br i1 %cmp41, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %if.end.40
  %22 = load i8*, i8** %line, align 8
  %call44 = call i8* @xpalloc(i8* %22, i64* %size, i64 1, i64 -1, i64 1)
  store i8* %call44, i8** %line, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %if.end.40
  %23 = load i32, i32* %c, align 4
  %conv46 = trunc i32 %23 to i8
  %24 = load i64, i64* %len, align 8
  %inc = add nsw i64 %24, 1
  store i64 %inc, i64* %len, align 8
  %25 = load i8*, i8** %line, align 8
  %arrayidx = getelementptr inbounds i8, i8* %25, i64 %24
  store i8 %conv46, i8* %arrayidx, align 1
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.45, %if.end.35
  br label %while.cond

while.end:                                        ; preds = %if.then.34, %land.end
  %26 = load i8, i8* %hide_char, align 1
  %tobool48 = icmp ne i8 %26, 0
  br i1 %tobool48, label %if.then.49, label %if.end.58

if.then.49:                                       ; preds = %while.end
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i32 0, i32 0))
  %28 = load i8, i8* %etty_valid, align 1
  %tobool51 = trunc i8 %28 to i1
  br i1 %tobool51, label %if.then.52, label %if.end.57

if.then.52:                                       ; preds = %if.then.49
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call53 = call i32 @fileno(%struct._IO_FILE* %29) #6
  %call54 = call i32 @emacs_set_tty(i32 %call53, %struct.emacs_tty* %etty, i1 zeroext false)
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call55 = call i32 @fileno(%struct._IO_FILE* %30) #6
  %call56 = call i32 @set_binary_mode(i32 %call55, i32 0)
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.52, %if.then.49
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %while.end
  %31 = load i64, i64* %len, align 8
  %tobool59 = icmp ne i64 %31, 0
  br i1 %tobool59, label %if.then.65, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.58
  %32 = load i32, i32* %c, align 4
  %cmp60 = icmp eq i32 %32, 10
  br i1 %cmp60, label %if.then.65, label %lor.lhs.false.62

lor.lhs.false.62:                                 ; preds = %lor.lhs.false
  %33 = load i32, i32* %c, align 4
  %cmp63 = icmp eq i32 %33, 13
  br i1 %cmp63, label %if.then.65, label %if.else.67

if.then.65:                                       ; preds = %lor.lhs.false.62, %lor.lhs.false, %if.end.58
  %34 = load i8*, i8** %line, align 8
  %35 = load i64, i64* %len, align 8
  %call66 = call i64 @make_string(i8* %34, i64 %35)
  store i64 %call66, i64* %val, align 8
  %36 = load i8*, i8** %line, align 8
  call void @xfree(i8* %36)
  br label %if.end.68

if.else.67:                                       ; preds = %lor.lhs.false.62
  %37 = load i8*, i8** %line, align 8
  call void @xfree(i8* %37)
  call void (i8*, ...) @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.53, i32 0, i32 0)) #5
  unreachable

if.end.68:                                        ; preds = %if.then.65
  %38 = load i8, i8* %expflag.addr, align 1
  %tobool69 = trunc i8 %38 to i1
  br i1 %tobool69, label %if.then.70, label %if.end.75

if.then.70:                                       ; preds = %if.end.68
  %39 = load i64, i64* %val, align 8
  %40 = load i64, i64* %defalt.addr, align 8
  %and = and i64 %40, 7
  %conv71 = trunc i64 %and to i32
  %cmp72 = icmp eq i32 %conv71, 3
  br i1 %cmp72, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.70
  %41 = load i64, i64* %defalt.addr, align 8
  %sub = sub nsw i64 %41, 3
  %42 = inttoptr i64 %sub to i8*
  %43 = bitcast i8* %42 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %43, i32 0, i32 0
  %44 = load i64, i64* %car, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.70
  %45 = load i64, i64* %defalt.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %44, %cond.true ], [ %45, %cond.false ]
  %call74 = call i64 @string_to_object(i64 %39, i64 %cond)
  store i64 %call74, i64* %val, align 8
  br label %if.end.75

if.end.75:                                        ; preds = %cond.end, %if.end.68
  %46 = load i64, i64* %val, align 8
  ret i64 %46
}

declare void @record_unwind_protect(void (i64)*, i64) #1

declare void @restore_buffer(i64) #1

; Function Attrs: nounwind uwtable
define internal void @choose_minibuf_frame() #0 {
entry:
  %sf = alloca %struct.frame*, align 8
  %buffer = alloca i64, align 8
  %tail = alloca i64, align 8
  %frame = alloca i64, align 8
  %0 = load i64, i64* @selected_frame, align 8
  %call = call zeroext i1 @FRAMEP(i64 %0)
  br i1 %call, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* @selected_frame, align 8
  %sub = sub nsw i64 %1, 5
  %2 = inttoptr i64 %sub to i8*
  %3 = bitcast i8* %2 to %struct.frame*
  %terminal = getelementptr inbounds %struct.frame, %struct.frame* %3, i32 0, i32 61
  %4 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %cmp = icmp ne %struct.terminal* %4, null
  br i1 %cmp, label %land.lhs.true.1, label %if.end.15

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %5 = load i64, i64* @minibuf_window, align 8
  %6 = load i64, i64* @selected_frame, align 8
  %sub2 = sub nsw i64 %6, 5
  %7 = inttoptr i64 %sub2 to i8*
  %8 = bitcast i8* %7 to %struct.frame*
  %minibuffer_window = getelementptr inbounds %struct.frame, %struct.frame* %8, i32 0, i32 7
  %9 = load i64, i64* %minibuffer_window, align 8
  %cmp3 = icmp eq i64 %5, %9
  br i1 %cmp3, label %if.end.15, label %if.then

if.then:                                          ; preds = %land.lhs.true.1
  %10 = load i64, i64* @selected_frame, align 8
  %sub4 = sub nsw i64 %10, 5
  %11 = inttoptr i64 %sub4 to i8*
  %12 = bitcast i8* %11 to %struct.frame*
  store %struct.frame* %12, %struct.frame** %sf, align 8
  %13 = load %struct.frame*, %struct.frame** %sf, align 8
  %minibuffer_window5 = getelementptr inbounds %struct.frame, %struct.frame* %13, i32 0, i32 7
  %14 = load i64, i64* %minibuffer_window5, align 8
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp7 = icmp eq i64 %14, %call6
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  call void @emacs_abort() #5
  unreachable

if.end:                                           ; preds = %if.then
  %15 = load i64, i64* @minibuf_window, align 8
  %call9 = call %struct.window* @XWINDOW(i64 %15)
  %contents = getelementptr inbounds %struct.window, %struct.window* %call9, i32 0, i32 10
  %16 = load i64, i64* %contents, align 8
  store i64 %16, i64* %buffer, align 8
  %17 = load i64, i64* %buffer, align 8
  %call10 = call zeroext i1 @BUFFERP(i64 %17)
  br i1 %call10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end
  %18 = load %struct.frame*, %struct.frame** %sf, align 8
  %minibuffer_window12 = getelementptr inbounds %struct.frame, %struct.frame* %18, i32 0, i32 7
  %19 = load i64, i64* %minibuffer_window12, align 8
  %20 = load i64, i64* %buffer, align 8
  call void @set_window_buffer(i64 %19, i64 %20, i1 zeroext false, i1 zeroext false)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end
  %21 = load %struct.frame*, %struct.frame** %sf, align 8
  %minibuffer_window14 = getelementptr inbounds %struct.frame, %struct.frame* %21, i32 0, i32 7
  %22 = load i64, i64* %minibuffer_window14, align 8
  store i64 %22, i64* @minibuf_window, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.13, %land.lhs.true.1, %land.lhs.true, %entry
  %23 = load i64, i64* @Vframe_list, align 8
  store i64 %23, i64* %tail, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.15
  %24 = load i64, i64* %tail, align 8
  %and = and i64 %24, 7
  %conv = trunc i64 %and to i32
  %cmp16 = icmp eq i32 %conv, 3
  br i1 %cmp16, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %25 = load i64, i64* %tail, align 8
  %sub18 = sub nsw i64 %25, 3
  %26 = inttoptr i64 %sub18 to i8*
  %27 = bitcast i8* %26 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %27, i32 0, i32 0
  %28 = load i64, i64* %car, align 8
  store i64 %28, i64* %frame, align 8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %29 = phi i1 [ false, %for.cond ], [ true, %land.rhs ]
  br i1 %29, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %30 = load i64, i64* %frame, align 8
  %sub19 = sub nsw i64 %30, 5
  %31 = inttoptr i64 %sub19 to i8*
  %32 = bitcast i8* %31 to %struct.frame*
  %selected_window = getelementptr inbounds %struct.frame, %struct.frame* %32, i32 0, i32 6
  %33 = load i64, i64* %selected_window, align 8
  %call20 = call %struct.window* @XWINDOW(i64 %33)
  %mini = getelementptr inbounds %struct.window, %struct.window* %call20, i32 0, i32 67
  %bf.load = load i16, i16* %mini, align 4
  %bf.clear = and i16 %bf.load, 1
  %bf.cast = trunc i16 %bf.clear to i1
  br i1 %bf.cast, label %land.lhs.true.22, label %if.end.32

land.lhs.true.22:                                 ; preds = %for.body
  %34 = load i64, i64* %frame, align 8
  %35 = load i64, i64* @selected_frame, align 8
  %cmp23 = icmp eq i64 %34, %35
  br i1 %cmp23, label %land.lhs.true.25, label %if.then.28

land.lhs.true.25:                                 ; preds = %land.lhs.true.22
  %36 = load i64, i64* @minibuf_level, align 8
  %cmp26 = icmp sgt i64 %36, 0
  br i1 %cmp26, label %if.end.32, label %if.then.28

if.then.28:                                       ; preds = %land.lhs.true.25, %land.lhs.true.22
  %37 = load i64, i64* %frame, align 8
  %38 = load i64, i64* %frame, align 8
  %call29 = call i64 @Fframe_first_window(i64 %38)
  %call30 = call i64 @builtin_lisp_symbol(i32 0)
  %call31 = call i64 @Fset_frame_selected_window(i64 %37, i64 %call29, i64 %call30)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.28, %land.lhs.true.25, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.32
  %39 = load i64, i64* %tail, align 8
  %sub33 = sub nsw i64 %39, 3
  %40 = inttoptr i64 %sub33 to i8*
  %41 = bitcast i8* %40 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %41, i32 0, i32 1
  %cdr = bitcast %union.anon.5* %u to i64*
  %42 = load i64, i64* %cdr, align 8
  store i64 %42, i64* %tail, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  ret void
}

declare void @record_unwind_protect_void(void ()*) #1

declare void @restore_window_configuration(i64) #1

declare i64 @Fcurrent_window_configuration(i64) #1

declare i64 @Fmake_frame_visible(i64) #1

declare i64 @Fraise_frame(i64) #1

declare void @temporarily_switch_to_single_kboard(%struct.frame*) #1

; Function Attrs: nounwind uwtable
define internal void @read_minibuf_unwind() #0 {
entry:
  %old_deactivate_mark = alloca i64, align 8
  %window = alloca i64, align 8
  %count = alloca i64, align 8
  %0 = load i64, i64* @minibuf_level, align 8
  %dec = add nsw i64 %0, -1
  store i64 %dec, i64* @minibuf_level, align 8
  %1 = load i64, i64* @minibuf_window, align 8
  store i64 %1, i64* %window, align 8
  %2 = load i64, i64* %window, align 8
  %call = call %struct.window* @XWINDOW(i64 %2)
  %contents = getelementptr inbounds %struct.window, %struct.window* %call, i32 0, i32 10
  %3 = load i64, i64* %contents, align 8
  %call1 = call i64 @Fset_buffer(i64 %3)
  %4 = load i64, i64* @minibuf_save_list, align 8
  %call2 = call i64 @Fcar(i64 %4)
  store i64 %call2, i64* @minibuf_prompt, align 8
  %5 = load i64, i64* @minibuf_save_list, align 8
  %call3 = call i64 @Fcdr(i64 %5)
  store i64 %call3, i64* @minibuf_save_list, align 8
  %6 = load i64, i64* @minibuf_save_list, align 8
  %call4 = call i64 @Fcar(i64 %6)
  %shr = ashr i64 %call4, 2
  store i64 %shr, i64* @minibuf_prompt_width, align 8
  %7 = load i64, i64* @minibuf_save_list, align 8
  %call5 = call i64 @Fcdr(i64 %7)
  store i64 %call5, i64* @minibuf_save_list, align 8
  %8 = load i64, i64* @minibuf_save_list, align 8
  %call6 = call i64 @Fcar(i64 %8)
  store i64 %call6, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 123), align 8
  %9 = load i64, i64* @minibuf_save_list, align 8
  %call7 = call i64 @Fcdr(i64 %9)
  store i64 %call7, i64* @minibuf_save_list, align 8
  %10 = load i64, i64* @minibuf_save_list, align 8
  %call8 = call i64 @Fcar(i64 %10)
  store i64 %call8, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 50), align 8
  %11 = load i64, i64* @minibuf_save_list, align 8
  %call9 = call i64 @Fcdr(i64 %11)
  store i64 %call9, i64* @minibuf_save_list, align 8
  %12 = load i64, i64* @minibuf_save_list, align 8
  %call10 = call i64 @Fcar(i64 %12)
  store i64 %call10, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 188), align 8
  %13 = load i64, i64* @minibuf_save_list, align 8
  %call11 = call i64 @Fcdr(i64 %13)
  store i64 %call11, i64* @minibuf_save_list, align 8
  %14 = load i64, i64* @minibuf_save_list, align 8
  %call12 = call i64 @Fcar(i64 %14)
  store i64 %call12, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 189), align 8
  %15 = load i64, i64* @minibuf_save_list, align 8
  %call13 = call i64 @Fcdr(i64 %15)
  store i64 %call13, i64* @minibuf_save_list, align 8
  %16 = load i64, i64* @minibuf_save_list, align 8
  %call14 = call i64 @Fcar(i64 %16)
  store i64 %call14, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 216), align 8
  %17 = load i64, i64* @minibuf_save_list, align 8
  %call15 = call i64 @Fcdr(i64 %17)
  store i64 %call15, i64* @minibuf_save_list, align 8
  %18 = load i64, i64* @minibuf_save_list, align 8
  %call16 = call i64 @Fcdr(i64 %18)
  store i64 %call16, i64* @minibuf_save_list, align 8
  %call17 = call i64 @SPECPDL_INDEX()
  store i64 %call17, i64* %count, align 8
  %call18 = call i64 @builtin_lisp_symbol(i32 547)
  %call19 = call i64 @builtin_lisp_symbol(i32 901)
  call void @specbind(i64 %call18, i64 %call19)
  %call20 = call i64 @builtin_lisp_symbol(i32 544)
  %call21 = call i64 @builtin_lisp_symbol(i32 901)
  call void @specbind(i64 %call20, i64 %call21)
  %19 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 52), align 8
  store i64 %19, i64* %old_deactivate_mark, align 8
  %call22 = call i64 @Ferase_buffer()
  %20 = load i64, i64* %old_deactivate_mark, align 8
  store i64 %20, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 52), align 8
  %21 = load i64, i64* %count, align 8
  %call23 = call i64 @builtin_lisp_symbol(i32 0)
  %call24 = call i64 @unbind_to(i64 %21, i64 %call23)
  %22 = load i64, i64* @minibuf_level, align 8
  %cmp = icmp eq i64 %22, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %23 = load i64, i64* %window, align 8
  %call25 = call %struct.window* @XWINDOW(i64 %23)
  %call26 = call zeroext i1 @resize_mini_window(%struct.window* %call25, i1 zeroext false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call27 = call i64 @intern(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0))
  %call28 = call i64 @call0(i64 %call27)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @run_exit_minibuf_hook() #0 {
entry:
  %call = call i64 @builtin_lisp_symbol(i32 664)
  call void @safe_run_hooks(i64 %call)
  ret void
}

declare i64 @find_symbol_value(i64) #1

declare void @bset_truncate_lines(%struct.buffer*, i64) #1

declare void @bset_enable_multibyte_characters(%struct.buffer*, i64) #1

declare void @bset_directory(%struct.buffer*, i64) #1

declare i64 @Fredirect_frame_focus(i64, i64) #1

declare i64 @Fframe_root_window(i64) #1

declare i64 @Fwindow_minibuffer_p(i64) #1

declare void @set_window_buffer(i64, i64, i1 zeroext, i1 zeroext) #1

declare i64 @Fselect_window(i64, i64) #1

declare i64 @Fmake_local_variable(i64) #1

declare i64 @Ferase_buffer() #1

declare i64 @Finsert(i64, i64*) #1

declare i64 @Fput_text_property(i64, i64, i64, i64, i64) #1

declare i64 @Fadd_text_properties(i64, i64, i64, i64) #1

declare i64 @current_column() #1

declare i64 @Fforward_char(i64) #1

declare void @clear_message(i1 zeroext, i1 zeroext) #1

declare void @bset_keymap(%struct.buffer*, i64) #1

declare void @run_hook(i64) #1

declare void @bset_undo_list(%struct.buffer*, i64) #1

declare i64 @recursive_edit_1() #1

declare zeroext i1 @update_frame(%struct.frame*, i1 zeroext, i1 zeroext) #1

declare void @flush_frame(%struct.frame*) #1

declare i64 @Fdelete(i64, i64) #1

declare i64 @Fget(i64, i64) #1

declare i64 @Fsub1(i64) #1

declare i64 @Fsetcdr(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @string_to_object(i64 %val, i64 %defalt) #0 {
entry:
  %val.addr = alloca i64, align 8
  %defalt.addr = alloca i64, align 8
  %expr_and_pos = alloca i64, align 8
  %pos = alloca i64, align 8
  %i = alloca i64, align 8
  %c = alloca i32, align 4
  store i64 %val, i64* %val.addr, align 8
  store i64 %defalt, i64* %defalt.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %call = call zeroext i1 @STRINGP(i64 %0)
  br i1 %call, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %val.addr, align 8
  %call1 = call i64 @SCHARS(i64 %1)
  %cmp = icmp eq i64 %call1, 0
  br i1 %cmp, label %if.then, label %if.end.13

if.then:                                          ; preds = %land.lhs.true
  %2 = load i64, i64* %defalt.addr, align 8
  %call2 = call zeroext i1 @STRINGP(i64 %2)
  br i1 %call2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %3 = load i64, i64* %defalt.addr, align 8
  store i64 %3, i64* %val.addr, align 8
  br label %if.end.12

if.else:                                          ; preds = %if.then
  %4 = load i64, i64* %defalt.addr, align 8
  %and = and i64 %4, 7
  %conv = trunc i64 %and to i32
  %cmp4 = icmp eq i32 %conv, 3
  br i1 %cmp4, label %land.lhs.true.6, label %if.end

land.lhs.true.6:                                  ; preds = %if.else
  %5 = load i64, i64* %defalt.addr, align 8
  %sub = sub nsw i64 %5, 3
  %6 = inttoptr i64 %sub to i8*
  %7 = bitcast i8* %6 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %7, i32 0, i32 0
  %8 = load i64, i64* %car, align 8
  %call7 = call zeroext i1 @STRINGP(i64 %8)
  br i1 %call7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %land.lhs.true.6
  %9 = load i64, i64* %defalt.addr, align 8
  %sub10 = sub nsw i64 %9, 3
  %10 = inttoptr i64 %sub10 to i8*
  %11 = bitcast i8* %10 to %struct.Lisp_Cons*
  %car11 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %11, i32 0, i32 0
  %12 = load i64, i64* %car11, align 8
  store i64 %12, i64* %val.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.9, %land.lhs.true.6, %if.else
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then.3
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %land.lhs.true, %entry
  %13 = load i64, i64* %val.addr, align 8
  %call14 = call i64 @builtin_lisp_symbol(i32 0)
  %call15 = call i64 @builtin_lisp_symbol(i32 0)
  %call16 = call i64 @Fread_from_string(i64 %13, i64 %call14, i64 %call15)
  store i64 %call16, i64* %expr_and_pos, align 8
  %14 = load i64, i64* %expr_and_pos, align 8
  %call17 = call i64 @Fcdr(i64 %14)
  %shr = ashr i64 %call17, 2
  store i64 %shr, i64* %pos, align 8
  %15 = load i64, i64* %pos, align 8
  %16 = load i64, i64* %val.addr, align 8
  %call18 = call i64 @SCHARS(i64 %16)
  %cmp19 = icmp ne i64 %15, %call18
  br i1 %cmp19, label %if.then.21, label %if.end.38

if.then.21:                                       ; preds = %if.end.13
  %17 = load i64, i64* %val.addr, align 8
  %18 = load i64, i64* %pos, align 8
  %call22 = call i64 @string_char_to_byte(i64 %17, i64 %18)
  store i64 %call22, i64* %pos, align 8
  %19 = load i64, i64* %pos, align 8
  store i64 %19, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.21
  %20 = load i64, i64* %i, align 8
  %21 = load i64, i64* %val.addr, align 8
  %call23 = call i64 @SBYTES(i64 %21)
  %cmp24 = icmp slt i64 %20, %call23
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i64, i64* %val.addr, align 8
  %23 = load i64, i64* %i, align 8
  %call26 = call zeroext i8 @SREF(i64 %22, i64 %23)
  %conv27 = zext i8 %call26 to i32
  store i32 %conv27, i32* %c, align 4
  %24 = load i32, i32* %c, align 4
  %cmp28 = icmp ne i32 %24, 32
  br i1 %cmp28, label %land.lhs.true.30, label %if.end.37

land.lhs.true.30:                                 ; preds = %for.body
  %25 = load i32, i32* %c, align 4
  %cmp31 = icmp ne i32 %25, 9
  br i1 %cmp31, label %land.lhs.true.33, label %if.end.37

land.lhs.true.33:                                 ; preds = %land.lhs.true.30
  %26 = load i32, i32* %c, align 4
  %cmp34 = icmp ne i32 %26, 10
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %land.lhs.true.33
  call void (i8*, ...) @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.54, i32 0, i32 0)) #5
  unreachable

if.end.37:                                        ; preds = %land.lhs.true.33, %land.lhs.true.30, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.37
  %27 = load i64, i64* %i, align 8
  %inc = add nsw i64 %27, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.38

if.end.38:                                        ; preds = %for.end, %if.end.13
  %28 = load i64, i64* %expr_and_pos, align 8
  %call39 = call i64 @Fcar(i64 %28)
  store i64 %call39, i64* %val.addr, align 8
  %29 = load i64, i64* %val.addr, align 8
  ret i64 %29
}

declare zeroext i1 @NATNUMP(i64) #1

declare i32 @emacs_get_tty(i32, %struct.emacs_tty*) #1

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #3

declare i32 @set_binary_mode(i32, i32) #1

declare void @suppress_echo_on_tty(i32) #1

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

declare i8* @SDATA(i64) #1

declare i32 @fflush(%struct._IO_FILE*) #1

declare noalias i8* @xmalloc(i64) #1

declare i32 @getchar() #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i8* @xpalloc(i8*, i64*, i64, i64, i64) #1

declare i32 @emacs_set_tty(i32, %struct.emacs_tty*, i1 zeroext) #1

declare i64 @make_string(i8*, i64) #1

declare void @xfree(i8*) #1

declare zeroext i1 @FRAMEP(i64) #1

; Function Attrs: noreturn
declare void @emacs_abort() #2

declare i64 @Fset_frame_selected_window(i64, i64, i64) #1

declare i64 @Fframe_first_window(i64) #1

declare i64 @Fcdr(i64) #1

declare zeroext i1 @resize_mini_window(%struct.window*, i1 zeroext) #1

declare void @safe_run_hooks(i64) #1

declare i64 @Fread_from_string(i64, i64, i64) #1

declare i64 @string_char_to_byte(i64, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
