; ModuleID = './src/terminal.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emacs_globals = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.terminal = type { %struct.vectorlike_header, i64, i64, i64, i64, %struct.terminal*, i32, i32, i32, i8*, %struct.kboard*, %struct.image_cache*, %union.display_info, %struct.coding_system*, %struct.coding_system*, %struct.redisplay_interface*, void (%struct.frame*, i32, i32)*, void (%struct.frame*, i32, i32)*, {}*, {}*, void (%struct.frame*, i32)*, void (%struct.frame*, i32, i32)*, void (%struct.frame*, %struct.glyph*, i32)*, void (%struct.frame*, %struct.glyph*, i32)*, void (%struct.frame*, i32)*, {}*, void (%struct.frame*, i1)*, void (%struct.terminal*)*, void (%struct.terminal*)*, {}*, {}*, void (%struct.frame*, i32)*, void (%struct.frame**, i32, i64*, i32*, i64*, i64*, i64*)*, {}*, void (%struct.frame*, i1)*, {}*, i64 (%struct.frame*, i32, i32, i32, i64, i8**)*, i64 (%struct.frame*, i64, i64)*, void (%struct.window*, i32, i32, i32)*, void (%struct.window*, i32, i32, i32)*, {}*, void (%struct.window*)*, {}*, i32 (%struct.terminal*, %struct.input_event*)*, {}*, {}*, void (%struct.terminal*)* }
%struct.vectorlike_header = type { i64 }
%struct.kboard = type { %struct.kboard*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i8, i8, i64 }
%struct.image_cache = type { %struct.image**, %struct.image**, i64, i64, i64 }
%struct.image = type { %struct.timespec, i64, i64, %struct._XImage*, %struct._XImage*, i64*, i32, i64, i64, i64, i8, i32, i32, [4 x i32], i32, i64, i64, i32, i32, i32, %struct.image_type*, i8, i64, i64, i64, %struct.image*, %struct.image* }
%struct.timespec = type { i64, i64 }
%struct._XImage = type { i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i8*, %struct.funcs }
%struct.funcs = type { %struct._XImage* (%struct._XDisplay*, %struct.Visual*, i32, i32, i32, i8*, i32, i32, i32, i32)*, i32 (%struct._XImage*)*, i64 (%struct._XImage*, i32, i32)*, i32 (%struct._XImage*, i32, i32, i64)*, %struct._XImage* (%struct._XImage*, i32, i32, i32, i32)*, i32 (%struct._XImage*, i64)* }
%struct._XDisplay = type opaque
%struct.Visual = type { %struct._XExtData*, i64, i32, i64, i64, i64, i32, i32 }
%struct._XExtData = type { i32, %struct._XExtData*, i32 (%struct._XExtData*)*, i8* }
%struct.image_type = type { i32, i1 (i64)*, i1 (%struct.frame*, %struct.image*)*, void (%struct.frame*, %struct.image*)*, i1 ()*, %struct.image_type* }
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
%struct.glyph_row = type <{ [4 x %struct.glyph*], [4 x i16], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.display_pos, %struct.display_pos, %struct.text_pos, %struct.text_pos, i32, [11 x i8], i8, i24, i24, i32, i40, i32, %struct.XRectangle* }>
%struct.display_pos = type { %struct.text_pos, i64, %struct.text_pos, i32 }
%struct.text_pos = type { i64, i64 }
%struct.XRectangle = type { i16, i16, i16, i16 }
%struct.XChar2b = type { i8, i8 }
%struct.composition = type { i32, i16, i16, i16, i16, i16, i32, i32, i64, i8*, i16* }
%struct.glyph = type { i64, i64, i16, i16, i16, i16, i24, i24, %union.anon, %union.anon.1 }
%union.anon = type { %struct.glyph_slice }
%union.anon.1 = type { i32 }
%struct.xwidget = type opaque
%struct.glyph_slice = type { i64 }
%struct.font_bitmap = type { i32, i32, i32, i32, i8*, i32, i32, i32 }
%struct.glyph_pool = type { %struct.glyph*, i64, i32, i32 }
%struct.glyph_matrix = type { %struct.glyph_pool*, %struct.glyph_row*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.buffer*, i64, i64 }
%struct.buffer = type opaque
%union.output_data = type { %struct.tty_output* }
%struct.tty_output = type { %struct.tty_display_info* }
%struct.tty_display_info = type { %struct.tty_display_info*, i8*, i8*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct.emacs_tty*, i8, i32, %struct.terminal*, %struct.cm*, i64, %struct.frame*, i32, %struct.Mouse_HLInfo, [4096 x i8], [4096 x i8], i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i8, i32, i32, i8, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.emacs_tty = type opaque
%struct.cm = type opaque
%struct.Mouse_HLInfo = type { i32, i32, i32, i32, i32, i32, i64, i32, i64, %struct.frame*, i32, i32, i8 }
%struct.font_driver_list = type { i8, %struct.font_driver*, %struct.font_driver_list* }
%union.display_info = type { %struct.tty_display_info* }
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
%struct.Lisp_Objfwd = type { i32, i64* }
%struct.Lisp_Subr = type { %struct.vectorlike_header, %union.anon.12, i16, i16, i8*, i8*, i8* }
%union.anon.12 = type { i64 ()* }
%struct.Lisp_Vector = type { %struct.vectorlike_header, [0 x i64] }
%struct.Lisp_Cons = type { i64, %union.anon.11 }
%union.anon.11 = type { i64 }
%struct.unipair = type { i16, i16 }
%struct.unimapdesc = type { i16, %struct.unipair* }

@globals = external global %struct.emacs_globals, align 8
@terminal_list = common global %struct.terminal* null, align 8
@next_terminal_id = internal global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"default-keyboard-coding-system\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"default-terminal-coding-system\00", align 1
@Vframe_list = external global i64, align 8
@.str.2 = private unnamed_addr constant [51 x i8] c"Attempt to delete the sole active display terminal\00", align 1
@Vrun_hooks = external global i64, align 8
@pending_funcalls = external global i64, align 8
@initialized = external global i8, align 1
@tty_list = external global %struct.tty_display_info*, align 8
@initial_terminal = common global %struct.terminal* null, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"initial_terminal\00", align 1
@initial_kboard = external global %struct.kboard*, align 8
@syms_of_terminal.o_fwd = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"ring-bell-function\00", align 1
@syms_of_terminal.o_fwd.5 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.6 = private unnamed_addr constant [26 x i8] c"delete-terminal-functions\00", align 1
@Sterminal_list = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon.12 { i64 ()* @Fterminal_list }, i16 0, i16 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.7 = private unnamed_addr constant [10 x i8] c"multi-tty\00", align 1
@selected_frame = external global i64, align 8
@.str.8 = private unnamed_addr constant [16 x i8] c"delete-terminal\00", align 1
@Sdelete_terminal = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fdelete_terminal }, i16 0, i16 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.9 = private unnamed_addr constant [15 x i8] c"frame-terminal\00", align 1
@Sframe_terminal = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fframe_terminal }, i16 0, i16 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.10 = private unnamed_addr constant [16 x i8] c"terminal-live-p\00", align 1
@Sterminal_live_p = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fterminal_live_p }, i16 1, i16 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.11 = private unnamed_addr constant [14 x i8] c"terminal-list\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"terminal-name\00", align 1
@Sterminal_name = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fterminal_name }, i16 0, i16 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.13 = private unnamed_addr constant [20 x i8] c"terminal-parameters\00", align 1
@Sterminal_parameters = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fterminal_parameters }, i16 0, i16 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.14 = private unnamed_addr constant [19 x i8] c"terminal-parameter\00", align 1
@Sterminal_parameter = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fterminal_parameter }, i16 2, i16 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.15 = private unnamed_addr constant [23 x i8] c"set-terminal-parameter\00", align 1
@Sset_terminal_parameter = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Fset_terminal_parameter }, i16 3, i16 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0), i8* null, i8* null }, align 8

; Function Attrs: nounwind uwtable
define void @ring_bell(%struct.frame* %f) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %function = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  %0 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 257), align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 257), align 8
  store i64 %1, i64* %function, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 257), align 8
  %2 = load i64, i64* %function, align 8
  %call2 = call i64 @call0(i64 %2)
  %3 = load i64, i64* %function, align 8
  store i64 %3, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 257), align 8
  br label %if.end.8

if.else:                                          ; preds = %entry
  %4 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %terminal = getelementptr inbounds %struct.frame, %struct.frame* %4, i32 0, i32 61
  %5 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %ring_bell_hook = getelementptr inbounds %struct.terminal, %struct.terminal* %5, i32 0, i32 25
  %ring_bell_hook3 = bitcast {}** %ring_bell_hook to void (%struct.frame*)**
  %6 = load void (%struct.frame*)*, void (%struct.frame*)** %ring_bell_hook3, align 8
  %tobool = icmp ne void (%struct.frame*)* %6, null
  br i1 %tobool, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  %7 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %terminal5 = getelementptr inbounds %struct.frame, %struct.frame* %7, i32 0, i32 61
  %8 = load %struct.terminal*, %struct.terminal** %terminal5, align 8
  %ring_bell_hook6 = getelementptr inbounds %struct.terminal, %struct.terminal* %8, i32 0, i32 25
  %ring_bell_hook7 = bitcast {}** %ring_bell_hook6 to void (%struct.frame*)**
  %9 = load void (%struct.frame*)*, void (%struct.frame*)** %ring_bell_hook7, align 8
  %10 = load %struct.frame*, %struct.frame** %f.addr, align 8
  call void %9(%struct.frame* %10)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  ret void
}

declare i64 @builtin_lisp_symbol(i32) #1

declare i64 @call0(i64) #1

