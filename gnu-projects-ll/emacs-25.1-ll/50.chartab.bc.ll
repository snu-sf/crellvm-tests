; ModuleID = './src/chartab.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emacs_globals = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.Lisp_Objfwd = type { i32, i64* }
%struct.vectorlike_header = type { i64 }
%struct.Lisp_Vector = type { %struct.vectorlike_header, [0 x i64] }
%struct.Lisp_Char_Table = type { %struct.vectorlike_header, i64, i64, i64, i64, [64 x i64], [0 x i64] }
%struct.Lisp_Sub_Char_Table = type { %struct.vectorlike_header, i32, i32, [0 x i64] }
%struct.Lisp_Cons = type { i64, %union.anon }
%union.anon = type { i64 }
%struct.charset = type { i32, i64, i32, [15 x i32], i8*, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [190 x i8], i32 }
%struct.Lisp_Hash_Table = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.hash_table_test, %struct.Lisp_Hash_Table* }
%struct.hash_table_test = type { i64, i64, i64, i1 (%struct.hash_table_test*, i64, i64)*, i64 (%struct.hash_table_test*, i64)* }
%union.Aligned_String = type { %struct.Lisp_String }
%struct.Lisp_String = type { i64, i64, %struct.interval*, i8* }
%struct.interval = type opaque
%struct.Lisp_Subr = type { %struct.vectorlike_header, %union.anon.0, i16, i16, i8*, i8*, i8* }
%union.anon.0 = type { i64 ()* }

@chartab_size = constant [4 x i32] [i32 64, i32 16, i32 32, i32 128], align 16
@chartab_bits = internal constant [4 x i32] [i32 16, i32 12, i32 7, i32 0], align 16
@chartab_chars = internal constant [4 x i32] [i32 65536, i32 4096, i32 128, i32 1], align 16
@.str = private unnamed_addr constant [46 x i8] c"Attempt to make a chartable be its own parent\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Invalid RANGE argument to `char-table-range'\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Invalid RANGE argument to `set-char-table-range'\00", align 1
@globals = external global %struct.emacs_globals, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"international/\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Invalid Unicode property table\00", align 1
@syms_of_chartab.o_fwd = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"char-code-property-alist\00", align 1
@Vcharset_hash_table = external global i64, align 8
@charset_work = external global i64, align 8
@uniprop_decoder = internal global [1 x i64 (i64, i64)*] [i64 (i64, i64)* @uniprop_decode_value_run_length], align 8
@uniprop_encoder = internal global [3 x i64 (i64, i64)*] [i64 (i64, i64)* @uniprop_encode_value_character, i64 (i64, i64)* @uniprop_encode_value_run_length, i64 (i64, i64)* @uniprop_encode_value_numeric], align 16
@.str.6 = private unnamed_addr constant [23 x i8] c"Unicode property value\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"make-char-table\00", align 1
@Smake_char_table = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fmake_char_table }, i16 1, i16 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.8 = private unnamed_addr constant [18 x i8] c"char-table-parent\00", align 1
@Schar_table_parent = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fchar_table_parent }, i16 1, i16 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.9 = private unnamed_addr constant [19 x i8] c"char-table-subtype\00", align 1
@Schar_table_subtype = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fchar_table_subtype }, i16 1, i16 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.10 = private unnamed_addr constant [22 x i8] c"set-char-table-parent\00", align 1
@Sset_char_table_parent = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fset_char_table_parent }, i16 2, i16 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.11 = private unnamed_addr constant [22 x i8] c"char-table-extra-slot\00", align 1
@Schar_table_extra_slot = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fchar_table_extra_slot }, i16 2, i16 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.12 = private unnamed_addr constant [26 x i8] c"set-char-table-extra-slot\00", align 1
@Sset_char_table_extra_slot = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Fset_char_table_extra_slot }, i16 3, i16 3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.13 = private unnamed_addr constant [17 x i8] c"char-table-range\00", align 1
@Schar_table_range = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fchar_table_range }, i16 2, i16 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.14 = private unnamed_addr constant [21 x i8] c"set-char-table-range\00", align 1
@Sset_char_table_range = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Fset_char_table_range }, i16 3, i16 3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.15 = private unnamed_addr constant [20 x i8] c"optimize-char-table\00", align 1
@Soptimize_char_table = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Foptimize_char_table }, i16 1, i16 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.16 = private unnamed_addr constant [15 x i8] c"map-char-table\00", align 1
@Smap_char_table = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fmap_char_table }, i16 2, i16 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.17 = private unnamed_addr constant [32 x i8] c"unicode-property-table-internal\00", align 1
@Sunicode_property_table_internal = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Funicode_property_table_internal }, i16 1, i16 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.18 = private unnamed_addr constant [30 x i8] c"get-unicode-property-internal\00", align 1
@Sget_unicode_property_internal = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fget_unicode_property_internal }, i16 2, i16 2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.19 = private unnamed_addr constant [30 x i8] c"put-unicode-property-internal\00", align 1
@Sput_unicode_property_internal = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Fput_unicode_property_internal }, i16 3, i16 3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i32 0, i32 0), i8* null, i8* null }, align 8

; Function Attrs: nounwind uwtable
define i64 @Fmake_char_table(i64 %purpose, i64 %init) #0 {
entry:
  %purpose.addr = alloca i64, align 8
  %init.addr = alloca i64, align 8
  %vector = alloca i64, align 8
  %n = alloca i64, align 8
  %n_extras = alloca i32, align 4
  %size = alloca i32, align 4
  store i64 %purpose, i64* %purpose.addr, align 8
  store i64 %init, i64* %init.addr, align 8
  %0 = load i64, i64* %purpose.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 897)
  %1 = load i64, i64* %purpose.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call, i64 %1) #3
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i64, i64* %purpose.addr, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 258)
  %call3 = call i64 @Fget(i64 %4, i64 %call2)
  store i64 %call3, i64* %n, align 8
  %5 = load i64, i64* %n, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp5 = icmp eq i64 %5, %call4
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  store i32 0, i32* %n_extras, align 4
  br label %if.end.13

if.else:                                          ; preds = %cond.end
  %6 = load i64, i64* %n, align 8
  call void @CHECK_NATNUM(i64 %6)
  %7 = load i64, i64* %n, align 8
  %shr = ashr i64 %7, 2
  %cmp7 = icmp sgt i64 %shr, 10
  br i1 %cmp7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.else
  %8 = load i64, i64* %n, align 8
  %call10 = call i64 @builtin_lisp_symbol(i32 0)
  call void @args_out_of_range(i64 %8, i64 %call10) #3
  unreachable

if.end:                                           ; preds = %if.else
  %9 = load i64, i64* %n, align 8
  %shr11 = ashr i64 %9, 2
  %conv12 = trunc i64 %shr11 to i32
  store i32 %conv12, i32* %n_extras, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then
  %10 = load i32, i32* %n_extras, align 4
  %add = add nsw i32 68, %10
  store i32 %add, i32* %size, align 4
  %11 = load i32, i32* %size, align 4
  %conv14 = sext i32 %11 to i64
  %shl = shl i64 %conv14, 2
  %add15 = add i64 %shl, 2
  %12 = load i64, i64* %init.addr, align 8
  %call16 = call i64 @Fmake_vector(i64 %add15, i64 %12)
  store i64 %call16, i64* %vector, align 8
  %13 = load i64, i64* %vector, align 8
  %call17 = call %struct.Lisp_Vector* @XVECTOR(i64 %13)
  %header = getelementptr inbounds %struct.Lisp_Vector, %struct.Lisp_Vector* %call17, i32 0, i32 0
  %size18 = getelementptr inbounds %struct.vectorlike_header, %struct.vectorlike_header* %header, i32 0, i32 0
  %14 = load i64, i64* %size18, align 8
  %or = or i64 %14, 4611686018679046144
  store i64 %or, i64* %size18, align 8
  %15 = load i64, i64* %vector, align 8
  %call19 = call i64 @builtin_lisp_symbol(i32 0)
  call void @set_char_table_parent(i64 %15, i64 %call19)
  %16 = load i64, i64* %vector, align 8
  %17 = load i64, i64* %purpose.addr, align 8
  call void @set_char_table_purpose(i64 %16, i64 %17)
  %18 = load i64, i64* %vector, align 8
  %call20 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %18)
  %19 = bitcast %struct.Lisp_Char_Table* %call20 to i8*
  %call21 = call i64 @make_lisp_ptr(i8* %19, i32 5)
  store i64 %call21, i64* %vector, align 8
  %20 = load i64, i64* %vector, align 8
  ret i64 %20
}

; Function Attrs: noreturn
declare i64 @wrong_type_argument(i64, i64) #1

declare i64 @builtin_lisp_symbol(i32) #2

declare i64 @Fget(i64, i64) #2

declare void @CHECK_NATNUM(i64) #2

; Function Attrs: noreturn
declare void @args_out_of_range(i64, i64) #1

declare i64 @Fmake_vector(i64, i64) #2

declare %struct.Lisp_Vector* @XVECTOR(i64) #2

; Function Attrs: nounwind uwtable
define internal void @set_char_table_parent(i64 %table, i64 %val) #0 {
entry:
  %table.addr = alloca i64, align 8
  %val.addr = alloca i64, align 8
  store i64 %table, i64* %table.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load i64, i64* %table.addr, align 8
  %call = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %1)
  %parent = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call, i32 0, i32 2
  store i64 %0, i64* %parent, align 8
  ret void
}

declare void @set_char_table_purpose(i64, i64) #2

declare i64 @make_lisp_ptr(i8*, i32) #2

declare %struct.Lisp_Char_Table* @XCHAR_TABLE(i64) #2

; Function Attrs: nounwind uwtable
define i64 @copy_char_table(i64 %table) #0 {
entry:
  %table.addr = alloca i64, align 8
  %copy = alloca i64, align 8
  %size = alloca i32, align 4
  %i = alloca i32, align 4
  store i64 %table, i64* %table.addr, align 8
  %0 = load i64, i64* %table.addr, align 8
  %call = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %0)
  %header = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call, i32 0, i32 0
  %size1 = getelementptr inbounds %struct.vectorlike_header, %struct.vectorlike_header* %header, i32 0, i32 0
  %1 = load i64, i64* %size1, align 8
  %and = and i64 %1, 4095
  %conv = trunc i64 %and to i32
  store i32 %conv, i32* %size, align 4
  %2 = load i32, i32* %size, align 4
  %conv2 = sext i32 %2 to i64
  %shl = shl i64 %conv2, 2
  %add = add i64 %shl, 2
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %call4 = call i64 @Fmake_vector(i64 %add, i64 %call3)
  store i64 %call4, i64* %copy, align 8
  %3 = load i64, i64* %copy, align 8
  %call5 = call %struct.Lisp_Vector* @XVECTOR(i64 %3)
  %header6 = getelementptr inbounds %struct.Lisp_Vector, %struct.Lisp_Vector* %call5, i32 0, i32 0
  %size7 = getelementptr inbounds %struct.vectorlike_header, %struct.vectorlike_header* %header6, i32 0, i32 0
  %4 = load i64, i64* %size7, align 8
  %or = or i64 %4, 4611686018679046144
  store i64 %or, i64* %size7, align 8
  %5 = load i64, i64* %copy, align 8
  %6 = load i64, i64* %table.addr, align 8
  %call8 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %6)
  %defalt = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call8, i32 0, i32 1
  %7 = load i64, i64* %defalt, align 8
  call void @set_char_table_defalt(i64 %5, i64 %7)
  %8 = load i64, i64* %copy, align 8
  %9 = load i64, i64* %table.addr, align 8
  %call9 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %9)
  %parent = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call9, i32 0, i32 2
  %10 = load i64, i64* %parent, align 8
  call void @set_char_table_parent(i64 %8, i64 %10)
  %11 = load i64, i64* %copy, align 8
  %12 = load i64, i64* %table.addr, align 8
  %call10 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %12)
  %purpose = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call10, i32 0, i32 3
  %13 = load i64, i64* %purpose, align 8
  call void @set_char_table_purpose(i64 %11, i64 %13)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @chartab_size, i32 0, i64 0), align 4
  %cmp = icmp slt i32 %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i64, i64* %copy, align 8
  %17 = load i32, i32* %i, align 4
  %conv12 = sext i32 %17 to i64
  %18 = load i32, i32* %i, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load i64, i64* %table.addr, align 8
  %call13 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %19)
  %contents = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call13, i32 0, i32 5
  %arrayidx = getelementptr inbounds [64 x i64], [64 x i64]* %contents, i32 0, i64 %idxprom
  %20 = load i64, i64* %arrayidx, align 8
  %call14 = call zeroext i1 @SUB_CHAR_TABLE_P(i64 %20)
  br i1 %call14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %21 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %21 to i64
  %22 = load i64, i64* %table.addr, align 8
  %call17 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %22)
  %contents18 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call17, i32 0, i32 5
  %arrayidx19 = getelementptr inbounds [64 x i64], [64 x i64]* %contents18, i32 0, i64 %idxprom16
  %23 = load i64, i64* %arrayidx19, align 8
  %call20 = call i64 @copy_sub_char_table(i64 %23)
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %24 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %24 to i64
  %25 = load i64, i64* %table.addr, align 8
  %call22 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %25)
  %contents23 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call22, i32 0, i32 5
  %arrayidx24 = getelementptr inbounds [64 x i64], [64 x i64]* %contents23, i32 0, i64 %idxprom21
  %26 = load i64, i64* %arrayidx24, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call20, %cond.true ], [ %26, %cond.false ]
  call void @set_char_table_contents(i64 %16, i64 %conv12, i64 %cond)
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load i64, i64* %copy, align 8
  %29 = load i64, i64* %copy, align 8
  %call25 = call i64 @char_table_ascii(i64 %29)
  call void @set_char_table_ascii(i64 %28, i64 %call25)
  %30 = load i32, i32* %size, align 4
  %sub = sub nsw i32 %30, 68
  store i32 %sub, i32* %size, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.34, %for.end
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %size, align 4
  %cmp27 = icmp slt i32 %31, %32
  br i1 %cmp27, label %for.body.29, label %for.end.36

for.body.29:                                      ; preds = %for.cond.26
  %33 = load i64, i64* %copy, align 8
  %34 = load i32, i32* %i, align 4
  %conv30 = sext i32 %34 to i64
  %35 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %35 to i64
  %36 = load i64, i64* %table.addr, align 8
  %call32 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %36)
  %extras = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call32, i32 0, i32 6
  %arrayidx33 = getelementptr inbounds [0 x i64], [0 x i64]* %extras, i32 0, i64 %idxprom31
  %37 = load i64, i64* %arrayidx33, align 8
  call void @set_char_table_extras(i64 %33, i64 %conv30, i64 %37)
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.body.29
  %38 = load i32, i32* %i, align 4
  %inc35 = add nsw i32 %38, 1
  store i32 %inc35, i32* %i, align 4
  br label %for.cond.26

for.end.36:                                       ; preds = %for.cond.26
  %39 = load i64, i64* %copy, align 8
  %call37 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %39)
  %40 = bitcast %struct.Lisp_Char_Table* %call37 to i8*
  %call38 = call i64 @make_lisp_ptr(i8* %40, i32 5)
  store i64 %call38, i64* %copy, align 8
  %41 = load i64, i64* %copy, align 8
  ret i64 %41
}

declare void @set_char_table_defalt(i64, i64) #2

declare void @set_char_table_contents(i64, i64, i64) #2

declare zeroext i1 @SUB_CHAR_TABLE_P(i64) #2

; Function Attrs: nounwind uwtable
define internal i64 @copy_sub_char_table(i64 %table) #0 {
entry:
  %table.addr = alloca i64, align 8
  %depth = alloca i32, align 4
  %min_char = alloca i32, align 4
  %copy = alloca i64, align 8
  %i = alloca i32, align 4
  %val = alloca i64, align 8
  store i64 %table, i64* %table.addr, align 8
  %0 = load i64, i64* %table.addr, align 8
  %call = call %struct.Lisp_Sub_Char_Table* @XSUB_CHAR_TABLE(i64 %0)
  %depth1 = getelementptr inbounds %struct.Lisp_Sub_Char_Table, %struct.Lisp_Sub_Char_Table* %call, i32 0, i32 1
  %1 = load i32, i32* %depth1, align 4
  store i32 %1, i32* %depth, align 4
  %2 = load i64, i64* %table.addr, align 8
  %call2 = call %struct.Lisp_Sub_Char_Table* @XSUB_CHAR_TABLE(i64 %2)
  %min_char3 = getelementptr inbounds %struct.Lisp_Sub_Char_Table, %struct.Lisp_Sub_Char_Table* %call2, i32 0, i32 2
  %3 = load i32, i32* %min_char3, align 4
  store i32 %3, i32* %min_char, align 4
  %4 = load i32, i32* %depth, align 4
  %5 = load i32, i32* %min_char, align 4
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %call5 = call i64 @make_sub_char_table(i32 %4, i32 %5, i64 %call4)
  store i64 %call5, i64* %copy, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %depth, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* @chartab_size, i32 0, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  %cmp = icmp slt i32 %6, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %9 to i64
  %10 = load i64, i64* %table.addr, align 8
  %call7 = call %struct.Lisp_Sub_Char_Table* @XSUB_CHAR_TABLE(i64 %10)
  %contents = getelementptr inbounds %struct.Lisp_Sub_Char_Table, %struct.Lisp_Sub_Char_Table* %call7, i32 0, i32 3
  %arrayidx8 = getelementptr inbounds [0 x i64], [0 x i64]* %contents, i32 0, i64 %idxprom6
  %11 = load i64, i64* %arrayidx8, align 8
  store i64 %11, i64* %val, align 8
  %12 = load i64, i64* %copy, align 8
  %13 = load i32, i32* %i, align 4
  %conv = sext i32 %13 to i64
  %14 = load i64, i64* %val, align 8
  %call9 = call zeroext i1 @SUB_CHAR_TABLE_P(i64 %14)
  br i1 %call9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %15 = load i64, i64* %val, align 8
  %call11 = call i64 @copy_sub_char_table(i64 %15)
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %16 = load i64, i64* %val, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call11, %cond.true ], [ %16, %cond.false ]
  call void @set_sub_char_table_contents(i64 %12, i64 %conv, i64 %cond)
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i64, i64* %copy, align 8
  ret i64 %18
}

; Function Attrs: nounwind uwtable
define internal void @set_char_table_ascii(i64 %table, i64 %val) #0 {
entry:
  %table.addr = alloca i64, align 8
  %val.addr = alloca i64, align 8
  store i64 %table, i64* %table.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load i64, i64* %table.addr, align 8
  %call = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %1)
  %ascii = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call, i32 0, i32 4
  store i64 %0, i64* %ascii, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @char_table_ascii(i64 %table) #0 {
entry:
  %retval = alloca i64, align 8
  %table.addr = alloca i64, align 8
  %sub = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %table, i64* %table.addr, align 8
  %0 = load i64, i64* %table.addr, align 8
  %call = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %0)
  %contents = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call, i32 0, i32 5
  %arrayidx = getelementptr inbounds [64 x i64], [64 x i64]* %contents, i32 0, i64 0
  %1 = load i64, i64* %arrayidx, align 8
  store i64 %1, i64* %sub, align 8
  %2 = load i64, i64* %sub, align 8
  %call1 = call zeroext i1 @SUB_CHAR_TABLE_P(i64 %2)
  br i1 %call1, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %sub, align 8
  store i64 %3, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i64, i64* %sub, align 8
  %call2 = call %struct.Lisp_Sub_Char_Table* @XSUB_CHAR_TABLE(i64 %4)
  %contents3 = getelementptr inbounds %struct.Lisp_Sub_Char_Table, %struct.Lisp_Sub_Char_Table* %call2, i32 0, i32 3
  %arrayidx4 = getelementptr inbounds [0 x i64], [0 x i64]* %contents3, i32 0, i64 0
  %5 = load i64, i64* %arrayidx4, align 8
  store i64 %5, i64* %sub, align 8
  %6 = load i64, i64* %sub, align 8
  %call5 = call zeroext i1 @SUB_CHAR_TABLE_P(i64 %6)
  br i1 %call5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end
  %7 = load i64, i64* %sub, align 8
  store i64 %7, i64* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %8 = load i64, i64* %sub, align 8
  %call8 = call %struct.Lisp_Sub_Char_Table* @XSUB_CHAR_TABLE(i64 %8)
  %contents9 = getelementptr inbounds %struct.Lisp_Sub_Char_Table, %struct.Lisp_Sub_Char_Table* %call8, i32 0, i32 3
  %arrayidx10 = getelementptr inbounds [0 x i64], [0 x i64]* %contents9, i32 0, i64 0
  %9 = load i64, i64* %arrayidx10, align 8
  store i64 %9, i64* %val, align 8
  %10 = load i64, i64* %table.addr, align 8
  %call11 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %10)
  %purpose = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call11, i32 0, i32 3
  %11 = load i64, i64* %purpose, align 8
  %call12 = call i64 @builtin_lisp_symbol(i32 254)
  %cmp = icmp eq i64 %11, %call12
  br i1 %cmp, label %land.lhs.true, label %if.end.31

land.lhs.true:                                    ; preds = %if.end.7
  %12 = load i64, i64* %table.addr, align 8
  %call13 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %12)
  %call14 = call i32 @CHAR_TABLE_EXTRA_SLOTS(%struct.Lisp_Char_Table* %call13)
  %cmp15 = icmp eq i32 %call14, 5
  br i1 %cmp15, label %land.lhs.true.16, label %if.end.31

land.lhs.true.16:                                 ; preds = %land.lhs.true
  %13 = load i64, i64* %val, align 8
  %call17 = call zeroext i1 @STRINGP(i64 %13)
  br i1 %call17, label %land.lhs.true.18, label %if.end.31

land.lhs.true.18:                                 ; preds = %land.lhs.true.16
  %14 = load i64, i64* %val, align 8
  %call19 = call i64 @SCHARS(i64 %14)
  %cmp20 = icmp sgt i64 %call19, 0
  br i1 %cmp20, label %land.lhs.true.21, label %if.end.31

land.lhs.true.21:                                 ; preds = %land.lhs.true.18
  %15 = load i64, i64* %val, align 8
  %call22 = call zeroext i8 @SREF(i64 %15, i64 0)
  %conv = zext i8 %call22 to i32
  %cmp23 = icmp eq i32 %conv, 1
  br i1 %cmp23, label %if.then.29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.21
  %16 = load i64, i64* %val, align 8
  %call25 = call zeroext i8 @SREF(i64 %16, i64 0)
  %conv26 = zext i8 %call25 to i32
  %cmp27 = icmp eq i32 %conv26, 2
  br i1 %cmp27, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %lor.lhs.false, %land.lhs.true.21
  %17 = load i64, i64* %sub, align 8
  %call30 = call i64 @uniprop_table_uncompress(i64 %17, i32 0)
  store i64 %call30, i64* %val, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %lor.lhs.false, %land.lhs.true.18, %land.lhs.true.16, %land.lhs.true, %if.end.7
  %18 = load i64, i64* %val, align 8
  store i64 %18, i64* %retval
  br label %return

return:                                           ; preds = %if.end.31, %if.then.6, %if.then
  %19 = load i64, i64* %retval
  ret i64 %19
}

declare void @set_char_table_extras(i64, i64, i64) #2

; Function Attrs: nounwind uwtable
define i64 @char_table_ref(i64 %table, i32 %c) #0 {
entry:
  %table.addr = alloca i64, align 8
  %c.addr = alloca i32, align 4
  %tbl = alloca %struct.Lisp_Char_Table*, align 8
  %val = alloca i64, align 8
  store i64 %table, i64* %table.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  %0 = load i64, i64* %table.addr, align 8
  %call = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %0)
  store %struct.Lisp_Char_Table* %call, %struct.Lisp_Char_Table** %tbl, align 8
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %add = add i32 %1, 0
  %cmp = icmp ult i32 %add, 128
  br i1 %cmp, label %if.then, label %if.else

cond.false:                                       ; preds = %entry
  %2 = load i32, i32* %c.addr, align 4
  %conv = sext i32 %2 to i64
  %add1 = add i64 %conv, 0
  %cmp2 = icmp ult i64 %add1, 128
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %cond.false, %cond.true
  %3 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %tbl, align 8
  %ascii = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %3, i32 0, i32 4
  %4 = load i64, i64* %ascii, align 8
  store i64 %4, i64* %val, align 8
  %5 = load i64, i64* %val, align 8
  %call4 = call zeroext i1 @SUB_CHAR_TABLE_P(i64 %5)
  br i1 %call4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %6 = load i32, i32* %c.addr, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i64, i64* %val, align 8
  %call6 = call %struct.Lisp_Sub_Char_Table* @XSUB_CHAR_TABLE(i64 %7)
  %contents = getelementptr inbounds %struct.Lisp_Sub_Char_Table, %struct.Lisp_Sub_Char_Table* %call6, i32 0, i32 3
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* %contents, i32 0, i64 %idxprom
  %8 = load i64, i64* %arrayidx, align 8
  store i64 %8, i64* %val, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  br label %if.end.22

if.else:                                          ; preds = %cond.false, %cond.true
  %9 = load i32, i32* %c.addr, align 4
  %sub = sub nsw i32 %9, 0
  %10 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @chartab_bits, i32 0, i64 0), align 4
  %shr = ashr i32 %sub, %10
  %idxprom7 = sext i32 %shr to i64
  %11 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %tbl, align 8
  %contents8 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %11, i32 0, i32 5
  %arrayidx9 = getelementptr inbounds [64 x i64], [64 x i64]* %contents8, i32 0, i64 %idxprom7
  %12 = load i64, i64* %arrayidx9, align 8
  store i64 %12, i64* %val, align 8
  %13 = load i64, i64* %val, align 8
  %call10 = call zeroext i1 @SUB_CHAR_TABLE_P(i64 %13)
  br i1 %call10, label %if.then.11, label %if.end.21

if.then.11:                                       ; preds = %if.else
  %14 = load i64, i64* %val, align 8
  %15 = load i32, i32* %c.addr, align 4
  %16 = load i64, i64* %table.addr, align 8
  %call12 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %16)
  %purpose = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call12, i32 0, i32 3
  %17 = load i64, i64* %purpose, align 8
  %call13 = call i64 @builtin_lisp_symbol(i32 254)
  %cmp14 = icmp eq i64 %17, %call13
  br i1 %cmp14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.11
  %18 = load i64, i64* %table.addr, align 8
  %call16 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %18)
  %call17 = call i32 @CHAR_TABLE_EXTRA_SLOTS(%struct.Lisp_Char_Table* %call16)
  %cmp18 = icmp eq i32 %call17, 5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.11
  %19 = phi i1 [ false, %if.then.11 ], [ %cmp18, %land.rhs ]
  %call20 = call i64 @sub_char_table_ref(i64 %14, i32 %15, i1 zeroext %19)
  store i64 %call20, i64* %val, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %land.end, %if.else
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end
  %20 = load i64, i64* %val, align 8
  %call23 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp24 = icmp eq i64 %20, %call23
  br i1 %cmp24, label %if.then.26, label %if.end.36

if.then.26:                                       ; preds = %if.end.22
  %21 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %tbl, align 8
  %defalt = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %21, i32 0, i32 1
  %22 = load i64, i64* %defalt, align 8
  store i64 %22, i64* %val, align 8
  %23 = load i64, i64* %val, align 8
  %call27 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp28 = icmp eq i64 %23, %call27
  br i1 %cmp28, label %land.lhs.true, label %if.end.35

land.lhs.true:                                    ; preds = %if.then.26
  %24 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %tbl, align 8
  %parent = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %24, i32 0, i32 2
  %25 = load i64, i64* %parent, align 8
  %call30 = call zeroext i1 @CHAR_TABLE_P(i64 %25)
  br i1 %call30, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %land.lhs.true
  %26 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %tbl, align 8
  %parent33 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %26, i32 0, i32 2
  %27 = load i64, i64* %parent33, align 8
  %28 = load i32, i32* %c.addr, align 4
  %call34 = call i64 @char_table_ref(i64 %27, i32 %28)
  store i64 %call34, i64* %val, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.32, %land.lhs.true, %if.then.26
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end.22
  %29 = load i64, i64* %val, align 8
  ret i64 %29
}

declare %struct.Lisp_Sub_Char_Table* @XSUB_CHAR_TABLE(i64) #2

; Function Attrs: nounwind uwtable
define internal i64 @sub_char_table_ref(i64 %table, i32 %c, i1 zeroext %is_uniprop) #0 {
entry:
  %table.addr = alloca i64, align 8
  %c.addr = alloca i32, align 4
  %is_uniprop.addr = alloca i8, align 1
  %tbl = alloca %struct.Lisp_Sub_Char_Table*, align 8
  %val = alloca i64, align 8
  %idx = alloca i32, align 4
  store i64 %table, i64* %table.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  %frombool = zext i1 %is_uniprop to i8
  store i8 %frombool, i8* %is_uniprop.addr, align 1
  %0 = load i64, i64* %table.addr, align 8
  %call = call %struct.Lisp_Sub_Char_Table* @XSUB_CHAR_TABLE(i64 %0)
  store %struct.Lisp_Sub_Char_Table* %call, %struct.Lisp_Sub_Char_Table** %tbl, align 8
  %1 = load i32, i32* %c.addr, align 4
  %2 = load %struct.Lisp_Sub_Char_Table*, %struct.Lisp_Sub_Char_Table** %tbl, align 8
  %min_char = getelementptr inbounds %struct.Lisp_Sub_Char_Table, %struct.Lisp_Sub_Char_Table* %2, i32 0, i32 2
  %3 = load i32, i32* %min_char, align 4
  %sub = sub nsw i32 %1, %3
  %4 = load %struct.Lisp_Sub_Char_Table*, %struct.Lisp_Sub_Char_Table** %tbl, align 8
  %depth = getelementptr inbounds %struct.Lisp_Sub_Char_Table, %struct.Lisp_Sub_Char_Table* %4, i32 0, i32 1
  %5 = load i32, i32* %depth, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* @chartab_bits, i32 0, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %shr = ashr i32 %sub, %6
  store i32 %shr, i32* %idx, align 4
  %7 = load i32, i32* %idx, align 4
  %idxprom1 = sext i32 %7 to i64
  %8 = load %struct.Lisp_Sub_Char_Table*, %struct.Lisp_Sub_Char_Table** %tbl, align 8
  %contents = getelementptr inbounds %struct.Lisp_Sub_Char_Table, %struct.Lisp_Sub_Char_Table* %8, i32 0, i32 3
  %arrayidx2 = getelementptr inbounds [0 x i64], [0 x i64]* %contents, i32 0, i64 %idxprom1
  %9 = load i64, i64* %arrayidx2, align 8
  store i64 %9, i64* %val, align 8
  %10 = load i8, i8* %is_uniprop.addr, align 1
  %tobool = trunc i8 %10 to i1
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %11 = load i64, i64* %val, align 8
  %call3 = call zeroext i1 @STRINGP(i64 %11)
  br i1 %call3, label %land.lhs.true.4, label %if.end

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %12 = load i64, i64* %val, align 8
  %call5 = call i64 @SCHARS(i64 %12)
  %cmp = icmp sgt i64 %call5, 0
  br i1 %cmp, label %land.lhs.true.6, label %if.end

