; ModuleID = './src/marker.bc'
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
%struct.Lisp_Subr = type { %struct.vectorlike_header, %union.anon, i16, i16, i8*, i8*, i8* }
%union.anon = type { i64 ()* }

@cached_buffer = internal global %struct.buffer* null, align 8
@current_buffer = external global %struct.buffer*, align 8
@cached_modiff = internal global i64 0, align 8
@cached_charpos = internal global i64 0, align 8
@cached_bytepos = internal global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Marker does not point anywhere\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"marker-position\00", align 1
@Smarker_position = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fmarker_position }, i16 1, i16 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"marker-buffer\00", align 1
@Smarker_buffer = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fmarker_buffer }, i16 1, i16 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"set-marker\00", align 1
@Sset_marker = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Fset_marker }, i16 2, i16 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"copy-marker\00", align 1
@Scopy_marker = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fcopy_marker }, i16 0, i16 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.5 = private unnamed_addr constant [22 x i8] c"marker-insertion-type\00", align 1
@Smarker_insertion_type = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fmarker_insertion_type }, i16 1, i16 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.6 = private unnamed_addr constant [26 x i8] c"set-marker-insertion-type\00", align 1
@Sset_marker_insertion_type = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fset_marker_insertion_type }, i16 2, i16 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.7 = private unnamed_addr constant [22 x i8] c"buffer-has-markers-at\00", align 1
@Sbuffer_has_markers_at = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fbuffer_has_markers_at }, i16 1, i16 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null }, align 8

; Function Attrs: nounwind uwtable
define void @clear_charpos_cache(%struct.buffer* %b) #0 {
entry:
  %b.addr = alloca %struct.buffer*, align 8
  store %struct.buffer* %b, %struct.buffer** %b.addr, align 8
  %0 = load %struct.buffer*, %struct.buffer** @cached_buffer, align 8
  %1 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %cmp = icmp eq %struct.buffer* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.buffer* null, %struct.buffer** @cached_buffer, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @buf_charpos_to_bytepos(%struct.buffer* %b, i64 %charpos) #0 {
entry:
  %retval = alloca i64, align 8
  %b.addr = alloca %struct.buffer*, align 8
  %charpos.addr = alloca i64, align 8
  %tail = alloca %struct.Lisp_Marker*, align 8
  %best_above = alloca i64, align 8
  %best_above_byte = alloca i64, align 8
  %best_below = alloca i64, align 8
  %best_below_byte = alloca i64, align 8
  %this_charpos = alloca i64, align 8
  %changed = alloca i8, align 1
  %value = alloca i64, align 8
  %value78 = alloca i64, align 8
  %this_charpos85 = alloca i64, align 8
  %changed87 = alloca i8, align 1
  %value90 = alloca i64, align 8
  %value116 = alloca i64, align 8
  %this_charpos123 = alloca i64, align 8
  %changed138 = alloca i8, align 1
  %value141 = alloca i64, align 8
  %value209 = alloca i64, align 8
  %this_charpos216 = alloca i64, align 8
  %changed231 = alloca i8, align 1
  %value234 = alloca i64, align 8
  %value302 = alloca i64, align 8
  %this_charpos313 = alloca i64, align 8
  %changed314 = alloca i8, align 1
  %value317 = alloca i64, align 8
  %value338 = alloca i64, align 8
  %this_charpos348 = alloca i64, align 8
  %changed350 = alloca i8, align 1
  %value353 = alloca i64, align 8
  %value376 = alloca i64, align 8
  %record = alloca i8, align 1
  %chp = alloca i8*, align 8
  %record441 = alloca i8, align 1
  %chp451 = alloca i8*, align 8
  store %struct.buffer* %b, %struct.buffer** %b.addr, align 8
  store i64 %charpos, i64* %charpos.addr, align 8
  %0 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 73
  %1 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %z = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %1, i32 0, i32 2
  %2 = load i64, i64* %z, align 8
  store i64 %2, i64* %best_above, align 8
  %3 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %text1 = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i32 0, i32 73
  %4 = load %struct.buffer_text*, %struct.buffer_text** %text1, align 8
  %z_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %4, i32 0, i32 4
  %5 = load i64, i64* %z_byte, align 8
  store i64 %5, i64* %best_above_byte, align 8
  %6 = load i64, i64* %best_above, align 8
  %7 = load i64, i64* %best_above_byte, align 8
  %cmp = icmp eq i64 %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i64, i64* %charpos.addr, align 8
  store i64 %8, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i64 1, i64* %best_below, align 8
  store i64 1, i64* %best_below_byte, align 8
  %9 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %10 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp2 = icmp eq %struct.buffer* %9, %10
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %11 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %11, i32 0, i32 75
  %12 = load i64, i64* %pt, align 8
  %add = add nsw i64 %12, 0
  br label %cond.end.9

cond.false:                                       ; preds = %if.end
  %13 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %pt_marker_ = getelementptr inbounds %struct.buffer, %struct.buffer* %13, i32 0, i32 45
  %14 = load i64, i64* %pt_marker_, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp3 = icmp eq i64 %14, %call
  br i1 %cmp3, label %cond.true.4, label %cond.false.6

cond.true.4:                                      ; preds = %cond.false
  %15 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %pt5 = getelementptr inbounds %struct.buffer, %struct.buffer* %15, i32 0, i32 75
  %16 = load i64, i64* %pt5, align 8
  br label %cond.end

cond.false.6:                                     ; preds = %cond.false
  %17 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %pt_marker_7 = getelementptr inbounds %struct.buffer, %struct.buffer* %17, i32 0, i32 45
  %18 = load i64, i64* %pt_marker_7, align 8
  %call8 = call i64 @marker_position(i64 %18)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.6, %cond.true.4
  %cond = phi i64 [ %16, %cond.true.4 ], [ %call8, %cond.false.6 ]
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.end, %cond.true
  %cond10 = phi i64 [ %add, %cond.true ], [ %cond, %cond.end ]
  store i64 %cond10, i64* %this_charpos, align 8
  store i8 0, i8* %changed, align 1
  %19 = load i64, i64* %this_charpos, align 8
  %20 = load i64, i64* %charpos.addr, align 8
  %cmp11 = icmp eq i64 %19, %20
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %cond.end.9
  %21 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %22 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp13 = icmp eq %struct.buffer* %21, %22
  br i1 %cmp13, label %cond.true.14, label %cond.false.16

cond.true.14:                                     ; preds = %if.then.12
  %23 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %23, i32 0, i32 76
  %24 = load i64, i64* %pt_byte, align 8
  %add15 = add nsw i64 %24, 0
  br label %cond.end.27

cond.false.16:                                    ; preds = %if.then.12
  %25 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %pt_marker_17 = getelementptr inbounds %struct.buffer, %struct.buffer* %25, i32 0, i32 45
  %26 = load i64, i64* %pt_marker_17, align 8
  %call18 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp19 = icmp eq i64 %26, %call18
  br i1 %cmp19, label %cond.true.20, label %cond.false.22

cond.true.20:                                     ; preds = %cond.false.16
  %27 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %pt_byte21 = getelementptr inbounds %struct.buffer, %struct.buffer* %27, i32 0, i32 76
  %28 = load i64, i64* %pt_byte21, align 8
  br label %cond.end.25

cond.false.22:                                    ; preds = %cond.false.16
  %29 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %pt_marker_23 = getelementptr inbounds %struct.buffer, %struct.buffer* %29, i32 0, i32 45
  %30 = load i64, i64* %pt_marker_23, align 8
  %call24 = call i64 @marker_byte_position(i64 %30)
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.22, %cond.true.20
  %cond26 = phi i64 [ %28, %cond.true.20 ], [ %call24, %cond.false.22 ]
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.end.25, %cond.true.14
  %cond28 = phi i64 [ %add15, %cond.true.14 ], [ %cond26, %cond.end.25 ]
  store i64 %cond28, i64* %value, align 8
  br label %do.body

do.body:                                          ; preds = %cond.end.27
  br label %do.end

do.end:                                           ; preds = %do.body
  %31 = load i64, i64* %value, align 8
  store i64 %31, i64* %retval
  br label %return

if.else:                                          ; preds = %cond.end.9
  %32 = load i64, i64* %this_charpos, align 8
  %33 = load i64, i64* %charpos.addr, align 8
  %cmp29 = icmp sgt i64 %32, %33
  br i1 %cmp29, label %if.then.30, label %if.else.51

if.then.30:                                       ; preds = %if.else
  %34 = load i64, i64* %this_charpos, align 8
  %35 = load i64, i64* %best_above, align 8
  %cmp31 = icmp slt i64 %34, %35
  br i1 %cmp31, label %if.then.32, label %if.end.50

if.then.32:                                       ; preds = %if.then.30
  %36 = load i64, i64* %this_charpos, align 8
  store i64 %36, i64* %best_above, align 8
  %37 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %38 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp33 = icmp eq %struct.buffer* %37, %38
  br i1 %cmp33, label %cond.true.34, label %cond.false.37

cond.true.34:                                     ; preds = %if.then.32
  %39 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte35 = getelementptr inbounds %struct.buffer, %struct.buffer* %39, i32 0, i32 76
  %40 = load i64, i64* %pt_byte35, align 8
  %add36 = add nsw i64 %40, 0
  br label %cond.end.48

cond.false.37:                                    ; preds = %if.then.32
  %41 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %pt_marker_38 = getelementptr inbounds %struct.buffer, %struct.buffer* %41, i32 0, i32 45
  %42 = load i64, i64* %pt_marker_38, align 8
  %call39 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp40 = icmp eq i64 %42, %call39
  br i1 %cmp40, label %cond.true.41, label %cond.false.43

cond.true.41:                                     ; preds = %cond.false.37
  %43 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %pt_byte42 = getelementptr inbounds %struct.buffer, %struct.buffer* %43, i32 0, i32 76
  %44 = load i64, i64* %pt_byte42, align 8
  br label %cond.end.46

cond.false.43:                                    ; preds = %cond.false.37
  %45 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %pt_marker_44 = getelementptr inbounds %struct.buffer, %struct.buffer* %45, i32 0, i32 45
  %46 = load i64, i64* %pt_marker_44, align 8
  %call45 = call i64 @marker_byte_position(i64 %46)
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.false.43, %cond.true.41
  %cond47 = phi i64 [ %44, %cond.true.41 ], [ %call45, %cond.false.43 ]
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.end.46, %cond.true.34
  %cond49 = phi i64 [ %add36, %cond.true.34 ], [ %cond47, %cond.end.46 ]
  store i64 %cond49, i64* %best_above_byte, align 8
  store i8 1, i8* %changed, align 1
  br label %if.end.50

if.end.50:                                        ; preds = %cond.end.48, %if.then.30
  br label %if.end.72

if.else.51:                                       ; preds = %if.else
  %47 = load i64, i64* %this_charpos, align 8
  %48 = load i64, i64* %best_below, align 8
  %cmp52 = icmp sgt i64 %47, %48
  br i1 %cmp52, label %if.then.53, label %if.end.71

if.then.53:                                       ; preds = %if.else.51
  %49 = load i64, i64* %this_charpos, align 8
  store i64 %49, i64* %best_below, align 8
  %50 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %51 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp54 = icmp eq %struct.buffer* %50, %51
  br i1 %cmp54, label %cond.true.55, label %cond.false.58

cond.true.55:                                     ; preds = %if.then.53
  %52 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte56 = getelementptr inbounds %struct.buffer, %struct.buffer* %52, i32 0, i32 76
  %53 = load i64, i64* %pt_byte56, align 8
  %add57 = add nsw i64 %53, 0
  br label %cond.end.69

cond.false.58:                                    ; preds = %if.then.53
  %54 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %pt_marker_59 = getelementptr inbounds %struct.buffer, %struct.buffer* %54, i32 0, i32 45
  %55 = load i64, i64* %pt_marker_59, align 8
  %call60 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp61 = icmp eq i64 %55, %call60
  br i1 %cmp61, label %cond.true.62, label %cond.false.64

cond.true.62:                                     ; preds = %cond.false.58
  %56 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %pt_byte63 = getelementptr inbounds %struct.buffer, %struct.buffer* %56, i32 0, i32 76
  %57 = load i64, i64* %pt_byte63, align 8
  br label %cond.end.67

cond.false.64:                                    ; preds = %cond.false.58
  %58 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %pt_marker_65 = getelementptr inbounds %struct.buffer, %struct.buffer* %58, i32 0, i32 45
  %59 = load i64, i64* %pt_marker_65, align 8
  %call66 = call i64 @marker_byte_position(i64 %59)
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.64, %cond.true.62
  %cond68 = phi i64 [ %57, %cond.true.62 ], [ %call66, %cond.false.64 ]
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.end.67, %cond.true.55
  %cond70 = phi i64 [ %add57, %cond.true.55 ], [ %cond68, %cond.end.67 ]
  store i64 %cond70, i64* %best_below_byte, align 8
  store i8 1, i8* %changed, align 1
  br label %if.end.71

if.end.71:                                        ; preds = %cond.end.69, %if.else.51
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.end.50
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72
  %60 = load i8, i8* %changed, align 1
  %tobool = trunc i8 %60 to i1
  br i1 %tobool, label %if.then.74, label %if.end.84

if.then.74:                                       ; preds = %if.end.73
  %61 = load i64, i64* %best_above, align 8
  %62 = load i64, i64* %best_below, align 8
  %sub = sub nsw i64 %61, %62
  %63 = load i64, i64* %best_above_byte, align 8
  %64 = load i64, i64* %best_below_byte, align 8
  %sub75 = sub nsw i64 %63, %64
  %cmp76 = icmp eq i64 %sub, %sub75
  br i1 %cmp76, label %if.then.77, label %if.end.83

if.then.77:                                       ; preds = %if.then.74
  %65 = load i64, i64* %best_below_byte, align 8
  %66 = load i64, i64* %charpos.addr, align 8
  %67 = load i64, i64* %best_below, align 8
  %sub79 = sub nsw i64 %66, %67
  %add80 = add nsw i64 %65, %sub79
  store i64 %add80, i64* %value78, align 8
  br label %do.body.81

do.body.81:                                       ; preds = %if.then.77
  br label %do.end.82

do.end.82:                                        ; preds = %do.body.81
  %68 = load i64, i64* %value78, align 8
  store i64 %68, i64* %retval
  br label %return

if.end.83:                                        ; preds = %if.then.74
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.end.73
  %69 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %text86 = getelementptr inbounds %struct.buffer, %struct.buffer* %69, i32 0, i32 73
  %70 = load %struct.buffer_text*, %struct.buffer_text** %text86, align 8
  %gpt = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %70, i32 0, i32 1
  %71 = load i64, i64* %gpt, align 8
  store i64 %71, i64* %this_charpos85, align 8
  store i8 0, i8* %changed87, align 1
  %72 = load i64, i64* %this_charpos85, align 8
  %73 = load i64, i64* %charpos.addr, align 8
  %cmp88 = icmp eq i64 %72, %73
  br i1 %cmp88, label %if.then.89, label %if.else.94

if.then.89:                                       ; preds = %if.end.84
  %74 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %text91 = getelementptr inbounds %struct.buffer, %struct.buffer* %74, i32 0, i32 73
  %75 = load %struct.buffer_text*, %struct.buffer_text** %text91, align 8
  %gpt_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %75, i32 0, i32 3
  %76 = load i64, i64* %gpt_byte, align 8
  store i64 %76, i64* %value90, align 8
  br label %do.body.92

do.body.92:                                       ; preds = %if.then.89
  br label %do.end.93

do.end.93:                                        ; preds = %do.body.92
  %77 = load i64, i64* %value90, align 8
  store i64 %77, i64* %retval
  br label %return

if.else.94:                                       ; preds = %if.end.84
  %78 = load i64, i64* %this_charpos85, align 8
  %79 = load i64, i64* %charpos.addr, align 8
  %cmp95 = icmp sgt i64 %78, %79
  br i1 %cmp95, label %if.then.96, label %if.else.102

if.then.96:                                       ; preds = %if.else.94
  %80 = load i64, i64* %this_charpos85, align 8
  %81 = load i64, i64* %best_above, align 8
  %cmp97 = icmp slt i64 %80, %81
  br i1 %cmp97, label %if.then.98, label %if.end.101

if.then.98:                                       ; preds = %if.then.96
  %82 = load i64, i64* %this_charpos85, align 8
  store i64 %82, i64* %best_above, align 8
  %83 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %text99 = getelementptr inbounds %struct.buffer, %struct.buffer* %83, i32 0, i32 73
  %84 = load %struct.buffer_text*, %struct.buffer_text** %text99, align 8
  %gpt_byte100 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %84, i32 0, i32 3
  %85 = load i64, i64* %gpt_byte100, align 8
  store i64 %85, i64* %best_above_byte, align 8
  store i8 1, i8* %changed87, align 1
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.98, %if.then.96
  br label %if.end.108

if.else.102:                                      ; preds = %if.else.94
  %86 = load i64, i64* %this_charpos85, align 8
  %87 = load i64, i64* %best_below, align 8
  %cmp103 = icmp sgt i64 %86, %87
  br i1 %cmp103, label %if.then.104, label %if.end.107

if.then.104:                                      ; preds = %if.else.102
  %88 = load i64, i64* %this_charpos85, align 8
  store i64 %88, i64* %best_below, align 8
  %89 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %text105 = getelementptr inbounds %struct.buffer, %struct.buffer* %89, i32 0, i32 73
  %90 = load %struct.buffer_text*, %struct.buffer_text** %text105, align 8
  %gpt_byte106 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %90, i32 0, i32 3
  %91 = load i64, i64* %gpt_byte106, align 8
  store i64 %91, i64* %best_below_byte, align 8
  store i8 1, i8* %changed87, align 1
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.104, %if.else.102
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.end.101
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108
  %92 = load i8, i8* %changed87, align 1
  %tobool110 = trunc i8 %92 to i1
  br i1 %tobool110, label %if.then.111, label %if.end.122

if.then.111:                                      ; preds = %if.end.109
  %93 = load i64, i64* %best_above, align 8
  %94 = load i64, i64* %best_below, align 8
  %sub112 = sub nsw i64 %93, %94
  %95 = load i64, i64* %best_above_byte, align 8
  %96 = load i64, i64* %best_below_byte, align 8
  %sub113 = sub nsw i64 %95, %96
  %cmp114 = icmp eq i64 %sub112, %sub113
  br i1 %cmp114, label %if.then.115, label %if.end.121

if.then.115:                                      ; preds = %if.then.111
  %97 = load i64, i64* %best_below_byte, align 8
  %98 = load i64, i64* %charpos.addr, align 8
  %99 = load i64, i64* %best_below, align 8
  %sub117 = sub nsw i64 %98, %99
  %add118 = add nsw i64 %97, %sub117
  store i64 %add118, i64* %value116, align 8
  br label %do.body.119

do.body.119:                                      ; preds = %if.then.115
  br label %do.end.120

do.end.120:                                       ; preds = %do.body.119
  %100 = load i64, i64* %value116, align 8
  store i64 %100, i64* %retval
  br label %return

if.end.121:                                       ; preds = %if.then.111
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %if.end.109
  %101 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %102 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp124 = icmp eq %struct.buffer* %101, %102
  br i1 %cmp124, label %cond.true.125, label %cond.false.126

cond.true.125:                                    ; preds = %if.end.122
  %103 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %103, i32 0, i32 77
  %104 = load i64, i64* %begv, align 8
  br label %cond.end.136

cond.false.126:                                   ; preds = %if.end.122
  %105 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %begv_marker_ = getelementptr inbounds %struct.buffer, %struct.buffer* %105, i32 0, i32 46
  %106 = load i64, i64* %begv_marker_, align 8
  %call127 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp128 = icmp eq i64 %106, %call127
  br i1 %cmp128, label %cond.true.129, label %cond.false.131

cond.true.129:                                    ; preds = %cond.false.126
  %107 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %begv130 = getelementptr inbounds %struct.buffer, %struct.buffer* %107, i32 0, i32 77
  %108 = load i64, i64* %begv130, align 8
  br label %cond.end.134

cond.false.131:                                   ; preds = %cond.false.126
  %109 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %begv_marker_132 = getelementptr inbounds %struct.buffer, %struct.buffer* %109, i32 0, i32 46
  %110 = load i64, i64* %begv_marker_132, align 8
  %call133 = call i64 @marker_position(i64 %110)
  br label %cond.end.134

cond.end.134:                                     ; preds = %cond.false.131, %cond.true.129
  %cond135 = phi i64 [ %108, %cond.true.129 ], [ %call133, %cond.false.131 ]
  br label %cond.end.136

cond.end.136:                                     ; preds = %cond.end.134, %cond.true.125
  %cond137 = phi i64 [ %104, %cond.true.125 ], [ %cond135, %cond.end.134 ]
  store i64 %cond137, i64* %this_charpos123, align 8
  store i8 0, i8* %changed138, align 1
  %111 = load i64, i64* %this_charpos123, align 8
  %112 = load i64, i64* %charpos.addr, align 8
  %cmp139 = icmp eq i64 %111, %112
  br i1 %cmp139, label %if.then.140, label %if.else.159

if.then.140:                                      ; preds = %cond.end.136
  %113 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %114 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp142 = icmp eq %struct.buffer* %113, %114
  br i1 %cmp142, label %cond.true.143, label %cond.false.144

cond.true.143:                                    ; preds = %if.then.140
  %115 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %115, i32 0, i32 78
  %116 = load i64, i64* %begv_byte, align 8
  br label %cond.end.155

cond.false.144:                                   ; preds = %if.then.140
  %117 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %begv_marker_145 = getelementptr inbounds %struct.buffer, %struct.buffer* %117, i32 0, i32 46
  %118 = load i64, i64* %begv_marker_145, align 8
  %call146 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp147 = icmp eq i64 %118, %call146
  br i1 %cmp147, label %cond.true.148, label %cond.false.150

cond.true.148:                                    ; preds = %cond.false.144
  %119 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %begv_byte149 = getelementptr inbounds %struct.buffer, %struct.buffer* %119, i32 0, i32 78
  %120 = load i64, i64* %begv_byte149, align 8
  br label %cond.end.153

cond.false.150:                                   ; preds = %cond.false.144
  %121 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %begv_marker_151 = getelementptr inbounds %struct.buffer, %struct.buffer* %121, i32 0, i32 46
  %122 = load i64, i64* %begv_marker_151, align 8
  %call152 = call i64 @marker_byte_position(i64 %122)
  br label %cond.end.153

cond.end.153:                                     ; preds = %cond.false.150, %cond.true.148
  %cond154 = phi i64 [ %120, %cond.true.148 ], [ %call152, %cond.false.150 ]
  br label %cond.end.155

cond.end.155:                                     ; preds = %cond.end.153, %cond.true.143
  %cond156 = phi i64 [ %116, %cond.true.143 ], [ %cond154, %cond.end.153 ]
  store i64 %cond156, i64* %value141, align 8
  br label %do.body.157