; Function Attrs: nounwind uwtable
define void @update_begin(%struct.frame* %f) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %terminal = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 61
  %1 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %update_begin_hook = getelementptr inbounds %struct.terminal, %struct.terminal* %1, i32 0, i32 29
  %update_begin_hook1 = bitcast {}** %update_begin_hook to void (%struct.frame*)**
  %2 = load void (%struct.frame*)*, void (%struct.frame*)** %update_begin_hook1, align 8
  %tobool = icmp ne void (%struct.frame*)* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %terminal2 = getelementptr inbounds %struct.frame, %struct.frame* %3, i32 0, i32 61
  %4 = load %struct.terminal*, %struct.terminal** %terminal2, align 8
  %update_begin_hook3 = getelementptr inbounds %struct.terminal, %struct.terminal* %4, i32 0, i32 29
  %update_begin_hook4 = bitcast {}** %update_begin_hook3 to void (%struct.frame*)**
  %5 = load void (%struct.frame*)*, void (%struct.frame*)** %update_begin_hook4, align 8
  %6 = load %struct.frame*, %struct.frame** %f.addr, align 8
  call void %5(%struct.frame* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @update_end(%struct.frame* %f) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %terminal = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 61
  %1 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %update_end_hook = getelementptr inbounds %struct.terminal, %struct.terminal* %1, i32 0, i32 30
  %update_end_hook1 = bitcast {}** %update_end_hook to void (%struct.frame*)**
  %2 = load void (%struct.frame*)*, void (%struct.frame*)** %update_end_hook1, align 8
  %tobool = icmp ne void (%struct.frame*)* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %terminal2 = getelementptr inbounds %struct.frame, %struct.frame* %3, i32 0, i32 61
  %4 = load %struct.terminal*, %struct.terminal** %terminal2, align 8
  %update_end_hook3 = getelementptr inbounds %struct.terminal, %struct.terminal* %4, i32 0, i32 30
  %update_end_hook4 = bitcast {}** %update_end_hook3 to void (%struct.frame*)**
  %5 = load void (%struct.frame*)*, void (%struct.frame*)** %update_end_hook4, align 8
  %6 = load %struct.frame*, %struct.frame** %f.addr, align 8
  call void %5(%struct.frame* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @set_terminal_window(%struct.frame* %f, i32 %size) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %size.addr = alloca i32, align 4
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %terminal = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 61
  %1 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %set_terminal_window_hook = getelementptr inbounds %struct.terminal, %struct.terminal* %1, i32 0, i32 31
  %2 = load void (%struct.frame*, i32)*, void (%struct.frame*, i32)** %set_terminal_window_hook, align 8
  %tobool = icmp ne void (%struct.frame*, i32)* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %terminal1 = getelementptr inbounds %struct.frame, %struct.frame* %3, i32 0, i32 61
  %4 = load %struct.terminal*, %struct.terminal** %terminal1, align 8
  %set_terminal_window_hook2 = getelementptr inbounds %struct.terminal, %struct.terminal* %4, i32 0, i32 31
  %5 = load void (%struct.frame*, i32)*, void (%struct.frame*, i32)** %set_terminal_window_hook2, align 8
  %6 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %7 = load i32, i32* %size.addr, align 4
  call void %5(%struct.frame* %6, i32 %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @cursor_to(%struct.frame* %f, i32 %vpos, i32 %hpos) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %vpos.addr = alloca i32, align 4
  %hpos.addr = alloca i32, align 4
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i32 %vpos, i32* %vpos.addr, align 4
  store i32 %hpos, i32* %hpos.addr, align 4
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %terminal = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 61
  %1 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %cursor_to_hook = getelementptr inbounds %struct.terminal, %struct.terminal* %1, i32 0, i32 16
  %2 = load void (%struct.frame*, i32, i32)*, void (%struct.frame*, i32, i32)** %cursor_to_hook, align 8
  %tobool = icmp ne void (%struct.frame*, i32, i32)* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %terminal1 = getelementptr inbounds %struct.frame, %struct.frame* %3, i32 0, i32 61
  %4 = load %struct.terminal*, %struct.terminal** %terminal1, align 8
  %cursor_to_hook2 = getelementptr inbounds %struct.terminal, %struct.terminal* %4, i32 0, i32 16
  %5 = load void (%struct.frame*, i32, i32)*, void (%struct.frame*, i32, i32)** %cursor_to_hook2, align 8
  %6 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %7 = load i32, i32* %vpos.addr, align 4
  %8 = load i32, i32* %hpos.addr, align 4
  call void %5(%struct.frame* %6, i32 %7, i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @raw_cursor_to(%struct.frame* %f, i32 %row, i32 %col) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %row.addr = alloca i32, align 4
  %col.addr = alloca i32, align 4
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i32 %row, i32* %row.addr, align 4
  store i32 %col, i32* %col.addr, align 4
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %terminal = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 61
  %1 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %raw_cursor_to_hook = getelementptr inbounds %struct.terminal, %struct.terminal* %1, i32 0, i32 17
  %2 = load void (%struct.frame*, i32, i32)*, void (%struct.frame*, i32, i32)** %raw_cursor_to_hook, align 8
  %tobool = icmp ne void (%struct.frame*, i32, i32)* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %terminal1 = getelementptr inbounds %struct.frame, %struct.frame* %3, i32 0, i32 61
  %4 = load %struct.terminal*, %struct.terminal** %terminal1, align 8
  %raw_cursor_to_hook2 = getelementptr inbounds %struct.terminal, %struct.terminal* %4, i32 0, i32 17
  %5 = load void (%struct.frame*, i32, i32)*, void (%struct.frame*, i32, i32)** %raw_cursor_to_hook2, align 8
  %6 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %7 = load i32, i32* %row.addr, align 4
  %8 = load i32, i32* %col.addr, align 4
  call void %5(%struct.frame* %6, i32 %7, i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @clear_to_end(%struct.frame* %f) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %terminal = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 61
  %1 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %clear_to_end_hook = getelementptr inbounds %struct.terminal, %struct.terminal* %1, i32 0, i32 18
  %clear_to_end_hook1 = bitcast {}** %clear_to_end_hook to void (%struct.frame*)**
  %2 = load void (%struct.frame*)*, void (%struct.frame*)** %clear_to_end_hook1, align 8
  %tobool = icmp ne void (%struct.frame*)* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %terminal2 = getelementptr inbounds %struct.frame, %struct.frame* %3, i32 0, i32 61
  %4 = load %struct.terminal*, %struct.terminal** %terminal2, align 8
  %clear_to_end_hook3 = getelementptr inbounds %struct.terminal, %struct.terminal* %4, i32 0, i32 18
  %clear_to_end_hook4 = bitcast {}** %clear_to_end_hook3 to void (%struct.frame*)**
  %5 = load void (%struct.frame*)*, void (%struct.frame*)** %clear_to_end_hook4, align 8
  %6 = load %struct.frame*, %struct.frame** %f.addr, align 8
  call void %5(%struct.frame* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @clear_frame(%struct.frame* %f) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %terminal = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 61
  %1 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %clear_frame_hook = getelementptr inbounds %struct.terminal, %struct.terminal* %1, i32 0, i32 19
  %clear_frame_hook1 = bitcast {}** %clear_frame_hook to void (%struct.frame*)**
  %2 = load void (%struct.frame*)*, void (%struct.frame*)** %clear_frame_hook1, align 8
  %tobool = icmp ne void (%struct.frame*)* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %terminal2 = getelementptr inbounds %struct.frame, %struct.frame* %3, i32 0, i32 61
  %4 = load %struct.terminal*, %struct.terminal** %terminal2, align 8
  %clear_frame_hook3 = getelementptr inbounds %struct.terminal, %struct.terminal* %4, i32 0, i32 19
  %clear_frame_hook4 = bitcast {}** %clear_frame_hook3 to void (%struct.frame*)**
  %5 = load void (%struct.frame*)*, void (%struct.frame*)** %clear_frame_hook4, align 8
  %6 = load %struct.frame*, %struct.frame** %f.addr, align 8
  call void %5(%struct.frame* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @clear_end_of_line(%struct.frame* %f, i32 %first_unused_hpos) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %first_unused_hpos.addr = alloca i32, align 4
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i32 %first_unused_hpos, i32* %first_unused_hpos.addr, align 4
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %terminal = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 61
  %1 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %clear_end_of_line_hook = getelementptr inbounds %struct.terminal, %struct.terminal* %1, i32 0, i32 20
  %2 = load void (%struct.frame*, i32)*, void (%struct.frame*, i32)** %clear_end_of_line_hook, align 8
  %tobool = icmp ne void (%struct.frame*, i32)* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %terminal1 = getelementptr inbounds %struct.frame, %struct.frame* %3, i32 0, i32 61
  %4 = load %struct.terminal*, %struct.terminal** %terminal1, align 8
  %clear_end_of_line_hook2 = getelementptr inbounds %struct.terminal, %struct.terminal* %4, i32 0, i32 20
  %5 = load void (%struct.frame*, i32)*, void (%struct.frame*, i32)** %clear_end_of_line_hook2, align 8
  %6 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %7 = load i32, i32* %first_unused_hpos.addr, align 4
  call void %5(%struct.frame* %6, i32 %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @write_glyphs(%struct.frame* %f, %struct.glyph* %string, i32 %len) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %string.addr = alloca %struct.glyph*, align 8
  %len.addr = alloca i32, align 4
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store %struct.glyph* %string, %struct.glyph** %string.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %terminal = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 61
  %1 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %write_glyphs_hook = getelementptr inbounds %struct.terminal, %struct.terminal* %1, i32 0, i32 23
  %2 = load void (%struct.frame*, %struct.glyph*, i32)*, void (%struct.frame*, %struct.glyph*, i32)** %write_glyphs_hook, align 8
  %tobool = icmp ne void (%struct.frame*, %struct.glyph*, i32)* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %terminal1 = getelementptr inbounds %struct.frame, %struct.frame* %3, i32 0, i32 61
  %4 = load %struct.terminal*, %struct.terminal** %terminal1, align 8
  %write_glyphs_hook2 = getelementptr inbounds %struct.terminal, %struct.terminal* %4, i32 0, i32 23
  %5 = load void (%struct.frame*, %struct.glyph*, i32)*, void (%struct.frame*, %struct.glyph*, i32)** %write_glyphs_hook2, align 8
  %6 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %7 = load %struct.glyph*, %struct.glyph** %string.addr, align 8
  %8 = load i32, i32* %len.addr, align 4
  call void %5(%struct.frame* %6, %struct.glyph* %7, i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @insert_glyphs(%struct.frame* %f, %struct.glyph* %start, i32 %len) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %start.addr = alloca %struct.glyph*, align 8
  %len.addr = alloca i32, align 4
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store %struct.glyph* %start, %struct.glyph** %start.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load i32, i32* %len.addr, align 4
  %cmp = icmp sle i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.4

if.end:                                           ; preds = %entry
  %1 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %terminal = getelementptr inbounds %struct.frame, %struct.frame* %1, i32 0, i32 61
  %2 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %insert_glyphs_hook = getelementptr inbounds %struct.terminal, %struct.terminal* %2, i32 0, i32 22
  %3 = load void (%struct.frame*, %struct.glyph*, i32)*, void (%struct.frame*, %struct.glyph*, i32)** %insert_glyphs_hook, align 8
  %tobool = icmp ne void (%struct.frame*, %struct.glyph*, i32)* %3, null
  br i1 %tobool, label %if.then.1, label %if.end.4

if.then.1:                                        ; preds = %if.end
  %4 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %terminal2 = getelementptr inbounds %struct.frame, %struct.frame* %4, i32 0, i32 61
  %5 = load %struct.terminal*, %struct.terminal** %terminal2, align 8
  %insert_glyphs_hook3 = getelementptr inbounds %struct.terminal, %struct.terminal* %5, i32 0, i32 22
  %6 = load void (%struct.frame*, %struct.glyph*, i32)*, void (%struct.frame*, %struct.glyph*, i32)** %insert_glyphs_hook3, align 8
  %7 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %8 = load %struct.glyph*, %struct.glyph** %start.addr, align 8
  %9 = load i32, i32* %len.addr, align 4
  call void %6(%struct.frame* %7, %struct.glyph* %8, i32 %9)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then, %if.then.1, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @delete_glyphs(%struct.frame* %f, i32 %n) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %n.addr = alloca i32, align 4
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %terminal = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 61
  %1 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %delete_glyphs_hook = getelementptr inbounds %struct.terminal, %struct.terminal* %1, i32 0, i32 24
  %2 = load void (%struct.frame*, i32)*, void (%struct.frame*, i32)** %delete_glyphs_hook, align 8
  %tobool = icmp ne void (%struct.frame*, i32)* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %terminal1 = getelementptr inbounds %struct.frame, %struct.frame* %3, i32 0, i32 61
  %4 = load %struct.terminal*, %struct.terminal** %terminal1, align 8
  %delete_glyphs_hook2 = getelementptr inbounds %struct.terminal, %struct.terminal* %4, i32 0, i32 24
  %5 = load void (%struct.frame*, i32)*, void (%struct.frame*, i32)** %delete_glyphs_hook2, align 8
  %6 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %7 = load i32, i32* %n.addr, align 4
  call void %5(%struct.frame* %6, i32 %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @ins_del_lines(%struct.frame* %f, i32 %vpos, i32 %n) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %vpos.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i32 %vpos, i32* %vpos.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %terminal = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 61
  %1 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %ins_del_lines_hook = getelementptr inbounds %struct.terminal, %struct.terminal* %1, i32 0, i32 21
  %2 = load void (%struct.frame*, i32, i32)*, void (%struct.frame*, i32, i32)** %ins_del_lines_hook, align 8
  %tobool = icmp ne void (%struct.frame*, i32, i32)* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %terminal1 = getelementptr inbounds %struct.frame, %struct.frame* %3, i32 0, i32 61
  %4 = load %struct.terminal*, %struct.terminal** %terminal1, align 8
  %ins_del_lines_hook2 = getelementptr inbounds %struct.terminal, %struct.terminal* %4, i32 0, i32 21
  %5 = load void (%struct.frame*, i32, i32)*, void (%struct.frame*, i32, i32)** %ins_del_lines_hook2, align 8
  %6 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %7 = load i32, i32* %vpos.addr, align 4
  %8 = load i32, i32* %n.addr, align 4
  call void %5(%struct.frame* %6, i32 %7, i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.terminal* @decode_live_terminal(i64 %terminal) #0 {
entry:
  %terminal.addr = alloca i64, align 8
  %t = alloca %struct.terminal*, align 8
  store i64 %terminal, i64* %terminal.addr, align 8
  %0 = load i64, i64* %terminal.addr, align 8
  %call = call %struct.terminal* @decode_terminal(i64 %0)
  store %struct.terminal* %call, %struct.terminal** %t, align 8
  %1 = load %struct.terminal*, %struct.terminal** %t, align 8
  %tobool = icmp ne %struct.terminal* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 908)
  %2 = load i64, i64* %terminal.addr, align 8
  %3 = call i64 @wrong_type_argument(i64 %call1, i64 %2) #6
  unreachable

if.end:                                           ; preds = %entry
  %4 = load %struct.terminal*, %struct.terminal** %t, align 8
  ret %struct.terminal* %4
}

; Function Attrs: nounwind uwtable
define internal %struct.terminal* @decode_terminal(i64 %terminal) #0 {
entry:
  %terminal.addr = alloca i64, align 8
  %t = alloca %struct.terminal*, align 8
  store i64 %terminal, i64* %terminal.addr, align 8
  %0 = load i64, i64* %terminal.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, i64* @selected_frame, align 8
  store i64 %1, i64* %terminal.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, i64* %terminal.addr, align 8
  %call1 = call zeroext i1 @TERMINALP(i64 %2)
  br i1 %call1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %3 = load i64, i64* %terminal.addr, align 8
  %call2 = call %struct.terminal* @XTERMINAL(i64 %3)
  br label %cond.end.7

cond.false:                                       ; preds = %if.end
  %4 = load i64, i64* %terminal.addr, align 8
  %call3 = call zeroext i1 @FRAMEP(i64 %4)
  br i1 %call3, label %cond.true.4, label %cond.false.6

cond.true.4:                                      ; preds = %cond.false
  %5 = load i64, i64* %terminal.addr, align 8
  %sub = sub nsw i64 %5, 5
  %6 = inttoptr i64 %sub to i8*
  %7 = bitcast i8* %6 to %struct.frame*
  %terminal5 = getelementptr inbounds %struct.frame, %struct.frame* %7, i32 0, i32 61
  %8 = load %struct.terminal*, %struct.terminal** %terminal5, align 8
  br label %cond.end

cond.false.6:                                     ; preds = %cond.false
  br label %cond.end

cond.end:                                         ; preds = %cond.false.6, %cond.true.4
  %cond = phi %struct.terminal* [ %8, %cond.true.4 ], [ null, %cond.false.6 ]
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.end, %cond.true
  %cond8 = phi %struct.terminal* [ %call2, %cond.true ], [ %cond, %cond.end ]
  store %struct.terminal* %cond8, %struct.terminal** %t, align 8
  %9 = load %struct.terminal*, %struct.terminal** %t, align 8
  %tobool = icmp ne %struct.terminal* %9, null
  br i1 %tobool, label %land.lhs.true, label %cond.false.11

land.lhs.true:                                    ; preds = %cond.end.7
  %10 = load %struct.terminal*, %struct.terminal** %t, align 8
  %name = getelementptr inbounds %struct.terminal, %struct.terminal* %10, i32 0, i32 9
  %11 = load i8*, i8** %name, align 8
  %tobool9 = icmp ne i8* %11, null
  br i1 %tobool9, label %cond.true.10, label %cond.false.11

cond.true.10:                                     ; preds = %land.lhs.true
  %12 = load %struct.terminal*, %struct.terminal** %t, align 8
  br label %cond.end.12

cond.false.11:                                    ; preds = %land.lhs.true, %cond.end.7
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.11, %cond.true.10
  %cond13 = phi %struct.terminal* [ %12, %cond.true.10 ], [ null, %cond.false.11 ]
  ret %struct.terminal* %cond13
}

; Function Attrs: noreturn
declare i64 @wrong_type_argument(i64, i64) #2

; Function Attrs: nounwind uwtable
define %struct.terminal* @decode_tty_terminal(i64 %terminal) #0 {
entry:
  %terminal.addr = alloca i64, align 8
  %t = alloca %struct.terminal*, align 8
  store i64 %terminal, i64* %terminal.addr, align 8
  %0 = load i64, i64* %terminal.addr, align 8
  %call = call %struct.terminal* @decode_live_terminal(i64 %0)
  store %struct.terminal* %call, %struct.terminal** %t, align 8
  %1 = load %struct.terminal*, %struct.terminal** %t, align 8
  %type = getelementptr inbounds %struct.terminal, %struct.terminal* %1, i32 0, i32 8
  %2 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.terminal*, %struct.terminal** %t, align 8
  %type1 = getelementptr inbounds %struct.terminal, %struct.terminal* %3, i32 0, i32 8
  %4 = load i32, i32* %type1, align 4
  %cmp2 = icmp eq i32 %4, 3
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %5 = load %struct.terminal*, %struct.terminal** %t, align 8
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.terminal* [ %5, %cond.true ], [ null, %cond.false ]
  ret %struct.terminal* %cond
}

; Function Attrs: nounwind uwtable
define %struct.terminal* @get_named_terminal(i8* %name) #0 {
entry:
  %retval = alloca %struct.terminal*, align 8
  %name.addr = alloca i8*, align 8
  %t = alloca %struct.terminal*, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct.terminal*, %struct.terminal** @terminal_list, align 8
  store %struct.terminal* %0, %struct.terminal** %t, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.terminal*, %struct.terminal** %t, align 8
  %tobool = icmp ne %struct.terminal* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.terminal*, %struct.terminal** %t, align 8
  %type = getelementptr inbounds %struct.terminal, %struct.terminal* %2, i32 0, i32 8
  %3 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %4 = load %struct.terminal*, %struct.terminal** %t, align 8
  %type1 = getelementptr inbounds %struct.terminal, %struct.terminal* %4, i32 0, i32 8
  %5 = load i32, i32* %type1, align 4
  %cmp2 = icmp eq i32 %5, 3
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false, %for.body
  %6 = load %struct.terminal*, %struct.terminal** %t, align 8
  %display_info = getelementptr inbounds %struct.terminal, %struct.terminal* %6, i32 0, i32 12
  %tty = bitcast %union.display_info* %display_info to %struct.tty_display_info**
  %7 = load %struct.tty_display_info*, %struct.tty_display_info** %tty, align 8
  %name3 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %7, i32 0, i32 1
  %8 = load i8*, i8** %name3, align 8
  %9 = load i8*, i8** %name.addr, align 8
  %call = call i32 @strcmp(i8* %8, i8* %9) #7
  %tobool4 = icmp ne i32 %call, 0
  br i1 %tobool4, label %if.end, label %land.lhs.true.5

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %10 = load %struct.terminal*, %struct.terminal** %t, align 8
  %type6 = getelementptr inbounds %struct.terminal, %struct.terminal* %10, i32 0, i32 8
  %11 = load i32, i32* %type6, align 4
  %cmp7 = icmp ne i32 %11, 1
  br i1 %cmp7, label %land.lhs.true.8, label %lor.lhs.false.11

land.lhs.true.8:                                  ; preds = %land.lhs.true.5
  %12 = load %struct.terminal*, %struct.terminal** %t, align 8
  %type9 = getelementptr inbounds %struct.terminal, %struct.terminal* %12, i32 0, i32 8
  %13 = load i32, i32* %type9, align 4
  %cmp10 = icmp ne i32 %13, 3
  br i1 %cmp10, label %if.then, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %land.lhs.true.8, %land.lhs.true.5
  %14 = load %struct.terminal*, %struct.terminal** %t, align 8
  %display_info12 = getelementptr inbounds %struct.terminal, %struct.terminal* %14, i32 0, i32 12
  %tty13 = bitcast %union.display_info* %display_info12 to %struct.tty_display_info**
  %15 = load %struct.tty_display_info*, %struct.tty_display_info** %tty13, align 8
  %input = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %15, i32 0, i32 3
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %input, align 8
  %tobool14 = icmp ne %struct._IO_FILE* %16, null
  br i1 %tobool14, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.11, %land.lhs.true.8
  %17 = load %struct.terminal*, %struct.terminal** %t, align 8
  store %struct.terminal* %17, %struct.terminal** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.11, %land.lhs.true, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load %struct.terminal*, %struct.terminal** %t, align 8
  %next_terminal = getelementptr inbounds %struct.terminal, %struct.terminal* %18, i32 0, i32 5
  %19 = load %struct.terminal*, %struct.terminal** %next_terminal, align 8
  store %struct.terminal* %19, %struct.terminal** %t, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.terminal* null, %struct.terminal** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %20 = load %struct.terminal*, %struct.terminal** %retval
  ret %struct.terminal* %20
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define %struct.terminal* @create_terminal(i32 %type, %struct.redisplay_interface* %rif) #0 {
entry:
  %type.addr = alloca i32, align 4
  %rif.addr = alloca %struct.redisplay_interface*, align 8
  %terminal = alloca %struct.terminal*, align 8
  %terminal_coding = alloca i64, align 8
  %keyboard_coding = alloca i64, align 8
  store i32 %type, i32* %type.addr, align 4
  store %struct.redisplay_interface* %rif, %struct.redisplay_interface** %rif.addr, align 8
  %call = call %struct.terminal* @allocate_terminal()
  store %struct.terminal* %call, %struct.terminal** %terminal, align 8
  %0 = load %struct.terminal*, %struct.terminal** @terminal_list, align 8
  %1 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %next_terminal = getelementptr inbounds %struct.terminal, %struct.terminal* %1, i32 0, i32 5
  store %struct.terminal* %0, %struct.terminal** %next_terminal, align 8
  %2 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  store %struct.terminal* %2, %struct.terminal** @terminal_list, align 8
  %3 = load i32, i32* %type.addr, align 4
  %4 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %type1 = getelementptr inbounds %struct.terminal, %struct.terminal* %4, i32 0, i32 8
  store i32 %3, i32* %type1, align 4
  %5 = load %struct.redisplay_interface*, %struct.redisplay_interface** %rif.addr, align 8
  %6 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %rif2 = getelementptr inbounds %struct.terminal, %struct.terminal* %6, i32 0, i32 15
  store %struct.redisplay_interface* %5, %struct.redisplay_interface** %rif2, align 8
  %7 = load i32, i32* @next_terminal_id, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* @next_terminal_id, align 4
  %8 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %id = getelementptr inbounds %struct.terminal, %struct.terminal* %8, i32 0, i32 6
  store i32 %7, i32* %id, align 4
  %call3 = call noalias i8* @xmalloc(i64 616)
  %9 = bitcast i8* %call3 to %struct.coding_system*
  %10 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %keyboard_coding4 = getelementptr inbounds %struct.terminal, %struct.terminal* %10, i32 0, i32 14
  store %struct.coding_system* %9, %struct.coding_system** %keyboard_coding4, align 8
  %call5 = call noalias i8* @xmalloc(i64 616)
  %11 = bitcast i8* %call5 to %struct.coding_system*
  %12 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %terminal_coding6 = getelementptr inbounds %struct.terminal, %struct.terminal* %12, i32 0, i32 13
  store %struct.coding_system* %11, %struct.coding_system** %terminal_coding6, align 8
  %call7 = call i64 @intern(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0))
  %call8 = call i64 @find_symbol_value(i64 %call7)
  store i64 %call8, i64* %keyboard_coding, align 8
  %13 = load i64, i64* %keyboard_coding, align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %13, %call9
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %14 = load i64, i64* %keyboard_coding, align 8
  %call10 = call i64 @builtin_lisp_symbol(i32 957)
  %cmp11 = icmp eq i64 %14, %call10
  br i1 %cmp11, label %if.then, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false
  %15 = load i64, i64* %keyboard_coding, align 8
  %call13 = call i64 @Fcoding_system_p(i64 %15)
  %call14 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp15 = icmp eq i64 %call13, %call14
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.12, %lor.lhs.false, %entry
  %call16 = call i64 @builtin_lisp_symbol(i32 702)
  store i64 %call16, i64* %keyboard_coding, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.12
  %call17 = call i64 @intern(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0))
  %call18 = call i64 @find_symbol_value(i64 %call17)
  store i64 %call18, i64* %terminal_coding, align 8
  %16 = load i64, i64* %terminal_coding, align 8
  %call19 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp20 = icmp eq i64 %16, %call19
  br i1 %cmp20, label %if.then.28, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %if.end
  %17 = load i64, i64* %terminal_coding, align 8
  %call22 = call i64 @builtin_lisp_symbol(i32 957)
  %cmp23 = icmp eq i64 %17, %call22
  br i1 %cmp23, label %if.then.28, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %lor.lhs.false.21
  %18 = load i64, i64* %terminal_coding, align 8
  %call25 = call i64 @Fcoding_system_p(i64 %18)
  %call26 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp27 = icmp eq i64 %call25, %call26
  br i1 %cmp27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %lor.lhs.false.24, %lor.lhs.false.21, %if.end
  %call29 = call i64 @builtin_lisp_symbol(i32 958)
  store i64 %call29, i64* %terminal_coding, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %lor.lhs.false.24
  %19 = load i64, i64* %keyboard_coding, align 8
  %20 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %keyboard_coding31 = getelementptr inbounds %struct.terminal, %struct.terminal* %20, i32 0, i32 14
  %21 = load %struct.coding_system*, %struct.coding_system** %keyboard_coding31, align 8
  call void @setup_coding_system(i64 %19, %struct.coding_system* %21)
  %22 = load i64, i64* %terminal_coding, align 8
  %23 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %terminal_coding32 = getelementptr inbounds %struct.terminal, %struct.terminal* %23, i32 0, i32 13
  %24 = load %struct.coding_system*, %struct.coding_system** %terminal_coding32, align 8
  call void @setup_coding_system(i64 %22, %struct.coding_system* %24)
  %25 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  ret %struct.terminal* %25
}

; Function Attrs: nounwind uwtable
define internal %struct.terminal* @allocate_terminal() #0 {
entry:
  %call = call %struct.Lisp_Vector* @allocate_pseudovector(i32 45, i32 4, i32 45, i32 8)
  %0 = bitcast %struct.Lisp_Vector* %call to %struct.terminal*
  ret %struct.terminal* %0
}

declare noalias i8* @xmalloc(i64) #1

declare i64 @find_symbol_value(i64) #1

declare i64 @intern(i8*) #1

declare i64 @Fcoding_system_p(i64) #1

declare void @setup_coding_system(i64, %struct.coding_system*) #1

; Function Attrs: nounwind uwtable
define void @delete_terminal(%struct.terminal* %terminal) #0 {
entry:
  %terminal.addr = alloca %struct.terminal*, align 8
  %tp = alloca %struct.terminal**, align 8
  %tail = alloca i64, align 8
  %frame = alloca i64, align 8
  %f = alloca %struct.frame*, align 8
  store %struct.terminal* %terminal, %struct.terminal** %terminal.addr, align 8
  %0 = load %struct.terminal*, %struct.terminal** %terminal.addr, align 8
  %name = getelementptr inbounds %struct.terminal, %struct.terminal* %0, i32 0, i32 9
  %1 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.35

if.end:                                           ; preds = %entry
  %2 = load %struct.terminal*, %struct.terminal** %terminal.addr, align 8
  %name1 = getelementptr inbounds %struct.terminal, %struct.terminal* %2, i32 0, i32 9
  %3 = load i8*, i8** %name1, align 8
  call void @xfree(i8* %3)
  %4 = load %struct.terminal*, %struct.terminal** %terminal.addr, align 8
  %name2 = getelementptr inbounds %struct.terminal, %struct.terminal* %4, i32 0, i32 9
  store i8* null, i8** %name2, align 8
  %5 = load i64, i64* @Vframe_list, align 8
  store i64 %5, i64* %tail, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i64, i64* %tail, align 8
  %and = and i64 %6, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %7 = load i64, i64* %tail, align 8
  %sub = sub nsw i64 %7, 3
  %8 = inttoptr i64 %sub to i8*
  %9 = bitcast i8* %8 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %9, i32 0, i32 0
  %10 = load i64, i64* %car, align 8
  store i64 %10, i64* %frame, align 8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %11 = phi i1 [ false, %for.cond ], [ true, %land.rhs ]
  br i1 %11, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %12 = load i64, i64* %frame, align 8
  %sub4 = sub nsw i64 %12, 5
  %13 = inttoptr i64 %sub4 to i8*
  %14 = bitcast i8* %13 to %struct.frame*
  store %struct.frame* %14, %struct.frame** %f, align 8
  %15 = load %struct.frame*, %struct.frame** %f, align 8
  %terminal5 = getelementptr inbounds %struct.frame, %struct.frame* %15, i32 0, i32 61
  %16 = load %struct.terminal*, %struct.terminal** %terminal5, align 8
  %cmp6 = icmp ne %struct.terminal* %16, null
  br i1 %cmp6, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %for.body
  %17 = load %struct.frame*, %struct.frame** %f, align 8
  %terminal8 = getelementptr inbounds %struct.frame, %struct.frame* %17, i32 0, i32 61
  %18 = load %struct.terminal*, %struct.terminal** %terminal8, align 8
  %19 = load %struct.terminal*, %struct.terminal** %terminal.addr, align 8
  %cmp9 = icmp eq %struct.terminal* %18, %19
  br i1 %cmp9, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %land.lhs.true
  %20 = load i64, i64* %frame, align 8
  %call = call i64 @builtin_lisp_symbol(i32 704)
  %call12 = call i64 @delete_frame(i64 %20, i64 %call)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %21 = load i64, i64* %tail, align 8
  %sub14 = sub nsw i64 %21, 3
  %22 = inttoptr i64 %sub14 to i8*
  %23 = bitcast i8* %22 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %23, i32 0, i32 1
  %cdr = bitcast %union.anon.11* %u to i64*
  %24 = load i64, i64* %cdr, align 8
  store i64 %24, i64* %tail, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  store %struct.terminal** @terminal_list, %struct.terminal*** %tp, align 8
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.22, %for.end
  %25 = load %struct.terminal**, %struct.terminal*** %tp, align 8
  %26 = load %struct.terminal*, %struct.terminal** %25, align 8
  %27 = load %struct.terminal*, %struct.terminal** %terminal.addr, align 8
  %cmp16 = icmp ne %struct.terminal* %26, %27
  br i1 %cmp16, label %for.body.18, label %for.end.23

for.body.18:                                      ; preds = %for.cond.15
  %28 = load %struct.terminal**, %struct.terminal*** %tp, align 8
  %29 = load %struct.terminal*, %struct.terminal** %28, align 8
  %tobool19 = icmp ne %struct.terminal* %29, null
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %for.body.18
  call void @emacs_abort() #6
  unreachable

if.end.21:                                        ; preds = %for.body.18
  br label %for.inc.22

for.inc.22:                                       ; preds = %if.end.21
  %30 = load %struct.terminal**, %struct.terminal*** %tp, align 8
  %31 = load %struct.terminal*, %struct.terminal** %30, align 8
  %next_terminal = getelementptr inbounds %struct.terminal, %struct.terminal* %31, i32 0, i32 5
  store %struct.terminal** %next_terminal, %struct.terminal*** %tp, align 8
  br label %for.cond.15

for.end.23:                                       ; preds = %for.cond.15
  %32 = load %struct.terminal*, %struct.terminal** %terminal.addr, align 8
  %next_terminal24 = getelementptr inbounds %struct.terminal, %struct.terminal* %32, i32 0, i32 5
  %33 = load %struct.terminal*, %struct.terminal** %next_terminal24, align 8
  %34 = load %struct.terminal**, %struct.terminal*** %tp, align 8
  store %struct.terminal* %33, %struct.terminal** %34, align 8
  %35 = load %struct.terminal*, %struct.terminal** %terminal.addr, align 8
  %keyboard_coding = getelementptr inbounds %struct.terminal, %struct.terminal* %35, i32 0, i32 14
  %36 = load %struct.coding_system*, %struct.coding_system** %keyboard_coding, align 8
  %37 = bitcast %struct.coding_system* %36 to i8*
  call void @xfree(i8* %37)
  %38 = load %struct.terminal*, %struct.terminal** %terminal.addr, align 8
  %keyboard_coding25 = getelementptr inbounds %struct.terminal, %struct.terminal* %38, i32 0, i32 14
  store %struct.coding_system* null, %struct.coding_system** %keyboard_coding25, align 8
  %39 = load %struct.terminal*, %struct.terminal** %terminal.addr, align 8
  %terminal_coding = getelementptr inbounds %struct.terminal, %struct.terminal* %39, i32 0, i32 13
  %40 = load %struct.coding_system*, %struct.coding_system** %terminal_coding, align 8
  %41 = bitcast %struct.coding_system* %40 to i8*
  call void @xfree(i8* %41)
  %42 = load %struct.terminal*, %struct.terminal** %terminal.addr, align 8
  %terminal_coding26 = getelementptr inbounds %struct.terminal, %struct.terminal* %42, i32 0, i32 13
  store %struct.coding_system* null, %struct.coding_system** %terminal_coding26, align 8
  %43 = load %struct.terminal*, %struct.terminal** %terminal.addr, align 8
  %kboard = getelementptr inbounds %struct.terminal, %struct.terminal* %43, i32 0, i32 10
  %44 = load %struct.kboard*, %struct.kboard** %kboard, align 8
  %tobool27 = icmp ne %struct.kboard* %44, null
  br i1 %tobool27, label %land.lhs.true.28, label %if.end.35

land.lhs.true.28:                                 ; preds = %for.end.23
  %45 = load %struct.terminal*, %struct.terminal** %terminal.addr, align 8
  %kboard29 = getelementptr inbounds %struct.terminal, %struct.terminal* %45, i32 0, i32 10
  %46 = load %struct.kboard*, %struct.kboard** %kboard29, align 8
  %reference_count = getelementptr inbounds %struct.kboard, %struct.kboard* %46, i32 0, i32 21
  %47 = load i32, i32* %reference_count, align 4
  %dec = add nsw i32 %47, -1
  store i32 %dec, i32* %reference_count, align 4
  %cmp30 = icmp eq i32 %dec, 0
  br i1 %cmp30, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %land.lhs.true.28
  %48 = load %struct.terminal*, %struct.terminal** %terminal.addr, align 8
  %kboard33 = getelementptr inbounds %struct.terminal, %struct.terminal* %48, i32 0, i32 10
  %49 = load %struct.kboard*, %struct.kboard** %kboard33, align 8
  call void @delete_kboard(%struct.kboard* %49)
  %50 = load %struct.terminal*, %struct.terminal** %terminal.addr, align 8
  %kboard34 = getelementptr inbounds %struct.terminal, %struct.terminal* %50, i32 0, i32 10
  store %struct.kboard* null, %struct.kboard** %kboard34, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.then, %if.then.32, %land.lhs.true.28, %for.end.23
  ret void
}

declare void @xfree(i8*) #1

declare i64 @delete_frame(i64, i64) #1

; Function Attrs: noreturn
declare void @emacs_abort() #2

declare void @delete_kboard(%struct.kboard*) #1

; Function Attrs: nounwind uwtable
define i64 @Fdelete_terminal(i64 %terminal, i64 %force) #0 {
entry:
  %retval = alloca i64, align 8
  %terminal.addr = alloca i64, align 8
  %force.addr = alloca i64, align 8
  %t = alloca %struct.terminal*, align 8
  %p = alloca %struct.terminal*, align 8
  store i64 %terminal, i64* %terminal.addr, align 8
  store i64 %force, i64* %force.addr, align 8
  %0 = load i64, i64* %terminal.addr, align 8
  %call = call %struct.terminal* @decode_terminal(i64 %0)
  store %struct.terminal* %call, %struct.terminal** %t, align 8
  %1 = load %struct.terminal*, %struct.terminal** %t, align 8
  %tobool = icmp ne %struct.terminal* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %force.addr, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %2, %call2
  br i1 %cmp, label %if.then.3, label %if.end.15

if.then.3:                                        ; preds = %if.end
  %3 = load %struct.terminal*, %struct.terminal** @terminal_list, align 8
  store %struct.terminal* %3, %struct.terminal** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.3
  %4 = load %struct.terminal*, %struct.terminal** %p, align 8
  %tobool4 = icmp ne %struct.terminal* %4, null
  br i1 %tobool4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load %struct.terminal*, %struct.terminal** %p, align 8
  %6 = load %struct.terminal*, %struct.terminal** %t, align 8
  %cmp5 = icmp eq %struct.terminal* %5, %6
  br i1 %cmp5, label %lor.end.11, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %7 = load %struct.terminal*, %struct.terminal** %p, align 8
  %type = getelementptr inbounds %struct.terminal, %struct.terminal* %7, i32 0, i32 8
  %8 = load i32, i32* %type, align 4
  %cmp6 = icmp ne i32 %8, 1
  br i1 %cmp6, label %land.lhs.true, label %lor.rhs.9

land.lhs.true:                                    ; preds = %lor.rhs
  %9 = load %struct.terminal*, %struct.terminal** %p, align 8
  %type7 = getelementptr inbounds %struct.terminal, %struct.terminal* %9, i32 0, i32 8
  %10 = load i32, i32* %type7, align 4
  %cmp8 = icmp ne i32 %10, 3
  br i1 %cmp8, label %lor.end, label %lor.rhs.9

lor.rhs.9:                                        ; preds = %land.lhs.true, %lor.rhs
  %11 = load %struct.terminal*, %struct.terminal** %p, align 8
  %display_info = getelementptr inbounds %struct.terminal, %struct.terminal* %11, i32 0, i32 12
  %tty = bitcast %union.display_info* %display_info to %struct.tty_display_info**
  %12 = load %struct.tty_display_info*, %struct.tty_display_info** %tty, align 8
  %input = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %12, i32 0, i32 3
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %input, align 8
  %tobool10 = icmp ne %struct._IO_FILE* %13, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs.9, %land.lhs.true
  %14 = phi i1 [ true, %land.lhs.true ], [ %tobool10, %lor.rhs.9 ]
  %lnot = xor i1 %14, true
  br label %lor.end.11

lor.end.11:                                       ; preds = %lor.end, %land.rhs
  %15 = phi i1 [ true, %land.rhs ], [ %lnot, %lor.end ]
  br label %land.end

land.end:                                         ; preds = %lor.end.11, %while.cond
  %16 = phi i1 [ false, %while.cond ], [ %15, %lor.end.11 ]
  br i1 %16, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %17 = load %struct.terminal*, %struct.terminal** %p, align 8
  %next_terminal = getelementptr inbounds %struct.terminal, %struct.terminal* %17, i32 0, i32 5
  %18 = load %struct.terminal*, %struct.terminal** %next_terminal, align 8
  store %struct.terminal* %18, %struct.terminal** %p, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %19 = load %struct.terminal*, %struct.terminal** %p, align 8
  %tobool12 = icmp ne %struct.terminal* %19, null
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %while.end
  call void (i8*, ...) @error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i32 0, i32 0)) #6
  unreachable