land.lhs.true.6:                                  ; preds = %land.lhs.true.4
  %13 = load i64, i64* %val, align 8
  %call7 = call zeroext i8 @SREF(i64 %13, i64 0)
  %conv = zext i8 %call7 to i32
  %cmp8 = icmp eq i32 %conv, 1
  br i1 %cmp8, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.6
  %14 = load i64, i64* %val, align 8
  %call10 = call zeroext i8 @SREF(i64 %14, i64 0)
  %conv11 = zext i8 %call10 to i32
  %cmp12 = icmp eq i32 %conv11, 2
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true.6
  %15 = load i64, i64* %table.addr, align 8
  %16 = load i32, i32* %idx, align 4
  %call14 = call i64 @uniprop_table_uncompress(i64 %15, i32 %16)
  store i64 %call14, i64* %val, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %land.lhs.true.4, %land.lhs.true, %entry
  %17 = load i64, i64* %val, align 8
  %call15 = call zeroext i1 @SUB_CHAR_TABLE_P(i64 %17)
  br i1 %call15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %if.end
  %18 = load i64, i64* %val, align 8
  %19 = load i32, i32* %c.addr, align 4
  %20 = load i8, i8* %is_uniprop.addr, align 1
  %tobool17 = trunc i8 %20 to i1
  %call18 = call i64 @sub_char_table_ref(i64 %18, i32 %19, i1 zeroext %tobool17)
  store i64 %call18, i64* %val, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %if.end
  %21 = load i64, i64* %val, align 8
  ret i64 %21
}

declare i32 @CHAR_TABLE_EXTRA_SLOTS(%struct.Lisp_Char_Table*) #2

declare zeroext i1 @CHAR_TABLE_P(i64) #2

; Function Attrs: nounwind uwtable
define i64 @char_table_ref_and_range(i64 %table, i32 %c, i32* %from, i32* %to) #0 {
entry:
  %table.addr = alloca i64, align 8
  %c.addr = alloca i32, align 4
  %from.addr = alloca i32*, align 8
  %to.addr = alloca i32*, align 8
  %tbl = alloca %struct.Lisp_Char_Table*, align 8
  %chartab_idx = alloca i32, align 4
  %idx = alloca i32, align 4
  %val = alloca i64, align 8
  %is_uniprop = alloca i8, align 1
  %this_val = alloca i64, align 8
  %this_val88 = alloca i64, align 8
  store i64 %table, i64* %table.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  store i32* %from, i32** %from.addr, align 8
  store i32* %to, i32** %to.addr, align 8
  %0 = load i64, i64* %table.addr, align 8
  %call = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %0)
  store %struct.Lisp_Char_Table* %call, %struct.Lisp_Char_Table** %tbl, align 8
  %1 = load i32, i32* %c.addr, align 4
  %sub = sub nsw i32 %1, 0
  %2 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @chartab_bits, i32 0, i64 0), align 4
  %shr = ashr i32 %sub, %2
  store i32 %shr, i32* %chartab_idx, align 4
  %3 = load i64, i64* %table.addr, align 8
  %call1 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %3)
  %purpose = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call1, i32 0, i32 3
  %4 = load i64, i64* %purpose, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 254)
  %cmp = icmp eq i64 %4, %call2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %5 = load i64, i64* %table.addr, align 8
  %call3 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %5)
  %call4 = call i32 @CHAR_TABLE_EXTRA_SLOTS(%struct.Lisp_Char_Table* %call3)
  %cmp5 = icmp eq i32 %call4, 5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ %cmp5, %land.rhs ]
  %frombool = zext i1 %6 to i8
  store i8 %frombool, i8* %is_uniprop, align 1
  %7 = load i32, i32* %chartab_idx, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %tbl, align 8
  %contents = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %8, i32 0, i32 5
  %arrayidx = getelementptr inbounds [64 x i64], [64 x i64]* %contents, i32 0, i64 %idxprom
  %9 = load i64, i64* %arrayidx, align 8
  store i64 %9, i64* %val, align 8
  %10 = load i32*, i32** %from.addr, align 8
  %11 = load i32, i32* %10, align 4
  %cmp6 = icmp slt i32 %11, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  %12 = load i32*, i32** %from.addr, align 8
  store i32 0, i32* %12, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %13 = load i32*, i32** %to.addr, align 8
  %14 = load i32, i32* %13, align 4
  %cmp7 = icmp slt i32 %14, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %15 = load i32*, i32** %to.addr, align 8
  store i32 4194303, i32* %15, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  %16 = load i8, i8* %is_uniprop, align 1
  %tobool = trunc i8 %16 to i1
  br i1 %tobool, label %land.lhs.true, label %if.end.24

land.lhs.true:                                    ; preds = %if.end.9
  %17 = load i64, i64* %val, align 8
  %call10 = call zeroext i1 @STRINGP(i64 %17)
  br i1 %call10, label %land.lhs.true.11, label %if.end.24

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %18 = load i64, i64* %val, align 8
  %call12 = call i64 @SCHARS(i64 %18)
  %cmp13 = icmp sgt i64 %call12, 0
  br i1 %cmp13, label %land.lhs.true.14, label %if.end.24

land.lhs.true.14:                                 ; preds = %land.lhs.true.11
  %19 = load i64, i64* %val, align 8
  %call15 = call zeroext i8 @SREF(i64 %19, i64 0)
  %conv = zext i8 %call15 to i32
  %cmp16 = icmp eq i32 %conv, 1
  br i1 %cmp16, label %if.then.22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.14
  %20 = load i64, i64* %val, align 8
  %call18 = call zeroext i8 @SREF(i64 %20, i64 0)
  %conv19 = zext i8 %call18 to i32
  %cmp20 = icmp eq i32 %conv19, 2
  br i1 %cmp20, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %lor.lhs.false, %land.lhs.true.14
  %21 = load i64, i64* %table.addr, align 8
  %22 = load i32, i32* %chartab_idx, align 4
  %call23 = call i64 @uniprop_table_uncompress(i64 %21, i32 %22)
  store i64 %call23, i64* %val, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %lor.lhs.false, %land.lhs.true.11, %land.lhs.true, %if.end.9
  %23 = load i64, i64* %val, align 8
  %call25 = call zeroext i1 @SUB_CHAR_TABLE_P(i64 %23)
  br i1 %call25, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %if.end.24
  %24 = load i64, i64* %val, align 8
  %25 = load i32, i32* %c.addr, align 4
  %26 = load i32*, i32** %from.addr, align 8
  %27 = load i32*, i32** %to.addr, align 8
  %28 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %tbl, align 8
  %defalt = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %28, i32 0, i32 1
  %29 = load i64, i64* %defalt, align 8
  %30 = load i8, i8* %is_uniprop, align 1
  %tobool27 = trunc i8 %30 to i1
  %call28 = call i64 @sub_char_table_ref_and_range(i64 %24, i32 %25, i32* %26, i32* %27, i64 %29, i1 zeroext %tobool27)
  store i64 %call28, i64* %val, align 8
  br label %if.end.35

if.else:                                          ; preds = %if.end.24
  %31 = load i64, i64* %val, align 8
  %call29 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp30 = icmp eq i64 %31, %call29
  br i1 %cmp30, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %if.else
  %32 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %tbl, align 8
  %defalt33 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %32, i32 0, i32 1
  %33 = load i64, i64* %defalt33, align 8
  store i64 %33, i64* %val, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %if.else
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.26
  %34 = load i32, i32* %chartab_idx, align 4
  store i32 %34, i32* %idx, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.81, %if.end.35
  %35 = load i32*, i32** %from.addr, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %idx, align 4
  %38 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @chartab_chars, i32 0, i64 0), align 4
  %mul = mul nsw i32 %37, %38
  %cmp36 = icmp slt i32 %36, %mul
  br i1 %cmp36, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %39 = load i32, i32* %idx, align 4
  %40 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @chartab_chars, i32 0, i64 0), align 4
  %mul38 = mul nsw i32 %39, %40
  %sub39 = sub nsw i32 %mul38, 1
  store i32 %sub39, i32* %c.addr, align 4
  %41 = load i32, i32* %idx, align 4
  %dec = add nsw i32 %41, -1
  store i32 %dec, i32* %idx, align 4
  %42 = load i32, i32* %idx, align 4
  %idxprom40 = sext i32 %42 to i64
  %43 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %tbl, align 8
  %contents41 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %43, i32 0, i32 5
  %arrayidx42 = getelementptr inbounds [64 x i64], [64 x i64]* %contents41, i32 0, i64 %idxprom40
  %44 = load i64, i64* %arrayidx42, align 8
  store i64 %44, i64* %this_val, align 8
  %45 = load i8, i8* %is_uniprop, align 1
  %tobool43 = trunc i8 %45 to i1
  br i1 %tobool43, label %land.lhs.true.45, label %if.end.64

land.lhs.true.45:                                 ; preds = %while.body
  %46 = load i64, i64* %this_val, align 8
  %call46 = call zeroext i1 @STRINGP(i64 %46)
  br i1 %call46, label %land.lhs.true.48, label %if.end.64

land.lhs.true.48:                                 ; preds = %land.lhs.true.45
  %47 = load i64, i64* %this_val, align 8
  %call49 = call i64 @SCHARS(i64 %47)
  %cmp50 = icmp sgt i64 %call49, 0
  br i1 %cmp50, label %land.lhs.true.52, label %if.end.64

land.lhs.true.52:                                 ; preds = %land.lhs.true.48
  %48 = load i64, i64* %this_val, align 8
  %call53 = call zeroext i8 @SREF(i64 %48, i64 0)
  %conv54 = zext i8 %call53 to i32
  %cmp55 = icmp eq i32 %conv54, 1
  br i1 %cmp55, label %if.then.62, label %lor.lhs.false.57

lor.lhs.false.57:                                 ; preds = %land.lhs.true.52
  %49 = load i64, i64* %this_val, align 8
  %call58 = call zeroext i8 @SREF(i64 %49, i64 0)
  %conv59 = zext i8 %call58 to i32
  %cmp60 = icmp eq i32 %conv59, 2
  br i1 %cmp60, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %lor.lhs.false.57, %land.lhs.true.52
  %50 = load i64, i64* %table.addr, align 8
  %51 = load i32, i32* %idx, align 4
  %call63 = call i64 @uniprop_table_uncompress(i64 %50, i32 %51)
  store i64 %call63, i64* %this_val, align 8
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.62, %lor.lhs.false.57, %land.lhs.true.48, %land.lhs.true.45, %while.body
  %52 = load i64, i64* %this_val, align 8
  %call65 = call zeroext i1 @SUB_CHAR_TABLE_P(i64 %52)
  br i1 %call65, label %if.then.66, label %if.else.70

if.then.66:                                       ; preds = %if.end.64
  %53 = load i64, i64* %this_val, align 8
  %54 = load i32, i32* %c.addr, align 4
  %55 = load i32*, i32** %from.addr, align 8
  %56 = load i32*, i32** %to.addr, align 8
  %57 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %tbl, align 8
  %defalt67 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %57, i32 0, i32 1
  %58 = load i64, i64* %defalt67, align 8
  %59 = load i8, i8* %is_uniprop, align 1
  %tobool68 = trunc i8 %59 to i1
  %call69 = call i64 @sub_char_table_ref_and_range(i64 %53, i32 %54, i32* %55, i32* %56, i64 %58, i1 zeroext %tobool68)
  store i64 %call69, i64* %this_val, align 8
  br label %if.end.77

if.else.70:                                       ; preds = %if.end.64
  %60 = load i64, i64* %this_val, align 8
  %call71 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp72 = icmp eq i64 %60, %call71
  br i1 %cmp72, label %if.then.74, label %if.end.76

if.then.74:                                       ; preds = %if.else.70
  %61 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %tbl, align 8
  %defalt75 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %61, i32 0, i32 1
  %62 = load i64, i64* %defalt75, align 8
  store i64 %62, i64* %this_val, align 8
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.74, %if.else.70
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.then.66
  %63 = load i64, i64* %this_val, align 8
  %64 = load i64, i64* %val, align 8
  %cmp78 = icmp eq i64 %63, %64
  br i1 %cmp78, label %if.end.81, label %if.then.80

if.then.80:                                       ; preds = %if.end.77
  %65 = load i32, i32* %c.addr, align 4
  %add = add nsw i32 %65, 1
  %66 = load i32*, i32** %from.addr, align 8
  store i32 %add, i32* %66, align 4
  br label %while.end

if.end.81:                                        ; preds = %if.end.77
  br label %while.cond

while.end:                                        ; preds = %if.then.80, %while.cond
  br label %while.cond.82

while.cond.82:                                    ; preds = %if.end.132, %while.end
  %67 = load i32*, i32** %to.addr, align 8
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %chartab_idx, align 4
  %add83 = add nsw i32 %69, 1
  %70 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @chartab_chars, i32 0, i64 0), align 4
  %mul84 = mul nsw i32 %add83, %70
  %cmp85 = icmp sge i32 %68, %mul84
  br i1 %cmp85, label %while.body.87, label %while.end.133

while.body.87:                                    ; preds = %while.cond.82
  %71 = load i32, i32* %chartab_idx, align 4
  %inc = add nsw i32 %71, 1
  store i32 %inc, i32* %chartab_idx, align 4
  %72 = load i32, i32* %chartab_idx, align 4
  %73 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @chartab_chars, i32 0, i64 0), align 4
  %mul89 = mul nsw i32 %72, %73
  store i32 %mul89, i32* %c.addr, align 4
  %74 = load i32, i32* %chartab_idx, align 4
  %idxprom90 = sext i32 %74 to i64
  %75 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %tbl, align 8
  %contents91 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %75, i32 0, i32 5
  %arrayidx92 = getelementptr inbounds [64 x i64], [64 x i64]* %contents91, i32 0, i64 %idxprom90
  %76 = load i64, i64* %arrayidx92, align 8
  store i64 %76, i64* %this_val88, align 8
  %77 = load i8, i8* %is_uniprop, align 1
  %tobool93 = trunc i8 %77 to i1
  br i1 %tobool93, label %land.lhs.true.95, label %if.end.114

land.lhs.true.95:                                 ; preds = %while.body.87
  %78 = load i64, i64* %this_val88, align 8
  %call96 = call zeroext i1 @STRINGP(i64 %78)
  br i1 %call96, label %land.lhs.true.98, label %if.end.114

land.lhs.true.98:                                 ; preds = %land.lhs.true.95
  %79 = load i64, i64* %this_val88, align 8
  %call99 = call i64 @SCHARS(i64 %79)
  %cmp100 = icmp sgt i64 %call99, 0
  br i1 %cmp100, label %land.lhs.true.102, label %if.end.114

land.lhs.true.102:                                ; preds = %land.lhs.true.98
  %80 = load i64, i64* %this_val88, align 8
  %call103 = call zeroext i8 @SREF(i64 %80, i64 0)
  %conv104 = zext i8 %call103 to i32
  %cmp105 = icmp eq i32 %conv104, 1
  br i1 %cmp105, label %if.then.112, label %lor.lhs.false.107

lor.lhs.false.107:                                ; preds = %land.lhs.true.102
  %81 = load i64, i64* %this_val88, align 8
  %call108 = call zeroext i8 @SREF(i64 %81, i64 0)
  %conv109 = zext i8 %call108 to i32
  %cmp110 = icmp eq i32 %conv109, 2
  br i1 %cmp110, label %if.then.112, label %if.end.114

if.then.112:                                      ; preds = %lor.lhs.false.107, %land.lhs.true.102
  %82 = load i64, i64* %table.addr, align 8
  %83 = load i32, i32* %chartab_idx, align 4
  %call113 = call i64 @uniprop_table_uncompress(i64 %82, i32 %83)
  store i64 %call113, i64* %this_val88, align 8
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.112, %lor.lhs.false.107, %land.lhs.true.98, %land.lhs.true.95, %while.body.87
  %84 = load i64, i64* %this_val88, align 8
  %call115 = call zeroext i1 @SUB_CHAR_TABLE_P(i64 %84)
  br i1 %call115, label %if.then.116, label %if.else.120

if.then.116:                                      ; preds = %if.end.114
  %85 = load i64, i64* %this_val88, align 8
  %86 = load i32, i32* %c.addr, align 4
  %87 = load i32*, i32** %from.addr, align 8
  %88 = load i32*, i32** %to.addr, align 8
  %89 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %tbl, align 8
  %defalt117 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %89, i32 0, i32 1
  %90 = load i64, i64* %defalt117, align 8
  %91 = load i8, i8* %is_uniprop, align 1
  %tobool118 = trunc i8 %91 to i1
  %call119 = call i64 @sub_char_table_ref_and_range(i64 %85, i32 %86, i32* %87, i32* %88, i64 %90, i1 zeroext %tobool118)
  store i64 %call119, i64* %this_val88, align 8
  br label %if.end.127

if.else.120:                                      ; preds = %if.end.114
  %92 = load i64, i64* %this_val88, align 8
  %call121 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp122 = icmp eq i64 %92, %call121
  br i1 %cmp122, label %if.then.124, label %if.end.126

if.then.124:                                      ; preds = %if.else.120
  %93 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %tbl, align 8
  %defalt125 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %93, i32 0, i32 1
  %94 = load i64, i64* %defalt125, align 8
  store i64 %94, i64* %this_val88, align 8
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.124, %if.else.120
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126, %if.then.116
  %95 = load i64, i64* %this_val88, align 8
  %96 = load i64, i64* %val, align 8
  %cmp128 = icmp eq i64 %95, %96
  br i1 %cmp128, label %if.end.132, label %if.then.130

if.then.130:                                      ; preds = %if.end.127
  %97 = load i32, i32* %c.addr, align 4
  %sub131 = sub nsw i32 %97, 1
  %98 = load i32*, i32** %to.addr, align 8
  store i32 %sub131, i32* %98, align 4
  br label %while.end.133

if.end.132:                                       ; preds = %if.end.127
  br label %while.cond.82

while.end.133:                                    ; preds = %if.then.130, %while.cond.82
  %99 = load i64, i64* %val, align 8
  ret i64 %99
}

declare zeroext i1 @STRINGP(i64) #2

declare i64 @SCHARS(i64) #2

declare zeroext i8 @SREF(i64, i64) #2

; Function Attrs: nounwind uwtable
define internal i64 @uniprop_table_uncompress(i64 %table, i32 %idx) #0 {
entry:
  %table.addr = alloca i64, align 8
  %idx.addr = alloca i32, align 4
  %val = alloca i64, align 8
  %min_char = alloca i32, align 4
  %sub = alloca i64, align 8
  %p = alloca i8*, align 8
  %pend = alloca i8*, align 8
  %v = alloca i32, align 4
  %v135 = alloca i32, align 4
  %count = alloca i32, align 4
  %len = alloca i32, align 4
  store i64 %table, i64* %table.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  %0 = load i32, i32* %idx.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i64, i64* %table.addr, align 8
  %call = call %struct.Lisp_Sub_Char_Table* @XSUB_CHAR_TABLE(i64 %1)
  %contents = getelementptr inbounds %struct.Lisp_Sub_Char_Table, %struct.Lisp_Sub_Char_Table* %call, i32 0, i32 3
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* %contents, i32 0, i64 %idxprom
  %2 = load i64, i64* %arrayidx, align 8
  store i64 %2, i64* %val, align 8
  %3 = load i64, i64* %table.addr, align 8
  %call1 = call %struct.Lisp_Sub_Char_Table* @XSUB_CHAR_TABLE(i64 %3)
  %min_char2 = getelementptr inbounds %struct.Lisp_Sub_Char_Table, %struct.Lisp_Sub_Char_Table* %call1, i32 0, i32 2
  %4 = load i32, i32* %min_char2, align 4
  %5 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @chartab_chars, i32 0, i64 2), align 4
  %6 = load i32, i32* %idx.addr, align 4
  %mul = mul nsw i32 %5, %6
  %add = add nsw i32 %4, %mul
  store i32 %add, i32* %min_char, align 4
  %7 = load i32, i32* %min_char, align 4
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %call4 = call i64 @make_sub_char_table(i32 3, i32 %7, i64 %call3)
  store i64 %call4, i64* %sub, align 8
  %8 = load i64, i64* %table.addr, align 8
  %9 = load i32, i32* %idx.addr, align 4
  %conv = sext i32 %9 to i64
  %10 = load i64, i64* %sub, align 8
  call void @set_sub_char_table_contents(i64 %8, i64 %conv, i64 %10)
  %11 = load i64, i64* %val, align 8
  %call5 = call i8* @SDATA(i64 %11)
  store i8* %call5, i8** %p, align 8
  %12 = load i8*, i8** %p, align 8
  %13 = load i64, i64* %val, align 8
  %call6 = call i64 @SBYTES(i64 %13)
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %call6
  store i8* %add.ptr, i8** %pend, align 8
  %14 = load i8*, i8** %p, align 8
  %15 = load i8, i8* %14, align 1
  %conv7 = zext i8 %15 to i32
  %cmp = icmp eq i32 %conv7, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %16 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %17 = load i8*, i8** %p, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %17, i64 0
  %18 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %18 to i32
  %and = and i32 %conv10, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %19 = load i8*, i8** %p, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr11, i8** %p, align 8
  %20 = load i8, i8* %19, align 1
  %conv12 = zext i8 %20 to i32
  br label %cond.end.55

cond.false:                                       ; preds = %if.then
  %21 = load i8*, i8** %p, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %21, i64 0
  %22 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %22 to i32
  %and15 = and i32 %conv14, 32
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %cond.false.30, label %cond.true.17

cond.true.17:                                     ; preds = %cond.false
  %23 = load i8*, i8** %p, align 8
  %add.ptr18 = getelementptr inbounds i8, i8* %23, i64 2
  store i8* %add.ptr18, i8** %p, align 8
  %24 = load i8*, i8** %p, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %24, i64 -2
  %25 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %25 to i32
  %and21 = and i32 %conv20, 31
  %shl = shl i32 %and21, 6
  %26 = load i8*, i8** %p, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %26, i64 -1
  %27 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %27 to i32
  %and24 = and i32 %conv23, 63
  %or = or i32 %shl, %and24
  %28 = load i8*, i8** %p, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %28, i64 -2
  %29 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %29 to i32
  %cmp27 = icmp slt i32 %conv26, 194
  %cond = select i1 %cmp27, i32 4194176, i32 0
  %or29 = or i32 %or, %cond
  br label %cond.end.53

cond.false.30:                                    ; preds = %cond.false
  %30 = load i8*, i8** %p, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %30, i64 0
  %31 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %31 to i32
  %and33 = and i32 %conv32, 16
  %tobool34 = icmp ne i32 %and33, 0
  br i1 %tobool34, label %cond.false.50, label %cond.true.35

cond.true.35:                                     ; preds = %cond.false.30
  %32 = load i8*, i8** %p, align 8
  %add.ptr36 = getelementptr inbounds i8, i8* %32, i64 3
  store i8* %add.ptr36, i8** %p, align 8
  %33 = load i8*, i8** %p, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %33, i64 -3
  %34 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %34 to i32
  %and39 = and i32 %conv38, 15
  %shl40 = shl i32 %and39, 12
  %35 = load i8*, i8** %p, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %35, i64 -2
  %36 = load i8, i8* %arrayidx41, align 1
  %conv42 = zext i8 %36 to i32
  %and43 = and i32 %conv42, 63
  %shl44 = shl i32 %and43, 6
  %or45 = or i32 %shl40, %shl44
  %37 = load i8*, i8** %p, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %37, i64 -1
  %38 = load i8, i8* %arrayidx46, align 1
  %conv47 = zext i8 %38 to i32
  %and48 = and i32 %conv47, 63
  %or49 = or i32 %or45, %and48
  br label %cond.end

cond.false.50:                                    ; preds = %cond.false.30
  %39 = load i8*, i8** %p, align 8
  %call51 = call i32 @string_char(i8* %39, i8** %p, i32* null)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.50, %cond.true.35
  %cond52 = phi i32 [ %or49, %cond.true.35 ], [ %call51, %cond.false.50 ]
  br label %cond.end.53

cond.end.53:                                      ; preds = %cond.end, %cond.true.17
  %cond54 = phi i32 [ %or29, %cond.true.17 ], [ %cond52, %cond.end ]
  br label %cond.end.55

cond.end.55:                                      ; preds = %cond.end.53, %cond.true
  %cond56 = phi i32 [ %conv12, %cond.true ], [ %cond54, %cond.end.53 ]
  store i32 %cond56, i32* %idx.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %cond.end.126, %cond.end.55
  %40 = load i8*, i8** %p, align 8
  %41 = load i8*, i8** %pend, align 8
  %cmp57 = icmp ult i8* %40, %41
  br i1 %cmp57, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %42 = load i32, i32* %idx.addr, align 4
  %43 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @chartab_chars, i32 0, i64 2), align 4
  %cmp59 = icmp slt i32 %42, %43
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %44 = phi i1 [ false, %while.cond ], [ %cmp59, %land.rhs ]
  br i1 %44, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %45 = load i8*, i8** %p, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %45, i64 0
  %46 = load i8, i8* %arrayidx61, align 1
  %conv62 = zext i8 %46 to i32
  %and63 = and i32 %conv62, 128
  %tobool64 = icmp ne i32 %and63, 0
  br i1 %tobool64, label %cond.false.68, label %cond.true.65

cond.true.65:                                     ; preds = %while.body
  %47 = load i8*, i8** %p, align 8
  %incdec.ptr66 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr66, i8** %p, align 8
  %48 = load i8, i8* %47, align 1
  %conv67 = zext i8 %48 to i32
  br label %cond.end.115

cond.false.68:                                    ; preds = %while.body
  %49 = load i8*, i8** %p, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %49, i64 0
  %50 = load i8, i8* %arrayidx69, align 1
  %conv70 = zext i8 %50 to i32
  %and71 = and i32 %conv70, 32
  %tobool72 = icmp ne i32 %and71, 0
  br i1 %tobool72, label %cond.false.89, label %cond.true.73

cond.true.73:                                     ; preds = %cond.false.68
  %51 = load i8*, i8** %p, align 8
  %add.ptr74 = getelementptr inbounds i8, i8* %51, i64 2
  store i8* %add.ptr74, i8** %p, align 8
  %52 = load i8*, i8** %p, align 8
  %arrayidx75 = getelementptr inbounds i8, i8* %52, i64 -2
  %53 = load i8, i8* %arrayidx75, align 1
  %conv76 = zext i8 %53 to i32
  %and77 = and i32 %conv76, 31
  %shl78 = shl i32 %and77, 6
  %54 = load i8*, i8** %p, align 8
  %arrayidx79 = getelementptr inbounds i8, i8* %54, i64 -1
  %55 = load i8, i8* %arrayidx79, align 1
  %conv80 = zext i8 %55 to i32
  %and81 = and i32 %conv80, 63
  %or82 = or i32 %shl78, %and81
  %56 = load i8*, i8** %p, align 8
  %arrayidx83 = getelementptr inbounds i8, i8* %56, i64 -2
  %57 = load i8, i8* %arrayidx83, align 1
  %conv84 = zext i8 %57 to i32
  %cmp85 = icmp slt i32 %conv84, 194
  %cond87 = select i1 %cmp85, i32 4194176, i32 0
  %or88 = or i32 %or82, %cond87
  br label %cond.end.113

cond.false.89:                                    ; preds = %cond.false.68
  %58 = load i8*, i8** %p, align 8
  %arrayidx90 = getelementptr inbounds i8, i8* %58, i64 0
  %59 = load i8, i8* %arrayidx90, align 1
  %conv91 = zext i8 %59 to i32
  %and92 = and i32 %conv91, 16
  %tobool93 = icmp ne i32 %and92, 0
  br i1 %tobool93, label %cond.false.109, label %cond.true.94

cond.true.94:                                     ; preds = %cond.false.89
  %60 = load i8*, i8** %p, align 8
  %add.ptr95 = getelementptr inbounds i8, i8* %60, i64 3
  store i8* %add.ptr95, i8** %p, align 8
  %61 = load i8*, i8** %p, align 8
  %arrayidx96 = getelementptr inbounds i8, i8* %61, i64 -3
  %62 = load i8, i8* %arrayidx96, align 1
  %conv97 = zext i8 %62 to i32
  %and98 = and i32 %conv97, 15
  %shl99 = shl i32 %and98, 12
  %63 = load i8*, i8** %p, align 8
  %arrayidx100 = getelementptr inbounds i8, i8* %63, i64 -2
  %64 = load i8, i8* %arrayidx100, align 1
  %conv101 = zext i8 %64 to i32
  %and102 = and i32 %conv101, 63
  %shl103 = shl i32 %and102, 6
  %or104 = or i32 %shl99, %shl103
  %65 = load i8*, i8** %p, align 8
  %arrayidx105 = getelementptr inbounds i8, i8* %65, i64 -1
  %66 = load i8, i8* %arrayidx105, align 1
  %conv106 = zext i8 %66 to i32
  %and107 = and i32 %conv106, 63
  %or108 = or i32 %or104, %and107
  br label %cond.end.111