do.body.157:                                      ; preds = %cond.end.155
  br label %do.end.158

do.end.158:                                       ; preds = %do.body.157
  %123 = load i64, i64* %value141, align 8
  store i64 %123, i64* %retval
  br label %return

if.else.159:                                      ; preds = %cond.end.136
  %124 = load i64, i64* %this_charpos123, align 8
  %125 = load i64, i64* %charpos.addr, align 8
  %cmp160 = icmp sgt i64 %124, %125
  br i1 %cmp160, label %if.then.161, label %if.else.181

if.then.161:                                      ; preds = %if.else.159
  %126 = load i64, i64* %this_charpos123, align 8
  %127 = load i64, i64* %best_above, align 8
  %cmp162 = icmp slt i64 %126, %127
  br i1 %cmp162, label %if.then.163, label %if.end.180

if.then.163:                                      ; preds = %if.then.161
  %128 = load i64, i64* %this_charpos123, align 8
  store i64 %128, i64* %best_above, align 8
  %129 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %130 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp164 = icmp eq %struct.buffer* %129, %130
  br i1 %cmp164, label %cond.true.165, label %cond.false.167

cond.true.165:                                    ; preds = %if.then.163
  %131 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte166 = getelementptr inbounds %struct.buffer, %struct.buffer* %131, i32 0, i32 78
  %132 = load i64, i64* %begv_byte166, align 8
  br label %cond.end.178

cond.false.167:                                   ; preds = %if.then.163
  %133 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %begv_marker_168 = getelementptr inbounds %struct.buffer, %struct.buffer* %133, i32 0, i32 46
  %134 = load i64, i64* %begv_marker_168, align 8
  %call169 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp170 = icmp eq i64 %134, %call169
  br i1 %cmp170, label %cond.true.171, label %cond.false.173

cond.true.171:                                    ; preds = %cond.false.167
  %135 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %begv_byte172 = getelementptr inbounds %struct.buffer, %struct.buffer* %135, i32 0, i32 78
  %136 = load i64, i64* %begv_byte172, align 8
  br label %cond.end.176

cond.false.173:                                   ; preds = %cond.false.167
  %137 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %begv_marker_174 = getelementptr inbounds %struct.buffer, %struct.buffer* %137, i32 0, i32 46
  %138 = load i64, i64* %begv_marker_174, align 8
  %call175 = call i64 @marker_byte_position(i64 %138)
  br label %cond.end.176

cond.end.176:                                     ; preds = %cond.false.173, %cond.true.171
  %cond177 = phi i64 [ %136, %cond.true.171 ], [ %call175, %cond.false.173 ]
  br label %cond.end.178

cond.end.178:                                     ; preds = %cond.end.176, %cond.true.165
  %cond179 = phi i64 [ %132, %cond.true.165 ], [ %cond177, %cond.end.176 ]
  store i64 %cond179, i64* %best_above_byte, align 8
  store i8 1, i8* %changed138, align 1
  br label %if.end.180

if.end.180:                                       ; preds = %cond.end.178, %if.then.161
  br label %if.end.201

if.else.181:                                      ; preds = %if.else.159
  %139 = load i64, i64* %this_charpos123, align 8
  %140 = load i64, i64* %best_below, align 8
  %cmp182 = icmp sgt i64 %139, %140
  br i1 %cmp182, label %if.then.183, label %if.end.200

if.then.183:                                      ; preds = %if.else.181
  %141 = load i64, i64* %this_charpos123, align 8
  store i64 %141, i64* %best_below, align 8
  %142 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %143 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp184 = icmp eq %struct.buffer* %142, %143
  br i1 %cmp184, label %cond.true.185, label %cond.false.187

cond.true.185:                                    ; preds = %if.then.183
  %144 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte186 = getelementptr inbounds %struct.buffer, %struct.buffer* %144, i32 0, i32 78
  %145 = load i64, i64* %begv_byte186, align 8
  br label %cond.end.198

cond.false.187:                                   ; preds = %if.then.183
  %146 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %begv_marker_188 = getelementptr inbounds %struct.buffer, %struct.buffer* %146, i32 0, i32 46
  %147 = load i64, i64* %begv_marker_188, align 8
  %call189 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp190 = icmp eq i64 %147, %call189
  br i1 %cmp190, label %cond.true.191, label %cond.false.193

cond.true.191:                                    ; preds = %cond.false.187
  %148 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %begv_byte192 = getelementptr inbounds %struct.buffer, %struct.buffer* %148, i32 0, i32 78
  %149 = load i64, i64* %begv_byte192, align 8
  br label %cond.end.196

cond.false.193:                                   ; preds = %cond.false.187
  %150 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %begv_marker_194 = getelementptr inbounds %struct.buffer, %struct.buffer* %150, i32 0, i32 46
  %151 = load i64, i64* %begv_marker_194, align 8
  %call195 = call i64 @marker_byte_position(i64 %151)
  br label %cond.end.196

cond.end.196:                                     ; preds = %cond.false.193, %cond.true.191
  %cond197 = phi i64 [ %149, %cond.true.191 ], [ %call195, %cond.false.193 ]
  br label %cond.end.198

cond.end.198:                                     ; preds = %cond.end.196, %cond.true.185
  %cond199 = phi i64 [ %145, %cond.true.185 ], [ %cond197, %cond.end.196 ]
  store i64 %cond199, i64* %best_below_byte, align 8
  store i8 1, i8* %changed138, align 1
  br label %if.end.200

if.end.200:                                       ; preds = %cond.end.198, %if.else.181
  br label %if.end.201

if.end.201:                                       ; preds = %if.end.200, %if.end.180
  br label %if.end.202

if.end.202:                                       ; preds = %if.end.201
  %152 = load i8, i8* %changed138, align 1
  %tobool203 = trunc i8 %152 to i1
  br i1 %tobool203, label %if.then.204, label %if.end.215

if.then.204:                                      ; preds = %if.end.202
  %153 = load i64, i64* %best_above, align 8
  %154 = load i64, i64* %best_below, align 8
  %sub205 = sub nsw i64 %153, %154
  %155 = load i64, i64* %best_above_byte, align 8
  %156 = load i64, i64* %best_below_byte, align 8
  %sub206 = sub nsw i64 %155, %156
  %cmp207 = icmp eq i64 %sub205, %sub206
  br i1 %cmp207, label %if.then.208, label %if.end.214

if.then.208:                                      ; preds = %if.then.204
  %157 = load i64, i64* %best_below_byte, align 8
  %158 = load i64, i64* %charpos.addr, align 8
  %159 = load i64, i64* %best_below, align 8
  %sub210 = sub nsw i64 %158, %159
  %add211 = add nsw i64 %157, %sub210
  store i64 %add211, i64* %value209, align 8
  br label %do.body.212

do.body.212:                                      ; preds = %if.then.208
  br label %do.end.213

do.end.213:                                       ; preds = %do.body.212
  %160 = load i64, i64* %value209, align 8
  store i64 %160, i64* %retval
  br label %return

if.end.214:                                       ; preds = %if.then.204
  br label %if.end.215

if.end.215:                                       ; preds = %if.end.214, %if.end.202
  %161 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %162 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp217 = icmp eq %struct.buffer* %161, %162
  br i1 %cmp217, label %cond.true.218, label %cond.false.219

cond.true.218:                                    ; preds = %if.end.215
  %163 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %163, i32 0, i32 79
  %164 = load i64, i64* %zv, align 8
  br label %cond.end.229

cond.false.219:                                   ; preds = %if.end.215
  %165 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %zv_marker_ = getelementptr inbounds %struct.buffer, %struct.buffer* %165, i32 0, i32 47
  %166 = load i64, i64* %zv_marker_, align 8
  %call220 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp221 = icmp eq i64 %166, %call220
  br i1 %cmp221, label %cond.true.222, label %cond.false.224

cond.true.222:                                    ; preds = %cond.false.219
  %167 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %zv223 = getelementptr inbounds %struct.buffer, %struct.buffer* %167, i32 0, i32 79
  %168 = load i64, i64* %zv223, align 8
  br label %cond.end.227

cond.false.224:                                   ; preds = %cond.false.219
  %169 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %zv_marker_225 = getelementptr inbounds %struct.buffer, %struct.buffer* %169, i32 0, i32 47
  %170 = load i64, i64* %zv_marker_225, align 8
  %call226 = call i64 @marker_position(i64 %170)
  br label %cond.end.227

cond.end.227:                                     ; preds = %cond.false.224, %cond.true.222
  %cond228 = phi i64 [ %168, %cond.true.222 ], [ %call226, %cond.false.224 ]
  br label %cond.end.229

cond.end.229:                                     ; preds = %cond.end.227, %cond.true.218
  %cond230 = phi i64 [ %164, %cond.true.218 ], [ %cond228, %cond.end.227 ]
  store i64 %cond230, i64* %this_charpos216, align 8
  store i8 0, i8* %changed231, align 1
  %171 = load i64, i64* %this_charpos216, align 8
  %172 = load i64, i64* %charpos.addr, align 8
  %cmp232 = icmp eq i64 %171, %172
  br i1 %cmp232, label %if.then.233, label %if.else.252

if.then.233:                                      ; preds = %cond.end.229
  %173 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %174 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp235 = icmp eq %struct.buffer* %173, %174
  br i1 %cmp235, label %cond.true.236, label %cond.false.237

cond.true.236:                                    ; preds = %if.then.233
  %175 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %175, i32 0, i32 80
  %176 = load i64, i64* %zv_byte, align 8
  br label %cond.end.248

cond.false.237:                                   ; preds = %if.then.233
  %177 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %zv_marker_238 = getelementptr inbounds %struct.buffer, %struct.buffer* %177, i32 0, i32 47
  %178 = load i64, i64* %zv_marker_238, align 8
  %call239 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp240 = icmp eq i64 %178, %call239
  br i1 %cmp240, label %cond.true.241, label %cond.false.243

cond.true.241:                                    ; preds = %cond.false.237
  %179 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %zv_byte242 = getelementptr inbounds %struct.buffer, %struct.buffer* %179, i32 0, i32 80
  %180 = load i64, i64* %zv_byte242, align 8
  br label %cond.end.246

cond.false.243:                                   ; preds = %cond.false.237
  %181 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %zv_marker_244 = getelementptr inbounds %struct.buffer, %struct.buffer* %181, i32 0, i32 47
  %182 = load i64, i64* %zv_marker_244, align 8
  %call245 = call i64 @marker_byte_position(i64 %182)
  br label %cond.end.246

cond.end.246:                                     ; preds = %cond.false.243, %cond.true.241
  %cond247 = phi i64 [ %180, %cond.true.241 ], [ %call245, %cond.false.243 ]
  br label %cond.end.248

cond.end.248:                                     ; preds = %cond.end.246, %cond.true.236
  %cond249 = phi i64 [ %176, %cond.true.236 ], [ %cond247, %cond.end.246 ]
  store i64 %cond249, i64* %value234, align 8
  br label %do.body.250

do.body.250:                                      ; preds = %cond.end.248
  br label %do.end.251

do.end.251:                                       ; preds = %do.body.250
  %183 = load i64, i64* %value234, align 8
  store i64 %183, i64* %retval
  br label %return

if.else.252:                                      ; preds = %cond.end.229
  %184 = load i64, i64* %this_charpos216, align 8
  %185 = load i64, i64* %charpos.addr, align 8
  %cmp253 = icmp sgt i64 %184, %185
  br i1 %cmp253, label %if.then.254, label %if.else.274

if.then.254:                                      ; preds = %if.else.252
  %186 = load i64, i64* %this_charpos216, align 8
  %187 = load i64, i64* %best_above, align 8
  %cmp255 = icmp slt i64 %186, %187
  br i1 %cmp255, label %if.then.256, label %if.end.273

if.then.256:                                      ; preds = %if.then.254
  %188 = load i64, i64* %this_charpos216, align 8
  store i64 %188, i64* %best_above, align 8
  %189 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %190 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp257 = icmp eq %struct.buffer* %189, %190
  br i1 %cmp257, label %cond.true.258, label %cond.false.260

cond.true.258:                                    ; preds = %if.then.256
  %191 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte259 = getelementptr inbounds %struct.buffer, %struct.buffer* %191, i32 0, i32 80
  %192 = load i64, i64* %zv_byte259, align 8
  br label %cond.end.271

cond.false.260:                                   ; preds = %if.then.256
  %193 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %zv_marker_261 = getelementptr inbounds %struct.buffer, %struct.buffer* %193, i32 0, i32 47
  %194 = load i64, i64* %zv_marker_261, align 8
  %call262 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp263 = icmp eq i64 %194, %call262
  br i1 %cmp263, label %cond.true.264, label %cond.false.266

cond.true.264:                                    ; preds = %cond.false.260
  %195 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %zv_byte265 = getelementptr inbounds %struct.buffer, %struct.buffer* %195, i32 0, i32 80
  %196 = load i64, i64* %zv_byte265, align 8
  br label %cond.end.269

cond.false.266:                                   ; preds = %cond.false.260
  %197 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %zv_marker_267 = getelementptr inbounds %struct.buffer, %struct.buffer* %197, i32 0, i32 47
  %198 = load i64, i64* %zv_marker_267, align 8
  %call268 = call i64 @marker_byte_position(i64 %198)
  br label %cond.end.269

cond.end.269:                                     ; preds = %cond.false.266, %cond.true.264
  %cond270 = phi i64 [ %196, %cond.true.264 ], [ %call268, %cond.false.266 ]
  br label %cond.end.271

cond.end.271:                                     ; preds = %cond.end.269, %cond.true.258
  %cond272 = phi i64 [ %192, %cond.true.258 ], [ %cond270, %cond.end.269 ]
  store i64 %cond272, i64* %best_above_byte, align 8
  store i8 1, i8* %changed231, align 1
  br label %if.end.273

if.end.273:                                       ; preds = %cond.end.271, %if.then.254
  br label %if.end.294

if.else.274:                                      ; preds = %if.else.252
  %199 = load i64, i64* %this_charpos216, align 8
  %200 = load i64, i64* %best_below, align 8
  %cmp275 = icmp sgt i64 %199, %200
  br i1 %cmp275, label %if.then.276, label %if.end.293

if.then.276:                                      ; preds = %if.else.274
  %201 = load i64, i64* %this_charpos216, align 8
  store i64 %201, i64* %best_below, align 8
  %202 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %203 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp277 = icmp eq %struct.buffer* %202, %203
  br i1 %cmp277, label %cond.true.278, label %cond.false.280

cond.true.278:                                    ; preds = %if.then.276
  %204 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte279 = getelementptr inbounds %struct.buffer, %struct.buffer* %204, i32 0, i32 80
  %205 = load i64, i64* %zv_byte279, align 8
  br label %cond.end.291

cond.false.280:                                   ; preds = %if.then.276
  %206 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %zv_marker_281 = getelementptr inbounds %struct.buffer, %struct.buffer* %206, i32 0, i32 47
  %207 = load i64, i64* %zv_marker_281, align 8
  %call282 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp283 = icmp eq i64 %207, %call282
  br i1 %cmp283, label %cond.true.284, label %cond.false.286

cond.true.284:                                    ; preds = %cond.false.280
  %208 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %zv_byte285 = getelementptr inbounds %struct.buffer, %struct.buffer* %208, i32 0, i32 80
  %209 = load i64, i64* %zv_byte285, align 8
  br label %cond.end.289

cond.false.286:                                   ; preds = %cond.false.280
  %210 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %zv_marker_287 = getelementptr inbounds %struct.buffer, %struct.buffer* %210, i32 0, i32 47
  %211 = load i64, i64* %zv_marker_287, align 8
  %call288 = call i64 @marker_byte_position(i64 %211)
  br label %cond.end.289

cond.end.289:                                     ; preds = %cond.false.286, %cond.true.284
  %cond290 = phi i64 [ %209, %cond.true.284 ], [ %call288, %cond.false.286 ]
  br label %cond.end.291

cond.end.291:                                     ; preds = %cond.end.289, %cond.true.278
  %cond292 = phi i64 [ %205, %cond.true.278 ], [ %cond290, %cond.end.289 ]
  store i64 %cond292, i64* %best_below_byte, align 8
  store i8 1, i8* %changed231, align 1
  br label %if.end.293

if.end.293:                                       ; preds = %cond.end.291, %if.else.274
  br label %if.end.294

if.end.294:                                       ; preds = %if.end.293, %if.end.273
  br label %if.end.295

if.end.295:                                       ; preds = %if.end.294
  %212 = load i8, i8* %changed231, align 1
  %tobool296 = trunc i8 %212 to i1
  br i1 %tobool296, label %if.then.297, label %if.end.308

if.then.297:                                      ; preds = %if.end.295
  %213 = load i64, i64* %best_above, align 8
  %214 = load i64, i64* %best_below, align 8
  %sub298 = sub nsw i64 %213, %214
  %215 = load i64, i64* %best_above_byte, align 8
  %216 = load i64, i64* %best_below_byte, align 8
  %sub299 = sub nsw i64 %215, %216
  %cmp300 = icmp eq i64 %sub298, %sub299
  br i1 %cmp300, label %if.then.301, label %if.end.307

if.then.301:                                      ; preds = %if.then.297
  %217 = load i64, i64* %best_below_byte, align 8
  %218 = load i64, i64* %charpos.addr, align 8
  %219 = load i64, i64* %best_below, align 8
  %sub303 = sub nsw i64 %218, %219
  %add304 = add nsw i64 %217, %sub303
  store i64 %add304, i64* %value302, align 8
  br label %do.body.305

do.body.305:                                      ; preds = %if.then.301
  br label %do.end.306

do.end.306:                                       ; preds = %do.body.305
  %220 = load i64, i64* %value302, align 8
  store i64 %220, i64* %retval
  br label %return

if.end.307:                                       ; preds = %if.then.297
  br label %if.end.308

if.end.308:                                       ; preds = %if.end.307, %if.end.295
  %221 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %222 = load %struct.buffer*, %struct.buffer** @cached_buffer, align 8
  %cmp309 = icmp eq %struct.buffer* %221, %222
  br i1 %cmp309, label %land.lhs.true, label %if.end.345

land.lhs.true:                                    ; preds = %if.end.308
  %223 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %text310 = getelementptr inbounds %struct.buffer, %struct.buffer* %223, i32 0, i32 73
  %224 = load %struct.buffer_text*, %struct.buffer_text** %text310, align 8
  %modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %224, i32 0, i32 6
  %225 = load i64, i64* %modiff, align 8
  %226 = load i64, i64* @cached_modiff, align 8
  %cmp311 = icmp eq i64 %225, %226
  br i1 %cmp311, label %if.then.312, label %if.end.345

if.then.312:                                      ; preds = %land.lhs.true
  %227 = load i64, i64* @cached_charpos, align 8
  store i64 %227, i64* %this_charpos313, align 8
  store i8 0, i8* %changed314, align 1
  %228 = load i64, i64* %this_charpos313, align 8
  %229 = load i64, i64* %charpos.addr, align 8
  %cmp315 = icmp eq i64 %228, %229
  br i1 %cmp315, label %if.then.316, label %if.else.320

if.then.316:                                      ; preds = %if.then.312
  %230 = load i64, i64* @cached_bytepos, align 8
  store i64 %230, i64* %value317, align 8
  br label %do.body.318

do.body.318:                                      ; preds = %if.then.316
  br label %do.end.319

do.end.319:                                       ; preds = %do.body.318
  %231 = load i64, i64* %value317, align 8
  store i64 %231, i64* %retval
  br label %return

if.else.320:                                      ; preds = %if.then.312
  %232 = load i64, i64* %this_charpos313, align 8
  %233 = load i64, i64* %charpos.addr, align 8
  %cmp321 = icmp sgt i64 %232, %233
  br i1 %cmp321, label %if.then.322, label %if.else.326

if.then.322:                                      ; preds = %if.else.320
  %234 = load i64, i64* %this_charpos313, align 8
  %235 = load i64, i64* %best_above, align 8
  %cmp323 = icmp slt i64 %234, %235
  br i1 %cmp323, label %if.then.324, label %if.end.325

if.then.324:                                      ; preds = %if.then.322
  %236 = load i64, i64* %this_charpos313, align 8
  store i64 %236, i64* %best_above, align 8
  %237 = load i64, i64* @cached_bytepos, align 8
  store i64 %237, i64* %best_above_byte, align 8
  store i8 1, i8* %changed314, align 1
  br label %if.end.325

if.end.325:                                       ; preds = %if.then.324, %if.then.322
  br label %if.end.330

if.else.326:                                      ; preds = %if.else.320
  %238 = load i64, i64* %this_charpos313, align 8
  %239 = load i64, i64* %best_below, align 8
  %cmp327 = icmp sgt i64 %238, %239
  br i1 %cmp327, label %if.then.328, label %if.end.329

if.then.328:                                      ; preds = %if.else.326
  %240 = load i64, i64* %this_charpos313, align 8
  store i64 %240, i64* %best_below, align 8
  %241 = load i64, i64* @cached_bytepos, align 8
  store i64 %241, i64* %best_below_byte, align 8
  store i8 1, i8* %changed314, align 1
  br label %if.end.329

if.end.329:                                       ; preds = %if.then.328, %if.else.326
  br label %if.end.330

if.end.330:                                       ; preds = %if.end.329, %if.end.325
  br label %if.end.331

if.end.331:                                       ; preds = %if.end.330
  %242 = load i8, i8* %changed314, align 1
  %tobool332 = trunc i8 %242 to i1
  br i1 %tobool332, label %if.then.333, label %if.end.344

if.then.333:                                      ; preds = %if.end.331
  %243 = load i64, i64* %best_above, align 8
  %244 = load i64, i64* %best_below, align 8
  %sub334 = sub nsw i64 %243, %244
  %245 = load i64, i64* %best_above_byte, align 8
  %246 = load i64, i64* %best_below_byte, align 8
  %sub335 = sub nsw i64 %245, %246
  %cmp336 = icmp eq i64 %sub334, %sub335
  br i1 %cmp336, label %if.then.337, label %if.end.343

if.then.337:                                      ; preds = %if.then.333
  %247 = load i64, i64* %best_below_byte, align 8
  %248 = load i64, i64* %charpos.addr, align 8
  %249 = load i64, i64* %best_below, align 8
  %sub339 = sub nsw i64 %248, %249
  %add340 = add nsw i64 %247, %sub339
  store i64 %add340, i64* %value338, align 8
  br label %do.body.341

do.body.341:                                      ; preds = %if.then.337
  br label %do.end.342

do.end.342:                                       ; preds = %do.body.341
  %250 = load i64, i64* %value338, align 8
  store i64 %250, i64* %retval
  br label %return

if.end.343:                                       ; preds = %if.then.333
  br label %if.end.344

