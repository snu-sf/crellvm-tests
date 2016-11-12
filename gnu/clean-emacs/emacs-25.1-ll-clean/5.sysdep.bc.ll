; ModuleID = './src/sysdep.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_display_info = type { %struct.tty_display_info*, i8*, i8*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct.emacs_tty*, i8, i32, %struct.terminal*, %struct.cm*, i64, %struct.frame*, i32, %struct.Mouse_HLInfo, [4096 x i8], [4096 x i8], i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i8, i32, i32, i8, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.emacs_tty = type { %struct.termios }
%struct.termios = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }
%struct.terminal = type { %struct.vectorlike_header, i64, i64, i64, i64, %struct.terminal*, i32, i32, i32, i8*, %struct.kboard*, %struct.image_cache*, %union.display_info, %struct.coding_system*, %struct.coding_system*, %struct.redisplay_interface*, void (%struct.frame*, i32, i32)*, void (%struct.frame*, i32, i32)*, void (%struct.frame*)*, void (%struct.frame*)*, void (%struct.frame*, i32)*, void (%struct.frame*, i32, i32)*, void (%struct.frame*, %struct.glyph*, i32)*, void (%struct.frame*, %struct.glyph*, i32)*, void (%struct.frame*, i32)*, void (%struct.frame*)*, void (%struct.frame*, i1)*, void (%struct.terminal*)*, void (%struct.terminal*)*, void (%struct.frame*)*, void (%struct.frame*)*, void (%struct.frame*, i32)*, void (%struct.frame**, i32, i64*, i32*, i64*, i64*, i64*)*, void (%struct.frame*)*, void (%struct.frame*, i1)*, void (%struct.frame*)*, i64 (%struct.frame*, i32, i32, i32, i64, i8**)*, i64 (%struct.frame*, i64, i64)*, void (%struct.window*, i32, i32, i32)*, void (%struct.window*, i32, i32, i32)*, void (%struct.frame*)*, void (%struct.window*)*, void (%struct.frame*)*, i32 (%struct.terminal*, %struct.input_event*)*, void (%struct.frame*)*, void (%struct.frame*)*, void (%struct.terminal*)* }
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
%union.display_info = type { %struct.tty_display_info* }
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
%struct.XRectangle = type { i16, i16, i16, i16 }
%struct.text_pos = type { i64, i64 }
%struct.bidi_it = type { i64, i64, i32, i64, i64, i32, i32, i32, i8, i8, i64, i64, %struct.bidi_saved_info, %struct.bidi_saved_info, %struct.bidi_saved_info, %struct.bidi_saved_info, %struct.bidi_saved_info, i64, i32, i64, i32, i32, i32, i64, i32, i32, [128 x %struct.bidi_stack], %struct.bidi_string_data, %struct.window*, i32, i64, i8 }
%struct.bidi_saved_info = type { i64, i32, i32 }
%struct.bidi_stack = type { i64, i16, i8, i8 }
%struct.bidi_string_data = type { i64, i8*, i64, i64, i8 }
%struct.run = type { i32, i32, i32, i32, i32, i32 }
%struct.draw_fringe_bitmap_params = type { i32, i16*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.face* }
%struct.face = type { [19 x i64], i32, %struct._XGC*, i64, i64, i64, i64, i64, i64, i64, %struct.font*, i32, i32, i24, i32, %struct.face*, %struct.face*, %struct.face*, i8* }
%struct._XGC = type opaque
%struct.font = type { %struct.vectorlike_header, [17 x i64], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, %struct.font_driver* }
%struct.font_driver = type { i64, i8, i64 (%struct.frame*)*, i64 (%struct.frame*, i64)*, i64 (%struct.frame*, i64)*, i64 (%struct.frame*)*, void (i64)*, i64 (%struct.frame*, i64, i32)*, void (%struct.font*)*, void (%struct.frame*, %struct.face*)*, void (%struct.frame*, %struct.face*)*, i32 (i64, i32)*, i32 (%struct.font*, i32)*, void (%struct.font*, i32*, i32, %struct.font_metrics*)*, i32 (%struct.glyph_string*, i32, i32, i32, i32, i1)*, i32 (%struct.font*, i32, %struct.font_bitmap*, i32)*, void (%struct.font*, %struct.font_bitmap*)*, i32 (%struct.font*, i32, i32, i32*, i32*)*, i64 (%struct.font*)*, i32 (%struct.font*, i64, i64, i32, i32, i64, i32, i1)*, i32 (%struct.frame*)*, i32 (%struct.frame*)*, i64 (i64)*, i32 (%struct.frame*, %struct.font*)*, i32 (%struct.font*, i32, i32*)*, void (i64, i64)*, i1 (%struct.frame*, i64, i64)*, i64 (%struct.font*)* }
%struct.font_metrics = type { i16, i16, i16, i16, i16 }
%struct.glyph_string = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.frame*, %struct.window*, %struct._XDisplay*, i64, %struct.glyph_row*, i32, %struct.XChar2b*, i32, i32, %struct.face*, %struct.font*, %struct.composition*, i64, i32, i32, i8, %struct._XGC*, %struct.glyph*, %struct.image*, %struct.xwidget*, %struct.glyph_slice, %struct.glyph_string*, %struct.glyph_string*, [2 x %struct.XRectangle], i32, i32, i32, %struct.glyph_string*, %struct.glyph_string* }
%struct.XChar2b = type { i8, i8 }
%struct.composition = type { i32, i16, i16, i16, i16, i16, i32, i32, i64, i8*, i16* }
%struct.font_bitmap = type { i32, i32, i32, i32, i8*, i32, i32, i32 }
%struct.input_event = type { i32, i32, i32, i64, i64, i64, i64, i64 }
%struct.cm = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.frame = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.face_cache*, i32, %struct.glyph_pool*, %struct.glyph_pool*, %struct.glyph_matrix*, %struct.glyph_matrix*, i48, i32, i32, i32, i32, i8*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.terminal*, %union.output_data, %struct.font_driver_list*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x double], double, i32, i64, i64 }
%struct.face_cache = type { %struct.face**, %struct.frame*, %struct.face**, i64, i32, i8 }
%union.output_data = type { %struct.tty_output* }
%struct.tty_output = type { %struct.tty_display_info* }
%struct.font_driver_list = type { i8, %struct.font_driver*, %struct.font_driver_list* }
%struct.Mouse_HLInfo = type { i32, i32, i32, i32, i32, i32, i64, i32, i64, %struct.frame*, i32, i32, i8 }
%struct.emacs_globals = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.__sigset_t = type { [16 x i64] }
%struct.sigaction = type { %union.anon.11, %struct.__sigset_t, i32, void ()* }
%union.anon.11 = type { void (i32)* }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.save_signal = type { i32, %struct.sigaction }
%struct.Lisp_Cons = type { i64, %union.anon.20 }
%union.anon.20 = type { i64 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.sigaltstack = type { i8*, i32, i64 }
%struct.siginfo_t = type { i32, i32, i32, %union.anon.12 }
%union.anon.12 = type { %struct.anon.16, [80 x i8] }
%struct.anon.16 = type { i32, i32, i32, i64, i64 }
%struct.timeval = type { i64, i64 }
%struct.Lisp_Process = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, [6 x i32], i64, i64, i32, i32, i8, i32, i32, %struct.gnutls_session_int*, %struct.gnutls_certificate_credentials_st*, %struct.gnutls_anon_client_credentials_st*, %struct.gnutls_x509_crt_int*, i32, i32, i32, i32, i8 }
%struct.gnutls_session_int = type opaque
%struct.gnutls_certificate_credentials_st = type opaque
%struct.gnutls_anon_client_credentials_st = type opaque
%struct.gnutls_x509_crt_int = type opaque
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.group = type { i8*, i8*, i32, i8** }
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%struct.anon.17 = type { i8* }

@noninteractive = external global i8, align 1
@tty_list = external global %struct.tty_display_info*, align 8
@selected_frame = external global i64, align 8
@baud_convert = internal constant [16 x i32] [i32 0, i32 50, i32 75, i32 110, i32 135, i32 150, i32 200, i32 300, i32 600, i32 1200, i32 1800, i32 2400, i32 4800, i32 9600, i32 19200, i32 38400], align 16
@globals = external global %struct.emacs_globals, align 8
@.str = private unnamed_addr constant [21 x i8] c"Can't spawn subshell\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"SHELL\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@old_fcntl_flags = internal global [1024 x i32] zeroinitializer, align 16
@interrupts_deferred = external global i8, align 1
@inherited_pgroup = internal global i32 0, align 4
@quit_char = external global i32, align 4
@interrupt_input = external global i8, align 1
@old_fcntl_owner = internal global [1024 x i32] zeroinitializer, align 16
@_sobuf = common global [8200 x i8] zeroinitializer, align 16
@Vframe_list = external global i64, align 8
@frame_garbaged = external global i8, align 1
@stdout = external global %struct._IO_FILE*, align 8
@current_tty = external global %struct.tty_display_info*, align 8
@main_thread = internal global i64 0, align 8
@empty_mask = common global %struct.__sigset_t zeroinitializer, align 8
@process_fatal_action = internal global %struct.sigaction zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"sigusr1\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"sigusr2\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@thread_backtrace_npointers = internal global i32 0, align 4
@thread_backtrace_buffer = internal global [501 x i8*] zeroinitializer, align 16
@.str.6 = private unnamed_addr constant [13 x i8] c"\0ABacktrace:\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"...\0A\00", align 1
@pending_signals = external global i8, align 1
@initial_argv = external global i8**, align 8
@.str.8 = private unnamed_addr constant [6 x i8] c"emacs\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"%s: %s: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@sys_siglist = external constant [65 x i8*], align 16
@.str.12 = private unnamed_addr constant [15 x i8] c"Unknown signal\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"Opening serial port\00", align 1
@serial_configure.summary = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"Failed tcgetattr\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"Failed cfsetspeed\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c":bytesize must be nil (8), 7, or 8\00", align 1
@.str.17 = private unnamed_addr constant [50 x i8] c":parity must be nil (no parity), `even', or `odd'\00", align 1
@.str.18 = private unnamed_addr constant [43 x i8] c":stopbits must be nil (1 stopbit), 1, or 2\00", align 1
@.str.19 = private unnamed_addr constant [57 x i8] c":flowcontrol must be nil (no flowcontrol), `hw', or `sw'\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"Failed tcsetattr\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"/proc\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"[0-9]+\00", align 1
@system_process_attributes.default_cmd = internal constant [4 x i8] c"???\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"/proc/%ld\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"/stat\00", align 1
@.str.25 = private unnamed_addr constant [81 x i8] c"%c %d %d %d %d %d %*u %lu %lu %lu %lu %Lu %Lu %Lu %Lu %ld %ld %d %*d %Lu %lu %ld\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"/cmdline\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"[%.*s]\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"Invalid locale %s: %s\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"Invalid string for collation: %s\00", align 1
@input_available_clear_time = external global %struct.timespec*, align 8
@sigsegv_stack = internal global [8192 x i8] zeroinitializer, align 16
@gc_in_progress = external global i8, align 1
@return_to_command_loop = external global [1 x %struct.__jmp_buf_tag], align 16
@stack_bottom = external global i8*, align 8
@.str.30 = private unnamed_addr constant [18 x i8] c"/proc/tty/drivers\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"%*s %s %u %s %*s\0A\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"/proc/uptime\00", align 1
@.str.35 = private unnamed_addr constant [28 x i8] c"%llu.%n%llu%n %llu.%n%llu%n\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"/proc/meminfo\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"MemTotal: %lu\00", align 1

; Function Attrs: nounwind uwtable
define void @discard_tty_input() #0 {
entry:
  %buf = alloca %struct.emacs_tty, align 4
  %tty = alloca %struct.tty_display_info*, align 8
  %0 = load i8, i8* @noninteractive, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  %1 = load %struct.tty_display_info*, %struct.tty_display_info** @tty_list, align 8
  store %struct.tty_display_info* %1, %struct.tty_display_info** %tty, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load %struct.tty_display_info*, %struct.tty_display_info** %tty, align 8
  %tobool1 = icmp ne %struct.tty_display_info* %2, null
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.tty_display_info*, %struct.tty_display_info** %tty, align 8
  %input = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %3, i32 0, i32 3
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %input, align 8
  %tobool2 = icmp ne %struct._IO_FILE* %4, null
  br i1 %tobool2, label %if.then.3, label %if.end.9

if.then.3:                                        ; preds = %for.body
  %5 = load %struct.tty_display_info*, %struct.tty_display_info** %tty, align 8
  %input4 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %5, i32 0, i32 3
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %input4, align 8
  %call = call i32 @fileno(%struct._IO_FILE* %6) #7
  %call5 = call i32 @emacs_get_tty(i32 %call, %struct.emacs_tty* %buf)
  %7 = load %struct.tty_display_info*, %struct.tty_display_info** %tty, align 8
  %input6 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %7, i32 0, i32 3
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %input6, align 8
  %call7 = call i32 @fileno(%struct._IO_FILE* %8) #7
  %call8 = call i32 @emacs_set_tty(i32 %call7, %struct.emacs_tty* %buf, i1 zeroext false)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.3, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %9 = load %struct.tty_display_info*, %struct.tty_display_info** %tty, align 8
  %next = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %9, i32 0, i32 0
  %10 = load %struct.tty_display_info*, %struct.tty_display_info** %next, align 8
  store %struct.tty_display_info* %10, %struct.tty_display_info** %tty, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @emacs_get_tty(i32 %fd, %struct.emacs_tty* %settings) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %settings.addr = alloca %struct.emacs_tty*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store %struct.emacs_tty* %settings, %struct.emacs_tty** %settings.addr, align 8
  %0 = load %struct.emacs_tty*, %struct.emacs_tty** %settings.addr, align 8
  %main = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %0, i32 0, i32 0
  %1 = bitcast %struct.termios* %main to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 60, i32 4, i1 false)
  %2 = load i32, i32* %fd.addr, align 4
  %3 = load %struct.emacs_tty*, %struct.emacs_tty** %settings.addr, align 8
  %main1 = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %3, i32 0, i32 0
  %call = call i32 @tcgetattr(i32 %2, %struct.termios* %main1) #7
  ret i32 %call
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i32 @emacs_set_tty(i32 %fd, %struct.emacs_tty* %settings, i1 zeroext %flushp) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %settings.addr = alloca %struct.emacs_tty*, align 8
  %flushp.addr = alloca i8, align 1
  %i = alloca i32, align 4
  %new = alloca %struct.termios, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store %struct.emacs_tty* %settings, %struct.emacs_tty** %settings.addr, align 8
  %frombool = zext i1 %flushp to i8
  store i8 %frombool, i8* %flushp.addr, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %fd.addr, align 4
  %2 = load i8, i8* %flushp.addr, align 1
  %tobool = trunc i8 %2 to i1
  %cond = select i1 %tobool, i32 2, i32 1
  %3 = load %struct.emacs_tty*, %struct.emacs_tty** %settings.addr, align 8
  %main = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %3, i32 0, i32 0
  %call = call i32 @tcsetattr(i32 %1, i32 %cond, %struct.termios* %main) #7
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.else.5

if.then:                                          ; preds = %for.body
  %call2 = call i32* @__errno_location() #11
  %4 = load i32, i32* %call2, align 4
  %cmp3 = icmp eq i32 %4, 4
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  br label %for.inc

if.else:                                          ; preds = %if.then
  store i32 -1, i32* %retval
  br label %return

if.else.5:                                        ; preds = %for.body
  %5 = bitcast %struct.termios* %new to i8*
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 60, i32 4, i1 false)
  %6 = load i32, i32* %fd.addr, align 4
  %call6 = call i32 @tcgetattr(i32 %6, %struct.termios* %new) #7
  %c_iflag = getelementptr inbounds %struct.termios, %struct.termios* %new, i32 0, i32 0
  %7 = load i32, i32* %c_iflag, align 4
  %8 = load %struct.emacs_tty*, %struct.emacs_tty** %settings.addr, align 8
  %main7 = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %8, i32 0, i32 0
  %c_iflag8 = getelementptr inbounds %struct.termios, %struct.termios* %main7, i32 0, i32 0
  %9 = load i32, i32* %c_iflag8, align 4
  %cmp9 = icmp eq i32 %7, %9
  br i1 %cmp9, label %land.lhs.true, label %if.else.28

land.lhs.true:                                    ; preds = %if.else.5
  %c_oflag = getelementptr inbounds %struct.termios, %struct.termios* %new, i32 0, i32 1
  %10 = load i32, i32* %c_oflag, align 4
  %11 = load %struct.emacs_tty*, %struct.emacs_tty** %settings.addr, align 8
  %main10 = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %11, i32 0, i32 0
  %c_oflag11 = getelementptr inbounds %struct.termios, %struct.termios* %main10, i32 0, i32 1
  %12 = load i32, i32* %c_oflag11, align 4
  %cmp12 = icmp eq i32 %10, %12
  br i1 %cmp12, label %land.lhs.true.13, label %if.else.28

land.lhs.true.13:                                 ; preds = %land.lhs.true
  %c_cflag = getelementptr inbounds %struct.termios, %struct.termios* %new, i32 0, i32 2
  %13 = load i32, i32* %c_cflag, align 4
  %14 = load %struct.emacs_tty*, %struct.emacs_tty** %settings.addr, align 8
  %main14 = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %14, i32 0, i32 0
  %c_cflag15 = getelementptr inbounds %struct.termios, %struct.termios* %main14, i32 0, i32 2
  %15 = load i32, i32* %c_cflag15, align 4
  %cmp16 = icmp eq i32 %13, %15
  br i1 %cmp16, label %land.lhs.true.17, label %if.else.28

land.lhs.true.17:                                 ; preds = %land.lhs.true.13
  %c_lflag = getelementptr inbounds %struct.termios, %struct.termios* %new, i32 0, i32 3
  %16 = load i32, i32* %c_lflag, align 4
  %17 = load %struct.emacs_tty*, %struct.emacs_tty** %settings.addr, align 8
  %main18 = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %17, i32 0, i32 0
  %c_lflag19 = getelementptr inbounds %struct.termios, %struct.termios* %main18, i32 0, i32 3
  %18 = load i32, i32* %c_lflag19, align 4
  %cmp20 = icmp eq i32 %16, %18
  br i1 %cmp20, label %land.lhs.true.21, label %if.else.28

land.lhs.true.21:                                 ; preds = %land.lhs.true.17
  %c_cc = getelementptr inbounds %struct.termios, %struct.termios* %new, i32 0, i32 5
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc, i32 0, i32 0
  %19 = load %struct.emacs_tty*, %struct.emacs_tty** %settings.addr, align 8
  %main22 = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %19, i32 0, i32 0
  %c_cc23 = getelementptr inbounds %struct.termios, %struct.termios* %main22, i32 0, i32 5
  %arraydecay24 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc23, i32 0, i32 0
  %call25 = call i32 @memcmp(i8* %arraydecay, i8* %arraydecay24, i64 32) #12
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %land.lhs.true.21
  br label %for.end

if.else.28:                                       ; preds = %land.lhs.true.21, %land.lhs.true.17, %land.lhs.true.13, %land.lhs.true, %if.else.5
  br label %for.inc

for.inc:                                          ; preds = %if.else.28, %if.then.4
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.27, %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.else
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define void @stuff_char(i8 signext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  %0 = load i64, i64* @selected_frame, align 8
  %call = call zeroext i1 @FRAMEP(i64 %0)
  br i1 %call, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* @selected_frame, align 8
  %sub = sub nsw i64 %1, 5
  %2 = inttoptr i64 %sub to i8*
  %3 = bitcast i8* %2 to %struct.frame*
  %terminal = getelementptr inbounds %struct.frame, %struct.frame* %3, i32 0, i32 61
  %4 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %cmp = icmp ne %struct.terminal* %4, null
  br i1 %cmp, label %land.lhs.true.1, label %if.then

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %5 = load i64, i64* @selected_frame, align 8
  %sub2 = sub nsw i64 %5, 5
  %6 = inttoptr i64 %sub2 to i8*
  %7 = bitcast i8* %6 to %struct.frame*
  %output_method = getelementptr inbounds %struct.frame, %struct.frame* %7, i32 0, i32 26
  %8 = bitcast i48* %output_method to i64*
  %bf.load = load i64, i64* %8, align 8
  %bf.lshr = lshr i64 %bf.load, 23
  %bf.clear = and i64 %bf.lshr, 7
  %bf.cast = trunc i64 %bf.clear to i32
  %cmp3 = icmp eq i32 %bf.cast, 1
  br i1 %cmp3, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.1, %land.lhs.true, %entry
  br label %return

if.end:                                           ; preds = %land.lhs.true.1
  %9 = load i64, i64* @selected_frame, align 8
  %call4 = call zeroext i1 @FRAMEP(i64 %9)
  br i1 %call4, label %land.lhs.true.5, label %cond.false

land.lhs.true.5:                                  ; preds = %if.end
  %10 = load i64, i64* @selected_frame, align 8
  %sub6 = sub nsw i64 %10, 5
  %11 = inttoptr i64 %sub6 to i8*
  %12 = bitcast i8* %11 to %struct.frame*
  %terminal7 = getelementptr inbounds %struct.frame, %struct.frame* %12, i32 0, i32 61
  %13 = load %struct.terminal*, %struct.terminal** %terminal7, align 8
  %cmp8 = icmp ne %struct.terminal* %13, null
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.5
  %14 = load i64, i64* @selected_frame, align 8
  %sub9 = sub nsw i64 %14, 5
  %15 = inttoptr i64 %sub9 to i8*
  %16 = bitcast i8* %15 to %struct.frame*
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.5, %if.end
  call void @emacs_abort() #13
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %17, %cond.true
  %cond = phi %struct.frame* [ %16, %cond.true ], [ null, %17 ]
  %output_method10 = getelementptr inbounds %struct.frame, %struct.frame* %cond, i32 0, i32 26
  %18 = bitcast i48* %output_method10 to i64*
  %bf.load11 = load i64, i64* %18, align 8
  %bf.lshr12 = lshr i64 %bf.load11, 23
  %bf.clear13 = and i64 %bf.lshr12, 7
  %bf.cast14 = trunc i64 %bf.clear13 to i32
  %cmp15 = icmp eq i32 %bf.cast14, 1
  br i1 %cmp15, label %cond.true.32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %19 = load i64, i64* @selected_frame, align 8
  %call16 = call zeroext i1 @FRAMEP(i64 %19)
  br i1 %call16, label %land.lhs.true.17, label %cond.false.23

land.lhs.true.17:                                 ; preds = %lor.lhs.false
  %20 = load i64, i64* @selected_frame, align 8
  %sub18 = sub nsw i64 %20, 5
  %21 = inttoptr i64 %sub18 to i8*
  %22 = bitcast i8* %21 to %struct.frame*
  %terminal19 = getelementptr inbounds %struct.frame, %struct.frame* %22, i32 0, i32 61
  %23 = load %struct.terminal*, %struct.terminal** %terminal19, align 8
  %cmp20 = icmp ne %struct.terminal* %23, null
  br i1 %cmp20, label %cond.true.21, label %cond.false.23

cond.true.21:                                     ; preds = %land.lhs.true.17
  %24 = load i64, i64* @selected_frame, align 8
  %sub22 = sub nsw i64 %24, 5
  %25 = inttoptr i64 %sub22 to i8*
  %26 = bitcast i8* %25 to %struct.frame*
  br label %cond.end.24

cond.false.23:                                    ; preds = %land.lhs.true.17, %lor.lhs.false
  call void @emacs_abort() #13
  unreachable
                                                  ; No predecessors!
  br label %cond.end.24

cond.end.24:                                      ; preds = %27, %cond.true.21
  %cond25 = phi %struct.frame* [ %26, %cond.true.21 ], [ null, %27 ]
  %output_method26 = getelementptr inbounds %struct.frame, %struct.frame* %cond25, i32 0, i32 26
  %28 = bitcast i48* %output_method26 to i64*
  %bf.load27 = load i64, i64* %28, align 8
  %bf.lshr28 = lshr i64 %bf.load27, 23
  %bf.clear29 = and i64 %bf.lshr28, 7
  %bf.cast30 = trunc i64 %bf.clear29 to i32
  %cmp31 = icmp eq i32 %bf.cast30, 3
  br i1 %cmp31, label %cond.true.32, label %cond.false.44

cond.true.32:                                     ; preds = %cond.end.24, %cond.end
  %29 = load i64, i64* @selected_frame, align 8
  %call33 = call zeroext i1 @FRAMEP(i64 %29)
  br i1 %call33, label %land.lhs.true.34, label %cond.false.40

land.lhs.true.34:                                 ; preds = %cond.true.32
  %30 = load i64, i64* @selected_frame, align 8
  %sub35 = sub nsw i64 %30, 5
  %31 = inttoptr i64 %sub35 to i8*
  %32 = bitcast i8* %31 to %struct.frame*
  %terminal36 = getelementptr inbounds %struct.frame, %struct.frame* %32, i32 0, i32 61
  %33 = load %struct.terminal*, %struct.terminal** %terminal36, align 8
  %cmp37 = icmp ne %struct.terminal* %33, null
  br i1 %cmp37, label %cond.true.38, label %cond.false.40

cond.true.38:                                     ; preds = %land.lhs.true.34
  %34 = load i64, i64* @selected_frame, align 8
  %sub39 = sub nsw i64 %34, 5
  %35 = inttoptr i64 %sub39 to i8*
  %36 = bitcast i8* %35 to %struct.frame*
  br label %cond.end.41

cond.false.40:                                    ; preds = %land.lhs.true.34, %cond.true.32
  call void @emacs_abort() #13
  unreachable
                                                  ; No predecessors!
  br label %cond.end.41

cond.end.41:                                      ; preds = %37, %cond.true.38
  %cond42 = phi %struct.frame* [ %36, %cond.true.38 ], [ null, %37 ]
  %terminal43 = getelementptr inbounds %struct.frame, %struct.frame* %cond42, i32 0, i32 61
  %38 = load %struct.terminal*, %struct.terminal** %terminal43, align 8
  %display_info = getelementptr inbounds %struct.terminal, %struct.terminal* %38, i32 0, i32 12
  %tty = bitcast %union.display_info* %display_info to %struct.tty_display_info**
  %39 = load %struct.tty_display_info*, %struct.tty_display_info** %tty, align 8
  br label %cond.end.45

cond.false.44:                                    ; preds = %cond.end.24
  call void @emacs_abort() #13
  unreachable
                                                  ; No predecessors!
  br label %cond.end.45

cond.end.45:                                      ; preds = %40, %cond.end.41
  %cond46 = phi %struct.tty_display_info* [ %39, %cond.end.41 ], [ null, %40 ]
  %input = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %cond46, i32 0, i32 3
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %input, align 8
  %call47 = call i32 @fileno(%struct._IO_FILE* %41) #7
  %call48 = call i32 (i32, i64, ...) @ioctl(i32 %call47, i64 21522, i8* %c.addr) #7
  br label %return

return:                                           ; preds = %cond.end.45, %if.then
  ret void
}

declare zeroext i1 @FRAMEP(i64) #2

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) #1

; Function Attrs: noinline noreturn nounwind uwtable
define void @emacs_abort() #3 {
entry:
  call void @terminate_due_to_signal(i32 6, i32 40) #13
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_baud_rate(i32 %fd) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %emacs_ospeed = alloca i32, align 4
  %sg = alloca %struct.termios, align 4
  store i32 %fd, i32* %fd.addr, align 4
  %0 = load i8, i8* @noninteractive, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %emacs_ospeed, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %c_cflag = getelementptr inbounds %struct.termios, %struct.termios* %sg, i32 0, i32 2
  store i32 13, i32* %c_cflag, align 4
  %1 = load i32, i32* %fd.addr, align 4
  %call = call i32 @tcgetattr(i32 %1, %struct.termios* %sg) #7
  %call1 = call i32 @cfgetospeed(%struct.termios* %sg) #7
  store i32 %call1, i32* %emacs_ospeed, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %emacs_ospeed, align 4
  %conv = sext i32 %2 to i64
  %cmp = icmp ult i64 %conv, 16
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %3 = load i32, i32* %emacs_ospeed, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* @baud_convert, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 9600, %cond.false ]
  %conv3 = sext i32 %cond to i64
  store i64 %conv3, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 381), align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 381), align 8
  %cmp4 = icmp eq i64 %5, 0
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %cond.end
  store i64 1200, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 381), align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %cond.end
  ret void
}

; Function Attrs: nounwind
declare i32 @tcgetattr(i32, %struct.termios*) #1

; Function Attrs: nounwind
declare i32 @cfgetospeed(%struct.termios*) #1

; Function Attrs: nounwind uwtable
define void @wait_for_termination(i32 %child, i32* %status, i1 zeroext %interruptible) #0 {
entry:
  %child.addr = alloca i32, align 4
  %status.addr = alloca i32*, align 8
  %interruptible.addr = alloca i8, align 1
  store i32 %child, i32* %child.addr, align 4
  store i32* %status, i32** %status.addr, align 8
  %frombool = zext i1 %interruptible to i8
  store i8 %frombool, i8* %interruptible.addr, align 1
  %0 = load i32, i32* %child.addr, align 4
  %1 = load i32*, i32** %status.addr, align 8
  %2 = load i8, i8* %interruptible.addr, align 1
  %tobool = trunc i8 %2 to i1
  %call = call i32 @get_child_status(i32 %0, i32* %1, i32 0, i1 zeroext %tobool)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @get_child_status(i32 %child, i32* %status, i32 %options, i1 zeroext %interruptible) #0 {
entry:
  %child.addr = alloca i32, align 4
  %status.addr = alloca i32*, align 8
  %options.addr = alloca i32, align 4
  %interruptible.addr = alloca i8, align 1
  %pid = alloca i32, align 4
  %coerce = alloca %struct.timespec, align 8
  store i32 %child, i32* %child.addr, align 4
  store i32* %status, i32** %status.addr, align 8
  store i32 %options, i32* %options.addr, align 4
  %frombool = zext i1 %interruptible to i8
  store i8 %frombool, i8* %interruptible.addr, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end.13, %entry
  %0 = load i32, i32* %child.addr, align 4
  %1 = load i32*, i32** %status.addr, align 8
  %2 = load i32, i32* %options.addr, align 4
  %call = call i32 @waitpid(i32 %0, i32* %1, i32 %2)
  store i32 %call, i32* %pid, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call1 = call i32* @__errno_location() #11
  %3 = load i32, i32* %call1, align 4
  %cmp2 = icmp ne i32 %3, 4
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @emacs_abort() #13
  unreachable

if.end:                                           ; preds = %while.body
  %4 = load i8, i8* %interruptible.addr, align 1
  %tobool = trunc i8 %4 to i1
  br i1 %tobool, label %if.then.3, label %if.end.13

if.then.3:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.3
  %5 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp5 = icmp eq i64 %5, %call4
  br i1 %cmp5, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.body
  %6 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp7 = icmp eq i64 %6, %call6
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %land.lhs.true
  call void @process_quit_flag()
  br label %if.end.12

if.else:                                          ; preds = %land.lhs.true, %do.body
  %7 = load volatile i8, i8* @pending_signals, align 1
  %tobool9 = trunc i8 %7 to i1
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.else
  call void @process_pending_signals()
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.else
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.12
  br label %if.end.13

if.end.13:                                        ; preds = %do.end, %if.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load i32, i32* %pid, align 4
  %tobool14 = icmp ne i32 %8, 0
  br i1 %tobool14, label %land.lhs.true.15, label %if.end.21

land.lhs.true.15:                                 ; preds = %while.end
  %9 = load i32*, i32** %status.addr, align 8
  %tobool16 = icmp ne i32* %9, null
  br i1 %tobool16, label %land.lhs.true.17, label %if.end.21

land.lhs.true.17:                                 ; preds = %land.lhs.true.15
  %10 = load %struct.timespec*, %struct.timespec** @input_available_clear_time, align 8
  %tobool18 = icmp ne %struct.timespec* %10, null
  br i1 %tobool18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %land.lhs.true.17
  %11 = load %struct.timespec*, %struct.timespec** @input_available_clear_time, align 8
  %call20 = call { i64, i64 } @make_timespec(i64 0, i64 0)
  %12 = bitcast %struct.timespec* %coerce to { i64, i64 }*
  %13 = getelementptr { i64, i64 }, { i64, i64 }* %12, i32 0, i32 0
  %14 = extractvalue { i64, i64 } %call20, 0
  store i64 %14, i64* %13, align 8
  %15 = getelementptr { i64, i64 }, { i64, i64 }* %12, i32 0, i32 1
  %16 = extractvalue { i64, i64 } %call20, 1
  store i64 %16, i64* %15, align 8
  %17 = bitcast %struct.timespec* %11 to i8*
  %18 = bitcast %struct.timespec* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 16, i32 8, i1 false)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %land.lhs.true.17, %land.lhs.true.15, %while.end
  %19 = load i32, i32* %pid, align 4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define i32 @child_status_changed(i32 %child, i32* %status, i32 %options) #0 {
entry:
  %child.addr = alloca i32, align 4
  %status.addr = alloca i32*, align 8
  %options.addr = alloca i32, align 4
  store i32 %child, i32* %child.addr, align 4
  store i32* %status, i32** %status.addr, align 8
  store i32 %options, i32* %options.addr, align 4
  %0 = load i32, i32* %child.addr, align 4
  %1 = load i32*, i32** %status.addr, align 8
  %2 = load i32, i32* %options.addr, align 4
  %or = or i32 1, %2
  %call = call i32 @get_child_status(i32 %0, i32* %1, i32 %or, i1 zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @child_setup_tty(i32 %out) #0 {
entry:
  %out.addr = alloca i32, align 4
  %s = alloca %struct.emacs_tty, align 4
  store i32 %out, i32* %out.addr, align 4
  %0 = load i32, i32* %out.addr, align 4
  %call = call i32 @emacs_get_tty(i32 %0, %struct.emacs_tty* %s)
  %main = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %s, i32 0, i32 0
  %c_oflag = getelementptr inbounds %struct.termios, %struct.termios* %main, i32 0, i32 1
  %1 = load i32, i32* %c_oflag, align 4
  %or = or i32 %1, 1
  store i32 %or, i32* %c_oflag, align 4
  %main1 = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %s, i32 0, i32 0
  %c_oflag2 = getelementptr inbounds %struct.termios, %struct.termios* %main1, i32 0, i32 1
  %2 = load i32, i32* %c_oflag2, align 4
  %and = and i32 %2, -5
  store i32 %and, i32* %c_oflag2, align 4
  %main3 = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %s, i32 0, i32 0
  %c_oflag4 = getelementptr inbounds %struct.termios, %struct.termios* %main3, i32 0, i32 1
  %3 = load i32, i32* %c_oflag4, align 4
  %and5 = and i32 %3, -65281
  store i32 %and5, i32* %c_oflag4, align 4
  %main6 = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %s, i32 0, i32 0
  %c_lflag = getelementptr inbounds %struct.termios, %struct.termios* %main6, i32 0, i32 3
  %4 = load i32, i32* %c_lflag, align 4
  %and7 = and i32 %4, -9
  store i32 %and7, i32* %c_lflag, align 4
  %main8 = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %s, i32 0, i32 0
  %c_lflag9 = getelementptr inbounds %struct.termios, %struct.termios* %main8, i32 0, i32 3
  %5 = load i32, i32* %c_lflag9, align 4
  %or10 = or i32 %5, 1
  store i32 %or10, i32* %c_lflag9, align 4
  %main11 = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %s, i32 0, i32 0
  %c_iflag = getelementptr inbounds %struct.termios, %struct.termios* %main11, i32 0, i32 0
  %6 = load i32, i32* %c_iflag, align 4
  %and12 = and i32 %6, -513
  store i32 %and12, i32* %c_iflag, align 4
  %main13 = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %s, i32 0, i32 0
  %c_iflag14 = getelementptr inbounds %struct.termios, %struct.termios* %main13, i32 0, i32 0
  %7 = load i32, i32* %c_iflag14, align 4
  %and15 = and i32 %7, -33
  store i32 %and15, i32* %c_iflag14, align 4
  %main16 = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %s, i32 0, i32 0
  %c_oflag17 = getelementptr inbounds %struct.termios, %struct.termios* %main16, i32 0, i32 1
  %8 = load i32, i32* %c_oflag17, align 4
  %and18 = and i32 %8, -3
  store i32 %and18, i32* %c_oflag17, align 4
  %main19 = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %s, i32 0, i32 0
  %c_oflag20 = getelementptr inbounds %struct.termios, %struct.termios* %main19, i32 0, i32 1
  %9 = load i32, i32* %c_oflag20, align 4
  %and21 = and i32 %9, -6145
  store i32 %and21, i32* %c_oflag20, align 4
  %main22 = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %s, i32 0, i32 0
  %c_cflag = getelementptr inbounds %struct.termios, %struct.termios* %main22, i32 0, i32 2
  %10 = load i32, i32* %c_cflag, align 4
  %and23 = and i32 %10, -49
  %or24 = or i32 %and23, 48
  %main25 = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %s, i32 0, i32 0
  %c_cflag26 = getelementptr inbounds %struct.termios, %struct.termios* %main25, i32 0, i32 2
  store i32 %or24, i32* %c_cflag26, align 4
  %main27 = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %s, i32 0, i32 0
  %c_cc = getelementptr inbounds %struct.termios, %struct.termios* %main27, i32 0, i32 5
  %arrayidx = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc, i32 0, i64 2
  store i8 0, i8* %arrayidx, align 1
  %main28 = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %s, i32 0, i32 0
  %c_cc29 = getelementptr inbounds %struct.termios, %struct.termios* %main28, i32 0, i32 5
  %arrayidx30 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc29, i32 0, i64 3
  store i8 0, i8* %arrayidx30, align 1
  %main31 = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %s, i32 0, i32 0
  %c_cc32 = getelementptr inbounds %struct.termios, %struct.termios* %main31, i32 0, i32 5
  %arrayidx33 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc32, i32 0, i64 1
  %11 = load i8, i8* %arrayidx33, align 1
  %conv = zext i8 %11 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %main35 = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %s, i32 0, i32 0
  %c_cc36 = getelementptr inbounds %struct.termios, %struct.termios* %main35, i32 0, i32 5
  %arrayidx37 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc36, i32 0, i64 1
  store i8 28, i8* %arrayidx37, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %main38 = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %s, i32 0, i32 0
  %c_cc39 = getelementptr inbounds %struct.termios, %struct.termios* %main38, i32 0, i32 5
  %arrayidx40 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc39, i32 0, i64 0
  %12 = load i8, i8* %arrayidx40, align 1
  %conv41 = zext i8 %12 to i32
  %cmp42 = icmp eq i32 %conv41, 0
  br i1 %cmp42, label %if.then.44, label %if.end.48

if.then.44:                                       ; preds = %if.end
  %main45 = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %s, i32 0, i32 0
  %c_cc46 = getelementptr inbounds %struct.termios, %struct.termios* %main45, i32 0, i32 5
  %arrayidx47 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc46, i32 0, i64 0
  store i8 3, i8* %arrayidx47, align 1
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.44, %if.end
  %main49 = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %s, i32 0, i32 0
  %c_lflag50 = getelementptr inbounds %struct.termios, %struct.termios* %main49, i32 0, i32 3
  %13 = load i32, i32* %c_lflag50, align 4
  %or51 = or i32 %13, 2
  store i32 %or51, i32* %c_lflag50, align 4
  %main52 = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %s, i32 0, i32 0
  %c_cc53 = getelementptr inbounds %struct.termios, %struct.termios* %main52, i32 0, i32 5
  %arrayidx54 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc53, i32 0, i64 4
  store i8 4, i8* %arrayidx54, align 1
  %14 = load i32, i32* %out.addr, align 4
  %call55 = call i32 @emacs_set_tty(i32 %14, %struct.emacs_tty* %s, i1 zeroext false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @sys_suspend() #0 {
entry:
  %call = call i32 @kill(i32 0, i32 20) #7
  ret void
}

; Function Attrs: nounwind
declare i32 @kill(i32, i32) #1

; Function Attrs: nounwind uwtable
define void @sys_subshell() #0 {
entry:
  %pid = alloca i32, align 4
  %status = alloca i32, align 4
  %saved_handlers = alloca [5 x %struct.save_signal], align 16
  %str = alloca i8*, align 8
  %str_volatile = alloca i8*, align 8
  %sh = alloca i8*, align 8
  %call = call i64 @encode_current_directory()
  %call1 = call i8* @SSDATA(i64 %call)
  store i8* %call1, i8** %str, align 8
  %0 = load i8*, i8** %str, align 8
  store volatile i8* %0, i8** %str_volatile, align 8
  %call2 = call i32 @vfork() #14
  store i32 %call2, i32* %pid, align 4
  %1 = load volatile i8*, i8** %str_volatile, align 8
  store i8* %1, i8** %str, align 8
  %2 = load i32, i32* %pid, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0)) #13
  unreachable

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [5 x %struct.save_signal], [5 x %struct.save_signal]* %saved_handlers, i32 0, i64 0
  %code = getelementptr inbounds %struct.save_signal, %struct.save_signal* %arrayidx, i32 0, i32 0
  store i32 2, i32* %code, align 4
  %arrayidx3 = getelementptr inbounds [5 x %struct.save_signal], [5 x %struct.save_signal]* %saved_handlers, i32 0, i64 1
  %code4 = getelementptr inbounds %struct.save_signal, %struct.save_signal* %arrayidx3, i32 0, i32 0
  store i32 3, i32* %code4, align 4
  %arrayidx5 = getelementptr inbounds [5 x %struct.save_signal], [5 x %struct.save_signal]* %saved_handlers, i32 0, i64 2
  %code6 = getelementptr inbounds %struct.save_signal, %struct.save_signal* %arrayidx5, i32 0, i32 0
  store i32 15, i32* %code6, align 4
  %arrayidx7 = getelementptr inbounds [5 x %struct.save_signal], [5 x %struct.save_signal]* %saved_handlers, i32 0, i64 3
  %code8 = getelementptr inbounds %struct.save_signal, %struct.save_signal* %arrayidx7, i32 0, i32 0
  store i32 29, i32* %code8, align 4
  %arrayidx9 = getelementptr inbounds [5 x %struct.save_signal], [5 x %struct.save_signal]* %saved_handlers, i32 0, i64 4
  %code10 = getelementptr inbounds %struct.save_signal, %struct.save_signal* %arrayidx9, i32 0, i32 0
  store i32 0, i32* %code10, align 4
  %3 = load i32, i32* %pid, align 4
  %cmp11 = icmp eq i32 %3, 0
  br i1 %cmp11, label %if.then.12, label %if.end.27

