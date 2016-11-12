; ModuleID = './src/scroll.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emacs_globals = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.frame = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.face_cache*, i32, %struct.glyph_pool*, %struct.glyph_pool*, %struct.glyph_matrix*, %struct.glyph_matrix*, i48, i32, i32, i32, i32, i8*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.terminal*, %union.output_data, %struct.font_driver_list*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x double], double, i32, i64, i64 }
%struct.vectorlike_header = type { i64 }
%struct.face_cache = type { %struct.face**, %struct.frame*, %struct.face**, i64, i32, i8 }
%struct.face = type { [19 x i64], i32, %struct._XGC*, i64, i64, i64, i64, i64, i64, i64, %struct.font*, i32, i32, i24, i32, %struct.face*, %struct.face*, %struct.face*, i8* }
%struct._XGC = type opaque
%struct.font = type opaque
%struct.glyph_pool = type { %struct.glyph*, i64, i32, i32 }
%struct.glyph = type { i64, i64, i16, i16, i16, i16, i24, i24, %union.anon, %union.anon.1 }
%union.anon = type { %struct.glyph_slice }
%struct.glyph_slice = type { i64 }
%union.anon.1 = type { i32 }
%struct.glyph_matrix = type { %struct.glyph_pool*, %struct.glyph_row*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.buffer*, i64, i64 }
%struct.glyph_row = type <{ [4 x %struct.glyph*], [4 x i16], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.display_pos, %struct.display_pos, %struct.text_pos, %struct.text_pos, i32, [11 x i8], i8, i24, i24, i32, i40, i32, %struct.XRectangle* }>
%struct.display_pos = type { %struct.text_pos, i64, %struct.text_pos, i32 }
%struct.text_pos = type { i64, i64 }
%struct.XRectangle = type { i16, i16, i16, i16 }
%struct.buffer = type opaque
%struct.terminal = type { %struct.vectorlike_header, i64, i64, i64, i64, %struct.terminal*, i32, i32, i32, i8*, %struct.kboard*, %struct.image_cache*, %union.display_info, %struct.coding_system*, %struct.coding_system*, %struct.redisplay_interface*, void (%struct.frame*, i32, i32)*, void (%struct.frame*, i32, i32)*, void (%struct.frame*)*, void (%struct.frame*)*, void (%struct.frame*, i32)*, void (%struct.frame*, i32, i32)*, void (%struct.frame*, %struct.glyph*, i32)*, void (%struct.frame*, %struct.glyph*, i32)*, void (%struct.frame*, i32)*, void (%struct.frame*)*, void (%struct.frame*, i1)*, void (%struct.terminal*)*, void (%struct.terminal*)*, void (%struct.frame*)*, void (%struct.frame*)*, void (%struct.frame*, i32)*, void (%struct.frame**, i32, i64*, i32*, i64*, i64*, i64*)*, void (%struct.frame*)*, void (%struct.frame*, i1)*, void (%struct.frame*)*, i64 (%struct.frame*, i32, i32, i32, i64, i8**)*, i64 (%struct.frame*, i64, i64)*, void (%struct.window*, i32, i32, i32)*, void (%struct.window*, i32, i32, i32)*, void (%struct.frame*)*, void (%struct.window*)*, void (%struct.frame*)*, i32 (%struct.terminal*, %struct.input_event*)*, void (%struct.frame*)*, void (%struct.frame*)*, void (%struct.terminal*)* }
%struct.kboard = type opaque
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
%struct.tty_display_info = type { %struct.tty_display_info*, i8*, i8*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct.emacs_tty*, i8, i32, %struct.terminal*, %struct.cm*, i64, %struct.frame*, i32, %struct.Mouse_HLInfo, [4096 x i8], [4096 x i8], i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i8, i32, i32, i8, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.emacs_tty = type opaque
%struct.cm = type opaque
%struct.Mouse_HLInfo = type { i32, i32, i32, i32, i32, i32, i64, i32, i64, %struct.frame*, i32, i32, i8 }
%struct.coding_system = type opaque
%struct.redisplay_interface = type { void (%struct.frame*, i64, i64)**, void (%struct.it*)*, void (%struct.window*, %struct.glyph_row*, %struct.glyph*, i32, i32)*, void (%struct.window*, %struct.glyph_row*, %struct.glyph*, i32, i32)*, void (%struct.window*, %struct.glyph_row*, i32, i32)*, void (%struct.window*, %struct.run*)*, void (%struct.window*, %struct.glyph_row*)*, void (%struct.window*)*, void (%struct.window*, i1, i1)*, void (%struct.frame*)*, void (%struct.window*)*, void (%struct.glyph*, %struct.frame*, i32*, i32*)*, void (%struct.window*, %struct.glyph_row*, i32, i32)*, void (%struct.window*, %struct.glyph_row*, %struct.draw_fringe_bitmap_params*)*, void (i32, i16*, i32, i32)*, void (i32)*, void (%struct.glyph_string*)*, void (%struct.glyph_string*)*, void (%struct.frame*, i64)*, void (%struct.frame*, i32, i32, i32, i32)*, void (%struct.window*, %struct.glyph_row*, i32, i32, i32, i32, i1, i1)*, void (%struct.window*, i32, i32, i32)*, void (%struct.window*, i32, i32, i32, i32)*, void (%struct.frame*, i32, i32, i32, i32, i32)*, void (%struct.frame*)*, void (%struct.frame*)* }
%struct.it = type { i64, %struct.window*, %struct.frame*, i32, i64, i64, i64, i64, i8*, i64, i64, i8, %struct.Lisp_Char_Table*, i64*, i64*, i32, i32, i32, [16 x i64], %struct.display_pos, %struct.display_pos, i64, i64, [16 x i64], [16 x i64], i64, i64, [5 x %struct.iterator_stack_entry], i32, i64, i32, i32, i16, i32, i32, i32, i32, %struct.composition_it, i32, i32, i64, %struct.xwidget*, %struct.it_slice, i64, i16, i16, i64, i64, %struct.text_pos, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, %struct.glyph_row*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.text_pos, i32, i32, i32, i32, i56, i24, %struct.bidi_it, i32 }
%struct.window = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.glyph_matrix*, %struct.glyph_matrix*, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, %struct.cursor_pos, %struct.cursor_pos, %struct.cursor_pos, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i64 }
%struct.cursor_pos = type { i32, i32, i32, i32 }
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
%struct.tty_output = type { %struct.tty_display_info* }
%struct.font_driver_list = type opaque
%struct.matrix_elt = type { i32, i32, i32, i8, i8, i8 }
%struct.alt_queue = type { i32, i32, i32 }
%struct.queue = type { i32, i32 }
%struct.anon.9 = type { i32, i32 }

@globals = external global %struct.emacs_globals, align 8

; Function Attrs: nounwind uwtable
define void @scrolling_1(%struct.frame* %frame, i32 %window_size, i32 %unchanged_at_top, i32 %unchanged_at_bottom, i32* %draw_cost, i32* %old_draw_cost, i32* %old_hash, i32* %new_hash, i32 %free_at_end) #0 {
entry:
  %frame.addr = alloca %struct.frame*, align 8
  %window_size.addr = alloca i32, align 4
  %unchanged_at_top.addr = alloca i32, align 4
  %unchanged_at_bottom.addr = alloca i32, align 4
  %draw_cost.addr = alloca i32*, align 8
  %old_draw_cost.addr = alloca i32*, align 8
  %old_hash.addr = alloca i32*, align 8
  %new_hash.addr = alloca i32*, align 8
  %free_at_end.addr = alloca i32, align 4
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  %matrix = alloca %struct.matrix_elt*, align 8
  store %struct.frame* %frame, %struct.frame** %frame.addr, align 8
  store i32 %window_size, i32* %window_size.addr, align 4
  store i32 %unchanged_at_top, i32* %unchanged_at_top.addr, align 4
  store i32 %unchanged_at_bottom, i32* %unchanged_at_bottom.addr, align 4
  store i32* %draw_cost, i32** %draw_cost.addr, align 8
  store i32* %old_draw_cost, i32** %old_draw_cost.addr, align 8
  store i32* %old_hash, i32** %old_hash.addr, align 8
  store i32* %new_hash, i32** %new_hash.addr, align 8
  store i32 %free_at_end, i32* %free_at_end.addr, align 4
  store i64 16384, i64* %sa_avail, align 8
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %window_size.addr, align 4
  %add = add nsw i32 %0, 1
  %conv = sext i32 %add to i64
  %1 = load i64, i64* %sa_avail, align 8
  %div = udiv i64 %1, 16
  %2 = load i32, i32* %window_size.addr, align 4
  %add1 = add nsw i32 %2, 1
  %conv2 = sext i32 %add1 to i64
  %div3 = udiv i64 %div, %conv2
  %cmp = icmp ule i64 %conv, %div3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %3 = load i32, i32* %window_size.addr, align 4
  %add5 = add nsw i32 %3, 1
  %conv6 = sext i32 %add5 to i64
  %mul = mul i64 16, %conv6
  %4 = load i32, i32* %window_size.addr, align 4
  %add7 = add nsw i32 %4, 1
  %conv8 = sext i32 %add7 to i64
  %mul9 = mul i64 %mul, %conv8
  %5 = load i64, i64* %sa_avail, align 8
  %sub = sub i64 %5, %mul9
  store i64 %sub, i64* %sa_avail, align 8
  %6 = load i32, i32* %window_size.addr, align 4
  %add10 = add nsw i32 %6, 1
  %conv11 = sext i32 %add10 to i64
  %mul12 = mul i64 16, %conv11
  %7 = load i32, i32* %window_size.addr, align 4
  %add13 = add nsw i32 %7, 1
  %conv14 = sext i32 %add13 to i64
  %mul15 = mul i64 %mul12, %conv14
  %8 = alloca i8, i64 %mul15
  %9 = bitcast i8* %8 to %struct.matrix_elt*
  store %struct.matrix_elt* %9, %struct.matrix_elt** %matrix, align 8
  br label %if.end

if.else:                                          ; preds = %do.body
  %10 = load i32, i32* %window_size.addr, align 4
  %add16 = add nsw i32 %10, 1
  %conv17 = sext i32 %add16 to i64
  %11 = load i32, i32* %window_size.addr, align 4
  %add18 = add nsw i32 %11, 1
  %conv19 = sext i32 %add18 to i64
  %mul20 = mul i64 16, %conv19
  %call21 = call noalias i8* @xnmalloc(i64 %conv17, i64 %mul20)
  %12 = bitcast i8* %call21 to %struct.matrix_elt*
  store %struct.matrix_elt* %12, %struct.matrix_elt** %matrix, align 8
  store i8 1, i8* %sa_must_free, align 1
  %13 = load %struct.matrix_elt*, %struct.matrix_elt** %matrix, align 8
  %14 = bitcast %struct.matrix_elt* %13 to i8*
  call void @record_unwind_protect_ptr(void (i8*)* @xfree, i8* %14)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %15 = load %struct.frame*, %struct.frame** %frame.addr, align 8
  %output_method = getelementptr inbounds %struct.frame, %struct.frame* %15, i32 0, i32 26
  %16 = bitcast i48* %output_method to i64*
  %bf.load = load i64, i64* %16, align 8
  %bf.lshr = lshr i64 %bf.load, 23
  %bf.clear = and i64 %bf.lshr, 7
  %bf.cast = trunc i64 %bf.clear to i32
  %cmp22 = icmp eq i32 %bf.cast, 1
  br i1 %cmp22, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %17 = load %struct.frame*, %struct.frame** %frame.addr, align 8
  %output_method24 = getelementptr inbounds %struct.frame, %struct.frame* %17, i32 0, i32 26
  %18 = bitcast i48* %output_method24 to i64*
  %bf.load25 = load i64, i64* %18, align 8
  %bf.lshr26 = lshr i64 %bf.load25, 23
  %bf.clear27 = and i64 %bf.lshr26, 7
  %bf.cast28 = trunc i64 %bf.clear27 to i32
  %cmp29 = icmp eq i32 %bf.cast28, 3
  br i1 %cmp29, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %do.end
  %19 = load %struct.frame*, %struct.frame** %frame.addr, align 8
  %terminal = getelementptr inbounds %struct.frame, %struct.frame* %19, i32 0, i32 61
  %20 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %display_info = getelementptr inbounds %struct.terminal, %struct.terminal* %20, i32 0, i32 12
  %tty = bitcast %union.display_info* %display_info to %struct.tty_display_info**
  %21 = load %struct.tty_display_info*, %struct.tty_display_info** %tty, align 8
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  call void @emacs_abort() #4
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %22, %cond.true
  %cond = phi %struct.tty_display_info* [ %21, %cond.true ], [ null, %22 ]
  %scroll_region_ok = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %cond, i32 0, i32 75
  %bf.load31 = load i8, i8* %scroll_region_ok, align 4
  %bf.lshr32 = lshr i8 %bf.load31, 6
  %bf.clear33 = and i8 %bf.lshr32, 1
  %bf.cast34 = trunc i8 %bf.clear33 to i1
  br i1 %bf.cast34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %cond.end
  %23 = load %struct.frame*, %struct.frame** %frame.addr, align 8
  %24 = load %struct.matrix_elt*, %struct.matrix_elt** %matrix, align 8
  %25 = load i32, i32* %window_size.addr, align 4
  %26 = load i32, i32* %unchanged_at_bottom.addr, align 4
  %27 = load i32*, i32** %draw_cost.addr, align 8
  %28 = load i32*, i32** %old_draw_cost.addr, align 8
  %29 = load i32*, i32** %old_hash.addr, align 8
  %30 = load i32*, i32** %new_hash.addr, align 8
  %31 = load i32, i32* %free_at_end.addr, align 4
  call void @calculate_direct_scrolling(%struct.frame* %23, %struct.matrix_elt* %24, i32 %25, i32 %26, i32* %27, i32* %28, i32* %29, i32* %30, i32 %31)
  %32 = load %struct.frame*, %struct.frame** %frame.addr, align 8
  %33 = load %struct.frame*, %struct.frame** %frame.addr, align 8
  %current_matrix = getelementptr inbounds %struct.frame, %struct.frame* %33, i32 0, i32 25
  %34 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix, align 8
  %35 = load %struct.matrix_elt*, %struct.matrix_elt** %matrix, align 8
  %36 = load i32, i32* %window_size.addr, align 4
  %37 = load i32, i32* %unchanged_at_top.addr, align 4
  call void @do_direct_scrolling(%struct.frame* %32, %struct.glyph_matrix* %34, %struct.matrix_elt* %35, i32 %36, i32 %37)
  br label %if.end.38

if.else.36:                                       ; preds = %cond.end
  %38 = load %struct.frame*, %struct.frame** %frame.addr, align 8
  %39 = load %struct.matrix_elt*, %struct.matrix_elt** %matrix, align 8
  %40 = load i32, i32* %window_size.addr, align 4
  %41 = load i32, i32* %unchanged_at_bottom.addr, align 4
  %42 = load i32*, i32** %draw_cost.addr, align 8
  %43 = load i32*, i32** %old_hash.addr, align 8
  %44 = load i32*, i32** %new_hash.addr, align 8
  %45 = load i32, i32* %free_at_end.addr, align 4
  call void @calculate_scrolling(%struct.frame* %38, %struct.matrix_elt* %39, i32 %40, i32 %41, i32* %42, i32* %43, i32* %44, i32 %45)
  %46 = load %struct.frame*, %struct.frame** %frame.addr, align 8
  %47 = load %struct.frame*, %struct.frame** %frame.addr, align 8
  %current_matrix37 = getelementptr inbounds %struct.frame, %struct.frame* %47, i32 0, i32 25
  %48 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix37, align 8
  %49 = load %struct.matrix_elt*, %struct.matrix_elt** %matrix, align 8
  %50 = load i32, i32* %window_size.addr, align 4
  %51 = load i32, i32* %unchanged_at_top.addr, align 4
  call void @do_scrolling(%struct.frame* %46, %struct.glyph_matrix* %48, %struct.matrix_elt* %49, i32 %50, i32 %51)
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.36, %if.then.35
  br label %do.body.39

do.body.39:                                       ; preds = %if.end.38
  %52 = load i8, i8* %sa_must_free, align 1
  %tobool = trunc i8 %52 to i1
  br i1 %tobool, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %do.body.39
  store i8 0, i8* %sa_must_free, align 1
  %53 = load i64, i64* %sa_count, align 8
  %call41 = call i64 @builtin_lisp_symbol(i32 0)
  %call42 = call i64 @unbind_to(i64 %53, i64 %call41)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.40, %do.body.39
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  ret void
}

declare i64 @SPECPDL_INDEX() #1

declare noalias i8* @xnmalloc(i64, i64) #1

declare void @record_unwind_protect_ptr(void (i8*)*, i8*) #1

declare void @xfree(i8*) #1

; Function Attrs: noreturn
declare void @emacs_abort() #2