if.end.14:                                        ; preds = %while.end
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.end
  %20 = load i64, i64* @Vrun_hooks, align 8
  %call16 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp17 = icmp eq i64 %20, %call16
  br i1 %cmp17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.end.15
  br label %if.end.31

if.else:                                          ; preds = %if.end.15
  %21 = load i64, i64* %force.addr, align 8
  %call19 = call i64 @builtin_lisp_symbol(i32 704)
  %cmp20 = icmp eq i64 %21, %call19
  br i1 %cmp20, label %if.then.21, label %if.else.26

if.then.21:                                       ; preds = %if.else
  %call22 = call i64 @builtin_lisp_symbol(i32 821)
  %call23 = call i64 @builtin_lisp_symbol(i32 337)
  %22 = load i64, i64* %terminal.addr, align 8
  %call24 = call i64 @list3(i64 %call22, i64 %call23, i64 %22)
  %23 = load i64, i64* @pending_funcalls, align 8
  %call25 = call i64 @Fcons(i64 %call24, i64 %23)
  store i64 %call25, i64* @pending_funcalls, align 8
  br label %if.end.30

if.else.26:                                       ; preds = %if.else
  %call27 = call i64 @builtin_lisp_symbol(i32 821)
  %call28 = call i64 @builtin_lisp_symbol(i32 337)
  %24 = load i64, i64* %terminal.addr, align 8
  %call29 = call i64 @safe_call2(i64 %call27, i64 %call28, i64 %24)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.26, %if.then.21
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.18
  %25 = load %struct.terminal*, %struct.terminal** %t, align 8
  %delete_terminal_hook = getelementptr inbounds %struct.terminal, %struct.terminal* %25, i32 0, i32 46
  %26 = load void (%struct.terminal*)*, void (%struct.terminal*)** %delete_terminal_hook, align 8
  %tobool32 = icmp ne void (%struct.terminal*)* %26, null
  br i1 %tobool32, label %if.then.33, label %if.else.35