if.end.344:                                       ; preds = %if.end.343, %if.end.331
  br label %if.end.345

if.end.345:                                       ; preds = %if.end.344, %land.lhs.true, %if.end.308
  %251 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %text346 = getelementptr inbounds %struct.buffer, %struct.buffer* %251, i32 0, i32 73
  %252 = load %struct.buffer_text*, %struct.buffer_text** %text346, align 8
  %markers = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %252, i32 0, i32 16
  %253 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %markers, align 8
  store %struct.Lisp_Marker* %253, %struct.Lisp_Marker** %tail, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.345
  %254 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %tail, align 8
  %tobool347 = icmp ne %struct.Lisp_Marker* %254, null
  br i1 %tobool347, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %255 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %tail, align 8
  %charpos349 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %255, i32 0, i32 3
  %256 = load i64, i64* %charpos349, align 8
  store i64 %256, i64* %this_charpos348, align 8
  store i8 0, i8* %changed350, align 1
  %257 = load i64, i64* %this_charpos348, align 8
  %258 = load i64, i64* %charpos.addr, align 8
  %cmp351 = icmp eq i64 %257, %258
  br i1 %cmp351, label %if.then.352, label %if.else.356

if.then.352:                                      ; preds = %for.body
  %259 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %tail, align 8
  %bytepos = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %259, i32 0, i32 4
  %260 = load i64, i64* %bytepos, align 8
  store i64 %260, i64* %value353, align 8
  br label %do.body.354

do.body.354:                                      ; preds = %if.then.352
  br label %do.end.355

do.end.355:                                       ; preds = %do.body.354
  %261 = load i64, i64* %value353, align 8
  store i64 %261, i64* %retval
  br label %return

if.else.356:                                      ; preds = %for.body
  %262 = load i64, i64* %this_charpos348, align 8
  %263 = load i64, i64* %charpos.addr, align 8
  %cmp357 = icmp sgt i64 %262, %263
  br i1 %cmp357, label %if.then.358, label %if.else.363

if.then.358:                                      ; preds = %if.else.356
  %264 = load i64, i64* %this_charpos348, align 8
  %265 = load i64, i64* %best_above, align 8
  %cmp359 = icmp slt i64 %264, %265
  br i1 %cmp359, label %if.then.360, label %if.end.362

if.then.360:                                      ; preds = %if.then.358
  %266 = load i64, i64* %this_charpos348, align 8
  store i64 %266, i64* %best_above, align 8
  %267 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %tail, align 8
  %bytepos361 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %267, i32 0, i32 4
  %268 = load i64, i64* %bytepos361, align 8
  store i64 %268, i64* %best_above_byte, align 8
  store i8 1, i8* %changed350, align 1
  br label %if.end.362

if.end.362:                                       ; preds = %if.then.360, %if.then.358
  br label %if.end.368

if.else.363:                                      ; preds = %if.else.356
  %269 = load i64, i64* %this_charpos348, align 8
  %270 = load i64, i64* %best_below, align 8
  %cmp364 = icmp sgt i64 %269, %270
  br i1 %cmp364, label %if.then.365, label %if.end.367

if.then.365:                                      ; preds = %if.else.363
  %271 = load i64, i64* %this_charpos348, align 8
  store i64 %271, i64* %best_below, align 8
  %272 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %tail, align 8
  %bytepos366 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %272, i32 0, i32 4
  %273 = load i64, i64* %bytepos366, align 8
  store i64 %273, i64* %best_below_byte, align 8
  store i8 1, i8* %changed350, align 1
  br label %if.end.367

if.end.367:                                       ; preds = %if.then.365, %if.else.363
  br label %if.end.368

if.end.368:                                       ; preds = %if.end.367, %if.end.362
  br label %if.end.369

if.end.369:                                       ; preds = %if.end.368
  %274 = load i8, i8* %changed350, align 1
  %tobool370 = trunc i8 %274 to i1
  br i1 %tobool370, label %if.then.371, label %if.end.382

if.then.371:                                      ; preds = %if.end.369
  %275 = load i64, i64* %best_above, align 8
  %276 = load i64, i64* %best_below, align 8
  %sub372 = sub nsw i64 %275, %276
  %277 = load i64, i64* %best_above_byte, align 8
  %278 = load i64, i64* %best_below_byte, align 8
  %sub373 = sub nsw i64 %277, %278
  %cmp374 = icmp eq i64 %sub372, %sub373
  br i1 %cmp374, label %if.then.375, label %if.end.381

if.then.375:                                      ; preds = %if.then.371
  %279 = load i64, i64* %best_below_byte, align 8
  %280 = load i64, i64* %charpos.addr, align 8
  %281 = load i64, i64* %best_below, align 8
  %sub377 = sub nsw i64 %280, %281
  %add378 = add nsw i64 %279, %sub377
  store i64 %add378, i64* %value376, align 8
  br label %do.body.379

do.body.379:                                      ; preds = %if.then.375
  br label %do.end.380

do.end.380:                                       ; preds = %do.body.379
  %282 = load i64, i64* %value376, align 8
  store i64 %282, i64* %retval
  br label %return

if.end.381:                                       ; preds = %if.then.371
  br label %if.end.382

if.end.382:                                       ; preds = %if.end.381, %if.end.369
  %283 = load i64, i64* %best_above, align 8
  %284 = load i64, i64* %best_below, align 8
  %sub383 = sub nsw i64 %283, %284
  %cmp384 = icmp slt i64 %sub383, 50
  br i1 %cmp384, label %if.then.385, label %if.end.386

if.then.385:                                      ; preds = %if.end.382
  br label %for.end

if.end.386:                                       ; preds = %if.end.382
  br label %for.inc

for.inc:                                          ; preds = %if.end.386
  %285 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %tail, align 8
  %next = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %285, i32 0, i32 2
  %286 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %next, align 8
  store %struct.Lisp_Marker* %286, %struct.Lisp_Marker** %tail, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.385, %for.cond
  %287 = load i64, i64* %charpos.addr, align 8
  %288 = load i64, i64* %best_below, align 8
  %sub387 = sub nsw i64 %287, %288
  %289 = load i64, i64* %best_above, align 8
  %290 = load i64, i64* %charpos.addr, align 8
  %sub388 = sub nsw i64 %289, %290
  %cmp389 = icmp slt i64 %sub387, %sub388
  br i1 %cmp389, label %if.then.390, label %if.else.440

if.then.390:                                      ; preds = %for.end
  %291 = load i64, i64* %charpos.addr, align 8
  %292 = load i64, i64* %best_below, align 8
  %sub391 = sub nsw i64 %291, %292
  %cmp392 = icmp sgt i64 %sub391, 5000
  %frombool = zext i1 %cmp392 to i8
  store i8 %frombool, i8* %record, align 1
  br label %while.cond

while.cond:                                       ; preds = %do.end.431, %if.then.390
  %293 = load i64, i64* %best_below, align 8
  %294 = load i64, i64* %charpos.addr, align 8
  %cmp393 = icmp ne i64 %293, %294
  br i1 %cmp393, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %295 = load i64, i64* %best_below, align 8
  %inc = add nsw i64 %295, 1
  store i64 %inc, i64* %best_below, align 8
  br label %do.body.394

do.body.394:                                      ; preds = %while.body
  %296 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %text395 = getelementptr inbounds %struct.buffer, %struct.buffer* %296, i32 0, i32 73
  %297 = load %struct.buffer_text*, %struct.buffer_text** %text395, align 8
  %beg = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %297, i32 0, i32 0
  %298 = load i8*, i8** %beg, align 8
  %299 = load i64, i64* %best_below_byte, align 8
  %add.ptr = getelementptr inbounds i8, i8* %298, i64 %299
  %add.ptr396 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %300 = load i64, i64* %best_below_byte, align 8
  %301 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %text397 = getelementptr inbounds %struct.buffer, %struct.buffer* %301, i32 0, i32 73
  %302 = load %struct.buffer_text*, %struct.buffer_text** %text397, align 8
  %gpt_byte398 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %302, i32 0, i32 3
  %303 = load i64, i64* %gpt_byte398, align 8
  %cmp399 = icmp sge i64 %300, %303
  br i1 %cmp399, label %cond.true.400, label %cond.false.402

cond.true.400:                                    ; preds = %do.body.394
  %304 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %text401 = getelementptr inbounds %struct.buffer, %struct.buffer* %304, i32 0, i32 73
  %305 = load %struct.buffer_text*, %struct.buffer_text** %text401, align 8
  %gap_size = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %305, i32 0, i32 5
  %306 = load i64, i64* %gap_size, align 8
  br label %cond.end.403

cond.false.402:                                   ; preds = %do.body.394
  br label %cond.end.403

cond.end.403:                                     ; preds = %cond.false.402, %cond.true.400
  %cond404 = phi i64 [ %306, %cond.true.400 ], [ 0, %cond.false.402 ]
  %add.ptr405 = getelementptr inbounds i8, i8* %add.ptr396, i64 %cond404
  store i8* %add.ptr405, i8** %chp, align 8
  %307 = load i8*, i8** %chp, align 8
  %308 = load i8, i8* %307, align 1
  %conv = zext i8 %308 to i32
  %and = and i32 %conv, 128
  %tobool406 = icmp ne i32 %and, 0
  br i1 %tobool406, label %cond.false.408, label %cond.true.407

cond.true.407:                                    ; preds = %cond.end.403
  br label %cond.end.427

cond.false.408:                                   ; preds = %cond.end.403
  %309 = load i8*, i8** %chp, align 8
  %310 = load i8, i8* %309, align 1
  %conv409 = zext i8 %310 to i32
  %and410 = and i32 %conv409, 32
  %tobool411 = icmp ne i32 %and410, 0
  br i1 %tobool411, label %cond.false.413, label %cond.true.412

cond.true.412:                                    ; preds = %cond.false.408
  br label %cond.end.425

cond.false.413:                                   ; preds = %cond.false.408
  %311 = load i8*, i8** %chp, align 8
  %312 = load i8, i8* %311, align 1
  %conv414 = zext i8 %312 to i32
  %and415 = and i32 %conv414, 16
  %tobool416 = icmp ne i32 %and415, 0
  br i1 %tobool416, label %cond.false.418, label %cond.true.417

cond.true.417:                                    ; preds = %cond.false.413
  br label %cond.end.423

cond.false.418:                                   ; preds = %cond.false.413
  %313 = load i8*, i8** %chp, align 8
  %314 = load i8, i8* %313, align 1
  %conv419 = zext i8 %314 to i32
  %and420 = and i32 %conv419, 8
  %tobool421 = icmp ne i32 %and420, 0
  %lnot = xor i1 %tobool421, true
  %cond422 = select i1 %lnot, i32 4, i32 5
  br label %cond.end.423

cond.end.423:                                     ; preds = %cond.false.418, %cond.true.417
  %cond424 = phi i32 [ 3, %cond.true.417 ], [ %cond422, %cond.false.418 ]
  br label %cond.end.425

cond.end.425:                                     ; preds = %cond.end.423, %cond.true.412
  %cond426 = phi i32 [ 2, %cond.true.412 ], [ %cond424, %cond.end.423 ]
  br label %cond.end.427

cond.end.427:                                     ; preds = %cond.end.425, %cond.true.407
  %cond428 = phi i32 [ 1, %cond.true.407 ], [ %cond426, %cond.end.425 ]
  %conv429 = sext i32 %cond428 to i64
  %315 = load i64, i64* %best_below_byte, align 8
  %add430 = add nsw i64 %315, %conv429
  store i64 %add430, i64* %best_below_byte, align 8
  br label %do.end.431

do.end.431:                                       ; preds = %cond.end.427
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %316 = load i8, i8* %record, align 1
  %tobool432 = trunc i8 %316 to i1
  br i1 %tobool432, label %if.then.433, label %if.end.435

if.then.433:                                      ; preds = %while.end
  %317 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %318 = load i64, i64* %best_below, align 8
  %319 = load i64, i64* %best_below_byte, align 8
  %call434 = call i64 @build_marker(%struct.buffer* %317, i64 %318, i64 %319)
  br label %if.end.435

if.end.435:                                       ; preds = %if.then.433, %while.end
  br label %do.body.436

do.body.436:                                      ; preds = %if.end.435
  br label %do.end.437

do.end.437:                                       ; preds = %do.body.436
  %320 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  store %struct.buffer* %320, %struct.buffer** @cached_buffer, align 8
  %321 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %text438 = getelementptr inbounds %struct.buffer, %struct.buffer* %321, i32 0, i32 73
  %322 = load %struct.buffer_text*, %struct.buffer_text** %text438, align 8
  %modiff439 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %322, i32 0, i32 6
  %323 = load i64, i64* %modiff439, align 8
  store i64 %323, i64* @cached_modiff, align 8
  %324 = load i64, i64* %best_below, align 8
  store i64 %324, i64* @cached_charpos, align 8
  %325 = load i64, i64* %best_below_byte, align 8
  store i64 %325, i64* @cached_bytepos, align 8
  %326 = load i64, i64* %best_below_byte, align 8
  store i64 %326, i64* %retval
  br label %return

if.else.440:                                      ; preds = %for.end
  %327 = load i64, i64* %best_above, align 8
  %328 = load i64, i64* %charpos.addr, align 8
  %sub442 = sub nsw i64 %327, %328
  %cmp443 = icmp sgt i64 %sub442, 5000
  %frombool445 = zext i1 %cmp443 to i8
  store i8 %frombool445, i8* %record441, align 1
  br label %while.cond.446

while.cond.446:                                   ; preds = %do.end.480, %if.else.440
  %329 = load i64, i64* %best_above, align 8
  %330 = load i64, i64* %charpos.addr, align 8
  %cmp447 = icmp ne i64 %329, %330
  br i1 %cmp447, label %while.body.449, label %while.end.481

while.body.449:                                   ; preds = %while.cond.446
  %331 = load i64, i64* %best_above, align 8
  %dec = add nsw i64 %331, -1
  store i64 %dec, i64* %best_above, align 8
  br label %do.body.450

do.body.450:                                      ; preds = %while.body.449
  %332 = load i64, i64* %best_above_byte, align 8
  %dec452 = add nsw i64 %332, -1
  store i64 %dec452, i64* %best_above_byte, align 8
  %333 = load i64, i64* %best_above_byte, align 8
  %334 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %text453 = getelementptr inbounds %struct.buffer, %struct.buffer* %334, i32 0, i32 73
  %335 = load %struct.buffer_text*, %struct.buffer_text** %text453, align 8
  %gpt_byte454 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %335, i32 0, i32 3
  %336 = load i64, i64* %gpt_byte454, align 8
  %cmp455 = icmp slt i64 %333, %336
  br i1 %cmp455, label %if.then.457, label %if.else.462

if.then.457:                                      ; preds = %do.body.450
  %337 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %text458 = getelementptr inbounds %struct.buffer, %struct.buffer* %337, i32 0, i32 73
  %338 = load %struct.buffer_text*, %struct.buffer_text** %text458, align 8
  %beg459 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %338, i32 0, i32 0
  %339 = load i8*, i8** %beg459, align 8
  %340 = load i64, i64* %best_above_byte, align 8
  %add.ptr460 = getelementptr inbounds i8, i8* %339, i64 %340
  %add.ptr461 = getelementptr inbounds i8, i8* %add.ptr460, i64 -1
  store i8* %add.ptr461, i8** %chp451, align 8
  br label %if.end.470

if.else.462:                                      ; preds = %do.body.450
  %341 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %text463 = getelementptr inbounds %struct.buffer, %struct.buffer* %341, i32 0, i32 73
  %342 = load %struct.buffer_text*, %struct.buffer_text** %text463, align 8
  %beg464 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %342, i32 0, i32 0
  %343 = load i8*, i8** %beg464, align 8
  %344 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %text465 = getelementptr inbounds %struct.buffer, %struct.buffer* %344, i32 0, i32 73
  %345 = load %struct.buffer_text*, %struct.buffer_text** %text465, align 8
  %gap_size466 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %345, i32 0, i32 5
  %346 = load i64, i64* %gap_size466, align 8
  %add.ptr467 = getelementptr inbounds i8, i8* %343, i64 %346
  %347 = load i64, i64* %best_above_byte, align 8
  %add.ptr468 = getelementptr inbounds i8, i8* %add.ptr467, i64 %347
  %add.ptr469 = getelementptr inbounds i8, i8* %add.ptr468, i64 -1
  store i8* %add.ptr469, i8** %chp451, align 8
  br label %if.end.470

if.end.470:                                       ; preds = %if.else.462, %if.then.457
  br label %while.cond.471

while.cond.471:                                   ; preds = %while.body.477, %if.end.470
  %348 = load i8*, i8** %chp451, align 8
  %349 = load i8, i8* %348, align 1
  %conv472 = zext i8 %349 to i32
  %and473 = and i32 %conv472, 192
  %cmp474 = icmp ne i32 %and473, 128
  %lnot476 = xor i1 %cmp474, true
  br i1 %lnot476, label %while.body.477, label %while.end.479

while.body.477:                                   ; preds = %while.cond.471
  %350 = load i8*, i8** %chp451, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %350, i32 -1
  store i8* %incdec.ptr, i8** %chp451, align 8
  %351 = load i64, i64* %best_above_byte, align 8
  %dec478 = add nsw i64 %351, -1
  store i64 %dec478, i64* %best_above_byte, align 8
  br label %while.cond.471

while.end.479:                                    ; preds = %while.cond.471
  br label %do.end.480

do.end.480:                                       ; preds = %while.end.479
  br label %while.cond.446

while.end.481:                                    ; preds = %while.cond.446
  %352 = load i8, i8* %record441, align 1
  %tobool482 = trunc i8 %352 to i1
  br i1 %tobool482, label %if.then.483, label %if.end.485

if.then.483:                                      ; preds = %while.end.481
  %353 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %354 = load i64, i64* %best_above, align 8
  %355 = load i64, i64* %best_above_byte, align 8
  %call484 = call i64 @build_marker(%struct.buffer* %353, i64 %354, i64 %355)
  br label %if.end.485

if.end.485:                                       ; preds = %if.then.483, %while.end.481
  br label %do.body.486

do.body.486:                                      ; preds = %if.end.485
  br label %do.end.487

do.end.487:                                       ; preds = %do.body.486
  %356 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  store %struct.buffer* %356, %struct.buffer** @cached_buffer, align 8
  %357 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %text488 = getelementptr inbounds %struct.buffer, %struct.buffer* %357, i32 0, i32 73
  %358 = load %struct.buffer_text*, %struct.buffer_text** %text488, align 8
  %modiff489 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %358, i32 0, i32 6
  %359 = load i64, i64* %modiff489, align 8
  store i64 %359, i64* @cached_modiff, align 8
  %360 = load i64, i64* %best_above, align 8
  store i64 %360, i64* @cached_charpos, align 8
  %361 = load i64, i64* %best_above_byte, align 8
  store i64 %361, i64* @cached_bytepos, align 8
  %362 = load i64, i64* %best_above_byte, align 8
  store i64 %362, i64* %retval
  br label %return

return:                                           ; preds = %do.end.487, %do.end.437, %do.end.380, %do.end.355, %do.end.342, %do.end.319, %do.end.306, %do.end.251, %do.end.213, %do.end.158, %do.end.120, %do.end.93, %do.end.82, %do.end, %if.then
  %363 = load i64, i64* %retval
  ret i64 %363
}

declare i64 @builtin_lisp_symbol(i32) #1

; Function Attrs: nounwind uwtable
define i64 @marker_position(i64 %marker) #0 {
entry:
  %marker.addr = alloca i64, align 8
  %m = alloca %struct.Lisp_Marker*, align 8
  %buf = alloca %struct.buffer*, align 8
  store i64 %marker, i64* %marker.addr, align 8
  %0 = load i64, i64* %marker.addr, align 8
  %call = call %struct.Lisp_Marker* @XMARKER(i64 %0)
  store %struct.Lisp_Marker* %call, %struct.Lisp_Marker** %m, align 8
  %1 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %m, align 8
  %buffer = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %1, i32 0, i32 1
  %2 = load %struct.buffer*, %struct.buffer** %buffer, align 8
  store %struct.buffer* %2, %struct.buffer** %buf, align 8
  %3 = load %struct.buffer*, %struct.buffer** %buf, align 8
  %tobool = icmp ne %struct.buffer* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0)) #3
  unreachable

if.end:                                           ; preds = %entry
  %4 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %m, align 8
  %charpos = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %4, i32 0, i32 3
  %5 = load i64, i64* %charpos, align 8
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define i64 @marker_byte_position(i64 %marker) #0 {
entry:
  %marker.addr = alloca i64, align 8
  %m = alloca %struct.Lisp_Marker*, align 8
  %buf = alloca %struct.buffer*, align 8
  store i64 %marker, i64* %marker.addr, align 8
  %0 = load i64, i64* %marker.addr, align 8
  %call = call %struct.Lisp_Marker* @XMARKER(i64 %0)
  store %struct.Lisp_Marker* %call, %struct.Lisp_Marker** %m, align 8
  %1 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %m, align 8
  %buffer = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %1, i32 0, i32 1
  %2 = load %struct.buffer*, %struct.buffer** %buffer, align 8
  store %struct.buffer* %2, %struct.buffer** %buf, align 8
  %3 = load %struct.buffer*, %struct.buffer** %buf, align 8
  %tobool = icmp ne %struct.buffer* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0)) #3
  unreachable

if.end:                                           ; preds = %entry
  %4 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %m, align 8
  %bytepos = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %4, i32 0, i32 4
  %5 = load i64, i64* %bytepos, align 8
  ret i64 %5
}