cond.false.109:                                   ; preds = %cond.false.89
  %67 = load i8*, i8** %p, align 8
  %call110 = call i32 @string_char(i8* %67, i8** %p, i32* null)
  br label %cond.end.111

cond.end.111:                                     ; preds = %cond.false.109, %cond.true.94
  %cond112 = phi i32 [ %or108, %cond.true.94 ], [ %call110, %cond.false.109 ]
  br label %cond.end.113

cond.end.113:                                     ; preds = %cond.end.111, %cond.true.73
  %cond114 = phi i32 [ %or88, %cond.true.73 ], [ %cond112, %cond.end.111 ]
  br label %cond.end.115

cond.end.115:                                     ; preds = %cond.end.113, %cond.true.65
  %cond116 = phi i32 [ %conv67, %cond.true.65 ], [ %cond114, %cond.end.113 ]
  store i32 %cond116, i32* %v, align 4
  %68 = load i64, i64* %sub, align 8
  %69 = load i32, i32* %idx.addr, align 4
  %inc = add nsw i32 %69, 1
  store i32 %inc, i32* %idx.addr, align 4
  %conv117 = sext i32 %69 to i64
  %70 = load i32, i32* %v, align 4
  %cmp118 = icmp sgt i32 %70, 0
  br i1 %cmp118, label %cond.true.120, label %cond.false.124

cond.true.120:                                    ; preds = %cond.end.115
  %71 = load i32, i32* %v, align 4
  %conv121 = sext i32 %71 to i64
  %shl122 = shl i64 %conv121, 2
  %add123 = add i64 %shl122, 2
  br label %cond.end.126

cond.false.124:                                   ; preds = %cond.end.115
  %call125 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.126

cond.end.126:                                     ; preds = %cond.false.124, %cond.true.120
  %cond127 = phi i64 [ %add123, %cond.true.120 ], [ %call125, %cond.false.124 ]
  call void @set_sub_char_table_contents(i64 %68, i64 %conv117, i64 %cond127)
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end.267

if.else:                                          ; preds = %entry
  %72 = load i8*, i8** %p, align 8
  %73 = load i8, i8* %72, align 1
  %conv128 = zext i8 %73 to i32
  %cmp129 = icmp eq i32 %conv128, 2
  br i1 %cmp129, label %if.then.131, label %if.end.266

if.then.131:                                      ; preds = %if.else
  %74 = load i8*, i8** %p, align 8
  %incdec.ptr132 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %incdec.ptr132, i8** %p, align 8
  store i32 0, i32* %idx.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %while.end.265, %if.then.131
  %75 = load i8*, i8** %p, align 8
  %76 = load i8*, i8** %pend, align 8
  %cmp133 = icmp ult i8* %75, %76
  br i1 %cmp133, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %77 = load i8*, i8** %p, align 8
  %arrayidx136 = getelementptr inbounds i8, i8* %77, i64 0
  %78 = load i8, i8* %arrayidx136, align 1
  %conv137 = zext i8 %78 to i32
  %and138 = and i32 %conv137, 128
  %tobool139 = icmp ne i32 %and138, 0
  br i1 %tobool139, label %cond.false.143, label %cond.true.140

cond.true.140:                                    ; preds = %for.body
  %79 = load i8*, i8** %p, align 8
  %incdec.ptr141 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %incdec.ptr141, i8** %p, align 8
  %80 = load i8, i8* %79, align 1
  %conv142 = zext i8 %80 to i32
  br label %cond.end.190

cond.false.143:                                   ; preds = %for.body
  %81 = load i8*, i8** %p, align 8
  %arrayidx144 = getelementptr inbounds i8, i8* %81, i64 0
  %82 = load i8, i8* %arrayidx144, align 1
  %conv145 = zext i8 %82 to i32
  %and146 = and i32 %conv145, 32
  %tobool147 = icmp ne i32 %and146, 0
  br i1 %tobool147, label %cond.false.164, label %cond.true.148

cond.true.148:                                    ; preds = %cond.false.143
  %83 = load i8*, i8** %p, align 8
  %add.ptr149 = getelementptr inbounds i8, i8* %83, i64 2
  store i8* %add.ptr149, i8** %p, align 8
  %84 = load i8*, i8** %p, align 8
  %arrayidx150 = getelementptr inbounds i8, i8* %84, i64 -2
  %85 = load i8, i8* %arrayidx150, align 1
  %conv151 = zext i8 %85 to i32
  %and152 = and i32 %conv151, 31
  %shl153 = shl i32 %and152, 6
  %86 = load i8*, i8** %p, align 8
  %arrayidx154 = getelementptr inbounds i8, i8* %86, i64 -1
  %87 = load i8, i8* %arrayidx154, align 1
  %conv155 = zext i8 %87 to i32
  %and156 = and i32 %conv155, 63
  %or157 = or i32 %shl153, %and156
  %88 = load i8*, i8** %p, align 8
  %arrayidx158 = getelementptr inbounds i8, i8* %88, i64 -2
  %89 = load i8, i8* %arrayidx158, align 1
  %conv159 = zext i8 %89 to i32
  %cmp160 = icmp slt i32 %conv159, 194
  %cond162 = select i1 %cmp160, i32 4194176, i32 0
  %or163 = or i32 %or157, %cond162
  br label %cond.end.188

cond.false.164:                                   ; preds = %cond.false.143
  %90 = load i8*, i8** %p, align 8
  %arrayidx165 = getelementptr inbounds i8, i8* %90, i64 0
  %91 = load i8, i8* %arrayidx165, align 1
  %conv166 = zext i8 %91 to i32
  %and167 = and i32 %conv166, 16
  %tobool168 = icmp ne i32 %and167, 0
  br i1 %tobool168, label %cond.false.184, label %cond.true.169

cond.true.169:                                    ; preds = %cond.false.164
  %92 = load i8*, i8** %p, align 8
  %add.ptr170 = getelementptr inbounds i8, i8* %92, i64 3
  store i8* %add.ptr170, i8** %p, align 8
  %93 = load i8*, i8** %p, align 8
  %arrayidx171 = getelementptr inbounds i8, i8* %93, i64 -3
  %94 = load i8, i8* %arrayidx171, align 1
  %conv172 = zext i8 %94 to i32
  %and173 = and i32 %conv172, 15
  %shl174 = shl i32 %and173, 12
  %95 = load i8*, i8** %p, align 8
  %arrayidx175 = getelementptr inbounds i8, i8* %95, i64 -2
  %96 = load i8, i8* %arrayidx175, align 1
  %conv176 = zext i8 %96 to i32
  %and177 = and i32 %conv176, 63
  %shl178 = shl i32 %and177, 6
  %or179 = or i32 %shl174, %shl178
  %97 = load i8*, i8** %p, align 8
  %arrayidx180 = getelementptr inbounds i8, i8* %97, i64 -1
  %98 = load i8, i8* %arrayidx180, align 1
  %conv181 = zext i8 %98 to i32
  %and182 = and i32 %conv181, 63
  %or183 = or i32 %or179, %and182
  br label %cond.end.186

cond.false.184:                                   ; preds = %cond.false.164
  %99 = load i8*, i8** %p, align 8
  %call185 = call i32 @string_char(i8* %99, i8** %p, i32* null)
  br label %cond.end.186

cond.end.186:                                     ; preds = %cond.false.184, %cond.true.169
  %cond187 = phi i32 [ %or183, %cond.true.169 ], [ %call185, %cond.false.184 ]
  br label %cond.end.188

cond.end.188:                                     ; preds = %cond.end.186, %cond.true.148
  %cond189 = phi i32 [ %or163, %cond.true.148 ], [ %cond187, %cond.end.186 ]
  br label %cond.end.190

cond.end.190:                                     ; preds = %cond.end.188, %cond.true.140
  %cond191 = phi i32 [ %conv142, %cond.true.140 ], [ %cond189, %cond.end.188 ]
  store i32 %cond191, i32* %v135, align 4
  store i32 1, i32* %count, align 4
  %100 = load i8*, i8** %p, align 8
  %101 = load i8*, i8** %pend, align 8
  %cmp192 = icmp ult i8* %100, %101
  br i1 %cmp192, label %if.then.194, label %if.end.255

if.then.194:                                      ; preds = %cond.end.190
  %102 = load i8*, i8** %p, align 8
  %arrayidx195 = getelementptr inbounds i8, i8* %102, i64 0
  %103 = load i8, i8* %arrayidx195, align 1
  %conv196 = zext i8 %103 to i32
  %and197 = and i32 %conv196, 128
  %tobool198 = icmp ne i32 %and197, 0
  br i1 %tobool198, label %cond.false.202, label %cond.true.199

cond.true.199:                                    ; preds = %if.then.194
  store i32 1, i32* %len, align 4
  %104 = load i8*, i8** %p, align 8
  %arrayidx200 = getelementptr inbounds i8, i8* %104, i64 0
  %105 = load i8, i8* %arrayidx200, align 1
  %conv201 = zext i8 %105 to i32
  br label %cond.end.247

cond.false.202:                                   ; preds = %if.then.194
  %106 = load i8*, i8** %p, align 8
  %arrayidx203 = getelementptr inbounds i8, i8* %106, i64 0
  %107 = load i8, i8* %arrayidx203, align 1
  %conv204 = zext i8 %107 to i32
  %and205 = and i32 %conv204, 32
  %tobool206 = icmp ne i32 %and205, 0
  br i1 %tobool206, label %cond.false.222, label %cond.true.207

cond.true.207:                                    ; preds = %cond.false.202
  store i32 2, i32* %len, align 4
  %108 = load i8*, i8** %p, align 8
  %arrayidx208 = getelementptr inbounds i8, i8* %108, i64 0
  %109 = load i8, i8* %arrayidx208, align 1
  %conv209 = zext i8 %109 to i32
  %and210 = and i32 %conv209, 31
  %shl211 = shl i32 %and210, 6
  %110 = load i8*, i8** %p, align 8
  %arrayidx212 = getelementptr inbounds i8, i8* %110, i64 1
  %111 = load i8, i8* %arrayidx212, align 1
  %conv213 = zext i8 %111 to i32
  %and214 = and i32 %conv213, 63
  %or215 = or i32 %shl211, %and214
  %112 = load i8*, i8** %p, align 8
  %arrayidx216 = getelementptr inbounds i8, i8* %112, i64 0
  %113 = load i8, i8* %arrayidx216, align 1
  %conv217 = zext i8 %113 to i32
  %cmp218 = icmp slt i32 %conv217, 194
  %cond220 = select i1 %cmp218, i32 4194176, i32 0
  %add221 = add nsw i32 %or215, %cond220
  br label %cond.end.245

cond.false.222:                                   ; preds = %cond.false.202
  %114 = load i8*, i8** %p, align 8
  %arrayidx223 = getelementptr inbounds i8, i8* %114, i64 0
  %115 = load i8, i8* %arrayidx223, align 1
  %conv224 = zext i8 %115 to i32
  %and225 = and i32 %conv224, 16
  %tobool226 = icmp ne i32 %and225, 0
  br i1 %tobool226, label %cond.false.241, label %cond.true.227

cond.true.227:                                    ; preds = %cond.false.222
  store i32 3, i32* %len, align 4
  %116 = load i8*, i8** %p, align 8
  %arrayidx228 = getelementptr inbounds i8, i8* %116, i64 0
  %117 = load i8, i8* %arrayidx228, align 1
  %conv229 = zext i8 %117 to i32
  %and230 = and i32 %conv229, 15
  %shl231 = shl i32 %and230, 12
  %118 = load i8*, i8** %p, align 8
  %arrayidx232 = getelementptr inbounds i8, i8* %118, i64 1
  %119 = load i8, i8* %arrayidx232, align 1
  %conv233 = zext i8 %119 to i32
  %and234 = and i32 %conv233, 63
  %shl235 = shl i32 %and234, 6
  %or236 = or i32 %shl231, %shl235
  %120 = load i8*, i8** %p, align 8
  %arrayidx237 = getelementptr inbounds i8, i8* %120, i64 2
  %121 = load i8, i8* %arrayidx237, align 1
  %conv238 = zext i8 %121 to i32
  %and239 = and i32 %conv238, 63
  %or240 = or i32 %or236, %and239
  br label %cond.end.243

cond.false.241:                                   ; preds = %cond.false.222
  %122 = load i8*, i8** %p, align 8
  %call242 = call i32 @string_char(i8* %122, i8** null, i32* %len)
  br label %cond.end.243

cond.end.243:                                     ; preds = %cond.false.241, %cond.true.227
  %cond244 = phi i32 [ %or240, %cond.true.227 ], [ %call242, %cond.false.241 ]
  br label %cond.end.245

cond.end.245:                                     ; preds = %cond.end.243, %cond.true.207
  %cond246 = phi i32 [ %add221, %cond.true.207 ], [ %cond244, %cond.end.243 ]
  br label %cond.end.247

cond.end.247:                                     ; preds = %cond.end.245, %cond.true.199
  %cond248 = phi i32 [ %conv201, %cond.true.199 ], [ %cond246, %cond.end.245 ]
  store i32 %cond248, i32* %count, align 4
  %123 = load i32, i32* %count, align 4
  %cmp249 = icmp slt i32 %123, 128
  br i1 %cmp249, label %if.then.251, label %if.else.252

if.then.251:                                      ; preds = %cond.end.247
  store i32 1, i32* %count, align 4
  br label %if.end

if.else.252:                                      ; preds = %cond.end.247
  %124 = load i32, i32* %count, align 4
  %sub253 = sub nsw i32 %124, 128
  store i32 %sub253, i32* %count, align 4
  %125 = load i32, i32* %len, align 4
  %126 = load i8*, i8** %p, align 8
  %idx.ext = sext i32 %125 to i64
  %add.ptr254 = getelementptr inbounds i8, i8* %126, i64 %idx.ext
  store i8* %add.ptr254, i8** %p, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.252, %if.then.251
  br label %if.end.255

if.end.255:                                       ; preds = %if.end, %cond.end.190
  br label %while.cond.256

while.cond.256:                                   ; preds = %while.body.259, %if.end.255
  %127 = load i32, i32* %count, align 4
  %dec = add nsw i32 %127, -1
  store i32 %dec, i32* %count, align 4
  %cmp257 = icmp sgt i32 %127, 0
  br i1 %cmp257, label %while.body.259, label %while.end.265

while.body.259:                                   ; preds = %while.cond.256
  %128 = load i64, i64* %sub, align 8
  %129 = load i32, i32* %idx.addr, align 4
  %inc260 = add nsw i32 %129, 1
  store i32 %inc260, i32* %idx.addr, align 4
  %conv261 = sext i32 %129 to i64
  %130 = load i32, i32* %v135, align 4
  %conv262 = sext i32 %130 to i64
  %shl263 = shl i64 %conv262, 2
  %add264 = add i64 %shl263, 2
  call void @set_sub_char_table_contents(i64 %128, i64 %conv261, i64 %add264)
  br label %while.cond.256

while.end.265:                                    ; preds = %while.cond.256
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.266

if.end.266:                                       ; preds = %for.end, %if.else
  br label %if.end.267

if.end.267:                                       ; preds = %if.end.266, %while.end
  %131 = load i64, i64* %sub, align 8
  ret i64 %131
}

; Function Attrs: nounwind uwtable
define internal i64 @sub_char_table_ref_and_range(i64 %table, i32 %c, i32* %from, i32* %to, i64 %defalt, i1 zeroext %is_uniprop) #0 {
entry:
  %table.addr = alloca i64, align 8
  %c.addr = alloca i32, align 4
  %from.addr = alloca i32*, align 8
  %to.addr = alloca i32*, align 8
  %defalt.addr = alloca i64, align 8
  %is_uniprop.addr = alloca i8, align 1
  %tbl = alloca %struct.Lisp_Sub_Char_Table*, align 8
  %depth = alloca i32, align 4
  %min_char = alloca i32, align 4
  %chartab_idx = alloca i32, align 4
  %idx = alloca i32, align 4
  %val = alloca i64, align 8
  %this_val = alloca i64, align 8
  %this_val95 = alloca i64, align 8
  store i64 %table, i64* %table.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  store i32* %from, i32** %from.addr, align 8
  store i32* %to, i32** %to.addr, align 8
  store i64 %defalt, i64* %defalt.addr, align 8
  %frombool = zext i1 %is_uniprop to i8
  store i8 %frombool, i8* %is_uniprop.addr, align 1
  %0 = load i64, i64* %table.addr, align 8
  %call = call %struct.Lisp_Sub_Char_Table* @XSUB_CHAR_TABLE(i64 %0)
  store %struct.Lisp_Sub_Char_Table* %call, %struct.Lisp_Sub_Char_Table** %tbl, align 8
  %1 = load %struct.Lisp_Sub_Char_Table*, %struct.Lisp_Sub_Char_Table** %tbl, align 8
  %depth1 = getelementptr inbounds %struct.Lisp_Sub_Char_Table, %struct.Lisp_Sub_Char_Table* %1, i32 0, i32 1
  %2 = load i32, i32* %depth1, align 4
  store i32 %2, i32* %depth, align 4
  %3 = load %struct.Lisp_Sub_Char_Table*, %struct.Lisp_Sub_Char_Table** %tbl, align 8
  %min_char2 = getelementptr inbounds %struct.Lisp_Sub_Char_Table, %struct.Lisp_Sub_Char_Table* %3, i32 0, i32 2
  %4 = load i32, i32* %min_char2, align 4
  store i32 %4, i32* %min_char, align 4
  %5 = load i32, i32* %c.addr, align 4
  %6 = load i32, i32* %min_char, align 4
  %sub = sub nsw i32 %5, %6
  %7 = load i32, i32* %depth, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* @chartab_bits, i32 0, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  %shr = ashr i32 %sub, %8
  store i32 %shr, i32* %chartab_idx, align 4
  %9 = load i32, i32* %chartab_idx, align 4
  %idxprom3 = sext i32 %9 to i64
  %10 = load %struct.Lisp_Sub_Char_Table*, %struct.Lisp_Sub_Char_Table** %tbl, align 8
  %contents = getelementptr inbounds %struct.Lisp_Sub_Char_Table, %struct.Lisp_Sub_Char_Table* %10, i32 0, i32 3
  %arrayidx4 = getelementptr inbounds [0 x i64], [0 x i64]* %contents, i32 0, i64 %idxprom3
  %11 = load i64, i64* %arrayidx4, align 8
  store i64 %11, i64* %val, align 8
  %12 = load i8, i8* %is_uniprop.addr, align 1
  %tobool = trunc i8 %12 to i1
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %13 = load i64, i64* %val, align 8
  %call5 = call zeroext i1 @STRINGP(i64 %13)
  br i1 %call5, label %land.lhs.true.6, label %if.end

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %14 = load i64, i64* %val, align 8
  %call7 = call i64 @SCHARS(i64 %14)
  %cmp = icmp sgt i64 %call7, 0
  br i1 %cmp, label %land.lhs.true.8, label %if.end

land.lhs.true.8:                                  ; preds = %land.lhs.true.6
  %15 = load i64, i64* %val, align 8
  %call9 = call zeroext i8 @SREF(i64 %15, i64 0)
  %conv = zext i8 %call9 to i32
  %cmp10 = icmp eq i32 %conv, 1
  br i1 %cmp10, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.8
  %16 = load i64, i64* %val, align 8
  %call12 = call zeroext i8 @SREF(i64 %16, i64 0)
  %conv13 = zext i8 %call12 to i32
  %cmp14 = icmp eq i32 %conv13, 2
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true.8
  %17 = load i64, i64* %table.addr, align 8
  %18 = load i32, i32* %chartab_idx, align 4
  %call16 = call i64 @uniprop_table_uncompress(i64 %17, i32 %18)
  store i64 %call16, i64* %val, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %land.lhs.true.6, %land.lhs.true, %entry
  %19 = load i64, i64* %val, align 8
  %call17 = call zeroext i1 @SUB_CHAR_TABLE_P(i64 %19)
  br i1 %call17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.end
  %20 = load i64, i64* %val, align 8
  %21 = load i32, i32* %c.addr, align 4
  %22 = load i32*, i32** %from.addr, align 8
  %23 = load i32*, i32** %to.addr, align 8
  %24 = load i64, i64* %defalt.addr, align 8
  %25 = load i8, i8* %is_uniprop.addr, align 1
  %tobool19 = trunc i8 %25 to i1
  %call20 = call i64 @sub_char_table_ref_and_range(i64 %20, i32 %21, i32* %22, i32* %23, i64 %24, i1 zeroext %tobool19)
  store i64 %call20, i64* %val, align 8
  br label %if.end.26

if.else:                                          ; preds = %if.end
  %26 = load i64, i64* %val, align 8
  %call21 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp22 = icmp eq i64 %26, %call21
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.else
  %27 = load i64, i64* %defalt.addr, align 8
  store i64 %27, i64* %val, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.else
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.18
  %28 = load i32, i32* %chartab_idx, align 4
  store i32 %28, i32* %idx, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.78, %if.end.26
  %29 = load i32, i32* %idx, align 4
  %cmp27 = icmp sgt i32 %29, 0
  br i1 %cmp27, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %30 = load i32*, i32** %from.addr, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %min_char, align 4
  %33 = load i32, i32* %idx, align 4
  %34 = load i32, i32* %depth, align 4
  %idxprom29 = sext i32 %34 to i64
  %arrayidx30 = getelementptr inbounds [4 x i32], [4 x i32]* @chartab_chars, i32 0, i64 %idxprom29
  %35 = load i32, i32* %arrayidx30, align 4
  %mul = mul nsw i32 %33, %35
  %add = add nsw i32 %32, %mul
  %cmp31 = icmp slt i32 %31, %add
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %36 = phi i1 [ false, %while.cond ], [ %cmp31, %land.rhs ]
  br i1 %36, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %37 = load i32, i32* %min_char, align 4
  %38 = load i32, i32* %idx, align 4
  %39 = load i32, i32* %depth, align 4
  %idxprom33 = sext i32 %39 to i64
  %arrayidx34 = getelementptr inbounds [4 x i32], [4 x i32]* @chartab_chars, i32 0, i64 %idxprom33
  %40 = load i32, i32* %arrayidx34, align 4
  %mul35 = mul nsw i32 %38, %40
  %add36 = add nsw i32 %37, %mul35
  %sub37 = sub nsw i32 %add36, 1
  store i32 %sub37, i32* %c.addr, align 4
  %41 = load i32, i32* %idx, align 4
  %dec = add nsw i32 %41, -1
  store i32 %dec, i32* %idx, align 4
  %42 = load i32, i32* %idx, align 4
  %idxprom38 = sext i32 %42 to i64
  %43 = load %struct.Lisp_Sub_Char_Table*, %struct.Lisp_Sub_Char_Table** %tbl, align 8
  %contents39 = getelementptr inbounds %struct.Lisp_Sub_Char_Table, %struct.Lisp_Sub_Char_Table* %43, i32 0, i32 3
  %arrayidx40 = getelementptr inbounds [0 x i64], [0 x i64]* %contents39, i32 0, i64 %idxprom38
  %44 = load i64, i64* %arrayidx40, align 8
  store i64 %44, i64* %this_val, align 8
  %45 = load i8, i8* %is_uniprop.addr, align 1
  %tobool41 = trunc i8 %45 to i1
  br i1 %tobool41, label %land.lhs.true.43, label %if.end.62

land.lhs.true.43:                                 ; preds = %while.body
  %46 = load i64, i64* %this_val, align 8
  %call44 = call zeroext i1 @STRINGP(i64 %46)
  br i1 %call44, label %land.lhs.true.46, label %if.end.62

land.lhs.true.46:                                 ; preds = %land.lhs.true.43
  %47 = load i64, i64* %this_val, align 8
  %call47 = call i64 @SCHARS(i64 %47)
  %cmp48 = icmp sgt i64 %call47, 0
  br i1 %cmp48, label %land.lhs.true.50, label %if.end.62

land.lhs.true.50:                                 ; preds = %land.lhs.true.46
  %48 = load i64, i64* %this_val, align 8
  %call51 = call zeroext i8 @SREF(i64 %48, i64 0)
  %conv52 = zext i8 %call51 to i32
  %cmp53 = icmp eq i32 %conv52, 1
  br i1 %cmp53, label %if.then.60, label %lor.lhs.false.55

lor.lhs.false.55:                                 ; preds = %land.lhs.true.50
  %49 = load i64, i64* %this_val, align 8
  %call56 = call zeroext i8 @SREF(i64 %49, i64 0)
  %conv57 = zext i8 %call56 to i32
  %cmp58 = icmp eq i32 %conv57, 2
  br i1 %cmp58, label %if.then.60, label %if.end.62

if.then.60:                                       ; preds = %lor.lhs.false.55, %land.lhs.true.50
  %50 = load i64, i64* %table.addr, align 8
  %51 = load i32, i32* %idx, align 4
  %call61 = call i64 @uniprop_table_uncompress(i64 %50, i32 %51)
  store i64 %call61, i64* %this_val, align 8
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.60, %lor.lhs.false.55, %land.lhs.true.46, %land.lhs.true.43, %while.body
  %52 = load i64, i64* %this_val, align 8
  %call63 = call zeroext i1 @SUB_CHAR_TABLE_P(i64 %52)
  br i1 %call63, label %if.then.64, label %if.else.67

if.then.64:                                       ; preds = %if.end.62
  %53 = load i64, i64* %this_val, align 8
  %54 = load i32, i32* %c.addr, align 4
  %55 = load i32*, i32** %from.addr, align 8
  %56 = load i32*, i32** %to.addr, align 8
  %57 = load i64, i64* %defalt.addr, align 8
  %58 = load i8, i8* %is_uniprop.addr, align 1
  %tobool65 = trunc i8 %58 to i1
  %call66 = call i64 @sub_char_table_ref_and_range(i64 %53, i32 %54, i32* %55, i32* %56, i64 %57, i1 zeroext %tobool65)
  store i64 %call66, i64* %this_val, align 8
  br label %if.end.73

if.else.67:                                       ; preds = %if.end.62
  %59 = load i64, i64* %this_val, align 8
  %call68 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp69 = icmp eq i64 %59, %call68
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.else.67
  %60 = load i64, i64* %defalt.addr, align 8
  store i64 %60, i64* %this_val, align 8
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.71, %if.else.67
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.then.64
  %61 = load i64, i64* %this_val, align 8
  %62 = load i64, i64* %val, align 8
  %cmp74 = icmp eq i64 %61, %62
  br i1 %cmp74, label %if.end.78, label %if.then.76

if.then.76:                                       ; preds = %if.end.73
  %63 = load i32, i32* %c.addr, align 4
  %add77 = add nsw i32 %63, 1
  %64 = load i32*, i32** %from.addr, align 8
  store i32 %add77, i32* %64, align 4
  br label %while.end

if.end.78:                                        ; preds = %if.end.73
  br label %while.cond

while.end:                                        ; preds = %if.then.76, %land.end
  br label %while.cond.79

while.cond.79:                                    ; preds = %if.end.136, %while.end
  %65 = load i32, i32* %chartab_idx, align 4
  %add80 = add nsw i32 %65, 1
  %66 = load i32, i32* %depth, align 4
  %idxprom81 = sext i32 %66 to i64
  %arrayidx82 = getelementptr inbounds [4 x i32], [4 x i32]* @chartab_chars, i32 0, i64 %idxprom81
  %67 = load i32, i32* %arrayidx82, align 4
  %mul83 = mul nsw i32 %add80, %67
  store i32 %mul83, i32* %c.addr, align 4
  %68 = load i32, i32* %depth, align 4
  %sub84 = sub nsw i32 %68, 1
  %idxprom85 = sext i32 %sub84 to i64
  %arrayidx86 = getelementptr inbounds [4 x i32], [4 x i32]* @chartab_chars, i32 0, i64 %idxprom85
  %69 = load i32, i32* %arrayidx86, align 4
  %cmp87 = icmp slt i32 %mul83, %69
  br i1 %cmp87, label %land.rhs.89, label %land.end.93

land.rhs.89:                                      ; preds = %while.cond.79
  %70 = load i32, i32* %min_char, align 4
  %71 = load i32, i32* %c.addr, align 4
  %add90 = add nsw i32 %71, %70
  store i32 %add90, i32* %c.addr, align 4
  %72 = load i32*, i32** %to.addr, align 8
  %73 = load i32, i32* %72, align 4
  %cmp91 = icmp sle i32 %add90, %73
  br label %land.end.93

land.end.93:                                      ; preds = %land.rhs.89, %while.cond.79
  %74 = phi i1 [ false, %while.cond.79 ], [ %cmp91, %land.rhs.89 ]
  br i1 %74, label %while.body.94, label %while.end.137

while.body.94:                                    ; preds = %land.end.93
  %75 = load i32, i32* %chartab_idx, align 4
  %inc = add nsw i32 %75, 1
  store i32 %inc, i32* %chartab_idx, align 4
  %76 = load i32, i32* %chartab_idx, align 4
  %idxprom96 = sext i32 %76 to i64
  %77 = load %struct.Lisp_Sub_Char_Table*, %struct.Lisp_Sub_Char_Table** %tbl, align 8
  %contents97 = getelementptr inbounds %struct.Lisp_Sub_Char_Table, %struct.Lisp_Sub_Char_Table* %77, i32 0, i32 3
  %arrayidx98 = getelementptr inbounds [0 x i64], [0 x i64]* %contents97, i32 0, i64 %idxprom96
  %78 = load i64, i64* %arrayidx98, align 8
  store i64 %78, i64* %this_val95, align 8
  %79 = load i8, i8* %is_uniprop.addr, align 1
  %tobool99 = trunc i8 %79 to i1
  br i1 %tobool99, label %land.lhs.true.101, label %if.end.120

land.lhs.true.101:                                ; preds = %while.body.94
  %80 = load i64, i64* %this_val95, align 8
  %call102 = call zeroext i1 @STRINGP(i64 %80)
  br i1 %call102, label %land.lhs.true.104, label %if.end.120