if.then.33:                                       ; preds = %if.end.31
  %27 = load %struct.terminal*, %struct.terminal** %t, align 8
  %delete_terminal_hook34 = getelementptr inbounds %struct.terminal, %struct.terminal* %27, i32 0, i32 46
  %28 = load void (%struct.terminal*)*, void (%struct.terminal*)** %delete_terminal_hook34, align 8
  %29 = load %struct.terminal*, %struct.terminal** %t, align 8
  call void %28(%struct.terminal* %29)
  br label %if.end.36

if.else.35:                                       ; preds = %if.end.31
  %30 = load %struct.terminal*, %struct.terminal** %t, align 8
  call void @delete_terminal(%struct.terminal* %30)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.35, %if.then.33
  %call37 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call37, i64* %retval
  br label %return

return:                                           ; preds = %if.end.36, %if.then
  %31 = load i64, i64* %retval
  ret i64 %31
}

; Function Attrs: noreturn
declare void @error(i8*, ...) #2

declare i64 @Fcons(i64, i64) #1

declare i64 @list3(i64, i64, i64) #1

declare i64 @safe_call2(i64, i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fframe_terminal(i64 %frame) #0 {
entry:
  %retval = alloca i64, align 8
  %frame.addr = alloca i64, align 8
  %t = alloca %struct.terminal*, align 8
  %terminal2 = alloca i64, align 8
  store i64 %frame, i64* %frame.addr, align 8
  %0 = load i64, i64* %frame.addr, align 8
  %call = call %struct.frame* @decode_live_frame(i64 %0)
  %terminal = getelementptr inbounds %struct.frame, %struct.frame* %call, i32 0, i32 61
  %1 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  store %struct.terminal* %1, %struct.terminal** %t, align 8
  %2 = load %struct.terminal*, %struct.terminal** %t, align 8
  %tobool = icmp ne %struct.terminal* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = load %struct.terminal*, %struct.terminal** %t, align 8
  %4 = bitcast %struct.terminal* %3 to i8*
  %call3 = call i64 @make_lisp_ptr(i8* %4, i32 5)
  store i64 %call3, i64* %terminal2, align 8
  %5 = load i64, i64* %terminal2, align 8
  store i64 %5, i64* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %6 = load i64, i64* %retval
  ret i64 %6
}

