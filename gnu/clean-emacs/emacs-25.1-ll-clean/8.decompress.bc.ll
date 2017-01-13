; ModuleID = './src/decompress.bc'
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
%struct.Lisp_Subr = type { %struct.vectorlike_header, %union.anon, i16, i16, i8*, i8*, i8* }
%union.anon = type { i64 ()* }
%struct.z_stream_s = type { i8*, i32, i64, i8*, i32, i64, i8*, %struct.internal_state*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8*, i32, i64, i64 }
%struct.internal_state = type { i32 }
%struct.decompress_unwind_data = type { i64, i64, i64, %struct.z_stream_s* }

@current_buffer = external global %struct.buffer*, align 8
@.str = private unnamed_addr constant [52 x i8] c"This function can be called only in unibyte buffers\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"1.2.7\00", align 1
@globals = external global %struct.emacs_globals, align 8
@pending_signals = external global i8, align 1
@Szlib_available_p = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon { i64 ()* @Fzlib_available_p }, i16 0, i16 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"zlib-decompress-region\00", align 1
@Szlib_decompress_region = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fzlib_decompress_region }, i16 2, i16 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"zlib-available-p\00", align 1

; Function Attrs: nounwind uwtable
define i64 @Fzlib_available_p() #0 {
entry:
  %call = call i64 @builtin_lisp_symbol(i32 901)
  ret i64 %call
}

declare i64 @builtin_lisp_symbol(i32) #1

; Function Attrs: nounwind uwtable
define i64 @Fzlib_decompress_region(i64 %start, i64 %end) #0 {
entry:
  %retval = alloca i64, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %istart = alloca i64, align 8
  %iend = alloca i64, align 8
  %pos_byte = alloca i64, align 8
  %stream = alloca %struct.z_stream_s, align 8
  %inflate_status = alloca i32, align 4
  %unwind_data = alloca %struct.decompress_unwind_data, align 8
  %count = alloca i64, align 8
  %avail_in10 = alloca i64, align 8
  %avail_out = alloca i32, align 4
  %decompressed = alloca i32, align 4
  store i64 %start, i64* %start.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %count, align 8
  call void @validate_region(i64* %start.addr, i64* %end.addr)
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_ = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 39
  %1 = load i64, i64* %enable_multibyte_characters_, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %1, %call1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i32 0, i32 0)) #3
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %start.addr, align 8
  %shr = ashr i64 %2, 2
  store i64 %shr, i64* %istart, align 8
  %3 = load i64, i64* %end.addr, align 8
  %shr2 = ashr i64 %3, 2
  store i64 %shr2, i64* %iend, align 8
  %4 = load i64, i64* %iend, align 8
  %5 = load i64, i64* %iend, align 8
  call void @move_gap_both(i64 %4, i64 %5)
  %zalloc = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 8
  store i8* (i8*, i32, i32)* null, i8* (i8*, i32, i32)** %zalloc, align 8
  %zfree = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 9
  store void (i8*, i8*)* null, void (i8*, i8*)** %zfree, align 8
  %opaque = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 10
  store i8* null, i8** %opaque, align 8
  %avail_in = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 1
  store i32 0, i32* %avail_in, align 4
  %next_in = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 0
  store i8* null, i8** %next_in, align 8
  %call3 = call i32 @inflateInit2_(%struct.z_stream_s* %stream, i32 47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 112)
  %cmp4 = icmp ne i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call6, i64* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %6 = load i64, i64* %iend, align 8
  %start8 = getelementptr inbounds %struct.decompress_unwind_data, %struct.decompress_unwind_data* %unwind_data, i32 0, i32 1
  store i64 %6, i64* %start8, align 8
  %stream9 = getelementptr inbounds %struct.decompress_unwind_data, %struct.decompress_unwind_data* %unwind_data, i32 0, i32 3
  store %struct.z_stream_s* %stream, %struct.z_stream_s** %stream9, align 8
  %7 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 75
  %8 = load i64, i64* %pt, align 8
  %add = add nsw i64 %8, 0
  %old_point = getelementptr inbounds %struct.decompress_unwind_data, %struct.decompress_unwind_data* %unwind_data, i32 0, i32 0
  store i64 %add, i64* %old_point, align 8
  %nbytes = getelementptr inbounds %struct.decompress_unwind_data, %struct.decompress_unwind_data* %unwind_data, i32 0, i32 2
  store i64 0, i64* %nbytes, align 8
  %9 = bitcast %struct.decompress_unwind_data* %unwind_data to i8*
  call void @record_unwind_protect_ptr(void (i8*)* @unwind_decompress, i8* %9)
  %10 = load i64, i64* %iend, align 8
  call void @set_point(i64 %10)
  %11 = load i64, i64* %istart, align 8
  store i64 %11, i64* %pos_byte, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.7
  %12 = load i64, i64* %iend, align 8
  %13 = load i64, i64* %pos_byte, align 8
  %sub = sub nsw i64 %12, %13
  %cmp11 = icmp slt i64 %sub, 4294967295
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body
  %14 = load i64, i64* %iend, align 8
  %15 = load i64, i64* %pos_byte, align 8
  %sub12 = sub nsw i64 %14, %15
  br label %cond.end

