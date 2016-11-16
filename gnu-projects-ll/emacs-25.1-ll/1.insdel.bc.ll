; ModuleID = './src/insdel.bc'
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
%struct.Lisp_Objfwd = type { i32, i64* }
%struct.Lisp_Boolfwd = type { i32, i8* }
%struct.Lisp_Subr = type { %struct.vectorlike_header, %union.anon.1, i16, i16, i8*, i8*, i8* }
%union.anon.1 = type { i64 ()* }
%struct.window = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.glyph_matrix*, %struct.glyph_matrix*, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, %struct.cursor_pos, %struct.cursor_pos, %struct.cursor_pos, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i64 }
%struct.glyph_matrix = type { %struct.glyph_pool*, %struct.glyph_row*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.buffer*, i64, i64 }
%struct.glyph_pool = type { %struct.glyph*, i64, i32, i32 }
%struct.glyph = type { i64, i64, i16, i16, i16, i16, i24, i24, %union.anon.2, %union.anon.4 }
%union.anon.2 = type { %struct.glyph_slice }
%struct.glyph_slice = type { i64 }
%union.anon.4 = type { i32 }
%struct.glyph_row = type <{ [4 x %struct.glyph*], [4 x i16], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.display_pos, %struct.display_pos, %struct.text_pos, %struct.text_pos, i32, [11 x i8], i8, i24, i24, i32, i40, i32, %struct.XRectangle* }>
%struct.display_pos = type { %struct.text_pos, i64, %struct.text_pos, i32 }
%struct.text_pos = type { i64, i64 }
%struct.XRectangle = type { i16, i16, i16, i16 }
%struct.cursor_pos = type { i32, i32, i32, i32 }
%struct.rvoe_arg = type { i64*, i8 }
%struct.Lisp_Cons = type { i64, %union.anon.0 }
%union.anon.0 = type { i64 }

@current_buffer = external global %struct.buffer*, align 8
@.str = private unnamed_addr constant [29 x i8] c"Maximum buffer size exceeded\00", align 1
@globals = external global %struct.emacs_globals, align 8
@combine_after_change_list = internal global i64 0, align 8
@combine_after_change_buffer = internal global i64 0, align 8
@syms_of_insdel.o_fwd = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"combine-after-change-calls\00", align 1
@syms_of_insdel.b_fwd = internal global %struct.Lisp_Boolfwd zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"inhibit-modification-hooks\00", align 1
@Scombine_after_change_execute = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon.1 { i64 ()* @Fcombine_after_change_execute }, i16 0, i16 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* null }, align 8
@pending_signals = external global i8, align 1
@selected_window = external global i64, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"combine-after-change-execute\00", align 1

; Function Attrs: nounwind uwtable
define void @move_gap_both(i64 %charpos, i64 %bytepos) #0 {
entry:
  %charpos.addr = alloca i64, align 8
  %bytepos.addr = alloca i64, align 8
  store i64 %charpos, i64* %charpos.addr, align 8
  store i64 %bytepos, i64* %bytepos.addr, align 8
  %0 = load i64, i64* %bytepos.addr, align 8
  %1 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 73
  %2 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %gpt_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %2, i32 0, i32 3
  %3 = load i64, i64* %gpt_byte, align 8
  %cmp = icmp slt i64 %0, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i64, i64* %charpos.addr, align 8
  %5 = load i64, i64* %bytepos.addr, align 8
  call void @gap_left(i64 %4, i64 %5, i1 zeroext false)
  br label %if.end.5

if.else:                                          ; preds = %entry
  %6 = load i64, i64* %bytepos.addr, align 8
  %7 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text1 = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 73
  %8 = load %struct.buffer_text*, %struct.buffer_text** %text1, align 8
  %gpt_byte2 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %8, i32 0, i32 3
  %9 = load i64, i64* %gpt_byte2, align 8
  %cmp3 = icmp sgt i64 %6, %9
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  %10 = load i64, i64* %charpos.addr, align 8
  %11 = load i64, i64* %bytepos.addr, align 8
  call void @gap_right(i64 %10, i64 %11)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gap_left(i64 %charpos, i64 %bytepos, i1 zeroext %newgap) #0 {
entry:
  %charpos.addr = alloca i64, align 8
  %bytepos.addr = alloca i64, align 8
  %newgap.addr = alloca i8, align 1
  %to = alloca i8*, align 8
  %from = alloca i8*, align 8
  %i = alloca i64, align 8
  %new_s1 = alloca i64, align 8
  store i64 %charpos, i64* %charpos.addr, align 8
  store i64 %bytepos, i64* %bytepos.addr, align 8
  %frombool = zext i1 %newgap to i8
  store i8 %frombool, i8* %newgap.addr, align 1
  %0 = load i8, i8* %newgap.addr, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end.37, label %if.then

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %1 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 73
  %2 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %unchanged_modified = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %2, i32 0, i32 13
  %3 = load i64, i64* %unchanged_modified, align 8
  %4 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text1 = getelementptr inbounds %struct.buffer, %struct.buffer* %4, i32 0, i32 73
  %5 = load %struct.buffer_text*, %struct.buffer_text** %text1, align 8
  %modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %5, i32 0, i32 6
  %6 = load i64, i64* %modiff, align 8
  %cmp = icmp eq i64 %3, %6
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %7 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text2 = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 73
  %8 = load %struct.buffer_text*, %struct.buffer_text** %text2, align 8
  %overlay_unchanged_modified = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %8, i32 0, i32 14
  %9 = load i64, i64* %overlay_unchanged_modified, align 8
  %10 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text3 = getelementptr inbounds %struct.buffer, %struct.buffer* %10, i32 0, i32 73
  %11 = load %struct.buffer_text*, %struct.buffer_text** %text3, align 8
  %overlay_modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %11, i32 0, i32 9
  %12 = load i64, i64* %overlay_modiff, align 8
  %cmp4 = icmp eq i64 %9, %12
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %land.lhs.true
  %13 = load i64, i64* %charpos.addr, align 8
  %sub = sub nsw i64 %13, 1
  %14 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text6 = getelementptr inbounds %struct.buffer, %struct.buffer* %14, i32 0, i32 73
  %15 = load %struct.buffer_text*, %struct.buffer_text** %text6, align 8
  %beg_unchanged = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %15, i32 0, i32 11
  store i64 %sub, i64* %beg_unchanged, align 8
  %16 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text7 = getelementptr inbounds %struct.buffer, %struct.buffer* %16, i32 0, i32 73
  %17 = load %struct.buffer_text*, %struct.buffer_text** %text7, align 8
  %z = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %17, i32 0, i32 2
  %18 = load i64, i64* %z, align 8
  %19 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text8 = getelementptr inbounds %struct.buffer, %struct.buffer* %19, i32 0, i32 73
  %20 = load %struct.buffer_text*, %struct.buffer_text** %text8, align 8
  %gpt = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %20, i32 0, i32 1
  %21 = load i64, i64* %gpt, align 8
  %sub9 = sub nsw i64 %18, %21
  %22 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text10 = getelementptr inbounds %struct.buffer, %struct.buffer* %22, i32 0, i32 73
  %23 = load %struct.buffer_text*, %struct.buffer_text** %text10, align 8
  %end_unchanged = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %23, i32 0, i32 12
  store i64 %sub9, i64* %end_unchanged, align 8
  br label %if.end.36

if.else:                                          ; preds = %land.lhs.true, %do.body
  %24 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text11 = getelementptr inbounds %struct.buffer, %struct.buffer* %24, i32 0, i32 73
  %25 = load %struct.buffer_text*, %struct.buffer_text** %text11, align 8
  %z12 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %25, i32 0, i32 2
  %26 = load i64, i64* %z12, align 8
  %27 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text13 = getelementptr inbounds %struct.buffer, %struct.buffer* %27, i32 0, i32 73
  %28 = load %struct.buffer_text*, %struct.buffer_text** %text13, align 8
  %gpt14 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %28, i32 0, i32 1
  %29 = load i64, i64* %gpt14, align 8
  %sub15 = sub nsw i64 %26, %29
  %30 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text16 = getelementptr inbounds %struct.buffer, %struct.buffer* %30, i32 0, i32 73
  %31 = load %struct.buffer_text*, %struct.buffer_text** %text16, align 8
  %end_unchanged17 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %31, i32 0, i32 12
  %32 = load i64, i64* %end_unchanged17, align 8
  %cmp18 = icmp slt i64 %sub15, %32
  br i1 %cmp18, label %if.then.19, label %if.end

if.then.19:                                       ; preds = %if.else
  %33 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text20 = getelementptr inbounds %struct.buffer, %struct.buffer* %33, i32 0, i32 73
  %34 = load %struct.buffer_text*, %struct.buffer_text** %text20, align 8
  %z21 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %34, i32 0, i32 2
  %35 = load i64, i64* %z21, align 8
  %36 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text22 = getelementptr inbounds %struct.buffer, %struct.buffer* %36, i32 0, i32 73
  %37 = load %struct.buffer_text*, %struct.buffer_text** %text22, align 8
  %gpt23 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %37, i32 0, i32 1
  %38 = load i64, i64* %gpt23, align 8
  %sub24 = sub nsw i64 %35, %38
  %39 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text25 = getelementptr inbounds %struct.buffer, %struct.buffer* %39, i32 0, i32 73
  %40 = load %struct.buffer_text*, %struct.buffer_text** %text25, align 8
  %end_unchanged26 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %40, i32 0, i32 12
  store i64 %sub24, i64* %end_unchanged26, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.19, %if.else
  %41 = load i64, i64* %charpos.addr, align 8
  %sub27 = sub nsw i64 %41, 1
  %42 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text28 = getelementptr inbounds %struct.buffer, %struct.buffer* %42, i32 0, i32 73
  %43 = load %struct.buffer_text*, %struct.buffer_text** %text28, align 8
  %beg_unchanged29 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %43, i32 0, i32 11
  %44 = load i64, i64* %beg_unchanged29, align 8
  %cmp30 = icmp slt i64 %sub27, %44
  br i1 %cmp30, label %if.then.31, label %if.end.35

if.then.31:                                       ; preds = %if.end
  %45 = load i64, i64* %charpos.addr, align 8
  %sub32 = sub nsw i64 %45, 1
  %46 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text33 = getelementptr inbounds %struct.buffer, %struct.buffer* %46, i32 0, i32 73
  %47 = load %struct.buffer_text*, %struct.buffer_text** %text33, align 8
  %beg_unchanged34 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %47, i32 0, i32 11
  store i64 %sub32, i64* %beg_unchanged34, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.31, %if.end
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.36
  br label %if.end.37

if.end.37:                                        ; preds = %do.end, %entry
  %48 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text38 = getelementptr inbounds %struct.buffer, %struct.buffer* %48, i32 0, i32 73
  %49 = load %struct.buffer_text*, %struct.buffer_text** %text38, align 8
  %gpt_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %49, i32 0, i32 3
  %50 = load i64, i64* %gpt_byte, align 8
  store i64 %50, i64* %i, align 8
  %51 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text39 = getelementptr inbounds %struct.buffer, %struct.buffer* %51, i32 0, i32 73
  %52 = load %struct.buffer_text*, %struct.buffer_text** %text39, align 8
  %beg = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %52, i32 0, i32 0
  %53 = load i8*, i8** %beg, align 8
  %54 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text40 = getelementptr inbounds %struct.buffer, %struct.buffer* %54, i32 0, i32 73
  %55 = load %struct.buffer_text*, %struct.buffer_text** %text40, align 8
  %gpt_byte41 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %55, i32 0, i32 3
  %56 = load i64, i64* %gpt_byte41, align 8
  %add.ptr = getelementptr inbounds i8, i8* %53, i64 %56
  %57 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text42 = getelementptr inbounds %struct.buffer, %struct.buffer* %57, i32 0, i32 73
  %58 = load %struct.buffer_text*, %struct.buffer_text** %text42, align 8
  %gap_size = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %58, i32 0, i32 5
  %59 = load i64, i64* %gap_size, align 8
  %add.ptr43 = getelementptr inbounds i8, i8* %add.ptr, i64 %59
  %add.ptr44 = getelementptr inbounds i8, i8* %add.ptr43, i64 -1
  store i8* %add.ptr44, i8** %to, align 8
  %60 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text45 = getelementptr inbounds %struct.buffer, %struct.buffer* %60, i32 0, i32 73
  %61 = load %struct.buffer_text*, %struct.buffer_text** %text45, align 8
  %beg46 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %61, i32 0, i32 0
  %62 = load i8*, i8** %beg46, align 8
  %63 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text47 = getelementptr inbounds %struct.buffer, %struct.buffer* %63, i32 0, i32 73
  %64 = load %struct.buffer_text*, %struct.buffer_text** %text47, align 8
  %gpt_byte48 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %64, i32 0, i32 3
  %65 = load i64, i64* %gpt_byte48, align 8
  %add.ptr49 = getelementptr inbounds i8, i8* %62, i64 %65
  %add.ptr50 = getelementptr inbounds i8, i8* %add.ptr49, i64 -1
  store i8* %add.ptr50, i8** %from, align 8
  %66 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text51 = getelementptr inbounds %struct.buffer, %struct.buffer* %66, i32 0, i32 73
  %67 = load %struct.buffer_text*, %struct.buffer_text** %text51, align 8
  %gpt_byte52 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %67, i32 0, i32 3
  %68 = load i64, i64* %gpt_byte52, align 8
  store i64 %68, i64* %new_s1, align 8
  br label %while.body

while.body:                                       ; preds = %if.end.37, %if.end.66
  %69 = load i64, i64* %new_s1, align 8
  %70 = load i64, i64* %bytepos.addr, align 8
  %sub53 = sub nsw i64 %69, %70
  store i64 %sub53, i64* %i, align 8
  %71 = load i64, i64* %i, align 8
  %cmp54 = icmp eq i64 %71, 0
  br i1 %cmp54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %while.body
  br label %while.end

if.end.56:                                        ; preds = %while.body
  %72 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp57 = icmp eq i64 %72, %call
  br i1 %cmp57, label %if.end.63, label %land.lhs.true.58

land.lhs.true.58:                                 ; preds = %if.end.56
  %73 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call59 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp60 = icmp eq i64 %73, %call59
  br i1 %cmp60, label %if.then.61, label %if.end.63

if.then.61:                                       ; preds = %land.lhs.true.58
  %74 = load i64, i64* %new_s1, align 8
  store i64 %74, i64* %bytepos.addr, align 8
  %75 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %76 = load i64, i64* %bytepos.addr, align 8
  %call62 = call i64 @buf_bytepos_to_charpos(%struct.buffer* %75, i64 %76)
  store i64 %call62, i64* %charpos.addr, align 8
  br label %while.end

if.end.63:                                        ; preds = %land.lhs.true.58, %if.end.56
  %77 = load i64, i64* %i, align 8
  %cmp64 = icmp sgt i64 %77, 32000
  br i1 %cmp64, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.end.63
  store i64 32000, i64* %i, align 8
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.65, %if.end.63
  %78 = load i64, i64* %i, align 8
  %79 = load i64, i64* %new_s1, align 8
  %sub67 = sub nsw i64 %79, %78
  store i64 %sub67, i64* %new_s1, align 8
  %80 = load i64, i64* %i, align 8
  %81 = load i8*, i8** %from, align 8
  %idx.neg = sub i64 0, %80
  %add.ptr68 = getelementptr inbounds i8, i8* %81, i64 %idx.neg
  store i8* %add.ptr68, i8** %from, align 8
  %82 = load i64, i64* %i, align 8
  %83 = load i8*, i8** %to, align 8
  %idx.neg69 = sub i64 0, %82
  %add.ptr70 = getelementptr inbounds i8, i8* %83, i64 %idx.neg69
  store i8* %add.ptr70, i8** %to, align 8
  %84 = load i8*, i8** %to, align 8
  %85 = load i8*, i8** %from, align 8
  %86 = load i64, i64* %i, align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %84, i8* %85, i64 %86, i32 1, i1 false)
  br label %while.body

while.end:                                        ; preds = %if.then.61, %if.then.55
  %87 = load i64, i64* %bytepos.addr, align 8
  %88 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text71 = getelementptr inbounds %struct.buffer, %struct.buffer* %88, i32 0, i32 73
  %89 = load %struct.buffer_text*, %struct.buffer_text** %text71, align 8
  %gpt_byte72 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %89, i32 0, i32 3
  store i64 %87, i64* %gpt_byte72, align 8
  %90 = load i64, i64* %charpos.addr, align 8
  %91 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text73 = getelementptr inbounds %struct.buffer, %struct.buffer* %91, i32 0, i32 73
  %92 = load %struct.buffer_text*, %struct.buffer_text** %text73, align 8
  %gpt74 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %92, i32 0, i32 1
  store i64 %90, i64* %gpt74, align 8
  %93 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text75 = getelementptr inbounds %struct.buffer, %struct.buffer* %93, i32 0, i32 73
  %94 = load %struct.buffer_text*, %struct.buffer_text** %text75, align 8
  %gap_size76 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %94, i32 0, i32 5
  %95 = load i64, i64* %gap_size76, align 8
  %cmp77 = icmp sgt i64 %95, 0
  br i1 %cmp77, label %if.then.78, label %if.end.85

if.then.78:                                       ; preds = %while.end
  %96 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text79 = getelementptr inbounds %struct.buffer, %struct.buffer* %96, i32 0, i32 73
  %97 = load %struct.buffer_text*, %struct.buffer_text** %text79, align 8
  %beg80 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %97, i32 0, i32 0
  %98 = load i8*, i8** %beg80, align 8
  %99 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text81 = getelementptr inbounds %struct.buffer, %struct.buffer* %99, i32 0, i32 73
  %100 = load %struct.buffer_text*, %struct.buffer_text** %text81, align 8
  %gpt_byte82 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %100, i32 0, i32 3
  %101 = load i64, i64* %gpt_byte82, align 8
  %add.ptr83 = getelementptr inbounds i8, i8* %98, i64 %101
  %add.ptr84 = getelementptr inbounds i8, i8* %add.ptr83, i64 -1
  store i8 0, i8* %add.ptr84, align 1
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.78, %while.end
  br label %do.body.86

do.body.86:                                       ; preds = %if.end.85
  %102 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call87 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp88 = icmp eq i64 %102, %call87
  br i1 %cmp88, label %if.else.93, label %land.lhs.true.89

land.lhs.true.89:                                 ; preds = %do.body.86
  %103 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call90 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp91 = icmp eq i64 %103, %call90
  br i1 %cmp91, label %if.then.92, label %if.else.93

if.then.92:                                       ; preds = %land.lhs.true.89
  call void @process_quit_flag()
  br label %if.end.97

if.else.93:                                       ; preds = %land.lhs.true.89, %do.body.86
  %104 = load volatile i8, i8* @pending_signals, align 1
  %tobool94 = trunc i8 %104 to i1
  br i1 %tobool94, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %if.else.93
  call void @process_pending_signals()
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.95, %if.else.93
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.then.92
  br label %do.end.98

do.end.98:                                        ; preds = %if.end.97
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gap_right(i64 %charpos, i64 %bytepos) #0 {
entry:
  %charpos.addr = alloca i64, align 8
  %bytepos.addr = alloca i64, align 8
  %to = alloca i8*, align 8
  %from = alloca i8*, align 8
  %i = alloca i64, align 8
  %new_s1 = alloca i64, align 8
  store i64 %charpos, i64* %charpos.addr, align 8
  store i64 %bytepos, i64* %bytepos.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 73
  %1 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %unchanged_modified = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %1, i32 0, i32 13
  %2 = load i64, i64* %unchanged_modified, align 8
  %3 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text1 = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i32 0, i32 73
  %4 = load %struct.buffer_text*, %struct.buffer_text** %text1, align 8
  %modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %4, i32 0, i32 6
  %5 = load i64, i64* %modiff, align 8
  %cmp = icmp eq i64 %2, %5
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %6 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text2 = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 73
  %7 = load %struct.buffer_text*, %struct.buffer_text** %text2, align 8
  %overlay_unchanged_modified = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %7, i32 0, i32 14
  %8 = load i64, i64* %overlay_unchanged_modified, align 8
  %9 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text3 = getelementptr inbounds %struct.buffer, %struct.buffer* %9, i32 0, i32 73
  %10 = load %struct.buffer_text*, %struct.buffer_text** %text3, align 8
  %overlay_modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %10, i32 0, i32 9
  %11 = load i64, i64* %overlay_modiff, align 8
  %cmp4 = icmp eq i64 %8, %11
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %12 = load i64, i64* %charpos.addr, align 8
  %sub = sub nsw i64 %12, 1
  %13 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text5 = getelementptr inbounds %struct.buffer, %struct.buffer* %13, i32 0, i32 73
  %14 = load %struct.buffer_text*, %struct.buffer_text** %text5, align 8
  %beg_unchanged = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %14, i32 0, i32 11
  store i64 %sub, i64* %beg_unchanged, align 8
  %15 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text6 = getelementptr inbounds %struct.buffer, %struct.buffer* %15, i32 0, i32 73
  %16 = load %struct.buffer_text*, %struct.buffer_text** %text6, align 8
  %z = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %16, i32 0, i32 2
  %17 = load i64, i64* %z, align 8
  %18 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text7 = getelementptr inbounds %struct.buffer, %struct.buffer* %18, i32 0, i32 73
  %19 = load %struct.buffer_text*, %struct.buffer_text** %text7, align 8
  %gpt = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %19, i32 0, i32 1
  %20 = load i64, i64* %gpt, align 8
  %sub8 = sub nsw i64 %17, %20
  %21 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text9 = getelementptr inbounds %struct.buffer, %struct.buffer* %21, i32 0, i32 73
  %22 = load %struct.buffer_text*, %struct.buffer_text** %text9, align 8
  %end_unchanged = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %22, i32 0, i32 12
  store i64 %sub8, i64* %end_unchanged, align 8
  br label %if.end.35

if.else:                                          ; preds = %land.lhs.true, %do.body
  %23 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text10 = getelementptr inbounds %struct.buffer, %struct.buffer* %23, i32 0, i32 73
  %24 = load %struct.buffer_text*, %struct.buffer_text** %text10, align 8
  %z11 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %24, i32 0, i32 2
  %25 = load i64, i64* %z11, align 8
  %26 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text12 = getelementptr inbounds %struct.buffer, %struct.buffer* %26, i32 0, i32 73
  %27 = load %struct.buffer_text*, %struct.buffer_text** %text12, align 8
  %gpt13 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %27, i32 0, i32 1
  %28 = load i64, i64* %gpt13, align 8
  %sub14 = sub nsw i64 %25, %28
  %29 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text15 = getelementptr inbounds %struct.buffer, %struct.buffer* %29, i32 0, i32 73
  %30 = load %struct.buffer_text*, %struct.buffer_text** %text15, align 8
  %end_unchanged16 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %30, i32 0, i32 12
  %31 = load i64, i64* %end_unchanged16, align 8
  %cmp17 = icmp slt i64 %sub14, %31
  br i1 %cmp17, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %if.else
  %32 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text19 = getelementptr inbounds %struct.buffer, %struct.buffer* %32, i32 0, i32 73
  %33 = load %struct.buffer_text*, %struct.buffer_text** %text19, align 8
  %z20 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %33, i32 0, i32 2
  %34 = load i64, i64* %z20, align 8
  %35 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text21 = getelementptr inbounds %struct.buffer, %struct.buffer* %35, i32 0, i32 73
  %36 = load %struct.buffer_text*, %struct.buffer_text** %text21, align 8
  %gpt22 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %36, i32 0, i32 1
  %37 = load i64, i64* %gpt22, align 8
  %sub23 = sub nsw i64 %34, %37
  %38 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text24 = getelementptr inbounds %struct.buffer, %struct.buffer* %38, i32 0, i32 73
  %39 = load %struct.buffer_text*, %struct.buffer_text** %text24, align 8
  %end_unchanged25 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %39, i32 0, i32 12
  store i64 %sub23, i64* %end_unchanged25, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.18, %if.else
  %40 = load i64, i64* %charpos.addr, align 8
  %sub26 = sub nsw i64 %40, 1
  %41 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text27 = getelementptr inbounds %struct.buffer, %struct.buffer* %41, i32 0, i32 73
  %42 = load %struct.buffer_text*, %struct.buffer_text** %text27, align 8
  %beg_unchanged28 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %42, i32 0, i32 11
  %43 = load i64, i64* %beg_unchanged28, align 8
  %cmp29 = icmp slt i64 %sub26, %43
  br i1 %cmp29, label %if.then.30, label %if.end.34

if.then.30:                                       ; preds = %if.end
  %44 = load i64, i64* %charpos.addr, align 8
  %sub31 = sub nsw i64 %44, 1
  %45 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text32 = getelementptr inbounds %struct.buffer, %struct.buffer* %45, i32 0, i32 73
  %46 = load %struct.buffer_text*, %struct.buffer_text** %text32, align 8
  %beg_unchanged33 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %46, i32 0, i32 11
  store i64 %sub31, i64* %beg_unchanged33, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.30, %if.end
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then
  br label %do.end

do.end:                                           ; preds = %if.end.35
  %47 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text36 = getelementptr inbounds %struct.buffer, %struct.buffer* %47, i32 0, i32 73
  %48 = load %struct.buffer_text*, %struct.buffer_text** %text36, align 8
  %gpt_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %48, i32 0, i32 3
  %49 = load i64, i64* %gpt_byte, align 8
  store i64 %49, i64* %i, align 8
  %50 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text37 = getelementptr inbounds %struct.buffer, %struct.buffer* %50, i32 0, i32 73
  %51 = load %struct.buffer_text*, %struct.buffer_text** %text37, align 8
  %beg = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %51, i32 0, i32 0
  %52 = load i8*, i8** %beg, align 8
  %53 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text38 = getelementptr inbounds %struct.buffer, %struct.buffer* %53, i32 0, i32 73
  %54 = load %struct.buffer_text*, %struct.buffer_text** %text38, align 8
  %gpt_byte39 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %54, i32 0, i32 3
  %55 = load i64, i64* %gpt_byte39, align 8
  %add.ptr = getelementptr inbounds i8, i8* %52, i64 %55
  %56 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text40 = getelementptr inbounds %struct.buffer, %struct.buffer* %56, i32 0, i32 73
  %57 = load %struct.buffer_text*, %struct.buffer_text** %text40, align 8
  %gap_size = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %57, i32 0, i32 5
  %58 = load i64, i64* %gap_size, align 8
  %add.ptr41 = getelementptr inbounds i8, i8* %add.ptr, i64 %58
  %add.ptr42 = getelementptr inbounds i8, i8* %add.ptr41, i64 -1
  store i8* %add.ptr42, i8** %from, align 8
  %59 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text43 = getelementptr inbounds %struct.buffer, %struct.buffer* %59, i32 0, i32 73
  %60 = load %struct.buffer_text*, %struct.buffer_text** %text43, align 8
  %beg44 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %60, i32 0, i32 0
  %61 = load i8*, i8** %beg44, align 8
  %62 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text45 = getelementptr inbounds %struct.buffer, %struct.buffer* %62, i32 0, i32 73
  %63 = load %struct.buffer_text*, %struct.buffer_text** %text45, align 8
  %gpt_byte46 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %63, i32 0, i32 3
  %64 = load i64, i64* %gpt_byte46, align 8
  %add.ptr47 = getelementptr inbounds i8, i8* %61, i64 %64
  %add.ptr48 = getelementptr inbounds i8, i8* %add.ptr47, i64 -1
  store i8* %add.ptr48, i8** %to, align 8
  %65 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text49 = getelementptr inbounds %struct.buffer, %struct.buffer* %65, i32 0, i32 73
  %66 = load %struct.buffer_text*, %struct.buffer_text** %text49, align 8
  %gpt_byte50 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %66, i32 0, i32 3
  %67 = load i64, i64* %gpt_byte50, align 8
  store i64 %67, i64* %new_s1, align 8
  br label %while.body

while.body:                                       ; preds = %do.end, %if.end.64
  %68 = load i64, i64* %bytepos.addr, align 8
  %69 = load i64, i64* %new_s1, align 8
  %sub51 = sub nsw i64 %68, %69
  store i64 %sub51, i64* %i, align 8
  %70 = load i64, i64* %i, align 8
  %cmp52 = icmp eq i64 %70, 0
  br i1 %cmp52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %while.body
  br label %while.end

if.end.54:                                        ; preds = %while.body
  %71 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp55 = icmp eq i64 %71, %call
  br i1 %cmp55, label %if.end.61, label %land.lhs.true.56

land.lhs.true.56:                                 ; preds = %if.end.54
  %72 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call57 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp58 = icmp eq i64 %72, %call57
  br i1 %cmp58, label %if.then.59, label %if.end.61

if.then.59:                                       ; preds = %land.lhs.true.56
  %73 = load i64, i64* %new_s1, align 8
  store i64 %73, i64* %bytepos.addr, align 8
  %74 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %75 = load i64, i64* %bytepos.addr, align 8
  %call60 = call i64 @buf_bytepos_to_charpos(%struct.buffer* %74, i64 %75)
  store i64 %call60, i64* %charpos.addr, align 8
  br label %while.end

if.end.61:                                        ; preds = %land.lhs.true.56, %if.end.54
  %76 = load i64, i64* %i, align 8
  %cmp62 = icmp sgt i64 %76, 32000
  br i1 %cmp62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.end.61
  store i64 32000, i64* %i, align 8
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %if.end.61
  %77 = load i64, i64* %i, align 8
  %78 = load i64, i64* %new_s1, align 8
  %add = add nsw i64 %78, %77
  store i64 %add, i64* %new_s1, align 8
  %79 = load i8*, i8** %to, align 8
  %80 = load i8*, i8** %from, align 8
  %81 = load i64, i64* %i, align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %79, i8* %80, i64 %81, i32 1, i1 false)
  %82 = load i64, i64* %i, align 8
  %83 = load i8*, i8** %from, align 8
  %add.ptr65 = getelementptr inbounds i8, i8* %83, i64 %82
  store i8* %add.ptr65, i8** %from, align 8
  %84 = load i64, i64* %i, align 8
  %85 = load i8*, i8** %to, align 8
  %add.ptr66 = getelementptr inbounds i8, i8* %85, i64 %84
  store i8* %add.ptr66, i8** %to, align 8
  br label %while.body

while.end:                                        ; preds = %if.then.59, %if.then.53
  %86 = load i64, i64* %charpos.addr, align 8
  %87 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text67 = getelementptr inbounds %struct.buffer, %struct.buffer* %87, i32 0, i32 73
  %88 = load %struct.buffer_text*, %struct.buffer_text** %text67, align 8
  %gpt68 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %88, i32 0, i32 1
  store i64 %86, i64* %gpt68, align 8
  %89 = load i64, i64* %bytepos.addr, align 8
  %90 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text69 = getelementptr inbounds %struct.buffer, %struct.buffer* %90, i32 0, i32 73
  %91 = load %struct.buffer_text*, %struct.buffer_text** %text69, align 8
  %gpt_byte70 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %91, i32 0, i32 3
  store i64 %89, i64* %gpt_byte70, align 8
  %92 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text71 = getelementptr inbounds %struct.buffer, %struct.buffer* %92, i32 0, i32 73
  %93 = load %struct.buffer_text*, %struct.buffer_text** %text71, align 8
  %gap_size72 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %93, i32 0, i32 5
  %94 = load i64, i64* %gap_size72, align 8
  %cmp73 = icmp sgt i64 %94, 0
  br i1 %cmp73, label %if.then.74, label %if.end.81

if.then.74:                                       ; preds = %while.end
  %95 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text75 = getelementptr inbounds %struct.buffer, %struct.buffer* %95, i32 0, i32 73
  %96 = load %struct.buffer_text*, %struct.buffer_text** %text75, align 8
  %beg76 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %96, i32 0, i32 0
  %97 = load i8*, i8** %beg76, align 8
  %98 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text77 = getelementptr inbounds %struct.buffer, %struct.buffer* %98, i32 0, i32 73
  %99 = load %struct.buffer_text*, %struct.buffer_text** %text77, align 8
  %gpt_byte78 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %99, i32 0, i32 3
  %100 = load i64, i64* %gpt_byte78, align 8
  %add.ptr79 = getelementptr inbounds i8, i8* %97, i64 %100
  %add.ptr80 = getelementptr inbounds i8, i8* %add.ptr79, i64 -1
  store i8 0, i8* %add.ptr80, align 1
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.74, %while.end
  br label %do.body.82

do.body.82:                                       ; preds = %if.end.81
  %101 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call83 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp84 = icmp eq i64 %101, %call83
  br i1 %cmp84, label %if.else.89, label %land.lhs.true.85

land.lhs.true.85:                                 ; preds = %do.body.82
  %102 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call86 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp87 = icmp eq i64 %102, %call86
  br i1 %cmp87, label %if.then.88, label %if.else.89

if.then.88:                                       ; preds = %land.lhs.true.85
  call void @process_quit_flag()
  br label %if.end.92

if.else.89:                                       ; preds = %land.lhs.true.85, %do.body.82
  %103 = load volatile i8, i8* @pending_signals, align 1
  %tobool = trunc i8 %103 to i1
  br i1 %tobool, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %if.else.89
  call void @process_pending_signals()
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.90, %if.else.89
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.then.88
  br label %do.end.93

do.end.93:                                        ; preds = %if.end.92
  ret void
}

; Function Attrs: nounwind uwtable
define void @adjust_markers_for_delete(i64 %from, i64 %from_byte, i64 %to, i64 %to_byte) #0 {
entry:
  %from.addr = alloca i64, align 8
  %from_byte.addr = alloca i64, align 8
  %to.addr = alloca i64, align 8
  %to_byte.addr = alloca i64, align 8
  %m = alloca %struct.Lisp_Marker*, align 8
  %charpos = alloca i64, align 8
  store i64 %from, i64* %from.addr, align 8
  store i64 %from_byte, i64* %from_byte.addr, align 8
  store i64 %to, i64* %to.addr, align 8
  store i64 %to_byte, i64* %to_byte.addr, align 8
  %0 = load i64, i64* %from.addr, align 8
  %1 = load i64, i64* %to.addr, align 8
  call void @adjust_suspend_auto_hscroll(i64 %0, i64 %1)
  %2 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %2, i32 0, i32 73
  %3 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %markers = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %3, i32 0, i32 16
  %4 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %markers, align 8
  store %struct.Lisp_Marker* %4, %struct.Lisp_Marker** %m, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %m, align 8
  %tobool = icmp ne %struct.Lisp_Marker* %5, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %m, align 8
  %charpos1 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %6, i32 0, i32 3
  %7 = load i64, i64* %charpos1, align 8
  store i64 %7, i64* %charpos, align 8
  %8 = load i64, i64* %charpos, align 8
  %9 = load i64, i64* %to.addr, align 8
  %cmp = icmp sgt i64 %8, %9
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %10 = load i64, i64* %to.addr, align 8
  %11 = load i64, i64* %from.addr, align 8
  %sub = sub nsw i64 %10, %11
  %12 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %m, align 8
  %charpos2 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %12, i32 0, i32 3
  %13 = load i64, i64* %charpos2, align 8
  %sub3 = sub nsw i64 %13, %sub
  store i64 %sub3, i64* %charpos2, align 8
  %14 = load i64, i64* %to_byte.addr, align 8
  %15 = load i64, i64* %from_byte.addr, align 8
  %sub4 = sub nsw i64 %14, %15
  %16 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %m, align 8
  %bytepos = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %16, i32 0, i32 4
  %17 = load i64, i64* %bytepos, align 8
  %sub5 = sub nsw i64 %17, %sub4
  store i64 %sub5, i64* %bytepos, align 8
  br label %if.end.10

if.else:                                          ; preds = %for.body
  %18 = load i64, i64* %charpos, align 8
  %19 = load i64, i64* %from.addr, align 8
  %cmp6 = icmp sgt i64 %18, %19
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.else
  %20 = load i64, i64* %from.addr, align 8
  %21 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %m, align 8
  %charpos8 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %21, i32 0, i32 3
  store i64 %20, i64* %charpos8, align 8
  %22 = load i64, i64* %from_byte.addr, align 8
  %23 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %m, align 8
  %bytepos9 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %23, i32 0, i32 4
  store i64 %22, i64* %bytepos9, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.else
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.10
  %24 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %m, align 8
  %next = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %24, i32 0, i32 2
  %25 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %next, align 8
  store %struct.Lisp_Marker* %25, %struct.Lisp_Marker** %m, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @adjust_suspend_auto_hscroll(i64 %from, i64 %to) #0 {
entry:
  %from.addr = alloca i64, align 8
  %to.addr = alloca i64, align 8
  %w = alloca %struct.window*, align 8
  store i64 %from, i64* %from.addr, align 8
  store i64 %to, i64* %to.addr, align 8
  %0 = load i64, i64* @selected_window, align 8
  %call = call zeroext i1 @WINDOWP(i64 %0)
  br i1 %call, label %if.then, label %if.end.14

if.then:                                          ; preds = %entry
  %1 = load i64, i64* @selected_window, align 8
  %call1 = call %struct.window* @XWINDOW(i64 %1)
  store %struct.window* %call1, %struct.window** %w, align 8
  %2 = load %struct.window*, %struct.window** %w, align 8
  %contents = getelementptr inbounds %struct.window, %struct.window* %2, i32 0, i32 10
  %3 = load i64, i64* %contents, align 8
  %call2 = call zeroext i1 @BUFFERP(i64 %3)
  br i1 %call2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %4 = load %struct.window*, %struct.window** %w, align 8
  %contents3 = getelementptr inbounds %struct.window, %struct.window* %4, i32 0, i32 10
  %5 = load i64, i64* %contents3, align 8
  %call4 = call %struct.buffer* @XBUFFER(i64 %5)
  %6 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp = icmp eq %struct.buffer* %call4, %6
  br i1 %cmp, label %land.lhs.true.5, label %if.end

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %7 = load %struct.window*, %struct.window** %w, align 8
  %old_pointm = getelementptr inbounds %struct.window, %struct.window* %7, i32 0, i32 13
  %8 = load i64, i64* %old_pointm, align 8
  %call6 = call %struct.Lisp_Marker* @XMARKER(i64 %8)
  %charpos = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %call6, i32 0, i32 3
  %9 = load i64, i64* %charpos, align 8
  %10 = load i64, i64* %from.addr, align 8
  %cmp7 = icmp sge i64 %9, %10
  br i1 %cmp7, label %land.lhs.true.8, label %if.end

land.lhs.true.8:                                  ; preds = %land.lhs.true.5
  %11 = load %struct.window*, %struct.window** %w, align 8
  %old_pointm9 = getelementptr inbounds %struct.window, %struct.window* %11, i32 0, i32 13
  %12 = load i64, i64* %old_pointm9, align 8
  %call10 = call %struct.Lisp_Marker* @XMARKER(i64 %12)
  %charpos11 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %call10, i32 0, i32 3
  %13 = load i64, i64* %charpos11, align 8
  %14 = load i64, i64* %to.addr, align 8
  %cmp12 = icmp sle i64 %13, %14
  br i1 %cmp12, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %land.lhs.true.8
  %15 = load %struct.window*, %struct.window** %w, align 8
  %suspend_auto_hscroll = getelementptr inbounds %struct.window, %struct.window* %15, i32 0, i32 67
  %bf.load = load i16, i16* %suspend_auto_hscroll, align 4
  %bf.clear = and i16 %bf.load, 32767
  store i16 %bf.clear, i16* %suspend_auto_hscroll, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.13, %land.lhs.true.8, %land.lhs.true.5, %land.lhs.true, %if.then
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %entry
  ret void
}

; Function Attrs: noreturn nounwind uwtable
define void @buffer_overflow() #1 {
entry:
  call void (i8*, ...) @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0)) #6
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: noreturn
declare void @error(i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @make_gap(i64 %nbytes_added) #0 {
entry:
  %nbytes_added.addr = alloca i64, align 8
  store i64 %nbytes_added, i64* %nbytes_added.addr, align 8
  %0 = load i64, i64* %nbytes_added.addr, align 8
  %cmp = icmp sge i64 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %nbytes_added.addr, align 8
  call void @make_gap_larger(i64 %1)
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i64, i64* %nbytes_added.addr, align 8
  %sub = sub nsw i64 0, %2
  call void @make_gap_smaller(i64 %sub)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @make_gap_larger(i64 %nbytes_added) #0 {
entry:
  %nbytes_added.addr = alloca i64, align 8
  %tem = alloca i64, align 8
  %real_gap_loc = alloca i64, align 8
  %real_gap_loc_byte = alloca i64, align 8
  %old_gap_size = alloca i64, align 8
  %current_size = alloca i64, align 8
  store i64 %nbytes_added, i64* %nbytes_added.addr, align 8
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 73
  %1 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %z_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %1, i32 0, i32 4
  %2 = load i64, i64* %z_byte, align 8
  %sub = sub nsw i64 %2, 1
  %3 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text1 = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i32 0, i32 73
  %4 = load %struct.buffer_text*, %struct.buffer_text** %text1, align 8
  %gap_size = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %4, i32 0, i32 5
  %5 = load i64, i64* %gap_size, align 8
  %add = add nsw i64 %sub, %5
  store i64 %add, i64* %current_size, align 8
  %6 = load i64, i64* %current_size, align 8
  %sub2 = sub nsw i64 2305843009213693950, %6
  %7 = load i64, i64* %nbytes_added.addr, align 8
  %cmp = icmp slt i64 %sub2, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @buffer_overflow() #6
  unreachable

if.end:                                           ; preds = %entry
  %8 = load i64, i64* %nbytes_added.addr, align 8
  %add3 = add nsw i64 %8, 2000
  %9 = load i64, i64* %current_size, align 8
  %sub4 = sub nsw i64 2305843009213693950, %9
  %cmp5 = icmp slt i64 %add3, %sub4
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load i64, i64* %nbytes_added.addr, align 8
  %add6 = add nsw i64 %10, 2000
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %11 = load i64, i64* %current_size, align 8
  %sub7 = sub nsw i64 2305843009213693950, %11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add6, %cond.true ], [ %sub7, %cond.false ]
  store i64 %cond, i64* %nbytes_added.addr, align 8
  %12 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %13 = load i64, i64* %nbytes_added.addr, align 8
  call void @enlarge_buffer_text(%struct.buffer* %12, i64 %13)
  %14 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  store i64 %14, i64* %tem, align 8
  %call = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %15 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text8 = getelementptr inbounds %struct.buffer, %struct.buffer* %15, i32 0, i32 73
  %16 = load %struct.buffer_text*, %struct.buffer_text** %text8, align 8
  %gpt = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %16, i32 0, i32 1
  %17 = load i64, i64* %gpt, align 8
  store i64 %17, i64* %real_gap_loc, align 8
  %18 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text9 = getelementptr inbounds %struct.buffer, %struct.buffer* %18, i32 0, i32 73
  %19 = load %struct.buffer_text*, %struct.buffer_text** %text9, align 8
  %gpt_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %19, i32 0, i32 3
  %20 = load i64, i64* %gpt_byte, align 8
  store i64 %20, i64* %real_gap_loc_byte, align 8
  %21 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text10 = getelementptr inbounds %struct.buffer, %struct.buffer* %21, i32 0, i32 73
  %22 = load %struct.buffer_text*, %struct.buffer_text** %text10, align 8
  %gap_size11 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %22, i32 0, i32 5
  %23 = load i64, i64* %gap_size11, align 8
  store i64 %23, i64* %old_gap_size, align 8
  %24 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text12 = getelementptr inbounds %struct.buffer, %struct.buffer* %24, i32 0, i32 73
  %25 = load %struct.buffer_text*, %struct.buffer_text** %text12, align 8
  %z = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %25, i32 0, i32 2
  %26 = load i64, i64* %z, align 8
  %27 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text13 = getelementptr inbounds %struct.buffer, %struct.buffer* %27, i32 0, i32 73
  %28 = load %struct.buffer_text*, %struct.buffer_text** %text13, align 8
  %gap_size14 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %28, i32 0, i32 5
  %29 = load i64, i64* %gap_size14, align 8
  %add15 = add nsw i64 %26, %29
  %30 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text16 = getelementptr inbounds %struct.buffer, %struct.buffer* %30, i32 0, i32 73
  %31 = load %struct.buffer_text*, %struct.buffer_text** %text16, align 8
  %gpt17 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %31, i32 0, i32 1
  store i64 %add15, i64* %gpt17, align 8
  %32 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text18 = getelementptr inbounds %struct.buffer, %struct.buffer* %32, i32 0, i32 73
  %33 = load %struct.buffer_text*, %struct.buffer_text** %text18, align 8
  %z_byte19 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %33, i32 0, i32 4
  %34 = load i64, i64* %z_byte19, align 8
  %35 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text20 = getelementptr inbounds %struct.buffer, %struct.buffer* %35, i32 0, i32 73
  %36 = load %struct.buffer_text*, %struct.buffer_text** %text20, align 8
  %gap_size21 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %36, i32 0, i32 5
  %37 = load i64, i64* %gap_size21, align 8
  %add22 = add nsw i64 %34, %37
  %38 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text23 = getelementptr inbounds %struct.buffer, %struct.buffer* %38, i32 0, i32 73
  %39 = load %struct.buffer_text*, %struct.buffer_text** %text23, align 8
  %gpt_byte24 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %39, i32 0, i32 3
  store i64 %add22, i64* %gpt_byte24, align 8
  %40 = load i64, i64* %nbytes_added.addr, align 8
  %41 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text25 = getelementptr inbounds %struct.buffer, %struct.buffer* %41, i32 0, i32 73
  %42 = load %struct.buffer_text*, %struct.buffer_text** %text25, align 8
  %gap_size26 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %42, i32 0, i32 5
  store i64 %40, i64* %gap_size26, align 8
  %43 = load i64, i64* %real_gap_loc, align 8
  %44 = load i64, i64* %old_gap_size, align 8
  %add27 = add nsw i64 %43, %44
  %45 = load i64, i64* %real_gap_loc_byte, align 8
  %46 = load i64, i64* %old_gap_size, align 8
  %add28 = add nsw i64 %45, %46
  call void @gap_left(i64 %add27, i64 %add28, i1 zeroext true)
  %47 = load i64, i64* %old_gap_size, align 8
  %48 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text29 = getelementptr inbounds %struct.buffer, %struct.buffer* %48, i32 0, i32 73
  %49 = load %struct.buffer_text*, %struct.buffer_text** %text29, align 8
  %gap_size30 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %49, i32 0, i32 5
  %50 = load i64, i64* %gap_size30, align 8
  %add31 = add nsw i64 %50, %47
  store i64 %add31, i64* %gap_size30, align 8
  %51 = load i64, i64* %real_gap_loc, align 8
  %52 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text32 = getelementptr inbounds %struct.buffer, %struct.buffer* %52, i32 0, i32 73
  %53 = load %struct.buffer_text*, %struct.buffer_text** %text32, align 8
  %gpt33 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %53, i32 0, i32 1
  store i64 %51, i64* %gpt33, align 8
  %54 = load i64, i64* %real_gap_loc_byte, align 8
  %55 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text34 = getelementptr inbounds %struct.buffer, %struct.buffer* %55, i32 0, i32 73
  %56 = load %struct.buffer_text*, %struct.buffer_text** %text34, align 8
  %gpt_byte35 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %56, i32 0, i32 3
  store i64 %54, i64* %gpt_byte35, align 8
  %57 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text36 = getelementptr inbounds %struct.buffer, %struct.buffer* %57, i32 0, i32 73
  %58 = load %struct.buffer_text*, %struct.buffer_text** %text36, align 8
  %beg = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %58, i32 0, i32 0
  %59 = load i8*, i8** %beg, align 8
  %60 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text37 = getelementptr inbounds %struct.buffer, %struct.buffer* %60, i32 0, i32 73
  %61 = load %struct.buffer_text*, %struct.buffer_text** %text37, align 8
  %gap_size38 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %61, i32 0, i32 5
  %62 = load i64, i64* %gap_size38, align 8
  %add.ptr = getelementptr inbounds i8, i8* %59, i64 %62
  %63 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text39 = getelementptr inbounds %struct.buffer, %struct.buffer* %63, i32 0, i32 73
  %64 = load %struct.buffer_text*, %struct.buffer_text** %text39, align 8
  %z_byte40 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %64, i32 0, i32 4
  %65 = load i64, i64* %z_byte40, align 8
  %add.ptr41 = getelementptr inbounds i8, i8* %add.ptr, i64 %65
  %add.ptr42 = getelementptr inbounds i8, i8* %add.ptr41, i64 -1
  store i8 0, i8* %add.ptr42, align 1
  %66 = load i64, i64* %tem, align 8
  store i64 %66, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @make_gap_smaller(i64 %nbytes_removed) #0 {
entry:
  %nbytes_removed.addr = alloca i64, align 8
  %tem = alloca i64, align 8
  %real_gap_loc = alloca i64, align 8
  %real_gap_loc_byte = alloca i64, align 8
  %real_Z = alloca i64, align 8
  %real_Z_byte = alloca i64, align 8
  %real_beg_unchanged = alloca i64, align 8
  %new_gap_size = alloca i64, align 8
  store i64 %nbytes_removed, i64* %nbytes_removed.addr, align 8
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 73
  %1 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %gap_size = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %1, i32 0, i32 5
  %2 = load i64, i64* %gap_size, align 8
  %3 = load i64, i64* %nbytes_removed.addr, align 8
  %sub = sub nsw i64 %2, %3
  %cmp = icmp slt i64 %sub, 20
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text1 = getelementptr inbounds %struct.buffer, %struct.buffer* %4, i32 0, i32 73
  %5 = load %struct.buffer_text*, %struct.buffer_text** %text1, align 8
  %gap_size2 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %5, i32 0, i32 5
  %6 = load i64, i64* %gap_size2, align 8
  %sub3 = sub nsw i64 %6, 20
  store i64 %sub3, i64* %nbytes_removed.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  store i64 %7, i64* %tem, align 8
  %call = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %8 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text4 = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 73
  %9 = load %struct.buffer_text*, %struct.buffer_text** %text4, align 8
  %gpt = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %9, i32 0, i32 1
  %10 = load i64, i64* %gpt, align 8
  store i64 %10, i64* %real_gap_loc, align 8
  %11 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text5 = getelementptr inbounds %struct.buffer, %struct.buffer* %11, i32 0, i32 73
  %12 = load %struct.buffer_text*, %struct.buffer_text** %text5, align 8
  %gpt_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %12, i32 0, i32 3
  %13 = load i64, i64* %gpt_byte, align 8
  store i64 %13, i64* %real_gap_loc_byte, align 8
  %14 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text6 = getelementptr inbounds %struct.buffer, %struct.buffer* %14, i32 0, i32 73
  %15 = load %struct.buffer_text*, %struct.buffer_text** %text6, align 8
  %gap_size7 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %15, i32 0, i32 5
  %16 = load i64, i64* %gap_size7, align 8
  %17 = load i64, i64* %nbytes_removed.addr, align 8
  %sub8 = sub nsw i64 %16, %17
  store i64 %sub8, i64* %new_gap_size, align 8
  %18 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text9 = getelementptr inbounds %struct.buffer, %struct.buffer* %18, i32 0, i32 73
  %19 = load %struct.buffer_text*, %struct.buffer_text** %text9, align 8
  %z = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %19, i32 0, i32 2
  %20 = load i64, i64* %z, align 8
  store i64 %20, i64* %real_Z, align 8
  %21 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text10 = getelementptr inbounds %struct.buffer, %struct.buffer* %21, i32 0, i32 73
  %22 = load %struct.buffer_text*, %struct.buffer_text** %text10, align 8
  %z_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %22, i32 0, i32 4
  %23 = load i64, i64* %z_byte, align 8
  store i64 %23, i64* %real_Z_byte, align 8
  %24 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text11 = getelementptr inbounds %struct.buffer, %struct.buffer* %24, i32 0, i32 73
  %25 = load %struct.buffer_text*, %struct.buffer_text** %text11, align 8
  %beg_unchanged = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %25, i32 0, i32 11
  %26 = load i64, i64* %beg_unchanged, align 8
  store i64 %26, i64* %real_beg_unchanged, align 8
  %27 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text12 = getelementptr inbounds %struct.buffer, %struct.buffer* %27, i32 0, i32 73
  %28 = load %struct.buffer_text*, %struct.buffer_text** %text12, align 8
  %beg = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %28, i32 0, i32 0
  %29 = load i8*, i8** %beg, align 8
  %30 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text13 = getelementptr inbounds %struct.buffer, %struct.buffer* %30, i32 0, i32 73
  %31 = load %struct.buffer_text*, %struct.buffer_text** %text13, align 8
  %gpt_byte14 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %31, i32 0, i32 3
  %32 = load i64, i64* %gpt_byte14, align 8
  %add.ptr = getelementptr inbounds i8, i8* %29, i64 %32
  %add.ptr15 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %33 = load i64, i64* %new_gap_size, align 8
  call void @llvm.memset.p0i8.i64(i8* %add.ptr15, i8 0, i64 %33, i32 1, i1 false)
  %34 = load i64, i64* %new_gap_size, align 8
  %35 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text16 = getelementptr inbounds %struct.buffer, %struct.buffer* %35, i32 0, i32 73
  %36 = load %struct.buffer_text*, %struct.buffer_text** %text16, align 8
  %gpt17 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %36, i32 0, i32 1
  %37 = load i64, i64* %gpt17, align 8
  %add = add nsw i64 %37, %34
  store i64 %add, i64* %gpt17, align 8
  %38 = load i64, i64* %new_gap_size, align 8
  %39 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text18 = getelementptr inbounds %struct.buffer, %struct.buffer* %39, i32 0, i32 73
  %40 = load %struct.buffer_text*, %struct.buffer_text** %text18, align 8
  %gpt_byte19 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %40, i32 0, i32 3
  %41 = load i64, i64* %gpt_byte19, align 8
  %add20 = add nsw i64 %41, %38
  store i64 %add20, i64* %gpt_byte19, align 8
  %42 = load i64, i64* %new_gap_size, align 8
  %43 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text21 = getelementptr inbounds %struct.buffer, %struct.buffer* %43, i32 0, i32 73
  %44 = load %struct.buffer_text*, %struct.buffer_text** %text21, align 8
  %z22 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %44, i32 0, i32 2
  %45 = load i64, i64* %z22, align 8
  %add23 = add nsw i64 %45, %42
  store i64 %add23, i64* %z22, align 8
  %46 = load i64, i64* %new_gap_size, align 8
  %47 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text24 = getelementptr inbounds %struct.buffer, %struct.buffer* %47, i32 0, i32 73
  %48 = load %struct.buffer_text*, %struct.buffer_text** %text24, align 8
  %z_byte25 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %48, i32 0, i32 4
  %49 = load i64, i64* %z_byte25, align 8
  %add26 = add nsw i64 %49, %46
  store i64 %add26, i64* %z_byte25, align 8
  %50 = load i64, i64* %nbytes_removed.addr, align 8
  %51 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text27 = getelementptr inbounds %struct.buffer, %struct.buffer* %51, i32 0, i32 73
  %52 = load %struct.buffer_text*, %struct.buffer_text** %text27, align 8
  %gap_size28 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %52, i32 0, i32 5
  store i64 %50, i64* %gap_size28, align 8
  %53 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text29 = getelementptr inbounds %struct.buffer, %struct.buffer* %53, i32 0, i32 73
  %54 = load %struct.buffer_text*, %struct.buffer_text** %text29, align 8
  %z30 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %54, i32 0, i32 2
  %55 = load i64, i64* %z30, align 8
  %56 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text31 = getelementptr inbounds %struct.buffer, %struct.buffer* %56, i32 0, i32 73
  %57 = load %struct.buffer_text*, %struct.buffer_text** %text31, align 8
  %z_byte32 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %57, i32 0, i32 4
  %58 = load i64, i64* %z_byte32, align 8
  call void @gap_right(i64 %55, i64 %58)
  %59 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %60 = load i64, i64* %nbytes_removed.addr, align 8
  %sub33 = sub nsw i64 0, %60
  call void @enlarge_buffer_text(%struct.buffer* %59, i64 %sub33)
  %61 = load i64, i64* %new_gap_size, align 8
  %62 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text34 = getelementptr inbounds %struct.buffer, %struct.buffer* %62, i32 0, i32 73
  %63 = load %struct.buffer_text*, %struct.buffer_text** %text34, align 8
  %gap_size35 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %63, i32 0, i32 5
  store i64 %61, i64* %gap_size35, align 8
  %64 = load i64, i64* %real_gap_loc, align 8
  %65 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text36 = getelementptr inbounds %struct.buffer, %struct.buffer* %65, i32 0, i32 73
  %66 = load %struct.buffer_text*, %struct.buffer_text** %text36, align 8
  %gpt37 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %66, i32 0, i32 1
  store i64 %64, i64* %gpt37, align 8
  %67 = load i64, i64* %real_gap_loc_byte, align 8
  %68 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text38 = getelementptr inbounds %struct.buffer, %struct.buffer* %68, i32 0, i32 73
  %69 = load %struct.buffer_text*, %struct.buffer_text** %text38, align 8
  %gpt_byte39 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %69, i32 0, i32 3
  store i64 %67, i64* %gpt_byte39, align 8
  %70 = load i64, i64* %real_Z, align 8
  %71 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text40 = getelementptr inbounds %struct.buffer, %struct.buffer* %71, i32 0, i32 73
  %72 = load %struct.buffer_text*, %struct.buffer_text** %text40, align 8
  %z41 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %72, i32 0, i32 2
  store i64 %70, i64* %z41, align 8
  %73 = load i64, i64* %real_Z_byte, align 8
  %74 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text42 = getelementptr inbounds %struct.buffer, %struct.buffer* %74, i32 0, i32 73
  %75 = load %struct.buffer_text*, %struct.buffer_text** %text42, align 8
  %z_byte43 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %75, i32 0, i32 4
  store i64 %73, i64* %z_byte43, align 8
  %76 = load i64, i64* %real_beg_unchanged, align 8
  %77 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text44 = getelementptr inbounds %struct.buffer, %struct.buffer* %77, i32 0, i32 73
  %78 = load %struct.buffer_text*, %struct.buffer_text** %text44, align 8
  %beg_unchanged45 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %78, i32 0, i32 11
  store i64 %76, i64* %beg_unchanged45, align 8
  %79 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text46 = getelementptr inbounds %struct.buffer, %struct.buffer* %79, i32 0, i32 73
  %80 = load %struct.buffer_text*, %struct.buffer_text** %text46, align 8
  %beg47 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %80, i32 0, i32 0
  %81 = load i8*, i8** %beg47, align 8
  %82 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text48 = getelementptr inbounds %struct.buffer, %struct.buffer* %82, i32 0, i32 73
  %83 = load %struct.buffer_text*, %struct.buffer_text** %text48, align 8
  %gap_size49 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %83, i32 0, i32 5
  %84 = load i64, i64* %gap_size49, align 8
  %add.ptr50 = getelementptr inbounds i8, i8* %81, i64 %84
  %85 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text51 = getelementptr inbounds %struct.buffer, %struct.buffer* %85, i32 0, i32 73
  %86 = load %struct.buffer_text*, %struct.buffer_text** %text51, align 8
  %z_byte52 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %86, i32 0, i32 4
  %87 = load i64, i64* %z_byte52, align 8
  %add.ptr53 = getelementptr inbounds i8, i8* %add.ptr50, i64 %87
  %add.ptr54 = getelementptr inbounds i8, i8* %add.ptr53, i64 -1
  store i8 0, i8* %add.ptr54, align 1
  %88 = load i64, i64* %tem, align 8
  store i64 %88, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @make_gap_1(%struct.buffer* %b, i64 %nbytes) #0 {
entry:
  %b.addr = alloca %struct.buffer*, align 8
  %nbytes.addr = alloca i64, align 8
  %oldb = alloca %struct.buffer*, align 8
  store %struct.buffer* %b, %struct.buffer** %b.addr, align 8
  store i64 %nbytes, i64* %nbytes.addr, align 8
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  store %struct.buffer* %0, %struct.buffer** %oldb, align 8
  %1 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  store %struct.buffer* %1, %struct.buffer** @current_buffer, align 8
  %2 = load i64, i64* %nbytes.addr, align 8
  call void @make_gap(i64 %2)
  %3 = load %struct.buffer*, %struct.buffer** %oldb, align 8
  store %struct.buffer* %3, %struct.buffer** @current_buffer, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @copy_text(i8* %from_addr, i8* %to_addr, i64 %nbytes, i1 zeroext %from_multibyte, i1 zeroext %to_multibyte) #0 {
entry:
  %retval = alloca i64, align 8
  %from_addr.addr = alloca i8*, align 8
  %to_addr.addr = alloca i8*, align 8
  %nbytes.addr = alloca i64, align 8
  %from_multibyte.addr = alloca i8, align 1
  %to_multibyte.addr = alloca i8, align 1
  %nchars = alloca i64, align 8
  %bytes_left = alloca i64, align 8
  %thislen = alloca i32, align 4
  %c = alloca i32, align 4
  %initial_to_addr = alloca i8*, align 8
  %c71 = alloca i32, align 4
  store i8* %from_addr, i8** %from_addr.addr, align 8
  store i8* %to_addr, i8** %to_addr.addr, align 8
  store i64 %nbytes, i64* %nbytes.addr, align 8
  %frombool = zext i1 %from_multibyte to i8
  store i8 %frombool, i8* %from_multibyte.addr, align 1
  %frombool1 = zext i1 %to_multibyte to i8
  store i8 %frombool1, i8* %to_multibyte.addr, align 1
  %0 = load i8, i8* %from_multibyte.addr, align 1
  %tobool = trunc i8 %0 to i1
  %conv = zext i1 %tobool to i32
  %1 = load i8, i8* %to_multibyte.addr, align 1
  %tobool2 = trunc i8 %1 to i1
  %conv3 = zext i1 %tobool2 to i32
  %cmp = icmp eq i32 %conv, %conv3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %to_addr.addr, align 8
  %3 = load i8*, i8** %from_addr.addr, align 8
  %4 = load i64, i64* %nbytes.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 %4, i32 1, i1 false)
  %5 = load i64, i64* %nbytes.addr, align 8
  store i64 %5, i64* %retval
  br label %return

if.else:                                          ; preds = %entry
  %6 = load i8, i8* %from_multibyte.addr, align 1
  %tobool5 = trunc i8 %6 to i1
  br i1 %tobool5, label %if.then.6, label %if.else.66

if.then.6:                                        ; preds = %if.else
  store i64 0, i64* %nchars, align 8
  %7 = load i64, i64* %nbytes.addr, align 8
  store i64 %7, i64* %bytes_left, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then.6
  %8 = load i64, i64* %bytes_left, align 8
  %cmp7 = icmp sgt i64 %8, 0
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i8*, i8** %from_addr.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 0
  %10 = load i8, i8* %arrayidx, align 1
  %conv9 = zext i8 %10 to i32
  %and = and i32 %conv9, 128
  %tobool10 = icmp ne i32 %and, 0
  br i1 %tobool10, label %cond.false, label %cond.true

cond.true:                                        ; preds = %while.body
  store i32 1, i32* %thislen, align 4
  %11 = load i8*, i8** %from_addr.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %11, i64 0
  %12 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %12 to i32
  br label %cond.end.51

cond.false:                                       ; preds = %while.body
  %13 = load i8*, i8** %from_addr.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 0
  %14 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %14 to i32
  %and15 = and i32 %conv14, 32
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %cond.false.28, label %cond.true.17

cond.true.17:                                     ; preds = %cond.false
  store i32 2, i32* %thislen, align 4
  %15 = load i8*, i8** %from_addr.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %15, i64 0
  %16 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %16 to i32
  %and20 = and i32 %conv19, 31
  %shl = shl i32 %and20, 6
  %17 = load i8*, i8** %from_addr.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %17, i64 1
  %18 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %18 to i32
  %and23 = and i32 %conv22, 63
  %or = or i32 %shl, %and23
  %19 = load i8*, i8** %from_addr.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %19, i64 0
  %20 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %20 to i32
  %cmp26 = icmp slt i32 %conv25, 194
  %cond = select i1 %cmp26, i32 4194176, i32 0
  %add = add nsw i32 %or, %cond
  br label %cond.end.49

cond.false.28:                                    ; preds = %cond.false
  %21 = load i8*, i8** %from_addr.addr, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %21, i64 0
  %22 = load i8, i8* %arrayidx29, align 1
  %conv30 = zext i8 %22 to i32
  %and31 = and i32 %conv30, 16
  %tobool32 = icmp ne i32 %and31, 0
  br i1 %tobool32, label %cond.false.47, label %cond.true.33

cond.true.33:                                     ; preds = %cond.false.28
  store i32 3, i32* %thislen, align 4
  %23 = load i8*, i8** %from_addr.addr, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %23, i64 0
  %24 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %24 to i32
  %and36 = and i32 %conv35, 15
  %shl37 = shl i32 %and36, 12
  %25 = load i8*, i8** %from_addr.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %25, i64 1
  %26 = load i8, i8* %arrayidx38, align 1
  %conv39 = zext i8 %26 to i32
  %and40 = and i32 %conv39, 63
  %shl41 = shl i32 %and40, 6
  %or42 = or i32 %shl37, %shl41
  %27 = load i8*, i8** %from_addr.addr, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %27, i64 2
  %28 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %28 to i32
  %and45 = and i32 %conv44, 63
  %or46 = or i32 %or42, %and45
  br label %cond.end

cond.false.47:                                    ; preds = %cond.false.28
  %29 = load i8*, i8** %from_addr.addr, align 8
  %call = call i32 @string_char(i8* %29, i8** null, i32* %thislen)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.47, %cond.true.33
  %cond48 = phi i32 [ %or46, %cond.true.33 ], [ %call, %cond.false.47 ]
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.end, %cond.true.17
  %cond50 = phi i32 [ %add, %cond.true.17 ], [ %cond48, %cond.end ]
  br label %cond.end.51

cond.end.51:                                      ; preds = %cond.end.49, %cond.true
  %cond52 = phi i32 [ %conv12, %cond.true ], [ %cond50, %cond.end.49 ]
  store i32 %cond52, i32* %c, align 4
  br i1 true, label %cond.true.53, label %cond.false.57

cond.true.53:                                     ; preds = %cond.end.51
  %30 = load i32, i32* %c, align 4
  %add54 = add i32 %30, 0
  %cmp55 = icmp ult i32 %add54, 128
  br i1 %cmp55, label %if.end, label %if.then.62

cond.false.57:                                    ; preds = %cond.end.51
  %31 = load i32, i32* %c, align 4
  %conv58 = sext i32 %31 to i64
  %add59 = add i64 %conv58, 0
  %cmp60 = icmp ult i64 %add59, 128
  br i1 %cmp60, label %if.end, label %if.then.62

if.then.62:                                       ; preds = %cond.false.57, %cond.true.53
  %32 = load i32, i32* %c, align 4
  %and63 = and i32 %32, 255
  store i32 %and63, i32* %c, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.62, %cond.false.57, %cond.true.53
  %33 = load i32, i32* %c, align 4
  %conv64 = trunc i32 %33 to i8
  %34 = load i8*, i8** %to_addr.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr, i8** %to_addr.addr, align 8
  store i8 %conv64, i8* %34, align 1
  %35 = load i32, i32* %thislen, align 4
  %36 = load i8*, i8** %from_addr.addr, align 8
  %idx.ext = sext i32 %35 to i64
  %add.ptr = getelementptr inbounds i8, i8* %36, i64 %idx.ext
  store i8* %add.ptr, i8** %from_addr.addr, align 8
  %37 = load i32, i32* %thislen, align 4
  %conv65 = sext i32 %37 to i64
  %38 = load i64, i64* %bytes_left, align 8
  %sub = sub nsw i64 %38, %conv65
  store i64 %sub, i64* %bytes_left, align 8
  %39 = load i64, i64* %nchars, align 8
  %inc = add nsw i64 %39, 1
  store i64 %inc, i64* %nchars, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %40 = load i64, i64* %nchars, align 8
  store i64 %40, i64* %retval
  br label %return

if.else.66:                                       ; preds = %if.else
  %41 = load i8*, i8** %to_addr.addr, align 8
  store i8* %41, i8** %initial_to_addr, align 8
  br label %while.cond.67

while.cond.67:                                    ; preds = %if.end.153, %if.else.66
  %42 = load i64, i64* %nbytes.addr, align 8
  %cmp68 = icmp sgt i64 %42, 0
  br i1 %cmp68, label %while.body.70, label %while.end.154

while.body.70:                                    ; preds = %while.cond.67
  %43 = load i8*, i8** %from_addr.addr, align 8
  %incdec.ptr72 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr72, i8** %from_addr.addr, align 8
  %44 = load i8, i8* %43, align 1
  %conv73 = zext i8 %44 to i32
  store i32 %conv73, i32* %c71, align 4
  br i1 true, label %cond.true.74, label %cond.false.78

cond.true.74:                                     ; preds = %while.body.70
  %45 = load i32, i32* %c71, align 4
  %add75 = add i32 %45, 0
  %cmp76 = icmp ult i32 %add75, 128
  br i1 %cmp76, label %if.else.149, label %if.then.83

cond.false.78:                                    ; preds = %while.body.70
  %46 = load i32, i32* %c71, align 4
  %conv79 = sext i32 %46 to i64
  %add80 = add i64 %conv79, 0
  %cmp81 = icmp ult i64 %add80, 128
  br i1 %cmp81, label %if.else.149, label %if.then.83

if.then.83:                                       ; preds = %cond.false.78, %cond.true.74
  %47 = load i32, i32* %c71, align 4
  %add84 = add nsw i32 %47, 4194048
  store i32 %add84, i32* %c71, align 4
  br i1 true, label %cond.true.85, label %cond.false.89

cond.true.85:                                     ; preds = %if.then.83
  %48 = load i32, i32* %c71, align 4
  %add86 = add i32 %48, 0
  %cmp87 = icmp ule i32 %add86, 127
  br i1 %cmp87, label %cond.true.94, label %cond.false.97

cond.false.89:                                    ; preds = %if.then.83
  %49 = load i32, i32* %c71, align 4
  %conv90 = sext i32 %49 to i64
  %add91 = add i64 %conv90, 0
  %cmp92 = icmp ule i64 %add91, 127
  br i1 %cmp92, label %cond.true.94, label %cond.false.97

cond.true.94:                                     ; preds = %cond.false.89, %cond.true.85
  %50 = load i32, i32* %c71, align 4
  %conv95 = trunc i32 %50 to i8
  %51 = load i8*, i8** %to_addr.addr, align 8
  %arrayidx96 = getelementptr inbounds i8, i8* %51, i64 0
  store i8 %conv95, i8* %arrayidx96, align 1
  br label %cond.end.145

cond.false.97:                                    ; preds = %cond.false.89, %cond.true.85
  br i1 true, label %cond.true.98, label %cond.false.102

cond.true.98:                                     ; preds = %cond.false.97
  %52 = load i32, i32* %c71, align 4
  %add99 = add i32 %52, 0
  %cmp100 = icmp ule i32 %add99, 2047
  br i1 %cmp100, label %cond.true.107, label %cond.false.115

cond.false.102:                                   ; preds = %cond.false.97
  %53 = load i32, i32* %c71, align 4
  %conv103 = sext i32 %53 to i64
  %add104 = add i64 %conv103, 0
  %cmp105 = icmp ule i64 %add104, 2047
  br i1 %cmp105, label %cond.true.107, label %cond.false.115

cond.true.107:                                    ; preds = %cond.false.102, %cond.true.98
  %54 = load i32, i32* %c71, align 4
  %shr = ashr i32 %54, 6
  %or108 = or i32 192, %shr
  %conv109 = trunc i32 %or108 to i8
  %55 = load i8*, i8** %to_addr.addr, align 8
  %arrayidx110 = getelementptr inbounds i8, i8* %55, i64 0
  store i8 %conv109, i8* %arrayidx110, align 1
  %56 = load i32, i32* %c71, align 4
  %and111 = and i32 %56, 63
  %or112 = or i32 128, %and111
  %conv113 = trunc i32 %or112 to i8
  %57 = load i8*, i8** %to_addr.addr, align 8
  %arrayidx114 = getelementptr inbounds i8, i8* %57, i64 1
  store i8 %conv113, i8* %arrayidx114, align 1
  br label %cond.end.143

cond.false.115:                                   ; preds = %cond.false.102, %cond.true.98
  br i1 true, label %cond.true.116, label %cond.false.120

cond.true.116:                                    ; preds = %cond.false.115
  %58 = load i32, i32* %c71, align 4
  %add117 = add i32 %58, 0
  %cmp118 = icmp ule i32 %add117, 65535
  br i1 %cmp118, label %cond.true.125, label %cond.false.139

cond.false.120:                                   ; preds = %cond.false.115
  %59 = load i32, i32* %c71, align 4
  %conv121 = sext i32 %59 to i64
  %add122 = add i64 %conv121, 0
  %cmp123 = icmp ule i64 %add122, 65535
  br i1 %cmp123, label %cond.true.125, label %cond.false.139

cond.true.125:                                    ; preds = %cond.false.120, %cond.true.116
  %60 = load i32, i32* %c71, align 4
  %shr126 = ashr i32 %60, 12
  %or127 = or i32 224, %shr126
  %conv128 = trunc i32 %or127 to i8
  %61 = load i8*, i8** %to_addr.addr, align 8
  %arrayidx129 = getelementptr inbounds i8, i8* %61, i64 0
  store i8 %conv128, i8* %arrayidx129, align 1
  %62 = load i32, i32* %c71, align 4
  %shr130 = ashr i32 %62, 6
  %and131 = and i32 %shr130, 63
  %or132 = or i32 128, %and131
  %conv133 = trunc i32 %or132 to i8
  %63 = load i8*, i8** %to_addr.addr, align 8
  %arrayidx134 = getelementptr inbounds i8, i8* %63, i64 1
  store i8 %conv133, i8* %arrayidx134, align 1
  %64 = load i32, i32* %c71, align 4
  %and135 = and i32 %64, 63
  %or136 = or i32 128, %and135
  %conv137 = trunc i32 %or136 to i8
  %65 = load i8*, i8** %to_addr.addr, align 8
  %arrayidx138 = getelementptr inbounds i8, i8* %65, i64 2
  store i8 %conv137, i8* %arrayidx138, align 1
  br label %cond.end.141

cond.false.139:                                   ; preds = %cond.false.120, %cond.true.116
  %66 = load i32, i32* %c71, align 4
  %67 = load i8*, i8** %to_addr.addr, align 8
  %call140 = call i32 @char_string(i32 %66, i8* %67)
  br label %cond.end.141

cond.end.141:                                     ; preds = %cond.false.139, %cond.true.125
  %cond142 = phi i32 [ 3, %cond.true.125 ], [ %call140, %cond.false.139 ]
  br label %cond.end.143

cond.end.143:                                     ; preds = %cond.end.141, %cond.true.107
  %cond144 = phi i32 [ 2, %cond.true.107 ], [ %cond142, %cond.end.141 ]
  br label %cond.end.145

cond.end.145:                                     ; preds = %cond.end.143, %cond.true.94
  %cond146 = phi i32 [ 1, %cond.true.94 ], [ %cond144, %cond.end.143 ]
  %68 = load i8*, i8** %to_addr.addr, align 8
  %idx.ext147 = sext i32 %cond146 to i64
  %add.ptr148 = getelementptr inbounds i8, i8* %68, i64 %idx.ext147
  store i8* %add.ptr148, i8** %to_addr.addr, align 8
  %69 = load i64, i64* %nbytes.addr, align 8
  %dec = add nsw i64 %69, -1
  store i64 %dec, i64* %nbytes.addr, align 8
  br label %if.end.153

if.else.149:                                      ; preds = %cond.false.78, %cond.true.74
  %70 = load i32, i32* %c71, align 4
  %conv150 = trunc i32 %70 to i8
  %71 = load i8*, i8** %to_addr.addr, align 8
  %incdec.ptr151 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %incdec.ptr151, i8** %to_addr.addr, align 8
  store i8 %conv150, i8* %71, align 1
  %72 = load i64, i64* %nbytes.addr, align 8
  %dec152 = add nsw i64 %72, -1
  store i64 %dec152, i64* %nbytes.addr, align 8
  br label %if.end.153

if.end.153:                                       ; preds = %if.else.149, %cond.end.145
  br label %while.cond.67

while.end.154:                                    ; preds = %while.cond.67
  %73 = load i8*, i8** %to_addr.addr, align 8
  %74 = load i8*, i8** %initial_to_addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %73 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %74 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %retval
  br label %return

return:                                           ; preds = %while.end.154, %while.end, %if.then
  %75 = load i64, i64* %retval
  ret i64 %75
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare i32 @string_char(i8*, i8**, i32*) #4

declare i32 @char_string(i32, i8*) #4

; Function Attrs: nounwind uwtable
define void @insert(i8* %string, i64 %nbytes) #0 {
entry:
  %string.addr = alloca i8*, align 8
  %nbytes.addr = alloca i64, align 8
  %len = alloca i64, align 8
  %opoint = alloca i64, align 8
  store i8* %string, i8** %string.addr, align 8
  store i64 %nbytes, i64* %nbytes.addr, align 8
  %0 = load i64, i64* %nbytes.addr, align 8
  %cmp = icmp sgt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %string.addr, align 8
  %2 = load i64, i64* %nbytes.addr, align 8
  %call = call i64 @chars_in_text(i8* %1, i64 %2)
  store i64 %call, i64* %len, align 8
  %3 = load i8*, i8** %string.addr, align 8
  %4 = load i64, i64* %len, align 8
  %5 = load i64, i64* %nbytes.addr, align 8
  call void @insert_1_both(i8* %3, i64 %4, i64 %5, i1 zeroext false, i1 zeroext true, i1 zeroext false)
  %6 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 75
  %7 = load i64, i64* %pt, align 8
  %add = add nsw i64 %7, 0
  %8 = load i64, i64* %len, align 8
  %sub = sub nsw i64 %add, %8
  store i64 %sub, i64* %opoint, align 8
  %9 = load i64, i64* %opoint, align 8
  %10 = load i64, i64* %len, align 8
  call void @signal_after_change(i64 %9, i64 0, i64 %10)
  %11 = load i64, i64* %opoint, align 8
  %12 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt1 = getelementptr inbounds %struct.buffer, %struct.buffer* %12, i32 0, i32 75
  %13 = load i64, i64* %pt1, align 8
  %add2 = add nsw i64 %13, 0
  call void @update_compositions(i64 %11, i64 %add2, i32 3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i64 @chars_in_text(i8*, i64) #4

; Function Attrs: nounwind uwtable
define void @insert_1_both(i8* %string, i64 %nchars, i64 %nbytes, i1 zeroext %inherit, i1 zeroext %prepare, i1 zeroext %before_markers) #0 {
entry:
  %string.addr = alloca i8*, align 8
  %nchars.addr = alloca i64, align 8
  %nbytes.addr = alloca i64, align 8
  %inherit.addr = alloca i8, align 1
  %prepare.addr = alloca i8, align 1
  %before_markers.addr = alloca i8, align 1
  store i8* %string, i8** %string.addr, align 8
  store i64 %nchars, i64* %nchars.addr, align 8
  store i64 %nbytes, i64* %nbytes.addr, align 8
  %frombool = zext i1 %inherit to i8
  store i8 %frombool, i8* %inherit.addr, align 1
  %frombool1 = zext i1 %prepare to i8
  store i8 %frombool1, i8* %prepare.addr, align 1
  %frombool2 = zext i1 %before_markers to i8
  store i8 %frombool2, i8* %before_markers.addr, align 1
  %0 = load i64, i64* %nchars.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.end

if.end:                                           ; preds = %entry
  %1 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_ = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 39
  %2 = load i64, i64* %enable_multibyte_characters_, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp3 = icmp eq i64 %2, %call
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %3 = load i64, i64* %nbytes.addr, align 8
  store i64 %3, i64* %nchars.addr, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %4 = load i8, i8* %prepare.addr, align 1
  %tobool = trunc i8 %4 to i1
  br i1 %tobool, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end.5
  %5 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %5, i32 0, i32 75
  %6 = load i64, i64* %pt, align 8
  %add = add nsw i64 %6, 0
  %7 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt7 = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 75
  %8 = load i64, i64* %pt7, align 8
  %add8 = add nsw i64 %8, 0
  call void @prepare_to_modify_buffer(i64 %add, i64 %add8, i64* null)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %if.end.5
  %9 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt10 = getelementptr inbounds %struct.buffer, %struct.buffer* %9, i32 0, i32 75
  %10 = load i64, i64* %pt10, align 8
  %add11 = add nsw i64 %10, 0
  %11 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %11, i32 0, i32 73
  %12 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %gpt = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %12, i32 0, i32 1
  %13 = load i64, i64* %gpt, align 8
  %cmp12 = icmp ne i64 %add11, %13
  br i1 %cmp12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %if.end.9
  %14 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt14 = getelementptr inbounds %struct.buffer, %struct.buffer* %14, i32 0, i32 75
  %15 = load i64, i64* %pt14, align 8
  %add15 = add nsw i64 %15, 0
  %16 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %16, i32 0, i32 76
  %17 = load i64, i64* %pt_byte, align 8
  %add16 = add nsw i64 %17, 0
  call void @move_gap_both(i64 %add15, i64 %add16)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.13, %if.end.9
  %18 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text18 = getelementptr inbounds %struct.buffer, %struct.buffer* %18, i32 0, i32 73
  %19 = load %struct.buffer_text*, %struct.buffer_text** %text18, align 8
  %gap_size = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %19, i32 0, i32 5
  %20 = load i64, i64* %gap_size, align 8
  %21 = load i64, i64* %nbytes.addr, align 8
  %cmp19 = icmp slt i64 %20, %21
  br i1 %cmp19, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.end.17
  %22 = load i64, i64* %nbytes.addr, align 8
  %23 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text21 = getelementptr inbounds %struct.buffer, %struct.buffer* %23, i32 0, i32 73
  %24 = load %struct.buffer_text*, %struct.buffer_text** %text21, align 8
  %gap_size22 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %24, i32 0, i32 5
  %25 = load i64, i64* %gap_size22, align 8
  %sub = sub nsw i64 %22, %25
  call void @make_gap(i64 %sub)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %if.end.17
  %26 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt24 = getelementptr inbounds %struct.buffer, %struct.buffer* %26, i32 0, i32 75
  %27 = load i64, i64* %pt24, align 8
  %add25 = add nsw i64 %27, 0
  %28 = load i64, i64* %nchars.addr, align 8
  call void @record_insert(i64 %add25, i64 %28)
  %29 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text26 = getelementptr inbounds %struct.buffer, %struct.buffer* %29, i32 0, i32 73
  %30 = load %struct.buffer_text*, %struct.buffer_text** %text26, align 8
  %modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %30, i32 0, i32 6
  %31 = load i64, i64* %modiff, align 8
  %inc = add nsw i64 %31, 1
  store i64 %inc, i64* %modiff, align 8
  %32 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text27 = getelementptr inbounds %struct.buffer, %struct.buffer* %32, i32 0, i32 73
  %33 = load %struct.buffer_text*, %struct.buffer_text** %text27, align 8
  %modiff28 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %33, i32 0, i32 6
  %34 = load i64, i64* %modiff28, align 8
  %35 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text29 = getelementptr inbounds %struct.buffer, %struct.buffer* %35, i32 0, i32 73
  %36 = load %struct.buffer_text*, %struct.buffer_text** %text29, align 8
  %chars_modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %36, i32 0, i32 7
  store i64 %34, i64* %chars_modiff, align 8
  %37 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text30 = getelementptr inbounds %struct.buffer, %struct.buffer* %37, i32 0, i32 73
  %38 = load %struct.buffer_text*, %struct.buffer_text** %text30, align 8
  %beg = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %38, i32 0, i32 0
  %39 = load i8*, i8** %beg, align 8
  %40 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text31 = getelementptr inbounds %struct.buffer, %struct.buffer* %40, i32 0, i32 73
  %41 = load %struct.buffer_text*, %struct.buffer_text** %text31, align 8
  %gpt_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %41, i32 0, i32 3
  %42 = load i64, i64* %gpt_byte, align 8
  %add.ptr = getelementptr inbounds i8, i8* %39, i64 %42
  %add.ptr32 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %43 = load i8*, i8** %string.addr, align 8
  %44 = load i64, i64* %nbytes.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr32, i8* %43, i64 %44, i32 1, i1 false)
  %45 = load i64, i64* %nbytes.addr, align 8
  %46 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text33 = getelementptr inbounds %struct.buffer, %struct.buffer* %46, i32 0, i32 73
  %47 = load %struct.buffer_text*, %struct.buffer_text** %text33, align 8
  %gap_size34 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %47, i32 0, i32 5
  %48 = load i64, i64* %gap_size34, align 8
  %sub35 = sub nsw i64 %48, %45
  store i64 %sub35, i64* %gap_size34, align 8
  %49 = load i64, i64* %nchars.addr, align 8
  %50 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text36 = getelementptr inbounds %struct.buffer, %struct.buffer* %50, i32 0, i32 73
  %51 = load %struct.buffer_text*, %struct.buffer_text** %text36, align 8
  %gpt37 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %51, i32 0, i32 1
  %52 = load i64, i64* %gpt37, align 8
  %add38 = add nsw i64 %52, %49
  store i64 %add38, i64* %gpt37, align 8
  %53 = load i64, i64* %nchars.addr, align 8
  %54 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %54, i32 0, i32 79
  %55 = load i64, i64* %zv, align 8
  %add39 = add nsw i64 %55, %53
  store i64 %add39, i64* %zv, align 8
  %56 = load i64, i64* %nchars.addr, align 8
  %57 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text40 = getelementptr inbounds %struct.buffer, %struct.buffer* %57, i32 0, i32 73
  %58 = load %struct.buffer_text*, %struct.buffer_text** %text40, align 8
  %z = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %58, i32 0, i32 2
  %59 = load i64, i64* %z, align 8
  %add41 = add nsw i64 %59, %56
  store i64 %add41, i64* %z, align 8
  %60 = load i64, i64* %nbytes.addr, align 8
  %61 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text42 = getelementptr inbounds %struct.buffer, %struct.buffer* %61, i32 0, i32 73
  %62 = load %struct.buffer_text*, %struct.buffer_text** %text42, align 8
  %gpt_byte43 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %62, i32 0, i32 3
  %63 = load i64, i64* %gpt_byte43, align 8
  %add44 = add nsw i64 %63, %60
  store i64 %add44, i64* %gpt_byte43, align 8
  %64 = load i64, i64* %nbytes.addr, align 8
  %65 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %65, i32 0, i32 80
  %66 = load i64, i64* %zv_byte, align 8
  %add45 = add nsw i64 %66, %64
  store i64 %add45, i64* %zv_byte, align 8
  %67 = load i64, i64* %nbytes.addr, align 8
  %68 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text46 = getelementptr inbounds %struct.buffer, %struct.buffer* %68, i32 0, i32 73
  %69 = load %struct.buffer_text*, %struct.buffer_text** %text46, align 8
  %z_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %69, i32 0, i32 4
  %70 = load i64, i64* %z_byte, align 8
  %add47 = add nsw i64 %70, %67
  store i64 %add47, i64* %z_byte, align 8
  %71 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text48 = getelementptr inbounds %struct.buffer, %struct.buffer* %71, i32 0, i32 73
  %72 = load %struct.buffer_text*, %struct.buffer_text** %text48, align 8
  %gap_size49 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %72, i32 0, i32 5
  %73 = load i64, i64* %gap_size49, align 8
  %cmp50 = icmp sgt i64 %73, 0
  br i1 %cmp50, label %if.then.51, label %if.end.58

if.then.51:                                       ; preds = %if.end.23
  %74 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text52 = getelementptr inbounds %struct.buffer, %struct.buffer* %74, i32 0, i32 73
  %75 = load %struct.buffer_text*, %struct.buffer_text** %text52, align 8
  %beg53 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %75, i32 0, i32 0
  %76 = load i8*, i8** %beg53, align 8
  %77 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text54 = getelementptr inbounds %struct.buffer, %struct.buffer* %77, i32 0, i32 73
  %78 = load %struct.buffer_text*, %struct.buffer_text** %text54, align 8
  %gpt_byte55 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %78, i32 0, i32 3
  %79 = load i64, i64* %gpt_byte55, align 8
  %add.ptr56 = getelementptr inbounds i8, i8* %76, i64 %79
  %add.ptr57 = getelementptr inbounds i8, i8* %add.ptr56, i64 -1
  store i8 0, i8* %add.ptr57, align 1
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.51, %if.end.23
  %80 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text59 = getelementptr inbounds %struct.buffer, %struct.buffer* %80, i32 0, i32 73
  %81 = load %struct.buffer_text*, %struct.buffer_text** %text59, align 8
  %z60 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %81, i32 0, i32 2
  %82 = load i64, i64* %z60, align 8
  %83 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text61 = getelementptr inbounds %struct.buffer, %struct.buffer* %83, i32 0, i32 73
  %84 = load %struct.buffer_text*, %struct.buffer_text** %text61, align 8
  %gpt62 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %84, i32 0, i32 1
  %85 = load i64, i64* %gpt62, align 8
  %sub63 = sub nsw i64 %82, %85
  %86 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text64 = getelementptr inbounds %struct.buffer, %struct.buffer* %86, i32 0, i32 73
  %87 = load %struct.buffer_text*, %struct.buffer_text** %text64, align 8
  %end_unchanged = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %87, i32 0, i32 12
  %88 = load i64, i64* %end_unchanged, align 8
  %cmp65 = icmp slt i64 %sub63, %88
  br i1 %cmp65, label %if.then.66, label %if.end.74

if.then.66:                                       ; preds = %if.end.58
  %89 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text67 = getelementptr inbounds %struct.buffer, %struct.buffer* %89, i32 0, i32 73
  %90 = load %struct.buffer_text*, %struct.buffer_text** %text67, align 8
  %z68 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %90, i32 0, i32 2
  %91 = load i64, i64* %z68, align 8
  %92 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text69 = getelementptr inbounds %struct.buffer, %struct.buffer* %92, i32 0, i32 73
  %93 = load %struct.buffer_text*, %struct.buffer_text** %text69, align 8
  %gpt70 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %93, i32 0, i32 1
  %94 = load i64, i64* %gpt70, align 8
  %sub71 = sub nsw i64 %91, %94
  %95 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text72 = getelementptr inbounds %struct.buffer, %struct.buffer* %95, i32 0, i32 73
  %96 = load %struct.buffer_text*, %struct.buffer_text** %text72, align 8
  %end_unchanged73 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %96, i32 0, i32 12
  store i64 %sub71, i64* %end_unchanged73, align 8
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.66, %if.end.58
  %97 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt75 = getelementptr inbounds %struct.buffer, %struct.buffer* %97, i32 0, i32 75
  %98 = load i64, i64* %pt75, align 8
  %add76 = add nsw i64 %98, 0
  %99 = load i64, i64* %nchars.addr, align 8
  call void @adjust_overlays_for_insert(i64 %add76, i64 %99)
  %100 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt77 = getelementptr inbounds %struct.buffer, %struct.buffer* %100, i32 0, i32 75
  %101 = load i64, i64* %pt77, align 8
  %add78 = add nsw i64 %101, 0
  %102 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte79 = getelementptr inbounds %struct.buffer, %struct.buffer* %102, i32 0, i32 76
  %103 = load i64, i64* %pt_byte79, align 8
  %add80 = add nsw i64 %103, 0
  %104 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt81 = getelementptr inbounds %struct.buffer, %struct.buffer* %104, i32 0, i32 75
  %105 = load i64, i64* %pt81, align 8
  %add82 = add nsw i64 %105, 0
  %106 = load i64, i64* %nchars.addr, align 8
  %add83 = add nsw i64 %add82, %106
  %107 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte84 = getelementptr inbounds %struct.buffer, %struct.buffer* %107, i32 0, i32 76
  %108 = load i64, i64* %pt_byte84, align 8
  %add85 = add nsw i64 %108, 0
  %109 = load i64, i64* %nbytes.addr, align 8
  %add86 = add nsw i64 %add85, %109
  %110 = load i8, i8* %before_markers.addr, align 1
  %tobool87 = trunc i8 %110 to i1
  call void @adjust_markers_for_insert(i64 %add78, i64 %add80, i64 %add83, i64 %add86, i1 zeroext %tobool87)
  %111 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %112 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt88 = getelementptr inbounds %struct.buffer, %struct.buffer* %112, i32 0, i32 75
  %113 = load i64, i64* %pt88, align 8
  %add89 = add nsw i64 %113, 0
  %114 = load i64, i64* %nchars.addr, align 8
  call void @offset_intervals(%struct.buffer* %111, i64 %add89, i64 %114)
  %115 = load i8, i8* %inherit.addr, align 1
  %tobool90 = trunc i8 %115 to i1
  br i1 %tobool90, label %if.end.106, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.74
  %116 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %call91 = call %struct.interval* @buffer_intervals(%struct.buffer* %116)
  %tobool92 = icmp ne %struct.interval* %call91, null
  br i1 %tobool92, label %if.then.93, label %if.end.106

if.then.93:                                       ; preds = %land.lhs.true
  %117 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt94 = getelementptr inbounds %struct.buffer, %struct.buffer* %117, i32 0, i32 75
  %118 = load i64, i64* %pt94, align 8
  %add95 = add nsw i64 %118, 0
  %shl = shl i64 %add95, 2
  %add96 = add i64 %shl, 2
  %119 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt97 = getelementptr inbounds %struct.buffer, %struct.buffer* %119, i32 0, i32 75
  %120 = load i64, i64* %pt97, align 8
  %add98 = add nsw i64 %120, 0
  %121 = load i64, i64* %nchars.addr, align 8
  %add99 = add nsw i64 %add98, %121
  %shl100 = shl i64 %add99, 2
  %add101 = add i64 %shl100, 2
  %call102 = call i64 @builtin_lisp_symbol(i32 0)
  %call103 = call i64 @builtin_lisp_symbol(i32 0)
  %call104 = call i64 @builtin_lisp_symbol(i32 0)
  %call105 = call i64 @set_text_properties(i64 %add96, i64 %add101, i64 %call102, i64 %call103, i64 %call104)
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.93, %land.lhs.true, %if.end.74
  %122 = load i64, i64* %nchars.addr, align 8
  %123 = load i64, i64* %nbytes.addr, align 8
  call void @adjust_point(i64 %122, i64 %123)
  br label %do.body

do.body:                                          ; preds = %if.end.106
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  ret void
}

; Function Attrs: nounwind uwtable
define void @signal_after_change(i64 %charpos, i64 %lendel, i64 %lenins) #0 {
entry:
  %charpos.addr = alloca i64, align 8
  %lendel.addr = alloca i64, align 8
  %lenins.addr = alloca i64, align 8
  %count = alloca i64, align 8
  %rvoe_arg = alloca %struct.rvoe_arg, align 8
  %elt = alloca i64, align 8
  %.compoundliteral = alloca [4 x i64], align 8
  store i64 %charpos, i64* %charpos.addr, align 8
  store i64 %lendel, i64* %lendel.addr, align 8
  store i64 %lenins, i64* %lenins.addr, align 8
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %count, align 8
  %0 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 456), align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 38), align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %1, %call1
  br i1 %cmp, label %if.end.21, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %2 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 13), align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp3 = icmp eq i64 %2, %call2
  br i1 %cmp3, label %land.lhs.true.4, label %if.end.21

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %call5 = call zeroext i1 @buffer_has_overlays()
  br i1 %call5, label %if.end.21, label %if.then.6

if.then.6:                                        ; preds = %land.lhs.true.4
  %3 = load i64, i64* @combine_after_change_list, align 8
  %call7 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp8 = icmp eq i64 %3, %call7
  br i1 %cmp8, label %if.end.14, label %land.lhs.true.9

land.lhs.true.9:                                  ; preds = %if.then.6
  %4 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %5 = load i64, i64* @combine_after_change_buffer, align 8
  %call10 = call %struct.buffer* @XBUFFER(i64 %5)
  %cmp11 = icmp ne %struct.buffer* %4, %call10
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %land.lhs.true.9
  %call13 = call i64 @Fcombine_after_change_execute()
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %land.lhs.true.9, %if.then.6
  %6 = load i64, i64* %charpos.addr, align 8
  %sub = sub nsw i64 %6, 1
  %7 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 73
  %8 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %z = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %8, i32 0, i32 2
  %9 = load i64, i64* %z, align 8
  %10 = load i64, i64* %charpos.addr, align 8
  %11 = load i64, i64* %lendel.addr, align 8
  %sub15 = sub nsw i64 %10, %11
  %12 = load i64, i64* %lenins.addr, align 8
  %add = add nsw i64 %sub15, %12
  %sub16 = sub nsw i64 %9, %add
  %13 = load i64, i64* %lenins.addr, align 8
  %14 = load i64, i64* %lendel.addr, align 8
  %sub17 = sub nsw i64 %13, %14
  %call18 = call i64 @list3i(i64 %sub, i64 %sub16, i64 %sub17)
  store i64 %call18, i64* %elt, align 8
  %15 = load i64, i64* %elt, align 8
  %16 = load i64, i64* @combine_after_change_list, align 8
  %call19 = call i64 @Fcons(i64 %15, i64 %16)
  store i64 %call19, i64* @combine_after_change_list, align 8
  %call20 = call i64 @Fcurrent_buffer()
  store i64 %call20, i64* @combine_after_change_buffer, align 8
  br label %return

if.end.21:                                        ; preds = %land.lhs.true.4, %land.lhs.true, %if.end
  %17 = load i64, i64* @combine_after_change_list, align 8
  %call22 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp23 = icmp eq i64 %17, %call22
  br i1 %cmp23, label %if.end.26, label %if.then.24

if.then.24:                                       ; preds = %if.end.21
  %call25 = call i64 @Fcombine_after_change_execute()
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %if.end.21
  %call27 = call i64 @builtin_lisp_symbol(i32 544)
  %call28 = call i64 @builtin_lisp_symbol(i32 901)
  call void @specbind(i64 %call27, i64 %call28)
  %18 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 0), align 8
  %call29 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp30 = icmp eq i64 %18, %call29
  br i1 %cmp30, label %if.end.43, label %if.then.31

if.then.31:                                       ; preds = %if.end.26
  %location = getelementptr inbounds %struct.rvoe_arg, %struct.rvoe_arg* %rvoe_arg, i32 0, i32 0
  store i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 0), i64** %location, align 8
  %errorp = getelementptr inbounds %struct.rvoe_arg, %struct.rvoe_arg* %rvoe_arg, i32 0, i32 1
  store i8 1, i8* %errorp, align 1
  %19 = bitcast %struct.rvoe_arg* %rvoe_arg to i8*
  call void @record_unwind_protect_ptr(void (i8*)* @reset_var_on_error, i8* %19)
  %arrayinit.begin = getelementptr inbounds [4 x i64], [4 x i64]* %.compoundliteral, i64 0, i64 0
  %call32 = call i64 @builtin_lisp_symbol(i32 165)
  store i64 %call32, i64* %arrayinit.begin
  %arrayinit.element = getelementptr inbounds i64, i64* %arrayinit.begin, i64 1
  %20 = load i64, i64* %charpos.addr, align 8
  %shl = shl i64 %20, 2
  %add33 = add i64 %shl, 2
  store i64 %add33, i64* %arrayinit.element
  %arrayinit.element34 = getelementptr inbounds i64, i64* %arrayinit.element, i64 1
  %21 = load i64, i64* %charpos.addr, align 8
  %22 = load i64, i64* %lenins.addr, align 8
  %add35 = add nsw i64 %21, %22
  %shl36 = shl i64 %add35, 2
  %add37 = add i64 %shl36, 2
  store i64 %add37, i64* %arrayinit.element34
  %arrayinit.element38 = getelementptr inbounds i64, i64* %arrayinit.element34, i64 1
  %23 = load i64, i64* %lendel.addr, align 8
  %shl39 = shl i64 %23, 2
  %add40 = add i64 %shl39, 2
  store i64 %add40, i64* %arrayinit.element38
  %arraydecay = getelementptr inbounds [4 x i64], [4 x i64]* %.compoundliteral, i32 0, i32 0
  %call41 = call i64 @Frun_hook_with_args(i64 4, i64* %arraydecay)
  %errorp42 = getelementptr inbounds %struct.rvoe_arg, %struct.rvoe_arg* %rvoe_arg, i32 0, i32 1
  store i8 0, i8* %errorp42, align 1
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.31, %if.end.26
  %call44 = call zeroext i1 @buffer_has_overlays()
  br i1 %call44, label %if.then.45, label %if.end.58

if.then.45:                                       ; preds = %if.end.43
  %24 = load i64, i64* %charpos.addr, align 8
  %shl46 = shl i64 %24, 2
  %add47 = add i64 %shl46, 2
  %25 = load i64, i64* %charpos.addr, align 8
  %26 = load i64, i64* %lenins.addr, align 8
  %add48 = add nsw i64 %25, %26
  %shl49 = shl i64 %add48, 2
  %add50 = add i64 %shl49, 2
  %27 = load i64, i64* %charpos.addr, align 8
  %shl51 = shl i64 %27, 2
  %add52 = add i64 %shl51, 2
  %28 = load i64, i64* %charpos.addr, align 8
  %29 = load i64, i64* %lenins.addr, align 8
  %add53 = add nsw i64 %28, %29
  %shl54 = shl i64 %add53, 2
  %add55 = add i64 %shl54, 2
  %30 = load i64, i64* %lendel.addr, align 8
  %shl56 = shl i64 %30, 2
  %add57 = add i64 %shl56, 2
  call void @report_overlay_modification(i64 %add47, i64 %add50, i1 zeroext true, i64 %add52, i64 %add55, i64 %add57)
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.45, %if.end.43
  %31 = load i64, i64* %lendel.addr, align 8
  %cmp59 = icmp eq i64 %31, 0
  br i1 %cmp59, label %if.then.60, label %if.end.66

if.then.60:                                       ; preds = %if.end.58
  %32 = load i64, i64* %charpos.addr, align 8
  %shl61 = shl i64 %32, 2
  %add62 = add i64 %shl61, 2
  %33 = load i64, i64* %charpos.addr, align 8
  %34 = load i64, i64* %lenins.addr, align 8
  %add63 = add nsw i64 %33, %34
  %shl64 = shl i64 %add63, 2
  %add65 = add i64 %shl64, 2
  call void @report_interval_modification(i64 %add62, i64 %add65)
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.60, %if.end.58
  %35 = load i64, i64* %count, align 8
  %call67 = call i64 @builtin_lisp_symbol(i32 0)
  %call68 = call i64 @unbind_to(i64 %35, i64 %call67)
  br label %return

return:                                           ; preds = %if.end.66, %if.end.14, %if.then
  ret void
}

declare void @update_compositions(i64, i64, i32) #4

; Function Attrs: nounwind uwtable
define void @insert_and_inherit(i8* %string, i64 %nbytes) #0 {
entry:
  %string.addr = alloca i8*, align 8
  %nbytes.addr = alloca i64, align 8
  %len = alloca i64, align 8
  %opoint = alloca i64, align 8
  store i8* %string, i8** %string.addr, align 8
  store i64 %nbytes, i64* %nbytes.addr, align 8
  %0 = load i64, i64* %nbytes.addr, align 8
  %cmp = icmp sgt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %string.addr, align 8
  %2 = load i64, i64* %nbytes.addr, align 8
  %call = call i64 @chars_in_text(i8* %1, i64 %2)
  store i64 %call, i64* %len, align 8
  %3 = load i8*, i8** %string.addr, align 8
  %4 = load i64, i64* %len, align 8
  %5 = load i64, i64* %nbytes.addr, align 8
  call void @insert_1_both(i8* %3, i64 %4, i64 %5, i1 zeroext true, i1 zeroext true, i1 zeroext false)
  %6 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 75
  %7 = load i64, i64* %pt, align 8
  %add = add nsw i64 %7, 0
  %8 = load i64, i64* %len, align 8
  %sub = sub nsw i64 %add, %8
  store i64 %sub, i64* %opoint, align 8
  %9 = load i64, i64* %opoint, align 8
  %10 = load i64, i64* %len, align 8
  call void @signal_after_change(i64 %9, i64 0, i64 %10)
  %11 = load i64, i64* %opoint, align 8
  %12 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt1 = getelementptr inbounds %struct.buffer, %struct.buffer* %12, i32 0, i32 75
  %13 = load i64, i64* %pt1, align 8
  %add2 = add nsw i64 %13, 0
  call void @update_compositions(i64 %11, i64 %add2, i32 3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @insert_char(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  %str = alloca [5 x i8], align 1
  %len = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_ = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 39
  %1 = load i64, i64* %enable_multibyte_characters_, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %1, %call
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %2 = load i32, i32* %c.addr, align 4
  %add = add i32 %2, 0
  %cmp1 = icmp ule i32 %add, 127
  br i1 %cmp1, label %cond.true.5, label %cond.false.7

cond.false:                                       ; preds = %if.then
  %3 = load i32, i32* %c.addr, align 4
  %conv = sext i32 %3 to i64
  %add2 = add i64 %conv, 0
  %cmp3 = icmp ule i64 %add2, 127
  br i1 %cmp3, label %cond.true.5, label %cond.false.7

cond.true.5:                                      ; preds = %cond.false, %cond.true
  %4 = load i32, i32* %c.addr, align 4
  %conv6 = trunc i32 %4 to i8
  %arrayidx = getelementptr inbounds [5 x i8], [5 x i8]* %str, i32 0, i64 0
  store i8 %conv6, i8* %arrayidx, align 1
  br label %cond.end.51

cond.false.7:                                     ; preds = %cond.false, %cond.true
  br i1 true, label %cond.true.8, label %cond.false.12

cond.true.8:                                      ; preds = %cond.false.7
  %5 = load i32, i32* %c.addr, align 4
  %add9 = add i32 %5, 0
  %cmp10 = icmp ule i32 %add9, 2047
  br i1 %cmp10, label %cond.true.17, label %cond.false.23

cond.false.12:                                    ; preds = %cond.false.7
  %6 = load i32, i32* %c.addr, align 4
  %conv13 = sext i32 %6 to i64
  %add14 = add i64 %conv13, 0
  %cmp15 = icmp ule i64 %add14, 2047
  br i1 %cmp15, label %cond.true.17, label %cond.false.23

cond.true.17:                                     ; preds = %cond.false.12, %cond.true.8
  %7 = load i32, i32* %c.addr, align 4
  %shr = ashr i32 %7, 6
  %or = or i32 192, %shr
  %conv18 = trunc i32 %or to i8
  %arrayidx19 = getelementptr inbounds [5 x i8], [5 x i8]* %str, i32 0, i64 0
  store i8 %conv18, i8* %arrayidx19, align 1
  %8 = load i32, i32* %c.addr, align 4
  %and = and i32 %8, 63
  %or20 = or i32 128, %and
  %conv21 = trunc i32 %or20 to i8
  %arrayidx22 = getelementptr inbounds [5 x i8], [5 x i8]* %str, i32 0, i64 1
  store i8 %conv21, i8* %arrayidx22, align 1
  br label %cond.end.49

cond.false.23:                                    ; preds = %cond.false.12, %cond.true.8
  br i1 true, label %cond.true.24, label %cond.false.28

cond.true.24:                                     ; preds = %cond.false.23
  %9 = load i32, i32* %c.addr, align 4
  %add25 = add i32 %9, 0
  %cmp26 = icmp ule i32 %add25, 65535
  br i1 %cmp26, label %cond.true.33, label %cond.false.47

cond.false.28:                                    ; preds = %cond.false.23
  %10 = load i32, i32* %c.addr, align 4
  %conv29 = sext i32 %10 to i64
  %add30 = add i64 %conv29, 0
  %cmp31 = icmp ule i64 %add30, 65535
  br i1 %cmp31, label %cond.true.33, label %cond.false.47

cond.true.33:                                     ; preds = %cond.false.28, %cond.true.24
  %11 = load i32, i32* %c.addr, align 4
  %shr34 = ashr i32 %11, 12
  %or35 = or i32 224, %shr34
  %conv36 = trunc i32 %or35 to i8
  %arrayidx37 = getelementptr inbounds [5 x i8], [5 x i8]* %str, i32 0, i64 0
  store i8 %conv36, i8* %arrayidx37, align 1
  %12 = load i32, i32* %c.addr, align 4
  %shr38 = ashr i32 %12, 6
  %and39 = and i32 %shr38, 63
  %or40 = or i32 128, %and39
  %conv41 = trunc i32 %or40 to i8
  %arrayidx42 = getelementptr inbounds [5 x i8], [5 x i8]* %str, i32 0, i64 1
  store i8 %conv41, i8* %arrayidx42, align 1
  %13 = load i32, i32* %c.addr, align 4
  %and43 = and i32 %13, 63
  %or44 = or i32 128, %and43
  %conv45 = trunc i32 %or44 to i8
  %arrayidx46 = getelementptr inbounds [5 x i8], [5 x i8]* %str, i32 0, i64 2
  store i8 %conv45, i8* %arrayidx46, align 1
  br label %cond.end

cond.false.47:                                    ; preds = %cond.false.28, %cond.true.24
  %14 = load i32, i32* %c.addr, align 4
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %str, i32 0, i32 0
  %call48 = call i32 @char_string(i32 %14, i8* %arraydecay)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.47, %cond.true.33
  %cond = phi i32 [ 3, %cond.true.33 ], [ %call48, %cond.false.47 ]
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.end, %cond.true.17
  %cond50 = phi i32 [ 2, %cond.true.17 ], [ %cond, %cond.end ]
  br label %cond.end.51

cond.end.51:                                      ; preds = %cond.end.49, %cond.true.5
  %cond52 = phi i32 [ 1, %cond.true.5 ], [ %cond50, %cond.end.49 ]
  store i32 %cond52, i32* %len, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 1, i32* %len, align 4
  %15 = load i32, i32* %c.addr, align 4
  %conv53 = trunc i32 %15 to i8
  %arrayidx54 = getelementptr inbounds [5 x i8], [5 x i8]* %str, i32 0, i64 0
  store i8 %conv53, i8* %arrayidx54, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end.51
  %arraydecay55 = getelementptr inbounds [5 x i8], [5 x i8]* %str, i32 0, i32 0
  %16 = load i32, i32* %len, align 4
  %conv56 = sext i32 %16 to i64
  call void @insert(i8* %arraydecay55, i64 %conv56)
  ret void
}

declare i64 @builtin_lisp_symbol(i32) #4

; Function Attrs: nounwind uwtable
define void @insert_string(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i8*, i8** %s.addr, align 8
  %call = call i64 @strlen(i8* %1) #7
  call void @insert(i8* %0, i64 %call)
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind uwtable
define void @insert_before_markers(i8* %string, i64 %nbytes) #0 {
entry:
  %string.addr = alloca i8*, align 8
  %nbytes.addr = alloca i64, align 8
  %len = alloca i64, align 8
  %opoint = alloca i64, align 8
  store i8* %string, i8** %string.addr, align 8
  store i64 %nbytes, i64* %nbytes.addr, align 8
  %0 = load i64, i64* %nbytes.addr, align 8
  %cmp = icmp sgt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %string.addr, align 8
  %2 = load i64, i64* %nbytes.addr, align 8
  %call = call i64 @chars_in_text(i8* %1, i64 %2)
  store i64 %call, i64* %len, align 8
  %3 = load i8*, i8** %string.addr, align 8
  %4 = load i64, i64* %len, align 8
  %5 = load i64, i64* %nbytes.addr, align 8
  call void @insert_1_both(i8* %3, i64 %4, i64 %5, i1 zeroext false, i1 zeroext true, i1 zeroext true)
  %6 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 75
  %7 = load i64, i64* %pt, align 8
  %add = add nsw i64 %7, 0
  %8 = load i64, i64* %len, align 8
  %sub = sub nsw i64 %add, %8
  store i64 %sub, i64* %opoint, align 8
  %9 = load i64, i64* %opoint, align 8
  %10 = load i64, i64* %len, align 8
  call void @signal_after_change(i64 %9, i64 0, i64 %10)
  %11 = load i64, i64* %opoint, align 8
  %12 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt1 = getelementptr inbounds %struct.buffer, %struct.buffer* %12, i32 0, i32 75
  %13 = load i64, i64* %pt1, align 8
  %add2 = add nsw i64 %13, 0
  call void @update_compositions(i64 %11, i64 %add2, i32 3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @insert_before_markers_and_inherit(i8* %string, i64 %nbytes) #0 {
entry:
  %string.addr = alloca i8*, align 8
  %nbytes.addr = alloca i64, align 8
  %len = alloca i64, align 8
  %opoint = alloca i64, align 8
  store i8* %string, i8** %string.addr, align 8
  store i64 %nbytes, i64* %nbytes.addr, align 8
  %0 = load i64, i64* %nbytes.addr, align 8
  %cmp = icmp sgt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %string.addr, align 8
  %2 = load i64, i64* %nbytes.addr, align 8
  %call = call i64 @chars_in_text(i8* %1, i64 %2)
  store i64 %call, i64* %len, align 8
  %3 = load i8*, i8** %string.addr, align 8
  %4 = load i64, i64* %len, align 8
  %5 = load i64, i64* %nbytes.addr, align 8
  call void @insert_1_both(i8* %3, i64 %4, i64 %5, i1 zeroext true, i1 zeroext true, i1 zeroext true)
  %6 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 75
  %7 = load i64, i64* %pt, align 8
  %add = add nsw i64 %7, 0
  %8 = load i64, i64* %len, align 8
  %sub = sub nsw i64 %add, %8
  store i64 %sub, i64* %opoint, align 8
  %9 = load i64, i64* %opoint, align 8
  %10 = load i64, i64* %len, align 8
  call void @signal_after_change(i64 %9, i64 0, i64 %10)
  %11 = load i64, i64* %opoint, align 8
  %12 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt1 = getelementptr inbounds %struct.buffer, %struct.buffer* %12, i32 0, i32 75
  %13 = load i64, i64* %pt1, align 8
  %add2 = add nsw i64 %13, 0
  call void @update_compositions(i64 %11, i64 %add2, i32 3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @prepare_to_modify_buffer(i64 %start, i64 %end, i64* %preserve_ptr) #0 {
entry:
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %preserve_ptr.addr = alloca i64*, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  store i64* %preserve_ptr, i64** %preserve_ptr.addr, align 8
  %0 = load i64, i64* %start.addr, align 8
  %1 = load i64, i64* %end.addr, align 8
  %2 = load i64*, i64** %preserve_ptr.addr, align 8
  call void @prepare_to_modify_buffer_1(i64 %0, i64 %1, i64* %2)
  %3 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %4 = load i64, i64* %start.addr, align 8
  %5 = load i64, i64* %end.addr, align 8
  call void @invalidate_buffer_caches(%struct.buffer* %3, i64 %4, i64 %5)
  ret void
}

declare void @record_insert(i64, i64) #4

declare void @adjust_overlays_for_insert(i64, i64) #4

; Function Attrs: nounwind uwtable
define internal void @adjust_markers_for_insert(i64 %from, i64 %from_byte, i64 %to, i64 %to_byte, i1 zeroext %before_markers) #0 {
entry:
  %from.addr = alloca i64, align 8
  %from_byte.addr = alloca i64, align 8
  %to.addr = alloca i64, align 8
  %to_byte.addr = alloca i64, align 8
  %before_markers.addr = alloca i8, align 1
  %m = alloca %struct.Lisp_Marker*, align 8
  %adjusted = alloca i8, align 1
  %nchars = alloca i64, align 8
  %nbytes = alloca i64, align 8
  store i64 %from, i64* %from.addr, align 8
  store i64 %from_byte, i64* %from_byte.addr, align 8
  store i64 %to, i64* %to.addr, align 8
  store i64 %to_byte, i64* %to_byte.addr, align 8
  %frombool = zext i1 %before_markers to i8
  store i8 %frombool, i8* %before_markers.addr, align 1
  store i8 0, i8* %adjusted, align 1
  %0 = load i64, i64* %to.addr, align 8
  %1 = load i64, i64* %from.addr, align 8
  %sub = sub nsw i64 %0, %1
  store i64 %sub, i64* %nchars, align 8
  %2 = load i64, i64* %to_byte.addr, align 8
  %3 = load i64, i64* %from_byte.addr, align 8
  %sub1 = sub nsw i64 %2, %3
  store i64 %sub1, i64* %nbytes, align 8
  %4 = load i64, i64* %from.addr, align 8
  %5 = load i64, i64* %to.addr, align 8
  call void @adjust_suspend_auto_hscroll(i64 %4, i64 %5)
  %6 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 73
  %7 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %markers = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %7, i32 0, i32 16
  %8 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %markers, align 8
  store %struct.Lisp_Marker* %8, %struct.Lisp_Marker** %m, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %m, align 8
  %tobool = icmp ne %struct.Lisp_Marker* %9, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %m, align 8
  %bytepos = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %10, i32 0, i32 4
  %11 = load i64, i64* %bytepos, align 8
  %12 = load i64, i64* %from_byte.addr, align 8
  %cmp = icmp eq i64 %11, %12
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %13 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %m, align 8
  %14 = bitcast %struct.Lisp_Marker* %13 to i32*
  %bf.load = load i32, i32* %14, align 8
  %bf.lshr = lshr i32 %bf.load, 31
  %bf.cast = trunc i32 %bf.lshr to i1
  br i1 %bf.cast, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %15 = load i8, i8* %before_markers.addr, align 1
  %tobool2 = trunc i8 %15 to i1
  br i1 %tobool2, label %if.then.3, label %if.end.9

if.then.3:                                        ; preds = %lor.lhs.false, %if.then
  %16 = load i64, i64* %to_byte.addr, align 8
  %17 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %m, align 8
  %bytepos4 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %17, i32 0, i32 4
  store i64 %16, i64* %bytepos4, align 8
  %18 = load i64, i64* %to.addr, align 8
  %19 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %m, align 8
  %charpos = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %19, i32 0, i32 3
  store i64 %18, i64* %charpos, align 8
  %20 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %m, align 8
  %21 = bitcast %struct.Lisp_Marker* %20 to i32*
  %bf.load5 = load i32, i32* %21, align 8
  %bf.lshr6 = lshr i32 %bf.load5, 31
  %bf.cast7 = trunc i32 %bf.lshr6 to i1
  br i1 %bf.cast7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then.3
  store i8 1, i8* %adjusted, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then.3
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %lor.lhs.false
  br label %if.end.17

if.else:                                          ; preds = %for.body
  %22 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %m, align 8
  %bytepos10 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %22, i32 0, i32 4
  %23 = load i64, i64* %bytepos10, align 8
  %24 = load i64, i64* %from_byte.addr, align 8
  %cmp11 = icmp sgt i64 %23, %24
  br i1 %cmp11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %if.else
  %25 = load i64, i64* %nbytes, align 8
  %26 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %m, align 8
  %bytepos13 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %26, i32 0, i32 4
  %27 = load i64, i64* %bytepos13, align 8
  %add = add nsw i64 %27, %25
  store i64 %add, i64* %bytepos13, align 8
  %28 = load i64, i64* %nchars, align 8
  %29 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %m, align 8
  %charpos14 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %29, i32 0, i32 3
  %30 = load i64, i64* %charpos14, align 8
  %add15 = add nsw i64 %30, %28
  store i64 %add15, i64* %charpos14, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.12, %if.else
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end.9
  br label %for.inc

for.inc:                                          ; preds = %if.end.17
  %31 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %m, align 8
  %next = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %31, i32 0, i32 2
  %32 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %next, align 8
  store %struct.Lisp_Marker* %32, %struct.Lisp_Marker** %m, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load i8, i8* %adjusted, align 1
  %tobool18 = trunc i8 %33 to i1
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %for.end
  %34 = load i64, i64* %from.addr, align 8
  %35 = load i64, i64* %to.addr, align 8
  call void @fix_start_end_in_overlays(i64 %34, i64 %35)
  %36 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %37 = load i64, i64* %from.addr, align 8
  %38 = load i64, i64* %to.addr, align 8
  call void @fix_overlays_before(%struct.buffer* %36, i64 %37, i64 %38)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %for.end
  ret void
}

declare void @offset_intervals(%struct.buffer*, i64, i64) #4

declare %struct.interval* @buffer_intervals(%struct.buffer*) #4

declare i64 @set_text_properties(i64, i64, i64, i64, i64) #4

; Function Attrs: nounwind uwtable
define internal void @adjust_point(i64 %nchars, i64 %nbytes) #0 {
entry:
  %nchars.addr = alloca i64, align 8
  %nbytes.addr = alloca i64, align 8
  store i64 %nchars, i64* %nchars.addr, align 8
  store i64 %nbytes, i64* %nbytes.addr, align 8
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 75
  %1 = load i64, i64* %pt, align 8
  %add = add nsw i64 %1, 0
  %2 = load i64, i64* %nchars.addr, align 8
  %add1 = add nsw i64 %add, %2
  %3 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt2 = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i32 0, i32 75
  store i64 %add1, i64* %pt2, align 8
  %4 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %4, i32 0, i32 76
  %5 = load i64, i64* %pt_byte, align 8
  %add3 = add nsw i64 %5, 0
  %6 = load i64, i64* %nbytes.addr, align 8
  %add4 = add nsw i64 %add3, %6
  %7 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte5 = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 76
  store i64 %add4, i64* %pt_byte5, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @insert_from_string(i64 %string, i64 %pos, i64 %pos_byte, i64 %length, i64 %length_byte, i1 zeroext %inherit) #0 {
entry:
  %string.addr = alloca i64, align 8
  %pos.addr = alloca i64, align 8
  %pos_byte.addr = alloca i64, align 8
  %length.addr = alloca i64, align 8
  %length_byte.addr = alloca i64, align 8
  %inherit.addr = alloca i8, align 1
  %opoint = alloca i64, align 8
  store i64 %string, i64* %string.addr, align 8
  store i64 %pos, i64* %pos.addr, align 8
  store i64 %pos_byte, i64* %pos_byte.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  store i64 %length_byte, i64* %length_byte.addr, align 8
  %frombool = zext i1 %inherit to i8
  store i8 %frombool, i8* %inherit.addr, align 1
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 75
  %1 = load i64, i64* %pt, align 8
  %add = add nsw i64 %1, 0
  store i64 %add, i64* %opoint, align 8
  %2 = load i64, i64* %string.addr, align 8
  %call = call i64 @SCHARS(i64 %2)
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %string.addr, align 8
  %4 = load i64, i64* %pos.addr, align 8
  %5 = load i64, i64* %pos_byte.addr, align 8
  %6 = load i64, i64* %length.addr, align 8
  %7 = load i64, i64* %length_byte.addr, align 8
  %8 = load i8, i8* %inherit.addr, align 1
  %tobool = trunc i8 %8 to i1
  call void @insert_from_string_1(i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i1 zeroext %tobool, i1 zeroext false)
  %9 = load i64, i64* %opoint, align 8
  %10 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt1 = getelementptr inbounds %struct.buffer, %struct.buffer* %10, i32 0, i32 75
  %11 = load i64, i64* %pt1, align 8
  %add2 = add nsw i64 %11, 0
  %12 = load i64, i64* %opoint, align 8
  %sub = sub nsw i64 %add2, %12
  call void @signal_after_change(i64 %9, i64 0, i64 %sub)
  %13 = load i64, i64* %opoint, align 8
  %14 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt3 = getelementptr inbounds %struct.buffer, %struct.buffer* %14, i32 0, i32 75
  %15 = load i64, i64* %pt3, align 8
  %add4 = add nsw i64 %15, 0
  call void @update_compositions(i64 %13, i64 %add4, i32 3)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare i64 @SCHARS(i64) #4

; Function Attrs: nounwind uwtable
define internal void @insert_from_string_1(i64 %string, i64 %pos, i64 %pos_byte, i64 %nchars, i64 %nbytes, i1 zeroext %inherit, i1 zeroext %before_markers) #0 {
entry:
  %string.addr = alloca i64, align 8
  %pos.addr = alloca i64, align 8
  %pos_byte.addr = alloca i64, align 8
  %nchars.addr = alloca i64, align 8
  %nbytes.addr = alloca i64, align 8
  %inherit.addr = alloca i8, align 1
  %before_markers.addr = alloca i8, align 1
  %outgoing_nbytes = alloca i64, align 8
  %intervals = alloca %struct.interval*, align 8
  store i64 %string, i64* %string.addr, align 8
  store i64 %pos, i64* %pos.addr, align 8
  store i64 %pos_byte, i64* %pos_byte.addr, align 8
  store i64 %nchars, i64* %nchars.addr, align 8
  store i64 %nbytes, i64* %nbytes.addr, align 8
  %frombool = zext i1 %inherit to i8
  store i8 %frombool, i8* %inherit.addr, align 1
  %frombool1 = zext i1 %before_markers to i8
  store i8 %frombool1, i8* %before_markers.addr, align 1
  %0 = load i64, i64* %nbytes.addr, align 8
  store i64 %0, i64* %outgoing_nbytes, align 8
  %1 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_ = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 39
  %2 = load i64, i64* %enable_multibyte_characters_, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %2, %call
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %nchars.addr, align 8
  store i64 %3, i64* %outgoing_nbytes, align 8
  br label %if.end.6

if.else:                                          ; preds = %entry
  %4 = load i64, i64* %string.addr, align 8
  %call2 = call zeroext i1 @STRING_MULTIBYTE(i64 %4)
  br i1 %call2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.else
  %5 = load i64, i64* %string.addr, align 8
  %call4 = call i8* @SDATA(i64 %5)
  %6 = load i64, i64* %pos_byte.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %call4, i64 %6
  %7 = load i64, i64* %nbytes.addr, align 8
  %call5 = call i64 @count_size_as_multibyte(i8* %add.ptr, i64 %7)
  store i64 %call5, i64* %outgoing_nbytes, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.else
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %8 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 75
  %9 = load i64, i64* %pt, align 8
  %add = add nsw i64 %9, 0
  %10 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt7 = getelementptr inbounds %struct.buffer, %struct.buffer* %10, i32 0, i32 75
  %11 = load i64, i64* %pt7, align 8
  %add8 = add nsw i64 %11, 0
  call void @prepare_to_modify_buffer(i64 %add, i64 %add8, i64* null)
  %12 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt9 = getelementptr inbounds %struct.buffer, %struct.buffer* %12, i32 0, i32 75
  %13 = load i64, i64* %pt9, align 8
  %add10 = add nsw i64 %13, 0
  %14 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %14, i32 0, i32 73
  %15 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %gpt = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %15, i32 0, i32 1
  %16 = load i64, i64* %gpt, align 8
  %cmp11 = icmp ne i64 %add10, %16
  br i1 %cmp11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %if.end.6
  %17 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt13 = getelementptr inbounds %struct.buffer, %struct.buffer* %17, i32 0, i32 75
  %18 = load i64, i64* %pt13, align 8
  %add14 = add nsw i64 %18, 0
  %19 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %19, i32 0, i32 76
  %20 = load i64, i64* %pt_byte, align 8
  %add15 = add nsw i64 %20, 0
  call void @move_gap_both(i64 %add14, i64 %add15)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.12, %if.end.6
  %21 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text17 = getelementptr inbounds %struct.buffer, %struct.buffer* %21, i32 0, i32 73
  %22 = load %struct.buffer_text*, %struct.buffer_text** %text17, align 8
  %gap_size = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %22, i32 0, i32 5
  %23 = load i64, i64* %gap_size, align 8
  %24 = load i64, i64* %outgoing_nbytes, align 8
  %cmp18 = icmp slt i64 %23, %24
  br i1 %cmp18, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %if.end.16
  %25 = load i64, i64* %outgoing_nbytes, align 8
  %26 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text20 = getelementptr inbounds %struct.buffer, %struct.buffer* %26, i32 0, i32 73
  %27 = load %struct.buffer_text*, %struct.buffer_text** %text20, align 8
  %gap_size21 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %27, i32 0, i32 5
  %28 = load i64, i64* %gap_size21, align 8
  %sub = sub nsw i64 %25, %28
  call void @make_gap(i64 %sub)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %if.end.16
  %29 = load i64, i64* %string.addr, align 8
  %call23 = call i8* @SDATA(i64 %29)
  %30 = load i64, i64* %pos_byte.addr, align 8
  %add.ptr24 = getelementptr inbounds i8, i8* %call23, i64 %30
  %31 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text25 = getelementptr inbounds %struct.buffer, %struct.buffer* %31, i32 0, i32 73
  %32 = load %struct.buffer_text*, %struct.buffer_text** %text25, align 8
  %beg = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %32, i32 0, i32 0
  %33 = load i8*, i8** %beg, align 8
  %34 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text26 = getelementptr inbounds %struct.buffer, %struct.buffer* %34, i32 0, i32 73
  %35 = load %struct.buffer_text*, %struct.buffer_text** %text26, align 8
  %gpt_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %35, i32 0, i32 3
  %36 = load i64, i64* %gpt_byte, align 8
  %add.ptr27 = getelementptr inbounds i8, i8* %33, i64 %36
  %add.ptr28 = getelementptr inbounds i8, i8* %add.ptr27, i64 -1
  %37 = load i64, i64* %nbytes.addr, align 8
  %38 = load i64, i64* %string.addr, align 8
  %call29 = call zeroext i1 @STRING_MULTIBYTE(i64 %38)
  %39 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_30 = getelementptr inbounds %struct.buffer, %struct.buffer* %39, i32 0, i32 39
  %40 = load i64, i64* %enable_multibyte_characters_30, align 8
  %call31 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp32 = icmp eq i64 %40, %call31
  %lnot = xor i1 %cmp32, true
  %call33 = call i64 @copy_text(i8* %add.ptr24, i8* %add.ptr28, i64 %37, i1 zeroext %call29, i1 zeroext %lnot)
  %41 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt34 = getelementptr inbounds %struct.buffer, %struct.buffer* %41, i32 0, i32 75
  %42 = load i64, i64* %pt34, align 8
  %add35 = add nsw i64 %42, 0
  %43 = load i64, i64* %nchars.addr, align 8
  call void @record_insert(i64 %add35, i64 %43)
  %44 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text36 = getelementptr inbounds %struct.buffer, %struct.buffer* %44, i32 0, i32 73
  %45 = load %struct.buffer_text*, %struct.buffer_text** %text36, align 8
  %modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %45, i32 0, i32 6
  %46 = load i64, i64* %modiff, align 8
  %inc = add nsw i64 %46, 1
  store i64 %inc, i64* %modiff, align 8
  %47 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text37 = getelementptr inbounds %struct.buffer, %struct.buffer* %47, i32 0, i32 73
  %48 = load %struct.buffer_text*, %struct.buffer_text** %text37, align 8
  %modiff38 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %48, i32 0, i32 6
  %49 = load i64, i64* %modiff38, align 8
  %50 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text39 = getelementptr inbounds %struct.buffer, %struct.buffer* %50, i32 0, i32 73
  %51 = load %struct.buffer_text*, %struct.buffer_text** %text39, align 8
  %chars_modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %51, i32 0, i32 7
  store i64 %49, i64* %chars_modiff, align 8
  %52 = load i64, i64* %outgoing_nbytes, align 8
  %53 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text40 = getelementptr inbounds %struct.buffer, %struct.buffer* %53, i32 0, i32 73
  %54 = load %struct.buffer_text*, %struct.buffer_text** %text40, align 8
  %gap_size41 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %54, i32 0, i32 5
  %55 = load i64, i64* %gap_size41, align 8
  %sub42 = sub nsw i64 %55, %52
  store i64 %sub42, i64* %gap_size41, align 8
  %56 = load i64, i64* %nchars.addr, align 8
  %57 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text43 = getelementptr inbounds %struct.buffer, %struct.buffer* %57, i32 0, i32 73
  %58 = load %struct.buffer_text*, %struct.buffer_text** %text43, align 8
  %gpt44 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %58, i32 0, i32 1
  %59 = load i64, i64* %gpt44, align 8
  %add45 = add nsw i64 %59, %56
  store i64 %add45, i64* %gpt44, align 8
  %60 = load i64, i64* %nchars.addr, align 8
  %61 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %61, i32 0, i32 79
  %62 = load i64, i64* %zv, align 8
  %add46 = add nsw i64 %62, %60
  store i64 %add46, i64* %zv, align 8
  %63 = load i64, i64* %nchars.addr, align 8
  %64 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text47 = getelementptr inbounds %struct.buffer, %struct.buffer* %64, i32 0, i32 73
  %65 = load %struct.buffer_text*, %struct.buffer_text** %text47, align 8
  %z = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %65, i32 0, i32 2
  %66 = load i64, i64* %z, align 8
  %add48 = add nsw i64 %66, %63
  store i64 %add48, i64* %z, align 8
  %67 = load i64, i64* %outgoing_nbytes, align 8
  %68 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text49 = getelementptr inbounds %struct.buffer, %struct.buffer* %68, i32 0, i32 73
  %69 = load %struct.buffer_text*, %struct.buffer_text** %text49, align 8
  %gpt_byte50 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %69, i32 0, i32 3
  %70 = load i64, i64* %gpt_byte50, align 8
  %add51 = add nsw i64 %70, %67
  store i64 %add51, i64* %gpt_byte50, align 8
  %71 = load i64, i64* %outgoing_nbytes, align 8
  %72 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %72, i32 0, i32 80
  %73 = load i64, i64* %zv_byte, align 8
  %add52 = add nsw i64 %73, %71
  store i64 %add52, i64* %zv_byte, align 8
  %74 = load i64, i64* %outgoing_nbytes, align 8
  %75 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text53 = getelementptr inbounds %struct.buffer, %struct.buffer* %75, i32 0, i32 73
  %76 = load %struct.buffer_text*, %struct.buffer_text** %text53, align 8
  %z_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %76, i32 0, i32 4
  %77 = load i64, i64* %z_byte, align 8
  %add54 = add nsw i64 %77, %74
  store i64 %add54, i64* %z_byte, align 8
  %78 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text55 = getelementptr inbounds %struct.buffer, %struct.buffer* %78, i32 0, i32 73
  %79 = load %struct.buffer_text*, %struct.buffer_text** %text55, align 8
  %gap_size56 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %79, i32 0, i32 5
  %80 = load i64, i64* %gap_size56, align 8
  %cmp57 = icmp sgt i64 %80, 0
  br i1 %cmp57, label %if.then.58, label %if.end.65

if.then.58:                                       ; preds = %if.end.22
  %81 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text59 = getelementptr inbounds %struct.buffer, %struct.buffer* %81, i32 0, i32 73
  %82 = load %struct.buffer_text*, %struct.buffer_text** %text59, align 8
  %beg60 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %82, i32 0, i32 0
  %83 = load i8*, i8** %beg60, align 8
  %84 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text61 = getelementptr inbounds %struct.buffer, %struct.buffer* %84, i32 0, i32 73
  %85 = load %struct.buffer_text*, %struct.buffer_text** %text61, align 8
  %gpt_byte62 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %85, i32 0, i32 3
  %86 = load i64, i64* %gpt_byte62, align 8
  %add.ptr63 = getelementptr inbounds i8, i8* %83, i64 %86
  %add.ptr64 = getelementptr inbounds i8, i8* %add.ptr63, i64 -1
  store i8 0, i8* %add.ptr64, align 1
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.58, %if.end.22
  %87 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text66 = getelementptr inbounds %struct.buffer, %struct.buffer* %87, i32 0, i32 73
  %88 = load %struct.buffer_text*, %struct.buffer_text** %text66, align 8
  %z67 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %88, i32 0, i32 2
  %89 = load i64, i64* %z67, align 8
  %90 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text68 = getelementptr inbounds %struct.buffer, %struct.buffer* %90, i32 0, i32 73
  %91 = load %struct.buffer_text*, %struct.buffer_text** %text68, align 8
  %gpt69 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %91, i32 0, i32 1
  %92 = load i64, i64* %gpt69, align 8
  %sub70 = sub nsw i64 %89, %92
  %93 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text71 = getelementptr inbounds %struct.buffer, %struct.buffer* %93, i32 0, i32 73
  %94 = load %struct.buffer_text*, %struct.buffer_text** %text71, align 8
  %end_unchanged = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %94, i32 0, i32 12
  %95 = load i64, i64* %end_unchanged, align 8
  %cmp72 = icmp slt i64 %sub70, %95
  br i1 %cmp72, label %if.then.73, label %if.end.81

if.then.73:                                       ; preds = %if.end.65
  %96 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text74 = getelementptr inbounds %struct.buffer, %struct.buffer* %96, i32 0, i32 73
  %97 = load %struct.buffer_text*, %struct.buffer_text** %text74, align 8
  %z75 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %97, i32 0, i32 2
  %98 = load i64, i64* %z75, align 8
  %99 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text76 = getelementptr inbounds %struct.buffer, %struct.buffer* %99, i32 0, i32 73
  %100 = load %struct.buffer_text*, %struct.buffer_text** %text76, align 8
  %gpt77 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %100, i32 0, i32 1
  %101 = load i64, i64* %gpt77, align 8
  %sub78 = sub nsw i64 %98, %101
  %102 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text79 = getelementptr inbounds %struct.buffer, %struct.buffer* %102, i32 0, i32 73
  %103 = load %struct.buffer_text*, %struct.buffer_text** %text79, align 8
  %end_unchanged80 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %103, i32 0, i32 12
  store i64 %sub78, i64* %end_unchanged80, align 8
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.73, %if.end.65
  %104 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt82 = getelementptr inbounds %struct.buffer, %struct.buffer* %104, i32 0, i32 75
  %105 = load i64, i64* %pt82, align 8
  %add83 = add nsw i64 %105, 0
  %106 = load i64, i64* %nchars.addr, align 8
  call void @adjust_overlays_for_insert(i64 %add83, i64 %106)
  %107 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt84 = getelementptr inbounds %struct.buffer, %struct.buffer* %107, i32 0, i32 75
  %108 = load i64, i64* %pt84, align 8
  %add85 = add nsw i64 %108, 0
  %109 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte86 = getelementptr inbounds %struct.buffer, %struct.buffer* %109, i32 0, i32 76
  %110 = load i64, i64* %pt_byte86, align 8
  %add87 = add nsw i64 %110, 0
  %111 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt88 = getelementptr inbounds %struct.buffer, %struct.buffer* %111, i32 0, i32 75
  %112 = load i64, i64* %pt88, align 8
  %add89 = add nsw i64 %112, 0
  %113 = load i64, i64* %nchars.addr, align 8
  %add90 = add nsw i64 %add89, %113
  %114 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte91 = getelementptr inbounds %struct.buffer, %struct.buffer* %114, i32 0, i32 76
  %115 = load i64, i64* %pt_byte91, align 8
  %add92 = add nsw i64 %115, 0
  %116 = load i64, i64* %outgoing_nbytes, align 8
  %add93 = add nsw i64 %add92, %116
  %117 = load i8, i8* %before_markers.addr, align 1
  %tobool = trunc i8 %117 to i1
  call void @adjust_markers_for_insert(i64 %add85, i64 %add87, i64 %add90, i64 %add93, i1 zeroext %tobool)
  %118 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %119 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt94 = getelementptr inbounds %struct.buffer, %struct.buffer* %119, i32 0, i32 75
  %120 = load i64, i64* %pt94, align 8
  %add95 = add nsw i64 %120, 0
  %121 = load i64, i64* %nchars.addr, align 8
  call void @offset_intervals(%struct.buffer* %118, i64 %add95, i64 %121)
  %122 = load i64, i64* %string.addr, align 8
  %call96 = call %struct.interval* @string_intervals(i64 %122)
  store %struct.interval* %call96, %struct.interval** %intervals, align 8
  %123 = load i64, i64* %nbytes.addr, align 8
  %124 = load i64, i64* %string.addr, align 8
  %call97 = call i64 @SBYTES(i64 %124)
  %cmp98 = icmp slt i64 %123, %call97
  br i1 %cmp98, label %if.then.99, label %if.end.101

if.then.99:                                       ; preds = %if.end.81
  %125 = load %struct.interval*, %struct.interval** %intervals, align 8
  %126 = load i64, i64* %pos.addr, align 8
  %127 = load i64, i64* %nchars.addr, align 8
  %call100 = call %struct.interval* @copy_intervals(%struct.interval* %125, i64 %126, i64 %127)
  store %struct.interval* %call100, %struct.interval** %intervals, align 8
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.99, %if.end.81
  %128 = load %struct.interval*, %struct.interval** %intervals, align 8
  %129 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt102 = getelementptr inbounds %struct.buffer, %struct.buffer* %129, i32 0, i32 75
  %130 = load i64, i64* %pt102, align 8
  %add103 = add nsw i64 %130, 0
  %131 = load i64, i64* %nchars.addr, align 8
  %132 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %133 = load i8, i8* %inherit.addr, align 1
  %tobool104 = trunc i8 %133 to i1
  call void @graft_intervals_into_buffer(%struct.interval* %128, i64 %add103, i64 %131, %struct.buffer* %132, i1 zeroext %tobool104)
  %134 = load i64, i64* %nchars.addr, align 8
  %135 = load i64, i64* %outgoing_nbytes, align 8
  call void @adjust_point(i64 %134, i64 %135)
  br label %do.body

do.body:                                          ; preds = %if.end.101
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

; Function Attrs: nounwind uwtable
define void @insert_from_string_before_markers(i64 %string, i64 %pos, i64 %pos_byte, i64 %length, i64 %length_byte, i1 zeroext %inherit) #0 {
entry:
  %string.addr = alloca i64, align 8
  %pos.addr = alloca i64, align 8
  %pos_byte.addr = alloca i64, align 8
  %length.addr = alloca i64, align 8
  %length_byte.addr = alloca i64, align 8
  %inherit.addr = alloca i8, align 1
  %opoint = alloca i64, align 8
  store i64 %string, i64* %string.addr, align 8
  store i64 %pos, i64* %pos.addr, align 8
  store i64 %pos_byte, i64* %pos_byte.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  store i64 %length_byte, i64* %length_byte.addr, align 8
  %frombool = zext i1 %inherit to i8
  store i8 %frombool, i8* %inherit.addr, align 1
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 75
  %1 = load i64, i64* %pt, align 8
  %add = add nsw i64 %1, 0
  store i64 %add, i64* %opoint, align 8
  %2 = load i64, i64* %string.addr, align 8
  %call = call i64 @SCHARS(i64 %2)
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %string.addr, align 8
  %4 = load i64, i64* %pos.addr, align 8
  %5 = load i64, i64* %pos_byte.addr, align 8
  %6 = load i64, i64* %length.addr, align 8
  %7 = load i64, i64* %length_byte.addr, align 8
  %8 = load i8, i8* %inherit.addr, align 1
  %tobool = trunc i8 %8 to i1
  call void @insert_from_string_1(i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i1 zeroext %tobool, i1 zeroext true)
  %9 = load i64, i64* %opoint, align 8
  %10 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt1 = getelementptr inbounds %struct.buffer, %struct.buffer* %10, i32 0, i32 75
  %11 = load i64, i64* %pt1, align 8
  %add2 = add nsw i64 %11, 0
  %12 = load i64, i64* %opoint, align 8
  %sub = sub nsw i64 %add2, %12
  call void @signal_after_change(i64 %9, i64 0, i64 %sub)
  %13 = load i64, i64* %opoint, align 8
  %14 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt3 = getelementptr inbounds %struct.buffer, %struct.buffer* %14, i32 0, i32 75
  %15 = load i64, i64* %pt3, align 8
  %add4 = add nsw i64 %15, 0
  call void @update_compositions(i64 %13, i64 %add4, i32 3)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @insert_from_gap(i64 %nchars, i64 %nbytes, i1 zeroext %text_at_gap_tail) #0 {
entry:
  %nchars.addr = alloca i64, align 8
  %nbytes.addr = alloca i64, align 8
  %text_at_gap_tail.addr = alloca i8, align 1
  %ins_charpos = alloca i64, align 8
  %ins_bytepos = alloca i64, align 8
  store i64 %nchars, i64* %nchars.addr, align 8
  store i64 %nbytes, i64* %nbytes.addr, align 8
  %frombool = zext i1 %text_at_gap_tail to i8
  store i8 %frombool, i8* %text_at_gap_tail.addr, align 1
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 73
  %1 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %gpt = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %1, i32 0, i32 1
  %2 = load i64, i64* %gpt, align 8
  store i64 %2, i64* %ins_charpos, align 8
  %3 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text1 = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i32 0, i32 73
  %4 = load %struct.buffer_text*, %struct.buffer_text** %text1, align 8
  %gpt_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %4, i32 0, i32 3
  %5 = load i64, i64* %gpt_byte, align 8
  store i64 %5, i64* %ins_bytepos, align 8
  %6 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_ = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 39
  %7 = load i64, i64* %enable_multibyte_characters_, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %7, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i64, i64* %nbytes.addr, align 8
  store i64 %8, i64* %nchars.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %10 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text2 = getelementptr inbounds %struct.buffer, %struct.buffer* %10, i32 0, i32 73
  %11 = load %struct.buffer_text*, %struct.buffer_text** %text2, align 8
  %gpt3 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %11, i32 0, i32 1
  %12 = load i64, i64* %gpt3, align 8
  %13 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text4 = getelementptr inbounds %struct.buffer, %struct.buffer* %13, i32 0, i32 73
  %14 = load %struct.buffer_text*, %struct.buffer_text** %text4, align 8
  %gpt5 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %14, i32 0, i32 1
  %15 = load i64, i64* %gpt5, align 8
  call void @invalidate_buffer_caches(%struct.buffer* %9, i64 %12, i64 %15)
  %16 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text6 = getelementptr inbounds %struct.buffer, %struct.buffer* %16, i32 0, i32 73
  %17 = load %struct.buffer_text*, %struct.buffer_text** %text6, align 8
  %gpt7 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %17, i32 0, i32 1
  %18 = load i64, i64* %gpt7, align 8
  %19 = load i64, i64* %nchars.addr, align 8
  call void @record_insert(i64 %18, i64 %19)
  %20 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text8 = getelementptr inbounds %struct.buffer, %struct.buffer* %20, i32 0, i32 73
  %21 = load %struct.buffer_text*, %struct.buffer_text** %text8, align 8
  %modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %21, i32 0, i32 6
  %22 = load i64, i64* %modiff, align 8
  %inc = add nsw i64 %22, 1
  store i64 %inc, i64* %modiff, align 8
  %23 = load i64, i64* %nbytes.addr, align 8
  %24 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text9 = getelementptr inbounds %struct.buffer, %struct.buffer* %24, i32 0, i32 73
  %25 = load %struct.buffer_text*, %struct.buffer_text** %text9, align 8
  %gap_size = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %25, i32 0, i32 5
  %26 = load i64, i64* %gap_size, align 8
  %sub = sub nsw i64 %26, %23
  store i64 %sub, i64* %gap_size, align 8
  %27 = load i8, i8* %text_at_gap_tail.addr, align 1
  %tobool = trunc i8 %27 to i1
  br i1 %tobool, label %if.end.16, label %if.then.10

if.then.10:                                       ; preds = %if.end
  %28 = load i64, i64* %nchars.addr, align 8
  %29 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text11 = getelementptr inbounds %struct.buffer, %struct.buffer* %29, i32 0, i32 73
  %30 = load %struct.buffer_text*, %struct.buffer_text** %text11, align 8
  %gpt12 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %30, i32 0, i32 1
  %31 = load i64, i64* %gpt12, align 8
  %add = add nsw i64 %31, %28
  store i64 %add, i64* %gpt12, align 8
  %32 = load i64, i64* %nbytes.addr, align 8
  %33 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text13 = getelementptr inbounds %struct.buffer, %struct.buffer* %33, i32 0, i32 73
  %34 = load %struct.buffer_text*, %struct.buffer_text** %text13, align 8
  %gpt_byte14 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %34, i32 0, i32 3
  %35 = load i64, i64* %gpt_byte14, align 8
  %add15 = add nsw i64 %35, %32
  store i64 %add15, i64* %gpt_byte14, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.10, %if.end
  %36 = load i64, i64* %nchars.addr, align 8
  %37 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %37, i32 0, i32 79
  %38 = load i64, i64* %zv, align 8
  %add17 = add nsw i64 %38, %36
  store i64 %add17, i64* %zv, align 8
  %39 = load i64, i64* %nchars.addr, align 8
  %40 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text18 = getelementptr inbounds %struct.buffer, %struct.buffer* %40, i32 0, i32 73
  %41 = load %struct.buffer_text*, %struct.buffer_text** %text18, align 8
  %z = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %41, i32 0, i32 2
  %42 = load i64, i64* %z, align 8
  %add19 = add nsw i64 %42, %39
  store i64 %add19, i64* %z, align 8
  %43 = load i64, i64* %nbytes.addr, align 8
  %44 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %44, i32 0, i32 80
  %45 = load i64, i64* %zv_byte, align 8
  %add20 = add nsw i64 %45, %43
  store i64 %add20, i64* %zv_byte, align 8
  %46 = load i64, i64* %nbytes.addr, align 8
  %47 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text21 = getelementptr inbounds %struct.buffer, %struct.buffer* %47, i32 0, i32 73
  %48 = load %struct.buffer_text*, %struct.buffer_text** %text21, align 8
  %z_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %48, i32 0, i32 4
  %49 = load i64, i64* %z_byte, align 8
  %add22 = add nsw i64 %49, %46
  store i64 %add22, i64* %z_byte, align 8
  %50 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text23 = getelementptr inbounds %struct.buffer, %struct.buffer* %50, i32 0, i32 73
  %51 = load %struct.buffer_text*, %struct.buffer_text** %text23, align 8
  %gap_size24 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %51, i32 0, i32 5
  %52 = load i64, i64* %gap_size24, align 8
  %cmp25 = icmp sgt i64 %52, 0
  br i1 %cmp25, label %if.then.26, label %if.end.31

if.then.26:                                       ; preds = %if.end.16
  %53 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text27 = getelementptr inbounds %struct.buffer, %struct.buffer* %53, i32 0, i32 73
  %54 = load %struct.buffer_text*, %struct.buffer_text** %text27, align 8
  %beg = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %54, i32 0, i32 0
  %55 = load i8*, i8** %beg, align 8
  %56 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text28 = getelementptr inbounds %struct.buffer, %struct.buffer* %56, i32 0, i32 73
  %57 = load %struct.buffer_text*, %struct.buffer_text** %text28, align 8
  %gpt_byte29 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %57, i32 0, i32 3
  %58 = load i64, i64* %gpt_byte29, align 8
  %add.ptr = getelementptr inbounds i8, i8* %55, i64 %58
  %add.ptr30 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8 0, i8* %add.ptr30, align 1
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.26, %if.end.16
  %59 = load i64, i64* %ins_charpos, align 8
  %60 = load i64, i64* %nchars.addr, align 8
  call void @adjust_overlays_for_insert(i64 %59, i64 %60)
  %61 = load i64, i64* %ins_charpos, align 8
  %62 = load i64, i64* %ins_bytepos, align 8
  %63 = load i64, i64* %ins_charpos, align 8
  %64 = load i64, i64* %nchars.addr, align 8
  %add32 = add nsw i64 %63, %64
  %65 = load i64, i64* %ins_bytepos, align 8
  %66 = load i64, i64* %nbytes.addr, align 8
  %add33 = add nsw i64 %65, %66
  call void @adjust_markers_for_insert(i64 %61, i64 %62, i64 %add32, i64 %add33, i1 zeroext false)
  %67 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %call34 = call %struct.interval* @buffer_intervals(%struct.buffer* %67)
  %tobool35 = icmp ne %struct.interval* %call34, null
  br i1 %tobool35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.31
  %68 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %69 = load i64, i64* %ins_charpos, align 8
  %70 = load i64, i64* %nchars.addr, align 8
  call void @offset_intervals(%struct.buffer* %68, i64 %69, i64 %70)
  %71 = load i64, i64* %ins_charpos, align 8
  %72 = load i64, i64* %nchars.addr, align 8
  %73 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  call void @graft_intervals_into_buffer(%struct.interval* null, i64 %71, i64 %72, %struct.buffer* %73, i1 zeroext false)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.end.31
  %74 = load i64, i64* %ins_charpos, align 8
  %75 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %75, i32 0, i32 75
  %76 = load i64, i64* %pt, align 8
  %add38 = add nsw i64 %76, 0
  %cmp39 = icmp slt i64 %74, %add38
  br i1 %cmp39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end.37
  %77 = load i64, i64* %nchars.addr, align 8
  %78 = load i64, i64* %nbytes.addr, align 8
  call void @adjust_point(i64 %77, i64 %78)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %if.end.37
  br label %do.body

do.body:                                          ; preds = %if.end.41
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

; Function Attrs: nounwind uwtable
define void @invalidate_buffer_caches(%struct.buffer* %buf, i64 %start, i64 %end) #0 {
entry:
  %buf.addr = alloca %struct.buffer*, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %line_beg = alloca i64, align 8
  %start_byte = alloca i64, align 8
  %old = alloca %struct.buffer*, align 8
  store %struct.buffer* %buf, %struct.buffer** %buf.addr, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  %0 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %base_buffer = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 81
  %1 = load %struct.buffer*, %struct.buffer** %base_buffer, align 8
  %tobool = icmp ne %struct.buffer* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %base_buffer1 = getelementptr inbounds %struct.buffer, %struct.buffer* %2, i32 0, i32 81
  %3 = load %struct.buffer*, %struct.buffer** %base_buffer1, align 8
  store %struct.buffer* %3, %struct.buffer** %buf.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %bidi_paragraph_cache = getelementptr inbounds %struct.buffer, %struct.buffer* %4, i32 0, i32 93
  %5 = load %struct.region_cache*, %struct.region_cache** %bidi_paragraph_cache, align 8
  %tobool2 = icmp ne %struct.region_cache* %5, null
  br i1 %tobool2, label %if.then.3, label %if.end.26

if.then.3:                                        ; preds = %if.end
  %6 = load i64, i64* %start.addr, align 8
  %7 = load i64, i64* %end.addr, align 8
  %cmp = icmp ne i64 %6, %7
  br i1 %cmp, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %if.then.3
  %8 = load i64, i64* %start.addr, align 8
  %cmp4 = icmp sgt i64 %8, 1
  br i1 %cmp4, label %if.then.5, label %if.end.21

if.then.5:                                        ; preds = %land.lhs.true
  %9 = load i64, i64* %start.addr, align 8
  store i64 %9, i64* %line_beg, align 8
  %10 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %11 = load i64, i64* %start.addr, align 8
  %call = call i64 @buf_charpos_to_bytepos(%struct.buffer* %10, i64 %11)
  store i64 %call, i64* %start_byte, align 8
  %12 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %12, i32 0, i32 73
  %13 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %beg = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %13, i32 0, i32 0
  %14 = load i8*, i8** %beg, align 8
  %15 = load i64, i64* %start_byte, align 8
  %sub = sub nsw i64 %15, 1
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %sub
  %add.ptr6 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %16 = load i64, i64* %start_byte, align 8
  %sub7 = sub nsw i64 %16, 1
  %17 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %text8 = getelementptr inbounds %struct.buffer, %struct.buffer* %17, i32 0, i32 73
  %18 = load %struct.buffer_text*, %struct.buffer_text** %text8, align 8
  %gpt_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %18, i32 0, i32 3
  %19 = load i64, i64* %gpt_byte, align 8
  %cmp9 = icmp sge i64 %sub7, %19
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.5
  %20 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %text10 = getelementptr inbounds %struct.buffer, %struct.buffer* %20, i32 0, i32 73
  %21 = load %struct.buffer_text*, %struct.buffer_text** %text10, align 8
  %gap_size = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %21, i32 0, i32 5
  %22 = load i64, i64* %gap_size, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %22, %cond.true ], [ 0, %cond.false ]
  %add.ptr11 = getelementptr inbounds i8, i8* %add.ptr6, i64 %cond
  %23 = load i8, i8* %add.ptr11, align 1
  %conv = zext i8 %23 to i32
  %cmp12 = icmp ne i32 %conv, 10
  br i1 %cmp12, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %cond.end
  %24 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  store %struct.buffer* %24, %struct.buffer** %old, align 8
  %25 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  call void @set_buffer_internal(%struct.buffer* %25)
  %26 = load i64, i64* %start.addr, align 8
  %27 = load i64, i64* %start_byte, align 8
  %call15 = call i64 @find_newline_no_quit(i64 %26, i64 %27, i64 -1, i64* %start_byte)
  store i64 %call15, i64* %line_beg, align 8
  %28 = load %struct.buffer*, %struct.buffer** %old, align 8
  call void @set_buffer_internal(%struct.buffer* %28)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %cond.end
  %29 = load i64, i64* %line_beg, align 8
  %30 = load i64, i64* %line_beg, align 8
  %cmp17 = icmp sgt i64 %30, 1
  %conv18 = zext i1 %cmp17 to i32
  %conv19 = sext i32 %conv18 to i64
  %sub20 = sub nsw i64 %29, %conv19
  store i64 %sub20, i64* %start.addr, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.16, %land.lhs.true, %if.then.3
  %31 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %32 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %bidi_paragraph_cache22 = getelementptr inbounds %struct.buffer, %struct.buffer* %32, i32 0, i32 93
  %33 = load %struct.region_cache*, %struct.region_cache** %bidi_paragraph_cache22, align 8
  %34 = load i64, i64* %start.addr, align 8
  %sub23 = sub nsw i64 %34, 1
  %35 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %text24 = getelementptr inbounds %struct.buffer, %struct.buffer* %35, i32 0, i32 73
  %36 = load %struct.buffer_text*, %struct.buffer_text** %text24, align 8
  %z = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %36, i32 0, i32 2
  %37 = load i64, i64* %z, align 8
  %38 = load i64, i64* %end.addr, align 8
  %sub25 = sub nsw i64 %37, %38
  call void @invalidate_region_cache(%struct.buffer* %31, %struct.region_cache* %33, i64 %sub23, i64 %sub25)
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.21, %if.end
  %39 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %newline_cache = getelementptr inbounds %struct.buffer, %struct.buffer* %39, i32 0, i32 91
  %40 = load %struct.region_cache*, %struct.region_cache** %newline_cache, align 8
  %tobool27 = icmp ne %struct.region_cache* %40, null
  br i1 %tobool27, label %if.then.28, label %if.end.34

if.then.28:                                       ; preds = %if.end.26
  %41 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %42 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %newline_cache29 = getelementptr inbounds %struct.buffer, %struct.buffer* %42, i32 0, i32 91
  %43 = load %struct.region_cache*, %struct.region_cache** %newline_cache29, align 8
  %44 = load i64, i64* %start.addr, align 8
  %sub30 = sub nsw i64 %44, 1
  %45 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %text31 = getelementptr inbounds %struct.buffer, %struct.buffer* %45, i32 0, i32 73
  %46 = load %struct.buffer_text*, %struct.buffer_text** %text31, align 8
  %z32 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %46, i32 0, i32 2
  %47 = load i64, i64* %z32, align 8
  %48 = load i64, i64* %end.addr, align 8
  %sub33 = sub nsw i64 %47, %48
  call void @invalidate_region_cache(%struct.buffer* %41, %struct.region_cache* %43, i64 %sub30, i64 %sub33)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.28, %if.end.26
  %49 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %width_run_cache = getelementptr inbounds %struct.buffer, %struct.buffer* %49, i32 0, i32 92
  %50 = load %struct.region_cache*, %struct.region_cache** %width_run_cache, align 8
  %tobool35 = icmp ne %struct.region_cache* %50, null
  br i1 %tobool35, label %if.then.36, label %if.end.42

if.then.36:                                       ; preds = %if.end.34
  %51 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %52 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %width_run_cache37 = getelementptr inbounds %struct.buffer, %struct.buffer* %52, i32 0, i32 92
  %53 = load %struct.region_cache*, %struct.region_cache** %width_run_cache37, align 8
  %54 = load i64, i64* %start.addr, align 8
  %sub38 = sub nsw i64 %54, 1
  %55 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %text39 = getelementptr inbounds %struct.buffer, %struct.buffer* %55, i32 0, i32 73
  %56 = load %struct.buffer_text*, %struct.buffer_text** %text39, align 8
  %z40 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %56, i32 0, i32 2
  %57 = load i64, i64* %z40, align 8
  %58 = load i64, i64* %end.addr, align 8
  %sub41 = sub nsw i64 %57, %58
  call void @invalidate_region_cache(%struct.buffer* %51, %struct.region_cache* %53, i64 %sub38, i64 %sub41)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.36, %if.end.34
  ret void
}

declare void @graft_intervals_into_buffer(%struct.interval*, i64, i64, %struct.buffer*, i1 zeroext) #4

; Function Attrs: nounwind uwtable
define void @insert_from_buffer(%struct.buffer* %buf, i64 %charpos, i64 %nchars, i1 zeroext %inherit) #0 {
entry:
  %buf.addr = alloca %struct.buffer*, align 8
  %charpos.addr = alloca i64, align 8
  %nchars.addr = alloca i64, align 8
  %inherit.addr = alloca i8, align 1
  %opoint = alloca i64, align 8
  store %struct.buffer* %buf, %struct.buffer** %buf.addr, align 8
  store i64 %charpos, i64* %charpos.addr, align 8
  store i64 %nchars, i64* %nchars.addr, align 8
  %frombool = zext i1 %inherit to i8
  store i8 %frombool, i8* %inherit.addr, align 1
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 75
  %1 = load i64, i64* %pt, align 8
  %add = add nsw i64 %1, 0
  store i64 %add, i64* %opoint, align 8
  %2 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %3 = load i64, i64* %charpos.addr, align 8
  %4 = load i64, i64* %nchars.addr, align 8
  %5 = load i8, i8* %inherit.addr, align 1
  %tobool = trunc i8 %5 to i1
  call void @insert_from_buffer_1(%struct.buffer* %2, i64 %3, i64 %4, i1 zeroext %tobool)
  %6 = load i64, i64* %opoint, align 8
  %7 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt1 = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 75
  %8 = load i64, i64* %pt1, align 8
  %add2 = add nsw i64 %8, 0
  %9 = load i64, i64* %opoint, align 8
  %sub = sub nsw i64 %add2, %9
  call void @signal_after_change(i64 %6, i64 0, i64 %sub)
  %10 = load i64, i64* %opoint, align 8
  %11 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt3 = getelementptr inbounds %struct.buffer, %struct.buffer* %11, i32 0, i32 75
  %12 = load i64, i64* %pt3, align 8
  %add4 = add nsw i64 %12, 0
  call void @update_compositions(i64 %10, i64 %add4, i32 3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @insert_from_buffer_1(%struct.buffer* %buf, i64 %from, i64 %nchars, i1 zeroext %inherit) #0 {
entry:
  %buf.addr = alloca %struct.buffer*, align 8
  %from.addr = alloca i64, align 8
  %nchars.addr = alloca i64, align 8
  %inherit.addr = alloca i8, align 1
  %chunk = alloca i64, align 8
  %chunk_expanded = alloca i64, align 8
  %from_byte = alloca i64, align 8
  %to_byte = alloca i64, align 8
  %incoming_nbytes = alloca i64, align 8
  %outgoing_nbytes = alloca i64, align 8
  %intervals = alloca %struct.interval*, align 8
  %outgoing_before_gap = alloca i64, align 8
  %outgoing_after_gap = alloca i64, align 8
  store %struct.buffer* %buf, %struct.buffer** %buf.addr, align 8
  store i64 %from, i64* %from.addr, align 8
  store i64 %nchars, i64* %nchars.addr, align 8
  %frombool = zext i1 %inherit to i8
  store i8 %frombool, i8* %inherit.addr, align 1
  %0 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %1 = load i64, i64* %from.addr, align 8
  %call = call i64 @buf_charpos_to_bytepos(%struct.buffer* %0, i64 %1)
  store i64 %call, i64* %from_byte, align 8
  %2 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %3 = load i64, i64* %from.addr, align 8
  %4 = load i64, i64* %nchars.addr, align 8
  %add = add nsw i64 %3, %4
  %call1 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %2, i64 %add)
  store i64 %call1, i64* %to_byte, align 8
  %5 = load i64, i64* %to_byte, align 8
  %6 = load i64, i64* %from_byte, align 8
  %sub = sub nsw i64 %5, %6
  store i64 %sub, i64* %incoming_nbytes, align 8
  %7 = load i64, i64* %incoming_nbytes, align 8
  store i64 %7, i64* %outgoing_nbytes, align 8
  %8 = load i64, i64* %nchars.addr, align 8
  %cmp = icmp eq i64 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %9 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_ = getelementptr inbounds %struct.buffer, %struct.buffer* %9, i32 0, i32 39
  %10 = load i64, i64* %enable_multibyte_characters_, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp3 = icmp eq i64 %10, %call2
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %11 = load i64, i64* %nchars.addr, align 8
  store i64 %11, i64* %outgoing_nbytes, align 8
  br label %if.end.49

if.else:                                          ; preds = %if.end
  %12 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %enable_multibyte_characters_5 = getelementptr inbounds %struct.buffer, %struct.buffer* %12, i32 0, i32 39
  %13 = load i64, i64* %enable_multibyte_characters_5, align 8
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp7 = icmp eq i64 %13, %call6
  br i1 %cmp7, label %if.then.8, label %if.end.48

if.then.8:                                        ; preds = %if.else
  store i64 0, i64* %outgoing_before_gap, align 8
  store i64 0, i64* %outgoing_after_gap, align 8
  %14 = load i64, i64* %from.addr, align 8
  %15 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %15, i32 0, i32 73
  %16 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %gpt = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %16, i32 0, i32 1
  %17 = load i64, i64* %gpt, align 8
  %cmp9 = icmp slt i64 %14, %17
  br i1 %cmp9, label %if.then.10, label %if.else.24

if.then.10:                                       ; preds = %if.then.8
  %18 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %text11 = getelementptr inbounds %struct.buffer, %struct.buffer* %18, i32 0, i32 73
  %19 = load %struct.buffer_text*, %struct.buffer_text** %text11, align 8
  %gpt_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %19, i32 0, i32 3
  %20 = load i64, i64* %gpt_byte, align 8
  %21 = load i64, i64* %from_byte, align 8
  %sub12 = sub nsw i64 %20, %21
  store i64 %sub12, i64* %chunk, align 8
  %22 = load i64, i64* %chunk, align 8
  %23 = load i64, i64* %incoming_nbytes, align 8
  %cmp13 = icmp sgt i64 %22, %23
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.then.10
  %24 = load i64, i64* %incoming_nbytes, align 8
  store i64 %24, i64* %chunk, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.then.10
  %25 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %text16 = getelementptr inbounds %struct.buffer, %struct.buffer* %25, i32 0, i32 73
  %26 = load %struct.buffer_text*, %struct.buffer_text** %text16, align 8
  %beg = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %26, i32 0, i32 0
  %27 = load i8*, i8** %beg, align 8
  %28 = load i64, i64* %from_byte, align 8
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 %28
  %add.ptr17 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %29 = load i64, i64* %from_byte, align 8
  %30 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %text18 = getelementptr inbounds %struct.buffer, %struct.buffer* %30, i32 0, i32 73
  %31 = load %struct.buffer_text*, %struct.buffer_text** %text18, align 8
  %gpt_byte19 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %31, i32 0, i32 3
  %32 = load i64, i64* %gpt_byte19, align 8
  %cmp20 = icmp sge i64 %29, %32
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.15
  %33 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %text21 = getelementptr inbounds %struct.buffer, %struct.buffer* %33, i32 0, i32 73
  %34 = load %struct.buffer_text*, %struct.buffer_text** %text21, align 8
  %gap_size = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %34, i32 0, i32 5
  %35 = load i64, i64* %gap_size, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %35, %cond.true ], [ 0, %cond.false ]
  %add.ptr22 = getelementptr inbounds i8, i8* %add.ptr17, i64 %cond
  %36 = load i64, i64* %chunk, align 8
  %call23 = call i64 @count_size_as_multibyte(i8* %add.ptr22, i64 %36)
  store i64 %call23, i64* %outgoing_before_gap, align 8
  br label %if.end.25

if.else.24:                                       ; preds = %if.then.8
  store i64 0, i64* %chunk, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.24, %cond.end
  %37 = load i64, i64* %chunk, align 8
  %38 = load i64, i64* %incoming_nbytes, align 8
  %cmp26 = icmp slt i64 %37, %38
  br i1 %cmp26, label %if.then.27, label %if.end.46

if.then.27:                                       ; preds = %if.end.25
  %39 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %text28 = getelementptr inbounds %struct.buffer, %struct.buffer* %39, i32 0, i32 73
  %40 = load %struct.buffer_text*, %struct.buffer_text** %text28, align 8
  %beg29 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %40, i32 0, i32 0
  %41 = load i8*, i8** %beg29, align 8
  %42 = load i64, i64* %from_byte, align 8
  %43 = load i64, i64* %chunk, align 8
  %add30 = add nsw i64 %42, %43
  %add.ptr31 = getelementptr inbounds i8, i8* %41, i64 %add30
  %add.ptr32 = getelementptr inbounds i8, i8* %add.ptr31, i64 -1
  %44 = load i64, i64* %from_byte, align 8
  %45 = load i64, i64* %chunk, align 8
  %add33 = add nsw i64 %44, %45
  %46 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %text34 = getelementptr inbounds %struct.buffer, %struct.buffer* %46, i32 0, i32 73
  %47 = load %struct.buffer_text*, %struct.buffer_text** %text34, align 8
  %gpt_byte35 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %47, i32 0, i32 3
  %48 = load i64, i64* %gpt_byte35, align 8
  %cmp36 = icmp sge i64 %add33, %48
  br i1 %cmp36, label %cond.true.37, label %cond.false.40

cond.true.37:                                     ; preds = %if.then.27
  %49 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %text38 = getelementptr inbounds %struct.buffer, %struct.buffer* %49, i32 0, i32 73
  %50 = load %struct.buffer_text*, %struct.buffer_text** %text38, align 8
  %gap_size39 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %50, i32 0, i32 5
  %51 = load i64, i64* %gap_size39, align 8
  br label %cond.end.41

cond.false.40:                                    ; preds = %if.then.27
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.40, %cond.true.37
  %cond42 = phi i64 [ %51, %cond.true.37 ], [ 0, %cond.false.40 ]
  %add.ptr43 = getelementptr inbounds i8, i8* %add.ptr32, i64 %cond42
  %52 = load i64, i64* %incoming_nbytes, align 8
  %53 = load i64, i64* %chunk, align 8
  %sub44 = sub nsw i64 %52, %53
  %call45 = call i64 @count_size_as_multibyte(i8* %add.ptr43, i64 %sub44)
  store i64 %call45, i64* %outgoing_after_gap, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %cond.end.41, %if.end.25
  %54 = load i64, i64* %outgoing_before_gap, align 8
  %55 = load i64, i64* %outgoing_after_gap, align 8
  %add47 = add nsw i64 %54, %55
  store i64 %add47, i64* %outgoing_nbytes, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.46, %if.else
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then.4
  %56 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %56, i32 0, i32 75
  %57 = load i64, i64* %pt, align 8
  %add50 = add nsw i64 %57, 0
  %58 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt51 = getelementptr inbounds %struct.buffer, %struct.buffer* %58, i32 0, i32 75
  %59 = load i64, i64* %pt51, align 8
  %add52 = add nsw i64 %59, 0
  call void @prepare_to_modify_buffer(i64 %add50, i64 %add52, i64* null)
  %60 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt53 = getelementptr inbounds %struct.buffer, %struct.buffer* %60, i32 0, i32 75
  %61 = load i64, i64* %pt53, align 8
  %add54 = add nsw i64 %61, 0
  %62 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text55 = getelementptr inbounds %struct.buffer, %struct.buffer* %62, i32 0, i32 73
  %63 = load %struct.buffer_text*, %struct.buffer_text** %text55, align 8
  %gpt56 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %63, i32 0, i32 1
  %64 = load i64, i64* %gpt56, align 8
  %cmp57 = icmp ne i64 %add54, %64
  br i1 %cmp57, label %if.then.58, label %if.end.62

if.then.58:                                       ; preds = %if.end.49
  %65 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt59 = getelementptr inbounds %struct.buffer, %struct.buffer* %65, i32 0, i32 75
  %66 = load i64, i64* %pt59, align 8
  %add60 = add nsw i64 %66, 0
  %67 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %67, i32 0, i32 76
  %68 = load i64, i64* %pt_byte, align 8
  %add61 = add nsw i64 %68, 0
  call void @move_gap_both(i64 %add60, i64 %add61)
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.58, %if.end.49
  %69 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text63 = getelementptr inbounds %struct.buffer, %struct.buffer* %69, i32 0, i32 73
  %70 = load %struct.buffer_text*, %struct.buffer_text** %text63, align 8
  %gap_size64 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %70, i32 0, i32 5
  %71 = load i64, i64* %gap_size64, align 8
  %72 = load i64, i64* %outgoing_nbytes, align 8
  %cmp65 = icmp slt i64 %71, %72
  br i1 %cmp65, label %if.then.66, label %if.end.70

if.then.66:                                       ; preds = %if.end.62
  %73 = load i64, i64* %outgoing_nbytes, align 8
  %74 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text67 = getelementptr inbounds %struct.buffer, %struct.buffer* %74, i32 0, i32 73
  %75 = load %struct.buffer_text*, %struct.buffer_text** %text67, align 8
  %gap_size68 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %75, i32 0, i32 5
  %76 = load i64, i64* %gap_size68, align 8
  %sub69 = sub nsw i64 %73, %76
  call void @make_gap(i64 %sub69)
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.66, %if.end.62
  %77 = load i64, i64* %from.addr, align 8
  %78 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %text71 = getelementptr inbounds %struct.buffer, %struct.buffer* %78, i32 0, i32 73
  %79 = load %struct.buffer_text*, %struct.buffer_text** %text71, align 8
  %gpt72 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %79, i32 0, i32 1
  %80 = load i64, i64* %gpt72, align 8
  %cmp73 = icmp slt i64 %77, %80
  br i1 %cmp73, label %if.then.74, label %if.else.109

if.then.74:                                       ; preds = %if.end.70
  %81 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %text75 = getelementptr inbounds %struct.buffer, %struct.buffer* %81, i32 0, i32 73
  %82 = load %struct.buffer_text*, %struct.buffer_text** %text75, align 8
  %gpt_byte76 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %82, i32 0, i32 3
  %83 = load i64, i64* %gpt_byte76, align 8
  %84 = load i64, i64* %from_byte, align 8
  %sub77 = sub nsw i64 %83, %84
  store i64 %sub77, i64* %chunk, align 8
  %85 = load i64, i64* %chunk, align 8
  %86 = load i64, i64* %incoming_nbytes, align 8
  %cmp78 = icmp sgt i64 %85, %86
  br i1 %cmp78, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %if.then.74
  %87 = load i64, i64* %incoming_nbytes, align 8
  store i64 %87, i64* %chunk, align 8
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.79, %if.then.74
  %88 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %text81 = getelementptr inbounds %struct.buffer, %struct.buffer* %88, i32 0, i32 73
  %89 = load %struct.buffer_text*, %struct.buffer_text** %text81, align 8
  %beg82 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %89, i32 0, i32 0
  %90 = load i8*, i8** %beg82, align 8
  %91 = load i64, i64* %from_byte, align 8
  %add.ptr83 = getelementptr inbounds i8, i8* %90, i64 %91
  %add.ptr84 = getelementptr inbounds i8, i8* %add.ptr83, i64 -1
  %92 = load i64, i64* %from_byte, align 8
  %93 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %text85 = getelementptr inbounds %struct.buffer, %struct.buffer* %93, i32 0, i32 73
  %94 = load %struct.buffer_text*, %struct.buffer_text** %text85, align 8
  %gpt_byte86 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %94, i32 0, i32 3
  %95 = load i64, i64* %gpt_byte86, align 8
  %cmp87 = icmp sge i64 %92, %95
  br i1 %cmp87, label %cond.true.88, label %cond.false.91

cond.true.88:                                     ; preds = %if.end.80
  %96 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %text89 = getelementptr inbounds %struct.buffer, %struct.buffer* %96, i32 0, i32 73
  %97 = load %struct.buffer_text*, %struct.buffer_text** %text89, align 8
  %gap_size90 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %97, i32 0, i32 5
  %98 = load i64, i64* %gap_size90, align 8
  br label %cond.end.92

cond.false.91:                                    ; preds = %if.end.80
  br label %cond.end.92

cond.end.92:                                      ; preds = %cond.false.91, %cond.true.88
  %cond93 = phi i64 [ %98, %cond.true.88 ], [ 0, %cond.false.91 ]
  %add.ptr94 = getelementptr inbounds i8, i8* %add.ptr84, i64 %cond93
  %99 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text95 = getelementptr inbounds %struct.buffer, %struct.buffer* %99, i32 0, i32 73
  %100 = load %struct.buffer_text*, %struct.buffer_text** %text95, align 8
  %beg96 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %100, i32 0, i32 0
  %101 = load i8*, i8** %beg96, align 8
  %102 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text97 = getelementptr inbounds %struct.buffer, %struct.buffer* %102, i32 0, i32 73
  %103 = load %struct.buffer_text*, %struct.buffer_text** %text97, align 8
  %gpt_byte98 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %103, i32 0, i32 3
  %104 = load i64, i64* %gpt_byte98, align 8
  %add.ptr99 = getelementptr inbounds i8, i8* %101, i64 %104
  %add.ptr100 = getelementptr inbounds i8, i8* %add.ptr99, i64 -1
  %105 = load i64, i64* %chunk, align 8
  %106 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %enable_multibyte_characters_101 = getelementptr inbounds %struct.buffer, %struct.buffer* %106, i32 0, i32 39
  %107 = load i64, i64* %enable_multibyte_characters_101, align 8
  %call102 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp103 = icmp eq i64 %107, %call102
  %lnot = xor i1 %cmp103, true
  %108 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_104 = getelementptr inbounds %struct.buffer, %struct.buffer* %108, i32 0, i32 39
  %109 = load i64, i64* %enable_multibyte_characters_104, align 8
  %call105 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp106 = icmp eq i64 %109, %call105
  %lnot107 = xor i1 %cmp106, true
  %call108 = call i64 @copy_text(i8* %add.ptr94, i8* %add.ptr100, i64 %105, i1 zeroext %lnot, i1 zeroext %lnot107)
  store i64 %call108, i64* %chunk_expanded, align 8
  br label %if.end.110

if.else.109:                                      ; preds = %if.end.70
  store i64 0, i64* %chunk, align 8
  store i64 0, i64* %chunk_expanded, align 8
  br label %if.end.110

if.end.110:                                       ; preds = %if.else.109, %cond.end.92
  %110 = load i64, i64* %chunk, align 8
  %111 = load i64, i64* %incoming_nbytes, align 8
  %cmp111 = icmp slt i64 %110, %111
  br i1 %cmp111, label %if.then.112, label %if.end.146

if.then.112:                                      ; preds = %if.end.110
  %112 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %text113 = getelementptr inbounds %struct.buffer, %struct.buffer* %112, i32 0, i32 73
  %113 = load %struct.buffer_text*, %struct.buffer_text** %text113, align 8
  %beg114 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %113, i32 0, i32 0
  %114 = load i8*, i8** %beg114, align 8
  %115 = load i64, i64* %from_byte, align 8
  %116 = load i64, i64* %chunk, align 8
  %add115 = add nsw i64 %115, %116
  %add.ptr116 = getelementptr inbounds i8, i8* %114, i64 %add115
  %add.ptr117 = getelementptr inbounds i8, i8* %add.ptr116, i64 -1
  %117 = load i64, i64* %from_byte, align 8
  %118 = load i64, i64* %chunk, align 8
  %add118 = add nsw i64 %117, %118
  %119 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %text119 = getelementptr inbounds %struct.buffer, %struct.buffer* %119, i32 0, i32 73
  %120 = load %struct.buffer_text*, %struct.buffer_text** %text119, align 8
  %gpt_byte120 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %120, i32 0, i32 3
  %121 = load i64, i64* %gpt_byte120, align 8
  %cmp121 = icmp sge i64 %add118, %121
  br i1 %cmp121, label %cond.true.122, label %cond.false.125

cond.true.122:                                    ; preds = %if.then.112
  %122 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %text123 = getelementptr inbounds %struct.buffer, %struct.buffer* %122, i32 0, i32 73
  %123 = load %struct.buffer_text*, %struct.buffer_text** %text123, align 8
  %gap_size124 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %123, i32 0, i32 5
  %124 = load i64, i64* %gap_size124, align 8
  br label %cond.end.126

cond.false.125:                                   ; preds = %if.then.112
  br label %cond.end.126

cond.end.126:                                     ; preds = %cond.false.125, %cond.true.122
  %cond127 = phi i64 [ %124, %cond.true.122 ], [ 0, %cond.false.125 ]
  %add.ptr128 = getelementptr inbounds i8, i8* %add.ptr117, i64 %cond127
  %125 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text129 = getelementptr inbounds %struct.buffer, %struct.buffer* %125, i32 0, i32 73
  %126 = load %struct.buffer_text*, %struct.buffer_text** %text129, align 8
  %beg130 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %126, i32 0, i32 0
  %127 = load i8*, i8** %beg130, align 8
  %128 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text131 = getelementptr inbounds %struct.buffer, %struct.buffer* %128, i32 0, i32 73
  %129 = load %struct.buffer_text*, %struct.buffer_text** %text131, align 8
  %gpt_byte132 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %129, i32 0, i32 3
  %130 = load i64, i64* %gpt_byte132, align 8
  %add.ptr133 = getelementptr inbounds i8, i8* %127, i64 %130
  %add.ptr134 = getelementptr inbounds i8, i8* %add.ptr133, i64 -1
  %131 = load i64, i64* %chunk_expanded, align 8
  %add.ptr135 = getelementptr inbounds i8, i8* %add.ptr134, i64 %131
  %132 = load i64, i64* %incoming_nbytes, align 8
  %133 = load i64, i64* %chunk, align 8
  %sub136 = sub nsw i64 %132, %133
  %134 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %enable_multibyte_characters_137 = getelementptr inbounds %struct.buffer, %struct.buffer* %134, i32 0, i32 39
  %135 = load i64, i64* %enable_multibyte_characters_137, align 8
  %call138 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp139 = icmp eq i64 %135, %call138
  %lnot140 = xor i1 %cmp139, true
  %136 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_141 = getelementptr inbounds %struct.buffer, %struct.buffer* %136, i32 0, i32 39
  %137 = load i64, i64* %enable_multibyte_characters_141, align 8
  %call142 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp143 = icmp eq i64 %137, %call142
  %lnot144 = xor i1 %cmp143, true
  %call145 = call i64 @copy_text(i8* %add.ptr128, i8* %add.ptr135, i64 %sub136, i1 zeroext %lnot140, i1 zeroext %lnot144)
  br label %if.end.146

if.end.146:                                       ; preds = %cond.end.126, %if.end.110
  %138 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt147 = getelementptr inbounds %struct.buffer, %struct.buffer* %138, i32 0, i32 75
  %139 = load i64, i64* %pt147, align 8
  %add148 = add nsw i64 %139, 0
  %140 = load i64, i64* %nchars.addr, align 8
  call void @record_insert(i64 %add148, i64 %140)
  %141 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text149 = getelementptr inbounds %struct.buffer, %struct.buffer* %141, i32 0, i32 73
  %142 = load %struct.buffer_text*, %struct.buffer_text** %text149, align 8
  %modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %142, i32 0, i32 6
  %143 = load i64, i64* %modiff, align 8
  %inc = add nsw i64 %143, 1
  store i64 %inc, i64* %modiff, align 8
  %144 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text150 = getelementptr inbounds %struct.buffer, %struct.buffer* %144, i32 0, i32 73
  %145 = load %struct.buffer_text*, %struct.buffer_text** %text150, align 8
  %modiff151 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %145, i32 0, i32 6
  %146 = load i64, i64* %modiff151, align 8
  %147 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text152 = getelementptr inbounds %struct.buffer, %struct.buffer* %147, i32 0, i32 73
  %148 = load %struct.buffer_text*, %struct.buffer_text** %text152, align 8
  %chars_modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %148, i32 0, i32 7
  store i64 %146, i64* %chars_modiff, align 8
  %149 = load i64, i64* %outgoing_nbytes, align 8
  %150 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text153 = getelementptr inbounds %struct.buffer, %struct.buffer* %150, i32 0, i32 73
  %151 = load %struct.buffer_text*, %struct.buffer_text** %text153, align 8
  %gap_size154 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %151, i32 0, i32 5
  %152 = load i64, i64* %gap_size154, align 8
  %sub155 = sub nsw i64 %152, %149
  store i64 %sub155, i64* %gap_size154, align 8
  %153 = load i64, i64* %nchars.addr, align 8
  %154 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text156 = getelementptr inbounds %struct.buffer, %struct.buffer* %154, i32 0, i32 73
  %155 = load %struct.buffer_text*, %struct.buffer_text** %text156, align 8
  %gpt157 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %155, i32 0, i32 1
  %156 = load i64, i64* %gpt157, align 8
  %add158 = add nsw i64 %156, %153
  store i64 %add158, i64* %gpt157, align 8
  %157 = load i64, i64* %nchars.addr, align 8
  %158 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %158, i32 0, i32 79
  %159 = load i64, i64* %zv, align 8
  %add159 = add nsw i64 %159, %157
  store i64 %add159, i64* %zv, align 8
  %160 = load i64, i64* %nchars.addr, align 8
  %161 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text160 = getelementptr inbounds %struct.buffer, %struct.buffer* %161, i32 0, i32 73
  %162 = load %struct.buffer_text*, %struct.buffer_text** %text160, align 8
  %z = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %162, i32 0, i32 2
  %163 = load i64, i64* %z, align 8
  %add161 = add nsw i64 %163, %160
  store i64 %add161, i64* %z, align 8
  %164 = load i64, i64* %outgoing_nbytes, align 8
  %165 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text162 = getelementptr inbounds %struct.buffer, %struct.buffer* %165, i32 0, i32 73
  %166 = load %struct.buffer_text*, %struct.buffer_text** %text162, align 8
  %gpt_byte163 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %166, i32 0, i32 3
  %167 = load i64, i64* %gpt_byte163, align 8
  %add164 = add nsw i64 %167, %164
  store i64 %add164, i64* %gpt_byte163, align 8
  %168 = load i64, i64* %outgoing_nbytes, align 8
  %169 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %169, i32 0, i32 80
  %170 = load i64, i64* %zv_byte, align 8
  %add165 = add nsw i64 %170, %168
  store i64 %add165, i64* %zv_byte, align 8
  %171 = load i64, i64* %outgoing_nbytes, align 8
  %172 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text166 = getelementptr inbounds %struct.buffer, %struct.buffer* %172, i32 0, i32 73
  %173 = load %struct.buffer_text*, %struct.buffer_text** %text166, align 8
  %z_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %173, i32 0, i32 4
  %174 = load i64, i64* %z_byte, align 8
  %add167 = add nsw i64 %174, %171
  store i64 %add167, i64* %z_byte, align 8
  %175 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text168 = getelementptr inbounds %struct.buffer, %struct.buffer* %175, i32 0, i32 73
  %176 = load %struct.buffer_text*, %struct.buffer_text** %text168, align 8
  %gap_size169 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %176, i32 0, i32 5
  %177 = load i64, i64* %gap_size169, align 8
  %cmp170 = icmp sgt i64 %177, 0
  br i1 %cmp170, label %if.then.171, label %if.end.178

if.then.171:                                      ; preds = %if.end.146
  %178 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text172 = getelementptr inbounds %struct.buffer, %struct.buffer* %178, i32 0, i32 73
  %179 = load %struct.buffer_text*, %struct.buffer_text** %text172, align 8
  %beg173 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %179, i32 0, i32 0
  %180 = load i8*, i8** %beg173, align 8
  %181 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text174 = getelementptr inbounds %struct.buffer, %struct.buffer* %181, i32 0, i32 73
  %182 = load %struct.buffer_text*, %struct.buffer_text** %text174, align 8
  %gpt_byte175 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %182, i32 0, i32 3
  %183 = load i64, i64* %gpt_byte175, align 8
  %add.ptr176 = getelementptr inbounds i8, i8* %180, i64 %183
  %add.ptr177 = getelementptr inbounds i8, i8* %add.ptr176, i64 -1
  store i8 0, i8* %add.ptr177, align 1
  br label %if.end.178

if.end.178:                                       ; preds = %if.then.171, %if.end.146
  %184 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text179 = getelementptr inbounds %struct.buffer, %struct.buffer* %184, i32 0, i32 73
  %185 = load %struct.buffer_text*, %struct.buffer_text** %text179, align 8
  %z180 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %185, i32 0, i32 2
  %186 = load i64, i64* %z180, align 8
  %187 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text181 = getelementptr inbounds %struct.buffer, %struct.buffer* %187, i32 0, i32 73
  %188 = load %struct.buffer_text*, %struct.buffer_text** %text181, align 8
  %gpt182 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %188, i32 0, i32 1
  %189 = load i64, i64* %gpt182, align 8
  %sub183 = sub nsw i64 %186, %189
  %190 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text184 = getelementptr inbounds %struct.buffer, %struct.buffer* %190, i32 0, i32 73
  %191 = load %struct.buffer_text*, %struct.buffer_text** %text184, align 8
  %end_unchanged = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %191, i32 0, i32 12
  %192 = load i64, i64* %end_unchanged, align 8
  %cmp185 = icmp slt i64 %sub183, %192
  br i1 %cmp185, label %if.then.186, label %if.end.194

if.then.186:                                      ; preds = %if.end.178
  %193 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text187 = getelementptr inbounds %struct.buffer, %struct.buffer* %193, i32 0, i32 73
  %194 = load %struct.buffer_text*, %struct.buffer_text** %text187, align 8
  %z188 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %194, i32 0, i32 2
  %195 = load i64, i64* %z188, align 8
  %196 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text189 = getelementptr inbounds %struct.buffer, %struct.buffer* %196, i32 0, i32 73
  %197 = load %struct.buffer_text*, %struct.buffer_text** %text189, align 8
  %gpt190 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %197, i32 0, i32 1
  %198 = load i64, i64* %gpt190, align 8
  %sub191 = sub nsw i64 %195, %198
  %199 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text192 = getelementptr inbounds %struct.buffer, %struct.buffer* %199, i32 0, i32 73
  %200 = load %struct.buffer_text*, %struct.buffer_text** %text192, align 8
  %end_unchanged193 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %200, i32 0, i32 12
  store i64 %sub191, i64* %end_unchanged193, align 8
  br label %if.end.194

if.end.194:                                       ; preds = %if.then.186, %if.end.178
  %201 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt195 = getelementptr inbounds %struct.buffer, %struct.buffer* %201, i32 0, i32 75
  %202 = load i64, i64* %pt195, align 8
  %add196 = add nsw i64 %202, 0
  %203 = load i64, i64* %nchars.addr, align 8
  call void @adjust_overlays_for_insert(i64 %add196, i64 %203)
  %204 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt197 = getelementptr inbounds %struct.buffer, %struct.buffer* %204, i32 0, i32 75
  %205 = load i64, i64* %pt197, align 8
  %add198 = add nsw i64 %205, 0
  %206 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte199 = getelementptr inbounds %struct.buffer, %struct.buffer* %206, i32 0, i32 76
  %207 = load i64, i64* %pt_byte199, align 8
  %add200 = add nsw i64 %207, 0
  %208 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt201 = getelementptr inbounds %struct.buffer, %struct.buffer* %208, i32 0, i32 75
  %209 = load i64, i64* %pt201, align 8
  %add202 = add nsw i64 %209, 0
  %210 = load i64, i64* %nchars.addr, align 8
  %add203 = add nsw i64 %add202, %210
  %211 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte204 = getelementptr inbounds %struct.buffer, %struct.buffer* %211, i32 0, i32 76
  %212 = load i64, i64* %pt_byte204, align 8
  %add205 = add nsw i64 %212, 0
  %213 = load i64, i64* %outgoing_nbytes, align 8
  %add206 = add nsw i64 %add205, %213
  call void @adjust_markers_for_insert(i64 %add198, i64 %add200, i64 %add203, i64 %add206, i1 zeroext false)
  %214 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %215 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt207 = getelementptr inbounds %struct.buffer, %struct.buffer* %215, i32 0, i32 75
  %216 = load i64, i64* %pt207, align 8
  %add208 = add nsw i64 %216, 0
  %217 = load i64, i64* %nchars.addr, align 8
  call void @offset_intervals(%struct.buffer* %214, i64 %add208, i64 %217)
  %218 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %call209 = call %struct.interval* @buffer_intervals(%struct.buffer* %218)
  store %struct.interval* %call209, %struct.interval** %intervals, align 8
  %219 = load i64, i64* %nchars.addr, align 8
  %220 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %text210 = getelementptr inbounds %struct.buffer, %struct.buffer* %220, i32 0, i32 73
  %221 = load %struct.buffer_text*, %struct.buffer_text** %text210, align 8
  %z211 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %221, i32 0, i32 2
  %222 = load i64, i64* %z211, align 8
  %sub212 = sub nsw i64 %222, 1
  %cmp213 = icmp slt i64 %219, %sub212
  br i1 %cmp213, label %if.then.214, label %if.end.223

if.then.214:                                      ; preds = %if.end.194
  %223 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %224 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp215 = icmp eq %struct.buffer* %223, %224
  br i1 %cmp215, label %land.lhs.true, label %if.end.221

land.lhs.true:                                    ; preds = %if.then.214
  %225 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt216 = getelementptr inbounds %struct.buffer, %struct.buffer* %225, i32 0, i32 75
  %226 = load i64, i64* %pt216, align 8
  %add217 = add nsw i64 %226, 0
  %227 = load i64, i64* %from.addr, align 8
  %cmp218 = icmp sle i64 %add217, %227
  br i1 %cmp218, label %if.then.219, label %if.end.221

if.then.219:                                      ; preds = %land.lhs.true
  %228 = load i64, i64* %nchars.addr, align 8
  %229 = load i64, i64* %from.addr, align 8
  %add220 = add nsw i64 %229, %228
  store i64 %add220, i64* %from.addr, align 8
  br label %if.end.221

if.end.221:                                       ; preds = %if.then.219, %land.lhs.true, %if.then.214
  %230 = load %struct.interval*, %struct.interval** %intervals, align 8
  %231 = load i64, i64* %from.addr, align 8
  %232 = load i64, i64* %nchars.addr, align 8
  %call222 = call %struct.interval* @copy_intervals(%struct.interval* %230, i64 %231, i64 %232)
  store %struct.interval* %call222, %struct.interval** %intervals, align 8
  br label %if.end.223

if.end.223:                                       ; preds = %if.end.221, %if.end.194
  %233 = load %struct.interval*, %struct.interval** %intervals, align 8
  %234 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt224 = getelementptr inbounds %struct.buffer, %struct.buffer* %234, i32 0, i32 75
  %235 = load i64, i64* %pt224, align 8
  %add225 = add nsw i64 %235, 0
  %236 = load i64, i64* %nchars.addr, align 8
  %237 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %238 = load i8, i8* %inherit.addr, align 1
  %tobool = trunc i8 %238 to i1
  call void @graft_intervals_into_buffer(%struct.interval* %233, i64 %add225, i64 %236, %struct.buffer* %237, i1 zeroext %tobool)
  %239 = load i64, i64* %nchars.addr, align 8
  %240 = load i64, i64* %outgoing_nbytes, align 8
  call void @adjust_point(i64 %239, i64 %240)
  br label %return

return:                                           ; preds = %if.end.223, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @adjust_after_insert(i64 %from, i64 %from_byte, i64 %to, i64 %to_byte, i64 %newlen) #0 {
entry:
  %from.addr = alloca i64, align 8
  %from_byte.addr = alloca i64, align 8
  %to.addr = alloca i64, align 8
  %to_byte.addr = alloca i64, align 8
  %newlen.addr = alloca i64, align 8
  %len = alloca i64, align 8
  %len_byte = alloca i64, align 8
  store i64 %from, i64* %from.addr, align 8
  store i64 %from_byte, i64* %from_byte.addr, align 8
  store i64 %to, i64* %to.addr, align 8
  store i64 %to_byte, i64* %to_byte.addr, align 8
  store i64 %newlen, i64* %newlen.addr, align 8
  %0 = load i64, i64* %to.addr, align 8
  %1 = load i64, i64* %from.addr, align 8
  %sub = sub nsw i64 %0, %1
  store i64 %sub, i64* %len, align 8
  %2 = load i64, i64* %to_byte.addr, align 8
  %3 = load i64, i64* %from_byte.addr, align 8
  %sub1 = sub nsw i64 %2, %3
  store i64 %sub1, i64* %len_byte, align 8
  %4 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %4, i32 0, i32 73
  %5 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %gpt = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %5, i32 0, i32 1
  %6 = load i64, i64* %gpt, align 8
  %7 = load i64, i64* %to.addr, align 8
  %cmp = icmp ne i64 %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i64, i64* %to.addr, align 8
  %9 = load i64, i64* %to_byte.addr, align 8
  call void @move_gap_both(i64 %8, i64 %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i64, i64* %len_byte, align 8
  %11 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text2 = getelementptr inbounds %struct.buffer, %struct.buffer* %11, i32 0, i32 73
  %12 = load %struct.buffer_text*, %struct.buffer_text** %text2, align 8
  %gap_size = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %12, i32 0, i32 5
  %13 = load i64, i64* %gap_size, align 8
  %add = add nsw i64 %13, %10
  store i64 %add, i64* %gap_size, align 8
  %14 = load i64, i64* %len, align 8
  %15 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text3 = getelementptr inbounds %struct.buffer, %struct.buffer* %15, i32 0, i32 73
  %16 = load %struct.buffer_text*, %struct.buffer_text** %text3, align 8
  %gpt4 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %16, i32 0, i32 1
  %17 = load i64, i64* %gpt4, align 8
  %sub5 = sub nsw i64 %17, %14
  store i64 %sub5, i64* %gpt4, align 8
  %18 = load i64, i64* %len_byte, align 8
  %19 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text6 = getelementptr inbounds %struct.buffer, %struct.buffer* %19, i32 0, i32 73
  %20 = load %struct.buffer_text*, %struct.buffer_text** %text6, align 8
  %gpt_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %20, i32 0, i32 3
  %21 = load i64, i64* %gpt_byte, align 8
  %sub7 = sub nsw i64 %21, %18
  store i64 %sub7, i64* %gpt_byte, align 8
  %22 = load i64, i64* %len, align 8
  %23 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %23, i32 0, i32 79
  %24 = load i64, i64* %zv, align 8
  %sub8 = sub nsw i64 %24, %22
  store i64 %sub8, i64* %zv, align 8
  %25 = load i64, i64* %len_byte, align 8
  %26 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %26, i32 0, i32 80
  %27 = load i64, i64* %zv_byte, align 8
  %sub9 = sub nsw i64 %27, %25
  store i64 %sub9, i64* %zv_byte, align 8
  %28 = load i64, i64* %len, align 8
  %29 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text10 = getelementptr inbounds %struct.buffer, %struct.buffer* %29, i32 0, i32 73
  %30 = load %struct.buffer_text*, %struct.buffer_text** %text10, align 8
  %z = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %30, i32 0, i32 2
  %31 = load i64, i64* %z, align 8
  %sub11 = sub nsw i64 %31, %28
  store i64 %sub11, i64* %z, align 8
  %32 = load i64, i64* %len_byte, align 8
  %33 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text12 = getelementptr inbounds %struct.buffer, %struct.buffer* %33, i32 0, i32 73
  %34 = load %struct.buffer_text*, %struct.buffer_text** %text12, align 8
  %z_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %34, i32 0, i32 4
  %35 = load i64, i64* %z_byte, align 8
  %sub13 = sub nsw i64 %35, %32
  store i64 %sub13, i64* %z_byte, align 8
  %36 = load i64, i64* %from.addr, align 8
  %37 = load i64, i64* %from_byte.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %38 = load i64, i64* %newlen.addr, align 8
  %39 = load i64, i64* %len_byte, align 8
  call void @adjust_after_replace(i64 %36, i64 %37, i64 %call, i64 %38, i64 %39)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @adjust_after_replace(i64 %from, i64 %from_byte, i64 %prev_text, i64 %len, i64 %len_byte) #0 {
entry:
  %from.addr = alloca i64, align 8
  %from_byte.addr = alloca i64, align 8
  %prev_text.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %len_byte.addr = alloca i64, align 8
  %nchars_del = alloca i64, align 8
  %nbytes_del = alloca i64, align 8
  store i64 %from, i64* %from.addr, align 8
  store i64 %from_byte, i64* %from_byte.addr, align 8
  store i64 %prev_text, i64* %prev_text.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i64 %len_byte, i64* %len_byte.addr, align 8
  store i64 0, i64* %nchars_del, align 8
  store i64 0, i64* %nbytes_del, align 8
  %0 = load i64, i64* %prev_text.addr, align 8
  %call = call zeroext i1 @STRINGP(i64 %0)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %prev_text.addr, align 8
  %call1 = call i64 @SCHARS(i64 %1)
  store i64 %call1, i64* %nchars_del, align 8
  %2 = load i64, i64* %prev_text.addr, align 8
  %call2 = call i64 @SBYTES(i64 %2)
  store i64 %call2, i64* %nbytes_del, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* %len_byte.addr, align 8
  %4 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %4, i32 0, i32 73
  %5 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %gap_size = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %5, i32 0, i32 5
  %6 = load i64, i64* %gap_size, align 8
  %sub = sub nsw i64 %6, %3
  store i64 %sub, i64* %gap_size, align 8
  %7 = load i64, i64* %len.addr, align 8
  %8 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 79
  %9 = load i64, i64* %zv, align 8
  %add = add nsw i64 %9, %7
  store i64 %add, i64* %zv, align 8
  %10 = load i64, i64* %len.addr, align 8
  %11 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text3 = getelementptr inbounds %struct.buffer, %struct.buffer* %11, i32 0, i32 73
  %12 = load %struct.buffer_text*, %struct.buffer_text** %text3, align 8
  %z = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %12, i32 0, i32 2
  %13 = load i64, i64* %z, align 8
  %add4 = add nsw i64 %13, %10
  store i64 %add4, i64* %z, align 8
  %14 = load i64, i64* %len_byte.addr, align 8
  %15 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %15, i32 0, i32 80
  %16 = load i64, i64* %zv_byte, align 8
  %add5 = add nsw i64 %16, %14
  store i64 %add5, i64* %zv_byte, align 8
  %17 = load i64, i64* %len_byte.addr, align 8
  %18 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text6 = getelementptr inbounds %struct.buffer, %struct.buffer* %18, i32 0, i32 73
  %19 = load %struct.buffer_text*, %struct.buffer_text** %text6, align 8
  %z_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %19, i32 0, i32 4
  %20 = load i64, i64* %z_byte, align 8
  %add7 = add nsw i64 %20, %17
  store i64 %add7, i64* %z_byte, align 8
  %21 = load i64, i64* %len.addr, align 8
  %22 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text8 = getelementptr inbounds %struct.buffer, %struct.buffer* %22, i32 0, i32 73
  %23 = load %struct.buffer_text*, %struct.buffer_text** %text8, align 8
  %gpt = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %23, i32 0, i32 1
  %24 = load i64, i64* %gpt, align 8
  %add9 = add nsw i64 %24, %21
  store i64 %add9, i64* %gpt, align 8
  %25 = load i64, i64* %len_byte.addr, align 8
  %26 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text10 = getelementptr inbounds %struct.buffer, %struct.buffer* %26, i32 0, i32 73
  %27 = load %struct.buffer_text*, %struct.buffer_text** %text10, align 8
  %gpt_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %27, i32 0, i32 3
  %28 = load i64, i64* %gpt_byte, align 8
  %add11 = add nsw i64 %28, %25
  store i64 %add11, i64* %gpt_byte, align 8
  %29 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text12 = getelementptr inbounds %struct.buffer, %struct.buffer* %29, i32 0, i32 73
  %30 = load %struct.buffer_text*, %struct.buffer_text** %text12, align 8
  %gap_size13 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %30, i32 0, i32 5
  %31 = load i64, i64* %gap_size13, align 8
  %cmp = icmp sgt i64 %31, 0
  br i1 %cmp, label %if.then.14, label %if.end.19

if.then.14:                                       ; preds = %if.end
  %32 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text15 = getelementptr inbounds %struct.buffer, %struct.buffer* %32, i32 0, i32 73
  %33 = load %struct.buffer_text*, %struct.buffer_text** %text15, align 8
  %beg = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %33, i32 0, i32 0
  %34 = load i8*, i8** %beg, align 8
  %35 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text16 = getelementptr inbounds %struct.buffer, %struct.buffer* %35, i32 0, i32 73
  %36 = load %struct.buffer_text*, %struct.buffer_text** %text16, align 8
  %gpt_byte17 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %36, i32 0, i32 3
  %37 = load i64, i64* %gpt_byte17, align 8
  %add.ptr = getelementptr inbounds i8, i8* %34, i64 %37
  %add.ptr18 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8 0, i8* %add.ptr18, align 1
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.14, %if.end
  %38 = load i64, i64* %nchars_del, align 8
  %cmp20 = icmp sgt i64 %38, 0
  br i1 %cmp20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.end.19
  %39 = load i64, i64* %from.addr, align 8
  %40 = load i64, i64* %from_byte.addr, align 8
  %41 = load i64, i64* %nchars_del, align 8
  %42 = load i64, i64* %nbytes_del, align 8
  %43 = load i64, i64* %len.addr, align 8
  %44 = load i64, i64* %len_byte.addr, align 8
  call void @adjust_markers_for_replace(i64 %39, i64 %40, i64 %41, i64 %42, i64 %43, i64 %44)
  br label %if.end.24

if.else:                                          ; preds = %if.end.19
  %45 = load i64, i64* %from.addr, align 8
  %46 = load i64, i64* %from_byte.addr, align 8
  %47 = load i64, i64* %from.addr, align 8
  %48 = load i64, i64* %len.addr, align 8
  %add22 = add nsw i64 %47, %48
  %49 = load i64, i64* %from_byte.addr, align 8
  %50 = load i64, i64* %len_byte.addr, align 8
  %add23 = add nsw i64 %49, %50
  call void @adjust_markers_for_insert(i64 %45, i64 %46, i64 %add22, i64 %add23, i1 zeroext false)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %if.then.21
  %51 = load i64, i64* %nchars_del, align 8
  %cmp25 = icmp sgt i64 %51, 0
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.24
  %52 = load i64, i64* %from.addr, align 8
  %53 = load i64, i64* %prev_text.addr, align 8
  call void @record_delete(i64 %52, i64 %53, i1 zeroext false)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.end.24
  %54 = load i64, i64* %from.addr, align 8
  %55 = load i64, i64* %len.addr, align 8
  call void @record_insert(i64 %54, i64 %55)
  %56 = load i64, i64* %len.addr, align 8
  %57 = load i64, i64* %nchars_del, align 8
  %cmp28 = icmp sgt i64 %56, %57
  br i1 %cmp28, label %if.then.29, label %if.else.31

if.then.29:                                       ; preds = %if.end.27
  %58 = load i64, i64* %from.addr, align 8
  %59 = load i64, i64* %len.addr, align 8
  %60 = load i64, i64* %nchars_del, align 8
  %sub30 = sub nsw i64 %59, %60
  call void @adjust_overlays_for_insert(i64 %58, i64 %sub30)
  br label %if.end.36

if.else.31:                                       ; preds = %if.end.27
  %61 = load i64, i64* %len.addr, align 8
  %62 = load i64, i64* %nchars_del, align 8
  %cmp32 = icmp slt i64 %61, %62
  br i1 %cmp32, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %if.else.31
  %63 = load i64, i64* %from.addr, align 8
  %64 = load i64, i64* %nchars_del, align 8
  %65 = load i64, i64* %len.addr, align 8
  %sub34 = sub nsw i64 %64, %65
  call void @adjust_overlays_for_delete(i64 %63, i64 %sub34)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %if.else.31
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.29
  %66 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %67 = load i64, i64* %from.addr, align 8
  %68 = load i64, i64* %len.addr, align 8
  %69 = load i64, i64* %nchars_del, align 8
  %sub37 = sub nsw i64 %68, %69
  call void @offset_intervals(%struct.buffer* %66, i64 %67, i64 %sub37)
  %70 = load i64, i64* %from.addr, align 8
  %71 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %71, i32 0, i32 75
  %72 = load i64, i64* %pt, align 8
  %add38 = add nsw i64 %72, 0
  %cmp39 = icmp slt i64 %70, %add38
  br i1 %cmp39, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %if.end.36
  %73 = load i64, i64* %len.addr, align 8
  %74 = load i64, i64* %nchars_del, align 8
  %sub41 = sub nsw i64 %73, %74
  %75 = load i64, i64* %len_byte.addr, align 8
  %76 = load i64, i64* %nbytes_del, align 8
  %sub42 = sub nsw i64 %75, %76
  call void @adjust_point(i64 %sub41, i64 %sub42)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.40, %if.end.36
  %77 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text44 = getelementptr inbounds %struct.buffer, %struct.buffer* %77, i32 0, i32 73
  %78 = load %struct.buffer_text*, %struct.buffer_text** %text44, align 8
  %z45 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %78, i32 0, i32 2
  %79 = load i64, i64* %z45, align 8
  %80 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text46 = getelementptr inbounds %struct.buffer, %struct.buffer* %80, i32 0, i32 73
  %81 = load %struct.buffer_text*, %struct.buffer_text** %text46, align 8
  %gpt47 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %81, i32 0, i32 1
  %82 = load i64, i64* %gpt47, align 8
  %sub48 = sub nsw i64 %79, %82
  %83 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text49 = getelementptr inbounds %struct.buffer, %struct.buffer* %83, i32 0, i32 73
  %84 = load %struct.buffer_text*, %struct.buffer_text** %text49, align 8
  %end_unchanged = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %84, i32 0, i32 12
  %85 = load i64, i64* %end_unchanged, align 8
  %cmp50 = icmp slt i64 %sub48, %85
  br i1 %cmp50, label %if.then.51, label %if.end.59

if.then.51:                                       ; preds = %if.end.43
  %86 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text52 = getelementptr inbounds %struct.buffer, %struct.buffer* %86, i32 0, i32 73
  %87 = load %struct.buffer_text*, %struct.buffer_text** %text52, align 8
  %z53 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %87, i32 0, i32 2
  %88 = load i64, i64* %z53, align 8
  %89 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text54 = getelementptr inbounds %struct.buffer, %struct.buffer* %89, i32 0, i32 73
  %90 = load %struct.buffer_text*, %struct.buffer_text** %text54, align 8
  %gpt55 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %90, i32 0, i32 1
  %91 = load i64, i64* %gpt55, align 8
  %sub56 = sub nsw i64 %88, %91
  %92 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text57 = getelementptr inbounds %struct.buffer, %struct.buffer* %92, i32 0, i32 73
  %93 = load %struct.buffer_text*, %struct.buffer_text** %text57, align 8
  %end_unchanged58 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %93, i32 0, i32 12
  store i64 %sub56, i64* %end_unchanged58, align 8
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.51, %if.end.43
  br label %do.body

do.body:                                          ; preds = %if.end.59
  br label %do.end

do.end:                                           ; preds = %do.body
  %94 = load i64, i64* %len.addr, align 8
  %cmp60 = icmp eq i64 %94, 0
  br i1 %cmp60, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %do.end
  %95 = load i64, i64* %from.addr, align 8
  call void @evaporate_overlays(i64 %95)
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.61, %do.end
  %96 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text63 = getelementptr inbounds %struct.buffer, %struct.buffer* %96, i32 0, i32 73
  %97 = load %struct.buffer_text*, %struct.buffer_text** %text63, align 8
  %modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %97, i32 0, i32 6
  %98 = load i64, i64* %modiff, align 8
  %inc = add nsw i64 %98, 1
  store i64 %inc, i64* %modiff, align 8
  %99 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text64 = getelementptr inbounds %struct.buffer, %struct.buffer* %99, i32 0, i32 73
  %100 = load %struct.buffer_text*, %struct.buffer_text** %text64, align 8
  %modiff65 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %100, i32 0, i32 6
  %101 = load i64, i64* %modiff65, align 8
  %102 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text66 = getelementptr inbounds %struct.buffer, %struct.buffer* %102, i32 0, i32 73
  %103 = load %struct.buffer_text*, %struct.buffer_text** %text66, align 8
  %chars_modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %103, i32 0, i32 7
  store i64 %101, i64* %chars_modiff, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @replace_range(i64 %from, i64 %to, i64 %new, i1 zeroext %prepare, i1 zeroext %inherit, i1 zeroext %markers, i1 zeroext %adjust_match_data) #0 {
entry:
  %from.addr = alloca i64, align 8
  %to.addr = alloca i64, align 8
  %new.addr = alloca i64, align 8
  %prepare.addr = alloca i8, align 1
  %inherit.addr = alloca i8, align 1
  %markers.addr = alloca i8, align 1
  %adjust_match_data.addr = alloca i8, align 1
  %inschars = alloca i64, align 8
  %insbytes = alloca i64, align 8
  %from_byte = alloca i64, align 8
  %to_byte = alloca i64, align 8
  %nbytes_del = alloca i64, align 8
  %nchars_del = alloca i64, align 8
  %intervals = alloca %struct.interval*, align 8
  %outgoing_insbytes = alloca i64, align 8
  %deletion = alloca i64, align 8
  %range_length = alloca i64, align 8
  store i64 %from, i64* %from.addr, align 8
  store i64 %to, i64* %to.addr, align 8
  store i64 %new, i64* %new.addr, align 8
  %frombool = zext i1 %prepare to i8
  store i8 %frombool, i8* %prepare.addr, align 1
  %frombool1 = zext i1 %inherit to i8
  store i8 %frombool1, i8* %inherit.addr, align 1
  %frombool2 = zext i1 %markers to i8
  store i8 %frombool2, i8* %markers.addr, align 1
  %frombool3 = zext i1 %adjust_match_data to i8
  store i8 %frombool3, i8* %adjust_match_data.addr, align 1
  %0 = load i64, i64* %new.addr, align 8
  %call = call i64 @SCHARS(i64 %0)
  store i64 %call, i64* %inschars, align 8
  %1 = load i64, i64* %new.addr, align 8
  %call4 = call i64 @SBYTES(i64 %1)
  store i64 %call4, i64* %insbytes, align 8
  %2 = load i64, i64* %insbytes, align 8
  store i64 %2, i64* %outgoing_insbytes, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call5, i64* %deletion, align 8
  %3 = load i8, i8* %prepare.addr, align 1
  %tobool = trunc i8 %3 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %4 = load i64, i64* %to.addr, align 8
  %5 = load i64, i64* %from.addr, align 8
  %sub = sub nsw i64 %4, %5
  store i64 %sub, i64* %range_length, align 8
  %6 = load i64, i64* %from.addr, align 8
  %7 = load i64, i64* %to.addr, align 8
  call void @prepare_to_modify_buffer(i64 %6, i64 %7, i64* %from.addr)
  %8 = load i64, i64* %from.addr, align 8
  %9 = load i64, i64* %range_length, align 8
  %add = add nsw i64 %8, %9
  store i64 %add, i64* %to.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %10 = load i64, i64* %from.addr, align 8
  %11 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %11, i32 0, i32 77
  %12 = load i64, i64* %begv, align 8
  %cmp = icmp slt i64 %10, %12
  br i1 %cmp, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %13 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv7 = getelementptr inbounds %struct.buffer, %struct.buffer* %13, i32 0, i32 77
  %14 = load i64, i64* %begv7, align 8
  store i64 %14, i64* %from.addr, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  %15 = load i64, i64* %to.addr, align 8
  %16 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %16, i32 0, i32 79
  %17 = load i64, i64* %zv, align 8
  %cmp9 = icmp sgt i64 %15, %17
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.8
  %18 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv11 = getelementptr inbounds %struct.buffer, %struct.buffer* %18, i32 0, i32 79
  %19 = load i64, i64* %zv11, align 8
  store i64 %19, i64* %to.addr, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end.8
  %20 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %21 = load i64, i64* %from.addr, align 8
  %call13 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %20, i64 %21)
  store i64 %call13, i64* %from_byte, align 8
  %22 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %23 = load i64, i64* %to.addr, align 8
  %call14 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %22, i64 %23)
  store i64 %call14, i64* %to_byte, align 8
  %24 = load i64, i64* %to.addr, align 8
  %25 = load i64, i64* %from.addr, align 8
  %sub15 = sub nsw i64 %24, %25
  store i64 %sub15, i64* %nchars_del, align 8
  %26 = load i64, i64* %to_byte, align 8
  %27 = load i64, i64* %from_byte, align 8
  %sub16 = sub nsw i64 %26, %27
  store i64 %sub16, i64* %nbytes_del, align 8
  %28 = load i64, i64* %nbytes_del, align 8
  %cmp17 = icmp sle i64 %28, 0
  br i1 %cmp17, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %if.end.12
  %29 = load i64, i64* %insbytes, align 8
  %cmp18 = icmp eq i64 %29, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %land.lhs.true
  br label %return

if.end.20:                                        ; preds = %land.lhs.true, %if.end.12
  %30 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_ = getelementptr inbounds %struct.buffer, %struct.buffer* %30, i32 0, i32 39
  %31 = load i64, i64* %enable_multibyte_characters_, align 8
  %call21 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp22 = icmp eq i64 %31, %call21
  br i1 %cmp22, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.end.20
  %32 = load i64, i64* %inschars, align 8
  store i64 %32, i64* %outgoing_insbytes, align 8
  br label %if.end.29

if.else:                                          ; preds = %if.end.20
  %33 = load i64, i64* %new.addr, align 8
  %call24 = call zeroext i1 @STRING_MULTIBYTE(i64 %33)
  br i1 %call24, label %if.end.28, label %if.then.25

if.then.25:                                       ; preds = %if.else
  %34 = load i64, i64* %new.addr, align 8
  %call26 = call i8* @SDATA(i64 %34)
  %35 = load i64, i64* %insbytes, align 8
  %call27 = call i64 @count_size_as_multibyte(i8* %call26, i64 %35)
  store i64 %call27, i64* %outgoing_insbytes, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.25, %if.else
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then.23
  %36 = load i64, i64* %from.addr, align 8
  %37 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %37, i32 0, i32 73
  %38 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %gpt = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %38, i32 0, i32 1
  %39 = load i64, i64* %gpt, align 8
  %cmp30 = icmp sgt i64 %36, %39
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.29
  %40 = load i64, i64* %from.addr, align 8
  %41 = load i64, i64* %from_byte, align 8
  call void @gap_right(i64 %40, i64 %41)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.end.29
  %42 = load i64, i64* %to.addr, align 8
  %43 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text33 = getelementptr inbounds %struct.buffer, %struct.buffer* %43, i32 0, i32 73
  %44 = load %struct.buffer_text*, %struct.buffer_text** %text33, align 8
  %gpt34 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %44, i32 0, i32 1
  %45 = load i64, i64* %gpt34, align 8
  %cmp35 = icmp slt i64 %42, %45
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.32
  %46 = load i64, i64* %to.addr, align 8
  %47 = load i64, i64* %to_byte, align 8
  call void @gap_left(i64 %46, i64 %47, i1 zeroext false)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.end.32
  %48 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %undo_list_ = getelementptr inbounds %struct.buffer, %struct.buffer* %48, i32 0, i32 98
  %49 = load i64, i64* %undo_list_, align 8
  %call38 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp39 = icmp eq i64 %49, %call38
  br i1 %cmp39, label %if.end.42, label %if.then.40

if.then.40:                                       ; preds = %if.end.37
  %50 = load i64, i64* %from.addr, align 8
  %51 = load i64, i64* %from_byte, align 8
  %52 = load i64, i64* %to.addr, align 8
  %53 = load i64, i64* %to_byte, align 8
  %call41 = call i64 @make_buffer_string_both(i64 %50, i64 %51, i64 %52, i64 %53, i1 zeroext true)
  store i64 %call41, i64* %deletion, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %if.end.37
  %54 = load i64, i64* %nbytes_del, align 8
  %55 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text43 = getelementptr inbounds %struct.buffer, %struct.buffer* %55, i32 0, i32 73
  %56 = load %struct.buffer_text*, %struct.buffer_text** %text43, align 8
  %gap_size = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %56, i32 0, i32 5
  %57 = load i64, i64* %gap_size, align 8
  %add44 = add nsw i64 %57, %54
  store i64 %add44, i64* %gap_size, align 8
  %58 = load i64, i64* %nchars_del, align 8
  %59 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv45 = getelementptr inbounds %struct.buffer, %struct.buffer* %59, i32 0, i32 79
  %60 = load i64, i64* %zv45, align 8
  %sub46 = sub nsw i64 %60, %58
  store i64 %sub46, i64* %zv45, align 8
  %61 = load i64, i64* %nchars_del, align 8
  %62 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text47 = getelementptr inbounds %struct.buffer, %struct.buffer* %62, i32 0, i32 73
  %63 = load %struct.buffer_text*, %struct.buffer_text** %text47, align 8
  %z = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %63, i32 0, i32 2
  %64 = load i64, i64* %z, align 8
  %sub48 = sub nsw i64 %64, %61
  store i64 %sub48, i64* %z, align 8
  %65 = load i64, i64* %nbytes_del, align 8
  %66 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %66, i32 0, i32 80
  %67 = load i64, i64* %zv_byte, align 8
  %sub49 = sub nsw i64 %67, %65
  store i64 %sub49, i64* %zv_byte, align 8
  %68 = load i64, i64* %nbytes_del, align 8
  %69 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text50 = getelementptr inbounds %struct.buffer, %struct.buffer* %69, i32 0, i32 73
  %70 = load %struct.buffer_text*, %struct.buffer_text** %text50, align 8
  %z_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %70, i32 0, i32 4
  %71 = load i64, i64* %z_byte, align 8
  %sub51 = sub nsw i64 %71, %68
  store i64 %sub51, i64* %z_byte, align 8
  %72 = load i64, i64* %from.addr, align 8
  %73 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text52 = getelementptr inbounds %struct.buffer, %struct.buffer* %73, i32 0, i32 73
  %74 = load %struct.buffer_text*, %struct.buffer_text** %text52, align 8
  %gpt53 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %74, i32 0, i32 1
  store i64 %72, i64* %gpt53, align 8
  %75 = load i64, i64* %from_byte, align 8
  %76 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text54 = getelementptr inbounds %struct.buffer, %struct.buffer* %76, i32 0, i32 73
  %77 = load %struct.buffer_text*, %struct.buffer_text** %text54, align 8
  %gpt_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %77, i32 0, i32 3
  store i64 %75, i64* %gpt_byte, align 8
  %78 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text55 = getelementptr inbounds %struct.buffer, %struct.buffer* %78, i32 0, i32 73
  %79 = load %struct.buffer_text*, %struct.buffer_text** %text55, align 8
  %gap_size56 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %79, i32 0, i32 5
  %80 = load i64, i64* %gap_size56, align 8
  %cmp57 = icmp sgt i64 %80, 0
  br i1 %cmp57, label %if.then.58, label %if.end.63

if.then.58:                                       ; preds = %if.end.42
  %81 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text59 = getelementptr inbounds %struct.buffer, %struct.buffer* %81, i32 0, i32 73
  %82 = load %struct.buffer_text*, %struct.buffer_text** %text59, align 8
  %beg = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %82, i32 0, i32 0
  %83 = load i8*, i8** %beg, align 8
  %84 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text60 = getelementptr inbounds %struct.buffer, %struct.buffer* %84, i32 0, i32 73
  %85 = load %struct.buffer_text*, %struct.buffer_text** %text60, align 8
  %gpt_byte61 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %85, i32 0, i32 3
  %86 = load i64, i64* %gpt_byte61, align 8
  %add.ptr = getelementptr inbounds i8, i8* %83, i64 %86
  %add.ptr62 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8 0, i8* %add.ptr62, align 1
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.58, %if.end.42
  %87 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text64 = getelementptr inbounds %struct.buffer, %struct.buffer* %87, i32 0, i32 73
  %88 = load %struct.buffer_text*, %struct.buffer_text** %text64, align 8
  %gpt65 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %88, i32 0, i32 1
  %89 = load i64, i64* %gpt65, align 8
  %sub66 = sub nsw i64 %89, 1
  %90 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text67 = getelementptr inbounds %struct.buffer, %struct.buffer* %90, i32 0, i32 73
  %91 = load %struct.buffer_text*, %struct.buffer_text** %text67, align 8
  %beg_unchanged = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %91, i32 0, i32 11
  %92 = load i64, i64* %beg_unchanged, align 8
  %cmp68 = icmp slt i64 %sub66, %92
  br i1 %cmp68, label %if.then.69, label %if.end.75

if.then.69:                                       ; preds = %if.end.63
  %93 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text70 = getelementptr inbounds %struct.buffer, %struct.buffer* %93, i32 0, i32 73
  %94 = load %struct.buffer_text*, %struct.buffer_text** %text70, align 8
  %gpt71 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %94, i32 0, i32 1
  %95 = load i64, i64* %gpt71, align 8
  %sub72 = sub nsw i64 %95, 1
  %96 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text73 = getelementptr inbounds %struct.buffer, %struct.buffer* %96, i32 0, i32 73
  %97 = load %struct.buffer_text*, %struct.buffer_text** %text73, align 8
  %beg_unchanged74 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %97, i32 0, i32 11
  store i64 %sub72, i64* %beg_unchanged74, align 8
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.69, %if.end.63
  %98 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text76 = getelementptr inbounds %struct.buffer, %struct.buffer* %98, i32 0, i32 73
  %99 = load %struct.buffer_text*, %struct.buffer_text** %text76, align 8
  %z77 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %99, i32 0, i32 2
  %100 = load i64, i64* %z77, align 8
  %101 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text78 = getelementptr inbounds %struct.buffer, %struct.buffer* %101, i32 0, i32 73
  %102 = load %struct.buffer_text*, %struct.buffer_text** %text78, align 8
  %gpt79 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %102, i32 0, i32 1
  %103 = load i64, i64* %gpt79, align 8
  %sub80 = sub nsw i64 %100, %103
  %104 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text81 = getelementptr inbounds %struct.buffer, %struct.buffer* %104, i32 0, i32 73
  %105 = load %struct.buffer_text*, %struct.buffer_text** %text81, align 8
  %end_unchanged = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %105, i32 0, i32 12
  %106 = load i64, i64* %end_unchanged, align 8
  %cmp82 = icmp slt i64 %sub80, %106
  br i1 %cmp82, label %if.then.83, label %if.end.91

if.then.83:                                       ; preds = %if.end.75
  %107 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text84 = getelementptr inbounds %struct.buffer, %struct.buffer* %107, i32 0, i32 73
  %108 = load %struct.buffer_text*, %struct.buffer_text** %text84, align 8
  %z85 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %108, i32 0, i32 2
  %109 = load i64, i64* %z85, align 8
  %110 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text86 = getelementptr inbounds %struct.buffer, %struct.buffer* %110, i32 0, i32 73
  %111 = load %struct.buffer_text*, %struct.buffer_text** %text86, align 8
  %gpt87 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %111, i32 0, i32 1
  %112 = load i64, i64* %gpt87, align 8
  %sub88 = sub nsw i64 %109, %112
  %113 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text89 = getelementptr inbounds %struct.buffer, %struct.buffer* %113, i32 0, i32 73
  %114 = load %struct.buffer_text*, %struct.buffer_text** %text89, align 8
  %end_unchanged90 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %114, i32 0, i32 12
  store i64 %sub88, i64* %end_unchanged90, align 8
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.83, %if.end.75
  %115 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text92 = getelementptr inbounds %struct.buffer, %struct.buffer* %115, i32 0, i32 73
  %116 = load %struct.buffer_text*, %struct.buffer_text** %text92, align 8
  %gap_size93 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %116, i32 0, i32 5
  %117 = load i64, i64* %gap_size93, align 8
  %118 = load i64, i64* %outgoing_insbytes, align 8
  %cmp94 = icmp slt i64 %117, %118
  br i1 %cmp94, label %if.then.95, label %if.end.99

if.then.95:                                       ; preds = %if.end.91
  %119 = load i64, i64* %outgoing_insbytes, align 8
  %120 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text96 = getelementptr inbounds %struct.buffer, %struct.buffer* %120, i32 0, i32 73
  %121 = load %struct.buffer_text*, %struct.buffer_text** %text96, align 8
  %gap_size97 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %121, i32 0, i32 5
  %122 = load i64, i64* %gap_size97, align 8
  %sub98 = sub nsw i64 %119, %122
  call void @make_gap(i64 %sub98)
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.95, %if.end.91
  %123 = load i64, i64* %new.addr, align 8
  %call100 = call i8* @SDATA(i64 %123)
  %124 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text101 = getelementptr inbounds %struct.buffer, %struct.buffer* %124, i32 0, i32 73
  %125 = load %struct.buffer_text*, %struct.buffer_text** %text101, align 8
  %beg102 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %125, i32 0, i32 0
  %126 = load i8*, i8** %beg102, align 8
  %127 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text103 = getelementptr inbounds %struct.buffer, %struct.buffer* %127, i32 0, i32 73
  %128 = load %struct.buffer_text*, %struct.buffer_text** %text103, align 8
  %gpt_byte104 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %128, i32 0, i32 3
  %129 = load i64, i64* %gpt_byte104, align 8
  %add.ptr105 = getelementptr inbounds i8, i8* %126, i64 %129
  %add.ptr106 = getelementptr inbounds i8, i8* %add.ptr105, i64 -1
  %130 = load i64, i64* %insbytes, align 8
  %131 = load i64, i64* %new.addr, align 8
  %call107 = call zeroext i1 @STRING_MULTIBYTE(i64 %131)
  %132 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_108 = getelementptr inbounds %struct.buffer, %struct.buffer* %132, i32 0, i32 39
  %133 = load i64, i64* %enable_multibyte_characters_108, align 8
  %call109 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp110 = icmp eq i64 %133, %call109
  %lnot = xor i1 %cmp110, true
  %call111 = call i64 @copy_text(i8* %call100, i8* %add.ptr106, i64 %130, i1 zeroext %call107, i1 zeroext %lnot)
  %134 = load i64, i64* %deletion, align 8
  %call112 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp113 = icmp eq i64 %134, %call112
  br i1 %cmp113, label %if.end.117, label %if.then.114

if.then.114:                                      ; preds = %if.end.99
  %135 = load i64, i64* %from.addr, align 8
  %136 = load i64, i64* %deletion, align 8
  %call115 = call i64 @SCHARS(i64 %136)
  %add116 = add nsw i64 %135, %call115
  %137 = load i64, i64* %inschars, align 8
  call void @record_insert(i64 %add116, i64 %137)
  %138 = load i64, i64* %from.addr, align 8
  %139 = load i64, i64* %deletion, align 8
  call void @record_delete(i64 %138, i64 %139, i1 zeroext false)
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.114, %if.end.99
  %140 = load i64, i64* %outgoing_insbytes, align 8
  %141 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text118 = getelementptr inbounds %struct.buffer, %struct.buffer* %141, i32 0, i32 73
  %142 = load %struct.buffer_text*, %struct.buffer_text** %text118, align 8
  %gap_size119 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %142, i32 0, i32 5
  %143 = load i64, i64* %gap_size119, align 8
  %sub120 = sub nsw i64 %143, %140
  store i64 %sub120, i64* %gap_size119, align 8
  %144 = load i64, i64* %inschars, align 8
  %145 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text121 = getelementptr inbounds %struct.buffer, %struct.buffer* %145, i32 0, i32 73
  %146 = load %struct.buffer_text*, %struct.buffer_text** %text121, align 8
  %gpt122 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %146, i32 0, i32 1
  %147 = load i64, i64* %gpt122, align 8
  %add123 = add nsw i64 %147, %144
  store i64 %add123, i64* %gpt122, align 8
  %148 = load i64, i64* %inschars, align 8
  %149 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv124 = getelementptr inbounds %struct.buffer, %struct.buffer* %149, i32 0, i32 79
  %150 = load i64, i64* %zv124, align 8
  %add125 = add nsw i64 %150, %148
  store i64 %add125, i64* %zv124, align 8
  %151 = load i64, i64* %inschars, align 8
  %152 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text126 = getelementptr inbounds %struct.buffer, %struct.buffer* %152, i32 0, i32 73
  %153 = load %struct.buffer_text*, %struct.buffer_text** %text126, align 8
  %z127 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %153, i32 0, i32 2
  %154 = load i64, i64* %z127, align 8
  %add128 = add nsw i64 %154, %151
  store i64 %add128, i64* %z127, align 8
  %155 = load i64, i64* %outgoing_insbytes, align 8
  %156 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text129 = getelementptr inbounds %struct.buffer, %struct.buffer* %156, i32 0, i32 73
  %157 = load %struct.buffer_text*, %struct.buffer_text** %text129, align 8
  %gpt_byte130 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %157, i32 0, i32 3
  %158 = load i64, i64* %gpt_byte130, align 8
  %add131 = add nsw i64 %158, %155
  store i64 %add131, i64* %gpt_byte130, align 8
  %159 = load i64, i64* %outgoing_insbytes, align 8
  %160 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte132 = getelementptr inbounds %struct.buffer, %struct.buffer* %160, i32 0, i32 80
  %161 = load i64, i64* %zv_byte132, align 8
  %add133 = add nsw i64 %161, %159
  store i64 %add133, i64* %zv_byte132, align 8
  %162 = load i64, i64* %outgoing_insbytes, align 8
  %163 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text134 = getelementptr inbounds %struct.buffer, %struct.buffer* %163, i32 0, i32 73
  %164 = load %struct.buffer_text*, %struct.buffer_text** %text134, align 8
  %z_byte135 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %164, i32 0, i32 4
  %165 = load i64, i64* %z_byte135, align 8
  %add136 = add nsw i64 %165, %162
  store i64 %add136, i64* %z_byte135, align 8
  %166 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text137 = getelementptr inbounds %struct.buffer, %struct.buffer* %166, i32 0, i32 73
  %167 = load %struct.buffer_text*, %struct.buffer_text** %text137, align 8
  %gap_size138 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %167, i32 0, i32 5
  %168 = load i64, i64* %gap_size138, align 8
  %cmp139 = icmp sgt i64 %168, 0
  br i1 %cmp139, label %if.then.140, label %if.end.147

if.then.140:                                      ; preds = %if.end.117
  %169 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text141 = getelementptr inbounds %struct.buffer, %struct.buffer* %169, i32 0, i32 73
  %170 = load %struct.buffer_text*, %struct.buffer_text** %text141, align 8
  %beg142 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %170, i32 0, i32 0
  %171 = load i8*, i8** %beg142, align 8
  %172 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text143 = getelementptr inbounds %struct.buffer, %struct.buffer* %172, i32 0, i32 73
  %173 = load %struct.buffer_text*, %struct.buffer_text** %text143, align 8
  %gpt_byte144 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %173, i32 0, i32 3
  %174 = load i64, i64* %gpt_byte144, align 8
  %add.ptr145 = getelementptr inbounds i8, i8* %171, i64 %174
  %add.ptr146 = getelementptr inbounds i8, i8* %add.ptr145, i64 -1
  store i8 0, i8* %add.ptr146, align 1
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.140, %if.end.117
  %175 = load i8, i8* %markers.addr, align 1
  %tobool148 = trunc i8 %175 to i1
  br i1 %tobool148, label %if.then.149, label %if.end.150

if.then.149:                                      ; preds = %if.end.147
  %176 = load i64, i64* %from.addr, align 8
  %177 = load i64, i64* %from_byte, align 8
  %178 = load i64, i64* %nchars_del, align 8
  %179 = load i64, i64* %nbytes_del, align 8
  %180 = load i64, i64* %inschars, align 8
  %181 = load i64, i64* %outgoing_insbytes, align 8
  call void @adjust_markers_for_replace(i64 %176, i64 %177, i64 %178, i64 %179, i64 %180, i64 %181)
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.149, %if.end.147
  %182 = load i64, i64* %from.addr, align 8
  %183 = load i64, i64* %nchars_del, align 8
  call void @adjust_overlays_for_delete(i64 %182, i64 %183)
  %184 = load i64, i64* %from.addr, align 8
  %185 = load i64, i64* %inschars, align 8
  call void @adjust_overlays_for_insert(i64 %184, i64 %185)
  %186 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %187 = load i64, i64* %from.addr, align 8
  %188 = load i64, i64* %inschars, align 8
  %189 = load i64, i64* %nchars_del, align 8
  %sub151 = sub nsw i64 %188, %189
  call void @offset_intervals(%struct.buffer* %186, i64 %187, i64 %sub151)
  %190 = load i64, i64* %new.addr, align 8
  %call152 = call %struct.interval* @string_intervals(i64 %190)
  store %struct.interval* %call152, %struct.interval** %intervals, align 8
  %191 = load %struct.interval*, %struct.interval** %intervals, align 8
  %192 = load i64, i64* %from.addr, align 8
  %193 = load i64, i64* %inschars, align 8
  %194 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %195 = load i8, i8* %inherit.addr, align 1
  %tobool153 = trunc i8 %195 to i1
  call void @graft_intervals_into_buffer(%struct.interval* %191, i64 %192, i64 %193, %struct.buffer* %194, i1 zeroext %tobool153)
  %196 = load i64, i64* %from.addr, align 8
  %197 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %197, i32 0, i32 75
  %198 = load i64, i64* %pt, align 8
  %add154 = add nsw i64 %198, 0
  %cmp155 = icmp slt i64 %196, %add154
  br i1 %cmp155, label %if.then.156, label %if.end.174

if.then.156:                                      ; preds = %if.end.150
  %199 = load i64, i64* %from.addr, align 8
  %200 = load i64, i64* %inschars, align 8
  %add157 = add nsw i64 %199, %200
  %201 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt158 = getelementptr inbounds %struct.buffer, %struct.buffer* %201, i32 0, i32 75
  %202 = load i64, i64* %pt158, align 8
  %add159 = add nsw i64 %202, 0
  %203 = load i64, i64* %to.addr, align 8
  %cmp160 = icmp slt i64 %add159, %203
  br i1 %cmp160, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.156
  %204 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt161 = getelementptr inbounds %struct.buffer, %struct.buffer* %204, i32 0, i32 75
  %205 = load i64, i64* %pt161, align 8
  %add162 = add nsw i64 %205, 0
  br label %cond.end

cond.false:                                       ; preds = %if.then.156
  %206 = load i64, i64* %to.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add162, %cond.true ], [ %206, %cond.false ]
  %sub163 = sub nsw i64 %add157, %cond
  %207 = load i64, i64* %from_byte, align 8
  %208 = load i64, i64* %outgoing_insbytes, align 8
  %add164 = add nsw i64 %207, %208
  %209 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %209, i32 0, i32 76
  %210 = load i64, i64* %pt_byte, align 8
  %add165 = add nsw i64 %210, 0
  %211 = load i64, i64* %to_byte, align 8
  %cmp166 = icmp slt i64 %add165, %211
  br i1 %cmp166, label %cond.true.167, label %cond.false.170

cond.true.167:                                    ; preds = %cond.end
  %212 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte168 = getelementptr inbounds %struct.buffer, %struct.buffer* %212, i32 0, i32 76
  %213 = load i64, i64* %pt_byte168, align 8
  %add169 = add nsw i64 %213, 0
  br label %cond.end.171

cond.false.170:                                   ; preds = %cond.end
  %214 = load i64, i64* %to_byte, align 8
  br label %cond.end.171

cond.end.171:                                     ; preds = %cond.false.170, %cond.true.167
  %cond172 = phi i64 [ %add169, %cond.true.167 ], [ %214, %cond.false.170 ]
  %sub173 = sub nsw i64 %add164, %cond172
  call void @adjust_point(i64 %sub163, i64 %sub173)
  br label %if.end.174

if.end.174:                                       ; preds = %cond.end.171, %if.end.150
  %215 = load i64, i64* %outgoing_insbytes, align 8
  %cmp175 = icmp eq i64 %215, 0
  br i1 %cmp175, label %if.then.176, label %if.end.177

if.then.176:                                      ; preds = %if.end.174
  %216 = load i64, i64* %from.addr, align 8
  call void @evaporate_overlays(i64 %216)
  br label %if.end.177

if.end.177:                                       ; preds = %if.then.176, %if.end.174
  br label %do.body.178

do.body.178:                                      ; preds = %if.end.177
  br label %do.end.179

do.end.179:                                       ; preds = %do.body.178
  %217 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text180 = getelementptr inbounds %struct.buffer, %struct.buffer* %217, i32 0, i32 73
  %218 = load %struct.buffer_text*, %struct.buffer_text** %text180, align 8
  %modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %218, i32 0, i32 6
  %219 = load i64, i64* %modiff, align 8
  %inc = add nsw i64 %219, 1
  store i64 %inc, i64* %modiff, align 8
  %220 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text181 = getelementptr inbounds %struct.buffer, %struct.buffer* %220, i32 0, i32 73
  %221 = load %struct.buffer_text*, %struct.buffer_text** %text181, align 8
  %modiff182 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %221, i32 0, i32 6
  %222 = load i64, i64* %modiff182, align 8
  %223 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text183 = getelementptr inbounds %struct.buffer, %struct.buffer* %223, i32 0, i32 73
  %224 = load %struct.buffer_text*, %struct.buffer_text** %text183, align 8
  %chars_modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %224, i32 0, i32 7
  store i64 %222, i64* %chars_modiff, align 8
  %225 = load i8, i8* %adjust_match_data.addr, align 1
  %tobool184 = trunc i8 %225 to i1
  br i1 %tobool184, label %if.then.185, label %if.end.188

if.then.185:                                      ; preds = %do.end.179
  %226 = load i64, i64* %from.addr, align 8
  %227 = load i64, i64* %to.addr, align 8
  %228 = load i64, i64* %from.addr, align 8
  %229 = load i64, i64* %new.addr, align 8
  %call186 = call i64 @SCHARS(i64 %229)
  %add187 = add nsw i64 %228, %call186
  call void @update_search_regs(i64 %226, i64 %227, i64 %add187)
  br label %if.end.188

if.end.188:                                       ; preds = %if.then.185, %do.end.179
  %230 = load i64, i64* %from.addr, align 8
  %231 = load i64, i64* %nchars_del, align 8
  %232 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text189 = getelementptr inbounds %struct.buffer, %struct.buffer* %232, i32 0, i32 73
  %233 = load %struct.buffer_text*, %struct.buffer_text** %text189, align 8
  %gpt190 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %233, i32 0, i32 1
  %234 = load i64, i64* %gpt190, align 8
  %235 = load i64, i64* %from.addr, align 8
  %sub191 = sub nsw i64 %234, %235
  call void @signal_after_change(i64 %230, i64 %231, i64 %sub191)
  %236 = load i64, i64* %from.addr, align 8
  %237 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text192 = getelementptr inbounds %struct.buffer, %struct.buffer* %237, i32 0, i32 73
  %238 = load %struct.buffer_text*, %struct.buffer_text** %text192, align 8
  %gpt193 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %238, i32 0, i32 1
  %239 = load i64, i64* %gpt193, align 8
  call void @update_compositions(i64 %236, i64 %239, i32 3)
  br label %return

return:                                           ; preds = %if.end.188, %if.then.19
  ret void
}

declare i64 @SBYTES(i64) #4

declare i64 @buf_charpos_to_bytepos(%struct.buffer*, i64) #4

declare zeroext i1 @STRING_MULTIBYTE(i64) #4

declare i64 @count_size_as_multibyte(i8*, i64) #4

declare i8* @SDATA(i64) #4

declare i64 @make_buffer_string_both(i64, i64, i64, i64, i1 zeroext) #4

declare void @record_delete(i64, i64, i1 zeroext) #4

; Function Attrs: nounwind uwtable
define internal void @adjust_markers_for_replace(i64 %from, i64 %from_byte, i64 %old_chars, i64 %old_bytes, i64 %new_chars, i64 %new_bytes) #0 {
entry:
  %from.addr = alloca i64, align 8
  %from_byte.addr = alloca i64, align 8
  %old_chars.addr = alloca i64, align 8
  %old_bytes.addr = alloca i64, align 8
  %new_chars.addr = alloca i64, align 8
  %new_bytes.addr = alloca i64, align 8
  %m = alloca %struct.Lisp_Marker*, align 8
  %prev_to_byte = alloca i64, align 8
  %diff_chars = alloca i64, align 8
  %diff_bytes = alloca i64, align 8
  store i64 %from, i64* %from.addr, align 8
  store i64 %from_byte, i64* %from_byte.addr, align 8
  store i64 %old_chars, i64* %old_chars.addr, align 8
  store i64 %old_bytes, i64* %old_bytes.addr, align 8
  store i64 %new_chars, i64* %new_chars.addr, align 8
  store i64 %new_bytes, i64* %new_bytes.addr, align 8
  %0 = load i64, i64* %from_byte.addr, align 8
  %1 = load i64, i64* %old_bytes.addr, align 8
  %add = add nsw i64 %0, %1
  store i64 %add, i64* %prev_to_byte, align 8
  %2 = load i64, i64* %new_chars.addr, align 8
  %3 = load i64, i64* %old_chars.addr, align 8
  %sub = sub nsw i64 %2, %3
  store i64 %sub, i64* %diff_chars, align 8
  %4 = load i64, i64* %new_bytes.addr, align 8
  %5 = load i64, i64* %old_bytes.addr, align 8
  %sub1 = sub nsw i64 %4, %5
  store i64 %sub1, i64* %diff_bytes, align 8
  %6 = load i64, i64* %from.addr, align 8
  %7 = load i64, i64* %from.addr, align 8
  %8 = load i64, i64* %old_chars.addr, align 8
  %add2 = add nsw i64 %7, %8
  call void @adjust_suspend_auto_hscroll(i64 %6, i64 %add2)
  %9 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %9, i32 0, i32 73
  %10 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %markers = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %10, i32 0, i32 16
  %11 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %markers, align 8
  store %struct.Lisp_Marker* %11, %struct.Lisp_Marker** %m, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %m, align 8
  %tobool = icmp ne %struct.Lisp_Marker* %12, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %m, align 8
  %bytepos = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %13, i32 0, i32 4
  %14 = load i64, i64* %bytepos, align 8
  %15 = load i64, i64* %prev_to_byte, align 8
  %cmp = icmp sge i64 %14, %15
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %16 = load i64, i64* %diff_chars, align 8
  %17 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %m, align 8
  %charpos = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %17, i32 0, i32 3
  %18 = load i64, i64* %charpos, align 8
  %add3 = add nsw i64 %18, %16
  store i64 %add3, i64* %charpos, align 8
  %19 = load i64, i64* %diff_bytes, align 8
  %20 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %m, align 8
  %bytepos4 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %20, i32 0, i32 4
  %21 = load i64, i64* %bytepos4, align 8
  %add5 = add nsw i64 %21, %19
  store i64 %add5, i64* %bytepos4, align 8
  br label %if.end.11

if.else:                                          ; preds = %for.body
  %22 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %m, align 8
  %bytepos6 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %22, i32 0, i32 4
  %23 = load i64, i64* %bytepos6, align 8
  %24 = load i64, i64* %from_byte.addr, align 8
  %cmp7 = icmp sgt i64 %23, %24
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.else
  %25 = load i64, i64* %from.addr, align 8
  %26 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %m, align 8
  %charpos9 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %26, i32 0, i32 3
  store i64 %25, i64* %charpos9, align 8
  %27 = load i64, i64* %from_byte.addr, align 8
  %28 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %m, align 8
  %bytepos10 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %28, i32 0, i32 4
  store i64 %27, i64* %bytepos10, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.else
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %29 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %m, align 8
  %next = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %29, i32 0, i32 2
  %30 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %next, align 8
  store %struct.Lisp_Marker* %30, %struct.Lisp_Marker** %m, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.end
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

declare void @adjust_overlays_for_delete(i64, i64) #4

declare %struct.interval* @string_intervals(i64) #4

declare void @evaporate_overlays(i64) #4

declare void @update_search_regs(i64, i64, i64) #4

; Function Attrs: nounwind uwtable
define void @replace_range_2(i64 %from, i64 %from_byte, i64 %to, i64 %to_byte, i8* %ins, i64 %inschars, i64 %insbytes, i1 zeroext %markers) #0 {
entry:
  %from.addr = alloca i64, align 8
  %from_byte.addr = alloca i64, align 8
  %to.addr = alloca i64, align 8
  %to_byte.addr = alloca i64, align 8
  %ins.addr = alloca i8*, align 8
  %inschars.addr = alloca i64, align 8
  %insbytes.addr = alloca i64, align 8
  %markers.addr = alloca i8, align 1
  %nbytes_del = alloca i64, align 8
  %nchars_del = alloca i64, align 8
  store i64 %from, i64* %from.addr, align 8
  store i64 %from_byte, i64* %from_byte.addr, align 8
  store i64 %to, i64* %to.addr, align 8
  store i64 %to_byte, i64* %to_byte.addr, align 8
  store i8* %ins, i8** %ins.addr, align 8
  store i64 %inschars, i64* %inschars.addr, align 8
  store i64 %insbytes, i64* %insbytes.addr, align 8
  %frombool = zext i1 %markers to i8
  store i8 %frombool, i8* %markers.addr, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i64, i64* %to.addr, align 8
  %1 = load i64, i64* %from.addr, align 8
  %sub = sub nsw i64 %0, %1
  store i64 %sub, i64* %nchars_del, align 8
  %2 = load i64, i64* %to_byte.addr, align 8
  %3 = load i64, i64* %from_byte.addr, align 8
  %sub1 = sub nsw i64 %2, %3
  store i64 %sub1, i64* %nbytes_del, align 8
  %4 = load i64, i64* %nbytes_del, align 8
  %cmp = icmp sle i64 %4, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.end
  %5 = load i64, i64* %insbytes.addr, align 8
  %cmp2 = icmp eq i64 %5, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %return

if.end:                                           ; preds = %land.lhs.true, %do.end
  %6 = load i64, i64* %from.addr, align 8
  %7 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 73
  %8 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %gpt = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %8, i32 0, i32 1
  %9 = load i64, i64* %gpt, align 8
  %cmp3 = icmp sgt i64 %6, %9
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %10 = load i64, i64* %from.addr, align 8
  %11 = load i64, i64* %from_byte.addr, align 8
  call void @gap_right(i64 %10, i64 %11)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %12 = load i64, i64* %to.addr, align 8
  %13 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text6 = getelementptr inbounds %struct.buffer, %struct.buffer* %13, i32 0, i32 73
  %14 = load %struct.buffer_text*, %struct.buffer_text** %text6, align 8
  %gpt7 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %14, i32 0, i32 1
  %15 = load i64, i64* %gpt7, align 8
  %cmp8 = icmp slt i64 %12, %15
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.5
  %16 = load i64, i64* %to.addr, align 8
  %17 = load i64, i64* %to_byte.addr, align 8
  call void @gap_left(i64 %16, i64 %17, i1 zeroext false)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end.5
  %18 = load i64, i64* %nbytes_del, align 8
  %19 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text11 = getelementptr inbounds %struct.buffer, %struct.buffer* %19, i32 0, i32 73
  %20 = load %struct.buffer_text*, %struct.buffer_text** %text11, align 8
  %gap_size = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %20, i32 0, i32 5
  %21 = load i64, i64* %gap_size, align 8
  %add = add nsw i64 %21, %18
  store i64 %add, i64* %gap_size, align 8
  %22 = load i64, i64* %nchars_del, align 8
  %23 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %23, i32 0, i32 79
  %24 = load i64, i64* %zv, align 8
  %sub12 = sub nsw i64 %24, %22
  store i64 %sub12, i64* %zv, align 8
  %25 = load i64, i64* %nchars_del, align 8
  %26 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text13 = getelementptr inbounds %struct.buffer, %struct.buffer* %26, i32 0, i32 73
  %27 = load %struct.buffer_text*, %struct.buffer_text** %text13, align 8
  %z = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %27, i32 0, i32 2
  %28 = load i64, i64* %z, align 8
  %sub14 = sub nsw i64 %28, %25
  store i64 %sub14, i64* %z, align 8
  %29 = load i64, i64* %nbytes_del, align 8
  %30 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %30, i32 0, i32 80
  %31 = load i64, i64* %zv_byte, align 8
  %sub15 = sub nsw i64 %31, %29
  store i64 %sub15, i64* %zv_byte, align 8
  %32 = load i64, i64* %nbytes_del, align 8
  %33 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text16 = getelementptr inbounds %struct.buffer, %struct.buffer* %33, i32 0, i32 73
  %34 = load %struct.buffer_text*, %struct.buffer_text** %text16, align 8
  %z_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %34, i32 0, i32 4
  %35 = load i64, i64* %z_byte, align 8
  %sub17 = sub nsw i64 %35, %32
  store i64 %sub17, i64* %z_byte, align 8
  %36 = load i64, i64* %from.addr, align 8
  %37 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text18 = getelementptr inbounds %struct.buffer, %struct.buffer* %37, i32 0, i32 73
  %38 = load %struct.buffer_text*, %struct.buffer_text** %text18, align 8
  %gpt19 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %38, i32 0, i32 1
  store i64 %36, i64* %gpt19, align 8
  %39 = load i64, i64* %from_byte.addr, align 8
  %40 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text20 = getelementptr inbounds %struct.buffer, %struct.buffer* %40, i32 0, i32 73
  %41 = load %struct.buffer_text*, %struct.buffer_text** %text20, align 8
  %gpt_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %41, i32 0, i32 3
  store i64 %39, i64* %gpt_byte, align 8
  %42 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text21 = getelementptr inbounds %struct.buffer, %struct.buffer* %42, i32 0, i32 73
  %43 = load %struct.buffer_text*, %struct.buffer_text** %text21, align 8
  %gap_size22 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %43, i32 0, i32 5
  %44 = load i64, i64* %gap_size22, align 8
  %cmp23 = icmp sgt i64 %44, 0
  br i1 %cmp23, label %if.then.24, label %if.end.29

if.then.24:                                       ; preds = %if.end.10
  %45 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text25 = getelementptr inbounds %struct.buffer, %struct.buffer* %45, i32 0, i32 73
  %46 = load %struct.buffer_text*, %struct.buffer_text** %text25, align 8
  %beg = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %46, i32 0, i32 0
  %47 = load i8*, i8** %beg, align 8
  %48 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text26 = getelementptr inbounds %struct.buffer, %struct.buffer* %48, i32 0, i32 73
  %49 = load %struct.buffer_text*, %struct.buffer_text** %text26, align 8
  %gpt_byte27 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %49, i32 0, i32 3
  %50 = load i64, i64* %gpt_byte27, align 8
  %add.ptr = getelementptr inbounds i8, i8* %47, i64 %50
  %add.ptr28 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8 0, i8* %add.ptr28, align 1
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.24, %if.end.10
  %51 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text30 = getelementptr inbounds %struct.buffer, %struct.buffer* %51, i32 0, i32 73
  %52 = load %struct.buffer_text*, %struct.buffer_text** %text30, align 8
  %gpt31 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %52, i32 0, i32 1
  %53 = load i64, i64* %gpt31, align 8
  %sub32 = sub nsw i64 %53, 1
  %54 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text33 = getelementptr inbounds %struct.buffer, %struct.buffer* %54, i32 0, i32 73
  %55 = load %struct.buffer_text*, %struct.buffer_text** %text33, align 8
  %beg_unchanged = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %55, i32 0, i32 11
  %56 = load i64, i64* %beg_unchanged, align 8
  %cmp34 = icmp slt i64 %sub32, %56
  br i1 %cmp34, label %if.then.35, label %if.end.41

if.then.35:                                       ; preds = %if.end.29
  %57 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text36 = getelementptr inbounds %struct.buffer, %struct.buffer* %57, i32 0, i32 73
  %58 = load %struct.buffer_text*, %struct.buffer_text** %text36, align 8
  %gpt37 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %58, i32 0, i32 1
  %59 = load i64, i64* %gpt37, align 8
  %sub38 = sub nsw i64 %59, 1
  %60 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text39 = getelementptr inbounds %struct.buffer, %struct.buffer* %60, i32 0, i32 73
  %61 = load %struct.buffer_text*, %struct.buffer_text** %text39, align 8
  %beg_unchanged40 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %61, i32 0, i32 11
  store i64 %sub38, i64* %beg_unchanged40, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.35, %if.end.29
  %62 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text42 = getelementptr inbounds %struct.buffer, %struct.buffer* %62, i32 0, i32 73
  %63 = load %struct.buffer_text*, %struct.buffer_text** %text42, align 8
  %z43 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %63, i32 0, i32 2
  %64 = load i64, i64* %z43, align 8
  %65 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text44 = getelementptr inbounds %struct.buffer, %struct.buffer* %65, i32 0, i32 73
  %66 = load %struct.buffer_text*, %struct.buffer_text** %text44, align 8
  %gpt45 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %66, i32 0, i32 1
  %67 = load i64, i64* %gpt45, align 8
  %sub46 = sub nsw i64 %64, %67
  %68 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text47 = getelementptr inbounds %struct.buffer, %struct.buffer* %68, i32 0, i32 73
  %69 = load %struct.buffer_text*, %struct.buffer_text** %text47, align 8
  %end_unchanged = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %69, i32 0, i32 12
  %70 = load i64, i64* %end_unchanged, align 8
  %cmp48 = icmp slt i64 %sub46, %70
  br i1 %cmp48, label %if.then.49, label %if.end.57

if.then.49:                                       ; preds = %if.end.41
  %71 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text50 = getelementptr inbounds %struct.buffer, %struct.buffer* %71, i32 0, i32 73
  %72 = load %struct.buffer_text*, %struct.buffer_text** %text50, align 8
  %z51 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %72, i32 0, i32 2
  %73 = load i64, i64* %z51, align 8
  %74 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text52 = getelementptr inbounds %struct.buffer, %struct.buffer* %74, i32 0, i32 73
  %75 = load %struct.buffer_text*, %struct.buffer_text** %text52, align 8
  %gpt53 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %75, i32 0, i32 1
  %76 = load i64, i64* %gpt53, align 8
  %sub54 = sub nsw i64 %73, %76
  %77 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text55 = getelementptr inbounds %struct.buffer, %struct.buffer* %77, i32 0, i32 73
  %78 = load %struct.buffer_text*, %struct.buffer_text** %text55, align 8
  %end_unchanged56 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %78, i32 0, i32 12
  store i64 %sub54, i64* %end_unchanged56, align 8
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.49, %if.end.41
  %79 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text58 = getelementptr inbounds %struct.buffer, %struct.buffer* %79, i32 0, i32 73
  %80 = load %struct.buffer_text*, %struct.buffer_text** %text58, align 8
  %gap_size59 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %80, i32 0, i32 5
  %81 = load i64, i64* %gap_size59, align 8
  %82 = load i64, i64* %insbytes.addr, align 8
  %cmp60 = icmp slt i64 %81, %82
  br i1 %cmp60, label %if.then.61, label %if.end.65

if.then.61:                                       ; preds = %if.end.57
  %83 = load i64, i64* %insbytes.addr, align 8
  %84 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text62 = getelementptr inbounds %struct.buffer, %struct.buffer* %84, i32 0, i32 73
  %85 = load %struct.buffer_text*, %struct.buffer_text** %text62, align 8
  %gap_size63 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %85, i32 0, i32 5
  %86 = load i64, i64* %gap_size63, align 8
  %sub64 = sub nsw i64 %83, %86
  call void @make_gap(i64 %sub64)
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.61, %if.end.57
  %87 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text66 = getelementptr inbounds %struct.buffer, %struct.buffer* %87, i32 0, i32 73
  %88 = load %struct.buffer_text*, %struct.buffer_text** %text66, align 8
  %beg67 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %88, i32 0, i32 0
  %89 = load i8*, i8** %beg67, align 8
  %90 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text68 = getelementptr inbounds %struct.buffer, %struct.buffer* %90, i32 0, i32 73
  %91 = load %struct.buffer_text*, %struct.buffer_text** %text68, align 8
  %gpt_byte69 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %91, i32 0, i32 3
  %92 = load i64, i64* %gpt_byte69, align 8
  %add.ptr70 = getelementptr inbounds i8, i8* %89, i64 %92
  %add.ptr71 = getelementptr inbounds i8, i8* %add.ptr70, i64 -1
  %93 = load i8*, i8** %ins.addr, align 8
  %94 = load i64, i64* %insbytes.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr71, i8* %93, i64 %94, i32 1, i1 false)
  %95 = load i64, i64* %insbytes.addr, align 8
  %96 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text72 = getelementptr inbounds %struct.buffer, %struct.buffer* %96, i32 0, i32 73
  %97 = load %struct.buffer_text*, %struct.buffer_text** %text72, align 8
  %gap_size73 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %97, i32 0, i32 5
  %98 = load i64, i64* %gap_size73, align 8
  %sub74 = sub nsw i64 %98, %95
  store i64 %sub74, i64* %gap_size73, align 8
  %99 = load i64, i64* %inschars.addr, align 8
  %100 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text75 = getelementptr inbounds %struct.buffer, %struct.buffer* %100, i32 0, i32 73
  %101 = load %struct.buffer_text*, %struct.buffer_text** %text75, align 8
  %gpt76 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %101, i32 0, i32 1
  %102 = load i64, i64* %gpt76, align 8
  %add77 = add nsw i64 %102, %99
  store i64 %add77, i64* %gpt76, align 8
  %103 = load i64, i64* %inschars.addr, align 8
  %104 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv78 = getelementptr inbounds %struct.buffer, %struct.buffer* %104, i32 0, i32 79
  %105 = load i64, i64* %zv78, align 8
  %add79 = add nsw i64 %105, %103
  store i64 %add79, i64* %zv78, align 8
  %106 = load i64, i64* %inschars.addr, align 8
  %107 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text80 = getelementptr inbounds %struct.buffer, %struct.buffer* %107, i32 0, i32 73
  %108 = load %struct.buffer_text*, %struct.buffer_text** %text80, align 8
  %z81 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %108, i32 0, i32 2
  %109 = load i64, i64* %z81, align 8
  %add82 = add nsw i64 %109, %106
  store i64 %add82, i64* %z81, align 8
  %110 = load i64, i64* %insbytes.addr, align 8
  %111 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text83 = getelementptr inbounds %struct.buffer, %struct.buffer* %111, i32 0, i32 73
  %112 = load %struct.buffer_text*, %struct.buffer_text** %text83, align 8
  %gpt_byte84 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %112, i32 0, i32 3
  %113 = load i64, i64* %gpt_byte84, align 8
  %add85 = add nsw i64 %113, %110
  store i64 %add85, i64* %gpt_byte84, align 8
  %114 = load i64, i64* %insbytes.addr, align 8
  %115 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte86 = getelementptr inbounds %struct.buffer, %struct.buffer* %115, i32 0, i32 80
  %116 = load i64, i64* %zv_byte86, align 8
  %add87 = add nsw i64 %116, %114
  store i64 %add87, i64* %zv_byte86, align 8
  %117 = load i64, i64* %insbytes.addr, align 8
  %118 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text88 = getelementptr inbounds %struct.buffer, %struct.buffer* %118, i32 0, i32 73
  %119 = load %struct.buffer_text*, %struct.buffer_text** %text88, align 8
  %z_byte89 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %119, i32 0, i32 4
  %120 = load i64, i64* %z_byte89, align 8
  %add90 = add nsw i64 %120, %117
  store i64 %add90, i64* %z_byte89, align 8
  %121 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text91 = getelementptr inbounds %struct.buffer, %struct.buffer* %121, i32 0, i32 73
  %122 = load %struct.buffer_text*, %struct.buffer_text** %text91, align 8
  %gap_size92 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %122, i32 0, i32 5
  %123 = load i64, i64* %gap_size92, align 8
  %cmp93 = icmp sgt i64 %123, 0
  br i1 %cmp93, label %if.then.94, label %if.end.101

if.then.94:                                       ; preds = %if.end.65
  %124 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text95 = getelementptr inbounds %struct.buffer, %struct.buffer* %124, i32 0, i32 73
  %125 = load %struct.buffer_text*, %struct.buffer_text** %text95, align 8
  %beg96 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %125, i32 0, i32 0
  %126 = load i8*, i8** %beg96, align 8
  %127 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text97 = getelementptr inbounds %struct.buffer, %struct.buffer* %127, i32 0, i32 73
  %128 = load %struct.buffer_text*, %struct.buffer_text** %text97, align 8
  %gpt_byte98 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %128, i32 0, i32 3
  %129 = load i64, i64* %gpt_byte98, align 8
  %add.ptr99 = getelementptr inbounds i8, i8* %126, i64 %129
  %add.ptr100 = getelementptr inbounds i8, i8* %add.ptr99, i64 -1
  store i8 0, i8* %add.ptr100, align 1
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.94, %if.end.65
  %130 = load i8, i8* %markers.addr, align 1
  %tobool = trunc i8 %130 to i1
  br i1 %tobool, label %land.lhs.true.102, label %if.end.109

land.lhs.true.102:                                ; preds = %if.end.101
  %131 = load i64, i64* %nchars_del, align 8
  %cmp103 = icmp eq i64 %131, 1
  br i1 %cmp103, label %land.lhs.true.104, label %if.then.108

land.lhs.true.104:                                ; preds = %land.lhs.true.102
  %132 = load i64, i64* %inschars.addr, align 8
  %cmp105 = icmp eq i64 %132, 1
  br i1 %cmp105, label %land.lhs.true.106, label %if.then.108

land.lhs.true.106:                                ; preds = %land.lhs.true.104
  %133 = load i64, i64* %nbytes_del, align 8
  %134 = load i64, i64* %insbytes.addr, align 8
  %cmp107 = icmp eq i64 %133, %134
  br i1 %cmp107, label %if.end.109, label %if.then.108

if.then.108:                                      ; preds = %land.lhs.true.106, %land.lhs.true.104, %land.lhs.true.102
  %135 = load i64, i64* %from.addr, align 8
  %136 = load i64, i64* %from_byte.addr, align 8
  %137 = load i64, i64* %nchars_del, align 8
  %138 = load i64, i64* %nbytes_del, align 8
  %139 = load i64, i64* %inschars.addr, align 8
  %140 = load i64, i64* %insbytes.addr, align 8
  call void @adjust_markers_for_replace(i64 %135, i64 %136, i64 %137, i64 %138, i64 %139, i64 %140)
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.108, %land.lhs.true.106, %if.end.101
  %141 = load i64, i64* %nchars_del, align 8
  %142 = load i64, i64* %inschars.addr, align 8
  %cmp110 = icmp ne i64 %141, %142
  br i1 %cmp110, label %if.then.111, label %if.end.113

if.then.111:                                      ; preds = %if.end.109
  %143 = load i64, i64* %from.addr, align 8
  %144 = load i64, i64* %inschars.addr, align 8
  call void @adjust_overlays_for_insert(i64 %143, i64 %144)
  %145 = load i64, i64* %from.addr, align 8
  %146 = load i64, i64* %inschars.addr, align 8
  %add112 = add nsw i64 %145, %146
  %147 = load i64, i64* %nchars_del, align 8
  call void @adjust_overlays_for_delete(i64 %add112, i64 %147)
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.111, %if.end.109
  %148 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %149 = load i64, i64* %from.addr, align 8
  %150 = load i64, i64* %inschars.addr, align 8
  %151 = load i64, i64* %nchars_del, align 8
  %sub114 = sub nsw i64 %150, %151
  call void @offset_intervals(%struct.buffer* %148, i64 %149, i64 %sub114)
  %152 = load i64, i64* %from.addr, align 8
  %153 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %153, i32 0, i32 75
  %154 = load i64, i64* %pt, align 8
  %add115 = add nsw i64 %154, 0
  %cmp116 = icmp slt i64 %152, %add115
  br i1 %cmp116, label %land.lhs.true.117, label %if.end.133

land.lhs.true.117:                                ; preds = %if.end.113
  %155 = load i64, i64* %nchars_del, align 8
  %156 = load i64, i64* %inschars.addr, align 8
  %cmp118 = icmp ne i64 %155, %156
  br i1 %cmp118, label %if.then.120, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.117
  %157 = load i64, i64* %nbytes_del, align 8
  %158 = load i64, i64* %insbytes.addr, align 8
  %cmp119 = icmp ne i64 %157, %158
  br i1 %cmp119, label %if.then.120, label %if.end.133

if.then.120:                                      ; preds = %lor.lhs.false, %land.lhs.true.117
  %159 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt121 = getelementptr inbounds %struct.buffer, %struct.buffer* %159, i32 0, i32 75
  %160 = load i64, i64* %pt121, align 8
  %add122 = add nsw i64 %160, 0
  %161 = load i64, i64* %to.addr, align 8
  %cmp123 = icmp slt i64 %add122, %161
  br i1 %cmp123, label %if.then.124, label %if.else

if.then.124:                                      ; preds = %if.then.120
  %162 = load i64, i64* %from.addr, align 8
  %163 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt125 = getelementptr inbounds %struct.buffer, %struct.buffer* %163, i32 0, i32 75
  %164 = load i64, i64* %pt125, align 8
  %add126 = add nsw i64 %164, 0
  %sub127 = sub nsw i64 %162, %add126
  %165 = load i64, i64* %from_byte.addr, align 8
  %166 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %166, i32 0, i32 76
  %167 = load i64, i64* %pt_byte, align 8
  %add128 = add nsw i64 %167, 0
  %sub129 = sub nsw i64 %165, %add128
  call void @adjust_point(i64 %sub127, i64 %sub129)
  br label %if.end.132

if.else:                                          ; preds = %if.then.120
  %168 = load i64, i64* %inschars.addr, align 8
  %169 = load i64, i64* %nchars_del, align 8
  %sub130 = sub nsw i64 %168, %169
  %170 = load i64, i64* %insbytes.addr, align 8
  %171 = load i64, i64* %nbytes_del, align 8
  %sub131 = sub nsw i64 %170, %171
  call void @adjust_point(i64 %sub130, i64 %sub131)
  br label %if.end.132

if.end.132:                                       ; preds = %if.else, %if.then.124
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %lor.lhs.false, %if.end.113
  %172 = load i64, i64* %insbytes.addr, align 8
  %cmp134 = icmp eq i64 %172, 0
  br i1 %cmp134, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %if.end.133
  %173 = load i64, i64* %from.addr, align 8
  call void @evaporate_overlays(i64 %173)
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.135, %if.end.133
  br label %do.body.137

do.body.137:                                      ; preds = %if.end.136
  br label %do.end.138

do.end.138:                                       ; preds = %do.body.137
  %174 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text139 = getelementptr inbounds %struct.buffer, %struct.buffer* %174, i32 0, i32 73
  %175 = load %struct.buffer_text*, %struct.buffer_text** %text139, align 8
  %modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %175, i32 0, i32 6
  %176 = load i64, i64* %modiff, align 8
  %inc = add nsw i64 %176, 1
  store i64 %inc, i64* %modiff, align 8
  %177 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text140 = getelementptr inbounds %struct.buffer, %struct.buffer* %177, i32 0, i32 73
  %178 = load %struct.buffer_text*, %struct.buffer_text** %text140, align 8
  %modiff141 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %178, i32 0, i32 6
  %179 = load i64, i64* %modiff141, align 8
  %180 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text142 = getelementptr inbounds %struct.buffer, %struct.buffer* %180, i32 0, i32 73
  %181 = load %struct.buffer_text*, %struct.buffer_text** %text142, align 8
  %chars_modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %181, i32 0, i32 7
  store i64 %179, i64* %chars_modiff, align 8
  br label %return

return:                                           ; preds = %do.end.138, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @del_range(i64 %from, i64 %to) #0 {
entry:
  %from.addr = alloca i64, align 8
  %to.addr = alloca i64, align 8
  store i64 %from, i64* %from.addr, align 8
  store i64 %to, i64* %to.addr, align 8
  %0 = load i64, i64* %from.addr, align 8
  %1 = load i64, i64* %to.addr, align 8
  %call = call i64 @del_range_1(i64 %0, i64 %1, i1 zeroext true, i1 zeroext false)
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @del_range_1(i64 %from, i64 %to, i1 zeroext %prepare, i1 zeroext %ret_string) #0 {
entry:
  %retval = alloca i64, align 8
  %from.addr = alloca i64, align 8
  %to.addr = alloca i64, align 8
  %prepare.addr = alloca i8, align 1
  %ret_string.addr = alloca i8, align 1
  %from_byte = alloca i64, align 8
  %to_byte = alloca i64, align 8
  %deletion = alloca i64, align 8
  %range_length = alloca i64, align 8
  store i64 %from, i64* %from.addr, align 8
  store i64 %to, i64* %to.addr, align 8
  %frombool = zext i1 %prepare to i8
  store i8 %frombool, i8* %prepare.addr, align 1
  %frombool1 = zext i1 %ret_string to i8
  store i8 %frombool1, i8* %ret_string.addr, align 1
  %0 = load i64, i64* %from.addr, align 8
  %1 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 77
  %2 = load i64, i64* %begv, align 8
  %cmp = icmp slt i64 %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv2 = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i32 0, i32 77
  %4 = load i64, i64* %begv2, align 8
  store i64 %4, i64* %from.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, i64* %to.addr, align 8
  %6 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 79
  %7 = load i64, i64* %zv, align 8
  %cmp3 = icmp sgt i64 %5, %7
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %8 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv5 = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 79
  %9 = load i64, i64* %zv5, align 8
  store i64 %9, i64* %to.addr, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %10 = load i64, i64* %to.addr, align 8
  %11 = load i64, i64* %from.addr, align 8
  %cmp7 = icmp sle i64 %10, %11
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %retval
  br label %return

if.end.9:                                         ; preds = %if.end.6
  %12 = load i8, i8* %prepare.addr, align 1
  %tobool = trunc i8 %12 to i1
  br i1 %tobool, label %if.then.10, label %if.end.15

if.then.10:                                       ; preds = %if.end.9
  %13 = load i64, i64* %to.addr, align 8
  %14 = load i64, i64* %from.addr, align 8
  %sub = sub nsw i64 %13, %14
  store i64 %sub, i64* %range_length, align 8
  %15 = load i64, i64* %from.addr, align 8
  %16 = load i64, i64* %to.addr, align 8
  call void @prepare_to_modify_buffer(i64 %15, i64 %16, i64* %from.addr)
  %17 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv11 = getelementptr inbounds %struct.buffer, %struct.buffer* %17, i32 0, i32 79
  %18 = load i64, i64* %zv11, align 8
  %19 = load i64, i64* %from.addr, align 8
  %20 = load i64, i64* %range_length, align 8
  %add = add nsw i64 %19, %20
  %cmp12 = icmp slt i64 %18, %add
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.10
  %21 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv13 = getelementptr inbounds %struct.buffer, %struct.buffer* %21, i32 0, i32 79
  %22 = load i64, i64* %zv13, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.10
  %23 = load i64, i64* %from.addr, align 8
  %24 = load i64, i64* %range_length, align 8
  %add14 = add nsw i64 %23, %24
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %22, %cond.true ], [ %add14, %cond.false ]
  store i64 %cond, i64* %to.addr, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %cond.end, %if.end.9
  %25 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %26 = load i64, i64* %from.addr, align 8
  %call16 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %25, i64 %26)
  store i64 %call16, i64* %from_byte, align 8
  %27 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %28 = load i64, i64* %to.addr, align 8
  %call17 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %27, i64 %28)
  store i64 %call17, i64* %to_byte, align 8
  %29 = load i64, i64* %from.addr, align 8
  %30 = load i64, i64* %from_byte, align 8
  %31 = load i64, i64* %to.addr, align 8
  %32 = load i64, i64* %to_byte, align 8
  %33 = load i8, i8* %ret_string.addr, align 1
  %tobool18 = trunc i8 %33 to i1
  %call19 = call i64 @del_range_2(i64 %29, i64 %30, i64 %31, i64 %32, i1 zeroext %tobool18)
  store i64 %call19, i64* %deletion, align 8
  %34 = load i64, i64* %from.addr, align 8
  %35 = load i64, i64* %to.addr, align 8
  %36 = load i64, i64* %from.addr, align 8
  %sub20 = sub nsw i64 %35, %36
  call void @signal_after_change(i64 %34, i64 %sub20, i64 0)
  %37 = load i64, i64* %from.addr, align 8
  %38 = load i64, i64* %from.addr, align 8
  call void @update_compositions(i64 %37, i64 %38, i32 1)
  %39 = load i64, i64* %deletion, align 8
  store i64 %39, i64* %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.8
  %40 = load i64, i64* %retval
  ret i64 %40
}

; Function Attrs: nounwind uwtable
define i64 @del_range_2(i64 %from, i64 %from_byte, i64 %to, i64 %to_byte, i1 zeroext %ret_string) #0 {
entry:
  %from.addr = alloca i64, align 8
  %from_byte.addr = alloca i64, align 8
  %to.addr = alloca i64, align 8
  %to_byte.addr = alloca i64, align 8
  %ret_string.addr = alloca i8, align 1
  %nbytes_del = alloca i64, align 8
  %nchars_del = alloca i64, align 8
  %deletion = alloca i64, align 8
  store i64 %from, i64* %from.addr, align 8
  store i64 %from_byte, i64* %from_byte.addr, align 8
  store i64 %to, i64* %to.addr, align 8
  store i64 %to_byte, i64* %to_byte.addr, align 8
  %frombool = zext i1 %ret_string to i8
  store i8 %frombool, i8* %ret_string.addr, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i64, i64* %to.addr, align 8
  %1 = load i64, i64* %from.addr, align 8
  %sub = sub nsw i64 %0, %1
  store i64 %sub, i64* %nchars_del, align 8
  %2 = load i64, i64* %to_byte.addr, align 8
  %3 = load i64, i64* %from_byte.addr, align 8
  %sub1 = sub nsw i64 %2, %3
  store i64 %sub1, i64* %nbytes_del, align 8
  %4 = load i64, i64* %from.addr, align 8
  %5 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %5, i32 0, i32 73
  %6 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %gpt = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %6, i32 0, i32 1
  %7 = load i64, i64* %gpt, align 8
  %cmp = icmp sgt i64 %4, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %8 = load i64, i64* %from.addr, align 8
  %9 = load i64, i64* %from_byte.addr, align 8
  call void @gap_right(i64 %8, i64 %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %10 = load i64, i64* %to.addr, align 8
  %11 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text2 = getelementptr inbounds %struct.buffer, %struct.buffer* %11, i32 0, i32 73
  %12 = load %struct.buffer_text*, %struct.buffer_text** %text2, align 8
  %gpt3 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %12, i32 0, i32 1
  %13 = load i64, i64* %gpt3, align 8
  %cmp4 = icmp slt i64 %10, %13
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %14 = load i64, i64* %to.addr, align 8
  %15 = load i64, i64* %to_byte.addr, align 8
  call void @gap_left(i64 %14, i64 %15, i1 zeroext false)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  %16 = load i8, i8* %ret_string.addr, align 1
  %tobool = trunc i8 %16 to i1
  br i1 %tobool, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.6
  %17 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %undo_list_ = getelementptr inbounds %struct.buffer, %struct.buffer* %17, i32 0, i32 98
  %18 = load i64, i64* %undo_list_, align 8
  %call = call i64 @builtin_lisp_symbol(i32 901)
  %cmp7 = icmp eq i64 %18, %call
  br i1 %cmp7, label %if.else, label %if.then.8

if.then.8:                                        ; preds = %lor.lhs.false, %if.end.6
  %19 = load i64, i64* %from.addr, align 8
  %20 = load i64, i64* %from_byte.addr, align 8
  %21 = load i64, i64* %to.addr, align 8
  %22 = load i64, i64* %to_byte.addr, align 8
  %call9 = call i64 @make_buffer_string_both(i64 %19, i64 %20, i64 %21, i64 %22, i1 zeroext true)
  store i64 %call9, i64* %deletion, align 8
  br label %if.end.11

if.else:                                          ; preds = %lor.lhs.false
  %call10 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call10, i64* %deletion, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.8
  %23 = load i64, i64* %from.addr, align 8
  %24 = load i64, i64* %deletion, align 8
  call void @record_delete(i64 %23, i64 %24, i1 zeroext true)
  %25 = load i64, i64* %from.addr, align 8
  %26 = load i64, i64* %from_byte.addr, align 8
  %27 = load i64, i64* %to.addr, align 8
  %28 = load i64, i64* %to_byte.addr, align 8
  call void @adjust_markers_for_delete(i64 %25, i64 %26, i64 %27, i64 %28)
  %29 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text12 = getelementptr inbounds %struct.buffer, %struct.buffer* %29, i32 0, i32 73
  %30 = load %struct.buffer_text*, %struct.buffer_text** %text12, align 8
  %modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %30, i32 0, i32 6
  %31 = load i64, i64* %modiff, align 8
  %inc = add nsw i64 %31, 1
  store i64 %inc, i64* %modiff, align 8
  %32 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text13 = getelementptr inbounds %struct.buffer, %struct.buffer* %32, i32 0, i32 73
  %33 = load %struct.buffer_text*, %struct.buffer_text** %text13, align 8
  %modiff14 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %33, i32 0, i32 6
  %34 = load i64, i64* %modiff14, align 8
  %35 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text15 = getelementptr inbounds %struct.buffer, %struct.buffer* %35, i32 0, i32 73
  %36 = load %struct.buffer_text*, %struct.buffer_text** %text15, align 8
  %chars_modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %36, i32 0, i32 7
  store i64 %34, i64* %chars_modiff, align 8
  %37 = load i64, i64* %from.addr, align 8
  %38 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %38, i32 0, i32 75
  %39 = load i64, i64* %pt, align 8
  %add = add nsw i64 %39, 0
  %cmp16 = icmp slt i64 %37, %add
  br i1 %cmp16, label %if.then.17, label %if.end.33

if.then.17:                                       ; preds = %if.end.11
  %40 = load i64, i64* %from.addr, align 8
  %41 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt18 = getelementptr inbounds %struct.buffer, %struct.buffer* %41, i32 0, i32 75
  %42 = load i64, i64* %pt18, align 8
  %add19 = add nsw i64 %42, 0
  %43 = load i64, i64* %to.addr, align 8
  %cmp20 = icmp slt i64 %add19, %43
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.17
  %44 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt21 = getelementptr inbounds %struct.buffer, %struct.buffer* %44, i32 0, i32 75
  %45 = load i64, i64* %pt21, align 8
  %add22 = add nsw i64 %45, 0
  br label %cond.end

cond.false:                                       ; preds = %if.then.17
  %46 = load i64, i64* %to.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add22, %cond.true ], [ %46, %cond.false ]
  %sub23 = sub nsw i64 %40, %cond
  %47 = load i64, i64* %from_byte.addr, align 8
  %48 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %48, i32 0, i32 76
  %49 = load i64, i64* %pt_byte, align 8
  %add24 = add nsw i64 %49, 0
  %50 = load i64, i64* %to_byte.addr, align 8
  %cmp25 = icmp slt i64 %add24, %50
  br i1 %cmp25, label %cond.true.26, label %cond.false.29

cond.true.26:                                     ; preds = %cond.end
  %51 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte27 = getelementptr inbounds %struct.buffer, %struct.buffer* %51, i32 0, i32 76
  %52 = load i64, i64* %pt_byte27, align 8
  %add28 = add nsw i64 %52, 0
  br label %cond.end.30

cond.false.29:                                    ; preds = %cond.end
  %53 = load i64, i64* %to_byte.addr, align 8
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.29, %cond.true.26
  %cond31 = phi i64 [ %add28, %cond.true.26 ], [ %53, %cond.false.29 ]
  %sub32 = sub nsw i64 %47, %cond31
  call void @adjust_point(i64 %sub23, i64 %sub32)
  br label %if.end.33

if.end.33:                                        ; preds = %cond.end.30, %if.end.11
  %54 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %55 = load i64, i64* %from.addr, align 8
  %56 = load i64, i64* %nchars_del, align 8
  %sub34 = sub nsw i64 0, %56
  call void @offset_intervals(%struct.buffer* %54, i64 %55, i64 %sub34)
  %57 = load i64, i64* %from.addr, align 8
  %58 = load i64, i64* %nchars_del, align 8
  call void @adjust_overlays_for_delete(i64 %57, i64 %58)
  %59 = load i64, i64* %nbytes_del, align 8
  %60 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text35 = getelementptr inbounds %struct.buffer, %struct.buffer* %60, i32 0, i32 73
  %61 = load %struct.buffer_text*, %struct.buffer_text** %text35, align 8
  %gap_size = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %61, i32 0, i32 5
  %62 = load i64, i64* %gap_size, align 8
  %add36 = add nsw i64 %62, %59
  store i64 %add36, i64* %gap_size, align 8
  %63 = load i64, i64* %nbytes_del, align 8
  %64 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %64, i32 0, i32 80
  %65 = load i64, i64* %zv_byte, align 8
  %sub37 = sub nsw i64 %65, %63
  store i64 %sub37, i64* %zv_byte, align 8
  %66 = load i64, i64* %nbytes_del, align 8
  %67 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text38 = getelementptr inbounds %struct.buffer, %struct.buffer* %67, i32 0, i32 73
  %68 = load %struct.buffer_text*, %struct.buffer_text** %text38, align 8
  %z_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %68, i32 0, i32 4
  %69 = load i64, i64* %z_byte, align 8
  %sub39 = sub nsw i64 %69, %66
  store i64 %sub39, i64* %z_byte, align 8
  %70 = load i64, i64* %nchars_del, align 8
  %71 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %71, i32 0, i32 79
  %72 = load i64, i64* %zv, align 8
  %sub40 = sub nsw i64 %72, %70
  store i64 %sub40, i64* %zv, align 8
  %73 = load i64, i64* %nchars_del, align 8
  %74 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text41 = getelementptr inbounds %struct.buffer, %struct.buffer* %74, i32 0, i32 73
  %75 = load %struct.buffer_text*, %struct.buffer_text** %text41, align 8
  %z = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %75, i32 0, i32 2
  %76 = load i64, i64* %z, align 8
  %sub42 = sub nsw i64 %76, %73
  store i64 %sub42, i64* %z, align 8
  %77 = load i64, i64* %from.addr, align 8
  %78 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text43 = getelementptr inbounds %struct.buffer, %struct.buffer* %78, i32 0, i32 73
  %79 = load %struct.buffer_text*, %struct.buffer_text** %text43, align 8
  %gpt44 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %79, i32 0, i32 1
  store i64 %77, i64* %gpt44, align 8
  %80 = load i64, i64* %from_byte.addr, align 8
  %81 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text45 = getelementptr inbounds %struct.buffer, %struct.buffer* %81, i32 0, i32 73
  %82 = load %struct.buffer_text*, %struct.buffer_text** %text45, align 8
  %gpt_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %82, i32 0, i32 3
  store i64 %80, i64* %gpt_byte, align 8
  %83 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text46 = getelementptr inbounds %struct.buffer, %struct.buffer* %83, i32 0, i32 73
  %84 = load %struct.buffer_text*, %struct.buffer_text** %text46, align 8
  %gap_size47 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %84, i32 0, i32 5
  %85 = load i64, i64* %gap_size47, align 8
  %cmp48 = icmp sgt i64 %85, 0
  br i1 %cmp48, label %land.lhs.true, label %if.end.55

land.lhs.true:                                    ; preds = %if.end.33
  %86 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text49 = getelementptr inbounds %struct.buffer, %struct.buffer* %86, i32 0, i32 73
  %87 = load %struct.buffer_text*, %struct.buffer_text** %text49, align 8
  %inhibit_shrinking = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %87, i32 0, i32 17
  %bf.load = load i8, i8* %inhibit_shrinking, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %if.end.55, label %if.then.50

if.then.50:                                       ; preds = %land.lhs.true
  %88 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text51 = getelementptr inbounds %struct.buffer, %struct.buffer* %88, i32 0, i32 73
  %89 = load %struct.buffer_text*, %struct.buffer_text** %text51, align 8
  %beg = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %89, i32 0, i32 0
  %90 = load i8*, i8** %beg, align 8
  %91 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text52 = getelementptr inbounds %struct.buffer, %struct.buffer* %91, i32 0, i32 73
  %92 = load %struct.buffer_text*, %struct.buffer_text** %text52, align 8
  %gpt_byte53 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %92, i32 0, i32 3
  %93 = load i64, i64* %gpt_byte53, align 8
  %add.ptr = getelementptr inbounds i8, i8* %90, i64 %93
  %add.ptr54 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8 0, i8* %add.ptr54, align 1
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.50, %land.lhs.true, %if.end.33
  %94 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text56 = getelementptr inbounds %struct.buffer, %struct.buffer* %94, i32 0, i32 73
  %95 = load %struct.buffer_text*, %struct.buffer_text** %text56, align 8
  %gpt57 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %95, i32 0, i32 1
  %96 = load i64, i64* %gpt57, align 8
  %sub58 = sub nsw i64 %96, 1
  %97 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text59 = getelementptr inbounds %struct.buffer, %struct.buffer* %97, i32 0, i32 73
  %98 = load %struct.buffer_text*, %struct.buffer_text** %text59, align 8
  %beg_unchanged = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %98, i32 0, i32 11
  %99 = load i64, i64* %beg_unchanged, align 8
  %cmp60 = icmp slt i64 %sub58, %99
  br i1 %cmp60, label %if.then.61, label %if.end.67

if.then.61:                                       ; preds = %if.end.55
  %100 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text62 = getelementptr inbounds %struct.buffer, %struct.buffer* %100, i32 0, i32 73
  %101 = load %struct.buffer_text*, %struct.buffer_text** %text62, align 8
  %gpt63 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %101, i32 0, i32 1
  %102 = load i64, i64* %gpt63, align 8
  %sub64 = sub nsw i64 %102, 1
  %103 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text65 = getelementptr inbounds %struct.buffer, %struct.buffer* %103, i32 0, i32 73
  %104 = load %struct.buffer_text*, %struct.buffer_text** %text65, align 8
  %beg_unchanged66 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %104, i32 0, i32 11
  store i64 %sub64, i64* %beg_unchanged66, align 8
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.61, %if.end.55
  %105 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text68 = getelementptr inbounds %struct.buffer, %struct.buffer* %105, i32 0, i32 73
  %106 = load %struct.buffer_text*, %struct.buffer_text** %text68, align 8
  %z69 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %106, i32 0, i32 2
  %107 = load i64, i64* %z69, align 8
  %108 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text70 = getelementptr inbounds %struct.buffer, %struct.buffer* %108, i32 0, i32 73
  %109 = load %struct.buffer_text*, %struct.buffer_text** %text70, align 8
  %gpt71 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %109, i32 0, i32 1
  %110 = load i64, i64* %gpt71, align 8
  %sub72 = sub nsw i64 %107, %110
  %111 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text73 = getelementptr inbounds %struct.buffer, %struct.buffer* %111, i32 0, i32 73
  %112 = load %struct.buffer_text*, %struct.buffer_text** %text73, align 8
  %end_unchanged = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %112, i32 0, i32 12
  %113 = load i64, i64* %end_unchanged, align 8
  %cmp74 = icmp slt i64 %sub72, %113
  br i1 %cmp74, label %if.then.75, label %if.end.83

if.then.75:                                       ; preds = %if.end.67
  %114 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text76 = getelementptr inbounds %struct.buffer, %struct.buffer* %114, i32 0, i32 73
  %115 = load %struct.buffer_text*, %struct.buffer_text** %text76, align 8
  %z77 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %115, i32 0, i32 2
  %116 = load i64, i64* %z77, align 8
  %117 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text78 = getelementptr inbounds %struct.buffer, %struct.buffer* %117, i32 0, i32 73
  %118 = load %struct.buffer_text*, %struct.buffer_text** %text78, align 8
  %gpt79 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %118, i32 0, i32 1
  %119 = load i64, i64* %gpt79, align 8
  %sub80 = sub nsw i64 %116, %119
  %120 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text81 = getelementptr inbounds %struct.buffer, %struct.buffer* %120, i32 0, i32 73
  %121 = load %struct.buffer_text*, %struct.buffer_text** %text81, align 8
  %end_unchanged82 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %121, i32 0, i32 12
  store i64 %sub80, i64* %end_unchanged82, align 8
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.75, %if.end.67
  br label %do.body.84

do.body.84:                                       ; preds = %if.end.83
  br label %do.end.85

do.end.85:                                        ; preds = %do.body.84
  %122 = load i64, i64* %from.addr, align 8
  call void @evaporate_overlays(i64 %122)
  %123 = load i64, i64* %deletion, align 8
  ret i64 %123
}

; Function Attrs: nounwind uwtable
define void @del_range_byte(i64 %from_byte, i64 %to_byte, i1 zeroext %prepare) #0 {
entry:
  %from_byte.addr = alloca i64, align 8
  %to_byte.addr = alloca i64, align 8
  %prepare.addr = alloca i8, align 1
  %from = alloca i64, align 8
  %to = alloca i64, align 8
  %old_from = alloca i64, align 8
  %old_to = alloca i64, align 8
  %range_length = alloca i64, align 8
  store i64 %from_byte, i64* %from_byte.addr, align 8
  store i64 %to_byte, i64* %to_byte.addr, align 8
  %frombool = zext i1 %prepare to i8
  store i8 %frombool, i8* %prepare.addr, align 1
  %0 = load i64, i64* %from_byte.addr, align 8
  %1 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 78
  %2 = load i64, i64* %begv_byte, align 8
  %cmp = icmp slt i64 %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte1 = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i32 0, i32 78
  %4 = load i64, i64* %begv_byte1, align 8
  store i64 %4, i64* %from_byte.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, i64* %to_byte.addr, align 8
  %6 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 80
  %7 = load i64, i64* %zv_byte, align 8
  %cmp2 = icmp sgt i64 %5, %7
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %8 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte4 = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 80
  %9 = load i64, i64* %zv_byte4, align 8
  store i64 %9, i64* %to_byte.addr, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %10 = load i64, i64* %to_byte.addr, align 8
  %11 = load i64, i64* %from_byte.addr, align 8
  %cmp6 = icmp sle i64 %10, %11
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.5
  br label %return

if.end.8:                                         ; preds = %if.end.5
  %12 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %13 = load i64, i64* %from_byte.addr, align 8
  %call = call i64 @buf_bytepos_to_charpos(%struct.buffer* %12, i64 %13)
  store i64 %call, i64* %from, align 8
  %14 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %15 = load i64, i64* %to_byte.addr, align 8
  %call9 = call i64 @buf_bytepos_to_charpos(%struct.buffer* %14, i64 %15)
  store i64 %call9, i64* %to, align 8
  %16 = load i8, i8* %prepare.addr, align 1
  %tobool = trunc i8 %16 to i1
  br i1 %tobool, label %if.then.10, label %if.end.28

if.then.10:                                       ; preds = %if.end.8
  %17 = load i64, i64* %from, align 8
  store i64 %17, i64* %old_from, align 8
  %18 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %18, i32 0, i32 73
  %19 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %z = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %19, i32 0, i32 2
  %20 = load i64, i64* %z, align 8
  %21 = load i64, i64* %to, align 8
  %sub = sub nsw i64 %20, %21
  store i64 %sub, i64* %old_to, align 8
  %22 = load i64, i64* %to, align 8
  %23 = load i64, i64* %from, align 8
  %sub11 = sub nsw i64 %22, %23
  store i64 %sub11, i64* %range_length, align 8
  %24 = load i64, i64* %from, align 8
  %25 = load i64, i64* %to, align 8
  call void @prepare_to_modify_buffer(i64 %24, i64 %25, i64* %from)
  %26 = load i64, i64* %from, align 8
  %27 = load i64, i64* %range_length, align 8
  %add = add nsw i64 %26, %27
  store i64 %add, i64* %to, align 8
  %28 = load i64, i64* %old_from, align 8
  %29 = load i64, i64* %from, align 8
  %cmp12 = icmp ne i64 %28, %29
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.then.10
  %30 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %31 = load i64, i64* %from, align 8
  %call14 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %30, i64 %31)
  store i64 %call14, i64* %from_byte.addr, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.then.10
  %32 = load i64, i64* %to, align 8
  %33 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %33, i32 0, i32 79
  %34 = load i64, i64* %zv, align 8
  %cmp16 = icmp sgt i64 %32, %34
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.end.15
  %35 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv18 = getelementptr inbounds %struct.buffer, %struct.buffer* %35, i32 0, i32 79
  %36 = load i64, i64* %zv18, align 8
  store i64 %36, i64* %to, align 8
  %37 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte19 = getelementptr inbounds %struct.buffer, %struct.buffer* %37, i32 0, i32 80
  %38 = load i64, i64* %zv_byte19, align 8
  store i64 %38, i64* %to_byte.addr, align 8
  br label %if.end.27

if.else:                                          ; preds = %if.end.15
  %39 = load i64, i64* %old_to, align 8
  %40 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text20 = getelementptr inbounds %struct.buffer, %struct.buffer* %40, i32 0, i32 73
  %41 = load %struct.buffer_text*, %struct.buffer_text** %text20, align 8
  %z21 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %41, i32 0, i32 2
  %42 = load i64, i64* %z21, align 8
  %43 = load i64, i64* %to, align 8
  %sub22 = sub nsw i64 %42, %43
  %cmp23 = icmp eq i64 %39, %sub22
  br i1 %cmp23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.else
  %44 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %45 = load i64, i64* %to, align 8
  %call25 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %44, i64 %45)
  store i64 %call25, i64* %to_byte.addr, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %if.else
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.17
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end.8
  %46 = load i64, i64* %from, align 8
  %47 = load i64, i64* %from_byte.addr, align 8
  %48 = load i64, i64* %to, align 8
  %49 = load i64, i64* %to_byte.addr, align 8
  %call29 = call i64 @del_range_2(i64 %46, i64 %47, i64 %48, i64 %49, i1 zeroext false)
  %50 = load i64, i64* %from, align 8
  %51 = load i64, i64* %to, align 8
  %52 = load i64, i64* %from, align 8
  %sub30 = sub nsw i64 %51, %52
  call void @signal_after_change(i64 %50, i64 %sub30, i64 0)
  %53 = load i64, i64* %from, align 8
  %54 = load i64, i64* %from, align 8
  call void @update_compositions(i64 %53, i64 %54, i32 1)
  br label %return

return:                                           ; preds = %if.end.28, %if.then.7
  ret void
}

declare i64 @buf_bytepos_to_charpos(%struct.buffer*, i64) #4

; Function Attrs: nounwind uwtable
define void @del_range_both(i64 %from, i64 %from_byte, i64 %to, i64 %to_byte, i1 zeroext %prepare) #0 {
entry:
  %from.addr = alloca i64, align 8
  %from_byte.addr = alloca i64, align 8
  %to.addr = alloca i64, align 8
  %to_byte.addr = alloca i64, align 8
  %prepare.addr = alloca i8, align 1
  %old_from = alloca i64, align 8
  %old_to = alloca i64, align 8
  %range_length = alloca i64, align 8
  store i64 %from, i64* %from.addr, align 8
  store i64 %from_byte, i64* %from_byte.addr, align 8
  store i64 %to, i64* %to.addr, align 8
  store i64 %to_byte, i64* %to_byte.addr, align 8
  %frombool = zext i1 %prepare to i8
  store i8 %frombool, i8* %prepare.addr, align 1
  %0 = load i64, i64* %from_byte.addr, align 8
  %1 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 78
  %2 = load i64, i64* %begv_byte, align 8
  %cmp = icmp slt i64 %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte1 = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i32 0, i32 78
  %4 = load i64, i64* %begv_byte1, align 8
  store i64 %4, i64* %from_byte.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, i64* %to_byte.addr, align 8
  %6 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 80
  %7 = load i64, i64* %zv_byte, align 8
  %cmp2 = icmp sgt i64 %5, %7
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %8 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte4 = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 80
  %9 = load i64, i64* %zv_byte4, align 8
  store i64 %9, i64* %to_byte.addr, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %10 = load i64, i64* %to_byte.addr, align 8
  %11 = load i64, i64* %from_byte.addr, align 8
  %cmp6 = icmp sle i64 %10, %11
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.5
  br label %return

if.end.8:                                         ; preds = %if.end.5
  %12 = load i64, i64* %from.addr, align 8
  %13 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %13, i32 0, i32 77
  %14 = load i64, i64* %begv, align 8
  %cmp9 = icmp slt i64 %12, %14
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.8
  %15 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv11 = getelementptr inbounds %struct.buffer, %struct.buffer* %15, i32 0, i32 77
  %16 = load i64, i64* %begv11, align 8
  store i64 %16, i64* %from.addr, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end.8
  %17 = load i64, i64* %to.addr, align 8
  %18 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %18, i32 0, i32 79
  %19 = load i64, i64* %zv, align 8
  %cmp13 = icmp sgt i64 %17, %19
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.12
  %20 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv15 = getelementptr inbounds %struct.buffer, %struct.buffer* %20, i32 0, i32 79
  %21 = load i64, i64* %zv15, align 8
  store i64 %21, i64* %to.addr, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end.12
  %22 = load i8, i8* %prepare.addr, align 1
  %tobool = trunc i8 %22 to i1
  br i1 %tobool, label %if.then.17, label %if.end.35

if.then.17:                                       ; preds = %if.end.16
  %23 = load i64, i64* %from.addr, align 8
  store i64 %23, i64* %old_from, align 8
  %24 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %24, i32 0, i32 73
  %25 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %z = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %25, i32 0, i32 2
  %26 = load i64, i64* %z, align 8
  %27 = load i64, i64* %to.addr, align 8
  %sub = sub nsw i64 %26, %27
  store i64 %sub, i64* %old_to, align 8
  %28 = load i64, i64* %to.addr, align 8
  %29 = load i64, i64* %from.addr, align 8
  %sub18 = sub nsw i64 %28, %29
  store i64 %sub18, i64* %range_length, align 8
  %30 = load i64, i64* %from.addr, align 8
  %31 = load i64, i64* %to.addr, align 8
  call void @prepare_to_modify_buffer(i64 %30, i64 %31, i64* %from.addr)
  %32 = load i64, i64* %from.addr, align 8
  %33 = load i64, i64* %range_length, align 8
  %add = add nsw i64 %32, %33
  store i64 %add, i64* %to.addr, align 8
  %34 = load i64, i64* %old_from, align 8
  %35 = load i64, i64* %from.addr, align 8
  %cmp19 = icmp ne i64 %34, %35
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.then.17
  %36 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %37 = load i64, i64* %from.addr, align 8
  %call = call i64 @buf_charpos_to_bytepos(%struct.buffer* %36, i64 %37)
  store i64 %call, i64* %from_byte.addr, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.then.17
  %38 = load i64, i64* %to.addr, align 8
  %39 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv22 = getelementptr inbounds %struct.buffer, %struct.buffer* %39, i32 0, i32 79
  %40 = load i64, i64* %zv22, align 8
  %cmp23 = icmp sgt i64 %38, %40
  br i1 %cmp23, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %if.end.21
  %41 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv25 = getelementptr inbounds %struct.buffer, %struct.buffer* %41, i32 0, i32 79
  %42 = load i64, i64* %zv25, align 8
  store i64 %42, i64* %to.addr, align 8
  %43 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte26 = getelementptr inbounds %struct.buffer, %struct.buffer* %43, i32 0, i32 80
  %44 = load i64, i64* %zv_byte26, align 8
  store i64 %44, i64* %to_byte.addr, align 8
  br label %if.end.34

if.else:                                          ; preds = %if.end.21
  %45 = load i64, i64* %old_to, align 8
  %46 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text27 = getelementptr inbounds %struct.buffer, %struct.buffer* %46, i32 0, i32 73
  %47 = load %struct.buffer_text*, %struct.buffer_text** %text27, align 8
  %z28 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %47, i32 0, i32 2
  %48 = load i64, i64* %z28, align 8
  %49 = load i64, i64* %to.addr, align 8
  %sub29 = sub nsw i64 %48, %49
  %cmp30 = icmp eq i64 %45, %sub29
  br i1 %cmp30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.else
  %50 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %51 = load i64, i64* %to.addr, align 8
  %call32 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %50, i64 %51)
  store i64 %call32, i64* %to_byte.addr, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %if.else
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then.24
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.end.16
  %52 = load i64, i64* %from.addr, align 8
  %53 = load i64, i64* %from_byte.addr, align 8
  %54 = load i64, i64* %to.addr, align 8
  %55 = load i64, i64* %to_byte.addr, align 8
  %call36 = call i64 @del_range_2(i64 %52, i64 %53, i64 %54, i64 %55, i1 zeroext false)
  %56 = load i64, i64* %from.addr, align 8
  %57 = load i64, i64* %to.addr, align 8
  %58 = load i64, i64* %from.addr, align 8
  %sub37 = sub nsw i64 %57, %58
  call void @signal_after_change(i64 %56, i64 %sub37, i64 0)
  %59 = load i64, i64* %from.addr, align 8
  %60 = load i64, i64* %from.addr, align 8
  call void @update_compositions(i64 %59, i64 %60, i32 1)
  br label %return

return:                                           ; preds = %if.end.35, %if.then.7
  ret void
}

; Function Attrs: nounwind uwtable
define void @modify_text(i64 %start, i64 %end) #0 {
entry:
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  %0 = load i64, i64* %start.addr, align 8
  %1 = load i64, i64* %end.addr, align 8
  call void @prepare_to_modify_buffer(i64 %0, i64 %1, i64* null)
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %2, i32 0, i32 73
  %3 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %unchanged_modified = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %3, i32 0, i32 13
  %4 = load i64, i64* %unchanged_modified, align 8
  %5 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text1 = getelementptr inbounds %struct.buffer, %struct.buffer* %5, i32 0, i32 73
  %6 = load %struct.buffer_text*, %struct.buffer_text** %text1, align 8
  %modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %6, i32 0, i32 6
  %7 = load i64, i64* %modiff, align 8
  %cmp = icmp eq i64 %4, %7
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %8 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text2 = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 73
  %9 = load %struct.buffer_text*, %struct.buffer_text** %text2, align 8
  %overlay_unchanged_modified = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %9, i32 0, i32 14
  %10 = load i64, i64* %overlay_unchanged_modified, align 8
  %11 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text3 = getelementptr inbounds %struct.buffer, %struct.buffer* %11, i32 0, i32 73
  %12 = load %struct.buffer_text*, %struct.buffer_text** %text3, align 8
  %overlay_modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %12, i32 0, i32 9
  %13 = load i64, i64* %overlay_modiff, align 8
  %cmp4 = icmp eq i64 %10, %13
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %14 = load i64, i64* %start.addr, align 8
  %sub = sub nsw i64 %14, 1
  %sub5 = sub nsw i64 %sub, 1
  %15 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text6 = getelementptr inbounds %struct.buffer, %struct.buffer* %15, i32 0, i32 73
  %16 = load %struct.buffer_text*, %struct.buffer_text** %text6, align 8
  %beg_unchanged = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %16, i32 0, i32 11
  store i64 %sub5, i64* %beg_unchanged, align 8
  %17 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text7 = getelementptr inbounds %struct.buffer, %struct.buffer* %17, i32 0, i32 73
  %18 = load %struct.buffer_text*, %struct.buffer_text** %text7, align 8
  %z = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %18, i32 0, i32 2
  %19 = load i64, i64* %z, align 8
  %20 = load i64, i64* %end.addr, align 8
  %sub8 = sub nsw i64 %19, %20
  %21 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text9 = getelementptr inbounds %struct.buffer, %struct.buffer* %21, i32 0, i32 73
  %22 = load %struct.buffer_text*, %struct.buffer_text** %text9, align 8
  %end_unchanged = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %22, i32 0, i32 12
  store i64 %sub8, i64* %end_unchanged, align 8
  br label %if.end.33

if.else:                                          ; preds = %land.lhs.true, %do.body
  %23 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text10 = getelementptr inbounds %struct.buffer, %struct.buffer* %23, i32 0, i32 73
  %24 = load %struct.buffer_text*, %struct.buffer_text** %text10, align 8
  %z11 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %24, i32 0, i32 2
  %25 = load i64, i64* %z11, align 8
  %26 = load i64, i64* %end.addr, align 8
  %sub12 = sub nsw i64 %25, %26
  %27 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text13 = getelementptr inbounds %struct.buffer, %struct.buffer* %27, i32 0, i32 73
  %28 = load %struct.buffer_text*, %struct.buffer_text** %text13, align 8
  %end_unchanged14 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %28, i32 0, i32 12
  %29 = load i64, i64* %end_unchanged14, align 8
  %cmp15 = icmp slt i64 %sub12, %29
  br i1 %cmp15, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %if.else
  %30 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text17 = getelementptr inbounds %struct.buffer, %struct.buffer* %30, i32 0, i32 73
  %31 = load %struct.buffer_text*, %struct.buffer_text** %text17, align 8
  %z18 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %31, i32 0, i32 2
  %32 = load i64, i64* %z18, align 8
  %33 = load i64, i64* %end.addr, align 8
  %sub19 = sub nsw i64 %32, %33
  %34 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text20 = getelementptr inbounds %struct.buffer, %struct.buffer* %34, i32 0, i32 73
  %35 = load %struct.buffer_text*, %struct.buffer_text** %text20, align 8
  %end_unchanged21 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %35, i32 0, i32 12
  store i64 %sub19, i64* %end_unchanged21, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.16, %if.else
  %36 = load i64, i64* %start.addr, align 8
  %sub22 = sub nsw i64 %36, 1
  %sub23 = sub nsw i64 %sub22, 1
  %37 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text24 = getelementptr inbounds %struct.buffer, %struct.buffer* %37, i32 0, i32 73
  %38 = load %struct.buffer_text*, %struct.buffer_text** %text24, align 8
  %beg_unchanged25 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %38, i32 0, i32 11
  %39 = load i64, i64* %beg_unchanged25, align 8
  %cmp26 = icmp slt i64 %sub23, %39
  br i1 %cmp26, label %if.then.27, label %if.end.32

if.then.27:                                       ; preds = %if.end
  %40 = load i64, i64* %start.addr, align 8
  %sub28 = sub nsw i64 %40, 1
  %sub29 = sub nsw i64 %sub28, 1
  %41 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text30 = getelementptr inbounds %struct.buffer, %struct.buffer* %41, i32 0, i32 73
  %42 = load %struct.buffer_text*, %struct.buffer_text** %text30, align 8
  %beg_unchanged31 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %42, i32 0, i32 11
  store i64 %sub29, i64* %beg_unchanged31, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.27, %if.end
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then
  br label %do.end

do.end:                                           ; preds = %if.end.33
  %43 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text34 = getelementptr inbounds %struct.buffer, %struct.buffer* %43, i32 0, i32 73
  %44 = load %struct.buffer_text*, %struct.buffer_text** %text34, align 8
  %modiff35 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %44, i32 0, i32 6
  %45 = load i64, i64* %modiff35, align 8
  %46 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text36 = getelementptr inbounds %struct.buffer, %struct.buffer* %46, i32 0, i32 73
  %47 = load %struct.buffer_text*, %struct.buffer_text** %text36, align 8
  %save_modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %47, i32 0, i32 8
  %48 = load i64, i64* %save_modiff, align 8
  %cmp37 = icmp sle i64 %45, %48
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %do.end
  call void @record_first_change()
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %do.end
  %49 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text40 = getelementptr inbounds %struct.buffer, %struct.buffer* %49, i32 0, i32 73
  %50 = load %struct.buffer_text*, %struct.buffer_text** %text40, align 8
  %modiff41 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %50, i32 0, i32 6
  %51 = load i64, i64* %modiff41, align 8
  %inc = add nsw i64 %51, 1
  store i64 %inc, i64* %modiff41, align 8
  %52 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text42 = getelementptr inbounds %struct.buffer, %struct.buffer* %52, i32 0, i32 73
  %53 = load %struct.buffer_text*, %struct.buffer_text** %text42, align 8
  %modiff43 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %53, i32 0, i32 6
  %54 = load i64, i64* %modiff43, align 8
  %55 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text44 = getelementptr inbounds %struct.buffer, %struct.buffer* %55, i32 0, i32 73
  %56 = load %struct.buffer_text*, %struct.buffer_text** %text44, align 8
  %chars_modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %56, i32 0, i32 7
  store i64 %54, i64* %chars_modiff, align 8
  %57 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  call void @bset_point_before_scroll(%struct.buffer* %57, i64 %call)
  ret void
}

declare void @record_first_change() #4

declare void @bset_point_before_scroll(%struct.buffer*, i64) #4

; Function Attrs: nounwind uwtable
define void @prepare_to_modify_buffer_1(i64 %start, i64 %end, i64* %preserve_ptr) #0 {
entry:
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %preserve_ptr.addr = alloca i64*, align 8
  %base_buffer = alloca %struct.buffer*, align 8
  %temp = alloca i64, align 8
  %preserve_marker = alloca i64, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  store i64* %preserve_ptr, i64** %preserve_ptr.addr, align 8
  %0 = load i64, i64* %start.addr, align 8
  %call = call i64 @make_natnum(i64 %0)
  store i64 %call, i64* %temp, align 8
  %1 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %read_only_ = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 7
  %2 = load i64, i64* %read_only_, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %2, %call1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %temp, align 8
  %call2 = call i64 @Fbarf_if_buffer_read_only(i64 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @run_undoable_change()
  %4 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  call void @bset_redisplay(%struct.buffer* %4)
  %5 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %call3 = call %struct.interval* @buffer_intervals(%struct.buffer* %5)
  %tobool = icmp ne %struct.interval* %call3, null
  br i1 %tobool, label %if.then.4, label %if.end.12

if.then.4:                                        ; preds = %if.end
  %6 = load i64*, i64** %preserve_ptr.addr, align 8
  %tobool5 = icmp ne i64* %6, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then.4
  %7 = load i64*, i64** %preserve_ptr.addr, align 8
  %8 = load i64, i64* %7, align 8
  %shl = shl i64 %8, 2
  %add = add i64 %shl, 2
  %call7 = call i64 @builtin_lisp_symbol(i32 0)
  %call8 = call i64 @Fcopy_marker(i64 %add, i64 %call7)
  store i64 %call8, i64* %preserve_marker, align 8
  %9 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %10 = load i64, i64* %start.addr, align 8
  %11 = load i64, i64* %end.addr, align 8
  call void @verify_interval_modification(%struct.buffer* %9, i64 %10, i64 %11)
  %12 = load i64, i64* %preserve_marker, align 8
  %call9 = call i64 @marker_position(i64 %12)
  %13 = load i64*, i64** %preserve_ptr.addr, align 8
  store i64 %call9, i64* %13, align 8
  %14 = load i64, i64* %preserve_marker, align 8
  %call10 = call %struct.Lisp_Marker* @XMARKER(i64 %14)
  call void @unchain_marker(%struct.Lisp_Marker* %call10)
  br label %if.end.11

if.else:                                          ; preds = %if.then.4
  %15 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %16 = load i64, i64* %start.addr, align 8
  %17 = load i64, i64* %end.addr, align 8
  call void @verify_interval_modification(%struct.buffer* %15, i64 %16, i64 %17)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.6
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.end
  %18 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %base_buffer13 = getelementptr inbounds %struct.buffer, %struct.buffer* %18, i32 0, i32 81
  %19 = load %struct.buffer*, %struct.buffer** %base_buffer13, align 8
  %cmp14 = icmp ne %struct.buffer* %19, null
  br i1 %cmp14, label %if.then.15, label %if.else.17

if.then.15:                                       ; preds = %if.end.12
  %20 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %base_buffer16 = getelementptr inbounds %struct.buffer, %struct.buffer* %20, i32 0, i32 81
  %21 = load %struct.buffer*, %struct.buffer** %base_buffer16, align 8
  store %struct.buffer* %21, %struct.buffer** %base_buffer, align 8
  br label %if.end.18

if.else.17:                                       ; preds = %if.end.12
  %22 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  store %struct.buffer* %22, %struct.buffer** %base_buffer, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.17, %if.then.15
  %23 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 456), align 1
  %tobool19 = trunc i8 %23 to i1
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.18
  br label %return

if.end.21:                                        ; preds = %if.end.18
  %24 = load %struct.buffer*, %struct.buffer** %base_buffer, align 8
  %file_truename_ = getelementptr inbounds %struct.buffer, %struct.buffer* %24, i32 0, i32 49
  %25 = load i64, i64* %file_truename_, align 8
  %call22 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp23 = icmp eq i64 %25, %call22
  br i1 %cmp23, label %if.end.31, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.21
  %26 = load %struct.buffer*, %struct.buffer** %base_buffer, align 8
  %filename_ = getelementptr inbounds %struct.buffer, %struct.buffer* %26, i32 0, i32 2
  %27 = load i64, i64* %filename_, align 8
  %call24 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp25 = icmp eq i64 %27, %call24
  br i1 %cmp25, label %if.end.31, label %land.lhs.true.26

land.lhs.true.26:                                 ; preds = %land.lhs.true
  %28 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %28, i32 0, i32 73
  %29 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %save_modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %29, i32 0, i32 8
  %30 = load i64, i64* %save_modiff, align 8
  %31 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text27 = getelementptr inbounds %struct.buffer, %struct.buffer* %31, i32 0, i32 73
  %32 = load %struct.buffer_text*, %struct.buffer_text** %text27, align 8
  %modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %32, i32 0, i32 6
  %33 = load i64, i64* %modiff, align 8
  %cmp28 = icmp sge i64 %30, %33
  br i1 %cmp28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %land.lhs.true.26
  %34 = load %struct.buffer*, %struct.buffer** %base_buffer, align 8
  %file_truename_30 = getelementptr inbounds %struct.buffer, %struct.buffer* %34, i32 0, i32 49
  %35 = load i64, i64* %file_truename_30, align 8
  call void @lock_file(i64 %35)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %land.lhs.true.26, %land.lhs.true, %if.end.21
  %36 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %mark_active_ = getelementptr inbounds %struct.buffer, %struct.buffer* %36, i32 0, i32 38
  %37 = load i64, i64* %mark_active_, align 8
  %call32 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp33 = icmp eq i64 %37, %call32
  br i1 %cmp33, label %if.end.56, label %land.lhs.true.34

land.lhs.true.34:                                 ; preds = %if.end.31
  %38 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %mark_ = getelementptr inbounds %struct.buffer, %struct.buffer* %38, i32 0, i32 8
  %39 = load i64, i64* %mark_, align 8
  %call35 = call %struct.Lisp_Marker* @XMARKER(i64 %39)
  %buffer = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %call35, i32 0, i32 1
  %40 = load %struct.buffer*, %struct.buffer** %buffer, align 8
  %tobool36 = icmp ne %struct.buffer* %40, null
  br i1 %tobool36, label %land.lhs.true.37, label %if.end.56

land.lhs.true.37:                                 ; preds = %land.lhs.true.34
  %41 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 258), align 8
  %call38 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp39 = icmp eq i64 %41, %call38
  br i1 %cmp39, label %land.lhs.true.40, label %if.end.56

land.lhs.true.40:                                 ; preds = %land.lhs.true.37
  %42 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 263), align 8
  %call41 = call i64 @builtin_lisp_symbol(i32 717)
  %cmp42 = icmp eq i64 %42, %call41
  br i1 %cmp42, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.40
  %43 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 305), align 8
  %call43 = call i64 @CAR_SAFE(i64 %43)
  %call44 = call i64 @builtin_lisp_symbol(i32 717)
  %cmp45 = icmp eq i64 %call43, %call44
  br i1 %cmp45, label %if.then.51, label %if.end.56

cond.false:                                       ; preds = %land.lhs.true.40
  %44 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 263), align 8
  %call46 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp47 = icmp eq i64 %44, %call46
  br i1 %cmp47, label %if.end.56, label %land.lhs.true.48

land.lhs.true.48:                                 ; preds = %cond.false
  %45 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 305), align 8
  %call49 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp50 = icmp eq i64 %45, %call49
  br i1 %cmp50, label %if.end.56, label %if.then.51

if.then.51:                                       ; preds = %land.lhs.true.48, %cond.true
  %call52 = call i64 @builtin_lisp_symbol(i32 801)
  %call53 = call i64 @Fsymbol_value(i64 %call52)
  %call54 = call i64 @builtin_lisp_symbol(i32 0)
  %call55 = call i64 @call1(i64 %call53, i64 %call54)
  store i64 %call55, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 258), align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.51, %land.lhs.true.48, %cond.false, %cond.true, %land.lhs.true.37, %land.lhs.true.34, %if.end.31
  %46 = load i64, i64* %start.addr, align 8
  %47 = load i64, i64* %end.addr, align 8
  %48 = load i64*, i64** %preserve_ptr.addr, align 8
  call void @signal_before_change(i64 %46, i64 %47, i64* %48)
  %call57 = call i64 @builtin_lisp_symbol(i32 319)
  %call58 = call i64 @builtin_lisp_symbol(i32 901)
  %call59 = call i64 @Fset(i64 %call57, i64 %call58)
  br label %return

return:                                           ; preds = %if.end.56, %if.then.20
  ret void
}

declare i64 @make_natnum(i64) #4

declare i64 @Fbarf_if_buffer_read_only(i64) #4

; Function Attrs: nounwind uwtable
define internal void @run_undoable_change() #0 {
entry:
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %undo_list_ = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 98
  %1 = load i64, i64* %undo_list_, align 8
  %call = call i64 @builtin_lisp_symbol(i32 901)
  %cmp = icmp eq i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 965)
  %call2 = call i64 @call0(i64 %call1)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @bset_redisplay(%struct.buffer*) #4

declare i64 @Fcopy_marker(i64, i64) #4

declare void @verify_interval_modification(%struct.buffer*, i64, i64) #4

declare i64 @marker_position(i64) #4

declare void @unchain_marker(%struct.Lisp_Marker*) #4

declare %struct.Lisp_Marker* @XMARKER(i64) #4

declare void @lock_file(i64) #4

declare i64 @CAR_SAFE(i64) #4

declare i64 @call1(i64, i64) #4

declare i64 @Fsymbol_value(i64) #4

; Function Attrs: nounwind uwtable
define internal void @signal_before_change(i64 %start_int, i64 %end_int, i64* %preserve_ptr) #0 {
entry:
  %start_int.addr = alloca i64, align 8
  %end_int.addr = alloca i64, align 8
  %preserve_ptr.addr = alloca i64*, align 8
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %start_marker = alloca i64, align 8
  %end_marker = alloca i64, align 8
  %preserve_marker = alloca i64, align 8
  %count = alloca i64, align 8
  %rvoe_arg = alloca %struct.rvoe_arg, align 8
  %.compoundliteral = alloca [3 x i64], align 8
  store i64 %start_int, i64* %start_int.addr, align 8
  store i64 %end_int, i64* %end_int.addr, align 8
  store i64* %preserve_ptr, i64** %preserve_ptr.addr, align 8
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %count, align 8
  %0 = load i64, i64* %start_int.addr, align 8
  %shl = shl i64 %0, 2
  %add = add i64 %shl, 2
  store i64 %add, i64* %start, align 8
  %1 = load i64, i64* %end_int.addr, align 8
  %shl1 = shl i64 %1, 2
  %add2 = add i64 %shl1, 2
  store i64 %add2, i64* %end, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call3, i64* %preserve_marker, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call4, i64* %start_marker, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call5, i64* %end_marker, align 8
  %call6 = call i64 @builtin_lisp_symbol(i32 544)
  %call7 = call i64 @builtin_lisp_symbol(i32 901)
  call void @specbind(i64 %call6, i64 %call7)
  %2 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %2, i32 0, i32 73
  %3 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %save_modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %3, i32 0, i32 8
  %4 = load i64, i64* %save_modiff, align 8
  %5 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text8 = getelementptr inbounds %struct.buffer, %struct.buffer* %5, i32 0, i32 73
  %6 = load %struct.buffer_text*, %struct.buffer_text** %text8, align 8
  %modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %6, i32 0, i32 6
  %7 = load i64, i64* %modiff, align 8
  %cmp = icmp sge i64 %4, %7
  br i1 %cmp, label %land.lhs.true, label %if.end.32

land.lhs.true:                                    ; preds = %entry
  %8 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 97), align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp10 = icmp eq i64 %8, %call9
  br i1 %cmp10, label %if.end.32, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %9 = load i64*, i64** %preserve_ptr.addr, align 8
  %tobool = icmp ne i64* %9, null
  br i1 %tobool, label %land.lhs.true.11, label %if.end

land.lhs.true.11:                                 ; preds = %if.then
  %10 = load i64, i64* %preserve_marker, align 8
  %call12 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp13 = icmp eq i64 %10, %call12
  br i1 %cmp13, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %land.lhs.true.11
  %11 = load i64*, i64** %preserve_ptr.addr, align 8
  %12 = load i64, i64* %11, align 8
  %shl15 = shl i64 %12, 2
  %add16 = add i64 %shl15, 2
  %call17 = call i64 @builtin_lisp_symbol(i32 0)
  %call18 = call i64 @Fcopy_marker(i64 %add16, i64 %call17)
  store i64 %call18, i64* %preserve_marker, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.14, %land.lhs.true.11, %if.then
  %13 = load i64, i64* %start_marker, align 8
  %call19 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp20 = icmp eq i64 %13, %call19
  br i1 %cmp20, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %if.end
  %14 = load i64, i64* %start, align 8
  %call22 = call i64 @builtin_lisp_symbol(i32 0)
  %call23 = call i64 @Fcopy_marker(i64 %14, i64 %call22)
  store i64 %call23, i64* %start_marker, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.21, %if.end
  %15 = load i64, i64* %end_marker, align 8
  %call25 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp26 = icmp eq i64 %15, %call25
  br i1 %cmp26, label %if.then.27, label %if.end.30

if.then.27:                                       ; preds = %if.end.24
  %16 = load i64, i64* %end, align 8
  %call28 = call i64 @builtin_lisp_symbol(i32 0)
  %call29 = call i64 @Fcopy_marker(i64 %16, i64 %call28)
  store i64 %call29, i64* %end_marker, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.27, %if.end.24
  %call31 = call i64 @builtin_lisp_symbol(i32 432)
  call void @run_hook(i64 %call31)
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.30, %land.lhs.true, %entry
  %17 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 13), align 8
  %call33 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp34 = icmp eq i64 %17, %call33
  br i1 %cmp34, label %if.end.72, label %if.then.35

if.then.35:                                       ; preds = %if.end.32
  %location = getelementptr inbounds %struct.rvoe_arg, %struct.rvoe_arg* %rvoe_arg, i32 0, i32 0
  store i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 13), i64** %location, align 8
  %errorp = getelementptr inbounds %struct.rvoe_arg, %struct.rvoe_arg* %rvoe_arg, i32 0, i32 1
  store i8 1, i8* %errorp, align 1
  %18 = load i64*, i64** %preserve_ptr.addr, align 8
  %tobool36 = icmp ne i64* %18, null
  br i1 %tobool36, label %land.lhs.true.37, label %if.end.45

land.lhs.true.37:                                 ; preds = %if.then.35
  %19 = load i64, i64* %preserve_marker, align 8
  %call38 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp39 = icmp eq i64 %19, %call38
  br i1 %cmp39, label %if.then.40, label %if.end.45

if.then.40:                                       ; preds = %land.lhs.true.37
  %20 = load i64*, i64** %preserve_ptr.addr, align 8
  %21 = load i64, i64* %20, align 8
  %shl41 = shl i64 %21, 2
  %add42 = add i64 %shl41, 2
  %call43 = call i64 @builtin_lisp_symbol(i32 0)
  %call44 = call i64 @Fcopy_marker(i64 %add42, i64 %call43)
  store i64 %call44, i64* %preserve_marker, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.40, %land.lhs.true.37, %if.then.35
  %22 = load i64, i64* %start_marker, align 8
  %call46 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp47 = icmp eq i64 %22, %call46
  br i1 %cmp47, label %if.then.48, label %if.end.51

if.then.48:                                       ; preds = %if.end.45
  %23 = load i64, i64* %start, align 8
  %call49 = call i64 @builtin_lisp_symbol(i32 0)
  %call50 = call i64 @Fcopy_marker(i64 %23, i64 %call49)
  store i64 %call50, i64* %start_marker, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.48, %if.end.45
  %24 = load i64, i64* %end_marker, align 8
  %call52 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp53 = icmp eq i64 %24, %call52
  br i1 %cmp53, label %if.then.54, label %if.end.57

if.then.54:                                       ; preds = %if.end.51
  %25 = load i64, i64* %end, align 8
  %call55 = call i64 @builtin_lisp_symbol(i32 0)
  %call56 = call i64 @Fcopy_marker(i64 %25, i64 %call55)
  store i64 %call56, i64* %end_marker, align 8
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.54, %if.end.51
  %26 = bitcast %struct.rvoe_arg* %rvoe_arg to i8*
  call void @record_unwind_protect_ptr(void (i8*)* @reset_var_on_error, i8* %26)
  %arrayinit.begin = getelementptr inbounds [3 x i64], [3 x i64]* %.compoundliteral, i64 0, i64 0
  %call58 = call i64 @builtin_lisp_symbol(i32 197)
  store i64 %call58, i64* %arrayinit.begin
  %arrayinit.element = getelementptr inbounds i64, i64* %arrayinit.begin, i64 1
  %27 = load i64, i64* %start_marker, align 8
  %call59 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp60 = icmp eq i64 %27, %call59
  br i1 %cmp60, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end.57
  %28 = load i64, i64* %start_marker, align 8
  %call61 = call i64 @Fmarker_position(i64 %28)
  br label %cond.end

cond.false:                                       ; preds = %if.end.57
  %29 = load i64, i64* %start, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call61, %cond.true ], [ %29, %cond.false ]
  store i64 %cond, i64* %arrayinit.element
  %arrayinit.element62 = getelementptr inbounds i64, i64* %arrayinit.element, i64 1
  %30 = load i64, i64* %end_marker, align 8
  %call63 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp64 = icmp eq i64 %30, %call63
  br i1 %cmp64, label %cond.false.67, label %cond.true.65

cond.true.65:                                     ; preds = %cond.end
  %31 = load i64, i64* %end_marker, align 8
  %call66 = call i64 @Fmarker_position(i64 %31)
  br label %cond.end.68

cond.false.67:                                    ; preds = %cond.end
  %32 = load i64, i64* %end, align 8
  br label %cond.end.68

cond.end.68:                                      ; preds = %cond.false.67, %cond.true.65
  %cond69 = phi i64 [ %call66, %cond.true.65 ], [ %32, %cond.false.67 ]
  store i64 %cond69, i64* %arrayinit.element62
  %arraydecay = getelementptr inbounds [3 x i64], [3 x i64]* %.compoundliteral, i32 0, i32 0
  %call70 = call i64 @Frun_hook_with_args(i64 3, i64* %arraydecay)
  %errorp71 = getelementptr inbounds %struct.rvoe_arg, %struct.rvoe_arg* %rvoe_arg, i32 0, i32 1
  store i8 0, i8* %errorp71, align 1
  br label %if.end.72

if.end.72:                                        ; preds = %cond.end.68, %if.end.32
  %call73 = call zeroext i1 @buffer_has_overlays()
  br i1 %call73, label %if.then.74, label %if.end.114

if.then.74:                                       ; preds = %if.end.72
  %33 = load i64*, i64** %preserve_ptr.addr, align 8
  %tobool75 = icmp ne i64* %33, null
  br i1 %tobool75, label %land.lhs.true.76, label %if.end.84

land.lhs.true.76:                                 ; preds = %if.then.74
  %34 = load i64, i64* %preserve_marker, align 8
  %call77 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp78 = icmp eq i64 %34, %call77
  br i1 %cmp78, label %if.then.79, label %if.end.84

if.then.79:                                       ; preds = %land.lhs.true.76
  %35 = load i64*, i64** %preserve_ptr.addr, align 8
  %36 = load i64, i64* %35, align 8
  %shl80 = shl i64 %36, 2
  %add81 = add i64 %shl80, 2
  %call82 = call i64 @builtin_lisp_symbol(i32 0)
  %call83 = call i64 @Fcopy_marker(i64 %add81, i64 %call82)
  store i64 %call83, i64* %preserve_marker, align 8
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.79, %land.lhs.true.76, %if.then.74
  %37 = load i64, i64* %start_marker, align 8
  %call85 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp86 = icmp eq i64 %37, %call85
  br i1 %cmp86, label %cond.false.89, label %cond.true.87

cond.true.87:                                     ; preds = %if.end.84
  %38 = load i64, i64* %start_marker, align 8
  %call88 = call i64 @Fmarker_position(i64 %38)
  br label %cond.end.90

cond.false.89:                                    ; preds = %if.end.84
  %39 = load i64, i64* %start, align 8
  br label %cond.end.90

cond.end.90:                                      ; preds = %cond.false.89, %cond.true.87
  %cond91 = phi i64 [ %call88, %cond.true.87 ], [ %39, %cond.false.89 ]
  %40 = load i64, i64* %end_marker, align 8
  %call92 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp93 = icmp eq i64 %40, %call92
  br i1 %cmp93, label %cond.false.96, label %cond.true.94

cond.true.94:                                     ; preds = %cond.end.90
  %41 = load i64, i64* %end_marker, align 8
  %call95 = call i64 @Fmarker_position(i64 %41)
  br label %cond.end.97

cond.false.96:                                    ; preds = %cond.end.90
  %42 = load i64, i64* %end, align 8
  br label %cond.end.97

cond.end.97:                                      ; preds = %cond.false.96, %cond.true.94
  %cond98 = phi i64 [ %call95, %cond.true.94 ], [ %42, %cond.false.96 ]
  %43 = load i64, i64* %start_marker, align 8
  %call99 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp100 = icmp eq i64 %43, %call99
  br i1 %cmp100, label %cond.false.103, label %cond.true.101

cond.true.101:                                    ; preds = %cond.end.97
  %44 = load i64, i64* %start_marker, align 8
  %call102 = call i64 @Fmarker_position(i64 %44)
  br label %cond.end.104

cond.false.103:                                   ; preds = %cond.end.97
  %45 = load i64, i64* %start, align 8
  br label %cond.end.104

cond.end.104:                                     ; preds = %cond.false.103, %cond.true.101
  %cond105 = phi i64 [ %call102, %cond.true.101 ], [ %45, %cond.false.103 ]
  %46 = load i64, i64* %end_marker, align 8
  %call106 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp107 = icmp eq i64 %46, %call106
  br i1 %cmp107, label %cond.false.110, label %cond.true.108

cond.true.108:                                    ; preds = %cond.end.104
  %47 = load i64, i64* %end_marker, align 8
  %call109 = call i64 @Fmarker_position(i64 %47)
  br label %cond.end.111

cond.false.110:                                   ; preds = %cond.end.104
  %48 = load i64, i64* %end, align 8
  br label %cond.end.111

cond.end.111:                                     ; preds = %cond.false.110, %cond.true.108
  %cond112 = phi i64 [ %call109, %cond.true.108 ], [ %48, %cond.false.110 ]
  %call113 = call i64 @builtin_lisp_symbol(i32 0)
  call void @report_overlay_modification(i64 %cond91, i64 %cond98, i1 zeroext false, i64 %cond105, i64 %cond112, i64 %call113)
  br label %if.end.114

if.end.114:                                       ; preds = %cond.end.111, %if.end.72
  %49 = load i64, i64* %start_marker, align 8
  %call115 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp116 = icmp eq i64 %49, %call115
  br i1 %cmp116, label %if.end.118, label %if.then.117

if.then.117:                                      ; preds = %if.end.114
  %50 = load i64, i64* %start_marker, align 8
  call void @free_marker(i64 %50)
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.117, %if.end.114
  %51 = load i64, i64* %end_marker, align 8
  %call119 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp120 = icmp eq i64 %51, %call119
  br i1 %cmp120, label %if.end.122, label %if.then.121

if.then.121:                                      ; preds = %if.end.118
  %52 = load i64, i64* %end_marker, align 8
  call void @free_marker(i64 %52)
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.121, %if.end.118
  %53 = load i64, i64* %preserve_marker, align 8
  %call123 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp124 = icmp eq i64 %53, %call123
  br i1 %cmp124, label %if.end.128, label %if.then.125

if.then.125:                                      ; preds = %if.end.122
  %54 = load i64, i64* %preserve_marker, align 8
  %call126 = call i64 @marker_position(i64 %54)
  %55 = load i64*, i64** %preserve_ptr.addr, align 8
  store i64 %call126, i64* %55, align 8
  %56 = load i64, i64* %preserve_marker, align 8
  %call127 = call %struct.Lisp_Marker* @XMARKER(i64 %56)
  call void @unchain_marker(%struct.Lisp_Marker* %call127)
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.125, %if.end.122
  %57 = load i64, i64* %count, align 8
  %call129 = call i64 @builtin_lisp_symbol(i32 0)
  %call130 = call i64 @unbind_to(i64 %57, i64 %call129)
  ret void
}

declare i64 @Fset(i64, i64) #4

declare void @set_buffer_internal(%struct.buffer*) #4

declare i64 @find_newline_no_quit(i64, i64, i64, i64*) #4

declare void @invalidate_region_cache(%struct.buffer*, %struct.region_cache*, i64, i64) #4

declare i64 @SPECPDL_INDEX() #4

declare zeroext i1 @buffer_has_overlays() #4

declare %struct.buffer* @XBUFFER(i64) #4

; Function Attrs: nounwind uwtable
define i64 @Fcombine_after_change_execute() #0 {
entry:
  %retval = alloca i64, align 8
  %count = alloca i64, align 8
  %beg = alloca i64, align 8
  %end = alloca i64, align 8
  %change = alloca i64, align 8
  %begpos = alloca i64, align 8
  %endpos = alloca i64, align 8
  %tail = alloca i64, align 8
  %elt = alloca i64, align 8
  %thisbeg = alloca i64, align 8
  %thisend = alloca i64, align 8
  %thischange = alloca i64, align 8
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %count, align 8
  %0 = load i64, i64* @combine_after_change_list, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call2, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* @combine_after_change_buffer, align 8
  %call3 = call zeroext i1 @BUFFERP(i64 %1)
  br i1 %call3, label %lor.lhs.false, label %if.then.7

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i64, i64* @combine_after_change_buffer, align 8
  %call4 = call %struct.buffer* @XBUFFER(i64 %2)
  %name_ = getelementptr inbounds %struct.buffer, %struct.buffer* %call4, i32 0, i32 1
  %3 = load i64, i64* %name_, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp6 = icmp eq i64 %3, %call5
  br i1 %cmp6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %lor.lhs.false, %if.end
  %call8 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call8, i64* @combine_after_change_list, align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call9, i64* %retval
  br label %return

if.end.10:                                        ; preds = %lor.lhs.false
  call void @record_unwind_current_buffer()
  %4 = load i64, i64* @combine_after_change_buffer, align 8
  %call11 = call i64 @Fset_buffer(i64 %4)
  %5 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %5, i32 0, i32 73
  %6 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %z = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %6, i32 0, i32 2
  %7 = load i64, i64* %z, align 8
  %sub = sub nsw i64 %7, 1
  store i64 %sub, i64* %beg, align 8
  %8 = load i64, i64* %beg, align 8
  store i64 %8, i64* %end, align 8
  store i64 0, i64* %change, align 8
  %9 = load i64, i64* @combine_after_change_list, align 8
  store i64 %9, i64* %tail, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %10 = load i64, i64* %tail, align 8
  %and = and i64 %10, 7
  %conv = trunc i64 %and to i32
  %cmp12 = icmp eq i32 %conv, 3
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i64, i64* %tail, align 8
  %sub14 = sub nsw i64 %11, 3
  %12 = inttoptr i64 %sub14 to i8*
  %13 = bitcast i8* %12 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %13, i32 0, i32 0
  %14 = load i64, i64* %car, align 8
  store i64 %14, i64* %elt, align 8
  %15 = load i64, i64* %elt, align 8
  %and15 = and i64 %15, 7
  %conv16 = trunc i64 %and15 to i32
  %cmp17 = icmp eq i32 %conv16, 3
  br i1 %cmp17, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %for.body
  br label %for.inc

if.end.20:                                        ; preds = %for.body
  %16 = load i64, i64* %elt, align 8
  %sub21 = sub nsw i64 %16, 3
  %17 = inttoptr i64 %sub21 to i8*
  %18 = bitcast i8* %17 to %struct.Lisp_Cons*
  %car22 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %18, i32 0, i32 0
  %19 = load i64, i64* %car22, align 8
  %shr = ashr i64 %19, 2
  store i64 %shr, i64* %thisbeg, align 8
  %20 = load i64, i64* %elt, align 8
  %sub23 = sub nsw i64 %20, 3
  %21 = inttoptr i64 %sub23 to i8*
  %22 = bitcast i8* %21 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %22, i32 0, i32 1
  %cdr = bitcast %union.anon.0* %u to i64*
  %23 = load i64, i64* %cdr, align 8
  store i64 %23, i64* %elt, align 8
  %24 = load i64, i64* %elt, align 8
  %and24 = and i64 %24, 7
  %conv25 = trunc i64 %and24 to i32
  %cmp26 = icmp eq i32 %conv25, 3
  br i1 %cmp26, label %if.end.29, label %if.then.28

if.then.28:                                       ; preds = %if.end.20
  br label %for.inc

if.end.29:                                        ; preds = %if.end.20
  %25 = load i64, i64* %elt, align 8
  %sub30 = sub nsw i64 %25, 3
  %26 = inttoptr i64 %sub30 to i8*
  %27 = bitcast i8* %26 to %struct.Lisp_Cons*
  %car31 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %27, i32 0, i32 0
  %28 = load i64, i64* %car31, align 8
  %shr32 = ashr i64 %28, 2
  store i64 %shr32, i64* %thisend, align 8
  %29 = load i64, i64* %elt, align 8
  %sub33 = sub nsw i64 %29, 3
  %30 = inttoptr i64 %sub33 to i8*
  %31 = bitcast i8* %30 to %struct.Lisp_Cons*
  %u34 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %31, i32 0, i32 1
  %cdr35 = bitcast %union.anon.0* %u34 to i64*
  %32 = load i64, i64* %cdr35, align 8
  store i64 %32, i64* %elt, align 8
  %33 = load i64, i64* %elt, align 8
  %and36 = and i64 %33, 7
  %conv37 = trunc i64 %and36 to i32
  %cmp38 = icmp eq i32 %conv37, 3
  br i1 %cmp38, label %if.end.41, label %if.then.40

if.then.40:                                       ; preds = %if.end.29
  br label %for.inc

if.end.41:                                        ; preds = %if.end.29
  %34 = load i64, i64* %elt, align 8
  %sub42 = sub nsw i64 %34, 3
  %35 = inttoptr i64 %sub42 to i8*
  %36 = bitcast i8* %35 to %struct.Lisp_Cons*
  %car43 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %36, i32 0, i32 0
  %37 = load i64, i64* %car43, align 8
  %shr44 = ashr i64 %37, 2
  store i64 %shr44, i64* %thischange, align 8
  %38 = load i64, i64* %thischange, align 8
  %39 = load i64, i64* %change, align 8
  %add = add nsw i64 %39, %38
  store i64 %add, i64* %change, align 8
  %40 = load i64, i64* %thisbeg, align 8
  %41 = load i64, i64* %beg, align 8
  %cmp45 = icmp slt i64 %40, %41
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end.41
  %42 = load i64, i64* %thisbeg, align 8
  store i64 %42, i64* %beg, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %if.end.41
  %43 = load i64, i64* %thisend, align 8
  %44 = load i64, i64* %end, align 8
  %cmp49 = icmp slt i64 %43, %44
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.48
  %45 = load i64, i64* %thisend, align 8
  store i64 %45, i64* %end, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %if.end.48
  br label %for.inc

for.inc:                                          ; preds = %if.end.52, %if.then.40, %if.then.28, %if.then.19
  %46 = load i64, i64* %tail, align 8
  %sub53 = sub nsw i64 %46, 3
  %47 = inttoptr i64 %sub53 to i8*
  %48 = bitcast i8* %47 to %struct.Lisp_Cons*
  %u54 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %48, i32 0, i32 1
  %cdr55 = bitcast %union.anon.0* %u54 to i64*
  %49 = load i64, i64* %cdr55, align 8
  store i64 %49, i64* %tail, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %50 = load i64, i64* %beg, align 8
  %add56 = add nsw i64 1, %50
  store i64 %add56, i64* %begpos, align 8
  %51 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text57 = getelementptr inbounds %struct.buffer, %struct.buffer* %51, i32 0, i32 73
  %52 = load %struct.buffer_text*, %struct.buffer_text** %text57, align 8
  %z58 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %52, i32 0, i32 2
  %53 = load i64, i64* %z58, align 8
  %54 = load i64, i64* %end, align 8
  %sub59 = sub nsw i64 %53, %54
  store i64 %sub59, i64* %endpos, align 8
  %call60 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call60, i64* @combine_after_change_list, align 8
  %55 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 38), align 8
  call void @record_unwind_protect(void (i64)* @Fcombine_after_change_execute_1, i64 %55)
  %56 = load i64, i64* %begpos, align 8
  %57 = load i64, i64* %endpos, align 8
  %58 = load i64, i64* %begpos, align 8
  %sub61 = sub nsw i64 %57, %58
  %59 = load i64, i64* %change, align 8
  %sub62 = sub nsw i64 %sub61, %59
  %60 = load i64, i64* %endpos, align 8
  %61 = load i64, i64* %begpos, align 8
  %sub63 = sub nsw i64 %60, %61
  call void @signal_after_change(i64 %56, i64 %sub62, i64 %sub63)
  %62 = load i64, i64* %begpos, align 8
  %63 = load i64, i64* %endpos, align 8
  call void @update_compositions(i64 %62, i64 %63, i32 7)
  %64 = load i64, i64* %count, align 8
  %call64 = call i64 @builtin_lisp_symbol(i32 0)
  %call65 = call i64 @unbind_to(i64 %64, i64 %call64)
  store i64 %call65, i64* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.7, %if.then
  %65 = load i64, i64* %retval
  ret i64 %65
}

declare i64 @list3i(i64, i64, i64) #4

declare i64 @Fcons(i64, i64) #4

declare i64 @Fcurrent_buffer() #4

declare void @specbind(i64, i64) #4

declare void @record_unwind_protect_ptr(void (i8*)*, i8*) #4

; Function Attrs: nounwind uwtable
define internal void @reset_var_on_error(i8* %ptr) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %p = alloca %struct.rvoe_arg*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  %0 = load i8*, i8** %ptr.addr, align 8
  %1 = bitcast i8* %0 to %struct.rvoe_arg*
  store %struct.rvoe_arg* %1, %struct.rvoe_arg** %p, align 8
  %2 = load %struct.rvoe_arg*, %struct.rvoe_arg** %p, align 8
  %errorp = getelementptr inbounds %struct.rvoe_arg, %struct.rvoe_arg* %2, i32 0, i32 1
  %3 = load i8, i8* %errorp, align 1
  %tobool = trunc i8 %3 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %4 = load %struct.rvoe_arg*, %struct.rvoe_arg** %p, align 8
  %location = getelementptr inbounds %struct.rvoe_arg, %struct.rvoe_arg* %4, i32 0, i32 0
  %5 = load i64*, i64** %location, align 8
  store i64 %call, i64* %5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i64 @Frun_hook_with_args(i64, i64*) #4

declare void @report_overlay_modification(i64, i64, i1 zeroext, i64, i64, i64) #4

declare void @report_interval_modification(i64, i64) #4

declare i64 @unbind_to(i64, i64) #4

declare zeroext i1 @BUFFERP(i64) #4

declare void @record_unwind_current_buffer() #4

declare i64 @Fset_buffer(i64) #4

declare void @record_unwind_protect(void (i64)*, i64) #4

; Function Attrs: nounwind uwtable
define internal void @Fcombine_after_change_execute_1(i64 %val) #0 {
entry:
  %val.addr = alloca i64, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  store i64 %0, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 38), align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @syms_of_insdel() #0 {
entry:
  call void @staticpro(i64* @combine_after_change_list)
  call void @staticpro(i64* @combine_after_change_buffer)
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* @combine_after_change_list, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* @combine_after_change_buffer, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_insdel.o_fwd, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 38))
  br label %do.end

do.end:                                           ; preds = %do.body
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call2, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 38), align 8
  br label %do.body.3

do.body.3:                                        ; preds = %do.end
  call void @defvar_bool(%struct.Lisp_Boolfwd* @syms_of_insdel.b_fwd, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 456))
  br label %do.end.4

do.end.4:                                         ; preds = %do.body.3
  store i8 0, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 456), align 1
  call void @defsubr(%struct.Lisp_Subr* @Scombine_after_change_execute)
  ret void
}

declare void @staticpro(i64*) #4

declare void @defvar_lisp(%struct.Lisp_Objfwd*, i8*, i64*) #4

declare void @defvar_bool(%struct.Lisp_Boolfwd*, i8*, i8*) #4

declare void @defsubr(%struct.Lisp_Subr*) #4

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare void @process_quit_flag() #4

declare void @process_pending_signals() #4

declare zeroext i1 @WINDOWP(i64) #4

declare %struct.window* @XWINDOW(i64) #4

declare void @enlarge_buffer_text(%struct.buffer*, i64) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

declare void @fix_start_end_in_overlays(i64, i64) #4

declare void @fix_overlays_before(%struct.buffer*, i64, i64) #4

declare %struct.interval* @copy_intervals(%struct.interval*, i64, i64) #4

declare zeroext i1 @STRINGP(i64) #4

declare i64 @call0(i64) #4

declare void @run_hook(i64) #4

declare i64 @Fmarker_position(i64) #4

declare void @free_marker(i64) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