declare i64 @build_marker(%struct.buffer*, i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @buf_bytepos_to_charpos(%struct.buffer* %b, i64 %bytepos) #0 {
entry:
  %retval = alloca i64, align 8
  %b.addr = alloca %struct.buffer*, align 8
  %bytepos.addr = alloca i64, align 8
  %tail = alloca %struct.Lisp_Marker*, align 8
  %best_above = alloca i64, align 8
  %best_above_byte = alloca i64, align 8
  %best_below = alloca i64, align 8
  %best_below_byte = alloca i64, align 8
  %this_bytepos = alloca i64, align 8
  %changed = alloca i32, align 4
  %value = alloca i64, align 8
  %value78 = alloca i64, align 8
  %this_bytepos85 = alloca i64, align 8
  %changed87 = alloca i32, align 4
  %value90 = alloca i64, align 8
  %value116 = alloca i64, align 8
  %this_bytepos123 = alloca i64, align 8
  %changed138 = alloca i32, align 4
  %value141 = alloca i64, align 8
  %value209 = alloca i64, align 8
  %this_bytepos216 = alloca i64, align 8
  %changed231 = alloca i32, align 4
  %value234 = alloca i64, align 8
  %value302 = alloca i64, align 8
  %this_bytepos313 = alloca i64, align 8
  %changed314 = alloca i32, align 4
  %value317 = alloca i64, align 8
  %value338 = alloca i64, align 8
  %this_bytepos348 = alloca i64, align 8
  %changed350 = alloca i32, align 4
  %value353 = alloca i64, align 8
  %value376 = alloca i64, align 8
  %record = alloca i8, align 1
  %chp = alloca i8*, align 8
  %record446 = alloca i8, align 1
  %chp456 = alloca i8*, align 8
  store %struct.buffer* %b, %struct.buffer** %b.addr, align 8
  store i64 %bytepos, i64* %bytepos.addr, align 8
  %0 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 73
  %1 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %z = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %1, i32 0, i32 2
  %2 = load i64, i64* %z, align 8
  store i64 %2, i64* %best_above, align 8
  %3 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %text1 = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i32 0, i32 73
  %4 = load %struct.buffer_text*, %struct.buffer_text** %text1, align 8
  %z_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %4, i32 0, i32 4
  %5 = load i64, i64* %z_byte, align 8
  store i64 %5, i64* %best_above_byte, align 8
  %6 = load i64, i64* %best_above, align 8
  %7 = load i64, i64* %best_above_byte, align 8
  %cmp = icmp eq i64 %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i64, i64* %bytepos.addr, align 8
  store i64 %8, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i64 1, i64* %best_below, align 8
  store i64 1, i64* %best_below_byte, align 8
  %9 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %10 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp2 = icmp eq %struct.buffer* %9, %10
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %11 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %11, i32 0, i32 76
  %12 = load i64, i64* %pt_byte, align 8
  %add = add nsw i64 %12, 0
  br label %cond.end.9

cond.false:                                       ; preds = %if.end
  %13 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %pt_marker_ = getelementptr inbounds %struct.buffer, %struct.buffer* %13, i32 0, i32 45
  %14 = load i64, i64* %pt_marker_, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp3 = icmp eq i64 %14, %call
  br i1 %cmp3, label %cond.true.4, label %cond.false.6

cond.true.4:                                      ; preds = %cond.false
  %15 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %pt_byte5 = getelementptr inbounds %struct.buffer, %struct.buffer* %15, i32 0, i32 76
  %16 = load i64, i64* %pt_byte5, align 8
  br label %cond.end

cond.false.6:                                     ; preds = %cond.false
  %17 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %pt_marker_7 = getelementptr inbounds %struct.buffer, %struct.buffer* %17, i32 0, i32 45
  %18 = load i64, i64* %pt_marker_7, align 8
  %call8 = call i64 @marker_byte_position(i64 %18)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.6, %cond.true.4
  %cond = phi i64 [ %16, %cond.true.4 ], [ %call8, %cond.false.6 ]
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.end, %cond.true
  %cond10 = phi i64 [ %add, %cond.true ], [ %cond, %cond.end ]
  store i64 %cond10, i64* %this_bytepos, align 8
  store i32 0, i32* %changed, align 4
  %19 = load i64, i64* %this_bytepos, align 8
  %20 = load i64, i64* %bytepos.addr, align 8
  %cmp11 = icmp eq i64 %19, %20
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %cond.end.9
  %21 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %22 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp13 = icmp eq %struct.buffer* %21, %22
  br i1 %cmp13, label %cond.true.14, label %cond.false.16

cond.true.14:                                     ; preds = %if.then.12
  %23 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %23, i32 0, i32 75
  %24 = load i64, i64* %pt, align 8
  %add15 = add nsw i64 %24, 0
  br label %cond.end.27

cond.false.16:                                    ; preds = %if.then.12
  %25 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %pt_marker_17 = getelementptr inbounds %struct.buffer, %struct.buffer* %25, i32 0, i32 45
  %26 = load i64, i64* %pt_marker_17, align 8
  %call18 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp19 = icmp eq i64 %26, %call18
  br i1 %cmp19, label %cond.true.20, label %cond.false.22

cond.true.20:                                     ; preds = %cond.false.16
  %27 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %pt21 = getelementptr inbounds %struct.buffer, %struct.buffer* %27, i32 0, i32 75
  %28 = load i64, i64* %pt21, align 8
  br label %cond.end.25

cond.false.22:                                    ; preds = %cond.false.16
  %29 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %pt_marker_23 = getelementptr inbounds %struct.buffer, %struct.buffer* %29, i32 0, i32 45
  %30 = load i64, i64* %pt_marker_23, align 8
  %call24 = call i64 @marker_position(i64 %30)
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.22, %cond.true.20
  %cond26 = phi i64 [ %28, %cond.true.20 ], [ %call24, %cond.false.22 ]
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.end.25, %cond.true.14
  %cond28 = phi i64 [ %add15, %cond.true.14 ], [ %cond26, %cond.end.25 ]
  store i64 %cond28, i64* %value, align 8
  br label %do.body

do.body:                                          ; preds = %cond.end.27
  br label %do.end

do.end:                                           ; preds = %do.body
  %31 = load i64, i64* %value, align 8
  store i64 %31, i64* %retval
  br label %return

if.else:                                          ; preds = %cond.end.9
  %32 = load i64, i64* %this_bytepos, align 8
  %33 = load i64, i64* %bytepos.addr, align 8
  %cmp29 = icmp sgt i64 %32, %33
  br i1 %cmp29, label %if.then.30, label %if.else.51

if.then.30:                                       ; preds = %if.else
  %34 = load i64, i64* %this_bytepos, align 8
  %35 = load i64, i64* %best_above_byte, align 8
  %cmp31 = icmp slt i64 %34, %35
  br i1 %cmp31, label %if.then.32, label %if.end.50

if.then.32:                                       ; preds = %if.then.30
  %36 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %37 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp33 = icmp eq %struct.buffer* %36, %37
  br i1 %cmp33, label %cond.true.34, label %cond.false.37

cond.true.34:                                     ; preds = %if.then.32
  %38 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt35 = getelementptr inbounds %struct.buffer, %struct.buffer* %38, i32 0, i32 75
  %39 = load i64, i64* %pt35, align 8
  %add36 = add nsw i64 %39, 0
  br label %cond.end.48

cond.false.37:                                    ; preds = %if.then.32
  %40 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %pt_marker_38 = getelementptr inbounds %struct.buffer, %struct.buffer* %40, i32 0, i32 45
  %41 = load i64, i64* %pt_marker_38, align 8
  %call39 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp40 = icmp eq i64 %41, %call39
  br i1 %cmp40, label %cond.true.41, label %cond.false.43

cond.true.41:                                     ; preds = %cond.false.37
  %42 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %pt42 = getelementptr inbounds %struct.buffer, %struct.buffer* %42, i32 0, i32 75
  %43 = load i64, i64* %pt42, align 8
  br label %cond.end.46

cond.false.43:                                    ; preds = %cond.false.37
  %44 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %pt_marker_44 = getelementptr inbounds %struct.buffer, %struct.buffer* %44, i32 0, i32 45
  %45 = load i64, i64* %pt_marker_44, align 8
  %call45 = call i64 @marker_position(i64 %45)
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.false.43, %cond.true.41
  %cond47 = phi i64 [ %43, %cond.true.41 ], [ %call45, %cond.false.43 ]
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.end.46, %cond.true.34
  %cond49 = phi i64 [ %add36, %cond.true.34 ], [ %cond47, %cond.end.46 ]
  store i64 %cond49, i64* %best_above, align 8
  %46 = load i64, i64* %this_bytepos, align 8
  store i64 %46, i64* %best_above_byte, align 8
  store i32 1, i32* %changed, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %cond.end.48, %if.then.30
  br label %if.end.72

if.else.51:                                       ; preds = %if.else
  %47 = load i64, i64* %this_bytepos, align 8
  %48 = load i64, i64* %best_below_byte, align 8
  %cmp52 = icmp sgt i64 %47, %48
  br i1 %cmp52, label %if.then.53, label %if.end.71

if.then.53:                                       ; preds = %if.else.51
  %49 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %50 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp54 = icmp eq %struct.buffer* %49, %50
  br i1 %cmp54, label %cond.true.55, label %cond.false.58

cond.true.55:                                     ; preds = %if.then.53
  %51 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt56 = getelementptr inbounds %struct.buffer, %struct.buffer* %51, i32 0, i32 75
  %52 = load i64, i64* %pt56, align 8
  %add57 = add nsw i64 %52, 0
  br label %cond.end.69

cond.false.58:                                    ; preds = %if.then.53
  %53 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %pt_marker_59 = getelementptr inbounds %struct.buffer, %struct.buffer* %53, i32 0, i32 45
  %54 = load i64, i64* %pt_marker_59, align 8
  %call60 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp61 = icmp eq i64 %54, %call60
  br i1 %cmp61, label %cond.true.62, label %cond.false.64

cond.true.62:                                     ; preds = %cond.false.58
  %55 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %pt63 = getelementptr inbounds %struct.buffer, %struct.buffer* %55, i32 0, i32 75
  %56 = load i64, i64* %pt63, align 8
  br label %cond.end.67

cond.false.64:                                    ; preds = %cond.false.58
  %57 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %pt_marker_65 = getelementptr inbounds %struct.buffer, %struct.buffer* %57, i32 0, i32 45
  %58 = load i64, i64* %pt_marker_65, align 8
  %call66 = call i64 @marker_position(i64 %58)
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.64, %cond.true.62
  %cond68 = phi i64 [ %56, %cond.true.62 ], [ %call66, %cond.false.64 ]
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.end.67, %cond.true.55
  %cond70 = phi i64 [ %add57, %cond.true.55 ], [ %cond68, %cond.end.67 ]
  store i64 %cond70, i64* %best_below, align 8
  %59 = load i64, i64* %this_bytepos, align 8
  store i64 %59, i64* %best_below_byte, align 8
  store i32 1, i32* %changed, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %cond.end.69, %if.else.51
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.end.50
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72
  %60 = load i32, i32* %changed, align 4
  %tobool = icmp ne i32 %60, 0
  br i1 %tobool, label %if.then.74, label %if.end.84

if.then.74:                                       ; preds = %if.end.73
  %61 = load i64, i64* %best_above, align 8
  %62 = load i64, i64* %best_below, align 8
  %sub = sub nsw i64 %61, %62
  %63 = load i64, i64* %best_above_byte, align 8
  %64 = load i64, i64* %best_below_byte, align 8
  %sub75 = sub nsw i64 %63, %64
  %cmp76 = icmp eq i64 %sub, %sub75
  br i1 %cmp76, label %if.then.77, label %if.end.83

if.then.77:                                       ; preds = %if.then.74
  %65 = load i64, i64* %best_below, align 8
  %66 = load i64, i64* %bytepos.addr, align 8
  %67 = load i64, i64* %best_below_byte, align 8
  %sub79 = sub nsw i64 %66, %67
  %add80 = add nsw i64 %65, %sub79
  store i64 %add80, i64* %value78, align 8
  br label %do.body.81

do.body.81:                                       ; preds = %if.then.77
  br label %do.end.82

do.end.82:                                        ; preds = %do.body.81
  %68 = load i64, i64* %value78, align 8
  store i64 %68, i64* %retval
  br label %return

if.end.83:                                        ; preds = %if.then.74
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.end.73
  %69 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %text86 = getelementptr inbounds %struct.buffer, %struct.buffer* %69, i32 0, i32 73
  %70 = load %struct.buffer_text*, %struct.buffer_text** %text86, align 8
  %gpt_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %70, i32 0, i32 3
  %71 = load i64, i64* %gpt_byte, align 8
  store i64 %71, i64* %this_bytepos85, align 8
  store i32 0, i32* %changed87, align 4
  %72 = load i64, i64* %this_bytepos85, align 8
  %73 = load i64, i64* %bytepos.addr, align 8
  %cmp88 = icmp eq i64 %72, %73
  br i1 %cmp88, label %if.then.89, label %if.else.94

if.then.89:                                       ; preds = %if.end.84
  %74 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %text91 = getelementptr inbounds %struct.buffer, %struct.buffer* %74, i32 0, i32 73
  %75 = load %struct.buffer_text*, %struct.buffer_text** %text91, align 8
  %gpt = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %75, i32 0, i32 1
  %76 = load i64, i64* %gpt, align 8
  store i64 %76, i64* %value90, align 8
  br label %do.body.92

do.body.92:                                       ; preds = %if.then.89
  br label %do.end.93

do.end.93:                                        ; preds = %do.body.92
  %77 = load i64, i64* %value90, align 8
  store i64 %77, i64* %retval
  br label %return

if.else.94:                                       ; preds = %if.end.84
  %78 = load i64, i64* %this_bytepos85, align 8
  %79 = load i64, i64* %bytepos.addr, align 8
  %cmp95 = icmp sgt i64 %78, %79
  br i1 %cmp95, label %if.then.96, label %if.else.102

if.then.96:                                       ; preds = %if.else.94
  %80 = load i64, i64* %this_bytepos85, align 8
  %81 = load i64, i64* %best_above_byte, align 8
  %cmp97 = icmp slt i64 %80, %81
  br i1 %cmp97, label %if.then.98, label %if.end.101

if.then.98:                                       ; preds = %if.then.96
  %82 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %text99 = getelementptr inbounds %struct.buffer, %struct.buffer* %82, i32 0, i32 73
  %83 = load %struct.buffer_text*, %struct.buffer_text** %text99, align 8
  %gpt100 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %83, i32 0, i32 1
  %84 = load i64, i64* %gpt100, align 8
  store i64 %84, i64* %best_above, align 8
  %85 = load i64, i64* %this_bytepos85, align 8
  store i64 %85, i64* %best_above_byte, align 8
  store i32 1, i32* %changed87, align 4
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.98, %if.then.96
  br label %if.end.108

if.else.102:                                      ; preds = %if.else.94
  %86 = load i64, i64* %this_bytepos85, align 8
  %87 = load i64, i64* %best_below_byte, align 8
  %cmp103 = icmp sgt i64 %86, %87
  br i1 %cmp103, label %if.then.104, label %if.end.107

if.then.104:                                      ; preds = %if.else.102
  %88 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %text105 = getelementptr inbounds %struct.buffer, %struct.buffer* %88, i32 0, i32 73
  %89 = load %struct.buffer_text*, %struct.buffer_text** %text105, align 8
  %gpt106 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %89, i32 0, i32 1
  %90 = load i64, i64* %gpt106, align 8
  store i64 %90, i64* %best_below, align 8
  %91 = load i64, i64* %this_bytepos85, align 8
  store i64 %91, i64* %best_below_byte, align 8
  store i32 1, i32* %changed87, align 4
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.104, %if.else.102
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.end.101
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108
  %92 = load i32, i32* %changed87, align 4
  %tobool110 = icmp ne i32 %92, 0
  br i1 %tobool110, label %if.then.111, label %if.end.122

if.then.111:                                      ; preds = %if.end.109
  %93 = load i64, i64* %best_above, align 8
  %94 = load i64, i64* %best_below, align 8
  %sub112 = sub nsw i64 %93, %94
  %95 = load i64, i64* %best_above_byte, align 8
  %96 = load i64, i64* %best_below_byte, align 8
  %sub113 = sub nsw i64 %95, %96
  %cmp114 = icmp eq i64 %sub112, %sub113
  br i1 %cmp114, label %if.then.115, label %if.end.121

if.then.115:                                      ; preds = %if.then.111
  %97 = load i64, i64* %best_below, align 8
  %98 = load i64, i64* %bytepos.addr, align 8
  %99 = load i64, i64* %best_below_byte, align 8
  %sub117 = sub nsw i64 %98, %99
  %add118 = add nsw i64 %97, %sub117
  store i64 %add118, i64* %value116, align 8
  br label %do.body.119

do.body.119:                                      ; preds = %if.then.115
  br label %do.end.120

do.end.120:                                       ; preds = %do.body.119
  %100 = load i64, i64* %value116, align 8
  store i64 %100, i64* %retval
  br label %return

if.end.121:                                       ; preds = %if.then.111
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %if.end.109
  %101 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %102 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp124 = icmp eq %struct.buffer* %101, %102
  br i1 %cmp124, label %cond.true.125, label %cond.false.126

cond.true.125:                                    ; preds = %if.end.122
  %103 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %103, i32 0, i32 78
  %104 = load i64, i64* %begv_byte, align 8
  br label %cond.end.136

cond.false.126:                                   ; preds = %if.end.122
  %105 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %begv_marker_ = getelementptr inbounds %struct.buffer, %struct.buffer* %105, i32 0, i32 46
  %106 = load i64, i64* %begv_marker_, align 8
  %call127 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp128 = icmp eq i64 %106, %call127
  br i1 %cmp128, label %cond.true.129, label %cond.false.131

cond.true.129:                                    ; preds = %cond.false.126
  %107 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %begv_byte130 = getelementptr inbounds %struct.buffer, %struct.buffer* %107, i32 0, i32 78
  %108 = load i64, i64* %begv_byte130, align 8
  br label %cond.end.134

cond.false.131:                                   ; preds = %cond.false.126
  %109 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %begv_marker_132 = getelementptr inbounds %struct.buffer, %struct.buffer* %109, i32 0, i32 46
  %110 = load i64, i64* %begv_marker_132, align 8
  %call133 = call i64 @marker_byte_position(i64 %110)
  br label %cond.end.134

cond.end.134:                                     ; preds = %cond.false.131, %cond.true.129
  %cond135 = phi i64 [ %108, %cond.true.129 ], [ %call133, %cond.false.131 ]
  br label %cond.end.136

cond.end.136:                                     ; preds = %cond.end.134, %cond.true.125
  %cond137 = phi i64 [ %104, %cond.true.125 ], [ %cond135, %cond.end.134 ]
  store i64 %cond137, i64* %this_bytepos123, align 8
  store i32 0, i32* %changed138, align 4
  %111 = load i64, i64* %this_bytepos123, align 8
  %112 = load i64, i64* %bytepos.addr, align 8
  %cmp139 = icmp eq i64 %111, %112
  br i1 %cmp139, label %if.then.140, label %if.else.159

if.then.140:                                      ; preds = %cond.end.136
  %113 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %114 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp142 = icmp eq %struct.buffer* %113, %114
  br i1 %cmp142, label %cond.true.143, label %cond.false.144

cond.true.143:                                    ; preds = %if.then.140
  %115 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %115, i32 0, i32 77
  %116 = load i64, i64* %begv, align 8
  br label %cond.end.155

cond.false.144:                                   ; preds = %if.then.140
  %117 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %begv_marker_145 = getelementptr inbounds %struct.buffer, %struct.buffer* %117, i32 0, i32 46
  %118 = load i64, i64* %begv_marker_145, align 8
  %call146 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp147 = icmp eq i64 %118, %call146
  br i1 %cmp147, label %cond.true.148, label %cond.false.150

cond.true.148:                                    ; preds = %cond.false.144
  %119 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %begv149 = getelementptr inbounds %struct.buffer, %struct.buffer* %119, i32 0, i32 77
  %120 = load i64, i64* %begv149, align 8
  br label %cond.end.153

cond.false.150:                                   ; preds = %cond.false.144
  %121 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %begv_marker_151 = getelementptr inbounds %struct.buffer, %struct.buffer* %121, i32 0, i32 46
  %122 = load i64, i64* %begv_marker_151, align 8
  %call152 = call i64 @marker_position(i64 %122)
  br label %cond.end.153

cond.end.153:                                     ; preds = %cond.false.150, %cond.true.148
  %cond154 = phi i64 [ %120, %cond.true.148 ], [ %call152, %cond.false.150 ]
  br label %cond.end.155

cond.end.155:                                     ; preds = %cond.end.153, %cond.true.143
  %cond156 = phi i64 [ %116, %cond.true.143 ], [ %cond154, %cond.end.153 ]
  store i64 %cond156, i64* %value141, align 8
  br label %do.body.157

do.body.157:                                      ; preds = %cond.end.155
  br label %do.end.158

do.end.158:                                       ; preds = %do.body.157
  %123 = load i64, i64* %value141, align 8
  store i64 %123, i64* %retval
  br label %return

if.else.159:                                      ; preds = %cond.end.136
  %124 = load i64, i64* %this_bytepos123, align 8
  %125 = load i64, i64* %bytepos.addr, align 8
  %cmp160 = icmp sgt i64 %124, %125
  br i1 %cmp160, label %if.then.161, label %if.else.181

if.then.161:                                      ; preds = %if.else.159
  %126 = load i64, i64* %this_bytepos123, align 8
  %127 = load i64, i64* %best_above_byte, align 8
  %cmp162 = icmp slt i64 %126, %127
  br i1 %cmp162, label %if.then.163, label %if.end.180

if.then.163:                                      ; preds = %if.then.161
  %128 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %129 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp164 = icmp eq %struct.buffer* %128, %129
  br i1 %cmp164, label %cond.true.165, label %cond.false.167

cond.true.165:                                    ; preds = %if.then.163
  %130 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv166 = getelementptr inbounds %struct.buffer, %struct.buffer* %130, i32 0, i32 77
  %131 = load i64, i64* %begv166, align 8
  br label %cond.end.178

cond.false.167:                                   ; preds = %if.then.163
  %132 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %begv_marker_168 = getelementptr inbounds %struct.buffer, %struct.buffer* %132, i32 0, i32 46
  %133 = load i64, i64* %begv_marker_168, align 8
  %call169 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp170 = icmp eq i64 %133, %call169
  br i1 %cmp170, label %cond.true.171, label %cond.false.173

cond.true.171:                                    ; preds = %cond.false.167
  %134 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %begv172 = getelementptr inbounds %struct.buffer, %struct.buffer* %134, i32 0, i32 77
  %135 = load i64, i64* %begv172, align 8
  br label %cond.end.176

cond.false.173:                                   ; preds = %cond.false.167
  %136 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %begv_marker_174 = getelementptr inbounds %struct.buffer, %struct.buffer* %136, i32 0, i32 46
  %137 = load i64, i64* %begv_marker_174, align 8
  %call175 = call i64 @marker_position(i64 %137)
  br label %cond.end.176

cond.end.176:                                     ; preds = %cond.false.173, %cond.true.171
  %cond177 = phi i64 [ %135, %cond.true.171 ], [ %call175, %cond.false.173 ]
  br label %cond.end.178

cond.end.178:                                     ; preds = %cond.end.176, %cond.true.165
  %cond179 = phi i64 [ %131, %cond.true.165 ], [ %cond177, %cond.end.176 ]
  store i64 %cond179, i64* %best_above, align 8
  %138 = load i64, i64* %this_bytepos123, align 8
  store i64 %138, i64* %best_above_byte, align 8
  store i32 1, i32* %changed138, align 4
  br label %if.end.180

if.end.180:                                       ; preds = %cond.end.178, %if.then.161
  br label %if.end.201

if.else.181:                                      ; preds = %if.else.159
  %139 = load i64, i64* %this_bytepos123, align 8
  %140 = load i64, i64* %best_below_byte, align 8
  %cmp182 = icmp sgt i64 %139, %140
  br i1 %cmp182, label %if.then.183, label %if.end.200

if.then.183:                                      ; preds = %if.else.181
  %141 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %142 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp184 = icmp eq %struct.buffer* %141, %142
  br i1 %cmp184, label %cond.true.185, label %cond.false.187

cond.true.185:                                    ; preds = %if.then.183
  %143 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv186 = getelementptr inbounds %struct.buffer, %struct.buffer* %143, i32 0, i32 77
  %144 = load i64, i64* %begv186, align 8
  br label %cond.end.198

cond.false.187:                                   ; preds = %if.then.183
  %145 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %begv_marker_188 = getelementptr inbounds %struct.buffer, %struct.buffer* %145, i32 0, i32 46
  %146 = load i64, i64* %begv_marker_188, align 8
  %call189 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp190 = icmp eq i64 %146, %call189
  br i1 %cmp190, label %cond.true.191, label %cond.false.193

cond.true.191:                                    ; preds = %cond.false.187
  %147 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %begv192 = getelementptr inbounds %struct.buffer, %struct.buffer* %147, i32 0, i32 77
  %148 = load i64, i64* %begv192, align 8
  br label %cond.end.196

cond.false.193:                                   ; preds = %cond.false.187
  %149 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %begv_marker_194 = getelementptr inbounds %struct.buffer, %struct.buffer* %149, i32 0, i32 46
  %150 = load i64, i64* %begv_marker_194, align 8
  %call195 = call i64 @marker_position(i64 %150)
  br label %cond.end.196

cond.end.196:                                     ; preds = %cond.false.193, %cond.true.191
  %cond197 = phi i64 [ %148, %cond.true.191 ], [ %call195, %cond.false.193 ]
  br label %cond.end.198

cond.end.198:                                     ; preds = %cond.end.196, %cond.true.185
  %cond199 = phi i64 [ %144, %cond.true.185 ], [ %cond197, %cond.end.196 ]
  store i64 %cond199, i64* %best_below, align 8
  %151 = load i64, i64* %this_bytepos123, align 8
  store i64 %151, i64* %best_below_byte, align 8
  store i32 1, i32* %changed138, align 4
  br label %if.end.200

if.end.200:                                       ; preds = %cond.end.198, %if.else.181
  br label %if.end.201

if.end.201:                                       ; preds = %if.end.200, %if.end.180
  br label %if.end.202

if.end.202:                                       ; preds = %if.end.201
  %152 = load i32, i32* %changed138, align 4
  %tobool203 = icmp ne i32 %152, 0
  br i1 %tobool203, label %if.then.204, label %if.end.215

if.then.204:                                      ; preds = %if.end.202
  %153 = load i64, i64* %best_above, align 8
  %154 = load i64, i64* %best_below, align 8
  %sub205 = sub nsw i64 %153, %154
  %155 = load i64, i64* %best_above_byte, align 8
  %156 = load i64, i64* %best_below_byte, align 8
  %sub206 = sub nsw i64 %155, %156
  %cmp207 = icmp eq i64 %sub205, %sub206
  br i1 %cmp207, label %if.then.208, label %if.end.214

if.then.208:                                      ; preds = %if.then.204
  %157 = load i64, i64* %best_below, align 8
  %158 = load i64, i64* %bytepos.addr, align 8
  %159 = load i64, i64* %best_below_byte, align 8
  %sub210 = sub nsw i64 %158, %159
  %add211 = add nsw i64 %157, %sub210
  store i64 %add211, i64* %value209, align 8
  br label %do.body.212

do.body.212:                                      ; preds = %if.then.208
  br label %do.end.213

do.end.213:                                       ; preds = %do.body.212
  %160 = load i64, i64* %value209, align 8
  store i64 %160, i64* %retval
  br label %return

if.end.214:                                       ; preds = %if.then.204
  br label %if.end.215

if.end.215:                                       ; preds = %if.end.214, %if.end.202
  %161 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %162 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp217 = icmp eq %struct.buffer* %161, %162
  br i1 %cmp217, label %cond.true.218, label %cond.false.219

cond.true.218:                                    ; preds = %if.end.215
  %163 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %163, i32 0, i32 80
  %164 = load i64, i64* %zv_byte, align 8
  br label %cond.end.229

cond.false.219:                                   ; preds = %if.end.215
  %165 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %zv_marker_ = getelementptr inbounds %struct.buffer, %struct.buffer* %165, i32 0, i32 47
  %166 = load i64, i64* %zv_marker_, align 8
  %call220 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp221 = icmp eq i64 %166, %call220
  br i1 %cmp221, label %cond.true.222, label %cond.false.224

cond.true.222:                                    ; preds = %cond.false.219
  %167 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %zv_byte223 = getelementptr inbounds %struct.buffer, %struct.buffer* %167, i32 0, i32 80
  %168 = load i64, i64* %zv_byte223, align 8
  br label %cond.end.227

cond.false.224:                                   ; preds = %cond.false.219
  %169 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %zv_marker_225 = getelementptr inbounds %struct.buffer, %struct.buffer* %169, i32 0, i32 47
  %170 = load i64, i64* %zv_marker_225, align 8
  %call226 = call i64 @marker_byte_position(i64 %170)
  br label %cond.end.227

cond.end.227:                                     ; preds = %cond.false.224, %cond.true.222
  %cond228 = phi i64 [ %168, %cond.true.222 ], [ %call226, %cond.false.224 ]
  br label %cond.end.229

cond.end.229:                                     ; preds = %cond.end.227, %cond.true.218
  %cond230 = phi i64 [ %164, %cond.true.218 ], [ %cond228, %cond.end.227 ]
  store i64 %cond230, i64* %this_bytepos216, align 8
  store i32 0, i32* %changed231, align 4
  %171 = load i64, i64* %this_bytepos216, align 8
  %172 = load i64, i64* %bytepos.addr, align 8
  %cmp232 = icmp eq i64 %171, %172
  br i1 %cmp232, label %if.then.233, label %if.else.252

if.then.233:                                      ; preds = %cond.end.229
  %173 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %174 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp235 = icmp eq %struct.buffer* %173, %174
  br i1 %cmp235, label %cond.true.236, label %cond.false.237

cond.true.236:                                    ; preds = %if.then.233
  %175 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %175, i32 0, i32 79
  %176 = load i64, i64* %zv, align 8
  br label %cond.end.248

cond.false.237:                                   ; preds = %if.then.233
  %177 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %zv_marker_238 = getelementptr inbounds %struct.buffer, %struct.buffer* %177, i32 0, i32 47
  %178 = load i64, i64* %zv_marker_238, align 8
  %call239 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp240 = icmp eq i64 %178, %call239
  br i1 %cmp240, label %cond.true.241, label %cond.false.243

cond.true.241:                                    ; preds = %cond.false.237
  %179 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %zv242 = getelementptr inbounds %struct.buffer, %struct.buffer* %179, i32 0, i32 79
  %180 = load i64, i64* %zv242, align 8
  br label %cond.end.246

cond.false.243:                                   ; preds = %cond.false.237
  %181 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %zv_marker_244 = getelementptr inbounds %struct.buffer, %struct.buffer* %181, i32 0, i32 47
  %182 = load i64, i64* %zv_marker_244, align 8
  %call245 = call i64 @marker_position(i64 %182)
  br label %cond.end.246

cond.end.246:                                     ; preds = %cond.false.243, %cond.true.241
  %cond247 = phi i64 [ %180, %cond.true.241 ], [ %call245, %cond.false.243 ]
  br label %cond.end.248

cond.end.248:                                     ; preds = %cond.end.246, %cond.true.236
  %cond249 = phi i64 [ %176, %cond.true.236 ], [ %cond247, %cond.end.246 ]
  store i64 %cond249, i64* %value234, align 8
  br label %do.body.250

do.body.250:                                      ; preds = %cond.end.248
  br label %do.end.251

do.end.251:                                       ; preds = %do.body.250
  %183 = load i64, i64* %value234, align 8
  store i64 %183, i64* %retval
  br label %return

if.else.252:                                      ; preds = %cond.end.229
  %184 = load i64, i64* %this_bytepos216, align 8
  %185 = load i64, i64* %bytepos.addr, align 8
  %cmp253 = icmp sgt i64 %184, %185
  br i1 %cmp253, label %if.then.254, label %if.else.274

if.then.254:                                      ; preds = %if.else.252
  %186 = load i64, i64* %this_bytepos216, align 8
  %187 = load i64, i64* %best_above_byte, align 8
  %cmp255 = icmp slt i64 %186, %187
  br i1 %cmp255, label %if.then.256, label %if.end.273

if.then.256:                                      ; preds = %if.then.254
  %188 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %189 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp257 = icmp eq %struct.buffer* %188, %189
  br i1 %cmp257, label %cond.true.258, label %cond.false.260

cond.true.258:                                    ; preds = %if.then.256
  %190 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv259 = getelementptr inbounds %struct.buffer, %struct.buffer* %190, i32 0, i32 79
  %191 = load i64, i64* %zv259, align 8
  br label %cond.end.271

cond.false.260:                                   ; preds = %if.then.256
  %192 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %zv_marker_261 = getelementptr inbounds %struct.buffer, %struct.buffer* %192, i32 0, i32 47
  %193 = load i64, i64* %zv_marker_261, align 8
  %call262 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp263 = icmp eq i64 %193, %call262
  br i1 %cmp263, label %cond.true.264, label %cond.false.266

cond.true.264:                                    ; preds = %cond.false.260
  %194 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %zv265 = getelementptr inbounds %struct.buffer, %struct.buffer* %194, i32 0, i32 79
  %195 = load i64, i64* %zv265, align 8
  br label %cond.end.269

cond.false.266:                                   ; preds = %cond.false.260
  %196 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %zv_marker_267 = getelementptr inbounds %struct.buffer, %struct.buffer* %196, i32 0, i32 47
  %197 = load i64, i64* %zv_marker_267, align 8
  %call268 = call i64 @marker_position(i64 %197)
  br label %cond.end.269

cond.end.269:                                     ; preds = %cond.false.266, %cond.true.264
  %cond270 = phi i64 [ %195, %cond.true.264 ], [ %call268, %cond.false.266 ]
  br label %cond.end.271

cond.end.271:                                     ; preds = %cond.end.269, %cond.true.258
  %cond272 = phi i64 [ %191, %cond.true.258 ], [ %cond270, %cond.end.269 ]
  store i64 %cond272, i64* %best_above, align 8
  %198 = load i64, i64* %this_bytepos216, align 8
  store i64 %198, i64* %best_above_byte, align 8
  store i32 1, i32* %changed231, align 4
  br label %if.end.273

if.end.273:                                       ; preds = %cond.end.271, %if.then.254
  br label %if.end.294

if.else.274:                                      ; preds = %if.else.252
  %199 = load i64, i64* %this_bytepos216, align 8
  %200 = load i64, i64* %best_below_byte, align 8
  %cmp275 = icmp sgt i64 %199, %200
  br i1 %cmp275, label %if.then.276, label %if.end.293

if.then.276:                                      ; preds = %if.else.274
  %201 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %202 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp277 = icmp eq %struct.buffer* %201, %202
  br i1 %cmp277, label %cond.true.278, label %cond.false.280

cond.true.278:                                    ; preds = %if.then.276
  %203 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv279 = getelementptr inbounds %struct.buffer, %struct.buffer* %203, i32 0, i32 79
  %204 = load i64, i64* %zv279, align 8
  br label %cond.end.291

cond.false.280:                                   ; preds = %if.then.276
  %205 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %zv_marker_281 = getelementptr inbounds %struct.buffer, %struct.buffer* %205, i32 0, i32 47
  %206 = load i64, i64* %zv_marker_281, align 8
  %call282 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp283 = icmp eq i64 %206, %call282
  br i1 %cmp283, label %cond.true.284, label %cond.false.286

cond.true.284:                                    ; preds = %cond.false.280
  %207 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %zv285 = getelementptr inbounds %struct.buffer, %struct.buffer* %207, i32 0, i32 79
  %208 = load i64, i64* %zv285, align 8
  br label %cond.end.289

cond.false.286:                                   ; preds = %cond.false.280
  %209 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %zv_marker_287 = getelementptr inbounds %struct.buffer, %struct.buffer* %209, i32 0, i32 47
  %210 = load i64, i64* %zv_marker_287, align 8
  %call288 = call i64 @marker_position(i64 %210)
  br label %cond.end.289

cond.end.289:                                     ; preds = %cond.false.286, %cond.true.284
  %cond290 = phi i64 [ %208, %cond.true.284 ], [ %call288, %cond.false.286 ]
  br label %cond.end.291

cond.end.291:                                     ; preds = %cond.end.289, %cond.true.278
  %cond292 = phi i64 [ %204, %cond.true.278 ], [ %cond290, %cond.end.289 ]
  store i64 %cond292, i64* %best_below, align 8
  %211 = load i64, i64* %this_bytepos216, align 8
  store i64 %211, i64* %best_below_byte, align 8
  store i32 1, i32* %changed231, align 4
  br label %if.end.293

if.end.293:                                       ; preds = %cond.end.291, %if.else.274
  br label %if.end.294

if.end.294:                                       ; preds = %if.end.293, %if.end.273
  br label %if.end.295

if.end.295:                                       ; preds = %if.end.294
  %212 = load i32, i32* %changed231, align 4
  %tobool296 = icmp ne i32 %212, 0
  br i1 %tobool296, label %if.then.297, label %if.end.308

if.then.297:                                      ; preds = %if.end.295
  %213 = load i64, i64* %best_above, align 8
  %214 = load i64, i64* %best_below, align 8
  %sub298 = sub nsw i64 %213, %214
  %215 = load i64, i64* %best_above_byte, align 8
  %216 = load i64, i64* %best_below_byte, align 8
  %sub299 = sub nsw i64 %215, %216
  %cmp300 = icmp eq i64 %sub298, %sub299
  br i1 %cmp300, label %if.then.301, label %if.end.307

if.then.301:                                      ; preds = %if.then.297
  %217 = load i64, i64* %best_below, align 8
  %218 = load i64, i64* %bytepos.addr, align 8
  %219 = load i64, i64* %best_below_byte, align 8
  %sub303 = sub nsw i64 %218, %219
  %add304 = add nsw i64 %217, %sub303
  store i64 %add304, i64* %value302, align 8
  br label %do.body.305

do.body.305:                                      ; preds = %if.then.301
  br label %do.end.306

do.end.306:                                       ; preds = %do.body.305
  %220 = load i64, i64* %value302, align 8
  store i64 %220, i64* %retval
  br label %return

if.end.307:                                       ; preds = %if.then.297
  br label %if.end.308

if.end.308:                                       ; preds = %if.end.307, %if.end.295
  %221 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %222 = load %struct.buffer*, %struct.buffer** @cached_buffer, align 8
  %cmp309 = icmp eq %struct.buffer* %221, %222
  br i1 %cmp309, label %land.lhs.true, label %if.end.345

land.lhs.true:                                    ; preds = %if.end.308
  %223 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %text310 = getelementptr inbounds %struct.buffer, %struct.buffer* %223, i32 0, i32 73
  %224 = load %struct.buffer_text*, %struct.buffer_text** %text310, align 8
  %modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %224, i32 0, i32 6
  %225 = load i64, i64* %modiff, align 8
  %226 = load i64, i64* @cached_modiff, align 8
  %cmp311 = icmp eq i64 %225, %226
  br i1 %cmp311, label %if.then.312, label %if.end.345

if.then.312:                                      ; preds = %land.lhs.true
  %227 = load i64, i64* @cached_bytepos, align 8
  store i64 %227, i64* %this_bytepos313, align 8
  store i32 0, i32* %changed314, align 4
  %228 = load i64, i64* %this_bytepos313, align 8
  %229 = load i64, i64* %bytepos.addr, align 8
  %cmp315 = icmp eq i64 %228, %229
  br i1 %cmp315, label %if.then.316, label %if.else.320

if.then.316:                                      ; preds = %if.then.312
  %230 = load i64, i64* @cached_charpos, align 8
  store i64 %230, i64* %value317, align 8
  br label %do.body.318

do.body.318:                                      ; preds = %if.then.316
  br label %do.end.319

do.end.319:                                       ; preds = %do.body.318
  %231 = load i64, i64* %value317, align 8
  store i64 %231, i64* %retval
  br label %return

if.else.320:                                      ; preds = %if.then.312
  %232 = load i64, i64* %this_bytepos313, align 8
  %233 = load i64, i64* %bytepos.addr, align 8
  %cmp321 = icmp sgt i64 %232, %233
  br i1 %cmp321, label %if.then.322, label %if.else.326

if.then.322:                                      ; preds = %if.else.320
  %234 = load i64, i64* %this_bytepos313, align 8
  %235 = load i64, i64* %best_above_byte, align 8
  %cmp323 = icmp slt i64 %234, %235
  br i1 %cmp323, label %if.then.324, label %if.end.325

if.then.324:                                      ; preds = %if.then.322
  %236 = load i64, i64* @cached_charpos, align 8
  store i64 %236, i64* %best_above, align 8
  %237 = load i64, i64* %this_bytepos313, align 8
  store i64 %237, i64* %best_above_byte, align 8
  store i32 1, i32* %changed314, align 4
  br label %if.end.325

if.end.325:                                       ; preds = %if.then.324, %if.then.322
  br label %if.end.330

if.else.326:                                      ; preds = %if.else.320
  %238 = load i64, i64* %this_bytepos313, align 8
  %239 = load i64, i64* %best_below_byte, align 8
  %cmp327 = icmp sgt i64 %238, %239
  br i1 %cmp327, label %if.then.328, label %if.end.329

if.then.328:                                      ; preds = %if.else.326
  %240 = load i64, i64* @cached_charpos, align 8
  store i64 %240, i64* %best_below, align 8
  %241 = load i64, i64* %this_bytepos313, align 8
  store i64 %241, i64* %best_below_byte, align 8
  store i32 1, i32* %changed314, align 4
  br label %if.end.329

if.end.329:                                       ; preds = %if.then.328, %if.else.326
  br label %if.end.330

if.end.330:                                       ; preds = %if.end.329, %if.end.325
  br label %if.end.331

if.end.331:                                       ; preds = %if.end.330
  %242 = load i32, i32* %changed314, align 4
  %tobool332 = icmp ne i32 %242, 0
  br i1 %tobool332, label %if.then.333, label %if.end.344

if.then.333:                                      ; preds = %if.end.331
  %243 = load i64, i64* %best_above, align 8
  %244 = load i64, i64* %best_below, align 8
  %sub334 = sub nsw i64 %243, %244
  %245 = load i64, i64* %best_above_byte, align 8
  %246 = load i64, i64* %best_below_byte, align 8
  %sub335 = sub nsw i64 %245, %246
  %cmp336 = icmp eq i64 %sub334, %sub335
  br i1 %cmp336, label %if.then.337, label %if.end.343

if.then.337:                                      ; preds = %if.then.333
  %247 = load i64, i64* %best_below, align 8
  %248 = load i64, i64* %bytepos.addr, align 8
  %249 = load i64, i64* %best_below_byte, align 8
  %sub339 = sub nsw i64 %248, %249
  %add340 = add nsw i64 %247, %sub339
  store i64 %add340, i64* %value338, align 8
  br label %do.body.341

do.body.341:                                      ; preds = %if.then.337
  br label %do.end.342

do.end.342:                                       ; preds = %do.body.341
  %250 = load i64, i64* %value338, align 8
  store i64 %250, i64* %retval
  br label %return

if.end.343:                                       ; preds = %if.then.333
  br label %if.end.344

if.end.344:                                       ; preds = %if.end.343, %if.end.331
  br label %if.end.345

if.end.345:                                       ; preds = %if.end.344, %land.lhs.true, %if.end.308
  %251 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %text346 = getelementptr inbounds %struct.buffer, %struct.buffer* %251, i32 0, i32 73
  %252 = load %struct.buffer_text*, %struct.buffer_text** %text346, align 8
  %markers = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %252, i32 0, i32 16
  %253 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %markers, align 8
  store %struct.Lisp_Marker* %253, %struct.Lisp_Marker** %tail, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.345
  %254 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %tail, align 8
  %tobool347 = icmp ne %struct.Lisp_Marker* %254, null
  br i1 %tobool347, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %255 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %tail, align 8
  %bytepos349 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %255, i32 0, i32 4
  %256 = load i64, i64* %bytepos349, align 8
  store i64 %256, i64* %this_bytepos348, align 8
  store i32 0, i32* %changed350, align 4
  %257 = load i64, i64* %this_bytepos348, align 8
  %258 = load i64, i64* %bytepos.addr, align 8
  %cmp351 = icmp eq i64 %257, %258
  br i1 %cmp351, label %if.then.352, label %if.else.356

if.then.352:                                      ; preds = %for.body
  %259 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %tail, align 8
  %charpos = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %259, i32 0, i32 3
  %260 = load i64, i64* %charpos, align 8
  store i64 %260, i64* %value353, align 8
  br label %do.body.354

do.body.354:                                      ; preds = %if.then.352
  br label %do.end.355

do.end.355:                                       ; preds = %do.body.354
  %261 = load i64, i64* %value353, align 8
  store i64 %261, i64* %retval
  br label %return

if.else.356:                                      ; preds = %for.body
  %262 = load i64, i64* %this_bytepos348, align 8
  %263 = load i64, i64* %bytepos.addr, align 8
  %cmp357 = icmp sgt i64 %262, %263
  br i1 %cmp357, label %if.then.358, label %if.else.363

if.then.358:                                      ; preds = %if.else.356
  %264 = load i64, i64* %this_bytepos348, align 8
  %265 = load i64, i64* %best_above_byte, align 8
  %cmp359 = icmp slt i64 %264, %265
  br i1 %cmp359, label %if.then.360, label %if.end.362

if.then.360:                                      ; preds = %if.then.358
  %266 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %tail, align 8
  %charpos361 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %266, i32 0, i32 3
  %267 = load i64, i64* %charpos361, align 8
  store i64 %267, i64* %best_above, align 8
  %268 = load i64, i64* %this_bytepos348, align 8
  store i64 %268, i64* %best_above_byte, align 8
  store i32 1, i32* %changed350, align 4
  br label %if.end.362

if.end.362:                                       ; preds = %if.then.360, %if.then.358
  br label %if.end.368

if.else.363:                                      ; preds = %if.else.356
  %269 = load i64, i64* %this_bytepos348, align 8
  %270 = load i64, i64* %best_below_byte, align 8
  %cmp364 = icmp sgt i64 %269, %270
  br i1 %cmp364, label %if.then.365, label %if.end.367

if.then.365:                                      ; preds = %if.else.363
  %271 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %tail, align 8
  %charpos366 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %271, i32 0, i32 3
  %272 = load i64, i64* %charpos366, align 8
  store i64 %272, i64* %best_below, align 8
  %273 = load i64, i64* %this_bytepos348, align 8
  store i64 %273, i64* %best_below_byte, align 8
  store i32 1, i32* %changed350, align 4
  br label %if.end.367

if.end.367:                                       ; preds = %if.then.365, %if.else.363
  br label %if.end.368

if.end.368:                                       ; preds = %if.end.367, %if.end.362
  br label %if.end.369

if.end.369:                                       ; preds = %if.end.368
  %274 = load i32, i32* %changed350, align 4
  %tobool370 = icmp ne i32 %274, 0
  br i1 %tobool370, label %if.then.371, label %if.end.382

if.then.371:                                      ; preds = %if.end.369
  %275 = load i64, i64* %best_above, align 8
  %276 = load i64, i64* %best_below, align 8
  %sub372 = sub nsw i64 %275, %276
  %277 = load i64, i64* %best_above_byte, align 8
  %278 = load i64, i64* %best_below_byte, align 8
  %sub373 = sub nsw i64 %277, %278
  %cmp374 = icmp eq i64 %sub372, %sub373
  br i1 %cmp374, label %if.then.375, label %if.end.381

if.then.375:                                      ; preds = %if.then.371
  %279 = load i64, i64* %best_below, align 8
  %280 = load i64, i64* %bytepos.addr, align 8
  %281 = load i64, i64* %best_below_byte, align 8
  %sub377 = sub nsw i64 %280, %281
  %add378 = add nsw i64 %279, %sub377
  store i64 %add378, i64* %value376, align 8
  br label %do.body.379

do.body.379:                                      ; preds = %if.then.375
  br label %do.end.380

do.end.380:                                       ; preds = %do.body.379
  %282 = load i64, i64* %value376, align 8
  store i64 %282, i64* %retval
  br label %return

if.end.381:                                       ; preds = %if.then.371
  br label %if.end.382

if.end.382:                                       ; preds = %if.end.381, %if.end.369
  %283 = load i64, i64* %best_above, align 8
  %284 = load i64, i64* %best_below, align 8
  %sub383 = sub nsw i64 %283, %284
  %cmp384 = icmp slt i64 %sub383, 50
  br i1 %cmp384, label %if.then.385, label %if.end.386

if.then.385:                                      ; preds = %if.end.382
  br label %for.end

if.end.386:                                       ; preds = %if.end.382
  br label %for.inc

for.inc:                                          ; preds = %if.end.386
  %285 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %tail, align 8
  %next = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %285, i32 0, i32 2
  %286 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %next, align 8
  store %struct.Lisp_Marker* %286, %struct.Lisp_Marker** %tail, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.385, %for.cond
  %287 = load i64, i64* %bytepos.addr, align 8
  %288 = load i64, i64* %best_below_byte, align 8
  %sub387 = sub nsw i64 %287, %288
  %289 = load i64, i64* %best_above_byte, align 8
  %290 = load i64, i64* %bytepos.addr, align 8
  %sub388 = sub nsw i64 %289, %290
  %cmp389 = icmp slt i64 %sub387, %sub388
  br i1 %cmp389, label %if.then.390, label %if.else.445

if.then.390:                                      ; preds = %for.end
  %291 = load i64, i64* %bytepos.addr, align 8
  %292 = load i64, i64* %best_below_byte, align 8
  %sub391 = sub nsw i64 %291, %292
  %cmp392 = icmp sgt i64 %sub391, 5000
  %frombool = zext i1 %cmp392 to i8
  store i8 %frombool, i8* %record, align 1
  br label %while.cond

while.cond:                                       ; preds = %do.end.431, %if.then.390
  %293 = load i64, i64* %best_below_byte, align 8
  %294 = load i64, i64* %bytepos.addr, align 8
  %cmp393 = icmp slt i64 %293, %294
  br i1 %cmp393, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %295 = load i64, i64* %best_below, align 8
  %inc = add nsw i64 %295, 1
  store i64 %inc, i64* %best_below, align 8
  br label %do.body.394

do.body.394:                                      ; preds = %while.body
  %296 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %text395 = getelementptr inbounds %struct.buffer, %struct.buffer* %296, i32 0, i32 73
  %297 = load %struct.buffer_text*, %struct.buffer_text** %text395, align 8
  %beg = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %297, i32 0, i32 0
  %298 = load i8*, i8** %beg, align 8
  %299 = load i64, i64* %best_below_byte, align 8
  %add.ptr = getelementptr inbounds i8, i8* %298, i64 %299
  %add.ptr396 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %300 = load i64, i64* %best_below_byte, align 8
  %301 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %text397 = getelementptr inbounds %struct.buffer, %struct.buffer* %301, i32 0, i32 73
  %302 = load %struct.buffer_text*, %struct.buffer_text** %text397, align 8
  %gpt_byte398 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %302, i32 0, i32 3
  %303 = load i64, i64* %gpt_byte398, align 8
  %cmp399 = icmp sge i64 %300, %303
  br i1 %cmp399, label %cond.true.400, label %cond.false.402

cond.true.400:                                    ; preds = %do.body.394
  %304 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %text401 = getelementptr inbounds %struct.buffer, %struct.buffer* %304, i32 0, i32 73
  %305 = load %struct.buffer_text*, %struct.buffer_text** %text401, align 8
  %gap_size = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %305, i32 0, i32 5
  %306 = load i64, i64* %gap_size, align 8
  br label %cond.end.403

cond.false.402:                                   ; preds = %do.body.394
  br label %cond.end.403

cond.end.403:                                     ; preds = %cond.false.402, %cond.true.400
  %cond404 = phi i64 [ %306, %cond.true.400 ], [ 0, %cond.false.402 ]
  %add.ptr405 = getelementptr inbounds i8, i8* %add.ptr396, i64 %cond404
  store i8* %add.ptr405, i8** %chp, align 8
  %307 = load i8*, i8** %chp, align 8
  %308 = load i8, i8* %307, align 1
  %conv = zext i8 %308 to i32
  %and = and i32 %conv, 128
  %tobool406 = icmp ne i32 %and, 0
  br i1 %tobool406, label %cond.false.408, label %cond.true.407

cond.true.407:                                    ; preds = %cond.end.403
  br label %cond.end.427

cond.false.408:                                   ; preds = %cond.end.403
  %309 = load i8*, i8** %chp, align 8
  %310 = load i8, i8* %309, align 1
  %conv409 = zext i8 %310 to i32
  %and410 = and i32 %conv409, 32
  %tobool411 = icmp ne i32 %and410, 0
  br i1 %tobool411, label %cond.false.413, label %cond.true.412

cond.true.412:                                    ; preds = %cond.false.408
  br label %cond.end.425

cond.false.413:                                   ; preds = %cond.false.408
  %311 = load i8*, i8** %chp, align 8
  %312 = load i8, i8* %311, align 1
  %conv414 = zext i8 %312 to i32
  %and415 = and i32 %conv414, 16
  %tobool416 = icmp ne i32 %and415, 0
  br i1 %tobool416, label %cond.false.418, label %cond.true.417

cond.true.417:                                    ; preds = %cond.false.413
  br label %cond.end.423

cond.false.418:                                   ; preds = %cond.false.413
  %313 = load i8*, i8** %chp, align 8
  %314 = load i8, i8* %313, align 1
  %conv419 = zext i8 %314 to i32
  %and420 = and i32 %conv419, 8
  %tobool421 = icmp ne i32 %and420, 0
  %lnot = xor i1 %tobool421, true
  %cond422 = select i1 %lnot, i32 4, i32 5
  br label %cond.end.423

cond.end.423:                                     ; preds = %cond.false.418, %cond.true.417
  %cond424 = phi i32 [ 3, %cond.true.417 ], [ %cond422, %cond.false.418 ]
  br label %cond.end.425

cond.end.425:                                     ; preds = %cond.end.423, %cond.true.412
  %cond426 = phi i32 [ 2, %cond.true.412 ], [ %cond424, %cond.end.423 ]
  br label %cond.end.427

cond.end.427:                                     ; preds = %cond.end.425, %cond.true.407
  %cond428 = phi i32 [ 1, %cond.true.407 ], [ %cond426, %cond.end.425 ]
  %conv429 = sext i32 %cond428 to i64
  %315 = load i64, i64* %best_below_byte, align 8
  %add430 = add nsw i64 %315, %conv429
  store i64 %add430, i64* %best_below_byte, align 8
  br label %do.end.431

do.end.431:                                       ; preds = %cond.end.427
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %316 = load i8, i8* %record, align 1
  %tobool432 = trunc i8 %316 to i1
  br i1 %tobool432, label %land.lhs.true.434, label %if.end.440

land.lhs.true.434:                                ; preds = %while.end
  %317 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %text435 = getelementptr inbounds %struct.buffer, %struct.buffer* %317, i32 0, i32 73
  %318 = load %struct.buffer_text*, %struct.buffer_text** %text435, align 8
  %markers436 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %318, i32 0, i32 16
  %319 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %markers436, align 8
  %tobool437 = icmp ne %struct.Lisp_Marker* %319, null
  br i1 %tobool437, label %if.then.438, label %if.end.440

if.then.438:                                      ; preds = %land.lhs.true.434
  %320 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %321 = load i64, i64* %best_below, align 8
  %322 = load i64, i64* %best_below_byte, align 8
  %call439 = call i64 @build_marker(%struct.buffer* %320, i64 %321, i64 %322)
  br label %if.end.440

if.end.440:                                       ; preds = %if.then.438, %land.lhs.true.434, %while.end
  br label %do.body.441

do.body.441:                                      ; preds = %if.end.440
  br label %do.end.442

do.end.442:                                       ; preds = %do.body.441
  %323 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  store %struct.buffer* %323, %struct.buffer** @cached_buffer, align 8
  %324 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %text443 = getelementptr inbounds %struct.buffer, %struct.buffer* %324, i32 0, i32 73
  %325 = load %struct.buffer_text*, %struct.buffer_text** %text443, align 8
  %modiff444 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %325, i32 0, i32 6
  %326 = load i64, i64* %modiff444, align 8
  store i64 %326, i64* @cached_modiff, align 8
  %327 = load i64, i64* %best_below, align 8
  store i64 %327, i64* @cached_charpos, align 8
  %328 = load i64, i64* %best_below_byte, align 8
  store i64 %328, i64* @cached_bytepos, align 8
  %329 = load i64, i64* %best_below, align 8
  store i64 %329, i64* %retval
  br label %return

if.else.445:                                      ; preds = %for.end
  %330 = load i64, i64* %best_above_byte, align 8
  %331 = load i64, i64* %bytepos.addr, align 8
  %sub447 = sub nsw i64 %330, %331
  %cmp448 = icmp sgt i64 %sub447, 5000
  %frombool450 = zext i1 %cmp448 to i8
  store i8 %frombool450, i8* %record446, align 1
  br label %while.cond.451

while.cond.451:                                   ; preds = %do.end.485, %if.else.445
  %332 = load i64, i64* %best_above_byte, align 8
  %333 = load i64, i64* %bytepos.addr, align 8
  %cmp452 = icmp sgt i64 %332, %333
  br i1 %cmp452, label %while.body.454, label %while.end.486

while.body.454:                                   ; preds = %while.cond.451
  %334 = load i64, i64* %best_above, align 8
  %dec = add nsw i64 %334, -1
  store i64 %dec, i64* %best_above, align 8
  br label %do.body.455

do.body.455:                                      ; preds = %while.body.454
  %335 = load i64, i64* %best_above_byte, align 8
  %dec457 = add nsw i64 %335, -1
  store i64 %dec457, i64* %best_above_byte, align 8
  %336 = load i64, i64* %best_above_byte, align 8
  %337 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %text458 = getelementptr inbounds %struct.buffer, %struct.buffer* %337, i32 0, i32 73
  %338 = load %struct.buffer_text*, %struct.buffer_text** %text458, align 8
  %gpt_byte459 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %338, i32 0, i32 3
  %339 = load i64, i64* %gpt_byte459, align 8
  %cmp460 = icmp slt i64 %336, %339
  br i1 %cmp460, label %if.then.462, label %if.else.467

if.then.462:                                      ; preds = %do.body.455
  %340 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %text463 = getelementptr inbounds %struct.buffer, %struct.buffer* %340, i32 0, i32 73
  %341 = load %struct.buffer_text*, %struct.buffer_text** %text463, align 8
  %beg464 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %341, i32 0, i32 0
  %342 = load i8*, i8** %beg464, align 8
  %343 = load i64, i64* %best_above_byte, align 8
  %add.ptr465 = getelementptr inbounds i8, i8* %342, i64 %343
  %add.ptr466 = getelementptr inbounds i8, i8* %add.ptr465, i64 -1
  store i8* %add.ptr466, i8** %chp456, align 8
  br label %if.end.475

if.else.467:                                      ; preds = %do.body.455
  %344 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %text468 = getelementptr inbounds %struct.buffer, %struct.buffer* %344, i32 0, i32 73
  %345 = load %struct.buffer_text*, %struct.buffer_text** %text468, align 8
  %beg469 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %345, i32 0, i32 0
  %346 = load i8*, i8** %beg469, align 8
  %347 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %text470 = getelementptr inbounds %struct.buffer, %struct.buffer* %347, i32 0, i32 73
  %348 = load %struct.buffer_text*, %struct.buffer_text** %text470, align 8
  %gap_size471 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %348, i32 0, i32 5
  %349 = load i64, i64* %gap_size471, align 8
  %add.ptr472 = getelementptr inbounds i8, i8* %346, i64 %349
  %350 = load i64, i64* %best_above_byte, align 8
  %add.ptr473 = getelementptr inbounds i8, i8* %add.ptr472, i64 %350
  %add.ptr474 = getelementptr inbounds i8, i8* %add.ptr473, i64 -1
  store i8* %add.ptr474, i8** %chp456, align 8
  br label %if.end.475

if.end.475:                                       ; preds = %if.else.467, %if.then.462
  br label %while.cond.476

while.cond.476:                                   ; preds = %while.body.482, %if.end.475
  %351 = load i8*, i8** %chp456, align 8
  %352 = load i8, i8* %351, align 1
  %conv477 = zext i8 %352 to i32
  %and478 = and i32 %conv477, 192
  %cmp479 = icmp ne i32 %and478, 128
  %lnot481 = xor i1 %cmp479, true
  br i1 %lnot481, label %while.body.482, label %while.end.484

while.body.482:                                   ; preds = %while.cond.476
  %353 = load i8*, i8** %chp456, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %353, i32 -1
  store i8* %incdec.ptr, i8** %chp456, align 8
  %354 = load i64, i64* %best_above_byte, align 8
  %dec483 = add nsw i64 %354, -1
  store i64 %dec483, i64* %best_above_byte, align 8
  br label %while.cond.476

while.end.484:                                    ; preds = %while.cond.476
  br label %do.end.485

do.end.485:                                       ; preds = %while.end.484
  br label %while.cond.451

while.end.486:                                    ; preds = %while.cond.451
  %355 = load i8, i8* %record446, align 1
  %tobool487 = trunc i8 %355 to i1
  br i1 %tobool487, label %land.lhs.true.489, label %if.end.495

land.lhs.true.489:                                ; preds = %while.end.486
  %356 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %text490 = getelementptr inbounds %struct.buffer, %struct.buffer* %356, i32 0, i32 73
  %357 = load %struct.buffer_text*, %struct.buffer_text** %text490, align 8
  %markers491 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %357, i32 0, i32 16
  %358 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %markers491, align 8
  %tobool492 = icmp ne %struct.Lisp_Marker* %358, null
  br i1 %tobool492, label %if.then.493, label %if.end.495

if.then.493:                                      ; preds = %land.lhs.true.489
  %359 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %360 = load i64, i64* %best_above, align 8
  %361 = load i64, i64* %best_above_byte, align 8
  %call494 = call i64 @build_marker(%struct.buffer* %359, i64 %360, i64 %361)
  br label %if.end.495

if.end.495:                                       ; preds = %if.then.493, %land.lhs.true.489, %while.end.486
  br label %do.body.496

do.body.496:                                      ; preds = %if.end.495
  br label %do.end.497

do.end.497:                                       ; preds = %do.body.496
  %362 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  store %struct.buffer* %362, %struct.buffer** @cached_buffer, align 8
  %363 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %text498 = getelementptr inbounds %struct.buffer, %struct.buffer* %363, i32 0, i32 73
  %364 = load %struct.buffer_text*, %struct.buffer_text** %text498, align 8
  %modiff499 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %364, i32 0, i32 6
  %365 = load i64, i64* %modiff499, align 8
  store i64 %365, i64* @cached_modiff, align 8
  %366 = load i64, i64* %best_above, align 8
  store i64 %366, i64* @cached_charpos, align 8
  %367 = load i64, i64* %best_above_byte, align 8
  store i64 %367, i64* @cached_bytepos, align 8
  %368 = load i64, i64* %best_above, align 8
  store i64 %368, i64* %retval
  br label %return

return:                                           ; preds = %do.end.497, %do.end.442, %do.end.380, %do.end.355, %do.end.342, %do.end.319, %do.end.306, %do.end.251, %do.end.213, %do.end.158, %do.end.120, %do.end.93, %do.end.82, %do.end, %if.then
  %369 = load i64, i64* %retval
  ret i64 %369
}