cond.false:                                       ; preds = %do.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub12, %cond.true ], [ 4294967295, %cond.false ]
  store i64 %cond, i64* %avail_in10, align 8
  store i32 16384, i32* %avail_out, align 4
  %16 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %16, i32 0, i32 73
  %17 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %gap_size = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %17, i32 0, i32 5
  %18 = load i64, i64* %gap_size, align 8
  %19 = load i32, i32* %avail_out, align 4
  %conv = sext i32 %19 to i64
  %cmp13 = icmp slt i64 %18, %conv
  br i1 %cmp13, label %if.then.15, label %if.end.20

if.then.15:                                       ; preds = %cond.end
  %20 = load i32, i32* %avail_out, align 4
  %conv16 = sext i32 %20 to i64
  %21 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text17 = getelementptr inbounds %struct.buffer, %struct.buffer* %21, i32 0, i32 73
  %22 = load %struct.buffer_text*, %struct.buffer_text** %text17, align 8
  %gap_size18 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %22, i32 0, i32 5
  %23 = load i64, i64* %gap_size18, align 8
  %sub19 = sub nsw i64 %conv16, %23
  call void @make_gap(i64 %sub19)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.15, %cond.end
  %24 = load i64, i64* %pos_byte, align 8
  %25 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text21 = getelementptr inbounds %struct.buffer, %struct.buffer* %25, i32 0, i32 73
  %26 = load %struct.buffer_text*, %struct.buffer_text** %text21, align 8
  %gpt_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %26, i32 0, i32 3
  %27 = load i64, i64* %gpt_byte, align 8
  %cmp22 = icmp sge i64 %24, %27
  br i1 %cmp22, label %cond.true.24, label %cond.false.27

cond.true.24:                                     ; preds = %if.end.20
  %28 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text25 = getelementptr inbounds %struct.buffer, %struct.buffer* %28, i32 0, i32 73
  %29 = load %struct.buffer_text*, %struct.buffer_text** %text25, align 8
  %gap_size26 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %29, i32 0, i32 5
  %30 = load i64, i64* %gap_size26, align 8
  br label %cond.end.28