; Function Attrs: nounwind uwtable
define internal void @calculate_direct_scrolling(%struct.frame* %frame, %struct.matrix_elt* %matrix, i32 %window_size, i32 %lines_below, i32* %draw_cost, i32* %old_draw_cost, i32* %old_hash, i32* %new_hash, i32 %free_at_end) #0 {
entry:
  %frame.addr = alloca %struct.frame*, align 8
  %matrix.addr = alloca %struct.matrix_elt*, align 8
  %window_size.addr = alloca i32, align 4
  %lines_below.addr = alloca i32, align 4
  %draw_cost.addr = alloca i32*, align 8
  %old_draw_cost.addr = alloca i32*, align 8
  %old_hash.addr = alloca i32*, align 8
  %new_hash.addr = alloca i32*, align 8
  %free_at_end.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %frame_total_lines = alloca i32, align 4
  %p = alloca %struct.matrix_elt*, align 8
  %p1 = alloca %struct.matrix_elt*, align 8
  %cost = alloca i32, align 4
  %cost1 = alloca i32, align 4
  %delta = alloca i32, align 4
  %first_insert_cost = alloca i32*, align 8
  %first_delete_cost = alloca i32*, align 8
  %next_insert_cost = alloca i32*, align 8
  %next_delete_cost = alloca i32*, align 8
  %scroll_overhead = alloca i32, align 4
  %extra_cost = alloca i32, align 4
  store %struct.frame* %frame, %struct.frame** %frame.addr, align 8
  store %struct.matrix_elt* %matrix, %struct.matrix_elt** %matrix.addr, align 8
  store i32 %window_size, i32* %window_size.addr, align 4
  store i32 %lines_below, i32* %lines_below.addr, align 4
  store i32* %draw_cost, i32** %draw_cost.addr, align 8
  store i32* %old_draw_cost, i32** %old_draw_cost.addr, align 8
  store i32* %old_hash, i32** %old_hash.addr, align 8
  store i32* %new_hash, i32** %new_hash.addr, align 8
  store i32 %free_at_end, i32* %free_at_end.addr, align 4
  %0 = load %struct.frame*, %struct.frame** %frame.addr, align 8
  %total_lines = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 39
  %1 = load i32, i32* %total_lines, align 4
  store i32 %1, i32* %frame_total_lines, align 4
  %2 = load i32, i32* %frame_total_lines, align 4
  %sub = sub nsw i32 %2, 1
  %idxprom = sext i32 %sub to i64
  %3 = load %struct.frame*, %struct.frame** %frame.addr, align 8
  %insert_line_cost = getelementptr inbounds %struct.frame, %struct.frame* %3, i32 0, i32 32
  %4 = load i32*, i32** %insert_line_cost, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  store i32* %arrayidx, i32** %first_insert_cost, align 8
  %5 = load i32, i32* %frame_total_lines, align 4
  %sub1 = sub nsw i32 %5, 1
  %idxprom2 = sext i32 %sub1 to i64
  %6 = load %struct.frame*, %struct.frame** %frame.addr, align 8
  %delete_line_cost = getelementptr inbounds %struct.frame, %struct.frame* %6, i32 0, i32 33
  %7 = load i32*, i32** %delete_line_cost, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %7, i64 %idxprom2
  store i32* %arrayidx3, i32** %first_delete_cost, align 8
  %8 = load i32, i32* %frame_total_lines, align 4
  %sub4 = sub nsw i32 %8, 1
  %idxprom5 = sext i32 %sub4 to i64
  %9 = load %struct.frame*, %struct.frame** %frame.addr, align 8
  %insert_n_lines_cost = getelementptr inbounds %struct.frame, %struct.frame* %9, i32 0, i32 34
  %10 = load i32*, i32** %insert_n_lines_cost, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %10, i64 %idxprom5
  store i32* %arrayidx6, i32** %next_insert_cost, align 8
  %11 = load i32, i32* %frame_total_lines, align 4
  %sub7 = sub nsw i32 %11, 1
  %idxprom8 = sext i32 %sub7 to i64
  %12 = load %struct.frame*, %struct.frame** %frame.addr, align 8
  %delete_n_lines_cost = getelementptr inbounds %struct.frame, %struct.frame* %12, i32 0, i32 35
  %13 = load i32*, i32** %delete_n_lines_cost, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %13, i64 %idxprom8
  store i32* %arrayidx9, i32** %next_delete_cost, align 8
  %14 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 381), align 8
  %15 = load i32, i32* %frame_total_lines, align 4
  %mul = mul nsw i32 40, %15
  %conv = sext i32 %mul to i64
  %div = sdiv i64 %14, %conv
  %conv10 = trunc i64 %div to i32
  store i32 %conv10, i32* %extra_cost, align 4
  %16 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 381), align 8
  %cmp = icmp sle i64 %16, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %extra_cost, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load %struct.frame*, %struct.frame** %frame.addr, align 8
  %output_method = getelementptr inbounds %struct.frame, %struct.frame* %17, i32 0, i32 26
  %18 = bitcast i48* %output_method to i64*
  %bf.load = load i64, i64* %18, align 8
  %bf.lshr = lshr i64 %bf.load, 23
  %bf.clear = and i64 %bf.lshr, 7
  %bf.cast = trunc i64 %bf.clear to i32
  %cmp12 = icmp eq i32 %bf.cast, 1
  br i1 %cmp12, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %19 = load %struct.frame*, %struct.frame** %frame.addr, align 8
  %output_method14 = getelementptr inbounds %struct.frame, %struct.frame* %19, i32 0, i32 26
  %20 = bitcast i48* %output_method14 to i64*
  %bf.load15 = load i64, i64* %20, align 8
  %bf.lshr16 = lshr i64 %bf.load15, 23
  %bf.clear17 = and i64 %bf.lshr16, 7
  %bf.cast18 = trunc i64 %bf.clear17 to i32
  %cmp19 = icmp eq i32 %bf.cast18, 3
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %if.end
  %21 = load %struct.frame*, %struct.frame** %frame.addr, align 8
  %terminal = getelementptr inbounds %struct.frame, %struct.frame* %21, i32 0, i32 61
  %22 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %display_info = getelementptr inbounds %struct.terminal, %struct.terminal* %22, i32 0, i32 12
  %tty = bitcast %union.display_info* %display_info to %struct.tty_display_info**
  %23 = load %struct.tty_display_info*, %struct.tty_display_info** %tty, align 8
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  call void @emacs_abort() #4
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %24, %cond.true
  %cond = phi %struct.tty_display_info* [ %23, %cond.true ], [ null, %24 ]
  %scroll_region_cost = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %cond, i32 0, i32 76
  %25 = load i32, i32* %scroll_region_cost, align 4
  %26 = load i32, i32* %extra_cost, align 4
  %add = add nsw i32 %25, %26
  store i32 %add, i32* %scroll_overhead, align 4
  %27 = load %struct.matrix_elt*, %struct.matrix_elt** %matrix.addr, align 8
  %writecost = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %27, i32 0, i32 0
  store i32 0, i32* %writecost, align 4
  %28 = load %struct.matrix_elt*, %struct.matrix_elt** %matrix.addr, align 8
  %insertcost = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %28, i32 0, i32 1
  store i32 1000000, i32* %insertcost, align 4
  %29 = load %struct.matrix_elt*, %struct.matrix_elt** %matrix.addr, align 8
  %deletecost = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %29, i32 0, i32 2
  store i32 1000000, i32* %deletecost, align 4
  %30 = load %struct.matrix_elt*, %struct.matrix_elt** %matrix.addr, align 8
  %writecount = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %30, i32 0, i32 5
  store i8 0, i8* %writecount, align 1
  %31 = load %struct.matrix_elt*, %struct.matrix_elt** %matrix.addr, align 8
  %insertcount = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %31, i32 0, i32 3
  store i8 0, i8* %insertcount, align 1
  %32 = load %struct.matrix_elt*, %struct.matrix_elt** %matrix.addr, align 8
  %deletecount = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %32, i32 0, i32 4
  store i8 0, i8* %deletecount, align 1
  store i32 0, i32* %cost, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %33 = load i32, i32* %i, align 4
  %34 = load i32, i32* %window_size.addr, align 4
  %cmp21 = icmp sle i32 %33, %34
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load %struct.matrix_elt*, %struct.matrix_elt** %matrix.addr, align 8
  %36 = load i32, i32* %i, align 4
  %37 = load i32, i32* %window_size.addr, align 4
  %add23 = add nsw i32 %37, 1
  %mul24 = mul nsw i32 %36, %add23
  %idx.ext = sext i32 %mul24 to i64
  %add.ptr = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %35, i64 %idx.ext
  store %struct.matrix_elt* %add.ptr, %struct.matrix_elt** %p, align 8
  %38 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %38 to i64
  %39 = load i32*, i32** %draw_cost.addr, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %39, i64 %idxprom25
  %40 = load i32, i32* %arrayidx26, align 4
  %41 = load i32, i32* %cost, align 4
  %add27 = add nsw i32 %41, %40
  store i32 %add27, i32* %cost, align 4
  %42 = load i32, i32* %cost, align 4
  %43 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %insertcost28 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %43, i32 0, i32 1
  store i32 %42, i32* %insertcost28, align 4
  %44 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %writecost29 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %44, i32 0, i32 0
  store i32 1000000, i32* %writecost29, align 4
  %45 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %deletecost30 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %45, i32 0, i32 2
  store i32 1000000, i32* %deletecost30, align 4
  %46 = load i32, i32* %i, align 4
  %conv31 = trunc i32 %46 to i8
  %47 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %insertcount32 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %47, i32 0, i32 3
  store i8 %conv31, i8* %insertcount32, align 1
  %48 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %writecount33 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %48, i32 0, i32 5
  store i8 0, i8* %writecount33, align 1
  %49 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %deletecount34 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %49, i32 0, i32 4
  store i8 0, i8* %deletecount34, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %50 = load i32, i32* %i, align 4
  %inc = add nsw i32 %50, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %j, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.58, %for.end
  %51 = load i32, i32* %j, align 4
  %52 = load i32, i32* %window_size.addr, align 4
  %cmp36 = icmp sle i32 %51, %52
  br i1 %cmp36, label %for.body.38, label %for.end.60

for.body.38:                                      ; preds = %for.cond.35
  %53 = load i32, i32* %j, align 4
  %idxprom39 = sext i32 %53 to i64
  %54 = load %struct.matrix_elt*, %struct.matrix_elt** %matrix.addr, align 8
  %arrayidx40 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %54, i64 %idxprom39
  %deletecost41 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %arrayidx40, i32 0, i32 2
  store i32 0, i32* %deletecost41, align 4
  %55 = load i32, i32* %j, align 4
  %idxprom42 = sext i32 %55 to i64
  %56 = load %struct.matrix_elt*, %struct.matrix_elt** %matrix.addr, align 8
  %arrayidx43 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %56, i64 %idxprom42
  %writecost44 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %arrayidx43, i32 0, i32 0
  store i32 1000000, i32* %writecost44, align 4
  %57 = load i32, i32* %j, align 4
  %idxprom45 = sext i32 %57 to i64
  %58 = load %struct.matrix_elt*, %struct.matrix_elt** %matrix.addr, align 8
  %arrayidx46 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %58, i64 %idxprom45
  %insertcost47 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %arrayidx46, i32 0, i32 1
  store i32 1000000, i32* %insertcost47, align 4
  %59 = load i32, i32* %j, align 4
  %conv48 = trunc i32 %59 to i8
  %60 = load i32, i32* %j, align 4
  %idxprom49 = sext i32 %60 to i64
  %61 = load %struct.matrix_elt*, %struct.matrix_elt** %matrix.addr, align 8
  %arrayidx50 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %61, i64 %idxprom49
  %deletecount51 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %arrayidx50, i32 0, i32 4
  store i8 %conv48, i8* %deletecount51, align 1
  %62 = load i32, i32* %j, align 4
  %idxprom52 = sext i32 %62 to i64
  %63 = load %struct.matrix_elt*, %struct.matrix_elt** %matrix.addr, align 8
  %arrayidx53 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %63, i64 %idxprom52
  %writecount54 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %arrayidx53, i32 0, i32 5
  store i8 0, i8* %writecount54, align 1
  %64 = load i32, i32* %j, align 4
  %idxprom55 = sext i32 %64 to i64
  %65 = load %struct.matrix_elt*, %struct.matrix_elt** %matrix.addr, align 8
  %arrayidx56 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %65, i64 %idxprom55
  %insertcount57 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %arrayidx56, i32 0, i32 3
  store i8 0, i8* %insertcount57, align 1
  br label %for.inc.58

for.inc.58:                                       ; preds = %for.body.38
  %66 = load i32, i32* %j, align 4
  %inc59 = add nsw i32 %66, 1
  store i32 %inc59, i32* %j, align 4
  br label %for.cond.35

for.end.60:                                       ; preds = %for.cond.35
  %67 = load %struct.matrix_elt*, %struct.matrix_elt** %matrix.addr, align 8
  %68 = load i32, i32* %window_size.addr, align 4
  %idx.ext61 = sext i32 %68 to i64
  %add.ptr62 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %67, i64 %idx.ext61
  %add.ptr63 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %add.ptr62, i64 2
  store %struct.matrix_elt* %add.ptr63, %struct.matrix_elt** %p, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc.261, %for.end.60
  %69 = load i32, i32* %i, align 4
  %70 = load i32, i32* %window_size.addr, align 4
  %cmp65 = icmp sle i32 %69, %70
  br i1 %cmp65, label %for.body.67, label %for.end.264

for.body.67:                                      ; preds = %for.cond.64
  store i32 1, i32* %j, align 4
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc.258, %for.body.67
  %71 = load i32, i32* %j, align 4
  %72 = load i32, i32* %window_size.addr, align 4
  %cmp69 = icmp sle i32 %71, %72
  br i1 %cmp69, label %for.body.71, label %for.end.260

for.body.71:                                      ; preds = %for.cond.68
  %73 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %74 = load i32, i32* %window_size.addr, align 4
  %idx.ext72 = sext i32 %74 to i64
  %idx.neg = sub i64 0, %idx.ext72
  %add.ptr73 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %73, i64 %idx.neg
  %add.ptr74 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %add.ptr73, i64 -2
  store %struct.matrix_elt* %add.ptr74, %struct.matrix_elt** %p1, align 8
  %75 = load %struct.matrix_elt*, %struct.matrix_elt** %p1, align 8
  %insertcost75 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %75, i32 0, i32 1
  %76 = load i32, i32* %insertcost75, align 4
  store i32 %76, i32* %cost, align 4
  %77 = load i32, i32* %cost, align 4
  %78 = load %struct.matrix_elt*, %struct.matrix_elt** %p1, align 8
  %deletecost76 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %78, i32 0, i32 2
  %79 = load i32, i32* %deletecost76, align 4
  %cmp77 = icmp sgt i32 %77, %79
  br i1 %cmp77, label %if.then.79, label %if.end.81

if.then.79:                                       ; preds = %for.body.71
  %80 = load %struct.matrix_elt*, %struct.matrix_elt** %p1, align 8
  %deletecost80 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %80, i32 0, i32 2
  %81 = load i32, i32* %deletecost80, align 4
  store i32 %81, i32* %cost, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.79, %for.body.71
  %82 = load %struct.matrix_elt*, %struct.matrix_elt** %p1, align 8
  %writecost82 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %82, i32 0, i32 0
  %83 = load i32, i32* %writecost82, align 4
  store i32 %83, i32* %cost1, align 4
  %84 = load i32, i32* %i, align 4
  %85 = load i32, i32* %j, align 4
  %cmp83 = icmp eq i32 %84, %85
  br i1 %cmp83, label %if.then.85, label %if.else.107

if.then.85:                                       ; preds = %if.end.81
  %86 = load i32, i32* %cost, align 4
  %87 = load i32, i32* %cost1, align 4
  %cmp86 = icmp sgt i32 %86, %87
  br i1 %cmp86, label %if.then.88, label %if.else

if.then.88:                                       ; preds = %if.then.85
  %88 = load i32, i32* %cost1, align 4
  store i32 %88, i32* %cost, align 4
  %89 = load %struct.matrix_elt*, %struct.matrix_elt** %p1, align 8
  %writecount89 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %89, i32 0, i32 5
  %90 = load i8, i8* %writecount89, align 1
  %conv90 = zext i8 %90 to i32
  %add91 = add nsw i32 %conv90, 1
  %conv92 = trunc i32 %add91 to i8
  %91 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %writecount93 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %91, i32 0, i32 5
  store i8 %conv92, i8* %writecount93, align 1
  br label %if.end.95

if.else:                                          ; preds = %if.then.85
  %92 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %writecount94 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %92, i32 0, i32 5
  store i8 1, i8* %writecount94, align 1
  br label %if.end.95

if.end.95:                                        ; preds = %if.else, %if.then.88
  %93 = load i32, i32* %j, align 4
  %idxprom96 = sext i32 %93 to i64
  %94 = load i32*, i32** %old_hash.addr, align 8
  %arrayidx97 = getelementptr inbounds i32, i32* %94, i64 %idxprom96
  %95 = load i32, i32* %arrayidx97, align 4
  %96 = load i32, i32* %i, align 4
  %idxprom98 = sext i32 %96 to i64
  %97 = load i32*, i32** %new_hash.addr, align 8
  %arrayidx99 = getelementptr inbounds i32, i32* %97, i64 %idxprom98
  %98 = load i32, i32* %arrayidx99, align 4
  %cmp100 = icmp ne i32 %95, %98
  br i1 %cmp100, label %if.then.102, label %if.end.106

if.then.102:                                      ; preds = %if.end.95
  %99 = load i32, i32* %i, align 4
  %idxprom103 = sext i32 %99 to i64
  %100 = load i32*, i32** %draw_cost.addr, align 8
  %arrayidx104 = getelementptr inbounds i32, i32* %100, i64 %idxprom103
  %101 = load i32, i32* %arrayidx104, align 4
  %102 = load i32, i32* %cost, align 4
  %add105 = add nsw i32 %102, %101
  store i32 %add105, i32* %cost, align 4
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.102, %if.end.95
  br label %if.end.200

if.else.107:                                      ; preds = %if.end.81
  %103 = load i32, i32* %i, align 4
  %104 = load i32, i32* %j, align 4
  %cmp108 = icmp sgt i32 %103, %104
  br i1 %cmp108, label %if.then.110, label %if.else.142

if.then.110:                                      ; preds = %if.else.107
  %105 = load i32, i32* %i, align 4
  %106 = load i32, i32* %j, align 4
  %sub111 = sub nsw i32 %105, %106
  store i32 %sub111, i32* %delta, align 4
  %107 = load i32, i32* %scroll_overhead, align 4
  %108 = load i32, i32* %delta, align 4
  %sub112 = sub nsw i32 0, %108
  %idxprom113 = sext i32 %sub112 to i64
  %109 = load i32*, i32** %first_insert_cost, align 8
  %arrayidx114 = getelementptr inbounds i32, i32* %109, i64 %idxprom113
  %110 = load i32, i32* %arrayidx114, align 4
  %add115 = add nsw i32 %107, %110
  %111 = load i32, i32* %delta, align 4
  %sub116 = sub nsw i32 %111, 1
  %112 = load i32, i32* %delta, align 4
  %sub117 = sub nsw i32 0, %112
  %idxprom118 = sext i32 %sub117 to i64
  %113 = load i32*, i32** %next_insert_cost, align 8
  %arrayidx119 = getelementptr inbounds i32, i32* %113, i64 %idxprom118
  %114 = load i32, i32* %arrayidx119, align 4
  %115 = load i32, i32* %extra_cost, align 4
  %add120 = add nsw i32 %114, %115
  %mul121 = mul nsw i32 %sub116, %add120
  %add122 = add nsw i32 %add115, %mul121
  %116 = load i32, i32* %cost, align 4
  %add123 = add nsw i32 %116, %add122
  store i32 %add123, i32* %cost, align 4
  %117 = load i32, i32* %j, align 4
  %sub124 = sub nsw i32 0, %117
  %idxprom125 = sext i32 %sub124 to i64
  %118 = load i32*, i32** %first_insert_cost, align 8
  %arrayidx126 = getelementptr inbounds i32, i32* %118, i64 %idxprom125
  %119 = load i32, i32* %arrayidx126, align 4
  %120 = load i32, i32* %j, align 4
  %sub127 = sub nsw i32 1, %120
  %idxprom128 = sext i32 %sub127 to i64
  %121 = load i32*, i32** %first_insert_cost, align 8
  %arrayidx129 = getelementptr inbounds i32, i32* %121, i64 %idxprom128
  %122 = load i32, i32* %arrayidx129, align 4
  %sub130 = sub nsw i32 %119, %122
  %123 = load i32, i32* %delta, align 4
  %sub131 = sub nsw i32 %123, 1
  %124 = load i32, i32* %j, align 4
  %sub132 = sub nsw i32 0, %124
  %idxprom133 = sext i32 %sub132 to i64
  %125 = load i32*, i32** %next_insert_cost, align 8
  %arrayidx134 = getelementptr inbounds i32, i32* %125, i64 %idxprom133
  %126 = load i32, i32* %arrayidx134, align 4
  %127 = load i32, i32* %j, align 4
  %sub135 = sub nsw i32 1, %127
  %idxprom136 = sext i32 %sub135 to i64
  %128 = load i32*, i32** %next_insert_cost, align 8
  %arrayidx137 = getelementptr inbounds i32, i32* %128, i64 %idxprom136
  %129 = load i32, i32* %arrayidx137, align 4
  %sub138 = sub nsw i32 %126, %129
  %mul139 = mul nsw i32 %sub131, %sub138
  %add140 = add nsw i32 %sub130, %mul139
  %130 = load i32, i32* %cost1, align 4
  %add141 = add nsw i32 %130, %add140
  store i32 %add141, i32* %cost1, align 4
  br label %if.end.174