if.then.12:                                       ; preds = %if.end
  store i8* null, i8** %sh, align 8
  %4 = load i8*, i8** %sh, align 8
  %cmp13 = icmp eq i8* %4, null
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.then.12
  %call15 = call i8* @egetenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0))
  store i8* %call15, i8** %sh, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.then.12
  %5 = load i8*, i8** %sh, align 8
  %cmp17 = icmp eq i8* %5, null
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.16
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8** %sh, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.end.16
  %6 = load i8*, i8** %str, align 8
  %call20 = call i32 @chdir(i8* %6) #7
  %cmp21 = icmp ne i32 %call20, 0
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.19
  %7 = load i8*, i8** %str, align 8
  call void @emacs_perror(i8* %7)
  call void @_exit(i32 125) #13
  unreachable

if.end.23:                                        ; preds = %if.end.19
  %8 = load i8*, i8** %sh, align 8
  %9 = load i8*, i8** %sh, align 8
  %call24 = call i32 (i8*, i8*, ...) @execlp(i8* %8, i8* %9, i8* null) #7
  %10 = load i8*, i8** %sh, align 8
  call void @emacs_perror(i8* %10)
  %call25 = call i32* @__errno_location() #11
  %11 = load i32, i32* %call25, align 4
  %cmp26 = icmp eq i32 %11, 2
  %cond = select i1 %cmp26, i32 127, i32 126
  call void @_exit(i32 %cond) #13
  unreachable

if.end.27:                                        ; preds = %if.end
  %arraydecay = getelementptr inbounds [5 x %struct.save_signal], [5 x %struct.save_signal]* %saved_handlers, i32 0, i32 0
  call void @save_signal_handlers(%struct.save_signal* %arraydecay)
  %12 = load i32, i32* %pid, align 4
  call void @wait_for_termination(i32 %12, i32* %status, i1 zeroext false)
  %arraydecay28 = getelementptr inbounds [5 x %struct.save_signal], [5 x %struct.save_signal]* %saved_handlers, i32 0, i32 0
  call void @restore_signal_handlers(%struct.save_signal* %arraydecay28)
  ret void
}

declare i8* @SSDATA(i64) #2

declare i64 @encode_current_directory() #2

; Function Attrs: nounwind returns_twice
declare i32 @vfork() #4

; Function Attrs: noreturn
declare void @error(i8*, ...) #5

declare i8* @egetenv(i8*) #2

; Function Attrs: nounwind
declare i32 @chdir(i8*) #1

; Function Attrs: nounwind uwtable
define void @emacs_perror(i8* %message) #0 {
entry:
  %message.addr = alloca i8*, align 8
  %err = alloca i32, align 4
  %error_string = alloca i8*, align 8
  %command = alloca i8*, align 8
  %buf = alloca [8192 x i8], align 16
  %nbytes = alloca i32, align 4
  store i8* %message, i8** %message.addr, align 8
  %call = call i32* @__errno_location() #11
  %0 = load i32, i32* %call, align 4
  store i32 %0, i32* %err, align 4
  %1 = load i32, i32* %err, align 4
  %call1 = call i8* @strerror(i32 %1) #7
  store i8* %call1, i8** %error_string, align 8
  %2 = load i8**, i8*** @initial_argv, align 8
  %tobool = icmp ne i8** %2, null
  br i1 %tobool, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %3 = load i8**, i8*** @initial_argv, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 0
  %4 = load i8*, i8** %arrayidx, align 8
  %tobool2 = icmp ne i8* %4, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %5 = load i8**, i8*** @initial_argv, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %5, i64 0
  %6 = load i8*, i8** %arrayidx3, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %6, %cond.true ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), %cond.false ]
  store i8* %cond, i8** %command, align 8
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i32 0
  %7 = load i8*, i8** %command, align 8
  %8 = load i8*, i8** %message.addr, align 8
  %9 = load i8*, i8** %error_string, align 8
  %call4 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 8192, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* %7, i8* %8, i8* %9) #7
  store i32 %call4, i32* %nbytes, align 4
  %10 = load i32, i32* %nbytes, align 4
  %cmp = icmp sle i32 0, %10
  br i1 %cmp, label %land.lhs.true.5, label %if.else

land.lhs.true.5:                                  ; preds = %cond.end
  %11 = load i32, i32* %nbytes, align 4
  %cmp6 = icmp slt i32 %11, 8192
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.5
  %arraydecay7 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i32 0
  %12 = load i32, i32* %nbytes, align 4
  %conv = sext i32 %12 to i64
  %call8 = call i64 @emacs_write(i32 2, i8* %arraydecay7, i64 %conv)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.5, %cond.end
  %13 = load i8*, i8** %command, align 8
  %14 = load i8*, i8** %command, align 8
  %call9 = call i64 @strlen(i8* %14) #12
  %call10 = call i64 @emacs_write(i32 2, i8* %13, i64 %call9)
  %call11 = call i64 @emacs_write(i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i64 2)
  %15 = load i8*, i8** %message.addr, align 8
  %16 = load i8*, i8** %message.addr, align 8
  %call12 = call i64 @strlen(i8* %16) #12
  %call13 = call i64 @emacs_write(i32 2, i8* %15, i64 %call12)
  %call14 = call i64 @emacs_write(i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i64 2)
  %17 = load i8*, i8** %error_string, align 8
  %18 = load i8*, i8** %error_string, align 8
  %call15 = call i64 @strlen(i8* %18) #12
  %call16 = call i64 @emacs_write(i32 2, i8* %17, i64 %call15)
  %call17 = call i64 @emacs_write(i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), i64 1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %19 = load i32, i32* %err, align 4
  %call18 = call i32* @__errno_location() #11
  store i32 %19, i32* %call18, align 4
  ret void
}

; Function Attrs: noreturn
declare void @_exit(i32) #5

; Function Attrs: nounwind
declare i32 @execlp(i8*, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

; Function Attrs: nounwind uwtable
define internal void @save_signal_handlers(%struct.save_signal* %saved_handlers) #0 {
entry:
  %saved_handlers.addr = alloca %struct.save_signal*, align 8
  %action = alloca %struct.sigaction, align 8
  store %struct.save_signal* %saved_handlers, %struct.save_signal** %saved_handlers.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.save_signal*, %struct.save_signal** %saved_handlers.addr, align 8
  %code = getelementptr inbounds %struct.save_signal, %struct.save_signal* %0, i32 0, i32 0
  %1 = load i32, i32* %code, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @emacs_sigaction_init(%struct.sigaction* %action, void (i32)* inttoptr (i64 1 to void (i32)*))
  %2 = load %struct.save_signal*, %struct.save_signal** %saved_handlers.addr, align 8
  %code1 = getelementptr inbounds %struct.save_signal, %struct.save_signal* %2, i32 0, i32 0
  %3 = load i32, i32* %code1, align 4
  %4 = load %struct.save_signal*, %struct.save_signal** %saved_handlers.addr, align 8
  %action2 = getelementptr inbounds %struct.save_signal, %struct.save_signal* %4, i32 0, i32 1
  %call = call i32 @sigaction(i32 %3, %struct.sigaction* %action, %struct.sigaction* %action2) #7
  %5 = load %struct.save_signal*, %struct.save_signal** %saved_handlers.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.save_signal, %struct.save_signal* %5, i32 1
  store %struct.save_signal* %incdec.ptr, %struct.save_signal** %saved_handlers.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @restore_signal_handlers(%struct.save_signal* %saved_handlers) #0 {
entry:
  %saved_handlers.addr = alloca %struct.save_signal*, align 8
  store %struct.save_signal* %saved_handlers, %struct.save_signal** %saved_handlers.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.save_signal*, %struct.save_signal** %saved_handlers.addr, align 8
  %code = getelementptr inbounds %struct.save_signal, %struct.save_signal* %0, i32 0, i32 0
  %1 = load i32, i32* %code, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.save_signal*, %struct.save_signal** %saved_handlers.addr, align 8
  %code1 = getelementptr inbounds %struct.save_signal, %struct.save_signal* %2, i32 0, i32 0
  %3 = load i32, i32* %code1, align 4
  %4 = load %struct.save_signal*, %struct.save_signal** %saved_handlers.addr, align 8
  %action = getelementptr inbounds %struct.save_signal, %struct.save_signal* %4, i32 0, i32 1
  %call = call i32 @sigaction(i32 %3, %struct.sigaction* %action, %struct.sigaction* null) #7
  %5 = load %struct.save_signal*, %struct.save_signal** %saved_handlers.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.save_signal, %struct.save_signal* %5, i32 1
  store %struct.save_signal* %incdec.ptr, %struct.save_signal** %saved_handlers.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_sigio(i32 %fd) #0 {
entry:
  %fd.addr = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %call = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 3, i32 0)
  %and = and i32 %call, -8193
  %1 = load i32, i32* %fd.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [1024 x i32], [1024 x i32]* @old_fcntl_flags, i32 0, i64 %idxprom
  store i32 %and, i32* %arrayidx, align 4
  %2 = load i32, i32* %fd.addr, align 4
  %3 = load i32, i32* %fd.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [1024 x i32], [1024 x i32]* @old_fcntl_flags, i32 0, i64 %idxprom1
  %4 = load i32, i32* %arrayidx2, align 4
  %or = or i32 %4, 8192
  %call3 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %2, i32 4, i32 %or)
  store i8 0, i8* @interrupts_deferred, align 1
  ret void
}

declare i32 @rpl_fcntl(i32, i32, ...) #2

; Function Attrs: nounwind uwtable
define void @request_sigio() #0 {
entry:
  %unblocked = alloca %struct.__sigset_t, align 8
  %0 = load i8, i8* @noninteractive, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call = call i32 @sigemptyset(%struct.__sigset_t* %unblocked) #7
  %call1 = call i32 @sigaddset(%struct.__sigset_t* %unblocked, i32 28) #7
  %call2 = call i32 @sigaddset(%struct.__sigset_t* %unblocked, i32 29) #7
  %call3 = call i32 @pthread_sigmask(i32 1, %struct.__sigset_t* %unblocked, %struct.__sigset_t* null) #7
  store i8 0, i8* @interrupts_deferred, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind
declare i32 @sigemptyset(%struct.__sigset_t*) #1

; Function Attrs: nounwind
declare i32 @sigaddset(%struct.__sigset_t*, i32) #1

; Function Attrs: nounwind
declare i32 @pthread_sigmask(i32, %struct.__sigset_t*, %struct.__sigset_t*) #1

; Function Attrs: nounwind uwtable
define void @unrequest_sigio() #0 {
entry:
  %blocked = alloca %struct.__sigset_t, align 8
  %0 = load i8, i8* @noninteractive, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call = call i32 @sigemptyset(%struct.__sigset_t* %blocked) #7
  %call1 = call i32 @sigaddset(%struct.__sigset_t* %blocked, i32 28) #7
  %call2 = call i32 @sigaddset(%struct.__sigset_t* %blocked, i32 29) #7
  %call3 = call i32 @pthread_sigmask(i32 0, %struct.__sigset_t* %blocked, %struct.__sigset_t* null) #7
  store i8 1, i8* @interrupts_deferred, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @block_child_signal(%struct.__sigset_t* %oldset) #0 {
entry:
  %oldset.addr = alloca %struct.__sigset_t*, align 8
  %blocked = alloca %struct.__sigset_t, align 8
  store %struct.__sigset_t* %oldset, %struct.__sigset_t** %oldset.addr, align 8
  %call = call i32 @sigemptyset(%struct.__sigset_t* %blocked) #7
  %call1 = call i32 @sigaddset(%struct.__sigset_t* %blocked, i32 17) #7
  %call2 = call i32 @sigaddset(%struct.__sigset_t* %blocked, i32 2) #7
  %0 = load %struct.__sigset_t*, %struct.__sigset_t** %oldset.addr, align 8
  %call3 = call i32 @pthread_sigmask(i32 0, %struct.__sigset_t* %blocked, %struct.__sigset_t* %0) #7
  ret void
}

; Function Attrs: nounwind uwtable
define void @unblock_child_signal(%struct.__sigset_t* %oldset) #0 {
entry:
  %oldset.addr = alloca %struct.__sigset_t*, align 8
  store %struct.__sigset_t* %oldset, %struct.__sigset_t** %oldset.addr, align 8
  %0 = load %struct.__sigset_t*, %struct.__sigset_t** %oldset.addr, align 8
  %call = call i32 @pthread_sigmask(i32 2, %struct.__sigset_t* %0, %struct.__sigset_t* null) #7
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_foreground_group() #0 {
entry:
  %pgrp = alloca i32, align 4
  %call = call i32 @getpgrp() #7
  store i32 %call, i32* %pgrp, align 4
  %call1 = call i32 @getpid() #7
  %0 = load i32, i32* %pgrp, align 4
  %cmp = icmp eq i32 %call1, %0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i32, i32* %pgrp, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %1, %cond.false ]
  store i32 %cond, i32* @inherited_pgroup, align 4
  ret void
}

; Function Attrs: nounwind
declare i32 @getpgrp() #1

; Function Attrs: nounwind
declare i32 @getpid() #1

; Function Attrs: nounwind uwtable
define void @block_tty_out_signal(%struct.__sigset_t* %oldset) #0 {
entry:
  %oldset.addr = alloca %struct.__sigset_t*, align 8
  %blocked = alloca %struct.__sigset_t, align 8
  store %struct.__sigset_t* %oldset, %struct.__sigset_t** %oldset.addr, align 8
  %call = call i32 @sigemptyset(%struct.__sigset_t* %blocked) #7
  %call1 = call i32 @sigaddset(%struct.__sigset_t* %blocked, i32 22) #7
  %0 = load %struct.__sigset_t*, %struct.__sigset_t** %oldset.addr, align 8
  %call2 = call i32 @pthread_sigmask(i32 0, %struct.__sigset_t* %blocked, %struct.__sigset_t* %0) #7
  ret void
}

; Function Attrs: nounwind uwtable
define void @unblock_tty_out_signal(%struct.__sigset_t* %oldset) #0 {
entry:
  %oldset.addr = alloca %struct.__sigset_t*, align 8
  store %struct.__sigset_t* %oldset, %struct.__sigset_t** %oldset.addr, align 8
  %0 = load %struct.__sigset_t*, %struct.__sigset_t** %oldset.addr, align 8
  %call = call i32 @pthread_sigmask(i32 2, %struct.__sigset_t* %0, %struct.__sigset_t* null) #7
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #7

; Function Attrs: nounwind
declare i32 @tcsetattr(i32, i32, %struct.termios*) #1

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #8

; Function Attrs: nounwind uwtable
define void @init_all_sys_modes() #0 {
entry:
  %tty = alloca %struct.tty_display_info*, align 8
  %0 = load %struct.tty_display_info*, %struct.tty_display_info** @tty_list, align 8
  store %struct.tty_display_info* %0, %struct.tty_display_info** %tty, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.tty_display_info*, %struct.tty_display_info** %tty, align 8
  %tobool = icmp ne %struct.tty_display_info* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.tty_display_info*, %struct.tty_display_info** %tty, align 8
  call void @init_sys_modes(%struct.tty_display_info* %2)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load %struct.tty_display_info*, %struct.tty_display_info** %tty, align 8
  %next = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %3, i32 0, i32 0
  %4 = load %struct.tty_display_info*, %struct.tty_display_info** %next, align 8
  store %struct.tty_display_info* %4, %struct.tty_display_info** %tty, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_sys_modes(%struct.tty_display_info* %tty_out) #0 {
entry:
  %tty_out.addr = alloca %struct.tty_display_info*, align 8
  %tty = alloca %struct.emacs_tty, align 4
  %terminal = alloca i64, align 8
  %tail = alloca i64, align 8
  %frame = alloca i64, align 8
  %tail220 = alloca i64, align 8
  %frame221 = alloca i64, align 8
  store %struct.tty_display_info* %tty_out, %struct.tty_display_info** %tty_out.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 311), align 8
  %0 = load i8, i8* @noninteractive, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.tty_display_info*, %struct.tty_display_info** %tty_out.addr, align 8
  %output = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %1, i32 0, i32 4
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %output, align 8
  %tobool1 = icmp ne %struct._IO_FILE* %2, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load %struct.tty_display_info*, %struct.tty_display_info** %tty_out.addr, align 8
  %input = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %3, i32 0, i32 3
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %input, align 8
  %call4 = call i32 @fileno(%struct._IO_FILE* %4) #7
  call void @narrow_foreground_group(i32 %call4)
  %5 = load %struct.tty_display_info*, %struct.tty_display_info** %tty_out.addr, align 8
  %old_tty = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %5, i32 0, i32 6
  %6 = load %struct.emacs_tty*, %struct.emacs_tty** %old_tty, align 8
  %tobool5 = icmp ne %struct.emacs_tty* %6, null
  br i1 %tobool5, label %if.end.9, label %if.then.6

if.then.6:                                        ; preds = %if.end.3
  %call7 = call noalias i8* @xmalloc(i64 60)
  %7 = bitcast i8* %call7 to %struct.emacs_tty*
  %8 = load %struct.tty_display_info*, %struct.tty_display_info** %tty_out.addr, align 8
  %old_tty8 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %8, i32 0, i32 6
  store %struct.emacs_tty* %7, %struct.emacs_tty** %old_tty8, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %if.end.3
  %9 = load %struct.tty_display_info*, %struct.tty_display_info** %tty_out.addr, align 8
  %input10 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %9, i32 0, i32 3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %input10, align 8
  %call11 = call i32 @fileno(%struct._IO_FILE* %10) #7
  %11 = load %struct.tty_display_info*, %struct.tty_display_info** %tty_out.addr, align 8
  %old_tty12 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %11, i32 0, i32 6
  %12 = load %struct.emacs_tty*, %struct.emacs_tty** %old_tty12, align 8
  %call13 = call i32 @emacs_get_tty(i32 %call11, %struct.emacs_tty* %12)
  %13 = load %struct.tty_display_info*, %struct.tty_display_info** %tty_out.addr, align 8
  %old_tty14 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %13, i32 0, i32 6
  %14 = load %struct.emacs_tty*, %struct.emacs_tty** %old_tty14, align 8
  %15 = bitcast %struct.emacs_tty* %tty to i8*
  %16 = bitcast %struct.emacs_tty* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 60, i32 4, i1 false)
  %main = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %tty, i32 0, i32 0
  %c_cc = getelementptr inbounds %struct.termios, %struct.termios* %main, i32 0, i32 5
  %arrayidx = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc, i32 0, i64 2
  %17 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %17 to i64
  %shl = shl i64 %conv, 2
  %add = add i64 %shl, 2
  store i64 %add, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 311), align 8
  %main15 = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %tty, i32 0, i32 0
  %c_iflag = getelementptr inbounds %struct.termios, %struct.termios* %main15, i32 0, i32 0
  %18 = load i32, i32* %c_iflag, align 4
  %or = or i32 %18, 1
  store i32 %or, i32* %c_iflag, align 4
  %main16 = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %tty, i32 0, i32 0
  %c_iflag17 = getelementptr inbounds %struct.termios, %struct.termios* %main16, i32 0, i32 0
  %19 = load i32, i32* %c_iflag17, align 4
  %and = and i32 %19, -257
  store i32 %and, i32* %c_iflag17, align 4
  %main18 = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %tty, i32 0, i32 0
  %c_iflag19 = getelementptr inbounds %struct.termios, %struct.termios* %main18, i32 0, i32 0
  %20 = load i32, i32* %c_iflag19, align 4
  %and20 = and i32 %20, -65
  store i32 %and20, i32* %c_iflag19, align 4
  %main21 = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %tty, i32 0, i32 0
  %c_iflag22 = getelementptr inbounds %struct.termios, %struct.termios* %main21, i32 0, i32 0
  %21 = load i32, i32* %c_iflag22, align 4
  %and23 = and i32 %21, -33
  store i32 %and23, i32* %c_iflag22, align 4
  %main24 = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %tty, i32 0, i32 0
  %c_lflag = getelementptr inbounds %struct.termios, %struct.termios* %main24, i32 0, i32 3
  %22 = load i32, i32* %c_lflag, align 4
  %and25 = and i32 %22, -9
  store i32 %and25, i32* %c_lflag, align 4
  %main26 = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %tty, i32 0, i32 0
  %c_lflag27 = getelementptr inbounds %struct.termios, %struct.termios* %main26, i32 0, i32 3
  %23 = load i32, i32* %c_lflag27, align 4
  %and28 = and i32 %23, -3
  store i32 %and28, i32* %c_lflag27, align 4
  %main29 = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %tty, i32 0, i32 0
  %c_lflag30 = getelementptr inbounds %struct.termios, %struct.termios* %main29, i32 0, i32 3
  %24 = load i32, i32* %c_lflag30, align 4
  %and31 = and i32 %24, -32769
  store i32 %and31, i32* %c_lflag30, align 4
  %main32 = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %tty, i32 0, i32 0
  %c_lflag33 = getelementptr inbounds %struct.termios, %struct.termios* %main32, i32 0, i32 3
  %25 = load i32, i32* %c_lflag33, align 4
  %or34 = or i32 %25, 1
  store i32 %or34, i32* %c_lflag33, align 4
  %26 = load %struct.tty_display_info*, %struct.tty_display_info** %tty_out.addr, align 8
  %flow_control = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %26, i32 0, i32 75
  %bf.load = load i8, i8* %flow_control, align 4
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %if.then.35, label %if.else

if.then.35:                                       ; preds = %if.end.9
  %main36 = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %tty, i32 0, i32 0
  %c_iflag37 = getelementptr inbounds %struct.termios, %struct.termios* %main36, i32 0, i32 0
  %27 = load i32, i32* %c_iflag37, align 4
  %or38 = or i32 %27, 1024
  store i32 %or38, i32* %c_iflag37, align 4
  %main39 = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %tty, i32 0, i32 0
  %c_iflag40 = getelementptr inbounds %struct.termios, %struct.termios* %main39, i32 0, i32 0
  %28 = load i32, i32* %c_iflag40, align 4
  %and41 = and i32 %28, -2049
  store i32 %and41, i32* %c_iflag40, align 4
  br label %if.end.45

if.else:                                          ; preds = %if.end.9
  %main42 = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %tty, i32 0, i32 0
  %c_iflag43 = getelementptr inbounds %struct.termios, %struct.termios* %main42, i32 0, i32 0
  %29 = load i32, i32* %c_iflag43, align 4
  %and44 = and i32 %29, -1025
  store i32 %and44, i32* %c_iflag43, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.else, %if.then.35
  %main46 = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %tty, i32 0, i32 0
  %c_oflag = getelementptr inbounds %struct.termios, %struct.termios* %main46, i32 0, i32 1
  %30 = load i32, i32* %c_oflag, align 4
  %and47 = and i32 %30, -5
  store i32 %and47, i32* %c_oflag, align 4
  %main48 = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %tty, i32 0, i32 0
  %c_oflag49 = getelementptr inbounds %struct.termios, %struct.termios* %main48, i32 0, i32 1
  %31 = load i32, i32* %c_oflag49, align 4
  %and50 = and i32 %31, -6145
  store i32 %and50, i32* %c_oflag49, align 4
  %32 = load %struct.tty_display_info*, %struct.tty_display_info** %tty_out.addr, align 8
  %meta_key = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %32, i32 0, i32 73
  %33 = load i32, i32* %meta_key, align 4
  %tobool51 = icmp ne i32 %33, 0
  br i1 %tobool51, label %if.then.52, label %if.end.58

if.then.52:                                       ; preds = %if.end.45
  %main53 = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %tty, i32 0, i32 0
  %c_cflag = getelementptr inbounds %struct.termios, %struct.termios* %main53, i32 0, i32 2
  %34 = load i32, i32* %c_cflag, align 4
  %or54 = or i32 %34, 48
  store i32 %or54, i32* %c_cflag, align 4
  %main55 = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %tty, i32 0, i32 0
  %c_cflag56 = getelementptr inbounds %struct.termios, %struct.termios* %main55, i32 0, i32 2
  %35 = load i32, i32* %c_cflag56, align 4
  %and57 = and i32 %35, -257
  store i32 %and57, i32* %c_cflag56, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.52, %if.end.45
  %36 = load %struct.tty_display_info*, %struct.tty_display_info** %tty_out.addr, align 8
  %terminal59 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %36, i32 0, i32 9
  %37 = load %struct.terminal*, %struct.terminal** %terminal59, align 8
  %38 = bitcast %struct.terminal* %37 to i8*
  %call60 = call i64 @make_lisp_ptr(i8* %38, i32 5)
  store i64 %call60, i64* %terminal, align 8
  %39 = load i64, i64* %terminal, align 8
  %call61 = call i64 @Fcontrolling_tty_p(i64 %39)
  %call62 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %call61, %call62
  br i1 %cmp, label %if.else.73, label %if.then.64

if.then.64:                                       ; preds = %if.end.58
  %40 = load i32, i32* @quit_char, align 4
  %conv65 = trunc i32 %40 to i8
  %main66 = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %tty, i32 0, i32 0
  %c_cc67 = getelementptr inbounds %struct.termios, %struct.termios* %main66, i32 0, i32 5
  %arrayidx68 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc67, i32 0, i64 0
  store i8 %conv65, i8* %arrayidx68, align 1
  %41 = load i32, i32* @quit_char, align 4
  %conv69 = trunc i32 %41 to i8
  %main70 = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %tty, i32 0, i32 0
  %c_cc71 = getelementptr inbounds %struct.termios, %struct.termios* %main70, i32 0, i32 5
  %arrayidx72 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc71, i32 0, i64 1
  store i8 %conv69, i8* %arrayidx72, align 1
  br label %if.end.80

if.else.73:                                       ; preds = %if.end.58
  %main74 = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %tty, i32 0, i32 0
  %c_cc75 = getelementptr inbounds %struct.termios, %struct.termios* %main74, i32 0, i32 5
  %arrayidx76 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc75, i32 0, i64 0
  store i8 0, i8* %arrayidx76, align 1
  %main77 = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %tty, i32 0, i32 0
  %c_cc78 = getelementptr inbounds %struct.termios, %struct.termios* %main77, i32 0, i32 5
  %arrayidx79 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc78, i32 0, i64 1
  store i8 0, i8* %arrayidx79, align 1
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.73, %if.then.64
  %main81 = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %tty, i32 0, i32 0
  %c_cc82 = getelementptr inbounds %struct.termios, %struct.termios* %main81, i32 0, i32 5
  %arrayidx83 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc82, i32 0, i64 6
  store i8 1, i8* %arrayidx83, align 1
  %main84 = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %tty, i32 0, i32 0
  %c_cc85 = getelementptr inbounds %struct.termios, %struct.termios* %main84, i32 0, i32 5
  %arrayidx86 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc85, i32 0, i64 5
  store i8 0, i8* %arrayidx86, align 1
  %main87 = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %tty, i32 0, i32 0
  %c_cc88 = getelementptr inbounds %struct.termios, %struct.termios* %main87, i32 0, i32 5
  %arrayidx89 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc88, i32 0, i64 10
  store i8 0, i8* %arrayidx89, align 1
  %main90 = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %tty, i32 0, i32 0
  %c_cc91 = getelementptr inbounds %struct.termios, %struct.termios* %main90, i32 0, i32 5
  %arrayidx92 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc91, i32 0, i64 15
  store i8 0, i8* %arrayidx92, align 1
  %main93 = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %tty, i32 0, i32 0
  %c_cc94 = getelementptr inbounds %struct.termios, %struct.termios* %main93, i32 0, i32 5
  %arrayidx95 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc94, i32 0, i64 12
  store i8 0, i8* %arrayidx95, align 1
  %main96 = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %tty, i32 0, i32 0
  %c_cc97 = getelementptr inbounds %struct.termios, %struct.termios* %main96, i32 0, i32 5
  %arrayidx98 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc97, i32 0, i64 14
  store i8 0, i8* %arrayidx98, align 1
  %main99 = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %tty, i32 0, i32 0
  %c_cc100 = getelementptr inbounds %struct.termios, %struct.termios* %main99, i32 0, i32 5
  %arrayidx101 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc100, i32 0, i64 13
  store i8 0, i8* %arrayidx101, align 1
  %42 = load %struct.tty_display_info*, %struct.tty_display_info** %tty_out.addr, align 8
  %flow_control102 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %42, i32 0, i32 75
  %bf.load103 = load i8, i8* %flow_control102, align 4
  %bf.lshr104 = lshr i8 %bf.load103, 1
  %bf.clear105 = and i8 %bf.lshr104, 1
  %bf.cast106 = trunc i8 %bf.clear105 to i1
  br i1 %bf.cast106, label %if.then.107, label %if.else.114

if.then.107:                                      ; preds = %if.end.80
  %main108 = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %tty, i32 0, i32 0
  %c_cc109 = getelementptr inbounds %struct.termios, %struct.termios* %main108, i32 0, i32 5
  %arrayidx110 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc109, i32 0, i64 8
  store i8 17, i8* %arrayidx110, align 1
  %main111 = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %tty, i32 0, i32 0
  %c_cc112 = getelementptr inbounds %struct.termios, %struct.termios* %main111, i32 0, i32 5
  %arrayidx113 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc112, i32 0, i64 9
  store i8 19, i8* %arrayidx113, align 1
  br label %if.end.121

if.else.114:                                      ; preds = %if.end.80
  %main115 = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %tty, i32 0, i32 0
  %c_cc116 = getelementptr inbounds %struct.termios, %struct.termios* %main115, i32 0, i32 5
  %arrayidx117 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc116, i32 0, i64 8
  store i8 0, i8* %arrayidx117, align 1
  %main118 = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %tty, i32 0, i32 0
  %c_cc119 = getelementptr inbounds %struct.termios, %struct.termios* %main118, i32 0, i32 5
  %arrayidx120 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc119, i32 0, i64 9
  store i8 0, i8* %arrayidx120, align 1
  br label %if.end.121

if.end.121:                                       ; preds = %if.else.114, %if.then.107
  %43 = load %struct.tty_display_info*, %struct.tty_display_info** %tty_out.addr, align 8
  %input122 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %43, i32 0, i32 3
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %input122, align 8
  %call123 = call i32 @fileno(%struct._IO_FILE* %44) #7
  %call124 = call i32 @emacs_set_tty(i32 %call123, %struct.emacs_tty* %tty, i1 zeroext false)
  %45 = load %struct.tty_display_info*, %struct.tty_display_info** %tty_out.addr, align 8
  %flow_control125 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %45, i32 0, i32 75
  %bf.load126 = load i8, i8* %flow_control125, align 4
  %bf.lshr127 = lshr i8 %bf.load126, 1
  %bf.clear128 = and i8 %bf.lshr127, 1
  %bf.cast129 = trunc i8 %bf.clear128 to i1
  br i1 %bf.cast129, label %if.end.134, label %if.then.130

if.then.130:                                      ; preds = %if.end.121
  %46 = load %struct.tty_display_info*, %struct.tty_display_info** %tty_out.addr, align 8
  %input131 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %46, i32 0, i32 3
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %input131, align 8
  %call132 = call i32 @fileno(%struct._IO_FILE* %47) #7
  %call133 = call i32 (i32, i64, ...) @ioctl(i32 %call132, i64 21514, i32 1) #7
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.130, %if.end.121
  %48 = load %struct.tty_display_info*, %struct.tty_display_info** %tty_out.addr, align 8
  %flow_control135 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %48, i32 0, i32 75
  %bf.load136 = load i8, i8* %flow_control135, align 4
  %bf.lshr137 = lshr i8 %bf.load136, 1
  %bf.clear138 = and i8 %bf.lshr137, 1
  %bf.cast139 = trunc i8 %bf.clear138 to i1
  br i1 %bf.cast139, label %if.end.144, label %if.then.140

if.then.140:                                      ; preds = %if.end.134
  %49 = load %struct.tty_display_info*, %struct.tty_display_info** %tty_out.addr, align 8
  %input141 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %49, i32 0, i32 3
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %input141, align 8
  %call142 = call i32 @fileno(%struct._IO_FILE* %50) #7
  %call143 = call i32 @tcflow(i32 %call142, i32 1) #7
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.140, %if.end.134
  %51 = load i8, i8* @interrupt_input, align 1
  %tobool145 = trunc i8 %51 to i1
  br i1 %tobool145, label %if.then.146, label %if.end.159

if.then.146:                                      ; preds = %if.end.144
  %52 = load %struct.tty_display_info*, %struct.tty_display_info** %tty_out.addr, align 8
  %input147 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %52, i32 0, i32 3
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %input147, align 8
  %call148 = call i32 @fileno(%struct._IO_FILE* %53) #7
  %call149 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %call148, i32 9, i32 0)
  %54 = load %struct.tty_display_info*, %struct.tty_display_info** %tty_out.addr, align 8
  %input150 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %54, i32 0, i32 3
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %input150, align 8
  %call151 = call i32 @fileno(%struct._IO_FILE* %55) #7
  %idxprom = sext i32 %call151 to i64
  %arrayidx152 = getelementptr inbounds [1024 x i32], [1024 x i32]* @old_fcntl_owner, i32 0, i64 %idxprom
  store i32 %call149, i32* %arrayidx152, align 4
  %56 = load %struct.tty_display_info*, %struct.tty_display_info** %tty_out.addr, align 8
  %input153 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %56, i32 0, i32 3
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %input153, align 8
  %call154 = call i32 @fileno(%struct._IO_FILE* %57) #7
  %call155 = call i32 @getpid() #7
  %call156 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %call154, i32 8, i32 %call155)
  %58 = load %struct.tty_display_info*, %struct.tty_display_info** %tty_out.addr, align 8
  %input157 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %58, i32 0, i32 3
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %input157, align 8
  %call158 = call i32 @fileno(%struct._IO_FILE* %59) #7
  call void @init_sigio(i32 %call158)
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.146, %if.end.144
  %60 = load %struct.tty_display_info*, %struct.tty_display_info** %tty_out.addr, align 8
  %output160 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %60, i32 0, i32 4
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %output160, align 8
  %call161 = call i32 @setvbuf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([8200 x i8], [8200 x i8]* @_sobuf, i32 0, i32 0), i32 0, i64 8200) #7
  %62 = load %struct.tty_display_info*, %struct.tty_display_info** %tty_out.addr, align 8
  %terminal162 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %62, i32 0, i32 9
  %63 = load %struct.terminal*, %struct.terminal** %terminal162, align 8
  %set_terminal_modes_hook = getelementptr inbounds %struct.terminal, %struct.terminal* %63, i32 0, i32 28
  %64 = load void (%struct.terminal*)*, void (%struct.terminal*)** %set_terminal_modes_hook, align 8
  %tobool163 = icmp ne void (%struct.terminal*)* %64, null
  br i1 %tobool163, label %if.then.164, label %if.end.168