; Function Attrs: nounwind uwtable
define i64 @Fmarker_buffer(i64 %marker) #0 {
entry:
  %retval = alloca i64, align 8
  %marker.addr = alloca i64, align 8
  %buf = alloca i64, align 8
  store i64 %marker, i64* %marker.addr, align 8
  %0 = load i64, i64* %marker.addr, align 8
  call void @CHECK_MARKER(i64 %0)
  %1 = load i64, i64* %marker.addr, align 8
  %call = call %struct.Lisp_Marker* @XMARKER(i64 %1)
  %buffer = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %call, i32 0, i32 1
  %2 = load %struct.buffer*, %struct.buffer** %buffer, align 8
  %tobool = icmp ne %struct.buffer* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %marker.addr, align 8
  %call1 = call %struct.Lisp_Marker* @XMARKER(i64 %3)
  %buffer2 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %call1, i32 0, i32 1
  %4 = load %struct.buffer*, %struct.buffer** %buffer2, align 8
  %5 = bitcast %struct.buffer* %4 to i8*
  %call3 = call i64 @make_lisp_ptr(i8* %5, i32 5)
  store i64 %call3, i64* %buf, align 8
  %6 = load i64, i64* %buf, align 8
  store i64 %6, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call4, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i64, i64* %retval
  ret i64 %7
}