if.else.142:                                      ; preds = %if.else.107
  %131 = load i32, i32* %j, align 4
  %132 = load i32, i32* %i, align 4
  %sub143 = sub nsw i32 %131, %132
  store i32 %sub143, i32* %delta, align 4
  %133 = load i32, i32* %scroll_overhead, align 4
  %134 = load i32, i32* %delta, align 4
  %sub144 = sub nsw i32 0, %134
  %idxprom145 = sext i32 %sub144 to i64
  %135 = load i32*, i32** %first_delete_cost, align 8
  %arrayidx146 = getelementptr inbounds i32, i32* %135, i64 %idxprom145
  %136 = load i32, i32* %arrayidx146, align 4
  %add147 = add nsw i32 %133, %136
  %137 = load i32, i32* %delta, align 4
  %sub148 = sub nsw i32 %137, 1
  %138 = load i32, i32* %delta, align 4
  %sub149 = sub nsw i32 0, %138
  %idxprom150 = sext i32 %sub149 to i64
  %139 = load i32*, i32** %next_delete_cost, align 8
  %arrayidx151 = getelementptr inbounds i32, i32* %139, i64 %idxprom150
  %140 = load i32, i32* %arrayidx151, align 4
  %141 = load i32, i32* %extra_cost, align 4
  %add152 = add nsw i32 %140, %141
  %mul153 = mul nsw i32 %sub148, %add152
  %add154 = add nsw i32 %add147, %mul153
  %142 = load i32, i32* %cost, align 4
  %add155 = add nsw i32 %142, %add154
  store i32 %add155, i32* %cost, align 4
  %143 = load i32, i32* %i, align 4
  %sub156 = sub nsw i32 0, %143
  %idxprom157 = sext i32 %sub156 to i64
  %144 = load i32*, i32** %first_delete_cost, align 8
  %arrayidx158 = getelementptr inbounds i32, i32* %144, i64 %idxprom157
  %145 = load i32, i32* %arrayidx158, align 4
  %146 = load i32, i32* %i, align 4
  %sub159 = sub nsw i32 1, %146
  %idxprom160 = sext i32 %sub159 to i64
  %147 = load i32*, i32** %first_delete_cost, align 8
  %arrayidx161 = getelementptr inbounds i32, i32* %147, i64 %idxprom160
  %148 = load i32, i32* %arrayidx161, align 4
  %sub162 = sub nsw i32 %145, %148
  %149 = load i32, i32* %delta, align 4
  %sub163 = sub nsw i32 %149, 1
  %150 = load i32, i32* %i, align 4
  %sub164 = sub nsw i32 0, %150
  %idxprom165 = sext i32 %sub164 to i64
  %151 = load i32*, i32** %next_delete_cost, align 8
  %arrayidx166 = getelementptr inbounds i32, i32* %151, i64 %idxprom165
  %152 = load i32, i32* %arrayidx166, align 4
  %153 = load i32, i32* %i, align 4
  %sub167 = sub nsw i32 1, %153
  %idxprom168 = sext i32 %sub167 to i64
  %154 = load i32*, i32** %next_delete_cost, align 8
  %arrayidx169 = getelementptr inbounds i32, i32* %154, i64 %idxprom168
  %155 = load i32, i32* %arrayidx169, align 4
  %sub170 = sub nsw i32 %152, %155
  %mul171 = mul nsw i32 %sub163, %sub170
  %add172 = add nsw i32 %sub162, %mul171
  %156 = load i32, i32* %cost1, align 4
  %add173 = add nsw i32 %156, %add172
  store i32 %add173, i32* %cost1, align 4
  br label %if.end.174

if.end.174:                                       ; preds = %if.else.142, %if.then.110
  %157 = load i32, i32* %cost1, align 4
  %158 = load i32, i32* %cost, align 4
  %cmp175 = icmp slt i32 %157, %158
  br i1 %cmp175, label %if.then.177, label %if.else.183

if.then.177:                                      ; preds = %if.end.174
  %159 = load i32, i32* %cost1, align 4
  store i32 %159, i32* %cost, align 4
  %160 = load %struct.matrix_elt*, %struct.matrix_elt** %p1, align 8
  %writecount178 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %160, i32 0, i32 5
  %161 = load i8, i8* %writecount178, align 1
  %conv179 = zext i8 %161 to i32
  %add180 = add nsw i32 %conv179, 1
  %conv181 = trunc i32 %add180 to i8
  %162 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %writecount182 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %162, i32 0, i32 5
  store i8 %conv181, i8* %writecount182, align 1
  br label %if.end.185

if.else.183:                                      ; preds = %if.end.174
  %163 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %writecount184 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %163, i32 0, i32 5
  store i8 1, i8* %writecount184, align 1
  br label %if.end.185

if.end.185:                                       ; preds = %if.else.183, %if.then.177
  %164 = load i32, i32* %j, align 4
  %idxprom186 = sext i32 %164 to i64
  %165 = load i32*, i32** %old_hash.addr, align 8
  %arrayidx187 = getelementptr inbounds i32, i32* %165, i64 %idxprom186
  %166 = load i32, i32* %arrayidx187, align 4
  %167 = load i32, i32* %i, align 4
  %idxprom188 = sext i32 %167 to i64
  %168 = load i32*, i32** %new_hash.addr, align 8
  %arrayidx189 = getelementptr inbounds i32, i32* %168, i64 %idxprom188
  %169 = load i32, i32* %arrayidx189, align 4
  %cmp190 = icmp ne i32 %166, %169
  br i1 %cmp190, label %if.then.192, label %if.end.199

if.then.192:                                      ; preds = %if.end.185
  %170 = load i32, i32* %i, align 4
  %idxprom193 = sext i32 %170 to i64
  %171 = load i32*, i32** %draw_cost.addr, align 8
  %arrayidx194 = getelementptr inbounds i32, i32* %171, i64 %idxprom193
  %172 = load i32, i32* %arrayidx194, align 4
  %173 = load i32, i32* %j, align 4
  %idxprom195 = sext i32 %173 to i64
  %174 = load i32*, i32** %old_draw_cost.addr, align 8
  %arrayidx196 = getelementptr inbounds i32, i32* %174, i64 %idxprom195
  %175 = load i32, i32* %arrayidx196, align 4
  %add197 = add nsw i32 %172, %175
  %176 = load i32, i32* %cost, align 4
  %add198 = add nsw i32 %176, %add197
  store i32 %add198, i32* %cost, align 4
  br label %if.end.199

if.end.199:                                       ; preds = %if.then.192, %if.end.185
  br label %if.end.200

if.end.200:                                       ; preds = %if.end.199, %if.end.106
  %177 = load i32, i32* %cost, align 4
  %178 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %writecost201 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %178, i32 0, i32 0
  store i32 %177, i32* %writecost201, align 4
  %179 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %180 = load i32, i32* %window_size.addr, align 4
  %idx.ext202 = sext i32 %180 to i64
  %idx.neg203 = sub i64 0, %idx.ext202
  %add.ptr204 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %179, i64 %idx.neg203
  %add.ptr205 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %add.ptr204, i64 -1
  store %struct.matrix_elt* %add.ptr205, %struct.matrix_elt** %p1, align 8
  %181 = load %struct.matrix_elt*, %struct.matrix_elt** %p1, align 8
  %writecost206 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %181, i32 0, i32 0
  %182 = load i32, i32* %writecost206, align 4
  store i32 %182, i32* %cost, align 4
  %183 = load i32, i32* %i, align 4
  %184 = load i32, i32* %j, align 4
  %cmp207 = icmp sgt i32 %183, %184
  br i1 %cmp207, label %land.lhs.true, label %if.end.214

land.lhs.true:                                    ; preds = %if.end.200
  %185 = load %struct.matrix_elt*, %struct.matrix_elt** %p1, align 8
  %deletecost209 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %185, i32 0, i32 2
  %186 = load i32, i32* %deletecost209, align 4
  %187 = load i32, i32* %cost, align 4
  %cmp210 = icmp slt i32 %186, %187
  br i1 %cmp210, label %if.then.212, label %if.end.214

if.then.212:                                      ; preds = %land.lhs.true
  %188 = load %struct.matrix_elt*, %struct.matrix_elt** %p1, align 8
  %deletecost213 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %188, i32 0, i32 2
  %189 = load i32, i32* %deletecost213, align 4
  store i32 %189, i32* %cost, align 4
  br label %if.end.214

if.end.214:                                       ; preds = %if.then.212, %land.lhs.true, %if.end.200
  %190 = load %struct.matrix_elt*, %struct.matrix_elt** %p1, align 8
  %insertcost215 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %190, i32 0, i32 1
  %191 = load i32, i32* %insertcost215, align 4
  %192 = load i32, i32* %cost, align 4
  %cmp216 = icmp sle i32 %191, %192
  br i1 %cmp216, label %if.then.218, label %if.else.225

if.then.218:                                      ; preds = %if.end.214
  %193 = load %struct.matrix_elt*, %struct.matrix_elt** %p1, align 8
  %insertcost219 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %193, i32 0, i32 1
  %194 = load i32, i32* %insertcost219, align 4
  store i32 %194, i32* %cost, align 4
  %195 = load %struct.matrix_elt*, %struct.matrix_elt** %p1, align 8
  %insertcount220 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %195, i32 0, i32 3
  %196 = load i8, i8* %insertcount220, align 1
  %conv221 = zext i8 %196 to i32
  %add222 = add nsw i32 %conv221, 1
  %conv223 = trunc i32 %add222 to i8
  %197 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %insertcount224 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %197, i32 0, i32 3
  store i8 %conv223, i8* %insertcount224, align 1
  br label %if.end.227

if.else.225:                                      ; preds = %if.end.214
  %198 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %insertcount226 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %198, i32 0, i32 3
  store i8 1, i8* %insertcount226, align 1
  br label %if.end.227

if.end.227:                                       ; preds = %if.else.225, %if.then.218
  %199 = load i32, i32* %i, align 4
  %idxprom228 = sext i32 %199 to i64
  %200 = load i32*, i32** %draw_cost.addr, align 8
  %arrayidx229 = getelementptr inbounds i32, i32* %200, i64 %idxprom228
  %201 = load i32, i32* %arrayidx229, align 4
  %202 = load i32, i32* %cost, align 4
  %add230 = add nsw i32 %202, %201
  store i32 %add230, i32* %cost, align 4
  %203 = load i32, i32* %cost, align 4
  %204 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %insertcost231 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %204, i32 0, i32 1
  store i32 %203, i32* %insertcost231, align 4
  %205 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %add.ptr232 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %205, i64 -1
  store %struct.matrix_elt* %add.ptr232, %struct.matrix_elt** %p1, align 8
  %206 = load %struct.matrix_elt*, %struct.matrix_elt** %p1, align 8
  %writecost233 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %206, i32 0, i32 0
  %207 = load i32, i32* %writecost233, align 4
  store i32 %207, i32* %cost, align 4
  %208 = load i32, i32* %i, align 4
  %209 = load i32, i32* %j, align 4
  %cmp234 = icmp slt i32 %208, %209
  br i1 %cmp234, label %land.lhs.true.236, label %if.end.242

land.lhs.true.236:                                ; preds = %if.end.227
  %210 = load %struct.matrix_elt*, %struct.matrix_elt** %p1, align 8
  %insertcost237 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %210, i32 0, i32 1
  %211 = load i32, i32* %insertcost237, align 4
  %212 = load i32, i32* %cost, align 4
  %cmp238 = icmp slt i32 %211, %212
  br i1 %cmp238, label %if.then.240, label %if.end.242

if.then.240:                                      ; preds = %land.lhs.true.236
  %213 = load %struct.matrix_elt*, %struct.matrix_elt** %p1, align 8
  %insertcost241 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %213, i32 0, i32 1
  %214 = load i32, i32* %insertcost241, align 4
  store i32 %214, i32* %cost, align 4
  br label %if.end.242

if.end.242:                                       ; preds = %if.then.240, %land.lhs.true.236, %if.end.227
  %215 = load %struct.matrix_elt*, %struct.matrix_elt** %p1, align 8
  %deletecost243 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %215, i32 0, i32 2
  %216 = load i32, i32* %deletecost243, align 4
  store i32 %216, i32* %cost1, align 4
  %217 = load %struct.matrix_elt*, %struct.matrix_elt** %p1, align 8
  %deletecost244 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %217, i32 0, i32 2
  %218 = load i32, i32* %deletecost244, align 4
  %219 = load i32, i32* %cost, align 4
  %cmp245 = icmp sle i32 %218, %219
  br i1 %cmp245, label %if.then.247, label %if.else.254

if.then.247:                                      ; preds = %if.end.242
  %220 = load %struct.matrix_elt*, %struct.matrix_elt** %p1, align 8
  %deletecost248 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %220, i32 0, i32 2
  %221 = load i32, i32* %deletecost248, align 4
  store i32 %221, i32* %cost, align 4
  %222 = load %struct.matrix_elt*, %struct.matrix_elt** %p1, align 8
  %deletecount249 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %222, i32 0, i32 4
  %223 = load i8, i8* %deletecount249, align 1
  %conv250 = zext i8 %223 to i32
  %add251 = add nsw i32 %conv250, 1
  %conv252 = trunc i32 %add251 to i8
  %224 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %deletecount253 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %224, i32 0, i32 4
  store i8 %conv252, i8* %deletecount253, align 1
  br label %if.end.256

if.else.254:                                      ; preds = %if.end.242
  %225 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %deletecount255 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %225, i32 0, i32 4
  store i8 1, i8* %deletecount255, align 1
  br label %if.end.256

if.end.256:                                       ; preds = %if.else.254, %if.then.247
  %226 = load i32, i32* %cost, align 4
  %227 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %deletecost257 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %227, i32 0, i32 2
  store i32 %226, i32* %deletecost257, align 4
  br label %for.inc.258

for.inc.258:                                      ; preds = %if.end.256
  %228 = load i32, i32* %j, align 4
  %inc259 = add nsw i32 %228, 1
  store i32 %inc259, i32* %j, align 4
  %229 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %incdec.ptr = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %229, i32 1
  store %struct.matrix_elt* %incdec.ptr, %struct.matrix_elt** %p, align 8
  br label %for.cond.68

for.end.260:                                      ; preds = %for.cond.68
  br label %for.inc.261

for.inc.261:                                      ; preds = %for.end.260
  %230 = load i32, i32* %i, align 4
  %inc262 = add nsw i32 %230, 1
  store i32 %inc262, i32* %i, align 4
  %231 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %incdec.ptr263 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %231, i32 1
  store %struct.matrix_elt* %incdec.ptr263, %struct.matrix_elt** %p, align 8
  br label %for.cond.64

for.end.264:                                      ; preds = %for.cond.64
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_direct_scrolling(%struct.frame* %frame, %struct.glyph_matrix* %current_matrix, %struct.matrix_elt* %cost_matrix, i32 %window_size, i32 %unchanged_at_top) #0 {
entry:
  %frame.addr = alloca %struct.frame*, align 8
  %current_matrix.addr = alloca %struct.glyph_matrix*, align 8
  %cost_matrix.addr = alloca %struct.matrix_elt*, align 8
  %window_size.addr = alloca i32, align 4
  %unchanged_at_top.addr = alloca i32, align 4
  %p = alloca %struct.matrix_elt*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  %queue_start = alloca %struct.alt_queue*, align 8
  %queue = alloca %struct.alt_queue*, align 8
  %terminal_window_p = alloca i8, align 1
  %write_follows_p = alloca i8, align 1
  %copy_from = alloca i32*, align 8
  %retained_p = alloca i8*, align 8
  %n_to_write = alloca i32, align 4
  %next = alloca i32, align 4
  store %struct.frame* %frame, %struct.frame** %frame.addr, align 8
  store %struct.glyph_matrix* %current_matrix, %struct.glyph_matrix** %current_matrix.addr, align 8
  store %struct.matrix_elt* %cost_matrix, %struct.matrix_elt** %cost_matrix.addr, align 8
  store i32 %window_size, i32* %window_size.addr, align 4
  store i32 %unchanged_at_top, i32* %unchanged_at_top.addr, align 4
  store i64 16384, i64* %sa_avail, align 8
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %window_size.addr, align 4
  %conv = sext i32 %0 to i64
  %1 = load i64, i64* %sa_avail, align 8
  %div = udiv i64 %1, 12
  %div1 = udiv i64 %div, 1
  %cmp = icmp ule i64 %conv, %div1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %2 = load i32, i32* %window_size.addr, align 4
  %conv3 = sext i32 %2 to i64
  %mul = mul i64 12, %conv3
  %3 = load i64, i64* %sa_avail, align 8
  %sub = sub i64 %3, %mul
  store i64 %sub, i64* %sa_avail, align 8
  %4 = load i32, i32* %window_size.addr, align 4
  %conv4 = sext i32 %4 to i64
  %mul5 = mul i64 12, %conv4
  %5 = alloca i8, i64 %mul5
  %6 = bitcast i8* %5 to %struct.alt_queue*
  store %struct.alt_queue* %6, %struct.alt_queue** %queue_start, align 8
  br label %if.end