if.then.164:                                      ; preds = %if.end.159
  %65 = load %struct.tty_display_info*, %struct.tty_display_info** %tty_out.addr, align 8
  %terminal165 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %65, i32 0, i32 9
  %66 = load %struct.terminal*, %struct.terminal** %terminal165, align 8
  %set_terminal_modes_hook166 = getelementptr inbounds %struct.terminal, %struct.terminal* %66, i32 0, i32 28
  %67 = load void (%struct.terminal*)*, void (%struct.terminal*)** %set_terminal_modes_hook166, align 8
  %68 = load %struct.tty_display_info*, %struct.tty_display_info** %tty_out.addr, align 8
  %terminal167 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %68, i32 0, i32 9
  %69 = load %struct.terminal*, %struct.terminal** %terminal167, align 8
  call void %67(%struct.terminal* %69)
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.164, %if.end.159
  %70 = load %struct.tty_display_info*, %struct.tty_display_info** %tty_out.addr, align 8
  %term_initted = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %70, i32 0, i32 7
  %bf.load169 = load i8, i8* %term_initted, align 8
  %bf.clear170 = and i8 %bf.load169, 1
  %bf.cast171 = trunc i8 %bf.clear170 to i1
  br i1 %bf.cast171, label %if.end.209, label %if.then.172

if.then.172:                                      ; preds = %if.end.168
  %71 = load i64, i64* @Vframe_list, align 8
  store i64 %71, i64* %tail, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.172
  %72 = load i64, i64* %tail, align 8
  %and173 = and i64 %72, 7
  %conv174 = trunc i64 %and173 to i32
  %cmp175 = icmp eq i32 %conv174, 3
  br i1 %cmp175, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %73 = load i64, i64* %tail, align 8
  %sub = sub nsw i64 %73, 3
  %74 = inttoptr i64 %sub to i8*
  %75 = bitcast i8* %74 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %75, i32 0, i32 0
  %76 = load i64, i64* %car, align 8
  store i64 %76, i64* %frame, align 8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %77 = phi i1 [ false, %for.cond ], [ true, %land.rhs ]
  br i1 %77, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %78 = load i64, i64* %frame, align 8
  %sub177 = sub nsw i64 %78, 5
  %79 = inttoptr i64 %sub177 to i8*
  %80 = bitcast i8* %79 to %struct.frame*
  %output_method = getelementptr inbounds %struct.frame, %struct.frame* %80, i32 0, i32 26
  %81 = bitcast i48* %output_method to i64*
  %bf.load178 = load i64, i64* %81, align 8
  %bf.lshr179 = lshr i64 %bf.load178, 23
  %bf.clear180 = and i64 %bf.lshr179, 7
  %bf.cast181 = trunc i64 %bf.clear180 to i32
  %cmp182 = icmp eq i32 %bf.cast181, 1
  br i1 %cmp182, label %land.lhs.true, label %if.end.207

land.lhs.true:                                    ; preds = %for.body
  %82 = load i64, i64* %frame, align 8
  %sub184 = sub nsw i64 %82, 5
  %83 = inttoptr i64 %sub184 to i8*
  %84 = bitcast i8* %83 to %struct.frame*
  %output_method185 = getelementptr inbounds %struct.frame, %struct.frame* %84, i32 0, i32 26
  %85 = bitcast i48* %output_method185 to i64*
  %bf.load186 = load i64, i64* %85, align 8
  %bf.lshr187 = lshr i64 %bf.load186, 23
  %bf.clear188 = and i64 %bf.lshr187, 7
  %bf.cast189 = trunc i64 %bf.clear188 to i32
  %cmp190 = icmp eq i32 %bf.cast189, 1
  br i1 %cmp190, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %86 = load i64, i64* %frame, align 8
  %sub192 = sub nsw i64 %86, 5
  %87 = inttoptr i64 %sub192 to i8*
  %88 = bitcast i8* %87 to %struct.frame*
  %output_method193 = getelementptr inbounds %struct.frame, %struct.frame* %88, i32 0, i32 26
  %89 = bitcast i48* %output_method193 to i64*
  %bf.load194 = load i64, i64* %89, align 8
  %bf.lshr195 = lshr i64 %bf.load194, 23
  %bf.clear196 = and i64 %bf.lshr195, 7
  %bf.cast197 = trunc i64 %bf.clear196 to i32
  %cmp198 = icmp eq i32 %bf.cast197, 3
  br i1 %cmp198, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %90 = load i64, i64* %frame, align 8
  %sub200 = sub nsw i64 %90, 5
  %91 = inttoptr i64 %sub200 to i8*
  %92 = bitcast i8* %91 to %struct.frame*
  %terminal201 = getelementptr inbounds %struct.frame, %struct.frame* %92, i32 0, i32 61
  %93 = load %struct.terminal*, %struct.terminal** %terminal201, align 8
  %display_info = getelementptr inbounds %struct.terminal, %struct.terminal* %93, i32 0, i32 12
  %tty202 = bitcast %union.display_info* %display_info to %struct.tty_display_info**
  %94 = load %struct.tty_display_info*, %struct.tty_display_info** %tty202, align 8
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  call void @emacs_abort() #13
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %95, %cond.true
  %cond = phi %struct.tty_display_info* [ %94, %cond.true ], [ null, %95 ]
  %96 = load %struct.tty_display_info*, %struct.tty_display_info** %tty_out.addr, align 8
  %cmp203 = icmp eq %struct.tty_display_info* %cond, %96
  br i1 %cmp203, label %if.then.205, label %if.end.207

if.then.205:                                      ; preds = %cond.end
  %97 = load i64, i64* %frame, align 8
  %sub206 = sub nsw i64 %97, 5
  %98 = inttoptr i64 %sub206 to i8*
  %99 = bitcast i8* %98 to %struct.frame*
  call void @init_frame_faces(%struct.frame* %99)
  br label %if.end.207

if.end.207:                                       ; preds = %if.then.205, %cond.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.207
  %100 = load i64, i64* %tail, align 8
  %sub208 = sub nsw i64 %100, 3
  %101 = inttoptr i64 %sub208 to i8*
  %102 = bitcast i8* %101 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %102, i32 0, i32 1
  %cdr = bitcast %union.anon.20* %u to i64*
  %103 = load i64, i64* %cdr, align 8
  store i64 %103, i64* %tail, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  br label %if.end.209

if.end.209:                                       ; preds = %for.end, %if.end.168
  %104 = load %struct.tty_display_info*, %struct.tty_display_info** %tty_out.addr, align 8
  %term_initted210 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %104, i32 0, i32 7
  %bf.load211 = load i8, i8* %term_initted210, align 8
  %bf.clear212 = and i8 %bf.load211, 1
  %bf.cast213 = trunc i8 %bf.clear212 to i1
  br i1 %bf.cast213, label %land.lhs.true.215, label %if.else.219

land.lhs.true.215:                                ; preds = %if.end.209
  %105 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 476), align 1
  %tobool216 = trunc i8 %105 to i1
  br i1 %tobool216, label %if.then.218, label %if.else.219

if.then.218:                                      ; preds = %land.lhs.true.215
  br label %if.end.278

if.else.219:                                      ; preds = %land.lhs.true.215, %if.end.209
  store i8 1, i8* @frame_garbaged, align 1
  %106 = load i64, i64* @Vframe_list, align 8
  store i64 %106, i64* %tail220, align 8
  br label %for.cond.222

for.cond.222:                                     ; preds = %for.inc.273, %if.else.219
  %107 = load i64, i64* %tail220, align 8
  %and223 = and i64 %107, 7
  %conv224 = trunc i64 %and223 to i32
  %cmp225 = icmp eq i32 %conv224, 3
  br i1 %cmp225, label %land.rhs.227, label %land.end.230

land.rhs.227:                                     ; preds = %for.cond.222
  %108 = load i64, i64* %tail220, align 8
  %sub228 = sub nsw i64 %108, 3
  %109 = inttoptr i64 %sub228 to i8*
  %110 = bitcast i8* %109 to %struct.Lisp_Cons*
  %car229 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %110, i32 0, i32 0
  %111 = load i64, i64* %car229, align 8
  store i64 %111, i64* %frame221, align 8
  br label %land.end.230

land.end.230:                                     ; preds = %land.rhs.227, %for.cond.222
  %112 = phi i1 [ false, %for.cond.222 ], [ true, %land.rhs.227 ]
  br i1 %112, label %for.body.231, label %for.end.277

for.body.231:                                     ; preds = %land.end.230
  %113 = load i64, i64* %frame221, align 8
  %sub232 = sub nsw i64 %113, 5
  %114 = inttoptr i64 %sub232 to i8*
  %115 = bitcast i8* %114 to %struct.frame*
  %output_method233 = getelementptr inbounds %struct.frame, %struct.frame* %115, i32 0, i32 26
  %116 = bitcast i48* %output_method233 to i64*
  %bf.load234 = load i64, i64* %116, align 8
  %bf.lshr235 = lshr i64 %bf.load234, 23
  %bf.clear236 = and i64 %bf.lshr235, 7
  %bf.cast237 = trunc i64 %bf.clear236 to i32
  %cmp238 = icmp eq i32 %bf.cast237, 1
  br i1 %cmp238, label %land.lhs.true.240, label %if.end.272

land.lhs.true.240:                                ; preds = %for.body.231
  %117 = load i64, i64* %frame221, align 8
  %sub241 = sub nsw i64 %117, 5
  %118 = inttoptr i64 %sub241 to i8*
  %119 = bitcast i8* %118 to %struct.frame*
  %output_method242 = getelementptr inbounds %struct.frame, %struct.frame* %119, i32 0, i32 26
  %120 = bitcast i48* %output_method242 to i64*
  %bf.load243 = load i64, i64* %120, align 8
  %bf.lshr244 = lshr i64 %bf.load243, 23
  %bf.clear245 = and i64 %bf.lshr244, 7
  %bf.cast246 = trunc i64 %bf.clear245 to i32
  %cmp247 = icmp eq i32 %bf.cast246, 1
  br i1 %cmp247, label %cond.true.258, label %lor.lhs.false.249

lor.lhs.false.249:                                ; preds = %land.lhs.true.240
  %121 = load i64, i64* %frame221, align 8
  %sub250 = sub nsw i64 %121, 5
  %122 = inttoptr i64 %sub250 to i8*
  %123 = bitcast i8* %122 to %struct.frame*
  %output_method251 = getelementptr inbounds %struct.frame, %struct.frame* %123, i32 0, i32 26
  %124 = bitcast i48* %output_method251 to i64*
  %bf.load252 = load i64, i64* %124, align 8
  %bf.lshr253 = lshr i64 %bf.load252, 23
  %bf.clear254 = and i64 %bf.lshr253, 7
  %bf.cast255 = trunc i64 %bf.clear254 to i32
  %cmp256 = icmp eq i32 %bf.cast255, 3
  br i1 %cmp256, label %cond.true.258, label %cond.false.263

cond.true.258:                                    ; preds = %lor.lhs.false.249, %land.lhs.true.240
  %125 = load i64, i64* %frame221, align 8
  %sub259 = sub nsw i64 %125, 5
  %126 = inttoptr i64 %sub259 to i8*
  %127 = bitcast i8* %126 to %struct.frame*
  %terminal260 = getelementptr inbounds %struct.frame, %struct.frame* %127, i32 0, i32 61
  %128 = load %struct.terminal*, %struct.terminal** %terminal260, align 8
  %display_info261 = getelementptr inbounds %struct.terminal, %struct.terminal* %128, i32 0, i32 12
  %tty262 = bitcast %union.display_info* %display_info261 to %struct.tty_display_info**
  %129 = load %struct.tty_display_info*, %struct.tty_display_info** %tty262, align 8
  br label %cond.end.264

cond.false.263:                                   ; preds = %lor.lhs.false.249
  call void @emacs_abort() #13
  unreachable
                                                  ; No predecessors!
  br label %cond.end.264

cond.end.264:                                     ; preds = %130, %cond.true.258
  %cond265 = phi %struct.tty_display_info* [ %129, %cond.true.258 ], [ null, %130 ]
  %131 = load %struct.tty_display_info*, %struct.tty_display_info** %tty_out.addr, align 8
  %cmp266 = icmp eq %struct.tty_display_info* %cond265, %131
  br i1 %cmp266, label %if.then.268, label %if.end.272

if.then.268:                                      ; preds = %cond.end.264
  %132 = load i64, i64* %frame221, align 8
  %sub269 = sub nsw i64 %132, 5
  %133 = inttoptr i64 %sub269 to i8*
  %134 = bitcast i8* %133 to %struct.frame*
  %garbaged = getelementptr inbounds %struct.frame, %struct.frame* %134, i32 0, i32 26
  %135 = bitcast i48* %garbaged to i64*
  %bf.load270 = load i64, i64* %135, align 8
  %bf.clear271 = and i64 %bf.load270, -8193
  %bf.set = or i64 %bf.clear271, 8192
  store i64 %bf.set, i64* %135, align 8
  br label %if.end.272

if.end.272:                                       ; preds = %if.then.268, %cond.end.264, %for.body.231
  br label %for.inc.273

for.inc.273:                                      ; preds = %if.end.272
  %136 = load i64, i64* %tail220, align 8
  %sub274 = sub nsw i64 %136, 3
  %137 = inttoptr i64 %sub274 to i8*
  %138 = bitcast i8* %137 to %struct.Lisp_Cons*
  %u275 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %138, i32 0, i32 1
  %cdr276 = bitcast %union.anon.20* %u275 to i64*
  %139 = load i64, i64* %cdr276, align 8
  store i64 %139, i64* %tail220, align 8
  br label %for.cond.222

for.end.277:                                      ; preds = %land.end.230
  br label %if.end.278

if.end.278:                                       ; preds = %for.end.277, %if.then.218
  %140 = load %struct.tty_display_info*, %struct.tty_display_info** %tty_out.addr, align 8
  %term_initted279 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %140, i32 0, i32 7
  %bf.load280 = load i8, i8* %term_initted279, align 8
  %bf.clear281 = and i8 %bf.load280, -2
  %bf.set282 = or i8 %bf.clear281, 1
  store i8 %bf.set282, i8* %term_initted279, align 8
  br label %return

return:                                           ; preds = %if.end.278, %if.then.2, %if.then
  ret void
}

declare i64 @builtin_lisp_symbol(i32) #2

; Function Attrs: nounwind uwtable
define internal void @narrow_foreground_group(i32 %fd) #0 {
entry:
  %fd.addr = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  %0 = load i32, i32* @inherited_pgroup, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = call i32 @setpgid(i32 0, i32 0) #7
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %1 = load i32, i32* %fd.addr, align 4
  %call1 = call i32 @getpid() #7
  call void @tcsetpgrp_without_stopping(i32 %1, i32 %call1)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

declare noalias i8* @xmalloc(i64) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #7

declare i64 @make_lisp_ptr(i8*, i32) #2

declare i64 @Fcontrolling_tty_p(i64) #2

; Function Attrs: nounwind
declare i32 @tcflow(i32, i32) #1

; Function Attrs: nounwind
declare i32 @setvbuf(%struct._IO_FILE*, i8*, i32, i64) #1

declare void @init_frame_faces(%struct.frame*) #2

; Function Attrs: nounwind uwtable
define zeroext i1 @tabs_safe_p(i32 %fd) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %etty = alloca %struct.emacs_tty, align 4
  store i32 %fd, i32* %fd.addr, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %call = call i32 @emacs_get_tty(i32 %0, %struct.emacs_tty* %etty)
  %main = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %etty, i32 0, i32 0
  %c_oflag = getelementptr inbounds %struct.termios, %struct.termios* %main, i32 0, i32 1
  %1 = load i32, i32* %c_oflag, align 4
  %and = and i32 %1, 6144
  %cmp = icmp ne i32 %and, 6144
  ret i1 %cmp
}

; Function Attrs: nounwind uwtable
define void @suppress_echo_on_tty(i32 %fd) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %etty = alloca %struct.emacs_tty, align 4
  store i32 %fd, i32* %fd.addr, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %call = call i32 @emacs_get_tty(i32 %0, %struct.emacs_tty* %etty)
  %main = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %etty, i32 0, i32 0
  %c_lflag = getelementptr inbounds %struct.termios, %struct.termios* %main, i32 0, i32 3
  %1 = load i32, i32* %c_lflag, align 4
  %and = and i32 %1, -3
  store i32 %and, i32* %c_lflag, align 4
  %main1 = getelementptr inbounds %struct.emacs_tty, %struct.emacs_tty* %etty, i32 0, i32 0
  %c_lflag2 = getelementptr inbounds %struct.termios, %struct.termios* %main1, i32 0, i32 3
  %2 = load i32, i32* %c_lflag2, align 4
  %and3 = and i32 %2, -9
  store i32 %and3, i32* %c_lflag2, align 4
  %3 = load i32, i32* %fd.addr, align 4
  %call4 = call i32 @emacs_set_tty(i32 %3, %struct.emacs_tty* %etty, i1 zeroext false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @get_tty_size(i32 %fd, i32* %widthp, i32* %heightp) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %widthp.addr = alloca i32*, align 8
  %heightp.addr = alloca i32*, align 8
  %size = alloca %struct.winsize, align 2
  store i32 %fd, i32* %fd.addr, align 4
  store i32* %widthp, i32** %widthp.addr, align 8
  store i32* %heightp, i32** %heightp.addr, align 8
  %0 = load i32, i32* %fd.addr, align 4
  %call = call i32 (i32, i64, ...) @ioctl(i32 %0, i64 21523, %struct.winsize* %size) #7
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %heightp.addr, align 8
  store i32 0, i32* %1, align 4
  %2 = load i32*, i32** %widthp.addr, align 8
  store i32 0, i32* %2, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %ws_col = getelementptr inbounds %struct.winsize, %struct.winsize* %size, i32 0, i32 1
  %3 = load i16, i16* %ws_col, align 2
  %conv = zext i16 %3 to i32
  %4 = load i32*, i32** %widthp.addr, align 8
  store i32 %conv, i32* %4, align 4
  %ws_row = getelementptr inbounds %struct.winsize, %struct.winsize* %size, i32 0, i32 0
  %5 = load i16, i16* %ws_row, align 2
  %conv1 = zext i16 %5 to i32
  %6 = load i32*, i32** %heightp.addr, align 8
  store i32 %conv1, i32* %6, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @set_window_size(i32 %fd, i32 %height, i32 %width) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %size = alloca %struct.winsize, align 2
  store i32 %fd, i32* %fd.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  %0 = load i32, i32* %height.addr, align 4
  %conv = trunc i32 %0 to i16
  %ws_row = getelementptr inbounds %struct.winsize, %struct.winsize* %size, i32 0, i32 0
  store i16 %conv, i16* %ws_row, align 2
  %1 = load i32, i32* %width.addr, align 4
  %conv1 = trunc i32 %1 to i16
  %ws_col = getelementptr inbounds %struct.winsize, %struct.winsize* %size, i32 0, i32 1
  store i16 %conv1, i16* %ws_col, align 2
  %2 = load i32, i32* %fd.addr, align 4
  %call = call i32 (i32, i64, ...) @ioctl(i32 %2, i64 21524, %struct.winsize* %size) #7
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @reset_all_sys_modes() #0 {
entry:
  %tty = alloca %struct.tty_display_info*, align 8
  %0 = load %struct.tty_display_info*, %struct.tty_display_info** @tty_list, align 8
  store %struct.tty_display_info* %0, %struct.tty_display_info** %tty, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.tty_display_info*, %struct.tty_display_info** %tty, align 8
  %tobool = icmp ne %struct.tty_display_info* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.tty_display_info*, %struct.tty_display_info** %tty, align 8
  call void @reset_sys_modes(%struct.tty_display_info* %2)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load %struct.tty_display_info*, %struct.tty_display_info** %tty, align 8
  %next = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %3, i32 0, i32 0
  %4 = load %struct.tty_display_info*, %struct.tty_display_info** %next, align 8
  store %struct.tty_display_info* %4, %struct.tty_display_info** %tty, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @reset_sys_modes(%struct.tty_display_info* %tty_out) #0 {
entry:
  %tty_out.addr = alloca %struct.tty_display_info*, align 8
  %i = alloca i32, align 4
  store %struct.tty_display_info* %tty_out, %struct.tty_display_info** %tty_out.addr, align 8
  %0 = load i8, i8* @noninteractive, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 @fflush(%struct._IO_FILE* %1)
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.tty_display_info*, %struct.tty_display_info** %tty_out.addr, align 8
  %term_initted = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %2, i32 0, i32 7
  %bf.load = load i8, i8* %term_initted, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  br label %return

if.end.2:                                         ; preds = %if.end
  %3 = load %struct.tty_display_info*, %struct.tty_display_info** %tty_out.addr, align 8
  %output = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %3, i32 0, i32 4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %output, align 8
  %tobool3 = icmp ne %struct._IO_FILE* %4, null
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end.2
  br label %return

if.end.5:                                         ; preds = %if.end.2
  %5 = load %struct.tty_display_info*, %struct.tty_display_info** %tty_out.addr, align 8
  %6 = load %struct.tty_display_info*, %struct.tty_display_info** %tty_out.addr, align 8
  %Wcm = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %6, i32 0, i32 10
  %7 = load %struct.cm*, %struct.cm** %Wcm, align 8
  %cm_rows = getelementptr inbounds %struct.cm, %struct.cm* %7, i32 0, i32 19
  %8 = load i32, i32* %cm_rows, align 4
  %sub = sub nsw i32 %8, 1
  call void @cmgoto(%struct.tty_display_info* %5, i32 %sub, i32 0)
  %9 = load %struct.tty_display_info*, %struct.tty_display_info** %tty_out.addr, align 8
  %TS_clr_line = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %9, i32 0, i32 21
  %10 = load i8*, i8** %TS_clr_line, align 8
  %tobool6 = icmp ne i8* %10, null
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end.5
  %11 = load %struct.tty_display_info*, %struct.tty_display_info** %tty_out.addr, align 8
  store %struct.tty_display_info* %11, %struct.tty_display_info** @current_tty, align 8
  %12 = load %struct.tty_display_info*, %struct.tty_display_info** %tty_out.addr, align 8
  %TS_clr_line8 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %12, i32 0, i32 21
  %13 = load i8*, i8** %TS_clr_line8, align 8
  call void @tputs(i8* %13, i32 1, i32 (i32)* @cmputc)
  br label %if.end.14

if.else:                                          ; preds = %if.end.5
  %14 = load %struct.tty_display_info*, %struct.tty_display_info** %tty_out.addr, align 8
  call void @tty_turn_off_insert(%struct.tty_display_info* %14)
  %15 = load %struct.tty_display_info*, %struct.tty_display_info** %tty_out.addr, align 8
  %Wcm9 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %15, i32 0, i32 10
  %16 = load %struct.cm*, %struct.cm** %Wcm9, align 8
  %cm_curX = getelementptr inbounds %struct.cm, %struct.cm* %16, i32 0, i32 1
  %17 = load i32, i32* %cm_curX, align 4
  store i32 %17, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %18 = load i32, i32* %i, align 4
  %19 = load %struct.tty_display_info*, %struct.tty_display_info** %tty_out.addr, align 8
  %Wcm10 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %19, i32 0, i32 10
  %20 = load %struct.cm*, %struct.cm** %Wcm10, align 8
  %cm_cols = getelementptr inbounds %struct.cm, %struct.cm* %20, i32 0, i32 18
  %21 = load i32, i32* %cm_cols, align 4
  %sub11 = sub nsw i32 %21, 1
  %cmp = icmp slt i32 %18, %sub11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load %struct.tty_display_info*, %struct.tty_display_info** %tty_out.addr, align 8
  %output12 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %22, i32 0, i32 4
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %output12, align 8
  %call13 = call i32 @fputc(i32 32, %struct._IO_FILE* %23)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.14

if.end.14:                                        ; preds = %for.end, %if.then.7
  %25 = load %struct.tty_display_info*, %struct.tty_display_info** %tty_out.addr, align 8
  %26 = load %struct.tty_display_info*, %struct.tty_display_info** %tty_out.addr, align 8
  %Wcm15 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %26, i32 0, i32 10
  %27 = load %struct.cm*, %struct.cm** %Wcm15, align 8
  %cm_rows16 = getelementptr inbounds %struct.cm, %struct.cm* %27, i32 0, i32 19
  %28 = load i32, i32* %cm_rows16, align 4
  %sub17 = sub nsw i32 %28, 1
  call void @cmgoto(%struct.tty_display_info* %25, i32 %sub17, i32 0)
  %29 = load %struct.tty_display_info*, %struct.tty_display_info** %tty_out.addr, align 8
  %output18 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %29, i32 0, i32 4
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %output18, align 8
  %call19 = call i32 @fflush(%struct._IO_FILE* %30)
  %31 = load %struct.tty_display_info*, %struct.tty_display_info** %tty_out.addr, align 8
  %terminal = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %31, i32 0, i32 9
  %32 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %reset_terminal_modes_hook = getelementptr inbounds %struct.terminal, %struct.terminal* %32, i32 0, i32 27
  %33 = load void (%struct.terminal*)*, void (%struct.terminal*)** %reset_terminal_modes_hook, align 8
  %tobool20 = icmp ne void (%struct.terminal*)* %33, null
  br i1 %tobool20, label %if.then.21, label %if.end.25

if.then.21:                                       ; preds = %if.end.14
  %34 = load %struct.tty_display_info*, %struct.tty_display_info** %tty_out.addr, align 8
  %terminal22 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %34, i32 0, i32 9
  %35 = load %struct.terminal*, %struct.terminal** %terminal22, align 8
  %reset_terminal_modes_hook23 = getelementptr inbounds %struct.terminal, %struct.terminal* %35, i32 0, i32 27
  %36 = load void (%struct.terminal*)*, void (%struct.terminal*)** %reset_terminal_modes_hook23, align 8
  %37 = load %struct.tty_display_info*, %struct.tty_display_info** %tty_out.addr, align 8
  %terminal24 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %37, i32 0, i32 9
  %38 = load %struct.terminal*, %struct.terminal** %terminal24, align 8
  call void %36(%struct.terminal* %38)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.21, %if.end.14
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.25
  %39 = load %struct.tty_display_info*, %struct.tty_display_info** %tty_out.addr, align 8
  %output26 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %39, i32 0, i32 4
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %output26, align 8
  %call27 = call i32 @fileno(%struct._IO_FILE* %40) #7
  %call28 = call i32 @fdatasync(i32 %call27)
  %cmp29 = icmp ne i32 %call28, 0
  br i1 %cmp29, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %call30 = call i32* @__errno_location() #11
  %41 = load i32, i32* %call30, align 4
  %cmp31 = icmp eq i32 %41, 4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %42 = phi i1 [ false, %while.cond ], [ %cmp31, %land.rhs ]
  br i1 %42, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %while.cond

while.end:                                        ; preds = %land.end
  %43 = load i8, i8* @interrupt_input, align 1
  %tobool32 = trunc i8 %43 to i1
  br i1 %tobool32, label %if.then.33, label %if.end.40

if.then.33:                                       ; preds = %while.end
  %44 = load %struct.tty_display_info*, %struct.tty_display_info** %tty_out.addr, align 8
  %input = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %44, i32 0, i32 3
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %input, align 8
  %call34 = call i32 @fileno(%struct._IO_FILE* %45) #7
  call void @reset_sigio(i32 %call34)
  %46 = load %struct.tty_display_info*, %struct.tty_display_info** %tty_out.addr, align 8
  %input35 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %46, i32 0, i32 3
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %input35, align 8
  %call36 = call i32 @fileno(%struct._IO_FILE* %47) #7
  %48 = load %struct.tty_display_info*, %struct.tty_display_info** %tty_out.addr, align 8
  %input37 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %48, i32 0, i32 3
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %input37, align 8
  %call38 = call i32 @fileno(%struct._IO_FILE* %49) #7
  %idxprom = sext i32 %call38 to i64
  %arrayidx = getelementptr inbounds [1024 x i32], [1024 x i32]* @old_fcntl_owner, i32 0, i64 %idxprom
  %50 = load i32, i32* %arrayidx, align 4
  %call39 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %call36, i32 8, i32 %50)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.33, %while.end
  %51 = load %struct.tty_display_info*, %struct.tty_display_info** %tty_out.addr, align 8
  %input41 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %51, i32 0, i32 3
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %input41, align 8
  %call42 = call i32 @fileno(%struct._IO_FILE* %52) #7
  %53 = load %struct.tty_display_info*, %struct.tty_display_info** %tty_out.addr, align 8
  %input43 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %53, i32 0, i32 3
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %input43, align 8
  %call44 = call i32 @fileno(%struct._IO_FILE* %54) #7
  %call45 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %call44, i32 3, i32 0)
  %and = and i32 %call45, -2049
  %call46 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %call42, i32 4, i32 %and)
  %55 = load %struct.tty_display_info*, %struct.tty_display_info** %tty_out.addr, align 8
  %old_tty = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %55, i32 0, i32 6
  %56 = load %struct.emacs_tty*, %struct.emacs_tty** %old_tty, align 8
  %tobool47 = icmp ne %struct.emacs_tty* %56, null
  br i1 %tobool47, label %if.then.48, label %if.end.61

if.then.48:                                       ; preds = %if.end.40
  br label %while.cond.49

while.cond.49:                                    ; preds = %while.body.59, %if.then.48
  %57 = load %struct.tty_display_info*, %struct.tty_display_info** %tty_out.addr, align 8
  %input50 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %57, i32 0, i32 3
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %input50, align 8
  %call51 = call i32 @fileno(%struct._IO_FILE* %58) #7
  %59 = load %struct.tty_display_info*, %struct.tty_display_info** %tty_out.addr, align 8
  %old_tty52 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %59, i32 0, i32 6
  %60 = load %struct.emacs_tty*, %struct.emacs_tty** %old_tty52, align 8
  %call53 = call i32 @emacs_set_tty(i32 %call51, %struct.emacs_tty* %60, i1 zeroext false)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %land.rhs.55, label %land.end.58

land.rhs.55:                                      ; preds = %while.cond.49
  %call56 = call i32* @__errno_location() #11
  %61 = load i32, i32* %call56, align 4
  %cmp57 = icmp eq i32 %61, 4
  br label %land.end.58

land.end.58:                                      ; preds = %land.rhs.55, %while.cond.49
  %62 = phi i1 [ false, %while.cond.49 ], [ %cmp57, %land.rhs.55 ]
  br i1 %62, label %while.body.59, label %while.end.60

while.body.59:                                    ; preds = %land.end.58
  br label %while.cond.49

while.end.60:                                     ; preds = %land.end.58
  br label %if.end.61

if.end.61:                                        ; preds = %while.end.60, %if.end.40
  %63 = load %struct.tty_display_info*, %struct.tty_display_info** %tty_out.addr, align 8
  %input62 = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %63, i32 0, i32 3
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %input62, align 8
  %call63 = call i32 @fileno(%struct._IO_FILE* %64) #7
  call void @widen_foreground_group(i32 %call63)
  br label %return

return:                                           ; preds = %if.end.61, %if.then.4, %if.then.1, %if.then
  ret void
}

declare i32 @fflush(%struct._IO_FILE*) #2

declare void @cmgoto(%struct.tty_display_info*, i32, i32) #2

declare void @tputs(i8*, i32, i32 (i32)*) #2

declare i32 @cmputc(i32) #2

declare void @tty_turn_off_insert(%struct.tty_display_info*) #2

declare i32 @fputc(i32, %struct._IO_FILE*) #2

declare i32 @fdatasync(i32) #2

; Function Attrs: nounwind uwtable
define internal void @reset_sigio(i32 %fd) #0 {
entry:
  %fd.addr = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %1 = load i32, i32* %fd.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [1024 x i32], [1024 x i32]* @old_fcntl_flags, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %call = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 4, i32 %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @widen_foreground_group(i32 %fd) #0 {
entry:
  %fd.addr = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  %0 = load i32, i32* @inherited_pgroup, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @inherited_pgroup, align 4
  %call = call i32 @setpgid(i32 0, i32 %1) #7
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32, i32* %fd.addr, align 4
  %3 = load i32, i32* @inherited_pgroup, align 4
  call void @tcsetpgrp_without_stopping(i32 %2, i32 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @setup_pty(i32 %fd) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %on = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store i32 1, i32* %on, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %call = call i32 (i32, i64, ...) @ioctl(i32 %0, i64 21537, i32* %on) #7
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_system_name() #0 {
entry:
  %hostname_alloc = alloca i8*, align 8
  %hostname = alloca i8*, align 8
  %hostname_buf = alloca [256 x i8], align 16
  %hostname_size = alloca i64, align 8
  %p = alloca i8*, align 8
  store i8* null, i8** %hostname_alloc, align 8
  store i64 256, i64* %hostname_size, align 8
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %hostname_buf, i32 0, i32 0
  store i8* %arraydecay, i8** %hostname, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %0 = load i8*, i8** %hostname, align 8
  %1 = load i64, i64* %hostname_size, align 8
  %sub = sub nsw i64 %1, 1
  %call = call i32 @gethostname(i8* %0, i64 %sub) #7
  %2 = load i64, i64* %hostname_size, align 8
  %sub1 = sub nsw i64 %2, 1
  %3 = load i8*, i8** %hostname, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %sub1
  store i8 0, i8* %arrayidx, align 1
  %4 = load i8*, i8** %hostname, align 8
  %call2 = call i64 @strlen(i8* %4) #12
  %5 = load i64, i64* %hostname_size, align 8
  %sub3 = sub nsw i64 %5, 1
  %cmp = icmp ult i64 %call2, %sub3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %6 = load i8*, i8** %hostname_alloc, align 8
  %call4 = call i8* @xpalloc(i8* %6, i64* %hostname_size, i64 1, i64 9223372036854775807, i64 1)
  store i8* %call4, i8** %hostname_alloc, align 8
  store i8* %call4, i8** %hostname, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then
  %7 = load i8*, i8** %hostname, align 8
  store i8* %7, i8** %p, align 8
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.end
  %8 = load i8*, i8** %p, align 8
  %9 = load i8, i8* %8, align 1
  %tobool = icmp ne i8 %9, 0
  br i1 %tobool, label %for.body, label %for.end.13

for.body:                                         ; preds = %for.cond.5
  %10 = load i8*, i8** %p, align 8
  %11 = load i8, i8* %10, align 1
  %conv = sext i8 %11 to i32
  %cmp6 = icmp eq i32 %conv, 32
  br i1 %cmp6, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %12 = load i8*, i8** %p, align 8
  %13 = load i8, i8* %12, align 1
  %conv8 = sext i8 %13 to i32
  %cmp9 = icmp eq i32 %conv8, 9
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %lor.lhs.false, %for.body
  %14 = load i8*, i8** %p, align 8
  store i8 45, i8* %14, align 1
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %15 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond.5

for.end.13:                                       ; preds = %for.cond.5
  %16 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 285), align 8
  %call14 = call zeroext i1 @STRINGP(i64 %16)
  br i1 %call14, label %land.lhs.true, label %if.then.24

land.lhs.true:                                    ; preds = %for.end.13
  %17 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 285), align 8
  %call16 = call i64 @SBYTES(i64 %17)
  %18 = load i8*, i8** %p, align 8
  %19 = load i8*, i8** %hostname, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %18 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %19 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp17 = icmp eq i64 %call16, %sub.ptr.sub
  br i1 %cmp17, label %land.lhs.true.19, label %if.then.24

land.lhs.true.19:                                 ; preds = %land.lhs.true
  %20 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 285), align 8
  %call20 = call i8* @SSDATA(i64 %20)
  %21 = load i8*, i8** %hostname, align 8
  %call21 = call i32 @strcmp(i8* %call20, i8* %21) #12
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %if.end.26, label %if.then.24

if.then.24:                                       ; preds = %land.lhs.true.19, %land.lhs.true, %for.end.13
  %22 = load i8*, i8** %hostname, align 8
  %call25 = call i64 @build_string(i8* %22)
  store i64 %call25, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 285), align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %land.lhs.true.19
  %23 = load i8*, i8** %hostname_alloc, align 8
  call void @xfree(i8* %23)
  ret void
}

; Function Attrs: nounwind
declare i32 @gethostname(i8*, i64) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #8

declare i8* @xpalloc(i8*, i64*, i64, i64, i64) #2

declare zeroext i1 @STRINGP(i64) #2

declare i64 @SBYTES(i64) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #8

declare i64 @build_string(i8*) #2

declare void @xfree(i8*) #2