land.lhs.true.104:                                ; preds = %land.lhs.true.101
  %81 = load i64, i64* %this_val95, align 8
  %call105 = call i64 @SCHARS(i64 %81)
  %cmp106 = icmp sgt i64 %call105, 0
  br i1 %cmp106, label %land.lhs.true.108, label %if.end.120

land.lhs.true.108:                                ; preds = %land.lhs.true.104
  %82 = load i64, i64* %this_val95, align 8
  %call109 = call zeroext i8 @SREF(i64 %82, i64 0)
  %conv110 = zext i8 %call109 to i32
  %cmp111 = icmp eq i32 %conv110, 1
  br i1 %cmp111, label %if.then.118, label %lor.lhs.false.113

lor.lhs.false.113:                                ; preds = %land.lhs.true.108
  %83 = load i64, i64* %this_val95, align 8
  %call114 = call zeroext i8 @SREF(i64 %83, i64 0)
  %conv115 = zext i8 %call114 to i32
  %cmp116 = icmp eq i32 %conv115, 2
  br i1 %cmp116, label %if.then.118, label %if.end.120

if.then.118:                                      ; preds = %lor.lhs.false.113, %land.lhs.true.108
  %84 = load i64, i64* %table.addr, align 8
  %85 = load i32, i32* %chartab_idx, align 4
  %call119 = call i64 @uniprop_table_uncompress(i64 %84, i32 %85)
  store i64 %call119, i64* %this_val95, align 8
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.118, %lor.lhs.false.113, %land.lhs.true.104, %land.lhs.true.101, %while.body.94
  %86 = load i64, i64* %this_val95, align 8
  %call121 = call zeroext i1 @SUB_CHAR_TABLE_P(i64 %86)
  br i1 %call121, label %if.then.122, label %if.else.125

if.then.122:                                      ; preds = %if.end.120
  %87 = load i64, i64* %this_val95, align 8
  %88 = load i32, i32* %c.addr, align 4
  %89 = load i32*, i32** %from.addr, align 8
  %90 = load i32*, i32** %to.addr, align 8
  %91 = load i64, i64* %defalt.addr, align 8
  %92 = load i8, i8* %is_uniprop.addr, align 1
  %tobool123 = trunc i8 %92 to i1
  %call124 = call i64 @sub_char_table_ref_and_range(i64 %87, i32 %88, i32* %89, i32* %90, i64 %91, i1 zeroext %tobool123)
  store i64 %call124, i64* %this_val95, align 8
  br label %if.end.131

if.else.125:                                      ; preds = %if.end.120
  %93 = load i64, i64* %this_val95, align 8
  %call126 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp127 = icmp eq i64 %93, %call126
  br i1 %cmp127, label %if.then.129, label %if.end.130

if.then.129:                                      ; preds = %if.else.125
  %94 = load i64, i64* %defalt.addr, align 8
  store i64 %94, i64* %this_val95, align 8
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.129, %if.else.125
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %if.then.122
  %95 = load i64, i64* %this_val95, align 8
  %96 = load i64, i64* %val, align 8
  %cmp132 = icmp eq i64 %95, %96
  br i1 %cmp132, label %if.end.136, label %if.then.134

if.then.134:                                      ; preds = %if.end.131
  %97 = load i32, i32* %c.addr, align 4
  %sub135 = sub nsw i32 %97, 1
  %98 = load i32*, i32** %to.addr, align 8
  store i32 %sub135, i32* %98, align 4
  br label %while.end.137

if.end.136:                                       ; preds = %if.end.131
  br label %while.cond.79

while.end.137:                                    ; preds = %if.then.134, %land.end.93
  %99 = load i64, i64* %val, align 8
  ret i64 %99
}

; Function Attrs: nounwind uwtable
define void @char_table_set(i64 %table, i32 %c, i64 %val) #0 {
entry:
  %table.addr = alloca i64, align 8
  %c.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  %tbl = alloca %struct.Lisp_Char_Table*, align 8
  %i = alloca i32, align 4
  %sub8 = alloca i64, align 8
  store i64 %table, i64* %table.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %table.addr, align 8
  %call = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %0)
  store %struct.Lisp_Char_Table* %call, %struct.Lisp_Char_Table** %tbl, align 8
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %add = add i32 %1, 0
  %cmp = icmp ult i32 %add, 128
  br i1 %cmp, label %land.lhs.true, label %if.else

cond.false:                                       ; preds = %entry
  %2 = load i32, i32* %c.addr, align 4
  %conv = sext i32 %2 to i64
  %add1 = add i64 %conv, 0
  %cmp2 = icmp ult i64 %add1, 128
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %cond.false, %cond.true
  %3 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %tbl, align 8
  %ascii = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %3, i32 0, i32 4
  %4 = load i64, i64* %ascii, align 8
  %call4 = call zeroext i1 @SUB_CHAR_TABLE_P(i64 %4)
  br i1 %call4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %tbl, align 8
  %ascii6 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %5, i32 0, i32 4
  %6 = load i64, i64* %ascii6, align 8
  %7 = load i32, i32* %c.addr, align 4
  %conv7 = sext i32 %7 to i64
  %8 = load i64, i64* %val.addr, align 8
  call void @set_sub_char_table_contents(i64 %6, i64 %conv7, i64 %8)
  br label %if.end.33

if.else:                                          ; preds = %land.lhs.true, %cond.false, %cond.true
  %9 = load i32, i32* %c.addr, align 4
  %sub = sub nsw i32 %9, 0
  %10 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @chartab_bits, i32 0, i64 0), align 4
  %shr = ashr i32 %sub, %10
  store i32 %shr, i32* %i, align 4
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %tbl, align 8
  %contents = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %12, i32 0, i32 5
  %arrayidx = getelementptr inbounds [64 x i64], [64 x i64]* %contents, i32 0, i64 %idxprom
  %13 = load i64, i64* %arrayidx, align 8
  store i64 %13, i64* %sub8, align 8
  %14 = load i64, i64* %sub8, align 8
  %call9 = call zeroext i1 @SUB_CHAR_TABLE_P(i64 %14)
  br i1 %call9, label %if.end, label %if.then.10

if.then.10:                                       ; preds = %if.else
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @chartab_chars, i32 0, i64 0), align 4
  %mul = mul nsw i32 %15, %16
  %17 = load i64, i64* %sub8, align 8
  %call11 = call i64 @make_sub_char_table(i32 1, i32 %mul, i64 %17)
  store i64 %call11, i64* %sub8, align 8
  %18 = load i64, i64* %table.addr, align 8
  %19 = load i32, i32* %i, align 4
  %conv12 = sext i32 %19 to i64
  %20 = load i64, i64* %sub8, align 8
  call void @set_char_table_contents(i64 %18, i64 %conv12, i64 %20)
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.else
  %21 = load i64, i64* %sub8, align 8
  %22 = load i32, i32* %c.addr, align 4
  %23 = load i64, i64* %val.addr, align 8
  %24 = load i64, i64* %table.addr, align 8
  %call13 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %24)
  %purpose = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call13, i32 0, i32 3
  %25 = load i64, i64* %purpose, align 8
  %call14 = call i64 @builtin_lisp_symbol(i32 254)
  %cmp15 = icmp eq i64 %25, %call14
  br i1 %cmp15, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %26 = load i64, i64* %table.addr, align 8
  %call17 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %26)
  %call18 = call i32 @CHAR_TABLE_EXTRA_SLOTS(%struct.Lisp_Char_Table* %call17)
  %cmp19 = icmp eq i32 %call18, 5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %27 = phi i1 [ false, %if.end ], [ %cmp19, %land.rhs ]
  call void @sub_char_table_set(i64 %21, i32 %22, i64 %23, i1 zeroext %27)
  br i1 true, label %cond.true.21, label %cond.false.25

cond.true.21:                                     ; preds = %land.end
  %28 = load i32, i32* %c.addr, align 4
  %add22 = add i32 %28, 0
  %cmp23 = icmp ult i32 %add22, 128
  br i1 %cmp23, label %if.then.30, label %if.end.32

cond.false.25:                                    ; preds = %land.end
  %29 = load i32, i32* %c.addr, align 4
  %conv26 = sext i32 %29 to i64
  %add27 = add i64 %conv26, 0
  %cmp28 = icmp ult i64 %add27, 128
  br i1 %cmp28, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %cond.false.25, %cond.true.21
  %30 = load i64, i64* %table.addr, align 8
  %31 = load i64, i64* %table.addr, align 8
  %call31 = call i64 @char_table_ascii(i64 %31)
  call void @set_char_table_ascii(i64 %30, i64 %call31)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %cond.false.25, %cond.true.21
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then
  ret void
}

declare void @set_sub_char_table_contents(i64, i64, i64) #2

; Function Attrs: nounwind uwtable
define internal i64 @make_sub_char_table(i32 %depth, i32 %min_char, i64 %defalt) #0 {
entry:
  %depth.addr = alloca i32, align 4
  %min_char.addr = alloca i32, align 4
  %defalt.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %table = alloca i64, align 8
  store i32 %depth, i32* %depth.addr, align 4
  store i32 %min_char, i32* %min_char.addr, align 4
  store i64 %defalt, i64* %defalt.addr, align 8
  %0 = load i32, i32* %depth.addr, align 4
  %1 = load i32, i32* %min_char.addr, align 4
  %call = call i64 @make_uninit_sub_char_table(i32 %0, i32 %1)
  store i64 %call, i64* %table, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %depth.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* @chartab_size, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i64, i64* %defalt.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load i64, i64* %table, align 8
  %call2 = call %struct.Lisp_Sub_Char_Table* @XSUB_CHAR_TABLE(i64 %7)
  %contents = getelementptr inbounds %struct.Lisp_Sub_Char_Table, %struct.Lisp_Sub_Char_Table* %call2, i32 0, i32 3
  %arrayidx3 = getelementptr inbounds [0 x i64], [0 x i64]* %contents, i32 0, i64 %idxprom1
  store i64 %5, i64* %arrayidx3, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i64, i64* %table, align 8
  ret i64 %9
}

; Function Attrs: nounwind uwtable
define internal void @sub_char_table_set(i64 %table, i32 %c, i64 %val, i1 zeroext %is_uniprop) #0 {
entry:
  %table.addr = alloca i64, align 8
  %c.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  %is_uniprop.addr = alloca i8, align 1
  %tbl = alloca %struct.Lisp_Sub_Char_Table*, align 8
  %depth = alloca i32, align 4
  %min_char = alloca i32, align 4
  %i = alloca i32, align 4
  %sub3 = alloca i64, align 8
  store i64 %table, i64* %table.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  store i64 %val, i64* %val.addr, align 8
  %frombool = zext i1 %is_uniprop to i8
  store i8 %frombool, i8* %is_uniprop.addr, align 1
  %0 = load i64, i64* %table.addr, align 8
  %call = call %struct.Lisp_Sub_Char_Table* @XSUB_CHAR_TABLE(i64 %0)
  store %struct.Lisp_Sub_Char_Table* %call, %struct.Lisp_Sub_Char_Table** %tbl, align 8
  %1 = load %struct.Lisp_Sub_Char_Table*, %struct.Lisp_Sub_Char_Table** %tbl, align 8
  %depth1 = getelementptr inbounds %struct.Lisp_Sub_Char_Table, %struct.Lisp_Sub_Char_Table* %1, i32 0, i32 1
  %2 = load i32, i32* %depth1, align 4
  store i32 %2, i32* %depth, align 4
  %3 = load %struct.Lisp_Sub_Char_Table*, %struct.Lisp_Sub_Char_Table** %tbl, align 8
  %min_char2 = getelementptr inbounds %struct.Lisp_Sub_Char_Table, %struct.Lisp_Sub_Char_Table* %3, i32 0, i32 2
  %4 = load i32, i32* %min_char2, align 4
  store i32 %4, i32* %min_char, align 4
  %5 = load i32, i32* %c.addr, align 4
  %6 = load i32, i32* %min_char, align 4
  %sub = sub nsw i32 %5, %6
  %7 = load i32, i32* %depth, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* @chartab_bits, i32 0, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  %shr = ashr i32 %sub, %8
  store i32 %shr, i32* %i, align 4
  %9 = load i32, i32* %depth, align 4
  %cmp = icmp eq i32 %9, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load i64, i64* %table.addr, align 8
  %11 = load i32, i32* %i, align 4
  %conv = sext i32 %11 to i64
  %12 = load i64, i64* %val.addr, align 8
  call void @set_sub_char_table_contents(i64 %10, i64 %conv, i64 %12)
  br label %if.end.34

if.else:                                          ; preds = %entry
  %13 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %13 to i64
  %14 = load %struct.Lisp_Sub_Char_Table*, %struct.Lisp_Sub_Char_Table** %tbl, align 8
  %contents = getelementptr inbounds %struct.Lisp_Sub_Char_Table, %struct.Lisp_Sub_Char_Table* %14, i32 0, i32 3
  %arrayidx5 = getelementptr inbounds [0 x i64], [0 x i64]* %contents, i32 0, i64 %idxprom4
  %15 = load i64, i64* %arrayidx5, align 8
  store i64 %15, i64* %sub3, align 8
  %16 = load i64, i64* %sub3, align 8
  %call6 = call zeroext i1 @SUB_CHAR_TABLE_P(i64 %16)
  br i1 %call6, label %if.end.32, label %if.then.7

if.then.7:                                        ; preds = %if.else
  %17 = load i8, i8* %is_uniprop.addr, align 1
  %tobool = trunc i8 %17 to i1
  br i1 %tobool, label %land.lhs.true, label %if.else.26

land.lhs.true:                                    ; preds = %if.then.7
  %18 = load i64, i64* %sub3, align 8
  %call9 = call zeroext i1 @STRINGP(i64 %18)
  br i1 %call9, label %land.lhs.true.11, label %if.else.26

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %19 = load i64, i64* %sub3, align 8
  %call12 = call i64 @SCHARS(i64 %19)
  %cmp13 = icmp sgt i64 %call12, 0
  br i1 %cmp13, label %land.lhs.true.15, label %if.else.26

land.lhs.true.15:                                 ; preds = %land.lhs.true.11
  %20 = load i64, i64* %sub3, align 8
  %call16 = call zeroext i8 @SREF(i64 %20, i64 0)
  %conv17 = zext i8 %call16 to i32
  %cmp18 = icmp eq i32 %conv17, 1
  br i1 %cmp18, label %if.then.24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.15
  %21 = load i64, i64* %sub3, align 8
  %call20 = call zeroext i8 @SREF(i64 %21, i64 0)
  %conv21 = zext i8 %call20 to i32
  %cmp22 = icmp eq i32 %conv21, 2
  br i1 %cmp22, label %if.then.24, label %if.else.26

if.then.24:                                       ; preds = %lor.lhs.false, %land.lhs.true.15
  %22 = load i64, i64* %table.addr, align 8
  %23 = load i32, i32* %i, align 4
  %call25 = call i64 @uniprop_table_uncompress(i64 %22, i32 %23)
  store i64 %call25, i64* %sub3, align 8
  br label %if.end

if.else.26:                                       ; preds = %lor.lhs.false, %land.lhs.true.11, %land.lhs.true, %if.then.7
  %24 = load i32, i32* %depth, align 4
  %add = add nsw i32 %24, 1
  %25 = load i32, i32* %min_char, align 4
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* %depth, align 4
  %idxprom27 = sext i32 %27 to i64
  %arrayidx28 = getelementptr inbounds [4 x i32], [4 x i32]* @chartab_chars, i32 0, i64 %idxprom27
  %28 = load i32, i32* %arrayidx28, align 4
  %mul = mul nsw i32 %26, %28
  %add29 = add nsw i32 %25, %mul
  %29 = load i64, i64* %sub3, align 8
  %call30 = call i64 @make_sub_char_table(i32 %add, i32 %add29, i64 %29)
  store i64 %call30, i64* %sub3, align 8
  %30 = load i64, i64* %table.addr, align 8
  %31 = load i32, i32* %i, align 4
  %conv31 = sext i32 %31 to i64
  %32 = load i64, i64* %sub3, align 8
  call void @set_sub_char_table_contents(i64 %30, i64 %conv31, i64 %32)
  br label %if.end

if.end:                                           ; preds = %if.else.26, %if.then.24
  br label %if.end.32

if.end.32:                                        ; preds = %if.end, %if.else
  %33 = load i64, i64* %sub3, align 8
  %34 = load i32, i32* %c.addr, align 4
  %35 = load i64, i64* %val.addr, align 8
  %36 = load i8, i8* %is_uniprop.addr, align 1
  %tobool33 = trunc i8 %36 to i1
  call void @sub_char_table_set(i64 %33, i32 %34, i64 %35, i1 zeroext %tobool33)
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.32, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @char_table_set_range(i64 %table, i32 %from, i32 %to, i64 %val) #0 {
entry:
  %table.addr = alloca i64, align 8
  %from.addr = alloca i32, align 4
  %to.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  %tbl = alloca %struct.Lisp_Char_Table*, align 8
  %is_uniprop = alloca i8, align 1
  %lim = alloca i32, align 4
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %sub17 = alloca i64, align 8
  store i64 %table, i64* %table.addr, align 8
  store i32 %from, i32* %from.addr, align 4
  store i32 %to, i32* %to.addr, align 4
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %table.addr, align 8
  %call = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %0)
  store %struct.Lisp_Char_Table* %call, %struct.Lisp_Char_Table** %tbl, align 8
  %1 = load i32, i32* %from.addr, align 4
  %2 = load i32, i32* %to.addr, align 4
  %cmp = icmp eq i32 %1, %2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %table.addr, align 8
  %4 = load i32, i32* %from.addr, align 4
  %5 = load i64, i64* %val.addr, align 8
  call void @char_table_set(i64 %3, i32 %4, i64 %5)
  br label %if.end.35

if.else:                                          ; preds = %entry
  %6 = load i64, i64* %table.addr, align 8
  %call1 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %6)
  %purpose = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call1, i32 0, i32 3
  %7 = load i64, i64* %purpose, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 254)
  %cmp3 = icmp eq i64 %7, %call2
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.else
  %8 = load i64, i64* %table.addr, align 8
  %call4 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %8)
  %call5 = call i32 @CHAR_TABLE_EXTRA_SLOTS(%struct.Lisp_Char_Table* %call4)
  %cmp6 = icmp eq i32 %call5, 5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else
  %9 = phi i1 [ false, %if.else ], [ %cmp6, %land.rhs ]
  %frombool = zext i1 %9 to i8
  store i8 %frombool, i8* %is_uniprop, align 1
  %10 = load i32, i32* %to.addr, align 4
  %sub = sub nsw i32 %10, 0
  %11 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @chartab_bits, i32 0, i64 0), align 4
  %shr = ashr i32 %sub, %11
  store i32 %shr, i32* %lim, align 4
  %12 = load i32, i32* %from.addr, align 4
  %sub7 = sub nsw i32 %12, 0
  %13 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @chartab_bits, i32 0, i64 0), align 4
  %shr8 = ashr i32 %sub7, %13
  store i32 %shr8, i32* %i, align 4
  store i32 0, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %land.end
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %lim, align 4
  %cmp9 = icmp sle i32 %14, %15
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %c, align 4
  %17 = load i32, i32* %to.addr, align 4
  %cmp10 = icmp sgt i32 %16, %17
  br i1 %cmp10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %18 = load i32, i32* %from.addr, align 4
  %19 = load i32, i32* %c, align 4
  %cmp12 = icmp sle i32 %18, %19
  br i1 %cmp12, label %land.lhs.true, label %if.else.16

land.lhs.true:                                    ; preds = %if.end
  %20 = load i32, i32* %c, align 4
  %21 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @chartab_chars, i32 0, i64 0), align 4
  %add = add nsw i32 %20, %21
  %sub13 = sub nsw i32 %add, 1
  %22 = load i32, i32* %to.addr, align 4
  %cmp14 = icmp sle i32 %sub13, %22
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %land.lhs.true
  %23 = load i64, i64* %table.addr, align 8
  %24 = load i32, i32* %i, align 4
  %conv = sext i32 %24 to i64
  %25 = load i64, i64* %val.addr, align 8
  call void @set_char_table_contents(i64 %23, i64 %conv, i64 %25)
  br label %if.end.23

if.else.16:                                       ; preds = %land.lhs.true, %if.end
  %26 = load i32, i32* %i, align 4
  %idxprom = sext i32 %26 to i64
  %27 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %tbl, align 8
  %contents = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %27, i32 0, i32 5
  %arrayidx = getelementptr inbounds [64 x i64], [64 x i64]* %contents, i32 0, i64 %idxprom
  %28 = load i64, i64* %arrayidx, align 8
  store i64 %28, i64* %sub17, align 8
  %29 = load i64, i64* %sub17, align 8
  %call18 = call zeroext i1 @SUB_CHAR_TABLE_P(i64 %29)
  br i1 %call18, label %if.end.22, label %if.then.19

if.then.19:                                       ; preds = %if.else.16
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @chartab_chars, i32 0, i64 0), align 4
  %mul = mul nsw i32 %30, %31
  %32 = load i64, i64* %sub17, align 8
  %call20 = call i64 @make_sub_char_table(i32 1, i32 %mul, i64 %32)
  store i64 %call20, i64* %sub17, align 8
  %33 = load i64, i64* %table.addr, align 8
  %34 = load i32, i32* %i, align 4
  %conv21 = sext i32 %34 to i64
  %35 = load i64, i64* %sub17, align 8
  call void @set_char_table_contents(i64 %33, i64 %conv21, i64 %35)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %if.else.16
  %36 = load i64, i64* %sub17, align 8
  %37 = load i32, i32* %from.addr, align 4
  %38 = load i32, i32* %to.addr, align 4
  %39 = load i64, i64* %val.addr, align 8
  %40 = load i8, i8* %is_uniprop, align 1
  %tobool = trunc i8 %40 to i1
  call void @sub_char_table_set_range(i64 %36, i32 %37, i32 %38, i64 %39, i1 zeroext %tobool)
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.15
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %41 = load i32, i32* %i, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %i, align 4
  %42 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @chartab_chars, i32 0, i64 0), align 4
  %43 = load i32, i32* %c, align 4
  %add24 = add nsw i32 %43, %42
  store i32 %add24, i32* %c, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.11, %for.cond
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %44 = load i32, i32* %from.addr, align 4
  %add25 = add i32 %44, 0
  %cmp26 = icmp ult i32 %add25, 128
  br i1 %cmp26, label %if.then.32, label %if.end.34

cond.false:                                       ; preds = %for.end
  %45 = load i32, i32* %from.addr, align 4
  %conv28 = sext i32 %45 to i64
  %add29 = add i64 %conv28, 0
  %cmp30 = icmp ult i64 %add29, 128
  br i1 %cmp30, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %cond.false, %cond.true
  %46 = load i64, i64* %table.addr, align 8
  %47 = load i64, i64* %table.addr, align 8
  %call33 = call i64 @char_table_ascii(i64 %47)
  call void @set_char_table_ascii(i64 %46, i64 %call33)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %cond.false, %cond.true
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sub_char_table_set_range(i64 %table, i32 %from, i32 %to, i64 %val, i1 zeroext %is_uniprop) #0 {
entry:
  %table.addr = alloca i64, align 8
  %from.addr = alloca i32, align 4
  %to.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  %is_uniprop.addr = alloca i8, align 1
  %tbl = alloca %struct.Lisp_Sub_Char_Table*, align 8
  %depth = alloca i32, align 4
  %min_char = alloca i32, align 4
  %chars_in_block = alloca i32, align 4
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %lim = alloca i32, align 4
  %sub16 = alloca i64, align 8
  store i64 %table, i64* %table.addr, align 8
  store i32 %from, i32* %from.addr, align 4
  store i32 %to, i32* %to.addr, align 4
  store i64 %val, i64* %val.addr, align 8
  %frombool = zext i1 %is_uniprop to i8
  store i8 %frombool, i8* %is_uniprop.addr, align 1
  %0 = load i64, i64* %table.addr, align 8
  %call = call %struct.Lisp_Sub_Char_Table* @XSUB_CHAR_TABLE(i64 %0)
  store %struct.Lisp_Sub_Char_Table* %call, %struct.Lisp_Sub_Char_Table** %tbl, align 8
  %1 = load %struct.Lisp_Sub_Char_Table*, %struct.Lisp_Sub_Char_Table** %tbl, align 8
  %depth1 = getelementptr inbounds %struct.Lisp_Sub_Char_Table, %struct.Lisp_Sub_Char_Table* %1, i32 0, i32 1
  %2 = load i32, i32* %depth1, align 4
  store i32 %2, i32* %depth, align 4
  %3 = load %struct.Lisp_Sub_Char_Table*, %struct.Lisp_Sub_Char_Table** %tbl, align 8
  %min_char2 = getelementptr inbounds %struct.Lisp_Sub_Char_Table, %struct.Lisp_Sub_Char_Table* %3, i32 0, i32 2
  %4 = load i32, i32* %min_char2, align 4
  store i32 %4, i32* %min_char, align 4
  %5 = load i32, i32* %depth, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* @chartab_chars, i32 0, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  store i32 %6, i32* %chars_in_block, align 4
  %7 = load i32, i32* %depth, align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds [4 x i32], [4 x i32]* @chartab_size, i32 0, i64 %idxprom3
  %8 = load i32, i32* %arrayidx4, align 4
  store i32 %8, i32* %lim, align 4
  %9 = load i32, i32* %from.addr, align 4
  %10 = load i32, i32* %min_char, align 4
  %cmp = icmp slt i32 %9, %10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %min_char, align 4
  store i32 %11, i32* %from.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load i32, i32* %from.addr, align 4
  %13 = load i32, i32* %min_char, align 4
  %sub = sub nsw i32 %12, %13
  %14 = load i32, i32* %depth, align 4
  %idxprom5 = sext i32 %14 to i64
  %arrayidx6 = getelementptr inbounds [4 x i32], [4 x i32]* @chartab_bits, i32 0, i64 %idxprom5
  %15 = load i32, i32* %arrayidx6, align 4
  %shr = ashr i32 %sub, %15
  store i32 %shr, i32* %i, align 4
  %16 = load i32, i32* %min_char, align 4
  %17 = load i32, i32* %chars_in_block, align 4
  %18 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %17, %18
  %add = add nsw i32 %16, %mul
  store i32 %add, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %lim, align 4
  %cmp7 = icmp slt i32 %19, %20
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %c, align 4
  %22 = load i32, i32* %to.addr, align 4
  %cmp8 = icmp sgt i32 %21, %22
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %for.body
  br label %for.end

if.end.10:                                        ; preds = %for.body
  %23 = load i32, i32* %from.addr, align 4
  %24 = load i32, i32* %c, align 4
  %cmp11 = icmp sle i32 %23, %24
  br i1 %cmp11, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.10
  %25 = load i32, i32* %c, align 4
  %26 = load i32, i32* %chars_in_block, align 4
  %add12 = add nsw i32 %25, %26
  %sub13 = sub nsw i32 %add12, 1
  %27 = load i32, i32* %to.addr, align 4
  %cmp14 = icmp sle i32 %sub13, %27
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %land.lhs.true
  %28 = load i64, i64* %table.addr, align 8
  %29 = load i32, i32* %i, align 4
  %conv = sext i32 %29 to i64
  %30 = load i64, i64* %val.addr, align 8
  call void @set_sub_char_table_contents(i64 %28, i64 %conv, i64 %30)
  br label %if.end.47

if.else:                                          ; preds = %land.lhs.true, %if.end.10
  %31 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %31 to i64
  %32 = load %struct.Lisp_Sub_Char_Table*, %struct.Lisp_Sub_Char_Table** %tbl, align 8
  %contents = getelementptr inbounds %struct.Lisp_Sub_Char_Table, %struct.Lisp_Sub_Char_Table* %32, i32 0, i32 3
  %arrayidx18 = getelementptr inbounds [0 x i64], [0 x i64]* %contents, i32 0, i64 %idxprom17
  %33 = load i64, i64* %arrayidx18, align 8
  store i64 %33, i64* %sub16, align 8
  %34 = load i64, i64* %sub16, align 8
  %call19 = call zeroext i1 @SUB_CHAR_TABLE_P(i64 %34)
  br i1 %call19, label %if.end.45, label %if.then.20

if.then.20:                                       ; preds = %if.else
  %35 = load i8, i8* %is_uniprop.addr, align 1
  %tobool = trunc i8 %35 to i1
  br i1 %tobool, label %land.lhs.true.22, label %if.else.40

land.lhs.true.22:                                 ; preds = %if.then.20
  %36 = load i64, i64* %sub16, align 8
  %call23 = call zeroext i1 @STRINGP(i64 %36)
  br i1 %call23, label %land.lhs.true.25, label %if.else.40

land.lhs.true.25:                                 ; preds = %land.lhs.true.22
  %37 = load i64, i64* %sub16, align 8
  %call26 = call i64 @SCHARS(i64 %37)
  %cmp27 = icmp sgt i64 %call26, 0
  br i1 %cmp27, label %land.lhs.true.29, label %if.else.40

land.lhs.true.29:                                 ; preds = %land.lhs.true.25
  %38 = load i64, i64* %sub16, align 8
  %call30 = call zeroext i8 @SREF(i64 %38, i64 0)
  %conv31 = zext i8 %call30 to i32
  %cmp32 = icmp eq i32 %conv31, 1
  br i1 %cmp32, label %if.then.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.29
  %39 = load i64, i64* %sub16, align 8
  %call34 = call zeroext i8 @SREF(i64 %39, i64 0)
  %conv35 = zext i8 %call34 to i32
  %cmp36 = icmp eq i32 %conv35, 2
  br i1 %cmp36, label %if.then.38, label %if.else.40

if.then.38:                                       ; preds = %lor.lhs.false, %land.lhs.true.29
  %40 = load i64, i64* %table.addr, align 8
  %41 = load i32, i32* %i, align 4
  %call39 = call i64 @uniprop_table_uncompress(i64 %40, i32 %41)
  store i64 %call39, i64* %sub16, align 8
  br label %if.end.44