; Function Attrs: nounwind uwtable
define internal void @CHECK_MARKER(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %x.addr, align 8
  %call = call i32 @XMISCTYPE(i64 %1)
  %cmp2 = icmp eq i32 %call, 24236
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  %call4 = call i64 @builtin_lisp_symbol(i32 646)
  %2 = load i64, i64* %x.addr, align 8
  %3 = call i64 @wrong_type_argument(i64 %call4, i64 %2) #3
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %4, %cond.true
  ret void
}

declare %struct.Lisp_Marker* @XMARKER(i64) #1

declare i64 @make_lisp_ptr(i8*, i32) #1

; Function Attrs: nounwind uwtable
define i64 @Fmarker_position(i64 %marker) #0 {
entry:
  %retval = alloca i64, align 8
  %marker.addr = alloca i64, align 8
  store i64 %marker, i64* %marker.addr, align 8
  %0 = load i64, i64* %marker.addr, align 8
  call void @CHECK_MARKER(i64 %0)
  %1 = load i64, i64* %marker.addr, align 8
  %call = call %struct.Lisp_Marker* @XMARKER(i64 %1)
  %buffer = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %call, i32 0, i32 1
  %2 = load %struct.buffer*, %struct.buffer** %buffer, align 8
  %tobool = icmp ne %struct.buffer* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %marker.addr, align 8
  %call1 = call %struct.Lisp_Marker* @XMARKER(i64 %3)
  %charpos = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %call1, i32 0, i32 3
  %4 = load i64, i64* %charpos, align 8
  %shl = shl i64 %4, 2
  %add = add i64 %shl, 2
  store i64 %add, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call2, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i64, i64* %retval
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define i64 @Fset_marker(i64 %marker, i64 %position, i64 %buffer) #0 {
entry:
  %marker.addr = alloca i64, align 8
  %position.addr = alloca i64, align 8
  %buffer.addr = alloca i64, align 8
  store i64 %marker, i64* %marker.addr, align 8
  store i64 %position, i64* %position.addr, align 8
  store i64 %buffer, i64* %buffer.addr, align 8
  %0 = load i64, i64* %marker.addr, align 8
  %1 = load i64, i64* %position.addr, align 8
  %2 = load i64, i64* %buffer.addr, align 8
  %call = call i64 @set_marker_internal(i64 %0, i64 %1, i64 %2, i1 zeroext false)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define internal i64 @set_marker_internal(i64 %marker, i64 %position, i64 %buffer, i1 zeroext %restricted) #0 {
entry:
  %marker.addr = alloca i64, align 8
  %position.addr = alloca i64, align 8
  %buffer.addr = alloca i64, align 8
  %restricted.addr = alloca i8, align 1
  %m = alloca %struct.Lisp_Marker*, align 8
  %b = alloca %struct.buffer*, align 8
  %charpos36 = alloca i64, align 8
  %bytepos37 = alloca i64, align 8
  store i64 %marker, i64* %marker.addr, align 8
  store i64 %position, i64* %position.addr, align 8
  store i64 %buffer, i64* %buffer.addr, align 8
  %frombool = zext i1 %restricted to i8
  store i8 %frombool, i8* %restricted.addr, align 1
  %0 = load i64, i64* %buffer.addr, align 8
  %call = call %struct.buffer* @live_buffer(i64 %0)
  store %struct.buffer* %call, %struct.buffer** %b, align 8
  %1 = load i64, i64* %marker.addr, align 8
  call void @CHECK_MARKER(i64 %1)
  %2 = load i64, i64* %marker.addr, align 8
  %call1 = call %struct.Lisp_Marker* @XMARKER(i64 %2)
  store %struct.Lisp_Marker* %call1, %struct.Lisp_Marker** %m, align 8
  %3 = load i64, i64* %position.addr, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %3, %call2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i64, i64* %position.addr, align 8
  %and = and i64 %4, 7
  %conv = trunc i64 %and to i32
  %cmp3 = icmp eq i32 %conv, 1
  br i1 %cmp3, label %land.lhs.true, label %lor.lhs.false.11

land.lhs.true:                                    ; preds = %lor.lhs.false
  %5 = load i64, i64* %position.addr, align 8
  %call5 = call i32 @XMISCTYPE(i64 %5)
  %cmp6 = icmp eq i32 %call5, 24236
  br i1 %cmp6, label %land.lhs.true.8, label %lor.lhs.false.11