; Function Attrs: nounwind uwtable
define void @emacs_sigaction_init(%struct.sigaction* %action, void (i32)* %handler) #0 {
entry:
  %action.addr = alloca %struct.sigaction*, align 8
  %handler.addr = alloca void (i32)*, align 8
  store %struct.sigaction* %action, %struct.sigaction** %action.addr, align 8
  store void (i32)* %handler, void (i32)** %handler.addr, align 8
  %0 = load %struct.sigaction*, %struct.sigaction** %action.addr, align 8
  %sa_mask = getelementptr inbounds %struct.sigaction, %struct.sigaction* %0, i32 0, i32 1
  %call = call i32 @sigemptyset(%struct.__sigset_t* %sa_mask) #7
  %1 = load %struct.sigaction*, %struct.sigaction** %action.addr, align 8
  %sa_mask1 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 1
  %call2 = call i32 @sigaddset(%struct.__sigset_t* %sa_mask1, i32 14) #7
  %2 = load %struct.sigaction*, %struct.sigaction** %action.addr, align 8
  %sa_mask3 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 1
  %call4 = call i32 @sigaddset(%struct.__sigset_t* %sa_mask3, i32 17) #7
  %3 = load %struct.sigaction*, %struct.sigaction** %action.addr, align 8
  %sa_mask5 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 1
  %call6 = call i32 @sigaddset(%struct.__sigset_t* %sa_mask5, i32 27) #7
  %4 = load %struct.sigaction*, %struct.sigaction** %action.addr, align 8
  %sa_mask7 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i32 0, i32 1
  %call8 = call i32 @sigaddset(%struct.__sigset_t* %sa_mask7, i32 28) #7
  %5 = load i8, i8* @noninteractive, align 1
  %tobool = trunc i8 %5 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load %struct.sigaction*, %struct.sigaction** %action.addr, align 8
  %sa_mask9 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 1
  %call10 = call i32 @sigaddset(%struct.__sigset_t* %sa_mask9, i32 2) #7
  %7 = load %struct.sigaction*, %struct.sigaction** %action.addr, align 8
  %sa_mask11 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %7, i32 0, i32 1
  %call12 = call i32 @sigaddset(%struct.__sigset_t* %sa_mask11, i32 3) #7
  %8 = load %struct.sigaction*, %struct.sigaction** %action.addr, align 8
  %sa_mask13 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %8, i32 0, i32 1
  %call14 = call i32 @sigaddset(%struct.__sigset_t* %sa_mask13, i32 29) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load void (i32)*, void (i32)** %handler.addr, align 8
  %10 = load %struct.sigaction*, %struct.sigaction** %action.addr, align 8
  %__sigaction_handler = getelementptr inbounds %struct.sigaction, %struct.sigaction* %10, i32 0, i32 0
  %sa_handler = bitcast %union.anon.11* %__sigaction_handler to void (i32)**
  store void (i32)* %9, void (i32)** %sa_handler, align 8
  %call15 = call i32 @emacs_sigaction_flags()
  %11 = load %struct.sigaction*, %struct.sigaction** %action.addr, align 8
  %sa_flags = getelementptr inbounds %struct.sigaction, %struct.sigaction* %11, i32 0, i32 2
  store i32 %call15, i32* %sa_flags, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @emacs_sigaction_flags() #0 {
entry:
  %retval = alloca i32, align 4
  %0 = load i8, i8* @noninteractive, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 268435456, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, i32* %retval
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define void @deliver_process_signal(i32 %sig, void (i32)* %handler) #0 {
entry:
  %sig.addr = alloca i32, align 4
  %handler.addr = alloca void (i32)*, align 8
  %old_errno = alloca i32, align 4
  %on_main_thread = alloca i8, align 1
  %blocked = alloca %struct.__sigset_t, align 8
  store i32 %sig, i32* %sig.addr, align 4
  store void (i32)* %handler, void (i32)** %handler.addr, align 8
  %call = call i32* @__errno_location() #11
  %0 = load i32, i32* %call, align 4
  store i32 %0, i32* %old_errno, align 4
  store i8 1, i8* %on_main_thread, align 1
  %call1 = call i64 @pthread_self() #11
  %1 = load i64, i64* @main_thread, align 8
  %call2 = call i32 @pthread_equal(i64 %call1, i64 %1) #11
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call3 = call i32 @sigemptyset(%struct.__sigset_t* %blocked) #7
  %2 = load i32, i32* %sig.addr, align 4
  %call4 = call i32 @sigaddset(%struct.__sigset_t* %blocked, i32 %2) #7
  %call5 = call i32 @pthread_sigmask(i32 0, %struct.__sigset_t* %blocked, %struct.__sigset_t* null) #7
  %3 = load i64, i64* @main_thread, align 8
  %4 = load i32, i32* %sig.addr, align 4
  %call6 = call i32 @pthread_kill(i64 %3, i32 %4) #7
  store i8 0, i8* %on_main_thread, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8, i8* %on_main_thread, align 1
  %tobool7 = trunc i8 %5 to i1
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %6 = load void (i32)*, void (i32)** %handler.addr, align 8
  %7 = load i32, i32* %sig.addr, align 4
  call void %6(i32 %7)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  %8 = load i32, i32* %old_errno, align 4
  %call10 = call i32* @__errno_location() #11
  store i32 %8, i32* %call10, align 4
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @pthread_equal(i64, i64) #6

; Function Attrs: nounwind readnone
declare i64 @pthread_self() #6

; Function Attrs: nounwind
declare i32 @pthread_kill(i64, i32) #1

; Function Attrs: nounwind uwtable
define void @init_signals(i1 zeroext %dumping) #0 {
entry:
  %dumping.addr = alloca i8, align 1
  %thread_fatal_action = alloca %struct.sigaction, align 8
  %action = alloca %struct.sigaction, align 8
  %frombool = zext i1 %dumping to i8
  store i8 %frombool, i8* %dumping.addr, align 1
  %call = call i32 @sigemptyset(%struct.__sigset_t* @empty_mask) #7
  %call1 = call i64 @pthread_self() #11
  store i64 %call1, i64* @main_thread, align 8
  %0 = load i8, i8* %dumping.addr, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call i32 @sigfillset(%struct.__sigset_t* getelementptr inbounds (%struct.sigaction, %struct.sigaction* @process_fatal_action, i32 0, i32 1)) #7
  store void (i32)* @deliver_fatal_signal, void (i32)** getelementptr inbounds (%struct.sigaction, %struct.sigaction* @process_fatal_action, i32 0, i32 0, i32 0), align 8
  %call3 = call i32 @emacs_sigaction_flags()
  store i32 %call3, i32* getelementptr inbounds (%struct.sigaction, %struct.sigaction* @process_fatal_action, i32 0, i32 2), align 4
  %sa_mask = getelementptr inbounds %struct.sigaction, %struct.sigaction* %thread_fatal_action, i32 0, i32 1
  %call4 = call i32 @sigfillset(%struct.__sigset_t* %sa_mask) #7
  %__sigaction_handler = getelementptr inbounds %struct.sigaction, %struct.sigaction* %thread_fatal_action, i32 0, i32 0
  %sa_handler = bitcast %union.anon.11* %__sigaction_handler to void (i32)**
  store void (i32)* @deliver_fatal_thread_signal, void (i32)** %sa_handler, align 8
  %1 = load i32, i32* getelementptr inbounds (%struct.sigaction, %struct.sigaction* @process_fatal_action, i32 0, i32 2), align 4
  %sa_flags = getelementptr inbounds %struct.sigaction, %struct.sigaction* %thread_fatal_action, i32 0, i32 2
  store i32 %1, i32* %sa_flags, align 4
  call void @maybe_fatal_sig(i32 1)
  call void @maybe_fatal_sig(i32 2)
  call void @maybe_fatal_sig(i32 15)
  %2 = load i8, i8* @noninteractive, align 1
  %tobool5 = trunc i8 %2 to i1
  br i1 %tobool5, label %if.end.8, label %if.then.6

if.then.6:                                        ; preds = %if.end
  %call7 = call void (i32)* @signal(i32 13, void (i32)* inttoptr (i64 1 to void (i32)*)) #7
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  %call9 = call i32 @sigaction(i32 3, %struct.sigaction* @process_fatal_action, %struct.sigaction* null) #7
  %call10 = call i32 @sigaction(i32 4, %struct.sigaction* %thread_fatal_action, %struct.sigaction* null) #7
  %call11 = call i32 @sigaction(i32 5, %struct.sigaction* %thread_fatal_action, %struct.sigaction* null) #7
  %call12 = call i32 @sigaction(i32 8, %struct.sigaction* %thread_fatal_action, %struct.sigaction* null) #7
  call void @add_user_signal(i32 10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0))
  call void @add_user_signal(i32 12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0))
  %call13 = call i32 @sigaction(i32 6, %struct.sigaction* %thread_fatal_action, %struct.sigaction* null) #7
  %call14 = call i32 @sigaction(i32 6, %struct.sigaction* %thread_fatal_action, %struct.sigaction* null) #7
  %call15 = call i32 @sigaction(i32 7, %struct.sigaction* %thread_fatal_action, %struct.sigaction* null) #7
  %call16 = call zeroext i1 @init_sigsegv()
  br i1 %call16, label %if.end.19, label %if.then.17

if.then.17:                                       ; preds = %if.end.8
  %call18 = call i32 @sigaction(i32 11, %struct.sigaction* %thread_fatal_action, %struct.sigaction* null) #7
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %if.end.8
  %call20 = call i32 @sigaction(i32 31, %struct.sigaction* %thread_fatal_action, %struct.sigaction* null) #7
  %call21 = call i32 @sigaction(i32 15, %struct.sigaction* @process_fatal_action, %struct.sigaction* null) #7
  %call22 = call void (i32)* @signal(i32 27, void (i32)* inttoptr (i64 1 to void (i32)*)) #7
  %call23 = call i32 @sigaction(i32 26, %struct.sigaction* @process_fatal_action, %struct.sigaction* null) #7
  %call24 = call i32 @sigaction(i32 24, %struct.sigaction* @process_fatal_action, %struct.sigaction* null) #7
  %call25 = call i32 @sigaction(i32 25, %struct.sigaction* @process_fatal_action, %struct.sigaction* null) #7
  br label %return

return:                                           ; preds = %if.end.19, %if.then
  ret void
}

; Function Attrs: nounwind
declare i32 @sigfillset(%struct.__sigset_t*) #1

; Function Attrs: nounwind uwtable
define internal void @deliver_fatal_signal(i32 %sig) #0 {
entry:
  %sig.addr = alloca i32, align 4
  store i32 %sig, i32* %sig.addr, align 4
  %0 = load i32, i32* %sig.addr, align 4
  call void @deliver_process_signal(i32 %0, void (i32)* @handle_fatal_signal)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @deliver_fatal_thread_signal(i32 %sig) #0 {
entry:
  %sig.addr = alloca i32, align 4
  store i32 %sig, i32* %sig.addr, align 4
  %0 = load i32, i32* %sig.addr, align 4
  call void @deliver_thread_signal(i32 %0, void (i32)* @handle_fatal_signal)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @maybe_fatal_sig(i32 %sig) #0 {
entry:
  %sig.addr = alloca i32, align 4
  %catch_sig = alloca i8, align 1
  %old_action = alloca %struct.sigaction, align 8
  store i32 %sig, i32* %sig.addr, align 4
  %0 = load i8, i8* @noninteractive, align 1
  %tobool = trunc i8 %0 to i1
  %lnot = xor i1 %tobool, true
  %frombool = zext i1 %lnot to i8
  store i8 %frombool, i8* %catch_sig, align 1
  %1 = load i8, i8* %catch_sig, align 1
  %tobool1 = trunc i8 %1 to i1
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %sig.addr, align 4
  %call = call i32 @sigaction(i32 %2, %struct.sigaction* null, %struct.sigaction* %old_action) #7
  %__sigaction_handler = getelementptr inbounds %struct.sigaction, %struct.sigaction* %old_action, i32 0, i32 0
  %sa_handler = bitcast %union.anon.11* %__sigaction_handler to void (i32)**
  %3 = load void (i32)*, void (i32)** %sa_handler, align 8
  %cmp = icmp ne void (i32)* %3, inttoptr (i64 1 to void (i32)*)
  %frombool2 = zext i1 %cmp to i8
  store i8 %frombool2, i8* %catch_sig, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8, i8* %catch_sig, align 1
  %tobool3 = trunc i8 %4 to i1
  br i1 %tobool3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %5 = load i32, i32* %sig.addr, align 4
  %call5 = call i32 @sigaction(i32 %5, %struct.sigaction* @process_fatal_action, %struct.sigaction* null) #7
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  ret void
}

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #1

; Function Attrs: nounwind
declare i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #1

declare void @add_user_signal(i32, i8*) #2

; Function Attrs: nounwind uwtable
define internal zeroext i1 @init_sigsegv() #0 {
entry:
  %retval = alloca i1, align 1
  %sa = alloca %struct.sigaction, align 8
  %ss = alloca %struct.sigaltstack, align 8
  %ss_sp = getelementptr inbounds %struct.sigaltstack, %struct.sigaltstack* %ss, i32 0, i32 0
  store i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @sigsegv_stack, i32 0, i32 0), i8** %ss_sp, align 8
  %ss_size = getelementptr inbounds %struct.sigaltstack, %struct.sigaltstack* %ss, i32 0, i32 2
  store i64 8192, i64* %ss_size, align 8
  %ss_flags = getelementptr inbounds %struct.sigaltstack, %struct.sigaltstack* %ss, i32 0, i32 1
  store i32 0, i32* %ss_flags, align 4
  %call = call i32 @sigaltstack(%struct.sigaltstack* %ss, %struct.sigaltstack* null) #7
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval
  br label %return

if.end:                                           ; preds = %entry
  %sa_mask = getelementptr inbounds %struct.sigaction, %struct.sigaction* %sa, i32 0, i32 1
  %call1 = call i32 @sigfillset(%struct.__sigset_t* %sa_mask) #7
  %__sigaction_handler = getelementptr inbounds %struct.sigaction, %struct.sigaction* %sa, i32 0, i32 0
  %sa_sigaction = bitcast %union.anon.11* %__sigaction_handler to void (i32, %struct.siginfo_t*, i8*)**
  store void (i32, %struct.siginfo_t*, i8*)* @handle_sigsegv, void (i32, %struct.siginfo_t*, i8*)** %sa_sigaction, align 8
  %call2 = call i32 @emacs_sigaction_flags()
  %or = or i32 134217732, %call2
  %sa_flags = getelementptr inbounds %struct.sigaction, %struct.sigaction* %sa, i32 0, i32 2
  store i32 %or, i32* %sa_flags, align 4
  %call3 = call i32 @sigaction(i32 11, %struct.sigaction* %sa, %struct.sigaction* null) #7
  %cmp4 = icmp slt i32 %call3, 0
  %cond = select i1 %cmp4, i32 0, i32 1
  %tobool = icmp ne i32 %cond, 0
  store i1 %tobool, i1* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %0 = load i1, i1* %retval
  ret i1 %0
}

; Function Attrs: nounwind uwtable
define void @seed_random(i8* %seed, i64 %seed_size) #0 {
entry:
  %seed.addr = alloca i8*, align 8
  %seed_size.addr = alloca i64, align 8
  %arg = alloca i32, align 4
  %argp = alloca i8*, align 8
  %seedp = alloca i8*, align 8
  %i = alloca i64, align 8
  store i8* %seed, i8** %seed.addr, align 8
  store i64 %seed_size, i64* %seed_size.addr, align 8
  store i32 0, i32* %arg, align 4
  %0 = bitcast i32* %arg to i8*
  store i8* %0, i8** %argp, align 8
  %1 = load i8*, i8** %seed.addr, align 8
  store i8* %1, i8** %seedp, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %i, align 8
  %3 = load i64, i64* %seed_size.addr, align 8
  %cmp = icmp slt i64 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %i, align 8
  %5 = load i8*, i8** %seedp, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %4
  %6 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %7 = load i64, i64* %i, align 8
  %rem = urem i64 %7, 4
  %8 = load i8*, i8** %argp, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %8, i64 %rem
  %9 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %9 to i32
  %xor = xor i32 %conv2, %conv
  %conv3 = trunc i32 %xor to i8
  store i8 %conv3, i8* %arrayidx1, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i64, i64* %i, align 8
  %inc = add nsw i64 %10, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %arg, align 4
  call void @set_random_seed(i32 %11)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_random_seed(i32 %arg) #0 {
entry:
  %arg.addr = alloca i32, align 4
  store i32 %arg, i32* %arg.addr, align 4
  %0 = load i32, i32* %arg.addr, align 4
  call void @srandom(i32 %0) #7
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_random() #0 {
entry:
  %v = alloca i32, align 4
  %success = alloca i8, align 1
  %fd = alloca i32, align 4
  %t = alloca %struct.timespec, align 8
  %call = call i64 @emacs_gnutls_global_init()
  %call1 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp = icmp eq i64 %call, %call1
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %0 = bitcast i32* %v to i8*
  %call2 = call i32 @gnutls_rnd(i32 0, i8* %0, i64 4)
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.end.16, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  store i8 0, i8* %success, align 1
  %call4 = call i32 @emacs_open(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i32 0, i32 0)
  store i32 %call4, i32* %fd, align 4
  %1 = load i32, i32* %fd, align 4
  %cmp5 = icmp sle i32 0, %1
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %2 = load i32, i32* %fd, align 4
  %3 = bitcast i32* %v to i8*
  %call7 = call i64 @emacs_read(i32 %2, i8* %3, i64 4)
  %cmp8 = icmp eq i64 %call7, 4
  %frombool = zext i1 %cmp8 to i8
  store i8 %frombool, i8* %success, align 1
  %4 = load i32, i32* %fd, align 4
  %call9 = call i32 @emacs_close(i32 %4)
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  %5 = load i8, i8* %success, align 1
  %tobool = trunc i8 %5 to i1
  br i1 %tobool, label %if.end.15, label %if.then.10

if.then.10:                                       ; preds = %if.end
  %call11 = call { i64, i64 } @current_timespec()
  %6 = bitcast %struct.timespec* %t to { i64, i64 }*
  %7 = getelementptr { i64, i64 }, { i64, i64 }* %6, i32 0, i32 0
  %8 = extractvalue { i64, i64 } %call11, 0
  store i64 %8, i64* %7, align 8
  %9 = getelementptr { i64, i64 }, { i64, i64 }* %6, i32 0, i32 1
  %10 = extractvalue { i64, i64 } %call11, 1
  store i64 %10, i64* %9, align 8
  %call12 = call i32 @getpid() #7
  %conv = sext i32 %call12 to i64
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %t, i32 0, i32 0
  %11 = load i64, i64* %tv_sec, align 8
  %xor = xor i64 %conv, %11
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %t, i32 0, i32 1
  %12 = load i64, i64* %tv_nsec, align 8
  %xor13 = xor i64 %xor, %12
  %conv14 = trunc i64 %xor13 to i32
  store i32 %conv14, i32* %v, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.10, %if.end
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %land.lhs.true
  %13 = load i32, i32* %v, align 4
  call void @set_random_seed(i32 %13)
  ret void
}

declare i64 @emacs_gnutls_global_init() #2

declare i32 @gnutls_rnd(i32, i8*, i64) #2

; Function Attrs: nounwind uwtable
define i32 @emacs_open(i8* %file, i32 %oflags, i32 %mode) #0 {
entry:
  %file.addr = alloca i8*, align 8
  %oflags.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %fd = alloca i32, align 4
  store i8* %file, i8** %file.addr, align 8
  store i32 %oflags, i32* %oflags.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load i32, i32* %oflags.addr, align 4
  %and = and i32 %0, 0
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %oflags.addr, align 4
  store i32 %1, i32* %oflags.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %oflags.addr, align 4
  %or = or i32 %2, 524288
  store i32 %or, i32* %oflags.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %do.end, %if.end
  %3 = load i8*, i8** %file.addr, align 8
  %4 = load i32, i32* %oflags.addr, align 4
  %5 = load i32, i32* %mode.addr, align 4
  %call = call i32 (i8*, i32, ...) @open(i8* %3, i32 %4, i32 %5)
  store i32 %call, i32* %fd, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %call1 = call i32* @__errno_location() #11
  %6 = load i32, i32* %call1, align 4
  %cmp2 = icmp eq i32 %6, 4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %do.body

do.body:                                          ; preds = %while.body
  %8 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp4 = icmp eq i64 %8, %call3
  br i1 %cmp4, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.body
  %9 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp6 = icmp eq i64 %9, %call5
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %land.lhs.true
  call void @process_quit_flag()
  br label %if.end.11

if.else:                                          ; preds = %land.lhs.true, %do.body
  %10 = load volatile i8, i8* @pending_signals, align 1
  %tobool8 = trunc i8 %10 to i1
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.else
  call void @process_pending_signals()
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.else
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %while.cond

while.end:                                        ; preds = %land.end
  %11 = load i32, i32* %fd, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i64 @emacs_read(i32 %fildes, i8* %buf, i64 %nbyte) #0 {
entry:
  %fildes.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %nbyte.addr = alloca i64, align 8
  %rtnval = alloca i64, align 8
  store i32 %fildes, i32* %fildes.addr, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %nbyte, i64* %nbyte.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %do.end, %entry
  %0 = load i32, i32* %fildes.addr, align 4
  %1 = load i8*, i8** %buf.addr, align 8
  %2 = load i64, i64* %nbyte.addr, align 8
  %call = call i64 @read(i32 %0, i8* %1, i64 %2)
  store i64 %call, i64* %rtnval, align 8
  %cmp = icmp eq i64 %call, -1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %call1 = call i32* @__errno_location() #11
  %3 = load i32, i32* %call1, align 4
  %cmp2 = icmp eq i32 %3, 4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %do.body

do.body:                                          ; preds = %while.body
  %5 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp4 = icmp eq i64 %5, %call3
  br i1 %cmp4, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.body
  %6 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp6 = icmp eq i64 %6, %call5
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @process_quit_flag()
  br label %if.end.8

if.else:                                          ; preds = %land.lhs.true, %do.body
  %7 = load volatile i8, i8* @pending_signals, align 1
  %tobool = trunc i8 %7 to i1
  br i1 %tobool, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.else
  call void @process_pending_signals()
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  br label %do.end

do.end:                                           ; preds = %if.end.8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %8 = load i64, i64* %rtnval, align 8
  ret i64 %8
}

; Function Attrs: nounwind uwtable
define i32 @emacs_close(i32 %fd) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  br label %while.body

while.body:                                       ; preds = %entry, %if.end.6
  %0 = load i32, i32* %fd.addr, align 4
  %call = call i32 @posix_close(i32 %0, i32 1)
  store i32 %call, i32* %r, align 4
  %1 = load i32, i32* %r, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %2 = load i32, i32* %r, align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %call1 = call i32* @__errno_location() #11
  %3 = load i32, i32* %call1, align 4
  %cmp2 = icmp ne i32 %3, 4
  br i1 %cmp2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %if.end
  %call4 = call i32* @__errno_location() #11
  %4 = load i32, i32* %call4, align 4
  %cmp5 = icmp eq i32 %4, 115
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.3
  br label %cond.end

cond.false:                                       ; preds = %if.then.3
  %5 = load i32, i32* %r, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %5, %cond.false ]
  store i32 %cond, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  br label %while.body

return:                                           ; preds = %cond.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

declare { i64, i64 } @current_timespec() #2

; Function Attrs: nounwind uwtable
define i64 @get_random() #0 {
entry:
  %val = alloca i64, align 8
  %i = alloca i32, align 4
  store i64 0, i64* %val, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i64 @random() #7
  %1 = load i64, i64* %val, align 8
  %shl = shl i64 %1, 31
  %xor = xor i64 %call, %shl
  %2 = load i64, i64* %val, align 8
  %shr = lshr i64 %2, 33
  %xor1 = xor i64 %xor, %shr
  store i64 %xor1, i64* %val, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %4 = load i64, i64* %val, align 8
  %shr2 = lshr i64 %4, 2
  %5 = load i64, i64* %val, align 8
  %xor3 = xor i64 %5, %shr2
  store i64 %xor3, i64* %val, align 8
  %6 = load i64, i64* %val, align 8
  %and = and i64 %6, 4611686018427387903
  ret i64 %and
}

; Function Attrs: nounwind
declare i64 @random() #1

; Function Attrs: nounwind uwtable
define void @emacs_backtrace(i32 %backtrace_limit) #0 {
entry:
  %backtrace_limit.addr = alloca i32, align 4
  %main_backtrace_buffer = alloca [501 x i8*], align 16
  %bounded_limit = alloca i32, align 4
  %buffer = alloca i8*, align 8
  %npointers = alloca i32, align 4
  store i32 %backtrace_limit, i32* %backtrace_limit.addr, align 4
  %0 = load i32, i32* %backtrace_limit.addr, align 4
  %cmp = icmp slt i32 %0, 500
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, i32* %backtrace_limit.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ 500, %cond.false ]
  store i32 %cond, i32* %bounded_limit, align 4
  %2 = load i32, i32* @thread_backtrace_npointers, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  store i8* bitcast ([501 x i8*]* @thread_backtrace_buffer to i8*), i8** %buffer, align 8
  %3 = load i32, i32* @thread_backtrace_npointers, align 4
  store i32 %3, i32* %npointers, align 4
  br label %if.end.4

if.else:                                          ; preds = %cond.end
  %arraydecay = getelementptr inbounds [501 x i8*], [501 x i8*]* %main_backtrace_buffer, i32 0, i32 0
  %4 = bitcast i8** %arraydecay to i8*
  store i8* %4, i8** %buffer, align 8
  %5 = load i32, i32* %bounded_limit, align 4
  %cmp1 = icmp slt i32 %5, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  %6 = load i8*, i8** %buffer, align 8
  %7 = bitcast i8* %6 to i8**
  %call = call i32 @backtrace(i8** %7, i32 1)
  br label %if.end.12

if.end:                                           ; preds = %if.else
  %8 = load i8*, i8** %buffer, align 8
  %9 = bitcast i8* %8 to i8**
  %10 = load i32, i32* %bounded_limit, align 4
  %add = add nsw i32 %10, 1
  %call3 = call i32 @backtrace(i8** %9, i32 %add)
  store i32 %call3, i32* %npointers, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %npointers, align 4
  %tobool5 = icmp ne i32 %11, 0
  br i1 %tobool5, label %if.then.6, label %if.end.12

if.then.6:                                        ; preds = %if.end.4
  %call7 = call i64 @emacs_write(i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i64 12)
  %12 = load i8*, i8** %buffer, align 8
  %13 = bitcast i8* %12 to i8**
  %14 = load i32, i32* %npointers, align 4
  call void @backtrace_symbols_fd(i8** %13, i32 %14, i32 2) #7
  %15 = load i32, i32* %bounded_limit, align 4
  %16 = load i32, i32* %npointers, align 4
  %cmp8 = icmp slt i32 %15, %16
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.then.6
  %call10 = call i64 @emacs_write(i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i64 4)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.then.6
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.2, %if.end.11, %if.end.4
  ret void
}

declare i32 @backtrace(i8**, i32) #2

; Function Attrs: nounwind uwtable
define i64 @emacs_write(i32 %fildes, i8* %buf, i64 %nbyte) #0 {
entry:
  %fildes.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %nbyte.addr = alloca i64, align 8
  store i32 %fildes, i32* %fildes.addr, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %nbyte, i64* %nbyte.addr, align 8
  %0 = load i32, i32* %fildes.addr, align 4
  %1 = load i8*, i8** %buf.addr, align 8
  %2 = load i64, i64* %nbyte.addr, align 8
  %call = call i64 @emacs_full_write(i32 %0, i8* %1, i64 %2, i1 zeroext false)
  ret i64 %call
}

; Function Attrs: nounwind
declare void @backtrace_symbols_fd(i8**, i32, i32) #1

; Function Attrs: noreturn
declare void @terminate_due_to_signal(i32, i32) #5

declare i32 @open(i8*, i32, ...) #2

declare void @process_quit_flag() #2

declare void @process_pending_signals() #2

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @emacs_fopen(i8* %file, i8* %mode) #0 {
entry:
  %file.addr = alloca i8*, align 8
  %mode.addr = alloca i8*, align 8
  %fd = alloca i32, align 4
  %omode = alloca i32, align 4
  %oflags = alloca i32, align 4
  %bflag = alloca i32, align 4
  %m = alloca i8*, align 8
  store i8* %file, i8** %file.addr, align 8
  store i8* %mode, i8** %mode.addr, align 8
  store i32 0, i32* %bflag, align 4
  %0 = load i8*, i8** %mode.addr, align 8
  store i8* %0, i8** %m, align 8
  %1 = load i8*, i8** %m, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** %m, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  switch i32 %conv, label %sw.default [
    i32 114, label %sw.bb
    i32 119, label %sw.bb.1
    i32 97, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %omode, align 4
  store i32 0, i32* %oflags, align 4
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  store i32 1, i32* %omode, align 4
  store i32 576, i32* %oflags, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  store i32 1, i32* %omode, align 4
  store i32 1088, i32* %oflags, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @emacs_abort() #13
  unreachable

sw.epilog:                                        ; preds = %sw.bb.2, %sw.bb.1, %sw.bb
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog.9, %sw.epilog
  %3 = load i8*, i8** %m, align 8
  %4 = load i8, i8* %3, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %m, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr3, i8** %m, align 8
  %6 = load i8, i8* %5, align 1
  %conv4 = sext i8 %6 to i32
  switch i32 %conv4, label %sw.default.8 [
    i32 43, label %sw.bb.5
    i32 98, label %sw.bb.6
    i32 116, label %sw.bb.7
  ]

sw.bb.5:                                          ; preds = %while.body
  store i32 2, i32* %omode, align 4
  br label %sw.epilog.9

sw.bb.6:                                          ; preds = %while.body
  store i32 0, i32* %bflag, align 4
  br label %sw.epilog.9

sw.bb.7:                                          ; preds = %while.body
  store i32 0, i32* %bflag, align 4
  br label %sw.epilog.9

sw.default.8:                                     ; preds = %while.body
  br label %sw.epilog.9

sw.epilog.9:                                      ; preds = %sw.default.8, %sw.bb.7, %sw.bb.6, %sw.bb.5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load i8*, i8** %file.addr, align 8
  %8 = load i32, i32* %omode, align 4
  %9 = load i32, i32* %oflags, align 4
  %or = or i32 %8, %9
  %10 = load i32, i32* %bflag, align 4
  %or10 = or i32 %or, %10
  %call = call i32 @emacs_open(i8* %7, i32 %or10, i32 438)
  store i32 %call, i32* %fd, align 4
  %11 = load i32, i32* %fd, align 4
  %cmp = icmp slt i32 %11, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end
  br label %cond.end

cond.false:                                       ; preds = %while.end
  %12 = load i32, i32* %fd, align 4
  %13 = load i8*, i8** %mode.addr, align 8
  %call12 = call %struct._IO_FILE* @fdopen(i32 %12, i8* %13) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._IO_FILE* [ null, %cond.true ], [ %call12, %cond.false ]
  ret %struct._IO_FILE* %cond
}

; Function Attrs: nounwind
declare %struct._IO_FILE* @fdopen(i32, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @emacs_pipe(i32* %fd) #0 {
entry:
  %fd.addr = alloca i32*, align 8
  %result = alloca i32, align 4
  store i32* %fd, i32** %fd.addr, align 8
  %0 = load i32*, i32** %fd.addr, align 8
  %call = call i32 @rpl_pipe2(i32* %0, i32 524288)
  store i32 %call, i32* %result, align 4
  %1 = load i32, i32* %result, align 4
  ret i32 %1
}

declare i32 @rpl_pipe2(i32*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @posix_close(i32 %fd, i32 %flag) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %flag.addr = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store i32 %flag, i32* %flag.addr, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %call = call i32 @close(i32 %0)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %call1 = call i32* @__errno_location() #11
  %1 = load i32, i32* %call1, align 4
  %cmp2 = icmp eq i32 %1, 4
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %cmp2, %lor.rhs ]
  %cond = select i1 %2, i32 0, i32 -1
  ret i32 %cond
}

declare i64 @read(i32, i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal i64 @emacs_full_write(i32 %fildes, i8* %buf, i64 %nbyte, i1 zeroext %process_signals) #0 {
entry:
  %fildes.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %nbyte.addr = alloca i64, align 8
  %process_signals.addr = alloca i8, align 1
  %bytes_written = alloca i64, align 8
  %n = alloca i64, align 8
  store i32 %fildes, i32* %fildes.addr, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %nbyte, i64* %nbyte.addr, align 8
  %frombool = zext i1 %process_signals to i8
  store i8 %frombool, i8* %process_signals.addr, align 1
  store i64 0, i64* %bytes_written, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.8, %if.end, %entry
  %0 = load i64, i64* %nbyte.addr, align 8
  %cmp = icmp sgt i64 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %fildes.addr, align 4
  %2 = load i8*, i8** %buf.addr, align 8
  %3 = load i64, i64* %nbyte.addr, align 8
  %cmp1 = icmp slt i64 %3, 2147221504
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %4 = load i64, i64* %nbyte.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %while.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ 2147221504, %cond.false ]
  %call = call i64 @write(i32 %1, i8* %2, i64 %cond)
  store i64 %call, i64* %n, align 8
  %5 = load i64, i64* %n, align 8
  %cmp2 = icmp slt i64 %5, 0
  br i1 %cmp2, label %if.then, label %if.end.8

if.then:                                          ; preds = %cond.end
  %call3 = call i32* @__errno_location() #11
  %6 = load i32, i32* %call3, align 4
  %cmp4 = icmp eq i32 %6, 4
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %7 = load i8, i8* %process_signals.addr, align 1
  %tobool = trunc i8 %7 to i1
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then.5
  %8 = load volatile i8, i8* @pending_signals, align 1
  %tobool6 = trunc i8 %8 to i1
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %land.lhs.true
  call void @process_pending_signals()
  br label %if.end

if.end:                                           ; preds = %if.then.7, %land.lhs.true, %if.then.5
  br label %while.cond

if.else:                                          ; preds = %if.then
  br label %while.end

if.end.8:                                         ; preds = %cond.end
  %9 = load i64, i64* %n, align 8
  %10 = load i8*, i8** %buf.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %9
  store i8* %add.ptr, i8** %buf.addr, align 8
  %11 = load i64, i64* %n, align 8
  %12 = load i64, i64* %nbyte.addr, align 8
  %sub = sub nsw i64 %12, %11
  store i64 %sub, i64* %nbyte.addr, align 8
  %13 = load i64, i64* %n, align 8
  %14 = load i64, i64* %bytes_written, align 8
  %add = add nsw i64 %14, %13
  store i64 %add, i64* %bytes_written, align 8
  br label %while.cond

while.end:                                        ; preds = %if.else, %while.cond
  %15 = load i64, i64* %bytes_written, align 8
  ret i64 %15
}

; Function Attrs: nounwind uwtable
define i64 @emacs_write_sig(i32 %fildes, i8* %buf, i64 %nbyte) #0 {
entry:
  %fildes.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %nbyte.addr = alloca i64, align 8
  store i32 %fildes, i32* %fildes.addr, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %nbyte, i64* %nbyte.addr, align 8
  %0 = load i32, i32* %fildes.addr, align 4
  %1 = load i8*, i8** %buf.addr, align 8
  %2 = load i64, i64* %nbyte.addr, align 8
  %call = call i64 @emacs_full_write(i32 %0, i8* %1, i64 %2, i1 zeroext true)
  ret i64 %call
}

; Function Attrs: nounwind
declare i8* @strerror(i32) #1

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #1

; Function Attrs: nounwind readnone uwtable
define { i64, i64 } @make_timeval(i64 %t.coerce0, i64 %t.coerce1) #9 {
entry:
  %retval = alloca %struct.timeval, align 8
  %t = alloca %struct.timespec, align 8
  %tv = alloca %struct.timeval, align 8
  %0 = bitcast %struct.timespec* %t to { i64, i64 }*
  %1 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %t.coerce0, i64* %1
  %2 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %t.coerce1, i64* %2
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %t, i32 0, i32 0
  %3 = load i64, i64* %tv_sec, align 8
  %tv_sec1 = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 0
  store i64 %3, i64* %tv_sec1, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %t, i32 0, i32 1
  %4 = load i64, i64* %tv_nsec, align 8
  %div = sdiv i64 %4, 1000
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 1
  store i64 %div, i64* %tv_usec, align 8
  %tv_nsec2 = getelementptr inbounds %struct.timespec, %struct.timespec* %t, i32 0, i32 1
  %5 = load i64, i64* %tv_nsec2, align 8
  %rem = srem i64 %5, 1000
  %cmp = icmp ne i64 %rem, 0
  br i1 %cmp, label %if.then, label %if.end.14

if.then:                                          ; preds = %entry
  %tv_usec3 = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 1
  %6 = load i64, i64* %tv_usec3, align 8
  %cmp4 = icmp slt i64 %6, 999999
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %tv_usec6 = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 1
  %7 = load i64, i64* %tv_usec6, align 8
  %inc = add nsw i64 %7, 1
  store i64 %inc, i64* %tv_usec6, align 8
  br label %if.end.13

if.else:                                          ; preds = %if.then
  %tv_sec7 = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 0
  %8 = load i64, i64* %tv_sec7, align 8
  %cmp8 = icmp slt i64 %8, 9223372036854775807
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.else
  %tv_sec10 = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 0
  %9 = load i64, i64* %tv_sec10, align 8
  %inc11 = add nsw i64 %9, 1
  store i64 %inc11, i64* %tv_sec10, align 8
  %tv_usec12 = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 1
  store i64 0, i64* %tv_usec12, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.else
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then.5
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %entry
  %10 = bitcast %struct.timeval* %retval to i8*
  %11 = bitcast %struct.timeval* %tv to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 16, i32 8, i1 false)
  %12 = bitcast %struct.timeval* %retval to { i64, i64 }*
  %13 = load { i64, i64 }, { i64, i64 }* %12, align 8
  ret { i64, i64 } %13
}