declare %struct.frame* @decode_live_frame(i64) #1

declare i64 @make_lisp_ptr(i8*, i32) #1

; Function Attrs: nounwind uwtable
define i64 @Fterminal_live_p(i64 %object) #0 {
entry:
  %retval = alloca i64, align 8
  %object.addr = alloca i64, align 8
  %t = alloca %struct.terminal*, align 8
  store i64 %object, i64* %object.addr, align 8
  %0 = load i64, i64* %object.addr, align 8
  %call = call %struct.terminal* @decode_terminal(i64 %0)
  store %struct.terminal* %call, %struct.terminal** %t, align 8
  %1 = load %struct.terminal*, %struct.terminal** %t, align 8
  %tobool = icmp ne %struct.terminal* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.terminal*, %struct.terminal** %t, align 8
  %type = getelementptr inbounds %struct.terminal, %struct.terminal* %2, i32 0, i32 8
  %3 = load i32, i32* %type, align 4
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 4, label %sw.bb.5
    i32 3, label %sw.bb.7
    i32 5, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %if.end, %if.end
  %call2 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call2, i64* %retval
  br label %return

sw.bb.3:                                          ; preds = %if.end
  %call4 = call i64 @builtin_lisp_symbol(i32 1045)
  store i64 %call4, i64* %retval
  br label %return