if.else.40:                                       ; preds = %lor.lhs.false, %land.lhs.true.25, %land.lhs.true.22, %if.then.20
  %42 = load i32, i32* %depth, align 4
  %add41 = add nsw i32 %42, 1
  %43 = load i32, i32* %c, align 4
  %44 = load i64, i64* %sub16, align 8
  %call42 = call i64 @make_sub_char_table(i32 %add41, i32 %43, i64 %44)
  store i64 %call42, i64* %sub16, align 8
  %45 = load i64, i64* %table.addr, align 8
  %46 = load i32, i32* %i, align 4
  %conv43 = sext i32 %46 to i64
  %47 = load i64, i64* %sub16, align 8
  call void @set_sub_char_table_contents(i64 %45, i64 %conv43, i64 %47)
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.40, %if.then.38
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.else
  %48 = load i64, i64* %sub16, align 8
  %49 = load i32, i32* %from.addr, align 4
  %50 = load i32, i32* %to.addr, align 4
  %51 = load i64, i64* %val.addr, align 8
  %52 = load i8, i8* %is_uniprop.addr, align 1
  %tobool46 = trunc i8 %52 to i1
  call void @sub_char_table_set_range(i64 %48, i32 %49, i32 %50, i64 %51, i1 zeroext %tobool46)
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.45, %if.then.15
  br label %for.inc

for.inc:                                          ; preds = %if.end.47
  %53 = load i32, i32* %i, align 4
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* %i, align 4
  %54 = load i32, i32* %chars_in_block, align 4
  %55 = load i32, i32* %c, align 4
  %add48 = add nsw i32 %55, %54
  store i32 %add48, i32* %c, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.9, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @Fchar_table_subtype(i64 %char_table) #0 {
entry:
  %char_table.addr = alloca i64, align 8
  store i64 %char_table, i64* %char_table.addr, align 8
  %0 = load i64, i64* %char_table.addr, align 8
  call void @CHECK_CHAR_TABLE(i64 %0)
  %1 = load i64, i64* %char_table.addr, align 8
  %call = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %1)
  %purpose = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call, i32 0, i32 3
  %2 = load i64, i64* %purpose, align 8
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define internal void @CHECK_CHAR_TABLE(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %call = call zeroext i1 @CHAR_TABLE_P(i64 %0)
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 259)
  %1 = load i64, i64* %x.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call1, i64 %1) #3
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @Fchar_table_parent(i64 %char_table) #0 {
entry:
  %char_table.addr = alloca i64, align 8
  store i64 %char_table, i64* %char_table.addr, align 8
  %0 = load i64, i64* %char_table.addr, align 8
  call void @CHECK_CHAR_TABLE(i64 %0)
  %1 = load i64, i64* %char_table.addr, align 8
  %call = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %1)
  %parent = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call, i32 0, i32 2
  %2 = load i64, i64* %parent, align 8
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define i64 @Fset_char_table_parent(i64 %char_table, i64 %parent) #0 {
entry:
  %char_table.addr = alloca i64, align 8
  %parent.addr = alloca i64, align 8
  %temp = alloca i64, align 8
  store i64 %char_table, i64* %char_table.addr, align 8
  store i64 %parent, i64* %parent.addr, align 8
  %0 = load i64, i64* %char_table.addr, align 8
  call void @CHECK_CHAR_TABLE(i64 %0)
  %1 = load i64, i64* %parent.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %1, %call
  br i1 %cmp, label %if.end.7, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %parent.addr, align 8
  call void @CHECK_CHAR_TABLE(i64 %2)
  %3 = load i64, i64* %parent.addr, align 8
  store i64 %3, i64* %temp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i64, i64* %temp, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp2 = icmp eq i64 %4, %call1
  %lnot = xor i1 %cmp2, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i64, i64* %temp, align 8
  %6 = load i64, i64* %char_table.addr, align 8
  %cmp3 = icmp eq i64 %5, %6
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %for.body
  call void (i8*, ...) @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i32 0, i32 0)) #3
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i64, i64* %temp, align 8
  %call5 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %7)
  %parent6 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call5, i32 0, i32 2
  %8 = load i64, i64* %parent6, align 8
  store i64 %8, i64* %temp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.7

if.end.7:                                         ; preds = %for.end, %entry
  %9 = load i64, i64* %char_table.addr, align 8
  %10 = load i64, i64* %parent.addr, align 8
  call void @set_char_table_parent(i64 %9, i64 %10)
  %11 = load i64, i64* %parent.addr, align 8
  ret i64 %11
}

; Function Attrs: noreturn
declare void @error(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i64 @Fchar_table_extra_slot(i64 %char_table, i64 %n) #0 {
entry:
  %char_table.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  store i64 %char_table, i64* %char_table.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i64, i64* %char_table.addr, align 8
  call void @CHECK_CHAR_TABLE(i64 %0)
  %1 = load i64, i64* %n.addr, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %and1 = and i32 %conv, -5
  %cmp = icmp eq i32 %and1, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 559)
  %2 = load i64, i64* %n.addr, align 8
  %3 = call i64 @wrong_type_argument(i64 %call, i64 %2) #3
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %4, %cond.true
  %5 = load i64, i64* %n.addr, align 8
  %shr = ashr i64 %5, 2
  %cmp3 = icmp slt i64 %shr, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %6 = load i64, i64* %n.addr, align 8
  %shr5 = ashr i64 %6, 2
  %7 = load i64, i64* %char_table.addr, align 8
  %call6 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %7)
  %call7 = call i32 @CHAR_TABLE_EXTRA_SLOTS(%struct.Lisp_Char_Table* %call6)
  %conv8 = sext i32 %call7 to i64
  %cmp9 = icmp sge i64 %shr5, %conv8
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  %8 = load i64, i64* %char_table.addr, align 8
  %9 = load i64, i64* %n.addr, align 8
  call void @args_out_of_range(i64 %8, i64 %9) #3
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %10 = load i64, i64* %n.addr, align 8
  %shr11 = ashr i64 %10, 2
  %11 = load i64, i64* %char_table.addr, align 8
  %call12 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %11)
  %extras = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call12, i32 0, i32 6
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* %extras, i32 0, i64 %shr11
  %12 = load i64, i64* %arrayidx, align 8
  ret i64 %12
}

; Function Attrs: nounwind uwtable
define i64 @Fset_char_table_extra_slot(i64 %char_table, i64 %n, i64 %value) #0 {
entry:
  %char_table.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %value.addr = alloca i64, align 8
  store i64 %char_table, i64* %char_table.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store i64 %value, i64* %value.addr, align 8
  %0 = load i64, i64* %char_table.addr, align 8
  call void @CHECK_CHAR_TABLE(i64 %0)
  %1 = load i64, i64* %n.addr, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %and1 = and i32 %conv, -5
  %cmp = icmp eq i32 %and1, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 559)
  %2 = load i64, i64* %n.addr, align 8
  %3 = call i64 @wrong_type_argument(i64 %call, i64 %2) #3
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %4, %cond.true
  %5 = load i64, i64* %n.addr, align 8
  %shr = ashr i64 %5, 2
  %cmp3 = icmp slt i64 %shr, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %6 = load i64, i64* %n.addr, align 8
  %shr5 = ashr i64 %6, 2
  %7 = load i64, i64* %char_table.addr, align 8
  %call6 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %7)
  %call7 = call i32 @CHAR_TABLE_EXTRA_SLOTS(%struct.Lisp_Char_Table* %call6)
  %conv8 = sext i32 %call7 to i64
  %cmp9 = icmp sge i64 %shr5, %conv8
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  %8 = load i64, i64* %char_table.addr, align 8
  %9 = load i64, i64* %n.addr, align 8
  call void @args_out_of_range(i64 %8, i64 %9) #3
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %10 = load i64, i64* %char_table.addr, align 8
  %11 = load i64, i64* %n.addr, align 8
  %shr11 = ashr i64 %11, 2
  %12 = load i64, i64* %value.addr, align 8
  call void @set_char_table_extras(i64 %10, i64 %shr11, i64 %12)
  %13 = load i64, i64* %value.addr, align 8
  ret i64 %13
}

; Function Attrs: nounwind uwtable
define i64 @Fchar_table_range(i64 %char_table, i64 %range) #0 {
entry:
  %char_table.addr = alloca i64, align 8
  %range.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %from = alloca i32, align 4
  %to = alloca i32, align 4
  %tmp = alloca i64, align 8
  %tmp21 = alloca i64, align 8
  store i64 %char_table, i64* %char_table.addr, align 8
  store i64 %range, i64* %range.addr, align 8
  %0 = load i64, i64* %char_table.addr, align 8
  call void @CHECK_CHAR_TABLE(i64 %0)
  %1 = load i64, i64* %range.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %1, %call
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %char_table.addr, align 8
  %call1 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %2)
  %defalt = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call1, i32 0, i32 1
  %3 = load i64, i64* %defalt, align 8
  store i64 %3, i64* %val, align 8
  br label %if.end.46

if.else:                                          ; preds = %entry
  %4 = load i64, i64* %range.addr, align 8
  %call2 = call zeroext i1 @NATNUMP(i64 %4)
  br i1 %call2, label %land.lhs.true, label %if.else.7

land.lhs.true:                                    ; preds = %if.else
  %5 = load i64, i64* %range.addr, align 8
  %shr = ashr i64 %5, 2
  %cmp3 = icmp sle i64 %shr, 4194303
  br i1 %cmp3, label %if.then.4, label %if.else.7

if.then.4:                                        ; preds = %land.lhs.true
  %6 = load i64, i64* %char_table.addr, align 8
  %7 = load i64, i64* %range.addr, align 8
  %shr5 = ashr i64 %7, 2
  %conv = trunc i64 %shr5 to i32
  %call6 = call i64 @CHAR_TABLE_REF(i64 %6, i32 %conv)
  store i64 %call6, i64* %val, align 8
  br label %if.end.45

if.else.7:                                        ; preds = %land.lhs.true, %if.else
  %8 = load i64, i64* %range.addr, align 8
  %and = and i64 %8, 7
  %conv8 = trunc i64 %and to i32
  %cmp9 = icmp eq i32 %conv8, 3
  br i1 %cmp9, label %if.then.11, label %if.else.44

if.then.11:                                       ; preds = %if.else.7
  br label %do.body

do.body:                                          ; preds = %if.then.11
  %9 = load i64, i64* %range.addr, align 8
  %sub = sub nsw i64 %9, 3
  %10 = inttoptr i64 %sub to i8*
  %11 = bitcast i8* %10 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %11, i32 0, i32 0
  %12 = load i64, i64* %car, align 8
  store i64 %12, i64* %tmp, align 8
  %13 = load i64, i64* %tmp, align 8
  %call12 = call zeroext i1 @NATNUMP(i64 %13)
  br i1 %call12, label %land.lhs.true.14, label %cond.false

land.lhs.true.14:                                 ; preds = %do.body
  %14 = load i64, i64* %tmp, align 8
  %shr15 = ashr i64 %14, 2
  %cmp16 = icmp sle i64 %shr15, 4194303
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.14
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.14, %do.body
  %call18 = call i64 @builtin_lisp_symbol(i32 260)
  %15 = load i64, i64* %tmp, align 8
  %16 = call i64 @wrong_type_argument(i64 %call18, i64 %15) #3
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %17, %cond.true
  br label %do.end

do.end:                                           ; preds = %cond.end
  br label %do.body.19

do.body.19:                                       ; preds = %do.end
  %18 = load i64, i64* %range.addr, align 8
  %sub22 = sub nsw i64 %18, 3
  %19 = inttoptr i64 %sub22 to i8*
  %20 = bitcast i8* %19 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %20, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %21 = load i64, i64* %cdr, align 8
  store i64 %21, i64* %tmp21, align 8
  %22 = load i64, i64* %tmp21, align 8
  %call23 = call zeroext i1 @NATNUMP(i64 %22)
  br i1 %call23, label %land.lhs.true.25, label %cond.false.30

land.lhs.true.25:                                 ; preds = %do.body.19
  %23 = load i64, i64* %tmp21, align 8
  %shr26 = ashr i64 %23, 2
  %cmp27 = icmp sle i64 %shr26, 4194303
  br i1 %cmp27, label %cond.true.29, label %cond.false.30

cond.true.29:                                     ; preds = %land.lhs.true.25
  br label %cond.end.32

cond.false.30:                                    ; preds = %land.lhs.true.25, %do.body.19
  %call31 = call i64 @builtin_lisp_symbol(i32 260)
  %24 = load i64, i64* %tmp21, align 8
  %25 = call i64 @wrong_type_argument(i64 %call31, i64 %24) #3
  unreachable
                                                  ; No predecessors!
  br label %cond.end.32

cond.end.32:                                      ; preds = %26, %cond.true.29
  br label %do.end.33

do.end.33:                                        ; preds = %cond.end.32
  %27 = load i64, i64* %range.addr, align 8
  %sub34 = sub nsw i64 %27, 3
  %28 = inttoptr i64 %sub34 to i8*
  %29 = bitcast i8* %28 to %struct.Lisp_Cons*
  %car35 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %29, i32 0, i32 0
  %30 = load i64, i64* %car35, align 8
  %shr36 = ashr i64 %30, 2
  %conv37 = trunc i64 %shr36 to i32
  store i32 %conv37, i32* %from, align 4
  %31 = load i64, i64* %range.addr, align 8
  %sub38 = sub nsw i64 %31, 3
  %32 = inttoptr i64 %sub38 to i8*
  %33 = bitcast i8* %32 to %struct.Lisp_Cons*
  %u39 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %33, i32 0, i32 1
  %cdr40 = bitcast %union.anon* %u39 to i64*
  %34 = load i64, i64* %cdr40, align 8
  %shr41 = ashr i64 %34, 2
  %conv42 = trunc i64 %shr41 to i32
  store i32 %conv42, i32* %to, align 4
  %35 = load i64, i64* %char_table.addr, align 8
  %36 = load i32, i32* %from, align 4
  %call43 = call i64 @char_table_ref_and_range(i64 %35, i32 %36, i32* %from, i32* %to)
  store i64 %call43, i64* %val, align 8
  br label %if.end

if.else.44:                                       ; preds = %if.else.7
  call void (i8*, ...) @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0)) #3
  unreachable

if.end:                                           ; preds = %do.end.33
  br label %if.end.45

if.end.45:                                        ; preds = %if.end, %if.then.4
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.then
  %37 = load i64, i64* %val, align 8
  ret i64 %37
}

declare zeroext i1 @NATNUMP(i64) #2

declare i64 @CHAR_TABLE_REF(i64, i32) #2

; Function Attrs: nounwind uwtable
define i64 @Fset_char_table_range(i64 %char_table, i64 %range, i64 %value) #0 {
entry:
  %char_table.addr = alloca i64, align 8
  %range.addr = alloca i64, align 8
  %value.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %tmp = alloca i64, align 8
  %tmp28 = alloca i64, align 8
  store i64 %char_table, i64* %char_table.addr, align 8
  store i64 %range, i64* %range.addr, align 8
  store i64 %value, i64* %value.addr, align 8
  %0 = load i64, i64* %char_table.addr, align 8
  call void @CHECK_CHAR_TABLE(i64 %0)
  %1 = load i64, i64* %range.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 901)
  %cmp = icmp eq i64 %1, %call
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %char_table.addr, align 8
  %3 = load i64, i64* %value.addr, align 8
  call void @set_char_table_ascii(i64 %2, i64 %3)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @chartab_size, i32 0, i64 0), align 4
  %cmp1 = icmp slt i32 %4, %5
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i64, i64* %char_table.addr, align 8
  %7 = load i32, i32* %i, align 4
  %conv = sext i32 %7 to i64
  %8 = load i64, i64* %value.addr, align 8
  call void @set_char_table_contents(i64 %6, i64 %conv, i64 %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.53

if.else:                                          ; preds = %entry
  %10 = load i64, i64* %range.addr, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp3 = icmp eq i64 %10, %call2
  br i1 %cmp3, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else
  %11 = load i64, i64* %char_table.addr, align 8
  %12 = load i64, i64* %value.addr, align 8
  call void @set_char_table_defalt(i64 %11, i64 %12)
  br label %if.end.52

if.else.6:                                        ; preds = %if.else
  %13 = load i64, i64* %range.addr, align 8
  %call7 = call zeroext i1 @NATNUMP(i64 %13)
  br i1 %call7, label %land.lhs.true, label %if.else.14

land.lhs.true:                                    ; preds = %if.else.6
  %14 = load i64, i64* %range.addr, align 8
  %shr = ashr i64 %14, 2
  %cmp9 = icmp sle i64 %shr, 4194303
  br i1 %cmp9, label %if.then.11, label %if.else.14

if.then.11:                                       ; preds = %land.lhs.true
  %15 = load i64, i64* %char_table.addr, align 8
  %16 = load i64, i64* %range.addr, align 8
  %shr12 = ashr i64 %16, 2
  %conv13 = trunc i64 %shr12 to i32
  %17 = load i64, i64* %value.addr, align 8
  call void @char_table_set(i64 %15, i32 %conv13, i64 %17)
  br label %if.end.51

if.else.14:                                       ; preds = %land.lhs.true, %if.else.6
  %18 = load i64, i64* %range.addr, align 8
  %and = and i64 %18, 7
  %conv15 = trunc i64 %and to i32
  %cmp16 = icmp eq i32 %conv15, 3
  br i1 %cmp16, label %if.then.18, label %if.else.50

if.then.18:                                       ; preds = %if.else.14
  br label %do.body

do.body:                                          ; preds = %if.then.18
  %19 = load i64, i64* %range.addr, align 8
  %sub = sub nsw i64 %19, 3
  %20 = inttoptr i64 %sub to i8*
  %21 = bitcast i8* %20 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %21, i32 0, i32 0
  %22 = load i64, i64* %car, align 8
  store i64 %22, i64* %tmp, align 8
  %23 = load i64, i64* %tmp, align 8
  %call19 = call zeroext i1 @NATNUMP(i64 %23)
  br i1 %call19, label %land.lhs.true.21, label %cond.false

land.lhs.true.21:                                 ; preds = %do.body
  %24 = load i64, i64* %tmp, align 8
  %shr22 = ashr i64 %24, 2
  %cmp23 = icmp sle i64 %shr22, 4194303
  br i1 %cmp23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.21
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.21, %do.body
  %call25 = call i64 @builtin_lisp_symbol(i32 260)
  %25 = load i64, i64* %tmp, align 8
  %26 = call i64 @wrong_type_argument(i64 %call25, i64 %25) #3
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %27, %cond.true
  br label %do.end

do.end:                                           ; preds = %cond.end
  br label %do.body.26

do.body.26:                                       ; preds = %do.end
  %28 = load i64, i64* %range.addr, align 8
  %sub29 = sub nsw i64 %28, 3
  %29 = inttoptr i64 %sub29 to i8*
  %30 = bitcast i8* %29 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %30, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %31 = load i64, i64* %cdr, align 8
  store i64 %31, i64* %tmp28, align 8
  %32 = load i64, i64* %tmp28, align 8
  %call30 = call zeroext i1 @NATNUMP(i64 %32)
  br i1 %call30, label %land.lhs.true.32, label %cond.false.37

land.lhs.true.32:                                 ; preds = %do.body.26
  %33 = load i64, i64* %tmp28, align 8
  %shr33 = ashr i64 %33, 2
  %cmp34 = icmp sle i64 %shr33, 4194303
  br i1 %cmp34, label %cond.true.36, label %cond.false.37

cond.true.36:                                     ; preds = %land.lhs.true.32
  br label %cond.end.39

cond.false.37:                                    ; preds = %land.lhs.true.32, %do.body.26
  %call38 = call i64 @builtin_lisp_symbol(i32 260)
  %34 = load i64, i64* %tmp28, align 8
  %35 = call i64 @wrong_type_argument(i64 %call38, i64 %34) #3
  unreachable
                                                  ; No predecessors!
  br label %cond.end.39

cond.end.39:                                      ; preds = %36, %cond.true.36
  br label %do.end.40

do.end.40:                                        ; preds = %cond.end.39
  %37 = load i64, i64* %char_table.addr, align 8
  %38 = load i64, i64* %range.addr, align 8
  %sub41 = sub nsw i64 %38, 3
  %39 = inttoptr i64 %sub41 to i8*
  %40 = bitcast i8* %39 to %struct.Lisp_Cons*
  %car42 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %40, i32 0, i32 0
  %41 = load i64, i64* %car42, align 8
  %shr43 = ashr i64 %41, 2
  %conv44 = trunc i64 %shr43 to i32
  %42 = load i64, i64* %range.addr, align 8
  %sub45 = sub nsw i64 %42, 3
  %43 = inttoptr i64 %sub45 to i8*
  %44 = bitcast i8* %43 to %struct.Lisp_Cons*
  %u46 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %44, i32 0, i32 1
  %cdr47 = bitcast %union.anon* %u46 to i64*
  %45 = load i64, i64* %cdr47, align 8
  %shr48 = ashr i64 %45, 2
  %conv49 = trunc i64 %shr48 to i32
  %46 = load i64, i64* %value.addr, align 8
  call void @char_table_set_range(i64 %37, i32 %conv44, i32 %conv49, i64 %46)
  br label %if.end

if.else.50:                                       ; preds = %if.else.14
  call void (i8*, ...) @error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i32 0, i32 0)) #3
  unreachable

if.end:                                           ; preds = %do.end.40
  br label %if.end.51

if.end.51:                                        ; preds = %if.end, %if.then.11
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.then.5
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %for.end
  %47 = load i64, i64* %value.addr, align 8
  ret i64 %47
}

; Function Attrs: nounwind uwtable
define i64 @Foptimize_char_table(i64 %char_table, i64 %test) #0 {
entry:
  %char_table.addr = alloca i64, align 8
  %test.addr = alloca i64, align 8
  %elt = alloca i64, align 8
  %i = alloca i32, align 4
  store i64 %char_table, i64* %char_table.addr, align 8
  store i64 %test, i64* %test.addr, align 8
  %0 = load i64, i64* %char_table.addr, align 8
  call void @CHECK_CHAR_TABLE(i64 %0)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @chartab_size, i32 0, i64 0), align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i64, i64* %char_table.addr, align 8
  %call = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %4)
  %contents = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call, i32 0, i32 5
  %arrayidx = getelementptr inbounds [64 x i64], [64 x i64]* %contents, i32 0, i64 %idxprom
  %5 = load i64, i64* %arrayidx, align 8
  store i64 %5, i64* %elt, align 8
  %6 = load i64, i64* %elt, align 8
  %call1 = call zeroext i1 @SUB_CHAR_TABLE_P(i64 %6)
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i64, i64* %char_table.addr, align 8
  %8 = load i32, i32* %i, align 4
  %conv = sext i32 %8 to i64
  %9 = load i64, i64* %elt, align 8
  %10 = load i64, i64* %test.addr, align 8
  %call2 = call i64 @optimize_sub_char_table(i64 %9, i64 %10)
  call void @set_char_table_contents(i64 %7, i64 %conv, i64 %call2)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i64, i64* %char_table.addr, align 8
  %13 = load i64, i64* %char_table.addr, align 8
  %call3 = call i64 @char_table_ascii(i64 %13)
  call void @set_char_table_ascii(i64 %12, i64 %call3)
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call4
}

; Function Attrs: nounwind uwtable
define internal i64 @optimize_sub_char_table(i64 %table, i64 %test) #0 {
entry:
  %table.addr = alloca i64, align 8
  %test.addr = alloca i64, align 8
  %tbl = alloca %struct.Lisp_Sub_Char_Table*, align 8
  %i = alloca i32, align 4
  %depth = alloca i32, align 4
  %elt = alloca i64, align 8
  %this = alloca i64, align 8
  %optimizable = alloca i8, align 1
  store i64 %table, i64* %table.addr, align 8
  store i64 %test, i64* %test.addr, align 8
  %0 = load i64, i64* %table.addr, align 8
  %call = call %struct.Lisp_Sub_Char_Table* @XSUB_CHAR_TABLE(i64 %0)
  store %struct.Lisp_Sub_Char_Table* %call, %struct.Lisp_Sub_Char_Table** %tbl, align 8
  %1 = load %struct.Lisp_Sub_Char_Table*, %struct.Lisp_Sub_Char_Table** %tbl, align 8
  %depth1 = getelementptr inbounds %struct.Lisp_Sub_Char_Table, %struct.Lisp_Sub_Char_Table* %1, i32 0, i32 1
  %2 = load i32, i32* %depth1, align 4
  store i32 %2, i32* %depth, align 4
  %3 = load i64, i64* %table.addr, align 8
  %call2 = call %struct.Lisp_Sub_Char_Table* @XSUB_CHAR_TABLE(i64 %3)
  %contents = getelementptr inbounds %struct.Lisp_Sub_Char_Table, %struct.Lisp_Sub_Char_Table* %call2, i32 0, i32 3
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* %contents, i32 0, i64 0
  %4 = load i64, i64* %arrayidx, align 8
  store i64 %4, i64* %elt, align 8
  %5 = load i64, i64* %elt, align 8
  %call3 = call zeroext i1 @SUB_CHAR_TABLE_P(i64 %5)
  br i1 %call3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i64, i64* %elt, align 8
  %7 = load i64, i64* %test.addr, align 8
  %call4 = call i64 @optimize_sub_char_table(i64 %6, i64 %7)
  store i64 %call4, i64* %elt, align 8
  %8 = load i64, i64* %table.addr, align 8
  %9 = load i64, i64* %elt, align 8
  call void @set_sub_char_table_contents(i64 %8, i64 0, i64 %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i64, i64* %elt, align 8
  %call5 = call zeroext i1 @SUB_CHAR_TABLE_P(i64 %10)
  %cond = select i1 %call5, i32 0, i32 1
  %tobool = icmp ne i32 %cond, 0
  %frombool = zext i1 %tobool to i8
  store i8 %frombool, i8* %optimizable, align 1
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %depth, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx6 = getelementptr inbounds [4 x i32], [4 x i32]* @chartab_size, i32 0, i64 %idxprom
  %13 = load i32, i32* %arrayidx6, align 4
  %cmp = icmp slt i32 %11, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %14 to i64
  %15 = load i64, i64* %table.addr, align 8
  %call8 = call %struct.Lisp_Sub_Char_Table* @XSUB_CHAR_TABLE(i64 %15)
  %contents9 = getelementptr inbounds %struct.Lisp_Sub_Char_Table, %struct.Lisp_Sub_Char_Table* %call8, i32 0, i32 3
  %arrayidx10 = getelementptr inbounds [0 x i64], [0 x i64]* %contents9, i32 0, i64 %idxprom7
  %16 = load i64, i64* %arrayidx10, align 8
  store i64 %16, i64* %this, align 8
  %17 = load i64, i64* %this, align 8
  %call11 = call zeroext i1 @SUB_CHAR_TABLE_P(i64 %17)
  br i1 %call11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %for.body
  %18 = load i64, i64* %this, align 8
  %19 = load i64, i64* %test.addr, align 8
  %call13 = call i64 @optimize_sub_char_table(i64 %18, i64 %19)
  store i64 %call13, i64* %this, align 8
  %20 = load i64, i64* %table.addr, align 8
  %21 = load i32, i32* %i, align 4
  %conv = sext i32 %21 to i64
  %22 = load i64, i64* %this, align 8
  call void @set_sub_char_table_contents(i64 %20, i64 %conv, i64 %22)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %for.body
  %23 = load i8, i8* %optimizable, align 1
  %tobool15 = trunc i8 %23 to i1
  br i1 %tobool15, label %land.lhs.true, label %if.end.36

land.lhs.true:                                    ; preds = %if.end.14
  %24 = load i64, i64* %test.addr, align 8
  %call17 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp18 = icmp eq i64 %24, %call17
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %25 = load i64, i64* %this, align 8
  %26 = load i64, i64* %elt, align 8
  %call20 = call i64 @Fequal(i64 %25, i64 %26)
  %call21 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp22 = icmp eq i64 %call20, %call21
  br i1 %cmp22, label %if.then.35, label %if.end.36

cond.false:                                       ; preds = %land.lhs.true
  %27 = load i64, i64* %test.addr, align 8
  %call24 = call i64 @builtin_lisp_symbol(i32 369)
  %cmp25 = icmp eq i64 %27, %call24
  br i1 %cmp25, label %cond.true.27, label %cond.false.30

cond.true.27:                                     ; preds = %cond.false
  %28 = load i64, i64* %this, align 8
  %29 = load i64, i64* %elt, align 8
  %cmp28 = icmp eq i64 %28, %29
  br i1 %cmp28, label %if.end.36, label %if.then.35

cond.false.30:                                    ; preds = %cond.false
  %30 = load i64, i64* %test.addr, align 8
  %31 = load i64, i64* %this, align 8
  %32 = load i64, i64* %elt, align 8
  %call31 = call i64 @call2(i64 %30, i64 %31, i64 %32)
  %call32 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp33 = icmp eq i64 %call31, %call32
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %cond.false.30, %cond.true.27, %cond.true
  store i8 0, i8* %optimizable, align 1
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %cond.false.30, %cond.true.27, %cond.true, %if.end.14
  br label %for.inc

for.inc:                                          ; preds = %if.end.36
  %33 = load i32, i32* %i, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load i8, i8* %optimizable, align 1
  %tobool37 = trunc i8 %34 to i1
  br i1 %tobool37, label %cond.true.39, label %cond.false.40

cond.true.39:                                     ; preds = %for.end
  %35 = load i64, i64* %elt, align 8
  br label %cond.end

cond.false.40:                                    ; preds = %for.end
  %36 = load i64, i64* %table.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.40, %cond.true.39
  %cond41 = phi i64 [ %35, %cond.true.39 ], [ %36, %cond.false.40 ]
  ret i64 %cond41
}