; Function Attrs: nounwind uwtable
define i32 @set_file_times(i32 %fd, i8* %filename, i64 %atime.coerce0, i64 %atime.coerce1, i64 %mtime.coerce0, i64 %mtime.coerce1) #0 {
entry:
  %atime = alloca %struct.timespec, align 8
  %mtime = alloca %struct.timespec, align 8
  %fd.addr = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %timespec = alloca [2 x %struct.timespec], align 16
  %0 = bitcast %struct.timespec* %atime to { i64, i64 }*
  %1 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %atime.coerce0, i64* %1
  %2 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %atime.coerce1, i64* %2
  %3 = bitcast %struct.timespec* %mtime to { i64, i64 }*
  %4 = getelementptr { i64, i64 }, { i64, i64 }* %3, i32 0, i32 0
  store i64 %mtime.coerce0, i64* %4
  %5 = getelementptr { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  store i64 %mtime.coerce1, i64* %5
  store i32 %fd, i32* %fd.addr, align 4
  store i8* %filename, i8** %filename.addr, align 8
  %arrayidx = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %timespec, i32 0, i64 0
  %6 = bitcast %struct.timespec* %arrayidx to i8*
  %7 = bitcast %struct.timespec* %atime to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 16, i32 8, i1 false)
  %arrayidx1 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %timespec, i32 0, i64 1
  %8 = bitcast %struct.timespec* %arrayidx1 to i8*
  %9 = bitcast %struct.timespec* %mtime to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 16, i32 8, i1 false)
  %10 = load i32, i32* %fd.addr, align 4
  %11 = load i8*, i8** %filename.addr, align 8
  %arraydecay = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %timespec, i32 0, i32 0
  %call = call i32 @fdutimens(i32 %10, i8* %11, %struct.timespec* %arraydecay)
  ret i32 %call
}

declare i32 @fdutimens(i32, i8*, %struct.timespec*) #2

; Function Attrs: nounwind readnone uwtable
define i8* @safe_strsignal(i32 %code) #9 {
entry:
  %code.addr = alloca i32, align 4
  %signame = alloca i8*, align 8
  store i32 %code, i32* %code.addr, align 4
  store i8* null, i8** %signame, align 8
  %0 = load i32, i32* %code.addr, align 4
  %cmp = icmp sle i32 0, %0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %code.addr, align 4
  %cmp1 = icmp slt i32 %1, 65
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32, i32* %code.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [65 x i8*], [65 x i8*]* @sys_siglist, i32 0, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8
  store i8* %3, i8** %signame, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %4 = load i8*, i8** %signame, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i8** %signame, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %5 = load i8*, i8** %signame, align 8
  ret i8* %5
}

; Function Attrs: nounwind uwtable
define i32 @serial_open(i64 %port) #0 {
entry:
  %port.addr = alloca i64, align 8
  %fd = alloca i32, align 4
  store i64 %port, i64* %port.addr, align 8
  %0 = load i64, i64* %port.addr, align 8
  %call = call i8* @SSDATA(i64 %0)
  %call1 = call i32 @emacs_open(i8* %call, i32 2306, i32 0)
  store i32 %call1, i32* %fd, align 4
  %1 = load i32, i32* %fd, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %port.addr, align 8
  call void @report_file_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), i64 %2) #13
  unreachable

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %fd, align 4
  %call2 = call i32 (i32, i64, ...) @ioctl(i32 %3, i64 21516, i8* null) #7
  %4 = load i32, i32* %fd, align 4
  ret i32 %4
}

; Function Attrs: noreturn
declare void @report_file_error(i8*, i64) #5

; Function Attrs: nounwind uwtable
define void @serial_configure(%struct.Lisp_Process* %p, i64 %contact) #0 {
entry:
  %p.addr = alloca %struct.Lisp_Process*, align 8
  %contact.addr = alloca i64, align 8
  %childp2 = alloca i64, align 8
  %tem = alloca i64, align 8
  %attr = alloca %struct.termios, align 4
  %err = alloca i32, align 4
  %summary = alloca [4 x i8], align 1
  store %struct.Lisp_Process* %p, %struct.Lisp_Process** %p.addr, align 8
  store i64 %contact, i64* %contact.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %childp2, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* %tem, align 8
  %0 = bitcast [4 x i8]* %summary to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @serial_configure.summary, i32 0, i32 0), i64 4, i32 1, i1 false)
  %1 = load %struct.Lisp_Process*, %struct.Lisp_Process** %p.addr, align 8
  %childp = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %1, i32 0, i32 8
  %2 = load i64, i64* %childp, align 8
  %call2 = call i64 @Fcopy_sequence(i64 %2)
  store i64 %call2, i64* %childp2, align 8
  %3 = load %struct.Lisp_Process*, %struct.Lisp_Process** %p.addr, align 8
  %outfd = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %3, i32 0, i32 22
  %4 = load i32, i32* %outfd, align 4
  %call3 = call i32 @tcgetattr(i32 %4, %struct.termios* %attr) #7
  store i32 %call3, i32* %err, align 4
  %5 = load i32, i32* %err, align 4
  %cmp = icmp ne i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  call void @report_file_error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i64 %call4) #13
  unreachable

if.end:                                           ; preds = %entry
  call void @cfmakeraw(%struct.termios* %attr) #7
  %c_cflag = getelementptr inbounds %struct.termios, %struct.termios* %attr, i32 0, i32 2
  %6 = load i32, i32* %c_cflag, align 4
  %or = or i32 %6, 2048
  store i32 %or, i32* %c_cflag, align 4
  %c_cflag5 = getelementptr inbounds %struct.termios, %struct.termios* %attr, i32 0, i32 2
  %7 = load i32, i32* %c_cflag5, align 4
  %or6 = or i32 %7, 128
  store i32 %or6, i32* %c_cflag5, align 4
  %8 = load i64, i64* %contact.addr, align 8
  %call7 = call i64 @builtin_lisp_symbol(i32 121)
  %call8 = call i64 @Fplist_member(i64 %8, i64 %call7)
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp10 = icmp eq i64 %call8, %call9
  br i1 %cmp10, label %if.else, label %if.then.11

if.then.11:                                       ; preds = %if.end
  %9 = load i64, i64* %contact.addr, align 8
  %call12 = call i64 @builtin_lisp_symbol(i32 121)
  %call13 = call i64 @Fplist_get(i64 %9, i64 %call12)
  store i64 %call13, i64* %tem, align 8
  br label %if.end.17

if.else:                                          ; preds = %if.end
  %10 = load %struct.Lisp_Process*, %struct.Lisp_Process** %p.addr, align 8
  %childp14 = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %10, i32 0, i32 8
  %11 = load i64, i64* %childp14, align 8
  %call15 = call i64 @builtin_lisp_symbol(i32 121)
  %call16 = call i64 @Fplist_get(i64 %11, i64 %call15)
  store i64 %call16, i64* %tem, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.11
  %12 = load i64, i64* %tem, align 8
  %and = and i64 %12, 7
  %conv = trunc i64 %and to i32
  %and18 = and i32 %conv, -5
  %cmp19 = icmp eq i32 %and18, 2
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.17
  br label %cond.end

cond.false:                                       ; preds = %if.end.17
  %call21 = call i64 @builtin_lisp_symbol(i32 559)
  %13 = load i64, i64* %tem, align 8
  %14 = call i64 @wrong_type_argument(i64 %call21, i64 %13) #13
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %15, %cond.true
  %16 = load i64, i64* %tem, align 8
  %shr = ashr i64 %16, 2
  %conv22 = trunc i64 %shr to i32
  %call23 = call i32 @cfsetspeed(%struct.termios* %attr, i32 %conv22) #7
  store i32 %call23, i32* %err, align 4
  %17 = load i32, i32* %err, align 4
  %cmp24 = icmp ne i32 %17, 0
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %cond.end
  %18 = load i64, i64* %tem, align 8
  call void @report_file_error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i64 %18) #13
  unreachable

if.end.27:                                        ; preds = %cond.end
  %19 = load i64, i64* %childp2, align 8
  %call28 = call i64 @builtin_lisp_symbol(i32 121)
  %20 = load i64, i64* %tem, align 8
  %call29 = call i64 @Fplist_put(i64 %19, i64 %call28, i64 %20)
  store i64 %call29, i64* %childp2, align 8
  %21 = load i64, i64* %contact.addr, align 8
  %call30 = call i64 @builtin_lisp_symbol(i32 18)
  %call31 = call i64 @Fplist_member(i64 %21, i64 %call30)
  %call32 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp33 = icmp eq i64 %call31, %call32
  br i1 %cmp33, label %if.else.38, label %if.then.35

if.then.35:                                       ; preds = %if.end.27
  %22 = load i64, i64* %contact.addr, align 8
  %call36 = call i64 @builtin_lisp_symbol(i32 18)
  %call37 = call i64 @Fplist_get(i64 %22, i64 %call36)
  store i64 %call37, i64* %tem, align 8
  br label %if.end.42

if.else.38:                                       ; preds = %if.end.27
  %23 = load %struct.Lisp_Process*, %struct.Lisp_Process** %p.addr, align 8
  %childp39 = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %23, i32 0, i32 8
  %24 = load i64, i64* %childp39, align 8
  %call40 = call i64 @builtin_lisp_symbol(i32 18)
  %call41 = call i64 @Fplist_get(i64 %24, i64 %call40)
  store i64 %call41, i64* %tem, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.38, %if.then.35
  %25 = load i64, i64* %tem, align 8
  %call43 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp44 = icmp eq i64 %25, %call43
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.42
  store i64 34, i64* %tem, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %if.end.42
  %26 = load i64, i64* %tem, align 8
  %and48 = and i64 %26, 7
  %conv49 = trunc i64 %and48 to i32
  %and50 = and i32 %conv49, -5
  %cmp51 = icmp eq i32 %and50, 2
  br i1 %cmp51, label %cond.true.53, label %cond.false.54

cond.true.53:                                     ; preds = %if.end.47
  br label %cond.end.56

cond.false.54:                                    ; preds = %if.end.47
  %call55 = call i64 @builtin_lisp_symbol(i32 559)
  %27 = load i64, i64* %tem, align 8
  %28 = call i64 @wrong_type_argument(i64 %call55, i64 %27) #13
  unreachable
                                                  ; No predecessors!
  br label %cond.end.56

cond.end.56:                                      ; preds = %29, %cond.true.53
  %30 = load i64, i64* %tem, align 8
  %shr57 = ashr i64 %30, 2
  %cmp58 = icmp ne i64 %shr57, 7
  br i1 %cmp58, label %land.lhs.true, label %if.end.64

land.lhs.true:                                    ; preds = %cond.end.56
  %31 = load i64, i64* %tem, align 8
  %shr60 = ashr i64 %31, 2
  %cmp61 = icmp ne i64 %shr60, 8
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %land.lhs.true
  call void (i8*, ...) @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i32 0, i32 0)) #13
  unreachable

if.end.64:                                        ; preds = %land.lhs.true, %cond.end.56
  %32 = load i64, i64* %tem, align 8
  %shr65 = ashr i64 %32, 2
  %add = add nsw i64 %shr65, 48
  %conv66 = trunc i64 %add to i8
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %summary, i32 0, i64 0
  store i8 %conv66, i8* %arrayidx, align 1
  %c_cflag67 = getelementptr inbounds %struct.termios, %struct.termios* %attr, i32 0, i32 2
  %33 = load i32, i32* %c_cflag67, align 4
  %and68 = and i32 %33, -49
  store i32 %and68, i32* %c_cflag67, align 4
  %34 = load i64, i64* %tem, align 8
  %shr69 = ashr i64 %34, 2
  %cmp70 = icmp eq i64 %shr69, 7
  %cond = select i1 %cmp70, i32 32, i32 48
  %c_cflag72 = getelementptr inbounds %struct.termios, %struct.termios* %attr, i32 0, i32 2
  %35 = load i32, i32* %c_cflag72, align 4
  %or73 = or i32 %35, %cond
  store i32 %or73, i32* %c_cflag72, align 4
  %36 = load i64, i64* %childp2, align 8
  %call74 = call i64 @builtin_lisp_symbol(i32 18)
  %37 = load i64, i64* %tem, align 8
  %call75 = call i64 @Fplist_put(i64 %36, i64 %call74, i64 %37)
  store i64 %call75, i64* %childp2, align 8
  %38 = load i64, i64* %contact.addr, align 8
  %call76 = call i64 @builtin_lisp_symbol(i32 91)
  %call77 = call i64 @Fplist_member(i64 %38, i64 %call76)
  %call78 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp79 = icmp eq i64 %call77, %call78
  br i1 %cmp79, label %if.else.84, label %if.then.81

if.then.81:                                       ; preds = %if.end.64
  %39 = load i64, i64* %contact.addr, align 8
  %call82 = call i64 @builtin_lisp_symbol(i32 91)
  %call83 = call i64 @Fplist_get(i64 %39, i64 %call82)
  store i64 %call83, i64* %tem, align 8
  br label %if.end.88

if.else.84:                                       ; preds = %if.end.64
  %40 = load %struct.Lisp_Process*, %struct.Lisp_Process** %p.addr, align 8
  %childp85 = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %40, i32 0, i32 8
  %41 = load i64, i64* %childp85, align 8
  %call86 = call i64 @builtin_lisp_symbol(i32 91)
  %call87 = call i64 @Fplist_get(i64 %41, i64 %call86)
  store i64 %call87, i64* %tem, align 8
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.84, %if.then.81
  %42 = load i64, i64* %tem, align 8
  %call89 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp90 = icmp eq i64 %42, %call89
  br i1 %cmp90, label %if.end.101, label %land.lhs.true.92

land.lhs.true.92:                                 ; preds = %if.end.88
  %43 = load i64, i64* %tem, align 8
  %call93 = call i64 @builtin_lisp_symbol(i32 381)
  %cmp94 = icmp eq i64 %43, %call93
  br i1 %cmp94, label %if.end.101, label %land.lhs.true.96

land.lhs.true.96:                                 ; preds = %land.lhs.true.92
  %44 = load i64, i64* %tem, align 8
  %call97 = call i64 @builtin_lisp_symbol(i32 714)
  %cmp98 = icmp eq i64 %44, %call97
  br i1 %cmp98, label %if.end.101, label %if.then.100

if.then.100:                                      ; preds = %land.lhs.true.96
  call void (i8*, ...) @error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.17, i32 0, i32 0)) #13
  unreachable

if.end.101:                                       ; preds = %land.lhs.true.96, %land.lhs.true.92, %if.end.88
  %c_cflag102 = getelementptr inbounds %struct.termios, %struct.termios* %attr, i32 0, i32 2
  %45 = load i32, i32* %c_cflag102, align 4
  %and103 = and i32 %45, -769
  store i32 %and103, i32* %c_cflag102, align 4
  %c_iflag = getelementptr inbounds %struct.termios, %struct.termios* %attr, i32 0, i32 0
  %46 = load i32, i32* %c_iflag, align 4
  %and104 = and i32 %46, -21
  store i32 %and104, i32* %c_iflag, align 4
  %47 = load i64, i64* %tem, align 8
  %call105 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp106 = icmp eq i64 %47, %call105
  br i1 %cmp106, label %if.then.108, label %if.else.110

if.then.108:                                      ; preds = %if.end.101
  %arrayidx109 = getelementptr inbounds [4 x i8], [4 x i8]* %summary, i32 0, i64 1
  store i8 78, i8* %arrayidx109, align 1
  br label %if.end.132

if.else.110:                                      ; preds = %if.end.101
  %48 = load i64, i64* %tem, align 8
  %call111 = call i64 @builtin_lisp_symbol(i32 381)
  %cmp112 = icmp eq i64 %48, %call111
  br i1 %cmp112, label %if.then.114, label %if.else.120

if.then.114:                                      ; preds = %if.else.110
  %arrayidx115 = getelementptr inbounds [4 x i8], [4 x i8]* %summary, i32 0, i64 1
  store i8 69, i8* %arrayidx115, align 1
  %c_cflag116 = getelementptr inbounds %struct.termios, %struct.termios* %attr, i32 0, i32 2
  %49 = load i32, i32* %c_cflag116, align 4
  %or117 = or i32 %49, 256
  store i32 %or117, i32* %c_cflag116, align 4
  %c_iflag118 = getelementptr inbounds %struct.termios, %struct.termios* %attr, i32 0, i32 0
  %50 = load i32, i32* %c_iflag118, align 4
  %or119 = or i32 %50, 20
  store i32 %or119, i32* %c_iflag118, align 4
  br label %if.end.131

if.else.120:                                      ; preds = %if.else.110
  %51 = load i64, i64* %tem, align 8
  %call121 = call i64 @builtin_lisp_symbol(i32 714)
  %cmp122 = icmp eq i64 %51, %call121
  br i1 %cmp122, label %if.then.124, label %if.end.130

if.then.124:                                      ; preds = %if.else.120
  %arrayidx125 = getelementptr inbounds [4 x i8], [4 x i8]* %summary, i32 0, i64 1
  store i8 79, i8* %arrayidx125, align 1
  %c_cflag126 = getelementptr inbounds %struct.termios, %struct.termios* %attr, i32 0, i32 2
  %52 = load i32, i32* %c_cflag126, align 4
  %or127 = or i32 %52, 768
  store i32 %or127, i32* %c_cflag126, align 4
  %c_iflag128 = getelementptr inbounds %struct.termios, %struct.termios* %attr, i32 0, i32 0
  %53 = load i32, i32* %c_iflag128, align 4
  %or129 = or i32 %53, 20
  store i32 %or129, i32* %c_iflag128, align 4
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.124, %if.else.120
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %if.then.114
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %if.then.108
  %54 = load i64, i64* %childp2, align 8
  %call133 = call i64 @builtin_lisp_symbol(i32 91)
  %55 = load i64, i64* %tem, align 8
  %call134 = call i64 @Fplist_put(i64 %54, i64 %call133, i64 %55)
  store i64 %call134, i64* %childp2, align 8
  %56 = load i64, i64* %contact.addr, align 8
  %call135 = call i64 @builtin_lisp_symbol(i32 125)
  %call136 = call i64 @Fplist_member(i64 %56, i64 %call135)
  %call137 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp138 = icmp eq i64 %call136, %call137
  br i1 %cmp138, label %if.else.143, label %if.then.140

if.then.140:                                      ; preds = %if.end.132
  %57 = load i64, i64* %contact.addr, align 8
  %call141 = call i64 @builtin_lisp_symbol(i32 125)
  %call142 = call i64 @Fplist_get(i64 %57, i64 %call141)
  store i64 %call142, i64* %tem, align 8
  br label %if.end.147

if.else.143:                                      ; preds = %if.end.132
  %58 = load %struct.Lisp_Process*, %struct.Lisp_Process** %p.addr, align 8
  %childp144 = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %58, i32 0, i32 8
  %59 = load i64, i64* %childp144, align 8
  %call145 = call i64 @builtin_lisp_symbol(i32 125)
  %call146 = call i64 @Fplist_get(i64 %59, i64 %call145)
  store i64 %call146, i64* %tem, align 8
  br label %if.end.147

if.end.147:                                       ; preds = %if.else.143, %if.then.140
  %60 = load i64, i64* %tem, align 8
  %call148 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp149 = icmp eq i64 %60, %call148
  br i1 %cmp149, label %if.then.151, label %if.end.152

if.then.151:                                      ; preds = %if.end.147
  store i64 6, i64* %tem, align 8
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.151, %if.end.147
  %61 = load i64, i64* %tem, align 8
  %and153 = and i64 %61, 7
  %conv154 = trunc i64 %and153 to i32
  %and155 = and i32 %conv154, -5
  %cmp156 = icmp eq i32 %and155, 2
  br i1 %cmp156, label %cond.true.158, label %cond.false.159

cond.true.158:                                    ; preds = %if.end.152
  br label %cond.end.161

cond.false.159:                                   ; preds = %if.end.152
  %call160 = call i64 @builtin_lisp_symbol(i32 559)
  %62 = load i64, i64* %tem, align 8
  %63 = call i64 @wrong_type_argument(i64 %call160, i64 %62) #13
  unreachable
                                                  ; No predecessors!
  br label %cond.end.161

cond.end.161:                                     ; preds = %64, %cond.true.158
  %65 = load i64, i64* %tem, align 8
  %shr162 = ashr i64 %65, 2
  %cmp163 = icmp ne i64 %shr162, 1
  br i1 %cmp163, label %land.lhs.true.165, label %if.end.170

land.lhs.true.165:                                ; preds = %cond.end.161
  %66 = load i64, i64* %tem, align 8
  %shr166 = ashr i64 %66, 2
  %cmp167 = icmp ne i64 %shr166, 2
  br i1 %cmp167, label %if.then.169, label %if.end.170

if.then.169:                                      ; preds = %land.lhs.true.165
  call void (i8*, ...) @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.18, i32 0, i32 0)) #13
  unreachable

if.end.170:                                       ; preds = %land.lhs.true.165, %cond.end.161
  %67 = load i64, i64* %tem, align 8
  %shr171 = ashr i64 %67, 2
  %add172 = add nsw i64 %shr171, 48
  %conv173 = trunc i64 %add172 to i8
  %arrayidx174 = getelementptr inbounds [4 x i8], [4 x i8]* %summary, i32 0, i64 2
  store i8 %conv173, i8* %arrayidx174, align 1
  %c_cflag175 = getelementptr inbounds %struct.termios, %struct.termios* %attr, i32 0, i32 2
  %68 = load i32, i32* %c_cflag175, align 4
  %and176 = and i32 %68, -65
  store i32 %and176, i32* %c_cflag175, align 4
  %69 = load i64, i64* %tem, align 8
  %shr177 = ashr i64 %69, 2
  %cmp178 = icmp eq i64 %shr177, 2
  br i1 %cmp178, label %if.then.180, label %if.end.183

if.then.180:                                      ; preds = %if.end.170
  %c_cflag181 = getelementptr inbounds %struct.termios, %struct.termios* %attr, i32 0, i32 2
  %70 = load i32, i32* %c_cflag181, align 4
  %or182 = or i32 %70, 64
  store i32 %or182, i32* %c_cflag181, align 4
  br label %if.end.183

if.end.183:                                       ; preds = %if.then.180, %if.end.170
  %71 = load i64, i64* %childp2, align 8
  %call184 = call i64 @builtin_lisp_symbol(i32 125)
  %72 = load i64, i64* %tem, align 8
  %call185 = call i64 @Fplist_put(i64 %71, i64 %call184, i64 %72)
  store i64 %call185, i64* %childp2, align 8
  %73 = load i64, i64* %contact.addr, align 8
  %call186 = call i64 @builtin_lisp_symbol(i32 43)
  %call187 = call i64 @Fplist_member(i64 %73, i64 %call186)
  %call188 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp189 = icmp eq i64 %call187, %call188
  br i1 %cmp189, label %if.else.194, label %if.then.191

if.then.191:                                      ; preds = %if.end.183
  %74 = load i64, i64* %contact.addr, align 8
  %call192 = call i64 @builtin_lisp_symbol(i32 43)
  %call193 = call i64 @Fplist_get(i64 %74, i64 %call192)
  store i64 %call193, i64* %tem, align 8
  br label %if.end.198

if.else.194:                                      ; preds = %if.end.183
  %75 = load %struct.Lisp_Process*, %struct.Lisp_Process** %p.addr, align 8
  %childp195 = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %75, i32 0, i32 8
  %76 = load i64, i64* %childp195, align 8
  %call196 = call i64 @builtin_lisp_symbol(i32 43)
  %call197 = call i64 @Fplist_get(i64 %76, i64 %call196)
  store i64 %call197, i64* %tem, align 8
  br label %if.end.198

if.end.198:                                       ; preds = %if.else.194, %if.then.191
  %77 = load i64, i64* %tem, align 8
  %call199 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp200 = icmp eq i64 %77, %call199
  br i1 %cmp200, label %if.end.211, label %land.lhs.true.202

land.lhs.true.202:                                ; preds = %if.end.198
  %78 = load i64, i64* %tem, align 8
  %call203 = call i64 @builtin_lisp_symbol(i32 526)
  %cmp204 = icmp eq i64 %78, %call203
  br i1 %cmp204, label %if.end.211, label %land.lhs.true.206

land.lhs.true.206:                                ; preds = %land.lhs.true.202
  %79 = load i64, i64* %tem, align 8
  %call207 = call i64 @builtin_lisp_symbol(i32 894)
  %cmp208 = icmp eq i64 %79, %call207
  br i1 %cmp208, label %if.end.211, label %if.then.210

if.then.210:                                      ; preds = %land.lhs.true.206
  call void (i8*, ...) @error(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.19, i32 0, i32 0)) #13
  unreachable

if.end.211:                                       ; preds = %land.lhs.true.206, %land.lhs.true.202, %if.end.198
  %c_cflag212 = getelementptr inbounds %struct.termios, %struct.termios* %attr, i32 0, i32 2
  %80 = load i32, i32* %c_cflag212, align 4
  %and213 = and i32 %80, 2147483647
  store i32 %and213, i32* %c_cflag212, align 4
  %c_iflag214 = getelementptr inbounds %struct.termios, %struct.termios* %attr, i32 0, i32 0
  %81 = load i32, i32* %c_iflag214, align 4
  %and215 = and i32 %81, -5121
  store i32 %and215, i32* %c_iflag214, align 4
  %82 = load i64, i64* %tem, align 8
  %call216 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp217 = icmp eq i64 %82, %call216
  br i1 %cmp217, label %if.then.219, label %if.else.220

if.then.219:                                      ; preds = %if.end.211
  br label %if.end.236

if.else.220:                                      ; preds = %if.end.211
  %83 = load i64, i64* %tem, align 8
  %call221 = call i64 @builtin_lisp_symbol(i32 526)
  %cmp222 = icmp eq i64 %83, %call221
  br i1 %cmp222, label %if.then.224, label %if.else.227

if.then.224:                                      ; preds = %if.else.220
  %c_cflag225 = getelementptr inbounds %struct.termios, %struct.termios* %attr, i32 0, i32 2
  %84 = load i32, i32* %c_cflag225, align 4
  %or226 = or i32 %84, -2147483648
  store i32 %or226, i32* %c_cflag225, align 4
  br label %if.end.235

if.else.227:                                      ; preds = %if.else.220
  %85 = load i64, i64* %tem, align 8
  %call228 = call i64 @builtin_lisp_symbol(i32 894)
  %cmp229 = icmp eq i64 %85, %call228
  br i1 %cmp229, label %if.then.231, label %if.end.234

if.then.231:                                      ; preds = %if.else.227
  %c_iflag232 = getelementptr inbounds %struct.termios, %struct.termios* %attr, i32 0, i32 0
  %86 = load i32, i32* %c_iflag232, align 4
  %or233 = or i32 %86, 5120
  store i32 %or233, i32* %c_iflag232, align 4
  br label %if.end.234

if.end.234:                                       ; preds = %if.then.231, %if.else.227
  br label %if.end.235

if.end.235:                                       ; preds = %if.end.234, %if.then.224
  br label %if.end.236

if.end.236:                                       ; preds = %if.end.235, %if.then.219
  %87 = load i64, i64* %childp2, align 8
  %call237 = call i64 @builtin_lisp_symbol(i32 43)
  %88 = load i64, i64* %tem, align 8
  %call238 = call i64 @Fplist_put(i64 %87, i64 %call237, i64 %88)
  store i64 %call238, i64* %childp2, align 8
  %89 = load %struct.Lisp_Process*, %struct.Lisp_Process** %p.addr, align 8
  %outfd239 = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %89, i32 0, i32 22
  %90 = load i32, i32* %outfd239, align 4
  %call240 = call i32 @tcsetattr(i32 %90, i32 0, %struct.termios* %attr) #7
  store i32 %call240, i32* %err, align 4
  %91 = load i32, i32* %err, align 4
  %cmp241 = icmp ne i32 %91, 0
  br i1 %cmp241, label %if.then.243, label %if.end.245

if.then.243:                                      ; preds = %if.end.236
  %call244 = call i64 @builtin_lisp_symbol(i32 0)
  call void @report_file_error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i64 %call244) #13
  unreachable

if.end.245:                                       ; preds = %if.end.236
  %92 = load i64, i64* %childp2, align 8
  %call246 = call i64 @builtin_lisp_symbol(i32 128)
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %summary, i32 0, i32 0
  %call247 = call i64 @build_string(i8* %arraydecay)
  %call248 = call i64 @Fplist_put(i64 %92, i64 %call246, i64 %call247)
  store i64 %call248, i64* %childp2, align 8
  %93 = load %struct.Lisp_Process*, %struct.Lisp_Process** %p.addr, align 8
  %94 = load i64, i64* %childp2, align 8
  call void @pset_childp(%struct.Lisp_Process* %93, i64 %94)
  ret void
}

declare i64 @Fcopy_sequence(i64) #2

; Function Attrs: nounwind
declare void @cfmakeraw(%struct.termios*) #1

declare i64 @Fplist_member(i64, i64) #2

declare i64 @Fplist_get(i64, i64) #2

; Function Attrs: noreturn
declare i64 @wrong_type_argument(i64, i64) #5

; Function Attrs: nounwind
declare i32 @cfsetspeed(%struct.termios*, i32) #1

declare i64 @Fplist_put(i64, i64, i64) #2

declare void @pset_childp(%struct.Lisp_Process*, i64) #2

; Function Attrs: nounwind uwtable
define i64 @list_system_processes() #0 {
entry:
  %procdir = alloca i64, align 8
  %match = alloca i64, align 8
  %proclist = alloca i64, align 8
  %next = alloca i64, align 8
  %tail = alloca i64, align 8
  %call = call i64 @build_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0))
  store i64 %call, i64* %procdir, align 8
  %call1 = call i64 @build_string(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0))
  store i64 %call1, i64* %match, align 8
  %0 = load i64, i64* %procdir, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %1 = load i64, i64* %match, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 901)
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %call5 = call i64 @directory_files_internal(i64 %0, i64 %call2, i64 %1, i64 %call3, i1 zeroext false, i64 %call4)
  store i64 %call5, i64* %proclist, align 8
  %2 = load i64, i64* %proclist, align 8
  store i64 %2, i64* %tail, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i64, i64* %tail, align 8
  %and = and i64 %3, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %tail, align 8
  %sub = sub nsw i64 %4, 3
  %5 = inttoptr i64 %sub to i8*
  %6 = bitcast i8* %5 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %6, i32 0, i32 1
  %cdr = bitcast %union.anon.20* %u to i64*
  %7 = load i64, i64* %cdr, align 8
  store i64 %7, i64* %next, align 8
  %8 = load i64, i64* %tail, align 8
  %9 = load i64, i64* %tail, align 8
  %sub7 = sub nsw i64 %9, 3
  %10 = inttoptr i64 %sub7 to i8*
  %11 = bitcast i8* %10 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %11, i32 0, i32 0
  %12 = load i64, i64* %car, align 8
  %call8 = call i64 @builtin_lisp_symbol(i32 0)
  %call9 = call i64 @Fstring_to_number(i64 %12, i64 %call8)
  call void @XSETCAR(i64 %8, i64 %call9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i64, i64* %next, align 8
  store i64 %13, i64* %tail, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i64, i64* %proclist, align 8
  %call10 = call i64 @Fnreverse(i64 %14)
  store i64 %call10, i64* %proclist, align 8
  %15 = load i64, i64* %proclist, align 8
  ret i64 %15
}

declare i64 @directory_files_internal(i64, i64, i64, i64, i1 zeroext, i64) #2

declare void @XSETCAR(i64, i64) #2

declare i64 @Fstring_to_number(i64, i64) #2

declare i64 @Fnreverse(i64) #2

; Function Attrs: nounwind uwtable
define i64 @system_process_attributes(i64 %pid) #0 {
entry:
  %retval = alloca i64, align 8
  %pid.addr = alloca i64, align 8
  %procfn = alloca [4096 x i8], align 16
  %fn = alloca [4096 x i8], align 16
  %st = alloca %struct.stat, align 8
  %pw = alloca %struct.passwd*, align 8
  %gr = alloca %struct.group*, align 8
  %clocks_per_sec = alloca i64, align 8
  %procfn_end = alloca i8*, align 8
  %procbuf = alloca [1025 x i8], align 16
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %fd = alloca i32, align 4
  %nread = alloca i64, align 8
  %cmd = alloca i8*, align 8
  %cmdsize = alloca i32, align 4
  %cmdline = alloca i8*, align 8
  %cmdline_size = alloca i64, align 8
  %c = alloca i8, align 1
  %proc_id = alloca i64, align 8
  %ppid = alloca i32, align 4
  %pgrp = alloca i32, align 4
  %sess = alloca i32, align 4
  %tty = alloca i32, align 4
  %tpgid = alloca i32, align 4
  %thcount = alloca i32, align 4
  %uid = alloca i32, align 4
  %gid = alloca i32, align 4
  %u_time = alloca i64, align 8
  %s_time = alloca i64, align 8
  %cutime = alloca i64, align 8
  %cstime = alloca i64, align 8
  %start = alloca i64, align 8
  %priority = alloca i64, align 8
  %niceness = alloca i64, align 8
  %rss = alloca i64, align 8
  %minflt = alloca i64, align 8
  %majflt = alloca i64, align 8
  %cminflt = alloca i64, align 8
  %cmajflt = alloca i64, align 8
  %vsize = alloca i64, align 8
  %tnow = alloca %struct.timespec, align 8
  %tstart = alloca %struct.timespec, align 8
  %tboot = alloca %struct.timespec, align 8
  %telapsed = alloca %struct.timespec, align 8
  %us_time = alloca %struct.timespec, align 8
  %pcpu = alloca double, align 8
  %pmem = alloca double, align 8
  %attrs = alloca i64, align 8
  %cmd_str = alloca i64, align 8
  %decoded_cmd = alloca i64, align 8
  %count = alloca i64, align 8
  %state_str = alloca [2 x i8], align 1
  %coerce = alloca %struct.timespec, align 8
  %coerce341 = alloca %struct.timespec, align 8
  %coerce343 = alloca %struct.timespec, align 8
  %coerce345 = alloca %struct.timespec, align 8
  %coerce347 = alloca %struct.timespec, align 8
  %coerce399 = alloca %struct.timespec, align 8
  %coerce406 = alloca %struct.timespec, align 8
  %readsize = alloca i64, align 8
  %nread_incr = alloca i64, align 8
  %c465 = alloca i8, align 1
  store i64 %pid, i64* %pid.addr, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @system_process_attributes.default_cmd, i32 0, i32 0), i8** %cmd, align 8
  store i32 3, i32* %cmdsize, align 4
  store i8* null, i8** %cmdline, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %attrs, align 8
  %0 = load i64, i64* %pid.addr, align 8
  call void @CHECK_NUMBER_OR_FLOAT(i64 %0)
  %1 = load i64, i64* %pid.addr, align 8
  %call1 = call i64 @cons_to_signed(i64 %1, i64 -2147483648, i64 2147483647)
  store i64 %call1, i64* %proc_id, align 8
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %procfn, i32 0, i32 0
  %2 = load i64, i64* %proc_id, align 8
  %call2 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i64 %2) #7
  %arraydecay3 = getelementptr inbounds [4096 x i8], [4096 x i8]* %procfn, i32 0, i32 0
  %call4 = call i32 @stat(i8* %arraydecay3, %struct.stat* %st) #7
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %attrs, align 8
  store i64 %3, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %st_uid = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 4
  %4 = load i32, i32* %st_uid, align 4
  store i32 %4, i32* %uid, align 4
  %call5 = call i64 @builtin_lisp_symbol(i32 377)
  %5 = load i32, i32* %uid, align 4
  %cmp6 = icmp ule i32 0, %5
  br i1 %cmp6, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load i32, i32* %uid, align 4
  %conv = zext i32 %6 to i64
  %cmp7 = icmp sle i64 -2305843009213693952, %conv
  br i1 %cmp7, label %land.lhs.true, label %cond.true

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end
  %7 = load i32, i32* %uid, align 4
  %conv9 = zext i32 %7 to i64
  %cmp10 = icmp sle i64 %conv9, 2305843009213693951
  br i1 %cmp10, label %cond.false, label %cond.true

cond.true:                                        ; preds = %land.lhs.true, %lor.lhs.false
  %8 = load i32, i32* %uid, align 4
  %conv12 = uitofp i32 %8 to double
  %call13 = call i64 @make_float(double %conv12)
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true
  %9 = load i32, i32* %uid, align 4
  %conv14 = zext i32 %9 to i64
  %shl = shl i64 %conv14, 2
  %add = add i64 %shl, 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call13, %cond.true ], [ %add, %cond.false ]
  %call15 = call i64 @Fcons(i64 %call5, i64 %cond)
  %10 = load i64, i64* %attrs, align 8
  %call16 = call i64 @Fcons(i64 %call15, i64 %10)
  store i64 %call16, i64* %attrs, align 8
  call void @block_input()
  %11 = load i32, i32* %uid, align 4
  %call17 = call %struct.passwd* @getpwuid(i32 %11)
  store %struct.passwd* %call17, %struct.passwd** %pw, align 8
  call void @unblock_input()
  %12 = load %struct.passwd*, %struct.passwd** %pw, align 8
  %tobool = icmp ne %struct.passwd* %12, null
  br i1 %tobool, label %if.then.18, label %if.end.23

if.then.18:                                       ; preds = %cond.end
  %call19 = call i64 @builtin_lisp_symbol(i32 980)
  %13 = load %struct.passwd*, %struct.passwd** %pw, align 8
  %pw_name = getelementptr inbounds %struct.passwd, %struct.passwd* %13, i32 0, i32 0
  %14 = load i8*, i8** %pw_name, align 8
  %call20 = call i64 @build_string(i8* %14)
  %call21 = call i64 @Fcons(i64 %call19, i64 %call20)
  %15 = load i64, i64* %attrs, align 8
  %call22 = call i64 @Fcons(i64 %call21, i64 %15)
  store i64 %call22, i64* %attrs, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.18, %cond.end
  %st_gid = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 5
  %16 = load i32, i32* %st_gid, align 4
  store i32 %16, i32* %gid, align 4
  %call24 = call i64 @builtin_lisp_symbol(i32 358)
  %17 = load i32, i32* %gid, align 4
  %cmp25 = icmp ule i32 0, %17
  br i1 %cmp25, label %land.lhs.true.31, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %if.end.23
  %18 = load i32, i32* %gid, align 4
  %conv28 = zext i32 %18 to i64
  %cmp29 = icmp sle i64 -2305843009213693952, %conv28
  br i1 %cmp29, label %land.lhs.true.31, label %cond.true.35

land.lhs.true.31:                                 ; preds = %lor.lhs.false.27, %if.end.23
  %19 = load i32, i32* %gid, align 4
  %conv32 = zext i32 %19 to i64
  %cmp33 = icmp sle i64 %conv32, 2305843009213693951
  br i1 %cmp33, label %cond.false.38, label %cond.true.35