if.else:                                          ; preds = %do.body
  %7 = load i32, i32* %window_size.addr, align 4
  %conv6 = sext i32 %7 to i64
  %call7 = call noalias i8* @xnmalloc(i64 %conv6, i64 12)
  %8 = bitcast i8* %call7 to %struct.alt_queue*
  store %struct.alt_queue* %8, %struct.alt_queue** %queue_start, align 8
  store i8 1, i8* %sa_must_free, align 1
  %9 = load %struct.alt_queue*, %struct.alt_queue** %queue_start, align 8
  %10 = bitcast %struct.alt_queue* %9 to i8*
  call void @record_unwind_protect_ptr(void (i8*)* @xfree, i8* %10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %11 = load %struct.alt_queue*, %struct.alt_queue** %queue_start, align 8
  store %struct.alt_queue* %11, %struct.alt_queue** %queue, align 8
  store i8 0, i8* %terminal_window_p, align 1
  store i8 1, i8* %write_follows_p, align 1
  br label %do.body.8

do.body.8:                                        ; preds = %do.end
  %12 = load i32, i32* %window_size.addr, align 4
  %conv9 = sext i32 %12 to i64
  %13 = load i64, i64* %sa_avail, align 8
  %div10 = udiv i64 %13, 4
  %div11 = udiv i64 %div10, 1
  %cmp12 = icmp ule i64 %conv9, %div11
  br i1 %cmp12, label %if.then.14, label %if.else.20

if.then.14:                                       ; preds = %do.body.8
  %14 = load i32, i32* %window_size.addr, align 4
  %conv15 = sext i32 %14 to i64
  %mul16 = mul i64 4, %conv15
  %15 = load i64, i64* %sa_avail, align 8
  %sub17 = sub i64 %15, %mul16
  store i64 %sub17, i64* %sa_avail, align 8
  %16 = load i32, i32* %window_size.addr, align 4
  %conv18 = sext i32 %16 to i64
  %mul19 = mul i64 4, %conv18
  %17 = alloca i8, i64 %mul19
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %copy_from, align 8
  br label %if.end.23

if.else.20:                                       ; preds = %do.body.8
  %19 = load i32, i32* %window_size.addr, align 4
  %conv21 = sext i32 %19 to i64
  %call22 = call noalias i8* @xnmalloc(i64 %conv21, i64 4)
  %20 = bitcast i8* %call22 to i32*
  store i32* %20, i32** %copy_from, align 8
  store i8 1, i8* %sa_must_free, align 1
  %21 = load i32*, i32** %copy_from, align 8
  %22 = bitcast i32* %21 to i8*
  call void @record_unwind_protect_ptr(void (i8*)* @xfree, i8* %22)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.20, %if.then.14
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  %23 = load i32, i32* %window_size.addr, align 4
  %conv25 = sext i32 %23 to i64
  %24 = load i64, i64* %sa_avail, align 8
  %cmp26 = icmp sle i64 %conv25, %24
  br i1 %cmp26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.24
  %25 = load i32, i32* %window_size.addr, align 4
  %conv28 = sext i32 %25 to i64
  %26 = load i64, i64* %sa_avail, align 8
  %sub29 = sub nsw i64 %26, %conv28
  store i64 %sub29, i64* %sa_avail, align 8
  %27 = load i32, i32* %window_size.addr, align 4
  %conv30 = sext i32 %27 to i64
  %28 = alloca i8, i64 %conv30
  br label %cond.end

cond.false:                                       ; preds = %do.end.24
  store i8 1, i8* %sa_must_free, align 1
  %29 = load i32, i32* %window_size.addr, align 4
  %conv31 = sext i32 %29 to i64
  %call32 = call i8* @record_xmalloc(i64 %conv31)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %28, %cond.true ], [ %call32, %cond.false ]
  store i8* %cond, i8** %retained_p, align 8
  %30 = load i8*, i8** %retained_p, align 8
  %31 = load i32, i32* %window_size.addr, align 4
  %conv33 = sext i32 %31 to i64
  %mul34 = mul i64 %conv33, 1
  call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %mul34, i32 1, i1 false)
  %32 = load i32, i32* %window_size.addr, align 4
  store i32 %32, i32* %j, align 4
  store i32 %32, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.103, %cond.end
  %33 = load i32, i32* %i, align 4
  %cmp35 = icmp sgt i32 %33, 0
  br i1 %cmp35, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %34 = load i32, i32* %j, align 4
  %cmp37 = icmp sgt i32 %34, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %35 = phi i1 [ true, %while.cond ], [ %cmp37, %lor.rhs ]
  br i1 %35, label %while.body, label %while.end.104

while.body:                                       ; preds = %lor.end
  %36 = load %struct.matrix_elt*, %struct.matrix_elt** %cost_matrix.addr, align 8
  %37 = load i32, i32* %i, align 4
  %38 = load i32, i32* %window_size.addr, align 4
  %add = add nsw i32 %38, 1
  %mul39 = mul nsw i32 %37, %add
  %idx.ext = sext i32 %mul39 to i64
  %add.ptr = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %36, i64 %idx.ext
  %39 = load i32, i32* %j, align 4
  %idx.ext40 = sext i32 %39 to i64
  %add.ptr41 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %add.ptr, i64 %idx.ext40
  store %struct.matrix_elt* %add.ptr41, %struct.matrix_elt** %p, align 8
  %40 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %insertcost = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %40, i32 0, i32 1
  %41 = load i32, i32* %insertcost, align 4
  %42 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %writecost = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %42, i32 0, i32 0
  %43 = load i32, i32* %writecost, align 4
  %cmp42 = icmp slt i32 %41, %43
  br i1 %cmp42, label %land.lhs.true, label %if.else.57

land.lhs.true:                                    ; preds = %while.body
  %44 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %insertcost44 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %44, i32 0, i32 1
  %45 = load i32, i32* %insertcost44, align 4
  %46 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %deletecost = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %46, i32 0, i32 2
  %47 = load i32, i32* %deletecost, align 4
  %cmp45 = icmp slt i32 %45, %47
  br i1 %cmp45, label %land.lhs.true.47, label %if.else.57

land.lhs.true.47:                                 ; preds = %land.lhs.true
  %48 = load i8, i8* %write_follows_p, align 1
  %tobool = trunc i8 %48 to i1
  br i1 %tobool, label %if.then.51, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.47
  %49 = load i32, i32* %i, align 4
  %50 = load i32, i32* %j, align 4
  %cmp49 = icmp slt i32 %49, %50
  br i1 %cmp49, label %if.then.51, label %if.else.57

if.then.51:                                       ; preds = %lor.lhs.false, %land.lhs.true.47
  %51 = load %struct.alt_queue*, %struct.alt_queue** %queue, align 8
  %count = getelementptr inbounds %struct.alt_queue, %struct.alt_queue* %51, i32 0, i32 0
  store i32 0, i32* %count, align 4
  %52 = load i32, i32* %i, align 4
  %53 = load %struct.alt_queue*, %struct.alt_queue** %queue, align 8
  %window = getelementptr inbounds %struct.alt_queue, %struct.alt_queue* %53, i32 0, i32 2
  store i32 %52, i32* %window, align 4
  %54 = load i32, i32* %i, align 4
  %55 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %insertcount = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %55, i32 0, i32 3
  %56 = load i8, i8* %insertcount, align 1
  %conv52 = zext i8 %56 to i32
  %sub53 = sub nsw i32 %54, %conv52
  %57 = load %struct.alt_queue*, %struct.alt_queue** %queue, align 8
  %pos = getelementptr inbounds %struct.alt_queue, %struct.alt_queue* %57, i32 0, i32 1
  store i32 %sub53, i32* %pos, align 4
  %58 = load %struct.alt_queue*, %struct.alt_queue** %queue, align 8
  %incdec.ptr = getelementptr inbounds %struct.alt_queue, %struct.alt_queue* %58, i32 1
  store %struct.alt_queue* %incdec.ptr, %struct.alt_queue** %queue, align 8
  %59 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %insertcount54 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %59, i32 0, i32 3
  %60 = load i8, i8* %insertcount54, align 1
  %conv55 = zext i8 %60 to i32
  %61 = load i32, i32* %i, align 4
  %sub56 = sub nsw i32 %61, %conv55
  store i32 %sub56, i32* %i, align 4
  store i8 0, i8* %write_follows_p, align 1
  br label %if.end.103

if.else.57:                                       ; preds = %lor.lhs.false, %land.lhs.true, %while.body
  %62 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %deletecost58 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %62, i32 0, i32 2
  %63 = load i32, i32* %deletecost58, align 4
  %64 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %writecost59 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %64, i32 0, i32 0
  %65 = load i32, i32* %writecost59, align 4
  %cmp60 = icmp slt i32 %63, %65
  br i1 %cmp60, label %land.lhs.true.62, label %if.else.71

land.lhs.true.62:                                 ; preds = %if.else.57
  %66 = load i8, i8* %write_follows_p, align 1
  %tobool63 = trunc i8 %66 to i1
  br i1 %tobool63, label %if.then.68, label %lor.lhs.false.65

lor.lhs.false.65:                                 ; preds = %land.lhs.true.62
  %67 = load i32, i32* %i, align 4
  %68 = load i32, i32* %j, align 4
  %cmp66 = icmp sgt i32 %67, %68
  br i1 %cmp66, label %if.then.68, label %if.else.71

if.then.68:                                       ; preds = %lor.lhs.false.65, %land.lhs.true.62
  store i8 0, i8* %write_follows_p, align 1
  %69 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %deletecount = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %69, i32 0, i32 4
  %70 = load i8, i8* %deletecount, align 1
  %conv69 = zext i8 %70 to i32
  %71 = load i32, i32* %j, align 4
  %sub70 = sub nsw i32 %71, %conv69
  store i32 %sub70, i32* %j, align 4
  br label %if.end.102

if.else.71:                                       ; preds = %lor.lhs.false.65, %if.else.57
  %72 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %writecount = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %72, i32 0, i32 5
  %73 = load i8, i8* %writecount, align 1
  %conv72 = zext i8 %73 to i32
  store i32 %conv72, i32* %n_to_write, align 4
  store i8 1, i8* %write_follows_p, align 1
  %74 = load i32, i32* %i, align 4
  %75 = load i32, i32* %j, align 4
  %cmp73 = icmp sgt i32 %74, %75
  br i1 %cmp73, label %if.then.75, label %if.else.80

if.then.75:                                       ; preds = %if.else.71
  %76 = load %struct.frame*, %struct.frame** %frame.addr, align 8
  %77 = load i32, i32* %i, align 4
  %78 = load i32, i32* %unchanged_at_top.addr, align 4
  %add76 = add nsw i32 %77, %78
  call void @set_terminal_window(%struct.frame* %76, i32 %add76)
  store i8 1, i8* %terminal_window_p, align 1
  %79 = load %struct.frame*, %struct.frame** %frame.addr, align 8
  %80 = load i32, i32* %j, align 4
  %81 = load i32, i32* %n_to_write, align 4
  %sub77 = sub nsw i32 %80, %81
  %82 = load i32, i32* %unchanged_at_top.addr, align 4
  %add78 = add nsw i32 %sub77, %82
  %83 = load i32, i32* %i, align 4
  %84 = load i32, i32* %j, align 4
  %sub79 = sub nsw i32 %83, %84
  call void @ins_del_lines(%struct.frame* %79, i32 %add78, i32 %sub79)
  br label %if.end.93

if.else.80:                                       ; preds = %if.else.71
  %85 = load i32, i32* %i, align 4
  %86 = load i32, i32* %j, align 4
  %cmp81 = icmp slt i32 %85, %86
  br i1 %cmp81, label %if.then.83, label %if.end.92

if.then.83:                                       ; preds = %if.else.80
  %87 = load i32, i32* %i, align 4
  %88 = load i32, i32* %n_to_write, align 4
  %sub84 = sub nsw i32 %87, %88
  %89 = load i32, i32* %unchanged_at_top.addr, align 4
  %add85 = add nsw i32 %sub84, %89
  %90 = load %struct.alt_queue*, %struct.alt_queue** %queue, align 8
  %pos86 = getelementptr inbounds %struct.alt_queue, %struct.alt_queue* %90, i32 0, i32 1
  store i32 %add85, i32* %pos86, align 4
  %91 = load i32, i32* %j, align 4
  %92 = load i32, i32* %unchanged_at_top.addr, align 4
  %add87 = add nsw i32 %91, %92
  %93 = load %struct.alt_queue*, %struct.alt_queue** %queue, align 8
  %window88 = getelementptr inbounds %struct.alt_queue, %struct.alt_queue* %93, i32 0, i32 2
  store i32 %add87, i32* %window88, align 4
  %94 = load i32, i32* %i, align 4
  %95 = load i32, i32* %j, align 4
  %sub89 = sub nsw i32 %94, %95
  %96 = load %struct.alt_queue*, %struct.alt_queue** %queue, align 8
  %count90 = getelementptr inbounds %struct.alt_queue, %struct.alt_queue* %96, i32 0, i32 0
  store i32 %sub89, i32* %count90, align 4
  %97 = load %struct.alt_queue*, %struct.alt_queue** %queue, align 8
  %incdec.ptr91 = getelementptr inbounds %struct.alt_queue, %struct.alt_queue* %97, i32 1
  store %struct.alt_queue* %incdec.ptr91, %struct.alt_queue** %queue, align 8
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.83, %if.else.80
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.then.75
  br label %while.cond.94

while.cond.94:                                    ; preds = %while.body.97, %if.end.93
  %98 = load i32, i32* %n_to_write, align 4
  %cmp95 = icmp sgt i32 %98, 0
  br i1 %cmp95, label %while.body.97, label %while.end

while.body.97:                                    ; preds = %while.cond.94
  %99 = load i32, i32* %i, align 4
  %dec = add nsw i32 %99, -1
  store i32 %dec, i32* %i, align 4
  %100 = load i32, i32* %j, align 4
  %dec98 = add nsw i32 %100, -1
  store i32 %dec98, i32* %j, align 4
  %101 = load i32, i32* %n_to_write, align 4
  %dec99 = add nsw i32 %101, -1
  store i32 %dec99, i32* %n_to_write, align 4
  %102 = load i32, i32* %j, align 4
  %103 = load i32, i32* %i, align 4
  %idxprom = sext i32 %103 to i64
  %104 = load i32*, i32** %copy_from, align 8
  %arrayidx = getelementptr inbounds i32, i32* %104, i64 %idxprom
  store i32 %102, i32* %arrayidx, align 4
  %105 = load i32, i32* %j, align 4
  %idxprom100 = sext i32 %105 to i64
  %106 = load i8*, i8** %retained_p, align 8
  %arrayidx101 = getelementptr inbounds i8, i8* %106, i64 %idxprom100
  store i8 1, i8* %arrayidx101, align 1
  br label %while.cond.94

while.end:                                        ; preds = %while.cond.94
  br label %if.end.102

if.end.102:                                       ; preds = %while.end, %if.then.68
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %if.then.51
  br label %while.cond

while.end.104:                                    ; preds = %lor.end
  %107 = load %struct.alt_queue*, %struct.alt_queue** %queue, align 8
  %108 = load %struct.alt_queue*, %struct.alt_queue** %queue_start, align 8
  %cmp105 = icmp ugt %struct.alt_queue* %107, %108
  br i1 %cmp105, label %if.then.107, label %if.end.135

if.then.107:                                      ; preds = %while.end.104
  store i32 -1, i32* %next, align 4
  br label %do.body.108

do.body.108:                                      ; preds = %do.cond, %if.then.107
  %109 = load %struct.alt_queue*, %struct.alt_queue** %queue, align 8
  %incdec.ptr109 = getelementptr inbounds %struct.alt_queue, %struct.alt_queue* %109, i32 -1
  store %struct.alt_queue* %incdec.ptr109, %struct.alt_queue** %queue, align 8
  %110 = load %struct.alt_queue*, %struct.alt_queue** %queue, align 8
  %count110 = getelementptr inbounds %struct.alt_queue, %struct.alt_queue* %110, i32 0, i32 0
  %111 = load i32, i32* %count110, align 4
  %tobool111 = icmp ne i32 %111, 0
  br i1 %tobool111, label %if.then.112, label %if.else.116

if.then.112:                                      ; preds = %do.body.108
  %112 = load %struct.frame*, %struct.frame** %frame.addr, align 8
  %113 = load %struct.alt_queue*, %struct.alt_queue** %queue, align 8
  %window113 = getelementptr inbounds %struct.alt_queue, %struct.alt_queue* %113, i32 0, i32 2
  %114 = load i32, i32* %window113, align 4
  call void @set_terminal_window(%struct.frame* %112, i32 %114)
  store i8 1, i8* %terminal_window_p, align 1
  %115 = load %struct.frame*, %struct.frame** %frame.addr, align 8
  %116 = load %struct.alt_queue*, %struct.alt_queue** %queue, align 8
  %pos114 = getelementptr inbounds %struct.alt_queue, %struct.alt_queue* %116, i32 0, i32 1
  %117 = load i32, i32* %pos114, align 4
  %118 = load %struct.alt_queue*, %struct.alt_queue** %queue, align 8
  %count115 = getelementptr inbounds %struct.alt_queue, %struct.alt_queue* %118, i32 0, i32 0
  %119 = load i32, i32* %count115, align 4
  call void @ins_del_lines(%struct.frame* %115, i32 %117, i32 %119)
  br label %if.end.131

if.else.116:                                      ; preds = %do.body.108
  %120 = load %struct.alt_queue*, %struct.alt_queue** %queue, align 8
  %window117 = getelementptr inbounds %struct.alt_queue, %struct.alt_queue* %120, i32 0, i32 2
  %121 = load i32, i32* %window117, align 4
  %sub118 = sub nsw i32 %121, 1
  store i32 %sub118, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.116
  %122 = load i32, i32* %j, align 4
  %123 = load %struct.alt_queue*, %struct.alt_queue** %queue, align 8
  %pos119 = getelementptr inbounds %struct.alt_queue, %struct.alt_queue* %123, i32 0, i32 1
  %124 = load i32, i32* %pos119, align 4
  %cmp120 = icmp sge i32 %122, %124
  br i1 %cmp120, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %while.cond.122

while.cond.122:                                   ; preds = %while.body.126, %for.body
  %125 = load i32, i32* %next, align 4
  %inc = add nsw i32 %125, 1
  store i32 %inc, i32* %next, align 4
  %idxprom123 = sext i32 %inc to i64
  %126 = load i8*, i8** %retained_p, align 8
  %arrayidx124 = getelementptr inbounds i8, i8* %126, i64 %idxprom123
  %127 = load i8, i8* %arrayidx124, align 1
  %tobool125 = icmp ne i8 %127, 0
  br i1 %tobool125, label %while.body.126, label %while.end.127

while.body.126:                                   ; preds = %while.cond.122
  br label %while.cond.122

while.end.127:                                    ; preds = %while.cond.122
  %128 = load i32, i32* %next, align 4
  %129 = load i32, i32* %j, align 4
  %idxprom128 = sext i32 %129 to i64
  %130 = load i32*, i32** %copy_from, align 8
  %arrayidx129 = getelementptr inbounds i32, i32* %130, i64 %idxprom128
  store i32 %128, i32* %arrayidx129, align 4
  br label %for.inc