cond.false.27:                                    ; preds = %if.end.20
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.27, %cond.true.24
  %cond29 = phi i64 [ %30, %cond.true.24 ], [ 0, %cond.false.27 ]
  %31 = load i64, i64* %pos_byte, align 8
  %add30 = add nsw i64 %cond29, %31
  %32 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text31 = getelementptr inbounds %struct.buffer, %struct.buffer* %32, i32 0, i32 73
  %33 = load %struct.buffer_text*, %struct.buffer_text** %text31, align 8
  %beg = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %33, i32 0, i32 0
  %34 = load i8*, i8** %beg, align 8
  %add.ptr = getelementptr inbounds i8, i8* %34, i64 %add30
  %add.ptr32 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %next_in33 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 0
  store i8* %add.ptr32, i8** %next_in33, align 8
  %35 = load i64, i64* %avail_in10, align 8
  %conv34 = trunc i64 %35 to i32
  %avail_in35 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 1
  store i32 %conv34, i32* %avail_in35, align 4
  %36 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text36 = getelementptr inbounds %struct.buffer, %struct.buffer* %36, i32 0, i32 73
  %37 = load %struct.buffer_text*, %struct.buffer_text** %text36, align 8
  %beg37 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %37, i32 0, i32 0
  %38 = load i8*, i8** %beg37, align 8
  %39 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text38 = getelementptr inbounds %struct.buffer, %struct.buffer* %39, i32 0, i32 73
  %40 = load %struct.buffer_text*, %struct.buffer_text** %text38, align 8
  %gpt_byte39 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %40, i32 0, i32 3
  %41 = load i64, i64* %gpt_byte39, align 8
  %add.ptr40 = getelementptr inbounds i8, i8* %38, i64 %41
  %add.ptr41 = getelementptr inbounds i8, i8* %add.ptr40, i64 -1
  %next_out = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 3
  store i8* %add.ptr41, i8** %next_out, align 8
  %42 = load i32, i32* %avail_out, align 4
  %avail_out42 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 4
  store i32 %42, i32* %avail_out42, align 4
  %call43 = call i32 @inflate(%struct.z_stream_s* %stream, i32 0)
  store i32 %call43, i32* %inflate_status, align 4
  %43 = load i64, i64* %avail_in10, align 8
  %avail_in44 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 1
  %44 = load i32, i32* %avail_in44, align 4
  %conv45 = zext i32 %44 to i64
  %sub46 = sub nsw i64 %43, %conv45
  %45 = load i64, i64* %pos_byte, align 8
  %add47 = add nsw i64 %45, %sub46
  store i64 %add47, i64* %pos_byte, align 8
  %46 = load i32, i32* %avail_out, align 4
  %avail_out48 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 4
  %47 = load i32, i32* %avail_out48, align 4
  %sub49 = sub i32 %46, %47
  store i32 %sub49, i32* %decompressed, align 4
  %48 = load i32, i32* %decompressed, align 4
  %conv50 = sext i32 %48 to i64
  %49 = load i32, i32* %decompressed, align 4
  %conv51 = sext i32 %49 to i64
  call void @insert_from_gap(i64 %conv50, i64 %conv51, i1 zeroext false)
  %50 = load i32, i32* %decompressed, align 4
  %conv52 = sext i32 %50 to i64
  %nbytes53 = getelementptr inbounds %struct.decompress_unwind_data, %struct.decompress_unwind_data* %unwind_data, i32 0, i32 2
  %51 = load i64, i64* %nbytes53, align 8
  %add54 = add nsw i64 %51, %conv52
  store i64 %add54, i64* %nbytes53, align 8
  br label %do.body.55

do.body.55:                                       ; preds = %cond.end.28
  %52 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call56 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp57 = icmp eq i64 %52, %call56
  br i1 %cmp57, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.body.55
  %53 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call59 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp60 = icmp eq i64 %53, %call59
  br i1 %cmp60, label %if.then.62, label %if.else

if.then.62:                                       ; preds = %land.lhs.true
  call void @process_quit_flag()
  br label %if.end.65

if.else:                                          ; preds = %land.lhs.true, %do.body.55
  %54 = load volatile i8, i8* @pending_signals, align 1
  %tobool = trunc i8 %54 to i1
  br i1 %tobool, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.else
  call void @process_pending_signals()
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %if.else
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.then.62
  br label %do.end

do.end:                                           ; preds = %if.end.65
  br label %do.cond

do.cond:                                          ; preds = %do.end
  %55 = load i32, i32* %inflate_status, align 4
  %cmp66 = icmp eq i32 %55, 0
  br i1 %cmp66, label %do.body, label %do.end.68

do.end.68:                                        ; preds = %do.cond
  %56 = load i32, i32* %inflate_status, align 4
  %cmp69 = icmp ne i32 %56, 1
  br i1 %cmp69, label %if.then.71, label %if.end.74

if.then.71:                                       ; preds = %do.end.68
  %57 = load i64, i64* %count, align 8
  %call72 = call i64 @builtin_lisp_symbol(i32 0)
  %call73 = call i64 @unbind_to(i64 %57, i64 %call72)
  store i64 %call73, i64* %retval
  br label %return

if.end.74:                                        ; preds = %do.end.68
  %start75 = getelementptr inbounds %struct.decompress_unwind_data, %struct.decompress_unwind_data* %unwind_data, i32 0, i32 1
  store i64 0, i64* %start75, align 8
  %58 = load i64, i64* %istart, align 8
  %59 = load i64, i64* %iend, align 8
  call void @del_range(i64 %58, i64 %59)
  %60 = load i64, i64* %count, align 8
  %call76 = call i64 @builtin_lisp_symbol(i32 901)
  %call77 = call i64 @unbind_to(i64 %60, i64 %call76)
  store i64 %call77, i64* %retval
  br label %return