cond.true.35:                                     ; preds = %land.lhs.true.31, %lor.lhs.false.27
  %20 = load i32, i32* %gid, align 4
  %conv36 = uitofp i32 %20 to double
  %call37 = call i64 @make_float(double %conv36)
  br label %cond.end.42

cond.false.38:                                    ; preds = %land.lhs.true.31
  %21 = load i32, i32* %gid, align 4
  %conv39 = zext i32 %21 to i64
  %shl40 = shl i64 %conv39, 2
  %add41 = add i64 %shl40, 2
  br label %cond.end.42

cond.end.42:                                      ; preds = %cond.false.38, %cond.true.35
  %cond43 = phi i64 [ %call37, %cond.true.35 ], [ %add41, %cond.false.38 ]
  %call44 = call i64 @Fcons(i64 %call24, i64 %cond43)
  %22 = load i64, i64* %attrs, align 8
  %call45 = call i64 @Fcons(i64 %call44, i64 %22)
  store i64 %call45, i64* %attrs, align 8
  call void @block_input()
  %23 = load i32, i32* %gid, align 4
  %call46 = call %struct.group* @getgrgid(i32 %23)
  store %struct.group* %call46, %struct.group** %gr, align 8
  call void @unblock_input()
  %24 = load %struct.group*, %struct.group** %gr, align 8
  %tobool47 = icmp ne %struct.group* %24, null
  br i1 %tobool47, label %if.then.48, label %if.end.53

if.then.48:                                       ; preds = %cond.end.42
  %call49 = call i64 @builtin_lisp_symbol(i32 501)
  %25 = load %struct.group*, %struct.group** %gr, align 8
  %gr_name = getelementptr inbounds %struct.group, %struct.group* %25, i32 0, i32 0
  %26 = load i8*, i8** %gr_name, align 8
  %call50 = call i64 @build_string(i8* %26)
  %call51 = call i64 @Fcons(i64 %call49, i64 %call50)
  %27 = load i64, i64* %attrs, align 8
  %call52 = call i64 @Fcons(i64 %call51, i64 %27)
  store i64 %call52, i64* %attrs, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.48, %cond.end.42
  %call54 = call i64 @SPECPDL_INDEX()
  store i64 %call54, i64* %count, align 8
  %arraydecay55 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fn, i32 0, i32 0
  %arraydecay56 = getelementptr inbounds [4096 x i8], [4096 x i8]* %procfn, i32 0, i32 0
  %call57 = call i8* @strcpy(i8* %arraydecay55, i8* %arraydecay56) #7
  %arraydecay58 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fn, i32 0, i32 0
  %arraydecay59 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fn, i32 0, i32 0
  %call60 = call i64 @strlen(i8* %arraydecay59) #12
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay58, i64 %call60
  store i8* %add.ptr, i8** %procfn_end, align 8
  %28 = load i8*, i8** %procfn_end, align 8
  %call61 = call i8* @strcpy(i8* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0)) #7
  %arraydecay62 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fn, i32 0, i32 0
  %call63 = call i32 @emacs_open(i8* %arraydecay62, i32 0, i32 0)
  store i32 %call63, i32* %fd, align 4
  %29 = load i32, i32* %fd, align 4
  %cmp64 = icmp slt i32 %29, 0
  br i1 %cmp64, label %if.then.66, label %if.else

if.then.66:                                       ; preds = %if.end.53
  store i64 0, i64* %nread, align 8
  br label %if.end.69

if.else:                                          ; preds = %if.end.53
  %30 = load i32, i32* %fd, align 4
  call void @record_unwind_protect_int(void (i32)* @close_file_unwind, i32 %30)
  %31 = load i32, i32* %fd, align 4
  %arraydecay67 = getelementptr inbounds [1025 x i8], [1025 x i8]* %procbuf, i32 0, i32 0
  %call68 = call i64 @emacs_read(i32 %31, i8* %arraydecay67, i64 1024)
  store i64 %call68, i64* %nread, align 8
  br label %if.end.69

if.end.69:                                        ; preds = %if.else, %if.then.66
  %32 = load i64, i64* %nread, align 8
  %cmp70 = icmp slt i64 0, %32
  br i1 %cmp70, label %if.then.72, label %if.end.433

if.then.72:                                       ; preds = %if.end.69
  %33 = load i64, i64* %nread, align 8
  %arrayidx = getelementptr inbounds [1025 x i8], [1025 x i8]* %procbuf, i32 0, i64 %33
  store i8 0, i8* %arrayidx, align 1
  %arraydecay73 = getelementptr inbounds [1025 x i8], [1025 x i8]* %procbuf, i32 0, i32 0
  store i8* %arraydecay73, i8** %p, align 8
  %34 = load i8*, i8** %p, align 8
  %call74 = call i8* @strchr(i8* %34, i32 40) #12
  store i8* %call74, i8** %p, align 8
  %35 = load i8*, i8** %p, align 8
  %cmp75 = icmp ne i8* %35, null
  br i1 %cmp75, label %if.then.77, label %if.else.86

if.then.77:                                       ; preds = %if.then.72
  %36 = load i8*, i8** %p, align 8
  %add.ptr78 = getelementptr inbounds i8, i8* %36, i64 1
  %call79 = call i8* @strrchr(i8* %add.ptr78, i32 41) #12
  store i8* %call79, i8** %q, align 8
  %37 = load i8*, i8** %q, align 8
  %cmp80 = icmp ne i8* %37, null
  br i1 %cmp80, label %if.then.82, label %if.end.85

if.then.82:                                       ; preds = %if.then.77
  %38 = load i8*, i8** %p, align 8
  %add.ptr83 = getelementptr inbounds i8, i8* %38, i64 1
  store i8* %add.ptr83, i8** %cmd, align 8
  %39 = load i8*, i8** %q, align 8
  %40 = load i8*, i8** %cmd, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %39 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %40 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv84 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv84, i32* %cmdsize, align 4
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.82, %if.then.77
  br label %if.end.87

if.else.86:                                       ; preds = %if.then.72
  store i8* null, i8** %q, align 8
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.86, %if.end.85
  %41 = load i8*, i8** %cmd, align 8
  %42 = load i32, i32* %cmdsize, align 4
  %conv88 = sext i32 %42 to i64
  %call89 = call i64 @make_unibyte_string(i8* %41, i64 %conv88)
  store i64 %call89, i64* %cmd_str, align 8
  %43 = load i64, i64* %cmd_str, align 8
  %44 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 168), align 8
  %call90 = call i64 @code_convert_string_norecord(i64 %43, i64 %44, i1 zeroext false)
  store i64 %call90, i64* %decoded_cmd, align 8
  %call91 = call i64 @builtin_lisp_symbol(i32 281)
  %45 = load i64, i64* %decoded_cmd, align 8
  %call92 = call i64 @Fcons(i64 %call91, i64 %45)
  %46 = load i64, i64* %attrs, align 8
  %call93 = call i64 @Fcons(i64 %call92, i64 %46)
  store i64 %call93, i64* %attrs, align 8
  %47 = load i8*, i8** %q, align 8
  %tobool94 = icmp ne i8* %47, null
  br i1 %tobool94, label %land.lhs.true.95, label %if.end.432

land.lhs.true.95:                                 ; preds = %if.end.87
  %48 = load i8*, i8** %q, align 8
  %add.ptr96 = getelementptr inbounds i8, i8* %48, i64 2
  %call97 = call i32 (i8*, i8*, ...) @sscanf(i8* %add.ptr96, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.25, i32 0, i32 0), i8* %c, i32* %ppid, i32* %pgrp, i32* %sess, i32* %tty, i32* %tpgid, i64* %minflt, i64* %cminflt, i64* %majflt, i64* %cmajflt, i64* %u_time, i64* %s_time, i64* %cutime, i64* %cstime, i64* %priority, i64* %niceness, i32* %thcount, i64* %start, i64* %vsize, i64* %rss) #7
  %cmp98 = icmp eq i32 %call97, 20
  br i1 %cmp98, label %if.then.100, label %if.end.432

if.then.100:                                      ; preds = %land.lhs.true.95
  %49 = load i8, i8* %c, align 1
  %arrayidx101 = getelementptr inbounds [2 x i8], [2 x i8]* %state_str, i32 0, i64 0
  store i8 %49, i8* %arrayidx101, align 1
  %arrayidx102 = getelementptr inbounds [2 x i8], [2 x i8]* %state_str, i32 0, i64 1
  store i8 0, i8* %arrayidx102, align 1
  %call103 = call i64 @builtin_lisp_symbol(i32 874)
  %arraydecay104 = getelementptr inbounds [2 x i8], [2 x i8]* %state_str, i32 0, i32 0
  %call105 = call i64 @build_string(i8* %arraydecay104)
  %call106 = call i64 @Fcons(i64 %call103, i64 %call105)
  %50 = load i64, i64* %attrs, align 8
  %call107 = call i64 @Fcons(i64 %call106, i64 %50)
  store i64 %call107, i64* %attrs, align 8
  %call108 = call i64 @builtin_lisp_symbol(i32 766)
  %51 = load i32, i32* %ppid, align 4
  %cmp109 = icmp sle i32 0, %51
  br i1 %cmp109, label %land.lhs.true.115, label %lor.lhs.false.111

lor.lhs.false.111:                                ; preds = %if.then.100
  %52 = load i32, i32* %ppid, align 4
  %conv112 = sext i32 %52 to i64
  %cmp113 = icmp sle i64 -2305843009213693952, %conv112
  br i1 %cmp113, label %land.lhs.true.115, label %cond.true.119

land.lhs.true.115:                                ; preds = %lor.lhs.false.111, %if.then.100
  %53 = load i32, i32* %ppid, align 4
  %conv116 = sext i32 %53 to i64
  %cmp117 = icmp sle i64 %conv116, 2305843009213693951
  br i1 %cmp117, label %cond.false.122, label %cond.true.119

cond.true.119:                                    ; preds = %land.lhs.true.115, %lor.lhs.false.111
  %54 = load i32, i32* %ppid, align 4
  %conv120 = sitofp i32 %54 to double
  %call121 = call i64 @make_float(double %conv120)
  br label %cond.end.126

cond.false.122:                                   ; preds = %land.lhs.true.115
  %55 = load i32, i32* %ppid, align 4
  %conv123 = sext i32 %55 to i64
  %shl124 = shl i64 %conv123, 2
  %add125 = add i64 %shl124, 2
  br label %cond.end.126

cond.end.126:                                     ; preds = %cond.false.122, %cond.true.119
  %cond127 = phi i64 [ %call121, %cond.true.119 ], [ %add125, %cond.false.122 ]
  %call128 = call i64 @Fcons(i64 %call108, i64 %cond127)
  %56 = load i64, i64* %attrs, align 8
  %call129 = call i64 @Fcons(i64 %call128, i64 %56)
  store i64 %call129, i64* %attrs, align 8
  %call130 = call i64 @builtin_lisp_symbol(i32 749)
  %57 = load i32, i32* %pgrp, align 4
  %cmp131 = icmp sle i32 0, %57
  br i1 %cmp131, label %land.lhs.true.137, label %lor.lhs.false.133

lor.lhs.false.133:                                ; preds = %cond.end.126
  %58 = load i32, i32* %pgrp, align 4
  %conv134 = sext i32 %58 to i64
  %cmp135 = icmp sle i64 -2305843009213693952, %conv134
  br i1 %cmp135, label %land.lhs.true.137, label %cond.true.141

land.lhs.true.137:                                ; preds = %lor.lhs.false.133, %cond.end.126
  %59 = load i32, i32* %pgrp, align 4
  %conv138 = sext i32 %59 to i64
  %cmp139 = icmp sle i64 %conv138, 2305843009213693951
  br i1 %cmp139, label %cond.false.144, label %cond.true.141

cond.true.141:                                    ; preds = %land.lhs.true.137, %lor.lhs.false.133
  %60 = load i32, i32* %pgrp, align 4
  %conv142 = sitofp i32 %60 to double
  %call143 = call i64 @make_float(double %conv142)
  br label %cond.end.148

cond.false.144:                                   ; preds = %land.lhs.true.137
  %61 = load i32, i32* %pgrp, align 4
  %conv145 = sext i32 %61 to i64
  %shl146 = shl i64 %conv145, 2
  %add147 = add i64 %shl146, 2
  br label %cond.end.148

cond.end.148:                                     ; preds = %cond.false.144, %cond.true.141
  %cond149 = phi i64 [ %call143, %cond.true.141 ], [ %add147, %cond.false.144 ]
  %call150 = call i64 @Fcons(i64 %call130, i64 %cond149)
  %62 = load i64, i64* %attrs, align 8
  %call151 = call i64 @Fcons(i64 %call150, i64 %62)
  store i64 %call151, i64* %attrs, align 8
  %call152 = call i64 @builtin_lisp_symbol(i32 846)
  %63 = load i32, i32* %sess, align 4
  %cmp153 = icmp sle i32 0, %63
  br i1 %cmp153, label %land.lhs.true.159, label %lor.lhs.false.155

lor.lhs.false.155:                                ; preds = %cond.end.148
  %64 = load i32, i32* %sess, align 4
  %conv156 = sext i32 %64 to i64
  %cmp157 = icmp sle i64 -2305843009213693952, %conv156
  br i1 %cmp157, label %land.lhs.true.159, label %cond.true.163

land.lhs.true.159:                                ; preds = %lor.lhs.false.155, %cond.end.148
  %65 = load i32, i32* %sess, align 4
  %conv160 = sext i32 %65 to i64
  %cmp161 = icmp sle i64 %conv160, 2305843009213693951
  br i1 %cmp161, label %cond.false.166, label %cond.true.163

cond.true.163:                                    ; preds = %land.lhs.true.159, %lor.lhs.false.155
  %66 = load i32, i32* %sess, align 4
  %conv164 = sitofp i32 %66 to double
  %call165 = call i64 @make_float(double %conv164)
  br label %cond.end.170

cond.false.166:                                   ; preds = %land.lhs.true.159
  %67 = load i32, i32* %sess, align 4
  %conv167 = sext i32 %67 to i64
  %shl168 = shl i64 %conv167, 2
  %add169 = add i64 %shl168, 2
  br label %cond.end.170

cond.end.170:                                     ; preds = %cond.false.166, %cond.true.163
  %cond171 = phi i64 [ %call165, %cond.true.163 ], [ %add169, %cond.false.166 ]
  %call172 = call i64 @Fcons(i64 %call152, i64 %cond171)
  %68 = load i64, i64* %attrs, align 8
  %call173 = call i64 @Fcons(i64 %call172, i64 %68)
  store i64 %call173, i64* %attrs, align 8
  %call174 = call i64 @builtin_lisp_symbol(i32 937)
  %69 = load i32, i32* %tty, align 4
  %call175 = call i64 @procfs_ttyname(i32 %69)
  %call176 = call i64 @Fcons(i64 %call174, i64 %call175)
  %70 = load i64, i64* %attrs, align 8
  %call177 = call i64 @Fcons(i64 %call176, i64 %70)
  store i64 %call177, i64* %attrs, align 8
  %call178 = call i64 @builtin_lisp_symbol(i32 932)
  %71 = load i32, i32* %tpgid, align 4
  %cmp179 = icmp sle i32 0, %71
  br i1 %cmp179, label %land.lhs.true.185, label %lor.lhs.false.181

lor.lhs.false.181:                                ; preds = %cond.end.170
  %72 = load i32, i32* %tpgid, align 4
  %conv182 = sext i32 %72 to i64
  %cmp183 = icmp sle i64 -2305843009213693952, %conv182
  br i1 %cmp183, label %land.lhs.true.185, label %cond.true.189

land.lhs.true.185:                                ; preds = %lor.lhs.false.181, %cond.end.170
  %73 = load i32, i32* %tpgid, align 4
  %conv186 = sext i32 %73 to i64
  %cmp187 = icmp sle i64 %conv186, 2305843009213693951
  br i1 %cmp187, label %cond.false.192, label %cond.true.189

cond.true.189:                                    ; preds = %land.lhs.true.185, %lor.lhs.false.181
  %74 = load i32, i32* %tpgid, align 4
  %conv190 = sitofp i32 %74 to double
  %call191 = call i64 @make_float(double %conv190)
  br label %cond.end.196

cond.false.192:                                   ; preds = %land.lhs.true.185
  %75 = load i32, i32* %tpgid, align 4
  %conv193 = sext i32 %75 to i64
  %shl194 = shl i64 %conv193, 2
  %add195 = add i64 %shl194, 2
  br label %cond.end.196

cond.end.196:                                     ; preds = %cond.false.192, %cond.true.189
  %cond197 = phi i64 [ %call191, %cond.true.189 ], [ %add195, %cond.false.192 ]
  %call198 = call i64 @Fcons(i64 %call178, i64 %cond197)
  %76 = load i64, i64* %attrs, align 8
  %call199 = call i64 @Fcons(i64 %call198, i64 %76)
  store i64 %call199, i64* %attrs, align 8
  %call200 = call i64 @builtin_lisp_symbol(i32 660)
  %77 = load i64, i64* %minflt, align 8
  %cmp201 = icmp ule i64 0, %77
  br i1 %cmp201, label %land.lhs.true.206, label %lor.lhs.false.203

lor.lhs.false.203:                                ; preds = %cond.end.196
  %78 = load i64, i64* %minflt, align 8
  %cmp204 = icmp ule i64 -2305843009213693952, %78
  br i1 %cmp204, label %land.lhs.true.206, label %cond.true.209

land.lhs.true.206:                                ; preds = %lor.lhs.false.203, %cond.end.196
  %79 = load i64, i64* %minflt, align 8
  %cmp207 = icmp ule i64 %79, 2305843009213693951
  br i1 %cmp207, label %cond.false.212, label %cond.true.209

cond.true.209:                                    ; preds = %land.lhs.true.206, %lor.lhs.false.203
  %80 = load i64, i64* %minflt, align 8
  %conv210 = uitofp i64 %80 to double
  %call211 = call i64 @make_float(double %conv210)
  br label %cond.end.215

cond.false.212:                                   ; preds = %land.lhs.true.206
  %81 = load i64, i64* %minflt, align 8
  %shl213 = shl i64 %81, 2
  %add214 = add i64 %shl213, 2
  br label %cond.end.215

cond.end.215:                                     ; preds = %cond.false.212, %cond.true.209
  %cond216 = phi i64 [ %call211, %cond.true.209 ], [ %add214, %cond.false.212 ]
  %call217 = call i64 @Fcons(i64 %call200, i64 %cond216)
  %82 = load i64, i64* %attrs, align 8
  %call218 = call i64 @Fcons(i64 %call217, i64 %82)
  store i64 %call218, i64* %attrs, align 8
  %call219 = call i64 @builtin_lisp_symbol(i32 637)
  %83 = load i64, i64* %majflt, align 8
  %cmp220 = icmp ule i64 0, %83
  br i1 %cmp220, label %land.lhs.true.225, label %lor.lhs.false.222

lor.lhs.false.222:                                ; preds = %cond.end.215
  %84 = load i64, i64* %majflt, align 8
  %cmp223 = icmp ule i64 -2305843009213693952, %84
  br i1 %cmp223, label %land.lhs.true.225, label %cond.true.228

land.lhs.true.225:                                ; preds = %lor.lhs.false.222, %cond.end.215
  %85 = load i64, i64* %majflt, align 8
  %cmp226 = icmp ule i64 %85, 2305843009213693951
  br i1 %cmp226, label %cond.false.231, label %cond.true.228

cond.true.228:                                    ; preds = %land.lhs.true.225, %lor.lhs.false.222
  %86 = load i64, i64* %majflt, align 8
  %conv229 = uitofp i64 %86 to double
  %call230 = call i64 @make_float(double %conv229)
  br label %cond.end.234

cond.false.231:                                   ; preds = %land.lhs.true.225
  %87 = load i64, i64* %majflt, align 8
  %shl232 = shl i64 %87, 2
  %add233 = add i64 %shl232, 2
  br label %cond.end.234

cond.end.234:                                     ; preds = %cond.false.231, %cond.true.228
  %cond235 = phi i64 [ %call230, %cond.true.228 ], [ %add233, %cond.false.231 ]
  %call236 = call i64 @Fcons(i64 %call219, i64 %cond235)
  %88 = load i64, i64* %attrs, align 8
  %call237 = call i64 @Fcons(i64 %call236, i64 %88)
  store i64 %call237, i64* %attrs, align 8
  %call238 = call i64 @builtin_lisp_symbol(i32 273)
  %89 = load i64, i64* %cminflt, align 8
  %cmp239 = icmp ule i64 0, %89
  br i1 %cmp239, label %land.lhs.true.244, label %lor.lhs.false.241

lor.lhs.false.241:                                ; preds = %cond.end.234
  %90 = load i64, i64* %cminflt, align 8
  %cmp242 = icmp ule i64 -2305843009213693952, %90
  br i1 %cmp242, label %land.lhs.true.244, label %cond.true.247

land.lhs.true.244:                                ; preds = %lor.lhs.false.241, %cond.end.234
  %91 = load i64, i64* %cminflt, align 8
  %cmp245 = icmp ule i64 %91, 2305843009213693951
  br i1 %cmp245, label %cond.false.250, label %cond.true.247

cond.true.247:                                    ; preds = %land.lhs.true.244, %lor.lhs.false.241
  %92 = load i64, i64* %cminflt, align 8
  %conv248 = uitofp i64 %92 to double
  %call249 = call i64 @make_float(double %conv248)
  br label %cond.end.253

cond.false.250:                                   ; preds = %land.lhs.true.244
  %93 = load i64, i64* %cminflt, align 8
  %shl251 = shl i64 %93, 2
  %add252 = add i64 %shl251, 2
  br label %cond.end.253

cond.end.253:                                     ; preds = %cond.false.250, %cond.true.247
  %cond254 = phi i64 [ %call249, %cond.true.247 ], [ %add252, %cond.false.250 ]
  %call255 = call i64 @Fcons(i64 %call238, i64 %cond254)
  %94 = load i64, i64* %attrs, align 8
  %call256 = call i64 @Fcons(i64 %call255, i64 %94)
  store i64 %call256, i64* %attrs, align 8
  %call257 = call i64 @builtin_lisp_symbol(i32 272)
  %95 = load i64, i64* %cmajflt, align 8
  %cmp258 = icmp ule i64 0, %95
  br i1 %cmp258, label %land.lhs.true.263, label %lor.lhs.false.260

lor.lhs.false.260:                                ; preds = %cond.end.253
  %96 = load i64, i64* %cmajflt, align 8
  %cmp261 = icmp ule i64 -2305843009213693952, %96
  br i1 %cmp261, label %land.lhs.true.263, label %cond.true.266

land.lhs.true.263:                                ; preds = %lor.lhs.false.260, %cond.end.253
  %97 = load i64, i64* %cmajflt, align 8
  %cmp264 = icmp ule i64 %97, 2305843009213693951
  br i1 %cmp264, label %cond.false.269, label %cond.true.266

cond.true.266:                                    ; preds = %land.lhs.true.263, %lor.lhs.false.260
  %98 = load i64, i64* %cmajflt, align 8
  %conv267 = uitofp i64 %98 to double
  %call268 = call i64 @make_float(double %conv267)
  br label %cond.end.272

cond.false.269:                                   ; preds = %land.lhs.true.263
  %99 = load i64, i64* %cmajflt, align 8
  %shl270 = shl i64 %99, 2
  %add271 = add i64 %shl270, 2
  br label %cond.end.272

cond.end.272:                                     ; preds = %cond.false.269, %cond.true.266
  %cond273 = phi i64 [ %call268, %cond.true.266 ], [ %add271, %cond.false.269 ]
  %call274 = call i64 @Fcons(i64 %call257, i64 %cond273)
  %100 = load i64, i64* %attrs, align 8
  %call275 = call i64 @Fcons(i64 %call274, i64 %100)
  store i64 %call275, i64* %attrs, align 8
  %call276 = call i64 @sysconf(i32 2) #7
  store i64 %call276, i64* %clocks_per_sec, align 8
  %101 = load i64, i64* %clocks_per_sec, align 8
  %cmp277 = icmp slt i64 %101, 0
  br i1 %cmp277, label %if.then.279, label %if.end.280

if.then.279:                                      ; preds = %cond.end.272
  store i64 100, i64* %clocks_per_sec, align 8
  br label %if.end.280

if.end.280:                                       ; preds = %if.then.279, %cond.end.272
  %call281 = call i64 @builtin_lisp_symbol(i32 990)
  %102 = load i64, i64* %u_time, align 8
  %103 = load i64, i64* %clocks_per_sec, align 8
  %call282 = call i64 @ltime_from_jiffies(i64 %102, i64 %103)
  %call283 = call i64 @Fcons(i64 %call281, i64 %call282)
  %104 = load i64, i64* %attrs, align 8
  %call284 = call i64 @Fcons(i64 %call283, i64 %104)
  store i64 %call284, i64* %attrs, align 8
  %call285 = call i64 @builtin_lisp_symbol(i32 879)
  %105 = load i64, i64* %s_time, align 8
  %106 = load i64, i64* %clocks_per_sec, align 8
  %call286 = call i64 @ltime_from_jiffies(i64 %105, i64 %106)
  %call287 = call i64 @Fcons(i64 %call285, i64 %call286)
  %107 = load i64, i64* %attrs, align 8
  %call288 = call i64 @Fcons(i64 %call287, i64 %107)
  store i64 %call288, i64* %attrs, align 8
  %call289 = call i64 @builtin_lisp_symbol(i32 917)
  %108 = load i64, i64* %s_time, align 8
  %109 = load i64, i64* %u_time, align 8
  %add290 = add i64 %108, %109
  %110 = load i64, i64* %clocks_per_sec, align 8
  %call291 = call i64 @ltime_from_jiffies(i64 %add290, i64 %110)
  %call292 = call i64 @Fcons(i64 %call289, i64 %call291)
  %111 = load i64, i64* %attrs, align 8
  %call293 = call i64 @Fcons(i64 %call292, i64 %111)
  store i64 %call293, i64* %attrs, align 8
  %call294 = call i64 @builtin_lisp_symbol(i32 311)
  %112 = load i64, i64* %cutime, align 8
  %113 = load i64, i64* %clocks_per_sec, align 8
  %call295 = call i64 @ltime_from_jiffies(i64 %112, i64 %113)
  %call296 = call i64 @Fcons(i64 %call294, i64 %call295)
  %114 = load i64, i64* %attrs, align 8
  %call297 = call i64 @Fcons(i64 %call296, i64 %114)
  store i64 %call297, i64* %attrs, align 8
  %call298 = call i64 @builtin_lisp_symbol(i32 302)
  %115 = load i64, i64* %cstime, align 8
  %116 = load i64, i64* %clocks_per_sec, align 8
  %call299 = call i64 @ltime_from_jiffies(i64 %115, i64 %116)
  %call300 = call i64 @Fcons(i64 %call298, i64 %call299)
  %117 = load i64, i64* %attrs, align 8
  %call301 = call i64 @Fcons(i64 %call300, i64 %117)
  store i64 %call301, i64* %attrs, align 8
  %call302 = call i64 @builtin_lisp_symbol(i32 303)
  %118 = load i64, i64* %cstime, align 8
  %119 = load i64, i64* %cutime, align 8
  %add303 = add i64 %118, %119
  %120 = load i64, i64* %clocks_per_sec, align 8
  %call304 = call i64 @ltime_from_jiffies(i64 %add303, i64 %120)
  %call305 = call i64 @Fcons(i64 %call302, i64 %call304)
  %121 = load i64, i64* %attrs, align 8
  %call306 = call i64 @Fcons(i64 %call305, i64 %121)
  store i64 %call306, i64* %attrs, align 8
  %call307 = call i64 @builtin_lisp_symbol(i32 769)
  %122 = load i64, i64* %priority, align 8
  %shl308 = shl i64 %122, 2
  %add309 = add i64 %shl308, 2
  %call310 = call i64 @Fcons(i64 %call307, i64 %add309)
  %123 = load i64, i64* %attrs, align 8
  %call311 = call i64 @Fcons(i64 %call310, i64 %123)
  store i64 %call311, i64* %attrs, align 8
  %call312 = call i64 @builtin_lisp_symbol(i32 700)
  %124 = load i64, i64* %niceness, align 8
  %shl313 = shl i64 %124, 2
  %add314 = add i64 %shl313, 2
  %call315 = call i64 @Fcons(i64 %call312, i64 %add314)
  %125 = load i64, i64* %attrs, align 8
  %call316 = call i64 @Fcons(i64 %call315, i64 %125)
  store i64 %call316, i64* %attrs, align 8
  %call317 = call i64 @builtin_lisp_symbol(i32 914)
  %126 = load i32, i32* %thcount, align 4
  %cmp318 = icmp sle i32 0, %126
  br i1 %cmp318, label %land.lhs.true.324, label %lor.lhs.false.320

lor.lhs.false.320:                                ; preds = %if.end.280
  %127 = load i32, i32* %thcount, align 4
  %conv321 = sext i32 %127 to i64
  %cmp322 = icmp sle i64 -2305843009213693952, %conv321
  br i1 %cmp322, label %land.lhs.true.324, label %cond.true.328

land.lhs.true.324:                                ; preds = %lor.lhs.false.320, %if.end.280
  %128 = load i32, i32* %thcount, align 4
  %conv325 = sext i32 %128 to i64
  %cmp326 = icmp sle i64 %conv325, 2305843009213693951
  br i1 %cmp326, label %cond.false.331, label %cond.true.328

cond.true.328:                                    ; preds = %land.lhs.true.324, %lor.lhs.false.320
  %129 = load i32, i32* %thcount, align 4
  %conv329 = sitofp i32 %129 to double
  %call330 = call i64 @make_float(double %conv329)
  br label %cond.end.335

cond.false.331:                                   ; preds = %land.lhs.true.324
  %130 = load i32, i32* %thcount, align 4
  %conv332 = sext i32 %130 to i64
  %shl333 = shl i64 %conv332, 2
  %add334 = add i64 %shl333, 2
  br label %cond.end.335

cond.end.335:                                     ; preds = %cond.false.331, %cond.true.328
  %cond336 = phi i64 [ %call330, %cond.true.328 ], [ %add334, %cond.false.331 ]
  %call337 = call i64 @Fcons(i64 %call317, i64 %cond336)
  %131 = load i64, i64* %attrs, align 8
  %call338 = call i64 @Fcons(i64 %call337, i64 %131)
  store i64 %call338, i64* %attrs, align 8
  %call339 = call { i64, i64 } @current_timespec()
  %132 = bitcast %struct.timespec* %coerce to { i64, i64 }*
  %133 = getelementptr { i64, i64 }, { i64, i64 }* %132, i32 0, i32 0
  %134 = extractvalue { i64, i64 } %call339, 0
  store i64 %134, i64* %133, align 8
  %135 = getelementptr { i64, i64 }, { i64, i64 }* %132, i32 0, i32 1
  %136 = extractvalue { i64, i64 } %call339, 1
  store i64 %136, i64* %135, align 8
  %137 = bitcast %struct.timespec* %tnow to i8*
  %138 = bitcast %struct.timespec* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %137, i8* %138, i64 16, i32 8, i1 false)
  %call340 = call { i64, i64 } @get_up_time()
  %139 = bitcast %struct.timespec* %coerce341 to { i64, i64 }*
  %140 = getelementptr { i64, i64 }, { i64, i64 }* %139, i32 0, i32 0
  %141 = extractvalue { i64, i64 } %call340, 0
  store i64 %141, i64* %140, align 8
  %142 = getelementptr { i64, i64 }, { i64, i64 }* %139, i32 0, i32 1
  %143 = extractvalue { i64, i64 } %call340, 1
  store i64 %143, i64* %142, align 8
  %144 = bitcast %struct.timespec* %telapsed to i8*
  %145 = bitcast %struct.timespec* %coerce341 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %144, i8* %145, i64 16, i32 8, i1 false)
  %146 = bitcast %struct.timespec* %tnow to { i64, i64 }*
  %147 = getelementptr { i64, i64 }, { i64, i64 }* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 1
  %149 = getelementptr { i64, i64 }, { i64, i64 }* %146, i32 0, i32 1
  %150 = load i64, i64* %149, align 1
  %151 = bitcast %struct.timespec* %telapsed to { i64, i64 }*
  %152 = getelementptr { i64, i64 }, { i64, i64 }* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 1
  %154 = getelementptr { i64, i64 }, { i64, i64 }* %151, i32 0, i32 1
  %155 = load i64, i64* %154, align 1
  %call342 = call { i64, i64 } @timespec_sub(i64 %148, i64 %150, i64 %153, i64 %155) #11
  %156 = bitcast %struct.timespec* %coerce343 to { i64, i64 }*
  %157 = getelementptr { i64, i64 }, { i64, i64 }* %156, i32 0, i32 0
  %158 = extractvalue { i64, i64 } %call342, 0
  store i64 %158, i64* %157, align 8
  %159 = getelementptr { i64, i64 }, { i64, i64 }* %156, i32 0, i32 1
  %160 = extractvalue { i64, i64 } %call342, 1
  store i64 %160, i64* %159, align 8
  %161 = bitcast %struct.timespec* %tboot to i8*
  %162 = bitcast %struct.timespec* %coerce343 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %161, i8* %162, i64 16, i32 8, i1 false)
  %163 = load i64, i64* %start, align 8
  %164 = load i64, i64* %clocks_per_sec, align 8
  %call344 = call { i64, i64 } @time_from_jiffies(i64 %163, i64 %164)
  %165 = bitcast %struct.timespec* %coerce345 to { i64, i64 }*
  %166 = getelementptr { i64, i64 }, { i64, i64 }* %165, i32 0, i32 0
  %167 = extractvalue { i64, i64 } %call344, 0
  store i64 %167, i64* %166, align 8
  %168 = getelementptr { i64, i64 }, { i64, i64 }* %165, i32 0, i32 1
  %169 = extractvalue { i64, i64 } %call344, 1
  store i64 %169, i64* %168, align 8
  %170 = bitcast %struct.timespec* %tstart to i8*
  %171 = bitcast %struct.timespec* %coerce345 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %170, i8* %171, i64 16, i32 8, i1 false)
  %172 = bitcast %struct.timespec* %tboot to { i64, i64 }*
  %173 = getelementptr { i64, i64 }, { i64, i64 }* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 1
  %175 = getelementptr { i64, i64 }, { i64, i64 }* %172, i32 0, i32 1
  %176 = load i64, i64* %175, align 1
  %177 = bitcast %struct.timespec* %tstart to { i64, i64 }*
  %178 = getelementptr { i64, i64 }, { i64, i64 }* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 1
  %180 = getelementptr { i64, i64 }, { i64, i64 }* %177, i32 0, i32 1
  %181 = load i64, i64* %180, align 1
  %call346 = call { i64, i64 } @timespec_add(i64 %174, i64 %176, i64 %179, i64 %181) #11
  %182 = bitcast %struct.timespec* %coerce347 to { i64, i64 }*
  %183 = getelementptr { i64, i64 }, { i64, i64 }* %182, i32 0, i32 0
  %184 = extractvalue { i64, i64 } %call346, 0
  store i64 %184, i64* %183, align 8
  %185 = getelementptr { i64, i64 }, { i64, i64 }* %182, i32 0, i32 1
  %186 = extractvalue { i64, i64 } %call346, 1
  store i64 %186, i64* %185, align 8
  %187 = bitcast %struct.timespec* %tstart to i8*
  %188 = bitcast %struct.timespec* %coerce347 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %187, i8* %188, i64 16, i32 8, i1 false)
  %call348 = call i64 @builtin_lisp_symbol(i32 872)
  %189 = bitcast %struct.timespec* %tstart to { i64, i64 }*
  %190 = getelementptr { i64, i64 }, { i64, i64 }* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 1
  %192 = getelementptr { i64, i64 }, { i64, i64 }* %189, i32 0, i32 1
  %193 = load i64, i64* %192, align 1
  %call349 = call i64 @make_lisp_time(i64 %191, i64 %193)
  %call350 = call i64 @Fcons(i64 %call348, i64 %call349)
  %194 = load i64, i64* %attrs, align 8
  %call351 = call i64 @Fcons(i64 %call350, i64 %194)
  store i64 %call351, i64* %attrs, align 8
  %call352 = call i64 @builtin_lisp_symbol(i32 1008)
  %195 = load i64, i64* %vsize, align 8
  %div = udiv i64 %195, 1024
  %cmp353 = icmp ule i64 0, %div
  br i1 %cmp353, label %land.lhs.true.359, label %lor.lhs.false.355

lor.lhs.false.355:                                ; preds = %cond.end.335
  %196 = load i64, i64* %vsize, align 8
  %div356 = udiv i64 %196, 1024
  %cmp357 = icmp ule i64 -2305843009213693952, %div356
  br i1 %cmp357, label %land.lhs.true.359, label %cond.true.363

land.lhs.true.359:                                ; preds = %lor.lhs.false.355, %cond.end.335
  %197 = load i64, i64* %vsize, align 8
  %div360 = udiv i64 %197, 1024
  %cmp361 = icmp ule i64 %div360, 2305843009213693951
  br i1 %cmp361, label %cond.false.367, label %cond.true.363

cond.true.363:                                    ; preds = %land.lhs.true.359, %lor.lhs.false.355
  %198 = load i64, i64* %vsize, align 8
  %div364 = udiv i64 %198, 1024
  %conv365 = uitofp i64 %div364 to double
  %call366 = call i64 @make_float(double %conv365)
  br label %cond.end.371

cond.false.367:                                   ; preds = %land.lhs.true.359
  %199 = load i64, i64* %vsize, align 8
  %div368 = udiv i64 %199, 1024
  %shl369 = shl i64 %div368, 2
  %add370 = add i64 %shl369, 2
  br label %cond.end.371