land.lhs.true.8:                                  ; preds = %land.lhs.true
  %6 = load i64, i64* %position.addr, align 8
  %call9 = call %struct.Lisp_Marker* @XMARKER(i64 %6)
  %buffer10 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %call9, i32 0, i32 1
  %7 = load %struct.buffer*, %struct.buffer** %buffer10, align 8
  %tobool = icmp ne %struct.buffer* %7, null
  br i1 %tobool, label %lor.lhs.false.11, label %if.then

lor.lhs.false.11:                                 ; preds = %land.lhs.true.8, %land.lhs.true, %lor.lhs.false
  %8 = load %struct.buffer*, %struct.buffer** %b, align 8
  %tobool12 = icmp ne %struct.buffer* %8, null
  br i1 %tobool12, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false.11, %land.lhs.true.8, %entry
  %9 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %m, align 8
  call void @unchain_marker(%struct.Lisp_Marker* %9)
  br label %if.end.157

if.else:                                          ; preds = %lor.lhs.false.11
  %10 = load i64, i64* %position.addr, align 8
  %and13 = and i64 %10, 7
  %conv14 = trunc i64 %and13 to i32
  %cmp15 = icmp eq i32 %conv14, 1
  br i1 %cmp15, label %land.lhs.true.17, label %if.else.35

land.lhs.true.17:                                 ; preds = %if.else
  %11 = load i64, i64* %position.addr, align 8
  %call18 = call i32 @XMISCTYPE(i64 %11)
  %cmp19 = icmp eq i32 %call18, 24236
  br i1 %cmp19, label %land.lhs.true.21, label %if.else.35

land.lhs.true.21:                                 ; preds = %land.lhs.true.17
  %12 = load %struct.buffer*, %struct.buffer** %b, align 8
  %13 = load i64, i64* %position.addr, align 8
  %call22 = call %struct.Lisp_Marker* @XMARKER(i64 %13)
  %buffer23 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %call22, i32 0, i32 1
  %14 = load %struct.buffer*, %struct.buffer** %buffer23, align 8
  %cmp24 = icmp eq %struct.buffer* %12, %14
  br i1 %cmp24, label %land.lhs.true.26, label %if.else.35

land.lhs.true.26:                                 ; preds = %land.lhs.true.21
  %15 = load %struct.buffer*, %struct.buffer** %b, align 8
  %16 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %m, align 8
  %buffer27 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %16, i32 0, i32 1
  %17 = load %struct.buffer*, %struct.buffer** %buffer27, align 8
  %cmp28 = icmp eq %struct.buffer* %15, %17
  br i1 %cmp28, label %if.then.30, label %if.else.35

if.then.30:                                       ; preds = %land.lhs.true.26
  %18 = load i64, i64* %position.addr, align 8
  %call31 = call %struct.Lisp_Marker* @XMARKER(i64 %18)
  %bytepos = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %call31, i32 0, i32 4
  %19 = load i64, i64* %bytepos, align 8
  %20 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %m, align 8
  %bytepos32 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %20, i32 0, i32 4
  store i64 %19, i64* %bytepos32, align 8
  %21 = load i64, i64* %position.addr, align 8
  %call33 = call %struct.Lisp_Marker* @XMARKER(i64 %21)
  %charpos = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %call33, i32 0, i32 3
  %22 = load i64, i64* %charpos, align 8
  %23 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %m, align 8
  %charpos34 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %23, i32 0, i32 3
  store i64 %22, i64* %charpos34, align 8
  br label %if.end.156

if.else.35:                                       ; preds = %land.lhs.true.26, %land.lhs.true.21, %land.lhs.true.17, %if.else
  %24 = load i64, i64* %position.addr, align 8
  %and38 = and i64 %24, 7
  %conv39 = trunc i64 %and38 to i32
  %and40 = and i32 %conv39, -5
  %cmp41 = icmp eq i32 %and40, 2
  br i1 %cmp41, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %if.else.35
  %25 = load i64, i64* %position.addr, align 8
  %shr = ashr i64 %25, 2
  store i64 %shr, i64* %charpos36, align 8
  store i64 -1, i64* %bytepos37, align 8
  br label %if.end.60

if.else.44:                                       ; preds = %if.else.35
  %26 = load i64, i64* %position.addr, align 8
  %and45 = and i64 %26, 7
  %conv46 = trunc i64 %and45 to i32
  %cmp47 = icmp eq i32 %conv46, 1
  br i1 %cmp47, label %land.lhs.true.49, label %if.else.58

land.lhs.true.49:                                 ; preds = %if.else.44
  %27 = load i64, i64* %position.addr, align 8
  %call50 = call i32 @XMISCTYPE(i64 %27)
  %cmp51 = icmp eq i32 %call50, 24236
  br i1 %cmp51, label %if.then.53, label %if.else.58

if.then.53:                                       ; preds = %land.lhs.true.49
  %28 = load i64, i64* %position.addr, align 8
  %call54 = call %struct.Lisp_Marker* @XMARKER(i64 %28)
  %charpos55 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %call54, i32 0, i32 3
  %29 = load i64, i64* %charpos55, align 8
  store i64 %29, i64* %charpos36, align 8
  %30 = load i64, i64* %position.addr, align 8
  %call56 = call %struct.Lisp_Marker* @XMARKER(i64 %30)
  %bytepos57 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %call56, i32 0, i32 4
  %31 = load i64, i64* %bytepos57, align 8
  store i64 %31, i64* %bytepos37, align 8
  br label %if.end

if.else.58:                                       ; preds = %land.lhs.true.49, %if.else.44
  %call59 = call i64 @builtin_lisp_symbol(i32 558)
  %32 = load i64, i64* %position.addr, align 8
  %33 = call i64 @wrong_type_argument(i64 %call59, i64 %32) #3
  unreachable

if.end:                                           ; preds = %if.then.53
  br label %if.end.60

if.end.60:                                        ; preds = %if.end, %if.then.43
  %34 = load i8, i8* %restricted.addr, align 1
  %tobool61 = trunc i8 %34 to i1
  br i1 %tobool61, label %cond.true, label %cond.false.76

cond.true:                                        ; preds = %if.end.60
  %35 = load %struct.buffer*, %struct.buffer** %b, align 8
  %36 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp63 = icmp eq %struct.buffer* %35, %36
  br i1 %cmp63, label %cond.true.65, label %cond.false

cond.true.65:                                     ; preds = %cond.true
  %37 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %37, i32 0, i32 77
  %38 = load i64, i64* %begv, align 8
  br label %cond.end.74

cond.false:                                       ; preds = %cond.true
  %39 = load %struct.buffer*, %struct.buffer** %b, align 8
  %begv_marker_ = getelementptr inbounds %struct.buffer, %struct.buffer* %39, i32 0, i32 46
  %40 = load i64, i64* %begv_marker_, align 8
  %call66 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp67 = icmp eq i64 %40, %call66
  br i1 %cmp67, label %cond.true.69, label %cond.false.71

cond.true.69:                                     ; preds = %cond.false
  %41 = load %struct.buffer*, %struct.buffer** %b, align 8
  %begv70 = getelementptr inbounds %struct.buffer, %struct.buffer* %41, i32 0, i32 77
  %42 = load i64, i64* %begv70, align 8
  br label %cond.end

cond.false.71:                                    ; preds = %cond.false
  %43 = load %struct.buffer*, %struct.buffer** %b, align 8
  %begv_marker_72 = getelementptr inbounds %struct.buffer, %struct.buffer* %43, i32 0, i32 46
  %44 = load i64, i64* %begv_marker_72, align 8
  %call73 = call i64 @marker_position(i64 %44)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.71, %cond.true.69
  %cond = phi i64 [ %42, %cond.true.69 ], [ %call73, %cond.false.71 ]
  br label %cond.end.74

cond.end.74:                                      ; preds = %cond.end, %cond.true.65
  %cond75 = phi i64 [ %38, %cond.true.65 ], [ %cond, %cond.end ]
  br label %cond.end.77

cond.false.76:                                    ; preds = %if.end.60
  br label %cond.end.77

cond.end.77:                                      ; preds = %cond.false.76, %cond.end.74
  %cond78 = phi i64 [ %cond75, %cond.end.74 ], [ 1, %cond.false.76 ]
  %45 = load i64, i64* %charpos36, align 8
  %46 = load i8, i8* %restricted.addr, align 1
  %tobool79 = trunc i8 %46 to i1
  br i1 %tobool79, label %cond.true.81, label %cond.false.98

cond.true.81:                                     ; preds = %cond.end.77
  %47 = load %struct.buffer*, %struct.buffer** %b, align 8
  %48 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp82 = icmp eq %struct.buffer* %47, %48
  br i1 %cmp82, label %cond.true.84, label %cond.false.85

cond.true.84:                                     ; preds = %cond.true.81
  %49 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %49, i32 0, i32 79
  %50 = load i64, i64* %zv, align 8
  br label %cond.end.96

cond.false.85:                                    ; preds = %cond.true.81
  %51 = load %struct.buffer*, %struct.buffer** %b, align 8
  %zv_marker_ = getelementptr inbounds %struct.buffer, %struct.buffer* %51, i32 0, i32 47
  %52 = load i64, i64* %zv_marker_, align 8
  %call86 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp87 = icmp eq i64 %52, %call86
  br i1 %cmp87, label %cond.true.89, label %cond.false.91

cond.true.89:                                     ; preds = %cond.false.85
  %53 = load %struct.buffer*, %struct.buffer** %b, align 8
  %zv90 = getelementptr inbounds %struct.buffer, %struct.buffer* %53, i32 0, i32 79
  %54 = load i64, i64* %zv90, align 8
  br label %cond.end.94

cond.false.91:                                    ; preds = %cond.false.85
  %55 = load %struct.buffer*, %struct.buffer** %b, align 8
  %zv_marker_92 = getelementptr inbounds %struct.buffer, %struct.buffer* %55, i32 0, i32 47
  %56 = load i64, i64* %zv_marker_92, align 8
  %call93 = call i64 @marker_position(i64 %56)
  br label %cond.end.94

cond.end.94:                                      ; preds = %cond.false.91, %cond.true.89
  %cond95 = phi i64 [ %54, %cond.true.89 ], [ %call93, %cond.false.91 ]
  br label %cond.end.96

cond.end.96:                                      ; preds = %cond.end.94, %cond.true.84
  %cond97 = phi i64 [ %50, %cond.true.84 ], [ %cond95, %cond.end.94 ]
  br label %cond.end.99

cond.false.98:                                    ; preds = %cond.end.77
  %57 = load %struct.buffer*, %struct.buffer** %b, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %57, i32 0, i32 73
  %58 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %z = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %58, i32 0, i32 2
  %59 = load i64, i64* %z, align 8
  br label %cond.end.99

cond.end.99:                                      ; preds = %cond.false.98, %cond.end.96
  %cond100 = phi i64 [ %cond97, %cond.end.96 ], [ %59, %cond.false.98 ]
  %call101 = call i64 @clip_to_bounds(i64 %cond78, i64 %45, i64 %cond100)
  store i64 %call101, i64* %charpos36, align 8
  %60 = load i64, i64* %bytepos37, align 8
  %cmp102 = icmp eq i64 %60, -1
  br i1 %cmp102, label %if.then.104, label %if.else.106

if.then.104:                                      ; preds = %cond.end.99
  %61 = load %struct.buffer*, %struct.buffer** %b, align 8
  %62 = load i64, i64* %charpos36, align 8
  %call105 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %61, i64 %62)
  store i64 %call105, i64* %bytepos37, align 8
  br label %if.end.155

if.else.106:                                      ; preds = %cond.end.99
  %63 = load i8, i8* %restricted.addr, align 1
  %tobool107 = trunc i8 %63 to i1
  br i1 %tobool107, label %cond.true.109, label %cond.false.127

cond.true.109:                                    ; preds = %if.else.106
  %64 = load %struct.buffer*, %struct.buffer** %b, align 8
  %65 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp110 = icmp eq %struct.buffer* %64, %65
  br i1 %cmp110, label %cond.true.112, label %cond.false.113

cond.true.112:                                    ; preds = %cond.true.109
  %66 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %66, i32 0, i32 78
  %67 = load i64, i64* %begv_byte, align 8
  br label %cond.end.125

cond.false.113:                                   ; preds = %cond.true.109
  %68 = load %struct.buffer*, %struct.buffer** %b, align 8
  %begv_marker_114 = getelementptr inbounds %struct.buffer, %struct.buffer* %68, i32 0, i32 46
  %69 = load i64, i64* %begv_marker_114, align 8
  %call115 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp116 = icmp eq i64 %69, %call115
  br i1 %cmp116, label %cond.true.118, label %cond.false.120

cond.true.118:                                    ; preds = %cond.false.113
  %70 = load %struct.buffer*, %struct.buffer** %b, align 8
  %begv_byte119 = getelementptr inbounds %struct.buffer, %struct.buffer* %70, i32 0, i32 78
  %71 = load i64, i64* %begv_byte119, align 8
  br label %cond.end.123

cond.false.120:                                   ; preds = %cond.false.113
  %72 = load %struct.buffer*, %struct.buffer** %b, align 8
  %begv_marker_121 = getelementptr inbounds %struct.buffer, %struct.buffer* %72, i32 0, i32 46
  %73 = load i64, i64* %begv_marker_121, align 8
  %call122 = call i64 @marker_byte_position(i64 %73)
  br label %cond.end.123

cond.end.123:                                     ; preds = %cond.false.120, %cond.true.118
  %cond124 = phi i64 [ %71, %cond.true.118 ], [ %call122, %cond.false.120 ]
  br label %cond.end.125

cond.end.125:                                     ; preds = %cond.end.123, %cond.true.112
  %cond126 = phi i64 [ %67, %cond.true.112 ], [ %cond124, %cond.end.123 ]
  br label %cond.end.128

cond.false.127:                                   ; preds = %if.else.106
  br label %cond.end.128

cond.end.128:                                     ; preds = %cond.false.127, %cond.end.125
  %cond129 = phi i64 [ %cond126, %cond.end.125 ], [ 1, %cond.false.127 ]
  %74 = load i64, i64* %bytepos37, align 8
  %75 = load i8, i8* %restricted.addr, align 1
  %tobool130 = trunc i8 %75 to i1
  br i1 %tobool130, label %cond.true.132, label %cond.false.150

cond.true.132:                                    ; preds = %cond.end.128
  %76 = load %struct.buffer*, %struct.buffer** %b, align 8
  %77 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp133 = icmp eq %struct.buffer* %76, %77
  br i1 %cmp133, label %cond.true.135, label %cond.false.136

cond.true.135:                                    ; preds = %cond.true.132
  %78 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %78, i32 0, i32 80
  %79 = load i64, i64* %zv_byte, align 8
  br label %cond.end.148

cond.false.136:                                   ; preds = %cond.true.132
  %80 = load %struct.buffer*, %struct.buffer** %b, align 8
  %zv_marker_137 = getelementptr inbounds %struct.buffer, %struct.buffer* %80, i32 0, i32 47
  %81 = load i64, i64* %zv_marker_137, align 8
  %call138 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp139 = icmp eq i64 %81, %call138
  br i1 %cmp139, label %cond.true.141, label %cond.false.143

cond.true.141:                                    ; preds = %cond.false.136
  %82 = load %struct.buffer*, %struct.buffer** %b, align 8
  %zv_byte142 = getelementptr inbounds %struct.buffer, %struct.buffer* %82, i32 0, i32 80
  %83 = load i64, i64* %zv_byte142, align 8
  br label %cond.end.146

cond.false.143:                                   ; preds = %cond.false.136
  %84 = load %struct.buffer*, %struct.buffer** %b, align 8
  %zv_marker_144 = getelementptr inbounds %struct.buffer, %struct.buffer* %84, i32 0, i32 47
  %85 = load i64, i64* %zv_marker_144, align 8
  %call145 = call i64 @marker_byte_position(i64 %85)
  br label %cond.end.146

cond.end.146:                                     ; preds = %cond.false.143, %cond.true.141
  %cond147 = phi i64 [ %83, %cond.true.141 ], [ %call145, %cond.false.143 ]
  br label %cond.end.148

cond.end.148:                                     ; preds = %cond.end.146, %cond.true.135
  %cond149 = phi i64 [ %79, %cond.true.135 ], [ %cond147, %cond.end.146 ]
  br label %cond.end.152

cond.false.150:                                   ; preds = %cond.end.128
  %86 = load %struct.buffer*, %struct.buffer** %b, align 8
  %text151 = getelementptr inbounds %struct.buffer, %struct.buffer* %86, i32 0, i32 73
  %87 = load %struct.buffer_text*, %struct.buffer_text** %text151, align 8
  %z_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %87, i32 0, i32 4
  %88 = load i64, i64* %z_byte, align 8
  br label %cond.end.152

cond.end.152:                                     ; preds = %cond.false.150, %cond.end.148
  %cond153 = phi i64 [ %cond149, %cond.end.148 ], [ %88, %cond.false.150 ]
  %call154 = call i64 @clip_to_bounds(i64 %cond129, i64 %74, i64 %cond153)
  store i64 %call154, i64* %bytepos37, align 8
  br label %if.end.155

if.end.155:                                       ; preds = %cond.end.152, %if.then.104
  %89 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %m, align 8
  %90 = load %struct.buffer*, %struct.buffer** %b, align 8
  %91 = load i64, i64* %charpos36, align 8
  %92 = load i64, i64* %bytepos37, align 8
  call void @attach_marker(%struct.Lisp_Marker* %89, %struct.buffer* %90, i64 %91, i64 %92)
  br label %if.end.156

if.end.156:                                       ; preds = %if.end.155, %if.then.30
  br label %if.end.157

if.end.157:                                       ; preds = %if.end.156, %if.then
  %93 = load i64, i64* %marker.addr, align 8
  ret i64 %93
}

; Function Attrs: nounwind uwtable
define i64 @set_marker_restricted(i64 %marker, i64 %position, i64 %buffer) #0 {
entry:
  %marker.addr = alloca i64, align 8
  %position.addr = alloca i64, align 8
  %buffer.addr = alloca i64, align 8
  store i64 %marker, i64* %marker.addr, align 8
  store i64 %position, i64* %position.addr, align 8
  store i64 %buffer, i64* %buffer.addr, align 8
  %0 = load i64, i64* %marker.addr, align 8
  %1 = load i64, i64* %position.addr, align 8
  %2 = load i64, i64* %buffer.addr, align 8
  %call = call i64 @set_marker_internal(i64 %0, i64 %1, i64 %2, i1 zeroext true)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @set_marker_both(i64 %marker, i64 %buffer, i64 %charpos, i64 %bytepos) #0 {
entry:
  %marker.addr = alloca i64, align 8
  %buffer.addr = alloca i64, align 8
  %charpos.addr = alloca i64, align 8
  %bytepos.addr = alloca i64, align 8
  %m = alloca %struct.Lisp_Marker*, align 8
  %b = alloca %struct.buffer*, align 8
  store i64 %marker, i64* %marker.addr, align 8
  store i64 %buffer, i64* %buffer.addr, align 8
  store i64 %charpos, i64* %charpos.addr, align 8
  store i64 %bytepos, i64* %bytepos.addr, align 8
  %0 = load i64, i64* %buffer.addr, align 8
  %call = call %struct.buffer* @live_buffer(i64 %0)
  store %struct.buffer* %call, %struct.buffer** %b, align 8
  %1 = load i64, i64* %marker.addr, align 8
  call void @CHECK_MARKER(i64 %1)
  %2 = load i64, i64* %marker.addr, align 8
  %call1 = call %struct.Lisp_Marker* @XMARKER(i64 %2)
  store %struct.Lisp_Marker* %call1, %struct.Lisp_Marker** %m, align 8
  %3 = load %struct.buffer*, %struct.buffer** %b, align 8
  %tobool = icmp ne %struct.buffer* %3, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %m, align 8
  %5 = load %struct.buffer*, %struct.buffer** %b, align 8
  %6 = load i64, i64* %charpos.addr, align 8
  %7 = load i64, i64* %bytepos.addr, align 8
  call void @attach_marker(%struct.Lisp_Marker* %4, %struct.buffer* %5, i64 %6, i64 %7)
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %m, align 8
  call void @unchain_marker(%struct.Lisp_Marker* %8)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i64, i64* %marker.addr, align 8
  ret i64 %9
}

; Function Attrs: nounwind uwtable
define internal %struct.buffer* @live_buffer(i64 %buffer) #0 {
entry:
  %buffer.addr = alloca i64, align 8
  %b = alloca %struct.buffer*, align 8
  store i64 %buffer, i64* %buffer.addr, align 8
  %0 = load i64, i64* %buffer.addr, align 8
  %call = call %struct.buffer* @decode_buffer(i64 %0)
  store %struct.buffer* %call, %struct.buffer** %b, align 8
  %1 = load %struct.buffer*, %struct.buffer** %b, align 8
  %name_ = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 1
  %2 = load i64, i64* %name_, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %2, %call1
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %3 = load %struct.buffer*, %struct.buffer** %b, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.buffer* [ %3, %cond.true ], [ null, %cond.false ]
  ret %struct.buffer* %cond
}

; Function Attrs: nounwind uwtable
define internal void @attach_marker(%struct.Lisp_Marker* %m, %struct.buffer* %b, i64 %charpos, i64 %bytepos) #0 {
entry:
  %m.addr = alloca %struct.Lisp_Marker*, align 8
  %b.addr = alloca %struct.buffer*, align 8
  %charpos.addr = alloca i64, align 8
  %bytepos.addr = alloca i64, align 8
  store %struct.Lisp_Marker* %m, %struct.Lisp_Marker** %m.addr, align 8
  store %struct.buffer* %b, %struct.buffer** %b.addr, align 8
  store i64 %charpos, i64* %charpos.addr, align 8
  store i64 %bytepos, i64* %bytepos.addr, align 8
  %0 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 73
  %1 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %z = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %1, i32 0, i32 2
  %2 = load i64, i64* %z, align 8
  %3 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %text1 = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i32 0, i32 73
  %4 = load %struct.buffer_text*, %struct.buffer_text** %text1, align 8
  %z_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %4, i32 0, i32 4
  %5 = load i64, i64* %z_byte, align 8
  %cmp = icmp eq i64 %2, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i64, i64* %charpos.addr, align 8
  %7 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %m.addr, align 8
  %charpos2 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %7, i32 0, i32 3
  store i64 %6, i64* %charpos2, align 8
  %8 = load i64, i64* %bytepos.addr, align 8
  %9 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %m.addr, align 8
  %bytepos3 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %9, i32 0, i32 4
  store i64 %8, i64* %bytepos3, align 8
  %10 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %m.addr, align 8
  %buffer = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %10, i32 0, i32 1
  %11 = load %struct.buffer*, %struct.buffer** %buffer, align 8
  %12 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %cmp4 = icmp ne %struct.buffer* %11, %12
  br i1 %cmp4, label %if.then.5, label %if.end.10