for.inc:                                          ; preds = %while.end.127
  %131 = load i32, i32* %j, align 4
  %dec130 = add nsw i32 %131, -1
  store i32 %dec130, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.131

if.end.131:                                       ; preds = %for.end, %if.then.112
  br label %do.cond

do.cond:                                          ; preds = %if.end.131
  %132 = load %struct.alt_queue*, %struct.alt_queue** %queue, align 8
  %133 = load %struct.alt_queue*, %struct.alt_queue** %queue_start, align 8
  %cmp132 = icmp ugt %struct.alt_queue* %132, %133
  br i1 %cmp132, label %do.body.108, label %do.end.134

do.end.134:                                       ; preds = %do.cond
  br label %if.end.135

if.end.135:                                       ; preds = %do.end.134, %while.end.104
  %134 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix.addr, align 8
  %135 = load i32, i32* %unchanged_at_top.addr, align 4
  %136 = load i32, i32* %window_size.addr, align 4
  %137 = load i32*, i32** %copy_from, align 8
  %138 = load i8*, i8** %retained_p, align 8
  call void @mirrored_line_dance(%struct.glyph_matrix* %134, i32 %135, i32 %136, i32* %137, i8* %138)
  %139 = load i8, i8* %terminal_window_p, align 1
  %tobool136 = trunc i8 %139 to i1
  br i1 %tobool136, label %if.then.137, label %if.end.138

if.then.137:                                      ; preds = %if.end.135
  %140 = load %struct.frame*, %struct.frame** %frame.addr, align 8
  call void @set_terminal_window(%struct.frame* %140, i32 0)
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.137, %if.end.135
  br label %do.body.139

do.body.139:                                      ; preds = %if.end.138
  %141 = load i8, i8* %sa_must_free, align 1
  %tobool140 = trunc i8 %141 to i1
  br i1 %tobool140, label %if.then.141, label %if.end.144

if.then.141:                                      ; preds = %do.body.139
  store i8 0, i8* %sa_must_free, align 1
  %142 = load i64, i64* %sa_count, align 8
  %call142 = call i64 @builtin_lisp_symbol(i32 0)
  %call143 = call i64 @unbind_to(i64 %142, i64 %call142)
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.141, %do.body.139
  br label %do.end.146

do.end.146:                                       ; preds = %if.end.144
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @calculate_scrolling(%struct.frame* %frame, %struct.matrix_elt* %matrix, i32 %window_size, i32 %lines_below, i32* %draw_cost, i32* %old_hash, i32* %new_hash, i32 %free_at_end) #0 {
entry:
  %frame.addr = alloca %struct.frame*, align 8
  %matrix.addr = alloca %struct.matrix_elt*, align 8
  %window_size.addr = alloca i32, align 4
  %lines_below.addr = alloca i32, align 4
  %draw_cost.addr = alloca i32*, align 8
  %old_hash.addr = alloca i32*, align 8
  %new_hash.addr = alloca i32*, align 8
  %free_at_end.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %frame_total_lines = alloca i32, align 4
  %p = alloca %struct.matrix_elt*, align 8
  %p1 = alloca %struct.matrix_elt*, align 8
  %cost = alloca i32, align 4
  %cost1 = alloca i32, align 4
  %lines_moved = alloca i32, align 4
  %first_insert_cost = alloca i32*, align 8
  %first_delete_cost = alloca i32*, align 8
  %next_insert_cost = alloca i32*, align 8
  %next_delete_cost = alloca i32*, align 8
  %extra_cost = alloca i32, align 4
  store %struct.frame* %frame, %struct.frame** %frame.addr, align 8
  store %struct.matrix_elt* %matrix, %struct.matrix_elt** %matrix.addr, align 8
  store i32 %window_size, i32* %window_size.addr, align 4
  store i32 %lines_below, i32* %lines_below.addr, align 4
  store i32* %draw_cost, i32** %draw_cost.addr, align 8
  store i32* %old_hash, i32** %old_hash.addr, align 8
  store i32* %new_hash, i32** %new_hash.addr, align 8
  store i32 %free_at_end, i32* %free_at_end.addr, align 4
  %0 = load %struct.frame*, %struct.frame** %frame.addr, align 8
  %total_lines = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 39
  %1 = load i32, i32* %total_lines, align 4
  store i32 %1, i32* %frame_total_lines, align 4
  %2 = load i32, i32* %window_size.addr, align 4
  %3 = load %struct.frame*, %struct.frame** %frame.addr, align 8
  %output_method = getelementptr inbounds %struct.frame, %struct.frame* %3, i32 0, i32 26
  %4 = bitcast i48* %output_method to i64*
  %bf.load = load i64, i64* %4, align 8
  %bf.lshr = lshr i64 %bf.load, 23
  %bf.clear = and i64 %bf.lshr, 7
  %bf.cast = trunc i64 %bf.clear to i32
  %cmp = icmp eq i32 %bf.cast, 1
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.frame*, %struct.frame** %frame.addr, align 8
  %output_method1 = getelementptr inbounds %struct.frame, %struct.frame* %5, i32 0, i32 26
  %6 = bitcast i48* %output_method1 to i64*
  %bf.load2 = load i64, i64* %6, align 8
  %bf.lshr3 = lshr i64 %bf.load2, 23
  %bf.clear4 = and i64 %bf.lshr3, 7
  %bf.cast5 = trunc i64 %bf.clear4 to i32
  %cmp6 = icmp eq i32 %bf.cast5, 3
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %7 = load %struct.frame*, %struct.frame** %frame.addr, align 8
  %terminal = getelementptr inbounds %struct.frame, %struct.frame* %7, i32 0, i32 61
  %8 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %display_info = getelementptr inbounds %struct.terminal, %struct.terminal* %8, i32 0, i32 12
  %tty = bitcast %union.display_info* %display_info to %struct.tty_display_info**
  %9 = load %struct.tty_display_info*, %struct.tty_display_info** %tty, align 8
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  call void @emacs_abort() #4
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %10, %cond.true
  %cond = phi %struct.tty_display_info* [ %9, %cond.true ], [ null, %10 ]
  %scroll_region_ok = getelementptr inbounds %struct.tty_display_info, %struct.tty_display_info* %cond, i32 0, i32 75
  %bf.load7 = load i8, i8* %scroll_region_ok, align 4
  %bf.lshr8 = lshr i8 %bf.load7, 6
  %bf.clear9 = and i8 %bf.lshr8, 1
  %bf.cast10 = trunc i8 %bf.clear9 to i1
  br i1 %bf.cast10, label %cond.true.11, label %cond.false.12

cond.true.11:                                     ; preds = %cond.end
  br label %cond.end.13

cond.false.12:                                    ; preds = %cond.end
  %11 = load i32, i32* %lines_below.addr, align 4
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.12, %cond.true.11
  %cond14 = phi i32 [ 0, %cond.true.11 ], [ %11, %cond.false.12 ]
  %add = add nsw i32 %2, %cond14
  store i32 %add, i32* %lines_moved, align 4
  %12 = load i32, i32* %frame_total_lines, align 4
  %sub = sub nsw i32 %12, 1
  %13 = load i32, i32* %lines_moved, align 4
  %sub15 = sub nsw i32 %sub, %13
  %idxprom = sext i32 %sub15 to i64
  %14 = load %struct.frame*, %struct.frame** %frame.addr, align 8
  %insert_line_cost = getelementptr inbounds %struct.frame, %struct.frame* %14, i32 0, i32 32
  %15 = load i32*, i32** %insert_line_cost, align 8
  %arrayidx = getelementptr inbounds i32, i32* %15, i64 %idxprom
  store i32* %arrayidx, i32** %first_insert_cost, align 8
  %16 = load i32, i32* %frame_total_lines, align 4
  %sub16 = sub nsw i32 %16, 1
  %17 = load i32, i32* %lines_moved, align 4
  %sub17 = sub nsw i32 %sub16, %17
  %idxprom18 = sext i32 %sub17 to i64
  %18 = load %struct.frame*, %struct.frame** %frame.addr, align 8
  %delete_line_cost = getelementptr inbounds %struct.frame, %struct.frame* %18, i32 0, i32 33
  %19 = load i32*, i32** %delete_line_cost, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %19, i64 %idxprom18
  store i32* %arrayidx19, i32** %first_delete_cost, align 8
  %20 = load i32, i32* %frame_total_lines, align 4
  %sub20 = sub nsw i32 %20, 1
  %21 = load i32, i32* %lines_moved, align 4
  %sub21 = sub nsw i32 %sub20, %21
  %idxprom22 = sext i32 %sub21 to i64
  %22 = load %struct.frame*, %struct.frame** %frame.addr, align 8
  %insert_n_lines_cost = getelementptr inbounds %struct.frame, %struct.frame* %22, i32 0, i32 34
  %23 = load i32*, i32** %insert_n_lines_cost, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %23, i64 %idxprom22
  store i32* %arrayidx23, i32** %next_insert_cost, align 8
  %24 = load i32, i32* %frame_total_lines, align 4
  %sub24 = sub nsw i32 %24, 1
  %25 = load i32, i32* %lines_moved, align 4
  %sub25 = sub nsw i32 %sub24, %25
  %idxprom26 = sext i32 %sub25 to i64
  %26 = load %struct.frame*, %struct.frame** %frame.addr, align 8
  %delete_n_lines_cost = getelementptr inbounds %struct.frame, %struct.frame* %26, i32 0, i32 35
  %27 = load i32*, i32** %delete_n_lines_cost, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %27, i64 %idxprom26
  store i32* %arrayidx27, i32** %next_delete_cost, align 8
  %28 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 381), align 8
  %29 = load i32, i32* %frame_total_lines, align 4
  %mul = mul nsw i32 40, %29
  %conv = sext i32 %mul to i64
  %div = sdiv i64 %28, %conv
  %conv28 = trunc i64 %div to i32
  store i32 %conv28, i32* %extra_cost, align 4
  %30 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 381), align 8
  %cmp29 = icmp sle i64 %30, 0
  br i1 %cmp29, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.13
  store i32 1, i32* %extra_cost, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.13
  %31 = load %struct.matrix_elt*, %struct.matrix_elt** %matrix.addr, align 8
  %writecost = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %31, i32 0, i32 0
  store i32 0, i32* %writecost, align 4
  %32 = load %struct.matrix_elt*, %struct.matrix_elt** %matrix.addr, align 8
  %insertcost = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %32, i32 0, i32 1
  store i32 1000000, i32* %insertcost, align 4
  %33 = load %struct.matrix_elt*, %struct.matrix_elt** %matrix.addr, align 8
  %deletecost = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %33, i32 0, i32 2
  store i32 1000000, i32* %deletecost, align 4
  %34 = load %struct.matrix_elt*, %struct.matrix_elt** %matrix.addr, align 8
  %insertcount = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %34, i32 0, i32 3
  store i8 0, i8* %insertcount, align 1
  %35 = load %struct.matrix_elt*, %struct.matrix_elt** %matrix.addr, align 8
  %deletecount = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %35, i32 0, i32 4
  store i8 0, i8* %deletecount, align 1
  %36 = load i32*, i32** %first_insert_cost, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %36, i64 1
  %37 = load i32, i32* %arrayidx31, align 4
  %38 = load i32*, i32** %next_insert_cost, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %38, i64 1
  %39 = load i32, i32* %arrayidx32, align 4
  %sub33 = sub nsw i32 %37, %39
  store i32 %sub33, i32* %cost, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %40 = load i32, i32* %i, align 4
  %41 = load i32, i32* %window_size.addr, align 4
  %cmp34 = icmp sle i32 %40, %41
  br i1 %cmp34, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load %struct.matrix_elt*, %struct.matrix_elt** %matrix.addr, align 8
  %43 = load i32, i32* %i, align 4
  %44 = load i32, i32* %window_size.addr, align 4
  %add36 = add nsw i32 %44, 1
  %mul37 = mul nsw i32 %43, %add36
  %idx.ext = sext i32 %mul37 to i64
  %add.ptr = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %42, i64 %idx.ext
  store %struct.matrix_elt* %add.ptr, %struct.matrix_elt** %p, align 8
  %45 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %45 to i64
  %46 = load i32*, i32** %draw_cost.addr, align 8
  %arrayidx39 = getelementptr inbounds i32, i32* %46, i64 %idxprom38
  %47 = load i32, i32* %arrayidx39, align 4
  %48 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %48 to i64
  %49 = load i32*, i32** %next_insert_cost, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %49, i64 %idxprom40
  %50 = load i32, i32* %arrayidx41, align 4
  %add42 = add nsw i32 %47, %50
  %51 = load i32, i32* %extra_cost, align 4
  %add43 = add nsw i32 %add42, %51
  %52 = load i32, i32* %cost, align 4
  %add44 = add nsw i32 %52, %add43
  store i32 %add44, i32* %cost, align 4
  %53 = load i32, i32* %cost, align 4
  %54 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %insertcost45 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %54, i32 0, i32 1
  store i32 %53, i32* %insertcost45, align 4
  %55 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %writecost46 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %55, i32 0, i32 0
  store i32 1000000, i32* %writecost46, align 4
  %56 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %deletecost47 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %56, i32 0, i32 2
  store i32 1000000, i32* %deletecost47, align 4
  %57 = load i32, i32* %i, align 4
  %conv48 = trunc i32 %57 to i8
  %58 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %insertcount49 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %58, i32 0, i32 3
  store i8 %conv48, i8* %insertcount49, align 1
  %59 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %deletecount50 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %59, i32 0, i32 4
  store i8 0, i8* %deletecount50, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %60 = load i32, i32* %i, align 4
  %inc = add nsw i32 %60, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %61 = load i32*, i32** %first_delete_cost, align 8
  %arrayidx51 = getelementptr inbounds i32, i32* %61, i64 1
  %62 = load i32, i32* %arrayidx51, align 4
  %63 = load i32*, i32** %next_delete_cost, align 8
  %arrayidx52 = getelementptr inbounds i32, i32* %63, i64 1
  %64 = load i32, i32* %arrayidx52, align 4
  %sub53 = sub nsw i32 %62, %64
  store i32 %sub53, i32* %cost, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.77, %for.end
  %65 = load i32, i32* %j, align 4
  %66 = load i32, i32* %window_size.addr, align 4
  %cmp55 = icmp sle i32 %65, %66
  br i1 %cmp55, label %for.body.57, label %for.end.79

for.body.57:                                      ; preds = %for.cond.54
  %67 = load i32, i32* %j, align 4
  %idxprom58 = sext i32 %67 to i64
  %68 = load i32*, i32** %next_delete_cost, align 8
  %arrayidx59 = getelementptr inbounds i32, i32* %68, i64 %idxprom58
  %69 = load i32, i32* %arrayidx59, align 4
  %70 = load i32, i32* %cost, align 4
  %add60 = add nsw i32 %70, %69
  store i32 %add60, i32* %cost, align 4
  %71 = load i32, i32* %cost, align 4
  %72 = load i32, i32* %j, align 4
  %idxprom61 = sext i32 %72 to i64
  %73 = load %struct.matrix_elt*, %struct.matrix_elt** %matrix.addr, align 8
  %arrayidx62 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %73, i64 %idxprom61
  %deletecost63 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %arrayidx62, i32 0, i32 2
  store i32 %71, i32* %deletecost63, align 4
  %74 = load i32, i32* %j, align 4
  %idxprom64 = sext i32 %74 to i64
  %75 = load %struct.matrix_elt*, %struct.matrix_elt** %matrix.addr, align 8
  %arrayidx65 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %75, i64 %idxprom64
  %writecost66 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %arrayidx65, i32 0, i32 0
  store i32 1000000, i32* %writecost66, align 4
  %76 = load i32, i32* %j, align 4
  %idxprom67 = sext i32 %76 to i64
  %77 = load %struct.matrix_elt*, %struct.matrix_elt** %matrix.addr, align 8
  %arrayidx68 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %77, i64 %idxprom67
  %insertcost69 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %arrayidx68, i32 0, i32 1
  store i32 1000000, i32* %insertcost69, align 4
  %78 = load i32, i32* %j, align 4
  %conv70 = trunc i32 %78 to i8
  %79 = load i32, i32* %j, align 4
  %idxprom71 = sext i32 %79 to i64
  %80 = load %struct.matrix_elt*, %struct.matrix_elt** %matrix.addr, align 8
  %arrayidx72 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %80, i64 %idxprom71
  %deletecount73 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %arrayidx72, i32 0, i32 4
  store i8 %conv70, i8* %deletecount73, align 1
  %81 = load i32, i32* %j, align 4
  %idxprom74 = sext i32 %81 to i64
  %82 = load %struct.matrix_elt*, %struct.matrix_elt** %matrix.addr, align 8
  %arrayidx75 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %82, i64 %idxprom74
  %insertcount76 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %arrayidx75, i32 0, i32 3
  store i8 0, i8* %insertcount76, align 1
  br label %for.inc.77

for.inc.77:                                       ; preds = %for.body.57
  %83 = load i32, i32* %j, align 4
  %inc78 = add nsw i32 %83, 1
  store i32 %inc78, i32* %j, align 4
  br label %for.cond.54

for.end.79:                                       ; preds = %for.cond.54
  %84 = load %struct.matrix_elt*, %struct.matrix_elt** %matrix.addr, align 8
  %85 = load i32, i32* %window_size.addr, align 4
  %idx.ext80 = sext i32 %85 to i64
  %add.ptr81 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %84, i64 %idx.ext80
  %add.ptr82 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %add.ptr81, i64 2
  store %struct.matrix_elt* %add.ptr82, %struct.matrix_elt** %p, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond.83

for.cond.83:                                      ; preds = %for.inc.211, %for.end.79
  %86 = load i32, i32* %i, align 4
  %87 = load i32, i32* %window_size.addr, align 4
  %cmp84 = icmp sle i32 %86, %87
  br i1 %cmp84, label %for.body.86, label %for.end.214

for.body.86:                                      ; preds = %for.cond.83
  store i32 1, i32* %j, align 4
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.208, %for.body.86
  %88 = load i32, i32* %j, align 4
  %89 = load i32, i32* %window_size.addr, align 4
  %cmp88 = icmp sle i32 %88, %89
  br i1 %cmp88, label %for.body.90, label %for.end.210