cond.end.371:                                     ; preds = %cond.false.367, %cond.true.363
  %cond372 = phi i64 [ %call366, %cond.true.363 ], [ %add370, %cond.false.367 ]
  %call373 = call i64 @Fcons(i64 %call352, i64 %cond372)
  %200 = load i64, i64* %attrs, align 8
  %call374 = call i64 @Fcons(i64 %call373, i64 %200)
  store i64 %call374, i64* %attrs, align 8
  %call375 = call i64 @builtin_lisp_symbol(i32 819)
  %201 = load i64, i64* %rss, align 8
  %mul = mul nsw i64 4, %201
  %cmp376 = icmp sle i64 0, %mul
  br i1 %cmp376, label %land.lhs.true.382, label %lor.lhs.false.378

lor.lhs.false.378:                                ; preds = %cond.end.371
  %202 = load i64, i64* %rss, align 8
  %mul379 = mul nsw i64 4, %202
  %cmp380 = icmp sle i64 -2305843009213693952, %mul379
  br i1 %cmp380, label %land.lhs.true.382, label %cond.true.386

land.lhs.true.382:                                ; preds = %lor.lhs.false.378, %cond.end.371
  %203 = load i64, i64* %rss, align 8
  %mul383 = mul nsw i64 4, %203
  %cmp384 = icmp sle i64 %mul383, 2305843009213693951
  br i1 %cmp384, label %cond.false.390, label %cond.true.386

cond.true.386:                                    ; preds = %land.lhs.true.382, %lor.lhs.false.378
  %204 = load i64, i64* %rss, align 8
  %mul387 = mul nsw i64 4, %204
  %conv388 = sitofp i64 %mul387 to double
  %call389 = call i64 @make_float(double %conv388)
  br label %cond.end.394

cond.false.390:                                   ; preds = %land.lhs.true.382
  %205 = load i64, i64* %rss, align 8
  %mul391 = mul nsw i64 4, %205
  %shl392 = shl i64 %mul391, 2
  %add393 = add i64 %shl392, 2
  br label %cond.end.394

cond.end.394:                                     ; preds = %cond.false.390, %cond.true.386
  %cond395 = phi i64 [ %call389, %cond.true.386 ], [ %add393, %cond.false.390 ]
  %call396 = call i64 @Fcons(i64 %call375, i64 %cond395)
  %206 = load i64, i64* %attrs, align 8
  %call397 = call i64 @Fcons(i64 %call396, i64 %206)
  store i64 %call397, i64* %attrs, align 8
  %207 = bitcast %struct.timespec* %tnow to { i64, i64 }*
  %208 = getelementptr { i64, i64 }, { i64, i64 }* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 1
  %210 = getelementptr { i64, i64 }, { i64, i64 }* %207, i32 0, i32 1
  %211 = load i64, i64* %210, align 1
  %212 = bitcast %struct.timespec* %tstart to { i64, i64 }*
  %213 = getelementptr { i64, i64 }, { i64, i64 }* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 1
  %215 = getelementptr { i64, i64 }, { i64, i64 }* %212, i32 0, i32 1
  %216 = load i64, i64* %215, align 1
  %call398 = call { i64, i64 } @timespec_sub(i64 %209, i64 %211, i64 %214, i64 %216) #11
  %217 = bitcast %struct.timespec* %coerce399 to { i64, i64 }*
  %218 = getelementptr { i64, i64 }, { i64, i64 }* %217, i32 0, i32 0
  %219 = extractvalue { i64, i64 } %call398, 0
  store i64 %219, i64* %218, align 8
  %220 = getelementptr { i64, i64 }, { i64, i64 }* %217, i32 0, i32 1
  %221 = extractvalue { i64, i64 } %call398, 1
  store i64 %221, i64* %220, align 8
  %222 = bitcast %struct.timespec* %telapsed to i8*
  %223 = bitcast %struct.timespec* %coerce399 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %222, i8* %223, i64 16, i32 8, i1 false)
  %call400 = call i64 @builtin_lisp_symbol(i32 376)
  %224 = bitcast %struct.timespec* %telapsed to { i64, i64 }*
  %225 = getelementptr { i64, i64 }, { i64, i64 }* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 1
  %227 = getelementptr { i64, i64 }, { i64, i64 }* %224, i32 0, i32 1
  %228 = load i64, i64* %227, align 1
  %call401 = call i64 @make_lisp_time(i64 %226, i64 %228)
  %call402 = call i64 @Fcons(i64 %call400, i64 %call401)
  %229 = load i64, i64* %attrs, align 8
  %call403 = call i64 @Fcons(i64 %call402, i64 %229)
  store i64 %call403, i64* %attrs, align 8
  %230 = load i64, i64* %u_time, align 8
  %231 = load i64, i64* %s_time, align 8
  %add404 = add i64 %230, %231
  %232 = load i64, i64* %clocks_per_sec, align 8
  %call405 = call { i64, i64 } @time_from_jiffies(i64 %add404, i64 %232)
  %233 = bitcast %struct.timespec* %coerce406 to { i64, i64 }*
  %234 = getelementptr { i64, i64 }, { i64, i64 }* %233, i32 0, i32 0
  %235 = extractvalue { i64, i64 } %call405, 0
  store i64 %235, i64* %234, align 8
  %236 = getelementptr { i64, i64 }, { i64, i64 }* %233, i32 0, i32 1
  %237 = extractvalue { i64, i64 } %call405, 1
  store i64 %237, i64* %236, align 8
  %238 = bitcast %struct.timespec* %us_time to i8*
  %239 = bitcast %struct.timespec* %coerce406 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %238, i8* %239, i64 16, i32 8, i1 false)
  %240 = bitcast %struct.timespec* %us_time to { i64, i64 }*
  %241 = getelementptr { i64, i64 }, { i64, i64 }* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 1
  %243 = getelementptr { i64, i64 }, { i64, i64 }* %240, i32 0, i32 1
  %244 = load i64, i64* %243, align 1
  %call407 = call double @timespectod(i64 %242, i64 %244)
  %245 = bitcast %struct.timespec* %telapsed to { i64, i64 }*
  %246 = getelementptr { i64, i64 }, { i64, i64 }* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 1
  %248 = getelementptr { i64, i64 }, { i64, i64 }* %245, i32 0, i32 1
  %249 = load i64, i64* %248, align 1
  %call408 = call double @timespectod(i64 %247, i64 %249)
  %div409 = fdiv double %call407, %call408
  store double %div409, double* %pcpu, align 8
  %250 = load double, double* %pcpu, align 8
  %cmp410 = fcmp ogt double %250, 1.000000e+00
  br i1 %cmp410, label %if.then.412, label %if.end.413

if.then.412:                                      ; preds = %cond.end.394
  store double 1.000000e+00, double* %pcpu, align 8
  br label %if.end.413

if.end.413:                                       ; preds = %if.then.412, %cond.end.394
  %call414 = call i64 @builtin_lisp_symbol(i32 745)
  %251 = load double, double* %pcpu, align 8
  %mul415 = fmul double 1.000000e+02, %251
  %call416 = call i64 @make_float(double %mul415)
  %call417 = call i64 @Fcons(i64 %call414, i64 %call416)
  %252 = load i64, i64* %attrs, align 8
  %call418 = call i64 @Fcons(i64 %call417, i64 %252)
  store i64 %call418, i64* %attrs, align 8
  %253 = load i64, i64* %rss, align 8
  %conv419 = sitofp i64 %253 to double
  %mul420 = fmul double 4.000000e+02, %conv419
  %call421 = call i64 @procfs_get_total_memory()
  %conv422 = uitofp i64 %call421 to double
  %div423 = fdiv double %mul420, %conv422
  store double %div423, double* %pmem, align 8
  %254 = load double, double* %pmem, align 8
  %cmp424 = fcmp ogt double %254, 1.000000e+02
  br i1 %cmp424, label %if.then.426, label %if.end.427

if.then.426:                                      ; preds = %if.end.413
  store double 1.000000e+02, double* %pmem, align 8
  br label %if.end.427

if.end.427:                                       ; preds = %if.then.426, %if.end.413
  %call428 = call i64 @builtin_lisp_symbol(i32 753)
  %255 = load double, double* %pmem, align 8
  %call429 = call i64 @make_float(double %255)
  %call430 = call i64 @Fcons(i64 %call428, i64 %call429)
  %256 = load i64, i64* %attrs, align 8
  %call431 = call i64 @Fcons(i64 %call430, i64 %256)
  store i64 %call431, i64* %attrs, align 8
  br label %if.end.432

if.end.432:                                       ; preds = %if.end.427, %land.lhs.true.95, %if.end.87
  br label %if.end.433

if.end.433:                                       ; preds = %if.end.432, %if.end.69
  %257 = load i64, i64* %count, align 8
  %call434 = call i64 @builtin_lisp_symbol(i32 0)
  %call435 = call i64 @unbind_to(i64 %257, i64 %call434)
  %258 = load i8*, i8** %procfn_end, align 8
  %call436 = call i8* @strcpy(i8* %258, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0)) #7
  %arraydecay437 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fn, i32 0, i32 0
  %call438 = call i32 @emacs_open(i8* %arraydecay437, i32 0, i32 0)
  store i32 %call438, i32* %fd, align 4
  %259 = load i32, i32* %fd, align 4
  %cmp439 = icmp sge i32 %259, 0
  br i1 %cmp439, label %if.then.441, label %if.end.507

if.then.441:                                      ; preds = %if.end.433
  %260 = load i32, i32* %fd, align 4
  call void @record_unwind_protect_int(void (i32)* @close_file_unwind, i32 %260)
  call void @record_unwind_protect_nothing()
  store i64 0, i64* %cmdline_size, align 8
  store i64 0, i64* %nread, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.441
  %261 = load i8*, i8** %cmdline, align 8
  %call442 = call i8* @xpalloc(i8* %261, i64* %cmdline_size, i64 2, i64 2305843009213693951, i64 1)
  store i8* %call442, i8** %cmdline, align 8
  %262 = load i64, i64* %count, align 8
  %add443 = add nsw i64 %262, 1
  %263 = load i8*, i8** %cmdline, align 8
  call void @set_unwind_protect_ptr(i64 %add443, void (i8*)* @xfree, i8* %263)
  %264 = load i64, i64* %cmdline_size, align 8
  %shr = ashr i64 %264, 1
  %265 = load i64, i64* %nread, align 8
  %sub = sub nsw i64 %shr, %265
  store i64 %sub, i64* %readsize, align 8
  %266 = load i32, i32* %fd, align 4
  %267 = load i8*, i8** %cmdline, align 8
  %268 = load i64, i64* %nread, align 8
  %add.ptr444 = getelementptr inbounds i8, i8* %267, i64 %268
  %269 = load i64, i64* %readsize, align 8
  %call445 = call i64 @emacs_read(i32 %266, i8* %add.ptr444, i64 %269)
  store i64 %call445, i64* %nread_incr, align 8
  %270 = load i64, i64* %nread_incr, align 8
  %cmp446 = icmp sgt i64 0, %270
  br i1 %cmp446, label %cond.true.448, label %cond.false.449

cond.true.448:                                    ; preds = %do.body
  br label %cond.end.450

cond.false.449:                                   ; preds = %do.body
  %271 = load i64, i64* %nread_incr, align 8
  br label %cond.end.450

cond.end.450:                                     ; preds = %cond.false.449, %cond.true.448
  %cond451 = phi i64 [ 0, %cond.true.448 ], [ %271, %cond.false.449 ]
  %272 = load i64, i64* %nread, align 8
  %add452 = add nsw i64 %272, %cond451
  store i64 %add452, i64* %nread, align 8
  br label %do.cond

do.cond:                                          ; preds = %cond.end.450
  %273 = load i64, i64* %nread_incr, align 8
  %274 = load i64, i64* %readsize, align 8
  %cmp453 = icmp eq i64 %273, %274
  br i1 %cmp453, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %275 = load i64, i64* %nread, align 8
  %tobool455 = icmp ne i64 %275, 0
  br i1 %tobool455, label %if.then.456, label %if.end.490

if.then.456:                                      ; preds = %do.end
  %276 = load i8*, i8** %cmdline, align 8
  %277 = load i64, i64* %nread, align 8
  %add.ptr457 = getelementptr inbounds i8, i8* %276, i64 %277
  store i8* %add.ptr457, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.456
  %278 = load i8*, i8** %cmdline, align 8
  %279 = load i8*, i8** %p, align 8
  %cmp458 = icmp ult i8* %278, %279
  br i1 %cmp458, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %280 = load i8*, i8** %p, align 8
  %arrayidx460 = getelementptr inbounds i8, i8* %280, i64 -1
  %281 = load i8, i8* %arrayidx460, align 1
  %tobool461 = icmp ne i8 %281, 0
  %lnot = xor i1 %tobool461, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %282 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %282, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %283 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %283, i32 -1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %284 = load i8*, i8** %cmdline, align 8
  %285 = load i64, i64* %cmdline_size, align 8
  %add.ptr462 = getelementptr inbounds i8, i8* %284, i64 %285
  store i8* %add.ptr462, i8** %q, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.485, %for.end
  %286 = load i8*, i8** %cmdline, align 8
  %287 = load i8*, i8** %p, align 8
  %cmp463 = icmp ult i8* %286, %287
  br i1 %cmp463, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %288 = load i8*, i8** %p, align 8
  %incdec.ptr466 = getelementptr inbounds i8, i8* %288, i32 -1
  store i8* %incdec.ptr466, i8** %p, align 8
  %289 = load i8, i8* %incdec.ptr466, align 1
  store i8 %289, i8* %c465, align 1
  %290 = load i8, i8* %c465, align 1
  %conv467 = sext i8 %290 to i32
  %tobool468 = icmp ne i32 %conv467, 0
  br i1 %tobool468, label %cond.true.469, label %cond.false.471

cond.true.469:                                    ; preds = %while.body
  %291 = load i8, i8* %c465, align 1
  %conv470 = sext i8 %291 to i32
  br label %cond.end.472

cond.false.471:                                   ; preds = %while.body
  br label %cond.end.472

cond.end.472:                                     ; preds = %cond.false.471, %cond.true.469
  %cond473 = phi i32 [ %conv470, %cond.true.469 ], [ 32, %cond.false.471 ]
  %conv474 = trunc i32 %cond473 to i8
  %292 = load i8*, i8** %q, align 8
  %incdec.ptr475 = getelementptr inbounds i8, i8* %292, i32 -1
  store i8* %incdec.ptr475, i8** %q, align 8
  store i8 %conv474, i8* %incdec.ptr475, align 1
  %293 = load i8, i8* %c465, align 1
  %conv476 = sext i8 %293 to i32
  %call477 = call zeroext i1 @c_isspace(i32 %conv476)
  br i1 %call477, label %if.then.483, label %lor.lhs.false.479

lor.lhs.false.479:                                ; preds = %cond.end.472
  %294 = load i8, i8* %c465, align 1
  %conv480 = sext i8 %294 to i32
  %cmp481 = icmp eq i32 %conv480, 92
  br i1 %cmp481, label %if.then.483, label %if.end.485

if.then.483:                                      ; preds = %lor.lhs.false.479, %cond.end.472
  %295 = load i8*, i8** %q, align 8
  %incdec.ptr484 = getelementptr inbounds i8, i8* %295, i32 -1
  store i8* %incdec.ptr484, i8** %q, align 8
  store i8 92, i8* %incdec.ptr484, align 1
  br label %if.end.485

if.end.485:                                       ; preds = %if.then.483, %lor.lhs.false.479
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %296 = load i8*, i8** %cmdline, align 8
  %297 = load i64, i64* %cmdline_size, align 8
  %add.ptr486 = getelementptr inbounds i8, i8* %296, i64 %297
  %298 = load i8*, i8** %q, align 8
  %sub.ptr.lhs.cast487 = ptrtoint i8* %add.ptr486 to i64
  %sub.ptr.rhs.cast488 = ptrtoint i8* %298 to i64
  %sub.ptr.sub489 = sub i64 %sub.ptr.lhs.cast487, %sub.ptr.rhs.cast488
  store i64 %sub.ptr.sub489, i64* %nread, align 8
  br label %if.end.490

if.end.490:                                       ; preds = %while.end, %do.end
  %299 = load i64, i64* %nread, align 8
  %tobool491 = icmp ne i64 %299, 0
  br i1 %tobool491, label %if.end.499, label %if.then.492

if.then.492:                                      ; preds = %if.end.490
  %300 = load i32, i32* %cmdsize, align 4
  %add493 = add nsw i32 %300, 2
  %conv494 = sext i32 %add493 to i64
  store i64 %conv494, i64* %nread, align 8
  %301 = load i64, i64* %nread, align 8
  %add495 = add nsw i64 %301, 1
  store i64 %add495, i64* %cmdline_size, align 8
  %302 = load i8*, i8** %cmdline, align 8
  %303 = load i64, i64* %cmdline_size, align 8
  %call496 = call i8* @xrealloc(i8* %302, i64 %303)
  store i8* %call496, i8** %cmdline, align 8
  store i8* %call496, i8** %q, align 8
  %304 = load i64, i64* %count, align 8
  %add497 = add nsw i64 %304, 1
  %305 = load i8*, i8** %cmdline, align 8
  call void @set_unwind_protect_ptr(i64 %add497, void (i8*)* @xfree, i8* %305)
  %306 = load i8*, i8** %cmdline, align 8
  %307 = load i32, i32* %cmdsize, align 4
  %308 = load i8*, i8** %cmd, align 8
  %call498 = call i32 (i8*, i8*, ...) @sprintf(i8* %306, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i32 %307, i8* %308) #7
  br label %if.end.499

if.end.499:                                       ; preds = %if.then.492, %if.end.490
  %309 = load i8*, i8** %q, align 8
  %310 = load i64, i64* %nread, align 8
  %call500 = call i64 @make_unibyte_string(i8* %309, i64 %310)
  store i64 %call500, i64* %cmd_str, align 8
  %311 = load i64, i64* %cmd_str, align 8
  %312 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 168), align 8
  %call501 = call i64 @code_convert_string_norecord(i64 %311, i64 %312, i1 zeroext false)
  store i64 %call501, i64* %decoded_cmd, align 8
  %313 = load i64, i64* %count, align 8
  %call502 = call i64 @builtin_lisp_symbol(i32 0)
  %call503 = call i64 @unbind_to(i64 %313, i64 %call502)
  %call504 = call i64 @builtin_lisp_symbol(i32 176)
  %314 = load i64, i64* %decoded_cmd, align 8
  %call505 = call i64 @Fcons(i64 %call504, i64 %314)
  %315 = load i64, i64* %attrs, align 8
  %call506 = call i64 @Fcons(i64 %call505, i64 %315)
  store i64 %call506, i64* %attrs, align 8
  br label %if.end.507

if.end.507:                                       ; preds = %if.end.499, %if.end.433
  %316 = load i64, i64* %attrs, align 8
  store i64 %316, i64* %retval
  br label %return

return:                                           ; preds = %if.end.507, %if.then
  %317 = load i64, i64* %retval
  ret i64 %317
}

declare void @CHECK_NUMBER_OR_FLOAT(i64) #2

declare i64 @cons_to_signed(i64, i64, i64) #2

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #1

declare i64 @Fcons(i64, i64) #2

declare i64 @make_float(double) #2

declare void @block_input() #2

declare %struct.passwd* @getpwuid(i32) #2

declare void @unblock_input() #2

declare %struct.group* @getgrgid(i32) #2

declare i64 @SPECPDL_INDEX() #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

declare void @record_unwind_protect_int(void (i32)*, i32) #2

declare void @close_file_unwind(i32) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #8

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #8

declare i64 @make_unibyte_string(i8*, i64) #2

declare i64 @code_convert_string_norecord(i64, i64, i1 zeroext) #2

; Function Attrs: nounwind
declare i32 @sscanf(i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i64 @procfs_ttyname(i32 %rdev) #0 {
entry:
  %rdev.addr = alloca i32, align 4
  %fdev = alloca %struct._IO_FILE*, align 8
  %name = alloca [4096 x i8], align 16
  %major = alloca i32, align 4
  %minor_beg = alloca i64, align 8
  %minor_end = alloca i64, align 8
  %minor = alloca [25 x i8], align 16
  %endp = alloca i8*, align 8
  store i32 %rdev, i32* %rdev.addr, align 4
  call void @block_input()
  %call = call %struct._IO_FILE* @emacs_fopen(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fdev, align 8
  %arrayidx = getelementptr inbounds [4096 x i8], [4096 x i8]* %name, i32 0, i64 0
  store i8 0, i8* %arrayidx, align 1
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fdev, align 8
  %tobool = icmp ne %struct._IO_FILE* %0, null
  br i1 %tobool, label %if.then, label %if.end.49

if.then:                                          ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fdev, align 8
  %call1 = call i32 @feof(%struct._IO_FILE* %1) #7
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %for.cond
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fdev, align 8
  %call3 = call i32 @ferror(%struct._IO_FILE* %2) #7
  %tobool4 = icmp ne i32 %call3, 0
  %lnot = xor i1 %tobool4, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %3 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %3, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fdev, align 8
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %name, i32 0, i32 0
  %arraydecay5 = getelementptr inbounds [25 x i8], [25 x i8]* %minor, i32 0, i32 0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i32 0, i32 0), i8* %arraydecay, i32* %major, i8* %arraydecay5)
  %cmp = icmp sge i32 %call6, 3
  br i1 %cmp, label %land.lhs.true, label %if.end.46

land.lhs.true:                                    ; preds = %for.body
  %5 = load i32, i32* %major, align 4
  %6 = load i32, i32* %rdev.addr, align 4
  %shr = lshr i32 %6, 8
  %and = and i32 %shr, 4095
  %cmp7 = icmp eq i32 %5, %and
  br i1 %cmp7, label %if.then.8, label %if.end.46

if.then.8:                                        ; preds = %land.lhs.true
  %arraydecay9 = getelementptr inbounds [25 x i8], [25 x i8]* %minor, i32 0, i32 0
  %call10 = call i64 @strtoul(i8* %arraydecay9, i8** %endp, i32 0) #7
  store i64 %call10, i64* %minor_beg, align 8
  %7 = load i8*, i8** %endp, align 8
  %8 = load i8, i8* %7, align 1
  %conv = sext i8 %8 to i32
  %cmp11 = icmp eq i32 %conv, 0
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.then.8
  %9 = load i64, i64* %minor_beg, align 8
  store i64 %9, i64* %minor_end, align 8
  br label %if.end.20

if.else:                                          ; preds = %if.then.8
  %10 = load i8*, i8** %endp, align 8
  %11 = load i8, i8* %10, align 1
  %conv14 = sext i8 %11 to i32
  %cmp15 = icmp eq i32 %conv14, 45
  br i1 %cmp15, label %if.then.17, label %if.else.19

if.then.17:                                       ; preds = %if.else
  %12 = load i8*, i8** %endp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 1
  %call18 = call i64 @strtoul(i8* %add.ptr, i8** %endp, i32 0) #7
  store i64 %call18, i64* %minor_end, align 8
  br label %if.end

if.else.19:                                       ; preds = %if.else
  br label %for.inc

if.end:                                           ; preds = %if.then.17
  br label %if.end.20

if.end.20:                                        ; preds = %if.end, %if.then.13
  %13 = load i32, i32* %rdev.addr, align 4
  %and21 = and i32 %13, 255
  %14 = load i32, i32* %rdev.addr, align 4
  %and22 = and i32 %14, -1048576
  %shr23 = lshr i32 %and22, 12
  %or = or i32 %and21, %shr23
  %conv24 = zext i32 %or to i64
  %15 = load i64, i64* %minor_beg, align 8
  %cmp25 = icmp uge i64 %conv24, %15
  br i1 %cmp25, label %land.lhs.true.27, label %if.end.45

land.lhs.true.27:                                 ; preds = %if.end.20
  %16 = load i32, i32* %rdev.addr, align 4
  %and28 = and i32 %16, 255
  %17 = load i32, i32* %rdev.addr, align 4
  %and29 = and i32 %17, -1048576
  %shr30 = lshr i32 %and29, 12
  %or31 = or i32 %and28, %shr30
  %conv32 = zext i32 %or31 to i64
  %18 = load i64, i64* %minor_end, align 8
  %cmp33 = icmp ule i64 %conv32, %18
  br i1 %cmp33, label %if.then.35, label %if.end.45

if.then.35:                                       ; preds = %land.lhs.true.27
  %arraydecay36 = getelementptr inbounds [4096 x i8], [4096 x i8]* %name, i32 0, i32 0
  %arraydecay37 = getelementptr inbounds [4096 x i8], [4096 x i8]* %name, i32 0, i32 0
  %call38 = call i64 @strlen(i8* %arraydecay37) #12
  %add.ptr39 = getelementptr inbounds i8, i8* %arraydecay36, i64 %call38
  %19 = load i32, i32* %rdev.addr, align 4
  %and40 = and i32 %19, 255
  %20 = load i32, i32* %rdev.addr, align 4
  %and41 = and i32 %20, -1048576
  %shr42 = lshr i32 %and41, 12
  %or43 = or i32 %and40, %shr42
  %call44 = call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0), i32 %or43) #7
  br label %for.end

if.end.45:                                        ; preds = %land.lhs.true.27, %if.end.20
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.46, %if.else.19
  %arrayidx47 = getelementptr inbounds [4096 x i8], [4096 x i8]* %name, i32 0, i64 0
  store i8 0, i8* %arrayidx47, align 1
  br label %for.cond

for.end:                                          ; preds = %if.then.35, %land.end
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %fdev, align 8
  %call48 = call i32 @fclose(%struct._IO_FILE* %21)
  br label %if.end.49

if.end.49:                                        ; preds = %for.end, %entry
  call void @unblock_input()
  %arraydecay50 = getelementptr inbounds [4096 x i8], [4096 x i8]* %name, i32 0, i32 0
  %call51 = call i64 @build_string(i8* %arraydecay50)
  ret i64 %call51
}

; Function Attrs: nounwind
declare i64 @sysconf(i32) #1

; Function Attrs: nounwind uwtable
define internal i64 @ltime_from_jiffies(i64 %tval, i64 %hz) #0 {
entry:
  %tval.addr = alloca i64, align 8
  %hz.addr = alloca i64, align 8
  %t = alloca %struct.timespec, align 8
  store i64 %tval, i64* %tval.addr, align 8
  store i64 %hz, i64* %hz.addr, align 8
  %0 = load i64, i64* %tval.addr, align 8
  %1 = load i64, i64* %hz.addr, align 8
  %call = call { i64, i64 } @time_from_jiffies(i64 %0, i64 %1)
  %2 = bitcast %struct.timespec* %t to { i64, i64 }*
  %3 = getelementptr { i64, i64 }, { i64, i64 }* %2, i32 0, i32 0
  %4 = extractvalue { i64, i64 } %call, 0
  store i64 %4, i64* %3, align 8
  %5 = getelementptr { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  %6 = extractvalue { i64, i64 } %call, 1
  store i64 %6, i64* %5, align 8
  %7 = bitcast %struct.timespec* %t to { i64, i64 }*
  %8 = getelementptr { i64, i64 }, { i64, i64 }* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 1
  %10 = getelementptr { i64, i64 }, { i64, i64 }* %7, i32 0, i32 1
  %11 = load i64, i64* %10, align 1
  %call1 = call i64 @make_lisp_time(i64 %9, i64 %11)
  ret i64 %call1
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @get_up_time() #0 {
entry:
  %retval = alloca %struct.timespec, align 8
  %fup = alloca %struct._IO_FILE*, align 8
  %up = alloca %struct.timespec, align 8
  %upsec = alloca i64, align 8
  %upfrac = alloca i64, align 8
  %idlesec = alloca i64, align 8
  %idlefrac = alloca i64, align 8
  %upfrac_start = alloca i32, align 4
  %upfrac_end = alloca i32, align 4
  %idlefrac_start = alloca i32, align 4
  %idlefrac_end = alloca i32, align 4
  %upfraclen = alloca i32, align 4
  %coerce = alloca %struct.timespec, align 8
  %call = call { i64, i64 } @make_timespec(i64 0, i64 0)
  %0 = bitcast %struct.timespec* %up to { i64, i64 }*
  %1 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %2 = extractvalue { i64, i64 } %call, 0
  store i64 %2, i64* %1, align 8
  %3 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %4 = extractvalue { i64, i64 } %call, 1
  store i64 %4, i64* %3, align 8
  call void @block_input()
  %call1 = call %struct._IO_FILE* @emacs_fopen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0))
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %fup, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fup, align 8
  %tobool = icmp ne %struct._IO_FILE* %5, null
  br i1 %tobool, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fup, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.35, i32 0, i32 0), i64* %upsec, i32* %upfrac_start, i64* %upfrac, i32* %upfrac_end, i64* %idlesec, i32* %idlefrac_start, i64* %idlefrac, i32* %idlefrac_end)
  %cmp = icmp eq i32 %call2, 4
  br i1 %cmp, label %if.then.3, label %if.end.14

if.then.3:                                        ; preds = %if.then
  %7 = load i64, i64* %upsec, align 8
  %cmp4 = icmp ult i64 9223372036854775807, %7
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then.3
  store i64 9223372036854775807, i64* %upsec, align 8
  store i64 999999999, i64* %upfrac, align 8
  br label %if.end

if.else:                                          ; preds = %if.then.3
  %8 = load i32, i32* %upfrac_end, align 4
  %9 = load i32, i32* %upfrac_start, align 4
  %sub = sub nsw i32 %8, %9
  store i32 %sub, i32* %upfraclen, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %10 = load i32, i32* %upfraclen, align 4
  %cmp6 = icmp slt i32 %10, 9
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i64, i64* %upfrac, align 8
  %mul = mul i64 %11, 10
  store i64 %mul, i64* %upfrac, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %upfraclen, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %upfraclen, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.10, %for.end
  %13 = load i32, i32* %upfraclen, align 4
  %cmp8 = icmp slt i32 9, %13
  br i1 %cmp8, label %for.body.9, label %for.end.11

for.body.9:                                       ; preds = %for.cond.7
  %14 = load i64, i64* %upfrac, align 8
  %div = udiv i64 %14, 10
  store i64 %div, i64* %upfrac, align 8
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.body.9
  %15 = load i32, i32* %upfraclen, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %upfraclen, align 4
  br label %for.cond.7

for.end.11:                                       ; preds = %for.cond.7
  %16 = load i64, i64* %upfrac, align 8
  %cmp12 = icmp ult i64 %16, 999999999
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end.11
  %17 = load i64, i64* %upfrac, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.end.11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %17, %cond.true ], [ 999999999, %cond.false ]
  store i64 %cond, i64* %upfrac, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then.5
  %18 = load i64, i64* %upsec, align 8
  %19 = load i64, i64* %upfrac, align 8
  %call13 = call { i64, i64 } @make_timespec(i64 %18, i64 %19)
  %20 = bitcast %struct.timespec* %coerce to { i64, i64 }*
  %21 = getelementptr { i64, i64 }, { i64, i64 }* %20, i32 0, i32 0
  %22 = extractvalue { i64, i64 } %call13, 0
  store i64 %22, i64* %21, align 8
  %23 = getelementptr { i64, i64 }, { i64, i64 }* %20, i32 0, i32 1
  %24 = extractvalue { i64, i64 } %call13, 1
  store i64 %24, i64* %23, align 8
  %25 = bitcast %struct.timespec* %up to i8*
  %26 = bitcast %struct.timespec* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 16, i32 8, i1 false)
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %fup, align 8
  %call15 = call i32 @fclose(%struct._IO_FILE* %27)
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.14, %entry
  call void @unblock_input()
  %28 = bitcast %struct.timespec* %retval to i8*
  %29 = bitcast %struct.timespec* %up to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 16, i32 8, i1 false)
  %30 = bitcast %struct.timespec* %retval to { i64, i64 }*
  %31 = load { i64, i64 }, { i64, i64 }* %30, align 8
  ret { i64, i64 } %31
}

; Function Attrs: nounwind readnone
declare { i64, i64 } @timespec_sub(i64, i64, i64, i64) #6

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @time_from_jiffies(i64 %tval, i64 %hz) #0 {
entry:
  %retval = alloca %struct.timespec, align 8
  %tval.addr = alloca i64, align 8
  %hz.addr = alloca i64, align 8
  %s = alloca i64, align 8
  %frac = alloca i64, align 8
  %ns = alloca i32, align 4
  %hz_per_ns = alloca i64, align 8
  store i64 %tval, i64* %tval.addr, align 8
  store i64 %hz, i64* %hz.addr, align 8
  %0 = load i64, i64* %tval.addr, align 8
  %1 = load i64, i64* %hz.addr, align 8
  %div = udiv i64 %0, %1
  store i64 %div, i64* %s, align 8
  %2 = load i64, i64* %tval.addr, align 8
  %3 = load i64, i64* %hz.addr, align 8
  %rem = urem i64 %2, %3
  store i64 %rem, i64* %frac, align 8
  %4 = load i64, i64* %s, align 8
  %cmp = icmp ult i64 9223372036854775807, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @time_overflow() #13
  unreachable

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %frac, align 8
  %cmp1 = icmp ule i64 %5, 18446744073
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %6 = load i64, i64* %frac, align 8
  %mul = mul i64 %6, 1000000000
  %7 = load i64, i64* %hz.addr, align 8
  %div3 = udiv i64 %mul, %7
  %conv = trunc i64 %div3 to i32
  store i32 %conv, i32* %ns, align 4
  br label %if.end.11

if.else:                                          ; preds = %if.end
  %8 = load i64, i64* %hz.addr, align 8
  %div4 = sdiv i64 %8, 1000000000
  %9 = load i64, i64* %hz.addr, align 8
  %rem5 = srem i64 %9, 1000000000
  %cmp6 = icmp ne i64 %rem5, 0
  %conv7 = zext i1 %cmp6 to i32
  %conv8 = sext i32 %conv7 to i64
  %add = add nsw i64 %div4, %conv8
  store i64 %add, i64* %hz_per_ns, align 8
  %10 = load i64, i64* %frac, align 8
  %11 = load i64, i64* %hz_per_ns, align 8
  %div9 = udiv i64 %10, %11
  %conv10 = trunc i64 %div9 to i32
  store i32 %conv10, i32* %ns, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.2
  %12 = load i64, i64* %s, align 8
  %13 = load i32, i32* %ns, align 4
  %conv12 = sext i32 %13 to i64
  %call = call { i64, i64 } @make_timespec(i64 %12, i64 %conv12)
  %14 = bitcast %struct.timespec* %retval to { i64, i64 }*
  %15 = getelementptr { i64, i64 }, { i64, i64 }* %14, i32 0, i32 0
  %16 = extractvalue { i64, i64 } %call, 0
  store i64 %16, i64* %15, align 8
  %17 = getelementptr { i64, i64 }, { i64, i64 }* %14, i32 0, i32 1
  %18 = extractvalue { i64, i64 } %call, 1
  store i64 %18, i64* %17, align 8
  %19 = bitcast %struct.timespec* %retval to { i64, i64 }*
  %20 = load { i64, i64 }, { i64, i64 }* %19, align 8
  ret { i64, i64 } %20
}

; Function Attrs: nounwind readnone
declare { i64, i64 } @timespec_add(i64, i64, i64, i64) #6

declare i64 @make_lisp_time(i64, i64) #2

declare double @timespectod(i64, i64) #2

; Function Attrs: nounwind uwtable
define internal i64 @procfs_get_total_memory() #0 {
entry:
  %fmem = alloca %struct._IO_FILE*, align 8
  %retval1 = alloca i64, align 8
  %c = alloca i32, align 4
  %entry_value = alloca i64, align 8
  %done = alloca i8, align 1
  store i64 2097152, i64* %retval1, align 8
  call void @block_input()
  %call = call %struct._IO_FILE* @emacs_fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fmem, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fmem, align 8
  %tobool = icmp ne %struct._IO_FILE* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fmem, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), i64* %entry_value)
  switch i32 %call2, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %do.body
  %2 = load i64, i64* %entry_value, align 8
  store i64 %2, i64* %retval1, align 8
  store i8 1, i8* %done, align 1
  br label %sw.epilog

sw.bb.3:                                          ; preds = %do.body
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.bb.3
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fmem, align 8
  %call4 = call i32 @_IO_getc(%struct._IO_FILE* %3)
  store i32 %call4, i32* %c, align 4
  %cmp = icmp ne i32 %call4, -1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i32, i32* %c, align 4
  %cmp5 = icmp ne i32 %4, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp5, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %while.cond

while.end:                                        ; preds = %land.end
  %6 = load i32, i32* %c, align 4
  %cmp6 = icmp eq i32 %6, -1
  %frombool = zext i1 %cmp6 to i8
  store i8 %frombool, i8* %done, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  store i8 1, i8* %done, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %while.end, %sw.bb
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  %7 = load i8, i8* %done, align 1
  %tobool7 = trunc i8 %7 to i1
  %lnot = xor i1 %tobool7, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fmem, align 8
  %call8 = call i32 @fclose(%struct._IO_FILE* %8)
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  call void @unblock_input()
  %9 = load i64, i64* %retval1, align 8
  ret i64 %9
}

declare i64 @unbind_to(i64, i64) #2

declare void @record_unwind_protect_nothing() #2

declare void @set_unwind_protect_ptr(i64, void (i8*)*, i8*) #2

declare zeroext i1 @c_isspace(i32) #2

declare i8* @xrealloc(i8*, i64) #2

