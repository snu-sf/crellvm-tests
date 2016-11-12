; ModuleID = './src/fileio.bc'
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
%union.specbinding = type { %struct.anon.3 }
%struct.anon.3 = type { i8, i64, i64, i64 }
%struct.allocator = type { i8* (i64)*, i8* (i8*, i64)*, void (i8*)*, void (i64)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.Lisp_Objfwd = type { i32, i64* }
%struct.Lisp_Boolfwd = type { i32, i8* }
%struct.Lisp_Subr = type { %struct.vectorlike_header, %union.anon.17, i16, i16, i8*, i8*, i8* }
%union.anon.17 = type { i64 ()* }
%struct.Lisp_Cons = type { i64, %union.anon }
%union.anon = type { i64 }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%union.Aligned_String = type { %struct.Lisp_String }
%struct.Lisp_String = type { i64, i64, %struct.interval*, i8* }
%struct.coding_system = type { i64, i32, i32, %union.anon.5, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8*, i64, i64, i64, i64, i8*, i32*, i32, i32, [64 x i8], i32, i32, i1 (%struct.coding_system*, %struct.coding_detection_info*)*, void (%struct.coding_system*)*, i1 (%struct.coding_system*)* }
%union.anon.5 = type { %struct.ccl_spec*, [328 x i8] }
%struct.ccl_spec = type opaque
%struct.coding_detection_info = type { i32, i32, i32 }
%struct.Lisp_Hash_Table = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.hash_table_test, %struct.Lisp_Hash_Table* }
%struct.hash_table_test = type { i64, i64, i64, i1 (%struct.hash_table_test*, i64, i64)*, i64 (%struct.hash_table_test*, i64)* }
%struct.window = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.glyph_matrix*, %struct.glyph_matrix*, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, %struct.cursor_pos, %struct.cursor_pos, %struct.cursor_pos, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i64 }
%struct.glyph_matrix = type { %struct.glyph_pool*, %struct.glyph_row*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.buffer*, i64, i64 }
%struct.glyph_pool = type { %struct.glyph*, i64, i32, i32 }
%struct.glyph = type { i64, i64, i16, i16, i16, i16, i24, i24, %union.anon.6, %union.anon.9 }
%union.anon.6 = type { %struct.glyph_slice }
%struct.glyph_slice = type { i64 }
%union.anon.9 = type { i32 }
%struct.glyph_row = type <{ [4 x %struct.glyph*], [4 x i16], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.display_pos, %struct.display_pos, %struct.text_pos, %struct.text_pos, i32, [11 x i8], i8, i24, i24, i32, i40, i32, %struct.XRectangle* }>
%struct.display_pos = type { %struct.text_pos, i64, %struct.text_pos, i32 }
%struct.text_pos = type { i64, i64 }
%struct.XRectangle = type { i16, i16, i16, i16 }
%struct.cursor_pos = type { i32, i32, i32, i32 }
%struct.auto_save_unwind = type { %struct._IO_FILE*, i8 }
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
%struct.terminal = type { %struct.vectorlike_header, i64, i64, i64, i64, %struct.terminal*, i32, i32, i32, i8*, %struct.kboard*, %struct.image_cache*, %union.display_info, %struct.coding_system*, %struct.coding_system*, %struct.redisplay_interface*, void (%struct.frame*, i32, i32)*, void (%struct.frame*, i32, i32)*, void (%struct.frame*)*, void (%struct.frame*)*, void (%struct.frame*, i32)*, void (%struct.frame*, i32, i32)*, void (%struct.frame*, %struct.glyph*, i32)*, void (%struct.frame*, %struct.glyph*, i32)*, void (%struct.frame*, i32)*, void (%struct.frame*)*, void (%struct.frame*, i1)*, void (%struct.terminal*)*, void (%struct.terminal*)*, void (%struct.frame*)*, void (%struct.frame*)*, void (%struct.frame*, i32)*, void (%struct.frame**, i32, i64*, i32*, i64*, i64*, i64*)*, void (%struct.frame*)*, void (%struct.frame*, i1)*, void (%struct.frame*)*, i64 (%struct.frame*, i32, i32, i32, i64, i8**)*, i64 (%struct.frame*, i64, i64)*, void (%struct.window*, i32, i32, i32)*, void (%struct.window*, i32, i32, i32)*, void (%struct.frame*)*, void (%struct.window*)*, void (%struct.frame*)*, i32 (%struct.terminal*, %struct.input_event*)*, void (%struct.frame*)*, void (%struct.frame*)*, void (%struct.terminal*)* }
%struct.kboard = type opaque
%struct.image_cache = type { %struct.image**, %struct.image**, i64, i64, i64 }
%union.display_info = type { %struct.tty_display_info* }
%struct.tty_display_info = type opaque
%struct.redisplay_interface = type { void (%struct.frame*, i64, i64)**, void (%struct.it*)*, void (%struct.window*, %struct.glyph_row*, %struct.glyph*, i32, i32)*, void (%struct.window*, %struct.glyph_row*, %struct.glyph*, i32, i32)*, void (%struct.window*, %struct.glyph_row*, i32, i32)*, void (%struct.window*, %struct.run*)*, void (%struct.window*, %struct.glyph_row*)*, void (%struct.window*)*, void (%struct.window*, i1, i1)*, void (%struct.frame*)*, void (%struct.window*)*, void (%struct.glyph*, %struct.frame*, i32*, i32*)*, void (%struct.window*, %struct.glyph_row*, i32, i32)*, void (%struct.window*, %struct.glyph_row*, %struct.draw_fringe_bitmap_params*)*, void (i32, i16*, i32, i32)*, void (i32)*, void (%struct.glyph_string*)*, void (%struct.glyph_string*)*, void (%struct.frame*, i64)*, void (%struct.frame*, i32, i32, i32, i32)*, void (%struct.window*, %struct.glyph_row*, i32, i32, i32, i32, i1, i1)*, void (%struct.window*, i32, i32, i32)*, void (%struct.window*, i32, i32, i32, i32)*, void (%struct.frame*, i32, i32, i32, i32, i32)*, void (%struct.frame*)*, void (%struct.frame*)* }
%struct.it = type { i64, %struct.window*, %struct.frame*, i32, i64, i64, i64, i64, i8*, i64, i64, i8, %struct.Lisp_Char_Table*, i64*, i64*, i32, i32, i32, [16 x i64], %struct.display_pos, %struct.display_pos, i64, i64, [16 x i64], [16 x i64], i64, i64, [5 x %struct.iterator_stack_entry], i32, i64, i32, i32, i16, i32, i32, i32, i32, %struct.composition_it, i32, i32, i64, %struct.xwidget*, %struct.it_slice, i64, i16, i16, i64, i64, %struct.text_pos, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, %struct.glyph_row*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.text_pos, i32, i32, i32, i32, i56, i24, %struct.bidi_it, i32 }
%struct.Lisp_Char_Table = type { %struct.vectorlike_header, i64, i64, i64, i64, [64 x i64], [0 x i64] }
%struct.iterator_stack_entry = type { i64, i32, i64, i64, i64, i64, %struct.composition_it, i32, %union.anon.13, %struct.text_pos, %struct.display_pos, i64, i32, i32, i32, i8, i32, i16, i64, i64 }
%union.anon.13 = type { %struct.anon.14 }
%struct.anon.14 = type { i64, %struct.it_slice, i64 }
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

@globals = external global %struct.emacs_globals, align 8
@pending_signals = external global i8, align 1
@.str = private unnamed_addr constant [45 x i8] c"Invalid handler in `file-name-handler-alist'\00", align 1
@make_temp_name_tbl = internal constant [64 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_", align 16
@.str.1 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@make_temp_name_count_initialized_p = internal global i32 0, align 4
@make_temp_name_count = internal global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Cannot create temporary name for prefix\00", align 1
@current_buffer = external global %struct.buffer*, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@immediate_quit = external global i8, align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Opening input file\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"Input file status\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"Non-regular file\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"copy to it\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"Opening output file\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"Output file status\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"Input and output files are the same\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"Read error\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"Write error\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"Truncating output file\00", align 1
@realmask = internal global i32 0, align 4
@.str.16 = private unnamed_addr constant [25 x i8] c"Copying permissions from\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"Copying permissions to\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"Cannot set file date\00", align 1
@specpdl = external global %union.specbinding*, align 8
@specpdl_ptr = external global %union.specbinding*, align 8
@auto_saving_dir_umask = internal global i32 0, align 4
@.str.19 = private unnamed_addr constant [19 x i8] c"Creating directory\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"Removing directory\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"Removing old name: is a directory\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"Removing old name\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"rename to it\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"Renaming\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"make it a new name\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"Adding new name\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"make it a link\00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"Symbolic links are not supported\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"Making symbolic link\00", align 1
@emacs_readlinkat.emacs_norealloc_allocator = internal constant %struct.allocator { i8* (i64)* @xmalloc, i8* (i8*, i64)* null, void (i8*)* @xfree, void (i64)* @memory_full }, align 8
@.str.30 = private unnamed_addr constant [3 x i8] c"/:\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"/.\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"Doing chmod\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"Setting file times\00", align 1
@.str.34 = private unnamed_addr constant [46 x i8] c"Cannot do file visiting in an indirect buffer\00", align 1
@Vcoding_system_hash_table = external global i64, align 8
@.str.35 = private unnamed_addr constant [19 x i8] c"not a regular file\00", align 1
@.str.36 = private unnamed_addr constant [42 x i8] c"Attempt to visit less than an entire file\00", align 1
@.str.37 = private unnamed_addr constant [46 x i8] c"Cannot do file visiting in a non-empty buffer\00", align 1
@.str.38 = private unnamed_addr constant [22 x i8] c"Setting file position\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c" *code-converting-work*\00", align 1
@selected_window = external global i64, align 8
@.str.40 = private unnamed_addr constant [17 x i8] c"buffer-file-name\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"inserted-chars\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"overwrite\00", align 1
@Vwrite_region_annotation_buffers = internal global i64 0, align 8
@auto_saving = internal global i8 0, align 1
@auto_save_mode_bits = internal global i32 0, align 4
@.str.43 = private unnamed_addr constant [12 x i8] c"Lseek error\00", align 1
@valid_timestamp_file_system = internal global i8 0, align 1
@timestamp_file_system = internal global i64 0, align 8
@update_mode_lines = external global i32, align 4
@noninteractive = external global i8, align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"Updated %s\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"Added to %s\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"Wrote %s\00", align 1
@specpdl_size = external global i64, align 8
@minibuf_level = external global i64, align 8
@.str.47 = private unnamed_addr constant [15 x i8] c"auto-save-hook\00", align 1
@Vrun_hooks = external global i64, align 8
@.str.48 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@auto_save_error_occurred = internal global i8 0, align 1
@Vbuffer_alist = external global i64, align 8
@.str.49 = private unnamed_addr constant [83 x i8] c"Buffer %s has shrunk a lot; auto save disabled in that buffer until next real save\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"Auto-saving...\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"Auto-saving...done\00", align 1
@selected_frame = external global i64, align 8
@stdin = external global %struct._IO_FILE*, align 8
@stdout = external global %struct._IO_FILE*, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str.52 = private unnamed_addr constant [19 x i8] c"unsupported stream\00", align 1
@syms_of_fileio.o_fwd = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.53 = private unnamed_addr constant [24 x i8] c"file-name-coding-system\00", align 1
@syms_of_fileio.o_fwd.54 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.55 = private unnamed_addr constant [32 x i8] c"default-file-name-coding-system\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"File error\00", align 1
@.str.57 = private unnamed_addr constant [20 x i8] c"File already exists\00", align 1
@.str.58 = private unnamed_addr constant [24 x i8] c"File notification error\00", align 1
@syms_of_fileio.o_fwd.59 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.60 = private unnamed_addr constant [24 x i8] c"file-name-handler-alist\00", align 1
@syms_of_fileio.o_fwd.61 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.62 = private unnamed_addr constant [25 x i8] c"set-auto-coding-function\00", align 1
@syms_of_fileio.o_fwd.63 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.64 = private unnamed_addr constant [28 x i8] c"after-insert-file-functions\00", align 1
@syms_of_fileio.o_fwd.65 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.66 = private unnamed_addr constant [32 x i8] c"write-region-annotate-functions\00", align 1
@syms_of_fileio.o_fwd.67 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.68 = private unnamed_addr constant [38 x i8] c"write-region-post-annotation-function\00", align 1
@syms_of_fileio.o_fwd.69 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.70 = private unnamed_addr constant [32 x i8] c"write-region-annotations-so-far\00", align 1
@syms_of_fileio.o_fwd.71 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.72 = private unnamed_addr constant [27 x i8] c"inhibit-file-name-handlers\00", align 1
@syms_of_fileio.o_fwd.73 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.74 = private unnamed_addr constant [28 x i8] c"inhibit-file-name-operation\00", align 1
@syms_of_fileio.o_fwd.75 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.76 = private unnamed_addr constant [25 x i8] c"auto-save-list-file-name\00", align 1
@syms_of_fileio.o_fwd.77 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.78 = private unnamed_addr constant [28 x i8] c"auto-save-visited-file-name\00", align 1
@syms_of_fileio.o_fwd.79 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.80 = private unnamed_addr constant [32 x i8] c"auto-save-include-big-deletions\00", align 1
@syms_of_fileio.b_fwd = internal global %struct.Lisp_Boolfwd zeroinitializer, align 8
@.str.81 = private unnamed_addr constant [27 x i8] c"write-region-inhibit-fsync\00", align 1
@syms_of_fileio.b_fwd.82 = internal global %struct.Lisp_Boolfwd zeroinitializer, align 8
@.str.83 = private unnamed_addr constant [26 x i8] c"delete-by-moving-to-trash\00", align 1
@Sdefault_file_modes = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon.17 { i64 ()* @Fdefault_file_modes }, i16 0, i16 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.129, i32 0, i32 0), i8* null, i8* null }, align 8
@Svisited_file_modtime = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon.17 { i64 ()* @Fvisited_file_modtime }, i16 0, i16 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.136, i32 0, i32 0), i8* null, i8* null }, align 8
@Sset_buffer_auto_saved = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon.17 { i64 ()* @Fset_buffer_auto_saved }, i16 0, i16 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.139, i32 0, i32 0), i8* null, i8* null }, align 8
@Sclear_buffer_auto_save_failure = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon.17 { i64 ()* @Fclear_buffer_auto_save_failure }, i16 0, i16 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.140, i32 0, i32 0), i8* null, i8* null }, align 8
@Srecent_auto_save_p = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon.17 { i64 ()* @Frecent_auto_save_p }, i16 0, i16 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.141, i32 0, i32 0), i8* null, i8* null }, align 8
@Snext_read_file_uses_dialog_p = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon.17 { i64 ()* @Fnext_read_file_uses_dialog_p }, i16 0, i16 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.142, i32 0, i32 0), i8* null, i8* null }, align 8
@Sunix_sync = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon.17 { i64 ()* @Funix_sync }, i16 0, i16 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), i8* null }, align 8
@.str.84 = private unnamed_addr constant [20 x i8] c"File is a directory\00", align 1
@.str.85 = private unnamed_addr constant [36 x i8] c"File %s already exists; %s anyway? \00", align 1
@.str.86 = private unnamed_addr constant [9 x i8] c"y-or-n-p\00", align 1
@.str.87 = private unnamed_addr constant [12 x i8] c"file-offset\00", align 1
@buffer_defaults = external global %struct.buffer, align 8
@.str.88 = private unnamed_addr constant [19 x i8] c"Auto-saving %s: %s\00", align 1
@.str.89 = private unnamed_addr constant [23 x i8] c"find-file-name-handler\00", align 1
@Sfind_file_name_handler = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Ffind_file_name_handler }, i16 2, i16 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.89, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.90 = private unnamed_addr constant [20 x i8] c"file-name-directory\00", align 1
@Sfile_name_directory = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Ffile_name_directory }, i16 1, i16 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.90, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.91 = private unnamed_addr constant [23 x i8] c"file-name-nondirectory\00", align 1
@Sfile_name_nondirectory = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Ffile_name_nondirectory }, i16 1, i16 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.91, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.92 = private unnamed_addr constant [30 x i8] c"unhandled-file-name-directory\00", align 1
@Sunhandled_file_name_directory = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Funhandled_file_name_directory }, i16 1, i16 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.92, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.93 = private unnamed_addr constant [23 x i8] c"file-name-as-directory\00", align 1
@Sfile_name_as_directory = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Ffile_name_as_directory }, i16 1, i16 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.93, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.94 = private unnamed_addr constant [20 x i8] c"directory-file-name\00", align 1
@Sdirectory_file_name = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fdirectory_file_name }, i16 1, i16 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.94, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.95 = private unnamed_addr constant [15 x i8] c"make-temp-name\00", align 1
@Smake_temp_name = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fmake_temp_name }, i16 1, i16 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.95, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.96 = private unnamed_addr constant [17 x i8] c"expand-file-name\00", align 1
@Sexpand_file_name = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fexpand_file_name }, i16 1, i16 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.96, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.97 = private unnamed_addr constant [24 x i8] c"substitute-in-file-name\00", align 1
@Ssubstitute_in_file_name = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fsubstitute_in_file_name }, i16 1, i16 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.97, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.98 = private unnamed_addr constant [10 x i8] c"copy-file\00", align 1
@.str.99 = private unnamed_addr constant [36 x i8] c"fCopy file: \0AGCopy %s to file: \0Ap\0AP\00", align 1
@Scopy_file = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64, i64, i64)* @Fcopy_file }, i16 2, i16 6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.99, i32 0, i32 0), i8* null }, align 8
@.str.100 = private unnamed_addr constant [24 x i8] c"make-directory-internal\00", align 1
@Smake_directory_internal = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fmake_directory_internal }, i16 1, i16 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.100, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.101 = private unnamed_addr constant [26 x i8] c"delete-directory-internal\00", align 1
@Sdelete_directory_internal = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fdelete_directory_internal }, i16 1, i16 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.101, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.102 = private unnamed_addr constant [12 x i8] c"delete-file\00", align 1
@.str.103 = private unnamed_addr constant [277 x i8] c"(list (read-file-name                 (if (and delete-by-moving-to-trash (null current-prefix-arg))                     \22Move file to trash: \22 \22Delete file: \22)                 nil default-directory (confirm-nonexistent-file-or-buffer))               (null current-prefix-arg))\00", align 1
@Sdelete_file = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fdelete_file }, i16 1, i16 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([277 x i8], [277 x i8]* @.str.103, i32 0, i32 0), i8* null }, align 8
@.str.104 = private unnamed_addr constant [12 x i8] c"rename-file\00", align 1
@.str.105 = private unnamed_addr constant [38 x i8] c"fRename file: \0AGRename %s to file: \0Ap\00", align 1
@Srename_file = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Frename_file }, i16 2, i16 3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.105, i32 0, i32 0), i8* null }, align 8
@.str.106 = private unnamed_addr constant [17 x i8] c"add-name-to-file\00", align 1
@.str.107 = private unnamed_addr constant [43 x i8] c"fAdd name to file: \0AGName to add to %s: \0Ap\00", align 1
@Sadd_name_to_file = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Fadd_name_to_file }, i16 2, i16 3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.107, i32 0, i32 0), i8* null }, align 8
@.str.108 = private unnamed_addr constant [19 x i8] c"make-symbolic-link\00", align 1
@.str.109 = private unnamed_addr constant [65 x i8] c"FMake symbolic link to file: \0AGMake symbolic link to file %s: \0Ap\00", align 1
@Smake_symbolic_link = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Fmake_symbolic_link }, i16 2, i16 3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.109, i32 0, i32 0), i8* null }, align 8
@.str.110 = private unnamed_addr constant [21 x i8] c"file-name-absolute-p\00", align 1
@Sfile_name_absolute_p = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Ffile_name_absolute_p }, i16 1, i16 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.110, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.111 = private unnamed_addr constant [14 x i8] c"file-exists-p\00", align 1
@Sfile_exists_p = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Ffile_exists_p }, i16 1, i16 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.111, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.112 = private unnamed_addr constant [18 x i8] c"file-executable-p\00", align 1
@Sfile_executable_p = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Ffile_executable_p }, i16 1, i16 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.112, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.113 = private unnamed_addr constant [16 x i8] c"file-readable-p\00", align 1
@Sfile_readable_p = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Ffile_readable_p }, i16 1, i16 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.113, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.114 = private unnamed_addr constant [16 x i8] c"file-writable-p\00", align 1
@Sfile_writable_p = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Ffile_writable_p }, i16 1, i16 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.114, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.115 = private unnamed_addr constant [12 x i8] c"access-file\00", align 1
@Saccess_file = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Faccess_file }, i16 2, i16 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.115, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.116 = private unnamed_addr constant [15 x i8] c"file-symlink-p\00", align 1
@Sfile_symlink_p = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Ffile_symlink_p }, i16 1, i16 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.116, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.117 = private unnamed_addr constant [17 x i8] c"file-directory-p\00", align 1
@Sfile_directory_p = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Ffile_directory_p }, i16 1, i16 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.117, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.118 = private unnamed_addr constant [28 x i8] c"file-accessible-directory-p\00", align 1
@Sfile_accessible_directory_p = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Ffile_accessible_directory_p }, i16 1, i16 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.118, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.119 = private unnamed_addr constant [15 x i8] c"file-regular-p\00", align 1
@Sfile_regular_p = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Ffile_regular_p }, i16 1, i16 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.119, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.120 = private unnamed_addr constant [11 x i8] c"file-modes\00", align 1
@Sfile_modes = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Ffile_modes }, i16 1, i16 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.120, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.121 = private unnamed_addr constant [15 x i8] c"set-file-modes\00", align 1
@.str.122 = private unnamed_addr constant [85 x i8] c"(let ((file (read-file-name \22File: \22)))\09\09\09\09  (list file (read-file-modes nil file)))\00", align 1
@Sset_file_modes = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fset_file_modes }, i16 2, i16 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.122, i32 0, i32 0), i8* null }, align 8
@.str.123 = private unnamed_addr constant [15 x i8] c"set-file-times\00", align 1
@Sset_file_times = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fset_file_times }, i16 1, i16 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.123, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.124 = private unnamed_addr constant [21 x i8] c"file-selinux-context\00", align 1
@Sfile_selinux_context = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Ffile_selinux_context }, i16 1, i16 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.124, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.125 = private unnamed_addr constant [9 x i8] c"file-acl\00", align 1
@Sfile_acl = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Ffile_acl }, i16 1, i16 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.125, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.126 = private unnamed_addr constant [13 x i8] c"set-file-acl\00", align 1
@Sset_file_acl = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fset_file_acl }, i16 2, i16 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.126, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.127 = private unnamed_addr constant [25 x i8] c"set-file-selinux-context\00", align 1
@Sset_file_selinux_context = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fset_file_selinux_context }, i16 2, i16 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.127, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.128 = private unnamed_addr constant [23 x i8] c"set-default-file-modes\00", align 1
@Sset_default_file_modes = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fset_default_file_modes }, i16 1, i16 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.128, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.129 = private unnamed_addr constant [19 x i8] c"default-file-modes\00", align 1
@.str.130 = private unnamed_addr constant [23 x i8] c"file-newer-than-file-p\00", align 1
@Sfile_newer_than_file_p = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Ffile_newer_than_file_p }, i16 2, i16 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.130, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.131 = private unnamed_addr constant [21 x i8] c"insert-file-contents\00", align 1
@Sinsert_file_contents = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64, i64)* @Finsert_file_contents }, i16 1, i16 5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.131, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.132 = private unnamed_addr constant [13 x i8] c"write-region\00", align 1
@.str.133 = private unnamed_addr constant [34 x i8] c"r\0AFWrite region to file: \0Ai\0Ai\0Ai\0Ap\00", align 1
@Swrite_region = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64, i64, i64, i64)* @Fwrite_region }, i16 3, i16 7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.133, i32 0, i32 0), i8* null }, align 8
@.str.134 = private unnamed_addr constant [18 x i8] c"car-less-than-car\00", align 1
@Scar_less_than_car = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fcar_less_than_car }, i16 2, i16 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.134, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.135 = private unnamed_addr constant [28 x i8] c"verify-visited-file-modtime\00", align 1
@Sverify_visited_file_modtime = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fverify_visited_file_modtime }, i16 0, i16 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.135, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.136 = private unnamed_addr constant [21 x i8] c"visited-file-modtime\00", align 1
@.str.137 = private unnamed_addr constant [25 x i8] c"set-visited-file-modtime\00", align 1
@Sset_visited_file_modtime = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fset_visited_file_modtime }, i16 0, i16 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.137, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.138 = private unnamed_addr constant [13 x i8] c"do-auto-save\00", align 1
@Sdo_auto_save = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fdo_auto_save }, i16 0, i16 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), i8* null }, align 8
@.str.139 = private unnamed_addr constant [22 x i8] c"set-buffer-auto-saved\00", align 1
@.str.140 = private unnamed_addr constant [31 x i8] c"clear-buffer-auto-save-failure\00", align 1
@.str.141 = private unnamed_addr constant [19 x i8] c"recent-auto-save-p\00", align 1
@.str.142 = private unnamed_addr constant [29 x i8] c"next-read-file-uses-dialog-p\00", align 1
@.str.143 = private unnamed_addr constant [16 x i8] c"set-binary-mode\00", align 1
@Sset_binary_mode = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fset_binary_mode }, i16 2, i16 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.143, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.144 = private unnamed_addr constant [10 x i8] c"unix-sync\00", align 1

; Function Attrs: noreturn nounwind uwtable
define void @report_file_errno(i8* %string, i64 %name, i32 %errorno) #0 {
entry:
  %string.addr = alloca i8*, align 8
  %name.addr = alloca i64, align 8
  %errorno.addr = alloca i32, align 4
  %data = alloca i64, align 8
  %str = alloca i8*, align 8
  %errstring = alloca i64, align 8
  %errdata = alloca i64, align 8
  store i8* %string, i8** %string.addr, align 8
  store i64 %name, i64* %name.addr, align 8
  store i32 %errorno, i32* %errorno.addr, align 4
  %0 = load i64, i64* %name.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %name.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp2 = icmp eq i64 %1, %call
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %2 = load i64, i64* %name.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %3 = load i64, i64* %name.addr, align 8
  %call4 = call i64 @list1(i64 %3)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %2, %cond.true ], [ %call4, %cond.false ]
  store i64 %cond, i64* %data, align 8
  call void @synchronize_system_messages_locale()
  %4 = load i32, i32* %errorno.addr, align 4
  %call5 = call i8* @strerror(i32 %4) #6
  store i8* %call5, i8** %str, align 8
  %5 = load i8*, i8** %str, align 8
  %call6 = call i64 @build_unibyte_string(i8* %5)
  %6 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 168), align 8
  %call7 = call i64 @code_convert_string_norecord(i64 %call6, i64 %6, i1 zeroext false)
  store i64 %call7, i64* %errstring, align 8
  %7 = load i64, i64* %errstring, align 8
  %8 = load i64, i64* %data, align 8
  %call8 = call i64 @Fcons(i64 %7, i64 %8)
  store i64 %call8, i64* %errdata, align 8
  %9 = load i32, i32* %errorno.addr, align 4
  %cmp9 = icmp eq i32 %9, 17
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %call11 = call i64 @builtin_lisp_symbol(i32 406)
  %10 = load i64, i64* %errdata, align 8
  call void @xsignal(i64 %call11, i64 %10) #8
  unreachable

if.else:                                          ; preds = %cond.end
  %call12 = call i64 @builtin_lisp_symbol(i32 411)
  %11 = load i8*, i8** %string.addr, align 8
  %call13 = call i64 @build_string(i8* %11)
  %12 = load i64, i64* %errdata, align 8
  %call14 = call i64 @Fcons(i64 %call13, i64 %12)
  call void @xsignal(i64 %call12, i64 %call14) #8
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare i64 @builtin_lisp_symbol(i32) #1

declare i64 @list1(i64) #1

declare void @synchronize_system_messages_locale() #1

; Function Attrs: nounwind
declare i8* @strerror(i32) #2

declare i64 @code_convert_string_norecord(i64, i64, i1 zeroext) #1

declare i64 @build_unibyte_string(i8*) #1

declare i64 @Fcons(i64, i64) #1

; Function Attrs: noreturn
declare void @xsignal(i64, i64) #3

declare i64 @build_string(i8*) #1

; Function Attrs: noreturn nounwind uwtable
define void @report_file_error(i8* %string, i64 %name) #0 {
entry:
  %string.addr = alloca i8*, align 8
  %name.addr = alloca i64, align 8
  store i8* %string, i8** %string.addr, align 8
  store i64 %name, i64* %name.addr, align 8
  %0 = load i8*, i8** %string.addr, align 8
  %1 = load i64, i64* %name.addr, align 8
  %call = call i32* @__errno_location() #9
  %2 = load i32, i32* %call, align 4
  call void @report_file_errno(i8* %0, i64 %1, i32 %2) #8
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

; Function Attrs: noreturn nounwind uwtable
define void @report_file_notify_error(i8* %string, i64 %name) #0 {
entry:
  %string.addr = alloca i8*, align 8
  %name.addr = alloca i64, align 8
  %data = alloca i64, align 8
  %str = alloca i8*, align 8
  %errstring = alloca i64, align 8
  %errdata = alloca i64, align 8
  store i8* %string, i8** %string.addr, align 8
  store i64 %name, i64* %name.addr, align 8
  %0 = load i64, i64* %name.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %name.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp2 = icmp eq i64 %1, %call
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %2 = load i64, i64* %name.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %3 = load i64, i64* %name.addr, align 8
  %call4 = call i64 @list1(i64 %3)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %2, %cond.true ], [ %call4, %cond.false ]
  store i64 %cond, i64* %data, align 8
  call void @synchronize_system_messages_locale()
  %call5 = call i32* @__errno_location() #9
  %4 = load i32, i32* %call5, align 4
  %call6 = call i8* @strerror(i32 %4) #6
  store i8* %call6, i8** %str, align 8
  %5 = load i8*, i8** %str, align 8
  %call7 = call i64 @build_unibyte_string(i8* %5)
  %6 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 168), align 8
  %call8 = call i64 @code_convert_string_norecord(i64 %call7, i64 %6, i1 zeroext false)
  store i64 %call8, i64* %errstring, align 8
  %7 = load i64, i64* %errstring, align 8
  %8 = load i64, i64* %data, align 8
  %call9 = call i64 @Fcons(i64 %7, i64 %8)
  store i64 %call9, i64* %errdata, align 8
  %call10 = call i64 @builtin_lisp_symbol(i32 424)
  %9 = load i8*, i8** %string.addr, align 8
  %call11 = call i64 @build_string(i8* %9)
  %10 = load i64, i64* %errdata, align 8
  %call12 = call i64 @Fcons(i64 %call11, i64 %10)
  call void @xsignal(i64 %call10, i64 %call12) #8
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define void @close_file_unwind(i32 %fd) #5 {
entry:
  %fd.addr = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %call = call i32 @emacs_close(i32 %0)
  ret void
}

declare i32 @emacs_close(i32) #1

; Function Attrs: nounwind uwtable
define void @fclose_unwind(i8* %arg) #5 {
entry:
  %arg.addr = alloca i8*, align 8
  %stream = alloca %struct._IO_FILE*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i8*, i8** %arg.addr, align 8
  %1 = bitcast i8* %0 to %struct._IO_FILE*
  store %struct._IO_FILE* %1, %struct._IO_FILE** %stream, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call = call i32 @fclose(%struct._IO_FILE* %2)
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @restore_point_unwind(i64 %location) #5 {
entry:
  %location.addr = alloca i64, align 8
  store i64 %location, i64* %location.addr, align 8
  %0 = load i64, i64* %location.addr, align 8
  %call = call i64 @Fgoto_char(i64 %0)
  %1 = load i64, i64* %location.addr, align 8
  %call1 = call %struct.Lisp_Marker* @XMARKER(i64 %1)
  call void @unchain_marker(%struct.Lisp_Marker* %call1)
  ret void
}

declare i64 @Fgoto_char(i64) #1

declare void @unchain_marker(%struct.Lisp_Marker*) #1

declare %struct.Lisp_Marker* @XMARKER(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Ffind_file_name_handler(i64 %filename, i64 %operation) #5 {
entry:
  %filename.addr = alloca i64, align 8
  %operation.addr = alloca i64, align 8
  %chain = alloca i64, align 8
  %inhibited_handlers = alloca i64, align 8
  %result = alloca i64, align 8
  %pos = alloca i64, align 8
  %elt = alloca i64, align 8
  %string = alloca i64, align 8
  %match_pos = alloca i64, align 8
  %handler = alloca i64, align 8
  %operations = alloca i64, align 8
  %tem = alloca i64, align 8
  store i64 %filename, i64* %filename.addr, align 8
  store i64 %operation, i64* %operation.addr, align 8
  store i64 -1, i64* %pos, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %result, align 8
  %0 = load i64, i64* %filename.addr, align 8
  call void @CHECK_STRING(i64 %0)
  %1 = load i64, i64* %operation.addr, align 8
  %2 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 136), align 8
  %cmp = icmp eq i64 %1, %2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 135), align 8
  store i64 %3, i64* %inhibited_handlers, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* %inhibited_handlers, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 95), align 8
  store i64 %4, i64* %chain, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i64, i64* %chain, align 8
  %and = and i64 %5, 7
  %conv = trunc i64 %and to i32
  %cmp2 = icmp eq i32 %conv, 3
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i64, i64* %chain, align 8
  %sub = sub nsw i64 %6, 3
  %7 = inttoptr i64 %sub to i8*
  %8 = bitcast i8* %7 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %8, i32 0, i32 0
  %9 = load i64, i64* %car, align 8
  store i64 %9, i64* %elt, align 8
  %10 = load i64, i64* %elt, align 8
  %and4 = and i64 %10, 7
  %conv5 = trunc i64 %and4 to i32
  %cmp6 = icmp eq i32 %conv5, 3
  br i1 %cmp6, label %if.then.8, label %if.end.45

if.then.8:                                        ; preds = %for.body
  %11 = load i64, i64* %elt, align 8
  %sub9 = sub nsw i64 %11, 3
  %12 = inttoptr i64 %sub9 to i8*
  %13 = bitcast i8* %12 to %struct.Lisp_Cons*
  %car10 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %13, i32 0, i32 0
  %14 = load i64, i64* %car10, align 8
  store i64 %14, i64* %string, align 8
  %15 = load i64, i64* %elt, align 8
  %sub11 = sub nsw i64 %15, 3
  %16 = inttoptr i64 %sub11 to i8*
  %17 = bitcast i8* %16 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %17, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %18 = load i64, i64* %cdr, align 8
  store i64 %18, i64* %handler, align 8
  %call12 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call12, i64* %operations, align 8
  %19 = load i64, i64* %handler, align 8
  %and13 = and i64 %19, 7
  %conv14 = trunc i64 %and13 to i32
  %cmp15 = icmp eq i32 %conv14, 0
  br i1 %cmp15, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %if.then.8
  %20 = load i64, i64* %handler, align 8
  %call18 = call i64 @builtin_lisp_symbol(i32 722)
  %call19 = call i64 @Fget(i64 %20, i64 %call18)
  store i64 %call19, i64* %operations, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %if.then.8
  %21 = load i64, i64* %string, align 8
  %call21 = call zeroext i1 @STRINGP(i64 %21)
  br i1 %call21, label %land.lhs.true, label %if.end.44

land.lhs.true:                                    ; preds = %if.end.20
  %22 = load i64, i64* %string, align 8
  %23 = load i64, i64* %filename.addr, align 8
  %call23 = call i64 @fast_string_match(i64 %22, i64 %23)
  store i64 %call23, i64* %match_pos, align 8
  %24 = load i64, i64* %pos, align 8
  %cmp24 = icmp sgt i64 %call23, %24
  br i1 %cmp24, label %land.lhs.true.26, label %if.end.44

land.lhs.true.26:                                 ; preds = %land.lhs.true
  %25 = load i64, i64* %operations, align 8
  %call27 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp28 = icmp eq i64 %25, %call27
  br i1 %cmp28, label %if.then.34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.26
  %26 = load i64, i64* %operation.addr, align 8
  %27 = load i64, i64* %operations, align 8
  %call30 = call i64 @Fmemq(i64 %26, i64 %27)
  %call31 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp32 = icmp eq i64 %call30, %call31
  br i1 %cmp32, label %if.end.44, label %if.then.34

if.then.34:                                       ; preds = %lor.lhs.false, %land.lhs.true.26
  %28 = load i64, i64* %elt, align 8
  %sub35 = sub nsw i64 %28, 3
  %29 = inttoptr i64 %sub35 to i8*
  %30 = bitcast i8* %29 to %struct.Lisp_Cons*
  %u36 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %30, i32 0, i32 1
  %cdr37 = bitcast %union.anon* %u36 to i64*
  %31 = load i64, i64* %cdr37, align 8
  store i64 %31, i64* %handler, align 8
  %32 = load i64, i64* %handler, align 8
  %33 = load i64, i64* %inhibited_handlers, align 8
  %call38 = call i64 @Fmemq(i64 %32, i64 %33)
  store i64 %call38, i64* %tem, align 8
  %34 = load i64, i64* %tem, align 8
  %call39 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp40 = icmp eq i64 %34, %call39
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.then.34
  %35 = load i64, i64* %handler, align 8
  store i64 %35, i64* %result, align 8
  %36 = load i64, i64* %match_pos, align 8
  store i64 %36, i64* %pos, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %if.then.34
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %lor.lhs.false, %land.lhs.true, %if.end.20
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %for.body
  br label %do.body

do.body:                                          ; preds = %if.end.45
  %37 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call46 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp47 = icmp eq i64 %37, %call46
  br i1 %cmp47, label %if.else.54, label %land.lhs.true.49

land.lhs.true.49:                                 ; preds = %do.body
  %38 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call50 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp51 = icmp eq i64 %38, %call50
  br i1 %cmp51, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %land.lhs.true.49
  call void @process_quit_flag()
  br label %if.end.57

if.else.54:                                       ; preds = %land.lhs.true.49, %do.body
  %39 = load volatile i8, i8* @pending_signals, align 1
  %tobool = trunc i8 %39 to i1
  br i1 %tobool, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.else.54
  call void @process_pending_signals()
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %if.else.54
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.then.53
  br label %do.end

do.end:                                           ; preds = %if.end.57
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %40 = load i64, i64* %chain, align 8
  %sub58 = sub nsw i64 %40, 3
  %41 = inttoptr i64 %sub58 to i8*
  %42 = bitcast i8* %41 to %struct.Lisp_Cons*
  %u59 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %42, i32 0, i32 1
  %cdr60 = bitcast %union.anon* %u59 to i64*
  %43 = load i64, i64* %cdr60, align 8
  store i64 %43, i64* %chain, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %44 = load i64, i64* %result, align 8
  ret i64 %44
}

declare void @CHECK_STRING(i64) #1

declare i64 @Fget(i64, i64) #1

declare zeroext i1 @STRINGP(i64) #1

declare i64 @fast_string_match(i64, i64) #1

declare i64 @Fmemq(i64, i64) #1

declare void @process_quit_flag() #1

declare void @process_pending_signals() #1

; Function Attrs: nounwind uwtable
define i64 @Ffile_name_directory(i64 %filename) #5 {
entry:
  %retval = alloca i64, align 8
  %filename.addr = alloca i64, align 8
  %handler = alloca i64, align 8
  %handled_name = alloca i64, align 8
  %beg = alloca i8*, align 8
  %p = alloca i8*, align 8
  store i64 %filename, i64* %filename.addr, align 8
  %0 = load i64, i64* %filename.addr, align 8
  call void @CHECK_STRING(i64 %0)
  %1 = load i64, i64* %filename.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 418)
  %call1 = call i64 @Ffind_file_name_handler(i64 %1, i64 %call)
  store i64 %call1, i64* %handler, align 8
  %2 = load i64, i64* %handler, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %2, %call2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %handler, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 418)
  %4 = load i64, i64* %filename.addr, align 8
  %call4 = call i64 @call2(i64 %3, i64 %call3, i64 %4)
  store i64 %call4, i64* %handled_name, align 8
  %5 = load i64, i64* %handled_name, align 8
  %call5 = call zeroext i1 @STRINGP(i64 %5)
  br i1 %call5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %6 = load i64, i64* %handled_name, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %6, %cond.true ], [ %call6, %cond.false ]
  store i64 %cond, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i64, i64* %filename.addr, align 8
  %call7 = call i8* @SSDATA(i64 %7)
  store i8* %call7, i8** %beg, align 8
  %8 = load i8*, i8** %beg, align 8
  %9 = load i64, i64* %filename.addr, align 8
  %call8 = call i64 @SBYTES(i64 %9)
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %call8
  store i8* %add.ptr, i8** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %10 = load i8*, i8** %p, align 8
  %11 = load i8*, i8** %beg, align 8
  %cmp9 = icmp ne i8* %10, %11
  br i1 %cmp9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %12 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 -1
  %13 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %13 to i32
  %cmp10 = icmp eq i32 %conv, 47
  %lnot = xor i1 %cmp10, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %14 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %14, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %15 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 -1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %16 = load i8*, i8** %p, align 8
  %17 = load i8*, i8** %beg, align 8
  %cmp12 = icmp eq i8* %16, %17
  br i1 %cmp12, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %while.end
  %call15 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call15, i64* %retval
  br label %return

if.end.16:                                        ; preds = %while.end
  %18 = load i8*, i8** %beg, align 8
  %19 = load i8*, i8** %p, align 8
  %20 = load i8*, i8** %beg, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %19 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %20 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %21 = load i64, i64* %filename.addr, align 8
  %call17 = call zeroext i1 @STRING_MULTIBYTE(i64 %21)
  %call18 = call i64 @make_specified_string(i8* %18, i64 -1, i64 %sub.ptr.sub, i1 zeroext %call17)
  store i64 %call18, i64* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.14, %cond.end
  %22 = load i64, i64* %retval
  ret i64 %22
}

declare i64 @call2(i64, i64, i64) #1

declare i8* @SSDATA(i64) #1

declare i64 @SBYTES(i64) #1

declare i64 @make_specified_string(i8*, i64, i64, i1 zeroext) #1

declare zeroext i1 @STRING_MULTIBYTE(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Ffile_name_nondirectory(i64 %filename) #5 {
entry:
  %retval = alloca i64, align 8
  %filename.addr = alloca i64, align 8
  %beg = alloca i8*, align 8
  %p = alloca i8*, align 8
  %end = alloca i8*, align 8
  %handler = alloca i64, align 8
  %handled_name = alloca i64, align 8
  store i64 %filename, i64* %filename.addr, align 8
  %0 = load i64, i64* %filename.addr, align 8
  call void @CHECK_STRING(i64 %0)
  %1 = load i64, i64* %filename.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 421)
  %call1 = call i64 @Ffind_file_name_handler(i64 %1, i64 %call)
  store i64 %call1, i64* %handler, align 8
  %2 = load i64, i64* %handler, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %2, %call2
  br i1 %cmp, label %if.end.7, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %handler, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 421)
  %4 = load i64, i64* %filename.addr, align 8
  %call4 = call i64 @call2(i64 %3, i64 %call3, i64 %4)
  store i64 %call4, i64* %handled_name, align 8
  %5 = load i64, i64* %handled_name, align 8
  %call5 = call zeroext i1 @STRINGP(i64 %5)
  br i1 %call5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %6 = load i64, i64* %handled_name, align 8
  store i64 %6, i64* %retval
  br label %return

if.end:                                           ; preds = %if.then
  call void (i8*, ...) @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i32 0, i32 0)) #8
  unreachable

if.end.7:                                         ; preds = %entry
  %7 = load i64, i64* %filename.addr, align 8
  %call8 = call i8* @SSDATA(i64 %7)
  store i8* %call8, i8** %beg, align 8
  %8 = load i8*, i8** %beg, align 8
  %9 = load i64, i64* %filename.addr, align 8
  %call9 = call i64 @SBYTES(i64 %9)
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %call9
  store i8* %add.ptr, i8** %p, align 8
  store i8* %add.ptr, i8** %end, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.7
  %10 = load i8*, i8** %p, align 8
  %11 = load i8*, i8** %beg, align 8
  %cmp10 = icmp ne i8* %10, %11
  br i1 %cmp10, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %12 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 -1
  %13 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %13 to i32
  %cmp11 = icmp eq i32 %conv, 47
  %lnot = xor i1 %cmp11, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %14 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %14, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %15 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 -1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %16 = load i8*, i8** %p, align 8
  %17 = load i8*, i8** %end, align 8
  %18 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %17 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %18 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %19 = load i64, i64* %filename.addr, align 8
  %call13 = call zeroext i1 @STRING_MULTIBYTE(i64 %19)
  %call14 = call i64 @make_specified_string(i8* %16, i64 -1, i64 %sub.ptr.sub, i1 zeroext %call13)
  store i64 %call14, i64* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.6
  %20 = load i64, i64* %retval
  ret i64 %20
}

; Function Attrs: noreturn
declare void @error(i8*, ...) #3

; Function Attrs: nounwind uwtable
define i64 @Funhandled_file_name_directory(i64 %filename) #5 {
entry:
  %retval = alloca i64, align 8
  %filename.addr = alloca i64, align 8
  %handler = alloca i64, align 8
  %handled_name = alloca i64, align 8
  store i64 %filename, i64* %filename.addr, align 8
  %0 = load i64, i64* %filename.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 970)
  %call1 = call i64 @Ffind_file_name_handler(i64 %0, i64 %call)
  store i64 %call1, i64* %handler, align 8
  %1 = load i64, i64* %handler, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %1, %call2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %handler, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 970)
  %3 = load i64, i64* %filename.addr, align 8
  %call4 = call i64 @call2(i64 %2, i64 %call3, i64 %3)
  store i64 %call4, i64* %handled_name, align 8
  %4 = load i64, i64* %handled_name, align 8
  %call5 = call zeroext i1 @STRINGP(i64 %4)
  br i1 %call5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %5 = load i64, i64* %handled_name, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %5, %cond.true ], [ %call6, %cond.false ]
  store i64 %cond, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i64, i64* %filename.addr, align 8
  %call7 = call i64 @Ffile_name_as_directory(i64 %6)
  store i64 %call7, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %cond.end
  %7 = load i64, i64* %retval
  ret i64 %7
}

; Function Attrs: nounwind uwtable
define i64 @Ffile_name_as_directory(i64 %file) #5 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca i64, align 8
  %buf = alloca i8*, align 8
  %length = alloca i64, align 8
  %handler = alloca i64, align 8
  %val = alloca i64, align 8
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  %handled_name = alloca i64, align 8
  store i64 %file, i64* %file.addr, align 8
  store i64 16384, i64* %sa_avail, align 8
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  %0 = load i64, i64* %file.addr, align 8
  call void @CHECK_STRING(i64 %0)
  %1 = load i64, i64* %file.addr, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 416)
  %call2 = call i64 @Ffind_file_name_handler(i64 %1, i64 %call1)
  store i64 %call2, i64* %handler, align 8
  %2 = load i64, i64* %handler, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %2, %call3
  br i1 %cmp, label %if.end.8, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %handler, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 416)
  %4 = load i64, i64* %file.addr, align 8
  %call5 = call i64 @call2(i64 %3, i64 %call4, i64 %4)
  store i64 %call5, i64* %handled_name, align 8
  %5 = load i64, i64* %handled_name, align 8
  %call6 = call zeroext i1 @STRINGP(i64 %5)
  br i1 %call6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %6 = load i64, i64* %handled_name, align 8
  store i64 %6, i64* %retval
  br label %return

if.end:                                           ; preds = %if.then
  call void (i8*, ...) @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i32 0, i32 0)) #8
  unreachable

if.end.8:                                         ; preds = %entry
  %7 = load i64, i64* %file.addr, align 8
  %call9 = call i64 @SBYTES(i64 %7)
  %add = add nsw i64 %call9, 2
  %add10 = add nsw i64 %add, 1
  %8 = load i64, i64* %sa_avail, align 8
  %cmp11 = icmp sle i64 %add10, %8
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.8
  %9 = load i64, i64* %file.addr, align 8
  %call12 = call i64 @SBYTES(i64 %9)
  %add13 = add nsw i64 %call12, 2
  %add14 = add nsw i64 %add13, 1
  %10 = load i64, i64* %sa_avail, align 8
  %sub = sub nsw i64 %10, %add14
  store i64 %sub, i64* %sa_avail, align 8
  %11 = load i64, i64* %file.addr, align 8
  %call15 = call i64 @SBYTES(i64 %11)
  %add16 = add nsw i64 %call15, 2
  %add17 = add nsw i64 %add16, 1
  %12 = alloca i8, i64 %add17
  br label %cond.end

cond.false:                                       ; preds = %if.end.8
  store i8 1, i8* %sa_must_free, align 1
  %13 = load i64, i64* %file.addr, align 8
  %call18 = call i64 @SBYTES(i64 %13)
  %add19 = add nsw i64 %call18, 2
  %add20 = add nsw i64 %add19, 1
  %call21 = call i8* @record_xmalloc(i64 %add20)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %12, %cond.true ], [ %call21, %cond.false ]
  store i8* %cond, i8** %buf, align 8
  %14 = load i8*, i8** %buf, align 8
  %15 = load i64, i64* %file.addr, align 8
  %call22 = call i8* @SSDATA(i64 %15)
  %16 = load i64, i64* %file.addr, align 8
  %call23 = call i64 @SBYTES(i64 %16)
  %17 = load i64, i64* %file.addr, align 8
  %call24 = call zeroext i1 @STRING_MULTIBYTE(i64 %17)
  %call25 = call i64 @file_name_as_directory(i8* %14, i8* %call22, i64 %call23, i1 zeroext %call24)
  store i64 %call25, i64* %length, align 8
  %18 = load i8*, i8** %buf, align 8
  %19 = load i64, i64* %length, align 8
  %20 = load i64, i64* %file.addr, align 8
  %call26 = call zeroext i1 @STRING_MULTIBYTE(i64 %20)
  %call27 = call i64 @make_specified_string(i8* %18, i64 -1, i64 %19, i1 zeroext %call26)
  store i64 %call27, i64* %val, align 8
  br label %do.body

do.body:                                          ; preds = %cond.end
  %21 = load i8, i8* %sa_must_free, align 1
  %tobool = trunc i8 %21 to i1
  br i1 %tobool, label %if.then.28, label %if.end.31

if.then.28:                                       ; preds = %do.body
  store i8 0, i8* %sa_must_free, align 1
  %22 = load i64, i64* %sa_count, align 8
  %call29 = call i64 @builtin_lisp_symbol(i32 0)
  %call30 = call i64 @unbind_to(i64 %22, i64 %call29)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.28, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.31
  %23 = load i64, i64* %val, align 8
  store i64 %23, i64* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.7
  %24 = load i64, i64* %retval
  ret i64 %24
}

declare i64 @SPECPDL_INDEX() #1

declare i8* @record_xmalloc(i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @file_name_as_directory(i8* %dst, i8* %src, i64 %srclen, i1 zeroext %multibyte) #5 {
entry:
  %retval = alloca i64, align 8
  %dst.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %srclen.addr = alloca i64, align 8
  %multibyte.addr = alloca i8, align 1
  store i8* %dst, i8** %dst.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %srclen, i64* %srclen.addr, align 8
  %frombool = zext i1 %multibyte to i8
  store i8 %frombool, i8* %multibyte.addr, align 1
  %0 = load i64, i64* %srclen.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %dst.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  store i8 46, i8* %arrayidx, align 1
  %2 = load i8*, i8** %dst.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 1
  store i8 47, i8* %arrayidx1, align 1
  %3 = load i8*, i8** %dst.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %3, i64 2
  store i8 0, i8* %arrayidx2, align 1
  store i64 2, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %dst.addr, align 8
  %5 = load i8*, i8** %src.addr, align 8
  %6 = load i64, i64* %srclen.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 %6, i32 1, i1 false)
  %7 = load i64, i64* %srclen.addr, align 8
  %sub = sub nsw i64 %7, 1
  %8 = load i8*, i8** %dst.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %8, i64 %sub
  %9 = load i8, i8* %arrayidx3, align 1
  %conv = sext i8 %9 to i32
  %cmp4 = icmp eq i32 %conv, 47
  br i1 %cmp4, label %if.end.8, label %if.then.6

if.then.6:                                        ; preds = %if.end
  %10 = load i64, i64* %srclen.addr, align 8
  %inc = add nsw i64 %10, 1
  store i64 %inc, i64* %srclen.addr, align 8
  %11 = load i8*, i8** %dst.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %11, i64 %10
  store i8 47, i8* %arrayidx7, align 1
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  %12 = load i64, i64* %srclen.addr, align 8
  %13 = load i8*, i8** %dst.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %13, i64 %12
  store i8 0, i8* %arrayidx9, align 1
  %14 = load i64, i64* %srclen.addr, align 8
  store i64 %14, i64* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then
  %15 = load i64, i64* %retval
  ret i64 %15
}

declare i64 @unbind_to(i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fdirectory_file_name(i64 %directory) #5 {
entry:
  %retval = alloca i64, align 8
  %directory.addr = alloca i64, align 8
  %buf = alloca i8*, align 8
  %length = alloca i64, align 8
  %handler = alloca i64, align 8
  %val = alloca i64, align 8
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  %handled_name = alloca i64, align 8
  store i64 %directory, i64* %directory.addr, align 8
  store i64 16384, i64* %sa_avail, align 8
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  %0 = load i64, i64* %directory.addr, align 8
  call void @CHECK_STRING(i64 %0)
  %1 = load i64, i64* %directory.addr, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 340)
  %call2 = call i64 @Ffind_file_name_handler(i64 %1, i64 %call1)
  store i64 %call2, i64* %handler, align 8
  %2 = load i64, i64* %handler, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %2, %call3
  br i1 %cmp, label %if.end.8, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %handler, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 340)
  %4 = load i64, i64* %directory.addr, align 8
  %call5 = call i64 @call2(i64 %3, i64 %call4, i64 %4)
  store i64 %call5, i64* %handled_name, align 8
  %5 = load i64, i64* %handled_name, align 8
  %call6 = call zeroext i1 @STRINGP(i64 %5)
  br i1 %call6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %6 = load i64, i64* %handled_name, align 8
  store i64 %6, i64* %retval
  br label %return

if.end:                                           ; preds = %if.then
  call void (i8*, ...) @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i32 0, i32 0)) #8
  unreachable

if.end.8:                                         ; preds = %entry
  %7 = load i64, i64* %directory.addr, align 8
  %call9 = call i64 @SBYTES(i64 %7)
  %add = add nsw i64 %call9, 1
  %8 = load i64, i64* %sa_avail, align 8
  %cmp10 = icmp sle i64 %add, %8
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.8
  %9 = load i64, i64* %directory.addr, align 8
  %call11 = call i64 @SBYTES(i64 %9)
  %add12 = add nsw i64 %call11, 1
  %10 = load i64, i64* %sa_avail, align 8
  %sub = sub nsw i64 %10, %add12
  store i64 %sub, i64* %sa_avail, align 8
  %11 = load i64, i64* %directory.addr, align 8
  %call13 = call i64 @SBYTES(i64 %11)
  %add14 = add nsw i64 %call13, 1
  %12 = alloca i8, i64 %add14
  br label %cond.end

cond.false:                                       ; preds = %if.end.8
  store i8 1, i8* %sa_must_free, align 1
  %13 = load i64, i64* %directory.addr, align 8
  %call15 = call i64 @SBYTES(i64 %13)
  %add16 = add nsw i64 %call15, 1
  %call17 = call i8* @record_xmalloc(i64 %add16)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %12, %cond.true ], [ %call17, %cond.false ]
  store i8* %cond, i8** %buf, align 8
  %14 = load i8*, i8** %buf, align 8
  %15 = load i64, i64* %directory.addr, align 8
  %call18 = call i8* @SSDATA(i64 %15)
  %16 = load i64, i64* %directory.addr, align 8
  %call19 = call i64 @SBYTES(i64 %16)
  %17 = load i64, i64* %directory.addr, align 8
  %call20 = call zeroext i1 @STRING_MULTIBYTE(i64 %17)
  %call21 = call i64 @directory_file_name(i8* %14, i8* %call18, i64 %call19, i1 zeroext %call20)
  store i64 %call21, i64* %length, align 8
  %18 = load i8*, i8** %buf, align 8
  %19 = load i64, i64* %length, align 8
  %20 = load i64, i64* %directory.addr, align 8
  %call22 = call zeroext i1 @STRING_MULTIBYTE(i64 %20)
  %call23 = call i64 @make_specified_string(i8* %18, i64 -1, i64 %19, i1 zeroext %call22)
  store i64 %call23, i64* %val, align 8
  br label %do.body

do.body:                                          ; preds = %cond.end
  %21 = load i8, i8* %sa_must_free, align 1
  %tobool = trunc i8 %21 to i1
  br i1 %tobool, label %if.then.24, label %if.end.27

if.then.24:                                       ; preds = %do.body
  store i8 0, i8* %sa_must_free, align 1
  %22 = load i64, i64* %sa_count, align 8
  %call25 = call i64 @builtin_lisp_symbol(i32 0)
  %call26 = call i64 @unbind_to(i64 %22, i64 %call25)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.24, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.27
  %23 = load i64, i64* %val, align 8
  store i64 %23, i64* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.7
  %24 = load i64, i64* %retval
  ret i64 %24
}

; Function Attrs: nounwind uwtable
define internal i64 @directory_file_name(i8* %dst, i8* %src, i64 %srclen, i1 zeroext %multibyte) #5 {
entry:
  %dst.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %srclen.addr = alloca i64, align 8
  %multibyte.addr = alloca i8, align 1
  store i8* %dst, i8** %dst.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %srclen, i64* %srclen.addr, align 8
  %frombool = zext i1 %multibyte to i8
  store i8 %frombool, i8* %multibyte.addr, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %srclen.addr, align 8
  %cmp = icmp sgt i64 %0, 1
  br i1 %cmp, label %land.lhs.true, label %land.end.10

land.lhs.true:                                    ; preds = %while.cond
  %1 = load i64, i64* %srclen.addr, align 8
  %sub = sub nsw i64 %1, 1
  %2 = load i8*, i8** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %sub
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp1 = icmp eq i32 %conv, 47
  br i1 %cmp1, label %land.rhs, label %land.end.10

land.rhs:                                         ; preds = %land.lhs.true
  %4 = load i64, i64* %srclen.addr, align 8
  %cmp3 = icmp eq i64 %4, 2
  br i1 %cmp3, label %land.rhs.5, label %land.end

land.rhs.5:                                       ; preds = %land.rhs
  %5 = load i8*, i8** %src.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %6 to i32
  %cmp8 = icmp eq i32 %conv7, 47
  br label %land.end

land.end:                                         ; preds = %land.rhs.5, %land.rhs
  %7 = phi i1 [ false, %land.rhs ], [ %cmp8, %land.rhs.5 ]
  %lnot = xor i1 %7, true
  br label %land.end.10

land.end.10:                                      ; preds = %land.end, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %lnot, %land.end ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end.10
  %9 = load i64, i64* %srclen.addr, align 8
  %dec = add nsw i64 %9, -1
  store i64 %dec, i64* %srclen.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end.10
  %10 = load i8*, i8** %dst.addr, align 8
  %11 = load i8*, i8** %src.addr, align 8
  %12 = load i64, i64* %srclen.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 %12, i32 1, i1 false)
  %13 = load i64, i64* %srclen.addr, align 8
  %14 = load i8*, i8** %dst.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %14, i64 %13
  store i8 0, i8* %arrayidx11, align 1
  %15 = load i64, i64* %srclen.addr, align 8
  ret i64 %15
}

; Function Attrs: nounwind uwtable
define i64 @make_temp_name(i64 %prefix, i1 zeroext %base64_p) #5 {
entry:
  %prefix.addr = alloca i64, align 8
  %base64_p.addr = alloca i8, align 1
  %val = alloca i64, align 8
  %encoded_prefix = alloca i64, align 8
  %len = alloca i64, align 8
  %pid = alloca i64, align 8
  %p = alloca i8*, align 8
  %data = alloca i8*, align 8
  %pidbuf = alloca [21 x i8], align 16
  %pidlen = alloca i32, align 4
  %num = alloca i32, align 4
  store i64 %prefix, i64* %prefix.addr, align 8
  %frombool = zext i1 %base64_p to i8
  store i8 %frombool, i8* %base64_p.addr, align 1
  %0 = load i64, i64* %prefix.addr, align 8
  call void @CHECK_STRING(i64 %0)
  %call = call i32 @getpid() #6
  %conv = sext i32 %call to i64
  store i64 %conv, i64* %pid, align 8
  %1 = load i8, i8* %base64_p.addr, align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %pid, align 8
  %and = and i64 %2, 63
  %arrayidx = getelementptr inbounds [64 x i8], [64 x i8]* @make_temp_name_tbl, i32 0, i64 %and
  %3 = load i8, i8* %arrayidx, align 1
  %arrayidx1 = getelementptr inbounds [21 x i8], [21 x i8]* %pidbuf, i32 0, i64 0
  store i8 %3, i8* %arrayidx1, align 1
  %4 = load i64, i64* %pid, align 8
  %shr = ashr i64 %4, 6
  store i64 %shr, i64* %pid, align 8
  %5 = load i64, i64* %pid, align 8
  %and2 = and i64 %5, 63
  %arrayidx3 = getelementptr inbounds [64 x i8], [64 x i8]* @make_temp_name_tbl, i32 0, i64 %and2
  %6 = load i8, i8* %arrayidx3, align 1
  %arrayidx4 = getelementptr inbounds [21 x i8], [21 x i8]* %pidbuf, i32 0, i64 1
  store i8 %6, i8* %arrayidx4, align 1
  %7 = load i64, i64* %pid, align 8
  %shr5 = ashr i64 %7, 6
  store i64 %shr5, i64* %pid, align 8
  %8 = load i64, i64* %pid, align 8
  %and6 = and i64 %8, 63
  %arrayidx7 = getelementptr inbounds [64 x i8], [64 x i8]* @make_temp_name_tbl, i32 0, i64 %and6
  %9 = load i8, i8* %arrayidx7, align 1
  %arrayidx8 = getelementptr inbounds [21 x i8], [21 x i8]* %pidbuf, i32 0, i64 2
  store i8 %9, i8* %arrayidx8, align 1
  %10 = load i64, i64* %pid, align 8
  %shr9 = ashr i64 %10, 6
  store i64 %shr9, i64* %pid, align 8
  store i32 3, i32* %pidlen, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [21 x i8], [21 x i8]* %pidbuf, i32 0, i32 0
  %11 = load i64, i64* %pid, align 8
  %call10 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i64 %11) #6
  store i32 %call10, i32* %pidlen, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load i64, i64* %prefix.addr, align 8
  %call11 = call i64 @encode_file_name(i64 %12)
  store i64 %call11, i64* %encoded_prefix, align 8
  %13 = load i64, i64* %encoded_prefix, align 8
  %call12 = call i64 @SBYTES(i64 %13)
  store i64 %call12, i64* %len, align 8
  %14 = load i64, i64* %len, align 8
  %add = add nsw i64 %14, 3
  %15 = load i32, i32* %pidlen, align 4
  %conv13 = sext i32 %15 to i64
  %add14 = add nsw i64 %add, %conv13
  %call15 = call i64 @make_uninit_string(i64 %add14)
  store i64 %call15, i64* %val, align 8
  %16 = load i64, i64* %val, align 8
  %call16 = call i8* @SSDATA(i64 %16)
  store i8* %call16, i8** %data, align 8
  %17 = load i8*, i8** %data, align 8
  %18 = load i64, i64* %encoded_prefix, align 8
  %call17 = call i8* @SSDATA(i64 %18)
  %19 = load i64, i64* %len, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %call17, i64 %19, i32 1, i1 false)
  %20 = load i8*, i8** %data, align 8
  %21 = load i64, i64* %len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 %21
  store i8* %add.ptr, i8** %p, align 8
  %22 = load i8*, i8** %p, align 8
  %23 = bitcast [21 x i8]* %pidbuf to i8*
  %24 = load i32, i32* %pidlen, align 4
  %conv18 = sext i32 %24 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 %conv18, i32 1, i1 false)
  %25 = load i32, i32* %pidlen, align 4
  %26 = load i8*, i8** %p, align 8
  %idx.ext = sext i32 %25 to i64
  %add.ptr19 = getelementptr inbounds i8, i8* %26, i64 %idx.ext
  store i8* %add.ptr19, i8** %p, align 8
  %27 = load i32, i32* @make_temp_name_count_initialized_p, align 4
  %tobool20 = icmp ne i32 %27, 0
  br i1 %tobool20, label %if.end.24, label %if.then.21

if.then.21:                                       ; preds = %if.end
  %call22 = call i64 @time(i64* null) #6
  %conv23 = trunc i64 %call22 to i32
  store i32 %conv23, i32* @make_temp_name_count, align 4
  store i32 1, i32* @make_temp_name_count_initialized_p, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.21, %if.end
  br label %while.body

while.body:                                       ; preds = %if.end.24, %if.end.47
  %28 = load i32, i32* @make_temp_name_count, align 4
  store i32 %28, i32* %num, align 4
  %29 = load i32, i32* %num, align 4
  %and25 = and i32 %29, 63
  %idxprom = zext i32 %and25 to i64
  %arrayidx26 = getelementptr inbounds [64 x i8], [64 x i8]* @make_temp_name_tbl, i32 0, i64 %idxprom
  %30 = load i8, i8* %arrayidx26, align 1
  %31 = load i8*, i8** %p, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %31, i64 0
  store i8 %30, i8* %arrayidx27, align 1
  %32 = load i32, i32* %num, align 4
  %shr28 = lshr i32 %32, 6
  store i32 %shr28, i32* %num, align 4
  %33 = load i32, i32* %num, align 4
  %and29 = and i32 %33, 63
  %idxprom30 = zext i32 %and29 to i64
  %arrayidx31 = getelementptr inbounds [64 x i8], [64 x i8]* @make_temp_name_tbl, i32 0, i64 %idxprom30
  %34 = load i8, i8* %arrayidx31, align 1
  %35 = load i8*, i8** %p, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %35, i64 1
  store i8 %34, i8* %arrayidx32, align 1
  %36 = load i32, i32* %num, align 4
  %shr33 = lshr i32 %36, 6
  store i32 %shr33, i32* %num, align 4
  %37 = load i32, i32* %num, align 4
  %and34 = and i32 %37, 63
  %idxprom35 = zext i32 %and34 to i64
  %arrayidx36 = getelementptr inbounds [64 x i8], [64 x i8]* @make_temp_name_tbl, i32 0, i64 %idxprom35
  %38 = load i8, i8* %arrayidx36, align 1
  %39 = load i8*, i8** %p, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %39, i64 2
  store i8 %38, i8* %arrayidx37, align 1
  %40 = load i32, i32* %num, align 4
  %shr38 = lshr i32 %40, 6
  store i32 %shr38, i32* %num, align 4
  %41 = load i32, i32* @make_temp_name_count, align 4
  %add39 = add i32 %41, 25229
  store i32 %add39, i32* @make_temp_name_count, align 4
  %42 = load i32, i32* @make_temp_name_count, align 4
  %rem = urem i32 %42, 225307
  store i32 %rem, i32* @make_temp_name_count, align 4
  %43 = load i8*, i8** %data, align 8
  %call40 = call zeroext i1 @check_existing(i8* %43)
  br i1 %call40, label %if.end.47, label %if.then.41

if.then.41:                                       ; preds = %while.body
  %call42 = call i32* @__errno_location() #9
  %44 = load i32, i32* %call42, align 4
  %cmp = icmp eq i32 %44, 2
  br i1 %cmp, label %if.then.44, label %if.else.46

if.then.44:                                       ; preds = %if.then.41
  %45 = load i64, i64* %val, align 8
  %call45 = call i64 @decode_file_name(i64 %45)
  ret i64 %call45

if.else.46:                                       ; preds = %if.then.41
  %46 = load i64, i64* %prefix.addr, align 8
  call void @report_file_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i32 0, i32 0), i64 %46) #8
  unreachable

if.end.47:                                        ; preds = %while.body
  br label %while.body
}

; Function Attrs: nounwind
declare i32 @getpid() #2

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare i64 @encode_file_name(i64) #1

declare i64 @make_uninit_string(i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: nounwind
declare i64 @time(i64*) #2

; Function Attrs: nounwind uwtable
define internal zeroext i1 @check_existing(i8* %filename) #5 {
entry:
  %filename.addr = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call i32 @faccessat(i32 -100, i8* %0, i32 0, i32 512) #6
  %cmp = icmp eq i32 %call, 0
  ret i1 %cmp
}

declare i64 @decode_file_name(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fmake_temp_name(i64 %prefix) #5 {
entry:
  %prefix.addr = alloca i64, align 8
  store i64 %prefix, i64* %prefix.addr, align 8
  %0 = load i64, i64* %prefix.addr, align 8
  %call = call i64 @make_temp_name(i64 %0, i1 zeroext false)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @Fexpand_file_name(i64 %name, i64 %default_directory) #5 {
entry:
  %retval = alloca i64, align 8
  %name.addr = alloca i64, align 8
  %default_directory.addr = alloca i64, align 8
  %nm = alloca i8*, align 8
  %nmlim = alloca i8*, align 8
  %newdir = alloca i8*, align 8
  %newdirlim = alloca i8*, align 8
  %target = alloca i8*, align 8
  %tlen = alloca i64, align 8
  %pw = alloca %struct.passwd*, align 8
  %length = alloca i64, align 8
  %nbytes = alloca i64, align 8
  %handler = alloca i64, align 8
  %result = alloca i64, align 8
  %handled_name = alloca i64, align 8
  %multibyte = alloca i8, align 1
  %hdir = alloca i64, align 8
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  %o = alloca i8*, align 8
  %p = alloca i8*, align 8
  %lose = alloca i8, align 1
  %p91 = alloca i8*, align 8
  %tem = alloca i64, align 8
  %o205 = alloca i8*, align 8
  %p206 = alloca i8*, align 8
  %tem250 = alloca i64, align 8
  %p341 = alloca i8*, align 8
  %o342 = alloca i8*, align 8
  store i64 %name, i64* %name.addr, align 8
  store i64 %default_directory, i64* %default_directory.addr, align 8
  store i64 16384, i64* %sa_avail, align 8
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  %0 = load i64, i64* %name.addr, align 8
  call void @CHECK_STRING(i64 %0)
  %1 = load i64, i64* %name.addr, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 389)
  %call2 = call i64 @Ffind_file_name_handler(i64 %1, i64 %call1)
  store i64 %call2, i64* %handler, align 8
  %2 = load i64, i64* %handler, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %2, %call3
  br i1 %cmp, label %if.end.8, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %handler, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 389)
  %4 = load i64, i64* %name.addr, align 8
  %5 = load i64, i64* %default_directory.addr, align 8
  %call5 = call i64 @call3(i64 %3, i64 %call4, i64 %4, i64 %5)
  store i64 %call5, i64* %handled_name, align 8
  %6 = load i64, i64* %handled_name, align 8
  %call6 = call zeroext i1 @STRINGP(i64 %6)
  br i1 %call6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %7 = load i64, i64* %handled_name, align 8
  store i64 %7, i64* %retval
  br label %return

if.end:                                           ; preds = %if.then
  call void (i8*, ...) @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i32 0, i32 0)) #8
  unreachable

if.end.8:                                         ; preds = %entry
  %8 = load i64, i64* %default_directory.addr, align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp10 = icmp eq i64 %8, %call9
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  %9 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %directory_ = getelementptr inbounds %struct.buffer, %struct.buffer* %9, i32 0, i32 3
  %10 = load i64, i64* %directory_, align 8
  store i64 %10, i64* %default_directory.addr, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end.8
  %11 = load i64, i64* %default_directory.addr, align 8
  %call13 = call zeroext i1 @STRINGP(i64 %11)
  br i1 %call13, label %if.end.16, label %if.then.14

if.then.14:                                       ; preds = %if.end.12
  %call15 = call i64 @build_string(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store i64 %call15, i64* %default_directory.addr, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end.12
  %12 = load i64, i64* %default_directory.addr, align 8
  %call17 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp18 = icmp eq i64 %12, %call17
  br i1 %cmp18, label %if.end.31, label %if.then.19

if.then.19:                                       ; preds = %if.end.16
  %13 = load i64, i64* %default_directory.addr, align 8
  %call20 = call i64 @builtin_lisp_symbol(i32 389)
  %call21 = call i64 @Ffind_file_name_handler(i64 %13, i64 %call20)
  store i64 %call21, i64* %handler, align 8
  %14 = load i64, i64* %handler, align 8
  %call22 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp23 = icmp eq i64 %14, %call22
  br i1 %cmp23, label %if.end.30, label %if.then.24

if.then.24:                                       ; preds = %if.then.19
  %15 = load i64, i64* %handler, align 8
  %call25 = call i64 @builtin_lisp_symbol(i32 389)
  %16 = load i64, i64* %name.addr, align 8
  %17 = load i64, i64* %default_directory.addr, align 8
  %call26 = call i64 @call3(i64 %15, i64 %call25, i64 %16, i64 %17)
  store i64 %call26, i64* %handled_name, align 8
  %18 = load i64, i64* %handled_name, align 8
  %call27 = call zeroext i1 @STRINGP(i64 %18)
  br i1 %call27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.then.24
  %19 = load i64, i64* %handled_name, align 8
  store i64 %19, i64* %retval
  br label %return

if.end.29:                                        ; preds = %if.then.24
  call void (i8*, ...) @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i32 0, i32 0)) #8
  unreachable

if.end.30:                                        ; preds = %if.then.19
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.end.16
  %20 = load i64, i64* %default_directory.addr, align 8
  %call32 = call i8* @SSDATA(i64 %20)
  store i8* %call32, i8** %o, align 8
  %21 = load i64, i64* %default_directory.addr, align 8
  %call33 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp34 = icmp eq i64 %21, %call33
  br i1 %cmp34, label %if.end.42, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.31
  %22 = load i64, i64* %default_directory.addr, align 8
  %23 = load i64, i64* %name.addr, align 8
  %cmp35 = icmp eq i64 %22, %23
  br i1 %cmp35, label %if.end.42, label %land.lhs.true.36

land.lhs.true.36:                                 ; preds = %land.lhs.true
  %24 = load i8*, i8** %o, align 8
  %arrayidx = getelementptr inbounds i8, i8* %24, i64 0
  %25 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %25 to i32
  %cmp37 = icmp eq i32 %conv, 47
  br i1 %cmp37, label %if.end.42, label %if.then.39

if.then.39:                                       ; preds = %land.lhs.true.36
  %26 = load i64, i64* %default_directory.addr, align 8
  %call40 = call i64 @builtin_lisp_symbol(i32 0)
  %call41 = call i64 @Fexpand_file_name(i64 %26, i64 %call40)
  store i64 %call41, i64* %default_directory.addr, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.39, %land.lhs.true.36, %land.lhs.true, %if.end.31
  %27 = load i64, i64* %name.addr, align 8
  %call43 = call zeroext i1 @STRING_MULTIBYTE(i64 %27)
  %frombool = zext i1 %call43 to i8
  store i8 %frombool, i8* %multibyte, align 1
  %28 = load i8, i8* %multibyte, align 1
  %tobool = trunc i8 %28 to i1
  %conv44 = zext i1 %tobool to i32
  %29 = load i64, i64* %default_directory.addr, align 8
  %call45 = call zeroext i1 @STRING_MULTIBYTE(i64 %29)
  %conv46 = zext i1 %call45 to i32
  %cmp47 = icmp ne i32 %conv44, %conv46
  br i1 %cmp47, label %if.then.49, label %if.end.70

if.then.49:                                       ; preds = %if.end.42
  %30 = load i8, i8* %multibyte, align 1
  %tobool50 = trunc i8 %30 to i1
  br i1 %tobool50, label %if.then.51, label %if.else.67

if.then.51:                                       ; preds = %if.then.49
  %31 = load i64, i64* %name.addr, align 8
  %call52 = call i8* @SDATA(i64 %31)
  store i8* %call52, i8** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.51
  %32 = load i8*, i8** %p, align 8
  %33 = load i8, i8* %32, align 1
  %conv53 = zext i8 %33 to i32
  %tobool54 = icmp ne i32 %conv53, 0
  br i1 %tobool54, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %34 = load i8*, i8** %p, align 8
  %35 = load i8, i8* %34, align 1
  %conv55 = zext i8 %35 to i32
  %add = add i32 %conv55, 0
  %cmp56 = icmp ult i32 %add, 128
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %36 = phi i1 [ false, %while.cond ], [ %cmp56, %land.rhs ]
  br i1 %36, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %37 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %38 = load i8*, i8** %p, align 8
  %39 = load i8, i8* %38, align 1
  %conv58 = zext i8 %39 to i32
  %cmp59 = icmp eq i32 %conv58, 0
  br i1 %cmp59, label %if.then.61, label %if.else

if.then.61:                                       ; preds = %while.end
  %40 = load i64, i64* %name.addr, align 8
  %call62 = call i8* @SSDATA(i64 %40)
  %41 = load i64, i64* %name.addr, align 8
  %call63 = call i64 @SBYTES(i64 %41)
  %call64 = call i64 @make_unibyte_string(i8* %call62, i64 %call63)
  store i64 %call64, i64* %name.addr, align 8
  store i8 0, i8* %multibyte, align 1
  br label %if.end.66

if.else:                                          ; preds = %while.end
  %42 = load i64, i64* %default_directory.addr, align 8
  %call65 = call i64 @string_to_multibyte(i64 %42)
  store i64 %call65, i64* %default_directory.addr, align 8
  br label %if.end.66

if.end.66:                                        ; preds = %if.else, %if.then.61
  br label %if.end.69

if.else.67:                                       ; preds = %if.then.49
  %43 = load i64, i64* %name.addr, align 8
  %call68 = call i64 @string_to_multibyte(i64 %43)
  store i64 %call68, i64* %name.addr, align 8
  store i8 1, i8* %multibyte, align 1
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.67, %if.end.66
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.end.42
  br label %do.body

do.body:                                          ; preds = %if.end.70
  %44 = load i64, i64* %name.addr, align 8
  %call71 = call i64 @SBYTES(i64 %44)
  %add72 = add nsw i64 %call71, 1
  %45 = load i64, i64* %sa_avail, align 8
  %cmp73 = icmp sle i64 %add72, %45
  br i1 %cmp73, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body
  %46 = load i64, i64* %name.addr, align 8
  %call75 = call i64 @SBYTES(i64 %46)
  %add76 = add nsw i64 %call75, 1
  %47 = load i64, i64* %sa_avail, align 8
  %sub = sub nsw i64 %47, %add76
  store i64 %sub, i64* %sa_avail, align 8
  %48 = load i64, i64* %name.addr, align 8
  %call77 = call i64 @SBYTES(i64 %48)
  %add78 = add nsw i64 %call77, 1
  %49 = alloca i8, i64 %add78
  br label %cond.end

cond.false:                                       ; preds = %do.body
  store i8 1, i8* %sa_must_free, align 1
  %50 = load i64, i64* %name.addr, align 8
  %call79 = call i64 @SBYTES(i64 %50)
  %add80 = add nsw i64 %call79, 1
  %call81 = call i8* @record_xmalloc(i64 %add80)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %49, %cond.true ], [ %call81, %cond.false ]
  store i8* %cond, i8** %nm, align 8
  %51 = load i8*, i8** %nm, align 8
  %52 = load i64, i64* %name.addr, align 8
  %call82 = call i8* @SDATA(i64 %52)
  %53 = load i64, i64* %name.addr, align 8
  %call83 = call i64 @SBYTES(i64 %53)
  %add84 = add nsw i64 %call83, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %51, i8* %call82, i64 %add84, i32 1, i1 false)
  br label %do.end

do.end:                                           ; preds = %cond.end
  %54 = load i8*, i8** %nm, align 8
  %55 = load i64, i64* %name.addr, align 8
  %call85 = call i64 @SBYTES(i64 %55)
  %add.ptr = getelementptr inbounds i8, i8* %54, i64 %call85
  store i8* %add.ptr, i8** %nmlim, align 8
  %56 = load i8*, i8** %nm, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %56, i64 0
  %57 = load i8, i8* %arrayidx86, align 1
  %conv87 = sext i8 %57 to i32
  %cmp88 = icmp eq i32 %conv87, 47
  br i1 %cmp88, label %if.then.90, label %if.end.170

if.then.90:                                       ; preds = %do.end
  store i8 0, i8* %lose, align 1
  %58 = load i8*, i8** %nm, align 8
  store i8* %58, i8** %p91, align 8
  br label %while.cond.92

while.cond.92:                                    ; preds = %if.end.149, %if.then.90
  %59 = load i8*, i8** %p91, align 8
  %60 = load i8, i8* %59, align 1
  %tobool93 = icmp ne i8 %60, 0
  br i1 %tobool93, label %while.body.94, label %while.end.151

while.body.94:                                    ; preds = %while.cond.92
  %61 = load i8*, i8** %p91, align 8
  %arrayidx95 = getelementptr inbounds i8, i8* %61, i64 0
  %62 = load i8, i8* %arrayidx95, align 1
  %conv96 = sext i8 %62 to i32
  %cmp97 = icmp eq i32 %conv96, 47
  br i1 %cmp97, label %land.lhs.true.99, label %if.else.129

land.lhs.true.99:                                 ; preds = %while.body.94
  %63 = load i8*, i8** %p91, align 8
  %arrayidx100 = getelementptr inbounds i8, i8* %63, i64 1
  %64 = load i8, i8* %arrayidx100, align 1
  %conv101 = sext i8 %64 to i32
  %cmp102 = icmp eq i32 %conv101, 46
  br i1 %cmp102, label %land.lhs.true.104, label %if.else.129

land.lhs.true.104:                                ; preds = %land.lhs.true.99
  %65 = load i8*, i8** %p91, align 8
  %arrayidx105 = getelementptr inbounds i8, i8* %65, i64 2
  %66 = load i8, i8* %arrayidx105, align 1
  %conv106 = sext i8 %66 to i32
  %cmp107 = icmp eq i32 %conv106, 47
  br i1 %cmp107, label %if.then.128, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.104
  %67 = load i8*, i8** %p91, align 8
  %arrayidx109 = getelementptr inbounds i8, i8* %67, i64 2
  %68 = load i8, i8* %arrayidx109, align 1
  %conv110 = sext i8 %68 to i32
  %cmp111 = icmp eq i32 %conv110, 0
  br i1 %cmp111, label %if.then.128, label %lor.lhs.false.113

lor.lhs.false.113:                                ; preds = %lor.lhs.false
  %69 = load i8*, i8** %p91, align 8
  %arrayidx114 = getelementptr inbounds i8, i8* %69, i64 2
  %70 = load i8, i8* %arrayidx114, align 1
  %conv115 = sext i8 %70 to i32
  %cmp116 = icmp eq i32 %conv115, 46
  br i1 %cmp116, label %land.lhs.true.118, label %if.else.129

land.lhs.true.118:                                ; preds = %lor.lhs.false.113
  %71 = load i8*, i8** %p91, align 8
  %arrayidx119 = getelementptr inbounds i8, i8* %71, i64 3
  %72 = load i8, i8* %arrayidx119, align 1
  %conv120 = sext i8 %72 to i32
  %cmp121 = icmp eq i32 %conv120, 47
  br i1 %cmp121, label %if.then.128, label %lor.lhs.false.123

lor.lhs.false.123:                                ; preds = %land.lhs.true.118
  %73 = load i8*, i8** %p91, align 8
  %arrayidx124 = getelementptr inbounds i8, i8* %73, i64 3
  %74 = load i8, i8* %arrayidx124, align 1
  %conv125 = sext i8 %74 to i32
  %cmp126 = icmp eq i32 %conv125, 0
  br i1 %cmp126, label %if.then.128, label %if.else.129

if.then.128:                                      ; preds = %lor.lhs.false.123, %land.lhs.true.118, %lor.lhs.false, %land.lhs.true.104
  store i8 1, i8* %lose, align 1
  br label %if.end.149

if.else.129:                                      ; preds = %lor.lhs.false.123, %lor.lhs.false.113, %land.lhs.true.99, %while.body.94
  %75 = load i8*, i8** %p91, align 8
  %arrayidx130 = getelementptr inbounds i8, i8* %75, i64 0
  %76 = load i8, i8* %arrayidx130, align 1
  %conv131 = sext i8 %76 to i32
  %cmp132 = icmp eq i32 %conv131, 47
  br i1 %cmp132, label %land.lhs.true.134, label %if.end.148

land.lhs.true.134:                                ; preds = %if.else.129
  %77 = load i8*, i8** %p91, align 8
  %arrayidx135 = getelementptr inbounds i8, i8* %77, i64 1
  %78 = load i8, i8* %arrayidx135, align 1
  %conv136 = sext i8 %78 to i32
  %cmp137 = icmp eq i32 %conv136, 47
  br i1 %cmp137, label %land.lhs.true.139, label %if.end.148

land.lhs.true.139:                                ; preds = %land.lhs.true.134
  %79 = load i8*, i8** %p91, align 8
  %80 = load i8*, i8** %nm, align 8
  %cmp140 = icmp ne i8* %79, %80
  br i1 %cmp140, label %if.then.147, label %lor.lhs.false.142

lor.lhs.false.142:                                ; preds = %land.lhs.true.139
  %81 = load i8*, i8** %p91, align 8
  %arrayidx143 = getelementptr inbounds i8, i8* %81, i64 2
  %82 = load i8, i8* %arrayidx143, align 1
  %conv144 = sext i8 %82 to i32
  %cmp145 = icmp eq i32 %conv144, 47
  br i1 %cmp145, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %lor.lhs.false.142, %land.lhs.true.139
  store i8 1, i8* %lose, align 1
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.147, %lor.lhs.false.142, %land.lhs.true.134, %if.else.129
  br label %if.end.149

if.end.149:                                       ; preds = %if.end.148, %if.then.128
  %83 = load i8*, i8** %p91, align 8
  %incdec.ptr150 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %incdec.ptr150, i8** %p91, align 8
  br label %while.cond.92

while.end.151:                                    ; preds = %while.cond.92
  %84 = load i8, i8* %lose, align 1
  %tobool152 = trunc i8 %84 to i1
  br i1 %tobool152, label %if.end.169, label %if.then.153

if.then.153:                                      ; preds = %while.end.151
  %85 = load i8*, i8** %nm, align 8
  %86 = load i64, i64* %name.addr, align 8
  %call154 = call i8* @SSDATA(i64 %86)
  %call155 = call i32 @strcmp(i8* %85, i8* %call154) #10
  %cmp156 = icmp ne i32 %call155, 0
  br i1 %cmp156, label %if.then.158, label %if.end.161

if.then.158:                                      ; preds = %if.then.153
  %87 = load i8*, i8** %nm, align 8
  %88 = load i8*, i8** %nmlim, align 8
  %89 = load i8*, i8** %nm, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %88 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %89 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %90 = load i8, i8* %multibyte, align 1
  %tobool159 = trunc i8 %90 to i1
  %call160 = call i64 @make_specified_string(i8* %87, i64 -1, i64 %sub.ptr.sub, i1 zeroext %tobool159)
  store i64 %call160, i64* %name.addr, align 8
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.158, %if.then.153
  br label %do.body.162

do.body.162:                                      ; preds = %if.end.161
  %91 = load i8, i8* %sa_must_free, align 1
  %tobool163 = trunc i8 %91 to i1
  br i1 %tobool163, label %if.then.164, label %if.end.167

if.then.164:                                      ; preds = %do.body.162
  store i8 0, i8* %sa_must_free, align 1
  %92 = load i64, i64* %sa_count, align 8
  %call165 = call i64 @builtin_lisp_symbol(i32 0)
  %call166 = call i64 @unbind_to(i64 %92, i64 %call165)
  br label %if.end.167

if.end.167:                                       ; preds = %if.then.164, %do.body.162
  br label %do.end.168

do.end.168:                                       ; preds = %if.end.167
  %93 = load i64, i64* %name.addr, align 8
  store i64 %93, i64* %retval
  br label %return

if.end.169:                                       ; preds = %while.end.151
  br label %if.end.170

if.end.170:                                       ; preds = %if.end.169, %do.end
  store i8* null, i8** %newdirlim, align 8
  store i8* null, i8** %newdir, align 8
  %94 = load i8*, i8** %nm, align 8
  %arrayidx171 = getelementptr inbounds i8, i8* %94, i64 0
  %95 = load i8, i8* %arrayidx171, align 1
  %conv172 = sext i8 %95 to i32
  %cmp173 = icmp eq i32 %conv172, 126
  br i1 %cmp173, label %if.then.175, label %if.end.267

if.then.175:                                      ; preds = %if.end.170
  %96 = load i8*, i8** %nm, align 8
  %arrayidx176 = getelementptr inbounds i8, i8* %96, i64 1
  %97 = load i8, i8* %arrayidx176, align 1
  %conv177 = sext i8 %97 to i32
  %cmp178 = icmp eq i32 %conv177, 47
  br i1 %cmp178, label %if.then.185, label %lor.lhs.false.180

lor.lhs.false.180:                                ; preds = %if.then.175
  %98 = load i8*, i8** %nm, align 8
  %arrayidx181 = getelementptr inbounds i8, i8* %98, i64 1
  %99 = load i8, i8* %arrayidx181, align 1
  %conv182 = sext i8 %99 to i32
  %cmp183 = icmp eq i32 %conv182, 0
  br i1 %cmp183, label %if.then.185, label %if.else.204

if.then.185:                                      ; preds = %lor.lhs.false.180, %if.then.175
  %call186 = call i8* @egetenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0))
  store i8* %call186, i8** %newdir, align 8
  %tobool187 = icmp ne i8* %call186, null
  br i1 %tobool187, label %if.end.189, label %if.then.188

if.then.188:                                      ; preds = %if.then.185
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), i8** %newdirlim, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), i8** %newdir, align 8
  br label %if.end.189

if.end.189:                                       ; preds = %if.then.188, %if.then.185
  %100 = load i8*, i8** %nm, align 8
  %incdec.ptr190 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %incdec.ptr190, i8** %nm, align 8
  %101 = load i8*, i8** %newdir, align 8
  %call191 = call i64 @build_string(i8* %101)
  store i64 %call191, i64* %tem, align 8
  %102 = load i8*, i8** %newdir, align 8
  %103 = load i64, i64* %tem, align 8
  %call192 = call i64 @SBYTES(i64 %103)
  %add.ptr193 = getelementptr inbounds i8, i8* %102, i64 %call192
  store i8* %add.ptr193, i8** %newdirlim, align 8
  %104 = load i8, i8* %multibyte, align 1
  %tobool194 = trunc i8 %104 to i1
  br i1 %tobool194, label %land.lhs.true.196, label %if.end.203

land.lhs.true.196:                                ; preds = %if.end.189
  %105 = load i64, i64* %tem, align 8
  %call197 = call zeroext i1 @STRING_MULTIBYTE(i64 %105)
  br i1 %call197, label %if.end.203, label %if.then.198

if.then.198:                                      ; preds = %land.lhs.true.196
  %106 = load i64, i64* %tem, align 8
  %call199 = call i64 @decode_file_name(i64 %106)
  store i64 %call199, i64* %hdir, align 8
  %107 = load i64, i64* %hdir, align 8
  %call200 = call i8* @SSDATA(i64 %107)
  store i8* %call200, i8** %newdir, align 8
  %108 = load i8*, i8** %newdir, align 8
  %109 = load i64, i64* %hdir, align 8
  %call201 = call i64 @SBYTES(i64 %109)
  %add.ptr202 = getelementptr inbounds i8, i8* %108, i64 %call201
  store i8* %add.ptr202, i8** %newdirlim, align 8
  br label %if.end.203

if.end.203:                                       ; preds = %if.then.198, %land.lhs.true.196, %if.end.189
  br label %if.end.266

if.else.204:                                      ; preds = %lor.lhs.false.180
  %110 = load i8*, i8** %nm, align 8
  store i8* %110, i8** %p206, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.204
  %111 = load i8*, i8** %p206, align 8
  %112 = load i8, i8* %111, align 1
  %conv207 = sext i8 %112 to i32
  %tobool208 = icmp ne i32 %conv207, 0
  br i1 %tobool208, label %land.rhs.209, label %land.end.213

land.rhs.209:                                     ; preds = %for.cond
  %113 = load i8*, i8** %p206, align 8
  %114 = load i8, i8* %113, align 1
  %conv210 = sext i8 %114 to i32
  %cmp211 = icmp eq i32 %conv210, 47
  %lnot = xor i1 %cmp211, true
  br label %land.end.213

land.end.213:                                     ; preds = %land.rhs.209, %for.cond
  %115 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs.209 ]
  br i1 %115, label %for.body, label %for.end

for.body:                                         ; preds = %land.end.213
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %116 = load i8*, i8** %p206, align 8
  %incdec.ptr214 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %incdec.ptr214, i8** %p206, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end.213
  %117 = load i8*, i8** %p206, align 8
  %118 = load i8*, i8** %nm, align 8
  %sub.ptr.lhs.cast215 = ptrtoint i8* %117 to i64
  %sub.ptr.rhs.cast216 = ptrtoint i8* %118 to i64
  %sub.ptr.sub217 = sub i64 %sub.ptr.lhs.cast215, %sub.ptr.rhs.cast216
  %add218 = add nsw i64 %sub.ptr.sub217, 1
  %119 = load i64, i64* %sa_avail, align 8
  %cmp219 = icmp sle i64 %add218, %119
  br i1 %cmp219, label %cond.true.221, label %cond.false.231

cond.true.221:                                    ; preds = %for.end
  %120 = load i8*, i8** %p206, align 8
  %121 = load i8*, i8** %nm, align 8
  %sub.ptr.lhs.cast222 = ptrtoint i8* %120 to i64
  %sub.ptr.rhs.cast223 = ptrtoint i8* %121 to i64
  %sub.ptr.sub224 = sub i64 %sub.ptr.lhs.cast222, %sub.ptr.rhs.cast223
  %add225 = add nsw i64 %sub.ptr.sub224, 1
  %122 = load i64, i64* %sa_avail, align 8
  %sub226 = sub nsw i64 %122, %add225
  store i64 %sub226, i64* %sa_avail, align 8
  %123 = load i8*, i8** %p206, align 8
  %124 = load i8*, i8** %nm, align 8
  %sub.ptr.lhs.cast227 = ptrtoint i8* %123 to i64
  %sub.ptr.rhs.cast228 = ptrtoint i8* %124 to i64
  %sub.ptr.sub229 = sub i64 %sub.ptr.lhs.cast227, %sub.ptr.rhs.cast228
  %add230 = add nsw i64 %sub.ptr.sub229, 1
  %125 = alloca i8, i64 %add230
  br label %cond.end.237

cond.false.231:                                   ; preds = %for.end
  store i8 1, i8* %sa_must_free, align 1
  %126 = load i8*, i8** %p206, align 8
  %127 = load i8*, i8** %nm, align 8
  %sub.ptr.lhs.cast232 = ptrtoint i8* %126 to i64
  %sub.ptr.rhs.cast233 = ptrtoint i8* %127 to i64
  %sub.ptr.sub234 = sub i64 %sub.ptr.lhs.cast232, %sub.ptr.rhs.cast233
  %add235 = add nsw i64 %sub.ptr.sub234, 1
  %call236 = call i8* @record_xmalloc(i64 %add235)
  br label %cond.end.237

cond.end.237:                                     ; preds = %cond.false.231, %cond.true.221
  %cond238 = phi i8* [ %125, %cond.true.221 ], [ %call236, %cond.false.231 ]
  store i8* %cond238, i8** %o205, align 8
  %128 = load i8*, i8** %o205, align 8
  %129 = load i8*, i8** %nm, align 8
  %130 = load i8*, i8** %p206, align 8
  %131 = load i8*, i8** %nm, align 8
  %sub.ptr.lhs.cast239 = ptrtoint i8* %130 to i64
  %sub.ptr.rhs.cast240 = ptrtoint i8* %131 to i64
  %sub.ptr.sub241 = sub i64 %sub.ptr.lhs.cast239, %sub.ptr.rhs.cast240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %128, i8* %129, i64 %sub.ptr.sub241, i32 1, i1 false)
  %132 = load i8*, i8** %p206, align 8
  %133 = load i8*, i8** %nm, align 8
  %sub.ptr.lhs.cast242 = ptrtoint i8* %132 to i64
  %sub.ptr.rhs.cast243 = ptrtoint i8* %133 to i64
  %sub.ptr.sub244 = sub i64 %sub.ptr.lhs.cast242, %sub.ptr.rhs.cast243
  %134 = load i8*, i8** %o205, align 8
  %arrayidx245 = getelementptr inbounds i8, i8* %134, i64 %sub.ptr.sub244
  store i8 0, i8* %arrayidx245, align 1
  call void @block_input()
  %135 = load i8*, i8** %o205, align 8
  %add.ptr246 = getelementptr inbounds i8, i8* %135, i64 1
  %call247 = call %struct.passwd* @getpwnam(i8* %add.ptr246)
  store %struct.passwd* %call247, %struct.passwd** %pw, align 8
  call void @unblock_input()
  %136 = load %struct.passwd*, %struct.passwd** %pw, align 8
  %tobool248 = icmp ne %struct.passwd* %136, null
  br i1 %tobool248, label %if.then.249, label %if.end.265

if.then.249:                                      ; preds = %cond.end.237
  %137 = load %struct.passwd*, %struct.passwd** %pw, align 8
  %pw_dir = getelementptr inbounds %struct.passwd, %struct.passwd* %137, i32 0, i32 5
  %138 = load i8*, i8** %pw_dir, align 8
  store i8* %138, i8** %newdir, align 8
  %139 = load i8*, i8** %newdir, align 8
  %140 = load i8*, i8** %newdir, align 8
  %call251 = call i64 @strlen(i8* %140) #10
  %call252 = call i64 @make_unibyte_string(i8* %139, i64 %call251)
  store i64 %call252, i64* %tem250, align 8
  %141 = load i8*, i8** %newdir, align 8
  %142 = load i64, i64* %tem250, align 8
  %call253 = call i64 @SBYTES(i64 %142)
  %add.ptr254 = getelementptr inbounds i8, i8* %141, i64 %call253
  store i8* %add.ptr254, i8** %newdirlim, align 8
  %143 = load i8, i8* %multibyte, align 1
  %tobool255 = trunc i8 %143 to i1
  br i1 %tobool255, label %land.lhs.true.257, label %if.end.264

land.lhs.true.257:                                ; preds = %if.then.249
  %144 = load i64, i64* %tem250, align 8
  %call258 = call zeroext i1 @STRING_MULTIBYTE(i64 %144)
  br i1 %call258, label %if.end.264, label %if.then.259

if.then.259:                                      ; preds = %land.lhs.true.257
  %145 = load i64, i64* %tem250, align 8
  %call260 = call i64 @decode_file_name(i64 %145)
  store i64 %call260, i64* %hdir, align 8
  %146 = load i64, i64* %hdir, align 8
  %call261 = call i8* @SSDATA(i64 %146)
  store i8* %call261, i8** %newdir, align 8
  %147 = load i8*, i8** %newdir, align 8
  %148 = load i64, i64* %hdir, align 8
  %call262 = call i64 @SBYTES(i64 %148)
  %add.ptr263 = getelementptr inbounds i8, i8* %147, i64 %call262
  store i8* %add.ptr263, i8** %newdirlim, align 8
  br label %if.end.264

if.end.264:                                       ; preds = %if.then.259, %land.lhs.true.257, %if.then.249
  %149 = load i8*, i8** %p206, align 8
  store i8* %149, i8** %nm, align 8
  br label %if.end.265

if.end.265:                                       ; preds = %if.end.264, %cond.end.237
  br label %if.end.266

if.end.266:                                       ; preds = %if.end.265, %if.end.203
  br label %if.end.267

if.end.267:                                       ; preds = %if.end.266, %if.end.170
  %150 = load i8*, i8** %nm, align 8
  %arrayidx268 = getelementptr inbounds i8, i8* %150, i64 0
  %151 = load i8, i8* %arrayidx268, align 1
  %conv269 = sext i8 %151 to i32
  %cmp270 = icmp eq i32 %conv269, 47
  br i1 %cmp270, label %if.end.278, label %land.lhs.true.272

land.lhs.true.272:                                ; preds = %if.end.267
  %152 = load i8*, i8** %newdir, align 8
  %tobool273 = icmp ne i8* %152, null
  br i1 %tobool273, label %if.end.278, label %if.then.274

if.then.274:                                      ; preds = %land.lhs.true.272
  %153 = load i64, i64* %default_directory.addr, align 8
  %call275 = call i8* @SSDATA(i64 %153)
  store i8* %call275, i8** %newdir, align 8
  %154 = load i8*, i8** %newdir, align 8
  %155 = load i64, i64* %default_directory.addr, align 8
  %call276 = call i64 @SBYTES(i64 %155)
  %add.ptr277 = getelementptr inbounds i8, i8* %154, i64 %call276
  store i8* %add.ptr277, i8** %newdirlim, align 8
  br label %if.end.278

if.end.278:                                       ; preds = %if.then.274, %land.lhs.true.272, %if.end.267
  %156 = load i8*, i8** %newdirlim, align 8
  %157 = load i8*, i8** %newdir, align 8
  %sub.ptr.lhs.cast279 = ptrtoint i8* %156 to i64
  %sub.ptr.rhs.cast280 = ptrtoint i8* %157 to i64
  %sub.ptr.sub281 = sub i64 %sub.ptr.lhs.cast279, %sub.ptr.rhs.cast280
  store i64 %sub.ptr.sub281, i64* %length, align 8
  br label %while.cond.282

while.cond.282:                                   ; preds = %while.body.302, %if.end.278
  %158 = load i64, i64* %length, align 8
  %cmp283 = icmp sgt i64 %158, 1
  br i1 %cmp283, label %land.lhs.true.285, label %land.end.301

land.lhs.true.285:                                ; preds = %while.cond.282
  %159 = load i64, i64* %length, align 8
  %sub286 = sub nsw i64 %159, 1
  %160 = load i8*, i8** %newdir, align 8
  %arrayidx287 = getelementptr inbounds i8, i8* %160, i64 %sub286
  %161 = load i8, i8* %arrayidx287, align 1
  %conv288 = sext i8 %161 to i32
  %cmp289 = icmp eq i32 %conv288, 47
  br i1 %cmp289, label %land.rhs.291, label %land.end.301

land.rhs.291:                                     ; preds = %land.lhs.true.285
  %162 = load i64, i64* %length, align 8
  %cmp292 = icmp eq i64 %162, 2
  br i1 %cmp292, label %land.rhs.294, label %land.end.299

land.rhs.294:                                     ; preds = %land.rhs.291
  %163 = load i8*, i8** %newdir, align 8
  %arrayidx295 = getelementptr inbounds i8, i8* %163, i64 0
  %164 = load i8, i8* %arrayidx295, align 1
  %conv296 = sext i8 %164 to i32
  %cmp297 = icmp eq i32 %conv296, 47
  br label %land.end.299

land.end.299:                                     ; preds = %land.rhs.294, %land.rhs.291
  %165 = phi i1 [ false, %land.rhs.291 ], [ %cmp297, %land.rhs.294 ]
  %lnot300 = xor i1 %165, true
  br label %land.end.301

land.end.301:                                     ; preds = %land.end.299, %land.lhs.true.285, %while.cond.282
  %166 = phi i1 [ false, %land.lhs.true.285 ], [ false, %while.cond.282 ], [ %lnot300, %land.end.299 ]
  br i1 %166, label %while.body.302, label %while.end.303

while.body.302:                                   ; preds = %land.end.301
  %167 = load i64, i64* %length, align 8
  %dec = add nsw i64 %167, -1
  store i64 %dec, i64* %length, align 8
  br label %while.cond.282

while.end.303:                                    ; preds = %land.end.301
  %168 = load i64, i64* %length, align 8
  %add304 = add nsw i64 %168, 2
  %169 = load i8*, i8** %nmlim, align 8
  %170 = load i8*, i8** %nm, align 8
  %sub.ptr.lhs.cast305 = ptrtoint i8* %169 to i64
  %sub.ptr.rhs.cast306 = ptrtoint i8* %170 to i64
  %sub.ptr.sub307 = sub i64 %sub.ptr.lhs.cast305, %sub.ptr.rhs.cast306
  %add308 = add nsw i64 %add304, %sub.ptr.sub307
  %add309 = add nsw i64 %add308, 1
  store i64 %add309, i64* %tlen, align 8
  %171 = load i64, i64* %tlen, align 8
  %172 = load i64, i64* %sa_avail, align 8
  %cmp310 = icmp sle i64 %171, %172
  br i1 %cmp310, label %cond.true.312, label %cond.false.314

cond.true.312:                                    ; preds = %while.end.303
  %173 = load i64, i64* %tlen, align 8
  %174 = load i64, i64* %sa_avail, align 8
  %sub313 = sub nsw i64 %174, %173
  store i64 %sub313, i64* %sa_avail, align 8
  %175 = load i64, i64* %tlen, align 8
  %176 = alloca i8, i64 %175
  br label %cond.end.316

cond.false.314:                                   ; preds = %while.end.303
  store i8 1, i8* %sa_must_free, align 1
  %177 = load i64, i64* %tlen, align 8
  %call315 = call i8* @record_xmalloc(i64 %177)
  br label %cond.end.316

cond.end.316:                                     ; preds = %cond.false.314, %cond.true.312
  %cond317 = phi i8* [ %176, %cond.true.312 ], [ %call315, %cond.false.314 ]
  store i8* %cond317, i8** %target, align 8
  %178 = load i8*, i8** %target, align 8
  store i8 0, i8* %178, align 1
  store i64 0, i64* %nbytes, align 8
  %179 = load i8*, i8** %newdir, align 8
  %tobool318 = icmp ne i8* %179, null
  br i1 %tobool318, label %if.then.319, label %if.end.335

if.then.319:                                      ; preds = %cond.end.316
  %180 = load i8*, i8** %nm, align 8
  %arrayidx320 = getelementptr inbounds i8, i8* %180, i64 0
  %181 = load i8, i8* %arrayidx320, align 1
  %conv321 = sext i8 %181 to i32
  %cmp322 = icmp eq i32 %conv321, 0
  br i1 %cmp322, label %if.then.329, label %lor.lhs.false.324

lor.lhs.false.324:                                ; preds = %if.then.319
  %182 = load i8*, i8** %nm, align 8
  %arrayidx325 = getelementptr inbounds i8, i8* %182, i64 0
  %183 = load i8, i8* %arrayidx325, align 1
  %conv326 = sext i8 %183 to i32
  %cmp327 = icmp eq i32 %conv326, 47
  br i1 %cmp327, label %if.then.329, label %if.else.331

if.then.329:                                      ; preds = %lor.lhs.false.324, %if.then.319
  %184 = load i8*, i8** %target, align 8
  %185 = load i8*, i8** %newdir, align 8
  %186 = load i64, i64* %length, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %184, i8* %185, i64 %186, i32 1, i1 false)
  %187 = load i64, i64* %length, align 8
  %188 = load i8*, i8** %target, align 8
  %arrayidx330 = getelementptr inbounds i8, i8* %188, i64 %187
  store i8 0, i8* %arrayidx330, align 1
  %189 = load i64, i64* %length, align 8
  store i64 %189, i64* %nbytes, align 8
  br label %if.end.334

if.else.331:                                      ; preds = %lor.lhs.false.324
  %190 = load i8*, i8** %target, align 8
  %191 = load i8*, i8** %newdir, align 8
  %192 = load i64, i64* %length, align 8
  %193 = load i8, i8* %multibyte, align 1
  %tobool332 = trunc i8 %193 to i1
  %call333 = call i64 @file_name_as_directory(i8* %190, i8* %191, i64 %192, i1 zeroext %tobool332)
  store i64 %call333, i64* %nbytes, align 8
  br label %if.end.334

if.end.334:                                       ; preds = %if.else.331, %if.then.329
  br label %if.end.335

if.end.335:                                       ; preds = %if.end.334, %cond.end.316
  %194 = load i8*, i8** %target, align 8
  %195 = load i64, i64* %nbytes, align 8
  %add.ptr336 = getelementptr inbounds i8, i8* %194, i64 %195
  %196 = load i8*, i8** %nm, align 8
  %197 = load i8*, i8** %nmlim, align 8
  %198 = load i8*, i8** %nm, align 8
  %sub.ptr.lhs.cast337 = ptrtoint i8* %197 to i64
  %sub.ptr.rhs.cast338 = ptrtoint i8* %198 to i64
  %sub.ptr.sub339 = sub i64 %sub.ptr.lhs.cast337, %sub.ptr.rhs.cast338
  %add340 = add nsw i64 %sub.ptr.sub339, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr336, i8* %196, i64 %add340, i32 1, i1 false)
  %199 = load i8*, i8** %target, align 8
  store i8* %199, i8** %p341, align 8
  %200 = load i8*, i8** %target, align 8
  store i8* %200, i8** %o342, align 8
  br label %while.cond.343

while.cond.343:                                   ; preds = %if.end.451, %if.end.335
  %201 = load i8*, i8** %p341, align 8
  %202 = load i8, i8* %201, align 1
  %tobool344 = icmp ne i8 %202, 0
  br i1 %tobool344, label %while.body.345, label %while.end.452

while.body.345:                                   ; preds = %while.cond.343
  %203 = load i8*, i8** %p341, align 8
  %204 = load i8, i8* %203, align 1
  %conv346 = sext i8 %204 to i32
  %cmp347 = icmp eq i32 %conv346, 47
  br i1 %cmp347, label %if.else.352, label %if.then.349

if.then.349:                                      ; preds = %while.body.345
  %205 = load i8*, i8** %p341, align 8
  %incdec.ptr350 = getelementptr inbounds i8, i8* %205, i32 1
  store i8* %incdec.ptr350, i8** %p341, align 8
  %206 = load i8, i8* %205, align 1
  %207 = load i8*, i8** %o342, align 8
  %incdec.ptr351 = getelementptr inbounds i8, i8* %207, i32 1
  store i8* %incdec.ptr351, i8** %o342, align 8
  store i8 %206, i8* %207, align 1
  br label %if.end.451

if.else.352:                                      ; preds = %while.body.345
  %208 = load i8*, i8** %p341, align 8
  %arrayidx353 = getelementptr inbounds i8, i8* %208, i64 1
  %209 = load i8, i8* %arrayidx353, align 1
  %conv354 = sext i8 %209 to i32
  %cmp355 = icmp eq i32 %conv354, 46
  br i1 %cmp355, label %land.lhs.true.357, label %if.else.379

land.lhs.true.357:                                ; preds = %if.else.352
  %210 = load i8*, i8** %p341, align 8
  %arrayidx358 = getelementptr inbounds i8, i8* %210, i64 2
  %211 = load i8, i8* %arrayidx358, align 1
  %conv359 = sext i8 %211 to i32
  %cmp360 = icmp eq i32 %conv359, 47
  br i1 %cmp360, label %if.then.367, label %lor.lhs.false.362

lor.lhs.false.362:                                ; preds = %land.lhs.true.357
  %212 = load i8*, i8** %p341, align 8
  %arrayidx363 = getelementptr inbounds i8, i8* %212, i64 2
  %213 = load i8, i8* %arrayidx363, align 1
  %conv364 = sext i8 %213 to i32
  %cmp365 = icmp eq i32 %conv364, 0
  br i1 %cmp365, label %if.then.367, label %if.else.379

if.then.367:                                      ; preds = %lor.lhs.false.362, %land.lhs.true.357
  %214 = load i8*, i8** %o342, align 8
  %215 = load i8*, i8** %target, align 8
  %cmp368 = icmp eq i8* %214, %215
  br i1 %cmp368, label %land.lhs.true.370, label %if.end.377

land.lhs.true.370:                                ; preds = %if.then.367
  %216 = load i8*, i8** %p341, align 8
  %arrayidx371 = getelementptr inbounds i8, i8* %216, i64 2
  %217 = load i8, i8* %arrayidx371, align 1
  %conv372 = sext i8 %217 to i32
  %cmp373 = icmp eq i32 %conv372, 0
  br i1 %cmp373, label %if.then.375, label %if.end.377

if.then.375:                                      ; preds = %land.lhs.true.370
  %218 = load i8*, i8** %p341, align 8
  %219 = load i8, i8* %218, align 1
  %220 = load i8*, i8** %o342, align 8
  %incdec.ptr376 = getelementptr inbounds i8, i8* %220, i32 1
  store i8* %incdec.ptr376, i8** %o342, align 8
  store i8 %219, i8* %220, align 1
  br label %if.end.377

if.end.377:                                       ; preds = %if.then.375, %land.lhs.true.370, %if.then.367
  %221 = load i8*, i8** %p341, align 8
  %add.ptr378 = getelementptr inbounds i8, i8* %221, i64 2
  store i8* %add.ptr378, i8** %p341, align 8
  br label %if.end.450

if.else.379:                                      ; preds = %lor.lhs.false.362, %if.else.352
  %222 = load i8*, i8** %p341, align 8
  %arrayidx380 = getelementptr inbounds i8, i8* %222, i64 1
  %223 = load i8, i8* %arrayidx380, align 1
  %conv381 = sext i8 %223 to i32
  %cmp382 = icmp eq i32 %conv381, 46
  br i1 %cmp382, label %land.lhs.true.384, label %if.else.430

land.lhs.true.384:                                ; preds = %if.else.379
  %224 = load i8*, i8** %p341, align 8
  %arrayidx385 = getelementptr inbounds i8, i8* %224, i64 2
  %225 = load i8, i8* %arrayidx385, align 1
  %conv386 = sext i8 %225 to i32
  %cmp387 = icmp eq i32 %conv386, 46
  br i1 %cmp387, label %land.lhs.true.389, label %if.else.430

land.lhs.true.389:                                ; preds = %land.lhs.true.384
  %226 = load i8*, i8** %o342, align 8
  %227 = load i8*, i8** %target, align 8
  %cmp390 = icmp ne i8* %226, %227
  br i1 %cmp390, label %land.lhs.true.392, label %if.else.430

land.lhs.true.392:                                ; preds = %land.lhs.true.389
  %228 = load i8*, i8** %p341, align 8
  %arrayidx393 = getelementptr inbounds i8, i8* %228, i64 3
  %229 = load i8, i8* %arrayidx393, align 1
  %conv394 = sext i8 %229 to i32
  %cmp395 = icmp eq i32 %conv394, 47
  br i1 %cmp395, label %if.then.402, label %lor.lhs.false.397

lor.lhs.false.397:                                ; preds = %land.lhs.true.392
  %230 = load i8*, i8** %p341, align 8
  %arrayidx398 = getelementptr inbounds i8, i8* %230, i64 3
  %231 = load i8, i8* %arrayidx398, align 1
  %conv399 = sext i8 %231 to i32
  %cmp400 = icmp eq i32 %conv399, 0
  br i1 %cmp400, label %if.then.402, label %if.else.430

if.then.402:                                      ; preds = %lor.lhs.false.397, %land.lhs.true.392
  br label %while.cond.403

while.cond.403:                                   ; preds = %while.body.413, %if.then.402
  %232 = load i8*, i8** %o342, align 8
  %233 = load i8*, i8** %target, align 8
  %cmp404 = icmp ne i8* %232, %233
  br i1 %cmp404, label %land.rhs.406, label %land.end.412

land.rhs.406:                                     ; preds = %while.cond.403
  %234 = load i8*, i8** %o342, align 8
  %incdec.ptr407 = getelementptr inbounds i8, i8* %234, i32 -1
  store i8* %incdec.ptr407, i8** %o342, align 8
  %235 = load i8*, i8** %o342, align 8
  %236 = load i8, i8* %235, align 1
  %conv408 = sext i8 %236 to i32
  %cmp409 = icmp eq i32 %conv408, 47
  %lnot411 = xor i1 %cmp409, true
  br label %land.end.412

land.end.412:                                     ; preds = %land.rhs.406, %while.cond.403
  %237 = phi i1 [ false, %while.cond.403 ], [ %lnot411, %land.rhs.406 ]
  br i1 %237, label %while.body.413, label %while.end.414

while.body.413:                                   ; preds = %land.end.412
  br label %while.cond.403

while.end.414:                                    ; preds = %land.end.412
  %238 = load i8*, i8** %o342, align 8
  %239 = load i8*, i8** %target, align 8
  %cmp415 = icmp eq i8* %238, %239
  br i1 %cmp415, label %land.lhs.true.417, label %if.end.428

land.lhs.true.417:                                ; preds = %while.end.414
  %240 = load i8*, i8** %o342, align 8
  %241 = load i8, i8* %240, align 1
  %conv418 = sext i8 %241 to i32
  %cmp419 = icmp eq i32 %conv418, 47
  br i1 %cmp419, label %land.lhs.true.421, label %if.end.428

land.lhs.true.421:                                ; preds = %land.lhs.true.417
  %242 = load i8*, i8** %p341, align 8
  %arrayidx422 = getelementptr inbounds i8, i8* %242, i64 3
  %243 = load i8, i8* %arrayidx422, align 1
  %conv423 = sext i8 %243 to i32
  %cmp424 = icmp eq i32 %conv423, 0
  br i1 %cmp424, label %if.then.426, label %if.end.428

if.then.426:                                      ; preds = %land.lhs.true.421
  %244 = load i8*, i8** %o342, align 8
  %incdec.ptr427 = getelementptr inbounds i8, i8* %244, i32 1
  store i8* %incdec.ptr427, i8** %o342, align 8
  br label %if.end.428

if.end.428:                                       ; preds = %if.then.426, %land.lhs.true.421, %land.lhs.true.417, %while.end.414
  %245 = load i8*, i8** %p341, align 8
  %add.ptr429 = getelementptr inbounds i8, i8* %245, i64 3
  store i8* %add.ptr429, i8** %p341, align 8
  br label %if.end.449

if.else.430:                                      ; preds = %lor.lhs.false.397, %land.lhs.true.389, %land.lhs.true.384, %if.else.379
  %246 = load i8*, i8** %p341, align 8
  %arrayidx431 = getelementptr inbounds i8, i8* %246, i64 1
  %247 = load i8, i8* %arrayidx431, align 1
  %conv432 = sext i8 %247 to i32
  %cmp433 = icmp eq i32 %conv432, 47
  br i1 %cmp433, label %land.lhs.true.435, label %if.else.445

land.lhs.true.435:                                ; preds = %if.else.430
  %248 = load i8*, i8** %p341, align 8
  %249 = load i8*, i8** %target, align 8
  %cmp436 = icmp ne i8* %248, %249
  br i1 %cmp436, label %if.then.443, label %lor.lhs.false.438

lor.lhs.false.438:                                ; preds = %land.lhs.true.435
  %250 = load i8*, i8** %p341, align 8
  %arrayidx439 = getelementptr inbounds i8, i8* %250, i64 2
  %251 = load i8, i8* %arrayidx439, align 1
  %conv440 = sext i8 %251 to i32
  %cmp441 = icmp eq i32 %conv440, 47
  br i1 %cmp441, label %if.then.443, label %if.else.445

if.then.443:                                      ; preds = %lor.lhs.false.438, %land.lhs.true.435
  %252 = load i8*, i8** %p341, align 8
  %incdec.ptr444 = getelementptr inbounds i8, i8* %252, i32 1
  store i8* %incdec.ptr444, i8** %p341, align 8
  br label %if.end.448

if.else.445:                                      ; preds = %lor.lhs.false.438, %if.else.430
  %253 = load i8*, i8** %p341, align 8
  %incdec.ptr446 = getelementptr inbounds i8, i8* %253, i32 1
  store i8* %incdec.ptr446, i8** %p341, align 8
  %254 = load i8, i8* %253, align 1
  %255 = load i8*, i8** %o342, align 8
  %incdec.ptr447 = getelementptr inbounds i8, i8* %255, i32 1
  store i8* %incdec.ptr447, i8** %o342, align 8
  store i8 %254, i8* %255, align 1
  br label %if.end.448

if.end.448:                                       ; preds = %if.else.445, %if.then.443
  br label %if.end.449

if.end.449:                                       ; preds = %if.end.448, %if.end.428
  br label %if.end.450

if.end.450:                                       ; preds = %if.end.449, %if.end.377
  br label %if.end.451

if.end.451:                                       ; preds = %if.end.450, %if.then.349
  br label %while.cond.343

while.end.452:                                    ; preds = %while.cond.343
  %256 = load i8*, i8** %target, align 8
  %257 = load i8*, i8** %o342, align 8
  %258 = load i8*, i8** %target, align 8
  %sub.ptr.lhs.cast453 = ptrtoint i8* %257 to i64
  %sub.ptr.rhs.cast454 = ptrtoint i8* %258 to i64
  %sub.ptr.sub455 = sub i64 %sub.ptr.lhs.cast453, %sub.ptr.rhs.cast454
  %259 = load i8, i8* %multibyte, align 1
  %tobool456 = trunc i8 %259 to i1
  %call457 = call i64 @make_specified_string(i8* %256, i64 -1, i64 %sub.ptr.sub455, i1 zeroext %tobool456)
  store i64 %call457, i64* %result, align 8
  %260 = load i64, i64* %result, align 8
  %call458 = call i64 @builtin_lisp_symbol(i32 389)
  %call459 = call i64 @Ffind_file_name_handler(i64 %260, i64 %call458)
  store i64 %call459, i64* %handler, align 8
  %261 = load i64, i64* %handler, align 8
  %call460 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp461 = icmp eq i64 %261, %call460
  br i1 %cmp461, label %if.end.469, label %if.then.463

if.then.463:                                      ; preds = %while.end.452
  %262 = load i64, i64* %handler, align 8
  %call464 = call i64 @builtin_lisp_symbol(i32 389)
  %263 = load i64, i64* %result, align 8
  %264 = load i64, i64* %default_directory.addr, align 8
  %call465 = call i64 @call3(i64 %262, i64 %call464, i64 %263, i64 %264)
  store i64 %call465, i64* %handled_name, align 8
  %265 = load i64, i64* %handled_name, align 8
  %call466 = call zeroext i1 @STRINGP(i64 %265)
  br i1 %call466, label %if.end.468, label %if.then.467

if.then.467:                                      ; preds = %if.then.463
  call void (i8*, ...) @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i32 0, i32 0)) #8
  unreachable

if.end.468:                                       ; preds = %if.then.463
  %266 = load i64, i64* %handled_name, align 8
  store i64 %266, i64* %result, align 8
  br label %if.end.469

if.end.469:                                       ; preds = %if.end.468, %while.end.452
  br label %do.body.470

do.body.470:                                      ; preds = %if.end.469
  %267 = load i8, i8* %sa_must_free, align 1
  %tobool471 = trunc i8 %267 to i1
  br i1 %tobool471, label %if.then.472, label %if.end.475

if.then.472:                                      ; preds = %do.body.470
  store i8 0, i8* %sa_must_free, align 1
  %268 = load i64, i64* %sa_count, align 8
  %call473 = call i64 @builtin_lisp_symbol(i32 0)
  %call474 = call i64 @unbind_to(i64 %268, i64 %call473)
  br label %if.end.475

if.end.475:                                       ; preds = %if.then.472, %do.body.470
  br label %do.end.476

do.end.476:                                       ; preds = %if.end.475
  %269 = load i64, i64* %result, align 8
  store i64 %269, i64* %retval
  br label %return

return:                                           ; preds = %do.end.476, %do.end.168, %if.then.28, %if.then.7
  %270 = load i64, i64* %retval
  ret i64 %270
}

declare i64 @call3(i64, i64, i64, i64) #1

declare i8* @SDATA(i64) #1

declare i64 @make_unibyte_string(i8*, i64) #1

declare i64 @string_to_multibyte(i64) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #7

declare i8* @egetenv(i8*) #1

declare void @block_input() #1

declare %struct.passwd* @getpwnam(i8*) #1

declare void @unblock_input() #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #7

; Function Attrs: nounwind uwtable
define i64 @Fsubstitute_in_file_name(i64 %filename) #5 {
entry:
  %retval = alloca i64, align 8
  %filename.addr = alloca i64, align 8
  %nm = alloca i8*, align 8
  %p = alloca i8*, align 8
  %x = alloca i8*, align 8
  %endp = alloca i8*, align 8
  %substituted = alloca i8, align 1
  %multibyte = alloca i8, align 1
  %xnm = alloca i8*, align 8
  %handler = alloca i64, align 8
  %handled_name = alloca i64, align 8
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  %result = alloca i64, align 8
  %name = alloca i64, align 8
  %tmp = alloca i64, align 8
  store i64 %filename, i64* %filename.addr, align 8
  store i8 0, i8* %substituted, align 1
  %0 = load i64, i64* %filename.addr, align 8
  call void @CHECK_STRING(i64 %0)
  %1 = load i64, i64* %filename.addr, align 8
  %call = call zeroext i1 @STRING_MULTIBYTE(i64 %1)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %multibyte, align 1
  %2 = load i64, i64* %filename.addr, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 891)
  %call2 = call i64 @Ffind_file_name_handler(i64 %2, i64 %call1)
  store i64 %call2, i64* %handler, align 8
  %3 = load i64, i64* %handler, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %3, %call3
  br i1 %cmp, label %if.end.8, label %if.then

if.then:                                          ; preds = %entry
  %4 = load i64, i64* %handler, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 891)
  %5 = load i64, i64* %filename.addr, align 8
  %call5 = call i64 @call2(i64 %4, i64 %call4, i64 %5)
  store i64 %call5, i64* %handled_name, align 8
  %6 = load i64, i64* %handled_name, align 8
  %call6 = call zeroext i1 @STRINGP(i64 %6)
  br i1 %call6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %7 = load i64, i64* %handled_name, align 8
  store i64 %7, i64* %retval
  br label %return

if.end:                                           ; preds = %if.then
  call void (i8*, ...) @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i32 0, i32 0)) #8
  unreachable

if.end.8:                                         ; preds = %entry
  store i64 16384, i64* %sa_avail, align 8
  %call9 = call i64 @SPECPDL_INDEX()
  store i64 %call9, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  br label %do.body

do.body:                                          ; preds = %if.end.8
  %8 = load i64, i64* %filename.addr, align 8
  %call10 = call i64 @SBYTES(i64 %8)
  %add = add nsw i64 %call10, 1
  %9 = load i64, i64* %sa_avail, align 8
  %cmp11 = icmp sle i64 %add, %9
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body
  %10 = load i64, i64* %filename.addr, align 8
  %call12 = call i64 @SBYTES(i64 %10)
  %add13 = add nsw i64 %call12, 1
  %11 = load i64, i64* %sa_avail, align 8
  %sub = sub nsw i64 %11, %add13
  store i64 %sub, i64* %sa_avail, align 8
  %12 = load i64, i64* %filename.addr, align 8
  %call14 = call i64 @SBYTES(i64 %12)
  %add15 = add nsw i64 %call14, 1
  %13 = alloca i8, i64 %add15
  br label %cond.end

cond.false:                                       ; preds = %do.body
  store i8 1, i8* %sa_must_free, align 1
  %14 = load i64, i64* %filename.addr, align 8
  %call16 = call i64 @SBYTES(i64 %14)
  %add17 = add nsw i64 %call16, 1
  %call18 = call i8* @record_xmalloc(i64 %add17)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %13, %cond.true ], [ %call18, %cond.false ]
  store i8* %cond, i8** %nm, align 8
  %15 = load i8*, i8** %nm, align 8
  %16 = load i64, i64* %filename.addr, align 8
  %call19 = call i8* @SDATA(i64 %16)
  %17 = load i64, i64* %filename.addr, align 8
  %call20 = call i64 @SBYTES(i64 %17)
  %add21 = add nsw i64 %call20, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %call19, i64 %add21, i32 1, i1 false)
  br label %do.end

do.end:                                           ; preds = %cond.end
  %18 = load i8*, i8** %nm, align 8
  %19 = load i64, i64* %filename.addr, align 8
  %call22 = call i64 @SBYTES(i64 %19)
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 %call22
  store i8* %add.ptr, i8** %endp, align 8
  %20 = load i8*, i8** %nm, align 8
  %21 = load i8*, i8** %endp, align 8
  %call23 = call i8* @search_embedded_absfilename(i8* %20, i8* %21)
  store i8* %call23, i8** %p, align 8
  %22 = load i8*, i8** %p, align 8
  %tobool = icmp ne i8* %22, null
  br i1 %tobool, label %if.then.24, label %if.end.35

if.then.24:                                       ; preds = %do.end
  %23 = load i8*, i8** %p, align 8
  %24 = load i8*, i8** %endp, align 8
  %25 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %24 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %25 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %26 = load i8, i8* %multibyte, align 1
  %tobool25 = trunc i8 %26 to i1
  %call26 = call i64 @make_specified_string(i8* %23, i64 -1, i64 %sub.ptr.sub, i1 zeroext %tobool25)
  %call27 = call i64 @Fsubstitute_in_file_name(i64 %call26)
  store i64 %call27, i64* %result, align 8
  br label %do.body.28

do.body.28:                                       ; preds = %if.then.24
  %27 = load i8, i8* %sa_must_free, align 1
  %tobool29 = trunc i8 %27 to i1
  br i1 %tobool29, label %if.then.30, label %if.end.33

if.then.30:                                       ; preds = %do.body.28
  store i8 0, i8* %sa_must_free, align 1
  %28 = load i64, i64* %sa_count, align 8
  %call31 = call i64 @builtin_lisp_symbol(i32 0)
  %call32 = call i64 @unbind_to(i64 %28, i64 %call31)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.30, %do.body.28
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  %29 = load i64, i64* %result, align 8
  store i64 %29, i64* %retval
  br label %return

if.end.35:                                        ; preds = %do.end
  %call36 = call i64 @builtin_lisp_symbol(i32 890)
  %call37 = call i64 @Ffboundp(i64 %call36)
  %call38 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp39 = icmp eq i64 %call37, %call38
  br i1 %cmp39, label %if.end.56, label %if.then.40

if.then.40:                                       ; preds = %if.end.35
  %30 = load i8, i8* %substituted, align 1
  %tobool41 = trunc i8 %30 to i1
  br i1 %tobool41, label %cond.false.43, label %cond.true.42

cond.true.42:                                     ; preds = %if.then.40
  %31 = load i64, i64* %filename.addr, align 8
  br label %cond.end.49

cond.false.43:                                    ; preds = %if.then.40
  %32 = load i8*, i8** %nm, align 8
  %33 = load i8*, i8** %endp, align 8
  %34 = load i8*, i8** %nm, align 8
  %sub.ptr.lhs.cast44 = ptrtoint i8* %33 to i64
  %sub.ptr.rhs.cast45 = ptrtoint i8* %34 to i64
  %sub.ptr.sub46 = sub i64 %sub.ptr.lhs.cast44, %sub.ptr.rhs.cast45
  %35 = load i8, i8* %multibyte, align 1
  %tobool47 = trunc i8 %35 to i1
  %call48 = call i64 @make_specified_string(i8* %32, i64 -1, i64 %sub.ptr.sub46, i1 zeroext %tobool47)
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.false.43, %cond.true.42
  %cond50 = phi i64 [ %31, %cond.true.42 ], [ %call48, %cond.false.43 ]
  store i64 %cond50, i64* %name, align 8
  %call51 = call i64 @builtin_lisp_symbol(i32 890)
  %36 = load i64, i64* %name, align 8
  %call52 = call i64 @call1(i64 %call51, i64 %36)
  store i64 %call52, i64* %tmp, align 8
  %37 = load i64, i64* %tmp, align 8
  call void @CHECK_STRING(i64 %37)
  %38 = load i64, i64* %tmp, align 8
  %39 = load i64, i64* %name, align 8
  %cmp53 = icmp eq i64 %38, %39
  br i1 %cmp53, label %if.end.55, label %if.then.54

if.then.54:                                       ; preds = %cond.end.49
  store i8 1, i8* %substituted, align 1
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %cond.end.49
  %40 = load i64, i64* %tmp, align 8
  store i64 %40, i64* %filename.addr, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.end.35
  %41 = load i8, i8* %substituted, align 1
  %tobool57 = trunc i8 %41 to i1
  br i1 %tobool57, label %if.end.66, label %if.then.58

if.then.58:                                       ; preds = %if.end.56
  br label %do.body.59

do.body.59:                                       ; preds = %if.then.58
  %42 = load i8, i8* %sa_must_free, align 1
  %tobool60 = trunc i8 %42 to i1
  br i1 %tobool60, label %if.then.61, label %if.end.64

if.then.61:                                       ; preds = %do.body.59
  store i8 0, i8* %sa_must_free, align 1
  %43 = load i64, i64* %sa_count, align 8
  %call62 = call i64 @builtin_lisp_symbol(i32 0)
  %call63 = call i64 @unbind_to(i64 %43, i64 %call62)
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.61, %do.body.59
  br label %do.end.65

do.end.65:                                        ; preds = %if.end.64
  %44 = load i64, i64* %filename.addr, align 8
  store i64 %44, i64* %retval
  br label %return

if.end.66:                                        ; preds = %if.end.56
  %45 = load i64, i64* %filename.addr, align 8
  %call67 = call i8* @SSDATA(i64 %45)
  store i8* %call67, i8** %xnm, align 8
  %46 = load i8*, i8** %xnm, align 8
  %47 = load i64, i64* %filename.addr, align 8
  %call68 = call i64 @SBYTES(i64 %47)
  %add.ptr69 = getelementptr inbounds i8, i8* %46, i64 %call68
  store i8* %add.ptr69, i8** %x, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.66
  %48 = load i8*, i8** %xnm, align 8
  %49 = load i8*, i8** %x, align 8
  %call70 = call i8* @search_embedded_absfilename(i8* %48, i8* %49)
  store i8* %call70, i8** %p, align 8
  %cmp71 = icmp ne i8* %call70, null
  br i1 %cmp71, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %50 = load i8*, i8** %p, align 8
  store i8* %50, i8** %xnm, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %51 = load i8*, i8** %xnm, align 8
  %52 = load i64, i64* %filename.addr, align 8
  %call72 = call i8* @SSDATA(i64 %52)
  %cmp73 = icmp ne i8* %51, %call72
  br i1 %cmp73, label %if.then.74, label %if.end.80

if.then.74:                                       ; preds = %while.end
  %53 = load i8*, i8** %xnm, align 8
  %54 = load i8*, i8** %x, align 8
  %55 = load i8*, i8** %xnm, align 8
  %sub.ptr.lhs.cast75 = ptrtoint i8* %54 to i64
  %sub.ptr.rhs.cast76 = ptrtoint i8* %55 to i64
  %sub.ptr.sub77 = sub i64 %sub.ptr.lhs.cast75, %sub.ptr.rhs.cast76
  %56 = load i8, i8* %multibyte, align 1
  %tobool78 = trunc i8 %56 to i1
  %call79 = call i64 @make_specified_string(i8* %53, i64 -1, i64 %sub.ptr.sub77, i1 zeroext %tobool78)
  store i64 %call79, i64* %filename.addr, align 8
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.74, %while.end
  br label %do.body.81

do.body.81:                                       ; preds = %if.end.80
  %57 = load i8, i8* %sa_must_free, align 1
  %tobool82 = trunc i8 %57 to i1
  br i1 %tobool82, label %if.then.83, label %if.end.86

if.then.83:                                       ; preds = %do.body.81
  store i8 0, i8* %sa_must_free, align 1
  %58 = load i64, i64* %sa_count, align 8
  %call84 = call i64 @builtin_lisp_symbol(i32 0)
  %call85 = call i64 @unbind_to(i64 %58, i64 %call84)
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.83, %do.body.81
  br label %do.end.87

do.end.87:                                        ; preds = %if.end.86
  %59 = load i64, i64* %filename.addr, align 8
  store i64 %59, i64* %retval
  br label %return

return:                                           ; preds = %do.end.87, %do.end.65, %do.end.34, %if.then.7
  %60 = load i64, i64* %retval
  ret i64 %60
}

; Function Attrs: nounwind uwtable
define internal i8* @search_embedded_absfilename(i8* %nm, i8* %endp) #5 {
entry:
  %retval = alloca i8*, align 8
  %nm.addr = alloca i8*, align 8
  %endp.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  %s = alloca i8*, align 8
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  %o = alloca i8*, align 8
  %pw = alloca %struct.passwd*, align 8
  store i8* %nm, i8** %nm.addr, align 8
  store i8* %endp, i8** %endp.addr, align 8
  %0 = load i8*, i8** %nm.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 1
  store i8* %add.ptr, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.53, %entry
  %1 = load i8*, i8** %p, align 8
  %2 = load i8*, i8** %endp.addr, align 8
  %cmp = icmp ult i8* %1, %2
  br i1 %cmp, label %for.body, label %for.end.55

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 -1
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp1 = icmp eq i32 %conv, 47
  br i1 %cmp1, label %land.lhs.true, label %if.end.52

land.lhs.true:                                    ; preds = %for.body
  %5 = load i8*, i8** %p, align 8
  %call = call zeroext i1 @file_name_absolute_p(i8* %5)
  br i1 %call, label %if.then, label %if.end.52

if.then:                                          ; preds = %land.lhs.true
  %6 = load i8*, i8** %p, align 8
  store i8* %6, i8** %s, align 8
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %if.then
  %7 = load i8*, i8** %s, align 8
  %8 = load i8, i8* %7, align 1
  %conv5 = sext i8 %8 to i32
  %tobool = icmp ne i32 %conv5, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.4
  %9 = load i8*, i8** %s, align 8
  %10 = load i8, i8* %9, align 1
  %conv6 = sext i8 %10 to i32
  %cmp7 = icmp eq i32 %conv6, 47
  %lnot = xor i1 %cmp7, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.4
  %11 = phi i1 [ false, %for.cond.4 ], [ %lnot, %land.rhs ]
  br i1 %11, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body.9
  %12 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %for.cond.4

for.end:                                          ; preds = %land.end
  %13 = load i8*, i8** %p, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %13, i64 0
  %14 = load i8, i8* %arrayidx10, align 1
  %conv11 = sext i8 %14 to i32
  %cmp12 = icmp eq i32 %conv11, 126
  br i1 %cmp12, label %land.lhs.true.14, label %if.else

land.lhs.true.14:                                 ; preds = %for.end
  %15 = load i8*, i8** %s, align 8
  %16 = load i8*, i8** %p, align 8
  %add.ptr15 = getelementptr inbounds i8, i8* %16, i64 1
  %cmp16 = icmp ugt i8* %15, %add.ptr15
  br i1 %cmp16, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %land.lhs.true.14
  store i64 16384, i64* %sa_avail, align 8
  %call19 = call i64 @SPECPDL_INDEX()
  store i64 %call19, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  %17 = load i8*, i8** %s, align 8
  %18 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %17 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %18 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add nsw i64 %sub.ptr.sub, 1
  %19 = load i64, i64* %sa_avail, align 8
  %cmp20 = icmp sle i64 %add, %19
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.18
  %20 = load i8*, i8** %s, align 8
  %21 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast22 = ptrtoint i8* %20 to i64
  %sub.ptr.rhs.cast23 = ptrtoint i8* %21 to i64
  %sub.ptr.sub24 = sub i64 %sub.ptr.lhs.cast22, %sub.ptr.rhs.cast23
  %add25 = add nsw i64 %sub.ptr.sub24, 1
  %22 = load i64, i64* %sa_avail, align 8
  %sub = sub nsw i64 %22, %add25
  store i64 %sub, i64* %sa_avail, align 8
  %23 = load i8*, i8** %s, align 8
  %24 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast26 = ptrtoint i8* %23 to i64
  %sub.ptr.rhs.cast27 = ptrtoint i8* %24 to i64
  %sub.ptr.sub28 = sub i64 %sub.ptr.lhs.cast26, %sub.ptr.rhs.cast27
  %add29 = add nsw i64 %sub.ptr.sub28, 1
  %25 = alloca i8, i64 %add29
  br label %cond.end

cond.false:                                       ; preds = %if.then.18
  store i8 1, i8* %sa_must_free, align 1
  %26 = load i8*, i8** %s, align 8
  %27 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast30 = ptrtoint i8* %26 to i64
  %sub.ptr.rhs.cast31 = ptrtoint i8* %27 to i64
  %sub.ptr.sub32 = sub i64 %sub.ptr.lhs.cast30, %sub.ptr.rhs.cast31
  %add33 = add nsw i64 %sub.ptr.sub32, 1
  %call34 = call i8* @record_xmalloc(i64 %add33)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %25, %cond.true ], [ %call34, %cond.false ]
  store i8* %cond, i8** %o, align 8
  %28 = load i8*, i8** %o, align 8
  %29 = load i8*, i8** %p, align 8
  %30 = load i8*, i8** %s, align 8
  %31 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast35 = ptrtoint i8* %30 to i64
  %sub.ptr.rhs.cast36 = ptrtoint i8* %31 to i64
  %sub.ptr.sub37 = sub i64 %sub.ptr.lhs.cast35, %sub.ptr.rhs.cast36
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 %sub.ptr.sub37, i32 1, i1 false)
  %32 = load i8*, i8** %s, align 8
  %33 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast38 = ptrtoint i8* %32 to i64
  %sub.ptr.rhs.cast39 = ptrtoint i8* %33 to i64
  %sub.ptr.sub40 = sub i64 %sub.ptr.lhs.cast38, %sub.ptr.rhs.cast39
  %34 = load i8*, i8** %o, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %34, i64 %sub.ptr.sub40
  store i8 0, i8* %arrayidx41, align 1
  call void @block_input()
  %35 = load i8*, i8** %o, align 8
  %add.ptr42 = getelementptr inbounds i8, i8* %35, i64 1
  %call43 = call %struct.passwd* @getpwnam(i8* %add.ptr42)
  store %struct.passwd* %call43, %struct.passwd** %pw, align 8
  call void @unblock_input()
  br label %do.body

do.body:                                          ; preds = %cond.end
  %36 = load i8, i8* %sa_must_free, align 1
  %tobool44 = trunc i8 %36 to i1
  br i1 %tobool44, label %if.then.45, label %if.end

if.then.45:                                       ; preds = %do.body
  store i8 0, i8* %sa_must_free, align 1
  %37 = load i64, i64* %sa_count, align 8
  %call46 = call i64 @builtin_lisp_symbol(i32 0)
  %call47 = call i64 @unbind_to(i64 %37, i64 %call46)
  br label %if.end

if.end:                                           ; preds = %if.then.45, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %38 = load %struct.passwd*, %struct.passwd** %pw, align 8
  %tobool48 = icmp ne %struct.passwd* %38, null
  br i1 %tobool48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %do.end
  %39 = load i8*, i8** %p, align 8
  store i8* %39, i8** %retval
  br label %return

if.end.50:                                        ; preds = %do.end
  br label %if.end.51

if.else:                                          ; preds = %land.lhs.true.14, %for.end
  %40 = load i8*, i8** %p, align 8
  store i8* %40, i8** %retval
  br label %return

if.end.51:                                        ; preds = %if.end.50
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %land.lhs.true, %for.body
  br label %for.inc.53

for.inc.53:                                       ; preds = %if.end.52
  %41 = load i8*, i8** %p, align 8
  %incdec.ptr54 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr54, i8** %p, align 8
  br label %for.cond

for.end.55:                                       ; preds = %for.cond
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %for.end.55, %if.else, %if.then.49
  %42 = load i8*, i8** %retval
  ret i8* %42
}

declare i64 @Ffboundp(i64) #1

declare i64 @call1(i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @expand_and_dir_to_file(i64 %filename, i64 %defdir) #5 {
entry:
  %filename.addr = alloca i64, align 8
  %defdir.addr = alloca i64, align 8
  %absname = alloca i64, align 8
  store i64 %filename, i64* %filename.addr, align 8
  store i64 %defdir, i64* %defdir.addr, align 8
  %0 = load i64, i64* %filename.addr, align 8
  %1 = load i64, i64* %defdir.addr, align 8
  %call = call i64 @Fexpand_file_name(i64 %0, i64 %1)
  store i64 %call, i64* %absname, align 8
  %2 = load i64, i64* %absname, align 8
  %call1 = call i64 @SCHARS(i64 %2)
  %cmp = icmp sgt i64 %call1, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i64, i64* %absname, align 8
  %4 = load i64, i64* %absname, align 8
  %call2 = call i64 @SBYTES(i64 %4)
  %sub = sub nsw i64 %call2, 1
  %call3 = call zeroext i8 @SREF(i64 %3, i64 %sub)
  %conv = zext i8 %call3 to i32
  %cmp4 = icmp eq i32 %conv, 47
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load i64, i64* %absname, align 8
  %call6 = call i64 @Fdirectory_file_name(i64 %5)
  store i64 %call6, i64* %absname, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %6 = load i64, i64* %absname, align 8
  ret i64 %6
}

declare i64 @SCHARS(i64) #1

declare zeroext i8 @SREF(i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fcopy_file(i64 %file, i64 %newname, i64 %ok_if_already_exists, i64 %keep_time, i64 %preserve_uid_gid, i64 %preserve_permissions) #5 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca i64, align 8
  %newname.addr = alloca i64, align 8
  %ok_if_already_exists.addr = alloca i64, align 8
  %keep_time.addr = alloca i64, align 8
  %preserve_uid_gid.addr = alloca i64, align 8
  %preserve_permissions.addr = alloca i64, align 8
  %handler = alloca i64, align 8
  %count = alloca i64, align 8
  %encoded_file = alloca i64, align 8
  %encoded_newname = alloca i64, align 8
  %already_exists = alloca i8, align 1
  %new_mask = alloca i32, align 4
  %ifd = alloca i32, align 4
  %ofd = alloca i32, align 4
  %st = alloca %struct.stat, align 8
  %oldsize = alloca i64, align 8
  %newsize = alloca i64, align 8
  %out_st = alloca %struct.stat, align 8
  %buf = alloca [16384 x i8], align 16
  %n = alloca i64, align 8
  %preserved_permissions = alloca i32, align 4
  %default_permissions = alloca i32, align 4
  %atime = alloca %struct.timespec, align 8
  %mtime = alloca %struct.timespec, align 8
  store i64 %file, i64* %file.addr, align 8
  store i64 %newname, i64* %newname.addr, align 8
  store i64 %ok_if_already_exists, i64* %ok_if_already_exists.addr, align 8
  store i64 %keep_time, i64* %keep_time.addr, align 8
  store i64 %preserve_uid_gid, i64* %preserve_uid_gid.addr, align 8
  store i64 %preserve_permissions, i64* %preserve_permissions.addr, align 8
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %count, align 8
  store i8 0, i8* %already_exists, align 1
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* %encoded_newname, align 8
  store i64 %call1, i64* %encoded_file, align 8
  %0 = load i64, i64* %file.addr, align 8
  call void @CHECK_STRING(i64 %0)
  %1 = load i64, i64* %newname.addr, align 8
  call void @CHECK_STRING(i64 %1)
  %2 = load i64, i64* %newname.addr, align 8
  %call2 = call i64 @Ffile_directory_p(i64 %2)
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %call2, %call3
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %file.addr, align 8
  %call4 = call i64 @Ffile_name_nondirectory(i64 %3)
  %4 = load i64, i64* %newname.addr, align 8
  %call5 = call i64 @Fexpand_file_name(i64 %call4, i64 %4)
  store i64 %call5, i64* %newname.addr, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load i64, i64* %newname.addr, align 8
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  %call7 = call i64 @Fexpand_file_name(i64 %5, i64 %call6)
  store i64 %call7, i64* %newname.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i64, i64* %file.addr, align 8
  %call8 = call i64 @builtin_lisp_symbol(i32 0)
  %call9 = call i64 @Fexpand_file_name(i64 %6, i64 %call8)
  store i64 %call9, i64* %file.addr, align 8
  %7 = load i64, i64* %file.addr, align 8
  %call10 = call i64 @builtin_lisp_symbol(i32 299)
  %call11 = call i64 @Ffind_file_name_handler(i64 %7, i64 %call10)
  store i64 %call11, i64* %handler, align 8
  %8 = load i64, i64* %handler, align 8
  %call12 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp13 = icmp eq i64 %8, %call12
  br i1 %cmp13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %if.end
  %9 = load i64, i64* %newname.addr, align 8
  %call15 = call i64 @builtin_lisp_symbol(i32 299)
  %call16 = call i64 @Ffind_file_name_handler(i64 %9, i64 %call15)
  store i64 %call16, i64* %handler, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %if.end
  %10 = load i64, i64* %handler, align 8
  %call18 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp19 = icmp eq i64 %10, %call18
  br i1 %cmp19, label %if.end.23, label %if.then.20

if.then.20:                                       ; preds = %if.end.17
  %11 = load i64, i64* %handler, align 8
  %call21 = call i64 @builtin_lisp_symbol(i32 299)
  %12 = load i64, i64* %file.addr, align 8
  %13 = load i64, i64* %newname.addr, align 8
  %14 = load i64, i64* %ok_if_already_exists.addr, align 8
  %15 = load i64, i64* %keep_time.addr, align 8
  %16 = load i64, i64* %preserve_uid_gid.addr, align 8
  %17 = load i64, i64* %preserve_permissions.addr, align 8
  %call22 = call i64 @call7(i64 %11, i64 %call21, i64 %12, i64 %13, i64 %14, i64 %15, i64 %16, i64 %17)
  store i64 %call22, i64* %retval
  br label %return

if.end.23:                                        ; preds = %if.end.17
  %18 = load i64, i64* %file.addr, align 8
  %call24 = call i64 @encode_file_name(i64 %18)
  store i64 %call24, i64* %encoded_file, align 8
  %19 = load i64, i64* %newname.addr, align 8
  %call25 = call i64 @encode_file_name(i64 %19)
  store i64 %call25, i64* %encoded_newname, align 8
  store i8 1, i8* @immediate_quit, align 1
  %20 = load i64, i64* %encoded_file, align 8
  %call26 = call i8* @SSDATA(i64 %20)
  %call27 = call i32 @emacs_open(i8* %call26, i32 0, i32 0)
  store i32 %call27, i32* %ifd, align 4
  store i8 0, i8* @immediate_quit, align 1
  %21 = load i32, i32* %ifd, align 4
  %cmp28 = icmp slt i32 %21, 0
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.23
  %22 = load i64, i64* %file.addr, align 8
  call void @report_file_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), i64 %22) #8
  unreachable

if.end.30:                                        ; preds = %if.end.23
  %23 = load i32, i32* %ifd, align 4
  call void @record_unwind_protect_int(void (i32)* @close_file_unwind, i32 %23)
  %24 = load i32, i32* %ifd, align 4
  %call31 = call i32 @fstat(i32 %24, %struct.stat* %st) #6
  %cmp32 = icmp ne i32 %call31, 0
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.30
  %25 = load i64, i64* %file.addr, align 8
  call void @report_file_error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i64 %25) #8
  unreachable

if.end.34:                                        ; preds = %if.end.30
  %26 = load i64, i64* %preserve_permissions.addr, align 8
  %call35 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp36 = icmp eq i64 %26, %call35
  br i1 %cmp36, label %if.end.38, label %if.then.37

if.then.37:                                       ; preds = %if.end.34
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.end.34
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 3
  %27 = load i32, i32* %st_mode, align 4
  %and = and i32 %27, 61440
  %cmp39 = icmp eq i32 %and, 32768
  br i1 %cmp39, label %if.end.44, label %if.then.40

if.then.40:                                       ; preds = %if.end.38
  %28 = load i64, i64* %file.addr, align 8
  %st_mode41 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 3
  %29 = load i32, i32* %st_mode41, align 4
  %and42 = and i32 %29, 61440
  %cmp43 = icmp eq i32 %and42, 16384
  %cond = select i1 %cmp43, i32 21, i32 22
  call void @report_file_errno(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i64 %28, i32 %cond) #8
  unreachable

if.end.44:                                        ; preds = %if.end.38
  %st_mode45 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 3
  %30 = load i32, i32* %st_mode45, align 4
  %31 = load i64, i64* %preserve_uid_gid.addr, align 8
  %call46 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp47 = icmp eq i64 %31, %call46
  %lnot = xor i1 %cmp47, true
  %cond48 = select i1 %lnot, i32 448, i32 511
  %and49 = and i32 %30, %cond48
  store i32 %and49, i32* %new_mask, align 4
  %32 = load i64, i64* %encoded_newname, align 8
  %call50 = call i8* @SSDATA(i64 %32)
  %33 = load i32, i32* %new_mask, align 4
  %call51 = call i32 @emacs_open(i8* %call50, i32 193, i32 %33)
  store i32 %call51, i32* %ofd, align 4
  %34 = load i32, i32* %ofd, align 4
  %cmp52 = icmp slt i32 %34, 0
  br i1 %cmp52, label %land.lhs.true, label %if.end.71

land.lhs.true:                                    ; preds = %if.end.44
  %call53 = call i32* @__errno_location() #9
  %35 = load i32, i32* %call53, align 4
  %cmp54 = icmp eq i32 %35, 17
  br i1 %cmp54, label %if.then.55, label %if.end.71

if.then.55:                                       ; preds = %land.lhs.true
  %36 = load i64, i64* %ok_if_already_exists.addr, align 8
  %call56 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp57 = icmp eq i64 %36, %call56
  br i1 %cmp57, label %if.then.62, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.55
  %37 = load i64, i64* %ok_if_already_exists.addr, align 8
  %and58 = and i64 %37, 7
  %conv = trunc i64 %and58 to i32
  %and59 = and i32 %conv, -5
  %cmp60 = icmp eq i32 %and59, 2
  br i1 %cmp60, label %if.then.62, label %if.end.68

if.then.62:                                       ; preds = %lor.lhs.false, %if.then.55
  %38 = load i64, i64* %newname.addr, align 8
  %39 = load i64, i64* %ok_if_already_exists.addr, align 8
  %and63 = and i64 %39, 7
  %conv64 = trunc i64 %and63 to i32
  %and65 = and i32 %conv64, -5
  %cmp66 = icmp eq i32 %and65, 2
  call void @barf_or_query_if_file_exists(i64 %38, i1 zeroext true, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i1 zeroext %cmp66, i1 zeroext false)
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.62, %lor.lhs.false
  store i8 1, i8* %already_exists, align 1
  %40 = load i64, i64* %encoded_newname, align 8
  %call69 = call i8* @SSDATA(i64 %40)
  %call70 = call i32 @emacs_open(i8* %call69, i32 1, i32 0)
  store i32 %call70, i32* %ofd, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.68, %land.lhs.true, %if.end.44
  %41 = load i32, i32* %ofd, align 4
  %cmp72 = icmp slt i32 %41, 0
  br i1 %cmp72, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %if.end.71
  %42 = load i64, i64* %newname.addr, align 8
  call void @report_file_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i64 %42) #8
  unreachable

if.end.75:                                        ; preds = %if.end.71
  %43 = load i32, i32* %ofd, align 4
  call void @record_unwind_protect_int(void (i32)* @close_file_unwind, i32 %43)
  store i64 0, i64* %oldsize, align 8
  store i64 0, i64* %newsize, align 8
  %44 = load i8, i8* %already_exists, align 1
  %tobool = trunc i8 %44 to i1
  br i1 %tobool, label %if.then.76, label %if.end.98

if.then.76:                                       ; preds = %if.end.75
  %45 = load i32, i32* %ofd, align 4
  %call77 = call i32 @fstat(i32 %45, %struct.stat* %out_st) #6
  %cmp78 = icmp ne i32 %call77, 0
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %if.then.76
  %46 = load i64, i64* %newname.addr, align 8
  call void @report_file_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0), i64 %46) #8
  unreachable

if.end.81:                                        ; preds = %if.then.76
  %st_dev = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 0
  %47 = load i64, i64* %st_dev, align 8
  %st_dev82 = getelementptr inbounds %struct.stat, %struct.stat* %out_st, i32 0, i32 0
  %48 = load i64, i64* %st_dev82, align 8
  %cmp83 = icmp eq i64 %47, %48
  br i1 %cmp83, label %land.lhs.true.85, label %if.end.91

land.lhs.true.85:                                 ; preds = %if.end.81
  %st_ino = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 1
  %49 = load i64, i64* %st_ino, align 8
  %st_ino86 = getelementptr inbounds %struct.stat, %struct.stat* %out_st, i32 0, i32 1
  %50 = load i64, i64* %st_ino86, align 8
  %cmp87 = icmp eq i64 %49, %50
  br i1 %cmp87, label %if.then.89, label %if.end.91

if.then.89:                                       ; preds = %land.lhs.true.85
  %51 = load i64, i64* %file.addr, align 8
  %52 = load i64, i64* %newname.addr, align 8
  %call90 = call i64 @list2(i64 %51, i64 %52)
  call void @report_file_errno(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i32 0, i32 0), i64 %call90, i32 0) #8
  unreachable

if.end.91:                                        ; preds = %land.lhs.true.85, %if.end.81
  %st_mode92 = getelementptr inbounds %struct.stat, %struct.stat* %out_st, i32 0, i32 3
  %53 = load i32, i32* %st_mode92, align 4
  %and93 = and i32 %53, 61440
  %cmp94 = icmp eq i32 %and93, 32768
  br i1 %cmp94, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %if.end.91
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %out_st, i32 0, i32 8
  %54 = load i64, i64* %st_size, align 8
  store i64 %54, i64* %oldsize, align 8
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.96, %if.end.91
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.end.75
  store i8 1, i8* @immediate_quit, align 1
  br label %do.body

do.body:                                          ; preds = %if.end.98
  %55 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call99 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp100 = icmp eq i64 %55, %call99
  br i1 %cmp100, label %if.else.107, label %land.lhs.true.102

land.lhs.true.102:                                ; preds = %do.body
  %56 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call103 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp104 = icmp eq i64 %56, %call103
  br i1 %cmp104, label %if.then.106, label %if.else.107

if.then.106:                                      ; preds = %land.lhs.true.102
  call void @process_quit_flag()
  br label %if.end.111

if.else.107:                                      ; preds = %land.lhs.true.102, %do.body
  %57 = load volatile i8, i8* @pending_signals, align 1
  %tobool108 = trunc i8 %57 to i1
  br i1 %tobool108, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %if.else.107
  call void @process_pending_signals()
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.109, %if.else.107
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %if.then.106
  br label %do.end

do.end:                                           ; preds = %if.end.111
  br label %while.body

while.body:                                       ; preds = %do.end, %if.end.126
  %58 = load i32, i32* %ifd, align 4
  %arraydecay = getelementptr inbounds [16384 x i8], [16384 x i8]* %buf, i32 0, i32 0
  %call112 = call i64 @emacs_read(i32 %58, i8* %arraydecay, i64 16384)
  store i64 %call112, i64* %n, align 8
  %59 = load i64, i64* %n, align 8
  %cmp113 = icmp slt i64 %59, 0
  br i1 %cmp113, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %while.body
  %60 = load i64, i64* %file.addr, align 8
  call void @report_file_error(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i64 %60) #8
  unreachable

if.end.116:                                       ; preds = %while.body
  %61 = load i64, i64* %n, align 8
  %cmp117 = icmp eq i64 %61, 0
  br i1 %cmp117, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %if.end.116
  br label %while.end

if.end.120:                                       ; preds = %if.end.116
  %62 = load i32, i32* %ofd, align 4
  %arraydecay121 = getelementptr inbounds [16384 x i8], [16384 x i8]* %buf, i32 0, i32 0
  %63 = load i64, i64* %n, align 8
  %call122 = call i64 @emacs_write_sig(i32 %62, i8* %arraydecay121, i64 %63)
  %64 = load i64, i64* %n, align 8
  %cmp123 = icmp ne i64 %call122, %64
  br i1 %cmp123, label %if.then.125, label %if.end.126

if.then.125:                                      ; preds = %if.end.120
  %65 = load i64, i64* %newname.addr, align 8
  call void @report_file_error(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i64 %65) #8
  unreachable

if.end.126:                                       ; preds = %if.end.120
  %66 = load i64, i64* %n, align 8
  %67 = load i64, i64* %newsize, align 8
  %add = add nsw i64 %67, %66
  store i64 %add, i64* %newsize, align 8
  br label %while.body

while.end:                                        ; preds = %if.then.119
  %68 = load i64, i64* %newsize, align 8
  %69 = load i64, i64* %oldsize, align 8
  %cmp127 = icmp slt i64 %68, %69
  br i1 %cmp127, label %land.lhs.true.129, label %if.end.134

land.lhs.true.129:                                ; preds = %while.end
  %70 = load i32, i32* %ofd, align 4
  %71 = load i64, i64* %newsize, align 8
  %call130 = call i32 @ftruncate(i32 %70, i64 %71) #6
  %cmp131 = icmp ne i32 %call130, 0
  br i1 %cmp131, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %land.lhs.true.129
  %72 = load i64, i64* %newname.addr, align 8
  call void @report_file_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0), i64 %72) #8
  unreachable

if.end.134:                                       ; preds = %land.lhs.true.129, %while.end
  store i8 0, i8* @immediate_quit, align 1
  %st_mode135 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 3
  %73 = load i32, i32* %st_mode135, align 4
  %and136 = and i32 %73, 4095
  store i32 %and136, i32* %preserved_permissions, align 4
  %st_mode137 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 3
  %74 = load i32, i32* %st_mode137, align 4
  %and138 = and i32 %74, 511
  %75 = load i32, i32* @realmask, align 4
  %neg = xor i32 %75, -1
  %and139 = and i32 %and138, %neg
  store i32 %and139, i32* %default_permissions, align 4
  %76 = load i64, i64* %preserve_uid_gid.addr, align 8
  %call140 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp141 = icmp eq i64 %76, %call140
  br i1 %cmp141, label %if.end.164, label %if.then.143

if.then.143:                                      ; preds = %if.end.134
  %77 = load i32, i32* %ofd, align 4
  %st_uid = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 4
  %78 = load i32, i32* %st_uid, align 4
  %st_gid = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 5
  %79 = load i32, i32* %st_gid, align 4
  %call144 = call i32 @fchown(i32 %77, i32 %78, i32 %79) #6
  %cmp145 = icmp ne i32 %call144, 0
  br i1 %cmp145, label %if.then.147, label %if.end.163

if.then.147:                                      ; preds = %if.then.143
  %80 = load i32, i32* %ofd, align 4
  %st_gid148 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 5
  %81 = load i32, i32* %st_gid148, align 4
  %call149 = call i32 @fchown(i32 %80, i32 -1, i32 %81) #6
  %cmp150 = icmp eq i32 %call149, 0
  br i1 %cmp150, label %if.then.152, label %if.else.154

if.then.152:                                      ; preds = %if.then.147
  %82 = load i32, i32* %preserved_permissions, align 4
  %and153 = and i32 %82, -2049
  store i32 %and153, i32* %preserved_permissions, align 4
  br label %if.end.162

if.else.154:                                      ; preds = %if.then.147
  %83 = load i32, i32* %preserved_permissions, align 4
  %and155 = and i32 %83, -3073
  store i32 %and155, i32* %preserved_permissions, align 4
  %84 = load i32, i32* %preserved_permissions, align 4
  %and156 = and i32 %84, -57
  store i32 %and156, i32* %preserved_permissions, align 4
  %85 = load i32, i32* %preserved_permissions, align 4
  %and157 = and i32 %85, 7
  %shl = shl i32 %and157, 3
  %86 = load i32, i32* %preserved_permissions, align 4
  %or = or i32 %86, %shl
  store i32 %or, i32* %preserved_permissions, align 4
  %87 = load i32, i32* %default_permissions, align 4
  %and158 = and i32 %87, -57
  store i32 %and158, i32* %default_permissions, align 4
  %88 = load i32, i32* %default_permissions, align 4
  %and159 = and i32 %88, 7
  %shl160 = shl i32 %and159, 3
  %89 = load i32, i32* %default_permissions, align 4
  %or161 = or i32 %89, %shl160
  store i32 %or161, i32* %default_permissions, align 4
  br label %if.end.162

if.end.162:                                       ; preds = %if.else.154, %if.then.152
  br label %if.end.163

if.end.163:                                       ; preds = %if.end.162, %if.then.143
  br label %if.end.164

if.end.164:                                       ; preds = %if.end.163, %if.end.134
  %90 = load i64, i64* %preserve_permissions.addr, align 8
  %call165 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp166 = icmp eq i64 %90, %call165
  br i1 %cmp166, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end.164
  %91 = load i64, i64* %encoded_file, align 8
  %call168 = call i8* @SSDATA(i64 %91)
  %92 = load i32, i32* %ifd, align 4
  %93 = load i64, i64* %encoded_newname, align 8
  %call169 = call i8* @SSDATA(i64 %93)
  %94 = load i32, i32* %ofd, align 4
  %95 = load i32, i32* %preserved_permissions, align 4
  %call170 = call i32 @qcopy_acl(i8* %call168, i32 %92, i8* %call169, i32 %94, i32 %95)
  br label %cond.end.182

cond.false:                                       ; preds = %if.end.164
  %96 = load i8, i8* %already_exists, align 1
  %tobool171 = trunc i8 %96 to i1
  br i1 %tobool171, label %cond.true.178, label %lor.lhs.false.173

lor.lhs.false.173:                                ; preds = %cond.false
  %97 = load i32, i32* %new_mask, align 4
  %98 = load i32, i32* @realmask, align 4
  %neg174 = xor i32 %98, -1
  %and175 = and i32 %97, %neg174
  %99 = load i32, i32* %default_permissions, align 4
  %cmp176 = icmp eq i32 %and175, %99
  br i1 %cmp176, label %cond.true.178, label %cond.false.179

cond.true.178:                                    ; preds = %lor.lhs.false.173, %cond.false
  br label %cond.end

cond.false.179:                                   ; preds = %lor.lhs.false.173
  %100 = load i32, i32* %ofd, align 4
  %101 = load i32, i32* %default_permissions, align 4
  %call180 = call i32 @fchmod(i32 %100, i32 %101) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false.179, %cond.true.178
  %cond181 = phi i32 [ 0, %cond.true.178 ], [ %call180, %cond.false.179 ]
  br label %cond.end.182

cond.end.182:                                     ; preds = %cond.end, %cond.true
  %cond183 = phi i32 [ %call170, %cond.true ], [ %cond181, %cond.end ]
  switch i32 %cond183, label %sw.epilog [
    i32 -2, label %sw.bb
    i32 -1, label %sw.bb.184
  ]

sw.bb:                                            ; preds = %cond.end.182
  %102 = load i64, i64* %file.addr, align 8
  call void @report_file_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0), i64 %102) #8
  unreachable

sw.bb.184:                                        ; preds = %cond.end.182
  %103 = load i64, i64* %newname.addr, align 8
  call void @report_file_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0), i64 %103) #8
  unreachable

sw.epilog:                                        ; preds = %cond.end.182
  %104 = load i64, i64* %keep_time.addr, align 8
  %call185 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp186 = icmp eq i64 %104, %call185
  br i1 %cmp186, label %if.end.199, label %if.then.188

if.then.188:                                      ; preds = %sw.epilog
  %call189 = call { i64, i64 } @get_stat_atime(%struct.stat* %st) #10
  %105 = bitcast %struct.timespec* %atime to { i64, i64 }*
  %106 = getelementptr { i64, i64 }, { i64, i64 }* %105, i32 0, i32 0
  %107 = extractvalue { i64, i64 } %call189, 0
  store i64 %107, i64* %106, align 8
  %108 = getelementptr { i64, i64 }, { i64, i64 }* %105, i32 0, i32 1
  %109 = extractvalue { i64, i64 } %call189, 1
  store i64 %109, i64* %108, align 8
  %call190 = call { i64, i64 } @get_stat_mtime(%struct.stat* %st) #10
  %110 = bitcast %struct.timespec* %mtime to { i64, i64 }*
  %111 = getelementptr { i64, i64 }, { i64, i64 }* %110, i32 0, i32 0
  %112 = extractvalue { i64, i64 } %call190, 0
  store i64 %112, i64* %111, align 8
  %113 = getelementptr { i64, i64 }, { i64, i64 }* %110, i32 0, i32 1
  %114 = extractvalue { i64, i64 } %call190, 1
  store i64 %114, i64* %113, align 8
  %115 = load i32, i32* %ofd, align 4
  %116 = load i64, i64* %encoded_newname, align 8
  %call191 = call i8* @SSDATA(i64 %116)
  %117 = bitcast %struct.timespec* %atime to { i64, i64 }*
  %118 = getelementptr { i64, i64 }, { i64, i64 }* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 1
  %120 = getelementptr { i64, i64 }, { i64, i64 }* %117, i32 0, i32 1
  %121 = load i64, i64* %120, align 1
  %122 = bitcast %struct.timespec* %mtime to { i64, i64 }*
  %123 = getelementptr { i64, i64 }, { i64, i64 }* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 1
  %125 = getelementptr { i64, i64 }, { i64, i64 }* %122, i32 0, i32 1
  %126 = load i64, i64* %125, align 1
  %call192 = call i32 @set_file_times(i32 %115, i8* %call191, i64 %119, i64 %121, i64 %124, i64 %126)
  %cmp193 = icmp ne i32 %call192, 0
  br i1 %cmp193, label %if.then.195, label %if.end.198

if.then.195:                                      ; preds = %if.then.188
  %call196 = call i64 @builtin_lisp_symbol(i32 409)
  %call197 = call i64 @build_string(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i32 0, i32 0))
  %127 = load i64, i64* %newname.addr, align 8
  call void @xsignal2(i64 %call196, i64 %call197, i64 %127) #8
  unreachable

if.end.198:                                       ; preds = %if.then.188
  br label %if.end.199

if.end.199:                                       ; preds = %if.end.198, %sw.epilog
  %128 = load i32, i32* %ofd, align 4
  %call200 = call i32 @emacs_close(i32 %128)
  %cmp201 = icmp slt i32 %call200, 0
  br i1 %cmp201, label %if.then.203, label %if.end.204

if.then.203:                                      ; preds = %if.end.199
  %129 = load i64, i64* %newname.addr, align 8
  call void @report_file_error(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i64 %129) #8
  unreachable

if.end.204:                                       ; preds = %if.end.199
  %130 = load i32, i32* %ifd, align 4
  %call205 = call i32 @emacs_close(i32 %130)
  %131 = load %union.specbinding*, %union.specbinding** @specpdl, align 8
  %132 = load i64, i64* %count, align 8
  %add.ptr = getelementptr inbounds %union.specbinding, %union.specbinding* %131, i64 %132
  store %union.specbinding* %add.ptr, %union.specbinding** @specpdl_ptr, align 8
  %call206 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call206, i64* %retval
  br label %return

return:                                           ; preds = %if.end.204, %if.then.20
  %133 = load i64, i64* %retval
  ret i64 %133
}

; Function Attrs: nounwind uwtable
define i64 @Ffile_directory_p(i64 %filename) #5 {
entry:
  %retval = alloca i64, align 8
  %filename.addr = alloca i64, align 8
  %absname = alloca i64, align 8
  %handler = alloca i64, align 8
  store i64 %filename, i64* %filename.addr, align 8
  %0 = load i64, i64* %filename.addr, align 8
  %1 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %directory_ = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 3
  %2 = load i64, i64* %directory_, align 8
  %call = call i64 @expand_and_dir_to_file(i64 %0, i64 %2)
  store i64 %call, i64* %absname, align 8
  %3 = load i64, i64* %absname, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 410)
  %call2 = call i64 @Ffind_file_name_handler(i64 %3, i64 %call1)
  store i64 %call2, i64* %handler, align 8
  %4 = load i64, i64* %handler, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %4, %call3
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load i64, i64* %handler, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 410)
  %6 = load i64, i64* %absname, align 8
  %call5 = call i64 @call2(i64 %5, i64 %call4, i64 %6)
  store i64 %call5, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i64, i64* %absname, align 8
  %call6 = call i64 @encode_file_name(i64 %7)
  store i64 %call6, i64* %absname, align 8
  %8 = load i64, i64* %absname, align 8
  %call7 = call i8* @SSDATA(i64 %8)
  %call8 = call zeroext i1 @file_directory_p(i8* %call7)
  br i1 %call8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %call9 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call10 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call9, %cond.true ], [ %call10, %cond.false ]
  store i64 %cond, i64* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %9 = load i64, i64* %retval
  ret i64 %9
}

declare i64 @call7(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare i32 @emacs_open(i8*, i32, i32) #1

declare void @record_unwind_protect_int(void (i32)*, i32) #1

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat*) #2

; Function Attrs: nounwind uwtable
define internal void @barf_or_query_if_file_exists(i64 %absname, i1 zeroext %known_to_exist, i8* %querystring, i1 zeroext %interactive, i1 zeroext %quick) #5 {
entry:
  %absname.addr = alloca i64, align 8
  %known_to_exist.addr = alloca i8, align 1
  %querystring.addr = alloca i8*, align 8
  %interactive.addr = alloca i8, align 1
  %quick.addr = alloca i8, align 1
  %tem = alloca i64, align 8
  %encoded_filename = alloca i64, align 8
  %statbuf = alloca %struct.stat, align 8
  %format = alloca i64, align 8
  %.compoundliteral = alloca %union.Aligned_String, align 8
  %.compoundliteral19 = alloca [3 x i64], align 8
  store i64 %absname, i64* %absname.addr, align 8
  %frombool = zext i1 %known_to_exist to i8
  store i8 %frombool, i8* %known_to_exist.addr, align 1
  store i8* %querystring, i8** %querystring.addr, align 8
  %frombool1 = zext i1 %interactive to i8
  store i8 %frombool1, i8* %interactive.addr, align 1
  %frombool2 = zext i1 %quick to i8
  store i8 %frombool2, i8* %quick.addr, align 1
  %0 = load i64, i64* %absname.addr, align 8
  %call = call i64 @encode_file_name(i64 %0)
  store i64 %call, i64* %encoded_filename, align 8
  %1 = load i8, i8* %known_to_exist.addr, align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.end.9, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, i64* %encoded_filename, align 8
  %call3 = call i8* @SSDATA(i64 %2)
  %call4 = call i32 @lstat(i8* %call3, %struct.stat* %statbuf) #6
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %land.lhs.true
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 3
  %3 = load i32, i32* %st_mode, align 4
  %and = and i32 %3, 61440
  %cmp5 = icmp eq i32 %and, 16384
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %call7 = call i64 @builtin_lisp_symbol(i32 411)
  %call8 = call i64 @build_string(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.84, i32 0, i32 0))
  %4 = load i64, i64* %absname.addr, align 8
  call void @xsignal2(i64 %call7, i64 %call8, i64 %4) #8
  unreachable

if.end:                                           ; preds = %if.then
  store i8 1, i8* %known_to_exist.addr, align 1
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %land.lhs.true, %entry
  %5 = load i8, i8* %known_to_exist.addr, align 1
  %tobool10 = trunc i8 %5 to i1
  br i1 %tobool10, label %if.then.11, label %if.end.35

if.then.11:                                       ; preds = %if.end.9
  %6 = load i8, i8* %interactive.addr, align 1
  %tobool12 = trunc i8 %6 to i1
  br i1 %tobool12, label %if.end.16, label %if.then.13

if.then.13:                                       ; preds = %if.then.11
  %call14 = call i64 @builtin_lisp_symbol(i32 406)
  %call15 = call i64 @build_string(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.57, i32 0, i32 0))
  %7 = load i64, i64* %absname.addr, align 8
  call void @xsignal2(i64 %call14, i64 %call15, i64 %7) #8
  unreachable

if.end.16:                                        ; preds = %if.then.11
  %s = bitcast %union.Aligned_String* %.compoundliteral to %struct.Lisp_String*
  %size = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 0
  store i64 35, i64* %size, align 8
  %size_byte = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 1
  store i64 -1, i64* %size_byte, align 8
  %intervals = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 2
  store %struct.interval* null, %struct.interval** %intervals, align 8
  %data = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 3
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.85, i32 0, i32 0), i8** %data, align 8
  %s17 = bitcast %union.Aligned_String* %.compoundliteral to %struct.Lisp_String*
  %8 = bitcast %struct.Lisp_String* %s17 to i8*
  %call18 = call i64 @make_lisp_ptr(i8* %8, i32 4)
  store i64 %call18, i64* %format, align 8
  %arrayinit.begin = getelementptr inbounds [3 x i64], [3 x i64]* %.compoundliteral19, i64 0, i64 0
  %9 = load i64, i64* %format, align 8
  store i64 %9, i64* %arrayinit.begin
  %arrayinit.element = getelementptr inbounds i64, i64* %arrayinit.begin, i64 1
  %10 = load i64, i64* %absname.addr, align 8
  store i64 %10, i64* %arrayinit.element
  %arrayinit.element20 = getelementptr inbounds i64, i64* %arrayinit.element, i64 1
  %11 = load i8*, i8** %querystring.addr, align 8
  %call21 = call i64 @build_string(i8* %11)
  store i64 %call21, i64* %arrayinit.element20
  %arraydecay = getelementptr inbounds [3 x i64], [3 x i64]* %.compoundliteral19, i32 0, i32 0
  %call22 = call i64 @Fformat(i64 3, i64* %arraydecay)
  store i64 %call22, i64* %tem, align 8
  %12 = load i8, i8* %quick.addr, align 1
  %tobool23 = trunc i8 %12 to i1
  br i1 %tobool23, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %if.end.16
  %call25 = call i64 @intern(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.86, i32 0, i32 0))
  %13 = load i64, i64* %tem, align 8
  %call26 = call i64 @call1(i64 %call25, i64 %13)
  store i64 %call26, i64* %tem, align 8
  br label %if.end.28

if.else:                                          ; preds = %if.end.16
  %14 = load i64, i64* %tem, align 8
  %call27 = call i64 @do_yes_or_no_p(i64 %14)
  store i64 %call27, i64* %tem, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %if.then.24
  %15 = load i64, i64* %tem, align 8
  %call29 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp30 = icmp eq i64 %15, %call29
  br i1 %cmp30, label %if.then.31, label %if.end.34

if.then.31:                                       ; preds = %if.end.28
  %call32 = call i64 @builtin_lisp_symbol(i32 406)
  %call33 = call i64 @build_string(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.57, i32 0, i32 0))
  %16 = load i64, i64* %absname.addr, align 8
  call void @xsignal2(i64 %call32, i64 %call33, i64 %16) #8
  unreachable

if.end.34:                                        ; preds = %if.end.28
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.end.9
  ret void
}

declare i64 @list2(i64, i64) #1

declare i64 @emacs_read(i32, i8*, i64) #1

declare i64 @emacs_write_sig(i32, i8*, i64) #1

; Function Attrs: nounwind
declare i32 @ftruncate(i32, i64) #2

; Function Attrs: nounwind
declare i32 @fchown(i32, i32, i32) #2

declare i32 @qcopy_acl(i8*, i32, i8*, i32, i32) #1

; Function Attrs: nounwind
declare i32 @fchmod(i32, i32) #2

; Function Attrs: nounwind readonly
declare { i64, i64 } @get_stat_atime(%struct.stat*) #7

; Function Attrs: nounwind readonly
declare { i64, i64 } @get_stat_mtime(%struct.stat*) #7

declare i32 @set_file_times(i32, i8*, i64, i64, i64, i64) #1

; Function Attrs: noreturn
declare void @xsignal2(i64, i64, i64) #3

; Function Attrs: nounwind uwtable
define i64 @Fmake_directory_internal(i64 %directory) #5 {
entry:
  %retval = alloca i64, align 8
  %directory.addr = alloca i64, align 8
  %dir = alloca i8*, align 8
  %handler = alloca i64, align 8
  %encoded_dir = alloca i64, align 8
  store i64 %directory, i64* %directory.addr, align 8
  %0 = load i64, i64* %directory.addr, align 8
  call void @CHECK_STRING(i64 %0)
  %1 = load i64, i64* %directory.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %call1 = call i64 @Fexpand_file_name(i64 %1, i64 %call)
  store i64 %call1, i64* %directory.addr, align 8
  %2 = load i64, i64* %directory.addr, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 639)
  %call3 = call i64 @Ffind_file_name_handler(i64 %2, i64 %call2)
  store i64 %call3, i64* %handler, align 8
  %3 = load i64, i64* %handler, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %3, %call4
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load i64, i64* %handler, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 639)
  %5 = load i64, i64* %directory.addr, align 8
  %call6 = call i64 @call2(i64 %4, i64 %call5, i64 %5)
  store i64 %call6, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i64, i64* %directory.addr, align 8
  %call7 = call i64 @encode_file_name(i64 %6)
  store i64 %call7, i64* %encoded_dir, align 8
  %7 = load i64, i64* %encoded_dir, align 8
  %call8 = call i8* @SSDATA(i64 %7)
  store i8* %call8, i8** %dir, align 8
  %8 = load i8*, i8** %dir, align 8
  %9 = load i32, i32* @auto_saving_dir_umask, align 4
  %neg = xor i32 %9, -1
  %and = and i32 511, %neg
  %call9 = call i32 @mkdir(i8* %8, i32 %and) #6
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  %10 = load i64, i64* %directory.addr, align 8
  call void @report_file_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0), i64 %10) #8
  unreachable

if.end.12:                                        ; preds = %if.end
  %call13 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call13, i64* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then
  %11 = load i64, i64* %retval
  ret i64 %11
}

; Function Attrs: nounwind
declare i32 @mkdir(i8*, i32) #2

; Function Attrs: nounwind uwtable
define i64 @Fdelete_directory_internal(i64 %directory) #5 {
entry:
  %directory.addr = alloca i64, align 8
  %dir = alloca i8*, align 8
  %encoded_dir = alloca i64, align 8
  store i64 %directory, i64* %directory.addr, align 8
  %0 = load i64, i64* %directory.addr, align 8
  call void @CHECK_STRING(i64 %0)
  %1 = load i64, i64* %directory.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %call1 = call i64 @Fexpand_file_name(i64 %1, i64 %call)
  %call2 = call i64 @Fdirectory_file_name(i64 %call1)
  store i64 %call2, i64* %directory.addr, align 8
  %2 = load i64, i64* %directory.addr, align 8
  %call3 = call i64 @encode_file_name(i64 %2)
  store i64 %call3, i64* %encoded_dir, align 8
  %3 = load i64, i64* %encoded_dir, align 8
  %call4 = call i8* @SSDATA(i64 %3)
  store i8* %call4, i8** %dir, align 8
  %4 = load i8*, i8** %dir, align 8
  %call5 = call i32 @rmdir(i8* %4) #6
  %cmp = icmp ne i32 %call5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i64, i64* %directory.addr, align 8
  call void @report_file_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i32 0, i32 0), i64 %5) #8
  unreachable

if.end:                                           ; preds = %entry
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call6
}

; Function Attrs: nounwind
declare i32 @rmdir(i8*) #2

; Function Attrs: nounwind uwtable
define i64 @Fdelete_file(i64 %filename, i64 %trash) #5 {
entry:
  %retval = alloca i64, align 8
  %filename.addr = alloca i64, align 8
  %trash.addr = alloca i64, align 8
  %handler = alloca i64, align 8
  %encoded_file = alloca i64, align 8
  store i64 %filename, i64* %filename.addr, align 8
  store i64 %trash, i64* %trash.addr, align 8
  %0 = load i64, i64* %filename.addr, align 8
  %call = call i64 @Ffile_directory_p(i64 %0)
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %call, %call1
  br i1 %cmp, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %filename.addr, align 8
  %call2 = call i64 @Ffile_symlink_p(i64 %1)
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp4 = icmp eq i64 %call2, %call3
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call5 = call i64 @builtin_lisp_symbol(i32 411)
  %call6 = call i64 @build_string(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i32 0, i32 0))
  %2 = load i64, i64* %filename.addr, align 8
  call void @xsignal2(i64 %call5, i64 %call6, i64 %2) #8
  unreachable

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load i64, i64* %filename.addr, align 8
  %call7 = call i64 @builtin_lisp_symbol(i32 0)
  %call8 = call i64 @Fexpand_file_name(i64 %3, i64 %call7)
  store i64 %call8, i64* %filename.addr, align 8
  %4 = load i64, i64* %filename.addr, align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 333)
  %call10 = call i64 @Ffind_file_name_handler(i64 %4, i64 %call9)
  store i64 %call10, i64* %handler, align 8
  %5 = load i64, i64* %handler, align 8
  %call11 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp12 = icmp eq i64 %5, %call11
  br i1 %cmp12, label %if.end.16, label %if.then.13

if.then.13:                                       ; preds = %if.end
  %6 = load i64, i64* %handler, align 8
  %call14 = call i64 @builtin_lisp_symbol(i32 333)
  %7 = load i64, i64* %filename.addr, align 8
  %8 = load i64, i64* %trash.addr, align 8
  %call15 = call i64 @call3(i64 %6, i64 %call14, i64 %7, i64 %8)
  store i64 %call15, i64* %retval
  br label %return

if.end.16:                                        ; preds = %if.end
  %9 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 435), align 1
  %tobool = trunc i8 %9 to i1
  br i1 %tobool, label %land.lhs.true.17, label %if.end.23

land.lhs.true.17:                                 ; preds = %if.end.16
  %10 = load i64, i64* %trash.addr, align 8
  %call18 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp19 = icmp eq i64 %10, %call18
  br i1 %cmp19, label %if.end.23, label %if.then.20

if.then.20:                                       ; preds = %land.lhs.true.17
  %call21 = call i64 @builtin_lisp_symbol(i32 692)
  %11 = load i64, i64* %filename.addr, align 8
  %call22 = call i64 @call1(i64 %call21, i64 %11)
  store i64 %call22, i64* %retval
  br label %return

if.end.23:                                        ; preds = %land.lhs.true.17, %if.end.16
  %12 = load i64, i64* %filename.addr, align 8
  %call24 = call i64 @encode_file_name(i64 %12)
  store i64 %call24, i64* %encoded_file, align 8
  %13 = load i64, i64* %encoded_file, align 8
  %call25 = call i8* @SSDATA(i64 %13)
  %call26 = call i32 @unlink(i8* %call25) #6
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.23
  %14 = load i64, i64* %filename.addr, align 8
  call void @report_file_error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0), i64 %14) #8
  unreachable

if.end.29:                                        ; preds = %if.end.23
  %call30 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call30, i64* %retval
  br label %return

return:                                           ; preds = %if.end.29, %if.then.20, %if.then.13
  %15 = load i64, i64* %retval
  ret i64 %15
}

; Function Attrs: nounwind uwtable
define i64 @Ffile_symlink_p(i64 %filename) #5 {
entry:
  %retval = alloca i64, align 8
  %filename.addr = alloca i64, align 8
  %handler = alloca i64, align 8
  store i64 %filename, i64* %filename.addr, align 8
  %0 = load i64, i64* %filename.addr, align 8
  call void @CHECK_STRING(i64 %0)
  %1 = load i64, i64* %filename.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %call1 = call i64 @Fexpand_file_name(i64 %1, i64 %call)
  store i64 %call1, i64* %filename.addr, align 8
  %2 = load i64, i64* %filename.addr, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 428)
  %call3 = call i64 @Ffind_file_name_handler(i64 %2, i64 %call2)
  store i64 %call3, i64* %handler, align 8
  %3 = load i64, i64* %handler, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %3, %call4
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load i64, i64* %handler, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 428)
  %5 = load i64, i64* %filename.addr, align 8
  %call6 = call i64 @call2(i64 %4, i64 %call5, i64 %5)
  store i64 %call6, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i64, i64* %filename.addr, align 8
  %call7 = call i64 @encode_file_name(i64 %6)
  store i64 %call7, i64* %filename.addr, align 8
  %7 = load i64, i64* %filename.addr, align 8
  %call8 = call i8* @SSDATA(i64 %7)
  %call9 = call i64 @emacs_readlinkat(i32 -100, i8* %call8)
  store i64 %call9, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i64, i64* %retval
  ret i64 %8
}

; Function Attrs: nounwind
declare i32 @unlink(i8*) #2

; Function Attrs: nounwind uwtable
define zeroext i1 @internal_delete_file(i64 %filename) #5 {
entry:
  %filename.addr = alloca i64, align 8
  %tem = alloca i64, align 8
  store i64 %filename, i64* %filename.addr, align 8
  %0 = load i64, i64* %filename.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %call1 = call i64 @builtin_lisp_symbol(i32 901)
  %call2 = call i64 @internal_condition_case_2(i64 (i64, i64)* @Fdelete_file, i64 %0, i64 %call, i64 %call1, i64 (i64)* @internal_delete_file_1)
  store i64 %call2, i64* %tem, align 8
  %1 = load i64, i64* %tem, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %1, %call3
  ret i1 %cmp
}

declare i64 @internal_condition_case_2(i64 (i64, i64)*, i64, i64, i64, i64 (i64)*) #1

; Function Attrs: nounwind uwtable
define internal i64 @internal_delete_file_1(i64 %ignore) #5 {
entry:
  %ignore.addr = alloca i64, align 8
  store i64 %ignore, i64* %ignore.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 901)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @Frename_file(i64 %file, i64 %newname, i64 %ok_if_already_exists) #5 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca i64, align 8
  %newname.addr = alloca i64, align 8
  %ok_if_already_exists.addr = alloca i64, align 8
  %handler = alloca i64, align 8
  %encoded_file = alloca i64, align 8
  %encoded_newname = alloca i64, align 8
  %symlink_target = alloca i64, align 8
  %fname = alloca i64, align 8
  %rename_errno = alloca i32, align 4
  %count = alloca i64, align 8
  store i64 %file, i64* %file.addr, align 8
  store i64 %newname, i64* %newname.addr, align 8
  store i64 %ok_if_already_exists, i64* %ok_if_already_exists.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %encoded_newname, align 8
  store i64 %call, i64* %encoded_file, align 8
  store i64 %call, i64* %symlink_target, align 8
  %0 = load i64, i64* %file.addr, align 8
  call void @CHECK_STRING(i64 %0)
  %1 = load i64, i64* %newname.addr, align 8
  call void @CHECK_STRING(i64 %1)
  %2 = load i64, i64* %file.addr, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %call2 = call i64 @Fexpand_file_name(i64 %2, i64 %call1)
  store i64 %call2, i64* %file.addr, align 8
  %3 = load i64, i64* %newname.addr, align 8
  %call3 = call i64 @Ffile_directory_p(i64 %3)
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %call3, %call4
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %4 = load i64, i64* %file.addr, align 8
  %call5 = call i64 @Ffile_directory_p(i64 %4)
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp7 = icmp eq i64 %call5, %call6
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %5 = load i64, i64* %file.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %6 = load i64, i64* %file.addr, align 8
  %call8 = call i64 @Fdirectory_file_name(i64 %6)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %5, %cond.true ], [ %call8, %cond.false ]
  store i64 %cond, i64* %fname, align 8
  %7 = load i64, i64* %fname, align 8
  %call9 = call i64 @Ffile_name_nondirectory(i64 %7)
  %8 = load i64, i64* %newname.addr, align 8
  %call10 = call i64 @Fexpand_file_name(i64 %call9, i64 %8)
  store i64 %call10, i64* %newname.addr, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load i64, i64* %newname.addr, align 8
  %call11 = call i64 @builtin_lisp_symbol(i32 0)
  %call12 = call i64 @Fexpand_file_name(i64 %9, i64 %call11)
  store i64 %call12, i64* %newname.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end
  %10 = load i64, i64* %file.addr, align 8
  %call13 = call i64 @builtin_lisp_symbol(i32 806)
  %call14 = call i64 @Ffind_file_name_handler(i64 %10, i64 %call13)
  store i64 %call14, i64* %handler, align 8
  %11 = load i64, i64* %handler, align 8
  %call15 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp16 = icmp eq i64 %11, %call15
  br i1 %cmp16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %if.end
  %12 = load i64, i64* %newname.addr, align 8
  %call18 = call i64 @builtin_lisp_symbol(i32 806)
  %call19 = call i64 @Ffind_file_name_handler(i64 %12, i64 %call18)
  store i64 %call19, i64* %handler, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %if.end
  %13 = load i64, i64* %handler, align 8
  %call21 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp22 = icmp eq i64 %13, %call21
  br i1 %cmp22, label %if.end.26, label %if.then.23

if.then.23:                                       ; preds = %if.end.20
  %14 = load i64, i64* %handler, align 8
  %call24 = call i64 @builtin_lisp_symbol(i32 806)
  %15 = load i64, i64* %file.addr, align 8
  %16 = load i64, i64* %newname.addr, align 8
  %17 = load i64, i64* %ok_if_already_exists.addr, align 8
  %call25 = call i64 @call4(i64 %14, i64 %call24, i64 %15, i64 %16, i64 %17)
  store i64 %call25, i64* %retval
  br label %return

if.end.26:                                        ; preds = %if.end.20
  %18 = load i64, i64* %file.addr, align 8
  %call27 = call i64 @encode_file_name(i64 %18)
  store i64 %call27, i64* %encoded_file, align 8
  %19 = load i64, i64* %newname.addr, align 8
  %call28 = call i64 @encode_file_name(i64 %19)
  store i64 %call28, i64* %encoded_newname, align 8
  %20 = load i64, i64* %ok_if_already_exists.addr, align 8
  %call29 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp30 = icmp eq i64 %20, %call29
  br i1 %cmp30, label %if.then.34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.26
  %21 = load i64, i64* %ok_if_already_exists.addr, align 8
  %and = and i64 %21, 7
  %conv = trunc i64 %and to i32
  %and31 = and i32 %conv, -5
  %cmp32 = icmp eq i32 %and31, 2
  br i1 %cmp32, label %if.then.34, label %if.end.40

if.then.34:                                       ; preds = %lor.lhs.false, %if.end.26
  %22 = load i64, i64* %newname.addr, align 8
  %23 = load i64, i64* %ok_if_already_exists.addr, align 8
  %and35 = and i64 %23, 7
  %conv36 = trunc i64 %and35 to i32
  %and37 = and i32 %conv36, -5
  %cmp38 = icmp eq i32 %and37, 2
  call void @barf_or_query_if_file_exists(i64 %22, i1 zeroext false, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), i1 zeroext %cmp38, i1 zeroext false)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.34, %lor.lhs.false
  %24 = load i64, i64* %encoded_file, align 8
  %call41 = call i8* @SSDATA(i64 %24)
  %25 = load i64, i64* %encoded_newname, align 8
  %call42 = call i8* @SSDATA(i64 %25)
  %call43 = call i32 @rename(i8* %call41, i8* %call42) #6
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.then.46, label %if.end.115

if.then.46:                                       ; preds = %if.end.40
  %call47 = call i32* @__errno_location() #9
  %26 = load i32, i32* %call47, align 4
  store i32 %26, i32* %rename_errno, align 4
  %27 = load i32, i32* %rename_errno, align 4
  %cmp48 = icmp eq i32 %27, 18
  br i1 %cmp48, label %if.then.50, label %if.else.112

if.then.50:                                       ; preds = %if.then.46
  %28 = load i64, i64* %file.addr, align 8
  %call51 = call i64 @Ffile_symlink_p(i64 %28)
  store i64 %call51, i64* %symlink_target, align 8
  %29 = load i64, i64* %symlink_target, align 8
  %call52 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp53 = icmp eq i64 %29, %call52
  br i1 %cmp53, label %if.else.66, label %if.then.55

if.then.55:                                       ; preds = %if.then.50
  %30 = load i64, i64* %symlink_target, align 8
  %31 = load i64, i64* %newname.addr, align 8
  %32 = load i64, i64* %ok_if_already_exists.addr, align 8
  %call56 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp57 = icmp eq i64 %32, %call56
  br i1 %cmp57, label %cond.true.59, label %cond.false.61

cond.true.59:                                     ; preds = %if.then.55
  %call60 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.63

cond.false.61:                                    ; preds = %if.then.55
  %call62 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.61, %cond.true.59
  %cond64 = phi i64 [ %call60, %cond.true.59 ], [ %call62, %cond.false.61 ]
  %call65 = call i64 @Fmake_symbolic_link(i64 %30, i64 %31, i64 %cond64)
  br label %if.end.91

if.else.66:                                       ; preds = %if.then.50
  %33 = load i64, i64* %file.addr, align 8
  %call67 = call i64 @Ffile_directory_p(i64 %33)
  %call68 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp69 = icmp eq i64 %call67, %call68
  br i1 %cmp69, label %if.else.76, label %if.then.71

if.then.71:                                       ; preds = %if.else.66
  %call72 = call i64 @builtin_lisp_symbol(i32 298)
  %34 = load i64, i64* %file.addr, align 8
  %35 = load i64, i64* %newname.addr, align 8
  %call73 = call i64 @builtin_lisp_symbol(i32 901)
  %call74 = call i64 @builtin_lisp_symbol(i32 0)
  %call75 = call i64 @call4(i64 %call72, i64 %34, i64 %35, i64 %call73, i64 %call74)
  br label %if.end.90

if.else.76:                                       ; preds = %if.else.66
  %36 = load i64, i64* %file.addr, align 8
  %37 = load i64, i64* %newname.addr, align 8
  %38 = load i64, i64* %ok_if_already_exists.addr, align 8
  %call77 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp78 = icmp eq i64 %38, %call77
  br i1 %cmp78, label %cond.true.80, label %cond.false.82

cond.true.80:                                     ; preds = %if.else.76
  %call81 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.84

cond.false.82:                                    ; preds = %if.else.76
  %call83 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end.84

cond.end.84:                                      ; preds = %cond.false.82, %cond.true.80
  %cond85 = phi i64 [ %call81, %cond.true.80 ], [ %call83, %cond.false.82 ]
  %call86 = call i64 @builtin_lisp_symbol(i32 901)
  %call87 = call i64 @builtin_lisp_symbol(i32 901)
  %call88 = call i64 @builtin_lisp_symbol(i32 901)
  %call89 = call i64 @Fcopy_file(i64 %36, i64 %37, i64 %cond85, i64 %call86, i64 %call87, i64 %call88)
  br label %if.end.90

if.end.90:                                        ; preds = %cond.end.84, %if.then.71
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %cond.end.63
  %call92 = call i64 @SPECPDL_INDEX()
  store i64 %call92, i64* %count, align 8
  %call93 = call i64 @builtin_lisp_symbol(i32 331)
  %call94 = call i64 @builtin_lisp_symbol(i32 0)
  call void @specbind(i64 %call93, i64 %call94)
  %39 = load i64, i64* %file.addr, align 8
  %call95 = call i64 @Ffile_directory_p(i64 %39)
  %call96 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp97 = icmp eq i64 %call95, %call96
  br i1 %cmp97, label %if.else.106, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.91
  %40 = load i64, i64* %symlink_target, align 8
  %call99 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp100 = icmp eq i64 %40, %call99
  br i1 %cmp100, label %if.then.102, label %if.else.106

if.then.102:                                      ; preds = %land.lhs.true
  %call103 = call i64 @builtin_lisp_symbol(i32 332)
  %41 = load i64, i64* %file.addr, align 8
  %call104 = call i64 @builtin_lisp_symbol(i32 901)
  %call105 = call i64 @call2(i64 %call103, i64 %41, i64 %call104)
  br label %if.end.109

if.else.106:                                      ; preds = %land.lhs.true, %if.end.91
  %42 = load i64, i64* %file.addr, align 8
  %call107 = call i64 @builtin_lisp_symbol(i32 0)
  %call108 = call i64 @Fdelete_file(i64 %42, i64 %call107)
  br label %if.end.109

if.end.109:                                       ; preds = %if.else.106, %if.then.102
  %43 = load i64, i64* %count, align 8
  %call110 = call i64 @builtin_lisp_symbol(i32 0)
  %call111 = call i64 @unbind_to(i64 %43, i64 %call110)
  br label %if.end.114

if.else.112:                                      ; preds = %if.then.46
  %44 = load i64, i64* %file.addr, align 8
  %45 = load i64, i64* %newname.addr, align 8
  %call113 = call i64 @list2(i64 %44, i64 %45)
  %46 = load i32, i32* %rename_errno, align 4
  call void @report_file_errno(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i64 %call113, i32 %46) #8
  unreachable

if.end.114:                                       ; preds = %if.end.109
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %if.end.40
  %call116 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call116, i64* %retval
  br label %return

return:                                           ; preds = %if.end.115, %if.then.23
  %47 = load i64, i64* %retval
  ret i64 %47
}

declare i64 @call4(i64, i64, i64, i64, i64) #1

; Function Attrs: nounwind
declare i32 @rename(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define i64 @Fmake_symbolic_link(i64 %target, i64 %linkname, i64 %ok_if_already_exists) #5 {
entry:
  %retval = alloca i64, align 8
  %target.addr = alloca i64, align 8
  %linkname.addr = alloca i64, align 8
  %ok_if_already_exists.addr = alloca i64, align 8
  %handler = alloca i64, align 8
  %encoded_target = alloca i64, align 8
  %encoded_linkname = alloca i64, align 8
  %symlink_errno = alloca i32, align 4
  store i64 %target, i64* %target.addr, align 8
  store i64 %linkname, i64* %linkname.addr, align 8
  store i64 %ok_if_already_exists, i64* %ok_if_already_exists.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %encoded_linkname, align 8
  store i64 %call, i64* %encoded_target, align 8
  %0 = load i64, i64* %target.addr, align 8
  call void @CHECK_STRING(i64 %0)
  %1 = load i64, i64* %linkname.addr, align 8
  call void @CHECK_STRING(i64 %1)
  %2 = load i64, i64* %target.addr, align 8
  %call1 = call zeroext i8 @SREF(i64 %2, i64 0)
  %conv = zext i8 %call1 to i32
  %cmp = icmp eq i32 %conv, 126
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %target.addr, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %call4 = call i64 @Fexpand_file_name(i64 %3, i64 %call3)
  store i64 %call4, i64* %target.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* %linkname.addr, align 8
  %call5 = call i64 @Ffile_directory_p(i64 %4)
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp7 = icmp eq i64 %call5, %call6
  br i1 %cmp7, label %if.else, label %if.then.9

if.then.9:                                        ; preds = %if.end
  %5 = load i64, i64* %target.addr, align 8
  %call10 = call i64 @Ffile_name_nondirectory(i64 %5)
  %6 = load i64, i64* %linkname.addr, align 8
  %call11 = call i64 @Fexpand_file_name(i64 %call10, i64 %6)
  store i64 %call11, i64* %linkname.addr, align 8
  br label %if.end.14

if.else:                                          ; preds = %if.end
  %7 = load i64, i64* %linkname.addr, align 8
  %call12 = call i64 @builtin_lisp_symbol(i32 0)
  %call13 = call i64 @Fexpand_file_name(i64 %7, i64 %call12)
  store i64 %call13, i64* %linkname.addr, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.9
  %8 = load i64, i64* %target.addr, align 8
  %call15 = call i64 @builtin_lisp_symbol(i32 641)
  %call16 = call i64 @Ffind_file_name_handler(i64 %8, i64 %call15)
  store i64 %call16, i64* %handler, align 8
  %9 = load i64, i64* %handler, align 8
  %call17 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp18 = icmp eq i64 %9, %call17
  br i1 %cmp18, label %if.end.23, label %if.then.20

if.then.20:                                       ; preds = %if.end.14
  %10 = load i64, i64* %handler, align 8
  %call21 = call i64 @builtin_lisp_symbol(i32 641)
  %11 = load i64, i64* %target.addr, align 8
  %12 = load i64, i64* %linkname.addr, align 8
  %13 = load i64, i64* %ok_if_already_exists.addr, align 8
  %call22 = call i64 @call4(i64 %10, i64 %call21, i64 %11, i64 %12, i64 %13)
  store i64 %call22, i64* %retval
  br label %return

if.end.23:                                        ; preds = %if.end.14
  %14 = load i64, i64* %linkname.addr, align 8
  %call24 = call i64 @builtin_lisp_symbol(i32 641)
  %call25 = call i64 @Ffind_file_name_handler(i64 %14, i64 %call24)
  store i64 %call25, i64* %handler, align 8
  %15 = load i64, i64* %handler, align 8
  %call26 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp27 = icmp eq i64 %15, %call26
  br i1 %cmp27, label %if.end.32, label %if.then.29

if.then.29:                                       ; preds = %if.end.23
  %16 = load i64, i64* %handler, align 8
  %call30 = call i64 @builtin_lisp_symbol(i32 641)
  %17 = load i64, i64* %target.addr, align 8
  %18 = load i64, i64* %linkname.addr, align 8
  %19 = load i64, i64* %ok_if_already_exists.addr, align 8
  %call31 = call i64 @call4(i64 %16, i64 %call30, i64 %17, i64 %18, i64 %19)
  store i64 %call31, i64* %retval
  br label %return

if.end.32:                                        ; preds = %if.end.23
  %20 = load i64, i64* %target.addr, align 8
  %call33 = call i64 @encode_file_name(i64 %20)
  store i64 %call33, i64* %encoded_target, align 8
  %21 = load i64, i64* %linkname.addr, align 8
  %call34 = call i64 @encode_file_name(i64 %21)
  store i64 %call34, i64* %encoded_linkname, align 8
  %22 = load i64, i64* %ok_if_already_exists.addr, align 8
  %call35 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp36 = icmp eq i64 %22, %call35
  br i1 %cmp36, label %if.then.42, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.32
  %23 = load i64, i64* %ok_if_already_exists.addr, align 8
  %and = and i64 %23, 7
  %conv38 = trunc i64 %and to i32
  %and39 = and i32 %conv38, -5
  %cmp40 = icmp eq i32 %and39, 2
  br i1 %cmp40, label %if.then.42, label %if.end.48

if.then.42:                                       ; preds = %lor.lhs.false, %if.end.32
  %24 = load i64, i64* %linkname.addr, align 8
  %25 = load i64, i64* %ok_if_already_exists.addr, align 8
  %and43 = and i64 %25, 7
  %conv44 = trunc i64 %and43 to i32
  %and45 = and i32 %conv44, -5
  %cmp46 = icmp eq i32 %and45, 2
  call void @barf_or_query_if_file_exists(i64 %24, i1 zeroext false, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0), i1 zeroext %cmp46, i1 zeroext false)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.42, %lor.lhs.false
  %26 = load i64, i64* %encoded_target, align 8
  %call49 = call i8* @SSDATA(i64 %26)
  %27 = load i64, i64* %encoded_linkname, align 8
  %call50 = call i8* @SSDATA(i64 %27)
  %call51 = call i32 @symlink(i8* %call49, i8* %call50) #6
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %if.then.54, label %if.end.79

if.then.54:                                       ; preds = %if.end.48
  %call55 = call i32* @__errno_location() #9
  %28 = load i32, i32* %call55, align 4
  %cmp56 = icmp eq i32 %28, 17
  br i1 %cmp56, label %if.then.58, label %if.end.69

if.then.58:                                       ; preds = %if.then.54
  %29 = load i64, i64* %encoded_linkname, align 8
  %call59 = call i8* @SSDATA(i64 %29)
  %call60 = call i32 @unlink(i8* %call59) #6
  %30 = load i64, i64* %encoded_target, align 8
  %call61 = call i8* @SSDATA(i64 %30)
  %31 = load i64, i64* %encoded_linkname, align 8
  %call62 = call i8* @SSDATA(i64 %31)
  %call63 = call i32 @symlink(i8* %call61, i8* %call62) #6
  %cmp64 = icmp sge i32 %call63, 0
  br i1 %cmp64, label %if.then.66, label %if.end.68

if.then.66:                                       ; preds = %if.then.58
  %call67 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call67, i64* %retval
  br label %return

if.end.68:                                        ; preds = %if.then.58
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.then.54
  %call70 = call i32* @__errno_location() #9
  %32 = load i32, i32* %call70, align 4
  %cmp71 = icmp eq i32 %32, 38
  br i1 %cmp71, label %if.then.73, label %if.end.76

if.then.73:                                       ; preds = %if.end.69
  %call74 = call i64 @builtin_lisp_symbol(i32 411)
  %call75 = call i64 @build_string(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.28, i32 0, i32 0))
  call void @xsignal1(i64 %call74, i64 %call75) #8
  unreachable

if.end.76:                                        ; preds = %if.end.69
  %call77 = call i32* @__errno_location() #9
  %33 = load i32, i32* %call77, align 4
  store i32 %33, i32* %symlink_errno, align 4
  %34 = load i64, i64* %target.addr, align 8
  %35 = load i64, i64* %linkname.addr, align 8
  %call78 = call i64 @list2(i64 %34, i64 %35)
  %36 = load i32, i32* %symlink_errno, align 4
  call void @report_file_errno(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i32 0, i32 0), i64 %call78, i32 %36) #8
  unreachable

if.end.79:                                        ; preds = %if.end.48
  %call80 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call80, i64* %retval
  br label %return

return:                                           ; preds = %if.end.79, %if.then.66, %if.then.29, %if.then.20
  %37 = load i64, i64* %retval
  ret i64 %37
}

declare void @specbind(i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fadd_name_to_file(i64 %file, i64 %newname, i64 %ok_if_already_exists) #5 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca i64, align 8
  %newname.addr = alloca i64, align 8
  %ok_if_already_exists.addr = alloca i64, align 8
  %handler = alloca i64, align 8
  %encoded_file = alloca i64, align 8
  %encoded_newname = alloca i64, align 8
  %link_errno = alloca i32, align 4
  store i64 %file, i64* %file.addr, align 8
  store i64 %newname, i64* %newname.addr, align 8
  store i64 %ok_if_already_exists, i64* %ok_if_already_exists.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %encoded_newname, align 8
  store i64 %call, i64* %encoded_file, align 8
  %0 = load i64, i64* %file.addr, align 8
  call void @CHECK_STRING(i64 %0)
  %1 = load i64, i64* %newname.addr, align 8
  call void @CHECK_STRING(i64 %1)
  %2 = load i64, i64* %file.addr, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %call2 = call i64 @Fexpand_file_name(i64 %2, i64 %call1)
  store i64 %call2, i64* %file.addr, align 8
  %3 = load i64, i64* %newname.addr, align 8
  %call3 = call i64 @Ffile_directory_p(i64 %3)
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %call3, %call4
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %4 = load i64, i64* %file.addr, align 8
  %call5 = call i64 @Ffile_name_nondirectory(i64 %4)
  %5 = load i64, i64* %newname.addr, align 8
  %call6 = call i64 @Fexpand_file_name(i64 %call5, i64 %5)
  store i64 %call6, i64* %newname.addr, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i64, i64* %newname.addr, align 8
  %call7 = call i64 @builtin_lisp_symbol(i32 0)
  %call8 = call i64 @Fexpand_file_name(i64 %6, i64 %call7)
  store i64 %call8, i64* %newname.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i64, i64* %file.addr, align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 161)
  %call10 = call i64 @Ffind_file_name_handler(i64 %7, i64 %call9)
  store i64 %call10, i64* %handler, align 8
  %8 = load i64, i64* %handler, align 8
  %call11 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp12 = icmp eq i64 %8, %call11
  br i1 %cmp12, label %if.end.16, label %if.then.13

if.then.13:                                       ; preds = %if.end
  %9 = load i64, i64* %handler, align 8
  %call14 = call i64 @builtin_lisp_symbol(i32 161)
  %10 = load i64, i64* %file.addr, align 8
  %11 = load i64, i64* %newname.addr, align 8
  %12 = load i64, i64* %ok_if_already_exists.addr, align 8
  %call15 = call i64 @call4(i64 %9, i64 %call14, i64 %10, i64 %11, i64 %12)
  store i64 %call15, i64* %retval
  br label %return

if.end.16:                                        ; preds = %if.end
  %13 = load i64, i64* %newname.addr, align 8
  %call17 = call i64 @builtin_lisp_symbol(i32 161)
  %call18 = call i64 @Ffind_file_name_handler(i64 %13, i64 %call17)
  store i64 %call18, i64* %handler, align 8
  %14 = load i64, i64* %handler, align 8
  %call19 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp20 = icmp eq i64 %14, %call19
  br i1 %cmp20, label %if.end.24, label %if.then.21

if.then.21:                                       ; preds = %if.end.16
  %15 = load i64, i64* %handler, align 8
  %call22 = call i64 @builtin_lisp_symbol(i32 161)
  %16 = load i64, i64* %file.addr, align 8
  %17 = load i64, i64* %newname.addr, align 8
  %18 = load i64, i64* %ok_if_already_exists.addr, align 8
  %call23 = call i64 @call4(i64 %15, i64 %call22, i64 %16, i64 %17, i64 %18)
  store i64 %call23, i64* %retval
  br label %return

if.end.24:                                        ; preds = %if.end.16
  %19 = load i64, i64* %file.addr, align 8
  %call25 = call i64 @encode_file_name(i64 %19)
  store i64 %call25, i64* %encoded_file, align 8
  %20 = load i64, i64* %newname.addr, align 8
  %call26 = call i64 @encode_file_name(i64 %20)
  store i64 %call26, i64* %encoded_newname, align 8
  %21 = load i64, i64* %ok_if_already_exists.addr, align 8
  %call27 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp28 = icmp eq i64 %21, %call27
  br i1 %cmp28, label %if.then.32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.24
  %22 = load i64, i64* %ok_if_already_exists.addr, align 8
  %and = and i64 %22, 7
  %conv = trunc i64 %and to i32
  %and29 = and i32 %conv, -5
  %cmp30 = icmp eq i32 %and29, 2
  br i1 %cmp30, label %if.then.32, label %if.end.38

if.then.32:                                       ; preds = %lor.lhs.false, %if.end.24
  %23 = load i64, i64* %newname.addr, align 8
  %24 = load i64, i64* %ok_if_already_exists.addr, align 8
  %and33 = and i64 %24, 7
  %conv34 = trunc i64 %and33 to i32
  %and35 = and i32 %conv34, -5
  %cmp36 = icmp eq i32 %and35, 2
  call void @barf_or_query_if_file_exists(i64 %23, i1 zeroext false, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i32 0, i32 0), i1 zeroext %cmp36, i1 zeroext false)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.32, %lor.lhs.false
  %25 = load i64, i64* %newname.addr, align 8
  %call39 = call i8* @SSDATA(i64 %25)
  %call40 = call i32 @unlink(i8* %call39) #6
  %26 = load i64, i64* %encoded_file, align 8
  %call41 = call i8* @SSDATA(i64 %26)
  %27 = load i64, i64* %encoded_newname, align 8
  %call42 = call i8* @SSDATA(i64 %27)
  %call43 = call i32 @link(i8* %call41, i8* %call42) #6
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.then.46, label %if.end.49

if.then.46:                                       ; preds = %if.end.38
  %call47 = call i32* @__errno_location() #9
  %28 = load i32, i32* %call47, align 4
  store i32 %28, i32* %link_errno, align 4
  %29 = load i64, i64* %file.addr, align 8
  %30 = load i64, i64* %newname.addr, align 8
  %call48 = call i64 @list2(i64 %29, i64 %30)
  %31 = load i32, i32* %link_errno, align 4
  call void @report_file_errno(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0), i64 %call48, i32 %31) #8
  unreachable

if.end.49:                                        ; preds = %if.end.38
  %call50 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call50, i64* %retval
  br label %return

return:                                           ; preds = %if.end.49, %if.then.21, %if.then.13
  %32 = load i64, i64* %retval
  ret i64 %32
}

; Function Attrs: nounwind
declare i32 @link(i8*, i8*) #2

; Function Attrs: nounwind
declare i32 @symlink(i8*, i8*) #2

; Function Attrs: noreturn
declare void @xsignal1(i64, i64) #3

; Function Attrs: nounwind uwtable
define i64 @Ffile_name_absolute_p(i64 %filename) #5 {
entry:
  %filename.addr = alloca i64, align 8
  store i64 %filename, i64* %filename.addr, align 8
  %0 = load i64, i64* %filename.addr, align 8
  call void @CHECK_STRING(i64 %0)
  %1 = load i64, i64* %filename.addr, align 8
  %call = call i8* @SSDATA(i64 %1)
  %call1 = call zeroext i1 @file_name_absolute_p(i8* %call)
  br i1 %call1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call2 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call2, %cond.true ], [ %call3, %cond.false ]
  ret i64 %cond
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @file_name_absolute_p(i8* %filename) #5 {
entry:
  %filename.addr = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 47
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %2 = load i8*, i8** %filename.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv2 = sext i8 %3 to i32
  %cmp3 = icmp eq i32 %conv2, 126
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %cmp3, %lor.rhs ]
  ret i1 %4
}

; Function Attrs: nounwind uwtable
define i64 @Ffile_exists_p(i64 %filename) #5 {
entry:
  %retval = alloca i64, align 8
  %filename.addr = alloca i64, align 8
  %absname = alloca i64, align 8
  %handler = alloca i64, align 8
  %result = alloca i64, align 8
  store i64 %filename, i64* %filename.addr, align 8
  %0 = load i64, i64* %filename.addr, align 8
  call void @CHECK_STRING(i64 %0)
  %1 = load i64, i64* %filename.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %call1 = call i64 @Fexpand_file_name(i64 %1, i64 %call)
  store i64 %call1, i64* %absname, align 8
  %2 = load i64, i64* %absname, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 413)
  %call3 = call i64 @Ffind_file_name_handler(i64 %2, i64 %call2)
  store i64 %call3, i64* %handler, align 8
  %3 = load i64, i64* %handler, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %3, %call4
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load i64, i64* %handler, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 413)
  %5 = load i64, i64* %absname, align 8
  %call6 = call i64 @call2(i64 %4, i64 %call5, i64 %5)
  store i64 %call6, i64* %result, align 8
  %call7 = call i32* @__errno_location() #9
  store i32 0, i32* %call7, align 4
  %6 = load i64, i64* %result, align 8
  store i64 %6, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i64, i64* %absname, align 8
  %call8 = call i64 @encode_file_name(i64 %7)
  store i64 %call8, i64* %absname, align 8
  %8 = load i64, i64* %absname, align 8
  %call9 = call i8* @SSDATA(i64 %8)
  %call10 = call zeroext i1 @check_existing(i8* %call9)
  br i1 %call10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %call11 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call12 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call11, %cond.true ], [ %call12, %cond.false ]
  store i64 %cond, i64* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %9 = load i64, i64* %retval
  ret i64 %9
}

; Function Attrs: nounwind uwtable
define i64 @Ffile_executable_p(i64 %filename) #5 {
entry:
  %retval = alloca i64, align 8
  %filename.addr = alloca i64, align 8
  %absname = alloca i64, align 8
  %handler = alloca i64, align 8
  store i64 %filename, i64* %filename.addr, align 8
  %0 = load i64, i64* %filename.addr, align 8
  call void @CHECK_STRING(i64 %0)
  %1 = load i64, i64* %filename.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %call1 = call i64 @Fexpand_file_name(i64 %1, i64 %call)
  store i64 %call1, i64* %absname, align 8
  %2 = load i64, i64* %absname, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 412)
  %call3 = call i64 @Ffind_file_name_handler(i64 %2, i64 %call2)
  store i64 %call3, i64* %handler, align 8
  %3 = load i64, i64* %handler, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %3, %call4
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load i64, i64* %handler, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 412)
  %5 = load i64, i64* %absname, align 8
  %call6 = call i64 @call2(i64 %4, i64 %call5, i64 %5)
  store i64 %call6, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i64, i64* %absname, align 8
  %call7 = call i64 @encode_file_name(i64 %6)
  store i64 %call7, i64* %absname, align 8
  %7 = load i64, i64* %absname, align 8
  %call8 = call i8* @SSDATA(i64 %7)
  %call9 = call zeroext i1 @check_executable(i8* %call8)
  br i1 %call9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %call10 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call11 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call10, %cond.true ], [ %call11, %cond.false ]
  store i64 %cond, i64* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %8 = load i64, i64* %retval
  ret i64 %8
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @check_executable(i8* %filename) #5 {
entry:
  %filename.addr = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call i32 @faccessat(i32 -100, i8* %0, i32 1, i32 512) #6
  %cmp = icmp eq i32 %call, 0
  ret i1 %cmp
}

; Function Attrs: nounwind uwtable
define i64 @Ffile_readable_p(i64 %filename) #5 {
entry:
  %retval = alloca i64, align 8
  %filename.addr = alloca i64, align 8
  %absname = alloca i64, align 8
  %handler = alloca i64, align 8
  store i64 %filename, i64* %filename.addr, align 8
  %0 = load i64, i64* %filename.addr, align 8
  call void @CHECK_STRING(i64 %0)
  %1 = load i64, i64* %filename.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %call1 = call i64 @Fexpand_file_name(i64 %1, i64 %call)
  store i64 %call1, i64* %absname, align 8
  %2 = load i64, i64* %absname, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 425)
  %call3 = call i64 @Ffind_file_name_handler(i64 %2, i64 %call2)
  store i64 %call3, i64* %handler, align 8
  %3 = load i64, i64* %handler, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %3, %call4
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load i64, i64* %handler, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 425)
  %5 = load i64, i64* %absname, align 8
  %call6 = call i64 @call2(i64 %4, i64 %call5, i64 %5)
  store i64 %call6, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i64, i64* %absname, align 8
  %call7 = call i64 @encode_file_name(i64 %6)
  store i64 %call7, i64* %absname, align 8
  %7 = load i64, i64* %absname, align 8
  %call8 = call i8* @SSDATA(i64 %7)
  %call9 = call i32 @faccessat(i32 -100, i8* %call8, i32 4, i32 512) #6
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %call11 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call12 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call11, %cond.true ], [ %call12, %cond.false ]
  store i64 %cond, i64* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %8 = load i64, i64* %retval
  ret i64 %8
}

; Function Attrs: nounwind
declare i32 @faccessat(i32, i8*, i32, i32) #2

; Function Attrs: nounwind uwtable
define i64 @Ffile_writable_p(i64 %filename) #5 {
entry:
  %retval = alloca i64, align 8
  %filename.addr = alloca i64, align 8
  %absname = alloca i64, align 8
  %dir = alloca i64, align 8
  %encoded = alloca i64, align 8
  %handler = alloca i64, align 8
  store i64 %filename, i64* %filename.addr, align 8
  %0 = load i64, i64* %filename.addr, align 8
  call void @CHECK_STRING(i64 %0)
  %1 = load i64, i64* %filename.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %call1 = call i64 @Fexpand_file_name(i64 %1, i64 %call)
  store i64 %call1, i64* %absname, align 8
  %2 = load i64, i64* %absname, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 430)
  %call3 = call i64 @Ffind_file_name_handler(i64 %2, i64 %call2)
  store i64 %call3, i64* %handler, align 8
  %3 = load i64, i64* %handler, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %3, %call4
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load i64, i64* %handler, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 430)
  %5 = load i64, i64* %absname, align 8
  %call6 = call i64 @call2(i64 %4, i64 %call5, i64 %5)
  store i64 %call6, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i64, i64* %absname, align 8
  %call7 = call i64 @encode_file_name(i64 %6)
  store i64 %call7, i64* %encoded, align 8
  %7 = load i64, i64* %encoded, align 8
  %call8 = call i8* @SSDATA(i64 %7)
  %call9 = call zeroext i1 @check_writable(i8* %call8, i32 2)
  br i1 %call9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end
  %call11 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call11, i64* %retval
  br label %return

if.end.12:                                        ; preds = %if.end
  %call13 = call i32* @__errno_location() #9
  %8 = load i32, i32* %call13, align 4
  %cmp14 = icmp ne i32 %8, 2
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.12
  %call16 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call16, i64* %retval
  br label %return

if.end.17:                                        ; preds = %if.end.12
  %9 = load i64, i64* %absname, align 8
  %call18 = call i64 @Ffile_name_directory(i64 %9)
  store i64 %call18, i64* %dir, align 8
  %10 = load i64, i64* %dir, align 8
  %call19 = call i64 @encode_file_name(i64 %10)
  store i64 %call19, i64* %dir, align 8
  %11 = load i64, i64* %dir, align 8
  %call20 = call i8* @SSDATA(i64 %11)
  %call21 = call zeroext i1 @check_writable(i8* %call20, i32 3)
  br i1 %call21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.17
  %call22 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end

cond.false:                                       ; preds = %if.end.17
  %call23 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call22, %cond.true ], [ %call23, %cond.false ]
  store i64 %cond, i64* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then.15, %if.then.10, %if.then
  %12 = load i64, i64* %retval
  ret i64 %12
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @check_writable(i8* %filename, i32 %amode) #5 {
entry:
  %filename.addr = alloca i8*, align 8
  %amode.addr = alloca i32, align 4
  %res = alloca i8, align 1
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %amode, i32* %amode.addr, align 4
  %0 = load i8*, i8** %filename.addr, align 8
  %1 = load i32, i32* %amode.addr, align 4
  %call = call i32 @faccessat(i32 -100, i8* %0, i32 %1, i32 512) #6
  %cmp = icmp eq i32 %call, 0
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, i8* %res, align 1
  %2 = load i8, i8* %res, align 1
  %tobool = trunc i8 %2 to i1
  ret i1 %tobool
}

; Function Attrs: nounwind uwtable
define i64 @Faccess_file(i64 %filename, i64 %string) #5 {
entry:
  %retval = alloca i64, align 8
  %filename.addr = alloca i64, align 8
  %string.addr = alloca i64, align 8
  %handler = alloca i64, align 8
  %encoded_filename = alloca i64, align 8
  %absname = alloca i64, align 8
  store i64 %filename, i64* %filename.addr, align 8
  store i64 %string, i64* %string.addr, align 8
  %0 = load i64, i64* %filename.addr, align 8
  call void @CHECK_STRING(i64 %0)
  %1 = load i64, i64* %filename.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %call1 = call i64 @Fexpand_file_name(i64 %1, i64 %call)
  store i64 %call1, i64* %absname, align 8
  %2 = load i64, i64* %string.addr, align 8
  call void @CHECK_STRING(i64 %2)
  %3 = load i64, i64* %absname, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 158)
  %call3 = call i64 @Ffind_file_name_handler(i64 %3, i64 %call2)
  store i64 %call3, i64* %handler, align 8
  %4 = load i64, i64* %handler, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %4, %call4
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load i64, i64* %handler, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 158)
  %6 = load i64, i64* %absname, align 8
  %7 = load i64, i64* %string.addr, align 8
  %call6 = call i64 @call3(i64 %5, i64 %call5, i64 %6, i64 %7)
  store i64 %call6, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load i64, i64* %absname, align 8
  %call7 = call i64 @encode_file_name(i64 %8)
  store i64 %call7, i64* %encoded_filename, align 8
  %9 = load i64, i64* %encoded_filename, align 8
  %call8 = call i8* @SSDATA(i64 %9)
  %call9 = call i32 @faccessat(i32 -100, i8* %call8, i32 4, i32 512) #6
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end
  %10 = load i64, i64* %string.addr, align 8
  %call12 = call i8* @SSDATA(i64 %10)
  %11 = load i64, i64* %filename.addr, align 8
  call void @report_file_error(i8* %call12, i64 %11) #8
  unreachable

if.end.13:                                        ; preds = %if.end
  %call14 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call14, i64* %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then
  %12 = load i64, i64* %retval
  ret i64 %12
}

; Function Attrs: nounwind uwtable
define i64 @emacs_readlinkat(i32 %fd, i8* %filename) #5 {
entry:
  %retval = alloca i64, align 8
  %fd.addr = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %val = alloca i64, align 8
  %readlink_buf = alloca [1024 x i8], align 16
  %buf = alloca i8*, align 8
  %slash_colon = alloca i64, align 8
  %.compoundliteral = alloca %union.Aligned_String, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i32, i32* %fd.addr, align 4
  %1 = load i8*, i8** %filename.addr, align 8
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %readlink_buf, i32 0, i32 0
  %call = call i8* @careadlinkat(i32 %0, i8* %1, i8* %arraydecay, i64 1024, %struct.allocator* @emacs_readlinkat.emacs_norealloc_allocator, i64 (i32, i8*, i8*, i64)* @readlinkat)
  store i8* %call, i8** %buf, align 8
  %2 = load i8*, i8** %buf, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %buf, align 8
  %call2 = call i64 @build_unibyte_string(i8* %3)
  store i64 %call2, i64* %val, align 8
  %4 = load i8*, i8** %buf, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 47
  br i1 %cmp, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %if.end
  %6 = load i8*, i8** %buf, align 8
  %call4 = call i8* @strchr(i8* %6, i32 58) #10
  %tobool5 = icmp ne i8* %call4, null
  br i1 %tobool5, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %land.lhs.true
  %s = bitcast %union.Aligned_String* %.compoundliteral to %struct.Lisp_String*
  %size = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 0
  store i64 2, i64* %size, align 8
  %size_byte = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 1
  store i64 -1, i64* %size_byte, align 8
  %intervals = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 2
  store %struct.interval* null, %struct.interval** %intervals, align 8
  %data = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 3
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i8** %data, align 8
  %s7 = bitcast %union.Aligned_String* %.compoundliteral to %struct.Lisp_String*
  %7 = bitcast %struct.Lisp_String* %s7 to i8*
  %call8 = call i64 @make_lisp_ptr(i8* %7, i32 4)
  store i64 %call8, i64* %slash_colon, align 8
  %8 = load i64, i64* %slash_colon, align 8
  %9 = load i64, i64* %val, align 8
  %call9 = call i64 @concat2(i64 %8, i64 %9)
  store i64 %call9, i64* %val, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.6, %land.lhs.true, %if.end
  %10 = load i8*, i8** %buf, align 8
  %arraydecay11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %readlink_buf, i32 0, i32 0
  %cmp12 = icmp ne i8* %10, %arraydecay11
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.10
  %11 = load i8*, i8** %buf, align 8
  call void @xfree(i8* %11)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.10
  %12 = load i64, i64* %val, align 8
  %call16 = call i64 @decode_file_name(i64 %12)
  store i64 %call16, i64* %val, align 8
  %13 = load i64, i64* %val, align 8
  store i64 %13, i64* %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then
  %14 = load i64, i64* %retval
  ret i64 %14
}

declare noalias i8* @xmalloc(i64) #1

declare void @xfree(i8*) #1

; Function Attrs: noreturn
declare void @memory_full(i64) #3

declare i8* @careadlinkat(i32, i8*, i8*, i64, %struct.allocator*, i64 (i32, i8*, i8*, i64)*) #1

; Function Attrs: nounwind
declare i64 @readlinkat(i32, i8*, i8*, i64) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #7

declare i64 @make_lisp_ptr(i8*, i32) #1

declare i64 @concat2(i64, i64) #1

; Function Attrs: nounwind uwtable
define zeroext i1 @file_directory_p(i8* %file) #5 {
entry:
  %file.addr = alloca i8*, align 8
  %st = alloca %struct.stat, align 8
  store i8* %file, i8** %file.addr, align 8
  %0 = load i8*, i8** %file.addr, align 8
  %call = call i32 @stat(i8* %0, %struct.stat* %st) #6
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 3
  %1 = load i32, i32* %st_mode, align 4
  %and = and i32 %1, 61440
  %cmp1 = icmp eq i32 %and, 16384
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  ret i1 %2
}

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #2

; Function Attrs: nounwind uwtable
define i64 @Ffile_accessible_directory_p(i64 %filename) #5 {
entry:
  %retval = alloca i64, align 8
  %filename.addr = alloca i64, align 8
  %absname = alloca i64, align 8
  %handler = alloca i64, align 8
  %r = alloca i64, align 8
  store i64 %filename, i64* %filename.addr, align 8
  %0 = load i64, i64* %filename.addr, align 8
  call void @CHECK_STRING(i64 %0)
  %1 = load i64, i64* %filename.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %call1 = call i64 @Fexpand_file_name(i64 %1, i64 %call)
  store i64 %call1, i64* %absname, align 8
  %2 = load i64, i64* %absname, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 404)
  %call3 = call i64 @Ffind_file_name_handler(i64 %2, i64 %call2)
  store i64 %call3, i64* %handler, align 8
  %3 = load i64, i64* %handler, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %3, %call4
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load i64, i64* %handler, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 404)
  %5 = load i64, i64* %absname, align 8
  %call6 = call i64 @call2(i64 %4, i64 %call5, i64 %5)
  store i64 %call6, i64* %r, align 8
  %call7 = call i32* @__errno_location() #9
  store i32 0, i32* %call7, align 4
  %6 = load i64, i64* %r, align 8
  store i64 %6, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i64, i64* %absname, align 8
  %call8 = call i64 @encode_file_name(i64 %7)
  store i64 %call8, i64* %absname, align 8
  %8 = load i64, i64* %absname, align 8
  %call9 = call zeroext i1 @file_accessible_directory_p(i64 %8)
  br i1 %call9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %call10 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call11 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call10, %cond.true ], [ %call11, %cond.false ]
  store i64 %cond, i64* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %9 = load i64, i64* %retval
  ret i64 %9
}

; Function Attrs: nounwind uwtable
define zeroext i1 @file_accessible_directory_p(i64 %file) #5 {
entry:
  %file.addr = alloca i64, align 8
  %data = alloca i8*, align 8
  %len = alloca i64, align 8
  %dir = alloca i8*, align 8
  %ok = alloca i8, align 1
  %saved_errno = alloca i32, align 4
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  %buf = alloca i8*, align 8
  store i64 %file, i64* %file.addr, align 8
  %0 = load i64, i64* %file.addr, align 8
  %call = call i8* @SSDATA(i64 %0)
  store i8* %call, i8** %data, align 8
  %1 = load i64, i64* %file.addr, align 8
  %call1 = call i64 @SBYTES(i64 %1)
  store i64 %call1, i64* %len, align 8
  store i64 16384, i64* %sa_avail, align 8
  %call2 = call i64 @SPECPDL_INDEX()
  store i64 %call2, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  %2 = load i64, i64* %len, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8
  store i8* %3, i8** %dir, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load i64, i64* %len, align 8
  %add = add nsw i64 %4, 3
  %5 = load i64, i64* %sa_avail, align 8
  %cmp = icmp sle i64 %add, %5
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %6 = load i64, i64* %len, align 8
  %add3 = add nsw i64 %6, 3
  %7 = load i64, i64* %sa_avail, align 8
  %sub = sub nsw i64 %7, %add3
  store i64 %sub, i64* %sa_avail, align 8
  %8 = load i64, i64* %len, align 8
  %add4 = add nsw i64 %8, 3
  %9 = alloca i8, i64 %add4
  br label %cond.end

cond.false:                                       ; preds = %if.else
  store i8 1, i8* %sa_must_free, align 1
  %10 = load i64, i64* %len, align 8
  %add5 = add nsw i64 %10, 3
  %call6 = call i8* @record_xmalloc(i64 %add5)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %9, %cond.true ], [ %call6, %cond.false ]
  store i8* %cond, i8** %buf, align 8
  %11 = load i8*, i8** %buf, align 8
  %12 = load i8*, i8** %data, align 8
  %13 = load i64, i64* %len, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 %13, i32 1, i1 false)
  %14 = load i8*, i8** %buf, align 8
  %15 = load i64, i64* %len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %15
  %16 = load i64, i64* %len, align 8
  %sub7 = sub nsw i64 %16, 1
  %17 = load i8*, i8** %data, align 8
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 %sub7
  %18 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %18 to i32
  %cmp8 = icmp eq i32 %conv, 47
  %conv9 = zext i1 %cmp8 to i32
  %idxprom = sext i32 %conv9 to i64
  %arrayidx10 = getelementptr inbounds [3 x i8], [3 x i8]* @.str.31, i32 0, i64 %idxprom
  %call11 = call i8* @strcpy(i8* %add.ptr, i8* %arrayidx10) #6
  %19 = load i8*, i8** %buf, align 8
  store i8* %19, i8** %dir, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  %20 = load i8*, i8** %dir, align 8
  %call12 = call zeroext i1 @check_existing(i8* %20)
  %frombool = zext i1 %call12 to i8
  store i8 %frombool, i8* %ok, align 1
  %call13 = call i32* @__errno_location() #9
  %21 = load i32, i32* %call13, align 4
  store i32 %21, i32* %saved_errno, align 4
  br label %do.body

do.body:                                          ; preds = %if.end
  %22 = load i8, i8* %sa_must_free, align 1
  %tobool14 = trunc i8 %22 to i1
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %do.body
  store i8 0, i8* %sa_must_free, align 1
  %23 = load i64, i64* %sa_count, align 8
  %call16 = call i64 @builtin_lisp_symbol(i32 0)
  %call17 = call i64 @unbind_to(i64 %23, i64 %call16)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.18
  %24 = load i32, i32* %saved_errno, align 4
  %call19 = call i32* @__errno_location() #9
  store i32 %24, i32* %call19, align 4
  %25 = load i8, i8* %ok, align 1
  %tobool20 = trunc i8 %25 to i1
  ret i1 %tobool20
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define i64 @Ffile_regular_p(i64 %filename) #5 {
entry:
  %retval = alloca i64, align 8
  %filename.addr = alloca i64, align 8
  %absname = alloca i64, align 8
  %st = alloca %struct.stat, align 8
  %handler = alloca i64, align 8
  store i64 %filename, i64* %filename.addr, align 8
  %0 = load i64, i64* %filename.addr, align 8
  %1 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %directory_ = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 3
  %2 = load i64, i64* %directory_, align 8
  %call = call i64 @expand_and_dir_to_file(i64 %0, i64 %2)
  store i64 %call, i64* %absname, align 8
  %3 = load i64, i64* %absname, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 426)
  %call2 = call i64 @Ffind_file_name_handler(i64 %3, i64 %call1)
  store i64 %call2, i64* %handler, align 8
  %4 = load i64, i64* %handler, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %4, %call3
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load i64, i64* %handler, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 426)
  %6 = load i64, i64* %absname, align 8
  %call5 = call i64 @call2(i64 %5, i64 %call4, i64 %6)
  store i64 %call5, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i64, i64* %absname, align 8
  %call6 = call i64 @encode_file_name(i64 %7)
  store i64 %call6, i64* %absname, align 8
  %8 = load i64, i64* %absname, align 8
  %call7 = call i8* @SSDATA(i64 %8)
  %call8 = call i32 @stat(i8* %call7, %struct.stat* %st) #6
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end
  %call11 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call11, i64* %retval
  br label %return

if.end.12:                                        ; preds = %if.end
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 3
  %9 = load i32, i32* %st_mode, align 4
  %and = and i32 %9, 61440
  %cmp13 = icmp eq i32 %and, 32768
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.12
  %call14 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end

cond.false:                                       ; preds = %if.end.12
  %call15 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call14, %cond.true ], [ %call15, %cond.false ]
  store i64 %cond, i64* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then.10, %if.then
  %10 = load i64, i64* %retval
  ret i64 %10
}

; Function Attrs: nounwind uwtable
define i64 @Ffile_selinux_context(i64 %filename) #5 {
entry:
  %retval = alloca i64, align 8
  %filename.addr = alloca i64, align 8
  %absname = alloca i64, align 8
  %user = alloca i64, align 8
  %role = alloca i64, align 8
  %type = alloca i64, align 8
  %range = alloca i64, align 8
  %handler = alloca i64, align 8
  store i64 %filename, i64* %filename.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %user, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* %role, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call2, i64* %type, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call3, i64* %range, align 8
  %0 = load i64, i64* %filename.addr, align 8
  %1 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %directory_ = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 3
  %2 = load i64, i64* %directory_, align 8
  %call4 = call i64 @expand_and_dir_to_file(i64 %0, i64 %2)
  store i64 %call4, i64* %absname, align 8
  %3 = load i64, i64* %absname, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 427)
  %call6 = call i64 @Ffind_file_name_handler(i64 %3, i64 %call5)
  store i64 %call6, i64* %handler, align 8
  %4 = load i64, i64* %handler, align 8
  %call7 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %4, %call7
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load i64, i64* %handler, align 8
  %call8 = call i64 @builtin_lisp_symbol(i32 427)
  %6 = load i64, i64* %absname, align 8
  %call9 = call i64 @call2(i64 %5, i64 %call8, i64 %6)
  store i64 %call9, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i64, i64* %absname, align 8
  %call10 = call i64 @encode_file_name(i64 %7)
  store i64 %call10, i64* %absname, align 8
  %8 = load i64, i64* %user, align 8
  %9 = load i64, i64* %role, align 8
  %10 = load i64, i64* %type, align 8
  %11 = load i64, i64* %range, align 8
  %call11 = call i64 @list4(i64 %8, i64 %9, i64 %10, i64 %11)
  store i64 %call11, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i64, i64* %retval
  ret i64 %12
}

declare i64 @list4(i64, i64, i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fset_file_selinux_context(i64 %filename, i64 %context) #5 {
entry:
  %retval = alloca i64, align 8
  %filename.addr = alloca i64, align 8
  %context.addr = alloca i64, align 8
  %absname = alloca i64, align 8
  %handler = alloca i64, align 8
  store i64 %filename, i64* %filename.addr, align 8
  store i64 %context, i64* %context.addr, align 8
  %0 = load i64, i64* %filename.addr, align 8
  %1 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %directory_ = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 3
  %2 = load i64, i64* %directory_, align 8
  %call = call i64 @Fexpand_file_name(i64 %0, i64 %2)
  store i64 %call, i64* %absname, align 8
  %3 = load i64, i64* %absname, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 849)
  %call2 = call i64 @Ffind_file_name_handler(i64 %3, i64 %call1)
  store i64 %call2, i64* %handler, align 8
  %4 = load i64, i64* %handler, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %4, %call3
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load i64, i64* %handler, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 849)
  %6 = load i64, i64* %absname, align 8
  %7 = load i64, i64* %context.addr, align 8
  %call5 = call i64 @call3(i64 %5, i64 %call4, i64 %6, i64 %7)
  store i64 %call5, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call6, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i64, i64* %retval
  ret i64 %8
}

; Function Attrs: nounwind uwtable
define i64 @Ffile_acl(i64 %filename) #5 {
entry:
  %filename.addr = alloca i64, align 8
  store i64 %filename, i64* %filename.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @Fset_file_acl(i64 %filename, i64 %acl_string) #5 {
entry:
  %filename.addr = alloca i64, align 8
  %acl_string.addr = alloca i64, align 8
  store i64 %filename, i64* %filename.addr, align 8
  store i64 %acl_string, i64* %acl_string.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @Ffile_modes(i64 %filename) #5 {
entry:
  %retval = alloca i64, align 8
  %filename.addr = alloca i64, align 8
  %absname = alloca i64, align 8
  %st = alloca %struct.stat, align 8
  %handler = alloca i64, align 8
  store i64 %filename, i64* %filename.addr, align 8
  %0 = load i64, i64* %filename.addr, align 8
  %1 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %directory_ = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 3
  %2 = load i64, i64* %directory_, align 8
  %call = call i64 @expand_and_dir_to_file(i64 %0, i64 %2)
  store i64 %call, i64* %absname, align 8
  %3 = load i64, i64* %absname, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 414)
  %call2 = call i64 @Ffind_file_name_handler(i64 %3, i64 %call1)
  store i64 %call2, i64* %handler, align 8
  %4 = load i64, i64* %handler, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %4, %call3
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load i64, i64* %handler, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 414)
  %6 = load i64, i64* %absname, align 8
  %call5 = call i64 @call2(i64 %5, i64 %call4, i64 %6)
  store i64 %call5, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i64, i64* %absname, align 8
  %call6 = call i64 @encode_file_name(i64 %7)
  store i64 %call6, i64* %absname, align 8
  %8 = load i64, i64* %absname, align 8
  %call7 = call i8* @SSDATA(i64 %8)
  %call8 = call i32 @stat(i8* %call7, %struct.stat* %st) #6
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end
  %call11 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call11, i64* %retval
  br label %return

if.end.12:                                        ; preds = %if.end
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 3
  %9 = load i32, i32* %st_mode, align 4
  %and = and i32 %9, 4095
  %conv = zext i32 %and to i64
  %shl = shl i64 %conv, 2
  %add = add i64 %shl, 2
  store i64 %add, i64* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.10, %if.then
  %10 = load i64, i64* %retval
  ret i64 %10
}

; Function Attrs: nounwind uwtable
define i64 @Fset_file_modes(i64 %filename, i64 %mode) #5 {
entry:
  %retval = alloca i64, align 8
  %filename.addr = alloca i64, align 8
  %mode.addr = alloca i64, align 8
  %absname = alloca i64, align 8
  %encoded_absname = alloca i64, align 8
  %handler = alloca i64, align 8
  store i64 %filename, i64* %filename.addr, align 8
  store i64 %mode, i64* %mode.addr, align 8
  %0 = load i64, i64* %filename.addr, align 8
  %1 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %directory_ = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 3
  %2 = load i64, i64* %directory_, align 8
  %call = call i64 @Fexpand_file_name(i64 %0, i64 %2)
  store i64 %call, i64* %absname, align 8
  %3 = load i64, i64* %mode.addr, align 8
  %and = and i64 %3, 7
  %conv = trunc i64 %and to i32
  %and1 = and i32 %conv, -5
  %cmp = icmp eq i32 %and1, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call3 = call i64 @builtin_lisp_symbol(i32 559)
  %4 = load i64, i64* %mode.addr, align 8
  %5 = call i64 @wrong_type_argument(i64 %call3, i64 %4) #8
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %6, %cond.true
  %7 = load i64, i64* %absname, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 848)
  %call5 = call i64 @Ffind_file_name_handler(i64 %7, i64 %call4)
  store i64 %call5, i64* %handler, align 8
  %8 = load i64, i64* %handler, align 8
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp7 = icmp eq i64 %8, %call6
  br i1 %cmp7, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  %9 = load i64, i64* %handler, align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 848)
  %10 = load i64, i64* %absname, align 8
  %11 = load i64, i64* %mode.addr, align 8
  %call10 = call i64 @call3(i64 %9, i64 %call9, i64 %10, i64 %11)
  store i64 %call10, i64* %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %12 = load i64, i64* %absname, align 8
  %call11 = call i64 @encode_file_name(i64 %12)
  store i64 %call11, i64* %encoded_absname, align 8
  %13 = load i64, i64* %encoded_absname, align 8
  %call12 = call i8* @SSDATA(i64 %13)
  %14 = load i64, i64* %mode.addr, align 8
  %shr = ashr i64 %14, 2
  %and13 = and i64 %shr, 4095
  %conv14 = trunc i64 %and13 to i32
  %call15 = call i32 @chmod(i8* %call12, i32 %conv14) #6
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end
  %15 = load i64, i64* %absname, align 8
  call void @report_file_error(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i64 %15) #8
  unreachable

if.end.19:                                        ; preds = %if.end
  %call20 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call20, i64* %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then
  %16 = load i64, i64* %retval
  ret i64 %16
}

; Function Attrs: noreturn
declare i64 @wrong_type_argument(i64, i64) #3

; Function Attrs: nounwind
declare i32 @chmod(i8*, i32) #2

; Function Attrs: nounwind uwtable
define i64 @Fset_default_file_modes(i64 %mode) #5 {
entry:
  %mode.addr = alloca i64, align 8
  %oldrealmask = alloca i32, align 4
  %oldumask = alloca i32, align 4
  %newumask = alloca i32, align 4
  store i64 %mode, i64* %mode.addr, align 8
  %0 = load i64, i64* %mode.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %and1 = and i32 %conv, -5
  %cmp = icmp eq i32 %and1, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 559)
  %1 = load i64, i64* %mode.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call, i64 %1) #8
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i32, i32* @realmask, align 4
  store i32 %4, i32* %oldrealmask, align 4
  %5 = load i64, i64* %mode.addr, align 8
  %shr = ashr i64 %5, 2
  %neg = xor i64 %shr, -1
  %and3 = and i64 %neg, 511
  %conv4 = trunc i64 %and3 to i32
  store i32 %conv4, i32* %newumask, align 4
  call void @block_input()
  %6 = load i32, i32* %newumask, align 4
  store i32 %6, i32* @realmask, align 4
  %7 = load i32, i32* %newumask, align 4
  %call5 = call i32 @umask(i32 %7) #6
  store i32 %call5, i32* %oldumask, align 4
  call void @unblock_input()
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call6
}

; Function Attrs: nounwind
declare i32 @umask(i32) #2

; Function Attrs: nounwind uwtable
define i64 @Fdefault_file_modes() #5 {
entry:
  %value = alloca i64, align 8
  %0 = load i32, i32* @realmask, align 4
  %neg = xor i32 %0, -1
  %and = and i32 %neg, 511
  %conv = zext i32 %and to i64
  %shl = shl i64 %conv, 2
  %add = add i64 %shl, 2
  store i64 %add, i64* %value, align 8
  %1 = load i64, i64* %value, align 8
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define i64 @Fset_file_times(i64 %filename, i64 %timestamp) #5 {
entry:
  %retval = alloca i64, align 8
  %filename.addr = alloca i64, align 8
  %timestamp.addr = alloca i64, align 8
  %absname = alloca i64, align 8
  %encoded_absname = alloca i64, align 8
  %handler = alloca i64, align 8
  %t = alloca %struct.timespec, align 8
  store i64 %filename, i64* %filename.addr, align 8
  store i64 %timestamp, i64* %timestamp.addr, align 8
  %0 = load i64, i64* %timestamp.addr, align 8
  %call = call { i64, i64 } @lisp_time_argument(i64 %0)
  %1 = bitcast %struct.timespec* %t to { i64, i64 }*
  %2 = getelementptr { i64, i64 }, { i64, i64 }* %1, i32 0, i32 0
  %3 = extractvalue { i64, i64 } %call, 0
  store i64 %3, i64* %2, align 8
  %4 = getelementptr { i64, i64 }, { i64, i64 }* %1, i32 0, i32 1
  %5 = extractvalue { i64, i64 } %call, 1
  store i64 %5, i64* %4, align 8
  %6 = load i64, i64* %filename.addr, align 8
  %7 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %directory_ = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 3
  %8 = load i64, i64* %directory_, align 8
  %call1 = call i64 @Fexpand_file_name(i64 %6, i64 %8)
  store i64 %call1, i64* %absname, align 8
  %9 = load i64, i64* %absname, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 850)
  %call3 = call i64 @Ffind_file_name_handler(i64 %9, i64 %call2)
  store i64 %call3, i64* %handler, align 8
  %10 = load i64, i64* %handler, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %10, %call4
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %11 = load i64, i64* %handler, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 850)
  %12 = load i64, i64* %absname, align 8
  %13 = load i64, i64* %timestamp.addr, align 8
  %call6 = call i64 @call3(i64 %11, i64 %call5, i64 %12, i64 %13)
  store i64 %call6, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %14 = load i64, i64* %absname, align 8
  %call7 = call i64 @encode_file_name(i64 %14)
  store i64 %call7, i64* %encoded_absname, align 8
  %15 = load i64, i64* %encoded_absname, align 8
  %call8 = call i8* @SSDATA(i64 %15)
  %16 = bitcast %struct.timespec* %t to { i64, i64 }*
  %17 = getelementptr { i64, i64 }, { i64, i64 }* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 1
  %19 = getelementptr { i64, i64 }, { i64, i64 }* %16, i32 0, i32 1
  %20 = load i64, i64* %19, align 1
  %21 = bitcast %struct.timespec* %t to { i64, i64 }*
  %22 = getelementptr { i64, i64 }, { i64, i64 }* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 1
  %24 = getelementptr { i64, i64 }, { i64, i64 }* %21, i32 0, i32 1
  %25 = load i64, i64* %24, align 1
  %call9 = call i32 @set_file_times(i32 -1, i8* %call8, i64 %18, i64 %20, i64 %23, i64 %25)
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  %26 = load i64, i64* %absname, align 8
  call void @report_file_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i32 0, i32 0), i64 %26) #8
  unreachable

if.end.12:                                        ; preds = %if.end
  %call13 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call13, i64* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then
  %27 = load i64, i64* %retval
  ret i64 %27
}

declare { i64, i64 } @lisp_time_argument(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Funix_sync() #5 {
entry:
  call void @sync() #6
  %call = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call
}

; Function Attrs: nounwind
declare void @sync() #2

; Function Attrs: nounwind uwtable
define i64 @Ffile_newer_than_file_p(i64 %file1, i64 %file2) #5 {
entry:
  %retval = alloca i64, align 8
  %file1.addr = alloca i64, align 8
  %file2.addr = alloca i64, align 8
  %absname1 = alloca i64, align 8
  %absname2 = alloca i64, align 8
  %st1 = alloca %struct.stat, align 8
  %st2 = alloca %struct.stat, align 8
  %handler = alloca i64, align 8
  %agg.tmp = alloca %struct.timespec, align 8
  %agg.tmp30 = alloca %struct.timespec, align 8
  store i64 %file1, i64* %file1.addr, align 8
  store i64 %file2, i64* %file2.addr, align 8
  %0 = load i64, i64* %file1.addr, align 8
  call void @CHECK_STRING(i64 %0)
  %1 = load i64, i64* %file2.addr, align 8
  call void @CHECK_STRING(i64 %1)
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %absname1, align 8
  %2 = load i64, i64* %file1.addr, align 8
  %3 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %directory_ = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i32 0, i32 3
  %4 = load i64, i64* %directory_, align 8
  %call1 = call i64 @expand_and_dir_to_file(i64 %2, i64 %4)
  store i64 %call1, i64* %absname1, align 8
  %5 = load i64, i64* %file2.addr, align 8
  %6 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %directory_2 = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 3
  %7 = load i64, i64* %directory_2, align 8
  %call3 = call i64 @expand_and_dir_to_file(i64 %5, i64 %7)
  store i64 %call3, i64* %absname2, align 8
  %8 = load i64, i64* %absname1, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 422)
  %call5 = call i64 @Ffind_file_name_handler(i64 %8, i64 %call4)
  store i64 %call5, i64* %handler, align 8
  %9 = load i64, i64* %handler, align 8
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %9, %call6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i64, i64* %absname2, align 8
  %call7 = call i64 @builtin_lisp_symbol(i32 422)
  %call8 = call i64 @Ffind_file_name_handler(i64 %10, i64 %call7)
  store i64 %call8, i64* %handler, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i64, i64* %handler, align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp10 = icmp eq i64 %11, %call9
  br i1 %cmp10, label %if.end.14, label %if.then.11

if.then.11:                                       ; preds = %if.end
  %12 = load i64, i64* %handler, align 8
  %call12 = call i64 @builtin_lisp_symbol(i32 422)
  %13 = load i64, i64* %absname1, align 8
  %14 = load i64, i64* %absname2, align 8
  %call13 = call i64 @call3(i64 %12, i64 %call12, i64 %13, i64 %14)
  store i64 %call13, i64* %retval
  br label %return

if.end.14:                                        ; preds = %if.end
  %15 = load i64, i64* %absname1, align 8
  %call15 = call i64 @encode_file_name(i64 %15)
  store i64 %call15, i64* %absname1, align 8
  %16 = load i64, i64* %absname2, align 8
  %call16 = call i64 @encode_file_name(i64 %16)
  store i64 %call16, i64* %absname2, align 8
  %17 = load i64, i64* %absname1, align 8
  %call17 = call i8* @SSDATA(i64 %17)
  %call18 = call i32 @stat(i8* %call17, %struct.stat* %st1) #6
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end.14
  %call21 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call21, i64* %retval
  br label %return

if.end.22:                                        ; preds = %if.end.14
  %18 = load i64, i64* %absname2, align 8
  %call23 = call i8* @SSDATA(i64 %18)
  %call24 = call i32 @stat(i8* %call23, %struct.stat* %st2) #6
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.end.22
  %call27 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call27, i64* %retval
  br label %return

if.end.28:                                        ; preds = %if.end.22
  %call29 = call { i64, i64 } @get_stat_mtime(%struct.stat* %st2) #10
  %19 = bitcast %struct.timespec* %agg.tmp to { i64, i64 }*
  %20 = getelementptr { i64, i64 }, { i64, i64 }* %19, i32 0, i32 0
  %21 = extractvalue { i64, i64 } %call29, 0
  store i64 %21, i64* %20, align 8
  %22 = getelementptr { i64, i64 }, { i64, i64 }* %19, i32 0, i32 1
  %23 = extractvalue { i64, i64 } %call29, 1
  store i64 %23, i64* %22, align 8
  %call31 = call { i64, i64 } @get_stat_mtime(%struct.stat* %st1) #10
  %24 = bitcast %struct.timespec* %agg.tmp30 to { i64, i64 }*
  %25 = getelementptr { i64, i64 }, { i64, i64 }* %24, i32 0, i32 0
  %26 = extractvalue { i64, i64 } %call31, 0
  store i64 %26, i64* %25, align 8
  %27 = getelementptr { i64, i64 }, { i64, i64 }* %24, i32 0, i32 1
  %28 = extractvalue { i64, i64 } %call31, 1
  store i64 %28, i64* %27, align 8
  %29 = bitcast %struct.timespec* %agg.tmp to { i64, i64 }*
  %30 = getelementptr { i64, i64 }, { i64, i64 }* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 1
  %32 = getelementptr { i64, i64 }, { i64, i64 }* %29, i32 0, i32 1
  %33 = load i64, i64* %32, align 1
  %34 = bitcast %struct.timespec* %agg.tmp30 to { i64, i64 }*
  %35 = getelementptr { i64, i64 }, { i64, i64 }* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 1
  %37 = getelementptr { i64, i64 }, { i64, i64 }* %34, i32 0, i32 1
  %38 = load i64, i64* %37, align 1
  %call32 = call i32 @timespec_cmp(i64 %31, i64 %33, i64 %36, i64 %38) #10
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.28
  %call34 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end

cond.false:                                       ; preds = %if.end.28
  %call35 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call34, %cond.true ], [ %call35, %cond.false ]
  store i64 %cond, i64* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then.26, %if.then.20, %if.then.11
  %39 = load i64, i64* %retval
  ret i64 %39
}

; Function Attrs: nounwind readonly
declare i32 @timespec_cmp(i64, i64, i64, i64) #7

; Function Attrs: nounwind uwtable
define i64 @Finsert_file_contents(i64 %filename, i64 %visit, i64 %beg, i64 %end, i64 %replace) #5 {
entry:
  %filename.addr = alloca i64, align 8
  %visit.addr = alloca i64, align 8
  %beg.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %replace.addr = alloca i64, align 8
  %st = alloca %struct.stat, align 8
  %mtime = alloca %struct.timespec, align 8
  %fd = alloca i32, align 4
  %inserted = alloca i64, align 8
  %how_much = alloca i64, align 8
  %beg_offset = alloca i64, align 8
  %end_offset = alloca i64, align 8
  %unprocessed = alloca i32, align 4
  %count = alloca i64, align 8
  %handler = alloca i64, align 8
  %val = alloca i64, align 8
  %insval = alloca i64, align 8
  %orig_filename = alloca i64, align 8
  %old_undo = alloca i64, align 8
  %p = alloca i64, align 8
  %total = alloca i64, align 8
  %not_regular = alloca i8, align 1
  %save_errno = alloca i32, align 4
  %read_buf = alloca [65536 x i8], align 16
  %coding = alloca %struct.coding_system, align 8
  %replace_handled = alloca i8, align 1
  %set_coding_system = alloca i8, align 1
  %coding_system = alloca i64, align 8
  %read_quit = alloca i8, align 1
  %empty_undo_list_p = alloca i8, align 1
  %old_Vdeactivate_mark = alloca i64, align 8
  %we_locked_file = alloca i8, align 1
  %fd_index = alloca i64, align 8
  %window_markers = alloca i64, align 8
  %same_at_start = alloca i64, align 8
  %same_at_end = alloca i64, align 8
  %same_at_end_charpos = alloca i64, align 8
  %coerce = alloca %struct.timespec, align 8
  %coerce111 = alloca %struct.timespec, align 8
  %likely_end = alloca i64, align 8
  %buf_bytes = alloca i64, align 8
  %buf_growth_max = alloca i64, align 8
  %likely_growth = alloca i64, align 8
  %nread = alloca i32, align 4
  %ntail = alloca i32, align 4
  %name = alloca i64, align 8
  %.compoundliteral = alloca %union.Aligned_String, align 8
  %prev = alloca %struct.buffer*, align 8
  %workbuf = alloca i64, align 8
  %buf = alloca %struct.buffer*, align 8
  %.compoundliteral303 = alloca [6 x i64], align 8
  %overlap = alloca i64, align 8
  %giveup_match_end = alloca i8, align 1
  %nread395 = alloca i32, align 4
  %bufpos = alloca i32, align 4
  %total_read = alloca i32, align 4
  %nread492 = alloca i32, align 4
  %bufpos493 = alloca i32, align 4
  %trial = alloca i32, align 4
  %curpos = alloca i64, align 8
  %temp = alloca i64, align 8
  %same_at_start_charpos = alloca i64, align 8
  %inserted_chars = alloca i64, align 8
  %overlap759 = alloca i64, align 8
  %bufpos760 = alloca i64, align 8
  %decoded = alloca i8*, align 8
  %temp761 = alloca i64, align 8
  %this = alloca i64, align 8
  %this_count = alloca i64, align 8
  %multibyte = alloca i8, align 1
  %conversion_buffer = alloca i64, align 8
  %gap_size1142 = alloca i64, align 8
  %trytry = alloca i64, align 8
  %this1157 = alloca i64, align 8
  %nbytes = alloca i64, align 8
  %unwind_data = alloca i64, align 8
  %count1 = alloca i64, align 8
  %.compoundliteral1294 = alloca [6 x i64], align 8
  %count11553 = alloca i64, align 8
  %old_inserted = alloca i64, align 8
  %opoint = alloca i64, align 8
  %opoint_byte = alloca i64, align 8
  %oinserted = alloca i64, align 8
  %ochars_modiff = alloca i64, align 8
  %opoint1642 = alloca i64, align 8
  %opoint_byte1645 = alloca i64, align 8
  %oinserted1648 = alloca i64, align 8
  %ochars_modiff1652 = alloca i64, align 8
  %tem = alloca i64, align 8
  store i64 %filename, i64* %filename.addr, align 8
  store i64 %visit, i64* %visit.addr, align 8
  store i64 %beg, i64* %beg.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  store i64 %replace, i64* %replace.addr, align 8
  store i64 0, i64* %inserted, align 8
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %count, align 8
  store i64 0, i64* %total, align 8
  store i8 0, i8* %not_regular, align 1
  store i32 0, i32* %save_errno, align 4
  store i8 0, i8* %replace_handled, align 1
  store i8 0, i8* %set_coding_system, align 1
  store i8 0, i8* %read_quit, align 1
  %0 = load i64, i64* %visit.addr, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call1
  br i1 %cmp, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %undo_list_ = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 98
  %2 = load i64, i64* %undo_list_, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp3 = icmp eq i64 %2, %call2
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %3 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i32 0, i32 73
  %4 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %z = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %4, i32 0, i32 2
  %5 = load i64, i64* %z, align 8
  %cmp4 = icmp eq i64 1, %5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %6 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp4, %land.rhs ]
  %frombool = zext i1 %6 to i8
  store i8 %frombool, i8* %empty_undo_list_p, align 1
  %7 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 52), align 8
  store i64 %7, i64* %old_Vdeactivate_mark, align 8
  store i8 0, i8* %we_locked_file, align 1
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call5, i64* %window_markers, align 8
  %8 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 78
  %9 = load i64, i64* %begv_byte, align 8
  store i64 %9, i64* %same_at_start, align 8
  %10 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %10, i32 0, i32 80
  %11 = load i64, i64* %zv_byte, align 8
  store i64 %11, i64* %same_at_end, align 8
  %12 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %12, i32 0, i32 79
  %13 = load i64, i64* %zv, align 8
  store i64 %13, i64* %same_at_end_charpos, align 8
  %14 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %base_buffer = getelementptr inbounds %struct.buffer, %struct.buffer* %14, i32 0, i32 81
  %15 = load %struct.buffer*, %struct.buffer** %base_buffer, align 8
  %tobool = icmp ne %struct.buffer* %15, null
  br i1 %tobool, label %land.lhs.true.6, label %if.end

land.lhs.true.6:                                  ; preds = %land.end
  %16 = load i64, i64* %visit.addr, align 8
  %call7 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp8 = icmp eq i64 %16, %call7
  br i1 %cmp8, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.6
  call void (i8*, ...) @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.34, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %land.lhs.true.6, %land.end
  %17 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %read_only_ = getelementptr inbounds %struct.buffer, %struct.buffer* %17, i32 0, i32 7
  %18 = load i64, i64* %read_only_, align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp10 = icmp eq i64 %18, %call9
  br i1 %cmp10, label %if.end.14, label %if.then.11

if.then.11:                                       ; preds = %if.end
  %call12 = call i64 @builtin_lisp_symbol(i32 0)
  %call13 = call i64 @Fbarf_if_buffer_read_only(i64 %call12)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end
  %call15 = call i64 @builtin_lisp_symbol(i32 966)
  %call16 = call i64 @Ffboundp(i64 %call15)
  %call17 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp18 = icmp eq i64 %call16, %call17
  br i1 %cmp18, label %if.end.22, label %if.then.19

if.then.19:                                       ; preds = %if.end.14
  %call20 = call i64 @builtin_lisp_symbol(i32 966)
  %call21 = call i64 @call0(i64 %call20)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %if.end.14
  %call23 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call23, i64* %val, align 8
  %call24 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call24, i64* %p, align 8
  %call25 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call25, i64* %orig_filename, align 8
  %call26 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call26, i64* %old_undo, align 8
  %19 = load i64, i64* %filename.addr, align 8
  call void @CHECK_STRING(i64 %19)
  %20 = load i64, i64* %filename.addr, align 8
  %call27 = call i64 @builtin_lisp_symbol(i32 0)
  %call28 = call i64 @Fexpand_file_name(i64 %20, i64 %call27)
  store i64 %call28, i64* %filename.addr, align 8
  %call29 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call29, i64* %coding_system, align 8
  %21 = load i64, i64* %filename.addr, align 8
  %call30 = call i64 @builtin_lisp_symbol(i32 553)
  %call31 = call i64 @Ffind_file_name_handler(i64 %21, i64 %call30)
  store i64 %call31, i64* %handler, align 8
  %22 = load i64, i64* %handler, align 8
  %call32 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp33 = icmp eq i64 %22, %call32
  br i1 %cmp33, label %if.end.60, label %if.then.34

if.then.34:                                       ; preds = %if.end.22
  %23 = load i64, i64* %handler, align 8
  %call35 = call i64 @builtin_lisp_symbol(i32 553)
  %24 = load i64, i64* %filename.addr, align 8
  %25 = load i64, i64* %visit.addr, align 8
  %26 = load i64, i64* %beg.addr, align 8
  %27 = load i64, i64* %end.addr, align 8
  %28 = load i64, i64* %replace.addr, align 8
  %call36 = call i64 @call6(i64 %23, i64 %call35, i64 %24, i64 %25, i64 %26, i64 %27, i64 %28)
  store i64 %call36, i64* %val, align 8
  %29 = load i64, i64* %val, align 8
  %and = and i64 %29, 7
  %conv = trunc i64 %and to i32
  %cmp37 = icmp eq i32 %conv, 3
  br i1 %cmp37, label %land.lhs.true.39, label %if.end.59

land.lhs.true.39:                                 ; preds = %if.then.34
  %30 = load i64, i64* %val, align 8
  %sub = sub nsw i64 %30, 3
  %31 = inttoptr i64 %sub to i8*
  %32 = bitcast i8* %31 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %32, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %33 = load i64, i64* %cdr, align 8
  %and40 = and i64 %33, 7
  %conv41 = trunc i64 %and40 to i32
  %cmp42 = icmp eq i32 %conv41, 3
  br i1 %cmp42, label %land.lhs.true.44, label %if.end.59

land.lhs.true.44:                                 ; preds = %land.lhs.true.39
  %34 = load i64, i64* %val, align 8
  %sub45 = sub nsw i64 %34, 3
  %35 = inttoptr i64 %sub45 to i8*
  %36 = bitcast i8* %35 to %struct.Lisp_Cons*
  %u46 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %36, i32 0, i32 1
  %cdr47 = bitcast %union.anon* %u46 to i64*
  %37 = load i64, i64* %cdr47, align 8
  %sub48 = sub nsw i64 %37, 3
  %38 = inttoptr i64 %sub48 to i8*
  %39 = bitcast i8* %38 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %39, i32 0, i32 0
  %40 = load i64, i64* %car, align 8
  %41 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv49 = getelementptr inbounds %struct.buffer, %struct.buffer* %41, i32 0, i32 79
  %42 = load i64, i64* %zv49, align 8
  %43 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %43, i32 0, i32 75
  %44 = load i64, i64* %pt, align 8
  %add = add nsw i64 %44, 0
  %sub50 = sub nsw i64 %42, %add
  %call51 = call zeroext i1 @RANGED_INTEGERP(i64 0, i64 %40, i64 %sub50)
  br i1 %call51, label %if.then.53, label %if.end.59

if.then.53:                                       ; preds = %land.lhs.true.44
  %45 = load i64, i64* %val, align 8
  %sub54 = sub nsw i64 %45, 3
  %46 = inttoptr i64 %sub54 to i8*
  %47 = bitcast i8* %46 to %struct.Lisp_Cons*
  %u55 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %47, i32 0, i32 1
  %cdr56 = bitcast %union.anon* %u55 to i64*
  %48 = load i64, i64* %cdr56, align 8
  %sub57 = sub nsw i64 %48, 3
  %49 = inttoptr i64 %sub57 to i8*
  %50 = bitcast i8* %49 to %struct.Lisp_Cons*
  %car58 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %50, i32 0, i32 0
  %51 = load i64, i64* %car58, align 8
  %shr = ashr i64 %51, 2
  store i64 %shr, i64* %inserted, align 8
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.53, %land.lhs.true.44, %land.lhs.true.39, %if.then.34
  br label %handled

if.end.60:                                        ; preds = %if.end.22
  %52 = load i64, i64* %filename.addr, align 8
  store i64 %52, i64* %orig_filename, align 8
  %53 = load i64, i64* %filename.addr, align 8
  %call61 = call i64 @encode_file_name(i64 %53)
  store i64 %call61, i64* %filename.addr, align 8
  %54 = load i64, i64* %filename.addr, align 8
  %call62 = call i8* @SSDATA(i64 %54)
  %call63 = call i32 @emacs_open(i8* %call62, i32 0, i32 0)
  store i32 %call63, i32* %fd, align 4
  %55 = load i32, i32* %fd, align 4
  %cmp64 = icmp slt i32 %55, 0
  br i1 %cmp64, label %if.then.66, label %if.end.93

if.then.66:                                       ; preds = %if.end.60
  %call67 = call i32* @__errno_location() #9
  %56 = load i32, i32* %call67, align 4
  store i32 %56, i32* %save_errno, align 4
  %57 = load i64, i64* %visit.addr, align 8
  %call68 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp69 = icmp eq i64 %57, %call68
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.then.66
  %58 = load i64, i64* %orig_filename, align 8
  call void @report_file_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), i64 %58) #8
  unreachable

if.end.72:                                        ; preds = %if.then.66
  %59 = load i32, i32* %save_errno, align 4
  %call73 = call { i64, i64 } @time_error_value(i32 %59)
  %60 = bitcast %struct.timespec* %coerce to { i64, i64 }*
  %61 = getelementptr { i64, i64 }, { i64, i64 }* %60, i32 0, i32 0
  %62 = extractvalue { i64, i64 } %call73, 0
  store i64 %62, i64* %61, align 8
  %63 = getelementptr { i64, i64 }, { i64, i64 }* %60, i32 0, i32 1
  %64 = extractvalue { i64, i64 } %call73, 1
  store i64 %64, i64* %63, align 8
  %65 = bitcast %struct.timespec* %mtime to i8*
  %66 = bitcast %struct.timespec* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %65, i8* %66, i64 16, i32 8, i1 false)
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 8
  store i64 -1, i64* %st_size, align 8
  %67 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 35), align 8
  %call74 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp75 = icmp eq i64 %67, %call74
  br i1 %cmp75, label %if.end.92, label %if.then.77

if.then.77:                                       ; preds = %if.end.72
  br label %do.body

do.body:                                          ; preds = %if.then.77
  %68 = load i64, i64* @Vcoding_system_hash_table, align 8
  %call78 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %68)
  %69 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 35), align 8
  %call79 = call i64 @hash_lookup(%struct.Lisp_Hash_Table* %call78, i64 %69, i64* null)
  %cmp80 = icmp slt i64 %call79, 0
  br i1 %cmp80, label %land.lhs.true.82, label %if.end.89

land.lhs.true.82:                                 ; preds = %do.body
  %70 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 35), align 8
  %call83 = call i64 @Fcheck_coding_system(i64 %70)
  %call84 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp85 = icmp eq i64 %call83, %call84
  br i1 %cmp85, label %if.then.87, label %if.end.89

if.then.87:                                       ; preds = %land.lhs.true.82
  %call88 = call i64 @builtin_lisp_symbol(i32 280)
  %71 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 35), align 8
  %72 = call i64 @wrong_type_argument(i64 %call88, i64 %71) #8
  unreachable

if.end.89:                                        ; preds = %land.lhs.true.82, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.89
  %call90 = call i64 @builtin_lisp_symbol(i32 221)
  %73 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 35), align 8
  %call91 = call i64 @Fset(i64 %call90, i64 %73)
  br label %if.end.92

if.end.92:                                        ; preds = %do.end, %if.end.72
  br label %notfound

if.end.93:                                        ; preds = %if.end.60
  %call94 = call i64 @SPECPDL_INDEX()
  store i64 %call94, i64* %fd_index, align 8
  %74 = load i32, i32* %fd, align 4
  call void @record_unwind_protect_int(void (i32)* @close_file_unwind, i32 %74)
  %75 = load i64, i64* %replace.addr, align 8
  %call95 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp96 = icmp eq i64 %75, %call95
  br i1 %cmp96, label %if.end.104, label %if.then.98

if.then.98:                                       ; preds = %if.end.93
  %call99 = call i64 @get_window_points_and_markers()
  store i64 %call99, i64* %window_markers, align 8
  %76 = load i64, i64* %window_markers, align 8
  %sub100 = sub nsw i64 %76, 3
  %77 = inttoptr i64 %sub100 to i8*
  %78 = bitcast i8* %77 to %struct.Lisp_Cons*
  %car101 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %78, i32 0, i32 0
  %79 = load i64, i64* %car101, align 8
  %sub102 = sub nsw i64 %79, 3
  %80 = inttoptr i64 %sub102 to i8*
  %81 = bitcast i8* %80 to %struct.Lisp_Cons*
  %car103 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %81, i32 0, i32 0
  %82 = load i64, i64* %car103, align 8
  call void @record_unwind_protect(void (i64)* @restore_point_unwind, i64 %82)
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.98, %if.end.93
  %83 = load i32, i32* %fd, align 4
  %call105 = call i32 @fstat(i32 %83, %struct.stat* %st) #6
  %cmp106 = icmp ne i32 %call105, 0
  br i1 %cmp106, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %if.end.104
  %84 = load i64, i64* %orig_filename, align 8
  call void @report_file_error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i64 %84) #8
  unreachable

if.end.109:                                       ; preds = %if.end.104
  %call110 = call { i64, i64 } @get_stat_mtime(%struct.stat* %st) #10
  %85 = bitcast %struct.timespec* %coerce111 to { i64, i64 }*
  %86 = getelementptr { i64, i64 }, { i64, i64 }* %85, i32 0, i32 0
  %87 = extractvalue { i64, i64 } %call110, 0
  store i64 %87, i64* %86, align 8
  %88 = getelementptr { i64, i64 }, { i64, i64 }* %85, i32 0, i32 1
  %89 = extractvalue { i64, i64 } %call110, 1
  store i64 %89, i64* %88, align 8
  %90 = bitcast %struct.timespec* %mtime to i8*
  %91 = bitcast %struct.timespec* %coerce111 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %90, i8* %91, i64 16, i32 8, i1 false)
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 3
  %92 = load i32, i32* %st_mode, align 4
  %and112 = and i32 %92, 61440
  %cmp113 = icmp eq i32 %and112, 32768
  br i1 %cmp113, label %if.end.135, label %if.then.115

if.then.115:                                      ; preds = %if.end.109
  store i8 1, i8* %not_regular, align 1
  %93 = load i64, i64* %visit.addr, align 8
  %call116 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp117 = icmp eq i64 %93, %call116
  br i1 %cmp117, label %if.end.120, label %if.then.119

if.then.119:                                      ; preds = %if.then.115
  br label %notfound

if.end.120:                                       ; preds = %if.then.115
  %94 = load i64, i64* %replace.addr, align 8
  %call121 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp122 = icmp eq i64 %94, %call121
  br i1 %cmp122, label %lor.lhs.false, label %if.then.131

lor.lhs.false:                                    ; preds = %if.end.120
  %95 = load i64, i64* %beg.addr, align 8
  %call124 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp125 = icmp eq i64 %95, %call124
  br i1 %cmp125, label %lor.lhs.false.127, label %if.then.131

lor.lhs.false.127:                                ; preds = %lor.lhs.false
  %96 = load i64, i64* %end.addr, align 8
  %call128 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp129 = icmp eq i64 %96, %call128
  br i1 %cmp129, label %if.end.134, label %if.then.131

if.then.131:                                      ; preds = %lor.lhs.false.127, %lor.lhs.false, %if.end.120
  %call132 = call i64 @builtin_lisp_symbol(i32 411)
  %call133 = call i64 @build_string(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i32 0, i32 0))
  %97 = load i64, i64* %orig_filename, align 8
  call void @xsignal2(i64 %call132, i64 %call133, i64 %97) #8
  unreachable

if.end.134:                                       ; preds = %lor.lhs.false.127
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.134, %if.end.109
  %98 = load i64, i64* %visit.addr, align 8
  %call136 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp137 = icmp eq i64 %98, %call136
  br i1 %cmp137, label %if.end.159, label %if.then.139

if.then.139:                                      ; preds = %if.end.135
  %99 = load i64, i64* %beg.addr, align 8
  %call140 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp141 = icmp eq i64 %99, %call140
  br i1 %cmp141, label %lor.lhs.false.143, label %if.then.147

lor.lhs.false.143:                                ; preds = %if.then.139
  %100 = load i64, i64* %end.addr, align 8
  %call144 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp145 = icmp eq i64 %100, %call144
  br i1 %cmp145, label %if.end.148, label %if.then.147

if.then.147:                                      ; preds = %lor.lhs.false.143, %if.then.139
  call void (i8*, ...) @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.36, i32 0, i32 0)) #8
  unreachable

if.end.148:                                       ; preds = %lor.lhs.false.143
  %101 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text149 = getelementptr inbounds %struct.buffer, %struct.buffer* %101, i32 0, i32 73
  %102 = load %struct.buffer_text*, %struct.buffer_text** %text149, align 8
  %z150 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %102, i32 0, i32 2
  %103 = load i64, i64* %z150, align 8
  %cmp151 = icmp slt i64 1, %103
  br i1 %cmp151, label %land.lhs.true.153, label %if.end.158

land.lhs.true.153:                                ; preds = %if.end.148
  %104 = load i64, i64* %replace.addr, align 8
  %call154 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp155 = icmp eq i64 %104, %call154
  br i1 %cmp155, label %if.then.157, label %if.end.158

if.then.157:                                      ; preds = %land.lhs.true.153
  call void (i8*, ...) @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.37, i32 0, i32 0)) #8
  unreachable

if.end.158:                                       ; preds = %land.lhs.true.153, %if.end.148
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.158, %if.end.135
  %105 = load i64, i64* %beg.addr, align 8
  %call160 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp161 = icmp eq i64 %105, %call160
  br i1 %cmp161, label %if.else, label %if.then.163

if.then.163:                                      ; preds = %if.end.159
  %106 = load i64, i64* %beg.addr, align 8
  %call164 = call i64 @file_offset(i64 %106)
  store i64 %call164, i64* %beg_offset, align 8
  br label %if.end.165

if.else:                                          ; preds = %if.end.159
  store i64 0, i64* %beg_offset, align 8
  br label %if.end.165

if.end.165:                                       ; preds = %if.else, %if.then.163
  %107 = load i64, i64* %end.addr, align 8
  %call166 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp167 = icmp eq i64 %107, %call166
  br i1 %cmp167, label %if.else.171, label %if.then.169

if.then.169:                                      ; preds = %if.end.165
  %108 = load i64, i64* %end.addr, align 8
  %call170 = call i64 @file_offset(i64 %108)
  store i64 %call170, i64* %end_offset, align 8
  br label %if.end.185

if.else.171:                                      ; preds = %if.end.165
  %109 = load i8, i8* %not_regular, align 1
  %tobool172 = trunc i8 %109 to i1
  br i1 %tobool172, label %if.then.173, label %if.else.174

if.then.173:                                      ; preds = %if.else.171
  store i64 9223372036854775807, i64* %end_offset, align 8
  br label %if.end.184

if.else.174:                                      ; preds = %if.else.171
  %st_size175 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 8
  %110 = load i64, i64* %st_size175, align 8
  store i64 %110, i64* %end_offset, align 8
  %111 = load i64, i64* %end_offset, align 8
  %cmp176 = icmp slt i64 %111, 0
  br i1 %cmp176, label %if.then.178, label %if.end.179

if.then.178:                                      ; preds = %if.else.174
  call void @buffer_overflow() #8
  unreachable

if.end.179:                                       ; preds = %if.else.174
  %112 = load i64, i64* %end_offset, align 8
  %cmp180 = icmp eq i64 %112, 0
  br i1 %cmp180, label %if.then.182, label %if.end.183

if.then.182:                                      ; preds = %if.end.179
  store i64 65536, i64* %end_offset, align 8
  br label %if.end.183

if.end.183:                                       ; preds = %if.then.182, %if.end.179
  br label %if.end.184

if.end.184:                                       ; preds = %if.end.183, %if.then.173
  br label %if.end.185

if.end.185:                                       ; preds = %if.end.184, %if.then.169
  %113 = load i8, i8* %not_regular, align 1
  %tobool186 = trunc i8 %113 to i1
  br i1 %tobool186, label %if.end.214, label %if.then.187

if.then.187:                                      ; preds = %if.end.185
  %114 = load i64, i64* %end_offset, align 8
  %st_size188 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 8
  %115 = load i64, i64* %st_size188, align 8
  %cmp189 = icmp slt i64 %114, %115
  br i1 %cmp189, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.187
  %116 = load i64, i64* %end_offset, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.187
  %st_size191 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 8
  %117 = load i64, i64* %st_size191, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %116, %cond.true ], [ %117, %cond.false ]
  store i64 %cond, i64* %likely_end, align 8
  %118 = load i64, i64* %beg_offset, align 8
  %119 = load i64, i64* %likely_end, align 8
  %cmp192 = icmp slt i64 %118, %119
  br i1 %cmp192, label %if.then.194, label %if.end.213

if.then.194:                                      ; preds = %cond.end
  %120 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text195 = getelementptr inbounds %struct.buffer, %struct.buffer* %120, i32 0, i32 73
  %121 = load %struct.buffer_text*, %struct.buffer_text** %text195, align 8
  %z_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %121, i32 0, i32 4
  %122 = load i64, i64* %z_byte, align 8
  %123 = load i64, i64* %replace.addr, align 8
  %call196 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp197 = icmp eq i64 %123, %call196
  br i1 %cmp197, label %cond.false.203, label %cond.true.199

cond.true.199:                                    ; preds = %if.then.194
  %124 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte200 = getelementptr inbounds %struct.buffer, %struct.buffer* %124, i32 0, i32 80
  %125 = load i64, i64* %zv_byte200, align 8
  %126 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte201 = getelementptr inbounds %struct.buffer, %struct.buffer* %126, i32 0, i32 78
  %127 = load i64, i64* %begv_byte201, align 8
  %sub202 = sub nsw i64 %125, %127
  br label %cond.end.204

cond.false.203:                                   ; preds = %if.then.194
  br label %cond.end.204

cond.end.204:                                     ; preds = %cond.false.203, %cond.true.199
  %cond205 = phi i64 [ %sub202, %cond.true.199 ], [ 0, %cond.false.203 ]
  %sub206 = sub nsw i64 %122, %cond205
  store i64 %sub206, i64* %buf_bytes, align 8
  %128 = load i64, i64* %buf_bytes, align 8
  %sub207 = sub nsw i64 2305843009213693950, %128
  store i64 %sub207, i64* %buf_growth_max, align 8
  %129 = load i64, i64* %likely_end, align 8
  %130 = load i64, i64* %beg_offset, align 8
  %sub208 = sub nsw i64 %129, %130
  store i64 %sub208, i64* %likely_growth, align 8
  %131 = load i64, i64* %buf_growth_max, align 8
  %132 = load i64, i64* %likely_growth, align 8
  %cmp209 = icmp slt i64 %131, %132
  br i1 %cmp209, label %if.then.211, label %if.end.212

if.then.211:                                      ; preds = %cond.end.204
  call void @buffer_overflow() #8
  unreachable

if.end.212:                                       ; preds = %cond.end.204
  br label %if.end.213

if.end.213:                                       ; preds = %if.end.212, %cond.end
  br label %if.end.214

if.end.214:                                       ; preds = %if.end.213, %if.end.185
  %133 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %clip_changed = getelementptr inbounds %struct.buffer, %struct.buffer* %133, i32 0, i32 94
  %bf.load = load i8, i8* %clip_changed, align 8
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %clip_changed, align 8
  %134 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 35), align 8
  %call215 = call i64 @builtin_lisp_symbol(i32 190)
  %cmp216 = icmp eq i64 %134, %call215
  br i1 %cmp216, label %if.then.218, label %if.else.222

if.then.218:                                      ; preds = %if.end.214
  %call219 = call i64 @builtin_lisp_symbol(i32 989)
  %call220 = call i64 @builtin_lisp_symbol(i32 973)
  %call221 = call i64 @coding_inherit_eol_type(i64 %call219, i64 %call220)
  store i64 %call221, i64* %coding_system, align 8
  %135 = load i64, i64* %coding_system, align 8
  call void @setup_coding_system(i64 %135, %struct.coding_system* %coding)
  store i8 1, i8* %set_coding_system, align 1
  br label %if.end.349

if.else.222:                                      ; preds = %if.end.214
  %136 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text223 = getelementptr inbounds %struct.buffer, %struct.buffer* %136, i32 0, i32 73
  %137 = load %struct.buffer_text*, %struct.buffer_text** %text223, align 8
  %z224 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %137, i32 0, i32 2
  %138 = load i64, i64* %z224, align 8
  %cmp225 = icmp slt i64 1, %138
  br i1 %cmp225, label %if.then.227, label %if.end.348

if.then.227:                                      ; preds = %if.else.222
  %139 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 35), align 8
  %call228 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp229 = icmp eq i64 %139, %call228
  br i1 %cmp229, label %if.else.232, label %if.then.231

if.then.231:                                      ; preds = %if.then.227
  %140 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 35), align 8
  store i64 %140, i64* %coding_system, align 8
  br label %if.end.320

if.else.232:                                      ; preds = %if.then.227
  %141 = load i8, i8* %not_regular, align 1
  %tobool233 = trunc i8 %141 to i1
  br i1 %tobool233, label %if.end.298, label %land.lhs.true.234

land.lhs.true.234:                                ; preds = %if.else.232
  %142 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 267), align 8
  %call235 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp236 = icmp eq i64 %142, %call235
  br i1 %cmp236, label %if.end.298, label %if.then.238

if.then.238:                                      ; preds = %land.lhs.true.234
  %st_size239 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 8
  %143 = load i64, i64* %st_size239, align 8
  %cmp240 = icmp sle i64 %143, 4096
  br i1 %cmp240, label %if.then.242, label %if.else.245

if.then.242:                                      ; preds = %if.then.238
  %144 = load i32, i32* %fd, align 4
  %arraydecay = getelementptr inbounds [65536 x i8], [65536 x i8]* %read_buf, i32 0, i32 0
  %call243 = call i64 @emacs_read(i32 %144, i8* %arraydecay, i64 4096)
  %conv244 = trunc i64 %call243 to i32
  store i32 %conv244, i32* %nread, align 4
  br label %if.end.268

if.else.245:                                      ; preds = %if.then.238
  %145 = load i32, i32* %fd, align 4
  %arraydecay246 = getelementptr inbounds [65536 x i8], [65536 x i8]* %read_buf, i32 0, i32 0
  %call247 = call i64 @emacs_read(i32 %145, i8* %arraydecay246, i64 1024)
  %conv248 = trunc i64 %call247 to i32
  store i32 %conv248, i32* %nread, align 4
  %146 = load i32, i32* %nread, align 4
  %cmp249 = icmp eq i32 %146, 1024
  br i1 %cmp249, label %if.then.251, label %if.end.267

if.then.251:                                      ; preds = %if.else.245
  %147 = load i32, i32* %fd, align 4
  %call252 = call i64 @lseek(i32 %147, i64 -3072, i32 2) #6
  %cmp253 = icmp slt i64 %call252, 0
  br i1 %cmp253, label %if.then.255, label %if.end.256

if.then.255:                                      ; preds = %if.then.251
  %148 = load i64, i64* %orig_filename, align 8
  call void @report_file_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.38, i32 0, i32 0), i64 %148) #8
  unreachable

if.end.256:                                       ; preds = %if.then.251
  %149 = load i32, i32* %fd, align 4
  %arraydecay257 = getelementptr inbounds [65536 x i8], [65536 x i8]* %read_buf, i32 0, i32 0
  %150 = load i32, i32* %nread, align 4
  %idx.ext = sext i32 %150 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay257, i64 %idx.ext
  %call258 = call i64 @emacs_read(i32 %149, i8* %add.ptr, i64 3072)
  %conv259 = trunc i64 %call258 to i32
  store i32 %conv259, i32* %ntail, align 4
  %151 = load i32, i32* %ntail, align 4
  %cmp260 = icmp slt i32 %151, 0
  br i1 %cmp260, label %cond.true.262, label %cond.false.263

cond.true.262:                                    ; preds = %if.end.256
  %152 = load i32, i32* %ntail, align 4
  br label %cond.end.265

cond.false.263:                                   ; preds = %if.end.256
  %153 = load i32, i32* %nread, align 4
  %154 = load i32, i32* %ntail, align 4
  %add264 = add nsw i32 %153, %154
  br label %cond.end.265

cond.end.265:                                     ; preds = %cond.false.263, %cond.true.262
  %cond266 = phi i32 [ %152, %cond.true.262 ], [ %add264, %cond.false.263 ]
  store i32 %cond266, i32* %nread, align 4
  br label %if.end.267

if.end.267:                                       ; preds = %cond.end.265, %if.else.245
  br label %if.end.268

if.end.268:                                       ; preds = %if.end.267, %if.then.242
  %155 = load i32, i32* %nread, align 4
  %cmp269 = icmp slt i32 %155, 0
  br i1 %cmp269, label %if.then.271, label %if.else.272

if.then.271:                                      ; preds = %if.end.268
  %156 = load i64, i64* %orig_filename, align 8
  call void @report_file_error(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i64 %156) #8
  unreachable

if.else.272:                                      ; preds = %if.end.268
  %157 = load i32, i32* %nread, align 4
  %cmp273 = icmp sgt i32 %157, 0
  br i1 %cmp273, label %if.then.275, label %if.end.296

if.then.275:                                      ; preds = %if.else.272
  %s = bitcast %union.Aligned_String* %.compoundliteral to %struct.Lisp_String*
  %size = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 0
  store i64 23, i64* %size, align 8
  %size_byte = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 1
  store i64 -1, i64* %size_byte, align 8
  %intervals = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 2
  store %struct.interval* null, %struct.interval** %intervals, align 8
  %data = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 3
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i32 0, i32 0), i8** %data, align 8
  %s276 = bitcast %union.Aligned_String* %.compoundliteral to %struct.Lisp_String*
  %158 = bitcast %struct.Lisp_String* %s276 to i8*
  %call277 = call i64 @make_lisp_ptr(i8* %158, i32 4)
  store i64 %call277, i64* %name, align 8
  %159 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  store %struct.buffer* %159, %struct.buffer** %prev, align 8
  call void @record_unwind_current_buffer()
  %160 = load i64, i64* %name, align 8
  %call278 = call i64 @Fget_buffer_create(i64 %160)
  store i64 %call278, i64* %workbuf, align 8
  %161 = load i64, i64* %workbuf, align 8
  %call279 = call %struct.buffer* @XBUFFER(i64 %161)
  store %struct.buffer* %call279, %struct.buffer** %buf, align 8
  %162 = load %struct.buffer*, %struct.buffer** %buf, align 8
  call void @delete_all_overlays(%struct.buffer* %162)
  %163 = load %struct.buffer*, %struct.buffer** %buf, align 8
  %164 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %directory_ = getelementptr inbounds %struct.buffer, %struct.buffer* %164, i32 0, i32 3
  %165 = load i64, i64* %directory_, align 8
  call void @bset_directory(%struct.buffer* %163, i64 %165)
  %166 = load %struct.buffer*, %struct.buffer** %buf, align 8
  %call280 = call i64 @builtin_lisp_symbol(i32 0)
  call void @bset_read_only(%struct.buffer* %166, i64 %call280)
  %167 = load %struct.buffer*, %struct.buffer** %buf, align 8
  %call281 = call i64 @builtin_lisp_symbol(i32 0)
  call void @bset_filename(%struct.buffer* %167, i64 %call281)
  %168 = load %struct.buffer*, %struct.buffer** %buf, align 8
  %call282 = call i64 @builtin_lisp_symbol(i32 901)
  call void @bset_undo_list(%struct.buffer* %168, i64 %call282)
  %169 = load %struct.buffer*, %struct.buffer** %buf, align 8
  call void @set_buffer_internal(%struct.buffer* %169)
  %call283 = call i64 @Ferase_buffer()
  %170 = load %struct.buffer*, %struct.buffer** %buf, align 8
  %call284 = call i64 @builtin_lisp_symbol(i32 0)
  call void @bset_enable_multibyte_characters(%struct.buffer* %170, i64 %call284)
  %arraydecay285 = getelementptr inbounds [65536 x i8], [65536 x i8]* %read_buf, i32 0, i32 0
  %171 = load i32, i32* %nread, align 4
  %conv286 = sext i32 %171 to i64
  %172 = load i32, i32* %nread, align 4
  %conv287 = sext i32 %172 to i64
  call void @insert_1_both(i8* %arraydecay285, i64 %conv286, i64 %conv287, i1 zeroext false, i1 zeroext false, i1 zeroext false)
  %173 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  call void @temp_set_point_both(%struct.buffer* %173, i64 1, i64 1)
  %174 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 267), align 8
  %175 = load i64, i64* %filename.addr, align 8
  %176 = load i32, i32* %nread, align 4
  %conv288 = sext i32 %176 to i64
  %shl = shl i64 %conv288, 2
  %add289 = add i64 %shl, 2
  %call290 = call i64 @call2(i64 %174, i64 %175, i64 %add289)
  store i64 %call290, i64* %coding_system, align 8
  %177 = load %struct.buffer*, %struct.buffer** %prev, align 8
  call void @set_buffer_internal(%struct.buffer* %177)
  %178 = load %union.specbinding*, %union.specbinding** @specpdl_ptr, align 8
  %incdec.ptr = getelementptr inbounds %union.specbinding, %union.specbinding* %178, i32 -1
  store %union.specbinding* %incdec.ptr, %union.specbinding** @specpdl_ptr, align 8
  %179 = load i32, i32* %fd, align 4
  %call291 = call i64 @lseek(i32 %179, i64 0, i32 0) #6
  %cmp292 = icmp slt i64 %call291, 0
  br i1 %cmp292, label %if.then.294, label %if.end.295

if.then.294:                                      ; preds = %if.then.275
  %180 = load i64, i64* %orig_filename, align 8
  call void @report_file_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.38, i32 0, i32 0), i64 %180) #8
  unreachable

if.end.295:                                       ; preds = %if.then.275
  br label %if.end.296

if.end.296:                                       ; preds = %if.end.295, %if.else.272
  br label %if.end.297

if.end.297:                                       ; preds = %if.end.296
  br label %if.end.298

if.end.298:                                       ; preds = %if.end.297, %land.lhs.true.234, %if.else.232
  %181 = load i64, i64* %coding_system, align 8
  %call299 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp300 = icmp eq i64 %181, %call299
  br i1 %cmp300, label %if.then.302, label %if.end.319

if.then.302:                                      ; preds = %if.end.298
  %arrayinit.begin = getelementptr inbounds [6 x i64], [6 x i64]* %.compoundliteral303, i64 0, i64 0
  %call304 = call i64 @builtin_lisp_symbol(i32 553)
  store i64 %call304, i64* %arrayinit.begin
  %arrayinit.element = getelementptr inbounds i64, i64* %arrayinit.begin, i64 1
  %182 = load i64, i64* %orig_filename, align 8
  store i64 %182, i64* %arrayinit.element
  %arrayinit.element305 = getelementptr inbounds i64, i64* %arrayinit.element, i64 1
  %183 = load i64, i64* %visit.addr, align 8
  store i64 %183, i64* %arrayinit.element305
  %arrayinit.element306 = getelementptr inbounds i64, i64* %arrayinit.element305, i64 1
  %184 = load i64, i64* %beg.addr, align 8
  store i64 %184, i64* %arrayinit.element306
  %arrayinit.element307 = getelementptr inbounds i64, i64* %arrayinit.element306, i64 1
  %185 = load i64, i64* %end.addr, align 8
  store i64 %185, i64* %arrayinit.element307
  %arrayinit.element308 = getelementptr inbounds i64, i64* %arrayinit.element307, i64 1
  %186 = load i64, i64* %replace.addr, align 8
  store i64 %186, i64* %arrayinit.element308
  %arraydecay309 = getelementptr inbounds [6 x i64], [6 x i64]* %.compoundliteral303, i32 0, i32 0
  %call310 = call i64 @Ffind_operation_coding_system(i64 6, i64* %arraydecay309)
  store i64 %call310, i64* %coding_system, align 8
  %187 = load i64, i64* %coding_system, align 8
  %and311 = and i64 %187, 7
  %conv312 = trunc i64 %and311 to i32
  %cmp313 = icmp eq i32 %conv312, 3
  br i1 %cmp313, label %if.then.315, label %if.end.318

if.then.315:                                      ; preds = %if.then.302
  %188 = load i64, i64* %coding_system, align 8
  %sub316 = sub nsw i64 %188, 3
  %189 = inttoptr i64 %sub316 to i8*
  %190 = bitcast i8* %189 to %struct.Lisp_Cons*
  %car317 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %190, i32 0, i32 0
  %191 = load i64, i64* %car317, align 8
  store i64 %191, i64* %coding_system, align 8
  br label %if.end.318

if.end.318:                                       ; preds = %if.then.315, %if.then.302
  br label %if.end.319

if.end.319:                                       ; preds = %if.end.318, %if.end.298
  br label %if.end.320

if.end.320:                                       ; preds = %if.end.319, %if.then.231
  %192 = load i64, i64* %coding_system, align 8
  %call321 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp322 = icmp eq i64 %192, %call321
  br i1 %cmp322, label %if.then.324, label %if.else.326

if.then.324:                                      ; preds = %if.end.320
  %call325 = call i64 @builtin_lisp_symbol(i32 958)
  store i64 %call325, i64* %coding_system, align 8
  br label %if.end.341

if.else.326:                                      ; preds = %if.end.320
  br label %do.body.327

do.body.327:                                      ; preds = %if.else.326
  %193 = load i64, i64* @Vcoding_system_hash_table, align 8
  %call328 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %193)
  %194 = load i64, i64* %coding_system, align 8
  %call329 = call i64 @hash_lookup(%struct.Lisp_Hash_Table* %call328, i64 %194, i64* null)
  %cmp330 = icmp slt i64 %call329, 0
  br i1 %cmp330, label %land.lhs.true.332, label %if.end.339

land.lhs.true.332:                                ; preds = %do.body.327
  %195 = load i64, i64* %coding_system, align 8
  %call333 = call i64 @Fcheck_coding_system(i64 %195)
  %call334 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp335 = icmp eq i64 %call333, %call334
  br i1 %cmp335, label %if.then.337, label %if.end.339

if.then.337:                                      ; preds = %land.lhs.true.332
  %call338 = call i64 @builtin_lisp_symbol(i32 280)
  %196 = load i64, i64* %coding_system, align 8
  %197 = call i64 @wrong_type_argument(i64 %call338, i64 %196) #8
  unreachable

if.end.339:                                       ; preds = %land.lhs.true.332, %do.body.327
  br label %do.end.340

do.end.340:                                       ; preds = %if.end.339
  br label %if.end.341

if.end.341:                                       ; preds = %do.end.340, %if.then.324
  %198 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_ = getelementptr inbounds %struct.buffer, %struct.buffer* %198, i32 0, i32 39
  %199 = load i64, i64* %enable_multibyte_characters_, align 8
  %call342 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp343 = icmp eq i64 %199, %call342
  br i1 %cmp343, label %if.then.345, label %if.end.347

if.then.345:                                      ; preds = %if.end.341
  %200 = load i64, i64* %coding_system, align 8
  %call346 = call i64 @raw_text_coding_system(i64 %200)
  store i64 %call346, i64* %coding_system, align 8
  br label %if.end.347

if.end.347:                                       ; preds = %if.then.345, %if.end.341
  %201 = load i64, i64* %coding_system, align 8
  call void @setup_coding_system(i64 %201, %struct.coding_system* %coding)
  store i8 1, i8* %set_coding_system, align 1
  br label %if.end.348

if.end.348:                                       ; preds = %if.end.347, %if.else.222
  br label %if.end.349

if.end.349:                                       ; preds = %if.end.348, %if.then.218
  %202 = load i64, i64* %replace.addr, align 8
  %call350 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp351 = icmp eq i64 %202, %call350
  br i1 %cmp351, label %if.end.747, label %land.lhs.true.353

land.lhs.true.353:                                ; preds = %if.end.349
  %203 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %203, i32 0, i32 77
  %204 = load i64, i64* %begv, align 8
  %205 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv354 = getelementptr inbounds %struct.buffer, %struct.buffer* %205, i32 0, i32 79
  %206 = load i64, i64* %zv354, align 8
  %cmp355 = icmp slt i64 %204, %206
  br i1 %cmp355, label %land.lhs.true.357, label %if.end.747

land.lhs.true.357:                                ; preds = %land.lhs.true.353
  %207 = load i64, i64* %coding_system, align 8
  %call358 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp359 = icmp eq i64 %207, %call358
  br i1 %cmp359, label %if.then.370, label %lor.lhs.false.361

lor.lhs.false.361:                                ; preds = %land.lhs.true.357
  %dst_multibyte = getelementptr inbounds %struct.coding_system, %struct.coding_system* %coding, i32 0, i32 1
  %bf.load362 = load i32, i32* %dst_multibyte, align 8
  %bf.lshr = lshr i32 %bf.load362, 20
  %bf.clear363 = and i32 %bf.lshr, 1
  %bf.cast = trunc i32 %bf.clear363 to i1
  br i1 %bf.cast, label %if.end.747, label %lor.lhs.false.365

lor.lhs.false.365:                                ; preds = %lor.lhs.false.361
  %common_flags = getelementptr inbounds %struct.coding_system, %struct.coding_system* %coding, i32 0, i32 1
  %bf.load366 = load i32, i32* %common_flags, align 8
  %bf.clear367 = and i32 %bf.load366, 16383
  %and368 = and i32 %bf.clear367, 1024
  %tobool369 = icmp ne i32 %and368, 0
  br i1 %tobool369, label %if.end.747, label %if.then.370

if.then.370:                                      ; preds = %lor.lhs.false.365, %land.lhs.true.357
  store i8 0, i8* %giveup_match_end, align 1
  %208 = load i64, i64* %beg_offset, align 8
  %cmp371 = icmp ne i64 %208, 0
  br i1 %cmp371, label %if.then.373, label %if.end.379

if.then.373:                                      ; preds = %if.then.370
  %209 = load i32, i32* %fd, align 4
  %210 = load i64, i64* %beg_offset, align 8
  %call374 = call i64 @lseek(i32 %209, i64 %210, i32 0) #6
  %cmp375 = icmp slt i64 %call374, 0
  br i1 %cmp375, label %if.then.377, label %if.end.378

if.then.377:                                      ; preds = %if.then.373
  %211 = load i64, i64* %orig_filename, align 8
  call void @report_file_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.38, i32 0, i32 0), i64 %211) #8
  unreachable

if.end.378:                                       ; preds = %if.then.373
  br label %if.end.379

if.end.379:                                       ; preds = %if.end.378, %if.then.370
  store i8 1, i8* @immediate_quit, align 1
  br label %do.body.380

do.body.380:                                      ; preds = %if.end.379
  %212 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call381 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp382 = icmp eq i64 %212, %call381
  br i1 %cmp382, label %if.else.389, label %land.lhs.true.384

land.lhs.true.384:                                ; preds = %do.body.380
  %213 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call385 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp386 = icmp eq i64 %213, %call385
  br i1 %cmp386, label %if.then.388, label %if.else.389

if.then.388:                                      ; preds = %land.lhs.true.384
  call void @process_quit_flag()
  br label %if.end.393

if.else.389:                                      ; preds = %land.lhs.true.384, %do.body.380
  %214 = load volatile i8, i8* @pending_signals, align 1
  %tobool390 = trunc i8 %214 to i1
  br i1 %tobool390, label %if.then.391, label %if.end.392

if.then.391:                                      ; preds = %if.else.389
  call void @process_pending_signals()
  br label %if.end.392

if.end.392:                                       ; preds = %if.then.391, %if.else.389
  br label %if.end.393

if.end.393:                                       ; preds = %if.end.392, %if.then.388
  br label %do.end.394

do.end.394:                                       ; preds = %if.end.393
  br label %while.body

while.body:                                       ; preds = %do.end.394, %if.end.464
  %215 = load i32, i32* %fd, align 4
  %arraydecay396 = getelementptr inbounds [65536 x i8], [65536 x i8]* %read_buf, i32 0, i32 0
  %call397 = call i64 @emacs_read(i32 %215, i8* %arraydecay396, i64 65536)
  %conv398 = trunc i64 %call397 to i32
  store i32 %conv398, i32* %nread395, align 4
  %216 = load i32, i32* %nread395, align 4
  %cmp399 = icmp slt i32 %216, 0
  br i1 %cmp399, label %if.then.401, label %if.else.402

if.then.401:                                      ; preds = %while.body
  %217 = load i64, i64* %orig_filename, align 8
  call void @report_file_error(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i64 %217) #8
  unreachable

if.else.402:                                      ; preds = %while.body
  %218 = load i32, i32* %nread395, align 4
  %cmp403 = icmp eq i32 %218, 0
  br i1 %cmp403, label %if.then.405, label %if.end.406

if.then.405:                                      ; preds = %if.else.402
  br label %while.end.465

if.end.406:                                       ; preds = %if.else.402
  br label %if.end.407

if.end.407:                                       ; preds = %if.end.406
  %common_flags408 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %coding, i32 0, i32 1
  %bf.load409 = load i32, i32* %common_flags408, align 8
  %bf.clear410 = and i32 %bf.load409, 16383
  %and411 = and i32 %bf.clear410, 4096
  %tobool412 = icmp ne i32 %and411, 0
  br i1 %tobool412, label %if.then.413, label %if.end.418

if.then.413:                                      ; preds = %if.end.407
  %arraydecay414 = getelementptr inbounds [65536 x i8], [65536 x i8]* %read_buf, i32 0, i32 0
  %219 = load i32, i32* %nread395, align 4
  %conv415 = sext i32 %219 to i64
  %220 = load i32, i32* %nread395, align 4
  %conv416 = sext i32 %220 to i64
  %221 = load i64, i64* %coding_system, align 8
  %call417 = call i64 @detect_coding_system(i8* %arraydecay414, i64 %conv415, i64 %conv416, i1 zeroext true, i1 zeroext false, i64 %221)
  store i64 %call417, i64* %coding_system, align 8
  %222 = load i64, i64* %coding_system, align 8
  call void @setup_coding_system(i64 %222, %struct.coding_system* %coding)
  br label %if.end.418

if.end.418:                                       ; preds = %if.then.413, %if.end.407
  %dst_multibyte419 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %coding, i32 0, i32 1
  %bf.load420 = load i32, i32* %dst_multibyte419, align 8
  %bf.lshr421 = lshr i32 %bf.load420, 20
  %bf.clear422 = and i32 %bf.lshr421, 1
  %bf.cast423 = trunc i32 %bf.clear422 to i1
  br i1 %bf.cast423, label %if.then.431, label %lor.lhs.false.425

lor.lhs.false.425:                                ; preds = %if.end.418
  %common_flags426 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %coding, i32 0, i32 1
  %bf.load427 = load i32, i32* %common_flags426, align 8
  %bf.clear428 = and i32 %bf.load427, 16383
  %and429 = and i32 %bf.clear428, 1024
  %tobool430 = icmp ne i32 %and429, 0
  br i1 %tobool430, label %if.then.431, label %if.end.432

if.then.431:                                      ; preds = %lor.lhs.false.425, %if.end.418
  store i8 1, i8* %giveup_match_end, align 1
  br label %while.end.465

if.end.432:                                       ; preds = %lor.lhs.false.425
  store i32 0, i32* %bufpos, align 4
  br label %while.cond.433

while.cond.433:                                   ; preds = %while.body.459, %if.end.432
  %223 = load i32, i32* %bufpos, align 4
  %224 = load i32, i32* %nread395, align 4
  %cmp434 = icmp slt i32 %223, %224
  br i1 %cmp434, label %land.lhs.true.436, label %land.end.458

land.lhs.true.436:                                ; preds = %while.cond.433
  %225 = load i64, i64* %same_at_start, align 8
  %226 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte437 = getelementptr inbounds %struct.buffer, %struct.buffer* %226, i32 0, i32 80
  %227 = load i64, i64* %zv_byte437, align 8
  %cmp438 = icmp slt i64 %225, %227
  br i1 %cmp438, label %land.rhs.440, label %land.end.458

land.rhs.440:                                     ; preds = %land.lhs.true.436
  %228 = load i64, i64* %same_at_start, align 8
  %229 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text441 = getelementptr inbounds %struct.buffer, %struct.buffer* %229, i32 0, i32 73
  %230 = load %struct.buffer_text*, %struct.buffer_text** %text441, align 8
  %gpt_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %230, i32 0, i32 3
  %231 = load i64, i64* %gpt_byte, align 8
  %cmp442 = icmp sge i64 %228, %231
  br i1 %cmp442, label %cond.true.444, label %cond.false.446

cond.true.444:                                    ; preds = %land.rhs.440
  %232 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text445 = getelementptr inbounds %struct.buffer, %struct.buffer* %232, i32 0, i32 73
  %233 = load %struct.buffer_text*, %struct.buffer_text** %text445, align 8
  %gap_size = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %233, i32 0, i32 5
  %234 = load i64, i64* %gap_size, align 8
  br label %cond.end.447

cond.false.446:                                   ; preds = %land.rhs.440
  br label %cond.end.447

cond.end.447:                                     ; preds = %cond.false.446, %cond.true.444
  %cond448 = phi i64 [ %234, %cond.true.444 ], [ 0, %cond.false.446 ]
  %235 = load i64, i64* %same_at_start, align 8
  %add449 = add nsw i64 %cond448, %235
  %236 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text450 = getelementptr inbounds %struct.buffer, %struct.buffer* %236, i32 0, i32 73
  %237 = load %struct.buffer_text*, %struct.buffer_text** %text450, align 8
  %beg451 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %237, i32 0, i32 0
  %238 = load i8*, i8** %beg451, align 8
  %add.ptr452 = getelementptr inbounds i8, i8* %238, i64 %add449
  %add.ptr453 = getelementptr inbounds i8, i8* %add.ptr452, i64 -1
  %239 = load i8, i8* %add.ptr453, align 1
  %conv454 = zext i8 %239 to i32
  %240 = load i32, i32* %bufpos, align 4
  %idxprom = sext i32 %240 to i64
  %arrayidx = getelementptr inbounds [65536 x i8], [65536 x i8]* %read_buf, i32 0, i64 %idxprom
  %241 = load i8, i8* %arrayidx, align 1
  %conv455 = sext i8 %241 to i32
  %cmp456 = icmp eq i32 %conv454, %conv455
  br label %land.end.458

land.end.458:                                     ; preds = %cond.end.447, %land.lhs.true.436, %while.cond.433
  %242 = phi i1 [ false, %land.lhs.true.436 ], [ false, %while.cond.433 ], [ %cmp456, %cond.end.447 ]
  br i1 %242, label %while.body.459, label %while.end

while.body.459:                                   ; preds = %land.end.458
  %243 = load i64, i64* %same_at_start, align 8
  %inc = add nsw i64 %243, 1
  store i64 %inc, i64* %same_at_start, align 8
  %244 = load i32, i32* %bufpos, align 4
  %inc460 = add nsw i32 %244, 1
  store i32 %inc460, i32* %bufpos, align 4
  br label %while.cond.433

while.end:                                        ; preds = %land.end.458
  %245 = load i32, i32* %bufpos, align 4
  %246 = load i32, i32* %nread395, align 4
  %cmp461 = icmp ne i32 %245, %246
  br i1 %cmp461, label %if.then.463, label %if.end.464

if.then.463:                                      ; preds = %while.end
  br label %while.end.465

if.end.464:                                       ; preds = %while.end
  br label %while.body

while.end.465:                                    ; preds = %if.then.463, %if.then.431, %if.then.405
  store i8 0, i8* @immediate_quit, align 1
  %247 = load i64, i64* %same_at_start, align 8
  %248 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte466 = getelementptr inbounds %struct.buffer, %struct.buffer* %248, i32 0, i32 78
  %249 = load i64, i64* %begv_byte466, align 8
  %sub467 = sub nsw i64 %247, %249
  %250 = load i64, i64* %end_offset, align 8
  %251 = load i64, i64* %beg_offset, align 8
  %sub468 = sub nsw i64 %250, %251
  %cmp469 = icmp eq i64 %sub467, %sub468
  br i1 %cmp469, label %if.then.471, label %if.end.474

if.then.471:                                      ; preds = %while.end.465
  %252 = load i32, i32* %fd, align 4
  %call472 = call i32 @emacs_close(i32 %252)
  %253 = load i64, i64* %fd_index, align 8
  call void @clear_unwind_protect(i64 %253)
  %254 = load i64, i64* %same_at_start, align 8
  %255 = load i64, i64* %same_at_end, align 8
  %call473 = call i64 @del_range_1(i64 %254, i64 %255, i1 zeroext false, i1 zeroext false)
  br label %handled

if.end.474:                                       ; preds = %while.end.465
  store i8 1, i8* @immediate_quit, align 1
  br label %do.body.475

do.body.475:                                      ; preds = %if.end.474
  %256 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call476 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp477 = icmp eq i64 %256, %call476
  br i1 %cmp477, label %if.else.484, label %land.lhs.true.479

land.lhs.true.479:                                ; preds = %do.body.475
  %257 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call480 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp481 = icmp eq i64 %257, %call480
  br i1 %cmp481, label %if.then.483, label %if.else.484

if.then.483:                                      ; preds = %land.lhs.true.479
  call void @process_quit_flag()
  br label %if.end.488

if.else.484:                                      ; preds = %land.lhs.true.479, %do.body.475
  %258 = load volatile i8, i8* @pending_signals, align 1
  %tobool485 = trunc i8 %258 to i1
  br i1 %tobool485, label %if.then.486, label %if.end.487

if.then.486:                                      ; preds = %if.else.484
  call void @process_pending_signals()
  br label %if.end.487

if.end.487:                                       ; preds = %if.then.486, %if.else.484
  br label %if.end.488

if.end.488:                                       ; preds = %if.end.487, %if.then.483
  br label %do.end.489

do.end.489:                                       ; preds = %if.end.488
  br label %while.cond

while.cond:                                       ; preds = %if.end.628, %do.end.489
  %259 = load i8, i8* %giveup_match_end, align 1
  %tobool490 = trunc i8 %259 to i1
  %lnot = xor i1 %tobool490, true
  br i1 %lnot, label %while.body.491, label %while.end.629

while.body.491:                                   ; preds = %while.cond
  %260 = load i64, i64* %end_offset, align 8
  %261 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte494 = getelementptr inbounds %struct.buffer, %struct.buffer* %261, i32 0, i32 80
  %262 = load i64, i64* %zv_byte494, align 8
  %263 = load i64, i64* %same_at_end, align 8
  %sub495 = sub nsw i64 %262, %263
  %sub496 = sub nsw i64 %260, %sub495
  store i64 %sub496, i64* %curpos, align 8
  %264 = load i64, i64* %curpos, align 8
  %cmp497 = icmp eq i64 %264, 0
  br i1 %cmp497, label %if.then.499, label %if.end.500

if.then.499:                                      ; preds = %while.body.491
  br label %while.end.629

if.end.500:                                       ; preds = %while.body.491
  %265 = load i64, i64* %curpos, align 8
  %cmp501 = icmp ult i64 %265, 65536
  br i1 %cmp501, label %cond.true.503, label %cond.false.504

cond.true.503:                                    ; preds = %if.end.500
  %266 = load i64, i64* %curpos, align 8
  br label %cond.end.505

cond.false.504:                                   ; preds = %if.end.500
  br label %cond.end.505

cond.end.505:                                     ; preds = %cond.false.504, %cond.true.503
  %cond506 = phi i64 [ %266, %cond.true.503 ], [ 65536, %cond.false.504 ]
  %conv507 = trunc i64 %cond506 to i32
  store i32 %conv507, i32* %trial, align 4
  %267 = load i32, i32* %fd, align 4
  %268 = load i64, i64* %curpos, align 8
  %269 = load i32, i32* %trial, align 4
  %conv508 = sext i32 %269 to i64
  %sub509 = sub nsw i64 %268, %conv508
  %call510 = call i64 @lseek(i32 %267, i64 %sub509, i32 0) #6
  %cmp511 = icmp slt i64 %call510, 0
  br i1 %cmp511, label %if.then.513, label %if.end.514

if.then.513:                                      ; preds = %cond.end.505
  %270 = load i64, i64* %orig_filename, align 8
  call void @report_file_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.38, i32 0, i32 0), i64 %270) #8
  unreachable

if.end.514:                                       ; preds = %cond.end.505
  store i32 0, i32* %nread492, align 4
  store i32 0, i32* %total_read, align 4
  br label %while.cond.515

while.cond.515:                                   ; preds = %if.end.534, %if.end.514
  %271 = load i32, i32* %total_read, align 4
  %272 = load i32, i32* %trial, align 4
  %cmp516 = icmp slt i32 %271, %272
  br i1 %cmp516, label %while.body.518, label %while.end.536

while.body.518:                                   ; preds = %while.cond.515
  %273 = load i32, i32* %fd, align 4
  %arraydecay519 = getelementptr inbounds [65536 x i8], [65536 x i8]* %read_buf, i32 0, i32 0
  %274 = load i32, i32* %total_read, align 4
  %idx.ext520 = sext i32 %274 to i64
  %add.ptr521 = getelementptr inbounds i8, i8* %arraydecay519, i64 %idx.ext520
  %275 = load i32, i32* %trial, align 4
  %276 = load i32, i32* %total_read, align 4
  %sub522 = sub nsw i32 %275, %276
  %conv523 = sext i32 %sub522 to i64
  %call524 = call i64 @emacs_read(i32 %273, i8* %add.ptr521, i64 %conv523)
  %conv525 = trunc i64 %call524 to i32
  store i32 %conv525, i32* %nread492, align 4
  %277 = load i32, i32* %nread492, align 4
  %cmp526 = icmp slt i32 %277, 0
  br i1 %cmp526, label %if.then.528, label %if.else.529

if.then.528:                                      ; preds = %while.body.518
  %278 = load i64, i64* %orig_filename, align 8
  call void @report_file_error(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i64 %278) #8
  unreachable

if.else.529:                                      ; preds = %while.body.518
  %279 = load i32, i32* %nread492, align 4
  %cmp530 = icmp eq i32 %279, 0
  br i1 %cmp530, label %if.then.532, label %if.end.533

if.then.532:                                      ; preds = %if.else.529
  br label %while.end.536

if.end.533:                                       ; preds = %if.else.529
  br label %if.end.534

if.end.534:                                       ; preds = %if.end.533
  %280 = load i32, i32* %nread492, align 4
  %281 = load i32, i32* %total_read, align 4
  %add535 = add nsw i32 %281, %280
  store i32 %add535, i32* %total_read, align 4
  br label %while.cond.515

while.end.536:                                    ; preds = %if.then.532, %while.cond.515
  %282 = load i32, i32* %total_read, align 4
  store i32 %282, i32* %bufpos493, align 4
  br label %while.cond.537

while.cond.537:                                   ; preds = %while.body.569, %while.end.536
  %283 = load i32, i32* %bufpos493, align 4
  %cmp538 = icmp sgt i32 %283, 0
  br i1 %cmp538, label %land.lhs.true.540, label %land.end.568

land.lhs.true.540:                                ; preds = %while.cond.537
  %284 = load i64, i64* %same_at_end, align 8
  %285 = load i64, i64* %same_at_start, align 8
  %cmp541 = icmp sgt i64 %284, %285
  br i1 %cmp541, label %land.rhs.543, label %land.end.568

land.rhs.543:                                     ; preds = %land.lhs.true.540
  %286 = load i64, i64* %same_at_end, align 8
  %sub544 = sub nsw i64 %286, 1
  %287 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text545 = getelementptr inbounds %struct.buffer, %struct.buffer* %287, i32 0, i32 73
  %288 = load %struct.buffer_text*, %struct.buffer_text** %text545, align 8
  %gpt_byte546 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %288, i32 0, i32 3
  %289 = load i64, i64* %gpt_byte546, align 8
  %cmp547 = icmp sge i64 %sub544, %289
  br i1 %cmp547, label %cond.true.549, label %cond.false.552

cond.true.549:                                    ; preds = %land.rhs.543
  %290 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text550 = getelementptr inbounds %struct.buffer, %struct.buffer* %290, i32 0, i32 73
  %291 = load %struct.buffer_text*, %struct.buffer_text** %text550, align 8
  %gap_size551 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %291, i32 0, i32 5
  %292 = load i64, i64* %gap_size551, align 8
  br label %cond.end.553

cond.false.552:                                   ; preds = %land.rhs.543
  br label %cond.end.553

cond.end.553:                                     ; preds = %cond.false.552, %cond.true.549
  %cond554 = phi i64 [ %292, %cond.true.549 ], [ 0, %cond.false.552 ]
  %293 = load i64, i64* %same_at_end, align 8
  %sub555 = sub nsw i64 %293, 1
  %add556 = add nsw i64 %cond554, %sub555
  %294 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text557 = getelementptr inbounds %struct.buffer, %struct.buffer* %294, i32 0, i32 73
  %295 = load %struct.buffer_text*, %struct.buffer_text** %text557, align 8
  %beg558 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %295, i32 0, i32 0
  %296 = load i8*, i8** %beg558, align 8
  %add.ptr559 = getelementptr inbounds i8, i8* %296, i64 %add556
  %add.ptr560 = getelementptr inbounds i8, i8* %add.ptr559, i64 -1
  %297 = load i8, i8* %add.ptr560, align 1
  %conv561 = zext i8 %297 to i32
  %298 = load i32, i32* %bufpos493, align 4
  %sub562 = sub nsw i32 %298, 1
  %idxprom563 = sext i32 %sub562 to i64
  %arrayidx564 = getelementptr inbounds [65536 x i8], [65536 x i8]* %read_buf, i32 0, i64 %idxprom563
  %299 = load i8, i8* %arrayidx564, align 1
  %conv565 = sext i8 %299 to i32
  %cmp566 = icmp eq i32 %conv561, %conv565
  br label %land.end.568

land.end.568:                                     ; preds = %cond.end.553, %land.lhs.true.540, %while.cond.537
  %300 = phi i1 [ false, %land.lhs.true.540 ], [ false, %while.cond.537 ], [ %cmp566, %cond.end.553 ]
  br i1 %300, label %while.body.569, label %while.end.571

while.body.569:                                   ; preds = %land.end.568
  %301 = load i64, i64* %same_at_end, align 8
  %dec = add nsw i64 %301, -1
  store i64 %dec, i64* %same_at_end, align 8
  %302 = load i32, i32* %bufpos493, align 4
  %dec570 = add nsw i32 %302, -1
  store i32 %dec570, i32* %bufpos493, align 4
  br label %while.cond.537

while.end.571:                                    ; preds = %land.end.568
  %303 = load i32, i32* %bufpos493, align 4
  %cmp572 = icmp ne i32 %303, 0
  br i1 %cmp572, label %if.then.574, label %if.end.624

if.then.574:                                      ; preds = %while.end.571
  %304 = load i64, i64* %same_at_end, align 8
  %305 = load i64, i64* %same_at_start, align 8
  %cmp575 = icmp sgt i64 %304, %305
  br i1 %cmp575, label %land.lhs.true.577, label %if.end.623

land.lhs.true.577:                                ; preds = %if.then.574
  %306 = load i64, i64* %same_at_end, align 8
  %sub578 = sub nsw i64 %306, 1
  %307 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text579 = getelementptr inbounds %struct.buffer, %struct.buffer* %307, i32 0, i32 73
  %308 = load %struct.buffer_text*, %struct.buffer_text** %text579, align 8
  %gpt_byte580 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %308, i32 0, i32 3
  %309 = load i64, i64* %gpt_byte580, align 8
  %cmp581 = icmp sge i64 %sub578, %309
  br i1 %cmp581, label %cond.true.583, label %cond.false.586

cond.true.583:                                    ; preds = %land.lhs.true.577
  %310 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text584 = getelementptr inbounds %struct.buffer, %struct.buffer* %310, i32 0, i32 73
  %311 = load %struct.buffer_text*, %struct.buffer_text** %text584, align 8
  %gap_size585 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %311, i32 0, i32 5
  %312 = load i64, i64* %gap_size585, align 8
  br label %cond.end.587

cond.false.586:                                   ; preds = %land.lhs.true.577
  br label %cond.end.587

cond.end.587:                                     ; preds = %cond.false.586, %cond.true.583
  %cond588 = phi i64 [ %312, %cond.true.583 ], [ 0, %cond.false.586 ]
  %313 = load i64, i64* %same_at_end, align 8
  %sub589 = sub nsw i64 %313, 1
  %add590 = add nsw i64 %cond588, %sub589
  %314 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text591 = getelementptr inbounds %struct.buffer, %struct.buffer* %314, i32 0, i32 73
  %315 = load %struct.buffer_text*, %struct.buffer_text** %text591, align 8
  %beg592 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %315, i32 0, i32 0
  %316 = load i8*, i8** %beg592, align 8
  %add.ptr593 = getelementptr inbounds i8, i8* %316, i64 %add590
  %add.ptr594 = getelementptr inbounds i8, i8* %add.ptr593, i64 -1
  %317 = load i8, i8* %add.ptr594, align 1
  %conv595 = zext i8 %317 to i32
  %cmp596 = icmp sge i32 %conv595, 128
  br i1 %cmp596, label %land.lhs.true.598, label %if.end.623

land.lhs.true.598:                                ; preds = %cond.end.587
  %318 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_599 = getelementptr inbounds %struct.buffer, %struct.buffer* %318, i32 0, i32 39
  %319 = load i64, i64* %enable_multibyte_characters_599, align 8
  %call600 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp601 = icmp eq i64 %319, %call600
  br i1 %cmp601, label %if.end.623, label %land.lhs.true.603

land.lhs.true.603:                                ; preds = %land.lhs.true.598
  %dst_multibyte604 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %coding, i32 0, i32 1
  %bf.load605 = load i32, i32* %dst_multibyte604, align 8
  %bf.lshr606 = lshr i32 %bf.load605, 20
  %bf.clear607 = and i32 %bf.lshr606, 1
  %bf.cast608 = trunc i32 %bf.clear607 to i1
  br i1 %bf.cast608, label %if.then.622, label %lor.lhs.false.610

lor.lhs.false.610:                                ; preds = %land.lhs.true.603
  %common_flags611 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %coding, i32 0, i32 1
  %bf.load612 = load i32, i32* %common_flags611, align 8
  %bf.clear613 = and i32 %bf.load612, 16383
  %and614 = and i32 %bf.clear613, 1024
  %tobool615 = icmp ne i32 %and614, 0
  br i1 %tobool615, label %if.then.622, label %lor.lhs.false.616

lor.lhs.false.616:                                ; preds = %lor.lhs.false.610
  %common_flags617 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %coding, i32 0, i32 1
  %bf.load618 = load i32, i32* %common_flags617, align 8
  %bf.clear619 = and i32 %bf.load618, 16383
  %and620 = and i32 %bf.clear619, 4096
  %tobool621 = icmp ne i32 %and620, 0
  br i1 %tobool621, label %if.then.622, label %if.end.623

if.then.622:                                      ; preds = %lor.lhs.false.616, %lor.lhs.false.610, %land.lhs.true.603
  store i8 1, i8* %giveup_match_end, align 1
  br label %if.end.623

if.end.623:                                       ; preds = %if.then.622, %lor.lhs.false.616, %land.lhs.true.598, %cond.end.587, %if.then.574
  br label %while.end.629

if.end.624:                                       ; preds = %while.end.571
  %320 = load i32, i32* %nread492, align 4
  %cmp625 = icmp eq i32 %320, 0
  br i1 %cmp625, label %if.then.627, label %if.end.628

if.then.627:                                      ; preds = %if.end.624
  br label %while.end.629

if.end.628:                                       ; preds = %if.end.624
  br label %while.cond

while.end.629:                                    ; preds = %if.then.627, %if.end.623, %if.then.499, %while.cond
  store i8 0, i8* @immediate_quit, align 1
  %321 = load i8, i8* %giveup_match_end, align 1
  %tobool630 = trunc i8 %321 to i1
  br i1 %tobool630, label %if.end.746, label %if.then.631

if.then.631:                                      ; preds = %while.end.629
  %322 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_632 = getelementptr inbounds %struct.buffer, %struct.buffer* %322, i32 0, i32 39
  %323 = load i64, i64* %enable_multibyte_characters_632, align 8
  %call633 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp634 = icmp eq i64 %323, %call633
  br i1 %cmp634, label %if.end.666, label %if.then.636

if.then.636:                                      ; preds = %if.then.631
  br label %while.cond.637

while.cond.637:                                   ; preds = %while.body.663, %if.then.636
  %324 = load i64, i64* %same_at_start, align 8
  %325 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte638 = getelementptr inbounds %struct.buffer, %struct.buffer* %325, i32 0, i32 78
  %326 = load i64, i64* %begv_byte638, align 8
  %cmp639 = icmp sgt i64 %324, %326
  br i1 %cmp639, label %land.rhs.641, label %land.end.662

land.rhs.641:                                     ; preds = %while.cond.637
  %327 = load i64, i64* %same_at_start, align 8
  %328 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text642 = getelementptr inbounds %struct.buffer, %struct.buffer* %328, i32 0, i32 73
  %329 = load %struct.buffer_text*, %struct.buffer_text** %text642, align 8
  %gpt_byte643 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %329, i32 0, i32 3
  %330 = load i64, i64* %gpt_byte643, align 8
  %cmp644 = icmp sge i64 %327, %330
  br i1 %cmp644, label %cond.true.646, label %cond.false.649

cond.true.646:                                    ; preds = %land.rhs.641
  %331 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text647 = getelementptr inbounds %struct.buffer, %struct.buffer* %331, i32 0, i32 73
  %332 = load %struct.buffer_text*, %struct.buffer_text** %text647, align 8
  %gap_size648 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %332, i32 0, i32 5
  %333 = load i64, i64* %gap_size648, align 8
  br label %cond.end.650

cond.false.649:                                   ; preds = %land.rhs.641
  br label %cond.end.650

cond.end.650:                                     ; preds = %cond.false.649, %cond.true.646
  %cond651 = phi i64 [ %333, %cond.true.646 ], [ 0, %cond.false.649 ]
  %334 = load i64, i64* %same_at_start, align 8
  %add652 = add nsw i64 %cond651, %334
  %335 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text653 = getelementptr inbounds %struct.buffer, %struct.buffer* %335, i32 0, i32 73
  %336 = load %struct.buffer_text*, %struct.buffer_text** %text653, align 8
  %beg654 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %336, i32 0, i32 0
  %337 = load i8*, i8** %beg654, align 8
  %add.ptr655 = getelementptr inbounds i8, i8* %337, i64 %add652
  %add.ptr656 = getelementptr inbounds i8, i8* %add.ptr655, i64 -1
  %338 = load i8, i8* %add.ptr656, align 1
  %conv657 = zext i8 %338 to i32
  %and658 = and i32 %conv657, 192
  %cmp659 = icmp ne i32 %and658, 128
  %lnot661 = xor i1 %cmp659, true
  br label %land.end.662

land.end.662:                                     ; preds = %cond.end.650, %while.cond.637
  %339 = phi i1 [ false, %while.cond.637 ], [ %lnot661, %cond.end.650 ]
  br i1 %339, label %while.body.663, label %while.end.665

while.body.663:                                   ; preds = %land.end.662
  %340 = load i64, i64* %same_at_start, align 8
  %dec664 = add nsw i64 %340, -1
  store i64 %dec664, i64* %same_at_start, align 8
  br label %while.cond.637

while.end.665:                                    ; preds = %land.end.662
  br label %if.end.666

if.end.666:                                       ; preds = %while.end.665, %if.then.631
  %341 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_667 = getelementptr inbounds %struct.buffer, %struct.buffer* %341, i32 0, i32 39
  %342 = load i64, i64* %enable_multibyte_characters_667, align 8
  %call668 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp669 = icmp eq i64 %342, %call668
  br i1 %cmp669, label %if.end.701, label %if.then.671

if.then.671:                                      ; preds = %if.end.666
  br label %while.cond.672

while.cond.672:                                   ; preds = %while.body.698, %if.then.671
  %343 = load i64, i64* %same_at_end, align 8
  %344 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte673 = getelementptr inbounds %struct.buffer, %struct.buffer* %344, i32 0, i32 80
  %345 = load i64, i64* %zv_byte673, align 8
  %cmp674 = icmp slt i64 %343, %345
  br i1 %cmp674, label %land.rhs.676, label %land.end.697

land.rhs.676:                                     ; preds = %while.cond.672
  %346 = load i64, i64* %same_at_end, align 8
  %347 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text677 = getelementptr inbounds %struct.buffer, %struct.buffer* %347, i32 0, i32 73
  %348 = load %struct.buffer_text*, %struct.buffer_text** %text677, align 8
  %gpt_byte678 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %348, i32 0, i32 3
  %349 = load i64, i64* %gpt_byte678, align 8
  %cmp679 = icmp sge i64 %346, %349
  br i1 %cmp679, label %cond.true.681, label %cond.false.684

cond.true.681:                                    ; preds = %land.rhs.676
  %350 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text682 = getelementptr inbounds %struct.buffer, %struct.buffer* %350, i32 0, i32 73
  %351 = load %struct.buffer_text*, %struct.buffer_text** %text682, align 8
  %gap_size683 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %351, i32 0, i32 5
  %352 = load i64, i64* %gap_size683, align 8
  br label %cond.end.685

cond.false.684:                                   ; preds = %land.rhs.676
  br label %cond.end.685

cond.end.685:                                     ; preds = %cond.false.684, %cond.true.681
  %cond686 = phi i64 [ %352, %cond.true.681 ], [ 0, %cond.false.684 ]
  %353 = load i64, i64* %same_at_end, align 8
  %add687 = add nsw i64 %cond686, %353
  %354 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text688 = getelementptr inbounds %struct.buffer, %struct.buffer* %354, i32 0, i32 73
  %355 = load %struct.buffer_text*, %struct.buffer_text** %text688, align 8
  %beg689 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %355, i32 0, i32 0
  %356 = load i8*, i8** %beg689, align 8
  %add.ptr690 = getelementptr inbounds i8, i8* %356, i64 %add687
  %add.ptr691 = getelementptr inbounds i8, i8* %add.ptr690, i64 -1
  %357 = load i8, i8* %add.ptr691, align 1
  %conv692 = zext i8 %357 to i32
  %and693 = and i32 %conv692, 192
  %cmp694 = icmp ne i32 %and693, 128
  %lnot696 = xor i1 %cmp694, true
  br label %land.end.697

land.end.697:                                     ; preds = %cond.end.685, %while.cond.672
  %358 = phi i1 [ false, %while.cond.672 ], [ %lnot696, %cond.end.685 ]
  br i1 %358, label %while.body.698, label %while.end.700

while.body.698:                                   ; preds = %land.end.697
  %359 = load i64, i64* %same_at_end, align 8
  %inc699 = add nsw i64 %359, 1
  store i64 %inc699, i64* %same_at_end, align 8
  br label %while.cond.672

while.end.700:                                    ; preds = %land.end.697
  br label %if.end.701

if.end.701:                                       ; preds = %while.end.700, %if.end.666
  %360 = load i64, i64* %same_at_start, align 8
  %361 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte702 = getelementptr inbounds %struct.buffer, %struct.buffer* %361, i32 0, i32 78
  %362 = load i64, i64* %begv_byte702, align 8
  %sub703 = sub nsw i64 %360, %362
  %363 = load i64, i64* %same_at_end, align 8
  %364 = load i64, i64* %end.addr, align 8
  %call704 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp705 = icmp eq i64 %364, %call704
  br i1 %cmp705, label %cond.false.708, label %cond.true.707

cond.true.707:                                    ; preds = %if.end.701
  %365 = load i64, i64* %end_offset, align 8
  br label %cond.end.710

cond.false.708:                                   ; preds = %if.end.701
  %st_size709 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 8
  %366 = load i64, i64* %st_size709, align 8
  br label %cond.end.710

cond.end.710:                                     ; preds = %cond.false.708, %cond.true.707
  %cond711 = phi i64 [ %365, %cond.true.707 ], [ %366, %cond.false.708 ]
  %add712 = add nsw i64 %363, %cond711
  %367 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte713 = getelementptr inbounds %struct.buffer, %struct.buffer* %367, i32 0, i32 80
  %368 = load i64, i64* %zv_byte713, align 8
  %sub714 = sub nsw i64 %add712, %368
  %sub715 = sub nsw i64 %sub703, %sub714
  store i64 %sub715, i64* %overlap, align 8
  %369 = load i64, i64* %overlap, align 8
  %cmp716 = icmp sgt i64 %369, 0
  br i1 %cmp716, label %if.then.718, label %if.end.720

if.then.718:                                      ; preds = %cond.end.710
  %370 = load i64, i64* %overlap, align 8
  %371 = load i64, i64* %same_at_end, align 8
  %add719 = add nsw i64 %371, %370
  store i64 %add719, i64* %same_at_end, align 8
  br label %if.end.720

if.end.720:                                       ; preds = %if.then.718, %cond.end.710
  %372 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %373 = load i64, i64* %same_at_end, align 8
  %call721 = call i64 @buf_bytepos_to_charpos(%struct.buffer* %372, i64 %373)
  store i64 %call721, i64* %same_at_end_charpos, align 8
  %374 = load i64, i64* %same_at_start, align 8
  %375 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte722 = getelementptr inbounds %struct.buffer, %struct.buffer* %375, i32 0, i32 78
  %376 = load i64, i64* %begv_byte722, align 8
  %sub723 = sub nsw i64 %374, %376
  %377 = load i64, i64* %beg_offset, align 8
  %add724 = add nsw i64 %377, %sub723
  store i64 %add724, i64* %beg_offset, align 8
  %378 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte725 = getelementptr inbounds %struct.buffer, %struct.buffer* %378, i32 0, i32 80
  %379 = load i64, i64* %zv_byte725, align 8
  %380 = load i64, i64* %same_at_end, align 8
  %sub726 = sub nsw i64 %379, %380
  %381 = load i64, i64* %end_offset, align 8
  %sub727 = sub nsw i64 %381, %sub726
  store i64 %sub727, i64* %end_offset, align 8
  %382 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %383 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %384 = load i64, i64* %same_at_start, align 8
  %call728 = call i64 @buf_bytepos_to_charpos(%struct.buffer* %383, i64 %384)
  %385 = load i64, i64* %same_at_end_charpos, align 8
  call void @invalidate_buffer_caches(%struct.buffer* %382, i64 %call728, i64 %385)
  %386 = load i64, i64* %same_at_start, align 8
  %387 = load i64, i64* %same_at_end, align 8
  call void @del_range_byte(i64 %386, i64 %387, i1 zeroext false)
  %388 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %389 = load i64, i64* %same_at_start, align 8
  %call729 = call i64 @buf_bytepos_to_charpos(%struct.buffer* %388, i64 %389)
  store i64 %call729, i64* %temp, align 8
  %390 = load i64, i64* %temp, align 8
  %391 = load i64, i64* %same_at_start, align 8
  call void @set_point_both(i64 %390, i64 %391)
  %392 = load i64, i64* @selected_window, align 8
  %call730 = call %struct.window* @XWINDOW(i64 %392)
  %contents = getelementptr inbounds %struct.window, %struct.window* %call730, i32 0, i32 10
  %393 = load i64, i64* %contents, align 8
  %call731 = call %struct.buffer* @XBUFFER(i64 %393)
  %394 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp732 = icmp eq %struct.buffer* %call731, %394
  br i1 %cmp732, label %if.then.734, label %if.end.745

if.then.734:                                      ; preds = %if.end.720
  %call735 = call i64 @Fbolp()
  %call736 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp737 = icmp eq i64 %call735, %call736
  %lnot739 = xor i1 %cmp737, true
  %395 = load i64, i64* @selected_window, align 8
  %call740 = call %struct.window* @XWINDOW(i64 %395)
  %start_at_line_beg = getelementptr inbounds %struct.window, %struct.window* %call740, i32 0, i32 67
  %396 = zext i1 %lnot739 to i16
  %bf.load741 = load i16, i16* %start_at_line_beg, align 4
  %bf.shl = shl i16 %396, 4
  %bf.clear742 = and i16 %bf.load741, -17
  %bf.set743 = or i16 %bf.clear742, %bf.shl
  store i16 %bf.set743, i16* %start_at_line_beg, align 4
  %bf.result.cast = trunc i16 %396 to i8
  %tobool744 = trunc i8 %bf.result.cast to i1
  br label %if.end.745

if.end.745:                                       ; preds = %if.then.734, %if.end.720
  store i8 1, i8* %replace_handled, align 1
  br label %if.end.746

if.end.746:                                       ; preds = %if.end.745, %while.end.629
  br label %if.end.747

if.end.747:                                       ; preds = %if.end.746, %lor.lhs.false.365, %lor.lhs.false.361, %land.lhs.true.353, %if.end.349
  %397 = load i64, i64* %replace.addr, align 8
  %call748 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp749 = icmp eq i64 %397, %call748
  br i1 %cmp749, label %if.end.1085, label %land.lhs.true.751

land.lhs.true.751:                                ; preds = %if.end.747
  %398 = load i8, i8* %replace_handled, align 1
  %tobool752 = trunc i8 %398 to i1
  br i1 %tobool752, label %if.end.1085, label %land.lhs.true.753

land.lhs.true.753:                                ; preds = %land.lhs.true.751
  %399 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv754 = getelementptr inbounds %struct.buffer, %struct.buffer* %399, i32 0, i32 77
  %400 = load i64, i64* %begv754, align 8
  %401 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv755 = getelementptr inbounds %struct.buffer, %struct.buffer* %401, i32 0, i32 79
  %402 = load i64, i64* %zv755, align 8
  %cmp756 = icmp slt i64 %400, %402
  br i1 %cmp756, label %if.then.758, label %if.end.1085

if.then.758:                                      ; preds = %land.lhs.true.753
  store i64 0, i64* %this, align 8
  %call762 = call i64 @SPECPDL_INDEX()
  store i64 %call762, i64* %this_count, align 8
  %403 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_763 = getelementptr inbounds %struct.buffer, %struct.buffer* %403, i32 0, i32 39
  %404 = load i64, i64* %enable_multibyte_characters_763, align 8
  %call764 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp765 = icmp eq i64 %404, %call764
  %lnot767 = xor i1 %cmp765, true
  %frombool768 = zext i1 %lnot767 to i8
  store i8 %frombool768, i8* %multibyte, align 1
  %405 = load i8, i8* %multibyte, align 1
  %tobool769 = trunc i8 %405 to i1
  %call770 = call i64 @code_conversion_save(i1 zeroext true, i1 zeroext %tobool769)
  store i64 %call770, i64* %conversion_buffer, align 8
  %406 = load i32, i32* %fd, align 4
  %407 = load i64, i64* %beg_offset, align 8
  %call771 = call i64 @lseek(i32 %406, i64 %407, i32 0) #6
  %cmp772 = icmp slt i64 %call771, 0
  br i1 %cmp772, label %if.then.774, label %if.end.775

if.then.774:                                      ; preds = %if.then.758
  %408 = load i64, i64* %orig_filename, align 8
  call void @report_file_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.38, i32 0, i32 0), i64 %408) #8
  unreachable

if.end.775:                                       ; preds = %if.then.758
  store i64 0, i64* %inserted, align 8
  store i32 0, i32* %unprocessed, align 4
  br label %while.body.777

while.body.777:                                   ; preds = %if.end.775, %if.end.822
  store i8 1, i8* @immediate_quit, align 1
  br label %do.body.778

do.body.778:                                      ; preds = %while.body.777
  %409 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call779 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp780 = icmp eq i64 %409, %call779
  br i1 %cmp780, label %if.else.787, label %land.lhs.true.782

land.lhs.true.782:                                ; preds = %do.body.778
  %410 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call783 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp784 = icmp eq i64 %410, %call783
  br i1 %cmp784, label %if.then.786, label %if.else.787

if.then.786:                                      ; preds = %land.lhs.true.782
  call void @process_quit_flag()
  br label %if.end.791

if.else.787:                                      ; preds = %land.lhs.true.782, %do.body.778
  %411 = load volatile i8, i8* @pending_signals, align 1
  %tobool788 = trunc i8 %411 to i1
  br i1 %tobool788, label %if.then.789, label %if.end.790

if.then.789:                                      ; preds = %if.else.787
  call void @process_pending_signals()
  br label %if.end.790

if.end.790:                                       ; preds = %if.then.789, %if.else.787
  br label %if.end.791

if.end.791:                                       ; preds = %if.end.790, %if.then.786
  br label %do.end.792

do.end.792:                                       ; preds = %if.end.791
  %412 = load i32, i32* %fd, align 4
  %arraydecay793 = getelementptr inbounds [65536 x i8], [65536 x i8]* %read_buf, i32 0, i32 0
  %413 = load i32, i32* %unprocessed, align 4
  %idx.ext794 = sext i32 %413 to i64
  %add.ptr795 = getelementptr inbounds i8, i8* %arraydecay793, i64 %idx.ext794
  %414 = load i32, i32* %unprocessed, align 4
  %sub796 = sub nsw i32 65536, %414
  %conv797 = sext i32 %sub796 to i64
  %call798 = call i64 @emacs_read(i32 %412, i8* %add.ptr795, i64 %conv797)
  store i64 %call798, i64* %this, align 8
  store i8 0, i8* @immediate_quit, align 1
  %415 = load i64, i64* %this, align 8
  %cmp799 = icmp sle i64 %415, 0
  br i1 %cmp799, label %if.then.801, label %if.end.802

if.then.801:                                      ; preds = %do.end.792
  br label %while.end.823

if.end.802:                                       ; preds = %do.end.792
  %416 = load i64, i64* %conversion_buffer, align 8
  %call803 = call %struct.buffer* @XBUFFER(i64 %416)
  %417 = load i64, i64* %conversion_buffer, align 8
  %call804 = call %struct.buffer* @XBUFFER(i64 %417)
  %text805 = getelementptr inbounds %struct.buffer, %struct.buffer* %call804, i32 0, i32 73
  %418 = load %struct.buffer_text*, %struct.buffer_text** %text805, align 8
  %z806 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %418, i32 0, i32 2
  %419 = load i64, i64* %z806, align 8
  call void @temp_set_point(%struct.buffer* %call803, i64 %419)
  br label %do.body.807

do.body.807:                                      ; preds = %if.end.802
  %arraydecay808 = getelementptr inbounds [65536 x i8], [65536 x i8]* %read_buf, i32 0, i32 0
  %source = getelementptr inbounds %struct.coding_system, %struct.coding_system* %coding, i32 0, i32 17
  store i8* %arraydecay808, i8** %source, align 8
  %420 = load i32, i32* %unprocessed, align 4
  %conv809 = sext i32 %420 to i64
  %421 = load i64, i64* %this, align 8
  %add810 = add nsw i64 %conv809, %421
  %src_bytes = getelementptr inbounds %struct.coding_system, %struct.coding_system* %coding, i32 0, i32 15
  store i64 %add810, i64* %src_bytes, align 8
  %src_chars = getelementptr inbounds %struct.coding_system, %struct.coding_system* %coding, i32 0, i32 14
  store i64 %add810, i64* %src_chars, align 8
  %call811 = call i64 @builtin_lisp_symbol(i32 0)
  %422 = load i32, i32* %unprocessed, align 4
  %conv812 = sext i32 %422 to i64
  %423 = load i64, i64* %this, align 8
  %add813 = add nsw i64 %conv812, %423
  %424 = load i32, i32* %unprocessed, align 4
  %conv814 = sext i32 %424 to i64
  %425 = load i64, i64* %this, align 8
  %add815 = add nsw i64 %conv814, %425
  %426 = load i64, i64* %conversion_buffer, align 8
  call void @decode_coding_object(%struct.coding_system* %coding, i64 %call811, i64 0, i64 0, i64 %add813, i64 %add815, i64 %426)
  br label %do.end.816

do.end.816:                                       ; preds = %do.body.807
  %carryover_bytes = getelementptr inbounds %struct.coding_system, %struct.coding_system* %coding, i32 0, i32 27
  %427 = load i32, i32* %carryover_bytes, align 4
  store i32 %427, i32* %unprocessed, align 4
  %carryover_bytes817 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %coding, i32 0, i32 27
  %428 = load i32, i32* %carryover_bytes817, align 4
  %cmp818 = icmp sgt i32 %428, 0
  br i1 %cmp818, label %if.then.820, label %if.end.822

if.then.820:                                      ; preds = %do.end.816
  %429 = bitcast [65536 x i8]* %read_buf to i8*
  %carryover = getelementptr inbounds %struct.coding_system, %struct.coding_system* %coding, i32 0, i32 26
  %430 = bitcast [64 x i8]* %carryover to i8*
  %431 = load i32, i32* %unprocessed, align 4
  %conv821 = sext i32 %431 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %429, i8* %430, i64 %conv821, i32 8, i1 false)
  br label %if.end.822

if.end.822:                                       ; preds = %if.then.820, %do.end.816
  br label %while.body.777

while.end.823:                                    ; preds = %if.then.801
  %432 = load i64, i64* %this, align 8
  %cmp824 = icmp slt i64 %432, 0
  br i1 %cmp824, label %if.then.826, label %if.end.827

if.then.826:                                      ; preds = %while.end.823
  %433 = load i64, i64* %orig_filename, align 8
  call void @report_file_error(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i64 %433) #8
  unreachable

if.end.827:                                       ; preds = %while.end.823
  %434 = load i32, i32* %fd, align 4
  %call828 = call i32 @emacs_close(i32 %434)
  %435 = load i64, i64* %fd_index, align 8
  call void @clear_unwind_protect(i64 %435)
  %436 = load i32, i32* %unprocessed, align 4
  %cmp829 = icmp sgt i32 %436, 0
  br i1 %cmp829, label %if.then.831, label %if.end.859

if.then.831:                                      ; preds = %if.end.827
  %mode = getelementptr inbounds %struct.coding_system, %struct.coding_system* %coding, i32 0, i32 1
  %bf.load832 = load i32, i32* %mode, align 8
  %bf.lshr833 = lshr i32 %bf.load832, 14
  %bf.clear834 = and i32 %bf.lshr833, 31
  %or = or i32 %bf.clear834, 1
  %bf.load835 = load i32, i32* %mode, align 8
  %bf.value = and i32 %or, 31
  %bf.shl836 = shl i32 %bf.value, 14
  %bf.clear837 = and i32 %bf.load835, -507905
  %bf.set838 = or i32 %bf.clear837, %bf.shl836
  store i32 %bf.set838, i32* %mode, align 8
  br label %do.body.839

do.body.839:                                      ; preds = %if.then.831
  %arraydecay840 = getelementptr inbounds [65536 x i8], [65536 x i8]* %read_buf, i32 0, i32 0
  %source841 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %coding, i32 0, i32 17
  store i8* %arraydecay840, i8** %source841, align 8
  %437 = load i32, i32* %unprocessed, align 4
  %conv842 = sext i32 %437 to i64
  %src_bytes843 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %coding, i32 0, i32 15
  store i64 %conv842, i64* %src_bytes843, align 8
  %src_chars844 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %coding, i32 0, i32 14
  store i64 %conv842, i64* %src_chars844, align 8
  %call845 = call i64 @builtin_lisp_symbol(i32 0)
  %438 = load i32, i32* %unprocessed, align 4
  %conv846 = sext i32 %438 to i64
  %439 = load i32, i32* %unprocessed, align 4
  %conv847 = sext i32 %439 to i64
  %440 = load i64, i64* %conversion_buffer, align 8
  call void @decode_coding_object(%struct.coding_system* %coding, i64 %call845, i64 0, i64 0, i64 %conv846, i64 %conv847, i64 %440)
  br label %do.end.848

do.end.848:                                       ; preds = %do.body.839
  %mode849 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %coding, i32 0, i32 1
  %bf.load850 = load i32, i32* %mode849, align 8
  %bf.lshr851 = lshr i32 %bf.load850, 14
  %bf.clear852 = and i32 %bf.lshr851, 31
  %and853 = and i32 %bf.clear852, -2
  %bf.load854 = load i32, i32* %mode849, align 8
  %bf.value855 = and i32 %and853, 31
  %bf.shl856 = shl i32 %bf.value855, 14
  %bf.clear857 = and i32 %bf.load854, -507905
  %bf.set858 = or i32 %bf.clear857, %bf.shl856
  store i32 %bf.set858, i32* %mode849, align 8
  br label %if.end.859

if.end.859:                                       ; preds = %do.end.848, %if.end.827
  %441 = load i64, i64* @Vcoding_system_hash_table, align 8
  %call860 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %441)
  %id = getelementptr inbounds %struct.coding_system, %struct.coding_system* %coding, i32 0, i32 0
  %442 = load i64, i64* %id, align 8
  %call861 = call i64 @HASH_KEY(%struct.Lisp_Hash_Table* %call860, i64 %442)
  store i64 %call861, i64* %coding_system, align 8
  store i8 1, i8* %set_coding_system, align 1
  %443 = load i64, i64* %conversion_buffer, align 8
  %call862 = call %struct.buffer* @XBUFFER(i64 %443)
  %text863 = getelementptr inbounds %struct.buffer, %struct.buffer* %call862, i32 0, i32 73
  %444 = load %struct.buffer_text*, %struct.buffer_text** %text863, align 8
  %beg864 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %444, i32 0, i32 0
  %445 = load i8*, i8** %beg864, align 8
  store i8* %445, i8** %decoded, align 8
  %446 = load i64, i64* %conversion_buffer, align 8
  %call865 = call %struct.buffer* @XBUFFER(i64 %446)
  %text866 = getelementptr inbounds %struct.buffer, %struct.buffer* %call865, i32 0, i32 73
  %447 = load %struct.buffer_text*, %struct.buffer_text** %text866, align 8
  %z_byte867 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %447, i32 0, i32 4
  %448 = load i64, i64* %z_byte867, align 8
  %sub868 = sub nsw i64 %448, 1
  store i64 %sub868, i64* %inserted, align 8
  store i64 0, i64* %bufpos760, align 8
  br label %while.cond.869

while.cond.869:                                   ; preds = %while.body.897, %if.end.859
  %449 = load i64, i64* %bufpos760, align 8
  %450 = load i64, i64* %inserted, align 8
  %cmp870 = icmp slt i64 %449, %450
  br i1 %cmp870, label %land.lhs.true.872, label %land.end.896

land.lhs.true.872:                                ; preds = %while.cond.869
  %451 = load i64, i64* %same_at_start, align 8
  %452 = load i64, i64* %same_at_end, align 8
  %cmp873 = icmp slt i64 %451, %452
  br i1 %cmp873, label %land.rhs.875, label %land.end.896

land.rhs.875:                                     ; preds = %land.lhs.true.872
  %453 = load i64, i64* %same_at_start, align 8
  %454 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text876 = getelementptr inbounds %struct.buffer, %struct.buffer* %454, i32 0, i32 73
  %455 = load %struct.buffer_text*, %struct.buffer_text** %text876, align 8
  %gpt_byte877 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %455, i32 0, i32 3
  %456 = load i64, i64* %gpt_byte877, align 8
  %cmp878 = icmp sge i64 %453, %456
  br i1 %cmp878, label %cond.true.880, label %cond.false.883

cond.true.880:                                    ; preds = %land.rhs.875
  %457 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text881 = getelementptr inbounds %struct.buffer, %struct.buffer* %457, i32 0, i32 73
  %458 = load %struct.buffer_text*, %struct.buffer_text** %text881, align 8
  %gap_size882 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %458, i32 0, i32 5
  %459 = load i64, i64* %gap_size882, align 8
  br label %cond.end.884

cond.false.883:                                   ; preds = %land.rhs.875
  br label %cond.end.884

cond.end.884:                                     ; preds = %cond.false.883, %cond.true.880
  %cond885 = phi i64 [ %459, %cond.true.880 ], [ 0, %cond.false.883 ]
  %460 = load i64, i64* %same_at_start, align 8
  %add886 = add nsw i64 %cond885, %460
  %461 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text887 = getelementptr inbounds %struct.buffer, %struct.buffer* %461, i32 0, i32 73
  %462 = load %struct.buffer_text*, %struct.buffer_text** %text887, align 8
  %beg888 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %462, i32 0, i32 0
  %463 = load i8*, i8** %beg888, align 8
  %add.ptr889 = getelementptr inbounds i8, i8* %463, i64 %add886
  %add.ptr890 = getelementptr inbounds i8, i8* %add.ptr889, i64 -1
  %464 = load i8, i8* %add.ptr890, align 1
  %conv891 = zext i8 %464 to i32
  %465 = load i64, i64* %bufpos760, align 8
  %466 = load i8*, i8** %decoded, align 8
  %arrayidx892 = getelementptr inbounds i8, i8* %466, i64 %465
  %467 = load i8, i8* %arrayidx892, align 1
  %conv893 = zext i8 %467 to i32
  %cmp894 = icmp eq i32 %conv891, %conv893
  br label %land.end.896

land.end.896:                                     ; preds = %cond.end.884, %land.lhs.true.872, %while.cond.869
  %468 = phi i1 [ false, %land.lhs.true.872 ], [ false, %while.cond.869 ], [ %cmp894, %cond.end.884 ]
  br i1 %468, label %while.body.897, label %while.end.900

while.body.897:                                   ; preds = %land.end.896
  %469 = load i64, i64* %same_at_start, align 8
  %inc898 = add nsw i64 %469, 1
  store i64 %inc898, i64* %same_at_start, align 8
  %470 = load i64, i64* %bufpos760, align 8
  %inc899 = add nsw i64 %470, 1
  store i64 %inc899, i64* %bufpos760, align 8
  br label %while.cond.869

while.end.900:                                    ; preds = %land.end.896
  %471 = load i64, i64* %bufpos760, align 8
  %472 = load i64, i64* %inserted, align 8
  %cmp901 = icmp eq i64 %471, %472
  br i1 %cmp901, label %if.then.903, label %if.end.912

if.then.903:                                      ; preds = %while.end.900
  %473 = load i64, i64* %same_at_start, align 8
  %474 = load i64, i64* %same_at_end, align 8
  %cmp904 = icmp ne i64 %473, %474
  br i1 %cmp904, label %if.then.906, label %if.end.909

if.then.906:                                      ; preds = %if.then.903
  %475 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %476 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %477 = load i64, i64* %same_at_start, align 8
  %call907 = call i64 @buf_bytepos_to_charpos(%struct.buffer* %476, i64 %477)
  %478 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %479 = load i64, i64* %same_at_end, align 8
  %call908 = call i64 @buf_bytepos_to_charpos(%struct.buffer* %478, i64 %479)
  call void @invalidate_buffer_caches(%struct.buffer* %475, i64 %call907, i64 %call908)
  %480 = load i64, i64* %same_at_start, align 8
  %481 = load i64, i64* %same_at_end, align 8
  call void @del_range_byte(i64 %480, i64 %481, i1 zeroext false)
  br label %if.end.909

if.end.909:                                       ; preds = %if.then.906, %if.then.903
  store i64 0, i64* %inserted, align 8
  %482 = load i64, i64* %this_count, align 8
  %call910 = call i64 @builtin_lisp_symbol(i32 0)
  %call911 = call i64 @unbind_to(i64 %482, i64 %call910)
  br label %handled

if.end.912:                                       ; preds = %while.end.900
  %483 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_913 = getelementptr inbounds %struct.buffer, %struct.buffer* %483, i32 0, i32 39
  %484 = load i64, i64* %enable_multibyte_characters_913, align 8
  %call914 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp915 = icmp eq i64 %484, %call914
  br i1 %cmp915, label %if.end.947, label %if.then.917

if.then.917:                                      ; preds = %if.end.912
  br label %while.cond.918

while.cond.918:                                   ; preds = %while.body.944, %if.then.917
  %485 = load i64, i64* %same_at_start, align 8
  %486 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte919 = getelementptr inbounds %struct.buffer, %struct.buffer* %486, i32 0, i32 78
  %487 = load i64, i64* %begv_byte919, align 8
  %cmp920 = icmp sgt i64 %485, %487
  br i1 %cmp920, label %land.rhs.922, label %land.end.943

land.rhs.922:                                     ; preds = %while.cond.918
  %488 = load i64, i64* %same_at_start, align 8
  %489 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text923 = getelementptr inbounds %struct.buffer, %struct.buffer* %489, i32 0, i32 73
  %490 = load %struct.buffer_text*, %struct.buffer_text** %text923, align 8
  %gpt_byte924 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %490, i32 0, i32 3
  %491 = load i64, i64* %gpt_byte924, align 8
  %cmp925 = icmp sge i64 %488, %491
  br i1 %cmp925, label %cond.true.927, label %cond.false.930

cond.true.927:                                    ; preds = %land.rhs.922
  %492 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text928 = getelementptr inbounds %struct.buffer, %struct.buffer* %492, i32 0, i32 73
  %493 = load %struct.buffer_text*, %struct.buffer_text** %text928, align 8
  %gap_size929 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %493, i32 0, i32 5
  %494 = load i64, i64* %gap_size929, align 8
  br label %cond.end.931

cond.false.930:                                   ; preds = %land.rhs.922
  br label %cond.end.931

cond.end.931:                                     ; preds = %cond.false.930, %cond.true.927
  %cond932 = phi i64 [ %494, %cond.true.927 ], [ 0, %cond.false.930 ]
  %495 = load i64, i64* %same_at_start, align 8
  %add933 = add nsw i64 %cond932, %495
  %496 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text934 = getelementptr inbounds %struct.buffer, %struct.buffer* %496, i32 0, i32 73
  %497 = load %struct.buffer_text*, %struct.buffer_text** %text934, align 8
  %beg935 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %497, i32 0, i32 0
  %498 = load i8*, i8** %beg935, align 8
  %add.ptr936 = getelementptr inbounds i8, i8* %498, i64 %add933
  %add.ptr937 = getelementptr inbounds i8, i8* %add.ptr936, i64 -1
  %499 = load i8, i8* %add.ptr937, align 1
  %conv938 = zext i8 %499 to i32
  %and939 = and i32 %conv938, 192
  %cmp940 = icmp ne i32 %and939, 128
  %lnot942 = xor i1 %cmp940, true
  br label %land.end.943

land.end.943:                                     ; preds = %cond.end.931, %while.cond.918
  %500 = phi i1 [ false, %while.cond.918 ], [ %lnot942, %cond.end.931 ]
  br i1 %500, label %while.body.944, label %while.end.946

while.body.944:                                   ; preds = %land.end.943
  %501 = load i64, i64* %same_at_start, align 8
  %dec945 = add nsw i64 %501, -1
  store i64 %dec945, i64* %same_at_start, align 8
  br label %while.cond.918

while.end.946:                                    ; preds = %land.end.943
  br label %if.end.947

if.end.947:                                       ; preds = %while.end.946, %if.end.912
  %502 = load i64, i64* %inserted, align 8
  store i64 %502, i64* %bufpos760, align 8
  br label %while.cond.948

while.cond.948:                                   ; preds = %while.body.979, %if.end.947
  %503 = load i64, i64* %bufpos760, align 8
  %cmp949 = icmp sgt i64 %503, 0
  br i1 %cmp949, label %land.lhs.true.951, label %land.end.978

land.lhs.true.951:                                ; preds = %while.cond.948
  %504 = load i64, i64* %same_at_end, align 8
  %505 = load i64, i64* %same_at_start, align 8
  %cmp952 = icmp sgt i64 %504, %505
  br i1 %cmp952, label %land.rhs.954, label %land.end.978

land.rhs.954:                                     ; preds = %land.lhs.true.951
  %506 = load i64, i64* %same_at_end, align 8
  %sub955 = sub nsw i64 %506, 1
  %507 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text956 = getelementptr inbounds %struct.buffer, %struct.buffer* %507, i32 0, i32 73
  %508 = load %struct.buffer_text*, %struct.buffer_text** %text956, align 8
  %gpt_byte957 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %508, i32 0, i32 3
  %509 = load i64, i64* %gpt_byte957, align 8
  %cmp958 = icmp sge i64 %sub955, %509
  br i1 %cmp958, label %cond.true.960, label %cond.false.963

cond.true.960:                                    ; preds = %land.rhs.954
  %510 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text961 = getelementptr inbounds %struct.buffer, %struct.buffer* %510, i32 0, i32 73
  %511 = load %struct.buffer_text*, %struct.buffer_text** %text961, align 8
  %gap_size962 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %511, i32 0, i32 5
  %512 = load i64, i64* %gap_size962, align 8
  br label %cond.end.964

cond.false.963:                                   ; preds = %land.rhs.954
  br label %cond.end.964

cond.end.964:                                     ; preds = %cond.false.963, %cond.true.960
  %cond965 = phi i64 [ %512, %cond.true.960 ], [ 0, %cond.false.963 ]
  %513 = load i64, i64* %same_at_end, align 8
  %sub966 = sub nsw i64 %513, 1
  %add967 = add nsw i64 %cond965, %sub966
  %514 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text968 = getelementptr inbounds %struct.buffer, %struct.buffer* %514, i32 0, i32 73
  %515 = load %struct.buffer_text*, %struct.buffer_text** %text968, align 8
  %beg969 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %515, i32 0, i32 0
  %516 = load i8*, i8** %beg969, align 8
  %add.ptr970 = getelementptr inbounds i8, i8* %516, i64 %add967
  %add.ptr971 = getelementptr inbounds i8, i8* %add.ptr970, i64 -1
  %517 = load i8, i8* %add.ptr971, align 1
  %conv972 = zext i8 %517 to i32
  %518 = load i64, i64* %bufpos760, align 8
  %sub973 = sub nsw i64 %518, 1
  %519 = load i8*, i8** %decoded, align 8
  %arrayidx974 = getelementptr inbounds i8, i8* %519, i64 %sub973
  %520 = load i8, i8* %arrayidx974, align 1
  %conv975 = zext i8 %520 to i32
  %cmp976 = icmp eq i32 %conv972, %conv975
  br label %land.end.978

land.end.978:                                     ; preds = %cond.end.964, %land.lhs.true.951, %while.cond.948
  %521 = phi i1 [ false, %land.lhs.true.951 ], [ false, %while.cond.948 ], [ %cmp976, %cond.end.964 ]
  br i1 %521, label %while.body.979, label %while.end.982

while.body.979:                                   ; preds = %land.end.978
  %522 = load i64, i64* %same_at_end, align 8
  %dec980 = add nsw i64 %522, -1
  store i64 %dec980, i64* %same_at_end, align 8
  %523 = load i64, i64* %bufpos760, align 8
  %dec981 = add nsw i64 %523, -1
  store i64 %dec981, i64* %bufpos760, align 8
  br label %while.cond.948

while.end.982:                                    ; preds = %land.end.978
  %524 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_983 = getelementptr inbounds %struct.buffer, %struct.buffer* %524, i32 0, i32 39
  %525 = load i64, i64* %enable_multibyte_characters_983, align 8
  %call984 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp985 = icmp eq i64 %525, %call984
  br i1 %cmp985, label %if.end.1017, label %if.then.987

if.then.987:                                      ; preds = %while.end.982
  br label %while.cond.988

while.cond.988:                                   ; preds = %while.body.1014, %if.then.987
  %526 = load i64, i64* %same_at_end, align 8
  %527 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte989 = getelementptr inbounds %struct.buffer, %struct.buffer* %527, i32 0, i32 80
  %528 = load i64, i64* %zv_byte989, align 8
  %cmp990 = icmp slt i64 %526, %528
  br i1 %cmp990, label %land.rhs.992, label %land.end.1013

land.rhs.992:                                     ; preds = %while.cond.988
  %529 = load i64, i64* %same_at_end, align 8
  %530 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text993 = getelementptr inbounds %struct.buffer, %struct.buffer* %530, i32 0, i32 73
  %531 = load %struct.buffer_text*, %struct.buffer_text** %text993, align 8
  %gpt_byte994 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %531, i32 0, i32 3
  %532 = load i64, i64* %gpt_byte994, align 8
  %cmp995 = icmp sge i64 %529, %532
  br i1 %cmp995, label %cond.true.997, label %cond.false.1000

cond.true.997:                                    ; preds = %land.rhs.992
  %533 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text998 = getelementptr inbounds %struct.buffer, %struct.buffer* %533, i32 0, i32 73
  %534 = load %struct.buffer_text*, %struct.buffer_text** %text998, align 8
  %gap_size999 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %534, i32 0, i32 5
  %535 = load i64, i64* %gap_size999, align 8
  br label %cond.end.1001

cond.false.1000:                                  ; preds = %land.rhs.992
  br label %cond.end.1001

cond.end.1001:                                    ; preds = %cond.false.1000, %cond.true.997
  %cond1002 = phi i64 [ %535, %cond.true.997 ], [ 0, %cond.false.1000 ]
  %536 = load i64, i64* %same_at_end, align 8
  %add1003 = add nsw i64 %cond1002, %536
  %537 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text1004 = getelementptr inbounds %struct.buffer, %struct.buffer* %537, i32 0, i32 73
  %538 = load %struct.buffer_text*, %struct.buffer_text** %text1004, align 8
  %beg1005 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %538, i32 0, i32 0
  %539 = load i8*, i8** %beg1005, align 8
  %add.ptr1006 = getelementptr inbounds i8, i8* %539, i64 %add1003
  %add.ptr1007 = getelementptr inbounds i8, i8* %add.ptr1006, i64 -1
  %540 = load i8, i8* %add.ptr1007, align 1
  %conv1008 = zext i8 %540 to i32
  %and1009 = and i32 %conv1008, 192
  %cmp1010 = icmp ne i32 %and1009, 128
  %lnot1012 = xor i1 %cmp1010, true
  br label %land.end.1013

land.end.1013:                                    ; preds = %cond.end.1001, %while.cond.988
  %541 = phi i1 [ false, %while.cond.988 ], [ %lnot1012, %cond.end.1001 ]
  br i1 %541, label %while.body.1014, label %while.end.1016

while.body.1014:                                  ; preds = %land.end.1013
  %542 = load i64, i64* %same_at_end, align 8
  %inc1015 = add nsw i64 %542, 1
  store i64 %inc1015, i64* %same_at_end, align 8
  br label %while.cond.988

while.end.1016:                                   ; preds = %land.end.1013
  br label %if.end.1017

if.end.1017:                                      ; preds = %while.end.1016, %while.end.982
  %543 = load i64, i64* %same_at_start, align 8
  %544 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte1018 = getelementptr inbounds %struct.buffer, %struct.buffer* %544, i32 0, i32 78
  %545 = load i64, i64* %begv_byte1018, align 8
  %sub1019 = sub nsw i64 %543, %545
  %546 = load i64, i64* %same_at_end, align 8
  %547 = load i64, i64* %inserted, align 8
  %add1020 = add nsw i64 %546, %547
  %548 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte1021 = getelementptr inbounds %struct.buffer, %struct.buffer* %548, i32 0, i32 80
  %549 = load i64, i64* %zv_byte1021, align 8
  %sub1022 = sub nsw i64 %add1020, %549
  %sub1023 = sub nsw i64 %sub1019, %sub1022
  store i64 %sub1023, i64* %overlap759, align 8
  %550 = load i64, i64* %overlap759, align 8
  %cmp1024 = icmp sgt i64 %550, 0
  br i1 %cmp1024, label %if.then.1026, label %if.end.1028

if.then.1026:                                     ; preds = %if.end.1017
  %551 = load i64, i64* %overlap759, align 8
  %552 = load i64, i64* %same_at_end, align 8
  %add1027 = add nsw i64 %552, %551
  store i64 %add1027, i64* %same_at_end, align 8
  br label %if.end.1028

if.end.1028:                                      ; preds = %if.then.1026, %if.end.1017
  %553 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %554 = load i64, i64* %same_at_end, align 8
  %call1029 = call i64 @buf_bytepos_to_charpos(%struct.buffer* %553, i64 %554)
  store i64 %call1029, i64* %same_at_end_charpos, align 8
  %555 = load i64, i64* @selected_window, align 8
  %call1030 = call %struct.window* @XWINDOW(i64 %555)
  %contents1031 = getelementptr inbounds %struct.window, %struct.window* %call1030, i32 0, i32 10
  %556 = load i64, i64* %contents1031, align 8
  %call1032 = call %struct.buffer* @XBUFFER(i64 %556)
  %557 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp1033 = icmp eq %struct.buffer* %call1032, %557
  br i1 %cmp1033, label %if.then.1035, label %if.end.1049

if.then.1035:                                     ; preds = %if.end.1028
  %call1036 = call i64 @Fbolp()
  %call1037 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1038 = icmp eq i64 %call1036, %call1037
  %lnot1040 = xor i1 %cmp1038, true
  %558 = load i64, i64* @selected_window, align 8
  %call1041 = call %struct.window* @XWINDOW(i64 %558)
  %start_at_line_beg1042 = getelementptr inbounds %struct.window, %struct.window* %call1041, i32 0, i32 67
  %559 = zext i1 %lnot1040 to i16
  %bf.load1043 = load i16, i16* %start_at_line_beg1042, align 4
  %bf.shl1044 = shl i16 %559, 4
  %bf.clear1045 = and i16 %bf.load1043, -17
  %bf.set1046 = or i16 %bf.clear1045, %bf.shl1044
  store i16 %bf.set1046, i16* %start_at_line_beg1042, align 4
  %bf.result.cast1047 = trunc i16 %559 to i8
  %tobool1048 = trunc i8 %bf.result.cast1047 to i1
  br label %if.end.1049

if.end.1049:                                      ; preds = %if.then.1035, %if.end.1028
  %560 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte1050 = getelementptr inbounds %struct.buffer, %struct.buffer* %560, i32 0, i32 80
  %561 = load i64, i64* %zv_byte1050, align 8
  %562 = load i64, i64* %same_at_end, align 8
  %sub1051 = sub nsw i64 %561, %562
  %563 = load i64, i64* %same_at_start, align 8
  %564 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte1052 = getelementptr inbounds %struct.buffer, %struct.buffer* %564, i32 0, i32 78
  %565 = load i64, i64* %begv_byte1052, align 8
  %sub1053 = sub nsw i64 %563, %565
  %add1054 = add nsw i64 %sub1051, %sub1053
  %566 = load i64, i64* %inserted, align 8
  %sub1055 = sub nsw i64 %566, %add1054
  store i64 %sub1055, i64* %inserted, align 8
  %567 = load i64, i64* %same_at_end, align 8
  %568 = load i64, i64* %same_at_start, align 8
  %cmp1056 = icmp ne i64 %567, %568
  br i1 %cmp1056, label %if.then.1058, label %if.else.1063

if.then.1058:                                     ; preds = %if.end.1049
  %569 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %570 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %571 = load i64, i64* %same_at_start, align 8
  %call1059 = call i64 @buf_bytepos_to_charpos(%struct.buffer* %570, i64 %571)
  %572 = load i64, i64* %same_at_end_charpos, align 8
  call void @invalidate_buffer_caches(%struct.buffer* %569, i64 %call1059, i64 %572)
  %573 = load i64, i64* %same_at_start, align 8
  %574 = load i64, i64* %same_at_end, align 8
  call void @del_range_byte(i64 %573, i64 %574, i1 zeroext false)
  %575 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text1060 = getelementptr inbounds %struct.buffer, %struct.buffer* %575, i32 0, i32 73
  %576 = load %struct.buffer_text*, %struct.buffer_text** %text1060, align 8
  %gpt = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %576, i32 0, i32 1
  %577 = load i64, i64* %gpt, align 8
  store i64 %577, i64* %temp761, align 8
  %578 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text1061 = getelementptr inbounds %struct.buffer, %struct.buffer* %578, i32 0, i32 73
  %579 = load %struct.buffer_text*, %struct.buffer_text** %text1061, align 8
  %gpt_byte1062 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %579, i32 0, i32 3
  %580 = load i64, i64* %gpt_byte1062, align 8
  store i64 %580, i64* %same_at_start, align 8
  br label %if.end.1064

if.else.1063:                                     ; preds = %if.end.1049
  %581 = load i64, i64* %same_at_end_charpos, align 8
  store i64 %581, i64* %temp761, align 8
  br label %if.end.1064

if.end.1064:                                      ; preds = %if.else.1063, %if.then.1058
  %582 = load i64, i64* %temp761, align 8
  %583 = load i64, i64* %same_at_start, align 8
  call void @set_point_both(i64 %582, i64 %583)
  %584 = load i64, i64* %conversion_buffer, align 8
  %call1065 = call %struct.buffer* @XBUFFER(i64 %584)
  %585 = load i64, i64* %same_at_start, align 8
  %586 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte1066 = getelementptr inbounds %struct.buffer, %struct.buffer* %586, i32 0, i32 78
  %587 = load i64, i64* %begv_byte1066, align 8
  %sub1067 = sub nsw i64 %585, %587
  %add1068 = add nsw i64 %sub1067, 1
  %call1069 = call i64 @buf_bytepos_to_charpos(%struct.buffer* %call1065, i64 %add1068)
  store i64 %call1069, i64* %same_at_start_charpos, align 8
  %588 = load i64, i64* %conversion_buffer, align 8
  %call1070 = call %struct.buffer* @XBUFFER(i64 %588)
  %589 = load i64, i64* %same_at_start, align 8
  %590 = load i64, i64* %inserted, align 8
  %add1071 = add nsw i64 %589, %590
  %591 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte1072 = getelementptr inbounds %struct.buffer, %struct.buffer* %591, i32 0, i32 78
  %592 = load i64, i64* %begv_byte1072, align 8
  %sub1073 = sub nsw i64 %add1071, %592
  %add1074 = add nsw i64 %sub1073, 1
  %call1075 = call i64 @buf_bytepos_to_charpos(%struct.buffer* %call1070, i64 %add1074)
  %593 = load i64, i64* %same_at_start_charpos, align 8
  %sub1076 = sub nsw i64 %call1075, %593
  store i64 %sub1076, i64* %inserted_chars, align 8
  %call1077 = call i64 @intern(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.40, i32 0, i32 0))
  %call1078 = call i64 @builtin_lisp_symbol(i32 0)
  call void @specbind(i64 %call1077, i64 %call1078)
  %594 = load i64, i64* %conversion_buffer, align 8
  %call1079 = call %struct.buffer* @XBUFFER(i64 %594)
  %595 = load i64, i64* %same_at_start_charpos, align 8
  %596 = load i64, i64* %inserted_chars, align 8
  call void @insert_from_buffer(%struct.buffer* %call1079, i64 %595, i64 %596, i1 zeroext false)
  %597 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt1080 = getelementptr inbounds %struct.buffer, %struct.buffer* %597, i32 0, i32 75
  %598 = load i64, i64* %pt1080, align 8
  %add1081 = add nsw i64 %598, 0
  %599 = load i64, i64* %temp761, align 8
  %sub1082 = sub nsw i64 %add1081, %599
  store i64 %sub1082, i64* %inserted, align 8
  %600 = load i64, i64* %temp761, align 8
  %601 = load i64, i64* %same_at_start, align 8
  call void @set_point_both(i64 %600, i64 %601)
  %602 = load i64, i64* %this_count, align 8
  %call1083 = call i64 @builtin_lisp_symbol(i32 0)
  %call1084 = call i64 @unbind_to(i64 %602, i64 %call1083)
  br label %handled

if.end.1085:                                      ; preds = %land.lhs.true.753, %land.lhs.true.751, %if.end.747
  %603 = load i8, i8* %not_regular, align 1
  %tobool1086 = trunc i8 %603 to i1
  br i1 %tobool1086, label %if.else.1089, label %if.then.1087

if.then.1087:                                     ; preds = %if.end.1085
  %604 = load i64, i64* %end_offset, align 8
  %605 = load i64, i64* %beg_offset, align 8
  %sub1088 = sub nsw i64 %604, %605
  store i64 %sub1088, i64* %total, align 8
  br label %if.end.1090

if.else.1089:                                     ; preds = %if.end.1085
  store i64 65536, i64* %total, align 8
  br label %if.end.1090

if.end.1090:                                      ; preds = %if.else.1089, %if.then.1087
  %606 = load i64, i64* %visit.addr, align 8
  %call1091 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1092 = icmp eq i64 %606, %call1091
  br i1 %cmp1092, label %land.lhs.true.1094, label %if.end.1116

land.lhs.true.1094:                               ; preds = %if.end.1090
  %607 = load i64, i64* %total, align 8
  %cmp1095 = icmp sgt i64 %607, 0
  br i1 %cmp1095, label %if.then.1097, label %if.end.1116

if.then.1097:                                     ; preds = %land.lhs.true.1094
  %608 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %file_truename_ = getelementptr inbounds %struct.buffer, %struct.buffer* %608, i32 0, i32 49
  %609 = load i64, i64* %file_truename_, align 8
  %call1098 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1099 = icmp eq i64 %609, %call1098
  br i1 %cmp1099, label %if.end.1111, label %land.lhs.true.1101

land.lhs.true.1101:                               ; preds = %if.then.1097
  %610 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %filename_ = getelementptr inbounds %struct.buffer, %struct.buffer* %610, i32 0, i32 2
  %611 = load i64, i64* %filename_, align 8
  %call1102 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1103 = icmp eq i64 %611, %call1102
  br i1 %cmp1103, label %if.end.1111, label %land.lhs.true.1105

land.lhs.true.1105:                               ; preds = %land.lhs.true.1101
  %612 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text1106 = getelementptr inbounds %struct.buffer, %struct.buffer* %612, i32 0, i32 73
  %613 = load %struct.buffer_text*, %struct.buffer_text** %text1106, align 8
  %save_modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %613, i32 0, i32 8
  %614 = load i64, i64* %save_modiff, align 8
  %615 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text1107 = getelementptr inbounds %struct.buffer, %struct.buffer* %615, i32 0, i32 73
  %616 = load %struct.buffer_text*, %struct.buffer_text** %text1107, align 8
  %modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %616, i32 0, i32 6
  %617 = load i64, i64* %modiff, align 8
  %cmp1108 = icmp sge i64 %614, %617
  br i1 %cmp1108, label %if.then.1110, label %if.end.1111

if.then.1110:                                     ; preds = %land.lhs.true.1105
  store i8 1, i8* %we_locked_file, align 1
  br label %if.end.1111

if.end.1111:                                      ; preds = %if.then.1110, %land.lhs.true.1105, %land.lhs.true.1101, %if.then.1097
  %618 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt1112 = getelementptr inbounds %struct.buffer, %struct.buffer* %618, i32 0, i32 75
  %619 = load i64, i64* %pt1112, align 8
  %add1113 = add nsw i64 %619, 0
  %620 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt1114 = getelementptr inbounds %struct.buffer, %struct.buffer* %620, i32 0, i32 75
  %621 = load i64, i64* %pt1114, align 8
  %add1115 = add nsw i64 %621, 0
  call void @prepare_to_modify_buffer(i64 %add1113, i64 %add1115, i64* null)
  br label %if.end.1116

if.end.1116:                                      ; preds = %if.end.1111, %land.lhs.true.1094, %if.end.1090
  %622 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt1117 = getelementptr inbounds %struct.buffer, %struct.buffer* %622, i32 0, i32 75
  %623 = load i64, i64* %pt1117, align 8
  %add1118 = add nsw i64 %623, 0
  %624 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %624, i32 0, i32 76
  %625 = load i64, i64* %pt_byte, align 8
  %add1119 = add nsw i64 %625, 0
  call void @move_gap_both(i64 %add1118, i64 %add1119)
  %626 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text1120 = getelementptr inbounds %struct.buffer, %struct.buffer* %626, i32 0, i32 73
  %627 = load %struct.buffer_text*, %struct.buffer_text** %text1120, align 8
  %gap_size1121 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %627, i32 0, i32 5
  %628 = load i64, i64* %gap_size1121, align 8
  %629 = load i64, i64* %total, align 8
  %cmp1122 = icmp slt i64 %628, %629
  br i1 %cmp1122, label %if.then.1124, label %if.end.1128

if.then.1124:                                     ; preds = %if.end.1116
  %630 = load i64, i64* %total, align 8
  %631 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text1125 = getelementptr inbounds %struct.buffer, %struct.buffer* %631, i32 0, i32 73
  %632 = load %struct.buffer_text*, %struct.buffer_text** %text1125, align 8
  %gap_size1126 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %632, i32 0, i32 5
  %633 = load i64, i64* %gap_size1126, align 8
  %sub1127 = sub nsw i64 %630, %633
  call void @make_gap(i64 %sub1127)
  br label %if.end.1128

if.end.1128:                                      ; preds = %if.then.1124, %if.end.1116
  %634 = load i64, i64* %beg_offset, align 8
  %cmp1129 = icmp ne i64 %634, 0
  br i1 %cmp1129, label %if.then.1135, label %lor.lhs.false.1131

lor.lhs.false.1131:                               ; preds = %if.end.1128
  %635 = load i64, i64* %replace.addr, align 8
  %call1132 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1133 = icmp eq i64 %635, %call1132
  br i1 %cmp1133, label %if.end.1141, label %if.then.1135

if.then.1135:                                     ; preds = %lor.lhs.false.1131, %if.end.1128
  %636 = load i32, i32* %fd, align 4
  %637 = load i64, i64* %beg_offset, align 8
  %call1136 = call i64 @lseek(i32 %636, i64 %637, i32 0) #6
  %cmp1137 = icmp slt i64 %call1136, 0
  br i1 %cmp1137, label %if.then.1139, label %if.end.1140

if.then.1139:                                     ; preds = %if.then.1135
  %638 = load i64, i64* %orig_filename, align 8
  call void @report_file_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.38, i32 0, i32 0), i64 %638) #8
  unreachable

if.end.1140:                                      ; preds = %if.then.1135
  br label %if.end.1141

if.end.1141:                                      ; preds = %if.end.1140, %lor.lhs.false.1131
  store i64 0, i64* %how_much, align 8
  store i64 0, i64* %inserted, align 8
  %639 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text1143 = getelementptr inbounds %struct.buffer, %struct.buffer* %639, i32 0, i32 73
  %640 = load %struct.buffer_text*, %struct.buffer_text** %text1143, align 8
  %gap_size1144 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %640, i32 0, i32 5
  %641 = load i64, i64* %gap_size1144, align 8
  store i64 %641, i64* %gap_size1142, align 8
  br label %while.cond.1145

while.cond.1145:                                  ; preds = %if.end.1211, %if.end.1141
  %642 = load i64, i64* %how_much, align 8
  %643 = load i64, i64* %total, align 8
  %cmp1146 = icmp slt i64 %642, %643
  br i1 %cmp1146, label %while.body.1148, label %while.end.1213

while.body.1148:                                  ; preds = %while.cond.1145
  %644 = load i64, i64* %total, align 8
  %645 = load i64, i64* %how_much, align 8
  %sub1149 = sub nsw i64 %644, %645
  %cmp1150 = icmp slt i64 %sub1149, 65536
  br i1 %cmp1150, label %cond.true.1152, label %cond.false.1154

cond.true.1152:                                   ; preds = %while.body.1148
  %646 = load i64, i64* %total, align 8
  %647 = load i64, i64* %how_much, align 8
  %sub1153 = sub nsw i64 %646, %647
  br label %cond.end.1155

cond.false.1154:                                  ; preds = %while.body.1148
  br label %cond.end.1155

cond.end.1155:                                    ; preds = %cond.false.1154, %cond.true.1152
  %cond1156 = phi i64 [ %sub1153, %cond.true.1152 ], [ 65536, %cond.false.1154 ]
  store i64 %cond1156, i64* %trytry, align 8
  %648 = load i8, i8* %not_regular, align 1
  %tobool1158 = trunc i8 %648 to i1
  br i1 %tobool1158, label %if.then.1159, label %if.else.1178

if.then.1159:                                     ; preds = %cond.end.1155
  %649 = load i64, i64* %gap_size1142, align 8
  %650 = load i64, i64* %trytry, align 8
  %cmp1160 = icmp slt i64 %649, %650
  br i1 %cmp1160, label %if.then.1162, label %if.end.1167

if.then.1162:                                     ; preds = %if.then.1159
  %651 = load i64, i64* %trytry, align 8
  %652 = load i64, i64* %gap_size1142, align 8
  %sub1163 = sub nsw i64 %651, %652
  call void @make_gap(i64 %sub1163)
  %653 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text1164 = getelementptr inbounds %struct.buffer, %struct.buffer* %653, i32 0, i32 73
  %654 = load %struct.buffer_text*, %struct.buffer_text** %text1164, align 8
  %gap_size1165 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %654, i32 0, i32 5
  %655 = load i64, i64* %gap_size1165, align 8
  %656 = load i64, i64* %inserted, align 8
  %sub1166 = sub nsw i64 %655, %656
  store i64 %sub1166, i64* %gap_size1142, align 8
  br label %if.end.1167

if.end.1167:                                      ; preds = %if.then.1162, %if.then.1159
  %657 = load i32, i32* %fd, align 4
  %conv1168 = sext i32 %657 to i64
  %658 = load i64, i64* %inserted, align 8
  %659 = load i64, i64* %trytry, align 8
  %call1169 = call i64 @make_save_int_int_int(i64 %conv1168, i64 %658, i64 %659)
  %call1170 = call i64 @builtin_lisp_symbol(i32 372)
  %call1171 = call i64 @internal_condition_case_1(i64 (i64)* @read_non_regular, i64 %call1169, i64 %call1170, i64 (i64)* @read_non_regular_quit)
  store i64 %call1171, i64* %nbytes, align 8
  %660 = load i64, i64* %nbytes, align 8
  %call1172 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1173 = icmp eq i64 %660, %call1172
  br i1 %cmp1173, label %if.then.1175, label %if.end.1176

if.then.1175:                                     ; preds = %if.end.1167
  store i8 1, i8* %read_quit, align 1
  br label %while.end.1213

if.end.1176:                                      ; preds = %if.end.1167
  %661 = load i64, i64* %nbytes, align 8
  %shr1177 = ashr i64 %661, 2
  store i64 %shr1177, i64* %this1157, align 8
  br label %if.end.1202

if.else.1178:                                     ; preds = %cond.end.1155
  store i8 1, i8* @immediate_quit, align 1
  br label %do.body.1179

do.body.1179:                                     ; preds = %if.else.1178
  %662 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call1180 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1181 = icmp eq i64 %662, %call1180
  br i1 %cmp1181, label %if.else.1188, label %land.lhs.true.1183

land.lhs.true.1183:                               ; preds = %do.body.1179
  %663 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call1184 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1185 = icmp eq i64 %663, %call1184
  br i1 %cmp1185, label %if.then.1187, label %if.else.1188

if.then.1187:                                     ; preds = %land.lhs.true.1183
  call void @process_quit_flag()
  br label %if.end.1192

if.else.1188:                                     ; preds = %land.lhs.true.1183, %do.body.1179
  %664 = load volatile i8, i8* @pending_signals, align 1
  %tobool1189 = trunc i8 %664 to i1
  br i1 %tobool1189, label %if.then.1190, label %if.end.1191

if.then.1190:                                     ; preds = %if.else.1188
  call void @process_pending_signals()
  br label %if.end.1191

if.end.1191:                                      ; preds = %if.then.1190, %if.else.1188
  br label %if.end.1192

if.end.1192:                                      ; preds = %if.end.1191, %if.then.1187
  br label %do.end.1193

do.end.1193:                                      ; preds = %if.end.1192
  %665 = load i32, i32* %fd, align 4
  %666 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text1194 = getelementptr inbounds %struct.buffer, %struct.buffer* %666, i32 0, i32 73
  %667 = load %struct.buffer_text*, %struct.buffer_text** %text1194, align 8
  %beg1195 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %667, i32 0, i32 0
  %668 = load i8*, i8** %beg1195, align 8
  %669 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte1196 = getelementptr inbounds %struct.buffer, %struct.buffer* %669, i32 0, i32 76
  %670 = load i64, i64* %pt_byte1196, align 8
  %add1197 = add nsw i64 %670, 0
  %add.ptr1198 = getelementptr inbounds i8, i8* %668, i64 %add1197
  %add.ptr1199 = getelementptr inbounds i8, i8* %add.ptr1198, i64 -1
  %671 = load i64, i64* %inserted, align 8
  %add.ptr1200 = getelementptr inbounds i8, i8* %add.ptr1199, i64 %671
  %672 = load i64, i64* %trytry, align 8
  %call1201 = call i64 @emacs_read(i32 %665, i8* %add.ptr1200, i64 %672)
  store i64 %call1201, i64* %this1157, align 8
  store i8 0, i8* @immediate_quit, align 1
  br label %if.end.1202

if.end.1202:                                      ; preds = %do.end.1193, %if.end.1176
  %673 = load i64, i64* %this1157, align 8
  %cmp1203 = icmp sle i64 %673, 0
  br i1 %cmp1203, label %if.then.1205, label %if.end.1206

if.then.1205:                                     ; preds = %if.end.1202
  %674 = load i64, i64* %this1157, align 8
  store i64 %674, i64* %how_much, align 8
  br label %while.end.1213

if.end.1206:                                      ; preds = %if.end.1202
  %675 = load i64, i64* %this1157, align 8
  %676 = load i64, i64* %gap_size1142, align 8
  %sub1207 = sub nsw i64 %676, %675
  store i64 %sub1207, i64* %gap_size1142, align 8
  %677 = load i8, i8* %not_regular, align 1
  %tobool1208 = trunc i8 %677 to i1
  br i1 %tobool1208, label %if.end.1211, label %if.then.1209

if.then.1209:                                     ; preds = %if.end.1206
  %678 = load i64, i64* %this1157, align 8
  %679 = load i64, i64* %how_much, align 8
  %add1210 = add nsw i64 %679, %678
  store i64 %add1210, i64* %how_much, align 8
  br label %if.end.1211

if.end.1211:                                      ; preds = %if.then.1209, %if.end.1206
  %680 = load i64, i64* %this1157, align 8
  %681 = load i64, i64* %inserted, align 8
  %add1212 = add nsw i64 %681, %680
  store i64 %add1212, i64* %inserted, align 8
  br label %while.cond.1145

while.end.1213:                                   ; preds = %if.then.1205, %if.then.1175, %while.cond.1145
  %682 = load i64, i64* %inserted, align 8
  %cmp1214 = icmp eq i64 %682, 0
  br i1 %cmp1214, label %if.then.1216, label %if.else.1221

if.then.1216:                                     ; preds = %while.end.1213
  %683 = load i8, i8* %we_locked_file, align 1
  %tobool1217 = trunc i8 %683 to i1
  br i1 %tobool1217, label %if.then.1218, label %if.end.1220

if.then.1218:                                     ; preds = %if.then.1216
  %684 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %file_truename_1219 = getelementptr inbounds %struct.buffer, %struct.buffer* %684, i32 0, i32 49
  %685 = load i64, i64* %file_truename_1219, align 8
  call void @unlock_file(i64 %685)
  br label %if.end.1220

if.end.1220:                                      ; preds = %if.then.1218, %if.then.1216
  %686 = load i64, i64* %old_Vdeactivate_mark, align 8
  store i64 %686, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 52), align 8
  br label %if.end.1225

if.else.1221:                                     ; preds = %while.end.1213
  %call1222 = call i64 @builtin_lisp_symbol(i32 319)
  %call1223 = call i64 @builtin_lisp_symbol(i32 901)
  %call1224 = call i64 @Fset(i64 %call1222, i64 %call1223)
  br label %if.end.1225

if.end.1225:                                      ; preds = %if.else.1221, %if.end.1220
  %687 = load i32, i32* %fd, align 4
  %call1226 = call i32 @emacs_close(i32 %687)
  %688 = load i64, i64* %fd_index, align 8
  call void @clear_unwind_protect(i64 %688)
  %689 = load i64, i64* %how_much, align 8
  %cmp1227 = icmp slt i64 %689, 0
  br i1 %cmp1227, label %if.then.1229, label %if.end.1230

if.then.1229:                                     ; preds = %if.end.1225
  %690 = load i64, i64* %orig_filename, align 8
  call void @report_file_error(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i64 %690) #8
  unreachable

if.end.1230:                                      ; preds = %if.end.1225
  %691 = load i64, i64* %inserted, align 8
  %692 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text1231 = getelementptr inbounds %struct.buffer, %struct.buffer* %692, i32 0, i32 73
  %693 = load %struct.buffer_text*, %struct.buffer_text** %text1231, align 8
  %gap_size1232 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %693, i32 0, i32 5
  %694 = load i64, i64* %gap_size1232, align 8
  %sub1233 = sub nsw i64 %694, %691
  store i64 %sub1233, i64* %gap_size1232, align 8
  %695 = load i64, i64* %inserted, align 8
  %696 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text1234 = getelementptr inbounds %struct.buffer, %struct.buffer* %696, i32 0, i32 73
  %697 = load %struct.buffer_text*, %struct.buffer_text** %text1234, align 8
  %gpt1235 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %697, i32 0, i32 1
  %698 = load i64, i64* %gpt1235, align 8
  %add1236 = add nsw i64 %698, %695
  store i64 %add1236, i64* %gpt1235, align 8
  %699 = load i64, i64* %inserted, align 8
  %700 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text1237 = getelementptr inbounds %struct.buffer, %struct.buffer* %700, i32 0, i32 73
  %701 = load %struct.buffer_text*, %struct.buffer_text** %text1237, align 8
  %gpt_byte1238 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %701, i32 0, i32 3
  %702 = load i64, i64* %gpt_byte1238, align 8
  %add1239 = add nsw i64 %702, %699
  store i64 %add1239, i64* %gpt_byte1238, align 8
  %703 = load i64, i64* %inserted, align 8
  %704 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv1240 = getelementptr inbounds %struct.buffer, %struct.buffer* %704, i32 0, i32 79
  %705 = load i64, i64* %zv1240, align 8
  %add1241 = add nsw i64 %705, %703
  store i64 %add1241, i64* %zv1240, align 8
  %706 = load i64, i64* %inserted, align 8
  %707 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte1242 = getelementptr inbounds %struct.buffer, %struct.buffer* %707, i32 0, i32 80
  %708 = load i64, i64* %zv_byte1242, align 8
  %add1243 = add nsw i64 %708, %706
  store i64 %add1243, i64* %zv_byte1242, align 8
  %709 = load i64, i64* %inserted, align 8
  %710 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text1244 = getelementptr inbounds %struct.buffer, %struct.buffer* %710, i32 0, i32 73
  %711 = load %struct.buffer_text*, %struct.buffer_text** %text1244, align 8
  %z1245 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %711, i32 0, i32 2
  %712 = load i64, i64* %z1245, align 8
  %add1246 = add nsw i64 %712, %709
  store i64 %add1246, i64* %z1245, align 8
  %713 = load i64, i64* %inserted, align 8
  %714 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text1247 = getelementptr inbounds %struct.buffer, %struct.buffer* %714, i32 0, i32 73
  %715 = load %struct.buffer_text*, %struct.buffer_text** %text1247, align 8
  %z_byte1248 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %715, i32 0, i32 4
  %716 = load i64, i64* %z_byte1248, align 8
  %add1249 = add nsw i64 %716, %713
  store i64 %add1249, i64* %z_byte1248, align 8
  %717 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text1250 = getelementptr inbounds %struct.buffer, %struct.buffer* %717, i32 0, i32 73
  %718 = load %struct.buffer_text*, %struct.buffer_text** %text1250, align 8
  %gap_size1251 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %718, i32 0, i32 5
  %719 = load i64, i64* %gap_size1251, align 8
  %cmp1252 = icmp sgt i64 %719, 0
  br i1 %cmp1252, label %if.then.1254, label %if.end.1261

if.then.1254:                                     ; preds = %if.end.1230
  %720 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text1255 = getelementptr inbounds %struct.buffer, %struct.buffer* %720, i32 0, i32 73
  %721 = load %struct.buffer_text*, %struct.buffer_text** %text1255, align 8
  %beg1256 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %721, i32 0, i32 0
  %722 = load i8*, i8** %beg1256, align 8
  %723 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text1257 = getelementptr inbounds %struct.buffer, %struct.buffer* %723, i32 0, i32 73
  %724 = load %struct.buffer_text*, %struct.buffer_text** %text1257, align 8
  %gpt_byte1258 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %724, i32 0, i32 3
  %725 = load i64, i64* %gpt_byte1258, align 8
  %add.ptr1259 = getelementptr inbounds i8, i8* %722, i64 %725
  %add.ptr1260 = getelementptr inbounds i8, i8* %add.ptr1259, i64 -1
  store i8 0, i8* %add.ptr1260, align 1
  br label %if.end.1261

if.end.1261:                                      ; preds = %if.then.1254, %if.end.1230
  br label %notfound

notfound:                                         ; preds = %if.end.1261, %if.then.119, %if.end.92
  %726 = load i64, i64* %coding_system, align 8
  %call1262 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1263 = icmp eq i64 %726, %call1262
  br i1 %cmp1263, label %if.then.1265, label %if.end.1348

if.then.1265:                                     ; preds = %notfound
  %727 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 35), align 8
  %call1266 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1267 = icmp eq i64 %727, %call1266
  br i1 %cmp1267, label %if.else.1270, label %if.then.1269

if.then.1269:                                     ; preds = %if.then.1265
  %728 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 35), align 8
  store i64 %728, i64* %coding_system, align 8
  br label %if.end.1319

if.else.1270:                                     ; preds = %if.then.1265
  %call1271 = call i64 @SPECPDL_INDEX()
  store i64 %call1271, i64* %count1, align 8
  %729 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_1272 = getelementptr inbounds %struct.buffer, %struct.buffer* %729, i32 0, i32 39
  %730 = load i64, i64* %enable_multibyte_characters_1272, align 8
  %731 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %undo_list_1273 = getelementptr inbounds %struct.buffer, %struct.buffer* %731, i32 0, i32 98
  %732 = load i64, i64* %undo_list_1273, align 8
  %call1274 = call i64 @Fcurrent_buffer()
  %call1275 = call i64 @Fcons(i64 %732, i64 %call1274)
  %call1276 = call i64 @Fcons(i64 %730, i64 %call1275)
  store i64 %call1276, i64* %unwind_data, align 8
  %733 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %call1277 = call i64 @builtin_lisp_symbol(i32 0)
  call void @bset_enable_multibyte_characters(%struct.buffer* %733, i64 %call1277)
  %734 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %call1278 = call i64 @builtin_lisp_symbol(i32 901)
  call void @bset_undo_list(%struct.buffer* %734, i64 %call1278)
  %735 = load i64, i64* %unwind_data, align 8
  call void @record_unwind_protect(void (i64)* @decide_coding_unwind, i64 %735)
  %736 = load i64, i64* %inserted, align 8
  %cmp1279 = icmp sgt i64 %736, 0
  br i1 %cmp1279, label %land.lhs.true.1281, label %if.end.1289

land.lhs.true.1281:                               ; preds = %if.else.1270
  %737 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 267), align 8
  %call1282 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1283 = icmp eq i64 %737, %call1282
  br i1 %cmp1283, label %if.end.1289, label %if.then.1285

if.then.1285:                                     ; preds = %land.lhs.true.1281
  %738 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 267), align 8
  %739 = load i64, i64* %filename.addr, align 8
  %740 = load i64, i64* %inserted, align 8
  %shl1286 = shl i64 %740, 2
  %add1287 = add i64 %shl1286, 2
  %call1288 = call i64 @call2(i64 %738, i64 %739, i64 %add1287)
  store i64 %call1288, i64* %coding_system, align 8
  br label %if.end.1289

if.end.1289:                                      ; preds = %if.then.1285, %land.lhs.true.1281, %if.else.1270
  %741 = load i64, i64* %coding_system, align 8
  %call1290 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1291 = icmp eq i64 %741, %call1290
  br i1 %cmp1291, label %if.then.1293, label %if.end.1313

if.then.1293:                                     ; preds = %if.end.1289
  %arrayinit.begin1295 = getelementptr inbounds [6 x i64], [6 x i64]* %.compoundliteral1294, i64 0, i64 0
  %call1296 = call i64 @builtin_lisp_symbol(i32 553)
  store i64 %call1296, i64* %arrayinit.begin1295
  %arrayinit.element1297 = getelementptr inbounds i64, i64* %arrayinit.begin1295, i64 1
  %742 = load i64, i64* %orig_filename, align 8
  store i64 %742, i64* %arrayinit.element1297
  %arrayinit.element1298 = getelementptr inbounds i64, i64* %arrayinit.element1297, i64 1
  %743 = load i64, i64* %visit.addr, align 8
  store i64 %743, i64* %arrayinit.element1298
  %arrayinit.element1299 = getelementptr inbounds i64, i64* %arrayinit.element1298, i64 1
  %744 = load i64, i64* %beg.addr, align 8
  store i64 %744, i64* %arrayinit.element1299
  %arrayinit.element1300 = getelementptr inbounds i64, i64* %arrayinit.element1299, i64 1
  %745 = load i64, i64* %end.addr, align 8
  store i64 %745, i64* %arrayinit.element1300
  %arrayinit.element1301 = getelementptr inbounds i64, i64* %arrayinit.element1300, i64 1
  %call1302 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1302, i64* %arrayinit.element1301
  %arraydecay1303 = getelementptr inbounds [6 x i64], [6 x i64]* %.compoundliteral1294, i32 0, i32 0
  %call1304 = call i64 @Ffind_operation_coding_system(i64 6, i64* %arraydecay1303)
  store i64 %call1304, i64* %coding_system, align 8
  %746 = load i64, i64* %coding_system, align 8
  %and1305 = and i64 %746, 7
  %conv1306 = trunc i64 %and1305 to i32
  %cmp1307 = icmp eq i32 %conv1306, 3
  br i1 %cmp1307, label %if.then.1309, label %if.end.1312

if.then.1309:                                     ; preds = %if.then.1293
  %747 = load i64, i64* %coding_system, align 8
  %sub1310 = sub nsw i64 %747, 3
  %748 = inttoptr i64 %sub1310 to i8*
  %749 = bitcast i8* %748 to %struct.Lisp_Cons*
  %car1311 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %749, i32 0, i32 0
  %750 = load i64, i64* %car1311, align 8
  store i64 %750, i64* %coding_system, align 8
  br label %if.end.1312

if.end.1312:                                      ; preds = %if.then.1309, %if.then.1293
  br label %if.end.1313

if.end.1313:                                      ; preds = %if.end.1312, %if.end.1289
  %751 = load i64, i64* %count1, align 8
  %call1314 = call i64 @builtin_lisp_symbol(i32 0)
  %call1315 = call i64 @unbind_to(i64 %751, i64 %call1314)
  %752 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text1316 = getelementptr inbounds %struct.buffer, %struct.buffer* %752, i32 0, i32 73
  %753 = load %struct.buffer_text*, %struct.buffer_text** %text1316, align 8
  %z_byte1317 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %753, i32 0, i32 4
  %754 = load i64, i64* %z_byte1317, align 8
  %sub1318 = sub nsw i64 %754, 1
  store i64 %sub1318, i64* %inserted, align 8
  br label %if.end.1319

if.end.1319:                                      ; preds = %if.end.1313, %if.then.1269
  %755 = load i64, i64* %coding_system, align 8
  %call1320 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1321 = icmp eq i64 %755, %call1320
  br i1 %cmp1321, label %if.then.1323, label %if.else.1325

if.then.1323:                                     ; preds = %if.end.1319
  %call1324 = call i64 @builtin_lisp_symbol(i32 958)
  store i64 %call1324, i64* %coding_system, align 8
  br label %if.end.1340

if.else.1325:                                     ; preds = %if.end.1319
  br label %do.body.1326

do.body.1326:                                     ; preds = %if.else.1325
  %756 = load i64, i64* @Vcoding_system_hash_table, align 8
  %call1327 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %756)
  %757 = load i64, i64* %coding_system, align 8
  %call1328 = call i64 @hash_lookup(%struct.Lisp_Hash_Table* %call1327, i64 %757, i64* null)
  %cmp1329 = icmp slt i64 %call1328, 0
  br i1 %cmp1329, label %land.lhs.true.1331, label %if.end.1338

land.lhs.true.1331:                               ; preds = %do.body.1326
  %758 = load i64, i64* %coding_system, align 8
  %call1332 = call i64 @Fcheck_coding_system(i64 %758)
  %call1333 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1334 = icmp eq i64 %call1332, %call1333
  br i1 %cmp1334, label %if.then.1336, label %if.end.1338

if.then.1336:                                     ; preds = %land.lhs.true.1331
  %call1337 = call i64 @builtin_lisp_symbol(i32 280)
  %759 = load i64, i64* %coding_system, align 8
  %760 = call i64 @wrong_type_argument(i64 %call1337, i64 %759) #8
  unreachable

if.end.1338:                                      ; preds = %land.lhs.true.1331, %do.body.1326
  br label %do.end.1339

do.end.1339:                                      ; preds = %if.end.1338
  br label %if.end.1340

if.end.1340:                                      ; preds = %do.end.1339, %if.then.1323
  %761 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_1341 = getelementptr inbounds %struct.buffer, %struct.buffer* %761, i32 0, i32 39
  %762 = load i64, i64* %enable_multibyte_characters_1341, align 8
  %call1342 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1343 = icmp eq i64 %762, %call1342
  br i1 %cmp1343, label %if.then.1345, label %if.end.1347

if.then.1345:                                     ; preds = %if.end.1340
  %763 = load i64, i64* %coding_system, align 8
  %call1346 = call i64 @raw_text_coding_system(i64 %763)
  store i64 %call1346, i64* %coding_system, align 8
  br label %if.end.1347

if.end.1347:                                      ; preds = %if.then.1345, %if.end.1340
  %764 = load i64, i64* %coding_system, align 8
  call void @setup_coding_system(i64 %764, %struct.coding_system* %coding)
  store i8 1, i8* %set_coding_system, align 1
  br label %if.end.1348

if.end.1348:                                      ; preds = %if.end.1347, %notfound
  %765 = load i64, i64* %visit.addr, align 8
  %call1349 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1350 = icmp eq i64 %765, %call1349
  br i1 %cmp1350, label %if.end.1372, label %if.then.1352

if.then.1352:                                     ; preds = %if.end.1348
  %common_flags1353 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %coding, i32 0, i32 1
  %bf.load1354 = load i32, i32* %common_flags1353, align 8
  %bf.clear1355 = and i32 %bf.load1354, 16383
  %and1356 = and i32 %bf.clear1355, 256
  %tobool1357 = icmp ne i32 %and1356, 0
  br i1 %tobool1357, label %land.lhs.true.1358, label %if.end.1371

land.lhs.true.1358:                               ; preds = %if.then.1352
  %766 = load i64, i64* %replace.addr, align 8
  %call1359 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1360 = icmp eq i64 %766, %call1359
  br i1 %cmp1360, label %if.then.1362, label %if.end.1371

if.then.1362:                                     ; preds = %land.lhs.true.1358
  %767 = load i64, i64* %inserted, align 8
  %cmp1363 = icmp sgt i64 %767, 0
  br i1 %cmp1363, label %if.then.1365, label %if.else.1367

if.then.1365:                                     ; preds = %if.then.1362
  %768 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %call1366 = call i64 @builtin_lisp_symbol(i32 0)
  call void @bset_enable_multibyte_characters(%struct.buffer* %768, i64 %call1366)
  br label %if.end.1370

if.else.1367:                                     ; preds = %if.then.1362
  %call1368 = call i64 @builtin_lisp_symbol(i32 0)
  %call1369 = call i64 @Fset_buffer_multibyte(i64 %call1368)
  br label %if.end.1370

if.end.1370:                                      ; preds = %if.else.1367, %if.then.1365
  br label %if.end.1371

if.end.1371:                                      ; preds = %if.end.1370, %land.lhs.true.1358, %if.then.1352
  br label %if.end.1372

if.end.1372:                                      ; preds = %if.end.1371, %if.end.1348
  %769 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_1373 = getelementptr inbounds %struct.buffer, %struct.buffer* %769, i32 0, i32 39
  %770 = load i64, i64* %enable_multibyte_characters_1373, align 8
  %call1374 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1375 = icmp eq i64 %770, %call1374
  %lnot1377 = xor i1 %cmp1375, true
  %dst_multibyte1378 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %coding, i32 0, i32 1
  %771 = zext i1 %lnot1377 to i32
  %bf.load1379 = load i32, i32* %dst_multibyte1378, align 8
  %bf.shl1380 = shl i32 %771, 20
  %bf.clear1381 = and i32 %bf.load1379, -1048577
  %bf.set1382 = or i32 %bf.clear1381, %bf.shl1380
  store i32 %bf.set1382, i32* %dst_multibyte1378, align 8
  %bf.result.cast1383 = trunc i32 %771 to i8
  %tobool1384 = trunc i8 %bf.result.cast1383 to i1
  %dst_multibyte1385 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %coding, i32 0, i32 1
  %bf.load1386 = load i32, i32* %dst_multibyte1385, align 8
  %bf.lshr1387 = lshr i32 %bf.load1386, 20
  %bf.clear1388 = and i32 %bf.lshr1387, 1
  %bf.cast1389 = trunc i32 %bf.clear1388 to i1
  br i1 %bf.cast1389, label %land.lhs.true.1403, label %lor.lhs.false.1391

lor.lhs.false.1391:                               ; preds = %if.end.1372
  %common_flags1392 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %coding, i32 0, i32 1
  %bf.load1393 = load i32, i32* %common_flags1392, align 8
  %bf.clear1394 = and i32 %bf.load1393, 16383
  %and1395 = and i32 %bf.clear1394, 1024
  %tobool1396 = icmp ne i32 %and1395, 0
  br i1 %tobool1396, label %land.lhs.true.1403, label %lor.lhs.false.1397

lor.lhs.false.1397:                               ; preds = %lor.lhs.false.1391
  %common_flags1398 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %coding, i32 0, i32 1
  %bf.load1399 = load i32, i32* %common_flags1398, align 8
  %bf.clear1400 = and i32 %bf.load1399, 16383
  %and1401 = and i32 %bf.clear1400, 4096
  %tobool1402 = icmp ne i32 %and1401, 0
  br i1 %tobool1402, label %land.lhs.true.1403, label %if.else.1433

land.lhs.true.1403:                               ; preds = %lor.lhs.false.1397, %lor.lhs.false.1391, %if.end.1372
  %772 = load i64, i64* %inserted, align 8
  %cmp1404 = icmp sgt i64 %772, 0
  br i1 %cmp1404, label %if.then.1412, label %lor.lhs.false.1406

lor.lhs.false.1406:                               ; preds = %land.lhs.true.1403
  %common_flags1407 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %coding, i32 0, i32 1
  %bf.load1408 = load i32, i32* %common_flags1407, align 8
  %bf.clear1409 = and i32 %bf.load1408, 16383
  %and1410 = and i32 %bf.clear1409, 512
  %tobool1411 = icmp ne i32 %and1410, 0
  br i1 %tobool1411, label %if.then.1412, label %if.else.1433

if.then.1412:                                     ; preds = %lor.lhs.false.1406, %land.lhs.true.1403
  %773 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt1413 = getelementptr inbounds %struct.buffer, %struct.buffer* %773, i32 0, i32 75
  %774 = load i64, i64* %pt1413, align 8
  %add1414 = add nsw i64 %774, 0
  %775 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte1415 = getelementptr inbounds %struct.buffer, %struct.buffer* %775, i32 0, i32 76
  %776 = load i64, i64* %pt_byte1415, align 8
  %add1416 = add nsw i64 %776, 0
  call void @move_gap_both(i64 %add1414, i64 %add1416)
  %777 = load i64, i64* %inserted, align 8
  %778 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text1417 = getelementptr inbounds %struct.buffer, %struct.buffer* %778, i32 0, i32 73
  %779 = load %struct.buffer_text*, %struct.buffer_text** %text1417, align 8
  %gap_size1418 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %779, i32 0, i32 5
  %780 = load i64, i64* %gap_size1418, align 8
  %add1419 = add nsw i64 %780, %777
  store i64 %add1419, i64* %gap_size1418, align 8
  %781 = load i64, i64* %inserted, align 8
  %782 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte1420 = getelementptr inbounds %struct.buffer, %struct.buffer* %782, i32 0, i32 80
  %783 = load i64, i64* %zv_byte1420, align 8
  %sub1421 = sub nsw i64 %783, %781
  store i64 %sub1421, i64* %zv_byte1420, align 8
  %784 = load i64, i64* %inserted, align 8
  %785 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text1422 = getelementptr inbounds %struct.buffer, %struct.buffer* %785, i32 0, i32 73
  %786 = load %struct.buffer_text*, %struct.buffer_text** %text1422, align 8
  %z_byte1423 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %786, i32 0, i32 4
  %787 = load i64, i64* %z_byte1423, align 8
  %sub1424 = sub nsw i64 %787, %784
  store i64 %sub1424, i64* %z_byte1423, align 8
  %788 = load i64, i64* %inserted, align 8
  %789 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv1425 = getelementptr inbounds %struct.buffer, %struct.buffer* %789, i32 0, i32 79
  %790 = load i64, i64* %zv1425, align 8
  %sub1426 = sub nsw i64 %790, %788
  store i64 %sub1426, i64* %zv1425, align 8
  %791 = load i64, i64* %inserted, align 8
  %792 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text1427 = getelementptr inbounds %struct.buffer, %struct.buffer* %792, i32 0, i32 73
  %793 = load %struct.buffer_text*, %struct.buffer_text** %text1427, align 8
  %z1428 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %793, i32 0, i32 2
  %794 = load i64, i64* %z1428, align 8
  %sub1429 = sub nsw i64 %794, %791
  store i64 %sub1429, i64* %z1428, align 8
  %795 = load i64, i64* %inserted, align 8
  %796 = load i64, i64* %inserted, align 8
  call void @decode_coding_gap(%struct.coding_system* %coding, i64 %795, i64 %796)
  %produced_char = getelementptr inbounds %struct.coding_system, %struct.coding_system* %coding, i32 0, i32 9
  %797 = load i64, i64* %produced_char, align 8
  store i64 %797, i64* %inserted, align 8
  %798 = load i64, i64* @Vcoding_system_hash_table, align 8
  %call1430 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %798)
  %id1431 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %coding, i32 0, i32 0
  %799 = load i64, i64* %id1431, align 8
  %call1432 = call i64 @HASH_KEY(%struct.Lisp_Hash_Table* %call1430, i64 %799)
  store i64 %call1432, i64* %coding_system, align 8
  br label %if.end.1453

if.else.1433:                                     ; preds = %lor.lhs.false.1406, %lor.lhs.false.1397
  %800 = load i64, i64* %inserted, align 8
  %cmp1434 = icmp sgt i64 %800, 0
  br i1 %cmp1434, label %if.then.1436, label %if.end.1452

if.then.1436:                                     ; preds = %if.else.1433
  %801 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %802 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt1437 = getelementptr inbounds %struct.buffer, %struct.buffer* %802, i32 0, i32 75
  %803 = load i64, i64* %pt1437, align 8
  %add1438 = add nsw i64 %803, 0
  %804 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt1439 = getelementptr inbounds %struct.buffer, %struct.buffer* %804, i32 0, i32 75
  %805 = load i64, i64* %pt1439, align 8
  %add1440 = add nsw i64 %805, 0
  %806 = load i64, i64* %inserted, align 8
  %add1441 = add nsw i64 %add1440, %806
  call void @invalidate_buffer_caches(%struct.buffer* %801, i64 %add1438, i64 %add1441)
  %807 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt1442 = getelementptr inbounds %struct.buffer, %struct.buffer* %807, i32 0, i32 75
  %808 = load i64, i64* %pt1442, align 8
  %add1443 = add nsw i64 %808, 0
  %809 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte1444 = getelementptr inbounds %struct.buffer, %struct.buffer* %809, i32 0, i32 76
  %810 = load i64, i64* %pt_byte1444, align 8
  %add1445 = add nsw i64 %810, 0
  %811 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt1446 = getelementptr inbounds %struct.buffer, %struct.buffer* %811, i32 0, i32 75
  %812 = load i64, i64* %pt1446, align 8
  %add1447 = add nsw i64 %812, 0
  %813 = load i64, i64* %inserted, align 8
  %add1448 = add nsw i64 %add1447, %813
  %814 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte1449 = getelementptr inbounds %struct.buffer, %struct.buffer* %814, i32 0, i32 76
  %815 = load i64, i64* %pt_byte1449, align 8
  %add1450 = add nsw i64 %815, 0
  %816 = load i64, i64* %inserted, align 8
  %add1451 = add nsw i64 %add1450, %816
  %817 = load i64, i64* %inserted, align 8
  call void @adjust_after_insert(i64 %add1443, i64 %add1445, i64 %add1448, i64 %add1451, i64 %817)
  br label %if.end.1452

if.end.1452:                                      ; preds = %if.then.1436, %if.else.1433
  br label %if.end.1453

if.end.1453:                                      ; preds = %if.end.1452, %if.then.1412
  %818 = load i64, i64* %inserted, align 8
  %cmp1454 = icmp sgt i64 %818, 0
  br i1 %cmp1454, label %land.lhs.true.1456, label %if.end.1474

land.lhs.true.1456:                               ; preds = %if.end.1453
  %819 = load i64, i64* %total, align 8
  %cmp1457 = icmp sgt i64 %819, 0
  br i1 %cmp1457, label %land.lhs.true.1459, label %if.end.1474

land.lhs.true.1459:                               ; preds = %land.lhs.true.1456
  %820 = load i64, i64* %visit.addr, align 8
  %call1460 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1461 = icmp eq i64 %820, %call1460
  br i1 %cmp1461, label %if.then.1467, label %lor.lhs.false.1463

lor.lhs.false.1463:                               ; preds = %land.lhs.true.1459
  %821 = load i64, i64* %replace.addr, align 8
  %call1464 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1465 = icmp eq i64 %821, %call1464
  br i1 %cmp1465, label %if.end.1474, label %if.then.1467

if.then.1467:                                     ; preds = %lor.lhs.false.1463, %land.lhs.true.1459
  %822 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt1468 = getelementptr inbounds %struct.buffer, %struct.buffer* %822, i32 0, i32 75
  %823 = load i64, i64* %pt1468, align 8
  %add1469 = add nsw i64 %823, 0
  %824 = load i64, i64* %inserted, align 8
  call void @signal_after_change(i64 %add1469, i64 0, i64 %824)
  %825 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt1470 = getelementptr inbounds %struct.buffer, %struct.buffer* %825, i32 0, i32 75
  %826 = load i64, i64* %pt1470, align 8
  %add1471 = add nsw i64 %826, 0
  %827 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt1472 = getelementptr inbounds %struct.buffer, %struct.buffer* %827, i32 0, i32 75
  %828 = load i64, i64* %pt1472, align 8
  %add1473 = add nsw i64 %828, 0
  call void @update_compositions(i64 %add1471, i64 %add1473, i32 3)
  br label %if.end.1474

if.end.1474:                                      ; preds = %if.then.1467, %lor.lhs.false.1463, %land.lhs.true.1456, %if.end.1453
  br label %handled

handled:                                          ; preds = %if.end.1474, %if.end.1064, %if.end.909, %if.then.471, %if.end.59
  %829 = load i64, i64* %inserted, align 8
  %cmp1475 = icmp sgt i64 %829, 0
  br i1 %cmp1475, label %if.then.1477, label %if.end.1479

if.then.1477:                                     ; preds = %handled
  %830 = load i64, i64* %window_markers, align 8
  %831 = load i64, i64* %inserted, align 8
  %832 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %833 = load i64, i64* %same_at_start, align 8
  %call1478 = call i64 @buf_bytepos_to_charpos(%struct.buffer* %832, i64 %833)
  %834 = load i64, i64* %same_at_end_charpos, align 8
  call void @restore_window_points(i64 %830, i64 %831, i64 %call1478, i64 %834)
  br label %if.end.1479

if.end.1479:                                      ; preds = %if.then.1477, %handled
  %835 = load i64, i64* %visit.addr, align 8
  %call1480 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1481 = icmp eq i64 %835, %call1480
  br i1 %cmp1481, label %if.end.1521, label %if.then.1483

if.then.1483:                                     ; preds = %if.end.1479
  %836 = load i8, i8* %empty_undo_list_p, align 1
  %tobool1484 = trunc i8 %836 to i1
  br i1 %tobool1484, label %if.then.1485, label %if.end.1487

if.then.1485:                                     ; preds = %if.then.1483
  %837 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %call1486 = call i64 @builtin_lisp_symbol(i32 0)
  call void @bset_undo_list(%struct.buffer* %837, i64 %call1486)
  br label %if.end.1487

if.end.1487:                                      ; preds = %if.then.1485, %if.then.1483
  %838 = load i64, i64* %handler, align 8
  %call1488 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1489 = icmp eq i64 %838, %call1488
  br i1 %cmp1489, label %if.then.1491, label %if.end.1493

if.then.1491:                                     ; preds = %if.end.1487
  %839 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %modtime = getelementptr inbounds %struct.buffer, %struct.buffer* %839, i32 0, i32 85
  %840 = bitcast %struct.timespec* %modtime to i8*
  %841 = bitcast %struct.timespec* %mtime to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %840, i8* %841, i64 16, i32 8, i1 false)
  %st_size1492 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 8
  %842 = load i64, i64* %st_size1492, align 8
  %843 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %modtime_size = getelementptr inbounds %struct.buffer, %struct.buffer* %843, i32 0, i32 86
  store i64 %842, i64* %modtime_size, align 8
  %844 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %845 = load i64, i64* %orig_filename, align 8
  call void @bset_filename(%struct.buffer* %844, i64 %845)
  br label %if.end.1493

if.end.1493:                                      ; preds = %if.then.1491, %if.end.1487
  %846 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text1494 = getelementptr inbounds %struct.buffer, %struct.buffer* %846, i32 0, i32 73
  %847 = load %struct.buffer_text*, %struct.buffer_text** %text1494, align 8
  %modiff1495 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %847, i32 0, i32 6
  %848 = load i64, i64* %modiff1495, align 8
  %849 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text1496 = getelementptr inbounds %struct.buffer, %struct.buffer* %849, i32 0, i32 73
  %850 = load %struct.buffer_text*, %struct.buffer_text** %text1496, align 8
  %save_modiff1497 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %850, i32 0, i32 8
  store i64 %848, i64* %save_modiff1497, align 8
  %851 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text1498 = getelementptr inbounds %struct.buffer, %struct.buffer* %851, i32 0, i32 73
  %852 = load %struct.buffer_text*, %struct.buffer_text** %text1498, align 8
  %modiff1499 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %852, i32 0, i32 6
  %853 = load i64, i64* %modiff1499, align 8
  %854 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %auto_save_modified = getelementptr inbounds %struct.buffer, %struct.buffer* %854, i32 0, i32 87
  store i64 %853, i64* %auto_save_modified, align 8
  %855 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text1500 = getelementptr inbounds %struct.buffer, %struct.buffer* %855, i32 0, i32 73
  %856 = load %struct.buffer_text*, %struct.buffer_text** %text1500, align 8
  %z1501 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %856, i32 0, i32 2
  %857 = load i64, i64* %z1501, align 8
  %sub1502 = sub nsw i64 %857, 1
  %call1503 = call i64 @make_natnum(i64 %sub1502)
  %858 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %save_length_ = getelementptr inbounds %struct.buffer, %struct.buffer* %858, i32 0, i32 5
  store i64 %call1503, i64* %save_length_, align 8
  %859 = load i64, i64* %handler, align 8
  %call1504 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1505 = icmp eq i64 %859, %call1504
  br i1 %cmp1505, label %if.then.1507, label %if.end.1515

if.then.1507:                                     ; preds = %if.end.1493
  %860 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %file_truename_1508 = getelementptr inbounds %struct.buffer, %struct.buffer* %860, i32 0, i32 49
  %861 = load i64, i64* %file_truename_1508, align 8
  %call1509 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1510 = icmp eq i64 %861, %call1509
  br i1 %cmp1510, label %if.end.1514, label %if.then.1512

if.then.1512:                                     ; preds = %if.then.1507
  %862 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %file_truename_1513 = getelementptr inbounds %struct.buffer, %struct.buffer* %862, i32 0, i32 49
  %863 = load i64, i64* %file_truename_1513, align 8
  call void @unlock_file(i64 %863)
  br label %if.end.1514

if.end.1514:                                      ; preds = %if.then.1512, %if.then.1507
  %864 = load i64, i64* %filename.addr, align 8
  call void @unlock_file(i64 %864)
  br label %if.end.1515

if.end.1515:                                      ; preds = %if.end.1514, %if.end.1493
  %865 = load i8, i8* %not_regular, align 1
  %tobool1516 = trunc i8 %865 to i1
  br i1 %tobool1516, label %if.then.1517, label %if.end.1520

if.then.1517:                                     ; preds = %if.end.1515
  %call1518 = call i64 @builtin_lisp_symbol(i32 411)
  %call1519 = call i64 @build_string(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i32 0, i32 0))
  %866 = load i64, i64* %orig_filename, align 8
  call void @xsignal2(i64 %call1518, i64 %call1519, i64 %866) #8
  unreachable

if.end.1520:                                      ; preds = %if.end.1515
  br label %if.end.1521

if.end.1521:                                      ; preds = %if.end.1520, %if.end.1479
  %867 = load i8, i8* %set_coding_system, align 1
  %tobool1522 = trunc i8 %867 to i1
  br i1 %tobool1522, label %if.then.1523, label %if.end.1524

if.then.1523:                                     ; preds = %if.end.1521
  %868 = load i64, i64* %coding_system, align 8
  store i64 %868, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 155), align 8
  br label %if.end.1524

if.end.1524:                                      ; preds = %if.then.1523, %if.end.1521
  %call1525 = call i64 @builtin_lisp_symbol(i32 167)
  %call1526 = call i64 @Ffboundp(i64 %call1525)
  %call1527 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1528 = icmp eq i64 %call1526, %call1527
  br i1 %cmp1528, label %if.end.1549, label %if.then.1530

if.then.1530:                                     ; preds = %if.end.1524
  %call1531 = call i64 @builtin_lisp_symbol(i32 167)
  %869 = load i64, i64* %inserted, align 8
  %shl1532 = shl i64 %869, 2
  %add1533 = add i64 %shl1532, 2
  %870 = load i64, i64* %visit.addr, align 8
  %call1534 = call i64 @call2(i64 %call1531, i64 %add1533, i64 %870)
  store i64 %call1534, i64* %insval, align 8
  %871 = load i64, i64* %insval, align 8
  %call1535 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1536 = icmp eq i64 %871, %call1535
  br i1 %cmp1536, label %if.end.1548, label %if.then.1538

if.then.1538:                                     ; preds = %if.then.1530
  %872 = load i64, i64* %insval, align 8
  %873 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv1539 = getelementptr inbounds %struct.buffer, %struct.buffer* %873, i32 0, i32 79
  %874 = load i64, i64* %zv1539, align 8
  %875 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt1540 = getelementptr inbounds %struct.buffer, %struct.buffer* %875, i32 0, i32 75
  %876 = load i64, i64* %pt1540, align 8
  %add1541 = add nsw i64 %876, 0
  %sub1542 = sub nsw i64 %874, %add1541
  %call1543 = call zeroext i1 @RANGED_INTEGERP(i64 0, i64 %872, i64 %sub1542)
  br i1 %call1543, label %if.end.1546, label %if.then.1544

if.then.1544:                                     ; preds = %if.then.1538
  %call1545 = call i64 @intern(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0))
  %877 = load i64, i64* %insval, align 8
  %878 = call i64 @wrong_type_argument(i64 %call1545, i64 %877) #8
  unreachable

if.end.1546:                                      ; preds = %if.then.1538
  %879 = load i64, i64* %insval, align 8
  %shr1547 = ashr i64 %879, 2
  store i64 %shr1547, i64* %inserted, align 8
  br label %if.end.1548

if.end.1548:                                      ; preds = %if.end.1546, %if.then.1530
  br label %if.end.1549

if.end.1549:                                      ; preds = %if.end.1548, %if.end.1524
  %880 = load i64, i64* %inserted, align 8
  %cmp1550 = icmp sgt i64 %880, 0
  br i1 %cmp1550, label %if.then.1552, label %if.end.1767

if.then.1552:                                     ; preds = %if.end.1549
  %call1554 = call i64 @SPECPDL_INDEX()
  store i64 %call1554, i64* %count11553, align 8
  %881 = load i64, i64* %inserted, align 8
  store i64 %881, i64* %old_inserted, align 8
  %call1555 = call i64 @builtin_lisp_symbol(i32 545)
  %call1556 = call i64 @builtin_lisp_symbol(i32 901)
  call void @specbind(i64 %call1555, i64 %call1556)
  %call1557 = call i64 @builtin_lisp_symbol(i32 544)
  %call1558 = call i64 @builtin_lisp_symbol(i32 901)
  call void @specbind(i64 %call1557, i64 %call1558)
  %882 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %undo_list_1559 = getelementptr inbounds %struct.buffer, %struct.buffer* %882, i32 0, i32 98
  %883 = load i64, i64* %undo_list_1559, align 8
  store i64 %883, i64* %old_undo, align 8
  %884 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %call1560 = call i64 @builtin_lisp_symbol(i32 901)
  call void @bset_undo_list(%struct.buffer* %884, i64 %call1560)
  %885 = load i64, i64* %replace.addr, align 8
  %call1561 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1562 = icmp eq i64 %885, %call1561
  br i1 %cmp1562, label %if.then.1564, label %if.else.1579

if.then.1564:                                     ; preds = %if.then.1552
  %call1565 = call i64 @builtin_lisp_symbol(i32 454)
  %call1566 = call i64 @builtin_lisp_symbol(i32 0)
  %886 = load i64, i64* %inserted, align 8
  %shl1567 = shl i64 %886, 2
  %add1568 = add i64 %shl1567, 2
  %887 = load i64, i64* %visit.addr, align 8
  %call1569 = call i64 @call3(i64 %call1565, i64 %call1566, i64 %add1568, i64 %887)
  store i64 %call1569, i64* %insval, align 8
  %888 = load i64, i64* %insval, align 8
  %889 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv1570 = getelementptr inbounds %struct.buffer, %struct.buffer* %889, i32 0, i32 79
  %890 = load i64, i64* %zv1570, align 8
  %891 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt1571 = getelementptr inbounds %struct.buffer, %struct.buffer* %891, i32 0, i32 75
  %892 = load i64, i64* %pt1571, align 8
  %add1572 = add nsw i64 %892, 0
  %sub1573 = sub nsw i64 %890, %add1572
  %call1574 = call zeroext i1 @RANGED_INTEGERP(i64 0, i64 %888, i64 %sub1573)
  br i1 %call1574, label %if.end.1577, label %if.then.1575

if.then.1575:                                     ; preds = %if.then.1564
  %call1576 = call i64 @intern(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0))
  %893 = load i64, i64* %insval, align 8
  %894 = call i64 @wrong_type_argument(i64 %call1576, i64 %893) #8
  unreachable

if.end.1577:                                      ; preds = %if.then.1564
  %895 = load i64, i64* %insval, align 8
  %shr1578 = ashr i64 %895, 2
  store i64 %shr1578, i64* %inserted, align 8
  br label %if.end.1611

if.else.1579:                                     ; preds = %if.then.1552
  %896 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt1580 = getelementptr inbounds %struct.buffer, %struct.buffer* %896, i32 0, i32 75
  %897 = load i64, i64* %pt1580, align 8
  %add1581 = add nsw i64 %897, 0
  store i64 %add1581, i64* %opoint, align 8
  %898 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte1582 = getelementptr inbounds %struct.buffer, %struct.buffer* %898, i32 0, i32 76
  %899 = load i64, i64* %pt_byte1582, align 8
  %add1583 = add nsw i64 %899, 0
  store i64 %add1583, i64* %opoint_byte, align 8
  %900 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv1584 = getelementptr inbounds %struct.buffer, %struct.buffer* %900, i32 0, i32 79
  %901 = load i64, i64* %zv1584, align 8
  %902 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv1585 = getelementptr inbounds %struct.buffer, %struct.buffer* %902, i32 0, i32 77
  %903 = load i64, i64* %begv1585, align 8
  %sub1586 = sub nsw i64 %901, %903
  store i64 %sub1586, i64* %oinserted, align 8
  %904 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text1587 = getelementptr inbounds %struct.buffer, %struct.buffer* %904, i32 0, i32 73
  %905 = load %struct.buffer_text*, %struct.buffer_text** %text1587, align 8
  %chars_modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %905, i32 0, i32 7
  %906 = load i64, i64* %chars_modiff, align 8
  store i64 %906, i64* %ochars_modiff, align 8
  %907 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %908 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv1588 = getelementptr inbounds %struct.buffer, %struct.buffer* %908, i32 0, i32 77
  %909 = load i64, i64* %begv1588, align 8
  %910 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte1589 = getelementptr inbounds %struct.buffer, %struct.buffer* %910, i32 0, i32 78
  %911 = load i64, i64* %begv_byte1589, align 8
  call void @temp_set_point_both(%struct.buffer* %907, i64 %909, i64 %911)
  %call1590 = call i64 @builtin_lisp_symbol(i32 454)
  %call1591 = call i64 @builtin_lisp_symbol(i32 0)
  %912 = load i64, i64* %oinserted, align 8
  %shl1592 = shl i64 %912, 2
  %add1593 = add i64 %shl1592, 2
  %913 = load i64, i64* %visit.addr, align 8
  %call1594 = call i64 @call3(i64 %call1590, i64 %call1591, i64 %add1593, i64 %913)
  store i64 %call1594, i64* %insval, align 8
  %914 = load i64, i64* %insval, align 8
  %915 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv1595 = getelementptr inbounds %struct.buffer, %struct.buffer* %915, i32 0, i32 79
  %916 = load i64, i64* %zv1595, align 8
  %917 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt1596 = getelementptr inbounds %struct.buffer, %struct.buffer* %917, i32 0, i32 75
  %918 = load i64, i64* %pt1596, align 8
  %add1597 = add nsw i64 %918, 0
  %sub1598 = sub nsw i64 %916, %add1597
  %call1599 = call zeroext i1 @RANGED_INTEGERP(i64 0, i64 %914, i64 %sub1598)
  br i1 %call1599, label %if.end.1602, label %if.then.1600

if.then.1600:                                     ; preds = %if.else.1579
  %call1601 = call i64 @intern(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0))
  %919 = load i64, i64* %insval, align 8
  %920 = call i64 @wrong_type_argument(i64 %call1601, i64 %919) #8
  unreachable

if.end.1602:                                      ; preds = %if.else.1579
  %921 = load i64, i64* %ochars_modiff, align 8
  %922 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text1603 = getelementptr inbounds %struct.buffer, %struct.buffer* %922, i32 0, i32 73
  %923 = load %struct.buffer_text*, %struct.buffer_text** %text1603, align 8
  %chars_modiff1604 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %923, i32 0, i32 7
  %924 = load i64, i64* %chars_modiff1604, align 8
  %cmp1605 = icmp eq i64 %921, %924
  br i1 %cmp1605, label %if.then.1607, label %if.else.1608

if.then.1607:                                     ; preds = %if.end.1602
  %925 = load i64, i64* %opoint, align 8
  %926 = load i64, i64* %opoint_byte, align 8
  call void @set_point_both(i64 %925, i64 %926)
  br label %if.end.1610

if.else.1608:                                     ; preds = %if.end.1602
  %927 = load i64, i64* %insval, align 8
  %shr1609 = ashr i64 %927, 2
  store i64 %shr1609, i64* %inserted, align 8
  br label %if.end.1610

if.end.1610:                                      ; preds = %if.else.1608, %if.then.1607
  br label %if.end.1611

if.end.1611:                                      ; preds = %if.end.1610, %if.end.1577
  %928 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 2), align 8
  store i64 %928, i64* %p, align 8
  br label %while.cond.1612

while.cond.1612:                                  ; preds = %do.end.1698, %if.end.1611
  %929 = load i64, i64* %p, align 8
  %and1613 = and i64 %929, 7
  %conv1614 = trunc i64 %and1613 to i32
  %cmp1615 = icmp eq i32 %conv1614, 3
  br i1 %cmp1615, label %while.body.1617, label %while.end.1702

while.body.1617:                                  ; preds = %while.cond.1612
  %930 = load i64, i64* %replace.addr, align 8
  %call1618 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1619 = icmp eq i64 %930, %call1618
  br i1 %cmp1619, label %if.then.1621, label %if.else.1641

if.then.1621:                                     ; preds = %while.body.1617
  %931 = load i64, i64* %p, align 8
  %sub1622 = sub nsw i64 %931, 3
  %932 = inttoptr i64 %sub1622 to i8*
  %933 = bitcast i8* %932 to %struct.Lisp_Cons*
  %car1623 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %933, i32 0, i32 0
  %934 = load i64, i64* %car1623, align 8
  %935 = load i64, i64* %inserted, align 8
  %shl1624 = shl i64 %935, 2
  %add1625 = add i64 %shl1624, 2
  %call1626 = call i64 @call1(i64 %934, i64 %add1625)
  store i64 %call1626, i64* %insval, align 8
  %936 = load i64, i64* %insval, align 8
  %call1627 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1628 = icmp eq i64 %936, %call1627
  br i1 %cmp1628, label %if.end.1640, label %if.then.1630

if.then.1630:                                     ; preds = %if.then.1621
  %937 = load i64, i64* %insval, align 8
  %938 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv1631 = getelementptr inbounds %struct.buffer, %struct.buffer* %938, i32 0, i32 79
  %939 = load i64, i64* %zv1631, align 8
  %940 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt1632 = getelementptr inbounds %struct.buffer, %struct.buffer* %940, i32 0, i32 75
  %941 = load i64, i64* %pt1632, align 8
  %add1633 = add nsw i64 %941, 0
  %sub1634 = sub nsw i64 %939, %add1633
  %call1635 = call zeroext i1 @RANGED_INTEGERP(i64 0, i64 %937, i64 %sub1634)
  br i1 %call1635, label %if.end.1638, label %if.then.1636

if.then.1636:                                     ; preds = %if.then.1630
  %call1637 = call i64 @intern(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0))
  %942 = load i64, i64* %insval, align 8
  %943 = call i64 @wrong_type_argument(i64 %call1637, i64 %942) #8
  unreachable

if.end.1638:                                      ; preds = %if.then.1630
  %944 = load i64, i64* %insval, align 8
  %shr1639 = ashr i64 %944, 2
  store i64 %shr1639, i64* %inserted, align 8
  br label %if.end.1640

if.end.1640:                                      ; preds = %if.end.1638, %if.then.1621
  br label %if.end.1683

if.else.1641:                                     ; preds = %while.body.1617
  %945 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt1643 = getelementptr inbounds %struct.buffer, %struct.buffer* %945, i32 0, i32 75
  %946 = load i64, i64* %pt1643, align 8
  %add1644 = add nsw i64 %946, 0
  store i64 %add1644, i64* %opoint1642, align 8
  %947 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte1646 = getelementptr inbounds %struct.buffer, %struct.buffer* %947, i32 0, i32 76
  %948 = load i64, i64* %pt_byte1646, align 8
  %add1647 = add nsw i64 %948, 0
  store i64 %add1647, i64* %opoint_byte1645, align 8
  %949 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv1649 = getelementptr inbounds %struct.buffer, %struct.buffer* %949, i32 0, i32 79
  %950 = load i64, i64* %zv1649, align 8
  %951 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv1650 = getelementptr inbounds %struct.buffer, %struct.buffer* %951, i32 0, i32 77
  %952 = load i64, i64* %begv1650, align 8
  %sub1651 = sub nsw i64 %950, %952
  store i64 %sub1651, i64* %oinserted1648, align 8
  %953 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text1653 = getelementptr inbounds %struct.buffer, %struct.buffer* %953, i32 0, i32 73
  %954 = load %struct.buffer_text*, %struct.buffer_text** %text1653, align 8
  %chars_modiff1654 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %954, i32 0, i32 7
  %955 = load i64, i64* %chars_modiff1654, align 8
  store i64 %955, i64* %ochars_modiff1652, align 8
  %956 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %957 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv1655 = getelementptr inbounds %struct.buffer, %struct.buffer* %957, i32 0, i32 77
  %958 = load i64, i64* %begv1655, align 8
  %959 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte1656 = getelementptr inbounds %struct.buffer, %struct.buffer* %959, i32 0, i32 78
  %960 = load i64, i64* %begv_byte1656, align 8
  call void @temp_set_point_both(%struct.buffer* %956, i64 %958, i64 %960)
  %961 = load i64, i64* %p, align 8
  %sub1657 = sub nsw i64 %961, 3
  %962 = inttoptr i64 %sub1657 to i8*
  %963 = bitcast i8* %962 to %struct.Lisp_Cons*
  %car1658 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %963, i32 0, i32 0
  %964 = load i64, i64* %car1658, align 8
  %965 = load i64, i64* %oinserted1648, align 8
  %shl1659 = shl i64 %965, 2
  %add1660 = add i64 %shl1659, 2
  %call1661 = call i64 @call1(i64 %964, i64 %add1660)
  store i64 %call1661, i64* %insval, align 8
  %966 = load i64, i64* %insval, align 8
  %call1662 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1663 = icmp eq i64 %966, %call1662
  br i1 %cmp1663, label %if.end.1682, label %if.then.1665

if.then.1665:                                     ; preds = %if.else.1641
  %967 = load i64, i64* %insval, align 8
  %968 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv1666 = getelementptr inbounds %struct.buffer, %struct.buffer* %968, i32 0, i32 79
  %969 = load i64, i64* %zv1666, align 8
  %970 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt1667 = getelementptr inbounds %struct.buffer, %struct.buffer* %970, i32 0, i32 75
  %971 = load i64, i64* %pt1667, align 8
  %add1668 = add nsw i64 %971, 0
  %sub1669 = sub nsw i64 %969, %add1668
  %call1670 = call zeroext i1 @RANGED_INTEGERP(i64 0, i64 %967, i64 %sub1669)
  br i1 %call1670, label %if.end.1673, label %if.then.1671

if.then.1671:                                     ; preds = %if.then.1665
  %call1672 = call i64 @intern(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0))
  %972 = load i64, i64* %insval, align 8
  %973 = call i64 @wrong_type_argument(i64 %call1672, i64 %972) #8
  unreachable

if.end.1673:                                      ; preds = %if.then.1665
  %974 = load i64, i64* %ochars_modiff1652, align 8
  %975 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text1674 = getelementptr inbounds %struct.buffer, %struct.buffer* %975, i32 0, i32 73
  %976 = load %struct.buffer_text*, %struct.buffer_text** %text1674, align 8
  %chars_modiff1675 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %976, i32 0, i32 7
  %977 = load i64, i64* %chars_modiff1675, align 8
  %cmp1676 = icmp eq i64 %974, %977
  br i1 %cmp1676, label %if.then.1678, label %if.else.1679

if.then.1678:                                     ; preds = %if.end.1673
  %978 = load i64, i64* %opoint1642, align 8
  %979 = load i64, i64* %opoint_byte1645, align 8
  call void @set_point_both(i64 %978, i64 %979)
  br label %if.end.1681

if.else.1679:                                     ; preds = %if.end.1673
  %980 = load i64, i64* %insval, align 8
  %shr1680 = ashr i64 %980, 2
  store i64 %shr1680, i64* %inserted, align 8
  br label %if.end.1681

if.end.1681:                                      ; preds = %if.else.1679, %if.then.1678
  br label %if.end.1682

if.end.1682:                                      ; preds = %if.end.1681, %if.else.1641
  br label %if.end.1683

if.end.1683:                                      ; preds = %if.end.1682, %if.end.1640
  br label %do.body.1684

do.body.1684:                                     ; preds = %if.end.1683
  %981 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call1685 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1686 = icmp eq i64 %981, %call1685
  br i1 %cmp1686, label %if.else.1693, label %land.lhs.true.1688

land.lhs.true.1688:                               ; preds = %do.body.1684
  %982 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call1689 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1690 = icmp eq i64 %982, %call1689
  br i1 %cmp1690, label %if.then.1692, label %if.else.1693

if.then.1692:                                     ; preds = %land.lhs.true.1688
  call void @process_quit_flag()
  br label %if.end.1697

if.else.1693:                                     ; preds = %land.lhs.true.1688, %do.body.1684
  %983 = load volatile i8, i8* @pending_signals, align 1
  %tobool1694 = trunc i8 %983 to i1
  br i1 %tobool1694, label %if.then.1695, label %if.end.1696

if.then.1695:                                     ; preds = %if.else.1693
  call void @process_pending_signals()
  br label %if.end.1696

if.end.1696:                                      ; preds = %if.then.1695, %if.else.1693
  br label %if.end.1697

if.end.1697:                                      ; preds = %if.end.1696, %if.then.1692
  br label %do.end.1698

do.end.1698:                                      ; preds = %if.end.1697
  %984 = load i64, i64* %p, align 8
  %sub1699 = sub nsw i64 %984, 3
  %985 = inttoptr i64 %sub1699 to i8*
  %986 = bitcast i8* %985 to %struct.Lisp_Cons*
  %u1700 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %986, i32 0, i32 1
  %cdr1701 = bitcast %union.anon* %u1700 to i64*
  %987 = load i64, i64* %cdr1701, align 8
  store i64 %987, i64* %p, align 8
  br label %while.cond.1612

while.end.1702:                                   ; preds = %while.cond.1612
  %988 = load i8, i8* %empty_undo_list_p, align 1
  %tobool1703 = trunc i8 %988 to i1
  br i1 %tobool1703, label %if.else.1754, label %if.then.1704

if.then.1704:                                     ; preds = %while.end.1702
  %989 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %990 = load i64, i64* %old_undo, align 8
  call void @bset_undo_list(%struct.buffer* %989, i64 %990)
  %991 = load i64, i64* %old_undo, align 8
  %and1705 = and i64 %991, 7
  %conv1706 = trunc i64 %and1705 to i32
  %cmp1707 = icmp eq i32 %conv1706, 3
  br i1 %cmp1707, label %land.lhs.true.1709, label %if.end.1753

land.lhs.true.1709:                               ; preds = %if.then.1704
  %992 = load i64, i64* %inserted, align 8
  %993 = load i64, i64* %old_inserted, align 8
  %cmp1710 = icmp ne i64 %992, %993
  br i1 %cmp1710, label %if.then.1712, label %if.end.1753

if.then.1712:                                     ; preds = %land.lhs.true.1709
  %994 = load i64, i64* %old_undo, align 8
  %sub1713 = sub nsw i64 %994, 3
  %995 = inttoptr i64 %sub1713 to i8*
  %996 = bitcast i8* %995 to %struct.Lisp_Cons*
  %car1714 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %996, i32 0, i32 0
  %997 = load i64, i64* %car1714, align 8
  store i64 %997, i64* %tem, align 8
  %998 = load i64, i64* %tem, align 8
  %and1715 = and i64 %998, 7
  %conv1716 = trunc i64 %and1715 to i32
  %cmp1717 = icmp eq i32 %conv1716, 3
  br i1 %cmp1717, label %land.lhs.true.1719, label %if.end.1752

land.lhs.true.1719:                               ; preds = %if.then.1712
  %999 = load i64, i64* %tem, align 8
  %sub1720 = sub nsw i64 %999, 3
  %1000 = inttoptr i64 %sub1720 to i8*
  %1001 = bitcast i8* %1000 to %struct.Lisp_Cons*
  %car1721 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %1001, i32 0, i32 0
  %1002 = load i64, i64* %car1721, align 8
  %and1722 = and i64 %1002, 7
  %conv1723 = trunc i64 %and1722 to i32
  %and1724 = and i32 %conv1723, -5
  %cmp1725 = icmp eq i32 %and1724, 2
  br i1 %cmp1725, label %land.lhs.true.1727, label %if.end.1752

land.lhs.true.1727:                               ; preds = %land.lhs.true.1719
  %1003 = load i64, i64* %tem, align 8
  %sub1728 = sub nsw i64 %1003, 3
  %1004 = inttoptr i64 %sub1728 to i8*
  %1005 = bitcast i8* %1004 to %struct.Lisp_Cons*
  %u1729 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %1005, i32 0, i32 1
  %cdr1730 = bitcast %union.anon* %u1729 to i64*
  %1006 = load i64, i64* %cdr1730, align 8
  %and1731 = and i64 %1006, 7
  %conv1732 = trunc i64 %and1731 to i32
  %and1733 = and i32 %conv1732, -5
  %cmp1734 = icmp eq i32 %and1733, 2
  br i1 %cmp1734, label %land.lhs.true.1736, label %if.end.1752

land.lhs.true.1736:                               ; preds = %land.lhs.true.1727
  %1007 = load i64, i64* %tem, align 8
  %sub1737 = sub nsw i64 %1007, 3
  %1008 = inttoptr i64 %sub1737 to i8*
  %1009 = bitcast i8* %1008 to %struct.Lisp_Cons*
  %u1738 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %1009, i32 0, i32 1
  %cdr1739 = bitcast %union.anon* %u1738 to i64*
  %1010 = load i64, i64* %cdr1739, align 8
  %shr1740 = ashr i64 %1010, 2
  %1011 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt1741 = getelementptr inbounds %struct.buffer, %struct.buffer* %1011, i32 0, i32 75
  %1012 = load i64, i64* %pt1741, align 8
  %add1742 = add nsw i64 %1012, 0
  %1013 = load i64, i64* %old_inserted, align 8
  %add1743 = add nsw i64 %add1742, %1013
  %cmp1744 = icmp eq i64 %shr1740, %add1743
  br i1 %cmp1744, label %if.then.1746, label %if.end.1752

if.then.1746:                                     ; preds = %land.lhs.true.1736
  %1014 = load i64, i64* %tem, align 8
  %1015 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt1747 = getelementptr inbounds %struct.buffer, %struct.buffer* %1015, i32 0, i32 75
  %1016 = load i64, i64* %pt1747, align 8
  %add1748 = add nsw i64 %1016, 0
  %1017 = load i64, i64* %inserted, align 8
  %add1749 = add nsw i64 %add1748, %1017
  %shl1750 = shl i64 %add1749, 2
  %add1751 = add i64 %shl1750, 2
  call void @XSETCDR(i64 %1014, i64 %add1751)
  br label %if.end.1752

if.end.1752:                                      ; preds = %if.then.1746, %land.lhs.true.1736, %land.lhs.true.1727, %land.lhs.true.1719, %if.then.1712
  br label %if.end.1753

if.end.1753:                                      ; preds = %if.end.1752, %land.lhs.true.1709, %if.then.1704
  br label %if.end.1764

if.else.1754:                                     ; preds = %while.end.1702
  %1018 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %1019 = load i64, i64* %old_undo, align 8
  %call1755 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp1756 = icmp eq i64 %1019, %call1755
  br i1 %cmp1756, label %cond.true.1758, label %cond.false.1760

cond.true.1758:                                   ; preds = %if.else.1754
  %call1759 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end.1762

cond.false.1760:                                  ; preds = %if.else.1754
  %call1761 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.1762

cond.end.1762:                                    ; preds = %cond.false.1760, %cond.true.1758
  %cond1763 = phi i64 [ %call1759, %cond.true.1758 ], [ %call1761, %cond.false.1760 ]
  call void @bset_undo_list(%struct.buffer* %1018, i64 %cond1763)
  br label %if.end.1764

if.end.1764:                                      ; preds = %cond.end.1762, %if.end.1753
  %1020 = load i64, i64* %count11553, align 8
  %call1765 = call i64 @builtin_lisp_symbol(i32 0)
  %call1766 = call i64 @unbind_to(i64 %1020, i64 %call1765)
  br label %if.end.1767

if.end.1767:                                      ; preds = %if.end.1764, %if.end.1549
  %1021 = load i64, i64* %visit.addr, align 8
  %call1768 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1769 = icmp eq i64 %1021, %call1768
  br i1 %cmp1769, label %if.end.1776, label %land.lhs.true.1771

land.lhs.true.1771:                               ; preds = %if.end.1767
  %1022 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %modtime1772 = getelementptr inbounds %struct.buffer, %struct.buffer* %1022, i32 0, i32 85
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %modtime1772, i32 0, i32 1
  %1023 = load i64, i64* %tv_nsec, align 8
  %cmp1773 = icmp eq i64 %1023, -1
  br i1 %cmp1773, label %if.then.1775, label %if.end.1776

if.then.1775:                                     ; preds = %land.lhs.true.1771
  %1024 = load i64, i64* %orig_filename, align 8
  %1025 = load i32, i32* %save_errno, align 4
  call void @report_file_errno(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), i64 %1024, i32 %1025) #8
  unreachable

if.end.1776:                                      ; preds = %land.lhs.true.1771, %if.end.1767
  %1026 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %base_buffer1777 = getelementptr inbounds %struct.buffer, %struct.buffer* %1026, i32 0, i32 81
  %1027 = load %struct.buffer*, %struct.buffer** %base_buffer1777, align 8
  %tobool1778 = icmp ne %struct.buffer* %1027, null
  br i1 %tobool1778, label %land.lhs.true.1779, label %if.else.1795

land.lhs.true.1779:                               ; preds = %if.end.1776
  %1028 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %base_buffer1780 = getelementptr inbounds %struct.buffer, %struct.buffer* %1028, i32 0, i32 81
  %1029 = load %struct.buffer*, %struct.buffer** %base_buffer1780, align 8
  %newline_cache = getelementptr inbounds %struct.buffer, %struct.buffer* %1029, i32 0, i32 91
  %1030 = load %struct.region_cache*, %struct.region_cache** %newline_cache, align 8
  %tobool1781 = icmp ne %struct.region_cache* %1030, null
  br i1 %tobool1781, label %if.then.1782, label %if.else.1795

if.then.1782:                                     ; preds = %land.lhs.true.1779
  %1031 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %base_buffer1783 = getelementptr inbounds %struct.buffer, %struct.buffer* %1031, i32 0, i32 81
  %1032 = load %struct.buffer*, %struct.buffer** %base_buffer1783, align 8
  %1033 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %base_buffer1784 = getelementptr inbounds %struct.buffer, %struct.buffer* %1033, i32 0, i32 81
  %1034 = load %struct.buffer*, %struct.buffer** %base_buffer1784, align 8
  %newline_cache1785 = getelementptr inbounds %struct.buffer, %struct.buffer* %1034, i32 0, i32 91
  %1035 = load %struct.region_cache*, %struct.region_cache** %newline_cache1785, align 8
  %1036 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt1786 = getelementptr inbounds %struct.buffer, %struct.buffer* %1036, i32 0, i32 75
  %1037 = load i64, i64* %pt1786, align 8
  %add1787 = add nsw i64 %1037, 0
  %sub1788 = sub nsw i64 %add1787, 1
  %1038 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text1789 = getelementptr inbounds %struct.buffer, %struct.buffer* %1038, i32 0, i32 73
  %1039 = load %struct.buffer_text*, %struct.buffer_text** %text1789, align 8
  %z1790 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %1039, i32 0, i32 2
  %1040 = load i64, i64* %z1790, align 8
  %1041 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt1791 = getelementptr inbounds %struct.buffer, %struct.buffer* %1041, i32 0, i32 75
  %1042 = load i64, i64* %pt1791, align 8
  %add1792 = add nsw i64 %1042, 0
  %sub1793 = sub nsw i64 %1040, %add1792
  %1043 = load i64, i64* %inserted, align 8
  %sub1794 = sub nsw i64 %sub1793, %1043
  call void @invalidate_region_cache(%struct.buffer* %1032, %struct.region_cache* %1035, i64 %sub1788, i64 %sub1794)
  br label %if.end.1810

if.else.1795:                                     ; preds = %land.lhs.true.1779, %if.end.1776
  %1044 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %newline_cache1796 = getelementptr inbounds %struct.buffer, %struct.buffer* %1044, i32 0, i32 91
  %1045 = load %struct.region_cache*, %struct.region_cache** %newline_cache1796, align 8
  %tobool1797 = icmp ne %struct.region_cache* %1045, null
  br i1 %tobool1797, label %if.then.1798, label %if.end.1809

if.then.1798:                                     ; preds = %if.else.1795
  %1046 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %1047 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %newline_cache1799 = getelementptr inbounds %struct.buffer, %struct.buffer* %1047, i32 0, i32 91
  %1048 = load %struct.region_cache*, %struct.region_cache** %newline_cache1799, align 8
  %1049 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt1800 = getelementptr inbounds %struct.buffer, %struct.buffer* %1049, i32 0, i32 75
  %1050 = load i64, i64* %pt1800, align 8
  %add1801 = add nsw i64 %1050, 0
  %sub1802 = sub nsw i64 %add1801, 1
  %1051 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text1803 = getelementptr inbounds %struct.buffer, %struct.buffer* %1051, i32 0, i32 73
  %1052 = load %struct.buffer_text*, %struct.buffer_text** %text1803, align 8
  %z1804 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %1052, i32 0, i32 2
  %1053 = load i64, i64* %z1804, align 8
  %1054 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt1805 = getelementptr inbounds %struct.buffer, %struct.buffer* %1054, i32 0, i32 75
  %1055 = load i64, i64* %pt1805, align 8
  %add1806 = add nsw i64 %1055, 0
  %sub1807 = sub nsw i64 %1053, %add1806
  %1056 = load i64, i64* %inserted, align 8
  %sub1808 = sub nsw i64 %sub1807, %1056
  call void @invalidate_region_cache(%struct.buffer* %1046, %struct.region_cache* %1048, i64 %sub1802, i64 %sub1808)
  br label %if.end.1809

if.end.1809:                                      ; preds = %if.then.1798, %if.else.1795
  br label %if.end.1810

if.end.1810:                                      ; preds = %if.end.1809, %if.then.1782
  %1057 = load i8, i8* %read_quit, align 1
  %tobool1811 = trunc i8 %1057 to i1
  br i1 %tobool1811, label %if.then.1812, label %if.end.1816

if.then.1812:                                     ; preds = %if.end.1810
  %call1813 = call i64 @builtin_lisp_symbol(i32 782)
  %call1814 = call i64 @builtin_lisp_symbol(i32 0)
  %call1815 = call i64 @Fsignal(i64 %call1813, i64 %call1814)
  br label %if.end.1816

if.end.1816:                                      ; preds = %if.then.1812, %if.end.1810
  %1058 = load i64, i64* %val, align 8
  %call1817 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1818 = icmp eq i64 %1058, %call1817
  br i1 %cmp1818, label %if.then.1820, label %if.end.1824

if.then.1820:                                     ; preds = %if.end.1816
  %1059 = load i64, i64* %orig_filename, align 8
  %1060 = load i64, i64* %inserted, align 8
  %shl1821 = shl i64 %1060, 2
  %add1822 = add i64 %shl1821, 2
  %call1823 = call i64 @list2(i64 %1059, i64 %add1822)
  store i64 %call1823, i64* %val, align 8
  br label %if.end.1824

if.end.1824:                                      ; preds = %if.then.1820, %if.end.1816
  %1061 = load i64, i64* %count, align 8
  %1062 = load i64, i64* %val, align 8
  %call1825 = call i64 @unbind_to(i64 %1061, i64 %1062)
  ret i64 %call1825
}

declare i64 @Fbarf_if_buffer_read_only(i64) #1

declare i64 @call0(i64) #1

declare i64 @call6(i64, i64, i64, i64, i64, i64, i64) #1

declare zeroext i1 @RANGED_INTEGERP(i64, i64, i64) #1

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @time_error_value(i32 %errnum) #5 {
entry:
  %retval = alloca %struct.timespec, align 8
  %errnum.addr = alloca i32, align 4
  %ns = alloca i32, align 4
  store i32 %errnum, i32* %errnum.addr, align 4
  %0 = load i32, i32* %errnum.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %errnum.addr, align 4
  %cmp1 = icmp eq i32 %1, 13
  br i1 %cmp1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %2 = load i32, i32* %errnum.addr, align 4
  %cmp2 = icmp eq i32 %2, 20
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %3 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp2, %lor.rhs ]
  %cond = select i1 %3, i32 -1, i32 -2
  store i32 %cond, i32* %ns, align 4
  %4 = load i32, i32* %ns, align 4
  %conv = sext i32 %4 to i64
  %call = call { i64, i64 } @make_timespec(i64 0, i64 %conv)
  %5 = bitcast %struct.timespec* %retval to { i64, i64 }*
  %6 = getelementptr { i64, i64 }, { i64, i64 }* %5, i32 0, i32 0
  %7 = extractvalue { i64, i64 } %call, 0
  store i64 %7, i64* %6, align 8
  %8 = getelementptr { i64, i64 }, { i64, i64 }* %5, i32 0, i32 1
  %9 = extractvalue { i64, i64 } %call, 1
  store i64 %9, i64* %8, align 8
  %10 = bitcast %struct.timespec* %retval to { i64, i64 }*
  %11 = load { i64, i64 }, { i64, i64 }* %10, align 8
  ret { i64, i64 } %11
}

declare i64 @hash_lookup(%struct.Lisp_Hash_Table*, i64, i64*) #1

declare %struct.Lisp_Hash_Table* @XHASH_TABLE(i64) #1

declare i64 @Fcheck_coding_system(i64) #1

declare i64 @Fset(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @get_window_points_and_markers() #5 {
entry:
  %pt_marker = alloca i64, align 8
  %windows = alloca i64, align 8
  %window_markers = alloca i64, align 8
  %window_marker = alloca i64, align 8
  %call = call i64 @Fpoint_marker()
  store i64 %call, i64* %pt_marker, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 483)
  %call2 = call i64 @Fcurrent_buffer()
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %call4 = call i64 @builtin_lisp_symbol(i32 901)
  %call5 = call i64 @call3(i64 %call1, i64 %call2, i64 %call3, i64 %call4)
  store i64 %call5, i64* %windows, align 8
  %0 = load i64, i64* %windows, align 8
  store i64 %0, i64* %window_markers, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %windows, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %windows, align 8
  %sub = sub nsw i64 %2, 3
  %3 = inttoptr i64 %sub to i8*
  %4 = bitcast i8* %3 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %4, i32 0, i32 0
  %5 = load i64, i64* %car, align 8
  %call7 = call zeroext i1 @WINDOWP(i64 %5)
  br i1 %call7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i64, i64* %windows, align 8
  %sub8 = sub nsw i64 %6, 3
  %7 = inttoptr i64 %sub8 to i8*
  %8 = bitcast i8* %7 to %struct.Lisp_Cons*
  %car9 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %8, i32 0, i32 0
  %9 = load i64, i64* %car9, align 8
  %call10 = call %struct.window* @XWINDOW(i64 %9)
  %pointm = getelementptr inbounds %struct.window, %struct.window* %call10, i32 0, i32 12
  %10 = load i64, i64* %pointm, align 8
  store i64 %10, i64* %window_marker, align 8
  %11 = load i64, i64* %windows, align 8
  %12 = load i64, i64* %window_marker, align 8
  %13 = load i64, i64* %window_marker, align 8
  %call11 = call i64 @Fmarker_position(i64 %13)
  %call12 = call i64 @Fcons(i64 %12, i64 %call11)
  call void @XSETCAR(i64 %11, i64 %call12)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i64, i64* %windows, align 8
  %sub13 = sub nsw i64 %14, 3
  %15 = inttoptr i64 %sub13 to i8*
  %16 = bitcast i8* %15 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %16, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %17 = load i64, i64* %cdr, align 8
  store i64 %17, i64* %windows, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i64, i64* %pt_marker, align 8
  %call14 = call i64 @Fpoint()
  %call15 = call i64 @Fcons(i64 %18, i64 %call14)
  %19 = load i64, i64* %window_markers, align 8
  %call16 = call i64 @Fcons(i64 %call15, i64 %19)
  ret i64 %call16
}

declare void @record_unwind_protect(void (i64)*, i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @file_offset(i64 %val) #5 {
entry:
  %retval = alloca i64, align 8
  %val.addr = alloca i64, align 8
  %v = alloca double, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %call = call zeroext i1 @RANGED_INTEGERP(i64 0, i64 %0, i64 9223372036854775807)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %val.addr, align 8
  %shr = ashr i64 %1, 2
  store i64 %shr, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %val.addr, align 8
  %and = and i64 %2, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 7
  br i1 %cmp, label %if.then.2, label %if.end.13

if.then.2:                                        ; preds = %if.end
  %3 = load i64, i64* %val.addr, align 8
  %call3 = call double @XFLOAT_DATA(i64 %3)
  store double %call3, double* %v, align 8
  %4 = load double, double* %v, align 8
  %cmp4 = fcmp ole double 0.000000e+00, %4
  br i1 %cmp4, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %if.then.2
  br i1 false, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %5 = load double, double* %v, align 8
  %cmp6 = fcmp ole double %5, 0x43E0000000000000
  br i1 %cmp6, label %if.then.10, label %if.end.12

cond.false:                                       ; preds = %land.lhs.true
  %6 = load double, double* %v, align 8
  %cmp8 = fcmp olt double %6, 0x43E0000000000000
  br i1 %cmp8, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %cond.false, %cond.true
  %7 = load double, double* %v, align 8
  %conv11 = fptosi double %7 to i64
  store i64 %conv11, i64* %retval
  br label %return

if.end.12:                                        ; preds = %cond.false, %cond.true, %if.then.2
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.end
  %call14 = call i64 @intern(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.87, i32 0, i32 0))
  %8 = load i64, i64* %val.addr, align 8
  %9 = call i64 @wrong_type_argument(i64 %call14, i64 %8) #8
  unreachable

return:                                           ; preds = %if.then.10, %if.then
  %10 = load i64, i64* %retval
  ret i64 %10
}

; Function Attrs: noreturn
declare void @buffer_overflow() #3

declare i64 @coding_inherit_eol_type(i64, i64) #1

declare void @setup_coding_system(i64, %struct.coding_system*) #1

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #2

declare void @record_unwind_current_buffer() #1

declare i64 @Fget_buffer_create(i64) #1

declare %struct.buffer* @XBUFFER(i64) #1

declare void @delete_all_overlays(%struct.buffer*) #1

declare void @bset_directory(%struct.buffer*, i64) #1

declare void @bset_read_only(%struct.buffer*, i64) #1

declare void @bset_filename(%struct.buffer*, i64) #1

declare void @bset_undo_list(%struct.buffer*, i64) #1

declare void @set_buffer_internal(%struct.buffer*) #1

declare i64 @Ferase_buffer() #1

declare void @bset_enable_multibyte_characters(%struct.buffer*, i64) #1

declare void @insert_1_both(i8*, i64, i64, i1 zeroext, i1 zeroext, i1 zeroext) #1

declare void @temp_set_point_both(%struct.buffer*, i64, i64) #1

declare i64 @Ffind_operation_coding_system(i64, i64*) #1

declare i64 @raw_text_coding_system(i64) #1

declare i64 @detect_coding_system(i8*, i64, i64, i1 zeroext, i1 zeroext, i64) #1

declare void @clear_unwind_protect(i64) #1

declare i64 @del_range_1(i64, i64, i1 zeroext, i1 zeroext) #1

declare i64 @buf_bytepos_to_charpos(%struct.buffer*, i64) #1

declare void @invalidate_buffer_caches(%struct.buffer*, i64, i64) #1

declare void @del_range_byte(i64, i64, i1 zeroext) #1

declare void @set_point_both(i64, i64) #1

declare %struct.window* @XWINDOW(i64) #1

declare i64 @Fbolp() #1

declare i64 @code_conversion_save(i1 zeroext, i1 zeroext) #1

declare void @temp_set_point(%struct.buffer*, i64) #1

declare void @decode_coding_object(%struct.coding_system*, i64, i64, i64, i64, i64, i64) #1

declare i64 @HASH_KEY(%struct.Lisp_Hash_Table*, i64) #1

declare i64 @intern(i8*) #1

declare void @insert_from_buffer(%struct.buffer*, i64, i64, i1 zeroext) #1

declare void @prepare_to_modify_buffer(i64, i64, i64*) #1

declare void @move_gap_both(i64, i64) #1

declare void @make_gap(i64) #1

declare i64 @internal_condition_case_1(i64 (i64)*, i64, i64, i64 (i64)*) #1

; Function Attrs: nounwind uwtable
define internal i64 @read_non_regular(i64 %state) #5 {
entry:
  %state.addr = alloca i64, align 8
  %nbytes = alloca i32, align 4
  store i64 %state, i64* %state.addr, align 8
  store i8 1, i8* @immediate_quit, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.body
  %1 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp2 = icmp eq i64 %1, %call1
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @process_quit_flag()
  br label %if.end.4

if.else:                                          ; preds = %land.lhs.true, %do.body
  %2 = load volatile i8, i8* @pending_signals, align 1
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.else
  call void @process_pending_signals()
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.else
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %3 = load i64, i64* %state.addr, align 8
  %call5 = call i64 @XSAVE_INTEGER(i64 %3, i32 0)
  %conv = trunc i64 %call5 to i32
  %4 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %4, i32 0, i32 73
  %5 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %beg = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %5, i32 0, i32 0
  %6 = load i8*, i8** %beg, align 8
  %7 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 76
  %8 = load i64, i64* %pt_byte, align 8
  %add = add nsw i64 %8, 0
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %add
  %add.ptr6 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %9 = load i64, i64* %state.addr, align 8
  %call7 = call i64 @XSAVE_INTEGER(i64 %9, i32 1)
  %add.ptr8 = getelementptr inbounds i8, i8* %add.ptr6, i64 %call7
  %10 = load i64, i64* %state.addr, align 8
  %call9 = call i64 @XSAVE_INTEGER(i64 %10, i32 2)
  %call10 = call i64 @emacs_read(i32 %conv, i8* %add.ptr8, i64 %call9)
  %conv11 = trunc i64 %call10 to i32
  store i32 %conv11, i32* %nbytes, align 4
  store i8 0, i8* @immediate_quit, align 1
  %11 = load i64, i64* %state.addr, align 8
  call void @free_misc(i64 %11)
  %12 = load i32, i32* %nbytes, align 4
  %conv12 = sext i32 %12 to i64
  %shl = shl i64 %conv12, 2
  %add13 = add i64 %shl, 2
  ret i64 %add13
}

declare i64 @make_save_int_int_int(i64, i64, i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @read_non_regular_quit(i64 %ignore) #5 {
entry:
  %ignore.addr = alloca i64, align 8
  store i64 %ignore, i64* %ignore.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call
}

declare void @unlock_file(i64) #1

declare i64 @Fcurrent_buffer() #1

; Function Attrs: nounwind uwtable
define internal void @decide_coding_unwind(i64 %unwind_data) #5 {
entry:
  %unwind_data.addr = alloca i64, align 8
  %multibyte = alloca i64, align 8
  %undo_list = alloca i64, align 8
  %buffer = alloca i64, align 8
  store i64 %unwind_data, i64* %unwind_data.addr, align 8
  %0 = load i64, i64* %unwind_data.addr, align 8
  %sub = sub nsw i64 %0, 3
  %1 = inttoptr i64 %sub to i8*
  %2 = bitcast i8* %1 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %2, i32 0, i32 0
  %3 = load i64, i64* %car, align 8
  store i64 %3, i64* %multibyte, align 8
  %4 = load i64, i64* %unwind_data.addr, align 8
  %sub1 = sub nsw i64 %4, 3
  %5 = inttoptr i64 %sub1 to i8*
  %6 = bitcast i8* %5 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %6, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %7 = load i64, i64* %cdr, align 8
  store i64 %7, i64* %unwind_data.addr, align 8
  %8 = load i64, i64* %unwind_data.addr, align 8
  %sub2 = sub nsw i64 %8, 3
  %9 = inttoptr i64 %sub2 to i8*
  %10 = bitcast i8* %9 to %struct.Lisp_Cons*
  %car3 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %10, i32 0, i32 0
  %11 = load i64, i64* %car3, align 8
  store i64 %11, i64* %undo_list, align 8
  %12 = load i64, i64* %unwind_data.addr, align 8
  %sub4 = sub nsw i64 %12, 3
  %13 = inttoptr i64 %sub4 to i8*
  %14 = bitcast i8* %13 to %struct.Lisp_Cons*
  %u5 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %14, i32 0, i32 1
  %cdr6 = bitcast %union.anon* %u5 to i64*
  %15 = load i64, i64* %cdr6, align 8
  store i64 %15, i64* %buffer, align 8
  %16 = load i64, i64* %buffer, align 8
  %call = call %struct.buffer* @XBUFFER(i64 %16)
  call void @set_buffer_internal(%struct.buffer* %call)
  %17 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %17, i32 0, i32 73
  %18 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %z = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %18, i32 0, i32 2
  %19 = load i64, i64* %z, align 8
  %20 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text7 = getelementptr inbounds %struct.buffer, %struct.buffer* %20, i32 0, i32 73
  %21 = load %struct.buffer_text*, %struct.buffer_text** %text7, align 8
  %z_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %21, i32 0, i32 4
  %22 = load i64, i64* %z_byte, align 8
  call void @adjust_markers_for_delete(i64 1, i64 1, i64 %19, i64 %22)
  %23 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text8 = getelementptr inbounds %struct.buffer, %struct.buffer* %23, i32 0, i32 73
  %24 = load %struct.buffer_text*, %struct.buffer_text** %text8, align 8
  %z9 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %24, i32 0, i32 2
  %25 = load i64, i64* %z9, align 8
  %sub10 = sub nsw i64 %25, 1
  call void @adjust_overlays_for_delete(i64 1, i64 %sub10)
  %26 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  call void @set_buffer_intervals(%struct.buffer* %26, %struct.interval* null)
  %27 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  call void @temp_set_point_both(%struct.buffer* %27, i64 1, i64 1)
  %28 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %29 = load i64, i64* %multibyte, align 8
  call void @bset_enable_multibyte_characters(%struct.buffer* %28, i64 %29)
  %30 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %31 = load i64, i64* %undo_list, align 8
  call void @bset_undo_list(%struct.buffer* %30, i64 %31)
  ret void
}

declare i64 @Fset_buffer_multibyte(i64) #1

declare void @decode_coding_gap(%struct.coding_system*, i64, i64) #1

declare void @adjust_after_insert(i64, i64, i64, i64, i64) #1

declare void @signal_after_change(i64, i64, i64) #1

declare void @update_compositions(i64, i64, i32) #1

; Function Attrs: nounwind uwtable
define internal void @restore_window_points(i64 %window_markers, i64 %inserted, i64 %same_at_start, i64 %same_at_end) #5 {
entry:
  %window_markers.addr = alloca i64, align 8
  %inserted.addr = alloca i64, align 8
  %same_at_start.addr = alloca i64, align 8
  %same_at_end.addr = alloca i64, align 8
  %car6 = alloca i64, align 8
  %marker = alloca i64, align 8
  %oldpos = alloca i64, align 8
  %oldsize = alloca i64, align 8
  %newsize = alloca i64, align 8
  %growth = alloca double, align 8
  %newpos = alloca i64, align 8
  store i64 %window_markers, i64* %window_markers.addr, align 8
  store i64 %inserted, i64* %inserted.addr, align 8
  store i64 %same_at_start, i64* %same_at_start.addr, align 8
  store i64 %same_at_end, i64* %same_at_end.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %window_markers.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* %window_markers.addr, align 8
  %sub = sub nsw i64 %1, 3
  %2 = inttoptr i64 %sub to i8*
  %3 = bitcast i8* %2 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %3, i32 0, i32 0
  %4 = load i64, i64* %car, align 8
  %and2 = and i64 %4, 7
  %conv3 = trunc i64 %and2 to i32
  %cmp4 = icmp eq i32 %conv3, 3
  br i1 %cmp4, label %if.then, label %if.end.43

if.then:                                          ; preds = %for.body
  %5 = load i64, i64* %window_markers.addr, align 8
  %sub7 = sub nsw i64 %5, 3
  %6 = inttoptr i64 %sub7 to i8*
  %7 = bitcast i8* %6 to %struct.Lisp_Cons*
  %car8 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %7, i32 0, i32 0
  %8 = load i64, i64* %car8, align 8
  store i64 %8, i64* %car6, align 8
  %9 = load i64, i64* %car6, align 8
  %sub9 = sub nsw i64 %9, 3
  %10 = inttoptr i64 %sub9 to i8*
  %11 = bitcast i8* %10 to %struct.Lisp_Cons*
  %car10 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %11, i32 0, i32 0
  %12 = load i64, i64* %car10, align 8
  store i64 %12, i64* %marker, align 8
  %13 = load i64, i64* %car6, align 8
  %sub11 = sub nsw i64 %13, 3
  %14 = inttoptr i64 %sub11 to i8*
  %15 = bitcast i8* %14 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %15, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %16 = load i64, i64* %cdr, align 8
  store i64 %16, i64* %oldpos, align 8
  %17 = load i64, i64* %marker, align 8
  %and12 = and i64 %17, 7
  %conv13 = trunc i64 %and12 to i32
  %cmp14 = icmp eq i32 %conv13, 1
  br i1 %cmp14, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %18 = load i64, i64* %marker, align 8
  %call = call i32 @XMISCTYPE(i64 %18)
  %cmp16 = icmp eq i32 %call, 24236
  br i1 %cmp16, label %land.lhs.true.18, label %if.end

land.lhs.true.18:                                 ; preds = %land.lhs.true
  %19 = load i64, i64* %oldpos, align 8
  %and19 = and i64 %19, 7
  %conv20 = trunc i64 %and19 to i32
  %and21 = and i32 %conv20, -5
  %cmp22 = icmp eq i32 %and21, 2
  br i1 %cmp22, label %land.lhs.true.24, label %if.end

land.lhs.true.24:                                 ; preds = %land.lhs.true.18
  %20 = load i64, i64* %oldpos, align 8
  %shr = ashr i64 %20, 2
  %21 = load i64, i64* %same_at_start.addr, align 8
  %cmp25 = icmp sgt i64 %shr, %21
  br i1 %cmp25, label %land.lhs.true.27, label %if.end

land.lhs.true.27:                                 ; preds = %land.lhs.true.24
  %22 = load i64, i64* %oldpos, align 8
  %shr28 = ashr i64 %22, 2
  %23 = load i64, i64* %same_at_end.addr, align 8
  %cmp29 = icmp slt i64 %shr28, %23
  br i1 %cmp29, label %if.then.31, label %if.end

if.then.31:                                       ; preds = %land.lhs.true.27
  %24 = load i64, i64* %same_at_end.addr, align 8
  %25 = load i64, i64* %same_at_start.addr, align 8
  %sub32 = sub nsw i64 %24, %25
  store i64 %sub32, i64* %oldsize, align 8
  %26 = load i64, i64* %inserted.addr, align 8
  store i64 %26, i64* %newsize, align 8
  %27 = load i64, i64* %newsize, align 8
  %conv33 = sitofp i64 %27 to double
  %28 = load i64, i64* %oldsize, align 8
  %conv34 = sitofp i64 %28 to double
  %div = fdiv double %conv33, %conv34
  store double %div, double* %growth, align 8
  %29 = load i64, i64* %same_at_start.addr, align 8
  %conv35 = sitofp i64 %29 to double
  %30 = load double, double* %growth, align 8
  %31 = load i64, i64* %oldpos, align 8
  %shr36 = ashr i64 %31, 2
  %32 = load i64, i64* %same_at_start.addr, align 8
  %sub37 = sub nsw i64 %shr36, %32
  %conv38 = sitofp i64 %sub37 to double
  %mul = fmul double %30, %conv38
  %add = fadd double %conv35, %mul
  %conv39 = fptosi double %add to i64
  store i64 %conv39, i64* %newpos, align 8
  %33 = load i64, i64* %marker, align 8
  %34 = load i64, i64* %newpos, align 8
  %shl = shl i64 %34, 2
  %add40 = add i64 %shl, 2
  %call41 = call i64 @builtin_lisp_symbol(i32 0)
  %call42 = call i64 @Fset_marker(i64 %33, i64 %add40, i64 %call41)
  br label %if.end

if.end:                                           ; preds = %if.then.31, %land.lhs.true.27, %land.lhs.true.24, %land.lhs.true.18, %land.lhs.true, %if.then
  br label %if.end.43

if.end.43:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.43
  %35 = load i64, i64* %window_markers.addr, align 8
  %sub44 = sub nsw i64 %35, 3
  %36 = inttoptr i64 %sub44 to i8*
  %37 = bitcast i8* %36 to %struct.Lisp_Cons*
  %u45 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %37, i32 0, i32 1
  %cdr46 = bitcast %union.anon* %u45 to i64*
  %38 = load i64, i64* %cdr46, align 8
  store i64 %38, i64* %window_markers.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i64 @make_natnum(i64) #1

declare void @XSETCDR(i64, i64) #1

declare void @invalidate_region_cache(%struct.buffer*, %struct.region_cache*, i64, i64) #1

declare i64 @Fsignal(i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fwrite_region(i64 %start, i64 %end, i64 %filename, i64 %append, i64 %visit, i64 %lockname, i64 %mustbenew) #5 {
entry:
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %filename.addr = alloca i64, align 8
  %append.addr = alloca i64, align 8
  %visit.addr = alloca i64, align 8
  %lockname.addr = alloca i64, align 8
  %mustbenew.addr = alloca i64, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  store i64 %filename, i64* %filename.addr, align 8
  store i64 %append, i64* %append.addr, align 8
  store i64 %visit, i64* %visit.addr, align 8
  store i64 %lockname, i64* %lockname.addr, align 8
  store i64 %mustbenew, i64* %mustbenew.addr, align 8
  %0 = load i64, i64* %start.addr, align 8
  %1 = load i64, i64* %end.addr, align 8
  %2 = load i64, i64* %filename.addr, align 8
  %3 = load i64, i64* %append.addr, align 8
  %4 = load i64, i64* %visit.addr, align 8
  %5 = load i64, i64* %lockname.addr, align 8
  %6 = load i64, i64* %mustbenew.addr, align 8
  %call = call i64 @write_region(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i32 -1)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @write_region(i64 %start, i64 %end, i64 %filename, i64 %append, i64 %visit, i64 %lockname, i64 %mustbenew, i32 %desc) #5 {
entry:
  %retval = alloca i64, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %filename.addr = alloca i64, align 8
  %append.addr = alloca i64, align 8
  %visit.addr = alloca i64, align 8
  %lockname.addr = alloca i64, align 8
  %mustbenew.addr = alloca i64, align 8
  %desc.addr = alloca i32, align 4
  %open_flags = alloca i32, align 4
  %mode = alloca i32, align 4
  %offset = alloca i64, align 8
  %open_and_close_file = alloca i8, align 1
  %ok = alloca i8, align 1
  %save_errno = alloca i32, align 4
  %fn = alloca i8*, align 8
  %st = alloca %struct.stat, align 8
  %modtime = alloca %struct.timespec, align 8
  %count = alloca i64, align 8
  %count1 = alloca i64, align 8
  %handler = alloca i64, align 8
  %visit_file = alloca i64, align 8
  %annotations = alloca i64, align 8
  %encoded_filename = alloca i64, align 8
  %visiting = alloca i8, align 1
  %quietly = alloca i8, align 1
  %file_locked = alloca i8, align 1
  %given_buffer = alloca %struct.buffer*, align 8
  %coding = alloca %struct.coding_system, align 8
  %val = alloca i64, align 8
  %open_errno = alloca i32, align 4
  %ret = alloca i64, align 8
  %lseek_errno = alloca i32, align 4
  %coerce = alloca %struct.timespec, align 8
  %coerce215 = alloca %struct.timespec, align 8
  %desc1 = alloca i32, align 4
  %st1 = alloca %struct.stat, align 8
  %use_heuristic = alloca i8, align 1
  %modtime1 = alloca %struct.timespec, align 8
  %buf = alloca i64, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  store i64 %filename, i64* %filename.addr, align 8
  store i64 %append, i64* %append.addr, align 8
  store i64 %visit, i64* %visit.addr, align 8
  store i64 %lockname, i64* %lockname.addr, align 8
  store i64 %mustbenew, i64* %mustbenew.addr, align 8
  store i32 %desc, i32* %desc.addr, align 4
  %0 = load i32, i32* %desc.addr, align 4
  %cmp = icmp slt i32 %0, 0
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, i8* %open_and_close_file, align 1
  store i32 0, i32* %save_errno, align 4
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %count, align 8
  %1 = load i64, i64* %visit.addr, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp2 = icmp eq i64 %1, %call1
  br i1 %cmp2, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %2 = load i64, i64* %visit.addr, align 8
  %call3 = call zeroext i1 @STRINGP(i64 %2)
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %3 = phi i1 [ true, %entry ], [ %call3, %lor.rhs ]
  %frombool4 = zext i1 %3 to i8
  store i8 %frombool4, i8* %visiting, align 1
  %4 = load i64, i64* %visit.addr, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp6 = icmp eq i64 %4, %call5
  %lnot = xor i1 %cmp6, true
  %frombool7 = zext i1 %lnot to i8
  store i8 %frombool7, i8* %quietly, align 1
  store i8 0, i8* %file_locked, align 1
  %5 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %base_buffer = getelementptr inbounds %struct.buffer, %struct.buffer* %5, i32 0, i32 81
  %6 = load %struct.buffer*, %struct.buffer** %base_buffer, align 8
  %tobool = icmp ne %struct.buffer* %6, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.end
  %7 = load i8, i8* %visiting, align 1
  %tobool8 = trunc i8 %7 to i1
  br i1 %tobool8, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void (i8*, ...) @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.34, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %land.lhs.true, %lor.end
  %8 = load i64, i64* %start.addr, align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp10 = icmp eq i64 %8, %call9
  br i1 %cmp10, label %if.end.14, label %land.lhs.true.11

land.lhs.true.11:                                 ; preds = %if.end
  %9 = load i64, i64* %start.addr, align 8
  %call12 = call zeroext i1 @STRINGP(i64 %9)
  br i1 %call12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %land.lhs.true.11
  call void @validate_region(i64* %start.addr, i64* %end.addr)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %land.lhs.true.11, %if.end
  %call15 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call15, i64* %visit_file, align 8
  %10 = load i64, i64* %filename.addr, align 8
  %call16 = call i64 @builtin_lisp_symbol(i32 0)
  %call17 = call i64 @Fexpand_file_name(i64 %10, i64 %call16)
  store i64 %call17, i64* %filename.addr, align 8
  %11 = load i64, i64* %mustbenew.addr, align 8
  %call18 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp19 = icmp eq i64 %11, %call18
  br i1 %cmp19, label %if.end.24, label %land.lhs.true.20

land.lhs.true.20:                                 ; preds = %if.end.14
  %12 = load i64, i64* %mustbenew.addr, align 8
  %call21 = call i64 @builtin_lisp_symbol(i32 385)
  %cmp22 = icmp eq i64 %12, %call21
  br i1 %cmp22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %land.lhs.true.20
  %13 = load i64, i64* %filename.addr, align 8
  call void @barf_or_query_if_file_exists(i64 %13, i1 zeroext false, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i1 zeroext true, i1 zeroext true)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %land.lhs.true.20, %if.end.14
  %14 = load i64, i64* %visit.addr, align 8
  %call25 = call zeroext i1 @STRINGP(i64 %14)
  br i1 %call25, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %if.end.24
  %15 = load i64, i64* %visit.addr, align 8
  %call27 = call i64 @builtin_lisp_symbol(i32 0)
  %call28 = call i64 @Fexpand_file_name(i64 %15, i64 %call27)
  store i64 %call28, i64* %visit_file, align 8
  br label %if.end.29

if.else:                                          ; preds = %if.end.24
  %16 = load i64, i64* %filename.addr, align 8
  store i64 %16, i64* %visit_file, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.26
  %17 = load i64, i64* %lockname.addr, align 8
  %call30 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp31 = icmp eq i64 %17, %call30
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.29
  %18 = load i64, i64* %visit_file, align 8
  store i64 %18, i64* %lockname.addr, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.end.29
  %call34 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call34, i64* %annotations, align 8
  %19 = load i64, i64* %filename.addr, align 8
  %call35 = call i64 @builtin_lisp_symbol(i32 1040)
  %call36 = call i64 @Ffind_file_name_handler(i64 %19, i64 %call35)
  store i64 %call36, i64* %handler, align 8
  %20 = load i64, i64* %handler, align 8
  %call37 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp38 = icmp eq i64 %20, %call37
  br i1 %cmp38, label %land.lhs.true.39, label %if.end.44

land.lhs.true.39:                                 ; preds = %if.end.33
  %21 = load i64, i64* %visit.addr, align 8
  %call40 = call zeroext i1 @STRINGP(i64 %21)
  br i1 %call40, label %if.then.41, label %if.end.44

if.then.41:                                       ; preds = %land.lhs.true.39
  %22 = load i64, i64* %visit.addr, align 8
  %call42 = call i64 @builtin_lisp_symbol(i32 1040)
  %call43 = call i64 @Ffind_file_name_handler(i64 %22, i64 %call42)
  store i64 %call43, i64* %handler, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.41, %land.lhs.true.39, %if.end.33
  %23 = load i64, i64* %handler, align 8
  %call45 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp46 = icmp eq i64 %23, %call45
  br i1 %cmp46, label %if.end.56, label %if.then.47

if.then.47:                                       ; preds = %if.end.44
  %24 = load i64, i64* %handler, align 8
  %call48 = call i64 @builtin_lisp_symbol(i32 1040)
  %25 = load i64, i64* %start.addr, align 8
  %26 = load i64, i64* %end.addr, align 8
  %27 = load i64, i64* %filename.addr, align 8
  %28 = load i64, i64* %append.addr, align 8
  %29 = load i64, i64* %visit.addr, align 8
  %call49 = call i64 @call6(i64 %24, i64 %call48, i64 %25, i64 %26, i64 %27, i64 %28, i64 %29)
  store i64 %call49, i64* %val, align 8
  %30 = load i8, i8* %visiting, align 1
  %tobool50 = trunc i8 %30 to i1
  br i1 %tobool50, label %if.then.51, label %if.end.55

if.then.51:                                       ; preds = %if.then.47
  %31 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %31, i32 0, i32 73
  %32 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %32, i32 0, i32 6
  %33 = load i64, i64* %modiff, align 8
  %34 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text52 = getelementptr inbounds %struct.buffer, %struct.buffer* %34, i32 0, i32 73
  %35 = load %struct.buffer_text*, %struct.buffer_text** %text52, align 8
  %save_modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %35, i32 0, i32 8
  store i64 %33, i64* %save_modiff, align 8
  %36 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text53 = getelementptr inbounds %struct.buffer, %struct.buffer* %36, i32 0, i32 73
  %37 = load %struct.buffer_text*, %struct.buffer_text** %text53, align 8
  %z = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %37, i32 0, i32 2
  %38 = load i64, i64* %z, align 8
  %sub = sub nsw i64 %38, 1
  %call54 = call i64 @make_natnum(i64 %sub)
  %39 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %save_length_ = getelementptr inbounds %struct.buffer, %struct.buffer* %39, i32 0, i32 5
  store i64 %call54, i64* %save_length_, align 8
  %40 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %41 = load i64, i64* %visit_file, align 8
  call void @bset_filename(%struct.buffer* %40, i64 %41)
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.51, %if.then.47
  %42 = load i64, i64* %val, align 8
  store i64 %42, i64* %retval
  br label %return

if.end.56:                                        ; preds = %if.end.44
  %call57 = call i64 @save_restriction_save()
  call void @record_unwind_protect(void (i64)* @save_restriction_restore, i64 %call57)
  %43 = load i64, i64* %start.addr, align 8
  %call58 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp59 = icmp eq i64 %43, %call58
  br i1 %cmp59, label %if.then.60, label %if.end.62

if.then.60:                                       ; preds = %if.end.56
  %call61 = call i64 @Fwiden()
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.60, %if.end.56
  %44 = load i64, i64* @Vwrite_region_annotation_buffers, align 8
  call void @record_unwind_protect(void (i64)* @build_annotations_unwind, i64 %44)
  %call63 = call i64 @Fcurrent_buffer()
  %call64 = call i64 @list1(i64 %call63)
  store i64 %call64, i64* @Vwrite_region_annotation_buffers, align 8
  %45 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  store %struct.buffer* %45, %struct.buffer** %given_buffer, align 8
  %46 = load i64, i64* %start.addr, align 8
  %call65 = call zeroext i1 @STRINGP(i64 %46)
  br i1 %call65, label %if.end.73, label %if.then.66

if.then.66:                                       ; preds = %if.end.62
  %47 = load i64, i64* %start.addr, align 8
  %48 = load i64, i64* %end.addr, align 8
  %call67 = call i64 @build_annotations(i64 %47, i64 %48)
  store i64 %call67, i64* %annotations, align 8
  %49 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %50 = load %struct.buffer*, %struct.buffer** %given_buffer, align 8
  %cmp68 = icmp ne %struct.buffer* %49, %50
  br i1 %cmp68, label %if.then.69, label %if.end.72

if.then.69:                                       ; preds = %if.then.66
  %51 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %51, i32 0, i32 77
  %52 = load i64, i64* %begv, align 8
  %call70 = call i64 @make_natnum(i64 %52)
  store i64 %call70, i64* %start.addr, align 8
  %53 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %53, i32 0, i32 79
  %54 = load i64, i64* %zv, align 8
  %call71 = call i64 @make_natnum(i64 %54)
  store i64 %call71, i64* %end.addr, align 8
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.69, %if.then.66
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.end.62
  %55 = load i64, i64* %start.addr, align 8
  %call74 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp75 = icmp eq i64 %55, %call74
  br i1 %cmp75, label %if.then.76, label %if.end.81

if.then.76:                                       ; preds = %if.end.73
  %56 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv77 = getelementptr inbounds %struct.buffer, %struct.buffer* %56, i32 0, i32 77
  %57 = load i64, i64* %begv77, align 8
  %call78 = call i64 @make_natnum(i64 %57)
  store i64 %call78, i64* %start.addr, align 8
  %58 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv79 = getelementptr inbounds %struct.buffer, %struct.buffer* %58, i32 0, i32 79
  %59 = load i64, i64* %zv79, align 8
  %call80 = call i64 @make_natnum(i64 %59)
  store i64 %call80, i64* %end.addr, align 8
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.76, %if.end.73
  %60 = load i64, i64* %start.addr, align 8
  %61 = load i64, i64* %end.addr, align 8
  %62 = load i64, i64* %filename.addr, align 8
  %63 = load i64, i64* %append.addr, align 8
  %64 = load i64, i64* %visit.addr, align 8
  %65 = load i64, i64* %lockname.addr, align 8
  %call82 = call i64 @choose_write_coding_system(i64 %60, i64 %61, i64 %62, i64 %63, i64 %64, i64 %65, %struct.coding_system* %coding)
  store i64 %call82, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 155), align 8
  %66 = load i8, i8* %open_and_close_file, align 1
  %tobool83 = trunc i8 %66 to i1
  br i1 %tobool83, label %land.lhs.true.84, label %if.end.87

land.lhs.true.84:                                 ; preds = %if.end.81
  %67 = load i8, i8* @auto_saving, align 1
  %tobool85 = trunc i8 %67 to i1
  br i1 %tobool85, label %if.end.87, label %if.then.86

if.then.86:                                       ; preds = %land.lhs.true.84
  %68 = load i64, i64* %lockname.addr, align 8
  call void @lock_file(i64 %68)
  store i8 1, i8* %file_locked, align 1
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.86, %land.lhs.true.84, %if.end.81
  %69 = load i64, i64* %filename.addr, align 8
  %call88 = call i64 @encode_file_name(i64 %69)
  store i64 %call88, i64* %encoded_filename, align 8
  %70 = load i64, i64* %encoded_filename, align 8
  %call89 = call i8* @SSDATA(i64 %70)
  store i8* %call89, i8** %fn, align 8
  store i32 65, i32* %open_flags, align 4
  %71 = load i64, i64* %mustbenew.addr, align 8
  %call90 = call i64 @builtin_lisp_symbol(i32 385)
  %cmp91 = icmp eq i64 %71, %call90
  br i1 %cmp91, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.87
  br label %cond.end

cond.false:                                       ; preds = %if.end.87
  %72 = load i64, i64* %append.addr, align 8
  %call92 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp93 = icmp eq i64 %72, %call92
  %lnot94 = xor i1 %cmp93, true
  %cond = select i1 %lnot94, i32 0, i32 512
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond95 = phi i32 [ 128, %cond.true ], [ %cond, %cond.false ]
  %73 = load i32, i32* %open_flags, align 4
  %or = or i32 %73, %cond95
  store i32 %or, i32* %open_flags, align 4
  %74 = load i64, i64* %append.addr, align 8
  %call96 = call zeroext i1 @NUMBERP(i64 %74)
  br i1 %call96, label %if.then.97, label %if.else.99

if.then.97:                                       ; preds = %cond.end
  %75 = load i64, i64* %append.addr, align 8
  %call98 = call i64 @file_offset(i64 %75)
  store i64 %call98, i64* %offset, align 8
  br label %if.end.105

if.else.99:                                       ; preds = %cond.end
  %76 = load i64, i64* %append.addr, align 8
  %call100 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp101 = icmp eq i64 %76, %call100
  br i1 %cmp101, label %if.end.104, label %if.then.102

if.then.102:                                      ; preds = %if.else.99
  %77 = load i32, i32* %open_flags, align 4
  %or103 = or i32 %77, 1024
  store i32 %or103, i32* %open_flags, align 4
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.102, %if.else.99
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.then.97
  %78 = load i8, i8* @auto_saving, align 1
  %tobool106 = trunc i8 %78 to i1
  br i1 %tobool106, label %cond.true.107, label %cond.false.108

cond.true.107:                                    ; preds = %if.end.105
  %79 = load i32, i32* @auto_save_mode_bits, align 4
  br label %cond.end.109

cond.false.108:                                   ; preds = %if.end.105
  br label %cond.end.109

cond.end.109:                                     ; preds = %cond.false.108, %cond.true.107
  %cond110 = phi i32 [ %79, %cond.true.107 ], [ 438, %cond.false.108 ]
  store i32 %cond110, i32* %mode, align 4
  %80 = load i8, i8* %open_and_close_file, align 1
  %tobool111 = trunc i8 %80 to i1
  br i1 %tobool111, label %if.then.112, label %if.end.122

if.then.112:                                      ; preds = %cond.end.109
  %81 = load i8*, i8** %fn, align 8
  %82 = load i32, i32* %open_flags, align 4
  %83 = load i32, i32* %mode, align 4
  %call113 = call i32 @emacs_open(i8* %81, i32 %82, i32 %83)
  store i32 %call113, i32* %desc.addr, align 4
  %84 = load i32, i32* %desc.addr, align 4
  %cmp114 = icmp slt i32 %84, 0
  br i1 %cmp114, label %if.then.115, label %if.end.120

if.then.115:                                      ; preds = %if.then.112
  %call116 = call i32* @__errno_location() #9
  %85 = load i32, i32* %call116, align 4
  store i32 %85, i32* %open_errno, align 4
  %86 = load i8, i8* %file_locked, align 1
  %tobool117 = trunc i8 %86 to i1
  br i1 %tobool117, label %if.then.118, label %if.end.119

if.then.118:                                      ; preds = %if.then.115
  %87 = load i64, i64* %lockname.addr, align 8
  call void @unlock_file(i64 %87)
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.118, %if.then.115
  %88 = load i64, i64* %filename.addr, align 8
  %89 = load i32, i32* %open_errno, align 4
  call void @report_file_errno(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i64 %88, i32 %89) #8
  unreachable

if.end.120:                                       ; preds = %if.then.112
  %call121 = call i64 @SPECPDL_INDEX()
  store i64 %call121, i64* %count1, align 8
  %90 = load i32, i32* %desc.addr, align 4
  call void @record_unwind_protect_int(void (i32)* @close_file_unwind, i32 %90)
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.120, %cond.end.109
  %91 = load i64, i64* %append.addr, align 8
  %call123 = call zeroext i1 @NUMBERP(i64 %91)
  br i1 %call123, label %if.then.124, label %if.end.133

if.then.124:                                      ; preds = %if.end.122
  %92 = load i32, i32* %desc.addr, align 4
  %93 = load i64, i64* %offset, align 8
  %call125 = call i64 @lseek(i32 %92, i64 %93, i32 0) #6
  store i64 %call125, i64* %ret, align 8
  %94 = load i64, i64* %ret, align 8
  %cmp126 = icmp slt i64 %94, 0
  br i1 %cmp126, label %if.then.127, label %if.end.132

if.then.127:                                      ; preds = %if.then.124
  %call128 = call i32* @__errno_location() #9
  %95 = load i32, i32* %call128, align 4
  store i32 %95, i32* %lseek_errno, align 4
  %96 = load i8, i8* %file_locked, align 1
  %tobool129 = trunc i8 %96 to i1
  br i1 %tobool129, label %if.then.130, label %if.end.131

if.then.130:                                      ; preds = %if.then.127
  %97 = load i64, i64* %lockname.addr, align 8
  call void @unlock_file(i64 %97)
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.130, %if.then.127
  %98 = load i64, i64* %filename.addr, align 8
  %99 = load i32, i32* %lseek_errno, align 4
  call void @report_file_errno(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i32 0, i32 0), i64 %98, i32 %99) #8
  unreachable

if.end.132:                                       ; preds = %if.then.124
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %if.end.122
  store i8 1, i8* @immediate_quit, align 1
  %100 = load i64, i64* %start.addr, align 8
  %call134 = call zeroext i1 @STRINGP(i64 %100)
  br i1 %call134, label %if.then.135, label %if.else.139

if.then.135:                                      ; preds = %if.end.133
  %101 = load i32, i32* %desc.addr, align 4
  %102 = load i64, i64* %start.addr, align 8
  %103 = load i64, i64* %start.addr, align 8
  %call136 = call i64 @SCHARS(i64 %103)
  %call137 = call zeroext i1 @a_write(i32 %101, i64 %102, i64 0, i64 %call136, i64* %annotations, %struct.coding_system* %coding)
  %frombool138 = zext i1 %call137 to i8
  store i8 %frombool138, i8* %ok, align 1
  br label %if.end.160

if.else.139:                                      ; preds = %if.end.133
  %104 = load i64, i64* %start.addr, align 8
  %shr = ashr i64 %104, 2
  %105 = load i64, i64* %end.addr, align 8
  %shr140 = ashr i64 %105, 2
  %cmp141 = icmp ne i64 %shr, %shr140
  br i1 %cmp141, label %if.then.142, label %if.else.150

if.then.142:                                      ; preds = %if.else.139
  %106 = load i32, i32* %desc.addr, align 4
  %call143 = call i64 @builtin_lisp_symbol(i32 0)
  %107 = load i64, i64* %start.addr, align 8
  %shr144 = ashr i64 %107, 2
  %108 = load i64, i64* %end.addr, align 8
  %shr145 = ashr i64 %108, 2
  %109 = load i64, i64* %start.addr, align 8
  %shr146 = ashr i64 %109, 2
  %sub147 = sub nsw i64 %shr145, %shr146
  %call148 = call zeroext i1 @a_write(i32 %106, i64 %call143, i64 %shr144, i64 %sub147, i64* %annotations, %struct.coding_system* %coding)
  %frombool149 = zext i1 %call148 to i8
  store i8 %frombool149, i8* %ok, align 1
  br label %if.end.159

if.else.150:                                      ; preds = %if.else.139
  %mode151 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %coding, i32 0, i32 1
  %bf.load = load i32, i32* %mode151, align 8
  %bf.lshr = lshr i32 %bf.load, 14
  %bf.clear = and i32 %bf.lshr, 31
  %or152 = or i32 %bf.clear, 1
  %bf.load153 = load i32, i32* %mode151, align 8
  %bf.value = and i32 %or152, 31
  %bf.shl = shl i32 %bf.value, 14
  %bf.clear154 = and i32 %bf.load153, -507905
  %bf.set = or i32 %bf.clear154, %bf.shl
  store i32 %bf.set, i32* %mode151, align 8
  %110 = load i32, i32* %desc.addr, align 4
  %call155 = call i64 @builtin_lisp_symbol(i32 0)
  %111 = load i64, i64* %end.addr, align 8
  %shr156 = ashr i64 %111, 2
  %call157 = call zeroext i1 @a_write(i32 %110, i64 %call155, i64 %shr156, i64 0, i64* %annotations, %struct.coding_system* %coding)
  %frombool158 = zext i1 %call157 to i8
  store i8 %frombool158, i8* %ok, align 1
  br label %if.end.159

if.end.159:                                       ; preds = %if.else.150, %if.then.142
  br label %if.end.160

if.end.160:                                       ; preds = %if.end.159, %if.then.135
  %call161 = call i32* @__errno_location() #9
  %112 = load i32, i32* %call161, align 4
  store i32 %112, i32* %save_errno, align 4
  %113 = load i8, i8* %ok, align 1
  %tobool162 = trunc i8 %113 to i1
  br i1 %tobool162, label %land.lhs.true.163, label %if.end.189

land.lhs.true.163:                                ; preds = %if.end.160
  %common_flags = getelementptr inbounds %struct.coding_system, %struct.coding_system* %coding, i32 0, i32 1
  %bf.load164 = load i32, i32* %common_flags, align 8
  %bf.clear165 = and i32 %bf.load164, 16383
  %and = and i32 %bf.clear165, 512
  %tobool166 = icmp ne i32 %and, 0
  br i1 %tobool166, label %land.lhs.true.167, label %if.end.189

land.lhs.true.167:                                ; preds = %land.lhs.true.163
  %mode168 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %coding, i32 0, i32 1
  %bf.load169 = load i32, i32* %mode168, align 8
  %bf.lshr170 = lshr i32 %bf.load169, 14
  %bf.clear171 = and i32 %bf.lshr170, 31
  %and172 = and i32 %bf.clear171, 1
  %tobool173 = icmp ne i32 %and172, 0
  br i1 %tobool173, label %if.end.189, label %if.then.174

if.then.174:                                      ; preds = %land.lhs.true.167
  %mode175 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %coding, i32 0, i32 1
  %bf.load176 = load i32, i32* %mode175, align 8
  %bf.lshr177 = lshr i32 %bf.load176, 14
  %bf.clear178 = and i32 %bf.lshr177, 31
  %or179 = or i32 %bf.clear178, 1
  %bf.load180 = load i32, i32* %mode175, align 8
  %bf.value181 = and i32 %or179, 31
  %bf.shl182 = shl i32 %bf.value181, 14
  %bf.clear183 = and i32 %bf.load180, -507905
  %bf.set184 = or i32 %bf.clear183, %bf.shl182
  store i32 %bf.set184, i32* %mode175, align 8
  %114 = load i32, i32* %desc.addr, align 4
  %call185 = call i64 @builtin_lisp_symbol(i32 0)
  %call186 = call zeroext i1 @e_write(i32 %114, i64 %call185, i64 1, i64 1, %struct.coding_system* %coding)
  %frombool187 = zext i1 %call186 to i8
  store i8 %frombool187, i8* %ok, align 1
  %call188 = call i32* @__errno_location() #9
  %115 = load i32, i32* %call188, align 4
  store i32 %115, i32* %save_errno, align 4
  br label %if.end.189

if.end.189:                                       ; preds = %if.then.174, %land.lhs.true.167, %land.lhs.true.163, %if.end.160
  store i8 0, i8* @immediate_quit, align 1
  %116 = load i8, i8* %open_and_close_file, align 1
  %tobool190 = trunc i8 %116 to i1
  br i1 %tobool190, label %land.lhs.true.191, label %if.end.207

land.lhs.true.191:                                ; preds = %if.end.189
  %117 = load i8, i8* @auto_saving, align 1
  %tobool192 = trunc i8 %117 to i1
  br i1 %tobool192, label %if.end.207, label %land.lhs.true.193

land.lhs.true.193:                                ; preds = %land.lhs.true.191
  %118 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 500), align 1
  %tobool194 = trunc i8 %118 to i1
  br i1 %tobool194, label %if.end.207, label %if.then.195

if.then.195:                                      ; preds = %land.lhs.true.193
  br label %while.cond

while.cond:                                       ; preds = %if.end.206, %if.then.195
  %119 = load i32, i32* %desc.addr, align 4
  %call196 = call i32 @fsync(i32 %119)
  %cmp197 = icmp ne i32 %call196, 0
  br i1 %cmp197, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call198 = call i32* @__errno_location() #9
  %120 = load i32, i32* %call198, align 4
  %cmp199 = icmp ne i32 %120, 4
  br i1 %cmp199, label %if.then.200, label %if.end.206

if.then.200:                                      ; preds = %while.body
  %call201 = call i32* @__errno_location() #9
  %121 = load i32, i32* %call201, align 4
  %cmp202 = icmp ne i32 %121, 22
  br i1 %cmp202, label %if.then.203, label %if.end.205

if.then.203:                                      ; preds = %if.then.200
  store i8 0, i8* %ok, align 1
  %call204 = call i32* @__errno_location() #9
  %122 = load i32, i32* %call204, align 4
  store i32 %122, i32* %save_errno, align 4
  br label %if.end.205

if.end.205:                                       ; preds = %if.then.203, %if.then.200
  br label %while.end

if.end.206:                                       ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %if.end.205, %while.cond
  br label %if.end.207

if.end.207:                                       ; preds = %while.end, %land.lhs.true.193, %land.lhs.true.191, %if.end.189
  %call208 = call { i64, i64 } @invalid_timespec()
  %123 = bitcast %struct.timespec* %coerce to { i64, i64 }*
  %124 = getelementptr { i64, i64 }, { i64, i64 }* %123, i32 0, i32 0
  %125 = extractvalue { i64, i64 } %call208, 0
  store i64 %125, i64* %124, align 8
  %126 = getelementptr { i64, i64 }, { i64, i64 }* %123, i32 0, i32 1
  %127 = extractvalue { i64, i64 } %call208, 1
  store i64 %127, i64* %126, align 8
  %128 = bitcast %struct.timespec* %modtime to i8*
  %129 = bitcast %struct.timespec* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %128, i8* %129, i64 16, i32 8, i1 false)
  %130 = load i8, i8* %visiting, align 1
  %tobool209 = trunc i8 %130 to i1
  br i1 %tobool209, label %if.then.210, label %if.end.219

if.then.210:                                      ; preds = %if.end.207
  %131 = load i32, i32* %desc.addr, align 4
  %call211 = call i32 @fstat(i32 %131, %struct.stat* %st) #6
  %cmp212 = icmp eq i32 %call211, 0
  br i1 %cmp212, label %if.then.213, label %if.else.216

if.then.213:                                      ; preds = %if.then.210
  %call214 = call { i64, i64 } @get_stat_mtime(%struct.stat* %st) #10
  %132 = bitcast %struct.timespec* %coerce215 to { i64, i64 }*
  %133 = getelementptr { i64, i64 }, { i64, i64 }* %132, i32 0, i32 0
  %134 = extractvalue { i64, i64 } %call214, 0
  store i64 %134, i64* %133, align 8
  %135 = getelementptr { i64, i64 }, { i64, i64 }* %132, i32 0, i32 1
  %136 = extractvalue { i64, i64 } %call214, 1
  store i64 %136, i64* %135, align 8
  %137 = bitcast %struct.timespec* %modtime to i8*
  %138 = bitcast %struct.timespec* %coerce215 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %137, i8* %138, i64 16, i32 8, i1 false)
  br label %if.end.218

if.else.216:                                      ; preds = %if.then.210
  store i8 0, i8* %ok, align 1
  %call217 = call i32* @__errno_location() #9
  %139 = load i32, i32* %call217, align 4
  store i32 %139, i32* %save_errno, align 4
  br label %if.end.218

if.end.218:                                       ; preds = %if.else.216, %if.then.213
  br label %if.end.219

if.end.219:                                       ; preds = %if.end.218, %if.end.207
  %140 = load i8, i8* %open_and_close_file, align 1
  %tobool220 = trunc i8 %140 to i1
  br i1 %tobool220, label %if.then.221, label %if.end.227

if.then.221:                                      ; preds = %if.end.219
  %141 = load i32, i32* %desc.addr, align 4
  %call222 = call i32 @emacs_close(i32 %141)
  %cmp223 = icmp slt i32 %call222, 0
  br i1 %cmp223, label %if.then.224, label %if.end.226

if.then.224:                                      ; preds = %if.then.221
  store i8 0, i8* %ok, align 1
  %call225 = call i32* @__errno_location() #9
  %142 = load i32, i32* %call225, align 4
  store i32 %142, i32* %save_errno, align 4
  br label %if.end.226

if.end.226:                                       ; preds = %if.then.224, %if.then.221
  %143 = load %union.specbinding*, %union.specbinding** @specpdl, align 8
  %144 = load i64, i64* %count1, align 8
  %add.ptr = getelementptr inbounds %union.specbinding, %union.specbinding* %143, i64 %144
  store %union.specbinding* %add.ptr, %union.specbinding** @specpdl_ptr, align 8
  br label %if.end.227

if.end.227:                                       ; preds = %if.end.226, %if.end.219
  %145 = bitcast %struct.timespec* %modtime to { i64, i64 }*
  %146 = getelementptr { i64, i64 }, { i64, i64 }* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 1
  %148 = getelementptr { i64, i64 }, { i64, i64 }* %145, i32 0, i32 1
  %149 = load i64, i64* %148, align 1
  %call228 = call zeroext i1 @timespec_valid_p(i64 %147, i64 %149)
  br i1 %call228, label %land.lhs.true.229, label %if.end.271

land.lhs.true.229:                                ; preds = %if.end.227
  %150 = load i8, i8* @valid_timestamp_file_system, align 1
  %tobool230 = trunc i8 %150 to i1
  br i1 %tobool230, label %land.lhs.true.231, label %if.then.233

land.lhs.true.231:                                ; preds = %land.lhs.true.229
  %st_dev = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 0
  %151 = load i64, i64* %st_dev, align 8
  %152 = load i64, i64* @timestamp_file_system, align 8
  %cmp232 = icmp eq i64 %151, %152
  br i1 %cmp232, label %if.end.271, label %if.then.233

if.then.233:                                      ; preds = %land.lhs.true.231, %land.lhs.true.229
  %153 = load i8*, i8** %fn, align 8
  %call234 = call i32 @emacs_open(i8* %153, i32 1, i32 0)
  store i32 %call234, i32* %desc1, align 4
  %154 = load i32, i32* %desc1, align 4
  %cmp235 = icmp sge i32 %154, 0
  br i1 %cmp235, label %if.then.236, label %if.end.270

if.then.236:                                      ; preds = %if.then.233
  %155 = load i32, i32* %desc1, align 4
  %call237 = call i32 @fstat(i32 %155, %struct.stat* %st1) #6
  %cmp238 = icmp eq i32 %call237, 0
  br i1 %cmp238, label %land.lhs.true.239, label %if.end.268

land.lhs.true.239:                                ; preds = %if.then.236
  %st_dev240 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 0
  %156 = load i64, i64* %st_dev240, align 8
  %st_dev241 = getelementptr inbounds %struct.stat, %struct.stat* %st1, i32 0, i32 0
  %157 = load i64, i64* %st_dev241, align 8
  %cmp242 = icmp eq i64 %156, %157
  br i1 %cmp242, label %land.lhs.true.243, label %if.end.268

land.lhs.true.243:                                ; preds = %land.lhs.true.239
  %st_ino = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 1
  %158 = load i64, i64* %st_ino, align 8
  %st_ino244 = getelementptr inbounds %struct.stat, %struct.stat* %st1, i32 0, i32 1
  %159 = load i64, i64* %st_ino244, align 8
  %cmp245 = icmp eq i64 %158, %159
  br i1 %cmp245, label %if.then.246, label %if.end.268

if.then.246:                                      ; preds = %land.lhs.true.243
  %160 = load i32, i32* %open_flags, align 4
  %and247 = and i32 %160, 640
  %cmp248 = icmp ne i32 %and247, 0
  br i1 %cmp248, label %land.lhs.true.249, label %land.end

land.lhs.true.249:                                ; preds = %if.then.246
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 8
  %161 = load i64, i64* %st_size, align 8
  %cmp250 = icmp ne i64 %161, 0
  br i1 %cmp250, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.249
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %modtime, i32 0, i32 1
  %162 = load i64, i64* %tv_nsec, align 8
  %rem = srem i64 %162, 100
  %cmp251 = icmp ne i64 %rem, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.249, %if.then.246
  %163 = phi i1 [ false, %land.lhs.true.249 ], [ false, %if.then.246 ], [ %cmp251, %land.rhs ]
  %frombool252 = zext i1 %163 to i8
  store i8 %frombool252, i8* %use_heuristic, align 1
  %call253 = call { i64, i64 } @get_stat_mtime(%struct.stat* %st1) #10
  %164 = bitcast %struct.timespec* %modtime1 to { i64, i64 }*
  %165 = getelementptr { i64, i64 }, { i64, i64 }* %164, i32 0, i32 0
  %166 = extractvalue { i64, i64 } %call253, 0
  store i64 %166, i64* %165, align 8
  %167 = getelementptr { i64, i64 }, { i64, i64 }* %164, i32 0, i32 1
  %168 = extractvalue { i64, i64 } %call253, 1
  store i64 %168, i64* %167, align 8
  %169 = load i8, i8* %use_heuristic, align 1
  %tobool254 = trunc i8 %169 to i1
  br i1 %tobool254, label %land.lhs.true.255, label %if.else.264

land.lhs.true.255:                                ; preds = %land.end
  %170 = bitcast %struct.timespec* %modtime to { i64, i64 }*
  %171 = getelementptr { i64, i64 }, { i64, i64 }* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 1
  %173 = getelementptr { i64, i64 }, { i64, i64 }* %170, i32 0, i32 1
  %174 = load i64, i64* %173, align 1
  %175 = bitcast %struct.timespec* %modtime1 to { i64, i64 }*
  %176 = getelementptr { i64, i64 }, { i64, i64 }* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 1
  %178 = getelementptr { i64, i64 }, { i64, i64 }* %175, i32 0, i32 1
  %179 = load i64, i64* %178, align 1
  %call256 = call i32 @timespec_cmp(i64 %172, i64 %174, i64 %177, i64 %179) #10
  %cmp257 = icmp eq i32 %call256, 0
  br i1 %cmp257, label %land.lhs.true.258, label %if.else.264

land.lhs.true.258:                                ; preds = %land.lhs.true.255
  %st_size259 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 8
  %180 = load i64, i64* %st_size259, align 8
  %st_size260 = getelementptr inbounds %struct.stat, %struct.stat* %st1, i32 0, i32 8
  %181 = load i64, i64* %st_size260, align 8
  %cmp261 = icmp eq i64 %180, %181
  br i1 %cmp261, label %if.then.262, label %if.else.264

if.then.262:                                      ; preds = %land.lhs.true.258
  %st_dev263 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 0
  %182 = load i64, i64* %st_dev263, align 8
  store i64 %182, i64* @timestamp_file_system, align 8
  store i8 1, i8* @valid_timestamp_file_system, align 1
  br label %if.end.267

if.else.264:                                      ; preds = %land.lhs.true.258, %land.lhs.true.255, %land.end
  %st_size265 = getelementptr inbounds %struct.stat, %struct.stat* %st1, i32 0, i32 8
  %183 = load i64, i64* %st_size265, align 8
  %st_size266 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 8
  store i64 %183, i64* %st_size266, align 8
  %184 = bitcast %struct.timespec* %modtime to i8*
  %185 = bitcast %struct.timespec* %modtime1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %184, i8* %185, i64 16, i32 8, i1 false)
  br label %if.end.267

if.end.267:                                       ; preds = %if.else.264, %if.then.262
  br label %if.end.268

if.end.268:                                       ; preds = %if.end.267, %land.lhs.true.243, %land.lhs.true.239, %if.then.236
  %186 = load i32, i32* %desc1, align 4
  %call269 = call i32 @emacs_close(i32 %186)
  br label %if.end.270

if.end.270:                                       ; preds = %if.end.268, %if.then.233
  br label %if.end.271

if.end.271:                                       ; preds = %if.end.270, %land.lhs.true.231, %if.end.227
  br label %while.cond.272

while.cond.272:                                   ; preds = %if.end.288, %if.end.271
  %187 = load i64, i64* @Vwrite_region_annotation_buffers, align 8
  %and273 = and i64 %187, 7
  %conv = trunc i64 %and273 to i32
  %cmp274 = icmp eq i32 %conv, 3
  br i1 %cmp274, label %while.body.276, label %while.end.290

while.body.276:                                   ; preds = %while.cond.272
  %188 = load i64, i64* @Vwrite_region_annotation_buffers, align 8
  %sub277 = sub nsw i64 %188, 3
  %189 = inttoptr i64 %sub277 to i8*
  %190 = bitcast i8* %189 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %190, i32 0, i32 0
  %191 = load i64, i64* %car, align 8
  store i64 %191, i64* %buf, align 8
  %192 = load i64, i64* %buf, align 8
  %call278 = call i64 @Fbuffer_live_p(i64 %192)
  %call279 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp280 = icmp eq i64 %call278, %call279
  br i1 %cmp280, label %if.end.288, label %if.then.282

if.then.282:                                      ; preds = %while.body.276
  %193 = load i64, i64* %buf, align 8
  %call283 = call i64 @Fset_buffer(i64 %193)
  %194 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 341), align 8
  %call284 = call zeroext i1 @FUNCTIONP(i64 %194)
  br i1 %call284, label %if.then.285, label %if.end.287

if.then.285:                                      ; preds = %if.then.282
  %195 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 341), align 8
  %call286 = call i64 @call0(i64 %195)
  br label %if.end.287

if.end.287:                                       ; preds = %if.then.285, %if.then.282
  br label %if.end.288

if.end.288:                                       ; preds = %if.end.287, %while.body.276
  %196 = load i64, i64* @Vwrite_region_annotation_buffers, align 8
  %sub289 = sub nsw i64 %196, 3
  %197 = inttoptr i64 %sub289 to i8*
  %198 = bitcast i8* %197 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %198, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %199 = load i64, i64* %cdr, align 8
  store i64 %199, i64* @Vwrite_region_annotation_buffers, align 8
  br label %while.cond.272

while.end.290:                                    ; preds = %while.cond.272
  %200 = load i64, i64* %count, align 8
  %call291 = call i64 @builtin_lisp_symbol(i32 0)
  %call292 = call i64 @unbind_to(i64 %200, i64 %call291)
  %201 = load i8, i8* %file_locked, align 1
  %tobool293 = trunc i8 %201 to i1
  br i1 %tobool293, label %if.then.294, label %if.end.295

if.then.294:                                      ; preds = %while.end.290
  %202 = load i64, i64* %lockname.addr, align 8
  call void @unlock_file(i64 %202)
  br label %if.end.295

if.end.295:                                       ; preds = %if.then.294, %while.end.290
  %203 = bitcast %struct.timespec* %modtime to { i64, i64 }*
  %204 = getelementptr { i64, i64 }, { i64, i64 }* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 1
  %206 = getelementptr { i64, i64 }, { i64, i64 }* %203, i32 0, i32 1
  %207 = load i64, i64* %206, align 1
  %call296 = call zeroext i1 @timespec_valid_p(i64 %205, i64 %207)
  br i1 %call296, label %if.then.297, label %if.end.300

if.then.297:                                      ; preds = %if.end.295
  %208 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %modtime298 = getelementptr inbounds %struct.buffer, %struct.buffer* %208, i32 0, i32 85
  %209 = bitcast %struct.timespec* %modtime298 to i8*
  %210 = bitcast %struct.timespec* %modtime to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %209, i8* %210, i64 16, i32 8, i1 false)
  %st_size299 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 8
  %211 = load i64, i64* %st_size299, align 8
  %212 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %modtime_size = getelementptr inbounds %struct.buffer, %struct.buffer* %212, i32 0, i32 86
  store i64 %211, i64* %modtime_size, align 8
  br label %if.end.300

if.end.300:                                       ; preds = %if.then.297, %if.end.295
  %213 = load i8, i8* %ok, align 1
  %tobool301 = trunc i8 %213 to i1
  br i1 %tobool301, label %if.end.303, label %if.then.302

if.then.302:                                      ; preds = %if.end.300
  %214 = load i64, i64* %filename.addr, align 8
  %215 = load i32, i32* %save_errno, align 4
  call void @report_file_errno(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i64 %214, i32 %215) #8
  unreachable

if.end.303:                                       ; preds = %if.end.300
  %216 = load i8, i8* %visiting, align 1
  %tobool304 = trunc i8 %216 to i1
  br i1 %tobool304, label %if.then.305, label %if.else.315

if.then.305:                                      ; preds = %if.end.303
  %217 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text306 = getelementptr inbounds %struct.buffer, %struct.buffer* %217, i32 0, i32 73
  %218 = load %struct.buffer_text*, %struct.buffer_text** %text306, align 8
  %modiff307 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %218, i32 0, i32 6
  %219 = load i64, i64* %modiff307, align 8
  %220 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text308 = getelementptr inbounds %struct.buffer, %struct.buffer* %220, i32 0, i32 73
  %221 = load %struct.buffer_text*, %struct.buffer_text** %text308, align 8
  %save_modiff309 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %221, i32 0, i32 8
  store i64 %219, i64* %save_modiff309, align 8
  %222 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text310 = getelementptr inbounds %struct.buffer, %struct.buffer* %222, i32 0, i32 73
  %223 = load %struct.buffer_text*, %struct.buffer_text** %text310, align 8
  %z311 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %223, i32 0, i32 2
  %224 = load i64, i64* %z311, align 8
  %sub312 = sub nsw i64 %224, 1
  %call313 = call i64 @make_natnum(i64 %sub312)
  %225 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %save_length_314 = getelementptr inbounds %struct.buffer, %struct.buffer* %225, i32 0, i32 5
  store i64 %call313, i64* %save_length_314, align 8
  %226 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %227 = load i64, i64* %visit_file, align 8
  call void @bset_filename(%struct.buffer* %226, i64 %227)
  store i32 14, i32* @update_mode_lines, align 4
  br label %if.end.333

if.else.315:                                      ; preds = %if.end.303
  %228 = load i8, i8* %quietly, align 1
  %tobool316 = trunc i8 %228 to i1
  br i1 %tobool316, label %if.then.317, label %if.end.332

if.then.317:                                      ; preds = %if.else.315
  %229 = load i8, i8* @auto_saving, align 1
  %tobool318 = trunc i8 %229 to i1
  br i1 %tobool318, label %land.lhs.true.320, label %if.end.330

land.lhs.true.320:                                ; preds = %if.then.317
  %230 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %filename_ = getelementptr inbounds %struct.buffer, %struct.buffer* %230, i32 0, i32 2
  %231 = load i64, i64* %filename_, align 8
  %232 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %auto_save_file_name_ = getelementptr inbounds %struct.buffer, %struct.buffer* %232, i32 0, i32 6
  %233 = load i64, i64* %auto_save_file_name_, align 8
  %call321 = call i64 @Fstring_equal(i64 %231, i64 %233)
  %call322 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp323 = icmp eq i64 %call321, %call322
  br i1 %cmp323, label %if.end.330, label %if.then.325

if.then.325:                                      ; preds = %land.lhs.true.320
  %234 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text326 = getelementptr inbounds %struct.buffer, %struct.buffer* %234, i32 0, i32 73
  %235 = load %struct.buffer_text*, %struct.buffer_text** %text326, align 8
  %modiff327 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %235, i32 0, i32 6
  %236 = load i64, i64* %modiff327, align 8
  %237 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text328 = getelementptr inbounds %struct.buffer, %struct.buffer* %237, i32 0, i32 73
  %238 = load %struct.buffer_text*, %struct.buffer_text** %text328, align 8
  %save_modiff329 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %238, i32 0, i32 8
  store i64 %236, i64* %save_modiff329, align 8
  br label %if.end.330

if.end.330:                                       ; preds = %if.then.325, %land.lhs.true.320, %if.then.317
  %call331 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call331, i64* %retval
  br label %return

if.end.332:                                       ; preds = %if.else.315
  br label %if.end.333

if.end.333:                                       ; preds = %if.end.332, %if.then.305
  %239 = load i8, i8* @auto_saving, align 1
  %tobool334 = trunc i8 %239 to i1
  br i1 %tobool334, label %if.end.349, label %land.lhs.true.335

land.lhs.true.335:                                ; preds = %if.end.333
  %240 = load i8, i8* @noninteractive, align 1
  %tobool336 = trunc i8 %240 to i1
  br i1 %tobool336, label %if.end.349, label %if.then.337

if.then.337:                                      ; preds = %land.lhs.true.335
  %241 = load i64, i64* %append.addr, align 8
  %call338 = call zeroext i1 @NUMBERP(i64 %241)
  br i1 %call338, label %cond.true.340, label %cond.false.341

cond.true.340:                                    ; preds = %if.then.337
  br label %cond.end.347

cond.false.341:                                   ; preds = %if.then.337
  %242 = load i64, i64* %append.addr, align 8
  %call342 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp343 = icmp eq i64 %242, %call342
  %lnot345 = xor i1 %cmp343, true
  %cond346 = select i1 %lnot345, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i32 0, i32 0)
  br label %cond.end.347

cond.end.347:                                     ; preds = %cond.false.341, %cond.true.340
  %cond348 = phi i8* [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i32 0, i32 0), %cond.true.340 ], [ %cond346, %cond.false.341 ]
  %243 = load i64, i64* %visit_file, align 8
  call void @message_with_string(i8* %cond348, i64 %243, i1 zeroext true)
  br label %if.end.349

if.end.349:                                       ; preds = %cond.end.347, %land.lhs.true.335, %if.end.333
  %call350 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call350, i64* %retval
  br label %return

return:                                           ; preds = %if.end.349, %if.end.330, %if.end.55
  %244 = load i64, i64* %retval
  ret i64 %244
}

declare void @validate_region(i64*, i64*) #1

declare void @save_restriction_restore(i64) #1

declare i64 @save_restriction_save() #1

declare i64 @Fwiden() #1

; Function Attrs: nounwind uwtable
define internal void @build_annotations_unwind(i64 %arg) #5 {
entry:
  %arg.addr = alloca i64, align 8
  store i64 %arg, i64* %arg.addr, align 8
  %0 = load i64, i64* %arg.addr, align 8
  store i64 %0, i64* @Vwrite_region_annotation_buffers, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @build_annotations(i64 %start, i64 %end) #5 {
entry:
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %annotations = alloca i64, align 8
  %p = alloca i64, align 8
  %res = alloca i64, align 8
  %original_buffer = alloca i64, align 8
  %i = alloca i32, align 4
  %used_global = alloca i8, align 1
  %given_buffer = alloca %struct.buffer*, align 8
  %.compoundliteral = alloca [2 x i64], align 8
  %given_buffer41 = alloca %struct.buffer*, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  store i8 0, i8* %used_global, align 1
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %1 = bitcast %struct.buffer* %0 to i8*
  %call = call i64 @make_lisp_ptr(i8* %1, i32 5)
  store i64 %call, i64* %original_buffer, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* %annotations, align 8
  %2 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 339), align 8
  store i64 %2, i64* %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.21, %if.then, %entry
  %3 = load i64, i64* %p, align 8
  %and = and i64 %3, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  store %struct.buffer* %4, %struct.buffer** %given_buffer, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 901)
  %5 = load i64, i64* %p, align 8
  %sub = sub nsw i64 %5, 3
  %6 = inttoptr i64 %sub to i8*
  %7 = bitcast i8* %6 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %7, i32 0, i32 0
  %8 = load i64, i64* %car, align 8
  %cmp4 = icmp eq i64 %call3, %8
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %9 = load i8, i8* %used_global, align 1
  %tobool = trunc i8 %9 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i8 1, i8* %used_global, align 1
  %arrayinit.begin = getelementptr inbounds [2 x i64], [2 x i64]* %.compoundliteral, i64 0, i64 0
  %call6 = call i64 @builtin_lisp_symbol(i32 1041)
  %call7 = call i64 @Fdefault_value(i64 %call6)
  store i64 %call7, i64* %arrayinit.begin
  %arrayinit.element = getelementptr inbounds i64, i64* %arrayinit.begin, i64 1
  %10 = load i64, i64* %p, align 8
  %sub8 = sub nsw i64 %10, 3
  %11 = inttoptr i64 %sub8 to i8*
  %12 = bitcast i8* %11 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %12, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %13 = load i64, i64* %cdr, align 8
  store i64 %13, i64* %arrayinit.element
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %.compoundliteral, i32 0, i32 0
  %call9 = call i64 @Fappend(i64 2, i64* %arraydecay)
  store i64 %call9, i64* %p, align 8
  br label %while.cond

if.end:                                           ; preds = %land.lhs.true, %while.body
  %14 = load i64, i64* %annotations, align 8
  store i64 %14, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 340), align 8
  %15 = load i64, i64* %p, align 8
  %sub10 = sub nsw i64 %15, 3
  %16 = inttoptr i64 %sub10 to i8*
  %17 = bitcast i8* %16 to %struct.Lisp_Cons*
  %car11 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %17, i32 0, i32 0
  %18 = load i64, i64* %car11, align 8
  %19 = load i64, i64* %start.addr, align 8
  %20 = load i64, i64* %end.addr, align 8
  %call12 = call i64 @call2(i64 %18, i64 %19, i64 %20)
  store i64 %call12, i64* %res, align 8
  %21 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %22 = load %struct.buffer*, %struct.buffer** %given_buffer, align 8
  %cmp13 = icmp ne %struct.buffer* %21, %22
  br i1 %cmp13, label %if.then.15, label %if.end.21

if.then.15:                                       ; preds = %if.end
  %call16 = call i64 @Fcurrent_buffer()
  %23 = load i64, i64* @Vwrite_region_annotation_buffers, align 8
  %call17 = call i64 @Fcons(i64 %call16, i64 %23)
  store i64 %call17, i64* @Vwrite_region_annotation_buffers, align 8
  %24 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %24, i32 0, i32 77
  %25 = load i64, i64* %begv, align 8
  %call18 = call i64 @make_natnum(i64 %25)
  store i64 %call18, i64* %start.addr, align 8
  %26 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %26, i32 0, i32 79
  %27 = load i64, i64* %zv, align 8
  %call19 = call i64 @make_natnum(i64 %27)
  store i64 %call19, i64* %end.addr, align 8
  %call20 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call20, i64* %annotations, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.15, %if.end
  %28 = load i64, i64* %res, align 8
  %call22 = call i64 @Flength(i64 %28)
  %29 = load i64, i64* %annotations, align 8
  %30 = load i64, i64* %res, align 8
  %call23 = call i64 @builtin_lisp_symbol(i32 237)
  %call24 = call i64 @merge(i64 %29, i64 %30, i64 %call23)
  store i64 %call24, i64* %annotations, align 8
  %31 = load i64, i64* %p, align 8
  %sub25 = sub nsw i64 %31, 3
  %32 = inttoptr i64 %sub25 to i8*
  %33 = bitcast i8* %32 to %struct.Lisp_Cons*
  %u26 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %33, i32 0, i32 1
  %cdr27 = bitcast %union.anon* %u26 to i64*
  %34 = load i64, i64* %cdr27, align 8
  store i64 %34, i64* %p, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %35 = load i8, i8* @auto_saving, align 1
  %tobool28 = trunc i8 %35 to i1
  br i1 %tobool28, label %land.lhs.true.30, label %if.else

land.lhs.true.30:                                 ; preds = %while.end
  %36 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %auto_save_file_format_ = getelementptr inbounds %struct.buffer, %struct.buffer* %36, i32 0, i32 42
  %37 = load i64, i64* %auto_save_file_format_, align 8
  %call31 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp32 = icmp eq i64 %37, %call31
  br i1 %cmp32, label %if.else, label %if.then.34

if.then.34:                                       ; preds = %land.lhs.true.30
  %38 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %auto_save_file_format_35 = getelementptr inbounds %struct.buffer, %struct.buffer* %38, i32 0, i32 42
  %39 = load i64, i64* %auto_save_file_format_35, align 8
  store i64 %39, i64* %p, align 8
  br label %if.end.36

if.else:                                          ; preds = %land.lhs.true.30, %while.end
  %40 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %file_format_ = getelementptr inbounds %struct.buffer, %struct.buffer* %40, i32 0, i32 41
  %41 = load i64, i64* %file_format_, align 8
  store i64 %41, i64* %p, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.else, %if.then.34
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.36
  %42 = load i64, i64* %p, align 8
  %and37 = and i64 %42, 7
  %conv38 = trunc i64 %and37 to i32
  %cmp39 = icmp eq i32 %conv38, 3
  br i1 %cmp39, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %43 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  store %struct.buffer* %43, %struct.buffer** %given_buffer41, align 8
  %44 = load i64, i64* %annotations, align 8
  store i64 %44, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 340), align 8
  %call42 = call i64 @builtin_lisp_symbol(i32 453)
  %45 = load i64, i64* %p, align 8
  %sub43 = sub nsw i64 %45, 3
  %46 = inttoptr i64 %sub43 to i8*
  %47 = bitcast i8* %46 to %struct.Lisp_Cons*
  %car44 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %47, i32 0, i32 0
  %48 = load i64, i64* %car44, align 8
  %49 = load i64, i64* %start.addr, align 8
  %50 = load i64, i64* %end.addr, align 8
  %51 = load i64, i64* %original_buffer, align 8
  %52 = load i32, i32* %i, align 4
  %conv45 = sext i32 %52 to i64
  %shl = shl i64 %conv45, 2
  %add = add i64 %shl, 2
  %call46 = call i64 @call5(i64 %call42, i64 %48, i64 %49, i64 %50, i64 %51, i64 %add)
  store i64 %call46, i64* %res, align 8
  %53 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %54 = load %struct.buffer*, %struct.buffer** %given_buffer41, align 8
  %cmp47 = icmp ne %struct.buffer* %53, %54
  br i1 %cmp47, label %if.then.49, label %if.end.55

if.then.49:                                       ; preds = %for.body
  %55 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv50 = getelementptr inbounds %struct.buffer, %struct.buffer* %55, i32 0, i32 77
  %56 = load i64, i64* %begv50, align 8
  %call51 = call i64 @make_natnum(i64 %56)
  store i64 %call51, i64* %start.addr, align 8
  %57 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv52 = getelementptr inbounds %struct.buffer, %struct.buffer* %57, i32 0, i32 79
  %58 = load i64, i64* %zv52, align 8
  %call53 = call i64 @make_natnum(i64 %58)
  store i64 %call53, i64* %end.addr, align 8
  %call54 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call54, i64* %annotations, align 8
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.49, %for.body
  %59 = load i64, i64* %res, align 8
  %and56 = and i64 %59, 7
  %conv57 = trunc i64 %and56 to i32
  %cmp58 = icmp eq i32 %conv57, 3
  br i1 %cmp58, label %if.then.60, label %if.end.63

if.then.60:                                       ; preds = %if.end.55
  %60 = load i64, i64* %annotations, align 8
  %61 = load i64, i64* %res, align 8
  %call61 = call i64 @builtin_lisp_symbol(i32 237)
  %call62 = call i64 @merge(i64 %60, i64 %61, i64 %call61)
  store i64 %call62, i64* %annotations, align 8
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.60, %if.end.55
  br label %for.inc

for.inc:                                          ; preds = %if.end.63
  %62 = load i64, i64* %p, align 8
  %sub64 = sub nsw i64 %62, 3
  %63 = inttoptr i64 %sub64 to i8*
  %64 = bitcast i8* %63 to %struct.Lisp_Cons*
  %u65 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %64, i32 0, i32 1
  %cdr66 = bitcast %union.anon* %u65 to i64*
  %65 = load i64, i64* %cdr66, align 8
  store i64 %65, i64* %p, align 8
  %66 = load i32, i32* %i, align 4
  %inc = add nsw i32 %66, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %67 = load i64, i64* %annotations, align 8
  ret i64 %67
}

; Function Attrs: nounwind uwtable
define internal i64 @choose_write_coding_system(i64 %start, i64 %end, i64 %filename, i64 %append, i64 %visit, i64 %lockname, %struct.coding_system* %coding) #5 {
entry:
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %filename.addr = alloca i64, align 8
  %append.addr = alloca i64, align 8
  %visit.addr = alloca i64, align 8
  %lockname.addr = alloca i64, align 8
  %coding.addr = alloca %struct.coding_system*, align 8
  %val = alloca i64, align 8
  %eol_parent = alloca i64, align 8
  %using_default_coding = alloca i8, align 1
  %force_raw_text = alloca i8, align 1
  %coding_systems = alloca i64, align 8
  %.compoundliteral = alloca [7 x i64], align 8
  %spec = alloca i64, align 8
  %attrs = alloca i64, align 8
  %dflt = alloca i64, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  store i64 %filename, i64* %filename.addr, align 8
  store i64 %append, i64* %append.addr, align 8
  store i64 %visit, i64* %visit.addr, align 8
  store i64 %lockname, i64* %lockname.addr, align 8
  store %struct.coding_system* %coding, %struct.coding_system** %coding.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %eol_parent, align 8
  %0 = load i8, i8* @auto_saving, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %filename_ = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 2
  %2 = load i64, i64* %filename_, align 8
  %3 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %auto_save_file_name_ = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i32 0, i32 6
  %4 = load i64, i64* %auto_save_file_name_, align 8
  %call1 = call i64 @Fstring_equal(i64 %2, i64 %4)
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %call1, %call2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %call3 = call i64 @builtin_lisp_symbol(i32 989)
  store i64 %call3, i64* %val, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 973)
  store i64 %call4, i64* %eol_parent, align 8
  br label %if.end.148

if.else:                                          ; preds = %land.lhs.true, %entry
  %5 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 36), align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp6 = icmp eq i64 %5, %call5
  br i1 %cmp6, label %if.else.18, label %if.then.7

if.then.7:                                        ; preds = %if.else
  %6 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 36), align 8
  store i64 %6, i64* %val, align 8
  %7 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 427), align 1
  %tobool8 = trunc i8 %7 to i1
  br i1 %tobool8, label %land.lhs.true.9, label %if.end

land.lhs.true.9:                                  ; preds = %if.then.7
  %8 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 264), align 8
  %call10 = call i64 @Ffboundp(i64 %8)
  %call11 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp12 = icmp eq i64 %call10, %call11
  br i1 %cmp12, label %if.end, label %if.then.13

if.then.13:                                       ; preds = %land.lhs.true.9
  %9 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 264), align 8
  %10 = load i64, i64* %start.addr, align 8
  %11 = load i64, i64* %end.addr, align 8
  %call14 = call i64 @builtin_lisp_symbol(i32 901)
  %12 = load i64, i64* %val, align 8
  %call15 = call i64 @list2(i64 %call14, i64 %12)
  %call16 = call i64 @builtin_lisp_symbol(i32 0)
  %13 = load i64, i64* %filename.addr, align 8
  %call17 = call i64 @call5(i64 %9, i64 %10, i64 %11, i64 %call15, i64 %call16, i64 %13)
  store i64 %call17, i64* %val, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.13, %land.lhs.true.9, %if.then.7
  br label %if.end.147

if.else.18:                                       ; preds = %if.else
  store i8 0, i8* %using_default_coding, align 1
  store i8 0, i8* %force_raw_text, align 1
  %14 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %buffer_file_coding_system_ = getelementptr inbounds %struct.buffer, %struct.buffer* %14, i32 0, i32 40
  %15 = load i64, i64* %buffer_file_coding_system_, align 8
  store i64 %15, i64* %val, align 8
  %16 = load i64, i64* %val, align 8
  %call19 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp20 = icmp eq i64 %16, %call19
  br i1 %cmp20, label %if.then.26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.18
  %call21 = call i64 @builtin_lisp_symbol(i32 221)
  %call22 = call i64 @builtin_lisp_symbol(i32 0)
  %call23 = call i64 @Flocal_variable_p(i64 %call21, i64 %call22)
  %call24 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp25 = icmp eq i64 %call23, %call24
  br i1 %cmp25, label %if.then.26, label %if.end.32

if.then.26:                                       ; preds = %lor.lhs.false, %if.else.18
  %call27 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call27, i64* %val, align 8
  %17 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_ = getelementptr inbounds %struct.buffer, %struct.buffer* %17, i32 0, i32 39
  %18 = load i64, i64* %enable_multibyte_characters_, align 8
  %call28 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp29 = icmp eq i64 %18, %call28
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.then.26
  store i8 1, i8* %force_raw_text, align 1
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.then.26
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %lor.lhs.false
  %19 = load i64, i64* %val, align 8
  %call33 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp34 = icmp eq i64 %19, %call33
  br i1 %cmp34, label %if.then.35, label %if.end.54

if.then.35:                                       ; preds = %if.end.32
  %arrayinit.begin = getelementptr inbounds [7 x i64], [7 x i64]* %.compoundliteral, i64 0, i64 0
  %call36 = call i64 @builtin_lisp_symbol(i32 1040)
  store i64 %call36, i64* %arrayinit.begin
  %arrayinit.element = getelementptr inbounds i64, i64* %arrayinit.begin, i64 1
  %20 = load i64, i64* %start.addr, align 8
  store i64 %20, i64* %arrayinit.element
  %arrayinit.element37 = getelementptr inbounds i64, i64* %arrayinit.element, i64 1
  %21 = load i64, i64* %end.addr, align 8
  store i64 %21, i64* %arrayinit.element37
  %arrayinit.element38 = getelementptr inbounds i64, i64* %arrayinit.element37, i64 1
  %22 = load i64, i64* %filename.addr, align 8
  store i64 %22, i64* %arrayinit.element38
  %arrayinit.element39 = getelementptr inbounds i64, i64* %arrayinit.element38, i64 1
  %23 = load i64, i64* %append.addr, align 8
  store i64 %23, i64* %arrayinit.element39
  %arrayinit.element40 = getelementptr inbounds i64, i64* %arrayinit.element39, i64 1
  %24 = load i64, i64* %visit.addr, align 8
  store i64 %24, i64* %arrayinit.element40
  %arrayinit.element41 = getelementptr inbounds i64, i64* %arrayinit.element40, i64 1
  %25 = load i64, i64* %lockname.addr, align 8
  store i64 %25, i64* %arrayinit.element41
  %arraydecay = getelementptr inbounds [7 x i64], [7 x i64]* %.compoundliteral, i32 0, i32 0
  %call42 = call i64 @Ffind_operation_coding_system(i64 7, i64* %arraydecay)
  store i64 %call42, i64* %coding_systems, align 8
  %26 = load i64, i64* %coding_systems, align 8
  %and = and i64 %26, 7
  %conv = trunc i64 %and to i32
  %cmp43 = icmp eq i32 %conv, 3
  br i1 %cmp43, label %land.lhs.true.45, label %if.end.53

land.lhs.true.45:                                 ; preds = %if.then.35
  %27 = load i64, i64* %coding_systems, align 8
  %sub = sub nsw i64 %27, 3
  %28 = inttoptr i64 %sub to i8*
  %29 = bitcast i8* %28 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %29, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %30 = load i64, i64* %cdr, align 8
  %call46 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp47 = icmp eq i64 %30, %call46
  br i1 %cmp47, label %if.end.53, label %if.then.49

if.then.49:                                       ; preds = %land.lhs.true.45
  %31 = load i64, i64* %coding_systems, align 8
  %sub50 = sub nsw i64 %31, 3
  %32 = inttoptr i64 %sub50 to i8*
  %33 = bitcast i8* %32 to %struct.Lisp_Cons*
  %u51 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %33, i32 0, i32 1
  %cdr52 = bitcast %union.anon* %u51 to i64*
  %34 = load i64, i64* %cdr52, align 8
  store i64 %34, i64* %val, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.49, %land.lhs.true.45, %if.then.35
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.end.32
  %35 = load i64, i64* %val, align 8
  %call55 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp56 = icmp eq i64 %35, %call55
  br i1 %cmp56, label %if.then.58, label %if.end.60

if.then.58:                                       ; preds = %if.end.54
  %36 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %buffer_file_coding_system_59 = getelementptr inbounds %struct.buffer, %struct.buffer* %36, i32 0, i32 40
  %37 = load i64, i64* %buffer_file_coding_system_59, align 8
  store i64 %37, i64* %val, align 8
  store i8 1, i8* %using_default_coding, align 1
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.58, %if.end.54
  %38 = load i64, i64* %val, align 8
  %call61 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp62 = icmp eq i64 %38, %call61
  br i1 %cmp62, label %if.end.104, label %land.lhs.true.64

land.lhs.true.64:                                 ; preds = %if.end.60
  %39 = load i8, i8* %force_raw_text, align 1
  %tobool65 = trunc i8 %39 to i1
  br i1 %tobool65, label %if.end.104, label %if.then.66

if.then.66:                                       ; preds = %land.lhs.true.64
  br label %do.body

do.body:                                          ; preds = %if.then.66
  %40 = load i64, i64* @Vcoding_system_hash_table, align 8
  %call67 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %40)
  %41 = load i64, i64* %val, align 8
  %call68 = call i64 @hash_lookup(%struct.Lisp_Hash_Table* %call67, i64 %41, i64* null)
  %cmp69 = icmp slt i64 %call68, 0
  br i1 %cmp69, label %land.lhs.true.71, label %if.end.78

land.lhs.true.71:                                 ; preds = %do.body
  %42 = load i64, i64* %val, align 8
  %call72 = call i64 @Fcheck_coding_system(i64 %42)
  %call73 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp74 = icmp eq i64 %call72, %call73
  br i1 %cmp74, label %if.then.76, label %if.end.78

if.then.76:                                       ; preds = %land.lhs.true.71
  %call77 = call i64 @builtin_lisp_symbol(i32 280)
  %43 = load i64, i64* %val, align 8
  %44 = call i64 @wrong_type_argument(i64 %call77, i64 %43) #8
  unreachable

if.end.78:                                        ; preds = %land.lhs.true.71, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.78
  br label %do.body.79

do.body.79:                                       ; preds = %do.end
  %45 = load i64, i64* %val, align 8
  %46 = load i64, i64* @Vcoding_system_hash_table, align 8
  %call80 = call i64 @builtin_lisp_symbol(i32 0)
  %call81 = call i64 @Fgethash(i64 %45, i64 %46, i64 %call80)
  store i64 %call81, i64* %spec, align 8
  %47 = load i64, i64* %spec, align 8
  %call82 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp83 = icmp eq i64 %47, %call82
  br i1 %cmp83, label %if.then.85, label %if.end.89

if.then.85:                                       ; preds = %do.body.79
  %48 = load i64, i64* %val, align 8
  %call86 = call i64 @Fcheck_coding_system(i64 %48)
  %49 = load i64, i64* %val, align 8
  %50 = load i64, i64* @Vcoding_system_hash_table, align 8
  %call87 = call i64 @builtin_lisp_symbol(i32 0)
  %call88 = call i64 @Fgethash(i64 %49, i64 %50, i64 %call87)
  store i64 %call88, i64* %spec, align 8
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.85, %do.body.79
  %51 = load i64, i64* %spec, align 8
  %call90 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp91 = icmp eq i64 %51, %call90
  br i1 %cmp91, label %if.then.93, label %if.end.95

if.then.93:                                       ; preds = %if.end.89
  %call94 = call i64 @builtin_lisp_symbol(i32 280)
  %52 = load i64, i64* %val, align 8
  %53 = call i64 @wrong_type_argument(i64 %call94, i64 %52) #8
  unreachable

if.end.95:                                        ; preds = %if.end.89
  br label %do.end.96

do.end.96:                                        ; preds = %if.end.95
  %54 = load i64, i64* %spec, align 8
  %call97 = call i64 @AREF(i64 %54, i64 0)
  store i64 %call97, i64* %attrs, align 8
  %55 = load i64, i64* %attrs, align 8
  %call98 = call i64 @AREF(i64 %55, i64 3)
  %call99 = call i64 @builtin_lisp_symbol(i32 788)
  %cmp100 = icmp eq i64 %call98, %call99
  br i1 %cmp100, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %do.end.96
  store i8 1, i8* %force_raw_text, align 1
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.102, %do.end.96
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %land.lhs.true.64, %if.end.60
  %56 = load i8, i8* %force_raw_text, align 1
  %tobool105 = trunc i8 %56 to i1
  br i1 %tobool105, label %if.end.133, label %land.lhs.true.106

land.lhs.true.106:                                ; preds = %if.end.104
  %57 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 264), align 8
  %call107 = call i64 @Ffboundp(i64 %57)
  %call108 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp109 = icmp eq i64 %call107, %call108
  br i1 %cmp109, label %if.end.133, label %if.then.111

if.then.111:                                      ; preds = %land.lhs.true.106
  %58 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 264), align 8
  %59 = load i64, i64* %start.addr, align 8
  %60 = load i64, i64* %end.addr, align 8
  %61 = load i64, i64* %val, align 8
  %call112 = call i64 @builtin_lisp_symbol(i32 0)
  %62 = load i64, i64* %filename.addr, align 8
  %call113 = call i64 @call5(i64 %58, i64 %59, i64 %60, i64 %61, i64 %call112, i64 %62)
  store i64 %call113, i64* %val, align 8
  %63 = load i64, i64* %val, align 8
  %call114 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp115 = icmp eq i64 %63, %call114
  br i1 %cmp115, label %if.end.132, label %if.then.117

if.then.117:                                      ; preds = %if.then.111
  br label %do.body.118

do.body.118:                                      ; preds = %if.then.117
  %64 = load i64, i64* @Vcoding_system_hash_table, align 8
  %call119 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %64)
  %65 = load i64, i64* %val, align 8
  %call120 = call i64 @hash_lookup(%struct.Lisp_Hash_Table* %call119, i64 %65, i64* null)
  %cmp121 = icmp slt i64 %call120, 0
  br i1 %cmp121, label %land.lhs.true.123, label %if.end.130

land.lhs.true.123:                                ; preds = %do.body.118
  %66 = load i64, i64* %val, align 8
  %call124 = call i64 @Fcheck_coding_system(i64 %66)
  %call125 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp126 = icmp eq i64 %call124, %call125
  br i1 %cmp126, label %if.then.128, label %if.end.130

if.then.128:                                      ; preds = %land.lhs.true.123
  %call129 = call i64 @builtin_lisp_symbol(i32 280)
  %67 = load i64, i64* %val, align 8
  %68 = call i64 @wrong_type_argument(i64 %call129, i64 %67) #8
  unreachable

if.end.130:                                       ; preds = %land.lhs.true.123, %do.body.118
  br label %do.end.131

do.end.131:                                       ; preds = %if.end.130
  br label %if.end.132

if.end.132:                                       ; preds = %do.end.131, %if.then.111
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %land.lhs.true.106, %if.end.104
  %69 = load i8, i8* %using_default_coding, align 1
  %tobool134 = trunc i8 %69 to i1
  br i1 %tobool134, label %if.end.142, label %if.then.135

if.then.135:                                      ; preds = %if.end.133
  %70 = load i64, i64* getelementptr inbounds (%struct.buffer, %struct.buffer* @buffer_defaults, i32 0, i32 40), align 8
  store i64 %70, i64* %dflt, align 8
  %71 = load i64, i64* %dflt, align 8
  %call136 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp137 = icmp eq i64 %71, %call136
  br i1 %cmp137, label %if.end.141, label %if.then.139

if.then.139:                                      ; preds = %if.then.135
  %72 = load i64, i64* %val, align 8
  %73 = load i64, i64* %dflt, align 8
  %call140 = call i64 @coding_inherit_eol_type(i64 %72, i64 %73)
  store i64 %call140, i64* %val, align 8
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.139, %if.then.135
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.141, %if.end.133
  %74 = load i8, i8* %force_raw_text, align 1
  %tobool143 = trunc i8 %74 to i1
  br i1 %tobool143, label %if.then.144, label %if.end.146

if.then.144:                                      ; preds = %if.end.142
  %75 = load i64, i64* %val, align 8
  %call145 = call i64 @raw_text_coding_system(i64 %75)
  store i64 %call145, i64* %val, align 8
  br label %if.end.146

if.end.146:                                       ; preds = %if.then.144, %if.end.142
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146, %if.end
  br label %if.end.148

if.end.148:                                       ; preds = %if.end.147, %if.then
  %76 = load i64, i64* %val, align 8
  %77 = load i64, i64* %eol_parent, align 8
  %call149 = call i64 @coding_inherit_eol_type(i64 %76, i64 %77)
  store i64 %call149, i64* %val, align 8
  %78 = load i64, i64* %val, align 8
  %79 = load %struct.coding_system*, %struct.coding_system** %coding.addr, align 8
  call void @setup_coding_system(i64 %78, %struct.coding_system* %79)
  %80 = load i64, i64* %start.addr, align 8
  %call150 = call zeroext i1 @STRINGP(i64 %80)
  br i1 %call150, label %if.end.158, label %land.lhs.true.151

land.lhs.true.151:                                ; preds = %if.end.148
  %81 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %selective_display_ = getelementptr inbounds %struct.buffer, %struct.buffer* %81, i32 0, i32 32
  %82 = load i64, i64* %selective_display_, align 8
  %call152 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp153 = icmp eq i64 %82, %call152
  br i1 %cmp153, label %if.end.158, label %if.then.155

if.then.155:                                      ; preds = %land.lhs.true.151
  %83 = load %struct.coding_system*, %struct.coding_system** %coding.addr, align 8
  %mode = getelementptr inbounds %struct.coding_system, %struct.coding_system* %83, i32 0, i32 1
  %bf.load = load i32, i32* %mode, align 8
  %bf.lshr = lshr i32 %bf.load, 14
  %bf.clear = and i32 %bf.lshr, 31
  %or = or i32 %bf.clear, 2
  %bf.load156 = load i32, i32* %mode, align 8
  %bf.value = and i32 %or, 31
  %bf.shl = shl i32 %bf.value, 14
  %bf.clear157 = and i32 %bf.load156, -507905
  %bf.set = or i32 %bf.clear157, %bf.shl
  store i32 %bf.set, i32* %mode, align 8
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.155, %land.lhs.true.151, %if.end.148
  %84 = load i64, i64* %val, align 8
  ret i64 %84
}

declare void @lock_file(i64) #1

declare zeroext i1 @NUMBERP(i64) #1

; Function Attrs: nounwind uwtable
define internal zeroext i1 @a_write(i32 %desc, i64 %string, i64 %pos, i64 %nchars, i64* %annot, %struct.coding_system* %coding) #5 {
entry:
  %retval = alloca i1, align 1
  %desc.addr = alloca i32, align 4
  %string.addr = alloca i64, align 8
  %pos.addr = alloca i64, align 8
  %nchars.addr = alloca i64, align 8
  %annot.addr = alloca i64*, align 8
  %coding.addr = alloca %struct.coding_system*, align 8
  %tem = alloca i64, align 8
  %nextpos = alloca i64, align 8
  %lastpos = alloca i64, align 8
  store i32 %desc, i32* %desc.addr, align 4
  store i64 %string, i64* %string.addr, align 8
  store i64 %pos, i64* %pos.addr, align 8
  store i64 %nchars, i64* %nchars.addr, align 8
  store i64* %annot, i64** %annot.addr, align 8
  store %struct.coding_system* %coding, %struct.coding_system** %coding.addr, align 8
  %0 = load i64, i64* %pos.addr, align 8
  %1 = load i64, i64* %nchars.addr, align 8
  %add = add nsw i64 %0, %1
  store i64 %add, i64* %lastpos, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.32, %entry
  %2 = load i64*, i64** %annot.addr, align 8
  %3 = load i64, i64* %2, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %3, %call
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %4 = load i64*, i64** %annot.addr, align 8
  %5 = load i64, i64* %4, align 8
  %and = and i64 %5, 7
  %conv = trunc i64 %and to i32
  %cmp1 = icmp eq i32 %conv, 3
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %6 = phi i1 [ true, %while.cond ], [ %cmp1, %lor.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %7 = load i64*, i64** %annot.addr, align 8
  %8 = load i64, i64* %7, align 8
  %call3 = call i64 @Fcar(i64 %8)
  %call4 = call i64 @Fcar_safe(i64 %call3)
  store i64 %call4, i64* %tem, align 8
  %9 = load i64, i64* %pos.addr, align 8
  %sub = sub nsw i64 %9, 1
  store i64 %sub, i64* %nextpos, align 8
  %10 = load i64, i64* %tem, align 8
  %and5 = and i64 %10, 7
  %conv6 = trunc i64 %and5 to i32
  %and7 = and i32 %conv6, -5
  %cmp8 = icmp eq i32 %and7, 2
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %11 = load i64, i64* %tem, align 8
  %shr = ashr i64 %11, 2
  store i64 %shr, i64* %nextpos, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %12 = load i64, i64* %nextpos, align 8
  %13 = load i64, i64* %pos.addr, align 8
  %cmp10 = icmp sge i64 %12, %13
  br i1 %cmp10, label %land.lhs.true, label %if.then.14

land.lhs.true:                                    ; preds = %if.end
  %14 = load i64, i64* %nextpos, align 8
  %15 = load i64, i64* %lastpos, align 8
  %cmp12 = icmp sle i64 %14, %15
  br i1 %cmp12, label %if.end.16, label %if.then.14

if.then.14:                                       ; preds = %land.lhs.true, %if.end
  %16 = load i32, i32* %desc.addr, align 4
  %17 = load i64, i64* %string.addr, align 8
  %18 = load i64, i64* %pos.addr, align 8
  %19 = load i64, i64* %lastpos, align 8
  %20 = load %struct.coding_system*, %struct.coding_system** %coding.addr, align 8
  %call15 = call zeroext i1 @e_write(i32 %16, i64 %17, i64 %18, i64 %19, %struct.coding_system* %20)
  store i1 %call15, i1* %retval
  br label %return

if.end.16:                                        ; preds = %land.lhs.true
  %21 = load i64, i64* %nextpos, align 8
  %22 = load i64, i64* %pos.addr, align 8
  %cmp17 = icmp sgt i64 %21, %22
  br i1 %cmp17, label %if.then.19, label %if.end.23

if.then.19:                                       ; preds = %if.end.16
  %23 = load i32, i32* %desc.addr, align 4
  %24 = load i64, i64* %string.addr, align 8
  %25 = load i64, i64* %pos.addr, align 8
  %26 = load i64, i64* %nextpos, align 8
  %27 = load %struct.coding_system*, %struct.coding_system** %coding.addr, align 8
  %call20 = call zeroext i1 @e_write(i32 %23, i64 %24, i64 %25, i64 %26, %struct.coding_system* %27)
  br i1 %call20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %if.then.19
  store i1 false, i1* %retval
  br label %return

if.end.22:                                        ; preds = %if.then.19
  %28 = load i64, i64* %nextpos, align 8
  store i64 %28, i64* %pos.addr, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end.16
  %29 = load i64*, i64** %annot.addr, align 8
  %30 = load i64, i64* %29, align 8
  %call24 = call i64 @Fcar(i64 %30)
  %call25 = call i64 @Fcdr(i64 %call24)
  store i64 %call25, i64* %tem, align 8
  %31 = load i64, i64* %tem, align 8
  %call26 = call zeroext i1 @STRINGP(i64 %31)
  br i1 %call26, label %if.then.27, label %if.end.32

if.then.27:                                       ; preds = %if.end.23
  %32 = load i32, i32* %desc.addr, align 4
  %33 = load i64, i64* %tem, align 8
  %34 = load i64, i64* %tem, align 8
  %call28 = call i64 @SCHARS(i64 %34)
  %35 = load %struct.coding_system*, %struct.coding_system** %coding.addr, align 8
  %call29 = call zeroext i1 @e_write(i32 %32, i64 %33, i64 0, i64 %call28, %struct.coding_system* %35)
  br i1 %call29, label %if.end.31, label %if.then.30

if.then.30:                                       ; preds = %if.then.27
  store i1 false, i1* %retval
  br label %return

if.end.31:                                        ; preds = %if.then.27
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.end.23
  %36 = load i64*, i64** %annot.addr, align 8
  %37 = load i64, i64* %36, align 8
  %call33 = call i64 @Fcdr(i64 %37)
  %38 = load i64*, i64** %annot.addr, align 8
  store i64 %call33, i64* %38, align 8
  br label %while.cond

while.end:                                        ; preds = %lor.end
  store i1 true, i1* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.30, %if.then.21, %if.then.14
  %39 = load i1, i1* %retval
  ret i1 %39
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @e_write(i32 %desc, i64 %string, i64 %start, i64 %end, %struct.coding_system* %coding) #5 {
entry:
  %retval = alloca i1, align 1
  %desc.addr = alloca i32, align 4
  %string.addr = alloca i64, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %coding.addr = alloca %struct.coding_system*, align 8
  %nchars = alloca i64, align 8
  %start_byte = alloca i64, align 8
  %end_byte = alloca i64, align 8
  %nchars67 = alloca i64, align 8
  %buf = alloca i8*, align 8
  store i32 %desc, i32* %desc.addr, align 4
  store i64 %string, i64* %string.addr, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  store %struct.coding_system* %coding, %struct.coding_system** %coding.addr, align 8
  %0 = load i64, i64* %string.addr, align 8
  %call = call zeroext i1 @STRINGP(i64 %0)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* %start.addr, align 8
  %1 = load i64, i64* %string.addr, align 8
  %call1 = call i64 @SCHARS(i64 %1)
  store i64 %call1, i64* %end.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.163, %if.end
  %2 = load i64, i64* %start.addr, align 8
  %3 = load i64, i64* %end.addr, align 8
  %cmp = icmp slt i64 %2, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i64, i64* %string.addr, align 8
  %call2 = call zeroext i1 @STRINGP(i64 %4)
  br i1 %call2, label %if.then.3, label %if.else.35

if.then.3:                                        ; preds = %while.body
  %5 = load i64, i64* %string.addr, align 8
  %call4 = call i64 @SCHARS(i64 %5)
  %6 = load i64, i64* %string.addr, align 8
  %call5 = call i64 @SBYTES(i64 %6)
  %cmp6 = icmp slt i64 %call4, %call5
  %7 = load %struct.coding_system*, %struct.coding_system** %coding.addr, align 8
  %src_multibyte = getelementptr inbounds %struct.coding_system, %struct.coding_system* %7, i32 0, i32 1
  %8 = zext i1 %cmp6 to i32
  %bf.load = load i32, i32* %src_multibyte, align 8
  %bf.shl = shl i32 %8, 19
  %bf.clear = and i32 %bf.load, -524289
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, i32* %src_multibyte, align 8
  %bf.result.cast = trunc i32 %8 to i8
  %tobool = trunc i8 %bf.result.cast to i1
  %9 = load %struct.coding_system*, %struct.coding_system** %coding.addr, align 8
  %src_multibyte7 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %9, i32 0, i32 1
  %bf.load8 = load i32, i32* %src_multibyte7, align 8
  %bf.lshr = lshr i32 %bf.load8, 19
  %bf.clear9 = and i32 %bf.lshr, 1
  %bf.cast = trunc i32 %bf.clear9 to i1
  br i1 %bf.cast, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.3
  %10 = load %struct.coding_system*, %struct.coding_system** %coding.addr, align 8
  %common_flags = getelementptr inbounds %struct.coding_system, %struct.coding_system* %10, i32 0, i32 1
  %bf.load10 = load i32, i32* %common_flags, align 8
  %bf.clear11 = and i32 %bf.load10, 16383
  %and = and i32 %bf.clear11, 2048
  %tobool12 = icmp ne i32 %and, 0
  br i1 %tobool12, label %if.then.19, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false
  %11 = load %struct.coding_system*, %struct.coding_system** %coding.addr, align 8
  %mode = getelementptr inbounds %struct.coding_system, %struct.coding_system* %11, i32 0, i32 1
  %bf.load14 = load i32, i32* %mode, align 8
  %bf.lshr15 = lshr i32 %bf.load14, 14
  %bf.clear16 = and i32 %bf.lshr15, 31
  %and17 = and i32 %bf.clear16, 2
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %lor.lhs.false.13, %lor.lhs.false, %if.then.3
  %12 = load i64, i64* %end.addr, align 8
  %13 = load i64, i64* %start.addr, align 8
  %sub = sub nsw i64 %12, %13
  %cmp20 = icmp slt i64 %sub, 8388608
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.19
  %14 = load i64, i64* %end.addr, align 8
  %15 = load i64, i64* %start.addr, align 8
  %sub21 = sub nsw i64 %14, %15
  br label %cond.end

cond.false:                                       ; preds = %if.then.19
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub21, %cond.true ], [ 8388608, %cond.false ]
  store i64 %cond, i64* %nchars, align 8
  %16 = load i64, i64* %nchars, align 8
  %cmp22 = icmp eq i64 %16, 8388608
  br i1 %cmp22, label %if.then.23, label %if.end.27

if.then.23:                                       ; preds = %cond.end
  %17 = load %struct.coding_system*, %struct.coding_system** %coding.addr, align 8
  %raw_destination = getelementptr inbounds %struct.coding_system, %struct.coding_system* %17, i32 0, i32 1
  %bf.load24 = load i32, i32* %raw_destination, align 8
  %bf.clear25 = and i32 %bf.load24, -4194305
  %bf.set26 = or i32 %bf.clear25, 4194304
  store i32 %bf.set26, i32* %raw_destination, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.23, %cond.end
  %18 = load %struct.coding_system*, %struct.coding_system** %coding.addr, align 8
  %19 = load i64, i64* %string.addr, align 8
  %20 = load i64, i64* %start.addr, align 8
  %21 = load i64, i64* %string.addr, align 8
  %22 = load i64, i64* %start.addr, align 8
  %call28 = call i64 @string_char_to_byte(i64 %21, i64 %22)
  %23 = load i64, i64* %start.addr, align 8
  %24 = load i64, i64* %nchars, align 8
  %add = add nsw i64 %23, %24
  %25 = load i64, i64* %string.addr, align 8
  %26 = load i64, i64* %start.addr, align 8
  %27 = load i64, i64* %nchars, align 8
  %add29 = add nsw i64 %26, %27
  %call30 = call i64 @string_char_to_byte(i64 %25, i64 %add29)
  %call31 = call i64 @builtin_lisp_symbol(i32 901)
  call void @encode_coding_object(%struct.coding_system* %18, i64 %19, i64 %20, i64 %call28, i64 %add, i64 %call30, i64 %call31)
  br label %if.end.34

if.else:                                          ; preds = %lor.lhs.false.13
  %28 = load i64, i64* %string.addr, align 8
  %29 = load %struct.coding_system*, %struct.coding_system** %coding.addr, align 8
  %dst_object = getelementptr inbounds %struct.coding_system, %struct.coding_system* %29, i32 0, i32 21
  store i64 %28, i64* %dst_object, align 8
  %30 = load i64, i64* %string.addr, align 8
  %call32 = call i64 @SCHARS(i64 %30)
  %31 = load %struct.coding_system*, %struct.coding_system** %coding.addr, align 8
  %consumed_char = getelementptr inbounds %struct.coding_system, %struct.coding_system* %31, i32 0, i32 11
  store i64 %call32, i64* %consumed_char, align 8
  %32 = load i64, i64* %string.addr, align 8
  %call33 = call i64 @SBYTES(i64 %32)
  %33 = load %struct.coding_system*, %struct.coding_system** %coding.addr, align 8
  %produced = getelementptr inbounds %struct.coding_system, %struct.coding_system* %33, i32 0, i32 8
  store i64 %call33, i64* %produced, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.else, %if.end.27
  br label %if.end.110

if.else.35:                                       ; preds = %while.body
  %34 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %35 = load i64, i64* %start.addr, align 8
  %call36 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %34, i64 %35)
  store i64 %call36, i64* %start_byte, align 8
  %36 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %37 = load i64, i64* %end.addr, align 8
  %call37 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %36, i64 %37)
  store i64 %call37, i64* %end_byte, align 8
  %38 = load i64, i64* %end.addr, align 8
  %39 = load i64, i64* %start.addr, align 8
  %sub38 = sub nsw i64 %38, %39
  %40 = load i64, i64* %end_byte, align 8
  %41 = load i64, i64* %start_byte, align 8
  %sub39 = sub nsw i64 %40, %41
  %cmp40 = icmp slt i64 %sub38, %sub39
  %42 = load %struct.coding_system*, %struct.coding_system** %coding.addr, align 8
  %src_multibyte41 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %42, i32 0, i32 1
  %43 = zext i1 %cmp40 to i32
  %bf.load42 = load i32, i32* %src_multibyte41, align 8
  %bf.shl43 = shl i32 %43, 19
  %bf.clear44 = and i32 %bf.load42, -524289
  %bf.set45 = or i32 %bf.clear44, %bf.shl43
  store i32 %bf.set45, i32* %src_multibyte41, align 8
  %bf.result.cast46 = trunc i32 %43 to i8
  %tobool47 = trunc i8 %bf.result.cast46 to i1
  %44 = load %struct.coding_system*, %struct.coding_system** %coding.addr, align 8
  %src_multibyte48 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %44, i32 0, i32 1
  %bf.load49 = load i32, i32* %src_multibyte48, align 8
  %bf.lshr50 = lshr i32 %bf.load49, 19
  %bf.clear51 = and i32 %bf.lshr50, 1
  %bf.cast52 = trunc i32 %bf.clear51 to i1
  br i1 %bf.cast52, label %if.then.66, label %lor.lhs.false.53

lor.lhs.false.53:                                 ; preds = %if.else.35
  %45 = load %struct.coding_system*, %struct.coding_system** %coding.addr, align 8
  %common_flags54 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %45, i32 0, i32 1
  %bf.load55 = load i32, i32* %common_flags54, align 8
  %bf.clear56 = and i32 %bf.load55, 16383
  %and57 = and i32 %bf.clear56, 2048
  %tobool58 = icmp ne i32 %and57, 0
  br i1 %tobool58, label %if.then.66, label %lor.lhs.false.59

lor.lhs.false.59:                                 ; preds = %lor.lhs.false.53
  %46 = load %struct.coding_system*, %struct.coding_system** %coding.addr, align 8
  %mode60 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %46, i32 0, i32 1
  %bf.load61 = load i32, i32* %mode60, align 8
  %bf.lshr62 = lshr i32 %bf.load61, 14
  %bf.clear63 = and i32 %bf.lshr62, 31
  %and64 = and i32 %bf.clear63, 2
  %tobool65 = icmp ne i32 %and64, 0
  br i1 %tobool65, label %if.then.66, label %if.else.87

if.then.66:                                       ; preds = %lor.lhs.false.59, %lor.lhs.false.53, %if.else.35
  %47 = load i64, i64* %end.addr, align 8
  %48 = load i64, i64* %start.addr, align 8
  %sub68 = sub nsw i64 %47, %48
  %cmp69 = icmp slt i64 %sub68, 8388608
  br i1 %cmp69, label %cond.true.70, label %cond.false.72

cond.true.70:                                     ; preds = %if.then.66
  %49 = load i64, i64* %end.addr, align 8
  %50 = load i64, i64* %start.addr, align 8
  %sub71 = sub nsw i64 %49, %50
  br label %cond.end.73

cond.false.72:                                    ; preds = %if.then.66
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.false.72, %cond.true.70
  %cond74 = phi i64 [ %sub71, %cond.true.70 ], [ 8388608, %cond.false.72 ]
  store i64 %cond74, i64* %nchars67, align 8
  %51 = load i64, i64* %nchars67, align 8
  %cmp75 = icmp eq i64 %51, 8388608
  br i1 %cmp75, label %if.then.76, label %if.end.81

if.then.76:                                       ; preds = %cond.end.73
  %52 = load %struct.coding_system*, %struct.coding_system** %coding.addr, align 8
  %raw_destination77 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %52, i32 0, i32 1
  %bf.load78 = load i32, i32* %raw_destination77, align 8
  %bf.clear79 = and i32 %bf.load78, -4194305
  %bf.set80 = or i32 %bf.clear79, 4194304
  store i32 %bf.set80, i32* %raw_destination77, align 8
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.76, %cond.end.73
  %53 = load %struct.coding_system*, %struct.coding_system** %coding.addr, align 8
  %call82 = call i64 @Fcurrent_buffer()
  %54 = load i64, i64* %start.addr, align 8
  %55 = load i64, i64* %start_byte, align 8
  %56 = load i64, i64* %start.addr, align 8
  %57 = load i64, i64* %nchars67, align 8
  %add83 = add nsw i64 %56, %57
  %58 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %59 = load i64, i64* %start.addr, align 8
  %60 = load i64, i64* %nchars67, align 8
  %add84 = add nsw i64 %59, %60
  %call85 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %58, i64 %add84)
  %call86 = call i64 @builtin_lisp_symbol(i32 901)
  call void @encode_coding_object(%struct.coding_system* %53, i64 %call82, i64 %54, i64 %55, i64 %add83, i64 %call85, i64 %call86)
  br label %if.end.109

if.else.87:                                       ; preds = %lor.lhs.false.59
  %call88 = call i64 @builtin_lisp_symbol(i32 0)
  %61 = load %struct.coding_system*, %struct.coding_system** %coding.addr, align 8
  %dst_object89 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %61, i32 0, i32 21
  store i64 %call88, i64* %dst_object89, align 8
  %62 = load i64, i64* %start_byte, align 8
  %63 = load %struct.coding_system*, %struct.coding_system** %coding.addr, align 8
  %dst_pos_byte = getelementptr inbounds %struct.coding_system, %struct.coding_system* %63, i32 0, i32 19
  store i64 %62, i64* %dst_pos_byte, align 8
  %64 = load i64, i64* %start.addr, align 8
  %65 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %65, i32 0, i32 73
  %66 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %gpt = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %66, i32 0, i32 1
  %67 = load i64, i64* %gpt, align 8
  %cmp90 = icmp sge i64 %64, %67
  br i1 %cmp90, label %if.then.95, label %lor.lhs.false.91

lor.lhs.false.91:                                 ; preds = %if.else.87
  %68 = load i64, i64* %end.addr, align 8
  %69 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text92 = getelementptr inbounds %struct.buffer, %struct.buffer* %69, i32 0, i32 73
  %70 = load %struct.buffer_text*, %struct.buffer_text** %text92, align 8
  %gpt93 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %70, i32 0, i32 1
  %71 = load i64, i64* %gpt93, align 8
  %cmp94 = icmp sle i64 %68, %71
  br i1 %cmp94, label %if.then.95, label %if.else.100

if.then.95:                                       ; preds = %lor.lhs.false.91, %if.else.87
  %72 = load i64, i64* %end.addr, align 8
  %73 = load i64, i64* %start.addr, align 8
  %sub96 = sub nsw i64 %72, %73
  %74 = load %struct.coding_system*, %struct.coding_system** %coding.addr, align 8
  %consumed_char97 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %74, i32 0, i32 11
  store i64 %sub96, i64* %consumed_char97, align 8
  %75 = load i64, i64* %end_byte, align 8
  %76 = load i64, i64* %start_byte, align 8
  %sub98 = sub nsw i64 %75, %76
  %77 = load %struct.coding_system*, %struct.coding_system** %coding.addr, align 8
  %produced99 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %77, i32 0, i32 8
  store i64 %sub98, i64* %produced99, align 8
  br label %if.end.108

if.else.100:                                      ; preds = %lor.lhs.false.91
  %78 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text101 = getelementptr inbounds %struct.buffer, %struct.buffer* %78, i32 0, i32 73
  %79 = load %struct.buffer_text*, %struct.buffer_text** %text101, align 8
  %gpt102 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %79, i32 0, i32 1
  %80 = load i64, i64* %gpt102, align 8
  %81 = load i64, i64* %start.addr, align 8
  %sub103 = sub nsw i64 %80, %81
  %82 = load %struct.coding_system*, %struct.coding_system** %coding.addr, align 8
  %consumed_char104 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %82, i32 0, i32 11
  store i64 %sub103, i64* %consumed_char104, align 8
  %83 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text105 = getelementptr inbounds %struct.buffer, %struct.buffer* %83, i32 0, i32 73
  %84 = load %struct.buffer_text*, %struct.buffer_text** %text105, align 8
  %gpt_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %84, i32 0, i32 3
  %85 = load i64, i64* %gpt_byte, align 8
  %86 = load i64, i64* %start_byte, align 8
  %sub106 = sub nsw i64 %85, %86
  %87 = load %struct.coding_system*, %struct.coding_system** %coding.addr, align 8
  %produced107 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %87, i32 0, i32 8
  store i64 %sub106, i64* %produced107, align 8
  br label %if.end.108

if.end.108:                                       ; preds = %if.else.100, %if.then.95
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.end.81
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %if.end.34
  %88 = load %struct.coding_system*, %struct.coding_system** %coding.addr, align 8
  %produced111 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %88, i32 0, i32 8
  %89 = load i64, i64* %produced111, align 8
  %cmp112 = icmp sgt i64 %89, 0
  br i1 %cmp112, label %if.then.113, label %if.end.163

if.then.113:                                      ; preds = %if.end.110
  %90 = load %struct.coding_system*, %struct.coding_system** %coding.addr, align 8
  %raw_destination114 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %90, i32 0, i32 1
  %bf.load115 = load i32, i32* %raw_destination114, align 8
  %bf.lshr116 = lshr i32 %bf.load115, 22
  %bf.clear117 = and i32 %bf.lshr116, 1
  %bf.cast118 = trunc i32 %bf.clear117 to i1
  br i1 %bf.cast118, label %cond.true.119, label %cond.false.120

cond.true.119:                                    ; preds = %if.then.113
  %91 = load %struct.coding_system*, %struct.coding_system** %coding.addr, align 8
  %destination = getelementptr inbounds %struct.coding_system, %struct.coding_system* %91, i32 0, i32 22
  %92 = load i8*, i8** %destination, align 8
  br label %cond.end.142

cond.false.120:                                   ; preds = %if.then.113
  %93 = load %struct.coding_system*, %struct.coding_system** %coding.addr, align 8
  %dst_object121 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %93, i32 0, i32 21
  %94 = load i64, i64* %dst_object121, align 8
  %call122 = call zeroext i1 @STRINGP(i64 %94)
  br i1 %call122, label %cond.true.123, label %cond.false.126

cond.true.123:                                    ; preds = %cond.false.120
  %95 = load %struct.coding_system*, %struct.coding_system** %coding.addr, align 8
  %dst_object124 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %95, i32 0, i32 21
  %96 = load i64, i64* %dst_object124, align 8
  %call125 = call i8* @SSDATA(i64 %96)
  br label %cond.end.140

cond.false.126:                                   ; preds = %cond.false.120
  %97 = load %struct.coding_system*, %struct.coding_system** %coding.addr, align 8
  %dst_pos_byte127 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %97, i32 0, i32 19
  %98 = load i64, i64* %dst_pos_byte127, align 8
  %99 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text128 = getelementptr inbounds %struct.buffer, %struct.buffer* %99, i32 0, i32 73
  %100 = load %struct.buffer_text*, %struct.buffer_text** %text128, align 8
  %gpt_byte129 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %100, i32 0, i32 3
  %101 = load i64, i64* %gpt_byte129, align 8
  %cmp130 = icmp sge i64 %98, %101
  br i1 %cmp130, label %cond.true.131, label %cond.false.133

cond.true.131:                                    ; preds = %cond.false.126
  %102 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text132 = getelementptr inbounds %struct.buffer, %struct.buffer* %102, i32 0, i32 73
  %103 = load %struct.buffer_text*, %struct.buffer_text** %text132, align 8
  %gap_size = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %103, i32 0, i32 5
  %104 = load i64, i64* %gap_size, align 8
  br label %cond.end.134

cond.false.133:                                   ; preds = %cond.false.126
  br label %cond.end.134

cond.end.134:                                     ; preds = %cond.false.133, %cond.true.131
  %cond135 = phi i64 [ %104, %cond.true.131 ], [ 0, %cond.false.133 ]
  %105 = load %struct.coding_system*, %struct.coding_system** %coding.addr, align 8
  %dst_pos_byte136 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %105, i32 0, i32 19
  %106 = load i64, i64* %dst_pos_byte136, align 8
  %add137 = add nsw i64 %cond135, %106
  %107 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text138 = getelementptr inbounds %struct.buffer, %struct.buffer* %107, i32 0, i32 73
  %108 = load %struct.buffer_text*, %struct.buffer_text** %text138, align 8
  %beg = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %108, i32 0, i32 0
  %109 = load i8*, i8** %beg, align 8
  %add.ptr = getelementptr inbounds i8, i8* %109, i64 %add137
  %add.ptr139 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  br label %cond.end.140

cond.end.140:                                     ; preds = %cond.end.134, %cond.true.123
  %cond141 = phi i8* [ %call125, %cond.true.123 ], [ %add.ptr139, %cond.end.134 ]
  br label %cond.end.142

cond.end.142:                                     ; preds = %cond.end.140, %cond.true.119
  %cond143 = phi i8* [ %92, %cond.true.119 ], [ %cond141, %cond.end.140 ]
  store i8* %cond143, i8** %buf, align 8
  %110 = load i32, i32* %desc.addr, align 4
  %111 = load i8*, i8** %buf, align 8
  %112 = load %struct.coding_system*, %struct.coding_system** %coding.addr, align 8
  %produced144 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %112, i32 0, i32 8
  %113 = load i64, i64* %produced144, align 8
  %call145 = call i64 @emacs_write_sig(i32 %110, i8* %111, i64 %113)
  %114 = load %struct.coding_system*, %struct.coding_system** %coding.addr, align 8
  %produced146 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %114, i32 0, i32 8
  %115 = load i64, i64* %produced146, align 8
  %sub147 = sub nsw i64 %115, %call145
  store i64 %sub147, i64* %produced146, align 8
  %116 = load %struct.coding_system*, %struct.coding_system** %coding.addr, align 8
  %raw_destination148 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %116, i32 0, i32 1
  %bf.load149 = load i32, i32* %raw_destination148, align 8
  %bf.lshr150 = lshr i32 %bf.load149, 22
  %bf.clear151 = and i32 %bf.lshr150, 1
  %bf.cast152 = trunc i32 %bf.clear151 to i1
  br i1 %bf.cast152, label %if.then.153, label %if.end.158

if.then.153:                                      ; preds = %cond.end.142
  %117 = load %struct.coding_system*, %struct.coding_system** %coding.addr, align 8
  %destination154 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %117, i32 0, i32 22
  %118 = load i8*, i8** %destination154, align 8
  call void @xfree(i8* %118)
  %119 = load %struct.coding_system*, %struct.coding_system** %coding.addr, align 8
  %raw_destination155 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %119, i32 0, i32 1
  %bf.load156 = load i32, i32* %raw_destination155, align 8
  %bf.clear157 = and i32 %bf.load156, -4194305
  store i32 %bf.clear157, i32* %raw_destination155, align 8
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.153, %cond.end.142
  %120 = load %struct.coding_system*, %struct.coding_system** %coding.addr, align 8
  %produced159 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %120, i32 0, i32 8
  %121 = load i64, i64* %produced159, align 8
  %tobool160 = icmp ne i64 %121, 0
  br i1 %tobool160, label %if.then.161, label %if.end.162

if.then.161:                                      ; preds = %if.end.158
  store i1 false, i1* %retval
  br label %return

if.end.162:                                       ; preds = %if.end.158
  br label %if.end.163

if.end.163:                                       ; preds = %if.end.162, %if.end.110
  %122 = load %struct.coding_system*, %struct.coding_system** %coding.addr, align 8
  %consumed_char164 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %122, i32 0, i32 11
  %123 = load i64, i64* %consumed_char164, align 8
  %124 = load i64, i64* %start.addr, align 8
  %add165 = add nsw i64 %124, %123
  store i64 %add165, i64* %start.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i1 true, i1* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.161
  %125 = load i1, i1* %retval
  ret i1 %125
}

declare i32 @fsync(i32) #1

declare { i64, i64 } @invalid_timespec() #1

declare zeroext i1 @timespec_valid_p(i64, i64) #1

declare i64 @Fbuffer_live_p(i64) #1

declare i64 @Fset_buffer(i64) #1

declare zeroext i1 @FUNCTIONP(i64) #1

declare i64 @Fstring_equal(i64, i64) #1

declare void @message_with_string(i8*, i64, i1 zeroext) #1

; Function Attrs: nounwind uwtable
define i64 @Fcar_less_than_car(i64 %a, i64 %b) #5 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %.compoundliteral = alloca [2 x i64], align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  %arrayinit.begin = getelementptr inbounds [2 x i64], [2 x i64]* %.compoundliteral, i64 0, i64 0
  %0 = load i64, i64* %a.addr, align 8
  %call = call i64 @Fcar(i64 %0)
  store i64 %call, i64* %arrayinit.begin
  %arrayinit.element = getelementptr inbounds i64, i64* %arrayinit.begin, i64 1
  %1 = load i64, i64* %b.addr, align 8
  %call1 = call i64 @Fcar(i64 %1)
  store i64 %call1, i64* %arrayinit.element
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %.compoundliteral, i32 0, i32 0
  %call2 = call i64 @Flss(i64 2, i64* %arraydecay)
  ret i64 %call2
}

declare i64 @Flss(i64, i64*) #1

declare i64 @Fcar(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fverify_visited_file_modtime(i64 %buf) #5 {
entry:
  %retval = alloca i64, align 8
  %buf.addr = alloca i64, align 8
  %b = alloca %struct.buffer*, align 8
  %st = alloca %struct.stat, align 8
  %handler = alloca i64, align 8
  %filename = alloca i64, align 8
  %mtime = alloca %struct.timespec, align 8
  %coerce = alloca %struct.timespec, align 8
  %coerce23 = alloca %struct.timespec, align 8
  store i64 %buf, i64* %buf.addr, align 8
  %0 = load i64, i64* %buf.addr, align 8
  %call = call %struct.buffer* @decode_buffer(i64 %0)
  store %struct.buffer* %call, %struct.buffer** %b, align 8
  %1 = load %struct.buffer*, %struct.buffer** %b, align 8
  %filename_ = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 2
  %2 = load i64, i64* %filename_, align 8
  %call1 = call zeroext i1 @STRINGP(i64 %2)
  br i1 %call1, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call2 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call2, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.buffer*, %struct.buffer** %b, align 8
  %modtime = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i32 0, i32 85
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %modtime, i32 0, i32 1
  %4 = load i64, i64* %tv_nsec, align 8
  %cmp = icmp eq i64 %4, -2
  br i1 %cmp, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %call4 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call4, i64* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %5 = load %struct.buffer*, %struct.buffer** %b, align 8
  %filename_6 = getelementptr inbounds %struct.buffer, %struct.buffer* %5, i32 0, i32 2
  %6 = load i64, i64* %filename_6, align 8
  %call7 = call i64 @builtin_lisp_symbol(i32 999)
  %call8 = call i64 @Ffind_file_name_handler(i64 %6, i64 %call7)
  store i64 %call8, i64* %handler, align 8
  %7 = load i64, i64* %handler, align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp10 = icmp eq i64 %7, %call9
  br i1 %cmp10, label %if.end.14, label %if.then.11

if.then.11:                                       ; preds = %if.end.5
  %8 = load i64, i64* %handler, align 8
  %call12 = call i64 @builtin_lisp_symbol(i32 999)
  %9 = load i64, i64* %buf.addr, align 8
  %call13 = call i64 @call2(i64 %8, i64 %call12, i64 %9)
  store i64 %call13, i64* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.5
  %10 = load %struct.buffer*, %struct.buffer** %b, align 8
  %filename_15 = getelementptr inbounds %struct.buffer, %struct.buffer* %10, i32 0, i32 2
  %11 = load i64, i64* %filename_15, align 8
  %call16 = call i64 @encode_file_name(i64 %11)
  store i64 %call16, i64* %filename, align 8
  %12 = load i64, i64* %filename, align 8
  %call17 = call i8* @SSDATA(i64 %12)
  %call18 = call i32 @stat(i8* %call17, %struct.stat* %st) #6
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.14
  %call20 = call { i64, i64 } @get_stat_mtime(%struct.stat* %st) #10
  %13 = bitcast %struct.timespec* %coerce to { i64, i64 }*
  %14 = getelementptr { i64, i64 }, { i64, i64 }* %13, i32 0, i32 0
  %15 = extractvalue { i64, i64 } %call20, 0
  store i64 %15, i64* %14, align 8
  %16 = getelementptr { i64, i64 }, { i64, i64 }* %13, i32 0, i32 1
  %17 = extractvalue { i64, i64 } %call20, 1
  store i64 %17, i64* %16, align 8
  %18 = bitcast %struct.timespec* %mtime to i8*
  %19 = bitcast %struct.timespec* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 16, i32 8, i1 false)
  br label %cond.end

cond.false:                                       ; preds = %if.end.14
  %call21 = call i32* @__errno_location() #9
  %20 = load i32, i32* %call21, align 4
  %call22 = call { i64, i64 } @time_error_value(i32 %20)
  %21 = bitcast %struct.timespec* %coerce23 to { i64, i64 }*
  %22 = getelementptr { i64, i64 }, { i64, i64 }* %21, i32 0, i32 0
  %23 = extractvalue { i64, i64 } %call22, 0
  store i64 %23, i64* %22, align 8
  %24 = getelementptr { i64, i64 }, { i64, i64 }* %21, i32 0, i32 1
  %25 = extractvalue { i64, i64 } %call22, 1
  store i64 %25, i64* %24, align 8
  %26 = bitcast %struct.timespec* %mtime to i8*
  %27 = bitcast %struct.timespec* %coerce23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 16, i32 8, i1 false)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %28 = load %struct.buffer*, %struct.buffer** %b, align 8
  %modtime24 = getelementptr inbounds %struct.buffer, %struct.buffer* %28, i32 0, i32 85
  %29 = bitcast %struct.timespec* %mtime to { i64, i64 }*
  %30 = getelementptr { i64, i64 }, { i64, i64 }* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 1
  %32 = getelementptr { i64, i64 }, { i64, i64 }* %29, i32 0, i32 1
  %33 = load i64, i64* %32, align 1
  %34 = bitcast %struct.timespec* %modtime24 to { i64, i64 }*
  %35 = getelementptr { i64, i64 }, { i64, i64 }* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 1
  %37 = getelementptr { i64, i64 }, { i64, i64 }* %34, i32 0, i32 1
  %38 = load i64, i64* %37, align 1
  %call25 = call i32 @timespec_cmp(i64 %31, i64 %33, i64 %36, i64 %38) #10
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %land.lhs.true, label %if.end.32

land.lhs.true:                                    ; preds = %cond.end
  %39 = load %struct.buffer*, %struct.buffer** %b, align 8
  %modtime_size = getelementptr inbounds %struct.buffer, %struct.buffer* %39, i32 0, i32 86
  %40 = load i64, i64* %modtime_size, align 8
  %cmp27 = icmp slt i64 %40, 0
  br i1 %cmp27, label %if.then.30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 8
  %41 = load i64, i64* %st_size, align 8
  %42 = load %struct.buffer*, %struct.buffer** %b, align 8
  %modtime_size28 = getelementptr inbounds %struct.buffer, %struct.buffer* %42, i32 0, i32 86
  %43 = load i64, i64* %modtime_size28, align 8
  %cmp29 = icmp eq i64 %41, %43
  br i1 %cmp29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %call31 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call31, i64* %retval
  br label %return

if.end.32:                                        ; preds = %lor.lhs.false, %cond.end
  %call33 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call33, i64* %retval
  br label %return

return:                                           ; preds = %if.end.32, %if.then.30, %if.then.11, %if.then.3, %if.then
  %44 = load i64, i64* %retval
  ret i64 %44
}

declare %struct.buffer* @decode_buffer(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fvisited_file_modtime() #5 {
entry:
  %retval = alloca i64, align 8
  %ns = alloca i32, align 4
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %modtime = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 85
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %modtime, i32 0, i32 1
  %1 = load i64, i64* %tv_nsec, align 8
  %conv = trunc i64 %1 to i32
  store i32 %conv, i32* %ns, align 4
  %2 = load i32, i32* %ns, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %ns, align 4
  %sub = sub nsw i32 -2, %3
  %conv2 = sext i32 %sub to i64
  %shl = shl i64 %conv2, 2
  %add = add i64 %shl, 2
  store i64 %add, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %modtime3 = getelementptr inbounds %struct.buffer, %struct.buffer* %4, i32 0, i32 85
  %5 = bitcast %struct.timespec* %modtime3 to { i64, i64 }*
  %6 = getelementptr { i64, i64 }, { i64, i64 }* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 1
  %8 = getelementptr { i64, i64 }, { i64, i64 }* %5, i32 0, i32 1
  %9 = load i64, i64* %8, align 1
  %call = call i64 @make_lisp_time(i64 %7, i64 %9)
  store i64 %call, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i64, i64* %retval
  ret i64 %10
}

declare i64 @make_lisp_time(i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fset_visited_file_modtime(i64 %time_flag) #5 {
entry:
  %retval = alloca i64, align 8
  %time_flag.addr = alloca i64, align 8
  %mtime = alloca %struct.timespec, align 8
  %coerce = alloca %struct.timespec, align 8
  %coerce20 = alloca %struct.timespec, align 8
  %filename = alloca i64, align 8
  %st = alloca %struct.stat, align 8
  %handler = alloca i64, align 8
  %coerce43 = alloca %struct.timespec, align 8
  store i64 %time_flag, i64* %time_flag.addr, align 8
  %0 = load i64, i64* %time_flag.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.else.22, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %time_flag.addr, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %and1 = and i32 %conv, -5
  %cmp2 = icmp eq i32 %and1, 2
  br i1 %cmp2, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  br label %do.body

do.body:                                          ; preds = %if.then.4
  %2 = load i64, i64* %time_flag.addr, align 8
  %and5 = and i64 %2, 7
  %conv6 = trunc i64 %and5 to i32
  %and7 = and i32 %conv6, -5
  %cmp8 = icmp eq i32 %and7, 2
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body
  br label %cond.end

cond.false:                                       ; preds = %do.body
  %call10 = call i64 @builtin_lisp_symbol(i32 559)
  %3 = load i64, i64* %time_flag.addr, align 8
  %4 = call i64 @wrong_type_argument(i64 %call10, i64 %3) #8
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %5, %cond.true
  %6 = load i64, i64* %time_flag.addr, align 8
  %shr = ashr i64 %6, 2
  %cmp11 = icmp sle i64 -1, %shr
  br i1 %cmp11, label %land.lhs.true, label %if.then.16

land.lhs.true:                                    ; preds = %cond.end
  %7 = load i64, i64* %time_flag.addr, align 8
  %shr13 = ashr i64 %7, 2
  %cmp14 = icmp sle i64 %shr13, 0
  br i1 %cmp14, label %if.end, label %if.then.16

if.then.16:                                       ; preds = %land.lhs.true, %cond.end
  %8 = load i64, i64* %time_flag.addr, align 8
  call void @args_out_of_range_3(i64 %8, i64 -2, i64 2) #8
  unreachable

if.end:                                           ; preds = %land.lhs.true
  br label %do.end

do.end:                                           ; preds = %if.end
  %9 = load i64, i64* %time_flag.addr, align 8
  %shr17 = ashr i64 %9, 2
  %sub = sub nsw i64 -2, %shr17
  %call18 = call { i64, i64 } @make_timespec(i64 0, i64 %sub)
  %10 = bitcast %struct.timespec* %coerce to { i64, i64 }*
  %11 = getelementptr { i64, i64 }, { i64, i64 }* %10, i32 0, i32 0
  %12 = extractvalue { i64, i64 } %call18, 0
  store i64 %12, i64* %11, align 8
  %13 = getelementptr { i64, i64 }, { i64, i64 }* %10, i32 0, i32 1
  %14 = extractvalue { i64, i64 } %call18, 1
  store i64 %14, i64* %13, align 8
  %15 = bitcast %struct.timespec* %mtime to i8*
  %16 = bitcast %struct.timespec* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 16, i32 8, i1 false)
  br label %if.end.21

if.else:                                          ; preds = %if.then
  %17 = load i64, i64* %time_flag.addr, align 8
  %call19 = call { i64, i64 } @lisp_time_argument(i64 %17)
  %18 = bitcast %struct.timespec* %coerce20 to { i64, i64 }*
  %19 = getelementptr { i64, i64 }, { i64, i64 }* %18, i32 0, i32 0
  %20 = extractvalue { i64, i64 } %call19, 0
  store i64 %20, i64* %19, align 8
  %21 = getelementptr { i64, i64 }, { i64, i64 }* %18, i32 0, i32 1
  %22 = extractvalue { i64, i64 } %call19, 1
  store i64 %22, i64* %21, align 8
  %23 = bitcast %struct.timespec* %mtime to i8*
  %24 = bitcast %struct.timespec* %coerce20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 16, i32 8, i1 false)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %do.end
  %25 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %modtime = getelementptr inbounds %struct.buffer, %struct.buffer* %25, i32 0, i32 85
  %26 = bitcast %struct.timespec* %modtime to i8*
  %27 = bitcast %struct.timespec* %mtime to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 16, i32 8, i1 false)
  %28 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %modtime_size = getelementptr inbounds %struct.buffer, %struct.buffer* %28, i32 0, i32 86
  store i64 -1, i64* %modtime_size, align 8
  br label %if.end.46

if.else.22:                                       ; preds = %entry
  %29 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %filename_ = getelementptr inbounds %struct.buffer, %struct.buffer* %29, i32 0, i32 2
  %30 = load i64, i64* %filename_, align 8
  %call23 = call i64 @builtin_lisp_symbol(i32 0)
  %call24 = call i64 @Fexpand_file_name(i64 %30, i64 %call23)
  store i64 %call24, i64* %filename, align 8
  %31 = load i64, i64* %filename, align 8
  %call25 = call i64 @builtin_lisp_symbol(i32 852)
  %call26 = call i64 @Ffind_file_name_handler(i64 %31, i64 %call25)
  store i64 %call26, i64* %handler, align 8
  %32 = load i64, i64* %handler, align 8
  %call27 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp28 = icmp eq i64 %32, %call27
  br i1 %cmp28, label %if.end.34, label %if.then.30

if.then.30:                                       ; preds = %if.else.22
  %33 = load i64, i64* %handler, align 8
  %call31 = call i64 @builtin_lisp_symbol(i32 852)
  %call32 = call i64 @builtin_lisp_symbol(i32 0)
  %call33 = call i64 @call2(i64 %33, i64 %call31, i64 %call32)
  store i64 %call33, i64* %retval
  br label %return

if.end.34:                                        ; preds = %if.else.22
  %34 = load i64, i64* %filename, align 8
  %call35 = call i64 @encode_file_name(i64 %34)
  store i64 %call35, i64* %filename, align 8
  %35 = load i64, i64* %filename, align 8
  %call36 = call i8* @SSDATA(i64 %35)
  %call37 = call i32 @stat(i8* %call36, %struct.stat* %st) #6
  %cmp38 = icmp sge i32 %call37, 0
  br i1 %cmp38, label %if.then.40, label %if.end.45

if.then.40:                                       ; preds = %if.end.34
  %36 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %modtime41 = getelementptr inbounds %struct.buffer, %struct.buffer* %36, i32 0, i32 85
  %call42 = call { i64, i64 } @get_stat_mtime(%struct.stat* %st) #10
  %37 = bitcast %struct.timespec* %coerce43 to { i64, i64 }*
  %38 = getelementptr { i64, i64 }, { i64, i64 }* %37, i32 0, i32 0
  %39 = extractvalue { i64, i64 } %call42, 0
  store i64 %39, i64* %38, align 8
  %40 = getelementptr { i64, i64 }, { i64, i64 }* %37, i32 0, i32 1
  %41 = extractvalue { i64, i64 } %call42, 1
  store i64 %41, i64* %40, align 8
  %42 = bitcast %struct.timespec* %modtime41 to i8*
  %43 = bitcast %struct.timespec* %coerce43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 16, i32 8, i1 false)
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 8
  %44 = load i64, i64* %st_size, align 8
  %45 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %modtime_size44 = getelementptr inbounds %struct.buffer, %struct.buffer* %45, i32 0, i32 86
  store i64 %44, i64* %modtime_size44, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.40, %if.end.34
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.end.21
  %call47 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call47, i64* %retval
  br label %return

return:                                           ; preds = %if.end.46, %if.then.30
  %46 = load i64, i64* %retval
  ret i64 %46
}

; Function Attrs: noreturn
declare void @args_out_of_range_3(i64, i64, i64) #3

declare { i64, i64 } @make_timespec(i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fdo_auto_save(i64 %no_message, i64 %current_only) #5 {
entry:
  %no_message.addr = alloca i64, align 8
  %current_only.addr = alloca i64, align 8
  %old = alloca %struct.buffer*, align 8
  %b = alloca %struct.buffer*, align 8
  %tail = alloca i64, align 8
  %buf = alloca i64, align 8
  %hook = alloca i64, align 8
  %auto_saved = alloca i8, align 1
  %do_handled_files = alloca i32, align 4
  %oquit = alloca i64, align 8
  %stream = alloca %struct._IO_FILE*, align 8
  %count = alloca i64, align 8
  %orig_minibuffer_auto_raise = alloca i8, align 1
  %old_message_p = alloca i8, align 1
  %auto_save_unwind = alloca %struct.auto_save_unwind, align 8
  %listfile = alloca i64, align 8
  %dir = alloca i64, align 8
  %before_time = alloca %struct.timespec, align 8
  %after_time = alloca %struct.timespec, align 8
  %coerce = alloca %struct.timespec, align 8
  store i64 %no_message, i64* %no_message.addr, align 8
  store i64 %current_only, i64* %current_only.addr, align 8
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  store %struct.buffer* %0, %struct.buffer** %old, align 8
  store i8 0, i8* %auto_saved, align 1
  store %struct._IO_FILE* null, %struct._IO_FILE** %stream, align 8
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %count, align 8
  %1 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 472), align 1
  %tobool = trunc i8 %1 to i1
  %frombool = zext i1 %tobool to i8
  store i8 %frombool, i8* %orig_minibuffer_auto_raise, align 1
  store i8 0, i8* %old_message_p, align 1
  %2 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 397), align 8
  %3 = load i64, i64* @specpdl_size, align 8
  %add = add nsw i64 %3, 40
  %cmp = icmp slt i64 %2, %add
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i64, i64* @specpdl_size, align 8
  %add1 = add nsw i64 %4, 40
  store i64 %add1, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 397), align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, i64* @minibuf_level, align 8
  %tobool2 = icmp ne i64 %5, 0
  br i1 %tobool2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %call4 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call4, i64* %no_message.addr, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %6 = load i64, i64* %no_message.addr, align 8
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp7 = icmp eq i64 %6, %call6
  br i1 %cmp7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end.5
  %call9 = call zeroext i1 @push_message()
  %frombool10 = zext i1 %call9 to i8
  store i8 %frombool10, i8* %old_message_p, align 1
  call void @record_unwind_protect_void(void ()* @pop_message_unwind)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.end.5
  %7 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  store i64 %7, i64* %oquit, align 8
  %call12 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call12, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call13 = call i64 @intern(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0))
  store i64 %call13, i64* %hook, align 8
  %8 = load i64, i64* %hook, align 8
  call void @safe_run_hooks(i64 %8)
  %9 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 10), align 8
  %call14 = call zeroext i1 @STRINGP(i64 %9)
  br i1 %call14, label %if.then.15, label %if.end.32

if.then.15:                                       ; preds = %if.end.11
  %10 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 10), align 8
  %call16 = call i64 @builtin_lisp_symbol(i32 0)
  %call17 = call i64 @Fexpand_file_name(i64 %10, i64 %call16)
  store i64 %call17, i64* %listfile, align 8
  %11 = load i64, i64* @Vrun_hooks, align 8
  %call18 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp19 = icmp eq i64 %11, %call18
  br i1 %cmp19, label %if.end.29, label %if.then.20

if.then.20:                                       ; preds = %if.then.15
  %12 = load i64, i64* %listfile, align 8
  %call21 = call i64 @Ffile_name_directory(i64 %12)
  store i64 %call21, i64* %dir, align 8
  %13 = load i64, i64* %dir, align 8
  %call22 = call i64 @Ffile_directory_p(i64 %13)
  %call23 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp24 = icmp eq i64 %call22, %call23
  br i1 %cmp24, label %if.then.25, label %if.end.28

if.then.25:                                       ; preds = %if.then.20
  %14 = load i64, i64* %dir, align 8
  %call26 = call i64 @builtin_lisp_symbol(i32 901)
  %call27 = call i64 @internal_condition_case_1(i64 (i64)* @do_auto_save_make_dir, i64 %14, i64 %call26, i64 (i64)* @do_auto_save_eh)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.25, %if.then.20
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then.15
  %15 = load i64, i64* %listfile, align 8
  %call30 = call i8* @SSDATA(i64 %15)
  %call31 = call %struct._IO_FILE* @emacs_fopen(i8* %call30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i32 0, i32 0))
  store %struct._IO_FILE* %call31, %struct._IO_FILE** %stream, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.29, %if.end.11
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %stream33 = getelementptr inbounds %struct.auto_save_unwind, %struct.auto_save_unwind* %auto_save_unwind, i32 0, i32 0
  store %struct._IO_FILE* %16, %struct._IO_FILE** %stream33, align 8
  %17 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 472), align 1
  %tobool34 = trunc i8 %17 to i1
  %auto_raise = getelementptr inbounds %struct.auto_save_unwind, %struct.auto_save_unwind* %auto_save_unwind, i32 0, i32 1
  %frombool35 = zext i1 %tobool34 to i8
  store i8 %frombool35, i8* %auto_raise, align 1
  %18 = bitcast %struct.auto_save_unwind* %auto_save_unwind to i8*
  call void @record_unwind_protect_ptr(void (i8*)* @do_auto_save_unwind, i8* %18)
  store i8 0, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 472), align 1
  store i8 1, i8* @auto_saving, align 1
  store i8 0, i8* @auto_save_error_occurred, align 1
  store i32 0, i32* %do_handled_files, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.177, %if.end.32
  %19 = load i32, i32* %do_handled_files, align 4
  %cmp36 = icmp slt i32 %19, 2
  br i1 %cmp36, label %for.body, label %for.end.178

for.body:                                         ; preds = %for.cond
  %20 = load i64, i64* @Vbuffer_alist, align 8
  store i64 %20, i64* %tail, align 8
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc, %for.body
  %21 = load i64, i64* %tail, align 8
  %and = and i64 %21, 7
  %conv = trunc i64 %and to i32
  %cmp38 = icmp eq i32 %conv, 3
  br i1 %cmp38, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.37
  %22 = load i64, i64* %tail, align 8
  %sub = sub nsw i64 %22, 3
  %23 = inttoptr i64 %sub to i8*
  %24 = bitcast i8* %23 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %24, i32 0, i32 0
  %25 = load i64, i64* %car, align 8
  %sub40 = sub nsw i64 %25, 3
  %26 = inttoptr i64 %sub40 to i8*
  %27 = bitcast i8* %26 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %27, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %28 = load i64, i64* %cdr, align 8
  store i64 %28, i64* %buf, align 8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.37
  %29 = phi i1 [ false, %for.cond.37 ], [ true, %land.rhs ]
  br i1 %29, label %for.body.41, label %for.end

for.body.41:                                      ; preds = %land.end
  %30 = load i64, i64* %buf, align 8
  %call42 = call %struct.buffer* @XBUFFER(i64 %30)
  store %struct.buffer* %call42, %struct.buffer** %b, align 8
  %31 = load %struct.buffer*, %struct.buffer** %b, align 8
  %auto_save_file_name_ = getelementptr inbounds %struct.buffer, %struct.buffer* %31, i32 0, i32 6
  %32 = load i64, i64* %auto_save_file_name_, align 8
  %call43 = call zeroext i1 @STRINGP(i64 %32)
  br i1 %call43, label %land.lhs.true, label %if.end.68

land.lhs.true:                                    ; preds = %for.body.41
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %cmp45 = icmp ne %struct._IO_FILE* %33, null
  br i1 %cmp45, label %land.lhs.true.47, label %if.end.68

land.lhs.true.47:                                 ; preds = %land.lhs.true
  %34 = load i32, i32* %do_handled_files, align 4
  %cmp48 = icmp eq i32 %34, 0
  br i1 %cmp48, label %if.then.50, label %if.end.68

if.then.50:                                       ; preds = %land.lhs.true.47
  call void @block_input()
  %35 = load %struct.buffer*, %struct.buffer** %b, align 8
  %filename_ = getelementptr inbounds %struct.buffer, %struct.buffer* %35, i32 0, i32 2
  %36 = load i64, i64* %filename_, align 8
  %call51 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp52 = icmp eq i64 %36, %call51
  br i1 %cmp52, label %if.end.60, label %if.then.54

if.then.54:                                       ; preds = %if.then.50
  %37 = load %struct.buffer*, %struct.buffer** %b, align 8
  %filename_55 = getelementptr inbounds %struct.buffer, %struct.buffer* %37, i32 0, i32 2
  %38 = load i64, i64* %filename_55, align 8
  %call56 = call i8* @SDATA(i64 %38)
  %39 = load %struct.buffer*, %struct.buffer** %b, align 8
  %filename_57 = getelementptr inbounds %struct.buffer, %struct.buffer* %39, i32 0, i32 2
  %40 = load i64, i64* %filename_57, align 8
  %call58 = call i64 @SBYTES(i64 %40)
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call59 = call i64 @fwrite(i8* %call56, i64 1, i64 %call58, %struct._IO_FILE* %41)
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.54, %if.then.50
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call61 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %42)
  %43 = load %struct.buffer*, %struct.buffer** %b, align 8
  %auto_save_file_name_62 = getelementptr inbounds %struct.buffer, %struct.buffer* %43, i32 0, i32 6
  %44 = load i64, i64* %auto_save_file_name_62, align 8
  %call63 = call i8* @SDATA(i64 %44)
  %45 = load %struct.buffer*, %struct.buffer** %b, align 8
  %auto_save_file_name_64 = getelementptr inbounds %struct.buffer, %struct.buffer* %45, i32 0, i32 6
  %46 = load i64, i64* %auto_save_file_name_64, align 8
  %call65 = call i64 @SBYTES(i64 %46)
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call66 = call i64 @fwrite(i8* %call63, i64 1, i64 %call65, %struct._IO_FILE* %47)
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call67 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %48)
  call void @unblock_input()
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.60, %land.lhs.true.47, %land.lhs.true, %for.body.41
  %49 = load i64, i64* %current_only.addr, align 8
  %call69 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp70 = icmp eq i64 %49, %call69
  br i1 %cmp70, label %if.end.76, label %land.lhs.true.72

land.lhs.true.72:                                 ; preds = %if.end.68
  %50 = load %struct.buffer*, %struct.buffer** %b, align 8
  %51 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp73 = icmp ne %struct.buffer* %50, %51
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %land.lhs.true.72
  br label %for.inc

if.end.76:                                        ; preds = %land.lhs.true.72, %if.end.68
  %52 = load %struct.buffer*, %struct.buffer** %b, align 8
  %base_buffer = getelementptr inbounds %struct.buffer, %struct.buffer* %52, i32 0, i32 81
  %53 = load %struct.buffer*, %struct.buffer** %base_buffer, align 8
  %tobool77 = icmp ne %struct.buffer* %53, null
  br i1 %tobool77, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.end.76
  br label %for.inc

if.end.79:                                        ; preds = %if.end.76
  %54 = load %struct.buffer*, %struct.buffer** %b, align 8
  %auto_save_file_name_80 = getelementptr inbounds %struct.buffer, %struct.buffer* %54, i32 0, i32 6
  %55 = load i64, i64* %auto_save_file_name_80, align 8
  %call81 = call zeroext i1 @STRINGP(i64 %55)
  br i1 %call81, label %land.lhs.true.83, label %if.end.173

land.lhs.true.83:                                 ; preds = %if.end.79
  %56 = load %struct.buffer*, %struct.buffer** %b, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %56, i32 0, i32 73
  %57 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %save_modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %57, i32 0, i32 8
  %58 = load i64, i64* %save_modiff, align 8
  %59 = load %struct.buffer*, %struct.buffer** %b, align 8
  %text84 = getelementptr inbounds %struct.buffer, %struct.buffer* %59, i32 0, i32 73
  %60 = load %struct.buffer_text*, %struct.buffer_text** %text84, align 8
  %modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %60, i32 0, i32 6
  %61 = load i64, i64* %modiff, align 8
  %cmp85 = icmp slt i64 %58, %61
  br i1 %cmp85, label %land.lhs.true.87, label %if.end.173

land.lhs.true.87:                                 ; preds = %land.lhs.true.83
  %62 = load %struct.buffer*, %struct.buffer** %b, align 8
  %auto_save_modified = getelementptr inbounds %struct.buffer, %struct.buffer* %62, i32 0, i32 87
  %63 = load i64, i64* %auto_save_modified, align 8
  %64 = load %struct.buffer*, %struct.buffer** %b, align 8
  %text88 = getelementptr inbounds %struct.buffer, %struct.buffer* %64, i32 0, i32 73
  %65 = load %struct.buffer_text*, %struct.buffer_text** %text88, align 8
  %modiff89 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %65, i32 0, i32 6
  %66 = load i64, i64* %modiff89, align 8
  %cmp90 = icmp slt i64 %63, %66
  br i1 %cmp90, label %land.lhs.true.92, label %if.end.173

land.lhs.true.92:                                 ; preds = %land.lhs.true.87
  %67 = load %struct.buffer*, %struct.buffer** %b, align 8
  %save_length_ = getelementptr inbounds %struct.buffer, %struct.buffer* %67, i32 0, i32 5
  %68 = load i64, i64* %save_length_, align 8
  %shr = ashr i64 %68, 2
  %cmp93 = icmp sge i64 %shr, 0
  br i1 %cmp93, label %land.lhs.true.95, label %if.end.173

land.lhs.true.95:                                 ; preds = %land.lhs.true.92
  %69 = load i32, i32* %do_handled_files, align 4
  %tobool96 = icmp ne i32 %69, 0
  br i1 %tobool96, label %if.then.103, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.95
  %70 = load %struct.buffer*, %struct.buffer** %b, align 8
  %auto_save_file_name_97 = getelementptr inbounds %struct.buffer, %struct.buffer* %70, i32 0, i32 6
  %71 = load i64, i64* %auto_save_file_name_97, align 8
  %call98 = call i64 @builtin_lisp_symbol(i32 1040)
  %call99 = call i64 @Ffind_file_name_handler(i64 %71, i64 %call98)
  %call100 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp101 = icmp eq i64 %call99, %call100
  br i1 %cmp101, label %if.then.103, label %if.end.173

if.then.103:                                      ; preds = %lor.lhs.false, %land.lhs.true.95
  %call104 = call { i64, i64 } @current_timespec()
  %72 = bitcast %struct.timespec* %before_time to { i64, i64 }*
  %73 = getelementptr { i64, i64 }, { i64, i64 }* %72, i32 0, i32 0
  %74 = extractvalue { i64, i64 } %call104, 0
  store i64 %74, i64* %73, align 8
  %75 = getelementptr { i64, i64 }, { i64, i64 }* %72, i32 0, i32 1
  %76 = extractvalue { i64, i64 } %call104, 1
  store i64 %76, i64* %75, align 8
  %77 = load %struct.buffer*, %struct.buffer** %b, align 8
  %auto_save_failure_time = getelementptr inbounds %struct.buffer, %struct.buffer* %77, i32 0, i32 89
  %78 = load i64, i64* %auto_save_failure_time, align 8
  %cmp105 = icmp sgt i64 %78, 0
  br i1 %cmp105, label %land.lhs.true.107, label %if.end.113

land.lhs.true.107:                                ; preds = %if.then.103
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %before_time, i32 0, i32 0
  %79 = load i64, i64* %tv_sec, align 8
  %80 = load %struct.buffer*, %struct.buffer** %b, align 8
  %auto_save_failure_time108 = getelementptr inbounds %struct.buffer, %struct.buffer* %80, i32 0, i32 89
  %81 = load i64, i64* %auto_save_failure_time108, align 8
  %sub109 = sub nsw i64 %79, %81
  %cmp110 = icmp slt i64 %sub109, 1200
  br i1 %cmp110, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %land.lhs.true.107
  br label %for.inc

if.end.113:                                       ; preds = %land.lhs.true.107, %if.then.103
  %82 = load %struct.buffer*, %struct.buffer** %b, align 8
  call void @set_buffer_internal(%struct.buffer* %82)
  %83 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 9), align 8
  %call114 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp115 = icmp eq i64 %83, %call114
  br i1 %cmp115, label %land.lhs.true.117, label %if.end.145

land.lhs.true.117:                                ; preds = %if.end.113
  %84 = load %struct.buffer*, %struct.buffer** %b, align 8
  %save_length_118 = getelementptr inbounds %struct.buffer, %struct.buffer* %84, i32 0, i32 5
  %85 = load i64, i64* %save_length_118, align 8
  %shr119 = ashr i64 %85, 2
  %mul = mul nsw i64 %shr119, 10
  %86 = load %struct.buffer*, %struct.buffer** %b, align 8
  %text120 = getelementptr inbounds %struct.buffer, %struct.buffer* %86, i32 0, i32 73
  %87 = load %struct.buffer_text*, %struct.buffer_text** %text120, align 8
  %z = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %87, i32 0, i32 2
  %88 = load i64, i64* %z, align 8
  %sub121 = sub nsw i64 %88, 1
  %mul122 = mul nsw i64 %sub121, 13
  %cmp123 = icmp sgt i64 %mul, %mul122
  br i1 %cmp123, label %land.lhs.true.125, label %if.end.145

land.lhs.true.125:                                ; preds = %land.lhs.true.117
  %89 = load %struct.buffer*, %struct.buffer** %b, align 8
  %save_length_126 = getelementptr inbounds %struct.buffer, %struct.buffer* %89, i32 0, i32 5
  %90 = load i64, i64* %save_length_126, align 8
  %shr127 = ashr i64 %90, 2
  %cmp128 = icmp sgt i64 %shr127, 5000
  br i1 %cmp128, label %land.lhs.true.130, label %if.end.145

land.lhs.true.130:                                ; preds = %land.lhs.true.125
  %91 = load %struct.buffer*, %struct.buffer** %b, align 8
  %filename_131 = getelementptr inbounds %struct.buffer, %struct.buffer* %91, i32 0, i32 2
  %92 = load i64, i64* %filename_131, align 8
  %call132 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp133 = icmp eq i64 %92, %call132
  br i1 %cmp133, label %if.end.145, label %land.lhs.true.135

land.lhs.true.135:                                ; preds = %land.lhs.true.130
  %93 = load i64, i64* %no_message.addr, align 8
  %call136 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp137 = icmp eq i64 %93, %call136
  br i1 %cmp137, label %if.then.139, label %if.end.145

if.then.139:                                      ; preds = %land.lhs.true.135
  %94 = load i8, i8* %orig_minibuffer_auto_raise, align 1
  %tobool140 = trunc i8 %94 to i1
  %frombool141 = zext i1 %tobool140 to i8
  store i8 %frombool141, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 472), align 1
  %95 = load %struct.buffer*, %struct.buffer** %b, align 8
  %name_ = getelementptr inbounds %struct.buffer, %struct.buffer* %95, i32 0, i32 1
  %96 = load i64, i64* %name_, align 8
  call void @message_with_string(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.49, i32 0, i32 0), i64 %96, i1 zeroext true)
  store i8 0, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 472), align 1
  %97 = load %struct.buffer*, %struct.buffer** %b, align 8
  %save_length_142 = getelementptr inbounds %struct.buffer, %struct.buffer* %97, i32 0, i32 5
  store i64 -2, i64* %save_length_142, align 8
  %call143 = call i64 @builtin_lisp_symbol(i32 0)
  %call144 = call i64 @Fsleep_for(i64 6, i64 %call143)
  br label %for.inc

if.end.145:                                       ; preds = %land.lhs.true.135, %land.lhs.true.130, %land.lhs.true.125, %land.lhs.true.117, %if.end.113
  %98 = load i8, i8* %auto_saved, align 1
  %tobool146 = trunc i8 %98 to i1
  br i1 %tobool146, label %if.end.152, label %land.lhs.true.147

land.lhs.true.147:                                ; preds = %if.end.145
  %99 = load i64, i64* %no_message.addr, align 8
  %call148 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp149 = icmp eq i64 %99, %call148
  br i1 %cmp149, label %if.then.151, label %if.end.152

if.then.151:                                      ; preds = %land.lhs.true.147
  call void @message1(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.50, i32 0, i32 0))
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.151, %land.lhs.true.147, %if.end.145
  %call153 = call i64 @builtin_lisp_symbol(i32 901)
  %call154 = call i64 @internal_condition_case(i64 ()* @auto_save_1, i64 %call153, i64 (i64)* @auto_save_error)
  store i8 1, i8* %auto_saved, align 1
  %100 = load %struct.buffer*, %struct.buffer** %b, align 8
  %text155 = getelementptr inbounds %struct.buffer, %struct.buffer* %100, i32 0, i32 73
  %101 = load %struct.buffer_text*, %struct.buffer_text** %text155, align 8
  %modiff156 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %101, i32 0, i32 6
  %102 = load i64, i64* %modiff156, align 8
  %103 = load %struct.buffer*, %struct.buffer** %b, align 8
  %auto_save_modified157 = getelementptr inbounds %struct.buffer, %struct.buffer* %103, i32 0, i32 87
  store i64 %102, i64* %auto_save_modified157, align 8
  %104 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text158 = getelementptr inbounds %struct.buffer, %struct.buffer* %104, i32 0, i32 73
  %105 = load %struct.buffer_text*, %struct.buffer_text** %text158, align 8
  %z159 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %105, i32 0, i32 2
  %106 = load i64, i64* %z159, align 8
  %sub160 = sub nsw i64 %106, 1
  %call161 = call i64 @make_natnum(i64 %sub160)
  %107 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %save_length_162 = getelementptr inbounds %struct.buffer, %struct.buffer* %107, i32 0, i32 5
  store i64 %call161, i64* %save_length_162, align 8
  %108 = load %struct.buffer*, %struct.buffer** %old, align 8
  call void @set_buffer_internal(%struct.buffer* %108)
  %call163 = call { i64, i64 } @current_timespec()
  %109 = bitcast %struct.timespec* %coerce to { i64, i64 }*
  %110 = getelementptr { i64, i64 }, { i64, i64 }* %109, i32 0, i32 0
  %111 = extractvalue { i64, i64 } %call163, 0
  store i64 %111, i64* %110, align 8
  %112 = getelementptr { i64, i64 }, { i64, i64 }* %109, i32 0, i32 1
  %113 = extractvalue { i64, i64 } %call163, 1
  store i64 %113, i64* %112, align 8
  %114 = bitcast %struct.timespec* %after_time to i8*
  %115 = bitcast %struct.timespec* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %114, i8* %115, i64 16, i32 8, i1 false)
  %tv_sec164 = getelementptr inbounds %struct.timespec, %struct.timespec* %after_time, i32 0, i32 0
  %116 = load i64, i64* %tv_sec164, align 8
  %tv_sec165 = getelementptr inbounds %struct.timespec, %struct.timespec* %before_time, i32 0, i32 0
  %117 = load i64, i64* %tv_sec165, align 8
  %sub166 = sub nsw i64 %116, %117
  %cmp167 = icmp sgt i64 %sub166, 60
  br i1 %cmp167, label %if.then.169, label %if.end.172

if.then.169:                                      ; preds = %if.end.152
  %tv_sec170 = getelementptr inbounds %struct.timespec, %struct.timespec* %after_time, i32 0, i32 0
  %118 = load i64, i64* %tv_sec170, align 8
  %119 = load %struct.buffer*, %struct.buffer** %b, align 8
  %auto_save_failure_time171 = getelementptr inbounds %struct.buffer, %struct.buffer* %119, i32 0, i32 89
  store i64 %118, i64* %auto_save_failure_time171, align 8
  br label %if.end.172

if.end.172:                                       ; preds = %if.then.169, %if.end.152
  br label %if.end.173

if.end.173:                                       ; preds = %if.end.172, %lor.lhs.false, %land.lhs.true.92, %land.lhs.true.87, %land.lhs.true.83, %if.end.79
  br label %for.inc

for.inc:                                          ; preds = %if.end.173, %if.then.139, %if.then.112, %if.then.78, %if.then.75
  %120 = load i64, i64* %tail, align 8
  %sub174 = sub nsw i64 %120, 3
  %121 = inttoptr i64 %sub174 to i8*
  %122 = bitcast i8* %121 to %struct.Lisp_Cons*
  %u175 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %122, i32 0, i32 1
  %cdr176 = bitcast %union.anon* %u175 to i64*
  %123 = load i64, i64* %cdr176, align 8
  store i64 %123, i64* %tail, align 8
  br label %for.cond.37

for.end:                                          ; preds = %land.end
  br label %for.inc.177

for.inc.177:                                      ; preds = %for.end
  %124 = load i32, i32* %do_handled_files, align 4
  %inc = add nsw i32 %124, 1
  store i32 %inc, i32* %do_handled_files, align 4
  br label %for.cond

for.end.178:                                      ; preds = %for.cond
  call void @record_auto_save()
  %125 = load i8, i8* %auto_saved, align 1
  %tobool179 = trunc i8 %125 to i1
  br i1 %tobool179, label %land.lhs.true.181, label %if.end.193

land.lhs.true.181:                                ; preds = %for.end.178
  %126 = load i64, i64* %no_message.addr, align 8
  %call182 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp183 = icmp eq i64 %126, %call182
  br i1 %cmp183, label %if.then.185, label %if.end.193

if.then.185:                                      ; preds = %land.lhs.true.181
  %127 = load i8, i8* %old_message_p, align 1
  %tobool186 = trunc i8 %127 to i1
  br i1 %tobool186, label %if.then.187, label %if.else

if.then.187:                                      ; preds = %if.then.185
  %call188 = call i64 @sit_for(i64 6, i1 zeroext false, i32 0)
  call void @restore_message()
  br label %if.end.192

if.else:                                          ; preds = %if.then.185
  %128 = load i8, i8* @auto_save_error_occurred, align 1
  %tobool189 = trunc i8 %128 to i1
  br i1 %tobool189, label %if.end.191, label %if.then.190

if.then.190:                                      ; preds = %if.else
  call void @message1(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.51, i32 0, i32 0))
  br label %if.end.191

if.end.191:                                       ; preds = %if.then.190, %if.else
  br label %if.end.192

if.end.192:                                       ; preds = %if.end.191, %if.then.187
  br label %if.end.193

if.end.193:                                       ; preds = %if.end.192, %land.lhs.true.181, %for.end.178
  %129 = load i64, i64* %oquit, align 8
  store i64 %129, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %130 = load i64, i64* %count, align 8
  %call194 = call i64 @builtin_lisp_symbol(i32 0)
  %call195 = call i64 @unbind_to(i64 %130, i64 %call194)
  %call196 = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call196
}

declare zeroext i1 @push_message() #1

declare void @record_unwind_protect_void(void ()*) #1

declare void @pop_message_unwind() #1

declare void @safe_run_hooks(i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @do_auto_save_make_dir(i64 %dir) #5 {
entry:
  %dir.addr = alloca i64, align 8
  %result = alloca i64, align 8
  store i64 %dir, i64* %dir.addr, align 8
  store i32 63, i32* @auto_saving_dir_umask, align 4
  %call = call i64 @builtin_lisp_symbol(i32 638)
  %0 = load i64, i64* %dir.addr, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 901)
  %call2 = call i64 @call2(i64 %call, i64 %0, i64 %call1)
  store i64 %call2, i64* %result, align 8
  store i32 0, i32* @auto_saving_dir_umask, align 4
  %1 = load i64, i64* %result, align 8
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define internal i64 @do_auto_save_eh(i64 %ignore) #5 {
entry:
  %ignore.addr = alloca i64, align 8
  store i64 %ignore, i64* %ignore.addr, align 8
  store i32 0, i32* @auto_saving_dir_umask, align 4
  %call = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call
}

declare %struct._IO_FILE* @emacs_fopen(i8*, i8*) #1

declare void @record_unwind_protect_ptr(void (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @do_auto_save_unwind(i8* %arg) #5 {
entry:
  %arg.addr = alloca i8*, align 8
  %p = alloca %struct.auto_save_unwind*, align 8
  %stream = alloca %struct._IO_FILE*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i8*, i8** %arg.addr, align 8
  %1 = bitcast i8* %0 to %struct.auto_save_unwind*
  store %struct.auto_save_unwind* %1, %struct.auto_save_unwind** %p, align 8
  %2 = load %struct.auto_save_unwind*, %struct.auto_save_unwind** %p, align 8
  %stream1 = getelementptr inbounds %struct.auto_save_unwind, %struct.auto_save_unwind* %2, i32 0, i32 0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %stream1, align 8
  store %struct._IO_FILE* %3, %struct._IO_FILE** %stream, align 8
  %4 = load %struct.auto_save_unwind*, %struct.auto_save_unwind** %p, align 8
  %auto_raise = getelementptr inbounds %struct.auto_save_unwind, %struct.auto_save_unwind* %4, i32 0, i32 1
  %5 = load i8, i8* %auto_raise, align 1
  %tobool = trunc i8 %5 to i1
  %frombool = zext i1 %tobool to i8
  store i8 %frombool, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 472), align 1
  store i8 0, i8* @auto_saving, align 1
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %cmp = icmp ne %struct._IO_FILE* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @block_input()
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call = call i32 @fclose(%struct._IO_FILE* %7)
  call void @unblock_input()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

declare { i64, i64 } @current_timespec() #1

declare i64 @Fsleep_for(i64, i64) #1

declare void @message1(i8*) #1

declare i64 @internal_condition_case(i64 ()*, i64, i64 (i64)*) #1

; Function Attrs: nounwind uwtable
define internal i64 @auto_save_1() #5 {
entry:
  %st = alloca %struct.stat, align 8
  %modes = alloca i64, align 8
  store i32 438, i32* @auto_save_mode_bits, align 4
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %filename_ = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 2
  %1 = load i64, i64* %filename_, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %1, %call
  br i1 %cmp, label %if.end.17, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %filename_1 = getelementptr inbounds %struct.buffer, %struct.buffer* %2, i32 0, i32 2
  %3 = load i64, i64* %filename_1, align 8
  %call2 = call i8* @SSDATA(i64 %3)
  %call3 = call i32 @stat(i8* %call2, %struct.stat* %st) #6
  %cmp4 = icmp sge i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 3
  %4 = load i32, i32* %st_mode, align 4
  %or = or i32 %4, 384
  %and = and i32 %or, 511
  store i32 %and, i32* @auto_save_mode_bits, align 4
  br label %if.end.16

if.else:                                          ; preds = %if.then
  %5 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %filename_6 = getelementptr inbounds %struct.buffer, %struct.buffer* %5, i32 0, i32 2
  %6 = load i64, i64* %filename_6, align 8
  %call7 = call i64 @Ffile_modes(i64 %6)
  store i64 %call7, i64* %modes, align 8
  %7 = load i64, i64* %modes, align 8
  %and8 = and i64 %7, 7
  %conv = trunc i64 %and8 to i32
  %and9 = and i32 %conv, -5
  %cmp10 = icmp eq i32 %and9, 2
  br i1 %cmp10, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.else
  %8 = load i64, i64* %modes, align 8
  %shr = ashr i64 %8, 2
  %or13 = or i64 %shr, 384
  %and14 = and i64 %or13, 511
  %conv15 = trunc i64 %and14 to i32
  store i32 %conv15, i32* @auto_save_mode_bits, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.12, %if.else
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %if.then.5
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %entry
  %call18 = call i64 @builtin_lisp_symbol(i32 0)
  %call19 = call i64 @builtin_lisp_symbol(i32 0)
  %9 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %auto_save_file_name_ = getelementptr inbounds %struct.buffer, %struct.buffer* %9, i32 0, i32 6
  %10 = load i64, i64* %auto_save_file_name_, align 8
  %call20 = call i64 @builtin_lisp_symbol(i32 0)
  %11 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 12), align 8
  %call21 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp22 = icmp eq i64 %11, %call21
  br i1 %cmp22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.17
  %call24 = call i64 @builtin_lisp_symbol(i32 598)
  br label %cond.end

cond.false:                                       ; preds = %if.end.17
  %call25 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call24, %cond.true ], [ %call25, %cond.false ]
  %call26 = call i64 @builtin_lisp_symbol(i32 0)
  %call27 = call i64 @builtin_lisp_symbol(i32 0)
  %call28 = call i64 @Fwrite_region(i64 %call18, i64 %call19, i64 %10, i64 %call20, i64 %cond, i64 %call26, i64 %call27)
  ret i64 %call28
}

; Function Attrs: nounwind uwtable
define internal i64 @auto_save_error(i64 %error_val) #5 {
entry:
  %error_val.addr = alloca i64, align 8
  %msg = alloca i64, align 8
  %i = alloca i32, align 4
  %format = alloca i64, align 8
  %.compoundliteral = alloca %union.Aligned_String, align 8
  %.compoundliteral2 = alloca [3 x i64], align 8
  store i64 %error_val, i64* %error_val.addr, align 8
  store i8 1, i8* @auto_save_error_occurred, align 1
  %0 = load i64, i64* @selected_frame, align 8
  %sub = sub nsw i64 %0, 5
  %1 = inttoptr i64 %sub to i8*
  %2 = bitcast i8* %1 to %struct.frame*
  call void @ring_bell(%struct.frame* %2)
  %s = bitcast %union.Aligned_String* %.compoundliteral to %struct.Lisp_String*
  %size = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 0
  store i64 18, i64* %size, align 8
  %size_byte = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 1
  store i64 -1, i64* %size_byte, align 8
  %intervals = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 2
  store %struct.interval* null, %struct.interval** %intervals, align 8
  %data = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 3
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.88, i32 0, i32 0), i8** %data, align 8
  %s1 = bitcast %union.Aligned_String* %.compoundliteral to %struct.Lisp_String*
  %3 = bitcast %struct.Lisp_String* %s1 to i8*
  %call = call i64 @make_lisp_ptr(i8* %3, i32 4)
  store i64 %call, i64* %format, align 8
  %arrayinit.begin = getelementptr inbounds [3 x i64], [3 x i64]* %.compoundliteral2, i64 0, i64 0
  %4 = load i64, i64* %format, align 8
  store i64 %4, i64* %arrayinit.begin
  %arrayinit.element = getelementptr inbounds i64, i64* %arrayinit.begin, i64 1
  %5 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %name_ = getelementptr inbounds %struct.buffer, %struct.buffer* %5, i32 0, i32 1
  %6 = load i64, i64* %name_, align 8
  store i64 %6, i64* %arrayinit.element
  %arrayinit.element3 = getelementptr inbounds i64, i64* %arrayinit.element, i64 1
  %7 = load i64, i64* %error_val.addr, align 8
  %call4 = call i64 @Ferror_message_string(i64 %7)
  store i64 %call4, i64* %arrayinit.element3
  %arraydecay = getelementptr inbounds [3 x i64], [3 x i64]* %.compoundliteral2, i32 0, i32 0
  %call5 = call i64 @Fformat(i64 3, i64* %arraydecay)
  store i64 %call5, i64* %msg, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %8, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %cmp6 = icmp eq i32 %9, 0
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %10 = load i64, i64* %msg, align 8
  call void @message3(i64 %10)
  br label %if.end

if.else:                                          ; preds = %for.body
  %11 = load i64, i64* %msg, align 8
  call void @message3_nolog(i64 %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call7 = call i64 @builtin_lisp_symbol(i32 0)
  %call8 = call i64 @Fsleep_for(i64 6, i64 %call7)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call9
}

declare void @record_auto_save() #1

declare i64 @sit_for(i64, i1 zeroext, i32) #1

declare void @restore_message() #1

; Function Attrs: nounwind uwtable
define i64 @Fset_buffer_auto_saved() #5 {
entry:
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 73
  %1 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %1, i32 0, i32 6
  %2 = load i64, i64* %modiff, align 8
  %3 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %auto_save_modified = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i32 0, i32 87
  store i64 %2, i64* %auto_save_modified, align 8
  %4 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text1 = getelementptr inbounds %struct.buffer, %struct.buffer* %4, i32 0, i32 73
  %5 = load %struct.buffer_text*, %struct.buffer_text** %text1, align 8
  %z = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %5, i32 0, i32 2
  %6 = load i64, i64* %z, align 8
  %sub = sub nsw i64 %6, 1
  %call = call i64 @make_natnum(i64 %sub)
  %7 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %save_length_ = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 5
  store i64 %call, i64* %save_length_, align 8
  %8 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %auto_save_failure_time = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 89
  store i64 0, i64* %auto_save_failure_time, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call2
}

; Function Attrs: nounwind uwtable
define i64 @Fclear_buffer_auto_save_failure() #5 {
entry:
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %auto_save_failure_time = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 89
  store i64 0, i64* %auto_save_failure_time, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @Frecent_auto_save_p() #5 {
entry:
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 73
  %1 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %save_modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %1, i32 0, i32 8
  %2 = load i64, i64* %save_modiff, align 8
  %3 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %auto_save_modified = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i32 0, i32 87
  %4 = load i64, i64* %auto_save_modified, align 8
  %cmp = icmp slt i64 %2, %4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call, %cond.true ], [ %call1, %cond.false ]
  ret i64 %cond
}

; Function Attrs: nounwind uwtable
define i64 @Fnext_read_file_uses_dialog_p() #5 {
entry:
  %retval = alloca i64, align 8
  %0 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 377), align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 377), align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %cmp1 = icmp eq i32 %conv, 3
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %2 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 493), align 1
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %land.lhs.true.4, label %if.end

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %3 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 494), align 1
  %tobool5 = trunc i8 %3 to i1
  br i1 %tobool5, label %land.lhs.true.7, label %if.end

land.lhs.true.7:                                  ; preds = %land.lhs.true.4
  %4 = load i64, i64* @selected_frame, align 8
  %call8 = call zeroext i1 @FRAMEP(i64 %4)
  br i1 %call8, label %land.lhs.true.10, label %cond.false

land.lhs.true.10:                                 ; preds = %land.lhs.true.7
  %5 = load i64, i64* @selected_frame, align 8
  %sub = sub nsw i64 %5, 5
  %6 = inttoptr i64 %sub to i8*
  %7 = bitcast i8* %6 to %struct.frame*
  %terminal = getelementptr inbounds %struct.frame, %struct.frame* %7, i32 0, i32 61
  %8 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %cmp11 = icmp ne %struct.terminal* %8, null
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.10
  %9 = load i64, i64* @selected_frame, align 8
  %sub13 = sub nsw i64 %9, 5
  %10 = inttoptr i64 %sub13 to i8*
  %11 = bitcast i8* %10 to %struct.frame*
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.10, %land.lhs.true.7
  call void @emacs_abort() #8
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %12, %cond.true
  %cond = phi %struct.frame* [ %11, %cond.true ], [ null, %12 ]
  %call14 = call zeroext i1 @window_system_available(%struct.frame* %cond)
  br i1 %call14, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %call16 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call16, i64* %retval
  br label %return

if.end:                                           ; preds = %cond.end, %land.lhs.true.4, %land.lhs.true, %lor.lhs.false
  %call17 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call17, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %13 = load i64, i64* %retval
  ret i64 %13
}

declare zeroext i1 @window_system_available(%struct.frame*) #1

declare zeroext i1 @FRAMEP(i64) #1

; Function Attrs: noreturn
declare void @emacs_abort() #3

; Function Attrs: nounwind uwtable
define i64 @Fset_binary_mode(i64 %stream, i64 %mode) #5 {
entry:
  %stream.addr = alloca i64, align 8
  %mode.addr = alloca i64, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %binmode = alloca i32, align 4
  store i64 %stream, i64* %stream.addr, align 8
  store i64 %mode, i64* %mode.addr, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp, align 8
  %0 = load i64, i64* %stream.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 897)
  %1 = load i64, i64* %stream.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call, i64 %1) #8
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i64, i64* %stream.addr, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 876)
  %cmp3 = icmp eq i64 %4, %call2
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %5, %struct._IO_FILE** %fp, align 8
  br label %if.end.18

if.else:                                          ; preds = %cond.end
  %6 = load i64, i64* %stream.addr, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 877)
  %cmp6 = icmp eq i64 %6, %call5
  br i1 %cmp6, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.else
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %7, %struct._IO_FILE** %fp, align 8
  br label %if.end.17

if.else.9:                                        ; preds = %if.else
  %8 = load i64, i64* %stream.addr, align 8
  %call10 = call i64 @builtin_lisp_symbol(i32 875)
  %cmp11 = icmp eq i64 %8, %call10
  br i1 %cmp11, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.else.9
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  store %struct._IO_FILE* %9, %struct._IO_FILE** %fp, align 8
  br label %if.end

if.else.14:                                       ; preds = %if.else.9
  %call15 = call i64 @builtin_lisp_symbol(i32 372)
  %call16 = call i64 @build_string(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.52, i32 0, i32 0))
  %10 = load i64, i64* %stream.addr, align 8
  call void @xsignal2(i64 %call15, i64 %call16, i64 %10) #8
  unreachable

if.end:                                           ; preds = %if.then.13
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %if.then.8
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then
  %11 = load i64, i64* %mode.addr, align 8
  %call19 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp20 = icmp eq i64 %11, %call19
  %cond = select i1 %cmp20, i32 0, i32 0
  store i32 %cond, i32* %binmode, align 4
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %cmp22 = icmp ne %struct._IO_FILE* %12, %13
  br i1 %cmp22, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.end.18
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call25 = call i32 @fflush(%struct._IO_FILE* %14)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %if.end.18
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call27 = call i32 @fileno(%struct._IO_FILE* %15) #6
  %16 = load i32, i32* %binmode, align 4
  %call28 = call i32 @set_binary_mode(i32 %call27, i32 %16)
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %cond.true.31, label %cond.false.33

cond.true.31:                                     ; preds = %if.end.26
  %call32 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end.35

cond.false.33:                                    ; preds = %if.end.26
  %call34 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.33, %cond.true.31
  %cond36 = phi i64 [ %call32, %cond.true.31 ], [ %call34, %cond.false.33 ]
  ret i64 %cond36
}

declare i32 @fflush(%struct._IO_FILE*) #1

declare i32 @set_binary_mode(i32, i32) #1

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define void @init_fileio() #5 {
entry:
  %call = call i32 @umask(i32 0) #6
  store i32 %call, i32* @realmask, align 4
  %0 = load i32, i32* @realmask, align 4
  %call1 = call i32 @umask(i32 %0) #6
  store i8 0, i8* @valid_timestamp_file_system, align 1
  %1 = load i8, i8* @noninteractive, align 1
  %tobool = trunc i8 %1 to i1
  %frombool = zext i1 %tobool to i8
  store i8 %frombool, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 500), align 1
  ret void
}

; Function Attrs: nounwind uwtable
define void @syms_of_fileio() #5 {
entry:
  %call = call i64 @builtin_lisp_symbol(i32 420)
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %call2 = call i64 @Fset(i64 %call, i64 %call1)
  br label %do.body

do.body:                                          ; preds = %entry
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_fileio.o_fwd, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.53, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 94))
  br label %do.end

do.end:                                           ; preds = %do.body
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call3, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 94), align 8
  br label %do.body.4

do.body.4:                                        ; preds = %do.end
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_fileio.o_fwd.54, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.55, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 59))
  br label %do.end.5

do.end.5:                                         ; preds = %do.body.4
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call6, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 59), align 8
  %call7 = call i64 @builtin_lisp_symbol(i32 411)
  %call8 = call i64 @builtin_lisp_symbol(i32 373)
  %call9 = call i64 @builtin_lisp_symbol(i32 411)
  %call10 = call i64 @builtin_lisp_symbol(i32 372)
  %call11 = call i64 @list2(i64 %call9, i64 %call10)
  %call12 = call i64 @Fpurecopy(i64 %call11)
  %call13 = call i64 @Fput(i64 %call7, i64 %call8, i64 %call12)
  %call14 = call i64 @builtin_lisp_symbol(i32 411)
  %call15 = call i64 @builtin_lisp_symbol(i32 374)
  %call16 = call i64 @build_pure_c_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i32 0, i32 0))
  %call17 = call i64 @Fput(i64 %call14, i64 %call15, i64 %call16)
  %call18 = call i64 @builtin_lisp_symbol(i32 406)
  %call19 = call i64 @builtin_lisp_symbol(i32 373)
  %call20 = call i64 @builtin_lisp_symbol(i32 406)
  %call21 = call i64 @builtin_lisp_symbol(i32 411)
  %call22 = call i64 @builtin_lisp_symbol(i32 372)
  %call23 = call i64 @list3(i64 %call20, i64 %call21, i64 %call22)
  %call24 = call i64 @Fpurecopy(i64 %call23)
  %call25 = call i64 @Fput(i64 %call18, i64 %call19, i64 %call24)
  %call26 = call i64 @builtin_lisp_symbol(i32 406)
  %call27 = call i64 @builtin_lisp_symbol(i32 374)
  %call28 = call i64 @build_pure_c_string(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.57, i32 0, i32 0))
  %call29 = call i64 @Fput(i64 %call26, i64 %call27, i64 %call28)
  %call30 = call i64 @builtin_lisp_symbol(i32 409)
  %call31 = call i64 @builtin_lisp_symbol(i32 373)
  %call32 = call i64 @builtin_lisp_symbol(i32 409)
  %call33 = call i64 @builtin_lisp_symbol(i32 411)
  %call34 = call i64 @builtin_lisp_symbol(i32 372)
  %call35 = call i64 @list3(i64 %call32, i64 %call33, i64 %call34)
  %call36 = call i64 @Fpurecopy(i64 %call35)
  %call37 = call i64 @Fput(i64 %call30, i64 %call31, i64 %call36)
  %call38 = call i64 @builtin_lisp_symbol(i32 409)
  %call39 = call i64 @builtin_lisp_symbol(i32 374)
  %call40 = call i64 @build_pure_c_string(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i32 0, i32 0))
  %call41 = call i64 @Fput(i64 %call38, i64 %call39, i64 %call40)
  %call42 = call i64 @builtin_lisp_symbol(i32 424)
  %call43 = call i64 @builtin_lisp_symbol(i32 373)
  %call44 = call i64 @builtin_lisp_symbol(i32 424)
  %call45 = call i64 @builtin_lisp_symbol(i32 411)
  %call46 = call i64 @builtin_lisp_symbol(i32 372)
  %call47 = call i64 @list3(i64 %call44, i64 %call45, i64 %call46)
  %call48 = call i64 @Fpurecopy(i64 %call47)
  %call49 = call i64 @Fput(i64 %call42, i64 %call43, i64 %call48)
  %call50 = call i64 @builtin_lisp_symbol(i32 424)
  %call51 = call i64 @builtin_lisp_symbol(i32 374)
  %call52 = call i64 @build_pure_c_string(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.58, i32 0, i32 0))
  %call53 = call i64 @Fput(i64 %call50, i64 %call51, i64 %call52)
  br label %do.body.54

do.body.54:                                       ; preds = %do.end.5
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_fileio.o_fwd.59, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.60, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 95))
  br label %do.end.55

do.end.55:                                        ; preds = %do.body.54
  %call56 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call56, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 95), align 8
  br label %do.body.57

do.body.57:                                       ; preds = %do.end.55
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_fileio.o_fwd.61, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.62, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 267))
  br label %do.end.58

do.end.58:                                        ; preds = %do.body.57
  %call59 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call59, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 267), align 8
  br label %do.body.60

do.body.60:                                       ; preds = %do.end.58
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_fileio.o_fwd.63, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 2))
  br label %do.end.61

do.end.61:                                        ; preds = %do.body.60
  %call62 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call62, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 2), align 8
  br label %do.body.63

do.body.63:                                       ; preds = %do.end.61
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_fileio.o_fwd.65, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.66, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 339))
  br label %do.end.64

do.end.64:                                        ; preds = %do.body.63
  %call65 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call65, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 339), align 8
  br label %do.body.66

do.body.66:                                       ; preds = %do.end.64
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_fileio.o_fwd.67, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.68, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 341))
  br label %do.end.67

do.end.67:                                        ; preds = %do.body.66
  %call68 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call68, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 341), align 8
  call void @staticpro(i64* @Vwrite_region_annotation_buffers)
  br label %do.body.69

do.body.69:                                       ; preds = %do.end.67
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_fileio.o_fwd.69, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.70, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 340))
  br label %do.end.70

do.end.70:                                        ; preds = %do.body.69
  %call71 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call71, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 340), align 8
  br label %do.body.72

do.body.72:                                       ; preds = %do.end.70
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_fileio.o_fwd.71, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.72, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 135))
  br label %do.end.73

do.end.73:                                        ; preds = %do.body.72
  %call74 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call74, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 135), align 8
  br label %do.body.75

do.body.75:                                       ; preds = %do.end.73
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_fileio.o_fwd.73, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.74, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 136))
  br label %do.end.76

do.end.76:                                        ; preds = %do.body.75
  %call77 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call77, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 136), align 8
  br label %do.body.78

do.body.78:                                       ; preds = %do.end.76
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_fileio.o_fwd.75, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.76, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 10))
  br label %do.end.79

do.end.79:                                        ; preds = %do.body.78
  %call80 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call80, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 10), align 8
  br label %do.body.81

do.body.81:                                       ; preds = %do.end.79
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_fileio.o_fwd.77, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.78, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 12))
  br label %do.end.82

do.end.82:                                        ; preds = %do.body.81
  %call83 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call83, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 12), align 8
  br label %do.body.84

do.body.84:                                       ; preds = %do.end.82
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_fileio.o_fwd.79, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.80, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 9))
  br label %do.end.85

do.end.85:                                        ; preds = %do.body.84
  %call86 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call86, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 9), align 8
  br label %do.body.87

do.body.87:                                       ; preds = %do.end.85
  call void @defvar_bool(%struct.Lisp_Boolfwd* @syms_of_fileio.b_fwd, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 500))
  br label %do.end.88

do.end.88:                                        ; preds = %do.body.87
  store i8 0, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 500), align 1
  br label %do.body.89

do.body.89:                                       ; preds = %do.end.88
  call void @defvar_bool(%struct.Lisp_Boolfwd* @syms_of_fileio.b_fwd.82, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 435))
  br label %do.end.90

do.end.90:                                        ; preds = %do.body.89
  store i8 0, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 435), align 1
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sfind_file_name_handler to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sfile_name_directory to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sfile_name_nondirectory to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sunhandled_file_name_directory to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sfile_name_as_directory to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sdirectory_file_name to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Smake_temp_name to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sexpand_file_name to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Ssubstitute_in_file_name to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Scopy_file to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Smake_directory_internal to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sdelete_directory_internal to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sdelete_file to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Srename_file to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sadd_name_to_file to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Smake_symbolic_link to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sfile_name_absolute_p to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sfile_exists_p to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sfile_executable_p to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sfile_readable_p to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sfile_writable_p to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Saccess_file to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sfile_symlink_p to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sfile_directory_p to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sfile_accessible_directory_p to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sfile_regular_p to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sfile_modes to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sset_file_modes to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sset_file_times to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sfile_selinux_context to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sfile_acl to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sset_file_acl to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sset_file_selinux_context to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sset_default_file_modes to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* @Sdefault_file_modes)
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sfile_newer_than_file_p to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sinsert_file_contents to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Swrite_region to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Scar_less_than_car to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sverify_visited_file_modtime to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* @Svisited_file_modtime)
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sset_visited_file_modtime to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sdo_auto_save to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* @Sset_buffer_auto_saved)
  call void @defsubr(%struct.Lisp_Subr* @Sclear_buffer_auto_save_failure)
  call void @defsubr(%struct.Lisp_Subr* @Srecent_auto_save_p)
  call void @defsubr(%struct.Lisp_Subr* @Snext_read_file_uses_dialog_p)
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sset_binary_mode to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* @Sunix_sync)
  ret void
}

declare void @defvar_lisp(%struct.Lisp_Objfwd*, i8*, i64*) #1

declare i64 @Fput(i64, i64, i64) #1

declare i64 @Fpurecopy(i64) #1

declare i64 @build_pure_c_string(i8*) #1

declare i64 @list3(i64, i64, i64) #1

declare void @staticpro(i64*) #1

declare void @defvar_bool(%struct.Lisp_Boolfwd*, i8*, i8*) #1

declare void @defsubr(%struct.Lisp_Subr*) #1

; Function Attrs: nounwind
declare i32 @lstat(i8*, %struct.stat*) #2

declare i64 @Fformat(i64, i64*) #1

declare i64 @do_yes_or_no_p(i64) #1

declare i64 @Fpoint_marker() #1

declare zeroext i1 @WINDOWP(i64) #1

declare void @XSETCAR(i64, i64) #1

declare i64 @Fmarker_position(i64) #1

declare i64 @Fpoint() #1

declare double @XFLOAT_DATA(i64) #1

declare i64 @XSAVE_INTEGER(i64, i32) #1

declare void @free_misc(i64) #1

declare void @adjust_markers_for_delete(i64, i64, i64, i64) #1

declare void @adjust_overlays_for_delete(i64, i64) #1

declare void @set_buffer_intervals(%struct.buffer*, %struct.interval*) #1

declare i32 @XMISCTYPE(i64) #1

declare i64 @Fset_marker(i64, i64, i64) #1

declare i64 @call5(i64, i64, i64, i64, i64, i64) #1

declare i64 @Flocal_variable_p(i64, i64) #1

declare i64 @Fgethash(i64, i64, i64) #1

declare i64 @AREF(i64, i64) #1

declare i64 @Fappend(i64, i64*) #1

declare i64 @Fdefault_value(i64) #1

declare i64 @Flength(i64) #1

declare i64 @merge(i64, i64, i64) #1

declare i64 @Fcar_safe(i64) #1

declare i64 @Fcdr(i64) #1

declare void @encode_coding_object(%struct.coding_system*, i64, i64, i64, i64, i64, i64) #1

declare i64 @string_char_to_byte(i64, i64) #1

declare i64 @buf_charpos_to_bytepos(%struct.buffer*, i64) #1

declare void @ring_bell(%struct.frame*) #1

declare i64 @Ferror_message_string(i64) #1

declare void @message3(i64) #1

declare void @message3_nolog(i64) #1

attributes #0 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn }
attributes #9 = { nounwind readnone }
attributes #10 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