for.body.90:                                      ; preds = %for.cond.87
  %90 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %91 = load i32, i32* %window_size.addr, align 4
  %idx.ext91 = sext i32 %91 to i64
  %idx.neg = sub i64 0, %idx.ext91
  %add.ptr92 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %90, i64 %idx.neg
  %add.ptr93 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %add.ptr92, i64 -2
  store %struct.matrix_elt* %add.ptr93, %struct.matrix_elt** %p1, align 8
  %92 = load %struct.matrix_elt*, %struct.matrix_elt** %p1, align 8
  %writecost94 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %92, i32 0, i32 0
  %93 = load i32, i32* %writecost94, align 4
  store i32 %93, i32* %cost, align 4
  %94 = load i32, i32* %cost, align 4
  %95 = load %struct.matrix_elt*, %struct.matrix_elt** %p1, align 8
  %insertcost95 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %95, i32 0, i32 1
  %96 = load i32, i32* %insertcost95, align 4
  %cmp96 = icmp sgt i32 %94, %96
  br i1 %cmp96, label %if.then.98, label %if.end.100

if.then.98:                                       ; preds = %for.body.90
  %97 = load %struct.matrix_elt*, %struct.matrix_elt** %p1, align 8
  %insertcost99 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %97, i32 0, i32 1
  %98 = load i32, i32* %insertcost99, align 4
  store i32 %98, i32* %cost, align 4
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.98, %for.body.90
  %99 = load i32, i32* %cost, align 4
  %100 = load %struct.matrix_elt*, %struct.matrix_elt** %p1, align 8
  %deletecost101 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %100, i32 0, i32 2
  %101 = load i32, i32* %deletecost101, align 4
  %cmp102 = icmp sgt i32 %99, %101
  br i1 %cmp102, label %if.then.104, label %if.end.106

if.then.104:                                      ; preds = %if.end.100
  %102 = load %struct.matrix_elt*, %struct.matrix_elt** %p1, align 8
  %deletecost105 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %102, i32 0, i32 2
  %103 = load i32, i32* %deletecost105, align 4
  store i32 %103, i32* %cost, align 4
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.104, %if.end.100
  %104 = load i32, i32* %j, align 4
  %idxprom107 = sext i32 %104 to i64
  %105 = load i32*, i32** %old_hash.addr, align 8
  %arrayidx108 = getelementptr inbounds i32, i32* %105, i64 %idxprom107
  %106 = load i32, i32* %arrayidx108, align 4
  %107 = load i32, i32* %i, align 4
  %idxprom109 = sext i32 %107 to i64
  %108 = load i32*, i32** %new_hash.addr, align 8
  %arrayidx110 = getelementptr inbounds i32, i32* %108, i64 %idxprom109
  %109 = load i32, i32* %arrayidx110, align 4
  %cmp111 = icmp ne i32 %106, %109
  br i1 %cmp111, label %if.then.113, label %if.end.117

if.then.113:                                      ; preds = %if.end.106
  %110 = load i32, i32* %i, align 4
  %idxprom114 = sext i32 %110 to i64
  %111 = load i32*, i32** %draw_cost.addr, align 8
  %arrayidx115 = getelementptr inbounds i32, i32* %111, i64 %idxprom114
  %112 = load i32, i32* %arrayidx115, align 4
  %113 = load i32, i32* %cost, align 4
  %add116 = add nsw i32 %113, %112
  store i32 %add116, i32* %cost, align 4
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.113, %if.end.106
  %114 = load i32, i32* %cost, align 4
  %115 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %writecost118 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %115, i32 0, i32 0
  store i32 %114, i32* %writecost118, align 4
  %116 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %117 = load i32, i32* %window_size.addr, align 4
  %idx.ext119 = sext i32 %117 to i64
  %idx.neg120 = sub i64 0, %idx.ext119
  %add.ptr121 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %116, i64 %idx.neg120
  %add.ptr122 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %add.ptr121, i64 -1
  store %struct.matrix_elt* %add.ptr122, %struct.matrix_elt** %p1, align 8
  %118 = load i32, i32* %free_at_end.addr, align 4
  %119 = load i32, i32* %i, align 4
  %cmp123 = icmp eq i32 %118, %119
  br i1 %cmp123, label %if.then.125, label %if.else

if.then.125:                                      ; preds = %if.end.117
  %120 = load %struct.matrix_elt*, %struct.matrix_elt** %p1, align 8
  %writecost126 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %120, i32 0, i32 0
  %121 = load i32, i32* %writecost126, align 4
  store i32 %121, i32* %cost, align 4
  %122 = load %struct.matrix_elt*, %struct.matrix_elt** %p1, align 8
  %insertcost127 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %122, i32 0, i32 1
  %123 = load i32, i32* %insertcost127, align 4
  store i32 %123, i32* %cost1, align 4
  br label %if.end.145

if.else:                                          ; preds = %if.end.117
  %124 = load %struct.matrix_elt*, %struct.matrix_elt** %p1, align 8
  %writecost128 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %124, i32 0, i32 0
  %125 = load i32, i32* %writecost128, align 4
  %126 = load i32, i32* %i, align 4
  %idxprom129 = sext i32 %126 to i64
  %127 = load i32*, i32** %first_insert_cost, align 8
  %arrayidx130 = getelementptr inbounds i32, i32* %127, i64 %idxprom129
  %128 = load i32, i32* %arrayidx130, align 4
  %add131 = add nsw i32 %125, %128
  store i32 %add131, i32* %cost, align 4
  %129 = load %struct.matrix_elt*, %struct.matrix_elt** %p1, align 8
  %insertcount132 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %129, i32 0, i32 3
  %130 = load i8, i8* %insertcount132, align 1
  %conv133 = zext i8 %130 to i32
  %131 = load i32, i32* %i, align 4
  %cmp134 = icmp sgt i32 %conv133, %131
  br i1 %cmp134, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %if.else
  call void @emacs_abort() #4
  unreachable

if.end.137:                                       ; preds = %if.else
  %132 = load %struct.matrix_elt*, %struct.matrix_elt** %p1, align 8
  %insertcost138 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %132, i32 0, i32 1
  %133 = load i32, i32* %insertcost138, align 4
  %134 = load i32, i32* %i, align 4
  %135 = load %struct.matrix_elt*, %struct.matrix_elt** %p1, align 8
  %insertcount139 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %135, i32 0, i32 3
  %136 = load i8, i8* %insertcount139, align 1
  %conv140 = zext i8 %136 to i32
  %sub141 = sub nsw i32 %134, %conv140
  %idxprom142 = sext i32 %sub141 to i64
  %137 = load i32*, i32** %next_insert_cost, align 8
  %arrayidx143 = getelementptr inbounds i32, i32* %137, i64 %idxprom142
  %138 = load i32, i32* %arrayidx143, align 4
  %add144 = add nsw i32 %133, %138
  store i32 %add144, i32* %cost1, align 4
  br label %if.end.145

if.end.145:                                       ; preds = %if.end.137, %if.then.125
  %139 = load i32, i32* %cost, align 4
  %140 = load i32, i32* %cost1, align 4
  %cmp146 = icmp slt i32 %139, %140
  br i1 %cmp146, label %cond.true.148, label %cond.false.149

cond.true.148:                                    ; preds = %if.end.145
  %141 = load i32, i32* %cost, align 4
  br label %cond.end.150

cond.false.149:                                   ; preds = %if.end.145
  %142 = load i32, i32* %cost1, align 4
  br label %cond.end.150

cond.end.150:                                     ; preds = %cond.false.149, %cond.true.148
  %cond151 = phi i32 [ %141, %cond.true.148 ], [ %142, %cond.false.149 ]
  %143 = load i32, i32* %i, align 4
  %idxprom152 = sext i32 %143 to i64
  %144 = load i32*, i32** %draw_cost.addr, align 8
  %arrayidx153 = getelementptr inbounds i32, i32* %144, i64 %idxprom152
  %145 = load i32, i32* %arrayidx153, align 4
  %add154 = add nsw i32 %cond151, %145
  %146 = load i32, i32* %extra_cost, align 4
  %add155 = add nsw i32 %add154, %146
  %147 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %insertcost156 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %147, i32 0, i32 1
  store i32 %add155, i32* %insertcost156, align 4
  %148 = load i32, i32* %cost, align 4
  %149 = load i32, i32* %cost1, align 4
  %cmp157 = icmp slt i32 %148, %149
  br i1 %cmp157, label %cond.true.159, label %cond.false.160

cond.true.159:                                    ; preds = %cond.end.150
  br label %cond.end.164

cond.false.160:                                   ; preds = %cond.end.150
  %150 = load %struct.matrix_elt*, %struct.matrix_elt** %p1, align 8
  %insertcount161 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %150, i32 0, i32 3
  %151 = load i8, i8* %insertcount161, align 1
  %conv162 = zext i8 %151 to i32
  %add163 = add nsw i32 %conv162, 1
  br label %cond.end.164

cond.end.164:                                     ; preds = %cond.false.160, %cond.true.159
  %cond165 = phi i32 [ 1, %cond.true.159 ], [ %add163, %cond.false.160 ]
  %conv166 = trunc i32 %cond165 to i8
  %152 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %insertcount167 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %152, i32 0, i32 3
  store i8 %conv166, i8* %insertcount167, align 1
  %153 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %insertcount168 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %153, i32 0, i32 3
  %154 = load i8, i8* %insertcount168, align 1
  %conv169 = zext i8 %154 to i32
  %155 = load i32, i32* %i, align 4
  %cmp170 = icmp sgt i32 %conv169, %155
  br i1 %cmp170, label %if.then.172, label %if.end.173

if.then.172:                                      ; preds = %cond.end.164
  call void @emacs_abort() #4
  unreachable

if.end.173:                                       ; preds = %cond.end.164
  %156 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %add.ptr174 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %156, i64 -1
  store %struct.matrix_elt* %add.ptr174, %struct.matrix_elt** %p1, align 8
  %157 = load i32, i32* %free_at_end.addr, align 4
  %158 = load i32, i32* %i, align 4
  %cmp175 = icmp eq i32 %157, %158
  br i1 %cmp175, label %if.then.177, label %if.else.180

if.then.177:                                      ; preds = %if.end.173
  %159 = load %struct.matrix_elt*, %struct.matrix_elt** %p1, align 8
  %writecost178 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %159, i32 0, i32 0
  %160 = load i32, i32* %writecost178, align 4
  store i32 %160, i32* %cost, align 4
  %161 = load %struct.matrix_elt*, %struct.matrix_elt** %p1, align 8
  %deletecost179 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %161, i32 0, i32 2
  %162 = load i32, i32* %deletecost179, align 4
  store i32 %162, i32* %cost1, align 4
  br label %if.end.189

if.else.180:                                      ; preds = %if.end.173
  %163 = load %struct.matrix_elt*, %struct.matrix_elt** %p1, align 8
  %writecost181 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %163, i32 0, i32 0
  %164 = load i32, i32* %writecost181, align 4
  %165 = load i32, i32* %i, align 4
  %idxprom182 = sext i32 %165 to i64
  %166 = load i32*, i32** %first_delete_cost, align 8
  %arrayidx183 = getelementptr inbounds i32, i32* %166, i64 %idxprom182
  %167 = load i32, i32* %arrayidx183, align 4
  %add184 = add nsw i32 %164, %167
  store i32 %add184, i32* %cost, align 4
  %168 = load %struct.matrix_elt*, %struct.matrix_elt** %p1, align 8
  %deletecost185 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %168, i32 0, i32 2
  %169 = load i32, i32* %deletecost185, align 4
  %170 = load i32, i32* %i, align 4
  %idxprom186 = sext i32 %170 to i64
  %171 = load i32*, i32** %next_delete_cost, align 8
  %arrayidx187 = getelementptr inbounds i32, i32* %171, i64 %idxprom186
  %172 = load i32, i32* %arrayidx187, align 4
  %add188 = add nsw i32 %169, %172
  store i32 %add188, i32* %cost1, align 4
  br label %if.end.189

if.end.189:                                       ; preds = %if.else.180, %if.then.177
  %173 = load i32, i32* %cost, align 4
  %174 = load i32, i32* %cost1, align 4
  %cmp190 = icmp slt i32 %173, %174
  br i1 %cmp190, label %cond.true.192, label %cond.false.193

cond.true.192:                                    ; preds = %if.end.189
  %175 = load i32, i32* %cost, align 4
  br label %cond.end.194

cond.false.193:                                   ; preds = %if.end.189
  %176 = load i32, i32* %cost1, align 4
  br label %cond.end.194

cond.end.194:                                     ; preds = %cond.false.193, %cond.true.192
  %cond195 = phi i32 [ %175, %cond.true.192 ], [ %176, %cond.false.193 ]
  %177 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %deletecost196 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %177, i32 0, i32 2
  store i32 %cond195, i32* %deletecost196, align 4
  %178 = load i32, i32* %cost, align 4
  %179 = load i32, i32* %cost1, align 4
  %cmp197 = icmp slt i32 %178, %179
  br i1 %cmp197, label %cond.true.199, label %cond.false.200

cond.true.199:                                    ; preds = %cond.end.194
  br label %cond.end.204

cond.false.200:                                   ; preds = %cond.end.194
  %180 = load %struct.matrix_elt*, %struct.matrix_elt** %p1, align 8
  %deletecount201 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %180, i32 0, i32 4
  %181 = load i8, i8* %deletecount201, align 1
  %conv202 = zext i8 %181 to i32
  %add203 = add nsw i32 %conv202, 1
  br label %cond.end.204

cond.end.204:                                     ; preds = %cond.false.200, %cond.true.199
  %cond205 = phi i32 [ 1, %cond.true.199 ], [ %add203, %cond.false.200 ]
  %conv206 = trunc i32 %cond205 to i8
  %182 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %deletecount207 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %182, i32 0, i32 4
  store i8 %conv206, i8* %deletecount207, align 1
  br label %for.inc.208

for.inc.208:                                      ; preds = %cond.end.204
  %183 = load i32, i32* %j, align 4
  %inc209 = add nsw i32 %183, 1
  store i32 %inc209, i32* %j, align 4
  %184 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %incdec.ptr = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %184, i32 1
  store %struct.matrix_elt* %incdec.ptr, %struct.matrix_elt** %p, align 8
  br label %for.cond.87

for.end.210:                                      ; preds = %for.cond.87
  br label %for.inc.211

for.inc.211:                                      ; preds = %for.end.210
  %185 = load i32, i32* %i, align 4
  %inc212 = add nsw i32 %185, 1
  store i32 %inc212, i32* %i, align 4
  %186 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %incdec.ptr213 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %186, i32 1
  store %struct.matrix_elt* %incdec.ptr213, %struct.matrix_elt** %p, align 8
  br label %for.cond.83

for.end.214:                                      ; preds = %for.cond.83
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_scrolling(%struct.frame* %frame, %struct.glyph_matrix* %current_matrix, %struct.matrix_elt* %matrix, i32 %window_size, i32 %unchanged_at_top) #0 {
entry:
  %frame.addr = alloca %struct.frame*, align 8
  %current_matrix.addr = alloca %struct.glyph_matrix*, align 8
  %matrix.addr = alloca %struct.matrix_elt*, align 8
  %window_size.addr = alloca i32, align 4
  %unchanged_at_top.addr = alloca i32, align 4
  %p = alloca %struct.matrix_elt*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  %terminal_window_p = alloca i8, align 1
  %queue_start = alloca %struct.queue*, align 8
  %queue = alloca %struct.queue*, align 8
  %retained_p = alloca i8*, align 8
  %copy_from = alloca i32*, align 8
  %next = alloca i32, align 4
  store %struct.frame* %frame, %struct.frame** %frame.addr, align 8
  store %struct.glyph_matrix* %current_matrix, %struct.glyph_matrix** %current_matrix.addr, align 8
  store %struct.matrix_elt* %matrix, %struct.matrix_elt** %matrix.addr, align 8
  store i32 %window_size, i32* %window_size.addr, align 4
  store i32 %unchanged_at_top, i32* %unchanged_at_top.addr, align 4
  store i64 16384, i64* %sa_avail, align 8
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  store i8 0, i8* %terminal_window_p, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix.addr, align 8
  %nrows = getelementptr inbounds %struct.glyph_matrix, %struct.glyph_matrix* %0, i32 0, i32 3
  %1 = load i32, i32* %nrows, align 4
  %conv = sext i32 %1 to i64
  %2 = load i64, i64* %sa_avail, align 8
  %div = udiv i64 %2, 8
  %div1 = udiv i64 %div, 1
  %cmp = icmp ule i64 %conv, %div1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %3 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix.addr, align 8
  %nrows3 = getelementptr inbounds %struct.glyph_matrix, %struct.glyph_matrix* %3, i32 0, i32 3
  %4 = load i32, i32* %nrows3, align 4
  %conv4 = sext i32 %4 to i64
  %mul = mul i64 8, %conv4
  %5 = load i64, i64* %sa_avail, align 8
  %sub = sub i64 %5, %mul
  store i64 %sub, i64* %sa_avail, align 8
  %6 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix.addr, align 8
  %nrows5 = getelementptr inbounds %struct.glyph_matrix, %struct.glyph_matrix* %6, i32 0, i32 3
  %7 = load i32, i32* %nrows5, align 4
  %conv6 = sext i32 %7 to i64
  %mul7 = mul i64 8, %conv6
  %8 = alloca i8, i64 %mul7
  %9 = bitcast i8* %8 to %struct.queue*
  store %struct.queue* %9, %struct.queue** %queue_start, align 8
  br label %if.end

if.else:                                          ; preds = %do.body
  %10 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix.addr, align 8
  %nrows8 = getelementptr inbounds %struct.glyph_matrix, %struct.glyph_matrix* %10, i32 0, i32 3
  %11 = load i32, i32* %nrows8, align 4
  %conv9 = sext i32 %11 to i64
  %call10 = call noalias i8* @xnmalloc(i64 %conv9, i64 8)
  %12 = bitcast i8* %call10 to %struct.queue*
  store %struct.queue* %12, %struct.queue** %queue_start, align 8
  store i8 1, i8* %sa_must_free, align 1
  %13 = load %struct.queue*, %struct.queue** %queue_start, align 8
  %14 = bitcast %struct.queue* %13 to i8*
  call void @record_unwind_protect_ptr(void (i8*)* @xfree, i8* %14)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %15 = load %struct.queue*, %struct.queue** %queue_start, align 8
  store %struct.queue* %15, %struct.queue** %queue, align 8
  %16 = load i32, i32* %window_size.addr, align 4
  %conv11 = sext i32 %16 to i64
  %17 = load i64, i64* %sa_avail, align 8
  %cmp12 = icmp sle i64 %conv11, %17
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %18 = load i32, i32* %window_size.addr, align 4
  %conv14 = sext i32 %18 to i64
  %19 = load i64, i64* %sa_avail, align 8
  %sub15 = sub nsw i64 %19, %conv14
  store i64 %sub15, i64* %sa_avail, align 8
  %20 = load i32, i32* %window_size.addr, align 4
  %conv16 = sext i32 %20 to i64
  %21 = alloca i8, i64 %conv16
  br label %cond.end