; Function Attrs: nounwind uwtable
define void @map_char_table(void (i64, i64, i64)* %c_function, i64 %function, i64 %table, i64 %arg) #0 {
entry:
  %c_function.addr = alloca void (i64, i64, i64)*, align 8
  %function.addr = alloca i64, align 8
  %table.addr = alloca i64, align 8
  %arg.addr = alloca i64, align 8
  %range = alloca i64, align 8
  %val = alloca i64, align 8
  %parent = alloca i64, align 8
  %decoder = alloca i64 (i64, i64)*, align 8
  %temp = alloca i64, align 8
  %from = alloca i32, align 4
  store void (i64, i64, i64)* %c_function, void (i64, i64, i64)** %c_function.addr, align 8
  store i64 %function, i64* %function.addr, align 8
  store i64 %table, i64* %table.addr, align 8
  store i64 %arg, i64* %arg.addr, align 8
  %0 = load i64, i64* %table.addr, align 8
  %call = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %0)
  %purpose = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call, i32 0, i32 3
  %1 = load i64, i64* %purpose, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 254)
  %cmp = icmp eq i64 %1, %call1
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, i64* %table.addr, align 8
  %call2 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %2)
  %call3 = call i32 @CHAR_TABLE_EXTRA_SLOTS(%struct.Lisp_Char_Table* %call2)
  %cmp4 = icmp eq i32 %call3, 5
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %3 = load i64, i64* %table.addr, align 8
  %call5 = call i64 (i64, i64)* @uniprop_get_decoder(i64 %3)
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 (i64, i64)* [ %call5, %cond.true ], [ null, %cond.false ]
  store i64 (i64, i64)* %cond, i64 (i64, i64)** %decoder, align 8
  %call6 = call i64 @Fcons(i64 2, i64 16777214)
  store i64 %call6, i64* %range, align 8
  %4 = load i64, i64* %table.addr, align 8
  %call7 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %4)
  %parent8 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call7, i32 0, i32 2
  %5 = load i64, i64* %parent8, align 8
  store i64 %5, i64* %parent, align 8
  %6 = load i64, i64* %table.addr, align 8
  %call9 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %6)
  %ascii = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call9, i32 0, i32 4
  %7 = load i64, i64* %ascii, align 8
  store i64 %7, i64* %val, align 8
  %8 = load i64, i64* %val, align 8
  %call10 = call zeroext i1 @SUB_CHAR_TABLE_P(i64 %8)
  br i1 %call10, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %9 = load i64, i64* %val, align 8
  %call11 = call %struct.Lisp_Sub_Char_Table* @XSUB_CHAR_TABLE(i64 %9)
  %contents = getelementptr inbounds %struct.Lisp_Sub_Char_Table, %struct.Lisp_Sub_Char_Table* %call11, i32 0, i32 3
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* %contents, i32 0, i64 0
  %10 = load i64, i64* %arrayidx, align 8
  store i64 %10, i64* %val, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %11 = load void (i64, i64, i64)*, void (i64, i64, i64)** %c_function.addr, align 8
  %12 = load i64, i64* %function.addr, align 8
  %13 = load i64, i64* %table.addr, align 8
  %14 = load i64, i64* %arg.addr, align 8
  %15 = load i64, i64* %val, align 8
  %16 = load i64, i64* %range, align 8
  %17 = load i64, i64* %table.addr, align 8
  %call12 = call i64 @map_sub_char_table(void (i64, i64, i64)* %11, i64 %12, i64 %13, i64 %14, i64 %15, i64 %16, i64 %17)
  store i64 %call12, i64* %val, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %18 = load i64, i64* %val, align 8
  %call13 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp14 = icmp eq i64 %18, %call13
  br i1 %cmp14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %19 = load i64, i64* %table.addr, align 8
  %call15 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %19)
  %parent16 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call15, i32 0, i32 2
  %20 = load i64, i64* %parent16, align 8
  %call17 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp18 = icmp eq i64 %20, %call17
  %lnot = xor i1 %cmp18, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %21 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %21, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %22 = load i64, i64* %range, align 8
  %sub = sub nsw i64 %22, 3
  %23 = inttoptr i64 %sub to i8*
  %24 = bitcast i8* %23 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %24, i32 0, i32 0
  %25 = load i64, i64* %car, align 8
  %shr = ashr i64 %25, 2
  %conv = trunc i64 %shr to i32
  store i32 %conv, i32* %from, align 4
  %26 = load i64, i64* %table.addr, align 8
  %call19 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %26)
  %parent20 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call19, i32 0, i32 2
  %27 = load i64, i64* %parent20, align 8
  store i64 %27, i64* %parent, align 8
  %28 = load i64, i64* %parent, align 8
  %call21 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %28)
  %parent22 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call21, i32 0, i32 2
  %29 = load i64, i64* %parent22, align 8
  store i64 %29, i64* %temp, align 8
  %30 = load i64, i64* %parent, align 8
  %call23 = call i64 @builtin_lisp_symbol(i32 0)
  call void @set_char_table_parent(i64 %30, i64 %call23)
  %31 = load i64, i64* %parent, align 8
  %32 = load i32, i32* %from, align 4
  %call24 = call i64 @CHAR_TABLE_REF(i64 %31, i32 %32)
  store i64 %call24, i64* %val, align 8
  %33 = load i64, i64* %parent, align 8
  %34 = load i64, i64* %temp, align 8
  call void @set_char_table_parent(i64 %33, i64 %34)
  %35 = load void (i64, i64, i64)*, void (i64, i64, i64)** %c_function.addr, align 8
  %36 = load i64, i64* %function.addr, align 8
  %37 = load i64, i64* %parent, align 8
  %38 = load i64, i64* %arg.addr, align 8
  %39 = load i64, i64* %val, align 8
  %40 = load i64, i64* %range, align 8
  %41 = load i64, i64* %parent, align 8
  %call25 = call i64 @map_sub_char_table(void (i64, i64, i64)* %35, i64 %36, i64 %37, i64 %38, i64 %39, i64 %40, i64 %41)
  store i64 %call25, i64* %val, align 8
  %42 = load i64, i64* %parent, align 8
  store i64 %42, i64* %table.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %43 = load i64, i64* %val, align 8
  %call26 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp27 = icmp eq i64 %43, %call26
  br i1 %cmp27, label %if.end.58, label %if.then.29

if.then.29:                                       ; preds = %while.end
  %44 = load i64, i64* %range, align 8
  %sub30 = sub nsw i64 %44, 3
  %45 = inttoptr i64 %sub30 to i8*
  %46 = bitcast i8* %45 to %struct.Lisp_Cons*
  %car31 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %46, i32 0, i32 0
  %47 = load i64, i64* %car31, align 8
  %48 = load i64, i64* %range, align 8
  %sub32 = sub nsw i64 %48, 3
  %49 = inttoptr i64 %sub32 to i8*
  %50 = bitcast i8* %49 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %50, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %51 = load i64, i64* %cdr, align 8
  %cmp33 = icmp eq i64 %47, %51
  br i1 %cmp33, label %if.then.35, label %if.else.47

if.then.35:                                       ; preds = %if.then.29
  %52 = load void (i64, i64, i64)*, void (i64, i64, i64)** %c_function.addr, align 8
  %tobool = icmp ne void (i64, i64, i64)* %52, null
  br i1 %tobool, label %if.then.36, label %if.else

if.then.36:                                       ; preds = %if.then.35
  %53 = load void (i64, i64, i64)*, void (i64, i64, i64)** %c_function.addr, align 8
  %54 = load i64, i64* %arg.addr, align 8
  %55 = load i64, i64* %range, align 8
  %sub37 = sub nsw i64 %55, 3
  %56 = inttoptr i64 %sub37 to i8*
  %57 = bitcast i8* %56 to %struct.Lisp_Cons*
  %car38 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %57, i32 0, i32 0
  %58 = load i64, i64* %car38, align 8
  %59 = load i64, i64* %val, align 8
  call void %53(i64 %54, i64 %58, i64 %59)
  br label %if.end.46

if.else:                                          ; preds = %if.then.35
  %60 = load i64 (i64, i64)*, i64 (i64, i64)** %decoder, align 8
  %tobool39 = icmp ne i64 (i64, i64)* %60, null
  br i1 %tobool39, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %if.else
  %61 = load i64 (i64, i64)*, i64 (i64, i64)** %decoder, align 8
  %62 = load i64, i64* %table.addr, align 8
  %63 = load i64, i64* %val, align 8
  %call41 = call i64 %61(i64 %62, i64 %63)
  store i64 %call41, i64* %val, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %if.else
  %64 = load i64, i64* %function.addr, align 8
  %65 = load i64, i64* %range, align 8
  %sub43 = sub nsw i64 %65, 3
  %66 = inttoptr i64 %sub43 to i8*
  %67 = bitcast i8* %66 to %struct.Lisp_Cons*
  %car44 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %67, i32 0, i32 0
  %68 = load i64, i64* %car44, align 8
  %69 = load i64, i64* %val, align 8
  %call45 = call i64 @call2(i64 %64, i64 %68, i64 %69)
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.42, %if.then.36
  br label %if.end.57

if.else.47:                                       ; preds = %if.then.29
  %70 = load void (i64, i64, i64)*, void (i64, i64, i64)** %c_function.addr, align 8
  %tobool48 = icmp ne void (i64, i64, i64)* %70, null
  br i1 %tobool48, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %if.else.47
  %71 = load void (i64, i64, i64)*, void (i64, i64, i64)** %c_function.addr, align 8
  %72 = load i64, i64* %arg.addr, align 8
  %73 = load i64, i64* %range, align 8
  %74 = load i64, i64* %val, align 8
  call void %71(i64 %72, i64 %73, i64 %74)
  br label %if.end.56

if.else.50:                                       ; preds = %if.else.47
  %75 = load i64 (i64, i64)*, i64 (i64, i64)** %decoder, align 8
  %tobool51 = icmp ne i64 (i64, i64)* %75, null
  br i1 %tobool51, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %if.else.50
  %76 = load i64 (i64, i64)*, i64 (i64, i64)** %decoder, align 8
  %77 = load i64, i64* %table.addr, align 8
  %78 = load i64, i64* %val, align 8
  %call53 = call i64 %76(i64 %77, i64 %78)
  store i64 %call53, i64* %val, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.52, %if.else.50
  %79 = load i64, i64* %function.addr, align 8
  %80 = load i64, i64* %range, align 8
  %81 = load i64, i64* %val, align 8
  %call55 = call i64 @call2(i64 %79, i64 %80, i64 %81)
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.54, %if.then.49
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.end.46
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %while.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 (i64, i64)* @uniprop_get_decoder(i64 %table) #0 {
entry:
  %retval = alloca i64 (i64, i64)*, align 8
  %table.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i64 %table, i64* %table.addr, align 8
  %0 = load i64, i64* %table.addr, align 8
  %call = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %0)
  %extras = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call, i32 0, i32 6
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* %extras, i32 0, i64 1
  %1 = load i64, i64* %arrayidx, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %and1 = and i32 %conv, -5
  %cmp = icmp eq i32 %and1, 2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i64 (i64, i64)* null, i64 (i64, i64)** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %table.addr, align 8
  %call3 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %2)
  %extras4 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call3, i32 0, i32 6
  %arrayidx5 = getelementptr inbounds [0 x i64], [0 x i64]* %extras4, i32 0, i64 1
  %3 = load i64, i64* %arrayidx5, align 8
  %shr = ashr i64 %3, 2
  store i64 %shr, i64* %i, align 8
  %4 = load i64, i64* %i, align 8
  %cmp6 = icmp slt i64 %4, 0
  br i1 %cmp6, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i64, i64* %i, align 8
  %cmp8 = icmp sge i64 %5, 1
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %lor.lhs.false, %if.end
  store i64 (i64, i64)* null, i64 (i64, i64)** %retval
  br label %return

if.end.11:                                        ; preds = %lor.lhs.false
  %6 = load i64, i64* %i, align 8
  %arrayidx12 = getelementptr inbounds [1 x i64 (i64, i64)*], [1 x i64 (i64, i64)*]* @uniprop_decoder, i32 0, i64 %6
  %7 = load i64 (i64, i64)*, i64 (i64, i64)** %arrayidx12, align 8
  store i64 (i64, i64)* %7, i64 (i64, i64)** %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.10, %if.then
  %8 = load i64 (i64, i64)*, i64 (i64, i64)** %retval
  ret i64 (i64, i64)* %8
}

declare i64 @Fcons(i64, i64) #2

; Function Attrs: nounwind uwtable
define internal i64 @map_sub_char_table(void (i64, i64, i64)* %c_function, i64 %function, i64 %table, i64 %arg, i64 %val, i64 %range, i64 %top) #0 {
entry:
  %c_function.addr = alloca void (i64, i64, i64)*, align 8
  %function.addr = alloca i64, align 8
  %table.addr = alloca i64, align 8
  %arg.addr = alloca i64, align 8
  %val.addr = alloca i64, align 8
  %range.addr = alloca i64, align 8
  %top.addr = alloca i64, align 8
  %depth = alloca i32, align 4
  %min_char = alloca i32, align 4
  %max_char = alloca i32, align 4
  %chars_in_block = alloca i32, align 4
  %from = alloca i32, align 4
  %to = alloca i32, align 4
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %is_uniprop = alloca i8, align 1
  %decoder = alloca i64 (i64, i64)*, align 8
  %tbl = alloca %struct.Lisp_Sub_Char_Table*, align 8
  %this = alloca i64, align 8
  %nextc = alloca i32, align 4
  %different_value = alloca i8, align 1
  %parent104 = alloca i64, align 8
  %temp = alloca i64, align 8
  store void (i64, i64, i64)* %c_function, void (i64, i64, i64)** %c_function.addr, align 8
  store i64 %function, i64* %function.addr, align 8
  store i64 %table, i64* %table.addr, align 8
  store i64 %arg, i64* %arg.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  store i64 %range, i64* %range.addr, align 8
  store i64 %top, i64* %top.addr, align 8
  %0 = load i64, i64* %range.addr, align 8
  %sub = sub nsw i64 %0, 3
  %1 = inttoptr i64 %sub to i8*
  %2 = bitcast i8* %1 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %2, i32 0, i32 0
  %3 = load i64, i64* %car, align 8
  %shr = ashr i64 %3, 2
  %conv = trunc i64 %shr to i32
  store i32 %conv, i32* %from, align 4
  %4 = load i64, i64* %range.addr, align 8
  %sub1 = sub nsw i64 %4, 3
  %5 = inttoptr i64 %sub1 to i8*
  %6 = bitcast i8* %5 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %6, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %7 = load i64, i64* %cdr, align 8
  %shr2 = ashr i64 %7, 2
  %conv3 = trunc i64 %shr2 to i32
  store i32 %conv3, i32* %to, align 4
  %8 = load i64, i64* %top.addr, align 8
  %call = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %8)
  %purpose = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call, i32 0, i32 3
  %9 = load i64, i64* %purpose, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 254)
  %cmp = icmp eq i64 %9, %call4
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %10 = load i64, i64* %top.addr, align 8
  %call6 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %10)
  %call7 = call i32 @CHAR_TABLE_EXTRA_SLOTS(%struct.Lisp_Char_Table* %call6)
  %cmp8 = icmp eq i32 %call7, 5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %11 = phi i1 [ false, %entry ], [ %cmp8, %land.rhs ]
  %frombool = zext i1 %11 to i8
  store i8 %frombool, i8* %is_uniprop, align 1
  %12 = load i64, i64* %top.addr, align 8
  %call10 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %12)
  %purpose11 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call10, i32 0, i32 3
  %13 = load i64, i64* %purpose11, align 8
  %call12 = call i64 @builtin_lisp_symbol(i32 254)
  %cmp13 = icmp eq i64 %13, %call12
  br i1 %cmp13, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %land.end
  %14 = load i64, i64* %top.addr, align 8
  %call15 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %14)
  %call16 = call i32 @CHAR_TABLE_EXTRA_SLOTS(%struct.Lisp_Char_Table* %call15)
  %cmp17 = icmp eq i32 %call16, 5
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %15 = load i64, i64* %top.addr, align 8
  %call19 = call i64 (i64, i64)* @uniprop_get_decoder(i64 %15)
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %land.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 (i64, i64)* [ %call19, %cond.true ], [ null, %cond.false ]
  store i64 (i64, i64)* %cond, i64 (i64, i64)** %decoder, align 8
  %16 = load i64, i64* %table.addr, align 8
  %call20 = call zeroext i1 @SUB_CHAR_TABLE_P(i64 %16)
  br i1 %call20, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %17 = load i64, i64* %table.addr, align 8
  %call21 = call %struct.Lisp_Sub_Char_Table* @XSUB_CHAR_TABLE(i64 %17)
  store %struct.Lisp_Sub_Char_Table* %call21, %struct.Lisp_Sub_Char_Table** %tbl, align 8
  %18 = load %struct.Lisp_Sub_Char_Table*, %struct.Lisp_Sub_Char_Table** %tbl, align 8
  %depth22 = getelementptr inbounds %struct.Lisp_Sub_Char_Table, %struct.Lisp_Sub_Char_Table* %18, i32 0, i32 1
  %19 = load i32, i32* %depth22, align 4
  store i32 %19, i32* %depth, align 4
  %20 = load %struct.Lisp_Sub_Char_Table*, %struct.Lisp_Sub_Char_Table** %tbl, align 8
  %min_char23 = getelementptr inbounds %struct.Lisp_Sub_Char_Table, %struct.Lisp_Sub_Char_Table* %20, i32 0, i32 2
  %21 = load i32, i32* %min_char23, align 4
  store i32 %21, i32* %min_char, align 4
  %22 = load i32, i32* %min_char, align 4
  %23 = load i32, i32* %depth, align 4
  %sub24 = sub nsw i32 %23, 1
  %idxprom = sext i32 %sub24 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* @chartab_chars, i32 0, i64 %idxprom
  %24 = load i32, i32* %arrayidx, align 4
  %add = add nsw i32 %22, %24
  %sub25 = sub nsw i32 %add, 1
  store i32 %sub25, i32* %max_char, align 4
  br label %if.end

if.else:                                          ; preds = %cond.end
  store i32 0, i32* %depth, align 4
  store i32 0, i32* %min_char, align 4
  store i32 4194303, i32* %max_char, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %25 = load i32, i32* %depth, align 4
  %idxprom26 = sext i32 %25 to i64
  %arrayidx27 = getelementptr inbounds [4 x i32], [4 x i32]* @chartab_chars, i32 0, i64 %idxprom26
  %26 = load i32, i32* %arrayidx27, align 4
  store i32 %26, i32* %chars_in_block, align 4
  %27 = load i32, i32* %to, align 4
  %28 = load i32, i32* %max_char, align 4
  %cmp28 = icmp slt i32 %27, %28
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end
  %29 = load i32, i32* %to, align 4
  store i32 %29, i32* %max_char, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.end
  %30 = load i32, i32* %from, align 4
  %31 = load i32, i32* %min_char, align 4
  %cmp32 = icmp sle i32 %30, %31
  br i1 %cmp32, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %if.end.31
  store i32 0, i32* %i, align 4
  br label %if.end.37

if.else.35:                                       ; preds = %if.end.31
  %32 = load i32, i32* %from, align 4
  %33 = load i32, i32* %min_char, align 4
  %sub36 = sub nsw i32 %32, %33
  %34 = load i32, i32* %chars_in_block, align 4
  %div = sdiv i32 %sub36, %34
  store i32 %div, i32* %i, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.35, %if.then.34
  %35 = load i32, i32* %min_char, align 4
  %36 = load i32, i32* %chars_in_block, align 4
  %37 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %36, %37
  %add38 = add nsw i32 %35, %mul
  store i32 %add38, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.37
  %38 = load i32, i32* %c, align 4
  %39 = load i32, i32* %max_char, align 4
  %cmp39 = icmp sle i32 %38, %39
  br i1 %cmp39, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %40 = load i64, i64* %table.addr, align 8
  %call41 = call zeroext i1 @SUB_CHAR_TABLE_P(i64 %40)
  br i1 %call41, label %cond.true.43, label %cond.false.47

cond.true.43:                                     ; preds = %for.body
  %41 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %41 to i64
  %42 = load i64, i64* %table.addr, align 8
  %call45 = call %struct.Lisp_Sub_Char_Table* @XSUB_CHAR_TABLE(i64 %42)
  %contents = getelementptr inbounds %struct.Lisp_Sub_Char_Table, %struct.Lisp_Sub_Char_Table* %call45, i32 0, i32 3
  %arrayidx46 = getelementptr inbounds [0 x i64], [0 x i64]* %contents, i32 0, i64 %idxprom44
  %43 = load i64, i64* %arrayidx46, align 8
  br label %cond.end.52

cond.false.47:                                    ; preds = %for.body
  %44 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %44 to i64
  %45 = load i64, i64* %table.addr, align 8
  %call49 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %45)
  %contents50 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call49, i32 0, i32 5
  %arrayidx51 = getelementptr inbounds [64 x i64], [64 x i64]* %contents50, i32 0, i64 %idxprom48
  %46 = load i64, i64* %arrayidx51, align 8
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.47, %cond.true.43
  %cond53 = phi i64 [ %43, %cond.true.43 ], [ %46, %cond.false.47 ]
  store i64 %cond53, i64* %this, align 8
  %47 = load i32, i32* %c, align 4
  %48 = load i32, i32* %chars_in_block, align 4
  %add54 = add nsw i32 %47, %48
  store i32 %add54, i32* %nextc, align 4
  %49 = load i8, i8* %is_uniprop, align 1
  %tobool = trunc i8 %49 to i1
  br i1 %tobool, label %land.lhs.true.56, label %if.end.74

land.lhs.true.56:                                 ; preds = %cond.end.52
  %50 = load i64, i64* %this, align 8
  %call57 = call zeroext i1 @STRINGP(i64 %50)
  br i1 %call57, label %land.lhs.true.59, label %if.end.74

land.lhs.true.59:                                 ; preds = %land.lhs.true.56
  %51 = load i64, i64* %this, align 8
  %call60 = call i64 @SCHARS(i64 %51)
  %cmp61 = icmp sgt i64 %call60, 0
  br i1 %cmp61, label %land.lhs.true.63, label %if.end.74

land.lhs.true.63:                                 ; preds = %land.lhs.true.59
  %52 = load i64, i64* %this, align 8
  %call64 = call zeroext i8 @SREF(i64 %52, i64 0)
  %conv65 = zext i8 %call64 to i32
  %cmp66 = icmp eq i32 %conv65, 1
  br i1 %cmp66, label %if.then.72, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.63
  %53 = load i64, i64* %this, align 8
  %call68 = call zeroext i8 @SREF(i64 %53, i64 0)
  %conv69 = zext i8 %call68 to i32
  %cmp70 = icmp eq i32 %conv69, 2
  br i1 %cmp70, label %if.then.72, label %if.end.74

if.then.72:                                       ; preds = %lor.lhs.false, %land.lhs.true.63
  %54 = load i64, i64* %table.addr, align 8
  %55 = load i32, i32* %i, align 4
  %call73 = call i64 @uniprop_table_uncompress(i64 %54, i32 %55)
  store i64 %call73, i64* %this, align 8
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.72, %lor.lhs.false, %land.lhs.true.59, %land.lhs.true.56, %cond.end.52
  %56 = load i64, i64* %this, align 8
  %call75 = call zeroext i1 @SUB_CHAR_TABLE_P(i64 %56)
  br i1 %call75, label %if.then.76, label %if.else.85

if.then.76:                                       ; preds = %if.end.74
  %57 = load i32, i32* %to, align 4
  %58 = load i32, i32* %nextc, align 4
  %cmp77 = icmp sge i32 %57, %58
  br i1 %cmp77, label %if.then.79, label %if.end.83

if.then.79:                                       ; preds = %if.then.76
  %59 = load i64, i64* %range.addr, align 8
  %60 = load i32, i32* %nextc, align 4
  %sub80 = sub nsw i32 %60, 1
  %conv81 = sext i32 %sub80 to i64
  %shl = shl i64 %conv81, 2
  %add82 = add i64 %shl, 2
  call void @XSETCDR(i64 %59, i64 %add82)
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.79, %if.then.76
  %61 = load void (i64, i64, i64)*, void (i64, i64, i64)** %c_function.addr, align 8
  %62 = load i64, i64* %function.addr, align 8
  %63 = load i64, i64* %this, align 8
  %64 = load i64, i64* %arg.addr, align 8
  %65 = load i64, i64* %val.addr, align 8
  %66 = load i64, i64* %range.addr, align 8
  %67 = load i64, i64* %top.addr, align 8
  %call84 = call i64 @map_sub_char_table(void (i64, i64, i64)* %61, i64 %62, i64 %63, i64 %64, i64 %65, i64 %66, i64 %67)
  store i64 %call84, i64* %val.addr, align 8
  br label %if.end.170

if.else.85:                                       ; preds = %if.end.74
  %68 = load i64, i64* %this, align 8
  %call86 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp87 = icmp eq i64 %68, %call86
  br i1 %cmp87, label %if.then.89, label %if.end.91

if.then.89:                                       ; preds = %if.else.85
  %69 = load i64, i64* %top.addr, align 8
  %call90 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %69)
  %defalt = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call90, i32 0, i32 1
  %70 = load i64, i64* %defalt, align 8
  store i64 %70, i64* %this, align 8
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.89, %if.else.85
  %71 = load i64, i64* %val.addr, align 8
  %72 = load i64, i64* %this, align 8
  %cmp92 = icmp eq i64 %71, %72
  br i1 %cmp92, label %if.end.169, label %if.then.94

if.then.94:                                       ; preds = %if.end.91
  store i8 1, i8* %different_value, align 1
  %73 = load i64, i64* %val.addr, align 8
  %call95 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp96 = icmp eq i64 %73, %call95
  br i1 %cmp96, label %if.then.98, label %if.end.121

if.then.98:                                       ; preds = %if.then.94
  %74 = load i64, i64* %top.addr, align 8
  %call99 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %74)
  %parent = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call99, i32 0, i32 2
  %75 = load i64, i64* %parent, align 8
  %call100 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp101 = icmp eq i64 %75, %call100
  br i1 %cmp101, label %if.end.120, label %if.then.103

if.then.103:                                      ; preds = %if.then.98
  %76 = load i64, i64* %top.addr, align 8
  %call105 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %76)
  %parent106 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call105, i32 0, i32 2
  %77 = load i64, i64* %parent106, align 8
  store i64 %77, i64* %parent104, align 8
  %78 = load i64, i64* %parent104, align 8
  %call107 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %78)
  %parent108 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call107, i32 0, i32 2
  %79 = load i64, i64* %parent108, align 8
  store i64 %79, i64* %temp, align 8
  %80 = load i64, i64* %parent104, align 8
  %call109 = call i64 @builtin_lisp_symbol(i32 0)
  call void @set_char_table_parent(i64 %80, i64 %call109)
  %81 = load i64, i64* %parent104, align 8
  %82 = load i32, i32* %from, align 4
  %call110 = call i64 @CHAR_TABLE_REF(i64 %81, i32 %82)
  store i64 %call110, i64* %val.addr, align 8
  %83 = load i64, i64* %parent104, align 8
  %84 = load i64, i64* %temp, align 8
  call void @set_char_table_parent(i64 %83, i64 %84)
  %85 = load i64, i64* %range.addr, align 8
  %86 = load i32, i32* %c, align 4
  %sub111 = sub nsw i32 %86, 1
  %conv112 = sext i32 %sub111 to i64
  %shl113 = shl i64 %conv112, 2
  %add114 = add i64 %shl113, 2
  call void @XSETCDR(i64 %85, i64 %add114)
  %87 = load void (i64, i64, i64)*, void (i64, i64, i64)** %c_function.addr, align 8
  %88 = load i64, i64* %function.addr, align 8
  %89 = load i64, i64* %parent104, align 8
  %90 = load i64, i64* %arg.addr, align 8
  %91 = load i64, i64* %val.addr, align 8
  %92 = load i64, i64* %range.addr, align 8
  %93 = load i64, i64* %parent104, align 8
  %call115 = call i64 @map_sub_char_table(void (i64, i64, i64)* %87, i64 %88, i64 %89, i64 %90, i64 %91, i64 %92, i64 %93)
  store i64 %call115, i64* %val.addr, align 8
  %94 = load i64, i64* %val.addr, align 8
  %95 = load i64, i64* %this, align 8
  %cmp116 = icmp eq i64 %94, %95
  br i1 %cmp116, label %if.then.118, label %if.end.119

if.then.118:                                      ; preds = %if.then.103
  store i8 0, i8* %different_value, align 1
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.118, %if.then.103
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %if.then.98
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %if.then.94
  %96 = load i64, i64* %val.addr, align 8
  %call122 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp123 = icmp eq i64 %96, %call122
  br i1 %cmp123, label %if.end.165, label %land.lhs.true.125

land.lhs.true.125:                                ; preds = %if.end.121
  %97 = load i8, i8* %different_value, align 1
  %tobool126 = trunc i8 %97 to i1
  br i1 %tobool126, label %if.then.128, label %if.end.165

if.then.128:                                      ; preds = %land.lhs.true.125
  %98 = load i64, i64* %range.addr, align 8
  %99 = load i32, i32* %c, align 4
  %sub129 = sub nsw i32 %99, 1
  %conv130 = sext i32 %sub129 to i64
  %shl131 = shl i64 %conv130, 2
  %add132 = add i64 %shl131, 2
  call void @XSETCDR(i64 %98, i64 %add132)
  %100 = load i64, i64* %range.addr, align 8
  %sub133 = sub nsw i64 %100, 3
  %101 = inttoptr i64 %sub133 to i8*
  %102 = bitcast i8* %101 to %struct.Lisp_Cons*
  %car134 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %102, i32 0, i32 0
  %103 = load i64, i64* %car134, align 8
  %104 = load i64, i64* %range.addr, align 8
  %sub135 = sub nsw i64 %104, 3
  %105 = inttoptr i64 %sub135 to i8*
  %106 = bitcast i8* %105 to %struct.Lisp_Cons*
  %u136 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %106, i32 0, i32 1
  %cdr137 = bitcast %union.anon* %u136 to i64*
  %107 = load i64, i64* %cdr137, align 8
  %cmp138 = icmp eq i64 %103, %107
  br i1 %cmp138, label %if.then.140, label %if.else.154

if.then.140:                                      ; preds = %if.then.128
  %108 = load void (i64, i64, i64)*, void (i64, i64, i64)** %c_function.addr, align 8
  %tobool141 = icmp ne void (i64, i64, i64)* %108, null
  br i1 %tobool141, label %if.then.142, label %if.else.145