sw.bb.5:                                          ; preds = %if.end
  %call6 = call i64 @builtin_lisp_symbol(i32 1009)
  store i64 %call6, i64* %retval
  br label %return

sw.bb.7:                                          ; preds = %if.end
  %call8 = call i64 @builtin_lisp_symbol(i32 744)
  store i64 %call8, i64* %retval
  br label %return

sw.bb.9:                                          ; preds = %if.end
  %call10 = call i64 @builtin_lisp_symbol(i32 708)
  store i64 %call10, i64* %retval
  br label %return

sw.default:                                       ; preds = %if.end
  call void @emacs_abort() #6
  unreachable

return:                                           ; preds = %sw.bb.9, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb, %if.then
  %4 = load i64, i64* %retval
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define i64 @Fterminal_list() #0 {
entry:
  %terminal = alloca i64, align 8
  %terminals = alloca i64, align 8
  %t = alloca %struct.terminal*, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %terminals, align 8
  %0 = load %struct.terminal*, %struct.terminal** @terminal_list, align 8
  store %struct.terminal* %0, %struct.terminal** %t, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.terminal*, %struct.terminal** %t, align 8
  %tobool = icmp ne %struct.terminal* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.terminal*, %struct.terminal** %t, align 8
  %3 = bitcast %struct.terminal* %2 to i8*
  %call1 = call i64 @make_lisp_ptr(i8* %3, i32 5)
  store i64 %call1, i64* %terminal, align 8
  %4 = load i64, i64* %terminal, align 8
  %5 = load i64, i64* %terminals, align 8
  %call2 = call i64 @Fcons(i64 %4, i64 %5)
  store i64 %call2, i64* %terminals, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load %struct.terminal*, %struct.terminal** %t, align 8
  %next_terminal = getelementptr inbounds %struct.terminal, %struct.terminal* %6, i32 0, i32 5
  %7 = load %struct.terminal*, %struct.terminal** %next_terminal, align 8
  store %struct.terminal* %7, %struct.terminal** %t, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i64, i64* %terminals, align 8
  ret i64 %8
}