cond.false:                                       ; preds = %do.end
  store i8 1, i8* %sa_must_free, align 1
  %22 = load i32, i32* %window_size.addr, align 4
  %conv17 = sext i32 %22 to i64
  %call18 = call i8* @record_xmalloc(i64 %conv17)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %21, %cond.true ], [ %call18, %cond.false ]
  store i8* %cond, i8** %retained_p, align 8
  br label %do.body.19

do.body.19:                                       ; preds = %cond.end
  %23 = load i32, i32* %window_size.addr, align 4
  %conv20 = sext i32 %23 to i64
  %24 = load i64, i64* %sa_avail, align 8
  %div21 = udiv i64 %24, 4
  %div22 = udiv i64 %div21, 1
  %cmp23 = icmp ule i64 %conv20, %div22
  br i1 %cmp23, label %if.then.25, label %if.else.31

if.then.25:                                       ; preds = %do.body.19
  %25 = load i32, i32* %window_size.addr, align 4
  %conv26 = sext i32 %25 to i64
  %mul27 = mul i64 4, %conv26
  %26 = load i64, i64* %sa_avail, align 8
  %sub28 = sub i64 %26, %mul27
  store i64 %sub28, i64* %sa_avail, align 8
  %27 = load i32, i32* %window_size.addr, align 4
  %conv29 = sext i32 %27 to i64
  %mul30 = mul i64 4, %conv29
  %28 = alloca i8, i64 %mul30
  %29 = bitcast i8* %28 to i32*
  store i32* %29, i32** %copy_from, align 8
  br label %if.end.34

if.else.31:                                       ; preds = %do.body.19
  %30 = load i32, i32* %window_size.addr, align 4
  %conv32 = sext i32 %30 to i64
  %call33 = call noalias i8* @xnmalloc(i64 %conv32, i64 4)
  %31 = bitcast i8* %call33 to i32*
  store i32* %31, i32** %copy_from, align 8
  store i8 1, i8* %sa_must_free, align 1
  %32 = load i32*, i32** %copy_from, align 8
  %33 = bitcast i32* %32 to i8*
  call void @record_unwind_protect_ptr(void (i8*)* @xfree, i8* %33)
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.31, %if.then.25
  br label %do.end.35

do.end.35:                                        ; preds = %if.end.34
  %34 = load i8*, i8** %retained_p, align 8
  %35 = load i32, i32* %window_size.addr, align 4
  %conv36 = sext i32 %35 to i64
  %mul37 = mul i64 %conv36, 1
  call void @llvm.memset.p0i8.i64(i8* %34, i8 0, i64 %mul37, i32 1, i1 false)
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.35
  %36 = load i32, i32* %k, align 4
  %37 = load i32, i32* %window_size.addr, align 4
  %cmp38 = icmp slt i32 %36, %37
  br i1 %cmp38, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load i32, i32* %k, align 4
  %idxprom = sext i32 %38 to i64
  %39 = load i32*, i32** %copy_from, align 8
  %arrayidx = getelementptr inbounds i32, i32* %39, i64 %idxprom
  store i32 -1, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %40 = load i32, i32* %k, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = load i32, i32* %window_size.addr, align 4
  store i32 %41, i32* %j, align 4
  store i32 %41, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.83, %for.end
  %42 = load i32, i32* %i, align 4
  %cmp40 = icmp sgt i32 %42, 0
  br i1 %cmp40, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %43 = load i32, i32* %j, align 4
  %cmp42 = icmp sgt i32 %43, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %44 = phi i1 [ true, %while.cond ], [ %cmp42, %lor.rhs ]
  br i1 %44, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %45 = load %struct.matrix_elt*, %struct.matrix_elt** %matrix.addr, align 8
  %46 = load i32, i32* %i, align 4
  %47 = load i32, i32* %window_size.addr, align 4
  %add = add nsw i32 %47, 1
  %mul44 = mul nsw i32 %46, %add
  %idx.ext = sext i32 %mul44 to i64
  %add.ptr = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %45, i64 %idx.ext
  %48 = load i32, i32* %j, align 4
  %idx.ext45 = sext i32 %48 to i64
  %add.ptr46 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %add.ptr, i64 %idx.ext45
  store %struct.matrix_elt* %add.ptr46, %struct.matrix_elt** %p, align 8
  %49 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %insertcost = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %49, i32 0, i32 1
  %50 = load i32, i32* %insertcost, align 4
  %51 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %writecost = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %51, i32 0, i32 0
  %52 = load i32, i32* %writecost, align 4
  %cmp47 = icmp slt i32 %50, %52
  br i1 %cmp47, label %land.lhs.true, label %if.else.61

land.lhs.true:                                    ; preds = %while.body
  %53 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %insertcost49 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %53, i32 0, i32 1
  %54 = load i32, i32* %insertcost49, align 4
  %55 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %deletecost = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %55, i32 0, i32 2
  %56 = load i32, i32* %deletecost, align 4
  %cmp50 = icmp slt i32 %54, %56
  br i1 %cmp50, label %if.then.52, label %if.else.61

if.then.52:                                       ; preds = %land.lhs.true
  %57 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %insertcount = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %57, i32 0, i32 3
  %58 = load i8, i8* %insertcount, align 1
  %conv53 = zext i8 %58 to i32
  %59 = load %struct.queue*, %struct.queue** %queue, align 8
  %count = getelementptr inbounds %struct.queue, %struct.queue* %59, i32 0, i32 0
  store i32 %conv53, i32* %count, align 4
  %60 = load i32, i32* %i, align 4
  %61 = load i32, i32* %unchanged_at_top.addr, align 4
  %add54 = add nsw i32 %60, %61
  %62 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %insertcount55 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %62, i32 0, i32 3
  %63 = load i8, i8* %insertcount55, align 1
  %conv56 = zext i8 %63 to i32
  %sub57 = sub nsw i32 %add54, %conv56
  %64 = load %struct.queue*, %struct.queue** %queue, align 8
  %pos = getelementptr inbounds %struct.queue, %struct.queue* %64, i32 0, i32 1
  store i32 %sub57, i32* %pos, align 4
  %65 = load %struct.queue*, %struct.queue** %queue, align 8
  %incdec.ptr = getelementptr inbounds %struct.queue, %struct.queue* %65, i32 1
  store %struct.queue* %incdec.ptr, %struct.queue** %queue, align 8
  %66 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %insertcount58 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %66, i32 0, i32 3
  %67 = load i8, i8* %insertcount58, align 1
  %conv59 = zext i8 %67 to i32
  %68 = load i32, i32* %i, align 4
  %sub60 = sub nsw i32 %68, %conv59
  store i32 %sub60, i32* %i, align 4
  br label %if.end.83

if.else.61:                                       ; preds = %land.lhs.true, %while.body
  %69 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %deletecost62 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %69, i32 0, i32 2
  %70 = load i32, i32* %deletecost62, align 4
  %71 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %writecost63 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %71, i32 0, i32 0
  %72 = load i32, i32* %writecost63, align 4
  %cmp64 = icmp slt i32 %70, %72
  br i1 %cmp64, label %if.then.66, label %if.else.76

if.then.66:                                       ; preds = %if.else.61
  %73 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %deletecount = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %73, i32 0, i32 4
  %74 = load i8, i8* %deletecount, align 1
  %conv67 = zext i8 %74 to i32
  %75 = load i32, i32* %j, align 4
  %sub68 = sub nsw i32 %75, %conv67
  store i32 %sub68, i32* %j, align 4
  %76 = load i8, i8* %terminal_window_p, align 1
  %tobool = trunc i8 %76 to i1
  br i1 %tobool, label %if.end.71, label %if.then.69

if.then.69:                                       ; preds = %if.then.66
  %77 = load %struct.frame*, %struct.frame** %frame.addr, align 8
  %78 = load i32, i32* %window_size.addr, align 4
  %79 = load i32, i32* %unchanged_at_top.addr, align 4
  %add70 = add nsw i32 %78, %79
  call void @set_terminal_window(%struct.frame* %77, i32 %add70)
  store i8 1, i8* %terminal_window_p, align 1
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.69, %if.then.66
  %80 = load %struct.frame*, %struct.frame** %frame.addr, align 8
  %81 = load i32, i32* %j, align 4
  %82 = load i32, i32* %unchanged_at_top.addr, align 4
  %add72 = add nsw i32 %81, %82
  %83 = load %struct.matrix_elt*, %struct.matrix_elt** %p, align 8
  %deletecount73 = getelementptr inbounds %struct.matrix_elt, %struct.matrix_elt* %83, i32 0, i32 4
  %84 = load i8, i8* %deletecount73, align 1
  %conv74 = zext i8 %84 to i32
  %sub75 = sub nsw i32 0, %conv74
  call void @ins_del_lines(%struct.frame* %80, i32 %add72, i32 %sub75)
  br label %if.end.82

if.else.76:                                       ; preds = %if.else.61
  %85 = load i32, i32* %i, align 4
  %dec = add nsw i32 %85, -1
  store i32 %dec, i32* %i, align 4
  %86 = load i32, i32* %j, align 4
  %dec77 = add nsw i32 %86, -1
  store i32 %dec77, i32* %j, align 4
  %87 = load i32, i32* %j, align 4
  %88 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %88 to i64
  %89 = load i32*, i32** %copy_from, align 8
  %arrayidx79 = getelementptr inbounds i32, i32* %89, i64 %idxprom78
  store i32 %87, i32* %arrayidx79, align 4
  %90 = load i32, i32* %j, align 4
  %idxprom80 = sext i32 %90 to i64
  %91 = load i8*, i8** %retained_p, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %91, i64 %idxprom80
  store i8 1, i8* %arrayidx81, align 1
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.76, %if.end.71
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.then.52
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %92 = load %struct.queue*, %struct.queue** %queue, align 8
  %93 = load %struct.queue*, %struct.queue** %queue_start, align 8
  %cmp84 = icmp ugt %struct.queue* %92, %93
  br i1 %cmp84, label %if.then.86, label %if.end.118

if.then.86:                                       ; preds = %while.end
  store i32 -1, i32* %next, align 4
  %94 = load i8, i8* %terminal_window_p, align 1
  %tobool87 = trunc i8 %94 to i1
  br i1 %tobool87, label %if.end.90, label %if.then.88

if.then.88:                                       ; preds = %if.then.86
  %95 = load %struct.frame*, %struct.frame** %frame.addr, align 8
  %96 = load i32, i32* %window_size.addr, align 4
  %97 = load i32, i32* %unchanged_at_top.addr, align 4
  %add89 = add nsw i32 %96, %97
  call void @set_terminal_window(%struct.frame* %95, i32 %add89)
  store i8 1, i8* %terminal_window_p, align 1
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.88, %if.then.86
  br label %do.body.91

do.body.91:                                       ; preds = %do.cond, %if.end.90
  %98 = load %struct.queue*, %struct.queue** %queue, align 8
  %incdec.ptr92 = getelementptr inbounds %struct.queue, %struct.queue* %98, i32 -1
  store %struct.queue* %incdec.ptr92, %struct.queue** %queue, align 8
  %99 = load %struct.frame*, %struct.frame** %frame.addr, align 8
  %100 = load %struct.queue*, %struct.queue** %queue, align 8
  %pos93 = getelementptr inbounds %struct.queue, %struct.queue* %100, i32 0, i32 1
  %101 = load i32, i32* %pos93, align 4
  %102 = load %struct.queue*, %struct.queue** %queue, align 8
  %count94 = getelementptr inbounds %struct.queue, %struct.queue* %102, i32 0, i32 0
  %103 = load i32, i32* %count94, align 4
  call void @ins_del_lines(%struct.frame* %99, i32 %101, i32 %103)
  %104 = load %struct.queue*, %struct.queue** %queue, align 8
  %pos95 = getelementptr inbounds %struct.queue, %struct.queue* %104, i32 0, i32 1
  %105 = load i32, i32* %pos95, align 4
  %106 = load i32, i32* %unchanged_at_top.addr, align 4
  %sub96 = sub nsw i32 %105, %106
  store i32 %sub96, i32* %k, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.97

for.cond.97:                                      ; preds = %for.inc.112, %do.body.91
  %107 = load i32, i32* %j, align 4
  %108 = load %struct.queue*, %struct.queue** %queue, align 8
  %count98 = getelementptr inbounds %struct.queue, %struct.queue* %108, i32 0, i32 0
  %109 = load i32, i32* %count98, align 4
  %cmp99 = icmp slt i32 %107, %109
  br i1 %cmp99, label %for.body.101, label %for.end.114

for.body.101:                                     ; preds = %for.cond.97
  br label %while.cond.102

while.cond.102:                                   ; preds = %while.body.107, %for.body.101
  %110 = load i32, i32* %next, align 4
  %inc103 = add nsw i32 %110, 1
  store i32 %inc103, i32* %next, align 4
  %idxprom104 = sext i32 %inc103 to i64
  %111 = load i8*, i8** %retained_p, align 8
  %arrayidx105 = getelementptr inbounds i8, i8* %111, i64 %idxprom104
  %112 = load i8, i8* %arrayidx105, align 1
  %tobool106 = icmp ne i8 %112, 0
  br i1 %tobool106, label %while.body.107, label %while.end.108

while.body.107:                                   ; preds = %while.cond.102
  br label %while.cond.102

while.end.108:                                    ; preds = %while.cond.102
  %113 = load i32, i32* %next, align 4
  %114 = load i32, i32* %k, align 4
  %115 = load i32, i32* %j, align 4
  %add109 = add nsw i32 %114, %115
  %idxprom110 = sext i32 %add109 to i64
  %116 = load i32*, i32** %copy_from, align 8
  %arrayidx111 = getelementptr inbounds i32, i32* %116, i64 %idxprom110
  store i32 %113, i32* %arrayidx111, align 4
  br label %for.inc.112

for.inc.112:                                      ; preds = %while.end.108
  %117 = load i32, i32* %j, align 4
  %inc113 = add nsw i32 %117, 1
  store i32 %inc113, i32* %j, align 4
  br label %for.cond.97

for.end.114:                                      ; preds = %for.cond.97
  br label %do.cond

do.cond:                                          ; preds = %for.end.114
  %118 = load %struct.queue*, %struct.queue** %queue, align 8
  %119 = load %struct.queue*, %struct.queue** %queue_start, align 8
  %cmp115 = icmp ugt %struct.queue* %118, %119
  br i1 %cmp115, label %do.body.91, label %do.end.117

do.end.117:                                       ; preds = %do.cond
  br label %if.end.118

if.end.118:                                       ; preds = %do.end.117, %while.end
  store i32 0, i32* %k, align 4
  br label %for.cond.119

for.cond.119:                                     ; preds = %for.inc.123, %if.end.118
  %120 = load i32, i32* %k, align 4
  %121 = load i32, i32* %window_size.addr, align 4
  %cmp120 = icmp slt i32 %120, %121
  br i1 %cmp120, label %for.body.122, label %for.end.125

for.body.122:                                     ; preds = %for.cond.119
  br label %for.inc.123

for.inc.123:                                      ; preds = %for.body.122
  %122 = load i32, i32* %k, align 4
  %inc124 = add nsw i32 %122, 1
  store i32 %inc124, i32* %k, align 4
  br label %for.cond.119

for.end.125:                                      ; preds = %for.cond.119
  %123 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix.addr, align 8
  %124 = load i32, i32* %unchanged_at_top.addr, align 4
  %125 = load i32, i32* %window_size.addr, align 4
  %126 = load i32*, i32** %copy_from, align 8
  %127 = load i8*, i8** %retained_p, align 8
  call void @mirrored_line_dance(%struct.glyph_matrix* %123, i32 %124, i32 %125, i32* %126, i8* %127)
  %128 = load i8, i8* %terminal_window_p, align 1
  %tobool126 = trunc i8 %128 to i1
  br i1 %tobool126, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %for.end.125
  %129 = load %struct.frame*, %struct.frame** %frame.addr, align 8
  call void @set_terminal_window(%struct.frame* %129, i32 0)
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.127, %for.end.125
  br label %do.body.129

do.body.129:                                      ; preds = %if.end.128
  %130 = load i8, i8* %sa_must_free, align 1
  %tobool130 = trunc i8 %130 to i1
  br i1 %tobool130, label %if.then.131, label %if.end.134

if.then.131:                                      ; preds = %do.body.129
  store i8 0, i8* %sa_must_free, align 1
  %131 = load i64, i64* %sa_count, align 8
  %call132 = call i64 @builtin_lisp_symbol(i32 0)
  %call133 = call i64 @unbind_to(i64 %131, i64 %call132)
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.131, %do.body.129
  br label %do.end.136

do.end.136:                                       ; preds = %if.end.134
  ret void
}

declare i64 @unbind_to(i64, i64) #1

declare i64 @builtin_lisp_symbol(i32) #1

; Function Attrs: nounwind uwtable
define i32 @scrolling_max_lines_saved(i32 %start, i32 %end, i32* %oldhash, i32* %newhash, i32* %cost) #0 {
entry:
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %oldhash.addr = alloca i32*, align 8
  %newhash.addr = alloca i32*, align 8
  %cost.addr = alloca i32*, align 8
  %lines = alloca [512 x %struct.anon.9], align 16
  %i = alloca i32, align 4
  %h = alloca i32, align 4
  %matchcount = alloca i32, align 4
  %avg_length = alloca i32, align 4
  %threshold = alloca i32, align 4
  store i32 %start, i32* %start.addr, align 4
  store i32 %end, i32* %end.addr, align 4
  store i32* %oldhash, i32** %oldhash.addr, align 8
  store i32* %newhash, i32** %newhash.addr, align 8
  store i32* %cost, i32** %cost.addr, align 8
  store i32 0, i32* %matchcount, align 4
  store i32 0, i32* %avg_length, align 4
  %0 = load i32, i32* %start.addr, align 4
  store i32 %0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %end.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** %cost.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %6 = load i32, i32* %avg_length, align 4
  %add = add nsw i32 %6, %5
  store i32 %add, i32* %avg_length, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %end.addr, align 4
  %9 = load i32, i32* %start.addr, align 4
  %sub = sub nsw i32 %8, %9
  %10 = load i32, i32* %avg_length, align 4
  %div = sdiv i32 %10, %sub
  store i32 %div, i32* %avg_length, align 4
  %11 = load i32, i32* %avg_length, align 4
  %div1 = sdiv i32 %11, 4
  store i32 %div1, i32* %threshold, align 4
  %12 = bitcast [512 x %struct.anon.9]* %lines to i8*
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 4096, i32 16, i1 false)
  %13 = load i32, i32* %start.addr, align 4
  store i32 %13, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.17, %for.end
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %end.addr, align 4
  %cmp3 = icmp slt i32 %14, %15
  br i1 %cmp3, label %for.body.4, label %for.end.19