return:                                           ; preds = %if.end.74, %if.then.71, %if.then.5
  %61 = load i64, i64* %retval
  ret i64 %61
}

declare i64 @SPECPDL_INDEX() #1

declare void @validate_region(i64*, i64*) #1

; Function Attrs: noreturn
declare void @error(i8*, ...) #2

declare void @move_gap_both(i64, i64) #1

declare i32 @inflateInit2_(%struct.z_stream_s*, i32, i8*, i32) #1

declare void @record_unwind_protect_ptr(void (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @unwind_decompress(i8* %ddata) #0 {
entry:
  %ddata.addr = alloca i8*, align 8
  %data = alloca %struct.decompress_unwind_data*, align 8
  store i8* %ddata, i8** %ddata.addr, align 8
  %0 = load i8*, i8** %ddata.addr, align 8
  %1 = bitcast i8* %0 to %struct.decompress_unwind_data*
  store %struct.decompress_unwind_data* %1, %struct.decompress_unwind_data** %data, align 8
  %2 = load %struct.decompress_unwind_data*, %struct.decompress_unwind_data** %data, align 8
  %stream = getelementptr inbounds %struct.decompress_unwind_data, %struct.decompress_unwind_data* %2, i32 0, i32 3
  %3 = load %struct.z_stream_s*, %struct.z_stream_s** %stream, align 8
  %call = call i32 @inflateEnd(%struct.z_stream_s* %3)
  %4 = load %struct.decompress_unwind_data*, %struct.decompress_unwind_data** %data, align 8
  %start = getelementptr inbounds %struct.decompress_unwind_data, %struct.decompress_unwind_data* %4, i32 0, i32 1
  %5 = load i64, i64* %start, align 8
  %tobool = icmp ne i64 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.decompress_unwind_data*, %struct.decompress_unwind_data** %data, align 8
  %start1 = getelementptr inbounds %struct.decompress_unwind_data, %struct.decompress_unwind_data* %6, i32 0, i32 1
  %7 = load i64, i64* %start1, align 8
  %8 = load %struct.decompress_unwind_data*, %struct.decompress_unwind_data** %data, align 8
  %start2 = getelementptr inbounds %struct.decompress_unwind_data, %struct.decompress_unwind_data* %8, i32 0, i32 1
  %9 = load i64, i64* %start2, align 8
  %10 = load %struct.decompress_unwind_data*, %struct.decompress_unwind_data** %data, align 8
  %nbytes = getelementptr inbounds %struct.decompress_unwind_data, %struct.decompress_unwind_data* %10, i32 0, i32 2
  %11 = load i64, i64* %nbytes, align 8
  %add = add nsw i64 %9, %11
  call void @del_range(i64 %7, i64 %add)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct.decompress_unwind_data*, %struct.decompress_unwind_data** %data, align 8
  %old_point = getelementptr inbounds %struct.decompress_unwind_data, %struct.decompress_unwind_data* %12, i32 0, i32 0
  %13 = load i64, i64* %old_point, align 8
  %14 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %14, i32 0, i32 79
  %15 = load i64, i64* %zv, align 8
  %cmp = icmp slt i64 %13, %15
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %16 = load %struct.decompress_unwind_data*, %struct.decompress_unwind_data** %data, align 8
  %old_point3 = getelementptr inbounds %struct.decompress_unwind_data, %struct.decompress_unwind_data* %16, i32 0, i32 0
  %17 = load i64, i64* %old_point3, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %18 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv4 = getelementptr inbounds %struct.buffer, %struct.buffer* %18, i32 0, i32 79
  %19 = load i64, i64* %zv4, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %17, %cond.true ], [ %19, %cond.false ]
  call void @set_point(i64 %cond)
  ret void
}

declare void @set_point(i64) #1

declare void @make_gap(i64) #1

declare i32 @inflate(%struct.z_stream_s*, i32) #1

declare void @insert_from_gap(i64, i64, i1 zeroext) #1

declare void @process_quit_flag() #1

declare void @process_pending_signals() #1

declare i64 @unbind_to(i64, i64) #1

declare void @del_range(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @syms_of_decompress() #0 {
entry:
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Szlib_decompress_region to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* @Szlib_available_p)
  ret void
}

declare void @defsubr(%struct.Lisp_Subr*) #1

declare i32 @inflateEnd(%struct.z_stream_s*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