; Function Attrs: nounwind uwtable
define i64 @Fterminal_name(i64 %terminal) #0 {
entry:
  %terminal.addr = alloca i64, align 8
  %t = alloca %struct.terminal*, align 8
  store i64 %terminal, i64* %terminal.addr, align 8
  %0 = load i64, i64* %terminal.addr, align 8
  %call = call %struct.terminal* @decode_live_terminal(i64 %0)
  store %struct.terminal* %call, %struct.terminal** %t, align 8
  %1 = load %struct.terminal*, %struct.terminal** %t, align 8
  %name = getelementptr inbounds %struct.terminal, %struct.terminal* %1, i32 0, i32 9
  %2 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct.terminal*, %struct.terminal** %t, align 8
  %name1 = getelementptr inbounds %struct.terminal, %struct.terminal* %3, i32 0, i32 9
  %4 = load i8*, i8** %name1, align 8
  %call2 = call i64 @build_string(i8* %4)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call2, %cond.true ], [ %call3, %cond.false ]
  ret i64 %cond
}

declare i64 @build_string(i8*) #1

; Function Attrs: nounwind uwtable
define i64 @Fterminal_parameters(i64 %terminal) #0 {
entry:
  %terminal.addr = alloca i64, align 8
  store i64 %terminal, i64* %terminal.addr, align 8
  %0 = load i64, i64* %terminal.addr, align 8
  %call = call %struct.terminal* @decode_live_terminal(i64 %0)
  %param_alist = getelementptr inbounds %struct.terminal, %struct.terminal* %call, i32 0, i32 1
  %1 = load i64, i64* %param_alist, align 8
  %call1 = call i64 @Fcopy_alist(i64 %1)
  ret i64 %call1
}

declare i64 @Fcopy_alist(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fterminal_parameter(i64 %terminal, i64 %parameter) #0 {
entry:
  %terminal.addr = alloca i64, align 8
  %parameter.addr = alloca i64, align 8
  store i64 %terminal, i64* %terminal.addr, align 8
  store i64 %parameter, i64* %parameter.addr, align 8
  %0 = load i64, i64* %parameter.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 897)
  %1 = load i64, i64* %parameter.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call, i64 %1) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i64, i64* %parameter.addr, align 8
  %5 = load i64, i64* %terminal.addr, align 8
  %call2 = call %struct.terminal* @decode_live_terminal(i64 %5)
  %param_alist = getelementptr inbounds %struct.terminal, %struct.terminal* %call2, i32 0, i32 1
  %6 = load i64, i64* %param_alist, align 8
  %call3 = call i64 @Fassq(i64 %4, i64 %6)
  %call4 = call i64 @Fcdr(i64 %call3)
  ret i64 %call4
}

declare i64 @Fcdr(i64) #1

declare i64 @Fassq(i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fset_terminal_parameter(i64 %terminal, i64 %parameter, i64 %value) #0 {
entry:
  %terminal.addr = alloca i64, align 8
  %parameter.addr = alloca i64, align 8
  %value.addr = alloca i64, align 8
  store i64 %terminal, i64* %terminal.addr, align 8
  store i64 %parameter, i64* %parameter.addr, align 8
  store i64 %value, i64* %value.addr, align 8
  %0 = load i64, i64* %terminal.addr, align 8
  %call = call %struct.terminal* @decode_live_terminal(i64 %0)
  %1 = load i64, i64* %parameter.addr, align 8
  %2 = load i64, i64* %value.addr, align 8
  %call1 = call i64 @store_terminal_param(%struct.terminal* %call, i64 %1, i64 %2)
  ret i64 %call1
}

; Function Attrs: nounwind uwtable
define internal i64 @store_terminal_param(%struct.terminal* %t, i64 %parameter, i64 %value) #0 {
entry:
  %retval = alloca i64, align 8
  %t.addr = alloca %struct.terminal*, align 8
  %parameter.addr = alloca i64, align 8
  %value.addr = alloca i64, align 8
  %old_alist_elt = alloca i64, align 8
  %result = alloca i64, align 8
  store %struct.terminal* %t, %struct.terminal** %t.addr, align 8
  store i64 %parameter, i64* %parameter.addr, align 8
  store i64 %value, i64* %value.addr, align 8
  %0 = load i64, i64* %parameter.addr, align 8
  %1 = load %struct.terminal*, %struct.terminal** %t.addr, align 8
  %param_alist = getelementptr inbounds %struct.terminal, %struct.terminal* %1, i32 0, i32 1
  %2 = load i64, i64* %param_alist, align 8
  %call = call i64 @Fassq(i64 %0, i64 %2)
  store i64 %call, i64* %old_alist_elt, align 8
  %3 = load i64, i64* %old_alist_elt, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %3, %call1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.terminal*, %struct.terminal** %t.addr, align 8
  %5 = load i64, i64* %parameter.addr, align 8
  %6 = load i64, i64* %value.addr, align 8
  %call2 = call i64 @Fcons(i64 %5, i64 %6)
  %7 = load %struct.terminal*, %struct.terminal** %t.addr, align 8
  %param_alist3 = getelementptr inbounds %struct.terminal, %struct.terminal* %7, i32 0, i32 1
  %8 = load i64, i64* %param_alist3, align 8
  %call4 = call i64 @Fcons(i64 %call2, i64 %8)
  call void @tset_param_alist(%struct.terminal* %4, i64 %call4)
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call5, i64* %retval
  br label %return

if.else:                                          ; preds = %entry
  %9 = load i64, i64* %old_alist_elt, align 8
  %call6 = call i64 @Fcdr(i64 %9)
  store i64 %call6, i64* %result, align 8
  %10 = load i64, i64* %old_alist_elt, align 8
  %11 = load i64, i64* %value.addr, align 8
  %call7 = call i64 @Fsetcdr(i64 %10, i64 %11)
  %12 = load i64, i64* %result, align 8
  store i64 %12, i64* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %13 = load i64, i64* %retval
  ret i64 %13
}

; Function Attrs: nounwind uwtable
define i64 @terminal_glyph_code(%struct.terminal* %t, i32 %ch) #0 {
entry:
  %retval = alloca i64, align 8
  %t.addr = alloca %struct.terminal*, align 8
  %ch.addr = alloca i32, align 4
  store %struct.terminal* %t, %struct.terminal** %t.addr, align 8
  store i32 %ch, i32* %ch.addr, align 4
  %0 = load %struct.terminal*, %struct.terminal** %t.addr, align 8
  %type = getelementptr inbounds %struct.terminal, %struct.terminal* %0, i32 0, i32 8
  %1 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %2 = load %struct.terminal*, %struct.terminal** %t.addr, align 8
  %glyph_code_table = getelementptr inbounds %struct.terminal, %struct.terminal* %2, i32 0, i32 4
  %3 = load i64, i64* %glyph_code_table, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1 = icmp eq i64 %3, %call
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %4 = load i32, i32* %ch.addr, align 4
  %cmp2 = icmp eq i32 %4, 4194303
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %lor.lhs.false, %if.then
  %5 = load %struct.terminal*, %struct.terminal** %t.addr, align 8
  call void @calculate_glyph_code_table(%struct.terminal* %5)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %lor.lhs.false
  %6 = load %struct.terminal*, %struct.terminal** %t.addr, align 8
  %glyph_code_table4 = getelementptr inbounds %struct.terminal, %struct.terminal* %6, i32 0, i32 4
  %7 = load i64, i64* %glyph_code_table4, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp6 = icmp eq i64 %7, %call5
  br i1 %cmp6, label %if.end.10, label %if.then.7

if.then.7:                                        ; preds = %if.end
  %8 = load %struct.terminal*, %struct.terminal** %t.addr, align 8
  %glyph_code_table8 = getelementptr inbounds %struct.terminal, %struct.terminal* %8, i32 0, i32 4
  %9 = load i64, i64* %glyph_code_table8, align 8
  %10 = load i32, i32* %ch.addr, align 4
  %call9 = call i64 @char_table_ref(i64 %9, i32 %10)
  store i64 %call9, i64* %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %entry
  %call12 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call12, i64* %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.7
  %11 = load i64, i64* %retval
  ret i64 %11
}