for.body.4:                                       ; preds = %for.cond.2
  %16 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %16 to i64
  %17 = load i32*, i32** %cost.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %17, i64 %idxprom5
  %18 = load i32, i32* %arrayidx6, align 4
  %19 = load i32, i32* %threshold, align 4
  %cmp7 = icmp sgt i32 %18, %19
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.4
  %20 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %20 to i64
  %21 = load i32*, i32** %newhash.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %21, i64 %idxprom8
  %22 = load i32, i32* %arrayidx9, align 4
  %and = and i32 %22, 511
  store i32 %and, i32* %h, align 4
  %23 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %23 to i64
  %24 = load i32*, i32** %newhash.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %24, i64 %idxprom10
  %25 = load i32, i32* %arrayidx11, align 4
  %26 = load i32, i32* %h, align 4
  %idxprom12 = sext i32 %26 to i64
  %arrayidx13 = getelementptr inbounds [512 x %struct.anon.9], [512 x %struct.anon.9]* %lines, i32 0, i64 %idxprom12
  %hash = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx13, i32 0, i32 0
  store i32 %25, i32* %hash, align 4
  %27 = load i32, i32* %h, align 4
  %idxprom14 = sext i32 %27 to i64
  %arrayidx15 = getelementptr inbounds [512 x %struct.anon.9], [512 x %struct.anon.9]* %lines, i32 0, i64 %idxprom14
  %count = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx15, i32 0, i32 1
  %28 = load i32, i32* %count, align 4
  %inc16 = add nsw i32 %28, 1
  store i32 %inc16, i32* %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.4
  br label %for.inc.17

for.inc.17:                                       ; preds = %if.end
  %29 = load i32, i32* %i, align 4
  %inc18 = add nsw i32 %29, 1
  store i32 %inc18, i32* %i, align 4
  br label %for.cond.2

for.end.19:                                       ; preds = %for.cond.2
  %30 = load i32, i32* %start.addr, align 4
  store i32 %30, i32* %i, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.44, %for.end.19
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %end.addr, align 4
  %cmp21 = icmp slt i32 %31, %32
  br i1 %cmp21, label %for.body.22, label %for.end.46

for.body.22:                                      ; preds = %for.cond.20
  %33 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %33 to i64
  %34 = load i32*, i32** %oldhash.addr, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %34, i64 %idxprom23
  %35 = load i32, i32* %arrayidx24, align 4
  %and25 = and i32 %35, 511
  store i32 %and25, i32* %h, align 4
  %36 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %36 to i64
  %37 = load i32*, i32** %oldhash.addr, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %37, i64 %idxprom26
  %38 = load i32, i32* %arrayidx27, align 4
  %39 = load i32, i32* %h, align 4
  %idxprom28 = sext i32 %39 to i64
  %arrayidx29 = getelementptr inbounds [512 x %struct.anon.9], [512 x %struct.anon.9]* %lines, i32 0, i64 %idxprom28
  %hash30 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx29, i32 0, i32 0
  %40 = load i32, i32* %hash30, align 4
  %cmp31 = icmp eq i32 %38, %40
  br i1 %cmp31, label %if.then.32, label %if.end.43

if.then.32:                                       ; preds = %for.body.22
  %41 = load i32, i32* %matchcount, align 4
  %inc33 = add nsw i32 %41, 1
  store i32 %inc33, i32* %matchcount, align 4
  %42 = load i32, i32* %h, align 4
  %idxprom34 = sext i32 %42 to i64
  %arrayidx35 = getelementptr inbounds [512 x %struct.anon.9], [512 x %struct.anon.9]* %lines, i32 0, i64 %idxprom34
  %count36 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx35, i32 0, i32 1
  %43 = load i32, i32* %count36, align 4
  %dec = add nsw i32 %43, -1
  store i32 %dec, i32* %count36, align 4
  %cmp37 = icmp eq i32 %dec, 0
  br i1 %cmp37, label %if.then.38, label %if.end.42

if.then.38:                                       ; preds = %if.then.32
  %44 = load i32, i32* %h, align 4
  %idxprom39 = sext i32 %44 to i64
  %arrayidx40 = getelementptr inbounds [512 x %struct.anon.9], [512 x %struct.anon.9]* %lines, i32 0, i64 %idxprom39
  %hash41 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx40, i32 0, i32 0
  store i32 0, i32* %hash41, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.38, %if.then.32
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %for.body.22
  br label %for.inc.44

for.inc.44:                                       ; preds = %if.end.43
  %45 = load i32, i32* %i, align 4
  %inc45 = add nsw i32 %45, 1
  store i32 %inc45, i32* %i, align 4
  br label %for.cond.20

for.end.46:                                       ; preds = %for.cond.20
  %46 = load i32, i32* %matchcount, align 4
  ret i32 %46
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define void @do_line_insertion_deletion_costs(%struct.frame* %frame, i8* %ins_line_string, i8* %multi_ins_string, i8* %del_line_string, i8* %multi_del_string, i8* %setup_string, i8* %cleanup_string, i32 %coefficient) #0 {
entry:
  %frame.addr = alloca %struct.frame*, align 8
  %ins_line_string.addr = alloca i8*, align 8
  %multi_ins_string.addr = alloca i8*, align 8
  %del_line_string.addr = alloca i8*, align 8
  %multi_del_string.addr = alloca i8*, align 8
  %setup_string.addr = alloca i8*, align 8
  %cleanup_string.addr = alloca i8*, align 8
  %coefficient.addr = alloca i32, align 4
  %frame_total_lines = alloca i32, align 4
  store %struct.frame* %frame, %struct.frame** %frame.addr, align 8
  store i8* %ins_line_string, i8** %ins_line_string.addr, align 8
  store i8* %multi_ins_string, i8** %multi_ins_string.addr, align 8
  store i8* %del_line_string, i8** %del_line_string.addr, align 8
  store i8* %multi_del_string, i8** %multi_del_string.addr, align 8
  store i8* %setup_string, i8** %setup_string.addr, align 8
  store i8* %cleanup_string, i8** %cleanup_string.addr, align 8
  store i32 %coefficient, i32* %coefficient.addr, align 4
  %0 = load %struct.frame*, %struct.frame** %frame.addr, align 8
  %total_lines = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 39
  %1 = load i32, i32* %total_lines, align 4
  store i32 %1, i32* %frame_total_lines, align 4
  %2 = load %struct.frame*, %struct.frame** %frame.addr, align 8
  %insert_line_cost = getelementptr inbounds %struct.frame, %struct.frame* %2, i32 0, i32 32
  %3 = load i32*, i32** %insert_line_cost, align 8
  %4 = bitcast i32* %3 to i8*
  %5 = load i32, i32* %frame_total_lines, align 4
  %conv = sext i32 %5 to i64
  %call = call i8* @xnrealloc(i8* %4, i64 %conv, i64 4)
  %6 = bitcast i8* %call to i32*
  %7 = load %struct.frame*, %struct.frame** %frame.addr, align 8
  %insert_line_cost1 = getelementptr inbounds %struct.frame, %struct.frame* %7, i32 0, i32 32
  store i32* %6, i32** %insert_line_cost1, align 8
  %8 = load %struct.frame*, %struct.frame** %frame.addr, align 8
  %delete_n_lines_cost = getelementptr inbounds %struct.frame, %struct.frame* %8, i32 0, i32 35
  %9 = load i32*, i32** %delete_n_lines_cost, align 8
  %10 = bitcast i32* %9 to i8*
  %11 = load i32, i32* %frame_total_lines, align 4
  %conv2 = sext i32 %11 to i64
  %call3 = call i8* @xnrealloc(i8* %10, i64 %conv2, i64 4)
  %12 = bitcast i8* %call3 to i32*
  %13 = load %struct.frame*, %struct.frame** %frame.addr, align 8
  %delete_n_lines_cost4 = getelementptr inbounds %struct.frame, %struct.frame* %13, i32 0, i32 35
  store i32* %12, i32** %delete_n_lines_cost4, align 8
  %14 = load %struct.frame*, %struct.frame** %frame.addr, align 8
  %insert_n_lines_cost = getelementptr inbounds %struct.frame, %struct.frame* %14, i32 0, i32 34
  %15 = load i32*, i32** %insert_n_lines_cost, align 8
  %16 = bitcast i32* %15 to i8*
  %17 = load i32, i32* %frame_total_lines, align 4
  %conv5 = sext i32 %17 to i64
  %call6 = call i8* @xnrealloc(i8* %16, i64 %conv5, i64 4)
  %18 = bitcast i8* %call6 to i32*
  %19 = load %struct.frame*, %struct.frame** %frame.addr, align 8
  %insert_n_lines_cost7 = getelementptr inbounds %struct.frame, %struct.frame* %19, i32 0, i32 34
  store i32* %18, i32** %insert_n_lines_cost7, align 8
  %20 = load %struct.frame*, %struct.frame** %frame.addr, align 8
  %delete_line_cost = getelementptr inbounds %struct.frame, %struct.frame* %20, i32 0, i32 33
  %21 = load i32*, i32** %delete_line_cost, align 8
  %22 = bitcast i32* %21 to i8*
  %23 = load i32, i32* %frame_total_lines, align 4
  %conv8 = sext i32 %23 to i64
  %call9 = call i8* @xnrealloc(i8* %22, i64 %conv8, i64 4)
  %24 = bitcast i8* %call9 to i32*
  %25 = load %struct.frame*, %struct.frame** %frame.addr, align 8
  %delete_line_cost10 = getelementptr inbounds %struct.frame, %struct.frame* %25, i32 0, i32 33
  store i32* %24, i32** %delete_line_cost10, align 8
  %26 = load %struct.frame*, %struct.frame** %frame.addr, align 8
  %27 = load i8*, i8** %ins_line_string.addr, align 8
  %28 = load i8*, i8** %multi_ins_string.addr, align 8
  %29 = load i8*, i8** %setup_string.addr, align 8
  %30 = load i8*, i8** %cleanup_string.addr, align 8
  %31 = load %struct.frame*, %struct.frame** %frame.addr, align 8
  %insert_line_cost11 = getelementptr inbounds %struct.frame, %struct.frame* %31, i32 0, i32 32
  %32 = load i32*, i32** %insert_line_cost11, align 8
  %33 = load %struct.frame*, %struct.frame** %frame.addr, align 8
  %insert_n_lines_cost12 = getelementptr inbounds %struct.frame, %struct.frame* %33, i32 0, i32 34
  %34 = load i32*, i32** %insert_n_lines_cost12, align 8
  %35 = load i32, i32* %coefficient.addr, align 4
  call void @ins_del_costs(%struct.frame* %26, i8* %27, i8* %28, i8* %29, i8* %30, i32* %32, i32* %34, i32 %35)
  %36 = load %struct.frame*, %struct.frame** %frame.addr, align 8
  %37 = load i8*, i8** %del_line_string.addr, align 8
  %38 = load i8*, i8** %multi_del_string.addr, align 8
  %39 = load i8*, i8** %setup_string.addr, align 8
  %40 = load i8*, i8** %cleanup_string.addr, align 8
  %41 = load %struct.frame*, %struct.frame** %frame.addr, align 8
  %delete_line_cost13 = getelementptr inbounds %struct.frame, %struct.frame* %41, i32 0, i32 33
  %42 = load i32*, i32** %delete_line_cost13, align 8
  %43 = load %struct.frame*, %struct.frame** %frame.addr, align 8
  %delete_n_lines_cost14 = getelementptr inbounds %struct.frame, %struct.frame* %43, i32 0, i32 35
  %44 = load i32*, i32** %delete_n_lines_cost14, align 8
  %45 = load i32, i32* %coefficient.addr, align 4
  call void @ins_del_costs(%struct.frame* %36, i8* %37, i8* %38, i8* %39, i8* %40, i32* %42, i32* %44, i32 %45)
  ret void
}

declare i8* @xnrealloc(i8*, i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @ins_del_costs(%struct.frame* %frame, i8* %one_line_string, i8* %multi_string, i8* %setup_string, i8* %cleanup_string, i32* %costvec, i32* %ncostvec, i32 %coefficient) #0 {
entry:
  %frame.addr = alloca %struct.frame*, align 8
  %one_line_string.addr = alloca i8*, align 8
  %multi_string.addr = alloca i8*, align 8
  %setup_string.addr = alloca i8*, align 8
  %cleanup_string.addr = alloca i8*, align 8
  %costvec.addr = alloca i32*, align 8
  %ncostvec.addr = alloca i32*, align 8
  %coefficient.addr = alloca i32, align 4
  store %struct.frame* %frame, %struct.frame** %frame.addr, align 8
  store i8* %one_line_string, i8** %one_line_string.addr, align 8
  store i8* %multi_string, i8** %multi_string.addr, align 8
  store i8* %setup_string, i8** %setup_string.addr, align 8
  store i8* %cleanup_string, i8** %cleanup_string.addr, align 8
  store i32* %costvec, i32** %costvec.addr, align 8
  store i32* %ncostvec, i32** %ncostvec.addr, align 8
  store i32 %coefficient, i32* %coefficient.addr, align 4
  %0 = load i8*, i8** %multi_string.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.frame*, %struct.frame** %frame.addr, align 8
  %2 = load i8*, i8** %multi_string.addr, align 8
  %call = call i32 @string_cost(i8* %2)
  %3 = load i32, i32* %coefficient.addr, align 4
  %mul = mul nsw i32 %call, %3
  %4 = load i8*, i8** %multi_string.addr, align 8
  %call1 = call i32 @per_line_cost(i8* %4)
  %5 = load i32, i32* %coefficient.addr, align 4
  %mul2 = mul nsw i32 %call1, %5
  %6 = load i32*, i32** %costvec.addr, align 8
  %7 = load i32*, i32** %ncostvec.addr, align 8
  call void @line_ins_del(%struct.frame* %1, i32 %mul, i32 %mul2, i32 0, i32 0, i32* %6, i32* %7)
  br label %if.end.10

if.else:                                          ; preds = %entry
  %8 = load i8*, i8** %one_line_string.addr, align 8
  %tobool3 = icmp ne i8* %8, null
  br i1 %tobool3, label %if.then.4, label %if.else.9

if.then.4:                                        ; preds = %if.else
  %9 = load %struct.frame*, %struct.frame** %frame.addr, align 8
  %10 = load i8*, i8** %setup_string.addr, align 8
  %call5 = call i32 @string_cost(i8* %10)
  %11 = load i8*, i8** %cleanup_string.addr, align 8
  %call6 = call i32 @string_cost(i8* %11)
  %add = add nsw i32 %call5, %call6
  %12 = load i8*, i8** %one_line_string.addr, align 8
  %call7 = call i32 @string_cost(i8* %12)
  %13 = load i8*, i8** %one_line_string.addr, align 8
  %call8 = call i32 @per_line_cost(i8* %13)
  %14 = load i32*, i32** %costvec.addr, align 8
  %15 = load i32*, i32** %ncostvec.addr, align 8
  call void @line_ins_del(%struct.frame* %9, i32 %add, i32 0, i32 %call7, i32 %call8, i32* %14, i32* %15)
  br label %if.end

if.else.9:                                        ; preds = %if.else
  %16 = load %struct.frame*, %struct.frame** %frame.addr, align 8
  %17 = load i32*, i32** %costvec.addr, align 8
  %18 = load i32*, i32** %ncostvec.addr, align 8
  call void @line_ins_del(%struct.frame* %16, i32 9999, i32 0, i32 9999, i32 0, i32* %17, i32* %18)
  br label %if.end

if.end:                                           ; preds = %if.else.9, %if.then.4
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then
  ret void
}

declare i8* @record_xmalloc(i64) #1

declare void @set_terminal_window(%struct.frame*, i32) #1

declare void @ins_del_lines(%struct.frame*, i32, i32) #1

declare void @mirrored_line_dance(%struct.glyph_matrix*, i32, i32, i32*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @line_ins_del(%struct.frame* %frame, i32 %ov1, i32 %pf1, i32 %ovn, i32 %pfn, i32* %ov, i32* %mf) #0 {
entry:
  %frame.addr = alloca %struct.frame*, align 8
  %ov1.addr = alloca i32, align 4
  %pf1.addr = alloca i32, align 4
  %ovn.addr = alloca i32, align 4
  %pfn.addr = alloca i32, align 4
  %ov.addr = alloca i32*, align 8
  %mf.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %frame_total_lines = alloca i32, align 4
  %insert_overhead = alloca i32, align 4
  %next_insert_cost = alloca i32, align 4
  store %struct.frame* %frame, %struct.frame** %frame.addr, align 8
  store i32 %ov1, i32* %ov1.addr, align 4
  store i32 %pf1, i32* %pf1.addr, align 4
  store i32 %ovn, i32* %ovn.addr, align 4
  store i32 %pfn, i32* %pfn.addr, align 4
  store i32* %ov, i32** %ov.addr, align 8
  store i32* %mf, i32** %mf.addr, align 8
  %0 = load %struct.frame*, %struct.frame** %frame.addr, align 8
  %total_lines = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 39
  %1 = load i32, i32* %total_lines, align 4
  store i32 %1, i32* %frame_total_lines, align 4
  %2 = load i32, i32* %ov1.addr, align 4
  %mul = mul nsw i32 %2, 10
  store i32 %mul, i32* %insert_overhead, align 4
  %3 = load i32, i32* %ovn.addr, align 4
  %mul1 = mul nsw i32 %3, 10
  store i32 %mul1, i32* %next_insert_cost, align 4
  %4 = load i32, i32* %frame_total_lines, align 4
  %sub = sub nsw i32 %4, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %5, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %next_insert_cost, align 4
  %div = sdiv i32 %6, 10
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i32*, i32** %mf.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %idxprom
  store i32 %div, i32* %arrayidx, align 4
  %9 = load i32, i32* %pfn.addr, align 4
  %10 = load i32, i32* %next_insert_cost, align 4
  %add = add nsw i32 %10, %9
  store i32 %add, i32* %next_insert_cost, align 4
  %11 = load i32, i32* %insert_overhead, align 4
  %12 = load i32, i32* %next_insert_cost, align 4
  %add2 = add nsw i32 %11, %12
  %div3 = sdiv i32 %add2, 10
  %13 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %13 to i64
  %14 = load i32*, i32** %ov.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %14, i64 %idxprom4
  store i32 %div3, i32* %arrayidx5, align 4
  %15 = load i32, i32* %pf1.addr, align 4
  %16 = load i32, i32* %insert_overhead, align 4
  %add6 = add nsw i32 %16, %15
  store i32 %add6, i32* %insert_overhead, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @string_cost(i8*) #1

declare i32 @per_line_cost(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