if.then.142:                                      ; preds = %if.then.140
  %109 = load void (i64, i64, i64)*, void (i64, i64, i64)** %c_function.addr, align 8
  %110 = load i64, i64* %arg.addr, align 8
  %111 = load i64, i64* %range.addr, align 8
  %sub143 = sub nsw i64 %111, 3
  %112 = inttoptr i64 %sub143 to i8*
  %113 = bitcast i8* %112 to %struct.Lisp_Cons*
  %car144 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %113, i32 0, i32 0
  %114 = load i64, i64* %car144, align 8
  %115 = load i64, i64* %val.addr, align 8
  call void %109(i64 %110, i64 %114, i64 %115)
  br label %if.end.153

if.else.145:                                      ; preds = %if.then.140
  %116 = load i64 (i64, i64)*, i64 (i64, i64)** %decoder, align 8
  %tobool146 = icmp ne i64 (i64, i64)* %116, null
  br i1 %tobool146, label %if.then.147, label %if.end.149

if.then.147:                                      ; preds = %if.else.145
  %117 = load i64 (i64, i64)*, i64 (i64, i64)** %decoder, align 8
  %118 = load i64, i64* %top.addr, align 8
  %119 = load i64, i64* %val.addr, align 8
  %call148 = call i64 %117(i64 %118, i64 %119)
  store i64 %call148, i64* %val.addr, align 8
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.147, %if.else.145
  %120 = load i64, i64* %function.addr, align 8
  %121 = load i64, i64* %range.addr, align 8
  %sub150 = sub nsw i64 %121, 3
  %122 = inttoptr i64 %sub150 to i8*
  %123 = bitcast i8* %122 to %struct.Lisp_Cons*
  %car151 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %123, i32 0, i32 0
  %124 = load i64, i64* %car151, align 8
  %125 = load i64, i64* %val.addr, align 8
  %call152 = call i64 @call2(i64 %120, i64 %124, i64 %125)
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.149, %if.then.142
  br label %if.end.164

if.else.154:                                      ; preds = %if.then.128
  %126 = load void (i64, i64, i64)*, void (i64, i64, i64)** %c_function.addr, align 8
  %tobool155 = icmp ne void (i64, i64, i64)* %126, null
  br i1 %tobool155, label %if.then.156, label %if.else.157

if.then.156:                                      ; preds = %if.else.154
  %127 = load void (i64, i64, i64)*, void (i64, i64, i64)** %c_function.addr, align 8
  %128 = load i64, i64* %arg.addr, align 8
  %129 = load i64, i64* %range.addr, align 8
  %130 = load i64, i64* %val.addr, align 8
  call void %127(i64 %128, i64 %129, i64 %130)
  br label %if.end.163

if.else.157:                                      ; preds = %if.else.154
  %131 = load i64 (i64, i64)*, i64 (i64, i64)** %decoder, align 8
  %tobool158 = icmp ne i64 (i64, i64)* %131, null
  br i1 %tobool158, label %if.then.159, label %if.end.161

if.then.159:                                      ; preds = %if.else.157
  %132 = load i64 (i64, i64)*, i64 (i64, i64)** %decoder, align 8
  %133 = load i64, i64* %top.addr, align 8
  %134 = load i64, i64* %val.addr, align 8
  %call160 = call i64 %132(i64 %133, i64 %134)
  store i64 %call160, i64* %val.addr, align 8
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.159, %if.else.157
  %135 = load i64, i64* %function.addr, align 8
  %136 = load i64, i64* %range.addr, align 8
  %137 = load i64, i64* %val.addr, align 8
  %call162 = call i64 @call2(i64 %135, i64 %136, i64 %137)
  br label %if.end.163

if.end.163:                                       ; preds = %if.end.161, %if.then.156
  br label %if.end.164

if.end.164:                                       ; preds = %if.end.163, %if.end.153
  br label %if.end.165

if.end.165:                                       ; preds = %if.end.164, %land.lhs.true.125, %if.end.121
  %138 = load i64, i64* %this, align 8
  store i64 %138, i64* %val.addr, align 8
  %139 = load i32, i32* %c, align 4
  store i32 %139, i32* %from, align 4
  %140 = load i64, i64* %range.addr, align 8
  %141 = load i32, i32* %c, align 4
  %conv166 = sext i32 %141 to i64
  %shl167 = shl i64 %conv166, 2
  %add168 = add i64 %shl167, 2
  call void @XSETCAR(i64 %140, i64 %add168)
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.165, %if.end.91
  br label %if.end.170

if.end.170:                                       ; preds = %if.end.169, %if.end.83
  %142 = load i64, i64* %range.addr, align 8
  %143 = load i32, i32* %to, align 4
  %conv171 = sext i32 %143 to i64
  %shl172 = shl i64 %conv171, 2
  %add173 = add i64 %shl172, 2
  call void @XSETCDR(i64 %142, i64 %add173)
  br label %for.inc

for.inc:                                          ; preds = %if.end.170
  %144 = load i32, i32* %i, align 4
  %inc = add nsw i32 %144, 1
  store i32 %inc, i32* %i, align 4
  %145 = load i32, i32* %chars_in_block, align 4
  %146 = load i32, i32* %c, align 4
  %add174 = add nsw i32 %146, %145
  store i32 %add174, i32* %c, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %147 = load i64, i64* %val.addr, align 8
  ret i64 %147
}

declare i64 @call2(i64, i64, i64) #2

; Function Attrs: nounwind uwtable
define i64 @Fmap_char_table(i64 %function, i64 %char_table) #0 {
entry:
  %function.addr = alloca i64, align 8
  %char_table.addr = alloca i64, align 8
  store i64 %function, i64* %function.addr, align 8
  store i64 %char_table, i64* %char_table.addr, align 8
  %0 = load i64, i64* %char_table.addr, align 8
  call void @CHECK_CHAR_TABLE(i64 %0)
  %1 = load i64, i64* %function.addr, align 8
  %2 = load i64, i64* %char_table.addr, align 8
  %3 = load i64, i64* %char_table.addr, align 8
  call void @map_char_table(void (i64, i64, i64)* null, i64 %1, i64 %2, i64 %3)
  %call = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define void @map_char_table_for_charset(void (i64, i64)* %c_function, i64 %function, i64 %table, i64 %arg, %struct.charset* %charset, i32 %from, i32 %to) #0 {
entry:
  %c_function.addr = alloca void (i64, i64)*, align 8
  %function.addr = alloca i64, align 8
  %table.addr = alloca i64, align 8
  %arg.addr = alloca i64, align 8
  %charset.addr = alloca %struct.charset*, align 8
  %from.addr = alloca i32, align 4
  %to.addr = alloca i32, align 4
  %range = alloca i64, align 8
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %this = alloca i64, align 8
  store void (i64, i64)* %c_function, void (i64, i64)** %c_function.addr, align 8
  store i64 %function, i64* %function.addr, align 8
  store i64 %table, i64* %table.addr, align 8
  store i64 %arg, i64* %arg.addr, align 8
  store %struct.charset* %charset, %struct.charset** %charset.addr, align 8
  store i32 %from, i32* %from.addr, align 4
  store i32 %to, i32* %to.addr, align 4
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %call2 = call i64 @Fcons(i64 %call, i64 %call1)
  store i64 %call2, i64* %range, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @chartab_size, i32 0, i64 0), align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i64, i64* %table.addr, align 8
  %call3 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %3)
  %contents = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call3, i32 0, i32 5
  %arrayidx = getelementptr inbounds [64 x i64], [64 x i64]* %contents, i32 0, i64 %idxprom
  %4 = load i64, i64* %arrayidx, align 8
  store i64 %4, i64* %this, align 8
  %5 = load i64, i64* %this, align 8
  %call4 = call zeroext i1 @SUB_CHAR_TABLE_P(i64 %5)
  br i1 %call4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %6 = load void (i64, i64)*, void (i64, i64)** %c_function.addr, align 8
  %7 = load i64, i64* %function.addr, align 8
  %8 = load i64, i64* %this, align 8
  %9 = load i64, i64* %arg.addr, align 8
  %10 = load i64, i64* %range, align 8
  %11 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %12 = load i32, i32* %from.addr, align 4
  %13 = load i32, i32* %to.addr, align 4
  call void @map_sub_char_table_for_charset(void (i64, i64)* %6, i64 %7, i64 %8, i64 %9, i64 %10, %struct.charset* %11, i32 %12, i32 %13)
  br label %if.end.14

if.else:                                          ; preds = %for.body
  %14 = load i64, i64* %range, align 8
  %sub = sub nsw i64 %14, 3
  %15 = inttoptr i64 %sub to i8*
  %16 = bitcast i8* %15 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %16, i32 0, i32 0
  %17 = load i64, i64* %car, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp6 = icmp eq i64 %17, %call5
  br i1 %cmp6, label %if.end.12, label %if.then.7

if.then.7:                                        ; preds = %if.else
  %18 = load i64, i64* %range, align 8
  %19 = load i32, i32* %c, align 4
  %sub8 = sub nsw i32 %19, 1
  %conv = sext i32 %sub8 to i64
  %shl = shl i64 %conv, 2
  %add = add i64 %shl, 2
  call void @XSETCDR(i64 %18, i64 %add)
  %20 = load void (i64, i64)*, void (i64, i64)** %c_function.addr, align 8
  %tobool = icmp ne void (i64, i64)* %20, null
  br i1 %tobool, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.then.7
  %21 = load void (i64, i64)*, void (i64, i64)** %c_function.addr, align 8
  %22 = load i64, i64* %arg.addr, align 8
  %23 = load i64, i64* %range, align 8
  call void %21(i64 %22, i64 %23)
  br label %if.end

if.else.10:                                       ; preds = %if.then.7
  %24 = load i64, i64* %function.addr, align 8
  %25 = load i64, i64* %range, align 8
  %26 = load i64, i64* %arg.addr, align 8
  %call11 = call i64 @call2(i64 %24, i64 %25, i64 %26)
  br label %if.end

if.end:                                           ; preds = %if.else.10, %if.then.9
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.else
  %27 = load i64, i64* %range, align 8
  %call13 = call i64 @builtin_lisp_symbol(i32 0)
  call void @XSETCAR(i64 %27, i64 %call13)
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.12, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %28 = load i32, i32* %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4
  %29 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @chartab_chars, i32 0, i64 0), align 4
  %30 = load i32, i32* %c, align 4
  %add15 = add nsw i32 %30, %29
  store i32 %add15, i32* %c, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = load i64, i64* %range, align 8
  %sub16 = sub nsw i64 %31, 3
  %32 = inttoptr i64 %sub16 to i8*
  %33 = bitcast i8* %32 to %struct.Lisp_Cons*
  %car17 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %33, i32 0, i32 0
  %34 = load i64, i64* %car17, align 8
  %call18 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp19 = icmp eq i64 %34, %call18
  br i1 %cmp19, label %if.end.31, label %if.then.21

if.then.21:                                       ; preds = %for.end
  %35 = load i64, i64* %range, align 8
  %36 = load i32, i32* %c, align 4
  %sub22 = sub nsw i32 %36, 1
  %conv23 = sext i32 %sub22 to i64
  %shl24 = shl i64 %conv23, 2
  %add25 = add i64 %shl24, 2
  call void @XSETCDR(i64 %35, i64 %add25)
  %37 = load void (i64, i64)*, void (i64, i64)** %c_function.addr, align 8
  %tobool26 = icmp ne void (i64, i64)* %37, null
  br i1 %tobool26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %if.then.21
  %38 = load void (i64, i64)*, void (i64, i64)** %c_function.addr, align 8
  %39 = load i64, i64* %arg.addr, align 8
  %40 = load i64, i64* %range, align 8
  call void %38(i64 %39, i64 %40)
  br label %if.end.30

if.else.28:                                       ; preds = %if.then.21
  %41 = load i64, i64* %function.addr, align 8
  %42 = load i64, i64* %range, align 8
  %43 = load i64, i64* %arg.addr, align 8
  %call29 = call i64 @call2(i64 %41, i64 %42, i64 %43)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.28, %if.then.27
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @map_sub_char_table_for_charset(void (i64, i64)* %c_function, i64 %function, i64 %table, i64 %arg, i64 %range, %struct.charset* %charset, i32 %from, i32 %to) #0 {
entry:
  %c_function.addr = alloca void (i64, i64)*, align 8
  %function.addr = alloca i64, align 8
  %table.addr = alloca i64, align 8
  %arg.addr = alloca i64, align 8
  %range.addr = alloca i64, align 8
  %charset.addr = alloca %struct.charset*, align 8
  %from.addr = alloca i32, align 4
  %to.addr = alloca i32, align 4
  %tbl = alloca %struct.Lisp_Sub_Char_Table*, align 8
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %depth = alloca i32, align 4
  %this = alloca i64, align 8
  %this27 = alloca i64, align 8
  %code = alloca i32, align 4
  store void (i64, i64)* %c_function, void (i64, i64)** %c_function.addr, align 8
  store i64 %function, i64* %function.addr, align 8
  store i64 %table, i64* %table.addr, align 8
  store i64 %arg, i64* %arg.addr, align 8
  store i64 %range, i64* %range.addr, align 8
  store %struct.charset* %charset, %struct.charset** %charset.addr, align 8
  store i32 %from, i32* %from.addr, align 4
  store i32 %to, i32* %to.addr, align 4
  %0 = load i64, i64* %table.addr, align 8
  %call = call %struct.Lisp_Sub_Char_Table* @XSUB_CHAR_TABLE(i64 %0)
  store %struct.Lisp_Sub_Char_Table* %call, %struct.Lisp_Sub_Char_Table** %tbl, align 8
  %1 = load %struct.Lisp_Sub_Char_Table*, %struct.Lisp_Sub_Char_Table** %tbl, align 8
  %min_char = getelementptr inbounds %struct.Lisp_Sub_Char_Table, %struct.Lisp_Sub_Char_Table* %1, i32 0, i32 2
  %2 = load i32, i32* %min_char, align 4
  store i32 %2, i32* %c, align 4
  %3 = load %struct.Lisp_Sub_Char_Table*, %struct.Lisp_Sub_Char_Table** %tbl, align 8
  %depth1 = getelementptr inbounds %struct.Lisp_Sub_Char_Table, %struct.Lisp_Sub_Char_Table* %3, i32 0, i32 1
  %4 = load i32, i32* %depth1, align 4
  store i32 %4, i32* %depth, align 4
  %5 = load i32, i32* %depth, align 4
  %cmp = icmp slt i32 %5, 3
  br i1 %cmp, label %if.then, label %if.else.20

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %depth, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* @chartab_size, i32 0, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  %cmp2 = icmp slt i32 %6, %8
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %9 to i64
  %10 = load %struct.Lisp_Sub_Char_Table*, %struct.Lisp_Sub_Char_Table** %tbl, align 8
  %contents = getelementptr inbounds %struct.Lisp_Sub_Char_Table, %struct.Lisp_Sub_Char_Table* %10, i32 0, i32 3
  %arrayidx4 = getelementptr inbounds [0 x i64], [0 x i64]* %contents, i32 0, i64 %idxprom3
  %11 = load i64, i64* %arrayidx4, align 8
  store i64 %11, i64* %this, align 8
  %12 = load i64, i64* %this, align 8
  %call5 = call zeroext i1 @SUB_CHAR_TABLE_P(i64 %12)
  br i1 %call5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %for.body
  %13 = load void (i64, i64)*, void (i64, i64)** %c_function.addr, align 8
  %14 = load i64, i64* %function.addr, align 8
  %15 = load i64, i64* %this, align 8
  %16 = load i64, i64* %arg.addr, align 8
  %17 = load i64, i64* %range.addr, align 8
  %18 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %19 = load i32, i32* %from.addr, align 4
  %20 = load i32, i32* %to.addr, align 4
  call void @map_sub_char_table_for_charset(void (i64, i64)* %13, i64 %14, i64 %15, i64 %16, i64 %17, %struct.charset* %18, i32 %19, i32 %20)
  br label %if.end.16

if.else:                                          ; preds = %for.body
  %21 = load i64, i64* %range.addr, align 8
  %sub = sub nsw i64 %21, 3
  %22 = inttoptr i64 %sub to i8*
  %23 = bitcast i8* %22 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %23, i32 0, i32 0
  %24 = load i64, i64* %car, align 8
  %call7 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp8 = icmp eq i64 %24, %call7
  br i1 %cmp8, label %if.end.14, label %if.then.9

if.then.9:                                        ; preds = %if.else
  %25 = load i64, i64* %range.addr, align 8
  %26 = load i32, i32* %c, align 4
  %sub10 = sub nsw i32 %26, 1
  %conv = sext i32 %sub10 to i64
  %shl = shl i64 %conv, 2
  %add = add i64 %shl, 2
  call void @XSETCDR(i64 %25, i64 %add)
  %27 = load void (i64, i64)*, void (i64, i64)** %c_function.addr, align 8
  %tobool = icmp ne void (i64, i64)* %27, null
  br i1 %tobool, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.then.9
  %28 = load void (i64, i64)*, void (i64, i64)** %c_function.addr, align 8
  %29 = load i64, i64* %arg.addr, align 8
  %30 = load i64, i64* %range.addr, align 8
  call void %28(i64 %29, i64 %30)
  br label %if.end

if.else.12:                                       ; preds = %if.then.9
  %31 = load i64, i64* %function.addr, align 8
  %32 = load i64, i64* %range.addr, align 8
  %33 = load i64, i64* %arg.addr, align 8
  %call13 = call i64 @call2(i64 %31, i64 %32, i64 %33)
  br label %if.end

if.end:                                           ; preds = %if.else.12, %if.then.11
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.else
  %34 = load i64, i64* %range.addr, align 8
  %call15 = call i64 @builtin_lisp_symbol(i32 0)
  call void @XSETCAR(i64 %34, i64 %call15)
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.14, %if.then.6
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %35 = load i32, i32* %i, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %i, align 4
  %36 = load i32, i32* %depth, align 4
  %idxprom17 = sext i32 %36 to i64
  %arrayidx18 = getelementptr inbounds [4 x i32], [4 x i32]* @chartab_chars, i32 0, i64 %idxprom17
  %37 = load i32, i32* %arrayidx18, align 4
  %38 = load i32, i32* %c, align 4
  %add19 = add nsw i32 %38, %37
  store i32 %add19, i32* %c, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.167

if.else.20:                                       ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.163, %if.else.20
  %39 = load i32, i32* %i, align 4
  %40 = load i32, i32* %depth, align 4
  %idxprom22 = sext i32 %40 to i64
  %arrayidx23 = getelementptr inbounds [4 x i32], [4 x i32]* @chartab_size, i32 0, i64 %idxprom22
  %41 = load i32, i32* %arrayidx23, align 4
  %cmp24 = icmp slt i32 %39, %41
  br i1 %cmp24, label %for.body.26, label %for.end.166

for.body.26:                                      ; preds = %for.cond.21
  %42 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %42 to i64
  %43 = load %struct.Lisp_Sub_Char_Table*, %struct.Lisp_Sub_Char_Table** %tbl, align 8
  %contents29 = getelementptr inbounds %struct.Lisp_Sub_Char_Table, %struct.Lisp_Sub_Char_Table* %43, i32 0, i32 3
  %arrayidx30 = getelementptr inbounds [0 x i64], [0 x i64]* %contents29, i32 0, i64 %idxprom28
  %44 = load i64, i64* %arrayidx30, align 8
  store i64 %44, i64* %this27, align 8
  %45 = load i64, i64* %this27, align 8
  %call31 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp32 = icmp eq i64 %45, %call31
  br i1 %cmp32, label %if.then.133, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.26
  %46 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %tobool34 = icmp ne %struct.charset* %46, null
  br i1 %tobool34, label %land.lhs.true, label %if.else.151

land.lhs.true:                                    ; preds = %lor.lhs.false
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %47 = load i32, i32* %c, align 4
  %add35 = add i32 %47, 0
  %cmp36 = icmp ult i32 %add35, 128
  br i1 %cmp36, label %land.lhs.true.42, label %cond.false.45

cond.false:                                       ; preds = %land.lhs.true
  %48 = load i32, i32* %c, align 4
  %conv38 = sext i32 %48 to i64
  %add39 = add i64 %conv38, 0
  %cmp40 = icmp ult i64 %add39, 128
  br i1 %cmp40, label %land.lhs.true.42, label %cond.false.45

land.lhs.true.42:                                 ; preds = %cond.false, %cond.true
  %49 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %ascii_compatible_p = getelementptr inbounds %struct.charset, %struct.charset* %49, i32 0, i32 5
  %bf.load = load i8, i8* %ascii_compatible_p, align 8
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %cond.true.44, label %cond.false.45

cond.true.44:                                     ; preds = %land.lhs.true.42
  %50 = load i32, i32* %c, align 4
  br label %cond.end.127

cond.false.45:                                    ; preds = %land.lhs.true.42, %cond.false, %cond.true
  %51 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %unified_p = getelementptr inbounds %struct.charset, %struct.charset* %51, i32 0, i32 5
  %bf.load46 = load i8, i8* %unified_p, align 8
  %bf.lshr47 = lshr i8 %bf.load46, 5
  %bf.clear48 = and i8 %bf.lshr47, 1
  %bf.cast49 = trunc i8 %bf.clear48 to i1
  br i1 %bf.cast49, label %cond.true.58, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %cond.false.45
  %52 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %method = getelementptr inbounds %struct.charset, %struct.charset* %52, i32 0, i32 9
  %53 = load i32, i32* %method, align 4
  %cmp52 = icmp eq i32 %53, 2
  br i1 %cmp52, label %cond.true.58, label %lor.lhs.false.54

lor.lhs.false.54:                                 ; preds = %lor.lhs.false.51
  %54 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %method55 = getelementptr inbounds %struct.charset, %struct.charset* %54, i32 0, i32 9
  %55 = load i32, i32* %method55, align 4
  %cmp56 = icmp eq i32 %55, 3
  br i1 %cmp56, label %cond.true.58, label %cond.false.60

cond.true.58:                                     ; preds = %lor.lhs.false.54, %lor.lhs.false.51, %cond.false.45
  %56 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %57 = load i32, i32* %c, align 4
  %call59 = call i32 @encode_char(%struct.charset* %56, i32 %57)
  br label %cond.end.125

cond.false.60:                                    ; preds = %lor.lhs.false.54
  %58 = load i32, i32* %c, align 4
  %59 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %min_char61 = getelementptr inbounds %struct.charset, %struct.charset* %59, i32 0, i32 13
  %60 = load i32, i32* %min_char61, align 4
  %cmp62 = icmp slt i32 %58, %60
  br i1 %cmp62, label %cond.true.67, label %lor.lhs.false.64

lor.lhs.false.64:                                 ; preds = %cond.false.60
  %61 = load i32, i32* %c, align 4
  %62 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %max_char = getelementptr inbounds %struct.charset, %struct.charset* %62, i32 0, i32 14
  %63 = load i32, i32* %max_char, align 4
  %cmp65 = icmp sgt i32 %61, %63
  br i1 %cmp65, label %cond.true.67, label %cond.false.68

cond.true.67:                                     ; preds = %lor.lhs.false.64, %cond.false.60
  %64 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %invalid_code = getelementptr inbounds %struct.charset, %struct.charset* %64, i32 0, i32 15
  %65 = load i32, i32* %invalid_code, align 4
  br label %cond.end.123

cond.false.68:                                    ; preds = %lor.lhs.false.64
  %66 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %method69 = getelementptr inbounds %struct.charset, %struct.charset* %66, i32 0, i32 9
  %67 = load i32, i32* %method69, align 4
  %cmp70 = icmp eq i32 %67, 0
  br i1 %cmp70, label %cond.true.72, label %cond.false.82

cond.true.72:                                     ; preds = %cond.false.68
  %68 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_linear_p = getelementptr inbounds %struct.charset, %struct.charset* %68, i32 0, i32 5
  %bf.load73 = load i8, i8* %code_linear_p, align 8
  %bf.clear74 = and i8 %bf.load73, 1
  %bf.cast75 = trunc i8 %bf.clear74 to i1
  br i1 %bf.cast75, label %cond.true.77, label %cond.false.80

cond.true.77:                                     ; preds = %cond.true.72
  %69 = load i32, i32* %c, align 4
  %70 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_offset = getelementptr inbounds %struct.charset, %struct.charset* %70, i32 0, i32 17
  %71 = load i32, i32* %code_offset, align 4
  %sub78 = sub nsw i32 %69, %71
  %72 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %min_code = getelementptr inbounds %struct.charset, %struct.charset* %72, i32 0, i32 10
  %73 = load i32, i32* %min_code, align 4
  %add79 = add i32 %sub78, %73
  br label %cond.end

cond.false.80:                                    ; preds = %cond.true.72
  %74 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %75 = load i32, i32* %c, align 4
  %call81 = call i32 @encode_char(%struct.charset* %74, i32 %75)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.80, %cond.true.77
  %cond = phi i32 [ %add79, %cond.true.77 ], [ %call81, %cond.false.80 ]
  br label %cond.end.121

cond.false.82:                                    ; preds = %cond.false.68
  %76 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %method83 = getelementptr inbounds %struct.charset, %struct.charset* %76, i32 0, i32 9
  %77 = load i32, i32* %method83, align 4
  %cmp84 = icmp eq i32 %77, 1
  br i1 %cmp84, label %cond.true.86, label %cond.false.117

cond.true.86:                                     ; preds = %cond.false.82
  %78 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %compact_codes_p = getelementptr inbounds %struct.charset, %struct.charset* %78, i32 0, i32 5
  %bf.load87 = load i8, i8* %compact_codes_p, align 8
  %bf.lshr88 = lshr i8 %bf.load87, 4
  %bf.clear89 = and i8 %bf.lshr88, 1
  %bf.cast90 = trunc i8 %bf.clear89 to i1
  br i1 %bf.cast90, label %land.lhs.true.92, label %cond.false.113

land.lhs.true.92:                                 ; preds = %cond.true.86
  %79 = load i64, i64* @Vcharset_hash_table, align 8
  %call93 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %79)
  %80 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %hash_index = getelementptr inbounds %struct.charset, %struct.charset* %80, i32 0, i32 1
  %81 = load i64, i64* %hash_index, align 8
  %call94 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call93, i64 %81)
  %call95 = call i64 @AREF(i64 %call94, i64 5)
  %call96 = call zeroext i1 @CHAR_TABLE_P(i64 %call95)
  br i1 %call96, label %cond.true.98, label %cond.false.113

cond.true.98:                                     ; preds = %land.lhs.true.92
  %82 = load i64, i64* @Vcharset_hash_table, align 8
  %call99 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %82)
  %83 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %hash_index100 = getelementptr inbounds %struct.charset, %struct.charset* %83, i32 0, i32 1
  %84 = load i64, i64* %hash_index100, align 8
  %call101 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call99, i64 %84)
  %call102 = call i64 @AREF(i64 %call101, i64 5)
  %85 = load i32, i32* %c, align 4
  %call103 = call i64 @CHAR_TABLE_REF(i64 %call102, i32 %85)
  store i64 %call103, i64* @charset_work, align 8
  %86 = load i64, i64* @charset_work, align 8
  %call104 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp105 = icmp eq i64 %86, %call104
  br i1 %cmp105, label %cond.true.107, label %cond.false.109

cond.true.107:                                    ; preds = %cond.true.98
  %87 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %invalid_code108 = getelementptr inbounds %struct.charset, %struct.charset* %87, i32 0, i32 15
  %88 = load i32, i32* %invalid_code108, align 4
  br label %cond.end.111

cond.false.109:                                   ; preds = %cond.true.98
  %89 = load i64, i64* @charset_work, align 8
  %shr = ashr i64 %89, 2
  %conv110 = trunc i64 %shr to i32
  br label %cond.end.111

cond.end.111:                                     ; preds = %cond.false.109, %cond.true.107
  %cond112 = phi i32 [ %88, %cond.true.107 ], [ %conv110, %cond.false.109 ]
  br label %cond.end.115

cond.false.113:                                   ; preds = %land.lhs.true.92, %cond.true.86
  %90 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %91 = load i32, i32* %c, align 4
  %call114 = call i32 @encode_char(%struct.charset* %90, i32 %91)
  br label %cond.end.115

cond.end.115:                                     ; preds = %cond.false.113, %cond.end.111
  %cond116 = phi i32 [ %cond112, %cond.end.111 ], [ %call114, %cond.false.113 ]
  br label %cond.end.119

cond.false.117:                                   ; preds = %cond.false.82
  %92 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %93 = load i32, i32* %c, align 4
  %call118 = call i32 @encode_char(%struct.charset* %92, i32 %93)
  br label %cond.end.119

cond.end.119:                                     ; preds = %cond.false.117, %cond.end.115
  %cond120 = phi i32 [ %cond116, %cond.end.115 ], [ %call118, %cond.false.117 ]
  br label %cond.end.121

cond.end.121:                                     ; preds = %cond.end.119, %cond.end
  %cond122 = phi i32 [ %cond, %cond.end ], [ %cond120, %cond.end.119 ]
  br label %cond.end.123

cond.end.123:                                     ; preds = %cond.end.121, %cond.true.67
  %cond124 = phi i32 [ %65, %cond.true.67 ], [ %cond122, %cond.end.121 ]
  br label %cond.end.125

cond.end.125:                                     ; preds = %cond.end.123, %cond.true.58
  %cond126 = phi i32 [ %call59, %cond.true.58 ], [ %cond124, %cond.end.123 ]
  br label %cond.end.127

cond.end.127:                                     ; preds = %cond.end.125, %cond.true.44
  %cond128 = phi i32 [ %50, %cond.true.44 ], [ %cond126, %cond.end.125 ]
  store i32 %cond128, i32* %code, align 4
  %94 = load i32, i32* %code, align 4
  %95 = load i32, i32* %from.addr, align 4
  %cmp129 = icmp ult i32 %94, %95
  br i1 %cmp129, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.end.127
  %96 = load i32, i32* %code, align 4
  %97 = load i32, i32* %to.addr, align 4
  %cmp131 = icmp ugt i32 %96, %97
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.end.127
  %98 = phi i1 [ true, %cond.end.127 ], [ %cmp131, %lor.rhs ]
  br i1 %98, label %if.then.133, label %if.else.151