; Function Attrs: nounwind uwtable
define i32 @str_collate(i64 %s1, i64 %s2, i64 %locale, i64 %ignore_case) #0 {
entry:
  %s1.addr = alloca i64, align 8
  %s2.addr = alloca i64, align 8
  %locale.addr = alloca i64, align 8
  %ignore_case.addr = alloca i64, align 8
  %res = alloca i32, align 4
  %err = alloca i32, align 4
  %len = alloca i64, align 8
  %i = alloca i64, align 8
  %i_byte = alloca i64, align 8
  %p1 = alloca i32*, align 8
  %p2 = alloca i32*, align 8
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  %chp = alloca i8*, align 8
  %chlen = alloca i32, align 4
  %chp96 = alloca i8*, align 8
  %chlen99 = alloca i32, align 4
  %loc = alloca %struct.__locale_struct*, align 8
  %i182 = alloca i32, align 4
  %p = alloca i32*, align 8
  %i207 = alloca i32, align 4
  %p212 = alloca i32*, align 8
  store i64 %s1, i64* %s1.addr, align 8
  store i64 %s2, i64* %s2.addr, align 8
  store i64 %locale, i64* %locale.addr, align 8
  store i64 %ignore_case, i64* %ignore_case.addr, align 8
  store i64 16384, i64* %sa_avail, align 8
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  %0 = load i64, i64* %s1.addr, align 8
  %call1 = call i64 @SCHARS(i64 %0)
  store i64 %call1, i64* %len, align 8
  store i64 0, i64* %i_byte, align 8
  store i64 0, i64* %i, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load i64, i64* %len, align 8
  %add = add nsw i64 %1, 1
  %2 = load i64, i64* %sa_avail, align 8
  %div = udiv i64 %2, 4
  %div2 = udiv i64 %div, 1
  %cmp = icmp ule i64 %add, %div2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %3 = load i64, i64* %len, align 8
  %add3 = add nsw i64 %3, 1
  %mul = mul i64 4, %add3
  %4 = load i64, i64* %sa_avail, align 8
  %sub = sub i64 %4, %mul
  store i64 %sub, i64* %sa_avail, align 8
  %5 = load i64, i64* %len, align 8
  %add4 = add nsw i64 %5, 1
  %mul5 = mul i64 4, %add4
  %6 = alloca i8, i64 %mul5
  %7 = bitcast i8* %6 to i32*
  store i32* %7, i32** %p1, align 8
  br label %if.end

if.else:                                          ; preds = %do.body
  %8 = load i64, i64* %len, align 8
  %add6 = add nsw i64 %8, 1
  %call7 = call noalias i8* @xnmalloc(i64 %add6, i64 4)
  %9 = bitcast i8* %call7 to i32*
  store i32* %9, i32** %p1, align 8
  store i8 1, i8* %sa_must_free, align 1
  %10 = load i32*, i32** %p1, align 8
  %11 = bitcast i32* %10 to i8*
  call void @record_unwind_protect_ptr(void (i8*)* @xfree, i8* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %do.end.68, %do.end
  %12 = load i64, i64* %i, align 8
  %13 = load i64, i64* %len, align 8
  %cmp8 = icmp slt i64 %12, %13
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body.9

do.body.9:                                        ; preds = %while.body
  %14 = load i64, i64* %i, align 8
  %inc = add nsw i64 %14, 1
  store i64 %inc, i64* %i, align 8
  %15 = load i64, i64* %s1.addr, align 8
  %call10 = call zeroext i1 @STRING_MULTIBYTE(i64 %15)
  br i1 %call10, label %if.then.11, label %if.else.61

if.then.11:                                       ; preds = %do.body.9
  %16 = load i64, i64* %i_byte, align 8
  %17 = load i64, i64* %s1.addr, align 8
  %call12 = call i8* @SDATA(i64 %17)
  %arrayidx = getelementptr inbounds i8, i8* %call12, i64 %16
  store i8* %arrayidx, i8** %chp, align 8
  %18 = load i8*, i8** %chp, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %18, i64 0
  %19 = load i8, i8* %arrayidx13, align 1
  %conv = zext i8 %19 to i32
  %and = and i32 %conv, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.11
  store i32 1, i32* %chlen, align 4
  %20 = load i8*, i8** %chp, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %20, i64 0
  %21 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %21 to i32
  br label %cond.end.56

cond.false:                                       ; preds = %if.then.11
  %22 = load i8*, i8** %chp, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %22, i64 0
  %23 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %23 to i32
  %and18 = and i32 %conv17, 32
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %cond.false.32, label %cond.true.20

cond.true.20:                                     ; preds = %cond.false
  store i32 2, i32* %chlen, align 4
  %24 = load i8*, i8** %chp, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %24, i64 0
  %25 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %25 to i32
  %and23 = and i32 %conv22, 31
  %shl = shl i32 %and23, 6
  %26 = load i8*, i8** %chp, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %26, i64 1
  %27 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %27 to i32
  %and26 = and i32 %conv25, 63
  %or = or i32 %shl, %and26
  %28 = load i8*, i8** %chp, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %28, i64 0
  %29 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %29 to i32
  %cmp29 = icmp slt i32 %conv28, 194
  %cond = select i1 %cmp29, i32 4194176, i32 0
  %add31 = add nsw i32 %or, %cond
  br label %cond.end.54

cond.false.32:                                    ; preds = %cond.false
  %30 = load i8*, i8** %chp, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %30, i64 0
  %31 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %31 to i32
  %and35 = and i32 %conv34, 16
  %tobool36 = icmp ne i32 %and35, 0
  br i1 %tobool36, label %cond.false.51, label %cond.true.37

cond.true.37:                                     ; preds = %cond.false.32
  store i32 3, i32* %chlen, align 4
  %32 = load i8*, i8** %chp, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %32, i64 0
  %33 = load i8, i8* %arrayidx38, align 1
  %conv39 = zext i8 %33 to i32
  %and40 = and i32 %conv39, 15
  %shl41 = shl i32 %and40, 12
  %34 = load i8*, i8** %chp, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %34, i64 1
  %35 = load i8, i8* %arrayidx42, align 1
  %conv43 = zext i8 %35 to i32
  %and44 = and i32 %conv43, 63
  %shl45 = shl i32 %and44, 6
  %or46 = or i32 %shl41, %shl45
  %36 = load i8*, i8** %chp, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %36, i64 2
  %37 = load i8, i8* %arrayidx47, align 1
  %conv48 = zext i8 %37 to i32
  %and49 = and i32 %conv48, 63
  %or50 = or i32 %or46, %and49
  br label %cond.end

cond.false.51:                                    ; preds = %cond.false.32
  %38 = load i8*, i8** %chp, align 8
  %call52 = call i32 @string_char(i8* %38, i8** null, i32* %chlen)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.51, %cond.true.37
  %cond53 = phi i32 [ %or50, %cond.true.37 ], [ %call52, %cond.false.51 ]
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.end, %cond.true.20
  %cond55 = phi i32 [ %add31, %cond.true.20 ], [ %cond53, %cond.end ]
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.end.54, %cond.true
  %cond57 = phi i32 [ %conv15, %cond.true ], [ %cond55, %cond.end.54 ]
  %39 = load i32*, i32** %p1, align 8
  %40 = load i64, i64* %i, align 8
  %add.ptr = getelementptr inbounds i32, i32* %39, i64 %40
  %add.ptr58 = getelementptr inbounds i32, i32* %add.ptr, i64 -1
  store i32 %cond57, i32* %add.ptr58, align 4
  %41 = load i32, i32* %chlen, align 4
  %conv59 = sext i32 %41 to i64
  %42 = load i64, i64* %i_byte, align 8
  %add60 = add nsw i64 %42, %conv59
  store i64 %add60, i64* %i_byte, align 8
  br label %if.end.67

if.else.61:                                       ; preds = %do.body.9
  %43 = load i64, i64* %s1.addr, align 8
  %44 = load i64, i64* %i_byte, align 8
  %call62 = call zeroext i8 @SREF(i64 %43, i64 %44)
  %conv63 = zext i8 %call62 to i32
  %45 = load i32*, i32** %p1, align 8
  %46 = load i64, i64* %i, align 8
  %add.ptr64 = getelementptr inbounds i32, i32* %45, i64 %46
  %add.ptr65 = getelementptr inbounds i32, i32* %add.ptr64, i64 -1
  store i32 %conv63, i32* %add.ptr65, align 4
  %47 = load i64, i64* %i_byte, align 8
  %inc66 = add nsw i64 %47, 1
  store i64 %inc66, i64* %i_byte, align 8
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.61, %cond.end.56
  br label %do.end.68

do.end.68:                                        ; preds = %if.end.67
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %48 = load i32*, i32** %p1, align 8
  %49 = load i64, i64* %len, align 8
  %add.ptr69 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32 0, i32* %add.ptr69, align 4
  %50 = load i64, i64* %s2.addr, align 8
  %call70 = call i64 @SCHARS(i64 %50)
  store i64 %call70, i64* %len, align 8
  store i64 0, i64* %i_byte, align 8
  store i64 0, i64* %i, align 8
  br label %do.body.71

do.body.71:                                       ; preds = %while.end
  %51 = load i64, i64* %len, align 8
  %add72 = add nsw i64 %51, 1
  %52 = load i64, i64* %sa_avail, align 8
  %div73 = udiv i64 %52, 4
  %div74 = udiv i64 %div73, 1
  %cmp75 = icmp ule i64 %add72, %div74
  br i1 %cmp75, label %if.then.77, label %if.else.83

if.then.77:                                       ; preds = %do.body.71
  %53 = load i64, i64* %len, align 8
  %add78 = add nsw i64 %53, 1
  %mul79 = mul i64 4, %add78
  %54 = load i64, i64* %sa_avail, align 8
  %sub80 = sub i64 %54, %mul79
  store i64 %sub80, i64* %sa_avail, align 8
  %55 = load i64, i64* %len, align 8
  %add81 = add nsw i64 %55, 1
  %mul82 = mul i64 4, %add81
  %56 = alloca i8, i64 %mul82
  %57 = bitcast i8* %56 to i32*
  store i32* %57, i32** %p2, align 8
  br label %if.end.86

if.else.83:                                       ; preds = %do.body.71
  %58 = load i64, i64* %len, align 8
  %add84 = add nsw i64 %58, 1
  %call85 = call noalias i8* @xnmalloc(i64 %add84, i64 4)
  %59 = bitcast i8* %call85 to i32*
  store i32* %59, i32** %p2, align 8
  store i8 1, i8* %sa_must_free, align 1
  %60 = load i32*, i32** %p2, align 8
  %61 = bitcast i32* %60 to i8*
  call void @record_unwind_protect_ptr(void (i8*)* @xfree, i8* %61)
  br label %if.end.86

if.end.86:                                        ; preds = %if.else.83, %if.then.77
  br label %do.end.87

do.end.87:                                        ; preds = %if.end.86
  br label %while.cond.88

while.cond.88:                                    ; preds = %do.end.165, %do.end.87
  %62 = load i64, i64* %i, align 8
  %63 = load i64, i64* %len, align 8
  %cmp89 = icmp slt i64 %62, %63
  br i1 %cmp89, label %while.body.91, label %while.end.166

while.body.91:                                    ; preds = %while.cond.88
  br label %do.body.92

do.body.92:                                       ; preds = %while.body.91
  %64 = load i64, i64* %i, align 8
  %inc93 = add nsw i64 %64, 1
  store i64 %inc93, i64* %i, align 8
  %65 = load i64, i64* %s2.addr, align 8
  %call94 = call zeroext i1 @STRING_MULTIBYTE(i64 %65)
  br i1 %call94, label %if.then.95, label %if.else.158

if.then.95:                                       ; preds = %do.body.92
  %66 = load i64, i64* %i_byte, align 8
  %67 = load i64, i64* %s2.addr, align 8
  %call97 = call i8* @SDATA(i64 %67)
  %arrayidx98 = getelementptr inbounds i8, i8* %call97, i64 %66
  store i8* %arrayidx98, i8** %chp96, align 8
  %68 = load i8*, i8** %chp96, align 8
  %arrayidx100 = getelementptr inbounds i8, i8* %68, i64 0
  %69 = load i8, i8* %arrayidx100, align 1
  %conv101 = zext i8 %69 to i32
  %and102 = and i32 %conv101, 128
  %tobool103 = icmp ne i32 %and102, 0
  br i1 %tobool103, label %cond.false.107, label %cond.true.104

cond.true.104:                                    ; preds = %if.then.95
  store i32 1, i32* %chlen99, align 4
  %70 = load i8*, i8** %chp96, align 8
  %arrayidx105 = getelementptr inbounds i8, i8* %70, i64 0
  %71 = load i8, i8* %arrayidx105, align 1
  %conv106 = zext i8 %71 to i32
  br label %cond.end.152

cond.false.107:                                   ; preds = %if.then.95
  %72 = load i8*, i8** %chp96, align 8
  %arrayidx108 = getelementptr inbounds i8, i8* %72, i64 0
  %73 = load i8, i8* %arrayidx108, align 1
  %conv109 = zext i8 %73 to i32
  %and110 = and i32 %conv109, 32
  %tobool111 = icmp ne i32 %and110, 0
  br i1 %tobool111, label %cond.false.127, label %cond.true.112

cond.true.112:                                    ; preds = %cond.false.107
  store i32 2, i32* %chlen99, align 4
  %74 = load i8*, i8** %chp96, align 8
  %arrayidx113 = getelementptr inbounds i8, i8* %74, i64 0
  %75 = load i8, i8* %arrayidx113, align 1
  %conv114 = zext i8 %75 to i32
  %and115 = and i32 %conv114, 31
  %shl116 = shl i32 %and115, 6
  %76 = load i8*, i8** %chp96, align 8
  %arrayidx117 = getelementptr inbounds i8, i8* %76, i64 1
  %77 = load i8, i8* %arrayidx117, align 1
  %conv118 = zext i8 %77 to i32
  %and119 = and i32 %conv118, 63
  %or120 = or i32 %shl116, %and119
  %78 = load i8*, i8** %chp96, align 8
  %arrayidx121 = getelementptr inbounds i8, i8* %78, i64 0
  %79 = load i8, i8* %arrayidx121, align 1
  %conv122 = zext i8 %79 to i32
  %cmp123 = icmp slt i32 %conv122, 194
  %cond125 = select i1 %cmp123, i32 4194176, i32 0
  %add126 = add nsw i32 %or120, %cond125
  br label %cond.end.150

cond.false.127:                                   ; preds = %cond.false.107
  %80 = load i8*, i8** %chp96, align 8
  %arrayidx128 = getelementptr inbounds i8, i8* %80, i64 0
  %81 = load i8, i8* %arrayidx128, align 1
  %conv129 = zext i8 %81 to i32
  %and130 = and i32 %conv129, 16
  %tobool131 = icmp ne i32 %and130, 0
  br i1 %tobool131, label %cond.false.146, label %cond.true.132

cond.true.132:                                    ; preds = %cond.false.127
  store i32 3, i32* %chlen99, align 4
  %82 = load i8*, i8** %chp96, align 8
  %arrayidx133 = getelementptr inbounds i8, i8* %82, i64 0
  %83 = load i8, i8* %arrayidx133, align 1
  %conv134 = zext i8 %83 to i32
  %and135 = and i32 %conv134, 15
  %shl136 = shl i32 %and135, 12
  %84 = load i8*, i8** %chp96, align 8
  %arrayidx137 = getelementptr inbounds i8, i8* %84, i64 1
  %85 = load i8, i8* %arrayidx137, align 1
  %conv138 = zext i8 %85 to i32
  %and139 = and i32 %conv138, 63
  %shl140 = shl i32 %and139, 6
  %or141 = or i32 %shl136, %shl140
  %86 = load i8*, i8** %chp96, align 8
  %arrayidx142 = getelementptr inbounds i8, i8* %86, i64 2
  %87 = load i8, i8* %arrayidx142, align 1
  %conv143 = zext i8 %87 to i32
  %and144 = and i32 %conv143, 63
  %or145 = or i32 %or141, %and144
  br label %cond.end.148

cond.false.146:                                   ; preds = %cond.false.127
  %88 = load i8*, i8** %chp96, align 8
  %call147 = call i32 @string_char(i8* %88, i8** null, i32* %chlen99)
  br label %cond.end.148

cond.end.148:                                     ; preds = %cond.false.146, %cond.true.132
  %cond149 = phi i32 [ %or145, %cond.true.132 ], [ %call147, %cond.false.146 ]
  br label %cond.end.150

cond.end.150:                                     ; preds = %cond.end.148, %cond.true.112
  %cond151 = phi i32 [ %add126, %cond.true.112 ], [ %cond149, %cond.end.148 ]
  br label %cond.end.152

cond.end.152:                                     ; preds = %cond.end.150, %cond.true.104
  %cond153 = phi i32 [ %conv106, %cond.true.104 ], [ %cond151, %cond.end.150 ]
  %89 = load i32*, i32** %p2, align 8
  %90 = load i64, i64* %i, align 8
  %add.ptr154 = getelementptr inbounds i32, i32* %89, i64 %90
  %add.ptr155 = getelementptr inbounds i32, i32* %add.ptr154, i64 -1
  store i32 %cond153, i32* %add.ptr155, align 4
  %91 = load i32, i32* %chlen99, align 4
  %conv156 = sext i32 %91 to i64
  %92 = load i64, i64* %i_byte, align 8
  %add157 = add nsw i64 %92, %conv156
  store i64 %add157, i64* %i_byte, align 8
  br label %if.end.164

if.else.158:                                      ; preds = %do.body.92
  %93 = load i64, i64* %s2.addr, align 8
  %94 = load i64, i64* %i_byte, align 8
  %call159 = call zeroext i8 @SREF(i64 %93, i64 %94)
  %conv160 = zext i8 %call159 to i32
  %95 = load i32*, i32** %p2, align 8
  %96 = load i64, i64* %i, align 8
  %add.ptr161 = getelementptr inbounds i32, i32* %95, i64 %96
  %add.ptr162 = getelementptr inbounds i32, i32* %add.ptr161, i64 -1
  store i32 %conv160, i32* %add.ptr162, align 4
  %97 = load i64, i64* %i_byte, align 8
  %inc163 = add nsw i64 %97, 1
  store i64 %inc163, i64* %i_byte, align 8
  br label %if.end.164

if.end.164:                                       ; preds = %if.else.158, %cond.end.152
  br label %do.end.165

do.end.165:                                       ; preds = %if.end.164
  br label %while.cond.88

while.end.166:                                    ; preds = %while.cond.88
  %98 = load i32*, i32** %p2, align 8
  %99 = load i64, i64* %len, align 8
  %add.ptr167 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32 0, i32* %add.ptr167, align 4
  %100 = load i64, i64* %locale.addr, align 8
  %call168 = call zeroext i1 @STRINGP(i64 %100)
  br i1 %call168, label %if.then.169, label %if.else.202

if.then.169:                                      ; preds = %while.end.166
  %101 = load i64, i64* %locale.addr, align 8
  %call170 = call i8* @SSDATA(i64 %101)
  %call171 = call %struct.__locale_struct* @newlocale(i32 9, i8* %call170, %struct.__locale_struct* null) #7
  store %struct.__locale_struct* %call171, %struct.__locale_struct** %loc, align 8
  %102 = load %struct.__locale_struct*, %struct.__locale_struct** %loc, align 8
  %tobool172 = icmp ne %struct.__locale_struct* %102, null
  br i1 %tobool172, label %if.end.177, label %if.then.173

if.then.173:                                      ; preds = %if.then.169
  %103 = load i64, i64* %locale.addr, align 8
  %call174 = call i8* @SSDATA(i64 %103)
  %call175 = call i32* @__errno_location() #11
  %104 = load i32, i32* %call175, align 4
  %call176 = call i8* @strerror(i32 %104) #7
  call void (i8*, ...) @error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i32 0, i32 0), i8* %call174, i8* %call176) #13
  unreachable

if.end.177:                                       ; preds = %if.then.169
  %105 = load i64, i64* %ignore_case.addr, align 8
  %call178 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp179 = icmp eq i64 %105, %call178
  br i1 %cmp179, label %if.end.198, label %if.then.181

if.then.181:                                      ; preds = %if.end.177
  store i32 1, i32* %i182, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.195, %if.then.181
  %106 = load i32, i32* %i182, align 4
  %cmp183 = icmp slt i32 %106, 3
  br i1 %cmp183, label %for.body, label %for.end.197

for.body:                                         ; preds = %for.cond
  %107 = load i32, i32* %i182, align 4
  %cmp185 = icmp eq i32 %107, 1
  br i1 %cmp185, label %cond.true.187, label %cond.false.188

cond.true.187:                                    ; preds = %for.body
  %108 = load i32*, i32** %p1, align 8
  br label %cond.end.189

cond.false.188:                                   ; preds = %for.body
  %109 = load i32*, i32** %p2, align 8
  br label %cond.end.189

cond.end.189:                                     ; preds = %cond.false.188, %cond.true.187
  %cond190 = phi i32* [ %108, %cond.true.187 ], [ %109, %cond.false.188 ]
  store i32* %cond190, i32** %p, align 8
  br label %for.cond.191

for.cond.191:                                     ; preds = %for.inc, %cond.end.189
  %110 = load i32*, i32** %p, align 8
  %111 = load i32, i32* %110, align 4
  %tobool192 = icmp ne i32 %111, 0
  br i1 %tobool192, label %for.body.193, label %for.end

for.body.193:                                     ; preds = %for.cond.191
  %112 = load i32*, i32** %p, align 8
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.__locale_struct*, %struct.__locale_struct** %loc, align 8
  %call194 = call i32 @towlower_l(i32 %113, %struct.__locale_struct* %114) #7
  %115 = load i32*, i32** %p, align 8
  store i32 %call194, i32* %115, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.193
  %116 = load i32*, i32** %p, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %116, i32 1
  store i32* %incdec.ptr, i32** %p, align 8
  br label %for.cond.191

for.end:                                          ; preds = %for.cond.191
  br label %for.inc.195

for.inc.195:                                      ; preds = %for.end
  %117 = load i32, i32* %i182, align 4
  %inc196 = add nsw i32 %117, 1
  store i32 %inc196, i32* %i182, align 4
  br label %for.cond

for.end.197:                                      ; preds = %for.cond
  br label %if.end.198

if.end.198:                                       ; preds = %for.end.197, %if.end.177
  %call199 = call i32* @__errno_location() #11
  store i32 0, i32* %call199, align 4
  %118 = load i32*, i32** %p1, align 8
  %119 = load i32*, i32** %p2, align 8
  %120 = load %struct.__locale_struct*, %struct.__locale_struct** %loc, align 8
  %call200 = call i32 @wcscoll_l(i32* %118, i32* %119, %struct.__locale_struct* %120) #7
  store i32 %call200, i32* %res, align 4
  %call201 = call i32* @__errno_location() #11
  %121 = load i32, i32* %call201, align 4
  store i32 %121, i32* %err, align 4
  %122 = load %struct.__locale_struct*, %struct.__locale_struct** %loc, align 8
  call void @freelocale(%struct.__locale_struct* %122) #7
  br label %if.end.233

if.else.202:                                      ; preds = %while.end.166
  %123 = load i64, i64* %ignore_case.addr, align 8
  %call203 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp204 = icmp eq i64 %123, %call203
  br i1 %cmp204, label %if.end.229, label %if.then.206

if.then.206:                                      ; preds = %if.else.202
  store i32 1, i32* %i207, align 4
  br label %for.cond.208

for.cond.208:                                     ; preds = %for.inc.226, %if.then.206
  %124 = load i32, i32* %i207, align 4
  %cmp209 = icmp slt i32 %124, 3
  br i1 %cmp209, label %for.body.211, label %for.end.228

for.body.211:                                     ; preds = %for.cond.208
  %125 = load i32, i32* %i207, align 4
  %cmp213 = icmp eq i32 %125, 1
  br i1 %cmp213, label %cond.true.215, label %cond.false.216

cond.true.215:                                    ; preds = %for.body.211
  %126 = load i32*, i32** %p1, align 8
  br label %cond.end.217

cond.false.216:                                   ; preds = %for.body.211
  %127 = load i32*, i32** %p2, align 8
  br label %cond.end.217

cond.end.217:                                     ; preds = %cond.false.216, %cond.true.215
  %cond218 = phi i32* [ %126, %cond.true.215 ], [ %127, %cond.false.216 ]
  store i32* %cond218, i32** %p212, align 8
  br label %for.cond.219

for.cond.219:                                     ; preds = %for.inc.223, %cond.end.217
  %128 = load i32*, i32** %p212, align 8
  %129 = load i32, i32* %128, align 4
  %tobool220 = icmp ne i32 %129, 0
  br i1 %tobool220, label %for.body.221, label %for.end.225

for.body.221:                                     ; preds = %for.cond.219
  %130 = load i32*, i32** %p212, align 8
  %131 = load i32, i32* %130, align 4
  %call222 = call i32 @towlower(i32 %131) #7
  %132 = load i32*, i32** %p212, align 8
  store i32 %call222, i32* %132, align 4
  br label %for.inc.223

for.inc.223:                                      ; preds = %for.body.221
  %133 = load i32*, i32** %p212, align 8
  %incdec.ptr224 = getelementptr inbounds i32, i32* %133, i32 1
  store i32* %incdec.ptr224, i32** %p212, align 8
  br label %for.cond.219

for.end.225:                                      ; preds = %for.cond.219
  br label %for.inc.226

for.inc.226:                                      ; preds = %for.end.225
  %134 = load i32, i32* %i207, align 4
  %inc227 = add nsw i32 %134, 1
  store i32 %inc227, i32* %i207, align 4
  br label %for.cond.208

for.end.228:                                      ; preds = %for.cond.208
  br label %if.end.229

if.end.229:                                       ; preds = %for.end.228, %if.else.202
  %call230 = call i32* @__errno_location() #11
  store i32 0, i32* %call230, align 4
  %135 = load i32*, i32** %p1, align 8
  %136 = load i32*, i32** %p2, align 8
  %call231 = call i32 @wcscoll(i32* %135, i32* %136) #7
  store i32 %call231, i32* %res, align 4
  %call232 = call i32* @__errno_location() #11
  %137 = load i32, i32* %call232, align 4
  store i32 %137, i32* %err, align 4
  br label %if.end.233

if.end.233:                                       ; preds = %if.end.229, %if.end.198
  %138 = load i32, i32* %err, align 4
  %tobool234 = icmp ne i32 %138, 0
  br i1 %tobool234, label %if.then.235, label %if.end.237

if.then.235:                                      ; preds = %if.end.233
  %139 = load i32, i32* %err, align 4
  %call236 = call i8* @strerror(i32 %139) #7
  call void (i8*, ...) @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.29, i32 0, i32 0), i8* %call236) #13
  unreachable

if.end.237:                                       ; preds = %if.end.233
  br label %do.body.238

do.body.238:                                      ; preds = %if.end.237
  %140 = load i8, i8* %sa_must_free, align 1
  %tobool239 = trunc i8 %140 to i1
  br i1 %tobool239, label %if.then.240, label %if.end.243

if.then.240:                                      ; preds = %do.body.238
  store i8 0, i8* %sa_must_free, align 1
  %141 = load i64, i64* %sa_count, align 8
  %call241 = call i64 @builtin_lisp_symbol(i32 0)
  %call242 = call i64 @unbind_to(i64 %141, i64 %call241)
  br label %if.end.243

if.end.243:                                       ; preds = %if.then.240, %do.body.238
  br label %do.end.244

do.end.244:                                       ; preds = %if.end.243
  %142 = load i32, i32* %res, align 4
  ret i32 %142
}

declare i64 @SCHARS(i64) #2

declare noalias i8* @xnmalloc(i64, i64) #2

declare void @record_unwind_protect_ptr(void (i8*)*, i8*) #2

declare zeroext i1 @STRING_MULTIBYTE(i64) #2

declare i8* @SDATA(i64) #2

declare i32 @string_char(i8*, i8**, i32*) #2

declare zeroext i8 @SREF(i64, i64) #2

; Function Attrs: nounwind
declare %struct.__locale_struct* @newlocale(i32, i8*, %struct.__locale_struct*) #1

; Function Attrs: nounwind
declare i32 @towlower_l(i32, %struct.__locale_struct*) #1

; Function Attrs: nounwind
declare i32 @wcscoll_l(i32*, i32*, %struct.__locale_struct*) #1

; Function Attrs: nounwind
declare void @freelocale(%struct.__locale_struct*) #1

; Function Attrs: nounwind
declare i32 @towlower(i32) #1

; Function Attrs: nounwind
declare i32 @wcscoll(i32*, i32*) #1

declare i32 @waitpid(i32, i32*, i32) #2

declare { i64, i64 } @make_timespec(i64, i64) #2

; Function Attrs: nounwind
declare i32 @setpgid(i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @tcsetpgrp_without_stopping(i32 %fd, i32 %pgid) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %pgid.addr = alloca i32, align 4
  %oldset = alloca %struct.__sigset_t, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store i32 %pgid, i32* %pgid.addr, align 4
  call void @block_input()
  call void @block_tty_out_signal(%struct.__sigset_t* %oldset)
  %0 = load i32, i32* %fd.addr, align 4
  %1 = load i32, i32* %pgid.addr, align 4
  %call = call i32 @tcsetpgrp(i32 %0, i32 %1) #7
  call void @unblock_tty_out_signal(%struct.__sigset_t* %oldset)
  call void @unblock_input()
  ret void
}

; Function Attrs: nounwind
declare i32 @tcsetpgrp(i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @handle_fatal_signal(i32 %sig) #0 {
entry:
  %sig.addr = alloca i32, align 4
  store i32 %sig, i32* %sig.addr, align 4
  %0 = load i32, i32* %sig.addr, align 4
  call void @terminate_due_to_signal(i32 %0, i32 40) #13
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @deliver_thread_signal(i32 %sig, void (i32)* %handler) #0 {
entry:
  %sig.addr = alloca i32, align 4
  %handler.addr = alloca void (i32)*, align 8
  %old_errno = alloca i32, align 4
  store i32 %sig, i32* %sig.addr, align 4
  store void (i32)* %handler, void (i32)** %handler.addr, align 8
  %call = call i32* @__errno_location() #11
  %0 = load i32, i32* %call, align 4
  store i32 %0, i32* %old_errno, align 4
  %call1 = call i64 @pthread_self() #11
  %1 = load i64, i64* @main_thread, align 8
  %call2 = call i32 @pthread_equal(i64 %call1, i64 %1) #11
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call3 = call i32 @backtrace(i8** getelementptr inbounds ([501 x i8*], [501 x i8*]* @thread_backtrace_buffer, i32 0, i32 0), i32 500)
  store i32 %call3, i32* @thread_backtrace_npointers, align 4
  %2 = load i32, i32* %sig.addr, align 4
  %call4 = call i32 @sigaction(i32 %2, %struct.sigaction* @process_fatal_action, %struct.sigaction* null) #7
  %3 = load i64, i64* @main_thread, align 8
  %4 = load i32, i32* %sig.addr, align 4
  %call5 = call i32 @pthread_kill(i64 %3, i32 %4) #7
  br label %while.body

while.body:                                       ; preds = %if.then, %while.body
  %call6 = call i32 @sigsuspend(%struct.__sigset_t* @empty_mask)
  br label %while.body

if.end:                                           ; preds = %entry
  %5 = load void (i32)*, void (i32)** %handler.addr, align 8
  %6 = load i32, i32* %sig.addr, align 4
  call void %5(i32 %6)
  %7 = load i32, i32* %old_errno, align 4
  %call7 = call i32* @__errno_location() #11
  store i32 %7, i32* %call7, align 4
  ret void
}

declare i32 @sigsuspend(%struct.__sigset_t*) #2

; Function Attrs: nounwind
declare i32 @sigaltstack(%struct.sigaltstack*, %struct.sigaltstack*) #1

; Function Attrs: nounwind uwtable
define internal void @handle_sigsegv(i32 %sig, %struct.siginfo_t* %siginfo, i8* %arg) #0 {
entry:
  %sig.addr = alloca i32, align 4
  %siginfo.addr = alloca %struct.siginfo_t*, align 8
  %arg.addr = alloca i8*, align 8
  %fatal = alloca i8, align 1
  store i32 %sig, i32* %sig.addr, align 4
  store %struct.siginfo_t* %siginfo, %struct.siginfo_t** %siginfo.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i8, i8* @gc_in_progress, align 1
  %tobool = trunc i8 %0 to i1
  %frombool = zext i1 %tobool to i8
  store i8 %frombool, i8* %fatal, align 1
  %1 = load i8, i8* %fatal, align 1
  %tobool1 = trunc i8 %1 to i1
  br i1 %tobool1, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = call i64 @pthread_self() #11
  %2 = load i64, i64* @main_thread, align 8
  %call2 = call i32 @pthread_equal(i64 %call, i64 %2) #11
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i8 1, i8* %fatal, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %3 = load i8, i8* %fatal, align 1
  %tobool4 = trunc i8 %3 to i1
  br i1 %tobool4, label %if.end.8, label %land.lhs.true.5

land.lhs.true.5:                                  ; preds = %if.end
  %4 = load %struct.siginfo_t*, %struct.siginfo_t** %siginfo.addr, align 8
  %call6 = call zeroext i1 @stack_overflow(%struct.siginfo_t* %4)
  br i1 %call6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %land.lhs.true.5
  call void @siglongjmp(%struct.__jmp_buf_tag* getelementptr inbounds ([1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* @return_to_command_loop, i32 0, i32 0), i32 1) #15
  unreachable

if.end.8:                                         ; preds = %land.lhs.true.5, %if.end
  %5 = load i32, i32* %sig.addr, align 4
  call void @deliver_fatal_thread_signal(i32 %5)
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @stack_overflow(%struct.siginfo_t* %siginfo) #0 {
entry:
  %retval = alloca i1, align 1
  %siginfo.addr = alloca %struct.siginfo_t*, align 8
  %addr = alloca i8*, align 8
  %bot = alloca i8*, align 8
  %top = alloca i8*, align 8
  store %struct.siginfo_t* %siginfo, %struct.siginfo_t** %siginfo.addr, align 8
  %0 = load %struct.siginfo_t*, %struct.siginfo_t** %siginfo.addr, align 8
  %tobool = icmp ne %struct.siginfo_t* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.siginfo_t*, %struct.siginfo_t** %siginfo.addr, align 8
  %_sifields = getelementptr inbounds %struct.siginfo_t, %struct.siginfo_t* %1, i32 0, i32 3
  %_sigfault = bitcast %union.anon.12* %_sifields to %struct.anon.17*
  %si_addr = getelementptr inbounds %struct.anon.17, %struct.anon.17* %_sigfault, i32 0, i32 0
  %2 = load i8*, i8** %si_addr, align 8
  store i8* %2, i8** %addr, align 8
  %3 = load i8*, i8** %addr, align 8
  %tobool1 = icmp ne i8* %3, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store i1 false, i1* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load i8*, i8** @stack_bottom, align 8
  store i8* %4, i8** %bot, align 8
  %call = call i8* @near_C_stack_top()
  store i8* %call, i8** %top, align 8
  %5 = load i8*, i8** %bot, align 8
  %6 = load i8*, i8** %top, align 8
  %cmp = icmp ult i8* %5, %6
  br i1 %cmp, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end.3
  %7 = load i8*, i8** %addr, align 8
  %8 = load i8*, i8** %top, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp5 = icmp sle i64 0, %sub.ptr.sub
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.4
  %9 = load i8*, i8** %addr, align 8
  %10 = load i8*, i8** %top, align 8
  %sub.ptr.lhs.cast6 = ptrtoint i8* %9 to i64
  %sub.ptr.rhs.cast7 = ptrtoint i8* %10 to i64
  %sub.ptr.sub8 = sub i64 %sub.ptr.lhs.cast6, %sub.ptr.rhs.cast7
  %11 = load i8*, i8** %top, align 8
  %12 = load i8*, i8** %bot, align 8
  %sub.ptr.lhs.cast9 = ptrtoint i8* %11 to i64
  %sub.ptr.rhs.cast10 = ptrtoint i8* %12 to i64
  %sub.ptr.sub11 = sub i64 %sub.ptr.lhs.cast9, %sub.ptr.rhs.cast10
  %shr = ashr i64 %sub.ptr.sub11, 8
  %cmp12 = icmp slt i64 %sub.ptr.sub8, %shr
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.4
  %13 = phi i1 [ false, %if.then.4 ], [ %cmp12, %land.rhs ]
  store i1 %13, i1* %retval
  br label %return

if.else:                                          ; preds = %if.end.3
  %14 = load i8*, i8** %top, align 8
  %15 = load i8*, i8** %addr, align 8
  %sub.ptr.lhs.cast13 = ptrtoint i8* %14 to i64
  %sub.ptr.rhs.cast14 = ptrtoint i8* %15 to i64
  %sub.ptr.sub15 = sub i64 %sub.ptr.lhs.cast13, %sub.ptr.rhs.cast14
  %cmp16 = icmp sle i64 0, %sub.ptr.sub15
  br i1 %cmp16, label %land.rhs.17, label %land.end.26

land.rhs.17:                                      ; preds = %if.else
  %16 = load i8*, i8** %top, align 8
  %17 = load i8*, i8** %addr, align 8
  %sub.ptr.lhs.cast18 = ptrtoint i8* %16 to i64
  %sub.ptr.rhs.cast19 = ptrtoint i8* %17 to i64
  %sub.ptr.sub20 = sub i64 %sub.ptr.lhs.cast18, %sub.ptr.rhs.cast19
  %18 = load i8*, i8** %bot, align 8
  %19 = load i8*, i8** %top, align 8
  %sub.ptr.lhs.cast21 = ptrtoint i8* %18 to i64
  %sub.ptr.rhs.cast22 = ptrtoint i8* %19 to i64
  %sub.ptr.sub23 = sub i64 %sub.ptr.lhs.cast21, %sub.ptr.rhs.cast22
  %shr24 = ashr i64 %sub.ptr.sub23, 8
  %cmp25 = icmp slt i64 %sub.ptr.sub20, %shr24
  br label %land.end.26

land.end.26:                                      ; preds = %land.rhs.17, %if.else
  %20 = phi i1 [ false, %if.else ], [ %cmp25, %land.rhs.17 ]
  store i1 %20, i1* %retval
  br label %return

return:                                           ; preds = %land.end.26, %land.end, %if.then.2, %if.then
  %21 = load i1, i1* %retval
  ret i1 %21
}

; Function Attrs: noreturn nounwind
declare void @siglongjmp(%struct.__jmp_buf_tag*, i32) #10

declare i8* @near_C_stack_top() #2

; Function Attrs: nounwind
declare void @srandom(i32) #1

declare i32 @close(i32) #2

declare i64 @write(i32, i8*, i64) #2

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #1

declare i32 @fscanf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind
declare i64 @strtoul(i8*, i8**, i32) #1

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: noreturn
declare void @time_overflow() #5

declare i32 @_IO_getc(%struct._IO_FILE*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind returns_twice "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind readonly }
attributes #13 = { noreturn }
attributes #14 = { nounwind returns_twice }
attributes #15 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