; Function Attrs: nounwind uwtable
define internal void @calculate_glyph_code_table(%struct.terminal* %t) #0 {
entry:
  %t.addr = alloca %struct.terminal*, align 8
  %glyphtab = alloca i64, align 8
  %entry_ct = alloca i32, align 4
  %unipair_buffer = alloca [1000 x %struct.unipair], align 16
  %entries = alloca %struct.unipair*, align 8
  %alloced = alloca %struct.unipair*, align 8
  %fd = alloca i32, align 4
  %unimapdesc = alloca %struct.unimapdesc, align 8
  %i = alloca i32, align 4
  store %struct.terminal* %t, %struct.terminal** %t.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call, i64* %glyphtab, align 8
  store i32 1000, i32* %entry_ct, align 4
  %arraydecay = getelementptr inbounds [1000 x %struct.unipair], [1000 x %struct.unipair]* %unipair_buffer, i32 0, i32 0
  store %struct.unipair* %arraydecay, %struct.unipair** %entries, align 8
  store %struct.unipair* null, %struct.unipair** %alloced, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.end.20
  %0 = load %struct.terminal*, %struct.terminal** %t.addr, align 8
  %display_info = getelementptr inbounds %struct.terminal, %struct.terminal* %0, i32 0, i32 12
  %tty = bitcast %union.display_info* %display_info to %struct.tty_display_info**
  %1 = load %struct.tty_display_info*, %struct.tty_display_info** %tty, align 8
  %output = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %1, i32 0, i32 4
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %output, align 8
  %call1 = call i32 @fileno(%struct._IO_FILE* %2) #8
  store i32 %call1, i32* %fd, align 4
  %entry_ct2 = getelementptr inbounds %struct.unimapdesc, %struct.unimapdesc* %unimapdesc, i32 0, i32 0
  %3 = load i32, i32* %entry_ct, align 4
  %conv = trunc i32 %3 to i16
  store i16 %conv, i16* %entry_ct2, align 2
  %entries3 = getelementptr inbounds %struct.unimapdesc, %struct.unimapdesc* %unimapdesc, i32 0, i32 1
  %4 = load %struct.unipair*, %struct.unipair** %entries, align 8
  store %struct.unipair* %4, %struct.unipair** %entries3, align 8
  %5 = load i32, i32* %fd, align 4
  %call4 = call i32 (i32, i64, ...) @ioctl(i32 %5, i64 19302, %struct.unimapdesc* %unimapdesc) #8
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  %call7 = call i64 @Fmake_char_table(i64 %call6, i64 -2)
  store i64 %call7, i64* %glyphtab, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i32, i32* %i, align 4
  %entry_ct8 = getelementptr inbounds %struct.unimapdesc, %struct.unimapdesc* %unimapdesc, i32 0, i32 0
  %7 = load i16, i16* %entry_ct8, align 2
  %conv9 = zext i16 %7 to i32
  %cmp10 = icmp slt i32 %6, %conv9
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i64, i64* %glyphtab, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.unipair*, %struct.unipair** %entries, align 8
  %arrayidx = getelementptr inbounds %struct.unipair, %struct.unipair* %10, i64 %idxprom
  %unicode = getelementptr inbounds %struct.unipair, %struct.unipair* %arrayidx, i32 0, i32 0
  %11 = load i16, i16* %unicode, align 2
  %conv12 = zext i16 %11 to i32
  %12 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %12 to i64
  %13 = load %struct.unipair*, %struct.unipair** %entries, align 8
  %arrayidx14 = getelementptr inbounds %struct.unipair, %struct.unipair* %13, i64 %idxprom13
  %fontpos = getelementptr inbounds %struct.unipair, %struct.unipair* %arrayidx14, i32 0, i32 1
  %14 = load i16, i16* %fontpos, align 2
  %conv15 = zext i16 %14 to i64
  %shl = shl i64 %conv15, 2
  %add = add i64 %shl, 2
  call void @char_table_set(i64 %8, i32 %conv12, i64 %add)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.end

if.end:                                           ; preds = %while.body
  %call16 = call i32* @__errno_location() #9
  %16 = load i32, i32* %call16, align 4
  %cmp17 = icmp ne i32 %16, 12
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end
  br label %while.end

if.end.20:                                        ; preds = %if.end
  %entry_ct21 = getelementptr inbounds %struct.unimapdesc, %struct.unimapdesc* %unimapdesc, i32 0, i32 0
  %17 = load i16, i16* %entry_ct21, align 2
  %conv22 = zext i16 %17 to i32
  store i32 %conv22, i32* %entry_ct, align 4
  %18 = load %struct.unipair*, %struct.unipair** %alloced, align 8
  %19 = bitcast %struct.unipair* %18 to i8*
  %20 = load i32, i32* %entry_ct, align 4
  %conv23 = sext i32 %20 to i64
  %mul = mul i64 %conv23, 4
  %call24 = call i8* @xrealloc(i8* %19, i64 %mul)
  %21 = bitcast i8* %call24 to %struct.unipair*
  store %struct.unipair* %21, %struct.unipair** %alloced, align 8
  store %struct.unipair* %21, %struct.unipair** %entries, align 8
  br label %while.body

while.end:                                        ; preds = %if.then.19, %for.end
  %22 = load %struct.unipair*, %struct.unipair** %alloced, align 8
  %23 = bitcast %struct.unipair* %22 to i8*
  call void @xfree(i8* %23)
  %24 = load i64, i64* %glyphtab, align 8
  %25 = load %struct.terminal*, %struct.terminal** %t.addr, align 8
  %glyph_code_table = getelementptr inbounds %struct.terminal, %struct.terminal* %25, i32 0, i32 4
  store i64 %24, i64* %glyph_code_table, align 8
  ret void
}

declare i64 @char_table_ref(i64, i32) #1

; Function Attrs: nounwind uwtable
define %struct.terminal* @init_initial_terminal() #0 {
entry:
  %0 = load i8, i8* @initialized, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.terminal*, %struct.terminal** @terminal_list, align 8
  %tobool1 = icmp ne %struct.terminal* %1, null
  br i1 %tobool1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %2 = load %struct.tty_display_info*, %struct.tty_display_info** @tty_list, align 8
  %tobool3 = icmp ne %struct.tty_display_info* %2, null
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  call void @emacs_abort() #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false.2
  %call = call %struct.terminal* @create_terminal(i32 0, %struct.redisplay_interface* null)
  store %struct.terminal* %call, %struct.terminal** @initial_terminal, align 8
  %call4 = call noalias i8* @xstrdup(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0))
  %3 = load %struct.terminal*, %struct.terminal** @initial_terminal, align 8
  %name = getelementptr inbounds %struct.terminal, %struct.terminal* %3, i32 0, i32 9
  store i8* %call4, i8** %name, align 8
  %4 = load %struct.kboard*, %struct.kboard** @initial_kboard, align 8
  %5 = load %struct.terminal*, %struct.terminal** @initial_terminal, align 8
  %kboard = getelementptr inbounds %struct.terminal, %struct.terminal* %5, i32 0, i32 10
  store %struct.kboard* %4, %struct.kboard** %kboard, align 8
  %6 = load %struct.terminal*, %struct.terminal** @initial_terminal, align 8
  %delete_terminal_hook = getelementptr inbounds %struct.terminal, %struct.terminal* %6, i32 0, i32 46
  store void (%struct.terminal*)* @delete_initial_terminal, void (%struct.terminal*)** %delete_terminal_hook, align 8
  %7 = load %struct.terminal*, %struct.terminal** @initial_terminal, align 8
  %delete_frame_hook = getelementptr inbounds %struct.terminal, %struct.terminal* %7, i32 0, i32 45
  %delete_frame_hook5 = bitcast {}** %delete_frame_hook to void (%struct.frame*)**
  store void (%struct.frame*)* @initial_free_frame_resources, void (%struct.frame*)** %delete_frame_hook5, align 8
  %8 = load %struct.terminal*, %struct.terminal** @initial_terminal, align 8
  ret %struct.terminal* %8
}

declare noalias i8* @xstrdup(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @delete_initial_terminal(%struct.terminal* %terminal) #0 {
entry:
  %terminal.addr = alloca %struct.terminal*, align 8
  store %struct.terminal* %terminal, %struct.terminal** %terminal.addr, align 8
  %0 = load %struct.terminal*, %struct.terminal** %terminal.addr, align 8
  %1 = load %struct.terminal*, %struct.terminal** @initial_terminal, align 8
  %cmp = icmp ne %struct.terminal* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @emacs_abort() #6
  unreachable

if.end:                                           ; preds = %entry
  %2 = load %struct.terminal*, %struct.terminal** %terminal.addr, align 8
  call void @delete_terminal(%struct.terminal* %2)
  store %struct.terminal* null, %struct.terminal** @initial_terminal, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @initial_free_frame_resources(%struct.frame* %f) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  call void @free_frame_faces(%struct.frame* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define void @syms_of_terminal() #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %entry
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_terminal.o_fwd, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 257))
  br label %do.end

do.end:                                           ; preds = %do.body
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 257), align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_terminal.o_fwd.5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 69))
  br label %do.end.2

do.end.2:                                         ; preds = %do.body.1
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call3, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 69), align 8
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sdelete_terminal to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sframe_terminal to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sterminal_live_p to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* @Sterminal_list)
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sterminal_name to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sterminal_parameters to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sterminal_parameter to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sset_terminal_parameter to %struct.Lisp_Subr*))
  %call4 = call i64 @intern_c_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0))
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  %call6 = call i64 @Fprovide(i64 %call4, i64 %call5)
  ret void
}

declare void @defvar_lisp(%struct.Lisp_Objfwd*, i8*, i64*) #1

declare void @defsubr(%struct.Lisp_Subr*) #1

declare i64 @Fprovide(i64, i64) #1

declare i64 @intern_c_string(i8*) #1

declare zeroext i1 @TERMINALP(i64) #1

declare %struct.terminal* @XTERMINAL(i64) #1

declare zeroext i1 @FRAMEP(i64) #1

declare %struct.Lisp_Vector* @allocate_pseudovector(i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @tset_param_alist(%struct.terminal* %t, i64 %val) #0 {
entry:
  %t.addr = alloca %struct.terminal*, align 8
  %val.addr = alloca i64, align 8
  store %struct.terminal* %t, %struct.terminal** %t.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.terminal*, %struct.terminal** %t.addr, align 8
  %param_alist = getelementptr inbounds %struct.terminal, %struct.terminal* %1, i32 0, i32 1
  store i64 %0, i64* %param_alist, align 8
  ret void
}

declare i64 @Fsetcdr(i64, i64) #1

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #4

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) #4

declare i64 @Fmake_char_table(i64, i64) #1

declare void @char_table_set(i64, i32, i64) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

declare i8* @xrealloc(i8*, i64) #1

declare void @free_frame_faces(%struct.frame*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