if.then.133:                                      ; preds = %lor.end, %for.body.26
  %99 = load i64, i64* %range.addr, align 8
  %sub134 = sub nsw i64 %99, 3
  %100 = inttoptr i64 %sub134 to i8*
  %101 = bitcast i8* %100 to %struct.Lisp_Cons*
  %car135 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %101, i32 0, i32 0
  %102 = load i64, i64* %car135, align 8
  %call136 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp137 = icmp eq i64 %102, %call136
  br i1 %cmp137, label %if.end.150, label %if.then.139

if.then.139:                                      ; preds = %if.then.133
  %103 = load i64, i64* %range.addr, align 8
  %104 = load i32, i32* %c, align 4
  %sub140 = sub nsw i32 %104, 1
  %conv141 = sext i32 %sub140 to i64
  %shl142 = shl i64 %conv141, 2
  %add143 = add i64 %shl142, 2
  call void @XSETCDR(i64 %103, i64 %add143)
  %105 = load void (i64, i64)*, void (i64, i64)** %c_function.addr, align 8
  %tobool144 = icmp ne void (i64, i64)* %105, null
  br i1 %tobool144, label %if.then.145, label %if.else.146

if.then.145:                                      ; preds = %if.then.139
  %106 = load void (i64, i64)*, void (i64, i64)** %c_function.addr, align 8
  %107 = load i64, i64* %arg.addr, align 8
  %108 = load i64, i64* %range.addr, align 8
  call void %106(i64 %107, i64 %108)
  br label %if.end.148

if.else.146:                                      ; preds = %if.then.139
  %109 = load i64, i64* %function.addr, align 8
  %110 = load i64, i64* %range.addr, align 8
  %111 = load i64, i64* %arg.addr, align 8
  %call147 = call i64 @call2(i64 %109, i64 %110, i64 %111)
  br label %if.end.148

if.end.148:                                       ; preds = %if.else.146, %if.then.145
  %112 = load i64, i64* %range.addr, align 8
  %call149 = call i64 @builtin_lisp_symbol(i32 0)
  call void @XSETCAR(i64 %112, i64 %call149)
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.148, %if.then.133
  br label %if.end.162

if.else.151:                                      ; preds = %lor.end, %lor.lhs.false
  %113 = load i64, i64* %range.addr, align 8
  %sub152 = sub nsw i64 %113, 3
  %114 = inttoptr i64 %sub152 to i8*
  %115 = bitcast i8* %114 to %struct.Lisp_Cons*
  %car153 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %115, i32 0, i32 0
  %116 = load i64, i64* %car153, align 8
  %call154 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp155 = icmp eq i64 %116, %call154
  br i1 %cmp155, label %if.then.157, label %if.end.161

if.then.157:                                      ; preds = %if.else.151
  %117 = load i64, i64* %range.addr, align 8
  %118 = load i32, i32* %c, align 4
  %conv158 = sext i32 %118 to i64
  %shl159 = shl i64 %conv158, 2
  %add160 = add i64 %shl159, 2
  call void @XSETCAR(i64 %117, i64 %add160)
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.157, %if.else.151
  br label %if.end.162

if.end.162:                                       ; preds = %if.end.161, %if.end.150
  br label %for.inc.163

for.inc.163:                                      ; preds = %if.end.162
  %119 = load i32, i32* %i, align 4
  %inc164 = add nsw i32 %119, 1
  store i32 %inc164, i32* %i, align 4
  %120 = load i32, i32* %c, align 4
  %inc165 = add nsw i32 %120, 1
  store i32 %inc165, i32* %c, align 4
  br label %for.cond.21

for.end.166:                                      ; preds = %for.cond.21
  br label %if.end.167

if.end.167:                                       ; preds = %for.end.166, %for.end
  ret void
}

declare void @XSETCDR(i64, i64) #2

declare void @XSETCAR(i64, i64) #2

; Function Attrs: nounwind uwtable
define i64 @uniprop_table(i64 %prop) #0 {
entry:
  %retval = alloca i64, align 8
  %prop.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %table = alloca i64, align 8
  %result = alloca i64, align 8
  %intl = alloca i64, align 8
  %.compoundliteral = alloca %union.Aligned_String, align 8
  store i64 %prop, i64* %prop.addr, align 8
  %0 = load i64, i64* %prop.addr, align 8
  %1 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 25), align 8
  %call = call i64 @Fassq(i64 %0, i64 %1)
  store i64 %call, i64* %val, align 8
  %2 = load i64, i64* %val, align 8
  %and = and i64 %2, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call2, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %val, align 8
  %sub = sub nsw i64 %3, 3
  %4 = inttoptr i64 %sub to i8*
  %5 = bitcast i8* %4 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %5, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %6 = load i64, i64* %cdr, align 8
  store i64 %6, i64* %table, align 8
  %7 = load i64, i64* %table, align 8
  %call3 = call zeroext i1 @STRINGP(i64 %7)
  br i1 %call3, label %if.then.4, label %if.end.22

if.then.4:                                        ; preds = %if.end
  %s = bitcast %union.Aligned_String* %.compoundliteral to %struct.Lisp_String*
  %size = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 0
  store i64 14, i64* %size, align 8
  %size_byte = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 1
  store i64 -1, i64* %size_byte, align 8
  %intervals = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 2
  store %struct.interval* null, %struct.interval** %intervals, align 8
  %data = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 3
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8** %data, align 8
  %s5 = bitcast %union.Aligned_String* %.compoundliteral to %struct.Lisp_String*
  %8 = bitcast %struct.Lisp_String* %s5 to i8*
  %call6 = call i64 @make_lisp_ptr(i8* %8, i32 4)
  store i64 %call6, i64* %intl, align 8
  %9 = load i64, i64* %intl, align 8
  %10 = load i64, i64* %table, align 8
  %call7 = call i64 @concat2(i64 %9, i64 %10)
  %call8 = call i64 @builtin_lisp_symbol(i32 901)
  %call9 = call i64 @builtin_lisp_symbol(i32 901)
  %call10 = call i64 @builtin_lisp_symbol(i32 901)
  %call11 = call i64 @builtin_lisp_symbol(i32 901)
  %call12 = call i64 @Fload(i64 %call7, i64 %call8, i64 %call9, i64 %call10, i64 %call11)
  store i64 %call12, i64* %result, align 8
  %11 = load i64, i64* %result, align 8
  %call13 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp14 = icmp eq i64 %11, %call13
  br i1 %cmp14, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.then.4
  %call17 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call17, i64* %retval
  br label %return

if.end.18:                                        ; preds = %if.then.4
  %12 = load i64, i64* %val, align 8
  %sub19 = sub nsw i64 %12, 3
  %13 = inttoptr i64 %sub19 to i8*
  %14 = bitcast i8* %13 to %struct.Lisp_Cons*
  %u20 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %14, i32 0, i32 1
  %cdr21 = bitcast %union.anon* %u20 to i64*
  %15 = load i64, i64* %cdr21, align 8
  store i64 %15, i64* %table, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.18, %if.end
  %16 = load i64, i64* %table, align 8
  %call23 = call zeroext i1 @CHAR_TABLE_P(i64 %16)
  br i1 %call23, label %lor.lhs.false, label %if.then.32

lor.lhs.false:                                    ; preds = %if.end.22
  %17 = load i64, i64* %table, align 8
  %call24 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %17)
  %purpose = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call24, i32 0, i32 3
  %18 = load i64, i64* %purpose, align 8
  %call25 = call i64 @builtin_lisp_symbol(i32 254)
  %cmp26 = icmp eq i64 %18, %call25
  br i1 %cmp26, label %land.lhs.true, label %if.then.32

land.lhs.true:                                    ; preds = %lor.lhs.false
  %19 = load i64, i64* %table, align 8
  %call28 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %19)
  %call29 = call i32 @CHAR_TABLE_EXTRA_SLOTS(%struct.Lisp_Char_Table* %call28)
  %cmp30 = icmp eq i32 %call29, 5
  br i1 %cmp30, label %if.end.34, label %if.then.32

if.then.32:                                       ; preds = %land.lhs.true, %lor.lhs.false, %if.end.22
  %call33 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call33, i64* %retval
  br label %return

if.end.34:                                        ; preds = %land.lhs.true
  %20 = load i64, i64* %table, align 8
  %call35 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %20)
  %extras = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call35, i32 0, i32 6
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* %extras, i32 0, i64 1
  %21 = load i64, i64* %arrayidx, align 8
  store i64 %21, i64* %val, align 8
  %22 = load i64, i64* %val, align 8
  %and36 = and i64 %22, 7
  %conv37 = trunc i64 %and36 to i32
  %and38 = and i32 %conv37, -5
  %cmp39 = icmp eq i32 %and38, 2
  br i1 %cmp39, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.34
  %23 = load i64, i64* %val, align 8
  %shr = ashr i64 %23, 2
  %cmp41 = icmp slt i64 %shr, 0
  br i1 %cmp41, label %if.then.50, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %cond.true
  %24 = load i64, i64* %val, align 8
  %shr44 = ashr i64 %24, 2
  %cmp45 = icmp sge i64 %shr44, 1
  br i1 %cmp45, label %if.then.50, label %if.end.52

cond.false:                                       ; preds = %if.end.34
  %25 = load i64, i64* %val, align 8
  %call47 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp48 = icmp eq i64 %25, %call47
  br i1 %cmp48, label %if.end.52, label %if.then.50

if.then.50:                                       ; preds = %cond.false, %lor.lhs.false.43, %cond.true
  %call51 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call51, i64* %retval
  br label %return

if.end.52:                                        ; preds = %cond.false, %lor.lhs.false.43
  %26 = load i64, i64* %table, align 8
  %27 = load i64, i64* %table, align 8
  %call53 = call i64 @char_table_ascii(i64 %27)
  call void @set_char_table_ascii(i64 %26, i64 %call53)
  %28 = load i64, i64* %table, align 8
  store i64 %28, i64* %retval
  br label %return

return:                                           ; preds = %if.end.52, %if.then.50, %if.then.32, %if.then.16, %if.then
  %29 = load i64, i64* %retval
  ret i64 %29
}

declare i64 @Fassq(i64, i64) #2

declare i64 @Fload(i64, i64, i64, i64, i64) #2

declare i64 @concat2(i64, i64) #2

; Function Attrs: nounwind uwtable
define i64 @Funicode_property_table_internal(i64 %prop) #0 {
entry:
  %retval = alloca i64, align 8
  %prop.addr = alloca i64, align 8
  %table = alloca i64, align 8
  store i64 %prop, i64* %prop.addr, align 8
  %0 = load i64, i64* %prop.addr, align 8
  %call = call i64 @uniprop_table(i64 %0)
  store i64 %call, i64* %table, align 8
  %1 = load i64, i64* %table, align 8
  %call1 = call zeroext i1 @CHAR_TABLE_P(i64 %1)
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %table, align 8
  store i64 %2, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %prop.addr, align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 25), align 8
  %call2 = call i64 @Fassq(i64 %3, i64 %4)
  %call3 = call i64 @Fcdr(i64 %call2)
  store i64 %call3, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i64, i64* %retval
  ret i64 %5
}

declare i64 @Fcdr(i64) #2

; Function Attrs: nounwind uwtable
define i64 @Fget_unicode_property_internal(i64 %char_table, i64 %ch) #0 {
entry:
  %char_table.addr = alloca i64, align 8
  %ch.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %decoder = alloca i64 (i64, i64)*, align 8
  store i64 %char_table, i64* %char_table.addr, align 8
  store i64 %ch, i64* %ch.addr, align 8
  %0 = load i64, i64* %char_table.addr, align 8
  call void @CHECK_CHAR_TABLE(i64 %0)
  %1 = load i64, i64* %ch.addr, align 8
  %call = call zeroext i1 @NATNUMP(i64 %1)
  br i1 %call, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, i64* %ch.addr, align 8
  %shr = ashr i64 %2, 2
  %cmp = icmp sle i64 %shr, 4194303
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 260)
  %3 = load i64, i64* %ch.addr, align 8
  %4 = call i64 @wrong_type_argument(i64 %call1, i64 %3) #3
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %5, %cond.true
  %6 = load i64, i64* %char_table.addr, align 8
  %call2 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %6)
  %purpose = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call2, i32 0, i32 3
  %7 = load i64, i64* %purpose, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 254)
  %cmp4 = icmp eq i64 %7, %call3
  br i1 %cmp4, label %land.lhs.true.5, label %if.then

land.lhs.true.5:                                  ; preds = %cond.end
  %8 = load i64, i64* %char_table.addr, align 8
  %call6 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %8)
  %call7 = call i32 @CHAR_TABLE_EXTRA_SLOTS(%struct.Lisp_Char_Table* %call6)
  %cmp8 = icmp eq i32 %call7, 5
  br i1 %cmp8, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.5, %cond.end
  call void (i8*, ...) @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0)) #3
  unreachable

if.end:                                           ; preds = %land.lhs.true.5
  %9 = load i64, i64* %char_table.addr, align 8
  %10 = load i64, i64* %ch.addr, align 8
  %shr9 = ashr i64 %10, 2
  %conv = trunc i64 %shr9 to i32
  %call10 = call i64 @CHAR_TABLE_REF(i64 %9, i32 %conv)
  store i64 %call10, i64* %val, align 8
  %11 = load i64, i64* %char_table.addr, align 8
  %call11 = call i64 (i64, i64)* @uniprop_get_decoder(i64 %11)
  store i64 (i64, i64)* %call11, i64 (i64, i64)** %decoder, align 8
  %12 = load i64 (i64, i64)*, i64 (i64, i64)** %decoder, align 8
  %tobool = icmp ne i64 (i64, i64)* %12, null
  br i1 %tobool, label %cond.true.12, label %cond.false.14

cond.true.12:                                     ; preds = %if.end
  %13 = load i64 (i64, i64)*, i64 (i64, i64)** %decoder, align 8
  %14 = load i64, i64* %char_table.addr, align 8
  %15 = load i64, i64* %val, align 8
  %call13 = call i64 %13(i64 %14, i64 %15)
  br label %cond.end.15

cond.false.14:                                    ; preds = %if.end
  %16 = load i64, i64* %val, align 8
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.14, %cond.true.12
  %cond = phi i64 [ %call13, %cond.true.12 ], [ %16, %cond.false.14 ]
  ret i64 %cond
}

; Function Attrs: nounwind uwtable
define i64 @Fput_unicode_property_internal(i64 %char_table, i64 %ch, i64 %value) #0 {
entry:
  %char_table.addr = alloca i64, align 8
  %ch.addr = alloca i64, align 8
  %value.addr = alloca i64, align 8
  %encoder = alloca i64 (i64, i64)*, align 8
  store i64 %char_table, i64* %char_table.addr, align 8
  store i64 %ch, i64* %ch.addr, align 8
  store i64 %value, i64* %value.addr, align 8
  %0 = load i64, i64* %char_table.addr, align 8
  call void @CHECK_CHAR_TABLE(i64 %0)
  %1 = load i64, i64* %ch.addr, align 8
  %call = call zeroext i1 @NATNUMP(i64 %1)
  br i1 %call, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, i64* %ch.addr, align 8
  %shr = ashr i64 %2, 2
  %cmp = icmp sle i64 %shr, 4194303
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 260)
  %3 = load i64, i64* %ch.addr, align 8
  %4 = call i64 @wrong_type_argument(i64 %call1, i64 %3) #3
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %5, %cond.true
  %6 = load i64, i64* %char_table.addr, align 8
  %call2 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %6)
  %purpose = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call2, i32 0, i32 3
  %7 = load i64, i64* %purpose, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 254)
  %cmp4 = icmp eq i64 %7, %call3
  br i1 %cmp4, label %land.lhs.true.5, label %if.then

land.lhs.true.5:                                  ; preds = %cond.end
  %8 = load i64, i64* %char_table.addr, align 8
  %call6 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %8)
  %call7 = call i32 @CHAR_TABLE_EXTRA_SLOTS(%struct.Lisp_Char_Table* %call6)
  %cmp8 = icmp eq i32 %call7, 5
  br i1 %cmp8, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.5, %cond.end
  call void (i8*, ...) @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0)) #3
  unreachable

if.end:                                           ; preds = %land.lhs.true.5
  %9 = load i64, i64* %char_table.addr, align 8
  %call9 = call i64 (i64, i64)* @uniprop_get_encoder(i64 %9)
  store i64 (i64, i64)* %call9, i64 (i64, i64)** %encoder, align 8
  %10 = load i64 (i64, i64)*, i64 (i64, i64)** %encoder, align 8
  %tobool = icmp ne i64 (i64, i64)* %10, null
  br i1 %tobool, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end
  %11 = load i64 (i64, i64)*, i64 (i64, i64)** %encoder, align 8
  %12 = load i64, i64* %char_table.addr, align 8
  %13 = load i64, i64* %value.addr, align 8
  %call11 = call i64 %11(i64 %12, i64 %13)
  store i64 %call11, i64* %value.addr, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end
  %14 = load i64, i64* %char_table.addr, align 8
  %15 = load i64, i64* %ch.addr, align 8
  %shr13 = ashr i64 %15, 2
  %conv = trunc i64 %shr13 to i32
  %16 = load i64, i64* %value.addr, align 8
  call void @CHAR_TABLE_SET(i64 %14, i32 %conv, i64 %16)
  %call14 = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call14
}

; Function Attrs: nounwind uwtable
define internal i64 (i64, i64)* @uniprop_get_encoder(i64 %table) #0 {
entry:
  %retval = alloca i64 (i64, i64)*, align 8
  %table.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i64 %table, i64* %table.addr, align 8
  %0 = load i64, i64* %table.addr, align 8
  %call = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %0)
  %extras = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call, i32 0, i32 6
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* %extras, i32 0, i64 2
  %1 = load i64, i64* %arrayidx, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %and1 = and i32 %conv, -5
  %cmp = icmp eq i32 %and1, 2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i64 (i64, i64)* null, i64 (i64, i64)** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %table.addr, align 8
  %call3 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %2)
  %extras4 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call3, i32 0, i32 6
  %arrayidx5 = getelementptr inbounds [0 x i64], [0 x i64]* %extras4, i32 0, i64 2
  %3 = load i64, i64* %arrayidx5, align 8
  %shr = ashr i64 %3, 2
  store i64 %shr, i64* %i, align 8
  %4 = load i64, i64* %i, align 8
  %cmp6 = icmp slt i64 %4, 0
  br i1 %cmp6, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i64, i64* %i, align 8
  %cmp8 = icmp sge i64 %5, 3
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %lor.lhs.false, %if.end
  store i64 (i64, i64)* null, i64 (i64, i64)** %retval
  br label %return

if.end.11:                                        ; preds = %lor.lhs.false
  %6 = load i64, i64* %i, align 8
  %arrayidx12 = getelementptr inbounds [3 x i64 (i64, i64)*], [3 x i64 (i64, i64)*]* @uniprop_encoder, i32 0, i64 %6
  %7 = load i64 (i64, i64)*, i64 (i64, i64)** %arrayidx12, align 8
  store i64 (i64, i64)* %7, i64 (i64, i64)** %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.10, %if.then
  %8 = load i64 (i64, i64)*, i64 (i64, i64)** %retval
  ret i64 (i64, i64)* %8
}

declare void @CHAR_TABLE_SET(i64, i32, i64) #2

; Function Attrs: nounwind uwtable
define void @syms_of_chartab() #0 {
entry:
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Smake_char_table to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Schar_table_parent to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Schar_table_subtype to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sset_char_table_parent to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Schar_table_extra_slot to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sset_char_table_extra_slot to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Schar_table_range to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sset_char_table_range to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Soptimize_char_table to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Smap_char_table to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sunicode_property_table_internal to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sget_unicode_property_internal to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sput_unicode_property_internal to %struct.Lisp_Subr*))
  br label %do.body

do.body:                                          ; preds = %entry
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_chartab.o_fwd, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 25))
  br label %do.end

do.end:                                           ; preds = %do.body
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 25), align 8
  ret void
}

declare void @defsubr(%struct.Lisp_Subr*) #2

declare void @defvar_lisp(%struct.Lisp_Objfwd*, i8*, i64*) #2

declare i64 @make_uninit_sub_char_table(i32, i32) #2

declare i64 @Fequal(i64, i64) #2

declare i32 @encode_char(%struct.charset*, i32) #2

declare i64 @AREF(i64, i64) #2

declare i64 @HASH_VALUE(%struct.Lisp_Hash_Table*, i64) #2

declare %struct.Lisp_Hash_Table* @XHASH_TABLE(i64) #2

declare i8* @SDATA(i64) #2

declare i64 @SBYTES(i64) #2

declare i32 @string_char(i8*, i8**, i32*) #2

; Function Attrs: nounwind uwtable
define internal i64 @uniprop_decode_value_run_length(i64 %table, i64 %value) #0 {
entry:
  %table.addr = alloca i64, align 8
  %value.addr = alloca i64, align 8
  %valvec = alloca i64, align 8
  store i64 %table, i64* %table.addr, align 8
  store i64 %value, i64* %value.addr, align 8
  %0 = load i64, i64* %table.addr, align 8
  %call = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %0)
  %extras = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call, i32 0, i32 6
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* %extras, i32 0, i64 4
  %1 = load i64, i64* %arrayidx, align 8
  %call1 = call zeroext i1 @VECTORP(i64 %1)
  br i1 %call1, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %table.addr, align 8
  %call2 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %2)
  %extras3 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call2, i32 0, i32 6
  %arrayidx4 = getelementptr inbounds [0 x i64], [0 x i64]* %extras3, i32 0, i64 4
  %3 = load i64, i64* %arrayidx4, align 8
  store i64 %3, i64* %valvec, align 8
  %4 = load i64, i64* %value.addr, align 8
  %shr = ashr i64 %4, 2
  %cmp = icmp sge i64 %shr, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %5 = load i64, i64* %value.addr, align 8
  %shr5 = ashr i64 %5, 2
  %6 = load i64, i64* %valvec, align 8
  %call6 = call i64 @ASIZE(i64 %6)
  %cmp7 = icmp slt i64 %shr5, %call6
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %land.lhs.true
  %7 = load i64, i64* %valvec, align 8
  %8 = load i64, i64* %value.addr, align 8
  %shr9 = ashr i64 %8, 2
  %call10 = call i64 @AREF(i64 %7, i64 %shr9)
  store i64 %call10, i64* %value.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.8, %land.lhs.true, %if.then
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %entry
  %9 = load i64, i64* %value.addr, align 8
  ret i64 %9
}

declare zeroext i1 @VECTORP(i64) #2

declare i64 @ASIZE(i64) #2

; Function Attrs: nounwind uwtable
define internal i64 @uniprop_encode_value_character(i64 %table, i64 %value) #0 {
entry:
  %table.addr = alloca i64, align 8
  %value.addr = alloca i64, align 8
  store i64 %table, i64* %table.addr, align 8
  store i64 %value, i64* %value.addr, align 8
  %0 = load i64, i64* %value.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %value.addr, align 8
  %call1 = call zeroext i1 @NATNUMP(i64 %1)
  br i1 %call1, label %land.lhs.true.2, label %if.then

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %2 = load i64, i64* %value.addr, align 8
  %shr = ashr i64 %2, 2
  %cmp3 = icmp sle i64 %shr, 4194303
  br i1 %cmp3, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.2, %land.lhs.true
  %call4 = call i64 @builtin_lisp_symbol(i32 559)
  %3 = load i64, i64* %value.addr, align 8
  %4 = call i64 @wrong_type_argument(i64 %call4, i64 %3) #3
  unreachable

if.end:                                           ; preds = %land.lhs.true.2, %entry
  %5 = load i64, i64* %value.addr, align 8
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define internal i64 @uniprop_encode_value_run_length(i64 %table, i64 %value) #0 {
entry:
  %table.addr = alloca i64, align 8
  %value.addr = alloca i64, align 8
  %value_table = alloca i64*, align 8
  %i = alloca i32, align 4
  %size = alloca i32, align 4
  store i64 %table, i64* %table.addr, align 8
  store i64 %value, i64* %value.addr, align 8
  %0 = load i64, i64* %table.addr, align 8
  %call = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %0)
  %extras = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call, i32 0, i32 6
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* %extras, i32 0, i64 4
  %1 = load i64, i64* %arrayidx, align 8
  %call1 = call %struct.Lisp_Vector* @XVECTOR(i64 %1)
  %contents = getelementptr inbounds %struct.Lisp_Vector, %struct.Lisp_Vector* %call1, i32 0, i32 1
  %arraydecay = getelementptr inbounds [0 x i64], [0 x i64]* %contents, i32 0, i32 0
  store i64* %arraydecay, i64** %value_table, align 8
  %2 = load i64, i64* %table.addr, align 8
  %call2 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %2)
  %extras3 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call2, i32 0, i32 6
  %arrayidx4 = getelementptr inbounds [0 x i64], [0 x i64]* %extras3, i32 0, i64 4
  %3 = load i64, i64* %arrayidx4, align 8
  %call5 = call i64 @ASIZE(i64 %3)
  %conv = trunc i64 %call5 to i32
  store i32 %conv, i32* %size, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i64, i64* %value.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i64*, i64** %value_table, align 8
  %arrayidx7 = getelementptr inbounds i64, i64* %8, i64 %idxprom
  %9 = load i64, i64* %arrayidx7, align 8
  %cmp8 = icmp eq i64 %6, %9
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %size, align 4
  %cmp10 = icmp eq i32 %11, %12
  br i1 %cmp10, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %for.end
  %call13 = call i64 @build_string(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0))
  %13 = load i64, i64* %value.addr, align 8
  %14 = call i64 @wrong_type_argument(i64 %call13, i64 %13) #3
  unreachable

if.end.14:                                        ; preds = %for.end
  %15 = load i32, i32* %i, align 4
  %conv15 = sext i32 %15 to i64
  %shl = shl i64 %conv15, 2
  %add = add i64 %shl, 2
  ret i64 %add
}

; Function Attrs: nounwind uwtable
define internal i64 @uniprop_encode_value_numeric(i64 %table, i64 %value) #0 {
entry:
  %table.addr = alloca i64, align 8
  %value.addr = alloca i64, align 8
  %value_table = alloca i64*, align 8
  %i = alloca i32, align 4
  %size = alloca i32, align 4
  %.compoundliteral = alloca [2 x i64], align 8
  store i64 %table, i64* %table.addr, align 8
  store i64 %value, i64* %value.addr, align 8
  %0 = load i64, i64* %table.addr, align 8
  %call = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %0)
  %extras = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call, i32 0, i32 6
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* %extras, i32 0, i64 4
  %1 = load i64, i64* %arrayidx, align 8
  %call1 = call %struct.Lisp_Vector* @XVECTOR(i64 %1)
  %contents = getelementptr inbounds %struct.Lisp_Vector, %struct.Lisp_Vector* %call1, i32 0, i32 1
  %arraydecay = getelementptr inbounds [0 x i64], [0 x i64]* %contents, i32 0, i32 0
  store i64* %arraydecay, i64** %value_table, align 8
  %2 = load i64, i64* %table.addr, align 8
  %call2 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %2)
  %extras3 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call2, i32 0, i32 6
  %arrayidx4 = getelementptr inbounds [0 x i64], [0 x i64]* %extras3, i32 0, i64 4
  %3 = load i64, i64* %arrayidx4, align 8
  %call5 = call i64 @ASIZE(i64 %3)
  %conv = trunc i64 %call5 to i32
  store i32 %conv, i32* %size, align 4
  %4 = load i64, i64* %value.addr, align 8
  %and = and i64 %4, 7
  %conv6 = trunc i64 %and to i32
  %and7 = and i32 %conv6, -5
  %cmp = icmp eq i32 %and7, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call9 = call i64 @builtin_lisp_symbol(i32 559)
  %5 = load i64, i64* %value.addr, align 8
  %6 = call i64 @wrong_type_argument(i64 %call9, i64 %5) #3
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %7, %cond.true
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %size, align 4
  %cmp10 = icmp slt i32 %8, %9
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i64, i64* %value.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load i64*, i64** %value_table, align 8
  %arrayidx12 = getelementptr inbounds i64, i64* %12, i64 %idxprom
  %13 = load i64, i64* %arrayidx12, align 8
  %cmp13 = icmp eq i64 %10, %13
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %15 = load i32, i32* %i, align 4
  %conv15 = sext i32 %15 to i64
  %shl = shl i64 %conv15, 2
  %add = add i64 %shl, 2
  store i64 %add, i64* %value.addr, align 8
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %size, align 4
  %cmp16 = icmp eq i32 %16, %17
  br i1 %cmp16, label %if.then.18, label %if.end.25

if.then.18:                                       ; preds = %for.end
  %18 = load i64, i64* %table.addr, align 8
  %arrayinit.begin = getelementptr inbounds [2 x i64], [2 x i64]* %.compoundliteral, i64 0, i64 0
  %19 = load i64, i64* %table.addr, align 8
  %call19 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %19)
  %extras20 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call19, i32 0, i32 6
  %arrayidx21 = getelementptr inbounds [0 x i64], [0 x i64]* %extras20, i32 0, i64 4
  %20 = load i64, i64* %arrayidx21, align 8
  store i64 %20, i64* %arrayinit.begin
  %arrayinit.element = getelementptr inbounds i64, i64* %arrayinit.begin, i64 1
  %21 = load i64, i64* %value.addr, align 8
  %call22 = call i64 @Fmake_vector(i64 6, i64 %21)
  store i64 %call22, i64* %arrayinit.element
  %arraydecay23 = getelementptr inbounds [2 x i64], [2 x i64]* %.compoundliteral, i32 0, i32 0
  %call24 = call i64 @Fvconcat(i64 2, i64* %arraydecay23)
  call void @set_char_table_extras(i64 %18, i64 4, i64 %call24)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.18, %for.end
  %22 = load i32, i32* %i, align 4
  %conv26 = sext i32 %22 to i64
  %shl27 = shl i64 %conv26, 2
  %add28 = add i64 %shl27, 2
  ret i64 %add28
}

declare i64 @build_string(i8*) #2

declare i64 @Fvconcat(i64, i64*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