if.then.5:                                        ; preds = %if.end
  %13 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %m.addr, align 8
  call void @unchain_marker(%struct.Lisp_Marker* %13)
  %14 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %15 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %m.addr, align 8
  %buffer6 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %15, i32 0, i32 1
  store %struct.buffer* %14, %struct.buffer** %buffer6, align 8
  %16 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %text7 = getelementptr inbounds %struct.buffer, %struct.buffer* %16, i32 0, i32 73
  %17 = load %struct.buffer_text*, %struct.buffer_text** %text7, align 8
  %markers = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %17, i32 0, i32 16
  %18 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %markers, align 8
  %19 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %m.addr, align 8
  %next = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %19, i32 0, i32 2
  store %struct.Lisp_Marker* %18, %struct.Lisp_Marker** %next, align 8
  %20 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %m.addr, align 8
  %21 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %text8 = getelementptr inbounds %struct.buffer, %struct.buffer* %21, i32 0, i32 73
  %22 = load %struct.buffer_text*, %struct.buffer_text** %text8, align 8
  %markers9 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %22, i32 0, i32 16
  store %struct.Lisp_Marker* %20, %struct.Lisp_Marker** %markers9, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.5, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @unchain_marker(%struct.Lisp_Marker* %marker) #0 {
entry:
  %marker.addr = alloca %struct.Lisp_Marker*, align 8
  %b = alloca %struct.buffer*, align 8
  %tail = alloca %struct.Lisp_Marker*, align 8
  %prev = alloca %struct.Lisp_Marker**, align 8
  store %struct.Lisp_Marker* %marker, %struct.Lisp_Marker** %marker.addr, align 8
  %0 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %marker.addr, align 8
  %buffer = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %0, i32 0, i32 1
  %1 = load %struct.buffer*, %struct.buffer** %buffer, align 8
  store %struct.buffer* %1, %struct.buffer** %b, align 8
  %2 = load %struct.buffer*, %struct.buffer** %b, align 8
  %tobool = icmp ne %struct.buffer* %2, null
  br i1 %tobool, label %if.then, label %if.end.21

if.then:                                          ; preds = %entry
  %3 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %marker.addr, align 8
  %buffer1 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %3, i32 0, i32 1
  store %struct.buffer* null, %struct.buffer** %buffer1, align 8
  %4 = load %struct.buffer*, %struct.buffer** %b, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %4, i32 0, i32 73
  %5 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %markers = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %5, i32 0, i32 16
  store %struct.Lisp_Marker** %markers, %struct.Lisp_Marker*** %prev, align 8
  %6 = load %struct.buffer*, %struct.buffer** %b, align 8
  %text2 = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 73
  %7 = load %struct.buffer_text*, %struct.buffer_text** %text2, align 8
  %markers3 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %7, i32 0, i32 16
  %8 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %markers3, align 8
  store %struct.Lisp_Marker* %8, %struct.Lisp_Marker** %tail, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %9 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %tail, align 8
  %tobool4 = icmp ne %struct.Lisp_Marker* %9, null
  br i1 %tobool4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %marker.addr, align 8
  %11 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %tail, align 8
  %cmp = icmp eq %struct.Lisp_Marker* %10, %11
  br i1 %cmp, label %if.then.5, label %if.end.19

if.then.5:                                        ; preds = %for.body
  %12 = load %struct.Lisp_Marker**, %struct.Lisp_Marker*** %prev, align 8
  %13 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %12, align 8
  %14 = load %struct.buffer*, %struct.buffer** %b, align 8
  %text6 = getelementptr inbounds %struct.buffer, %struct.buffer* %14, i32 0, i32 73
  %15 = load %struct.buffer_text*, %struct.buffer_text** %text6, align 8
  %markers7 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %15, i32 0, i32 16
  %16 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %markers7, align 8
  %cmp8 = icmp eq %struct.Lisp_Marker* %13, %16
  br i1 %cmp8, label %if.then.9, label %if.end.17

if.then.9:                                        ; preds = %if.then.5
  %17 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %tail, align 8
  %next = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %17, i32 0, i32 2
  %18 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %next, align 8
  %tobool10 = icmp ne %struct.Lisp_Marker* %18, null
  br i1 %tobool10, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then.9
  %19 = load %struct.buffer*, %struct.buffer** %b, align 8
  %text11 = getelementptr inbounds %struct.buffer, %struct.buffer* %19, i32 0, i32 73
  %20 = load %struct.buffer_text*, %struct.buffer_text** %text11, align 8
  %21 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %tail, align 8
  %next12 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %21, i32 0, i32 2
  %22 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %next12, align 8
  %buffer13 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %22, i32 0, i32 1
  %23 = load %struct.buffer*, %struct.buffer** %buffer13, align 8
  %text14 = getelementptr inbounds %struct.buffer, %struct.buffer* %23, i32 0, i32 73
  %24 = load %struct.buffer_text*, %struct.buffer_text** %text14, align 8
  %cmp15 = icmp ne %struct.buffer_text* %20, %24
  br i1 %cmp15, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %land.lhs.true
  call void @emacs_abort() #3
  unreachable

if.end:                                           ; preds = %land.lhs.true, %if.then.9
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %if.then.5
  %25 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %tail, align 8
  %next18 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %25, i32 0, i32 2
  %26 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %next18, align 8
  %27 = load %struct.Lisp_Marker**, %struct.Lisp_Marker*** %prev, align 8
  store %struct.Lisp_Marker* %26, %struct.Lisp_Marker** %27, align 8
  br label %for.end

if.end.19:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %28 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %tail, align 8
  %next20 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %28, i32 0, i32 2
  store %struct.Lisp_Marker** %next20, %struct.Lisp_Marker*** %prev, align 8
  %29 = load %struct.Lisp_Marker**, %struct.Lisp_Marker*** %prev, align 8
  %30 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %29, align 8
  store %struct.Lisp_Marker* %30, %struct.Lisp_Marker** %tail, align 8
  br label %for.cond

for.end:                                          ; preds = %if.end.17, %for.cond
  br label %if.end.21

if.end.21:                                        ; preds = %for.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @set_marker_restricted_both(i64 %marker, i64 %buffer, i64 %charpos, i64 %bytepos) #0 {
entry:
  %marker.addr = alloca i64, align 8
  %buffer.addr = alloca i64, align 8
  %charpos.addr = alloca i64, align 8
  %bytepos.addr = alloca i64, align 8
  %m = alloca %struct.Lisp_Marker*, align 8
  %b = alloca %struct.buffer*, align 8
  store i64 %marker, i64* %marker.addr, align 8
  store i64 %buffer, i64* %buffer.addr, align 8
  store i64 %charpos, i64* %charpos.addr, align 8
  store i64 %bytepos, i64* %bytepos.addr, align 8
  %0 = load i64, i64* %buffer.addr, align 8
  %call = call %struct.buffer* @live_buffer(i64 %0)
  store %struct.buffer* %call, %struct.buffer** %b, align 8
  %1 = load i64, i64* %marker.addr, align 8
  call void @CHECK_MARKER(i64 %1)
  %2 = load i64, i64* %marker.addr, align 8
  %call1 = call %struct.Lisp_Marker* @XMARKER(i64 %2)
  store %struct.Lisp_Marker* %call1, %struct.Lisp_Marker** %m, align 8
  %3 = load %struct.buffer*, %struct.buffer** %b, align 8
  %tobool = icmp ne %struct.buffer* %3, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %m, align 8
  %5 = load %struct.buffer*, %struct.buffer** %b, align 8
  %6 = load %struct.buffer*, %struct.buffer** %b, align 8
  %7 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp = icmp eq %struct.buffer* %6, %7
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %8 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 77
  %9 = load i64, i64* %begv, align 8
  br label %cond.end.9

cond.false:                                       ; preds = %if.then
  %10 = load %struct.buffer*, %struct.buffer** %b, align 8
  %begv_marker_ = getelementptr inbounds %struct.buffer, %struct.buffer* %10, i32 0, i32 46
  %11 = load i64, i64* %begv_marker_, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp3 = icmp eq i64 %11, %call2
  br i1 %cmp3, label %cond.true.4, label %cond.false.6

cond.true.4:                                      ; preds = %cond.false
  %12 = load %struct.buffer*, %struct.buffer** %b, align 8
  %begv5 = getelementptr inbounds %struct.buffer, %struct.buffer* %12, i32 0, i32 77
  %13 = load i64, i64* %begv5, align 8
  br label %cond.end

cond.false.6:                                     ; preds = %cond.false
  %14 = load %struct.buffer*, %struct.buffer** %b, align 8
  %begv_marker_7 = getelementptr inbounds %struct.buffer, %struct.buffer* %14, i32 0, i32 46
  %15 = load i64, i64* %begv_marker_7, align 8
  %call8 = call i64 @marker_position(i64 %15)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.6, %cond.true.4
  %cond = phi i64 [ %13, %cond.true.4 ], [ %call8, %cond.false.6 ]
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.end, %cond.true
  %cond10 = phi i64 [ %9, %cond.true ], [ %cond, %cond.end ]
  %16 = load i64, i64* %charpos.addr, align 8
  %17 = load %struct.buffer*, %struct.buffer** %b, align 8
  %18 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp11 = icmp eq %struct.buffer* %17, %18
  br i1 %cmp11, label %cond.true.12, label %cond.false.13

cond.true.12:                                     ; preds = %cond.end.9
  %19 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %19, i32 0, i32 79
  %20 = load i64, i64* %zv, align 8
  br label %cond.end.23

cond.false.13:                                    ; preds = %cond.end.9
  %21 = load %struct.buffer*, %struct.buffer** %b, align 8
  %zv_marker_ = getelementptr inbounds %struct.buffer, %struct.buffer* %21, i32 0, i32 47
  %22 = load i64, i64* %zv_marker_, align 8
  %call14 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp15 = icmp eq i64 %22, %call14
  br i1 %cmp15, label %cond.true.16, label %cond.false.18

cond.true.16:                                     ; preds = %cond.false.13
  %23 = load %struct.buffer*, %struct.buffer** %b, align 8
  %zv17 = getelementptr inbounds %struct.buffer, %struct.buffer* %23, i32 0, i32 79
  %24 = load i64, i64* %zv17, align 8
  br label %cond.end.21

cond.false.18:                                    ; preds = %cond.false.13
  %25 = load %struct.buffer*, %struct.buffer** %b, align 8
  %zv_marker_19 = getelementptr inbounds %struct.buffer, %struct.buffer* %25, i32 0, i32 47
  %26 = load i64, i64* %zv_marker_19, align 8
  %call20 = call i64 @marker_position(i64 %26)
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.18, %cond.true.16
  %cond22 = phi i64 [ %24, %cond.true.16 ], [ %call20, %cond.false.18 ]
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.end.21, %cond.true.12
  %cond24 = phi i64 [ %20, %cond.true.12 ], [ %cond22, %cond.end.21 ]
  %call25 = call i64 @clip_to_bounds(i64 %cond10, i64 %16, i64 %cond24)
  %27 = load %struct.buffer*, %struct.buffer** %b, align 8
  %28 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp26 = icmp eq %struct.buffer* %27, %28
  br i1 %cmp26, label %cond.true.27, label %cond.false.28

cond.true.27:                                     ; preds = %cond.end.23
  %29 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %29, i32 0, i32 78
  %30 = load i64, i64* %begv_byte, align 8
  br label %cond.end.39

cond.false.28:                                    ; preds = %cond.end.23
  %31 = load %struct.buffer*, %struct.buffer** %b, align 8
  %begv_marker_29 = getelementptr inbounds %struct.buffer, %struct.buffer* %31, i32 0, i32 46
  %32 = load i64, i64* %begv_marker_29, align 8
  %call30 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp31 = icmp eq i64 %32, %call30
  br i1 %cmp31, label %cond.true.32, label %cond.false.34

cond.true.32:                                     ; preds = %cond.false.28
  %33 = load %struct.buffer*, %struct.buffer** %b, align 8
  %begv_byte33 = getelementptr inbounds %struct.buffer, %struct.buffer* %33, i32 0, i32 78
  %34 = load i64, i64* %begv_byte33, align 8
  br label %cond.end.37

cond.false.34:                                    ; preds = %cond.false.28
  %35 = load %struct.buffer*, %struct.buffer** %b, align 8
  %begv_marker_35 = getelementptr inbounds %struct.buffer, %struct.buffer* %35, i32 0, i32 46
  %36 = load i64, i64* %begv_marker_35, align 8
  %call36 = call i64 @marker_byte_position(i64 %36)
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.34, %cond.true.32
  %cond38 = phi i64 [ %34, %cond.true.32 ], [ %call36, %cond.false.34 ]
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.end.37, %cond.true.27
  %cond40 = phi i64 [ %30, %cond.true.27 ], [ %cond38, %cond.end.37 ]
  %37 = load i64, i64* %bytepos.addr, align 8
  %38 = load %struct.buffer*, %struct.buffer** %b, align 8
  %39 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp41 = icmp eq %struct.buffer* %38, %39
  br i1 %cmp41, label %cond.true.42, label %cond.false.43

cond.true.42:                                     ; preds = %cond.end.39
  %40 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %40, i32 0, i32 80
  %41 = load i64, i64* %zv_byte, align 8
  br label %cond.end.54

cond.false.43:                                    ; preds = %cond.end.39
  %42 = load %struct.buffer*, %struct.buffer** %b, align 8
  %zv_marker_44 = getelementptr inbounds %struct.buffer, %struct.buffer* %42, i32 0, i32 47
  %43 = load i64, i64* %zv_marker_44, align 8
  %call45 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp46 = icmp eq i64 %43, %call45
  br i1 %cmp46, label %cond.true.47, label %cond.false.49

cond.true.47:                                     ; preds = %cond.false.43
  %44 = load %struct.buffer*, %struct.buffer** %b, align 8
  %zv_byte48 = getelementptr inbounds %struct.buffer, %struct.buffer* %44, i32 0, i32 80
  %45 = load i64, i64* %zv_byte48, align 8
  br label %cond.end.52

cond.false.49:                                    ; preds = %cond.false.43
  %46 = load %struct.buffer*, %struct.buffer** %b, align 8
  %zv_marker_50 = getelementptr inbounds %struct.buffer, %struct.buffer* %46, i32 0, i32 47
  %47 = load i64, i64* %zv_marker_50, align 8
  %call51 = call i64 @marker_byte_position(i64 %47)
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.49, %cond.true.47
  %cond53 = phi i64 [ %45, %cond.true.47 ], [ %call51, %cond.false.49 ]
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.end.52, %cond.true.42
  %cond55 = phi i64 [ %41, %cond.true.42 ], [ %cond53, %cond.end.52 ]
  %call56 = call i64 @clip_to_bounds(i64 %cond40, i64 %37, i64 %cond55)
  call void @attach_marker(%struct.Lisp_Marker* %4, %struct.buffer* %5, i64 %call25, i64 %call56)
  br label %if.end

if.else:                                          ; preds = %entry
  %48 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %m, align 8
  call void @unchain_marker(%struct.Lisp_Marker* %48)
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end.54
  %49 = load i64, i64* %marker.addr, align 8
  ret i64 %49
}

declare i64 @clip_to_bounds(i64, i64, i64) #1

; Function Attrs: noreturn
declare void @emacs_abort() #2

; Function Attrs: noreturn
declare void @error(i8*, ...) #2

; Function Attrs: nounwind uwtable
define i64 @Fcopy_marker(i64 %marker, i64 %type) #0 {
entry:
  %marker.addr = alloca i64, align 8
  %type.addr = alloca i64, align 8
  %new = alloca i64, align 8
  store i64 %marker, i64* %marker.addr, align 8
  store i64 %type, i64* %type.addr, align 8
  %0 = load i64, i64* %marker.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %marker.addr, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %and1 = and i32 %conv, -5
  %cmp2 = icmp eq i32 %and1, 2
  br i1 %cmp2, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %2 = load i64, i64* %marker.addr, align 8
  %and4 = and i64 %2, 7
  %conv5 = trunc i64 %and4 to i32
  %cmp6 = icmp eq i32 %conv5, 1
  br i1 %cmp6, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %lor.lhs.false
  %3 = load i64, i64* %marker.addr, align 8
  %call8 = call i32 @XMISCTYPE(i64 %3)
  %cmp9 = icmp eq i32 %call8, 24236
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true, %if.then
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %lor.lhs.false
  %call11 = call i64 @builtin_lisp_symbol(i32 558)
  %4 = load i64, i64* %marker.addr, align 8
  %5 = call i64 @wrong_type_argument(i64 %call11, i64 %4) #3
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %6, %cond.true
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %call12 = call i64 @Fmake_marker()
  store i64 %call12, i64* %new, align 8
  %7 = load i64, i64* %new, align 8
  %8 = load i64, i64* %marker.addr, align 8
  %9 = load i64, i64* %marker.addr, align 8
  %and13 = and i64 %9, 7
  %conv14 = trunc i64 %and13 to i32
  %cmp15 = icmp eq i32 %conv14, 1
  br i1 %cmp15, label %land.lhs.true.17, label %cond.false.23

land.lhs.true.17:                                 ; preds = %if.end
  %10 = load i64, i64* %marker.addr, align 8
  %call18 = call i32 @XMISCTYPE(i64 %10)
  %cmp19 = icmp eq i32 %call18, 24236
  br i1 %cmp19, label %cond.true.21, label %cond.false.23

cond.true.21:                                     ; preds = %land.lhs.true.17
  %11 = load i64, i64* %marker.addr, align 8
  %call22 = call i64 @Fmarker_buffer(i64 %11)
  br label %cond.end.25

cond.false.23:                                    ; preds = %land.lhs.true.17, %if.end
  %call24 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.23, %cond.true.21
  %cond = phi i64 [ %call22, %cond.true.21 ], [ %call24, %cond.false.23 ]
  %call26 = call i64 @Fset_marker(i64 %7, i64 %8, i64 %cond)
  %12 = load i64, i64* %type.addr, align 8
  %call27 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp28 = icmp eq i64 %12, %call27
  %lnot = xor i1 %cmp28, true
  %13 = load i64, i64* %new, align 8
  %call30 = call %struct.Lisp_Marker* @XMARKER(i64 %13)
  %14 = bitcast %struct.Lisp_Marker* %call30 to i32*
  %15 = zext i1 %lnot to i32
  %bf.load = load i32, i32* %14, align 8
  %bf.shl = shl i32 %15, 31
  %bf.clear = and i32 %bf.load, 2147483647
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, i32* %14, align 8
  %bf.result.cast = trunc i32 %15 to i8
  %tobool = trunc i8 %bf.result.cast to i1
  %16 = load i64, i64* %new, align 8
  ret i64 %16
}

declare i32 @XMISCTYPE(i64) #1

; Function Attrs: noreturn
declare i64 @wrong_type_argument(i64, i64) #2

declare i64 @Fmake_marker() #1

; Function Attrs: nounwind uwtable
define i64 @Fmarker_insertion_type(i64 %marker) #0 {
entry:
  %marker.addr = alloca i64, align 8
  store i64 %marker, i64* %marker.addr, align 8
  %0 = load i64, i64* %marker.addr, align 8
  call void @CHECK_MARKER(i64 %0)
  %1 = load i64, i64* %marker.addr, align 8
  %call = call %struct.Lisp_Marker* @XMARKER(i64 %1)
  %2 = bitcast %struct.Lisp_Marker* %call to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.lshr = lshr i32 %bf.load, 31
  %bf.cast = trunc i32 %bf.lshr to i1
  br i1 %bf.cast, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call1, %cond.true ], [ %call2, %cond.false ]
  ret i64 %cond
}

; Function Attrs: nounwind uwtable
define i64 @Fset_marker_insertion_type(i64 %marker, i64 %type) #0 {
entry:
  %marker.addr = alloca i64, align 8
  %type.addr = alloca i64, align 8
  store i64 %marker, i64* %marker.addr, align 8
  store i64 %type, i64* %type.addr, align 8
  %0 = load i64, i64* %marker.addr, align 8
  call void @CHECK_MARKER(i64 %0)
  %1 = load i64, i64* %type.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %1, %call
  %lnot = xor i1 %cmp, true
  %2 = load i64, i64* %marker.addr, align 8
  %call1 = call %struct.Lisp_Marker* @XMARKER(i64 %2)
  %3 = bitcast %struct.Lisp_Marker* %call1 to i32*
  %4 = zext i1 %lnot to i32
  %bf.load = load i32, i32* %3, align 8
  %bf.shl = shl i32 %4, 31
  %bf.clear = and i32 %bf.load, 2147483647
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, i32* %3, align 8
  %bf.result.cast = trunc i32 %4 to i8
  %tobool = trunc i8 %bf.result.cast to i1
  %5 = load i64, i64* %type.addr, align 8
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define i64 @Fbuffer_has_markers_at(i64 %position) #0 {
entry:
  %retval = alloca i64, align 8
  %position.addr = alloca i64, align 8
  %tail = alloca %struct.Lisp_Marker*, align 8
  %charpos = alloca i64, align 8
  store i64 %position, i64* %position.addr, align 8
  %0 = load i64, i64* %position.addr, align 8
  %shr = ashr i64 %0, 2
  %1 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 73
  %2 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %z = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %2, i32 0, i32 2
  %3 = load i64, i64* %z, align 8
  %call = call i64 @clip_to_bounds(i64 1, i64 %shr, i64 %3)
  store i64 %call, i64* %charpos, align 8
  %4 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text1 = getelementptr inbounds %struct.buffer, %struct.buffer* %4, i32 0, i32 73
  %5 = load %struct.buffer_text*, %struct.buffer_text** %text1, align 8
  %markers = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %5, i32 0, i32 16
  %6 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %markers, align 8
  store %struct.Lisp_Marker* %6, %struct.Lisp_Marker** %tail, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %tail, align 8
  %tobool = icmp ne %struct.Lisp_Marker* %7, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %tail, align 8
  %charpos2 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %8, i32 0, i32 3
  %9 = load i64, i64* %charpos2, align 8
  %10 = load i64, i64* %charpos, align 8
  %cmp = icmp eq i64 %9, %10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %call3 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call3, i64* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %tail, align 8
  %next = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %11, i32 0, i32 2
  %12 = load %struct.Lisp_Marker*, %struct.Lisp_Marker** %next, align 8
  store %struct.Lisp_Marker* %12, %struct.Lisp_Marker** %tail, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call4, i64* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %13 = load i64, i64* %retval
  ret i64 %13
}

; Function Attrs: nounwind uwtable
define void @syms_of_marker() #0 {
entry:
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Smarker_position to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Smarker_buffer to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sset_marker to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Scopy_marker to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Smarker_insertion_type to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sset_marker_insertion_type to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sbuffer_has_markers_at to %struct.Lisp_Subr*))
  ret void
}

declare void @defsubr(%struct.Lisp_Subr*) #1

declare %struct.buffer* @decode_buffer(i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
