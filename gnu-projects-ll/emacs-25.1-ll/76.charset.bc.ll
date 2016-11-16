; ModuleID = './src/charset.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.charset = type { i32, i64, i32, [15 x i32], i8*, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [190 x i8], i32 }
%struct.emacs_globals = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.buffer = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.buffer_text, %struct.buffer_text*, %struct.buffer*, i64, i64, i64, i64, i64, i64, %struct.buffer*, i32, i32, [50 x i8], %struct.timespec, i64, i64, i64, i64, i64, %struct.region_cache*, %struct.region_cache*, %struct.region_cache*, i8, %struct.Lisp_Overlay*, %struct.Lisp_Overlay*, i64, i64 }
%struct.vectorlike_header = type { i64 }
%struct.buffer_text = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.interval*, %struct.Lisp_Marker*, i8 }
%struct.interval = type opaque
%struct.Lisp_Marker = type { i32, %struct.buffer*, %struct.Lisp_Marker*, i64, i64 }
%struct.timespec = type { i64, i64 }
%struct.region_cache = type opaque
%struct.Lisp_Overlay = type { i32, %struct.Lisp_Overlay*, i64, i64, i64 }
%struct.anon = type { %struct.charset*, i16, i32, i32, i32, %union.anon.0 }
%union.anon.0 = type { [65536 x i32] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.Lisp_Subr = type { %struct.vectorlike_header, %union.anon.1, i16, i16, i8*, i8*, i8* }
%union.anon.1 = type { i64 ()* }
%struct.Lisp_Objfwd = type { i32, i64* }
%struct.Lisp_Boolfwd = type { i32, i8* }
%struct.Lisp_Hash_Table = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.hash_table_test, %struct.Lisp_Hash_Table* }
%struct.hash_table_test = type { i64, i64, i64, i1 (%struct.hash_table_test*, i64, i64)*, i64 (%struct.hash_table_test*, i64)* }
%struct.Lisp_Cons = type { i64, %union.anon }
%union.anon = type { i64 }
%struct.charset_sort_data = type { i64, i32, i64 }
%struct.charset_map_entries = type { [65536 x %struct.anon.2], %struct.charset_map_entries* }
%struct.anon.2 = type { i32, i32, i32 }
%union.Aligned_String = type { %struct.Lisp_String }
%struct.Lisp_String = type { i64, i64, %struct.interval*, i8* }
%union.Aligned_Cons = type { %struct.Lisp_Cons }

@Vcharset_hash_table = common global i64 0, align 8
@charset_table = common global %struct.charset* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"define-charset-internal\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Attribute :invalid-code must be specified\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Invalid iso-final-char: %ld\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Invalid emacs-mule-id: %ld\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Unsupported max char: %d\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"None of :code-offset, :map, :parents are specified\00", align 1
@charset_table_used = internal global i32 0, align 4
@charset_table_size = internal global i64 0, align 8
@iso_charset_table = common global [3 x [2 x [128 x i32]]] zeroinitializer, align 16
@Viso_2022_charset_list = common global i64 0, align 8
@charset_jisx0201_roman = common global i32 0, align 4
@charset_jisx0208_1978 = common global i32 0, align 4
@charset_jisx0208 = common global i32 0, align 4
@charset_ksc5601 = common global i32 0, align 4
@emacs_mule_charset = common global [256 x i32] zeroinitializer, align 16
@emacs_mule_bytes = external global [256 x i8], align 16
@Vemacs_mule_charset_list = common global i64 0, align 8
@globals = external global %struct.emacs_globals, align 8
@Vcharset_ordered_list = common global i64 0, align 8
@charset_ordered_list_tick = common global i64 0, align 8
@.str.6 = private unnamed_addr constant [24 x i8] c"Can't unify charset: %s\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Bad unify-map\00", align 1
@Vchar_unify_table = external global i64, align 8
@current_buffer = external global %struct.buffer*, align 8
@temp_charset_work = internal global %struct.anon* null, align 8
@charset_work = common global i64 0, align 8
@.str.8 = private unnamed_addr constant [16 x i8] c"Invalid code(s)\00", align 1
@Vcharset_non_preferred_head = common global i64 0, align 8
@charset_unicode = common global i32 0, align 4
@charset_emacs = internal global i32 0, align 4
@charset_eight_bit = common global i32 0, align 4
@charset_ascii = common global i32 0, align 4
@charset_unibyte = common global i32 0, align 4
@charset_iso_8859_1 = internal global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"charsets\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.10 = private unnamed_addr constant [142 x i8] c"Error: charsets directory not found:\0A%s\0AEmacs will not function correctly without the character map files.\0A%sPlease check your installation!\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"EMACSDATA\00", align 1
@.str.12 = private unnamed_addr constant [74 x i8] c"The EMACSDATA environment variable is set, maybe it has the wrong value?\0A\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_table_init = internal global [180 x %struct.charset] zeroinitializer, align 16
@Sclear_charset_maps = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon.1 { i64 ()* @Fclear_charset_maps }, i16 0, i16 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.50, i32 0, i32 0), i8* null, i8* null }, align 8
@syms_of_charset.o_fwd = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.14 = private unnamed_addr constant [17 x i8] c"charset-map-path\00", align 1
@syms_of_charset.b_fwd = internal global %struct.Lisp_Boolfwd zeroinitializer, align 8
@.str.15 = private unnamed_addr constant [25 x i8] c"inhibit-load-charset-map\00", align 1
@syms_of_charset.o_fwd.16 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.17 = private unnamed_addr constant [13 x i8] c"charset-list\00", align 1
@syms_of_charset.o_fwd.18 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.19 = private unnamed_addr constant [24 x i8] c"current-iso639-language\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"\00\7F\00\00\00\00\00\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"\00\FF\00\00\00\00\00\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"\00\FF\00\FF\00\10\00\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"\00\FF\00\FF\00?\00\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"\80\FF\00\00\00\00\00\00", align 1
@charset_map_loaded = common global i8 0, align 1
@.str.25 = private unnamed_addr constant [5 x i8] c".map\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c".txt\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"Loading charset map\00", align 1
@.str.29 = private unnamed_addr constant [35 x i8] c"Failure in loading charset map: %V\00", align 1
@.str.30 = private unnamed_addr constant [47 x i8] c"Invalid DIMENSION %ld, it should be 1, 2, or 3\00", align 1
@.str.31 = private unnamed_addr constant [41 x i8] c"Invalid CHARS %ld, it should be 94 or 96\00", align 1
@.str.32 = private unnamed_addr constant [47 x i8] c"Invalid FINAL-CHAR '%c', it should be '0'..'~'\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"charsetp\00", align 1
@Scharsetp = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fcharsetp }, i16 1, i16 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.34 = private unnamed_addr constant [18 x i8] c"map-charset-chars\00", align 1
@Smap_charset_chars = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64, i64)* @Fmap_charset_chars }, i16 2, i16 5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i32 0, i32 0), i8* null, i8* null }, align 8
@Sdefine_charset_internal = internal global { %struct.vectorlike_header, { i64 (i64, i64*)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64*)* } { i64 (i64, i64*)* @Fdefine_charset_internal }, i16 17, i16 -2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.35 = private unnamed_addr constant [21 x i8] c"define-charset-alias\00", align 1
@Sdefine_charset_alias = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fdefine_charset_alias }, i16 2, i16 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.36 = private unnamed_addr constant [14 x i8] c"charset-plist\00", align 1
@Scharset_plist = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fcharset_plist }, i16 1, i16 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.37 = private unnamed_addr constant [18 x i8] c"set-charset-plist\00", align 1
@Sset_charset_plist = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fset_charset_plist }, i16 2, i16 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.37, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.38 = private unnamed_addr constant [14 x i8] c"unify-charset\00", align 1
@Sunify_charset = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Funify_charset }, i16 1, i16 3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.39 = private unnamed_addr constant [26 x i8] c"get-unused-iso-final-char\00", align 1
@Sget_unused_iso_final_char = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fget_unused_iso_final_char }, i16 2, i16 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.39, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.40 = private unnamed_addr constant [22 x i8] c"declare-equiv-charset\00", align 1
@Sdeclare_equiv_charset = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64)* @Fdeclare_equiv_charset }, i16 4, i16 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.40, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.41 = private unnamed_addr constant [20 x i8] c"find-charset-region\00", align 1
@Sfind_charset_region = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Ffind_charset_region }, i16 2, i16 3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.41, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.42 = private unnamed_addr constant [20 x i8] c"find-charset-string\00", align 1
@Sfind_charset_string = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Ffind_charset_string }, i16 1, i16 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.42, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.43 = private unnamed_addr constant [12 x i8] c"decode-char\00", align 1
@Sdecode_char = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Fdecode_char }, i16 2, i16 3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.44 = private unnamed_addr constant [12 x i8] c"encode-char\00", align 1
@Sencode_char = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Fencode_char }, i16 2, i16 3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.45 = private unnamed_addr constant [11 x i8] c"split-char\00", align 1
@Ssplit_char = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fsplit_char }, i16 1, i16 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.46 = private unnamed_addr constant [10 x i8] c"make-char\00", align 1
@Smake_char = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64, i64)* @Fmake_char }, i16 1, i16 5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.47 = private unnamed_addr constant [13 x i8] c"char-charset\00", align 1
@Schar_charset = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fchar_charset }, i16 1, i16 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.48 = private unnamed_addr constant [14 x i8] c"charset-after\00", align 1
@Scharset_after = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fcharset_after }, i16 0, i16 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.48, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.49 = private unnamed_addr constant [12 x i8] c"iso-charset\00", align 1
@Siso_charset = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Fiso_charset }, i16 3, i16 3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.50 = private unnamed_addr constant [19 x i8] c"clear-charset-maps\00", align 1
@.str.51 = private unnamed_addr constant [22 x i8] c"charset-priority-list\00", align 1
@Scharset_priority_list = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fcharset_priority_list }, i16 0, i16 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.51, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.52 = private unnamed_addr constant [21 x i8] c"set-charset-priority\00", align 1
@Sset_charset_priority = internal global { %struct.vectorlike_header, { i64 (i64, i64*)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64*)* } { i64 (i64, i64*)* @Fset_charset_priority }, i16 1, i16 -2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.53 = private unnamed_addr constant [20 x i8] c"charset-id-internal\00", align 1
@Scharset_id_internal = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fcharset_id_internal }, i16 0, i16 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.53, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.54 = private unnamed_addr constant [14 x i8] c"sort-charsets\00", align 1
@Ssort_charsets = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fsort_charsets }, i16 1, i16 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.55 = private unnamed_addr constant [11 x i8] c":dimension\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c":code-space\00", align 1
@.str.57 = private unnamed_addr constant [16 x i8] c":iso-final-char\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c":emacs-mule-id\00", align 1
@.str.59 = private unnamed_addr constant [13 x i8] c":code-offset\00", align 1

; Function Attrs: nounwind uwtable
define i64 @Fcharsetp(i64 %object) #0 {
entry:
  %object.addr = alloca i64, align 8
  store i64 %object, i64* %object.addr, align 8
  %0 = load i64, i64* @Vcharset_hash_table, align 8
  %call = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %0)
  %1 = load i64, i64* %object.addr, align 8
  %call1 = call i64 @hash_lookup(%struct.Lisp_Hash_Table* %call, i64 %1, i64* null)
  %cmp = icmp sge i64 %call1, 0
  br i1 %cmp, label %cond.true, label %cond.false

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

declare i64 @hash_lookup(%struct.Lisp_Hash_Table*, i64, i64*) #1

declare %struct.Lisp_Hash_Table* @XHASH_TABLE(i64) #1

declare i64 @builtin_lisp_symbol(i32) #1

; Function Attrs: nounwind uwtable
define void @map_charset_chars(void (i64, i64)* %c_function, i64 %function, i64 %arg, %struct.charset* %charset, i32 %from, i32 %to) #0 {
entry:
  %c_function.addr = alloca void (i64, i64)*, align 8
  %function.addr = alloca i64, align 8
  %arg.addr = alloca i64, align 8
  %charset.addr = alloca %struct.charset*, align 8
  %from.addr = alloca i32, align 4
  %to.addr = alloca i32, align 4
  %range = alloca i64, align 8
  %partial = alloca i8, align 1
  %from_idx = alloca i32, align 4
  %to_idx = alloca i32, align 4
  %from_c = alloca i32, align 4
  %to_c = alloca i32, align 4
  %subset_info = alloca i64, align 8
  %offset = alloca i32, align 4
  %parents = alloca i64, align 8
  %offset258 = alloca i32, align 4
  %this_from = alloca i32, align 4
  %this_to = alloca i32, align 4
  store void (i64, i64)* %c_function, void (i64, i64)** %c_function.addr, align 8
  store i64 %function, i64* %function.addr, align 8
  store i64 %arg, i64* %arg.addr, align 8
  store %struct.charset* %charset, %struct.charset** %charset.addr, align 8
  store i32 %from, i32* %from.addr, align 4
  store i32 %to, i32* %to.addr, align 4
  %0 = load i32, i32* %from.addr, align 4
  %1 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %min_code = getelementptr inbounds %struct.charset, %struct.charset* %1, i32 0, i32 10
  %2 = load i32, i32* %min_code, align 4
  %cmp = icmp ugt i32 %0, %2
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %3 = load i32, i32* %to.addr, align 4
  %4 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %max_code = getelementptr inbounds %struct.charset, %struct.charset* %4, i32 0, i32 11
  %5 = load i32, i32* %max_code, align 4
  %cmp1 = icmp ult i32 %3, %5
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %6 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  %frombool = zext i1 %6 to i8
  store i8 %frombool, i8* %partial, align 1
  %7 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %method = getelementptr inbounds %struct.charset, %struct.charset* %7, i32 0, i32 9
  %8 = load i32, i32* %method, align 4
  %cmp2 = icmp eq i32 %8, 0
  br i1 %cmp2, label %if.then, label %if.else.183

if.then:                                          ; preds = %lor.end
  %9 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_linear_p = getelementptr inbounds %struct.charset, %struct.charset* %9, i32 0, i32 5
  %bf.load = load i8, i8* %code_linear_p, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %10 = load i32, i32* %from.addr, align 4
  %11 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %min_code3 = getelementptr inbounds %struct.charset, %struct.charset* %11, i32 0, i32 10
  %12 = load i32, i32* %min_code3, align 4
  %sub = sub i32 %10, %12
  br label %cond.end.59

cond.false:                                       ; preds = %if.then
  %13 = load i32, i32* %from.addr, align 4
  %shr = lshr i32 %13, 24
  %idxprom = zext i32 %shr to i64
  %14 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space_mask = getelementptr inbounds %struct.charset, %struct.charset* %14, i32 0, i32 4
  %15 = load i8*, i8** %code_space_mask, align 8
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %idxprom
  %16 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %16 to i32
  %and = and i32 %conv, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %cond.false.58

land.lhs.true:                                    ; preds = %cond.false
  %17 = load i32, i32* %from.addr, align 4
  %shr4 = lshr i32 %17, 16
  %and5 = and i32 %shr4, 255
  %idxprom6 = zext i32 %and5 to i64
  %18 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space_mask7 = getelementptr inbounds %struct.charset, %struct.charset* %18, i32 0, i32 4
  %19 = load i8*, i8** %code_space_mask7, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %19, i64 %idxprom6
  %20 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %20 to i32
  %and10 = and i32 %conv9, 4
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %land.lhs.true.12, label %cond.false.58

land.lhs.true.12:                                 ; preds = %land.lhs.true
  %21 = load i32, i32* %from.addr, align 4
  %shr13 = lshr i32 %21, 8
  %and14 = and i32 %shr13, 255
  %idxprom15 = zext i32 %and14 to i64
  %22 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space_mask16 = getelementptr inbounds %struct.charset, %struct.charset* %22, i32 0, i32 4
  %23 = load i8*, i8** %code_space_mask16, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %23, i64 %idxprom15
  %24 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %24 to i32
  %and19 = and i32 %conv18, 2
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %land.lhs.true.21, label %cond.false.58

land.lhs.true.21:                                 ; preds = %land.lhs.true.12
  %25 = load i32, i32* %from.addr, align 4
  %and22 = and i32 %25, 255
  %idxprom23 = zext i32 %and22 to i64
  %26 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space_mask24 = getelementptr inbounds %struct.charset, %struct.charset* %26, i32 0, i32 4
  %27 = load i8*, i8** %code_space_mask24, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %27, i64 %idxprom23
  %28 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %28 to i32
  %and27 = and i32 %conv26, 1
  %tobool28 = icmp ne i32 %and27, 0
  br i1 %tobool28, label %cond.true.29, label %cond.false.58

cond.true.29:                                     ; preds = %land.lhs.true.21
  %29 = load i32, i32* %from.addr, align 4
  %shr30 = lshr i32 %29, 24
  %30 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space = getelementptr inbounds %struct.charset, %struct.charset* %30, i32 0, i32 3
  %arrayidx31 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space, i32 0, i64 12
  %31 = load i32, i32* %arrayidx31, align 4
  %sub32 = sub i32 %shr30, %31
  %32 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space33 = getelementptr inbounds %struct.charset, %struct.charset* %32, i32 0, i32 3
  %arrayidx34 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space33, i32 0, i64 11
  %33 = load i32, i32* %arrayidx34, align 4
  %mul = mul i32 %sub32, %33
  %34 = load i32, i32* %from.addr, align 4
  %shr35 = lshr i32 %34, 16
  %and36 = and i32 %shr35, 255
  %35 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space37 = getelementptr inbounds %struct.charset, %struct.charset* %35, i32 0, i32 3
  %arrayidx38 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space37, i32 0, i64 8
  %36 = load i32, i32* %arrayidx38, align 4
  %sub39 = sub i32 %and36, %36
  %37 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space40 = getelementptr inbounds %struct.charset, %struct.charset* %37, i32 0, i32 3
  %arrayidx41 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space40, i32 0, i64 7
  %38 = load i32, i32* %arrayidx41, align 4
  %mul42 = mul i32 %sub39, %38
  %add = add i32 %mul, %mul42
  %39 = load i32, i32* %from.addr, align 4
  %shr43 = lshr i32 %39, 8
  %and44 = and i32 %shr43, 255
  %40 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space45 = getelementptr inbounds %struct.charset, %struct.charset* %40, i32 0, i32 3
  %arrayidx46 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space45, i32 0, i64 4
  %41 = load i32, i32* %arrayidx46, align 4
  %sub47 = sub i32 %and44, %41
  %42 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space48 = getelementptr inbounds %struct.charset, %struct.charset* %42, i32 0, i32 3
  %arrayidx49 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space48, i32 0, i64 3
  %43 = load i32, i32* %arrayidx49, align 4
  %mul50 = mul i32 %sub47, %43
  %add51 = add i32 %add, %mul50
  %44 = load i32, i32* %from.addr, align 4
  %and52 = and i32 %44, 255
  %45 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space53 = getelementptr inbounds %struct.charset, %struct.charset* %45, i32 0, i32 3
  %arrayidx54 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space53, i32 0, i64 0
  %46 = load i32, i32* %arrayidx54, align 4
  %sub55 = sub i32 %and52, %46
  %add56 = add i32 %add51, %sub55
  %47 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %char_index_offset = getelementptr inbounds %struct.charset, %struct.charset* %47, i32 0, i32 12
  %48 = load i32, i32* %char_index_offset, align 4
  %sub57 = sub i32 %add56, %48
  br label %cond.end

cond.false.58:                                    ; preds = %land.lhs.true.21, %land.lhs.true.12, %land.lhs.true, %cond.false
  br label %cond.end

cond.end:                                         ; preds = %cond.false.58, %cond.true.29
  %cond = phi i32 [ %sub57, %cond.true.29 ], [ -1, %cond.false.58 ]
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.end, %cond.true
  %cond60 = phi i32 [ %sub, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond60, i32* %from_idx, align 4
  %49 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_linear_p61 = getelementptr inbounds %struct.charset, %struct.charset* %49, i32 0, i32 5
  %bf.load62 = load i8, i8* %code_linear_p61, align 8
  %bf.clear63 = and i8 %bf.load62, 1
  %bf.cast64 = trunc i8 %bf.clear63 to i1
  br i1 %bf.cast64, label %cond.true.66, label %cond.false.69

cond.true.66:                                     ; preds = %cond.end.59
  %50 = load i32, i32* %to.addr, align 4
  %51 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %min_code67 = getelementptr inbounds %struct.charset, %struct.charset* %51, i32 0, i32 10
  %52 = load i32, i32* %min_code67, align 4
  %sub68 = sub i32 %50, %52
  br label %cond.end.139

cond.false.69:                                    ; preds = %cond.end.59
  %53 = load i32, i32* %to.addr, align 4
  %shr70 = lshr i32 %53, 24
  %idxprom71 = zext i32 %shr70 to i64
  %54 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space_mask72 = getelementptr inbounds %struct.charset, %struct.charset* %54, i32 0, i32 4
  %55 = load i8*, i8** %code_space_mask72, align 8
  %arrayidx73 = getelementptr inbounds i8, i8* %55, i64 %idxprom71
  %56 = load i8, i8* %arrayidx73, align 1
  %conv74 = zext i8 %56 to i32
  %and75 = and i32 %conv74, 8
  %tobool76 = icmp ne i32 %and75, 0
  br i1 %tobool76, label %land.lhs.true.77, label %cond.false.136

land.lhs.true.77:                                 ; preds = %cond.false.69
  %57 = load i32, i32* %to.addr, align 4
  %shr78 = lshr i32 %57, 16
  %and79 = and i32 %shr78, 255
  %idxprom80 = zext i32 %and79 to i64
  %58 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space_mask81 = getelementptr inbounds %struct.charset, %struct.charset* %58, i32 0, i32 4
  %59 = load i8*, i8** %code_space_mask81, align 8
  %arrayidx82 = getelementptr inbounds i8, i8* %59, i64 %idxprom80
  %60 = load i8, i8* %arrayidx82, align 1
  %conv83 = zext i8 %60 to i32
  %and84 = and i32 %conv83, 4
  %tobool85 = icmp ne i32 %and84, 0
  br i1 %tobool85, label %land.lhs.true.86, label %cond.false.136

land.lhs.true.86:                                 ; preds = %land.lhs.true.77
  %61 = load i32, i32* %to.addr, align 4
  %shr87 = lshr i32 %61, 8
  %and88 = and i32 %shr87, 255
  %idxprom89 = zext i32 %and88 to i64
  %62 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space_mask90 = getelementptr inbounds %struct.charset, %struct.charset* %62, i32 0, i32 4
  %63 = load i8*, i8** %code_space_mask90, align 8
  %arrayidx91 = getelementptr inbounds i8, i8* %63, i64 %idxprom89
  %64 = load i8, i8* %arrayidx91, align 1
  %conv92 = zext i8 %64 to i32
  %and93 = and i32 %conv92, 2
  %tobool94 = icmp ne i32 %and93, 0
  br i1 %tobool94, label %land.lhs.true.95, label %cond.false.136

land.lhs.true.95:                                 ; preds = %land.lhs.true.86
  %65 = load i32, i32* %to.addr, align 4
  %and96 = and i32 %65, 255
  %idxprom97 = zext i32 %and96 to i64
  %66 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space_mask98 = getelementptr inbounds %struct.charset, %struct.charset* %66, i32 0, i32 4
  %67 = load i8*, i8** %code_space_mask98, align 8
  %arrayidx99 = getelementptr inbounds i8, i8* %67, i64 %idxprom97
  %68 = load i8, i8* %arrayidx99, align 1
  %conv100 = zext i8 %68 to i32
  %and101 = and i32 %conv100, 1
  %tobool102 = icmp ne i32 %and101, 0
  br i1 %tobool102, label %cond.true.103, label %cond.false.136

cond.true.103:                                    ; preds = %land.lhs.true.95
  %69 = load i32, i32* %to.addr, align 4
  %shr104 = lshr i32 %69, 24
  %70 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space105 = getelementptr inbounds %struct.charset, %struct.charset* %70, i32 0, i32 3
  %arrayidx106 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space105, i32 0, i64 12
  %71 = load i32, i32* %arrayidx106, align 4
  %sub107 = sub i32 %shr104, %71
  %72 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space108 = getelementptr inbounds %struct.charset, %struct.charset* %72, i32 0, i32 3
  %arrayidx109 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space108, i32 0, i64 11
  %73 = load i32, i32* %arrayidx109, align 4
  %mul110 = mul i32 %sub107, %73
  %74 = load i32, i32* %to.addr, align 4
  %shr111 = lshr i32 %74, 16
  %and112 = and i32 %shr111, 255
  %75 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space113 = getelementptr inbounds %struct.charset, %struct.charset* %75, i32 0, i32 3
  %arrayidx114 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space113, i32 0, i64 8
  %76 = load i32, i32* %arrayidx114, align 4
  %sub115 = sub i32 %and112, %76
  %77 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space116 = getelementptr inbounds %struct.charset, %struct.charset* %77, i32 0, i32 3
  %arrayidx117 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space116, i32 0, i64 7
  %78 = load i32, i32* %arrayidx117, align 4
  %mul118 = mul i32 %sub115, %78
  %add119 = add i32 %mul110, %mul118
  %79 = load i32, i32* %to.addr, align 4
  %shr120 = lshr i32 %79, 8
  %and121 = and i32 %shr120, 255
  %80 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space122 = getelementptr inbounds %struct.charset, %struct.charset* %80, i32 0, i32 3
  %arrayidx123 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space122, i32 0, i64 4
  %81 = load i32, i32* %arrayidx123, align 4
  %sub124 = sub i32 %and121, %81
  %82 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space125 = getelementptr inbounds %struct.charset, %struct.charset* %82, i32 0, i32 3
  %arrayidx126 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space125, i32 0, i64 3
  %83 = load i32, i32* %arrayidx126, align 4
  %mul127 = mul i32 %sub124, %83
  %add128 = add i32 %add119, %mul127
  %84 = load i32, i32* %to.addr, align 4
  %and129 = and i32 %84, 255
  %85 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space130 = getelementptr inbounds %struct.charset, %struct.charset* %85, i32 0, i32 3
  %arrayidx131 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space130, i32 0, i64 0
  %86 = load i32, i32* %arrayidx131, align 4
  %sub132 = sub i32 %and129, %86
  %add133 = add i32 %add128, %sub132
  %87 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %char_index_offset134 = getelementptr inbounds %struct.charset, %struct.charset* %87, i32 0, i32 12
  %88 = load i32, i32* %char_index_offset134, align 4
  %sub135 = sub i32 %add133, %88
  br label %cond.end.137

cond.false.136:                                   ; preds = %land.lhs.true.95, %land.lhs.true.86, %land.lhs.true.77, %cond.false.69
  br label %cond.end.137

cond.end.137:                                     ; preds = %cond.false.136, %cond.true.103
  %cond138 = phi i32 [ %sub135, %cond.true.103 ], [ -1, %cond.false.136 ]
  br label %cond.end.139

cond.end.139:                                     ; preds = %cond.end.137, %cond.true.66
  %cond140 = phi i32 [ %sub68, %cond.true.66 ], [ %cond138, %cond.end.137 ]
  store i32 %cond140, i32* %to_idx, align 4
  %89 = load i32, i32* %from_idx, align 4
  %90 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_offset = getelementptr inbounds %struct.charset, %struct.charset* %90, i32 0, i32 17
  %91 = load i32, i32* %code_offset, align 4
  %add141 = add nsw i32 %89, %91
  store i32 %add141, i32* %from_c, align 4
  %92 = load i32, i32* %to_idx, align 4
  %93 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_offset142 = getelementptr inbounds %struct.charset, %struct.charset* %93, i32 0, i32 17
  %94 = load i32, i32* %code_offset142, align 4
  %add143 = add nsw i32 %92, %94
  store i32 %add143, i32* %to_c, align 4
  %95 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %unified_p = getelementptr inbounds %struct.charset, %struct.charset* %95, i32 0, i32 5
  %bf.load144 = load i8, i8* %unified_p, align 8
  %bf.lshr = lshr i8 %bf.load144, 5
  %bf.clear145 = and i8 %bf.lshr, 1
  %bf.cast146 = trunc i8 %bf.clear145 to i1
  br i1 %bf.cast146, label %if.then.147, label %if.end.169

if.then.147:                                      ; preds = %cond.end.139
  %96 = load i64, i64* @Vcharset_hash_table, align 8
  %call = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %96)
  %97 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %hash_index = getelementptr inbounds %struct.charset, %struct.charset* %97, i32 0, i32 1
  %98 = load i64, i64* %hash_index, align 8
  %call148 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call, i64 %98)
  %call149 = call i64 @AREF(i64 %call148, i64 9)
  %call150 = call zeroext i1 @CHAR_TABLE_P(i64 %call149)
  br i1 %call150, label %if.end, label %if.then.151

if.then.151:                                      ; preds = %if.then.147
  %99 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  call void @load_charset(%struct.charset* %99, i32 2)
  br label %if.end

if.end:                                           ; preds = %if.then.151, %if.then.147
  %100 = load i64, i64* @Vcharset_hash_table, align 8
  %call152 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %100)
  %101 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %hash_index153 = getelementptr inbounds %struct.charset, %struct.charset* %101, i32 0, i32 1
  %102 = load i64, i64* %hash_index153, align 8
  %call154 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call152, i64 %102)
  %call155 = call i64 @AREF(i64 %call154, i64 9)
  %call156 = call zeroext i1 @CHAR_TABLE_P(i64 %call155)
  br i1 %call156, label %if.then.157, label %if.else

if.then.157:                                      ; preds = %if.end
  %103 = load void (i64, i64)*, void (i64, i64)** %c_function.addr, align 8
  %104 = load i64, i64* %function.addr, align 8
  %105 = load i64, i64* @Vcharset_hash_table, align 8
  %call158 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %105)
  %106 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %hash_index159 = getelementptr inbounds %struct.charset, %struct.charset* %106, i32 0, i32 1
  %107 = load i64, i64* %hash_index159, align 8
  %call160 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call158, i64 %107)
  %call161 = call i64 @AREF(i64 %call160, i64 9)
  %108 = load i64, i64* %arg.addr, align 8
  %109 = load i8, i8* %partial, align 1
  %tobool162 = trunc i8 %109 to i1
  br i1 %tobool162, label %cond.true.164, label %cond.false.165

cond.true.164:                                    ; preds = %if.then.157
  %110 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  br label %cond.end.166

cond.false.165:                                   ; preds = %if.then.157
  br label %cond.end.166

cond.end.166:                                     ; preds = %cond.false.165, %cond.true.164
  %cond167 = phi %struct.charset* [ %110, %cond.true.164 ], [ null, %cond.false.165 ]
  %111 = load i32, i32* %from.addr, align 4
  %112 = load i32, i32* %to.addr, align 4
  call void @map_char_table_for_charset(void (i64, i64)* %103, i64 %104, i64 %call161, i64 %108, %struct.charset* %cond167, i32 %111, i32 %112)
  br label %if.end.168

if.else:                                          ; preds = %if.end
  %113 = load void (i64, i64)*, void (i64, i64)** %c_function.addr, align 8
  %114 = load i64, i64* %function.addr, align 8
  %115 = load i64, i64* %arg.addr, align 8
  %116 = load i32, i32* %from.addr, align 4
  %117 = load i32, i32* %to.addr, align 4
  call void @map_charset_for_dump(void (i64, i64)* %113, i64 %114, i64 %115, i32 %116, i32 %117)
  br label %if.end.168

if.end.168:                                       ; preds = %if.else, %cond.end.166
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.168, %cond.end.139
  %118 = load i32, i32* %from_c, align 4
  %conv170 = sext i32 %118 to i64
  %shl = shl i64 %conv170, 2
  %add171 = add i64 %shl, 2
  %119 = load i32, i32* %to_c, align 4
  %conv172 = sext i32 %119 to i64
  %shl173 = shl i64 %conv172, 2
  %add174 = add i64 %shl173, 2
  %call175 = call i64 @Fcons(i64 %add171, i64 %add174)
  store i64 %call175, i64* %range, align 8
  %120 = load i64, i64* %function.addr, align 8
  %call176 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp177 = icmp eq i64 %120, %call176
  br i1 %cmp177, label %if.then.179, label %if.else.180

if.then.179:                                      ; preds = %if.end.169
  %121 = load void (i64, i64)*, void (i64, i64)** %c_function.addr, align 8
  %122 = load i64, i64* %arg.addr, align 8
  %123 = load i64, i64* %range, align 8
  call void %121(i64 %122, i64 %123)
  br label %if.end.182

if.else.180:                                      ; preds = %if.end.169
  %124 = load i64, i64* %function.addr, align 8
  %125 = load i64, i64* %range, align 8
  %126 = load i64, i64* %arg.addr, align 8
  %call181 = call i64 @call2(i64 %124, i64 %125, i64 %126)
  br label %if.end.182

if.end.182:                                       ; preds = %if.else.180, %if.then.179
  br label %if.end.300

if.else.183:                                      ; preds = %lor.end
  %127 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %method184 = getelementptr inbounds %struct.charset, %struct.charset* %127, i32 0, i32 9
  %128 = load i32, i32* %method184, align 4
  %cmp185 = icmp eq i32 %128, 1
  br i1 %cmp185, label %if.then.187, label %if.else.213

if.then.187:                                      ; preds = %if.else.183
  %129 = load i64, i64* @Vcharset_hash_table, align 8
  %call188 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %129)
  %130 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %hash_index189 = getelementptr inbounds %struct.charset, %struct.charset* %130, i32 0, i32 1
  %131 = load i64, i64* %hash_index189, align 8
  %call190 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call188, i64 %131)
  %call191 = call i64 @AREF(i64 %call190, i64 5)
  %call192 = call zeroext i1 @CHAR_TABLE_P(i64 %call191)
  br i1 %call192, label %if.end.194, label %if.then.193

if.then.193:                                      ; preds = %if.then.187
  %132 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  call void @load_charset(%struct.charset* %132, i32 2)
  br label %if.end.194

if.end.194:                                       ; preds = %if.then.193, %if.then.187
  %133 = load i64, i64* @Vcharset_hash_table, align 8
  %call195 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %133)
  %134 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %hash_index196 = getelementptr inbounds %struct.charset, %struct.charset* %134, i32 0, i32 1
  %135 = load i64, i64* %hash_index196, align 8
  %call197 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call195, i64 %135)
  %call198 = call i64 @AREF(i64 %call197, i64 5)
  %call199 = call zeroext i1 @CHAR_TABLE_P(i64 %call198)
  br i1 %call199, label %if.then.200, label %if.else.211

if.then.200:                                      ; preds = %if.end.194
  %136 = load void (i64, i64)*, void (i64, i64)** %c_function.addr, align 8
  %137 = load i64, i64* %function.addr, align 8
  %138 = load i64, i64* @Vcharset_hash_table, align 8
  %call201 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %138)
  %139 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %hash_index202 = getelementptr inbounds %struct.charset, %struct.charset* %139, i32 0, i32 1
  %140 = load i64, i64* %hash_index202, align 8
  %call203 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call201, i64 %140)
  %call204 = call i64 @AREF(i64 %call203, i64 5)
  %141 = load i64, i64* %arg.addr, align 8
  %142 = load i8, i8* %partial, align 1
  %tobool205 = trunc i8 %142 to i1
  br i1 %tobool205, label %cond.true.207, label %cond.false.208

cond.true.207:                                    ; preds = %if.then.200
  %143 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  br label %cond.end.209

cond.false.208:                                   ; preds = %if.then.200
  br label %cond.end.209

cond.end.209:                                     ; preds = %cond.false.208, %cond.true.207
  %cond210 = phi %struct.charset* [ %143, %cond.true.207 ], [ null, %cond.false.208 ]
  %144 = load i32, i32* %from.addr, align 4
  %145 = load i32, i32* %to.addr, align 4
  call void @map_char_table_for_charset(void (i64, i64)* %136, i64 %137, i64 %call204, i64 %141, %struct.charset* %cond210, i32 %144, i32 %145)
  br label %if.end.212

if.else.211:                                      ; preds = %if.end.194
  %146 = load void (i64, i64)*, void (i64, i64)** %c_function.addr, align 8
  %147 = load i64, i64* %function.addr, align 8
  %148 = load i64, i64* %arg.addr, align 8
  %149 = load i32, i32* %from.addr, align 4
  %150 = load i32, i32* %to.addr, align 4
  call void @map_charset_for_dump(void (i64, i64)* %146, i64 %147, i64 %148, i32 %149, i32 %150)
  br label %if.end.212

if.end.212:                                       ; preds = %if.else.211, %cond.end.209
  br label %if.end.299

if.else.213:                                      ; preds = %if.else.183
  %151 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %method214 = getelementptr inbounds %struct.charset, %struct.charset* %151, i32 0, i32 9
  %152 = load i32, i32* %method214, align 4
  %cmp215 = icmp eq i32 %152, 2
  br i1 %cmp215, label %if.then.217, label %if.else.249

if.then.217:                                      ; preds = %if.else.213
  %153 = load i64, i64* @Vcharset_hash_table, align 8
  %call218 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %153)
  %154 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %hash_index219 = getelementptr inbounds %struct.charset, %struct.charset* %154, i32 0, i32 1
  %155 = load i64, i64* %hash_index219, align 8
  %call220 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call218, i64 %155)
  %call221 = call i64 @AREF(i64 %call220, i64 6)
  store i64 %call221, i64* %subset_info, align 8
  %156 = load %struct.charset*, %struct.charset** @charset_table, align 8
  %157 = load i64, i64* %subset_info, align 8
  %call222 = call i64 @AREF(i64 %157, i64 0)
  %shr223 = ashr i64 %call222, 2
  %add.ptr = getelementptr inbounds %struct.charset, %struct.charset* %156, i64 %shr223
  store %struct.charset* %add.ptr, %struct.charset** %charset.addr, align 8
  %158 = load i64, i64* %subset_info, align 8
  %call224 = call i64 @AREF(i64 %158, i64 3)
  %shr225 = ashr i64 %call224, 2
  %conv226 = trunc i64 %shr225 to i32
  store i32 %conv226, i32* %offset, align 4
  %159 = load i32, i32* %offset, align 4
  %160 = load i32, i32* %from.addr, align 4
  %sub227 = sub i32 %160, %159
  store i32 %sub227, i32* %from.addr, align 4
  %161 = load i32, i32* %from.addr, align 4
  %conv228 = zext i32 %161 to i64
  %162 = load i64, i64* %subset_info, align 8
  %call229 = call i64 @AREF(i64 %162, i64 1)
  %shr230 = ashr i64 %call229, 2
  %cmp231 = icmp slt i64 %conv228, %shr230
  br i1 %cmp231, label %if.then.233, label %if.end.237

if.then.233:                                      ; preds = %if.then.217
  %163 = load i64, i64* %subset_info, align 8
  %call234 = call i64 @AREF(i64 %163, i64 1)
  %shr235 = ashr i64 %call234, 2
  %conv236 = trunc i64 %shr235 to i32
  store i32 %conv236, i32* %from.addr, align 4
  br label %if.end.237

if.end.237:                                       ; preds = %if.then.233, %if.then.217
  %164 = load i32, i32* %offset, align 4
  %165 = load i32, i32* %to.addr, align 4
  %sub238 = sub i32 %165, %164
  store i32 %sub238, i32* %to.addr, align 4
  %166 = load i32, i32* %to.addr, align 4
  %conv239 = zext i32 %166 to i64
  %167 = load i64, i64* %subset_info, align 8
  %call240 = call i64 @AREF(i64 %167, i64 2)
  %shr241 = ashr i64 %call240, 2
  %cmp242 = icmp sgt i64 %conv239, %shr241
  br i1 %cmp242, label %if.then.244, label %if.end.248

if.then.244:                                      ; preds = %if.end.237
  %168 = load i64, i64* %subset_info, align 8
  %call245 = call i64 @AREF(i64 %168, i64 2)
  %shr246 = ashr i64 %call245, 2
  %conv247 = trunc i64 %shr246 to i32
  store i32 %conv247, i32* %to.addr, align 4
  br label %if.end.248

if.end.248:                                       ; preds = %if.then.244, %if.end.237
  %169 = load void (i64, i64)*, void (i64, i64)** %c_function.addr, align 8
  %170 = load i64, i64* %function.addr, align 8
  %171 = load i64, i64* %arg.addr, align 8
  %172 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %173 = load i32, i32* %from.addr, align 4
  %174 = load i32, i32* %to.addr, align 4
  call void @map_charset_chars(void (i64, i64)* %169, i64 %170, i64 %171, %struct.charset* %172, i32 %173, i32 %174)
  br label %if.end.298

if.else.249:                                      ; preds = %if.else.213
  %175 = load i64, i64* @Vcharset_hash_table, align 8
  %call250 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %175)
  %176 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %hash_index251 = getelementptr inbounds %struct.charset, %struct.charset* %176, i32 0, i32 1
  %177 = load i64, i64* %hash_index251, align 8
  %call252 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call250, i64 %177)
  %call253 = call i64 @AREF(i64 %call252, i64 7)
  store i64 %call253, i64* %parents, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.249
  %178 = load i64, i64* %parents, align 8
  %and254 = and i64 %178, 7
  %conv255 = trunc i64 %and254 to i32
  %cmp256 = icmp eq i32 %conv255, 3
  br i1 %cmp256, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %179 = load %struct.charset*, %struct.charset** @charset_table, align 8
  %180 = load i64, i64* %parents, align 8
  %sub259 = sub nsw i64 %180, 3
  %181 = inttoptr i64 %sub259 to i8*
  %182 = bitcast i8* %181 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %182, i32 0, i32 0
  %183 = load i64, i64* %car, align 8
  %sub260 = sub nsw i64 %183, 3
  %184 = inttoptr i64 %sub260 to i8*
  %185 = bitcast i8* %184 to %struct.Lisp_Cons*
  %car261 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %185, i32 0, i32 0
  %186 = load i64, i64* %car261, align 8
  %shr262 = ashr i64 %186, 2
  %add.ptr263 = getelementptr inbounds %struct.charset, %struct.charset* %179, i64 %shr262
  store %struct.charset* %add.ptr263, %struct.charset** %charset.addr, align 8
  %187 = load i64, i64* %parents, align 8
  %sub264 = sub nsw i64 %187, 3
  %188 = inttoptr i64 %sub264 to i8*
  %189 = bitcast i8* %188 to %struct.Lisp_Cons*
  %car265 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %189, i32 0, i32 0
  %190 = load i64, i64* %car265, align 8
  %sub266 = sub nsw i64 %190, 3
  %191 = inttoptr i64 %sub266 to i8*
  %192 = bitcast i8* %191 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %192, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %193 = load i64, i64* %cdr, align 8
  %shr267 = ashr i64 %193, 2
  %conv268 = trunc i64 %shr267 to i32
  store i32 %conv268, i32* %offset258, align 4
  %194 = load i32, i32* %from.addr, align 4
  %195 = load i32, i32* %offset258, align 4
  %cmp269 = icmp ugt i32 %194, %195
  br i1 %cmp269, label %cond.true.271, label %cond.false.273

cond.true.271:                                    ; preds = %for.body
  %196 = load i32, i32* %from.addr, align 4
  %197 = load i32, i32* %offset258, align 4
  %sub272 = sub i32 %196, %197
  br label %cond.end.274

cond.false.273:                                   ; preds = %for.body
  br label %cond.end.274

cond.end.274:                                     ; preds = %cond.false.273, %cond.true.271
  %cond275 = phi i32 [ %sub272, %cond.true.271 ], [ 0, %cond.false.273 ]
  store i32 %cond275, i32* %this_from, align 4
  %198 = load i32, i32* %to.addr, align 4
  %199 = load i32, i32* %offset258, align 4
  %cmp276 = icmp ugt i32 %198, %199
  br i1 %cmp276, label %cond.true.278, label %cond.false.280

cond.true.278:                                    ; preds = %cond.end.274
  %200 = load i32, i32* %to.addr, align 4
  %201 = load i32, i32* %offset258, align 4
  %sub279 = sub i32 %200, %201
  br label %cond.end.281

cond.false.280:                                   ; preds = %cond.end.274
  br label %cond.end.281

cond.end.281:                                     ; preds = %cond.false.280, %cond.true.278
  %cond282 = phi i32 [ %sub279, %cond.true.278 ], [ 0, %cond.false.280 ]
  store i32 %cond282, i32* %this_to, align 4
  %202 = load i32, i32* %this_from, align 4
  %203 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %min_code283 = getelementptr inbounds %struct.charset, %struct.charset* %203, i32 0, i32 10
  %204 = load i32, i32* %min_code283, align 4
  %cmp284 = icmp ult i32 %202, %204
  br i1 %cmp284, label %if.then.286, label %if.end.288

if.then.286:                                      ; preds = %cond.end.281
  %205 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %min_code287 = getelementptr inbounds %struct.charset, %struct.charset* %205, i32 0, i32 10
  %206 = load i32, i32* %min_code287, align 4
  store i32 %206, i32* %this_from, align 4
  br label %if.end.288

if.end.288:                                       ; preds = %if.then.286, %cond.end.281
  %207 = load i32, i32* %this_to, align 4
  %208 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %max_code289 = getelementptr inbounds %struct.charset, %struct.charset* %208, i32 0, i32 11
  %209 = load i32, i32* %max_code289, align 4
  %cmp290 = icmp ugt i32 %207, %209
  br i1 %cmp290, label %if.then.292, label %if.end.294

if.then.292:                                      ; preds = %if.end.288
  %210 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %max_code293 = getelementptr inbounds %struct.charset, %struct.charset* %210, i32 0, i32 11
  %211 = load i32, i32* %max_code293, align 4
  store i32 %211, i32* %this_to, align 4
  br label %if.end.294

if.end.294:                                       ; preds = %if.then.292, %if.end.288
  %212 = load void (i64, i64)*, void (i64, i64)** %c_function.addr, align 8
  %213 = load i64, i64* %function.addr, align 8
  %214 = load i64, i64* %arg.addr, align 8
  %215 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %216 = load i32, i32* %this_from, align 4
  %217 = load i32, i32* %this_to, align 4
  call void @map_charset_chars(void (i64, i64)* %212, i64 %213, i64 %214, %struct.charset* %215, i32 %216, i32 %217)
  br label %for.inc

for.inc:                                          ; preds = %if.end.294
  %218 = load i64, i64* %parents, align 8
  %sub295 = sub nsw i64 %218, 3
  %219 = inttoptr i64 %sub295 to i8*
  %220 = bitcast i8* %219 to %struct.Lisp_Cons*
  %u296 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %220, i32 0, i32 1
  %cdr297 = bitcast %union.anon* %u296 to i64*
  %221 = load i64, i64* %cdr297, align 8
  store i64 %221, i64* %parents, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.298

if.end.298:                                       ; preds = %for.end, %if.end.248
  br label %if.end.299

if.end.299:                                       ; preds = %if.end.298, %if.end.212
  br label %if.end.300

if.end.300:                                       ; preds = %if.end.299, %if.end.182
  ret void
}

declare zeroext i1 @CHAR_TABLE_P(i64) #1

declare i64 @AREF(i64, i64) #1

declare i64 @HASH_VALUE(%struct.Lisp_Hash_Table*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @load_charset(%struct.charset* %charset, i32 %control_flag) #0 {
entry:
  %charset.addr = alloca %struct.charset*, align 8
  %control_flag.addr = alloca i32, align 4
  %map = alloca i64, align 8
  store %struct.charset* %charset, %struct.charset** %charset.addr, align 8
  store i32 %control_flag, i32* %control_flag.addr, align 4
  %0 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 453), align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %tobool1 = icmp ne %struct.anon* %1, null
  br i1 %tobool1, label %land.lhs.true.2, label %if.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %2 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %3 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %current = getelementptr inbounds %struct.anon, %struct.anon* %3, i32 0, i32 0
  %4 = load %struct.charset*, %struct.charset** %current, align 8
  %cmp = icmp eq %struct.charset* %2, %4
  br i1 %cmp, label %land.lhs.true.3, label %if.end

land.lhs.true.3:                                  ; preds = %land.lhs.true.2
  %5 = load i32, i32* %control_flag.addr, align 4
  %cmp4 = icmp eq i32 %5, 2
  %conv = zext i1 %cmp4 to i32
  %6 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %for_encoder = getelementptr inbounds %struct.anon, %struct.anon* %6, i32 0, i32 1
  %7 = load i16, i16* %for_encoder, align 2
  %conv5 = sext i16 %7 to i32
  %cmp6 = icmp eq i32 %conv, %conv5
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.3
  br label %if.end.23

if.end:                                           ; preds = %land.lhs.true.3, %land.lhs.true.2, %land.lhs.true, %entry
  %8 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %method = getelementptr inbounds %struct.charset, %struct.charset* %8, i32 0, i32 9
  %9 = load i32, i32* %method, align 4
  %cmp8 = icmp eq i32 %9, 1
  br i1 %cmp8, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end
  %10 = load i64, i64* @Vcharset_hash_table, align 8
  %call = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %10)
  %11 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %hash_index = getelementptr inbounds %struct.charset, %struct.charset* %11, i32 0, i32 1
  %12 = load i64, i64* %hash_index, align 8
  %call11 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call, i64 %12)
  %call12 = call i64 @AREF(i64 %call11, i64 3)
  store i64 %call12, i64* %map, align 8
  br label %if.end.19

if.else:                                          ; preds = %if.end
  %13 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %unified_p = getelementptr inbounds %struct.charset, %struct.charset* %13, i32 0, i32 5
  %bf.load = load i8, i8* %unified_p, align 8
  %bf.lshr = lshr i8 %bf.load, 5
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.else
  call void @emacs_abort() #7
  unreachable

if.end.14:                                        ; preds = %if.else
  %14 = load i64, i64* @Vcharset_hash_table, align 8
  %call15 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %14)
  %15 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %hash_index16 = getelementptr inbounds %struct.charset, %struct.charset* %15, i32 0, i32 1
  %16 = load i64, i64* %hash_index16, align 8
  %call17 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call15, i64 %16)
  %call18 = call i64 @AREF(i64 %call17, i64 8)
  store i64 %call18, i64* %map, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.14, %if.then.10
  %17 = load i64, i64* %map, align 8
  %call20 = call zeroext i1 @STRINGP(i64 %17)
  br i1 %call20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %if.end.19
  %18 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %19 = load i64, i64* %map, align 8
  %20 = load i32, i32* %control_flag.addr, align 4
  call void @load_charset_map_from_file(%struct.charset* %18, i64 %19, i32 %20)
  br label %if.end.23

if.else.22:                                       ; preds = %if.end.19
  %21 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %22 = load i64, i64* %map, align 8
  %23 = load i32, i32* %control_flag.addr, align 4
  call void @load_charset_map_from_vector(%struct.charset* %21, i64 %22, i32 %23)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then, %if.else.22, %if.then.21
  ret void
}

declare void @map_char_table_for_charset(void (i64, i64)*, i64, i64, i64, %struct.charset*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @map_charset_for_dump(void (i64, i64)* %c_function, i64 %function, i64 %arg, i32 %from, i32 %to) #0 {
entry:
  %c_function.addr = alloca void (i64, i64)*, align 8
  %function.addr = alloca i64, align 8
  %arg.addr = alloca i64, align 8
  %from.addr = alloca i32, align 4
  %to.addr = alloca i32, align 4
  %from_idx = alloca i32, align 4
  %to_idx = alloca i32, align 4
  %range = alloca i64, align 8
  %c = alloca i32, align 4
  %stop = alloca i32, align 4
  %idx = alloca i32, align 4
  store void (i64, i64)* %c_function, void (i64, i64)** %c_function.addr, align 8
  store i64 %function, i64* %function.addr, align 8
  store i64 %arg, i64* %arg.addr, align 8
  store i32 %from, i32* %from.addr, align 4
  store i32 %to, i32* %to.addr, align 4
  %0 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %current = getelementptr inbounds %struct.anon, %struct.anon* %0, i32 0, i32 0
  %1 = load %struct.charset*, %struct.charset** %current, align 8
  %code_linear_p = getelementptr inbounds %struct.charset, %struct.charset* %1, i32 0, i32 5
  %bf.load = load i8, i8* %code_linear_p, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %from.addr, align 4
  %3 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %current1 = getelementptr inbounds %struct.anon, %struct.anon* %3, i32 0, i32 0
  %4 = load %struct.charset*, %struct.charset** %current1, align 8
  %min_code = getelementptr inbounds %struct.charset, %struct.charset* %4, i32 0, i32 10
  %5 = load i32, i32* %min_code, align 4
  %sub = sub i32 %2, %5
  br label %cond.end.69

cond.false:                                       ; preds = %entry
  %6 = load i32, i32* %from.addr, align 4
  %shr = lshr i32 %6, 24
  %idxprom = zext i32 %shr to i64
  %7 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %current2 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 0
  %8 = load %struct.charset*, %struct.charset** %current2, align 8
  %code_space_mask = getelementptr inbounds %struct.charset, %struct.charset* %8, i32 0, i32 4
  %9 = load i8*, i8** %code_space_mask, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %10 to i32
  %and = and i32 %conv, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %cond.false.68

land.lhs.true:                                    ; preds = %cond.false
  %11 = load i32, i32* %from.addr, align 4
  %shr3 = lshr i32 %11, 16
  %and4 = and i32 %shr3, 255
  %idxprom5 = zext i32 %and4 to i64
  %12 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %current6 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0
  %13 = load %struct.charset*, %struct.charset** %current6, align 8
  %code_space_mask7 = getelementptr inbounds %struct.charset, %struct.charset* %13, i32 0, i32 4
  %14 = load i8*, i8** %code_space_mask7, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %14, i64 %idxprom5
  %15 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %15 to i32
  %and10 = and i32 %conv9, 4
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %land.lhs.true.12, label %cond.false.68

land.lhs.true.12:                                 ; preds = %land.lhs.true
  %16 = load i32, i32* %from.addr, align 4
  %shr13 = lshr i32 %16, 8
  %and14 = and i32 %shr13, 255
  %idxprom15 = zext i32 %and14 to i64
  %17 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %current16 = getelementptr inbounds %struct.anon, %struct.anon* %17, i32 0, i32 0
  %18 = load %struct.charset*, %struct.charset** %current16, align 8
  %code_space_mask17 = getelementptr inbounds %struct.charset, %struct.charset* %18, i32 0, i32 4
  %19 = load i8*, i8** %code_space_mask17, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %19, i64 %idxprom15
  %20 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %20 to i32
  %and20 = and i32 %conv19, 2
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %land.lhs.true.22, label %cond.false.68

land.lhs.true.22:                                 ; preds = %land.lhs.true.12
  %21 = load i32, i32* %from.addr, align 4
  %and23 = and i32 %21, 255
  %idxprom24 = zext i32 %and23 to i64
  %22 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %current25 = getelementptr inbounds %struct.anon, %struct.anon* %22, i32 0, i32 0
  %23 = load %struct.charset*, %struct.charset** %current25, align 8
  %code_space_mask26 = getelementptr inbounds %struct.charset, %struct.charset* %23, i32 0, i32 4
  %24 = load i8*, i8** %code_space_mask26, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %24, i64 %idxprom24
  %25 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %25 to i32
  %and29 = and i32 %conv28, 1
  %tobool30 = icmp ne i32 %and29, 0
  br i1 %tobool30, label %cond.true.31, label %cond.false.68

cond.true.31:                                     ; preds = %land.lhs.true.22
  %26 = load i32, i32* %from.addr, align 4
  %shr32 = lshr i32 %26, 24
  %27 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %current33 = getelementptr inbounds %struct.anon, %struct.anon* %27, i32 0, i32 0
  %28 = load %struct.charset*, %struct.charset** %current33, align 8
  %code_space = getelementptr inbounds %struct.charset, %struct.charset* %28, i32 0, i32 3
  %arrayidx34 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space, i32 0, i64 12
  %29 = load i32, i32* %arrayidx34, align 4
  %sub35 = sub i32 %shr32, %29
  %30 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %current36 = getelementptr inbounds %struct.anon, %struct.anon* %30, i32 0, i32 0
  %31 = load %struct.charset*, %struct.charset** %current36, align 8
  %code_space37 = getelementptr inbounds %struct.charset, %struct.charset* %31, i32 0, i32 3
  %arrayidx38 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space37, i32 0, i64 11
  %32 = load i32, i32* %arrayidx38, align 4
  %mul = mul i32 %sub35, %32
  %33 = load i32, i32* %from.addr, align 4
  %shr39 = lshr i32 %33, 16
  %and40 = and i32 %shr39, 255
  %34 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %current41 = getelementptr inbounds %struct.anon, %struct.anon* %34, i32 0, i32 0
  %35 = load %struct.charset*, %struct.charset** %current41, align 8
  %code_space42 = getelementptr inbounds %struct.charset, %struct.charset* %35, i32 0, i32 3
  %arrayidx43 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space42, i32 0, i64 8
  %36 = load i32, i32* %arrayidx43, align 4
  %sub44 = sub i32 %and40, %36
  %37 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %current45 = getelementptr inbounds %struct.anon, %struct.anon* %37, i32 0, i32 0
  %38 = load %struct.charset*, %struct.charset** %current45, align 8
  %code_space46 = getelementptr inbounds %struct.charset, %struct.charset* %38, i32 0, i32 3
  %arrayidx47 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space46, i32 0, i64 7
  %39 = load i32, i32* %arrayidx47, align 4
  %mul48 = mul i32 %sub44, %39
  %add = add i32 %mul, %mul48
  %40 = load i32, i32* %from.addr, align 4
  %shr49 = lshr i32 %40, 8
  %and50 = and i32 %shr49, 255
  %41 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %current51 = getelementptr inbounds %struct.anon, %struct.anon* %41, i32 0, i32 0
  %42 = load %struct.charset*, %struct.charset** %current51, align 8
  %code_space52 = getelementptr inbounds %struct.charset, %struct.charset* %42, i32 0, i32 3
  %arrayidx53 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space52, i32 0, i64 4
  %43 = load i32, i32* %arrayidx53, align 4
  %sub54 = sub i32 %and50, %43
  %44 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %current55 = getelementptr inbounds %struct.anon, %struct.anon* %44, i32 0, i32 0
  %45 = load %struct.charset*, %struct.charset** %current55, align 8
  %code_space56 = getelementptr inbounds %struct.charset, %struct.charset* %45, i32 0, i32 3
  %arrayidx57 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space56, i32 0, i64 3
  %46 = load i32, i32* %arrayidx57, align 4
  %mul58 = mul i32 %sub54, %46
  %add59 = add i32 %add, %mul58
  %47 = load i32, i32* %from.addr, align 4
  %and60 = and i32 %47, 255
  %48 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %current61 = getelementptr inbounds %struct.anon, %struct.anon* %48, i32 0, i32 0
  %49 = load %struct.charset*, %struct.charset** %current61, align 8
  %code_space62 = getelementptr inbounds %struct.charset, %struct.charset* %49, i32 0, i32 3
  %arrayidx63 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space62, i32 0, i64 0
  %50 = load i32, i32* %arrayidx63, align 4
  %sub64 = sub i32 %and60, %50
  %add65 = add i32 %add59, %sub64
  %51 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %current66 = getelementptr inbounds %struct.anon, %struct.anon* %51, i32 0, i32 0
  %52 = load %struct.charset*, %struct.charset** %current66, align 8
  %char_index_offset = getelementptr inbounds %struct.charset, %struct.charset* %52, i32 0, i32 12
  %53 = load i32, i32* %char_index_offset, align 4
  %sub67 = sub i32 %add65, %53
  br label %cond.end

cond.false.68:                                    ; preds = %land.lhs.true.22, %land.lhs.true.12, %land.lhs.true, %cond.false
  br label %cond.end

cond.end:                                         ; preds = %cond.false.68, %cond.true.31
  %cond = phi i32 [ %sub67, %cond.true.31 ], [ -1, %cond.false.68 ]
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.end, %cond.true
  %cond70 = phi i32 [ %sub, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond70, i32* %from_idx, align 4
  %54 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %current71 = getelementptr inbounds %struct.anon, %struct.anon* %54, i32 0, i32 0
  %55 = load %struct.charset*, %struct.charset** %current71, align 8
  %code_linear_p72 = getelementptr inbounds %struct.charset, %struct.charset* %55, i32 0, i32 5
  %bf.load73 = load i8, i8* %code_linear_p72, align 8
  %bf.clear74 = and i8 %bf.load73, 1
  %bf.cast75 = trunc i8 %bf.clear74 to i1
  br i1 %bf.cast75, label %cond.true.77, label %cond.false.81

cond.true.77:                                     ; preds = %cond.end.69
  %56 = load i32, i32* %to.addr, align 4
  %57 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %current78 = getelementptr inbounds %struct.anon, %struct.anon* %57, i32 0, i32 0
  %58 = load %struct.charset*, %struct.charset** %current78, align 8
  %min_code79 = getelementptr inbounds %struct.charset, %struct.charset* %58, i32 0, i32 10
  %59 = load i32, i32* %min_code79, align 4
  %sub80 = sub i32 %56, %59
  br label %cond.end.163

cond.false.81:                                    ; preds = %cond.end.69
  %60 = load i32, i32* %to.addr, align 4
  %shr82 = lshr i32 %60, 24
  %idxprom83 = zext i32 %shr82 to i64
  %61 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %current84 = getelementptr inbounds %struct.anon, %struct.anon* %61, i32 0, i32 0
  %62 = load %struct.charset*, %struct.charset** %current84, align 8
  %code_space_mask85 = getelementptr inbounds %struct.charset, %struct.charset* %62, i32 0, i32 4
  %63 = load i8*, i8** %code_space_mask85, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %63, i64 %idxprom83
  %64 = load i8, i8* %arrayidx86, align 1
  %conv87 = zext i8 %64 to i32
  %and88 = and i32 %conv87, 8
  %tobool89 = icmp ne i32 %and88, 0
  br i1 %tobool89, label %land.lhs.true.90, label %cond.false.160

land.lhs.true.90:                                 ; preds = %cond.false.81
  %65 = load i32, i32* %to.addr, align 4
  %shr91 = lshr i32 %65, 16
  %and92 = and i32 %shr91, 255
  %idxprom93 = zext i32 %and92 to i64
  %66 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %current94 = getelementptr inbounds %struct.anon, %struct.anon* %66, i32 0, i32 0
  %67 = load %struct.charset*, %struct.charset** %current94, align 8
  %code_space_mask95 = getelementptr inbounds %struct.charset, %struct.charset* %67, i32 0, i32 4
  %68 = load i8*, i8** %code_space_mask95, align 8
  %arrayidx96 = getelementptr inbounds i8, i8* %68, i64 %idxprom93
  %69 = load i8, i8* %arrayidx96, align 1
  %conv97 = zext i8 %69 to i32
  %and98 = and i32 %conv97, 4
  %tobool99 = icmp ne i32 %and98, 0
  br i1 %tobool99, label %land.lhs.true.100, label %cond.false.160

land.lhs.true.100:                                ; preds = %land.lhs.true.90
  %70 = load i32, i32* %to.addr, align 4
  %shr101 = lshr i32 %70, 8
  %and102 = and i32 %shr101, 255
  %idxprom103 = zext i32 %and102 to i64
  %71 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %current104 = getelementptr inbounds %struct.anon, %struct.anon* %71, i32 0, i32 0
  %72 = load %struct.charset*, %struct.charset** %current104, align 8
  %code_space_mask105 = getelementptr inbounds %struct.charset, %struct.charset* %72, i32 0, i32 4
  %73 = load i8*, i8** %code_space_mask105, align 8
  %arrayidx106 = getelementptr inbounds i8, i8* %73, i64 %idxprom103
  %74 = load i8, i8* %arrayidx106, align 1
  %conv107 = zext i8 %74 to i32
  %and108 = and i32 %conv107, 2
  %tobool109 = icmp ne i32 %and108, 0
  br i1 %tobool109, label %land.lhs.true.110, label %cond.false.160

land.lhs.true.110:                                ; preds = %land.lhs.true.100
  %75 = load i32, i32* %to.addr, align 4
  %and111 = and i32 %75, 255
  %idxprom112 = zext i32 %and111 to i64
  %76 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %current113 = getelementptr inbounds %struct.anon, %struct.anon* %76, i32 0, i32 0
  %77 = load %struct.charset*, %struct.charset** %current113, align 8
  %code_space_mask114 = getelementptr inbounds %struct.charset, %struct.charset* %77, i32 0, i32 4
  %78 = load i8*, i8** %code_space_mask114, align 8
  %arrayidx115 = getelementptr inbounds i8, i8* %78, i64 %idxprom112
  %79 = load i8, i8* %arrayidx115, align 1
  %conv116 = zext i8 %79 to i32
  %and117 = and i32 %conv116, 1
  %tobool118 = icmp ne i32 %and117, 0
  br i1 %tobool118, label %cond.true.119, label %cond.false.160

cond.true.119:                                    ; preds = %land.lhs.true.110
  %80 = load i32, i32* %to.addr, align 4
  %shr120 = lshr i32 %80, 24
  %81 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %current121 = getelementptr inbounds %struct.anon, %struct.anon* %81, i32 0, i32 0
  %82 = load %struct.charset*, %struct.charset** %current121, align 8
  %code_space122 = getelementptr inbounds %struct.charset, %struct.charset* %82, i32 0, i32 3
  %arrayidx123 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space122, i32 0, i64 12
  %83 = load i32, i32* %arrayidx123, align 4
  %sub124 = sub i32 %shr120, %83
  %84 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %current125 = getelementptr inbounds %struct.anon, %struct.anon* %84, i32 0, i32 0
  %85 = load %struct.charset*, %struct.charset** %current125, align 8
  %code_space126 = getelementptr inbounds %struct.charset, %struct.charset* %85, i32 0, i32 3
  %arrayidx127 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space126, i32 0, i64 11
  %86 = load i32, i32* %arrayidx127, align 4
  %mul128 = mul i32 %sub124, %86
  %87 = load i32, i32* %to.addr, align 4
  %shr129 = lshr i32 %87, 16
  %and130 = and i32 %shr129, 255
  %88 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %current131 = getelementptr inbounds %struct.anon, %struct.anon* %88, i32 0, i32 0
  %89 = load %struct.charset*, %struct.charset** %current131, align 8
  %code_space132 = getelementptr inbounds %struct.charset, %struct.charset* %89, i32 0, i32 3
  %arrayidx133 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space132, i32 0, i64 8
  %90 = load i32, i32* %arrayidx133, align 4
  %sub134 = sub i32 %and130, %90
  %91 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %current135 = getelementptr inbounds %struct.anon, %struct.anon* %91, i32 0, i32 0
  %92 = load %struct.charset*, %struct.charset** %current135, align 8
  %code_space136 = getelementptr inbounds %struct.charset, %struct.charset* %92, i32 0, i32 3
  %arrayidx137 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space136, i32 0, i64 7
  %93 = load i32, i32* %arrayidx137, align 4
  %mul138 = mul i32 %sub134, %93
  %add139 = add i32 %mul128, %mul138
  %94 = load i32, i32* %to.addr, align 4
  %shr140 = lshr i32 %94, 8
  %and141 = and i32 %shr140, 255
  %95 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %current142 = getelementptr inbounds %struct.anon, %struct.anon* %95, i32 0, i32 0
  %96 = load %struct.charset*, %struct.charset** %current142, align 8
  %code_space143 = getelementptr inbounds %struct.charset, %struct.charset* %96, i32 0, i32 3
  %arrayidx144 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space143, i32 0, i64 4
  %97 = load i32, i32* %arrayidx144, align 4
  %sub145 = sub i32 %and141, %97
  %98 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %current146 = getelementptr inbounds %struct.anon, %struct.anon* %98, i32 0, i32 0
  %99 = load %struct.charset*, %struct.charset** %current146, align 8
  %code_space147 = getelementptr inbounds %struct.charset, %struct.charset* %99, i32 0, i32 3
  %arrayidx148 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space147, i32 0, i64 3
  %100 = load i32, i32* %arrayidx148, align 4
  %mul149 = mul i32 %sub145, %100
  %add150 = add i32 %add139, %mul149
  %101 = load i32, i32* %to.addr, align 4
  %and151 = and i32 %101, 255
  %102 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %current152 = getelementptr inbounds %struct.anon, %struct.anon* %102, i32 0, i32 0
  %103 = load %struct.charset*, %struct.charset** %current152, align 8
  %code_space153 = getelementptr inbounds %struct.charset, %struct.charset* %103, i32 0, i32 3
  %arrayidx154 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space153, i32 0, i64 0
  %104 = load i32, i32* %arrayidx154, align 4
  %sub155 = sub i32 %and151, %104
  %add156 = add i32 %add150, %sub155
  %105 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %current157 = getelementptr inbounds %struct.anon, %struct.anon* %105, i32 0, i32 0
  %106 = load %struct.charset*, %struct.charset** %current157, align 8
  %char_index_offset158 = getelementptr inbounds %struct.charset, %struct.charset* %106, i32 0, i32 12
  %107 = load i32, i32* %char_index_offset158, align 4
  %sub159 = sub i32 %add156, %107
  br label %cond.end.161

cond.false.160:                                   ; preds = %land.lhs.true.110, %land.lhs.true.100, %land.lhs.true.90, %cond.false.81
  br label %cond.end.161

cond.end.161:                                     ; preds = %cond.false.160, %cond.true.119
  %cond162 = phi i32 [ %sub159, %cond.true.119 ], [ -1, %cond.false.160 ]
  br label %cond.end.163

cond.end.163:                                     ; preds = %cond.end.161, %cond.true.77
  %cond164 = phi i32 [ %sub80, %cond.true.77 ], [ %cond162, %cond.end.161 ]
  store i32 %cond164, i32* %to_idx, align 4
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %call165 = call i64 @builtin_lisp_symbol(i32 0)
  %call166 = call i64 @Fcons(i64 %call, i64 %call165)
  store i64 %call166, i64* %range, align 8
  %108 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %min_char = getelementptr inbounds %struct.anon, %struct.anon* %108, i32 0, i32 2
  %109 = load i32, i32* %min_char, align 4
  store i32 %109, i32* %c, align 4
  %110 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %max_char = getelementptr inbounds %struct.anon, %struct.anon* %110, i32 0, i32 3
  %111 = load i32, i32* %max_char, align 4
  %cmp = icmp slt i32 %111, 131072
  br i1 %cmp, label %cond.true.168, label %cond.false.170

cond.true.168:                                    ; preds = %cond.end.163
  %112 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %max_char169 = getelementptr inbounds %struct.anon, %struct.anon* %112, i32 0, i32 3
  %113 = load i32, i32* %max_char169, align 4
  br label %cond.end.171

cond.false.170:                                   ; preds = %cond.end.163
  br label %cond.end.171

cond.end.171:                                     ; preds = %cond.false.170, %cond.true.168
  %cond172 = phi i32 [ %113, %cond.true.168 ], [ 65535, %cond.false.170 ]
  store i32 %cond172, i32* %stop, align 4
  br label %while.body

while.body:                                       ; preds = %cond.end.171, %if.end.269
  %114 = load i32, i32* %c, align 4
  %115 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %zero_index_char = getelementptr inbounds %struct.anon, %struct.anon* %115, i32 0, i32 4
  %116 = load i32, i32* %zero_index_char, align 4
  %cmp173 = icmp eq i32 %114, %116
  br i1 %cmp173, label %cond.true.175, label %cond.false.176

cond.true.175:                                    ; preds = %while.body
  br label %cond.end.213

cond.false.176:                                   ; preds = %while.body
  %117 = load i32, i32* %c, align 4
  %cmp177 = icmp slt i32 %117, 131072
  br i1 %cmp177, label %cond.true.179, label %cond.false.193

cond.true.179:                                    ; preds = %cond.false.176
  %118 = load i32, i32* %c, align 4
  %idxprom180 = sext i32 %118 to i64
  %119 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %table = getelementptr inbounds %struct.anon, %struct.anon* %119, i32 0, i32 5
  %encoder = bitcast %union.anon.0* %table to [131072 x i16]*
  %arrayidx181 = getelementptr inbounds [131072 x i16], [131072 x i16]* %encoder, i32 0, i64 %idxprom180
  %120 = load i16, i16* %arrayidx181, align 2
  %conv182 = zext i16 %120 to i32
  %tobool183 = icmp ne i32 %conv182, 0
  br i1 %tobool183, label %cond.true.184, label %cond.false.190

cond.true.184:                                    ; preds = %cond.true.179
  %121 = load i32, i32* %c, align 4
  %idxprom185 = sext i32 %121 to i64
  %122 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %table186 = getelementptr inbounds %struct.anon, %struct.anon* %122, i32 0, i32 5
  %encoder187 = bitcast %union.anon.0* %table186 to [131072 x i16]*
  %arrayidx188 = getelementptr inbounds [131072 x i16], [131072 x i16]* %encoder187, i32 0, i64 %idxprom185
  %123 = load i16, i16* %arrayidx188, align 2
  %conv189 = zext i16 %123 to i32
  br label %cond.end.191

cond.false.190:                                   ; preds = %cond.true.179
  br label %cond.end.191

cond.end.191:                                     ; preds = %cond.false.190, %cond.true.184
  %cond192 = phi i32 [ %conv189, %cond.true.184 ], [ -1, %cond.false.190 ]
  br label %cond.end.211

cond.false.193:                                   ; preds = %cond.false.176
  %124 = load i32, i32* %c, align 4
  %sub194 = sub nsw i32 %124, 65536
  %idxprom195 = sext i32 %sub194 to i64
  %125 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %table196 = getelementptr inbounds %struct.anon, %struct.anon* %125, i32 0, i32 5
  %encoder197 = bitcast %union.anon.0* %table196 to [131072 x i16]*
  %arrayidx198 = getelementptr inbounds [131072 x i16], [131072 x i16]* %encoder197, i32 0, i64 %idxprom195
  %126 = load i16, i16* %arrayidx198, align 2
  %conv199 = zext i16 %126 to i32
  %tobool200 = icmp ne i32 %conv199, 0
  br i1 %tobool200, label %cond.true.201, label %cond.false.208

cond.true.201:                                    ; preds = %cond.false.193
  %127 = load i32, i32* %c, align 4
  %sub202 = sub nsw i32 %127, 65536
  %idxprom203 = sext i32 %sub202 to i64
  %128 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %table204 = getelementptr inbounds %struct.anon, %struct.anon* %128, i32 0, i32 5
  %encoder205 = bitcast %union.anon.0* %table204 to [131072 x i16]*
  %arrayidx206 = getelementptr inbounds [131072 x i16], [131072 x i16]* %encoder205, i32 0, i64 %idxprom203
  %129 = load i16, i16* %arrayidx206, align 2
  %conv207 = zext i16 %129 to i32
  br label %cond.end.209

cond.false.208:                                   ; preds = %cond.false.193
  br label %cond.end.209

cond.end.209:                                     ; preds = %cond.false.208, %cond.true.201
  %cond210 = phi i32 [ %conv207, %cond.true.201 ], [ -1, %cond.false.208 ]
  br label %cond.end.211

cond.end.211:                                     ; preds = %cond.end.209, %cond.end.191
  %cond212 = phi i32 [ %cond192, %cond.end.191 ], [ %cond210, %cond.end.209 ]
  br label %cond.end.213

cond.end.213:                                     ; preds = %cond.end.211, %cond.true.175
  %cond214 = phi i32 [ 0, %cond.true.175 ], [ %cond212, %cond.end.211 ]
  store i32 %cond214, i32* %idx, align 4
  %130 = load i32, i32* %idx, align 4
  %131 = load i32, i32* %from_idx, align 4
  %cmp215 = icmp sge i32 %130, %131
  br i1 %cmp215, label %land.lhs.true.217, label %if.else

land.lhs.true.217:                                ; preds = %cond.end.213
  %132 = load i32, i32* %idx, align 4
  %133 = load i32, i32* %to_idx, align 4
  %cmp218 = icmp sle i32 %132, %133
  br i1 %cmp218, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.217
  %134 = load i64, i64* %range, align 8
  %sub220 = sub nsw i64 %134, 3
  %135 = inttoptr i64 %sub220 to i8*
  %136 = bitcast i8* %135 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %136, i32 0, i32 0
  %137 = load i64, i64* %car, align 8
  %call221 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp222 = icmp eq i64 %137, %call221
  br i1 %cmp222, label %if.then.224, label %if.end

if.then.224:                                      ; preds = %if.then
  %138 = load i64, i64* %range, align 8
  %139 = load i32, i32* %c, align 4
  %conv225 = sext i32 %139 to i64
  %shl = shl i64 %conv225, 2
  %add226 = add i64 %shl, 2
  call void @XSETCAR(i64 %138, i64 %add226)
  br label %if.end

if.end:                                           ; preds = %if.then.224, %if.then
  br label %if.end.244

if.else:                                          ; preds = %land.lhs.true.217, %cond.end.213
  %140 = load i64, i64* %range, align 8
  %sub227 = sub nsw i64 %140, 3
  %141 = inttoptr i64 %sub227 to i8*
  %142 = bitcast i8* %141 to %struct.Lisp_Cons*
  %car228 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %142, i32 0, i32 0
  %143 = load i64, i64* %car228, align 8
  %call229 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp230 = icmp eq i64 %143, %call229
  br i1 %cmp230, label %if.end.243, label %if.then.232

if.then.232:                                      ; preds = %if.else
  %144 = load i64, i64* %range, align 8
  %145 = load i32, i32* %c, align 4
  %sub233 = sub nsw i32 %145, 1
  %conv234 = sext i32 %sub233 to i64
  %shl235 = shl i64 %conv234, 2
  %add236 = add i64 %shl235, 2
  call void @XSETCDR(i64 %144, i64 %add236)
  %146 = load void (i64, i64)*, void (i64, i64)** %c_function.addr, align 8
  %tobool237 = icmp ne void (i64, i64)* %146, null
  br i1 %tobool237, label %if.then.238, label %if.else.239

if.then.238:                                      ; preds = %if.then.232
  %147 = load void (i64, i64)*, void (i64, i64)** %c_function.addr, align 8
  %148 = load i64, i64* %arg.addr, align 8
  %149 = load i64, i64* %range, align 8
  call void %147(i64 %148, i64 %149)
  br label %if.end.241

if.else.239:                                      ; preds = %if.then.232
  %150 = load i64, i64* %function.addr, align 8
  %151 = load i64, i64* %range, align 8
  %152 = load i64, i64* %arg.addr, align 8
  %call240 = call i64 @call2(i64 %150, i64 %151, i64 %152)
  br label %if.end.241

if.end.241:                                       ; preds = %if.else.239, %if.then.238
  %153 = load i64, i64* %range, align 8
  %call242 = call i64 @builtin_lisp_symbol(i32 0)
  call void @XSETCAR(i64 %153, i64 %call242)
  br label %if.end.243

if.end.243:                                       ; preds = %if.end.241, %if.else
  br label %if.end.244

if.end.244:                                       ; preds = %if.end.243, %if.end
  %154 = load i32, i32* %c, align 4
  %155 = load i32, i32* %stop, align 4
  %cmp245 = icmp eq i32 %154, %155
  br i1 %cmp245, label %if.then.247, label %if.end.269

if.then.247:                                      ; preds = %if.end.244
  %156 = load i32, i32* %c, align 4
  %157 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %max_char248 = getelementptr inbounds %struct.anon, %struct.anon* %157, i32 0, i32 3
  %158 = load i32, i32* %max_char248, align 4
  %cmp249 = icmp eq i32 %156, %158
  br i1 %cmp249, label %if.then.251, label %if.end.267

if.then.251:                                      ; preds = %if.then.247
  %159 = load i64, i64* %range, align 8
  %sub252 = sub nsw i64 %159, 3
  %160 = inttoptr i64 %sub252 to i8*
  %161 = bitcast i8* %160 to %struct.Lisp_Cons*
  %car253 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %161, i32 0, i32 0
  %162 = load i64, i64* %car253, align 8
  %call254 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp255 = icmp eq i64 %162, %call254
  br i1 %cmp255, label %if.end.266, label %if.then.257

if.then.257:                                      ; preds = %if.then.251
  %163 = load i64, i64* %range, align 8
  %164 = load i32, i32* %c, align 4
  %conv258 = sext i32 %164 to i64
  %shl259 = shl i64 %conv258, 2
  %add260 = add i64 %shl259, 2
  call void @XSETCDR(i64 %163, i64 %add260)
  %165 = load void (i64, i64)*, void (i64, i64)** %c_function.addr, align 8
  %tobool261 = icmp ne void (i64, i64)* %165, null
  br i1 %tobool261, label %if.then.262, label %if.else.263

if.then.262:                                      ; preds = %if.then.257
  %166 = load void (i64, i64)*, void (i64, i64)** %c_function.addr, align 8
  %167 = load i64, i64* %arg.addr, align 8
  %168 = load i64, i64* %range, align 8
  call void %166(i64 %167, i64 %168)
  br label %if.end.265

if.else.263:                                      ; preds = %if.then.257
  %169 = load i64, i64* %function.addr, align 8
  %170 = load i64, i64* %range, align 8
  %171 = load i64, i64* %arg.addr, align 8
  %call264 = call i64 @call2(i64 %169, i64 %170, i64 %171)
  br label %if.end.265

if.end.265:                                       ; preds = %if.else.263, %if.then.262
  br label %if.end.266

if.end.266:                                       ; preds = %if.end.265, %if.then.251
  br label %while.end

if.end.267:                                       ; preds = %if.then.247
  store i32 131071, i32* %c, align 4
  %172 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %max_char268 = getelementptr inbounds %struct.anon, %struct.anon* %172, i32 0, i32 3
  %173 = load i32, i32* %max_char268, align 4
  store i32 %173, i32* %stop, align 4
  br label %if.end.269

if.end.269:                                       ; preds = %if.end.267, %if.end.244
  %174 = load i32, i32* %c, align 4
  %inc = add nsw i32 %174, 1
  store i32 %inc, i32* %c, align 4
  br label %while.body

while.end:                                        ; preds = %if.end.266
  ret void
}

declare i64 @Fcons(i64, i64) #1

declare i64 @call2(i64, i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fmap_charset_chars(i64 %function, i64 %charset, i64 %arg, i64 %from_code, i64 %to_code) #0 {
entry:
  %function.addr = alloca i64, align 8
  %charset.addr = alloca i64, align 8
  %arg.addr = alloca i64, align 8
  %from_code.addr = alloca i64, align 8
  %to_code.addr = alloca i64, align 8
  %cs = alloca %struct.charset*, align 8
  %from = alloca i32, align 4
  %to = alloca i32, align 4
  %csid = alloca i32, align 4
  %idx = alloca i64, align 8
  store i64 %function, i64* %function.addr, align 8
  store i64 %charset, i64* %charset.addr, align 8
  store i64 %arg, i64* %arg.addr, align 8
  store i64 %from_code, i64* %from_code.addr, align 8
  store i64 %to_code, i64* %to_code.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %0 = load i64, i64* %charset.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %do.body.1
  %1 = load i64, i64* @Vcharset_hash_table, align 8
  %call = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %1)
  %2 = load i64, i64* %charset.addr, align 8
  %call3 = call i64 @hash_lookup(%struct.Lisp_Hash_Table* %call, i64 %2, i64* null)
  store i64 %call3, i64* %idx, align 8
  %cmp4 = icmp slt i64 %call3, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.body.1
  %call6 = call i64 @builtin_lisp_symbol(i32 262)
  %3 = load i64, i64* %charset.addr, align 8
  %4 = call i64 @wrong_type_argument(i64 %call6, i64 %3) #7
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i64, i64* @Vcharset_hash_table, align 8
  %call7 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %5)
  %6 = load i64, i64* %idx, align 8
  %call8 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call7, i64 %6)
  %call9 = call i64 @AREF(i64 %call8, i64 0)
  %shr = ashr i64 %call9, 2
  %conv10 = trunc i64 %shr to i32
  store i32 %conv10, i32* %csid, align 4
  br label %do.end

do.end:                                           ; preds = %if.end
  %7 = load %struct.charset*, %struct.charset** @charset_table, align 8
  %8 = load i32, i32* %csid, align 4
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds %struct.charset, %struct.charset* %7, i64 %idx.ext
  store %struct.charset* %add.ptr, %struct.charset** %cs, align 8
  br label %do.end.11

do.end.11:                                        ; preds = %do.end
  %9 = load i64, i64* %from_code.addr, align 8
  %call12 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp13 = icmp eq i64 %9, %call12
  br i1 %cmp13, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %do.end.11
  %10 = load %struct.charset*, %struct.charset** %cs, align 8
  %min_code = getelementptr inbounds %struct.charset, %struct.charset* %10, i32 0, i32 10
  %11 = load i32, i32* %min_code, align 4
  store i32 %11, i32* %from, align 4
  br label %if.end.24

if.else:                                          ; preds = %do.end.11
  %12 = load i64, i64* %from_code.addr, align 8
  %shr16 = ashr i64 %12, 2
  %conv17 = trunc i64 %shr16 to i32
  store i32 %conv17, i32* %from, align 4
  %13 = load i32, i32* %from, align 4
  %14 = load %struct.charset*, %struct.charset** %cs, align 8
  %min_code18 = getelementptr inbounds %struct.charset, %struct.charset* %14, i32 0, i32 10
  %15 = load i32, i32* %min_code18, align 4
  %cmp19 = icmp ult i32 %13, %15
  br i1 %cmp19, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.else
  %16 = load %struct.charset*, %struct.charset** %cs, align 8
  %min_code22 = getelementptr inbounds %struct.charset, %struct.charset* %16, i32 0, i32 10
  %17 = load i32, i32* %min_code22, align 4
  store i32 %17, i32* %from, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.else
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then.15
  %18 = load i64, i64* %to_code.addr, align 8
  %call25 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp26 = icmp eq i64 %18, %call25
  br i1 %cmp26, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %if.end.24
  %19 = load %struct.charset*, %struct.charset** %cs, align 8
  %max_code = getelementptr inbounds %struct.charset, %struct.charset* %19, i32 0, i32 11
  %20 = load i32, i32* %max_code, align 4
  store i32 %20, i32* %to, align 4
  br label %if.end.38

if.else.29:                                       ; preds = %if.end.24
  %21 = load i64, i64* %to_code.addr, align 8
  %shr30 = ashr i64 %21, 2
  %conv31 = trunc i64 %shr30 to i32
  store i32 %conv31, i32* %to, align 4
  %22 = load i32, i32* %to, align 4
  %23 = load %struct.charset*, %struct.charset** %cs, align 8
  %max_code32 = getelementptr inbounds %struct.charset, %struct.charset* %23, i32 0, i32 11
  %24 = load i32, i32* %max_code32, align 4
  %cmp33 = icmp ugt i32 %22, %24
  br i1 %cmp33, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %if.else.29
  %25 = load %struct.charset*, %struct.charset** %cs, align 8
  %max_code36 = getelementptr inbounds %struct.charset, %struct.charset* %25, i32 0, i32 11
  %26 = load i32, i32* %max_code36, align 4
  store i32 %26, i32* %to, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %if.else.29
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.28
  %27 = load i64, i64* %function.addr, align 8
  %28 = load i64, i64* %arg.addr, align 8
  %29 = load %struct.charset*, %struct.charset** %cs, align 8
  %30 = load i32, i32* %from, align 4
  %31 = load i32, i32* %to, align 4
  call void @map_charset_chars(void (i64, i64)* null, i64 %27, i64 %28, %struct.charset* %29, i32 %30, i32 %31)
  %call39 = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call39
}

; Function Attrs: noreturn
declare i64 @wrong_type_argument(i64, i64) #2

; Function Attrs: nounwind uwtable
define i64 @Fdefine_charset_internal(i64 %nargs, i64* %args) #0 {
entry:
  %retval = alloca i64, align 8
  %nargs.addr = alloca i64, align 8
  %args.addr = alloca i64*, align 8
  %attrs = alloca i64, align 8
  %val = alloca i64, align 8
  %hash_code = alloca i64, align 8
  %hash_table = alloca %struct.Lisp_Hash_Table*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %charset = alloca %struct.charset, align 8
  %id = alloca i32, align 4
  %dimension = alloca i32, align 4
  %new_definition_p = alloca i8, align 1
  %nchars = alloca i32, align 4
  %min_byte_obj = alloca i64, align 8
  %max_byte_obj = alloca i64, align 8
  %min_byte = alloca i32, align 4
  %max_byte = alloca i32, align 4
  %code = alloca i32, align 4
  %code387 = alloca i32, align 4
  %parent = alloca i64, align 8
  %parent_min_code = alloca i64, align 8
  %parent_max_code = alloca i64, align 8
  %parent_code_offset = alloca i64, align 8
  %parent_charset = alloca %struct.charset*, align 8
  %csid = alloca i32, align 4
  %idx = alloca i64, align 8
  %elt = alloca i64, align 8
  %car_part = alloca i64, align 8
  %cdr_part = alloca i64, align 8
  %this_id = alloca i32, align 4
  %offset = alloca i32, align 4
  %this_charset = alloca %struct.charset*, align 8
  %idx985 = alloca i64, align 8
  %idx1030 = alloca i64, align 8
  %old_size = alloca i32, align 4
  %new_size = alloca i64, align 8
  %new_table = alloca %struct.charset*, align 8
  %tail = alloca i64, align 8
  %cs = alloca %struct.charset*, align 8
  store i64 %nargs, i64* %nargs.addr, align 8
  store i64* %args, i64** %args.addr, align 8
  %0 = load i64, i64* @Vcharset_hash_table, align 8
  %call = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %0)
  store %struct.Lisp_Hash_Table* %call, %struct.Lisp_Hash_Table** %hash_table, align 8
  %1 = load i64, i64* %nargs.addr, align 8
  %cmp = icmp ne i64 %1, 17
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 1043)
  %call2 = call i64 @intern(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0))
  %2 = load i64, i64* %nargs.addr, align 8
  %shl = shl i64 %2, 2
  %add = add i64 %shl, 2
  %call3 = call i64 @Fcons(i64 %call2, i64 %add)
  %call4 = call i64 @Fsignal(i64 %call1, i64 %call3)
  store i64 %call4, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  %call6 = call i64 @Fmake_vector(i64 42, i64 %call5)
  store i64 %call6, i64* %attrs, align 8
  %3 = load i64*, i64** %args.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 0
  %4 = load i64, i64* %arrayidx, align 8
  %and = and i64 %4, 7
  %conv = trunc i64 %and to i32
  %cmp7 = icmp eq i32 %conv, 0
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call9 = call i64 @builtin_lisp_symbol(i32 897)
  %5 = load i64*, i64** %args.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, i64* %5, i64 0
  %6 = load i64, i64* %arrayidx10, align 8
  %7 = call i64 @wrong_type_argument(i64 %call9, i64 %6) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %8, %cond.true
  %9 = load i64, i64* %attrs, align 8
  %10 = load i64*, i64** %args.addr, align 8
  %arrayidx11 = getelementptr inbounds i64, i64* %10, i64 0
  %11 = load i64, i64* %arrayidx11, align 8
  call void @ASET(i64 %9, i64 1, i64 %11)
  %12 = load i64*, i64** %args.addr, align 8
  %arrayidx12 = getelementptr inbounds i64, i64* %12, i64 2
  %13 = load i64, i64* %arrayidx12, align 8
  store i64 %13, i64* %val, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %dimension, align 4
  store i32 1, i32* %nchars, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %14 = load i64, i64* %val, align 8
  %15 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %15, 2
  %conv13 = sext i32 %mul to i64
  %shl14 = shl i64 %conv13, 2
  %add15 = add i64 %shl14, 2
  %call16 = call i64 @Faref(i64 %14, i64 %add15)
  store i64 %call16, i64* %min_byte_obj, align 8
  %16 = load i64, i64* %val, align 8
  %17 = load i32, i32* %i, align 4
  %mul17 = mul nsw i32 %17, 2
  %add18 = add nsw i32 %mul17, 1
  %conv19 = sext i32 %add18 to i64
  %shl20 = shl i64 %conv19, 2
  %add21 = add i64 %shl20, 2
  %call22 = call i64 @Faref(i64 %16, i64 %add21)
  store i64 %call22, i64* %max_byte_obj, align 8
  br label %do.body

do.body:                                          ; preds = %for.cond
  %18 = load i64, i64* %min_byte_obj, align 8
  %and23 = and i64 %18, 7
  %conv24 = trunc i64 %and23 to i32
  %and25 = and i32 %conv24, -5
  %cmp26 = icmp eq i32 %and25, 2
  br i1 %cmp26, label %cond.true.28, label %cond.false.29

cond.true.28:                                     ; preds = %do.body
  br label %cond.end.31

cond.false.29:                                    ; preds = %do.body
  %call30 = call i64 @builtin_lisp_symbol(i32 559)
  %19 = load i64, i64* %min_byte_obj, align 8
  %20 = call i64 @wrong_type_argument(i64 %call30, i64 %19) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end.31

cond.end.31:                                      ; preds = %21, %cond.true.28
  %22 = load i64, i64* %min_byte_obj, align 8
  %shr = ashr i64 %22, 2
  %cmp32 = icmp sle i64 0, %shr
  br i1 %cmp32, label %land.lhs.true, label %if.then.37

land.lhs.true:                                    ; preds = %cond.end.31
  %23 = load i64, i64* %min_byte_obj, align 8
  %shr34 = ashr i64 %23, 2
  %cmp35 = icmp sle i64 %shr34, 255
  br i1 %cmp35, label %if.end.38, label %if.then.37

if.then.37:                                       ; preds = %land.lhs.true, %cond.end.31
  %24 = load i64, i64* %min_byte_obj, align 8
  call void @args_out_of_range_3(i64 %24, i64 2, i64 1022) #7
  unreachable

if.end.38:                                        ; preds = %land.lhs.true
  br label %do.end

do.end:                                           ; preds = %if.end.38
  %25 = load i64, i64* %min_byte_obj, align 8
  %shr39 = ashr i64 %25, 2
  %conv40 = trunc i64 %shr39 to i32
  store i32 %conv40, i32* %min_byte, align 4
  br label %do.body.41

do.body.41:                                       ; preds = %do.end
  %26 = load i64, i64* %max_byte_obj, align 8
  %and42 = and i64 %26, 7
  %conv43 = trunc i64 %and42 to i32
  %and44 = and i32 %conv43, -5
  %cmp45 = icmp eq i32 %and44, 2
  br i1 %cmp45, label %cond.true.47, label %cond.false.48

cond.true.47:                                     ; preds = %do.body.41
  br label %cond.end.50

cond.false.48:                                    ; preds = %do.body.41
  %call49 = call i64 @builtin_lisp_symbol(i32 559)
  %27 = load i64, i64* %max_byte_obj, align 8
  %28 = call i64 @wrong_type_argument(i64 %call49, i64 %27) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end.50

cond.end.50:                                      ; preds = %29, %cond.true.47
  %30 = load i32, i32* %min_byte, align 4
  %conv51 = sext i32 %30 to i64
  %31 = load i64, i64* %max_byte_obj, align 8
  %shr52 = ashr i64 %31, 2
  %cmp53 = icmp sle i64 %conv51, %shr52
  br i1 %cmp53, label %land.lhs.true.55, label %if.then.59

land.lhs.true.55:                                 ; preds = %cond.end.50
  %32 = load i64, i64* %max_byte_obj, align 8
  %shr56 = ashr i64 %32, 2
  %cmp57 = icmp sle i64 %shr56, 255
  br i1 %cmp57, label %if.end.72, label %if.then.59

if.then.59:                                       ; preds = %land.lhs.true.55, %cond.end.50
  %33 = load i64, i64* %max_byte_obj, align 8
  %34 = load i32, i32* %min_byte, align 4
  %cmp60 = icmp slt i32 %34, 0
  br i1 %cmp60, label %land.lhs.true.62, label %cond.false.67

land.lhs.true.62:                                 ; preds = %if.then.59
  %35 = load i32, i32* %min_byte, align 4
  %conv63 = sext i32 %35 to i64
  %cmp64 = icmp slt i64 %conv63, -2305843009213693952
  br i1 %cmp64, label %cond.true.66, label %cond.false.67

cond.true.66:                                     ; preds = %land.lhs.true.62
  br label %cond.end.69

cond.false.67:                                    ; preds = %land.lhs.true.62, %if.then.59
  %36 = load i32, i32* %min_byte, align 4
  %conv68 = sext i32 %36 to i64
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.false.67, %cond.true.66
  %cond = phi i64 [ -2305843009213693952, %cond.true.66 ], [ %conv68, %cond.false.67 ]
  %shl70 = shl i64 %cond, 2
  %add71 = add i64 %shl70, 2
  call void @args_out_of_range_3(i64 %33, i64 %add71, i64 1022) #7
  unreachable

if.end.72:                                        ; preds = %land.lhs.true.55
  br label %do.end.73

do.end.73:                                        ; preds = %if.end.72
  %37 = load i64, i64* %max_byte_obj, align 8
  %shr74 = ashr i64 %37, 2
  %conv75 = trunc i64 %shr74 to i32
  store i32 %conv75, i32* %max_byte, align 4
  %38 = load i32, i32* %min_byte, align 4
  %39 = load i32, i32* %i, align 4
  %mul76 = mul nsw i32 %39, 4
  %idxprom = sext i32 %mul76 to i64
  %code_space = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 3
  %arrayidx77 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space, i32 0, i64 %idxprom
  store i32 %38, i32* %arrayidx77, align 4
  %40 = load i32, i32* %max_byte, align 4
  %41 = load i32, i32* %i, align 4
  %mul78 = mul nsw i32 %41, 4
  %add79 = add nsw i32 %mul78, 1
  %idxprom80 = sext i32 %add79 to i64
  %code_space81 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 3
  %arrayidx82 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space81, i32 0, i64 %idxprom80
  store i32 %40, i32* %arrayidx82, align 4
  %42 = load i32, i32* %max_byte, align 4
  %43 = load i32, i32* %min_byte, align 4
  %sub = sub nsw i32 %42, %43
  %add83 = add nsw i32 %sub, 1
  %44 = load i32, i32* %i, align 4
  %mul84 = mul nsw i32 %44, 4
  %add85 = add nsw i32 %mul84, 2
  %idxprom86 = sext i32 %add85 to i64
  %code_space87 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 3
  %arrayidx88 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space87, i32 0, i64 %idxprom86
  store i32 %add83, i32* %arrayidx88, align 4
  %45 = load i32, i32* %max_byte, align 4
  %cmp89 = icmp sgt i32 %45, 0
  br i1 %cmp89, label %if.then.91, label %if.end.93

if.then.91:                                       ; preds = %do.end.73
  %46 = load i32, i32* %i, align 4
  %add92 = add nsw i32 %46, 1
  store i32 %add92, i32* %dimension, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.91, %do.end.73
  %47 = load i32, i32* %i, align 4
  %cmp94 = icmp eq i32 %47, 3
  br i1 %cmp94, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %if.end.93
  br label %for.end

if.end.97:                                        ; preds = %if.end.93
  %48 = load i32, i32* %i, align 4
  %mul98 = mul nsw i32 %48, 4
  %add99 = add nsw i32 %mul98, 2
  %idxprom100 = sext i32 %add99 to i64
  %code_space101 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 3
  %arrayidx102 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space101, i32 0, i64 %idxprom100
  %49 = load i32, i32* %arrayidx102, align 4
  %50 = load i32, i32* %nchars, align 4
  %mul103 = mul nsw i32 %50, %49
  store i32 %mul103, i32* %nchars, align 4
  %51 = load i32, i32* %nchars, align 4
  %52 = load i32, i32* %i, align 4
  %mul104 = mul nsw i32 %52, 4
  %add105 = add nsw i32 %mul104, 3
  %idxprom106 = sext i32 %add105 to i64
  %code_space107 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 3
  %arrayidx108 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space107, i32 0, i64 %idxprom106
  store i32 %51, i32* %arrayidx108, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.97
  %53 = load i32, i32* %i, align 4
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.96
  %54 = load i64*, i64** %args.addr, align 8
  %arrayidx109 = getelementptr inbounds i64, i64* %54, i64 1
  %55 = load i64, i64* %arrayidx109, align 8
  store i64 %55, i64* %val, align 8
  %56 = load i64, i64* %val, align 8
  %call110 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp111 = icmp eq i64 %56, %call110
  br i1 %cmp111, label %if.then.113, label %if.else

if.then.113:                                      ; preds = %for.end
  %57 = load i32, i32* %dimension, align 4
  %dimension114 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 2
  store i32 %57, i32* %dimension114, align 4
  br label %if.end.138

if.else:                                          ; preds = %for.end
  br label %do.body.115

do.body.115:                                      ; preds = %if.else
  %58 = load i64, i64* %val, align 8
  %and116 = and i64 %58, 7
  %conv117 = trunc i64 %and116 to i32
  %and118 = and i32 %conv117, -5
  %cmp119 = icmp eq i32 %and118, 2
  br i1 %cmp119, label %cond.true.121, label %cond.false.122

cond.true.121:                                    ; preds = %do.body.115
  br label %cond.end.124

cond.false.122:                                   ; preds = %do.body.115
  %call123 = call i64 @builtin_lisp_symbol(i32 559)
  %59 = load i64, i64* %val, align 8
  %60 = call i64 @wrong_type_argument(i64 %call123, i64 %59) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end.124

cond.end.124:                                     ; preds = %61, %cond.true.121
  %62 = load i64, i64* %val, align 8
  %shr125 = ashr i64 %62, 2
  %cmp126 = icmp sle i64 1, %shr125
  br i1 %cmp126, label %land.lhs.true.128, label %if.then.132

land.lhs.true.128:                                ; preds = %cond.end.124
  %63 = load i64, i64* %val, align 8
  %shr129 = ashr i64 %63, 2
  %cmp130 = icmp sle i64 %shr129, 4
  br i1 %cmp130, label %if.end.133, label %if.then.132

if.then.132:                                      ; preds = %land.lhs.true.128, %cond.end.124
  %64 = load i64, i64* %val, align 8
  call void @args_out_of_range_3(i64 %64, i64 6, i64 18) #7
  unreachable

if.end.133:                                       ; preds = %land.lhs.true.128
  br label %do.end.134

do.end.134:                                       ; preds = %if.end.133
  %65 = load i64, i64* %val, align 8
  %shr135 = ashr i64 %65, 2
  %conv136 = trunc i64 %shr135 to i32
  %dimension137 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 2
  store i32 %conv136, i32* %dimension137, align 4
  br label %if.end.138

if.end.138:                                       ; preds = %do.end.134, %if.then.113
  %dimension139 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 2
  %66 = load i32, i32* %dimension139, align 4
  %cmp140 = icmp eq i32 %66, 1
  br i1 %cmp140, label %lor.end.165, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.138
  %code_space142 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 3
  %arrayidx143 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space142, i32 0, i64 2
  %67 = load i32, i32* %arrayidx143, align 4
  %cmp144 = icmp eq i32 %67, 256
  br i1 %cmp144, label %land.rhs, label %land.end.164

land.rhs:                                         ; preds = %lor.rhs
  %dimension146 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 2
  %68 = load i32, i32* %dimension146, align 4
  %cmp147 = icmp eq i32 %68, 2
  br i1 %cmp147, label %lor.end.163, label %lor.rhs.149

lor.rhs.149:                                      ; preds = %land.rhs
  %code_space150 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 3
  %arrayidx151 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space150, i32 0, i64 6
  %69 = load i32, i32* %arrayidx151, align 4
  %cmp152 = icmp eq i32 %69, 256
  br i1 %cmp152, label %land.rhs.154, label %land.end

land.rhs.154:                                     ; preds = %lor.rhs.149
  %dimension155 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 2
  %70 = load i32, i32* %dimension155, align 4
  %cmp156 = icmp eq i32 %70, 3
  br i1 %cmp156, label %lor.end, label %lor.rhs.158

lor.rhs.158:                                      ; preds = %land.rhs.154
  %code_space159 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 3
  %arrayidx160 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space159, i32 0, i64 10
  %71 = load i32, i32* %arrayidx160, align 4
  %cmp161 = icmp eq i32 %71, 256
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs.158, %land.rhs.154
  %72 = phi i1 [ true, %land.rhs.154 ], [ %cmp161, %lor.rhs.158 ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %lor.rhs.149
  %73 = phi i1 [ false, %lor.rhs.149 ], [ %72, %lor.end ]
  br label %lor.end.163

lor.end.163:                                      ; preds = %land.end, %land.rhs
  %74 = phi i1 [ true, %land.rhs ], [ %73, %land.end ]
  br label %land.end.164

land.end.164:                                     ; preds = %lor.end.163, %lor.rhs
  %75 = phi i1 [ false, %lor.rhs ], [ %74, %lor.end.163 ]
  br label %lor.end.165

lor.end.165:                                      ; preds = %land.end.164, %if.end.138
  %76 = phi i1 [ true, %if.end.138 ], [ %75, %land.end.164 ]
  %code_linear_p = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 5
  %77 = zext i1 %76 to i8
  %bf.load = load i8, i8* %code_linear_p, align 8
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, %77
  store i8 %bf.set, i8* %code_linear_p, align 8
  %tobool = trunc i8 %77 to i1
  %code_linear_p166 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 5
  %bf.load167 = load i8, i8* %code_linear_p166, align 8
  %bf.clear168 = and i8 %bf.load167, 1
  %bf.cast = trunc i8 %bf.clear168 to i1
  br i1 %bf.cast, label %if.end.199, label %if.then.169

if.then.169:                                      ; preds = %lor.end.165
  %call170 = call noalias i8* @xzalloc(i64 256)
  %code_space_mask = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 4
  store i8* %call170, i8** %code_space_mask, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.171

for.cond.171:                                     ; preds = %for.inc.196, %if.then.169
  %78 = load i32, i32* %i, align 4
  %cmp172 = icmp slt i32 %78, 4
  br i1 %cmp172, label %for.body, label %for.end.198

for.body:                                         ; preds = %for.cond.171
  %79 = load i32, i32* %i, align 4
  %mul174 = mul nsw i32 %79, 4
  %idxprom175 = sext i32 %mul174 to i64
  %code_space176 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 3
  %arrayidx177 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space176, i32 0, i64 %idxprom175
  %80 = load i32, i32* %arrayidx177, align 4
  store i32 %80, i32* %j, align 4
  br label %for.cond.178

for.cond.178:                                     ; preds = %for.inc.193, %for.body
  %81 = load i32, i32* %j, align 4
  %82 = load i32, i32* %i, align 4
  %mul179 = mul nsw i32 %82, 4
  %add180 = add nsw i32 %mul179, 1
  %idxprom181 = sext i32 %add180 to i64
  %code_space182 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 3
  %arrayidx183 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space182, i32 0, i64 %idxprom181
  %83 = load i32, i32* %arrayidx183, align 4
  %cmp184 = icmp sle i32 %81, %83
  br i1 %cmp184, label %for.body.186, label %for.end.195

for.body.186:                                     ; preds = %for.cond.178
  %84 = load i32, i32* %i, align 4
  %shl187 = shl i32 1, %84
  %85 = load i32, i32* %j, align 4
  %idxprom188 = sext i32 %85 to i64
  %code_space_mask189 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 4
  %86 = load i8*, i8** %code_space_mask189, align 8
  %arrayidx190 = getelementptr inbounds i8, i8* %86, i64 %idxprom188
  %87 = load i8, i8* %arrayidx190, align 1
  %conv191 = zext i8 %87 to i32
  %or = or i32 %conv191, %shl187
  %conv192 = trunc i32 %or to i8
  store i8 %conv192, i8* %arrayidx190, align 1
  br label %for.inc.193

for.inc.193:                                      ; preds = %for.body.186
  %88 = load i32, i32* %j, align 4
  %inc194 = add nsw i32 %88, 1
  store i32 %inc194, i32* %j, align 4
  br label %for.cond.178

for.end.195:                                      ; preds = %for.cond.178
  br label %for.inc.196

for.inc.196:                                      ; preds = %for.end.195
  %89 = load i32, i32* %i, align 4
  %inc197 = add nsw i32 %89, 1
  store i32 %inc197, i32* %i, align 4
  br label %for.cond.171

for.end.198:                                      ; preds = %for.cond.171
  br label %if.end.199

if.end.199:                                       ; preds = %for.end.198, %lor.end.165
  %code_space200 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 3
  %arrayidx201 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space200, i32 0, i64 2
  %90 = load i32, i32* %arrayidx201, align 4
  %cmp202 = icmp eq i32 %90, 96
  %iso_chars_96 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 5
  %91 = zext i1 %cmp202 to i8
  %bf.load204 = load i8, i8* %iso_chars_96, align 8
  %bf.shl = shl i8 %91, 1
  %bf.clear205 = and i8 %bf.load204, -3
  %bf.set206 = or i8 %bf.clear205, %bf.shl
  store i8 %bf.set206, i8* %iso_chars_96, align 8
  %tobool207 = trunc i8 %91 to i1
  %code_space208 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 3
  %arrayidx209 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space208, i32 0, i64 0
  %92 = load i32, i32* %arrayidx209, align 4
  %code_space210 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 3
  %arrayidx211 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space210, i32 0, i64 4
  %93 = load i32, i32* %arrayidx211, align 4
  %shl212 = shl i32 %93, 8
  %or213 = or i32 %92, %shl212
  %code_space214 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 3
  %arrayidx215 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space214, i32 0, i64 8
  %94 = load i32, i32* %arrayidx215, align 4
  %shl216 = shl i32 %94, 16
  %or217 = or i32 %or213, %shl216
  %code_space218 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 3
  %arrayidx219 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space218, i32 0, i64 12
  %95 = load i32, i32* %arrayidx219, align 4
  %shl220 = shl i32 %95, 24
  %or221 = or i32 %or217, %shl220
  %min_code = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 10
  store i32 %or221, i32* %min_code, align 4
  %code_space222 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 3
  %arrayidx223 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space222, i32 0, i64 1
  %96 = load i32, i32* %arrayidx223, align 4
  %code_space224 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 3
  %arrayidx225 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space224, i32 0, i64 5
  %97 = load i32, i32* %arrayidx225, align 4
  %shl226 = shl i32 %97, 8
  %or227 = or i32 %96, %shl226
  %code_space228 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 3
  %arrayidx229 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space228, i32 0, i64 9
  %98 = load i32, i32* %arrayidx229, align 4
  %shl230 = shl i32 %98, 16
  %or231 = or i32 %or227, %shl230
  %code_space232 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 3
  %arrayidx233 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space232, i32 0, i64 13
  %99 = load i32, i32* %arrayidx233, align 4
  %shl234 = shl i32 %99, 24
  %or235 = or i32 %or231, %shl234
  %max_code = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 11
  store i32 %or235, i32* %max_code, align 4
  %char_index_offset = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 12
  store i32 0, i32* %char_index_offset, align 4
  %100 = load i64*, i64** %args.addr, align 8
  %arrayidx236 = getelementptr inbounds i64, i64* %100, i64 3
  %101 = load i64, i64* %arrayidx236, align 8
  store i64 %101, i64* %val, align 8
  %102 = load i64, i64* %val, align 8
  %call237 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp238 = icmp eq i64 %102, %call237
  br i1 %cmp238, label %if.end.381, label %if.then.240

if.then.240:                                      ; preds = %if.end.199
  %103 = load i64, i64* %val, align 8
  %call241 = call i64 @cons_to_unsigned(i64 %103, i64 4294967295)
  %conv242 = trunc i64 %call241 to i32
  store i32 %conv242, i32* %code, align 4
  %104 = load i32, i32* %code, align 4
  %min_code243 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 10
  %105 = load i32, i32* %min_code243, align 4
  %cmp244 = icmp ult i32 %104, %105
  br i1 %cmp244, label %if.then.249, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.240
  %106 = load i32, i32* %code, align 4
  %max_code246 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 11
  %107 = load i32, i32* %max_code246, align 4
  %cmp247 = icmp ugt i32 %106, %107
  br i1 %cmp247, label %if.then.249, label %if.end.298

if.then.249:                                      ; preds = %lor.lhs.false, %if.then.240
  %min_code250 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 10
  %108 = load i32, i32* %min_code250, align 4
  %cmp251 = icmp ule i32 0, %108
  br i1 %cmp251, label %land.lhs.true.258, label %lor.lhs.false.253

lor.lhs.false.253:                                ; preds = %if.then.249
  %min_code254 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 10
  %109 = load i32, i32* %min_code254, align 4
  %conv255 = zext i32 %109 to i64
  %cmp256 = icmp sle i64 -2305843009213693952, %conv255
  br i1 %cmp256, label %land.lhs.true.258, label %cond.true.263

land.lhs.true.258:                                ; preds = %lor.lhs.false.253, %if.then.249
  %min_code259 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 10
  %110 = load i32, i32* %min_code259, align 4
  %conv260 = zext i32 %110 to i64
  %cmp261 = icmp sle i64 %conv260, 2305843009213693951
  br i1 %cmp261, label %cond.false.267, label %cond.true.263

cond.true.263:                                    ; preds = %land.lhs.true.258, %lor.lhs.false.253
  %min_code264 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 10
  %111 = load i32, i32* %min_code264, align 4
  %conv265 = uitofp i32 %111 to double
  %call266 = call i64 @make_float(double %conv265)
  br label %cond.end.272

cond.false.267:                                   ; preds = %land.lhs.true.258
  %min_code268 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 10
  %112 = load i32, i32* %min_code268, align 4
  %conv269 = zext i32 %112 to i64
  %shl270 = shl i64 %conv269, 2
  %add271 = add i64 %shl270, 2
  br label %cond.end.272

cond.end.272:                                     ; preds = %cond.false.267, %cond.true.263
  %cond273 = phi i64 [ %call266, %cond.true.263 ], [ %add271, %cond.false.267 ]
  %max_code274 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 11
  %113 = load i32, i32* %max_code274, align 4
  %cmp275 = icmp ule i32 0, %113
  br i1 %cmp275, label %land.lhs.true.282, label %lor.lhs.false.277

lor.lhs.false.277:                                ; preds = %cond.end.272
  %max_code278 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 11
  %114 = load i32, i32* %max_code278, align 4
  %conv279 = zext i32 %114 to i64
  %cmp280 = icmp sle i64 -2305843009213693952, %conv279
  br i1 %cmp280, label %land.lhs.true.282, label %cond.true.287

land.lhs.true.282:                                ; preds = %lor.lhs.false.277, %cond.end.272
  %max_code283 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 11
  %115 = load i32, i32* %max_code283, align 4
  %conv284 = zext i32 %115 to i64
  %cmp285 = icmp sle i64 %conv284, 2305843009213693951
  br i1 %cmp285, label %cond.false.291, label %cond.true.287

cond.true.287:                                    ; preds = %land.lhs.true.282, %lor.lhs.false.277
  %max_code288 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 11
  %116 = load i32, i32* %max_code288, align 4
  %conv289 = uitofp i32 %116 to double
  %call290 = call i64 @make_float(double %conv289)
  br label %cond.end.296

cond.false.291:                                   ; preds = %land.lhs.true.282
  %max_code292 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 11
  %117 = load i32, i32* %max_code292, align 4
  %conv293 = zext i32 %117 to i64
  %shl294 = shl i64 %conv293, 2
  %add295 = add i64 %shl294, 2
  br label %cond.end.296

cond.end.296:                                     ; preds = %cond.false.291, %cond.true.287
  %cond297 = phi i64 [ %call290, %cond.true.287 ], [ %add295, %cond.false.291 ]
  %118 = load i64, i64* %val, align 8
  call void @args_out_of_range_3(i64 %cond273, i64 %cond297, i64 %118) #7
  unreachable

if.end.298:                                       ; preds = %lor.lhs.false
  %code_linear_p299 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 5
  %bf.load300 = load i8, i8* %code_linear_p299, align 8
  %bf.clear301 = and i8 %bf.load300, 1
  %bf.cast302 = trunc i8 %bf.clear301 to i1
  br i1 %bf.cast302, label %cond.true.304, label %cond.false.307

cond.true.304:                                    ; preds = %if.end.298
  %119 = load i32, i32* %code, align 4
  %min_code305 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 10
  %120 = load i32, i32* %min_code305, align 4
  %sub306 = sub i32 %119, %120
  br label %cond.end.377

cond.false.307:                                   ; preds = %if.end.298
  %121 = load i32, i32* %code, align 4
  %shr308 = lshr i32 %121, 24
  %idxprom309 = zext i32 %shr308 to i64
  %code_space_mask310 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 4
  %122 = load i8*, i8** %code_space_mask310, align 8
  %arrayidx311 = getelementptr inbounds i8, i8* %122, i64 %idxprom309
  %123 = load i8, i8* %arrayidx311, align 1
  %conv312 = zext i8 %123 to i32
  %and313 = and i32 %conv312, 8
  %tobool314 = icmp ne i32 %and313, 0
  br i1 %tobool314, label %land.lhs.true.315, label %cond.false.374

land.lhs.true.315:                                ; preds = %cond.false.307
  %124 = load i32, i32* %code, align 4
  %shr316 = lshr i32 %124, 16
  %and317 = and i32 %shr316, 255
  %idxprom318 = zext i32 %and317 to i64
  %code_space_mask319 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 4
  %125 = load i8*, i8** %code_space_mask319, align 8
  %arrayidx320 = getelementptr inbounds i8, i8* %125, i64 %idxprom318
  %126 = load i8, i8* %arrayidx320, align 1
  %conv321 = zext i8 %126 to i32
  %and322 = and i32 %conv321, 4
  %tobool323 = icmp ne i32 %and322, 0
  br i1 %tobool323, label %land.lhs.true.324, label %cond.false.374

land.lhs.true.324:                                ; preds = %land.lhs.true.315
  %127 = load i32, i32* %code, align 4
  %shr325 = lshr i32 %127, 8
  %and326 = and i32 %shr325, 255
  %idxprom327 = zext i32 %and326 to i64
  %code_space_mask328 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 4
  %128 = load i8*, i8** %code_space_mask328, align 8
  %arrayidx329 = getelementptr inbounds i8, i8* %128, i64 %idxprom327
  %129 = load i8, i8* %arrayidx329, align 1
  %conv330 = zext i8 %129 to i32
  %and331 = and i32 %conv330, 2
  %tobool332 = icmp ne i32 %and331, 0
  br i1 %tobool332, label %land.lhs.true.333, label %cond.false.374

land.lhs.true.333:                                ; preds = %land.lhs.true.324
  %130 = load i32, i32* %code, align 4
  %and334 = and i32 %130, 255
  %idxprom335 = zext i32 %and334 to i64
  %code_space_mask336 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 4
  %131 = load i8*, i8** %code_space_mask336, align 8
  %arrayidx337 = getelementptr inbounds i8, i8* %131, i64 %idxprom335
  %132 = load i8, i8* %arrayidx337, align 1
  %conv338 = zext i8 %132 to i32
  %and339 = and i32 %conv338, 1
  %tobool340 = icmp ne i32 %and339, 0
  br i1 %tobool340, label %cond.true.341, label %cond.false.374

cond.true.341:                                    ; preds = %land.lhs.true.333
  %133 = load i32, i32* %code, align 4
  %shr342 = lshr i32 %133, 24
  %code_space343 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 3
  %arrayidx344 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space343, i32 0, i64 12
  %134 = load i32, i32* %arrayidx344, align 4
  %sub345 = sub i32 %shr342, %134
  %code_space346 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 3
  %arrayidx347 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space346, i32 0, i64 11
  %135 = load i32, i32* %arrayidx347, align 4
  %mul348 = mul i32 %sub345, %135
  %136 = load i32, i32* %code, align 4
  %shr349 = lshr i32 %136, 16
  %and350 = and i32 %shr349, 255
  %code_space351 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 3
  %arrayidx352 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space351, i32 0, i64 8
  %137 = load i32, i32* %arrayidx352, align 4
  %sub353 = sub i32 %and350, %137
  %code_space354 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 3
  %arrayidx355 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space354, i32 0, i64 7
  %138 = load i32, i32* %arrayidx355, align 4
  %mul356 = mul i32 %sub353, %138
  %add357 = add i32 %mul348, %mul356
  %139 = load i32, i32* %code, align 4
  %shr358 = lshr i32 %139, 8
  %and359 = and i32 %shr358, 255
  %code_space360 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 3
  %arrayidx361 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space360, i32 0, i64 4
  %140 = load i32, i32* %arrayidx361, align 4
  %sub362 = sub i32 %and359, %140
  %code_space363 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 3
  %arrayidx364 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space363, i32 0, i64 3
  %141 = load i32, i32* %arrayidx364, align 4
  %mul365 = mul i32 %sub362, %141
  %add366 = add i32 %add357, %mul365
  %142 = load i32, i32* %code, align 4
  %and367 = and i32 %142, 255
  %code_space368 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 3
  %arrayidx369 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space368, i32 0, i64 0
  %143 = load i32, i32* %arrayidx369, align 4
  %sub370 = sub i32 %and367, %143
  %add371 = add i32 %add366, %sub370
  %char_index_offset372 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 12
  %144 = load i32, i32* %char_index_offset372, align 4
  %sub373 = sub i32 %add371, %144
  br label %cond.end.375

cond.false.374:                                   ; preds = %land.lhs.true.333, %land.lhs.true.324, %land.lhs.true.315, %cond.false.307
  br label %cond.end.375

cond.end.375:                                     ; preds = %cond.false.374, %cond.true.341
  %cond376 = phi i32 [ %sub373, %cond.true.341 ], [ -1, %cond.false.374 ]
  br label %cond.end.377

cond.end.377:                                     ; preds = %cond.end.375, %cond.true.304
  %cond378 = phi i32 [ %sub306, %cond.true.304 ], [ %cond376, %cond.end.375 ]
  %char_index_offset379 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 12
  store i32 %cond378, i32* %char_index_offset379, align 4
  %145 = load i32, i32* %code, align 4
  %min_code380 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 10
  store i32 %145, i32* %min_code380, align 4
  br label %if.end.381

if.end.381:                                       ; preds = %cond.end.377, %if.end.199
  %146 = load i64*, i64** %args.addr, align 8
  %arrayidx382 = getelementptr inbounds i64, i64* %146, i64 4
  %147 = load i64, i64* %arrayidx382, align 8
  store i64 %147, i64* %val, align 8
  %148 = load i64, i64* %val, align 8
  %call383 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp384 = icmp eq i64 %148, %call383
  br i1 %cmp384, label %if.end.448, label %if.then.386

if.then.386:                                      ; preds = %if.end.381
  %149 = load i64, i64* %val, align 8
  %call388 = call i64 @cons_to_unsigned(i64 %149, i64 4294967295)
  %conv389 = trunc i64 %call388 to i32
  store i32 %conv389, i32* %code387, align 4
  %150 = load i32, i32* %code387, align 4
  %min_code390 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 10
  %151 = load i32, i32* %min_code390, align 4
  %cmp391 = icmp ult i32 %150, %151
  br i1 %cmp391, label %if.then.397, label %lor.lhs.false.393

lor.lhs.false.393:                                ; preds = %if.then.386
  %152 = load i32, i32* %code387, align 4
  %max_code394 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 11
  %153 = load i32, i32* %max_code394, align 4
  %cmp395 = icmp ugt i32 %152, %153
  br i1 %cmp395, label %if.then.397, label %if.end.446

if.then.397:                                      ; preds = %lor.lhs.false.393, %if.then.386
  %min_code398 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 10
  %154 = load i32, i32* %min_code398, align 4
  %cmp399 = icmp ule i32 0, %154
  br i1 %cmp399, label %land.lhs.true.406, label %lor.lhs.false.401

lor.lhs.false.401:                                ; preds = %if.then.397
  %min_code402 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 10
  %155 = load i32, i32* %min_code402, align 4
  %conv403 = zext i32 %155 to i64
  %cmp404 = icmp sle i64 -2305843009213693952, %conv403
  br i1 %cmp404, label %land.lhs.true.406, label %cond.true.411

land.lhs.true.406:                                ; preds = %lor.lhs.false.401, %if.then.397
  %min_code407 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 10
  %156 = load i32, i32* %min_code407, align 4
  %conv408 = zext i32 %156 to i64
  %cmp409 = icmp sle i64 %conv408, 2305843009213693951
  br i1 %cmp409, label %cond.false.415, label %cond.true.411

cond.true.411:                                    ; preds = %land.lhs.true.406, %lor.lhs.false.401
  %min_code412 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 10
  %157 = load i32, i32* %min_code412, align 4
  %conv413 = uitofp i32 %157 to double
  %call414 = call i64 @make_float(double %conv413)
  br label %cond.end.420

cond.false.415:                                   ; preds = %land.lhs.true.406
  %min_code416 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 10
  %158 = load i32, i32* %min_code416, align 4
  %conv417 = zext i32 %158 to i64
  %shl418 = shl i64 %conv417, 2
  %add419 = add i64 %shl418, 2
  br label %cond.end.420

cond.end.420:                                     ; preds = %cond.false.415, %cond.true.411
  %cond421 = phi i64 [ %call414, %cond.true.411 ], [ %add419, %cond.false.415 ]
  %max_code422 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 11
  %159 = load i32, i32* %max_code422, align 4
  %cmp423 = icmp ule i32 0, %159
  br i1 %cmp423, label %land.lhs.true.430, label %lor.lhs.false.425

lor.lhs.false.425:                                ; preds = %cond.end.420
  %max_code426 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 11
  %160 = load i32, i32* %max_code426, align 4
  %conv427 = zext i32 %160 to i64
  %cmp428 = icmp sle i64 -2305843009213693952, %conv427
  br i1 %cmp428, label %land.lhs.true.430, label %cond.true.435

land.lhs.true.430:                                ; preds = %lor.lhs.false.425, %cond.end.420
  %max_code431 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 11
  %161 = load i32, i32* %max_code431, align 4
  %conv432 = zext i32 %161 to i64
  %cmp433 = icmp sle i64 %conv432, 2305843009213693951
  br i1 %cmp433, label %cond.false.439, label %cond.true.435

cond.true.435:                                    ; preds = %land.lhs.true.430, %lor.lhs.false.425
  %max_code436 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 11
  %162 = load i32, i32* %max_code436, align 4
  %conv437 = uitofp i32 %162 to double
  %call438 = call i64 @make_float(double %conv437)
  br label %cond.end.444

cond.false.439:                                   ; preds = %land.lhs.true.430
  %max_code440 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 11
  %163 = load i32, i32* %max_code440, align 4
  %conv441 = zext i32 %163 to i64
  %shl442 = shl i64 %conv441, 2
  %add443 = add i64 %shl442, 2
  br label %cond.end.444

cond.end.444:                                     ; preds = %cond.false.439, %cond.true.435
  %cond445 = phi i64 [ %call438, %cond.true.435 ], [ %add443, %cond.false.439 ]
  %164 = load i64, i64* %val, align 8
  call void @args_out_of_range_3(i64 %cond421, i64 %cond445, i64 %164) #7
  unreachable

if.end.446:                                       ; preds = %lor.lhs.false.393
  %165 = load i32, i32* %code387, align 4
  %max_code447 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 11
  store i32 %165, i32* %max_code447, align 4
  br label %if.end.448

if.end.448:                                       ; preds = %if.end.446, %if.end.381
  %max_code449 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 11
  %166 = load i32, i32* %max_code449, align 4
  %cmp450 = icmp ult i32 %166, 65536
  %compact_codes_p = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 5
  %167 = zext i1 %cmp450 to i8
  %bf.load452 = load i8, i8* %compact_codes_p, align 8
  %bf.shl453 = shl i8 %167, 4
  %bf.clear454 = and i8 %bf.load452, -17
  %bf.set455 = or i8 %bf.clear454, %bf.shl453
  store i8 %bf.set455, i8* %compact_codes_p, align 8
  %tobool456 = trunc i8 %167 to i1
  %168 = load i64*, i64** %args.addr, align 8
  %arrayidx457 = getelementptr inbounds i64, i64* %168, i64 10
  %169 = load i64, i64* %arrayidx457, align 8
  store i64 %169, i64* %val, align 8
  %170 = load i64, i64* %val, align 8
  %call458 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp459 = icmp eq i64 %170, %call458
  br i1 %cmp459, label %if.then.461, label %if.else.477

if.then.461:                                      ; preds = %if.end.448
  %min_code462 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 10
  %171 = load i32, i32* %min_code462, align 4
  %cmp463 = icmp ugt i32 %171, 0
  br i1 %cmp463, label %if.then.465, label %if.else.466

if.then.465:                                      ; preds = %if.then.461
  %invalid_code = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 15
  store i32 0, i32* %invalid_code, align 4
  br label %if.end.476

if.else.466:                                      ; preds = %if.then.461
  %max_code467 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 11
  %172 = load i32, i32* %max_code467, align 4
  %cmp468 = icmp ult i32 %172, -1
  br i1 %cmp468, label %if.then.470, label %if.else.474

if.then.470:                                      ; preds = %if.else.466
  %max_code471 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 11
  %173 = load i32, i32* %max_code471, align 4
  %add472 = add i32 %173, 1
  %invalid_code473 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 15
  store i32 %add472, i32* %invalid_code473, align 4
  br label %if.end.475

if.else.474:                                      ; preds = %if.else.466
  call void (i8*, ...) @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i32 0, i32 0)) #7
  unreachable

if.end.475:                                       ; preds = %if.then.470
  br label %if.end.476

if.end.476:                                       ; preds = %if.end.475, %if.then.465
  br label %if.end.481

if.else.477:                                      ; preds = %if.end.448
  %174 = load i64, i64* %val, align 8
  %call478 = call i64 @cons_to_unsigned(i64 %174, i64 4294967295)
  %conv479 = trunc i64 %call478 to i32
  %invalid_code480 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 15
  store i32 %conv479, i32* %invalid_code480, align 4
  br label %if.end.481

if.end.481:                                       ; preds = %if.else.477, %if.end.476
  %175 = load i64*, i64** %args.addr, align 8
  %arrayidx482 = getelementptr inbounds i64, i64* %175, i64 5
  %176 = load i64, i64* %arrayidx482, align 8
  store i64 %176, i64* %val, align 8
  %177 = load i64, i64* %val, align 8
  %call483 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp484 = icmp eq i64 %177, %call483
  br i1 %cmp484, label %if.then.486, label %if.else.487

if.then.486:                                      ; preds = %if.end.481
  %iso_final = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 6
  store i32 -1, i32* %iso_final, align 4
  br label %if.end.510

if.else.487:                                      ; preds = %if.end.481
  %178 = load i64, i64* %val, align 8
  %and488 = and i64 %178, 7
  %conv489 = trunc i64 %and488 to i32
  %and490 = and i32 %conv489, -5
  %cmp491 = icmp eq i32 %and490, 2
  br i1 %cmp491, label %cond.true.493, label %cond.false.494

cond.true.493:                                    ; preds = %if.else.487
  br label %cond.end.496

cond.false.494:                                   ; preds = %if.else.487
  %call495 = call i64 @builtin_lisp_symbol(i32 559)
  %179 = load i64, i64* %val, align 8
  %180 = call i64 @wrong_type_argument(i64 %call495, i64 %179) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end.496

cond.end.496:                                     ; preds = %181, %cond.true.493
  %182 = load i64, i64* %val, align 8
  %shr497 = ashr i64 %182, 2
  %cmp498 = icmp slt i64 %shr497, 48
  br i1 %cmp498, label %if.then.504, label %lor.lhs.false.500

lor.lhs.false.500:                                ; preds = %cond.end.496
  %183 = load i64, i64* %val, align 8
  %shr501 = ashr i64 %183, 2
  %cmp502 = icmp sgt i64 %shr501, 127
  br i1 %cmp502, label %if.then.504, label %if.end.506

if.then.504:                                      ; preds = %lor.lhs.false.500, %cond.end.496
  %184 = load i64, i64* %val, align 8
  %shr505 = ashr i64 %184, 2
  call void (i8*, ...) @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0), i64 %shr505) #7
  unreachable

if.end.506:                                       ; preds = %lor.lhs.false.500
  %185 = load i64, i64* %val, align 8
  %shr507 = ashr i64 %185, 2
  %conv508 = trunc i64 %shr507 to i32
  %iso_final509 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 6
  store i32 %conv508, i32* %iso_final509, align 4
  br label %if.end.510

if.end.510:                                       ; preds = %if.end.506, %if.then.486
  %186 = load i64*, i64** %args.addr, align 8
  %arrayidx511 = getelementptr inbounds i64, i64* %186, i64 6
  %187 = load i64, i64* %arrayidx511, align 8
  store i64 %187, i64* %val, align 8
  %188 = load i64, i64* %val, align 8
  %call512 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp513 = icmp eq i64 %188, %call512
  br i1 %cmp513, label %if.then.515, label %if.else.516

if.then.515:                                      ; preds = %if.end.510
  %iso_revision = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 7
  store i32 -1, i32* %iso_revision, align 4
  br label %if.end.540

if.else.516:                                      ; preds = %if.end.510
  br label %do.body.517

do.body.517:                                      ; preds = %if.else.516
  %189 = load i64, i64* %val, align 8
  %and518 = and i64 %189, 7
  %conv519 = trunc i64 %and518 to i32
  %and520 = and i32 %conv519, -5
  %cmp521 = icmp eq i32 %and520, 2
  br i1 %cmp521, label %cond.true.523, label %cond.false.524

cond.true.523:                                    ; preds = %do.body.517
  br label %cond.end.526

cond.false.524:                                   ; preds = %do.body.517
  %call525 = call i64 @builtin_lisp_symbol(i32 559)
  %190 = load i64, i64* %val, align 8
  %191 = call i64 @wrong_type_argument(i64 %call525, i64 %190) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end.526

cond.end.526:                                     ; preds = %192, %cond.true.523
  %193 = load i64, i64* %val, align 8
  %shr527 = ashr i64 %193, 2
  %cmp528 = icmp sle i64 -1, %shr527
  br i1 %cmp528, label %land.lhs.true.530, label %if.then.534

land.lhs.true.530:                                ; preds = %cond.end.526
  %194 = load i64, i64* %val, align 8
  %shr531 = ashr i64 %194, 2
  %cmp532 = icmp sle i64 %shr531, 63
  br i1 %cmp532, label %if.end.535, label %if.then.534

if.then.534:                                      ; preds = %land.lhs.true.530, %cond.end.526
  %195 = load i64, i64* %val, align 8
  call void @args_out_of_range_3(i64 %195, i64 -2, i64 254) #7
  unreachable

if.end.535:                                       ; preds = %land.lhs.true.530
  br label %do.end.536

do.end.536:                                       ; preds = %if.end.535
  %196 = load i64, i64* %val, align 8
  %shr537 = ashr i64 %196, 2
  %conv538 = trunc i64 %shr537 to i32
  %iso_revision539 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 7
  store i32 %conv538, i32* %iso_revision539, align 4
  br label %if.end.540

if.end.540:                                       ; preds = %do.end.536, %if.then.515
  %197 = load i64*, i64** %args.addr, align 8
  %arrayidx541 = getelementptr inbounds i64, i64* %197, i64 7
  %198 = load i64, i64* %arrayidx541, align 8
  store i64 %198, i64* %val, align 8
  %199 = load i64, i64* %val, align 8
  %call542 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp543 = icmp eq i64 %199, %call542
  br i1 %cmp543, label %if.then.545, label %if.else.546

if.then.545:                                      ; preds = %if.end.540
  %emacs_mule_id = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 8
  store i32 -1, i32* %emacs_mule_id, align 4
  br label %if.end.564

if.else.546:                                      ; preds = %if.end.540
  %200 = load i64, i64* %val, align 8
  call void @CHECK_NATNUM(i64 %200)
  %201 = load i64, i64* %val, align 8
  %shr547 = ashr i64 %201, 2
  %cmp548 = icmp sgt i64 %shr547, 0
  br i1 %cmp548, label %land.lhs.true.550, label %lor.lhs.false.554

land.lhs.true.550:                                ; preds = %if.else.546
  %202 = load i64, i64* %val, align 8
  %shr551 = ashr i64 %202, 2
  %cmp552 = icmp sle i64 %shr551, 128
  br i1 %cmp552, label %if.then.558, label %lor.lhs.false.554

lor.lhs.false.554:                                ; preds = %land.lhs.true.550, %if.else.546
  %203 = load i64, i64* %val, align 8
  %shr555 = ashr i64 %203, 2
  %cmp556 = icmp sge i64 %shr555, 256
  br i1 %cmp556, label %if.then.558, label %if.end.560

if.then.558:                                      ; preds = %lor.lhs.false.554, %land.lhs.true.550
  %204 = load i64, i64* %val, align 8
  %shr559 = ashr i64 %204, 2
  call void (i8*, ...) @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), i64 %shr559) #7
  unreachable

if.end.560:                                       ; preds = %lor.lhs.false.554
  %205 = load i64, i64* %val, align 8
  %shr561 = ashr i64 %205, 2
  %conv562 = trunc i64 %shr561 to i32
  %emacs_mule_id563 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 8
  store i32 %conv562, i32* %emacs_mule_id563, align 4
  br label %if.end.564

if.end.564:                                       ; preds = %if.end.560, %if.then.545
  %206 = load i64*, i64** %args.addr, align 8
  %arrayidx565 = getelementptr inbounds i64, i64* %206, i64 8
  %207 = load i64, i64* %arrayidx565, align 8
  %call566 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp567 = icmp eq i64 %207, %call566
  %lnot = xor i1 %cmp567, true
  %ascii_compatible_p = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 5
  %208 = zext i1 %lnot to i8
  %bf.load569 = load i8, i8* %ascii_compatible_p, align 8
  %bf.shl570 = shl i8 %208, 2
  %bf.clear571 = and i8 %bf.load569, -5
  %bf.set572 = or i8 %bf.clear571, %bf.shl570
  store i8 %bf.set572, i8* %ascii_compatible_p, align 8
  %tobool573 = trunc i8 %208 to i1
  %209 = load i64*, i64** %args.addr, align 8
  %arrayidx574 = getelementptr inbounds i64, i64* %209, i64 9
  %210 = load i64, i64* %arrayidx574, align 8
  %call575 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp576 = icmp eq i64 %210, %call575
  %lnot578 = xor i1 %cmp576, true
  %supplementary_p = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 5
  %211 = zext i1 %lnot578 to i8
  %bf.load579 = load i8, i8* %supplementary_p, align 8
  %bf.shl580 = shl i8 %211, 3
  %bf.clear581 = and i8 %bf.load579, -9
  %bf.set582 = or i8 %bf.clear581, %bf.shl580
  store i8 %bf.set582, i8* %supplementary_p, align 8
  %tobool583 = trunc i8 %211 to i1
  %unified_p = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 5
  %bf.load584 = load i8, i8* %unified_p, align 8
  %bf.clear585 = and i8 %bf.load584, -33
  store i8 %bf.clear585, i8* %unified_p, align 8
  %fast_map = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 16
  %212 = bitcast [190 x i8]* %fast_map to i8*
  call void @llvm.memset.p0i8.i64(i8* %212, i8 0, i64 190, i32 4, i1 false)
  %213 = load i64*, i64** %args.addr, align 8
  %arrayidx586 = getelementptr inbounds i64, i64* %213, i64 11
  %214 = load i64, i64* %arrayidx586, align 8
  %call587 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp588 = icmp eq i64 %214, %call587
  br i1 %cmp588, label %if.else.887, label %if.then.590

if.then.590:                                      ; preds = %if.end.564
  %215 = load i64*, i64** %args.addr, align 8
  %arrayidx591 = getelementptr inbounds i64, i64* %215, i64 11
  %216 = load i64, i64* %arrayidx591, align 8
  store i64 %216, i64* %val, align 8
  %217 = load i64, i64* %val, align 8
  %call592 = call zeroext i1 @NATNUMP(i64 %217)
  br i1 %call592, label %land.lhs.true.594, label %cond.false.599

land.lhs.true.594:                                ; preds = %if.then.590
  %218 = load i64, i64* %val, align 8
  %shr595 = ashr i64 %218, 2
  %cmp596 = icmp sle i64 %shr595, 4194303
  br i1 %cmp596, label %cond.true.598, label %cond.false.599

cond.true.598:                                    ; preds = %land.lhs.true.594
  br label %cond.end.601

cond.false.599:                                   ; preds = %land.lhs.true.594, %if.then.590
  %call600 = call i64 @builtin_lisp_symbol(i32 260)
  %219 = load i64, i64* %val, align 8
  %220 = call i64 @wrong_type_argument(i64 %call600, i64 %219) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end.601

cond.end.601:                                     ; preds = %221, %cond.true.598
  %method = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 9
  store i32 0, i32* %method, align 4
  %222 = load i64, i64* %val, align 8
  %shr602 = ashr i64 %222, 2
  %conv603 = trunc i64 %shr602 to i32
  %code_offset = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 17
  store i32 %conv603, i32* %code_offset, align 4
  %code_linear_p604 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 5
  %bf.load605 = load i8, i8* %code_linear_p604, align 8
  %bf.clear606 = and i8 %bf.load605, 1
  %bf.cast607 = trunc i8 %bf.clear606 to i1
  br i1 %bf.cast607, label %cond.true.609, label %cond.false.613

cond.true.609:                                    ; preds = %cond.end.601
  %max_code610 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 11
  %223 = load i32, i32* %max_code610, align 4
  %min_code611 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 10
  %224 = load i32, i32* %min_code611, align 4
  %sub612 = sub i32 %223, %224
  br label %cond.end.691

cond.false.613:                                   ; preds = %cond.end.601
  %max_code614 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 11
  %225 = load i32, i32* %max_code614, align 4
  %shr615 = lshr i32 %225, 24
  %idxprom616 = zext i32 %shr615 to i64
  %code_space_mask617 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 4
  %226 = load i8*, i8** %code_space_mask617, align 8
  %arrayidx618 = getelementptr inbounds i8, i8* %226, i64 %idxprom616
  %227 = load i8, i8* %arrayidx618, align 1
  %conv619 = zext i8 %227 to i32
  %and620 = and i32 %conv619, 8
  %tobool621 = icmp ne i32 %and620, 0
  br i1 %tobool621, label %land.lhs.true.622, label %cond.false.688

land.lhs.true.622:                                ; preds = %cond.false.613
  %max_code623 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 11
  %228 = load i32, i32* %max_code623, align 4
  %shr624 = lshr i32 %228, 16
  %and625 = and i32 %shr624, 255
  %idxprom626 = zext i32 %and625 to i64
  %code_space_mask627 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 4
  %229 = load i8*, i8** %code_space_mask627, align 8
  %arrayidx628 = getelementptr inbounds i8, i8* %229, i64 %idxprom626
  %230 = load i8, i8* %arrayidx628, align 1
  %conv629 = zext i8 %230 to i32
  %and630 = and i32 %conv629, 4
  %tobool631 = icmp ne i32 %and630, 0
  br i1 %tobool631, label %land.lhs.true.632, label %cond.false.688

land.lhs.true.632:                                ; preds = %land.lhs.true.622
  %max_code633 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 11
  %231 = load i32, i32* %max_code633, align 4
  %shr634 = lshr i32 %231, 8
  %and635 = and i32 %shr634, 255
  %idxprom636 = zext i32 %and635 to i64
  %code_space_mask637 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 4
  %232 = load i8*, i8** %code_space_mask637, align 8
  %arrayidx638 = getelementptr inbounds i8, i8* %232, i64 %idxprom636
  %233 = load i8, i8* %arrayidx638, align 1
  %conv639 = zext i8 %233 to i32
  %and640 = and i32 %conv639, 2
  %tobool641 = icmp ne i32 %and640, 0
  br i1 %tobool641, label %land.lhs.true.642, label %cond.false.688

land.lhs.true.642:                                ; preds = %land.lhs.true.632
  %max_code643 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 11
  %234 = load i32, i32* %max_code643, align 4
  %and644 = and i32 %234, 255
  %idxprom645 = zext i32 %and644 to i64
  %code_space_mask646 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 4
  %235 = load i8*, i8** %code_space_mask646, align 8
  %arrayidx647 = getelementptr inbounds i8, i8* %235, i64 %idxprom645
  %236 = load i8, i8* %arrayidx647, align 1
  %conv648 = zext i8 %236 to i32
  %and649 = and i32 %conv648, 1
  %tobool650 = icmp ne i32 %and649, 0
  br i1 %tobool650, label %cond.true.651, label %cond.false.688

cond.true.651:                                    ; preds = %land.lhs.true.642
  %max_code652 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 11
  %237 = load i32, i32* %max_code652, align 4
  %shr653 = lshr i32 %237, 24
  %code_space654 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 3
  %arrayidx655 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space654, i32 0, i64 12
  %238 = load i32, i32* %arrayidx655, align 4
  %sub656 = sub i32 %shr653, %238
  %code_space657 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 3
  %arrayidx658 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space657, i32 0, i64 11
  %239 = load i32, i32* %arrayidx658, align 4
  %mul659 = mul i32 %sub656, %239
  %max_code660 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 11
  %240 = load i32, i32* %max_code660, align 4
  %shr661 = lshr i32 %240, 16
  %and662 = and i32 %shr661, 255
  %code_space663 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 3
  %arrayidx664 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space663, i32 0, i64 8
  %241 = load i32, i32* %arrayidx664, align 4
  %sub665 = sub i32 %and662, %241
  %code_space666 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 3
  %arrayidx667 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space666, i32 0, i64 7
  %242 = load i32, i32* %arrayidx667, align 4
  %mul668 = mul i32 %sub665, %242
  %add669 = add i32 %mul659, %mul668
  %max_code670 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 11
  %243 = load i32, i32* %max_code670, align 4
  %shr671 = lshr i32 %243, 8
  %and672 = and i32 %shr671, 255
  %code_space673 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 3
  %arrayidx674 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space673, i32 0, i64 4
  %244 = load i32, i32* %arrayidx674, align 4
  %sub675 = sub i32 %and672, %244
  %code_space676 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 3
  %arrayidx677 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space676, i32 0, i64 3
  %245 = load i32, i32* %arrayidx677, align 4
  %mul678 = mul i32 %sub675, %245
  %add679 = add i32 %add669, %mul678
  %max_code680 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 11
  %246 = load i32, i32* %max_code680, align 4
  %and681 = and i32 %246, 255
  %code_space682 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 3
  %arrayidx683 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space682, i32 0, i64 0
  %247 = load i32, i32* %arrayidx683, align 4
  %sub684 = sub i32 %and681, %247
  %add685 = add i32 %add679, %sub684
  %char_index_offset686 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 12
  %248 = load i32, i32* %char_index_offset686, align 4
  %sub687 = sub i32 %add685, %248
  br label %cond.end.689

cond.false.688:                                   ; preds = %land.lhs.true.642, %land.lhs.true.632, %land.lhs.true.622, %cond.false.613
  br label %cond.end.689

cond.end.689:                                     ; preds = %cond.false.688, %cond.true.651
  %cond690 = phi i32 [ %sub687, %cond.true.651 ], [ -1, %cond.false.688 ]
  br label %cond.end.691

cond.end.691:                                     ; preds = %cond.end.689, %cond.true.609
  %cond692 = phi i32 [ %sub612, %cond.true.609 ], [ %cond690, %cond.end.689 ]
  store i32 %cond692, i32* %i, align 4
  %code_offset693 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 17
  %249 = load i32, i32* %code_offset693, align 4
  %sub694 = sub nsw i32 4194303, %249
  %250 = load i32, i32* %i, align 4
  %cmp695 = icmp slt i32 %sub694, %250
  br i1 %cmp695, label %if.then.697, label %if.end.698

if.then.697:                                      ; preds = %cond.end.691
  %max_char = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 14
  %251 = load i32, i32* %max_char, align 4
  call void (i8*, ...) @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0), i32 %251) #7
  unreachable

if.end.698:                                       ; preds = %cond.end.691
  %252 = load i32, i32* %i, align 4
  %code_offset699 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 17
  %253 = load i32, i32* %code_offset699, align 4
  %add700 = add nsw i32 %252, %253
  %max_char701 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 14
  store i32 %add700, i32* %max_char701, align 4
  %code_linear_p702 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 5
  %bf.load703 = load i8, i8* %code_linear_p702, align 8
  %bf.clear704 = and i8 %bf.load703, 1
  %bf.cast705 = trunc i8 %bf.clear704 to i1
  br i1 %bf.cast705, label %cond.true.707, label %cond.false.711

cond.true.707:                                    ; preds = %if.end.698
  %min_code708 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 10
  %254 = load i32, i32* %min_code708, align 4
  %min_code709 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 10
  %255 = load i32, i32* %min_code709, align 4
  %sub710 = sub i32 %254, %255
  br label %cond.end.789

cond.false.711:                                   ; preds = %if.end.698
  %min_code712 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 10
  %256 = load i32, i32* %min_code712, align 4
  %shr713 = lshr i32 %256, 24
  %idxprom714 = zext i32 %shr713 to i64
  %code_space_mask715 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 4
  %257 = load i8*, i8** %code_space_mask715, align 8
  %arrayidx716 = getelementptr inbounds i8, i8* %257, i64 %idxprom714
  %258 = load i8, i8* %arrayidx716, align 1
  %conv717 = zext i8 %258 to i32
  %and718 = and i32 %conv717, 8
  %tobool719 = icmp ne i32 %and718, 0
  br i1 %tobool719, label %land.lhs.true.720, label %cond.false.786

land.lhs.true.720:                                ; preds = %cond.false.711
  %min_code721 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 10
  %259 = load i32, i32* %min_code721, align 4
  %shr722 = lshr i32 %259, 16
  %and723 = and i32 %shr722, 255
  %idxprom724 = zext i32 %and723 to i64
  %code_space_mask725 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 4
  %260 = load i8*, i8** %code_space_mask725, align 8
  %arrayidx726 = getelementptr inbounds i8, i8* %260, i64 %idxprom724
  %261 = load i8, i8* %arrayidx726, align 1
  %conv727 = zext i8 %261 to i32
  %and728 = and i32 %conv727, 4
  %tobool729 = icmp ne i32 %and728, 0
  br i1 %tobool729, label %land.lhs.true.730, label %cond.false.786

land.lhs.true.730:                                ; preds = %land.lhs.true.720
  %min_code731 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 10
  %262 = load i32, i32* %min_code731, align 4
  %shr732 = lshr i32 %262, 8
  %and733 = and i32 %shr732, 255
  %idxprom734 = zext i32 %and733 to i64
  %code_space_mask735 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 4
  %263 = load i8*, i8** %code_space_mask735, align 8
  %arrayidx736 = getelementptr inbounds i8, i8* %263, i64 %idxprom734
  %264 = load i8, i8* %arrayidx736, align 1
  %conv737 = zext i8 %264 to i32
  %and738 = and i32 %conv737, 2
  %tobool739 = icmp ne i32 %and738, 0
  br i1 %tobool739, label %land.lhs.true.740, label %cond.false.786

land.lhs.true.740:                                ; preds = %land.lhs.true.730
  %min_code741 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 10
  %265 = load i32, i32* %min_code741, align 4
  %and742 = and i32 %265, 255
  %idxprom743 = zext i32 %and742 to i64
  %code_space_mask744 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 4
  %266 = load i8*, i8** %code_space_mask744, align 8
  %arrayidx745 = getelementptr inbounds i8, i8* %266, i64 %idxprom743
  %267 = load i8, i8* %arrayidx745, align 1
  %conv746 = zext i8 %267 to i32
  %and747 = and i32 %conv746, 1
  %tobool748 = icmp ne i32 %and747, 0
  br i1 %tobool748, label %cond.true.749, label %cond.false.786

cond.true.749:                                    ; preds = %land.lhs.true.740
  %min_code750 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 10
  %268 = load i32, i32* %min_code750, align 4
  %shr751 = lshr i32 %268, 24
  %code_space752 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 3
  %arrayidx753 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space752, i32 0, i64 12
  %269 = load i32, i32* %arrayidx753, align 4
  %sub754 = sub i32 %shr751, %269
  %code_space755 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 3
  %arrayidx756 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space755, i32 0, i64 11
  %270 = load i32, i32* %arrayidx756, align 4
  %mul757 = mul i32 %sub754, %270
  %min_code758 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 10
  %271 = load i32, i32* %min_code758, align 4
  %shr759 = lshr i32 %271, 16
  %and760 = and i32 %shr759, 255
  %code_space761 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 3
  %arrayidx762 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space761, i32 0, i64 8
  %272 = load i32, i32* %arrayidx762, align 4
  %sub763 = sub i32 %and760, %272
  %code_space764 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 3
  %arrayidx765 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space764, i32 0, i64 7
  %273 = load i32, i32* %arrayidx765, align 4
  %mul766 = mul i32 %sub763, %273
  %add767 = add i32 %mul757, %mul766
  %min_code768 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 10
  %274 = load i32, i32* %min_code768, align 4
  %shr769 = lshr i32 %274, 8
  %and770 = and i32 %shr769, 255
  %code_space771 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 3
  %arrayidx772 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space771, i32 0, i64 4
  %275 = load i32, i32* %arrayidx772, align 4
  %sub773 = sub i32 %and770, %275
  %code_space774 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 3
  %arrayidx775 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space774, i32 0, i64 3
  %276 = load i32, i32* %arrayidx775, align 4
  %mul776 = mul i32 %sub773, %276
  %add777 = add i32 %add767, %mul776
  %min_code778 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 10
  %277 = load i32, i32* %min_code778, align 4
  %and779 = and i32 %277, 255
  %code_space780 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 3
  %arrayidx781 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space780, i32 0, i64 0
  %278 = load i32, i32* %arrayidx781, align 4
  %sub782 = sub i32 %and779, %278
  %add783 = add i32 %add777, %sub782
  %char_index_offset784 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 12
  %279 = load i32, i32* %char_index_offset784, align 4
  %sub785 = sub i32 %add783, %279
  br label %cond.end.787

cond.false.786:                                   ; preds = %land.lhs.true.740, %land.lhs.true.730, %land.lhs.true.720, %cond.false.711
  br label %cond.end.787

cond.end.787:                                     ; preds = %cond.false.786, %cond.true.749
  %cond788 = phi i32 [ %sub785, %cond.true.749 ], [ -1, %cond.false.786 ]
  br label %cond.end.789

cond.end.789:                                     ; preds = %cond.end.787, %cond.true.707
  %cond790 = phi i32 [ %sub710, %cond.true.707 ], [ %cond788, %cond.end.787 ]
  store i32 %cond790, i32* %i, align 4
  %280 = load i32, i32* %i, align 4
  %code_offset791 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 17
  %281 = load i32, i32* %code_offset791, align 4
  %add792 = add nsw i32 %280, %281
  %min_char = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 13
  store i32 %add792, i32* %min_char, align 4
  %min_char793 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 13
  %282 = load i32, i32* %min_char793, align 4
  %shr794 = ashr i32 %282, 7
  %shl795 = shl i32 %shr794, 7
  store i32 %shl795, i32* %i, align 4
  br label %for.cond.796

for.cond.796:                                     ; preds = %for.inc.833, %cond.end.789
  %283 = load i32, i32* %i, align 4
  %cmp797 = icmp slt i32 %283, 65536
  br i1 %cmp797, label %land.rhs.799, label %land.end.803

land.rhs.799:                                     ; preds = %for.cond.796
  %284 = load i32, i32* %i, align 4
  %max_char800 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 14
  %285 = load i32, i32* %max_char800, align 4
  %cmp801 = icmp sle i32 %284, %285
  br label %land.end.803

land.end.803:                                     ; preds = %land.rhs.799, %for.cond.796
  %286 = phi i1 [ false, %for.cond.796 ], [ %cmp801, %land.rhs.799 ]
  br i1 %286, label %for.body.804, label %for.end.835

for.body.804:                                     ; preds = %land.end.803
  br label %do.body.805

do.body.805:                                      ; preds = %for.body.804
  %287 = load i32, i32* %i, align 4
  %cmp806 = icmp slt i32 %287, 65536
  br i1 %cmp806, label %if.then.808, label %if.else.819

if.then.808:                                      ; preds = %do.body.805
  %288 = load i32, i32* %i, align 4
  %shr809 = ashr i32 %288, 7
  %and810 = and i32 %shr809, 7
  %shl811 = shl i32 1, %and810
  %289 = load i32, i32* %i, align 4
  %shr812 = ashr i32 %289, 10
  %idxprom813 = sext i32 %shr812 to i64
  %fast_map814 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 16
  %arrayidx815 = getelementptr inbounds [190 x i8], [190 x i8]* %fast_map814, i32 0, i64 %idxprom813
  %290 = load i8, i8* %arrayidx815, align 1
  %conv816 = zext i8 %290 to i32
  %or817 = or i32 %conv816, %shl811
  %conv818 = trunc i32 %or817 to i8
  store i8 %conv818, i8* %arrayidx815, align 1
  br label %if.end.831

if.else.819:                                      ; preds = %do.body.805
  %291 = load i32, i32* %i, align 4
  %shr820 = ashr i32 %291, 12
  %and821 = and i32 %shr820, 7
  %shl822 = shl i32 1, %and821
  %292 = load i32, i32* %i, align 4
  %shr823 = ashr i32 %292, 15
  %add824 = add nsw i32 %shr823, 62
  %idxprom825 = sext i32 %add824 to i64
  %fast_map826 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 16
  %arrayidx827 = getelementptr inbounds [190 x i8], [190 x i8]* %fast_map826, i32 0, i64 %idxprom825
  %293 = load i8, i8* %arrayidx827, align 1
  %conv828 = zext i8 %293 to i32
  %or829 = or i32 %conv828, %shl822
  %conv830 = trunc i32 %or829 to i8
  store i8 %conv830, i8* %arrayidx827, align 1
  br label %if.end.831

if.end.831:                                       ; preds = %if.else.819, %if.then.808
  br label %do.end.832

do.end.832:                                       ; preds = %if.end.831
  br label %for.inc.833

for.inc.833:                                      ; preds = %do.end.832
  %294 = load i32, i32* %i, align 4
  %add834 = add nsw i32 %294, 128
  store i32 %add834, i32* %i, align 4
  br label %for.cond.796

for.end.835:                                      ; preds = %land.end.803
  %295 = load i32, i32* %i, align 4
  %shr836 = ashr i32 %295, 12
  %shl837 = shl i32 %shr836, 12
  store i32 %shl837, i32* %i, align 4
  br label %for.cond.838

for.cond.838:                                     ; preds = %for.inc.871, %for.end.835
  %296 = load i32, i32* %i, align 4
  %max_char839 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 14
  %297 = load i32, i32* %max_char839, align 4
  %cmp840 = icmp sle i32 %296, %297
  br i1 %cmp840, label %for.body.842, label %for.end.873

for.body.842:                                     ; preds = %for.cond.838
  br label %do.body.843

do.body.843:                                      ; preds = %for.body.842
  %298 = load i32, i32* %i, align 4
  %cmp844 = icmp slt i32 %298, 65536
  br i1 %cmp844, label %if.then.846, label %if.else.857

if.then.846:                                      ; preds = %do.body.843
  %299 = load i32, i32* %i, align 4
  %shr847 = ashr i32 %299, 7
  %and848 = and i32 %shr847, 7
  %shl849 = shl i32 1, %and848
  %300 = load i32, i32* %i, align 4
  %shr850 = ashr i32 %300, 10
  %idxprom851 = sext i32 %shr850 to i64
  %fast_map852 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 16
  %arrayidx853 = getelementptr inbounds [190 x i8], [190 x i8]* %fast_map852, i32 0, i64 %idxprom851
  %301 = load i8, i8* %arrayidx853, align 1
  %conv854 = zext i8 %301 to i32
  %or855 = or i32 %conv854, %shl849
  %conv856 = trunc i32 %or855 to i8
  store i8 %conv856, i8* %arrayidx853, align 1
  br label %if.end.869

if.else.857:                                      ; preds = %do.body.843
  %302 = load i32, i32* %i, align 4
  %shr858 = ashr i32 %302, 12
  %and859 = and i32 %shr858, 7
  %shl860 = shl i32 1, %and859
  %303 = load i32, i32* %i, align 4
  %shr861 = ashr i32 %303, 15
  %add862 = add nsw i32 %shr861, 62
  %idxprom863 = sext i32 %add862 to i64
  %fast_map864 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 16
  %arrayidx865 = getelementptr inbounds [190 x i8], [190 x i8]* %fast_map864, i32 0, i64 %idxprom863
  %304 = load i8, i8* %arrayidx865, align 1
  %conv866 = zext i8 %304 to i32
  %or867 = or i32 %conv866, %shl860
  %conv868 = trunc i32 %or867 to i8
  store i8 %conv868, i8* %arrayidx865, align 1
  br label %if.end.869

if.end.869:                                       ; preds = %if.else.857, %if.then.846
  br label %do.end.870

do.end.870:                                       ; preds = %if.end.869
  br label %for.inc.871

for.inc.871:                                      ; preds = %do.end.870
  %305 = load i32, i32* %i, align 4
  %add872 = add nsw i32 %305, 4096
  store i32 %add872, i32* %i, align 4
  br label %for.cond.838

for.end.873:                                      ; preds = %for.cond.838
  %code_offset874 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 17
  %306 = load i32, i32* %code_offset874, align 4
  %cmp875 = icmp eq i32 %306, 0
  br i1 %cmp875, label %land.lhs.true.877, label %if.end.886

land.lhs.true.877:                                ; preds = %for.end.873
  %max_char878 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 14
  %307 = load i32, i32* %max_char878, align 4
  %cmp879 = icmp sge i32 %307, 128
  br i1 %cmp879, label %if.then.881, label %if.end.886

if.then.881:                                      ; preds = %land.lhs.true.877
  %ascii_compatible_p882 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 5
  %bf.load883 = load i8, i8* %ascii_compatible_p882, align 8
  %bf.clear884 = and i8 %bf.load883, -5
  %bf.set885 = or i8 %bf.clear884, 4
  store i8 %bf.set885, i8* %ascii_compatible_p882, align 8
  br label %if.end.886

if.end.886:                                       ; preds = %if.then.881, %land.lhs.true.877, %for.end.873
  br label %if.end.1099

if.else.887:                                      ; preds = %if.end.564
  %308 = load i64*, i64** %args.addr, align 8
  %arrayidx888 = getelementptr inbounds i64, i64* %308, i64 12
  %309 = load i64, i64* %arrayidx888, align 8
  %call889 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp890 = icmp eq i64 %309, %call889
  br i1 %cmp890, label %if.else.895, label %if.then.892

if.then.892:                                      ; preds = %if.else.887
  %310 = load i64*, i64** %args.addr, align 8
  %arrayidx893 = getelementptr inbounds i64, i64* %310, i64 12
  %311 = load i64, i64* %arrayidx893, align 8
  store i64 %311, i64* %val, align 8
  %312 = load i64, i64* %attrs, align 8
  %313 = load i64, i64* %val, align 8
  call void @ASET(i64 %312, i64 3, i64 %313)
  %method894 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 9
  store i32 1, i32* %method894, align 4
  br label %if.end.1098

if.else.895:                                      ; preds = %if.else.887
  %314 = load i64*, i64** %args.addr, align 8
  %arrayidx896 = getelementptr inbounds i64, i64* %314, i64 13
  %315 = load i64, i64* %arrayidx896, align 8
  %call897 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp898 = icmp eq i64 %315, %call897
  br i1 %cmp898, label %if.else.959, label %if.then.900

if.then.900:                                      ; preds = %if.else.895
  %316 = load i64*, i64** %args.addr, align 8
  %arrayidx901 = getelementptr inbounds i64, i64* %316, i64 13
  %317 = load i64, i64* %arrayidx901, align 8
  store i64 %317, i64* %val, align 8
  %318 = load i64, i64* %val, align 8
  %call902 = call i64 @Fcar(i64 %318)
  store i64 %call902, i64* %parent, align 8
  br label %do.body.903

do.body.903:                                      ; preds = %if.then.900
  br label %do.body.904

do.body.904:                                      ; preds = %do.body.903
  %319 = load i64, i64* %parent, align 8
  %and905 = and i64 %319, 7
  %conv906 = trunc i64 %and905 to i32
  %cmp907 = icmp eq i32 %conv906, 0
  br i1 %cmp907, label %lor.lhs.false.909, label %if.then.914

lor.lhs.false.909:                                ; preds = %do.body.904
  %320 = load i64, i64* @Vcharset_hash_table, align 8
  %call910 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %320)
  %321 = load i64, i64* %parent, align 8
  %call911 = call i64 @hash_lookup(%struct.Lisp_Hash_Table* %call910, i64 %321, i64* null)
  store i64 %call911, i64* %idx, align 8
  %cmp912 = icmp slt i64 %call911, 0
  br i1 %cmp912, label %if.then.914, label %if.end.916

if.then.914:                                      ; preds = %lor.lhs.false.909, %do.body.904
  %call915 = call i64 @builtin_lisp_symbol(i32 262)
  %322 = load i64, i64* %parent, align 8
  %323 = call i64 @wrong_type_argument(i64 %call915, i64 %322) #7
  unreachable

if.end.916:                                       ; preds = %lor.lhs.false.909
  %324 = load i64, i64* @Vcharset_hash_table, align 8
  %call917 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %324)
  %325 = load i64, i64* %idx, align 8
  %call918 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call917, i64 %325)
  %call919 = call i64 @AREF(i64 %call918, i64 0)
  %shr920 = ashr i64 %call919, 2
  %conv921 = trunc i64 %shr920 to i32
  store i32 %conv921, i32* %csid, align 4
  br label %do.end.922

do.end.922:                                       ; preds = %if.end.916
  %326 = load %struct.charset*, %struct.charset** @charset_table, align 8
  %327 = load i32, i32* %csid, align 4
  %idx.ext = sext i32 %327 to i64
  %add.ptr = getelementptr inbounds %struct.charset, %struct.charset* %326, i64 %idx.ext
  store %struct.charset* %add.ptr, %struct.charset** %parent_charset, align 8
  br label %do.end.923

do.end.923:                                       ; preds = %do.end.922
  %328 = load i64, i64* %val, align 8
  %call924 = call i64 @Fnth(i64 6, i64 %328)
  store i64 %call924, i64* %parent_min_code, align 8
  %329 = load i64, i64* %parent_min_code, align 8
  call void @CHECK_NATNUM(i64 %329)
  %330 = load i64, i64* %val, align 8
  %call925 = call i64 @Fnth(i64 10, i64 %330)
  store i64 %call925, i64* %parent_max_code, align 8
  %331 = load i64, i64* %parent_max_code, align 8
  call void @CHECK_NATNUM(i64 %331)
  %332 = load i64, i64* %val, align 8
  %call926 = call i64 @Fnth(i64 14, i64 %332)
  store i64 %call926, i64* %parent_code_offset, align 8
  %333 = load i64, i64* %parent_code_offset, align 8
  %and927 = and i64 %333, 7
  %conv928 = trunc i64 %and927 to i32
  %and929 = and i32 %conv928, -5
  %cmp930 = icmp eq i32 %and929, 2
  br i1 %cmp930, label %cond.true.932, label %cond.false.933

cond.true.932:                                    ; preds = %do.end.923
  br label %cond.end.935

cond.false.933:                                   ; preds = %do.end.923
  %call934 = call i64 @builtin_lisp_symbol(i32 559)
  %334 = load i64, i64* %parent_code_offset, align 8
  %335 = call i64 @wrong_type_argument(i64 %call934, i64 %334) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end.935

cond.end.935:                                     ; preds = %336, %cond.true.932
  %call936 = call i64 @make_uninit_vector(i64 4)
  store i64 %call936, i64* %val, align 8
  %337 = load i64, i64* %val, align 8
  %338 = load %struct.charset*, %struct.charset** %parent_charset, align 8
  %id937 = getelementptr inbounds %struct.charset, %struct.charset* %338, i32 0, i32 0
  %339 = load i32, i32* %id937, align 4
  %conv938 = sext i32 %339 to i64
  %shl939 = shl i64 %conv938, 2
  %add940 = add i64 %shl939, 2
  call void @ASET(i64 %337, i64 0, i64 %add940)
  %340 = load i64, i64* %val, align 8
  %341 = load i64, i64* %parent_min_code, align 8
  call void @ASET(i64 %340, i64 1, i64 %341)
  %342 = load i64, i64* %val, align 8
  %343 = load i64, i64* %parent_max_code, align 8
  call void @ASET(i64 %342, i64 2, i64 %343)
  %344 = load i64, i64* %val, align 8
  %345 = load i64, i64* %parent_code_offset, align 8
  call void @ASET(i64 %344, i64 3, i64 %345)
  %346 = load i64, i64* %attrs, align 8
  %347 = load i64, i64* %val, align 8
  call void @ASET(i64 %346, i64 6, i64 %347)
  %method941 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 9
  store i32 2, i32* %method941, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.942

for.cond.942:                                     ; preds = %for.inc.952, %cond.end.935
  %348 = load i32, i32* %i, align 4
  %cmp943 = icmp slt i32 %348, 190
  br i1 %cmp943, label %for.body.945, label %for.end.954

for.body.945:                                     ; preds = %for.cond.942
  %349 = load i32, i32* %i, align 4
  %idxprom946 = sext i32 %349 to i64
  %350 = load %struct.charset*, %struct.charset** %parent_charset, align 8
  %fast_map947 = getelementptr inbounds %struct.charset, %struct.charset* %350, i32 0, i32 16
  %arrayidx948 = getelementptr inbounds [190 x i8], [190 x i8]* %fast_map947, i32 0, i64 %idxprom946
  %351 = load i8, i8* %arrayidx948, align 1
  %352 = load i32, i32* %i, align 4
  %idxprom949 = sext i32 %352 to i64
  %fast_map950 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 16
  %arrayidx951 = getelementptr inbounds [190 x i8], [190 x i8]* %fast_map950, i32 0, i64 %idxprom949
  store i8 %351, i8* %arrayidx951, align 1
  br label %for.inc.952

for.inc.952:                                      ; preds = %for.body.945
  %353 = load i32, i32* %i, align 4
  %inc953 = add nsw i32 %353, 1
  store i32 %inc953, i32* %i, align 4
  br label %for.cond.942

for.end.954:                                      ; preds = %for.cond.942
  %354 = load %struct.charset*, %struct.charset** %parent_charset, align 8
  %min_char955 = getelementptr inbounds %struct.charset, %struct.charset* %354, i32 0, i32 13
  %355 = load i32, i32* %min_char955, align 4
  %min_char956 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 13
  store i32 %355, i32* %min_char956, align 4
  %356 = load %struct.charset*, %struct.charset** %parent_charset, align 8
  %max_char957 = getelementptr inbounds %struct.charset, %struct.charset* %356, i32 0, i32 14
  %357 = load i32, i32* %max_char957, align 4
  %max_char958 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 14
  store i32 %357, i32* %max_char958, align 4
  br label %if.end.1097

if.else.959:                                      ; preds = %if.else.895
  %358 = load i64*, i64** %args.addr, align 8
  %arrayidx960 = getelementptr inbounds i64, i64* %358, i64 14
  %359 = load i64, i64* %arrayidx960, align 8
  %call961 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp962 = icmp eq i64 %359, %call961
  br i1 %cmp962, label %if.else.1095, label %if.then.964

if.then.964:                                      ; preds = %if.else.959
  %360 = load i64*, i64** %args.addr, align 8
  %arrayidx965 = getelementptr inbounds i64, i64* %360, i64 14
  %361 = load i64, i64* %arrayidx965, align 8
  store i64 %361, i64* %val, align 8
  %method966 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 9
  store i32 3, i32* %method966, align 4
  %362 = load i64, i64* %val, align 8
  %call967 = call i64 @Fcopy_sequence(i64 %362)
  store i64 %call967, i64* %val, align 8
  %363 = load i64, i64* %attrs, align 8
  %364 = load i64, i64* %val, align 8
  call void @ASET(i64 %363, i64 7, i64 %364)
  %min_char968 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 13
  store i32 4194303, i32* %min_char968, align 4
  %max_char969 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 14
  store i32 0, i32* %max_char969, align 4
  br label %for.cond.970

for.cond.970:                                     ; preds = %for.inc.1092, %if.then.964
  %365 = load i64, i64* %val, align 8
  %call971 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp972 = icmp eq i64 %365, %call971
  %lnot974 = xor i1 %cmp972, true
  br i1 %lnot974, label %for.body.975, label %for.end.1094

for.body.975:                                     ; preds = %for.cond.970
  %366 = load i64, i64* %val, align 8
  %call976 = call i64 @Fcar(i64 %366)
  store i64 %call976, i64* %elt, align 8
  %367 = load i64, i64* %elt, align 8
  %and977 = and i64 %367, 7
  %conv978 = trunc i64 %and977 to i32
  %cmp979 = icmp eq i32 %conv978, 3
  br i1 %cmp979, label %if.then.981, label %if.else.1028

if.then.981:                                      ; preds = %for.body.975
  %368 = load i64, i64* %elt, align 8
  %sub982 = sub nsw i64 %368, 3
  %369 = inttoptr i64 %sub982 to i8*
  %370 = bitcast i8* %369 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %370, i32 0, i32 0
  %371 = load i64, i64* %car, align 8
  store i64 %371, i64* %car_part, align 8
  %372 = load i64, i64* %elt, align 8
  %sub983 = sub nsw i64 %372, 3
  %373 = inttoptr i64 %sub983 to i8*
  %374 = bitcast i8* %373 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %374, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %375 = load i64, i64* %cdr, align 8
  store i64 %375, i64* %cdr_part, align 8
  br label %do.body.984

do.body.984:                                      ; preds = %if.then.981
  %376 = load i64, i64* %car_part, align 8
  %and986 = and i64 %376, 7
  %conv987 = trunc i64 %and986 to i32
  %cmp988 = icmp eq i32 %conv987, 0
  br i1 %cmp988, label %lor.lhs.false.990, label %if.then.995

lor.lhs.false.990:                                ; preds = %do.body.984
  %377 = load i64, i64* @Vcharset_hash_table, align 8
  %call991 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %377)
  %378 = load i64, i64* %car_part, align 8
  %call992 = call i64 @hash_lookup(%struct.Lisp_Hash_Table* %call991, i64 %378, i64* null)
  store i64 %call992, i64* %idx985, align 8
  %cmp993 = icmp slt i64 %call992, 0
  br i1 %cmp993, label %if.then.995, label %if.end.997

if.then.995:                                      ; preds = %lor.lhs.false.990, %do.body.984
  %call996 = call i64 @builtin_lisp_symbol(i32 262)
  %379 = load i64, i64* %car_part, align 8
  %380 = call i64 @wrong_type_argument(i64 %call996, i64 %379) #7
  unreachable

if.end.997:                                       ; preds = %lor.lhs.false.990
  %381 = load i64, i64* @Vcharset_hash_table, align 8
  %call998 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %381)
  %382 = load i64, i64* %idx985, align 8
  %call999 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call998, i64 %382)
  %call1000 = call i64 @AREF(i64 %call999, i64 0)
  %shr1001 = ashr i64 %call1000, 2
  %conv1002 = trunc i64 %shr1001 to i32
  store i32 %conv1002, i32* %this_id, align 4
  br label %do.end.1003

do.end.1003:                                      ; preds = %if.end.997
  br label %do.body.1004

do.body.1004:                                     ; preds = %do.end.1003
  br label %do.body.1005

do.body.1005:                                     ; preds = %do.body.1004
  %383 = load i64, i64* %cdr_part, align 8
  %and1006 = and i64 %383, 7
  %conv1007 = trunc i64 %and1006 to i32
  %and1008 = and i32 %conv1007, -5
  %cmp1009 = icmp eq i32 %and1008, 2
  br i1 %cmp1009, label %cond.true.1011, label %cond.false.1012

cond.true.1011:                                   ; preds = %do.body.1005
  br label %cond.end.1014

cond.false.1012:                                  ; preds = %do.body.1005
  %call1013 = call i64 @builtin_lisp_symbol(i32 559)
  %384 = load i64, i64* %cdr_part, align 8
  %385 = call i64 @wrong_type_argument(i64 %call1013, i64 %384) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end.1014

cond.end.1014:                                    ; preds = %386, %cond.true.1011
  %387 = load i64, i64* %cdr_part, align 8
  %shr1015 = ashr i64 %387, 2
  %cmp1016 = icmp sle i64 -2147483648, %shr1015
  br i1 %cmp1016, label %land.lhs.true.1018, label %if.then.1022

land.lhs.true.1018:                               ; preds = %cond.end.1014
  %388 = load i64, i64* %cdr_part, align 8
  %shr1019 = ashr i64 %388, 2
  %cmp1020 = icmp sle i64 %shr1019, 2147483647
  br i1 %cmp1020, label %if.end.1023, label %if.then.1022

if.then.1022:                                     ; preds = %land.lhs.true.1018, %cond.end.1014
  %389 = load i64, i64* %cdr_part, align 8
  call void @args_out_of_range_3(i64 %389, i64 -8589934590, i64 8589934590) #7
  unreachable

if.end.1023:                                      ; preds = %land.lhs.true.1018
  br label %do.end.1024

do.end.1024:                                      ; preds = %if.end.1023
  br label %do.end.1025

do.end.1025:                                      ; preds = %do.end.1024
  %390 = load i64, i64* %cdr_part, align 8
  %shr1026 = ashr i64 %390, 2
  %conv1027 = trunc i64 %shr1026 to i32
  store i32 %conv1027, i32* %offset, align 4
  br label %if.end.1049

if.else.1028:                                     ; preds = %for.body.975
  br label %do.body.1029

do.body.1029:                                     ; preds = %if.else.1028
  %391 = load i64, i64* %elt, align 8
  %and1031 = and i64 %391, 7
  %conv1032 = trunc i64 %and1031 to i32
  %cmp1033 = icmp eq i32 %conv1032, 0
  br i1 %cmp1033, label %lor.lhs.false.1035, label %if.then.1040

lor.lhs.false.1035:                               ; preds = %do.body.1029
  %392 = load i64, i64* @Vcharset_hash_table, align 8
  %call1036 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %392)
  %393 = load i64, i64* %elt, align 8
  %call1037 = call i64 @hash_lookup(%struct.Lisp_Hash_Table* %call1036, i64 %393, i64* null)
  store i64 %call1037, i64* %idx1030, align 8
  %cmp1038 = icmp slt i64 %call1037, 0
  br i1 %cmp1038, label %if.then.1040, label %if.end.1042

if.then.1040:                                     ; preds = %lor.lhs.false.1035, %do.body.1029
  %call1041 = call i64 @builtin_lisp_symbol(i32 262)
  %394 = load i64, i64* %elt, align 8
  %395 = call i64 @wrong_type_argument(i64 %call1041, i64 %394) #7
  unreachable

if.end.1042:                                      ; preds = %lor.lhs.false.1035
  %396 = load i64, i64* @Vcharset_hash_table, align 8
  %call1043 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %396)
  %397 = load i64, i64* %idx1030, align 8
  %call1044 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call1043, i64 %397)
  %call1045 = call i64 @AREF(i64 %call1044, i64 0)
  %shr1046 = ashr i64 %call1045, 2
  %conv1047 = trunc i64 %shr1046 to i32
  store i32 %conv1047, i32* %this_id, align 4
  br label %do.end.1048

do.end.1048:                                      ; preds = %if.end.1042
  store i32 0, i32* %offset, align 4
  br label %if.end.1049

if.end.1049:                                      ; preds = %do.end.1048, %do.end.1025
  %398 = load i64, i64* %val, align 8
  %399 = load i32, i32* %this_id, align 4
  %conv1050 = sext i32 %399 to i64
  %shl1051 = shl i64 %conv1050, 2
  %add1052 = add i64 %shl1051, 2
  %400 = load i32, i32* %offset, align 4
  %conv1053 = sext i32 %400 to i64
  %shl1054 = shl i64 %conv1053, 2
  %add1055 = add i64 %shl1054, 2
  %call1056 = call i64 @Fcons(i64 %add1052, i64 %add1055)
  call void @XSETCAR(i64 %398, i64 %call1056)
  %401 = load %struct.charset*, %struct.charset** @charset_table, align 8
  %402 = load i32, i32* %this_id, align 4
  %idx.ext1057 = sext i32 %402 to i64
  %add.ptr1058 = getelementptr inbounds %struct.charset, %struct.charset* %401, i64 %idx.ext1057
  store %struct.charset* %add.ptr1058, %struct.charset** %this_charset, align 8
  %min_char1059 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 13
  %403 = load i32, i32* %min_char1059, align 4
  %404 = load %struct.charset*, %struct.charset** %this_charset, align 8
  %min_char1060 = getelementptr inbounds %struct.charset, %struct.charset* %404, i32 0, i32 13
  %405 = load i32, i32* %min_char1060, align 4
  %cmp1061 = icmp sgt i32 %403, %405
  br i1 %cmp1061, label %if.then.1063, label %if.end.1066

if.then.1063:                                     ; preds = %if.end.1049
  %406 = load %struct.charset*, %struct.charset** %this_charset, align 8
  %min_char1064 = getelementptr inbounds %struct.charset, %struct.charset* %406, i32 0, i32 13
  %407 = load i32, i32* %min_char1064, align 4
  %min_char1065 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 13
  store i32 %407, i32* %min_char1065, align 4
  br label %if.end.1066

if.end.1066:                                      ; preds = %if.then.1063, %if.end.1049
  %max_char1067 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 14
  %408 = load i32, i32* %max_char1067, align 4
  %409 = load %struct.charset*, %struct.charset** %this_charset, align 8
  %max_char1068 = getelementptr inbounds %struct.charset, %struct.charset* %409, i32 0, i32 14
  %410 = load i32, i32* %max_char1068, align 4
  %cmp1069 = icmp slt i32 %408, %410
  br i1 %cmp1069, label %if.then.1071, label %if.end.1074

if.then.1071:                                     ; preds = %if.end.1066
  %411 = load %struct.charset*, %struct.charset** %this_charset, align 8
  %max_char1072 = getelementptr inbounds %struct.charset, %struct.charset* %411, i32 0, i32 14
  %412 = load i32, i32* %max_char1072, align 4
  %max_char1073 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 14
  store i32 %412, i32* %max_char1073, align 4
  br label %if.end.1074

if.end.1074:                                      ; preds = %if.then.1071, %if.end.1066
  store i32 0, i32* %i, align 4
  br label %for.cond.1075

for.cond.1075:                                    ; preds = %for.inc.1089, %if.end.1074
  %413 = load i32, i32* %i, align 4
  %cmp1076 = icmp slt i32 %413, 190
  br i1 %cmp1076, label %for.body.1078, label %for.end.1091

for.body.1078:                                    ; preds = %for.cond.1075
  %414 = load i32, i32* %i, align 4
  %idxprom1079 = sext i32 %414 to i64
  %415 = load %struct.charset*, %struct.charset** %this_charset, align 8
  %fast_map1080 = getelementptr inbounds %struct.charset, %struct.charset* %415, i32 0, i32 16
  %arrayidx1081 = getelementptr inbounds [190 x i8], [190 x i8]* %fast_map1080, i32 0, i64 %idxprom1079
  %416 = load i8, i8* %arrayidx1081, align 1
  %conv1082 = zext i8 %416 to i32
  %417 = load i32, i32* %i, align 4
  %idxprom1083 = sext i32 %417 to i64
  %fast_map1084 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 16
  %arrayidx1085 = getelementptr inbounds [190 x i8], [190 x i8]* %fast_map1084, i32 0, i64 %idxprom1083
  %418 = load i8, i8* %arrayidx1085, align 1
  %conv1086 = zext i8 %418 to i32
  %or1087 = or i32 %conv1086, %conv1082
  %conv1088 = trunc i32 %or1087 to i8
  store i8 %conv1088, i8* %arrayidx1085, align 1
  br label %for.inc.1089

for.inc.1089:                                     ; preds = %for.body.1078
  %419 = load i32, i32* %i, align 4
  %inc1090 = add nsw i32 %419, 1
  store i32 %inc1090, i32* %i, align 4
  br label %for.cond.1075

for.end.1091:                                     ; preds = %for.cond.1075
  br label %for.inc.1092

for.inc.1092:                                     ; preds = %for.end.1091
  %420 = load i64, i64* %val, align 8
  %call1093 = call i64 @Fcdr(i64 %420)
  store i64 %call1093, i64* %val, align 8
  br label %for.cond.970

for.end.1094:                                     ; preds = %for.cond.970
  br label %if.end.1096

if.else.1095:                                     ; preds = %if.else.959
  call void (i8*, ...) @error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i32 0, i32 0)) #7
  unreachable

if.end.1096:                                      ; preds = %for.end.1094
  br label %if.end.1097

if.end.1097:                                      ; preds = %if.end.1096, %for.end.954
  br label %if.end.1098

if.end.1098:                                      ; preds = %if.end.1097, %if.then.892
  br label %if.end.1099

if.end.1099:                                      ; preds = %if.end.1098, %if.end.886
  %421 = load i64*, i64** %args.addr, align 8
  %arrayidx1100 = getelementptr inbounds i64, i64* %421, i64 15
  %422 = load i64, i64* %arrayidx1100, align 8
  store i64 %422, i64* %val, align 8
  %423 = load i64, i64* %val, align 8
  %call1101 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1102 = icmp eq i64 %423, %call1101
  br i1 %cmp1102, label %if.end.1107, label %land.lhs.true.1104

land.lhs.true.1104:                               ; preds = %if.end.1099
  %424 = load i64, i64* %val, align 8
  %call1105 = call zeroext i1 @STRINGP(i64 %424)
  br i1 %call1105, label %if.end.1107, label %if.then.1106

if.then.1106:                                     ; preds = %land.lhs.true.1104
  %425 = load i64, i64* %val, align 8
  call void @CHECK_VECTOR(i64 %425)
  br label %if.end.1107

if.end.1107:                                      ; preds = %if.then.1106, %land.lhs.true.1104, %if.end.1099
  %426 = load i64, i64* %attrs, align 8
  %427 = load i64, i64* %val, align 8
  call void @ASET(i64 %426, i64 8, i64 %427)
  %428 = load i64*, i64** %args.addr, align 8
  %arrayidx1108 = getelementptr inbounds i64, i64* %428, i64 16
  %429 = load i64, i64* %arrayidx1108, align 8
  call void @CHECK_LIST(i64 %429)
  %430 = load i64, i64* %attrs, align 8
  %431 = load i64*, i64** %args.addr, align 8
  %arrayidx1109 = getelementptr inbounds i64, i64* %431, i64 16
  %432 = load i64, i64* %arrayidx1109, align 8
  call void @ASET(i64 %430, i64 2, i64 %432)
  %433 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %hash_table, align 8
  %434 = load i64*, i64** %args.addr, align 8
  %arrayidx1110 = getelementptr inbounds i64, i64* %434, i64 0
  %435 = load i64, i64* %arrayidx1110, align 8
  %call1111 = call i64 @hash_lookup(%struct.Lisp_Hash_Table* %433, i64 %435, i64* %hash_code)
  %hash_index = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 1
  store i64 %call1111, i64* %hash_index, align 8
  %hash_index1112 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 1
  %436 = load i64, i64* %hash_index1112, align 8
  %cmp1113 = icmp sge i64 %436, 0
  br i1 %cmp1113, label %if.then.1115, label %if.else.1123

if.then.1115:                                     ; preds = %if.end.1107
  store i8 0, i8* %new_definition_p, align 1
  %437 = load i64*, i64** %args.addr, align 8
  %arrayidx1116 = getelementptr inbounds i64, i64* %437, i64 0
  %438 = load i64, i64* %arrayidx1116, align 8
  %439 = load i64, i64* @Vcharset_hash_table, align 8
  %call1117 = call i64 @builtin_lisp_symbol(i32 0)
  %call1118 = call i64 @Fgethash(i64 %438, i64 %439, i64 %call1117)
  %call1119 = call i64 @AREF(i64 %call1118, i64 0)
  %shr1120 = ashr i64 %call1119, 2
  %conv1121 = trunc i64 %shr1120 to i32
  store i32 %conv1121, i32* %id, align 4
  %440 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %hash_table, align 8
  %hash_index1122 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 1
  %441 = load i64, i64* %hash_index1122, align 8
  %442 = load i64, i64* %attrs, align 8
  call void @set_hash_value_slot(%struct.Lisp_Hash_Table* %440, i64 %441, i64 %442)
  br label %if.end.1138

if.else.1123:                                     ; preds = %if.end.1107
  %443 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %hash_table, align 8
  %444 = load i64*, i64** %args.addr, align 8
  %arrayidx1124 = getelementptr inbounds i64, i64* %444, i64 0
  %445 = load i64, i64* %arrayidx1124, align 8
  %446 = load i64, i64* %attrs, align 8
  %447 = load i64, i64* %hash_code, align 8
  %call1125 = call i64 @hash_put(%struct.Lisp_Hash_Table* %443, i64 %445, i64 %446, i64 %447)
  %hash_index1126 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 1
  store i64 %call1125, i64* %hash_index1126, align 8
  %448 = load i32, i32* @charset_table_used, align 4
  %conv1127 = sext i32 %448 to i64
  %449 = load i64, i64* @charset_table_size, align 8
  %cmp1128 = icmp eq i64 %conv1127, %449
  br i1 %cmp1128, label %if.then.1130, label %if.end.1136

if.then.1130:                                     ; preds = %if.else.1123
  %450 = load i64, i64* @charset_table_size, align 8
  %conv1131 = trunc i64 %450 to i32
  store i32 %conv1131, i32* %old_size, align 4
  %451 = load i32, i32* %old_size, align 4
  %conv1132 = sext i32 %451 to i64
  store i64 %conv1132, i64* %new_size, align 8
  %call1133 = call i8* @xpalloc(i8* null, i64* %new_size, i64 1, i64 2147483647, i64 328)
  %452 = bitcast i8* %call1133 to %struct.charset*
  store %struct.charset* %452, %struct.charset** %new_table, align 8
  %453 = load %struct.charset*, %struct.charset** %new_table, align 8
  %454 = bitcast %struct.charset* %453 to i8*
  %455 = load %struct.charset*, %struct.charset** @charset_table, align 8
  %456 = bitcast %struct.charset* %455 to i8*
  %457 = load i32, i32* %old_size, align 4
  %conv1134 = sext i32 %457 to i64
  %mul1135 = mul i64 %conv1134, 328
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %454, i8* %456, i64 %mul1135, i32 8, i1 false)
  %458 = load %struct.charset*, %struct.charset** %new_table, align 8
  store %struct.charset* %458, %struct.charset** @charset_table, align 8
  %459 = load i64, i64* %new_size, align 8
  store i64 %459, i64* @charset_table_size, align 8
  br label %if.end.1136

if.end.1136:                                      ; preds = %if.then.1130, %if.else.1123
  %460 = load i32, i32* @charset_table_used, align 4
  %inc1137 = add nsw i32 %460, 1
  store i32 %inc1137, i32* @charset_table_used, align 4
  store i32 %460, i32* %id, align 4
  store i8 1, i8* %new_definition_p, align 1
  br label %if.end.1138

if.end.1138:                                      ; preds = %if.end.1136, %if.then.1115
  %461 = load i64, i64* %attrs, align 8
  %462 = load i32, i32* %id, align 4
  %conv1139 = sext i32 %462 to i64
  %shl1140 = shl i64 %conv1139, 2
  %add1141 = add i64 %shl1140, 2
  call void @ASET(i64 %461, i64 0, i64 %add1141)
  %463 = load i32, i32* %id, align 4
  %id1142 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 0
  store i32 %463, i32* %id1142, align 4
  %464 = load i32, i32* %id, align 4
  %idxprom1143 = sext i32 %464 to i64
  %465 = load %struct.charset*, %struct.charset** @charset_table, align 8
  %arrayidx1144 = getelementptr inbounds %struct.charset, %struct.charset* %465, i64 %idxprom1143
  %466 = bitcast %struct.charset* %arrayidx1144 to i8*
  %467 = bitcast %struct.charset* %charset to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %466, i8* %467, i64 328, i32 8, i1 false)
  %method1145 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 9
  %468 = load i32, i32* %method1145, align 4
  %cmp1146 = icmp eq i32 %468, 1
  br i1 %cmp1146, label %if.then.1148, label %if.end.1151

if.then.1148:                                     ; preds = %if.end.1138
  call void @load_charset(%struct.charset* %charset, i32 0)
  %469 = load i32, i32* %id, align 4
  %idxprom1149 = sext i32 %469 to i64
  %470 = load %struct.charset*, %struct.charset** @charset_table, align 8
  %arrayidx1150 = getelementptr inbounds %struct.charset, %struct.charset* %470, i64 %idxprom1149
  %471 = bitcast %struct.charset* %arrayidx1150 to i8*
  %472 = bitcast %struct.charset* %charset to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %471, i8* %472, i64 328, i32 8, i1 false)
  br label %if.end.1151

if.end.1151:                                      ; preds = %if.then.1148, %if.end.1138
  %iso_final1152 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 6
  %473 = load i32, i32* %iso_final1152, align 4
  %cmp1153 = icmp sge i32 %473, 0
  br i1 %cmp1153, label %if.then.1155, label %if.end.1196

if.then.1155:                                     ; preds = %if.end.1151
  %474 = load i32, i32* %id, align 4
  %iso_final1156 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 6
  %475 = load i32, i32* %iso_final1156, align 4
  %idxprom1157 = sext i32 %475 to i64
  %iso_chars_961158 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 5
  %bf.load1159 = load i8, i8* %iso_chars_961158, align 8
  %bf.lshr = lshr i8 %bf.load1159, 1
  %bf.clear1160 = and i8 %bf.lshr, 1
  %bf.cast1161 = trunc i8 %bf.clear1160 to i1
  %idxprom1162 = zext i1 %bf.cast1161 to i64
  %dimension1163 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 2
  %476 = load i32, i32* %dimension1163, align 4
  %sub1164 = sub nsw i32 %476, 1
  %idxprom1165 = sext i32 %sub1164 to i64
  %arrayidx1166 = getelementptr inbounds [3 x [2 x [128 x i32]]], [3 x [2 x [128 x i32]]]* @iso_charset_table, i32 0, i64 %idxprom1165
  %arrayidx1167 = getelementptr inbounds [2 x [128 x i32]], [2 x [128 x i32]]* %arrayidx1166, i32 0, i64 %idxprom1162
  %arrayidx1168 = getelementptr inbounds [128 x i32], [128 x i32]* %arrayidx1167, i32 0, i64 %idxprom1157
  store i32 %474, i32* %arrayidx1168, align 4
  %477 = load i8, i8* %new_definition_p, align 1
  %tobool1169 = trunc i8 %477 to i1
  br i1 %tobool1169, label %if.then.1170, label %if.end.1176

if.then.1170:                                     ; preds = %if.then.1155
  %478 = load i64, i64* @Viso_2022_charset_list, align 8
  %479 = load i32, i32* %id, align 4
  %conv1171 = sext i32 %479 to i64
  %shl1172 = shl i64 %conv1171, 2
  %add1173 = add i64 %shl1172, 2
  %call1174 = call i64 @list1(i64 %add1173)
  %call1175 = call i64 @nconc2(i64 %478, i64 %call1174)
  store i64 %call1175, i64* @Viso_2022_charset_list, align 8
  br label %if.end.1176

if.end.1176:                                      ; preds = %if.then.1170, %if.then.1155
  %480 = load i32, i32* getelementptr inbounds ([3 x [2 x [128 x i32]]], [3 x [2 x [128 x i32]]]* @iso_charset_table, i32 0, i64 0, i64 0, i64 74), align 4
  %481 = load i32, i32* %id, align 4
  %cmp1177 = icmp eq i32 %480, %481
  br i1 %cmp1177, label %if.then.1179, label %if.else.1180

if.then.1179:                                     ; preds = %if.end.1176
  %482 = load i32, i32* %id, align 4
  store i32 %482, i32* @charset_jisx0201_roman, align 4
  br label %if.end.1195

if.else.1180:                                     ; preds = %if.end.1176
  %483 = load i32, i32* getelementptr inbounds ([3 x [2 x [128 x i32]]], [3 x [2 x [128 x i32]]]* @iso_charset_table, i32 0, i64 1, i64 0, i64 64), align 4
  %484 = load i32, i32* %id, align 4
  %cmp1181 = icmp eq i32 %483, %484
  br i1 %cmp1181, label %if.then.1183, label %if.else.1184

if.then.1183:                                     ; preds = %if.else.1180
  %485 = load i32, i32* %id, align 4
  store i32 %485, i32* @charset_jisx0208_1978, align 4
  br label %if.end.1194

if.else.1184:                                     ; preds = %if.else.1180
  %486 = load i32, i32* getelementptr inbounds ([3 x [2 x [128 x i32]]], [3 x [2 x [128 x i32]]]* @iso_charset_table, i32 0, i64 1, i64 0, i64 66), align 4
  %487 = load i32, i32* %id, align 4
  %cmp1185 = icmp eq i32 %486, %487
  br i1 %cmp1185, label %if.then.1187, label %if.else.1188

if.then.1187:                                     ; preds = %if.else.1184
  %488 = load i32, i32* %id, align 4
  store i32 %488, i32* @charset_jisx0208, align 4
  br label %if.end.1193

if.else.1188:                                     ; preds = %if.else.1184
  %489 = load i32, i32* getelementptr inbounds ([3 x [2 x [128 x i32]]], [3 x [2 x [128 x i32]]]* @iso_charset_table, i32 0, i64 1, i64 0, i64 67), align 4
  %490 = load i32, i32* %id, align 4
  %cmp1189 = icmp eq i32 %489, %490
  br i1 %cmp1189, label %if.then.1191, label %if.end.1192

if.then.1191:                                     ; preds = %if.else.1188
  %491 = load i32, i32* %id, align 4
  store i32 %491, i32* @charset_ksc5601, align 4
  br label %if.end.1192

if.end.1192:                                      ; preds = %if.then.1191, %if.else.1188
  br label %if.end.1193

if.end.1193:                                      ; preds = %if.end.1192, %if.then.1187
  br label %if.end.1194

if.end.1194:                                      ; preds = %if.end.1193, %if.then.1183
  br label %if.end.1195

if.end.1195:                                      ; preds = %if.end.1194, %if.then.1179
  br label %if.end.1196

if.end.1196:                                      ; preds = %if.end.1195, %if.end.1151
  %emacs_mule_id1197 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 8
  %492 = load i32, i32* %emacs_mule_id1197, align 4
  %cmp1198 = icmp sge i32 %492, 0
  br i1 %cmp1198, label %if.then.1200, label %if.end.1230

if.then.1200:                                     ; preds = %if.end.1196
  %493 = load i32, i32* %id, align 4
  %emacs_mule_id1201 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 8
  %494 = load i32, i32* %emacs_mule_id1201, align 4
  %idxprom1202 = sext i32 %494 to i64
  %arrayidx1203 = getelementptr inbounds [256 x i32], [256 x i32]* @emacs_mule_charset, i32 0, i64 %idxprom1202
  store i32 %493, i32* %arrayidx1203, align 4
  %emacs_mule_id1204 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 8
  %495 = load i32, i32* %emacs_mule_id1204, align 4
  %cmp1205 = icmp slt i32 %495, 160
  br i1 %cmp1205, label %if.then.1207, label %if.else.1214

if.then.1207:                                     ; preds = %if.then.1200
  %dimension1208 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 2
  %496 = load i32, i32* %dimension1208, align 4
  %add1209 = add nsw i32 %496, 1
  %conv1210 = trunc i32 %add1209 to i8
  %emacs_mule_id1211 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 8
  %497 = load i32, i32* %emacs_mule_id1211, align 4
  %idxprom1212 = sext i32 %497 to i64
  %arrayidx1213 = getelementptr inbounds [256 x i8], [256 x i8]* @emacs_mule_bytes, i32 0, i64 %idxprom1212
  store i8 %conv1210, i8* %arrayidx1213, align 1
  br label %if.end.1221

if.else.1214:                                     ; preds = %if.then.1200
  %dimension1215 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 2
  %498 = load i32, i32* %dimension1215, align 4
  %add1216 = add nsw i32 %498, 2
  %conv1217 = trunc i32 %add1216 to i8
  %emacs_mule_id1218 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 8
  %499 = load i32, i32* %emacs_mule_id1218, align 4
  %idxprom1219 = sext i32 %499 to i64
  %arrayidx1220 = getelementptr inbounds [256 x i8], [256 x i8]* @emacs_mule_bytes, i32 0, i64 %idxprom1219
  store i8 %conv1217, i8* %arrayidx1220, align 1
  br label %if.end.1221

if.end.1221:                                      ; preds = %if.else.1214, %if.then.1207
  %500 = load i8, i8* %new_definition_p, align 1
  %tobool1222 = trunc i8 %500 to i1
  br i1 %tobool1222, label %if.then.1223, label %if.end.1229

if.then.1223:                                     ; preds = %if.end.1221
  %501 = load i64, i64* @Vemacs_mule_charset_list, align 8
  %502 = load i32, i32* %id, align 4
  %conv1224 = sext i32 %502 to i64
  %shl1225 = shl i64 %conv1224, 2
  %add1226 = add i64 %shl1225, 2
  %call1227 = call i64 @list1(i64 %add1226)
  %call1228 = call i64 @nconc2(i64 %501, i64 %call1227)
  store i64 %call1228, i64* @Vemacs_mule_charset_list, align 8
  br label %if.end.1229

if.end.1229:                                      ; preds = %if.then.1223, %if.end.1221
  br label %if.end.1230

if.end.1230:                                      ; preds = %if.end.1229, %if.end.1196
  %503 = load i8, i8* %new_definition_p, align 1
  %tobool1231 = trunc i8 %503 to i1
  br i1 %tobool1231, label %if.then.1232, label %if.end.1300

if.then.1232:                                     ; preds = %if.end.1230
  %504 = load i64*, i64** %args.addr, align 8
  %arrayidx1233 = getelementptr inbounds i64, i64* %504, i64 0
  %505 = load i64, i64* %arrayidx1233, align 8
  %506 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 29), align 8
  %call1234 = call i64 @Fcons(i64 %505, i64 %506)
  store i64 %call1234, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 29), align 8
  %supplementary_p1235 = getelementptr inbounds %struct.charset, %struct.charset* %charset, i32 0, i32 5
  %bf.load1236 = load i8, i8* %supplementary_p1235, align 8
  %bf.lshr1237 = lshr i8 %bf.load1236, 3
  %bf.clear1238 = and i8 %bf.lshr1237, 1
  %bf.cast1239 = trunc i8 %bf.clear1238 to i1
  br i1 %bf.cast1239, label %if.then.1240, label %if.else.1246

if.then.1240:                                     ; preds = %if.then.1232
  %507 = load i64, i64* @Vcharset_ordered_list, align 8
  %508 = load i32, i32* %id, align 4
  %conv1241 = sext i32 %508 to i64
  %shl1242 = shl i64 %conv1241, 2
  %add1243 = add i64 %shl1242, 2
  %call1244 = call i64 @list1(i64 %add1243)
  %call1245 = call i64 @nconc2(i64 %507, i64 %call1244)
  store i64 %call1245, i64* @Vcharset_ordered_list, align 8
  br label %if.end.1298

if.else.1246:                                     ; preds = %if.then.1232
  %509 = load i64, i64* @Vcharset_ordered_list, align 8
  store i64 %509, i64* %tail, align 8
  br label %for.cond.1247

for.cond.1247:                                    ; preds = %for.inc.1264, %if.else.1246
  %510 = load i64, i64* %tail, align 8
  %and1248 = and i64 %510, 7
  %conv1249 = trunc i64 %and1248 to i32
  %cmp1250 = icmp eq i32 %conv1249, 3
  br i1 %cmp1250, label %for.body.1252, label %for.end.1268

for.body.1252:                                    ; preds = %for.cond.1247
  %511 = load %struct.charset*, %struct.charset** @charset_table, align 8
  %512 = load i64, i64* %tail, align 8
  %sub1253 = sub nsw i64 %512, 3
  %513 = inttoptr i64 %sub1253 to i8*
  %514 = bitcast i8* %513 to %struct.Lisp_Cons*
  %car1254 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %514, i32 0, i32 0
  %515 = load i64, i64* %car1254, align 8
  %shr1255 = ashr i64 %515, 2
  %add.ptr1256 = getelementptr inbounds %struct.charset, %struct.charset* %511, i64 %shr1255
  store %struct.charset* %add.ptr1256, %struct.charset** %cs, align 8
  %516 = load %struct.charset*, %struct.charset** %cs, align 8
  %supplementary_p1257 = getelementptr inbounds %struct.charset, %struct.charset* %516, i32 0, i32 5
  %bf.load1258 = load i8, i8* %supplementary_p1257, align 8
  %bf.lshr1259 = lshr i8 %bf.load1258, 3
  %bf.clear1260 = and i8 %bf.lshr1259, 1
  %bf.cast1261 = trunc i8 %bf.clear1260 to i1
  br i1 %bf.cast1261, label %if.then.1262, label %if.end.1263

if.then.1262:                                     ; preds = %for.body.1252
  br label %for.end.1268

if.end.1263:                                      ; preds = %for.body.1252
  br label %for.inc.1264

for.inc.1264:                                     ; preds = %if.end.1263
  %517 = load i64, i64* %tail, align 8
  %sub1265 = sub nsw i64 %517, 3
  %518 = inttoptr i64 %sub1265 to i8*
  %519 = bitcast i8* %518 to %struct.Lisp_Cons*
  %u1266 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %519, i32 0, i32 1
  %cdr1267 = bitcast %union.anon* %u1266 to i64*
  %520 = load i64, i64* %cdr1267, align 8
  store i64 %520, i64* %tail, align 8
  br label %for.cond.1247

for.end.1268:                                     ; preds = %if.then.1262, %for.cond.1247
  %521 = load i64, i64* %tail, align 8
  %522 = load i64, i64* @Vcharset_ordered_list, align 8
  %cmp1269 = icmp eq i64 %521, %522
  br i1 %cmp1269, label %if.then.1271, label %if.else.1276

if.then.1271:                                     ; preds = %for.end.1268
  %523 = load i32, i32* %id, align 4
  %conv1272 = sext i32 %523 to i64
  %shl1273 = shl i64 %conv1272, 2
  %add1274 = add i64 %shl1273, 2
  %524 = load i64, i64* @Vcharset_ordered_list, align 8
  %call1275 = call i64 @Fcons(i64 %add1274, i64 %524)
  store i64 %call1275, i64* @Vcharset_ordered_list, align 8
  br label %if.end.1297

if.else.1276:                                     ; preds = %for.end.1268
  %525 = load i64, i64* %tail, align 8
  %call1277 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1278 = icmp eq i64 %525, %call1277
  br i1 %cmp1278, label %if.then.1280, label %if.else.1286

if.then.1280:                                     ; preds = %if.else.1276
  %526 = load i64, i64* @Vcharset_ordered_list, align 8
  %527 = load i32, i32* %id, align 4
  %conv1281 = sext i32 %527 to i64
  %shl1282 = shl i64 %conv1281, 2
  %add1283 = add i64 %shl1282, 2
  %call1284 = call i64 @list1(i64 %add1283)
  %call1285 = call i64 @nconc2(i64 %526, i64 %call1284)
  store i64 %call1285, i64* @Vcharset_ordered_list, align 8
  br label %if.end.1296

if.else.1286:                                     ; preds = %if.else.1276
  %528 = load i64, i64* %tail, align 8
  %sub1287 = sub nsw i64 %528, 3
  %529 = inttoptr i64 %sub1287 to i8*
  %530 = bitcast i8* %529 to %struct.Lisp_Cons*
  %car1288 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %530, i32 0, i32 0
  %531 = load i64, i64* %car1288, align 8
  %532 = load i64, i64* %tail, align 8
  %sub1289 = sub nsw i64 %532, 3
  %533 = inttoptr i64 %sub1289 to i8*
  %534 = bitcast i8* %533 to %struct.Lisp_Cons*
  %u1290 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %534, i32 0, i32 1
  %cdr1291 = bitcast %union.anon* %u1290 to i64*
  %535 = load i64, i64* %cdr1291, align 8
  %call1292 = call i64 @Fcons(i64 %531, i64 %535)
  store i64 %call1292, i64* %val, align 8
  %536 = load i64, i64* %tail, align 8
  %537 = load i64, i64* %val, align 8
  call void @XSETCDR(i64 %536, i64 %537)
  %538 = load i64, i64* %tail, align 8
  %539 = load i32, i32* %id, align 4
  %conv1293 = sext i32 %539 to i64
  %shl1294 = shl i64 %conv1293, 2
  %add1295 = add i64 %shl1294, 2
  call void @XSETCAR(i64 %538, i64 %add1295)
  br label %if.end.1296

if.end.1296:                                      ; preds = %if.else.1286, %if.then.1280
  br label %if.end.1297

if.end.1297:                                      ; preds = %if.end.1296, %if.then.1271
  br label %if.end.1298

if.end.1298:                                      ; preds = %if.end.1297, %if.then.1240
  %540 = load i64, i64* @charset_ordered_list_tick, align 8
  %inc1299 = add i64 %540, 1
  store i64 %inc1299, i64* @charset_ordered_list_tick, align 8
  br label %if.end.1300

if.end.1300:                                      ; preds = %if.end.1298, %if.end.1230
  %call1301 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1301, i64* %retval
  br label %return

return:                                           ; preds = %if.end.1300, %if.then
  %541 = load i64, i64* %retval
  ret i64 %541
}

declare i64 @Fsignal(i64, i64) #1

declare i64 @intern(i8*) #1

declare i64 @Fmake_vector(i64, i64) #1

declare void @ASET(i64, i64, i64) #1

declare i64 @Faref(i64, i64) #1

; Function Attrs: noreturn
declare void @args_out_of_range_3(i64, i64, i64) #2

declare noalias i8* @xzalloc(i64) #1

declare i64 @cons_to_unsigned(i64, i64) #1

declare i64 @make_float(double) #1

; Function Attrs: noreturn
declare void @error(i8*, ...) #2

declare void @CHECK_NATNUM(i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

declare zeroext i1 @NATNUMP(i64) #1

declare i64 @Fcar(i64) #1

declare i64 @Fnth(i64, i64) #1

declare i64 @make_uninit_vector(i64) #1

declare i64 @Fcopy_sequence(i64) #1

declare void @XSETCAR(i64, i64) #1

declare i64 @Fcdr(i64) #1

declare zeroext i1 @STRINGP(i64) #1

declare void @CHECK_VECTOR(i64) #1

declare void @CHECK_LIST(i64) #1

declare i64 @Fgethash(i64, i64, i64) #1

declare void @set_hash_value_slot(%struct.Lisp_Hash_Table*, i64, i64) #1

declare i64 @hash_put(%struct.Lisp_Hash_Table*, i64, i64, i64) #1

declare i8* @xpalloc(i8*, i64*, i64, i64, i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare i64 @nconc2(i64, i64) #1

declare i64 @list1(i64) #1

declare void @XSETCDR(i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fdefine_charset_alias(i64 %alias, i64 %charset) #0 {
entry:
  %alias.addr = alloca i64, align 8
  %charset.addr = alloca i64, align 8
  %attr = alloca i64, align 8
  store i64 %alias, i64* %alias.addr, align 8
  store i64 %charset, i64* %charset.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %charset.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %do.body
  %1 = load i64, i64* %charset.addr, align 8
  %2 = load i64, i64* @Vcharset_hash_table, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %call2 = call i64 @Fgethash(i64 %1, i64 %2, i64 %call)
  store i64 %call2, i64* %attr, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp4 = icmp eq i64 %call2, %call3
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.body
  %call6 = call i64 @builtin_lisp_symbol(i32 262)
  %3 = load i64, i64* %charset.addr, align 8
  %4 = call i64 @wrong_type_argument(i64 %call6, i64 %3) #7
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  br label %do.end

do.end:                                           ; preds = %if.end
  %5 = load i64, i64* %alias.addr, align 8
  %6 = load i64, i64* %attr, align 8
  %7 = load i64, i64* @Vcharset_hash_table, align 8
  %call7 = call i64 @Fputhash(i64 %5, i64 %6, i64 %7)
  %8 = load i64, i64* %alias.addr, align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 29), align 8
  %call8 = call i64 @Fcons(i64 %8, i64 %9)
  store i64 %call8, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 29), align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call9
}

declare i64 @Fputhash(i64, i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fcharset_plist(i64 %charset) #0 {
entry:
  %charset.addr = alloca i64, align 8
  %attrs = alloca i64, align 8
  store i64 %charset, i64* %charset.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %charset.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %do.body
  %1 = load i64, i64* %charset.addr, align 8
  %2 = load i64, i64* @Vcharset_hash_table, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %call2 = call i64 @Fgethash(i64 %1, i64 %2, i64 %call)
  store i64 %call2, i64* %attrs, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp4 = icmp eq i64 %call2, %call3
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.body
  %call6 = call i64 @builtin_lisp_symbol(i32 262)
  %3 = load i64, i64* %charset.addr, align 8
  %4 = call i64 @wrong_type_argument(i64 %call6, i64 %3) #7
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  br label %do.end

do.end:                                           ; preds = %if.end
  %5 = load i64, i64* %attrs, align 8
  %call7 = call i64 @AREF(i64 %5, i64 2)
  ret i64 %call7
}

; Function Attrs: nounwind uwtable
define i64 @Fset_charset_plist(i64 %charset, i64 %plist) #0 {
entry:
  %charset.addr = alloca i64, align 8
  %plist.addr = alloca i64, align 8
  %attrs = alloca i64, align 8
  store i64 %charset, i64* %charset.addr, align 8
  store i64 %plist, i64* %plist.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %charset.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %do.body
  %1 = load i64, i64* %charset.addr, align 8
  %2 = load i64, i64* @Vcharset_hash_table, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %call2 = call i64 @Fgethash(i64 %1, i64 %2, i64 %call)
  store i64 %call2, i64* %attrs, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp4 = icmp eq i64 %call2, %call3
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.body
  %call6 = call i64 @builtin_lisp_symbol(i32 262)
  %3 = load i64, i64* %charset.addr, align 8
  %4 = call i64 @wrong_type_argument(i64 %call6, i64 %3) #7
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  br label %do.end

do.end:                                           ; preds = %if.end
  %5 = load i64, i64* %attrs, align 8
  %6 = load i64, i64* %plist.addr, align 8
  call void @ASET(i64 %5, i64 2, i64 %6)
  %7 = load i64, i64* %plist.addr, align 8
  ret i64 %7
}

; Function Attrs: nounwind uwtable
define i64 @Funify_charset(i64 %charset, i64 %unify_map, i64 %deunify) #0 {
entry:
  %retval = alloca i64, align 8
  %charset.addr = alloca i64, align 8
  %unify_map.addr = alloca i64, align 8
  %deunify.addr = alloca i64, align 8
  %id = alloca i32, align 4
  %cs = alloca %struct.charset*, align 8
  %idx = alloca i64, align 8
  %min_code = alloca i32, align 4
  %max_code = alloca i32, align 4
  %min_char74 = alloca i32, align 4
  %max_char172 = alloca i32, align 4
  store i64 %charset, i64* %charset.addr, align 8
  store i64 %unify_map, i64* %unify_map.addr, align 8
  store i64 %deunify, i64* %deunify.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %charset.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %do.body
  %1 = load i64, i64* @Vcharset_hash_table, align 8
  %call = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %1)
  %2 = load i64, i64* %charset.addr, align 8
  %call2 = call i64 @hash_lookup(%struct.Lisp_Hash_Table* %call, i64 %2, i64* null)
  store i64 %call2, i64* %idx, align 8
  %cmp3 = icmp slt i64 %call2, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.body
  %call5 = call i64 @builtin_lisp_symbol(i32 262)
  %3 = load i64, i64* %charset.addr, align 8
  %4 = call i64 @wrong_type_argument(i64 %call5, i64 %3) #7
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i64, i64* @Vcharset_hash_table, align 8
  %call6 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %5)
  %6 = load i64, i64* %idx, align 8
  %call7 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call6, i64 %6)
  %call8 = call i64 @AREF(i64 %call7, i64 0)
  %shr = ashr i64 %call8, 2
  %conv9 = trunc i64 %shr to i32
  store i32 %conv9, i32* %id, align 4
  br label %do.end

do.end:                                           ; preds = %if.end
  %7 = load %struct.charset*, %struct.charset** @charset_table, align 8
  %8 = load i32, i32* %id, align 4
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds %struct.charset, %struct.charset* %7, i64 %idx.ext
  store %struct.charset* %add.ptr, %struct.charset** %cs, align 8
  %9 = load i64, i64* %deunify.addr, align 8
  %call10 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp11 = icmp eq i64 %9, %call10
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %10 = load %struct.charset*, %struct.charset** %cs, align 8
  %unified_p = getelementptr inbounds %struct.charset, %struct.charset* %10, i32 0, i32 5
  %bf.load = load i8, i8* %unified_p, align 8
  %bf.lshr = lshr i8 %bf.load, 5
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %land.lhs.true, label %if.end.27

land.lhs.true:                                    ; preds = %cond.true
  %11 = load i64, i64* @Vcharset_hash_table, align 8
  %call14 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %11)
  %12 = load %struct.charset*, %struct.charset** %cs, align 8
  %hash_index = getelementptr inbounds %struct.charset, %struct.charset* %12, i32 0, i32 1
  %13 = load i64, i64* %hash_index, align 8
  %call15 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call14, i64 %13)
  %call16 = call i64 @AREF(i64 %call15, i64 9)
  %call17 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp18 = icmp eq i64 %call16, %call17
  br i1 %cmp18, label %if.end.27, label %if.then.25

cond.false:                                       ; preds = %do.end
  %14 = load %struct.charset*, %struct.charset** %cs, align 8
  %unified_p20 = getelementptr inbounds %struct.charset, %struct.charset* %14, i32 0, i32 5
  %bf.load21 = load i8, i8* %unified_p20, align 8
  %bf.lshr22 = lshr i8 %bf.load21, 5
  %bf.clear23 = and i8 %bf.lshr22, 1
  %bf.cast24 = trunc i8 %bf.clear23 to i1
  br i1 %bf.cast24, label %if.end.27, label %if.then.25

if.then.25:                                       ; preds = %cond.false, %land.lhs.true
  %call26 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call26, i64* %retval
  br label %return

if.end.27:                                        ; preds = %cond.false, %land.lhs.true, %cond.true
  %15 = load %struct.charset*, %struct.charset** %cs, align 8
  %unified_p28 = getelementptr inbounds %struct.charset, %struct.charset* %15, i32 0, i32 5
  %bf.load29 = load i8, i8* %unified_p28, align 8
  %bf.clear30 = and i8 %bf.load29, -33
  store i8 %bf.clear30, i8* %unified_p28, align 8
  %16 = load i64, i64* %deunify.addr, align 8
  %call31 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp32 = icmp eq i64 %16, %call31
  br i1 %cmp32, label %if.then.34, label %if.else.69

if.then.34:                                       ; preds = %if.end.27
  %17 = load %struct.charset*, %struct.charset** %cs, align 8
  %method = getelementptr inbounds %struct.charset, %struct.charset* %17, i32 0, i32 9
  %18 = load i32, i32* %method, align 4
  %cmp35 = icmp ne i32 %18, 0
  br i1 %cmp35, label %if.then.40, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %if.then.34
  %19 = load %struct.charset*, %struct.charset** %cs, align 8
  %code_offset = getelementptr inbounds %struct.charset, %struct.charset* %19, i32 0, i32 17
  %20 = load i32, i32* %code_offset, align 4
  %cmp38 = icmp slt i32 %20, 1114112
  br i1 %cmp38, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %lor.lhs.false.37, %if.then.34
  %21 = load i64, i64* %charset.addr, align 8
  %call41 = call i64 @SYMBOL_NAME(i64 %21)
  %call42 = call i8* @SDATA(i64 %call41)
  call void (i8*, ...) @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0), i8* %call42) #7
  unreachable

if.end.43:                                        ; preds = %lor.lhs.false.37
  %22 = load i64, i64* %unify_map.addr, align 8
  %call44 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp45 = icmp eq i64 %22, %call44
  br i1 %cmp45, label %if.then.47, label %if.else

if.then.47:                                       ; preds = %if.end.43
  %23 = load i64, i64* @Vcharset_hash_table, align 8
  %call48 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %23)
  %24 = load %struct.charset*, %struct.charset** %cs, align 8
  %hash_index49 = getelementptr inbounds %struct.charset, %struct.charset* %24, i32 0, i32 1
  %25 = load i64, i64* %hash_index49, align 8
  %call50 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call48, i64 %25)
  %call51 = call i64 @AREF(i64 %call50, i64 8)
  store i64 %call51, i64* %unify_map.addr, align 8
  br label %if.end.57

if.else:                                          ; preds = %if.end.43
  %26 = load i64, i64* %unify_map.addr, align 8
  %call52 = call zeroext i1 @STRINGP(i64 %26)
  br i1 %call52, label %if.end.56, label %land.lhs.true.53

land.lhs.true.53:                                 ; preds = %if.else
  %27 = load i64, i64* %unify_map.addr, align 8
  %call54 = call zeroext i1 @VECTORP(i64 %27)
  br i1 %call54, label %if.end.56, label %if.then.55

if.then.55:                                       ; preds = %land.lhs.true.53
  %28 = load i64, i64* %unify_map.addr, align 8
  call void @signal_error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i64 %28) #7
  unreachable

if.end.56:                                        ; preds = %land.lhs.true.53, %if.else
  %29 = load %struct.charset*, %struct.charset** %cs, align 8
  %30 = load i64, i64* %unify_map.addr, align 8
  call void @set_charset_attr(%struct.charset* %29, i32 8, i64 %30)
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.then.47
  %31 = load i64, i64* @Vchar_unify_table, align 8
  %call58 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp59 = icmp eq i64 %31, %call58
  br i1 %cmp59, label %if.then.61, label %if.end.65

if.then.61:                                       ; preds = %if.end.57
  %call62 = call i64 @builtin_lisp_symbol(i32 0)
  %call63 = call i64 @builtin_lisp_symbol(i32 0)
  %call64 = call i64 @Fmake_char_table(i64 %call62, i64 %call63)
  store i64 %call64, i64* @Vchar_unify_table, align 8
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.61, %if.end.57
  %32 = load i64, i64* @Vchar_unify_table, align 8
  %33 = load %struct.charset*, %struct.charset** %cs, align 8
  %min_char = getelementptr inbounds %struct.charset, %struct.charset* %33, i32 0, i32 13
  %34 = load i32, i32* %min_char, align 4
  %35 = load %struct.charset*, %struct.charset** %cs, align 8
  %max_char = getelementptr inbounds %struct.charset, %struct.charset* %35, i32 0, i32 14
  %36 = load i32, i32* %max_char, align 4
  %37 = load i64, i64* %charset.addr, align 8
  call void @char_table_set_range(i64 %32, i32 %34, i32 %36, i64 %37)
  %38 = load %struct.charset*, %struct.charset** %cs, align 8
  %unified_p66 = getelementptr inbounds %struct.charset, %struct.charset* %38, i32 0, i32 5
  %bf.load67 = load i8, i8* %unified_p66, align 8
  %bf.clear68 = and i8 %bf.load67, -33
  %bf.set = or i8 %bf.clear68, 32
  store i8 %bf.set, i8* %unified_p66, align 8
  br label %if.end.278

if.else.69:                                       ; preds = %if.end.27
  %39 = load i64, i64* @Vchar_unify_table, align 8
  %call70 = call zeroext i1 @CHAR_TABLE_P(i64 %39)
  br i1 %call70, label %if.then.71, label %if.end.277

if.then.71:                                       ; preds = %if.else.69
  %40 = load %struct.charset*, %struct.charset** %cs, align 8
  %min_code72 = getelementptr inbounds %struct.charset, %struct.charset* %40, i32 0, i32 10
  %41 = load i32, i32* %min_code72, align 4
  store i32 %41, i32* %min_code, align 4
  %42 = load %struct.charset*, %struct.charset** %cs, align 8
  %max_code73 = getelementptr inbounds %struct.charset, %struct.charset* %42, i32 0, i32 11
  %43 = load i32, i32* %max_code73, align 4
  store i32 %43, i32* %max_code, align 4
  br i1 true, label %cond.true.75, label %cond.false.78

cond.true.75:                                     ; preds = %if.then.71
  %44 = load i32, i32* %min_code, align 4
  %add = add i32 %44, 0
  %cmp76 = icmp ult i32 %add, 128
  br i1 %cmp76, label %land.lhs.true.83, label %cond.false.91

cond.false.78:                                    ; preds = %if.then.71
  %45 = load i32, i32* %min_code, align 4
  %conv79 = zext i32 %45 to i64
  %add80 = add i64 %conv79, 0
  %cmp81 = icmp ult i64 %add80, 128
  br i1 %cmp81, label %land.lhs.true.83, label %cond.false.91

land.lhs.true.83:                                 ; preds = %cond.false.78, %cond.true.75
  %46 = load %struct.charset*, %struct.charset** %cs, align 8
  %ascii_compatible_p = getelementptr inbounds %struct.charset, %struct.charset* %46, i32 0, i32 5
  %bf.load84 = load i8, i8* %ascii_compatible_p, align 8
  %bf.lshr85 = lshr i8 %bf.load84, 2
  %bf.clear86 = and i8 %bf.lshr85, 1
  %bf.cast87 = trunc i8 %bf.clear86 to i1
  br i1 %bf.cast87, label %cond.true.89, label %cond.false.91

cond.true.89:                                     ; preds = %land.lhs.true.83
  %47 = load i32, i32* %min_code, align 4
  %conv90 = zext i32 %47 to i64
  br label %cond.end.169

cond.false.91:                                    ; preds = %land.lhs.true.83, %cond.false.78, %cond.true.75
  %48 = load i32, i32* %min_code, align 4
  %49 = load %struct.charset*, %struct.charset** %cs, align 8
  %min_code92 = getelementptr inbounds %struct.charset, %struct.charset* %49, i32 0, i32 10
  %50 = load i32, i32* %min_code92, align 4
  %cmp93 = icmp ult i32 %48, %50
  br i1 %cmp93, label %cond.true.99, label %lor.lhs.false.95

lor.lhs.false.95:                                 ; preds = %cond.false.91
  %51 = load i32, i32* %min_code, align 4
  %52 = load %struct.charset*, %struct.charset** %cs, align 8
  %max_code96 = getelementptr inbounds %struct.charset, %struct.charset* %52, i32 0, i32 11
  %53 = load i32, i32* %max_code96, align 4
  %cmp97 = icmp ugt i32 %51, %53
  br i1 %cmp97, label %cond.true.99, label %cond.false.100

cond.true.99:                                     ; preds = %lor.lhs.false.95, %cond.false.91
  br label %cond.end.167

cond.false.100:                                   ; preds = %lor.lhs.false.95
  %54 = load %struct.charset*, %struct.charset** %cs, align 8
  %unified_p101 = getelementptr inbounds %struct.charset, %struct.charset* %54, i32 0, i32 5
  %bf.load102 = load i8, i8* %unified_p101, align 8
  %bf.lshr103 = lshr i8 %bf.load102, 5
  %bf.clear104 = and i8 %bf.lshr103, 1
  %bf.cast105 = trunc i8 %bf.clear104 to i1
  br i1 %bf.cast105, label %cond.true.107, label %cond.false.110

cond.true.107:                                    ; preds = %cond.false.100
  %55 = load %struct.charset*, %struct.charset** %cs, align 8
  %56 = load i32, i32* %min_code, align 4
  %call108 = call i32 @decode_char(%struct.charset* %55, i32 %56)
  %conv109 = sext i32 %call108 to i64
  br label %cond.end.165

cond.false.110:                                   ; preds = %cond.false.100
  %57 = load %struct.charset*, %struct.charset** %cs, align 8
  %method111 = getelementptr inbounds %struct.charset, %struct.charset* %57, i32 0, i32 9
  %58 = load i32, i32* %method111, align 4
  %cmp112 = icmp eq i32 %58, 0
  br i1 %cmp112, label %cond.true.114, label %cond.false.126

cond.true.114:                                    ; preds = %cond.false.110
  %59 = load %struct.charset*, %struct.charset** %cs, align 8
  %code_linear_p = getelementptr inbounds %struct.charset, %struct.charset* %59, i32 0, i32 5
  %bf.load115 = load i8, i8* %code_linear_p, align 8
  %bf.clear116 = and i8 %bf.load115, 1
  %bf.cast117 = trunc i8 %bf.clear116 to i1
  br i1 %bf.cast117, label %cond.true.119, label %cond.false.123

cond.true.119:                                    ; preds = %cond.true.114
  %60 = load i32, i32* %min_code, align 4
  %61 = load %struct.charset*, %struct.charset** %cs, align 8
  %min_code120 = getelementptr inbounds %struct.charset, %struct.charset* %61, i32 0, i32 10
  %62 = load i32, i32* %min_code120, align 4
  %sub = sub i32 %60, %62
  %63 = load %struct.charset*, %struct.charset** %cs, align 8
  %code_offset121 = getelementptr inbounds %struct.charset, %struct.charset* %63, i32 0, i32 17
  %64 = load i32, i32* %code_offset121, align 4
  %add122 = add nsw i32 %sub, %64
  br label %cond.end

cond.false.123:                                   ; preds = %cond.true.114
  %65 = load %struct.charset*, %struct.charset** %cs, align 8
  %66 = load i32, i32* %min_code, align 4
  %call124 = call i32 @decode_char(%struct.charset* %65, i32 %66)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.123, %cond.true.119
  %cond = phi i32 [ %add122, %cond.true.119 ], [ %call124, %cond.false.123 ]
  %conv125 = sext i32 %cond to i64
  br label %cond.end.163

cond.false.126:                                   ; preds = %cond.false.110
  %67 = load %struct.charset*, %struct.charset** %cs, align 8
  %method127 = getelementptr inbounds %struct.charset, %struct.charset* %67, i32 0, i32 9
  %68 = load i32, i32* %method127, align 4
  %cmp128 = icmp eq i32 %68, 1
  br i1 %cmp128, label %cond.true.130, label %cond.false.158

cond.true.130:                                    ; preds = %cond.false.126
  %69 = load %struct.charset*, %struct.charset** %cs, align 8
  %code_linear_p131 = getelementptr inbounds %struct.charset, %struct.charset* %69, i32 0, i32 5
  %bf.load132 = load i8, i8* %code_linear_p131, align 8
  %bf.clear133 = and i8 %bf.load132, 1
  %bf.cast134 = trunc i8 %bf.clear133 to i1
  br i1 %bf.cast134, label %land.lhs.true.136, label %cond.false.153

land.lhs.true.136:                                ; preds = %cond.true.130
  %70 = load i64, i64* @Vcharset_hash_table, align 8
  %call137 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %70)
  %71 = load %struct.charset*, %struct.charset** %cs, align 8
  %hash_index138 = getelementptr inbounds %struct.charset, %struct.charset* %71, i32 0, i32 1
  %72 = load i64, i64* %hash_index138, align 8
  %call139 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call137, i64 %72)
  %call140 = call i64 @AREF(i64 %call139, i64 4)
  %call141 = call zeroext i1 @VECTORP(i64 %call140)
  br i1 %call141, label %cond.true.143, label %cond.false.153

cond.true.143:                                    ; preds = %land.lhs.true.136
  %73 = load i64, i64* @Vcharset_hash_table, align 8
  %call144 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %73)
  %74 = load %struct.charset*, %struct.charset** %cs, align 8
  %hash_index145 = getelementptr inbounds %struct.charset, %struct.charset* %74, i32 0, i32 1
  %75 = load i64, i64* %hash_index145, align 8
  %call146 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call144, i64 %75)
  %call147 = call i64 @AREF(i64 %call146, i64 4)
  %76 = load i32, i32* %min_code, align 4
  %77 = load %struct.charset*, %struct.charset** %cs, align 8
  %min_code148 = getelementptr inbounds %struct.charset, %struct.charset* %77, i32 0, i32 10
  %78 = load i32, i32* %min_code148, align 4
  %sub149 = sub i32 %76, %78
  %conv150 = zext i32 %sub149 to i64
  %call151 = call i64 @AREF(i64 %call147, i64 %conv150)
  %shr152 = ashr i64 %call151, 2
  br label %cond.end.156

cond.false.153:                                   ; preds = %land.lhs.true.136, %cond.true.130
  %79 = load %struct.charset*, %struct.charset** %cs, align 8
  %80 = load i32, i32* %min_code, align 4
  %call154 = call i32 @decode_char(%struct.charset* %79, i32 %80)
  %conv155 = sext i32 %call154 to i64
  br label %cond.end.156

cond.end.156:                                     ; preds = %cond.false.153, %cond.true.143
  %cond157 = phi i64 [ %shr152, %cond.true.143 ], [ %conv155, %cond.false.153 ]
  br label %cond.end.161

cond.false.158:                                   ; preds = %cond.false.126
  %81 = load %struct.charset*, %struct.charset** %cs, align 8
  %82 = load i32, i32* %min_code, align 4
  %call159 = call i32 @decode_char(%struct.charset* %81, i32 %82)
  %conv160 = sext i32 %call159 to i64
  br label %cond.end.161

cond.end.161:                                     ; preds = %cond.false.158, %cond.end.156
  %cond162 = phi i64 [ %cond157, %cond.end.156 ], [ %conv160, %cond.false.158 ]
  br label %cond.end.163

cond.end.163:                                     ; preds = %cond.end.161, %cond.end
  %cond164 = phi i64 [ %conv125, %cond.end ], [ %cond162, %cond.end.161 ]
  br label %cond.end.165

cond.end.165:                                     ; preds = %cond.end.163, %cond.true.107
  %cond166 = phi i64 [ %conv109, %cond.true.107 ], [ %cond164, %cond.end.163 ]
  br label %cond.end.167

cond.end.167:                                     ; preds = %cond.end.165, %cond.true.99
  %cond168 = phi i64 [ -1, %cond.true.99 ], [ %cond166, %cond.end.165 ]
  br label %cond.end.169

cond.end.169:                                     ; preds = %cond.end.167, %cond.true.89
  %cond170 = phi i64 [ %conv90, %cond.true.89 ], [ %cond168, %cond.end.167 ]
  %conv171 = trunc i64 %cond170 to i32
  store i32 %conv171, i32* %min_char74, align 4
  br i1 true, label %cond.true.173, label %cond.false.177

cond.true.173:                                    ; preds = %cond.end.169
  %83 = load i32, i32* %max_code, align 4
  %add174 = add i32 %83, 0
  %cmp175 = icmp ult i32 %add174, 128
  br i1 %cmp175, label %land.lhs.true.182, label %cond.false.191

cond.false.177:                                   ; preds = %cond.end.169
  %84 = load i32, i32* %max_code, align 4
  %conv178 = zext i32 %84 to i64
  %add179 = add i64 %conv178, 0
  %cmp180 = icmp ult i64 %add179, 128
  br i1 %cmp180, label %land.lhs.true.182, label %cond.false.191

land.lhs.true.182:                                ; preds = %cond.false.177, %cond.true.173
  %85 = load %struct.charset*, %struct.charset** %cs, align 8
  %ascii_compatible_p183 = getelementptr inbounds %struct.charset, %struct.charset* %85, i32 0, i32 5
  %bf.load184 = load i8, i8* %ascii_compatible_p183, align 8
  %bf.lshr185 = lshr i8 %bf.load184, 2
  %bf.clear186 = and i8 %bf.lshr185, 1
  %bf.cast187 = trunc i8 %bf.clear186 to i1
  br i1 %bf.cast187, label %cond.true.189, label %cond.false.191

cond.true.189:                                    ; preds = %land.lhs.true.182
  %86 = load i32, i32* %max_code, align 4
  %conv190 = zext i32 %86 to i64
  br label %cond.end.273

cond.false.191:                                   ; preds = %land.lhs.true.182, %cond.false.177, %cond.true.173
  %87 = load i32, i32* %max_code, align 4
  %88 = load %struct.charset*, %struct.charset** %cs, align 8
  %min_code192 = getelementptr inbounds %struct.charset, %struct.charset* %88, i32 0, i32 10
  %89 = load i32, i32* %min_code192, align 4
  %cmp193 = icmp ult i32 %87, %89
  br i1 %cmp193, label %cond.true.199, label %lor.lhs.false.195

lor.lhs.false.195:                                ; preds = %cond.false.191
  %90 = load i32, i32* %max_code, align 4
  %91 = load %struct.charset*, %struct.charset** %cs, align 8
  %max_code196 = getelementptr inbounds %struct.charset, %struct.charset* %91, i32 0, i32 11
  %92 = load i32, i32* %max_code196, align 4
  %cmp197 = icmp ugt i32 %90, %92
  br i1 %cmp197, label %cond.true.199, label %cond.false.200

cond.true.199:                                    ; preds = %lor.lhs.false.195, %cond.false.191
  br label %cond.end.271

cond.false.200:                                   ; preds = %lor.lhs.false.195
  %93 = load %struct.charset*, %struct.charset** %cs, align 8
  %unified_p201 = getelementptr inbounds %struct.charset, %struct.charset* %93, i32 0, i32 5
  %bf.load202 = load i8, i8* %unified_p201, align 8
  %bf.lshr203 = lshr i8 %bf.load202, 5
  %bf.clear204 = and i8 %bf.lshr203, 1
  %bf.cast205 = trunc i8 %bf.clear204 to i1
  br i1 %bf.cast205, label %cond.true.207, label %cond.false.210

cond.true.207:                                    ; preds = %cond.false.200
  %94 = load %struct.charset*, %struct.charset** %cs, align 8
  %95 = load i32, i32* %max_code, align 4
  %call208 = call i32 @decode_char(%struct.charset* %94, i32 %95)
  %conv209 = sext i32 %call208 to i64
  br label %cond.end.269

cond.false.210:                                   ; preds = %cond.false.200
  %96 = load %struct.charset*, %struct.charset** %cs, align 8
  %method211 = getelementptr inbounds %struct.charset, %struct.charset* %96, i32 0, i32 9
  %97 = load i32, i32* %method211, align 4
  %cmp212 = icmp eq i32 %97, 0
  br i1 %cmp212, label %cond.true.214, label %cond.false.230

cond.true.214:                                    ; preds = %cond.false.210
  %98 = load %struct.charset*, %struct.charset** %cs, align 8
  %code_linear_p215 = getelementptr inbounds %struct.charset, %struct.charset* %98, i32 0, i32 5
  %bf.load216 = load i8, i8* %code_linear_p215, align 8
  %bf.clear217 = and i8 %bf.load216, 1
  %bf.cast218 = trunc i8 %bf.clear217 to i1
  br i1 %bf.cast218, label %cond.true.220, label %cond.false.225

cond.true.220:                                    ; preds = %cond.true.214
  %99 = load i32, i32* %max_code, align 4
  %100 = load %struct.charset*, %struct.charset** %cs, align 8
  %min_code221 = getelementptr inbounds %struct.charset, %struct.charset* %100, i32 0, i32 10
  %101 = load i32, i32* %min_code221, align 4
  %sub222 = sub i32 %99, %101
  %102 = load %struct.charset*, %struct.charset** %cs, align 8
  %code_offset223 = getelementptr inbounds %struct.charset, %struct.charset* %102, i32 0, i32 17
  %103 = load i32, i32* %code_offset223, align 4
  %add224 = add nsw i32 %sub222, %103
  br label %cond.end.227

cond.false.225:                                   ; preds = %cond.true.214
  %104 = load %struct.charset*, %struct.charset** %cs, align 8
  %105 = load i32, i32* %max_code, align 4
  %call226 = call i32 @decode_char(%struct.charset* %104, i32 %105)
  br label %cond.end.227

cond.end.227:                                     ; preds = %cond.false.225, %cond.true.220
  %cond228 = phi i32 [ %add224, %cond.true.220 ], [ %call226, %cond.false.225 ]
  %conv229 = sext i32 %cond228 to i64
  br label %cond.end.267

cond.false.230:                                   ; preds = %cond.false.210
  %106 = load %struct.charset*, %struct.charset** %cs, align 8
  %method231 = getelementptr inbounds %struct.charset, %struct.charset* %106, i32 0, i32 9
  %107 = load i32, i32* %method231, align 4
  %cmp232 = icmp eq i32 %107, 1
  br i1 %cmp232, label %cond.true.234, label %cond.false.262

cond.true.234:                                    ; preds = %cond.false.230
  %108 = load %struct.charset*, %struct.charset** %cs, align 8
  %code_linear_p235 = getelementptr inbounds %struct.charset, %struct.charset* %108, i32 0, i32 5
  %bf.load236 = load i8, i8* %code_linear_p235, align 8
  %bf.clear237 = and i8 %bf.load236, 1
  %bf.cast238 = trunc i8 %bf.clear237 to i1
  br i1 %bf.cast238, label %land.lhs.true.240, label %cond.false.257

land.lhs.true.240:                                ; preds = %cond.true.234
  %109 = load i64, i64* @Vcharset_hash_table, align 8
  %call241 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %109)
  %110 = load %struct.charset*, %struct.charset** %cs, align 8
  %hash_index242 = getelementptr inbounds %struct.charset, %struct.charset* %110, i32 0, i32 1
  %111 = load i64, i64* %hash_index242, align 8
  %call243 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call241, i64 %111)
  %call244 = call i64 @AREF(i64 %call243, i64 4)
  %call245 = call zeroext i1 @VECTORP(i64 %call244)
  br i1 %call245, label %cond.true.247, label %cond.false.257

cond.true.247:                                    ; preds = %land.lhs.true.240
  %112 = load i64, i64* @Vcharset_hash_table, align 8
  %call248 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %112)
  %113 = load %struct.charset*, %struct.charset** %cs, align 8
  %hash_index249 = getelementptr inbounds %struct.charset, %struct.charset* %113, i32 0, i32 1
  %114 = load i64, i64* %hash_index249, align 8
  %call250 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call248, i64 %114)
  %call251 = call i64 @AREF(i64 %call250, i64 4)
  %115 = load i32, i32* %max_code, align 4
  %116 = load %struct.charset*, %struct.charset** %cs, align 8
  %min_code252 = getelementptr inbounds %struct.charset, %struct.charset* %116, i32 0, i32 10
  %117 = load i32, i32* %min_code252, align 4
  %sub253 = sub i32 %115, %117
  %conv254 = zext i32 %sub253 to i64
  %call255 = call i64 @AREF(i64 %call251, i64 %conv254)
  %shr256 = ashr i64 %call255, 2
  br label %cond.end.260

cond.false.257:                                   ; preds = %land.lhs.true.240, %cond.true.234
  %118 = load %struct.charset*, %struct.charset** %cs, align 8
  %119 = load i32, i32* %max_code, align 4
  %call258 = call i32 @decode_char(%struct.charset* %118, i32 %119)
  %conv259 = sext i32 %call258 to i64
  br label %cond.end.260

cond.end.260:                                     ; preds = %cond.false.257, %cond.true.247
  %cond261 = phi i64 [ %shr256, %cond.true.247 ], [ %conv259, %cond.false.257 ]
  br label %cond.end.265

cond.false.262:                                   ; preds = %cond.false.230
  %120 = load %struct.charset*, %struct.charset** %cs, align 8
  %121 = load i32, i32* %max_code, align 4
  %call263 = call i32 @decode_char(%struct.charset* %120, i32 %121)
  %conv264 = sext i32 %call263 to i64
  br label %cond.end.265

cond.end.265:                                     ; preds = %cond.false.262, %cond.end.260
  %cond266 = phi i64 [ %cond261, %cond.end.260 ], [ %conv264, %cond.false.262 ]
  br label %cond.end.267

cond.end.267:                                     ; preds = %cond.end.265, %cond.end.227
  %cond268 = phi i64 [ %conv229, %cond.end.227 ], [ %cond266, %cond.end.265 ]
  br label %cond.end.269

cond.end.269:                                     ; preds = %cond.end.267, %cond.true.207
  %cond270 = phi i64 [ %conv209, %cond.true.207 ], [ %cond268, %cond.end.267 ]
  br label %cond.end.271

cond.end.271:                                     ; preds = %cond.end.269, %cond.true.199
  %cond272 = phi i64 [ -1, %cond.true.199 ], [ %cond270, %cond.end.269 ]
  br label %cond.end.273

cond.end.273:                                     ; preds = %cond.end.271, %cond.true.189
  %cond274 = phi i64 [ %conv190, %cond.true.189 ], [ %cond272, %cond.end.271 ]
  %conv275 = trunc i64 %cond274 to i32
  store i32 %conv275, i32* %max_char172, align 4
  %122 = load i64, i64* @Vchar_unify_table, align 8
  %123 = load i32, i32* %min_char74, align 4
  %124 = load i32, i32* %max_char172, align 4
  %call276 = call i64 @builtin_lisp_symbol(i32 0)
  call void @char_table_set_range(i64 %122, i32 %123, i32 %124, i64 %call276)
  br label %if.end.277

if.end.277:                                       ; preds = %cond.end.273, %if.else.69
  br label %if.end.278

if.end.278:                                       ; preds = %if.end.277, %if.end.65
  %call279 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call279, i64* %retval
  br label %return

return:                                           ; preds = %if.end.278, %if.then.25
  %125 = load i64, i64* %retval
  ret i64 %125
}

declare i8* @SDATA(i64) #1

declare i64 @SYMBOL_NAME(i64) #1

declare zeroext i1 @VECTORP(i64) #1

; Function Attrs: noreturn
declare void @signal_error(i8*, i64) #2

declare void @set_charset_attr(%struct.charset*, i32, i64) #1

declare i64 @Fmake_char_table(i64, i64) #1

declare void @char_table_set_range(i64, i32, i32, i64) #1

; Function Attrs: nounwind uwtable
define i32 @decode_char(%struct.charset* %charset, i32 %code) #0 {
entry:
  %retval = alloca i32, align 4
  %charset.addr = alloca %struct.charset*, align 8
  %code.addr = alloca i32, align 4
  %c = alloca i32, align 4
  %char_index = alloca i32, align 4
  %method = alloca i32, align 4
  %subset_info = alloca i64, align 8
  %parents = alloca i64, align 8
  %id = alloca i32, align 4
  %code_offset129 = alloca i32, align 4
  %this_code = alloca i32, align 4
  %decoder = alloca i64, align 8
  %val = alloca i64, align 8
  store %struct.charset* %charset, %struct.charset** %charset.addr, align 8
  store i32 %code, i32* %code.addr, align 4
  %0 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %method1 = getelementptr inbounds %struct.charset, %struct.charset* %0, i32 0, i32 9
  %1 = load i32, i32* %method1, align 4
  store i32 %1, i32* %method, align 4
  %2 = load i32, i32* %code.addr, align 4
  %3 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %min_code = getelementptr inbounds %struct.charset, %struct.charset* %3, i32 0, i32 10
  %4 = load i32, i32* %min_code, align 4
  %cmp = icmp ult i32 %2, %4
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, i32* %code.addr, align 4
  %6 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %max_code = getelementptr inbounds %struct.charset, %struct.charset* %6, i32 0, i32 11
  %7 = load i32, i32* %max_code, align 4
  %cmp2 = icmp ugt i32 %5, %7
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %8 = load i32, i32* %method, align 4
  %cmp3 = icmp eq i32 %8, 2
  br i1 %cmp3, label %if.then.4, label %if.else.113

if.then.4:                                        ; preds = %if.end
  %9 = load i64, i64* @Vcharset_hash_table, align 8
  %call = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %9)
  %10 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %hash_index = getelementptr inbounds %struct.charset, %struct.charset* %10, i32 0, i32 1
  %11 = load i64, i64* %hash_index, align 8
  %call5 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call, i64 %11)
  %call6 = call i64 @AREF(i64 %call5, i64 6)
  store i64 %call6, i64* %subset_info, align 8
  %12 = load %struct.charset*, %struct.charset** @charset_table, align 8
  %13 = load i64, i64* %subset_info, align 8
  %call7 = call i64 @AREF(i64 %13, i64 0)
  %shr = ashr i64 %call7, 2
  %add.ptr = getelementptr inbounds %struct.charset, %struct.charset* %12, i64 %shr
  store %struct.charset* %add.ptr, %struct.charset** %charset.addr, align 8
  %14 = load i64, i64* %subset_info, align 8
  %call8 = call i64 @AREF(i64 %14, i64 3)
  %shr9 = ashr i64 %call8, 2
  %15 = load i32, i32* %code.addr, align 4
  %conv = zext i32 %15 to i64
  %sub = sub nsw i64 %conv, %shr9
  %conv10 = trunc i64 %sub to i32
  store i32 %conv10, i32* %code.addr, align 4
  %16 = load i32, i32* %code.addr, align 4
  %conv11 = zext i32 %16 to i64
  %17 = load i64, i64* %subset_info, align 8
  %call12 = call i64 @AREF(i64 %17, i64 1)
  %shr13 = ashr i64 %call12, 2
  %cmp14 = icmp slt i64 %conv11, %shr13
  br i1 %cmp14, label %if.then.22, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %if.then.4
  %18 = load i32, i32* %code.addr, align 4
  %conv17 = zext i32 %18 to i64
  %19 = load i64, i64* %subset_info, align 8
  %call18 = call i64 @AREF(i64 %19, i64 2)
  %shr19 = ashr i64 %call18, 2
  %cmp20 = icmp sgt i64 %conv17, %shr19
  br i1 %cmp20, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %lor.lhs.false.16, %if.then.4
  store i32 -1, i32* %c, align 4
  br label %if.end.112

if.else:                                          ; preds = %lor.lhs.false.16
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %20 = load i32, i32* %code.addr, align 4
  %add = add i32 %20, 0
  %cmp23 = icmp ult i32 %add, 128
  br i1 %cmp23, label %land.lhs.true, label %cond.false.32

cond.false:                                       ; preds = %if.else
  %21 = load i32, i32* %code.addr, align 4
  %conv25 = zext i32 %21 to i64
  %add26 = add i64 %conv25, 0
  %cmp27 = icmp ult i64 %add26, 128
  br i1 %cmp27, label %land.lhs.true, label %cond.false.32

land.lhs.true:                                    ; preds = %cond.false, %cond.true
  %22 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %ascii_compatible_p = getelementptr inbounds %struct.charset, %struct.charset* %22, i32 0, i32 5
  %bf.load = load i8, i8* %ascii_compatible_p, align 8
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %cond.true.30, label %cond.false.32

cond.true.30:                                     ; preds = %land.lhs.true
  %23 = load i32, i32* %code.addr, align 4
  %conv31 = zext i32 %23 to i64
  br label %cond.end.109

cond.false.32:                                    ; preds = %land.lhs.true, %cond.false, %cond.true
  %24 = load i32, i32* %code.addr, align 4
  %25 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %min_code33 = getelementptr inbounds %struct.charset, %struct.charset* %25, i32 0, i32 10
  %26 = load i32, i32* %min_code33, align 4
  %cmp34 = icmp ult i32 %24, %26
  br i1 %cmp34, label %cond.true.40, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %cond.false.32
  %27 = load i32, i32* %code.addr, align 4
  %28 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %max_code37 = getelementptr inbounds %struct.charset, %struct.charset* %28, i32 0, i32 11
  %29 = load i32, i32* %max_code37, align 4
  %cmp38 = icmp ugt i32 %27, %29
  br i1 %cmp38, label %cond.true.40, label %cond.false.41

cond.true.40:                                     ; preds = %lor.lhs.false.36, %cond.false.32
  br label %cond.end.107

cond.false.41:                                    ; preds = %lor.lhs.false.36
  %30 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %unified_p = getelementptr inbounds %struct.charset, %struct.charset* %30, i32 0, i32 5
  %bf.load42 = load i8, i8* %unified_p, align 8
  %bf.lshr43 = lshr i8 %bf.load42, 5
  %bf.clear44 = and i8 %bf.lshr43, 1
  %bf.cast45 = trunc i8 %bf.clear44 to i1
  br i1 %bf.cast45, label %cond.true.47, label %cond.false.50

cond.true.47:                                     ; preds = %cond.false.41
  %31 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %32 = load i32, i32* %code.addr, align 4
  %call48 = call i32 @decode_char(%struct.charset* %31, i32 %32)
  %conv49 = sext i32 %call48 to i64
  br label %cond.end.105

cond.false.50:                                    ; preds = %cond.false.41
  %33 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %method51 = getelementptr inbounds %struct.charset, %struct.charset* %33, i32 0, i32 9
  %34 = load i32, i32* %method51, align 4
  %cmp52 = icmp eq i32 %34, 0
  br i1 %cmp52, label %cond.true.54, label %cond.false.66

cond.true.54:                                     ; preds = %cond.false.50
  %35 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_linear_p = getelementptr inbounds %struct.charset, %struct.charset* %35, i32 0, i32 5
  %bf.load55 = load i8, i8* %code_linear_p, align 8
  %bf.clear56 = and i8 %bf.load55, 1
  %bf.cast57 = trunc i8 %bf.clear56 to i1
  br i1 %bf.cast57, label %cond.true.59, label %cond.false.63

cond.true.59:                                     ; preds = %cond.true.54
  %36 = load i32, i32* %code.addr, align 4
  %37 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %min_code60 = getelementptr inbounds %struct.charset, %struct.charset* %37, i32 0, i32 10
  %38 = load i32, i32* %min_code60, align 4
  %sub61 = sub i32 %36, %38
  %39 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_offset = getelementptr inbounds %struct.charset, %struct.charset* %39, i32 0, i32 17
  %40 = load i32, i32* %code_offset, align 4
  %add62 = add nsw i32 %sub61, %40
  br label %cond.end

cond.false.63:                                    ; preds = %cond.true.54
  %41 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %42 = load i32, i32* %code.addr, align 4
  %call64 = call i32 @decode_char(%struct.charset* %41, i32 %42)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.63, %cond.true.59
  %cond = phi i32 [ %add62, %cond.true.59 ], [ %call64, %cond.false.63 ]
  %conv65 = sext i32 %cond to i64
  br label %cond.end.103

cond.false.66:                                    ; preds = %cond.false.50
  %43 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %method67 = getelementptr inbounds %struct.charset, %struct.charset* %43, i32 0, i32 9
  %44 = load i32, i32* %method67, align 4
  %cmp68 = icmp eq i32 %44, 1
  br i1 %cmp68, label %cond.true.70, label %cond.false.98

cond.true.70:                                     ; preds = %cond.false.66
  %45 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_linear_p71 = getelementptr inbounds %struct.charset, %struct.charset* %45, i32 0, i32 5
  %bf.load72 = load i8, i8* %code_linear_p71, align 8
  %bf.clear73 = and i8 %bf.load72, 1
  %bf.cast74 = trunc i8 %bf.clear73 to i1
  br i1 %bf.cast74, label %land.lhs.true.76, label %cond.false.93

land.lhs.true.76:                                 ; preds = %cond.true.70
  %46 = load i64, i64* @Vcharset_hash_table, align 8
  %call77 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %46)
  %47 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %hash_index78 = getelementptr inbounds %struct.charset, %struct.charset* %47, i32 0, i32 1
  %48 = load i64, i64* %hash_index78, align 8
  %call79 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call77, i64 %48)
  %call80 = call i64 @AREF(i64 %call79, i64 4)
  %call81 = call zeroext i1 @VECTORP(i64 %call80)
  br i1 %call81, label %cond.true.83, label %cond.false.93

cond.true.83:                                     ; preds = %land.lhs.true.76
  %49 = load i64, i64* @Vcharset_hash_table, align 8
  %call84 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %49)
  %50 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %hash_index85 = getelementptr inbounds %struct.charset, %struct.charset* %50, i32 0, i32 1
  %51 = load i64, i64* %hash_index85, align 8
  %call86 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call84, i64 %51)
  %call87 = call i64 @AREF(i64 %call86, i64 4)
  %52 = load i32, i32* %code.addr, align 4
  %53 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %min_code88 = getelementptr inbounds %struct.charset, %struct.charset* %53, i32 0, i32 10
  %54 = load i32, i32* %min_code88, align 4
  %sub89 = sub i32 %52, %54
  %conv90 = zext i32 %sub89 to i64
  %call91 = call i64 @AREF(i64 %call87, i64 %conv90)
  %shr92 = ashr i64 %call91, 2
  br label %cond.end.96

cond.false.93:                                    ; preds = %land.lhs.true.76, %cond.true.70
  %55 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %56 = load i32, i32* %code.addr, align 4
  %call94 = call i32 @decode_char(%struct.charset* %55, i32 %56)
  %conv95 = sext i32 %call94 to i64
  br label %cond.end.96

cond.end.96:                                      ; preds = %cond.false.93, %cond.true.83
  %cond97 = phi i64 [ %shr92, %cond.true.83 ], [ %conv95, %cond.false.93 ]
  br label %cond.end.101

cond.false.98:                                    ; preds = %cond.false.66
  %57 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %58 = load i32, i32* %code.addr, align 4
  %call99 = call i32 @decode_char(%struct.charset* %57, i32 %58)
  %conv100 = sext i32 %call99 to i64
  br label %cond.end.101

cond.end.101:                                     ; preds = %cond.false.98, %cond.end.96
  %cond102 = phi i64 [ %cond97, %cond.end.96 ], [ %conv100, %cond.false.98 ]
  br label %cond.end.103

cond.end.103:                                     ; preds = %cond.end.101, %cond.end
  %cond104 = phi i64 [ %conv65, %cond.end ], [ %cond102, %cond.end.101 ]
  br label %cond.end.105

cond.end.105:                                     ; preds = %cond.end.103, %cond.true.47
  %cond106 = phi i64 [ %conv49, %cond.true.47 ], [ %cond104, %cond.end.103 ]
  br label %cond.end.107

cond.end.107:                                     ; preds = %cond.end.105, %cond.true.40
  %cond108 = phi i64 [ -1, %cond.true.40 ], [ %cond106, %cond.end.105 ]
  br label %cond.end.109

cond.end.109:                                     ; preds = %cond.end.107, %cond.true.30
  %cond110 = phi i64 [ %conv31, %cond.true.30 ], [ %cond108, %cond.end.107 ]
  %conv111 = trunc i64 %cond110 to i32
  store i32 %conv111, i32* %c, align 4
  br label %if.end.112

if.end.112:                                       ; preds = %cond.end.109, %if.then.22
  br label %if.end.371

if.else.113:                                      ; preds = %if.end
  %59 = load i32, i32* %method, align 4
  %cmp114 = icmp eq i32 %59, 3
  br i1 %cmp114, label %if.then.116, label %if.else.247

if.then.116:                                      ; preds = %if.else.113
  %60 = load i64, i64* @Vcharset_hash_table, align 8
  %call117 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %60)
  %61 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %hash_index118 = getelementptr inbounds %struct.charset, %struct.charset* %61, i32 0, i32 1
  %62 = load i64, i64* %hash_index118, align 8
  %call119 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call117, i64 %62)
  %call120 = call i64 @AREF(i64 %call119, i64 7)
  store i64 %call120, i64* %parents, align 8
  store i32 -1, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.116
  %63 = load i64, i64* %parents, align 8
  %and = and i64 %63, 7
  %conv121 = trunc i64 %and to i32
  %cmp122 = icmp eq i32 %conv121, 3
  br i1 %cmp122, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %64 = load i64, i64* %parents, align 8
  %sub124 = sub nsw i64 %64, 3
  %65 = inttoptr i64 %sub124 to i8*
  %66 = bitcast i8* %65 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %66, i32 0, i32 0
  %67 = load i64, i64* %car, align 8
  %sub125 = sub nsw i64 %67, 3
  %68 = inttoptr i64 %sub125 to i8*
  %69 = bitcast i8* %68 to %struct.Lisp_Cons*
  %car126 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %69, i32 0, i32 0
  %70 = load i64, i64* %car126, align 8
  %shr127 = ashr i64 %70, 2
  %conv128 = trunc i64 %shr127 to i32
  store i32 %conv128, i32* %id, align 4
  %71 = load i64, i64* %parents, align 8
  %sub130 = sub nsw i64 %71, 3
  %72 = inttoptr i64 %sub130 to i8*
  %73 = bitcast i8* %72 to %struct.Lisp_Cons*
  %car131 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %73, i32 0, i32 0
  %74 = load i64, i64* %car131, align 8
  %sub132 = sub nsw i64 %74, 3
  %75 = inttoptr i64 %sub132 to i8*
  %76 = bitcast i8* %75 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %76, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %77 = load i64, i64* %cdr, align 8
  %shr133 = ashr i64 %77, 2
  %conv134 = trunc i64 %shr133 to i32
  store i32 %conv134, i32* %code_offset129, align 4
  %78 = load i32, i32* %code.addr, align 4
  %79 = load i32, i32* %code_offset129, align 4
  %sub135 = sub i32 %78, %79
  store i32 %sub135, i32* %this_code, align 4
  %80 = load %struct.charset*, %struct.charset** @charset_table, align 8
  %81 = load i32, i32* %id, align 4
  %idx.ext = sext i32 %81 to i64
  %add.ptr136 = getelementptr inbounds %struct.charset, %struct.charset* %80, i64 %idx.ext
  store %struct.charset* %add.ptr136, %struct.charset** %charset.addr, align 8
  br i1 true, label %cond.true.137, label %cond.false.141

cond.true.137:                                    ; preds = %for.body
  %82 = load i32, i32* %this_code, align 4
  %add138 = add i32 %82, 0
  %cmp139 = icmp ult i32 %add138, 128
  br i1 %cmp139, label %land.lhs.true.146, label %cond.false.155

cond.false.141:                                   ; preds = %for.body
  %83 = load i32, i32* %this_code, align 4
  %conv142 = zext i32 %83 to i64
  %add143 = add i64 %conv142, 0
  %cmp144 = icmp ult i64 %add143, 128
  br i1 %cmp144, label %land.lhs.true.146, label %cond.false.155

land.lhs.true.146:                                ; preds = %cond.false.141, %cond.true.137
  %84 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %ascii_compatible_p147 = getelementptr inbounds %struct.charset, %struct.charset* %84, i32 0, i32 5
  %bf.load148 = load i8, i8* %ascii_compatible_p147, align 8
  %bf.lshr149 = lshr i8 %bf.load148, 2
  %bf.clear150 = and i8 %bf.lshr149, 1
  %bf.cast151 = trunc i8 %bf.clear150 to i1
  br i1 %bf.cast151, label %cond.true.153, label %cond.false.155

cond.true.153:                                    ; preds = %land.lhs.true.146
  %85 = load i32, i32* %this_code, align 4
  %conv154 = zext i32 %85 to i64
  br label %cond.end.237

cond.false.155:                                   ; preds = %land.lhs.true.146, %cond.false.141, %cond.true.137
  %86 = load i32, i32* %this_code, align 4
  %87 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %min_code156 = getelementptr inbounds %struct.charset, %struct.charset* %87, i32 0, i32 10
  %88 = load i32, i32* %min_code156, align 4
  %cmp157 = icmp ult i32 %86, %88
  br i1 %cmp157, label %cond.true.163, label %lor.lhs.false.159

lor.lhs.false.159:                                ; preds = %cond.false.155
  %89 = load i32, i32* %this_code, align 4
  %90 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %max_code160 = getelementptr inbounds %struct.charset, %struct.charset* %90, i32 0, i32 11
  %91 = load i32, i32* %max_code160, align 4
  %cmp161 = icmp ugt i32 %89, %91
  br i1 %cmp161, label %cond.true.163, label %cond.false.164

cond.true.163:                                    ; preds = %lor.lhs.false.159, %cond.false.155
  br label %cond.end.235

cond.false.164:                                   ; preds = %lor.lhs.false.159
  %92 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %unified_p165 = getelementptr inbounds %struct.charset, %struct.charset* %92, i32 0, i32 5
  %bf.load166 = load i8, i8* %unified_p165, align 8
  %bf.lshr167 = lshr i8 %bf.load166, 5
  %bf.clear168 = and i8 %bf.lshr167, 1
  %bf.cast169 = trunc i8 %bf.clear168 to i1
  br i1 %bf.cast169, label %cond.true.171, label %cond.false.174

cond.true.171:                                    ; preds = %cond.false.164
  %93 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %94 = load i32, i32* %this_code, align 4
  %call172 = call i32 @decode_char(%struct.charset* %93, i32 %94)
  %conv173 = sext i32 %call172 to i64
  br label %cond.end.233

cond.false.174:                                   ; preds = %cond.false.164
  %95 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %method175 = getelementptr inbounds %struct.charset, %struct.charset* %95, i32 0, i32 9
  %96 = load i32, i32* %method175, align 4
  %cmp176 = icmp eq i32 %96, 0
  br i1 %cmp176, label %cond.true.178, label %cond.false.194

cond.true.178:                                    ; preds = %cond.false.174
  %97 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_linear_p179 = getelementptr inbounds %struct.charset, %struct.charset* %97, i32 0, i32 5
  %bf.load180 = load i8, i8* %code_linear_p179, align 8
  %bf.clear181 = and i8 %bf.load180, 1
  %bf.cast182 = trunc i8 %bf.clear181 to i1
  br i1 %bf.cast182, label %cond.true.184, label %cond.false.189

cond.true.184:                                    ; preds = %cond.true.178
  %98 = load i32, i32* %this_code, align 4
  %99 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %min_code185 = getelementptr inbounds %struct.charset, %struct.charset* %99, i32 0, i32 10
  %100 = load i32, i32* %min_code185, align 4
  %sub186 = sub i32 %98, %100
  %101 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_offset187 = getelementptr inbounds %struct.charset, %struct.charset* %101, i32 0, i32 17
  %102 = load i32, i32* %code_offset187, align 4
  %add188 = add nsw i32 %sub186, %102
  br label %cond.end.191

cond.false.189:                                   ; preds = %cond.true.178
  %103 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %104 = load i32, i32* %this_code, align 4
  %call190 = call i32 @decode_char(%struct.charset* %103, i32 %104)
  br label %cond.end.191

cond.end.191:                                     ; preds = %cond.false.189, %cond.true.184
  %cond192 = phi i32 [ %add188, %cond.true.184 ], [ %call190, %cond.false.189 ]
  %conv193 = sext i32 %cond192 to i64
  br label %cond.end.231

cond.false.194:                                   ; preds = %cond.false.174
  %105 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %method195 = getelementptr inbounds %struct.charset, %struct.charset* %105, i32 0, i32 9
  %106 = load i32, i32* %method195, align 4
  %cmp196 = icmp eq i32 %106, 1
  br i1 %cmp196, label %cond.true.198, label %cond.false.226

cond.true.198:                                    ; preds = %cond.false.194
  %107 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_linear_p199 = getelementptr inbounds %struct.charset, %struct.charset* %107, i32 0, i32 5
  %bf.load200 = load i8, i8* %code_linear_p199, align 8
  %bf.clear201 = and i8 %bf.load200, 1
  %bf.cast202 = trunc i8 %bf.clear201 to i1
  br i1 %bf.cast202, label %land.lhs.true.204, label %cond.false.221

land.lhs.true.204:                                ; preds = %cond.true.198
  %108 = load i64, i64* @Vcharset_hash_table, align 8
  %call205 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %108)
  %109 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %hash_index206 = getelementptr inbounds %struct.charset, %struct.charset* %109, i32 0, i32 1
  %110 = load i64, i64* %hash_index206, align 8
  %call207 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call205, i64 %110)
  %call208 = call i64 @AREF(i64 %call207, i64 4)
  %call209 = call zeroext i1 @VECTORP(i64 %call208)
  br i1 %call209, label %cond.true.211, label %cond.false.221

cond.true.211:                                    ; preds = %land.lhs.true.204
  %111 = load i64, i64* @Vcharset_hash_table, align 8
  %call212 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %111)
  %112 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %hash_index213 = getelementptr inbounds %struct.charset, %struct.charset* %112, i32 0, i32 1
  %113 = load i64, i64* %hash_index213, align 8
  %call214 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call212, i64 %113)
  %call215 = call i64 @AREF(i64 %call214, i64 4)
  %114 = load i32, i32* %this_code, align 4
  %115 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %min_code216 = getelementptr inbounds %struct.charset, %struct.charset* %115, i32 0, i32 10
  %116 = load i32, i32* %min_code216, align 4
  %sub217 = sub i32 %114, %116
  %conv218 = zext i32 %sub217 to i64
  %call219 = call i64 @AREF(i64 %call215, i64 %conv218)
  %shr220 = ashr i64 %call219, 2
  br label %cond.end.224

cond.false.221:                                   ; preds = %land.lhs.true.204, %cond.true.198
  %117 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %118 = load i32, i32* %this_code, align 4
  %call222 = call i32 @decode_char(%struct.charset* %117, i32 %118)
  %conv223 = sext i32 %call222 to i64
  br label %cond.end.224

cond.end.224:                                     ; preds = %cond.false.221, %cond.true.211
  %cond225 = phi i64 [ %shr220, %cond.true.211 ], [ %conv223, %cond.false.221 ]
  br label %cond.end.229

cond.false.226:                                   ; preds = %cond.false.194
  %119 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %120 = load i32, i32* %this_code, align 4
  %call227 = call i32 @decode_char(%struct.charset* %119, i32 %120)
  %conv228 = sext i32 %call227 to i64
  br label %cond.end.229

cond.end.229:                                     ; preds = %cond.false.226, %cond.end.224
  %cond230 = phi i64 [ %cond225, %cond.end.224 ], [ %conv228, %cond.false.226 ]
  br label %cond.end.231

cond.end.231:                                     ; preds = %cond.end.229, %cond.end.191
  %cond232 = phi i64 [ %conv193, %cond.end.191 ], [ %cond230, %cond.end.229 ]
  br label %cond.end.233

cond.end.233:                                     ; preds = %cond.end.231, %cond.true.171
  %cond234 = phi i64 [ %conv173, %cond.true.171 ], [ %cond232, %cond.end.231 ]
  br label %cond.end.235

cond.end.235:                                     ; preds = %cond.end.233, %cond.true.163
  %cond236 = phi i64 [ -1, %cond.true.163 ], [ %cond234, %cond.end.233 ]
  br label %cond.end.237

cond.end.237:                                     ; preds = %cond.end.235, %cond.true.153
  %cond238 = phi i64 [ %conv154, %cond.true.153 ], [ %cond236, %cond.end.235 ]
  %conv239 = trunc i64 %cond238 to i32
  store i32 %conv239, i32* %c, align 4
  %cmp240 = icmp sge i32 %conv239, 0
  br i1 %cmp240, label %if.then.242, label %if.end.243

if.then.242:                                      ; preds = %cond.end.237
  br label %for.end

if.end.243:                                       ; preds = %cond.end.237
  br label %for.inc

for.inc:                                          ; preds = %if.end.243
  %121 = load i64, i64* %parents, align 8
  %sub244 = sub nsw i64 %121, 3
  %122 = inttoptr i64 %sub244 to i8*
  %123 = bitcast i8* %122 to %struct.Lisp_Cons*
  %u245 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %123, i32 0, i32 1
  %cdr246 = bitcast %union.anon* %u245 to i64*
  %124 = load i64, i64* %cdr246, align 8
  store i64 %124, i64* %parents, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.242, %for.cond
  br label %if.end.370

if.else.247:                                      ; preds = %if.else.113
  %125 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_linear_p248 = getelementptr inbounds %struct.charset, %struct.charset* %125, i32 0, i32 5
  %bf.load249 = load i8, i8* %code_linear_p248, align 8
  %bf.clear250 = and i8 %bf.load249, 1
  %bf.cast251 = trunc i8 %bf.clear250 to i1
  br i1 %bf.cast251, label %cond.true.253, label %cond.false.256

cond.true.253:                                    ; preds = %if.else.247
  %126 = load i32, i32* %code.addr, align 4
  %127 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %min_code254 = getelementptr inbounds %struct.charset, %struct.charset* %127, i32 0, i32 10
  %128 = load i32, i32* %min_code254, align 4
  %sub255 = sub i32 %126, %128
  br label %cond.end.319

cond.false.256:                                   ; preds = %if.else.247
  %129 = load i32, i32* %code.addr, align 4
  %shr257 = lshr i32 %129, 24
  %idxprom = zext i32 %shr257 to i64
  %130 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space_mask = getelementptr inbounds %struct.charset, %struct.charset* %130, i32 0, i32 4
  %131 = load i8*, i8** %code_space_mask, align 8
  %arrayidx = getelementptr inbounds i8, i8* %131, i64 %idxprom
  %132 = load i8, i8* %arrayidx, align 1
  %conv258 = zext i8 %132 to i32
  %and259 = and i32 %conv258, 8
  %tobool = icmp ne i32 %and259, 0
  br i1 %tobool, label %land.lhs.true.260, label %cond.false.316

land.lhs.true.260:                                ; preds = %cond.false.256
  %133 = load i32, i32* %code.addr, align 4
  %shr261 = lshr i32 %133, 16
  %and262 = and i32 %shr261, 255
  %idxprom263 = zext i32 %and262 to i64
  %134 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space_mask264 = getelementptr inbounds %struct.charset, %struct.charset* %134, i32 0, i32 4
  %135 = load i8*, i8** %code_space_mask264, align 8
  %arrayidx265 = getelementptr inbounds i8, i8* %135, i64 %idxprom263
  %136 = load i8, i8* %arrayidx265, align 1
  %conv266 = zext i8 %136 to i32
  %and267 = and i32 %conv266, 4
  %tobool268 = icmp ne i32 %and267, 0
  br i1 %tobool268, label %land.lhs.true.269, label %cond.false.316

land.lhs.true.269:                                ; preds = %land.lhs.true.260
  %137 = load i32, i32* %code.addr, align 4
  %shr270 = lshr i32 %137, 8
  %and271 = and i32 %shr270, 255
  %idxprom272 = zext i32 %and271 to i64
  %138 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space_mask273 = getelementptr inbounds %struct.charset, %struct.charset* %138, i32 0, i32 4
  %139 = load i8*, i8** %code_space_mask273, align 8
  %arrayidx274 = getelementptr inbounds i8, i8* %139, i64 %idxprom272
  %140 = load i8, i8* %arrayidx274, align 1
  %conv275 = zext i8 %140 to i32
  %and276 = and i32 %conv275, 2
  %tobool277 = icmp ne i32 %and276, 0
  br i1 %tobool277, label %land.lhs.true.278, label %cond.false.316

land.lhs.true.278:                                ; preds = %land.lhs.true.269
  %141 = load i32, i32* %code.addr, align 4
  %and279 = and i32 %141, 255
  %idxprom280 = zext i32 %and279 to i64
  %142 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space_mask281 = getelementptr inbounds %struct.charset, %struct.charset* %142, i32 0, i32 4
  %143 = load i8*, i8** %code_space_mask281, align 8
  %arrayidx282 = getelementptr inbounds i8, i8* %143, i64 %idxprom280
  %144 = load i8, i8* %arrayidx282, align 1
  %conv283 = zext i8 %144 to i32
  %and284 = and i32 %conv283, 1
  %tobool285 = icmp ne i32 %and284, 0
  br i1 %tobool285, label %cond.true.286, label %cond.false.316

cond.true.286:                                    ; preds = %land.lhs.true.278
  %145 = load i32, i32* %code.addr, align 4
  %shr287 = lshr i32 %145, 24
  %146 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space = getelementptr inbounds %struct.charset, %struct.charset* %146, i32 0, i32 3
  %arrayidx288 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space, i32 0, i64 12
  %147 = load i32, i32* %arrayidx288, align 4
  %sub289 = sub i32 %shr287, %147
  %148 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space290 = getelementptr inbounds %struct.charset, %struct.charset* %148, i32 0, i32 3
  %arrayidx291 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space290, i32 0, i64 11
  %149 = load i32, i32* %arrayidx291, align 4
  %mul = mul i32 %sub289, %149
  %150 = load i32, i32* %code.addr, align 4
  %shr292 = lshr i32 %150, 16
  %and293 = and i32 %shr292, 255
  %151 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space294 = getelementptr inbounds %struct.charset, %struct.charset* %151, i32 0, i32 3
  %arrayidx295 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space294, i32 0, i64 8
  %152 = load i32, i32* %arrayidx295, align 4
  %sub296 = sub i32 %and293, %152
  %153 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space297 = getelementptr inbounds %struct.charset, %struct.charset* %153, i32 0, i32 3
  %arrayidx298 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space297, i32 0, i64 7
  %154 = load i32, i32* %arrayidx298, align 4
  %mul299 = mul i32 %sub296, %154
  %add300 = add i32 %mul, %mul299
  %155 = load i32, i32* %code.addr, align 4
  %shr301 = lshr i32 %155, 8
  %and302 = and i32 %shr301, 255
  %156 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space303 = getelementptr inbounds %struct.charset, %struct.charset* %156, i32 0, i32 3
  %arrayidx304 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space303, i32 0, i64 4
  %157 = load i32, i32* %arrayidx304, align 4
  %sub305 = sub i32 %and302, %157
  %158 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space306 = getelementptr inbounds %struct.charset, %struct.charset* %158, i32 0, i32 3
  %arrayidx307 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space306, i32 0, i64 3
  %159 = load i32, i32* %arrayidx307, align 4
  %mul308 = mul i32 %sub305, %159
  %add309 = add i32 %add300, %mul308
  %160 = load i32, i32* %code.addr, align 4
  %and310 = and i32 %160, 255
  %161 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space311 = getelementptr inbounds %struct.charset, %struct.charset* %161, i32 0, i32 3
  %arrayidx312 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space311, i32 0, i64 0
  %162 = load i32, i32* %arrayidx312, align 4
  %sub313 = sub i32 %and310, %162
  %add314 = add i32 %add309, %sub313
  %163 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %char_index_offset = getelementptr inbounds %struct.charset, %struct.charset* %163, i32 0, i32 12
  %164 = load i32, i32* %char_index_offset, align 4
  %sub315 = sub i32 %add314, %164
  br label %cond.end.317

cond.false.316:                                   ; preds = %land.lhs.true.278, %land.lhs.true.269, %land.lhs.true.260, %cond.false.256
  br label %cond.end.317

cond.end.317:                                     ; preds = %cond.false.316, %cond.true.286
  %cond318 = phi i32 [ %sub315, %cond.true.286 ], [ -1, %cond.false.316 ]
  br label %cond.end.319

cond.end.319:                                     ; preds = %cond.end.317, %cond.true.253
  %cond320 = phi i32 [ %sub255, %cond.true.253 ], [ %cond318, %cond.end.317 ]
  store i32 %cond320, i32* %char_index, align 4
  %165 = load i32, i32* %char_index, align 4
  %cmp321 = icmp slt i32 %165, 0
  br i1 %cmp321, label %if.then.323, label %if.end.324

if.then.323:                                      ; preds = %cond.end.319
  store i32 -1, i32* %retval
  br label %return

if.end.324:                                       ; preds = %cond.end.319
  %166 = load i32, i32* %method, align 4
  %cmp325 = icmp eq i32 %166, 1
  br i1 %cmp325, label %if.then.327, label %if.else.350

if.then.327:                                      ; preds = %if.end.324
  %167 = load i64, i64* @Vcharset_hash_table, align 8
  %call328 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %167)
  %168 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %hash_index329 = getelementptr inbounds %struct.charset, %struct.charset* %168, i32 0, i32 1
  %169 = load i64, i64* %hash_index329, align 8
  %call330 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call328, i64 %169)
  %call331 = call i64 @AREF(i64 %call330, i64 4)
  store i64 %call331, i64* %decoder, align 8
  %170 = load i64, i64* %decoder, align 8
  %call332 = call zeroext i1 @VECTORP(i64 %170)
  br i1 %call332, label %if.end.338, label %if.then.333

if.then.333:                                      ; preds = %if.then.327
  %171 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  call void @load_charset(%struct.charset* %171, i32 1)
  %172 = load i64, i64* @Vcharset_hash_table, align 8
  %call334 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %172)
  %173 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %hash_index335 = getelementptr inbounds %struct.charset, %struct.charset* %173, i32 0, i32 1
  %174 = load i64, i64* %hash_index335, align 8
  %call336 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call334, i64 %174)
  %call337 = call i64 @AREF(i64 %call336, i64 4)
  store i64 %call337, i64* %decoder, align 8
  br label %if.end.338

if.end.338:                                       ; preds = %if.then.333, %if.then.327
  %175 = load i64, i64* %decoder, align 8
  %call339 = call zeroext i1 @VECTORP(i64 %175)
  br i1 %call339, label %if.then.340, label %if.else.345

if.then.340:                                      ; preds = %if.end.338
  %176 = load i64, i64* %decoder, align 8
  %177 = load i32, i32* %char_index, align 4
  %conv341 = sext i32 %177 to i64
  %call342 = call i64 @AREF(i64 %176, i64 %conv341)
  %shr343 = ashr i64 %call342, 2
  %conv344 = trunc i64 %shr343 to i32
  store i32 %conv344, i32* %c, align 4
  br label %if.end.349

if.else.345:                                      ; preds = %if.end.338
  %178 = load i32, i32* %char_index, align 4
  %idxprom346 = sext i32 %178 to i64
  %179 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %table = getelementptr inbounds %struct.anon, %struct.anon* %179, i32 0, i32 5
  %decoder347 = bitcast %union.anon.0* %table to [65536 x i32]*
  %arrayidx348 = getelementptr inbounds [65536 x i32], [65536 x i32]* %decoder347, i32 0, i64 %idxprom346
  %180 = load i32, i32* %arrayidx348, align 4
  store i32 %180, i32* %c, align 4
  br label %if.end.349

if.end.349:                                       ; preds = %if.else.345, %if.then.340
  br label %if.end.369

if.else.350:                                      ; preds = %if.end.324
  %181 = load i32, i32* %char_index, align 4
  %182 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_offset351 = getelementptr inbounds %struct.charset, %struct.charset* %182, i32 0, i32 17
  %183 = load i32, i32* %code_offset351, align 4
  %add352 = add nsw i32 %181, %183
  store i32 %add352, i32* %c, align 4
  %184 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %unified_p353 = getelementptr inbounds %struct.charset, %struct.charset* %184, i32 0, i32 5
  %bf.load354 = load i8, i8* %unified_p353, align 8
  %bf.lshr355 = lshr i8 %bf.load354, 5
  %bf.clear356 = and i8 %bf.lshr355, 1
  %bf.cast357 = trunc i8 %bf.clear356 to i1
  br i1 %bf.cast357, label %land.lhs.true.359, label %if.end.368

land.lhs.true.359:                                ; preds = %if.else.350
  %185 = load i32, i32* %c, align 4
  %cmp360 = icmp slt i32 1114111, %185
  br i1 %cmp360, label %land.lhs.true.362, label %if.end.368

land.lhs.true.362:                                ; preds = %land.lhs.true.359
  %186 = load i32, i32* %c, align 4
  %cmp363 = icmp sle i32 %186, 4194175
  br i1 %cmp363, label %if.then.365, label %if.end.368

if.then.365:                                      ; preds = %land.lhs.true.362
  %187 = load i64, i64* @Vchar_unify_table, align 8
  %188 = load i32, i32* %c, align 4
  %call366 = call i64 @CHAR_TABLE_REF(i64 %187, i32 %188)
  store i64 %call366, i64* %val, align 8
  %189 = load i32, i32* %c, align 4
  %190 = load i64, i64* %val, align 8
  %call367 = call i32 @maybe_unify_char(i32 %189, i64 %190)
  store i32 %call367, i32* %c, align 4
  br label %if.end.368

if.end.368:                                       ; preds = %if.then.365, %land.lhs.true.362, %land.lhs.true.359, %if.else.350
  br label %if.end.369

if.end.369:                                       ; preds = %if.end.368, %if.end.349
  br label %if.end.370

if.end.370:                                       ; preds = %if.end.369, %for.end
  br label %if.end.371

if.end.371:                                       ; preds = %if.end.370, %if.end.112
  %191 = load i32, i32* %c, align 4
  store i32 %191, i32* %retval
  br label %return

return:                                           ; preds = %if.end.371, %if.then.323, %if.then
  %192 = load i32, i32* %retval
  ret i32 %192
}

; Function Attrs: nounwind uwtable
define i64 @Fget_unused_iso_final_char(i64 %dimension, i64 %chars) #0 {
entry:
  %retval = alloca i64, align 8
  %dimension.addr = alloca i64, align 8
  %chars.addr = alloca i64, align 8
  %chars_flag = alloca i8, align 1
  %final_char = alloca i32, align 4
  store i64 %dimension, i64* %dimension.addr, align 8
  store i64 %chars, i64* %chars.addr, align 8
  %0 = load i64, i64* %dimension.addr, align 8
  %1 = load i64, i64* %chars.addr, align 8
  %call = call zeroext i1 @check_iso_charset_parameter(i64 %0, i64 %1, i64 194)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %chars_flag, align 1
  store i32 48, i32* %final_char, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %final_char, align 4
  %cmp = icmp sle i32 %2, 63
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %final_char, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8, i8* %chars_flag, align 1
  %tobool = trunc i8 %4 to i1
  %idxprom1 = zext i1 %tobool to i64
  %5 = load i64, i64* %dimension.addr, align 8
  %shr = ashr i64 %5, 2
  %sub = sub nsw i64 %shr, 1
  %arrayidx = getelementptr inbounds [3 x [2 x [128 x i32]]], [3 x [2 x [128 x i32]]]* @iso_charset_table, i32 0, i64 %sub
  %arrayidx2 = getelementptr inbounds [2 x [128 x i32]], [2 x [128 x i32]]* %arrayidx, i32 0, i64 %idxprom1
  %arrayidx3 = getelementptr inbounds [128 x i32], [128 x i32]* %arrayidx2, i32 0, i64 %idxprom
  %6 = load i32, i32* %arrayidx3, align 4
  %cmp4 = icmp slt i32 %6, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %final_char, align 4
  %conv = sext i32 %7 to i64
  %shl = shl i64 %conv, 2
  %add = add i64 %shl, 2
  store i64 %add, i64* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %final_char, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %final_char, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call5, i64* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %9 = load i64, i64* %retval
  ret i64 %9
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @check_iso_charset_parameter(i64 %dimension, i64 %chars, i64 %final_char) #0 {
entry:
  %dimension.addr = alloca i64, align 8
  %chars.addr = alloca i64, align 8
  %final_char.addr = alloca i64, align 8
  %chars_flag = alloca i8, align 1
  %final_ch = alloca i32, align 4
  store i64 %dimension, i64* %dimension.addr, align 8
  store i64 %chars, i64* %chars.addr, align 8
  store i64 %final_char, i64* %final_char.addr, align 8
  %0 = load i64, i64* %dimension.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %and1 = and i32 %conv, -5
  %cmp = icmp eq i32 %and1, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 559)
  %1 = load i64, i64* %dimension.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call, i64 %1) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i64, i64* %chars.addr, align 8
  %and3 = and i64 %4, 7
  %conv4 = trunc i64 %and3 to i32
  %and5 = and i32 %conv4, -5
  %cmp6 = icmp eq i32 %and5, 2
  br i1 %cmp6, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %cond.end
  br label %cond.end.11

cond.false.9:                                     ; preds = %cond.end
  %call10 = call i64 @builtin_lisp_symbol(i32 559)
  %5 = load i64, i64* %chars.addr, align 8
  %6 = call i64 @wrong_type_argument(i64 %call10, i64 %5) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end.11

cond.end.11:                                      ; preds = %7, %cond.true.8
  %8 = load i64, i64* %final_char.addr, align 8
  %call12 = call zeroext i1 @NATNUMP(i64 %8)
  br i1 %call12, label %land.lhs.true, label %cond.false.17

land.lhs.true:                                    ; preds = %cond.end.11
  %9 = load i64, i64* %final_char.addr, align 8
  %shr = ashr i64 %9, 2
  %cmp14 = icmp sle i64 %shr, 4194303
  br i1 %cmp14, label %cond.true.16, label %cond.false.17

cond.true.16:                                     ; preds = %land.lhs.true
  br label %cond.end.19

cond.false.17:                                    ; preds = %land.lhs.true, %cond.end.11
  %call18 = call i64 @builtin_lisp_symbol(i32 260)
  %10 = load i64, i64* %final_char.addr, align 8
  %11 = call i64 @wrong_type_argument(i64 %call18, i64 %10) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end.19

cond.end.19:                                      ; preds = %12, %cond.true.16
  %13 = load i64, i64* %dimension.addr, align 8
  %shr20 = ashr i64 %13, 2
  %cmp21 = icmp sle i64 1, %shr20
  br i1 %cmp21, label %land.lhs.true.23, label %if.then

land.lhs.true.23:                                 ; preds = %cond.end.19
  %14 = load i64, i64* %dimension.addr, align 8
  %shr24 = ashr i64 %14, 2
  %cmp25 = icmp sle i64 %shr24, 3
  br i1 %cmp25, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.23, %cond.end.19
  %15 = load i64, i64* %dimension.addr, align 8
  %shr27 = ashr i64 %15, 2
  call void (i8*, ...) @error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.30, i32 0, i32 0), i64 %shr27) #7
  unreachable

if.end:                                           ; preds = %land.lhs.true.23
  %16 = load i64, i64* %chars.addr, align 8
  %shr28 = ashr i64 %16, 2
  %cmp29 = icmp eq i64 %shr28, 96
  %frombool = zext i1 %cmp29 to i8
  store i8 %frombool, i8* %chars_flag, align 1
  %17 = load i8, i8* %chars_flag, align 1
  %tobool = trunc i8 %17 to i1
  br i1 %tobool, label %if.end.37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %18 = load i64, i64* %chars.addr, align 8
  %shr32 = ashr i64 %18, 2
  %cmp33 = icmp eq i64 %shr32, 94
  br i1 %cmp33, label %if.end.37, label %if.then.35

if.then.35:                                       ; preds = %lor.lhs.false
  %19 = load i64, i64* %chars.addr, align 8
  %shr36 = ashr i64 %19, 2
  call void (i8*, ...) @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.31, i32 0, i32 0), i64 %shr36) #7
  unreachable

if.end.37:                                        ; preds = %lor.lhs.false, %if.end
  %20 = load i64, i64* %final_char.addr, align 8
  %shr38 = ashr i64 %20, 2
  %conv39 = trunc i64 %shr38 to i32
  store i32 %conv39, i32* %final_ch, align 4
  %21 = load i32, i32* %final_ch, align 4
  %cmp40 = icmp sle i32 48, %21
  br i1 %cmp40, label %land.lhs.true.42, label %if.then.45

land.lhs.true.42:                                 ; preds = %if.end.37
  %22 = load i32, i32* %final_ch, align 4
  %cmp43 = icmp sle i32 %22, 126
  br i1 %cmp43, label %if.end.46, label %if.then.45

if.then.45:                                       ; preds = %land.lhs.true.42, %if.end.37
  %23 = load i32, i32* %final_ch, align 4
  call void (i8*, ...) @error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.32, i32 0, i32 0), i32 %23) #7
  unreachable

if.end.46:                                        ; preds = %land.lhs.true.42
  %24 = load i8, i8* %chars_flag, align 1
  %tobool47 = trunc i8 %24 to i1
  ret i1 %tobool47
}

; Function Attrs: nounwind uwtable
define i64 @Fdeclare_equiv_charset(i64 %dimension, i64 %chars, i64 %final_char, i64 %charset) #0 {
entry:
  %dimension.addr = alloca i64, align 8
  %chars.addr = alloca i64, align 8
  %final_char.addr = alloca i64, align 8
  %charset.addr = alloca i64, align 8
  %id = alloca i32, align 4
  %idx = alloca i64, align 8
  %chars_flag = alloca i8, align 1
  store i64 %dimension, i64* %dimension.addr, align 8
  store i64 %chars, i64* %chars.addr, align 8
  store i64 %final_char, i64* %final_char.addr, align 8
  store i64 %charset, i64* %charset.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %charset.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %do.body
  %1 = load i64, i64* @Vcharset_hash_table, align 8
  %call = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %1)
  %2 = load i64, i64* %charset.addr, align 8
  %call2 = call i64 @hash_lookup(%struct.Lisp_Hash_Table* %call, i64 %2, i64* null)
  store i64 %call2, i64* %idx, align 8
  %cmp3 = icmp slt i64 %call2, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.body
  %call5 = call i64 @builtin_lisp_symbol(i32 262)
  %3 = load i64, i64* %charset.addr, align 8
  %4 = call i64 @wrong_type_argument(i64 %call5, i64 %3) #7
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i64, i64* @Vcharset_hash_table, align 8
  %call6 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %5)
  %6 = load i64, i64* %idx, align 8
  %call7 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call6, i64 %6)
  %call8 = call i64 @AREF(i64 %call7, i64 0)
  %shr = ashr i64 %call8, 2
  %conv9 = trunc i64 %shr to i32
  store i32 %conv9, i32* %id, align 4
  br label %do.end

do.end:                                           ; preds = %if.end
  %7 = load i64, i64* %dimension.addr, align 8
  %8 = load i64, i64* %chars.addr, align 8
  %9 = load i64, i64* %final_char.addr, align 8
  %call10 = call zeroext i1 @check_iso_charset_parameter(i64 %7, i64 %8, i64 %9)
  %frombool = zext i1 %call10 to i8
  store i8 %frombool, i8* %chars_flag, align 1
  %10 = load i32, i32* %id, align 4
  %11 = load i64, i64* %final_char.addr, align 8
  %shr11 = ashr i64 %11, 2
  %12 = load i8, i8* %chars_flag, align 1
  %tobool = trunc i8 %12 to i1
  %idxprom = zext i1 %tobool to i64
  %13 = load i64, i64* %dimension.addr, align 8
  %shr12 = ashr i64 %13, 2
  %sub = sub nsw i64 %shr12, 1
  %arrayidx = getelementptr inbounds [3 x [2 x [128 x i32]]], [3 x [2 x [128 x i32]]]* @iso_charset_table, i32 0, i64 %sub
  %arrayidx13 = getelementptr inbounds [2 x [128 x i32]], [2 x [128 x i32]]* %arrayidx, i32 0, i64 %idxprom
  %arrayidx14 = getelementptr inbounds [128 x i32], [128 x i32]* %arrayidx13, i32 0, i64 %shr11
  store i32 %10, i32* %arrayidx14, align 4
  %call15 = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call15
}

; Function Attrs: nounwind uwtable
define i32 @string_xstring_p(i64 %string) #0 {
entry:
  %retval = alloca i32, align 4
  %string.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  %endp = alloca i8*, align 8
  %c = alloca i32, align 4
  store i64 %string, i64* %string.addr, align 8
  %0 = load i64, i64* %string.addr, align 8
  %call = call i8* @SDATA(i64 %0)
  store i8* %call, i8** %p, align 8
  %1 = load i8*, i8** %p, align 8
  %2 = load i64, i64* %string.addr, align 8
  %call1 = call i64 @SBYTES(i64 %2)
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %call1
  store i8* %add.ptr, i8** %endp, align 8
  %3 = load i64, i64* %string.addr, align 8
  %call2 = call i64 @SCHARS(i64 %3)
  %4 = load i64, i64* %string.addr, align 8
  %call3 = call i64 @SBYTES(i64 %4)
  %cmp = icmp eq i64 %call2, %call3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.53, %if.end
  %5 = load i8*, i8** %p, align 8
  %6 = load i8*, i8** %endp, align 8
  %cmp4 = icmp ult i8* %5, %6
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %and = and i32 %conv, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %while.body
  %9 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %10 = load i8, i8* %9, align 1
  %conv5 = zext i8 %10 to i32
  br label %cond.end.48

cond.false:                                       ; preds = %while.body
  %11 = load i8*, i8** %p, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %11, i64 0
  %12 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %12 to i32
  %and8 = and i32 %conv7, 32
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %cond.false.23, label %cond.true.10

cond.true.10:                                     ; preds = %cond.false
  %13 = load i8*, i8** %p, align 8
  %add.ptr11 = getelementptr inbounds i8, i8* %13, i64 2
  store i8* %add.ptr11, i8** %p, align 8
  %14 = load i8*, i8** %p, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %14, i64 -2
  %15 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %15 to i32
  %and14 = and i32 %conv13, 31
  %shl = shl i32 %and14, 6
  %16 = load i8*, i8** %p, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %16, i64 -1
  %17 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %17 to i32
  %and17 = and i32 %conv16, 63
  %or = or i32 %shl, %and17
  %18 = load i8*, i8** %p, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %18, i64 -2
  %19 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %19 to i32
  %cmp20 = icmp slt i32 %conv19, 194
  %cond = select i1 %cmp20, i32 4194176, i32 0
  %or22 = or i32 %or, %cond
  br label %cond.end.46

cond.false.23:                                    ; preds = %cond.false
  %20 = load i8*, i8** %p, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %20, i64 0
  %21 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %21 to i32
  %and26 = and i32 %conv25, 16
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %cond.false.43, label %cond.true.28

cond.true.28:                                     ; preds = %cond.false.23
  %22 = load i8*, i8** %p, align 8
  %add.ptr29 = getelementptr inbounds i8, i8* %22, i64 3
  store i8* %add.ptr29, i8** %p, align 8
  %23 = load i8*, i8** %p, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %23, i64 -3
  %24 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %24 to i32
  %and32 = and i32 %conv31, 15
  %shl33 = shl i32 %and32, 12
  %25 = load i8*, i8** %p, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %25, i64 -2
  %26 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %26 to i32
  %and36 = and i32 %conv35, 63
  %shl37 = shl i32 %and36, 6
  %or38 = or i32 %shl33, %shl37
  %27 = load i8*, i8** %p, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %27, i64 -1
  %28 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %28 to i32
  %and41 = and i32 %conv40, 63
  %or42 = or i32 %or38, %and41
  br label %cond.end

cond.false.43:                                    ; preds = %cond.false.23
  %29 = load i8*, i8** %p, align 8
  %call44 = call i32 @string_char(i8* %29, i8** %p, i32* null)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.43, %cond.true.28
  %cond45 = phi i32 [ %or42, %cond.true.28 ], [ %call44, %cond.false.43 ]
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.end, %cond.true.10
  %cond47 = phi i32 [ %or22, %cond.true.10 ], [ %cond45, %cond.end ]
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.end.46, %cond.true
  %cond49 = phi i32 [ %conv5, %cond.true ], [ %cond47, %cond.end.46 ]
  store i32 %cond49, i32* %c, align 4
  %30 = load i32, i32* %c, align 4
  %cmp50 = icmp sge i32 %30, 256
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %cond.end.48
  store i32 2, i32* %retval
  br label %return

if.end.53:                                        ; preds = %cond.end.48
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.52, %if.then
  %31 = load i32, i32* %retval
  ret i32 %31
}

declare i64 @SBYTES(i64) #1

declare i64 @SCHARS(i64) #1

declare i32 @string_char(i8*, i8**, i32*) #1

; Function Attrs: nounwind uwtable
define i64 @Ffind_charset_region(i64 %beg, i64 %end, i64 %table) #0 {
entry:
  %beg.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %table.addr = alloca i64, align 8
  %charsets = alloca i64, align 8
  %from = alloca i64, align 8
  %from_byte = alloca i64, align 8
  %to = alloca i64, align 8
  %stop = alloca i64, align 8
  %stop_byte = alloca i64, align 8
  %i = alloca i32, align 4
  %val = alloca i64, align 8
  %multibyte = alloca i8, align 1
  store i64 %beg, i64* %beg.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  store i64 %table, i64* %table.addr, align 8
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_ = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 39
  %1 = load i64, i64* %enable_multibyte_characters_, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %1, %call
  %lnot = xor i1 %cmp, true
  %frombool = zext i1 %lnot to i8
  store i8 %frombool, i8* %multibyte, align 1
  call void @validate_region(i64* %beg.addr, i64* %end.addr)
  %2 = load i64, i64* %beg.addr, align 8
  %shr = ashr i64 %2, 2
  store i64 %shr, i64* %from, align 8
  %3 = load i64, i64* %end.addr, align 8
  %shr1 = ashr i64 %3, 2
  store i64 %shr1, i64* %to, align 8
  store i64 %shr1, i64* %stop, align 8
  %4 = load i64, i64* %from, align 8
  %5 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %5, i32 0, i32 73
  %6 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %gpt = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %6, i32 0, i32 1
  %7 = load i64, i64* %gpt, align 8
  %cmp2 = icmp slt i64 %4, %7
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %8 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text3 = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 73
  %9 = load %struct.buffer_text*, %struct.buffer_text** %text3, align 8
  %gpt4 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %9, i32 0, i32 1
  %10 = load i64, i64* %gpt4, align 8
  %11 = load i64, i64* %to, align 8
  %cmp5 = icmp slt i64 %10, %11
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text6 = getelementptr inbounds %struct.buffer, %struct.buffer* %12, i32 0, i32 73
  %13 = load %struct.buffer_text*, %struct.buffer_text** %text6, align 8
  %gpt7 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %13, i32 0, i32 1
  %14 = load i64, i64* %gpt7, align 8
  store i64 %14, i64* %stop, align 8
  %15 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text8 = getelementptr inbounds %struct.buffer, %struct.buffer* %15, i32 0, i32 73
  %16 = load %struct.buffer_text*, %struct.buffer_text** %text8, align 8
  %gpt_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %16, i32 0, i32 3
  %17 = load i64, i64* %gpt_byte, align 8
  store i64 %17, i64* %stop_byte, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %18 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %19 = load i64, i64* %stop, align 8
  %call9 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %18, i64 %19)
  store i64 %call9, i64* %stop_byte, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %20 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %21 = load i64, i64* %from, align 8
  %call10 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %20, i64 %21)
  store i64 %call10, i64* %from_byte, align 8
  %22 = load i32, i32* @charset_table_used, align 4
  %conv = sext i32 %22 to i64
  %shl = shl i64 %conv, 2
  %add = add i64 %shl, 2
  %call11 = call i64 @builtin_lisp_symbol(i32 0)
  %call12 = call i64 @Fmake_vector(i64 %add, i64 %call11)
  store i64 %call12, i64* %charsets, align 8
  br label %while.body

while.body:                                       ; preds = %if.end, %if.end.28
  %23 = load i64, i64* %from_byte, align 8
  %24 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text13 = getelementptr inbounds %struct.buffer, %struct.buffer* %24, i32 0, i32 73
  %25 = load %struct.buffer_text*, %struct.buffer_text** %text13, align 8
  %gpt_byte14 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %25, i32 0, i32 3
  %26 = load i64, i64* %gpt_byte14, align 8
  %cmp15 = icmp sge i64 %23, %26
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %27 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text17 = getelementptr inbounds %struct.buffer, %struct.buffer* %27, i32 0, i32 73
  %28 = load %struct.buffer_text*, %struct.buffer_text** %text17, align 8
  %gap_size = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %28, i32 0, i32 5
  %29 = load i64, i64* %gap_size, align 8
  br label %cond.end

cond.false:                                       ; preds = %while.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %29, %cond.true ], [ 0, %cond.false ]
  %30 = load i64, i64* %from_byte, align 8
  %add18 = add nsw i64 %cond, %30
  %31 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text19 = getelementptr inbounds %struct.buffer, %struct.buffer* %31, i32 0, i32 73
  %32 = load %struct.buffer_text*, %struct.buffer_text** %text19, align 8
  %beg20 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %32, i32 0, i32 0
  %33 = load i8*, i8** %beg20, align 8
  %add.ptr = getelementptr inbounds i8, i8* %33, i64 %add18
  %add.ptr21 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %34 = load i64, i64* %stop, align 8
  %35 = load i64, i64* %from, align 8
  %sub = sub nsw i64 %34, %35
  %36 = load i64, i64* %stop_byte, align 8
  %37 = load i64, i64* %from_byte, align 8
  %sub22 = sub nsw i64 %36, %37
  %38 = load i64, i64* %charsets, align 8
  %39 = load i64, i64* %table.addr, align 8
  %40 = load i8, i8* %multibyte, align 1
  %tobool = trunc i8 %40 to i1
  call void @find_charsets_in_text(i8* %add.ptr21, i64 %sub, i64 %sub22, i64 %38, i64 %39, i1 zeroext %tobool)
  %41 = load i64, i64* %stop, align 8
  %42 = load i64, i64* %to, align 8
  %cmp23 = icmp slt i64 %41, %42
  br i1 %cmp23, label %if.then.25, label %if.else.27

if.then.25:                                       ; preds = %cond.end
  %43 = load i64, i64* %stop, align 8
  store i64 %43, i64* %from, align 8
  %44 = load i64, i64* %stop_byte, align 8
  store i64 %44, i64* %from_byte, align 8
  %45 = load i64, i64* %to, align 8
  store i64 %45, i64* %stop, align 8
  %46 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %47 = load i64, i64* %stop, align 8
  %call26 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %46, i64 %47)
  store i64 %call26, i64* %stop_byte, align 8
  br label %if.end.28

if.else.27:                                       ; preds = %cond.end
  br label %while.end

if.end.28:                                        ; preds = %if.then.25
  br label %while.body

while.end:                                        ; preds = %if.else.27
  %call29 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call29, i64* %val, align 8
  %48 = load i32, i32* @charset_table_used, align 4
  %sub30 = sub nsw i32 %48, 1
  store i32 %sub30, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %49 = load i32, i32* %i, align 4
  %cmp31 = icmp sge i32 %49, 0
  br i1 %cmp31, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %50 = load i64, i64* %charsets, align 8
  %51 = load i32, i32* %i, align 4
  %conv33 = sext i32 %51 to i64
  %call34 = call i64 @AREF(i64 %50, i64 %conv33)
  %call35 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp36 = icmp eq i64 %call34, %call35
  br i1 %cmp36, label %if.end.44, label %if.then.38

if.then.38:                                       ; preds = %for.body
  %52 = load i64, i64* @Vcharset_hash_table, align 8
  %call39 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %52)
  %53 = load %struct.charset*, %struct.charset** @charset_table, align 8
  %54 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %54 to i64
  %add.ptr40 = getelementptr inbounds %struct.charset, %struct.charset* %53, i64 %idx.ext
  %hash_index = getelementptr inbounds %struct.charset, %struct.charset* %add.ptr40, i32 0, i32 1
  %55 = load i64, i64* %hash_index, align 8
  %call41 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call39, i64 %55)
  %call42 = call i64 @AREF(i64 %call41, i64 1)
  %56 = load i64, i64* %val, align 8
  %call43 = call i64 @Fcons(i64 %call42, i64 %56)
  store i64 %call43, i64* %val, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.38, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.44
  %57 = load i32, i32* %i, align 4
  %dec = add nsw i32 %57, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %58 = load i64, i64* %val, align 8
  ret i64 %58
}

declare void @validate_region(i64*, i64*) #1

declare i64 @buf_charpos_to_bytepos(%struct.buffer*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @find_charsets_in_text(i8* %ptr, i64 %nchars, i64 %nbytes, i64 %charsets, i64 %table, i1 zeroext %multibyte) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %nchars.addr = alloca i64, align 8
  %nbytes.addr = alloca i64, align 8
  %charsets.addr = alloca i64, align 8
  %table.addr = alloca i64, align 8
  %multibyte.addr = alloca i8, align 1
  %pend = alloca i8*, align 8
  %c = alloca i32, align 4
  %c29 = alloca i32, align 4
  %charset = alloca %struct.charset*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %nchars, i64* %nchars.addr, align 8
  store i64 %nbytes, i64* %nbytes.addr, align 8
  store i64 %charsets, i64* %charsets.addr, align 8
  store i64 %table, i64* %table.addr, align 8
  %frombool = zext i1 %multibyte to i8
  store i8 %frombool, i8* %multibyte.addr, align 1
  %0 = load i8*, i8** %ptr.addr, align 8
  %1 = load i64, i64* %nbytes.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %1
  store i8* %add.ptr, i8** %pend, align 8
  %2 = load i64, i64* %nchars.addr, align 8
  %3 = load i64, i64* %nbytes.addr, align 8
  %cmp = icmp eq i64 %2, %3
  br i1 %cmp, label %if.then, label %if.else.24

if.then:                                          ; preds = %entry
  %4 = load i8, i8* %multibyte.addr, align 1
  %tobool = trunc i8 %4 to i1
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %5 = load i64, i64* %charsets.addr, align 8
  %6 = load i32, i32* @charset_ascii, align 4
  %conv = sext i32 %6 to i64
  %call = call i64 @builtin_lisp_symbol(i32 901)
  call void @ASET(i64 %5, i64 %conv, i64 %call)
  br label %if.end.23

if.else:                                          ; preds = %if.then
  br label %while.cond

while.cond:                                       ; preds = %if.end.22, %if.else
  %7 = load i8*, i8** %ptr.addr, align 8
  %8 = load i8*, i8** %pend, align 8
  %cmp2 = icmp ult i8* %7, %8
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i8*, i8** %ptr.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %ptr.addr, align 8
  %10 = load i8, i8* %9, align 1
  %conv4 = zext i8 %10 to i32
  store i32 %conv4, i32* %c, align 4
  %11 = load i64, i64* %table.addr, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp6 = icmp eq i64 %11, %call5
  br i1 %cmp6, label %if.end, label %if.then.8

if.then.8:                                        ; preds = %while.body
  %12 = load i64, i64* %table.addr, align 8
  %13 = load i32, i32* %c, align 4
  %call9 = call i32 @translate_char(i64 %12, i32 %13)
  store i32 %call9, i32* %c, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.8, %while.body
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %14 = load i32, i32* %c, align 4
  %add = add i32 %14, 0
  %cmp10 = icmp ult i32 %add, 128
  br i1 %cmp10, label %if.then.16, label %if.else.19

cond.false:                                       ; preds = %if.end
  %15 = load i32, i32* %c, align 4
  %conv12 = sext i32 %15 to i64
  %add13 = add i64 %conv12, 0
  %cmp14 = icmp ult i64 %add13, 128
  br i1 %cmp14, label %if.then.16, label %if.else.19

if.then.16:                                       ; preds = %cond.false, %cond.true
  %16 = load i64, i64* %charsets.addr, align 8
  %17 = load i32, i32* @charset_ascii, align 4
  %conv17 = sext i32 %17 to i64
  %call18 = call i64 @builtin_lisp_symbol(i32 901)
  call void @ASET(i64 %16, i64 %conv17, i64 %call18)
  br label %if.end.22

if.else.19:                                       ; preds = %cond.false, %cond.true
  %18 = load i64, i64* %charsets.addr, align 8
  %19 = load i32, i32* @charset_eight_bit, align 4
  %conv20 = sext i32 %19 to i64
  %call21 = call i64 @builtin_lisp_symbol(i32 901)
  call void @ASET(i64 %18, i64 %conv20, i64 %call21)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.19, %if.then.16
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.23

if.end.23:                                        ; preds = %while.end, %if.then.1
  br label %if.end.98

if.else.24:                                       ; preds = %entry
  br label %while.cond.25

while.cond.25:                                    ; preds = %cond.end.93, %if.else.24
  %20 = load i8*, i8** %ptr.addr, align 8
  %21 = load i8*, i8** %pend, align 8
  %cmp26 = icmp ult i8* %20, %21
  br i1 %cmp26, label %while.body.28, label %while.end.97

while.body.28:                                    ; preds = %while.cond.25
  %22 = load i8*, i8** %ptr.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %22, i64 0
  %23 = load i8, i8* %arrayidx, align 1
  %conv30 = zext i8 %23 to i32
  %and = and i32 %conv30, 128
  %tobool31 = icmp ne i32 %and, 0
  br i1 %tobool31, label %cond.false.35, label %cond.true.32

cond.true.32:                                     ; preds = %while.body.28
  %24 = load i8*, i8** %ptr.addr, align 8
  %incdec.ptr33 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr33, i8** %ptr.addr, align 8
  %25 = load i8, i8* %24, align 1
  %conv34 = zext i8 %25 to i32
  br label %cond.end.78

cond.false.35:                                    ; preds = %while.body.28
  %26 = load i8*, i8** %ptr.addr, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %26, i64 0
  %27 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %27 to i32
  %and38 = and i32 %conv37, 32
  %tobool39 = icmp ne i32 %and38, 0
  br i1 %tobool39, label %cond.false.53, label %cond.true.40

cond.true.40:                                     ; preds = %cond.false.35
  %28 = load i8*, i8** %ptr.addr, align 8
  %add.ptr41 = getelementptr inbounds i8, i8* %28, i64 2
  store i8* %add.ptr41, i8** %ptr.addr, align 8
  %29 = load i8*, i8** %ptr.addr, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %29, i64 -2
  %30 = load i8, i8* %arrayidx42, align 1
  %conv43 = zext i8 %30 to i32
  %and44 = and i32 %conv43, 31
  %shl = shl i32 %and44, 6
  %31 = load i8*, i8** %ptr.addr, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %31, i64 -1
  %32 = load i8, i8* %arrayidx45, align 1
  %conv46 = zext i8 %32 to i32
  %and47 = and i32 %conv46, 63
  %or = or i32 %shl, %and47
  %33 = load i8*, i8** %ptr.addr, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %33, i64 -2
  %34 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %34 to i32
  %cmp50 = icmp slt i32 %conv49, 194
  %cond = select i1 %cmp50, i32 4194176, i32 0
  %or52 = or i32 %or, %cond
  br label %cond.end.76

cond.false.53:                                    ; preds = %cond.false.35
  %35 = load i8*, i8** %ptr.addr, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %35, i64 0
  %36 = load i8, i8* %arrayidx54, align 1
  %conv55 = zext i8 %36 to i32
  %and56 = and i32 %conv55, 16
  %tobool57 = icmp ne i32 %and56, 0
  br i1 %tobool57, label %cond.false.73, label %cond.true.58

cond.true.58:                                     ; preds = %cond.false.53
  %37 = load i8*, i8** %ptr.addr, align 8
  %add.ptr59 = getelementptr inbounds i8, i8* %37, i64 3
  store i8* %add.ptr59, i8** %ptr.addr, align 8
  %38 = load i8*, i8** %ptr.addr, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %38, i64 -3
  %39 = load i8, i8* %arrayidx60, align 1
  %conv61 = zext i8 %39 to i32
  %and62 = and i32 %conv61, 15
  %shl63 = shl i32 %and62, 12
  %40 = load i8*, i8** %ptr.addr, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %40, i64 -2
  %41 = load i8, i8* %arrayidx64, align 1
  %conv65 = zext i8 %41 to i32
  %and66 = and i32 %conv65, 63
  %shl67 = shl i32 %and66, 6
  %or68 = or i32 %shl63, %shl67
  %42 = load i8*, i8** %ptr.addr, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %42, i64 -1
  %43 = load i8, i8* %arrayidx69, align 1
  %conv70 = zext i8 %43 to i32
  %and71 = and i32 %conv70, 63
  %or72 = or i32 %or68, %and71
  br label %cond.end

cond.false.73:                                    ; preds = %cond.false.53
  %44 = load i8*, i8** %ptr.addr, align 8
  %call74 = call i32 @string_char(i8* %44, i8** %ptr.addr, i32* null)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.73, %cond.true.58
  %cond75 = phi i32 [ %or72, %cond.true.58 ], [ %call74, %cond.false.73 ]
  br label %cond.end.76

cond.end.76:                                      ; preds = %cond.end, %cond.true.40
  %cond77 = phi i32 [ %or52, %cond.true.40 ], [ %cond75, %cond.end ]
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.end.76, %cond.true.32
  %cond79 = phi i32 [ %conv34, %cond.true.32 ], [ %cond77, %cond.end.76 ]
  store i32 %cond79, i32* %c29, align 4
  %45 = load i64, i64* %table.addr, align 8
  %call80 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp81 = icmp eq i64 %45, %call80
  br i1 %cmp81, label %if.end.85, label %if.then.83

if.then.83:                                       ; preds = %cond.end.78
  %46 = load i64, i64* %table.addr, align 8
  %47 = load i32, i32* %c29, align 4
  %call84 = call i32 @translate_char(i64 %46, i32 %47)
  store i32 %call84, i32* %c29, align 4
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.83, %cond.end.78
  %48 = load i32, i32* %c29, align 4
  %cmp86 = icmp slt i32 %48, 128
  br i1 %cmp86, label %cond.true.88, label %cond.false.90

cond.true.88:                                     ; preds = %if.end.85
  %49 = load %struct.charset*, %struct.charset** @charset_table, align 8
  %50 = load i32, i32* @charset_ascii, align 4
  %idx.ext = sext i32 %50 to i64
  %add.ptr89 = getelementptr inbounds %struct.charset, %struct.charset* %49, i64 %idx.ext
  br label %cond.end.93

cond.false.90:                                    ; preds = %if.end.85
  %51 = load i32, i32* %c29, align 4
  %call91 = call i64 @builtin_lisp_symbol(i32 0)
  %call92 = call %struct.charset* @char_charset(i32 %51, i64 %call91, i32* null)
  br label %cond.end.93

cond.end.93:                                      ; preds = %cond.false.90, %cond.true.88
  %cond94 = phi %struct.charset* [ %add.ptr89, %cond.true.88 ], [ %call92, %cond.false.90 ]
  store %struct.charset* %cond94, %struct.charset** %charset, align 8
  %52 = load i64, i64* %charsets.addr, align 8
  %53 = load %struct.charset*, %struct.charset** %charset, align 8
  %id = getelementptr inbounds %struct.charset, %struct.charset* %53, i32 0, i32 0
  %54 = load i32, i32* %id, align 4
  %conv95 = sext i32 %54 to i64
  %call96 = call i64 @builtin_lisp_symbol(i32 901)
  call void @ASET(i64 %52, i64 %conv95, i64 %call96)
  br label %while.cond.25

while.end.97:                                     ; preds = %while.cond.25
  br label %if.end.98

if.end.98:                                        ; preds = %while.end.97, %if.end.23
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @Ffind_charset_string(i64 %str, i64 %table) #0 {
entry:
  %str.addr = alloca i64, align 8
  %table.addr = alloca i64, align 8
  %charsets = alloca i64, align 8
  %i = alloca i32, align 4
  %val = alloca i64, align 8
  store i64 %str, i64* %str.addr, align 8
  store i64 %table, i64* %table.addr, align 8
  %0 = load i64, i64* %str.addr, align 8
  call void @CHECK_STRING(i64 %0)
  %1 = load i32, i32* @charset_table_used, align 4
  %conv = sext i32 %1 to i64
  %shl = shl i64 %conv, 2
  %add = add i64 %shl, 2
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %call1 = call i64 @Fmake_vector(i64 %add, i64 %call)
  store i64 %call1, i64* %charsets, align 8
  %2 = load i64, i64* %str.addr, align 8
  %call2 = call i8* @SDATA(i64 %2)
  %3 = load i64, i64* %str.addr, align 8
  %call3 = call i64 @SCHARS(i64 %3)
  %4 = load i64, i64* %str.addr, align 8
  %call4 = call i64 @SBYTES(i64 %4)
  %5 = load i64, i64* %charsets, align 8
  %6 = load i64, i64* %table.addr, align 8
  %7 = load i64, i64* %str.addr, align 8
  %call5 = call zeroext i1 @STRING_MULTIBYTE(i64 %7)
  call void @find_charsets_in_text(i8* %call2, i64 %call3, i64 %call4, i64 %5, i64 %6, i1 zeroext %call5)
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call6, i64* %val, align 8
  %8 = load i32, i32* @charset_table_used, align 4
  %sub = sub nsw i32 %8, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %9, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i64, i64* %charsets, align 8
  %11 = load i32, i32* %i, align 4
  %conv8 = sext i32 %11 to i64
  %call9 = call i64 @AREF(i64 %10, i64 %conv8)
  %call10 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp11 = icmp eq i64 %call9, %call10
  br i1 %cmp11, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %12 = load i64, i64* @Vcharset_hash_table, align 8
  %call13 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %12)
  %13 = load %struct.charset*, %struct.charset** @charset_table, align 8
  %14 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds %struct.charset, %struct.charset* %13, i64 %idx.ext
  %hash_index = getelementptr inbounds %struct.charset, %struct.charset* %add.ptr, i32 0, i32 1
  %15 = load i64, i64* %hash_index, align 8
  %call14 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call13, i64 %15)
  %call15 = call i64 @AREF(i64 %call14, i64 1)
  %16 = load i64, i64* %val, align 8
  %call16 = call i64 @Fcons(i64 %call15, i64 %16)
  store i64 %call16, i64* %val, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, i32* %i, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i64, i64* %val, align 8
  ret i64 %18
}

declare void @CHECK_STRING(i64) #1

declare zeroext i1 @STRING_MULTIBYTE(i64) #1

declare i64 @CHAR_TABLE_REF(i64, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @maybe_unify_char(i32 %c, i64 %val) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  %charset = alloca %struct.charset*, align 8
  %csid = alloca i32, align 4
  %idx = alloca i64, align 8
  %code_index = alloca i32, align 4
  %unified = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %and1 = and i32 %conv, -5
  %cmp = icmp eq i32 %and1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %val.addr, align 8
  %shr = ashr i64 %1, 2
  %conv3 = trunc i64 %shr to i32
  store i32 %conv3, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %val.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp4 = icmp eq i64 %2, %call
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %3 = load i32, i32* %c.addr, align 4
  store i32 %3, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.7
  br label %do.body.8

do.body.8:                                        ; preds = %do.body
  %4 = load i64, i64* %val.addr, align 8
  %and9 = and i64 %4, 7
  %conv10 = trunc i64 %and9 to i32
  %cmp11 = icmp eq i32 %conv10, 0
  br i1 %cmp11, label %lor.lhs.false, label %if.then.17

lor.lhs.false:                                    ; preds = %do.body.8
  %5 = load i64, i64* @Vcharset_hash_table, align 8
  %call13 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %5)
  %6 = load i64, i64* %val.addr, align 8
  %call14 = call i64 @hash_lookup(%struct.Lisp_Hash_Table* %call13, i64 %6, i64* null)
  store i64 %call14, i64* %idx, align 8
  %cmp15 = icmp slt i64 %call14, 0
  br i1 %cmp15, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %lor.lhs.false, %do.body.8
  %call18 = call i64 @builtin_lisp_symbol(i32 262)
  %7 = load i64, i64* %val.addr, align 8
  %8 = call i64 @wrong_type_argument(i64 %call18, i64 %7) #7
  unreachable

if.end.19:                                        ; preds = %lor.lhs.false
  %9 = load i64, i64* @Vcharset_hash_table, align 8
  %call20 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %9)
  %10 = load i64, i64* %idx, align 8
  %call21 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call20, i64 %10)
  %call22 = call i64 @AREF(i64 %call21, i64 0)
  %shr23 = ashr i64 %call22, 2
  %conv24 = trunc i64 %shr23 to i32
  store i32 %conv24, i32* %csid, align 4
  br label %do.end

do.end:                                           ; preds = %if.end.19
  %11 = load %struct.charset*, %struct.charset** @charset_table, align 8
  %12 = load i32, i32* %csid, align 4
  %idx.ext = sext i32 %12 to i64
  %add.ptr = getelementptr inbounds %struct.charset, %struct.charset* %11, i64 %idx.ext
  store %struct.charset* %add.ptr, %struct.charset** %charset, align 8
  br label %do.end.25

do.end.25:                                        ; preds = %do.end
  %13 = load %struct.charset*, %struct.charset** %charset, align 8
  call void @load_charset(%struct.charset* %13, i32 1)
  %14 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 453), align 1
  %tobool = trunc i8 %14 to i1
  br i1 %tobool, label %if.else, label %if.then.26

if.then.26:                                       ; preds = %do.end.25
  %15 = load i64, i64* @Vchar_unify_table, align 8
  %16 = load i32, i32* %c.addr, align 4
  %call27 = call i64 @CHAR_TABLE_REF(i64 %15, i32 %16)
  store i64 %call27, i64* %val.addr, align 8
  %17 = load i64, i64* %val.addr, align 8
  %call28 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp29 = icmp eq i64 %17, %call28
  br i1 %cmp29, label %if.end.34, label %if.then.31

if.then.31:                                       ; preds = %if.then.26
  %18 = load i64, i64* %val.addr, align 8
  %shr32 = ashr i64 %18, 2
  %conv33 = trunc i64 %shr32 to i32
  store i32 %conv33, i32* %c.addr, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.31, %if.then.26
  br label %if.end.39

if.else:                                          ; preds = %do.end.25
  %19 = load i32, i32* %c.addr, align 4
  %20 = load %struct.charset*, %struct.charset** %charset, align 8
  %code_offset = getelementptr inbounds %struct.charset, %struct.charset* %20, i32 0, i32 17
  %21 = load i32, i32* %code_offset, align 4
  %sub = sub nsw i32 %19, %21
  store i32 %sub, i32* %code_index, align 4
  %22 = load i32, i32* %code_index, align 4
  %idxprom = sext i32 %22 to i64
  %23 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %table = getelementptr inbounds %struct.anon, %struct.anon* %23, i32 0, i32 5
  %decoder = bitcast %union.anon.0* %table to [65536 x i32]*
  %arrayidx = getelementptr inbounds [65536 x i32], [65536 x i32]* %decoder, i32 0, i64 %idxprom
  %24 = load i32, i32* %arrayidx, align 4
  store i32 %24, i32* %unified, align 4
  %25 = load i32, i32* %unified, align 4
  %cmp35 = icmp sgt i32 %25, 0
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.else
  %26 = load i32, i32* %unified, align 4
  store i32 %26, i32* %c.addr, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.else
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.end.34
  %27 = load i32, i32* %c.addr, align 4
  store i32 %27, i32* %retval
  br label %return

return:                                           ; preds = %if.end.39, %if.then.6, %if.then
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define i32 @encode_char(%struct.charset* %charset, i32 %c) #0 {
entry:
  %retval = alloca i32, align 4
  %charset.addr = alloca %struct.charset*, align 8
  %c.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %method = alloca i32, align 4
  %deunifier = alloca i64, align 8
  %code_index = alloca i32, align 4
  %deunified = alloca i64, align 8
  %subset_info = alloca i64, align 8
  %this_charset = alloca %struct.charset*, align 8
  %parents = alloca i64, align 8
  %id = alloca i32, align 4
  %code_offset211 = alloca i32, align 4
  %this_charset217 = alloca %struct.charset*, align 8
  %encoder380 = alloca i64, align 8
  %val = alloca i64, align 8
  %code_index555 = alloca i32, align 4
  store %struct.charset* %charset, %struct.charset** %charset.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  %0 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %method1 = getelementptr inbounds %struct.charset, %struct.charset* %0, i32 0, i32 9
  %1 = load i32, i32* %method1, align 4
  store i32 %1, i32* %method, align 4
  %2 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %unified_p = getelementptr inbounds %struct.charset, %struct.charset* %2, i32 0, i32 5
  %bf.load = load i8, i8* %unified_p, align 8
  %bf.lshr = lshr i8 %bf.load, 5
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %if.then, label %if.end.57

if.then:                                          ; preds = %entry
  store i32 -1, i32* %code_index, align 4
  %3 = load i64, i64* @Vcharset_hash_table, align 8
  %call = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %3)
  %4 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %hash_index = getelementptr inbounds %struct.charset, %struct.charset* %4, i32 0, i32 1
  %5 = load i64, i64* %hash_index, align 8
  %call2 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call, i64 %5)
  %call3 = call i64 @AREF(i64 %call2, i64 9)
  store i64 %call3, i64* %deunifier, align 8
  %6 = load i64, i64* %deunifier, align 8
  %call4 = call zeroext i1 @CHAR_TABLE_P(i64 %6)
  br i1 %call4, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %if.then
  %7 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  call void @load_charset(%struct.charset* %7, i32 2)
  %8 = load i64, i64* @Vcharset_hash_table, align 8
  %call6 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %8)
  %9 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %hash_index7 = getelementptr inbounds %struct.charset, %struct.charset* %9, i32 0, i32 1
  %10 = load i64, i64* %hash_index7, align 8
  %call8 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call6, i64 %10)
  %call9 = call i64 @AREF(i64 %call8, i64 9)
  store i64 %call9, i64* %deunifier, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  %11 = load i64, i64* %deunifier, align 8
  %call10 = call zeroext i1 @CHAR_TABLE_P(i64 %11)
  br i1 %call10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end
  %12 = load i64, i64* %deunifier, align 8
  %13 = load i32, i32* %c.addr, align 4
  %call12 = call i64 @CHAR_TABLE_REF(i64 %12, i32 %13)
  store i64 %call12, i64* %deunified, align 8
  %14 = load i64, i64* %deunified, align 8
  %and = and i64 %14, 7
  %conv = trunc i64 %and to i32
  %and13 = and i32 %conv, -5
  %cmp = icmp eq i32 %and13, 2
  br i1 %cmp, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.then.11
  %15 = load i64, i64* %deunified, align 8
  %shr = ashr i64 %15, 2
  %conv16 = trunc i64 %shr to i32
  store i32 %conv16, i32* %code_index, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.then.11
  br label %if.end.52

if.else:                                          ; preds = %if.end
  %16 = load i32, i32* %c.addr, align 4
  %17 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %zero_index_char = getelementptr inbounds %struct.anon, %struct.anon* %17, i32 0, i32 4
  %18 = load i32, i32* %zero_index_char, align 4
  %cmp18 = icmp eq i32 %16, %18
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end.50

cond.false:                                       ; preds = %if.else
  %19 = load i32, i32* %c.addr, align 4
  %cmp20 = icmp slt i32 %19, 131072
  br i1 %cmp20, label %cond.true.22, label %cond.false.31

cond.true.22:                                     ; preds = %cond.false
  %20 = load i32, i32* %c.addr, align 4
  %idxprom = sext i32 %20 to i64
  %21 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %table = getelementptr inbounds %struct.anon, %struct.anon* %21, i32 0, i32 5
  %encoder = bitcast %union.anon.0* %table to [131072 x i16]*
  %arrayidx = getelementptr inbounds [131072 x i16], [131072 x i16]* %encoder, i32 0, i64 %idxprom
  %22 = load i16, i16* %arrayidx, align 2
  %conv23 = zext i16 %22 to i32
  %tobool = icmp ne i32 %conv23, 0
  br i1 %tobool, label %cond.true.24, label %cond.false.30

cond.true.24:                                     ; preds = %cond.true.22
  %23 = load i32, i32* %c.addr, align 4
  %idxprom25 = sext i32 %23 to i64
  %24 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %table26 = getelementptr inbounds %struct.anon, %struct.anon* %24, i32 0, i32 5
  %encoder27 = bitcast %union.anon.0* %table26 to [131072 x i16]*
  %arrayidx28 = getelementptr inbounds [131072 x i16], [131072 x i16]* %encoder27, i32 0, i64 %idxprom25
  %25 = load i16, i16* %arrayidx28, align 2
  %conv29 = zext i16 %25 to i32
  br label %cond.end

cond.false.30:                                    ; preds = %cond.true.22
  br label %cond.end

cond.end:                                         ; preds = %cond.false.30, %cond.true.24
  %cond = phi i32 [ %conv29, %cond.true.24 ], [ -1, %cond.false.30 ]
  br label %cond.end.48

cond.false.31:                                    ; preds = %cond.false
  %26 = load i32, i32* %c.addr, align 4
  %sub = sub nsw i32 %26, 65536
  %idxprom32 = sext i32 %sub to i64
  %27 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %table33 = getelementptr inbounds %struct.anon, %struct.anon* %27, i32 0, i32 5
  %encoder34 = bitcast %union.anon.0* %table33 to [131072 x i16]*
  %arrayidx35 = getelementptr inbounds [131072 x i16], [131072 x i16]* %encoder34, i32 0, i64 %idxprom32
  %28 = load i16, i16* %arrayidx35, align 2
  %conv36 = zext i16 %28 to i32
  %tobool37 = icmp ne i32 %conv36, 0
  br i1 %tobool37, label %cond.true.38, label %cond.false.45

cond.true.38:                                     ; preds = %cond.false.31
  %29 = load i32, i32* %c.addr, align 4
  %sub39 = sub nsw i32 %29, 65536
  %idxprom40 = sext i32 %sub39 to i64
  %30 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %table41 = getelementptr inbounds %struct.anon, %struct.anon* %30, i32 0, i32 5
  %encoder42 = bitcast %union.anon.0* %table41 to [131072 x i16]*
  %arrayidx43 = getelementptr inbounds [131072 x i16], [131072 x i16]* %encoder42, i32 0, i64 %idxprom40
  %31 = load i16, i16* %arrayidx43, align 2
  %conv44 = zext i16 %31 to i32
  br label %cond.end.46

cond.false.45:                                    ; preds = %cond.false.31
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.false.45, %cond.true.38
  %cond47 = phi i32 [ %conv44, %cond.true.38 ], [ -1, %cond.false.45 ]
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.end.46, %cond.end
  %cond49 = phi i32 [ %cond, %cond.end ], [ %cond47, %cond.end.46 ]
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.end.48, %cond.true
  %cond51 = phi i32 [ 0, %cond.true ], [ %cond49, %cond.end.48 ]
  store i32 %cond51, i32* %code_index, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %cond.end.50, %if.end.17
  %32 = load i32, i32* %code_index, align 4
  %cmp53 = icmp sge i32 %32, 0
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.52
  %33 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_offset = getelementptr inbounds %struct.charset, %struct.charset* %33, i32 0, i32 17
  %34 = load i32, i32* %code_offset, align 4
  %35 = load i32, i32* %code_index, align 4
  %add = add nsw i32 %34, %35
  store i32 %add, i32* %c.addr, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %if.end.52
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %entry
  %36 = load i32, i32* %method, align 4
  %cmp58 = icmp eq i32 %36, 2
  br i1 %cmp58, label %if.then.60, label %if.end.194

if.then.60:                                       ; preds = %if.end.57
  %37 = load i64, i64* @Vcharset_hash_table, align 8
  %call61 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %37)
  %38 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %hash_index62 = getelementptr inbounds %struct.charset, %struct.charset* %38, i32 0, i32 1
  %39 = load i64, i64* %hash_index62, align 8
  %call63 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call61, i64 %39)
  %call64 = call i64 @AREF(i64 %call63, i64 6)
  store i64 %call64, i64* %subset_info, align 8
  %40 = load %struct.charset*, %struct.charset** @charset_table, align 8
  %41 = load i64, i64* %subset_info, align 8
  %call65 = call i64 @AREF(i64 %41, i64 0)
  %shr66 = ashr i64 %call65, 2
  %add.ptr = getelementptr inbounds %struct.charset, %struct.charset* %40, i64 %shr66
  store %struct.charset* %add.ptr, %struct.charset** %this_charset, align 8
  br i1 true, label %cond.true.67, label %cond.false.71

cond.true.67:                                     ; preds = %if.then.60
  %42 = load i32, i32* %c.addr, align 4
  %add68 = add i32 %42, 0
  %cmp69 = icmp ult i32 %add68, 128
  br i1 %cmp69, label %land.lhs.true, label %cond.false.82

cond.false.71:                                    ; preds = %if.then.60
  %43 = load i32, i32* %c.addr, align 4
  %conv72 = sext i32 %43 to i64
  %add73 = add i64 %conv72, 0
  %cmp74 = icmp ult i64 %add73, 128
  br i1 %cmp74, label %land.lhs.true, label %cond.false.82

land.lhs.true:                                    ; preds = %cond.false.71, %cond.true.67
  %44 = load %struct.charset*, %struct.charset** %this_charset, align 8
  %ascii_compatible_p = getelementptr inbounds %struct.charset, %struct.charset* %44, i32 0, i32 5
  %bf.load76 = load i8, i8* %ascii_compatible_p, align 8
  %bf.lshr77 = lshr i8 %bf.load76, 2
  %bf.clear78 = and i8 %bf.lshr77, 1
  %bf.cast79 = trunc i8 %bf.clear78 to i1
  br i1 %bf.cast79, label %cond.true.81, label %cond.false.82

cond.true.81:                                     ; preds = %land.lhs.true
  %45 = load i32, i32* %c.addr, align 4
  br label %cond.end.169

cond.false.82:                                    ; preds = %land.lhs.true, %cond.false.71, %cond.true.67
  %46 = load %struct.charset*, %struct.charset** %this_charset, align 8
  %unified_p83 = getelementptr inbounds %struct.charset, %struct.charset* %46, i32 0, i32 5
  %bf.load84 = load i8, i8* %unified_p83, align 8
  %bf.lshr85 = lshr i8 %bf.load84, 5
  %bf.clear86 = and i8 %bf.lshr85, 1
  %bf.cast87 = trunc i8 %bf.clear86 to i1
  br i1 %bf.cast87, label %cond.true.96, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.false.82
  %47 = load %struct.charset*, %struct.charset** %this_charset, align 8
  %method89 = getelementptr inbounds %struct.charset, %struct.charset* %47, i32 0, i32 9
  %48 = load i32, i32* %method89, align 4
  %cmp90 = icmp eq i32 %48, 2
  br i1 %cmp90, label %cond.true.96, label %lor.lhs.false.92

lor.lhs.false.92:                                 ; preds = %lor.lhs.false
  %49 = load %struct.charset*, %struct.charset** %this_charset, align 8
  %method93 = getelementptr inbounds %struct.charset, %struct.charset* %49, i32 0, i32 9
  %50 = load i32, i32* %method93, align 4
  %cmp94 = icmp eq i32 %50, 3
  br i1 %cmp94, label %cond.true.96, label %cond.false.98

cond.true.96:                                     ; preds = %lor.lhs.false.92, %lor.lhs.false, %cond.false.82
  %51 = load %struct.charset*, %struct.charset** %this_charset, align 8
  %52 = load i32, i32* %c.addr, align 4
  %call97 = call i32 @encode_char(%struct.charset* %51, i32 %52)
  br label %cond.end.167

cond.false.98:                                    ; preds = %lor.lhs.false.92
  %53 = load i32, i32* %c.addr, align 4
  %54 = load %struct.charset*, %struct.charset** %this_charset, align 8
  %min_char = getelementptr inbounds %struct.charset, %struct.charset* %54, i32 0, i32 13
  %55 = load i32, i32* %min_char, align 4
  %cmp99 = icmp slt i32 %53, %55
  br i1 %cmp99, label %cond.true.104, label %lor.lhs.false.101

lor.lhs.false.101:                                ; preds = %cond.false.98
  %56 = load i32, i32* %c.addr, align 4
  %57 = load %struct.charset*, %struct.charset** %this_charset, align 8
  %max_char = getelementptr inbounds %struct.charset, %struct.charset* %57, i32 0, i32 14
  %58 = load i32, i32* %max_char, align 4
  %cmp102 = icmp sgt i32 %56, %58
  br i1 %cmp102, label %cond.true.104, label %cond.false.105

cond.true.104:                                    ; preds = %lor.lhs.false.101, %cond.false.98
  %59 = load %struct.charset*, %struct.charset** %this_charset, align 8
  %invalid_code = getelementptr inbounds %struct.charset, %struct.charset* %59, i32 0, i32 15
  %60 = load i32, i32* %invalid_code, align 4
  br label %cond.end.165

cond.false.105:                                   ; preds = %lor.lhs.false.101
  %61 = load %struct.charset*, %struct.charset** %this_charset, align 8
  %method106 = getelementptr inbounds %struct.charset, %struct.charset* %61, i32 0, i32 9
  %62 = load i32, i32* %method106, align 4
  %cmp107 = icmp eq i32 %62, 0
  br i1 %cmp107, label %cond.true.109, label %cond.false.122

cond.true.109:                                    ; preds = %cond.false.105
  %63 = load %struct.charset*, %struct.charset** %this_charset, align 8
  %code_linear_p = getelementptr inbounds %struct.charset, %struct.charset* %63, i32 0, i32 5
  %bf.load110 = load i8, i8* %code_linear_p, align 8
  %bf.clear111 = and i8 %bf.load110, 1
  %bf.cast112 = trunc i8 %bf.clear111 to i1
  br i1 %bf.cast112, label %cond.true.114, label %cond.false.118

cond.true.114:                                    ; preds = %cond.true.109
  %64 = load i32, i32* %c.addr, align 4
  %65 = load %struct.charset*, %struct.charset** %this_charset, align 8
  %code_offset115 = getelementptr inbounds %struct.charset, %struct.charset* %65, i32 0, i32 17
  %66 = load i32, i32* %code_offset115, align 4
  %sub116 = sub nsw i32 %64, %66
  %67 = load %struct.charset*, %struct.charset** %this_charset, align 8
  %min_code = getelementptr inbounds %struct.charset, %struct.charset* %67, i32 0, i32 10
  %68 = load i32, i32* %min_code, align 4
  %add117 = add i32 %sub116, %68
  br label %cond.end.120

cond.false.118:                                   ; preds = %cond.true.109
  %69 = load %struct.charset*, %struct.charset** %this_charset, align 8
  %70 = load i32, i32* %c.addr, align 4
  %call119 = call i32 @encode_char(%struct.charset* %69, i32 %70)
  br label %cond.end.120

cond.end.120:                                     ; preds = %cond.false.118, %cond.true.114
  %cond121 = phi i32 [ %add117, %cond.true.114 ], [ %call119, %cond.false.118 ]
  br label %cond.end.163

cond.false.122:                                   ; preds = %cond.false.105
  %71 = load %struct.charset*, %struct.charset** %this_charset, align 8
  %method123 = getelementptr inbounds %struct.charset, %struct.charset* %71, i32 0, i32 9
  %72 = load i32, i32* %method123, align 4
  %cmp124 = icmp eq i32 %72, 1
  br i1 %cmp124, label %cond.true.126, label %cond.false.159

cond.true.126:                                    ; preds = %cond.false.122
  %73 = load %struct.charset*, %struct.charset** %this_charset, align 8
  %compact_codes_p = getelementptr inbounds %struct.charset, %struct.charset* %73, i32 0, i32 5
  %bf.load127 = load i8, i8* %compact_codes_p, align 8
  %bf.lshr128 = lshr i8 %bf.load127, 4
  %bf.clear129 = and i8 %bf.lshr128, 1
  %bf.cast130 = trunc i8 %bf.clear129 to i1
  br i1 %bf.cast130, label %land.lhs.true.132, label %cond.false.155

land.lhs.true.132:                                ; preds = %cond.true.126
  %74 = load i64, i64* @Vcharset_hash_table, align 8
  %call133 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %74)
  %75 = load %struct.charset*, %struct.charset** %this_charset, align 8
  %hash_index134 = getelementptr inbounds %struct.charset, %struct.charset* %75, i32 0, i32 1
  %76 = load i64, i64* %hash_index134, align 8
  %call135 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call133, i64 %76)
  %call136 = call i64 @AREF(i64 %call135, i64 5)
  %call137 = call zeroext i1 @CHAR_TABLE_P(i64 %call136)
  br i1 %call137, label %cond.true.139, label %cond.false.155

cond.true.139:                                    ; preds = %land.lhs.true.132
  %77 = load i64, i64* @Vcharset_hash_table, align 8
  %call140 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %77)
  %78 = load %struct.charset*, %struct.charset** %this_charset, align 8
  %hash_index141 = getelementptr inbounds %struct.charset, %struct.charset* %78, i32 0, i32 1
  %79 = load i64, i64* %hash_index141, align 8
  %call142 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call140, i64 %79)
  %call143 = call i64 @AREF(i64 %call142, i64 5)
  %80 = load i32, i32* %c.addr, align 4
  %call144 = call i64 @CHAR_TABLE_REF(i64 %call143, i32 %80)
  store i64 %call144, i64* @charset_work, align 8
  %81 = load i64, i64* @charset_work, align 8
  %call145 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp146 = icmp eq i64 %81, %call145
  br i1 %cmp146, label %cond.true.148, label %cond.false.150

cond.true.148:                                    ; preds = %cond.true.139
  %82 = load %struct.charset*, %struct.charset** %this_charset, align 8
  %invalid_code149 = getelementptr inbounds %struct.charset, %struct.charset* %82, i32 0, i32 15
  %83 = load i32, i32* %invalid_code149, align 4
  br label %cond.end.153

cond.false.150:                                   ; preds = %cond.true.139
  %84 = load i64, i64* @charset_work, align 8
  %shr151 = ashr i64 %84, 2
  %conv152 = trunc i64 %shr151 to i32
  br label %cond.end.153

cond.end.153:                                     ; preds = %cond.false.150, %cond.true.148
  %cond154 = phi i32 [ %83, %cond.true.148 ], [ %conv152, %cond.false.150 ]
  br label %cond.end.157

cond.false.155:                                   ; preds = %land.lhs.true.132, %cond.true.126
  %85 = load %struct.charset*, %struct.charset** %this_charset, align 8
  %86 = load i32, i32* %c.addr, align 4
  %call156 = call i32 @encode_char(%struct.charset* %85, i32 %86)
  br label %cond.end.157

cond.end.157:                                     ; preds = %cond.false.155, %cond.end.153
  %cond158 = phi i32 [ %cond154, %cond.end.153 ], [ %call156, %cond.false.155 ]
  br label %cond.end.161

cond.false.159:                                   ; preds = %cond.false.122
  %87 = load %struct.charset*, %struct.charset** %this_charset, align 8
  %88 = load i32, i32* %c.addr, align 4
  %call160 = call i32 @encode_char(%struct.charset* %87, i32 %88)
  br label %cond.end.161

cond.end.161:                                     ; preds = %cond.false.159, %cond.end.157
  %cond162 = phi i32 [ %cond158, %cond.end.157 ], [ %call160, %cond.false.159 ]
  br label %cond.end.163

cond.end.163:                                     ; preds = %cond.end.161, %cond.end.120
  %cond164 = phi i32 [ %cond121, %cond.end.120 ], [ %cond162, %cond.end.161 ]
  br label %cond.end.165

cond.end.165:                                     ; preds = %cond.end.163, %cond.true.104
  %cond166 = phi i32 [ %60, %cond.true.104 ], [ %cond164, %cond.end.163 ]
  br label %cond.end.167

cond.end.167:                                     ; preds = %cond.end.165, %cond.true.96
  %cond168 = phi i32 [ %call97, %cond.true.96 ], [ %cond166, %cond.end.165 ]
  br label %cond.end.169

cond.end.169:                                     ; preds = %cond.end.167, %cond.true.81
  %cond170 = phi i32 [ %45, %cond.true.81 ], [ %cond168, %cond.end.167 ]
  store i32 %cond170, i32* %code, align 4
  %89 = load i32, i32* %code, align 4
  %90 = load %struct.charset*, %struct.charset** %this_charset, align 8
  %invalid_code171 = getelementptr inbounds %struct.charset, %struct.charset* %90, i32 0, i32 15
  %91 = load i32, i32* %invalid_code171, align 4
  %cmp172 = icmp eq i32 %89, %91
  br i1 %cmp172, label %if.then.186, label %lor.lhs.false.174

lor.lhs.false.174:                                ; preds = %cond.end.169
  %92 = load i32, i32* %code, align 4
  %conv175 = zext i32 %92 to i64
  %93 = load i64, i64* %subset_info, align 8
  %call176 = call i64 @AREF(i64 %93, i64 1)
  %shr177 = ashr i64 %call176, 2
  %cmp178 = icmp slt i64 %conv175, %shr177
  br i1 %cmp178, label %if.then.186, label %lor.lhs.false.180

lor.lhs.false.180:                                ; preds = %lor.lhs.false.174
  %94 = load i32, i32* %code, align 4
  %conv181 = zext i32 %94 to i64
  %95 = load i64, i64* %subset_info, align 8
  %call182 = call i64 @AREF(i64 %95, i64 2)
  %shr183 = ashr i64 %call182, 2
  %cmp184 = icmp sgt i64 %conv181, %shr183
  br i1 %cmp184, label %if.then.186, label %if.end.188

if.then.186:                                      ; preds = %lor.lhs.false.180, %lor.lhs.false.174, %cond.end.169
  %96 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %invalid_code187 = getelementptr inbounds %struct.charset, %struct.charset* %96, i32 0, i32 15
  %97 = load i32, i32* %invalid_code187, align 4
  store i32 %97, i32* %retval
  br label %return

if.end.188:                                       ; preds = %lor.lhs.false.180
  %98 = load i64, i64* %subset_info, align 8
  %call189 = call i64 @AREF(i64 %98, i64 3)
  %shr190 = ashr i64 %call189, 2
  %99 = load i32, i32* %code, align 4
  %conv191 = zext i32 %99 to i64
  %add192 = add nsw i64 %conv191, %shr190
  %conv193 = trunc i64 %add192 to i32
  store i32 %conv193, i32* %code, align 4
  %100 = load i32, i32* %code, align 4
  store i32 %100, i32* %retval
  br label %return

if.end.194:                                       ; preds = %if.end.57
  %101 = load i32, i32* %method, align 4
  %cmp195 = icmp eq i32 %101, 3
  br i1 %cmp195, label %if.then.197, label %if.end.342

if.then.197:                                      ; preds = %if.end.194
  %102 = load i64, i64* @Vcharset_hash_table, align 8
  %call198 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %102)
  %103 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %hash_index199 = getelementptr inbounds %struct.charset, %struct.charset* %103, i32 0, i32 1
  %104 = load i64, i64* %hash_index199, align 8
  %call200 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call198, i64 %104)
  %call201 = call i64 @AREF(i64 %call200, i64 7)
  store i64 %call201, i64* %parents, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.197
  %105 = load i64, i64* %parents, align 8
  %and202 = and i64 %105, 7
  %conv203 = trunc i64 %and202 to i32
  %cmp204 = icmp eq i32 %conv203, 3
  br i1 %cmp204, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %106 = load i64, i64* %parents, align 8
  %sub206 = sub nsw i64 %106, 3
  %107 = inttoptr i64 %sub206 to i8*
  %108 = bitcast i8* %107 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %108, i32 0, i32 0
  %109 = load i64, i64* %car, align 8
  %sub207 = sub nsw i64 %109, 3
  %110 = inttoptr i64 %sub207 to i8*
  %111 = bitcast i8* %110 to %struct.Lisp_Cons*
  %car208 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %111, i32 0, i32 0
  %112 = load i64, i64* %car208, align 8
  %shr209 = ashr i64 %112, 2
  %conv210 = trunc i64 %shr209 to i32
  store i32 %conv210, i32* %id, align 4
  %113 = load i64, i64* %parents, align 8
  %sub212 = sub nsw i64 %113, 3
  %114 = inttoptr i64 %sub212 to i8*
  %115 = bitcast i8* %114 to %struct.Lisp_Cons*
  %car213 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %115, i32 0, i32 0
  %116 = load i64, i64* %car213, align 8
  %sub214 = sub nsw i64 %116, 3
  %117 = inttoptr i64 %sub214 to i8*
  %118 = bitcast i8* %117 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %118, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %119 = load i64, i64* %cdr, align 8
  %shr215 = ashr i64 %119, 2
  %conv216 = trunc i64 %shr215 to i32
  store i32 %conv216, i32* %code_offset211, align 4
  %120 = load %struct.charset*, %struct.charset** @charset_table, align 8
  %121 = load i32, i32* %id, align 4
  %idx.ext = sext i32 %121 to i64
  %add.ptr218 = getelementptr inbounds %struct.charset, %struct.charset* %120, i64 %idx.ext
  store %struct.charset* %add.ptr218, %struct.charset** %this_charset217, align 8
  br i1 true, label %cond.true.219, label %cond.false.223

cond.true.219:                                    ; preds = %for.body
  %122 = load i32, i32* %c.addr, align 4
  %add220 = add i32 %122, 0
  %cmp221 = icmp ult i32 %add220, 128
  br i1 %cmp221, label %land.lhs.true.228, label %cond.false.236

cond.false.223:                                   ; preds = %for.body
  %123 = load i32, i32* %c.addr, align 4
  %conv224 = sext i32 %123 to i64
  %add225 = add i64 %conv224, 0
  %cmp226 = icmp ult i64 %add225, 128
  br i1 %cmp226, label %land.lhs.true.228, label %cond.false.236

land.lhs.true.228:                                ; preds = %cond.false.223, %cond.true.219
  %124 = load %struct.charset*, %struct.charset** %this_charset217, align 8
  %ascii_compatible_p229 = getelementptr inbounds %struct.charset, %struct.charset* %124, i32 0, i32 5
  %bf.load230 = load i8, i8* %ascii_compatible_p229, align 8
  %bf.lshr231 = lshr i8 %bf.load230, 2
  %bf.clear232 = and i8 %bf.lshr231, 1
  %bf.cast233 = trunc i8 %bf.clear232 to i1
  br i1 %bf.cast233, label %cond.true.235, label %cond.false.236

cond.true.235:                                    ; preds = %land.lhs.true.228
  %125 = load i32, i32* %c.addr, align 4
  br label %cond.end.330

cond.false.236:                                   ; preds = %land.lhs.true.228, %cond.false.223, %cond.true.219
  %126 = load %struct.charset*, %struct.charset** %this_charset217, align 8
  %unified_p237 = getelementptr inbounds %struct.charset, %struct.charset* %126, i32 0, i32 5
  %bf.load238 = load i8, i8* %unified_p237, align 8
  %bf.lshr239 = lshr i8 %bf.load238, 5
  %bf.clear240 = and i8 %bf.lshr239, 1
  %bf.cast241 = trunc i8 %bf.clear240 to i1
  br i1 %bf.cast241, label %cond.true.251, label %lor.lhs.false.243

lor.lhs.false.243:                                ; preds = %cond.false.236
  %127 = load %struct.charset*, %struct.charset** %this_charset217, align 8
  %method244 = getelementptr inbounds %struct.charset, %struct.charset* %127, i32 0, i32 9
  %128 = load i32, i32* %method244, align 4
  %cmp245 = icmp eq i32 %128, 2
  br i1 %cmp245, label %cond.true.251, label %lor.lhs.false.247

lor.lhs.false.247:                                ; preds = %lor.lhs.false.243
  %129 = load %struct.charset*, %struct.charset** %this_charset217, align 8
  %method248 = getelementptr inbounds %struct.charset, %struct.charset* %129, i32 0, i32 9
  %130 = load i32, i32* %method248, align 4
  %cmp249 = icmp eq i32 %130, 3
  br i1 %cmp249, label %cond.true.251, label %cond.false.253

cond.true.251:                                    ; preds = %lor.lhs.false.247, %lor.lhs.false.243, %cond.false.236
  %131 = load %struct.charset*, %struct.charset** %this_charset217, align 8
  %132 = load i32, i32* %c.addr, align 4
  %call252 = call i32 @encode_char(%struct.charset* %131, i32 %132)
  br label %cond.end.328

cond.false.253:                                   ; preds = %lor.lhs.false.247
  %133 = load i32, i32* %c.addr, align 4
  %134 = load %struct.charset*, %struct.charset** %this_charset217, align 8
  %min_char254 = getelementptr inbounds %struct.charset, %struct.charset* %134, i32 0, i32 13
  %135 = load i32, i32* %min_char254, align 4
  %cmp255 = icmp slt i32 %133, %135
  br i1 %cmp255, label %cond.true.261, label %lor.lhs.false.257

lor.lhs.false.257:                                ; preds = %cond.false.253
  %136 = load i32, i32* %c.addr, align 4
  %137 = load %struct.charset*, %struct.charset** %this_charset217, align 8
  %max_char258 = getelementptr inbounds %struct.charset, %struct.charset* %137, i32 0, i32 14
  %138 = load i32, i32* %max_char258, align 4
  %cmp259 = icmp sgt i32 %136, %138
  br i1 %cmp259, label %cond.true.261, label %cond.false.263

cond.true.261:                                    ; preds = %lor.lhs.false.257, %cond.false.253
  %139 = load %struct.charset*, %struct.charset** %this_charset217, align 8
  %invalid_code262 = getelementptr inbounds %struct.charset, %struct.charset* %139, i32 0, i32 15
  %140 = load i32, i32* %invalid_code262, align 4
  br label %cond.end.326

cond.false.263:                                   ; preds = %lor.lhs.false.257
  %141 = load %struct.charset*, %struct.charset** %this_charset217, align 8
  %method264 = getelementptr inbounds %struct.charset, %struct.charset* %141, i32 0, i32 9
  %142 = load i32, i32* %method264, align 4
  %cmp265 = icmp eq i32 %142, 0
  br i1 %cmp265, label %cond.true.267, label %cond.false.282

cond.true.267:                                    ; preds = %cond.false.263
  %143 = load %struct.charset*, %struct.charset** %this_charset217, align 8
  %code_linear_p268 = getelementptr inbounds %struct.charset, %struct.charset* %143, i32 0, i32 5
  %bf.load269 = load i8, i8* %code_linear_p268, align 8
  %bf.clear270 = and i8 %bf.load269, 1
  %bf.cast271 = trunc i8 %bf.clear270 to i1
  br i1 %bf.cast271, label %cond.true.273, label %cond.false.278

cond.true.273:                                    ; preds = %cond.true.267
  %144 = load i32, i32* %c.addr, align 4
  %145 = load %struct.charset*, %struct.charset** %this_charset217, align 8
  %code_offset274 = getelementptr inbounds %struct.charset, %struct.charset* %145, i32 0, i32 17
  %146 = load i32, i32* %code_offset274, align 4
  %sub275 = sub nsw i32 %144, %146
  %147 = load %struct.charset*, %struct.charset** %this_charset217, align 8
  %min_code276 = getelementptr inbounds %struct.charset, %struct.charset* %147, i32 0, i32 10
  %148 = load i32, i32* %min_code276, align 4
  %add277 = add i32 %sub275, %148
  br label %cond.end.280

cond.false.278:                                   ; preds = %cond.true.267
  %149 = load %struct.charset*, %struct.charset** %this_charset217, align 8
  %150 = load i32, i32* %c.addr, align 4
  %call279 = call i32 @encode_char(%struct.charset* %149, i32 %150)
  br label %cond.end.280

cond.end.280:                                     ; preds = %cond.false.278, %cond.true.273
  %cond281 = phi i32 [ %add277, %cond.true.273 ], [ %call279, %cond.false.278 ]
  br label %cond.end.324

cond.false.282:                                   ; preds = %cond.false.263
  %151 = load %struct.charset*, %struct.charset** %this_charset217, align 8
  %method283 = getelementptr inbounds %struct.charset, %struct.charset* %151, i32 0, i32 9
  %152 = load i32, i32* %method283, align 4
  %cmp284 = icmp eq i32 %152, 1
  br i1 %cmp284, label %cond.true.286, label %cond.false.320

cond.true.286:                                    ; preds = %cond.false.282
  %153 = load %struct.charset*, %struct.charset** %this_charset217, align 8
  %compact_codes_p287 = getelementptr inbounds %struct.charset, %struct.charset* %153, i32 0, i32 5
  %bf.load288 = load i8, i8* %compact_codes_p287, align 8
  %bf.lshr289 = lshr i8 %bf.load288, 4
  %bf.clear290 = and i8 %bf.lshr289, 1
  %bf.cast291 = trunc i8 %bf.clear290 to i1
  br i1 %bf.cast291, label %land.lhs.true.293, label %cond.false.316

land.lhs.true.293:                                ; preds = %cond.true.286
  %154 = load i64, i64* @Vcharset_hash_table, align 8
  %call294 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %154)
  %155 = load %struct.charset*, %struct.charset** %this_charset217, align 8
  %hash_index295 = getelementptr inbounds %struct.charset, %struct.charset* %155, i32 0, i32 1
  %156 = load i64, i64* %hash_index295, align 8
  %call296 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call294, i64 %156)
  %call297 = call i64 @AREF(i64 %call296, i64 5)
  %call298 = call zeroext i1 @CHAR_TABLE_P(i64 %call297)
  br i1 %call298, label %cond.true.300, label %cond.false.316

cond.true.300:                                    ; preds = %land.lhs.true.293
  %157 = load i64, i64* @Vcharset_hash_table, align 8
  %call301 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %157)
  %158 = load %struct.charset*, %struct.charset** %this_charset217, align 8
  %hash_index302 = getelementptr inbounds %struct.charset, %struct.charset* %158, i32 0, i32 1
  %159 = load i64, i64* %hash_index302, align 8
  %call303 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call301, i64 %159)
  %call304 = call i64 @AREF(i64 %call303, i64 5)
  %160 = load i32, i32* %c.addr, align 4
  %call305 = call i64 @CHAR_TABLE_REF(i64 %call304, i32 %160)
  store i64 %call305, i64* @charset_work, align 8
  %161 = load i64, i64* @charset_work, align 8
  %call306 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp307 = icmp eq i64 %161, %call306
  br i1 %cmp307, label %cond.true.309, label %cond.false.311

cond.true.309:                                    ; preds = %cond.true.300
  %162 = load %struct.charset*, %struct.charset** %this_charset217, align 8
  %invalid_code310 = getelementptr inbounds %struct.charset, %struct.charset* %162, i32 0, i32 15
  %163 = load i32, i32* %invalid_code310, align 4
  br label %cond.end.314

cond.false.311:                                   ; preds = %cond.true.300
  %164 = load i64, i64* @charset_work, align 8
  %shr312 = ashr i64 %164, 2
  %conv313 = trunc i64 %shr312 to i32
  br label %cond.end.314

cond.end.314:                                     ; preds = %cond.false.311, %cond.true.309
  %cond315 = phi i32 [ %163, %cond.true.309 ], [ %conv313, %cond.false.311 ]
  br label %cond.end.318

cond.false.316:                                   ; preds = %land.lhs.true.293, %cond.true.286
  %165 = load %struct.charset*, %struct.charset** %this_charset217, align 8
  %166 = load i32, i32* %c.addr, align 4
  %call317 = call i32 @encode_char(%struct.charset* %165, i32 %166)
  br label %cond.end.318

cond.end.318:                                     ; preds = %cond.false.316, %cond.end.314
  %cond319 = phi i32 [ %cond315, %cond.end.314 ], [ %call317, %cond.false.316 ]
  br label %cond.end.322

cond.false.320:                                   ; preds = %cond.false.282
  %167 = load %struct.charset*, %struct.charset** %this_charset217, align 8
  %168 = load i32, i32* %c.addr, align 4
  %call321 = call i32 @encode_char(%struct.charset* %167, i32 %168)
  br label %cond.end.322

cond.end.322:                                     ; preds = %cond.false.320, %cond.end.318
  %cond323 = phi i32 [ %cond319, %cond.end.318 ], [ %call321, %cond.false.320 ]
  br label %cond.end.324

cond.end.324:                                     ; preds = %cond.end.322, %cond.end.280
  %cond325 = phi i32 [ %cond281, %cond.end.280 ], [ %cond323, %cond.end.322 ]
  br label %cond.end.326

cond.end.326:                                     ; preds = %cond.end.324, %cond.true.261
  %cond327 = phi i32 [ %140, %cond.true.261 ], [ %cond325, %cond.end.324 ]
  br label %cond.end.328

cond.end.328:                                     ; preds = %cond.end.326, %cond.true.251
  %cond329 = phi i32 [ %call252, %cond.true.251 ], [ %cond327, %cond.end.326 ]
  br label %cond.end.330

cond.end.330:                                     ; preds = %cond.end.328, %cond.true.235
  %cond331 = phi i32 [ %125, %cond.true.235 ], [ %cond329, %cond.end.328 ]
  store i32 %cond331, i32* %code, align 4
  %169 = load i32, i32* %code, align 4
  %170 = load %struct.charset*, %struct.charset** %this_charset217, align 8
  %invalid_code332 = getelementptr inbounds %struct.charset, %struct.charset* %170, i32 0, i32 15
  %171 = load i32, i32* %invalid_code332, align 4
  %cmp333 = icmp ne i32 %169, %171
  br i1 %cmp333, label %if.then.335, label %if.end.337

if.then.335:                                      ; preds = %cond.end.330
  %172 = load i32, i32* %code, align 4
  %173 = load i32, i32* %code_offset211, align 4
  %add336 = add i32 %172, %173
  store i32 %add336, i32* %retval
  br label %return

if.end.337:                                       ; preds = %cond.end.330
  br label %for.inc

for.inc:                                          ; preds = %if.end.337
  %174 = load i64, i64* %parents, align 8
  %sub338 = sub nsw i64 %174, 3
  %175 = inttoptr i64 %sub338 to i8*
  %176 = bitcast i8* %175 to %struct.Lisp_Cons*
  %u339 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %176, i32 0, i32 1
  %cdr340 = bitcast %union.anon* %u339 to i64*
  %177 = load i64, i64* %cdr340, align 8
  store i64 %177, i64* %parents, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %178 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %invalid_code341 = getelementptr inbounds %struct.charset, %struct.charset* %178, i32 0, i32 15
  %179 = load i32, i32* %invalid_code341, align 4
  store i32 %179, i32* %retval
  br label %return

if.end.342:                                       ; preds = %if.end.194
  %180 = load i32, i32* %c.addr, align 4
  %cmp343 = icmp slt i32 %180, 65536
  br i1 %cmp343, label %cond.true.345, label %cond.false.354

cond.true.345:                                    ; preds = %if.end.342
  %181 = load i32, i32* %c.addr, align 4
  %shr346 = ashr i32 %181, 10
  %idxprom347 = sext i32 %shr346 to i64
  %182 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %fast_map = getelementptr inbounds %struct.charset, %struct.charset* %182, i32 0, i32 16
  %arrayidx348 = getelementptr inbounds [190 x i8], [190 x i8]* %fast_map, i32 0, i64 %idxprom347
  %183 = load i8, i8* %arrayidx348, align 1
  %conv349 = zext i8 %183 to i32
  %184 = load i32, i32* %c.addr, align 4
  %shr350 = ashr i32 %184, 7
  %and351 = and i32 %shr350, 7
  %shl = shl i32 1, %and351
  %and352 = and i32 %conv349, %shl
  %tobool353 = icmp ne i32 %and352, 0
  br i1 %tobool353, label %lor.lhs.false.366, label %if.then.374

cond.false.354:                                   ; preds = %if.end.342
  %185 = load i32, i32* %c.addr, align 4
  %shr355 = ashr i32 %185, 15
  %add356 = add nsw i32 %shr355, 62
  %idxprom357 = sext i32 %add356 to i64
  %186 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %fast_map358 = getelementptr inbounds %struct.charset, %struct.charset* %186, i32 0, i32 16
  %arrayidx359 = getelementptr inbounds [190 x i8], [190 x i8]* %fast_map358, i32 0, i64 %idxprom357
  %187 = load i8, i8* %arrayidx359, align 1
  %conv360 = zext i8 %187 to i32
  %188 = load i32, i32* %c.addr, align 4
  %shr361 = ashr i32 %188, 12
  %and362 = and i32 %shr361, 7
  %shl363 = shl i32 1, %and362
  %and364 = and i32 %conv360, %shl363
  %tobool365 = icmp ne i32 %and364, 0
  br i1 %tobool365, label %lor.lhs.false.366, label %if.then.374

lor.lhs.false.366:                                ; preds = %cond.false.354, %cond.true.345
  %189 = load i32, i32* %c.addr, align 4
  %190 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %min_char367 = getelementptr inbounds %struct.charset, %struct.charset* %190, i32 0, i32 13
  %191 = load i32, i32* %min_char367, align 4
  %cmp368 = icmp slt i32 %189, %191
  br i1 %cmp368, label %if.then.374, label %lor.lhs.false.370

lor.lhs.false.370:                                ; preds = %lor.lhs.false.366
  %192 = load i32, i32* %c.addr, align 4
  %193 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %max_char371 = getelementptr inbounds %struct.charset, %struct.charset* %193, i32 0, i32 14
  %194 = load i32, i32* %max_char371, align 4
  %cmp372 = icmp sgt i32 %192, %194
  br i1 %cmp372, label %if.then.374, label %if.end.376

if.then.374:                                      ; preds = %lor.lhs.false.370, %lor.lhs.false.366, %cond.false.354, %cond.true.345
  %195 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %invalid_code375 = getelementptr inbounds %struct.charset, %struct.charset* %195, i32 0, i32 15
  %196 = load i32, i32* %invalid_code375, align 4
  store i32 %196, i32* %retval
  br label %return

if.end.376:                                       ; preds = %lor.lhs.false.370
  %197 = load i32, i32* %method, align 4
  %cmp377 = icmp eq i32 %197, 1
  br i1 %cmp377, label %if.then.379, label %if.else.554

if.then.379:                                      ; preds = %if.end.376
  %198 = load i64, i64* @Vcharset_hash_table, align 8
  %call381 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %198)
  %199 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %hash_index382 = getelementptr inbounds %struct.charset, %struct.charset* %199, i32 0, i32 1
  %200 = load i64, i64* %hash_index382, align 8
  %call383 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call381, i64 %200)
  %call384 = call i64 @AREF(i64 %call383, i64 5)
  store i64 %call384, i64* %encoder380, align 8
  %201 = load i64, i64* @Vcharset_hash_table, align 8
  %call385 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %201)
  %202 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %hash_index386 = getelementptr inbounds %struct.charset, %struct.charset* %202, i32 0, i32 1
  %203 = load i64, i64* %hash_index386, align 8
  %call387 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call385, i64 %203)
  %call388 = call i64 @AREF(i64 %call387, i64 5)
  %call389 = call zeroext i1 @CHAR_TABLE_P(i64 %call388)
  br i1 %call389, label %if.end.395, label %if.then.390

if.then.390:                                      ; preds = %if.then.379
  %204 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  call void @load_charset(%struct.charset* %204, i32 2)
  %205 = load i64, i64* @Vcharset_hash_table, align 8
  %call391 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %205)
  %206 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %hash_index392 = getelementptr inbounds %struct.charset, %struct.charset* %206, i32 0, i32 1
  %207 = load i64, i64* %hash_index392, align 8
  %call393 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call391, i64 %207)
  %call394 = call i64 @AREF(i64 %call393, i64 5)
  store i64 %call394, i64* %encoder380, align 8
  br label %if.end.395

if.end.395:                                       ; preds = %if.then.390, %if.then.379
  %208 = load i64, i64* %encoder380, align 8
  %call396 = call zeroext i1 @CHAR_TABLE_P(i64 %208)
  br i1 %call396, label %if.then.397, label %if.else.458

if.then.397:                                      ; preds = %if.end.395
  %209 = load i64, i64* %encoder380, align 8
  %210 = load i32, i32* %c.addr, align 4
  %call398 = call i64 @CHAR_TABLE_REF(i64 %209, i32 %210)
  store i64 %call398, i64* %val, align 8
  %211 = load i64, i64* %val, align 8
  %call399 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp400 = icmp eq i64 %211, %call399
  br i1 %cmp400, label %if.then.402, label %if.end.404

if.then.402:                                      ; preds = %if.then.397
  %212 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %invalid_code403 = getelementptr inbounds %struct.charset, %struct.charset* %212, i32 0, i32 15
  %213 = load i32, i32* %invalid_code403, align 4
  store i32 %213, i32* %retval
  br label %return

if.end.404:                                       ; preds = %if.then.397
  %214 = load i64, i64* %val, align 8
  %shr405 = ashr i64 %214, 2
  %conv406 = trunc i64 %shr405 to i32
  store i32 %conv406, i32* %code, align 4
  %215 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %compact_codes_p407 = getelementptr inbounds %struct.charset, %struct.charset* %215, i32 0, i32 5
  %bf.load408 = load i8, i8* %compact_codes_p407, align 8
  %bf.lshr409 = lshr i8 %bf.load408, 4
  %bf.clear410 = and i8 %bf.lshr409, 1
  %bf.cast411 = trunc i8 %bf.clear410 to i1
  br i1 %bf.cast411, label %if.end.457, label %if.then.412

if.then.412:                                      ; preds = %if.end.404
  %216 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_linear_p413 = getelementptr inbounds %struct.charset, %struct.charset* %216, i32 0, i32 5
  %bf.load414 = load i8, i8* %code_linear_p413, align 8
  %bf.clear415 = and i8 %bf.load414, 1
  %bf.cast416 = trunc i8 %bf.clear415 to i1
  br i1 %bf.cast416, label %cond.true.418, label %cond.false.421

cond.true.418:                                    ; preds = %if.then.412
  %217 = load i32, i32* %code, align 4
  %218 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %min_code419 = getelementptr inbounds %struct.charset, %struct.charset* %218, i32 0, i32 10
  %219 = load i32, i32* %min_code419, align 4
  %add420 = add i32 %217, %219
  br label %cond.end.455

cond.false.421:                                   ; preds = %if.then.412
  %220 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %char_index_offset = getelementptr inbounds %struct.charset, %struct.charset* %220, i32 0, i32 12
  %221 = load i32, i32* %char_index_offset, align 4
  %222 = load i32, i32* %code, align 4
  %add422 = add i32 %222, %221
  store i32 %add422, i32* %code, align 4
  %223 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space = getelementptr inbounds %struct.charset, %struct.charset* %223, i32 0, i32 3
  %arrayidx423 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space, i32 0, i64 0
  %224 = load i32, i32* %arrayidx423, align 4
  %225 = load i32, i32* %code, align 4
  %226 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space424 = getelementptr inbounds %struct.charset, %struct.charset* %226, i32 0, i32 3
  %arrayidx425 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space424, i32 0, i64 2
  %227 = load i32, i32* %arrayidx425, align 4
  %rem = urem i32 %225, %227
  %add426 = add i32 %224, %rem
  %228 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space427 = getelementptr inbounds %struct.charset, %struct.charset* %228, i32 0, i32 3
  %arrayidx428 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space427, i32 0, i64 4
  %229 = load i32, i32* %arrayidx428, align 4
  %230 = load i32, i32* %code, align 4
  %231 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space429 = getelementptr inbounds %struct.charset, %struct.charset* %231, i32 0, i32 3
  %arrayidx430 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space429, i32 0, i64 3
  %232 = load i32, i32* %arrayidx430, align 4
  %div = udiv i32 %230, %232
  %233 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space431 = getelementptr inbounds %struct.charset, %struct.charset* %233, i32 0, i32 3
  %arrayidx432 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space431, i32 0, i64 6
  %234 = load i32, i32* %arrayidx432, align 4
  %rem433 = urem i32 %div, %234
  %add434 = add i32 %229, %rem433
  %shl435 = shl i32 %add434, 8
  %or = or i32 %add426, %shl435
  %235 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space436 = getelementptr inbounds %struct.charset, %struct.charset* %235, i32 0, i32 3
  %arrayidx437 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space436, i32 0, i64 8
  %236 = load i32, i32* %arrayidx437, align 4
  %237 = load i32, i32* %code, align 4
  %238 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space438 = getelementptr inbounds %struct.charset, %struct.charset* %238, i32 0, i32 3
  %arrayidx439 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space438, i32 0, i64 7
  %239 = load i32, i32* %arrayidx439, align 4
  %div440 = udiv i32 %237, %239
  %240 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space441 = getelementptr inbounds %struct.charset, %struct.charset* %240, i32 0, i32 3
  %arrayidx442 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space441, i32 0, i64 10
  %241 = load i32, i32* %arrayidx442, align 4
  %rem443 = urem i32 %div440, %241
  %add444 = add i32 %236, %rem443
  %shl445 = shl i32 %add444, 16
  %or446 = or i32 %or, %shl445
  %242 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space447 = getelementptr inbounds %struct.charset, %struct.charset* %242, i32 0, i32 3
  %arrayidx448 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space447, i32 0, i64 12
  %243 = load i32, i32* %arrayidx448, align 4
  %244 = load i32, i32* %code, align 4
  %245 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space449 = getelementptr inbounds %struct.charset, %struct.charset* %245, i32 0, i32 3
  %arrayidx450 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space449, i32 0, i64 11
  %246 = load i32, i32* %arrayidx450, align 4
  %div451 = udiv i32 %244, %246
  %add452 = add i32 %243, %div451
  %shl453 = shl i32 %add452, 24
  %or454 = or i32 %or446, %shl453
  br label %cond.end.455

cond.end.455:                                     ; preds = %cond.false.421, %cond.true.418
  %cond456 = phi i32 [ %add420, %cond.true.418 ], [ %or454, %cond.false.421 ]
  store i32 %cond456, i32* %code, align 4
  br label %if.end.457

if.end.457:                                       ; preds = %cond.end.455, %if.end.404
  br label %if.end.553

if.else.458:                                      ; preds = %if.end.395
  %247 = load i32, i32* %c.addr, align 4
  %248 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %zero_index_char459 = getelementptr inbounds %struct.anon, %struct.anon* %248, i32 0, i32 4
  %249 = load i32, i32* %zero_index_char459, align 4
  %cmp460 = icmp eq i32 %247, %249
  br i1 %cmp460, label %cond.true.462, label %cond.false.463

cond.true.462:                                    ; preds = %if.else.458
  br label %cond.end.502

cond.false.463:                                   ; preds = %if.else.458
  %250 = load i32, i32* %c.addr, align 4
  %cmp464 = icmp slt i32 %250, 131072
  br i1 %cmp464, label %cond.true.466, label %cond.false.482

cond.true.466:                                    ; preds = %cond.false.463
  %251 = load i32, i32* %c.addr, align 4
  %idxprom467 = sext i32 %251 to i64
  %252 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %table468 = getelementptr inbounds %struct.anon, %struct.anon* %252, i32 0, i32 5
  %encoder469 = bitcast %union.anon.0* %table468 to [131072 x i16]*
  %arrayidx470 = getelementptr inbounds [131072 x i16], [131072 x i16]* %encoder469, i32 0, i64 %idxprom467
  %253 = load i16, i16* %arrayidx470, align 2
  %conv471 = zext i16 %253 to i32
  %tobool472 = icmp ne i32 %conv471, 0
  br i1 %tobool472, label %cond.true.473, label %cond.false.479

cond.true.473:                                    ; preds = %cond.true.466
  %254 = load i32, i32* %c.addr, align 4
  %idxprom474 = sext i32 %254 to i64
  %255 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %table475 = getelementptr inbounds %struct.anon, %struct.anon* %255, i32 0, i32 5
  %encoder476 = bitcast %union.anon.0* %table475 to [131072 x i16]*
  %arrayidx477 = getelementptr inbounds [131072 x i16], [131072 x i16]* %encoder476, i32 0, i64 %idxprom474
  %256 = load i16, i16* %arrayidx477, align 2
  %conv478 = zext i16 %256 to i32
  br label %cond.end.480

cond.false.479:                                   ; preds = %cond.true.466
  br label %cond.end.480

cond.end.480:                                     ; preds = %cond.false.479, %cond.true.473
  %cond481 = phi i32 [ %conv478, %cond.true.473 ], [ -1, %cond.false.479 ]
  br label %cond.end.500

cond.false.482:                                   ; preds = %cond.false.463
  %257 = load i32, i32* %c.addr, align 4
  %sub483 = sub nsw i32 %257, 65536
  %idxprom484 = sext i32 %sub483 to i64
  %258 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %table485 = getelementptr inbounds %struct.anon, %struct.anon* %258, i32 0, i32 5
  %encoder486 = bitcast %union.anon.0* %table485 to [131072 x i16]*
  %arrayidx487 = getelementptr inbounds [131072 x i16], [131072 x i16]* %encoder486, i32 0, i64 %idxprom484
  %259 = load i16, i16* %arrayidx487, align 2
  %conv488 = zext i16 %259 to i32
  %tobool489 = icmp ne i32 %conv488, 0
  br i1 %tobool489, label %cond.true.490, label %cond.false.497

cond.true.490:                                    ; preds = %cond.false.482
  %260 = load i32, i32* %c.addr, align 4
  %sub491 = sub nsw i32 %260, 65536
  %idxprom492 = sext i32 %sub491 to i64
  %261 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %table493 = getelementptr inbounds %struct.anon, %struct.anon* %261, i32 0, i32 5
  %encoder494 = bitcast %union.anon.0* %table493 to [131072 x i16]*
  %arrayidx495 = getelementptr inbounds [131072 x i16], [131072 x i16]* %encoder494, i32 0, i64 %idxprom492
  %262 = load i16, i16* %arrayidx495, align 2
  %conv496 = zext i16 %262 to i32
  br label %cond.end.498

cond.false.497:                                   ; preds = %cond.false.482
  br label %cond.end.498

cond.end.498:                                     ; preds = %cond.false.497, %cond.true.490
  %cond499 = phi i32 [ %conv496, %cond.true.490 ], [ -1, %cond.false.497 ]
  br label %cond.end.500

cond.end.500:                                     ; preds = %cond.end.498, %cond.end.480
  %cond501 = phi i32 [ %cond481, %cond.end.480 ], [ %cond499, %cond.end.498 ]
  br label %cond.end.502

cond.end.502:                                     ; preds = %cond.end.500, %cond.true.462
  %cond503 = phi i32 [ 0, %cond.true.462 ], [ %cond501, %cond.end.500 ]
  store i32 %cond503, i32* %code, align 4
  %263 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_linear_p504 = getelementptr inbounds %struct.charset, %struct.charset* %263, i32 0, i32 5
  %bf.load505 = load i8, i8* %code_linear_p504, align 8
  %bf.clear506 = and i8 %bf.load505, 1
  %bf.cast507 = trunc i8 %bf.clear506 to i1
  br i1 %bf.cast507, label %cond.true.509, label %cond.false.512

cond.true.509:                                    ; preds = %cond.end.502
  %264 = load i32, i32* %code, align 4
  %265 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %min_code510 = getelementptr inbounds %struct.charset, %struct.charset* %265, i32 0, i32 10
  %266 = load i32, i32* %min_code510, align 4
  %add511 = add i32 %264, %266
  br label %cond.end.551

cond.false.512:                                   ; preds = %cond.end.502
  %267 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %char_index_offset513 = getelementptr inbounds %struct.charset, %struct.charset* %267, i32 0, i32 12
  %268 = load i32, i32* %char_index_offset513, align 4
  %269 = load i32, i32* %code, align 4
  %add514 = add i32 %269, %268
  store i32 %add514, i32* %code, align 4
  %270 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space515 = getelementptr inbounds %struct.charset, %struct.charset* %270, i32 0, i32 3
  %arrayidx516 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space515, i32 0, i64 0
  %271 = load i32, i32* %arrayidx516, align 4
  %272 = load i32, i32* %code, align 4
  %273 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space517 = getelementptr inbounds %struct.charset, %struct.charset* %273, i32 0, i32 3
  %arrayidx518 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space517, i32 0, i64 2
  %274 = load i32, i32* %arrayidx518, align 4
  %rem519 = urem i32 %272, %274
  %add520 = add i32 %271, %rem519
  %275 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space521 = getelementptr inbounds %struct.charset, %struct.charset* %275, i32 0, i32 3
  %arrayidx522 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space521, i32 0, i64 4
  %276 = load i32, i32* %arrayidx522, align 4
  %277 = load i32, i32* %code, align 4
  %278 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space523 = getelementptr inbounds %struct.charset, %struct.charset* %278, i32 0, i32 3
  %arrayidx524 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space523, i32 0, i64 3
  %279 = load i32, i32* %arrayidx524, align 4
  %div525 = udiv i32 %277, %279
  %280 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space526 = getelementptr inbounds %struct.charset, %struct.charset* %280, i32 0, i32 3
  %arrayidx527 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space526, i32 0, i64 6
  %281 = load i32, i32* %arrayidx527, align 4
  %rem528 = urem i32 %div525, %281
  %add529 = add i32 %276, %rem528
  %shl530 = shl i32 %add529, 8
  %or531 = or i32 %add520, %shl530
  %282 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space532 = getelementptr inbounds %struct.charset, %struct.charset* %282, i32 0, i32 3
  %arrayidx533 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space532, i32 0, i64 8
  %283 = load i32, i32* %arrayidx533, align 4
  %284 = load i32, i32* %code, align 4
  %285 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space534 = getelementptr inbounds %struct.charset, %struct.charset* %285, i32 0, i32 3
  %arrayidx535 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space534, i32 0, i64 7
  %286 = load i32, i32* %arrayidx535, align 4
  %div536 = udiv i32 %284, %286
  %287 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space537 = getelementptr inbounds %struct.charset, %struct.charset* %287, i32 0, i32 3
  %arrayidx538 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space537, i32 0, i64 10
  %288 = load i32, i32* %arrayidx538, align 4
  %rem539 = urem i32 %div536, %288
  %add540 = add i32 %283, %rem539
  %shl541 = shl i32 %add540, 16
  %or542 = or i32 %or531, %shl541
  %289 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space543 = getelementptr inbounds %struct.charset, %struct.charset* %289, i32 0, i32 3
  %arrayidx544 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space543, i32 0, i64 12
  %290 = load i32, i32* %arrayidx544, align 4
  %291 = load i32, i32* %code, align 4
  %292 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space545 = getelementptr inbounds %struct.charset, %struct.charset* %292, i32 0, i32 3
  %arrayidx546 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space545, i32 0, i64 11
  %293 = load i32, i32* %arrayidx546, align 4
  %div547 = udiv i32 %291, %293
  %add548 = add i32 %290, %div547
  %shl549 = shl i32 %add548, 24
  %or550 = or i32 %or542, %shl549
  br label %cond.end.551

cond.end.551:                                     ; preds = %cond.false.512, %cond.true.509
  %cond552 = phi i32 [ %add511, %cond.true.509 ], [ %or550, %cond.false.512 ]
  store i32 %cond552, i32* %code, align 4
  br label %if.end.553

if.end.553:                                       ; preds = %cond.end.551, %if.end.457
  br label %if.end.607

if.else.554:                                      ; preds = %if.end.376
  %294 = load i32, i32* %c.addr, align 4
  %295 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_offset556 = getelementptr inbounds %struct.charset, %struct.charset* %295, i32 0, i32 17
  %296 = load i32, i32* %code_offset556, align 4
  %sub557 = sub nsw i32 %294, %296
  store i32 %sub557, i32* %code_index555, align 4
  %297 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_linear_p558 = getelementptr inbounds %struct.charset, %struct.charset* %297, i32 0, i32 5
  %bf.load559 = load i8, i8* %code_linear_p558, align 8
  %bf.clear560 = and i8 %bf.load559, 1
  %bf.cast561 = trunc i8 %bf.clear560 to i1
  br i1 %bf.cast561, label %cond.true.563, label %cond.false.566

cond.true.563:                                    ; preds = %if.else.554
  %298 = load i32, i32* %code_index555, align 4
  %299 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %min_code564 = getelementptr inbounds %struct.charset, %struct.charset* %299, i32 0, i32 10
  %300 = load i32, i32* %min_code564, align 4
  %add565 = add i32 %298, %300
  br label %cond.end.605

cond.false.566:                                   ; preds = %if.else.554
  %301 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %char_index_offset567 = getelementptr inbounds %struct.charset, %struct.charset* %301, i32 0, i32 12
  %302 = load i32, i32* %char_index_offset567, align 4
  %303 = load i32, i32* %code_index555, align 4
  %add568 = add i32 %303, %302
  store i32 %add568, i32* %code_index555, align 4
  %304 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space569 = getelementptr inbounds %struct.charset, %struct.charset* %304, i32 0, i32 3
  %arrayidx570 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space569, i32 0, i64 0
  %305 = load i32, i32* %arrayidx570, align 4
  %306 = load i32, i32* %code_index555, align 4
  %307 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space571 = getelementptr inbounds %struct.charset, %struct.charset* %307, i32 0, i32 3
  %arrayidx572 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space571, i32 0, i64 2
  %308 = load i32, i32* %arrayidx572, align 4
  %rem573 = urem i32 %306, %308
  %add574 = add i32 %305, %rem573
  %309 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space575 = getelementptr inbounds %struct.charset, %struct.charset* %309, i32 0, i32 3
  %arrayidx576 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space575, i32 0, i64 4
  %310 = load i32, i32* %arrayidx576, align 4
  %311 = load i32, i32* %code_index555, align 4
  %312 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space577 = getelementptr inbounds %struct.charset, %struct.charset* %312, i32 0, i32 3
  %arrayidx578 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space577, i32 0, i64 3
  %313 = load i32, i32* %arrayidx578, align 4
  %div579 = udiv i32 %311, %313
  %314 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space580 = getelementptr inbounds %struct.charset, %struct.charset* %314, i32 0, i32 3
  %arrayidx581 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space580, i32 0, i64 6
  %315 = load i32, i32* %arrayidx581, align 4
  %rem582 = urem i32 %div579, %315
  %add583 = add i32 %310, %rem582
  %shl584 = shl i32 %add583, 8
  %or585 = or i32 %add574, %shl584
  %316 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space586 = getelementptr inbounds %struct.charset, %struct.charset* %316, i32 0, i32 3
  %arrayidx587 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space586, i32 0, i64 8
  %317 = load i32, i32* %arrayidx587, align 4
  %318 = load i32, i32* %code_index555, align 4
  %319 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space588 = getelementptr inbounds %struct.charset, %struct.charset* %319, i32 0, i32 3
  %arrayidx589 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space588, i32 0, i64 7
  %320 = load i32, i32* %arrayidx589, align 4
  %div590 = udiv i32 %318, %320
  %321 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space591 = getelementptr inbounds %struct.charset, %struct.charset* %321, i32 0, i32 3
  %arrayidx592 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space591, i32 0, i64 10
  %322 = load i32, i32* %arrayidx592, align 4
  %rem593 = urem i32 %div590, %322
  %add594 = add i32 %317, %rem593
  %shl595 = shl i32 %add594, 16
  %or596 = or i32 %or585, %shl595
  %323 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space597 = getelementptr inbounds %struct.charset, %struct.charset* %323, i32 0, i32 3
  %arrayidx598 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space597, i32 0, i64 12
  %324 = load i32, i32* %arrayidx598, align 4
  %325 = load i32, i32* %code_index555, align 4
  %326 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space599 = getelementptr inbounds %struct.charset, %struct.charset* %326, i32 0, i32 3
  %arrayidx600 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space599, i32 0, i64 11
  %327 = load i32, i32* %arrayidx600, align 4
  %div601 = udiv i32 %325, %327
  %add602 = add i32 %324, %div601
  %shl603 = shl i32 %add602, 24
  %or604 = or i32 %or596, %shl603
  br label %cond.end.605

cond.end.605:                                     ; preds = %cond.false.566, %cond.true.563
  %cond606 = phi i32 [ %add565, %cond.true.563 ], [ %or604, %cond.false.566 ]
  store i32 %cond606, i32* %code, align 4
  br label %if.end.607

if.end.607:                                       ; preds = %cond.end.605, %if.end.553
  %328 = load i32, i32* %code, align 4
  store i32 %328, i32* %retval
  br label %return

return:                                           ; preds = %if.end.607, %if.then.402, %if.then.374, %for.end, %if.then.335, %if.end.188, %if.then.186
  %329 = load i32, i32* %retval
  ret i32 %329
}

; Function Attrs: nounwind uwtable
define i64 @Fdecode_char(i64 %charset, i64 %code_point, i64 %restriction) #0 {
entry:
  %charset.addr = alloca i64, align 8
  %code_point.addr = alloca i64, align 8
  %restriction.addr = alloca i64, align 8
  %c = alloca i32, align 4
  %id = alloca i32, align 4
  %code = alloca i32, align 4
  %charsetp = alloca %struct.charset*, align 8
  %idx = alloca i64, align 8
  store i64 %charset, i64* %charset.addr, align 8
  store i64 %code_point, i64* %code_point.addr, align 8
  store i64 %restriction, i64* %restriction.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %charset.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %do.body
  %1 = load i64, i64* @Vcharset_hash_table, align 8
  %call = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %1)
  %2 = load i64, i64* %charset.addr, align 8
  %call2 = call i64 @hash_lookup(%struct.Lisp_Hash_Table* %call, i64 %2, i64* null)
  store i64 %call2, i64* %idx, align 8
  %cmp3 = icmp slt i64 %call2, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.body
  %call5 = call i64 @builtin_lisp_symbol(i32 262)
  %3 = load i64, i64* %charset.addr, align 8
  %4 = call i64 @wrong_type_argument(i64 %call5, i64 %3) #7
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i64, i64* @Vcharset_hash_table, align 8
  %call6 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %5)
  %6 = load i64, i64* %idx, align 8
  %call7 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call6, i64 %6)
  %call8 = call i64 @AREF(i64 %call7, i64 0)
  %shr = ashr i64 %call8, 2
  %conv9 = trunc i64 %shr to i32
  store i32 %conv9, i32* %id, align 4
  br label %do.end

do.end:                                           ; preds = %if.end
  %7 = load i64, i64* %code_point.addr, align 8
  %call10 = call i64 @cons_to_unsigned(i64 %7, i64 4294967295)
  %conv11 = trunc i64 %call10 to i32
  store i32 %conv11, i32* %code, align 4
  %8 = load %struct.charset*, %struct.charset** @charset_table, align 8
  %9 = load i32, i32* %id, align 4
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds %struct.charset, %struct.charset* %8, i64 %idx.ext
  store %struct.charset* %add.ptr, %struct.charset** %charsetp, align 8
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %10 = load i32, i32* %code, align 4
  %add = add i32 %10, 0
  %cmp12 = icmp ult i32 %add, 128
  br i1 %cmp12, label %land.lhs.true, label %cond.false.21

cond.false:                                       ; preds = %do.end
  %11 = load i32, i32* %code, align 4
  %conv14 = zext i32 %11 to i64
  %add15 = add i64 %conv14, 0
  %cmp16 = icmp ult i64 %add15, 128
  br i1 %cmp16, label %land.lhs.true, label %cond.false.21

land.lhs.true:                                    ; preds = %cond.false, %cond.true
  %12 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %ascii_compatible_p = getelementptr inbounds %struct.charset, %struct.charset* %12, i32 0, i32 5
  %bf.load = load i8, i8* %ascii_compatible_p, align 8
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %cond.true.19, label %cond.false.21

cond.true.19:                                     ; preds = %land.lhs.true
  %13 = load i32, i32* %code, align 4
  %conv20 = zext i32 %13 to i64
  br label %cond.end.93

cond.false.21:                                    ; preds = %land.lhs.true, %cond.false, %cond.true
  %14 = load i32, i32* %code, align 4
  %15 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %min_code = getelementptr inbounds %struct.charset, %struct.charset* %15, i32 0, i32 10
  %16 = load i32, i32* %min_code, align 4
  %cmp22 = icmp ult i32 %14, %16
  br i1 %cmp22, label %cond.true.27, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %cond.false.21
  %17 = load i32, i32* %code, align 4
  %18 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %max_code = getelementptr inbounds %struct.charset, %struct.charset* %18, i32 0, i32 11
  %19 = load i32, i32* %max_code, align 4
  %cmp25 = icmp ugt i32 %17, %19
  br i1 %cmp25, label %cond.true.27, label %cond.false.28

cond.true.27:                                     ; preds = %lor.lhs.false.24, %cond.false.21
  br label %cond.end.91

cond.false.28:                                    ; preds = %lor.lhs.false.24
  %20 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %unified_p = getelementptr inbounds %struct.charset, %struct.charset* %20, i32 0, i32 5
  %bf.load29 = load i8, i8* %unified_p, align 8
  %bf.lshr30 = lshr i8 %bf.load29, 5
  %bf.clear31 = and i8 %bf.lshr30, 1
  %bf.cast32 = trunc i8 %bf.clear31 to i1
  br i1 %bf.cast32, label %cond.true.34, label %cond.false.37

cond.true.34:                                     ; preds = %cond.false.28
  %21 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %22 = load i32, i32* %code, align 4
  %call35 = call i32 @decode_char(%struct.charset* %21, i32 %22)
  %conv36 = sext i32 %call35 to i64
  br label %cond.end.89

cond.false.37:                                    ; preds = %cond.false.28
  %23 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %method = getelementptr inbounds %struct.charset, %struct.charset* %23, i32 0, i32 9
  %24 = load i32, i32* %method, align 4
  %cmp38 = icmp eq i32 %24, 0
  br i1 %cmp38, label %cond.true.40, label %cond.false.51

cond.true.40:                                     ; preds = %cond.false.37
  %25 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %code_linear_p = getelementptr inbounds %struct.charset, %struct.charset* %25, i32 0, i32 5
  %bf.load41 = load i8, i8* %code_linear_p, align 8
  %bf.clear42 = and i8 %bf.load41, 1
  %bf.cast43 = trunc i8 %bf.clear42 to i1
  br i1 %bf.cast43, label %cond.true.45, label %cond.false.48

cond.true.45:                                     ; preds = %cond.true.40
  %26 = load i32, i32* %code, align 4
  %27 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %min_code46 = getelementptr inbounds %struct.charset, %struct.charset* %27, i32 0, i32 10
  %28 = load i32, i32* %min_code46, align 4
  %sub = sub i32 %26, %28
  %29 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %code_offset = getelementptr inbounds %struct.charset, %struct.charset* %29, i32 0, i32 17
  %30 = load i32, i32* %code_offset, align 4
  %add47 = add nsw i32 %sub, %30
  br label %cond.end

cond.false.48:                                    ; preds = %cond.true.40
  %31 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %32 = load i32, i32* %code, align 4
  %call49 = call i32 @decode_char(%struct.charset* %31, i32 %32)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.48, %cond.true.45
  %cond = phi i32 [ %add47, %cond.true.45 ], [ %call49, %cond.false.48 ]
  %conv50 = sext i32 %cond to i64
  br label %cond.end.87

cond.false.51:                                    ; preds = %cond.false.37
  %33 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %method52 = getelementptr inbounds %struct.charset, %struct.charset* %33, i32 0, i32 9
  %34 = load i32, i32* %method52, align 4
  %cmp53 = icmp eq i32 %34, 1
  br i1 %cmp53, label %cond.true.55, label %cond.false.82

cond.true.55:                                     ; preds = %cond.false.51
  %35 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %code_linear_p56 = getelementptr inbounds %struct.charset, %struct.charset* %35, i32 0, i32 5
  %bf.load57 = load i8, i8* %code_linear_p56, align 8
  %bf.clear58 = and i8 %bf.load57, 1
  %bf.cast59 = trunc i8 %bf.clear58 to i1
  br i1 %bf.cast59, label %land.lhs.true.61, label %cond.false.77

land.lhs.true.61:                                 ; preds = %cond.true.55
  %36 = load i64, i64* @Vcharset_hash_table, align 8
  %call62 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %36)
  %37 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %hash_index = getelementptr inbounds %struct.charset, %struct.charset* %37, i32 0, i32 1
  %38 = load i64, i64* %hash_index, align 8
  %call63 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call62, i64 %38)
  %call64 = call i64 @AREF(i64 %call63, i64 4)
  %call65 = call zeroext i1 @VECTORP(i64 %call64)
  br i1 %call65, label %cond.true.67, label %cond.false.77

cond.true.67:                                     ; preds = %land.lhs.true.61
  %39 = load i64, i64* @Vcharset_hash_table, align 8
  %call68 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %39)
  %40 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %hash_index69 = getelementptr inbounds %struct.charset, %struct.charset* %40, i32 0, i32 1
  %41 = load i64, i64* %hash_index69, align 8
  %call70 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call68, i64 %41)
  %call71 = call i64 @AREF(i64 %call70, i64 4)
  %42 = load i32, i32* %code, align 4
  %43 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %min_code72 = getelementptr inbounds %struct.charset, %struct.charset* %43, i32 0, i32 10
  %44 = load i32, i32* %min_code72, align 4
  %sub73 = sub i32 %42, %44
  %conv74 = zext i32 %sub73 to i64
  %call75 = call i64 @AREF(i64 %call71, i64 %conv74)
  %shr76 = ashr i64 %call75, 2
  br label %cond.end.80

cond.false.77:                                    ; preds = %land.lhs.true.61, %cond.true.55
  %45 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %46 = load i32, i32* %code, align 4
  %call78 = call i32 @decode_char(%struct.charset* %45, i32 %46)
  %conv79 = sext i32 %call78 to i64
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.false.77, %cond.true.67
  %cond81 = phi i64 [ %shr76, %cond.true.67 ], [ %conv79, %cond.false.77 ]
  br label %cond.end.85

cond.false.82:                                    ; preds = %cond.false.51
  %47 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %48 = load i32, i32* %code, align 4
  %call83 = call i32 @decode_char(%struct.charset* %47, i32 %48)
  %conv84 = sext i32 %call83 to i64
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.false.82, %cond.end.80
  %cond86 = phi i64 [ %cond81, %cond.end.80 ], [ %conv84, %cond.false.82 ]
  br label %cond.end.87

cond.end.87:                                      ; preds = %cond.end.85, %cond.end
  %cond88 = phi i64 [ %conv50, %cond.end ], [ %cond86, %cond.end.85 ]
  br label %cond.end.89

cond.end.89:                                      ; preds = %cond.end.87, %cond.true.34
  %cond90 = phi i64 [ %conv36, %cond.true.34 ], [ %cond88, %cond.end.87 ]
  br label %cond.end.91

cond.end.91:                                      ; preds = %cond.end.89, %cond.true.27
  %cond92 = phi i64 [ -1, %cond.true.27 ], [ %cond90, %cond.end.89 ]
  br label %cond.end.93

cond.end.93:                                      ; preds = %cond.end.91, %cond.true.19
  %cond94 = phi i64 [ %conv20, %cond.true.19 ], [ %cond92, %cond.end.91 ]
  %conv95 = trunc i64 %cond94 to i32
  store i32 %conv95, i32* %c, align 4
  %49 = load i32, i32* %c, align 4
  %cmp96 = icmp sge i32 %49, 0
  br i1 %cmp96, label %cond.true.98, label %cond.false.101

cond.true.98:                                     ; preds = %cond.end.93
  %50 = load i32, i32* %c, align 4
  %conv99 = sext i32 %50 to i64
  %shl = shl i64 %conv99, 2
  %add100 = add i64 %shl, 2
  br label %cond.end.103

cond.false.101:                                   ; preds = %cond.end.93
  %call102 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.103

cond.end.103:                                     ; preds = %cond.false.101, %cond.true.98
  %cond104 = phi i64 [ %add100, %cond.true.98 ], [ %call102, %cond.false.101 ]
  ret i64 %cond104
}

; Function Attrs: nounwind uwtable
define i64 @Fencode_char(i64 %ch, i64 %charset, i64 %restriction) #0 {
entry:
  %retval = alloca i64, align 8
  %ch.addr = alloca i64, align 8
  %charset.addr = alloca i64, align 8
  %restriction.addr = alloca i64, align 8
  %c = alloca i32, align 4
  %id = alloca i32, align 4
  %code = alloca i32, align 4
  %charsetp = alloca %struct.charset*, align 8
  %idx = alloca i64, align 8
  store i64 %ch, i64* %ch.addr, align 8
  store i64 %charset, i64* %charset.addr, align 8
  store i64 %restriction, i64* %restriction.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %charset.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %do.body
  %1 = load i64, i64* @Vcharset_hash_table, align 8
  %call = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %1)
  %2 = load i64, i64* %charset.addr, align 8
  %call2 = call i64 @hash_lookup(%struct.Lisp_Hash_Table* %call, i64 %2, i64* null)
  store i64 %call2, i64* %idx, align 8
  %cmp3 = icmp slt i64 %call2, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.body
  %call5 = call i64 @builtin_lisp_symbol(i32 262)
  %3 = load i64, i64* %charset.addr, align 8
  %4 = call i64 @wrong_type_argument(i64 %call5, i64 %3) #7
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i64, i64* @Vcharset_hash_table, align 8
  %call6 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %5)
  %6 = load i64, i64* %idx, align 8
  %call7 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call6, i64 %6)
  %call8 = call i64 @AREF(i64 %call7, i64 0)
  %shr = ashr i64 %call8, 2
  %conv9 = trunc i64 %shr to i32
  store i32 %conv9, i32* %id, align 4
  br label %do.end

do.end:                                           ; preds = %if.end
  %7 = load i64, i64* %ch.addr, align 8
  %call10 = call zeroext i1 @NATNUMP(i64 %7)
  br i1 %call10, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %do.end
  %8 = load i64, i64* %ch.addr, align 8
  %shr12 = ashr i64 %8, 2
  %cmp13 = icmp sle i64 %shr12, 4194303
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %do.end
  %call15 = call i64 @builtin_lisp_symbol(i32 260)
  %9 = load i64, i64* %ch.addr, align 8
  %10 = call i64 @wrong_type_argument(i64 %call15, i64 %9) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %11, %cond.true
  %12 = load i64, i64* %ch.addr, align 8
  %shr16 = ashr i64 %12, 2
  %conv17 = trunc i64 %shr16 to i32
  store i32 %conv17, i32* %c, align 4
  %13 = load %struct.charset*, %struct.charset** @charset_table, align 8
  %14 = load i32, i32* %id, align 4
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds %struct.charset, %struct.charset* %13, i64 %idx.ext
  store %struct.charset* %add.ptr, %struct.charset** %charsetp, align 8
  br i1 true, label %cond.true.18, label %cond.false.21

cond.true.18:                                     ; preds = %cond.end
  %15 = load i32, i32* %c, align 4
  %add = add i32 %15, 0
  %cmp19 = icmp ult i32 %add, 128
  br i1 %cmp19, label %land.lhs.true.26, label %cond.false.29

cond.false.21:                                    ; preds = %cond.end
  %16 = load i32, i32* %c, align 4
  %conv22 = sext i32 %16 to i64
  %add23 = add i64 %conv22, 0
  %cmp24 = icmp ult i64 %add23, 128
  br i1 %cmp24, label %land.lhs.true.26, label %cond.false.29

land.lhs.true.26:                                 ; preds = %cond.false.21, %cond.true.18
  %17 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %ascii_compatible_p = getelementptr inbounds %struct.charset, %struct.charset* %17, i32 0, i32 5
  %bf.load = load i8, i8* %ascii_compatible_p, align 8
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %cond.true.28, label %cond.false.29

cond.true.28:                                     ; preds = %land.lhs.true.26
  %18 = load i32, i32* %c, align 4
  br label %cond.end.111

cond.false.29:                                    ; preds = %land.lhs.true.26, %cond.false.21, %cond.true.18
  %19 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %unified_p = getelementptr inbounds %struct.charset, %struct.charset* %19, i32 0, i32 5
  %bf.load30 = load i8, i8* %unified_p, align 8
  %bf.lshr31 = lshr i8 %bf.load30, 5
  %bf.clear32 = and i8 %bf.lshr31, 1
  %bf.cast33 = trunc i8 %bf.clear32 to i1
  br i1 %bf.cast33, label %cond.true.42, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %cond.false.29
  %20 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %method = getelementptr inbounds %struct.charset, %struct.charset* %20, i32 0, i32 9
  %21 = load i32, i32* %method, align 4
  %cmp36 = icmp eq i32 %21, 2
  br i1 %cmp36, label %cond.true.42, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %lor.lhs.false.35
  %22 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %method39 = getelementptr inbounds %struct.charset, %struct.charset* %22, i32 0, i32 9
  %23 = load i32, i32* %method39, align 4
  %cmp40 = icmp eq i32 %23, 3
  br i1 %cmp40, label %cond.true.42, label %cond.false.44

cond.true.42:                                     ; preds = %lor.lhs.false.38, %lor.lhs.false.35, %cond.false.29
  %24 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %25 = load i32, i32* %c, align 4
  %call43 = call i32 @encode_char(%struct.charset* %24, i32 %25)
  br label %cond.end.109

cond.false.44:                                    ; preds = %lor.lhs.false.38
  %26 = load i32, i32* %c, align 4
  %27 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %min_char = getelementptr inbounds %struct.charset, %struct.charset* %27, i32 0, i32 13
  %28 = load i32, i32* %min_char, align 4
  %cmp45 = icmp slt i32 %26, %28
  br i1 %cmp45, label %cond.true.50, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %cond.false.44
  %29 = load i32, i32* %c, align 4
  %30 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %max_char = getelementptr inbounds %struct.charset, %struct.charset* %30, i32 0, i32 14
  %31 = load i32, i32* %max_char, align 4
  %cmp48 = icmp sgt i32 %29, %31
  br i1 %cmp48, label %cond.true.50, label %cond.false.51

cond.true.50:                                     ; preds = %lor.lhs.false.47, %cond.false.44
  %32 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %invalid_code = getelementptr inbounds %struct.charset, %struct.charset* %32, i32 0, i32 15
  %33 = load i32, i32* %invalid_code, align 4
  br label %cond.end.107

cond.false.51:                                    ; preds = %lor.lhs.false.47
  %34 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %method52 = getelementptr inbounds %struct.charset, %struct.charset* %34, i32 0, i32 9
  %35 = load i32, i32* %method52, align 4
  %cmp53 = icmp eq i32 %35, 0
  br i1 %cmp53, label %cond.true.55, label %cond.false.65

cond.true.55:                                     ; preds = %cond.false.51
  %36 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %code_linear_p = getelementptr inbounds %struct.charset, %struct.charset* %36, i32 0, i32 5
  %bf.load56 = load i8, i8* %code_linear_p, align 8
  %bf.clear57 = and i8 %bf.load56, 1
  %bf.cast58 = trunc i8 %bf.clear57 to i1
  br i1 %bf.cast58, label %cond.true.60, label %cond.false.62

cond.true.60:                                     ; preds = %cond.true.55
  %37 = load i32, i32* %c, align 4
  %38 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %code_offset = getelementptr inbounds %struct.charset, %struct.charset* %38, i32 0, i32 17
  %39 = load i32, i32* %code_offset, align 4
  %sub = sub nsw i32 %37, %39
  %40 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %min_code = getelementptr inbounds %struct.charset, %struct.charset* %40, i32 0, i32 10
  %41 = load i32, i32* %min_code, align 4
  %add61 = add i32 %sub, %41
  br label %cond.end.64

cond.false.62:                                    ; preds = %cond.true.55
  %42 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %43 = load i32, i32* %c, align 4
  %call63 = call i32 @encode_char(%struct.charset* %42, i32 %43)
  br label %cond.end.64

cond.end.64:                                      ; preds = %cond.false.62, %cond.true.60
  %cond = phi i32 [ %add61, %cond.true.60 ], [ %call63, %cond.false.62 ]
  br label %cond.end.105

cond.false.65:                                    ; preds = %cond.false.51
  %44 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %method66 = getelementptr inbounds %struct.charset, %struct.charset* %44, i32 0, i32 9
  %45 = load i32, i32* %method66, align 4
  %cmp67 = icmp eq i32 %45, 1
  br i1 %cmp67, label %cond.true.69, label %cond.false.101

cond.true.69:                                     ; preds = %cond.false.65
  %46 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %compact_codes_p = getelementptr inbounds %struct.charset, %struct.charset* %46, i32 0, i32 5
  %bf.load70 = load i8, i8* %compact_codes_p, align 8
  %bf.lshr71 = lshr i8 %bf.load70, 4
  %bf.clear72 = and i8 %bf.lshr71, 1
  %bf.cast73 = trunc i8 %bf.clear72 to i1
  br i1 %bf.cast73, label %land.lhs.true.75, label %cond.false.97

land.lhs.true.75:                                 ; preds = %cond.true.69
  %47 = load i64, i64* @Vcharset_hash_table, align 8
  %call76 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %47)
  %48 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %hash_index = getelementptr inbounds %struct.charset, %struct.charset* %48, i32 0, i32 1
  %49 = load i64, i64* %hash_index, align 8
  %call77 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call76, i64 %49)
  %call78 = call i64 @AREF(i64 %call77, i64 5)
  %call79 = call zeroext i1 @CHAR_TABLE_P(i64 %call78)
  br i1 %call79, label %cond.true.81, label %cond.false.97

cond.true.81:                                     ; preds = %land.lhs.true.75
  %50 = load i64, i64* @Vcharset_hash_table, align 8
  %call82 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %50)
  %51 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %hash_index83 = getelementptr inbounds %struct.charset, %struct.charset* %51, i32 0, i32 1
  %52 = load i64, i64* %hash_index83, align 8
  %call84 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call82, i64 %52)
  %call85 = call i64 @AREF(i64 %call84, i64 5)
  %53 = load i32, i32* %c, align 4
  %call86 = call i64 @CHAR_TABLE_REF(i64 %call85, i32 %53)
  store i64 %call86, i64* @charset_work, align 8
  %54 = load i64, i64* @charset_work, align 8
  %call87 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp88 = icmp eq i64 %54, %call87
  br i1 %cmp88, label %cond.true.90, label %cond.false.92

cond.true.90:                                     ; preds = %cond.true.81
  %55 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %invalid_code91 = getelementptr inbounds %struct.charset, %struct.charset* %55, i32 0, i32 15
  %56 = load i32, i32* %invalid_code91, align 4
  br label %cond.end.95

cond.false.92:                                    ; preds = %cond.true.81
  %57 = load i64, i64* @charset_work, align 8
  %shr93 = ashr i64 %57, 2
  %conv94 = trunc i64 %shr93 to i32
  br label %cond.end.95

cond.end.95:                                      ; preds = %cond.false.92, %cond.true.90
  %cond96 = phi i32 [ %56, %cond.true.90 ], [ %conv94, %cond.false.92 ]
  br label %cond.end.99

cond.false.97:                                    ; preds = %land.lhs.true.75, %cond.true.69
  %58 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %59 = load i32, i32* %c, align 4
  %call98 = call i32 @encode_char(%struct.charset* %58, i32 %59)
  br label %cond.end.99

cond.end.99:                                      ; preds = %cond.false.97, %cond.end.95
  %cond100 = phi i32 [ %cond96, %cond.end.95 ], [ %call98, %cond.false.97 ]
  br label %cond.end.103

cond.false.101:                                   ; preds = %cond.false.65
  %60 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %61 = load i32, i32* %c, align 4
  %call102 = call i32 @encode_char(%struct.charset* %60, i32 %61)
  br label %cond.end.103

cond.end.103:                                     ; preds = %cond.false.101, %cond.end.99
  %cond104 = phi i32 [ %cond100, %cond.end.99 ], [ %call102, %cond.false.101 ]
  br label %cond.end.105

cond.end.105:                                     ; preds = %cond.end.103, %cond.end.64
  %cond106 = phi i32 [ %cond, %cond.end.64 ], [ %cond104, %cond.end.103 ]
  br label %cond.end.107

cond.end.107:                                     ; preds = %cond.end.105, %cond.true.50
  %cond108 = phi i32 [ %33, %cond.true.50 ], [ %cond106, %cond.end.105 ]
  br label %cond.end.109

cond.end.109:                                     ; preds = %cond.end.107, %cond.true.42
  %cond110 = phi i32 [ %call43, %cond.true.42 ], [ %cond108, %cond.end.107 ]
  br label %cond.end.111

cond.end.111:                                     ; preds = %cond.end.109, %cond.true.28
  %cond112 = phi i32 [ %18, %cond.true.28 ], [ %cond110, %cond.end.109 ]
  store i32 %cond112, i32* %code, align 4
  %62 = load i32, i32* %code, align 4
  %63 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %invalid_code113 = getelementptr inbounds %struct.charset, %struct.charset* %63, i32 0, i32 15
  %64 = load i32, i32* %invalid_code113, align 4
  %cmp114 = icmp eq i32 %62, %64
  br i1 %cmp114, label %if.then.116, label %if.end.118

if.then.116:                                      ; preds = %cond.end.111
  %call117 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call117, i64* %retval
  br label %return

if.end.118:                                       ; preds = %cond.end.111
  %65 = load i32, i32* %code, align 4
  %cmp119 = icmp ule i32 0, %65
  br i1 %cmp119, label %land.lhs.true.125, label %lor.lhs.false.121

lor.lhs.false.121:                                ; preds = %if.end.118
  %66 = load i32, i32* %code, align 4
  %conv122 = zext i32 %66 to i64
  %cmp123 = icmp sle i64 -2305843009213693952, %conv122
  br i1 %cmp123, label %land.lhs.true.125, label %cond.false.132

land.lhs.true.125:                                ; preds = %lor.lhs.false.121, %if.end.118
  %67 = load i32, i32* %code, align 4
  %conv126 = zext i32 %67 to i64
  %cmp127 = icmp sle i64 %conv126, 2305843009213693951
  br i1 %cmp127, label %cond.true.129, label %cond.false.132

cond.true.129:                                    ; preds = %land.lhs.true.125
  %68 = load i32, i32* %code, align 4
  %conv130 = zext i32 %68 to i64
  %shl = shl i64 %conv130, 2
  %add131 = add i64 %shl, 2
  br label %cond.end.144

cond.false.132:                                   ; preds = %land.lhs.true.125, %lor.lhs.false.121
  %69 = load i32, i32* %code, align 4
  %mul = mul i32 0, %69
  %sub133 = sub i32 %mul, 1
  %cmp134 = icmp ult i32 %sub133, 0
  br i1 %cmp134, label %cond.true.136, label %cond.false.139

cond.true.136:                                    ; preds = %cond.false.132
  %70 = load i32, i32* %code, align 4
  %conv137 = zext i32 %70 to i64
  %call138 = call i64 @intbig_to_lisp(i64 %conv137)
  br label %cond.end.142

cond.false.139:                                   ; preds = %cond.false.132
  %71 = load i32, i32* %code, align 4
  %conv140 = zext i32 %71 to i64
  %call141 = call i64 @uintbig_to_lisp(i64 %conv140)
  br label %cond.end.142

cond.end.142:                                     ; preds = %cond.false.139, %cond.true.136
  %cond143 = phi i64 [ %call138, %cond.true.136 ], [ %call141, %cond.false.139 ]
  br label %cond.end.144

cond.end.144:                                     ; preds = %cond.end.142, %cond.true.129
  %cond145 = phi i64 [ %add131, %cond.true.129 ], [ %cond143, %cond.end.142 ]
  store i64 %cond145, i64* %retval
  br label %return

return:                                           ; preds = %cond.end.144, %if.then.116
  %72 = load i64, i64* %retval
  ret i64 %72
}

declare i64 @intbig_to_lisp(i64) #1

declare i64 @uintbig_to_lisp(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fmake_char(i64 %charset, i64 %code1, i64 %code2, i64 %code3, i64 %code4) #0 {
entry:
  %charset.addr = alloca i64, align 8
  %code1.addr = alloca i64, align 8
  %code2.addr = alloca i64, align 8
  %code3.addr = alloca i64, align 8
  %code4.addr = alloca i64, align 8
  %id = alloca i32, align 4
  %dimension = alloca i32, align 4
  %charsetp = alloca %struct.charset*, align 8
  %code = alloca i32, align 4
  %c = alloca i32, align 4
  %idx = alloca i64, align 8
  store i64 %charset, i64* %charset.addr, align 8
  store i64 %code1, i64* %code1.addr, align 8
  store i64 %code2, i64* %code2.addr, align 8
  store i64 %code3, i64* %code3.addr, align 8
  store i64 %code4, i64* %code4.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %charset.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %do.body
  %1 = load i64, i64* @Vcharset_hash_table, align 8
  %call = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %1)
  %2 = load i64, i64* %charset.addr, align 8
  %call2 = call i64 @hash_lookup(%struct.Lisp_Hash_Table* %call, i64 %2, i64* null)
  store i64 %call2, i64* %idx, align 8
  %cmp3 = icmp slt i64 %call2, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.body
  %call5 = call i64 @builtin_lisp_symbol(i32 262)
  %3 = load i64, i64* %charset.addr, align 8
  %4 = call i64 @wrong_type_argument(i64 %call5, i64 %3) #7
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i64, i64* @Vcharset_hash_table, align 8
  %call6 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %5)
  %6 = load i64, i64* %idx, align 8
  %call7 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call6, i64 %6)
  %call8 = call i64 @AREF(i64 %call7, i64 0)
  %shr = ashr i64 %call8, 2
  %conv9 = trunc i64 %shr to i32
  store i32 %conv9, i32* %id, align 4
  br label %do.end

do.end:                                           ; preds = %if.end
  %7 = load %struct.charset*, %struct.charset** @charset_table, align 8
  %8 = load i32, i32* %id, align 4
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds %struct.charset, %struct.charset* %7, i64 %idx.ext
  store %struct.charset* %add.ptr, %struct.charset** %charsetp, align 8
  %9 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %dimension10 = getelementptr inbounds %struct.charset, %struct.charset* %9, i32 0, i32 2
  %10 = load i32, i32* %dimension10, align 4
  store i32 %10, i32* %dimension, align 4
  %11 = load i64, i64* %code1.addr, align 8
  %call11 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp12 = icmp eq i64 %11, %call11
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %do.end
  %12 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %ascii_compatible_p = getelementptr inbounds %struct.charset, %struct.charset* %12, i32 0, i32 5
  %bf.load = load i8, i8* %ascii_compatible_p, align 8
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.14
  br label %cond.end

cond.false:                                       ; preds = %if.then.14
  %13 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %min_code = getelementptr inbounds %struct.charset, %struct.charset* %13, i32 0, i32 10
  %14 = load i32, i32* %min_code, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %14, %cond.false ]
  store i32 %cond, i32* %code, align 4
  br label %if.end.91

if.else:                                          ; preds = %do.end
  %15 = load i64, i64* %code1.addr, align 8
  call void @CHECK_NATNUM(i64 %15)
  %16 = load i64, i64* %code1.addr, align 8
  %shr16 = ashr i64 %16, 2
  %cmp17 = icmp sge i64 %shr16, 256
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.else
  %17 = load i64, i64* %code1.addr, align 8
  call void @args_out_of_range(i64 1022, i64 %17) #7
  unreachable

if.end.20:                                        ; preds = %if.else
  %18 = load i64, i64* %code1.addr, align 8
  %shr21 = ashr i64 %18, 2
  %conv22 = trunc i64 %shr21 to i32
  store i32 %conv22, i32* %code, align 4
  %19 = load i32, i32* %dimension, align 4
  %cmp23 = icmp sgt i32 %19, 1
  br i1 %cmp23, label %if.then.25, label %if.end.90

if.then.25:                                       ; preds = %if.end.20
  %20 = load i32, i32* %code, align 4
  %shl = shl i32 %20, 8
  store i32 %shl, i32* %code, align 4
  %21 = load i64, i64* %code2.addr, align 8
  %call26 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp27 = icmp eq i64 %21, %call26
  br i1 %cmp27, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %if.then.25
  %22 = load i32, i32* %dimension, align 4
  %sub = sub nsw i32 %22, 2
  %mul = mul nsw i32 %sub, 4
  %idxprom = sext i32 %mul to i64
  %23 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %code_space = getelementptr inbounds %struct.charset, %struct.charset* %23, i32 0, i32 3
  %arrayidx = getelementptr inbounds [15 x i32], [15 x i32]* %code_space, i32 0, i64 %idxprom
  %24 = load i32, i32* %arrayidx, align 4
  %25 = load i32, i32* %code, align 4
  %or = or i32 %25, %24
  store i32 %or, i32* %code, align 4
  br label %if.end.40

if.else.30:                                       ; preds = %if.then.25
  %26 = load i64, i64* %code2.addr, align 8
  call void @CHECK_NATNUM(i64 %26)
  %27 = load i64, i64* %code2.addr, align 8
  %shr31 = ashr i64 %27, 2
  %cmp32 = icmp sge i64 %shr31, 256
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.else.30
  %28 = load i64, i64* %code2.addr, align 8
  call void @args_out_of_range(i64 1022, i64 %28) #7
  unreachable

if.end.35:                                        ; preds = %if.else.30
  %29 = load i64, i64* %code2.addr, align 8
  %shr36 = ashr i64 %29, 2
  %30 = load i32, i32* %code, align 4
  %conv37 = zext i32 %30 to i64
  %or38 = or i64 %conv37, %shr36
  %conv39 = trunc i64 %or38 to i32
  store i32 %conv39, i32* %code, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.35, %if.then.29
  %31 = load i32, i32* %dimension, align 4
  %cmp41 = icmp sgt i32 %31, 2
  br i1 %cmp41, label %if.then.43, label %if.end.89

if.then.43:                                       ; preds = %if.end.40
  %32 = load i32, i32* %code, align 4
  %shl44 = shl i32 %32, 8
  store i32 %shl44, i32* %code, align 4
  %33 = load i64, i64* %code3.addr, align 8
  %call45 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp46 = icmp eq i64 %33, %call45
  br i1 %cmp46, label %if.then.48, label %if.else.55

if.then.48:                                       ; preds = %if.then.43
  %34 = load i32, i32* %dimension, align 4
  %sub49 = sub nsw i32 %34, 3
  %mul50 = mul nsw i32 %sub49, 4
  %idxprom51 = sext i32 %mul50 to i64
  %35 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %code_space52 = getelementptr inbounds %struct.charset, %struct.charset* %35, i32 0, i32 3
  %arrayidx53 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space52, i32 0, i64 %idxprom51
  %36 = load i32, i32* %arrayidx53, align 4
  %37 = load i32, i32* %code, align 4
  %or54 = or i32 %37, %36
  store i32 %or54, i32* %code, align 4
  br label %if.end.65

if.else.55:                                       ; preds = %if.then.43
  %38 = load i64, i64* %code3.addr, align 8
  call void @CHECK_NATNUM(i64 %38)
  %39 = load i64, i64* %code3.addr, align 8
  %shr56 = ashr i64 %39, 2
  %cmp57 = icmp sge i64 %shr56, 256
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.else.55
  %40 = load i64, i64* %code3.addr, align 8
  call void @args_out_of_range(i64 1022, i64 %40) #7
  unreachable

if.end.60:                                        ; preds = %if.else.55
  %41 = load i64, i64* %code3.addr, align 8
  %shr61 = ashr i64 %41, 2
  %42 = load i32, i32* %code, align 4
  %conv62 = zext i32 %42 to i64
  %or63 = or i64 %conv62, %shr61
  %conv64 = trunc i64 %or63 to i32
  store i32 %conv64, i32* %code, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.60, %if.then.48
  %43 = load i32, i32* %dimension, align 4
  %cmp66 = icmp sgt i32 %43, 3
  br i1 %cmp66, label %if.then.68, label %if.end.88

if.then.68:                                       ; preds = %if.end.65
  %44 = load i32, i32* %code, align 4
  %shl69 = shl i32 %44, 8
  store i32 %shl69, i32* %code, align 4
  %45 = load i64, i64* %code4.addr, align 8
  %call70 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp71 = icmp eq i64 %45, %call70
  br i1 %cmp71, label %if.then.73, label %if.else.77

if.then.73:                                       ; preds = %if.then.68
  %46 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %code_space74 = getelementptr inbounds %struct.charset, %struct.charset* %46, i32 0, i32 3
  %arrayidx75 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space74, i32 0, i64 0
  %47 = load i32, i32* %arrayidx75, align 4
  %48 = load i32, i32* %code, align 4
  %or76 = or i32 %48, %47
  store i32 %or76, i32* %code, align 4
  br label %if.end.87

if.else.77:                                       ; preds = %if.then.68
  %49 = load i64, i64* %code4.addr, align 8
  call void @CHECK_NATNUM(i64 %49)
  %50 = load i64, i64* %code4.addr, align 8
  %shr78 = ashr i64 %50, 2
  %cmp79 = icmp sge i64 %shr78, 256
  br i1 %cmp79, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %if.else.77
  %51 = load i64, i64* %code4.addr, align 8
  call void @args_out_of_range(i64 1022, i64 %51) #7
  unreachable

if.end.82:                                        ; preds = %if.else.77
  %52 = load i64, i64* %code4.addr, align 8
  %shr83 = ashr i64 %52, 2
  %53 = load i32, i32* %code, align 4
  %conv84 = zext i32 %53 to i64
  %or85 = or i64 %conv84, %shr83
  %conv86 = trunc i64 %or85 to i32
  store i32 %conv86, i32* %code, align 4
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.82, %if.then.73
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %if.end.65
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.end.40
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.end.20
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %cond.end
  %54 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %iso_final = getelementptr inbounds %struct.charset, %struct.charset* %54, i32 0, i32 6
  %55 = load i32, i32* %iso_final, align 4
  %cmp92 = icmp sge i32 %55, 0
  br i1 %cmp92, label %if.then.94, label %if.end.96

if.then.94:                                       ; preds = %if.end.91
  %56 = load i32, i32* %code, align 4
  %and95 = and i32 %56, 2139062143
  store i32 %and95, i32* %code, align 4
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.94, %if.end.91
  br i1 true, label %cond.true.97, label %cond.false.100

cond.true.97:                                     ; preds = %if.end.96
  %57 = load i32, i32* %code, align 4
  %add = add i32 %57, 0
  %cmp98 = icmp ult i32 %add, 128
  br i1 %cmp98, label %land.lhs.true, label %cond.false.113

cond.false.100:                                   ; preds = %if.end.96
  %58 = load i32, i32* %code, align 4
  %conv101 = zext i32 %58 to i64
  %add102 = add i64 %conv101, 0
  %cmp103 = icmp ult i64 %add102, 128
  br i1 %cmp103, label %land.lhs.true, label %cond.false.113

land.lhs.true:                                    ; preds = %cond.false.100, %cond.true.97
  %59 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %ascii_compatible_p105 = getelementptr inbounds %struct.charset, %struct.charset* %59, i32 0, i32 5
  %bf.load106 = load i8, i8* %ascii_compatible_p105, align 8
  %bf.lshr107 = lshr i8 %bf.load106, 2
  %bf.clear108 = and i8 %bf.lshr107, 1
  %bf.cast109 = trunc i8 %bf.clear108 to i1
  br i1 %bf.cast109, label %cond.true.111, label %cond.false.113

cond.true.111:                                    ; preds = %land.lhs.true
  %60 = load i32, i32* %code, align 4
  %conv112 = zext i32 %60 to i64
  br label %cond.end.189

cond.false.113:                                   ; preds = %land.lhs.true, %cond.false.100, %cond.true.97
  %61 = load i32, i32* %code, align 4
  %62 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %min_code114 = getelementptr inbounds %struct.charset, %struct.charset* %62, i32 0, i32 10
  %63 = load i32, i32* %min_code114, align 4
  %cmp115 = icmp ult i32 %61, %63
  br i1 %cmp115, label %cond.true.120, label %lor.lhs.false.117

lor.lhs.false.117:                                ; preds = %cond.false.113
  %64 = load i32, i32* %code, align 4
  %65 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %max_code = getelementptr inbounds %struct.charset, %struct.charset* %65, i32 0, i32 11
  %66 = load i32, i32* %max_code, align 4
  %cmp118 = icmp ugt i32 %64, %66
  br i1 %cmp118, label %cond.true.120, label %cond.false.121

cond.true.120:                                    ; preds = %lor.lhs.false.117, %cond.false.113
  br label %cond.end.187

cond.false.121:                                   ; preds = %lor.lhs.false.117
  %67 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %unified_p = getelementptr inbounds %struct.charset, %struct.charset* %67, i32 0, i32 5
  %bf.load122 = load i8, i8* %unified_p, align 8
  %bf.lshr123 = lshr i8 %bf.load122, 5
  %bf.clear124 = and i8 %bf.lshr123, 1
  %bf.cast125 = trunc i8 %bf.clear124 to i1
  br i1 %bf.cast125, label %cond.true.127, label %cond.false.130

cond.true.127:                                    ; preds = %cond.false.121
  %68 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %69 = load i32, i32* %code, align 4
  %call128 = call i32 @decode_char(%struct.charset* %68, i32 %69)
  %conv129 = sext i32 %call128 to i64
  br label %cond.end.185

cond.false.130:                                   ; preds = %cond.false.121
  %70 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %method = getelementptr inbounds %struct.charset, %struct.charset* %70, i32 0, i32 9
  %71 = load i32, i32* %method, align 4
  %cmp131 = icmp eq i32 %71, 0
  br i1 %cmp131, label %cond.true.133, label %cond.false.147

cond.true.133:                                    ; preds = %cond.false.130
  %72 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %code_linear_p = getelementptr inbounds %struct.charset, %struct.charset* %72, i32 0, i32 5
  %bf.load134 = load i8, i8* %code_linear_p, align 8
  %bf.clear135 = and i8 %bf.load134, 1
  %bf.cast136 = trunc i8 %bf.clear135 to i1
  br i1 %bf.cast136, label %cond.true.138, label %cond.false.142

cond.true.138:                                    ; preds = %cond.true.133
  %73 = load i32, i32* %code, align 4
  %74 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %min_code139 = getelementptr inbounds %struct.charset, %struct.charset* %74, i32 0, i32 10
  %75 = load i32, i32* %min_code139, align 4
  %sub140 = sub i32 %73, %75
  %76 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %code_offset = getelementptr inbounds %struct.charset, %struct.charset* %76, i32 0, i32 17
  %77 = load i32, i32* %code_offset, align 4
  %add141 = add nsw i32 %sub140, %77
  br label %cond.end.144

cond.false.142:                                   ; preds = %cond.true.133
  %78 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %79 = load i32, i32* %code, align 4
  %call143 = call i32 @decode_char(%struct.charset* %78, i32 %79)
  br label %cond.end.144

cond.end.144:                                     ; preds = %cond.false.142, %cond.true.138
  %cond145 = phi i32 [ %add141, %cond.true.138 ], [ %call143, %cond.false.142 ]
  %conv146 = sext i32 %cond145 to i64
  br label %cond.end.183

cond.false.147:                                   ; preds = %cond.false.130
  %80 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %method148 = getelementptr inbounds %struct.charset, %struct.charset* %80, i32 0, i32 9
  %81 = load i32, i32* %method148, align 4
  %cmp149 = icmp eq i32 %81, 1
  br i1 %cmp149, label %cond.true.151, label %cond.false.178

cond.true.151:                                    ; preds = %cond.false.147
  %82 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %code_linear_p152 = getelementptr inbounds %struct.charset, %struct.charset* %82, i32 0, i32 5
  %bf.load153 = load i8, i8* %code_linear_p152, align 8
  %bf.clear154 = and i8 %bf.load153, 1
  %bf.cast155 = trunc i8 %bf.clear154 to i1
  br i1 %bf.cast155, label %land.lhs.true.157, label %cond.false.173

land.lhs.true.157:                                ; preds = %cond.true.151
  %83 = load i64, i64* @Vcharset_hash_table, align 8
  %call158 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %83)
  %84 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %hash_index = getelementptr inbounds %struct.charset, %struct.charset* %84, i32 0, i32 1
  %85 = load i64, i64* %hash_index, align 8
  %call159 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call158, i64 %85)
  %call160 = call i64 @AREF(i64 %call159, i64 4)
  %call161 = call zeroext i1 @VECTORP(i64 %call160)
  br i1 %call161, label %cond.true.163, label %cond.false.173

cond.true.163:                                    ; preds = %land.lhs.true.157
  %86 = load i64, i64* @Vcharset_hash_table, align 8
  %call164 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %86)
  %87 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %hash_index165 = getelementptr inbounds %struct.charset, %struct.charset* %87, i32 0, i32 1
  %88 = load i64, i64* %hash_index165, align 8
  %call166 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call164, i64 %88)
  %call167 = call i64 @AREF(i64 %call166, i64 4)
  %89 = load i32, i32* %code, align 4
  %90 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %min_code168 = getelementptr inbounds %struct.charset, %struct.charset* %90, i32 0, i32 10
  %91 = load i32, i32* %min_code168, align 4
  %sub169 = sub i32 %89, %91
  %conv170 = zext i32 %sub169 to i64
  %call171 = call i64 @AREF(i64 %call167, i64 %conv170)
  %shr172 = ashr i64 %call171, 2
  br label %cond.end.176

cond.false.173:                                   ; preds = %land.lhs.true.157, %cond.true.151
  %92 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %93 = load i32, i32* %code, align 4
  %call174 = call i32 @decode_char(%struct.charset* %92, i32 %93)
  %conv175 = sext i32 %call174 to i64
  br label %cond.end.176

cond.end.176:                                     ; preds = %cond.false.173, %cond.true.163
  %cond177 = phi i64 [ %shr172, %cond.true.163 ], [ %conv175, %cond.false.173 ]
  br label %cond.end.181

cond.false.178:                                   ; preds = %cond.false.147
  %94 = load %struct.charset*, %struct.charset** %charsetp, align 8
  %95 = load i32, i32* %code, align 4
  %call179 = call i32 @decode_char(%struct.charset* %94, i32 %95)
  %conv180 = sext i32 %call179 to i64
  br label %cond.end.181

cond.end.181:                                     ; preds = %cond.false.178, %cond.end.176
  %cond182 = phi i64 [ %cond177, %cond.end.176 ], [ %conv180, %cond.false.178 ]
  br label %cond.end.183

cond.end.183:                                     ; preds = %cond.end.181, %cond.end.144
  %cond184 = phi i64 [ %conv146, %cond.end.144 ], [ %cond182, %cond.end.181 ]
  br label %cond.end.185

cond.end.185:                                     ; preds = %cond.end.183, %cond.true.127
  %cond186 = phi i64 [ %conv129, %cond.true.127 ], [ %cond184, %cond.end.183 ]
  br label %cond.end.187

cond.end.187:                                     ; preds = %cond.end.185, %cond.true.120
  %cond188 = phi i64 [ -1, %cond.true.120 ], [ %cond186, %cond.end.185 ]
  br label %cond.end.189

cond.end.189:                                     ; preds = %cond.end.187, %cond.true.111
  %cond190 = phi i64 [ %conv112, %cond.true.111 ], [ %cond188, %cond.end.187 ]
  %conv191 = trunc i64 %cond190 to i32
  store i32 %conv191, i32* %c, align 4
  %96 = load i32, i32* %c, align 4
  %cmp192 = icmp slt i32 %96, 0
  br i1 %cmp192, label %if.then.194, label %if.end.195

if.then.194:                                      ; preds = %cond.end.189
  call void (i8*, ...) @error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0)) #7
  unreachable

if.end.195:                                       ; preds = %cond.end.189
  %97 = load i32, i32* %c, align 4
  %conv196 = sext i32 %97 to i64
  %shl197 = shl i64 %conv196, 2
  %add198 = add i64 %shl197, 2
  ret i64 %add198
}

; Function Attrs: noreturn
declare void @args_out_of_range(i64, i64) #2

; Function Attrs: nounwind uwtable
define %struct.charset* @char_charset(i32 %c, i64 %charset_list, i32* %code_return) #0 {
entry:
  %retval = alloca %struct.charset*, align 8
  %c.addr = alloca i32, align 4
  %charset_list.addr = alloca i64, align 8
  %code_return.addr = alloca i32*, align 8
  %maybe_null = alloca i8, align 1
  %charset = alloca %struct.charset*, align 8
  %code = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  store i64 %charset_list, i64* %charset_list.addr, align 8
  store i32* %code_return, i32** %code_return.addr, align 8
  store i8 0, i8* %maybe_null, align 1
  %0 = load i64, i64* %charset_list.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, i64* @Vcharset_ordered_list, align 8
  store i64 %1, i64* %charset_list.addr, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store i8 1, i8* %maybe_null, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.cond:                                       ; preds = %if.end.111, %if.end
  %2 = load i64, i64* %charset_list.addr, align 8
  %and = and i64 %2, 7
  %conv = trunc i64 %and to i32
  %cmp1 = icmp eq i32 %conv, 3
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.charset*, %struct.charset** @charset_table, align 8
  %4 = load i64, i64* %charset_list.addr, align 8
  %sub = sub nsw i64 %4, 3
  %5 = inttoptr i64 %sub to i8*
  %6 = bitcast i8* %5 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %6, i32 0, i32 0
  %7 = load i64, i64* %car, align 8
  %shr = ashr i64 %7, 2
  %add.ptr = getelementptr inbounds %struct.charset, %struct.charset* %3, i64 %shr
  store %struct.charset* %add.ptr, %struct.charset** %charset, align 8
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %8 = load i32, i32* %c.addr, align 4
  %add = add i32 %8, 0
  %cmp3 = icmp ult i32 %add, 128
  br i1 %cmp3, label %land.lhs.true, label %cond.false.11

cond.false:                                       ; preds = %while.body
  %9 = load i32, i32* %c.addr, align 4
  %conv5 = sext i32 %9 to i64
  %add6 = add i64 %conv5, 0
  %cmp7 = icmp ult i64 %add6, 128
  br i1 %cmp7, label %land.lhs.true, label %cond.false.11

land.lhs.true:                                    ; preds = %cond.false, %cond.true
  %10 = load %struct.charset*, %struct.charset** %charset, align 8
  %ascii_compatible_p = getelementptr inbounds %struct.charset, %struct.charset* %10, i32 0, i32 5
  %bf.load = load i8, i8* %ascii_compatible_p, align 8
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %cond.true.10, label %cond.false.11

cond.true.10:                                     ; preds = %land.lhs.true
  %11 = load i32, i32* %c.addr, align 4
  br label %cond.end.92

cond.false.11:                                    ; preds = %land.lhs.true, %cond.false, %cond.true
  %12 = load %struct.charset*, %struct.charset** %charset, align 8
  %unified_p = getelementptr inbounds %struct.charset, %struct.charset* %12, i32 0, i32 5
  %bf.load12 = load i8, i8* %unified_p, align 8
  %bf.lshr13 = lshr i8 %bf.load12, 5
  %bf.clear14 = and i8 %bf.lshr13, 1
  %bf.cast15 = trunc i8 %bf.clear14 to i1
  br i1 %bf.cast15, label %cond.true.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.false.11
  %13 = load %struct.charset*, %struct.charset** %charset, align 8
  %method = getelementptr inbounds %struct.charset, %struct.charset* %13, i32 0, i32 9
  %14 = load i32, i32* %method, align 4
  %cmp17 = icmp eq i32 %14, 2
  br i1 %cmp17, label %cond.true.23, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %lor.lhs.false
  %15 = load %struct.charset*, %struct.charset** %charset, align 8
  %method20 = getelementptr inbounds %struct.charset, %struct.charset* %15, i32 0, i32 9
  %16 = load i32, i32* %method20, align 4
  %cmp21 = icmp eq i32 %16, 3
  br i1 %cmp21, label %cond.true.23, label %cond.false.25

cond.true.23:                                     ; preds = %lor.lhs.false.19, %lor.lhs.false, %cond.false.11
  %17 = load %struct.charset*, %struct.charset** %charset, align 8
  %18 = load i32, i32* %c.addr, align 4
  %call24 = call i32 @encode_char(%struct.charset* %17, i32 %18)
  br label %cond.end.90

cond.false.25:                                    ; preds = %lor.lhs.false.19
  %19 = load i32, i32* %c.addr, align 4
  %20 = load %struct.charset*, %struct.charset** %charset, align 8
  %min_char = getelementptr inbounds %struct.charset, %struct.charset* %20, i32 0, i32 13
  %21 = load i32, i32* %min_char, align 4
  %cmp26 = icmp slt i32 %19, %21
  br i1 %cmp26, label %cond.true.31, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %cond.false.25
  %22 = load i32, i32* %c.addr, align 4
  %23 = load %struct.charset*, %struct.charset** %charset, align 8
  %max_char = getelementptr inbounds %struct.charset, %struct.charset* %23, i32 0, i32 14
  %24 = load i32, i32* %max_char, align 4
  %cmp29 = icmp sgt i32 %22, %24
  br i1 %cmp29, label %cond.true.31, label %cond.false.32

cond.true.31:                                     ; preds = %lor.lhs.false.28, %cond.false.25
  %25 = load %struct.charset*, %struct.charset** %charset, align 8
  %invalid_code = getelementptr inbounds %struct.charset, %struct.charset* %25, i32 0, i32 15
  %26 = load i32, i32* %invalid_code, align 4
  br label %cond.end.88

cond.false.32:                                    ; preds = %lor.lhs.false.28
  %27 = load %struct.charset*, %struct.charset** %charset, align 8
  %method33 = getelementptr inbounds %struct.charset, %struct.charset* %27, i32 0, i32 9
  %28 = load i32, i32* %method33, align 4
  %cmp34 = icmp eq i32 %28, 0
  br i1 %cmp34, label %cond.true.36, label %cond.false.46

cond.true.36:                                     ; preds = %cond.false.32
  %29 = load %struct.charset*, %struct.charset** %charset, align 8
  %code_linear_p = getelementptr inbounds %struct.charset, %struct.charset* %29, i32 0, i32 5
  %bf.load37 = load i8, i8* %code_linear_p, align 8
  %bf.clear38 = and i8 %bf.load37, 1
  %bf.cast39 = trunc i8 %bf.clear38 to i1
  br i1 %bf.cast39, label %cond.true.41, label %cond.false.44

cond.true.41:                                     ; preds = %cond.true.36
  %30 = load i32, i32* %c.addr, align 4
  %31 = load %struct.charset*, %struct.charset** %charset, align 8
  %code_offset = getelementptr inbounds %struct.charset, %struct.charset* %31, i32 0, i32 17
  %32 = load i32, i32* %code_offset, align 4
  %sub42 = sub nsw i32 %30, %32
  %33 = load %struct.charset*, %struct.charset** %charset, align 8
  %min_code = getelementptr inbounds %struct.charset, %struct.charset* %33, i32 0, i32 10
  %34 = load i32, i32* %min_code, align 4
  %add43 = add i32 %sub42, %34
  br label %cond.end

cond.false.44:                                    ; preds = %cond.true.36
  %35 = load %struct.charset*, %struct.charset** %charset, align 8
  %36 = load i32, i32* %c.addr, align 4
  %call45 = call i32 @encode_char(%struct.charset* %35, i32 %36)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.44, %cond.true.41
  %cond = phi i32 [ %add43, %cond.true.41 ], [ %call45, %cond.false.44 ]
  br label %cond.end.86

cond.false.46:                                    ; preds = %cond.false.32
  %37 = load %struct.charset*, %struct.charset** %charset, align 8
  %method47 = getelementptr inbounds %struct.charset, %struct.charset* %37, i32 0, i32 9
  %38 = load i32, i32* %method47, align 4
  %cmp48 = icmp eq i32 %38, 1
  br i1 %cmp48, label %cond.true.50, label %cond.false.82

cond.true.50:                                     ; preds = %cond.false.46
  %39 = load %struct.charset*, %struct.charset** %charset, align 8
  %compact_codes_p = getelementptr inbounds %struct.charset, %struct.charset* %39, i32 0, i32 5
  %bf.load51 = load i8, i8* %compact_codes_p, align 8
  %bf.lshr52 = lshr i8 %bf.load51, 4
  %bf.clear53 = and i8 %bf.lshr52, 1
  %bf.cast54 = trunc i8 %bf.clear53 to i1
  br i1 %bf.cast54, label %land.lhs.true.56, label %cond.false.78

land.lhs.true.56:                                 ; preds = %cond.true.50
  %40 = load i64, i64* @Vcharset_hash_table, align 8
  %call57 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %40)
  %41 = load %struct.charset*, %struct.charset** %charset, align 8
  %hash_index = getelementptr inbounds %struct.charset, %struct.charset* %41, i32 0, i32 1
  %42 = load i64, i64* %hash_index, align 8
  %call58 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call57, i64 %42)
  %call59 = call i64 @AREF(i64 %call58, i64 5)
  %call60 = call zeroext i1 @CHAR_TABLE_P(i64 %call59)
  br i1 %call60, label %cond.true.62, label %cond.false.78

cond.true.62:                                     ; preds = %land.lhs.true.56
  %43 = load i64, i64* @Vcharset_hash_table, align 8
  %call63 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %43)
  %44 = load %struct.charset*, %struct.charset** %charset, align 8
  %hash_index64 = getelementptr inbounds %struct.charset, %struct.charset* %44, i32 0, i32 1
  %45 = load i64, i64* %hash_index64, align 8
  %call65 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call63, i64 %45)
  %call66 = call i64 @AREF(i64 %call65, i64 5)
  %46 = load i32, i32* %c.addr, align 4
  %call67 = call i64 @CHAR_TABLE_REF(i64 %call66, i32 %46)
  store i64 %call67, i64* @charset_work, align 8
  %47 = load i64, i64* @charset_work, align 8
  %call68 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp69 = icmp eq i64 %47, %call68
  br i1 %cmp69, label %cond.true.71, label %cond.false.73

cond.true.71:                                     ; preds = %cond.true.62
  %48 = load %struct.charset*, %struct.charset** %charset, align 8
  %invalid_code72 = getelementptr inbounds %struct.charset, %struct.charset* %48, i32 0, i32 15
  %49 = load i32, i32* %invalid_code72, align 4
  br label %cond.end.76

cond.false.73:                                    ; preds = %cond.true.62
  %50 = load i64, i64* @charset_work, align 8
  %shr74 = ashr i64 %50, 2
  %conv75 = trunc i64 %shr74 to i32
  br label %cond.end.76

cond.end.76:                                      ; preds = %cond.false.73, %cond.true.71
  %cond77 = phi i32 [ %49, %cond.true.71 ], [ %conv75, %cond.false.73 ]
  br label %cond.end.80

cond.false.78:                                    ; preds = %land.lhs.true.56, %cond.true.50
  %51 = load %struct.charset*, %struct.charset** %charset, align 8
  %52 = load i32, i32* %c.addr, align 4
  %call79 = call i32 @encode_char(%struct.charset* %51, i32 %52)
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.false.78, %cond.end.76
  %cond81 = phi i32 [ %cond77, %cond.end.76 ], [ %call79, %cond.false.78 ]
  br label %cond.end.84

cond.false.82:                                    ; preds = %cond.false.46
  %53 = load %struct.charset*, %struct.charset** %charset, align 8
  %54 = load i32, i32* %c.addr, align 4
  %call83 = call i32 @encode_char(%struct.charset* %53, i32 %54)
  br label %cond.end.84

cond.end.84:                                      ; preds = %cond.false.82, %cond.end.80
  %cond85 = phi i32 [ %cond81, %cond.end.80 ], [ %call83, %cond.false.82 ]
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.end.84, %cond.end
  %cond87 = phi i32 [ %cond, %cond.end ], [ %cond85, %cond.end.84 ]
  br label %cond.end.88

cond.end.88:                                      ; preds = %cond.end.86, %cond.true.31
  %cond89 = phi i32 [ %26, %cond.true.31 ], [ %cond87, %cond.end.86 ]
  br label %cond.end.90

cond.end.90:                                      ; preds = %cond.end.88, %cond.true.23
  %cond91 = phi i32 [ %call24, %cond.true.23 ], [ %cond89, %cond.end.88 ]
  br label %cond.end.92

cond.end.92:                                      ; preds = %cond.end.90, %cond.true.10
  %cond93 = phi i32 [ %11, %cond.true.10 ], [ %cond91, %cond.end.90 ]
  store i32 %cond93, i32* %code, align 4
  %55 = load i32, i32* %code, align 4
  %56 = load %struct.charset*, %struct.charset** %charset, align 8
  %invalid_code94 = getelementptr inbounds %struct.charset, %struct.charset* %56, i32 0, i32 15
  %57 = load i32, i32* %invalid_code94, align 4
  %cmp95 = icmp ne i32 %55, %57
  br i1 %cmp95, label %if.then.97, label %if.end.100

if.then.97:                                       ; preds = %cond.end.92
  %58 = load i32*, i32** %code_return.addr, align 8
  %tobool = icmp ne i32* %58, null
  br i1 %tobool, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %if.then.97
  %59 = load i32, i32* %code, align 4
  %60 = load i32*, i32** %code_return.addr, align 8
  store i32 %59, i32* %60, align 4
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.98, %if.then.97
  %61 = load %struct.charset*, %struct.charset** %charset, align 8
  store %struct.charset* %61, %struct.charset** %retval
  br label %return

if.end.100:                                       ; preds = %cond.end.92
  %62 = load i64, i64* %charset_list.addr, align 8
  %sub101 = sub nsw i64 %62, 3
  %63 = inttoptr i64 %sub101 to i8*
  %64 = bitcast i8* %63 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %64, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %65 = load i64, i64* %cdr, align 8
  store i64 %65, i64* %charset_list.addr, align 8
  %66 = load i8, i8* %maybe_null, align 1
  %tobool102 = trunc i8 %66 to i1
  br i1 %tobool102, label %if.end.111, label %land.lhs.true.103

land.lhs.true.103:                                ; preds = %if.end.100
  %67 = load i32, i32* %c.addr, align 4
  %cmp104 = icmp sle i32 %67, 1114111
  br i1 %cmp104, label %land.lhs.true.106, label %if.end.111

land.lhs.true.106:                                ; preds = %land.lhs.true.103
  %68 = load i64, i64* %charset_list.addr, align 8
  %69 = load i64, i64* @Vcharset_non_preferred_head, align 8
  %cmp107 = icmp eq i64 %68, %69
  br i1 %cmp107, label %if.then.109, label %if.end.111

if.then.109:                                      ; preds = %land.lhs.true.106
  %70 = load %struct.charset*, %struct.charset** @charset_table, align 8
  %71 = load i32, i32* @charset_unicode, align 4
  %idx.ext = sext i32 %71 to i64
  %add.ptr110 = getelementptr inbounds %struct.charset, %struct.charset* %70, i64 %idx.ext
  store %struct.charset* %add.ptr110, %struct.charset** %retval
  br label %return

if.end.111:                                       ; preds = %land.lhs.true.106, %land.lhs.true.103, %if.end.100
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %72 = load i8, i8* %maybe_null, align 1
  %tobool112 = trunc i8 %72 to i1
  br i1 %tobool112, label %cond.true.114, label %cond.false.115

cond.true.114:                                    ; preds = %while.end
  br label %cond.end.126

cond.false.115:                                   ; preds = %while.end
  %73 = load i32, i32* %c.addr, align 4
  %cmp116 = icmp sle i32 %73, 4194175
  br i1 %cmp116, label %cond.true.118, label %cond.false.121

cond.true.118:                                    ; preds = %cond.false.115
  %74 = load %struct.charset*, %struct.charset** @charset_table, align 8
  %75 = load i32, i32* @charset_emacs, align 4
  %idx.ext119 = sext i32 %75 to i64
  %add.ptr120 = getelementptr inbounds %struct.charset, %struct.charset* %74, i64 %idx.ext119
  br label %cond.end.124

cond.false.121:                                   ; preds = %cond.false.115
  %76 = load %struct.charset*, %struct.charset** @charset_table, align 8
  %77 = load i32, i32* @charset_eight_bit, align 4
  %idx.ext122 = sext i32 %77 to i64
  %add.ptr123 = getelementptr inbounds %struct.charset, %struct.charset* %76, i64 %idx.ext122
  br label %cond.end.124

cond.end.124:                                     ; preds = %cond.false.121, %cond.true.118
  %cond125 = phi %struct.charset* [ %add.ptr120, %cond.true.118 ], [ %add.ptr123, %cond.false.121 ]
  br label %cond.end.126

cond.end.126:                                     ; preds = %cond.end.124, %cond.true.114
  %cond127 = phi %struct.charset* [ null, %cond.true.114 ], [ %cond125, %cond.end.124 ]
  store %struct.charset* %cond127, %struct.charset** %retval
  br label %return

return:                                           ; preds = %cond.end.126, %if.then.109, %if.end.99
  %78 = load %struct.charset*, %struct.charset** %retval
  ret %struct.charset* %78
}

; Function Attrs: nounwind uwtable
define i64 @Fsplit_char(i64 %ch) #0 {
entry:
  %ch.addr = alloca i64, align 8
  %charset = alloca %struct.charset*, align 8
  %c = alloca i32, align 4
  %dimension = alloca i32, align 4
  %code = alloca i32, align 4
  %val = alloca i64, align 8
  store i64 %ch, i64* %ch.addr, align 8
  %0 = load i64, i64* %ch.addr, align 8
  %call = call zeroext i1 @NATNUMP(i64 %0)
  br i1 %call, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %ch.addr, align 8
  %shr = ashr i64 %1, 2
  %cmp = icmp sle i64 %shr, 4194303
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 260)
  %2 = load i64, i64* %ch.addr, align 8
  %3 = call i64 @wrong_type_argument(i64 %call1, i64 %2) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %4, %cond.true
  %5 = load i64, i64* %ch.addr, align 8
  %shr2 = ashr i64 %5, 2
  %conv = trunc i64 %shr2 to i32
  store i32 %conv, i32* %c, align 4
  %6 = load i32, i32* %c, align 4
  %cmp3 = icmp slt i32 %6, 128
  br i1 %cmp3, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %cond.end
  %7 = load %struct.charset*, %struct.charset** @charset_table, align 8
  %8 = load i32, i32* @charset_ascii, align 4
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds %struct.charset, %struct.charset* %7, i64 %idx.ext
  br label %cond.end.9

cond.false.6:                                     ; preds = %cond.end
  %9 = load i32, i32* %c, align 4
  %call7 = call i64 @builtin_lisp_symbol(i32 0)
  %call8 = call %struct.charset* @char_charset(i32 %9, i64 %call7, i32* null)
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.6, %cond.true.5
  %cond = phi %struct.charset* [ %add.ptr, %cond.true.5 ], [ %call8, %cond.false.6 ]
  store %struct.charset* %cond, %struct.charset** %charset, align 8
  %10 = load %struct.charset*, %struct.charset** %charset, align 8
  %tobool = icmp ne %struct.charset* %10, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end.9
  call void @emacs_abort() #7
  unreachable

if.end:                                           ; preds = %cond.end.9
  br i1 true, label %cond.true.10, label %cond.false.13

cond.true.10:                                     ; preds = %if.end
  %11 = load i32, i32* %c, align 4
  %add = add i32 %11, 0
  %cmp11 = icmp ult i32 %add, 128
  br i1 %cmp11, label %land.lhs.true.18, label %cond.false.21

cond.false.13:                                    ; preds = %if.end
  %12 = load i32, i32* %c, align 4
  %conv14 = sext i32 %12 to i64
  %add15 = add i64 %conv14, 0
  %cmp16 = icmp ult i64 %add15, 128
  br i1 %cmp16, label %land.lhs.true.18, label %cond.false.21

land.lhs.true.18:                                 ; preds = %cond.false.13, %cond.true.10
  %13 = load %struct.charset*, %struct.charset** %charset, align 8
  %ascii_compatible_p = getelementptr inbounds %struct.charset, %struct.charset* %13, i32 0, i32 5
  %bf.load = load i8, i8* %ascii_compatible_p, align 8
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %land.lhs.true.18
  %14 = load i32, i32* %c, align 4
  br label %cond.end.103

cond.false.21:                                    ; preds = %land.lhs.true.18, %cond.false.13, %cond.true.10
  %15 = load %struct.charset*, %struct.charset** %charset, align 8
  %unified_p = getelementptr inbounds %struct.charset, %struct.charset* %15, i32 0, i32 5
  %bf.load22 = load i8, i8* %unified_p, align 8
  %bf.lshr23 = lshr i8 %bf.load22, 5
  %bf.clear24 = and i8 %bf.lshr23, 1
  %bf.cast25 = trunc i8 %bf.clear24 to i1
  br i1 %bf.cast25, label %cond.true.33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.false.21
  %16 = load %struct.charset*, %struct.charset** %charset, align 8
  %method = getelementptr inbounds %struct.charset, %struct.charset* %16, i32 0, i32 9
  %17 = load i32, i32* %method, align 4
  %cmp27 = icmp eq i32 %17, 2
  br i1 %cmp27, label %cond.true.33, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %lor.lhs.false
  %18 = load %struct.charset*, %struct.charset** %charset, align 8
  %method30 = getelementptr inbounds %struct.charset, %struct.charset* %18, i32 0, i32 9
  %19 = load i32, i32* %method30, align 4
  %cmp31 = icmp eq i32 %19, 3
  br i1 %cmp31, label %cond.true.33, label %cond.false.35

cond.true.33:                                     ; preds = %lor.lhs.false.29, %lor.lhs.false, %cond.false.21
  %20 = load %struct.charset*, %struct.charset** %charset, align 8
  %21 = load i32, i32* %c, align 4
  %call34 = call i32 @encode_char(%struct.charset* %20, i32 %21)
  br label %cond.end.101

cond.false.35:                                    ; preds = %lor.lhs.false.29
  %22 = load i32, i32* %c, align 4
  %23 = load %struct.charset*, %struct.charset** %charset, align 8
  %min_char = getelementptr inbounds %struct.charset, %struct.charset* %23, i32 0, i32 13
  %24 = load i32, i32* %min_char, align 4
  %cmp36 = icmp slt i32 %22, %24
  br i1 %cmp36, label %cond.true.41, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %cond.false.35
  %25 = load i32, i32* %c, align 4
  %26 = load %struct.charset*, %struct.charset** %charset, align 8
  %max_char = getelementptr inbounds %struct.charset, %struct.charset* %26, i32 0, i32 14
  %27 = load i32, i32* %max_char, align 4
  %cmp39 = icmp sgt i32 %25, %27
  br i1 %cmp39, label %cond.true.41, label %cond.false.42

cond.true.41:                                     ; preds = %lor.lhs.false.38, %cond.false.35
  %28 = load %struct.charset*, %struct.charset** %charset, align 8
  %invalid_code = getelementptr inbounds %struct.charset, %struct.charset* %28, i32 0, i32 15
  %29 = load i32, i32* %invalid_code, align 4
  br label %cond.end.99

cond.false.42:                                    ; preds = %lor.lhs.false.38
  %30 = load %struct.charset*, %struct.charset** %charset, align 8
  %method43 = getelementptr inbounds %struct.charset, %struct.charset* %30, i32 0, i32 9
  %31 = load i32, i32* %method43, align 4
  %cmp44 = icmp eq i32 %31, 0
  br i1 %cmp44, label %cond.true.46, label %cond.false.57

cond.true.46:                                     ; preds = %cond.false.42
  %32 = load %struct.charset*, %struct.charset** %charset, align 8
  %code_linear_p = getelementptr inbounds %struct.charset, %struct.charset* %32, i32 0, i32 5
  %bf.load47 = load i8, i8* %code_linear_p, align 8
  %bf.clear48 = and i8 %bf.load47, 1
  %bf.cast49 = trunc i8 %bf.clear48 to i1
  br i1 %bf.cast49, label %cond.true.51, label %cond.false.53

cond.true.51:                                     ; preds = %cond.true.46
  %33 = load i32, i32* %c, align 4
  %34 = load %struct.charset*, %struct.charset** %charset, align 8
  %code_offset = getelementptr inbounds %struct.charset, %struct.charset* %34, i32 0, i32 17
  %35 = load i32, i32* %code_offset, align 4
  %sub = sub nsw i32 %33, %35
  %36 = load %struct.charset*, %struct.charset** %charset, align 8
  %min_code = getelementptr inbounds %struct.charset, %struct.charset* %36, i32 0, i32 10
  %37 = load i32, i32* %min_code, align 4
  %add52 = add i32 %sub, %37
  br label %cond.end.55

cond.false.53:                                    ; preds = %cond.true.46
  %38 = load %struct.charset*, %struct.charset** %charset, align 8
  %39 = load i32, i32* %c, align 4
  %call54 = call i32 @encode_char(%struct.charset* %38, i32 %39)
  br label %cond.end.55

cond.end.55:                                      ; preds = %cond.false.53, %cond.true.51
  %cond56 = phi i32 [ %add52, %cond.true.51 ], [ %call54, %cond.false.53 ]
  br label %cond.end.97

cond.false.57:                                    ; preds = %cond.false.42
  %40 = load %struct.charset*, %struct.charset** %charset, align 8
  %method58 = getelementptr inbounds %struct.charset, %struct.charset* %40, i32 0, i32 9
  %41 = load i32, i32* %method58, align 4
  %cmp59 = icmp eq i32 %41, 1
  br i1 %cmp59, label %cond.true.61, label %cond.false.93

cond.true.61:                                     ; preds = %cond.false.57
  %42 = load %struct.charset*, %struct.charset** %charset, align 8
  %compact_codes_p = getelementptr inbounds %struct.charset, %struct.charset* %42, i32 0, i32 5
  %bf.load62 = load i8, i8* %compact_codes_p, align 8
  %bf.lshr63 = lshr i8 %bf.load62, 4
  %bf.clear64 = and i8 %bf.lshr63, 1
  %bf.cast65 = trunc i8 %bf.clear64 to i1
  br i1 %bf.cast65, label %land.lhs.true.67, label %cond.false.89

land.lhs.true.67:                                 ; preds = %cond.true.61
  %43 = load i64, i64* @Vcharset_hash_table, align 8
  %call68 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %43)
  %44 = load %struct.charset*, %struct.charset** %charset, align 8
  %hash_index = getelementptr inbounds %struct.charset, %struct.charset* %44, i32 0, i32 1
  %45 = load i64, i64* %hash_index, align 8
  %call69 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call68, i64 %45)
  %call70 = call i64 @AREF(i64 %call69, i64 5)
  %call71 = call zeroext i1 @CHAR_TABLE_P(i64 %call70)
  br i1 %call71, label %cond.true.73, label %cond.false.89

cond.true.73:                                     ; preds = %land.lhs.true.67
  %46 = load i64, i64* @Vcharset_hash_table, align 8
  %call74 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %46)
  %47 = load %struct.charset*, %struct.charset** %charset, align 8
  %hash_index75 = getelementptr inbounds %struct.charset, %struct.charset* %47, i32 0, i32 1
  %48 = load i64, i64* %hash_index75, align 8
  %call76 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call74, i64 %48)
  %call77 = call i64 @AREF(i64 %call76, i64 5)
  %49 = load i32, i32* %c, align 4
  %call78 = call i64 @CHAR_TABLE_REF(i64 %call77, i32 %49)
  store i64 %call78, i64* @charset_work, align 8
  %50 = load i64, i64* @charset_work, align 8
  %call79 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp80 = icmp eq i64 %50, %call79
  br i1 %cmp80, label %cond.true.82, label %cond.false.84

cond.true.82:                                     ; preds = %cond.true.73
  %51 = load %struct.charset*, %struct.charset** %charset, align 8
  %invalid_code83 = getelementptr inbounds %struct.charset, %struct.charset* %51, i32 0, i32 15
  %52 = load i32, i32* %invalid_code83, align 4
  br label %cond.end.87

cond.false.84:                                    ; preds = %cond.true.73
  %53 = load i64, i64* @charset_work, align 8
  %shr85 = ashr i64 %53, 2
  %conv86 = trunc i64 %shr85 to i32
  br label %cond.end.87

cond.end.87:                                      ; preds = %cond.false.84, %cond.true.82
  %cond88 = phi i32 [ %52, %cond.true.82 ], [ %conv86, %cond.false.84 ]
  br label %cond.end.91

cond.false.89:                                    ; preds = %land.lhs.true.67, %cond.true.61
  %54 = load %struct.charset*, %struct.charset** %charset, align 8
  %55 = load i32, i32* %c, align 4
  %call90 = call i32 @encode_char(%struct.charset* %54, i32 %55)
  br label %cond.end.91

cond.end.91:                                      ; preds = %cond.false.89, %cond.end.87
  %cond92 = phi i32 [ %cond88, %cond.end.87 ], [ %call90, %cond.false.89 ]
  br label %cond.end.95

cond.false.93:                                    ; preds = %cond.false.57
  %56 = load %struct.charset*, %struct.charset** %charset, align 8
  %57 = load i32, i32* %c, align 4
  %call94 = call i32 @encode_char(%struct.charset* %56, i32 %57)
  br label %cond.end.95

cond.end.95:                                      ; preds = %cond.false.93, %cond.end.91
  %cond96 = phi i32 [ %cond92, %cond.end.91 ], [ %call94, %cond.false.93 ]
  br label %cond.end.97

cond.end.97:                                      ; preds = %cond.end.95, %cond.end.55
  %cond98 = phi i32 [ %cond56, %cond.end.55 ], [ %cond96, %cond.end.95 ]
  br label %cond.end.99

cond.end.99:                                      ; preds = %cond.end.97, %cond.true.41
  %cond100 = phi i32 [ %29, %cond.true.41 ], [ %cond98, %cond.end.97 ]
  br label %cond.end.101

cond.end.101:                                     ; preds = %cond.end.99, %cond.true.33
  %cond102 = phi i32 [ %call34, %cond.true.33 ], [ %cond100, %cond.end.99 ]
  br label %cond.end.103

cond.end.103:                                     ; preds = %cond.end.101, %cond.true.20
  %cond104 = phi i32 [ %14, %cond.true.20 ], [ %cond102, %cond.end.101 ]
  store i32 %cond104, i32* %code, align 4
  %58 = load i32, i32* %code, align 4
  %59 = load %struct.charset*, %struct.charset** %charset, align 8
  %invalid_code105 = getelementptr inbounds %struct.charset, %struct.charset* %59, i32 0, i32 15
  %60 = load i32, i32* %invalid_code105, align 4
  %cmp106 = icmp eq i32 %58, %60
  br i1 %cmp106, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %cond.end.103
  call void @emacs_abort() #7
  unreachable

if.end.109:                                       ; preds = %cond.end.103
  %61 = load %struct.charset*, %struct.charset** %charset, align 8
  %dimension110 = getelementptr inbounds %struct.charset, %struct.charset* %61, i32 0, i32 2
  %62 = load i32, i32* %dimension110, align 4
  store i32 %62, i32* %dimension, align 4
  %call111 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call111, i64* %val, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.109
  %63 = load i32, i32* %dimension, align 4
  %cmp112 = icmp sgt i32 %63, 0
  br i1 %cmp112, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %64 = load i32, i32* %code, align 4
  %and = and i32 %64, 255
  %conv114 = zext i32 %and to i64
  %shl = shl i64 %conv114, 2
  %add115 = add i64 %shl, 2
  %65 = load i64, i64* %val, align 8
  %call116 = call i64 @Fcons(i64 %add115, i64 %65)
  store i64 %call116, i64* %val, align 8
  %66 = load i32, i32* %code, align 4
  %shr117 = lshr i32 %66, 8
  store i32 %shr117, i32* %code, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %67 = load i32, i32* %dimension, align 4
  %dec = add nsw i32 %67, -1
  store i32 %dec, i32* %dimension, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %68 = load i64, i64* @Vcharset_hash_table, align 8
  %call118 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %68)
  %69 = load %struct.charset*, %struct.charset** %charset, align 8
  %hash_index119 = getelementptr inbounds %struct.charset, %struct.charset* %69, i32 0, i32 1
  %70 = load i64, i64* %hash_index119, align 8
  %call120 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call118, i64 %70)
  %call121 = call i64 @AREF(i64 %call120, i64 1)
  %71 = load i64, i64* %val, align 8
  %call122 = call i64 @Fcons(i64 %call121, i64 %71)
  ret i64 %call122
}

; Function Attrs: noreturn
declare void @emacs_abort() #2

; Function Attrs: nounwind uwtable
define i64 @Fchar_charset(i64 %ch, i64 %restriction) #0 {
entry:
  %retval = alloca i64, align 8
  %ch.addr = alloca i64, align 8
  %restriction.addr = alloca i64, align 8
  %charset = alloca %struct.charset*, align 8
  %c = alloca i32, align 4
  %rcharset = alloca %struct.charset*, align 8
  %csid = alloca i32, align 4
  %idx = alloca i64, align 8
  store i64 %ch, i64* %ch.addr, align 8
  store i64 %restriction, i64* %restriction.addr, align 8
  %0 = load i64, i64* %ch.addr, align 8
  %call = call zeroext i1 @NATNUMP(i64 %0)
  br i1 %call, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %ch.addr, align 8
  %shr = ashr i64 %1, 2
  %cmp = icmp sle i64 %shr, 4194303
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 260)
  %2 = load i64, i64* %ch.addr, align 8
  %3 = call i64 @wrong_type_argument(i64 %call1, i64 %2) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %4, %cond.true
  %5 = load i64, i64* %restriction.addr, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp3 = icmp eq i64 %5, %call2
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %6 = load i64, i64* %ch.addr, align 8
  %shr4 = ashr i64 %6, 2
  %cmp5 = icmp slt i64 %shr4, 128
  br i1 %cmp5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %if.then
  %7 = load %struct.charset*, %struct.charset** @charset_table, align 8
  %8 = load i32, i32* @charset_ascii, align 4
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds %struct.charset, %struct.charset* %7, i64 %idx.ext
  br label %cond.end.11

cond.false.7:                                     ; preds = %if.then
  %9 = load i64, i64* %ch.addr, align 8
  %shr8 = ashr i64 %9, 2
  %conv = trunc i64 %shr8 to i32
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  %call10 = call %struct.charset* @char_charset(i32 %conv, i64 %call9, i32* null)
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.false.7, %cond.true.6
  %cond = phi %struct.charset* [ %add.ptr, %cond.true.6 ], [ %call10, %cond.false.7 ]
  store %struct.charset* %cond, %struct.charset** %charset, align 8
  br label %if.end.159

if.else:                                          ; preds = %cond.end
  %10 = load i64, i64* %restriction.addr, align 8
  %and = and i64 %10, 7
  %conv12 = trunc i64 %and to i32
  %cmp13 = icmp eq i32 %conv12, 3
  br i1 %cmp13, label %if.then.15, label %if.end.151

if.then.15:                                       ; preds = %if.else
  %11 = load i64, i64* %ch.addr, align 8
  %shr16 = ashr i64 %11, 2
  %conv17 = trunc i64 %shr16 to i32
  store i32 %conv17, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.15
  %12 = load i64, i64* %restriction.addr, align 8
  %and18 = and i64 %12, 7
  %conv19 = trunc i64 %and18 to i32
  %cmp20 = icmp eq i32 %conv19, 3
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  br label %do.body.22

do.body.22:                                       ; preds = %do.body
  %13 = load i64, i64* %restriction.addr, align 8
  %sub = sub nsw i64 %13, 3
  %14 = inttoptr i64 %sub to i8*
  %15 = bitcast i8* %14 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %15, i32 0, i32 0
  %16 = load i64, i64* %car, align 8
  %and23 = and i64 %16, 7
  %conv24 = trunc i64 %and23 to i32
  %cmp25 = icmp eq i32 %conv24, 0
  br i1 %cmp25, label %lor.lhs.false, label %if.then.33

lor.lhs.false:                                    ; preds = %do.body.22
  %17 = load i64, i64* @Vcharset_hash_table, align 8
  %call27 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %17)
  %18 = load i64, i64* %restriction.addr, align 8
  %sub28 = sub nsw i64 %18, 3
  %19 = inttoptr i64 %sub28 to i8*
  %20 = bitcast i8* %19 to %struct.Lisp_Cons*
  %car29 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %20, i32 0, i32 0
  %21 = load i64, i64* %car29, align 8
  %call30 = call i64 @hash_lookup(%struct.Lisp_Hash_Table* %call27, i64 %21, i64* null)
  store i64 %call30, i64* %idx, align 8
  %cmp31 = icmp slt i64 %call30, 0
  br i1 %cmp31, label %if.then.33, label %if.end

if.then.33:                                       ; preds = %lor.lhs.false, %do.body.22
  %call34 = call i64 @builtin_lisp_symbol(i32 262)
  %22 = load i64, i64* %restriction.addr, align 8
  %sub35 = sub nsw i64 %22, 3
  %23 = inttoptr i64 %sub35 to i8*
  %24 = bitcast i8* %23 to %struct.Lisp_Cons*
  %car36 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %24, i32 0, i32 0
  %25 = load i64, i64* %car36, align 8
  %26 = call i64 @wrong_type_argument(i64 %call34, i64 %25) #7
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %27 = load i64, i64* @Vcharset_hash_table, align 8
  %call37 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %27)
  %28 = load i64, i64* %idx, align 8
  %call38 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call37, i64 %28)
  %call39 = call i64 @AREF(i64 %call38, i64 0)
  %shr40 = ashr i64 %call39, 2
  %conv41 = trunc i64 %shr40 to i32
  store i32 %conv41, i32* %csid, align 4
  br label %do.end

do.end:                                           ; preds = %if.end
  %29 = load %struct.charset*, %struct.charset** @charset_table, align 8
  %30 = load i32, i32* %csid, align 4
  %idx.ext42 = sext i32 %30 to i64
  %add.ptr43 = getelementptr inbounds %struct.charset, %struct.charset* %29, i64 %idx.ext42
  store %struct.charset* %add.ptr43, %struct.charset** %rcharset, align 8
  br label %do.end.44

do.end.44:                                        ; preds = %do.end
  br i1 true, label %cond.true.45, label %cond.false.48

cond.true.45:                                     ; preds = %do.end.44
  %31 = load i32, i32* %c, align 4
  %add = add i32 %31, 0
  %cmp46 = icmp ult i32 %add, 128
  br i1 %cmp46, label %land.lhs.true.53, label %cond.false.56

cond.false.48:                                    ; preds = %do.end.44
  %32 = load i32, i32* %c, align 4
  %conv49 = sext i32 %32 to i64
  %add50 = add i64 %conv49, 0
  %cmp51 = icmp ult i64 %add50, 128
  br i1 %cmp51, label %land.lhs.true.53, label %cond.false.56

land.lhs.true.53:                                 ; preds = %cond.false.48, %cond.true.45
  %33 = load %struct.charset*, %struct.charset** %rcharset, align 8
  %ascii_compatible_p = getelementptr inbounds %struct.charset, %struct.charset* %33, i32 0, i32 5
  %bf.load = load i8, i8* %ascii_compatible_p, align 8
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %cond.true.55, label %cond.false.56

cond.true.55:                                     ; preds = %land.lhs.true.53
  %34 = load i32, i32* %c, align 4
  br label %cond.end.140

cond.false.56:                                    ; preds = %land.lhs.true.53, %cond.false.48, %cond.true.45
  %35 = load %struct.charset*, %struct.charset** %rcharset, align 8
  %unified_p = getelementptr inbounds %struct.charset, %struct.charset* %35, i32 0, i32 5
  %bf.load57 = load i8, i8* %unified_p, align 8
  %bf.lshr58 = lshr i8 %bf.load57, 5
  %bf.clear59 = and i8 %bf.lshr58, 1
  %bf.cast60 = trunc i8 %bf.clear59 to i1
  br i1 %bf.cast60, label %cond.true.69, label %lor.lhs.false.62

lor.lhs.false.62:                                 ; preds = %cond.false.56
  %36 = load %struct.charset*, %struct.charset** %rcharset, align 8
  %method = getelementptr inbounds %struct.charset, %struct.charset* %36, i32 0, i32 9
  %37 = load i32, i32* %method, align 4
  %cmp63 = icmp eq i32 %37, 2
  br i1 %cmp63, label %cond.true.69, label %lor.lhs.false.65

lor.lhs.false.65:                                 ; preds = %lor.lhs.false.62
  %38 = load %struct.charset*, %struct.charset** %rcharset, align 8
  %method66 = getelementptr inbounds %struct.charset, %struct.charset* %38, i32 0, i32 9
  %39 = load i32, i32* %method66, align 4
  %cmp67 = icmp eq i32 %39, 3
  br i1 %cmp67, label %cond.true.69, label %cond.false.71

cond.true.69:                                     ; preds = %lor.lhs.false.65, %lor.lhs.false.62, %cond.false.56
  %40 = load %struct.charset*, %struct.charset** %rcharset, align 8
  %41 = load i32, i32* %c, align 4
  %call70 = call i32 @encode_char(%struct.charset* %40, i32 %41)
  br label %cond.end.138

cond.false.71:                                    ; preds = %lor.lhs.false.65
  %42 = load i32, i32* %c, align 4
  %43 = load %struct.charset*, %struct.charset** %rcharset, align 8
  %min_char = getelementptr inbounds %struct.charset, %struct.charset* %43, i32 0, i32 13
  %44 = load i32, i32* %min_char, align 4
  %cmp72 = icmp slt i32 %42, %44
  br i1 %cmp72, label %cond.true.77, label %lor.lhs.false.74

lor.lhs.false.74:                                 ; preds = %cond.false.71
  %45 = load i32, i32* %c, align 4
  %46 = load %struct.charset*, %struct.charset** %rcharset, align 8
  %max_char = getelementptr inbounds %struct.charset, %struct.charset* %46, i32 0, i32 14
  %47 = load i32, i32* %max_char, align 4
  %cmp75 = icmp sgt i32 %45, %47
  br i1 %cmp75, label %cond.true.77, label %cond.false.78

cond.true.77:                                     ; preds = %lor.lhs.false.74, %cond.false.71
  %48 = load %struct.charset*, %struct.charset** %rcharset, align 8
  %invalid_code = getelementptr inbounds %struct.charset, %struct.charset* %48, i32 0, i32 15
  %49 = load i32, i32* %invalid_code, align 4
  br label %cond.end.136

cond.false.78:                                    ; preds = %lor.lhs.false.74
  %50 = load %struct.charset*, %struct.charset** %rcharset, align 8
  %method79 = getelementptr inbounds %struct.charset, %struct.charset* %50, i32 0, i32 9
  %51 = load i32, i32* %method79, align 4
  %cmp80 = icmp eq i32 %51, 0
  br i1 %cmp80, label %cond.true.82, label %cond.false.94

cond.true.82:                                     ; preds = %cond.false.78
  %52 = load %struct.charset*, %struct.charset** %rcharset, align 8
  %code_linear_p = getelementptr inbounds %struct.charset, %struct.charset* %52, i32 0, i32 5
  %bf.load83 = load i8, i8* %code_linear_p, align 8
  %bf.clear84 = and i8 %bf.load83, 1
  %bf.cast85 = trunc i8 %bf.clear84 to i1
  br i1 %bf.cast85, label %cond.true.87, label %cond.false.90

cond.true.87:                                     ; preds = %cond.true.82
  %53 = load i32, i32* %c, align 4
  %54 = load %struct.charset*, %struct.charset** %rcharset, align 8
  %code_offset = getelementptr inbounds %struct.charset, %struct.charset* %54, i32 0, i32 17
  %55 = load i32, i32* %code_offset, align 4
  %sub88 = sub nsw i32 %53, %55
  %56 = load %struct.charset*, %struct.charset** %rcharset, align 8
  %min_code = getelementptr inbounds %struct.charset, %struct.charset* %56, i32 0, i32 10
  %57 = load i32, i32* %min_code, align 4
  %add89 = add i32 %sub88, %57
  br label %cond.end.92

cond.false.90:                                    ; preds = %cond.true.82
  %58 = load %struct.charset*, %struct.charset** %rcharset, align 8
  %59 = load i32, i32* %c, align 4
  %call91 = call i32 @encode_char(%struct.charset* %58, i32 %59)
  br label %cond.end.92

cond.end.92:                                      ; preds = %cond.false.90, %cond.true.87
  %cond93 = phi i32 [ %add89, %cond.true.87 ], [ %call91, %cond.false.90 ]
  br label %cond.end.134

cond.false.94:                                    ; preds = %cond.false.78
  %60 = load %struct.charset*, %struct.charset** %rcharset, align 8
  %method95 = getelementptr inbounds %struct.charset, %struct.charset* %60, i32 0, i32 9
  %61 = load i32, i32* %method95, align 4
  %cmp96 = icmp eq i32 %61, 1
  br i1 %cmp96, label %cond.true.98, label %cond.false.130

cond.true.98:                                     ; preds = %cond.false.94
  %62 = load %struct.charset*, %struct.charset** %rcharset, align 8
  %compact_codes_p = getelementptr inbounds %struct.charset, %struct.charset* %62, i32 0, i32 5
  %bf.load99 = load i8, i8* %compact_codes_p, align 8
  %bf.lshr100 = lshr i8 %bf.load99, 4
  %bf.clear101 = and i8 %bf.lshr100, 1
  %bf.cast102 = trunc i8 %bf.clear101 to i1
  br i1 %bf.cast102, label %land.lhs.true.104, label %cond.false.126

land.lhs.true.104:                                ; preds = %cond.true.98
  %63 = load i64, i64* @Vcharset_hash_table, align 8
  %call105 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %63)
  %64 = load %struct.charset*, %struct.charset** %rcharset, align 8
  %hash_index = getelementptr inbounds %struct.charset, %struct.charset* %64, i32 0, i32 1
  %65 = load i64, i64* %hash_index, align 8
  %call106 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call105, i64 %65)
  %call107 = call i64 @AREF(i64 %call106, i64 5)
  %call108 = call zeroext i1 @CHAR_TABLE_P(i64 %call107)
  br i1 %call108, label %cond.true.110, label %cond.false.126

cond.true.110:                                    ; preds = %land.lhs.true.104
  %66 = load i64, i64* @Vcharset_hash_table, align 8
  %call111 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %66)
  %67 = load %struct.charset*, %struct.charset** %rcharset, align 8
  %hash_index112 = getelementptr inbounds %struct.charset, %struct.charset* %67, i32 0, i32 1
  %68 = load i64, i64* %hash_index112, align 8
  %call113 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call111, i64 %68)
  %call114 = call i64 @AREF(i64 %call113, i64 5)
  %69 = load i32, i32* %c, align 4
  %call115 = call i64 @CHAR_TABLE_REF(i64 %call114, i32 %69)
  store i64 %call115, i64* @charset_work, align 8
  %70 = load i64, i64* @charset_work, align 8
  %call116 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp117 = icmp eq i64 %70, %call116
  br i1 %cmp117, label %cond.true.119, label %cond.false.121

cond.true.119:                                    ; preds = %cond.true.110
  %71 = load %struct.charset*, %struct.charset** %rcharset, align 8
  %invalid_code120 = getelementptr inbounds %struct.charset, %struct.charset* %71, i32 0, i32 15
  %72 = load i32, i32* %invalid_code120, align 4
  br label %cond.end.124

cond.false.121:                                   ; preds = %cond.true.110
  %73 = load i64, i64* @charset_work, align 8
  %shr122 = ashr i64 %73, 2
  %conv123 = trunc i64 %shr122 to i32
  br label %cond.end.124

cond.end.124:                                     ; preds = %cond.false.121, %cond.true.119
  %cond125 = phi i32 [ %72, %cond.true.119 ], [ %conv123, %cond.false.121 ]
  br label %cond.end.128

cond.false.126:                                   ; preds = %land.lhs.true.104, %cond.true.98
  %74 = load %struct.charset*, %struct.charset** %rcharset, align 8
  %75 = load i32, i32* %c, align 4
  %call127 = call i32 @encode_char(%struct.charset* %74, i32 %75)
  br label %cond.end.128

cond.end.128:                                     ; preds = %cond.false.126, %cond.end.124
  %cond129 = phi i32 [ %cond125, %cond.end.124 ], [ %call127, %cond.false.126 ]
  br label %cond.end.132

cond.false.130:                                   ; preds = %cond.false.94
  %76 = load %struct.charset*, %struct.charset** %rcharset, align 8
  %77 = load i32, i32* %c, align 4
  %call131 = call i32 @encode_char(%struct.charset* %76, i32 %77)
  br label %cond.end.132

cond.end.132:                                     ; preds = %cond.false.130, %cond.end.128
  %cond133 = phi i32 [ %cond129, %cond.end.128 ], [ %call131, %cond.false.130 ]
  br label %cond.end.134

cond.end.134:                                     ; preds = %cond.end.132, %cond.end.92
  %cond135 = phi i32 [ %cond93, %cond.end.92 ], [ %cond133, %cond.end.132 ]
  br label %cond.end.136

cond.end.136:                                     ; preds = %cond.end.134, %cond.true.77
  %cond137 = phi i32 [ %49, %cond.true.77 ], [ %cond135, %cond.end.134 ]
  br label %cond.end.138

cond.end.138:                                     ; preds = %cond.end.136, %cond.true.69
  %cond139 = phi i32 [ %call70, %cond.true.69 ], [ %cond137, %cond.end.136 ]
  br label %cond.end.140

cond.end.140:                                     ; preds = %cond.end.138, %cond.true.55
  %cond141 = phi i32 [ %34, %cond.true.55 ], [ %cond139, %cond.end.138 ]
  %78 = load %struct.charset*, %struct.charset** %rcharset, align 8
  %invalid_code142 = getelementptr inbounds %struct.charset, %struct.charset* %78, i32 0, i32 15
  %79 = load i32, i32* %invalid_code142, align 4
  %cmp143 = icmp ne i32 %cond141, %79
  br i1 %cmp143, label %if.then.145, label %if.end.148

if.then.145:                                      ; preds = %cond.end.140
  %80 = load i64, i64* %restriction.addr, align 8
  %sub146 = sub nsw i64 %80, 3
  %81 = inttoptr i64 %sub146 to i8*
  %82 = bitcast i8* %81 to %struct.Lisp_Cons*
  %car147 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %82, i32 0, i32 0
  %83 = load i64, i64* %car147, align 8
  store i64 %83, i64* %retval
  br label %return

if.end.148:                                       ; preds = %cond.end.140
  br label %for.inc

for.inc:                                          ; preds = %if.end.148
  %84 = load i64, i64* %restriction.addr, align 8
  %sub149 = sub nsw i64 %84, 3
  %85 = inttoptr i64 %sub149 to i8*
  %86 = bitcast i8* %85 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %86, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %87 = load i64, i64* %cdr, align 8
  store i64 %87, i64* %restriction.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call150 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call150, i64* %retval
  br label %return

if.end.151:                                       ; preds = %if.else
  %88 = load i64, i64* %restriction.addr, align 8
  %call152 = call i64 @coding_system_charset_list(i64 %88)
  store i64 %call152, i64* %restriction.addr, align 8
  %89 = load i64, i64* %ch.addr, align 8
  %shr153 = ashr i64 %89, 2
  %conv154 = trunc i64 %shr153 to i32
  %90 = load i64, i64* %restriction.addr, align 8
  %call155 = call %struct.charset* @char_charset(i32 %conv154, i64 %90, i32* null)
  store %struct.charset* %call155, %struct.charset** %charset, align 8
  %91 = load %struct.charset*, %struct.charset** %charset, align 8
  %tobool = icmp ne %struct.charset* %91, null
  br i1 %tobool, label %if.end.158, label %if.then.156

if.then.156:                                      ; preds = %if.end.151
  %call157 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call157, i64* %retval
  br label %return

if.end.158:                                       ; preds = %if.end.151
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.158, %cond.end.11
  %92 = load i64, i64* @Vcharset_hash_table, align 8
  %call160 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %92)
  %93 = load %struct.charset*, %struct.charset** %charset, align 8
  %hash_index161 = getelementptr inbounds %struct.charset, %struct.charset* %93, i32 0, i32 1
  %94 = load i64, i64* %hash_index161, align 8
  %call162 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call160, i64 %94)
  %call163 = call i64 @AREF(i64 %call162, i64 1)
  store i64 %call163, i64* %retval
  br label %return

return:                                           ; preds = %if.end.159, %if.then.156, %for.end, %if.then.145
  %95 = load i64, i64* %retval
  ret i64 %95
}

declare i64 @coding_system_charset_list(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fcharset_after(i64 %pos) #0 {
entry:
  %retval = alloca i64, align 8
  %pos.addr = alloca i64, align 8
  %ch = alloca i64, align 8
  %charset = alloca %struct.charset*, align 8
  store i64 %pos, i64* %pos.addr, align 8
  %0 = load i64, i64* %pos.addr, align 8
  %call = call i64 @Fchar_after(i64 %0)
  store i64 %call, i64* %ch, align 8
  %1 = load i64, i64* %ch, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %and1 = and i32 %conv, -5
  %cmp = icmp eq i32 %and1, 2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %ch, align 8
  store i64 %2, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %ch, align 8
  %shr = ashr i64 %3, 2
  %cmp3 = icmp slt i64 %shr, 128
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %4 = load %struct.charset*, %struct.charset** @charset_table, align 8
  %5 = load i32, i32* @charset_ascii, align 4
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds %struct.charset, %struct.charset* %4, i64 %idx.ext
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %6 = load i64, i64* %ch, align 8
  %shr5 = ashr i64 %6, 2
  %conv6 = trunc i64 %shr5 to i32
  %call7 = call i64 @builtin_lisp_symbol(i32 0)
  %call8 = call %struct.charset* @char_charset(i32 %conv6, i64 %call7, i32* null)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.charset* [ %add.ptr, %cond.true ], [ %call8, %cond.false ]
  store %struct.charset* %cond, %struct.charset** %charset, align 8
  %7 = load i64, i64* @Vcharset_hash_table, align 8
  %call9 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %7)
  %8 = load %struct.charset*, %struct.charset** %charset, align 8
  %hash_index = getelementptr inbounds %struct.charset, %struct.charset* %8, i32 0, i32 1
  %9 = load i64, i64* %hash_index, align 8
  %call10 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call9, i64 %9)
  %call11 = call i64 @AREF(i64 %call10, i64 1)
  store i64 %call11, i64* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %10 = load i64, i64* %retval
  ret i64 %10
}

declare i64 @Fchar_after(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fiso_charset(i64 %dimension, i64 %chars, i64 %final_char) #0 {
entry:
  %dimension.addr = alloca i64, align 8
  %chars.addr = alloca i64, align 8
  %final_char.addr = alloca i64, align 8
  %chars_flag = alloca i8, align 1
  %id = alloca i32, align 4
  store i64 %dimension, i64* %dimension.addr, align 8
  store i64 %chars, i64* %chars.addr, align 8
  store i64 %final_char, i64* %final_char.addr, align 8
  %0 = load i64, i64* %dimension.addr, align 8
  %1 = load i64, i64* %chars.addr, align 8
  %2 = load i64, i64* %final_char.addr, align 8
  %call = call zeroext i1 @check_iso_charset_parameter(i64 %0, i64 %1, i64 %2)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %chars_flag, align 1
  %3 = load i64, i64* %final_char.addr, align 8
  %shr = ashr i64 %3, 2
  %4 = load i8, i8* %chars_flag, align 1
  %tobool = trunc i8 %4 to i1
  %idxprom = zext i1 %tobool to i64
  %5 = load i64, i64* %dimension.addr, align 8
  %shr1 = ashr i64 %5, 2
  %sub = sub nsw i64 %shr1, 1
  %arrayidx = getelementptr inbounds [3 x [2 x [128 x i32]]], [3 x [2 x [128 x i32]]]* @iso_charset_table, i32 0, i64 %sub
  %arrayidx2 = getelementptr inbounds [2 x [128 x i32]], [2 x [128 x i32]]* %arrayidx, i32 0, i64 %idxprom
  %arrayidx3 = getelementptr inbounds [128 x i32], [128 x i32]* %arrayidx2, i32 0, i64 %shr
  %6 = load i32, i32* %arrayidx3, align 4
  store i32 %6, i32* %id, align 4
  %7 = load i32, i32* %id, align 4
  %cmp = icmp sge i32 %7, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load i64, i64* @Vcharset_hash_table, align 8
  %call4 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %8)
  %9 = load %struct.charset*, %struct.charset** @charset_table, align 8
  %10 = load i32, i32* %id, align 4
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds %struct.charset, %struct.charset* %9, i64 %idx.ext
  %hash_index = getelementptr inbounds %struct.charset, %struct.charset* %add.ptr, i32 0, i32 1
  %11 = load i64, i64* %hash_index, align 8
  %call5 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call4, i64 %11)
  %call6 = call i64 @AREF(i64 %call5, i64 1)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call7 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call6, %cond.true ], [ %call7, %cond.false ]
  ret i64 %cond
}

; Function Attrs: nounwind uwtable
define i64 @Fclear_charset_maps() #0 {
entry:
  %0 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %tobool = icmp ne %struct.anon* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %2 = bitcast %struct.anon* %1 to i8*
  call void @xfree(i8* %2)
  store %struct.anon* null, %struct.anon** @temp_charset_work, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @Vchar_unify_table, align 8
  %call = call zeroext i1 @CHAR_TABLE_P(i64 %3)
  br i1 %call, label %if.then.1, label %if.end.4

if.then.1:                                        ; preds = %if.end
  %4 = load i64, i64* @Vchar_unify_table, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %call3 = call i64 @Foptimize_char_table(i64 %4, i64 %call2)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.1, %if.end
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call5
}

declare void @xfree(i8*) #1

declare i64 @Foptimize_char_table(i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fcharset_priority_list(i64 %highestp) #0 {
entry:
  %retval = alloca i64, align 8
  %highestp.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %list = alloca i64, align 8
  store i64 %highestp, i64* %highestp.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %val, align 8
  %0 = load i64, i64* @Vcharset_ordered_list, align 8
  store i64 %0, i64* %list, align 8
  %1 = load i64, i64* %highestp.addr, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %1, %call1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i64, i64* @Vcharset_hash_table, align 8
  %call2 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %2)
  %3 = load %struct.charset*, %struct.charset** @charset_table, align 8
  %4 = load i64, i64* %list, align 8
  %call3 = call i64 @Fcar(i64 %4)
  %shr = ashr i64 %call3, 2
  %add.ptr = getelementptr inbounds %struct.charset, %struct.charset* %3, i64 %shr
  %hash_index = getelementptr inbounds %struct.charset, %struct.charset* %add.ptr, i32 0, i32 1
  %5 = load i64, i64* %hash_index, align 8
  %call4 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call2, i64 %5)
  %call5 = call i64 @AREF(i64 %call4, i64 1)
  store i64 %call5, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %6 = load i64, i64* %list, align 8
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp7 = icmp eq i64 %6, %call6
  %lnot = xor i1 %cmp7, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i64, i64* @Vcharset_hash_table, align 8
  %call8 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %7)
  %8 = load %struct.charset*, %struct.charset** @charset_table, align 8
  %9 = load i64, i64* %list, align 8
  %sub = sub nsw i64 %9, 3
  %10 = inttoptr i64 %sub to i8*
  %11 = bitcast i8* %10 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %11, i32 0, i32 0
  %12 = load i64, i64* %car, align 8
  %shr9 = ashr i64 %12, 2
  %add.ptr10 = getelementptr inbounds %struct.charset, %struct.charset* %8, i64 %shr9
  %hash_index11 = getelementptr inbounds %struct.charset, %struct.charset* %add.ptr10, i32 0, i32 1
  %13 = load i64, i64* %hash_index11, align 8
  %call12 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call8, i64 %13)
  %call13 = call i64 @AREF(i64 %call12, i64 1)
  %14 = load i64, i64* %val, align 8
  %call14 = call i64 @Fcons(i64 %call13, i64 %14)
  store i64 %call14, i64* %val, align 8
  %15 = load i64, i64* %list, align 8
  %sub15 = sub nsw i64 %15, 3
  %16 = inttoptr i64 %sub15 to i8*
  %17 = bitcast i8* %16 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %17, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %18 = load i64, i64* %cdr, align 8
  store i64 %18, i64* %list, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %19 = load i64, i64* %val, align 8
  %call16 = call i64 @Fnreverse(i64 %19)
  store i64 %call16, i64* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %20 = load i64, i64* %retval
  ret i64 %20
}

declare i64 @Fnreverse(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fset_charset_priority(i64 %nargs, i64* %args) #0 {
entry:
  %nargs.addr = alloca i64, align 8
  %args.addr = alloca i64*, align 8
  %new_head = alloca i64, align 8
  %old_list = alloca i64, align 8
  %list_2022 = alloca i64, align 8
  %list_emacs_mule = alloca i64, align 8
  %i = alloca i64, align 8
  %id = alloca i32, align 4
  %idx = alloca i64, align 8
  %.compoundliteral = alloca [2 x i64], align 8
  %charset = alloca %struct.charset*, align 8
  store i64 %nargs, i64* %nargs.addr, align 8
  store i64* %args, i64** %args.addr, align 8
  %0 = load i64, i64* @Vcharset_ordered_list, align 8
  %call = call i64 @Fcopy_sequence(i64 %0)
  store i64 %call, i64* %old_list, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* %new_head, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %i, align 8
  %2 = load i64, i64* %nargs.addr, align 8
  %cmp = icmp slt i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %3 = load i64, i64* %i, align 8
  %4 = load i64*, i64** %args.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %4, i64 %3
  %5 = load i64, i64* %arrayidx, align 8
  %and = and i64 %5, 7
  %conv = trunc i64 %and to i32
  %cmp2 = icmp eq i32 %conv, 0
  br i1 %cmp2, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %do.body
  %6 = load i64, i64* @Vcharset_hash_table, align 8
  %call4 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %6)
  %7 = load i64, i64* %i, align 8
  %8 = load i64*, i64** %args.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, i64* %8, i64 %7
  %9 = load i64, i64* %arrayidx5, align 8
  %call6 = call i64 @hash_lookup(%struct.Lisp_Hash_Table* %call4, i64 %9, i64* null)
  store i64 %call6, i64* %idx, align 8
  %cmp7 = icmp slt i64 %call6, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.body
  %call9 = call i64 @builtin_lisp_symbol(i32 262)
  %10 = load i64, i64* %i, align 8
  %11 = load i64*, i64** %args.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, i64* %11, i64 %10
  %12 = load i64, i64* %arrayidx10, align 8
  %13 = call i64 @wrong_type_argument(i64 %call9, i64 %12) #7
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %14 = load i64, i64* @Vcharset_hash_table, align 8
  %call11 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %14)
  %15 = load i64, i64* %idx, align 8
  %call12 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call11, i64 %15)
  %call13 = call i64 @AREF(i64 %call12, i64 0)
  %shr = ashr i64 %call13, 2
  %conv14 = trunc i64 %shr to i32
  store i32 %conv14, i32* %id, align 4
  br label %do.end

do.end:                                           ; preds = %if.end
  %16 = load i32, i32* %id, align 4
  %conv15 = sext i32 %16 to i64
  %shl = shl i64 %conv15, 2
  %add = add i64 %shl, 2
  %17 = load i64, i64* %old_list, align 8
  %call16 = call i64 @Fmemq(i64 %add, i64 %17)
  %call17 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp18 = icmp eq i64 %call16, %call17
  br i1 %cmp18, label %if.end.29, label %if.then.20

if.then.20:                                       ; preds = %do.end
  %18 = load i32, i32* %id, align 4
  %conv21 = sext i32 %18 to i64
  %shl22 = shl i64 %conv21, 2
  %add23 = add i64 %shl22, 2
  %19 = load i64, i64* %old_list, align 8
  %call24 = call i64 @Fdelq(i64 %add23, i64 %19)
  store i64 %call24, i64* %old_list, align 8
  %20 = load i32, i32* %id, align 4
  %conv25 = sext i32 %20 to i64
  %shl26 = shl i64 %conv25, 2
  %add27 = add i64 %shl26, 2
  %21 = load i64, i64* %new_head, align 8
  %call28 = call i64 @Fcons(i64 %add27, i64 %21)
  store i64 %call28, i64* %new_head, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.20, %do.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.29
  %22 = load i64, i64* %i, align 8
  %inc = add nsw i64 %22, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i64, i64* %old_list, align 8
  store i64 %23, i64* @Vcharset_non_preferred_head, align 8
  %arrayinit.begin = getelementptr inbounds [2 x i64], [2 x i64]* %.compoundliteral, i64 0, i64 0
  %24 = load i64, i64* %new_head, align 8
  %call30 = call i64 @Fnreverse(i64 %24)
  store i64 %call30, i64* %arrayinit.begin
  %arrayinit.element = getelementptr inbounds i64, i64* %arrayinit.begin, i64 1
  %25 = load i64, i64* %old_list, align 8
  store i64 %25, i64* %arrayinit.element
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %.compoundliteral, i32 0, i32 0
  %call31 = call i64 @Fnconc(i64 2, i64* %arraydecay)
  store i64 %call31, i64* @Vcharset_ordered_list, align 8
  %26 = load i64, i64* @charset_ordered_list_tick, align 8
  %inc32 = add i64 %26, 1
  store i64 %inc32, i64* @charset_ordered_list_tick, align 8
  store i32 -1, i32* @charset_unibyte, align 4
  %27 = load i64, i64* @Vcharset_ordered_list, align 8
  store i64 %27, i64* %old_list, align 8
  %call33 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call33, i64* %list_emacs_mule, align 8
  store i64 %call33, i64* %list_2022, align 8
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.76, %for.end
  %28 = load i64, i64* %old_list, align 8
  %and35 = and i64 %28, 7
  %conv36 = trunc i64 %and35 to i32
  %cmp37 = icmp eq i32 %conv36, 3
  br i1 %cmp37, label %for.body.39, label %for.end.78

for.body.39:                                      ; preds = %for.cond.34
  %29 = load i64, i64* %old_list, align 8
  %sub = sub nsw i64 %29, 3
  %30 = inttoptr i64 %sub to i8*
  %31 = bitcast i8* %30 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %31, i32 0, i32 0
  %32 = load i64, i64* %car, align 8
  %33 = load i64, i64* @Viso_2022_charset_list, align 8
  %call40 = call i64 @Fmemq(i64 %32, i64 %33)
  %call41 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp42 = icmp eq i64 %call40, %call41
  br i1 %cmp42, label %if.end.48, label %if.then.44

if.then.44:                                       ; preds = %for.body.39
  %34 = load i64, i64* %old_list, align 8
  %sub45 = sub nsw i64 %34, 3
  %35 = inttoptr i64 %sub45 to i8*
  %36 = bitcast i8* %35 to %struct.Lisp_Cons*
  %car46 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %36, i32 0, i32 0
  %37 = load i64, i64* %car46, align 8
  %38 = load i64, i64* %list_2022, align 8
  %call47 = call i64 @Fcons(i64 %37, i64 %38)
  store i64 %call47, i64* %list_2022, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.44, %for.body.39
  %39 = load i64, i64* %old_list, align 8
  %sub49 = sub nsw i64 %39, 3
  %40 = inttoptr i64 %sub49 to i8*
  %41 = bitcast i8* %40 to %struct.Lisp_Cons*
  %car50 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %41, i32 0, i32 0
  %42 = load i64, i64* %car50, align 8
  %43 = load i64, i64* @Vemacs_mule_charset_list, align 8
  %call51 = call i64 @Fmemq(i64 %42, i64 %43)
  %call52 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp53 = icmp eq i64 %call51, %call52
  br i1 %cmp53, label %if.end.59, label %if.then.55

if.then.55:                                       ; preds = %if.end.48
  %44 = load i64, i64* %old_list, align 8
  %sub56 = sub nsw i64 %44, 3
  %45 = inttoptr i64 %sub56 to i8*
  %46 = bitcast i8* %45 to %struct.Lisp_Cons*
  %car57 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %46, i32 0, i32 0
  %47 = load i64, i64* %car57, align 8
  %48 = load i64, i64* %list_emacs_mule, align 8
  %call58 = call i64 @Fcons(i64 %47, i64 %48)
  store i64 %call58, i64* %list_emacs_mule, align 8
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.55, %if.end.48
  %49 = load i32, i32* @charset_unibyte, align 4
  %cmp60 = icmp slt i32 %49, 0
  br i1 %cmp60, label %if.then.62, label %if.end.75

if.then.62:                                       ; preds = %if.end.59
  %50 = load %struct.charset*, %struct.charset** @charset_table, align 8
  %51 = load i64, i64* %old_list, align 8
  %sub63 = sub nsw i64 %51, 3
  %52 = inttoptr i64 %sub63 to i8*
  %53 = bitcast i8* %52 to %struct.Lisp_Cons*
  %car64 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %53, i32 0, i32 0
  %54 = load i64, i64* %car64, align 8
  %shr65 = ashr i64 %54, 2
  %add.ptr = getelementptr inbounds %struct.charset, %struct.charset* %50, i64 %shr65
  store %struct.charset* %add.ptr, %struct.charset** %charset, align 8
  %55 = load %struct.charset*, %struct.charset** %charset, align 8
  %dimension = getelementptr inbounds %struct.charset, %struct.charset* %55, i32 0, i32 2
  %56 = load i32, i32* %dimension, align 4
  %cmp66 = icmp eq i32 %56, 1
  br i1 %cmp66, label %land.lhs.true, label %if.end.74

land.lhs.true:                                    ; preds = %if.then.62
  %57 = load %struct.charset*, %struct.charset** %charset, align 8
  %ascii_compatible_p = getelementptr inbounds %struct.charset, %struct.charset* %57, i32 0, i32 5
  %bf.load = load i8, i8* %ascii_compatible_p, align 8
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %land.lhs.true.69, label %if.end.74

land.lhs.true.69:                                 ; preds = %land.lhs.true
  %58 = load %struct.charset*, %struct.charset** %charset, align 8
  %max_char = getelementptr inbounds %struct.charset, %struct.charset* %58, i32 0, i32 14
  %59 = load i32, i32* %max_char, align 4
  %cmp70 = icmp sge i32 %59, 128
  br i1 %cmp70, label %if.then.72, label %if.end.74

if.then.72:                                       ; preds = %land.lhs.true.69
  %60 = load %struct.charset*, %struct.charset** %charset, align 8
  %id73 = getelementptr inbounds %struct.charset, %struct.charset* %60, i32 0, i32 0
  %61 = load i32, i32* %id73, align 4
  store i32 %61, i32* @charset_unibyte, align 4
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.72, %land.lhs.true.69, %land.lhs.true, %if.then.62
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.end.59
  br label %for.inc.76

for.inc.76:                                       ; preds = %if.end.75
  %62 = load i64, i64* %old_list, align 8
  %sub77 = sub nsw i64 %62, 3
  %63 = inttoptr i64 %sub77 to i8*
  %64 = bitcast i8* %63 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %64, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %65 = load i64, i64* %cdr, align 8
  store i64 %65, i64* %old_list, align 8
  br label %for.cond.34

for.end.78:                                       ; preds = %for.cond.34
  %66 = load i64, i64* %list_2022, align 8
  %call79 = call i64 @Fnreverse(i64 %66)
  store i64 %call79, i64* @Viso_2022_charset_list, align 8
  %67 = load i64, i64* %list_emacs_mule, align 8
  %call80 = call i64 @Fnreverse(i64 %67)
  store i64 %call80, i64* @Vemacs_mule_charset_list, align 8
  %68 = load i32, i32* @charset_unibyte, align 4
  %cmp81 = icmp slt i32 %68, 0
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %for.end.78
  %69 = load i32, i32* @charset_iso_8859_1, align 4
  store i32 %69, i32* @charset_unibyte, align 4
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.83, %for.end.78
  %call85 = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call85
}

declare i64 @Fmemq(i64, i64) #1

declare i64 @Fdelq(i64, i64) #1

declare i64 @Fnconc(i64, i64*) #1

; Function Attrs: nounwind uwtable
define i64 @Fcharset_id_internal(i64 %charset) #0 {
entry:
  %charset.addr = alloca i64, align 8
  %id = alloca i32, align 4
  %idx = alloca i64, align 8
  store i64 %charset, i64* %charset.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %charset.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %do.body
  %1 = load i64, i64* @Vcharset_hash_table, align 8
  %call = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %1)
  %2 = load i64, i64* %charset.addr, align 8
  %call2 = call i64 @hash_lookup(%struct.Lisp_Hash_Table* %call, i64 %2, i64* null)
  store i64 %call2, i64* %idx, align 8
  %cmp3 = icmp slt i64 %call2, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.body
  %call5 = call i64 @builtin_lisp_symbol(i32 262)
  %3 = load i64, i64* %charset.addr, align 8
  %4 = call i64 @wrong_type_argument(i64 %call5, i64 %3) #7
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i64, i64* @Vcharset_hash_table, align 8
  %call6 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %5)
  %6 = load i64, i64* %idx, align 8
  %call7 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call6, i64 %6)
  %call8 = call i64 @AREF(i64 %call7, i64 0)
  %shr = ashr i64 %call8, 2
  %conv9 = trunc i64 %shr to i32
  store i32 %conv9, i32* %id, align 4
  br label %do.end

do.end:                                           ; preds = %if.end
  %7 = load i32, i32* %id, align 4
  %conv10 = sext i32 %7 to i64
  %shl = shl i64 %conv10, 2
  %add = add i64 %shl, 2
  ret i64 %add
}

; Function Attrs: nounwind uwtable
define i64 @Fsort_charsets(i64 %charsets) #0 {
entry:
  %retval = alloca i64, align 8
  %charsets.addr = alloca i64, align 8
  %len = alloca i64, align 8
  %n = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %done = alloca i32, align 4
  %tail = alloca i64, align 8
  %elt = alloca i64, align 8
  %attrs = alloca i64, align 8
  %sort_data = alloca %struct.charset_sort_data*, align 8
  %id = alloca i32, align 4
  %min_id = alloca i32, align 4
  %max_id = alloca i32, align 4
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  store i64 %charsets, i64* %charsets.addr, align 8
  %0 = load i64, i64* %charsets.addr, align 8
  %call = call i64 @Flength(i64 %0)
  store i64 %call, i64* %len, align 8
  %1 = load i64, i64* %len, align 8
  %shr = ashr i64 %1, 2
  store i64 %shr, i64* %n, align 8
  store i32 2147483647, i32* %min_id, align 4
  store i32 -2147483648, i32* %max_id, align 4
  store i64 16384, i64* %sa_avail, align 8
  %call1 = call i64 @SPECPDL_INDEX()
  store i64 %call1, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  %2 = load i64, i64* %n, align 8
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call2, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %3 = load i64, i64* %n, align 8
  %4 = load i64, i64* %sa_avail, align 8
  %div = udiv i64 %4, 24
  %div3 = udiv i64 %div, 1
  %cmp4 = icmp ule i64 %3, %div3
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  %5 = load i64, i64* %n, align 8
  %mul = mul i64 24, %5
  %6 = load i64, i64* %sa_avail, align 8
  %sub = sub i64 %6, %mul
  store i64 %sub, i64* %sa_avail, align 8
  %7 = load i64, i64* %n, align 8
  %mul6 = mul i64 24, %7
  %8 = alloca i8, i64 %mul6
  %9 = bitcast i8* %8 to %struct.charset_sort_data*
  store %struct.charset_sort_data* %9, %struct.charset_sort_data** %sort_data, align 8
  br label %if.end.8

if.else:                                          ; preds = %do.body
  %10 = load i64, i64* %n, align 8
  %call7 = call noalias i8* @xnmalloc(i64 %10, i64 24)
  %11 = bitcast i8* %call7 to %struct.charset_sort_data*
  store %struct.charset_sort_data* %11, %struct.charset_sort_data** %sort_data, align 8
  store i8 1, i8* %sa_must_free, align 1
  %12 = load %struct.charset_sort_data*, %struct.charset_sort_data** %sort_data, align 8
  %13 = bitcast %struct.charset_sort_data* %12 to i8*
  call void @record_unwind_protect_ptr(void (i8*)* @xfree, i8* %13)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %14 = load i64, i64* %charsets.addr, align 8
  store i64 %14, i64* %tail, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %15 = load i64, i64* %tail, align 8
  %and = and i64 %15, 7
  %conv = trunc i64 %and to i32
  %cmp9 = icmp eq i32 %conv, 3
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i64, i64* %tail, align 8
  %sub11 = sub nsw i64 %16, 3
  %17 = inttoptr i64 %sub11 to i8*
  %18 = bitcast i8* %17 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %18, i32 0, i32 0
  %19 = load i64, i64* %car, align 8
  store i64 %19, i64* %elt, align 8
  br label %do.body.12

do.body.12:                                       ; preds = %for.body
  %20 = load i64, i64* %elt, align 8
  %and13 = and i64 %20, 7
  %conv14 = trunc i64 %and13 to i32
  %cmp15 = icmp eq i32 %conv14, 0
  br i1 %cmp15, label %lor.lhs.false, label %if.then.22

lor.lhs.false:                                    ; preds = %do.body.12
  %21 = load i64, i64* %elt, align 8
  %22 = load i64, i64* @Vcharset_hash_table, align 8
  %call17 = call i64 @builtin_lisp_symbol(i32 0)
  %call18 = call i64 @Fgethash(i64 %21, i64 %22, i64 %call17)
  store i64 %call18, i64* %attrs, align 8
  %call19 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp20 = icmp eq i64 %call18, %call19
  br i1 %cmp20, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %lor.lhs.false, %do.body.12
  %call23 = call i64 @builtin_lisp_symbol(i32 262)
  %23 = load i64, i64* %elt, align 8
  %24 = call i64 @wrong_type_argument(i64 %call23, i64 %23) #7
  unreachable

if.end.24:                                        ; preds = %lor.lhs.false
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  %25 = load i64, i64* %elt, align 8
  %26 = load i64, i64* %i, align 8
  %27 = load %struct.charset_sort_data*, %struct.charset_sort_data** %sort_data, align 8
  %arrayidx = getelementptr inbounds %struct.charset_sort_data, %struct.charset_sort_data* %27, i64 %26
  %charset = getelementptr inbounds %struct.charset_sort_data, %struct.charset_sort_data* %arrayidx, i32 0, i32 0
  store i64 %25, i64* %charset, align 8
  %28 = load i64, i64* %attrs, align 8
  %call26 = call i64 @AREF(i64 %28, i64 0)
  %shr27 = ashr i64 %call26, 2
  %conv28 = trunc i64 %shr27 to i32
  store i32 %conv28, i32* %id, align 4
  %29 = load i64, i64* %i, align 8
  %30 = load %struct.charset_sort_data*, %struct.charset_sort_data** %sort_data, align 8
  %arrayidx29 = getelementptr inbounds %struct.charset_sort_data, %struct.charset_sort_data* %30, i64 %29
  %id30 = getelementptr inbounds %struct.charset_sort_data, %struct.charset_sort_data* %arrayidx29, i32 0, i32 1
  store i32 %conv28, i32* %id30, align 4
  %31 = load i32, i32* %id, align 4
  %32 = load i32, i32* %min_id, align 4
  %cmp31 = icmp slt i32 %31, %32
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %do.end.25
  %33 = load i32, i32* %id, align 4
  store i32 %33, i32* %min_id, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %do.end.25
  %34 = load i32, i32* %id, align 4
  %35 = load i32, i32* %max_id, align 4
  %cmp35 = icmp sgt i32 %34, %35
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.34
  %36 = load i32, i32* %id, align 4
  store i32 %36, i32* %max_id, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.end.34
  br label %for.inc

for.inc:                                          ; preds = %if.end.38
  %37 = load i64, i64* %tail, align 8
  %sub39 = sub nsw i64 %37, 3
  %38 = inttoptr i64 %sub39 to i8*
  %39 = bitcast i8* %38 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %39, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %40 = load i64, i64* %cdr, align 8
  store i64 %40, i64* %tail, align 8
  %41 = load i64, i64* %i, align 8
  %inc = add nsw i64 %41, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %done, align 4
  %42 = load i64, i64* @Vcharset_ordered_list, align 8
  store i64 %42, i64* %tail, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.74, %for.end
  %43 = load i32, i32* %done, align 4
  %conv41 = sext i32 %43 to i64
  %44 = load i64, i64* %n, align 8
  %cmp42 = icmp slt i64 %conv41, %44
  br i1 %cmp42, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.40
  %45 = load i64, i64* %tail, align 8
  %and44 = and i64 %45, 7
  %conv45 = trunc i64 %and44 to i32
  %cmp46 = icmp eq i32 %conv45, 3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.40
  %46 = phi i1 [ false, %for.cond.40 ], [ %cmp46, %land.rhs ]
  br i1 %46, label %for.body.48, label %for.end.79

for.body.48:                                      ; preds = %land.end
  %47 = load i64, i64* %tail, align 8
  %sub49 = sub nsw i64 %47, 3
  %48 = inttoptr i64 %sub49 to i8*
  %49 = bitcast i8* %48 to %struct.Lisp_Cons*
  %car50 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %49, i32 0, i32 0
  %50 = load i64, i64* %car50, align 8
  store i64 %50, i64* %elt, align 8
  %51 = load i64, i64* %elt, align 8
  %shr51 = ashr i64 %51, 2
  %conv52 = trunc i64 %shr51 to i32
  store i32 %conv52, i32* %id, align 4
  %52 = load i32, i32* %id, align 4
  %53 = load i32, i32* %min_id, align 4
  %cmp53 = icmp sge i32 %52, %53
  br i1 %cmp53, label %land.lhs.true, label %if.end.73

land.lhs.true:                                    ; preds = %for.body.48
  %54 = load i32, i32* %id, align 4
  %55 = load i32, i32* %max_id, align 4
  %cmp55 = icmp sle i32 %54, %55
  br i1 %cmp55, label %if.then.57, label %if.end.73

if.then.57:                                       ; preds = %land.lhs.true
  store i64 0, i64* %j, align 8
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.70, %if.then.57
  %56 = load i64, i64* %j, align 8
  %57 = load i64, i64* %n, align 8
  %cmp59 = icmp slt i64 %56, %57
  br i1 %cmp59, label %for.body.61, label %for.end.72

for.body.61:                                      ; preds = %for.cond.58
  %58 = load i64, i64* %j, align 8
  %59 = load %struct.charset_sort_data*, %struct.charset_sort_data** %sort_data, align 8
  %arrayidx62 = getelementptr inbounds %struct.charset_sort_data, %struct.charset_sort_data* %59, i64 %58
  %id63 = getelementptr inbounds %struct.charset_sort_data, %struct.charset_sort_data* %arrayidx62, i32 0, i32 1
  %60 = load i32, i32* %id63, align 4
  %61 = load i32, i32* %id, align 4
  %cmp64 = icmp eq i32 %60, %61
  br i1 %cmp64, label %if.then.66, label %if.end.69

if.then.66:                                       ; preds = %for.body.61
  %62 = load i64, i64* %i, align 8
  %63 = load i64, i64* %j, align 8
  %64 = load %struct.charset_sort_data*, %struct.charset_sort_data** %sort_data, align 8
  %arrayidx67 = getelementptr inbounds %struct.charset_sort_data, %struct.charset_sort_data* %64, i64 %63
  %priority = getelementptr inbounds %struct.charset_sort_data, %struct.charset_sort_data* %arrayidx67, i32 0, i32 2
  store i64 %62, i64* %priority, align 8
  %65 = load i32, i32* %done, align 4
  %inc68 = add nsw i32 %65, 1
  store i32 %inc68, i32* %done, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.66, %for.body.61
  br label %for.inc.70

for.inc.70:                                       ; preds = %if.end.69
  %66 = load i64, i64* %j, align 8
  %inc71 = add nsw i64 %66, 1
  store i64 %inc71, i64* %j, align 8
  br label %for.cond.58

for.end.72:                                       ; preds = %for.cond.58
  br label %if.end.73

if.end.73:                                        ; preds = %for.end.72, %land.lhs.true, %for.body.48
  br label %for.inc.74

for.inc.74:                                       ; preds = %if.end.73
  %67 = load i64, i64* %tail, align 8
  %sub75 = sub nsw i64 %67, 3
  %68 = inttoptr i64 %sub75 to i8*
  %69 = bitcast i8* %68 to %struct.Lisp_Cons*
  %u76 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %69, i32 0, i32 1
  %cdr77 = bitcast %union.anon* %u76 to i64*
  %70 = load i64, i64* %cdr77, align 8
  store i64 %70, i64* %tail, align 8
  %71 = load i64, i64* %i, align 8
  %inc78 = add nsw i64 %71, 1
  store i64 %inc78, i64* %i, align 8
  br label %for.cond.40

for.end.79:                                       ; preds = %land.end
  %72 = load %struct.charset_sort_data*, %struct.charset_sort_data** %sort_data, align 8
  %73 = bitcast %struct.charset_sort_data* %72 to i8*
  %74 = load i64, i64* %n, align 8
  call void @qsort(i8* %73, i64 %74, i64 24, i32 (i8*, i8*)* @charset_compare)
  store i64 0, i64* %i, align 8
  %75 = load i64, i64* %charsets.addr, align 8
  store i64 %75, i64* %tail, align 8
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc.88, %for.end.79
  %76 = load i64, i64* %tail, align 8
  %and81 = and i64 %76, 7
  %conv82 = trunc i64 %and81 to i32
  %cmp83 = icmp eq i32 %conv82, 3
  br i1 %cmp83, label %for.body.85, label %for.end.93

for.body.85:                                      ; preds = %for.cond.80
  %77 = load i64, i64* %tail, align 8
  %78 = load i64, i64* %i, align 8
  %79 = load %struct.charset_sort_data*, %struct.charset_sort_data** %sort_data, align 8
  %arrayidx86 = getelementptr inbounds %struct.charset_sort_data, %struct.charset_sort_data* %79, i64 %78
  %charset87 = getelementptr inbounds %struct.charset_sort_data, %struct.charset_sort_data* %arrayidx86, i32 0, i32 0
  %80 = load i64, i64* %charset87, align 8
  call void @XSETCAR(i64 %77, i64 %80)
  br label %for.inc.88

for.inc.88:                                       ; preds = %for.body.85
  %81 = load i64, i64* %tail, align 8
  %sub89 = sub nsw i64 %81, 3
  %82 = inttoptr i64 %sub89 to i8*
  %83 = bitcast i8* %82 to %struct.Lisp_Cons*
  %u90 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %83, i32 0, i32 1
  %cdr91 = bitcast %union.anon* %u90 to i64*
  %84 = load i64, i64* %cdr91, align 8
  store i64 %84, i64* %tail, align 8
  %85 = load i64, i64* %i, align 8
  %inc92 = add nsw i64 %85, 1
  store i64 %inc92, i64* %i, align 8
  br label %for.cond.80

for.end.93:                                       ; preds = %for.cond.80
  br label %do.body.94

do.body.94:                                       ; preds = %for.end.93
  %86 = load i8, i8* %sa_must_free, align 1
  %tobool = trunc i8 %86 to i1
  br i1 %tobool, label %if.then.95, label %if.end.98

if.then.95:                                       ; preds = %do.body.94
  store i8 0, i8* %sa_must_free, align 1
  %87 = load i64, i64* %sa_count, align 8
  %call96 = call i64 @builtin_lisp_symbol(i32 0)
  %call97 = call i64 @unbind_to(i64 %87, i64 %call96)
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.95, %do.body.94
  br label %do.end.99

do.end.99:                                        ; preds = %if.end.98
  %88 = load i64, i64* %charsets.addr, align 8
  store i64 %88, i64* %retval
  br label %return

return:                                           ; preds = %do.end.99, %if.then
  %89 = load i64, i64* %retval
  ret i64 %89
}

declare i64 @Flength(i64) #1

declare i64 @SPECPDL_INDEX() #1

declare noalias i8* @xnmalloc(i64, i64) #1

declare void @record_unwind_protect_ptr(void (i8*)*, i8*) #1

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @charset_compare(i8* %d1, i8* %d2) #0 {
entry:
  %retval = alloca i32, align 4
  %d1.addr = alloca i8*, align 8
  %d2.addr = alloca i8*, align 8
  %data1 = alloca %struct.charset_sort_data*, align 8
  %data2 = alloca %struct.charset_sort_data*, align 8
  store i8* %d1, i8** %d1.addr, align 8
  store i8* %d2, i8** %d2.addr, align 8
  %0 = load i8*, i8** %d1.addr, align 8
  %1 = bitcast i8* %0 to %struct.charset_sort_data*
  store %struct.charset_sort_data* %1, %struct.charset_sort_data** %data1, align 8
  %2 = load i8*, i8** %d2.addr, align 8
  %3 = bitcast i8* %2 to %struct.charset_sort_data*
  store %struct.charset_sort_data* %3, %struct.charset_sort_data** %data2, align 8
  %4 = load %struct.charset_sort_data*, %struct.charset_sort_data** %data1, align 8
  %priority = getelementptr inbounds %struct.charset_sort_data, %struct.charset_sort_data* %4, i32 0, i32 2
  %5 = load i64, i64* %priority, align 8
  %6 = load %struct.charset_sort_data*, %struct.charset_sort_data** %data2, align 8
  %priority1 = getelementptr inbounds %struct.charset_sort_data, %struct.charset_sort_data* %6, i32 0, i32 2
  %7 = load i64, i64* %priority1, align 8
  %cmp = icmp ne i64 %5, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.charset_sort_data*, %struct.charset_sort_data** %data1, align 8
  %priority2 = getelementptr inbounds %struct.charset_sort_data, %struct.charset_sort_data* %8, i32 0, i32 2
  %9 = load i64, i64* %priority2, align 8
  %10 = load %struct.charset_sort_data*, %struct.charset_sort_data** %data2, align 8
  %priority3 = getelementptr inbounds %struct.charset_sort_data, %struct.charset_sort_data* %10, i32 0, i32 2
  %11 = load i64, i64* %priority3, align 8
  %cmp4 = icmp slt i64 %9, %11
  %cond = select i1 %cmp4, i32 -1, i32 1
  store i32 %cond, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare i64 @unbind_to(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @init_charset() #0 {
entry:
  %tempdir = alloca i64, align 8
  %call = call i64 @build_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0))
  %0 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 51), align 8
  %call1 = call i64 @Fexpand_file_name(i64 %call, i64 %0)
  store i64 %call1, i64* %tempdir, align 8
  %1 = load i64, i64* %tempdir, align 8
  %call2 = call zeroext i1 @file_accessible_directory_p(i64 %1)
  br i1 %call2, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %3 = load i64, i64* %tempdir, align 8
  %call3 = call i8* @SDATA(i64 %3)
  %call4 = call i8* @egetenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0))
  %tobool = icmp ne i8* %call4, null
  %cond = select i1 %tobool, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i32 0, i32 0)
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([142 x i8], [142 x i8]* @.str.10, i32 0, i32 0), i8* %call3, i8* %cond)
  call void @exit(i32 1) #8
  unreachable

if.end:                                           ; preds = %entry
  %4 = load i64, i64* %tempdir, align 8
  %call6 = call i64 @list1(i64 %4)
  store i64 %call6, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 30), align 8
  ret void
}

declare i64 @Fexpand_file_name(i64, i64) #1

declare i64 @build_string(i8*) #1

declare zeroext i1 @file_accessible_directory_p(i64) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i8* @egetenv(i8*) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind uwtable
define void @init_charset_once() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.14, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end.16

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.11, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 2
  br i1 %cmp2, label %for.body.3, label %for.end.13

for.body.3:                                       ; preds = %for.cond.1
  store i32 0, i32* %k, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body.3
  %2 = load i32, i32* %k, align 4
  %cmp5 = icmp slt i32 %2, 128
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %3 = load i32, i32* %k, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %4 to i64
  %5 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [3 x [2 x [128 x i32]]], [3 x [2 x [128 x i32]]]* @iso_charset_table, i32 0, i64 %idxprom8
  %arrayidx9 = getelementptr inbounds [2 x [128 x i32]], [2 x [128 x i32]]* %arrayidx, i32 0, i64 %idxprom7
  %arrayidx10 = getelementptr inbounds [128 x i32], [128 x i32]* %arrayidx9, i32 0, i64 %idxprom
  store i32 -1, i32* %arrayidx10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %6 = load i32, i32* %k, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.end
  %7 = load i32, i32* %j, align 4
  %inc12 = add nsw i32 %7, 1
  store i32 %inc12, i32* %j, align 4
  br label %for.cond.1

for.end.13:                                       ; preds = %for.cond.1
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.end.13
  %8 = load i32, i32* %i, align 4
  %inc15 = add nsw i32 %8, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond

for.end.16:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.22, %for.end.16
  %9 = load i32, i32* %i, align 4
  %cmp18 = icmp slt i32 %9, 256
  br i1 %cmp18, label %for.body.19, label %for.end.24

for.body.19:                                      ; preds = %for.cond.17
  %10 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %10 to i64
  %arrayidx21 = getelementptr inbounds [256 x i32], [256 x i32]* @emacs_mule_charset, i32 0, i64 %idxprom20
  store i32 -1, i32* %arrayidx21, align 4
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.body.19
  %11 = load i32, i32* %i, align 4
  %inc23 = add nsw i32 %11, 1
  store i32 %inc23, i32* %i, align 4
  br label %for.cond.17

for.end.24:                                       ; preds = %for.cond.17
  store i32 -1, i32* @charset_jisx0201_roman, align 4
  store i32 -1, i32* @charset_jisx0208_1978, align 4
  store i32 -1, i32* @charset_jisx0208, align 4
  store i32 -1, i32* @charset_ksc5601, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @syms_of_charset() #0 {
entry:
  %.compoundliteral = alloca [2 x i64], align 8
  call void @staticpro(i64* @Vcharset_ordered_list)
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* @Vcharset_ordered_list, align 8
  call void @staticpro(i64* @Viso_2022_charset_list)
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* @Viso_2022_charset_list, align 8
  call void @staticpro(i64* @Vemacs_mule_charset_list)
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call2, i64* @Vemacs_mule_charset_list, align 8
  call void @staticpro(i64* @Vcharset_hash_table)
  %arrayinit.begin = getelementptr inbounds [2 x i64], [2 x i64]* %.compoundliteral, i64 0, i64 0
  %call3 = call i64 @builtin_lisp_symbol(i32 129)
  store i64 %call3, i64* %arrayinit.begin
  %arrayinit.element = getelementptr inbounds i64, i64* %arrayinit.begin, i64 1
  %call4 = call i64 @builtin_lisp_symbol(i32 369)
  store i64 %call4, i64* %arrayinit.element
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %.compoundliteral, i32 0, i32 0
  %call5 = call i64 @Fmake_hash_table(i64 2, i64* %arraydecay)
  store i64 %call5, i64* @Vcharset_hash_table, align 8
  store %struct.charset* getelementptr inbounds ([180 x %struct.charset], [180 x %struct.charset]* @charset_table_init, i32 0, i32 0), %struct.charset** @charset_table, align 8
  store i64 180, i64* @charset_table_size, align 8
  store i32 0, i32* @charset_table_used, align 4
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Scharsetp to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Smap_charset_chars to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64*)* }, i16, i16, i8*, i8*, i8* }* @Sdefine_charset_internal to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sdefine_charset_alias to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Scharset_plist to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sset_charset_plist to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sunify_charset to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sget_unused_iso_final_char to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sdeclare_equiv_charset to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sfind_charset_region to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sfind_charset_string to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sdecode_char to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sencode_char to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Ssplit_char to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Smake_char to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Schar_charset to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Scharset_after to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Siso_charset to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* @Sclear_charset_maps)
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Scharset_priority_list to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64*)* }, i16, i16, i8*, i8*, i8* }* @Sset_charset_priority to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Scharset_id_internal to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Ssort_charsets to %struct.Lisp_Subr*))
  br label %do.body

do.body:                                          ; preds = %entry
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_charset.o_fwd, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 30))
  br label %do.end

do.end:                                           ; preds = %do.body
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call6, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 30), align 8
  br label %do.body.7

do.body.7:                                        ; preds = %do.end
  call void @defvar_bool(%struct.Lisp_Boolfwd* @syms_of_charset.b_fwd, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 453))
  br label %do.end.8

do.end.8:                                         ; preds = %do.body.7
  store i8 0, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 453), align 1
  br label %do.body.9

do.body.9:                                        ; preds = %do.end.8
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_charset.o_fwd.16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 29))
  br label %do.end.10

do.end.10:                                        ; preds = %do.body.9
  %call11 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call11, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 29), align 8
  br label %do.body.12

do.body.12:                                       ; preds = %do.end.10
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_charset.o_fwd.18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 48))
  br label %do.end.13

do.end.13:                                        ; preds = %do.body.12
  %call14 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call14, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 48), align 8
  %call15 = call i64 @builtin_lisp_symbol(i32 181)
  %call16 = call i32 @define_charset_internal(i64 %call15, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i32 0, i32 127, i32 66, i32 -1, i32 0, i1 zeroext true, i1 zeroext false, i32 0)
  store i32 %call16, i32* @charset_ascii, align 4
  %call17 = call i64 @builtin_lisp_symbol(i32 581)
  %call18 = call i32 @define_charset_internal(i64 %call17, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i32 0, i32 255, i32 -1, i32 -1, i32 -1, i1 zeroext true, i1 zeroext false, i32 0)
  store i32 %call18, i32* @charset_iso_8859_1, align 4
  %call19 = call i64 @builtin_lisp_symbol(i32 971)
  %call20 = call i32 @define_charset_internal(i64 %call19, i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i32 0, i32 1114111, i32 -1, i32 0, i32 -1, i1 zeroext true, i1 zeroext false, i32 0)
  store i32 %call20, i32* @charset_unicode, align 4
  %call21 = call i64 @builtin_lisp_symbol(i32 360)
  %call22 = call i32 @define_charset_internal(i64 %call21, i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i32 0, i32 4194175, i32 -1, i32 0, i32 -1, i1 zeroext true, i1 zeroext true, i32 0)
  store i32 %call22, i32* @charset_emacs, align 4
  %call23 = call i64 @builtin_lisp_symbol(i32 359)
  %call24 = call i32 @define_charset_internal(i64 %call23, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i32 128, i32 255, i32 -1, i32 0, i32 -1, i1 zeroext false, i1 zeroext true, i32 4194176)
  store i32 %call24, i32* @charset_eight_bit, align 4
  %0 = load i32, i32* @charset_iso_8859_1, align 4
  store i32 %0, i32* @charset_unibyte, align 4
  ret void
}

declare void @staticpro(i64*) #1

declare i64 @Fmake_hash_table(i64, i64*) #1

declare void @defsubr(%struct.Lisp_Subr*) #1

declare void @defvar_lisp(%struct.Lisp_Objfwd*, i8*, i64*) #1

declare void @defvar_bool(%struct.Lisp_Boolfwd*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @define_charset_internal(i64 %name, i32 %dimension, i8* %code_space_chars, i32 %min_code, i32 %max_code, i32 %iso_final, i32 %iso_revision, i32 %emacs_mule_id, i1 zeroext %ascii_compatible, i1 zeroext %supplementary, i32 %code_offset) #0 {
entry:
  %name.addr = alloca i64, align 8
  %dimension.addr = alloca i32, align 4
  %code_space_chars.addr = alloca i8*, align 8
  %min_code.addr = alloca i32, align 4
  %max_code.addr = alloca i32, align 4
  %iso_final.addr = alloca i32, align 4
  %iso_revision.addr = alloca i32, align 4
  %emacs_mule_id.addr = alloca i32, align 4
  %ascii_compatible.addr = alloca i8, align 1
  %supplementary.addr = alloca i8, align 1
  %code_offset.addr = alloca i32, align 4
  %code_space = alloca i8*, align 8
  %args = alloca [17 x i64], align 16
  %val = alloca i64, align 8
  %i = alloca i32, align 4
  store i64 %name, i64* %name.addr, align 8
  store i32 %dimension, i32* %dimension.addr, align 4
  store i8* %code_space_chars, i8** %code_space_chars.addr, align 8
  store i32 %min_code, i32* %min_code.addr, align 4
  store i32 %max_code, i32* %max_code.addr, align 4
  store i32 %iso_final, i32* %iso_final.addr, align 4
  store i32 %iso_revision, i32* %iso_revision.addr, align 4
  store i32 %emacs_mule_id, i32* %emacs_mule_id.addr, align 4
  %frombool = zext i1 %ascii_compatible to i8
  store i8 %frombool, i8* %ascii_compatible.addr, align 1
  %frombool1 = zext i1 %supplementary to i8
  store i8 %frombool1, i8* %supplementary.addr, align 1
  store i32 %code_offset, i32* %code_offset.addr, align 4
  %0 = load i8*, i8** %code_space_chars.addr, align 8
  store i8* %0, i8** %code_space, align 8
  %1 = load i64, i64* %name.addr, align 8
  %arrayidx = getelementptr inbounds [17 x i64], [17 x i64]* %args, i32 0, i64 0
  store i64 %1, i64* %arrayidx, align 8
  %2 = load i32, i32* %dimension.addr, align 4
  %conv = sext i32 %2 to i64
  %shl = shl i64 %conv, 2
  %add = add i64 %shl, 2
  %arrayidx2 = getelementptr inbounds [17 x i64], [17 x i64]* %args, i32 0, i64 1
  store i64 %add, i64* %arrayidx2, align 8
  %call = call i64 @make_uninit_vector(i64 8)
  store i64 %call, i64* %val, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %3, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %val, align 8
  %5 = load i32, i32* %i, align 4
  %conv4 = sext i32 %5 to i64
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i8*, i8** %code_space, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %8 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %8 to i64
  %shl7 = shl i64 %conv6, 2
  %add8 = add i64 %shl7, 2
  call void @ASET(i64 %4, i64 %conv4, i64 %add8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i64, i64* %val, align 8
  %arrayidx9 = getelementptr inbounds [17 x i64], [17 x i64]* %args, i32 0, i64 2
  store i64 %10, i64* %arrayidx9, align 8
  %11 = load i32, i32* %min_code.addr, align 4
  %conv10 = zext i32 %11 to i64
  %shl11 = shl i64 %conv10, 2
  %add12 = add i64 %shl11, 2
  %arrayidx13 = getelementptr inbounds [17 x i64], [17 x i64]* %args, i32 0, i64 3
  store i64 %add12, i64* %arrayidx13, align 8
  %12 = load i32, i32* %max_code.addr, align 4
  %conv14 = zext i32 %12 to i64
  %shl15 = shl i64 %conv14, 2
  %add16 = add i64 %shl15, 2
  %arrayidx17 = getelementptr inbounds [17 x i64], [17 x i64]* %args, i32 0, i64 4
  store i64 %add16, i64* %arrayidx17, align 8
  %13 = load i32, i32* %iso_final.addr, align 4
  %cmp18 = icmp slt i32 %13, 0
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %call20 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %14 = load i32, i32* %iso_final.addr, align 4
  %conv21 = sext i32 %14 to i64
  %shl22 = shl i64 %conv21, 2
  %add23 = add i64 %shl22, 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call20, %cond.true ], [ %add23, %cond.false ]
  %arrayidx24 = getelementptr inbounds [17 x i64], [17 x i64]* %args, i32 0, i64 5
  store i64 %cond, i64* %arrayidx24, align 8
  %15 = load i32, i32* %iso_revision.addr, align 4
  %conv25 = sext i32 %15 to i64
  %shl26 = shl i64 %conv25, 2
  %add27 = add i64 %shl26, 2
  %arrayidx28 = getelementptr inbounds [17 x i64], [17 x i64]* %args, i32 0, i64 6
  store i64 %add27, i64* %arrayidx28, align 8
  %16 = load i32, i32* %emacs_mule_id.addr, align 4
  %cmp29 = icmp slt i32 %16, 0
  br i1 %cmp29, label %cond.true.31, label %cond.false.33

cond.true.31:                                     ; preds = %cond.end
  %call32 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.37

cond.false.33:                                    ; preds = %cond.end
  %17 = load i32, i32* %emacs_mule_id.addr, align 4
  %conv34 = sext i32 %17 to i64
  %shl35 = shl i64 %conv34, 2
  %add36 = add i64 %shl35, 2
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.33, %cond.true.31
  %cond38 = phi i64 [ %call32, %cond.true.31 ], [ %add36, %cond.false.33 ]
  %arrayidx39 = getelementptr inbounds [17 x i64], [17 x i64]* %args, i32 0, i64 7
  store i64 %cond38, i64* %arrayidx39, align 8
  %18 = load i8, i8* %ascii_compatible.addr, align 1
  %tobool = trunc i8 %18 to i1
  br i1 %tobool, label %cond.true.41, label %cond.false.43

cond.true.41:                                     ; preds = %cond.end.37
  %call42 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end.45

cond.false.43:                                    ; preds = %cond.end.37
  %call44 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.43, %cond.true.41
  %cond46 = phi i64 [ %call42, %cond.true.41 ], [ %call44, %cond.false.43 ]
  %arrayidx47 = getelementptr inbounds [17 x i64], [17 x i64]* %args, i32 0, i64 8
  store i64 %cond46, i64* %arrayidx47, align 8
  %19 = load i8, i8* %supplementary.addr, align 1
  %tobool48 = trunc i8 %19 to i1
  br i1 %tobool48, label %cond.true.50, label %cond.false.52

cond.true.50:                                     ; preds = %cond.end.45
  %call51 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end.54

cond.false.52:                                    ; preds = %cond.end.45
  %call53 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.false.52, %cond.true.50
  %cond55 = phi i64 [ %call51, %cond.true.50 ], [ %call53, %cond.false.52 ]
  %arrayidx56 = getelementptr inbounds [17 x i64], [17 x i64]* %args, i32 0, i64 9
  store i64 %cond55, i64* %arrayidx56, align 8
  %call57 = call i64 @builtin_lisp_symbol(i32 0)
  %arrayidx58 = getelementptr inbounds [17 x i64], [17 x i64]* %args, i32 0, i64 10
  store i64 %call57, i64* %arrayidx58, align 8
  %20 = load i32, i32* %code_offset.addr, align 4
  %conv59 = sext i32 %20 to i64
  %shl60 = shl i64 %conv59, 2
  %add61 = add i64 %shl60, 2
  %arrayidx62 = getelementptr inbounds [17 x i64], [17 x i64]* %args, i32 0, i64 11
  store i64 %add61, i64* %arrayidx62, align 8
  %call63 = call i64 @builtin_lisp_symbol(i32 0)
  %arrayidx64 = getelementptr inbounds [17 x i64], [17 x i64]* %args, i32 0, i64 12
  store i64 %call63, i64* %arrayidx64, align 8
  %call65 = call i64 @builtin_lisp_symbol(i32 0)
  %arrayidx66 = getelementptr inbounds [17 x i64], [17 x i64]* %args, i32 0, i64 13
  store i64 %call65, i64* %arrayidx66, align 8
  %call67 = call i64 @builtin_lisp_symbol(i32 0)
  %arrayidx68 = getelementptr inbounds [17 x i64], [17 x i64]* %args, i32 0, i64 14
  store i64 %call67, i64* %arrayidx68, align 8
  %call69 = call i64 @builtin_lisp_symbol(i32 0)
  %arrayidx70 = getelementptr inbounds [17 x i64], [17 x i64]* %args, i32 0, i64 15
  store i64 %call69, i64* %arrayidx70, align 8
  %call71 = call i64 @builtin_lisp_symbol(i32 86)
  %arrayidx72 = getelementptr inbounds [17 x i64], [17 x i64]* %args, i32 0, i64 0
  %21 = load i64, i64* %arrayidx72, align 8
  %call73 = call i64 @intern_c_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i32 0, i32 0))
  %arrayidx74 = getelementptr inbounds [17 x i64], [17 x i64]* %args, i32 0, i64 1
  %22 = load i64, i64* %arrayidx74, align 8
  %call75 = call i64 @intern_c_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i32 0, i32 0))
  %arrayidx76 = getelementptr inbounds [17 x i64], [17 x i64]* %args, i32 0, i64 2
  %23 = load i64, i64* %arrayidx76, align 8
  %call77 = call i64 @intern_c_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.57, i32 0, i32 0))
  %arrayidx78 = getelementptr inbounds [17 x i64], [17 x i64]* %args, i32 0, i64 5
  %24 = load i64, i64* %arrayidx78, align 8
  %call79 = call i64 @intern_c_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.58, i32 0, i32 0))
  %arrayidx80 = getelementptr inbounds [17 x i64], [17 x i64]* %args, i32 0, i64 7
  %25 = load i64, i64* %arrayidx80, align 8
  %call81 = call i64 @builtin_lisp_symbol(i32 10)
  %arrayidx82 = getelementptr inbounds [17 x i64], [17 x i64]* %args, i32 0, i64 8
  %26 = load i64, i64* %arrayidx82, align 8
  %call83 = call i64 @intern_c_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.59, i32 0, i32 0))
  %arrayidx84 = getelementptr inbounds [17 x i64], [17 x i64]* %args, i32 0, i64 11
  %27 = load i64, i64* %arrayidx84, align 8
  %call85 = call i64 (i32, i64, i64, ...) @listn(i32 0, i64 14, i64 %call71, i64 %21, i64 %call73, i64 %22, i64 %call75, i64 %23, i64 %call77, i64 %24, i64 %call79, i64 %25, i64 %call81, i64 %26, i64 %call83, i64 %27)
  %arrayidx86 = getelementptr inbounds [17 x i64], [17 x i64]* %args, i32 0, i64 16
  store i64 %call85, i64* %arrayidx86, align 8
  %arraydecay = getelementptr inbounds [17 x i64], [17 x i64]* %args, i32 0, i32 0
  %call87 = call i64 @Fdefine_charset_internal(i64 17, i64* %arraydecay)
  %28 = load i64, i64* %name.addr, align 8
  %29 = load i64, i64* @Vcharset_hash_table, align 8
  %call88 = call i64 @builtin_lisp_symbol(i32 0)
  %call89 = call i64 @Fgethash(i64 %28, i64 %29, i64 %call88)
  %call90 = call i64 @AREF(i64 %call89, i64 0)
  %shr = ashr i64 %call90, 2
  %conv91 = trunc i64 %shr to i32
  ret i32 %conv91
}

; Function Attrs: nounwind uwtable
define internal void @load_charset_map_from_file(%struct.charset* %charset, i64 %mapfile, i32 %control_flag) #0 {
entry:
  %charset.addr = alloca %struct.charset*, align 8
  %mapfile.addr = alloca i64, align 8
  %control_flag.addr = alloca i32, align 4
  %min_code = alloca i32, align 4
  %max_code = alloca i32, align 4
  %fd = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  %head = alloca %struct.charset_map_entries*, align 8
  %entries = alloca %struct.charset_map_entries*, align 8
  %n_entries = alloca i32, align 4
  %map = alloca i64, align 8
  %.compoundliteral = alloca %union.Aligned_String, align 8
  %txt = alloca i64, align 8
  %.compoundliteral4 = alloca %union.Aligned_String, align 8
  %suffixes = alloca i64, align 8
  %.compoundliteral12 = alloca %union.Aligned_Cons, align 8
  %.compoundliteral14 = alloca %union.Aligned_Cons, align 8
  %count = alloca i64, align 8
  %open_errno = alloca i32, align 4
  %from = alloca i32, align 4
  %to = alloca i32, align 4
  %c = alloca i32, align 4
  %idx = alloca i32, align 4
  %eof = alloca i8, align 1
  %overflow = alloca i8, align 1
  store %struct.charset* %charset, %struct.charset** %charset.addr, align 8
  store i64 %mapfile, i64* %mapfile.addr, align 8
  store i32 %control_flag, i32* %control_flag.addr, align 4
  %0 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %min_code1 = getelementptr inbounds %struct.charset, %struct.charset* %0, i32 0, i32 10
  %1 = load i32, i32* %min_code1, align 4
  store i32 %1, i32* %min_code, align 4
  %2 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %max_code2 = getelementptr inbounds %struct.charset, %struct.charset* %2, i32 0, i32 11
  %3 = load i32, i32* %max_code2, align 4
  store i32 %3, i32* %max_code, align 4
  %s = bitcast %union.Aligned_String* %.compoundliteral to %struct.Lisp_String*
  %size = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 0
  store i64 4, i64* %size, align 8
  %size_byte = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 1
  store i64 -1, i64* %size_byte, align 8
  %intervals = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 2
  store %struct.interval* null, %struct.interval** %intervals, align 8
  %data = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i8** %data, align 8
  %s3 = bitcast %union.Aligned_String* %.compoundliteral to %struct.Lisp_String*
  %4 = bitcast %struct.Lisp_String* %s3 to i8*
  %call = call i64 @make_lisp_ptr(i8* %4, i32 4)
  store i64 %call, i64* %map, align 8
  %s5 = bitcast %union.Aligned_String* %.compoundliteral4 to %struct.Lisp_String*
  %size6 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s5, i32 0, i32 0
  store i64 4, i64* %size6, align 8
  %size_byte7 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s5, i32 0, i32 1
  store i64 -1, i64* %size_byte7, align 8
  %intervals8 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s5, i32 0, i32 2
  store %struct.interval* null, %struct.interval** %intervals8, align 8
  %data9 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s5, i32 0, i32 3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i8** %data9, align 8
  %s10 = bitcast %union.Aligned_String* %.compoundliteral4 to %struct.Lisp_String*
  %5 = bitcast %struct.Lisp_String* %s10 to i8*
  %call11 = call i64 @make_lisp_ptr(i8* %5, i32 4)
  store i64 %call11, i64* %txt, align 8
  %s13 = bitcast %union.Aligned_Cons* %.compoundliteral12 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s13, i32 0, i32 0
  %6 = load i64, i64* %map, align 8
  store i64 %6, i64* %car, align 8
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s13, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %s15 = bitcast %union.Aligned_Cons* %.compoundliteral14 to %struct.Lisp_Cons*
  %car16 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s15, i32 0, i32 0
  %7 = load i64, i64* %txt, align 8
  store i64 %7, i64* %car16, align 8
  %u17 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s15, i32 0, i32 1
  %cdr18 = bitcast %union.anon* %u17 to i64*
  %call19 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call19, i64* %cdr18, align 8
  %s20 = bitcast %union.Aligned_Cons* %.compoundliteral14 to %struct.Lisp_Cons*
  %8 = bitcast %struct.Lisp_Cons* %s20 to i8*
  %call21 = call i64 @make_lisp_ptr(i8* %8, i32 3)
  store i64 %call21, i64* %cdr, align 8
  %s22 = bitcast %union.Aligned_Cons* %.compoundliteral12 to %struct.Lisp_Cons*
  %9 = bitcast %struct.Lisp_Cons* %s22 to i8*
  %call23 = call i64 @make_lisp_ptr(i8* %9, i32 3)
  store i64 %call23, i64* %suffixes, align 8
  %call24 = call i64 @SPECPDL_INDEX()
  store i64 %call24, i64* %count, align 8
  call void @record_unwind_protect_nothing()
  %call25 = call i64 @builtin_lisp_symbol(i32 419)
  %call26 = call i64 @builtin_lisp_symbol(i32 0)
  call void @specbind(i64 %call25, i64 %call26)
  %10 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 30), align 8
  %11 = load i64, i64* %mapfile.addr, align 8
  %12 = load i64, i64* %suffixes, align 8
  %call27 = call i64 @builtin_lisp_symbol(i32 0)
  %call28 = call i32 @openp(i64 %10, i64 %11, i64 %12, i64* null, i64 %call27, i1 zeroext false)
  store i32 %call28, i32* %fd, align 4
  %13 = load i32, i32* %fd, align 4
  %cmp = icmp slt i32 %13, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %14 = load i32, i32* %fd, align 4
  %call29 = call %struct._IO_FILE* @fdopen(i32 %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0)) #3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._IO_FILE* [ null, %cond.true ], [ %call29, %cond.false ]
  store %struct._IO_FILE* %cond, %struct._IO_FILE** %fp, align 8
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool = icmp ne %struct._IO_FILE* %15, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  %call30 = call i32* @__errno_location() #9
  %16 = load i32, i32* %call30, align 4
  store i32 %16, i32* %open_errno, align 4
  %17 = load i32, i32* %fd, align 4
  %call31 = call i32 @emacs_close(i32 %17)
  %18 = load i64, i64* %mapfile.addr, align 8
  %19 = load i32, i32* %open_errno, align 4
  call void @report_file_errno(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i32 0, i32 0), i64 %18, i32 %19) #7
  unreachable

if.end:                                           ; preds = %cond.end
  %20 = load i64, i64* %count, align 8
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %22 = bitcast %struct._IO_FILE* %21 to i8*
  call void @set_unwind_protect_ptr(i64 %20, void (i8*)* @fclose_unwind, i8* %22)
  %23 = load i64, i64* %count, align 8
  %add = add nsw i64 %23, 1
  %call32 = call i64 @builtin_lisp_symbol(i32 0)
  %call33 = call i64 @unbind_to(i64 %add, i64 %call32)
  %call34 = call i8* @record_xmalloc(i64 786440)
  %24 = bitcast i8* %call34 to %struct.charset_map_entries*
  store %struct.charset_map_entries* %24, %struct.charset_map_entries** %head, align 8
  %25 = load %struct.charset_map_entries*, %struct.charset_map_entries** %head, align 8
  store %struct.charset_map_entries* %25, %struct.charset_map_entries** %entries, align 8
  %26 = load %struct.charset_map_entries*, %struct.charset_map_entries** %entries, align 8
  %27 = bitcast %struct.charset_map_entries* %26 to i8*
  call void @llvm.memset.p0i8.i64(i8* %27, i8 0, i64 786440, i32 8, i1 false)
  store i32 0, i32* %n_entries, align 4
  br label %while.body

while.body:                                       ; preds = %if.end, %if.then.52, %if.then.60, %if.end.66
  store i8 0, i8* %eof, align 1
  store i8 0, i8* %overflow, align 1
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call35 = call i32 @read_hex(%struct._IO_FILE* %28, i8* %eof, i8* %overflow)
  store i32 %call35, i32* %from, align 4
  %29 = load i8, i8* %eof, align 1
  %tobool36 = trunc i8 %29 to i1
  br i1 %tobool36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %while.body
  br label %while.end

if.end.38:                                        ; preds = %while.body
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call39 = call i32 @_IO_getc(%struct._IO_FILE* %30)
  %cmp40 = icmp eq i32 %call39, 45
  br i1 %cmp40, label %if.then.41, label %if.else

if.then.41:                                       ; preds = %if.end.38
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call42 = call i32 @read_hex(%struct._IO_FILE* %31, i8* %eof, i8* %overflow)
  store i32 %call42, i32* %to, align 4
  br label %if.end.43

if.else:                                          ; preds = %if.end.38
  %32 = load i32, i32* %from, align 4
  store i32 %32, i32* %to, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.else, %if.then.41
  %33 = load i8, i8* %eof, align 1
  %tobool44 = trunc i8 %33 to i1
  br i1 %tobool44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.43
  br label %while.end

if.end.46:                                        ; preds = %if.end.43
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call47 = call i32 @read_hex(%struct._IO_FILE* %34, i8* %eof, i8* %overflow)
  store i32 %call47, i32* %c, align 4
  %35 = load i8, i8* %eof, align 1
  %tobool48 = trunc i8 %35 to i1
  br i1 %tobool48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.46
  br label %while.end

if.end.50:                                        ; preds = %if.end.46
  %36 = load i8, i8* %overflow, align 1
  %tobool51 = trunc i8 %36 to i1
  br i1 %tobool51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.50
  br label %while.body

if.end.53:                                        ; preds = %if.end.50
  %37 = load i32, i32* %from, align 4
  %38 = load i32, i32* %min_code, align 4
  %cmp54 = icmp ult i32 %37, %38
  br i1 %cmp54, label %if.then.60, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.53
  %39 = load i32, i32* %to, align 4
  %40 = load i32, i32* %max_code, align 4
  %cmp55 = icmp ugt i32 %39, %40
  br i1 %cmp55, label %if.then.60, label %lor.lhs.false.56

lor.lhs.false.56:                                 ; preds = %lor.lhs.false
  %41 = load i32, i32* %from, align 4
  %42 = load i32, i32* %to, align 4
  %cmp57 = icmp ugt i32 %41, %42
  br i1 %cmp57, label %if.then.60, label %lor.lhs.false.58

lor.lhs.false.58:                                 ; preds = %lor.lhs.false.56
  %43 = load i32, i32* %c, align 4
  %cmp59 = icmp ugt i32 %43, 4194303
  br i1 %cmp59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %lor.lhs.false.58, %lor.lhs.false.56, %lor.lhs.false, %if.end.53
  br label %while.body

if.end.61:                                        ; preds = %lor.lhs.false.58
  %44 = load i32, i32* %n_entries, align 4
  %cmp62 = icmp eq i32 %44, 65536
  br i1 %cmp62, label %if.then.63, label %if.end.66

if.then.63:                                       ; preds = %if.end.61
  %call64 = call i8* @record_xmalloc(i64 786440)
  %45 = bitcast i8* %call64 to %struct.charset_map_entries*
  %46 = load %struct.charset_map_entries*, %struct.charset_map_entries** %entries, align 8
  %next = getelementptr inbounds %struct.charset_map_entries, %struct.charset_map_entries* %46, i32 0, i32 1
  store %struct.charset_map_entries* %45, %struct.charset_map_entries** %next, align 8
  %47 = load %struct.charset_map_entries*, %struct.charset_map_entries** %entries, align 8
  %next65 = getelementptr inbounds %struct.charset_map_entries, %struct.charset_map_entries* %47, i32 0, i32 1
  %48 = load %struct.charset_map_entries*, %struct.charset_map_entries** %next65, align 8
  store %struct.charset_map_entries* %48, %struct.charset_map_entries** %entries, align 8
  %49 = load %struct.charset_map_entries*, %struct.charset_map_entries** %entries, align 8
  %50 = bitcast %struct.charset_map_entries* %49 to i8*
  call void @llvm.memset.p0i8.i64(i8* %50, i8 0, i64 786440, i32 8, i1 false)
  store i32 0, i32* %n_entries, align 4
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.63, %if.end.61
  %51 = load i32, i32* %n_entries, align 4
  store i32 %51, i32* %idx, align 4
  %52 = load i32, i32* %from, align 4
  %53 = load i32, i32* %idx, align 4
  %idxprom = sext i32 %53 to i64
  %54 = load %struct.charset_map_entries*, %struct.charset_map_entries** %entries, align 8
  %entry67 = getelementptr inbounds %struct.charset_map_entries, %struct.charset_map_entries* %54, i32 0, i32 0
  %arrayidx = getelementptr inbounds [65536 x %struct.anon.2], [65536 x %struct.anon.2]* %entry67, i32 0, i64 %idxprom
  %from68 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %arrayidx, i32 0, i32 0
  store i32 %52, i32* %from68, align 4
  %55 = load i32, i32* %to, align 4
  %56 = load i32, i32* %idx, align 4
  %idxprom69 = sext i32 %56 to i64
  %57 = load %struct.charset_map_entries*, %struct.charset_map_entries** %entries, align 8
  %entry70 = getelementptr inbounds %struct.charset_map_entries, %struct.charset_map_entries* %57, i32 0, i32 0
  %arrayidx71 = getelementptr inbounds [65536 x %struct.anon.2], [65536 x %struct.anon.2]* %entry70, i32 0, i64 %idxprom69
  %to72 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %arrayidx71, i32 0, i32 1
  store i32 %55, i32* %to72, align 4
  %58 = load i32, i32* %c, align 4
  %59 = load i32, i32* %idx, align 4
  %idxprom73 = sext i32 %59 to i64
  %60 = load %struct.charset_map_entries*, %struct.charset_map_entries** %entries, align 8
  %entry74 = getelementptr inbounds %struct.charset_map_entries, %struct.charset_map_entries* %60, i32 0, i32 0
  %arrayidx75 = getelementptr inbounds [65536 x %struct.anon.2], [65536 x %struct.anon.2]* %entry74, i32 0, i64 %idxprom73
  %c76 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %arrayidx75, i32 0, i32 2
  store i32 %58, i32* %c76, align 4
  %61 = load i32, i32* %n_entries, align 4
  %inc = add nsw i32 %61, 1
  store i32 %inc, i32* %n_entries, align 4
  br label %while.body

while.end:                                        ; preds = %if.then.49, %if.then.45, %if.then.37
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call77 = call i32 @fclose(%struct._IO_FILE* %62)
  %63 = load i64, i64* %count, align 8
  call void @clear_unwind_protect(i64 %63)
  %64 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %65 = load %struct.charset_map_entries*, %struct.charset_map_entries** %head, align 8
  %66 = load i32, i32* %n_entries, align 4
  %67 = load i32, i32* %control_flag.addr, align 4
  call void @load_charset_map(%struct.charset* %64, %struct.charset_map_entries* %65, i32 %66, i32 %67)
  %68 = load i64, i64* %count, align 8
  %call78 = call i64 @builtin_lisp_symbol(i32 0)
  %call79 = call i64 @unbind_to(i64 %68, i64 %call78)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @load_charset_map_from_vector(%struct.charset* %charset, i64 %vec, i32 %control_flag) #0 {
entry:
  %charset.addr = alloca %struct.charset*, align 8
  %vec.addr = alloca i64, align 8
  %control_flag.addr = alloca i32, align 4
  %min_code = alloca i32, align 4
  %max_code = alloca i32, align 4
  %head = alloca %struct.charset_map_entries*, align 8
  %entries = alloca %struct.charset_map_entries*, align 8
  %n_entries = alloca i32, align 4
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  %val = alloca i64, align 8
  %val2 = alloca i64, align 8
  %from = alloca i32, align 4
  %to = alloca i32, align 4
  %c = alloca i64, align 8
  %idx = alloca i32, align 4
  store %struct.charset* %charset, %struct.charset** %charset.addr, align 8
  store i64 %vec, i64* %vec.addr, align 8
  store i32 %control_flag, i32* %control_flag.addr, align 4
  %0 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %min_code1 = getelementptr inbounds %struct.charset, %struct.charset* %0, i32 0, i32 10
  %1 = load i32, i32* %min_code1, align 4
  store i32 %1, i32* %min_code, align 4
  %2 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %max_code2 = getelementptr inbounds %struct.charset, %struct.charset* %2, i32 0, i32 11
  %3 = load i32, i32* %max_code2, align 4
  store i32 %3, i32* %max_code, align 4
  %4 = load i64, i64* %vec.addr, align 8
  %call = call i64 @ASIZE(i64 %4)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  store i64 16384, i64* %sa_avail, align 8
  %call3 = call i64 @SPECPDL_INDEX()
  store i64 %call3, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  %5 = load i32, i32* %len, align 4
  %rem = srem i32 %5, 2
  %cmp = icmp eq i32 %rem, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i64, i64* %vec.addr, align 8
  call void (i8*, ...) @add_to_log(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.29, i32 0, i32 0), i64 %6)
  br label %do.end

if.end:                                           ; preds = %entry
  %7 = load i64, i64* %sa_avail, align 8
  %cmp5 = icmp ule i64 786440, %7
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %8 = load i64, i64* %sa_avail, align 8
  %sub = sub i64 %8, 786440
  store i64 %sub, i64* %sa_avail, align 8
  %9 = alloca i8, i64 786440
  br label %cond.end

cond.false:                                       ; preds = %if.end
  store i8 1, i8* %sa_must_free, align 1
  %call7 = call i8* @record_xmalloc(i64 786440)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %9, %cond.true ], [ %call7, %cond.false ]
  %10 = bitcast i8* %cond to %struct.charset_map_entries*
  store %struct.charset_map_entries* %10, %struct.charset_map_entries** %head, align 8
  %11 = load %struct.charset_map_entries*, %struct.charset_map_entries** %head, align 8
  store %struct.charset_map_entries* %11, %struct.charset_map_entries** %entries, align 8
  %12 = load %struct.charset_map_entries*, %struct.charset_map_entries** %entries, align 8
  %13 = bitcast %struct.charset_map_entries* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 786440, i32 8, i1 false)
  store i32 0, i32* %n_entries, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %len, align 4
  %cmp8 = icmp slt i32 %14, %15
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i64, i64* %vec.addr, align 8
  %17 = load i32, i32* %i, align 4
  %conv10 = sext i32 %17 to i64
  %call11 = call i64 @AREF(i64 %16, i64 %conv10)
  store i64 %call11, i64* %val, align 8
  %18 = load i64, i64* %val, align 8
  %and = and i64 %18, 7
  %conv12 = trunc i64 %and to i32
  %cmp13 = icmp eq i32 %conv12, 3
  br i1 %cmp13, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %for.body
  %19 = load i64, i64* %val, align 8
  %sub16 = sub nsw i64 %19, 3
  %20 = inttoptr i64 %sub16 to i8*
  %21 = bitcast i8* %20 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %21, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %22 = load i64, i64* %cdr, align 8
  store i64 %22, i64* %val2, align 8
  %23 = load i64, i64* %val, align 8
  %sub17 = sub nsw i64 %23, 3
  %24 = inttoptr i64 %sub17 to i8*
  %25 = bitcast i8* %24 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %25, i32 0, i32 0
  %26 = load i64, i64* %car, align 8
  store i64 %26, i64* %val, align 8
  %27 = load i64, i64* %val, align 8
  %shr = ashr i64 %27, 2
  %conv18 = trunc i64 %shr to i32
  store i32 %conv18, i32* %from, align 4
  %28 = load i64, i64* %val2, align 8
  %shr19 = ashr i64 %28, 2
  %conv20 = trunc i64 %shr19 to i32
  store i32 %conv20, i32* %to, align 4
  br label %if.end.23

if.else:                                          ; preds = %for.body
  %29 = load i64, i64* %val, align 8
  %shr21 = ashr i64 %29, 2
  %conv22 = trunc i64 %shr21 to i32
  store i32 %conv22, i32* %to, align 4
  store i32 %conv22, i32* %from, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.then.15
  %30 = load i64, i64* %vec.addr, align 8
  %31 = load i32, i32* %i, align 4
  %add = add nsw i32 %31, 1
  %conv24 = sext i32 %add to i64
  %call25 = call i64 @AREF(i64 %30, i64 %conv24)
  store i64 %call25, i64* %val, align 8
  %32 = load i64, i64* %val, align 8
  call void @CHECK_NATNUM(i64 %32)
  %33 = load i64, i64* %val, align 8
  %shr26 = ashr i64 %33, 2
  store i64 %shr26, i64* %c, align 8
  %34 = load i32, i32* %from, align 4
  %35 = load i32, i32* %min_code, align 4
  %cmp27 = icmp ult i32 %34, %35
  br i1 %cmp27, label %if.then.37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.23
  %36 = load i32, i32* %to, align 4
  %37 = load i32, i32* %max_code, align 4
  %cmp29 = icmp ugt i32 %36, %37
  br i1 %cmp29, label %if.then.37, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %lor.lhs.false
  %38 = load i32, i32* %from, align 4
  %39 = load i32, i32* %to, align 4
  %cmp32 = icmp ugt i32 %38, %39
  br i1 %cmp32, label %if.then.37, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %lor.lhs.false.31
  %40 = load i64, i64* %c, align 8
  %cmp35 = icmp sgt i64 %40, 4194303
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %lor.lhs.false.34, %lor.lhs.false.31, %lor.lhs.false, %if.end.23
  br label %for.inc

if.end.38:                                        ; preds = %lor.lhs.false.34
  %41 = load i32, i32* %n_entries, align 4
  %cmp39 = icmp sgt i32 %41, 0
  br i1 %cmp39, label %land.lhs.true, label %if.end.54

land.lhs.true:                                    ; preds = %if.end.38
  %42 = load i32, i32* %n_entries, align 4
  %rem41 = srem i32 %42, 65536
  %cmp42 = icmp eq i32 %rem41, 0
  br i1 %cmp42, label %if.then.44, label %if.end.54

if.then.44:                                       ; preds = %land.lhs.true
  %43 = load i64, i64* %sa_avail, align 8
  %cmp45 = icmp ule i64 786440, %43
  br i1 %cmp45, label %cond.true.47, label %cond.false.49

cond.true.47:                                     ; preds = %if.then.44
  %44 = load i64, i64* %sa_avail, align 8
  %sub48 = sub i64 %44, 786440
  store i64 %sub48, i64* %sa_avail, align 8
  %45 = alloca i8, i64 786440
  br label %cond.end.51

cond.false.49:                                    ; preds = %if.then.44
  store i8 1, i8* %sa_must_free, align 1
  %call50 = call i8* @record_xmalloc(i64 786440)
  br label %cond.end.51

cond.end.51:                                      ; preds = %cond.false.49, %cond.true.47
  %cond52 = phi i8* [ %45, %cond.true.47 ], [ %call50, %cond.false.49 ]
  %46 = bitcast i8* %cond52 to %struct.charset_map_entries*
  %47 = load %struct.charset_map_entries*, %struct.charset_map_entries** %entries, align 8
  %next = getelementptr inbounds %struct.charset_map_entries, %struct.charset_map_entries* %47, i32 0, i32 1
  store %struct.charset_map_entries* %46, %struct.charset_map_entries** %next, align 8
  %48 = load %struct.charset_map_entries*, %struct.charset_map_entries** %entries, align 8
  %next53 = getelementptr inbounds %struct.charset_map_entries, %struct.charset_map_entries* %48, i32 0, i32 1
  %49 = load %struct.charset_map_entries*, %struct.charset_map_entries** %next53, align 8
  store %struct.charset_map_entries* %49, %struct.charset_map_entries** %entries, align 8
  %50 = load %struct.charset_map_entries*, %struct.charset_map_entries** %entries, align 8
  %51 = bitcast %struct.charset_map_entries* %50 to i8*
  call void @llvm.memset.p0i8.i64(i8* %51, i8 0, i64 786440, i32 8, i1 false)
  br label %if.end.54

if.end.54:                                        ; preds = %cond.end.51, %land.lhs.true, %if.end.38
  %52 = load i32, i32* %n_entries, align 4
  %rem55 = srem i32 %52, 65536
  store i32 %rem55, i32* %idx, align 4
  %53 = load i32, i32* %from, align 4
  %54 = load i32, i32* %idx, align 4
  %idxprom = sext i32 %54 to i64
  %55 = load %struct.charset_map_entries*, %struct.charset_map_entries** %entries, align 8
  %entry56 = getelementptr inbounds %struct.charset_map_entries, %struct.charset_map_entries* %55, i32 0, i32 0
  %arrayidx = getelementptr inbounds [65536 x %struct.anon.2], [65536 x %struct.anon.2]* %entry56, i32 0, i64 %idxprom
  %from57 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %arrayidx, i32 0, i32 0
  store i32 %53, i32* %from57, align 4
  %56 = load i32, i32* %to, align 4
  %57 = load i32, i32* %idx, align 4
  %idxprom58 = sext i32 %57 to i64
  %58 = load %struct.charset_map_entries*, %struct.charset_map_entries** %entries, align 8
  %entry59 = getelementptr inbounds %struct.charset_map_entries, %struct.charset_map_entries* %58, i32 0, i32 0
  %arrayidx60 = getelementptr inbounds [65536 x %struct.anon.2], [65536 x %struct.anon.2]* %entry59, i32 0, i64 %idxprom58
  %to61 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %arrayidx60, i32 0, i32 1
  store i32 %56, i32* %to61, align 4
  %59 = load i64, i64* %c, align 8
  %conv62 = trunc i64 %59 to i32
  %60 = load i32, i32* %idx, align 4
  %idxprom63 = sext i32 %60 to i64
  %61 = load %struct.charset_map_entries*, %struct.charset_map_entries** %entries, align 8
  %entry64 = getelementptr inbounds %struct.charset_map_entries, %struct.charset_map_entries* %61, i32 0, i32 0
  %arrayidx65 = getelementptr inbounds [65536 x %struct.anon.2], [65536 x %struct.anon.2]* %entry64, i32 0, i64 %idxprom63
  %c66 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %arrayidx65, i32 0, i32 2
  store i32 %conv62, i32* %c66, align 4
  %62 = load i32, i32* %n_entries, align 4
  %inc = add nsw i32 %62, 1
  store i32 %inc, i32* %n_entries, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.54, %if.then.37
  %63 = load i32, i32* %i, align 4
  %add67 = add nsw i32 %63, 2
  store i32 %add67, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %64 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %65 = load %struct.charset_map_entries*, %struct.charset_map_entries** %head, align 8
  %66 = load i32, i32* %n_entries, align 4
  %67 = load i32, i32* %control_flag.addr, align 4
  call void @load_charset_map(%struct.charset* %64, %struct.charset_map_entries* %65, i32 %66, i32 %67)
  br label %do.body

do.body:                                          ; preds = %for.end
  %68 = load i8, i8* %sa_must_free, align 1
  %tobool = trunc i8 %68 to i1
  br i1 %tobool, label %if.then.68, label %if.end.71

if.then.68:                                       ; preds = %do.body
  store i8 0, i8* %sa_must_free, align 1
  %69 = load i64, i64* %sa_count, align 8
  %call69 = call i64 @builtin_lisp_symbol(i32 0)
  %call70 = call i64 @unbind_to(i64 %69, i64 %call69)
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.68, %do.body
  br label %do.end

do.end:                                           ; preds = %if.then, %if.end.71
  ret void
}

declare i64 @make_lisp_ptr(i8*, i32) #1

declare void @record_unwind_protect_nothing() #1

declare void @specbind(i64, i64) #1

declare i32 @openp(i64, i64, i64, i64*, i64, i1 zeroext) #1

; Function Attrs: nounwind
declare %struct._IO_FILE* @fdopen(i32, i8*) #5

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

declare i32 @emacs_close(i32) #1

; Function Attrs: noreturn
declare void @report_file_errno(i8*, i64, i32) #2

declare void @set_unwind_protect_ptr(i64, void (i8*)*, i8*) #1

declare void @fclose_unwind(i8*) #1

declare i8* @record_xmalloc(i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @read_hex(%struct._IO_FILE* %fp, i8* %eof, i8* %overflow) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %eof.addr = alloca i8*, align 8
  %overflow.addr = alloca i8*, align 8
  %c = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %eof, i8** %eof.addr, align 8
  store i8* %overflow, i8** %overflow.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.14, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %0)
  store i32 %call, i32* %c, align 4
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end.15

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %c, align 4
  %cmp1 = icmp eq i32 %1, 35
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  br label %while.cond.2

while.cond.2:                                     ; preds = %while.body.6, %if.then
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call3 = call i32 @_IO_getc(%struct._IO_FILE* %2)
  store i32 %call3, i32* %c, align 4
  %cmp4 = icmp ne i32 %call3, -1
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.2
  %3 = load i32, i32* %c, align 4
  %cmp5 = icmp ne i32 %3, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.2
  %4 = phi i1 [ false, %while.cond.2 ], [ %cmp5, %land.rhs ]
  br i1 %4, label %while.body.6, label %while.end

while.body.6:                                     ; preds = %land.end
  br label %while.cond.2

while.end:                                        ; preds = %land.end
  br label %if.end.14

if.else:                                          ; preds = %while.body
  %5 = load i32, i32* %c, align 4
  %cmp7 = icmp eq i32 %5, 48
  br i1 %cmp7, label %if.then.8, label %if.end.13

if.then.8:                                        ; preds = %if.else
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call9 = call i32 @_IO_getc(%struct._IO_FILE* %6)
  store i32 %call9, i32* %c, align 4
  %cmp10 = icmp eq i32 %call9, -1
  br i1 %cmp10, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.8
  %7 = load i32, i32* %c, align 4
  %cmp11 = icmp eq i32 %7, 120
  br i1 %cmp11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %lor.lhs.false, %if.then.8
  br label %while.end.15

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.else
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %while.end
  br label %while.cond

while.end.15:                                     ; preds = %if.then.12, %while.cond
  %8 = load i32, i32* %c, align 4
  %cmp16 = icmp eq i32 %8, -1
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %while.end.15
  %9 = load i8*, i8** %eof.addr, align 8
  store i8 1, i8* %9, align 1
  store i32 0, i32* %retval
  br label %return

if.end.18:                                        ; preds = %while.end.15
  store i32 0, i32* %n, align 4
  br label %while.cond.19

while.cond.19:                                    ; preds = %cond.end, %if.end.18
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call20 = call i32 @_IO_getc(%struct._IO_FILE* %10)
  store i32 %call20, i32* %c, align 4
  %call21 = call zeroext i1 @c_isxdigit(i32 %call20)
  br i1 %call21, label %while.body.22, label %while.end.33

while.body.22:                                    ; preds = %while.cond.19
  %11 = load i32, i32* %n, align 4
  %cmp23 = icmp ult i32 268435455, %11
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %while.body.22
  %12 = load i8*, i8** %overflow.addr, align 8
  store i8 1, i8* %12, align 1
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %while.body.22
  %13 = load i32, i32* %n, align 4
  %shl = shl i32 %13, 4
  %14 = load i32, i32* %c, align 4
  %15 = load i32, i32* %c, align 4
  %cmp26 = icmp sle i32 48, %15
  br i1 %cmp26, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.end.25
  %16 = load i32, i32* %c, align 4
  %cmp27 = icmp sle i32 %16, 57
  br i1 %cmp27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.end.25
  %17 = load i32, i32* %c, align 4
  %cmp28 = icmp sle i32 65, %17
  br i1 %cmp28, label %land.rhs.29, label %land.end.31

land.rhs.29:                                      ; preds = %cond.false
  %18 = load i32, i32* %c, align 4
  %cmp30 = icmp sle i32 %18, 70
  br label %land.end.31

land.end.31:                                      ; preds = %land.rhs.29, %cond.false
  %19 = phi i1 [ false, %cond.false ], [ %cmp30, %land.rhs.29 ]
  %cond = select i1 %19, i32 55, i32 87
  br label %cond.end

cond.end:                                         ; preds = %land.end.31, %cond.true
  %cond32 = phi i32 [ 48, %cond.true ], [ %cond, %land.end.31 ]
  %sub = sub nsw i32 %14, %cond32
  %or = or i32 %shl, %sub
  store i32 %or, i32* %n, align 4
  br label %while.cond.19

while.end.33:                                     ; preds = %while.cond.19
  %20 = load i32, i32* %c, align 4
  %cmp34 = icmp ne i32 %20, -1
  br i1 %cmp34, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %while.end.33
  %21 = load i32, i32* %c, align 4
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call36 = call i32 @ungetc(i32 %21, %struct._IO_FILE* %22)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %while.end.33
  %23 = load i32, i32* %n, align 4
  store i32 %23, i32* %retval
  br label %return

return:                                           ; preds = %if.end.37, %if.then.17
  %24 = load i32, i32* %retval
  ret i32 %24
}

declare i32 @_IO_getc(%struct._IO_FILE*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

declare void @clear_unwind_protect(i64) #1

; Function Attrs: nounwind uwtable
define internal void @load_charset_map(%struct.charset* %charset, %struct.charset_map_entries* %entries, i32 %n_entries, i32 %control_flag) #0 {
entry:
  %charset.addr = alloca %struct.charset*, align 8
  %entries.addr = alloca %struct.charset_map_entries*, align 8
  %n_entries.addr = alloca i32, align 4
  %control_flag.addr = alloca i32, align 4
  %vec = alloca i64, align 8
  %table = alloca i64, align 8
  %max_code = alloca i32, align 4
  %ascii_compatible_p = alloca i8, align 1
  %min_char = alloca i32, align 4
  %max_char = alloca i32, align 4
  %nonascii_min_char = alloca i32, align 4
  %i = alloca i32, align 4
  %fast_map = alloca i8*, align 8
  %n = alloca i32, align 4
  %from = alloca i32, align 4
  %to = alloca i32, align 4
  %from_index = alloca i32, align 4
  %to_index = alloca i32, align 4
  %lim_index = alloca i32, align 4
  %from_c = alloca i32, align 4
  %to_c = alloca i32, align 4
  %idx = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.charset* %charset, %struct.charset** %charset.addr, align 8
  store %struct.charset_map_entries* %entries, %struct.charset_map_entries** %entries.addr, align 8
  store i32 %n_entries, i32* %n_entries.addr, align 4
  store i32 %control_flag, i32* %control_flag.addr, align 4
  %0 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %max_code1 = getelementptr inbounds %struct.charset, %struct.charset* %0, i32 0, i32 11
  %1 = load i32, i32* %max_code1, align 4
  store i32 %1, i32* %max_code, align 4
  %2 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %ascii_compatible_p2 = getelementptr inbounds %struct.charset, %struct.charset* %2, i32 0, i32 5
  %bf.load = load i8, i8* %ascii_compatible_p2, align 8
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = trunc i8 %bf.clear to i1
  %frombool = zext i1 %bf.cast to i8
  store i8 %frombool, i8* %ascii_compatible_p, align 1
  %3 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %fast_map3 = getelementptr inbounds %struct.charset, %struct.charset* %3, i32 0, i32 16
  %arraydecay = getelementptr inbounds [190 x i8], [190 x i8]* %fast_map3, i32 0, i32 0
  store i8* %arraydecay, i8** %fast_map, align 8
  %4 = load i32, i32* %n_entries.addr, align 4
  %cmp = icmp sle i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.578

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %control_flag.addr, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then.4, label %if.end.105

if.then.4:                                        ; preds = %if.end
  %6 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 453), align 1
  %tobool5 = trunc i8 %6 to i1
  br i1 %tobool5, label %if.else.88, label %if.then.6

if.then.6:                                        ; preds = %if.then.4
  %7 = load i32, i32* %control_flag.addr, align 4
  %cmp7 = icmp eq i32 %7, 1
  br i1 %cmp7, label %if.then.8, label %if.else.79

if.then.8:                                        ; preds = %if.then.6
  %8 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %method = getelementptr inbounds %struct.charset, %struct.charset* %8, i32 0, i32 9
  %9 = load i32, i32* %method, align 4
  %cmp9 = icmp eq i32 %9, 1
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then.8
  %10 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_linear_p = getelementptr inbounds %struct.charset, %struct.charset* %10, i32 0, i32 5
  %bf.load11 = load i8, i8* %code_linear_p, align 8
  %bf.clear12 = and i8 %bf.load11, 1
  %bf.cast13 = trunc i8 %bf.clear12 to i1
  br i1 %bf.cast13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.10
  %11 = load i32, i32* %max_code, align 4
  %12 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %min_code = getelementptr inbounds %struct.charset, %struct.charset* %12, i32 0, i32 10
  %13 = load i32, i32* %min_code, align 4
  %sub = sub i32 %11, %13
  br label %cond.end.70

cond.false:                                       ; preds = %if.then.10
  %14 = load i32, i32* %max_code, align 4
  %shr = lshr i32 %14, 24
  %idxprom = zext i32 %shr to i64
  %15 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space_mask = getelementptr inbounds %struct.charset, %struct.charset* %15, i32 0, i32 4
  %16 = load i8*, i8** %code_space_mask, align 8
  %arrayidx = getelementptr inbounds i8, i8* %16, i64 %idxprom
  %17 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %17 to i32
  %and = and i32 %conv, 8
  %tobool14 = icmp ne i32 %and, 0
  br i1 %tobool14, label %land.lhs.true, label %cond.false.69

land.lhs.true:                                    ; preds = %cond.false
  %18 = load i32, i32* %max_code, align 4
  %shr15 = lshr i32 %18, 16
  %and16 = and i32 %shr15, 255
  %idxprom17 = zext i32 %and16 to i64
  %19 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space_mask18 = getelementptr inbounds %struct.charset, %struct.charset* %19, i32 0, i32 4
  %20 = load i8*, i8** %code_space_mask18, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %20, i64 %idxprom17
  %21 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %21 to i32
  %and21 = and i32 %conv20, 4
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %land.lhs.true.23, label %cond.false.69

land.lhs.true.23:                                 ; preds = %land.lhs.true
  %22 = load i32, i32* %max_code, align 4
  %shr24 = lshr i32 %22, 8
  %and25 = and i32 %shr24, 255
  %idxprom26 = zext i32 %and25 to i64
  %23 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space_mask27 = getelementptr inbounds %struct.charset, %struct.charset* %23, i32 0, i32 4
  %24 = load i8*, i8** %code_space_mask27, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %24, i64 %idxprom26
  %25 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %25 to i32
  %and30 = and i32 %conv29, 2
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %land.lhs.true.32, label %cond.false.69

land.lhs.true.32:                                 ; preds = %land.lhs.true.23
  %26 = load i32, i32* %max_code, align 4
  %and33 = and i32 %26, 255
  %idxprom34 = zext i32 %and33 to i64
  %27 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space_mask35 = getelementptr inbounds %struct.charset, %struct.charset* %27, i32 0, i32 4
  %28 = load i8*, i8** %code_space_mask35, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %28, i64 %idxprom34
  %29 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %29 to i32
  %and38 = and i32 %conv37, 1
  %tobool39 = icmp ne i32 %and38, 0
  br i1 %tobool39, label %cond.true.40, label %cond.false.69

cond.true.40:                                     ; preds = %land.lhs.true.32
  %30 = load i32, i32* %max_code, align 4
  %shr41 = lshr i32 %30, 24
  %31 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space = getelementptr inbounds %struct.charset, %struct.charset* %31, i32 0, i32 3
  %arrayidx42 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space, i32 0, i64 12
  %32 = load i32, i32* %arrayidx42, align 4
  %sub43 = sub i32 %shr41, %32
  %33 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space44 = getelementptr inbounds %struct.charset, %struct.charset* %33, i32 0, i32 3
  %arrayidx45 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space44, i32 0, i64 11
  %34 = load i32, i32* %arrayidx45, align 4
  %mul = mul i32 %sub43, %34
  %35 = load i32, i32* %max_code, align 4
  %shr46 = lshr i32 %35, 16
  %and47 = and i32 %shr46, 255
  %36 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space48 = getelementptr inbounds %struct.charset, %struct.charset* %36, i32 0, i32 3
  %arrayidx49 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space48, i32 0, i64 8
  %37 = load i32, i32* %arrayidx49, align 4
  %sub50 = sub i32 %and47, %37
  %38 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space51 = getelementptr inbounds %struct.charset, %struct.charset* %38, i32 0, i32 3
  %arrayidx52 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space51, i32 0, i64 7
  %39 = load i32, i32* %arrayidx52, align 4
  %mul53 = mul i32 %sub50, %39
  %add = add i32 %mul, %mul53
  %40 = load i32, i32* %max_code, align 4
  %shr54 = lshr i32 %40, 8
  %and55 = and i32 %shr54, 255
  %41 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space56 = getelementptr inbounds %struct.charset, %struct.charset* %41, i32 0, i32 3
  %arrayidx57 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space56, i32 0, i64 4
  %42 = load i32, i32* %arrayidx57, align 4
  %sub58 = sub i32 %and55, %42
  %43 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space59 = getelementptr inbounds %struct.charset, %struct.charset* %43, i32 0, i32 3
  %arrayidx60 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space59, i32 0, i64 3
  %44 = load i32, i32* %arrayidx60, align 4
  %mul61 = mul i32 %sub58, %44
  %add62 = add i32 %add, %mul61
  %45 = load i32, i32* %max_code, align 4
  %and63 = and i32 %45, 255
  %46 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space64 = getelementptr inbounds %struct.charset, %struct.charset* %46, i32 0, i32 3
  %arrayidx65 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space64, i32 0, i64 0
  %47 = load i32, i32* %arrayidx65, align 4
  %sub66 = sub i32 %and63, %47
  %add67 = add i32 %add62, %sub66
  %48 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %char_index_offset = getelementptr inbounds %struct.charset, %struct.charset* %48, i32 0, i32 12
  %49 = load i32, i32* %char_index_offset, align 4
  %sub68 = sub i32 %add67, %49
  br label %cond.end

cond.false.69:                                    ; preds = %land.lhs.true.32, %land.lhs.true.23, %land.lhs.true, %cond.false
  br label %cond.end

cond.end:                                         ; preds = %cond.false.69, %cond.true.40
  %cond = phi i32 [ %sub68, %cond.true.40 ], [ -1, %cond.false.69 ]
  br label %cond.end.70

cond.end.70:                                      ; preds = %cond.end, %cond.true
  %cond71 = phi i32 [ %sub, %cond.true ], [ %cond, %cond.end ]
  %add72 = add nsw i32 %cond71, 1
  store i32 %add72, i32* %n, align 4
  %50 = load i32, i32* %n, align 4
  %conv73 = sext i32 %50 to i64
  %shl = shl i64 %conv73, 2
  %add74 = add i64 %shl, 2
  %call = call i64 @Fmake_vector(i64 %add74, i64 -2)
  store i64 %call, i64* %vec, align 8
  %51 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %52 = load i64, i64* %vec, align 8
  call void @set_charset_attr(%struct.charset* %51, i32 4, i64 %52)
  br label %if.end.78

if.else:                                          ; preds = %if.then.8
  %53 = load i64, i64* @Vchar_unify_table, align 8
  %54 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %min_char75 = getelementptr inbounds %struct.charset, %struct.charset* %54, i32 0, i32 13
  %55 = load i32, i32* %min_char75, align 4
  %56 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %max_char76 = getelementptr inbounds %struct.charset, %struct.charset* %56, i32 0, i32 14
  %57 = load i32, i32* %max_char76, align 4
  %call77 = call i64 @builtin_lisp_symbol(i32 0)
  call void @char_table_set_range(i64 %53, i32 %55, i32 %57, i64 %call77)
  br label %if.end.78

if.end.78:                                        ; preds = %if.else, %cond.end.70
  br label %if.end.87

if.else.79:                                       ; preds = %if.then.6
  %call80 = call i64 @builtin_lisp_symbol(i32 0)
  %call81 = call i64 @builtin_lisp_symbol(i32 0)
  %call82 = call i64 @Fmake_char_table(i64 %call80, i64 %call81)
  store i64 %call82, i64* %table, align 8
  %58 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %59 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %method83 = getelementptr inbounds %struct.charset, %struct.charset* %59, i32 0, i32 9
  %60 = load i32, i32* %method83, align 4
  %cmp84 = icmp eq i32 %60, 1
  %cond86 = select i1 %cmp84, i32 5, i32 9
  %61 = load i64, i64* %table, align 8
  call void @set_charset_attr(%struct.charset* %58, i32 %cond86, i64 %61)
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.79, %if.end.78
  br label %if.end.104

if.else.88:                                       ; preds = %if.then.4
  %62 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %tobool89 = icmp ne %struct.anon* %62, null
  br i1 %tobool89, label %if.end.92, label %if.then.90

if.then.90:                                       ; preds = %if.else.88
  %call91 = call noalias i8* @xmalloc(i64 262168)
  %63 = bitcast i8* %call91 to %struct.anon*
  store %struct.anon* %63, %struct.anon** @temp_charset_work, align 8
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.90, %if.else.88
  %64 = load i32, i32* %control_flag.addr, align 4
  %cmp93 = icmp eq i32 %64, 1
  br i1 %cmp93, label %if.then.95, label %if.else.97

if.then.95:                                       ; preds = %if.end.92
  %65 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %table96 = getelementptr inbounds %struct.anon, %struct.anon* %65, i32 0, i32 5
  %decoder = bitcast %union.anon.0* %table96 to [65536 x i32]*
  %66 = bitcast [65536 x i32]* %decoder to i8*
  call void @llvm.memset.p0i8.i64(i8* %66, i8 -1, i64 262144, i32 4, i1 false)
  br label %if.end.99

if.else.97:                                       ; preds = %if.end.92
  %67 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %table98 = getelementptr inbounds %struct.anon, %struct.anon* %67, i32 0, i32 5
  %encoder = bitcast %union.anon.0* %table98 to [131072 x i16]*
  %68 = bitcast [131072 x i16]* %encoder to i8*
  call void @llvm.memset.p0i8.i64(i8* %68, i8 0, i64 262144, i32 4, i1 false)
  %69 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %zero_index_char = getelementptr inbounds %struct.anon, %struct.anon* %69, i32 0, i32 4
  store i32 -1, i32* %zero_index_char, align 4
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.97, %if.then.95
  %70 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %71 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %current = getelementptr inbounds %struct.anon, %struct.anon* %71, i32 0, i32 0
  store %struct.charset* %70, %struct.charset** %current, align 8
  %72 = load i32, i32* %control_flag.addr, align 4
  %cmp100 = icmp eq i32 %72, 2
  %conv101 = zext i1 %cmp100 to i32
  %conv102 = trunc i32 %conv101 to i16
  %73 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %for_encoder = getelementptr inbounds %struct.anon, %struct.anon* %73, i32 0, i32 1
  store i16 %conv102, i16* %for_encoder, align 2
  %74 = load i32, i32* %control_flag.addr, align 4
  %add103 = add nsw i32 %74, 2
  store i32 %add103, i32* %control_flag.addr, align 4
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.99, %if.end.87
  store i8 1, i8* @charset_map_loaded, align 1
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.end
  %75 = load %struct.charset_map_entries*, %struct.charset_map_entries** %entries.addr, align 8
  %entry106 = getelementptr inbounds %struct.charset_map_entries, %struct.charset_map_entries* %75, i32 0, i32 0
  %arrayidx107 = getelementptr inbounds [65536 x %struct.anon.2], [65536 x %struct.anon.2]* %entry106, i32 0, i64 0
  %c = getelementptr inbounds %struct.anon.2, %struct.anon.2* %arrayidx107, i32 0, i32 2
  %76 = load i32, i32* %c, align 4
  store i32 %76, i32* %max_char, align 4
  store i32 %76, i32* %min_char, align 4
  store i32 4194303, i32* %nonascii_min_char, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.557, %if.end.105
  %77 = load i32, i32* %i, align 4
  %78 = load i32, i32* %n_entries.addr, align 4
  %cmp108 = icmp slt i32 %77, %78
  br i1 %cmp108, label %for.body, label %for.end.559

for.body:                                         ; preds = %for.cond
  %79 = load i32, i32* %i, align 4
  %rem = srem i32 %79, 65536
  store i32 %rem, i32* %idx, align 4
  %80 = load i32, i32* %i, align 4
  %cmp110 = icmp sgt i32 %80, 0
  br i1 %cmp110, label %land.lhs.true.112, label %if.end.116

land.lhs.true.112:                                ; preds = %for.body
  %81 = load i32, i32* %idx, align 4
  %cmp113 = icmp eq i32 %81, 0
  br i1 %cmp113, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %land.lhs.true.112
  %82 = load %struct.charset_map_entries*, %struct.charset_map_entries** %entries.addr, align 8
  %next = getelementptr inbounds %struct.charset_map_entries, %struct.charset_map_entries* %82, i32 0, i32 1
  %83 = load %struct.charset_map_entries*, %struct.charset_map_entries** %next, align 8
  store %struct.charset_map_entries* %83, %struct.charset_map_entries** %entries.addr, align 8
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.115, %land.lhs.true.112, %for.body
  %84 = load i32, i32* %idx, align 4
  %idxprom117 = sext i32 %84 to i64
  %85 = load %struct.charset_map_entries*, %struct.charset_map_entries** %entries.addr, align 8
  %entry118 = getelementptr inbounds %struct.charset_map_entries, %struct.charset_map_entries* %85, i32 0, i32 0
  %arrayidx119 = getelementptr inbounds [65536 x %struct.anon.2], [65536 x %struct.anon.2]* %entry118, i32 0, i64 %idxprom117
  %from120 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %arrayidx119, i32 0, i32 0
  %86 = load i32, i32* %from120, align 4
  store i32 %86, i32* %from, align 4
  %87 = load i32, i32* %idx, align 4
  %idxprom121 = sext i32 %87 to i64
  %88 = load %struct.charset_map_entries*, %struct.charset_map_entries** %entries.addr, align 8
  %entry122 = getelementptr inbounds %struct.charset_map_entries, %struct.charset_map_entries* %88, i32 0, i32 0
  %arrayidx123 = getelementptr inbounds [65536 x %struct.anon.2], [65536 x %struct.anon.2]* %entry122, i32 0, i64 %idxprom121
  %to124 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %arrayidx123, i32 0, i32 1
  %89 = load i32, i32* %to124, align 4
  store i32 %89, i32* %to, align 4
  %90 = load i32, i32* %idx, align 4
  %idxprom125 = sext i32 %90 to i64
  %91 = load %struct.charset_map_entries*, %struct.charset_map_entries** %entries.addr, align 8
  %entry126 = getelementptr inbounds %struct.charset_map_entries, %struct.charset_map_entries* %91, i32 0, i32 0
  %arrayidx127 = getelementptr inbounds [65536 x %struct.anon.2], [65536 x %struct.anon.2]* %entry126, i32 0, i64 %idxprom125
  %c128 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %arrayidx127, i32 0, i32 2
  %92 = load i32, i32* %c128, align 4
  store i32 %92, i32* %from_c, align 4
  %93 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_linear_p129 = getelementptr inbounds %struct.charset, %struct.charset* %93, i32 0, i32 5
  %bf.load130 = load i8, i8* %code_linear_p129, align 8
  %bf.clear131 = and i8 %bf.load130, 1
  %bf.cast132 = trunc i8 %bf.clear131 to i1
  br i1 %bf.cast132, label %cond.true.134, label %cond.false.137

cond.true.134:                                    ; preds = %if.end.116
  %94 = load i32, i32* %from, align 4
  %95 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %min_code135 = getelementptr inbounds %struct.charset, %struct.charset* %95, i32 0, i32 10
  %96 = load i32, i32* %min_code135, align 4
  %sub136 = sub i32 %94, %96
  br label %cond.end.207

cond.false.137:                                   ; preds = %if.end.116
  %97 = load i32, i32* %from, align 4
  %shr138 = lshr i32 %97, 24
  %idxprom139 = zext i32 %shr138 to i64
  %98 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space_mask140 = getelementptr inbounds %struct.charset, %struct.charset* %98, i32 0, i32 4
  %99 = load i8*, i8** %code_space_mask140, align 8
  %arrayidx141 = getelementptr inbounds i8, i8* %99, i64 %idxprom139
  %100 = load i8, i8* %arrayidx141, align 1
  %conv142 = zext i8 %100 to i32
  %and143 = and i32 %conv142, 8
  %tobool144 = icmp ne i32 %and143, 0
  br i1 %tobool144, label %land.lhs.true.145, label %cond.false.204

land.lhs.true.145:                                ; preds = %cond.false.137
  %101 = load i32, i32* %from, align 4
  %shr146 = lshr i32 %101, 16
  %and147 = and i32 %shr146, 255
  %idxprom148 = zext i32 %and147 to i64
  %102 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space_mask149 = getelementptr inbounds %struct.charset, %struct.charset* %102, i32 0, i32 4
  %103 = load i8*, i8** %code_space_mask149, align 8
  %arrayidx150 = getelementptr inbounds i8, i8* %103, i64 %idxprom148
  %104 = load i8, i8* %arrayidx150, align 1
  %conv151 = zext i8 %104 to i32
  %and152 = and i32 %conv151, 4
  %tobool153 = icmp ne i32 %and152, 0
  br i1 %tobool153, label %land.lhs.true.154, label %cond.false.204

land.lhs.true.154:                                ; preds = %land.lhs.true.145
  %105 = load i32, i32* %from, align 4
  %shr155 = lshr i32 %105, 8
  %and156 = and i32 %shr155, 255
  %idxprom157 = zext i32 %and156 to i64
  %106 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space_mask158 = getelementptr inbounds %struct.charset, %struct.charset* %106, i32 0, i32 4
  %107 = load i8*, i8** %code_space_mask158, align 8
  %arrayidx159 = getelementptr inbounds i8, i8* %107, i64 %idxprom157
  %108 = load i8, i8* %arrayidx159, align 1
  %conv160 = zext i8 %108 to i32
  %and161 = and i32 %conv160, 2
  %tobool162 = icmp ne i32 %and161, 0
  br i1 %tobool162, label %land.lhs.true.163, label %cond.false.204

land.lhs.true.163:                                ; preds = %land.lhs.true.154
  %109 = load i32, i32* %from, align 4
  %and164 = and i32 %109, 255
  %idxprom165 = zext i32 %and164 to i64
  %110 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space_mask166 = getelementptr inbounds %struct.charset, %struct.charset* %110, i32 0, i32 4
  %111 = load i8*, i8** %code_space_mask166, align 8
  %arrayidx167 = getelementptr inbounds i8, i8* %111, i64 %idxprom165
  %112 = load i8, i8* %arrayidx167, align 1
  %conv168 = zext i8 %112 to i32
  %and169 = and i32 %conv168, 1
  %tobool170 = icmp ne i32 %and169, 0
  br i1 %tobool170, label %cond.true.171, label %cond.false.204

cond.true.171:                                    ; preds = %land.lhs.true.163
  %113 = load i32, i32* %from, align 4
  %shr172 = lshr i32 %113, 24
  %114 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space173 = getelementptr inbounds %struct.charset, %struct.charset* %114, i32 0, i32 3
  %arrayidx174 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space173, i32 0, i64 12
  %115 = load i32, i32* %arrayidx174, align 4
  %sub175 = sub i32 %shr172, %115
  %116 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space176 = getelementptr inbounds %struct.charset, %struct.charset* %116, i32 0, i32 3
  %arrayidx177 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space176, i32 0, i64 11
  %117 = load i32, i32* %arrayidx177, align 4
  %mul178 = mul i32 %sub175, %117
  %118 = load i32, i32* %from, align 4
  %shr179 = lshr i32 %118, 16
  %and180 = and i32 %shr179, 255
  %119 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space181 = getelementptr inbounds %struct.charset, %struct.charset* %119, i32 0, i32 3
  %arrayidx182 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space181, i32 0, i64 8
  %120 = load i32, i32* %arrayidx182, align 4
  %sub183 = sub i32 %and180, %120
  %121 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space184 = getelementptr inbounds %struct.charset, %struct.charset* %121, i32 0, i32 3
  %arrayidx185 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space184, i32 0, i64 7
  %122 = load i32, i32* %arrayidx185, align 4
  %mul186 = mul i32 %sub183, %122
  %add187 = add i32 %mul178, %mul186
  %123 = load i32, i32* %from, align 4
  %shr188 = lshr i32 %123, 8
  %and189 = and i32 %shr188, 255
  %124 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space190 = getelementptr inbounds %struct.charset, %struct.charset* %124, i32 0, i32 3
  %arrayidx191 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space190, i32 0, i64 4
  %125 = load i32, i32* %arrayidx191, align 4
  %sub192 = sub i32 %and189, %125
  %126 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space193 = getelementptr inbounds %struct.charset, %struct.charset* %126, i32 0, i32 3
  %arrayidx194 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space193, i32 0, i64 3
  %127 = load i32, i32* %arrayidx194, align 4
  %mul195 = mul i32 %sub192, %127
  %add196 = add i32 %add187, %mul195
  %128 = load i32, i32* %from, align 4
  %and197 = and i32 %128, 255
  %129 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space198 = getelementptr inbounds %struct.charset, %struct.charset* %129, i32 0, i32 3
  %arrayidx199 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space198, i32 0, i64 0
  %130 = load i32, i32* %arrayidx199, align 4
  %sub200 = sub i32 %and197, %130
  %add201 = add i32 %add196, %sub200
  %131 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %char_index_offset202 = getelementptr inbounds %struct.charset, %struct.charset* %131, i32 0, i32 12
  %132 = load i32, i32* %char_index_offset202, align 4
  %sub203 = sub i32 %add201, %132
  br label %cond.end.205

cond.false.204:                                   ; preds = %land.lhs.true.163, %land.lhs.true.154, %land.lhs.true.145, %cond.false.137
  br label %cond.end.205

cond.end.205:                                     ; preds = %cond.false.204, %cond.true.171
  %cond206 = phi i32 [ %sub203, %cond.true.171 ], [ -1, %cond.false.204 ]
  br label %cond.end.207

cond.end.207:                                     ; preds = %cond.end.205, %cond.true.134
  %cond208 = phi i32 [ %sub136, %cond.true.134 ], [ %cond206, %cond.end.205 ]
  store i32 %cond208, i32* %from_index, align 4
  %133 = load i32, i32* %from, align 4
  %134 = load i32, i32* %to, align 4
  %cmp209 = icmp eq i32 %133, %134
  br i1 %cmp209, label %if.then.211, label %if.else.212

if.then.211:                                      ; preds = %cond.end.207
  %135 = load i32, i32* %from_index, align 4
  store i32 %135, i32* %to_index, align 4
  %136 = load i32, i32* %from_c, align 4
  store i32 %136, i32* %to_c, align 4
  br label %if.end.295

if.else.212:                                      ; preds = %cond.end.207
  %137 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_linear_p213 = getelementptr inbounds %struct.charset, %struct.charset* %137, i32 0, i32 5
  %bf.load214 = load i8, i8* %code_linear_p213, align 8
  %bf.clear215 = and i8 %bf.load214, 1
  %bf.cast216 = trunc i8 %bf.clear215 to i1
  br i1 %bf.cast216, label %cond.true.218, label %cond.false.221

cond.true.218:                                    ; preds = %if.else.212
  %138 = load i32, i32* %to, align 4
  %139 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %min_code219 = getelementptr inbounds %struct.charset, %struct.charset* %139, i32 0, i32 10
  %140 = load i32, i32* %min_code219, align 4
  %sub220 = sub i32 %138, %140
  br label %cond.end.291

cond.false.221:                                   ; preds = %if.else.212
  %141 = load i32, i32* %to, align 4
  %shr222 = lshr i32 %141, 24
  %idxprom223 = zext i32 %shr222 to i64
  %142 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space_mask224 = getelementptr inbounds %struct.charset, %struct.charset* %142, i32 0, i32 4
  %143 = load i8*, i8** %code_space_mask224, align 8
  %arrayidx225 = getelementptr inbounds i8, i8* %143, i64 %idxprom223
  %144 = load i8, i8* %arrayidx225, align 1
  %conv226 = zext i8 %144 to i32
  %and227 = and i32 %conv226, 8
  %tobool228 = icmp ne i32 %and227, 0
  br i1 %tobool228, label %land.lhs.true.229, label %cond.false.288

land.lhs.true.229:                                ; preds = %cond.false.221
  %145 = load i32, i32* %to, align 4
  %shr230 = lshr i32 %145, 16
  %and231 = and i32 %shr230, 255
  %idxprom232 = zext i32 %and231 to i64
  %146 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space_mask233 = getelementptr inbounds %struct.charset, %struct.charset* %146, i32 0, i32 4
  %147 = load i8*, i8** %code_space_mask233, align 8
  %arrayidx234 = getelementptr inbounds i8, i8* %147, i64 %idxprom232
  %148 = load i8, i8* %arrayidx234, align 1
  %conv235 = zext i8 %148 to i32
  %and236 = and i32 %conv235, 4
  %tobool237 = icmp ne i32 %and236, 0
  br i1 %tobool237, label %land.lhs.true.238, label %cond.false.288

land.lhs.true.238:                                ; preds = %land.lhs.true.229
  %149 = load i32, i32* %to, align 4
  %shr239 = lshr i32 %149, 8
  %and240 = and i32 %shr239, 255
  %idxprom241 = zext i32 %and240 to i64
  %150 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space_mask242 = getelementptr inbounds %struct.charset, %struct.charset* %150, i32 0, i32 4
  %151 = load i8*, i8** %code_space_mask242, align 8
  %arrayidx243 = getelementptr inbounds i8, i8* %151, i64 %idxprom241
  %152 = load i8, i8* %arrayidx243, align 1
  %conv244 = zext i8 %152 to i32
  %and245 = and i32 %conv244, 2
  %tobool246 = icmp ne i32 %and245, 0
  br i1 %tobool246, label %land.lhs.true.247, label %cond.false.288

land.lhs.true.247:                                ; preds = %land.lhs.true.238
  %153 = load i32, i32* %to, align 4
  %and248 = and i32 %153, 255
  %idxprom249 = zext i32 %and248 to i64
  %154 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space_mask250 = getelementptr inbounds %struct.charset, %struct.charset* %154, i32 0, i32 4
  %155 = load i8*, i8** %code_space_mask250, align 8
  %arrayidx251 = getelementptr inbounds i8, i8* %155, i64 %idxprom249
  %156 = load i8, i8* %arrayidx251, align 1
  %conv252 = zext i8 %156 to i32
  %and253 = and i32 %conv252, 1
  %tobool254 = icmp ne i32 %and253, 0
  br i1 %tobool254, label %cond.true.255, label %cond.false.288

cond.true.255:                                    ; preds = %land.lhs.true.247
  %157 = load i32, i32* %to, align 4
  %shr256 = lshr i32 %157, 24
  %158 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space257 = getelementptr inbounds %struct.charset, %struct.charset* %158, i32 0, i32 3
  %arrayidx258 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space257, i32 0, i64 12
  %159 = load i32, i32* %arrayidx258, align 4
  %sub259 = sub i32 %shr256, %159
  %160 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space260 = getelementptr inbounds %struct.charset, %struct.charset* %160, i32 0, i32 3
  %arrayidx261 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space260, i32 0, i64 11
  %161 = load i32, i32* %arrayidx261, align 4
  %mul262 = mul i32 %sub259, %161
  %162 = load i32, i32* %to, align 4
  %shr263 = lshr i32 %162, 16
  %and264 = and i32 %shr263, 255
  %163 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space265 = getelementptr inbounds %struct.charset, %struct.charset* %163, i32 0, i32 3
  %arrayidx266 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space265, i32 0, i64 8
  %164 = load i32, i32* %arrayidx266, align 4
  %sub267 = sub i32 %and264, %164
  %165 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space268 = getelementptr inbounds %struct.charset, %struct.charset* %165, i32 0, i32 3
  %arrayidx269 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space268, i32 0, i64 7
  %166 = load i32, i32* %arrayidx269, align 4
  %mul270 = mul i32 %sub267, %166
  %add271 = add i32 %mul262, %mul270
  %167 = load i32, i32* %to, align 4
  %shr272 = lshr i32 %167, 8
  %and273 = and i32 %shr272, 255
  %168 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space274 = getelementptr inbounds %struct.charset, %struct.charset* %168, i32 0, i32 3
  %arrayidx275 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space274, i32 0, i64 4
  %169 = load i32, i32* %arrayidx275, align 4
  %sub276 = sub i32 %and273, %169
  %170 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space277 = getelementptr inbounds %struct.charset, %struct.charset* %170, i32 0, i32 3
  %arrayidx278 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space277, i32 0, i64 3
  %171 = load i32, i32* %arrayidx278, align 4
  %mul279 = mul i32 %sub276, %171
  %add280 = add i32 %add271, %mul279
  %172 = load i32, i32* %to, align 4
  %and281 = and i32 %172, 255
  %173 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space282 = getelementptr inbounds %struct.charset, %struct.charset* %173, i32 0, i32 3
  %arrayidx283 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space282, i32 0, i64 0
  %174 = load i32, i32* %arrayidx283, align 4
  %sub284 = sub i32 %and281, %174
  %add285 = add i32 %add280, %sub284
  %175 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %char_index_offset286 = getelementptr inbounds %struct.charset, %struct.charset* %175, i32 0, i32 12
  %176 = load i32, i32* %char_index_offset286, align 4
  %sub287 = sub i32 %add285, %176
  br label %cond.end.289

cond.false.288:                                   ; preds = %land.lhs.true.247, %land.lhs.true.238, %land.lhs.true.229, %cond.false.221
  br label %cond.end.289

cond.end.289:                                     ; preds = %cond.false.288, %cond.true.255
  %cond290 = phi i32 [ %sub287, %cond.true.255 ], [ -1, %cond.false.288 ]
  br label %cond.end.291

cond.end.291:                                     ; preds = %cond.end.289, %cond.true.218
  %cond292 = phi i32 [ %sub220, %cond.true.218 ], [ %cond290, %cond.end.289 ]
  store i32 %cond292, i32* %to_index, align 4
  %177 = load i32, i32* %from_c, align 4
  %178 = load i32, i32* %to_index, align 4
  %179 = load i32, i32* %from_index, align 4
  %sub293 = sub nsw i32 %178, %179
  %add294 = add nsw i32 %177, %sub293
  store i32 %add294, i32* %to_c, align 4
  br label %if.end.295

if.end.295:                                       ; preds = %cond.end.291, %if.then.211
  %180 = load i32, i32* %from_index, align 4
  %cmp296 = icmp slt i32 %180, 0
  br i1 %cmp296, label %if.then.300, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.295
  %181 = load i32, i32* %to_index, align 4
  %cmp298 = icmp slt i32 %181, 0
  br i1 %cmp298, label %if.then.300, label %if.end.301

if.then.300:                                      ; preds = %lor.lhs.false, %if.end.295
  br label %for.inc.557

if.end.301:                                       ; preds = %lor.lhs.false
  %182 = load i32, i32* %to_index, align 4
  %add302 = add nsw i32 %182, 1
  store i32 %add302, i32* %lim_index, align 4
  %183 = load i32, i32* %to_c, align 4
  %184 = load i32, i32* %max_char, align 4
  %cmp303 = icmp sgt i32 %183, %184
  br i1 %cmp303, label %if.then.305, label %if.else.306

if.then.305:                                      ; preds = %if.end.301
  %185 = load i32, i32* %to_c, align 4
  store i32 %185, i32* %max_char, align 4
  br label %if.end.311

if.else.306:                                      ; preds = %if.end.301
  %186 = load i32, i32* %from_c, align 4
  %187 = load i32, i32* %min_char, align 4
  %cmp307 = icmp slt i32 %186, %187
  br i1 %cmp307, label %if.then.309, label %if.end.310

if.then.309:                                      ; preds = %if.else.306
  %188 = load i32, i32* %from_c, align 4
  store i32 %188, i32* %min_char, align 4
  br label %if.end.310

if.end.310:                                       ; preds = %if.then.309, %if.else.306
  br label %if.end.311

if.end.311:                                       ; preds = %if.end.310, %if.then.305
  %189 = load i32, i32* %control_flag.addr, align 4
  %cmp312 = icmp eq i32 %189, 1
  br i1 %cmp312, label %if.then.314, label %if.else.342

if.then.314:                                      ; preds = %if.end.311
  %190 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %method315 = getelementptr inbounds %struct.charset, %struct.charset* %190, i32 0, i32 9
  %191 = load i32, i32* %method315, align 4
  %cmp316 = icmp eq i32 %191, 1
  br i1 %cmp316, label %if.then.318, label %if.else.328

if.then.318:                                      ; preds = %if.then.314
  br label %for.cond.319

for.cond.319:                                     ; preds = %for.inc, %if.then.318
  %192 = load i32, i32* %from_index, align 4
  %193 = load i32, i32* %lim_index, align 4
  %cmp320 = icmp slt i32 %192, %193
  br i1 %cmp320, label %for.body.322, label %for.end

for.body.322:                                     ; preds = %for.cond.319
  %194 = load i64, i64* %vec, align 8
  %195 = load i32, i32* %from_index, align 4
  %conv323 = sext i32 %195 to i64
  %196 = load i32, i32* %from_c, align 4
  %conv324 = sext i32 %196 to i64
  %shl325 = shl i64 %conv324, 2
  %add326 = add i64 %shl325, 2
  call void @ASET(i64 %194, i64 %conv323, i64 %add326)
  br label %for.inc

for.inc:                                          ; preds = %for.body.322
  %197 = load i32, i32* %from_index, align 4
  %inc = add nsw i32 %197, 1
  store i32 %inc, i32* %from_index, align 4
  %198 = load i32, i32* %from_c, align 4
  %inc327 = add nsw i32 %198, 1
  store i32 %inc327, i32* %from_c, align 4
  br label %for.cond.319

for.end:                                          ; preds = %for.cond.319
  br label %if.end.341

if.else.328:                                      ; preds = %if.then.314
  br label %for.cond.329

for.cond.329:                                     ; preds = %for.inc.337, %if.else.328
  %199 = load i32, i32* %from_index, align 4
  %200 = load i32, i32* %lim_index, align 4
  %cmp330 = icmp slt i32 %199, %200
  br i1 %cmp330, label %for.body.332, label %for.end.340

for.body.332:                                     ; preds = %for.cond.329
  %201 = load i64, i64* @Vchar_unify_table, align 8
  %202 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_offset = getelementptr inbounds %struct.charset, %struct.charset* %202, i32 0, i32 17
  %203 = load i32, i32* %code_offset, align 4
  %204 = load i32, i32* %from_index, align 4
  %add333 = add nsw i32 %203, %204
  %205 = load i32, i32* %from_c, align 4
  %conv334 = sext i32 %205 to i64
  %shl335 = shl i64 %conv334, 2
  %add336 = add i64 %shl335, 2
  call void @CHAR_TABLE_SET(i64 %201, i32 %add333, i64 %add336)
  br label %for.inc.337

for.inc.337:                                      ; preds = %for.body.332
  %206 = load i32, i32* %from_index, align 4
  %inc338 = add nsw i32 %206, 1
  store i32 %inc338, i32* %from_index, align 4
  %207 = load i32, i32* %from_c, align 4
  %inc339 = add nsw i32 %207, 1
  store i32 %inc339, i32* %from_c, align 4
  br label %for.cond.329

for.end.340:                                      ; preds = %for.cond.329
  br label %if.end.341

if.end.341:                                       ; preds = %for.end.340, %for.end
  br label %if.end.556

if.else.342:                                      ; preds = %if.end.311
  %208 = load i32, i32* %control_flag.addr, align 4
  %cmp343 = icmp eq i32 %208, 2
  br i1 %cmp343, label %if.then.345, label %if.else.439

if.then.345:                                      ; preds = %if.else.342
  %209 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %method346 = getelementptr inbounds %struct.charset, %struct.charset* %209, i32 0, i32 9
  %210 = load i32, i32* %method346, align 4
  %cmp347 = icmp eq i32 %210, 1
  br i1 %cmp347, label %land.lhs.true.349, label %if.else.420

land.lhs.true.349:                                ; preds = %if.then.345
  %211 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %compact_codes_p = getelementptr inbounds %struct.charset, %struct.charset* %211, i32 0, i32 5
  %bf.load350 = load i8, i8* %compact_codes_p, align 8
  %bf.lshr351 = lshr i8 %bf.load350, 4
  %bf.clear352 = and i8 %bf.lshr351, 1
  %bf.cast353 = trunc i8 %bf.clear352 to i1
  br i1 %bf.cast353, label %if.then.355, label %if.else.420

if.then.355:                                      ; preds = %land.lhs.true.349
  br label %for.cond.356

for.cond.356:                                     ; preds = %for.inc.416, %if.then.355
  %212 = load i32, i32* %from_index, align 4
  %213 = load i32, i32* %lim_index, align 4
  %cmp357 = icmp slt i32 %212, %213
  br i1 %cmp357, label %for.body.359, label %for.end.419

for.body.359:                                     ; preds = %for.cond.356
  %214 = load i32, i32* %from_index, align 4
  store i32 %214, i32* %code, align 4
  %215 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_linear_p360 = getelementptr inbounds %struct.charset, %struct.charset* %215, i32 0, i32 5
  %bf.load361 = load i8, i8* %code_linear_p360, align 8
  %bf.clear362 = and i8 %bf.load361, 1
  %bf.cast363 = trunc i8 %bf.clear362 to i1
  br i1 %bf.cast363, label %cond.true.365, label %cond.false.368

cond.true.365:                                    ; preds = %for.body.359
  %216 = load i32, i32* %code, align 4
  %217 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %min_code366 = getelementptr inbounds %struct.charset, %struct.charset* %217, i32 0, i32 10
  %218 = load i32, i32* %min_code366, align 4
  %add367 = add i32 %216, %218
  br label %cond.end.405

cond.false.368:                                   ; preds = %for.body.359
  %219 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %char_index_offset369 = getelementptr inbounds %struct.charset, %struct.charset* %219, i32 0, i32 12
  %220 = load i32, i32* %char_index_offset369, align 4
  %221 = load i32, i32* %code, align 4
  %add370 = add i32 %221, %220
  store i32 %add370, i32* %code, align 4
  %222 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space371 = getelementptr inbounds %struct.charset, %struct.charset* %222, i32 0, i32 3
  %arrayidx372 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space371, i32 0, i64 0
  %223 = load i32, i32* %arrayidx372, align 4
  %224 = load i32, i32* %code, align 4
  %225 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space373 = getelementptr inbounds %struct.charset, %struct.charset* %225, i32 0, i32 3
  %arrayidx374 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space373, i32 0, i64 2
  %226 = load i32, i32* %arrayidx374, align 4
  %rem375 = urem i32 %224, %226
  %add376 = add i32 %223, %rem375
  %227 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space377 = getelementptr inbounds %struct.charset, %struct.charset* %227, i32 0, i32 3
  %arrayidx378 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space377, i32 0, i64 4
  %228 = load i32, i32* %arrayidx378, align 4
  %229 = load i32, i32* %code, align 4
  %230 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space379 = getelementptr inbounds %struct.charset, %struct.charset* %230, i32 0, i32 3
  %arrayidx380 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space379, i32 0, i64 3
  %231 = load i32, i32* %arrayidx380, align 4
  %div = udiv i32 %229, %231
  %232 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space381 = getelementptr inbounds %struct.charset, %struct.charset* %232, i32 0, i32 3
  %arrayidx382 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space381, i32 0, i64 6
  %233 = load i32, i32* %arrayidx382, align 4
  %rem383 = urem i32 %div, %233
  %add384 = add i32 %228, %rem383
  %shl385 = shl i32 %add384, 8
  %or = or i32 %add376, %shl385
  %234 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space386 = getelementptr inbounds %struct.charset, %struct.charset* %234, i32 0, i32 3
  %arrayidx387 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space386, i32 0, i64 8
  %235 = load i32, i32* %arrayidx387, align 4
  %236 = load i32, i32* %code, align 4
  %237 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space388 = getelementptr inbounds %struct.charset, %struct.charset* %237, i32 0, i32 3
  %arrayidx389 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space388, i32 0, i64 7
  %238 = load i32, i32* %arrayidx389, align 4
  %div390 = udiv i32 %236, %238
  %239 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space391 = getelementptr inbounds %struct.charset, %struct.charset* %239, i32 0, i32 3
  %arrayidx392 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space391, i32 0, i64 10
  %240 = load i32, i32* %arrayidx392, align 4
  %rem393 = urem i32 %div390, %240
  %add394 = add i32 %235, %rem393
  %shl395 = shl i32 %add394, 16
  %or396 = or i32 %or, %shl395
  %241 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space397 = getelementptr inbounds %struct.charset, %struct.charset* %241, i32 0, i32 3
  %arrayidx398 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space397, i32 0, i64 12
  %242 = load i32, i32* %arrayidx398, align 4
  %243 = load i32, i32* %code, align 4
  %244 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %code_space399 = getelementptr inbounds %struct.charset, %struct.charset* %244, i32 0, i32 3
  %arrayidx400 = getelementptr inbounds [15 x i32], [15 x i32]* %code_space399, i32 0, i64 11
  %245 = load i32, i32* %arrayidx400, align 4
  %div401 = udiv i32 %243, %245
  %add402 = add i32 %242, %div401
  %shl403 = shl i32 %add402, 24
  %or404 = or i32 %or396, %shl403
  br label %cond.end.405

cond.end.405:                                     ; preds = %cond.false.368, %cond.true.365
  %cond406 = phi i32 [ %add367, %cond.true.365 ], [ %or404, %cond.false.368 ]
  store i32 %cond406, i32* %code, align 4
  %246 = load i64, i64* %table, align 8
  %247 = load i32, i32* %from_c, align 4
  %call407 = call i64 @CHAR_TABLE_REF(i64 %246, i32 %247)
  %call408 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp409 = icmp eq i64 %call407, %call408
  br i1 %cmp409, label %if.then.411, label %if.end.415

if.then.411:                                      ; preds = %cond.end.405
  %248 = load i64, i64* %table, align 8
  %249 = load i32, i32* %from_c, align 4
  %250 = load i32, i32* %code, align 4
  %conv412 = zext i32 %250 to i64
  %shl413 = shl i64 %conv412, 2
  %add414 = add i64 %shl413, 2
  call void @CHAR_TABLE_SET(i64 %248, i32 %249, i64 %add414)
  br label %if.end.415

if.end.415:                                       ; preds = %if.then.411, %cond.end.405
  br label %for.inc.416

for.inc.416:                                      ; preds = %if.end.415
  %251 = load i32, i32* %from_index, align 4
  %inc417 = add nsw i32 %251, 1
  store i32 %inc417, i32* %from_index, align 4
  %252 = load i32, i32* %from_c, align 4
  %inc418 = add nsw i32 %252, 1
  store i32 %inc418, i32* %from_c, align 4
  br label %for.cond.356

for.end.419:                                      ; preds = %for.cond.356
  br label %if.end.438

if.else.420:                                      ; preds = %land.lhs.true.349, %if.then.345
  br label %for.cond.421

for.cond.421:                                     ; preds = %for.inc.434, %if.else.420
  %253 = load i32, i32* %from_index, align 4
  %254 = load i32, i32* %lim_index, align 4
  %cmp422 = icmp slt i32 %253, %254
  br i1 %cmp422, label %for.body.424, label %for.end.437

for.body.424:                                     ; preds = %for.cond.421
  %255 = load i64, i64* %table, align 8
  %256 = load i32, i32* %from_c, align 4
  %call425 = call i64 @CHAR_TABLE_REF(i64 %255, i32 %256)
  %call426 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp427 = icmp eq i64 %call425, %call426
  br i1 %cmp427, label %if.then.429, label %if.end.433

if.then.429:                                      ; preds = %for.body.424
  %257 = load i64, i64* %table, align 8
  %258 = load i32, i32* %from_c, align 4
  %259 = load i32, i32* %from_index, align 4
  %conv430 = sext i32 %259 to i64
  %shl431 = shl i64 %conv430, 2
  %add432 = add i64 %shl431, 2
  call void @CHAR_TABLE_SET(i64 %257, i32 %258, i64 %add432)
  br label %if.end.433

if.end.433:                                       ; preds = %if.then.429, %for.body.424
  br label %for.inc.434

for.inc.434:                                      ; preds = %if.end.433
  %260 = load i32, i32* %from_index, align 4
  %inc435 = add nsw i32 %260, 1
  store i32 %inc435, i32* %from_index, align 4
  %261 = load i32, i32* %from_c, align 4
  %inc436 = add nsw i32 %261, 1
  store i32 %inc436, i32* %from_c, align 4
  br label %for.cond.421

for.end.437:                                      ; preds = %for.cond.421
  br label %if.end.438

if.end.438:                                       ; preds = %for.end.437, %for.end.419
  br label %if.end.555

if.else.439:                                      ; preds = %if.else.342
  %262 = load i32, i32* %control_flag.addr, align 4
  %cmp440 = icmp eq i32 %262, 3
  br i1 %cmp440, label %if.then.442, label %if.else.455

if.then.442:                                      ; preds = %if.else.439
  br label %for.cond.443

for.cond.443:                                     ; preds = %for.inc.451, %if.then.442
  %263 = load i32, i32* %from_index, align 4
  %264 = load i32, i32* %lim_index, align 4
  %cmp444 = icmp slt i32 %263, %264
  br i1 %cmp444, label %for.body.446, label %for.end.454

for.body.446:                                     ; preds = %for.cond.443
  %265 = load i32, i32* %from_c, align 4
  %266 = load i32, i32* %from_index, align 4
  %idxprom447 = sext i32 %266 to i64
  %267 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %table448 = getelementptr inbounds %struct.anon, %struct.anon* %267, i32 0, i32 5
  %decoder449 = bitcast %union.anon.0* %table448 to [65536 x i32]*
  %arrayidx450 = getelementptr inbounds [65536 x i32], [65536 x i32]* %decoder449, i32 0, i64 %idxprom447
  store i32 %265, i32* %arrayidx450, align 4
  br label %for.inc.451

for.inc.451:                                      ; preds = %for.body.446
  %268 = load i32, i32* %from_index, align 4
  %inc452 = add nsw i32 %268, 1
  store i32 %inc452, i32* %from_index, align 4
  %269 = load i32, i32* %from_c, align 4
  %inc453 = add nsw i32 %269, 1
  store i32 %inc453, i32* %from_c, align 4
  br label %for.cond.443

for.end.454:                                      ; preds = %for.cond.443
  br label %if.end.554

if.else.455:                                      ; preds = %if.else.439
  %270 = load i32, i32* %control_flag.addr, align 4
  %cmp456 = icmp eq i32 %270, 4
  br i1 %cmp456, label %if.then.458, label %if.else.489

if.then.458:                                      ; preds = %if.else.455
  br label %for.cond.459

for.cond.459:                                     ; preds = %for.inc.485, %if.then.458
  %271 = load i32, i32* %from_index, align 4
  %272 = load i32, i32* %lim_index, align 4
  %cmp460 = icmp slt i32 %271, %272
  br i1 %cmp460, label %for.body.462, label %for.end.488

for.body.462:                                     ; preds = %for.cond.459
  br label %do.body

do.body:                                          ; preds = %for.body.462
  %273 = load i32, i32* %from_index, align 4
  %cmp463 = icmp eq i32 %273, 0
  br i1 %cmp463, label %if.then.465, label %if.else.467

if.then.465:                                      ; preds = %do.body
  %274 = load i32, i32* %from_c, align 4
  %275 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %zero_index_char466 = getelementptr inbounds %struct.anon, %struct.anon* %275, i32 0, i32 4
  store i32 %274, i32* %zero_index_char466, align 4
  br label %if.end.484

if.else.467:                                      ; preds = %do.body
  %276 = load i32, i32* %from_c, align 4
  %cmp468 = icmp slt i32 %276, 131072
  br i1 %cmp468, label %if.then.470, label %if.else.476

if.then.470:                                      ; preds = %if.else.467
  %277 = load i32, i32* %from_index, align 4
  %conv471 = trunc i32 %277 to i16
  %278 = load i32, i32* %from_c, align 4
  %idxprom472 = sext i32 %278 to i64
  %279 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %table473 = getelementptr inbounds %struct.anon, %struct.anon* %279, i32 0, i32 5
  %encoder474 = bitcast %union.anon.0* %table473 to [131072 x i16]*
  %arrayidx475 = getelementptr inbounds [131072 x i16], [131072 x i16]* %encoder474, i32 0, i64 %idxprom472
  store i16 %conv471, i16* %arrayidx475, align 2
  br label %if.end.483

if.else.476:                                      ; preds = %if.else.467
  %280 = load i32, i32* %from_index, align 4
  %conv477 = trunc i32 %280 to i16
  %281 = load i32, i32* %from_c, align 4
  %sub478 = sub nsw i32 %281, 65536
  %idxprom479 = sext i32 %sub478 to i64
  %282 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %table480 = getelementptr inbounds %struct.anon, %struct.anon* %282, i32 0, i32 5
  %encoder481 = bitcast %union.anon.0* %table480 to [131072 x i16]*
  %arrayidx482 = getelementptr inbounds [131072 x i16], [131072 x i16]* %encoder481, i32 0, i64 %idxprom479
  store i16 %conv477, i16* %arrayidx482, align 2
  br label %if.end.483

if.end.483:                                       ; preds = %if.else.476, %if.then.470
  br label %if.end.484

if.end.484:                                       ; preds = %if.end.483, %if.then.465
  br label %do.end

do.end:                                           ; preds = %if.end.484
  br label %for.inc.485

for.inc.485:                                      ; preds = %do.end
  %283 = load i32, i32* %from_index, align 4
  %inc486 = add nsw i32 %283, 1
  store i32 %inc486, i32* %from_index, align 4
  %284 = load i32, i32* %from_c, align 4
  %inc487 = add nsw i32 %284, 1
  store i32 %inc487, i32* %from_c, align 4
  br label %for.cond.459

for.end.488:                                      ; preds = %for.cond.459
  br label %if.end.553

if.else.489:                                      ; preds = %if.else.455
  %285 = load i8, i8* %ascii_compatible_p, align 1
  %tobool490 = trunc i8 %285 to i1
  br i1 %tobool490, label %if.then.491, label %if.end.519

if.then.491:                                      ; preds = %if.else.489
  br i1 true, label %cond.true.492, label %cond.false.496

cond.true.492:                                    ; preds = %if.then.491
  %286 = load i32, i32* %from_c, align 4
  %add493 = add i32 %286, 0
  %cmp494 = icmp ult i32 %add493, 128
  br i1 %cmp494, label %if.else.506, label %if.then.501

cond.false.496:                                   ; preds = %if.then.491
  %287 = load i32, i32* %from_c, align 4
  %conv497 = sext i32 %287 to i64
  %add498 = add i64 %conv497, 0
  %cmp499 = icmp ult i64 %add498, 128
  br i1 %cmp499, label %if.else.506, label %if.then.501

if.then.501:                                      ; preds = %cond.false.496, %cond.true.492
  %288 = load i32, i32* %from_c, align 4
  %289 = load i32, i32* %nonascii_min_char, align 4
  %cmp502 = icmp slt i32 %288, %289
  br i1 %cmp502, label %if.then.504, label %if.end.505

if.then.504:                                      ; preds = %if.then.501
  %290 = load i32, i32* %from_c, align 4
  store i32 %290, i32* %nonascii_min_char, align 4
  br label %if.end.505

if.end.505:                                       ; preds = %if.then.504, %if.then.501
  br label %if.end.518

if.else.506:                                      ; preds = %cond.false.496, %cond.true.492
  br i1 true, label %cond.true.507, label %cond.false.511

cond.true.507:                                    ; preds = %if.else.506
  %291 = load i32, i32* %to_c, align 4
  %add508 = add i32 %291, 0
  %cmp509 = icmp ult i32 %add508, 128
  br i1 %cmp509, label %if.end.517, label %if.then.516

cond.false.511:                                   ; preds = %if.else.506
  %292 = load i32, i32* %to_c, align 4
  %conv512 = sext i32 %292 to i64
  %add513 = add i64 %conv512, 0
  %cmp514 = icmp ult i64 %add513, 128
  br i1 %cmp514, label %if.end.517, label %if.then.516

if.then.516:                                      ; preds = %cond.false.511, %cond.true.507
  store i32 128, i32* %nonascii_min_char, align 4
  br label %if.end.517

if.end.517:                                       ; preds = %if.then.516, %cond.false.511, %cond.true.507
  br label %if.end.518

if.end.518:                                       ; preds = %if.end.517, %if.end.505
  br label %if.end.519

if.end.519:                                       ; preds = %if.end.518, %if.else.489
  br label %for.cond.520

for.cond.520:                                     ; preds = %for.inc.550, %if.end.519
  %293 = load i32, i32* %from_c, align 4
  %294 = load i32, i32* %to_c, align 4
  %cmp521 = icmp sle i32 %293, %294
  br i1 %cmp521, label %for.body.523, label %for.end.552

for.body.523:                                     ; preds = %for.cond.520
  br label %do.body.524

do.body.524:                                      ; preds = %for.body.523
  %295 = load i32, i32* %from_c, align 4
  %cmp525 = icmp slt i32 %295, 65536
  br i1 %cmp525, label %if.then.527, label %if.else.537

if.then.527:                                      ; preds = %do.body.524
  %296 = load i32, i32* %from_c, align 4
  %shr528 = ashr i32 %296, 7
  %and529 = and i32 %shr528, 7
  %shl530 = shl i32 1, %and529
  %297 = load i32, i32* %from_c, align 4
  %shr531 = ashr i32 %297, 10
  %idxprom532 = sext i32 %shr531 to i64
  %298 = load i8*, i8** %fast_map, align 8
  %arrayidx533 = getelementptr inbounds i8, i8* %298, i64 %idxprom532
  %299 = load i8, i8* %arrayidx533, align 1
  %conv534 = zext i8 %299 to i32
  %or535 = or i32 %conv534, %shl530
  %conv536 = trunc i32 %or535 to i8
  store i8 %conv536, i8* %arrayidx533, align 1
  br label %if.end.548

if.else.537:                                      ; preds = %do.body.524
  %300 = load i32, i32* %from_c, align 4
  %shr538 = ashr i32 %300, 12
  %and539 = and i32 %shr538, 7
  %shl540 = shl i32 1, %and539
  %301 = load i32, i32* %from_c, align 4
  %shr541 = ashr i32 %301, 15
  %add542 = add nsw i32 %shr541, 62
  %idxprom543 = sext i32 %add542 to i64
  %302 = load i8*, i8** %fast_map, align 8
  %arrayidx544 = getelementptr inbounds i8, i8* %302, i64 %idxprom543
  %303 = load i8, i8* %arrayidx544, align 1
  %conv545 = zext i8 %303 to i32
  %or546 = or i32 %conv545, %shl540
  %conv547 = trunc i32 %or546 to i8
  store i8 %conv547, i8* %arrayidx544, align 1
  br label %if.end.548

if.end.548:                                       ; preds = %if.else.537, %if.then.527
  br label %do.end.549

do.end.549:                                       ; preds = %if.end.548
  br label %for.inc.550

for.inc.550:                                      ; preds = %do.end.549
  %304 = load i32, i32* %from_c, align 4
  %inc551 = add nsw i32 %304, 1
  store i32 %inc551, i32* %from_c, align 4
  br label %for.cond.520

for.end.552:                                      ; preds = %for.cond.520
  br label %if.end.553

if.end.553:                                       ; preds = %for.end.552, %for.end.488
  br label %if.end.554

if.end.554:                                       ; preds = %if.end.553, %for.end.454
  br label %if.end.555

if.end.555:                                       ; preds = %if.end.554, %if.end.438
  br label %if.end.556

if.end.556:                                       ; preds = %if.end.555, %if.end.341
  br label %for.inc.557

for.inc.557:                                      ; preds = %if.end.556, %if.then.300
  %305 = load i32, i32* %i, align 4
  %inc558 = add nsw i32 %305, 1
  store i32 %inc558, i32* %i, align 4
  br label %for.cond

for.end.559:                                      ; preds = %for.cond
  %306 = load i32, i32* %control_flag.addr, align 4
  %cmp560 = icmp eq i32 %306, 0
  br i1 %cmp560, label %if.then.562, label %if.else.571

if.then.562:                                      ; preds = %for.end.559
  %307 = load i8, i8* %ascii_compatible_p, align 1
  %tobool563 = trunc i8 %307 to i1
  br i1 %tobool563, label %cond.true.565, label %cond.false.566

cond.true.565:                                    ; preds = %if.then.562
  %308 = load i32, i32* %nonascii_min_char, align 4
  br label %cond.end.567

cond.false.566:                                   ; preds = %if.then.562
  %309 = load i32, i32* %min_char, align 4
  br label %cond.end.567

cond.end.567:                                     ; preds = %cond.false.566, %cond.true.565
  %cond568 = phi i32 [ %308, %cond.true.565 ], [ %309, %cond.false.566 ]
  %310 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %min_char569 = getelementptr inbounds %struct.charset, %struct.charset* %310, i32 0, i32 13
  store i32 %cond568, i32* %min_char569, align 4
  %311 = load i32, i32* %max_char, align 4
  %312 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %max_char570 = getelementptr inbounds %struct.charset, %struct.charset* %312, i32 0, i32 14
  store i32 %311, i32* %max_char570, align 4
  br label %if.end.578

if.else.571:                                      ; preds = %for.end.559
  %313 = load i32, i32* %control_flag.addr, align 4
  %cmp572 = icmp eq i32 %313, 4
  br i1 %cmp572, label %if.then.574, label %if.end.577

if.then.574:                                      ; preds = %if.else.571
  %314 = load i32, i32* %min_char, align 4
  %315 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %min_char575 = getelementptr inbounds %struct.anon, %struct.anon* %315, i32 0, i32 2
  store i32 %314, i32* %min_char575, align 4
  %316 = load i32, i32* %max_char, align 4
  %317 = load %struct.anon*, %struct.anon** @temp_charset_work, align 8
  %max_char576 = getelementptr inbounds %struct.anon, %struct.anon* %317, i32 0, i32 3
  store i32 %316, i32* %max_char576, align 4
  br label %if.end.577

if.end.577:                                       ; preds = %if.then.574, %if.else.571
  br label %if.end.578

if.end.578:                                       ; preds = %if.then, %if.end.577, %cond.end.567
  ret void
}

declare zeroext i1 @c_isxdigit(i32) #1

declare i32 @ungetc(i32, %struct._IO_FILE*) #1

declare noalias i8* @xmalloc(i64) #1

declare void @CHAR_TABLE_SET(i64, i32, i64) #1

declare i64 @ASIZE(i64) #1

declare void @add_to_log(i8*, ...) #1

declare i32 @translate_char(i64, i32) #1

declare i64 @listn(i32, i64, i64, ...) #1

declare i64 @intern_c_string(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
