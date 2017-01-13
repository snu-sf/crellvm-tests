; ModuleID = './src/textprop.bc'
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
%struct.window = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.glyph_matrix*, %struct.glyph_matrix*, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, %struct.cursor_pos, %struct.cursor_pos, %struct.cursor_pos, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i64 }
%struct.glyph_matrix = type { %struct.glyph_pool*, %struct.glyph_row*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.buffer*, i64, i64 }
%struct.glyph_pool = type { %struct.glyph*, i64, i32, i32 }
%struct.glyph = type { i64, i64, i16, i16, i16, i16, i24, i24, %union.anon.0, %union.anon.2 }
%union.anon.0 = type { %struct.glyph_slice }
%struct.glyph_slice = type { i64 }
%union.anon.2 = type { i32 }
%struct.glyph_row = type <{ [4 x %struct.glyph*], [4 x i16], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.display_pos, %struct.display_pos, %struct.text_pos, %struct.text_pos, i32, [11 x i8], i8, i24, i24, i32, i40, i32, %struct.XRectangle* }>
%struct.display_pos = type { %struct.text_pos, i64, %struct.text_pos, i32 }
%struct.text_pos = type { i64, i64 }
%struct.XRectangle = type { i16, i16, i16, i16 }
%struct.cursor_pos = type { i32, i32, i32, i32 }
%union.Aligned_Cons = type { %struct.Lisp_Cons }
%struct.Lisp_Cons = type { i64, %union.anon.6 }
%union.anon.6 = type { i64 }
%struct.Lisp_Subr = type { %struct.vectorlike_header, %union.anon.7, i16, i16, i8*, i8*, i8* }
%union.anon.7 = type { i64 ()* }

@current_buffer = external global %struct.buffer*, align 8
@globals = external global %struct.emacs_globals, align 8
@interval_insert_behind_hooks = internal global i64 0, align 8
@interval_insert_in_front_hooks = internal global i64 0, align 8
@syms_of_textprop.o_fwd = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str = private unnamed_addr constant [24 x i8] c"default-text-properties\00", align 1
@syms_of_textprop.o_fwd.1 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"char-property-alias-alist\00", align 1
@syms_of_textprop.o_fwd.3 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"inhibit-point-motion-hooks\00", align 1
@syms_of_textprop.o_fwd.5 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.6 = private unnamed_addr constant [32 x i8] c"text-property-default-nonsticky\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Odd length text property list\00", align 1
@pending_signals = external global i8, align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"text-properties-at\00", align 1
@Stext_properties_at = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Ftext_properties_at }, i16 1, i16 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.9 = private unnamed_addr constant [18 x i8] c"get-text-property\00", align 1
@Sget_text_property = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Fget_text_property }, i16 2, i16 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.10 = private unnamed_addr constant [18 x i8] c"get-char-property\00", align 1
@Sget_char_property = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Fget_char_property }, i16 2, i16 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.11 = private unnamed_addr constant [30 x i8] c"get-char-property-and-overlay\00", align 1
@Sget_char_property_and_overlay = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Fget_char_property_and_overlay }, i16 2, i16 3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.12 = private unnamed_addr constant [26 x i8] c"next-char-property-change\00", align 1
@Snext_char_property_change = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fnext_char_property_change }, i16 1, i16 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.13 = private unnamed_addr constant [30 x i8] c"previous-char-property-change\00", align 1
@Sprevious_char_property_change = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fprevious_char_property_change }, i16 1, i16 2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.14 = private unnamed_addr constant [33 x i8] c"next-single-char-property-change\00", align 1
@Snext_single_char_property_change = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64)* @Fnext_single_char_property_change }, i16 2, i16 4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.15 = private unnamed_addr constant [37 x i8] c"previous-single-char-property-change\00", align 1
@Sprevious_single_char_property_change = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64)* @Fprevious_single_char_property_change }, i16 2, i16 4, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.16 = private unnamed_addr constant [21 x i8] c"next-property-change\00", align 1
@Snext_property_change = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Fnext_property_change }, i16 1, i16 3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.17 = private unnamed_addr constant [28 x i8] c"next-single-property-change\00", align 1
@Snext_single_property_change = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64)* @Fnext_single_property_change }, i16 2, i16 4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.18 = private unnamed_addr constant [25 x i8] c"previous-property-change\00", align 1
@Sprevious_property_change = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Fprevious_property_change }, i16 1, i16 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.19 = private unnamed_addr constant [32 x i8] c"previous-single-property-change\00", align 1
@Sprevious_single_property_change = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64)* @Fprevious_single_property_change }, i16 2, i16 4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.20 = private unnamed_addr constant [20 x i8] c"add-text-properties\00", align 1
@Sadd_text_properties = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64)* @Fadd_text_properties }, i16 3, i16 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.21 = private unnamed_addr constant [18 x i8] c"put-text-property\00", align 1
@Sput_text_property = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64, i64)* @Fput_text_property }, i16 4, i16 5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.22 = private unnamed_addr constant [20 x i8] c"set-text-properties\00", align 1
@Sset_text_properties = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64)* @Fset_text_properties }, i16 3, i16 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.23 = private unnamed_addr constant [23 x i8] c"add-face-text-property\00", align 1
@Sadd_face_text_property = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64, i64)* @Fadd_face_text_property }, i16 3, i16 5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.24 = private unnamed_addr constant [23 x i8] c"remove-text-properties\00", align 1
@Sremove_text_properties = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64)* @Fremove_text_properties }, i16 3, i16 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.25 = private unnamed_addr constant [31 x i8] c"remove-list-of-text-properties\00", align 1
@Sremove_list_of_text_properties = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64)* @Fremove_list_of_text_properties }, i16 3, i16 4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.25, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.26 = private unnamed_addr constant [18 x i8] c"text-property-any\00", align 1
@Stext_property_any = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64, i64)* @Ftext_property_any }, i16 4, i16 5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.27 = private unnamed_addr constant [22 x i8] c"text-property-not-all\00", align 1
@Stext_property_not_all = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64, i64)* @Ftext_property_not_all }, i16 4, i16 5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i32 0, i32 0), i8* null, i8* null }, align 8

; Function Attrs: nounwind uwtable
define %struct.interval* @validate_interval_range(i64 %object, i64* %begin, i64* %end, i1 zeroext %force) #0 {
entry:
  %retval = alloca %struct.interval*, align 8
  %object.addr = alloca i64, align 8
  %begin.addr = alloca i64*, align 8
  %end.addr = alloca i64*, align 8
  %force.addr = alloca i8, align 1
  %i = alloca %struct.interval*, align 8
  %searchpos = alloca i64, align 8
  %n = alloca i64, align 8
  %b = alloca %struct.buffer*, align 8
  %len = alloca i64, align 8
  store i64 %object, i64* %object.addr, align 8
  store i64* %begin, i64** %begin.addr, align 8
  store i64* %end, i64** %end.addr, align 8
  %frombool = zext i1 %force to i8
  store i8 %frombool, i8* %force.addr, align 1
  %0 = load i64, i64* %object.addr, align 8
  call void @CHECK_STRING_OR_BUFFER(i64 %0)
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load i64*, i64** %begin.addr, align 8
  %2 = load i64, i64* %1, align 8
  %and = and i64 %2, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %3 = load i64*, i64** %begin.addr, align 8
  %4 = load i64, i64* %3, align 8
  %call = call i32 @XMISCTYPE(i64 %4)
  %cmp2 = icmp eq i32 %call, 24236
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %5 = load i64*, i64** %begin.addr, align 8
  %6 = load i64, i64* %5, align 8
  %call4 = call i64 @marker_position(i64 %6)
  %call5 = call i64 @make_natnum(i64 %call4)
  %7 = load i64*, i64** %begin.addr, align 8
  store i64 %call5, i64* %7, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %do.body
  %8 = load i64*, i64** %begin.addr, align 8
  %9 = load i64, i64* %8, align 8
  %and6 = and i64 %9, 7
  %conv7 = trunc i64 %and6 to i32
  %and8 = and i32 %conv7, -5
  %cmp9 = icmp eq i32 %and8, 2
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %call11 = call i64 @builtin_lisp_symbol(i32 558)
  %10 = load i64*, i64** %begin.addr, align 8
  %11 = load i64, i64* %10, align 8
  %12 = call i64 @wrong_type_argument(i64 %call11, i64 %11) #4
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %13, %cond.true
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %14 = load i64*, i64** %end.addr, align 8
  %15 = load i64, i64* %14, align 8
  %and13 = and i64 %15, 7
  %conv14 = trunc i64 %and13 to i32
  %cmp15 = icmp eq i32 %conv14, 1
  br i1 %cmp15, label %land.lhs.true.17, label %if.else.24

land.lhs.true.17:                                 ; preds = %do.body.12
  %16 = load i64*, i64** %end.addr, align 8
  %17 = load i64, i64* %16, align 8
  %call18 = call i32 @XMISCTYPE(i64 %17)
  %cmp19 = icmp eq i32 %call18, 24236
  br i1 %cmp19, label %if.then.21, label %if.else.24

if.then.21:                                       ; preds = %land.lhs.true.17
  %18 = load i64*, i64** %end.addr, align 8
  %19 = load i64, i64* %18, align 8
  %call22 = call i64 @marker_position(i64 %19)
  %call23 = call i64 @make_natnum(i64 %call22)
  %20 = load i64*, i64** %end.addr, align 8
  store i64 %call23, i64* %20, align 8
  br label %if.end.34

if.else.24:                                       ; preds = %land.lhs.true.17, %do.body.12
  %21 = load i64*, i64** %end.addr, align 8
  %22 = load i64, i64* %21, align 8
  %and25 = and i64 %22, 7
  %conv26 = trunc i64 %and25 to i32
  %and27 = and i32 %conv26, -5
  %cmp28 = icmp eq i32 %and27, 2
  br i1 %cmp28, label %cond.true.30, label %cond.false.31

cond.true.30:                                     ; preds = %if.else.24
  br label %cond.end.33

cond.false.31:                                    ; preds = %if.else.24
  %call32 = call i64 @builtin_lisp_symbol(i32 558)
  %23 = load i64*, i64** %end.addr, align 8
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @wrong_type_argument(i64 %call32, i64 %24) #4
  unreachable
                                                  ; No predecessors!
  br label %cond.end.33

cond.end.33:                                      ; preds = %26, %cond.true.30
  br label %if.end.34

if.end.34:                                        ; preds = %cond.end.33, %if.then.21
  br label %do.end.35

do.end.35:                                        ; preds = %if.end.34
  %27 = load i64*, i64** %begin.addr, align 8
  %28 = load i64, i64* %27, align 8
  %29 = load i64*, i64** %end.addr, align 8
  %30 = load i64, i64* %29, align 8
  %cmp36 = icmp eq i64 %28, %30
  br i1 %cmp36, label %land.lhs.true.38, label %if.end.42

land.lhs.true.38:                                 ; preds = %do.end.35
  %31 = load i64*, i64** %begin.addr, align 8
  %32 = load i64*, i64** %end.addr, align 8
  %cmp39 = icmp ne i64* %31, %32
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %land.lhs.true.38
  store %struct.interval* null, %struct.interval** %retval
  br label %return

if.end.42:                                        ; preds = %land.lhs.true.38, %do.end.35
  %33 = load i64*, i64** %begin.addr, align 8
  %34 = load i64, i64* %33, align 8
  %shr = ashr i64 %34, 2
  %35 = load i64*, i64** %end.addr, align 8
  %36 = load i64, i64* %35, align 8
  %shr43 = ashr i64 %36, 2
  %cmp44 = icmp sgt i64 %shr, %shr43
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.42
  %37 = load i64*, i64** %begin.addr, align 8
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %n, align 8
  %39 = load i64*, i64** %end.addr, align 8
  %40 = load i64, i64* %39, align 8
  %41 = load i64*, i64** %begin.addr, align 8
  store i64 %40, i64* %41, align 8
  %42 = load i64, i64* %n, align 8
  %43 = load i64*, i64** %end.addr, align 8
  store i64 %42, i64* %43, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %if.end.42
  %44 = load i64, i64* %object.addr, align 8
  %call48 = call zeroext i1 @BUFFERP(i64 %44)
  br i1 %call48, label %if.then.49, label %if.else.138

if.then.49:                                       ; preds = %if.end.47
  %45 = load i64, i64* %object.addr, align 8
  %call50 = call %struct.buffer* @XBUFFER(i64 %45)
  store %struct.buffer* %call50, %struct.buffer** %b, align 8
  %46 = load %struct.buffer*, %struct.buffer** %b, align 8
  %47 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp51 = icmp eq %struct.buffer* %46, %47
  br i1 %cmp51, label %cond.true.53, label %cond.false.54

cond.true.53:                                     ; preds = %if.then.49
  %48 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %48, i32 0, i32 77
  %49 = load i64, i64* %begv, align 8
  br label %cond.end.64

cond.false.54:                                    ; preds = %if.then.49
  %50 = load %struct.buffer*, %struct.buffer** %b, align 8
  %begv_marker_ = getelementptr inbounds %struct.buffer, %struct.buffer* %50, i32 0, i32 46
  %51 = load i64, i64* %begv_marker_, align 8
  %call55 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp56 = icmp eq i64 %51, %call55
  br i1 %cmp56, label %cond.true.58, label %cond.false.60

cond.true.58:                                     ; preds = %cond.false.54
  %52 = load %struct.buffer*, %struct.buffer** %b, align 8
  %begv59 = getelementptr inbounds %struct.buffer, %struct.buffer* %52, i32 0, i32 77
  %53 = load i64, i64* %begv59, align 8
  br label %cond.end.63

cond.false.60:                                    ; preds = %cond.false.54
  %54 = load %struct.buffer*, %struct.buffer** %b, align 8
  %begv_marker_61 = getelementptr inbounds %struct.buffer, %struct.buffer* %54, i32 0, i32 46
  %55 = load i64, i64* %begv_marker_61, align 8
  %call62 = call i64 @marker_position(i64 %55)
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.60, %cond.true.58
  %cond = phi i64 [ %53, %cond.true.58 ], [ %call62, %cond.false.60 ]
  br label %cond.end.64

cond.end.64:                                      ; preds = %cond.end.63, %cond.true.53
  %cond65 = phi i64 [ %49, %cond.true.53 ], [ %cond, %cond.end.63 ]
  %56 = load i64*, i64** %begin.addr, align 8
  %57 = load i64, i64* %56, align 8
  %shr66 = ashr i64 %57, 2
  %cmp67 = icmp sle i64 %cond65, %shr66
  br i1 %cmp67, label %land.lhs.true.69, label %if.then.94

land.lhs.true.69:                                 ; preds = %cond.end.64
  %58 = load i64*, i64** %begin.addr, align 8
  %59 = load i64, i64* %58, align 8
  %shr70 = ashr i64 %59, 2
  %60 = load i64*, i64** %end.addr, align 8
  %61 = load i64, i64* %60, align 8
  %shr71 = ashr i64 %61, 2
  %cmp72 = icmp sle i64 %shr70, %shr71
  br i1 %cmp72, label %land.lhs.true.74, label %if.then.94

land.lhs.true.74:                                 ; preds = %land.lhs.true.69
  %62 = load i64*, i64** %end.addr, align 8
  %63 = load i64, i64* %62, align 8
  %shr75 = ashr i64 %63, 2
  %64 = load %struct.buffer*, %struct.buffer** %b, align 8
  %65 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp76 = icmp eq %struct.buffer* %64, %65
  br i1 %cmp76, label %cond.true.78, label %cond.false.79

cond.true.78:                                     ; preds = %land.lhs.true.74
  %66 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %66, i32 0, i32 79
  %67 = load i64, i64* %zv, align 8
  br label %cond.end.90

cond.false.79:                                    ; preds = %land.lhs.true.74
  %68 = load %struct.buffer*, %struct.buffer** %b, align 8
  %zv_marker_ = getelementptr inbounds %struct.buffer, %struct.buffer* %68, i32 0, i32 47
  %69 = load i64, i64* %zv_marker_, align 8
  %call80 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp81 = icmp eq i64 %69, %call80
  br i1 %cmp81, label %cond.true.83, label %cond.false.85

cond.true.83:                                     ; preds = %cond.false.79
  %70 = load %struct.buffer*, %struct.buffer** %b, align 8
  %zv84 = getelementptr inbounds %struct.buffer, %struct.buffer* %70, i32 0, i32 79
  %71 = load i64, i64* %zv84, align 8
  br label %cond.end.88

cond.false.85:                                    ; preds = %cond.false.79
  %72 = load %struct.buffer*, %struct.buffer** %b, align 8
  %zv_marker_86 = getelementptr inbounds %struct.buffer, %struct.buffer* %72, i32 0, i32 47
  %73 = load i64, i64* %zv_marker_86, align 8
  %call87 = call i64 @marker_position(i64 %73)
  br label %cond.end.88

cond.end.88:                                      ; preds = %cond.false.85, %cond.true.83
  %cond89 = phi i64 [ %71, %cond.true.83 ], [ %call87, %cond.false.85 ]
  br label %cond.end.90

cond.end.90:                                      ; preds = %cond.end.88, %cond.true.78
  %cond91 = phi i64 [ %67, %cond.true.78 ], [ %cond89, %cond.end.88 ]
  %cmp92 = icmp sle i64 %shr75, %cond91
  br i1 %cmp92, label %if.end.95, label %if.then.94

if.then.94:                                       ; preds = %cond.end.90, %land.lhs.true.69, %cond.end.64
  %74 = load i64*, i64** %begin.addr, align 8
  %75 = load i64, i64* %74, align 8
  %76 = load i64*, i64** %end.addr, align 8
  %77 = load i64, i64* %76, align 8
  call void @args_out_of_range(i64 %75, i64 %77) #4
  unreachable

if.end.95:                                        ; preds = %cond.end.90
  %78 = load %struct.buffer*, %struct.buffer** %b, align 8
  %call96 = call %struct.interval* @buffer_intervals(%struct.buffer* %78)
  store %struct.interval* %call96, %struct.interval** %i, align 8
  %79 = load %struct.buffer*, %struct.buffer** %b, align 8
  %80 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp97 = icmp eq %struct.buffer* %79, %80
  br i1 %cmp97, label %cond.true.99, label %cond.false.101

cond.true.99:                                     ; preds = %if.end.95
  %81 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv100 = getelementptr inbounds %struct.buffer, %struct.buffer* %81, i32 0, i32 77
  %82 = load i64, i64* %begv100, align 8
  br label %cond.end.113

cond.false.101:                                   ; preds = %if.end.95
  %83 = load %struct.buffer*, %struct.buffer** %b, align 8
  %begv_marker_102 = getelementptr inbounds %struct.buffer, %struct.buffer* %83, i32 0, i32 46
  %84 = load i64, i64* %begv_marker_102, align 8
  %call103 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp104 = icmp eq i64 %84, %call103
  br i1 %cmp104, label %cond.true.106, label %cond.false.108

cond.true.106:                                    ; preds = %cond.false.101
  %85 = load %struct.buffer*, %struct.buffer** %b, align 8
  %begv107 = getelementptr inbounds %struct.buffer, %struct.buffer* %85, i32 0, i32 77
  %86 = load i64, i64* %begv107, align 8
  br label %cond.end.111

cond.false.108:                                   ; preds = %cond.false.101
  %87 = load %struct.buffer*, %struct.buffer** %b, align 8
  %begv_marker_109 = getelementptr inbounds %struct.buffer, %struct.buffer* %87, i32 0, i32 46
  %88 = load i64, i64* %begv_marker_109, align 8
  %call110 = call i64 @marker_position(i64 %88)
  br label %cond.end.111

cond.end.111:                                     ; preds = %cond.false.108, %cond.true.106
  %cond112 = phi i64 [ %86, %cond.true.106 ], [ %call110, %cond.false.108 ]
  br label %cond.end.113

cond.end.113:                                     ; preds = %cond.end.111, %cond.true.99
  %cond114 = phi i64 [ %82, %cond.true.99 ], [ %cond112, %cond.end.111 ]
  %89 = load %struct.buffer*, %struct.buffer** %b, align 8
  %90 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp115 = icmp eq %struct.buffer* %89, %90
  br i1 %cmp115, label %cond.true.117, label %cond.false.119

cond.true.117:                                    ; preds = %cond.end.113
  %91 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv118 = getelementptr inbounds %struct.buffer, %struct.buffer* %91, i32 0, i32 79
  %92 = load i64, i64* %zv118, align 8
  br label %cond.end.131

cond.false.119:                                   ; preds = %cond.end.113
  %93 = load %struct.buffer*, %struct.buffer** %b, align 8
  %zv_marker_120 = getelementptr inbounds %struct.buffer, %struct.buffer* %93, i32 0, i32 47
  %94 = load i64, i64* %zv_marker_120, align 8
  %call121 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp122 = icmp eq i64 %94, %call121
  br i1 %cmp122, label %cond.true.124, label %cond.false.126

cond.true.124:                                    ; preds = %cond.false.119
  %95 = load %struct.buffer*, %struct.buffer** %b, align 8
  %zv125 = getelementptr inbounds %struct.buffer, %struct.buffer* %95, i32 0, i32 79
  %96 = load i64, i64* %zv125, align 8
  br label %cond.end.129

cond.false.126:                                   ; preds = %cond.false.119
  %97 = load %struct.buffer*, %struct.buffer** %b, align 8
  %zv_marker_127 = getelementptr inbounds %struct.buffer, %struct.buffer* %97, i32 0, i32 47
  %98 = load i64, i64* %zv_marker_127, align 8
  %call128 = call i64 @marker_position(i64 %98)
  br label %cond.end.129

cond.end.129:                                     ; preds = %cond.false.126, %cond.true.124
  %cond130 = phi i64 [ %96, %cond.true.124 ], [ %call128, %cond.false.126 ]
  br label %cond.end.131

cond.end.131:                                     ; preds = %cond.end.129, %cond.true.117
  %cond132 = phi i64 [ %92, %cond.true.117 ], [ %cond130, %cond.end.129 ]
  %cmp133 = icmp eq i64 %cond114, %cond132
  br i1 %cmp133, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %cond.end.131
  store %struct.interval* null, %struct.interval** %retval
  br label %return

if.end.136:                                       ; preds = %cond.end.131
  %99 = load i64*, i64** %begin.addr, align 8
  %100 = load i64, i64* %99, align 8
  %shr137 = ashr i64 %100, 2
  store i64 %shr137, i64* %searchpos, align 8
  br label %if.end.168

if.else.138:                                      ; preds = %if.end.47
  %101 = load i64, i64* %object.addr, align 8
  %call139 = call i64 @SCHARS(i64 %101)
  store i64 %call139, i64* %len, align 8
  %102 = load i64*, i64** %begin.addr, align 8
  %103 = load i64, i64* %102, align 8
  %shr140 = ashr i64 %103, 2
  %cmp141 = icmp sle i64 0, %shr140
  br i1 %cmp141, label %land.lhs.true.143, label %if.then.152

land.lhs.true.143:                                ; preds = %if.else.138
  %104 = load i64*, i64** %begin.addr, align 8
  %105 = load i64, i64* %104, align 8
  %shr144 = ashr i64 %105, 2
  %106 = load i64*, i64** %end.addr, align 8
  %107 = load i64, i64* %106, align 8
  %shr145 = ashr i64 %107, 2
  %cmp146 = icmp sle i64 %shr144, %shr145
  br i1 %cmp146, label %land.lhs.true.148, label %if.then.152

land.lhs.true.148:                                ; preds = %land.lhs.true.143
  %108 = load i64*, i64** %end.addr, align 8
  %109 = load i64, i64* %108, align 8
  %shr149 = ashr i64 %109, 2
  %110 = load i64, i64* %len, align 8
  %cmp150 = icmp sle i64 %shr149, %110
  br i1 %cmp150, label %if.end.153, label %if.then.152

if.then.152:                                      ; preds = %land.lhs.true.148, %land.lhs.true.143, %if.else.138
  %111 = load i64*, i64** %begin.addr, align 8
  %112 = load i64, i64* %111, align 8
  %113 = load i64*, i64** %end.addr, align 8
  %114 = load i64, i64* %113, align 8
  call void @args_out_of_range(i64 %112, i64 %114) #4
  unreachable

if.end.153:                                       ; preds = %land.lhs.true.148
  %115 = load i64*, i64** %begin.addr, align 8
  %116 = load i64, i64* %115, align 8
  %shr154 = ashr i64 %116, 2
  %call155 = call i64 @make_natnum(i64 %shr154)
  %117 = load i64*, i64** %begin.addr, align 8
  store i64 %call155, i64* %117, align 8
  %118 = load i64*, i64** %begin.addr, align 8
  %119 = load i64*, i64** %end.addr, align 8
  %cmp156 = icmp ne i64* %118, %119
  br i1 %cmp156, label %if.then.158, label %if.end.161

if.then.158:                                      ; preds = %if.end.153
  %120 = load i64*, i64** %end.addr, align 8
  %121 = load i64, i64* %120, align 8
  %shr159 = ashr i64 %121, 2
  %call160 = call i64 @make_natnum(i64 %shr159)
  %122 = load i64*, i64** %end.addr, align 8
  store i64 %call160, i64* %122, align 8
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.158, %if.end.153
  %123 = load i64, i64* %object.addr, align 8
  %call162 = call %struct.interval* @string_intervals(i64 %123)
  store %struct.interval* %call162, %struct.interval** %i, align 8
  %124 = load i64, i64* %len, align 8
  %cmp163 = icmp eq i64 %124, 0
  br i1 %cmp163, label %if.then.165, label %if.end.166

if.then.165:                                      ; preds = %if.end.161
  store %struct.interval* null, %struct.interval** %retval
  br label %return

if.end.166:                                       ; preds = %if.end.161
  %125 = load i64*, i64** %begin.addr, align 8
  %126 = load i64, i64* %125, align 8
  %shr167 = ashr i64 %126, 2
  store i64 %shr167, i64* %searchpos, align 8
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.166, %if.end.136
  %127 = load %struct.interval*, %struct.interval** %i, align 8
  %tobool = icmp ne %struct.interval* %127, null
  br i1 %tobool, label %if.end.177, label %if.then.169

if.then.169:                                      ; preds = %if.end.168
  %128 = load i8, i8* %force.addr, align 1
  %tobool170 = trunc i8 %128 to i1
  br i1 %tobool170, label %cond.true.172, label %cond.false.174

cond.true.172:                                    ; preds = %if.then.169
  %129 = load i64, i64* %object.addr, align 8
  %call173 = call %struct.interval* @create_root_interval(i64 %129)
  br label %cond.end.175

cond.false.174:                                   ; preds = %if.then.169
  %130 = load %struct.interval*, %struct.interval** %i, align 8
  br label %cond.end.175

cond.end.175:                                     ; preds = %cond.false.174, %cond.true.172
  %cond176 = phi %struct.interval* [ %call173, %cond.true.172 ], [ %130, %cond.false.174 ]
  store %struct.interval* %cond176, %struct.interval** %retval
  br label %return

if.end.177:                                       ; preds = %if.end.168
  %131 = load %struct.interval*, %struct.interval** %i, align 8
  %132 = load i64, i64* %searchpos, align 8
  %call178 = call %struct.interval* @find_interval(%struct.interval* %131, i64 %132)
  store %struct.interval* %call178, %struct.interval** %retval
  br label %return

return:                                           ; preds = %if.end.177, %cond.end.175, %if.then.165, %if.then.135, %if.then.41
  %133 = load %struct.interval*, %struct.interval** %retval
  ret %struct.interval* %133
}

; Function Attrs: nounwind uwtable
define internal void @CHECK_STRING_OR_BUFFER(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %call = call zeroext i1 @STRINGP(i64 %0)
  br i1 %call, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %x.addr, align 8
  %call1 = call zeroext i1 @BUFFERP(i64 %1)
  br i1 %call1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %call2 = call i64 @builtin_lisp_symbol(i32 225)
  %2 = load i64, i64* %x.addr, align 8
  %3 = call i64 @wrong_type_argument(i64 %call2, i64 %2) #4
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %4, %cond.true
  ret void
}

declare i32 @XMISCTYPE(i64) #1

declare i64 @make_natnum(i64) #1

declare i64 @marker_position(i64) #1

; Function Attrs: noreturn
declare i64 @wrong_type_argument(i64, i64) #2

declare i64 @builtin_lisp_symbol(i32) #1

declare zeroext i1 @BUFFERP(i64) #1

declare %struct.buffer* @XBUFFER(i64) #1

; Function Attrs: noreturn
declare void @args_out_of_range(i64, i64) #2

declare %struct.interval* @buffer_intervals(%struct.buffer*) #1

declare i64 @SCHARS(i64) #1

declare %struct.interval* @string_intervals(i64) #1

declare %struct.interval* @create_root_interval(i64) #1

declare %struct.interval* @find_interval(%struct.interval*, i64) #1

; Function Attrs: nounwind uwtable
define %struct.interval* @interval_of(i64 %position, i64 %object) #0 {
entry:
  %retval = alloca %struct.interval*, align 8
  %position.addr = alloca i64, align 8
  %object.addr = alloca i64, align 8
  %i = alloca %struct.interval*, align 8
  %beg = alloca i64, align 8
  %end = alloca i64, align 8
  %b = alloca %struct.buffer*, align 8
  store i64 %position, i64* %position.addr, align 8
  store i64 %object, i64* %object.addr, align 8
  %0 = load i64, i64* %object.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %2 = bitcast %struct.buffer* %1 to i8*
  %call1 = call i64 @make_lisp_ptr(i8* %2, i32 5)
  store i64 %call1, i64* %object.addr, align 8
  br label %if.end.5

if.else:                                          ; preds = %entry
  %3 = load i64, i64* %object.addr, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp3 = icmp eq i64 %3, %call2
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  store %struct.interval* null, %struct.interval** %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %4 = load i64, i64* %object.addr, align 8
  call void @CHECK_STRING_OR_BUFFER(i64 %4)
  %5 = load i64, i64* %object.addr, align 8
  %call6 = call zeroext i1 @BUFFERP(i64 %5)
  br i1 %call6, label %if.then.7, label %if.else.34

if.then.7:                                        ; preds = %if.end.5
  %6 = load i64, i64* %object.addr, align 8
  %call8 = call %struct.buffer* @XBUFFER(i64 %6)
  store %struct.buffer* %call8, %struct.buffer** %b, align 8
  %7 = load %struct.buffer*, %struct.buffer** %b, align 8
  %8 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp9 = icmp eq %struct.buffer* %7, %8
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.7
  %9 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %9, i32 0, i32 77
  %10 = load i64, i64* %begv, align 8
  br label %cond.end.17

cond.false:                                       ; preds = %if.then.7
  %11 = load %struct.buffer*, %struct.buffer** %b, align 8
  %begv_marker_ = getelementptr inbounds %struct.buffer, %struct.buffer* %11, i32 0, i32 46
  %12 = load i64, i64* %begv_marker_, align 8
  %call10 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp11 = icmp eq i64 %12, %call10
  br i1 %cmp11, label %cond.true.12, label %cond.false.14

cond.true.12:                                     ; preds = %cond.false
  %13 = load %struct.buffer*, %struct.buffer** %b, align 8
  %begv13 = getelementptr inbounds %struct.buffer, %struct.buffer* %13, i32 0, i32 77
  %14 = load i64, i64* %begv13, align 8
  br label %cond.end

cond.false.14:                                    ; preds = %cond.false
  %15 = load %struct.buffer*, %struct.buffer** %b, align 8
  %begv_marker_15 = getelementptr inbounds %struct.buffer, %struct.buffer* %15, i32 0, i32 46
  %16 = load i64, i64* %begv_marker_15, align 8
  %call16 = call i64 @marker_position(i64 %16)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.14, %cond.true.12
  %cond = phi i64 [ %14, %cond.true.12 ], [ %call16, %cond.false.14 ]
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.end, %cond.true
  %cond18 = phi i64 [ %10, %cond.true ], [ %cond, %cond.end ]
  store i64 %cond18, i64* %beg, align 8
  %17 = load %struct.buffer*, %struct.buffer** %b, align 8
  %18 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp19 = icmp eq %struct.buffer* %17, %18
  br i1 %cmp19, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %cond.end.17
  %19 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %19, i32 0, i32 79
  %20 = load i64, i64* %zv, align 8
  br label %cond.end.31

cond.false.21:                                    ; preds = %cond.end.17
  %21 = load %struct.buffer*, %struct.buffer** %b, align 8
  %zv_marker_ = getelementptr inbounds %struct.buffer, %struct.buffer* %21, i32 0, i32 47
  %22 = load i64, i64* %zv_marker_, align 8
  %call22 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp23 = icmp eq i64 %22, %call22
  br i1 %cmp23, label %cond.true.24, label %cond.false.26

cond.true.24:                                     ; preds = %cond.false.21
  %23 = load %struct.buffer*, %struct.buffer** %b, align 8
  %zv25 = getelementptr inbounds %struct.buffer, %struct.buffer* %23, i32 0, i32 79
  %24 = load i64, i64* %zv25, align 8
  br label %cond.end.29

cond.false.26:                                    ; preds = %cond.false.21
  %25 = load %struct.buffer*, %struct.buffer** %b, align 8
  %zv_marker_27 = getelementptr inbounds %struct.buffer, %struct.buffer* %25, i32 0, i32 47
  %26 = load i64, i64* %zv_marker_27, align 8
  %call28 = call i64 @marker_position(i64 %26)
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.false.26, %cond.true.24
  %cond30 = phi i64 [ %24, %cond.true.24 ], [ %call28, %cond.false.26 ]
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.end.29, %cond.true.20
  %cond32 = phi i64 [ %20, %cond.true.20 ], [ %cond30, %cond.end.29 ]
  store i64 %cond32, i64* %end, align 8
  %27 = load %struct.buffer*, %struct.buffer** %b, align 8
  %call33 = call %struct.interval* @buffer_intervals(%struct.buffer* %27)
  store %struct.interval* %call33, %struct.interval** %i, align 8
  br label %if.end.37

if.else.34:                                       ; preds = %if.end.5
  store i64 0, i64* %beg, align 8
  %28 = load i64, i64* %object.addr, align 8
  %call35 = call i64 @SCHARS(i64 %28)
  store i64 %call35, i64* %end, align 8
  %29 = load i64, i64* %object.addr, align 8
  %call36 = call %struct.interval* @string_intervals(i64 %29)
  store %struct.interval* %call36, %struct.interval** %i, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.34, %cond.end.31
  %30 = load i64, i64* %beg, align 8
  %31 = load i64, i64* %position.addr, align 8
  %cmp38 = icmp sle i64 %30, %31
  br i1 %cmp38, label %land.lhs.true, label %if.then.40

land.lhs.true:                                    ; preds = %if.end.37
  %32 = load i64, i64* %position.addr, align 8
  %33 = load i64, i64* %end, align 8
  %cmp39 = icmp sle i64 %32, %33
  br i1 %cmp39, label %if.end.43, label %if.then.40

if.then.40:                                       ; preds = %land.lhs.true, %if.end.37
  %34 = load i64, i64* %position.addr, align 8
  %shl = shl i64 %34, 2
  %add = add i64 %shl, 2
  %35 = load i64, i64* %position.addr, align 8
  %shl41 = shl i64 %35, 2
  %add42 = add i64 %shl41, 2
  call void @args_out_of_range(i64 %add, i64 %add42) #4
  unreachable

if.end.43:                                        ; preds = %land.lhs.true
  %36 = load i64, i64* %beg, align 8
  %37 = load i64, i64* %end, align 8
  %cmp44 = icmp eq i64 %36, %37
  br i1 %cmp44, label %if.then.45, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.43
  %38 = load %struct.interval*, %struct.interval** %i, align 8
  %tobool = icmp ne %struct.interval* %38, null
  br i1 %tobool, label %if.end.46, label %if.then.45

if.then.45:                                       ; preds = %lor.lhs.false, %if.end.43
  store %struct.interval* null, %struct.interval** %retval
  br label %return

if.end.46:                                        ; preds = %lor.lhs.false
  %39 = load %struct.interval*, %struct.interval** %i, align 8
  %40 = load i64, i64* %position.addr, align 8
  %call47 = call %struct.interval* @find_interval(%struct.interval* %39, i64 %40)
  store %struct.interval* %call47, %struct.interval** %retval
  br label %return

return:                                           ; preds = %if.end.46, %if.then.45, %if.then.4
  %41 = load %struct.interval*, %struct.interval** %retval
  ret %struct.interval* %41
}

declare i64 @make_lisp_ptr(i8*, i32) #1

; Function Attrs: nounwind uwtable
define i64 @Ftext_properties_at(i64 %position, i64 %object) #0 {
entry:
  %retval = alloca i64, align 8
  %position.addr = alloca i64, align 8
  %object.addr = alloca i64, align 8
  %i = alloca %struct.interval*, align 8
  store i64 %position, i64* %position.addr, align 8
  store i64 %object, i64* %object.addr, align 8
  %0 = load i64, i64* %object.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %2 = bitcast %struct.buffer* %1 to i8*
  %call1 = call i64 @make_lisp_ptr(i8* %2, i32 5)
  store i64 %call1, i64* %object.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* %object.addr, align 8
  %call2 = call %struct.interval* @validate_interval_range(i64 %3, i64* %position.addr, i64* %position.addr, i1 zeroext false)
  store %struct.interval* %call2, %struct.interval** %i, align 8
  %4 = load %struct.interval*, %struct.interval** %i, align 8
  %tobool = icmp ne %struct.interval* %4, null
  br i1 %tobool, label %if.end.5, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call4, i64* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %5 = load i64, i64* %position.addr, align 8
  %shr = ashr i64 %5, 2
  %6 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp6 = icmp eq %struct.interval* %6, null
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.5
  br label %cond.end.25

cond.false:                                       ; preds = %if.end.5
  %7 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp7 = icmp eq %struct.interval* %7, null
  br i1 %cmp7, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %cond.false
  br label %cond.end

cond.false.9:                                     ; preds = %cond.false
  %8 = load %struct.interval*, %struct.interval** %i, align 8
  %total_length = getelementptr inbounds %struct.interval, %struct.interval* %8, i32 0, i32 0
  %9 = load i64, i64* %total_length, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.9, %cond.true.8
  %cond = phi i64 [ 0, %cond.true.8 ], [ %9, %cond.false.9 ]
  %10 = load %struct.interval*, %struct.interval** %i, align 8
  %right = getelementptr inbounds %struct.interval, %struct.interval* %10, i32 0, i32 3
  %11 = load %struct.interval*, %struct.interval** %right, align 8
  %cmp10 = icmp eq %struct.interval* %11, null
  br i1 %cmp10, label %cond.true.11, label %cond.false.12

cond.true.11:                                     ; preds = %cond.end
  br label %cond.end.15

cond.false.12:                                    ; preds = %cond.end
  %12 = load %struct.interval*, %struct.interval** %i, align 8
  %right13 = getelementptr inbounds %struct.interval, %struct.interval* %12, i32 0, i32 3
  %13 = load %struct.interval*, %struct.interval** %right13, align 8
  %total_length14 = getelementptr inbounds %struct.interval, %struct.interval* %13, i32 0, i32 0
  %14 = load i64, i64* %total_length14, align 8
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.12, %cond.true.11
  %cond16 = phi i64 [ 0, %cond.true.11 ], [ %14, %cond.false.12 ]
  %sub = sub nsw i64 %cond, %cond16
  %15 = load %struct.interval*, %struct.interval** %i, align 8
  %left = getelementptr inbounds %struct.interval, %struct.interval* %15, i32 0, i32 2
  %16 = load %struct.interval*, %struct.interval** %left, align 8
  %cmp17 = icmp eq %struct.interval* %16, null
  br i1 %cmp17, label %cond.true.18, label %cond.false.19

cond.true.18:                                     ; preds = %cond.end.15
  br label %cond.end.22

cond.false.19:                                    ; preds = %cond.end.15
  %17 = load %struct.interval*, %struct.interval** %i, align 8
  %left20 = getelementptr inbounds %struct.interval, %struct.interval* %17, i32 0, i32 2
  %18 = load %struct.interval*, %struct.interval** %left20, align 8
  %total_length21 = getelementptr inbounds %struct.interval, %struct.interval* %18, i32 0, i32 0
  %19 = load i64, i64* %total_length21, align 8
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.19, %cond.true.18
  %cond23 = phi i64 [ 0, %cond.true.18 ], [ %19, %cond.false.19 ]
  %sub24 = sub nsw i64 %sub, %cond23
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.end.22, %cond.true
  %cond26 = phi i64 [ 0, %cond.true ], [ %sub24, %cond.end.22 ]
  %20 = load %struct.interval*, %struct.interval** %i, align 8
  %position27 = getelementptr inbounds %struct.interval, %struct.interval* %20, i32 0, i32 1
  %21 = load i64, i64* %position27, align 8
  %add = add nsw i64 %cond26, %21
  %cmp28 = icmp eq i64 %shr, %add
  br i1 %cmp28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %cond.end.25
  %call30 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call30, i64* %retval
  br label %return

if.end.31:                                        ; preds = %cond.end.25
  %22 = load %struct.interval*, %struct.interval** %i, align 8
  %plist = getelementptr inbounds %struct.interval, %struct.interval* %22, i32 0, i32 6
  %23 = load i64, i64* %plist, align 8
  store i64 %23, i64* %retval
  br label %return

return:                                           ; preds = %if.end.31, %if.then.29, %if.then.3
  %24 = load i64, i64* %retval
  ret i64 %24
}

; Function Attrs: nounwind uwtable
define i64 @Fget_text_property(i64 %position, i64 %prop, i64 %object) #0 {
entry:
  %position.addr = alloca i64, align 8
  %prop.addr = alloca i64, align 8
  %object.addr = alloca i64, align 8
  store i64 %position, i64* %position.addr, align 8
  store i64 %prop, i64* %prop.addr, align 8
  store i64 %object, i64* %object.addr, align 8
  %0 = load i64, i64* %position.addr, align 8
  %1 = load i64, i64* %object.addr, align 8
  %call = call i64 @Ftext_properties_at(i64 %0, i64 %1)
  %2 = load i64, i64* %prop.addr, align 8
  %call1 = call i64 @textget(i64 %call, i64 %2)
  ret i64 %call1
}

declare i64 @textget(i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @get_char_property_and_overlay(i64 %position, i64 %prop, i64 %object, i64* %overlay) #0 {
entry:
  %retval = alloca i64, align 8
  %position.addr = alloca i64, align 8
  %prop.addr = alloca i64, align 8
  %object.addr = alloca i64, align 8
  %overlay.addr = alloca i64*, align 8
  %w = alloca %struct.window*, align 8
  %noverlays = alloca i64, align 8
  %overlay_vec = alloca i64*, align 8
  %obuf = alloca %struct.buffer*, align 8
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  %maxlen = alloca i64, align 8
  %tem = alloca i64, align 8
  store i64 %position, i64* %position.addr, align 8
  store i64 %prop, i64* %prop.addr, align 8
  store i64 %object, i64* %object.addr, align 8
  store i64* %overlay, i64** %overlay.addr, align 8
  store %struct.window* null, %struct.window** %w, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %position.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %1 = load i64, i64* %position.addr, align 8
  %call = call i32 @XMISCTYPE(i64 %1)
  %cmp2 = icmp eq i32 %call, 24236
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load i64, i64* %position.addr, align 8
  %call4 = call i64 @marker_position(i64 %2)
  %call5 = call i64 @make_natnum(i64 %call4)
  store i64 %call5, i64* %position.addr, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %do.body
  %3 = load i64, i64* %position.addr, align 8
  %and6 = and i64 %3, 7
  %conv7 = trunc i64 %and6 to i32
  %and8 = and i32 %conv7, -5
  %cmp9 = icmp eq i32 %and8, 2
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %call11 = call i64 @builtin_lisp_symbol(i32 558)
  %4 = load i64, i64* %position.addr, align 8
  %5 = call i64 @wrong_type_argument(i64 %call11, i64 %4) #4
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %6, %cond.true
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %7 = load i64, i64* %object.addr, align 8
  %call12 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp13 = icmp eq i64 %7, %call12
  br i1 %cmp13, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %do.end
  %8 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %9 = bitcast %struct.buffer* %8 to i8*
  %call16 = call i64 @make_lisp_ptr(i8* %9, i32 5)
  store i64 %call16, i64* %object.addr, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %do.end
  %10 = load i64, i64* %object.addr, align 8
  %call18 = call zeroext i1 @WINDOWP(i64 %10)
  br i1 %call18, label %if.then.19, label %if.end.32

if.then.19:                                       ; preds = %if.end.17
  %11 = load i64, i64* %object.addr, align 8
  %call20 = call zeroext i1 @WINDOWP(i64 %11)
  br i1 %call20, label %land.lhs.true.22, label %cond.false.27

land.lhs.true.22:                                 ; preds = %if.then.19
  %12 = load i64, i64* %object.addr, align 8
  %call23 = call %struct.window* @XWINDOW(i64 %12)
  %contents = getelementptr inbounds %struct.window, %struct.window* %call23, i32 0, i32 10
  %13 = load i64, i64* %contents, align 8
  %call24 = call zeroext i1 @BUFFERP(i64 %13)
  br i1 %call24, label %cond.true.26, label %cond.false.27

cond.true.26:                                     ; preds = %land.lhs.true.22
  br label %cond.end.29

cond.false.27:                                    ; preds = %land.lhs.true.22, %if.then.19
  %call28 = call i64 @builtin_lisp_symbol(i32 1027)
  %14 = load i64, i64* %object.addr, align 8
  %15 = call i64 @wrong_type_argument(i64 %call28, i64 %14) #4
  unreachable
                                                  ; No predecessors!
  br label %cond.end.29

cond.end.29:                                      ; preds = %16, %cond.true.26
  %17 = load i64, i64* %object.addr, align 8
  %call30 = call %struct.window* @XWINDOW(i64 %17)
  store %struct.window* %call30, %struct.window** %w, align 8
  %18 = load %struct.window*, %struct.window** %w, align 8
  %contents31 = getelementptr inbounds %struct.window, %struct.window* %18, i32 0, i32 10
  %19 = load i64, i64* %contents31, align 8
  store i64 %19, i64* %object.addr, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %cond.end.29, %if.end.17
  %20 = load i64, i64* %object.addr, align 8
  %call33 = call zeroext i1 @BUFFERP(i64 %20)
  br i1 %call33, label %if.then.34, label %if.end.143

if.then.34:                                       ; preds = %if.end.32
  %21 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  store %struct.buffer* %21, %struct.buffer** %obuf, align 8
  %22 = load i64, i64* %position.addr, align 8
  %shr = ashr i64 %22, 2
  %23 = load i64, i64* %object.addr, align 8
  %call35 = call %struct.buffer* @XBUFFER(i64 %23)
  %24 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp36 = icmp eq %struct.buffer* %call35, %24
  br i1 %cmp36, label %cond.true.38, label %cond.false.39

cond.true.38:                                     ; preds = %if.then.34
  %25 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %25, i32 0, i32 77
  %26 = load i64, i64* %begv, align 8
  br label %cond.end.52

cond.false.39:                                    ; preds = %if.then.34
  %27 = load i64, i64* %object.addr, align 8
  %call40 = call %struct.buffer* @XBUFFER(i64 %27)
  %begv_marker_ = getelementptr inbounds %struct.buffer, %struct.buffer* %call40, i32 0, i32 46
  %28 = load i64, i64* %begv_marker_, align 8
  %call41 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp42 = icmp eq i64 %28, %call41
  br i1 %cmp42, label %cond.true.44, label %cond.false.47

cond.true.44:                                     ; preds = %cond.false.39
  %29 = load i64, i64* %object.addr, align 8
  %call45 = call %struct.buffer* @XBUFFER(i64 %29)
  %begv46 = getelementptr inbounds %struct.buffer, %struct.buffer* %call45, i32 0, i32 77
  %30 = load i64, i64* %begv46, align 8
  br label %cond.end.51

cond.false.47:                                    ; preds = %cond.false.39
  %31 = load i64, i64* %object.addr, align 8
  %call48 = call %struct.buffer* @XBUFFER(i64 %31)
  %begv_marker_49 = getelementptr inbounds %struct.buffer, %struct.buffer* %call48, i32 0, i32 46
  %32 = load i64, i64* %begv_marker_49, align 8
  %call50 = call i64 @marker_position(i64 %32)
  br label %cond.end.51

cond.end.51:                                      ; preds = %cond.false.47, %cond.true.44
  %cond = phi i64 [ %30, %cond.true.44 ], [ %call50, %cond.false.47 ]
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.end.51, %cond.true.38
  %cond53 = phi i64 [ %26, %cond.true.38 ], [ %cond, %cond.end.51 ]
  %cmp54 = icmp slt i64 %shr, %cond53
  br i1 %cmp54, label %if.then.79, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.52
  %33 = load i64, i64* %position.addr, align 8
  %shr56 = ashr i64 %33, 2
  %34 = load i64, i64* %object.addr, align 8
  %call57 = call %struct.buffer* @XBUFFER(i64 %34)
  %35 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp58 = icmp eq %struct.buffer* %call57, %35
  br i1 %cmp58, label %cond.true.60, label %cond.false.61

cond.true.60:                                     ; preds = %lor.lhs.false
  %36 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %36, i32 0, i32 79
  %37 = load i64, i64* %zv, align 8
  br label %cond.end.75

cond.false.61:                                    ; preds = %lor.lhs.false
  %38 = load i64, i64* %object.addr, align 8
  %call62 = call %struct.buffer* @XBUFFER(i64 %38)
  %zv_marker_ = getelementptr inbounds %struct.buffer, %struct.buffer* %call62, i32 0, i32 47
  %39 = load i64, i64* %zv_marker_, align 8
  %call63 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp64 = icmp eq i64 %39, %call63
  br i1 %cmp64, label %cond.true.66, label %cond.false.69

cond.true.66:                                     ; preds = %cond.false.61
  %40 = load i64, i64* %object.addr, align 8
  %call67 = call %struct.buffer* @XBUFFER(i64 %40)
  %zv68 = getelementptr inbounds %struct.buffer, %struct.buffer* %call67, i32 0, i32 79
  %41 = load i64, i64* %zv68, align 8
  br label %cond.end.73

cond.false.69:                                    ; preds = %cond.false.61
  %42 = load i64, i64* %object.addr, align 8
  %call70 = call %struct.buffer* @XBUFFER(i64 %42)
  %zv_marker_71 = getelementptr inbounds %struct.buffer, %struct.buffer* %call70, i32 0, i32 47
  %43 = load i64, i64* %zv_marker_71, align 8
  %call72 = call i64 @marker_position(i64 %43)
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.false.69, %cond.true.66
  %cond74 = phi i64 [ %41, %cond.true.66 ], [ %call72, %cond.false.69 ]
  br label %cond.end.75

cond.end.75:                                      ; preds = %cond.end.73, %cond.true.60
  %cond76 = phi i64 [ %37, %cond.true.60 ], [ %cond74, %cond.end.73 ]
  %cmp77 = icmp sgt i64 %shr56, %cond76
  br i1 %cmp77, label %if.then.79, label %if.end.81

if.then.79:                                       ; preds = %cond.end.75, %cond.end.52
  %call80 = call i64 @builtin_lisp_symbol(i32 177)
  %44 = load i64, i64* %position.addr, align 8
  call void @xsignal1(i64 %call80, i64 %44) #4
  unreachable

if.end.81:                                        ; preds = %cond.end.75
  %45 = load i64, i64* %object.addr, align 8
  %call82 = call %struct.buffer* @XBUFFER(i64 %45)
  call void @set_buffer_temp(%struct.buffer* %call82)
  store i64 16384, i64* %sa_avail, align 8
  %call83 = call i64 @SPECPDL_INDEX()
  store i64 %call83, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  br label %do.body.84

do.body.84:                                       ; preds = %if.end.81
  store i64 40, i64* %maxlen, align 8
  br label %do.body.85

do.body.85:                                       ; preds = %do.body.84
  %46 = load i64, i64* %maxlen, align 8
  %47 = load i64, i64* %sa_avail, align 8
  %div = udiv i64 %47, 8
  %div86 = udiv i64 %div, 1
  %cmp87 = icmp ule i64 %46, %div86
  br i1 %cmp87, label %if.then.89, label %if.else.91

if.then.89:                                       ; preds = %do.body.85
  %48 = load i64, i64* %maxlen, align 8
  %mul = mul i64 8, %48
  %49 = load i64, i64* %sa_avail, align 8
  %sub = sub i64 %49, %mul
  store i64 %sub, i64* %sa_avail, align 8
  %50 = load i64, i64* %maxlen, align 8
  %mul90 = mul i64 8, %50
  %51 = alloca i8, i64 %mul90
  %52 = bitcast i8* %51 to i64*
  store i64* %52, i64** %overlay_vec, align 8
  br label %if.end.93

if.else.91:                                       ; preds = %do.body.85
  %53 = load i64, i64* %maxlen, align 8
  %call92 = call noalias i8* @xnmalloc(i64 %53, i64 8)
  %54 = bitcast i8* %call92 to i64*
  store i64* %54, i64** %overlay_vec, align 8
  store i8 1, i8* %sa_must_free, align 1
  %55 = load i64*, i64** %overlay_vec, align 8
  %56 = bitcast i64* %55 to i8*
  call void @record_unwind_protect_ptr(void (i8*)* @xfree, i8* %56)
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.91, %if.then.89
  br label %do.end.94

do.end.94:                                        ; preds = %if.end.93
  %57 = load i64, i64* %position.addr, align 8
  %shr95 = ashr i64 %57, 2
  %call96 = call i64 @overlays_at(i64 %shr95, i1 zeroext false, i64** %overlay_vec, i64* %maxlen, i64* null, i64* null, i1 zeroext false)
  store i64 %call96, i64* %noverlays, align 8
  %58 = load i64, i64* %noverlays, align 8
  %59 = load i64, i64* %maxlen, align 8
  %cmp97 = icmp sgt i64 %58, %59
  br i1 %cmp97, label %if.then.99, label %if.end.115

if.then.99:                                       ; preds = %do.end.94
  %60 = load i64, i64* %noverlays, align 8
  store i64 %60, i64* %maxlen, align 8
  br label %do.body.100

do.body.100:                                      ; preds = %if.then.99
  %61 = load i64, i64* %maxlen, align 8
  %62 = load i64, i64* %sa_avail, align 8
  %div101 = udiv i64 %62, 8
  %div102 = udiv i64 %div101, 1
  %cmp103 = icmp ule i64 %61, %div102
  br i1 %cmp103, label %if.then.105, label %if.else.109

if.then.105:                                      ; preds = %do.body.100
  %63 = load i64, i64* %maxlen, align 8
  %mul106 = mul i64 8, %63
  %64 = load i64, i64* %sa_avail, align 8
  %sub107 = sub i64 %64, %mul106
  store i64 %sub107, i64* %sa_avail, align 8
  %65 = load i64, i64* %maxlen, align 8
  %mul108 = mul i64 8, %65
  %66 = alloca i8, i64 %mul108
  %67 = bitcast i8* %66 to i64*
  store i64* %67, i64** %overlay_vec, align 8
  br label %if.end.111

if.else.109:                                      ; preds = %do.body.100
  %68 = load i64, i64* %maxlen, align 8
  %call110 = call noalias i8* @xnmalloc(i64 %68, i64 8)
  %69 = bitcast i8* %call110 to i64*
  store i64* %69, i64** %overlay_vec, align 8
  store i8 1, i8* %sa_must_free, align 1
  %70 = load i64*, i64** %overlay_vec, align 8
  %71 = bitcast i64* %70 to i8*
  call void @record_unwind_protect_ptr(void (i8*)* @xfree, i8* %71)
  br label %if.end.111

if.end.111:                                       ; preds = %if.else.109, %if.then.105
  br label %do.end.112

do.end.112:                                       ; preds = %if.end.111
  %72 = load i64, i64* %position.addr, align 8
  %shr113 = ashr i64 %72, 2
  %call114 = call i64 @overlays_at(i64 %shr113, i1 zeroext false, i64** %overlay_vec, i64* %maxlen, i64* null, i64* null, i1 zeroext false)
  store i64 %call114, i64* %noverlays, align 8
  br label %if.end.115

if.end.115:                                       ; preds = %do.end.112, %do.end.94
  br label %do.end.116

do.end.116:                                       ; preds = %if.end.115
  %73 = load i64*, i64** %overlay_vec, align 8
  %74 = load i64, i64* %noverlays, align 8
  %75 = load %struct.window*, %struct.window** %w, align 8
  %call117 = call i64 @sort_overlays(i64* %73, i64 %74, %struct.window* %75)
  store i64 %call117, i64* %noverlays, align 8
  %76 = load %struct.buffer*, %struct.buffer** %obuf, align 8
  call void @set_buffer_temp(%struct.buffer* %76)
  br label %while.cond

while.cond:                                       ; preds = %if.end.135, %do.end.116
  %77 = load i64, i64* %noverlays, align 8
  %dec = add nsw i64 %77, -1
  store i64 %dec, i64* %noverlays, align 8
  %cmp118 = icmp sge i64 %dec, 0
  br i1 %cmp118, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %78 = load i64, i64* %noverlays, align 8
  %79 = load i64*, i64** %overlay_vec, align 8
  %arrayidx = getelementptr inbounds i64, i64* %79, i64 %78
  %80 = load i64, i64* %arrayidx, align 8
  %81 = load i64, i64* %prop.addr, align 8
  %call120 = call i64 @Foverlay_get(i64 %80, i64 %81)
  store i64 %call120, i64* %tem, align 8
  %82 = load i64, i64* %tem, align 8
  %call121 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp122 = icmp eq i64 %82, %call121
  br i1 %cmp122, label %if.end.135, label %if.then.124

if.then.124:                                      ; preds = %while.body
  %83 = load i64*, i64** %overlay.addr, align 8
  %tobool = icmp ne i64* %83, null
  br i1 %tobool, label %if.then.125, label %if.end.127

if.then.125:                                      ; preds = %if.then.124
  %84 = load i64, i64* %noverlays, align 8
  %85 = load i64*, i64** %overlay_vec, align 8
  %arrayidx126 = getelementptr inbounds i64, i64* %85, i64 %84
  %86 = load i64, i64* %arrayidx126, align 8
  %87 = load i64*, i64** %overlay.addr, align 8
  store i64 %86, i64* %87, align 8
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.125, %if.then.124
  br label %do.body.128

do.body.128:                                      ; preds = %if.end.127
  %88 = load i8, i8* %sa_must_free, align 1
  %tobool129 = trunc i8 %88 to i1
  br i1 %tobool129, label %if.then.130, label %if.end.133

if.then.130:                                      ; preds = %do.body.128
  store i8 0, i8* %sa_must_free, align 1
  %89 = load i64, i64* %sa_count, align 8
  %call131 = call i64 @builtin_lisp_symbol(i32 0)
  %call132 = call i64 @unbind_to(i64 %89, i64 %call131)
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.130, %do.body.128
  br label %do.end.134

do.end.134:                                       ; preds = %if.end.133
  %90 = load i64, i64* %tem, align 8
  store i64 %90, i64* %retval
  br label %return

if.end.135:                                       ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.body.136

do.body.136:                                      ; preds = %while.end
  %91 = load i8, i8* %sa_must_free, align 1
  %tobool137 = trunc i8 %91 to i1
  br i1 %tobool137, label %if.then.138, label %if.end.141

if.then.138:                                      ; preds = %do.body.136
  store i8 0, i8* %sa_must_free, align 1
  %92 = load i64, i64* %sa_count, align 8
  %call139 = call i64 @builtin_lisp_symbol(i32 0)
  %call140 = call i64 @unbind_to(i64 %92, i64 %call139)
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.138, %do.body.136
  br label %do.end.142

do.end.142:                                       ; preds = %if.end.141
  br label %if.end.143

if.end.143:                                       ; preds = %do.end.142, %if.end.32
  %93 = load i64*, i64** %overlay.addr, align 8
  %tobool144 = icmp ne i64* %93, null
  br i1 %tobool144, label %if.then.145, label %if.end.147

if.then.145:                                      ; preds = %if.end.143
  %call146 = call i64 @builtin_lisp_symbol(i32 0)
  %94 = load i64*, i64** %overlay.addr, align 8
  store i64 %call146, i64* %94, align 8
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.145, %if.end.143
  %95 = load i64, i64* %position.addr, align 8
  %96 = load i64, i64* %prop.addr, align 8
  %97 = load i64, i64* %object.addr, align 8
  %call148 = call i64 @Fget_text_property(i64 %95, i64 %96, i64 %97)
  store i64 %call148, i64* %retval
  br label %return

return:                                           ; preds = %if.end.147, %do.end.134
  %98 = load i64, i64* %retval
  ret i64 %98
}

declare zeroext i1 @WINDOWP(i64) #1

declare %struct.window* @XWINDOW(i64) #1

; Function Attrs: noreturn
declare void @xsignal1(i64, i64) #2

declare void @set_buffer_temp(%struct.buffer*) #1

declare i64 @SPECPDL_INDEX() #1

declare noalias i8* @xnmalloc(i64, i64) #1

declare void @record_unwind_protect_ptr(void (i8*)*, i8*) #1

declare void @xfree(i8*) #1

declare i64 @overlays_at(i64, i1 zeroext, i64**, i64*, i64*, i64*, i1 zeroext) #1

declare i64 @sort_overlays(i64*, i64, %struct.window*) #1

declare i64 @Foverlay_get(i64, i64) #1

declare i64 @unbind_to(i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fget_char_property(i64 %position, i64 %prop, i64 %object) #0 {
entry:
  %position.addr = alloca i64, align 8
  %prop.addr = alloca i64, align 8
  %object.addr = alloca i64, align 8
  store i64 %position, i64* %position.addr, align 8
  store i64 %prop, i64* %prop.addr, align 8
  store i64 %object, i64* %object.addr, align 8
  %0 = load i64, i64* %position.addr, align 8
  %1 = load i64, i64* %prop.addr, align 8
  %2 = load i64, i64* %object.addr, align 8
  %call = call i64 @get_char_property_and_overlay(i64 %0, i64 %1, i64 %2, i64* null)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @Fget_char_property_and_overlay(i64 %position, i64 %prop, i64 %object) #0 {
entry:
  %position.addr = alloca i64, align 8
  %prop.addr = alloca i64, align 8
  %object.addr = alloca i64, align 8
  %overlay = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %position, i64* %position.addr, align 8
  store i64 %prop, i64* %prop.addr, align 8
  store i64 %object, i64* %object.addr, align 8
  %0 = load i64, i64* %position.addr, align 8
  %1 = load i64, i64* %prop.addr, align 8
  %2 = load i64, i64* %object.addr, align 8
  %call = call i64 @get_char_property_and_overlay(i64 %0, i64 %1, i64 %2, i64* %overlay)
  store i64 %call, i64* %val, align 8
  %3 = load i64, i64* %val, align 8
  %4 = load i64, i64* %overlay, align 8
  %call1 = call i64 @Fcons(i64 %3, i64 %4)
  ret i64 %call1
}

declare i64 @Fcons(i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fnext_char_property_change(i64 %position, i64 %limit) #0 {
entry:
  %position.addr = alloca i64, align 8
  %limit.addr = alloca i64, align 8
  %temp = alloca i64, align 8
  store i64 %position, i64* %position.addr, align 8
  store i64 %limit, i64* %limit.addr, align 8
  %0 = load i64, i64* %position.addr, align 8
  %call = call i64 @Fnext_overlay_change(i64 %0)
  store i64 %call, i64* %temp, align 8
  %1 = load i64, i64* %limit.addr, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %1, %call1
  br i1 %cmp, label %if.end.21, label %if.then

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %2 = load i64, i64* %limit.addr, align 8
  %and = and i64 %2, 7
  %conv = trunc i64 %and to i32
  %cmp2 = icmp eq i32 %conv, 1
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %3 = load i64, i64* %limit.addr, align 8
  %call4 = call i32 @XMISCTYPE(i64 %3)
  %cmp5 = icmp eq i32 %call4, 24236
  br i1 %cmp5, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %land.lhs.true
  %4 = load i64, i64* %limit.addr, align 8
  %call8 = call i64 @marker_position(i64 %4)
  %call9 = call i64 @make_natnum(i64 %call8)
  store i64 %call9, i64* %limit.addr, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %do.body
  %5 = load i64, i64* %limit.addr, align 8
  %and10 = and i64 %5, 7
  %conv11 = trunc i64 %and10 to i32
  %and12 = and i32 %conv11, -5
  %cmp13 = icmp eq i32 %and12, 2
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %call15 = call i64 @builtin_lisp_symbol(i32 558)
  %6 = load i64, i64* %limit.addr, align 8
  %7 = call i64 @wrong_type_argument(i64 %call15, i64 %6) #4
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %8, %cond.true
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end
  %9 = load i64, i64* %limit.addr, align 8
  %shr = ashr i64 %9, 2
  %10 = load i64, i64* %temp, align 8
  %shr16 = ashr i64 %10, 2
  %cmp17 = icmp slt i64 %shr, %shr16
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %do.end
  %11 = load i64, i64* %limit.addr, align 8
  store i64 %11, i64* %temp, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %do.end
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %entry
  %12 = load i64, i64* %position.addr, align 8
  %call22 = call i64 @builtin_lisp_symbol(i32 0)
  %13 = load i64, i64* %temp, align 8
  %call23 = call i64 @Fnext_property_change(i64 %12, i64 %call22, i64 %13)
  ret i64 %call23
}

declare i64 @Fnext_overlay_change(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fnext_property_change(i64 %position, i64 %object, i64 %limit) #0 {
entry:
  %retval = alloca i64, align 8
  %position.addr = alloca i64, align 8
  %object.addr = alloca i64, align 8
  %limit.addr = alloca i64, align 8
  %i = alloca %struct.interval*, align 8
  %next = alloca %struct.interval*, align 8
  store i64 %position, i64* %position.addr, align 8
  store i64 %object, i64* %object.addr, align 8
  store i64 %limit, i64* %limit.addr, align 8
  %0 = load i64, i64* %object.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %2 = bitcast %struct.buffer* %1 to i8*
  %call1 = call i64 @make_lisp_ptr(i8* %2, i32 5)
  store i64 %call1, i64* %object.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* %limit.addr, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp3 = icmp eq i64 %3, %call2
  br i1 %cmp3, label %if.end.23, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %4 = load i64, i64* %limit.addr, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp5 = icmp eq i64 %4, %call4
  br i1 %cmp5, label %if.end.23, label %if.then.6

if.then.6:                                        ; preds = %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %if.then.6
  %5 = load i64, i64* %limit.addr, align 8
  %and = and i64 %5, 7
  %conv = trunc i64 %and to i32
  %cmp7 = icmp eq i32 %conv, 1
  br i1 %cmp7, label %land.lhs.true.9, label %if.else

land.lhs.true.9:                                  ; preds = %do.body
  %6 = load i64, i64* %limit.addr, align 8
  %call10 = call i32 @XMISCTYPE(i64 %6)
  %cmp11 = icmp eq i32 %call10, 24236
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %land.lhs.true.9
  %7 = load i64, i64* %limit.addr, align 8
  %call14 = call i64 @marker_position(i64 %7)
  %call15 = call i64 @make_natnum(i64 %call14)
  store i64 %call15, i64* %limit.addr, align 8
  br label %if.end.22

if.else:                                          ; preds = %land.lhs.true.9, %do.body
  %8 = load i64, i64* %limit.addr, align 8
  %and16 = and i64 %8, 7
  %conv17 = trunc i64 %and16 to i32
  %and18 = and i32 %conv17, -5
  %cmp19 = icmp eq i32 %and18, 2
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %call21 = call i64 @builtin_lisp_symbol(i32 558)
  %9 = load i64, i64* %limit.addr, align 8
  %10 = call i64 @wrong_type_argument(i64 %call21, i64 %9) #4
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %11, %cond.true
  br label %if.end.22

if.end.22:                                        ; preds = %cond.end, %if.then.13
  br label %do.end

do.end:                                           ; preds = %if.end.22
  br label %if.end.23

if.end.23:                                        ; preds = %do.end, %land.lhs.true, %if.end
  %12 = load i64, i64* %object.addr, align 8
  %call24 = call %struct.interval* @validate_interval_range(i64 %12, i64* %position.addr, i64* %position.addr, i1 zeroext false)
  store %struct.interval* %call24, %struct.interval** %i, align 8
  %13 = load i64, i64* %limit.addr, align 8
  %call25 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp26 = icmp eq i64 %13, %call25
  br i1 %cmp26, label %if.then.28, label %if.end.66

if.then.28:                                       ; preds = %if.end.23
  %14 = load %struct.interval*, %struct.interval** %i, align 8
  %tobool = icmp ne %struct.interval* %14, null
  br i1 %tobool, label %if.else.30, label %if.then.29

if.then.29:                                       ; preds = %if.then.28
  %15 = load %struct.interval*, %struct.interval** %i, align 8
  store %struct.interval* %15, %struct.interval** %next, align 8
  br label %if.end.32

if.else.30:                                       ; preds = %if.then.28
  %16 = load %struct.interval*, %struct.interval** %i, align 8
  %call31 = call %struct.interval* @next_interval(%struct.interval* %16)
  store %struct.interval* %call31, %struct.interval** %next, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  %17 = load %struct.interval*, %struct.interval** %next, align 8
  %tobool33 = icmp ne %struct.interval* %17, null
  br i1 %tobool33, label %if.else.62, label %if.then.34

if.then.34:                                       ; preds = %if.end.32
  %18 = load i64, i64* %object.addr, align 8
  %call35 = call zeroext i1 @STRINGP(i64 %18)
  br i1 %call35, label %cond.true.37, label %cond.false.39

cond.true.37:                                     ; preds = %if.then.34
  %19 = load i64, i64* %object.addr, align 8
  %call38 = call i64 @SCHARS(i64 %19)
  br label %cond.end.59

cond.false.39:                                    ; preds = %if.then.34
  %20 = load i64, i64* %object.addr, align 8
  %call40 = call %struct.buffer* @XBUFFER(i64 %20)
  %21 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp41 = icmp eq %struct.buffer* %call40, %21
  br i1 %cmp41, label %cond.true.43, label %cond.false.44

cond.true.43:                                     ; preds = %cond.false.39
  %22 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %22, i32 0, i32 79
  %23 = load i64, i64* %zv, align 8
  br label %cond.end.57

cond.false.44:                                    ; preds = %cond.false.39
  %24 = load i64, i64* %object.addr, align 8
  %call45 = call %struct.buffer* @XBUFFER(i64 %24)
  %zv_marker_ = getelementptr inbounds %struct.buffer, %struct.buffer* %call45, i32 0, i32 47
  %25 = load i64, i64* %zv_marker_, align 8
  %call46 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp47 = icmp eq i64 %25, %call46
  br i1 %cmp47, label %cond.true.49, label %cond.false.52

cond.true.49:                                     ; preds = %cond.false.44
  %26 = load i64, i64* %object.addr, align 8
  %call50 = call %struct.buffer* @XBUFFER(i64 %26)
  %zv51 = getelementptr inbounds %struct.buffer, %struct.buffer* %call50, i32 0, i32 79
  %27 = load i64, i64* %zv51, align 8
  br label %cond.end.56

cond.false.52:                                    ; preds = %cond.false.44
  %28 = load i64, i64* %object.addr, align 8
  %call53 = call %struct.buffer* @XBUFFER(i64 %28)
  %zv_marker_54 = getelementptr inbounds %struct.buffer, %struct.buffer* %call53, i32 0, i32 47
  %29 = load i64, i64* %zv_marker_54, align 8
  %call55 = call i64 @marker_position(i64 %29)
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.false.52, %cond.true.49
  %cond = phi i64 [ %27, %cond.true.49 ], [ %call55, %cond.false.52 ]
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.end.56, %cond.true.43
  %cond58 = phi i64 [ %23, %cond.true.43 ], [ %cond, %cond.end.56 ]
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.end.57, %cond.true.37
  %cond60 = phi i64 [ %call38, %cond.true.37 ], [ %cond58, %cond.end.57 ]
  %call61 = call i64 @make_natnum(i64 %cond60)
  store i64 %call61, i64* %position.addr, align 8
  br label %if.end.65

if.else.62:                                       ; preds = %if.end.32
  %30 = load %struct.interval*, %struct.interval** %next, align 8
  %position63 = getelementptr inbounds %struct.interval, %struct.interval* %30, i32 0, i32 1
  %31 = load i64, i64* %position63, align 8
  %call64 = call i64 @make_natnum(i64 %31)
  store i64 %call64, i64* %position.addr, align 8
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.62, %cond.end.59
  %32 = load i64, i64* %position.addr, align 8
  store i64 %32, i64* %retval
  br label %return

if.end.66:                                        ; preds = %if.end.23
  %33 = load %struct.interval*, %struct.interval** %i, align 8
  %tobool67 = icmp ne %struct.interval* %33, null
  br i1 %tobool67, label %if.end.69, label %if.then.68

if.then.68:                                       ; preds = %if.end.66
  %34 = load i64, i64* %limit.addr, align 8
  store i64 %34, i64* %retval
  br label %return

if.end.69:                                        ; preds = %if.end.66
  %35 = load %struct.interval*, %struct.interval** %i, align 8
  %call70 = call %struct.interval* @next_interval(%struct.interval* %35)
  store %struct.interval* %call70, %struct.interval** %next, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.69
  %36 = load %struct.interval*, %struct.interval** %next, align 8
  %tobool71 = icmp ne %struct.interval* %36, null
  br i1 %tobool71, label %land.lhs.true.72, label %land.end

land.lhs.true.72:                                 ; preds = %while.cond
  %37 = load %struct.interval*, %struct.interval** %i, align 8
  %38 = load %struct.interval*, %struct.interval** %next, align 8
  %call73 = call zeroext i1 @intervals_equal(%struct.interval* %37, %struct.interval* %38)
  br i1 %call73, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.72
  %39 = load i64, i64* %limit.addr, align 8
  %call75 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp76 = icmp eq i64 %39, %call75
  br i1 %cmp76, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %40 = load %struct.interval*, %struct.interval** %next, align 8
  %position78 = getelementptr inbounds %struct.interval, %struct.interval* %40, i32 0, i32 1
  %41 = load i64, i64* %position78, align 8
  %42 = load i64, i64* %limit.addr, align 8
  %shr = ashr i64 %42, 2
  %cmp79 = icmp slt i64 %41, %shr
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %43 = phi i1 [ true, %land.rhs ], [ %cmp79, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %land.lhs.true.72, %while.cond
  %44 = phi i1 [ false, %land.lhs.true.72 ], [ false, %while.cond ], [ %43, %lor.end ]
  br i1 %44, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %45 = load %struct.interval*, %struct.interval** %next, align 8
  %call81 = call %struct.interval* @next_interval(%struct.interval* %45)
  store %struct.interval* %call81, %struct.interval** %next, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %46 = load %struct.interval*, %struct.interval** %next, align 8
  %tobool82 = icmp ne %struct.interval* %46, null
  br i1 %tobool82, label %lor.lhs.false, label %if.then.125

lor.lhs.false:                                    ; preds = %while.end
  %47 = load %struct.interval*, %struct.interval** %next, align 8
  %position83 = getelementptr inbounds %struct.interval, %struct.interval* %47, i32 0, i32 1
  %48 = load i64, i64* %position83, align 8
  %49 = load i64, i64* %limit.addr, align 8
  %and84 = and i64 %49, 7
  %conv85 = trunc i64 %and84 to i32
  %and86 = and i32 %conv85, -5
  %cmp87 = icmp eq i32 %and86, 2
  br i1 %cmp87, label %cond.true.89, label %cond.false.91

cond.true.89:                                     ; preds = %lor.lhs.false
  %50 = load i64, i64* %limit.addr, align 8
  %shr90 = ashr i64 %50, 2
  br label %cond.end.121

cond.false.91:                                    ; preds = %lor.lhs.false
  %51 = load i64, i64* %object.addr, align 8
  %call92 = call zeroext i1 @STRINGP(i64 %51)
  br i1 %call92, label %cond.true.94, label %cond.false.96

cond.true.94:                                     ; preds = %cond.false.91
  %52 = load i64, i64* %object.addr, align 8
  %call95 = call i64 @SCHARS(i64 %52)
  br label %cond.end.119

cond.false.96:                                    ; preds = %cond.false.91
  %53 = load i64, i64* %object.addr, align 8
  %call97 = call %struct.buffer* @XBUFFER(i64 %53)
  %54 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp98 = icmp eq %struct.buffer* %call97, %54
  br i1 %cmp98, label %cond.true.100, label %cond.false.102

cond.true.100:                                    ; preds = %cond.false.96
  %55 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv101 = getelementptr inbounds %struct.buffer, %struct.buffer* %55, i32 0, i32 79
  %56 = load i64, i64* %zv101, align 8
  br label %cond.end.117

cond.false.102:                                   ; preds = %cond.false.96
  %57 = load i64, i64* %object.addr, align 8
  %call103 = call %struct.buffer* @XBUFFER(i64 %57)
  %zv_marker_104 = getelementptr inbounds %struct.buffer, %struct.buffer* %call103, i32 0, i32 47
  %58 = load i64, i64* %zv_marker_104, align 8
  %call105 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp106 = icmp eq i64 %58, %call105
  br i1 %cmp106, label %cond.true.108, label %cond.false.111

cond.true.108:                                    ; preds = %cond.false.102
  %59 = load i64, i64* %object.addr, align 8
  %call109 = call %struct.buffer* @XBUFFER(i64 %59)
  %zv110 = getelementptr inbounds %struct.buffer, %struct.buffer* %call109, i32 0, i32 79
  %60 = load i64, i64* %zv110, align 8
  br label %cond.end.115

cond.false.111:                                   ; preds = %cond.false.102
  %61 = load i64, i64* %object.addr, align 8
  %call112 = call %struct.buffer* @XBUFFER(i64 %61)
  %zv_marker_113 = getelementptr inbounds %struct.buffer, %struct.buffer* %call112, i32 0, i32 47
  %62 = load i64, i64* %zv_marker_113, align 8
  %call114 = call i64 @marker_position(i64 %62)
  br label %cond.end.115

cond.end.115:                                     ; preds = %cond.false.111, %cond.true.108
  %cond116 = phi i64 [ %60, %cond.true.108 ], [ %call114, %cond.false.111 ]
  br label %cond.end.117

cond.end.117:                                     ; preds = %cond.end.115, %cond.true.100
  %cond118 = phi i64 [ %56, %cond.true.100 ], [ %cond116, %cond.end.115 ]
  br label %cond.end.119

cond.end.119:                                     ; preds = %cond.end.117, %cond.true.94
  %cond120 = phi i64 [ %call95, %cond.true.94 ], [ %cond118, %cond.end.117 ]
  br label %cond.end.121

cond.end.121:                                     ; preds = %cond.end.119, %cond.true.89
  %cond122 = phi i64 [ %shr90, %cond.true.89 ], [ %cond120, %cond.end.119 ]
  %cmp123 = icmp sge i64 %48, %cond122
  br i1 %cmp123, label %if.then.125, label %if.else.126

if.then.125:                                      ; preds = %cond.end.121, %while.end
  %63 = load i64, i64* %limit.addr, align 8
  store i64 %63, i64* %retval
  br label %return

if.else.126:                                      ; preds = %cond.end.121
  %64 = load %struct.interval*, %struct.interval** %next, align 8
  %position127 = getelementptr inbounds %struct.interval, %struct.interval* %64, i32 0, i32 1
  %65 = load i64, i64* %position127, align 8
  %shl = shl i64 %65, 2
  %add = add i64 %shl, 2
  store i64 %add, i64* %retval
  br label %return

return:                                           ; preds = %if.else.126, %if.then.125, %if.then.68, %if.end.65
  %66 = load i64, i64* %retval
  ret i64 %66
}

; Function Attrs: nounwind uwtable
define i64 @Fprevious_char_property_change(i64 %position, i64 %limit) #0 {
entry:
  %position.addr = alloca i64, align 8
  %limit.addr = alloca i64, align 8
  %temp = alloca i64, align 8
  store i64 %position, i64* %position.addr, align 8
  store i64 %limit, i64* %limit.addr, align 8
  %0 = load i64, i64* %position.addr, align 8
  %call = call i64 @Fprevious_overlay_change(i64 %0)
  store i64 %call, i64* %temp, align 8
  %1 = load i64, i64* %limit.addr, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %1, %call1
  br i1 %cmp, label %if.end.21, label %if.then

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %2 = load i64, i64* %limit.addr, align 8
  %and = and i64 %2, 7
  %conv = trunc i64 %and to i32
  %cmp2 = icmp eq i32 %conv, 1
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %3 = load i64, i64* %limit.addr, align 8
  %call4 = call i32 @XMISCTYPE(i64 %3)
  %cmp5 = icmp eq i32 %call4, 24236
  br i1 %cmp5, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %land.lhs.true
  %4 = load i64, i64* %limit.addr, align 8
  %call8 = call i64 @marker_position(i64 %4)
  %call9 = call i64 @make_natnum(i64 %call8)
  store i64 %call9, i64* %limit.addr, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %do.body
  %5 = load i64, i64* %limit.addr, align 8
  %and10 = and i64 %5, 7
  %conv11 = trunc i64 %and10 to i32
  %and12 = and i32 %conv11, -5
  %cmp13 = icmp eq i32 %and12, 2
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %call15 = call i64 @builtin_lisp_symbol(i32 558)
  %6 = load i64, i64* %limit.addr, align 8
  %7 = call i64 @wrong_type_argument(i64 %call15, i64 %6) #4
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %8, %cond.true
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end
  %9 = load i64, i64* %limit.addr, align 8
  %shr = ashr i64 %9, 2
  %10 = load i64, i64* %temp, align 8
  %shr16 = ashr i64 %10, 2
  %cmp17 = icmp sgt i64 %shr, %shr16
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %do.end
  %11 = load i64, i64* %limit.addr, align 8
  store i64 %11, i64* %temp, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %do.end
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %entry
  %12 = load i64, i64* %position.addr, align 8
  %call22 = call i64 @builtin_lisp_symbol(i32 0)
  %13 = load i64, i64* %temp, align 8
  %call23 = call i64 @Fprevious_property_change(i64 %12, i64 %call22, i64 %13)
  ret i64 %call23
}

declare i64 @Fprevious_overlay_change(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fprevious_property_change(i64 %position, i64 %object, i64 %limit) #0 {
entry:
  %retval = alloca i64, align 8
  %position.addr = alloca i64, align 8
  %object.addr = alloca i64, align 8
  %limit.addr = alloca i64, align 8
  %i = alloca %struct.interval*, align 8
  %previous = alloca %struct.interval*, align 8
  store i64 %position, i64* %position.addr, align 8
  store i64 %object, i64* %object.addr, align 8
  store i64 %limit, i64* %limit.addr, align 8
  %0 = load i64, i64* %object.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %2 = bitcast %struct.buffer* %1 to i8*
  %call1 = call i64 @make_lisp_ptr(i8* %2, i32 5)
  store i64 %call1, i64* %object.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* %limit.addr, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp3 = icmp eq i64 %3, %call2
  br i1 %cmp3, label %if.end.20, label %if.then.4

if.then.4:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.4
  %4 = load i64, i64* %limit.addr, align 8
  %and = and i64 %4, 7
  %conv = trunc i64 %and to i32
  %cmp5 = icmp eq i32 %conv, 1
  br i1 %cmp5, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %5 = load i64, i64* %limit.addr, align 8
  %call7 = call i32 @XMISCTYPE(i64 %5)
  %cmp8 = icmp eq i32 %call7, 24236
  br i1 %cmp8, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %land.lhs.true
  %6 = load i64, i64* %limit.addr, align 8
  %call11 = call i64 @marker_position(i64 %6)
  %call12 = call i64 @make_natnum(i64 %call11)
  store i64 %call12, i64* %limit.addr, align 8
  br label %if.end.19

if.else:                                          ; preds = %land.lhs.true, %do.body
  %7 = load i64, i64* %limit.addr, align 8
  %and13 = and i64 %7, 7
  %conv14 = trunc i64 %and13 to i32
  %and15 = and i32 %conv14, -5
  %cmp16 = icmp eq i32 %and15, 2
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %call18 = call i64 @builtin_lisp_symbol(i32 558)
  %8 = load i64, i64* %limit.addr, align 8
  %9 = call i64 @wrong_type_argument(i64 %call18, i64 %8) #4
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %10, %cond.true
  br label %if.end.19

if.end.19:                                        ; preds = %cond.end, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.19
  br label %if.end.20

if.end.20:                                        ; preds = %do.end, %if.end
  %11 = load i64, i64* %object.addr, align 8
  %call21 = call %struct.interval* @validate_interval_range(i64 %11, i64* %position.addr, i64* %position.addr, i1 zeroext false)
  store %struct.interval* %call21, %struct.interval** %i, align 8
  %12 = load %struct.interval*, %struct.interval** %i, align 8
  %tobool = icmp ne %struct.interval* %12, null
  br i1 %tobool, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %if.end.20
  %13 = load i64, i64* %limit.addr, align 8
  store i64 %13, i64* %retval
  br label %return

if.end.23:                                        ; preds = %if.end.20
  %14 = load %struct.interval*, %struct.interval** %i, align 8
  %position24 = getelementptr inbounds %struct.interval, %struct.interval* %14, i32 0, i32 1
  %15 = load i64, i64* %position24, align 8
  %16 = load i64, i64* %position.addr, align 8
  %shr = ashr i64 %16, 2
  %cmp25 = icmp eq i64 %15, %shr
  br i1 %cmp25, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.end.23
  %17 = load %struct.interval*, %struct.interval** %i, align 8
  %call28 = call %struct.interval* @previous_interval(%struct.interval* %17)
  store %struct.interval* %call28, %struct.interval** %i, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %if.end.23
  %18 = load %struct.interval*, %struct.interval** %i, align 8
  %call30 = call %struct.interval* @previous_interval(%struct.interval* %18)
  store %struct.interval* %call30, %struct.interval** %previous, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.29
  %19 = load %struct.interval*, %struct.interval** %previous, align 8
  %tobool31 = icmp ne %struct.interval* %19, null
  br i1 %tobool31, label %land.lhs.true.32, label %land.end

land.lhs.true.32:                                 ; preds = %while.cond
  %20 = load %struct.interval*, %struct.interval** %previous, align 8
  %21 = load %struct.interval*, %struct.interval** %i, align 8
  %call33 = call zeroext i1 @intervals_equal(%struct.interval* %20, %struct.interval* %21)
  br i1 %call33, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.32
  %22 = load i64, i64* %limit.addr, align 8
  %call35 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp36 = icmp eq i64 %22, %call35
  br i1 %cmp36, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %23 = load %struct.interval*, %struct.interval** %previous, align 8
  %position38 = getelementptr inbounds %struct.interval, %struct.interval* %23, i32 0, i32 1
  %24 = load i64, i64* %position38, align 8
  %25 = load %struct.interval*, %struct.interval** %previous, align 8
  %cmp39 = icmp eq %struct.interval* %25, null
  br i1 %cmp39, label %cond.true.41, label %cond.false.42

cond.true.41:                                     ; preds = %lor.rhs
  br label %cond.end.65

cond.false.42:                                    ; preds = %lor.rhs
  %26 = load %struct.interval*, %struct.interval** %previous, align 8
  %cmp43 = icmp eq %struct.interval* %26, null
  br i1 %cmp43, label %cond.true.45, label %cond.false.46

cond.true.45:                                     ; preds = %cond.false.42
  br label %cond.end.47

cond.false.46:                                    ; preds = %cond.false.42
  %27 = load %struct.interval*, %struct.interval** %previous, align 8
  %total_length = getelementptr inbounds %struct.interval, %struct.interval* %27, i32 0, i32 0
  %28 = load i64, i64* %total_length, align 8
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.46, %cond.true.45
  %cond = phi i64 [ 0, %cond.true.45 ], [ %28, %cond.false.46 ]
  %29 = load %struct.interval*, %struct.interval** %previous, align 8
  %right = getelementptr inbounds %struct.interval, %struct.interval* %29, i32 0, i32 3
  %30 = load %struct.interval*, %struct.interval** %right, align 8
  %cmp48 = icmp eq %struct.interval* %30, null
  br i1 %cmp48, label %cond.true.50, label %cond.false.51

cond.true.50:                                     ; preds = %cond.end.47
  br label %cond.end.54

cond.false.51:                                    ; preds = %cond.end.47
  %31 = load %struct.interval*, %struct.interval** %previous, align 8
  %right52 = getelementptr inbounds %struct.interval, %struct.interval* %31, i32 0, i32 3
  %32 = load %struct.interval*, %struct.interval** %right52, align 8
  %total_length53 = getelementptr inbounds %struct.interval, %struct.interval* %32, i32 0, i32 0
  %33 = load i64, i64* %total_length53, align 8
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.false.51, %cond.true.50
  %cond55 = phi i64 [ 0, %cond.true.50 ], [ %33, %cond.false.51 ]
  %sub = sub nsw i64 %cond, %cond55
  %34 = load %struct.interval*, %struct.interval** %previous, align 8
  %left = getelementptr inbounds %struct.interval, %struct.interval* %34, i32 0, i32 2
  %35 = load %struct.interval*, %struct.interval** %left, align 8
  %cmp56 = icmp eq %struct.interval* %35, null
  br i1 %cmp56, label %cond.true.58, label %cond.false.59

cond.true.58:                                     ; preds = %cond.end.54
  br label %cond.end.62

cond.false.59:                                    ; preds = %cond.end.54
  %36 = load %struct.interval*, %struct.interval** %previous, align 8
  %left60 = getelementptr inbounds %struct.interval, %struct.interval* %36, i32 0, i32 2
  %37 = load %struct.interval*, %struct.interval** %left60, align 8
  %total_length61 = getelementptr inbounds %struct.interval, %struct.interval* %37, i32 0, i32 0
  %38 = load i64, i64* %total_length61, align 8
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.false.59, %cond.true.58
  %cond63 = phi i64 [ 0, %cond.true.58 ], [ %38, %cond.false.59 ]
  %sub64 = sub nsw i64 %sub, %cond63
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.end.62, %cond.true.41
  %cond66 = phi i64 [ 0, %cond.true.41 ], [ %sub64, %cond.end.62 ]
  %add = add nsw i64 %24, %cond66
  %39 = load i64, i64* %limit.addr, align 8
  %shr67 = ashr i64 %39, 2
  %cmp68 = icmp sgt i64 %add, %shr67
  br label %lor.end

lor.end:                                          ; preds = %cond.end.65, %land.rhs
  %40 = phi i1 [ true, %land.rhs ], [ %cmp68, %cond.end.65 ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %land.lhs.true.32, %while.cond
  %41 = phi i1 [ false, %land.lhs.true.32 ], [ false, %while.cond ], [ %40, %lor.end ]
  br i1 %41, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %42 = load %struct.interval*, %struct.interval** %previous, align 8
  %call70 = call %struct.interval* @previous_interval(%struct.interval* %42)
  store %struct.interval* %call70, %struct.interval** %previous, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %43 = load %struct.interval*, %struct.interval** %previous, align 8
  %tobool71 = icmp ne %struct.interval* %43, null
  br i1 %tobool71, label %lor.lhs.false, label %if.then.145

lor.lhs.false:                                    ; preds = %while.end
  %44 = load %struct.interval*, %struct.interval** %previous, align 8
  %position72 = getelementptr inbounds %struct.interval, %struct.interval* %44, i32 0, i32 1
  %45 = load i64, i64* %position72, align 8
  %46 = load %struct.interval*, %struct.interval** %previous, align 8
  %cmp73 = icmp eq %struct.interval* %46, null
  br i1 %cmp73, label %cond.true.75, label %cond.false.76

cond.true.75:                                     ; preds = %lor.lhs.false
  br label %cond.end.104

cond.false.76:                                    ; preds = %lor.lhs.false
  %47 = load %struct.interval*, %struct.interval** %previous, align 8
  %cmp77 = icmp eq %struct.interval* %47, null
  br i1 %cmp77, label %cond.true.79, label %cond.false.80

cond.true.79:                                     ; preds = %cond.false.76
  br label %cond.end.82

cond.false.80:                                    ; preds = %cond.false.76
  %48 = load %struct.interval*, %struct.interval** %previous, align 8
  %total_length81 = getelementptr inbounds %struct.interval, %struct.interval* %48, i32 0, i32 0
  %49 = load i64, i64* %total_length81, align 8
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.false.80, %cond.true.79
  %cond83 = phi i64 [ 0, %cond.true.79 ], [ %49, %cond.false.80 ]
  %50 = load %struct.interval*, %struct.interval** %previous, align 8
  %right84 = getelementptr inbounds %struct.interval, %struct.interval* %50, i32 0, i32 3
  %51 = load %struct.interval*, %struct.interval** %right84, align 8
  %cmp85 = icmp eq %struct.interval* %51, null
  br i1 %cmp85, label %cond.true.87, label %cond.false.88

cond.true.87:                                     ; preds = %cond.end.82
  br label %cond.end.91

cond.false.88:                                    ; preds = %cond.end.82
  %52 = load %struct.interval*, %struct.interval** %previous, align 8
  %right89 = getelementptr inbounds %struct.interval, %struct.interval* %52, i32 0, i32 3
  %53 = load %struct.interval*, %struct.interval** %right89, align 8
  %total_length90 = getelementptr inbounds %struct.interval, %struct.interval* %53, i32 0, i32 0
  %54 = load i64, i64* %total_length90, align 8
  br label %cond.end.91

cond.end.91:                                      ; preds = %cond.false.88, %cond.true.87
  %cond92 = phi i64 [ 0, %cond.true.87 ], [ %54, %cond.false.88 ]
  %sub93 = sub nsw i64 %cond83, %cond92
  %55 = load %struct.interval*, %struct.interval** %previous, align 8
  %left94 = getelementptr inbounds %struct.interval, %struct.interval* %55, i32 0, i32 2
  %56 = load %struct.interval*, %struct.interval** %left94, align 8
  %cmp95 = icmp eq %struct.interval* %56, null
  br i1 %cmp95, label %cond.true.97, label %cond.false.98

cond.true.97:                                     ; preds = %cond.end.91
  br label %cond.end.101

cond.false.98:                                    ; preds = %cond.end.91
  %57 = load %struct.interval*, %struct.interval** %previous, align 8
  %left99 = getelementptr inbounds %struct.interval, %struct.interval* %57, i32 0, i32 2
  %58 = load %struct.interval*, %struct.interval** %left99, align 8
  %total_length100 = getelementptr inbounds %struct.interval, %struct.interval* %58, i32 0, i32 0
  %59 = load i64, i64* %total_length100, align 8
  br label %cond.end.101

cond.end.101:                                     ; preds = %cond.false.98, %cond.true.97
  %cond102 = phi i64 [ 0, %cond.true.97 ], [ %59, %cond.false.98 ]
  %sub103 = sub nsw i64 %sub93, %cond102
  br label %cond.end.104

cond.end.104:                                     ; preds = %cond.end.101, %cond.true.75
  %cond105 = phi i64 [ 0, %cond.true.75 ], [ %sub103, %cond.end.101 ]
  %add106 = add nsw i64 %45, %cond105
  %60 = load i64, i64* %limit.addr, align 8
  %and107 = and i64 %60, 7
  %conv108 = trunc i64 %and107 to i32
  %and109 = and i32 %conv108, -5
  %cmp110 = icmp eq i32 %and109, 2
  br i1 %cmp110, label %cond.true.112, label %cond.false.114

cond.true.112:                                    ; preds = %cond.end.104
  %61 = load i64, i64* %limit.addr, align 8
  %shr113 = ashr i64 %61, 2
  br label %cond.end.141

cond.false.114:                                   ; preds = %cond.end.104
  %62 = load i64, i64* %object.addr, align 8
  %call115 = call zeroext i1 @STRINGP(i64 %62)
  br i1 %call115, label %cond.true.117, label %cond.false.118

cond.true.117:                                    ; preds = %cond.false.114
  br label %cond.end.139

cond.false.118:                                   ; preds = %cond.false.114
  %63 = load i64, i64* %object.addr, align 8
  %call119 = call %struct.buffer* @XBUFFER(i64 %63)
  %64 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp120 = icmp eq %struct.buffer* %call119, %64
  br i1 %cmp120, label %cond.true.122, label %cond.false.123

cond.true.122:                                    ; preds = %cond.false.118
  %65 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %65, i32 0, i32 77
  %66 = load i64, i64* %begv, align 8
  br label %cond.end.137

cond.false.123:                                   ; preds = %cond.false.118
  %67 = load i64, i64* %object.addr, align 8
  %call124 = call %struct.buffer* @XBUFFER(i64 %67)
  %begv_marker_ = getelementptr inbounds %struct.buffer, %struct.buffer* %call124, i32 0, i32 46
  %68 = load i64, i64* %begv_marker_, align 8
  %call125 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp126 = icmp eq i64 %68, %call125
  br i1 %cmp126, label %cond.true.128, label %cond.false.131

cond.true.128:                                    ; preds = %cond.false.123
  %69 = load i64, i64* %object.addr, align 8
  %call129 = call %struct.buffer* @XBUFFER(i64 %69)
  %begv130 = getelementptr inbounds %struct.buffer, %struct.buffer* %call129, i32 0, i32 77
  %70 = load i64, i64* %begv130, align 8
  br label %cond.end.135

cond.false.131:                                   ; preds = %cond.false.123
  %71 = load i64, i64* %object.addr, align 8
  %call132 = call %struct.buffer* @XBUFFER(i64 %71)
  %begv_marker_133 = getelementptr inbounds %struct.buffer, %struct.buffer* %call132, i32 0, i32 46
  %72 = load i64, i64* %begv_marker_133, align 8
  %call134 = call i64 @marker_position(i64 %72)
  br label %cond.end.135

cond.end.135:                                     ; preds = %cond.false.131, %cond.true.128
  %cond136 = phi i64 [ %70, %cond.true.128 ], [ %call134, %cond.false.131 ]
  br label %cond.end.137

cond.end.137:                                     ; preds = %cond.end.135, %cond.true.122
  %cond138 = phi i64 [ %66, %cond.true.122 ], [ %cond136, %cond.end.135 ]
  br label %cond.end.139

cond.end.139:                                     ; preds = %cond.end.137, %cond.true.117
  %cond140 = phi i64 [ 0, %cond.true.117 ], [ %cond138, %cond.end.137 ]
  br label %cond.end.141

cond.end.141:                                     ; preds = %cond.end.139, %cond.true.112
  %cond142 = phi i64 [ %shr113, %cond.true.112 ], [ %cond140, %cond.end.139 ]
  %cmp143 = icmp sle i64 %add106, %cond142
  br i1 %cmp143, label %if.then.145, label %if.else.146

if.then.145:                                      ; preds = %cond.end.141, %while.end
  %73 = load i64, i64* %limit.addr, align 8
  store i64 %73, i64* %retval
  br label %return

if.else.146:                                      ; preds = %cond.end.141
  %74 = load %struct.interval*, %struct.interval** %previous, align 8
  %position147 = getelementptr inbounds %struct.interval, %struct.interval* %74, i32 0, i32 1
  %75 = load i64, i64* %position147, align 8
  %76 = load %struct.interval*, %struct.interval** %previous, align 8
  %cmp148 = icmp eq %struct.interval* %76, null
  br i1 %cmp148, label %cond.true.150, label %cond.false.151

cond.true.150:                                    ; preds = %if.else.146
  br label %cond.end.179

cond.false.151:                                   ; preds = %if.else.146
  %77 = load %struct.interval*, %struct.interval** %previous, align 8
  %cmp152 = icmp eq %struct.interval* %77, null
  br i1 %cmp152, label %cond.true.154, label %cond.false.155

cond.true.154:                                    ; preds = %cond.false.151
  br label %cond.end.157

cond.false.155:                                   ; preds = %cond.false.151
  %78 = load %struct.interval*, %struct.interval** %previous, align 8
  %total_length156 = getelementptr inbounds %struct.interval, %struct.interval* %78, i32 0, i32 0
  %79 = load i64, i64* %total_length156, align 8
  br label %cond.end.157

cond.end.157:                                     ; preds = %cond.false.155, %cond.true.154
  %cond158 = phi i64 [ 0, %cond.true.154 ], [ %79, %cond.false.155 ]
  %80 = load %struct.interval*, %struct.interval** %previous, align 8
  %right159 = getelementptr inbounds %struct.interval, %struct.interval* %80, i32 0, i32 3
  %81 = load %struct.interval*, %struct.interval** %right159, align 8
  %cmp160 = icmp eq %struct.interval* %81, null
  br i1 %cmp160, label %cond.true.162, label %cond.false.163

cond.true.162:                                    ; preds = %cond.end.157
  br label %cond.end.166

cond.false.163:                                   ; preds = %cond.end.157
  %82 = load %struct.interval*, %struct.interval** %previous, align 8
  %right164 = getelementptr inbounds %struct.interval, %struct.interval* %82, i32 0, i32 3
  %83 = load %struct.interval*, %struct.interval** %right164, align 8
  %total_length165 = getelementptr inbounds %struct.interval, %struct.interval* %83, i32 0, i32 0
  %84 = load i64, i64* %total_length165, align 8
  br label %cond.end.166

cond.end.166:                                     ; preds = %cond.false.163, %cond.true.162
  %cond167 = phi i64 [ 0, %cond.true.162 ], [ %84, %cond.false.163 ]
  %sub168 = sub nsw i64 %cond158, %cond167
  %85 = load %struct.interval*, %struct.interval** %previous, align 8
  %left169 = getelementptr inbounds %struct.interval, %struct.interval* %85, i32 0, i32 2
  %86 = load %struct.interval*, %struct.interval** %left169, align 8
  %cmp170 = icmp eq %struct.interval* %86, null
  br i1 %cmp170, label %cond.true.172, label %cond.false.173

cond.true.172:                                    ; preds = %cond.end.166
  br label %cond.end.176

cond.false.173:                                   ; preds = %cond.end.166
  %87 = load %struct.interval*, %struct.interval** %previous, align 8
  %left174 = getelementptr inbounds %struct.interval, %struct.interval* %87, i32 0, i32 2
  %88 = load %struct.interval*, %struct.interval** %left174, align 8
  %total_length175 = getelementptr inbounds %struct.interval, %struct.interval* %88, i32 0, i32 0
  %89 = load i64, i64* %total_length175, align 8
  br label %cond.end.176

cond.end.176:                                     ; preds = %cond.false.173, %cond.true.172
  %cond177 = phi i64 [ 0, %cond.true.172 ], [ %89, %cond.false.173 ]
  %sub178 = sub nsw i64 %sub168, %cond177
  br label %cond.end.179

cond.end.179:                                     ; preds = %cond.end.176, %cond.true.150
  %cond180 = phi i64 [ 0, %cond.true.150 ], [ %sub178, %cond.end.176 ]
  %add181 = add nsw i64 %75, %cond180
  %shl = shl i64 %add181, 2
  %add182 = add i64 %shl, 2
  store i64 %add182, i64* %retval
  br label %return

return:                                           ; preds = %cond.end.179, %if.then.145, %if.then.22
  %90 = load i64, i64* %retval
  ret i64 %90
}

; Function Attrs: nounwind uwtable
define i64 @Fnext_single_char_property_change(i64 %position, i64 %prop, i64 %object, i64 %limit) #0 {
entry:
  %position.addr = alloca i64, align 8
  %prop.addr = alloca i64, align 8
  %object.addr = alloca i64, align 8
  %limit.addr = alloca i64, align 8
  %initial_value = alloca i64, align 8
  %value = alloca i64, align 8
  %count = alloca i64, align 8
  store i64 %position, i64* %position.addr, align 8
  store i64 %prop, i64* %prop.addr, align 8
  store i64 %object, i64* %object.addr, align 8
  store i64 %limit, i64* %limit.addr, align 8
  %0 = load i64, i64* %object.addr, align 8
  %call = call zeroext i1 @STRINGP(i64 %0)
  br i1 %call, label %if.then, label %if.else.13

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %position.addr, align 8
  %2 = load i64, i64* %prop.addr, align 8
  %3 = load i64, i64* %object.addr, align 8
  %4 = load i64, i64* %limit.addr, align 8
  %call1 = call i64 @Fnext_single_property_change(i64 %1, i64 %2, i64 %3, i64 %4)
  store i64 %call1, i64* %position.addr, align 8
  %5 = load i64, i64* %position.addr, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %5, %call2
  br i1 %cmp, label %if.then.3, label %if.end.12

if.then.3:                                        ; preds = %if.then
  %6 = load i64, i64* %limit.addr, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp5 = icmp eq i64 %6, %call4
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then.3
  %7 = load i64, i64* %object.addr, align 8
  %call7 = call i64 @SCHARS(i64 %7)
  %shl = shl i64 %call7, 2
  %add = add i64 %shl, 2
  store i64 %add, i64* %position.addr, align 8
  br label %if.end

if.else:                                          ; preds = %if.then.3
  %8 = load i64, i64* %limit.addr, align 8
  %and = and i64 %8, 7
  %conv = trunc i64 %and to i32
  %and8 = and i32 %conv, -5
  %cmp9 = icmp eq i32 %and8, 2
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %call11 = call i64 @builtin_lisp_symbol(i32 559)
  %9 = load i64, i64* %limit.addr, align 8
  %10 = call i64 @wrong_type_argument(i64 %call11, i64 %9) #4
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %11, %cond.true
  %12 = load i64, i64* %limit.addr, align 8
  store i64 %12, i64* %position.addr, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then.6
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then
  br label %if.end.110

if.else.13:                                       ; preds = %entry
  %call14 = call i64 @SPECPDL_INDEX()
  store i64 %call14, i64* %count, align 8
  %13 = load i64, i64* %object.addr, align 8
  %call15 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp16 = icmp eq i64 %13, %call15
  br i1 %cmp16, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %if.else.13
  %14 = load i64, i64* %object.addr, align 8
  call void @CHECK_BUFFER(i64 %14)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.else.13
  %15 = load i64, i64* %object.addr, align 8
  %call20 = call zeroext i1 @BUFFERP(i64 %15)
  br i1 %call20, label %land.lhs.true, label %if.end.27

land.lhs.true:                                    ; preds = %if.end.19
  %16 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %17 = load i64, i64* %object.addr, align 8
  %call22 = call %struct.buffer* @XBUFFER(i64 %17)
  %cmp23 = icmp ne %struct.buffer* %16, %call22
  br i1 %cmp23, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %land.lhs.true
  call void @record_unwind_current_buffer()
  %18 = load i64, i64* %object.addr, align 8
  %call26 = call i64 @Fset_buffer(i64 %18)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %land.lhs.true, %if.end.19
  br label %do.body

do.body:                                          ; preds = %if.end.27
  %19 = load i64, i64* %position.addr, align 8
  %and28 = and i64 %19, 7
  %conv29 = trunc i64 %and28 to i32
  %cmp30 = icmp eq i32 %conv29, 1
  br i1 %cmp30, label %land.lhs.true.32, label %if.else.39

land.lhs.true.32:                                 ; preds = %do.body
  %20 = load i64, i64* %position.addr, align 8
  %call33 = call i32 @XMISCTYPE(i64 %20)
  %cmp34 = icmp eq i32 %call33, 24236
  br i1 %cmp34, label %if.then.36, label %if.else.39

if.then.36:                                       ; preds = %land.lhs.true.32
  %21 = load i64, i64* %position.addr, align 8
  %call37 = call i64 @marker_position(i64 %21)
  %call38 = call i64 @make_natnum(i64 %call37)
  store i64 %call38, i64* %position.addr, align 8
  br label %if.end.49

if.else.39:                                       ; preds = %land.lhs.true.32, %do.body
  %22 = load i64, i64* %position.addr, align 8
  %and40 = and i64 %22, 7
  %conv41 = trunc i64 %and40 to i32
  %and42 = and i32 %conv41, -5
  %cmp43 = icmp eq i32 %and42, 2
  br i1 %cmp43, label %cond.true.45, label %cond.false.46

cond.true.45:                                     ; preds = %if.else.39
  br label %cond.end.48

cond.false.46:                                    ; preds = %if.else.39
  %call47 = call i64 @builtin_lisp_symbol(i32 558)
  %23 = load i64, i64* %position.addr, align 8
  %24 = call i64 @wrong_type_argument(i64 %call47, i64 %23) #4
  unreachable
                                                  ; No predecessors!
  br label %cond.end.48

cond.end.48:                                      ; preds = %25, %cond.true.45
  br label %if.end.49

if.end.49:                                        ; preds = %cond.end.48, %if.then.36
  br label %do.end

do.end:                                           ; preds = %if.end.49
  %26 = load i64, i64* %position.addr, align 8
  %27 = load i64, i64* %prop.addr, align 8
  %28 = load i64, i64* %object.addr, align 8
  %call50 = call i64 @Fget_char_property(i64 %26, i64 %27, i64 %28)
  store i64 %call50, i64* %initial_value, align 8
  %29 = load i64, i64* %limit.addr, align 8
  %call51 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp52 = icmp eq i64 %29, %call51
  br i1 %cmp52, label %if.then.54, label %if.else.56

if.then.54:                                       ; preds = %do.end
  %30 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %30, i32 0, i32 79
  %31 = load i64, i64* %zv, align 8
  %call55 = call i64 @make_natnum(i64 %31)
  store i64 %call55, i64* %limit.addr, align 8
  br label %if.end.81

if.else.56:                                       ; preds = %do.end
  br label %do.body.57

do.body.57:                                       ; preds = %if.else.56
  %32 = load i64, i64* %limit.addr, align 8
  %and58 = and i64 %32, 7
  %conv59 = trunc i64 %and58 to i32
  %cmp60 = icmp eq i32 %conv59, 1
  br i1 %cmp60, label %land.lhs.true.62, label %if.else.69

land.lhs.true.62:                                 ; preds = %do.body.57
  %33 = load i64, i64* %limit.addr, align 8
  %call63 = call i32 @XMISCTYPE(i64 %33)
  %cmp64 = icmp eq i32 %call63, 24236
  br i1 %cmp64, label %if.then.66, label %if.else.69

if.then.66:                                       ; preds = %land.lhs.true.62
  %34 = load i64, i64* %limit.addr, align 8
  %call67 = call i64 @marker_position(i64 %34)
  %call68 = call i64 @make_natnum(i64 %call67)
  store i64 %call68, i64* %limit.addr, align 8
  br label %if.end.79

if.else.69:                                       ; preds = %land.lhs.true.62, %do.body.57
  %35 = load i64, i64* %limit.addr, align 8
  %and70 = and i64 %35, 7
  %conv71 = trunc i64 %and70 to i32
  %and72 = and i32 %conv71, -5
  %cmp73 = icmp eq i32 %and72, 2
  br i1 %cmp73, label %cond.true.75, label %cond.false.76

cond.true.75:                                     ; preds = %if.else.69
  br label %cond.end.78

cond.false.76:                                    ; preds = %if.else.69
  %call77 = call i64 @builtin_lisp_symbol(i32 558)
  %36 = load i64, i64* %limit.addr, align 8
  %37 = call i64 @wrong_type_argument(i64 %call77, i64 %36) #4
  unreachable
                                                  ; No predecessors!
  br label %cond.end.78

cond.end.78:                                      ; preds = %38, %cond.true.75
  br label %if.end.79

if.end.79:                                        ; preds = %cond.end.78, %if.then.66
  br label %do.end.80

do.end.80:                                        ; preds = %if.end.79
  br label %if.end.81

if.end.81:                                        ; preds = %do.end.80, %if.then.54
  %39 = load i64, i64* %position.addr, align 8
  %shr = ashr i64 %39, 2
  %40 = load i64, i64* %limit.addr, align 8
  %shr82 = ashr i64 %40, 2
  %cmp83 = icmp sge i64 %shr, %shr82
  br i1 %cmp83, label %if.then.85, label %if.else.94

if.then.85:                                       ; preds = %if.end.81
  %41 = load i64, i64* %limit.addr, align 8
  store i64 %41, i64* %position.addr, align 8
  %42 = load i64, i64* %position.addr, align 8
  %shr86 = ashr i64 %42, 2
  %43 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv87 = getelementptr inbounds %struct.buffer, %struct.buffer* %43, i32 0, i32 79
  %44 = load i64, i64* %zv87, align 8
  %cmp88 = icmp sgt i64 %shr86, %44
  br i1 %cmp88, label %if.then.90, label %if.end.93

if.then.90:                                       ; preds = %if.then.85
  %45 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv91 = getelementptr inbounds %struct.buffer, %struct.buffer* %45, i32 0, i32 79
  %46 = load i64, i64* %zv91, align 8
  %call92 = call i64 @make_natnum(i64 %46)
  store i64 %call92, i64* %position.addr, align 8
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.90, %if.then.85
  br label %if.end.107

if.else.94:                                       ; preds = %if.end.81
  br label %while.body

while.body:                                       ; preds = %if.else.94, %if.end.106
  %47 = load i64, i64* %position.addr, align 8
  %48 = load i64, i64* %limit.addr, align 8
  %call95 = call i64 @Fnext_char_property_change(i64 %47, i64 %48)
  store i64 %call95, i64* %position.addr, align 8
  %49 = load i64, i64* %position.addr, align 8
  %shr96 = ashr i64 %49, 2
  %50 = load i64, i64* %limit.addr, align 8
  %shr97 = ashr i64 %50, 2
  %cmp98 = icmp sge i64 %shr96, %shr97
  br i1 %cmp98, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %while.body
  %51 = load i64, i64* %limit.addr, align 8
  store i64 %51, i64* %position.addr, align 8
  br label %while.end

if.end.101:                                       ; preds = %while.body
  %52 = load i64, i64* %position.addr, align 8
  %53 = load i64, i64* %prop.addr, align 8
  %54 = load i64, i64* %object.addr, align 8
  %call102 = call i64 @Fget_char_property(i64 %52, i64 %53, i64 %54)
  store i64 %call102, i64* %value, align 8
  %55 = load i64, i64* %value, align 8
  %56 = load i64, i64* %initial_value, align 8
  %cmp103 = icmp eq i64 %55, %56
  br i1 %cmp103, label %if.end.106, label %if.then.105

if.then.105:                                      ; preds = %if.end.101
  br label %while.end

if.end.106:                                       ; preds = %if.end.101
  br label %while.body

while.end:                                        ; preds = %if.then.105, %if.then.100
  br label %if.end.107

if.end.107:                                       ; preds = %while.end, %if.end.93
  %57 = load i64, i64* %count, align 8
  %call108 = call i64 @builtin_lisp_symbol(i32 0)
  %call109 = call i64 @unbind_to(i64 %57, i64 %call108)
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.107, %if.end.12
  %58 = load i64, i64* %position.addr, align 8
  ret i64 %58
}

declare zeroext i1 @STRINGP(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fnext_single_property_change(i64 %position, i64 %prop, i64 %object, i64 %limit) #0 {
entry:
  %retval = alloca i64, align 8
  %position.addr = alloca i64, align 8
  %prop.addr = alloca i64, align 8
  %object.addr = alloca i64, align 8
  %limit.addr = alloca i64, align 8
  %i = alloca %struct.interval*, align 8
  %next = alloca %struct.interval*, align 8
  %here_val = alloca i64, align 8
  store i64 %position, i64* %position.addr, align 8
  store i64 %prop, i64* %prop.addr, align 8
  store i64 %object, i64* %object.addr, align 8
  store i64 %limit, i64* %limit.addr, align 8
  %0 = load i64, i64* %object.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %2 = bitcast %struct.buffer* %1 to i8*
  %call1 = call i64 @make_lisp_ptr(i8* %2, i32 5)
  store i64 %call1, i64* %object.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* %limit.addr, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp3 = icmp eq i64 %3, %call2
  br i1 %cmp3, label %if.end.20, label %if.then.4

if.then.4:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.4
  %4 = load i64, i64* %limit.addr, align 8
  %and = and i64 %4, 7
  %conv = trunc i64 %and to i32
  %cmp5 = icmp eq i32 %conv, 1
  br i1 %cmp5, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %5 = load i64, i64* %limit.addr, align 8
  %call7 = call i32 @XMISCTYPE(i64 %5)
  %cmp8 = icmp eq i32 %call7, 24236
  br i1 %cmp8, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %land.lhs.true
  %6 = load i64, i64* %limit.addr, align 8
  %call11 = call i64 @marker_position(i64 %6)
  %call12 = call i64 @make_natnum(i64 %call11)
  store i64 %call12, i64* %limit.addr, align 8
  br label %if.end.19

if.else:                                          ; preds = %land.lhs.true, %do.body
  %7 = load i64, i64* %limit.addr, align 8
  %and13 = and i64 %7, 7
  %conv14 = trunc i64 %and13 to i32
  %and15 = and i32 %conv14, -5
  %cmp16 = icmp eq i32 %and15, 2
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %call18 = call i64 @builtin_lisp_symbol(i32 558)
  %8 = load i64, i64* %limit.addr, align 8
  %9 = call i64 @wrong_type_argument(i64 %call18, i64 %8) #4
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %10, %cond.true
  br label %if.end.19

if.end.19:                                        ; preds = %cond.end, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.19
  br label %if.end.20

if.end.20:                                        ; preds = %do.end, %if.end
  %11 = load i64, i64* %object.addr, align 8
  %call21 = call %struct.interval* @validate_interval_range(i64 %11, i64* %position.addr, i64* %position.addr, i1 zeroext false)
  store %struct.interval* %call21, %struct.interval** %i, align 8
  %12 = load %struct.interval*, %struct.interval** %i, align 8
  %tobool = icmp ne %struct.interval* %12, null
  br i1 %tobool, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %if.end.20
  %13 = load i64, i64* %limit.addr, align 8
  store i64 %13, i64* %retval
  br label %return

if.end.23:                                        ; preds = %if.end.20
  %14 = load %struct.interval*, %struct.interval** %i, align 8
  %plist = getelementptr inbounds %struct.interval, %struct.interval* %14, i32 0, i32 6
  %15 = load i64, i64* %plist, align 8
  %16 = load i64, i64* %prop.addr, align 8
  %call24 = call i64 @textget(i64 %15, i64 %16)
  store i64 %call24, i64* %here_val, align 8
  %17 = load %struct.interval*, %struct.interval** %i, align 8
  %call25 = call %struct.interval* @next_interval(%struct.interval* %17)
  store %struct.interval* %call25, %struct.interval** %next, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.23
  %18 = load %struct.interval*, %struct.interval** %next, align 8
  %tobool26 = icmp ne %struct.interval* %18, null
  br i1 %tobool26, label %land.lhs.true.27, label %land.end

land.lhs.true.27:                                 ; preds = %while.cond
  %19 = load i64, i64* %here_val, align 8
  %20 = load %struct.interval*, %struct.interval** %next, align 8
  %plist28 = getelementptr inbounds %struct.interval, %struct.interval* %20, i32 0, i32 6
  %21 = load i64, i64* %plist28, align 8
  %22 = load i64, i64* %prop.addr, align 8
  %call29 = call i64 @textget(i64 %21, i64 %22)
  %cmp30 = icmp eq i64 %19, %call29
  br i1 %cmp30, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.27
  %23 = load i64, i64* %limit.addr, align 8
  %call32 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp33 = icmp eq i64 %23, %call32
  br i1 %cmp33, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %24 = load %struct.interval*, %struct.interval** %next, align 8
  %position35 = getelementptr inbounds %struct.interval, %struct.interval* %24, i32 0, i32 1
  %25 = load i64, i64* %position35, align 8
  %26 = load i64, i64* %limit.addr, align 8
  %shr = ashr i64 %26, 2
  %cmp36 = icmp slt i64 %25, %shr
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %27 = phi i1 [ true, %land.rhs ], [ %cmp36, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %land.lhs.true.27, %while.cond
  %28 = phi i1 [ false, %land.lhs.true.27 ], [ false, %while.cond ], [ %27, %lor.end ]
  br i1 %28, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %29 = load %struct.interval*, %struct.interval** %next, align 8
  %call38 = call %struct.interval* @next_interval(%struct.interval* %29)
  store %struct.interval* %call38, %struct.interval** %next, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %30 = load %struct.interval*, %struct.interval** %next, align 8
  %tobool39 = icmp ne %struct.interval* %30, null
  br i1 %tobool39, label %lor.lhs.false, label %if.then.79

lor.lhs.false:                                    ; preds = %while.end
  %31 = load %struct.interval*, %struct.interval** %next, align 8
  %position40 = getelementptr inbounds %struct.interval, %struct.interval* %31, i32 0, i32 1
  %32 = load i64, i64* %position40, align 8
  %33 = load i64, i64* %limit.addr, align 8
  %and41 = and i64 %33, 7
  %conv42 = trunc i64 %and41 to i32
  %and43 = and i32 %conv42, -5
  %cmp44 = icmp eq i32 %and43, 2
  br i1 %cmp44, label %cond.true.46, label %cond.false.48

cond.true.46:                                     ; preds = %lor.lhs.false
  %34 = load i64, i64* %limit.addr, align 8
  %shr47 = ashr i64 %34, 2
  br label %cond.end.75

cond.false.48:                                    ; preds = %lor.lhs.false
  %35 = load i64, i64* %object.addr, align 8
  %call49 = call zeroext i1 @STRINGP(i64 %35)
  br i1 %call49, label %cond.true.51, label %cond.false.53

cond.true.51:                                     ; preds = %cond.false.48
  %36 = load i64, i64* %object.addr, align 8
  %call52 = call i64 @SCHARS(i64 %36)
  br label %cond.end.73

cond.false.53:                                    ; preds = %cond.false.48
  %37 = load i64, i64* %object.addr, align 8
  %call54 = call %struct.buffer* @XBUFFER(i64 %37)
  %38 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp55 = icmp eq %struct.buffer* %call54, %38
  br i1 %cmp55, label %cond.true.57, label %cond.false.58

cond.true.57:                                     ; preds = %cond.false.53
  %39 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %39, i32 0, i32 79
  %40 = load i64, i64* %zv, align 8
  br label %cond.end.71

cond.false.58:                                    ; preds = %cond.false.53
  %41 = load i64, i64* %object.addr, align 8
  %call59 = call %struct.buffer* @XBUFFER(i64 %41)
  %zv_marker_ = getelementptr inbounds %struct.buffer, %struct.buffer* %call59, i32 0, i32 47
  %42 = load i64, i64* %zv_marker_, align 8
  %call60 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp61 = icmp eq i64 %42, %call60
  br i1 %cmp61, label %cond.true.63, label %cond.false.66

cond.true.63:                                     ; preds = %cond.false.58
  %43 = load i64, i64* %object.addr, align 8
  %call64 = call %struct.buffer* @XBUFFER(i64 %43)
  %zv65 = getelementptr inbounds %struct.buffer, %struct.buffer* %call64, i32 0, i32 79
  %44 = load i64, i64* %zv65, align 8
  br label %cond.end.70

cond.false.66:                                    ; preds = %cond.false.58
  %45 = load i64, i64* %object.addr, align 8
  %call67 = call %struct.buffer* @XBUFFER(i64 %45)
  %zv_marker_68 = getelementptr inbounds %struct.buffer, %struct.buffer* %call67, i32 0, i32 47
  %46 = load i64, i64* %zv_marker_68, align 8
  %call69 = call i64 @marker_position(i64 %46)
  br label %cond.end.70

cond.end.70:                                      ; preds = %cond.false.66, %cond.true.63
  %cond = phi i64 [ %44, %cond.true.63 ], [ %call69, %cond.false.66 ]
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.end.70, %cond.true.57
  %cond72 = phi i64 [ %40, %cond.true.57 ], [ %cond, %cond.end.70 ]
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.end.71, %cond.true.51
  %cond74 = phi i64 [ %call52, %cond.true.51 ], [ %cond72, %cond.end.71 ]
  br label %cond.end.75

cond.end.75:                                      ; preds = %cond.end.73, %cond.true.46
  %cond76 = phi i64 [ %shr47, %cond.true.46 ], [ %cond74, %cond.end.73 ]
  %cmp77 = icmp sge i64 %32, %cond76
  br i1 %cmp77, label %if.then.79, label %if.else.80

if.then.79:                                       ; preds = %cond.end.75, %while.end
  %47 = load i64, i64* %limit.addr, align 8
  store i64 %47, i64* %retval
  br label %return

if.else.80:                                       ; preds = %cond.end.75
  %48 = load %struct.interval*, %struct.interval** %next, align 8
  %position81 = getelementptr inbounds %struct.interval, %struct.interval* %48, i32 0, i32 1
  %49 = load i64, i64* %position81, align 8
  %shl = shl i64 %49, 2
  %add = add i64 %shl, 2
  store i64 %add, i64* %retval
  br label %return

return:                                           ; preds = %if.else.80, %if.then.79, %if.then.22
  %50 = load i64, i64* %retval
  ret i64 %50
}

declare void @CHECK_BUFFER(i64) #1

declare void @record_unwind_current_buffer() #1

declare i64 @Fset_buffer(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fprevious_single_char_property_change(i64 %position, i64 %prop, i64 %object, i64 %limit) #0 {
entry:
  %position.addr = alloca i64, align 8
  %prop.addr = alloca i64, align 8
  %object.addr = alloca i64, align 8
  %limit.addr = alloca i64, align 8
  %count = alloca i64, align 8
  %initial_value = alloca i64, align 8
  %value = alloca i64, align 8
  store i64 %position, i64* %position.addr, align 8
  store i64 %prop, i64* %prop.addr, align 8
  store i64 %object, i64* %object.addr, align 8
  store i64 %limit, i64* %limit.addr, align 8
  %0 = load i64, i64* %object.addr, align 8
  %call = call zeroext i1 @STRINGP(i64 %0)
  br i1 %call, label %if.then, label %if.else.12

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %position.addr, align 8
  %2 = load i64, i64* %prop.addr, align 8
  %3 = load i64, i64* %object.addr, align 8
  %4 = load i64, i64* %limit.addr, align 8
  %call1 = call i64 @Fprevious_single_property_change(i64 %1, i64 %2, i64 %3, i64 %4)
  store i64 %call1, i64* %position.addr, align 8
  %5 = load i64, i64* %position.addr, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %5, %call2
  br i1 %cmp, label %if.then.3, label %if.end.11

if.then.3:                                        ; preds = %if.then
  %6 = load i64, i64* %limit.addr, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp5 = icmp eq i64 %6, %call4
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then.3
  store i64 2, i64* %position.addr, align 8
  br label %if.end

if.else:                                          ; preds = %if.then.3
  %7 = load i64, i64* %limit.addr, align 8
  %and = and i64 %7, 7
  %conv = trunc i64 %and to i32
  %and7 = and i32 %conv, -5
  %cmp8 = icmp eq i32 %and7, 2
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %call10 = call i64 @builtin_lisp_symbol(i32 559)
  %8 = load i64, i64* %limit.addr, align 8
  %9 = call i64 @wrong_type_argument(i64 %call10, i64 %8) #4
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %10, %cond.true
  %11 = load i64, i64* %limit.addr, align 8
  store i64 %11, i64* %position.addr, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then.6
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then
  br label %if.end.115

if.else.12:                                       ; preds = %entry
  %call13 = call i64 @SPECPDL_INDEX()
  store i64 %call13, i64* %count, align 8
  %12 = load i64, i64* %object.addr, align 8
  %call14 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp15 = icmp eq i64 %12, %call14
  br i1 %cmp15, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %if.else.12
  %13 = load i64, i64* %object.addr, align 8
  call void @CHECK_BUFFER(i64 %13)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.else.12
  %14 = load i64, i64* %object.addr, align 8
  %call19 = call zeroext i1 @BUFFERP(i64 %14)
  br i1 %call19, label %land.lhs.true, label %if.end.26

land.lhs.true:                                    ; preds = %if.end.18
  %15 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %16 = load i64, i64* %object.addr, align 8
  %call21 = call %struct.buffer* @XBUFFER(i64 %16)
  %cmp22 = icmp ne %struct.buffer* %15, %call21
  br i1 %cmp22, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %land.lhs.true
  call void @record_unwind_current_buffer()
  %17 = load i64, i64* %object.addr, align 8
  %call25 = call i64 @Fset_buffer(i64 %17)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %land.lhs.true, %if.end.18
  br label %do.body

do.body:                                          ; preds = %if.end.26
  %18 = load i64, i64* %position.addr, align 8
  %and27 = and i64 %18, 7
  %conv28 = trunc i64 %and27 to i32
  %cmp29 = icmp eq i32 %conv28, 1
  br i1 %cmp29, label %land.lhs.true.31, label %if.else.38

land.lhs.true.31:                                 ; preds = %do.body
  %19 = load i64, i64* %position.addr, align 8
  %call32 = call i32 @XMISCTYPE(i64 %19)
  %cmp33 = icmp eq i32 %call32, 24236
  br i1 %cmp33, label %if.then.35, label %if.else.38

if.then.35:                                       ; preds = %land.lhs.true.31
  %20 = load i64, i64* %position.addr, align 8
  %call36 = call i64 @marker_position(i64 %20)
  %call37 = call i64 @make_natnum(i64 %call36)
  store i64 %call37, i64* %position.addr, align 8
  br label %if.end.48

if.else.38:                                       ; preds = %land.lhs.true.31, %do.body
  %21 = load i64, i64* %position.addr, align 8
  %and39 = and i64 %21, 7
  %conv40 = trunc i64 %and39 to i32
  %and41 = and i32 %conv40, -5
  %cmp42 = icmp eq i32 %and41, 2
  br i1 %cmp42, label %cond.true.44, label %cond.false.45

cond.true.44:                                     ; preds = %if.else.38
  br label %cond.end.47

cond.false.45:                                    ; preds = %if.else.38
  %call46 = call i64 @builtin_lisp_symbol(i32 558)
  %22 = load i64, i64* %position.addr, align 8
  %23 = call i64 @wrong_type_argument(i64 %call46, i64 %22) #4
  unreachable
                                                  ; No predecessors!
  br label %cond.end.47

cond.end.47:                                      ; preds = %24, %cond.true.44
  br label %if.end.48

if.end.48:                                        ; preds = %cond.end.47, %if.then.35
  br label %do.end

do.end:                                           ; preds = %if.end.48
  %25 = load i64, i64* %limit.addr, align 8
  %call49 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp50 = icmp eq i64 %25, %call49
  br i1 %cmp50, label %if.then.52, label %if.else.54

if.then.52:                                       ; preds = %do.end
  %26 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %26, i32 0, i32 77
  %27 = load i64, i64* %begv, align 8
  %call53 = call i64 @make_natnum(i64 %27)
  store i64 %call53, i64* %limit.addr, align 8
  br label %if.end.79

if.else.54:                                       ; preds = %do.end
  br label %do.body.55

do.body.55:                                       ; preds = %if.else.54
  %28 = load i64, i64* %limit.addr, align 8
  %and56 = and i64 %28, 7
  %conv57 = trunc i64 %and56 to i32
  %cmp58 = icmp eq i32 %conv57, 1
  br i1 %cmp58, label %land.lhs.true.60, label %if.else.67

land.lhs.true.60:                                 ; preds = %do.body.55
  %29 = load i64, i64* %limit.addr, align 8
  %call61 = call i32 @XMISCTYPE(i64 %29)
  %cmp62 = icmp eq i32 %call61, 24236
  br i1 %cmp62, label %if.then.64, label %if.else.67

if.then.64:                                       ; preds = %land.lhs.true.60
  %30 = load i64, i64* %limit.addr, align 8
  %call65 = call i64 @marker_position(i64 %30)
  %call66 = call i64 @make_natnum(i64 %call65)
  store i64 %call66, i64* %limit.addr, align 8
  br label %if.end.77

if.else.67:                                       ; preds = %land.lhs.true.60, %do.body.55
  %31 = load i64, i64* %limit.addr, align 8
  %and68 = and i64 %31, 7
  %conv69 = trunc i64 %and68 to i32
  %and70 = and i32 %conv69, -5
  %cmp71 = icmp eq i32 %and70, 2
  br i1 %cmp71, label %cond.true.73, label %cond.false.74

cond.true.73:                                     ; preds = %if.else.67
  br label %cond.end.76

cond.false.74:                                    ; preds = %if.else.67
  %call75 = call i64 @builtin_lisp_symbol(i32 558)
  %32 = load i64, i64* %limit.addr, align 8
  %33 = call i64 @wrong_type_argument(i64 %call75, i64 %32) #4
  unreachable
                                                  ; No predecessors!
  br label %cond.end.76

cond.end.76:                                      ; preds = %34, %cond.true.73
  br label %if.end.77

if.end.77:                                        ; preds = %cond.end.76, %if.then.64
  br label %do.end.78

do.end.78:                                        ; preds = %if.end.77
  br label %if.end.79

if.end.79:                                        ; preds = %do.end.78, %if.then.52
  %35 = load i64, i64* %position.addr, align 8
  %shr = ashr i64 %35, 2
  %36 = load i64, i64* %limit.addr, align 8
  %shr80 = ashr i64 %36, 2
  %cmp81 = icmp sle i64 %shr, %shr80
  br i1 %cmp81, label %if.then.83, label %if.else.92

if.then.83:                                       ; preds = %if.end.79
  %37 = load i64, i64* %limit.addr, align 8
  store i64 %37, i64* %position.addr, align 8
  %38 = load i64, i64* %position.addr, align 8
  %shr84 = ashr i64 %38, 2
  %39 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv85 = getelementptr inbounds %struct.buffer, %struct.buffer* %39, i32 0, i32 77
  %40 = load i64, i64* %begv85, align 8
  %cmp86 = icmp slt i64 %shr84, %40
  br i1 %cmp86, label %if.then.88, label %if.end.91

if.then.88:                                       ; preds = %if.then.83
  %41 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv89 = getelementptr inbounds %struct.buffer, %struct.buffer* %41, i32 0, i32 77
  %42 = load i64, i64* %begv89, align 8
  %call90 = call i64 @make_natnum(i64 %42)
  store i64 %call90, i64* %position.addr, align 8
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.88, %if.then.83
  br label %if.end.112

if.else.92:                                       ; preds = %if.end.79
  %43 = load i64, i64* %position.addr, align 8
  %shr93 = ashr i64 %43, 2
  %sub = sub nsw i64 %shr93, 1
  %shl = shl i64 %sub, 2
  %add = add i64 %shl, 2
  %44 = load i64, i64* %prop.addr, align 8
  %45 = load i64, i64* %object.addr, align 8
  %call94 = call i64 @Fget_char_property(i64 %add, i64 %44, i64 %45)
  store i64 %call94, i64* %initial_value, align 8
  br label %while.body

while.body:                                       ; preds = %if.else.92, %if.end.111
  %46 = load i64, i64* %position.addr, align 8
  %47 = load i64, i64* %limit.addr, align 8
  %call95 = call i64 @Fprevious_char_property_change(i64 %46, i64 %47)
  store i64 %call95, i64* %position.addr, align 8
  %48 = load i64, i64* %position.addr, align 8
  %shr96 = ashr i64 %48, 2
  %49 = load i64, i64* %limit.addr, align 8
  %shr97 = ashr i64 %49, 2
  %cmp98 = icmp sle i64 %shr96, %shr97
  br i1 %cmp98, label %if.then.100, label %if.else.101

if.then.100:                                      ; preds = %while.body
  %50 = load i64, i64* %limit.addr, align 8
  store i64 %50, i64* %position.addr, align 8
  br label %while.end

if.else.101:                                      ; preds = %while.body
  %51 = load i64, i64* %position.addr, align 8
  %shr102 = ashr i64 %51, 2
  %sub103 = sub nsw i64 %shr102, 1
  %shl104 = shl i64 %sub103, 2
  %add105 = add i64 %shl104, 2
  %52 = load i64, i64* %prop.addr, align 8
  %53 = load i64, i64* %object.addr, align 8
  %call106 = call i64 @Fget_char_property(i64 %add105, i64 %52, i64 %53)
  store i64 %call106, i64* %value, align 8
  %54 = load i64, i64* %value, align 8
  %55 = load i64, i64* %initial_value, align 8
  %cmp107 = icmp eq i64 %54, %55
  br i1 %cmp107, label %if.end.110, label %if.then.109

if.then.109:                                      ; preds = %if.else.101
  br label %while.end

if.end.110:                                       ; preds = %if.else.101
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110
  br label %while.body

while.end:                                        ; preds = %if.then.109, %if.then.100
  br label %if.end.112

if.end.112:                                       ; preds = %while.end, %if.end.91
  %56 = load i64, i64* %count, align 8
  %call113 = call i64 @builtin_lisp_symbol(i32 0)
  %call114 = call i64 @unbind_to(i64 %56, i64 %call113)
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.112, %if.end.11
  %57 = load i64, i64* %position.addr, align 8
  ret i64 %57
}

; Function Attrs: nounwind uwtable
define i64 @Fprevious_single_property_change(i64 %position, i64 %prop, i64 %object, i64 %limit) #0 {
entry:
  %retval = alloca i64, align 8
  %position.addr = alloca i64, align 8
  %prop.addr = alloca i64, align 8
  %object.addr = alloca i64, align 8
  %limit.addr = alloca i64, align 8
  %i = alloca %struct.interval*, align 8
  %previous = alloca %struct.interval*, align 8
  %here_val = alloca i64, align 8
  store i64 %position, i64* %position.addr, align 8
  store i64 %prop, i64* %prop.addr, align 8
  store i64 %object, i64* %object.addr, align 8
  store i64 %limit, i64* %limit.addr, align 8
  %0 = load i64, i64* %object.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %2 = bitcast %struct.buffer* %1 to i8*
  %call1 = call i64 @make_lisp_ptr(i8* %2, i32 5)
  store i64 %call1, i64* %object.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* %limit.addr, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp3 = icmp eq i64 %3, %call2
  br i1 %cmp3, label %if.end.20, label %if.then.4

if.then.4:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.4
  %4 = load i64, i64* %limit.addr, align 8
  %and = and i64 %4, 7
  %conv = trunc i64 %and to i32
  %cmp5 = icmp eq i32 %conv, 1
  br i1 %cmp5, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %5 = load i64, i64* %limit.addr, align 8
  %call7 = call i32 @XMISCTYPE(i64 %5)
  %cmp8 = icmp eq i32 %call7, 24236
  br i1 %cmp8, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %land.lhs.true
  %6 = load i64, i64* %limit.addr, align 8
  %call11 = call i64 @marker_position(i64 %6)
  %call12 = call i64 @make_natnum(i64 %call11)
  store i64 %call12, i64* %limit.addr, align 8
  br label %if.end.19

if.else:                                          ; preds = %land.lhs.true, %do.body
  %7 = load i64, i64* %limit.addr, align 8
  %and13 = and i64 %7, 7
  %conv14 = trunc i64 %and13 to i32
  %and15 = and i32 %conv14, -5
  %cmp16 = icmp eq i32 %and15, 2
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %call18 = call i64 @builtin_lisp_symbol(i32 558)
  %8 = load i64, i64* %limit.addr, align 8
  %9 = call i64 @wrong_type_argument(i64 %call18, i64 %8) #4
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %10, %cond.true
  br label %if.end.19

if.end.19:                                        ; preds = %cond.end, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.19
  br label %if.end.20

if.end.20:                                        ; preds = %do.end, %if.end
  %11 = load i64, i64* %object.addr, align 8
  %call21 = call %struct.interval* @validate_interval_range(i64 %11, i64* %position.addr, i64* %position.addr, i1 zeroext false)
  store %struct.interval* %call21, %struct.interval** %i, align 8
  %12 = load %struct.interval*, %struct.interval** %i, align 8
  %tobool = icmp ne %struct.interval* %12, null
  br i1 %tobool, label %land.lhs.true.22, label %if.end.28

land.lhs.true.22:                                 ; preds = %if.end.20
  %13 = load %struct.interval*, %struct.interval** %i, align 8
  %position23 = getelementptr inbounds %struct.interval, %struct.interval* %13, i32 0, i32 1
  %14 = load i64, i64* %position23, align 8
  %15 = load i64, i64* %position.addr, align 8
  %shr = ashr i64 %15, 2
  %cmp24 = icmp eq i64 %14, %shr
  br i1 %cmp24, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %land.lhs.true.22
  %16 = load %struct.interval*, %struct.interval** %i, align 8
  %call27 = call %struct.interval* @previous_interval(%struct.interval* %16)
  store %struct.interval* %call27, %struct.interval** %i, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %land.lhs.true.22, %if.end.20
  %17 = load %struct.interval*, %struct.interval** %i, align 8
  %tobool29 = icmp ne %struct.interval* %17, null
  br i1 %tobool29, label %if.end.31, label %if.then.30

if.then.30:                                       ; preds = %if.end.28
  %18 = load i64, i64* %limit.addr, align 8
  store i64 %18, i64* %retval
  br label %return

if.end.31:                                        ; preds = %if.end.28
  %19 = load %struct.interval*, %struct.interval** %i, align 8
  %plist = getelementptr inbounds %struct.interval, %struct.interval* %19, i32 0, i32 6
  %20 = load i64, i64* %plist, align 8
  %21 = load i64, i64* %prop.addr, align 8
  %call32 = call i64 @textget(i64 %20, i64 %21)
  store i64 %call32, i64* %here_val, align 8
  %22 = load %struct.interval*, %struct.interval** %i, align 8
  %call33 = call %struct.interval* @previous_interval(%struct.interval* %22)
  store %struct.interval* %call33, %struct.interval** %previous, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.31
  %23 = load %struct.interval*, %struct.interval** %previous, align 8
  %tobool34 = icmp ne %struct.interval* %23, null
  br i1 %tobool34, label %land.lhs.true.35, label %land.end

land.lhs.true.35:                                 ; preds = %while.cond
  %24 = load i64, i64* %here_val, align 8
  %25 = load %struct.interval*, %struct.interval** %previous, align 8
  %plist36 = getelementptr inbounds %struct.interval, %struct.interval* %25, i32 0, i32 6
  %26 = load i64, i64* %plist36, align 8
  %27 = load i64, i64* %prop.addr, align 8
  %call37 = call i64 @textget(i64 %26, i64 %27)
  %cmp38 = icmp eq i64 %24, %call37
  br i1 %cmp38, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.35
  %28 = load i64, i64* %limit.addr, align 8
  %call40 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp41 = icmp eq i64 %28, %call40
  br i1 %cmp41, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %29 = load %struct.interval*, %struct.interval** %previous, align 8
  %position43 = getelementptr inbounds %struct.interval, %struct.interval* %29, i32 0, i32 1
  %30 = load i64, i64* %position43, align 8
  %31 = load %struct.interval*, %struct.interval** %previous, align 8
  %cmp44 = icmp eq %struct.interval* %31, null
  br i1 %cmp44, label %cond.true.46, label %cond.false.47

cond.true.46:                                     ; preds = %lor.rhs
  br label %cond.end.70

cond.false.47:                                    ; preds = %lor.rhs
  %32 = load %struct.interval*, %struct.interval** %previous, align 8
  %cmp48 = icmp eq %struct.interval* %32, null
  br i1 %cmp48, label %cond.true.50, label %cond.false.51

cond.true.50:                                     ; preds = %cond.false.47
  br label %cond.end.52

cond.false.51:                                    ; preds = %cond.false.47
  %33 = load %struct.interval*, %struct.interval** %previous, align 8
  %total_length = getelementptr inbounds %struct.interval, %struct.interval* %33, i32 0, i32 0
  %34 = load i64, i64* %total_length, align 8
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.51, %cond.true.50
  %cond = phi i64 [ 0, %cond.true.50 ], [ %34, %cond.false.51 ]
  %35 = load %struct.interval*, %struct.interval** %previous, align 8
  %right = getelementptr inbounds %struct.interval, %struct.interval* %35, i32 0, i32 3
  %36 = load %struct.interval*, %struct.interval** %right, align 8
  %cmp53 = icmp eq %struct.interval* %36, null
  br i1 %cmp53, label %cond.true.55, label %cond.false.56

cond.true.55:                                     ; preds = %cond.end.52
  br label %cond.end.59

cond.false.56:                                    ; preds = %cond.end.52
  %37 = load %struct.interval*, %struct.interval** %previous, align 8
  %right57 = getelementptr inbounds %struct.interval, %struct.interval* %37, i32 0, i32 3
  %38 = load %struct.interval*, %struct.interval** %right57, align 8
  %total_length58 = getelementptr inbounds %struct.interval, %struct.interval* %38, i32 0, i32 0
  %39 = load i64, i64* %total_length58, align 8
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.false.56, %cond.true.55
  %cond60 = phi i64 [ 0, %cond.true.55 ], [ %39, %cond.false.56 ]
  %sub = sub nsw i64 %cond, %cond60
  %40 = load %struct.interval*, %struct.interval** %previous, align 8
  %left = getelementptr inbounds %struct.interval, %struct.interval* %40, i32 0, i32 2
  %41 = load %struct.interval*, %struct.interval** %left, align 8
  %cmp61 = icmp eq %struct.interval* %41, null
  br i1 %cmp61, label %cond.true.63, label %cond.false.64

cond.true.63:                                     ; preds = %cond.end.59
  br label %cond.end.67

cond.false.64:                                    ; preds = %cond.end.59
  %42 = load %struct.interval*, %struct.interval** %previous, align 8
  %left65 = getelementptr inbounds %struct.interval, %struct.interval* %42, i32 0, i32 2
  %43 = load %struct.interval*, %struct.interval** %left65, align 8
  %total_length66 = getelementptr inbounds %struct.interval, %struct.interval* %43, i32 0, i32 0
  %44 = load i64, i64* %total_length66, align 8
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.64, %cond.true.63
  %cond68 = phi i64 [ 0, %cond.true.63 ], [ %44, %cond.false.64 ]
  %sub69 = sub nsw i64 %sub, %cond68
  br label %cond.end.70

cond.end.70:                                      ; preds = %cond.end.67, %cond.true.46
  %cond71 = phi i64 [ 0, %cond.true.46 ], [ %sub69, %cond.end.67 ]
  %add = add nsw i64 %30, %cond71
  %45 = load i64, i64* %limit.addr, align 8
  %shr72 = ashr i64 %45, 2
  %cmp73 = icmp sgt i64 %add, %shr72
  br label %lor.end

lor.end:                                          ; preds = %cond.end.70, %land.rhs
  %46 = phi i1 [ true, %land.rhs ], [ %cmp73, %cond.end.70 ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %land.lhs.true.35, %while.cond
  %47 = phi i1 [ false, %land.lhs.true.35 ], [ false, %while.cond ], [ %46, %lor.end ]
  br i1 %47, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %48 = load %struct.interval*, %struct.interval** %previous, align 8
  %call75 = call %struct.interval* @previous_interval(%struct.interval* %48)
  store %struct.interval* %call75, %struct.interval** %previous, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %49 = load %struct.interval*, %struct.interval** %previous, align 8
  %tobool76 = icmp ne %struct.interval* %49, null
  br i1 %tobool76, label %lor.lhs.false, label %if.then.150

lor.lhs.false:                                    ; preds = %while.end
  %50 = load %struct.interval*, %struct.interval** %previous, align 8
  %position77 = getelementptr inbounds %struct.interval, %struct.interval* %50, i32 0, i32 1
  %51 = load i64, i64* %position77, align 8
  %52 = load %struct.interval*, %struct.interval** %previous, align 8
  %cmp78 = icmp eq %struct.interval* %52, null
  br i1 %cmp78, label %cond.true.80, label %cond.false.81

cond.true.80:                                     ; preds = %lor.lhs.false
  br label %cond.end.109

cond.false.81:                                    ; preds = %lor.lhs.false
  %53 = load %struct.interval*, %struct.interval** %previous, align 8
  %cmp82 = icmp eq %struct.interval* %53, null
  br i1 %cmp82, label %cond.true.84, label %cond.false.85

cond.true.84:                                     ; preds = %cond.false.81
  br label %cond.end.87

cond.false.85:                                    ; preds = %cond.false.81
  %54 = load %struct.interval*, %struct.interval** %previous, align 8
  %total_length86 = getelementptr inbounds %struct.interval, %struct.interval* %54, i32 0, i32 0
  %55 = load i64, i64* %total_length86, align 8
  br label %cond.end.87

cond.end.87:                                      ; preds = %cond.false.85, %cond.true.84
  %cond88 = phi i64 [ 0, %cond.true.84 ], [ %55, %cond.false.85 ]
  %56 = load %struct.interval*, %struct.interval** %previous, align 8
  %right89 = getelementptr inbounds %struct.interval, %struct.interval* %56, i32 0, i32 3
  %57 = load %struct.interval*, %struct.interval** %right89, align 8
  %cmp90 = icmp eq %struct.interval* %57, null
  br i1 %cmp90, label %cond.true.92, label %cond.false.93

cond.true.92:                                     ; preds = %cond.end.87
  br label %cond.end.96

cond.false.93:                                    ; preds = %cond.end.87
  %58 = load %struct.interval*, %struct.interval** %previous, align 8
  %right94 = getelementptr inbounds %struct.interval, %struct.interval* %58, i32 0, i32 3
  %59 = load %struct.interval*, %struct.interval** %right94, align 8
  %total_length95 = getelementptr inbounds %struct.interval, %struct.interval* %59, i32 0, i32 0
  %60 = load i64, i64* %total_length95, align 8
  br label %cond.end.96

cond.end.96:                                      ; preds = %cond.false.93, %cond.true.92
  %cond97 = phi i64 [ 0, %cond.true.92 ], [ %60, %cond.false.93 ]
  %sub98 = sub nsw i64 %cond88, %cond97
  %61 = load %struct.interval*, %struct.interval** %previous, align 8
  %left99 = getelementptr inbounds %struct.interval, %struct.interval* %61, i32 0, i32 2
  %62 = load %struct.interval*, %struct.interval** %left99, align 8
  %cmp100 = icmp eq %struct.interval* %62, null
  br i1 %cmp100, label %cond.true.102, label %cond.false.103

cond.true.102:                                    ; preds = %cond.end.96
  br label %cond.end.106

cond.false.103:                                   ; preds = %cond.end.96
  %63 = load %struct.interval*, %struct.interval** %previous, align 8
  %left104 = getelementptr inbounds %struct.interval, %struct.interval* %63, i32 0, i32 2
  %64 = load %struct.interval*, %struct.interval** %left104, align 8
  %total_length105 = getelementptr inbounds %struct.interval, %struct.interval* %64, i32 0, i32 0
  %65 = load i64, i64* %total_length105, align 8
  br label %cond.end.106

cond.end.106:                                     ; preds = %cond.false.103, %cond.true.102
  %cond107 = phi i64 [ 0, %cond.true.102 ], [ %65, %cond.false.103 ]
  %sub108 = sub nsw i64 %sub98, %cond107
  br label %cond.end.109

cond.end.109:                                     ; preds = %cond.end.106, %cond.true.80
  %cond110 = phi i64 [ 0, %cond.true.80 ], [ %sub108, %cond.end.106 ]
  %add111 = add nsw i64 %51, %cond110
  %66 = load i64, i64* %limit.addr, align 8
  %and112 = and i64 %66, 7
  %conv113 = trunc i64 %and112 to i32
  %and114 = and i32 %conv113, -5
  %cmp115 = icmp eq i32 %and114, 2
  br i1 %cmp115, label %cond.true.117, label %cond.false.119

cond.true.117:                                    ; preds = %cond.end.109
  %67 = load i64, i64* %limit.addr, align 8
  %shr118 = ashr i64 %67, 2
  br label %cond.end.146

cond.false.119:                                   ; preds = %cond.end.109
  %68 = load i64, i64* %object.addr, align 8
  %call120 = call zeroext i1 @STRINGP(i64 %68)
  br i1 %call120, label %cond.true.122, label %cond.false.123

cond.true.122:                                    ; preds = %cond.false.119
  br label %cond.end.144

cond.false.123:                                   ; preds = %cond.false.119
  %69 = load i64, i64* %object.addr, align 8
  %call124 = call %struct.buffer* @XBUFFER(i64 %69)
  %70 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp125 = icmp eq %struct.buffer* %call124, %70
  br i1 %cmp125, label %cond.true.127, label %cond.false.128

cond.true.127:                                    ; preds = %cond.false.123
  %71 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %71, i32 0, i32 77
  %72 = load i64, i64* %begv, align 8
  br label %cond.end.142

cond.false.128:                                   ; preds = %cond.false.123
  %73 = load i64, i64* %object.addr, align 8
  %call129 = call %struct.buffer* @XBUFFER(i64 %73)
  %begv_marker_ = getelementptr inbounds %struct.buffer, %struct.buffer* %call129, i32 0, i32 46
  %74 = load i64, i64* %begv_marker_, align 8
  %call130 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp131 = icmp eq i64 %74, %call130
  br i1 %cmp131, label %cond.true.133, label %cond.false.136

cond.true.133:                                    ; preds = %cond.false.128
  %75 = load i64, i64* %object.addr, align 8
  %call134 = call %struct.buffer* @XBUFFER(i64 %75)
  %begv135 = getelementptr inbounds %struct.buffer, %struct.buffer* %call134, i32 0, i32 77
  %76 = load i64, i64* %begv135, align 8
  br label %cond.end.140

cond.false.136:                                   ; preds = %cond.false.128
  %77 = load i64, i64* %object.addr, align 8
  %call137 = call %struct.buffer* @XBUFFER(i64 %77)
  %begv_marker_138 = getelementptr inbounds %struct.buffer, %struct.buffer* %call137, i32 0, i32 46
  %78 = load i64, i64* %begv_marker_138, align 8
  %call139 = call i64 @marker_position(i64 %78)
  br label %cond.end.140

cond.end.140:                                     ; preds = %cond.false.136, %cond.true.133
  %cond141 = phi i64 [ %76, %cond.true.133 ], [ %call139, %cond.false.136 ]
  br label %cond.end.142

cond.end.142:                                     ; preds = %cond.end.140, %cond.true.127
  %cond143 = phi i64 [ %72, %cond.true.127 ], [ %cond141, %cond.end.140 ]
  br label %cond.end.144

cond.end.144:                                     ; preds = %cond.end.142, %cond.true.122
  %cond145 = phi i64 [ 0, %cond.true.122 ], [ %cond143, %cond.end.142 ]
  br label %cond.end.146

cond.end.146:                                     ; preds = %cond.end.144, %cond.true.117
  %cond147 = phi i64 [ %shr118, %cond.true.117 ], [ %cond145, %cond.end.144 ]
  %cmp148 = icmp sle i64 %add111, %cond147
  br i1 %cmp148, label %if.then.150, label %if.else.151

if.then.150:                                      ; preds = %cond.end.146, %while.end
  %79 = load i64, i64* %limit.addr, align 8
  store i64 %79, i64* %retval
  br label %return

if.else.151:                                      ; preds = %cond.end.146
  %80 = load %struct.interval*, %struct.interval** %previous, align 8
  %position152 = getelementptr inbounds %struct.interval, %struct.interval* %80, i32 0, i32 1
  %81 = load i64, i64* %position152, align 8
  %82 = load %struct.interval*, %struct.interval** %previous, align 8
  %cmp153 = icmp eq %struct.interval* %82, null
  br i1 %cmp153, label %cond.true.155, label %cond.false.156

cond.true.155:                                    ; preds = %if.else.151
  br label %cond.end.184

cond.false.156:                                   ; preds = %if.else.151
  %83 = load %struct.interval*, %struct.interval** %previous, align 8
  %cmp157 = icmp eq %struct.interval* %83, null
  br i1 %cmp157, label %cond.true.159, label %cond.false.160

cond.true.159:                                    ; preds = %cond.false.156
  br label %cond.end.162

cond.false.160:                                   ; preds = %cond.false.156
  %84 = load %struct.interval*, %struct.interval** %previous, align 8
  %total_length161 = getelementptr inbounds %struct.interval, %struct.interval* %84, i32 0, i32 0
  %85 = load i64, i64* %total_length161, align 8
  br label %cond.end.162

cond.end.162:                                     ; preds = %cond.false.160, %cond.true.159
  %cond163 = phi i64 [ 0, %cond.true.159 ], [ %85, %cond.false.160 ]
  %86 = load %struct.interval*, %struct.interval** %previous, align 8
  %right164 = getelementptr inbounds %struct.interval, %struct.interval* %86, i32 0, i32 3
  %87 = load %struct.interval*, %struct.interval** %right164, align 8
  %cmp165 = icmp eq %struct.interval* %87, null
  br i1 %cmp165, label %cond.true.167, label %cond.false.168

cond.true.167:                                    ; preds = %cond.end.162
  br label %cond.end.171

cond.false.168:                                   ; preds = %cond.end.162
  %88 = load %struct.interval*, %struct.interval** %previous, align 8
  %right169 = getelementptr inbounds %struct.interval, %struct.interval* %88, i32 0, i32 3
  %89 = load %struct.interval*, %struct.interval** %right169, align 8
  %total_length170 = getelementptr inbounds %struct.interval, %struct.interval* %89, i32 0, i32 0
  %90 = load i64, i64* %total_length170, align 8
  br label %cond.end.171

cond.end.171:                                     ; preds = %cond.false.168, %cond.true.167
  %cond172 = phi i64 [ 0, %cond.true.167 ], [ %90, %cond.false.168 ]
  %sub173 = sub nsw i64 %cond163, %cond172
  %91 = load %struct.interval*, %struct.interval** %previous, align 8
  %left174 = getelementptr inbounds %struct.interval, %struct.interval* %91, i32 0, i32 2
  %92 = load %struct.interval*, %struct.interval** %left174, align 8
  %cmp175 = icmp eq %struct.interval* %92, null
  br i1 %cmp175, label %cond.true.177, label %cond.false.178

cond.true.177:                                    ; preds = %cond.end.171
  br label %cond.end.181

cond.false.178:                                   ; preds = %cond.end.171
  %93 = load %struct.interval*, %struct.interval** %previous, align 8
  %left179 = getelementptr inbounds %struct.interval, %struct.interval* %93, i32 0, i32 2
  %94 = load %struct.interval*, %struct.interval** %left179, align 8
  %total_length180 = getelementptr inbounds %struct.interval, %struct.interval* %94, i32 0, i32 0
  %95 = load i64, i64* %total_length180, align 8
  br label %cond.end.181

cond.end.181:                                     ; preds = %cond.false.178, %cond.true.177
  %cond182 = phi i64 [ 0, %cond.true.177 ], [ %95, %cond.false.178 ]
  %sub183 = sub nsw i64 %sub173, %cond182
  br label %cond.end.184

cond.end.184:                                     ; preds = %cond.end.181, %cond.true.155
  %cond185 = phi i64 [ 0, %cond.true.155 ], [ %sub183, %cond.end.181 ]
  %add186 = add nsw i64 %81, %cond185
  %shl = shl i64 %add186, 2
  %add187 = add i64 %shl, 2
  store i64 %add187, i64* %retval
  br label %return

return:                                           ; preds = %cond.end.184, %if.then.150, %if.then.30
  %96 = load i64, i64* %retval
  ret i64 %96
}

declare %struct.interval* @next_interval(%struct.interval*) #1

declare zeroext i1 @intervals_equal(%struct.interval*, %struct.interval*) #1

declare %struct.interval* @previous_interval(%struct.interval*) #1

; Function Attrs: nounwind uwtable
define i64 @Fadd_text_properties(i64 %start, i64 %end, i64 %properties, i64 %object) #0 {
entry:
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %properties.addr = alloca i64, align 8
  %object.addr = alloca i64, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  store i64 %properties, i64* %properties.addr, align 8
  store i64 %object, i64* %object.addr, align 8
  %0 = load i64, i64* %start.addr, align 8
  %1 = load i64, i64* %end.addr, align 8
  %2 = load i64, i64* %properties.addr, align 8
  %3 = load i64, i64* %object.addr, align 8
  %call = call i64 @add_text_properties_1(i64 %0, i64 %1, i64 %2, i64 %3, i32 0)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define internal i64 @add_text_properties_1(i64 %start, i64 %end, i64 %properties, i64 %object, i32 %set_type) #0 {
entry:
  %retval = alloca i64, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %properties.addr = alloca i64, align 8
  %object.addr = alloca i64, align 8
  %set_type.addr = alloca i32, align 4
  %i = alloca %struct.interval*, align 8
  %unchanged = alloca %struct.interval*, align 8
  %s = alloca i64, align 8
  %len = alloca i64, align 8
  %modified = alloca i8, align 1
  %first_time = alloca i8, align 1
  %got = alloca i64, align 8
  %prev_total_length = alloca i64, align 8
  %prev_pos = alloca i64, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  store i64 %properties, i64* %properties.addr, align 8
  store i64 %object, i64* %object.addr, align 8
  store i32 %set_type, i32* %set_type.addr, align 4
  store i8 0, i8* %modified, align 1
  store i8 1, i8* %first_time, align 1
  %0 = load i64, i64* %properties.addr, align 8
  %call = call i64 @validate_plist(i64 %0)
  store i64 %call, i64* %properties.addr, align 8
  %1 = load i64, i64* %properties.addr, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %1, %call1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call2, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %object.addr, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp4 = icmp eq i64 %2, %call3
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %3 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %4 = bitcast %struct.buffer* %3 to i8*
  %call6 = call i64 @make_lisp_ptr(i8* %4, i32 5)
  store i64 %call6, i64* %object.addr, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  br label %retry

retry:                                            ; preds = %if.then.102, %if.end.7
  %5 = load i64, i64* %object.addr, align 8
  %call8 = call %struct.interval* @validate_interval_range(i64 %5, i64* %start.addr, i64* %end.addr, i1 zeroext true)
  store %struct.interval* %call8, %struct.interval** %i, align 8
  %6 = load %struct.interval*, %struct.interval** %i, align 8
  %tobool = icmp ne %struct.interval* %6, null
  br i1 %tobool, label %if.end.11, label %if.then.9

if.then.9:                                        ; preds = %retry
  %call10 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call10, i64* %retval
  br label %return

if.end.11:                                        ; preds = %retry
  %7 = load i64, i64* %start.addr, align 8
  %shr = ashr i64 %7, 2
  store i64 %shr, i64* %s, align 8
  %8 = load i64, i64* %end.addr, align 8
  %shr12 = ashr i64 %8, 2
  %9 = load i64, i64* %s, align 8
  %sub = sub nsw i64 %shr12, %9
  store i64 %sub, i64* %len, align 8
  %10 = load i64, i64* %properties.addr, align 8
  %11 = load %struct.interval*, %struct.interval** %i, align 8
  %call13 = call zeroext i1 @interval_has_all_properties(i64 %10, %struct.interval* %11)
  br i1 %call13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.end.11
  %12 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp15 = icmp eq %struct.interval* %12, null
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.14
  br label %cond.end.35

cond.false:                                       ; preds = %if.then.14
  %13 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp16 = icmp eq %struct.interval* %13, null
  br i1 %cmp16, label %cond.true.17, label %cond.false.18

cond.true.17:                                     ; preds = %cond.false
  br label %cond.end

cond.false.18:                                    ; preds = %cond.false
  %14 = load %struct.interval*, %struct.interval** %i, align 8
  %total_length = getelementptr inbounds %struct.interval, %struct.interval* %14, i32 0, i32 0
  %15 = load i64, i64* %total_length, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.18, %cond.true.17
  %cond = phi i64 [ 0, %cond.true.17 ], [ %15, %cond.false.18 ]
  %16 = load %struct.interval*, %struct.interval** %i, align 8
  %right = getelementptr inbounds %struct.interval, %struct.interval* %16, i32 0, i32 3
  %17 = load %struct.interval*, %struct.interval** %right, align 8
  %cmp19 = icmp eq %struct.interval* %17, null
  br i1 %cmp19, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %cond.end
  br label %cond.end.24

cond.false.21:                                    ; preds = %cond.end
  %18 = load %struct.interval*, %struct.interval** %i, align 8
  %right22 = getelementptr inbounds %struct.interval, %struct.interval* %18, i32 0, i32 3
  %19 = load %struct.interval*, %struct.interval** %right22, align 8
  %total_length23 = getelementptr inbounds %struct.interval, %struct.interval* %19, i32 0, i32 0
  %20 = load i64, i64* %total_length23, align 8
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.21, %cond.true.20
  %cond25 = phi i64 [ 0, %cond.true.20 ], [ %20, %cond.false.21 ]
  %sub26 = sub nsw i64 %cond, %cond25
  %21 = load %struct.interval*, %struct.interval** %i, align 8
  %left = getelementptr inbounds %struct.interval, %struct.interval* %21, i32 0, i32 2
  %22 = load %struct.interval*, %struct.interval** %left, align 8
  %cmp27 = icmp eq %struct.interval* %22, null
  br i1 %cmp27, label %cond.true.28, label %cond.false.29

cond.true.28:                                     ; preds = %cond.end.24
  br label %cond.end.32

cond.false.29:                                    ; preds = %cond.end.24
  %23 = load %struct.interval*, %struct.interval** %i, align 8
  %left30 = getelementptr inbounds %struct.interval, %struct.interval* %23, i32 0, i32 2
  %24 = load %struct.interval*, %struct.interval** %left30, align 8
  %total_length31 = getelementptr inbounds %struct.interval, %struct.interval* %24, i32 0, i32 0
  %25 = load i64, i64* %total_length31, align 8
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.29, %cond.true.28
  %cond33 = phi i64 [ 0, %cond.true.28 ], [ %25, %cond.false.29 ]
  %sub34 = sub nsw i64 %sub26, %cond33
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.end.32, %cond.true
  %cond36 = phi i64 [ 0, %cond.true ], [ %sub34, %cond.end.32 ]
  %26 = load i64, i64* %s, align 8
  %27 = load %struct.interval*, %struct.interval** %i, align 8
  %position = getelementptr inbounds %struct.interval, %struct.interval* %27, i32 0, i32 1
  %28 = load i64, i64* %position, align 8
  %sub37 = sub nsw i64 %26, %28
  %sub38 = sub nsw i64 %cond36, %sub37
  store i64 %sub38, i64* %got, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %cond.end.35
  %29 = load i64, i64* %got, align 8
  %30 = load i64, i64* %len, align 8
  %cmp39 = icmp sge i64 %29, %30
  br i1 %cmp39, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %do.body
  %call41 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call41, i64* %retval
  br label %return

if.end.42:                                        ; preds = %do.body
  %31 = load i64, i64* %got, align 8
  %32 = load i64, i64* %len, align 8
  %sub43 = sub nsw i64 %32, %31
  store i64 %sub43, i64* %len, align 8
  %33 = load %struct.interval*, %struct.interval** %i, align 8
  %call44 = call %struct.interval* @next_interval(%struct.interval* %33)
  store %struct.interval* %call44, %struct.interval** %i, align 8
  %34 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp45 = icmp eq %struct.interval* %34, null
  br i1 %cmp45, label %cond.true.46, label %cond.false.47

cond.true.46:                                     ; preds = %if.end.42
  br label %cond.end.72

cond.false.47:                                    ; preds = %if.end.42
  %35 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp48 = icmp eq %struct.interval* %35, null
  br i1 %cmp48, label %cond.true.49, label %cond.false.50

cond.true.49:                                     ; preds = %cond.false.47
  br label %cond.end.52

cond.false.50:                                    ; preds = %cond.false.47
  %36 = load %struct.interval*, %struct.interval** %i, align 8
  %total_length51 = getelementptr inbounds %struct.interval, %struct.interval* %36, i32 0, i32 0
  %37 = load i64, i64* %total_length51, align 8
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.50, %cond.true.49
  %cond53 = phi i64 [ 0, %cond.true.49 ], [ %37, %cond.false.50 ]
  %38 = load %struct.interval*, %struct.interval** %i, align 8
  %right54 = getelementptr inbounds %struct.interval, %struct.interval* %38, i32 0, i32 3
  %39 = load %struct.interval*, %struct.interval** %right54, align 8
  %cmp55 = icmp eq %struct.interval* %39, null
  br i1 %cmp55, label %cond.true.56, label %cond.false.57

cond.true.56:                                     ; preds = %cond.end.52
  br label %cond.end.60

cond.false.57:                                    ; preds = %cond.end.52
  %40 = load %struct.interval*, %struct.interval** %i, align 8
  %right58 = getelementptr inbounds %struct.interval, %struct.interval* %40, i32 0, i32 3
  %41 = load %struct.interval*, %struct.interval** %right58, align 8
  %total_length59 = getelementptr inbounds %struct.interval, %struct.interval* %41, i32 0, i32 0
  %42 = load i64, i64* %total_length59, align 8
  br label %cond.end.60

cond.end.60:                                      ; preds = %cond.false.57, %cond.true.56
  %cond61 = phi i64 [ 0, %cond.true.56 ], [ %42, %cond.false.57 ]
  %sub62 = sub nsw i64 %cond53, %cond61
  %43 = load %struct.interval*, %struct.interval** %i, align 8
  %left63 = getelementptr inbounds %struct.interval, %struct.interval* %43, i32 0, i32 2
  %44 = load %struct.interval*, %struct.interval** %left63, align 8
  %cmp64 = icmp eq %struct.interval* %44, null
  br i1 %cmp64, label %cond.true.65, label %cond.false.66

cond.true.65:                                     ; preds = %cond.end.60
  br label %cond.end.69

cond.false.66:                                    ; preds = %cond.end.60
  %45 = load %struct.interval*, %struct.interval** %i, align 8
  %left67 = getelementptr inbounds %struct.interval, %struct.interval* %45, i32 0, i32 2
  %46 = load %struct.interval*, %struct.interval** %left67, align 8
  %total_length68 = getelementptr inbounds %struct.interval, %struct.interval* %46, i32 0, i32 0
  %47 = load i64, i64* %total_length68, align 8
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.false.66, %cond.true.65
  %cond70 = phi i64 [ 0, %cond.true.65 ], [ %47, %cond.false.66 ]
  %sub71 = sub nsw i64 %sub62, %cond70
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.end.69, %cond.true.46
  %cond73 = phi i64 [ 0, %cond.true.46 ], [ %sub71, %cond.end.69 ]
  store i64 %cond73, i64* %got, align 8
  br label %do.cond

do.cond:                                          ; preds = %cond.end.72
  %48 = load i64, i64* %properties.addr, align 8
  %49 = load %struct.interval*, %struct.interval** %i, align 8
  %call74 = call zeroext i1 @interval_has_all_properties(i64 %48, %struct.interval* %49)
  br i1 %call74, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.82

if.else:                                          ; preds = %if.end.11
  %50 = load %struct.interval*, %struct.interval** %i, align 8
  %position75 = getelementptr inbounds %struct.interval, %struct.interval* %50, i32 0, i32 1
  %51 = load i64, i64* %position75, align 8
  %52 = load i64, i64* %s, align 8
  %cmp76 = icmp ne i64 %51, %52
  br i1 %cmp76, label %if.then.77, label %if.end.81

if.then.77:                                       ; preds = %if.else
  %53 = load %struct.interval*, %struct.interval** %i, align 8
  store %struct.interval* %53, %struct.interval** %unchanged, align 8
  %54 = load %struct.interval*, %struct.interval** %unchanged, align 8
  %55 = load i64, i64* %s, align 8
  %56 = load %struct.interval*, %struct.interval** %unchanged, align 8
  %position78 = getelementptr inbounds %struct.interval, %struct.interval* %56, i32 0, i32 1
  %57 = load i64, i64* %position78, align 8
  %sub79 = sub nsw i64 %55, %57
  %call80 = call %struct.interval* @split_interval_right(%struct.interval* %54, i64 %sub79)
  store %struct.interval* %call80, %struct.interval** %i, align 8
  %58 = load %struct.interval*, %struct.interval** %unchanged, align 8
  %59 = load %struct.interval*, %struct.interval** %i, align 8
  call void @copy_properties(%struct.interval* %58, %struct.interval* %59)
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.77, %if.else
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %do.end
  %60 = load i64, i64* %object.addr, align 8
  %call83 = call zeroext i1 @BUFFERP(i64 %60)
  br i1 %call83, label %land.lhs.true, label %if.end.104

land.lhs.true:                                    ; preds = %if.end.82
  %61 = load i8, i8* %first_time, align 1
  %tobool84 = trunc i8 %61 to i1
  br i1 %tobool84, label %if.then.85, label %if.end.104

if.then.85:                                       ; preds = %land.lhs.true
  %62 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp86 = icmp eq %struct.interval* %62, null
  br i1 %cmp86, label %cond.true.87, label %cond.false.88

cond.true.87:                                     ; preds = %if.then.85
  br label %cond.end.90

cond.false.88:                                    ; preds = %if.then.85
  %63 = load %struct.interval*, %struct.interval** %i, align 8
  %total_length89 = getelementptr inbounds %struct.interval, %struct.interval* %63, i32 0, i32 0
  %64 = load i64, i64* %total_length89, align 8
  br label %cond.end.90

cond.end.90:                                      ; preds = %cond.false.88, %cond.true.87
  %cond91 = phi i64 [ 0, %cond.true.87 ], [ %64, %cond.false.88 ]
  store i64 %cond91, i64* %prev_total_length, align 8
  %65 = load %struct.interval*, %struct.interval** %i, align 8
  %position92 = getelementptr inbounds %struct.interval, %struct.interval* %65, i32 0, i32 1
  %66 = load i64, i64* %position92, align 8
  store i64 %66, i64* %prev_pos, align 8
  %67 = load i64, i64* %object.addr, align 8
  %68 = load i64, i64* %start.addr, align 8
  %69 = load i64, i64* %end.addr, align 8
  call void @modify_text_properties(i64 %67, i64 %68, i64 %69)
  %70 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp93 = icmp eq %struct.interval* %70, null
  br i1 %cmp93, label %cond.true.94, label %cond.false.95

cond.true.94:                                     ; preds = %cond.end.90
  br label %cond.end.97

cond.false.95:                                    ; preds = %cond.end.90
  %71 = load %struct.interval*, %struct.interval** %i, align 8
  %total_length96 = getelementptr inbounds %struct.interval, %struct.interval* %71, i32 0, i32 0
  %72 = load i64, i64* %total_length96, align 8
  br label %cond.end.97

cond.end.97:                                      ; preds = %cond.false.95, %cond.true.94
  %cond98 = phi i64 [ 0, %cond.true.94 ], [ %72, %cond.false.95 ]
  %73 = load i64, i64* %prev_total_length, align 8
  %cmp99 = icmp ne i64 %cond98, %73
  br i1 %cmp99, label %if.then.102, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.97
  %74 = load %struct.interval*, %struct.interval** %i, align 8
  %position100 = getelementptr inbounds %struct.interval, %struct.interval* %74, i32 0, i32 1
  %75 = load i64, i64* %position100, align 8
  %76 = load i64, i64* %prev_pos, align 8
  %cmp101 = icmp ne i64 %75, %76
  br i1 %cmp101, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %lor.lhs.false, %cond.end.97
  store i8 0, i8* %first_time, align 1
  br label %retry

if.end.103:                                       ; preds = %lor.lhs.false
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %land.lhs.true, %if.end.82
  br label %for.cond

for.cond:                                         ; preds = %cond.end.235, %if.end.104
  %77 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp105 = icmp eq %struct.interval* %77, null
  br i1 %cmp105, label %cond.true.106, label %cond.false.107

cond.true.106:                                    ; preds = %for.cond
  br label %cond.end.132

cond.false.107:                                   ; preds = %for.cond
  %78 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp108 = icmp eq %struct.interval* %78, null
  br i1 %cmp108, label %cond.true.109, label %cond.false.110

cond.true.109:                                    ; preds = %cond.false.107
  br label %cond.end.112

cond.false.110:                                   ; preds = %cond.false.107
  %79 = load %struct.interval*, %struct.interval** %i, align 8
  %total_length111 = getelementptr inbounds %struct.interval, %struct.interval* %79, i32 0, i32 0
  %80 = load i64, i64* %total_length111, align 8
  br label %cond.end.112

cond.end.112:                                     ; preds = %cond.false.110, %cond.true.109
  %cond113 = phi i64 [ 0, %cond.true.109 ], [ %80, %cond.false.110 ]
  %81 = load %struct.interval*, %struct.interval** %i, align 8
  %right114 = getelementptr inbounds %struct.interval, %struct.interval* %81, i32 0, i32 3
  %82 = load %struct.interval*, %struct.interval** %right114, align 8
  %cmp115 = icmp eq %struct.interval* %82, null
  br i1 %cmp115, label %cond.true.116, label %cond.false.117

cond.true.116:                                    ; preds = %cond.end.112
  br label %cond.end.120

cond.false.117:                                   ; preds = %cond.end.112
  %83 = load %struct.interval*, %struct.interval** %i, align 8
  %right118 = getelementptr inbounds %struct.interval, %struct.interval* %83, i32 0, i32 3
  %84 = load %struct.interval*, %struct.interval** %right118, align 8
  %total_length119 = getelementptr inbounds %struct.interval, %struct.interval* %84, i32 0, i32 0
  %85 = load i64, i64* %total_length119, align 8
  br label %cond.end.120

cond.end.120:                                     ; preds = %cond.false.117, %cond.true.116
  %cond121 = phi i64 [ 0, %cond.true.116 ], [ %85, %cond.false.117 ]
  %sub122 = sub nsw i64 %cond113, %cond121
  %86 = load %struct.interval*, %struct.interval** %i, align 8
  %left123 = getelementptr inbounds %struct.interval, %struct.interval* %86, i32 0, i32 2
  %87 = load %struct.interval*, %struct.interval** %left123, align 8
  %cmp124 = icmp eq %struct.interval* %87, null
  br i1 %cmp124, label %cond.true.125, label %cond.false.126

cond.true.125:                                    ; preds = %cond.end.120
  br label %cond.end.129

cond.false.126:                                   ; preds = %cond.end.120
  %88 = load %struct.interval*, %struct.interval** %i, align 8
  %left127 = getelementptr inbounds %struct.interval, %struct.interval* %88, i32 0, i32 2
  %89 = load %struct.interval*, %struct.interval** %left127, align 8
  %total_length128 = getelementptr inbounds %struct.interval, %struct.interval* %89, i32 0, i32 0
  %90 = load i64, i64* %total_length128, align 8
  br label %cond.end.129

cond.end.129:                                     ; preds = %cond.false.126, %cond.true.125
  %cond130 = phi i64 [ 0, %cond.true.125 ], [ %90, %cond.false.126 ]
  %sub131 = sub nsw i64 %sub122, %cond130
  br label %cond.end.132

cond.end.132:                                     ; preds = %cond.end.129, %cond.true.106
  %cond133 = phi i64 [ 0, %cond.true.106 ], [ %sub131, %cond.end.129 ]
  %91 = load i64, i64* %len, align 8
  %cmp134 = icmp sge i64 %cond133, %91
  br i1 %cmp134, label %if.then.135, label %if.end.207

if.then.135:                                      ; preds = %cond.end.132
  %92 = load i64, i64* %properties.addr, align 8
  %93 = load %struct.interval*, %struct.interval** %i, align 8
  %call136 = call zeroext i1 @interval_has_all_properties(i64 %92, %struct.interval* %93)
  br i1 %call136, label %if.then.137, label %if.end.149

if.then.137:                                      ; preds = %if.then.135
  %94 = load i64, i64* %object.addr, align 8
  %call138 = call zeroext i1 @BUFFERP(i64 %94)
  br i1 %call138, label %if.then.139, label %if.end.147

if.then.139:                                      ; preds = %if.then.137
  %95 = load i64, i64* %start.addr, align 8
  %shr140 = ashr i64 %95, 2
  %96 = load i64, i64* %end.addr, align 8
  %shr141 = ashr i64 %96, 2
  %97 = load i64, i64* %start.addr, align 8
  %shr142 = ashr i64 %97, 2
  %sub143 = sub nsw i64 %shr141, %shr142
  %98 = load i64, i64* %end.addr, align 8
  %shr144 = ashr i64 %98, 2
  %99 = load i64, i64* %start.addr, align 8
  %shr145 = ashr i64 %99, 2
  %sub146 = sub nsw i64 %shr144, %shr145
  call void @signal_after_change(i64 %shr140, i64 %sub143, i64 %sub146)
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.139, %if.then.137
  %call148 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call148, i64* %retval
  br label %return

if.end.149:                                       ; preds = %if.then.135
  %100 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp150 = icmp eq %struct.interval* %100, null
  br i1 %cmp150, label %cond.true.151, label %cond.false.152

cond.true.151:                                    ; preds = %if.end.149
  br label %cond.end.177

cond.false.152:                                   ; preds = %if.end.149
  %101 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp153 = icmp eq %struct.interval* %101, null
  br i1 %cmp153, label %cond.true.154, label %cond.false.155

cond.true.154:                                    ; preds = %cond.false.152
  br label %cond.end.157

cond.false.155:                                   ; preds = %cond.false.152
  %102 = load %struct.interval*, %struct.interval** %i, align 8
  %total_length156 = getelementptr inbounds %struct.interval, %struct.interval* %102, i32 0, i32 0
  %103 = load i64, i64* %total_length156, align 8
  br label %cond.end.157

cond.end.157:                                     ; preds = %cond.false.155, %cond.true.154
  %cond158 = phi i64 [ 0, %cond.true.154 ], [ %103, %cond.false.155 ]
  %104 = load %struct.interval*, %struct.interval** %i, align 8
  %right159 = getelementptr inbounds %struct.interval, %struct.interval* %104, i32 0, i32 3
  %105 = load %struct.interval*, %struct.interval** %right159, align 8
  %cmp160 = icmp eq %struct.interval* %105, null
  br i1 %cmp160, label %cond.true.161, label %cond.false.162

cond.true.161:                                    ; preds = %cond.end.157
  br label %cond.end.165

cond.false.162:                                   ; preds = %cond.end.157
  %106 = load %struct.interval*, %struct.interval** %i, align 8
  %right163 = getelementptr inbounds %struct.interval, %struct.interval* %106, i32 0, i32 3
  %107 = load %struct.interval*, %struct.interval** %right163, align 8
  %total_length164 = getelementptr inbounds %struct.interval, %struct.interval* %107, i32 0, i32 0
  %108 = load i64, i64* %total_length164, align 8
  br label %cond.end.165

cond.end.165:                                     ; preds = %cond.false.162, %cond.true.161
  %cond166 = phi i64 [ 0, %cond.true.161 ], [ %108, %cond.false.162 ]
  %sub167 = sub nsw i64 %cond158, %cond166
  %109 = load %struct.interval*, %struct.interval** %i, align 8
  %left168 = getelementptr inbounds %struct.interval, %struct.interval* %109, i32 0, i32 2
  %110 = load %struct.interval*, %struct.interval** %left168, align 8
  %cmp169 = icmp eq %struct.interval* %110, null
  br i1 %cmp169, label %cond.true.170, label %cond.false.171

cond.true.170:                                    ; preds = %cond.end.165
  br label %cond.end.174

cond.false.171:                                   ; preds = %cond.end.165
  %111 = load %struct.interval*, %struct.interval** %i, align 8
  %left172 = getelementptr inbounds %struct.interval, %struct.interval* %111, i32 0, i32 2
  %112 = load %struct.interval*, %struct.interval** %left172, align 8
  %total_length173 = getelementptr inbounds %struct.interval, %struct.interval* %112, i32 0, i32 0
  %113 = load i64, i64* %total_length173, align 8
  br label %cond.end.174

cond.end.174:                                     ; preds = %cond.false.171, %cond.true.170
  %cond175 = phi i64 [ 0, %cond.true.170 ], [ %113, %cond.false.171 ]
  %sub176 = sub nsw i64 %sub167, %cond175
  br label %cond.end.177

cond.end.177:                                     ; preds = %cond.end.174, %cond.true.151
  %cond178 = phi i64 [ 0, %cond.true.151 ], [ %sub176, %cond.end.174 ]
  %114 = load i64, i64* %len, align 8
  %cmp179 = icmp eq i64 %cond178, %114
  br i1 %cmp179, label %if.then.180, label %if.end.193

if.then.180:                                      ; preds = %cond.end.177
  %115 = load i64, i64* %properties.addr, align 8
  %116 = load %struct.interval*, %struct.interval** %i, align 8
  %117 = load i64, i64* %object.addr, align 8
  %118 = load i32, i32* %set_type.addr, align 4
  %call181 = call zeroext i1 @add_properties(i64 %115, %struct.interval* %116, i64 %117, i32 %118)
  %119 = load i64, i64* %object.addr, align 8
  %call182 = call zeroext i1 @BUFFERP(i64 %119)
  br i1 %call182, label %if.then.183, label %if.end.191

if.then.183:                                      ; preds = %if.then.180
  %120 = load i64, i64* %start.addr, align 8
  %shr184 = ashr i64 %120, 2
  %121 = load i64, i64* %end.addr, align 8
  %shr185 = ashr i64 %121, 2
  %122 = load i64, i64* %start.addr, align 8
  %shr186 = ashr i64 %122, 2
  %sub187 = sub nsw i64 %shr185, %shr186
  %123 = load i64, i64* %end.addr, align 8
  %shr188 = ashr i64 %123, 2
  %124 = load i64, i64* %start.addr, align 8
  %shr189 = ashr i64 %124, 2
  %sub190 = sub nsw i64 %shr188, %shr189
  call void @signal_after_change(i64 %shr184, i64 %sub187, i64 %sub190)
  br label %if.end.191

if.end.191:                                       ; preds = %if.then.183, %if.then.180
  %call192 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call192, i64* %retval
  br label %return

if.end.193:                                       ; preds = %cond.end.177
  %125 = load %struct.interval*, %struct.interval** %i, align 8
  store %struct.interval* %125, %struct.interval** %unchanged, align 8
  %126 = load %struct.interval*, %struct.interval** %unchanged, align 8
  %127 = load i64, i64* %len, align 8
  %call194 = call %struct.interval* @split_interval_left(%struct.interval* %126, i64 %127)
  store %struct.interval* %call194, %struct.interval** %i, align 8
  %128 = load %struct.interval*, %struct.interval** %unchanged, align 8
  %129 = load %struct.interval*, %struct.interval** %i, align 8
  call void @copy_properties(%struct.interval* %128, %struct.interval* %129)
  %130 = load i64, i64* %properties.addr, align 8
  %131 = load %struct.interval*, %struct.interval** %i, align 8
  %132 = load i64, i64* %object.addr, align 8
  %133 = load i32, i32* %set_type.addr, align 4
  %call195 = call zeroext i1 @add_properties(i64 %130, %struct.interval* %131, i64 %132, i32 %133)
  %134 = load i64, i64* %object.addr, align 8
  %call196 = call zeroext i1 @BUFFERP(i64 %134)
  br i1 %call196, label %if.then.197, label %if.end.205

if.then.197:                                      ; preds = %if.end.193
  %135 = load i64, i64* %start.addr, align 8
  %shr198 = ashr i64 %135, 2
  %136 = load i64, i64* %end.addr, align 8
  %shr199 = ashr i64 %136, 2
  %137 = load i64, i64* %start.addr, align 8
  %shr200 = ashr i64 %137, 2
  %sub201 = sub nsw i64 %shr199, %shr200
  %138 = load i64, i64* %end.addr, align 8
  %shr202 = ashr i64 %138, 2
  %139 = load i64, i64* %start.addr, align 8
  %shr203 = ashr i64 %139, 2
  %sub204 = sub nsw i64 %shr202, %shr203
  call void @signal_after_change(i64 %shr198, i64 %sub201, i64 %sub204)
  br label %if.end.205

if.end.205:                                       ; preds = %if.then.197, %if.end.193
  %call206 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call206, i64* %retval
  br label %return

if.end.207:                                       ; preds = %cond.end.132
  %140 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp208 = icmp eq %struct.interval* %140, null
  br i1 %cmp208, label %cond.true.209, label %cond.false.210

cond.true.209:                                    ; preds = %if.end.207
  br label %cond.end.235

cond.false.210:                                   ; preds = %if.end.207
  %141 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp211 = icmp eq %struct.interval* %141, null
  br i1 %cmp211, label %cond.true.212, label %cond.false.213

cond.true.212:                                    ; preds = %cond.false.210
  br label %cond.end.215

cond.false.213:                                   ; preds = %cond.false.210
  %142 = load %struct.interval*, %struct.interval** %i, align 8
  %total_length214 = getelementptr inbounds %struct.interval, %struct.interval* %142, i32 0, i32 0
  %143 = load i64, i64* %total_length214, align 8
  br label %cond.end.215

cond.end.215:                                     ; preds = %cond.false.213, %cond.true.212
  %cond216 = phi i64 [ 0, %cond.true.212 ], [ %143, %cond.false.213 ]
  %144 = load %struct.interval*, %struct.interval** %i, align 8
  %right217 = getelementptr inbounds %struct.interval, %struct.interval* %144, i32 0, i32 3
  %145 = load %struct.interval*, %struct.interval** %right217, align 8
  %cmp218 = icmp eq %struct.interval* %145, null
  br i1 %cmp218, label %cond.true.219, label %cond.false.220

cond.true.219:                                    ; preds = %cond.end.215
  br label %cond.end.223

cond.false.220:                                   ; preds = %cond.end.215
  %146 = load %struct.interval*, %struct.interval** %i, align 8
  %right221 = getelementptr inbounds %struct.interval, %struct.interval* %146, i32 0, i32 3
  %147 = load %struct.interval*, %struct.interval** %right221, align 8
  %total_length222 = getelementptr inbounds %struct.interval, %struct.interval* %147, i32 0, i32 0
  %148 = load i64, i64* %total_length222, align 8
  br label %cond.end.223

cond.end.223:                                     ; preds = %cond.false.220, %cond.true.219
  %cond224 = phi i64 [ 0, %cond.true.219 ], [ %148, %cond.false.220 ]
  %sub225 = sub nsw i64 %cond216, %cond224
  %149 = load %struct.interval*, %struct.interval** %i, align 8
  %left226 = getelementptr inbounds %struct.interval, %struct.interval* %149, i32 0, i32 2
  %150 = load %struct.interval*, %struct.interval** %left226, align 8
  %cmp227 = icmp eq %struct.interval* %150, null
  br i1 %cmp227, label %cond.true.228, label %cond.false.229

cond.true.228:                                    ; preds = %cond.end.223
  br label %cond.end.232

cond.false.229:                                   ; preds = %cond.end.223
  %151 = load %struct.interval*, %struct.interval** %i, align 8
  %left230 = getelementptr inbounds %struct.interval, %struct.interval* %151, i32 0, i32 2
  %152 = load %struct.interval*, %struct.interval** %left230, align 8
  %total_length231 = getelementptr inbounds %struct.interval, %struct.interval* %152, i32 0, i32 0
  %153 = load i64, i64* %total_length231, align 8
  br label %cond.end.232

cond.end.232:                                     ; preds = %cond.false.229, %cond.true.228
  %cond233 = phi i64 [ 0, %cond.true.228 ], [ %153, %cond.false.229 ]
  %sub234 = sub nsw i64 %sub225, %cond233
  br label %cond.end.235

cond.end.235:                                     ; preds = %cond.end.232, %cond.true.209
  %cond236 = phi i64 [ 0, %cond.true.209 ], [ %sub234, %cond.end.232 ]
  %154 = load i64, i64* %len, align 8
  %sub237 = sub nsw i64 %154, %cond236
  store i64 %sub237, i64* %len, align 8
  %155 = load i64, i64* %properties.addr, align 8
  %156 = load %struct.interval*, %struct.interval** %i, align 8
  %157 = load i64, i64* %object.addr, align 8
  %158 = load i32, i32* %set_type.addr, align 4
  %call238 = call zeroext i1 @add_properties(i64 %155, %struct.interval* %156, i64 %157, i32 %158)
  %conv = zext i1 %call238 to i32
  %159 = load i8, i8* %modified, align 1
  %tobool239 = trunc i8 %159 to i1
  %conv240 = zext i1 %tobool239 to i32
  %or = or i32 %conv240, %conv
  %tobool241 = icmp ne i32 %or, 0
  %frombool = zext i1 %tobool241 to i8
  store i8 %frombool, i8* %modified, align 1
  %160 = load %struct.interval*, %struct.interval** %i, align 8
  %call242 = call %struct.interval* @next_interval(%struct.interval* %160)
  store %struct.interval* %call242, %struct.interval** %i, align 8
  br label %for.cond

return:                                           ; preds = %if.end.205, %if.end.191, %if.end.147, %if.then.40, %if.then.9, %if.then
  %161 = load i64, i64* %retval
  ret i64 %161
}

; Function Attrs: nounwind uwtable
define i64 @Fput_text_property(i64 %start, i64 %end, i64 %property, i64 %value, i64 %object) #0 {
entry:
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %property.addr = alloca i64, align 8
  %value.addr = alloca i64, align 8
  %object.addr = alloca i64, align 8
  %properties = alloca i64, align 8
  %.compoundliteral = alloca %union.Aligned_Cons, align 8
  %.compoundliteral1 = alloca %union.Aligned_Cons, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  store i64 %property, i64* %property.addr, align 8
  store i64 %value, i64* %value.addr, align 8
  store i64 %object, i64* %object.addr, align 8
  %s = bitcast %union.Aligned_Cons* %.compoundliteral to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s, i32 0, i32 0
  %0 = load i64, i64* %property.addr, align 8
  store i64 %0, i64* %car, align 8
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s, i32 0, i32 1
  %cdr = bitcast %union.anon.6* %u to i64*
  %s2 = bitcast %union.Aligned_Cons* %.compoundliteral1 to %struct.Lisp_Cons*
  %car3 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s2, i32 0, i32 0
  %1 = load i64, i64* %value.addr, align 8
  store i64 %1, i64* %car3, align 8
  %u4 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s2, i32 0, i32 1
  %cdr5 = bitcast %union.anon.6* %u4 to i64*
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %cdr5, align 8
  %s6 = bitcast %union.Aligned_Cons* %.compoundliteral1 to %struct.Lisp_Cons*
  %2 = bitcast %struct.Lisp_Cons* %s6 to i8*
  %call7 = call i64 @make_lisp_ptr(i8* %2, i32 3)
  store i64 %call7, i64* %cdr, align 8
  %s8 = bitcast %union.Aligned_Cons* %.compoundliteral to %struct.Lisp_Cons*
  %3 = bitcast %struct.Lisp_Cons* %s8 to i8*
  %call9 = call i64 @make_lisp_ptr(i8* %3, i32 3)
  store i64 %call9, i64* %properties, align 8
  %4 = load i64, i64* %start.addr, align 8
  %5 = load i64, i64* %end.addr, align 8
  %6 = load i64, i64* %properties, align 8
  %7 = load i64, i64* %object.addr, align 8
  %call10 = call i64 @Fadd_text_properties(i64 %4, i64 %5, i64 %6, i64 %7)
  %call11 = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call11
}

; Function Attrs: nounwind uwtable
define i64 @Fset_text_properties(i64 %start, i64 %end, i64 %properties, i64 %object) #0 {
entry:
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %properties.addr = alloca i64, align 8
  %object.addr = alloca i64, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  store i64 %properties, i64* %properties.addr, align 8
  store i64 %object, i64* %object.addr, align 8
  %0 = load i64, i64* %start.addr, align 8
  %1 = load i64, i64* %end.addr, align 8
  %2 = load i64, i64* %properties.addr, align 8
  %3 = load i64, i64* %object.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 901)
  %call1 = call i64 @set_text_properties(i64 %0, i64 %1, i64 %2, i64 %3, i64 %call)
  ret i64 %call1
}

; Function Attrs: nounwind uwtable
define i64 @set_text_properties(i64 %start, i64 %end, i64 %properties, i64 %object, i64 %coherent_change_p) #0 {
entry:
  %retval = alloca i64, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %properties.addr = alloca i64, align 8
  %object.addr = alloca i64, align 8
  %coherent_change_p.addr = alloca i64, align 8
  %i = alloca %struct.interval*, align 8
  %ostart = alloca i64, align 8
  %oend = alloca i64, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  store i64 %properties, i64* %properties.addr, align 8
  store i64 %object, i64* %object.addr, align 8
  store i64 %coherent_change_p, i64* %coherent_change_p.addr, align 8
  %0 = load i64, i64* %start.addr, align 8
  store i64 %0, i64* %ostart, align 8
  %1 = load i64, i64* %end.addr, align 8
  store i64 %1, i64* %oend, align 8
  %2 = load i64, i64* %properties.addr, align 8
  %call = call i64 @validate_plist(i64 %2)
  store i64 %call, i64* %properties.addr, align 8
  %3 = load i64, i64* %object.addr, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %3, %call1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %5 = bitcast %struct.buffer* %4 to i8*
  %call2 = call i64 @make_lisp_ptr(i8* %5, i32 5)
  store i64 %call2, i64* %object.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i64, i64* %properties.addr, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp4 = icmp eq i64 %6, %call3
  br i1 %cmp4, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, i64* %object.addr, align 8
  %call5 = call zeroext i1 @STRINGP(i64 %7)
  br i1 %call5, label %land.lhs.true.6, label %if.end.18

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %8 = load i64, i64* %start.addr, align 8
  %shr = ashr i64 %8, 2
  %cmp7 = icmp eq i64 %shr, 0
  br i1 %cmp7, label %land.lhs.true.8, label %if.end.18

land.lhs.true.8:                                  ; preds = %land.lhs.true.6
  %9 = load i64, i64* %end.addr, align 8
  %shr9 = ashr i64 %9, 2
  %10 = load i64, i64* %object.addr, align 8
  %call10 = call i64 @SCHARS(i64 %10)
  %cmp11 = icmp eq i64 %shr9, %call10
  br i1 %cmp11, label %if.then.12, label %if.end.18

if.then.12:                                       ; preds = %land.lhs.true.8
  %11 = load i64, i64* %object.addr, align 8
  %call13 = call %struct.interval* @string_intervals(i64 %11)
  %tobool = icmp ne %struct.interval* %call13, null
  br i1 %tobool, label %if.end.16, label %if.then.14

if.then.14:                                       ; preds = %if.then.12
  %call15 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call15, i64* %retval
  br label %return

if.end.16:                                        ; preds = %if.then.12
  %12 = load i64, i64* %object.addr, align 8
  call void @set_string_intervals(i64 %12, %struct.interval* null)
  %call17 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call17, i64* %retval
  br label %return

if.end.18:                                        ; preds = %land.lhs.true.8, %land.lhs.true.6, %land.lhs.true, %if.end
  %13 = load i64, i64* %object.addr, align 8
  %call19 = call %struct.interval* @validate_interval_range(i64 %13, i64* %start.addr, i64* %end.addr, i1 zeroext false)
  store %struct.interval* %call19, %struct.interval** %i, align 8
  %14 = load %struct.interval*, %struct.interval** %i, align 8
  %tobool20 = icmp ne %struct.interval* %14, null
  br i1 %tobool20, label %if.end.32, label %if.then.21

if.then.21:                                       ; preds = %if.end.18
  %15 = load i64, i64* %properties.addr, align 8
  %call22 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp23 = icmp eq i64 %15, %call22
  br i1 %cmp23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.then.21
  %call25 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call25, i64* %retval
  br label %return

if.end.26:                                        ; preds = %if.then.21
  %16 = load i64, i64* %ostart, align 8
  store i64 %16, i64* %start.addr, align 8
  %17 = load i64, i64* %oend, align 8
  store i64 %17, i64* %end.addr, align 8
  %18 = load i64, i64* %object.addr, align 8
  %call27 = call %struct.interval* @validate_interval_range(i64 %18, i64* %start.addr, i64* %end.addr, i1 zeroext true)
  store %struct.interval* %call27, %struct.interval** %i, align 8
  %19 = load %struct.interval*, %struct.interval** %i, align 8
  %tobool28 = icmp ne %struct.interval* %19, null
  br i1 %tobool28, label %if.end.31, label %if.then.29

if.then.29:                                       ; preds = %if.end.26
  %call30 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call30, i64* %retval
  br label %return

if.end.31:                                        ; preds = %if.end.26
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.end.18
  %20 = load i64, i64* %object.addr, align 8
  %call33 = call zeroext i1 @BUFFERP(i64 %20)
  br i1 %call33, label %land.lhs.true.34, label %if.end.38

land.lhs.true.34:                                 ; preds = %if.end.32
  %21 = load i64, i64* %coherent_change_p.addr, align 8
  %call35 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp36 = icmp eq i64 %21, %call35
  br i1 %cmp36, label %if.end.38, label %if.then.37

if.then.37:                                       ; preds = %land.lhs.true.34
  %22 = load i64, i64* %object.addr, align 8
  %23 = load i64, i64* %start.addr, align 8
  %24 = load i64, i64* %end.addr, align 8
  call void @modify_text_properties(i64 %22, i64 %23, i64 %24)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %land.lhs.true.34, %if.end.32
  %25 = load i64, i64* %start.addr, align 8
  %26 = load i64, i64* %end.addr, align 8
  %27 = load i64, i64* %properties.addr, align 8
  %28 = load i64, i64* %object.addr, align 8
  %29 = load %struct.interval*, %struct.interval** %i, align 8
  call void @set_text_properties_1(i64 %25, i64 %26, i64 %27, i64 %28, %struct.interval* %29)
  %30 = load i64, i64* %object.addr, align 8
  %call39 = call zeroext i1 @BUFFERP(i64 %30)
  br i1 %call39, label %land.lhs.true.40, label %if.end.50

land.lhs.true.40:                                 ; preds = %if.end.38
  %31 = load i64, i64* %coherent_change_p.addr, align 8
  %call41 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp42 = icmp eq i64 %31, %call41
  br i1 %cmp42, label %if.end.50, label %if.then.43

if.then.43:                                       ; preds = %land.lhs.true.40
  %32 = load i64, i64* %start.addr, align 8
  %shr44 = ashr i64 %32, 2
  %33 = load i64, i64* %end.addr, align 8
  %shr45 = ashr i64 %33, 2
  %34 = load i64, i64* %start.addr, align 8
  %shr46 = ashr i64 %34, 2
  %sub = sub nsw i64 %shr45, %shr46
  %35 = load i64, i64* %end.addr, align 8
  %shr47 = ashr i64 %35, 2
  %36 = load i64, i64* %start.addr, align 8
  %shr48 = ashr i64 %36, 2
  %sub49 = sub nsw i64 %shr47, %shr48
  call void @signal_after_change(i64 %shr44, i64 %sub, i64 %sub49)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.43, %land.lhs.true.40, %if.end.38
  %call51 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call51, i64* %retval
  br label %return

return:                                           ; preds = %if.end.50, %if.then.29, %if.then.24, %if.end.16, %if.then.14
  %37 = load i64, i64* %retval
  ret i64 %37
}

; Function Attrs: nounwind uwtable
define i64 @Fadd_face_text_property(i64 %start, i64 %end, i64 %face, i64 %append, i64 %object) #0 {
entry:
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %face.addr = alloca i64, align 8
  %append.addr = alloca i64, align 8
  %object.addr = alloca i64, align 8
  %properties = alloca i64, align 8
  %.compoundliteral = alloca %union.Aligned_Cons, align 8
  %.compoundliteral1 = alloca %union.Aligned_Cons, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  store i64 %face, i64* %face.addr, align 8
  store i64 %append, i64* %append.addr, align 8
  store i64 %object, i64* %object.addr, align 8
  %s = bitcast %union.Aligned_Cons* %.compoundliteral to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s, i32 0, i32 0
  %call = call i64 @builtin_lisp_symbol(i32 397)
  store i64 %call, i64* %car, align 8
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s, i32 0, i32 1
  %cdr = bitcast %union.anon.6* %u to i64*
  %s2 = bitcast %union.Aligned_Cons* %.compoundliteral1 to %struct.Lisp_Cons*
  %car3 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s2, i32 0, i32 0
  %0 = load i64, i64* %face.addr, align 8
  store i64 %0, i64* %car3, align 8
  %u4 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s2, i32 0, i32 1
  %cdr5 = bitcast %union.anon.6* %u4 to i64*
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call6, i64* %cdr5, align 8
  %s7 = bitcast %union.Aligned_Cons* %.compoundliteral1 to %struct.Lisp_Cons*
  %1 = bitcast %struct.Lisp_Cons* %s7 to i8*
  %call8 = call i64 @make_lisp_ptr(i8* %1, i32 3)
  store i64 %call8, i64* %cdr, align 8
  %s9 = bitcast %union.Aligned_Cons* %.compoundliteral to %struct.Lisp_Cons*
  %2 = bitcast %struct.Lisp_Cons* %s9 to i8*
  %call10 = call i64 @make_lisp_ptr(i8* %2, i32 3)
  store i64 %call10, i64* %properties, align 8
  %3 = load i64, i64* %start.addr, align 8
  %4 = load i64, i64* %end.addr, align 8
  %5 = load i64, i64* %properties, align 8
  %6 = load i64, i64* %object.addr, align 8
  %7 = load i64, i64* %append.addr, align 8
  %call11 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %7, %call11
  %cond = select i1 %cmp, i32 1, i32 2
  %call12 = call i64 @add_text_properties_1(i64 %3, i64 %4, i64 %5, i64 %6, i32 %cond)
  %call13 = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call13
}

; Function Attrs: nounwind uwtable
define internal i64 @validate_plist(i64 %list) #0 {
entry:
  %retval = alloca i64, align 8
  %list.addr = alloca i64, align 8
  %tail = alloca i64, align 8
  store i64 %list, i64* %list.addr, align 8
  %0 = load i64, i64* %list.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %list.addr, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %cmp2 = icmp eq i32 %conv, 3
  br i1 %cmp2, label %if.then.4, label %if.end.30

if.then.4:                                        ; preds = %if.end
  %2 = load i64, i64* %list.addr, align 8
  store i64 %2, i64* %tail, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.4
  %3 = load i64, i64* %tail, align 8
  %sub = sub nsw i64 %3, 3
  %4 = inttoptr i64 %sub to i8*
  %5 = bitcast i8* %4 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %5, i32 0, i32 1
  %cdr = bitcast %union.anon.6* %u to i64*
  %6 = load i64, i64* %cdr, align 8
  store i64 %6, i64* %tail, align 8
  %7 = load i64, i64* %tail, align 8
  %and5 = and i64 %7, 7
  %conv6 = trunc i64 %and5 to i32
  %cmp7 = icmp eq i32 %conv6, 3
  br i1 %cmp7, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %do.body
  call void (i8*, ...) @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i32 0, i32 0)) #4
  unreachable

if.end.10:                                        ; preds = %do.body
  %8 = load i64, i64* %tail, align 8
  %sub11 = sub nsw i64 %8, 3
  %9 = inttoptr i64 %sub11 to i8*
  %10 = bitcast i8* %9 to %struct.Lisp_Cons*
  %u12 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %10, i32 0, i32 1
  %cdr13 = bitcast %union.anon.6* %u12 to i64*
  %11 = load i64, i64* %cdr13, align 8
  store i64 %11, i64* %tail, align 8
  br label %do.body.14

do.body.14:                                       ; preds = %if.end.10
  %12 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call15 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp16 = icmp eq i64 %12, %call15
  br i1 %cmp16, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.body.14
  %13 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call18 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp19 = icmp eq i64 %13, %call18
  br i1 %cmp19, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %land.lhs.true
  call void @process_quit_flag()
  br label %if.end.24

if.else:                                          ; preds = %land.lhs.true, %do.body.14
  %14 = load volatile i8, i8* @pending_signals, align 1
  %tobool = trunc i8 %14 to i1
  br i1 %tobool, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.else
  call void @process_pending_signals()
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.else
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then.21
  br label %do.end

do.end:                                           ; preds = %if.end.24
  br label %do.cond

do.cond:                                          ; preds = %do.end
  %15 = load i64, i64* %tail, align 8
  %and25 = and i64 %15, 7
  %conv26 = trunc i64 %and25 to i32
  %cmp27 = icmp eq i32 %conv26, 3
  br i1 %cmp27, label %do.body, label %do.end.29

do.end.29:                                        ; preds = %do.cond
  %16 = load i64, i64* %list.addr, align 8
  store i64 %16, i64* %retval
  br label %return

if.end.30:                                        ; preds = %if.end
  %17 = load i64, i64* %list.addr, align 8
  %call31 = call i64 @builtin_lisp_symbol(i32 0)
  %call32 = call i64 @list2(i64 %17, i64 %call31)
  store i64 %call32, i64* %retval
  br label %return

return:                                           ; preds = %if.end.30, %do.end.29, %if.then
  %18 = load i64, i64* %retval
  ret i64 %18
}

declare void @set_string_intervals(i64, %struct.interval*) #1

; Function Attrs: nounwind uwtable
define internal void @modify_text_properties(i64 %buffer, i64 %start, i64 %end) #0 {
entry:
  %buffer.addr = alloca i64, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %b = alloca i64, align 8
  %e = alloca i64, align 8
  %buf = alloca %struct.buffer*, align 8
  %old = alloca %struct.buffer*, align 8
  store i64 %buffer, i64* %buffer.addr, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  %0 = load i64, i64* %start.addr, align 8
  %shr = ashr i64 %0, 2
  store i64 %shr, i64* %b, align 8
  %1 = load i64, i64* %end.addr, align 8
  %shr1 = ashr i64 %1, 2
  store i64 %shr1, i64* %e, align 8
  %2 = load i64, i64* %buffer.addr, align 8
  %call = call %struct.buffer* @XBUFFER(i64 %2)
  store %struct.buffer* %call, %struct.buffer** %buf, align 8
  %3 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  store %struct.buffer* %3, %struct.buffer** %old, align 8
  %4 = load %struct.buffer*, %struct.buffer** %buf, align 8
  call void @set_buffer_internal(%struct.buffer* %4)
  %5 = load i64, i64* %b, align 8
  %6 = load i64, i64* %e, align 8
  call void @prepare_to_modify_buffer_1(i64 %5, i64 %6, i64* null)
  br label %do.body

do.body:                                          ; preds = %entry
  %7 = load %struct.buffer*, %struct.buffer** %buf, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 73
  %8 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %unchanged_modified = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %8, i32 0, i32 13
  %9 = load i64, i64* %unchanged_modified, align 8
  %10 = load %struct.buffer*, %struct.buffer** %buf, align 8
  %text2 = getelementptr inbounds %struct.buffer, %struct.buffer* %10, i32 0, i32 73
  %11 = load %struct.buffer_text*, %struct.buffer_text** %text2, align 8
  %modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %11, i32 0, i32 6
  %12 = load i64, i64* %modiff, align 8
  %cmp = icmp eq i64 %9, %12
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %13 = load %struct.buffer*, %struct.buffer** %buf, align 8
  %text3 = getelementptr inbounds %struct.buffer, %struct.buffer* %13, i32 0, i32 73
  %14 = load %struct.buffer_text*, %struct.buffer_text** %text3, align 8
  %overlay_unchanged_modified = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %14, i32 0, i32 14
  %15 = load i64, i64* %overlay_unchanged_modified, align 8
  %16 = load %struct.buffer*, %struct.buffer** %buf, align 8
  %text4 = getelementptr inbounds %struct.buffer, %struct.buffer* %16, i32 0, i32 73
  %17 = load %struct.buffer_text*, %struct.buffer_text** %text4, align 8
  %overlay_modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %17, i32 0, i32 9
  %18 = load i64, i64* %overlay_modiff, align 8
  %cmp5 = icmp eq i64 %15, %18
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %19 = load i64, i64* %b, align 8
  %sub = sub nsw i64 %19, 1
  %sub6 = sub nsw i64 %sub, 1
  %20 = load %struct.buffer*, %struct.buffer** %buf, align 8
  %text7 = getelementptr inbounds %struct.buffer, %struct.buffer* %20, i32 0, i32 73
  %21 = load %struct.buffer_text*, %struct.buffer_text** %text7, align 8
  %beg_unchanged = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %21, i32 0, i32 11
  store i64 %sub6, i64* %beg_unchanged, align 8
  %22 = load %struct.buffer*, %struct.buffer** %buf, align 8
  %text8 = getelementptr inbounds %struct.buffer, %struct.buffer* %22, i32 0, i32 73
  %23 = load %struct.buffer_text*, %struct.buffer_text** %text8, align 8
  %z = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %23, i32 0, i32 2
  %24 = load i64, i64* %z, align 8
  %25 = load i64, i64* %e, align 8
  %sub9 = sub nsw i64 %24, %25
  %26 = load %struct.buffer*, %struct.buffer** %buf, align 8
  %text10 = getelementptr inbounds %struct.buffer, %struct.buffer* %26, i32 0, i32 73
  %27 = load %struct.buffer_text*, %struct.buffer_text** %text10, align 8
  %end_unchanged = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %27, i32 0, i32 12
  store i64 %sub9, i64* %end_unchanged, align 8
  br label %if.end.34

if.else:                                          ; preds = %land.lhs.true, %do.body
  %28 = load %struct.buffer*, %struct.buffer** %buf, align 8
  %text11 = getelementptr inbounds %struct.buffer, %struct.buffer* %28, i32 0, i32 73
  %29 = load %struct.buffer_text*, %struct.buffer_text** %text11, align 8
  %z12 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %29, i32 0, i32 2
  %30 = load i64, i64* %z12, align 8
  %31 = load i64, i64* %e, align 8
  %sub13 = sub nsw i64 %30, %31
  %32 = load %struct.buffer*, %struct.buffer** %buf, align 8
  %text14 = getelementptr inbounds %struct.buffer, %struct.buffer* %32, i32 0, i32 73
  %33 = load %struct.buffer_text*, %struct.buffer_text** %text14, align 8
  %end_unchanged15 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %33, i32 0, i32 12
  %34 = load i64, i64* %end_unchanged15, align 8
  %cmp16 = icmp slt i64 %sub13, %34
  br i1 %cmp16, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %if.else
  %35 = load %struct.buffer*, %struct.buffer** %buf, align 8
  %text18 = getelementptr inbounds %struct.buffer, %struct.buffer* %35, i32 0, i32 73
  %36 = load %struct.buffer_text*, %struct.buffer_text** %text18, align 8
  %z19 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %36, i32 0, i32 2
  %37 = load i64, i64* %z19, align 8
  %38 = load i64, i64* %e, align 8
  %sub20 = sub nsw i64 %37, %38
  %39 = load %struct.buffer*, %struct.buffer** %buf, align 8
  %text21 = getelementptr inbounds %struct.buffer, %struct.buffer* %39, i32 0, i32 73
  %40 = load %struct.buffer_text*, %struct.buffer_text** %text21, align 8
  %end_unchanged22 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %40, i32 0, i32 12
  store i64 %sub20, i64* %end_unchanged22, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.17, %if.else
  %41 = load i64, i64* %b, align 8
  %sub23 = sub nsw i64 %41, 1
  %sub24 = sub nsw i64 %sub23, 1
  %42 = load %struct.buffer*, %struct.buffer** %buf, align 8
  %text25 = getelementptr inbounds %struct.buffer, %struct.buffer* %42, i32 0, i32 73
  %43 = load %struct.buffer_text*, %struct.buffer_text** %text25, align 8
  %beg_unchanged26 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %43, i32 0, i32 11
  %44 = load i64, i64* %beg_unchanged26, align 8
  %cmp27 = icmp slt i64 %sub24, %44
  br i1 %cmp27, label %if.then.28, label %if.end.33

if.then.28:                                       ; preds = %if.end
  %45 = load i64, i64* %b, align 8
  %sub29 = sub nsw i64 %45, 1
  %sub30 = sub nsw i64 %sub29, 1
  %46 = load %struct.buffer*, %struct.buffer** %buf, align 8
  %text31 = getelementptr inbounds %struct.buffer, %struct.buffer* %46, i32 0, i32 73
  %47 = load %struct.buffer_text*, %struct.buffer_text** %text31, align 8
  %beg_unchanged32 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %47, i32 0, i32 11
  store i64 %sub30, i64* %beg_unchanged32, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.28, %if.end
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then
  br label %do.end

do.end:                                           ; preds = %if.end.34
  %48 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text35 = getelementptr inbounds %struct.buffer, %struct.buffer* %48, i32 0, i32 73
  %49 = load %struct.buffer_text*, %struct.buffer_text** %text35, align 8
  %modiff36 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %49, i32 0, i32 6
  %50 = load i64, i64* %modiff36, align 8
  %51 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text37 = getelementptr inbounds %struct.buffer, %struct.buffer* %51, i32 0, i32 73
  %52 = load %struct.buffer_text*, %struct.buffer_text** %text37, align 8
  %save_modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %52, i32 0, i32 8
  %53 = load i64, i64* %save_modiff, align 8
  %cmp38 = icmp sle i64 %50, %53
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %do.end
  call void @record_first_change()
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %do.end
  %54 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text41 = getelementptr inbounds %struct.buffer, %struct.buffer* %54, i32 0, i32 73
  %55 = load %struct.buffer_text*, %struct.buffer_text** %text41, align 8
  %modiff42 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %55, i32 0, i32 6
  %56 = load i64, i64* %modiff42, align 8
  %inc = add nsw i64 %56, 1
  store i64 %inc, i64* %modiff42, align 8
  %57 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %call43 = call i64 @builtin_lisp_symbol(i32 0)
  call void @bset_point_before_scroll(%struct.buffer* %57, i64 %call43)
  %58 = load %struct.buffer*, %struct.buffer** %old, align 8
  call void @set_buffer_internal(%struct.buffer* %58)
  ret void
}

; Function Attrs: nounwind uwtable
define void @set_text_properties_1(i64 %start, i64 %end, i64 %properties, i64 %object, %struct.interval* %i) #0 {
entry:
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %properties.addr = alloca i64, align 8
  %object.addr = alloca i64, align 8
  %i.addr = alloca %struct.interval*, align 8
  %prev_changed = alloca %struct.interval*, align 8
  %s = alloca i64, align 8
  %len = alloca i64, align 8
  %unchanged = alloca %struct.interval*, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  store i64 %properties, i64* %properties.addr, align 8
  store i64 %object, i64* %object.addr, align 8
  store %struct.interval* %i, %struct.interval** %i.addr, align 8
  store %struct.interval* null, %struct.interval** %prev_changed, align 8
  %0 = load i64, i64* %start.addr, align 8
  %shr = ashr i64 %0, 2
  %1 = load i64, i64* %end.addr, align 8
  %shr1 = ashr i64 %1, 2
  %cmp = icmp slt i64 %shr, %shr1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %start.addr, align 8
  %shr2 = ashr i64 %2, 2
  store i64 %shr2, i64* %s, align 8
  %3 = load i64, i64* %end.addr, align 8
  %shr3 = ashr i64 %3, 2
  %4 = load i64, i64* %s, align 8
  %sub = sub nsw i64 %shr3, %4
  store i64 %sub, i64* %len, align 8
  br label %if.end.12

if.else:                                          ; preds = %entry
  %5 = load i64, i64* %end.addr, align 8
  %shr4 = ashr i64 %5, 2
  %6 = load i64, i64* %start.addr, align 8
  %shr5 = ashr i64 %6, 2
  %cmp6 = icmp slt i64 %shr4, %shr5
  br i1 %cmp6, label %if.then.7, label %if.else.11

if.then.7:                                        ; preds = %if.else
  %7 = load i64, i64* %end.addr, align 8
  %shr8 = ashr i64 %7, 2
  store i64 %shr8, i64* %s, align 8
  %8 = load i64, i64* %start.addr, align 8
  %shr9 = ashr i64 %8, 2
  %9 = load i64, i64* %s, align 8
  %sub10 = sub nsw i64 %shr9, %9
  store i64 %sub10, i64* %len, align 8
  br label %if.end

if.else.11:                                       ; preds = %if.else
  br label %do.end

if.end:                                           ; preds = %if.then.7
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then
  %10 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %position = getelementptr inbounds %struct.interval, %struct.interval* %10, i32 0, i32 1
  %11 = load i64, i64* %position, align 8
  %12 = load i64, i64* %s, align 8
  %cmp13 = icmp ne i64 %11, %12
  br i1 %cmp13, label %if.then.14, label %if.end.106

if.then.14:                                       ; preds = %if.end.12
  %13 = load %struct.interval*, %struct.interval** %i.addr, align 8
  store %struct.interval* %13, %struct.interval** %unchanged, align 8
  %14 = load %struct.interval*, %struct.interval** %unchanged, align 8
  %15 = load i64, i64* %s, align 8
  %16 = load %struct.interval*, %struct.interval** %unchanged, align 8
  %position15 = getelementptr inbounds %struct.interval, %struct.interval* %16, i32 0, i32 1
  %17 = load i64, i64* %position15, align 8
  %sub16 = sub nsw i64 %15, %17
  %call = call %struct.interval* @split_interval_right(%struct.interval* %14, i64 %sub16)
  store %struct.interval* %call, %struct.interval** %i.addr, align 8
  %18 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %cmp17 = icmp eq %struct.interval* %18, null
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.14
  br label %cond.end.37

cond.false:                                       ; preds = %if.then.14
  %19 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %cmp18 = icmp eq %struct.interval* %19, null
  br i1 %cmp18, label %cond.true.19, label %cond.false.20

cond.true.19:                                     ; preds = %cond.false
  br label %cond.end

cond.false.20:                                    ; preds = %cond.false
  %20 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %total_length = getelementptr inbounds %struct.interval, %struct.interval* %20, i32 0, i32 0
  %21 = load i64, i64* %total_length, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.20, %cond.true.19
  %cond = phi i64 [ 0, %cond.true.19 ], [ %21, %cond.false.20 ]
  %22 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right = getelementptr inbounds %struct.interval, %struct.interval* %22, i32 0, i32 3
  %23 = load %struct.interval*, %struct.interval** %right, align 8
  %cmp21 = icmp eq %struct.interval* %23, null
  br i1 %cmp21, label %cond.true.22, label %cond.false.23

cond.true.22:                                     ; preds = %cond.end
  br label %cond.end.26

cond.false.23:                                    ; preds = %cond.end
  %24 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right24 = getelementptr inbounds %struct.interval, %struct.interval* %24, i32 0, i32 3
  %25 = load %struct.interval*, %struct.interval** %right24, align 8
  %total_length25 = getelementptr inbounds %struct.interval, %struct.interval* %25, i32 0, i32 0
  %26 = load i64, i64* %total_length25, align 8
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.23, %cond.true.22
  %cond27 = phi i64 [ 0, %cond.true.22 ], [ %26, %cond.false.23 ]
  %sub28 = sub nsw i64 %cond, %cond27
  %27 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left = getelementptr inbounds %struct.interval, %struct.interval* %27, i32 0, i32 2
  %28 = load %struct.interval*, %struct.interval** %left, align 8
  %cmp29 = icmp eq %struct.interval* %28, null
  br i1 %cmp29, label %cond.true.30, label %cond.false.31

cond.true.30:                                     ; preds = %cond.end.26
  br label %cond.end.34

cond.false.31:                                    ; preds = %cond.end.26
  %29 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left32 = getelementptr inbounds %struct.interval, %struct.interval* %29, i32 0, i32 2
  %30 = load %struct.interval*, %struct.interval** %left32, align 8
  %total_length33 = getelementptr inbounds %struct.interval, %struct.interval* %30, i32 0, i32 0
  %31 = load i64, i64* %total_length33, align 8
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.false.31, %cond.true.30
  %cond35 = phi i64 [ 0, %cond.true.30 ], [ %31, %cond.false.31 ]
  %sub36 = sub nsw i64 %sub28, %cond35
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.end.34, %cond.true
  %cond38 = phi i64 [ 0, %cond.true ], [ %sub36, %cond.end.34 ]
  %32 = load i64, i64* %len, align 8
  %cmp39 = icmp sgt i64 %cond38, %32
  br i1 %cmp39, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %cond.end.37
  %33 = load %struct.interval*, %struct.interval** %unchanged, align 8
  %34 = load %struct.interval*, %struct.interval** %i.addr, align 8
  call void @copy_properties(%struct.interval* %33, %struct.interval* %34)
  %35 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %36 = load i64, i64* %len, align 8
  %call41 = call %struct.interval* @split_interval_left(%struct.interval* %35, i64 %36)
  store %struct.interval* %call41, %struct.interval** %i.addr, align 8
  %37 = load i64, i64* %properties.addr, align 8
  %38 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %39 = load i64, i64* %object.addr, align 8
  call void @set_properties(i64 %37, %struct.interval* %38, i64 %39)
  br label %do.end

if.end.42:                                        ; preds = %cond.end.37
  %40 = load i64, i64* %properties.addr, align 8
  %41 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %42 = load i64, i64* %object.addr, align 8
  call void @set_properties(i64 %40, %struct.interval* %41, i64 %42)
  %43 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %cmp43 = icmp eq %struct.interval* %43, null
  br i1 %cmp43, label %cond.true.44, label %cond.false.45

cond.true.44:                                     ; preds = %if.end.42
  br label %cond.end.70

cond.false.45:                                    ; preds = %if.end.42
  %44 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %cmp46 = icmp eq %struct.interval* %44, null
  br i1 %cmp46, label %cond.true.47, label %cond.false.48

cond.true.47:                                     ; preds = %cond.false.45
  br label %cond.end.50

cond.false.48:                                    ; preds = %cond.false.45
  %45 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %total_length49 = getelementptr inbounds %struct.interval, %struct.interval* %45, i32 0, i32 0
  %46 = load i64, i64* %total_length49, align 8
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.48, %cond.true.47
  %cond51 = phi i64 [ 0, %cond.true.47 ], [ %46, %cond.false.48 ]
  %47 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right52 = getelementptr inbounds %struct.interval, %struct.interval* %47, i32 0, i32 3
  %48 = load %struct.interval*, %struct.interval** %right52, align 8
  %cmp53 = icmp eq %struct.interval* %48, null
  br i1 %cmp53, label %cond.true.54, label %cond.false.55

cond.true.54:                                     ; preds = %cond.end.50
  br label %cond.end.58

cond.false.55:                                    ; preds = %cond.end.50
  %49 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right56 = getelementptr inbounds %struct.interval, %struct.interval* %49, i32 0, i32 3
  %50 = load %struct.interval*, %struct.interval** %right56, align 8
  %total_length57 = getelementptr inbounds %struct.interval, %struct.interval* %50, i32 0, i32 0
  %51 = load i64, i64* %total_length57, align 8
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.false.55, %cond.true.54
  %cond59 = phi i64 [ 0, %cond.true.54 ], [ %51, %cond.false.55 ]
  %sub60 = sub nsw i64 %cond51, %cond59
  %52 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left61 = getelementptr inbounds %struct.interval, %struct.interval* %52, i32 0, i32 2
  %53 = load %struct.interval*, %struct.interval** %left61, align 8
  %cmp62 = icmp eq %struct.interval* %53, null
  br i1 %cmp62, label %cond.true.63, label %cond.false.64

cond.true.63:                                     ; preds = %cond.end.58
  br label %cond.end.67

cond.false.64:                                    ; preds = %cond.end.58
  %54 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left65 = getelementptr inbounds %struct.interval, %struct.interval* %54, i32 0, i32 2
  %55 = load %struct.interval*, %struct.interval** %left65, align 8
  %total_length66 = getelementptr inbounds %struct.interval, %struct.interval* %55, i32 0, i32 0
  %56 = load i64, i64* %total_length66, align 8
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.64, %cond.true.63
  %cond68 = phi i64 [ 0, %cond.true.63 ], [ %56, %cond.false.64 ]
  %sub69 = sub nsw i64 %sub60, %cond68
  br label %cond.end.70

cond.end.70:                                      ; preds = %cond.end.67, %cond.true.44
  %cond71 = phi i64 [ 0, %cond.true.44 ], [ %sub69, %cond.end.67 ]
  %57 = load i64, i64* %len, align 8
  %cmp72 = icmp eq i64 %cond71, %57
  br i1 %cmp72, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %cond.end.70
  br label %do.end

if.end.74:                                        ; preds = %cond.end.70
  %58 = load %struct.interval*, %struct.interval** %i.addr, align 8
  store %struct.interval* %58, %struct.interval** %prev_changed, align 8
  %59 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %cmp75 = icmp eq %struct.interval* %59, null
  br i1 %cmp75, label %cond.true.76, label %cond.false.77

cond.true.76:                                     ; preds = %if.end.74
  br label %cond.end.102

cond.false.77:                                    ; preds = %if.end.74
  %60 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %cmp78 = icmp eq %struct.interval* %60, null
  br i1 %cmp78, label %cond.true.79, label %cond.false.80

cond.true.79:                                     ; preds = %cond.false.77
  br label %cond.end.82

cond.false.80:                                    ; preds = %cond.false.77
  %61 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %total_length81 = getelementptr inbounds %struct.interval, %struct.interval* %61, i32 0, i32 0
  %62 = load i64, i64* %total_length81, align 8
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.false.80, %cond.true.79
  %cond83 = phi i64 [ 0, %cond.true.79 ], [ %62, %cond.false.80 ]
  %63 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right84 = getelementptr inbounds %struct.interval, %struct.interval* %63, i32 0, i32 3
  %64 = load %struct.interval*, %struct.interval** %right84, align 8
  %cmp85 = icmp eq %struct.interval* %64, null
  br i1 %cmp85, label %cond.true.86, label %cond.false.87

cond.true.86:                                     ; preds = %cond.end.82
  br label %cond.end.90

cond.false.87:                                    ; preds = %cond.end.82
  %65 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right88 = getelementptr inbounds %struct.interval, %struct.interval* %65, i32 0, i32 3
  %66 = load %struct.interval*, %struct.interval** %right88, align 8
  %total_length89 = getelementptr inbounds %struct.interval, %struct.interval* %66, i32 0, i32 0
  %67 = load i64, i64* %total_length89, align 8
  br label %cond.end.90

cond.end.90:                                      ; preds = %cond.false.87, %cond.true.86
  %cond91 = phi i64 [ 0, %cond.true.86 ], [ %67, %cond.false.87 ]
  %sub92 = sub nsw i64 %cond83, %cond91
  %68 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left93 = getelementptr inbounds %struct.interval, %struct.interval* %68, i32 0, i32 2
  %69 = load %struct.interval*, %struct.interval** %left93, align 8
  %cmp94 = icmp eq %struct.interval* %69, null
  br i1 %cmp94, label %cond.true.95, label %cond.false.96

cond.true.95:                                     ; preds = %cond.end.90
  br label %cond.end.99

cond.false.96:                                    ; preds = %cond.end.90
  %70 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left97 = getelementptr inbounds %struct.interval, %struct.interval* %70, i32 0, i32 2
  %71 = load %struct.interval*, %struct.interval** %left97, align 8
  %total_length98 = getelementptr inbounds %struct.interval, %struct.interval* %71, i32 0, i32 0
  %72 = load i64, i64* %total_length98, align 8
  br label %cond.end.99

cond.end.99:                                      ; preds = %cond.false.96, %cond.true.95
  %cond100 = phi i64 [ 0, %cond.true.95 ], [ %72, %cond.false.96 ]
  %sub101 = sub nsw i64 %sub92, %cond100
  br label %cond.end.102

cond.end.102:                                     ; preds = %cond.end.99, %cond.true.76
  %cond103 = phi i64 [ 0, %cond.true.76 ], [ %sub101, %cond.end.99 ]
  %73 = load i64, i64* %len, align 8
  %sub104 = sub nsw i64 %73, %cond103
  store i64 %sub104, i64* %len, align 8
  %74 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %call105 = call %struct.interval* @next_interval(%struct.interval* %74)
  store %struct.interval* %call105, %struct.interval** %i.addr, align 8
  br label %if.end.106

if.end.106:                                       ; preds = %cond.end.102, %if.end.12
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.106
  %75 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %cmp107 = icmp eq %struct.interval* %75, null
  br i1 %cmp107, label %cond.true.108, label %cond.false.109

cond.true.108:                                    ; preds = %do.body
  br label %cond.end.134

cond.false.109:                                   ; preds = %do.body
  %76 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %cmp110 = icmp eq %struct.interval* %76, null
  br i1 %cmp110, label %cond.true.111, label %cond.false.112

cond.true.111:                                    ; preds = %cond.false.109
  br label %cond.end.114

cond.false.112:                                   ; preds = %cond.false.109
  %77 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %total_length113 = getelementptr inbounds %struct.interval, %struct.interval* %77, i32 0, i32 0
  %78 = load i64, i64* %total_length113, align 8
  br label %cond.end.114

cond.end.114:                                     ; preds = %cond.false.112, %cond.true.111
  %cond115 = phi i64 [ 0, %cond.true.111 ], [ %78, %cond.false.112 ]
  %79 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right116 = getelementptr inbounds %struct.interval, %struct.interval* %79, i32 0, i32 3
  %80 = load %struct.interval*, %struct.interval** %right116, align 8
  %cmp117 = icmp eq %struct.interval* %80, null
  br i1 %cmp117, label %cond.true.118, label %cond.false.119

cond.true.118:                                    ; preds = %cond.end.114
  br label %cond.end.122

cond.false.119:                                   ; preds = %cond.end.114
  %81 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right120 = getelementptr inbounds %struct.interval, %struct.interval* %81, i32 0, i32 3
  %82 = load %struct.interval*, %struct.interval** %right120, align 8
  %total_length121 = getelementptr inbounds %struct.interval, %struct.interval* %82, i32 0, i32 0
  %83 = load i64, i64* %total_length121, align 8
  br label %cond.end.122

cond.end.122:                                     ; preds = %cond.false.119, %cond.true.118
  %cond123 = phi i64 [ 0, %cond.true.118 ], [ %83, %cond.false.119 ]
  %sub124 = sub nsw i64 %cond115, %cond123
  %84 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left125 = getelementptr inbounds %struct.interval, %struct.interval* %84, i32 0, i32 2
  %85 = load %struct.interval*, %struct.interval** %left125, align 8
  %cmp126 = icmp eq %struct.interval* %85, null
  br i1 %cmp126, label %cond.true.127, label %cond.false.128

cond.true.127:                                    ; preds = %cond.end.122
  br label %cond.end.131

cond.false.128:                                   ; preds = %cond.end.122
  %86 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left129 = getelementptr inbounds %struct.interval, %struct.interval* %86, i32 0, i32 2
  %87 = load %struct.interval*, %struct.interval** %left129, align 8
  %total_length130 = getelementptr inbounds %struct.interval, %struct.interval* %87, i32 0, i32 0
  %88 = load i64, i64* %total_length130, align 8
  br label %cond.end.131

cond.end.131:                                     ; preds = %cond.false.128, %cond.true.127
  %cond132 = phi i64 [ 0, %cond.true.127 ], [ %88, %cond.false.128 ]
  %sub133 = sub nsw i64 %sub124, %cond132
  br label %cond.end.134

cond.end.134:                                     ; preds = %cond.end.131, %cond.true.108
  %cond135 = phi i64 [ 0, %cond.true.108 ], [ %sub133, %cond.end.131 ]
  %89 = load i64, i64* %len, align 8
  %cmp136 = icmp sge i64 %cond135, %89
  br i1 %cmp136, label %if.then.137, label %if.end.174

if.then.137:                                      ; preds = %cond.end.134
  %90 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %cmp138 = icmp eq %struct.interval* %90, null
  br i1 %cmp138, label %cond.true.139, label %cond.false.140

cond.true.139:                                    ; preds = %if.then.137
  br label %cond.end.165

cond.false.140:                                   ; preds = %if.then.137
  %91 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %cmp141 = icmp eq %struct.interval* %91, null
  br i1 %cmp141, label %cond.true.142, label %cond.false.143

cond.true.142:                                    ; preds = %cond.false.140
  br label %cond.end.145

cond.false.143:                                   ; preds = %cond.false.140
  %92 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %total_length144 = getelementptr inbounds %struct.interval, %struct.interval* %92, i32 0, i32 0
  %93 = load i64, i64* %total_length144, align 8
  br label %cond.end.145

cond.end.145:                                     ; preds = %cond.false.143, %cond.true.142
  %cond146 = phi i64 [ 0, %cond.true.142 ], [ %93, %cond.false.143 ]
  %94 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right147 = getelementptr inbounds %struct.interval, %struct.interval* %94, i32 0, i32 3
  %95 = load %struct.interval*, %struct.interval** %right147, align 8
  %cmp148 = icmp eq %struct.interval* %95, null
  br i1 %cmp148, label %cond.true.149, label %cond.false.150

cond.true.149:                                    ; preds = %cond.end.145
  br label %cond.end.153

cond.false.150:                                   ; preds = %cond.end.145
  %96 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right151 = getelementptr inbounds %struct.interval, %struct.interval* %96, i32 0, i32 3
  %97 = load %struct.interval*, %struct.interval** %right151, align 8
  %total_length152 = getelementptr inbounds %struct.interval, %struct.interval* %97, i32 0, i32 0
  %98 = load i64, i64* %total_length152, align 8
  br label %cond.end.153

cond.end.153:                                     ; preds = %cond.false.150, %cond.true.149
  %cond154 = phi i64 [ 0, %cond.true.149 ], [ %98, %cond.false.150 ]
  %sub155 = sub nsw i64 %cond146, %cond154
  %99 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left156 = getelementptr inbounds %struct.interval, %struct.interval* %99, i32 0, i32 2
  %100 = load %struct.interval*, %struct.interval** %left156, align 8
  %cmp157 = icmp eq %struct.interval* %100, null
  br i1 %cmp157, label %cond.true.158, label %cond.false.159

cond.true.158:                                    ; preds = %cond.end.153
  br label %cond.end.162

cond.false.159:                                   ; preds = %cond.end.153
  %101 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left160 = getelementptr inbounds %struct.interval, %struct.interval* %101, i32 0, i32 2
  %102 = load %struct.interval*, %struct.interval** %left160, align 8
  %total_length161 = getelementptr inbounds %struct.interval, %struct.interval* %102, i32 0, i32 0
  %103 = load i64, i64* %total_length161, align 8
  br label %cond.end.162

cond.end.162:                                     ; preds = %cond.false.159, %cond.true.158
  %cond163 = phi i64 [ 0, %cond.true.158 ], [ %103, %cond.false.159 ]
  %sub164 = sub nsw i64 %sub155, %cond163
  br label %cond.end.165

cond.end.165:                                     ; preds = %cond.end.162, %cond.true.139
  %cond166 = phi i64 [ 0, %cond.true.139 ], [ %sub164, %cond.end.162 ]
  %104 = load i64, i64* %len, align 8
  %cmp167 = icmp sgt i64 %cond166, %104
  br i1 %cmp167, label %if.then.168, label %if.end.170

if.then.168:                                      ; preds = %cond.end.165
  %105 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %106 = load i64, i64* %len, align 8
  %call169 = call %struct.interval* @split_interval_left(%struct.interval* %105, i64 %106)
  store %struct.interval* %call169, %struct.interval** %i.addr, align 8
  br label %if.end.170

if.end.170:                                       ; preds = %if.then.168, %cond.end.165
  %107 = load i64, i64* %properties.addr, align 8
  %108 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %109 = load i64, i64* %object.addr, align 8
  call void @set_properties(i64 %107, %struct.interval* %108, i64 %109)
  %110 = load %struct.interval*, %struct.interval** %prev_changed, align 8
  %tobool = icmp ne %struct.interval* %110, null
  br i1 %tobool, label %if.then.171, label %if.end.173

if.then.171:                                      ; preds = %if.end.170
  %111 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %call172 = call %struct.interval* @merge_interval_left(%struct.interval* %111)
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.171, %if.end.170
  br label %do.end

if.end.174:                                       ; preds = %cond.end.134
  %112 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %cmp175 = icmp eq %struct.interval* %112, null
  br i1 %cmp175, label %cond.true.176, label %cond.false.177

cond.true.176:                                    ; preds = %if.end.174
  br label %cond.end.202

cond.false.177:                                   ; preds = %if.end.174
  %113 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %cmp178 = icmp eq %struct.interval* %113, null
  br i1 %cmp178, label %cond.true.179, label %cond.false.180

cond.true.179:                                    ; preds = %cond.false.177
  br label %cond.end.182

cond.false.180:                                   ; preds = %cond.false.177
  %114 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %total_length181 = getelementptr inbounds %struct.interval, %struct.interval* %114, i32 0, i32 0
  %115 = load i64, i64* %total_length181, align 8
  br label %cond.end.182

cond.end.182:                                     ; preds = %cond.false.180, %cond.true.179
  %cond183 = phi i64 [ 0, %cond.true.179 ], [ %115, %cond.false.180 ]
  %116 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right184 = getelementptr inbounds %struct.interval, %struct.interval* %116, i32 0, i32 3
  %117 = load %struct.interval*, %struct.interval** %right184, align 8
  %cmp185 = icmp eq %struct.interval* %117, null
  br i1 %cmp185, label %cond.true.186, label %cond.false.187

cond.true.186:                                    ; preds = %cond.end.182
  br label %cond.end.190

cond.false.187:                                   ; preds = %cond.end.182
  %118 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right188 = getelementptr inbounds %struct.interval, %struct.interval* %118, i32 0, i32 3
  %119 = load %struct.interval*, %struct.interval** %right188, align 8
  %total_length189 = getelementptr inbounds %struct.interval, %struct.interval* %119, i32 0, i32 0
  %120 = load i64, i64* %total_length189, align 8
  br label %cond.end.190

cond.end.190:                                     ; preds = %cond.false.187, %cond.true.186
  %cond191 = phi i64 [ 0, %cond.true.186 ], [ %120, %cond.false.187 ]
  %sub192 = sub nsw i64 %cond183, %cond191
  %121 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left193 = getelementptr inbounds %struct.interval, %struct.interval* %121, i32 0, i32 2
  %122 = load %struct.interval*, %struct.interval** %left193, align 8
  %cmp194 = icmp eq %struct.interval* %122, null
  br i1 %cmp194, label %cond.true.195, label %cond.false.196

cond.true.195:                                    ; preds = %cond.end.190
  br label %cond.end.199

cond.false.196:                                   ; preds = %cond.end.190
  %123 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left197 = getelementptr inbounds %struct.interval, %struct.interval* %123, i32 0, i32 2
  %124 = load %struct.interval*, %struct.interval** %left197, align 8
  %total_length198 = getelementptr inbounds %struct.interval, %struct.interval* %124, i32 0, i32 0
  %125 = load i64, i64* %total_length198, align 8
  br label %cond.end.199

cond.end.199:                                     ; preds = %cond.false.196, %cond.true.195
  %cond200 = phi i64 [ 0, %cond.true.195 ], [ %125, %cond.false.196 ]
  %sub201 = sub nsw i64 %sub192, %cond200
  br label %cond.end.202

cond.end.202:                                     ; preds = %cond.end.199, %cond.true.176
  %cond203 = phi i64 [ 0, %cond.true.176 ], [ %sub201, %cond.end.199 ]
  %126 = load i64, i64* %len, align 8
  %sub204 = sub nsw i64 %126, %cond203
  store i64 %sub204, i64* %len, align 8
  %127 = load i64, i64* %properties.addr, align 8
  %128 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %129 = load i64, i64* %object.addr, align 8
  call void @set_properties(i64 %127, %struct.interval* %128, i64 %129)
  %130 = load %struct.interval*, %struct.interval** %prev_changed, align 8
  %tobool205 = icmp ne %struct.interval* %130, null
  br i1 %tobool205, label %if.else.207, label %if.then.206

if.then.206:                                      ; preds = %cond.end.202
  %131 = load %struct.interval*, %struct.interval** %i.addr, align 8
  store %struct.interval* %131, %struct.interval** %prev_changed, align 8
  br label %if.end.209

if.else.207:                                      ; preds = %cond.end.202
  %132 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %call208 = call %struct.interval* @merge_interval_left(%struct.interval* %132)
  store %struct.interval* %call208, %struct.interval** %i.addr, align 8
  store %struct.interval* %call208, %struct.interval** %prev_changed, align 8
  br label %if.end.209

if.end.209:                                       ; preds = %if.else.207, %if.then.206
  %133 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %call210 = call %struct.interval* @next_interval(%struct.interval* %133)
  store %struct.interval* %call210, %struct.interval** %i.addr, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end.209
  %134 = load i64, i64* %len, align 8
  %cmp211 = icmp sgt i64 %134, 0
  br i1 %cmp211, label %do.body, label %do.end

do.end:                                           ; preds = %if.else.11, %if.then.40, %if.then.73, %if.end.173, %do.cond
  ret void
}

declare void @signal_after_change(i64, i64, i64) #1

declare %struct.interval* @split_interval_right(%struct.interval*, i64) #1

declare void @copy_properties(%struct.interval*, %struct.interval*) #1

declare %struct.interval* @split_interval_left(%struct.interval*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @set_properties(i64 %properties, %struct.interval* %interval, i64 %object) #0 {
entry:
  %properties.addr = alloca i64, align 8
  %interval.addr = alloca %struct.interval*, align 8
  %object.addr = alloca i64, align 8
  %sym = alloca i64, align 8
  %value = alloca i64, align 8
  store i64 %properties, i64* %properties.addr, align 8
  store %struct.interval* %interval, %struct.interval** %interval.addr, align 8
  store i64 %object, i64* %object.addr, align 8
  %0 = load i64, i64* %object.addr, align 8
  %call = call zeroext i1 @BUFFERP(i64 %0)
  br i1 %call, label %if.then, label %if.end.112

if.then:                                          ; preds = %entry
  %1 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %plist = getelementptr inbounds %struct.interval, %struct.interval* %1, i32 0, i32 6
  %2 = load i64, i64* %plist, align 8
  store i64 %2, i64* %sym, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i64, i64* %sym, align 8
  %and = and i64 %3, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %4 = load i64, i64* %sym, align 8
  %sub = sub nsw i64 %4, 3
  %5 = inttoptr i64 %sub to i8*
  %6 = bitcast i8* %5 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %6, i32 0, i32 1
  %cdr = bitcast %union.anon.6* %u to i64*
  %7 = load i64, i64* %cdr, align 8
  store i64 %7, i64* %value, align 8
  %8 = load i64, i64* %value, align 8
  %and2 = and i64 %8, 7
  %conv3 = trunc i64 %and2 to i32
  %cmp4 = icmp eq i32 %conv3, 3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %9 = phi i1 [ false, %for.cond ], [ %cmp4, %land.rhs ]
  br i1 %9, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %10 = load i64, i64* %properties.addr, align 8
  %11 = load i64, i64* %sym, align 8
  %sub6 = sub nsw i64 %11, 3
  %12 = inttoptr i64 %sub6 to i8*
  %13 = bitcast i8* %12 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %13, i32 0, i32 0
  %14 = load i64, i64* %car, align 8
  %call7 = call i64 @property_value(i64 %10, i64 %14)
  %15 = load i64, i64* %value, align 8
  %sub8 = sub nsw i64 %15, 3
  %16 = inttoptr i64 %sub8 to i8*
  %17 = bitcast i8* %16 to %struct.Lisp_Cons*
  %car9 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %17, i32 0, i32 0
  %18 = load i64, i64* %car9, align 8
  %cmp10 = icmp eq i64 %call7, %18
  br i1 %cmp10, label %if.end, label %if.then.12

if.then.12:                                       ; preds = %for.body
  %19 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %position = getelementptr inbounds %struct.interval, %struct.interval* %19, i32 0, i32 1
  %20 = load i64, i64* %position, align 8
  %21 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %cmp13 = icmp eq %struct.interval* %21, null
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.12
  br label %cond.end.37

cond.false:                                       ; preds = %if.then.12
  %22 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %cmp15 = icmp eq %struct.interval* %22, null
  br i1 %cmp15, label %cond.true.17, label %cond.false.18

cond.true.17:                                     ; preds = %cond.false
  br label %cond.end

cond.false.18:                                    ; preds = %cond.false
  %23 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %total_length = getelementptr inbounds %struct.interval, %struct.interval* %23, i32 0, i32 0
  %24 = load i64, i64* %total_length, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.18, %cond.true.17
  %cond = phi i64 [ 0, %cond.true.17 ], [ %24, %cond.false.18 ]
  %25 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %right = getelementptr inbounds %struct.interval, %struct.interval* %25, i32 0, i32 3
  %26 = load %struct.interval*, %struct.interval** %right, align 8
  %cmp19 = icmp eq %struct.interval* %26, null
  br i1 %cmp19, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %cond.end
  br label %cond.end.25

cond.false.22:                                    ; preds = %cond.end
  %27 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %right23 = getelementptr inbounds %struct.interval, %struct.interval* %27, i32 0, i32 3
  %28 = load %struct.interval*, %struct.interval** %right23, align 8
  %total_length24 = getelementptr inbounds %struct.interval, %struct.interval* %28, i32 0, i32 0
  %29 = load i64, i64* %total_length24, align 8
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.22, %cond.true.21
  %cond26 = phi i64 [ 0, %cond.true.21 ], [ %29, %cond.false.22 ]
  %sub27 = sub nsw i64 %cond, %cond26
  %30 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %left = getelementptr inbounds %struct.interval, %struct.interval* %30, i32 0, i32 2
  %31 = load %struct.interval*, %struct.interval** %left, align 8
  %cmp28 = icmp eq %struct.interval* %31, null
  br i1 %cmp28, label %cond.true.30, label %cond.false.31

cond.true.30:                                     ; preds = %cond.end.25
  br label %cond.end.34

cond.false.31:                                    ; preds = %cond.end.25
  %32 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %left32 = getelementptr inbounds %struct.interval, %struct.interval* %32, i32 0, i32 2
  %33 = load %struct.interval*, %struct.interval** %left32, align 8
  %total_length33 = getelementptr inbounds %struct.interval, %struct.interval* %33, i32 0, i32 0
  %34 = load i64, i64* %total_length33, align 8
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.false.31, %cond.true.30
  %cond35 = phi i64 [ 0, %cond.true.30 ], [ %34, %cond.false.31 ]
  %sub36 = sub nsw i64 %sub27, %cond35
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.end.34, %cond.true
  %cond38 = phi i64 [ 0, %cond.true ], [ %sub36, %cond.end.34 ]
  %35 = load i64, i64* %sym, align 8
  %sub39 = sub nsw i64 %35, 3
  %36 = inttoptr i64 %sub39 to i8*
  %37 = bitcast i8* %36 to %struct.Lisp_Cons*
  %car40 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %37, i32 0, i32 0
  %38 = load i64, i64* %car40, align 8
  %39 = load i64, i64* %value, align 8
  %sub41 = sub nsw i64 %39, 3
  %40 = inttoptr i64 %sub41 to i8*
  %41 = bitcast i8* %40 to %struct.Lisp_Cons*
  %car42 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %41, i32 0, i32 0
  %42 = load i64, i64* %car42, align 8
  %43 = load i64, i64* %object.addr, align 8
  call void @record_property_change(i64 %20, i64 %cond38, i64 %38, i64 %42, i64 %43)
  br label %if.end

if.end:                                           ; preds = %cond.end.37, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %44 = load i64, i64* %value, align 8
  %sub43 = sub nsw i64 %44, 3
  %45 = inttoptr i64 %sub43 to i8*
  %46 = bitcast i8* %45 to %struct.Lisp_Cons*
  %u44 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %46, i32 0, i32 1
  %cdr45 = bitcast %union.anon.6* %u44 to i64*
  %47 = load i64, i64* %cdr45, align 8
  store i64 %47, i64* %sym, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %48 = load i64, i64* %properties.addr, align 8
  store i64 %48, i64* %sym, align 8
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.107, %for.end
  %49 = load i64, i64* %sym, align 8
  %and47 = and i64 %49, 7
  %conv48 = trunc i64 %and47 to i32
  %cmp49 = icmp eq i32 %conv48, 3
  br i1 %cmp49, label %land.rhs.51, label %land.end.59

land.rhs.51:                                      ; preds = %for.cond.46
  %50 = load i64, i64* %sym, align 8
  %sub52 = sub nsw i64 %50, 3
  %51 = inttoptr i64 %sub52 to i8*
  %52 = bitcast i8* %51 to %struct.Lisp_Cons*
  %u53 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %52, i32 0, i32 1
  %cdr54 = bitcast %union.anon.6* %u53 to i64*
  %53 = load i64, i64* %cdr54, align 8
  store i64 %53, i64* %value, align 8
  %54 = load i64, i64* %value, align 8
  %and55 = and i64 %54, 7
  %conv56 = trunc i64 %and55 to i32
  %cmp57 = icmp eq i32 %conv56, 3
  br label %land.end.59

land.end.59:                                      ; preds = %land.rhs.51, %for.cond.46
  %55 = phi i1 [ false, %for.cond.46 ], [ %cmp57, %land.rhs.51 ]
  br i1 %55, label %for.body.60, label %for.end.111

for.body.60:                                      ; preds = %land.end.59
  %56 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %plist61 = getelementptr inbounds %struct.interval, %struct.interval* %56, i32 0, i32 6
  %57 = load i64, i64* %plist61, align 8
  %58 = load i64, i64* %sym, align 8
  %sub62 = sub nsw i64 %58, 3
  %59 = inttoptr i64 %sub62 to i8*
  %60 = bitcast i8* %59 to %struct.Lisp_Cons*
  %car63 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %60, i32 0, i32 0
  %61 = load i64, i64* %car63, align 8
  %call64 = call i64 @property_value(i64 %57, i64 %61)
  %call65 = call i64 @builtin_lisp_symbol(i32 957)
  %cmp66 = icmp eq i64 %call64, %call65
  br i1 %cmp66, label %if.then.68, label %if.end.106

if.then.68:                                       ; preds = %for.body.60
  %62 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %position69 = getelementptr inbounds %struct.interval, %struct.interval* %62, i32 0, i32 1
  %63 = load i64, i64* %position69, align 8
  %64 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %cmp70 = icmp eq %struct.interval* %64, null
  br i1 %cmp70, label %cond.true.72, label %cond.false.73

cond.true.72:                                     ; preds = %if.then.68
  br label %cond.end.101

cond.false.73:                                    ; preds = %if.then.68
  %65 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %cmp74 = icmp eq %struct.interval* %65, null
  br i1 %cmp74, label %cond.true.76, label %cond.false.77

cond.true.76:                                     ; preds = %cond.false.73
  br label %cond.end.79

cond.false.77:                                    ; preds = %cond.false.73
  %66 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %total_length78 = getelementptr inbounds %struct.interval, %struct.interval* %66, i32 0, i32 0
  %67 = load i64, i64* %total_length78, align 8
  br label %cond.end.79

cond.end.79:                                      ; preds = %cond.false.77, %cond.true.76
  %cond80 = phi i64 [ 0, %cond.true.76 ], [ %67, %cond.false.77 ]
  %68 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %right81 = getelementptr inbounds %struct.interval, %struct.interval* %68, i32 0, i32 3
  %69 = load %struct.interval*, %struct.interval** %right81, align 8
  %cmp82 = icmp eq %struct.interval* %69, null
  br i1 %cmp82, label %cond.true.84, label %cond.false.85

cond.true.84:                                     ; preds = %cond.end.79
  br label %cond.end.88

cond.false.85:                                    ; preds = %cond.end.79
  %70 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %right86 = getelementptr inbounds %struct.interval, %struct.interval* %70, i32 0, i32 3
  %71 = load %struct.interval*, %struct.interval** %right86, align 8
  %total_length87 = getelementptr inbounds %struct.interval, %struct.interval* %71, i32 0, i32 0
  %72 = load i64, i64* %total_length87, align 8
  br label %cond.end.88

cond.end.88:                                      ; preds = %cond.false.85, %cond.true.84
  %cond89 = phi i64 [ 0, %cond.true.84 ], [ %72, %cond.false.85 ]
  %sub90 = sub nsw i64 %cond80, %cond89
  %73 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %left91 = getelementptr inbounds %struct.interval, %struct.interval* %73, i32 0, i32 2
  %74 = load %struct.interval*, %struct.interval** %left91, align 8
  %cmp92 = icmp eq %struct.interval* %74, null
  br i1 %cmp92, label %cond.true.94, label %cond.false.95

cond.true.94:                                     ; preds = %cond.end.88
  br label %cond.end.98

cond.false.95:                                    ; preds = %cond.end.88
  %75 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %left96 = getelementptr inbounds %struct.interval, %struct.interval* %75, i32 0, i32 2
  %76 = load %struct.interval*, %struct.interval** %left96, align 8
  %total_length97 = getelementptr inbounds %struct.interval, %struct.interval* %76, i32 0, i32 0
  %77 = load i64, i64* %total_length97, align 8
  br label %cond.end.98

cond.end.98:                                      ; preds = %cond.false.95, %cond.true.94
  %cond99 = phi i64 [ 0, %cond.true.94 ], [ %77, %cond.false.95 ]
  %sub100 = sub nsw i64 %sub90, %cond99
  br label %cond.end.101

cond.end.101:                                     ; preds = %cond.end.98, %cond.true.72
  %cond102 = phi i64 [ 0, %cond.true.72 ], [ %sub100, %cond.end.98 ]
  %78 = load i64, i64* %sym, align 8
  %sub103 = sub nsw i64 %78, 3
  %79 = inttoptr i64 %sub103 to i8*
  %80 = bitcast i8* %79 to %struct.Lisp_Cons*
  %car104 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %80, i32 0, i32 0
  %81 = load i64, i64* %car104, align 8
  %call105 = call i64 @builtin_lisp_symbol(i32 0)
  %82 = load i64, i64* %object.addr, align 8
  call void @record_property_change(i64 %63, i64 %cond102, i64 %81, i64 %call105, i64 %82)
  br label %if.end.106

if.end.106:                                       ; preds = %cond.end.101, %for.body.60
  br label %for.inc.107

for.inc.107:                                      ; preds = %if.end.106
  %83 = load i64, i64* %value, align 8
  %sub108 = sub nsw i64 %83, 3
  %84 = inttoptr i64 %sub108 to i8*
  %85 = bitcast i8* %84 to %struct.Lisp_Cons*
  %u109 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %85, i32 0, i32 1
  %cdr110 = bitcast %union.anon.6* %u109 to i64*
  %86 = load i64, i64* %cdr110, align 8
  store i64 %86, i64* %sym, align 8
  br label %for.cond.46

for.end.111:                                      ; preds = %land.end.59
  br label %if.end.112

if.end.112:                                       ; preds = %for.end.111, %entry
  %87 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %88 = load i64, i64* %properties.addr, align 8
  %call113 = call i64 @Fcopy_sequence(i64 %88)
  call void @set_interval_plist(%struct.interval* %87, i64 %call113)
  ret void
}

declare %struct.interval* @merge_interval_left(%struct.interval*) #1

; Function Attrs: nounwind uwtable
define i64 @Fremove_text_properties(i64 %start, i64 %end, i64 %properties, i64 %object) #0 {
entry:
  %retval = alloca i64, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %properties.addr = alloca i64, align 8
  %object.addr = alloca i64, align 8
  %i = alloca %struct.interval*, align 8
  %unchanged = alloca %struct.interval*, align 8
  %s = alloca i64, align 8
  %len = alloca i64, align 8
  %modified = alloca i8, align 1
  %first_time = alloca i8, align 1
  %got = alloca i64, align 8
  %prev_total_length = alloca i64, align 8
  %prev_pos = alloca i64, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  store i64 %properties, i64* %properties.addr, align 8
  store i64 %object, i64* %object.addr, align 8
  store i8 0, i8* %modified, align 1
  store i8 1, i8* %first_time, align 1
  %0 = load i64, i64* %object.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %2 = bitcast %struct.buffer* %1 to i8*
  %call1 = call i64 @make_lisp_ptr(i8* %2, i32 5)
  store i64 %call1, i64* %object.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %retry

retry:                                            ; preds = %if.then.96, %if.end
  %3 = load i64, i64* %object.addr, align 8
  %call2 = call %struct.interval* @validate_interval_range(i64 %3, i64* %start.addr, i64* %end.addr, i1 zeroext false)
  store %struct.interval* %call2, %struct.interval** %i, align 8
  %4 = load %struct.interval*, %struct.interval** %i, align 8
  %tobool = icmp ne %struct.interval* %4, null
  br i1 %tobool, label %if.end.5, label %if.then.3

if.then.3:                                        ; preds = %retry
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call4, i64* %retval
  br label %return

if.end.5:                                         ; preds = %retry
  %5 = load i64, i64* %start.addr, align 8
  %shr = ashr i64 %5, 2
  store i64 %shr, i64* %s, align 8
  %6 = load i64, i64* %end.addr, align 8
  %shr6 = ashr i64 %6, 2
  %7 = load i64, i64* %s, align 8
  %sub = sub nsw i64 %shr6, %7
  store i64 %sub, i64* %len, align 8
  %8 = load i64, i64* %properties.addr, align 8
  %9 = load %struct.interval*, %struct.interval** %i, align 8
  %call7 = call zeroext i1 @interval_has_some_properties(i64 %8, %struct.interval* %9)
  br i1 %call7, label %if.else, label %if.then.8

if.then.8:                                        ; preds = %if.end.5
  %10 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp9 = icmp eq %struct.interval* %10, null
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.8
  br label %cond.end.29

cond.false:                                       ; preds = %if.then.8
  %11 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp10 = icmp eq %struct.interval* %11, null
  br i1 %cmp10, label %cond.true.11, label %cond.false.12

cond.true.11:                                     ; preds = %cond.false
  br label %cond.end

cond.false.12:                                    ; preds = %cond.false
  %12 = load %struct.interval*, %struct.interval** %i, align 8
  %total_length = getelementptr inbounds %struct.interval, %struct.interval* %12, i32 0, i32 0
  %13 = load i64, i64* %total_length, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.12, %cond.true.11
  %cond = phi i64 [ 0, %cond.true.11 ], [ %13, %cond.false.12 ]
  %14 = load %struct.interval*, %struct.interval** %i, align 8
  %right = getelementptr inbounds %struct.interval, %struct.interval* %14, i32 0, i32 3
  %15 = load %struct.interval*, %struct.interval** %right, align 8
  %cmp13 = icmp eq %struct.interval* %15, null
  br i1 %cmp13, label %cond.true.14, label %cond.false.15

cond.true.14:                                     ; preds = %cond.end
  br label %cond.end.18

cond.false.15:                                    ; preds = %cond.end
  %16 = load %struct.interval*, %struct.interval** %i, align 8
  %right16 = getelementptr inbounds %struct.interval, %struct.interval* %16, i32 0, i32 3
  %17 = load %struct.interval*, %struct.interval** %right16, align 8
  %total_length17 = getelementptr inbounds %struct.interval, %struct.interval* %17, i32 0, i32 0
  %18 = load i64, i64* %total_length17, align 8
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.15, %cond.true.14
  %cond19 = phi i64 [ 0, %cond.true.14 ], [ %18, %cond.false.15 ]
  %sub20 = sub nsw i64 %cond, %cond19
  %19 = load %struct.interval*, %struct.interval** %i, align 8
  %left = getelementptr inbounds %struct.interval, %struct.interval* %19, i32 0, i32 2
  %20 = load %struct.interval*, %struct.interval** %left, align 8
  %cmp21 = icmp eq %struct.interval* %20, null
  br i1 %cmp21, label %cond.true.22, label %cond.false.23

cond.true.22:                                     ; preds = %cond.end.18
  br label %cond.end.26

cond.false.23:                                    ; preds = %cond.end.18
  %21 = load %struct.interval*, %struct.interval** %i, align 8
  %left24 = getelementptr inbounds %struct.interval, %struct.interval* %21, i32 0, i32 2
  %22 = load %struct.interval*, %struct.interval** %left24, align 8
  %total_length25 = getelementptr inbounds %struct.interval, %struct.interval* %22, i32 0, i32 0
  %23 = load i64, i64* %total_length25, align 8
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.23, %cond.true.22
  %cond27 = phi i64 [ 0, %cond.true.22 ], [ %23, %cond.false.23 ]
  %sub28 = sub nsw i64 %sub20, %cond27
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.end.26, %cond.true
  %cond30 = phi i64 [ 0, %cond.true ], [ %sub28, %cond.end.26 ]
  %24 = load i64, i64* %s, align 8
  %25 = load %struct.interval*, %struct.interval** %i, align 8
  %position = getelementptr inbounds %struct.interval, %struct.interval* %25, i32 0, i32 1
  %26 = load i64, i64* %position, align 8
  %sub31 = sub nsw i64 %24, %26
  %sub32 = sub nsw i64 %cond30, %sub31
  store i64 %sub32, i64* %got, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %cond.end.29
  %27 = load i64, i64* %got, align 8
  %28 = load i64, i64* %len, align 8
  %cmp33 = icmp sge i64 %27, %28
  br i1 %cmp33, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %do.body
  %call35 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call35, i64* %retval
  br label %return

if.end.36:                                        ; preds = %do.body
  %29 = load i64, i64* %got, align 8
  %30 = load i64, i64* %len, align 8
  %sub37 = sub nsw i64 %30, %29
  store i64 %sub37, i64* %len, align 8
  %31 = load %struct.interval*, %struct.interval** %i, align 8
  %call38 = call %struct.interval* @next_interval(%struct.interval* %31)
  store %struct.interval* %call38, %struct.interval** %i, align 8
  %32 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp39 = icmp eq %struct.interval* %32, null
  br i1 %cmp39, label %cond.true.40, label %cond.false.41

cond.true.40:                                     ; preds = %if.end.36
  br label %cond.end.66

cond.false.41:                                    ; preds = %if.end.36
  %33 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp42 = icmp eq %struct.interval* %33, null
  br i1 %cmp42, label %cond.true.43, label %cond.false.44

cond.true.43:                                     ; preds = %cond.false.41
  br label %cond.end.46

cond.false.44:                                    ; preds = %cond.false.41
  %34 = load %struct.interval*, %struct.interval** %i, align 8
  %total_length45 = getelementptr inbounds %struct.interval, %struct.interval* %34, i32 0, i32 0
  %35 = load i64, i64* %total_length45, align 8
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.false.44, %cond.true.43
  %cond47 = phi i64 [ 0, %cond.true.43 ], [ %35, %cond.false.44 ]
  %36 = load %struct.interval*, %struct.interval** %i, align 8
  %right48 = getelementptr inbounds %struct.interval, %struct.interval* %36, i32 0, i32 3
  %37 = load %struct.interval*, %struct.interval** %right48, align 8
  %cmp49 = icmp eq %struct.interval* %37, null
  br i1 %cmp49, label %cond.true.50, label %cond.false.51

cond.true.50:                                     ; preds = %cond.end.46
  br label %cond.end.54

cond.false.51:                                    ; preds = %cond.end.46
  %38 = load %struct.interval*, %struct.interval** %i, align 8
  %right52 = getelementptr inbounds %struct.interval, %struct.interval* %38, i32 0, i32 3
  %39 = load %struct.interval*, %struct.interval** %right52, align 8
  %total_length53 = getelementptr inbounds %struct.interval, %struct.interval* %39, i32 0, i32 0
  %40 = load i64, i64* %total_length53, align 8
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.false.51, %cond.true.50
  %cond55 = phi i64 [ 0, %cond.true.50 ], [ %40, %cond.false.51 ]
  %sub56 = sub nsw i64 %cond47, %cond55
  %41 = load %struct.interval*, %struct.interval** %i, align 8
  %left57 = getelementptr inbounds %struct.interval, %struct.interval* %41, i32 0, i32 2
  %42 = load %struct.interval*, %struct.interval** %left57, align 8
  %cmp58 = icmp eq %struct.interval* %42, null
  br i1 %cmp58, label %cond.true.59, label %cond.false.60

cond.true.59:                                     ; preds = %cond.end.54
  br label %cond.end.63

cond.false.60:                                    ; preds = %cond.end.54
  %43 = load %struct.interval*, %struct.interval** %i, align 8
  %left61 = getelementptr inbounds %struct.interval, %struct.interval* %43, i32 0, i32 2
  %44 = load %struct.interval*, %struct.interval** %left61, align 8
  %total_length62 = getelementptr inbounds %struct.interval, %struct.interval* %44, i32 0, i32 0
  %45 = load i64, i64* %total_length62, align 8
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.60, %cond.true.59
  %cond64 = phi i64 [ 0, %cond.true.59 ], [ %45, %cond.false.60 ]
  %sub65 = sub nsw i64 %sub56, %cond64
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.end.63, %cond.true.40
  %cond67 = phi i64 [ 0, %cond.true.40 ], [ %sub65, %cond.end.63 ]
  store i64 %cond67, i64* %got, align 8
  br label %do.cond

do.cond:                                          ; preds = %cond.end.66
  %46 = load i64, i64* %properties.addr, align 8
  %47 = load %struct.interval*, %struct.interval** %i, align 8
  %call68 = call zeroext i1 @interval_has_some_properties(i64 %46, %struct.interval* %47)
  %lnot = xor i1 %call68, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.76

if.else:                                          ; preds = %if.end.5
  %48 = load %struct.interval*, %struct.interval** %i, align 8
  %position69 = getelementptr inbounds %struct.interval, %struct.interval* %48, i32 0, i32 1
  %49 = load i64, i64* %position69, align 8
  %50 = load i64, i64* %s, align 8
  %cmp70 = icmp ne i64 %49, %50
  br i1 %cmp70, label %if.then.71, label %if.end.75

if.then.71:                                       ; preds = %if.else
  %51 = load %struct.interval*, %struct.interval** %i, align 8
  store %struct.interval* %51, %struct.interval** %unchanged, align 8
  %52 = load %struct.interval*, %struct.interval** %unchanged, align 8
  %53 = load i64, i64* %s, align 8
  %54 = load %struct.interval*, %struct.interval** %unchanged, align 8
  %position72 = getelementptr inbounds %struct.interval, %struct.interval* %54, i32 0, i32 1
  %55 = load i64, i64* %position72, align 8
  %sub73 = sub nsw i64 %53, %55
  %call74 = call %struct.interval* @split_interval_right(%struct.interval* %52, i64 %sub73)
  store %struct.interval* %call74, %struct.interval** %i, align 8
  %56 = load %struct.interval*, %struct.interval** %unchanged, align 8
  %57 = load %struct.interval*, %struct.interval** %i, align 8
  call void @copy_properties(%struct.interval* %56, %struct.interval* %57)
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.71, %if.else
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %do.end
  %58 = load i64, i64* %object.addr, align 8
  %call77 = call zeroext i1 @BUFFERP(i64 %58)
  br i1 %call77, label %land.lhs.true, label %if.end.98

land.lhs.true:                                    ; preds = %if.end.76
  %59 = load i8, i8* %first_time, align 1
  %tobool78 = trunc i8 %59 to i1
  br i1 %tobool78, label %if.then.79, label %if.end.98

if.then.79:                                       ; preds = %land.lhs.true
  %60 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp80 = icmp eq %struct.interval* %60, null
  br i1 %cmp80, label %cond.true.81, label %cond.false.82

cond.true.81:                                     ; preds = %if.then.79
  br label %cond.end.84

cond.false.82:                                    ; preds = %if.then.79
  %61 = load %struct.interval*, %struct.interval** %i, align 8
  %total_length83 = getelementptr inbounds %struct.interval, %struct.interval* %61, i32 0, i32 0
  %62 = load i64, i64* %total_length83, align 8
  br label %cond.end.84

cond.end.84:                                      ; preds = %cond.false.82, %cond.true.81
  %cond85 = phi i64 [ 0, %cond.true.81 ], [ %62, %cond.false.82 ]
  store i64 %cond85, i64* %prev_total_length, align 8
  %63 = load %struct.interval*, %struct.interval** %i, align 8
  %position86 = getelementptr inbounds %struct.interval, %struct.interval* %63, i32 0, i32 1
  %64 = load i64, i64* %position86, align 8
  store i64 %64, i64* %prev_pos, align 8
  %65 = load i64, i64* %object.addr, align 8
  %66 = load i64, i64* %start.addr, align 8
  %67 = load i64, i64* %end.addr, align 8
  call void @modify_text_properties(i64 %65, i64 %66, i64 %67)
  %68 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp87 = icmp eq %struct.interval* %68, null
  br i1 %cmp87, label %cond.true.88, label %cond.false.89

cond.true.88:                                     ; preds = %cond.end.84
  br label %cond.end.91

cond.false.89:                                    ; preds = %cond.end.84
  %69 = load %struct.interval*, %struct.interval** %i, align 8
  %total_length90 = getelementptr inbounds %struct.interval, %struct.interval* %69, i32 0, i32 0
  %70 = load i64, i64* %total_length90, align 8
  br label %cond.end.91

cond.end.91:                                      ; preds = %cond.false.89, %cond.true.88
  %cond92 = phi i64 [ 0, %cond.true.88 ], [ %70, %cond.false.89 ]
  %71 = load i64, i64* %prev_total_length, align 8
  %cmp93 = icmp ne i64 %cond92, %71
  br i1 %cmp93, label %if.then.96, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.91
  %72 = load %struct.interval*, %struct.interval** %i, align 8
  %position94 = getelementptr inbounds %struct.interval, %struct.interval* %72, i32 0, i32 1
  %73 = load i64, i64* %position94, align 8
  %74 = load i64, i64* %prev_pos, align 8
  %cmp95 = icmp ne i64 %73, %74
  br i1 %cmp95, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %lor.lhs.false, %cond.end.91
  store i8 0, i8* %first_time, align 1
  br label %retry

if.end.97:                                        ; preds = %lor.lhs.false
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %land.lhs.true, %if.end.76
  br label %for.cond

for.cond:                                         ; preds = %cond.end.231, %if.end.98
  %75 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp99 = icmp eq %struct.interval* %75, null
  br i1 %cmp99, label %cond.true.100, label %cond.false.101

cond.true.100:                                    ; preds = %for.cond
  br label %cond.end.126

cond.false.101:                                   ; preds = %for.cond
  %76 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp102 = icmp eq %struct.interval* %76, null
  br i1 %cmp102, label %cond.true.103, label %cond.false.104

cond.true.103:                                    ; preds = %cond.false.101
  br label %cond.end.106

cond.false.104:                                   ; preds = %cond.false.101
  %77 = load %struct.interval*, %struct.interval** %i, align 8
  %total_length105 = getelementptr inbounds %struct.interval, %struct.interval* %77, i32 0, i32 0
  %78 = load i64, i64* %total_length105, align 8
  br label %cond.end.106

cond.end.106:                                     ; preds = %cond.false.104, %cond.true.103
  %cond107 = phi i64 [ 0, %cond.true.103 ], [ %78, %cond.false.104 ]
  %79 = load %struct.interval*, %struct.interval** %i, align 8
  %right108 = getelementptr inbounds %struct.interval, %struct.interval* %79, i32 0, i32 3
  %80 = load %struct.interval*, %struct.interval** %right108, align 8
  %cmp109 = icmp eq %struct.interval* %80, null
  br i1 %cmp109, label %cond.true.110, label %cond.false.111

cond.true.110:                                    ; preds = %cond.end.106
  br label %cond.end.114

cond.false.111:                                   ; preds = %cond.end.106
  %81 = load %struct.interval*, %struct.interval** %i, align 8
  %right112 = getelementptr inbounds %struct.interval, %struct.interval* %81, i32 0, i32 3
  %82 = load %struct.interval*, %struct.interval** %right112, align 8
  %total_length113 = getelementptr inbounds %struct.interval, %struct.interval* %82, i32 0, i32 0
  %83 = load i64, i64* %total_length113, align 8
  br label %cond.end.114

cond.end.114:                                     ; preds = %cond.false.111, %cond.true.110
  %cond115 = phi i64 [ 0, %cond.true.110 ], [ %83, %cond.false.111 ]
  %sub116 = sub nsw i64 %cond107, %cond115
  %84 = load %struct.interval*, %struct.interval** %i, align 8
  %left117 = getelementptr inbounds %struct.interval, %struct.interval* %84, i32 0, i32 2
  %85 = load %struct.interval*, %struct.interval** %left117, align 8
  %cmp118 = icmp eq %struct.interval* %85, null
  br i1 %cmp118, label %cond.true.119, label %cond.false.120

cond.true.119:                                    ; preds = %cond.end.114
  br label %cond.end.123

cond.false.120:                                   ; preds = %cond.end.114
  %86 = load %struct.interval*, %struct.interval** %i, align 8
  %left121 = getelementptr inbounds %struct.interval, %struct.interval* %86, i32 0, i32 2
  %87 = load %struct.interval*, %struct.interval** %left121, align 8
  %total_length122 = getelementptr inbounds %struct.interval, %struct.interval* %87, i32 0, i32 0
  %88 = load i64, i64* %total_length122, align 8
  br label %cond.end.123

cond.end.123:                                     ; preds = %cond.false.120, %cond.true.119
  %cond124 = phi i64 [ 0, %cond.true.119 ], [ %88, %cond.false.120 ]
  %sub125 = sub nsw i64 %sub116, %cond124
  br label %cond.end.126

cond.end.126:                                     ; preds = %cond.end.123, %cond.true.100
  %cond127 = phi i64 [ 0, %cond.true.100 ], [ %sub125, %cond.end.123 ]
  %89 = load i64, i64* %len, align 8
  %cmp128 = icmp sge i64 %cond127, %89
  br i1 %cmp128, label %if.then.129, label %if.end.203

if.then.129:                                      ; preds = %cond.end.126
  %90 = load i64, i64* %properties.addr, align 8
  %91 = load %struct.interval*, %struct.interval** %i, align 8
  %call130 = call zeroext i1 @interval_has_some_properties(i64 %90, %struct.interval* %91)
  br i1 %call130, label %if.end.143, label %if.then.131

if.then.131:                                      ; preds = %if.then.129
  %92 = load i64, i64* %object.addr, align 8
  %call132 = call zeroext i1 @BUFFERP(i64 %92)
  br i1 %call132, label %if.then.133, label %if.end.141

if.then.133:                                      ; preds = %if.then.131
  %93 = load i64, i64* %start.addr, align 8
  %shr134 = ashr i64 %93, 2
  %94 = load i64, i64* %end.addr, align 8
  %shr135 = ashr i64 %94, 2
  %95 = load i64, i64* %start.addr, align 8
  %shr136 = ashr i64 %95, 2
  %sub137 = sub nsw i64 %shr135, %shr136
  %96 = load i64, i64* %end.addr, align 8
  %shr138 = ashr i64 %96, 2
  %97 = load i64, i64* %start.addr, align 8
  %shr139 = ashr i64 %97, 2
  %sub140 = sub nsw i64 %shr138, %shr139
  call void @signal_after_change(i64 %shr134, i64 %sub137, i64 %sub140)
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.133, %if.then.131
  %call142 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call142, i64* %retval
  br label %return

if.end.143:                                       ; preds = %if.then.129
  %98 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp144 = icmp eq %struct.interval* %98, null
  br i1 %cmp144, label %cond.true.145, label %cond.false.146

cond.true.145:                                    ; preds = %if.end.143
  br label %cond.end.171

cond.false.146:                                   ; preds = %if.end.143
  %99 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp147 = icmp eq %struct.interval* %99, null
  br i1 %cmp147, label %cond.true.148, label %cond.false.149

cond.true.148:                                    ; preds = %cond.false.146
  br label %cond.end.151

cond.false.149:                                   ; preds = %cond.false.146
  %100 = load %struct.interval*, %struct.interval** %i, align 8
  %total_length150 = getelementptr inbounds %struct.interval, %struct.interval* %100, i32 0, i32 0
  %101 = load i64, i64* %total_length150, align 8
  br label %cond.end.151

cond.end.151:                                     ; preds = %cond.false.149, %cond.true.148
  %cond152 = phi i64 [ 0, %cond.true.148 ], [ %101, %cond.false.149 ]
  %102 = load %struct.interval*, %struct.interval** %i, align 8
  %right153 = getelementptr inbounds %struct.interval, %struct.interval* %102, i32 0, i32 3
  %103 = load %struct.interval*, %struct.interval** %right153, align 8
  %cmp154 = icmp eq %struct.interval* %103, null
  br i1 %cmp154, label %cond.true.155, label %cond.false.156

cond.true.155:                                    ; preds = %cond.end.151
  br label %cond.end.159

cond.false.156:                                   ; preds = %cond.end.151
  %104 = load %struct.interval*, %struct.interval** %i, align 8
  %right157 = getelementptr inbounds %struct.interval, %struct.interval* %104, i32 0, i32 3
  %105 = load %struct.interval*, %struct.interval** %right157, align 8
  %total_length158 = getelementptr inbounds %struct.interval, %struct.interval* %105, i32 0, i32 0
  %106 = load i64, i64* %total_length158, align 8
  br label %cond.end.159

cond.end.159:                                     ; preds = %cond.false.156, %cond.true.155
  %cond160 = phi i64 [ 0, %cond.true.155 ], [ %106, %cond.false.156 ]
  %sub161 = sub nsw i64 %cond152, %cond160
  %107 = load %struct.interval*, %struct.interval** %i, align 8
  %left162 = getelementptr inbounds %struct.interval, %struct.interval* %107, i32 0, i32 2
  %108 = load %struct.interval*, %struct.interval** %left162, align 8
  %cmp163 = icmp eq %struct.interval* %108, null
  br i1 %cmp163, label %cond.true.164, label %cond.false.165

cond.true.164:                                    ; preds = %cond.end.159
  br label %cond.end.168

cond.false.165:                                   ; preds = %cond.end.159
  %109 = load %struct.interval*, %struct.interval** %i, align 8
  %left166 = getelementptr inbounds %struct.interval, %struct.interval* %109, i32 0, i32 2
  %110 = load %struct.interval*, %struct.interval** %left166, align 8
  %total_length167 = getelementptr inbounds %struct.interval, %struct.interval* %110, i32 0, i32 0
  %111 = load i64, i64* %total_length167, align 8
  br label %cond.end.168

cond.end.168:                                     ; preds = %cond.false.165, %cond.true.164
  %cond169 = phi i64 [ 0, %cond.true.164 ], [ %111, %cond.false.165 ]
  %sub170 = sub nsw i64 %sub161, %cond169
  br label %cond.end.171

cond.end.171:                                     ; preds = %cond.end.168, %cond.true.145
  %cond172 = phi i64 [ 0, %cond.true.145 ], [ %sub170, %cond.end.168 ]
  %112 = load i64, i64* %len, align 8
  %cmp173 = icmp eq i64 %cond172, %112
  br i1 %cmp173, label %if.then.174, label %if.end.188

if.then.174:                                      ; preds = %cond.end.171
  %113 = load i64, i64* %properties.addr, align 8
  %call175 = call i64 @builtin_lisp_symbol(i32 0)
  %114 = load %struct.interval*, %struct.interval** %i, align 8
  %115 = load i64, i64* %object.addr, align 8
  %call176 = call zeroext i1 @remove_properties(i64 %113, i64 %call175, %struct.interval* %114, i64 %115)
  %116 = load i64, i64* %object.addr, align 8
  %call177 = call zeroext i1 @BUFFERP(i64 %116)
  br i1 %call177, label %if.then.178, label %if.end.186

if.then.178:                                      ; preds = %if.then.174
  %117 = load i64, i64* %start.addr, align 8
  %shr179 = ashr i64 %117, 2
  %118 = load i64, i64* %end.addr, align 8
  %shr180 = ashr i64 %118, 2
  %119 = load i64, i64* %start.addr, align 8
  %shr181 = ashr i64 %119, 2
  %sub182 = sub nsw i64 %shr180, %shr181
  %120 = load i64, i64* %end.addr, align 8
  %shr183 = ashr i64 %120, 2
  %121 = load i64, i64* %start.addr, align 8
  %shr184 = ashr i64 %121, 2
  %sub185 = sub nsw i64 %shr183, %shr184
  call void @signal_after_change(i64 %shr179, i64 %sub182, i64 %sub185)
  br label %if.end.186

if.end.186:                                       ; preds = %if.then.178, %if.then.174
  %call187 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call187, i64* %retval
  br label %return

if.end.188:                                       ; preds = %cond.end.171
  %122 = load %struct.interval*, %struct.interval** %i, align 8
  store %struct.interval* %122, %struct.interval** %unchanged, align 8
  %123 = load %struct.interval*, %struct.interval** %i, align 8
  %124 = load i64, i64* %len, align 8
  %call189 = call %struct.interval* @split_interval_left(%struct.interval* %123, i64 %124)
  store %struct.interval* %call189, %struct.interval** %i, align 8
  %125 = load %struct.interval*, %struct.interval** %unchanged, align 8
  %126 = load %struct.interval*, %struct.interval** %i, align 8
  call void @copy_properties(%struct.interval* %125, %struct.interval* %126)
  %127 = load i64, i64* %properties.addr, align 8
  %call190 = call i64 @builtin_lisp_symbol(i32 0)
  %128 = load %struct.interval*, %struct.interval** %i, align 8
  %129 = load i64, i64* %object.addr, align 8
  %call191 = call zeroext i1 @remove_properties(i64 %127, i64 %call190, %struct.interval* %128, i64 %129)
  %130 = load i64, i64* %object.addr, align 8
  %call192 = call zeroext i1 @BUFFERP(i64 %130)
  br i1 %call192, label %if.then.193, label %if.end.201

if.then.193:                                      ; preds = %if.end.188
  %131 = load i64, i64* %start.addr, align 8
  %shr194 = ashr i64 %131, 2
  %132 = load i64, i64* %end.addr, align 8
  %shr195 = ashr i64 %132, 2
  %133 = load i64, i64* %start.addr, align 8
  %shr196 = ashr i64 %133, 2
  %sub197 = sub nsw i64 %shr195, %shr196
  %134 = load i64, i64* %end.addr, align 8
  %shr198 = ashr i64 %134, 2
  %135 = load i64, i64* %start.addr, align 8
  %shr199 = ashr i64 %135, 2
  %sub200 = sub nsw i64 %shr198, %shr199
  call void @signal_after_change(i64 %shr194, i64 %sub197, i64 %sub200)
  br label %if.end.201

if.end.201:                                       ; preds = %if.then.193, %if.end.188
  %call202 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call202, i64* %retval
  br label %return

if.end.203:                                       ; preds = %cond.end.126
  %136 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp204 = icmp eq %struct.interval* %136, null
  br i1 %cmp204, label %cond.true.205, label %cond.false.206

cond.true.205:                                    ; preds = %if.end.203
  br label %cond.end.231

cond.false.206:                                   ; preds = %if.end.203
  %137 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp207 = icmp eq %struct.interval* %137, null
  br i1 %cmp207, label %cond.true.208, label %cond.false.209

cond.true.208:                                    ; preds = %cond.false.206
  br label %cond.end.211

cond.false.209:                                   ; preds = %cond.false.206
  %138 = load %struct.interval*, %struct.interval** %i, align 8
  %total_length210 = getelementptr inbounds %struct.interval, %struct.interval* %138, i32 0, i32 0
  %139 = load i64, i64* %total_length210, align 8
  br label %cond.end.211

cond.end.211:                                     ; preds = %cond.false.209, %cond.true.208
  %cond212 = phi i64 [ 0, %cond.true.208 ], [ %139, %cond.false.209 ]
  %140 = load %struct.interval*, %struct.interval** %i, align 8
  %right213 = getelementptr inbounds %struct.interval, %struct.interval* %140, i32 0, i32 3
  %141 = load %struct.interval*, %struct.interval** %right213, align 8
  %cmp214 = icmp eq %struct.interval* %141, null
  br i1 %cmp214, label %cond.true.215, label %cond.false.216

cond.true.215:                                    ; preds = %cond.end.211
  br label %cond.end.219

cond.false.216:                                   ; preds = %cond.end.211
  %142 = load %struct.interval*, %struct.interval** %i, align 8
  %right217 = getelementptr inbounds %struct.interval, %struct.interval* %142, i32 0, i32 3
  %143 = load %struct.interval*, %struct.interval** %right217, align 8
  %total_length218 = getelementptr inbounds %struct.interval, %struct.interval* %143, i32 0, i32 0
  %144 = load i64, i64* %total_length218, align 8
  br label %cond.end.219

cond.end.219:                                     ; preds = %cond.false.216, %cond.true.215
  %cond220 = phi i64 [ 0, %cond.true.215 ], [ %144, %cond.false.216 ]
  %sub221 = sub nsw i64 %cond212, %cond220
  %145 = load %struct.interval*, %struct.interval** %i, align 8
  %left222 = getelementptr inbounds %struct.interval, %struct.interval* %145, i32 0, i32 2
  %146 = load %struct.interval*, %struct.interval** %left222, align 8
  %cmp223 = icmp eq %struct.interval* %146, null
  br i1 %cmp223, label %cond.true.224, label %cond.false.225

cond.true.224:                                    ; preds = %cond.end.219
  br label %cond.end.228

cond.false.225:                                   ; preds = %cond.end.219
  %147 = load %struct.interval*, %struct.interval** %i, align 8
  %left226 = getelementptr inbounds %struct.interval, %struct.interval* %147, i32 0, i32 2
  %148 = load %struct.interval*, %struct.interval** %left226, align 8
  %total_length227 = getelementptr inbounds %struct.interval, %struct.interval* %148, i32 0, i32 0
  %149 = load i64, i64* %total_length227, align 8
  br label %cond.end.228

cond.end.228:                                     ; preds = %cond.false.225, %cond.true.224
  %cond229 = phi i64 [ 0, %cond.true.224 ], [ %149, %cond.false.225 ]
  %sub230 = sub nsw i64 %sub221, %cond229
  br label %cond.end.231

cond.end.231:                                     ; preds = %cond.end.228, %cond.true.205
  %cond232 = phi i64 [ 0, %cond.true.205 ], [ %sub230, %cond.end.228 ]
  %150 = load i64, i64* %len, align 8
  %sub233 = sub nsw i64 %150, %cond232
  store i64 %sub233, i64* %len, align 8
  %151 = load i64, i64* %properties.addr, align 8
  %call234 = call i64 @builtin_lisp_symbol(i32 0)
  %152 = load %struct.interval*, %struct.interval** %i, align 8
  %153 = load i64, i64* %object.addr, align 8
  %call235 = call zeroext i1 @remove_properties(i64 %151, i64 %call234, %struct.interval* %152, i64 %153)
  %conv = zext i1 %call235 to i32
  %154 = load i8, i8* %modified, align 1
  %tobool236 = trunc i8 %154 to i1
  %conv237 = zext i1 %tobool236 to i32
  %or = or i32 %conv237, %conv
  %tobool238 = icmp ne i32 %or, 0
  %frombool = zext i1 %tobool238 to i8
  store i8 %frombool, i8* %modified, align 1
  %155 = load %struct.interval*, %struct.interval** %i, align 8
  %call239 = call %struct.interval* @next_interval(%struct.interval* %155)
  store %struct.interval* %call239, %struct.interval** %i, align 8
  br label %for.cond

return:                                           ; preds = %if.end.201, %if.end.186, %if.end.141, %if.then.34, %if.then.3
  %156 = load i64, i64* %retval
  ret i64 %156
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @interval_has_some_properties(i64 %plist, %struct.interval* %i) #0 {
entry:
  %retval = alloca i1, align 1
  %plist.addr = alloca i64, align 8
  %i.addr = alloca %struct.interval*, align 8
  %tail1 = alloca i64, align 8
  %tail2 = alloca i64, align 8
  %sym = alloca i64, align 8
  store i64 %plist, i64* %plist.addr, align 8
  store %struct.interval* %i, %struct.interval** %i.addr, align 8
  %0 = load i64, i64* %plist.addr, align 8
  store i64 %0, i64* %tail1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.14, %entry
  %1 = load i64, i64* %tail1, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %for.body, label %for.end.19

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %tail1, align 8
  %sub = sub nsw i64 %2, 3
  %3 = inttoptr i64 %sub to i8*
  %4 = bitcast i8* %3 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %4, i32 0, i32 0
  %5 = load i64, i64* %car, align 8
  store i64 %5, i64* %sym, align 8
  %6 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %plist2 = getelementptr inbounds %struct.interval, %struct.interval* %6, i32 0, i32 6
  %7 = load i64, i64* %plist2, align 8
  store i64 %7, i64* %tail2, align 8
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %8 = load i64, i64* %tail2, align 8
  %and4 = and i64 %8, 7
  %conv5 = trunc i64 %and4 to i32
  %cmp6 = icmp eq i32 %conv5, 3
  br i1 %cmp6, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.3
  %9 = load i64, i64* %sym, align 8
  %10 = load i64, i64* %tail2, align 8
  %sub9 = sub nsw i64 %10, 3
  %11 = inttoptr i64 %sub9 to i8*
  %12 = bitcast i8* %11 to %struct.Lisp_Cons*
  %car10 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %12, i32 0, i32 0
  %13 = load i64, i64* %car10, align 8
  %cmp11 = icmp eq i64 %9, %13
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.8
  store i1 true, i1* %retval
  br label %return

if.end:                                           ; preds = %for.body.8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i64, i64* %tail2, align 8
  %sub13 = sub nsw i64 %14, 3
  %15 = inttoptr i64 %sub13 to i8*
  %16 = bitcast i8* %15 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %16, i32 0, i32 1
  %cdr = bitcast %union.anon.6* %u to i64*
  %17 = load i64, i64* %cdr, align 8
  %call = call i64 @Fcdr(i64 %17)
  store i64 %call, i64* %tail2, align 8
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.end
  %18 = load i64, i64* %tail1, align 8
  %sub15 = sub nsw i64 %18, 3
  %19 = inttoptr i64 %sub15 to i8*
  %20 = bitcast i8* %19 to %struct.Lisp_Cons*
  %u16 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %20, i32 0, i32 1
  %cdr17 = bitcast %union.anon.6* %u16 to i64*
  %21 = load i64, i64* %cdr17, align 8
  %call18 = call i64 @Fcdr(i64 %21)
  store i64 %call18, i64* %tail1, align 8
  br label %for.cond

for.end.19:                                       ; preds = %for.cond
  store i1 false, i1* %retval
  br label %return

return:                                           ; preds = %for.end.19, %if.then
  %22 = load i1, i1* %retval
  ret i1 %22
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @remove_properties(i64 %plist, i64 %list, %struct.interval* %i, i64 %object) #0 {
entry:
  %plist.addr = alloca i64, align 8
  %list.addr = alloca i64, align 8
  %i.addr = alloca %struct.interval*, align 8
  %object.addr = alloca i64, align 8
  %changed = alloca i8, align 1
  %use_plist = alloca i8, align 1
  %tail1 = alloca i64, align 8
  %current_plist = alloca i64, align 8
  %sym = alloca i64, align 8
  %tail2 = alloca i64, align 8
  %this = alloca i64, align 8
  store i64 %plist, i64* %plist.addr, align 8
  store i64 %list, i64* %list.addr, align 8
  store %struct.interval* %i, %struct.interval** %i.addr, align 8
  store i64 %object, i64* %object.addr, align 8
  store i8 0, i8* %changed, align 1
  %0 = load i64, i64* %plist.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  %lnot = xor i1 %cmp, true
  %frombool = zext i1 %lnot to i8
  store i8 %frombool, i8* %use_plist, align 1
  %1 = load i8, i8* %use_plist, align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i64, i64* %plist.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i64, i64* %list.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %2, %cond.true ], [ %3, %cond.false ]
  store i64 %cond, i64* %tail1, align 8
  %4 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %plist1 = getelementptr inbounds %struct.interval, %struct.interval* %4, i32 0, i32 6
  %5 = load i64, i64* %plist1, align 8
  store i64 %5, i64* %current_plist, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.143, %cond.end
  %6 = load i64, i64* %tail1, align 8
  %and = and i64 %6, 7
  %conv = trunc i64 %and to i32
  %cmp2 = icmp eq i32 %conv, 3
  br i1 %cmp2, label %while.body, label %while.end.144

while.body:                                       ; preds = %while.cond
  %7 = load i64, i64* %tail1, align 8
  %sub = sub nsw i64 %7, 3
  %8 = inttoptr i64 %sub to i8*
  %9 = bitcast i8* %8 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %9, i32 0, i32 0
  %10 = load i64, i64* %car, align 8
  store i64 %10, i64* %sym, align 8
  br label %while.cond.4

while.cond.4:                                     ; preds = %if.end, %while.body
  %11 = load i64, i64* %current_plist, align 8
  %and5 = and i64 %11, 7
  %conv6 = trunc i64 %and5 to i32
  %cmp7 = icmp eq i32 %conv6, 3
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.4
  %12 = load i64, i64* %sym, align 8
  %13 = load i64, i64* %current_plist, align 8
  %sub9 = sub nsw i64 %13, 3
  %14 = inttoptr i64 %sub9 to i8*
  %15 = bitcast i8* %14 to %struct.Lisp_Cons*
  %car10 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %15, i32 0, i32 0
  %16 = load i64, i64* %car10, align 8
  %cmp11 = icmp eq i64 %12, %16
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.4
  %17 = phi i1 [ false, %while.cond.4 ], [ %cmp11, %land.rhs ]
  br i1 %17, label %while.body.13, label %while.end

while.body.13:                                    ; preds = %land.end
  %18 = load i64, i64* %object.addr, align 8
  %call14 = call zeroext i1 @BUFFERP(i64 %18)
  br i1 %call14, label %if.then, label %if.end

if.then:                                          ; preds = %while.body.13
  %19 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %position = getelementptr inbounds %struct.interval, %struct.interval* %19, i32 0, i32 1
  %20 = load i64, i64* %position, align 8
  %21 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %cmp15 = icmp eq %struct.interval* %21, null
  br i1 %cmp15, label %cond.true.17, label %cond.false.18

cond.true.17:                                     ; preds = %if.then
  br label %cond.end.43

cond.false.18:                                    ; preds = %if.then
  %22 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %cmp19 = icmp eq %struct.interval* %22, null
  br i1 %cmp19, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %cond.false.18
  br label %cond.end.23

cond.false.22:                                    ; preds = %cond.false.18
  %23 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %total_length = getelementptr inbounds %struct.interval, %struct.interval* %23, i32 0, i32 0
  %24 = load i64, i64* %total_length, align 8
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.21
  %cond24 = phi i64 [ 0, %cond.true.21 ], [ %24, %cond.false.22 ]
  %25 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right = getelementptr inbounds %struct.interval, %struct.interval* %25, i32 0, i32 3
  %26 = load %struct.interval*, %struct.interval** %right, align 8
  %cmp25 = icmp eq %struct.interval* %26, null
  br i1 %cmp25, label %cond.true.27, label %cond.false.28

cond.true.27:                                     ; preds = %cond.end.23
  br label %cond.end.31

cond.false.28:                                    ; preds = %cond.end.23
  %27 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right29 = getelementptr inbounds %struct.interval, %struct.interval* %27, i32 0, i32 3
  %28 = load %struct.interval*, %struct.interval** %right29, align 8
  %total_length30 = getelementptr inbounds %struct.interval, %struct.interval* %28, i32 0, i32 0
  %29 = load i64, i64* %total_length30, align 8
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.28, %cond.true.27
  %cond32 = phi i64 [ 0, %cond.true.27 ], [ %29, %cond.false.28 ]
  %sub33 = sub nsw i64 %cond24, %cond32
  %30 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left = getelementptr inbounds %struct.interval, %struct.interval* %30, i32 0, i32 2
  %31 = load %struct.interval*, %struct.interval** %left, align 8
  %cmp34 = icmp eq %struct.interval* %31, null
  br i1 %cmp34, label %cond.true.36, label %cond.false.37

cond.true.36:                                     ; preds = %cond.end.31
  br label %cond.end.40

cond.false.37:                                    ; preds = %cond.end.31
  %32 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left38 = getelementptr inbounds %struct.interval, %struct.interval* %32, i32 0, i32 2
  %33 = load %struct.interval*, %struct.interval** %left38, align 8
  %total_length39 = getelementptr inbounds %struct.interval, %struct.interval* %33, i32 0, i32 0
  %34 = load i64, i64* %total_length39, align 8
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.37, %cond.true.36
  %cond41 = phi i64 [ 0, %cond.true.36 ], [ %34, %cond.false.37 ]
  %sub42 = sub nsw i64 %sub33, %cond41
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.end.40, %cond.true.17
  %cond44 = phi i64 [ 0, %cond.true.17 ], [ %sub42, %cond.end.40 ]
  %35 = load i64, i64* %sym, align 8
  %36 = load i64, i64* %current_plist, align 8
  %sub45 = sub nsw i64 %36, 3
  %37 = inttoptr i64 %sub45 to i8*
  %38 = bitcast i8* %37 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %38, i32 0, i32 1
  %cdr = bitcast %union.anon.6* %u to i64*
  %39 = load i64, i64* %cdr, align 8
  %sub46 = sub nsw i64 %39, 3
  %40 = inttoptr i64 %sub46 to i8*
  %41 = bitcast i8* %40 to %struct.Lisp_Cons*
  %car47 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %41, i32 0, i32 0
  %42 = load i64, i64* %car47, align 8
  %43 = load i64, i64* %object.addr, align 8
  call void @record_property_change(i64 %20, i64 %cond44, i64 %35, i64 %42, i64 %43)
  br label %if.end

if.end:                                           ; preds = %cond.end.43, %while.body.13
  %44 = load i64, i64* %current_plist, align 8
  %sub48 = sub nsw i64 %44, 3
  %45 = inttoptr i64 %sub48 to i8*
  %46 = bitcast i8* %45 to %struct.Lisp_Cons*
  %u49 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %46, i32 0, i32 1
  %cdr50 = bitcast %union.anon.6* %u49 to i64*
  %47 = load i64, i64* %cdr50, align 8
  %sub51 = sub nsw i64 %47, 3
  %48 = inttoptr i64 %sub51 to i8*
  %49 = bitcast i8* %48 to %struct.Lisp_Cons*
  %u52 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %49, i32 0, i32 1
  %cdr53 = bitcast %union.anon.6* %u52 to i64*
  %50 = load i64, i64* %cdr53, align 8
  store i64 %50, i64* %current_plist, align 8
  store i8 1, i8* %changed, align 1
  br label %while.cond.4

while.end:                                        ; preds = %land.end
  %51 = load i64, i64* %current_plist, align 8
  store i64 %51, i64* %tail2, align 8
  br label %while.cond.54

while.cond.54:                                    ; preds = %if.end.127, %while.end
  %52 = load i64, i64* %tail2, align 8
  %call55 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp56 = icmp eq i64 %52, %call55
  %lnot58 = xor i1 %cmp56, true
  br i1 %lnot58, label %while.body.59, label %while.end.128

while.body.59:                                    ; preds = %while.cond.54
  %53 = load i64, i64* %tail2, align 8
  %sub60 = sub nsw i64 %53, 3
  %54 = inttoptr i64 %sub60 to i8*
  %55 = bitcast i8* %54 to %struct.Lisp_Cons*
  %u61 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %55, i32 0, i32 1
  %cdr62 = bitcast %union.anon.6* %u61 to i64*
  %56 = load i64, i64* %cdr62, align 8
  %sub63 = sub nsw i64 %56, 3
  %57 = inttoptr i64 %sub63 to i8*
  %58 = bitcast i8* %57 to %struct.Lisp_Cons*
  %u64 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %58, i32 0, i32 1
  %cdr65 = bitcast %union.anon.6* %u64 to i64*
  %59 = load i64, i64* %cdr65, align 8
  store i64 %59, i64* %this, align 8
  %60 = load i64, i64* %this, align 8
  %and66 = and i64 %60, 7
  %conv67 = trunc i64 %and66 to i32
  %cmp68 = icmp eq i32 %conv67, 3
  br i1 %cmp68, label %land.lhs.true, label %if.end.127

land.lhs.true:                                    ; preds = %while.body.59
  %61 = load i64, i64* %sym, align 8
  %62 = load i64, i64* %this, align 8
  %sub70 = sub nsw i64 %62, 3
  %63 = inttoptr i64 %sub70 to i8*
  %64 = bitcast i8* %63 to %struct.Lisp_Cons*
  %car71 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %64, i32 0, i32 0
  %65 = load i64, i64* %car71, align 8
  %cmp72 = icmp eq i64 %61, %65
  br i1 %cmp72, label %if.then.74, label %if.end.127

if.then.74:                                       ; preds = %land.lhs.true
  %66 = load i64, i64* %object.addr, align 8
  %call75 = call zeroext i1 @BUFFERP(i64 %66)
  br i1 %call75, label %if.then.76, label %if.end.116

if.then.76:                                       ; preds = %if.then.74
  %67 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %position77 = getelementptr inbounds %struct.interval, %struct.interval* %67, i32 0, i32 1
  %68 = load i64, i64* %position77, align 8
  %69 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %cmp78 = icmp eq %struct.interval* %69, null
  br i1 %cmp78, label %cond.true.80, label %cond.false.81

cond.true.80:                                     ; preds = %if.then.76
  br label %cond.end.109

cond.false.81:                                    ; preds = %if.then.76
  %70 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %cmp82 = icmp eq %struct.interval* %70, null
  br i1 %cmp82, label %cond.true.84, label %cond.false.85

cond.true.84:                                     ; preds = %cond.false.81
  br label %cond.end.87

cond.false.85:                                    ; preds = %cond.false.81
  %71 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %total_length86 = getelementptr inbounds %struct.interval, %struct.interval* %71, i32 0, i32 0
  %72 = load i64, i64* %total_length86, align 8
  br label %cond.end.87

cond.end.87:                                      ; preds = %cond.false.85, %cond.true.84
  %cond88 = phi i64 [ 0, %cond.true.84 ], [ %72, %cond.false.85 ]
  %73 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right89 = getelementptr inbounds %struct.interval, %struct.interval* %73, i32 0, i32 3
  %74 = load %struct.interval*, %struct.interval** %right89, align 8
  %cmp90 = icmp eq %struct.interval* %74, null
  br i1 %cmp90, label %cond.true.92, label %cond.false.93

cond.true.92:                                     ; preds = %cond.end.87
  br label %cond.end.96

cond.false.93:                                    ; preds = %cond.end.87
  %75 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right94 = getelementptr inbounds %struct.interval, %struct.interval* %75, i32 0, i32 3
  %76 = load %struct.interval*, %struct.interval** %right94, align 8
  %total_length95 = getelementptr inbounds %struct.interval, %struct.interval* %76, i32 0, i32 0
  %77 = load i64, i64* %total_length95, align 8
  br label %cond.end.96

cond.end.96:                                      ; preds = %cond.false.93, %cond.true.92
  %cond97 = phi i64 [ 0, %cond.true.92 ], [ %77, %cond.false.93 ]
  %sub98 = sub nsw i64 %cond88, %cond97
  %78 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left99 = getelementptr inbounds %struct.interval, %struct.interval* %78, i32 0, i32 2
  %79 = load %struct.interval*, %struct.interval** %left99, align 8
  %cmp100 = icmp eq %struct.interval* %79, null
  br i1 %cmp100, label %cond.true.102, label %cond.false.103

cond.true.102:                                    ; preds = %cond.end.96
  br label %cond.end.106

cond.false.103:                                   ; preds = %cond.end.96
  %80 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left104 = getelementptr inbounds %struct.interval, %struct.interval* %80, i32 0, i32 2
  %81 = load %struct.interval*, %struct.interval** %left104, align 8
  %total_length105 = getelementptr inbounds %struct.interval, %struct.interval* %81, i32 0, i32 0
  %82 = load i64, i64* %total_length105, align 8
  br label %cond.end.106

cond.end.106:                                     ; preds = %cond.false.103, %cond.true.102
  %cond107 = phi i64 [ 0, %cond.true.102 ], [ %82, %cond.false.103 ]
  %sub108 = sub nsw i64 %sub98, %cond107
  br label %cond.end.109

cond.end.109:                                     ; preds = %cond.end.106, %cond.true.80
  %cond110 = phi i64 [ 0, %cond.true.80 ], [ %sub108, %cond.end.106 ]
  %83 = load i64, i64* %sym, align 8
  %84 = load i64, i64* %this, align 8
  %sub111 = sub nsw i64 %84, 3
  %85 = inttoptr i64 %sub111 to i8*
  %86 = bitcast i8* %85 to %struct.Lisp_Cons*
  %u112 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %86, i32 0, i32 1
  %cdr113 = bitcast %union.anon.6* %u112 to i64*
  %87 = load i64, i64* %cdr113, align 8
  %sub114 = sub nsw i64 %87, 3
  %88 = inttoptr i64 %sub114 to i8*
  %89 = bitcast i8* %88 to %struct.Lisp_Cons*
  %car115 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %89, i32 0, i32 0
  %90 = load i64, i64* %car115, align 8
  %91 = load i64, i64* %object.addr, align 8
  call void @record_property_change(i64 %68, i64 %cond110, i64 %83, i64 %90, i64 %91)
  br label %if.end.116

if.end.116:                                       ; preds = %cond.end.109, %if.then.74
  %92 = load i64, i64* %tail2, align 8
  %sub117 = sub nsw i64 %92, 3
  %93 = inttoptr i64 %sub117 to i8*
  %94 = bitcast i8* %93 to %struct.Lisp_Cons*
  %u118 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %94, i32 0, i32 1
  %cdr119 = bitcast %union.anon.6* %u118 to i64*
  %95 = load i64, i64* %cdr119, align 8
  %96 = load i64, i64* %this, align 8
  %sub120 = sub nsw i64 %96, 3
  %97 = inttoptr i64 %sub120 to i8*
  %98 = bitcast i8* %97 to %struct.Lisp_Cons*
  %u121 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %98, i32 0, i32 1
  %cdr122 = bitcast %union.anon.6* %u121 to i64*
  %99 = load i64, i64* %cdr122, align 8
  %sub123 = sub nsw i64 %99, 3
  %100 = inttoptr i64 %sub123 to i8*
  %101 = bitcast i8* %100 to %struct.Lisp_Cons*
  %u124 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %101, i32 0, i32 1
  %cdr125 = bitcast %union.anon.6* %u124 to i64*
  %102 = load i64, i64* %cdr125, align 8
  %call126 = call i64 @Fsetcdr(i64 %95, i64 %102)
  store i8 1, i8* %changed, align 1
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.116, %land.lhs.true, %while.body.59
  %103 = load i64, i64* %this, align 8
  store i64 %103, i64* %tail2, align 8
  br label %while.cond.54

while.end.128:                                    ; preds = %while.cond.54
  %104 = load i64, i64* %tail1, align 8
  %sub129 = sub nsw i64 %104, 3
  %105 = inttoptr i64 %sub129 to i8*
  %106 = bitcast i8* %105 to %struct.Lisp_Cons*
  %u130 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %106, i32 0, i32 1
  %cdr131 = bitcast %union.anon.6* %u130 to i64*
  %107 = load i64, i64* %cdr131, align 8
  store i64 %107, i64* %tail1, align 8
  %108 = load i8, i8* %use_plist, align 1
  %tobool132 = trunc i8 %108 to i1
  br i1 %tobool132, label %land.lhs.true.134, label %if.end.143

land.lhs.true.134:                                ; preds = %while.end.128
  %109 = load i64, i64* %tail1, align 8
  %and135 = and i64 %109, 7
  %conv136 = trunc i64 %and135 to i32
  %cmp137 = icmp eq i32 %conv136, 3
  br i1 %cmp137, label %if.then.139, label %if.end.143

if.then.139:                                      ; preds = %land.lhs.true.134
  %110 = load i64, i64* %tail1, align 8
  %sub140 = sub nsw i64 %110, 3
  %111 = inttoptr i64 %sub140 to i8*
  %112 = bitcast i8* %111 to %struct.Lisp_Cons*
  %u141 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %112, i32 0, i32 1
  %cdr142 = bitcast %union.anon.6* %u141 to i64*
  %113 = load i64, i64* %cdr142, align 8
  store i64 %113, i64* %tail1, align 8
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.139, %land.lhs.true.134, %while.end.128
  br label %while.cond

while.end.144:                                    ; preds = %while.cond
  %114 = load i8, i8* %changed, align 1
  %tobool145 = trunc i8 %114 to i1
  br i1 %tobool145, label %if.then.146, label %if.end.147

if.then.146:                                      ; preds = %while.end.144
  %115 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %116 = load i64, i64* %current_plist, align 8
  call void @set_interval_plist(%struct.interval* %115, i64 %116)
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.146, %while.end.144
  %117 = load i8, i8* %changed, align 1
  %tobool148 = trunc i8 %117 to i1
  ret i1 %tobool148
}

; Function Attrs: nounwind uwtable
define i64 @Fremove_list_of_text_properties(i64 %start, i64 %end, i64 %list_of_properties, i64 %object) #0 {
entry:
  %retval = alloca i64, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %list_of_properties.addr = alloca i64, align 8
  %object.addr = alloca i64, align 8
  %i = alloca %struct.interval*, align 8
  %unchanged = alloca %struct.interval*, align 8
  %s = alloca i64, align 8
  %len = alloca i64, align 8
  %modified = alloca i8, align 1
  %properties = alloca i64, align 8
  %got = alloca i64, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  store i64 %list_of_properties, i64* %list_of_properties.addr, align 8
  store i64 %object, i64* %object.addr, align 8
  store i8 0, i8* %modified, align 1
  %0 = load i64, i64* %list_of_properties.addr, align 8
  store i64 %0, i64* %properties, align 8
  %1 = load i64, i64* %object.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %3 = bitcast %struct.buffer* %2 to i8*
  %call1 = call i64 @make_lisp_ptr(i8* %3, i32 5)
  store i64 %call1, i64* %object.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* %object.addr, align 8
  %call2 = call %struct.interval* @validate_interval_range(i64 %4, i64* %start.addr, i64* %end.addr, i1 zeroext false)
  store %struct.interval* %call2, %struct.interval** %i, align 8
  %5 = load %struct.interval*, %struct.interval** %i, align 8
  %tobool = icmp ne %struct.interval* %5, null
  br i1 %tobool, label %if.end.5, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call4, i64* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %6 = load i64, i64* %start.addr, align 8
  %shr = ashr i64 %6, 2
  store i64 %shr, i64* %s, align 8
  %7 = load i64, i64* %end.addr, align 8
  %shr6 = ashr i64 %7, 2
  %8 = load i64, i64* %s, align 8
  %sub = sub nsw i64 %shr6, %8
  store i64 %sub, i64* %len, align 8
  %9 = load i64, i64* %properties, align 8
  %10 = load %struct.interval*, %struct.interval** %i, align 8
  %call7 = call zeroext i1 @interval_has_some_properties_list(i64 %9, %struct.interval* %10)
  br i1 %call7, label %if.else, label %if.then.8

if.then.8:                                        ; preds = %if.end.5
  %11 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp9 = icmp eq %struct.interval* %11, null
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.8
  br label %cond.end.29

cond.false:                                       ; preds = %if.then.8
  %12 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp10 = icmp eq %struct.interval* %12, null
  br i1 %cmp10, label %cond.true.11, label %cond.false.12

cond.true.11:                                     ; preds = %cond.false
  br label %cond.end

cond.false.12:                                    ; preds = %cond.false
  %13 = load %struct.interval*, %struct.interval** %i, align 8
  %total_length = getelementptr inbounds %struct.interval, %struct.interval* %13, i32 0, i32 0
  %14 = load i64, i64* %total_length, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.12, %cond.true.11
  %cond = phi i64 [ 0, %cond.true.11 ], [ %14, %cond.false.12 ]
  %15 = load %struct.interval*, %struct.interval** %i, align 8
  %right = getelementptr inbounds %struct.interval, %struct.interval* %15, i32 0, i32 3
  %16 = load %struct.interval*, %struct.interval** %right, align 8
  %cmp13 = icmp eq %struct.interval* %16, null
  br i1 %cmp13, label %cond.true.14, label %cond.false.15

cond.true.14:                                     ; preds = %cond.end
  br label %cond.end.18

cond.false.15:                                    ; preds = %cond.end
  %17 = load %struct.interval*, %struct.interval** %i, align 8
  %right16 = getelementptr inbounds %struct.interval, %struct.interval* %17, i32 0, i32 3
  %18 = load %struct.interval*, %struct.interval** %right16, align 8
  %total_length17 = getelementptr inbounds %struct.interval, %struct.interval* %18, i32 0, i32 0
  %19 = load i64, i64* %total_length17, align 8
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.15, %cond.true.14
  %cond19 = phi i64 [ 0, %cond.true.14 ], [ %19, %cond.false.15 ]
  %sub20 = sub nsw i64 %cond, %cond19
  %20 = load %struct.interval*, %struct.interval** %i, align 8
  %left = getelementptr inbounds %struct.interval, %struct.interval* %20, i32 0, i32 2
  %21 = load %struct.interval*, %struct.interval** %left, align 8
  %cmp21 = icmp eq %struct.interval* %21, null
  br i1 %cmp21, label %cond.true.22, label %cond.false.23

cond.true.22:                                     ; preds = %cond.end.18
  br label %cond.end.26

cond.false.23:                                    ; preds = %cond.end.18
  %22 = load %struct.interval*, %struct.interval** %i, align 8
  %left24 = getelementptr inbounds %struct.interval, %struct.interval* %22, i32 0, i32 2
  %23 = load %struct.interval*, %struct.interval** %left24, align 8
  %total_length25 = getelementptr inbounds %struct.interval, %struct.interval* %23, i32 0, i32 0
  %24 = load i64, i64* %total_length25, align 8
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.23, %cond.true.22
  %cond27 = phi i64 [ 0, %cond.true.22 ], [ %24, %cond.false.23 ]
  %sub28 = sub nsw i64 %sub20, %cond27
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.end.26, %cond.true
  %cond30 = phi i64 [ 0, %cond.true ], [ %sub28, %cond.end.26 ]
  %25 = load i64, i64* %s, align 8
  %26 = load %struct.interval*, %struct.interval** %i, align 8
  %position = getelementptr inbounds %struct.interval, %struct.interval* %26, i32 0, i32 1
  %27 = load i64, i64* %position, align 8
  %sub31 = sub nsw i64 %25, %27
  %sub32 = sub nsw i64 %cond30, %sub31
  store i64 %sub32, i64* %got, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %cond.end.29
  %28 = load i64, i64* %got, align 8
  %29 = load i64, i64* %len, align 8
  %cmp33 = icmp sge i64 %28, %29
  br i1 %cmp33, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %do.body
  %call35 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call35, i64* %retval
  br label %return

if.end.36:                                        ; preds = %do.body
  %30 = load i64, i64* %got, align 8
  %31 = load i64, i64* %len, align 8
  %sub37 = sub nsw i64 %31, %30
  store i64 %sub37, i64* %len, align 8
  %32 = load %struct.interval*, %struct.interval** %i, align 8
  %call38 = call %struct.interval* @next_interval(%struct.interval* %32)
  store %struct.interval* %call38, %struct.interval** %i, align 8
  %33 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp39 = icmp eq %struct.interval* %33, null
  br i1 %cmp39, label %cond.true.40, label %cond.false.41

cond.true.40:                                     ; preds = %if.end.36
  br label %cond.end.66

cond.false.41:                                    ; preds = %if.end.36
  %34 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp42 = icmp eq %struct.interval* %34, null
  br i1 %cmp42, label %cond.true.43, label %cond.false.44

cond.true.43:                                     ; preds = %cond.false.41
  br label %cond.end.46

cond.false.44:                                    ; preds = %cond.false.41
  %35 = load %struct.interval*, %struct.interval** %i, align 8
  %total_length45 = getelementptr inbounds %struct.interval, %struct.interval* %35, i32 0, i32 0
  %36 = load i64, i64* %total_length45, align 8
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.false.44, %cond.true.43
  %cond47 = phi i64 [ 0, %cond.true.43 ], [ %36, %cond.false.44 ]
  %37 = load %struct.interval*, %struct.interval** %i, align 8
  %right48 = getelementptr inbounds %struct.interval, %struct.interval* %37, i32 0, i32 3
  %38 = load %struct.interval*, %struct.interval** %right48, align 8
  %cmp49 = icmp eq %struct.interval* %38, null
  br i1 %cmp49, label %cond.true.50, label %cond.false.51

cond.true.50:                                     ; preds = %cond.end.46
  br label %cond.end.54

cond.false.51:                                    ; preds = %cond.end.46
  %39 = load %struct.interval*, %struct.interval** %i, align 8
  %right52 = getelementptr inbounds %struct.interval, %struct.interval* %39, i32 0, i32 3
  %40 = load %struct.interval*, %struct.interval** %right52, align 8
  %total_length53 = getelementptr inbounds %struct.interval, %struct.interval* %40, i32 0, i32 0
  %41 = load i64, i64* %total_length53, align 8
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.false.51, %cond.true.50
  %cond55 = phi i64 [ 0, %cond.true.50 ], [ %41, %cond.false.51 ]
  %sub56 = sub nsw i64 %cond47, %cond55
  %42 = load %struct.interval*, %struct.interval** %i, align 8
  %left57 = getelementptr inbounds %struct.interval, %struct.interval* %42, i32 0, i32 2
  %43 = load %struct.interval*, %struct.interval** %left57, align 8
  %cmp58 = icmp eq %struct.interval* %43, null
  br i1 %cmp58, label %cond.true.59, label %cond.false.60

cond.true.59:                                     ; preds = %cond.end.54
  br label %cond.end.63

cond.false.60:                                    ; preds = %cond.end.54
  %44 = load %struct.interval*, %struct.interval** %i, align 8
  %left61 = getelementptr inbounds %struct.interval, %struct.interval* %44, i32 0, i32 2
  %45 = load %struct.interval*, %struct.interval** %left61, align 8
  %total_length62 = getelementptr inbounds %struct.interval, %struct.interval* %45, i32 0, i32 0
  %46 = load i64, i64* %total_length62, align 8
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.60, %cond.true.59
  %cond64 = phi i64 [ 0, %cond.true.59 ], [ %46, %cond.false.60 ]
  %sub65 = sub nsw i64 %sub56, %cond64
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.end.63, %cond.true.40
  %cond67 = phi i64 [ 0, %cond.true.40 ], [ %sub65, %cond.end.63 ]
  store i64 %cond67, i64* %got, align 8
  br label %do.cond

do.cond:                                          ; preds = %cond.end.66
  %47 = load i64, i64* %properties, align 8
  %48 = load %struct.interval*, %struct.interval** %i, align 8
  %call68 = call zeroext i1 @interval_has_some_properties_list(i64 %47, %struct.interval* %48)
  %lnot = xor i1 %call68, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.76

if.else:                                          ; preds = %if.end.5
  %49 = load %struct.interval*, %struct.interval** %i, align 8
  %position69 = getelementptr inbounds %struct.interval, %struct.interval* %49, i32 0, i32 1
  %50 = load i64, i64* %position69, align 8
  %51 = load i64, i64* %s, align 8
  %cmp70 = icmp ne i64 %50, %51
  br i1 %cmp70, label %if.then.71, label %if.end.75

if.then.71:                                       ; preds = %if.else
  %52 = load %struct.interval*, %struct.interval** %i, align 8
  store %struct.interval* %52, %struct.interval** %unchanged, align 8
  %53 = load %struct.interval*, %struct.interval** %unchanged, align 8
  %54 = load i64, i64* %s, align 8
  %55 = load %struct.interval*, %struct.interval** %unchanged, align 8
  %position72 = getelementptr inbounds %struct.interval, %struct.interval* %55, i32 0, i32 1
  %56 = load i64, i64* %position72, align 8
  %sub73 = sub nsw i64 %54, %56
  %call74 = call %struct.interval* @split_interval_right(%struct.interval* %53, i64 %sub73)
  store %struct.interval* %call74, %struct.interval** %i, align 8
  %57 = load %struct.interval*, %struct.interval** %unchanged, align 8
  %58 = load %struct.interval*, %struct.interval** %i, align 8
  call void @copy_properties(%struct.interval* %57, %struct.interval* %58)
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.71, %if.else
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %do.end
  br label %for.cond

for.cond:                                         ; preds = %if.end.253, %if.end.76
  %59 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp77 = icmp eq %struct.interval* %59, null
  br i1 %cmp77, label %cond.true.78, label %cond.false.79

cond.true.78:                                     ; preds = %for.cond
  br label %cond.end.104

cond.false.79:                                    ; preds = %for.cond
  %60 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp80 = icmp eq %struct.interval* %60, null
  br i1 %cmp80, label %cond.true.81, label %cond.false.82

cond.true.81:                                     ; preds = %cond.false.79
  br label %cond.end.84

cond.false.82:                                    ; preds = %cond.false.79
  %61 = load %struct.interval*, %struct.interval** %i, align 8
  %total_length83 = getelementptr inbounds %struct.interval, %struct.interval* %61, i32 0, i32 0
  %62 = load i64, i64* %total_length83, align 8
  br label %cond.end.84

cond.end.84:                                      ; preds = %cond.false.82, %cond.true.81
  %cond85 = phi i64 [ 0, %cond.true.81 ], [ %62, %cond.false.82 ]
  %63 = load %struct.interval*, %struct.interval** %i, align 8
  %right86 = getelementptr inbounds %struct.interval, %struct.interval* %63, i32 0, i32 3
  %64 = load %struct.interval*, %struct.interval** %right86, align 8
  %cmp87 = icmp eq %struct.interval* %64, null
  br i1 %cmp87, label %cond.true.88, label %cond.false.89

cond.true.88:                                     ; preds = %cond.end.84
  br label %cond.end.92

cond.false.89:                                    ; preds = %cond.end.84
  %65 = load %struct.interval*, %struct.interval** %i, align 8
  %right90 = getelementptr inbounds %struct.interval, %struct.interval* %65, i32 0, i32 3
  %66 = load %struct.interval*, %struct.interval** %right90, align 8
  %total_length91 = getelementptr inbounds %struct.interval, %struct.interval* %66, i32 0, i32 0
  %67 = load i64, i64* %total_length91, align 8
  br label %cond.end.92

cond.end.92:                                      ; preds = %cond.false.89, %cond.true.88
  %cond93 = phi i64 [ 0, %cond.true.88 ], [ %67, %cond.false.89 ]
  %sub94 = sub nsw i64 %cond85, %cond93
  %68 = load %struct.interval*, %struct.interval** %i, align 8
  %left95 = getelementptr inbounds %struct.interval, %struct.interval* %68, i32 0, i32 2
  %69 = load %struct.interval*, %struct.interval** %left95, align 8
  %cmp96 = icmp eq %struct.interval* %69, null
  br i1 %cmp96, label %cond.true.97, label %cond.false.98

cond.true.97:                                     ; preds = %cond.end.92
  br label %cond.end.101

cond.false.98:                                    ; preds = %cond.end.92
  %70 = load %struct.interval*, %struct.interval** %i, align 8
  %left99 = getelementptr inbounds %struct.interval, %struct.interval* %70, i32 0, i32 2
  %71 = load %struct.interval*, %struct.interval** %left99, align 8
  %total_length100 = getelementptr inbounds %struct.interval, %struct.interval* %71, i32 0, i32 0
  %72 = load i64, i64* %total_length100, align 8
  br label %cond.end.101

cond.end.101:                                     ; preds = %cond.false.98, %cond.true.97
  %cond102 = phi i64 [ 0, %cond.true.97 ], [ %72, %cond.false.98 ]
  %sub103 = sub nsw i64 %sub94, %cond102
  br label %cond.end.104

cond.end.104:                                     ; preds = %cond.end.101, %cond.true.78
  %cond105 = phi i64 [ 0, %cond.true.78 ], [ %sub103, %cond.end.101 ]
  %73 = load i64, i64* %len, align 8
  %cmp106 = icmp sge i64 %cond105, %73
  br i1 %cmp106, label %if.then.107, label %if.end.194

if.then.107:                                      ; preds = %cond.end.104
  %74 = load i64, i64* %properties, align 8
  %75 = load %struct.interval*, %struct.interval** %i, align 8
  %call108 = call zeroext i1 @interval_has_some_properties_list(i64 %74, %struct.interval* %75)
  br i1 %call108, label %if.else.125, label %if.then.109

if.then.109:                                      ; preds = %if.then.107
  %76 = load i8, i8* %modified, align 1
  %tobool110 = trunc i8 %76 to i1
  br i1 %tobool110, label %if.then.111, label %if.else.123

if.then.111:                                      ; preds = %if.then.109
  %77 = load i64, i64* %object.addr, align 8
  %call112 = call zeroext i1 @BUFFERP(i64 %77)
  br i1 %call112, label %if.then.113, label %if.end.121

if.then.113:                                      ; preds = %if.then.111
  %78 = load i64, i64* %start.addr, align 8
  %shr114 = ashr i64 %78, 2
  %79 = load i64, i64* %end.addr, align 8
  %shr115 = ashr i64 %79, 2
  %80 = load i64, i64* %start.addr, align 8
  %shr116 = ashr i64 %80, 2
  %sub117 = sub nsw i64 %shr115, %shr116
  %81 = load i64, i64* %end.addr, align 8
  %shr118 = ashr i64 %81, 2
  %82 = load i64, i64* %start.addr, align 8
  %shr119 = ashr i64 %82, 2
  %sub120 = sub nsw i64 %shr118, %shr119
  call void @signal_after_change(i64 %shr114, i64 %sub117, i64 %sub120)
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.113, %if.then.111
  %call122 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call122, i64* %retval
  br label %return

if.else.123:                                      ; preds = %if.then.109
  %call124 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call124, i64* %retval
  br label %return

if.else.125:                                      ; preds = %if.then.107
  %83 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp126 = icmp eq %struct.interval* %83, null
  br i1 %cmp126, label %cond.true.127, label %cond.false.128

cond.true.127:                                    ; preds = %if.else.125
  br label %cond.end.153

cond.false.128:                                   ; preds = %if.else.125
  %84 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp129 = icmp eq %struct.interval* %84, null
  br i1 %cmp129, label %cond.true.130, label %cond.false.131

cond.true.130:                                    ; preds = %cond.false.128
  br label %cond.end.133

cond.false.131:                                   ; preds = %cond.false.128
  %85 = load %struct.interval*, %struct.interval** %i, align 8
  %total_length132 = getelementptr inbounds %struct.interval, %struct.interval* %85, i32 0, i32 0
  %86 = load i64, i64* %total_length132, align 8
  br label %cond.end.133

cond.end.133:                                     ; preds = %cond.false.131, %cond.true.130
  %cond134 = phi i64 [ 0, %cond.true.130 ], [ %86, %cond.false.131 ]
  %87 = load %struct.interval*, %struct.interval** %i, align 8
  %right135 = getelementptr inbounds %struct.interval, %struct.interval* %87, i32 0, i32 3
  %88 = load %struct.interval*, %struct.interval** %right135, align 8
  %cmp136 = icmp eq %struct.interval* %88, null
  br i1 %cmp136, label %cond.true.137, label %cond.false.138

cond.true.137:                                    ; preds = %cond.end.133
  br label %cond.end.141

cond.false.138:                                   ; preds = %cond.end.133
  %89 = load %struct.interval*, %struct.interval** %i, align 8
  %right139 = getelementptr inbounds %struct.interval, %struct.interval* %89, i32 0, i32 3
  %90 = load %struct.interval*, %struct.interval** %right139, align 8
  %total_length140 = getelementptr inbounds %struct.interval, %struct.interval* %90, i32 0, i32 0
  %91 = load i64, i64* %total_length140, align 8
  br label %cond.end.141

cond.end.141:                                     ; preds = %cond.false.138, %cond.true.137
  %cond142 = phi i64 [ 0, %cond.true.137 ], [ %91, %cond.false.138 ]
  %sub143 = sub nsw i64 %cond134, %cond142
  %92 = load %struct.interval*, %struct.interval** %i, align 8
  %left144 = getelementptr inbounds %struct.interval, %struct.interval* %92, i32 0, i32 2
  %93 = load %struct.interval*, %struct.interval** %left144, align 8
  %cmp145 = icmp eq %struct.interval* %93, null
  br i1 %cmp145, label %cond.true.146, label %cond.false.147

cond.true.146:                                    ; preds = %cond.end.141
  br label %cond.end.150

cond.false.147:                                   ; preds = %cond.end.141
  %94 = load %struct.interval*, %struct.interval** %i, align 8
  %left148 = getelementptr inbounds %struct.interval, %struct.interval* %94, i32 0, i32 2
  %95 = load %struct.interval*, %struct.interval** %left148, align 8
  %total_length149 = getelementptr inbounds %struct.interval, %struct.interval* %95, i32 0, i32 0
  %96 = load i64, i64* %total_length149, align 8
  br label %cond.end.150

cond.end.150:                                     ; preds = %cond.false.147, %cond.true.146
  %cond151 = phi i64 [ 0, %cond.true.146 ], [ %96, %cond.false.147 ]
  %sub152 = sub nsw i64 %sub143, %cond151
  br label %cond.end.153

cond.end.153:                                     ; preds = %cond.end.150, %cond.true.127
  %cond154 = phi i64 [ 0, %cond.true.127 ], [ %sub152, %cond.end.150 ]
  %97 = load i64, i64* %len, align 8
  %cmp155 = icmp eq i64 %cond154, %97
  br i1 %cmp155, label %if.then.156, label %if.else.174

if.then.156:                                      ; preds = %cond.end.153
  %98 = load i8, i8* %modified, align 1
  %tobool157 = trunc i8 %98 to i1
  br i1 %tobool157, label %if.end.160, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then.156
  %99 = load i64, i64* %object.addr, align 8
  %call158 = call zeroext i1 @BUFFERP(i64 %99)
  br i1 %call158, label %if.then.159, label %if.end.160

if.then.159:                                      ; preds = %land.lhs.true
  %100 = load i64, i64* %object.addr, align 8
  %101 = load i64, i64* %start.addr, align 8
  %102 = load i64, i64* %end.addr, align 8
  call void @modify_text_properties(i64 %100, i64 %101, i64 %102)
  br label %if.end.160

if.end.160:                                       ; preds = %if.then.159, %land.lhs.true, %if.then.156
  %call161 = call i64 @builtin_lisp_symbol(i32 0)
  %103 = load i64, i64* %properties, align 8
  %104 = load %struct.interval*, %struct.interval** %i, align 8
  %105 = load i64, i64* %object.addr, align 8
  %call162 = call zeroext i1 @remove_properties(i64 %call161, i64 %103, %struct.interval* %104, i64 %105)
  %106 = load i64, i64* %object.addr, align 8
  %call163 = call zeroext i1 @BUFFERP(i64 %106)
  br i1 %call163, label %if.then.164, label %if.end.172

if.then.164:                                      ; preds = %if.end.160
  %107 = load i64, i64* %start.addr, align 8
  %shr165 = ashr i64 %107, 2
  %108 = load i64, i64* %end.addr, align 8
  %shr166 = ashr i64 %108, 2
  %109 = load i64, i64* %start.addr, align 8
  %shr167 = ashr i64 %109, 2
  %sub168 = sub nsw i64 %shr166, %shr167
  %110 = load i64, i64* %end.addr, align 8
  %shr169 = ashr i64 %110, 2
  %111 = load i64, i64* %start.addr, align 8
  %shr170 = ashr i64 %111, 2
  %sub171 = sub nsw i64 %shr169, %shr170
  call void @signal_after_change(i64 %shr165, i64 %sub168, i64 %sub171)
  br label %if.end.172

if.end.172:                                       ; preds = %if.then.164, %if.end.160
  %call173 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call173, i64* %retval
  br label %return

if.else.174:                                      ; preds = %cond.end.153
  %112 = load %struct.interval*, %struct.interval** %i, align 8
  store %struct.interval* %112, %struct.interval** %unchanged, align 8
  %113 = load %struct.interval*, %struct.interval** %i, align 8
  %114 = load i64, i64* %len, align 8
  %call175 = call %struct.interval* @split_interval_left(%struct.interval* %113, i64 %114)
  store %struct.interval* %call175, %struct.interval** %i, align 8
  %115 = load %struct.interval*, %struct.interval** %unchanged, align 8
  %116 = load %struct.interval*, %struct.interval** %i, align 8
  call void @copy_properties(%struct.interval* %115, %struct.interval* %116)
  %117 = load i8, i8* %modified, align 1
  %tobool176 = trunc i8 %117 to i1
  br i1 %tobool176, label %if.end.180, label %land.lhs.true.177

land.lhs.true.177:                                ; preds = %if.else.174
  %118 = load i64, i64* %object.addr, align 8
  %call178 = call zeroext i1 @BUFFERP(i64 %118)
  br i1 %call178, label %if.then.179, label %if.end.180

if.then.179:                                      ; preds = %land.lhs.true.177
  %119 = load i64, i64* %object.addr, align 8
  %120 = load i64, i64* %start.addr, align 8
  %121 = load i64, i64* %end.addr, align 8
  call void @modify_text_properties(i64 %119, i64 %120, i64 %121)
  br label %if.end.180

if.end.180:                                       ; preds = %if.then.179, %land.lhs.true.177, %if.else.174
  %call181 = call i64 @builtin_lisp_symbol(i32 0)
  %122 = load i64, i64* %properties, align 8
  %123 = load %struct.interval*, %struct.interval** %i, align 8
  %124 = load i64, i64* %object.addr, align 8
  %call182 = call zeroext i1 @remove_properties(i64 %call181, i64 %122, %struct.interval* %123, i64 %124)
  %125 = load i64, i64* %object.addr, align 8
  %call183 = call zeroext i1 @BUFFERP(i64 %125)
  br i1 %call183, label %if.then.184, label %if.end.192

if.then.184:                                      ; preds = %if.end.180
  %126 = load i64, i64* %start.addr, align 8
  %shr185 = ashr i64 %126, 2
  %127 = load i64, i64* %end.addr, align 8
  %shr186 = ashr i64 %127, 2
  %128 = load i64, i64* %start.addr, align 8
  %shr187 = ashr i64 %128, 2
  %sub188 = sub nsw i64 %shr186, %shr187
  %129 = load i64, i64* %end.addr, align 8
  %shr189 = ashr i64 %129, 2
  %130 = load i64, i64* %start.addr, align 8
  %shr190 = ashr i64 %130, 2
  %sub191 = sub nsw i64 %shr189, %shr190
  call void @signal_after_change(i64 %shr185, i64 %sub188, i64 %sub191)
  br label %if.end.192

if.end.192:                                       ; preds = %if.then.184, %if.end.180
  %call193 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call193, i64* %retval
  br label %return

if.end.194:                                       ; preds = %cond.end.104
  %131 = load i64, i64* %properties, align 8
  %132 = load %struct.interval*, %struct.interval** %i, align 8
  %call195 = call zeroext i1 @interval_has_some_properties_list(i64 %131, %struct.interval* %132)
  br i1 %call195, label %if.then.196, label %if.end.204

if.then.196:                                      ; preds = %if.end.194
  %133 = load i8, i8* %modified, align 1
  %tobool197 = trunc i8 %133 to i1
  br i1 %tobool197, label %if.end.201, label %land.lhs.true.198

land.lhs.true.198:                                ; preds = %if.then.196
  %134 = load i64, i64* %object.addr, align 8
  %call199 = call zeroext i1 @BUFFERP(i64 %134)
  br i1 %call199, label %if.then.200, label %if.end.201

if.then.200:                                      ; preds = %land.lhs.true.198
  %135 = load i64, i64* %object.addr, align 8
  %136 = load i64, i64* %start.addr, align 8
  %137 = load i64, i64* %end.addr, align 8
  call void @modify_text_properties(i64 %135, i64 %136, i64 %137)
  br label %if.end.201

if.end.201:                                       ; preds = %if.then.200, %land.lhs.true.198, %if.then.196
  %call202 = call i64 @builtin_lisp_symbol(i32 0)
  %138 = load i64, i64* %properties, align 8
  %139 = load %struct.interval*, %struct.interval** %i, align 8
  %140 = load i64, i64* %object.addr, align 8
  %call203 = call zeroext i1 @remove_properties(i64 %call202, i64 %138, %struct.interval* %139, i64 %140)
  store i8 1, i8* %modified, align 1
  br label %if.end.204

if.end.204:                                       ; preds = %if.end.201, %if.end.194
  %141 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp205 = icmp eq %struct.interval* %141, null
  br i1 %cmp205, label %cond.true.206, label %cond.false.207

cond.true.206:                                    ; preds = %if.end.204
  br label %cond.end.232

cond.false.207:                                   ; preds = %if.end.204
  %142 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp208 = icmp eq %struct.interval* %142, null
  br i1 %cmp208, label %cond.true.209, label %cond.false.210

cond.true.209:                                    ; preds = %cond.false.207
  br label %cond.end.212

cond.false.210:                                   ; preds = %cond.false.207
  %143 = load %struct.interval*, %struct.interval** %i, align 8
  %total_length211 = getelementptr inbounds %struct.interval, %struct.interval* %143, i32 0, i32 0
  %144 = load i64, i64* %total_length211, align 8
  br label %cond.end.212

cond.end.212:                                     ; preds = %cond.false.210, %cond.true.209
  %cond213 = phi i64 [ 0, %cond.true.209 ], [ %144, %cond.false.210 ]
  %145 = load %struct.interval*, %struct.interval** %i, align 8
  %right214 = getelementptr inbounds %struct.interval, %struct.interval* %145, i32 0, i32 3
  %146 = load %struct.interval*, %struct.interval** %right214, align 8
  %cmp215 = icmp eq %struct.interval* %146, null
  br i1 %cmp215, label %cond.true.216, label %cond.false.217

cond.true.216:                                    ; preds = %cond.end.212
  br label %cond.end.220

cond.false.217:                                   ; preds = %cond.end.212
  %147 = load %struct.interval*, %struct.interval** %i, align 8
  %right218 = getelementptr inbounds %struct.interval, %struct.interval* %147, i32 0, i32 3
  %148 = load %struct.interval*, %struct.interval** %right218, align 8
  %total_length219 = getelementptr inbounds %struct.interval, %struct.interval* %148, i32 0, i32 0
  %149 = load i64, i64* %total_length219, align 8
  br label %cond.end.220

cond.end.220:                                     ; preds = %cond.false.217, %cond.true.216
  %cond221 = phi i64 [ 0, %cond.true.216 ], [ %149, %cond.false.217 ]
  %sub222 = sub nsw i64 %cond213, %cond221
  %150 = load %struct.interval*, %struct.interval** %i, align 8
  %left223 = getelementptr inbounds %struct.interval, %struct.interval* %150, i32 0, i32 2
  %151 = load %struct.interval*, %struct.interval** %left223, align 8
  %cmp224 = icmp eq %struct.interval* %151, null
  br i1 %cmp224, label %cond.true.225, label %cond.false.226

cond.true.225:                                    ; preds = %cond.end.220
  br label %cond.end.229

cond.false.226:                                   ; preds = %cond.end.220
  %152 = load %struct.interval*, %struct.interval** %i, align 8
  %left227 = getelementptr inbounds %struct.interval, %struct.interval* %152, i32 0, i32 2
  %153 = load %struct.interval*, %struct.interval** %left227, align 8
  %total_length228 = getelementptr inbounds %struct.interval, %struct.interval* %153, i32 0, i32 0
  %154 = load i64, i64* %total_length228, align 8
  br label %cond.end.229

cond.end.229:                                     ; preds = %cond.false.226, %cond.true.225
  %cond230 = phi i64 [ 0, %cond.true.225 ], [ %154, %cond.false.226 ]
  %sub231 = sub nsw i64 %sub222, %cond230
  br label %cond.end.232

cond.end.232:                                     ; preds = %cond.end.229, %cond.true.206
  %cond233 = phi i64 [ 0, %cond.true.206 ], [ %sub231, %cond.end.229 ]
  %155 = load i64, i64* %len, align 8
  %sub234 = sub nsw i64 %155, %cond233
  store i64 %sub234, i64* %len, align 8
  %156 = load %struct.interval*, %struct.interval** %i, align 8
  %call235 = call %struct.interval* @next_interval(%struct.interval* %156)
  store %struct.interval* %call235, %struct.interval** %i, align 8
  %157 = load %struct.interval*, %struct.interval** %i, align 8
  %tobool236 = icmp ne %struct.interval* %157, null
  br i1 %tobool236, label %if.end.253, label %if.then.237

if.then.237:                                      ; preds = %cond.end.232
  %158 = load i8, i8* %modified, align 1
  %tobool238 = trunc i8 %158 to i1
  br i1 %tobool238, label %if.then.239, label %if.else.251

if.then.239:                                      ; preds = %if.then.237
  %159 = load i64, i64* %object.addr, align 8
  %call240 = call zeroext i1 @BUFFERP(i64 %159)
  br i1 %call240, label %if.then.241, label %if.end.249

if.then.241:                                      ; preds = %if.then.239
  %160 = load i64, i64* %start.addr, align 8
  %shr242 = ashr i64 %160, 2
  %161 = load i64, i64* %end.addr, align 8
  %shr243 = ashr i64 %161, 2
  %162 = load i64, i64* %start.addr, align 8
  %shr244 = ashr i64 %162, 2
  %sub245 = sub nsw i64 %shr243, %shr244
  %163 = load i64, i64* %end.addr, align 8
  %shr246 = ashr i64 %163, 2
  %164 = load i64, i64* %start.addr, align 8
  %shr247 = ashr i64 %164, 2
  %sub248 = sub nsw i64 %shr246, %shr247
  call void @signal_after_change(i64 %shr242, i64 %sub245, i64 %sub248)
  br label %if.end.249

if.end.249:                                       ; preds = %if.then.241, %if.then.239
  %call250 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call250, i64* %retval
  br label %return

if.else.251:                                      ; preds = %if.then.237
  %call252 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call252, i64* %retval
  br label %return

if.end.253:                                       ; preds = %cond.end.232
  br label %for.cond

return:                                           ; preds = %if.else.251, %if.end.249, %if.end.192, %if.end.172, %if.else.123, %if.end.121, %if.then.34, %if.then.3
  %165 = load i64, i64* %retval
  ret i64 %165
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @interval_has_some_properties_list(i64 %list, %struct.interval* %i) #0 {
entry:
  %retval = alloca i1, align 1
  %list.addr = alloca i64, align 8
  %i.addr = alloca %struct.interval*, align 8
  %tail1 = alloca i64, align 8
  %tail2 = alloca i64, align 8
  %sym = alloca i64, align 8
  store i64 %list, i64* %list.addr, align 8
  store %struct.interval* %i, %struct.interval** %i.addr, align 8
  %0 = load i64, i64* %list.addr, align 8
  store i64 %0, i64* %tail1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.16, %entry
  %1 = load i64, i64* %tail1, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %for.body, label %for.end.20

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %tail1, align 8
  %sub = sub nsw i64 %2, 3
  %3 = inttoptr i64 %sub to i8*
  %4 = bitcast i8* %3 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %4, i32 0, i32 0
  %5 = load i64, i64* %car, align 8
  store i64 %5, i64* %sym, align 8
  %6 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %plist = getelementptr inbounds %struct.interval, %struct.interval* %6, i32 0, i32 6
  %7 = load i64, i64* %plist, align 8
  store i64 %7, i64* %tail2, align 8
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %8 = load i64, i64* %tail2, align 8
  %and3 = and i64 %8, 7
  %conv4 = trunc i64 %and3 to i32
  %cmp5 = icmp eq i32 %conv4, 3
  br i1 %cmp5, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.2
  %9 = load i64, i64* %sym, align 8
  %10 = load i64, i64* %tail2, align 8
  %sub8 = sub nsw i64 %10, 3
  %11 = inttoptr i64 %sub8 to i8*
  %12 = bitcast i8* %11 to %struct.Lisp_Cons*
  %car9 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %12, i32 0, i32 0
  %13 = load i64, i64* %car9, align 8
  %cmp10 = icmp eq i64 %9, %13
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.7
  store i1 true, i1* %retval
  br label %return

if.end:                                           ; preds = %for.body.7
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i64, i64* %tail2, align 8
  %sub12 = sub nsw i64 %14, 3
  %15 = inttoptr i64 %sub12 to i8*
  %16 = bitcast i8* %15 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %16, i32 0, i32 1
  %cdr = bitcast %union.anon.6* %u to i64*
  %17 = load i64, i64* %cdr, align 8
  %sub13 = sub nsw i64 %17, 3
  %18 = inttoptr i64 %sub13 to i8*
  %19 = bitcast i8* %18 to %struct.Lisp_Cons*
  %u14 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %19, i32 0, i32 1
  %cdr15 = bitcast %union.anon.6* %u14 to i64*
  %20 = load i64, i64* %cdr15, align 8
  store i64 %20, i64* %tail2, align 8
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.end
  %21 = load i64, i64* %tail1, align 8
  %sub17 = sub nsw i64 %21, 3
  %22 = inttoptr i64 %sub17 to i8*
  %23 = bitcast i8* %22 to %struct.Lisp_Cons*
  %u18 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %23, i32 0, i32 1
  %cdr19 = bitcast %union.anon.6* %u18 to i64*
  %24 = load i64, i64* %cdr19, align 8
  store i64 %24, i64* %tail1, align 8
  br label %for.cond

for.end.20:                                       ; preds = %for.cond
  store i1 false, i1* %retval
  br label %return

return:                                           ; preds = %for.end.20, %if.then
  %25 = load i1, i1* %retval
  ret i1 %25
}

; Function Attrs: nounwind uwtable
define i64 @Ftext_property_any(i64 %start, i64 %end, i64 %property, i64 %value, i64 %object) #0 {
entry:
  %retval = alloca i64, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %property.addr = alloca i64, align 8
  %value.addr = alloca i64, align 8
  %object.addr = alloca i64, align 8
  %i = alloca %struct.interval*, align 8
  %e = alloca i64, align 8
  %pos = alloca i64, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  store i64 %property, i64* %property.addr, align 8
  store i64 %value, i64* %value.addr, align 8
  store i64 %object, i64* %object.addr, align 8
  %0 = load i64, i64* %object.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %2 = bitcast %struct.buffer* %1 to i8*
  %call1 = call i64 @make_lisp_ptr(i8* %2, i32 5)
  store i64 %call1, i64* %object.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* %object.addr, align 8
  %call2 = call %struct.interval* @validate_interval_range(i64 %3, i64* %start.addr, i64* %end.addr, i1 zeroext false)
  store %struct.interval* %call2, %struct.interval** %i, align 8
  %4 = load %struct.interval*, %struct.interval** %i, align 8
  %tobool = icmp ne %struct.interval* %4, null
  br i1 %tobool, label %if.end.8, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %5 = load i64, i64* %value.addr, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp5 = icmp eq i64 %5, %call4
  br i1 %cmp5, label %lor.lhs.false, label %cond.true

lor.lhs.false:                                    ; preds = %if.then.3
  %6 = load i64, i64* %start.addr, align 8
  %7 = load i64, i64* %end.addr, align 8
  %cmp6 = icmp eq i64 %6, %7
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %if.then.3
  %call7 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %8 = load i64, i64* %start.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call7, %cond.true ], [ %8, %cond.false ]
  store i64 %cond, i64* %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %9 = load i64, i64* %end.addr, align 8
  %shr = ashr i64 %9, 2
  store i64 %shr, i64* %e, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.22, %if.end.8
  %10 = load %struct.interval*, %struct.interval** %i, align 8
  %tobool9 = icmp ne %struct.interval* %10, null
  br i1 %tobool9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load %struct.interval*, %struct.interval** %i, align 8
  %position = getelementptr inbounds %struct.interval, %struct.interval* %11, i32 0, i32 1
  %12 = load i64, i64* %position, align 8
  %13 = load i64, i64* %e, align 8
  %cmp10 = icmp sge i64 %12, %13
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %while.body
  br label %while.end

if.end.12:                                        ; preds = %while.body
  %14 = load %struct.interval*, %struct.interval** %i, align 8
  %plist = getelementptr inbounds %struct.interval, %struct.interval* %14, i32 0, i32 6
  %15 = load i64, i64* %plist, align 8
  %16 = load i64, i64* %property.addr, align 8
  %call13 = call i64 @textget(i64 %15, i64 %16)
  %17 = load i64, i64* %value.addr, align 8
  %cmp14 = icmp eq i64 %call13, %17
  br i1 %cmp14, label %if.then.15, label %if.end.22

if.then.15:                                       ; preds = %if.end.12
  %18 = load %struct.interval*, %struct.interval** %i, align 8
  %position16 = getelementptr inbounds %struct.interval, %struct.interval* %18, i32 0, i32 1
  %19 = load i64, i64* %position16, align 8
  store i64 %19, i64* %pos, align 8
  %20 = load i64, i64* %pos, align 8
  %21 = load i64, i64* %start.addr, align 8
  %shr17 = ashr i64 %21, 2
  %cmp18 = icmp slt i64 %20, %shr17
  br i1 %cmp18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.then.15
  %22 = load i64, i64* %start.addr, align 8
  %shr20 = ashr i64 %22, 2
  store i64 %shr20, i64* %pos, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.then.15
  %23 = load i64, i64* %pos, align 8
  %shl = shl i64 %23, 2
  %add = add i64 %shl, 2
  store i64 %add, i64* %retval
  br label %return

if.end.22:                                        ; preds = %if.end.12
  %24 = load %struct.interval*, %struct.interval** %i, align 8
  %call23 = call %struct.interval* @next_interval(%struct.interval* %24)
  store %struct.interval* %call23, %struct.interval** %i, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.11, %while.cond
  %call24 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call24, i64* %retval
  br label %return

return:                                           ; preds = %while.end, %if.end.21, %cond.end
  %25 = load i64, i64* %retval
  ret i64 %25
}

; Function Attrs: nounwind uwtable
define i64 @Ftext_property_not_all(i64 %start, i64 %end, i64 %property, i64 %value, i64 %object) #0 {
entry:
  %retval = alloca i64, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %property.addr = alloca i64, align 8
  %value.addr = alloca i64, align 8
  %object.addr = alloca i64, align 8
  %i = alloca %struct.interval*, align 8
  %s = alloca i64, align 8
  %e = alloca i64, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  store i64 %property, i64* %property.addr, align 8
  store i64 %value, i64* %value.addr, align 8
  store i64 %object, i64* %object.addr, align 8
  %0 = load i64, i64* %object.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %2 = bitcast %struct.buffer* %1 to i8*
  %call1 = call i64 @make_lisp_ptr(i8* %2, i32 5)
  store i64 %call1, i64* %object.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* %object.addr, align 8
  %call2 = call %struct.interval* @validate_interval_range(i64 %3, i64* %start.addr, i64* %end.addr, i1 zeroext false)
  store %struct.interval* %call2, %struct.interval** %i, align 8
  %4 = load %struct.interval*, %struct.interval** %i, align 8
  %tobool = icmp ne %struct.interval* %4, null
  br i1 %tobool, label %if.end.8, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %5 = load i64, i64* %value.addr, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp5 = icmp eq i64 %5, %call4
  br i1 %cmp5, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.3
  %6 = load i64, i64* %start.addr, align 8
  %7 = load i64, i64* %end.addr, align 8
  %cmp6 = icmp eq i64 %6, %7
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %if.then.3
  %call7 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %8 = load i64, i64* %start.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call7, %cond.true ], [ %8, %cond.false ]
  store i64 %cond, i64* %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %9 = load i64, i64* %start.addr, align 8
  %shr = ashr i64 %9, 2
  store i64 %shr, i64* %s, align 8
  %10 = load i64, i64* %end.addr, align 8
  %shr9 = ashr i64 %10, 2
  store i64 %shr9, i64* %e, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.22, %if.end.8
  %11 = load %struct.interval*, %struct.interval** %i, align 8
  %tobool10 = icmp ne %struct.interval* %11, null
  br i1 %tobool10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load %struct.interval*, %struct.interval** %i, align 8
  %position = getelementptr inbounds %struct.interval, %struct.interval* %12, i32 0, i32 1
  %13 = load i64, i64* %position, align 8
  %14 = load i64, i64* %e, align 8
  %cmp11 = icmp sge i64 %13, %14
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %while.body
  br label %while.end

if.end.13:                                        ; preds = %while.body
  %15 = load %struct.interval*, %struct.interval** %i, align 8
  %plist = getelementptr inbounds %struct.interval, %struct.interval* %15, i32 0, i32 6
  %16 = load i64, i64* %plist, align 8
  %17 = load i64, i64* %property.addr, align 8
  %call14 = call i64 @textget(i64 %16, i64 %17)
  %18 = load i64, i64* %value.addr, align 8
  %cmp15 = icmp eq i64 %call14, %18
  br i1 %cmp15, label %if.end.22, label %if.then.16

if.then.16:                                       ; preds = %if.end.13
  %19 = load %struct.interval*, %struct.interval** %i, align 8
  %position17 = getelementptr inbounds %struct.interval, %struct.interval* %19, i32 0, i32 1
  %20 = load i64, i64* %position17, align 8
  %21 = load i64, i64* %s, align 8
  %cmp18 = icmp sgt i64 %20, %21
  br i1 %cmp18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.then.16
  %22 = load %struct.interval*, %struct.interval** %i, align 8
  %position20 = getelementptr inbounds %struct.interval, %struct.interval* %22, i32 0, i32 1
  %23 = load i64, i64* %position20, align 8
  store i64 %23, i64* %s, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.then.16
  %24 = load i64, i64* %s, align 8
  %shl = shl i64 %24, 2
  %add = add i64 %shl, 2
  store i64 %add, i64* %retval
  br label %return

if.end.22:                                        ; preds = %if.end.13
  %25 = load %struct.interval*, %struct.interval** %i, align 8
  %call23 = call %struct.interval* @next_interval(%struct.interval* %25)
  store %struct.interval* %call23, %struct.interval** %i, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.12, %while.cond
  %call24 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call24, i64* %retval
  br label %return

return:                                           ; preds = %while.end, %if.end.21, %cond.end
  %26 = load i64, i64* %retval
  ret i64 %26
}

; Function Attrs: nounwind uwtable
define i32 @text_property_stickiness(i64 %prop, i64 %pos, i64 %buffer) #0 {
entry:
  %retval = alloca i32, align 4
  %prop.addr = alloca i64, align 8
  %pos.addr = alloca i64, align 8
  %buffer.addr = alloca i64, align 8
  %ignore_previous_character = alloca i8, align 1
  %prev_pos = alloca i64, align 8
  %front_sticky = alloca i64, align 8
  %is_rear_sticky = alloca i8, align 1
  %is_front_sticky = alloca i8, align 1
  %defalt = alloca i64, align 8
  %rear_non_sticky = alloca i64, align 8
  store i64 %prop, i64* %prop.addr, align 8
  store i64 %pos, i64* %pos.addr, align 8
  store i64 %buffer, i64* %buffer.addr, align 8
  %0 = load i64, i64* %pos.addr, align 8
  %shr = ashr i64 %0, 2
  %sub = sub nsw i64 %shr, 1
  %shl = shl i64 %sub, 2
  %add = add i64 %shl, 2
  store i64 %add, i64* %prev_pos, align 8
  store i8 1, i8* %is_rear_sticky, align 1
  store i8 0, i8* %is_front_sticky, align 1
  %1 = load i64, i64* %prop.addr, align 8
  %2 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 291), align 8
  %call = call i64 @Fassq(i64 %1, i64 %2)
  store i64 %call, i64* %defalt, align 8
  %3 = load i64, i64* %buffer.addr, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %3, %call1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %5 = bitcast %struct.buffer* %4 to i8*
  %call2 = call i64 @make_lisp_ptr(i8* %5, i32 5)
  store i64 %call2, i64* %buffer.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i64, i64* %pos.addr, align 8
  %shr3 = ashr i64 %6, 2
  %7 = load i64, i64* %buffer.addr, align 8
  %call4 = call %struct.buffer* @XBUFFER(i64 %7)
  %8 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp5 = icmp eq %struct.buffer* %call4, %8
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %9 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %9, i32 0, i32 77
  %10 = load i64, i64* %begv, align 8
  br label %cond.end.16

cond.false:                                       ; preds = %if.end
  %11 = load i64, i64* %buffer.addr, align 8
  %call6 = call %struct.buffer* @XBUFFER(i64 %11)
  %begv_marker_ = getelementptr inbounds %struct.buffer, %struct.buffer* %call6, i32 0, i32 46
  %12 = load i64, i64* %begv_marker_, align 8
  %call7 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp8 = icmp eq i64 %12, %call7
  br i1 %cmp8, label %cond.true.9, label %cond.false.12

cond.true.9:                                      ; preds = %cond.false
  %13 = load i64, i64* %buffer.addr, align 8
  %call10 = call %struct.buffer* @XBUFFER(i64 %13)
  %begv11 = getelementptr inbounds %struct.buffer, %struct.buffer* %call10, i32 0, i32 77
  %14 = load i64, i64* %begv11, align 8
  br label %cond.end

cond.false.12:                                    ; preds = %cond.false
  %15 = load i64, i64* %buffer.addr, align 8
  %call13 = call %struct.buffer* @XBUFFER(i64 %15)
  %begv_marker_14 = getelementptr inbounds %struct.buffer, %struct.buffer* %call13, i32 0, i32 46
  %16 = load i64, i64* %begv_marker_14, align 8
  %call15 = call i64 @marker_position(i64 %16)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.12, %cond.true.9
  %cond = phi i64 [ %14, %cond.true.9 ], [ %call15, %cond.false.12 ]
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.end, %cond.true
  %cond17 = phi i64 [ %10, %cond.true ], [ %cond, %cond.end ]
  %cmp18 = icmp sle i64 %shr3, %cond17
  %frombool = zext i1 %cmp18 to i8
  store i8 %frombool, i8* %ignore_previous_character, align 1
  %17 = load i8, i8* %ignore_previous_character, align 1
  %tobool = trunc i8 %17 to i1
  br i1 %tobool, label %if.then.25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.16
  %18 = load i64, i64* %defalt, align 8
  %and = and i64 %18, 7
  %conv = trunc i64 %and to i32
  %cmp19 = icmp eq i32 %conv, 3
  br i1 %cmp19, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false
  %19 = load i64, i64* %defalt, align 8
  %sub21 = sub nsw i64 %19, 3
  %20 = inttoptr i64 %sub21 to i8*
  %21 = bitcast i8* %20 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %21, i32 0, i32 1
  %cdr = bitcast %union.anon.6* %u to i64*
  %22 = load i64, i64* %cdr, align 8
  %call22 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp23 = icmp eq i64 %22, %call22
  br i1 %cmp23, label %if.else, label %if.then.25

if.then.25:                                       ; preds = %land.lhs.true, %cond.end.16
  store i8 0, i8* %is_rear_sticky, align 1
  br label %if.end.42

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %23 = load i64, i64* %prev_pos, align 8
  %call26 = call i64 @builtin_lisp_symbol(i32 794)
  %24 = load i64, i64* %buffer.addr, align 8
  %call27 = call i64 @Fget_text_property(i64 %23, i64 %call26, i64 %24)
  store i64 %call27, i64* %rear_non_sticky, align 8
  %25 = load i64, i64* %rear_non_sticky, align 8
  %and28 = and i64 %25, 7
  %conv29 = trunc i64 %and28 to i32
  %cmp30 = icmp eq i32 %conv29, 3
  br i1 %cmp30, label %cond.true.32, label %cond.false.34

cond.true.32:                                     ; preds = %if.else
  %26 = load i64, i64* %prop.addr, align 8
  %27 = load i64, i64* %rear_non_sticky, align 8
  %call33 = call i64 @Fmemq(i64 %26, i64 %27)
  br label %cond.end.35

cond.false.34:                                    ; preds = %if.else
  %28 = load i64, i64* %rear_non_sticky, align 8
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.34, %cond.true.32
  %cond36 = phi i64 [ %call33, %cond.true.32 ], [ %28, %cond.false.34 ]
  %call37 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp38 = icmp eq i64 %cond36, %call37
  br i1 %cmp38, label %if.end.41, label %if.then.40

if.then.40:                                       ; preds = %cond.end.35
  store i8 0, i8* %is_rear_sticky, align 1
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %cond.end.35
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.25
  %29 = load i64, i64* %pos.addr, align 8
  %call43 = call i64 @builtin_lisp_symbol(i32 468)
  %30 = load i64, i64* %buffer.addr, align 8
  %call44 = call i64 @Fget_text_property(i64 %29, i64 %call43, i64 %30)
  store i64 %call44, i64* %front_sticky, align 8
  %31 = load i64, i64* %front_sticky, align 8
  %call45 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp46 = icmp eq i64 %31, %call45
  br i1 %cmp46, label %if.then.58, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %if.end.42
  %32 = load i64, i64* %front_sticky, align 8
  %and49 = and i64 %32, 7
  %conv50 = trunc i64 %and49 to i32
  %cmp51 = icmp eq i32 %conv50, 3
  br i1 %cmp51, label %land.lhs.true.53, label %if.end.59

land.lhs.true.53:                                 ; preds = %lor.lhs.false.48
  %33 = load i64, i64* %prop.addr, align 8
  %34 = load i64, i64* %front_sticky, align 8
  %call54 = call i64 @Fmemq(i64 %33, i64 %34)
  %call55 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp56 = icmp eq i64 %call54, %call55
  br i1 %cmp56, label %if.end.59, label %if.then.58

if.then.58:                                       ; preds = %land.lhs.true.53, %if.end.42
  store i8 1, i8* %is_front_sticky, align 1
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.58, %land.lhs.true.53, %lor.lhs.false.48
  %35 = load i8, i8* %is_rear_sticky, align 1
  %tobool60 = trunc i8 %35 to i1
  br i1 %tobool60, label %land.lhs.true.62, label %if.else.65

land.lhs.true.62:                                 ; preds = %if.end.59
  %36 = load i8, i8* %is_front_sticky, align 1
  %tobool63 = trunc i8 %36 to i1
  br i1 %tobool63, label %if.else.65, label %if.then.64

if.then.64:                                       ; preds = %land.lhs.true.62
  store i32 -1, i32* %retval
  br label %return

if.else.65:                                       ; preds = %land.lhs.true.62, %if.end.59
  %37 = load i8, i8* %is_rear_sticky, align 1
  %tobool66 = trunc i8 %37 to i1
  br i1 %tobool66, label %if.else.71, label %land.lhs.true.67

land.lhs.true.67:                                 ; preds = %if.else.65
  %38 = load i8, i8* %is_front_sticky, align 1
  %tobool68 = trunc i8 %38 to i1
  br i1 %tobool68, label %if.then.70, label %if.else.71

if.then.70:                                       ; preds = %land.lhs.true.67
  store i32 1, i32* %retval
  br label %return

if.else.71:                                       ; preds = %land.lhs.true.67, %if.else.65
  %39 = load i8, i8* %is_rear_sticky, align 1
  %tobool72 = trunc i8 %39 to i1
  br i1 %tobool72, label %if.end.76, label %land.lhs.true.73

land.lhs.true.73:                                 ; preds = %if.else.71
  %40 = load i8, i8* %is_front_sticky, align 1
  %tobool74 = trunc i8 %40 to i1
  br i1 %tobool74, label %if.end.76, label %if.then.75

if.then.75:                                       ; preds = %land.lhs.true.73
  store i32 0, i32* %retval
  br label %return

if.end.76:                                        ; preds = %land.lhs.true.73, %if.else.71
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77
  %41 = load i8, i8* %ignore_previous_character, align 1
  %tobool79 = trunc i8 %41 to i1
  br i1 %tobool79, label %if.then.86, label %lor.lhs.false.81

lor.lhs.false.81:                                 ; preds = %if.end.78
  %42 = load i64, i64* %prev_pos, align 8
  %43 = load i64, i64* %prop.addr, align 8
  %44 = load i64, i64* %buffer.addr, align 8
  %call82 = call i64 @Fget_text_property(i64 %42, i64 %43, i64 %44)
  %call83 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp84 = icmp eq i64 %call82, %call83
  br i1 %cmp84, label %if.then.86, label %if.else.87

if.then.86:                                       ; preds = %lor.lhs.false.81, %if.end.78
  store i32 1, i32* %retval
  br label %return

if.else.87:                                       ; preds = %lor.lhs.false.81
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.else.87, %if.then.86, %if.then.75, %if.then.70, %if.then.64
  %45 = load i32, i32* %retval
  ret i32 %45
}

declare i64 @Fassq(i64, i64) #1

declare i64 @Fmemq(i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @copy_text_properties(i64 %start, i64 %end, i64 %src, i64 %pos, i64 %dest, i64 %prop) #0 {
entry:
  %retval = alloca i64, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %src.addr = alloca i64, align 8
  %pos.addr = alloca i64, align 8
  %dest.addr = alloca i64, align 8
  %prop.addr = alloca i64, align 8
  %i = alloca %struct.interval*, align 8
  %res = alloca i64, align 8
  %stuff = alloca i64, align 8
  %plist = alloca i64, align 8
  %s = alloca i64, align 8
  %e = alloca i64, align 8
  %e2 = alloca i64, align 8
  %p = alloca i64, align 8
  %len = alloca i64, align 8
  %modified = alloca i8, align 1
  %dest_start = alloca i64, align 8
  %dest_end = alloca i64, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  store i64 %src, i64* %src.addr, align 8
  store i64 %pos, i64* %pos.addr, align 8
  store i64 %dest, i64* %dest.addr, align 8
  store i64 %prop, i64* %prop.addr, align 8
  store i8 0, i8* %modified, align 1
  %0 = load i64, i64* %src.addr, align 8
  %call = call %struct.interval* @validate_interval_range(i64 %0, i64* %start.addr, i64* %end.addr, i1 zeroext false)
  store %struct.interval* %call, %struct.interval** %i, align 8
  %1 = load %struct.interval*, %struct.interval** %i, align 8
  %tobool = icmp ne %struct.interval* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %2 = load i64, i64* %pos.addr, align 8
  %and = and i64 %2, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %3 = load i64, i64* %pos.addr, align 8
  %call3 = call i32 @XMISCTYPE(i64 %3)
  %cmp4 = icmp eq i32 %call3, 24236
  br i1 %cmp4, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %land.lhs.true
  %4 = load i64, i64* %pos.addr, align 8
  %call7 = call i64 @marker_position(i64 %4)
  %call8 = call i64 @make_natnum(i64 %call7)
  store i64 %call8, i64* %pos.addr, align 8
  br label %if.end.15

if.else:                                          ; preds = %land.lhs.true, %do.body
  %5 = load i64, i64* %pos.addr, align 8
  %and9 = and i64 %5, 7
  %conv10 = trunc i64 %and9 to i32
  %and11 = and i32 %conv10, -5
  %cmp12 = icmp eq i32 %and11, 2
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %call14 = call i64 @builtin_lisp_symbol(i32 558)
  %6 = load i64, i64* %pos.addr, align 8
  %7 = call i64 @wrong_type_argument(i64 %call14, i64 %6) #4
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %8, %cond.true
  br label %if.end.15

if.end.15:                                        ; preds = %cond.end, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.15
  %9 = load i64, i64* %pos.addr, align 8
  %shr = ashr i64 %9, 2
  %10 = load i64, i64* %end.addr, align 8
  %shr16 = ashr i64 %10, 2
  %11 = load i64, i64* %start.addr, align 8
  %shr17 = ashr i64 %11, 2
  %sub = sub nsw i64 %shr16, %shr17
  %add = add nsw i64 %shr, %sub
  store i64 %add, i64* %e, align 8
  %12 = load i64, i64* %e, align 8
  %cmp18 = icmp slt i64 2305843009213693951, %12
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %do.end
  %13 = load i64, i64* %pos.addr, align 8
  %14 = load i64, i64* %end.addr, align 8
  call void @args_out_of_range(i64 %13, i64 %14) #4
  unreachable

if.end.21:                                        ; preds = %do.end
  %15 = load i64, i64* %pos.addr, align 8
  store i64 %15, i64* %dest_start, align 8
  %16 = load i64, i64* %e, align 8
  %call22 = call i64 @make_natnum(i64 %16)
  store i64 %call22, i64* %dest_end, align 8
  %17 = load i64, i64* %dest.addr, align 8
  %call23 = call %struct.interval* @validate_interval_range(i64 %17, i64* %dest_start, i64* %dest_end, i1 zeroext false)
  %18 = load i64, i64* %start.addr, align 8
  %shr24 = ashr i64 %18, 2
  store i64 %shr24, i64* %s, align 8
  %19 = load i64, i64* %end.addr, align 8
  %shr25 = ashr i64 %19, 2
  store i64 %shr25, i64* %e, align 8
  %20 = load i64, i64* %pos.addr, align 8
  %shr26 = ashr i64 %20, 2
  store i64 %shr26, i64* %p, align 8
  %call27 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call27, i64* %stuff, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.100, %if.end.21
  %21 = load i64, i64* %s, align 8
  %22 = load i64, i64* %e, align 8
  %cmp28 = icmp slt i64 %21, %22
  br i1 %cmp28, label %while.body, label %while.end.103

while.body:                                       ; preds = %while.cond
  %23 = load %struct.interval*, %struct.interval** %i, align 8
  %position = getelementptr inbounds %struct.interval, %struct.interval* %23, i32 0, i32 1
  %24 = load i64, i64* %position, align 8
  %25 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp30 = icmp eq %struct.interval* %25, null
  br i1 %cmp30, label %cond.true.32, label %cond.false.33

cond.true.32:                                     ; preds = %while.body
  br label %cond.end.57

cond.false.33:                                    ; preds = %while.body
  %26 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp34 = icmp eq %struct.interval* %26, null
  br i1 %cmp34, label %cond.true.36, label %cond.false.37

cond.true.36:                                     ; preds = %cond.false.33
  br label %cond.end.38

cond.false.37:                                    ; preds = %cond.false.33
  %27 = load %struct.interval*, %struct.interval** %i, align 8
  %total_length = getelementptr inbounds %struct.interval, %struct.interval* %27, i32 0, i32 0
  %28 = load i64, i64* %total_length, align 8
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.false.37, %cond.true.36
  %cond = phi i64 [ 0, %cond.true.36 ], [ %28, %cond.false.37 ]
  %29 = load %struct.interval*, %struct.interval** %i, align 8
  %right = getelementptr inbounds %struct.interval, %struct.interval* %29, i32 0, i32 3
  %30 = load %struct.interval*, %struct.interval** %right, align 8
  %cmp39 = icmp eq %struct.interval* %30, null
  br i1 %cmp39, label %cond.true.41, label %cond.false.42

cond.true.41:                                     ; preds = %cond.end.38
  br label %cond.end.45

cond.false.42:                                    ; preds = %cond.end.38
  %31 = load %struct.interval*, %struct.interval** %i, align 8
  %right43 = getelementptr inbounds %struct.interval, %struct.interval* %31, i32 0, i32 3
  %32 = load %struct.interval*, %struct.interval** %right43, align 8
  %total_length44 = getelementptr inbounds %struct.interval, %struct.interval* %32, i32 0, i32 0
  %33 = load i64, i64* %total_length44, align 8
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.42, %cond.true.41
  %cond46 = phi i64 [ 0, %cond.true.41 ], [ %33, %cond.false.42 ]
  %sub47 = sub nsw i64 %cond, %cond46
  %34 = load %struct.interval*, %struct.interval** %i, align 8
  %left = getelementptr inbounds %struct.interval, %struct.interval* %34, i32 0, i32 2
  %35 = load %struct.interval*, %struct.interval** %left, align 8
  %cmp48 = icmp eq %struct.interval* %35, null
  br i1 %cmp48, label %cond.true.50, label %cond.false.51

cond.true.50:                                     ; preds = %cond.end.45
  br label %cond.end.54

cond.false.51:                                    ; preds = %cond.end.45
  %36 = load %struct.interval*, %struct.interval** %i, align 8
  %left52 = getelementptr inbounds %struct.interval, %struct.interval* %36, i32 0, i32 2
  %37 = load %struct.interval*, %struct.interval** %left52, align 8
  %total_length53 = getelementptr inbounds %struct.interval, %struct.interval* %37, i32 0, i32 0
  %38 = load i64, i64* %total_length53, align 8
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.false.51, %cond.true.50
  %cond55 = phi i64 [ 0, %cond.true.50 ], [ %38, %cond.false.51 ]
  %sub56 = sub nsw i64 %sub47, %cond55
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.end.54, %cond.true.32
  %cond58 = phi i64 [ 0, %cond.true.32 ], [ %sub56, %cond.end.54 ]
  %add59 = add nsw i64 %24, %cond58
  store i64 %add59, i64* %e2, align 8
  %39 = load i64, i64* %e2, align 8
  %40 = load i64, i64* %e, align 8
  %cmp60 = icmp sgt i64 %39, %40
  br i1 %cmp60, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %cond.end.57
  %41 = load i64, i64* %e, align 8
  store i64 %41, i64* %e2, align 8
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.62, %cond.end.57
  %42 = load i64, i64* %e2, align 8
  %43 = load i64, i64* %s, align 8
  %sub64 = sub nsw i64 %42, %43
  store i64 %sub64, i64* %len, align 8
  %44 = load %struct.interval*, %struct.interval** %i, align 8
  %plist65 = getelementptr inbounds %struct.interval, %struct.interval* %44, i32 0, i32 6
  %45 = load i64, i64* %plist65, align 8
  store i64 %45, i64* %plist, align 8
  %46 = load i64, i64* %prop.addr, align 8
  %call66 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp67 = icmp eq i64 %46, %call66
  br i1 %cmp67, label %if.end.85, label %if.then.69

if.then.69:                                       ; preds = %if.end.63
  br label %while.cond.70

while.cond.70:                                    ; preds = %if.end.82, %if.then.69
  %47 = load i64, i64* %plist, align 8
  %call71 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp72 = icmp eq i64 %47, %call71
  %lnot = xor i1 %cmp72, true
  br i1 %lnot, label %while.body.74, label %while.end

while.body.74:                                    ; preds = %while.cond.70
  %48 = load i64, i64* %plist, align 8
  %call75 = call i64 @Fcar(i64 %48)
  %49 = load i64, i64* %prop.addr, align 8
  %cmp76 = icmp eq i64 %call75, %49
  br i1 %cmp76, label %if.then.78, label %if.end.82

if.then.78:                                       ; preds = %while.body.74
  %50 = load i64, i64* %prop.addr, align 8
  %51 = load i64, i64* %plist, align 8
  %call79 = call i64 @Fcdr(i64 %51)
  %call80 = call i64 @Fcar(i64 %call79)
  %call81 = call i64 @list2(i64 %50, i64 %call80)
  store i64 %call81, i64* %plist, align 8
  br label %while.end

if.end.82:                                        ; preds = %while.body.74
  %52 = load i64, i64* %plist, align 8
  %call83 = call i64 @Fcdr(i64 %52)
  %call84 = call i64 @Fcdr(i64 %call83)
  store i64 %call84, i64* %plist, align 8
  br label %while.cond.70

while.end:                                        ; preds = %if.then.78, %while.cond.70
  br label %if.end.85

if.end.85:                                        ; preds = %while.end, %if.end.63
  %53 = load i64, i64* %plist, align 8
  %call86 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp87 = icmp eq i64 %53, %call86
  br i1 %cmp87, label %if.end.96, label %if.then.89

if.then.89:                                       ; preds = %if.end.85
  %54 = load i64, i64* %p, align 8
  %shl = shl i64 %54, 2
  %add90 = add i64 %shl, 2
  %55 = load i64, i64* %p, align 8
  %56 = load i64, i64* %len, align 8
  %add91 = add nsw i64 %55, %56
  %shl92 = shl i64 %add91, 2
  %add93 = add i64 %shl92, 2
  %57 = load i64, i64* %plist, align 8
  %call94 = call i64 @list3(i64 %add90, i64 %add93, i64 %57)
  %58 = load i64, i64* %stuff, align 8
  %call95 = call i64 @Fcons(i64 %call94, i64 %58)
  store i64 %call95, i64* %stuff, align 8
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.89, %if.end.85
  %59 = load %struct.interval*, %struct.interval** %i, align 8
  %call97 = call %struct.interval* @next_interval(%struct.interval* %59)
  store %struct.interval* %call97, %struct.interval** %i, align 8
  %60 = load %struct.interval*, %struct.interval** %i, align 8
  %tobool98 = icmp ne %struct.interval* %60, null
  br i1 %tobool98, label %if.end.100, label %if.then.99

if.then.99:                                       ; preds = %if.end.96
  br label %while.end.103

if.end.100:                                       ; preds = %if.end.96
  %61 = load i64, i64* %len, align 8
  %62 = load i64, i64* %p, align 8
  %add101 = add nsw i64 %62, %61
  store i64 %add101, i64* %p, align 8
  %63 = load %struct.interval*, %struct.interval** %i, align 8
  %position102 = getelementptr inbounds %struct.interval, %struct.interval* %63, i32 0, i32 1
  %64 = load i64, i64* %position102, align 8
  store i64 %64, i64* %s, align 8
  br label %while.cond

while.end.103:                                    ; preds = %if.then.99, %while.cond
  br label %while.cond.104

while.cond.104:                                   ; preds = %if.end.122, %while.end.103
  %65 = load i64, i64* %stuff, align 8
  %call105 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp106 = icmp eq i64 %65, %call105
  %lnot108 = xor i1 %cmp106, true
  br i1 %lnot108, label %while.body.109, label %while.end.124

while.body.109:                                   ; preds = %while.cond.104
  %66 = load i64, i64* %stuff, align 8
  %call110 = call i64 @Fcar(i64 %66)
  store i64 %call110, i64* %res, align 8
  %67 = load i64, i64* %res, align 8
  %call111 = call i64 @Fcar(i64 %67)
  %68 = load i64, i64* %res, align 8
  %call112 = call i64 @Fcdr(i64 %68)
  %call113 = call i64 @Fcar(i64 %call112)
  %69 = load i64, i64* %res, align 8
  %call114 = call i64 @Fcdr(i64 %69)
  %call115 = call i64 @Fcdr(i64 %call114)
  %call116 = call i64 @Fcar(i64 %call115)
  %70 = load i64, i64* %dest.addr, align 8
  %call117 = call i64 @Fadd_text_properties(i64 %call111, i64 %call113, i64 %call116, i64 %70)
  store i64 %call117, i64* %res, align 8
  %71 = load i64, i64* %res, align 8
  %call118 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp119 = icmp eq i64 %71, %call118
  br i1 %cmp119, label %if.end.122, label %if.then.121

if.then.121:                                      ; preds = %while.body.109
  store i8 1, i8* %modified, align 1
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.121, %while.body.109
  %72 = load i64, i64* %stuff, align 8
  %call123 = call i64 @Fcdr(i64 %72)
  store i64 %call123, i64* %stuff, align 8
  br label %while.cond.104

while.end.124:                                    ; preds = %while.cond.104
  %73 = load i8, i8* %modified, align 1
  %tobool125 = trunc i8 %73 to i1
  br i1 %tobool125, label %cond.true.127, label %cond.false.129

cond.true.127:                                    ; preds = %while.end.124
  %call128 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end.131

cond.false.129:                                   ; preds = %while.end.124
  %call130 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.131

cond.end.131:                                     ; preds = %cond.false.129, %cond.true.127
  %cond132 = phi i64 [ %call128, %cond.true.127 ], [ %call130, %cond.false.129 ]
  store i64 %cond132, i64* %retval
  br label %return

return:                                           ; preds = %cond.end.131, %if.then
  %74 = load i64, i64* %retval
  ret i64 %74
}

declare i64 @Fcar(i64) #1

declare i64 @list2(i64, i64) #1

declare i64 @Fcdr(i64) #1

declare i64 @list3(i64, i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @text_property_list(i64 %object, i64 %start, i64 %end, i64 %prop) #0 {
entry:
  %object.addr = alloca i64, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %prop.addr = alloca i64, align 8
  %i = alloca %struct.interval*, align 8
  %result = alloca i64, align 8
  %s = alloca i64, align 8
  %e = alloca i64, align 8
  %interval_end = alloca i64, align 8
  %len = alloca i64, align 8
  %plist = alloca i64, align 8
  store i64 %object, i64* %object.addr, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  store i64 %prop, i64* %prop.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %result, align 8
  %0 = load i64, i64* %object.addr, align 8
  %call1 = call %struct.interval* @validate_interval_range(i64 %0, i64* %start.addr, i64* %end.addr, i1 zeroext false)
  store %struct.interval* %call1, %struct.interval** %i, align 8
  %1 = load %struct.interval*, %struct.interval** %i, align 8
  %tobool = icmp ne %struct.interval* %1, null
  br i1 %tobool, label %if.then, label %if.end.62

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %start.addr, align 8
  %shr = ashr i64 %2, 2
  store i64 %shr, i64* %s, align 8
  %3 = load i64, i64* %end.addr, align 8
  %shr2 = ashr i64 %3, 2
  store i64 %shr2, i64* %e, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.60, %if.then
  %4 = load i64, i64* %s, align 8
  %5 = load i64, i64* %e, align 8
  %cmp = icmp slt i64 %4, %5
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.interval*, %struct.interval** %i, align 8
  %position = getelementptr inbounds %struct.interval, %struct.interval* %6, i32 0, i32 1
  %7 = load i64, i64* %position, align 8
  %8 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp3 = icmp eq %struct.interval* %8, null
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  br label %cond.end.22

cond.false:                                       ; preds = %while.body
  %9 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp4 = icmp eq %struct.interval* %9, null
  br i1 %cmp4, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %cond.false
  br label %cond.end

cond.false.6:                                     ; preds = %cond.false
  %10 = load %struct.interval*, %struct.interval** %i, align 8
  %total_length = getelementptr inbounds %struct.interval, %struct.interval* %10, i32 0, i32 0
  %11 = load i64, i64* %total_length, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.6, %cond.true.5
  %cond = phi i64 [ 0, %cond.true.5 ], [ %11, %cond.false.6 ]
  %12 = load %struct.interval*, %struct.interval** %i, align 8
  %right = getelementptr inbounds %struct.interval, %struct.interval* %12, i32 0, i32 3
  %13 = load %struct.interval*, %struct.interval** %right, align 8
  %cmp7 = icmp eq %struct.interval* %13, null
  br i1 %cmp7, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %cond.end
  br label %cond.end.12

cond.false.9:                                     ; preds = %cond.end
  %14 = load %struct.interval*, %struct.interval** %i, align 8
  %right10 = getelementptr inbounds %struct.interval, %struct.interval* %14, i32 0, i32 3
  %15 = load %struct.interval*, %struct.interval** %right10, align 8
  %total_length11 = getelementptr inbounds %struct.interval, %struct.interval* %15, i32 0, i32 0
  %16 = load i64, i64* %total_length11, align 8
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.9, %cond.true.8
  %cond13 = phi i64 [ 0, %cond.true.8 ], [ %16, %cond.false.9 ]
  %sub = sub nsw i64 %cond, %cond13
  %17 = load %struct.interval*, %struct.interval** %i, align 8
  %left = getelementptr inbounds %struct.interval, %struct.interval* %17, i32 0, i32 2
  %18 = load %struct.interval*, %struct.interval** %left, align 8
  %cmp14 = icmp eq %struct.interval* %18, null
  br i1 %cmp14, label %cond.true.15, label %cond.false.16

cond.true.15:                                     ; preds = %cond.end.12
  br label %cond.end.19

cond.false.16:                                    ; preds = %cond.end.12
  %19 = load %struct.interval*, %struct.interval** %i, align 8
  %left17 = getelementptr inbounds %struct.interval, %struct.interval* %19, i32 0, i32 2
  %20 = load %struct.interval*, %struct.interval** %left17, align 8
  %total_length18 = getelementptr inbounds %struct.interval, %struct.interval* %20, i32 0, i32 0
  %21 = load i64, i64* %total_length18, align 8
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.16, %cond.true.15
  %cond20 = phi i64 [ 0, %cond.true.15 ], [ %21, %cond.false.16 ]
  %sub21 = sub nsw i64 %sub, %cond20
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.end.19, %cond.true
  %cond23 = phi i64 [ 0, %cond.true ], [ %sub21, %cond.end.19 ]
  %add = add nsw i64 %7, %cond23
  store i64 %add, i64* %interval_end, align 8
  %22 = load i64, i64* %interval_end, align 8
  %23 = load i64, i64* %e, align 8
  %cmp24 = icmp sgt i64 %22, %23
  br i1 %cmp24, label %if.then.25, label %if.end

if.then.25:                                       ; preds = %cond.end.22
  %24 = load i64, i64* %e, align 8
  store i64 %24, i64* %interval_end, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.25, %cond.end.22
  %25 = load i64, i64* %interval_end, align 8
  %26 = load i64, i64* %s, align 8
  %sub26 = sub nsw i64 %25, %26
  store i64 %sub26, i64* %len, align 8
  %27 = load %struct.interval*, %struct.interval** %i, align 8
  %plist27 = getelementptr inbounds %struct.interval, %struct.interval* %27, i32 0, i32 6
  %28 = load i64, i64* %plist27, align 8
  store i64 %28, i64* %plist, align 8
  %29 = load i64, i64* %prop.addr, align 8
  %call28 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp29 = icmp eq i64 %29, %call28
  br i1 %cmp29, label %if.end.45, label %if.then.30

if.then.30:                                       ; preds = %if.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.30
  %30 = load i64, i64* %plist, align 8
  %and = and i64 %30, 7
  %conv = trunc i64 %and to i32
  %cmp31 = icmp eq i32 %conv, 3
  br i1 %cmp31, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i64, i64* %plist, align 8
  %sub33 = sub nsw i64 %31, 3
  %32 = inttoptr i64 %sub33 to i8*
  %33 = bitcast i8* %32 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %33, i32 0, i32 0
  %34 = load i64, i64* %car, align 8
  %35 = load i64, i64* %prop.addr, align 8
  %cmp34 = icmp eq i64 %34, %35
  br i1 %cmp34, label %if.then.36, label %if.end.40

if.then.36:                                       ; preds = %for.body
  %36 = load i64, i64* %prop.addr, align 8
  %37 = load i64, i64* %plist, align 8
  %sub37 = sub nsw i64 %37, 3
  %38 = inttoptr i64 %sub37 to i8*
  %39 = bitcast i8* %38 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %39, i32 0, i32 1
  %cdr = bitcast %union.anon.6* %u to i64*
  %40 = load i64, i64* %cdr, align 8
  %call38 = call i64 @Fcar(i64 %40)
  %call39 = call i64 @list2(i64 %36, i64 %call38)
  store i64 %call39, i64* %plist, align 8
  br label %for.end

if.end.40:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.40
  %41 = load i64, i64* %plist, align 8
  %sub41 = sub nsw i64 %41, 3
  %42 = inttoptr i64 %sub41 to i8*
  %43 = bitcast i8* %42 to %struct.Lisp_Cons*
  %u42 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %43, i32 0, i32 1
  %cdr43 = bitcast %union.anon.6* %u42 to i64*
  %44 = load i64, i64* %cdr43, align 8
  %call44 = call i64 @Fcdr(i64 %44)
  store i64 %call44, i64* %plist, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.36, %for.cond
  br label %if.end.45

if.end.45:                                        ; preds = %for.end, %if.end
  %45 = load i64, i64* %plist, align 8
  %call46 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp47 = icmp eq i64 %45, %call46
  br i1 %cmp47, label %if.end.56, label %if.then.49

if.then.49:                                       ; preds = %if.end.45
  %46 = load i64, i64* %s, align 8
  %shl = shl i64 %46, 2
  %add50 = add i64 %shl, 2
  %47 = load i64, i64* %s, align 8
  %48 = load i64, i64* %len, align 8
  %add51 = add nsw i64 %47, %48
  %shl52 = shl i64 %add51, 2
  %add53 = add i64 %shl52, 2
  %49 = load i64, i64* %plist, align 8
  %call54 = call i64 @list3(i64 %add50, i64 %add53, i64 %49)
  %50 = load i64, i64* %result, align 8
  %call55 = call i64 @Fcons(i64 %call54, i64 %50)
  store i64 %call55, i64* %result, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.49, %if.end.45
  %51 = load %struct.interval*, %struct.interval** %i, align 8
  %call57 = call %struct.interval* @next_interval(%struct.interval* %51)
  store %struct.interval* %call57, %struct.interval** %i, align 8
  %52 = load %struct.interval*, %struct.interval** %i, align 8
  %tobool58 = icmp ne %struct.interval* %52, null
  br i1 %tobool58, label %if.end.60, label %if.then.59

if.then.59:                                       ; preds = %if.end.56
  br label %while.end

if.end.60:                                        ; preds = %if.end.56
  %53 = load %struct.interval*, %struct.interval** %i, align 8
  %position61 = getelementptr inbounds %struct.interval, %struct.interval* %53, i32 0, i32 1
  %54 = load i64, i64* %position61, align 8
  store i64 %54, i64* %s, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.59, %while.cond
  br label %if.end.62

if.end.62:                                        ; preds = %while.end, %entry
  %55 = load i64, i64* %result, align 8
  ret i64 %55
}

; Function Attrs: nounwind uwtable
define void @add_text_properties_from_list(i64 %object, i64 %list, i64 %delta) #0 {
entry:
  %object.addr = alloca i64, align 8
  %list.addr = alloca i64, align 8
  %delta.addr = alloca i64, align 8
  %item = alloca i64, align 8
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %plist = alloca i64, align 8
  store i64 %object, i64* %object.addr, align 8
  store i64 %list, i64* %list.addr, align 8
  store i64 %delta, i64* %delta.addr, align 8
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
  store i64 %4, i64* %item, align 8
  %5 = load i64, i64* %item, align 8
  %sub2 = sub nsw i64 %5, 3
  %6 = inttoptr i64 %sub2 to i8*
  %7 = bitcast i8* %6 to %struct.Lisp_Cons*
  %car3 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %7, i32 0, i32 0
  %8 = load i64, i64* %car3, align 8
  %shr = ashr i64 %8, 2
  %9 = load i64, i64* %delta.addr, align 8
  %shr4 = ashr i64 %9, 2
  %add = add nsw i64 %shr, %shr4
  %shl = shl i64 %add, 2
  %add5 = add i64 %shl, 2
  store i64 %add5, i64* %start, align 8
  %10 = load i64, i64* %item, align 8
  %sub6 = sub nsw i64 %10, 3
  %11 = inttoptr i64 %sub6 to i8*
  %12 = bitcast i8* %11 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %12, i32 0, i32 1
  %cdr = bitcast %union.anon.6* %u to i64*
  %13 = load i64, i64* %cdr, align 8
  %sub7 = sub nsw i64 %13, 3
  %14 = inttoptr i64 %sub7 to i8*
  %15 = bitcast i8* %14 to %struct.Lisp_Cons*
  %car8 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %15, i32 0, i32 0
  %16 = load i64, i64* %car8, align 8
  %shr9 = ashr i64 %16, 2
  %17 = load i64, i64* %delta.addr, align 8
  %shr10 = ashr i64 %17, 2
  %add11 = add nsw i64 %shr9, %shr10
  %shl12 = shl i64 %add11, 2
  %add13 = add i64 %shl12, 2
  store i64 %add13, i64* %end, align 8
  %18 = load i64, i64* %item, align 8
  %sub14 = sub nsw i64 %18, 3
  %19 = inttoptr i64 %sub14 to i8*
  %20 = bitcast i8* %19 to %struct.Lisp_Cons*
  %u15 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %20, i32 0, i32 1
  %cdr16 = bitcast %union.anon.6* %u15 to i64*
  %21 = load i64, i64* %cdr16, align 8
  %sub17 = sub nsw i64 %21, 3
  %22 = inttoptr i64 %sub17 to i8*
  %23 = bitcast i8* %22 to %struct.Lisp_Cons*
  %u18 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %23, i32 0, i32 1
  %cdr19 = bitcast %union.anon.6* %u18 to i64*
  %24 = load i64, i64* %cdr19, align 8
  %sub20 = sub nsw i64 %24, 3
  %25 = inttoptr i64 %sub20 to i8*
  %26 = bitcast i8* %25 to %struct.Lisp_Cons*
  %car21 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %26, i32 0, i32 0
  %27 = load i64, i64* %car21, align 8
  store i64 %27, i64* %plist, align 8
  %28 = load i64, i64* %start, align 8
  %29 = load i64, i64* %end, align 8
  %30 = load i64, i64* %plist, align 8
  %31 = load i64, i64* %object.addr, align 8
  %call = call i64 @Fadd_text_properties(i64 %28, i64 %29, i64 %30, i64 %31)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i64, i64* %list.addr, align 8
  %sub22 = sub nsw i64 %32, 3
  %33 = inttoptr i64 %sub22 to i8*
  %34 = bitcast i8* %33 to %struct.Lisp_Cons*
  %u23 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %34, i32 0, i32 1
  %cdr24 = bitcast %union.anon.6* %u23 to i64*
  %35 = load i64, i64* %cdr24, align 8
  store i64 %35, i64* %list.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @extend_property_ranges(i64 %list, i64 %new_end) #0 {
entry:
  %list.addr = alloca i64, align 8
  %new_end.addr = alloca i64, align 8
  %prev = alloca i64, align 8
  %head = alloca i64, align 8
  %max = alloca i64, align 8
  %item = alloca i64, align 8
  %beg = alloca i64, align 8
  %end = alloca i64, align 8
  store i64 %list, i64* %list.addr, align 8
  store i64 %new_end, i64* %new_end.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %prev, align 8
  %0 = load i64, i64* %list.addr, align 8
  store i64 %0, i64* %head, align 8
  %1 = load i64, i64* %new_end.addr, align 8
  %shr = ashr i64 %1, 2
  store i64 %shr, i64* %max, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %list.addr, align 8
  %and = and i64 %2, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, i64* %list.addr, align 8
  %sub = sub nsw i64 %3, 3
  %4 = inttoptr i64 %sub to i8*
  %5 = bitcast i8* %4 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %5, i32 0, i32 0
  %6 = load i64, i64* %car, align 8
  store i64 %6, i64* %item, align 8
  %7 = load i64, i64* %item, align 8
  %sub2 = sub nsw i64 %7, 3
  %8 = inttoptr i64 %sub2 to i8*
  %9 = bitcast i8* %8 to %struct.Lisp_Cons*
  %car3 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %9, i32 0, i32 0
  %10 = load i64, i64* %car3, align 8
  store i64 %10, i64* %beg, align 8
  %11 = load i64, i64* %item, align 8
  %sub4 = sub nsw i64 %11, 3
  %12 = inttoptr i64 %sub4 to i8*
  %13 = bitcast i8* %12 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %13, i32 0, i32 1
  %cdr = bitcast %union.anon.6* %u to i64*
  %14 = load i64, i64* %cdr, align 8
  %sub5 = sub nsw i64 %14, 3
  %15 = inttoptr i64 %sub5 to i8*
  %16 = bitcast i8* %15 to %struct.Lisp_Cons*
  %car6 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %16, i32 0, i32 0
  %17 = load i64, i64* %car6, align 8
  store i64 %17, i64* %end, align 8
  %18 = load i64, i64* %beg, align 8
  %shr7 = ashr i64 %18, 2
  %19 = load i64, i64* %max, align 8
  %cmp8 = icmp sge i64 %shr7, %19
  br i1 %cmp8, label %if.then, label %if.else.19

if.then:                                          ; preds = %for.body
  %20 = load i64, i64* %head, align 8
  %21 = load i64, i64* %list.addr, align 8
  %cmp10 = icmp eq i64 %20, %21
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then
  %22 = load i64, i64* %list.addr, align 8
  %sub13 = sub nsw i64 %22, 3
  %23 = inttoptr i64 %sub13 to i8*
  %24 = bitcast i8* %23 to %struct.Lisp_Cons*
  %u14 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %24, i32 0, i32 1
  %cdr15 = bitcast %union.anon.6* %u14 to i64*
  %25 = load i64, i64* %cdr15, align 8
  store i64 %25, i64* %head, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %26 = load i64, i64* %prev, align 8
  %27 = load i64, i64* %list.addr, align 8
  %sub16 = sub nsw i64 %27, 3
  %28 = inttoptr i64 %sub16 to i8*
  %29 = bitcast i8* %28 to %struct.Lisp_Cons*
  %u17 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %29, i32 0, i32 1
  %cdr18 = bitcast %union.anon.6* %u17 to i64*
  %30 = load i64, i64* %cdr18, align 8
  call void @XSETCDR(i64 %26, i64 %30)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.12
  br label %if.end.28

if.else.19:                                       ; preds = %for.body
  %31 = load i64, i64* %end, align 8
  %shr20 = ashr i64 %31, 2
  %32 = load i64, i64* %max, align 8
  %cmp21 = icmp sgt i64 %shr20, %32
  br i1 %cmp21, label %if.then.23, label %if.end.27

if.then.23:                                       ; preds = %if.else.19
  %33 = load i64, i64* %item, align 8
  %sub24 = sub nsw i64 %33, 3
  %34 = inttoptr i64 %sub24 to i8*
  %35 = bitcast i8* %34 to %struct.Lisp_Cons*
  %u25 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %35, i32 0, i32 1
  %cdr26 = bitcast %union.anon.6* %u25 to i64*
  %36 = load i64, i64* %cdr26, align 8
  %37 = load i64, i64* %new_end.addr, align 8
  call void @XSETCAR(i64 %36, i64 %37)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.23, %if.else.19
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %38 = load i64, i64* %list.addr, align 8
  store i64 %38, i64* %prev, align 8
  %39 = load i64, i64* %list.addr, align 8
  %sub29 = sub nsw i64 %39, 3
  %40 = inttoptr i64 %sub29 to i8*
  %41 = bitcast i8* %40 to %struct.Lisp_Cons*
  %u30 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %41, i32 0, i32 1
  %cdr31 = bitcast %union.anon.6* %u30 to i64*
  %42 = load i64, i64* %cdr31, align 8
  store i64 %42, i64* %list.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %43 = load i64, i64* %head, align 8
  ret i64 %43
}

declare void @XSETCDR(i64, i64) #1

declare void @XSETCAR(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @verify_interval_modification(%struct.buffer* %buf, i64 %start, i64 %end) #0 {
entry:
  %buf.addr = alloca %struct.buffer*, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %intervals = alloca %struct.interval*, align 8
  %i = alloca %struct.interval*, align 8
  %hooks = alloca i64, align 8
  %prev_mod_hooks = alloca i64, align 8
  %mod_hooks = alloca i64, align 8
  %temp = alloca i64, align 8
  %prev = alloca %struct.interval*, align 8
  %before = alloca i64, align 8
  %after = alloca i64, align 8
  %tem = alloca i64, align 8
  %tem127 = alloca i64, align 8
  %tem186 = alloca i64, align 8
  store %struct.buffer* %buf, %struct.buffer** %buf.addr, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  %0 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %call = call %struct.interval* @buffer_intervals(%struct.buffer* %0)
  store %struct.interval* %call, %struct.interval** %intervals, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* %hooks, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call2, i64* %prev_mod_hooks, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call3, i64* %mod_hooks, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call4, i64* @interval_insert_behind_hooks, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call5, i64* @interval_insert_in_front_hooks, align 8
  %1 = load %struct.interval*, %struct.interval** %intervals, align 8
  %tobool = icmp ne %struct.interval* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.400

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %start.addr, align 8
  %3 = load i64, i64* %end.addr, align 8
  %cmp = icmp sgt i64 %2, %3
  br i1 %cmp, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %4 = load i64, i64* %start.addr, align 8
  store i64 %4, i64* %temp, align 8
  %5 = load i64, i64* %end.addr, align 8
  store i64 %5, i64* %start.addr, align 8
  %6 = load i64, i64* %temp, align 8
  store i64 %6, i64* %end.addr, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  %7 = load i64, i64* %start.addr, align 8
  %8 = load i64, i64* %end.addr, align 8
  %cmp8 = icmp eq i64 %7, %8
  br i1 %cmp8, label %if.then.9, label %if.else.285

if.then.9:                                        ; preds = %if.end.7
  store %struct.interval* null, %struct.interval** %prev, align 8
  %9 = load %struct.interval*, %struct.interval** %intervals, align 8
  %10 = load i64, i64* %start.addr, align 8
  %call10 = call %struct.interval* @find_interval(%struct.interval* %9, i64 %10)
  store %struct.interval* %call10, %struct.interval** %i, align 8
  %11 = load i64, i64* %start.addr, align 8
  %12 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %13 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp11 = icmp eq %struct.buffer* %12, %13
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.9
  %14 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %14, i32 0, i32 77
  %15 = load i64, i64* %begv, align 8
  br label %cond.end.19

cond.false:                                       ; preds = %if.then.9
  %16 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %begv_marker_ = getelementptr inbounds %struct.buffer, %struct.buffer* %16, i32 0, i32 46
  %17 = load i64, i64* %begv_marker_, align 8
  %call12 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp13 = icmp eq i64 %17, %call12
  br i1 %cmp13, label %cond.true.14, label %cond.false.16

cond.true.14:                                     ; preds = %cond.false
  %18 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %begv15 = getelementptr inbounds %struct.buffer, %struct.buffer* %18, i32 0, i32 77
  %19 = load i64, i64* %begv15, align 8
  br label %cond.end

cond.false.16:                                    ; preds = %cond.false
  %20 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %begv_marker_17 = getelementptr inbounds %struct.buffer, %struct.buffer* %20, i32 0, i32 46
  %21 = load i64, i64* %begv_marker_17, align 8
  %call18 = call i64 @marker_position(i64 %21)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.16, %cond.true.14
  %cond = phi i64 [ %19, %cond.true.14 ], [ %call18, %cond.false.16 ]
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.end, %cond.true
  %cond20 = phi i64 [ %15, %cond.true ], [ %cond, %cond.end ]
  %cmp21 = icmp eq i64 %11, %cond20
  br i1 %cmp21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %cond.end.19
  store %struct.interval* null, %struct.interval** %prev, align 8
  br label %if.end.32

if.else:                                          ; preds = %cond.end.19
  %22 = load %struct.interval*, %struct.interval** %i, align 8
  %position = getelementptr inbounds %struct.interval, %struct.interval* %22, i32 0, i32 1
  %23 = load i64, i64* %position, align 8
  %24 = load i64, i64* %start.addr, align 8
  %cmp23 = icmp eq i64 %23, %24
  br i1 %cmp23, label %if.then.24, label %if.else.26

if.then.24:                                       ; preds = %if.else
  %25 = load %struct.interval*, %struct.interval** %i, align 8
  %call25 = call %struct.interval* @previous_interval(%struct.interval* %25)
  store %struct.interval* %call25, %struct.interval** %prev, align 8
  br label %if.end.31

if.else.26:                                       ; preds = %if.else
  %26 = load %struct.interval*, %struct.interval** %i, align 8
  %position27 = getelementptr inbounds %struct.interval, %struct.interval* %26, i32 0, i32 1
  %27 = load i64, i64* %position27, align 8
  %28 = load i64, i64* %start.addr, align 8
  %cmp28 = icmp slt i64 %27, %28
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.else.26
  %29 = load %struct.interval*, %struct.interval** %i, align 8
  store %struct.interval* %29, %struct.interval** %prev, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.else.26
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.24
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.22
  %30 = load i64, i64* %start.addr, align 8
  %31 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %32 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp33 = icmp eq %struct.buffer* %31, %32
  br i1 %cmp33, label %cond.true.34, label %cond.false.35

cond.true.34:                                     ; preds = %if.end.32
  %33 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %33, i32 0, i32 79
  %34 = load i64, i64* %zv, align 8
  br label %cond.end.45

cond.false.35:                                    ; preds = %if.end.32
  %35 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %zv_marker_ = getelementptr inbounds %struct.buffer, %struct.buffer* %35, i32 0, i32 47
  %36 = load i64, i64* %zv_marker_, align 8
  %call36 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp37 = icmp eq i64 %36, %call36
  br i1 %cmp37, label %cond.true.38, label %cond.false.40

cond.true.38:                                     ; preds = %cond.false.35
  %37 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %zv39 = getelementptr inbounds %struct.buffer, %struct.buffer* %37, i32 0, i32 79
  %38 = load i64, i64* %zv39, align 8
  br label %cond.end.43

cond.false.40:                                    ; preds = %cond.false.35
  %39 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %zv_marker_41 = getelementptr inbounds %struct.buffer, %struct.buffer* %39, i32 0, i32 47
  %40 = load i64, i64* %zv_marker_41, align 8
  %call42 = call i64 @marker_position(i64 %40)
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.40, %cond.true.38
  %cond44 = phi i64 [ %38, %cond.true.38 ], [ %call42, %cond.false.40 ]
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.end.43, %cond.true.34
  %cond46 = phi i64 [ %34, %cond.true.34 ], [ %cond44, %cond.end.43 ]
  %cmp47 = icmp eq i64 %30, %cond46
  br i1 %cmp47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %cond.end.45
  store %struct.interval* null, %struct.interval** %i, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %cond.end.45
  %41 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 139), align 8
  %call50 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp51 = icmp eq i64 %41, %call50
  br i1 %cmp51, label %if.then.54, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.49
  %42 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 139), align 8
  %and = and i64 %42, 7
  %conv = trunc i64 %and to i32
  %cmp52 = icmp eq i32 %conv, 3
  br i1 %cmp52, label %if.then.54, label %if.end.272

if.then.54:                                       ; preds = %lor.lhs.false, %if.end.49
  %43 = load %struct.interval*, %struct.interval** %i, align 8
  %44 = load %struct.interval*, %struct.interval** %prev, align 8
  %cmp55 = icmp ne %struct.interval* %43, %44
  br i1 %cmp55, label %if.then.57, label %if.else.171

if.then.57:                                       ; preds = %if.then.54
  %45 = load %struct.interval*, %struct.interval** %i, align 8
  %tobool58 = icmp ne %struct.interval* %45, null
  br i1 %tobool58, label %if.then.59, label %if.end.112

if.then.59:                                       ; preds = %if.then.57
  %46 = load %struct.interval*, %struct.interval** %i, align 8
  %plist = getelementptr inbounds %struct.interval, %struct.interval* %46, i32 0, i32 6
  %47 = load i64, i64* %plist, align 8
  %call60 = call i64 @builtin_lisp_symbol(i32 792)
  %call61 = call i64 @textget(i64 %47, i64 %call60)
  store i64 %call61, i64* %after, align 8
  %48 = load i64, i64* %after, align 8
  %call62 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp63 = icmp eq i64 %48, %call62
  br i1 %cmp63, label %if.end.111, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then.59
  %49 = load i64, i64* %after, align 8
  %50 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 139), align 8
  %call65 = call i64 @Fmemq(i64 %49, i64 %50)
  %call66 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp67 = icmp eq i64 %call65, %call66
  br i1 %cmp67, label %if.then.69, label %if.end.111

if.then.69:                                       ; preds = %land.lhs.true
  %51 = load %struct.interval*, %struct.interval** %i, align 8
  %plist70 = getelementptr inbounds %struct.interval, %struct.interval* %51, i32 0, i32 6
  %52 = load i64, i64* %plist70, align 8
  %call71 = call i64 @builtin_lisp_symbol(i32 468)
  %call72 = call i64 @textget(i64 %52, i64 %call71)
  store i64 %call72, i64* %tem, align 8
  %53 = load i64, i64* %tem, align 8
  %and73 = and i64 %53, 7
  %conv74 = trunc i64 %and73 to i32
  %cmp75 = icmp eq i32 %conv74, 3
  br i1 %cmp75, label %cond.true.77, label %cond.false.83

cond.true.77:                                     ; preds = %if.then.69
  %call78 = call i64 @builtin_lisp_symbol(i32 792)
  %54 = load i64, i64* %tem, align 8
  %call79 = call i64 @Fmemq(i64 %call78, i64 %54)
  %call80 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp81 = icmp eq i64 %call79, %call80
  br i1 %cmp81, label %lor.lhs.false.87, label %if.then.109

cond.false.83:                                    ; preds = %if.then.69
  %55 = load i64, i64* %tem, align 8
  %call84 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp85 = icmp eq i64 %55, %call84
  br i1 %cmp85, label %lor.lhs.false.87, label %if.then.109

lor.lhs.false.87:                                 ; preds = %cond.false.83, %cond.true.77
  %56 = load %struct.interval*, %struct.interval** %i, align 8
  %plist88 = getelementptr inbounds %struct.interval, %struct.interval* %56, i32 0, i32 6
  %57 = load i64, i64* %plist88, align 8
  %call89 = call i64 @builtin_lisp_symbol(i32 792)
  %call90 = call i64 @Fplist_get(i64 %57, i64 %call89)
  %call91 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp92 = icmp eq i64 %call90, %call91
  br i1 %cmp92, label %land.lhs.true.94, label %if.end.110

land.lhs.true.94:                                 ; preds = %lor.lhs.false.87
  %58 = load i64, i64* %tem, align 8
  %and95 = and i64 %58, 7
  %conv96 = trunc i64 %and95 to i32
  %cmp97 = icmp eq i32 %conv96, 3
  br i1 %cmp97, label %cond.true.99, label %cond.false.105

cond.true.99:                                     ; preds = %land.lhs.true.94
  %call100 = call i64 @builtin_lisp_symbol(i32 241)
  %59 = load i64, i64* %tem, align 8
  %call101 = call i64 @Fmemq(i64 %call100, i64 %59)
  %call102 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp103 = icmp eq i64 %call101, %call102
  br i1 %cmp103, label %if.end.110, label %if.then.109

cond.false.105:                                   ; preds = %land.lhs.true.94
  %60 = load i64, i64* %tem, align 8
  %call106 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp107 = icmp eq i64 %60, %call106
  br i1 %cmp107, label %if.end.110, label %if.then.109

if.then.109:                                      ; preds = %cond.false.105, %cond.true.99, %cond.false.83, %cond.true.77
  %61 = load i64, i64* %after, align 8
  call void @text_read_only(i64 %61) #4
  unreachable

if.end.110:                                       ; preds = %cond.false.105, %cond.true.99, %lor.lhs.false.87
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %land.lhs.true, %if.then.59
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %if.then.57
  %62 = load %struct.interval*, %struct.interval** %prev, align 8
  %tobool113 = icmp ne %struct.interval* %62, null
  br i1 %tobool113, label %if.then.114, label %if.end.170

if.then.114:                                      ; preds = %if.end.112
  %63 = load %struct.interval*, %struct.interval** %prev, align 8
  %plist115 = getelementptr inbounds %struct.interval, %struct.interval* %63, i32 0, i32 6
  %64 = load i64, i64* %plist115, align 8
  %call116 = call i64 @builtin_lisp_symbol(i32 792)
  %call117 = call i64 @textget(i64 %64, i64 %call116)
  store i64 %call117, i64* %before, align 8
  %65 = load i64, i64* %before, align 8
  %call118 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp119 = icmp eq i64 %65, %call118
  br i1 %cmp119, label %if.end.169, label %land.lhs.true.121

land.lhs.true.121:                                ; preds = %if.then.114
  %66 = load i64, i64* %before, align 8
  %67 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 139), align 8
  %call122 = call i64 @Fmemq(i64 %66, i64 %67)
  %call123 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp124 = icmp eq i64 %call122, %call123
  br i1 %cmp124, label %if.then.126, label %if.end.169

if.then.126:                                      ; preds = %land.lhs.true.121
  %68 = load %struct.interval*, %struct.interval** %prev, align 8
  %plist128 = getelementptr inbounds %struct.interval, %struct.interval* %68, i32 0, i32 6
  %69 = load i64, i64* %plist128, align 8
  %call129 = call i64 @builtin_lisp_symbol(i32 794)
  %call130 = call i64 @textget(i64 %69, i64 %call129)
  store i64 %call130, i64* %tem127, align 8
  %70 = load i64, i64* %tem127, align 8
  %and131 = and i64 %70, 7
  %conv132 = trunc i64 %and131 to i32
  %cmp133 = icmp eq i32 %conv132, 3
  br i1 %cmp133, label %cond.true.135, label %cond.false.141

cond.true.135:                                    ; preds = %if.then.126
  %call136 = call i64 @builtin_lisp_symbol(i32 792)
  %71 = load i64, i64* %tem127, align 8
  %call137 = call i64 @Fmemq(i64 %call136, i64 %71)
  %call138 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp139 = icmp eq i64 %call137, %call138
  br i1 %cmp139, label %land.lhs.true.145, label %if.end.168

cond.false.141:                                   ; preds = %if.then.126
  %72 = load i64, i64* %tem127, align 8
  %call142 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp143 = icmp eq i64 %72, %call142
  br i1 %cmp143, label %land.lhs.true.145, label %if.end.168

land.lhs.true.145:                                ; preds = %cond.false.141, %cond.true.135
  %73 = load %struct.interval*, %struct.interval** %prev, align 8
  %plist146 = getelementptr inbounds %struct.interval, %struct.interval* %73, i32 0, i32 6
  %74 = load i64, i64* %plist146, align 8
  %call147 = call i64 @builtin_lisp_symbol(i32 792)
  %call148 = call i64 @Fplist_get(i64 %74, i64 %call147)
  %call149 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp150 = icmp eq i64 %call148, %call149
  br i1 %cmp150, label %lor.lhs.false.152, label %if.then.167

lor.lhs.false.152:                                ; preds = %land.lhs.true.145
  %75 = load i64, i64* %tem127, align 8
  %and153 = and i64 %75, 7
  %conv154 = trunc i64 %and153 to i32
  %cmp155 = icmp eq i32 %conv154, 3
  br i1 %cmp155, label %cond.true.157, label %cond.false.163

cond.true.157:                                    ; preds = %lor.lhs.false.152
  %call158 = call i64 @builtin_lisp_symbol(i32 241)
  %76 = load i64, i64* %tem127, align 8
  %call159 = call i64 @Fmemq(i64 %call158, i64 %76)
  %call160 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp161 = icmp eq i64 %call159, %call160
  br i1 %cmp161, label %if.then.167, label %if.end.168

cond.false.163:                                   ; preds = %lor.lhs.false.152
  %77 = load i64, i64* %tem127, align 8
  %call164 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp165 = icmp eq i64 %77, %call164
  br i1 %cmp165, label %if.then.167, label %if.end.168

if.then.167:                                      ; preds = %cond.false.163, %cond.true.157, %land.lhs.true.145
  %78 = load i64, i64* %before, align 8
  call void @text_read_only(i64 %78) #4
  unreachable

if.end.168:                                       ; preds = %cond.false.163, %cond.true.157, %cond.false.141, %cond.true.135
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.168, %land.lhs.true.121, %if.then.114
  br label %if.end.170

if.end.170:                                       ; preds = %if.end.169, %if.end.112
  br label %if.end.271

if.else.171:                                      ; preds = %if.then.54
  %79 = load %struct.interval*, %struct.interval** %i, align 8
  %tobool172 = icmp ne %struct.interval* %79, null
  br i1 %tobool172, label %if.then.173, label %if.end.270

if.then.173:                                      ; preds = %if.else.171
  %80 = load %struct.interval*, %struct.interval** %i, align 8
  %plist174 = getelementptr inbounds %struct.interval, %struct.interval* %80, i32 0, i32 6
  %81 = load i64, i64* %plist174, align 8
  %call175 = call i64 @builtin_lisp_symbol(i32 792)
  %call176 = call i64 @textget(i64 %81, i64 %call175)
  store i64 %call176, i64* %after, align 8
  %82 = load i64, i64* %after, align 8
  %call177 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp178 = icmp eq i64 %82, %call177
  br i1 %cmp178, label %if.end.269, label %land.lhs.true.180

land.lhs.true.180:                                ; preds = %if.then.173
  %83 = load i64, i64* %after, align 8
  %84 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 139), align 8
  %call181 = call i64 @Fmemq(i64 %83, i64 %84)
  %call182 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp183 = icmp eq i64 %call181, %call182
  br i1 %cmp183, label %if.then.185, label %if.end.269

if.then.185:                                      ; preds = %land.lhs.true.180
  %85 = load %struct.interval*, %struct.interval** %i, align 8
  %plist187 = getelementptr inbounds %struct.interval, %struct.interval* %85, i32 0, i32 6
  %86 = load i64, i64* %plist187, align 8
  %call188 = call i64 @builtin_lisp_symbol(i32 468)
  %call189 = call i64 @textget(i64 %86, i64 %call188)
  store i64 %call189, i64* %tem186, align 8
  %87 = load i64, i64* %tem186, align 8
  %and190 = and i64 %87, 7
  %conv191 = trunc i64 %and190 to i32
  %cmp192 = icmp eq i32 %conv191, 3
  br i1 %cmp192, label %cond.true.194, label %cond.false.200

cond.true.194:                                    ; preds = %if.then.185
  %call195 = call i64 @builtin_lisp_symbol(i32 792)
  %88 = load i64, i64* %tem186, align 8
  %call196 = call i64 @Fmemq(i64 %call195, i64 %88)
  %call197 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp198 = icmp eq i64 %call196, %call197
  br i1 %cmp198, label %lor.lhs.false.204, label %if.then.226

cond.false.200:                                   ; preds = %if.then.185
  %89 = load i64, i64* %tem186, align 8
  %call201 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp202 = icmp eq i64 %89, %call201
  br i1 %cmp202, label %lor.lhs.false.204, label %if.then.226

lor.lhs.false.204:                                ; preds = %cond.false.200, %cond.true.194
  %90 = load %struct.interval*, %struct.interval** %i, align 8
  %plist205 = getelementptr inbounds %struct.interval, %struct.interval* %90, i32 0, i32 6
  %91 = load i64, i64* %plist205, align 8
  %call206 = call i64 @builtin_lisp_symbol(i32 792)
  %call207 = call i64 @Fplist_get(i64 %91, i64 %call206)
  %call208 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp209 = icmp eq i64 %call207, %call208
  br i1 %cmp209, label %land.lhs.true.211, label %if.end.227

land.lhs.true.211:                                ; preds = %lor.lhs.false.204
  %92 = load i64, i64* %tem186, align 8
  %and212 = and i64 %92, 7
  %conv213 = trunc i64 %and212 to i32
  %cmp214 = icmp eq i32 %conv213, 3
  br i1 %cmp214, label %cond.true.216, label %cond.false.222

cond.true.216:                                    ; preds = %land.lhs.true.211
  %call217 = call i64 @builtin_lisp_symbol(i32 241)
  %93 = load i64, i64* %tem186, align 8
  %call218 = call i64 @Fmemq(i64 %call217, i64 %93)
  %call219 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp220 = icmp eq i64 %call218, %call219
  br i1 %cmp220, label %if.end.227, label %if.then.226

cond.false.222:                                   ; preds = %land.lhs.true.211
  %94 = load i64, i64* %tem186, align 8
  %call223 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp224 = icmp eq i64 %94, %call223
  br i1 %cmp224, label %if.end.227, label %if.then.226

if.then.226:                                      ; preds = %cond.false.222, %cond.true.216, %cond.false.200, %cond.true.194
  %95 = load i64, i64* %after, align 8
  call void @text_read_only(i64 %95) #4
  unreachable

if.end.227:                                       ; preds = %cond.false.222, %cond.true.216, %lor.lhs.false.204
  %96 = load %struct.interval*, %struct.interval** %prev, align 8
  %plist228 = getelementptr inbounds %struct.interval, %struct.interval* %96, i32 0, i32 6
  %97 = load i64, i64* %plist228, align 8
  %call229 = call i64 @builtin_lisp_symbol(i32 794)
  %call230 = call i64 @textget(i64 %97, i64 %call229)
  store i64 %call230, i64* %tem186, align 8
  %98 = load i64, i64* %tem186, align 8
  %and231 = and i64 %98, 7
  %conv232 = trunc i64 %and231 to i32
  %cmp233 = icmp eq i32 %conv232, 3
  br i1 %cmp233, label %cond.true.235, label %cond.false.241

cond.true.235:                                    ; preds = %if.end.227
  %call236 = call i64 @builtin_lisp_symbol(i32 792)
  %99 = load i64, i64* %tem186, align 8
  %call237 = call i64 @Fmemq(i64 %call236, i64 %99)
  %call238 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp239 = icmp eq i64 %call237, %call238
  br i1 %cmp239, label %land.lhs.true.245, label %if.end.268

cond.false.241:                                   ; preds = %if.end.227
  %100 = load i64, i64* %tem186, align 8
  %call242 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp243 = icmp eq i64 %100, %call242
  br i1 %cmp243, label %land.lhs.true.245, label %if.end.268

land.lhs.true.245:                                ; preds = %cond.false.241, %cond.true.235
  %101 = load %struct.interval*, %struct.interval** %prev, align 8
  %plist246 = getelementptr inbounds %struct.interval, %struct.interval* %101, i32 0, i32 6
  %102 = load i64, i64* %plist246, align 8
  %call247 = call i64 @builtin_lisp_symbol(i32 792)
  %call248 = call i64 @Fplist_get(i64 %102, i64 %call247)
  %call249 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp250 = icmp eq i64 %call248, %call249
  br i1 %cmp250, label %lor.lhs.false.252, label %if.then.267

lor.lhs.false.252:                                ; preds = %land.lhs.true.245
  %103 = load i64, i64* %tem186, align 8
  %and253 = and i64 %103, 7
  %conv254 = trunc i64 %and253 to i32
  %cmp255 = icmp eq i32 %conv254, 3
  br i1 %cmp255, label %cond.true.257, label %cond.false.263

cond.true.257:                                    ; preds = %lor.lhs.false.252
  %call258 = call i64 @builtin_lisp_symbol(i32 241)
  %104 = load i64, i64* %tem186, align 8
  %call259 = call i64 @Fmemq(i64 %call258, i64 %104)
  %call260 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp261 = icmp eq i64 %call259, %call260
  br i1 %cmp261, label %if.then.267, label %if.end.268

cond.false.263:                                   ; preds = %lor.lhs.false.252
  %105 = load i64, i64* %tem186, align 8
  %call264 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp265 = icmp eq i64 %105, %call264
  br i1 %cmp265, label %if.then.267, label %if.end.268

if.then.267:                                      ; preds = %cond.false.263, %cond.true.257, %land.lhs.true.245
  %106 = load i64, i64* %after, align 8
  call void @text_read_only(i64 %106) #4
  unreachable

if.end.268:                                       ; preds = %cond.false.263, %cond.true.257, %cond.false.241, %cond.true.235
  br label %if.end.269

if.end.269:                                       ; preds = %if.end.268, %land.lhs.true.180, %if.then.173
  br label %if.end.270

if.end.270:                                       ; preds = %if.end.269, %if.else.171
  br label %if.end.271

if.end.271:                                       ; preds = %if.end.270, %if.end.170
  br label %if.end.272

if.end.272:                                       ; preds = %if.end.271, %lor.lhs.false
  %107 = load %struct.interval*, %struct.interval** %prev, align 8
  %tobool273 = icmp ne %struct.interval* %107, null
  br i1 %tobool273, label %if.then.274, label %if.end.278

if.then.274:                                      ; preds = %if.end.272
  %108 = load %struct.interval*, %struct.interval** %prev, align 8
  %plist275 = getelementptr inbounds %struct.interval, %struct.interval* %108, i32 0, i32 6
  %109 = load i64, i64* %plist275, align 8
  %call276 = call i64 @builtin_lisp_symbol(i32 552)
  %call277 = call i64 @textget(i64 %109, i64 %call276)
  store i64 %call277, i64* @interval_insert_behind_hooks, align 8
  br label %if.end.278

if.end.278:                                       ; preds = %if.then.274, %if.end.272
  %110 = load %struct.interval*, %struct.interval** %i, align 8
  %tobool279 = icmp ne %struct.interval* %110, null
  br i1 %tobool279, label %if.then.280, label %if.end.284

if.then.280:                                      ; preds = %if.end.278
  %111 = load %struct.interval*, %struct.interval** %i, align 8
  %plist281 = getelementptr inbounds %struct.interval, %struct.interval* %111, i32 0, i32 6
  %112 = load i64, i64* %plist281, align 8
  %call282 = call i64 @builtin_lisp_symbol(i32 554)
  %call283 = call i64 @textget(i64 %112, i64 %call282)
  store i64 %call283, i64* @interval_insert_in_front_hooks, align 8
  br label %if.end.284

if.end.284:                                       ; preds = %if.then.280, %if.end.278
  br label %if.end.400

if.else.285:                                      ; preds = %if.end.7
  %113 = load %struct.interval*, %struct.interval** %intervals, align 8
  %114 = load i64, i64* %start.addr, align 8
  %call286 = call %struct.interval* @find_interval(%struct.interval* %113, i64 %114)
  store %struct.interval* %call286, %struct.interval** %i, align 8
  br label %do.body

do.body:                                          ; preds = %land.end, %if.else.285
  %115 = load %struct.interval*, %struct.interval** %i, align 8
  %tobool287 = icmp ne %struct.interval* %115, null
  br i1 %tobool287, label %land.lhs.true.288, label %if.then.319

land.lhs.true.288:                                ; preds = %do.body
  %116 = load %struct.interval*, %struct.interval** %i, align 8
  %plist289 = getelementptr inbounds %struct.interval, %struct.interval* %116, i32 0, i32 6
  %117 = load i64, i64* %plist289, align 8
  %call290 = call i64 @builtin_lisp_symbol(i32 792)
  %call291 = call i64 @textget(i64 %117, i64 %call290)
  %call292 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp293 = icmp eq i64 %call291, %call292
  br i1 %cmp293, label %if.end.323, label %lor.lhs.false.295

lor.lhs.false.295:                                ; preds = %land.lhs.true.288
  %118 = load %struct.interval*, %struct.interval** %i, align 8
  %plist296 = getelementptr inbounds %struct.interval, %struct.interval* %118, i32 0, i32 6
  %119 = load i64, i64* %plist296, align 8
  %call297 = call i64 @builtin_lisp_symbol(i32 547)
  %call298 = call i64 @textget(i64 %119, i64 %call297)
  %call299 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp300 = icmp eq i64 %call298, %call299
  br i1 %cmp300, label %lor.lhs.false.302, label %if.end.323

lor.lhs.false.302:                                ; preds = %lor.lhs.false.295
  %120 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 139), align 8
  %and303 = and i64 %120, 7
  %conv304 = trunc i64 %and303 to i32
  %cmp305 = icmp eq i32 %conv304, 3
  br i1 %cmp305, label %cond.true.307, label %cond.false.315

cond.true.307:                                    ; preds = %lor.lhs.false.302
  %121 = load %struct.interval*, %struct.interval** %i, align 8
  %plist308 = getelementptr inbounds %struct.interval, %struct.interval* %121, i32 0, i32 6
  %122 = load i64, i64* %plist308, align 8
  %call309 = call i64 @builtin_lisp_symbol(i32 792)
  %call310 = call i64 @textget(i64 %122, i64 %call309)
  %123 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 139), align 8
  %call311 = call i64 @Fmemq(i64 %call310, i64 %123)
  %call312 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp313 = icmp eq i64 %call311, %call312
  br i1 %cmp313, label %if.then.319, label %if.end.323

cond.false.315:                                   ; preds = %lor.lhs.false.302
  %124 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 139), align 8
  %call316 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp317 = icmp eq i64 %124, %call316
  br i1 %cmp317, label %if.then.319, label %if.end.323

if.then.319:                                      ; preds = %cond.false.315, %cond.true.307, %do.body
  %125 = load %struct.interval*, %struct.interval** %i, align 8
  %plist320 = getelementptr inbounds %struct.interval, %struct.interval* %125, i32 0, i32 6
  %126 = load i64, i64* %plist320, align 8
  %call321 = call i64 @builtin_lisp_symbol(i32 792)
  %call322 = call i64 @textget(i64 %126, i64 %call321)
  call void @text_read_only(i64 %call322) #4
  unreachable

if.end.323:                                       ; preds = %cond.false.315, %cond.true.307, %lor.lhs.false.295, %land.lhs.true.288
  %127 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 456), align 1
  %tobool324 = trunc i8 %127 to i1
  br i1 %tobool324, label %if.end.338, label %if.then.325

if.then.325:                                      ; preds = %if.end.323
  %128 = load %struct.interval*, %struct.interval** %i, align 8
  %plist326 = getelementptr inbounds %struct.interval, %struct.interval* %128, i32 0, i32 6
  %129 = load i64, i64* %plist326, align 8
  %call327 = call i64 @builtin_lisp_symbol(i32 676)
  %call328 = call i64 @textget(i64 %129, i64 %call327)
  store i64 %call328, i64* %mod_hooks, align 8
  %130 = load i64, i64* %mod_hooks, align 8
  %call329 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp330 = icmp eq i64 %130, %call329
  br i1 %cmp330, label %if.end.337, label %land.lhs.true.332

land.lhs.true.332:                                ; preds = %if.then.325
  %131 = load i64, i64* %mod_hooks, align 8
  %132 = load i64, i64* %prev_mod_hooks, align 8
  %cmp333 = icmp eq i64 %131, %132
  br i1 %cmp333, label %if.end.337, label %if.then.335

if.then.335:                                      ; preds = %land.lhs.true.332
  %133 = load i64, i64* %mod_hooks, align 8
  %134 = load i64, i64* %hooks, align 8
  %call336 = call i64 @Fcons(i64 %133, i64 %134)
  store i64 %call336, i64* %hooks, align 8
  %135 = load i64, i64* %mod_hooks, align 8
  store i64 %135, i64* %prev_mod_hooks, align 8
  br label %if.end.337

if.end.337:                                       ; preds = %if.then.335, %land.lhs.true.332, %if.then.325
  br label %if.end.338

if.end.338:                                       ; preds = %if.end.337, %if.end.323
  %136 = load %struct.interval*, %struct.interval** %i, align 8
  %position339 = getelementptr inbounds %struct.interval, %struct.interval* %136, i32 0, i32 1
  %137 = load i64, i64* %position339, align 8
  %138 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp340 = icmp eq %struct.interval* %138, null
  br i1 %cmp340, label %cond.true.342, label %cond.false.343

cond.true.342:                                    ; preds = %if.end.338
  br label %cond.end.367

cond.false.343:                                   ; preds = %if.end.338
  %139 = load %struct.interval*, %struct.interval** %i, align 8
  %cmp344 = icmp eq %struct.interval* %139, null
  br i1 %cmp344, label %cond.true.346, label %cond.false.347

cond.true.346:                                    ; preds = %cond.false.343
  br label %cond.end.348

cond.false.347:                                   ; preds = %cond.false.343
  %140 = load %struct.interval*, %struct.interval** %i, align 8
  %total_length = getelementptr inbounds %struct.interval, %struct.interval* %140, i32 0, i32 0
  %141 = load i64, i64* %total_length, align 8
  br label %cond.end.348

cond.end.348:                                     ; preds = %cond.false.347, %cond.true.346
  %cond349 = phi i64 [ 0, %cond.true.346 ], [ %141, %cond.false.347 ]
  %142 = load %struct.interval*, %struct.interval** %i, align 8
  %right = getelementptr inbounds %struct.interval, %struct.interval* %142, i32 0, i32 3
  %143 = load %struct.interval*, %struct.interval** %right, align 8
  %cmp350 = icmp eq %struct.interval* %143, null
  br i1 %cmp350, label %cond.true.352, label %cond.false.353

cond.true.352:                                    ; preds = %cond.end.348
  br label %cond.end.356

cond.false.353:                                   ; preds = %cond.end.348
  %144 = load %struct.interval*, %struct.interval** %i, align 8
  %right354 = getelementptr inbounds %struct.interval, %struct.interval* %144, i32 0, i32 3
  %145 = load %struct.interval*, %struct.interval** %right354, align 8
  %total_length355 = getelementptr inbounds %struct.interval, %struct.interval* %145, i32 0, i32 0
  %146 = load i64, i64* %total_length355, align 8
  br label %cond.end.356

cond.end.356:                                     ; preds = %cond.false.353, %cond.true.352
  %cond357 = phi i64 [ 0, %cond.true.352 ], [ %146, %cond.false.353 ]
  %sub = sub nsw i64 %cond349, %cond357
  %147 = load %struct.interval*, %struct.interval** %i, align 8
  %left = getelementptr inbounds %struct.interval, %struct.interval* %147, i32 0, i32 2
  %148 = load %struct.interval*, %struct.interval** %left, align 8
  %cmp358 = icmp eq %struct.interval* %148, null
  br i1 %cmp358, label %cond.true.360, label %cond.false.361

cond.true.360:                                    ; preds = %cond.end.356
  br label %cond.end.364

cond.false.361:                                   ; preds = %cond.end.356
  %149 = load %struct.interval*, %struct.interval** %i, align 8
  %left362 = getelementptr inbounds %struct.interval, %struct.interval* %149, i32 0, i32 2
  %150 = load %struct.interval*, %struct.interval** %left362, align 8
  %total_length363 = getelementptr inbounds %struct.interval, %struct.interval* %150, i32 0, i32 0
  %151 = load i64, i64* %total_length363, align 8
  br label %cond.end.364

cond.end.364:                                     ; preds = %cond.false.361, %cond.true.360
  %cond365 = phi i64 [ 0, %cond.true.360 ], [ %151, %cond.false.361 ]
  %sub366 = sub nsw i64 %sub, %cond365
  br label %cond.end.367

cond.end.367:                                     ; preds = %cond.end.364, %cond.true.342
  %cond368 = phi i64 [ 0, %cond.true.342 ], [ %sub366, %cond.end.364 ]
  %add = add nsw i64 %137, %cond368
  %152 = load i64, i64* %end.addr, align 8
  %cmp369 = icmp slt i64 %add, %152
  br i1 %cmp369, label %land.lhs.true.371, label %if.end.382

land.lhs.true.371:                                ; preds = %cond.end.367
  %153 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %read_only_ = getelementptr inbounds %struct.buffer, %struct.buffer* %153, i32 0, i32 7
  %154 = load i64, i64* %read_only_, align 8
  %call372 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp373 = icmp eq i64 %154, %call372
  br i1 %cmp373, label %if.end.382, label %land.lhs.true.375

land.lhs.true.375:                                ; preds = %land.lhs.true.371
  %155 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 139), align 8
  %call376 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp377 = icmp eq i64 %155, %call376
  br i1 %cmp377, label %if.then.379, label %if.end.382

if.then.379:                                      ; preds = %land.lhs.true.375
  %call380 = call i64 @builtin_lisp_symbol(i32 228)
  %call381 = call i64 @Fcurrent_buffer()
  call void @xsignal1(i64 %call380, i64 %call381) #4
  unreachable

if.end.382:                                       ; preds = %land.lhs.true.375, %land.lhs.true.371, %cond.end.367
  %156 = load %struct.interval*, %struct.interval** %i, align 8
  %call383 = call %struct.interval* @next_interval(%struct.interval* %156)
  store %struct.interval* %call383, %struct.interval** %i, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end.382
  %157 = load %struct.interval*, %struct.interval** %i, align 8
  %tobool384 = icmp ne %struct.interval* %157, null
  br i1 %tobool384, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %158 = load %struct.interval*, %struct.interval** %i, align 8
  %position385 = getelementptr inbounds %struct.interval, %struct.interval* %158, i32 0, i32 1
  %159 = load i64, i64* %position385, align 8
  %160 = load i64, i64* %end.addr, align 8
  %cmp386 = icmp slt i64 %159, %160
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %161 = phi i1 [ false, %do.cond ], [ %cmp386, %land.rhs ]
  br i1 %161, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %162 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 456), align 1
  %tobool388 = trunc i8 %162 to i1
  br i1 %tobool388, label %if.end.399, label %if.then.389

if.then.389:                                      ; preds = %do.end
  %163 = load i64, i64* %hooks, align 8
  %call390 = call i64 @Fnreverse(i64 %163)
  store i64 %call390, i64* %hooks, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.389
  %164 = load i64, i64* %hooks, align 8
  %call391 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp392 = icmp eq i64 %164, %call391
  %lnot = xor i1 %cmp392, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %165 = load i64, i64* %hooks, align 8
  %call394 = call i64 @Fcar(i64 %165)
  %166 = load i64, i64* %start.addr, align 8
  %shl = shl i64 %166, 2
  %add395 = add i64 %shl, 2
  %167 = load i64, i64* %end.addr, align 8
  %shl396 = shl i64 %167, 2
  %add397 = add i64 %shl396, 2
  call void @call_mod_hooks(i64 %call394, i64 %add395, i64 %add397)
  %168 = load i64, i64* %hooks, align 8
  %call398 = call i64 @Fcdr(i64 %168)
  store i64 %call398, i64* %hooks, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.399

if.end.399:                                       ; preds = %while.end, %do.end
  br label %if.end.400

if.end.400:                                       ; preds = %if.then, %if.end.399, %if.end.284
  ret void
}

declare i64 @Fplist_get(i64, i64) #1

; Function Attrs: noreturn nounwind uwtable
define internal void @text_read_only(i64 %propval) #3 {
entry:
  %propval.addr = alloca i64, align 8
  store i64 %propval, i64* %propval.addr, align 8
  %0 = load i64, i64* %propval.addr, align 8
  %call = call zeroext i1 @STRINGP(i64 %0)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 913)
  %1 = load i64, i64* %propval.addr, align 8
  call void @xsignal1(i64 %call1, i64 %1) #4
  unreachable

if.end:                                           ; preds = %entry
  %call2 = call i64 @builtin_lisp_symbol(i32 913)
  call void @xsignal0(i64 %call2) #4
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare i64 @Fcurrent_buffer() #1

declare i64 @Fnreverse(i64) #1

; Function Attrs: nounwind uwtable
define internal void @call_mod_hooks(i64 %list, i64 %start, i64 %end) #0 {
entry:
  %list.addr = alloca i64, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  store i64 %list, i64* %list.addr, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %list.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  %lnot = xor i1 %cmp, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i64, i64* %list.addr, align 8
  %call1 = call i64 @Fcar(i64 %1)
  %2 = load i64, i64* %start.addr, align 8
  %3 = load i64, i64* %end.addr, align 8
  %call2 = call i64 @call2(i64 %call1, i64 %2, i64 %3)
  %4 = load i64, i64* %list.addr, align 8
  %call3 = call i64 @Fcdr(i64 %4)
  store i64 %call3, i64* %list.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @report_interval_modification(i64 %start, i64 %end) #0 {
entry:
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  %0 = load i64, i64* @interval_insert_behind_hooks, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64, i64* @interval_insert_behind_hooks, align 8
  %2 = load i64, i64* %start.addr, align 8
  %3 = load i64, i64* %end.addr, align 8
  call void @call_mod_hooks(i64 %1, i64 %2, i64 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @interval_insert_in_front_hooks, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp2 = icmp eq i64 %4, %call1
  br i1 %cmp2, label %if.end.5, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %5 = load i64, i64* @interval_insert_in_front_hooks, align 8
  %6 = load i64, i64* @interval_insert_behind_hooks, align 8
  %cmp3 = icmp eq i64 %5, %6
  br i1 %cmp3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %land.lhs.true
  %7 = load i64, i64* @interval_insert_in_front_hooks, align 8
  %8 = load i64, i64* %start.addr, align 8
  %9 = load i64, i64* %end.addr, align 8
  call void @call_mod_hooks(i64 %7, i64 %8, i64 %9)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %land.lhs.true, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @syms_of_textprop() #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %entry
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_textprop.o_fwd, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 63))
  br label %do.end

do.end:                                           ; preds = %do.body
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 63), align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_textprop.o_fwd.1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 26))
  br label %do.end.2

do.end.2:                                         ; preds = %do.body.1
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call3, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 26), align 8
  br label %do.body.4

do.body.4:                                        ; preds = %do.end.2
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_textprop.o_fwd.3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 137))
  br label %do.end.5

do.end.5:                                         ; preds = %do.body.4
  %call6 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call6, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 137), align 8
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.5
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_textprop.o_fwd.5, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 291))
  br label %do.end.8

do.end.8:                                         ; preds = %do.body.7
  %call9 = call i64 @builtin_lisp_symbol(i32 899)
  %call10 = call i64 @builtin_lisp_symbol(i32 901)
  %call11 = call i64 @Fcons(i64 %call9, i64 %call10)
  %call12 = call i64 @builtin_lisp_symbol(i32 344)
  %call13 = call i64 @builtin_lisp_symbol(i32 901)
  %call14 = call i64 @Fcons(i64 %call12, i64 %call13)
  %call15 = call i64 @list2(i64 %call11, i64 %call14)
  store i64 %call15, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 291), align 8
  call void @staticpro(i64* @interval_insert_behind_hooks)
  call void @staticpro(i64* @interval_insert_in_front_hooks)
  %call16 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call16, i64* @interval_insert_behind_hooks, align 8
  %call17 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call17, i64* @interval_insert_in_front_hooks, align 8
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Stext_properties_at to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sget_text_property to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sget_char_property to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sget_char_property_and_overlay to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Snext_char_property_change to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sprevious_char_property_change to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Snext_single_char_property_change to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sprevious_single_char_property_change to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Snext_property_change to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Snext_single_property_change to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sprevious_property_change to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sprevious_single_property_change to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sadd_text_properties to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sput_text_property to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sset_text_properties to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sadd_face_text_property to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sremove_text_properties to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sremove_list_of_text_properties to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Stext_property_any to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Stext_property_not_all to %struct.Lisp_Subr*))
  ret void
}

declare void @defvar_lisp(%struct.Lisp_Objfwd*, i8*, i64*) #1

declare void @staticpro(i64*) #1

declare void @defsubr(%struct.Lisp_Subr*) #1

; Function Attrs: nounwind uwtable
define internal zeroext i1 @interval_has_all_properties(i64 %plist, %struct.interval* %i) #0 {
entry:
  %retval = alloca i1, align 1
  %plist.addr = alloca i64, align 8
  %i.addr = alloca %struct.interval*, align 8
  %tail1 = alloca i64, align 8
  %tail2 = alloca i64, align 8
  %sym1 = alloca i64, align 8
  %found = alloca i8, align 1
  store i64 %plist, i64* %plist.addr, align 8
  store %struct.interval* %i, %struct.interval** %i.addr, align 8
  %0 = load i64, i64* %plist.addr, align 8
  store i64 %0, i64* %tail1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.28, %entry
  %1 = load i64, i64* %tail1, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %for.body, label %for.end.33

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %tail1, align 8
  %sub = sub nsw i64 %2, 3
  %3 = inttoptr i64 %sub to i8*
  %4 = bitcast i8* %3 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %4, i32 0, i32 0
  %5 = load i64, i64* %car, align 8
  store i64 %5, i64* %sym1, align 8
  store i8 0, i8* %found, align 1
  %6 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %plist2 = getelementptr inbounds %struct.interval, %struct.interval* %6, i32 0, i32 6
  %7 = load i64, i64* %plist2, align 8
  store i64 %7, i64* %tail2, align 8
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %8 = load i64, i64* %tail2, align 8
  %and4 = and i64 %8, 7
  %conv5 = trunc i64 %and4 to i32
  %cmp6 = icmp eq i32 %conv5, 3
  br i1 %cmp6, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.3
  %9 = load i64, i64* %sym1, align 8
  %10 = load i64, i64* %tail2, align 8
  %sub9 = sub nsw i64 %10, 3
  %11 = inttoptr i64 %sub9 to i8*
  %12 = bitcast i8* %11 to %struct.Lisp_Cons*
  %car10 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %12, i32 0, i32 0
  %13 = load i64, i64* %car10, align 8
  %cmp11 = icmp eq i64 %9, %13
  br i1 %cmp11, label %if.then, label %if.end.21

if.then:                                          ; preds = %for.body.8
  %14 = load i64, i64* %tail1, align 8
  %sub13 = sub nsw i64 %14, 3
  %15 = inttoptr i64 %sub13 to i8*
  %16 = bitcast i8* %15 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %16, i32 0, i32 1
  %cdr = bitcast %union.anon.6* %u to i64*
  %17 = load i64, i64* %cdr, align 8
  %call = call i64 @Fcar(i64 %17)
  %18 = load i64, i64* %tail2, align 8
  %sub14 = sub nsw i64 %18, 3
  %19 = inttoptr i64 %sub14 to i8*
  %20 = bitcast i8* %19 to %struct.Lisp_Cons*
  %u15 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %20, i32 0, i32 1
  %cdr16 = bitcast %union.anon.6* %u15 to i64*
  %21 = load i64, i64* %cdr16, align 8
  %call17 = call i64 @Fcar(i64 %21)
  %cmp18 = icmp eq i64 %call, %call17
  br i1 %cmp18, label %if.end, label %if.then.20

if.then.20:                                       ; preds = %if.then
  store i1 false, i1* %retval
  br label %return

if.end:                                           ; preds = %if.then
  store i8 1, i8* %found, align 1
  br label %for.end

if.end.21:                                        ; preds = %for.body.8
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %22 = load i64, i64* %tail2, align 8
  %sub22 = sub nsw i64 %22, 3
  %23 = inttoptr i64 %sub22 to i8*
  %24 = bitcast i8* %23 to %struct.Lisp_Cons*
  %u23 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %24, i32 0, i32 1
  %cdr24 = bitcast %union.anon.6* %u23 to i64*
  %25 = load i64, i64* %cdr24, align 8
  %call25 = call i64 @Fcdr(i64 %25)
  store i64 %call25, i64* %tail2, align 8
  br label %for.cond.3

for.end:                                          ; preds = %if.end, %for.cond.3
  %26 = load i8, i8* %found, align 1
  %tobool = trunc i8 %26 to i1
  br i1 %tobool, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %for.end
  store i1 false, i1* %retval
  br label %return

if.end.27:                                        ; preds = %for.end
  br label %for.inc.28

for.inc.28:                                       ; preds = %if.end.27
  %27 = load i64, i64* %tail1, align 8
  %sub29 = sub nsw i64 %27, 3
  %28 = inttoptr i64 %sub29 to i8*
  %29 = bitcast i8* %28 to %struct.Lisp_Cons*
  %u30 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %29, i32 0, i32 1
  %cdr31 = bitcast %union.anon.6* %u30 to i64*
  %30 = load i64, i64* %cdr31, align 8
  %call32 = call i64 @Fcdr(i64 %30)
  store i64 %call32, i64* %tail1, align 8
  br label %for.cond

for.end.33:                                       ; preds = %for.cond
  store i1 true, i1* %retval
  br label %return

return:                                           ; preds = %for.end.33, %if.then.26, %if.then.20
  %31 = load i1, i1* %retval
  ret i1 %31
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @add_properties(i64 %plist, %struct.interval* %i, i64 %object, i32 %set_type) #0 {
entry:
  %plist.addr = alloca i64, align 8
  %i.addr = alloca %struct.interval*, align 8
  %object.addr = alloca i64, align 8
  %set_type.addr = alloca i32, align 4
  %tail1 = alloca i64, align 8
  %tail2 = alloca i64, align 8
  %sym1 = alloca i64, align 8
  %val1 = alloca i64, align 8
  %changed = alloca i8, align 1
  %found = alloca i8, align 1
  %this_cdr = alloca i64, align 8
  store i64 %plist, i64* %plist.addr, align 8
  store %struct.interval* %i, %struct.interval** %i.addr, align 8
  store i64 %object, i64* %object.addr, align 8
  store i32 %set_type, i32* %set_type.addr, align 4
  store i8 0, i8* %changed, align 1
  %0 = load i64, i64* %plist.addr, align 8
  store i64 %0, i64* %tail1, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %sym1, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* %val1, align 8
  %1 = load i64, i64* %plist.addr, align 8
  store i64 %1, i64* %tail1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.145, %entry
  %2 = load i64, i64* %tail1, align 8
  %and = and i64 %2, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %for.body, label %for.end.150

for.body:                                         ; preds = %for.cond
  store i8 0, i8* %found, align 1
  %3 = load i64, i64* %tail1, align 8
  %sub = sub nsw i64 %3, 3
  %4 = inttoptr i64 %sub to i8*
  %5 = bitcast i8* %4 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %5, i32 0, i32 0
  %6 = load i64, i64* %car, align 8
  store i64 %6, i64* %sym1, align 8
  %7 = load i64, i64* %tail1, align 8
  %sub3 = sub nsw i64 %7, 3
  %8 = inttoptr i64 %sub3 to i8*
  %9 = bitcast i8* %8 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %9, i32 0, i32 1
  %cdr = bitcast %union.anon.6* %u to i64*
  %10 = load i64, i64* %cdr, align 8
  %call4 = call i64 @Fcar(i64 %10)
  store i64 %call4, i64* %val1, align 8
  %11 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %plist5 = getelementptr inbounds %struct.interval, %struct.interval* %11, i32 0, i32 6
  %12 = load i64, i64* %plist5, align 8
  store i64 %12, i64* %tail2, align 8
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body
  %13 = load i64, i64* %tail2, align 8
  %and7 = and i64 %13, 7
  %conv8 = trunc i64 %and7 to i32
  %cmp9 = icmp eq i32 %conv8, 3
  br i1 %cmp9, label %for.body.11, label %for.end

for.body.11:                                      ; preds = %for.cond.6
  %14 = load i64, i64* %sym1, align 8
  %15 = load i64, i64* %tail2, align 8
  %sub12 = sub nsw i64 %15, 3
  %16 = inttoptr i64 %sub12 to i8*
  %17 = bitcast i8* %16 to %struct.Lisp_Cons*
  %car13 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %17, i32 0, i32 0
  %18 = load i64, i64* %car13, align 8
  %cmp14 = icmp eq i64 %14, %18
  br i1 %cmp14, label %if.then, label %if.end.97

if.then:                                          ; preds = %for.body.11
  %19 = load i64, i64* %tail2, align 8
  %sub16 = sub nsw i64 %19, 3
  %20 = inttoptr i64 %sub16 to i8*
  %21 = bitcast i8* %20 to %struct.Lisp_Cons*
  %u17 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %21, i32 0, i32 1
  %cdr18 = bitcast %union.anon.6* %u17 to i64*
  %22 = load i64, i64* %cdr18, align 8
  store i64 %22, i64* %this_cdr, align 8
  store i8 1, i8* %found, align 1
  %23 = load i64, i64* %val1, align 8
  %24 = load i64, i64* %this_cdr, align 8
  %call19 = call i64 @Fcar(i64 %24)
  %cmp20 = icmp eq i64 %23, %call19
  br i1 %cmp20, label %if.then.22, label %if.end

if.then.22:                                       ; preds = %if.then
  br label %for.end

if.end:                                           ; preds = %if.then
  %25 = load i64, i64* %object.addr, align 8
  %call23 = call zeroext i1 @BUFFERP(i64 %25)
  br i1 %call23, label %if.then.24, label %if.end.52

if.then.24:                                       ; preds = %if.end
  %26 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %position = getelementptr inbounds %struct.interval, %struct.interval* %26, i32 0, i32 1
  %27 = load i64, i64* %position, align 8
  %28 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %cmp25 = icmp eq %struct.interval* %28, null
  br i1 %cmp25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.24
  br label %cond.end.49

cond.false:                                       ; preds = %if.then.24
  %29 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %cmp27 = icmp eq %struct.interval* %29, null
  br i1 %cmp27, label %cond.true.29, label %cond.false.30

cond.true.29:                                     ; preds = %cond.false
  br label %cond.end

cond.false.30:                                    ; preds = %cond.false
  %30 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %total_length = getelementptr inbounds %struct.interval, %struct.interval* %30, i32 0, i32 0
  %31 = load i64, i64* %total_length, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.30, %cond.true.29
  %cond = phi i64 [ 0, %cond.true.29 ], [ %31, %cond.false.30 ]
  %32 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right = getelementptr inbounds %struct.interval, %struct.interval* %32, i32 0, i32 3
  %33 = load %struct.interval*, %struct.interval** %right, align 8
  %cmp31 = icmp eq %struct.interval* %33, null
  br i1 %cmp31, label %cond.true.33, label %cond.false.34

cond.true.33:                                     ; preds = %cond.end
  br label %cond.end.37

cond.false.34:                                    ; preds = %cond.end
  %34 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right35 = getelementptr inbounds %struct.interval, %struct.interval* %34, i32 0, i32 3
  %35 = load %struct.interval*, %struct.interval** %right35, align 8
  %total_length36 = getelementptr inbounds %struct.interval, %struct.interval* %35, i32 0, i32 0
  %36 = load i64, i64* %total_length36, align 8
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.34, %cond.true.33
  %cond38 = phi i64 [ 0, %cond.true.33 ], [ %36, %cond.false.34 ]
  %sub39 = sub nsw i64 %cond, %cond38
  %37 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left = getelementptr inbounds %struct.interval, %struct.interval* %37, i32 0, i32 2
  %38 = load %struct.interval*, %struct.interval** %left, align 8
  %cmp40 = icmp eq %struct.interval* %38, null
  br i1 %cmp40, label %cond.true.42, label %cond.false.43

cond.true.42:                                     ; preds = %cond.end.37
  br label %cond.end.46

cond.false.43:                                    ; preds = %cond.end.37
  %39 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left44 = getelementptr inbounds %struct.interval, %struct.interval* %39, i32 0, i32 2
  %40 = load %struct.interval*, %struct.interval** %left44, align 8
  %total_length45 = getelementptr inbounds %struct.interval, %struct.interval* %40, i32 0, i32 0
  %41 = load i64, i64* %total_length45, align 8
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.false.43, %cond.true.42
  %cond47 = phi i64 [ 0, %cond.true.42 ], [ %41, %cond.false.43 ]
  %sub48 = sub nsw i64 %sub39, %cond47
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.end.46, %cond.true
  %cond50 = phi i64 [ 0, %cond.true ], [ %sub48, %cond.end.46 ]
  %42 = load i64, i64* %sym1, align 8
  %43 = load i64, i64* %this_cdr, align 8
  %call51 = call i64 @Fcar(i64 %43)
  %44 = load i64, i64* %object.addr, align 8
  call void @record_property_change(i64 %27, i64 %cond50, i64 %42, i64 %call51, i64 %44)
  br label %if.end.52

if.end.52:                                        ; preds = %cond.end.49, %if.end
  %45 = load i32, i32* %set_type.addr, align 4
  %cmp53 = icmp eq i32 %45, 0
  br i1 %cmp53, label %if.then.55, label %if.else

if.then.55:                                       ; preds = %if.end.52
  %46 = load i64, i64* %this_cdr, align 8
  %47 = load i64, i64* %val1, align 8
  %call56 = call i64 @Fsetcar(i64 %46, i64 %47)
  br label %if.end.96

if.else:                                          ; preds = %if.end.52
  %48 = load i64, i64* %this_cdr, align 8
  %call57 = call i64 @Fcar(i64 %48)
  %and58 = and i64 %call57, 7
  %conv59 = trunc i64 %and58 to i32
  %cmp60 = icmp eq i32 %conv59, 3
  br i1 %cmp60, label %land.lhs.true, label %if.else.83

land.lhs.true:                                    ; preds = %if.else
  %49 = load i64, i64* %sym1, align 8
  %call62 = call i64 @builtin_lisp_symbol(i32 397)
  %cmp63 = icmp eq i64 %49, %call62
  br i1 %cmp63, label %lor.lhs.false, label %if.then.71

lor.lhs.false:                                    ; preds = %land.lhs.true
  %50 = load i64, i64* %this_cdr, align 8
  %call65 = call i64 @Fcar(i64 %50)
  %call66 = call i64 @Fcar(i64 %call65)
  %call67 = call i64 @Fkeywordp(i64 %call66)
  %call68 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp69 = icmp eq i64 %call67, %call68
  br i1 %cmp69, label %if.then.71, label %if.else.83

if.then.71:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %51 = load i32, i32* %set_type.addr, align 4
  %cmp72 = icmp eq i32 %51, 1
  br i1 %cmp72, label %if.then.74, label %if.else.78

if.then.74:                                       ; preds = %if.then.71
  %52 = load i64, i64* %this_cdr, align 8
  %53 = load i64, i64* %val1, align 8
  %54 = load i64, i64* %this_cdr, align 8
  %call75 = call i64 @Fcar(i64 %54)
  %call76 = call i64 @Fcons(i64 %53, i64 %call75)
  %call77 = call i64 @Fsetcar(i64 %52, i64 %call76)
  br label %if.end.82

if.else.78:                                       ; preds = %if.then.71
  %55 = load i64, i64* %this_cdr, align 8
  %call79 = call i64 @Fcar(i64 %55)
  %56 = load i64, i64* %val1, align 8
  %call80 = call i64 @list1(i64 %56)
  %call81 = call i64 @nconc2(i64 %call79, i64 %call80)
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.78, %if.then.74
  br label %if.end.95

if.else.83:                                       ; preds = %lor.lhs.false, %if.else
  %57 = load i32, i32* %set_type.addr, align 4
  %cmp84 = icmp eq i32 %57, 1
  br i1 %cmp84, label %if.then.86, label %if.else.90

if.then.86:                                       ; preds = %if.else.83
  %58 = load i64, i64* %this_cdr, align 8
  %59 = load i64, i64* %val1, align 8
  %60 = load i64, i64* %this_cdr, align 8
  %call87 = call i64 @Fcar(i64 %60)
  %call88 = call i64 @list2(i64 %59, i64 %call87)
  %call89 = call i64 @Fsetcar(i64 %58, i64 %call88)
  br label %if.end.94

if.else.90:                                       ; preds = %if.else.83
  %61 = load i64, i64* %this_cdr, align 8
  %62 = load i64, i64* %this_cdr, align 8
  %call91 = call i64 @Fcar(i64 %62)
  %63 = load i64, i64* %val1, align 8
  %call92 = call i64 @list2(i64 %call91, i64 %63)
  %call93 = call i64 @Fsetcar(i64 %61, i64 %call92)
  br label %if.end.94

if.end.94:                                        ; preds = %if.else.90, %if.then.86
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.end.82
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.then.55
  store i8 1, i8* %changed, align 1
  br label %for.end

if.end.97:                                        ; preds = %for.body.11
  br label %for.inc

for.inc:                                          ; preds = %if.end.97
  %64 = load i64, i64* %tail2, align 8
  %sub98 = sub nsw i64 %64, 3
  %65 = inttoptr i64 %sub98 to i8*
  %66 = bitcast i8* %65 to %struct.Lisp_Cons*
  %u99 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %66, i32 0, i32 1
  %cdr100 = bitcast %union.anon.6* %u99 to i64*
  %67 = load i64, i64* %cdr100, align 8
  %call101 = call i64 @Fcdr(i64 %67)
  store i64 %call101, i64* %tail2, align 8
  br label %for.cond.6

for.end:                                          ; preds = %if.end.96, %if.then.22, %for.cond.6
  %68 = load i8, i8* %found, align 1
  %tobool = trunc i8 %68 to i1
  br i1 %tobool, label %if.end.144, label %if.then.102

if.then.102:                                      ; preds = %for.end
  %69 = load i64, i64* %object.addr, align 8
  %call103 = call zeroext i1 @BUFFERP(i64 %69)
  br i1 %call103, label %if.then.104, label %if.end.140

if.then.104:                                      ; preds = %if.then.102
  %70 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %position105 = getelementptr inbounds %struct.interval, %struct.interval* %70, i32 0, i32 1
  %71 = load i64, i64* %position105, align 8
  %72 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %cmp106 = icmp eq %struct.interval* %72, null
  br i1 %cmp106, label %cond.true.108, label %cond.false.109

cond.true.108:                                    ; preds = %if.then.104
  br label %cond.end.137

cond.false.109:                                   ; preds = %if.then.104
  %73 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %cmp110 = icmp eq %struct.interval* %73, null
  br i1 %cmp110, label %cond.true.112, label %cond.false.113

cond.true.112:                                    ; preds = %cond.false.109
  br label %cond.end.115

cond.false.113:                                   ; preds = %cond.false.109
  %74 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %total_length114 = getelementptr inbounds %struct.interval, %struct.interval* %74, i32 0, i32 0
  %75 = load i64, i64* %total_length114, align 8
  br label %cond.end.115

cond.end.115:                                     ; preds = %cond.false.113, %cond.true.112
  %cond116 = phi i64 [ 0, %cond.true.112 ], [ %75, %cond.false.113 ]
  %76 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right117 = getelementptr inbounds %struct.interval, %struct.interval* %76, i32 0, i32 3
  %77 = load %struct.interval*, %struct.interval** %right117, align 8
  %cmp118 = icmp eq %struct.interval* %77, null
  br i1 %cmp118, label %cond.true.120, label %cond.false.121

cond.true.120:                                    ; preds = %cond.end.115
  br label %cond.end.124

cond.false.121:                                   ; preds = %cond.end.115
  %78 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %right122 = getelementptr inbounds %struct.interval, %struct.interval* %78, i32 0, i32 3
  %79 = load %struct.interval*, %struct.interval** %right122, align 8
  %total_length123 = getelementptr inbounds %struct.interval, %struct.interval* %79, i32 0, i32 0
  %80 = load i64, i64* %total_length123, align 8
  br label %cond.end.124

cond.end.124:                                     ; preds = %cond.false.121, %cond.true.120
  %cond125 = phi i64 [ 0, %cond.true.120 ], [ %80, %cond.false.121 ]
  %sub126 = sub nsw i64 %cond116, %cond125
  %81 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left127 = getelementptr inbounds %struct.interval, %struct.interval* %81, i32 0, i32 2
  %82 = load %struct.interval*, %struct.interval** %left127, align 8
  %cmp128 = icmp eq %struct.interval* %82, null
  br i1 %cmp128, label %cond.true.130, label %cond.false.131

cond.true.130:                                    ; preds = %cond.end.124
  br label %cond.end.134

cond.false.131:                                   ; preds = %cond.end.124
  %83 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %left132 = getelementptr inbounds %struct.interval, %struct.interval* %83, i32 0, i32 2
  %84 = load %struct.interval*, %struct.interval** %left132, align 8
  %total_length133 = getelementptr inbounds %struct.interval, %struct.interval* %84, i32 0, i32 0
  %85 = load i64, i64* %total_length133, align 8
  br label %cond.end.134

cond.end.134:                                     ; preds = %cond.false.131, %cond.true.130
  %cond135 = phi i64 [ 0, %cond.true.130 ], [ %85, %cond.false.131 ]
  %sub136 = sub nsw i64 %sub126, %cond135
  br label %cond.end.137

cond.end.137:                                     ; preds = %cond.end.134, %cond.true.108
  %cond138 = phi i64 [ 0, %cond.true.108 ], [ %sub136, %cond.end.134 ]
  %86 = load i64, i64* %sym1, align 8
  %call139 = call i64 @builtin_lisp_symbol(i32 0)
  %87 = load i64, i64* %object.addr, align 8
  call void @record_property_change(i64 %71, i64 %cond138, i64 %86, i64 %call139, i64 %87)
  br label %if.end.140

if.end.140:                                       ; preds = %cond.end.137, %if.then.102
  %88 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %89 = load i64, i64* %sym1, align 8
  %90 = load i64, i64* %val1, align 8
  %91 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %plist141 = getelementptr inbounds %struct.interval, %struct.interval* %91, i32 0, i32 6
  %92 = load i64, i64* %plist141, align 8
  %call142 = call i64 @Fcons(i64 %90, i64 %92)
  %call143 = call i64 @Fcons(i64 %89, i64 %call142)
  call void @set_interval_plist(%struct.interval* %88, i64 %call143)
  store i8 1, i8* %changed, align 1
  br label %if.end.144

if.end.144:                                       ; preds = %if.end.140, %for.end
  br label %for.inc.145

for.inc.145:                                      ; preds = %if.end.144
  %93 = load i64, i64* %tail1, align 8
  %sub146 = sub nsw i64 %93, 3
  %94 = inttoptr i64 %sub146 to i8*
  %95 = bitcast i8* %94 to %struct.Lisp_Cons*
  %u147 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %95, i32 0, i32 1
  %cdr148 = bitcast %union.anon.6* %u147 to i64*
  %96 = load i64, i64* %cdr148, align 8
  %call149 = call i64 @Fcdr(i64 %96)
  store i64 %call149, i64* %tail1, align 8
  br label %for.cond

for.end.150:                                      ; preds = %for.cond
  %97 = load i8, i8* %changed, align 1
  %tobool151 = trunc i8 %97 to i1
  ret i1 %tobool151
}

declare void @record_property_change(i64, i64, i64, i64, i64) #1

declare i64 @Fsetcar(i64, i64) #1

declare i64 @Fkeywordp(i64) #1

declare i64 @nconc2(i64, i64) #1

declare i64 @list1(i64) #1

declare void @set_interval_plist(%struct.interval*, i64) #1

; Function Attrs: noreturn
declare void @error(i8*, ...) #2

declare void @process_quit_flag() #1

declare void @process_pending_signals() #1

declare void @set_buffer_internal(%struct.buffer*) #1

declare void @prepare_to_modify_buffer_1(i64, i64, i64*) #1

declare void @record_first_change() #1

declare void @bset_point_before_scroll(%struct.buffer*, i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @property_value(i64 %plist, i64 %prop) #0 {
entry:
  %retval = alloca i64, align 8
  %plist.addr = alloca i64, align 8
  %prop.addr = alloca i64, align 8
  %value = alloca i64, align 8
  store i64 %plist, i64* %plist.addr, align 8
  store i64 %prop, i64* %prop.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i64, i64* %plist.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load i64, i64* %plist.addr, align 8
  %sub = sub nsw i64 %1, 3
  %2 = inttoptr i64 %sub to i8*
  %3 = bitcast i8* %2 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %3, i32 0, i32 1
  %cdr = bitcast %union.anon.6* %u to i64*
  %4 = load i64, i64* %cdr, align 8
  store i64 %4, i64* %value, align 8
  %5 = load i64, i64* %value, align 8
  %and2 = and i64 %5, 7
  %conv3 = trunc i64 %and2 to i32
  %cmp4 = icmp eq i32 %conv3, 3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp4, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load i64, i64* %plist.addr, align 8
  %sub6 = sub nsw i64 %7, 3
  %8 = inttoptr i64 %sub6 to i8*
  %9 = bitcast i8* %8 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %9, i32 0, i32 0
  %10 = load i64, i64* %car, align 8
  %11 = load i64, i64* %prop.addr, align 8
  %cmp7 = icmp eq i64 %10, %11
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %12 = load i64, i64* %value, align 8
  %sub9 = sub nsw i64 %12, 3
  %13 = inttoptr i64 %sub9 to i8*
  %14 = bitcast i8* %13 to %struct.Lisp_Cons*
  %car10 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %14, i32 0, i32 0
  %15 = load i64, i64* %car10, align 8
  store i64 %15, i64* %retval
  br label %return

if.else:                                          ; preds = %while.body
  %16 = load i64, i64* %value, align 8
  %sub11 = sub nsw i64 %16, 3
  %17 = inttoptr i64 %sub11 to i8*
  %18 = bitcast i8* %17 to %struct.Lisp_Cons*
  %u12 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %18, i32 0, i32 1
  %cdr13 = bitcast %union.anon.6* %u12 to i64*
  %19 = load i64, i64* %cdr13, align 8
  store i64 %19, i64* %plist.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %while.cond

while.end:                                        ; preds = %land.end
  %call = call i64 @builtin_lisp_symbol(i32 957)
  store i64 %call, i64* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %20 = load i64, i64* %retval
  ret i64 %20
}

declare i64 @Fcopy_sequence(i64) #1

declare i64 @Fsetcdr(i64, i64) #1

; Function Attrs: noreturn
declare void @xsignal0(i64) #2

declare i64 @call2(i64, i64, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
