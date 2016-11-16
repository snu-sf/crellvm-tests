; ModuleID = './src/keymap.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emacs_globals = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.buffer = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.buffer_text, %struct.buffer_text*, %struct.buffer*, i64, i64, i64, i64, i64, i64, %struct.buffer*, i32, i32, [50 x i8], %struct.timespec, i64, i64, i64, i64, i64, %struct.region_cache*, %struct.region_cache*, %struct.region_cache*, i8, %struct.Lisp_Overlay*, %struct.Lisp_Overlay*, i64, i64 }
%struct.vectorlike_header = type { i64 }
%struct.buffer_text = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.interval*, %struct.Lisp_Marker*, i8 }
%struct.interval = type { i64, i64, %struct.interval*, %struct.interval*, %union.anon.6, i8, i64 }
%union.anon.6 = type { %struct.interval* }
%struct.Lisp_Marker = type { i32, %struct.buffer*, %struct.Lisp_Marker*, i64, i64 }
%struct.timespec = type { i64, i64 }
%struct.region_cache = type opaque
%struct.Lisp_Overlay = type { i32, %struct.Lisp_Overlay*, i64, i64, i64 }
%struct.kboard = type { %struct.kboard*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i8, i8, i64 }
%struct.Lisp_Objfwd = type { i32, i64* }
%struct.Lisp_Subr = type { %struct.vectorlike_header, %union.anon.7, i16, i16, i8*, i8*, i8* }
%union.anon.7 = type { i64 ()* }
%struct.Lisp_Cons = type { i64, %union.anon }
%union.anon = type { i64 }
%struct.Lisp_Vector = type { %struct.vectorlike_header, [0 x i64] }
%union.Aligned_String = type { %struct.Lisp_String }
%struct.Lisp_String = type { i64, i64, %struct.interval*, i8* }
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
%struct.accessible_keymaps_data = type { i64, i64, i64, i8 }
%struct.where_is_internal_data = type { i64, i64, i64, i8, i8, i64 }
%struct.describe_map_elt = type { i64, i64, i8 }
%struct.Lisp_Char_Table = type { %struct.vectorlike_header, i64, i64, i64, i64, [64 x i64], [0 x i64] }
%union.Aligned_Cons = type { %struct.Lisp_Cons }

@globals = external global %struct.emacs_globals, align 8
@where_is_cache = internal global i64 0, align 8
@where_is_cache_keymaps = internal global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Cyclic keymap inheritance\00", align 1
@pure = external global [0 x i64], align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"map-keymap-sorted\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Key sequence contains invalid event %s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ESC\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c" ESC\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"Key sequence %s starts with non-prefix key %s%s\00", align 1
@command_remapping_vector = internal global i64 0, align 8
@pending_signals = external global i8, align 1
@cmm_size = internal global i64 0, align 8
@cmm_modes = internal global i64* null, align 8
@cmm_maps = internal global i64* null, align 8
@current_global_map = common global i64 0, align 8
@current_buffer = external global %struct.buffer*, align 8
@current_kboard = external global %struct.kboard*, align 8
@zero_vector = external global i64, align 8
@.str.7 = private unnamed_addr constant [2 x i8] c" \00", align 1
@empty_unibyte_string = external global i64, align 8
@.str.8 = private unnamed_addr constant [5 x i8] c"[%d]\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"<%s>\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"KEY must be an integer, cons, symbol, or string\00", align 1
@where_is_preferred_modifier = internal global i32 0, align 4
@.str.12 = private unnamed_addr constant [13 x i8] c"(any string)\00", align 1
@.str.13 = private unnamed_addr constant [81 x i8] c"Keyboard translations:\0A\0AYou type        Translation\0A--------        -----------\0A\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"Key translations\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"\0C\0AOverriding Bindings\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"\0C\0A`keymap' Property Bindings\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c" Minor Mode Bindings\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"\0C\0AMajor Mode Bindings\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"\0C\0A`local-map' Property Bindings\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"\0C\0AGlobal Bindings\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"\0C\0AFunction key map translations\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"\0C\0AInput decoding map translations\00", align 1
@.str.24 = private unnamed_addr constant [49 x i8] c"key             binding\0A---             -------\0A\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c" Starting With \00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c":\0A\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"princ\00", align 1
@apropos_predicate = internal global i64 0, align 8
@apropos_accumulate = internal global i64 0, align 8
@global_map = common global i64 0, align 8
@.str.28 = private unnamed_addr constant [11 x i8] c"global-map\00", align 1
@meta_map = common global i64 0, align 8
@.str.29 = private unnamed_addr constant [8 x i8] c"esc-map\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"ESC-prefix\00", align 1
@control_x_map = common global i64 0, align 8
@.str.31 = private unnamed_addr constant [10 x i8] c"ctl-x-map\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"Control-X-prefix\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"DEL\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"\5Cd\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"TAB\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"\5Ct\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"RET\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"\5Cr\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"\5Ce\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"SPC\00", align 1
@exclude_keys = internal global i64 0, align 8
@syms_of_keymap.o_fwd = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.41 = private unnamed_addr constant [28 x i8] c"define-key-rebound-commands\00", align 1
@syms_of_keymap.o_fwd.42 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.43 = private unnamed_addr constant [21 x i8] c"minibuffer-local-map\00", align 1
@syms_of_keymap.o_fwd.44 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.45 = private unnamed_addr constant [24 x i8] c"minibuffer-local-ns-map\00", align 1
@syms_of_keymap.o_fwd.46 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.47 = private unnamed_addr constant [21 x i8] c"minor-mode-map-alist\00", align 1
@syms_of_keymap.o_fwd.48 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.49 = private unnamed_addr constant [32 x i8] c"minor-mode-overriding-map-alist\00", align 1
@syms_of_keymap.o_fwd.50 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.51 = private unnamed_addr constant [26 x i8] c"emulation-mode-map-alists\00", align 1
@syms_of_keymap.o_fwd.52 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.53 = private unnamed_addr constant [28 x i8] c"where-is-preferred-modifier\00", align 1
@Vmouse_events = internal global i64 0, align 8
@.str.54 = private unnamed_addr constant [8 x i8] c"mouse-1\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"mouse-2\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"mouse-3\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"mouse-4\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"mouse-5\00", align 1
@Scurrent_local_map = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon.7 { i64 ()* @Fcurrent_local_map }, i16 0, i16 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.89, i32 0, i32 0), i8* null, i8* null }, align 8
@Scurrent_global_map = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon.7 { i64 ()* @Fcurrent_global_map }, i16 0, i16 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.90, i32 0, i32 0), i8* null, i8* null }, align 8
@Scurrent_minor_mode_maps = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon.7 { i64 ()* @Fcurrent_minor_mode_maps }, i16 0, i16 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.91, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.59 = private unnamed_addr constant [46 x i8] c"`keymap' is reserved for embedded parent maps\00", align 1
@.str.60 = private unnamed_addr constant [40 x i8] c"attempt to define a key in a non-keymap\00", align 1
@.str.61 = private unnamed_addr constant [40 x i8] c"To bind the key %s, use [?%s], not [%s]\00", align 1
@previous_description_column = internal global i32 0, align 4
@.str.62 = private unnamed_addr constant [16 x i8] c"Keyboard Macro\0A\00", align 1
@.str.63 = private unnamed_addr constant [16 x i8] c"Prefix Command\0A\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"??\0A\00", align 1
@.str.65 = private unnamed_addr constant [16 x i8] c"suppress-keymap\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c" .. \00", align 1
@.str.67 = private unnamed_addr constant [56 x i8] c"\0A  (that binding is currently shadowed by another mode)\00", align 1
@.str.68 = private unnamed_addr constant [31 x i8] c"  (binding currently shadowed)\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"keymapp\00", align 1
@Skeymapp = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fkeymapp }, i16 1, i16 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.71 = private unnamed_addr constant [14 x i8] c"keymap-parent\00", align 1
@Skeymap_parent = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fkeymap_parent }, i16 1, i16 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.71, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.72 = private unnamed_addr constant [14 x i8] c"keymap-prompt\00", align 1
@Skeymap_prompt = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fkeymap_prompt }, i16 1, i16 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.72, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.73 = private unnamed_addr constant [18 x i8] c"set-keymap-parent\00", align 1
@Sset_keymap_parent = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fset_keymap_parent }, i16 2, i16 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.73, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.74 = private unnamed_addr constant [12 x i8] c"make-keymap\00", align 1
@Smake_keymap = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fmake_keymap }, i16 0, i16 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.74, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.75 = private unnamed_addr constant [19 x i8] c"make-sparse-keymap\00", align 1
@Smake_sparse_keymap = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fmake_sparse_keymap }, i16 0, i16 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.75, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.76 = private unnamed_addr constant [20 x i8] c"map-keymap-internal\00", align 1
@Smap_keymap_internal = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fmap_keymap_internal }, i16 2, i16 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.76, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.77 = private unnamed_addr constant [11 x i8] c"map-keymap\00", align 1
@Smap_keymap = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Fmap_keymap }, i16 2, i16 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.77, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.78 = private unnamed_addr constant [12 x i8] c"copy-keymap\00", align 1
@Scopy_keymap = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fcopy_keymap }, i16 1, i16 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.78, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.79 = private unnamed_addr constant [18 x i8] c"command-remapping\00", align 1
@Scommand_remapping = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Fcommand_remapping }, i16 1, i16 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.79, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.80 = private unnamed_addr constant [12 x i8] c"key-binding\00", align 1
@Skey_binding = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64)* @Fkey_binding }, i16 1, i16 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.80, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.81 = private unnamed_addr constant [18 x i8] c"local-key-binding\00", align 1
@Slocal_key_binding = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Flocal_key_binding }, i16 1, i16 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.81, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.82 = private unnamed_addr constant [19 x i8] c"global-key-binding\00", align 1
@Sglobal_key_binding = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fglobal_key_binding }, i16 1, i16 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.82, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.83 = private unnamed_addr constant [23 x i8] c"minor-mode-key-binding\00", align 1
@Sminor_mode_key_binding = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fminor_mode_key_binding }, i16 1, i16 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.83, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.84 = private unnamed_addr constant [11 x i8] c"define-key\00", align 1
@Sdefine_key = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Fdefine_key }, i16 3, i16 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.84, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.85 = private unnamed_addr constant [11 x i8] c"lookup-key\00", align 1
@Slookup_key = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Flookup_key }, i16 2, i16 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.85, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.86 = private unnamed_addr constant [22 x i8] c"define-prefix-command\00", align 1
@Sdefine_prefix_command = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Fdefine_prefix_command }, i16 1, i16 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.86, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.87 = private unnamed_addr constant [15 x i8] c"use-global-map\00", align 1
@Suse_global_map = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fuse_global_map }, i16 1, i16 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.87, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.88 = private unnamed_addr constant [14 x i8] c"use-local-map\00", align 1
@Suse_local_map = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fuse_local_map }, i16 1, i16 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.88, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.89 = private unnamed_addr constant [18 x i8] c"current-local-map\00", align 1
@.str.90 = private unnamed_addr constant [19 x i8] c"current-global-map\00", align 1
@.str.91 = private unnamed_addr constant [24 x i8] c"current-minor-mode-maps\00", align 1
@.str.92 = private unnamed_addr constant [20 x i8] c"current-active-maps\00", align 1
@Scurrent_active_maps = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fcurrent_active_maps }, i16 0, i16 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.92, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.93 = private unnamed_addr constant [19 x i8] c"accessible-keymaps\00", align 1
@Saccessible_keymaps = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Faccessible_keymaps }, i16 1, i16 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.93, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.94 = private unnamed_addr constant [16 x i8] c"key-description\00", align 1
@Skey_description = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fkey_description }, i16 1, i16 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.94, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.95 = private unnamed_addr constant [16 x i8] c"describe-vector\00", align 1
@Sdescribe_vector = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fdescribe_vector }, i16 1, i16 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.95, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.96 = private unnamed_addr constant [23 x i8] c"single-key-description\00", align 1
@Ssingle_key_description = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fsingle_key_description }, i16 1, i16 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.96, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.97 = private unnamed_addr constant [22 x i8] c"text-char-description\00", align 1
@Stext_char_description = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Ftext_char_description }, i16 1, i16 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.97, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.98 = private unnamed_addr constant [18 x i8] c"where-is-internal\00", align 1
@Swhere_is_internal = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64, i64)* @Fwhere_is_internal }, i16 1, i16 5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.98, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.99 = private unnamed_addr constant [25 x i8] c"describe-buffer-bindings\00", align 1
@Sdescribe_buffer_bindings = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Fdescribe_buffer_bindings }, i16 1, i16 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.99, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.100 = private unnamed_addr constant [17 x i8] c"apropos-internal\00", align 1
@Sapropos_internal = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fapropos_internal }, i16 1, i16 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.100, i32 0, i32 0), i8* null, i8* null }, align 8

; Function Attrs: nounwind uwtable
define i64 @Fmake_keymap(i64 %string) #0 {
entry:
  %string.addr = alloca i64, align 8
  %tail = alloca i64, align 8
  store i64 %string, i64* %string.addr, align 8
  %0 = load i64, i64* %string.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %string.addr, align 8
  %call1 = call i64 @list1(i64 %1)
  store i64 %call1, i64* %tail, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call2, i64* %tail, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call3 = call i64 @builtin_lisp_symbol(i32 589)
  %call4 = call i64 @builtin_lisp_symbol(i32 589)
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  %call6 = call i64 @Fmake_char_table(i64 %call4, i64 %call5)
  %2 = load i64, i64* %tail, align 8
  %call7 = call i64 @Fcons(i64 %call6, i64 %2)
  %call8 = call i64 @Fcons(i64 %call3, i64 %call7)
  ret i64 %call8
}

declare i64 @builtin_lisp_symbol(i32) #1

declare i64 @list1(i64) #1

declare i64 @Fcons(i64, i64) #1

declare i64 @Fmake_char_table(i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fmake_sparse_keymap(i64 %string) #0 {
entry:
  %retval = alloca i64, align 8
  %string.addr = alloca i64, align 8
  store i64 %string, i64* %string.addr, align 8
  %0 = load i64, i64* %string.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.end.7, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 240), align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp2 = icmp eq i64 %1, %call1
  br i1 %cmp2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  %2 = load i64, i64* %string.addr, align 8
  %call4 = call i64 @Fpurecopy(i64 %2)
  store i64 %call4, i64* %string.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %call5 = call i64 @builtin_lisp_symbol(i32 589)
  %3 = load i64, i64* %string.addr, align 8
  %call6 = call i64 @list2(i64 %call5, i64 %3)
  store i64 %call6, i64* %retval
  br label %return

if.end.7:                                         ; preds = %entry
  %call8 = call i64 @builtin_lisp_symbol(i32 589)
  %call9 = call i64 @list1(i64 %call8)
  store i64 %call9, i64* %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.end
  %4 = load i64, i64* %retval
  ret i64 %4
}

declare i64 @Fpurecopy(i64) #1

declare i64 @list2(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @initial_define_key(i64 %keymap, i32 %key, i8* %defname) #0 {
entry:
  %keymap.addr = alloca i64, align 8
  %key.addr = alloca i32, align 4
  %defname.addr = alloca i8*, align 8
  store i64 %keymap, i64* %keymap.addr, align 8
  store i32 %key, i32* %key.addr, align 4
  store i8* %defname, i8** %defname.addr, align 8
  %0 = load i64, i64* %keymap.addr, align 8
  %1 = load i32, i32* %key.addr, align 4
  %conv = sext i32 %1 to i64
  %shl = shl i64 %conv, 2
  %add = add i64 %shl, 2
  %2 = load i8*, i8** %defname.addr, align 8
  %call = call i64 @intern_c_string(i8* %2)
  %call1 = call i64 @store_in_keymap(i64 %0, i64 %add, i64 %call)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @store_in_keymap(i64 %keymap, i64 %idx, i64 %def) #0 {
entry:
  %retval = alloca i64, align 8
  %keymap.addr = alloca i64, align 8
  %idx.addr = alloca i64, align 8
  %def.addr = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tail = alloca i64, align 8
  %insertion_point = alloca i64, align 8
  %elt = alloca i64, align 8
  %from = alloca i32, align 4
  %to = alloca i32, align 4
  %from271 = alloca i32, align 4
  %to277 = alloca i32, align 4
  %elt335 = alloca i64, align 8
  store i64 %keymap, i64* %keymap.addr, align 8
  store i64 %idx, i64* %idx.addr, align 8
  store i64 %def, i64* %def.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* @where_is_cache, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call1, i64* @where_is_cache_keymaps, align 8
  %0 = load i64, i64* %idx.addr, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 589)
  %cmp = icmp eq i64 %0, %call2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.59, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %def.addr, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %cmp3 = icmp eq i32 %conv, 3
  br i1 %cmp3, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %if.end
  %2 = load i64, i64* %def.addr, align 8
  %sub = sub nsw i64 %2, 3
  %3 = inttoptr i64 %sub to i8*
  %4 = bitcast i8* %3 to %struct.Lisp_Cons*
  %5 = ptrtoint %struct.Lisp_Cons* %4 to i64
  %sub5 = sub i64 %5, ptrtoint ([0 x i64]* @pure to i64)
  %cmp6 = icmp ule i64 %sub5, 3000000
  br i1 %cmp6, label %land.lhs.true.8, label %if.end.22

land.lhs.true.8:                                  ; preds = %land.lhs.true
  %6 = load i64, i64* %def.addr, align 8
  %sub9 = sub nsw i64 %6, 3
  %7 = inttoptr i64 %sub9 to i8*
  %8 = bitcast i8* %7 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %8, i32 0, i32 0
  %9 = load i64, i64* %car, align 8
  %call10 = call i64 @builtin_lisp_symbol(i32 657)
  %cmp11 = icmp eq i64 %9, %call10
  br i1 %cmp11, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.8
  %10 = load i64, i64* %def.addr, align 8
  %sub13 = sub nsw i64 %10, 3
  %11 = inttoptr i64 %sub13 to i8*
  %12 = bitcast i8* %11 to %struct.Lisp_Cons*
  %car14 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %12, i32 0, i32 0
  %13 = load i64, i64* %car14, align 8
  %call15 = call zeroext i1 @STRINGP(i64 %13)
  br i1 %call15, label %if.then.17, label %if.end.22

if.then.17:                                       ; preds = %lor.lhs.false, %land.lhs.true.8
  %14 = load i64, i64* %def.addr, align 8
  %sub18 = sub nsw i64 %14, 3
  %15 = inttoptr i64 %sub18 to i8*
  %16 = bitcast i8* %15 to %struct.Lisp_Cons*
  %car19 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %16, i32 0, i32 0
  %17 = load i64, i64* %car19, align 8
  %18 = load i64, i64* %def.addr, align 8
  %sub20 = sub nsw i64 %18, 3
  %19 = inttoptr i64 %sub20 to i8*
  %20 = bitcast i8* %19 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %20, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %21 = load i64, i64* %cdr, align 8
  %call21 = call i64 @Fcons(i64 %17, i64 %21)
  store i64 %call21, i64* %def.addr, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.17, %lor.lhs.false, %land.lhs.true, %if.end
  %22 = load i64, i64* %keymap.addr, align 8
  %and23 = and i64 %22, 7
  %conv24 = trunc i64 %and23 to i32
  %cmp25 = icmp eq i32 %conv24, 3
  br i1 %cmp25, label %lor.lhs.false.27, label %if.then.33

lor.lhs.false.27:                                 ; preds = %if.end.22
  %23 = load i64, i64* %keymap.addr, align 8
  %sub28 = sub nsw i64 %23, 3
  %24 = inttoptr i64 %sub28 to i8*
  %25 = bitcast i8* %24 to %struct.Lisp_Cons*
  %car29 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %25, i32 0, i32 0
  %26 = load i64, i64* %car29, align 8
  %call30 = call i64 @builtin_lisp_symbol(i32 589)
  %cmp31 = icmp eq i64 %26, %call30
  br i1 %cmp31, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %lor.lhs.false.27, %if.end.22
  call void (i8*, ...) @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.60, i32 0, i32 0)) #6
  unreachable

if.end.34:                                        ; preds = %lor.lhs.false.27
  %27 = load i64, i64* %idx.addr, align 8
  %and35 = and i64 %27, 7
  %conv36 = trunc i64 %and35 to i32
  %cmp37 = icmp eq i32 %conv36, 3
  br i1 %cmp37, label %land.lhs.true.39, label %if.else

land.lhs.true.39:                                 ; preds = %if.end.34
  %28 = load i64, i64* %idx.addr, align 8
  %sub40 = sub nsw i64 %28, 3
  %29 = inttoptr i64 %sub40 to i8*
  %30 = bitcast i8* %29 to %struct.Lisp_Cons*
  %car41 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %30, i32 0, i32 0
  %31 = load i64, i64* %car41, align 8
  %call42 = call zeroext i1 @NATNUMP(i64 %31)
  br i1 %call42, label %land.lhs.true.44, label %if.else

land.lhs.true.44:                                 ; preds = %land.lhs.true.39
  %32 = load i64, i64* %idx.addr, align 8
  %sub45 = sub nsw i64 %32, 3
  %33 = inttoptr i64 %sub45 to i8*
  %34 = bitcast i8* %33 to %struct.Lisp_Cons*
  %car46 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %34, i32 0, i32 0
  %35 = load i64, i64* %car46, align 8
  %shr = ashr i64 %35, 2
  %cmp47 = icmp sle i64 %shr, 4194303
  br i1 %cmp47, label %if.then.49, label %if.else

if.then.49:                                       ; preds = %land.lhs.true.44
  br label %do.body

do.body:                                          ; preds = %if.then.49
  %36 = load i64, i64* %idx.addr, align 8
  %sub50 = sub nsw i64 %36, 3
  %37 = inttoptr i64 %sub50 to i8*
  %38 = bitcast i8* %37 to %struct.Lisp_Cons*
  %u51 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %38, i32 0, i32 1
  %cdr52 = bitcast %union.anon* %u51 to i64*
  %39 = load i64, i64* %cdr52, align 8
  store i64 %39, i64* %tmp, align 8
  %40 = load i64, i64* %tmp, align 8
  %call53 = call zeroext i1 @NATNUMP(i64 %40)
  br i1 %call53, label %land.lhs.true.55, label %cond.false

land.lhs.true.55:                                 ; preds = %do.body
  %41 = load i64, i64* %tmp, align 8
  %shr56 = ashr i64 %41, 2
  %cmp57 = icmp sle i64 %shr56, 4194303
  br i1 %cmp57, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.55
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.55, %do.body
  %call59 = call i64 @builtin_lisp_symbol(i32 260)
  %42 = load i64, i64* %tmp, align 8
  %43 = call i64 @wrong_type_argument(i64 %call59, i64 %42) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %44, %cond.true
  br label %do.end

do.end:                                           ; preds = %cond.end
  br label %if.end.69

if.else:                                          ; preds = %land.lhs.true.44, %land.lhs.true.39, %if.end.34
  %45 = load i64, i64* %idx.addr, align 8
  %and60 = and i64 %45, 7
  %conv61 = trunc i64 %and60 to i32
  %cmp62 = icmp eq i32 %conv61, 3
  br i1 %cmp62, label %cond.true.64, label %cond.false.67

cond.true.64:                                     ; preds = %if.else
  %46 = load i64, i64* %idx.addr, align 8
  %sub65 = sub nsw i64 %46, 3
  %47 = inttoptr i64 %sub65 to i8*
  %48 = bitcast i8* %47 to %struct.Lisp_Cons*
  %car66 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %48, i32 0, i32 0
  %49 = load i64, i64* %car66, align 8
  br label %cond.end.68

cond.false.67:                                    ; preds = %if.else
  %50 = load i64, i64* %idx.addr, align 8
  br label %cond.end.68

cond.end.68:                                      ; preds = %cond.false.67, %cond.true.64
  %cond = phi i64 [ %49, %cond.true.64 ], [ %50, %cond.false.67 ]
  store i64 %cond, i64* %idx.addr, align 8
  br label %if.end.69

if.end.69:                                        ; preds = %cond.end.68, %do.end
  %51 = load i64, i64* %idx.addr, align 8
  %and70 = and i64 %51, 7
  %conv71 = trunc i64 %and70 to i32
  %cmp72 = icmp eq i32 %conv71, 0
  br i1 %cmp72, label %if.then.74, label %if.else.76

if.then.74:                                       ; preds = %if.end.69
  %52 = load i64, i64* %idx.addr, align 8
  %call75 = call i64 @reorder_modifiers(i64 %52)
  store i64 %call75, i64* %idx.addr, align 8
  br label %if.end.87

if.else.76:                                       ; preds = %if.end.69
  %53 = load i64, i64* %idx.addr, align 8
  %and77 = and i64 %53, 7
  %conv78 = trunc i64 %and77 to i32
  %and79 = and i32 %conv78, -5
  %cmp80 = icmp eq i32 %and79, 2
  br i1 %cmp80, label %if.then.82, label %if.end.86

if.then.82:                                       ; preds = %if.else.76
  %54 = load i64, i64* %idx.addr, align 8
  %shr83 = ashr i64 %54, 2
  %and84 = and i64 %shr83, 268435455
  %call85 = call i64 @make_natnum(i64 %and84)
  store i64 %call85, i64* %idx.addr, align 8
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.82, %if.else.76
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %if.then.74
  %55 = load i64, i64* %keymap.addr, align 8
  store i64 %55, i64* %insertion_point, align 8
  %56 = load i64, i64* %keymap.addr, align 8
  %sub90 = sub nsw i64 %56, 3
  %57 = inttoptr i64 %sub90 to i8*
  %58 = bitcast i8* %57 to %struct.Lisp_Cons*
  %u91 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %58, i32 0, i32 1
  %cdr92 = bitcast %union.anon* %u91 to i64*
  %59 = load i64, i64* %cdr92, align 8
  store i64 %59, i64* %tail, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.329, %if.end.87
  %60 = load i64, i64* %tail, align 8
  %and93 = and i64 %60, 7
  %conv94 = trunc i64 %and93 to i32
  %cmp95 = icmp eq i32 %conv94, 3
  br i1 %cmp95, label %for.body, label %for.end.333

for.body:                                         ; preds = %for.cond
  %61 = load i64, i64* %tail, align 8
  %sub98 = sub nsw i64 %61, 3
  %62 = inttoptr i64 %sub98 to i8*
  %63 = bitcast i8* %62 to %struct.Lisp_Cons*
  %car99 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %63, i32 0, i32 0
  %64 = load i64, i64* %car99, align 8
  store i64 %64, i64* %elt, align 8
  %65 = load i64, i64* %elt, align 8
  %call100 = call zeroext i1 @VECTORP(i64 %65)
  br i1 %call100, label %if.then.101, label %if.else.171

if.then.101:                                      ; preds = %for.body
  %66 = load i64, i64* %idx.addr, align 8
  %call102 = call zeroext i1 @NATNUMP(i64 %66)
  br i1 %call102, label %land.lhs.true.104, label %if.else.118

land.lhs.true.104:                                ; preds = %if.then.101
  %67 = load i64, i64* %idx.addr, align 8
  %shr105 = ashr i64 %67, 2
  %68 = load i64, i64* %elt, align 8
  %call106 = call i64 @ASIZE(i64 %68)
  %cmp107 = icmp slt i64 %shr105, %call106
  br i1 %cmp107, label %if.then.109, label %if.else.118

if.then.109:                                      ; preds = %land.lhs.true.104
  %69 = load i64, i64* %elt, align 8
  %call110 = call %struct.Lisp_Vector* @XVECTOR(i64 %69)
  %70 = ptrtoint %struct.Lisp_Vector* %call110 to i64
  %sub111 = sub i64 %70, ptrtoint ([0 x i64]* @pure to i64)
  %cmp112 = icmp ule i64 %sub111, 3000000
  br i1 %cmp112, label %cond.true.114, label %cond.false.115

cond.true.114:                                    ; preds = %if.then.109
  %71 = load i64, i64* %elt, align 8
  call void @pure_write_error(i64 %71) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end.116

cond.false.115:                                   ; preds = %if.then.109
  br label %cond.end.116

cond.end.116:                                     ; preds = %cond.false.115, %72
  %73 = load i64, i64* %elt, align 8
  %74 = load i64, i64* %idx.addr, align 8
  %shr117 = ashr i64 %74, 2
  %75 = load i64, i64* %def.addr, align 8
  call void @ASET(i64 %73, i64 %shr117, i64 %75)
  %76 = load i64, i64* %def.addr, align 8
  store i64 %76, i64* %retval
  br label %return

if.else.118:                                      ; preds = %land.lhs.true.104, %if.then.101
  %77 = load i64, i64* %idx.addr, align 8
  %and119 = and i64 %77, 7
  %conv120 = trunc i64 %and119 to i32
  %cmp121 = icmp eq i32 %conv120, 3
  br i1 %cmp121, label %land.lhs.true.123, label %if.end.169

land.lhs.true.123:                                ; preds = %if.else.118
  %78 = load i64, i64* %idx.addr, align 8
  %sub124 = sub nsw i64 %78, 3
  %79 = inttoptr i64 %sub124 to i8*
  %80 = bitcast i8* %79 to %struct.Lisp_Cons*
  %car125 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %80, i32 0, i32 0
  %81 = load i64, i64* %car125, align 8
  %call126 = call zeroext i1 @NATNUMP(i64 %81)
  br i1 %call126, label %land.lhs.true.128, label %if.end.169

land.lhs.true.128:                                ; preds = %land.lhs.true.123
  %82 = load i64, i64* %idx.addr, align 8
  %sub129 = sub nsw i64 %82, 3
  %83 = inttoptr i64 %sub129 to i8*
  %84 = bitcast i8* %83 to %struct.Lisp_Cons*
  %car130 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %84, i32 0, i32 0
  %85 = load i64, i64* %car130, align 8
  %shr131 = ashr i64 %85, 2
  %cmp132 = icmp sle i64 %shr131, 4194303
  br i1 %cmp132, label %if.then.134, label %if.end.169

if.then.134:                                      ; preds = %land.lhs.true.128
  %86 = load i64, i64* %idx.addr, align 8
  %sub136 = sub nsw i64 %86, 3
  %87 = inttoptr i64 %sub136 to i8*
  %88 = bitcast i8* %87 to %struct.Lisp_Cons*
  %car137 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %88, i32 0, i32 0
  %89 = load i64, i64* %car137, align 8
  %shr138 = ashr i64 %89, 2
  %conv139 = trunc i64 %shr138 to i32
  store i32 %conv139, i32* %from, align 4
  %90 = load i64, i64* %idx.addr, align 8
  %sub141 = sub nsw i64 %90, 3
  %91 = inttoptr i64 %sub141 to i8*
  %92 = bitcast i8* %91 to %struct.Lisp_Cons*
  %u142 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %92, i32 0, i32 1
  %cdr143 = bitcast %union.anon* %u142 to i64*
  %93 = load i64, i64* %cdr143, align 8
  %shr144 = ashr i64 %93, 2
  %conv145 = trunc i64 %shr144 to i32
  store i32 %conv145, i32* %to, align 4
  %94 = load i32, i32* %to, align 4
  %conv146 = sext i32 %94 to i64
  %95 = load i64, i64* %elt, align 8
  %call147 = call i64 @ASIZE(i64 %95)
  %cmp148 = icmp sge i64 %conv146, %call147
  br i1 %cmp148, label %if.then.150, label %if.end.154

if.then.150:                                      ; preds = %if.then.134
  %96 = load i64, i64* %elt, align 8
  %call151 = call i64 @ASIZE(i64 %96)
  %sub152 = sub nsw i64 %call151, 1
  %conv153 = trunc i64 %sub152 to i32
  store i32 %conv153, i32* %to, align 4
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.150, %if.then.134
  br label %for.cond.155

for.cond.155:                                     ; preds = %for.inc, %if.end.154
  %97 = load i32, i32* %from, align 4
  %98 = load i32, i32* %to, align 4
  %cmp156 = icmp sle i32 %97, %98
  br i1 %cmp156, label %for.body.158, label %for.end

for.body.158:                                     ; preds = %for.cond.155
  %99 = load i64, i64* %elt, align 8
  %100 = load i32, i32* %from, align 4
  %conv159 = sext i32 %100 to i64
  %101 = load i64, i64* %def.addr, align 8
  call void @ASET(i64 %99, i64 %conv159, i64 %101)
  br label %for.inc

for.inc:                                          ; preds = %for.body.158
  %102 = load i32, i32* %from, align 4
  %inc = add nsw i32 %102, 1
  store i32 %inc, i32* %from, align 4
  br label %for.cond.155

for.end:                                          ; preds = %for.cond.155
  %103 = load i32, i32* %to, align 4
  %conv160 = sext i32 %103 to i64
  %104 = load i64, i64* %idx.addr, align 8
  %sub161 = sub nsw i64 %104, 3
  %105 = inttoptr i64 %sub161 to i8*
  %106 = bitcast i8* %105 to %struct.Lisp_Cons*
  %u162 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %106, i32 0, i32 1
  %cdr163 = bitcast %union.anon* %u162 to i64*
  %107 = load i64, i64* %cdr163, align 8
  %shr164 = ashr i64 %107, 2
  %cmp165 = icmp eq i64 %conv160, %shr164
  br i1 %cmp165, label %if.then.167, label %if.end.168

if.then.167:                                      ; preds = %for.end
  %108 = load i64, i64* %def.addr, align 8
  store i64 %108, i64* %retval
  br label %return

if.end.168:                                       ; preds = %for.end
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.168, %land.lhs.true.128, %land.lhs.true.123, %if.else.118
  br label %if.end.170

if.end.170:                                       ; preds = %if.end.169
  %109 = load i64, i64* %tail, align 8
  store i64 %109, i64* %insertion_point, align 8
  br label %if.end.313

if.else.171:                                      ; preds = %for.body
  %110 = load i64, i64* %elt, align 8
  %call172 = call zeroext i1 @CHAR_TABLE_P(i64 %110)
  br i1 %call172, label %if.then.173, label %if.else.217

if.then.173:                                      ; preds = %if.else.171
  %111 = load i64, i64* %idx.addr, align 8
  %call174 = call zeroext i1 @NATNUMP(i64 %111)
  br i1 %call174, label %land.lhs.true.176, label %if.else.189

land.lhs.true.176:                                ; preds = %if.then.173
  %112 = load i64, i64* %idx.addr, align 8
  %shr177 = ashr i64 %112, 2
  %and178 = and i64 %shr177, 264241152
  %tobool = icmp ne i64 %and178, 0
  br i1 %tobool, label %if.else.189, label %if.then.179

if.then.179:                                      ; preds = %land.lhs.true.176
  %113 = load i64, i64* %elt, align 8
  %114 = load i64, i64* %idx.addr, align 8
  %115 = load i64, i64* %def.addr, align 8
  %call180 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp181 = icmp eq i64 %115, %call180
  br i1 %cmp181, label %cond.true.183, label %cond.false.185

cond.true.183:                                    ; preds = %if.then.179
  %call184 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end.186

cond.false.185:                                   ; preds = %if.then.179
  %116 = load i64, i64* %def.addr, align 8
  br label %cond.end.186

cond.end.186:                                     ; preds = %cond.false.185, %cond.true.183
  %cond187 = phi i64 [ %call184, %cond.true.183 ], [ %116, %cond.false.185 ]
  %call188 = call i64 @Faset(i64 %113, i64 %114, i64 %cond187)
  %117 = load i64, i64* %def.addr, align 8
  store i64 %117, i64* %retval
  br label %return

if.else.189:                                      ; preds = %land.lhs.true.176, %if.then.173
  %118 = load i64, i64* %idx.addr, align 8
  %and190 = and i64 %118, 7
  %conv191 = trunc i64 %and190 to i32
  %cmp192 = icmp eq i32 %conv191, 3
  br i1 %cmp192, label %land.lhs.true.194, label %if.end.215

land.lhs.true.194:                                ; preds = %if.else.189
  %119 = load i64, i64* %idx.addr, align 8
  %sub195 = sub nsw i64 %119, 3
  %120 = inttoptr i64 %sub195 to i8*
  %121 = bitcast i8* %120 to %struct.Lisp_Cons*
  %car196 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %121, i32 0, i32 0
  %122 = load i64, i64* %car196, align 8
  %call197 = call zeroext i1 @NATNUMP(i64 %122)
  br i1 %call197, label %land.lhs.true.199, label %if.end.215

land.lhs.true.199:                                ; preds = %land.lhs.true.194
  %123 = load i64, i64* %idx.addr, align 8
  %sub200 = sub nsw i64 %123, 3
  %124 = inttoptr i64 %sub200 to i8*
  %125 = bitcast i8* %124 to %struct.Lisp_Cons*
  %car201 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %125, i32 0, i32 0
  %126 = load i64, i64* %car201, align 8
  %shr202 = ashr i64 %126, 2
  %cmp203 = icmp sle i64 %shr202, 4194303
  br i1 %cmp203, label %if.then.205, label %if.end.215

if.then.205:                                      ; preds = %land.lhs.true.199
  %127 = load i64, i64* %elt, align 8
  %128 = load i64, i64* %idx.addr, align 8
  %129 = load i64, i64* %def.addr, align 8
  %call206 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp207 = icmp eq i64 %129, %call206
  br i1 %cmp207, label %cond.true.209, label %cond.false.211

cond.true.209:                                    ; preds = %if.then.205
  %call210 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end.212

cond.false.211:                                   ; preds = %if.then.205
  %130 = load i64, i64* %def.addr, align 8
  br label %cond.end.212

cond.end.212:                                     ; preds = %cond.false.211, %cond.true.209
  %cond213 = phi i64 [ %call210, %cond.true.209 ], [ %130, %cond.false.211 ]
  %call214 = call i64 @Fset_char_table_range(i64 %127, i64 %128, i64 %cond213)
  %131 = load i64, i64* %def.addr, align 8
  store i64 %131, i64* %retval
  br label %return

if.end.215:                                       ; preds = %land.lhs.true.199, %land.lhs.true.194, %if.else.189
  br label %if.end.216

if.end.216:                                       ; preds = %if.end.215
  %132 = load i64, i64* %tail, align 8
  store i64 %132, i64* %insertion_point, align 8
  br label %if.end.312

if.else.217:                                      ; preds = %if.else.171
  %133 = load i64, i64* %elt, align 8
  %and218 = and i64 %133, 7
  %conv219 = trunc i64 %and218 to i32
  %cmp220 = icmp eq i32 %conv219, 3
  br i1 %cmp220, label %if.then.222, label %if.else.305

if.then.222:                                      ; preds = %if.else.217
  %call223 = call i64 @builtin_lisp_symbol(i32 589)
  %134 = load i64, i64* %elt, align 8
  %sub224 = sub nsw i64 %134, 3
  %135 = inttoptr i64 %sub224 to i8*
  %136 = bitcast i8* %135 to %struct.Lisp_Cons*
  %car225 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %136, i32 0, i32 0
  %137 = load i64, i64* %car225, align 8
  %cmp226 = icmp eq i64 %call223, %137
  br i1 %cmp226, label %if.then.228, label %if.else.229

if.then.228:                                      ; preds = %if.then.222
  %138 = load i64, i64* %elt, align 8
  store i64 %138, i64* %insertion_point, align 8
  store i64 %138, i64* %tail, align 8
  br label %if.end.304

if.else.229:                                      ; preds = %if.then.222
  %139 = load i64, i64* %idx.addr, align 8
  %140 = load i64, i64* %elt, align 8
  %sub230 = sub nsw i64 %140, 3
  %141 = inttoptr i64 %sub230 to i8*
  %142 = bitcast i8* %141 to %struct.Lisp_Cons*
  %car231 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %142, i32 0, i32 0
  %143 = load i64, i64* %car231, align 8
  %cmp232 = icmp eq i64 %139, %143
  br i1 %cmp232, label %if.then.234, label %if.else.242

if.then.234:                                      ; preds = %if.else.229
  %144 = load i64, i64* %elt, align 8
  %sub235 = sub nsw i64 %144, 3
  %145 = inttoptr i64 %sub235 to i8*
  %146 = bitcast i8* %145 to %struct.Lisp_Cons*
  %147 = ptrtoint %struct.Lisp_Cons* %146 to i64
  %sub236 = sub i64 %147, ptrtoint ([0 x i64]* @pure to i64)
  %cmp237 = icmp ule i64 %sub236, 3000000
  br i1 %cmp237, label %cond.true.239, label %cond.false.240

cond.true.239:                                    ; preds = %if.then.234
  %148 = load i64, i64* %elt, align 8
  call void @pure_write_error(i64 %148) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end.241

cond.false.240:                                   ; preds = %if.then.234
  br label %cond.end.241

cond.end.241:                                     ; preds = %cond.false.240, %149
  %150 = load i64, i64* %elt, align 8
  %151 = load i64, i64* %def.addr, align 8
  call void @XSETCDR(i64 %150, i64 %151)
  %152 = load i64, i64* %def.addr, align 8
  store i64 %152, i64* %retval
  br label %return

if.else.242:                                      ; preds = %if.else.229
  %153 = load i64, i64* %idx.addr, align 8
  %and243 = and i64 %153, 7
  %conv244 = trunc i64 %and243 to i32
  %cmp245 = icmp eq i32 %conv244, 3
  br i1 %cmp245, label %land.lhs.true.247, label %if.end.302

land.lhs.true.247:                                ; preds = %if.else.242
  %154 = load i64, i64* %idx.addr, align 8
  %sub248 = sub nsw i64 %154, 3
  %155 = inttoptr i64 %sub248 to i8*
  %156 = bitcast i8* %155 to %struct.Lisp_Cons*
  %car249 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %156, i32 0, i32 0
  %157 = load i64, i64* %car249, align 8
  %call250 = call zeroext i1 @NATNUMP(i64 %157)
  br i1 %call250, label %land.lhs.true.252, label %if.end.302

land.lhs.true.252:                                ; preds = %land.lhs.true.247
  %158 = load i64, i64* %idx.addr, align 8
  %sub253 = sub nsw i64 %158, 3
  %159 = inttoptr i64 %sub253 to i8*
  %160 = bitcast i8* %159 to %struct.Lisp_Cons*
  %car254 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %160, i32 0, i32 0
  %161 = load i64, i64* %car254, align 8
  %shr255 = ashr i64 %161, 2
  %cmp256 = icmp sle i64 %shr255, 4194303
  br i1 %cmp256, label %land.lhs.true.258, label %if.end.302

land.lhs.true.258:                                ; preds = %land.lhs.true.252
  %162 = load i64, i64* %elt, align 8
  %sub259 = sub nsw i64 %162, 3
  %163 = inttoptr i64 %sub259 to i8*
  %164 = bitcast i8* %163 to %struct.Lisp_Cons*
  %car260 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %164, i32 0, i32 0
  %165 = load i64, i64* %car260, align 8
  %call261 = call zeroext i1 @NATNUMP(i64 %165)
  br i1 %call261, label %land.lhs.true.263, label %if.end.302

land.lhs.true.263:                                ; preds = %land.lhs.true.258
  %166 = load i64, i64* %elt, align 8
  %sub264 = sub nsw i64 %166, 3
  %167 = inttoptr i64 %sub264 to i8*
  %168 = bitcast i8* %167 to %struct.Lisp_Cons*
  %car265 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %168, i32 0, i32 0
  %169 = load i64, i64* %car265, align 8
  %shr266 = ashr i64 %169, 2
  %cmp267 = icmp sle i64 %shr266, 4194303
  br i1 %cmp267, label %if.then.269, label %if.end.302

if.then.269:                                      ; preds = %land.lhs.true.263
  %170 = load i64, i64* %idx.addr, align 8
  %sub272 = sub nsw i64 %170, 3
  %171 = inttoptr i64 %sub272 to i8*
  %172 = bitcast i8* %171 to %struct.Lisp_Cons*
  %car273 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %172, i32 0, i32 0
  %173 = load i64, i64* %car273, align 8
  %shr274 = ashr i64 %173, 2
  %conv275 = trunc i64 %shr274 to i32
  store i32 %conv275, i32* %from271, align 4
  %174 = load i64, i64* %idx.addr, align 8
  %sub278 = sub nsw i64 %174, 3
  %175 = inttoptr i64 %sub278 to i8*
  %176 = bitcast i8* %175 to %struct.Lisp_Cons*
  %u279 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %176, i32 0, i32 1
  %cdr280 = bitcast %union.anon* %u279 to i64*
  %177 = load i64, i64* %cdr280, align 8
  %shr281 = ashr i64 %177, 2
  %conv282 = trunc i64 %shr281 to i32
  store i32 %conv282, i32* %to277, align 4
  %178 = load i32, i32* %from271, align 4
  %conv283 = sext i32 %178 to i64
  %179 = load i64, i64* %elt, align 8
  %sub284 = sub nsw i64 %179, 3
  %180 = inttoptr i64 %sub284 to i8*
  %181 = bitcast i8* %180 to %struct.Lisp_Cons*
  %car285 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %181, i32 0, i32 0
  %182 = load i64, i64* %car285, align 8
  %shr286 = ashr i64 %182, 2
  %cmp287 = icmp sle i64 %conv283, %shr286
  br i1 %cmp287, label %land.lhs.true.289, label %if.end.301

land.lhs.true.289:                                ; preds = %if.then.269
  %183 = load i32, i32* %to277, align 4
  %conv290 = sext i32 %183 to i64
  %184 = load i64, i64* %elt, align 8
  %sub291 = sub nsw i64 %184, 3
  %185 = inttoptr i64 %sub291 to i8*
  %186 = bitcast i8* %185 to %struct.Lisp_Cons*
  %car292 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %186, i32 0, i32 0
  %187 = load i64, i64* %car292, align 8
  %shr293 = ashr i64 %187, 2
  %cmp294 = icmp sge i64 %conv290, %shr293
  br i1 %cmp294, label %if.then.296, label %if.end.301

if.then.296:                                      ; preds = %land.lhs.true.289
  %188 = load i64, i64* %elt, align 8
  %189 = load i64, i64* %def.addr, align 8
  call void @XSETCDR(i64 %188, i64 %189)
  %190 = load i32, i32* %from271, align 4
  %191 = load i32, i32* %to277, align 4
  %cmp297 = icmp eq i32 %190, %191
  br i1 %cmp297, label %if.then.299, label %if.end.300

if.then.299:                                      ; preds = %if.then.296
  %192 = load i64, i64* %def.addr, align 8
  store i64 %192, i64* %retval
  br label %return

if.end.300:                                       ; preds = %if.then.296
  br label %if.end.301

if.end.301:                                       ; preds = %if.end.300, %land.lhs.true.289, %if.then.269
  br label %if.end.302

if.end.302:                                       ; preds = %if.end.301, %land.lhs.true.263, %land.lhs.true.258, %land.lhs.true.252, %land.lhs.true.247, %if.else.242
  br label %if.end.303

if.end.303:                                       ; preds = %if.end.302
  br label %if.end.304

if.end.304:                                       ; preds = %if.end.303, %if.then.228
  br label %if.end.311

if.else.305:                                      ; preds = %if.else.217
  %193 = load i64, i64* %elt, align 8
  %call306 = call i64 @builtin_lisp_symbol(i32 589)
  %cmp307 = icmp eq i64 %193, %call306
  br i1 %cmp307, label %if.then.309, label %if.end.310

if.then.309:                                      ; preds = %if.else.305
  br label %keymap_end

if.end.310:                                       ; preds = %if.else.305
  br label %if.end.311

if.end.311:                                       ; preds = %if.end.310, %if.end.304
  br label %if.end.312

if.end.312:                                       ; preds = %if.end.311, %if.end.216
  br label %if.end.313

if.end.313:                                       ; preds = %if.end.312, %if.end.170
  br label %do.body.314

do.body.314:                                      ; preds = %if.end.313
  %194 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call315 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp316 = icmp eq i64 %194, %call315
  br i1 %cmp316, label %if.else.323, label %land.lhs.true.318

land.lhs.true.318:                                ; preds = %do.body.314
  %195 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call319 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp320 = icmp eq i64 %195, %call319
  br i1 %cmp320, label %if.then.322, label %if.else.323

if.then.322:                                      ; preds = %land.lhs.true.318
  call void @process_quit_flag()
  br label %if.end.327

if.else.323:                                      ; preds = %land.lhs.true.318, %do.body.314
  %196 = load volatile i8, i8* @pending_signals, align 1
  %tobool324 = trunc i8 %196 to i1
  br i1 %tobool324, label %if.then.325, label %if.end.326

if.then.325:                                      ; preds = %if.else.323
  call void @process_pending_signals()
  br label %if.end.326

if.end.326:                                       ; preds = %if.then.325, %if.else.323
  br label %if.end.327

if.end.327:                                       ; preds = %if.end.326, %if.then.322
  br label %do.end.328

do.end.328:                                       ; preds = %if.end.327
  br label %for.inc.329

for.inc.329:                                      ; preds = %do.end.328
  %197 = load i64, i64* %tail, align 8
  %sub330 = sub nsw i64 %197, 3
  %198 = inttoptr i64 %sub330 to i8*
  %199 = bitcast i8* %198 to %struct.Lisp_Cons*
  %u331 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %199, i32 0, i32 1
  %cdr332 = bitcast %union.anon* %u331 to i64*
  %200 = load i64, i64* %cdr332, align 8
  store i64 %200, i64* %tail, align 8
  br label %for.cond

for.end.333:                                      ; preds = %for.cond
  br label %keymap_end

keymap_end:                                       ; preds = %for.end.333, %if.then.309
  %201 = load i64, i64* %idx.addr, align 8
  %and336 = and i64 %201, 7
  %conv337 = trunc i64 %and336 to i32
  %cmp338 = icmp eq i32 %conv337, 3
  br i1 %cmp338, label %land.lhs.true.340, label %if.else.364

land.lhs.true.340:                                ; preds = %keymap_end
  %202 = load i64, i64* %idx.addr, align 8
  %sub341 = sub nsw i64 %202, 3
  %203 = inttoptr i64 %sub341 to i8*
  %204 = bitcast i8* %203 to %struct.Lisp_Cons*
  %car342 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %204, i32 0, i32 0
  %205 = load i64, i64* %car342, align 8
  %call343 = call zeroext i1 @NATNUMP(i64 %205)
  br i1 %call343, label %land.lhs.true.345, label %if.else.364

land.lhs.true.345:                                ; preds = %land.lhs.true.340
  %206 = load i64, i64* %idx.addr, align 8
  %sub346 = sub nsw i64 %206, 3
  %207 = inttoptr i64 %sub346 to i8*
  %208 = bitcast i8* %207 to %struct.Lisp_Cons*
  %car347 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %208, i32 0, i32 0
  %209 = load i64, i64* %car347, align 8
  %shr348 = ashr i64 %209, 2
  %cmp349 = icmp sle i64 %shr348, 4194303
  br i1 %cmp349, label %if.then.351, label %if.else.364

if.then.351:                                      ; preds = %land.lhs.true.345
  %call352 = call i64 @builtin_lisp_symbol(i32 589)
  %call353 = call i64 @builtin_lisp_symbol(i32 0)
  %call354 = call i64 @Fmake_char_table(i64 %call352, i64 %call353)
  store i64 %call354, i64* %elt335, align 8
  %210 = load i64, i64* %elt335, align 8
  %211 = load i64, i64* %idx.addr, align 8
  %212 = load i64, i64* %def.addr, align 8
  %call355 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp356 = icmp eq i64 %212, %call355
  br i1 %cmp356, label %cond.true.358, label %cond.false.360

cond.true.358:                                    ; preds = %if.then.351
  %call359 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end.361

cond.false.360:                                   ; preds = %if.then.351
  %213 = load i64, i64* %def.addr, align 8
  br label %cond.end.361

cond.end.361:                                     ; preds = %cond.false.360, %cond.true.358
  %cond362 = phi i64 [ %call359, %cond.true.358 ], [ %213, %cond.false.360 ]
  %call363 = call i64 @Fset_char_table_range(i64 %210, i64 %211, i64 %cond362)
  br label %if.end.366

if.else.364:                                      ; preds = %land.lhs.true.345, %land.lhs.true.340, %keymap_end
  %214 = load i64, i64* %idx.addr, align 8
  %215 = load i64, i64* %def.addr, align 8
  %call365 = call i64 @Fcons(i64 %214, i64 %215)
  store i64 %call365, i64* %elt335, align 8
  br label %if.end.366

if.end.366:                                       ; preds = %if.else.364, %cond.end.361
  %216 = load i64, i64* %insertion_point, align 8
  %sub367 = sub nsw i64 %216, 3
  %217 = inttoptr i64 %sub367 to i8*
  %218 = bitcast i8* %217 to %struct.Lisp_Cons*
  %219 = ptrtoint %struct.Lisp_Cons* %218 to i64
  %sub368 = sub i64 %219, ptrtoint ([0 x i64]* @pure to i64)
  %cmp369 = icmp ule i64 %sub368, 3000000
  br i1 %cmp369, label %cond.true.371, label %cond.false.372

cond.true.371:                                    ; preds = %if.end.366
  %220 = load i64, i64* %insertion_point, align 8
  call void @pure_write_error(i64 %220) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end.373

cond.false.372:                                   ; preds = %if.end.366
  br label %cond.end.373

cond.end.373:                                     ; preds = %cond.false.372, %221
  %222 = load i64, i64* %insertion_point, align 8
  %223 = load i64, i64* %elt335, align 8
  %224 = load i64, i64* %insertion_point, align 8
  %sub374 = sub nsw i64 %224, 3
  %225 = inttoptr i64 %sub374 to i8*
  %226 = bitcast i8* %225 to %struct.Lisp_Cons*
  %u375 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %226, i32 0, i32 1
  %cdr376 = bitcast %union.anon* %u375 to i64*
  %227 = load i64, i64* %cdr376, align 8
  %call377 = call i64 @Fcons(i64 %223, i64 %227)
  call void @XSETCDR(i64 %222, i64 %call377)
  %228 = load i64, i64* %def.addr, align 8
  store i64 %228, i64* %retval
  br label %return

return:                                           ; preds = %cond.end.373, %if.then.299, %cond.end.241, %cond.end.212, %cond.end.186, %if.then.167, %cond.end.116
  %229 = load i64, i64* %retval
  ret i64 %229
}

declare i64 @intern_c_string(i8*) #1

; Function Attrs: nounwind uwtable
define void @initial_define_lispy_key(i64 %keymap, i8* %keyname, i8* %defname) #0 {
entry:
  %keymap.addr = alloca i64, align 8
  %keyname.addr = alloca i8*, align 8
  %defname.addr = alloca i8*, align 8
  store i64 %keymap, i64* %keymap.addr, align 8
  store i8* %keyname, i8** %keyname.addr, align 8
  store i8* %defname, i8** %defname.addr, align 8
  %0 = load i64, i64* %keymap.addr, align 8
  %1 = load i8*, i8** %keyname.addr, align 8
  %call = call i64 @intern_c_string(i8* %1)
  %2 = load i8*, i8** %defname.addr, align 8
  %call1 = call i64 @intern_c_string(i8* %2)
  %call2 = call i64 @store_in_keymap(i64 %0, i64 %call, i64 %call1)
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @Fkeymapp(i64 %object) #0 {
entry:
  %object.addr = alloca i64, align 8
  store i64 %object, i64* %object.addr, align 8
  %0 = load i64, i64* %object.addr, align 8
  %call = call i64 @get_keymap(i64 %0, i1 zeroext false, i1 zeroext false)
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %call, %call1
  br i1 %cmp, label %cond.false, label %cond.true

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
define i64 @get_keymap(i64 %object, i1 zeroext %error_if_not_keymap, i1 zeroext %autoload) #0 {
entry:
  %retval = alloca i64, align 8
  %object.addr = alloca i64, align 8
  %error_if_not_keymap.addr = alloca i8, align 1
  %autoload.addr = alloca i8, align 1
  %tem = alloca i64, align 8
  %tail = alloca i64, align 8
  store i64 %object, i64* %object.addr, align 8
  %frombool = zext i1 %error_if_not_keymap to i8
  store i8 %frombool, i8* %error_if_not_keymap.addr, align 1
  %frombool1 = zext i1 %autoload to i8
  store i8 %frombool1, i8* %autoload.addr, align 1
  br label %autoload_retry

autoload_retry:                                   ; preds = %if.then.42, %entry
  %0 = load i64, i64* %object.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %autoload_retry
  br label %end

if.end:                                           ; preds = %autoload_retry
  %1 = load i64, i64* %object.addr, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %cmp2 = icmp eq i32 %conv, 3
  br i1 %cmp2, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %if.end
  %2 = load i64, i64* %object.addr, align 8
  %sub = sub nsw i64 %2, 3
  %3 = inttoptr i64 %sub to i8*
  %4 = bitcast i8* %3 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %4, i32 0, i32 0
  %5 = load i64, i64* %car, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 589)
  %cmp5 = icmp eq i64 %5, %call4
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %land.lhs.true
  %6 = load i64, i64* %object.addr, align 8
  store i64 %6, i64* %retval
  br label %return

if.end.8:                                         ; preds = %land.lhs.true, %if.end
  %7 = load i64, i64* %object.addr, align 8
  %call9 = call i64 @indirect_function(i64 %7)
  store i64 %call9, i64* %tem, align 8
  %8 = load i64, i64* %tem, align 8
  %and10 = and i64 %8, 7
  %conv11 = trunc i64 %and10 to i32
  %cmp12 = icmp eq i32 %conv11, 3
  br i1 %cmp12, label %if.then.14, label %if.end.47

if.then.14:                                       ; preds = %if.end.8
  %9 = load i64, i64* %tem, align 8
  %sub15 = sub nsw i64 %9, 3
  %10 = inttoptr i64 %sub15 to i8*
  %11 = bitcast i8* %10 to %struct.Lisp_Cons*
  %car16 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %11, i32 0, i32 0
  %12 = load i64, i64* %car16, align 8
  %call17 = call i64 @builtin_lisp_symbol(i32 589)
  %cmp18 = icmp eq i64 %12, %call17
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.then.14
  %13 = load i64, i64* %tem, align 8
  store i64 %13, i64* %retval
  br label %return

if.end.21:                                        ; preds = %if.then.14
  %14 = load i8, i8* %autoload.addr, align 1
  %tobool = trunc i8 %14 to i1
  br i1 %tobool, label %land.lhs.true.24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.21
  %15 = load i8, i8* %error_if_not_keymap.addr, align 1
  %tobool23 = trunc i8 %15 to i1
  br i1 %tobool23, label %if.end.46, label %land.lhs.true.24

land.lhs.true.24:                                 ; preds = %lor.lhs.false, %if.end.21
  %16 = load i64, i64* %tem, align 8
  %sub25 = sub nsw i64 %16, 3
  %17 = inttoptr i64 %sub25 to i8*
  %18 = bitcast i8* %17 to %struct.Lisp_Cons*
  %car26 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %18, i32 0, i32 0
  %19 = load i64, i64* %car26, align 8
  %call27 = call i64 @builtin_lisp_symbol(i32 191)
  %cmp28 = icmp eq i64 %19, %call27
  br i1 %cmp28, label %land.lhs.true.30, label %if.end.46

land.lhs.true.30:                                 ; preds = %land.lhs.true.24
  %20 = load i64, i64* %object.addr, align 8
  %and31 = and i64 %20, 7
  %conv32 = trunc i64 %and31 to i32
  %cmp33 = icmp eq i32 %conv32, 0
  br i1 %cmp33, label %if.then.35, label %if.end.46

if.then.35:                                       ; preds = %land.lhs.true.30
  %21 = load i64, i64* %tem, align 8
  %call36 = call i64 @Fnth(i64 18, i64 %21)
  store i64 %call36, i64* %tail, align 8
  %22 = load i64, i64* %tail, align 8
  %call37 = call i64 @builtin_lisp_symbol(i32 589)
  %cmp38 = icmp eq i64 %22, %call37
  br i1 %cmp38, label %if.then.40, label %if.end.45

if.then.40:                                       ; preds = %if.then.35
  %23 = load i8, i8* %autoload.addr, align 1
  %tobool41 = trunc i8 %23 to i1
  br i1 %tobool41, label %if.then.42, label %if.else

if.then.42:                                       ; preds = %if.then.40
  %24 = load i64, i64* %tem, align 8
  %25 = load i64, i64* %object.addr, align 8
  %call43 = call i64 @builtin_lisp_symbol(i32 0)
  %call44 = call i64 @Fautoload_do_load(i64 %24, i64 %25, i64 %call43)
  br label %autoload_retry

if.else:                                          ; preds = %if.then.40
  %26 = load i64, i64* %object.addr, align 8
  store i64 %26, i64* %retval
  br label %return

if.end.45:                                        ; preds = %if.then.35
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %land.lhs.true.30, %land.lhs.true.24, %lor.lhs.false
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.end.8
  br label %end

end:                                              ; preds = %if.end.47, %if.then
  %27 = load i8, i8* %error_if_not_keymap.addr, align 1
  %tobool48 = trunc i8 %27 to i1
  br i1 %tobool48, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %end
  %call50 = call i64 @builtin_lisp_symbol(i32 591)
  %28 = load i64, i64* %object.addr, align 8
  %29 = call i64 @wrong_type_argument(i64 %call50, i64 %28) #6
  unreachable

if.end.51:                                        ; preds = %end
  %call52 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call52, i64* %retval
  br label %return

return:                                           ; preds = %if.end.51, %if.else, %if.then.20, %if.then.7
  %30 = load i64, i64* %retval
  ret i64 %30
}

; Function Attrs: nounwind uwtable
define i64 @Fkeymap_prompt(i64 %map) #0 {
entry:
  %retval = alloca i64, align 8
  %map.addr = alloca i64, align 8
  %tem = alloca i64, align 8
  store i64 %map, i64* %map.addr, align 8
  %0 = load i64, i64* %map.addr, align 8
  %call = call i64 @get_keymap(i64 %0, i1 zeroext false, i1 zeroext false)
  store i64 %call, i64* %map.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.14, %entry
  %1 = load i64, i64* %map.addr, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i64, i64* %map.addr, align 8
  %sub = sub nsw i64 %2, 3
  %3 = inttoptr i64 %sub to i8*
  %4 = bitcast i8* %3 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %4, i32 0, i32 0
  %5 = load i64, i64* %car, align 8
  store i64 %5, i64* %tem, align 8
  %6 = load i64, i64* %tem, align 8
  %call2 = call zeroext i1 @STRINGP(i64 %6)
  br i1 %call2, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %7 = load i64, i64* %tem, align 8
  store i64 %7, i64* %retval
  br label %return

if.else:                                          ; preds = %while.body
  %8 = load i64, i64* %tem, align 8
  %call3 = call i64 @get_keymap(i64 %8, i1 zeroext false, i1 zeroext false)
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp5 = icmp eq i64 %call3, %call4
  br i1 %cmp5, label %if.end.13, label %if.then.7

if.then.7:                                        ; preds = %if.else
  %9 = load i64, i64* %tem, align 8
  %call8 = call i64 @Fkeymap_prompt(i64 %9)
  store i64 %call8, i64* %tem, align 8
  %10 = load i64, i64* %tem, align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp10 = icmp eq i64 %10, %call9
  br i1 %cmp10, label %if.end, label %if.then.12

if.then.12:                                       ; preds = %if.then.7
  %11 = load i64, i64* %tem, align 8
  store i64 %11, i64* %retval
  br label %return

if.end:                                           ; preds = %if.then.7
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.else
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13
  %12 = load i64, i64* %map.addr, align 8
  %sub15 = sub nsw i64 %12, 3
  %13 = inttoptr i64 %sub15 to i8*
  %14 = bitcast i8* %13 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %14, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %15 = load i64, i64* %cdr, align 8
  store i64 %15, i64* %map.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call16 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call16, i64* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.12, %if.then
  %16 = load i64, i64* %retval
  ret i64 %16
}

declare zeroext i1 @STRINGP(i64) #1

declare i64 @indirect_function(i64) #1

declare i64 @Fnth(i64, i64) #1

declare i64 @Fautoload_do_load(i64, i64, i64) #1

; Function Attrs: noreturn
declare i64 @wrong_type_argument(i64, i64) #2

; Function Attrs: nounwind uwtable
define i64 @Fkeymap_parent(i64 %keymap) #0 {
entry:
  %keymap.addr = alloca i64, align 8
  store i64 %keymap, i64* %keymap.addr, align 8
  %0 = load i64, i64* %keymap.addr, align 8
  %call = call i64 @keymap_parent(i64 %0, i1 zeroext true)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define internal i64 @keymap_parent(i64 %keymap, i1 zeroext %autoload) #0 {
entry:
  %retval = alloca i64, align 8
  %keymap.addr = alloca i64, align 8
  %autoload.addr = alloca i8, align 1
  %list = alloca i64, align 8
  store i64 %keymap, i64* %keymap.addr, align 8
  %frombool = zext i1 %autoload to i8
  store i8 %frombool, i8* %autoload.addr, align 1
  %0 = load i64, i64* %keymap.addr, align 8
  %1 = load i8, i8* %autoload.addr, align 1
  %tobool = trunc i8 %1 to i1
  %call = call i64 @get_keymap(i64 %0, i1 zeroext true, i1 zeroext %tobool)
  store i64 %call, i64* %keymap.addr, align 8
  %2 = load i64, i64* %keymap.addr, align 8
  %sub = sub nsw i64 %2, 3
  %3 = inttoptr i64 %sub to i8*
  %4 = bitcast i8* %3 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %4, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %5 = load i64, i64* %cdr, align 8
  store i64 %5, i64* %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i64, i64* %list, align 8
  %and = and i64 %6, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i64, i64* %list, align 8
  %call2 = call i64 @get_keymap(i64 %7, i1 zeroext false, i1 zeroext false)
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp4 = icmp eq i64 %call2, %call3
  br i1 %cmp4, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %8 = load i64, i64* %list, align 8
  store i64 %8, i64* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i64, i64* %list, align 8
  %sub6 = sub nsw i64 %9, 3
  %10 = inttoptr i64 %sub6 to i8*
  %11 = bitcast i8* %10 to %struct.Lisp_Cons*
  %u7 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %11, i32 0, i32 1
  %cdr8 = bitcast %union.anon* %u7 to i64*
  %12 = load i64, i64* %cdr8, align 8
  store i64 %12, i64* %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i64, i64* %list, align 8
  %14 = load i8, i8* %autoload.addr, align 1
  %tobool9 = trunc i8 %14 to i1
  %call10 = call i64 @get_keymap(i64 %13, i1 zeroext false, i1 zeroext %tobool9)
  store i64 %call10, i64* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %15 = load i64, i64* %retval
  ret i64 %15
}

; Function Attrs: nounwind uwtable
define i64 @Fset_keymap_parent(i64 %keymap, i64 %parent) #0 {
entry:
  %keymap.addr = alloca i64, align 8
  %parent.addr = alloca i64, align 8
  %list = alloca i64, align 8
  %prev = alloca i64, align 8
  store i64 %keymap, i64* %keymap.addr, align 8
  store i64 %parent, i64* %parent.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* @where_is_cache, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call1, i64* @where_is_cache_keymaps, align 8
  %0 = load i64, i64* %keymap.addr, align 8
  %call2 = call i64 @get_keymap(i64 %0, i1 zeroext true, i1 zeroext true)
  store i64 %call2, i64* %keymap.addr, align 8
  %1 = load i64, i64* %parent.addr, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %1, %call3
  br i1 %cmp, label %if.end.7, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %parent.addr, align 8
  %call4 = call i64 @get_keymap(i64 %2, i1 zeroext true, i1 zeroext false)
  store i64 %call4, i64* %parent.addr, align 8
  %3 = load i64, i64* %keymap.addr, align 8
  %4 = load i64, i64* %parent.addr, align 8
  %call5 = call zeroext i1 @keymap_memberp(i64 %3, i64 %4)
  br i1 %call5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  call void (i8*, ...) @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %if.then
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %5 = load i64, i64* %keymap.addr, align 8
  store i64 %5, i64* %prev, align 8
  br label %while.body

while.body:                                       ; preds = %if.end.7, %if.end.19
  %6 = load i64, i64* %prev, align 8
  %sub = sub nsw i64 %6, 3
  %7 = inttoptr i64 %sub to i8*
  %8 = bitcast i8* %7 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %8, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %9 = load i64, i64* %cdr, align 8
  store i64 %9, i64* %list, align 8
  %10 = load i64, i64* %list, align 8
  %and = and i64 %10, 7
  %conv = trunc i64 %and to i32
  %cmp8 = icmp eq i32 %conv, 3
  br i1 %cmp8, label %lor.lhs.false, label %if.then.14

lor.lhs.false:                                    ; preds = %while.body
  %11 = load i64, i64* %list, align 8
  %call10 = call i64 @get_keymap(i64 %11, i1 zeroext false, i1 zeroext false)
  %call11 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp12 = icmp eq i64 %call10, %call11
  br i1 %cmp12, label %if.end.19, label %if.then.14

if.then.14:                                       ; preds = %lor.lhs.false, %while.body
  %12 = load i64, i64* %prev, align 8
  %sub15 = sub nsw i64 %12, 3
  %13 = inttoptr i64 %sub15 to i8*
  %14 = bitcast i8* %13 to %struct.Lisp_Cons*
  %15 = ptrtoint %struct.Lisp_Cons* %14 to i64
  %sub16 = sub i64 %15, ptrtoint ([0 x i64]* @pure to i64)
  %cmp17 = icmp ule i64 %sub16, 3000000
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.14
  %16 = load i64, i64* %prev, align 8
  call void @pure_write_error(i64 %16) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %if.then.14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %17
  %18 = load i64, i64* %prev, align 8
  %19 = load i64, i64* %parent.addr, align 8
  call void @XSETCDR(i64 %18, i64 %19)
  %20 = load i64, i64* %parent.addr, align 8
  ret i64 %20

if.end.19:                                        ; preds = %lor.lhs.false
  %21 = load i64, i64* %list, align 8
  store i64 %21, i64* %prev, align 8
  br label %while.body
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @keymap_memberp(i64 %map, i64 %maps) #0 {
entry:
  %retval = alloca i1, align 1
  %map.addr = alloca i64, align 8
  %maps.addr = alloca i64, align 8
  store i64 %map, i64* %map.addr, align 8
  store i64 %maps, i64* %maps.addr, align 8
  %0 = load i64, i64* %map.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %1 = load i64, i64* %maps.addr, align 8
  %call1 = call i64 @get_keymap(i64 %1, i1 zeroext false, i1 zeroext false)
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp3 = icmp eq i64 %call1, %call2
  br i1 %cmp3, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %2 = load i64, i64* %map.addr, align 8
  %3 = load i64, i64* %maps.addr, align 8
  %cmp4 = icmp eq i64 %2, %3
  %lnot = xor i1 %cmp4, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load i64, i64* %maps.addr, align 8
  %call5 = call i64 @keymap_parent(i64 %5, i1 zeroext false)
  store i64 %call5, i64* %maps.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %6 = load i64, i64* %map.addr, align 8
  %7 = load i64, i64* %maps.addr, align 8
  %cmp6 = icmp eq i64 %6, %7
  store i1 %cmp6, i1* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %8 = load i1, i1* %retval
  ret i1 %8
}

; Function Attrs: noreturn
declare void @error(i8*, ...) #2

; Function Attrs: noreturn
declare void @pure_write_error(i64) #2

declare void @XSETCDR(i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @access_keymap(i64 %map, i64 %idx, i1 zeroext %t_ok, i1 zeroext %noinherit, i1 zeroext %autoload) #0 {
entry:
  %map.addr = alloca i64, align 8
  %idx.addr = alloca i64, align 8
  %t_ok.addr = alloca i8, align 1
  %noinherit.addr = alloca i8, align 1
  %autoload.addr = alloca i8, align 1
  %val = alloca i64, align 8
  store i64 %map, i64* %map.addr, align 8
  store i64 %idx, i64* %idx.addr, align 8
  %frombool = zext i1 %t_ok to i8
  store i8 %frombool, i8* %t_ok.addr, align 1
  %frombool1 = zext i1 %noinherit to i8
  store i8 %frombool1, i8* %noinherit.addr, align 1
  %frombool2 = zext i1 %autoload to i8
  store i8 %frombool2, i8* %autoload.addr, align 1
  %0 = load i64, i64* %map.addr, align 8
  %1 = load i64, i64* %idx.addr, align 8
  %2 = load i8, i8* %t_ok.addr, align 1
  %tobool = trunc i8 %2 to i1
  %3 = load i8, i8* %noinherit.addr, align 1
  %tobool3 = trunc i8 %3 to i1
  %4 = load i8, i8* %autoload.addr, align 1
  %tobool4 = trunc i8 %4 to i1
  %call = call i64 @access_keymap_1(i64 %0, i64 %1, i1 zeroext %tobool, i1 zeroext %tobool3, i1 zeroext %tobool4)
  store i64 %call, i64* %val, align 8
  %5 = load i64, i64* %val, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 957)
  %cmp = icmp eq i64 %5, %call5
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load i64, i64* %val, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call6, %cond.true ], [ %6, %cond.false ]
  ret i64 %cond
}

; Function Attrs: nounwind uwtable
define internal i64 @access_keymap_1(i64 %map, i64 %idx, i1 zeroext %t_ok, i1 zeroext %noinherit, i1 zeroext %autoload) #0 {
entry:
  %retval = alloca i64, align 8
  %map.addr = alloca i64, align 8
  %idx.addr = alloca i64, align 8
  %t_ok.addr = alloca i8, align 1
  %noinherit.addr = alloca i8, align 1
  %autoload.addr = alloca i8, align 1
  %event_meta_binding = alloca i64, align 8
  %event_meta_map = alloca i64, align 8
  %tail = alloca i64, align 8
  %t_binding = alloca i64, align 8
  %retval61 = alloca i64, align 8
  %retval_tail = alloca i64, align 8
  %val = alloca i64, align 8
  %binding = alloca i64, align 8
  %submap = alloca i64, align 8
  %parent_entry = alloca i64, align 8
  %key = alloca i64, align 8
  store i64 %map, i64* %map.addr, align 8
  store i64 %idx, i64* %idx.addr, align 8
  %frombool = zext i1 %t_ok to i8
  store i8 %frombool, i8* %t_ok.addr, align 1
  %frombool1 = zext i1 %noinherit to i8
  store i8 %frombool1, i8* %noinherit.addr, align 1
  %frombool2 = zext i1 %autoload to i8
  store i8 %frombool2, i8* %autoload.addr, align 1
  %0 = load i64, i64* %idx.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i64, i64* %idx.addr, align 8
  %sub = sub nsw i64 %1, 3
  %2 = inttoptr i64 %sub to i8*
  %3 = bitcast i8* %2 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %3, i32 0, i32 0
  %4 = load i64, i64* %car, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load i64, i64* %idx.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %5, %cond.false ]
  store i64 %cond, i64* %idx.addr, align 8
  %6 = load i64, i64* %idx.addr, align 8
  %and4 = and i64 %6, 7
  %conv5 = trunc i64 %and4 to i32
  %cmp6 = icmp eq i32 %conv5, 0
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %7 = load i64, i64* %idx.addr, align 8
  %call = call i64 @reorder_modifiers(i64 %7)
  store i64 %call, i64* %idx.addr, align 8
  br label %if.end.16

if.else:                                          ; preds = %cond.end
  %8 = load i64, i64* %idx.addr, align 8
  %and8 = and i64 %8, 7
  %conv9 = trunc i64 %and8 to i32
  %and10 = and i32 %conv9, -5
  %cmp11 = icmp eq i32 %and10, 2
  br i1 %cmp11, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.else
  %9 = load i64, i64* %idx.addr, align 8
  %shr = ashr i64 %9, 2
  %and14 = and i64 %shr, 268435455
  %call15 = call i64 @make_natnum(i64 %and14)
  store i64 %call15, i64* %idx.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.else
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %if.then
  %10 = load i64, i64* %idx.addr, align 8
  %and17 = and i64 %10, 7
  %conv18 = trunc i64 %and17 to i32
  %and19 = and i32 %conv18, -5
  %cmp20 = icmp eq i32 %and19, 2
  br i1 %cmp20, label %land.lhs.true, label %if.end.59

land.lhs.true:                                    ; preds = %if.end.16
  %11 = load i64, i64* %idx.addr, align 8
  %shr22 = ashr i64 %11, 2
  %and23 = and i64 %shr22, 134217728
  %tobool = icmp ne i64 %and23, 0
  br i1 %tobool, label %if.then.24, label %if.end.59

if.then.24:                                       ; preds = %land.lhs.true
  %12 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 379), align 8
  %shr25 = ashr i64 %12, 2
  %and26 = and i64 %shr25, 134217728
  %tobool27 = icmp ne i64 %and26, 0
  br i1 %tobool27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.then.24
  store i64 110, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 379), align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.then.24
  %13 = load i64, i64* %map.addr, align 8
  %14 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 379), align 8
  %15 = load i8, i8* %t_ok.addr, align 1
  %tobool30 = trunc i8 %15 to i1
  %16 = load i8, i8* %noinherit.addr, align 1
  %tobool31 = trunc i8 %16 to i1
  %17 = load i8, i8* %autoload.addr, align 1
  %tobool32 = trunc i8 %17 to i1
  %call33 = call i64 @access_keymap_1(i64 %13, i64 %14, i1 zeroext %tobool30, i1 zeroext %tobool31, i1 zeroext %tobool32)
  store i64 %call33, i64* %event_meta_binding, align 8
  %18 = load i64, i64* %event_meta_binding, align 8
  %19 = load i8, i8* %autoload.addr, align 1
  %tobool34 = trunc i8 %19 to i1
  %call35 = call i64 @get_keymap(i64 %18, i1 zeroext false, i1 zeroext %tobool34)
  store i64 %call35, i64* %event_meta_map, align 8
  %20 = load i64, i64* %event_meta_map, align 8
  %and36 = and i64 %20, 7
  %conv37 = trunc i64 %and36 to i32
  %cmp38 = icmp eq i32 %conv37, 3
  br i1 %cmp38, label %if.then.40, label %if.else.43

if.then.40:                                       ; preds = %if.end.29
  %21 = load i64, i64* %event_meta_map, align 8
  store i64 %21, i64* %map.addr, align 8
  %22 = load i64, i64* %idx.addr, align 8
  %shr41 = ashr i64 %22, 2
  %and42 = and i64 %shr41, -134217729
  %shl = shl i64 %and42, 2
  %add = add i64 %shl, 2
  store i64 %add, i64* %idx.addr, align 8
  br label %if.end.58

if.else.43:                                       ; preds = %if.end.29
  %23 = load i8, i8* %t_ok.addr, align 1
  %tobool44 = trunc i8 %23 to i1
  br i1 %tobool44, label %if.then.45, label %if.else.47

if.then.45:                                       ; preds = %if.else.43
  %call46 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call46, i64* %idx.addr, align 8
  br label %if.end.57

if.else.47:                                       ; preds = %if.else.43
  %24 = load i64, i64* %event_meta_binding, align 8
  %call48 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp49 = icmp eq i64 %24, %call48
  br i1 %cmp49, label %cond.true.51, label %cond.false.53

cond.true.51:                                     ; preds = %if.else.47
  %call52 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.55

cond.false.53:                                    ; preds = %if.else.47
  %call54 = call i64 @builtin_lisp_symbol(i32 957)
  br label %cond.end.55

cond.end.55:                                      ; preds = %cond.false.53, %cond.true.51
  %cond56 = phi i64 [ %call52, %cond.true.51 ], [ %call54, %cond.false.53 ]
  store i64 %cond56, i64* %retval
  br label %return

if.end.57:                                        ; preds = %if.then.45
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.then.40
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %land.lhs.true, %if.end.16
  %call60 = call i64 @builtin_lisp_symbol(i32 957)
  store i64 %call60, i64* %t_binding, align 8
  %call62 = call i64 @builtin_lisp_symbol(i32 957)
  store i64 %call62, i64* %retval61, align 8
  %call63 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call63, i64* %retval_tail, align 8
  %25 = load i64, i64* %map.addr, align 8
  %and64 = and i64 %25, 7
  %conv65 = trunc i64 %and64 to i32
  %cmp66 = icmp eq i32 %conv65, 3
  br i1 %cmp66, label %land.lhs.true.68, label %cond.false.76

land.lhs.true.68:                                 ; preds = %if.end.59
  %call69 = call i64 @builtin_lisp_symbol(i32 589)
  %26 = load i64, i64* %map.addr, align 8
  %sub70 = sub nsw i64 %26, 3
  %27 = inttoptr i64 %sub70 to i8*
  %28 = bitcast i8* %27 to %struct.Lisp_Cons*
  %car71 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %28, i32 0, i32 0
  %29 = load i64, i64* %car71, align 8
  %cmp72 = icmp eq i64 %call69, %29
  br i1 %cmp72, label %cond.true.74, label %cond.false.76

cond.true.74:                                     ; preds = %land.lhs.true.68
  %30 = load i64, i64* %map.addr, align 8
  %sub75 = sub nsw i64 %30, 3
  %31 = inttoptr i64 %sub75 to i8*
  %32 = bitcast i8* %31 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %32, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %33 = load i64, i64* %cdr, align 8
  br label %cond.end.77

cond.false.76:                                    ; preds = %land.lhs.true.68, %if.end.59
  %34 = load i64, i64* %map.addr, align 8
  br label %cond.end.77

cond.end.77:                                      ; preds = %cond.false.76, %cond.true.74
  %cond78 = phi i64 [ %33, %cond.true.74 ], [ %34, %cond.false.76 ]
  store i64 %cond78, i64* %tail, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.77
  %35 = load i64, i64* %tail, align 8
  %and79 = and i64 %35, 7
  %conv80 = trunc i64 %and79 to i32
  %cmp81 = icmp eq i32 %conv80, 3
  br i1 %cmp81, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.cond
  %36 = load i64, i64* %tail, align 8
  %37 = load i8, i8* %autoload.addr, align 1
  %tobool83 = trunc i8 %37 to i1
  %call84 = call i64 @get_keymap(i64 %36, i1 zeroext false, i1 zeroext %tobool83)
  store i64 %call84, i64* %tail, align 8
  %38 = load i64, i64* %tail, align 8
  %and85 = and i64 %38, 7
  %conv86 = trunc i64 %and85 to i32
  %cmp87 = icmp eq i32 %conv86, 3
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.cond
  %39 = phi i1 [ true, %for.cond ], [ %cmp87, %lor.rhs ]
  br i1 %39, label %for.body, label %for.end

for.body:                                         ; preds = %lor.end
  %call89 = call i64 @builtin_lisp_symbol(i32 957)
  store i64 %call89, i64* %val, align 8
  %40 = load i64, i64* %tail, align 8
  %sub90 = sub nsw i64 %40, 3
  %41 = inttoptr i64 %sub90 to i8*
  %42 = bitcast i8* %41 to %struct.Lisp_Cons*
  %car91 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %42, i32 0, i32 0
  %43 = load i64, i64* %car91, align 8
  store i64 %43, i64* %binding, align 8
  %44 = load i64, i64* %binding, align 8
  %45 = load i8, i8* %autoload.addr, align 1
  %tobool92 = trunc i8 %45 to i1
  %call93 = call i64 @get_keymap(i64 %44, i1 zeroext false, i1 zeroext %tobool92)
  store i64 %call93, i64* %submap, align 8
  %46 = load i64, i64* %binding, align 8
  %call94 = call i64 @builtin_lisp_symbol(i32 589)
  %cmp95 = icmp eq i64 %46, %call94
  br i1 %cmp95, label %if.then.97, label %if.else.132

if.then.97:                                       ; preds = %for.body
  %47 = load i8, i8* %noinherit.addr, align 1
  %tobool98 = trunc i8 %47 to i1
  br i1 %tobool98, label %if.then.103, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.97
  %48 = load i64, i64* %retval61, align 8
  %call100 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp101 = icmp eq i64 %48, %call100
  br i1 %cmp101, label %if.then.103, label %if.else.104

if.then.103:                                      ; preds = %lor.lhs.false, %if.then.97
  br label %for.end

if.else.104:                                      ; preds = %lor.lhs.false
  %49 = load i64, i64* %retval61, align 8
  %call105 = call i64 @builtin_lisp_symbol(i32 957)
  %cmp106 = icmp eq i64 %49, %call105
  br i1 %cmp106, label %if.end.130, label %if.then.108

if.then.108:                                      ; preds = %if.else.104
  %50 = load i64, i64* %tail, align 8
  %51 = load i64, i64* %idx.addr, align 8
  %52 = load i8, i8* %t_ok.addr, align 1
  %tobool109 = trunc i8 %52 to i1
  %53 = load i8, i8* %autoload.addr, align 1
  %tobool110 = trunc i8 %53 to i1
  %call111 = call i64 @access_keymap_1(i64 %50, i64 %51, i1 zeroext %tobool109, i1 zeroext false, i1 zeroext %tobool110)
  %54 = load i8, i8* %autoload.addr, align 1
  %tobool112 = trunc i8 %54 to i1
  %call113 = call i64 @get_keymap(i64 %call111, i1 zeroext false, i1 zeroext %tobool112)
  store i64 %call113, i64* %parent_entry, align 8
  %55 = load i64, i64* %parent_entry, align 8
  %call114 = call i64 @get_keymap(i64 %55, i1 zeroext false, i1 zeroext false)
  %call115 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp116 = icmp eq i64 %call114, %call115
  br i1 %cmp116, label %if.end.129, label %if.then.118

if.then.118:                                      ; preds = %if.then.108
  %56 = load i64, i64* %retval_tail, align 8
  %and119 = and i64 %56, 7
  %conv120 = trunc i64 %and119 to i32
  %cmp121 = icmp eq i32 %conv120, 3
  br i1 %cmp121, label %if.then.123, label %if.else.124

if.then.123:                                      ; preds = %if.then.118
  %57 = load i64, i64* %retval_tail, align 8
  %58 = load i64, i64* %parent_entry, align 8
  call void @XSETCDR(i64 %57, i64 %58)
  br label %if.end.128

if.else.124:                                      ; preds = %if.then.118
  %59 = load i64, i64* %retval61, align 8
  %60 = load i64, i64* %parent_entry, align 8
  %call125 = call i64 @Fcons(i64 %59, i64 %60)
  store i64 %call125, i64* %retval_tail, align 8
  %call126 = call i64 @builtin_lisp_symbol(i32 589)
  %61 = load i64, i64* %retval_tail, align 8
  %call127 = call i64 @Fcons(i64 %call126, i64 %61)
  store i64 %call127, i64* %retval61, align 8
  br label %if.end.128

if.end.128:                                       ; preds = %if.else.124, %if.then.123
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128, %if.then.108
  br label %for.end

if.end.130:                                       ; preds = %if.else.104
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130
  br label %if.end.212

if.else.132:                                      ; preds = %for.body
  %62 = load i64, i64* %submap, align 8
  %and133 = and i64 %62, 7
  %conv134 = trunc i64 %and133 to i32
  %cmp135 = icmp eq i32 %conv134, 3
  br i1 %cmp135, label %if.then.137, label %if.else.142

if.then.137:                                      ; preds = %if.else.132
  %63 = load i64, i64* %submap, align 8
  %64 = load i64, i64* %idx.addr, align 8
  %65 = load i8, i8* %t_ok.addr, align 1
  %tobool138 = trunc i8 %65 to i1
  %66 = load i8, i8* %noinherit.addr, align 1
  %tobool139 = trunc i8 %66 to i1
  %67 = load i8, i8* %autoload.addr, align 1
  %tobool140 = trunc i8 %67 to i1
  %call141 = call i64 @access_keymap_1(i64 %63, i64 %64, i1 zeroext %tobool138, i1 zeroext %tobool139, i1 zeroext %tobool140)
  store i64 %call141, i64* %val, align 8
  br label %if.end.211

if.else.142:                                      ; preds = %if.else.132
  %68 = load i64, i64* %binding, align 8
  %and143 = and i64 %68, 7
  %conv144 = trunc i64 %and143 to i32
  %cmp145 = icmp eq i32 %conv144, 3
  br i1 %cmp145, label %if.then.147, label %if.else.169

if.then.147:                                      ; preds = %if.else.142
  %69 = load i64, i64* %binding, align 8
  %sub148 = sub nsw i64 %69, 3
  %70 = inttoptr i64 %sub148 to i8*
  %71 = bitcast i8* %70 to %struct.Lisp_Cons*
  %car149 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %71, i32 0, i32 0
  %72 = load i64, i64* %car149, align 8
  store i64 %72, i64* %key, align 8
  %73 = load i64, i64* %key, align 8
  %74 = load i64, i64* %idx.addr, align 8
  %cmp150 = icmp eq i64 %73, %74
  br i1 %cmp150, label %if.then.152, label %if.else.156

if.then.152:                                      ; preds = %if.then.147
  %75 = load i64, i64* %binding, align 8
  %sub153 = sub nsw i64 %75, 3
  %76 = inttoptr i64 %sub153 to i8*
  %77 = bitcast i8* %76 to %struct.Lisp_Cons*
  %u154 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %77, i32 0, i32 1
  %cdr155 = bitcast %union.anon* %u154 to i64*
  %78 = load i64, i64* %cdr155, align 8
  store i64 %78, i64* %val, align 8
  br label %if.end.168

if.else.156:                                      ; preds = %if.then.147
  %79 = load i8, i8* %t_ok.addr, align 1
  %tobool157 = trunc i8 %79 to i1
  br i1 %tobool157, label %land.lhs.true.159, label %if.end.167

land.lhs.true.159:                                ; preds = %if.else.156
  %80 = load i64, i64* %key, align 8
  %call160 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp161 = icmp eq i64 %80, %call160
  br i1 %cmp161, label %if.then.163, label %if.end.167

if.then.163:                                      ; preds = %land.lhs.true.159
  %81 = load i64, i64* %binding, align 8
  %sub164 = sub nsw i64 %81, 3
  %82 = inttoptr i64 %sub164 to i8*
  %83 = bitcast i8* %82 to %struct.Lisp_Cons*
  %u165 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %83, i32 0, i32 1
  %cdr166 = bitcast %union.anon* %u165 to i64*
  %84 = load i64, i64* %cdr166, align 8
  store i64 %84, i64* %t_binding, align 8
  store i8 0, i8* %t_ok.addr, align 1
  br label %if.end.167

if.end.167:                                       ; preds = %if.then.163, %land.lhs.true.159, %if.else.156
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %if.then.152
  br label %if.end.210

if.else.169:                                      ; preds = %if.else.142
  %85 = load i64, i64* %binding, align 8
  %call170 = call zeroext i1 @VECTORP(i64 %85)
  br i1 %call170, label %if.then.171, label %if.else.186

if.then.171:                                      ; preds = %if.else.169
  %86 = load i64, i64* %idx.addr, align 8
  %and172 = and i64 %86, 7
  %conv173 = trunc i64 %and172 to i32
  %and174 = and i32 %conv173, -5
  %cmp175 = icmp eq i32 %and174, 2
  br i1 %cmp175, label %land.lhs.true.177, label %if.end.185

land.lhs.true.177:                                ; preds = %if.then.171
  %87 = load i64, i64* %idx.addr, align 8
  %shr178 = ashr i64 %87, 2
  %88 = load i64, i64* %binding, align 8
  %call179 = call i64 @ASIZE(i64 %88)
  %cmp180 = icmp slt i64 %shr178, %call179
  br i1 %cmp180, label %if.then.182, label %if.end.185

if.then.182:                                      ; preds = %land.lhs.true.177
  %89 = load i64, i64* %binding, align 8
  %90 = load i64, i64* %idx.addr, align 8
  %shr183 = ashr i64 %90, 2
  %call184 = call i64 @AREF(i64 %89, i64 %shr183)
  store i64 %call184, i64* %val, align 8
  br label %if.end.185

if.end.185:                                       ; preds = %if.then.182, %land.lhs.true.177, %if.then.171
  br label %if.end.209

if.else.186:                                      ; preds = %if.else.169
  %91 = load i64, i64* %binding, align 8
  %call187 = call zeroext i1 @CHAR_TABLE_P(i64 %91)
  br i1 %call187, label %if.then.188, label %if.end.208

if.then.188:                                      ; preds = %if.else.186
  %92 = load i64, i64* %idx.addr, align 8
  %and189 = and i64 %92, 7
  %conv190 = trunc i64 %and189 to i32
  %and191 = and i32 %conv190, -5
  %cmp192 = icmp eq i32 %and191, 2
  br i1 %cmp192, label %land.lhs.true.194, label %if.end.207

land.lhs.true.194:                                ; preds = %if.then.188
  %93 = load i64, i64* %idx.addr, align 8
  %shr195 = ashr i64 %93, 2
  %and196 = and i64 %shr195, 264241152
  %cmp197 = icmp eq i64 %and196, 0
  br i1 %cmp197, label %if.then.199, label %if.end.207

if.then.199:                                      ; preds = %land.lhs.true.194
  %94 = load i64, i64* %binding, align 8
  %95 = load i64, i64* %idx.addr, align 8
  %call200 = call i64 @Faref(i64 %94, i64 %95)
  store i64 %call200, i64* %val, align 8
  %96 = load i64, i64* %val, align 8
  %call201 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp202 = icmp eq i64 %96, %call201
  br i1 %cmp202, label %if.then.204, label %if.end.206

if.then.204:                                      ; preds = %if.then.199
  %call205 = call i64 @builtin_lisp_symbol(i32 957)
  store i64 %call205, i64* %val, align 8
  br label %if.end.206

if.end.206:                                       ; preds = %if.then.204, %if.then.199
  br label %if.end.207

if.end.207:                                       ; preds = %if.end.206, %land.lhs.true.194, %if.then.188
  br label %if.end.208

if.end.208:                                       ; preds = %if.end.207, %if.else.186
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.208, %if.end.185
  br label %if.end.210

if.end.210:                                       ; preds = %if.end.209, %if.end.168
  br label %if.end.211

if.end.211:                                       ; preds = %if.end.210, %if.then.137
  br label %if.end.212

if.end.212:                                       ; preds = %if.end.211, %if.end.131
  %97 = load i64, i64* %val, align 8
  %call213 = call i64 @builtin_lisp_symbol(i32 957)
  %cmp214 = icmp eq i64 %97, %call213
  br i1 %cmp214, label %if.end.271, label %if.then.216

if.then.216:                                      ; preds = %if.end.212
  %98 = load i64, i64* %val, align 8
  %call217 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp218 = icmp eq i64 %98, %call217
  br i1 %cmp218, label %if.then.220, label %if.end.222

if.then.220:                                      ; preds = %if.then.216
  %call221 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call221, i64* %val, align 8
  br label %if.end.222

if.end.222:                                       ; preds = %if.then.220, %if.then.216
  %99 = load i64, i64* %val, align 8
  %100 = load i8, i8* %autoload.addr, align 1
  %tobool223 = trunc i8 %100 to i1
  %call224 = call i64 @get_keyelt(i64 %99, i1 zeroext %tobool223)
  store i64 %call224, i64* %val, align 8
  %101 = load i64, i64* %val, align 8
  %call225 = call i64 @get_keymap(i64 %101, i1 zeroext false, i1 zeroext false)
  %call226 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp227 = icmp eq i64 %call225, %call226
  br i1 %cmp227, label %if.then.229, label %if.else.244

if.then.229:                                      ; preds = %if.end.222
  %102 = load i64, i64* %retval61, align 8
  %call230 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp231 = icmp eq i64 %102, %call230
  br i1 %cmp231, label %if.then.237, label %lor.lhs.false.233

lor.lhs.false.233:                                ; preds = %if.then.229
  %103 = load i64, i64* %retval61, align 8
  %call234 = call i64 @builtin_lisp_symbol(i32 957)
  %cmp235 = icmp eq i64 %103, %call234
  br i1 %cmp235, label %if.then.237, label %if.end.238

if.then.237:                                      ; preds = %lor.lhs.false.233, %if.then.229
  %104 = load i64, i64* %val, align 8
  store i64 %104, i64* %retval61, align 8
  br label %if.end.238

if.end.238:                                       ; preds = %if.then.237, %lor.lhs.false.233
  %105 = load i64, i64* %val, align 8
  %call239 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp240 = icmp eq i64 %105, %call239
  br i1 %cmp240, label %if.end.243, label %if.then.242

if.then.242:                                      ; preds = %if.end.238
  br label %for.end

if.end.243:                                       ; preds = %if.end.238
  br label %if.end.270

if.else.244:                                      ; preds = %if.end.222
  %106 = load i64, i64* %retval61, align 8
  %call245 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp246 = icmp eq i64 %106, %call245
  br i1 %cmp246, label %if.then.252, label %lor.lhs.false.248

lor.lhs.false.248:                                ; preds = %if.else.244
  %107 = load i64, i64* %retval61, align 8
  %call249 = call i64 @builtin_lisp_symbol(i32 957)
  %cmp250 = icmp eq i64 %107, %call249
  br i1 %cmp250, label %if.then.252, label %if.else.253

if.then.252:                                      ; preds = %lor.lhs.false.248, %if.else.244
  %108 = load i64, i64* %val, align 8
  store i64 %108, i64* %retval61, align 8
  br label %if.end.269

if.else.253:                                      ; preds = %lor.lhs.false.248
  %109 = load i64, i64* %retval_tail, align 8
  %and254 = and i64 %109, 7
  %conv255 = trunc i64 %and254 to i32
  %cmp256 = icmp eq i32 %conv255, 3
  br i1 %cmp256, label %if.then.258, label %if.else.263

if.then.258:                                      ; preds = %if.else.253
  %110 = load i64, i64* %retval_tail, align 8
  %111 = load i64, i64* %val, align 8
  %call259 = call i64 @list1(i64 %111)
  call void @XSETCDR(i64 %110, i64 %call259)
  %112 = load i64, i64* %retval_tail, align 8
  %sub260 = sub nsw i64 %112, 3
  %113 = inttoptr i64 %sub260 to i8*
  %114 = bitcast i8* %113 to %struct.Lisp_Cons*
  %u261 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %114, i32 0, i32 1
  %cdr262 = bitcast %union.anon* %u261 to i64*
  %115 = load i64, i64* %cdr262, align 8
  store i64 %115, i64* %retval_tail, align 8
  br label %if.end.268

if.else.263:                                      ; preds = %if.else.253
  %116 = load i64, i64* %val, align 8
  %call264 = call i64 @list1(i64 %116)
  store i64 %call264, i64* %retval_tail, align 8
  %call265 = call i64 @builtin_lisp_symbol(i32 589)
  %117 = load i64, i64* %retval61, align 8
  %118 = load i64, i64* %retval_tail, align 8
  %call266 = call i64 @Fcons(i64 %117, i64 %118)
  %call267 = call i64 @Fcons(i64 %call265, i64 %call266)
  store i64 %call267, i64* %retval61, align 8
  br label %if.end.268

if.end.268:                                       ; preds = %if.else.263, %if.then.258
  br label %if.end.269

if.end.269:                                       ; preds = %if.end.268, %if.then.252
  br label %if.end.270

if.end.270:                                       ; preds = %if.end.269, %if.end.243
  br label %if.end.271

if.end.271:                                       ; preds = %if.end.270, %if.end.212
  br label %do.body

do.body:                                          ; preds = %if.end.271
  %119 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call272 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp273 = icmp eq i64 %119, %call272
  br i1 %cmp273, label %if.else.280, label %land.lhs.true.275

land.lhs.true.275:                                ; preds = %do.body
  %120 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call276 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp277 = icmp eq i64 %120, %call276
  br i1 %cmp277, label %if.then.279, label %if.else.280

if.then.279:                                      ; preds = %land.lhs.true.275
  call void @process_quit_flag()
  br label %if.end.284

if.else.280:                                      ; preds = %land.lhs.true.275, %do.body
  %121 = load volatile i8, i8* @pending_signals, align 1
  %tobool281 = trunc i8 %121 to i1
  br i1 %tobool281, label %if.then.282, label %if.end.283

if.then.282:                                      ; preds = %if.else.280
  call void @process_pending_signals()
  br label %if.end.283

if.end.283:                                       ; preds = %if.then.282, %if.else.280
  br label %if.end.284

if.end.284:                                       ; preds = %if.end.283, %if.then.279
  br label %do.end

do.end:                                           ; preds = %if.end.284
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %122 = load i64, i64* %tail, align 8
  %sub285 = sub nsw i64 %122, 3
  %123 = inttoptr i64 %sub285 to i8*
  %124 = bitcast i8* %123 to %struct.Lisp_Cons*
  %u286 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %124, i32 0, i32 1
  %cdr287 = bitcast %union.anon* %u286 to i64*
  %125 = load i64, i64* %cdr287, align 8
  store i64 %125, i64* %tail, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.242, %if.end.129, %if.then.103, %lor.end
  %call288 = call i64 @builtin_lisp_symbol(i32 957)
  %126 = load i64, i64* %retval61, align 8
  %cmp289 = icmp eq i64 %call288, %126
  br i1 %cmp289, label %cond.true.291, label %cond.false.294

cond.true.291:                                    ; preds = %for.end
  %127 = load i64, i64* %t_binding, align 8
  %128 = load i8, i8* %autoload.addr, align 1
  %tobool292 = trunc i8 %128 to i1
  %call293 = call i64 @get_keyelt(i64 %127, i1 zeroext %tobool292)
  br label %cond.end.295

cond.false.294:                                   ; preds = %for.end
  %129 = load i64, i64* %retval61, align 8
  br label %cond.end.295

cond.end.295:                                     ; preds = %cond.false.294, %cond.true.291
  %cond296 = phi i64 [ %call293, %cond.true.291 ], [ %129, %cond.false.294 ]
  store i64 %cond296, i64* %retval
  br label %return

return:                                           ; preds = %cond.end.295, %cond.end.55
  %130 = load i64, i64* %retval
  ret i64 %130
}

; Function Attrs: nounwind uwtable
define void @map_keymap(i64 %map, void (i64, i64, i64, i8*)* %fun, i64 %args, i8* %data, i1 zeroext %autoload) #0 {
entry:
  %map.addr = alloca i64, align 8
  %fun.addr = alloca void (i64, i64, i64, i8*)*, align 8
  %args.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %autoload.addr = alloca i8, align 1
  store i64 %map, i64* %map.addr, align 8
  store void (i64, i64, i64, i8*)* %fun, void (i64, i64, i64, i8*)** %fun.addr, align 8
  store i64 %args, i64* %args.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %frombool = zext i1 %autoload to i8
  store i8 %frombool, i8* %autoload.addr, align 1
  %0 = load i64, i64* %map.addr, align 8
  %1 = load i8, i8* %autoload.addr, align 1
  %tobool = trunc i8 %1 to i1
  %call = call i64 @get_keymap(i64 %0, i1 zeroext true, i1 zeroext %tobool)
  store i64 %call, i64* %map.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.18, %entry
  %2 = load i64, i64* %map.addr, align 8
  %and = and i64 %2, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i64, i64* %map.addr, align 8
  %sub = sub nsw i64 %3, 3
  %4 = inttoptr i64 %sub to i8*
  %5 = bitcast i8* %4 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %5, i32 0, i32 0
  %6 = load i64, i64* %car, align 8
  %call2 = call i64 @get_keymap(i64 %6, i1 zeroext false, i1 zeroext false)
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp4 = icmp eq i64 %call2, %call3
  br i1 %cmp4, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  %7 = load i64, i64* %map.addr, align 8
  %sub6 = sub nsw i64 %7, 3
  %8 = inttoptr i64 %sub6 to i8*
  %9 = bitcast i8* %8 to %struct.Lisp_Cons*
  %car7 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %9, i32 0, i32 0
  %10 = load i64, i64* %car7, align 8
  %11 = load void (i64, i64, i64, i8*)*, void (i64, i64, i64, i8*)** %fun.addr, align 8
  %12 = load i64, i64* %args.addr, align 8
  %13 = load i8*, i8** %data.addr, align 8
  %14 = load i8, i8* %autoload.addr, align 1
  %tobool8 = trunc i8 %14 to i1
  call void @map_keymap(i64 %10, void (i64, i64, i64, i8*)* %11, i64 %12, i8* %13, i1 zeroext %tobool8)
  %15 = load i64, i64* %map.addr, align 8
  %sub9 = sub nsw i64 %15, 3
  %16 = inttoptr i64 %sub9 to i8*
  %17 = bitcast i8* %16 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %17, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %18 = load i64, i64* %cdr, align 8
  store i64 %18, i64* %map.addr, align 8
  br label %if.end

if.else:                                          ; preds = %while.body
  %19 = load i64, i64* %map.addr, align 8
  %20 = load void (i64, i64, i64, i8*)*, void (i64, i64, i64, i8*)** %fun.addr, align 8
  %21 = load i64, i64* %args.addr, align 8
  %22 = load i8*, i8** %data.addr, align 8
  %call10 = call i64 @map_keymap_internal(i64 %19, void (i64, i64, i64, i8*)* %20, i64 %21, i8* %22)
  store i64 %call10, i64* %map.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %23 = load i64, i64* %map.addr, align 8
  %and11 = and i64 %23, 7
  %conv12 = trunc i64 %and11 to i32
  %cmp13 = icmp eq i32 %conv12, 3
  br i1 %cmp13, label %if.end.18, label %if.then.15

if.then.15:                                       ; preds = %if.end
  %24 = load i64, i64* %map.addr, align 8
  %25 = load i8, i8* %autoload.addr, align 1
  %tobool16 = trunc i8 %25 to i1
  %call17 = call i64 @get_keymap(i64 %24, i1 zeroext false, i1 zeroext %tobool16)
  store i64 %call17, i64* %map.addr, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @map_keymap_internal(i64 %map, void (i64, i64, i64, i8*)* %fun, i64 %args, i8* %data) #0 {
entry:
  %map.addr = alloca i64, align 8
  %fun.addr = alloca void (i64, i64, i64, i8*)*, align 8
  %args.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %tail = alloca i64, align 8
  %binding = alloca i64, align 8
  %len = alloca i32, align 4
  %c = alloca i32, align 4
  %character = alloca i64, align 8
  store i64 %map, i64* %map.addr, align 8
  store void (i64, i64, i64, i8*)* %fun, void (i64, i64, i64, i8*)** %fun.addr, align 8
  store i64 %args, i64* %args.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i64, i64* %map.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 589)
  %1 = load i64, i64* %map.addr, align 8
  %sub = sub nsw i64 %1, 3
  %2 = inttoptr i64 %sub to i8*
  %3 = bitcast i8* %2 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %3, i32 0, i32 0
  %4 = load i64, i64* %car, align 8
  %cmp2 = icmp eq i64 %call, %4
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %5 = load i64, i64* %map.addr, align 8
  %sub4 = sub nsw i64 %5, 3
  %6 = inttoptr i64 %sub4 to i8*
  %7 = bitcast i8* %6 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %7, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %8 = load i64, i64* %cdr, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  %9 = load i64, i64* %map.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %8, %cond.true ], [ %9, %cond.false ]
  store i64 %cond, i64* %tail, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.51, %cond.end
  %10 = load i64, i64* %tail, align 8
  %and5 = and i64 %10, 7
  %conv6 = trunc i64 %and5 to i32
  %cmp7 = icmp eq i32 %conv6, 3
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %call9 = call i64 @builtin_lisp_symbol(i32 589)
  %11 = load i64, i64* %tail, align 8
  %sub10 = sub nsw i64 %11, 3
  %12 = inttoptr i64 %sub10 to i8*
  %13 = bitcast i8* %12 to %struct.Lisp_Cons*
  %car11 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %13, i32 0, i32 0
  %14 = load i64, i64* %car11, align 8
  %cmp12 = icmp eq i64 %call9, %14
  %lnot = xor i1 %cmp12, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %15 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %15, label %for.body, label %for.end.55

for.body:                                         ; preds = %land.end
  %16 = load i64, i64* %tail, align 8
  %sub14 = sub nsw i64 %16, 3
  %17 = inttoptr i64 %sub14 to i8*
  %18 = bitcast i8* %17 to %struct.Lisp_Cons*
  %car15 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %18, i32 0, i32 0
  %19 = load i64, i64* %car15, align 8
  store i64 %19, i64* %binding, align 8
  %20 = load i64, i64* %binding, align 8
  %call16 = call i64 @get_keymap(i64 %20, i1 zeroext false, i1 zeroext false)
  %call17 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp18 = icmp eq i64 %call16, %call17
  br i1 %cmp18, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.end.55

if.else:                                          ; preds = %for.body
  %21 = load i64, i64* %binding, align 8
  %and20 = and i64 %21, 7
  %conv21 = trunc i64 %and20 to i32
  %cmp22 = icmp eq i32 %conv21, 3
  br i1 %cmp22, label %if.then.24, label %if.else.30

if.then.24:                                       ; preds = %if.else
  %22 = load void (i64, i64, i64, i8*)*, void (i64, i64, i64, i8*)** %fun.addr, align 8
  %23 = load i64, i64* %args.addr, align 8
  %24 = load i64, i64* %binding, align 8
  %sub25 = sub nsw i64 %24, 3
  %25 = inttoptr i64 %sub25 to i8*
  %26 = bitcast i8* %25 to %struct.Lisp_Cons*
  %car26 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %26, i32 0, i32 0
  %27 = load i64, i64* %car26, align 8
  %28 = load i64, i64* %binding, align 8
  %sub27 = sub nsw i64 %28, 3
  %29 = inttoptr i64 %sub27 to i8*
  %30 = bitcast i8* %29 to %struct.Lisp_Cons*
  %u28 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %30, i32 0, i32 1
  %cdr29 = bitcast %union.anon* %u28 to i64*
  %31 = load i64, i64* %cdr29, align 8
  %32 = load i8*, i8** %data.addr, align 8
  call void @map_keymap_item(void (i64, i64, i64, i8*)* %22, i64 %23, i64 %27, i64 %31, i8* %32)
  br label %if.end.49

if.else.30:                                       ; preds = %if.else
  %33 = load i64, i64* %binding, align 8
  %call31 = call zeroext i1 @VECTORP(i64 %33)
  br i1 %call31, label %if.then.32, label %if.else.43

if.then.32:                                       ; preds = %if.else.30
  %34 = load i64, i64* %binding, align 8
  %call33 = call i64 @ASIZE(i64 %34)
  %conv34 = trunc i64 %call33 to i32
  store i32 %conv34, i32* %len, align 4
  store i32 0, i32* %c, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc, %if.then.32
  %35 = load i32, i32* %c, align 4
  %36 = load i32, i32* %len, align 4
  %cmp36 = icmp slt i32 %35, %36
  br i1 %cmp36, label %for.body.38, label %for.end

for.body.38:                                      ; preds = %for.cond.35
  %37 = load i32, i32* %c, align 4
  %conv39 = sext i32 %37 to i64
  %call40 = call i64 @make_natnum(i64 %conv39)
  store i64 %call40, i64* %character, align 8
  %38 = load void (i64, i64, i64, i8*)*, void (i64, i64, i64, i8*)** %fun.addr, align 8
  %39 = load i64, i64* %args.addr, align 8
  %40 = load i64, i64* %character, align 8
  %41 = load i64, i64* %binding, align 8
  %42 = load i32, i32* %c, align 4
  %conv41 = sext i32 %42 to i64
  %call42 = call i64 @AREF(i64 %41, i64 %conv41)
  %43 = load i8*, i8** %data.addr, align 8
  call void @map_keymap_item(void (i64, i64, i64, i8*)* %38, i64 %39, i64 %40, i64 %call42, i8* %43)
  br label %for.inc

for.inc:                                          ; preds = %for.body.38
  %44 = load i32, i32* %c, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %c, align 4
  br label %for.cond.35

for.end:                                          ; preds = %for.cond.35
  br label %if.end.48

if.else.43:                                       ; preds = %if.else.30
  %45 = load i64, i64* %binding, align 8
  %call44 = call zeroext i1 @CHAR_TABLE_P(i64 %45)
  br i1 %call44, label %if.then.45, label %if.end

if.then.45:                                       ; preds = %if.else.43
  %call46 = call i64 @builtin_lisp_symbol(i32 0)
  %46 = load i64, i64* %binding, align 8
  %47 = load void (i64, i64, i64, i8*)*, void (i64, i64, i64, i8*)** %fun.addr, align 8
  %48 = bitcast void (i64, i64, i64, i8*)* %47 to void ()*
  %49 = load i8*, i8** %data.addr, align 8
  %50 = load i64, i64* %args.addr, align 8
  %call47 = call i64 @make_save_funcptr_ptr_obj(void ()* %48, i8* %49, i64 %50)
  call void @map_char_table(void (i64, i64, i64)* @map_keymap_char_table_item, i64 %call46, i64 %46, i64 %call47)
  br label %if.end

if.end:                                           ; preds = %if.then.45, %if.else.43
  br label %if.end.48

if.end.48:                                        ; preds = %if.end, %for.end
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then.24
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49
  br label %for.inc.51

for.inc.51:                                       ; preds = %if.end.50
  %51 = load i64, i64* %tail, align 8
  %sub52 = sub nsw i64 %51, 3
  %52 = inttoptr i64 %sub52 to i8*
  %53 = bitcast i8* %52 to %struct.Lisp_Cons*
  %u53 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %53, i32 0, i32 1
  %cdr54 = bitcast %union.anon* %u53 to i64*
  %54 = load i64, i64* %cdr54, align 8
  store i64 %54, i64* %tail, align 8
  br label %for.cond

for.end.55:                                       ; preds = %if.then, %land.end
  %55 = load i64, i64* %tail, align 8
  ret i64 %55
}

; Function Attrs: nounwind uwtable
define void @map_keymap_canonical(i64 %map, void (i64, i64, i64, i8*)* %fun, i64 %args, i8* %data) #0 {
entry:
  %map.addr = alloca i64, align 8
  %fun.addr = alloca void (i64, i64, i64, i8*)*, align 8
  %args.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  store i64 %map, i64* %map.addr, align 8
  store void (i64, i64, i64, i8*)* %fun, void (i64, i64, i64, i8*)** %fun.addr, align 8
  store i64 %args, i64* %args.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 590)
  %0 = load i64, i64* %map.addr, align 8
  %call1 = call i64 @safe_call1(i64 %call, i64 %0)
  store i64 %call1, i64* %map.addr, align 8
  %1 = load i64, i64* %map.addr, align 8
  %2 = load void (i64, i64, i64, i8*)*, void (i64, i64, i64, i8*)** %fun.addr, align 8
  %3 = load i64, i64* %args.addr, align 8
  %4 = load i8*, i8** %data.addr, align 8
  %call2 = call i64 @map_keymap_internal(i64 %1, void (i64, i64, i64, i8*)* %2, i64 %3, i8* %4)
  ret void
}

declare i64 @safe_call1(i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fmap_keymap_internal(i64 %function, i64 %keymap) #0 {
entry:
  %function.addr = alloca i64, align 8
  %keymap.addr = alloca i64, align 8
  store i64 %function, i64* %function.addr, align 8
  store i64 %keymap, i64* %keymap.addr, align 8
  %0 = load i64, i64* %keymap.addr, align 8
  %call = call i64 @get_keymap(i64 %0, i1 zeroext true, i1 zeroext true)
  store i64 %call, i64* %keymap.addr, align 8
  %1 = load i64, i64* %keymap.addr, align 8
  %2 = load i64, i64* %function.addr, align 8
  %call1 = call i64 @map_keymap_internal(i64 %1, void (i64, i64, i64, i8*)* @map_keymap_call, i64 %2, i8* null)
  store i64 %call1, i64* %keymap.addr, align 8
  %3 = load i64, i64* %keymap.addr, align 8
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define internal void @map_keymap_call(i64 %key, i64 %val, i64 %fun, i8* %dummy) #0 {
entry:
  %key.addr = alloca i64, align 8
  %val.addr = alloca i64, align 8
  %fun.addr = alloca i64, align 8
  %dummy.addr = alloca i8*, align 8
  store i64 %key, i64* %key.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  store i64 %fun, i64* %fun.addr, align 8
  store i8* %dummy, i8** %dummy.addr, align 8
  %0 = load i64, i64* %fun.addr, align 8
  %1 = load i64, i64* %key.addr, align 8
  %2 = load i64, i64* %val.addr, align 8
  %call = call i64 @call2(i64 %0, i64 %1, i64 %2)
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @Fmap_keymap(i64 %function, i64 %keymap, i64 %sort_first) #0 {
entry:
  %retval = alloca i64, align 8
  %function.addr = alloca i64, align 8
  %keymap.addr = alloca i64, align 8
  %sort_first.addr = alloca i64, align 8
  store i64 %function, i64* %function.addr, align 8
  store i64 %keymap, i64* %keymap.addr, align 8
  store i64 %sort_first, i64* %sort_first.addr, align 8
  %0 = load i64, i64* %sort_first.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i64 @intern(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  %1 = load i64, i64* %function.addr, align 8
  %2 = load i64, i64* %keymap.addr, align 8
  %call2 = call i64 @call2(i64 %call1, i64 %1, i64 %2)
  store i64 %call2, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %keymap.addr, align 8
  %4 = load i64, i64* %function.addr, align 8
  call void @map_keymap(i64 %3, void (i64, i64, i64, i8*)* @map_keymap_call, i64 %4, i8* null, i1 zeroext true)
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call3, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i64, i64* %retval
  ret i64 %5
}

declare i64 @call2(i64, i64, i64) #1

declare i64 @intern(i8*) #1

; Function Attrs: nounwind uwtable
define i64 @Fcopy_keymap(i64 %keymap) #0 {
entry:
  %keymap.addr = alloca i64, align 8
  %copy = alloca i64, align 8
  %tail = alloca i64, align 8
  %elt = alloca i64, align 8
  %i = alloca i32, align 4
  store i64 %keymap, i64* %keymap.addr, align 8
  %0 = load i64, i64* %keymap.addr, align 8
  %call = call i64 @get_keymap(i64 %0, i1 zeroext true, i1 zeroext false)
  store i64 %call, i64* %keymap.addr, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 589)
  %call2 = call i64 @list1(i64 %call1)
  store i64 %call2, i64* %tail, align 8
  store i64 %call2, i64* %copy, align 8
  %1 = load i64, i64* %keymap.addr, align 8
  %sub = sub nsw i64 %1, 3
  %2 = inttoptr i64 %sub to i8*
  %3 = bitcast i8* %2 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %3, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %4 = load i64, i64* %cdr, align 8
  store i64 %4, i64* %keymap.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.47, %entry
  %5 = load i64, i64* %keymap.addr, align 8
  %and = and i64 %5, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load i64, i64* %keymap.addr, align 8
  %sub4 = sub nsw i64 %6, 3
  %7 = inttoptr i64 %sub4 to i8*
  %8 = bitcast i8* %7 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %8, i32 0, i32 0
  %9 = load i64, i64* %car, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 589)
  %cmp6 = icmp eq i64 %9, %call5
  %lnot = xor i1 %cmp6, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %10 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %11 = load i64, i64* %keymap.addr, align 8
  %sub8 = sub nsw i64 %11, 3
  %12 = inttoptr i64 %sub8 to i8*
  %13 = bitcast i8* %12 to %struct.Lisp_Cons*
  %car9 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %13, i32 0, i32 0
  %14 = load i64, i64* %car9, align 8
  store i64 %14, i64* %elt, align 8
  %15 = load i64, i64* %elt, align 8
  %call10 = call zeroext i1 @CHAR_TABLE_P(i64 %15)
  br i1 %call10, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %16 = load i64, i64* %elt, align 8
  %call11 = call i64 @Fcopy_sequence(i64 %16)
  store i64 %call11, i64* %elt, align 8
  %call12 = call i64 @builtin_lisp_symbol(i32 0)
  %17 = load i64, i64* %elt, align 8
  %18 = load i64, i64* %elt, align 8
  call void @map_char_table(void (i64, i64, i64)* @copy_keymap_1, i64 %call12, i64 %17, i64 %18)
  br label %if.end.47

if.else:                                          ; preds = %while.body
  %19 = load i64, i64* %elt, align 8
  %call13 = call zeroext i1 @VECTORP(i64 %19)
  br i1 %call13, label %if.then.14, label %if.else.24

if.then.14:                                       ; preds = %if.else
  %20 = load i64, i64* %elt, align 8
  %call15 = call i64 @Fcopy_sequence(i64 %20)
  store i64 %call15, i64* %elt, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.14
  %21 = load i32, i32* %i, align 4
  %conv16 = sext i32 %21 to i64
  %22 = load i64, i64* %elt, align 8
  %call17 = call i64 @ASIZE(i64 %22)
  %cmp18 = icmp slt i64 %conv16, %call17
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i64, i64* %elt, align 8
  %24 = load i32, i32* %i, align 4
  %conv20 = sext i32 %24 to i64
  %25 = load i64, i64* %elt, align 8
  %26 = load i32, i32* %i, align 4
  %conv21 = sext i32 %26 to i64
  %call22 = call i64 @AREF(i64 %25, i64 %conv21)
  %call23 = call i64 @copy_keymap_item(i64 %call22)
  call void @ASET(i64 %23, i64 %conv20, i64 %call23)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.46

if.else.24:                                       ; preds = %if.else
  %28 = load i64, i64* %elt, align 8
  %and25 = and i64 %28, 7
  %conv26 = trunc i64 %and25 to i32
  %cmp27 = icmp eq i32 %conv26, 3
  br i1 %cmp27, label %if.then.29, label %if.end.45

if.then.29:                                       ; preds = %if.else.24
  %29 = load i64, i64* %elt, align 8
  %sub30 = sub nsw i64 %29, 3
  %30 = inttoptr i64 %sub30 to i8*
  %31 = bitcast i8* %30 to %struct.Lisp_Cons*
  %car31 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %31, i32 0, i32 0
  %32 = load i64, i64* %car31, align 8
  %call32 = call i64 @builtin_lisp_symbol(i32 589)
  %cmp33 = icmp eq i64 %32, %call32
  br i1 %cmp33, label %if.then.35, label %if.else.37

if.then.35:                                       ; preds = %if.then.29
  %33 = load i64, i64* %elt, align 8
  %call36 = call i64 @Fcopy_keymap(i64 %33)
  store i64 %call36, i64* %elt, align 8
  br label %if.end

if.else.37:                                       ; preds = %if.then.29
  %34 = load i64, i64* %elt, align 8
  %sub38 = sub nsw i64 %34, 3
  %35 = inttoptr i64 %sub38 to i8*
  %36 = bitcast i8* %35 to %struct.Lisp_Cons*
  %car39 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %36, i32 0, i32 0
  %37 = load i64, i64* %car39, align 8
  %38 = load i64, i64* %elt, align 8
  %sub40 = sub nsw i64 %38, 3
  %39 = inttoptr i64 %sub40 to i8*
  %40 = bitcast i8* %39 to %struct.Lisp_Cons*
  %u41 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %40, i32 0, i32 1
  %cdr42 = bitcast %union.anon* %u41 to i64*
  %41 = load i64, i64* %cdr42, align 8
  %call43 = call i64 @copy_keymap_item(i64 %41)
  %call44 = call i64 @Fcons(i64 %37, i64 %call43)
  store i64 %call44, i64* %elt, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.37, %if.then.35
  br label %if.end.45

if.end.45:                                        ; preds = %if.end, %if.else.24
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %for.end
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then
  %42 = load i64, i64* %tail, align 8
  %43 = load i64, i64* %elt, align 8
  %call48 = call i64 @list1(i64 %43)
  call void @XSETCDR(i64 %42, i64 %call48)
  %44 = load i64, i64* %tail, align 8
  %sub49 = sub nsw i64 %44, 3
  %45 = inttoptr i64 %sub49 to i8*
  %46 = bitcast i8* %45 to %struct.Lisp_Cons*
  %u50 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %46, i32 0, i32 1
  %cdr51 = bitcast %union.anon* %u50 to i64*
  %47 = load i64, i64* %cdr51, align 8
  store i64 %47, i64* %tail, align 8
  %48 = load i64, i64* %keymap.addr, align 8
  %sub52 = sub nsw i64 %48, 3
  %49 = inttoptr i64 %sub52 to i8*
  %50 = bitcast i8* %49 to %struct.Lisp_Cons*
  %u53 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %50, i32 0, i32 1
  %cdr54 = bitcast %union.anon* %u53 to i64*
  %51 = load i64, i64* %cdr54, align 8
  store i64 %51, i64* %keymap.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %52 = load i64, i64* %tail, align 8
  %53 = load i64, i64* %keymap.addr, align 8
  call void @XSETCDR(i64 %52, i64 %53)
  %54 = load i64, i64* %copy, align 8
  ret i64 %54
}

declare zeroext i1 @CHAR_TABLE_P(i64) #1

declare i64 @Fcopy_sequence(i64) #1

declare void @map_char_table(void (i64, i64, i64)*, i64, i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @copy_keymap_1(i64 %chartable, i64 %idx, i64 %elt) #0 {
entry:
  %chartable.addr = alloca i64, align 8
  %idx.addr = alloca i64, align 8
  %elt.addr = alloca i64, align 8
  store i64 %chartable, i64* %chartable.addr, align 8
  store i64 %idx, i64* %idx.addr, align 8
  store i64 %elt, i64* %elt.addr, align 8
  %0 = load i64, i64* %chartable.addr, align 8
  %1 = load i64, i64* %idx.addr, align 8
  %2 = load i64, i64* %elt.addr, align 8
  %call = call i64 @copy_keymap_item(i64 %2)
  %call1 = call i64 @Fset_char_table_range(i64 %0, i64 %1, i64 %call)
  ret void
}

declare zeroext i1 @VECTORP(i64) #1

declare i64 @ASIZE(i64) #1

declare void @ASET(i64, i64, i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @copy_keymap_item(i64 %elt) #0 {
entry:
  %retval = alloca i64, align 8
  %elt.addr = alloca i64, align 8
  %res = alloca i64, align 8
  %tem = alloca i64, align 8
  store i64 %elt, i64* %elt.addr, align 8
  %0 = load i64, i64* %elt.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %elt.addr, align 8
  store i64 %1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %elt.addr, align 8
  store i64 %2, i64* %tem, align 8
  store i64 %2, i64* %res, align 8
  %3 = load i64, i64* %tem, align 8
  %sub = sub nsw i64 %3, 3
  %4 = inttoptr i64 %sub to i8*
  %5 = bitcast i8* %4 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %5, i32 0, i32 0
  %6 = load i64, i64* %car, align 8
  %call = call i64 @builtin_lisp_symbol(i32 657)
  %cmp2 = icmp eq i64 %6, %call
  br i1 %cmp2, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %7 = load i64, i64* %tem, align 8
  %sub5 = sub nsw i64 %7, 3
  %8 = inttoptr i64 %sub5 to i8*
  %9 = bitcast i8* %8 to %struct.Lisp_Cons*
  %car6 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %9, i32 0, i32 0
  %10 = load i64, i64* %car6, align 8
  %11 = load i64, i64* %tem, align 8
  %sub7 = sub nsw i64 %11, 3
  %12 = inttoptr i64 %sub7 to i8*
  %13 = bitcast i8* %12 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %13, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %14 = load i64, i64* %cdr, align 8
  %call8 = call i64 @Fcons(i64 %10, i64 %14)
  store i64 %call8, i64* %elt.addr, align 8
  store i64 %call8, i64* %res, align 8
  %15 = load i64, i64* %elt.addr, align 8
  %sub9 = sub nsw i64 %15, 3
  %16 = inttoptr i64 %sub9 to i8*
  %17 = bitcast i8* %16 to %struct.Lisp_Cons*
  %u10 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %17, i32 0, i32 1
  %cdr11 = bitcast %union.anon* %u10 to i64*
  %18 = load i64, i64* %cdr11, align 8
  store i64 %18, i64* %tem, align 8
  %19 = load i64, i64* %tem, align 8
  %and12 = and i64 %19, 7
  %conv13 = trunc i64 %and12 to i32
  %cmp14 = icmp eq i32 %conv13, 3
  br i1 %cmp14, label %if.then.16, label %if.end.29

if.then.16:                                       ; preds = %if.then.4
  %20 = load i64, i64* %elt.addr, align 8
  %21 = load i64, i64* %tem, align 8
  %sub17 = sub nsw i64 %21, 3
  %22 = inttoptr i64 %sub17 to i8*
  %23 = bitcast i8* %22 to %struct.Lisp_Cons*
  %car18 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %23, i32 0, i32 0
  %24 = load i64, i64* %car18, align 8
  %25 = load i64, i64* %tem, align 8
  %sub19 = sub nsw i64 %25, 3
  %26 = inttoptr i64 %sub19 to i8*
  %27 = bitcast i8* %26 to %struct.Lisp_Cons*
  %u20 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %27, i32 0, i32 1
  %cdr21 = bitcast %union.anon* %u20 to i64*
  %28 = load i64, i64* %cdr21, align 8
  %call22 = call i64 @Fcons(i64 %24, i64 %28)
  call void @XSETCDR(i64 %20, i64 %call22)
  %29 = load i64, i64* %elt.addr, align 8
  %sub23 = sub nsw i64 %29, 3
  %30 = inttoptr i64 %sub23 to i8*
  %31 = bitcast i8* %30 to %struct.Lisp_Cons*
  %u24 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %31, i32 0, i32 1
  %cdr25 = bitcast %union.anon* %u24 to i64*
  %32 = load i64, i64* %cdr25, align 8
  store i64 %32, i64* %elt.addr, align 8
  %33 = load i64, i64* %elt.addr, align 8
  %sub26 = sub nsw i64 %33, 3
  %34 = inttoptr i64 %sub26 to i8*
  %35 = bitcast i8* %34 to %struct.Lisp_Cons*
  %u27 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %35, i32 0, i32 1
  %cdr28 = bitcast %union.anon* %u27 to i64*
  %36 = load i64, i64* %cdr28, align 8
  store i64 %36, i64* %tem, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.16, %if.then.4
  %37 = load i64, i64* %tem, align 8
  %and30 = and i64 %37, 7
  %conv31 = trunc i64 %and30 to i32
  %cmp32 = icmp eq i32 %conv31, 3
  br i1 %cmp32, label %if.then.34, label %if.end.61

if.then.34:                                       ; preds = %if.end.29
  %38 = load i64, i64* %elt.addr, align 8
  %39 = load i64, i64* %tem, align 8
  %sub35 = sub nsw i64 %39, 3
  %40 = inttoptr i64 %sub35 to i8*
  %41 = bitcast i8* %40 to %struct.Lisp_Cons*
  %car36 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %41, i32 0, i32 0
  %42 = load i64, i64* %car36, align 8
  %43 = load i64, i64* %tem, align 8
  %sub37 = sub nsw i64 %43, 3
  %44 = inttoptr i64 %sub37 to i8*
  %45 = bitcast i8* %44 to %struct.Lisp_Cons*
  %u38 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %45, i32 0, i32 1
  %cdr39 = bitcast %union.anon* %u38 to i64*
  %46 = load i64, i64* %cdr39, align 8
  %call40 = call i64 @Fcons(i64 %42, i64 %46)
  call void @XSETCDR(i64 %38, i64 %call40)
  %47 = load i64, i64* %elt.addr, align 8
  %sub41 = sub nsw i64 %47, 3
  %48 = inttoptr i64 %sub41 to i8*
  %49 = bitcast i8* %48 to %struct.Lisp_Cons*
  %u42 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %49, i32 0, i32 1
  %cdr43 = bitcast %union.anon* %u42 to i64*
  %50 = load i64, i64* %cdr43, align 8
  store i64 %50, i64* %elt.addr, align 8
  %51 = load i64, i64* %elt.addr, align 8
  %sub44 = sub nsw i64 %51, 3
  %52 = inttoptr i64 %sub44 to i8*
  %53 = bitcast i8* %52 to %struct.Lisp_Cons*
  %car45 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %53, i32 0, i32 0
  %54 = load i64, i64* %car45, align 8
  store i64 %54, i64* %tem, align 8
  %55 = load i64, i64* %tem, align 8
  %and46 = and i64 %55, 7
  %conv47 = trunc i64 %and46 to i32
  %cmp48 = icmp eq i32 %conv47, 3
  br i1 %cmp48, label %land.lhs.true, label %if.end.57

land.lhs.true:                                    ; preds = %if.then.34
  %56 = load i64, i64* %tem, align 8
  %sub50 = sub nsw i64 %56, 3
  %57 = inttoptr i64 %sub50 to i8*
  %58 = bitcast i8* %57 to %struct.Lisp_Cons*
  %car51 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %58, i32 0, i32 0
  %59 = load i64, i64* %car51, align 8
  %call52 = call i64 @builtin_lisp_symbol(i32 589)
  %cmp53 = icmp eq i64 %59, %call52
  br i1 %cmp53, label %if.then.55, label %if.end.57

if.then.55:                                       ; preds = %land.lhs.true
  %60 = load i64, i64* %elt.addr, align 8
  %61 = load i64, i64* %tem, align 8
  %call56 = call i64 @Fcopy_keymap(i64 %61)
  call void @XSETCAR(i64 %60, i64 %call56)
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.55, %land.lhs.true, %if.then.34
  %62 = load i64, i64* %elt.addr, align 8
  %sub58 = sub nsw i64 %62, 3
  %63 = inttoptr i64 %sub58 to i8*
  %64 = bitcast i8* %63 to %struct.Lisp_Cons*
  %u59 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %64, i32 0, i32 1
  %cdr60 = bitcast %union.anon* %u59 to i64*
  %65 = load i64, i64* %cdr60, align 8
  store i64 %65, i64* %tem, align 8
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.57, %if.end.29
  br label %if.end.121

if.else:                                          ; preds = %if.end
  %66 = load i64, i64* %tem, align 8
  %sub62 = sub nsw i64 %66, 3
  %67 = inttoptr i64 %sub62 to i8*
  %68 = bitcast i8* %67 to %struct.Lisp_Cons*
  %car63 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %68, i32 0, i32 0
  %69 = load i64, i64* %car63, align 8
  %call64 = call zeroext i1 @STRINGP(i64 %69)
  br i1 %call64, label %if.then.65, label %if.else.111

if.then.65:                                       ; preds = %if.else
  %70 = load i64, i64* %tem, align 8
  %sub66 = sub nsw i64 %70, 3
  %71 = inttoptr i64 %sub66 to i8*
  %72 = bitcast i8* %71 to %struct.Lisp_Cons*
  %car67 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %72, i32 0, i32 0
  %73 = load i64, i64* %car67, align 8
  %74 = load i64, i64* %tem, align 8
  %sub68 = sub nsw i64 %74, 3
  %75 = inttoptr i64 %sub68 to i8*
  %76 = bitcast i8* %75 to %struct.Lisp_Cons*
  %u69 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %76, i32 0, i32 1
  %cdr70 = bitcast %union.anon* %u69 to i64*
  %77 = load i64, i64* %cdr70, align 8
  %call71 = call i64 @Fcons(i64 %73, i64 %77)
  store i64 %call71, i64* %elt.addr, align 8
  store i64 %call71, i64* %res, align 8
  %78 = load i64, i64* %elt.addr, align 8
  %sub72 = sub nsw i64 %78, 3
  %79 = inttoptr i64 %sub72 to i8*
  %80 = bitcast i8* %79 to %struct.Lisp_Cons*
  %u73 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %80, i32 0, i32 1
  %cdr74 = bitcast %union.anon* %u73 to i64*
  %81 = load i64, i64* %cdr74, align 8
  store i64 %81, i64* %tem, align 8
  %82 = load i64, i64* %tem, align 8
  %and75 = and i64 %82, 7
  %conv76 = trunc i64 %and75 to i32
  %cmp77 = icmp eq i32 %conv76, 3
  br i1 %cmp77, label %land.lhs.true.79, label %if.end.97

land.lhs.true.79:                                 ; preds = %if.then.65
  %83 = load i64, i64* %tem, align 8
  %sub80 = sub nsw i64 %83, 3
  %84 = inttoptr i64 %sub80 to i8*
  %85 = bitcast i8* %84 to %struct.Lisp_Cons*
  %car81 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %85, i32 0, i32 0
  %86 = load i64, i64* %car81, align 8
  %call82 = call zeroext i1 @STRINGP(i64 %86)
  br i1 %call82, label %if.then.84, label %if.end.97

if.then.84:                                       ; preds = %land.lhs.true.79
  %87 = load i64, i64* %elt.addr, align 8
  %88 = load i64, i64* %tem, align 8
  %sub85 = sub nsw i64 %88, 3
  %89 = inttoptr i64 %sub85 to i8*
  %90 = bitcast i8* %89 to %struct.Lisp_Cons*
  %car86 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %90, i32 0, i32 0
  %91 = load i64, i64* %car86, align 8
  %92 = load i64, i64* %tem, align 8
  %sub87 = sub nsw i64 %92, 3
  %93 = inttoptr i64 %sub87 to i8*
  %94 = bitcast i8* %93 to %struct.Lisp_Cons*
  %u88 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %94, i32 0, i32 1
  %cdr89 = bitcast %union.anon* %u88 to i64*
  %95 = load i64, i64* %cdr89, align 8
  %call90 = call i64 @Fcons(i64 %91, i64 %95)
  call void @XSETCDR(i64 %87, i64 %call90)
  %96 = load i64, i64* %elt.addr, align 8
  %sub91 = sub nsw i64 %96, 3
  %97 = inttoptr i64 %sub91 to i8*
  %98 = bitcast i8* %97 to %struct.Lisp_Cons*
  %u92 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %98, i32 0, i32 1
  %cdr93 = bitcast %union.anon* %u92 to i64*
  %99 = load i64, i64* %cdr93, align 8
  store i64 %99, i64* %elt.addr, align 8
  %100 = load i64, i64* %elt.addr, align 8
  %sub94 = sub nsw i64 %100, 3
  %101 = inttoptr i64 %sub94 to i8*
  %102 = bitcast i8* %101 to %struct.Lisp_Cons*
  %u95 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %102, i32 0, i32 1
  %cdr96 = bitcast %union.anon* %u95 to i64*
  %103 = load i64, i64* %cdr96, align 8
  store i64 %103, i64* %tem, align 8
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.84, %land.lhs.true.79, %if.then.65
  %104 = load i64, i64* %tem, align 8
  %and98 = and i64 %104, 7
  %conv99 = trunc i64 %and98 to i32
  %cmp100 = icmp eq i32 %conv99, 3
  br i1 %cmp100, label %land.lhs.true.102, label %if.end.110

land.lhs.true.102:                                ; preds = %if.end.97
  %105 = load i64, i64* %tem, align 8
  %sub103 = sub nsw i64 %105, 3
  %106 = inttoptr i64 %sub103 to i8*
  %107 = bitcast i8* %106 to %struct.Lisp_Cons*
  %car104 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %107, i32 0, i32 0
  %108 = load i64, i64* %car104, align 8
  %call105 = call i64 @builtin_lisp_symbol(i32 589)
  %cmp106 = icmp eq i64 %108, %call105
  br i1 %cmp106, label %if.then.108, label %if.end.110

if.then.108:                                      ; preds = %land.lhs.true.102
  %109 = load i64, i64* %elt.addr, align 8
  %110 = load i64, i64* %tem, align 8
  %call109 = call i64 @Fcopy_keymap(i64 %110)
  call void @XSETCDR(i64 %109, i64 %call109)
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.108, %land.lhs.true.102, %if.end.97
  br label %if.end.120

if.else.111:                                      ; preds = %if.else
  %111 = load i64, i64* %tem, align 8
  %sub112 = sub nsw i64 %111, 3
  %112 = inttoptr i64 %sub112 to i8*
  %113 = bitcast i8* %112 to %struct.Lisp_Cons*
  %car113 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %113, i32 0, i32 0
  %114 = load i64, i64* %car113, align 8
  %call114 = call i64 @builtin_lisp_symbol(i32 589)
  %cmp115 = icmp eq i64 %114, %call114
  br i1 %cmp115, label %if.then.117, label %if.end.119

if.then.117:                                      ; preds = %if.else.111
  %115 = load i64, i64* %elt.addr, align 8
  %call118 = call i64 @Fcopy_keymap(i64 %115)
  store i64 %call118, i64* %res, align 8
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.117, %if.else.111
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %if.end.110
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %if.end.61
  %116 = load i64, i64* %res, align 8
  store i64 %116, i64* %retval
  br label %return

return:                                           ; preds = %if.end.121, %if.then
  %117 = load i64, i64* %retval
  ret i64 %117
}

declare i64 @AREF(i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fdefine_key(i64 %keymap, i64 %key, i64 %def) #0 {
entry:
  %retval = alloca i64, align 8
  %keymap.addr = alloca i64, align 8
  %key.addr = alloca i64, align 8
  %def.addr = alloca i64, align 8
  %idx = alloca i64, align 8
  %c = alloca i64, align 8
  %cmd = alloca i64, align 8
  %metized = alloca i8, align 1
  %meta_bit = alloca i32, align 4
  %length = alloca i64, align 8
  %tmp = alloca i64, align 8
  %i = alloca i64, align 8
  %defi = alloca i64, align 8
  %tmp72 = alloca i64, align 8
  %trailing_esc = alloca i8*, align 8
  store i64 %keymap, i64* %keymap.addr, align 8
  store i64 %key, i64* %key.addr, align 8
  store i64 %def, i64* %def.addr, align 8
  store i8 0, i8* %metized, align 1
  %0 = load i64, i64* %keymap.addr, align 8
  %call = call i64 @get_keymap(i64 %0, i1 zeroext true, i1 zeroext true)
  store i64 %call, i64* %keymap.addr, align 8
  %1 = load i64, i64* %key.addr, align 8
  %call1 = call i64 @CHECK_VECTOR_OR_STRING(i64 %1)
  store i64 %call1, i64* %length, align 8
  %2 = load i64, i64* %length, align 8
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call2, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %def.addr, align 8
  %and = and i64 %3, 7
  %conv = trunc i64 %and to i32
  %cmp3 = icmp eq i32 %conv, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %if.end
  %4 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 66), align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp6 = icmp eq i64 %4, %call5
  br i1 %cmp6, label %if.end.10, label %if.then.8

if.then.8:                                        ; preds = %land.lhs.true
  %5 = load i64, i64* %def.addr, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 66), align 8
  %call9 = call i64 @Fcons(i64 %5, i64 %6)
  store i64 %call9, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 66), align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %land.lhs.true, %if.end
  %7 = load i64, i64* %key.addr, align 8
  %call11 = call zeroext i1 @VECTORP(i64 %7)
  br i1 %call11, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.10
  %8 = load i64, i64* %key.addr, align 8
  %call13 = call zeroext i1 @STRINGP(i64 %8)
  br i1 %call13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %9 = load i64, i64* %key.addr, align 8
  %call15 = call zeroext i1 @STRING_MULTIBYTE(i64 %9)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %10 = phi i1 [ false, %lor.rhs ], [ %call15, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %if.end.10
  %11 = phi i1 [ true, %if.end.10 ], [ %10, %land.end ]
  %cond = select i1 %11, i32 134217728, i32 128
  store i32 %cond, i32* %meta_bit, align 4
  %12 = load i64, i64* %def.addr, align 8
  %call17 = call zeroext i1 @VECTORP(i64 %12)
  br i1 %call17, label %land.lhs.true.19, label %if.end.49

land.lhs.true.19:                                 ; preds = %lor.end
  %13 = load i64, i64* %def.addr, align 8
  %call20 = call i64 @ASIZE(i64 %13)
  %cmp21 = icmp sgt i64 %call20, 0
  br i1 %cmp21, label %land.lhs.true.23, label %if.end.49

land.lhs.true.23:                                 ; preds = %land.lhs.true.19
  %14 = load i64, i64* %def.addr, align 8
  %call24 = call i64 @AREF(i64 %14, i64 0)
  %and25 = and i64 %call24, 7
  %conv26 = trunc i64 %and25 to i32
  %cmp27 = icmp eq i32 %conv26, 3
  br i1 %cmp27, label %if.then.29, label %if.end.49

if.then.29:                                       ; preds = %land.lhs.true.23
  %15 = load i64, i64* %def.addr, align 8
  %call30 = call i64 @ASIZE(i64 %15)
  %shl = shl i64 %call30, 2
  %add = add i64 %shl, 2
  %call31 = call i64 @builtin_lisp_symbol(i32 0)
  %call32 = call i64 @Fmake_vector(i64 %add, i64 %call31)
  store i64 %call32, i64* %tmp, align 8
  %16 = load i64, i64* %def.addr, align 8
  %call34 = call i64 @ASIZE(i64 %16)
  store i64 %call34, i64* %i, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.48, %if.then.29
  %17 = load i64, i64* %i, align 8
  %dec = add nsw i64 %17, -1
  store i64 %dec, i64* %i, align 8
  %cmp35 = icmp sge i64 %dec, 0
  br i1 %cmp35, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load i64, i64* %def.addr, align 8
  %19 = load i64, i64* %i, align 8
  %call38 = call i64 @AREF(i64 %18, i64 %19)
  store i64 %call38, i64* %defi, align 8
  %20 = load i64, i64* %defi, align 8
  %and39 = and i64 %20, 7
  %conv40 = trunc i64 %and39 to i32
  %cmp41 = icmp eq i32 %conv40, 3
  br i1 %cmp41, label %land.lhs.true.43, label %if.end.48

land.lhs.true.43:                                 ; preds = %while.body
  %21 = load i64, i64* %defi, align 8
  %call44 = call zeroext i1 @lucid_event_type_list_p(i64 %21)
  br i1 %call44, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %land.lhs.true.43
  %22 = load i64, i64* %defi, align 8
  %call47 = call i64 @Fevent_convert_list(i64 %22)
  store i64 %call47, i64* %defi, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.46, %land.lhs.true.43, %while.body
  %23 = load i64, i64* %tmp, align 8
  %24 = load i64, i64* %i, align 8
  %25 = load i64, i64* %defi, align 8
  call void @ASET(i64 %23, i64 %24, i64 %25)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %26 = load i64, i64* %tmp, align 8
  store i64 %26, i64* %def.addr, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %while.end, %land.lhs.true.23, %land.lhs.true.19, %lor.end
  store i64 0, i64* %idx, align 8
  br label %while.body.51

while.body.51:                                    ; preds = %if.end.49, %if.end.183
  %27 = load i64, i64* %key.addr, align 8
  %28 = load i64, i64* %idx, align 8
  %shl52 = shl i64 %28, 2
  %add53 = add i64 %shl52, 2
  %call54 = call i64 @Faref(i64 %27, i64 %add53)
  store i64 %call54, i64* %c, align 8
  %29 = load i64, i64* %c, align 8
  %and55 = and i64 %29, 7
  %conv56 = trunc i64 %and55 to i32
  %cmp57 = icmp eq i32 %conv56, 3
  br i1 %cmp57, label %if.then.59, label %if.end.83

if.then.59:                                       ; preds = %while.body.51
  %30 = load i64, i64* %c, align 8
  %call60 = call zeroext i1 @lucid_event_type_list_p(i64 %30)
  br i1 %call60, label %if.then.61, label %if.else

if.then.61:                                       ; preds = %if.then.59
  %31 = load i64, i64* %c, align 8
  %call62 = call i64 @Fevent_convert_list(i64 %31)
  store i64 %call62, i64* %c, align 8
  br label %if.end.82

if.else:                                          ; preds = %if.then.59
  %32 = load i64, i64* %c, align 8
  %sub = sub nsw i64 %32, 3
  %33 = inttoptr i64 %sub to i8*
  %34 = bitcast i8* %33 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %34, i32 0, i32 0
  %35 = load i64, i64* %car, align 8
  %call63 = call zeroext i1 @NATNUMP(i64 %35)
  br i1 %call63, label %land.lhs.true.65, label %if.end.81

land.lhs.true.65:                                 ; preds = %if.else
  %36 = load i64, i64* %c, align 8
  %sub66 = sub nsw i64 %36, 3
  %37 = inttoptr i64 %sub66 to i8*
  %38 = bitcast i8* %37 to %struct.Lisp_Cons*
  %car67 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %38, i32 0, i32 0
  %39 = load i64, i64* %car67, align 8
  %shr = ashr i64 %39, 2
  %cmp68 = icmp sle i64 %shr, 4194303
  br i1 %cmp68, label %if.then.70, label %if.end.81

if.then.70:                                       ; preds = %land.lhs.true.65
  br label %do.body

do.body:                                          ; preds = %if.then.70
  %40 = load i64, i64* %c, align 8
  %sub73 = sub nsw i64 %40, 3
  %41 = inttoptr i64 %sub73 to i8*
  %42 = bitcast i8* %41 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %42, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %43 = load i64, i64* %cdr, align 8
  store i64 %43, i64* %tmp72, align 8
  %44 = load i64, i64* %tmp72, align 8
  %call74 = call zeroext i1 @NATNUMP(i64 %44)
  br i1 %call74, label %land.lhs.true.76, label %cond.false

land.lhs.true.76:                                 ; preds = %do.body
  %45 = load i64, i64* %tmp72, align 8
  %shr77 = ashr i64 %45, 2
  %cmp78 = icmp sle i64 %shr77, 4194303
  br i1 %cmp78, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.76
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.76, %do.body
  %call80 = call i64 @builtin_lisp_symbol(i32 260)
  %46 = load i64, i64* %tmp72, align 8
  %47 = call i64 @wrong_type_argument(i64 %call80, i64 %46) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %48, %cond.true
  br label %do.end

do.end:                                           ; preds = %cond.end
  br label %if.end.81

if.end.81:                                        ; preds = %do.end, %land.lhs.true.65, %if.else
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.then.61
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %while.body.51
  %49 = load i64, i64* %c, align 8
  %and84 = and i64 %49, 7
  %conv85 = trunc i64 %and84 to i32
  %cmp86 = icmp eq i32 %conv85, 0
  br i1 %cmp86, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %if.end.83
  %50 = load i64, i64* %c, align 8
  call void @silly_event_symbol_error(i64 %50)
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.88, %if.end.83
  %51 = load i64, i64* %c, align 8
  %and90 = and i64 %51, 7
  %conv91 = trunc i64 %and90 to i32
  %and92 = and i32 %conv91, -5
  %cmp93 = icmp eq i32 %and92, 2
  br i1 %cmp93, label %land.lhs.true.95, label %if.else.102

land.lhs.true.95:                                 ; preds = %if.end.89
  %52 = load i64, i64* %c, align 8
  %shr96 = ashr i64 %52, 2
  %53 = load i32, i32* %meta_bit, align 4
  %conv97 = sext i32 %53 to i64
  %and98 = and i64 %shr96, %conv97
  %tobool = icmp ne i64 %and98, 0
  br i1 %tobool, label %land.lhs.true.99, label %if.else.102

land.lhs.true.99:                                 ; preds = %land.lhs.true.95
  %54 = load i8, i8* %metized, align 1
  %tobool100 = trunc i8 %54 to i1
  br i1 %tobool100, label %if.else.102, label %if.then.101

if.then.101:                                      ; preds = %land.lhs.true.99
  %55 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 379), align 8
  store i64 %55, i64* %c, align 8
  store i8 1, i8* %metized, align 1
  br label %if.end.115

if.else.102:                                      ; preds = %land.lhs.true.99, %land.lhs.true.95, %if.end.89
  %56 = load i64, i64* %c, align 8
  %and103 = and i64 %56, 7
  %conv104 = trunc i64 %and103 to i32
  %and105 = and i32 %conv104, -5
  %cmp106 = icmp eq i32 %and105, 2
  br i1 %cmp106, label %if.then.108, label %if.end.114

if.then.108:                                      ; preds = %if.else.102
  %57 = load i64, i64* %c, align 8
  %shr109 = ashr i64 %57, 2
  %58 = load i32, i32* %meta_bit, align 4
  %neg = xor i32 %58, -1
  %conv110 = sext i32 %neg to i64
  %and111 = and i64 %shr109, %conv110
  %shl112 = shl i64 %and111, 2
  %add113 = add i64 %shl112, 2
  store i64 %add113, i64* %c, align 8
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.108, %if.else.102
  store i8 0, i8* %metized, align 1
  %59 = load i64, i64* %idx, align 8
  %inc = add nsw i64 %59, 1
  store i64 %inc, i64* %idx, align 8
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %if.then.101
  %60 = load i64, i64* %c, align 8
  %and116 = and i64 %60, 7
  %conv117 = trunc i64 %and116 to i32
  %and118 = and i32 %conv117, -5
  %cmp119 = icmp eq i32 %and118, 2
  br i1 %cmp119, label %if.end.142, label %land.lhs.true.121

land.lhs.true.121:                                ; preds = %if.end.115
  %61 = load i64, i64* %c, align 8
  %and122 = and i64 %61, 7
  %conv123 = trunc i64 %and122 to i32
  %cmp124 = icmp eq i32 %conv123, 0
  br i1 %cmp124, label %if.end.142, label %land.lhs.true.126

land.lhs.true.126:                                ; preds = %land.lhs.true.121
  %62 = load i64, i64* %c, align 8
  %and127 = and i64 %62, 7
  %conv128 = trunc i64 %and127 to i32
  %cmp129 = icmp eq i32 %conv128, 3
  br i1 %cmp129, label %lor.lhs.false, label %if.then.141

lor.lhs.false:                                    ; preds = %land.lhs.true.126
  %63 = load i64, i64* %c, align 8
  %sub131 = sub nsw i64 %63, 3
  %64 = inttoptr i64 %sub131 to i8*
  %65 = bitcast i8* %64 to %struct.Lisp_Cons*
  %car132 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %65, i32 0, i32 0
  %66 = load i64, i64* %car132, align 8
  %and133 = and i64 %66, 7
  %conv134 = trunc i64 %and133 to i32
  %and135 = and i32 %conv134, -5
  %cmp136 = icmp eq i32 %and135, 2
  br i1 %cmp136, label %land.lhs.true.138, label %if.end.142

land.lhs.true.138:                                ; preds = %lor.lhs.false
  %67 = load i64, i64* %idx, align 8
  %68 = load i64, i64* %length, align 8
  %cmp139 = icmp ne i64 %67, %68
  br i1 %cmp139, label %if.then.141, label %if.end.142

if.then.141:                                      ; preds = %land.lhs.true.138, %land.lhs.true.126
  %69 = load i64, i64* %c, align 8
  call void @message_with_string(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i32 0, i32 0), i64 %69, i1 zeroext true)
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.141, %land.lhs.true.138, %lor.lhs.false, %land.lhs.true.121, %if.end.115
  %70 = load i64, i64* %idx, align 8
  %71 = load i64, i64* %length, align 8
  %cmp143 = icmp eq i64 %70, %71
  br i1 %cmp143, label %if.then.145, label %if.end.147

if.then.145:                                      ; preds = %if.end.142
  %72 = load i64, i64* %keymap.addr, align 8
  %73 = load i64, i64* %c, align 8
  %74 = load i64, i64* %def.addr, align 8
  %call146 = call i64 @store_in_keymap(i64 %72, i64 %73, i64 %74)
  store i64 %call146, i64* %retval
  br label %return

if.end.147:                                       ; preds = %if.end.142
  %75 = load i64, i64* %keymap.addr, align 8
  %76 = load i64, i64* %c, align 8
  %call148 = call i64 @access_keymap(i64 %75, i64 %76, i1 zeroext false, i1 zeroext true, i1 zeroext true)
  store i64 %call148, i64* %cmd, align 8
  %77 = load i64, i64* %cmd, align 8
  %call149 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp150 = icmp eq i64 %77, %call149
  br i1 %cmp150, label %if.then.152, label %if.end.154

if.then.152:                                      ; preds = %if.end.147
  %78 = load i64, i64* %keymap.addr, align 8
  %79 = load i64, i64* %c, align 8
  %call153 = call i64 @define_as_prefix(i64 %78, i64 %79)
  store i64 %call153, i64* %cmd, align 8
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.152, %if.end.147
  %80 = load i64, i64* %cmd, align 8
  %call155 = call i64 @get_keymap(i64 %80, i1 zeroext false, i1 zeroext true)
  store i64 %call155, i64* %keymap.addr, align 8
  %81 = load i64, i64* %keymap.addr, align 8
  %and156 = and i64 %81, 7
  %conv157 = trunc i64 %and156 to i32
  %cmp158 = icmp eq i32 %conv157, 3
  br i1 %cmp158, label %if.end.183, label %if.then.160

if.then.160:                                      ; preds = %if.end.154
  %82 = load i64, i64* %c, align 8
  %83 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 379), align 8
  %cmp162 = icmp eq i64 %82, %83
  br i1 %cmp162, label %land.lhs.true.164, label %cond.false.171

land.lhs.true.164:                                ; preds = %if.then.160
  %84 = load i8, i8* %metized, align 1
  %tobool165 = trunc i8 %84 to i1
  br i1 %tobool165, label %cond.true.167, label %cond.false.171

cond.true.167:                                    ; preds = %land.lhs.true.164
  %85 = load i64, i64* %idx, align 8
  %cmp168 = icmp eq i64 %85, 0
  %cond170 = select i1 %cmp168, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0)
  br label %cond.end.172

cond.false.171:                                   ; preds = %land.lhs.true.164, %if.then.160
  br label %cond.end.172

cond.end.172:                                     ; preds = %cond.false.171, %cond.true.167
  %cond173 = phi i8* [ %cond170, %cond.true.167 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), %cond.false.171 ]
  store i8* %cond173, i8** %trailing_esc, align 8
  %86 = load i64, i64* %key.addr, align 8
  %call174 = call i64 @builtin_lisp_symbol(i32 0)
  %call175 = call i64 @Fkey_description(i64 %86, i64 %call174)
  %call176 = call i8* @SDATA(i64 %call175)
  %87 = load i64, i64* %key.addr, align 8
  %88 = load i64, i64* %idx, align 8
  %shl177 = shl i64 %88, 2
  %add178 = add i64 %shl177, 2
  %call179 = call i64 @Fsubstring(i64 %87, i64 2, i64 %add178)
  %call180 = call i64 @builtin_lisp_symbol(i32 0)
  %call181 = call i64 @Fkey_description(i64 %call179, i64 %call180)
  %call182 = call i8* @SDATA(i64 %call181)
  %89 = load i8*, i8** %trailing_esc, align 8
  call void (i8*, ...) @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i32 0, i32 0), i8* %call176, i8* %call182, i8* %89) #6
  unreachable

if.end.183:                                       ; preds = %if.end.154
  br label %while.body.51

return:                                           ; preds = %if.then.145, %if.then
  %90 = load i64, i64* %retval
  ret i64 %90
}

declare i64 @CHECK_VECTOR_OR_STRING(i64) #1

declare zeroext i1 @STRING_MULTIBYTE(i64) #1

declare i64 @Fmake_vector(i64, i64) #1

declare zeroext i1 @lucid_event_type_list_p(i64) #1

declare i64 @Fevent_convert_list(i64) #1

declare i64 @Faref(i64, i64) #1

declare zeroext i1 @NATNUMP(i64) #1

; Function Attrs: nounwind uwtable
define internal void @silly_event_symbol_error(i64 %c) #0 {
entry:
  %c.addr = alloca i64, align 8
  %parsed = alloca i64, align 8
  %base = alloca i64, align 8
  %name = alloca i64, align 8
  %assoc = alloca i64, align 8
  %modifiers = alloca i32, align 4
  %new_mods = alloca [19 x i8], align 16
  %p = alloca i8*, align 8
  %keystring = alloca i64, align 8
  %new_mods_string = alloca i64, align 8
  %.compoundliteral = alloca %union.Aligned_String, align 8
  store i64 %c, i64* %c.addr, align 8
  %0 = load i64, i64* %c.addr, align 8
  %call = call i64 @parse_modifiers(i64 %0)
  store i64 %call, i64* %parsed, align 8
  %1 = load i64, i64* %parsed, align 8
  %sub = sub nsw i64 %1, 3
  %2 = inttoptr i64 %sub to i8*
  %3 = bitcast i8* %2 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %3, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %4 = load i64, i64* %cdr, align 8
  %sub1 = sub nsw i64 %4, 3
  %5 = inttoptr i64 %sub1 to i8*
  %6 = bitcast i8* %5 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %6, i32 0, i32 0
  %7 = load i64, i64* %car, align 8
  %shr = ashr i64 %7, 2
  %conv = trunc i64 %shr to i32
  store i32 %conv, i32* %modifiers, align 4
  %8 = load i64, i64* %parsed, align 8
  %sub2 = sub nsw i64 %8, 3
  %9 = inttoptr i64 %sub2 to i8*
  %10 = bitcast i8* %9 to %struct.Lisp_Cons*
  %car3 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %10, i32 0, i32 0
  %11 = load i64, i64* %car3, align 8
  store i64 %11, i64* %base, align 8
  %12 = load i64, i64* %base, align 8
  %call4 = call i64 @Fsymbol_name(i64 %12)
  store i64 %call4, i64* %name, align 8
  %13 = load i64, i64* %name, align 8
  %14 = load i64, i64* @exclude_keys, align 8
  %call5 = call i64 @Fassoc(i64 %13, i64 %14)
  store i64 %call5, i64* %assoc, align 8
  %15 = load i64, i64* %assoc, align 8
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %15, %call6
  br i1 %cmp, label %if.end.61, label %if.then

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [19 x i8], [19 x i8]* %new_mods, i32 0, i32 0
  store i8* %arraydecay, i8** %p, align 8
  %16 = load i32, i32* %modifiers, align 4
  %and = and i32 %16, 4194304
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %17 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 92, i8* %17, align 1
  %18 = load i8*, i8** %p, align 8
  %incdec.ptr9 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr9, i8** %p, align 8
  store i8 65, i8* %18, align 1
  %19 = load i8*, i8** %p, align 8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr10, i8** %p, align 8
  store i8 45, i8* %19, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  %20 = load i32, i32* %modifiers, align 4
  %and11 = and i32 %20, 67108864
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %if.end
  %21 = load i8*, i8** %p, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr14, i8** %p, align 8
  store i8 92, i8* %21, align 1
  %22 = load i8*, i8** %p, align 8
  %incdec.ptr15 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr15, i8** %p, align 8
  store i8 67, i8* %22, align 1
  %23 = load i8*, i8** %p, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr16, i8** %p, align 8
  store i8 45, i8* %23, align 1
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.13, %if.end
  %24 = load i32, i32* %modifiers, align 4
  %and18 = and i32 %24, 16777216
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.24

if.then.20:                                       ; preds = %if.end.17
  %25 = load i8*, i8** %p, align 8
  %incdec.ptr21 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr21, i8** %p, align 8
  store i8 92, i8* %25, align 1
  %26 = load i8*, i8** %p, align 8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr22, i8** %p, align 8
  store i8 72, i8* %26, align 1
  %27 = load i8*, i8** %p, align 8
  %incdec.ptr23 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr23, i8** %p, align 8
  store i8 45, i8* %27, align 1
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.20, %if.end.17
  %28 = load i32, i32* %modifiers, align 4
  %and25 = and i32 %28, 134217728
  %tobool26 = icmp ne i32 %and25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.31

if.then.27:                                       ; preds = %if.end.24
  %29 = load i8*, i8** %p, align 8
  %incdec.ptr28 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr28, i8** %p, align 8
  store i8 92, i8* %29, align 1
  %30 = load i8*, i8** %p, align 8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr29, i8** %p, align 8
  store i8 77, i8* %30, align 1
  %31 = load i8*, i8** %p, align 8
  %incdec.ptr30 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr30, i8** %p, align 8
  store i8 45, i8* %31, align 1
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.27, %if.end.24
  %32 = load i32, i32* %modifiers, align 4
  %and32 = and i32 %32, 33554432
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %if.then.34, label %if.end.38

if.then.34:                                       ; preds = %if.end.31
  %33 = load i8*, i8** %p, align 8
  %incdec.ptr35 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr35, i8** %p, align 8
  store i8 92, i8* %33, align 1
  %34 = load i8*, i8** %p, align 8
  %incdec.ptr36 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr36, i8** %p, align 8
  store i8 83, i8* %34, align 1
  %35 = load i8*, i8** %p, align 8
  %incdec.ptr37 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr37, i8** %p, align 8
  store i8 45, i8* %35, align 1
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.34, %if.end.31
  %36 = load i32, i32* %modifiers, align 4
  %and39 = and i32 %36, 8388608
  %tobool40 = icmp ne i32 %and39, 0
  br i1 %tobool40, label %if.then.41, label %if.end.45

if.then.41:                                       ; preds = %if.end.38
  %37 = load i8*, i8** %p, align 8
  %incdec.ptr42 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr42, i8** %p, align 8
  store i8 92, i8* %37, align 1
  %38 = load i8*, i8** %p, align 8
  %incdec.ptr43 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr43, i8** %p, align 8
  store i8 115, i8* %38, align 1
  %39 = load i8*, i8** %p, align 8
  %incdec.ptr44 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr44, i8** %p, align 8
  store i8 45, i8* %39, align 1
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.41, %if.end.38
  %40 = load i8*, i8** %p, align 8
  store i8 0, i8* %40, align 1
  %41 = load i64, i64* %c.addr, align 8
  %call46 = call i64 @reorder_modifiers(i64 %41)
  store i64 %call46, i64* %c.addr, align 8
  %s = bitcast %union.Aligned_String* %.compoundliteral to %struct.Lisp_String*
  %size = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 0
  %arraydecay47 = getelementptr inbounds [19 x i8], [19 x i8]* %new_mods, i32 0, i32 0
  %call48 = call i64 @strlen(i8* %arraydecay47) #7
  store i64 %call48, i64* %size, align 8
  %size_byte = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 1
  store i64 -1, i64* %size_byte, align 8
  %intervals = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 2
  store %struct.interval* null, %struct.interval** %intervals, align 8
  %data = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 3
  %arraydecay49 = getelementptr inbounds [19 x i8], [19 x i8]* %new_mods, i32 0, i32 0
  store i8* %arraydecay49, i8** %data, align 8
  %s50 = bitcast %union.Aligned_String* %.compoundliteral to %struct.Lisp_String*
  %42 = bitcast %struct.Lisp_String* %s50 to i8*
  %call51 = call i64 @make_lisp_ptr(i8* %42, i32 4)
  store i64 %call51, i64* %new_mods_string, align 8
  %43 = load i64, i64* %new_mods_string, align 8
  %44 = load i64, i64* %assoc, align 8
  %sub52 = sub nsw i64 %44, 3
  %45 = inttoptr i64 %sub52 to i8*
  %46 = bitcast i8* %45 to %struct.Lisp_Cons*
  %u53 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %46, i32 0, i32 1
  %cdr54 = bitcast %union.anon* %u53 to i64*
  %47 = load i64, i64* %cdr54, align 8
  %call55 = call i64 @concat2(i64 %43, i64 %47)
  store i64 %call55, i64* %keystring, align 8
  %48 = load i64, i64* %c.addr, align 8
  %call56 = call i64 @SYMBOL_NAME(i64 %48)
  %call57 = call i8* @SDATA(i64 %call56)
  %49 = load i64, i64* %keystring, align 8
  %call58 = call i8* @SDATA(i64 %49)
  %50 = load i64, i64* %c.addr, align 8
  %call59 = call i64 @SYMBOL_NAME(i64 %50)
  %call60 = call i8* @SDATA(i64 %call59)
  call void (i8*, ...) @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.61, i32 0, i32 0), i8* %call57, i8* %call58, i8* %call60) #6
  unreachable

if.end.61:                                        ; preds = %entry
  ret void
}

declare void @message_with_string(i8*, i64, i1 zeroext) #1

; Function Attrs: nounwind uwtable
define internal i64 @define_as_prefix(i64 %keymap, i64 %c) #0 {
entry:
  %keymap.addr = alloca i64, align 8
  %c.addr = alloca i64, align 8
  %cmd = alloca i64, align 8
  store i64 %keymap, i64* %keymap.addr, align 8
  store i64 %c, i64* %c.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %call1 = call i64 @Fmake_sparse_keymap(i64 %call)
  store i64 %call1, i64* %cmd, align 8
  %0 = load i64, i64* %keymap.addr, align 8
  %1 = load i64, i64* %c.addr, align 8
  %2 = load i64, i64* %cmd, align 8
  %call2 = call i64 @store_in_keymap(i64 %0, i64 %1, i64 %2)
  %3 = load i64, i64* %cmd, align 8
  ret i64 %3
}

declare i8* @SDATA(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fkey_description(i64 %keys, i64 %prefix) #0 {
entry:
  %keys.addr = alloca i64, align 8
  %prefix.addr = alloca i64, align 8
  %len = alloca i64, align 8
  %i = alloca i64, align 8
  %i_byte = alloca i64, align 8
  %args = alloca i64*, align 8
  %size = alloca i64, align 8
  %list = alloca i64, align 8
  %sep = alloca i64, align 8
  %key = alloca i64, align 8
  %result = alloca i64, align 8
  %add_meta = alloca i8, align 1
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  %size4 = alloca i64, align 8
  %alloca_nbytes = alloca i64, align 8
  %arg_ = alloca i64, align 8
  %c = alloca i32, align 4
  %chp = alloca i8*, align 8
  %chlen = alloca i32, align 4
  store i64 %keys, i64* %keys.addr, align 8
  store i64 %prefix, i64* %prefix.addr, align 8
  store i64 0, i64* %len, align 8
  %0 = load i64, i64* %keys.addr, align 8
  %call = call i64 @Flength(i64 %0)
  %shr = ashr i64 %call, 2
  store i64 %shr, i64* %size, align 8
  %call1 = call i64 @build_string(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  store i64 %call1, i64* %sep, align 8
  store i8 0, i8* %add_meta, align 1
  store i64 16384, i64* %sa_avail, align 8
  %call2 = call i64 @SPECPDL_INDEX()
  store i64 %call2, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  %1 = load i64, i64* %prefix.addr, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %1, %call3
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %prefix.addr, align 8
  %call4 = call i64 @Flength(i64 %2)
  %shr5 = ashr i64 %call4, 2
  %3 = load i64, i64* %size, align 8
  %add = add nsw i64 %3, %shr5
  store i64 %add, i64* %size, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br i1 false, label %cond.true, label %cond.false.478

cond.true:                                        ; preds = %if.end
  br i1 false, label %cond.true.6, label %cond.false.263

cond.true.6:                                      ; preds = %cond.true
  %4 = load i64, i64* %size, align 8
  %conv = trunc i64 %4 to i8
  %conv7 = sext i8 %conv to i32
  %add8 = add nsw i32 0, %conv7
  %mul = mul nsw i32 0, %add8
  %sub = sub nsw i32 %mul, 1
  %cmp9 = icmp slt i32 %sub, 0
  br i1 %cmp9, label %cond.true.11, label %cond.false

cond.true.11:                                     ; preds = %cond.true.6
  %5 = load i64, i64* %size, align 8
  %conv12 = trunc i64 %5 to i8
  %conv13 = sext i8 %conv12 to i32
  %add14 = add nsw i32 0, %conv13
  %mul15 = mul nsw i32 0, %add14
  %add16 = add nsw i32 %mul15, 0
  %neg = xor i32 %add16, -1
  %cmp17 = icmp eq i32 %neg, -1
  %conv18 = zext i1 %cmp17 to i32
  %sub19 = sub nsw i32 0, %conv18
  %6 = load i64, i64* %size, align 8
  %conv20 = trunc i64 %6 to i8
  %conv21 = sext i8 %conv20 to i32
  %add22 = add nsw i32 0, %conv21
  %mul23 = mul nsw i32 0, %add22
  %add24 = add nsw i32 %mul23, 1
  %shl = shl i32 %add24, 30
  %sub25 = sub nsw i32 %shl, 1
  %mul26 = mul nsw i32 %sub25, 2
  %add27 = add nsw i32 %mul26, 1
  %sub28 = sub nsw i32 %sub19, %add27
  br label %cond.end

cond.false:                                       ; preds = %cond.true.6
  %7 = load i64, i64* %size, align 8
  %conv29 = trunc i64 %7 to i8
  %conv30 = sext i8 %conv29 to i32
  %add31 = add nsw i32 0, %conv30
  %mul32 = mul nsw i32 0, %add31
  %add33 = add nsw i32 %mul32, 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.11
  %cond = phi i32 [ %sub28, %cond.true.11 ], [ %add33, %cond.false ]
  %cmp34 = icmp eq i32 %cond, 0
  br i1 %cmp34, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %cond.end
  %8 = load i64, i64* %size, align 8
  %conv36 = trunc i64 %8 to i8
  %conv37 = sext i8 %conv36 to i32
  %cmp38 = icmp slt i32 %conv37, 0
  br i1 %cmp38, label %cond.true.217, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %cond.end
  br i1 false, label %cond.true.40, label %cond.false.118

cond.true.40:                                     ; preds = %lor.lhs.false
  %9 = load i64, i64* %size, align 8
  %conv41 = trunc i64 %9 to i8
  %conv42 = sext i8 %conv41 to i32
  %cmp43 = icmp slt i32 %conv42, 0
  br i1 %cmp43, label %cond.true.45, label %cond.false.75

cond.true.45:                                     ; preds = %cond.true.40
  %10 = load i64, i64* %size, align 8
  %conv46 = trunc i64 %10 to i8
  %conv47 = sext i8 %conv46 to i32
  %11 = load i64, i64* %size, align 8
  %conv48 = trunc i64 %11 to i8
  %conv49 = sext i8 %conv48 to i32
  %add50 = add nsw i32 0, %conv49
  %mul51 = mul nsw i32 0, %add50
  %sub52 = sub nsw i32 %mul51, 1
  %cmp53 = icmp slt i32 %sub52, 0
  br i1 %cmp53, label %cond.true.55, label %cond.false.65

cond.true.55:                                     ; preds = %cond.true.45
  %12 = load i64, i64* %size, align 8
  %conv56 = trunc i64 %12 to i8
  %conv57 = sext i8 %conv56 to i32
  %add58 = add nsw i32 0, %conv57
  %mul59 = mul nsw i32 0, %add58
  %add60 = add nsw i32 %mul59, 1
  %shl61 = shl i32 %add60, 30
  %sub62 = sub nsw i32 %shl61, 1
  %mul63 = mul nsw i32 %sub62, 2
  %add64 = add nsw i32 %mul63, 1
  br label %cond.end.71

cond.false.65:                                    ; preds = %cond.true.45
  %13 = load i64, i64* %size, align 8
  %conv66 = trunc i64 %13 to i8
  %conv67 = sext i8 %conv66 to i32
  %add68 = add nsw i32 0, %conv67
  %mul69 = mul nsw i32 0, %add68
  %sub70 = sub nsw i32 %mul69, 1
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.false.65, %cond.true.55
  %cond72 = phi i32 [ %add64, %cond.true.55 ], [ %sub70, %cond.false.65 ]
  %div = sdiv i32 %cond72, 4
  %cmp73 = icmp slt i32 %conv47, %div
  br i1 %cmp73, label %cond.true.217, label %lor.lhs.false.197

cond.false.75:                                    ; preds = %cond.true.40
  br i1 false, label %cond.true.76, label %cond.false.77

cond.true.76:                                     ; preds = %cond.false.75
  br i1 false, label %cond.true.217, label %lor.lhs.false.197

cond.false.77:                                    ; preds = %cond.false.75
  %14 = load i64, i64* %size, align 8
  %conv78 = trunc i64 %14 to i8
  %conv79 = sext i8 %conv78 to i32
  %add80 = add nsw i32 0, %conv79
  %mul81 = mul nsw i32 0, %add80
  %sub82 = sub nsw i32 %mul81, 1
  %cmp83 = icmp slt i32 %sub82, 0
  br i1 %cmp83, label %cond.true.85, label %cond.false.105

cond.true.85:                                     ; preds = %cond.false.77
  %15 = load i64, i64* %size, align 8
  %conv86 = trunc i64 %15 to i8
  %conv87 = sext i8 %conv86 to i32
  %add88 = add nsw i32 0, %conv87
  %mul89 = mul nsw i32 0, %add88
  %add90 = add nsw i32 %mul89, 0
  %neg91 = xor i32 %add90, -1
  %cmp92 = icmp eq i32 %neg91, -1
  %conv93 = zext i1 %cmp92 to i32
  %sub94 = sub nsw i32 0, %conv93
  %16 = load i64, i64* %size, align 8
  %conv95 = trunc i64 %16 to i8
  %conv96 = sext i8 %conv95 to i32
  %add97 = add nsw i32 0, %conv96
  %mul98 = mul nsw i32 0, %add97
  %add99 = add nsw i32 %mul98, 1
  %shl100 = shl i32 %add99, 30
  %sub101 = sub nsw i32 %shl100, 1
  %mul102 = mul nsw i32 %sub101, 2
  %add103 = add nsw i32 %mul102, 1
  %sub104 = sub nsw i32 %sub94, %add103
  br label %cond.end.111

cond.false.105:                                   ; preds = %cond.false.77
  %17 = load i64, i64* %size, align 8
  %conv106 = trunc i64 %17 to i8
  %conv107 = sext i8 %conv106 to i32
  %add108 = add nsw i32 0, %conv107
  %mul109 = mul nsw i32 0, %add108
  %add110 = add nsw i32 %mul109, 0
  br label %cond.end.111

cond.end.111:                                     ; preds = %cond.false.105, %cond.true.85
  %cond112 = phi i32 [ %sub104, %cond.true.85 ], [ %add110, %cond.false.105 ]
  %div113 = sdiv i32 %cond112, 4
  %18 = load i64, i64* %size, align 8
  %conv114 = trunc i64 %18 to i8
  %conv115 = sext i8 %conv114 to i32
  %cmp116 = icmp slt i32 %div113, %conv115
  br i1 %cmp116, label %cond.true.217, label %lor.lhs.false.197

cond.false.118:                                   ; preds = %lor.lhs.false
  br i1 false, label %cond.true.119, label %cond.false.120

cond.true.119:                                    ; preds = %cond.false.118
  br i1 false, label %cond.true.217, label %lor.lhs.false.197

cond.false.120:                                   ; preds = %cond.false.118
  %19 = load i64, i64* %size, align 8
  %conv121 = trunc i64 %19 to i8
  %conv122 = sext i8 %conv121 to i32
  %cmp123 = icmp slt i32 %conv122, 0
  br i1 %cmp123, label %cond.true.125, label %cond.false.166

cond.true.125:                                    ; preds = %cond.false.120
  %20 = load i64, i64* %size, align 8
  %conv126 = trunc i64 %20 to i8
  %conv127 = sext i8 %conv126 to i32
  %21 = load i64, i64* %size, align 8
  %conv128 = trunc i64 %21 to i8
  %conv129 = sext i8 %conv128 to i32
  %add130 = add nsw i32 0, %conv129
  %mul131 = mul nsw i32 0, %add130
  %sub132 = sub nsw i32 %mul131, 1
  %cmp133 = icmp slt i32 %sub132, 0
  br i1 %cmp133, label %cond.true.135, label %cond.false.155

cond.true.135:                                    ; preds = %cond.true.125
  %22 = load i64, i64* %size, align 8
  %conv136 = trunc i64 %22 to i8
  %conv137 = sext i8 %conv136 to i32
  %add138 = add nsw i32 0, %conv137
  %mul139 = mul nsw i32 0, %add138
  %add140 = add nsw i32 %mul139, 0
  %neg141 = xor i32 %add140, -1
  %cmp142 = icmp eq i32 %neg141, -1
  %conv143 = zext i1 %cmp142 to i32
  %sub144 = sub nsw i32 0, %conv143
  %23 = load i64, i64* %size, align 8
  %conv145 = trunc i64 %23 to i8
  %conv146 = sext i8 %conv145 to i32
  %add147 = add nsw i32 0, %conv146
  %mul148 = mul nsw i32 0, %add147
  %add149 = add nsw i32 %mul148, 1
  %shl150 = shl i32 %add149, 30
  %sub151 = sub nsw i32 %shl150, 1
  %mul152 = mul nsw i32 %sub151, 2
  %add153 = add nsw i32 %mul152, 1
  %sub154 = sub nsw i32 %sub144, %add153
  br label %cond.end.161

cond.false.155:                                   ; preds = %cond.true.125
  %24 = load i64, i64* %size, align 8
  %conv156 = trunc i64 %24 to i8
  %conv157 = sext i8 %conv156 to i32
  %add158 = add nsw i32 0, %conv157
  %mul159 = mul nsw i32 0, %add158
  %add160 = add nsw i32 %mul159, 0
  br label %cond.end.161

cond.end.161:                                     ; preds = %cond.false.155, %cond.true.135
  %cond162 = phi i32 [ %sub154, %cond.true.135 ], [ %add160, %cond.false.155 ]
  %div163 = sdiv i32 %cond162, 4
  %cmp164 = icmp slt i32 %conv127, %div163
  br i1 %cmp164, label %cond.true.217, label %lor.lhs.false.197

cond.false.166:                                   ; preds = %cond.false.120
  %25 = load i64, i64* %size, align 8
  %conv167 = trunc i64 %25 to i8
  %conv168 = sext i8 %conv167 to i32
  %add169 = add nsw i32 0, %conv168
  %mul170 = mul nsw i32 0, %add169
  %sub171 = sub nsw i32 %mul170, 1
  %cmp172 = icmp slt i32 %sub171, 0
  br i1 %cmp172, label %cond.true.174, label %cond.false.184

cond.true.174:                                    ; preds = %cond.false.166
  %26 = load i64, i64* %size, align 8
  %conv175 = trunc i64 %26 to i8
  %conv176 = sext i8 %conv175 to i32
  %add177 = add nsw i32 0, %conv176
  %mul178 = mul nsw i32 0, %add177
  %add179 = add nsw i32 %mul178, 1
  %shl180 = shl i32 %add179, 30
  %sub181 = sub nsw i32 %shl180, 1
  %mul182 = mul nsw i32 %sub181, 2
  %add183 = add nsw i32 %mul182, 1
  br label %cond.end.190

cond.false.184:                                   ; preds = %cond.false.166
  %27 = load i64, i64* %size, align 8
  %conv185 = trunc i64 %27 to i8
  %conv186 = sext i8 %conv185 to i32
  %add187 = add nsw i32 0, %conv186
  %mul188 = mul nsw i32 0, %add187
  %sub189 = sub nsw i32 %mul188, 1
  br label %cond.end.190

cond.end.190:                                     ; preds = %cond.false.184, %cond.true.174
  %cond191 = phi i32 [ %add183, %cond.true.174 ], [ %sub189, %cond.false.184 ]
  %div192 = sdiv i32 %cond191, 4
  %28 = load i64, i64* %size, align 8
  %conv193 = trunc i64 %28 to i8
  %conv194 = sext i8 %conv193 to i32
  %cmp195 = icmp slt i32 %div192, %conv194
  br i1 %cmp195, label %cond.true.217, label %lor.lhs.false.197

lor.lhs.false.197:                                ; preds = %cond.end.190, %cond.end.161, %cond.true.119, %cond.end.111, %cond.true.76, %cond.end.71
  %29 = load i64, i64* %size, align 8
  %conv198 = trunc i64 %29 to i8
  %conv199 = sext i8 %conv198 to i32
  %mul200 = mul nsw i32 %conv199, 4
  %mul201 = mul nsw i32 0, %mul200
  %sub202 = sub nsw i32 %mul201, 1
  %cmp203 = icmp slt i32 %sub202, 0
  br i1 %cmp203, label %land.lhs.true.205, label %lor.lhs.false.211

land.lhs.true.205:                                ; preds = %lor.lhs.false.197
  %30 = load i64, i64* %size, align 8
  %conv206 = trunc i64 %30 to i8
  %conv207 = sext i8 %conv206 to i32
  %mul208 = mul nsw i32 %conv207, 4
  %cmp209 = icmp slt i32 %mul208, -128
  br i1 %cmp209, label %cond.true.217, label %lor.lhs.false.211

lor.lhs.false.211:                                ; preds = %land.lhs.true.205, %lor.lhs.false.197
  %31 = load i64, i64* %size, align 8
  %conv212 = trunc i64 %31 to i8
  %conv213 = sext i8 %conv212 to i32
  %mul214 = mul nsw i32 %conv213, 4
  %cmp215 = icmp slt i32 127, %mul214
  br i1 %cmp215, label %cond.true.217, label %cond.false.240

cond.true.217:                                    ; preds = %lor.lhs.false.211, %land.lhs.true.205, %cond.end.190, %cond.end.161, %cond.true.119, %cond.end.111, %cond.true.76, %cond.end.71, %land.lhs.true
  %32 = load i64, i64* %size, align 8
  %conv218 = trunc i64 %32 to i8
  %conv219 = zext i8 %conv218 to i32
  %mul220 = mul nsw i32 %conv219, 4
  %cmp221 = icmp sle i32 %mul220, 127
  br i1 %cmp221, label %cond.true.223, label %cond.false.229

cond.true.223:                                    ; preds = %cond.true.217
  %33 = load i64, i64* %size, align 8
  %conv224 = trunc i64 %33 to i8
  %conv225 = zext i8 %conv224 to i32
  %mul226 = mul nsw i32 %conv225, 4
  %conv227 = trunc i32 %mul226 to i8
  %conv228 = sext i8 %conv227 to i32
  br label %cond.end.237

cond.false.229:                                   ; preds = %cond.true.217
  %34 = load i64, i64* %size, align 8
  %conv230 = trunc i64 %34 to i8
  %conv231 = zext i8 %conv230 to i32
  %mul232 = mul nsw i32 %conv231, 4
  %sub233 = sub nsw i32 %mul232, -128
  %conv234 = trunc i32 %sub233 to i8
  %conv235 = sext i8 %conv234 to i32
  %add236 = add nsw i32 %conv235, -128
  br label %cond.end.237

cond.end.237:                                     ; preds = %cond.false.229, %cond.true.223
  %cond238 = phi i32 [ %conv228, %cond.true.223 ], [ %add236, %cond.false.229 ]
  %conv239 = sext i32 %cond238 to i64
  store i64 %conv239, i64* %size4, align 8
  br i1 true, label %if.then.2167, label %if.end.2168

cond.false.240:                                   ; preds = %lor.lhs.false.211
  %35 = load i64, i64* %size, align 8
  %conv241 = trunc i64 %35 to i8
  %conv242 = zext i8 %conv241 to i32
  %mul243 = mul nsw i32 %conv242, 4
  %cmp244 = icmp sle i32 %mul243, 127
  br i1 %cmp244, label %cond.true.246, label %cond.false.252

cond.true.246:                                    ; preds = %cond.false.240
  %36 = load i64, i64* %size, align 8
  %conv247 = trunc i64 %36 to i8
  %conv248 = zext i8 %conv247 to i32
  %mul249 = mul nsw i32 %conv248, 4
  %conv250 = trunc i32 %mul249 to i8
  %conv251 = sext i8 %conv250 to i32
  br label %cond.end.260

cond.false.252:                                   ; preds = %cond.false.240
  %37 = load i64, i64* %size, align 8
  %conv253 = trunc i64 %37 to i8
  %conv254 = zext i8 %conv253 to i32
  %mul255 = mul nsw i32 %conv254, 4
  %sub256 = sub nsw i32 %mul255, -128
  %conv257 = trunc i32 %sub256 to i8
  %conv258 = sext i8 %conv257 to i32
  %add259 = add nsw i32 %conv258, -128
  br label %cond.end.260

cond.end.260:                                     ; preds = %cond.false.252, %cond.true.246
  %cond261 = phi i32 [ %conv251, %cond.true.246 ], [ %add259, %cond.false.252 ]
  %conv262 = sext i32 %cond261 to i64
  store i64 %conv262, i64* %size4, align 8
  br i1 false, label %if.then.2167, label %if.end.2168

cond.false.263:                                   ; preds = %cond.true
  %38 = load i64, i64* %size, align 8
  %add264 = add nsw i64 0, %38
  %mul265 = mul nsw i64 0, %add264
  %sub266 = sub nsw i64 %mul265, 1
  %cmp267 = icmp slt i64 %sub266, 0
  br i1 %cmp267, label %cond.true.269, label %cond.false.286

cond.true.269:                                    ; preds = %cond.false.263
  %39 = load i64, i64* %size, align 8
  %add270 = add nsw i64 0, %39
  %mul271 = mul nsw i64 0, %add270
  %add272 = add nsw i64 %mul271, 0
  %neg273 = xor i64 %add272, -1
  %cmp274 = icmp eq i64 %neg273, -1
  %conv275 = zext i1 %cmp274 to i32
  %sub276 = sub nsw i32 0, %conv275
  %conv277 = sext i32 %sub276 to i64
  %40 = load i64, i64* %size, align 8
  %add278 = add nsw i64 0, %40
  %mul279 = mul nsw i64 0, %add278
  %add280 = add nsw i64 %mul279, 1
  %shl281 = shl i64 %add280, 62
  %sub282 = sub nsw i64 %shl281, 1
  %mul283 = mul nsw i64 %sub282, 2
  %add284 = add nsw i64 %mul283, 1
  %sub285 = sub nsw i64 %conv277, %add284
  br label %cond.end.290

cond.false.286:                                   ; preds = %cond.false.263
  %41 = load i64, i64* %size, align 8
  %add287 = add nsw i64 0, %41
  %mul288 = mul nsw i64 0, %add287
  %add289 = add nsw i64 %mul288, 0
  br label %cond.end.290

cond.end.290:                                     ; preds = %cond.false.286, %cond.true.269
  %cond291 = phi i64 [ %sub285, %cond.true.269 ], [ %add289, %cond.false.286 ]
  %cmp292 = icmp eq i64 %cond291, 0
  br i1 %cmp292, label %land.lhs.true.294, label %lor.lhs.false.297

land.lhs.true.294:                                ; preds = %cond.end.290
  %42 = load i64, i64* %size, align 8
  %cmp295 = icmp slt i64 %42, 0
  br i1 %cmp295, label %cond.true.432, label %lor.lhs.false.297

lor.lhs.false.297:                                ; preds = %land.lhs.true.294, %cond.end.290
  br i1 false, label %cond.true.298, label %cond.false.358

cond.true.298:                                    ; preds = %lor.lhs.false.297
  %43 = load i64, i64* %size, align 8
  %cmp299 = icmp slt i64 %43, 0
  br i1 %cmp299, label %cond.true.301, label %cond.false.324

cond.true.301:                                    ; preds = %cond.true.298
  %44 = load i64, i64* %size, align 8
  %45 = load i64, i64* %size, align 8
  %add302 = add nsw i64 0, %45
  %mul303 = mul nsw i64 0, %add302
  %sub304 = sub nsw i64 %mul303, 1
  %cmp305 = icmp slt i64 %sub304, 0
  br i1 %cmp305, label %cond.true.307, label %cond.false.315

cond.true.307:                                    ; preds = %cond.true.301
  %46 = load i64, i64* %size, align 8
  %add308 = add nsw i64 0, %46
  %mul309 = mul nsw i64 0, %add308
  %add310 = add nsw i64 %mul309, 1
  %shl311 = shl i64 %add310, 62
  %sub312 = sub nsw i64 %shl311, 1
  %mul313 = mul nsw i64 %sub312, 2
  %add314 = add nsw i64 %mul313, 1
  br label %cond.end.319

cond.false.315:                                   ; preds = %cond.true.301
  %47 = load i64, i64* %size, align 8
  %add316 = add nsw i64 0, %47
  %mul317 = mul nsw i64 0, %add316
  %sub318 = sub nsw i64 %mul317, 1
  br label %cond.end.319

cond.end.319:                                     ; preds = %cond.false.315, %cond.true.307
  %cond320 = phi i64 [ %add314, %cond.true.307 ], [ %sub318, %cond.false.315 ]
  %div321 = sdiv i64 %cond320, 4
  %cmp322 = icmp slt i64 %44, %div321
  br i1 %cmp322, label %cond.true.432, label %lor.lhs.false.418

cond.false.324:                                   ; preds = %cond.true.298
  br i1 false, label %cond.true.325, label %cond.false.326

cond.true.325:                                    ; preds = %cond.false.324
  br i1 false, label %cond.true.432, label %lor.lhs.false.418

cond.false.326:                                   ; preds = %cond.false.324
  %48 = load i64, i64* %size, align 8
  %add327 = add nsw i64 0, %48
  %mul328 = mul nsw i64 0, %add327
  %sub329 = sub nsw i64 %mul328, 1
  %cmp330 = icmp slt i64 %sub329, 0
  br i1 %cmp330, label %cond.true.332, label %cond.false.349

cond.true.332:                                    ; preds = %cond.false.326
  %49 = load i64, i64* %size, align 8
  %add333 = add nsw i64 0, %49
  %mul334 = mul nsw i64 0, %add333
  %add335 = add nsw i64 %mul334, 0
  %neg336 = xor i64 %add335, -1
  %cmp337 = icmp eq i64 %neg336, -1
  %conv338 = zext i1 %cmp337 to i32
  %sub339 = sub nsw i32 0, %conv338
  %conv340 = sext i32 %sub339 to i64
  %50 = load i64, i64* %size, align 8
  %add341 = add nsw i64 0, %50
  %mul342 = mul nsw i64 0, %add341
  %add343 = add nsw i64 %mul342, 1
  %shl344 = shl i64 %add343, 62
  %sub345 = sub nsw i64 %shl344, 1
  %mul346 = mul nsw i64 %sub345, 2
  %add347 = add nsw i64 %mul346, 1
  %sub348 = sub nsw i64 %conv340, %add347
  br label %cond.end.353

cond.false.349:                                   ; preds = %cond.false.326
  %51 = load i64, i64* %size, align 8
  %add350 = add nsw i64 0, %51
  %mul351 = mul nsw i64 0, %add350
  %add352 = add nsw i64 %mul351, 0
  br label %cond.end.353

cond.end.353:                                     ; preds = %cond.false.349, %cond.true.332
  %cond354 = phi i64 [ %sub348, %cond.true.332 ], [ %add352, %cond.false.349 ]
  %div355 = sdiv i64 %cond354, 4
  %52 = load i64, i64* %size, align 8
  %cmp356 = icmp slt i64 %div355, %52
  br i1 %cmp356, label %cond.true.432, label %lor.lhs.false.418

cond.false.358:                                   ; preds = %lor.lhs.false.297
  br i1 false, label %cond.true.359, label %cond.false.360

cond.true.359:                                    ; preds = %cond.false.358
  br i1 false, label %cond.true.432, label %lor.lhs.false.418

cond.false.360:                                   ; preds = %cond.false.358
  %53 = load i64, i64* %size, align 8
  %cmp361 = icmp slt i64 %53, 0
  br i1 %cmp361, label %cond.true.363, label %cond.false.395

cond.true.363:                                    ; preds = %cond.false.360
  %54 = load i64, i64* %size, align 8
  %55 = load i64, i64* %size, align 8
  %add364 = add nsw i64 0, %55
  %mul365 = mul nsw i64 0, %add364
  %sub366 = sub nsw i64 %mul365, 1
  %cmp367 = icmp slt i64 %sub366, 0
  br i1 %cmp367, label %cond.true.369, label %cond.false.386

cond.true.369:                                    ; preds = %cond.true.363
  %56 = load i64, i64* %size, align 8
  %add370 = add nsw i64 0, %56
  %mul371 = mul nsw i64 0, %add370
  %add372 = add nsw i64 %mul371, 0
  %neg373 = xor i64 %add372, -1
  %cmp374 = icmp eq i64 %neg373, -1
  %conv375 = zext i1 %cmp374 to i32
  %sub376 = sub nsw i32 0, %conv375
  %conv377 = sext i32 %sub376 to i64
  %57 = load i64, i64* %size, align 8
  %add378 = add nsw i64 0, %57
  %mul379 = mul nsw i64 0, %add378
  %add380 = add nsw i64 %mul379, 1
  %shl381 = shl i64 %add380, 62
  %sub382 = sub nsw i64 %shl381, 1
  %mul383 = mul nsw i64 %sub382, 2
  %add384 = add nsw i64 %mul383, 1
  %sub385 = sub nsw i64 %conv377, %add384
  br label %cond.end.390

cond.false.386:                                   ; preds = %cond.true.363
  %58 = load i64, i64* %size, align 8
  %add387 = add nsw i64 0, %58
  %mul388 = mul nsw i64 0, %add387
  %add389 = add nsw i64 %mul388, 0
  br label %cond.end.390

cond.end.390:                                     ; preds = %cond.false.386, %cond.true.369
  %cond391 = phi i64 [ %sub385, %cond.true.369 ], [ %add389, %cond.false.386 ]
  %div392 = sdiv i64 %cond391, 4
  %cmp393 = icmp slt i64 %54, %div392
  br i1 %cmp393, label %cond.true.432, label %lor.lhs.false.418

cond.false.395:                                   ; preds = %cond.false.360
  %59 = load i64, i64* %size, align 8
  %add396 = add nsw i64 0, %59
  %mul397 = mul nsw i64 0, %add396
  %sub398 = sub nsw i64 %mul397, 1
  %cmp399 = icmp slt i64 %sub398, 0
  br i1 %cmp399, label %cond.true.401, label %cond.false.409

cond.true.401:                                    ; preds = %cond.false.395
  %60 = load i64, i64* %size, align 8
  %add402 = add nsw i64 0, %60
  %mul403 = mul nsw i64 0, %add402
  %add404 = add nsw i64 %mul403, 1
  %shl405 = shl i64 %add404, 62
  %sub406 = sub nsw i64 %shl405, 1
  %mul407 = mul nsw i64 %sub406, 2
  %add408 = add nsw i64 %mul407, 1
  br label %cond.end.413

cond.false.409:                                   ; preds = %cond.false.395
  %61 = load i64, i64* %size, align 8
  %add410 = add nsw i64 0, %61
  %mul411 = mul nsw i64 0, %add410
  %sub412 = sub nsw i64 %mul411, 1
  br label %cond.end.413

cond.end.413:                                     ; preds = %cond.false.409, %cond.true.401
  %cond414 = phi i64 [ %add408, %cond.true.401 ], [ %sub412, %cond.false.409 ]
  %div415 = sdiv i64 %cond414, 4
  %62 = load i64, i64* %size, align 8
  %cmp416 = icmp slt i64 %div415, %62
  br i1 %cmp416, label %cond.true.432, label %lor.lhs.false.418

lor.lhs.false.418:                                ; preds = %cond.end.413, %cond.end.390, %cond.true.359, %cond.end.353, %cond.true.325, %cond.end.319
  %63 = load i64, i64* %size, align 8
  %mul419 = mul nsw i64 %63, 4
  %mul420 = mul nsw i64 0, %mul419
  %sub421 = sub nsw i64 %mul420, 1
  %cmp422 = icmp slt i64 %sub421, 0
  br i1 %cmp422, label %land.lhs.true.424, label %lor.lhs.false.428

land.lhs.true.424:                                ; preds = %lor.lhs.false.418
  %64 = load i64, i64* %size, align 8
  %mul425 = mul nsw i64 %64, 4
  %cmp426 = icmp slt i64 %mul425, -128
  br i1 %cmp426, label %cond.true.432, label %lor.lhs.false.428

lor.lhs.false.428:                                ; preds = %land.lhs.true.424, %lor.lhs.false.418
  %65 = load i64, i64* %size, align 8
  %mul429 = mul nsw i64 %65, 4
  %cmp430 = icmp slt i64 127, %mul429
  br i1 %cmp430, label %cond.true.432, label %cond.false.455

cond.true.432:                                    ; preds = %lor.lhs.false.428, %land.lhs.true.424, %cond.end.413, %cond.end.390, %cond.true.359, %cond.end.353, %cond.true.325, %cond.end.319, %land.lhs.true.294
  %66 = load i64, i64* %size, align 8
  %conv433 = trunc i64 %66 to i8
  %conv434 = zext i8 %conv433 to i32
  %mul435 = mul nsw i32 %conv434, 4
  %cmp436 = icmp sle i32 %mul435, 127
  br i1 %cmp436, label %cond.true.438, label %cond.false.444

cond.true.438:                                    ; preds = %cond.true.432
  %67 = load i64, i64* %size, align 8
  %conv439 = trunc i64 %67 to i8
  %conv440 = zext i8 %conv439 to i32
  %mul441 = mul nsw i32 %conv440, 4
  %conv442 = trunc i32 %mul441 to i8
  %conv443 = sext i8 %conv442 to i32
  br label %cond.end.452

cond.false.444:                                   ; preds = %cond.true.432
  %68 = load i64, i64* %size, align 8
  %conv445 = trunc i64 %68 to i8
  %conv446 = zext i8 %conv445 to i32
  %mul447 = mul nsw i32 %conv446, 4
  %sub448 = sub nsw i32 %mul447, -128
  %conv449 = trunc i32 %sub448 to i8
  %conv450 = sext i8 %conv449 to i32
  %add451 = add nsw i32 %conv450, -128
  br label %cond.end.452

cond.end.452:                                     ; preds = %cond.false.444, %cond.true.438
  %cond453 = phi i32 [ %conv443, %cond.true.438 ], [ %add451, %cond.false.444 ]
  %conv454 = sext i32 %cond453 to i64
  store i64 %conv454, i64* %size4, align 8
  br i1 true, label %if.then.2167, label %if.end.2168

cond.false.455:                                   ; preds = %lor.lhs.false.428
  %69 = load i64, i64* %size, align 8
  %conv456 = trunc i64 %69 to i8
  %conv457 = zext i8 %conv456 to i32
  %mul458 = mul nsw i32 %conv457, 4
  %cmp459 = icmp sle i32 %mul458, 127
  br i1 %cmp459, label %cond.true.461, label %cond.false.467

cond.true.461:                                    ; preds = %cond.false.455
  %70 = load i64, i64* %size, align 8
  %conv462 = trunc i64 %70 to i8
  %conv463 = zext i8 %conv462 to i32
  %mul464 = mul nsw i32 %conv463, 4
  %conv465 = trunc i32 %mul464 to i8
  %conv466 = sext i8 %conv465 to i32
  br label %cond.end.475

cond.false.467:                                   ; preds = %cond.false.455
  %71 = load i64, i64* %size, align 8
  %conv468 = trunc i64 %71 to i8
  %conv469 = zext i8 %conv468 to i32
  %mul470 = mul nsw i32 %conv469, 4
  %sub471 = sub nsw i32 %mul470, -128
  %conv472 = trunc i32 %sub471 to i8
  %conv473 = sext i8 %conv472 to i32
  %add474 = add nsw i32 %conv473, -128
  br label %cond.end.475

cond.end.475:                                     ; preds = %cond.false.467, %cond.true.461
  %cond476 = phi i32 [ %conv466, %cond.true.461 ], [ %add474, %cond.false.467 ]
  %conv477 = sext i32 %cond476 to i64
  store i64 %conv477, i64* %size4, align 8
  br i1 false, label %if.then.2167, label %if.end.2168

cond.false.478:                                   ; preds = %if.end
  br i1 false, label %cond.true.479, label %cond.false.963

cond.true.479:                                    ; preds = %cond.false.478
  br i1 false, label %cond.true.480, label %cond.false.748

cond.true.480:                                    ; preds = %cond.true.479
  %72 = load i64, i64* %size, align 8
  %conv481 = trunc i64 %72 to i16
  %conv482 = sext i16 %conv481 to i32
  %add483 = add nsw i32 0, %conv482
  %mul484 = mul nsw i32 0, %add483
  %sub485 = sub nsw i32 %mul484, 1
  %cmp486 = icmp slt i32 %sub485, 0
  br i1 %cmp486, label %cond.true.488, label %cond.false.508

cond.true.488:                                    ; preds = %cond.true.480
  %73 = load i64, i64* %size, align 8
  %conv489 = trunc i64 %73 to i16
  %conv490 = sext i16 %conv489 to i32
  %add491 = add nsw i32 0, %conv490
  %mul492 = mul nsw i32 0, %add491
  %add493 = add nsw i32 %mul492, 0
  %neg494 = xor i32 %add493, -1
  %cmp495 = icmp eq i32 %neg494, -1
  %conv496 = zext i1 %cmp495 to i32
  %sub497 = sub nsw i32 0, %conv496
  %74 = load i64, i64* %size, align 8
  %conv498 = trunc i64 %74 to i16
  %conv499 = sext i16 %conv498 to i32
  %add500 = add nsw i32 0, %conv499
  %mul501 = mul nsw i32 0, %add500
  %add502 = add nsw i32 %mul501, 1
  %shl503 = shl i32 %add502, 30
  %sub504 = sub nsw i32 %shl503, 1
  %mul505 = mul nsw i32 %sub504, 2
  %add506 = add nsw i32 %mul505, 1
  %sub507 = sub nsw i32 %sub497, %add506
  br label %cond.end.514

cond.false.508:                                   ; preds = %cond.true.480
  %75 = load i64, i64* %size, align 8
  %conv509 = trunc i64 %75 to i16
  %conv510 = sext i16 %conv509 to i32
  %add511 = add nsw i32 0, %conv510
  %mul512 = mul nsw i32 0, %add511
  %add513 = add nsw i32 %mul512, 0
  br label %cond.end.514

cond.end.514:                                     ; preds = %cond.false.508, %cond.true.488
  %cond515 = phi i32 [ %sub507, %cond.true.488 ], [ %add513, %cond.false.508 ]
  %cmp516 = icmp eq i32 %cond515, 0
  br i1 %cmp516, label %land.lhs.true.518, label %lor.lhs.false.523

land.lhs.true.518:                                ; preds = %cond.end.514
  %76 = load i64, i64* %size, align 8
  %conv519 = trunc i64 %76 to i16
  %conv520 = sext i16 %conv519 to i32
  %cmp521 = icmp slt i32 %conv520, 0
  br i1 %cmp521, label %cond.true.702, label %lor.lhs.false.523

lor.lhs.false.523:                                ; preds = %land.lhs.true.518, %cond.end.514
  br i1 false, label %cond.true.524, label %cond.false.603

cond.true.524:                                    ; preds = %lor.lhs.false.523
  %77 = load i64, i64* %size, align 8
  %conv525 = trunc i64 %77 to i16
  %conv526 = sext i16 %conv525 to i32
  %cmp527 = icmp slt i32 %conv526, 0
  br i1 %cmp527, label %cond.true.529, label %cond.false.560

cond.true.529:                                    ; preds = %cond.true.524
  %78 = load i64, i64* %size, align 8
  %conv530 = trunc i64 %78 to i16
  %conv531 = sext i16 %conv530 to i32
  %79 = load i64, i64* %size, align 8
  %conv532 = trunc i64 %79 to i16
  %conv533 = sext i16 %conv532 to i32
  %add534 = add nsw i32 0, %conv533
  %mul535 = mul nsw i32 0, %add534
  %sub536 = sub nsw i32 %mul535, 1
  %cmp537 = icmp slt i32 %sub536, 0
  br i1 %cmp537, label %cond.true.539, label %cond.false.549

cond.true.539:                                    ; preds = %cond.true.529
  %80 = load i64, i64* %size, align 8
  %conv540 = trunc i64 %80 to i16
  %conv541 = sext i16 %conv540 to i32
  %add542 = add nsw i32 0, %conv541
  %mul543 = mul nsw i32 0, %add542
  %add544 = add nsw i32 %mul543, 1
  %shl545 = shl i32 %add544, 30
  %sub546 = sub nsw i32 %shl545, 1
  %mul547 = mul nsw i32 %sub546, 2
  %add548 = add nsw i32 %mul547, 1
  br label %cond.end.555

cond.false.549:                                   ; preds = %cond.true.529
  %81 = load i64, i64* %size, align 8
  %conv550 = trunc i64 %81 to i16
  %conv551 = sext i16 %conv550 to i32
  %add552 = add nsw i32 0, %conv551
  %mul553 = mul nsw i32 0, %add552
  %sub554 = sub nsw i32 %mul553, 1
  br label %cond.end.555

cond.end.555:                                     ; preds = %cond.false.549, %cond.true.539
  %cond556 = phi i32 [ %add548, %cond.true.539 ], [ %sub554, %cond.false.549 ]
  %div557 = sdiv i32 %cond556, 4
  %cmp558 = icmp slt i32 %conv531, %div557
  br i1 %cmp558, label %cond.true.702, label %lor.lhs.false.682

cond.false.560:                                   ; preds = %cond.true.524
  br i1 false, label %cond.true.561, label %cond.false.562

cond.true.561:                                    ; preds = %cond.false.560
  br i1 false, label %cond.true.702, label %lor.lhs.false.682

cond.false.562:                                   ; preds = %cond.false.560
  %82 = load i64, i64* %size, align 8
  %conv563 = trunc i64 %82 to i16
  %conv564 = sext i16 %conv563 to i32
  %add565 = add nsw i32 0, %conv564
  %mul566 = mul nsw i32 0, %add565
  %sub567 = sub nsw i32 %mul566, 1
  %cmp568 = icmp slt i32 %sub567, 0
  br i1 %cmp568, label %cond.true.570, label %cond.false.590

cond.true.570:                                    ; preds = %cond.false.562
  %83 = load i64, i64* %size, align 8
  %conv571 = trunc i64 %83 to i16
  %conv572 = sext i16 %conv571 to i32
  %add573 = add nsw i32 0, %conv572
  %mul574 = mul nsw i32 0, %add573
  %add575 = add nsw i32 %mul574, 0
  %neg576 = xor i32 %add575, -1
  %cmp577 = icmp eq i32 %neg576, -1
  %conv578 = zext i1 %cmp577 to i32
  %sub579 = sub nsw i32 0, %conv578
  %84 = load i64, i64* %size, align 8
  %conv580 = trunc i64 %84 to i16
  %conv581 = sext i16 %conv580 to i32
  %add582 = add nsw i32 0, %conv581
  %mul583 = mul nsw i32 0, %add582
  %add584 = add nsw i32 %mul583, 1
  %shl585 = shl i32 %add584, 30
  %sub586 = sub nsw i32 %shl585, 1
  %mul587 = mul nsw i32 %sub586, 2
  %add588 = add nsw i32 %mul587, 1
  %sub589 = sub nsw i32 %sub579, %add588
  br label %cond.end.596

cond.false.590:                                   ; preds = %cond.false.562
  %85 = load i64, i64* %size, align 8
  %conv591 = trunc i64 %85 to i16
  %conv592 = sext i16 %conv591 to i32
  %add593 = add nsw i32 0, %conv592
  %mul594 = mul nsw i32 0, %add593
  %add595 = add nsw i32 %mul594, 0
  br label %cond.end.596

cond.end.596:                                     ; preds = %cond.false.590, %cond.true.570
  %cond597 = phi i32 [ %sub589, %cond.true.570 ], [ %add595, %cond.false.590 ]
  %div598 = sdiv i32 %cond597, 4
  %86 = load i64, i64* %size, align 8
  %conv599 = trunc i64 %86 to i16
  %conv600 = sext i16 %conv599 to i32
  %cmp601 = icmp slt i32 %div598, %conv600
  br i1 %cmp601, label %cond.true.702, label %lor.lhs.false.682

cond.false.603:                                   ; preds = %lor.lhs.false.523
  br i1 false, label %cond.true.604, label %cond.false.605

cond.true.604:                                    ; preds = %cond.false.603
  br i1 false, label %cond.true.702, label %lor.lhs.false.682

cond.false.605:                                   ; preds = %cond.false.603
  %87 = load i64, i64* %size, align 8
  %conv606 = trunc i64 %87 to i16
  %conv607 = sext i16 %conv606 to i32
  %cmp608 = icmp slt i32 %conv607, 0
  br i1 %cmp608, label %cond.true.610, label %cond.false.651

cond.true.610:                                    ; preds = %cond.false.605
  %88 = load i64, i64* %size, align 8
  %conv611 = trunc i64 %88 to i16
  %conv612 = sext i16 %conv611 to i32
  %89 = load i64, i64* %size, align 8
  %conv613 = trunc i64 %89 to i16
  %conv614 = sext i16 %conv613 to i32
  %add615 = add nsw i32 0, %conv614
  %mul616 = mul nsw i32 0, %add615
  %sub617 = sub nsw i32 %mul616, 1
  %cmp618 = icmp slt i32 %sub617, 0
  br i1 %cmp618, label %cond.true.620, label %cond.false.640

cond.true.620:                                    ; preds = %cond.true.610
  %90 = load i64, i64* %size, align 8
  %conv621 = trunc i64 %90 to i16
  %conv622 = sext i16 %conv621 to i32
  %add623 = add nsw i32 0, %conv622
  %mul624 = mul nsw i32 0, %add623
  %add625 = add nsw i32 %mul624, 0
  %neg626 = xor i32 %add625, -1
  %cmp627 = icmp eq i32 %neg626, -1
  %conv628 = zext i1 %cmp627 to i32
  %sub629 = sub nsw i32 0, %conv628
  %91 = load i64, i64* %size, align 8
  %conv630 = trunc i64 %91 to i16
  %conv631 = sext i16 %conv630 to i32
  %add632 = add nsw i32 0, %conv631
  %mul633 = mul nsw i32 0, %add632
  %add634 = add nsw i32 %mul633, 1
  %shl635 = shl i32 %add634, 30
  %sub636 = sub nsw i32 %shl635, 1
  %mul637 = mul nsw i32 %sub636, 2
  %add638 = add nsw i32 %mul637, 1
  %sub639 = sub nsw i32 %sub629, %add638
  br label %cond.end.646

cond.false.640:                                   ; preds = %cond.true.610
  %92 = load i64, i64* %size, align 8
  %conv641 = trunc i64 %92 to i16
  %conv642 = sext i16 %conv641 to i32
  %add643 = add nsw i32 0, %conv642
  %mul644 = mul nsw i32 0, %add643
  %add645 = add nsw i32 %mul644, 0
  br label %cond.end.646

cond.end.646:                                     ; preds = %cond.false.640, %cond.true.620
  %cond647 = phi i32 [ %sub639, %cond.true.620 ], [ %add645, %cond.false.640 ]
  %div648 = sdiv i32 %cond647, 4
  %cmp649 = icmp slt i32 %conv612, %div648
  br i1 %cmp649, label %cond.true.702, label %lor.lhs.false.682

cond.false.651:                                   ; preds = %cond.false.605
  %93 = load i64, i64* %size, align 8
  %conv652 = trunc i64 %93 to i16
  %conv653 = sext i16 %conv652 to i32
  %add654 = add nsw i32 0, %conv653
  %mul655 = mul nsw i32 0, %add654
  %sub656 = sub nsw i32 %mul655, 1
  %cmp657 = icmp slt i32 %sub656, 0
  br i1 %cmp657, label %cond.true.659, label %cond.false.669

cond.true.659:                                    ; preds = %cond.false.651
  %94 = load i64, i64* %size, align 8
  %conv660 = trunc i64 %94 to i16
  %conv661 = sext i16 %conv660 to i32
  %add662 = add nsw i32 0, %conv661
  %mul663 = mul nsw i32 0, %add662
  %add664 = add nsw i32 %mul663, 1
  %shl665 = shl i32 %add664, 30
  %sub666 = sub nsw i32 %shl665, 1
  %mul667 = mul nsw i32 %sub666, 2
  %add668 = add nsw i32 %mul667, 1
  br label %cond.end.675

cond.false.669:                                   ; preds = %cond.false.651
  %95 = load i64, i64* %size, align 8
  %conv670 = trunc i64 %95 to i16
  %conv671 = sext i16 %conv670 to i32
  %add672 = add nsw i32 0, %conv671
  %mul673 = mul nsw i32 0, %add672
  %sub674 = sub nsw i32 %mul673, 1
  br label %cond.end.675

cond.end.675:                                     ; preds = %cond.false.669, %cond.true.659
  %cond676 = phi i32 [ %add668, %cond.true.659 ], [ %sub674, %cond.false.669 ]
  %div677 = sdiv i32 %cond676, 4
  %96 = load i64, i64* %size, align 8
  %conv678 = trunc i64 %96 to i16
  %conv679 = sext i16 %conv678 to i32
  %cmp680 = icmp slt i32 %div677, %conv679
  br i1 %cmp680, label %cond.true.702, label %lor.lhs.false.682

lor.lhs.false.682:                                ; preds = %cond.end.675, %cond.end.646, %cond.true.604, %cond.end.596, %cond.true.561, %cond.end.555
  %97 = load i64, i64* %size, align 8
  %conv683 = trunc i64 %97 to i16
  %conv684 = sext i16 %conv683 to i32
  %mul685 = mul nsw i32 %conv684, 4
  %mul686 = mul nsw i32 0, %mul685
  %sub687 = sub nsw i32 %mul686, 1
  %cmp688 = icmp slt i32 %sub687, 0
  br i1 %cmp688, label %land.lhs.true.690, label %lor.lhs.false.696

land.lhs.true.690:                                ; preds = %lor.lhs.false.682
  %98 = load i64, i64* %size, align 8
  %conv691 = trunc i64 %98 to i16
  %conv692 = sext i16 %conv691 to i32
  %mul693 = mul nsw i32 %conv692, 4
  %cmp694 = icmp slt i32 %mul693, -32768
  br i1 %cmp694, label %cond.true.702, label %lor.lhs.false.696

lor.lhs.false.696:                                ; preds = %land.lhs.true.690, %lor.lhs.false.682
  %99 = load i64, i64* %size, align 8
  %conv697 = trunc i64 %99 to i16
  %conv698 = sext i16 %conv697 to i32
  %mul699 = mul nsw i32 %conv698, 4
  %cmp700 = icmp slt i32 32767, %mul699
  br i1 %cmp700, label %cond.true.702, label %cond.false.725

cond.true.702:                                    ; preds = %lor.lhs.false.696, %land.lhs.true.690, %cond.end.675, %cond.end.646, %cond.true.604, %cond.end.596, %cond.true.561, %cond.end.555, %land.lhs.true.518
  %100 = load i64, i64* %size, align 8
  %conv703 = trunc i64 %100 to i16
  %conv704 = zext i16 %conv703 to i32
  %mul705 = mul nsw i32 %conv704, 4
  %cmp706 = icmp sle i32 %mul705, 32767
  br i1 %cmp706, label %cond.true.708, label %cond.false.714

cond.true.708:                                    ; preds = %cond.true.702
  %101 = load i64, i64* %size, align 8
  %conv709 = trunc i64 %101 to i16
  %conv710 = zext i16 %conv709 to i32
  %mul711 = mul nsw i32 %conv710, 4
  %conv712 = trunc i32 %mul711 to i16
  %conv713 = sext i16 %conv712 to i32
  br label %cond.end.722

cond.false.714:                                   ; preds = %cond.true.702
  %102 = load i64, i64* %size, align 8
  %conv715 = trunc i64 %102 to i16
  %conv716 = zext i16 %conv715 to i32
  %mul717 = mul nsw i32 %conv716, 4
  %sub718 = sub nsw i32 %mul717, -32768
  %conv719 = trunc i32 %sub718 to i16
  %conv720 = sext i16 %conv719 to i32
  %add721 = add nsw i32 %conv720, -32768
  br label %cond.end.722

cond.end.722:                                     ; preds = %cond.false.714, %cond.true.708
  %cond723 = phi i32 [ %conv713, %cond.true.708 ], [ %add721, %cond.false.714 ]
  %conv724 = sext i32 %cond723 to i64
  store i64 %conv724, i64* %size4, align 8
  br i1 true, label %if.then.2167, label %if.end.2168

cond.false.725:                                   ; preds = %lor.lhs.false.696
  %103 = load i64, i64* %size, align 8
  %conv726 = trunc i64 %103 to i16
  %conv727 = zext i16 %conv726 to i32
  %mul728 = mul nsw i32 %conv727, 4
  %cmp729 = icmp sle i32 %mul728, 32767
  br i1 %cmp729, label %cond.true.731, label %cond.false.737

cond.true.731:                                    ; preds = %cond.false.725
  %104 = load i64, i64* %size, align 8
  %conv732 = trunc i64 %104 to i16
  %conv733 = zext i16 %conv732 to i32
  %mul734 = mul nsw i32 %conv733, 4
  %conv735 = trunc i32 %mul734 to i16
  %conv736 = sext i16 %conv735 to i32
  br label %cond.end.745

cond.false.737:                                   ; preds = %cond.false.725
  %105 = load i64, i64* %size, align 8
  %conv738 = trunc i64 %105 to i16
  %conv739 = zext i16 %conv738 to i32
  %mul740 = mul nsw i32 %conv739, 4
  %sub741 = sub nsw i32 %mul740, -32768
  %conv742 = trunc i32 %sub741 to i16
  %conv743 = sext i16 %conv742 to i32
  %add744 = add nsw i32 %conv743, -32768
  br label %cond.end.745

cond.end.745:                                     ; preds = %cond.false.737, %cond.true.731
  %cond746 = phi i32 [ %conv736, %cond.true.731 ], [ %add744, %cond.false.737 ]
  %conv747 = sext i32 %cond746 to i64
  store i64 %conv747, i64* %size4, align 8
  br i1 false, label %if.then.2167, label %if.end.2168

cond.false.748:                                   ; preds = %cond.true.479
  %106 = load i64, i64* %size, align 8
  %add749 = add nsw i64 0, %106
  %mul750 = mul nsw i64 0, %add749
  %sub751 = sub nsw i64 %mul750, 1
  %cmp752 = icmp slt i64 %sub751, 0
  br i1 %cmp752, label %cond.true.754, label %cond.false.771

cond.true.754:                                    ; preds = %cond.false.748
  %107 = load i64, i64* %size, align 8
  %add755 = add nsw i64 0, %107
  %mul756 = mul nsw i64 0, %add755
  %add757 = add nsw i64 %mul756, 0
  %neg758 = xor i64 %add757, -1
  %cmp759 = icmp eq i64 %neg758, -1
  %conv760 = zext i1 %cmp759 to i32
  %sub761 = sub nsw i32 0, %conv760
  %conv762 = sext i32 %sub761 to i64
  %108 = load i64, i64* %size, align 8
  %add763 = add nsw i64 0, %108
  %mul764 = mul nsw i64 0, %add763
  %add765 = add nsw i64 %mul764, 1
  %shl766 = shl i64 %add765, 62
  %sub767 = sub nsw i64 %shl766, 1
  %mul768 = mul nsw i64 %sub767, 2
  %add769 = add nsw i64 %mul768, 1
  %sub770 = sub nsw i64 %conv762, %add769
  br label %cond.end.775

cond.false.771:                                   ; preds = %cond.false.748
  %109 = load i64, i64* %size, align 8
  %add772 = add nsw i64 0, %109
  %mul773 = mul nsw i64 0, %add772
  %add774 = add nsw i64 %mul773, 0
  br label %cond.end.775

cond.end.775:                                     ; preds = %cond.false.771, %cond.true.754
  %cond776 = phi i64 [ %sub770, %cond.true.754 ], [ %add774, %cond.false.771 ]
  %cmp777 = icmp eq i64 %cond776, 0
  br i1 %cmp777, label %land.lhs.true.779, label %lor.lhs.false.782

land.lhs.true.779:                                ; preds = %cond.end.775
  %110 = load i64, i64* %size, align 8
  %cmp780 = icmp slt i64 %110, 0
  br i1 %cmp780, label %cond.true.917, label %lor.lhs.false.782

lor.lhs.false.782:                                ; preds = %land.lhs.true.779, %cond.end.775
  br i1 false, label %cond.true.783, label %cond.false.843

cond.true.783:                                    ; preds = %lor.lhs.false.782
  %111 = load i64, i64* %size, align 8
  %cmp784 = icmp slt i64 %111, 0
  br i1 %cmp784, label %cond.true.786, label %cond.false.809

cond.true.786:                                    ; preds = %cond.true.783
  %112 = load i64, i64* %size, align 8
  %113 = load i64, i64* %size, align 8
  %add787 = add nsw i64 0, %113
  %mul788 = mul nsw i64 0, %add787
  %sub789 = sub nsw i64 %mul788, 1
  %cmp790 = icmp slt i64 %sub789, 0
  br i1 %cmp790, label %cond.true.792, label %cond.false.800

cond.true.792:                                    ; preds = %cond.true.786
  %114 = load i64, i64* %size, align 8
  %add793 = add nsw i64 0, %114
  %mul794 = mul nsw i64 0, %add793
  %add795 = add nsw i64 %mul794, 1
  %shl796 = shl i64 %add795, 62
  %sub797 = sub nsw i64 %shl796, 1
  %mul798 = mul nsw i64 %sub797, 2
  %add799 = add nsw i64 %mul798, 1
  br label %cond.end.804

cond.false.800:                                   ; preds = %cond.true.786
  %115 = load i64, i64* %size, align 8
  %add801 = add nsw i64 0, %115
  %mul802 = mul nsw i64 0, %add801
  %sub803 = sub nsw i64 %mul802, 1
  br label %cond.end.804

cond.end.804:                                     ; preds = %cond.false.800, %cond.true.792
  %cond805 = phi i64 [ %add799, %cond.true.792 ], [ %sub803, %cond.false.800 ]
  %div806 = sdiv i64 %cond805, 4
  %cmp807 = icmp slt i64 %112, %div806
  br i1 %cmp807, label %cond.true.917, label %lor.lhs.false.903

cond.false.809:                                   ; preds = %cond.true.783
  br i1 false, label %cond.true.810, label %cond.false.811

cond.true.810:                                    ; preds = %cond.false.809
  br i1 false, label %cond.true.917, label %lor.lhs.false.903

cond.false.811:                                   ; preds = %cond.false.809
  %116 = load i64, i64* %size, align 8
  %add812 = add nsw i64 0, %116
  %mul813 = mul nsw i64 0, %add812
  %sub814 = sub nsw i64 %mul813, 1
  %cmp815 = icmp slt i64 %sub814, 0
  br i1 %cmp815, label %cond.true.817, label %cond.false.834

cond.true.817:                                    ; preds = %cond.false.811
  %117 = load i64, i64* %size, align 8
  %add818 = add nsw i64 0, %117
  %mul819 = mul nsw i64 0, %add818
  %add820 = add nsw i64 %mul819, 0
  %neg821 = xor i64 %add820, -1
  %cmp822 = icmp eq i64 %neg821, -1
  %conv823 = zext i1 %cmp822 to i32
  %sub824 = sub nsw i32 0, %conv823
  %conv825 = sext i32 %sub824 to i64
  %118 = load i64, i64* %size, align 8
  %add826 = add nsw i64 0, %118
  %mul827 = mul nsw i64 0, %add826
  %add828 = add nsw i64 %mul827, 1
  %shl829 = shl i64 %add828, 62
  %sub830 = sub nsw i64 %shl829, 1
  %mul831 = mul nsw i64 %sub830, 2
  %add832 = add nsw i64 %mul831, 1
  %sub833 = sub nsw i64 %conv825, %add832
  br label %cond.end.838

cond.false.834:                                   ; preds = %cond.false.811
  %119 = load i64, i64* %size, align 8
  %add835 = add nsw i64 0, %119
  %mul836 = mul nsw i64 0, %add835
  %add837 = add nsw i64 %mul836, 0
  br label %cond.end.838

cond.end.838:                                     ; preds = %cond.false.834, %cond.true.817
  %cond839 = phi i64 [ %sub833, %cond.true.817 ], [ %add837, %cond.false.834 ]
  %div840 = sdiv i64 %cond839, 4
  %120 = load i64, i64* %size, align 8
  %cmp841 = icmp slt i64 %div840, %120
  br i1 %cmp841, label %cond.true.917, label %lor.lhs.false.903

cond.false.843:                                   ; preds = %lor.lhs.false.782
  br i1 false, label %cond.true.844, label %cond.false.845

cond.true.844:                                    ; preds = %cond.false.843
  br i1 false, label %cond.true.917, label %lor.lhs.false.903

cond.false.845:                                   ; preds = %cond.false.843
  %121 = load i64, i64* %size, align 8
  %cmp846 = icmp slt i64 %121, 0
  br i1 %cmp846, label %cond.true.848, label %cond.false.880

cond.true.848:                                    ; preds = %cond.false.845
  %122 = load i64, i64* %size, align 8
  %123 = load i64, i64* %size, align 8
  %add849 = add nsw i64 0, %123
  %mul850 = mul nsw i64 0, %add849
  %sub851 = sub nsw i64 %mul850, 1
  %cmp852 = icmp slt i64 %sub851, 0
  br i1 %cmp852, label %cond.true.854, label %cond.false.871

cond.true.854:                                    ; preds = %cond.true.848
  %124 = load i64, i64* %size, align 8
  %add855 = add nsw i64 0, %124
  %mul856 = mul nsw i64 0, %add855
  %add857 = add nsw i64 %mul856, 0
  %neg858 = xor i64 %add857, -1
  %cmp859 = icmp eq i64 %neg858, -1
  %conv860 = zext i1 %cmp859 to i32
  %sub861 = sub nsw i32 0, %conv860
  %conv862 = sext i32 %sub861 to i64
  %125 = load i64, i64* %size, align 8
  %add863 = add nsw i64 0, %125
  %mul864 = mul nsw i64 0, %add863
  %add865 = add nsw i64 %mul864, 1
  %shl866 = shl i64 %add865, 62
  %sub867 = sub nsw i64 %shl866, 1
  %mul868 = mul nsw i64 %sub867, 2
  %add869 = add nsw i64 %mul868, 1
  %sub870 = sub nsw i64 %conv862, %add869
  br label %cond.end.875

cond.false.871:                                   ; preds = %cond.true.848
  %126 = load i64, i64* %size, align 8
  %add872 = add nsw i64 0, %126
  %mul873 = mul nsw i64 0, %add872
  %add874 = add nsw i64 %mul873, 0
  br label %cond.end.875

cond.end.875:                                     ; preds = %cond.false.871, %cond.true.854
  %cond876 = phi i64 [ %sub870, %cond.true.854 ], [ %add874, %cond.false.871 ]
  %div877 = sdiv i64 %cond876, 4
  %cmp878 = icmp slt i64 %122, %div877
  br i1 %cmp878, label %cond.true.917, label %lor.lhs.false.903

cond.false.880:                                   ; preds = %cond.false.845
  %127 = load i64, i64* %size, align 8
  %add881 = add nsw i64 0, %127
  %mul882 = mul nsw i64 0, %add881
  %sub883 = sub nsw i64 %mul882, 1
  %cmp884 = icmp slt i64 %sub883, 0
  br i1 %cmp884, label %cond.true.886, label %cond.false.894

cond.true.886:                                    ; preds = %cond.false.880
  %128 = load i64, i64* %size, align 8
  %add887 = add nsw i64 0, %128
  %mul888 = mul nsw i64 0, %add887
  %add889 = add nsw i64 %mul888, 1
  %shl890 = shl i64 %add889, 62
  %sub891 = sub nsw i64 %shl890, 1
  %mul892 = mul nsw i64 %sub891, 2
  %add893 = add nsw i64 %mul892, 1
  br label %cond.end.898

cond.false.894:                                   ; preds = %cond.false.880
  %129 = load i64, i64* %size, align 8
  %add895 = add nsw i64 0, %129
  %mul896 = mul nsw i64 0, %add895
  %sub897 = sub nsw i64 %mul896, 1
  br label %cond.end.898

cond.end.898:                                     ; preds = %cond.false.894, %cond.true.886
  %cond899 = phi i64 [ %add893, %cond.true.886 ], [ %sub897, %cond.false.894 ]
  %div900 = sdiv i64 %cond899, 4
  %130 = load i64, i64* %size, align 8
  %cmp901 = icmp slt i64 %div900, %130
  br i1 %cmp901, label %cond.true.917, label %lor.lhs.false.903

lor.lhs.false.903:                                ; preds = %cond.end.898, %cond.end.875, %cond.true.844, %cond.end.838, %cond.true.810, %cond.end.804
  %131 = load i64, i64* %size, align 8
  %mul904 = mul nsw i64 %131, 4
  %mul905 = mul nsw i64 0, %mul904
  %sub906 = sub nsw i64 %mul905, 1
  %cmp907 = icmp slt i64 %sub906, 0
  br i1 %cmp907, label %land.lhs.true.909, label %lor.lhs.false.913

land.lhs.true.909:                                ; preds = %lor.lhs.false.903
  %132 = load i64, i64* %size, align 8
  %mul910 = mul nsw i64 %132, 4
  %cmp911 = icmp slt i64 %mul910, -32768
  br i1 %cmp911, label %cond.true.917, label %lor.lhs.false.913

lor.lhs.false.913:                                ; preds = %land.lhs.true.909, %lor.lhs.false.903
  %133 = load i64, i64* %size, align 8
  %mul914 = mul nsw i64 %133, 4
  %cmp915 = icmp slt i64 32767, %mul914
  br i1 %cmp915, label %cond.true.917, label %cond.false.940

cond.true.917:                                    ; preds = %lor.lhs.false.913, %land.lhs.true.909, %cond.end.898, %cond.end.875, %cond.true.844, %cond.end.838, %cond.true.810, %cond.end.804, %land.lhs.true.779
  %134 = load i64, i64* %size, align 8
  %conv918 = trunc i64 %134 to i16
  %conv919 = zext i16 %conv918 to i32
  %mul920 = mul nsw i32 %conv919, 4
  %cmp921 = icmp sle i32 %mul920, 32767
  br i1 %cmp921, label %cond.true.923, label %cond.false.929

cond.true.923:                                    ; preds = %cond.true.917
  %135 = load i64, i64* %size, align 8
  %conv924 = trunc i64 %135 to i16
  %conv925 = zext i16 %conv924 to i32
  %mul926 = mul nsw i32 %conv925, 4
  %conv927 = trunc i32 %mul926 to i16
  %conv928 = sext i16 %conv927 to i32
  br label %cond.end.937

cond.false.929:                                   ; preds = %cond.true.917
  %136 = load i64, i64* %size, align 8
  %conv930 = trunc i64 %136 to i16
  %conv931 = zext i16 %conv930 to i32
  %mul932 = mul nsw i32 %conv931, 4
  %sub933 = sub nsw i32 %mul932, -32768
  %conv934 = trunc i32 %sub933 to i16
  %conv935 = sext i16 %conv934 to i32
  %add936 = add nsw i32 %conv935, -32768
  br label %cond.end.937

cond.end.937:                                     ; preds = %cond.false.929, %cond.true.923
  %cond938 = phi i32 [ %conv928, %cond.true.923 ], [ %add936, %cond.false.929 ]
  %conv939 = sext i32 %cond938 to i64
  store i64 %conv939, i64* %size4, align 8
  br i1 true, label %if.then.2167, label %if.end.2168

cond.false.940:                                   ; preds = %lor.lhs.false.913
  %137 = load i64, i64* %size, align 8
  %conv941 = trunc i64 %137 to i16
  %conv942 = zext i16 %conv941 to i32
  %mul943 = mul nsw i32 %conv942, 4
  %cmp944 = icmp sle i32 %mul943, 32767
  br i1 %cmp944, label %cond.true.946, label %cond.false.952

cond.true.946:                                    ; preds = %cond.false.940
  %138 = load i64, i64* %size, align 8
  %conv947 = trunc i64 %138 to i16
  %conv948 = zext i16 %conv947 to i32
  %mul949 = mul nsw i32 %conv948, 4
  %conv950 = trunc i32 %mul949 to i16
  %conv951 = sext i16 %conv950 to i32
  br label %cond.end.960

cond.false.952:                                   ; preds = %cond.false.940
  %139 = load i64, i64* %size, align 8
  %conv953 = trunc i64 %139 to i16
  %conv954 = zext i16 %conv953 to i32
  %mul955 = mul nsw i32 %conv954, 4
  %sub956 = sub nsw i32 %mul955, -32768
  %conv957 = trunc i32 %sub956 to i16
  %conv958 = sext i16 %conv957 to i32
  %add959 = add nsw i32 %conv958, -32768
  br label %cond.end.960

cond.end.960:                                     ; preds = %cond.false.952, %cond.true.946
  %cond961 = phi i32 [ %conv951, %cond.true.946 ], [ %add959, %cond.false.952 ]
  %conv962 = sext i32 %cond961 to i64
  store i64 %conv962, i64* %size4, align 8
  br i1 false, label %if.then.2167, label %if.end.2168

cond.false.963:                                   ; preds = %cond.false.478
  br i1 false, label %cond.true.964, label %cond.false.1392

cond.true.964:                                    ; preds = %cond.false.963
  br i1 false, label %cond.true.965, label %cond.false.1191

cond.true.965:                                    ; preds = %cond.true.964
  %140 = load i64, i64* %size, align 8
  %conv966 = trunc i64 %140 to i32
  %add967 = add nsw i32 0, %conv966
  %mul968 = mul nsw i32 0, %add967
  %sub969 = sub nsw i32 %mul968, 1
  %cmp970 = icmp slt i32 %sub969, 0
  br i1 %cmp970, label %cond.true.972, label %cond.false.990

cond.true.972:                                    ; preds = %cond.true.965
  %141 = load i64, i64* %size, align 8
  %conv973 = trunc i64 %141 to i32
  %add974 = add nsw i32 0, %conv973
  %mul975 = mul nsw i32 0, %add974
  %add976 = add nsw i32 %mul975, 0
  %neg977 = xor i32 %add976, -1
  %cmp978 = icmp eq i32 %neg977, -1
  %conv979 = zext i1 %cmp978 to i32
  %sub980 = sub nsw i32 0, %conv979
  %142 = load i64, i64* %size, align 8
  %conv981 = trunc i64 %142 to i32
  %add982 = add nsw i32 0, %conv981
  %mul983 = mul nsw i32 0, %add982
  %add984 = add nsw i32 %mul983, 1
  %shl985 = shl i32 %add984, 30
  %sub986 = sub nsw i32 %shl985, 1
  %mul987 = mul nsw i32 %sub986, 2
  %add988 = add nsw i32 %mul987, 1
  %sub989 = sub nsw i32 %sub980, %add988
  br label %cond.end.995

cond.false.990:                                   ; preds = %cond.true.965
  %143 = load i64, i64* %size, align 8
  %conv991 = trunc i64 %143 to i32
  %add992 = add nsw i32 0, %conv991
  %mul993 = mul nsw i32 0, %add992
  %add994 = add nsw i32 %mul993, 0
  br label %cond.end.995

cond.end.995:                                     ; preds = %cond.false.990, %cond.true.972
  %cond996 = phi i32 [ %sub989, %cond.true.972 ], [ %add994, %cond.false.990 ]
  %cmp997 = icmp eq i32 %cond996, 0
  br i1 %cmp997, label %land.lhs.true.999, label %lor.lhs.false.1003

land.lhs.true.999:                                ; preds = %cond.end.995
  %144 = load i64, i64* %size, align 8
  %conv1000 = trunc i64 %144 to i32
  %cmp1001 = icmp slt i32 %conv1000, 0
  br i1 %cmp1001, label %cond.true.1159, label %lor.lhs.false.1003

lor.lhs.false.1003:                               ; preds = %land.lhs.true.999, %cond.end.995
  br i1 false, label %cond.true.1004, label %cond.false.1073

cond.true.1004:                                   ; preds = %lor.lhs.false.1003
  %145 = load i64, i64* %size, align 8
  %conv1005 = trunc i64 %145 to i32
  %cmp1006 = icmp slt i32 %conv1005, 0
  br i1 %cmp1006, label %cond.true.1008, label %cond.false.1035

cond.true.1008:                                   ; preds = %cond.true.1004
  %146 = load i64, i64* %size, align 8
  %conv1009 = trunc i64 %146 to i32
  %147 = load i64, i64* %size, align 8
  %conv1010 = trunc i64 %147 to i32
  %add1011 = add nsw i32 0, %conv1010
  %mul1012 = mul nsw i32 0, %add1011
  %sub1013 = sub nsw i32 %mul1012, 1
  %cmp1014 = icmp slt i32 %sub1013, 0
  br i1 %cmp1014, label %cond.true.1016, label %cond.false.1025

cond.true.1016:                                   ; preds = %cond.true.1008
  %148 = load i64, i64* %size, align 8
  %conv1017 = trunc i64 %148 to i32
  %add1018 = add nsw i32 0, %conv1017
  %mul1019 = mul nsw i32 0, %add1018
  %add1020 = add nsw i32 %mul1019, 1
  %shl1021 = shl i32 %add1020, 30
  %sub1022 = sub nsw i32 %shl1021, 1
  %mul1023 = mul nsw i32 %sub1022, 2
  %add1024 = add nsw i32 %mul1023, 1
  br label %cond.end.1030

cond.false.1025:                                  ; preds = %cond.true.1008
  %149 = load i64, i64* %size, align 8
  %conv1026 = trunc i64 %149 to i32
  %add1027 = add nsw i32 0, %conv1026
  %mul1028 = mul nsw i32 0, %add1027
  %sub1029 = sub nsw i32 %mul1028, 1
  br label %cond.end.1030

cond.end.1030:                                    ; preds = %cond.false.1025, %cond.true.1016
  %cond1031 = phi i32 [ %add1024, %cond.true.1016 ], [ %sub1029, %cond.false.1025 ]
  %div1032 = sdiv i32 %cond1031, 4
  %cmp1033 = icmp slt i32 %conv1009, %div1032
  br i1 %cmp1033, label %cond.true.1159, label %lor.lhs.false.1142

cond.false.1035:                                  ; preds = %cond.true.1004
  br i1 false, label %cond.true.1036, label %cond.false.1037

cond.true.1036:                                   ; preds = %cond.false.1035
  br i1 false, label %cond.true.1159, label %lor.lhs.false.1142

cond.false.1037:                                  ; preds = %cond.false.1035
  %150 = load i64, i64* %size, align 8
  %conv1038 = trunc i64 %150 to i32
  %add1039 = add nsw i32 0, %conv1038
  %mul1040 = mul nsw i32 0, %add1039
  %sub1041 = sub nsw i32 %mul1040, 1
  %cmp1042 = icmp slt i32 %sub1041, 0
  br i1 %cmp1042, label %cond.true.1044, label %cond.false.1062

cond.true.1044:                                   ; preds = %cond.false.1037
  %151 = load i64, i64* %size, align 8
  %conv1045 = trunc i64 %151 to i32
  %add1046 = add nsw i32 0, %conv1045
  %mul1047 = mul nsw i32 0, %add1046
  %add1048 = add nsw i32 %mul1047, 0
  %neg1049 = xor i32 %add1048, -1
  %cmp1050 = icmp eq i32 %neg1049, -1
  %conv1051 = zext i1 %cmp1050 to i32
  %sub1052 = sub nsw i32 0, %conv1051
  %152 = load i64, i64* %size, align 8
  %conv1053 = trunc i64 %152 to i32
  %add1054 = add nsw i32 0, %conv1053
  %mul1055 = mul nsw i32 0, %add1054
  %add1056 = add nsw i32 %mul1055, 1
  %shl1057 = shl i32 %add1056, 30
  %sub1058 = sub nsw i32 %shl1057, 1
  %mul1059 = mul nsw i32 %sub1058, 2
  %add1060 = add nsw i32 %mul1059, 1
  %sub1061 = sub nsw i32 %sub1052, %add1060
  br label %cond.end.1067

cond.false.1062:                                  ; preds = %cond.false.1037
  %153 = load i64, i64* %size, align 8
  %conv1063 = trunc i64 %153 to i32
  %add1064 = add nsw i32 0, %conv1063
  %mul1065 = mul nsw i32 0, %add1064
  %add1066 = add nsw i32 %mul1065, 0
  br label %cond.end.1067

cond.end.1067:                                    ; preds = %cond.false.1062, %cond.true.1044
  %cond1068 = phi i32 [ %sub1061, %cond.true.1044 ], [ %add1066, %cond.false.1062 ]
  %div1069 = sdiv i32 %cond1068, 4
  %154 = load i64, i64* %size, align 8
  %conv1070 = trunc i64 %154 to i32
  %cmp1071 = icmp slt i32 %div1069, %conv1070
  br i1 %cmp1071, label %cond.true.1159, label %lor.lhs.false.1142

cond.false.1073:                                  ; preds = %lor.lhs.false.1003
  br i1 false, label %cond.true.1074, label %cond.false.1075

cond.true.1074:                                   ; preds = %cond.false.1073
  br i1 false, label %cond.true.1159, label %lor.lhs.false.1142

cond.false.1075:                                  ; preds = %cond.false.1073
  %155 = load i64, i64* %size, align 8
  %conv1076 = trunc i64 %155 to i32
  %cmp1077 = icmp slt i32 %conv1076, 0
  br i1 %cmp1077, label %cond.true.1079, label %cond.false.1115

cond.true.1079:                                   ; preds = %cond.false.1075
  %156 = load i64, i64* %size, align 8
  %conv1080 = trunc i64 %156 to i32
  %157 = load i64, i64* %size, align 8
  %conv1081 = trunc i64 %157 to i32
  %add1082 = add nsw i32 0, %conv1081
  %mul1083 = mul nsw i32 0, %add1082
  %sub1084 = sub nsw i32 %mul1083, 1
  %cmp1085 = icmp slt i32 %sub1084, 0
  br i1 %cmp1085, label %cond.true.1087, label %cond.false.1105

cond.true.1087:                                   ; preds = %cond.true.1079
  %158 = load i64, i64* %size, align 8
  %conv1088 = trunc i64 %158 to i32
  %add1089 = add nsw i32 0, %conv1088
  %mul1090 = mul nsw i32 0, %add1089
  %add1091 = add nsw i32 %mul1090, 0
  %neg1092 = xor i32 %add1091, -1
  %cmp1093 = icmp eq i32 %neg1092, -1
  %conv1094 = zext i1 %cmp1093 to i32
  %sub1095 = sub nsw i32 0, %conv1094
  %159 = load i64, i64* %size, align 8
  %conv1096 = trunc i64 %159 to i32
  %add1097 = add nsw i32 0, %conv1096
  %mul1098 = mul nsw i32 0, %add1097
  %add1099 = add nsw i32 %mul1098, 1
  %shl1100 = shl i32 %add1099, 30
  %sub1101 = sub nsw i32 %shl1100, 1
  %mul1102 = mul nsw i32 %sub1101, 2
  %add1103 = add nsw i32 %mul1102, 1
  %sub1104 = sub nsw i32 %sub1095, %add1103
  br label %cond.end.1110

cond.false.1105:                                  ; preds = %cond.true.1079
  %160 = load i64, i64* %size, align 8
  %conv1106 = trunc i64 %160 to i32
  %add1107 = add nsw i32 0, %conv1106
  %mul1108 = mul nsw i32 0, %add1107
  %add1109 = add nsw i32 %mul1108, 0
  br label %cond.end.1110

cond.end.1110:                                    ; preds = %cond.false.1105, %cond.true.1087
  %cond1111 = phi i32 [ %sub1104, %cond.true.1087 ], [ %add1109, %cond.false.1105 ]
  %div1112 = sdiv i32 %cond1111, 4
  %cmp1113 = icmp slt i32 %conv1080, %div1112
  br i1 %cmp1113, label %cond.true.1159, label %lor.lhs.false.1142

cond.false.1115:                                  ; preds = %cond.false.1075
  %161 = load i64, i64* %size, align 8
  %conv1116 = trunc i64 %161 to i32
  %add1117 = add nsw i32 0, %conv1116
  %mul1118 = mul nsw i32 0, %add1117
  %sub1119 = sub nsw i32 %mul1118, 1
  %cmp1120 = icmp slt i32 %sub1119, 0
  br i1 %cmp1120, label %cond.true.1122, label %cond.false.1131

cond.true.1122:                                   ; preds = %cond.false.1115
  %162 = load i64, i64* %size, align 8
  %conv1123 = trunc i64 %162 to i32
  %add1124 = add nsw i32 0, %conv1123
  %mul1125 = mul nsw i32 0, %add1124
  %add1126 = add nsw i32 %mul1125, 1
  %shl1127 = shl i32 %add1126, 30
  %sub1128 = sub nsw i32 %shl1127, 1
  %mul1129 = mul nsw i32 %sub1128, 2
  %add1130 = add nsw i32 %mul1129, 1
  br label %cond.end.1136

cond.false.1131:                                  ; preds = %cond.false.1115
  %163 = load i64, i64* %size, align 8
  %conv1132 = trunc i64 %163 to i32
  %add1133 = add nsw i32 0, %conv1132
  %mul1134 = mul nsw i32 0, %add1133
  %sub1135 = sub nsw i32 %mul1134, 1
  br label %cond.end.1136

cond.end.1136:                                    ; preds = %cond.false.1131, %cond.true.1122
  %cond1137 = phi i32 [ %add1130, %cond.true.1122 ], [ %sub1135, %cond.false.1131 ]
  %div1138 = sdiv i32 %cond1137, 4
  %164 = load i64, i64* %size, align 8
  %conv1139 = trunc i64 %164 to i32
  %cmp1140 = icmp slt i32 %div1138, %conv1139
  br i1 %cmp1140, label %cond.true.1159, label %lor.lhs.false.1142

lor.lhs.false.1142:                               ; preds = %cond.end.1136, %cond.end.1110, %cond.true.1074, %cond.end.1067, %cond.true.1036, %cond.end.1030
  %165 = load i64, i64* %size, align 8
  %conv1143 = trunc i64 %165 to i32
  %mul1144 = mul nsw i32 %conv1143, 4
  %mul1145 = mul nsw i32 0, %mul1144
  %sub1146 = sub nsw i32 %mul1145, 1
  %cmp1147 = icmp slt i32 %sub1146, 0
  br i1 %cmp1147, label %land.lhs.true.1149, label %lor.lhs.false.1154

land.lhs.true.1149:                               ; preds = %lor.lhs.false.1142
  %166 = load i64, i64* %size, align 8
  %conv1150 = trunc i64 %166 to i32
  %mul1151 = mul nsw i32 %conv1150, 4
  %cmp1152 = icmp slt i32 %mul1151, -2147483648
  br i1 %cmp1152, label %cond.true.1159, label %lor.lhs.false.1154

lor.lhs.false.1154:                               ; preds = %land.lhs.true.1149, %lor.lhs.false.1142
  %167 = load i64, i64* %size, align 8
  %conv1155 = trunc i64 %167 to i32
  %mul1156 = mul nsw i32 %conv1155, 4
  %cmp1157 = icmp slt i32 2147483647, %mul1156
  br i1 %cmp1157, label %cond.true.1159, label %cond.false.1175

cond.true.1159:                                   ; preds = %lor.lhs.false.1154, %land.lhs.true.1149, %cond.end.1136, %cond.end.1110, %cond.true.1074, %cond.end.1067, %cond.true.1036, %cond.end.1030, %land.lhs.true.999
  %168 = load i64, i64* %size, align 8
  %conv1160 = trunc i64 %168 to i32
  %mul1161 = mul i32 %conv1160, 4
  %cmp1162 = icmp ule i32 %mul1161, 2147483647
  br i1 %cmp1162, label %cond.true.1164, label %cond.false.1167

cond.true.1164:                                   ; preds = %cond.true.1159
  %169 = load i64, i64* %size, align 8
  %conv1165 = trunc i64 %169 to i32
  %mul1166 = mul i32 %conv1165, 4
  br label %cond.end.1172

cond.false.1167:                                  ; preds = %cond.true.1159
  %170 = load i64, i64* %size, align 8
  %conv1168 = trunc i64 %170 to i32
  %mul1169 = mul i32 %conv1168, 4
  %sub1170 = sub i32 %mul1169, -2147483648
  %add1171 = add nsw i32 %sub1170, -2147483648
  br label %cond.end.1172

cond.end.1172:                                    ; preds = %cond.false.1167, %cond.true.1164
  %cond1173 = phi i32 [ %mul1166, %cond.true.1164 ], [ %add1171, %cond.false.1167 ]
  %conv1174 = sext i32 %cond1173 to i64
  store i64 %conv1174, i64* %size4, align 8
  br i1 true, label %if.then.2167, label %if.end.2168

cond.false.1175:                                  ; preds = %lor.lhs.false.1154
  %171 = load i64, i64* %size, align 8
  %conv1176 = trunc i64 %171 to i32
  %mul1177 = mul i32 %conv1176, 4
  %cmp1178 = icmp ule i32 %mul1177, 2147483647
  br i1 %cmp1178, label %cond.true.1180, label %cond.false.1183

cond.true.1180:                                   ; preds = %cond.false.1175
  %172 = load i64, i64* %size, align 8
  %conv1181 = trunc i64 %172 to i32
  %mul1182 = mul i32 %conv1181, 4
  br label %cond.end.1188

cond.false.1183:                                  ; preds = %cond.false.1175
  %173 = load i64, i64* %size, align 8
  %conv1184 = trunc i64 %173 to i32
  %mul1185 = mul i32 %conv1184, 4
  %sub1186 = sub i32 %mul1185, -2147483648
  %add1187 = add nsw i32 %sub1186, -2147483648
  br label %cond.end.1188

cond.end.1188:                                    ; preds = %cond.false.1183, %cond.true.1180
  %cond1189 = phi i32 [ %mul1182, %cond.true.1180 ], [ %add1187, %cond.false.1183 ]
  %conv1190 = sext i32 %cond1189 to i64
  store i64 %conv1190, i64* %size4, align 8
  br i1 false, label %if.then.2167, label %if.end.2168

cond.false.1191:                                  ; preds = %cond.true.964
  %174 = load i64, i64* %size, align 8
  %add1192 = add nsw i64 0, %174
  %mul1193 = mul nsw i64 0, %add1192
  %sub1194 = sub nsw i64 %mul1193, 1
  %cmp1195 = icmp slt i64 %sub1194, 0
  br i1 %cmp1195, label %cond.true.1197, label %cond.false.1214

cond.true.1197:                                   ; preds = %cond.false.1191
  %175 = load i64, i64* %size, align 8
  %add1198 = add nsw i64 0, %175
  %mul1199 = mul nsw i64 0, %add1198
  %add1200 = add nsw i64 %mul1199, 0
  %neg1201 = xor i64 %add1200, -1
  %cmp1202 = icmp eq i64 %neg1201, -1
  %conv1203 = zext i1 %cmp1202 to i32
  %sub1204 = sub nsw i32 0, %conv1203
  %conv1205 = sext i32 %sub1204 to i64
  %176 = load i64, i64* %size, align 8
  %add1206 = add nsw i64 0, %176
  %mul1207 = mul nsw i64 0, %add1206
  %add1208 = add nsw i64 %mul1207, 1
  %shl1209 = shl i64 %add1208, 62
  %sub1210 = sub nsw i64 %shl1209, 1
  %mul1211 = mul nsw i64 %sub1210, 2
  %add1212 = add nsw i64 %mul1211, 1
  %sub1213 = sub nsw i64 %conv1205, %add1212
  br label %cond.end.1218

cond.false.1214:                                  ; preds = %cond.false.1191
  %177 = load i64, i64* %size, align 8
  %add1215 = add nsw i64 0, %177
  %mul1216 = mul nsw i64 0, %add1215
  %add1217 = add nsw i64 %mul1216, 0
  br label %cond.end.1218

cond.end.1218:                                    ; preds = %cond.false.1214, %cond.true.1197
  %cond1219 = phi i64 [ %sub1213, %cond.true.1197 ], [ %add1217, %cond.false.1214 ]
  %cmp1220 = icmp eq i64 %cond1219, 0
  br i1 %cmp1220, label %land.lhs.true.1222, label %lor.lhs.false.1225

land.lhs.true.1222:                               ; preds = %cond.end.1218
  %178 = load i64, i64* %size, align 8
  %cmp1223 = icmp slt i64 %178, 0
  br i1 %cmp1223, label %cond.true.1360, label %lor.lhs.false.1225

lor.lhs.false.1225:                               ; preds = %land.lhs.true.1222, %cond.end.1218
  br i1 false, label %cond.true.1226, label %cond.false.1286

cond.true.1226:                                   ; preds = %lor.lhs.false.1225
  %179 = load i64, i64* %size, align 8
  %cmp1227 = icmp slt i64 %179, 0
  br i1 %cmp1227, label %cond.true.1229, label %cond.false.1252

cond.true.1229:                                   ; preds = %cond.true.1226
  %180 = load i64, i64* %size, align 8
  %181 = load i64, i64* %size, align 8
  %add1230 = add nsw i64 0, %181
  %mul1231 = mul nsw i64 0, %add1230
  %sub1232 = sub nsw i64 %mul1231, 1
  %cmp1233 = icmp slt i64 %sub1232, 0
  br i1 %cmp1233, label %cond.true.1235, label %cond.false.1243

cond.true.1235:                                   ; preds = %cond.true.1229
  %182 = load i64, i64* %size, align 8
  %add1236 = add nsw i64 0, %182
  %mul1237 = mul nsw i64 0, %add1236
  %add1238 = add nsw i64 %mul1237, 1
  %shl1239 = shl i64 %add1238, 62
  %sub1240 = sub nsw i64 %shl1239, 1
  %mul1241 = mul nsw i64 %sub1240, 2
  %add1242 = add nsw i64 %mul1241, 1
  br label %cond.end.1247

cond.false.1243:                                  ; preds = %cond.true.1229
  %183 = load i64, i64* %size, align 8
  %add1244 = add nsw i64 0, %183
  %mul1245 = mul nsw i64 0, %add1244
  %sub1246 = sub nsw i64 %mul1245, 1
  br label %cond.end.1247

cond.end.1247:                                    ; preds = %cond.false.1243, %cond.true.1235
  %cond1248 = phi i64 [ %add1242, %cond.true.1235 ], [ %sub1246, %cond.false.1243 ]
  %div1249 = sdiv i64 %cond1248, 4
  %cmp1250 = icmp slt i64 %180, %div1249
  br i1 %cmp1250, label %cond.true.1360, label %lor.lhs.false.1346

cond.false.1252:                                  ; preds = %cond.true.1226
  br i1 false, label %cond.true.1253, label %cond.false.1254

cond.true.1253:                                   ; preds = %cond.false.1252
  br i1 false, label %cond.true.1360, label %lor.lhs.false.1346

cond.false.1254:                                  ; preds = %cond.false.1252
  %184 = load i64, i64* %size, align 8
  %add1255 = add nsw i64 0, %184
  %mul1256 = mul nsw i64 0, %add1255
  %sub1257 = sub nsw i64 %mul1256, 1
  %cmp1258 = icmp slt i64 %sub1257, 0
  br i1 %cmp1258, label %cond.true.1260, label %cond.false.1277

cond.true.1260:                                   ; preds = %cond.false.1254
  %185 = load i64, i64* %size, align 8
  %add1261 = add nsw i64 0, %185
  %mul1262 = mul nsw i64 0, %add1261
  %add1263 = add nsw i64 %mul1262, 0
  %neg1264 = xor i64 %add1263, -1
  %cmp1265 = icmp eq i64 %neg1264, -1
  %conv1266 = zext i1 %cmp1265 to i32
  %sub1267 = sub nsw i32 0, %conv1266
  %conv1268 = sext i32 %sub1267 to i64
  %186 = load i64, i64* %size, align 8
  %add1269 = add nsw i64 0, %186
  %mul1270 = mul nsw i64 0, %add1269
  %add1271 = add nsw i64 %mul1270, 1
  %shl1272 = shl i64 %add1271, 62
  %sub1273 = sub nsw i64 %shl1272, 1
  %mul1274 = mul nsw i64 %sub1273, 2
  %add1275 = add nsw i64 %mul1274, 1
  %sub1276 = sub nsw i64 %conv1268, %add1275
  br label %cond.end.1281

cond.false.1277:                                  ; preds = %cond.false.1254
  %187 = load i64, i64* %size, align 8
  %add1278 = add nsw i64 0, %187
  %mul1279 = mul nsw i64 0, %add1278
  %add1280 = add nsw i64 %mul1279, 0
  br label %cond.end.1281

cond.end.1281:                                    ; preds = %cond.false.1277, %cond.true.1260
  %cond1282 = phi i64 [ %sub1276, %cond.true.1260 ], [ %add1280, %cond.false.1277 ]
  %div1283 = sdiv i64 %cond1282, 4
  %188 = load i64, i64* %size, align 8
  %cmp1284 = icmp slt i64 %div1283, %188
  br i1 %cmp1284, label %cond.true.1360, label %lor.lhs.false.1346

cond.false.1286:                                  ; preds = %lor.lhs.false.1225
  br i1 false, label %cond.true.1287, label %cond.false.1288

cond.true.1287:                                   ; preds = %cond.false.1286
  br i1 false, label %cond.true.1360, label %lor.lhs.false.1346

cond.false.1288:                                  ; preds = %cond.false.1286
  %189 = load i64, i64* %size, align 8
  %cmp1289 = icmp slt i64 %189, 0
  br i1 %cmp1289, label %cond.true.1291, label %cond.false.1323

cond.true.1291:                                   ; preds = %cond.false.1288
  %190 = load i64, i64* %size, align 8
  %191 = load i64, i64* %size, align 8
  %add1292 = add nsw i64 0, %191
  %mul1293 = mul nsw i64 0, %add1292
  %sub1294 = sub nsw i64 %mul1293, 1
  %cmp1295 = icmp slt i64 %sub1294, 0
  br i1 %cmp1295, label %cond.true.1297, label %cond.false.1314

cond.true.1297:                                   ; preds = %cond.true.1291
  %192 = load i64, i64* %size, align 8
  %add1298 = add nsw i64 0, %192
  %mul1299 = mul nsw i64 0, %add1298
  %add1300 = add nsw i64 %mul1299, 0
  %neg1301 = xor i64 %add1300, -1
  %cmp1302 = icmp eq i64 %neg1301, -1
  %conv1303 = zext i1 %cmp1302 to i32
  %sub1304 = sub nsw i32 0, %conv1303
  %conv1305 = sext i32 %sub1304 to i64
  %193 = load i64, i64* %size, align 8
  %add1306 = add nsw i64 0, %193
  %mul1307 = mul nsw i64 0, %add1306
  %add1308 = add nsw i64 %mul1307, 1
  %shl1309 = shl i64 %add1308, 62
  %sub1310 = sub nsw i64 %shl1309, 1
  %mul1311 = mul nsw i64 %sub1310, 2
  %add1312 = add nsw i64 %mul1311, 1
  %sub1313 = sub nsw i64 %conv1305, %add1312
  br label %cond.end.1318

cond.false.1314:                                  ; preds = %cond.true.1291
  %194 = load i64, i64* %size, align 8
  %add1315 = add nsw i64 0, %194
  %mul1316 = mul nsw i64 0, %add1315
  %add1317 = add nsw i64 %mul1316, 0
  br label %cond.end.1318

cond.end.1318:                                    ; preds = %cond.false.1314, %cond.true.1297
  %cond1319 = phi i64 [ %sub1313, %cond.true.1297 ], [ %add1317, %cond.false.1314 ]
  %div1320 = sdiv i64 %cond1319, 4
  %cmp1321 = icmp slt i64 %190, %div1320
  br i1 %cmp1321, label %cond.true.1360, label %lor.lhs.false.1346

cond.false.1323:                                  ; preds = %cond.false.1288
  %195 = load i64, i64* %size, align 8
  %add1324 = add nsw i64 0, %195
  %mul1325 = mul nsw i64 0, %add1324
  %sub1326 = sub nsw i64 %mul1325, 1
  %cmp1327 = icmp slt i64 %sub1326, 0
  br i1 %cmp1327, label %cond.true.1329, label %cond.false.1337

cond.true.1329:                                   ; preds = %cond.false.1323
  %196 = load i64, i64* %size, align 8
  %add1330 = add nsw i64 0, %196
  %mul1331 = mul nsw i64 0, %add1330
  %add1332 = add nsw i64 %mul1331, 1
  %shl1333 = shl i64 %add1332, 62
  %sub1334 = sub nsw i64 %shl1333, 1
  %mul1335 = mul nsw i64 %sub1334, 2
  %add1336 = add nsw i64 %mul1335, 1
  br label %cond.end.1341

cond.false.1337:                                  ; preds = %cond.false.1323
  %197 = load i64, i64* %size, align 8
  %add1338 = add nsw i64 0, %197
  %mul1339 = mul nsw i64 0, %add1338
  %sub1340 = sub nsw i64 %mul1339, 1
  br label %cond.end.1341

cond.end.1341:                                    ; preds = %cond.false.1337, %cond.true.1329
  %cond1342 = phi i64 [ %add1336, %cond.true.1329 ], [ %sub1340, %cond.false.1337 ]
  %div1343 = sdiv i64 %cond1342, 4
  %198 = load i64, i64* %size, align 8
  %cmp1344 = icmp slt i64 %div1343, %198
  br i1 %cmp1344, label %cond.true.1360, label %lor.lhs.false.1346

lor.lhs.false.1346:                               ; preds = %cond.end.1341, %cond.end.1318, %cond.true.1287, %cond.end.1281, %cond.true.1253, %cond.end.1247
  %199 = load i64, i64* %size, align 8
  %mul1347 = mul nsw i64 %199, 4
  %mul1348 = mul nsw i64 0, %mul1347
  %sub1349 = sub nsw i64 %mul1348, 1
  %cmp1350 = icmp slt i64 %sub1349, 0
  br i1 %cmp1350, label %land.lhs.true.1352, label %lor.lhs.false.1356

land.lhs.true.1352:                               ; preds = %lor.lhs.false.1346
  %200 = load i64, i64* %size, align 8
  %mul1353 = mul nsw i64 %200, 4
  %cmp1354 = icmp slt i64 %mul1353, -2147483648
  br i1 %cmp1354, label %cond.true.1360, label %lor.lhs.false.1356

lor.lhs.false.1356:                               ; preds = %land.lhs.true.1352, %lor.lhs.false.1346
  %201 = load i64, i64* %size, align 8
  %mul1357 = mul nsw i64 %201, 4
  %cmp1358 = icmp slt i64 2147483647, %mul1357
  br i1 %cmp1358, label %cond.true.1360, label %cond.false.1376

cond.true.1360:                                   ; preds = %lor.lhs.false.1356, %land.lhs.true.1352, %cond.end.1341, %cond.end.1318, %cond.true.1287, %cond.end.1281, %cond.true.1253, %cond.end.1247, %land.lhs.true.1222
  %202 = load i64, i64* %size, align 8
  %conv1361 = trunc i64 %202 to i32
  %mul1362 = mul i32 %conv1361, 4
  %cmp1363 = icmp ule i32 %mul1362, 2147483647
  br i1 %cmp1363, label %cond.true.1365, label %cond.false.1368

cond.true.1365:                                   ; preds = %cond.true.1360
  %203 = load i64, i64* %size, align 8
  %conv1366 = trunc i64 %203 to i32
  %mul1367 = mul i32 %conv1366, 4
  br label %cond.end.1373

cond.false.1368:                                  ; preds = %cond.true.1360
  %204 = load i64, i64* %size, align 8
  %conv1369 = trunc i64 %204 to i32
  %mul1370 = mul i32 %conv1369, 4
  %sub1371 = sub i32 %mul1370, -2147483648
  %add1372 = add nsw i32 %sub1371, -2147483648
  br label %cond.end.1373

cond.end.1373:                                    ; preds = %cond.false.1368, %cond.true.1365
  %cond1374 = phi i32 [ %mul1367, %cond.true.1365 ], [ %add1372, %cond.false.1368 ]
  %conv1375 = sext i32 %cond1374 to i64
  store i64 %conv1375, i64* %size4, align 8
  br i1 true, label %if.then.2167, label %if.end.2168

cond.false.1376:                                  ; preds = %lor.lhs.false.1356
  %205 = load i64, i64* %size, align 8
  %conv1377 = trunc i64 %205 to i32
  %mul1378 = mul i32 %conv1377, 4
  %cmp1379 = icmp ule i32 %mul1378, 2147483647
  br i1 %cmp1379, label %cond.true.1381, label %cond.false.1384

cond.true.1381:                                   ; preds = %cond.false.1376
  %206 = load i64, i64* %size, align 8
  %conv1382 = trunc i64 %206 to i32
  %mul1383 = mul i32 %conv1382, 4
  br label %cond.end.1389

cond.false.1384:                                  ; preds = %cond.false.1376
  %207 = load i64, i64* %size, align 8
  %conv1385 = trunc i64 %207 to i32
  %mul1386 = mul i32 %conv1385, 4
  %sub1387 = sub i32 %mul1386, -2147483648
  %add1388 = add nsw i32 %sub1387, -2147483648
  br label %cond.end.1389

cond.end.1389:                                    ; preds = %cond.false.1384, %cond.true.1381
  %cond1390 = phi i32 [ %mul1383, %cond.true.1381 ], [ %add1388, %cond.false.1384 ]
  %conv1391 = sext i32 %cond1390 to i64
  store i64 %conv1391, i64* %size4, align 8
  br i1 false, label %if.then.2167, label %if.end.2168

cond.false.1392:                                  ; preds = %cond.false.963
  br i1 true, label %cond.true.1393, label %cond.false.1780

cond.true.1393:                                   ; preds = %cond.false.1392
  br i1 false, label %cond.true.1394, label %cond.false.1587

cond.true.1394:                                   ; preds = %cond.true.1393
  %208 = load i64, i64* %size, align 8
  %add1395 = add nsw i64 0, %208
  %mul1396 = mul nsw i64 0, %add1395
  %sub1397 = sub nsw i64 %mul1396, 1
  %cmp1398 = icmp slt i64 %sub1397, 0
  br i1 %cmp1398, label %cond.true.1400, label %cond.false.1417

cond.true.1400:                                   ; preds = %cond.true.1394
  %209 = load i64, i64* %size, align 8
  %add1401 = add nsw i64 0, %209
  %mul1402 = mul nsw i64 0, %add1401
  %add1403 = add nsw i64 %mul1402, 0
  %neg1404 = xor i64 %add1403, -1
  %cmp1405 = icmp eq i64 %neg1404, -1
  %conv1406 = zext i1 %cmp1405 to i32
  %sub1407 = sub nsw i32 0, %conv1406
  %conv1408 = sext i32 %sub1407 to i64
  %210 = load i64, i64* %size, align 8
  %add1409 = add nsw i64 0, %210
  %mul1410 = mul nsw i64 0, %add1409
  %add1411 = add nsw i64 %mul1410, 1
  %shl1412 = shl i64 %add1411, 62
  %sub1413 = sub nsw i64 %shl1412, 1
  %mul1414 = mul nsw i64 %sub1413, 2
  %add1415 = add nsw i64 %mul1414, 1
  %sub1416 = sub nsw i64 %conv1408, %add1415
  br label %cond.end.1421

cond.false.1417:                                  ; preds = %cond.true.1394
  %211 = load i64, i64* %size, align 8
  %add1418 = add nsw i64 0, %211
  %mul1419 = mul nsw i64 0, %add1418
  %add1420 = add nsw i64 %mul1419, 0
  br label %cond.end.1421

cond.end.1421:                                    ; preds = %cond.false.1417, %cond.true.1400
  %cond1422 = phi i64 [ %sub1416, %cond.true.1400 ], [ %add1420, %cond.false.1417 ]
  %cmp1423 = icmp eq i64 %cond1422, 0
  br i1 %cmp1423, label %land.lhs.true.1425, label %lor.lhs.false.1428

land.lhs.true.1425:                               ; preds = %cond.end.1421
  %212 = load i64, i64* %size, align 8
  %cmp1426 = icmp slt i64 %212, 0
  br i1 %cmp1426, label %cond.true.1563, label %lor.lhs.false.1428

lor.lhs.false.1428:                               ; preds = %land.lhs.true.1425, %cond.end.1421
  br i1 false, label %cond.true.1429, label %cond.false.1489

cond.true.1429:                                   ; preds = %lor.lhs.false.1428
  %213 = load i64, i64* %size, align 8
  %cmp1430 = icmp slt i64 %213, 0
  br i1 %cmp1430, label %cond.true.1432, label %cond.false.1455

cond.true.1432:                                   ; preds = %cond.true.1429
  %214 = load i64, i64* %size, align 8
  %215 = load i64, i64* %size, align 8
  %add1433 = add nsw i64 0, %215
  %mul1434 = mul nsw i64 0, %add1433
  %sub1435 = sub nsw i64 %mul1434, 1
  %cmp1436 = icmp slt i64 %sub1435, 0
  br i1 %cmp1436, label %cond.true.1438, label %cond.false.1446

cond.true.1438:                                   ; preds = %cond.true.1432
  %216 = load i64, i64* %size, align 8
  %add1439 = add nsw i64 0, %216
  %mul1440 = mul nsw i64 0, %add1439
  %add1441 = add nsw i64 %mul1440, 1
  %shl1442 = shl i64 %add1441, 62
  %sub1443 = sub nsw i64 %shl1442, 1
  %mul1444 = mul nsw i64 %sub1443, 2
  %add1445 = add nsw i64 %mul1444, 1
  br label %cond.end.1450

cond.false.1446:                                  ; preds = %cond.true.1432
  %217 = load i64, i64* %size, align 8
  %add1447 = add nsw i64 0, %217
  %mul1448 = mul nsw i64 0, %add1447
  %sub1449 = sub nsw i64 %mul1448, 1
  br label %cond.end.1450

cond.end.1450:                                    ; preds = %cond.false.1446, %cond.true.1438
  %cond1451 = phi i64 [ %add1445, %cond.true.1438 ], [ %sub1449, %cond.false.1446 ]
  %div1452 = sdiv i64 %cond1451, 4
  %cmp1453 = icmp slt i64 %214, %div1452
  br i1 %cmp1453, label %cond.true.1563, label %lor.lhs.false.1549

cond.false.1455:                                  ; preds = %cond.true.1429
  br i1 false, label %cond.true.1456, label %cond.false.1457

cond.true.1456:                                   ; preds = %cond.false.1455
  br i1 false, label %cond.true.1563, label %lor.lhs.false.1549

cond.false.1457:                                  ; preds = %cond.false.1455
  %218 = load i64, i64* %size, align 8
  %add1458 = add nsw i64 0, %218
  %mul1459 = mul nsw i64 0, %add1458
  %sub1460 = sub nsw i64 %mul1459, 1
  %cmp1461 = icmp slt i64 %sub1460, 0
  br i1 %cmp1461, label %cond.true.1463, label %cond.false.1480

cond.true.1463:                                   ; preds = %cond.false.1457
  %219 = load i64, i64* %size, align 8
  %add1464 = add nsw i64 0, %219
  %mul1465 = mul nsw i64 0, %add1464
  %add1466 = add nsw i64 %mul1465, 0
  %neg1467 = xor i64 %add1466, -1
  %cmp1468 = icmp eq i64 %neg1467, -1
  %conv1469 = zext i1 %cmp1468 to i32
  %sub1470 = sub nsw i32 0, %conv1469
  %conv1471 = sext i32 %sub1470 to i64
  %220 = load i64, i64* %size, align 8
  %add1472 = add nsw i64 0, %220
  %mul1473 = mul nsw i64 0, %add1472
  %add1474 = add nsw i64 %mul1473, 1
  %shl1475 = shl i64 %add1474, 62
  %sub1476 = sub nsw i64 %shl1475, 1
  %mul1477 = mul nsw i64 %sub1476, 2
  %add1478 = add nsw i64 %mul1477, 1
  %sub1479 = sub nsw i64 %conv1471, %add1478
  br label %cond.end.1484

cond.false.1480:                                  ; preds = %cond.false.1457
  %221 = load i64, i64* %size, align 8
  %add1481 = add nsw i64 0, %221
  %mul1482 = mul nsw i64 0, %add1481
  %add1483 = add nsw i64 %mul1482, 0
  br label %cond.end.1484

cond.end.1484:                                    ; preds = %cond.false.1480, %cond.true.1463
  %cond1485 = phi i64 [ %sub1479, %cond.true.1463 ], [ %add1483, %cond.false.1480 ]
  %div1486 = sdiv i64 %cond1485, 4
  %222 = load i64, i64* %size, align 8
  %cmp1487 = icmp slt i64 %div1486, %222
  br i1 %cmp1487, label %cond.true.1563, label %lor.lhs.false.1549

cond.false.1489:                                  ; preds = %lor.lhs.false.1428
  br i1 false, label %cond.true.1490, label %cond.false.1491

cond.true.1490:                                   ; preds = %cond.false.1489
  br i1 false, label %cond.true.1563, label %lor.lhs.false.1549

cond.false.1491:                                  ; preds = %cond.false.1489
  %223 = load i64, i64* %size, align 8
  %cmp1492 = icmp slt i64 %223, 0
  br i1 %cmp1492, label %cond.true.1494, label %cond.false.1526

cond.true.1494:                                   ; preds = %cond.false.1491
  %224 = load i64, i64* %size, align 8
  %225 = load i64, i64* %size, align 8
  %add1495 = add nsw i64 0, %225
  %mul1496 = mul nsw i64 0, %add1495
  %sub1497 = sub nsw i64 %mul1496, 1
  %cmp1498 = icmp slt i64 %sub1497, 0
  br i1 %cmp1498, label %cond.true.1500, label %cond.false.1517

cond.true.1500:                                   ; preds = %cond.true.1494
  %226 = load i64, i64* %size, align 8
  %add1501 = add nsw i64 0, %226
  %mul1502 = mul nsw i64 0, %add1501
  %add1503 = add nsw i64 %mul1502, 0
  %neg1504 = xor i64 %add1503, -1
  %cmp1505 = icmp eq i64 %neg1504, -1
  %conv1506 = zext i1 %cmp1505 to i32
  %sub1507 = sub nsw i32 0, %conv1506
  %conv1508 = sext i32 %sub1507 to i64
  %227 = load i64, i64* %size, align 8
  %add1509 = add nsw i64 0, %227
  %mul1510 = mul nsw i64 0, %add1509
  %add1511 = add nsw i64 %mul1510, 1
  %shl1512 = shl i64 %add1511, 62
  %sub1513 = sub nsw i64 %shl1512, 1
  %mul1514 = mul nsw i64 %sub1513, 2
  %add1515 = add nsw i64 %mul1514, 1
  %sub1516 = sub nsw i64 %conv1508, %add1515
  br label %cond.end.1521

cond.false.1517:                                  ; preds = %cond.true.1494
  %228 = load i64, i64* %size, align 8
  %add1518 = add nsw i64 0, %228
  %mul1519 = mul nsw i64 0, %add1518
  %add1520 = add nsw i64 %mul1519, 0
  br label %cond.end.1521

cond.end.1521:                                    ; preds = %cond.false.1517, %cond.true.1500
  %cond1522 = phi i64 [ %sub1516, %cond.true.1500 ], [ %add1520, %cond.false.1517 ]
  %div1523 = sdiv i64 %cond1522, 4
  %cmp1524 = icmp slt i64 %224, %div1523
  br i1 %cmp1524, label %cond.true.1563, label %lor.lhs.false.1549

cond.false.1526:                                  ; preds = %cond.false.1491
  %229 = load i64, i64* %size, align 8
  %add1527 = add nsw i64 0, %229
  %mul1528 = mul nsw i64 0, %add1527
  %sub1529 = sub nsw i64 %mul1528, 1
  %cmp1530 = icmp slt i64 %sub1529, 0
  br i1 %cmp1530, label %cond.true.1532, label %cond.false.1540

cond.true.1532:                                   ; preds = %cond.false.1526
  %230 = load i64, i64* %size, align 8
  %add1533 = add nsw i64 0, %230
  %mul1534 = mul nsw i64 0, %add1533
  %add1535 = add nsw i64 %mul1534, 1
  %shl1536 = shl i64 %add1535, 62
  %sub1537 = sub nsw i64 %shl1536, 1
  %mul1538 = mul nsw i64 %sub1537, 2
  %add1539 = add nsw i64 %mul1538, 1
  br label %cond.end.1544

cond.false.1540:                                  ; preds = %cond.false.1526
  %231 = load i64, i64* %size, align 8
  %add1541 = add nsw i64 0, %231
  %mul1542 = mul nsw i64 0, %add1541
  %sub1543 = sub nsw i64 %mul1542, 1
  br label %cond.end.1544

cond.end.1544:                                    ; preds = %cond.false.1540, %cond.true.1532
  %cond1545 = phi i64 [ %add1539, %cond.true.1532 ], [ %sub1543, %cond.false.1540 ]
  %div1546 = sdiv i64 %cond1545, 4
  %232 = load i64, i64* %size, align 8
  %cmp1547 = icmp slt i64 %div1546, %232
  br i1 %cmp1547, label %cond.true.1563, label %lor.lhs.false.1549

lor.lhs.false.1549:                               ; preds = %cond.end.1544, %cond.end.1521, %cond.true.1490, %cond.end.1484, %cond.true.1456, %cond.end.1450
  %233 = load i64, i64* %size, align 8
  %mul1550 = mul nsw i64 %233, 4
  %mul1551 = mul nsw i64 0, %mul1550
  %sub1552 = sub nsw i64 %mul1551, 1
  %cmp1553 = icmp slt i64 %sub1552, 0
  br i1 %cmp1553, label %land.lhs.true.1555, label %lor.lhs.false.1559

land.lhs.true.1555:                               ; preds = %lor.lhs.false.1549
  %234 = load i64, i64* %size, align 8
  %mul1556 = mul nsw i64 %234, 4
  %cmp1557 = icmp slt i64 %mul1556, -9223372036854775808
  br i1 %cmp1557, label %cond.true.1563, label %lor.lhs.false.1559

lor.lhs.false.1559:                               ; preds = %land.lhs.true.1555, %lor.lhs.false.1549
  %235 = load i64, i64* %size, align 8
  %mul1560 = mul nsw i64 %235, 4
  %cmp1561 = icmp slt i64 9223372036854775807, %mul1560
  br i1 %cmp1561, label %cond.true.1563, label %cond.false.1575

cond.true.1563:                                   ; preds = %lor.lhs.false.1559, %land.lhs.true.1555, %cond.end.1544, %cond.end.1521, %cond.true.1490, %cond.end.1484, %cond.true.1456, %cond.end.1450, %land.lhs.true.1425
  %236 = load i64, i64* %size, align 8
  %mul1564 = mul i64 %236, 4
  %cmp1565 = icmp ule i64 %mul1564, 9223372036854775807
  br i1 %cmp1565, label %cond.true.1567, label %cond.false.1569

cond.true.1567:                                   ; preds = %cond.true.1563
  %237 = load i64, i64* %size, align 8
  %mul1568 = mul i64 %237, 4
  br label %cond.end.1573

cond.false.1569:                                  ; preds = %cond.true.1563
  %238 = load i64, i64* %size, align 8
  %mul1570 = mul i64 %238, 4
  %sub1571 = sub i64 %mul1570, -9223372036854775808
  %add1572 = add nsw i64 %sub1571, -9223372036854775808
  br label %cond.end.1573

cond.end.1573:                                    ; preds = %cond.false.1569, %cond.true.1567
  %cond1574 = phi i64 [ %mul1568, %cond.true.1567 ], [ %add1572, %cond.false.1569 ]
  store i64 %cond1574, i64* %size4, align 8
  br i1 true, label %if.then.2167, label %if.end.2168

cond.false.1575:                                  ; preds = %lor.lhs.false.1559
  %239 = load i64, i64* %size, align 8
  %mul1576 = mul i64 %239, 4
  %cmp1577 = icmp ule i64 %mul1576, 9223372036854775807
  br i1 %cmp1577, label %cond.true.1579, label %cond.false.1581

cond.true.1579:                                   ; preds = %cond.false.1575
  %240 = load i64, i64* %size, align 8
  %mul1580 = mul i64 %240, 4
  br label %cond.end.1585

cond.false.1581:                                  ; preds = %cond.false.1575
  %241 = load i64, i64* %size, align 8
  %mul1582 = mul i64 %241, 4
  %sub1583 = sub i64 %mul1582, -9223372036854775808
  %add1584 = add nsw i64 %sub1583, -9223372036854775808
  br label %cond.end.1585

cond.end.1585:                                    ; preds = %cond.false.1581, %cond.true.1579
  %cond1586 = phi i64 [ %mul1580, %cond.true.1579 ], [ %add1584, %cond.false.1581 ]
  store i64 %cond1586, i64* %size4, align 8
  br i1 false, label %if.then.2167, label %if.end.2168

cond.false.1587:                                  ; preds = %cond.true.1393
  %242 = load i64, i64* %size, align 8
  %add1588 = add nsw i64 0, %242
  %mul1589 = mul nsw i64 0, %add1588
  %sub1590 = sub nsw i64 %mul1589, 1
  %cmp1591 = icmp slt i64 %sub1590, 0
  br i1 %cmp1591, label %cond.true.1593, label %cond.false.1610

cond.true.1593:                                   ; preds = %cond.false.1587
  %243 = load i64, i64* %size, align 8
  %add1594 = add nsw i64 0, %243
  %mul1595 = mul nsw i64 0, %add1594
  %add1596 = add nsw i64 %mul1595, 0
  %neg1597 = xor i64 %add1596, -1
  %cmp1598 = icmp eq i64 %neg1597, -1
  %conv1599 = zext i1 %cmp1598 to i32
  %sub1600 = sub nsw i32 0, %conv1599
  %conv1601 = sext i32 %sub1600 to i64
  %244 = load i64, i64* %size, align 8
  %add1602 = add nsw i64 0, %244
  %mul1603 = mul nsw i64 0, %add1602
  %add1604 = add nsw i64 %mul1603, 1
  %shl1605 = shl i64 %add1604, 62
  %sub1606 = sub nsw i64 %shl1605, 1
  %mul1607 = mul nsw i64 %sub1606, 2
  %add1608 = add nsw i64 %mul1607, 1
  %sub1609 = sub nsw i64 %conv1601, %add1608
  br label %cond.end.1614

cond.false.1610:                                  ; preds = %cond.false.1587
  %245 = load i64, i64* %size, align 8
  %add1611 = add nsw i64 0, %245
  %mul1612 = mul nsw i64 0, %add1611
  %add1613 = add nsw i64 %mul1612, 0
  br label %cond.end.1614

cond.end.1614:                                    ; preds = %cond.false.1610, %cond.true.1593
  %cond1615 = phi i64 [ %sub1609, %cond.true.1593 ], [ %add1613, %cond.false.1610 ]
  %cmp1616 = icmp eq i64 %cond1615, 0
  br i1 %cmp1616, label %land.lhs.true.1618, label %lor.lhs.false.1621

land.lhs.true.1618:                               ; preds = %cond.end.1614
  %246 = load i64, i64* %size, align 8
  %cmp1619 = icmp slt i64 %246, 0
  br i1 %cmp1619, label %cond.true.1756, label %lor.lhs.false.1621

lor.lhs.false.1621:                               ; preds = %land.lhs.true.1618, %cond.end.1614
  br i1 false, label %cond.true.1622, label %cond.false.1682

cond.true.1622:                                   ; preds = %lor.lhs.false.1621
  %247 = load i64, i64* %size, align 8
  %cmp1623 = icmp slt i64 %247, 0
  br i1 %cmp1623, label %cond.true.1625, label %cond.false.1648

cond.true.1625:                                   ; preds = %cond.true.1622
  %248 = load i64, i64* %size, align 8
  %249 = load i64, i64* %size, align 8
  %add1626 = add nsw i64 0, %249
  %mul1627 = mul nsw i64 0, %add1626
  %sub1628 = sub nsw i64 %mul1627, 1
  %cmp1629 = icmp slt i64 %sub1628, 0
  br i1 %cmp1629, label %cond.true.1631, label %cond.false.1639

cond.true.1631:                                   ; preds = %cond.true.1625
  %250 = load i64, i64* %size, align 8
  %add1632 = add nsw i64 0, %250
  %mul1633 = mul nsw i64 0, %add1632
  %add1634 = add nsw i64 %mul1633, 1
  %shl1635 = shl i64 %add1634, 62
  %sub1636 = sub nsw i64 %shl1635, 1
  %mul1637 = mul nsw i64 %sub1636, 2
  %add1638 = add nsw i64 %mul1637, 1
  br label %cond.end.1643

cond.false.1639:                                  ; preds = %cond.true.1625
  %251 = load i64, i64* %size, align 8
  %add1640 = add nsw i64 0, %251
  %mul1641 = mul nsw i64 0, %add1640
  %sub1642 = sub nsw i64 %mul1641, 1
  br label %cond.end.1643

cond.end.1643:                                    ; preds = %cond.false.1639, %cond.true.1631
  %cond1644 = phi i64 [ %add1638, %cond.true.1631 ], [ %sub1642, %cond.false.1639 ]
  %div1645 = sdiv i64 %cond1644, 4
  %cmp1646 = icmp slt i64 %248, %div1645
  br i1 %cmp1646, label %cond.true.1756, label %lor.lhs.false.1742

cond.false.1648:                                  ; preds = %cond.true.1622
  br i1 false, label %cond.true.1649, label %cond.false.1650

cond.true.1649:                                   ; preds = %cond.false.1648
  br i1 false, label %cond.true.1756, label %lor.lhs.false.1742

cond.false.1650:                                  ; preds = %cond.false.1648
  %252 = load i64, i64* %size, align 8
  %add1651 = add nsw i64 0, %252
  %mul1652 = mul nsw i64 0, %add1651
  %sub1653 = sub nsw i64 %mul1652, 1
  %cmp1654 = icmp slt i64 %sub1653, 0
  br i1 %cmp1654, label %cond.true.1656, label %cond.false.1673

cond.true.1656:                                   ; preds = %cond.false.1650
  %253 = load i64, i64* %size, align 8
  %add1657 = add nsw i64 0, %253
  %mul1658 = mul nsw i64 0, %add1657
  %add1659 = add nsw i64 %mul1658, 0
  %neg1660 = xor i64 %add1659, -1
  %cmp1661 = icmp eq i64 %neg1660, -1
  %conv1662 = zext i1 %cmp1661 to i32
  %sub1663 = sub nsw i32 0, %conv1662
  %conv1664 = sext i32 %sub1663 to i64
  %254 = load i64, i64* %size, align 8
  %add1665 = add nsw i64 0, %254
  %mul1666 = mul nsw i64 0, %add1665
  %add1667 = add nsw i64 %mul1666, 1
  %shl1668 = shl i64 %add1667, 62
  %sub1669 = sub nsw i64 %shl1668, 1
  %mul1670 = mul nsw i64 %sub1669, 2
  %add1671 = add nsw i64 %mul1670, 1
  %sub1672 = sub nsw i64 %conv1664, %add1671
  br label %cond.end.1677

cond.false.1673:                                  ; preds = %cond.false.1650
  %255 = load i64, i64* %size, align 8
  %add1674 = add nsw i64 0, %255
  %mul1675 = mul nsw i64 0, %add1674
  %add1676 = add nsw i64 %mul1675, 0
  br label %cond.end.1677

cond.end.1677:                                    ; preds = %cond.false.1673, %cond.true.1656
  %cond1678 = phi i64 [ %sub1672, %cond.true.1656 ], [ %add1676, %cond.false.1673 ]
  %div1679 = sdiv i64 %cond1678, 4
  %256 = load i64, i64* %size, align 8
  %cmp1680 = icmp slt i64 %div1679, %256
  br i1 %cmp1680, label %cond.true.1756, label %lor.lhs.false.1742

cond.false.1682:                                  ; preds = %lor.lhs.false.1621
  br i1 false, label %cond.true.1683, label %cond.false.1684

cond.true.1683:                                   ; preds = %cond.false.1682
  br i1 false, label %cond.true.1756, label %lor.lhs.false.1742

cond.false.1684:                                  ; preds = %cond.false.1682
  %257 = load i64, i64* %size, align 8
  %cmp1685 = icmp slt i64 %257, 0
  br i1 %cmp1685, label %cond.true.1687, label %cond.false.1719

cond.true.1687:                                   ; preds = %cond.false.1684
  %258 = load i64, i64* %size, align 8
  %259 = load i64, i64* %size, align 8
  %add1688 = add nsw i64 0, %259
  %mul1689 = mul nsw i64 0, %add1688
  %sub1690 = sub nsw i64 %mul1689, 1
  %cmp1691 = icmp slt i64 %sub1690, 0
  br i1 %cmp1691, label %cond.true.1693, label %cond.false.1710

cond.true.1693:                                   ; preds = %cond.true.1687
  %260 = load i64, i64* %size, align 8
  %add1694 = add nsw i64 0, %260
  %mul1695 = mul nsw i64 0, %add1694
  %add1696 = add nsw i64 %mul1695, 0
  %neg1697 = xor i64 %add1696, -1
  %cmp1698 = icmp eq i64 %neg1697, -1
  %conv1699 = zext i1 %cmp1698 to i32
  %sub1700 = sub nsw i32 0, %conv1699
  %conv1701 = sext i32 %sub1700 to i64
  %261 = load i64, i64* %size, align 8
  %add1702 = add nsw i64 0, %261
  %mul1703 = mul nsw i64 0, %add1702
  %add1704 = add nsw i64 %mul1703, 1
  %shl1705 = shl i64 %add1704, 62
  %sub1706 = sub nsw i64 %shl1705, 1
  %mul1707 = mul nsw i64 %sub1706, 2
  %add1708 = add nsw i64 %mul1707, 1
  %sub1709 = sub nsw i64 %conv1701, %add1708
  br label %cond.end.1714

cond.false.1710:                                  ; preds = %cond.true.1687
  %262 = load i64, i64* %size, align 8
  %add1711 = add nsw i64 0, %262
  %mul1712 = mul nsw i64 0, %add1711
  %add1713 = add nsw i64 %mul1712, 0
  br label %cond.end.1714

cond.end.1714:                                    ; preds = %cond.false.1710, %cond.true.1693
  %cond1715 = phi i64 [ %sub1709, %cond.true.1693 ], [ %add1713, %cond.false.1710 ]
  %div1716 = sdiv i64 %cond1715, 4
  %cmp1717 = icmp slt i64 %258, %div1716
  br i1 %cmp1717, label %cond.true.1756, label %lor.lhs.false.1742

cond.false.1719:                                  ; preds = %cond.false.1684
  %263 = load i64, i64* %size, align 8
  %add1720 = add nsw i64 0, %263
  %mul1721 = mul nsw i64 0, %add1720
  %sub1722 = sub nsw i64 %mul1721, 1
  %cmp1723 = icmp slt i64 %sub1722, 0
  br i1 %cmp1723, label %cond.true.1725, label %cond.false.1733

cond.true.1725:                                   ; preds = %cond.false.1719
  %264 = load i64, i64* %size, align 8
  %add1726 = add nsw i64 0, %264
  %mul1727 = mul nsw i64 0, %add1726
  %add1728 = add nsw i64 %mul1727, 1
  %shl1729 = shl i64 %add1728, 62
  %sub1730 = sub nsw i64 %shl1729, 1
  %mul1731 = mul nsw i64 %sub1730, 2
  %add1732 = add nsw i64 %mul1731, 1
  br label %cond.end.1737

cond.false.1733:                                  ; preds = %cond.false.1719
  %265 = load i64, i64* %size, align 8
  %add1734 = add nsw i64 0, %265
  %mul1735 = mul nsw i64 0, %add1734
  %sub1736 = sub nsw i64 %mul1735, 1
  br label %cond.end.1737

cond.end.1737:                                    ; preds = %cond.false.1733, %cond.true.1725
  %cond1738 = phi i64 [ %add1732, %cond.true.1725 ], [ %sub1736, %cond.false.1733 ]
  %div1739 = sdiv i64 %cond1738, 4
  %266 = load i64, i64* %size, align 8
  %cmp1740 = icmp slt i64 %div1739, %266
  br i1 %cmp1740, label %cond.true.1756, label %lor.lhs.false.1742

lor.lhs.false.1742:                               ; preds = %cond.end.1737, %cond.end.1714, %cond.true.1683, %cond.end.1677, %cond.true.1649, %cond.end.1643
  %267 = load i64, i64* %size, align 8
  %mul1743 = mul nsw i64 %267, 4
  %mul1744 = mul nsw i64 0, %mul1743
  %sub1745 = sub nsw i64 %mul1744, 1
  %cmp1746 = icmp slt i64 %sub1745, 0
  br i1 %cmp1746, label %land.lhs.true.1748, label %lor.lhs.false.1752

land.lhs.true.1748:                               ; preds = %lor.lhs.false.1742
  %268 = load i64, i64* %size, align 8
  %mul1749 = mul nsw i64 %268, 4
  %cmp1750 = icmp slt i64 %mul1749, -9223372036854775808
  br i1 %cmp1750, label %cond.true.1756, label %lor.lhs.false.1752

lor.lhs.false.1752:                               ; preds = %land.lhs.true.1748, %lor.lhs.false.1742
  %269 = load i64, i64* %size, align 8
  %mul1753 = mul nsw i64 %269, 4
  %cmp1754 = icmp slt i64 9223372036854775807, %mul1753
  br i1 %cmp1754, label %cond.true.1756, label %cond.false.1768

cond.true.1756:                                   ; preds = %lor.lhs.false.1752, %land.lhs.true.1748, %cond.end.1737, %cond.end.1714, %cond.true.1683, %cond.end.1677, %cond.true.1649, %cond.end.1643, %land.lhs.true.1618
  %270 = load i64, i64* %size, align 8
  %mul1757 = mul i64 %270, 4
  %cmp1758 = icmp ule i64 %mul1757, 9223372036854775807
  br i1 %cmp1758, label %cond.true.1760, label %cond.false.1762

cond.true.1760:                                   ; preds = %cond.true.1756
  %271 = load i64, i64* %size, align 8
  %mul1761 = mul i64 %271, 4
  br label %cond.end.1766

cond.false.1762:                                  ; preds = %cond.true.1756
  %272 = load i64, i64* %size, align 8
  %mul1763 = mul i64 %272, 4
  %sub1764 = sub i64 %mul1763, -9223372036854775808
  %add1765 = add nsw i64 %sub1764, -9223372036854775808
  br label %cond.end.1766

cond.end.1766:                                    ; preds = %cond.false.1762, %cond.true.1760
  %cond1767 = phi i64 [ %mul1761, %cond.true.1760 ], [ %add1765, %cond.false.1762 ]
  store i64 %cond1767, i64* %size4, align 8
  br i1 true, label %if.then.2167, label %if.end.2168

cond.false.1768:                                  ; preds = %lor.lhs.false.1752
  %273 = load i64, i64* %size, align 8
  %mul1769 = mul i64 %273, 4
  %cmp1770 = icmp ule i64 %mul1769, 9223372036854775807
  br i1 %cmp1770, label %cond.true.1772, label %cond.false.1774

cond.true.1772:                                   ; preds = %cond.false.1768
  %274 = load i64, i64* %size, align 8
  %mul1773 = mul i64 %274, 4
  br label %cond.end.1778

cond.false.1774:                                  ; preds = %cond.false.1768
  %275 = load i64, i64* %size, align 8
  %mul1775 = mul i64 %275, 4
  %sub1776 = sub i64 %mul1775, -9223372036854775808
  %add1777 = add nsw i64 %sub1776, -9223372036854775808
  br label %cond.end.1778

cond.end.1778:                                    ; preds = %cond.false.1774, %cond.true.1772
  %cond1779 = phi i64 [ %mul1773, %cond.true.1772 ], [ %add1777, %cond.false.1774 ]
  store i64 %cond1779, i64* %size4, align 8
  br i1 false, label %if.then.2167, label %if.end.2168

cond.false.1780:                                  ; preds = %cond.false.1392
  br i1 false, label %cond.true.1781, label %cond.false.1974

cond.true.1781:                                   ; preds = %cond.false.1780
  %276 = load i64, i64* %size, align 8
  %add1782 = add nsw i64 0, %276
  %mul1783 = mul nsw i64 0, %add1782
  %sub1784 = sub nsw i64 %mul1783, 1
  %cmp1785 = icmp slt i64 %sub1784, 0
  br i1 %cmp1785, label %cond.true.1787, label %cond.false.1804

cond.true.1787:                                   ; preds = %cond.true.1781
  %277 = load i64, i64* %size, align 8
  %add1788 = add nsw i64 0, %277
  %mul1789 = mul nsw i64 0, %add1788
  %add1790 = add nsw i64 %mul1789, 0
  %neg1791 = xor i64 %add1790, -1
  %cmp1792 = icmp eq i64 %neg1791, -1
  %conv1793 = zext i1 %cmp1792 to i32
  %sub1794 = sub nsw i32 0, %conv1793
  %conv1795 = sext i32 %sub1794 to i64
  %278 = load i64, i64* %size, align 8
  %add1796 = add nsw i64 0, %278
  %mul1797 = mul nsw i64 0, %add1796
  %add1798 = add nsw i64 %mul1797, 1
  %shl1799 = shl i64 %add1798, 62
  %sub1800 = sub nsw i64 %shl1799, 1
  %mul1801 = mul nsw i64 %sub1800, 2
  %add1802 = add nsw i64 %mul1801, 1
  %sub1803 = sub nsw i64 %conv1795, %add1802
  br label %cond.end.1808

cond.false.1804:                                  ; preds = %cond.true.1781
  %279 = load i64, i64* %size, align 8
  %add1805 = add nsw i64 0, %279
  %mul1806 = mul nsw i64 0, %add1805
  %add1807 = add nsw i64 %mul1806, 0
  br label %cond.end.1808

cond.end.1808:                                    ; preds = %cond.false.1804, %cond.true.1787
  %cond1809 = phi i64 [ %sub1803, %cond.true.1787 ], [ %add1807, %cond.false.1804 ]
  %cmp1810 = icmp eq i64 %cond1809, 0
  br i1 %cmp1810, label %land.lhs.true.1812, label %lor.lhs.false.1815

land.lhs.true.1812:                               ; preds = %cond.end.1808
  %280 = load i64, i64* %size, align 8
  %cmp1813 = icmp slt i64 %280, 0
  br i1 %cmp1813, label %cond.true.1950, label %lor.lhs.false.1815

lor.lhs.false.1815:                               ; preds = %land.lhs.true.1812, %cond.end.1808
  br i1 false, label %cond.true.1816, label %cond.false.1876

cond.true.1816:                                   ; preds = %lor.lhs.false.1815
  %281 = load i64, i64* %size, align 8
  %cmp1817 = icmp slt i64 %281, 0
  br i1 %cmp1817, label %cond.true.1819, label %cond.false.1842

cond.true.1819:                                   ; preds = %cond.true.1816
  %282 = load i64, i64* %size, align 8
  %283 = load i64, i64* %size, align 8
  %add1820 = add nsw i64 0, %283
  %mul1821 = mul nsw i64 0, %add1820
  %sub1822 = sub nsw i64 %mul1821, 1
  %cmp1823 = icmp slt i64 %sub1822, 0
  br i1 %cmp1823, label %cond.true.1825, label %cond.false.1833

cond.true.1825:                                   ; preds = %cond.true.1819
  %284 = load i64, i64* %size, align 8
  %add1826 = add nsw i64 0, %284
  %mul1827 = mul nsw i64 0, %add1826
  %add1828 = add nsw i64 %mul1827, 1
  %shl1829 = shl i64 %add1828, 62
  %sub1830 = sub nsw i64 %shl1829, 1
  %mul1831 = mul nsw i64 %sub1830, 2
  %add1832 = add nsw i64 %mul1831, 1
  br label %cond.end.1837

cond.false.1833:                                  ; preds = %cond.true.1819
  %285 = load i64, i64* %size, align 8
  %add1834 = add nsw i64 0, %285
  %mul1835 = mul nsw i64 0, %add1834
  %sub1836 = sub nsw i64 %mul1835, 1
  br label %cond.end.1837

cond.end.1837:                                    ; preds = %cond.false.1833, %cond.true.1825
  %cond1838 = phi i64 [ %add1832, %cond.true.1825 ], [ %sub1836, %cond.false.1833 ]
  %div1839 = sdiv i64 %cond1838, 4
  %cmp1840 = icmp slt i64 %282, %div1839
  br i1 %cmp1840, label %cond.true.1950, label %lor.lhs.false.1936

cond.false.1842:                                  ; preds = %cond.true.1816
  br i1 false, label %cond.true.1843, label %cond.false.1844

cond.true.1843:                                   ; preds = %cond.false.1842
  br i1 false, label %cond.true.1950, label %lor.lhs.false.1936

cond.false.1844:                                  ; preds = %cond.false.1842
  %286 = load i64, i64* %size, align 8
  %add1845 = add nsw i64 0, %286
  %mul1846 = mul nsw i64 0, %add1845
  %sub1847 = sub nsw i64 %mul1846, 1
  %cmp1848 = icmp slt i64 %sub1847, 0
  br i1 %cmp1848, label %cond.true.1850, label %cond.false.1867

cond.true.1850:                                   ; preds = %cond.false.1844
  %287 = load i64, i64* %size, align 8
  %add1851 = add nsw i64 0, %287
  %mul1852 = mul nsw i64 0, %add1851
  %add1853 = add nsw i64 %mul1852, 0
  %neg1854 = xor i64 %add1853, -1
  %cmp1855 = icmp eq i64 %neg1854, -1
  %conv1856 = zext i1 %cmp1855 to i32
  %sub1857 = sub nsw i32 0, %conv1856
  %conv1858 = sext i32 %sub1857 to i64
  %288 = load i64, i64* %size, align 8
  %add1859 = add nsw i64 0, %288
  %mul1860 = mul nsw i64 0, %add1859
  %add1861 = add nsw i64 %mul1860, 1
  %shl1862 = shl i64 %add1861, 62
  %sub1863 = sub nsw i64 %shl1862, 1
  %mul1864 = mul nsw i64 %sub1863, 2
  %add1865 = add nsw i64 %mul1864, 1
  %sub1866 = sub nsw i64 %conv1858, %add1865
  br label %cond.end.1871

cond.false.1867:                                  ; preds = %cond.false.1844
  %289 = load i64, i64* %size, align 8
  %add1868 = add nsw i64 0, %289
  %mul1869 = mul nsw i64 0, %add1868
  %add1870 = add nsw i64 %mul1869, 0
  br label %cond.end.1871

cond.end.1871:                                    ; preds = %cond.false.1867, %cond.true.1850
  %cond1872 = phi i64 [ %sub1866, %cond.true.1850 ], [ %add1870, %cond.false.1867 ]
  %div1873 = sdiv i64 %cond1872, 4
  %290 = load i64, i64* %size, align 8
  %cmp1874 = icmp slt i64 %div1873, %290
  br i1 %cmp1874, label %cond.true.1950, label %lor.lhs.false.1936

cond.false.1876:                                  ; preds = %lor.lhs.false.1815
  br i1 false, label %cond.true.1877, label %cond.false.1878

cond.true.1877:                                   ; preds = %cond.false.1876
  br i1 false, label %cond.true.1950, label %lor.lhs.false.1936

cond.false.1878:                                  ; preds = %cond.false.1876
  %291 = load i64, i64* %size, align 8
  %cmp1879 = icmp slt i64 %291, 0
  br i1 %cmp1879, label %cond.true.1881, label %cond.false.1913

cond.true.1881:                                   ; preds = %cond.false.1878
  %292 = load i64, i64* %size, align 8
  %293 = load i64, i64* %size, align 8
  %add1882 = add nsw i64 0, %293
  %mul1883 = mul nsw i64 0, %add1882
  %sub1884 = sub nsw i64 %mul1883, 1
  %cmp1885 = icmp slt i64 %sub1884, 0
  br i1 %cmp1885, label %cond.true.1887, label %cond.false.1904

cond.true.1887:                                   ; preds = %cond.true.1881
  %294 = load i64, i64* %size, align 8
  %add1888 = add nsw i64 0, %294
  %mul1889 = mul nsw i64 0, %add1888
  %add1890 = add nsw i64 %mul1889, 0
  %neg1891 = xor i64 %add1890, -1
  %cmp1892 = icmp eq i64 %neg1891, -1
  %conv1893 = zext i1 %cmp1892 to i32
  %sub1894 = sub nsw i32 0, %conv1893
  %conv1895 = sext i32 %sub1894 to i64
  %295 = load i64, i64* %size, align 8
  %add1896 = add nsw i64 0, %295
  %mul1897 = mul nsw i64 0, %add1896
  %add1898 = add nsw i64 %mul1897, 1
  %shl1899 = shl i64 %add1898, 62
  %sub1900 = sub nsw i64 %shl1899, 1
  %mul1901 = mul nsw i64 %sub1900, 2
  %add1902 = add nsw i64 %mul1901, 1
  %sub1903 = sub nsw i64 %conv1895, %add1902
  br label %cond.end.1908

cond.false.1904:                                  ; preds = %cond.true.1881
  %296 = load i64, i64* %size, align 8
  %add1905 = add nsw i64 0, %296
  %mul1906 = mul nsw i64 0, %add1905
  %add1907 = add nsw i64 %mul1906, 0
  br label %cond.end.1908

cond.end.1908:                                    ; preds = %cond.false.1904, %cond.true.1887
  %cond1909 = phi i64 [ %sub1903, %cond.true.1887 ], [ %add1907, %cond.false.1904 ]
  %div1910 = sdiv i64 %cond1909, 4
  %cmp1911 = icmp slt i64 %292, %div1910
  br i1 %cmp1911, label %cond.true.1950, label %lor.lhs.false.1936

cond.false.1913:                                  ; preds = %cond.false.1878
  %297 = load i64, i64* %size, align 8
  %add1914 = add nsw i64 0, %297
  %mul1915 = mul nsw i64 0, %add1914
  %sub1916 = sub nsw i64 %mul1915, 1
  %cmp1917 = icmp slt i64 %sub1916, 0
  br i1 %cmp1917, label %cond.true.1919, label %cond.false.1927

cond.true.1919:                                   ; preds = %cond.false.1913
  %298 = load i64, i64* %size, align 8
  %add1920 = add nsw i64 0, %298
  %mul1921 = mul nsw i64 0, %add1920
  %add1922 = add nsw i64 %mul1921, 1
  %shl1923 = shl i64 %add1922, 62
  %sub1924 = sub nsw i64 %shl1923, 1
  %mul1925 = mul nsw i64 %sub1924, 2
  %add1926 = add nsw i64 %mul1925, 1
  br label %cond.end.1931

cond.false.1927:                                  ; preds = %cond.false.1913
  %299 = load i64, i64* %size, align 8
  %add1928 = add nsw i64 0, %299
  %mul1929 = mul nsw i64 0, %add1928
  %sub1930 = sub nsw i64 %mul1929, 1
  br label %cond.end.1931

cond.end.1931:                                    ; preds = %cond.false.1927, %cond.true.1919
  %cond1932 = phi i64 [ %add1926, %cond.true.1919 ], [ %sub1930, %cond.false.1927 ]
  %div1933 = sdiv i64 %cond1932, 4
  %300 = load i64, i64* %size, align 8
  %cmp1934 = icmp slt i64 %div1933, %300
  br i1 %cmp1934, label %cond.true.1950, label %lor.lhs.false.1936

lor.lhs.false.1936:                               ; preds = %cond.end.1931, %cond.end.1908, %cond.true.1877, %cond.end.1871, %cond.true.1843, %cond.end.1837
  %301 = load i64, i64* %size, align 8
  %mul1937 = mul nsw i64 %301, 4
  %mul1938 = mul nsw i64 0, %mul1937
  %sub1939 = sub nsw i64 %mul1938, 1
  %cmp1940 = icmp slt i64 %sub1939, 0
  br i1 %cmp1940, label %land.lhs.true.1942, label %lor.lhs.false.1946

land.lhs.true.1942:                               ; preds = %lor.lhs.false.1936
  %302 = load i64, i64* %size, align 8
  %mul1943 = mul nsw i64 %302, 4
  %cmp1944 = icmp slt i64 %mul1943, -9223372036854775808
  br i1 %cmp1944, label %cond.true.1950, label %lor.lhs.false.1946

lor.lhs.false.1946:                               ; preds = %land.lhs.true.1942, %lor.lhs.false.1936
  %303 = load i64, i64* %size, align 8
  %mul1947 = mul nsw i64 %303, 4
  %cmp1948 = icmp slt i64 9223372036854775807, %mul1947
  br i1 %cmp1948, label %cond.true.1950, label %cond.false.1962

cond.true.1950:                                   ; preds = %lor.lhs.false.1946, %land.lhs.true.1942, %cond.end.1931, %cond.end.1908, %cond.true.1877, %cond.end.1871, %cond.true.1843, %cond.end.1837, %land.lhs.true.1812
  %304 = load i64, i64* %size, align 8
  %mul1951 = mul i64 %304, 4
  %cmp1952 = icmp ule i64 %mul1951, 9223372036854775807
  br i1 %cmp1952, label %cond.true.1954, label %cond.false.1956

cond.true.1954:                                   ; preds = %cond.true.1950
  %305 = load i64, i64* %size, align 8
  %mul1955 = mul i64 %305, 4
  br label %cond.end.1960

cond.false.1956:                                  ; preds = %cond.true.1950
  %306 = load i64, i64* %size, align 8
  %mul1957 = mul i64 %306, 4
  %sub1958 = sub i64 %mul1957, -9223372036854775808
  %add1959 = add nsw i64 %sub1958, -9223372036854775808
  br label %cond.end.1960

cond.end.1960:                                    ; preds = %cond.false.1956, %cond.true.1954
  %cond1961 = phi i64 [ %mul1955, %cond.true.1954 ], [ %add1959, %cond.false.1956 ]
  store i64 %cond1961, i64* %size4, align 8
  br i1 true, label %if.then.2167, label %if.end.2168

cond.false.1962:                                  ; preds = %lor.lhs.false.1946
  %307 = load i64, i64* %size, align 8
  %mul1963 = mul i64 %307, 4
  %cmp1964 = icmp ule i64 %mul1963, 9223372036854775807
  br i1 %cmp1964, label %cond.true.1966, label %cond.false.1968

cond.true.1966:                                   ; preds = %cond.false.1962
  %308 = load i64, i64* %size, align 8
  %mul1967 = mul i64 %308, 4
  br label %cond.end.1972

cond.false.1968:                                  ; preds = %cond.false.1962
  %309 = load i64, i64* %size, align 8
  %mul1969 = mul i64 %309, 4
  %sub1970 = sub i64 %mul1969, -9223372036854775808
  %add1971 = add nsw i64 %sub1970, -9223372036854775808
  br label %cond.end.1972

cond.end.1972:                                    ; preds = %cond.false.1968, %cond.true.1966
  %cond1973 = phi i64 [ %mul1967, %cond.true.1966 ], [ %add1971, %cond.false.1968 ]
  store i64 %cond1973, i64* %size4, align 8
  br i1 false, label %if.then.2167, label %if.end.2168

cond.false.1974:                                  ; preds = %cond.false.1780
  %310 = load i64, i64* %size, align 8
  %add1975 = add nsw i64 0, %310
  %mul1976 = mul nsw i64 0, %add1975
  %sub1977 = sub nsw i64 %mul1976, 1
  %cmp1978 = icmp slt i64 %sub1977, 0
  br i1 %cmp1978, label %cond.true.1980, label %cond.false.1997

cond.true.1980:                                   ; preds = %cond.false.1974
  %311 = load i64, i64* %size, align 8
  %add1981 = add nsw i64 0, %311
  %mul1982 = mul nsw i64 0, %add1981
  %add1983 = add nsw i64 %mul1982, 0
  %neg1984 = xor i64 %add1983, -1
  %cmp1985 = icmp eq i64 %neg1984, -1
  %conv1986 = zext i1 %cmp1985 to i32
  %sub1987 = sub nsw i32 0, %conv1986
  %conv1988 = sext i32 %sub1987 to i64
  %312 = load i64, i64* %size, align 8
  %add1989 = add nsw i64 0, %312
  %mul1990 = mul nsw i64 0, %add1989
  %add1991 = add nsw i64 %mul1990, 1
  %shl1992 = shl i64 %add1991, 62
  %sub1993 = sub nsw i64 %shl1992, 1
  %mul1994 = mul nsw i64 %sub1993, 2
  %add1995 = add nsw i64 %mul1994, 1
  %sub1996 = sub nsw i64 %conv1988, %add1995
  br label %cond.end.2001

cond.false.1997:                                  ; preds = %cond.false.1974
  %313 = load i64, i64* %size, align 8
  %add1998 = add nsw i64 0, %313
  %mul1999 = mul nsw i64 0, %add1998
  %add2000 = add nsw i64 %mul1999, 0
  br label %cond.end.2001

cond.end.2001:                                    ; preds = %cond.false.1997, %cond.true.1980
  %cond2002 = phi i64 [ %sub1996, %cond.true.1980 ], [ %add2000, %cond.false.1997 ]
  %cmp2003 = icmp eq i64 %cond2002, 0
  br i1 %cmp2003, label %land.lhs.true.2005, label %lor.lhs.false.2008

land.lhs.true.2005:                               ; preds = %cond.end.2001
  %314 = load i64, i64* %size, align 8
  %cmp2006 = icmp slt i64 %314, 0
  br i1 %cmp2006, label %cond.true.2143, label %lor.lhs.false.2008

lor.lhs.false.2008:                               ; preds = %land.lhs.true.2005, %cond.end.2001
  br i1 false, label %cond.true.2009, label %cond.false.2069

cond.true.2009:                                   ; preds = %lor.lhs.false.2008
  %315 = load i64, i64* %size, align 8
  %cmp2010 = icmp slt i64 %315, 0
  br i1 %cmp2010, label %cond.true.2012, label %cond.false.2035

cond.true.2012:                                   ; preds = %cond.true.2009
  %316 = load i64, i64* %size, align 8
  %317 = load i64, i64* %size, align 8
  %add2013 = add nsw i64 0, %317
  %mul2014 = mul nsw i64 0, %add2013
  %sub2015 = sub nsw i64 %mul2014, 1
  %cmp2016 = icmp slt i64 %sub2015, 0
  br i1 %cmp2016, label %cond.true.2018, label %cond.false.2026

cond.true.2018:                                   ; preds = %cond.true.2012
  %318 = load i64, i64* %size, align 8
  %add2019 = add nsw i64 0, %318
  %mul2020 = mul nsw i64 0, %add2019
  %add2021 = add nsw i64 %mul2020, 1
  %shl2022 = shl i64 %add2021, 62
  %sub2023 = sub nsw i64 %shl2022, 1
  %mul2024 = mul nsw i64 %sub2023, 2
  %add2025 = add nsw i64 %mul2024, 1
  br label %cond.end.2030

cond.false.2026:                                  ; preds = %cond.true.2012
  %319 = load i64, i64* %size, align 8
  %add2027 = add nsw i64 0, %319
  %mul2028 = mul nsw i64 0, %add2027
  %sub2029 = sub nsw i64 %mul2028, 1
  br label %cond.end.2030

cond.end.2030:                                    ; preds = %cond.false.2026, %cond.true.2018
  %cond2031 = phi i64 [ %add2025, %cond.true.2018 ], [ %sub2029, %cond.false.2026 ]
  %div2032 = sdiv i64 %cond2031, 4
  %cmp2033 = icmp slt i64 %316, %div2032
  br i1 %cmp2033, label %cond.true.2143, label %lor.lhs.false.2129

cond.false.2035:                                  ; preds = %cond.true.2009
  br i1 false, label %cond.true.2036, label %cond.false.2037

cond.true.2036:                                   ; preds = %cond.false.2035
  br i1 false, label %cond.true.2143, label %lor.lhs.false.2129

cond.false.2037:                                  ; preds = %cond.false.2035
  %320 = load i64, i64* %size, align 8
  %add2038 = add nsw i64 0, %320
  %mul2039 = mul nsw i64 0, %add2038
  %sub2040 = sub nsw i64 %mul2039, 1
  %cmp2041 = icmp slt i64 %sub2040, 0
  br i1 %cmp2041, label %cond.true.2043, label %cond.false.2060

cond.true.2043:                                   ; preds = %cond.false.2037
  %321 = load i64, i64* %size, align 8
  %add2044 = add nsw i64 0, %321
  %mul2045 = mul nsw i64 0, %add2044
  %add2046 = add nsw i64 %mul2045, 0
  %neg2047 = xor i64 %add2046, -1
  %cmp2048 = icmp eq i64 %neg2047, -1
  %conv2049 = zext i1 %cmp2048 to i32
  %sub2050 = sub nsw i32 0, %conv2049
  %conv2051 = sext i32 %sub2050 to i64
  %322 = load i64, i64* %size, align 8
  %add2052 = add nsw i64 0, %322
  %mul2053 = mul nsw i64 0, %add2052
  %add2054 = add nsw i64 %mul2053, 1
  %shl2055 = shl i64 %add2054, 62
  %sub2056 = sub nsw i64 %shl2055, 1
  %mul2057 = mul nsw i64 %sub2056, 2
  %add2058 = add nsw i64 %mul2057, 1
  %sub2059 = sub nsw i64 %conv2051, %add2058
  br label %cond.end.2064

cond.false.2060:                                  ; preds = %cond.false.2037
  %323 = load i64, i64* %size, align 8
  %add2061 = add nsw i64 0, %323
  %mul2062 = mul nsw i64 0, %add2061
  %add2063 = add nsw i64 %mul2062, 0
  br label %cond.end.2064

cond.end.2064:                                    ; preds = %cond.false.2060, %cond.true.2043
  %cond2065 = phi i64 [ %sub2059, %cond.true.2043 ], [ %add2063, %cond.false.2060 ]
  %div2066 = sdiv i64 %cond2065, 4
  %324 = load i64, i64* %size, align 8
  %cmp2067 = icmp slt i64 %div2066, %324
  br i1 %cmp2067, label %cond.true.2143, label %lor.lhs.false.2129

cond.false.2069:                                  ; preds = %lor.lhs.false.2008
  br i1 false, label %cond.true.2070, label %cond.false.2071

cond.true.2070:                                   ; preds = %cond.false.2069
  br i1 false, label %cond.true.2143, label %lor.lhs.false.2129

cond.false.2071:                                  ; preds = %cond.false.2069
  %325 = load i64, i64* %size, align 8
  %cmp2072 = icmp slt i64 %325, 0
  br i1 %cmp2072, label %cond.true.2074, label %cond.false.2106

cond.true.2074:                                   ; preds = %cond.false.2071
  %326 = load i64, i64* %size, align 8
  %327 = load i64, i64* %size, align 8
  %add2075 = add nsw i64 0, %327
  %mul2076 = mul nsw i64 0, %add2075
  %sub2077 = sub nsw i64 %mul2076, 1
  %cmp2078 = icmp slt i64 %sub2077, 0
  br i1 %cmp2078, label %cond.true.2080, label %cond.false.2097

cond.true.2080:                                   ; preds = %cond.true.2074
  %328 = load i64, i64* %size, align 8
  %add2081 = add nsw i64 0, %328
  %mul2082 = mul nsw i64 0, %add2081
  %add2083 = add nsw i64 %mul2082, 0
  %neg2084 = xor i64 %add2083, -1
  %cmp2085 = icmp eq i64 %neg2084, -1
  %conv2086 = zext i1 %cmp2085 to i32
  %sub2087 = sub nsw i32 0, %conv2086
  %conv2088 = sext i32 %sub2087 to i64
  %329 = load i64, i64* %size, align 8
  %add2089 = add nsw i64 0, %329
  %mul2090 = mul nsw i64 0, %add2089
  %add2091 = add nsw i64 %mul2090, 1
  %shl2092 = shl i64 %add2091, 62
  %sub2093 = sub nsw i64 %shl2092, 1
  %mul2094 = mul nsw i64 %sub2093, 2
  %add2095 = add nsw i64 %mul2094, 1
  %sub2096 = sub nsw i64 %conv2088, %add2095
  br label %cond.end.2101

cond.false.2097:                                  ; preds = %cond.true.2074
  %330 = load i64, i64* %size, align 8
  %add2098 = add nsw i64 0, %330
  %mul2099 = mul nsw i64 0, %add2098
  %add2100 = add nsw i64 %mul2099, 0
  br label %cond.end.2101

cond.end.2101:                                    ; preds = %cond.false.2097, %cond.true.2080
  %cond2102 = phi i64 [ %sub2096, %cond.true.2080 ], [ %add2100, %cond.false.2097 ]
  %div2103 = sdiv i64 %cond2102, 4
  %cmp2104 = icmp slt i64 %326, %div2103
  br i1 %cmp2104, label %cond.true.2143, label %lor.lhs.false.2129

cond.false.2106:                                  ; preds = %cond.false.2071
  %331 = load i64, i64* %size, align 8
  %add2107 = add nsw i64 0, %331
  %mul2108 = mul nsw i64 0, %add2107
  %sub2109 = sub nsw i64 %mul2108, 1
  %cmp2110 = icmp slt i64 %sub2109, 0
  br i1 %cmp2110, label %cond.true.2112, label %cond.false.2120

cond.true.2112:                                   ; preds = %cond.false.2106
  %332 = load i64, i64* %size, align 8
  %add2113 = add nsw i64 0, %332
  %mul2114 = mul nsw i64 0, %add2113
  %add2115 = add nsw i64 %mul2114, 1
  %shl2116 = shl i64 %add2115, 62
  %sub2117 = sub nsw i64 %shl2116, 1
  %mul2118 = mul nsw i64 %sub2117, 2
  %add2119 = add nsw i64 %mul2118, 1
  br label %cond.end.2124

cond.false.2120:                                  ; preds = %cond.false.2106
  %333 = load i64, i64* %size, align 8
  %add2121 = add nsw i64 0, %333
  %mul2122 = mul nsw i64 0, %add2121
  %sub2123 = sub nsw i64 %mul2122, 1
  br label %cond.end.2124

cond.end.2124:                                    ; preds = %cond.false.2120, %cond.true.2112
  %cond2125 = phi i64 [ %add2119, %cond.true.2112 ], [ %sub2123, %cond.false.2120 ]
  %div2126 = sdiv i64 %cond2125, 4
  %334 = load i64, i64* %size, align 8
  %cmp2127 = icmp slt i64 %div2126, %334
  br i1 %cmp2127, label %cond.true.2143, label %lor.lhs.false.2129

lor.lhs.false.2129:                               ; preds = %cond.end.2124, %cond.end.2101, %cond.true.2070, %cond.end.2064, %cond.true.2036, %cond.end.2030
  %335 = load i64, i64* %size, align 8
  %mul2130 = mul nsw i64 %335, 4
  %mul2131 = mul nsw i64 0, %mul2130
  %sub2132 = sub nsw i64 %mul2131, 1
  %cmp2133 = icmp slt i64 %sub2132, 0
  br i1 %cmp2133, label %land.lhs.true.2135, label %lor.lhs.false.2139

land.lhs.true.2135:                               ; preds = %lor.lhs.false.2129
  %336 = load i64, i64* %size, align 8
  %mul2136 = mul nsw i64 %336, 4
  %cmp2137 = icmp slt i64 %mul2136, -9223372036854775808
  br i1 %cmp2137, label %cond.true.2143, label %lor.lhs.false.2139

lor.lhs.false.2139:                               ; preds = %land.lhs.true.2135, %lor.lhs.false.2129
  %337 = load i64, i64* %size, align 8
  %mul2140 = mul nsw i64 %337, 4
  %cmp2141 = icmp slt i64 9223372036854775807, %mul2140
  br i1 %cmp2141, label %cond.true.2143, label %cond.false.2155

cond.true.2143:                                   ; preds = %lor.lhs.false.2139, %land.lhs.true.2135, %cond.end.2124, %cond.end.2101, %cond.true.2070, %cond.end.2064, %cond.true.2036, %cond.end.2030, %land.lhs.true.2005
  %338 = load i64, i64* %size, align 8
  %mul2144 = mul i64 %338, 4
  %cmp2145 = icmp ule i64 %mul2144, 9223372036854775807
  br i1 %cmp2145, label %cond.true.2147, label %cond.false.2149

cond.true.2147:                                   ; preds = %cond.true.2143
  %339 = load i64, i64* %size, align 8
  %mul2148 = mul i64 %339, 4
  br label %cond.end.2153

cond.false.2149:                                  ; preds = %cond.true.2143
  %340 = load i64, i64* %size, align 8
  %mul2150 = mul i64 %340, 4
  %sub2151 = sub i64 %mul2150, -9223372036854775808
  %add2152 = add nsw i64 %sub2151, -9223372036854775808
  br label %cond.end.2153

cond.end.2153:                                    ; preds = %cond.false.2149, %cond.true.2147
  %cond2154 = phi i64 [ %mul2148, %cond.true.2147 ], [ %add2152, %cond.false.2149 ]
  store i64 %cond2154, i64* %size4, align 8
  br i1 true, label %if.then.2167, label %if.end.2168

cond.false.2155:                                  ; preds = %lor.lhs.false.2139
  %341 = load i64, i64* %size, align 8
  %mul2156 = mul i64 %341, 4
  %cmp2157 = icmp ule i64 %mul2156, 9223372036854775807
  br i1 %cmp2157, label %cond.true.2159, label %cond.false.2161

cond.true.2159:                                   ; preds = %cond.false.2155
  %342 = load i64, i64* %size, align 8
  %mul2160 = mul i64 %342, 4
  br label %cond.end.2165

cond.false.2161:                                  ; preds = %cond.false.2155
  %343 = load i64, i64* %size, align 8
  %mul2162 = mul i64 %343, 4
  %sub2163 = sub i64 %mul2162, -9223372036854775808
  %add2164 = add nsw i64 %sub2163, -9223372036854775808
  br label %cond.end.2165

cond.end.2165:                                    ; preds = %cond.false.2161, %cond.true.2159
  %cond2166 = phi i64 [ %mul2160, %cond.true.2159 ], [ %add2164, %cond.false.2161 ]
  store i64 %cond2166, i64* %size4, align 8
  br i1 false, label %if.then.2167, label %if.end.2168

if.then.2167:                                     ; preds = %cond.end.2165, %cond.end.2153, %cond.end.1972, %cond.end.1960, %cond.end.1778, %cond.end.1766, %cond.end.1585, %cond.end.1573, %cond.end.1389, %cond.end.1373, %cond.end.1188, %cond.end.1172, %cond.end.960, %cond.end.937, %cond.end.745, %cond.end.722, %cond.end.475, %cond.end.452, %cond.end.260, %cond.end.237
  call void @memory_full(i64 -1) #6
  unreachable

if.end.2168:                                      ; preds = %cond.end.2165, %cond.end.2153, %cond.end.1972, %cond.end.1960, %cond.end.1778, %cond.end.1766, %cond.end.1585, %cond.end.1573, %cond.end.1389, %cond.end.1373, %cond.end.1188, %cond.end.1172, %cond.end.960, %cond.end.937, %cond.end.745, %cond.end.722, %cond.end.475, %cond.end.452, %cond.end.260, %cond.end.237
  br label %do.body

do.body:                                          ; preds = %if.end.2168
  br i1 false, label %cond.true.2169, label %cond.false.2653

cond.true.2169:                                   ; preds = %do.body
  br i1 false, label %cond.true.2170, label %cond.false.2438

cond.true.2170:                                   ; preds = %cond.true.2169
  %344 = load i64, i64* %size4, align 8
  %conv2171 = trunc i64 %344 to i8
  %conv2172 = sext i8 %conv2171 to i32
  %add2173 = add nsw i32 0, %conv2172
  %mul2174 = mul nsw i32 0, %add2173
  %sub2175 = sub nsw i32 %mul2174, 1
  %cmp2176 = icmp slt i32 %sub2175, 0
  br i1 %cmp2176, label %cond.true.2178, label %cond.false.2198

cond.true.2178:                                   ; preds = %cond.true.2170
  %345 = load i64, i64* %size4, align 8
  %conv2179 = trunc i64 %345 to i8
  %conv2180 = sext i8 %conv2179 to i32
  %add2181 = add nsw i32 0, %conv2180
  %mul2182 = mul nsw i32 0, %add2181
  %add2183 = add nsw i32 %mul2182, 0
  %neg2184 = xor i32 %add2183, -1
  %cmp2185 = icmp eq i32 %neg2184, -1
  %conv2186 = zext i1 %cmp2185 to i32
  %sub2187 = sub nsw i32 0, %conv2186
  %346 = load i64, i64* %size4, align 8
  %conv2188 = trunc i64 %346 to i8
  %conv2189 = sext i8 %conv2188 to i32
  %add2190 = add nsw i32 0, %conv2189
  %mul2191 = mul nsw i32 0, %add2190
  %add2192 = add nsw i32 %mul2191, 1
  %shl2193 = shl i32 %add2192, 30
  %sub2194 = sub nsw i32 %shl2193, 1
  %mul2195 = mul nsw i32 %sub2194, 2
  %add2196 = add nsw i32 %mul2195, 1
  %sub2197 = sub nsw i32 %sub2187, %add2196
  br label %cond.end.2204

cond.false.2198:                                  ; preds = %cond.true.2170
  %347 = load i64, i64* %size4, align 8
  %conv2199 = trunc i64 %347 to i8
  %conv2200 = sext i8 %conv2199 to i32
  %add2201 = add nsw i32 0, %conv2200
  %mul2202 = mul nsw i32 0, %add2201
  %add2203 = add nsw i32 %mul2202, 0
  br label %cond.end.2204

cond.end.2204:                                    ; preds = %cond.false.2198, %cond.true.2178
  %cond2205 = phi i32 [ %sub2197, %cond.true.2178 ], [ %add2203, %cond.false.2198 ]
  %cmp2206 = icmp eq i32 %cond2205, 0
  br i1 %cmp2206, label %land.lhs.true.2208, label %lor.lhs.false.2213

land.lhs.true.2208:                               ; preds = %cond.end.2204
  %348 = load i64, i64* %size4, align 8
  %conv2209 = trunc i64 %348 to i8
  %conv2210 = sext i8 %conv2209 to i32
  %cmp2211 = icmp slt i32 %conv2210, 0
  br i1 %cmp2211, label %cond.true.2392, label %lor.lhs.false.2213

lor.lhs.false.2213:                               ; preds = %land.lhs.true.2208, %cond.end.2204
  br i1 false, label %cond.true.2214, label %cond.false.2293

cond.true.2214:                                   ; preds = %lor.lhs.false.2213
  %349 = load i64, i64* %size4, align 8
  %conv2215 = trunc i64 %349 to i8
  %conv2216 = sext i8 %conv2215 to i32
  %cmp2217 = icmp slt i32 %conv2216, 0
  br i1 %cmp2217, label %cond.true.2219, label %cond.false.2250

cond.true.2219:                                   ; preds = %cond.true.2214
  %350 = load i64, i64* %size4, align 8
  %conv2220 = trunc i64 %350 to i8
  %conv2221 = sext i8 %conv2220 to i32
  %351 = load i64, i64* %size4, align 8
  %conv2222 = trunc i64 %351 to i8
  %conv2223 = sext i8 %conv2222 to i32
  %add2224 = add nsw i32 0, %conv2223
  %mul2225 = mul nsw i32 0, %add2224
  %sub2226 = sub nsw i32 %mul2225, 1
  %cmp2227 = icmp slt i32 %sub2226, 0
  br i1 %cmp2227, label %cond.true.2229, label %cond.false.2239

cond.true.2229:                                   ; preds = %cond.true.2219
  %352 = load i64, i64* %size4, align 8
  %conv2230 = trunc i64 %352 to i8
  %conv2231 = sext i8 %conv2230 to i32
  %add2232 = add nsw i32 0, %conv2231
  %mul2233 = mul nsw i32 0, %add2232
  %add2234 = add nsw i32 %mul2233, 1
  %shl2235 = shl i32 %add2234, 30
  %sub2236 = sub nsw i32 %shl2235, 1
  %mul2237 = mul nsw i32 %sub2236, 2
  %add2238 = add nsw i32 %mul2237, 1
  br label %cond.end.2245

cond.false.2239:                                  ; preds = %cond.true.2219
  %353 = load i64, i64* %size4, align 8
  %conv2240 = trunc i64 %353 to i8
  %conv2241 = sext i8 %conv2240 to i32
  %add2242 = add nsw i32 0, %conv2241
  %mul2243 = mul nsw i32 0, %add2242
  %sub2244 = sub nsw i32 %mul2243, 1
  br label %cond.end.2245

cond.end.2245:                                    ; preds = %cond.false.2239, %cond.true.2229
  %cond2246 = phi i32 [ %add2238, %cond.true.2229 ], [ %sub2244, %cond.false.2239 ]
  %div2247 = sdiv i32 %cond2246, 8
  %cmp2248 = icmp slt i32 %conv2221, %div2247
  br i1 %cmp2248, label %cond.true.2392, label %lor.lhs.false.2372

cond.false.2250:                                  ; preds = %cond.true.2214
  br i1 false, label %cond.true.2251, label %cond.false.2252

cond.true.2251:                                   ; preds = %cond.false.2250
  br i1 false, label %cond.true.2392, label %lor.lhs.false.2372

cond.false.2252:                                  ; preds = %cond.false.2250
  %354 = load i64, i64* %size4, align 8
  %conv2253 = trunc i64 %354 to i8
  %conv2254 = sext i8 %conv2253 to i32
  %add2255 = add nsw i32 0, %conv2254
  %mul2256 = mul nsw i32 0, %add2255
  %sub2257 = sub nsw i32 %mul2256, 1
  %cmp2258 = icmp slt i32 %sub2257, 0
  br i1 %cmp2258, label %cond.true.2260, label %cond.false.2280

cond.true.2260:                                   ; preds = %cond.false.2252
  %355 = load i64, i64* %size4, align 8
  %conv2261 = trunc i64 %355 to i8
  %conv2262 = sext i8 %conv2261 to i32
  %add2263 = add nsw i32 0, %conv2262
  %mul2264 = mul nsw i32 0, %add2263
  %add2265 = add nsw i32 %mul2264, 0
  %neg2266 = xor i32 %add2265, -1
  %cmp2267 = icmp eq i32 %neg2266, -1
  %conv2268 = zext i1 %cmp2267 to i32
  %sub2269 = sub nsw i32 0, %conv2268
  %356 = load i64, i64* %size4, align 8
  %conv2270 = trunc i64 %356 to i8
  %conv2271 = sext i8 %conv2270 to i32
  %add2272 = add nsw i32 0, %conv2271
  %mul2273 = mul nsw i32 0, %add2272
  %add2274 = add nsw i32 %mul2273, 1
  %shl2275 = shl i32 %add2274, 30
  %sub2276 = sub nsw i32 %shl2275, 1
  %mul2277 = mul nsw i32 %sub2276, 2
  %add2278 = add nsw i32 %mul2277, 1
  %sub2279 = sub nsw i32 %sub2269, %add2278
  br label %cond.end.2286

cond.false.2280:                                  ; preds = %cond.false.2252
  %357 = load i64, i64* %size4, align 8
  %conv2281 = trunc i64 %357 to i8
  %conv2282 = sext i8 %conv2281 to i32
  %add2283 = add nsw i32 0, %conv2282
  %mul2284 = mul nsw i32 0, %add2283
  %add2285 = add nsw i32 %mul2284, 0
  br label %cond.end.2286

cond.end.2286:                                    ; preds = %cond.false.2280, %cond.true.2260
  %cond2287 = phi i32 [ %sub2279, %cond.true.2260 ], [ %add2285, %cond.false.2280 ]
  %div2288 = sdiv i32 %cond2287, 8
  %358 = load i64, i64* %size4, align 8
  %conv2289 = trunc i64 %358 to i8
  %conv2290 = sext i8 %conv2289 to i32
  %cmp2291 = icmp slt i32 %div2288, %conv2290
  br i1 %cmp2291, label %cond.true.2392, label %lor.lhs.false.2372

cond.false.2293:                                  ; preds = %lor.lhs.false.2213
  br i1 false, label %cond.true.2294, label %cond.false.2295

cond.true.2294:                                   ; preds = %cond.false.2293
  br i1 false, label %cond.true.2392, label %lor.lhs.false.2372

cond.false.2295:                                  ; preds = %cond.false.2293
  %359 = load i64, i64* %size4, align 8
  %conv2296 = trunc i64 %359 to i8
  %conv2297 = sext i8 %conv2296 to i32
  %cmp2298 = icmp slt i32 %conv2297, 0
  br i1 %cmp2298, label %cond.true.2300, label %cond.false.2341

cond.true.2300:                                   ; preds = %cond.false.2295
  %360 = load i64, i64* %size4, align 8
  %conv2301 = trunc i64 %360 to i8
  %conv2302 = sext i8 %conv2301 to i32
  %361 = load i64, i64* %size4, align 8
  %conv2303 = trunc i64 %361 to i8
  %conv2304 = sext i8 %conv2303 to i32
  %add2305 = add nsw i32 0, %conv2304
  %mul2306 = mul nsw i32 0, %add2305
  %sub2307 = sub nsw i32 %mul2306, 1
  %cmp2308 = icmp slt i32 %sub2307, 0
  br i1 %cmp2308, label %cond.true.2310, label %cond.false.2330

cond.true.2310:                                   ; preds = %cond.true.2300
  %362 = load i64, i64* %size4, align 8
  %conv2311 = trunc i64 %362 to i8
  %conv2312 = sext i8 %conv2311 to i32
  %add2313 = add nsw i32 0, %conv2312
  %mul2314 = mul nsw i32 0, %add2313
  %add2315 = add nsw i32 %mul2314, 0
  %neg2316 = xor i32 %add2315, -1
  %cmp2317 = icmp eq i32 %neg2316, -1
  %conv2318 = zext i1 %cmp2317 to i32
  %sub2319 = sub nsw i32 0, %conv2318
  %363 = load i64, i64* %size4, align 8
  %conv2320 = trunc i64 %363 to i8
  %conv2321 = sext i8 %conv2320 to i32
  %add2322 = add nsw i32 0, %conv2321
  %mul2323 = mul nsw i32 0, %add2322
  %add2324 = add nsw i32 %mul2323, 1
  %shl2325 = shl i32 %add2324, 30
  %sub2326 = sub nsw i32 %shl2325, 1
  %mul2327 = mul nsw i32 %sub2326, 2
  %add2328 = add nsw i32 %mul2327, 1
  %sub2329 = sub nsw i32 %sub2319, %add2328
  br label %cond.end.2336

cond.false.2330:                                  ; preds = %cond.true.2300
  %364 = load i64, i64* %size4, align 8
  %conv2331 = trunc i64 %364 to i8
  %conv2332 = sext i8 %conv2331 to i32
  %add2333 = add nsw i32 0, %conv2332
  %mul2334 = mul nsw i32 0, %add2333
  %add2335 = add nsw i32 %mul2334, 0
  br label %cond.end.2336

cond.end.2336:                                    ; preds = %cond.false.2330, %cond.true.2310
  %cond2337 = phi i32 [ %sub2329, %cond.true.2310 ], [ %add2335, %cond.false.2330 ]
  %div2338 = sdiv i32 %cond2337, 8
  %cmp2339 = icmp slt i32 %conv2302, %div2338
  br i1 %cmp2339, label %cond.true.2392, label %lor.lhs.false.2372

cond.false.2341:                                  ; preds = %cond.false.2295
  %365 = load i64, i64* %size4, align 8
  %conv2342 = trunc i64 %365 to i8
  %conv2343 = sext i8 %conv2342 to i32
  %add2344 = add nsw i32 0, %conv2343
  %mul2345 = mul nsw i32 0, %add2344
  %sub2346 = sub nsw i32 %mul2345, 1
  %cmp2347 = icmp slt i32 %sub2346, 0
  br i1 %cmp2347, label %cond.true.2349, label %cond.false.2359

cond.true.2349:                                   ; preds = %cond.false.2341
  %366 = load i64, i64* %size4, align 8
  %conv2350 = trunc i64 %366 to i8
  %conv2351 = sext i8 %conv2350 to i32
  %add2352 = add nsw i32 0, %conv2351
  %mul2353 = mul nsw i32 0, %add2352
  %add2354 = add nsw i32 %mul2353, 1
  %shl2355 = shl i32 %add2354, 30
  %sub2356 = sub nsw i32 %shl2355, 1
  %mul2357 = mul nsw i32 %sub2356, 2
  %add2358 = add nsw i32 %mul2357, 1
  br label %cond.end.2365

cond.false.2359:                                  ; preds = %cond.false.2341
  %367 = load i64, i64* %size4, align 8
  %conv2360 = trunc i64 %367 to i8
  %conv2361 = sext i8 %conv2360 to i32
  %add2362 = add nsw i32 0, %conv2361
  %mul2363 = mul nsw i32 0, %add2362
  %sub2364 = sub nsw i32 %mul2363, 1
  br label %cond.end.2365

cond.end.2365:                                    ; preds = %cond.false.2359, %cond.true.2349
  %cond2366 = phi i32 [ %add2358, %cond.true.2349 ], [ %sub2364, %cond.false.2359 ]
  %div2367 = sdiv i32 %cond2366, 8
  %368 = load i64, i64* %size4, align 8
  %conv2368 = trunc i64 %368 to i8
  %conv2369 = sext i8 %conv2368 to i32
  %cmp2370 = icmp slt i32 %div2367, %conv2369
  br i1 %cmp2370, label %cond.true.2392, label %lor.lhs.false.2372

lor.lhs.false.2372:                               ; preds = %cond.end.2365, %cond.end.2336, %cond.true.2294, %cond.end.2286, %cond.true.2251, %cond.end.2245
  %369 = load i64, i64* %size4, align 8
  %conv2373 = trunc i64 %369 to i8
  %conv2374 = sext i8 %conv2373 to i32
  %mul2375 = mul nsw i32 %conv2374, 8
  %mul2376 = mul nsw i32 0, %mul2375
  %sub2377 = sub nsw i32 %mul2376, 1
  %cmp2378 = icmp slt i32 %sub2377, 0
  br i1 %cmp2378, label %land.lhs.true.2380, label %lor.lhs.false.2386

land.lhs.true.2380:                               ; preds = %lor.lhs.false.2372
  %370 = load i64, i64* %size4, align 8
  %conv2381 = trunc i64 %370 to i8
  %conv2382 = sext i8 %conv2381 to i32
  %mul2383 = mul nsw i32 %conv2382, 8
  %cmp2384 = icmp slt i32 %mul2383, -128
  br i1 %cmp2384, label %cond.true.2392, label %lor.lhs.false.2386

lor.lhs.false.2386:                               ; preds = %land.lhs.true.2380, %lor.lhs.false.2372
  %371 = load i64, i64* %size4, align 8
  %conv2387 = trunc i64 %371 to i8
  %conv2388 = sext i8 %conv2387 to i32
  %mul2389 = mul nsw i32 %conv2388, 8
  %cmp2390 = icmp slt i32 127, %mul2389
  br i1 %cmp2390, label %cond.true.2392, label %cond.false.2415

cond.true.2392:                                   ; preds = %lor.lhs.false.2386, %land.lhs.true.2380, %cond.end.2365, %cond.end.2336, %cond.true.2294, %cond.end.2286, %cond.true.2251, %cond.end.2245, %land.lhs.true.2208
  %372 = load i64, i64* %size4, align 8
  %conv2393 = trunc i64 %372 to i8
  %conv2394 = zext i8 %conv2393 to i32
  %mul2395 = mul nsw i32 %conv2394, 8
  %cmp2396 = icmp sle i32 %mul2395, 127
  br i1 %cmp2396, label %cond.true.2398, label %cond.false.2404

cond.true.2398:                                   ; preds = %cond.true.2392
  %373 = load i64, i64* %size4, align 8
  %conv2399 = trunc i64 %373 to i8
  %conv2400 = zext i8 %conv2399 to i32
  %mul2401 = mul nsw i32 %conv2400, 8
  %conv2402 = trunc i32 %mul2401 to i8
  %conv2403 = sext i8 %conv2402 to i32
  br label %cond.end.2412

cond.false.2404:                                  ; preds = %cond.true.2392
  %374 = load i64, i64* %size4, align 8
  %conv2405 = trunc i64 %374 to i8
  %conv2406 = zext i8 %conv2405 to i32
  %mul2407 = mul nsw i32 %conv2406, 8
  %sub2408 = sub nsw i32 %mul2407, -128
  %conv2409 = trunc i32 %sub2408 to i8
  %conv2410 = sext i8 %conv2409 to i32
  %add2411 = add nsw i32 %conv2410, -128
  br label %cond.end.2412

cond.end.2412:                                    ; preds = %cond.false.2404, %cond.true.2398
  %cond2413 = phi i32 [ %conv2403, %cond.true.2398 ], [ %add2411, %cond.false.2404 ]
  %conv2414 = sext i32 %cond2413 to i64
  store i64 %conv2414, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then.4345, label %lor.lhs.false.4342

cond.false.2415:                                  ; preds = %lor.lhs.false.2386
  %375 = load i64, i64* %size4, align 8
  %conv2416 = trunc i64 %375 to i8
  %conv2417 = zext i8 %conv2416 to i32
  %mul2418 = mul nsw i32 %conv2417, 8
  %cmp2419 = icmp sle i32 %mul2418, 127
  br i1 %cmp2419, label %cond.true.2421, label %cond.false.2427

cond.true.2421:                                   ; preds = %cond.false.2415
  %376 = load i64, i64* %size4, align 8
  %conv2422 = trunc i64 %376 to i8
  %conv2423 = zext i8 %conv2422 to i32
  %mul2424 = mul nsw i32 %conv2423, 8
  %conv2425 = trunc i32 %mul2424 to i8
  %conv2426 = sext i8 %conv2425 to i32
  br label %cond.end.2435

cond.false.2427:                                  ; preds = %cond.false.2415
  %377 = load i64, i64* %size4, align 8
  %conv2428 = trunc i64 %377 to i8
  %conv2429 = zext i8 %conv2428 to i32
  %mul2430 = mul nsw i32 %conv2429, 8
  %sub2431 = sub nsw i32 %mul2430, -128
  %conv2432 = trunc i32 %sub2431 to i8
  %conv2433 = sext i8 %conv2432 to i32
  %add2434 = add nsw i32 %conv2433, -128
  br label %cond.end.2435

cond.end.2435:                                    ; preds = %cond.false.2427, %cond.true.2421
  %cond2436 = phi i32 [ %conv2426, %cond.true.2421 ], [ %add2434, %cond.false.2427 ]
  %conv2437 = sext i32 %cond2436 to i64
  store i64 %conv2437, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then.4345, label %lor.lhs.false.4342

cond.false.2438:                                  ; preds = %cond.true.2169
  %378 = load i64, i64* %size4, align 8
  %add2439 = add nsw i64 0, %378
  %mul2440 = mul nsw i64 0, %add2439
  %sub2441 = sub nsw i64 %mul2440, 1
  %cmp2442 = icmp slt i64 %sub2441, 0
  br i1 %cmp2442, label %cond.true.2444, label %cond.false.2461

cond.true.2444:                                   ; preds = %cond.false.2438
  %379 = load i64, i64* %size4, align 8
  %add2445 = add nsw i64 0, %379
  %mul2446 = mul nsw i64 0, %add2445
  %add2447 = add nsw i64 %mul2446, 0
  %neg2448 = xor i64 %add2447, -1
  %cmp2449 = icmp eq i64 %neg2448, -1
  %conv2450 = zext i1 %cmp2449 to i32
  %sub2451 = sub nsw i32 0, %conv2450
  %conv2452 = sext i32 %sub2451 to i64
  %380 = load i64, i64* %size4, align 8
  %add2453 = add nsw i64 0, %380
  %mul2454 = mul nsw i64 0, %add2453
  %add2455 = add nsw i64 %mul2454, 1
  %shl2456 = shl i64 %add2455, 62
  %sub2457 = sub nsw i64 %shl2456, 1
  %mul2458 = mul nsw i64 %sub2457, 2
  %add2459 = add nsw i64 %mul2458, 1
  %sub2460 = sub nsw i64 %conv2452, %add2459
  br label %cond.end.2465

cond.false.2461:                                  ; preds = %cond.false.2438
  %381 = load i64, i64* %size4, align 8
  %add2462 = add nsw i64 0, %381
  %mul2463 = mul nsw i64 0, %add2462
  %add2464 = add nsw i64 %mul2463, 0
  br label %cond.end.2465

cond.end.2465:                                    ; preds = %cond.false.2461, %cond.true.2444
  %cond2466 = phi i64 [ %sub2460, %cond.true.2444 ], [ %add2464, %cond.false.2461 ]
  %cmp2467 = icmp eq i64 %cond2466, 0
  br i1 %cmp2467, label %land.lhs.true.2469, label %lor.lhs.false.2472

land.lhs.true.2469:                               ; preds = %cond.end.2465
  %382 = load i64, i64* %size4, align 8
  %cmp2470 = icmp slt i64 %382, 0
  br i1 %cmp2470, label %cond.true.2607, label %lor.lhs.false.2472

lor.lhs.false.2472:                               ; preds = %land.lhs.true.2469, %cond.end.2465
  br i1 false, label %cond.true.2473, label %cond.false.2533

cond.true.2473:                                   ; preds = %lor.lhs.false.2472
  %383 = load i64, i64* %size4, align 8
  %cmp2474 = icmp slt i64 %383, 0
  br i1 %cmp2474, label %cond.true.2476, label %cond.false.2499

cond.true.2476:                                   ; preds = %cond.true.2473
  %384 = load i64, i64* %size4, align 8
  %385 = load i64, i64* %size4, align 8
  %add2477 = add nsw i64 0, %385
  %mul2478 = mul nsw i64 0, %add2477
  %sub2479 = sub nsw i64 %mul2478, 1
  %cmp2480 = icmp slt i64 %sub2479, 0
  br i1 %cmp2480, label %cond.true.2482, label %cond.false.2490

cond.true.2482:                                   ; preds = %cond.true.2476
  %386 = load i64, i64* %size4, align 8
  %add2483 = add nsw i64 0, %386
  %mul2484 = mul nsw i64 0, %add2483
  %add2485 = add nsw i64 %mul2484, 1
  %shl2486 = shl i64 %add2485, 62
  %sub2487 = sub nsw i64 %shl2486, 1
  %mul2488 = mul nsw i64 %sub2487, 2
  %add2489 = add nsw i64 %mul2488, 1
  br label %cond.end.2494

cond.false.2490:                                  ; preds = %cond.true.2476
  %387 = load i64, i64* %size4, align 8
  %add2491 = add nsw i64 0, %387
  %mul2492 = mul nsw i64 0, %add2491
  %sub2493 = sub nsw i64 %mul2492, 1
  br label %cond.end.2494

cond.end.2494:                                    ; preds = %cond.false.2490, %cond.true.2482
  %cond2495 = phi i64 [ %add2489, %cond.true.2482 ], [ %sub2493, %cond.false.2490 ]
  %div2496 = sdiv i64 %cond2495, 8
  %cmp2497 = icmp slt i64 %384, %div2496
  br i1 %cmp2497, label %cond.true.2607, label %lor.lhs.false.2593

cond.false.2499:                                  ; preds = %cond.true.2473
  br i1 false, label %cond.true.2500, label %cond.false.2501

cond.true.2500:                                   ; preds = %cond.false.2499
  br i1 false, label %cond.true.2607, label %lor.lhs.false.2593

cond.false.2501:                                  ; preds = %cond.false.2499
  %388 = load i64, i64* %size4, align 8
  %add2502 = add nsw i64 0, %388
  %mul2503 = mul nsw i64 0, %add2502
  %sub2504 = sub nsw i64 %mul2503, 1
  %cmp2505 = icmp slt i64 %sub2504, 0
  br i1 %cmp2505, label %cond.true.2507, label %cond.false.2524

cond.true.2507:                                   ; preds = %cond.false.2501
  %389 = load i64, i64* %size4, align 8
  %add2508 = add nsw i64 0, %389
  %mul2509 = mul nsw i64 0, %add2508
  %add2510 = add nsw i64 %mul2509, 0
  %neg2511 = xor i64 %add2510, -1
  %cmp2512 = icmp eq i64 %neg2511, -1
  %conv2513 = zext i1 %cmp2512 to i32
  %sub2514 = sub nsw i32 0, %conv2513
  %conv2515 = sext i32 %sub2514 to i64
  %390 = load i64, i64* %size4, align 8
  %add2516 = add nsw i64 0, %390
  %mul2517 = mul nsw i64 0, %add2516
  %add2518 = add nsw i64 %mul2517, 1
  %shl2519 = shl i64 %add2518, 62
  %sub2520 = sub nsw i64 %shl2519, 1
  %mul2521 = mul nsw i64 %sub2520, 2
  %add2522 = add nsw i64 %mul2521, 1
  %sub2523 = sub nsw i64 %conv2515, %add2522
  br label %cond.end.2528

cond.false.2524:                                  ; preds = %cond.false.2501
  %391 = load i64, i64* %size4, align 8
  %add2525 = add nsw i64 0, %391
  %mul2526 = mul nsw i64 0, %add2525
  %add2527 = add nsw i64 %mul2526, 0
  br label %cond.end.2528

cond.end.2528:                                    ; preds = %cond.false.2524, %cond.true.2507
  %cond2529 = phi i64 [ %sub2523, %cond.true.2507 ], [ %add2527, %cond.false.2524 ]
  %div2530 = sdiv i64 %cond2529, 8
  %392 = load i64, i64* %size4, align 8
  %cmp2531 = icmp slt i64 %div2530, %392
  br i1 %cmp2531, label %cond.true.2607, label %lor.lhs.false.2593

cond.false.2533:                                  ; preds = %lor.lhs.false.2472
  br i1 false, label %cond.true.2534, label %cond.false.2535

cond.true.2534:                                   ; preds = %cond.false.2533
  br i1 false, label %cond.true.2607, label %lor.lhs.false.2593

cond.false.2535:                                  ; preds = %cond.false.2533
  %393 = load i64, i64* %size4, align 8
  %cmp2536 = icmp slt i64 %393, 0
  br i1 %cmp2536, label %cond.true.2538, label %cond.false.2570

cond.true.2538:                                   ; preds = %cond.false.2535
  %394 = load i64, i64* %size4, align 8
  %395 = load i64, i64* %size4, align 8
  %add2539 = add nsw i64 0, %395
  %mul2540 = mul nsw i64 0, %add2539
  %sub2541 = sub nsw i64 %mul2540, 1
  %cmp2542 = icmp slt i64 %sub2541, 0
  br i1 %cmp2542, label %cond.true.2544, label %cond.false.2561

cond.true.2544:                                   ; preds = %cond.true.2538
  %396 = load i64, i64* %size4, align 8
  %add2545 = add nsw i64 0, %396
  %mul2546 = mul nsw i64 0, %add2545
  %add2547 = add nsw i64 %mul2546, 0
  %neg2548 = xor i64 %add2547, -1
  %cmp2549 = icmp eq i64 %neg2548, -1
  %conv2550 = zext i1 %cmp2549 to i32
  %sub2551 = sub nsw i32 0, %conv2550
  %conv2552 = sext i32 %sub2551 to i64
  %397 = load i64, i64* %size4, align 8
  %add2553 = add nsw i64 0, %397
  %mul2554 = mul nsw i64 0, %add2553
  %add2555 = add nsw i64 %mul2554, 1
  %shl2556 = shl i64 %add2555, 62
  %sub2557 = sub nsw i64 %shl2556, 1
  %mul2558 = mul nsw i64 %sub2557, 2
  %add2559 = add nsw i64 %mul2558, 1
  %sub2560 = sub nsw i64 %conv2552, %add2559
  br label %cond.end.2565

cond.false.2561:                                  ; preds = %cond.true.2538
  %398 = load i64, i64* %size4, align 8
  %add2562 = add nsw i64 0, %398
  %mul2563 = mul nsw i64 0, %add2562
  %add2564 = add nsw i64 %mul2563, 0
  br label %cond.end.2565

cond.end.2565:                                    ; preds = %cond.false.2561, %cond.true.2544
  %cond2566 = phi i64 [ %sub2560, %cond.true.2544 ], [ %add2564, %cond.false.2561 ]
  %div2567 = sdiv i64 %cond2566, 8
  %cmp2568 = icmp slt i64 %394, %div2567
  br i1 %cmp2568, label %cond.true.2607, label %lor.lhs.false.2593

cond.false.2570:                                  ; preds = %cond.false.2535
  %399 = load i64, i64* %size4, align 8
  %add2571 = add nsw i64 0, %399
  %mul2572 = mul nsw i64 0, %add2571
  %sub2573 = sub nsw i64 %mul2572, 1
  %cmp2574 = icmp slt i64 %sub2573, 0
  br i1 %cmp2574, label %cond.true.2576, label %cond.false.2584

cond.true.2576:                                   ; preds = %cond.false.2570
  %400 = load i64, i64* %size4, align 8
  %add2577 = add nsw i64 0, %400
  %mul2578 = mul nsw i64 0, %add2577
  %add2579 = add nsw i64 %mul2578, 1
  %shl2580 = shl i64 %add2579, 62
  %sub2581 = sub nsw i64 %shl2580, 1
  %mul2582 = mul nsw i64 %sub2581, 2
  %add2583 = add nsw i64 %mul2582, 1
  br label %cond.end.2588

cond.false.2584:                                  ; preds = %cond.false.2570
  %401 = load i64, i64* %size4, align 8
  %add2585 = add nsw i64 0, %401
  %mul2586 = mul nsw i64 0, %add2585
  %sub2587 = sub nsw i64 %mul2586, 1
  br label %cond.end.2588

cond.end.2588:                                    ; preds = %cond.false.2584, %cond.true.2576
  %cond2589 = phi i64 [ %add2583, %cond.true.2576 ], [ %sub2587, %cond.false.2584 ]
  %div2590 = sdiv i64 %cond2589, 8
  %402 = load i64, i64* %size4, align 8
  %cmp2591 = icmp slt i64 %div2590, %402
  br i1 %cmp2591, label %cond.true.2607, label %lor.lhs.false.2593

lor.lhs.false.2593:                               ; preds = %cond.end.2588, %cond.end.2565, %cond.true.2534, %cond.end.2528, %cond.true.2500, %cond.end.2494
  %403 = load i64, i64* %size4, align 8
  %mul2594 = mul nsw i64 %403, 8
  %mul2595 = mul nsw i64 0, %mul2594
  %sub2596 = sub nsw i64 %mul2595, 1
  %cmp2597 = icmp slt i64 %sub2596, 0
  br i1 %cmp2597, label %land.lhs.true.2599, label %lor.lhs.false.2603

land.lhs.true.2599:                               ; preds = %lor.lhs.false.2593
  %404 = load i64, i64* %size4, align 8
  %mul2600 = mul nsw i64 %404, 8
  %cmp2601 = icmp slt i64 %mul2600, -128
  br i1 %cmp2601, label %cond.true.2607, label %lor.lhs.false.2603

lor.lhs.false.2603:                               ; preds = %land.lhs.true.2599, %lor.lhs.false.2593
  %405 = load i64, i64* %size4, align 8
  %mul2604 = mul nsw i64 %405, 8
  %cmp2605 = icmp slt i64 127, %mul2604
  br i1 %cmp2605, label %cond.true.2607, label %cond.false.2630

cond.true.2607:                                   ; preds = %lor.lhs.false.2603, %land.lhs.true.2599, %cond.end.2588, %cond.end.2565, %cond.true.2534, %cond.end.2528, %cond.true.2500, %cond.end.2494, %land.lhs.true.2469
  %406 = load i64, i64* %size4, align 8
  %conv2608 = trunc i64 %406 to i8
  %conv2609 = zext i8 %conv2608 to i32
  %mul2610 = mul nsw i32 %conv2609, 8
  %cmp2611 = icmp sle i32 %mul2610, 127
  br i1 %cmp2611, label %cond.true.2613, label %cond.false.2619

cond.true.2613:                                   ; preds = %cond.true.2607
  %407 = load i64, i64* %size4, align 8
  %conv2614 = trunc i64 %407 to i8
  %conv2615 = zext i8 %conv2614 to i32
  %mul2616 = mul nsw i32 %conv2615, 8
  %conv2617 = trunc i32 %mul2616 to i8
  %conv2618 = sext i8 %conv2617 to i32
  br label %cond.end.2627

cond.false.2619:                                  ; preds = %cond.true.2607
  %408 = load i64, i64* %size4, align 8
  %conv2620 = trunc i64 %408 to i8
  %conv2621 = zext i8 %conv2620 to i32
  %mul2622 = mul nsw i32 %conv2621, 8
  %sub2623 = sub nsw i32 %mul2622, -128
  %conv2624 = trunc i32 %sub2623 to i8
  %conv2625 = sext i8 %conv2624 to i32
  %add2626 = add nsw i32 %conv2625, -128
  br label %cond.end.2627

cond.end.2627:                                    ; preds = %cond.false.2619, %cond.true.2613
  %cond2628 = phi i32 [ %conv2618, %cond.true.2613 ], [ %add2626, %cond.false.2619 ]
  %conv2629 = sext i32 %cond2628 to i64
  store i64 %conv2629, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then.4345, label %lor.lhs.false.4342

cond.false.2630:                                  ; preds = %lor.lhs.false.2603
  %409 = load i64, i64* %size4, align 8
  %conv2631 = trunc i64 %409 to i8
  %conv2632 = zext i8 %conv2631 to i32
  %mul2633 = mul nsw i32 %conv2632, 8
  %cmp2634 = icmp sle i32 %mul2633, 127
  br i1 %cmp2634, label %cond.true.2636, label %cond.false.2642

cond.true.2636:                                   ; preds = %cond.false.2630
  %410 = load i64, i64* %size4, align 8
  %conv2637 = trunc i64 %410 to i8
  %conv2638 = zext i8 %conv2637 to i32
  %mul2639 = mul nsw i32 %conv2638, 8
  %conv2640 = trunc i32 %mul2639 to i8
  %conv2641 = sext i8 %conv2640 to i32
  br label %cond.end.2650

cond.false.2642:                                  ; preds = %cond.false.2630
  %411 = load i64, i64* %size4, align 8
  %conv2643 = trunc i64 %411 to i8
  %conv2644 = zext i8 %conv2643 to i32
  %mul2645 = mul nsw i32 %conv2644, 8
  %sub2646 = sub nsw i32 %mul2645, -128
  %conv2647 = trunc i32 %sub2646 to i8
  %conv2648 = sext i8 %conv2647 to i32
  %add2649 = add nsw i32 %conv2648, -128
  br label %cond.end.2650

cond.end.2650:                                    ; preds = %cond.false.2642, %cond.true.2636
  %cond2651 = phi i32 [ %conv2641, %cond.true.2636 ], [ %add2649, %cond.false.2642 ]
  %conv2652 = sext i32 %cond2651 to i64
  store i64 %conv2652, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then.4345, label %lor.lhs.false.4342

cond.false.2653:                                  ; preds = %do.body
  br i1 false, label %cond.true.2654, label %cond.false.3138

cond.true.2654:                                   ; preds = %cond.false.2653
  br i1 false, label %cond.true.2655, label %cond.false.2923

cond.true.2655:                                   ; preds = %cond.true.2654
  %412 = load i64, i64* %size4, align 8
  %conv2656 = trunc i64 %412 to i16
  %conv2657 = sext i16 %conv2656 to i32
  %add2658 = add nsw i32 0, %conv2657
  %mul2659 = mul nsw i32 0, %add2658
  %sub2660 = sub nsw i32 %mul2659, 1
  %cmp2661 = icmp slt i32 %sub2660, 0
  br i1 %cmp2661, label %cond.true.2663, label %cond.false.2683

cond.true.2663:                                   ; preds = %cond.true.2655
  %413 = load i64, i64* %size4, align 8
  %conv2664 = trunc i64 %413 to i16
  %conv2665 = sext i16 %conv2664 to i32
  %add2666 = add nsw i32 0, %conv2665
  %mul2667 = mul nsw i32 0, %add2666
  %add2668 = add nsw i32 %mul2667, 0
  %neg2669 = xor i32 %add2668, -1
  %cmp2670 = icmp eq i32 %neg2669, -1
  %conv2671 = zext i1 %cmp2670 to i32
  %sub2672 = sub nsw i32 0, %conv2671
  %414 = load i64, i64* %size4, align 8
  %conv2673 = trunc i64 %414 to i16
  %conv2674 = sext i16 %conv2673 to i32
  %add2675 = add nsw i32 0, %conv2674
  %mul2676 = mul nsw i32 0, %add2675
  %add2677 = add nsw i32 %mul2676, 1
  %shl2678 = shl i32 %add2677, 30
  %sub2679 = sub nsw i32 %shl2678, 1
  %mul2680 = mul nsw i32 %sub2679, 2
  %add2681 = add nsw i32 %mul2680, 1
  %sub2682 = sub nsw i32 %sub2672, %add2681
  br label %cond.end.2689

cond.false.2683:                                  ; preds = %cond.true.2655
  %415 = load i64, i64* %size4, align 8
  %conv2684 = trunc i64 %415 to i16
  %conv2685 = sext i16 %conv2684 to i32
  %add2686 = add nsw i32 0, %conv2685
  %mul2687 = mul nsw i32 0, %add2686
  %add2688 = add nsw i32 %mul2687, 0
  br label %cond.end.2689

cond.end.2689:                                    ; preds = %cond.false.2683, %cond.true.2663
  %cond2690 = phi i32 [ %sub2682, %cond.true.2663 ], [ %add2688, %cond.false.2683 ]
  %cmp2691 = icmp eq i32 %cond2690, 0
  br i1 %cmp2691, label %land.lhs.true.2693, label %lor.lhs.false.2698

land.lhs.true.2693:                               ; preds = %cond.end.2689
  %416 = load i64, i64* %size4, align 8
  %conv2694 = trunc i64 %416 to i16
  %conv2695 = sext i16 %conv2694 to i32
  %cmp2696 = icmp slt i32 %conv2695, 0
  br i1 %cmp2696, label %cond.true.2877, label %lor.lhs.false.2698

lor.lhs.false.2698:                               ; preds = %land.lhs.true.2693, %cond.end.2689
  br i1 false, label %cond.true.2699, label %cond.false.2778

cond.true.2699:                                   ; preds = %lor.lhs.false.2698
  %417 = load i64, i64* %size4, align 8
  %conv2700 = trunc i64 %417 to i16
  %conv2701 = sext i16 %conv2700 to i32
  %cmp2702 = icmp slt i32 %conv2701, 0
  br i1 %cmp2702, label %cond.true.2704, label %cond.false.2735

cond.true.2704:                                   ; preds = %cond.true.2699
  %418 = load i64, i64* %size4, align 8
  %conv2705 = trunc i64 %418 to i16
  %conv2706 = sext i16 %conv2705 to i32
  %419 = load i64, i64* %size4, align 8
  %conv2707 = trunc i64 %419 to i16
  %conv2708 = sext i16 %conv2707 to i32
  %add2709 = add nsw i32 0, %conv2708
  %mul2710 = mul nsw i32 0, %add2709
  %sub2711 = sub nsw i32 %mul2710, 1
  %cmp2712 = icmp slt i32 %sub2711, 0
  br i1 %cmp2712, label %cond.true.2714, label %cond.false.2724

cond.true.2714:                                   ; preds = %cond.true.2704
  %420 = load i64, i64* %size4, align 8
  %conv2715 = trunc i64 %420 to i16
  %conv2716 = sext i16 %conv2715 to i32
  %add2717 = add nsw i32 0, %conv2716
  %mul2718 = mul nsw i32 0, %add2717
  %add2719 = add nsw i32 %mul2718, 1
  %shl2720 = shl i32 %add2719, 30
  %sub2721 = sub nsw i32 %shl2720, 1
  %mul2722 = mul nsw i32 %sub2721, 2
  %add2723 = add nsw i32 %mul2722, 1
  br label %cond.end.2730

cond.false.2724:                                  ; preds = %cond.true.2704
  %421 = load i64, i64* %size4, align 8
  %conv2725 = trunc i64 %421 to i16
  %conv2726 = sext i16 %conv2725 to i32
  %add2727 = add nsw i32 0, %conv2726
  %mul2728 = mul nsw i32 0, %add2727
  %sub2729 = sub nsw i32 %mul2728, 1
  br label %cond.end.2730

cond.end.2730:                                    ; preds = %cond.false.2724, %cond.true.2714
  %cond2731 = phi i32 [ %add2723, %cond.true.2714 ], [ %sub2729, %cond.false.2724 ]
  %div2732 = sdiv i32 %cond2731, 8
  %cmp2733 = icmp slt i32 %conv2706, %div2732
  br i1 %cmp2733, label %cond.true.2877, label %lor.lhs.false.2857

cond.false.2735:                                  ; preds = %cond.true.2699
  br i1 false, label %cond.true.2736, label %cond.false.2737

cond.true.2736:                                   ; preds = %cond.false.2735
  br i1 false, label %cond.true.2877, label %lor.lhs.false.2857

cond.false.2737:                                  ; preds = %cond.false.2735
  %422 = load i64, i64* %size4, align 8
  %conv2738 = trunc i64 %422 to i16
  %conv2739 = sext i16 %conv2738 to i32
  %add2740 = add nsw i32 0, %conv2739
  %mul2741 = mul nsw i32 0, %add2740
  %sub2742 = sub nsw i32 %mul2741, 1
  %cmp2743 = icmp slt i32 %sub2742, 0
  br i1 %cmp2743, label %cond.true.2745, label %cond.false.2765

cond.true.2745:                                   ; preds = %cond.false.2737
  %423 = load i64, i64* %size4, align 8
  %conv2746 = trunc i64 %423 to i16
  %conv2747 = sext i16 %conv2746 to i32
  %add2748 = add nsw i32 0, %conv2747
  %mul2749 = mul nsw i32 0, %add2748
  %add2750 = add nsw i32 %mul2749, 0
  %neg2751 = xor i32 %add2750, -1
  %cmp2752 = icmp eq i32 %neg2751, -1
  %conv2753 = zext i1 %cmp2752 to i32
  %sub2754 = sub nsw i32 0, %conv2753
  %424 = load i64, i64* %size4, align 8
  %conv2755 = trunc i64 %424 to i16
  %conv2756 = sext i16 %conv2755 to i32
  %add2757 = add nsw i32 0, %conv2756
  %mul2758 = mul nsw i32 0, %add2757
  %add2759 = add nsw i32 %mul2758, 1
  %shl2760 = shl i32 %add2759, 30
  %sub2761 = sub nsw i32 %shl2760, 1
  %mul2762 = mul nsw i32 %sub2761, 2
  %add2763 = add nsw i32 %mul2762, 1
  %sub2764 = sub nsw i32 %sub2754, %add2763
  br label %cond.end.2771

cond.false.2765:                                  ; preds = %cond.false.2737
  %425 = load i64, i64* %size4, align 8
  %conv2766 = trunc i64 %425 to i16
  %conv2767 = sext i16 %conv2766 to i32
  %add2768 = add nsw i32 0, %conv2767
  %mul2769 = mul nsw i32 0, %add2768
  %add2770 = add nsw i32 %mul2769, 0
  br label %cond.end.2771

cond.end.2771:                                    ; preds = %cond.false.2765, %cond.true.2745
  %cond2772 = phi i32 [ %sub2764, %cond.true.2745 ], [ %add2770, %cond.false.2765 ]
  %div2773 = sdiv i32 %cond2772, 8
  %426 = load i64, i64* %size4, align 8
  %conv2774 = trunc i64 %426 to i16
  %conv2775 = sext i16 %conv2774 to i32
  %cmp2776 = icmp slt i32 %div2773, %conv2775
  br i1 %cmp2776, label %cond.true.2877, label %lor.lhs.false.2857

cond.false.2778:                                  ; preds = %lor.lhs.false.2698
  br i1 false, label %cond.true.2779, label %cond.false.2780

cond.true.2779:                                   ; preds = %cond.false.2778
  br i1 false, label %cond.true.2877, label %lor.lhs.false.2857

cond.false.2780:                                  ; preds = %cond.false.2778
  %427 = load i64, i64* %size4, align 8
  %conv2781 = trunc i64 %427 to i16
  %conv2782 = sext i16 %conv2781 to i32
  %cmp2783 = icmp slt i32 %conv2782, 0
  br i1 %cmp2783, label %cond.true.2785, label %cond.false.2826

cond.true.2785:                                   ; preds = %cond.false.2780
  %428 = load i64, i64* %size4, align 8
  %conv2786 = trunc i64 %428 to i16
  %conv2787 = sext i16 %conv2786 to i32
  %429 = load i64, i64* %size4, align 8
  %conv2788 = trunc i64 %429 to i16
  %conv2789 = sext i16 %conv2788 to i32
  %add2790 = add nsw i32 0, %conv2789
  %mul2791 = mul nsw i32 0, %add2790
  %sub2792 = sub nsw i32 %mul2791, 1
  %cmp2793 = icmp slt i32 %sub2792, 0
  br i1 %cmp2793, label %cond.true.2795, label %cond.false.2815

cond.true.2795:                                   ; preds = %cond.true.2785
  %430 = load i64, i64* %size4, align 8
  %conv2796 = trunc i64 %430 to i16
  %conv2797 = sext i16 %conv2796 to i32
  %add2798 = add nsw i32 0, %conv2797
  %mul2799 = mul nsw i32 0, %add2798
  %add2800 = add nsw i32 %mul2799, 0
  %neg2801 = xor i32 %add2800, -1
  %cmp2802 = icmp eq i32 %neg2801, -1
  %conv2803 = zext i1 %cmp2802 to i32
  %sub2804 = sub nsw i32 0, %conv2803
  %431 = load i64, i64* %size4, align 8
  %conv2805 = trunc i64 %431 to i16
  %conv2806 = sext i16 %conv2805 to i32
  %add2807 = add nsw i32 0, %conv2806
  %mul2808 = mul nsw i32 0, %add2807
  %add2809 = add nsw i32 %mul2808, 1
  %shl2810 = shl i32 %add2809, 30
  %sub2811 = sub nsw i32 %shl2810, 1
  %mul2812 = mul nsw i32 %sub2811, 2
  %add2813 = add nsw i32 %mul2812, 1
  %sub2814 = sub nsw i32 %sub2804, %add2813
  br label %cond.end.2821

cond.false.2815:                                  ; preds = %cond.true.2785
  %432 = load i64, i64* %size4, align 8
  %conv2816 = trunc i64 %432 to i16
  %conv2817 = sext i16 %conv2816 to i32
  %add2818 = add nsw i32 0, %conv2817
  %mul2819 = mul nsw i32 0, %add2818
  %add2820 = add nsw i32 %mul2819, 0
  br label %cond.end.2821

cond.end.2821:                                    ; preds = %cond.false.2815, %cond.true.2795
  %cond2822 = phi i32 [ %sub2814, %cond.true.2795 ], [ %add2820, %cond.false.2815 ]
  %div2823 = sdiv i32 %cond2822, 8
  %cmp2824 = icmp slt i32 %conv2787, %div2823
  br i1 %cmp2824, label %cond.true.2877, label %lor.lhs.false.2857

cond.false.2826:                                  ; preds = %cond.false.2780
  %433 = load i64, i64* %size4, align 8
  %conv2827 = trunc i64 %433 to i16
  %conv2828 = sext i16 %conv2827 to i32
  %add2829 = add nsw i32 0, %conv2828
  %mul2830 = mul nsw i32 0, %add2829
  %sub2831 = sub nsw i32 %mul2830, 1
  %cmp2832 = icmp slt i32 %sub2831, 0
  br i1 %cmp2832, label %cond.true.2834, label %cond.false.2844

cond.true.2834:                                   ; preds = %cond.false.2826
  %434 = load i64, i64* %size4, align 8
  %conv2835 = trunc i64 %434 to i16
  %conv2836 = sext i16 %conv2835 to i32
  %add2837 = add nsw i32 0, %conv2836
  %mul2838 = mul nsw i32 0, %add2837
  %add2839 = add nsw i32 %mul2838, 1
  %shl2840 = shl i32 %add2839, 30
  %sub2841 = sub nsw i32 %shl2840, 1
  %mul2842 = mul nsw i32 %sub2841, 2
  %add2843 = add nsw i32 %mul2842, 1
  br label %cond.end.2850

cond.false.2844:                                  ; preds = %cond.false.2826
  %435 = load i64, i64* %size4, align 8
  %conv2845 = trunc i64 %435 to i16
  %conv2846 = sext i16 %conv2845 to i32
  %add2847 = add nsw i32 0, %conv2846
  %mul2848 = mul nsw i32 0, %add2847
  %sub2849 = sub nsw i32 %mul2848, 1
  br label %cond.end.2850

cond.end.2850:                                    ; preds = %cond.false.2844, %cond.true.2834
  %cond2851 = phi i32 [ %add2843, %cond.true.2834 ], [ %sub2849, %cond.false.2844 ]
  %div2852 = sdiv i32 %cond2851, 8
  %436 = load i64, i64* %size4, align 8
  %conv2853 = trunc i64 %436 to i16
  %conv2854 = sext i16 %conv2853 to i32
  %cmp2855 = icmp slt i32 %div2852, %conv2854
  br i1 %cmp2855, label %cond.true.2877, label %lor.lhs.false.2857

lor.lhs.false.2857:                               ; preds = %cond.end.2850, %cond.end.2821, %cond.true.2779, %cond.end.2771, %cond.true.2736, %cond.end.2730
  %437 = load i64, i64* %size4, align 8
  %conv2858 = trunc i64 %437 to i16
  %conv2859 = sext i16 %conv2858 to i32
  %mul2860 = mul nsw i32 %conv2859, 8
  %mul2861 = mul nsw i32 0, %mul2860
  %sub2862 = sub nsw i32 %mul2861, 1
  %cmp2863 = icmp slt i32 %sub2862, 0
  br i1 %cmp2863, label %land.lhs.true.2865, label %lor.lhs.false.2871

land.lhs.true.2865:                               ; preds = %lor.lhs.false.2857
  %438 = load i64, i64* %size4, align 8
  %conv2866 = trunc i64 %438 to i16
  %conv2867 = sext i16 %conv2866 to i32
  %mul2868 = mul nsw i32 %conv2867, 8
  %cmp2869 = icmp slt i32 %mul2868, -32768
  br i1 %cmp2869, label %cond.true.2877, label %lor.lhs.false.2871

lor.lhs.false.2871:                               ; preds = %land.lhs.true.2865, %lor.lhs.false.2857
  %439 = load i64, i64* %size4, align 8
  %conv2872 = trunc i64 %439 to i16
  %conv2873 = sext i16 %conv2872 to i32
  %mul2874 = mul nsw i32 %conv2873, 8
  %cmp2875 = icmp slt i32 32767, %mul2874
  br i1 %cmp2875, label %cond.true.2877, label %cond.false.2900

cond.true.2877:                                   ; preds = %lor.lhs.false.2871, %land.lhs.true.2865, %cond.end.2850, %cond.end.2821, %cond.true.2779, %cond.end.2771, %cond.true.2736, %cond.end.2730, %land.lhs.true.2693
  %440 = load i64, i64* %size4, align 8
  %conv2878 = trunc i64 %440 to i16
  %conv2879 = zext i16 %conv2878 to i32
  %mul2880 = mul nsw i32 %conv2879, 8
  %cmp2881 = icmp sle i32 %mul2880, 32767
  br i1 %cmp2881, label %cond.true.2883, label %cond.false.2889

cond.true.2883:                                   ; preds = %cond.true.2877
  %441 = load i64, i64* %size4, align 8
  %conv2884 = trunc i64 %441 to i16
  %conv2885 = zext i16 %conv2884 to i32
  %mul2886 = mul nsw i32 %conv2885, 8
  %conv2887 = trunc i32 %mul2886 to i16
  %conv2888 = sext i16 %conv2887 to i32
  br label %cond.end.2897

cond.false.2889:                                  ; preds = %cond.true.2877
  %442 = load i64, i64* %size4, align 8
  %conv2890 = trunc i64 %442 to i16
  %conv2891 = zext i16 %conv2890 to i32
  %mul2892 = mul nsw i32 %conv2891, 8
  %sub2893 = sub nsw i32 %mul2892, -32768
  %conv2894 = trunc i32 %sub2893 to i16
  %conv2895 = sext i16 %conv2894 to i32
  %add2896 = add nsw i32 %conv2895, -32768
  br label %cond.end.2897

cond.end.2897:                                    ; preds = %cond.false.2889, %cond.true.2883
  %cond2898 = phi i32 [ %conv2888, %cond.true.2883 ], [ %add2896, %cond.false.2889 ]
  %conv2899 = sext i32 %cond2898 to i64
  store i64 %conv2899, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then.4345, label %lor.lhs.false.4342

cond.false.2900:                                  ; preds = %lor.lhs.false.2871
  %443 = load i64, i64* %size4, align 8
  %conv2901 = trunc i64 %443 to i16
  %conv2902 = zext i16 %conv2901 to i32
  %mul2903 = mul nsw i32 %conv2902, 8
  %cmp2904 = icmp sle i32 %mul2903, 32767
  br i1 %cmp2904, label %cond.true.2906, label %cond.false.2912

cond.true.2906:                                   ; preds = %cond.false.2900
  %444 = load i64, i64* %size4, align 8
  %conv2907 = trunc i64 %444 to i16
  %conv2908 = zext i16 %conv2907 to i32
  %mul2909 = mul nsw i32 %conv2908, 8
  %conv2910 = trunc i32 %mul2909 to i16
  %conv2911 = sext i16 %conv2910 to i32
  br label %cond.end.2920

cond.false.2912:                                  ; preds = %cond.false.2900
  %445 = load i64, i64* %size4, align 8
  %conv2913 = trunc i64 %445 to i16
  %conv2914 = zext i16 %conv2913 to i32
  %mul2915 = mul nsw i32 %conv2914, 8
  %sub2916 = sub nsw i32 %mul2915, -32768
  %conv2917 = trunc i32 %sub2916 to i16
  %conv2918 = sext i16 %conv2917 to i32
  %add2919 = add nsw i32 %conv2918, -32768
  br label %cond.end.2920

cond.end.2920:                                    ; preds = %cond.false.2912, %cond.true.2906
  %cond2921 = phi i32 [ %conv2911, %cond.true.2906 ], [ %add2919, %cond.false.2912 ]
  %conv2922 = sext i32 %cond2921 to i64
  store i64 %conv2922, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then.4345, label %lor.lhs.false.4342

cond.false.2923:                                  ; preds = %cond.true.2654
  %446 = load i64, i64* %size4, align 8
  %add2924 = add nsw i64 0, %446
  %mul2925 = mul nsw i64 0, %add2924
  %sub2926 = sub nsw i64 %mul2925, 1
  %cmp2927 = icmp slt i64 %sub2926, 0
  br i1 %cmp2927, label %cond.true.2929, label %cond.false.2946

cond.true.2929:                                   ; preds = %cond.false.2923
  %447 = load i64, i64* %size4, align 8
  %add2930 = add nsw i64 0, %447
  %mul2931 = mul nsw i64 0, %add2930
  %add2932 = add nsw i64 %mul2931, 0
  %neg2933 = xor i64 %add2932, -1
  %cmp2934 = icmp eq i64 %neg2933, -1
  %conv2935 = zext i1 %cmp2934 to i32
  %sub2936 = sub nsw i32 0, %conv2935
  %conv2937 = sext i32 %sub2936 to i64
  %448 = load i64, i64* %size4, align 8
  %add2938 = add nsw i64 0, %448
  %mul2939 = mul nsw i64 0, %add2938
  %add2940 = add nsw i64 %mul2939, 1
  %shl2941 = shl i64 %add2940, 62
  %sub2942 = sub nsw i64 %shl2941, 1
  %mul2943 = mul nsw i64 %sub2942, 2
  %add2944 = add nsw i64 %mul2943, 1
  %sub2945 = sub nsw i64 %conv2937, %add2944
  br label %cond.end.2950

cond.false.2946:                                  ; preds = %cond.false.2923
  %449 = load i64, i64* %size4, align 8
  %add2947 = add nsw i64 0, %449
  %mul2948 = mul nsw i64 0, %add2947
  %add2949 = add nsw i64 %mul2948, 0
  br label %cond.end.2950

cond.end.2950:                                    ; preds = %cond.false.2946, %cond.true.2929
  %cond2951 = phi i64 [ %sub2945, %cond.true.2929 ], [ %add2949, %cond.false.2946 ]
  %cmp2952 = icmp eq i64 %cond2951, 0
  br i1 %cmp2952, label %land.lhs.true.2954, label %lor.lhs.false.2957

land.lhs.true.2954:                               ; preds = %cond.end.2950
  %450 = load i64, i64* %size4, align 8
  %cmp2955 = icmp slt i64 %450, 0
  br i1 %cmp2955, label %cond.true.3092, label %lor.lhs.false.2957

lor.lhs.false.2957:                               ; preds = %land.lhs.true.2954, %cond.end.2950
  br i1 false, label %cond.true.2958, label %cond.false.3018

cond.true.2958:                                   ; preds = %lor.lhs.false.2957
  %451 = load i64, i64* %size4, align 8
  %cmp2959 = icmp slt i64 %451, 0
  br i1 %cmp2959, label %cond.true.2961, label %cond.false.2984

cond.true.2961:                                   ; preds = %cond.true.2958
  %452 = load i64, i64* %size4, align 8
  %453 = load i64, i64* %size4, align 8
  %add2962 = add nsw i64 0, %453
  %mul2963 = mul nsw i64 0, %add2962
  %sub2964 = sub nsw i64 %mul2963, 1
  %cmp2965 = icmp slt i64 %sub2964, 0
  br i1 %cmp2965, label %cond.true.2967, label %cond.false.2975

cond.true.2967:                                   ; preds = %cond.true.2961
  %454 = load i64, i64* %size4, align 8
  %add2968 = add nsw i64 0, %454
  %mul2969 = mul nsw i64 0, %add2968
  %add2970 = add nsw i64 %mul2969, 1
  %shl2971 = shl i64 %add2970, 62
  %sub2972 = sub nsw i64 %shl2971, 1
  %mul2973 = mul nsw i64 %sub2972, 2
  %add2974 = add nsw i64 %mul2973, 1
  br label %cond.end.2979

cond.false.2975:                                  ; preds = %cond.true.2961
  %455 = load i64, i64* %size4, align 8
  %add2976 = add nsw i64 0, %455
  %mul2977 = mul nsw i64 0, %add2976
  %sub2978 = sub nsw i64 %mul2977, 1
  br label %cond.end.2979

cond.end.2979:                                    ; preds = %cond.false.2975, %cond.true.2967
  %cond2980 = phi i64 [ %add2974, %cond.true.2967 ], [ %sub2978, %cond.false.2975 ]
  %div2981 = sdiv i64 %cond2980, 8
  %cmp2982 = icmp slt i64 %452, %div2981
  br i1 %cmp2982, label %cond.true.3092, label %lor.lhs.false.3078

cond.false.2984:                                  ; preds = %cond.true.2958
  br i1 false, label %cond.true.2985, label %cond.false.2986

cond.true.2985:                                   ; preds = %cond.false.2984
  br i1 false, label %cond.true.3092, label %lor.lhs.false.3078

cond.false.2986:                                  ; preds = %cond.false.2984
  %456 = load i64, i64* %size4, align 8
  %add2987 = add nsw i64 0, %456
  %mul2988 = mul nsw i64 0, %add2987
  %sub2989 = sub nsw i64 %mul2988, 1
  %cmp2990 = icmp slt i64 %sub2989, 0
  br i1 %cmp2990, label %cond.true.2992, label %cond.false.3009

cond.true.2992:                                   ; preds = %cond.false.2986
  %457 = load i64, i64* %size4, align 8
  %add2993 = add nsw i64 0, %457
  %mul2994 = mul nsw i64 0, %add2993
  %add2995 = add nsw i64 %mul2994, 0
  %neg2996 = xor i64 %add2995, -1
  %cmp2997 = icmp eq i64 %neg2996, -1
  %conv2998 = zext i1 %cmp2997 to i32
  %sub2999 = sub nsw i32 0, %conv2998
  %conv3000 = sext i32 %sub2999 to i64
  %458 = load i64, i64* %size4, align 8
  %add3001 = add nsw i64 0, %458
  %mul3002 = mul nsw i64 0, %add3001
  %add3003 = add nsw i64 %mul3002, 1
  %shl3004 = shl i64 %add3003, 62
  %sub3005 = sub nsw i64 %shl3004, 1
  %mul3006 = mul nsw i64 %sub3005, 2
  %add3007 = add nsw i64 %mul3006, 1
  %sub3008 = sub nsw i64 %conv3000, %add3007
  br label %cond.end.3013

cond.false.3009:                                  ; preds = %cond.false.2986
  %459 = load i64, i64* %size4, align 8
  %add3010 = add nsw i64 0, %459
  %mul3011 = mul nsw i64 0, %add3010
  %add3012 = add nsw i64 %mul3011, 0
  br label %cond.end.3013

cond.end.3013:                                    ; preds = %cond.false.3009, %cond.true.2992
  %cond3014 = phi i64 [ %sub3008, %cond.true.2992 ], [ %add3012, %cond.false.3009 ]
  %div3015 = sdiv i64 %cond3014, 8
  %460 = load i64, i64* %size4, align 8
  %cmp3016 = icmp slt i64 %div3015, %460
  br i1 %cmp3016, label %cond.true.3092, label %lor.lhs.false.3078

cond.false.3018:                                  ; preds = %lor.lhs.false.2957
  br i1 false, label %cond.true.3019, label %cond.false.3020

cond.true.3019:                                   ; preds = %cond.false.3018
  br i1 false, label %cond.true.3092, label %lor.lhs.false.3078

cond.false.3020:                                  ; preds = %cond.false.3018
  %461 = load i64, i64* %size4, align 8
  %cmp3021 = icmp slt i64 %461, 0
  br i1 %cmp3021, label %cond.true.3023, label %cond.false.3055

cond.true.3023:                                   ; preds = %cond.false.3020
  %462 = load i64, i64* %size4, align 8
  %463 = load i64, i64* %size4, align 8
  %add3024 = add nsw i64 0, %463
  %mul3025 = mul nsw i64 0, %add3024
  %sub3026 = sub nsw i64 %mul3025, 1
  %cmp3027 = icmp slt i64 %sub3026, 0
  br i1 %cmp3027, label %cond.true.3029, label %cond.false.3046

cond.true.3029:                                   ; preds = %cond.true.3023
  %464 = load i64, i64* %size4, align 8
  %add3030 = add nsw i64 0, %464
  %mul3031 = mul nsw i64 0, %add3030
  %add3032 = add nsw i64 %mul3031, 0
  %neg3033 = xor i64 %add3032, -1
  %cmp3034 = icmp eq i64 %neg3033, -1
  %conv3035 = zext i1 %cmp3034 to i32
  %sub3036 = sub nsw i32 0, %conv3035
  %conv3037 = sext i32 %sub3036 to i64
  %465 = load i64, i64* %size4, align 8
  %add3038 = add nsw i64 0, %465
  %mul3039 = mul nsw i64 0, %add3038
  %add3040 = add nsw i64 %mul3039, 1
  %shl3041 = shl i64 %add3040, 62
  %sub3042 = sub nsw i64 %shl3041, 1
  %mul3043 = mul nsw i64 %sub3042, 2
  %add3044 = add nsw i64 %mul3043, 1
  %sub3045 = sub nsw i64 %conv3037, %add3044
  br label %cond.end.3050

cond.false.3046:                                  ; preds = %cond.true.3023
  %466 = load i64, i64* %size4, align 8
  %add3047 = add nsw i64 0, %466
  %mul3048 = mul nsw i64 0, %add3047
  %add3049 = add nsw i64 %mul3048, 0
  br label %cond.end.3050

cond.end.3050:                                    ; preds = %cond.false.3046, %cond.true.3029
  %cond3051 = phi i64 [ %sub3045, %cond.true.3029 ], [ %add3049, %cond.false.3046 ]
  %div3052 = sdiv i64 %cond3051, 8
  %cmp3053 = icmp slt i64 %462, %div3052
  br i1 %cmp3053, label %cond.true.3092, label %lor.lhs.false.3078

cond.false.3055:                                  ; preds = %cond.false.3020
  %467 = load i64, i64* %size4, align 8
  %add3056 = add nsw i64 0, %467
  %mul3057 = mul nsw i64 0, %add3056
  %sub3058 = sub nsw i64 %mul3057, 1
  %cmp3059 = icmp slt i64 %sub3058, 0
  br i1 %cmp3059, label %cond.true.3061, label %cond.false.3069

cond.true.3061:                                   ; preds = %cond.false.3055
  %468 = load i64, i64* %size4, align 8
  %add3062 = add nsw i64 0, %468
  %mul3063 = mul nsw i64 0, %add3062
  %add3064 = add nsw i64 %mul3063, 1
  %shl3065 = shl i64 %add3064, 62
  %sub3066 = sub nsw i64 %shl3065, 1
  %mul3067 = mul nsw i64 %sub3066, 2
  %add3068 = add nsw i64 %mul3067, 1
  br label %cond.end.3073

cond.false.3069:                                  ; preds = %cond.false.3055
  %469 = load i64, i64* %size4, align 8
  %add3070 = add nsw i64 0, %469
  %mul3071 = mul nsw i64 0, %add3070
  %sub3072 = sub nsw i64 %mul3071, 1
  br label %cond.end.3073

cond.end.3073:                                    ; preds = %cond.false.3069, %cond.true.3061
  %cond3074 = phi i64 [ %add3068, %cond.true.3061 ], [ %sub3072, %cond.false.3069 ]
  %div3075 = sdiv i64 %cond3074, 8
  %470 = load i64, i64* %size4, align 8
  %cmp3076 = icmp slt i64 %div3075, %470
  br i1 %cmp3076, label %cond.true.3092, label %lor.lhs.false.3078

lor.lhs.false.3078:                               ; preds = %cond.end.3073, %cond.end.3050, %cond.true.3019, %cond.end.3013, %cond.true.2985, %cond.end.2979
  %471 = load i64, i64* %size4, align 8
  %mul3079 = mul nsw i64 %471, 8
  %mul3080 = mul nsw i64 0, %mul3079
  %sub3081 = sub nsw i64 %mul3080, 1
  %cmp3082 = icmp slt i64 %sub3081, 0
  br i1 %cmp3082, label %land.lhs.true.3084, label %lor.lhs.false.3088

land.lhs.true.3084:                               ; preds = %lor.lhs.false.3078
  %472 = load i64, i64* %size4, align 8
  %mul3085 = mul nsw i64 %472, 8
  %cmp3086 = icmp slt i64 %mul3085, -32768
  br i1 %cmp3086, label %cond.true.3092, label %lor.lhs.false.3088

lor.lhs.false.3088:                               ; preds = %land.lhs.true.3084, %lor.lhs.false.3078
  %473 = load i64, i64* %size4, align 8
  %mul3089 = mul nsw i64 %473, 8
  %cmp3090 = icmp slt i64 32767, %mul3089
  br i1 %cmp3090, label %cond.true.3092, label %cond.false.3115

cond.true.3092:                                   ; preds = %lor.lhs.false.3088, %land.lhs.true.3084, %cond.end.3073, %cond.end.3050, %cond.true.3019, %cond.end.3013, %cond.true.2985, %cond.end.2979, %land.lhs.true.2954
  %474 = load i64, i64* %size4, align 8
  %conv3093 = trunc i64 %474 to i16
  %conv3094 = zext i16 %conv3093 to i32
  %mul3095 = mul nsw i32 %conv3094, 8
  %cmp3096 = icmp sle i32 %mul3095, 32767
  br i1 %cmp3096, label %cond.true.3098, label %cond.false.3104

cond.true.3098:                                   ; preds = %cond.true.3092
  %475 = load i64, i64* %size4, align 8
  %conv3099 = trunc i64 %475 to i16
  %conv3100 = zext i16 %conv3099 to i32
  %mul3101 = mul nsw i32 %conv3100, 8
  %conv3102 = trunc i32 %mul3101 to i16
  %conv3103 = sext i16 %conv3102 to i32
  br label %cond.end.3112

cond.false.3104:                                  ; preds = %cond.true.3092
  %476 = load i64, i64* %size4, align 8
  %conv3105 = trunc i64 %476 to i16
  %conv3106 = zext i16 %conv3105 to i32
  %mul3107 = mul nsw i32 %conv3106, 8
  %sub3108 = sub nsw i32 %mul3107, -32768
  %conv3109 = trunc i32 %sub3108 to i16
  %conv3110 = sext i16 %conv3109 to i32
  %add3111 = add nsw i32 %conv3110, -32768
  br label %cond.end.3112

cond.end.3112:                                    ; preds = %cond.false.3104, %cond.true.3098
  %cond3113 = phi i32 [ %conv3103, %cond.true.3098 ], [ %add3111, %cond.false.3104 ]
  %conv3114 = sext i32 %cond3113 to i64
  store i64 %conv3114, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then.4345, label %lor.lhs.false.4342

cond.false.3115:                                  ; preds = %lor.lhs.false.3088
  %477 = load i64, i64* %size4, align 8
  %conv3116 = trunc i64 %477 to i16
  %conv3117 = zext i16 %conv3116 to i32
  %mul3118 = mul nsw i32 %conv3117, 8
  %cmp3119 = icmp sle i32 %mul3118, 32767
  br i1 %cmp3119, label %cond.true.3121, label %cond.false.3127

cond.true.3121:                                   ; preds = %cond.false.3115
  %478 = load i64, i64* %size4, align 8
  %conv3122 = trunc i64 %478 to i16
  %conv3123 = zext i16 %conv3122 to i32
  %mul3124 = mul nsw i32 %conv3123, 8
  %conv3125 = trunc i32 %mul3124 to i16
  %conv3126 = sext i16 %conv3125 to i32
  br label %cond.end.3135

cond.false.3127:                                  ; preds = %cond.false.3115
  %479 = load i64, i64* %size4, align 8
  %conv3128 = trunc i64 %479 to i16
  %conv3129 = zext i16 %conv3128 to i32
  %mul3130 = mul nsw i32 %conv3129, 8
  %sub3131 = sub nsw i32 %mul3130, -32768
  %conv3132 = trunc i32 %sub3131 to i16
  %conv3133 = sext i16 %conv3132 to i32
  %add3134 = add nsw i32 %conv3133, -32768
  br label %cond.end.3135

cond.end.3135:                                    ; preds = %cond.false.3127, %cond.true.3121
  %cond3136 = phi i32 [ %conv3126, %cond.true.3121 ], [ %add3134, %cond.false.3127 ]
  %conv3137 = sext i32 %cond3136 to i64
  store i64 %conv3137, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then.4345, label %lor.lhs.false.4342

cond.false.3138:                                  ; preds = %cond.false.2653
  br i1 false, label %cond.true.3139, label %cond.false.3567

cond.true.3139:                                   ; preds = %cond.false.3138
  br i1 false, label %cond.true.3140, label %cond.false.3366

cond.true.3140:                                   ; preds = %cond.true.3139
  %480 = load i64, i64* %size4, align 8
  %conv3141 = trunc i64 %480 to i32
  %add3142 = add nsw i32 0, %conv3141
  %mul3143 = mul nsw i32 0, %add3142
  %sub3144 = sub nsw i32 %mul3143, 1
  %cmp3145 = icmp slt i32 %sub3144, 0
  br i1 %cmp3145, label %cond.true.3147, label %cond.false.3165

cond.true.3147:                                   ; preds = %cond.true.3140
  %481 = load i64, i64* %size4, align 8
  %conv3148 = trunc i64 %481 to i32
  %add3149 = add nsw i32 0, %conv3148
  %mul3150 = mul nsw i32 0, %add3149
  %add3151 = add nsw i32 %mul3150, 0
  %neg3152 = xor i32 %add3151, -1
  %cmp3153 = icmp eq i32 %neg3152, -1
  %conv3154 = zext i1 %cmp3153 to i32
  %sub3155 = sub nsw i32 0, %conv3154
  %482 = load i64, i64* %size4, align 8
  %conv3156 = trunc i64 %482 to i32
  %add3157 = add nsw i32 0, %conv3156
  %mul3158 = mul nsw i32 0, %add3157
  %add3159 = add nsw i32 %mul3158, 1
  %shl3160 = shl i32 %add3159, 30
  %sub3161 = sub nsw i32 %shl3160, 1
  %mul3162 = mul nsw i32 %sub3161, 2
  %add3163 = add nsw i32 %mul3162, 1
  %sub3164 = sub nsw i32 %sub3155, %add3163
  br label %cond.end.3170

cond.false.3165:                                  ; preds = %cond.true.3140
  %483 = load i64, i64* %size4, align 8
  %conv3166 = trunc i64 %483 to i32
  %add3167 = add nsw i32 0, %conv3166
  %mul3168 = mul nsw i32 0, %add3167
  %add3169 = add nsw i32 %mul3168, 0
  br label %cond.end.3170

cond.end.3170:                                    ; preds = %cond.false.3165, %cond.true.3147
  %cond3171 = phi i32 [ %sub3164, %cond.true.3147 ], [ %add3169, %cond.false.3165 ]
  %cmp3172 = icmp eq i32 %cond3171, 0
  br i1 %cmp3172, label %land.lhs.true.3174, label %lor.lhs.false.3178

land.lhs.true.3174:                               ; preds = %cond.end.3170
  %484 = load i64, i64* %size4, align 8
  %conv3175 = trunc i64 %484 to i32
  %cmp3176 = icmp slt i32 %conv3175, 0
  br i1 %cmp3176, label %cond.true.3334, label %lor.lhs.false.3178

lor.lhs.false.3178:                               ; preds = %land.lhs.true.3174, %cond.end.3170
  br i1 false, label %cond.true.3179, label %cond.false.3248

cond.true.3179:                                   ; preds = %lor.lhs.false.3178
  %485 = load i64, i64* %size4, align 8
  %conv3180 = trunc i64 %485 to i32
  %cmp3181 = icmp slt i32 %conv3180, 0
  br i1 %cmp3181, label %cond.true.3183, label %cond.false.3210

cond.true.3183:                                   ; preds = %cond.true.3179
  %486 = load i64, i64* %size4, align 8
  %conv3184 = trunc i64 %486 to i32
  %487 = load i64, i64* %size4, align 8
  %conv3185 = trunc i64 %487 to i32
  %add3186 = add nsw i32 0, %conv3185
  %mul3187 = mul nsw i32 0, %add3186
  %sub3188 = sub nsw i32 %mul3187, 1
  %cmp3189 = icmp slt i32 %sub3188, 0
  br i1 %cmp3189, label %cond.true.3191, label %cond.false.3200

cond.true.3191:                                   ; preds = %cond.true.3183
  %488 = load i64, i64* %size4, align 8
  %conv3192 = trunc i64 %488 to i32
  %add3193 = add nsw i32 0, %conv3192
  %mul3194 = mul nsw i32 0, %add3193
  %add3195 = add nsw i32 %mul3194, 1
  %shl3196 = shl i32 %add3195, 30
  %sub3197 = sub nsw i32 %shl3196, 1
  %mul3198 = mul nsw i32 %sub3197, 2
  %add3199 = add nsw i32 %mul3198, 1
  br label %cond.end.3205

cond.false.3200:                                  ; preds = %cond.true.3183
  %489 = load i64, i64* %size4, align 8
  %conv3201 = trunc i64 %489 to i32
  %add3202 = add nsw i32 0, %conv3201
  %mul3203 = mul nsw i32 0, %add3202
  %sub3204 = sub nsw i32 %mul3203, 1
  br label %cond.end.3205

cond.end.3205:                                    ; preds = %cond.false.3200, %cond.true.3191
  %cond3206 = phi i32 [ %add3199, %cond.true.3191 ], [ %sub3204, %cond.false.3200 ]
  %div3207 = sdiv i32 %cond3206, 8
  %cmp3208 = icmp slt i32 %conv3184, %div3207
  br i1 %cmp3208, label %cond.true.3334, label %lor.lhs.false.3317

cond.false.3210:                                  ; preds = %cond.true.3179
  br i1 false, label %cond.true.3211, label %cond.false.3212

cond.true.3211:                                   ; preds = %cond.false.3210
  br i1 false, label %cond.true.3334, label %lor.lhs.false.3317

cond.false.3212:                                  ; preds = %cond.false.3210
  %490 = load i64, i64* %size4, align 8
  %conv3213 = trunc i64 %490 to i32
  %add3214 = add nsw i32 0, %conv3213
  %mul3215 = mul nsw i32 0, %add3214
  %sub3216 = sub nsw i32 %mul3215, 1
  %cmp3217 = icmp slt i32 %sub3216, 0
  br i1 %cmp3217, label %cond.true.3219, label %cond.false.3237

cond.true.3219:                                   ; preds = %cond.false.3212
  %491 = load i64, i64* %size4, align 8
  %conv3220 = trunc i64 %491 to i32
  %add3221 = add nsw i32 0, %conv3220
  %mul3222 = mul nsw i32 0, %add3221
  %add3223 = add nsw i32 %mul3222, 0
  %neg3224 = xor i32 %add3223, -1
  %cmp3225 = icmp eq i32 %neg3224, -1
  %conv3226 = zext i1 %cmp3225 to i32
  %sub3227 = sub nsw i32 0, %conv3226
  %492 = load i64, i64* %size4, align 8
  %conv3228 = trunc i64 %492 to i32
  %add3229 = add nsw i32 0, %conv3228
  %mul3230 = mul nsw i32 0, %add3229
  %add3231 = add nsw i32 %mul3230, 1
  %shl3232 = shl i32 %add3231, 30
  %sub3233 = sub nsw i32 %shl3232, 1
  %mul3234 = mul nsw i32 %sub3233, 2
  %add3235 = add nsw i32 %mul3234, 1
  %sub3236 = sub nsw i32 %sub3227, %add3235
  br label %cond.end.3242

cond.false.3237:                                  ; preds = %cond.false.3212
  %493 = load i64, i64* %size4, align 8
  %conv3238 = trunc i64 %493 to i32
  %add3239 = add nsw i32 0, %conv3238
  %mul3240 = mul nsw i32 0, %add3239
  %add3241 = add nsw i32 %mul3240, 0
  br label %cond.end.3242

cond.end.3242:                                    ; preds = %cond.false.3237, %cond.true.3219
  %cond3243 = phi i32 [ %sub3236, %cond.true.3219 ], [ %add3241, %cond.false.3237 ]
  %div3244 = sdiv i32 %cond3243, 8
  %494 = load i64, i64* %size4, align 8
  %conv3245 = trunc i64 %494 to i32
  %cmp3246 = icmp slt i32 %div3244, %conv3245
  br i1 %cmp3246, label %cond.true.3334, label %lor.lhs.false.3317

cond.false.3248:                                  ; preds = %lor.lhs.false.3178
  br i1 false, label %cond.true.3249, label %cond.false.3250

cond.true.3249:                                   ; preds = %cond.false.3248
  br i1 false, label %cond.true.3334, label %lor.lhs.false.3317

cond.false.3250:                                  ; preds = %cond.false.3248
  %495 = load i64, i64* %size4, align 8
  %conv3251 = trunc i64 %495 to i32
  %cmp3252 = icmp slt i32 %conv3251, 0
  br i1 %cmp3252, label %cond.true.3254, label %cond.false.3290

cond.true.3254:                                   ; preds = %cond.false.3250
  %496 = load i64, i64* %size4, align 8
  %conv3255 = trunc i64 %496 to i32
  %497 = load i64, i64* %size4, align 8
  %conv3256 = trunc i64 %497 to i32
  %add3257 = add nsw i32 0, %conv3256
  %mul3258 = mul nsw i32 0, %add3257
  %sub3259 = sub nsw i32 %mul3258, 1
  %cmp3260 = icmp slt i32 %sub3259, 0
  br i1 %cmp3260, label %cond.true.3262, label %cond.false.3280

cond.true.3262:                                   ; preds = %cond.true.3254
  %498 = load i64, i64* %size4, align 8
  %conv3263 = trunc i64 %498 to i32
  %add3264 = add nsw i32 0, %conv3263
  %mul3265 = mul nsw i32 0, %add3264
  %add3266 = add nsw i32 %mul3265, 0
  %neg3267 = xor i32 %add3266, -1
  %cmp3268 = icmp eq i32 %neg3267, -1
  %conv3269 = zext i1 %cmp3268 to i32
  %sub3270 = sub nsw i32 0, %conv3269
  %499 = load i64, i64* %size4, align 8
  %conv3271 = trunc i64 %499 to i32
  %add3272 = add nsw i32 0, %conv3271
  %mul3273 = mul nsw i32 0, %add3272
  %add3274 = add nsw i32 %mul3273, 1
  %shl3275 = shl i32 %add3274, 30
  %sub3276 = sub nsw i32 %shl3275, 1
  %mul3277 = mul nsw i32 %sub3276, 2
  %add3278 = add nsw i32 %mul3277, 1
  %sub3279 = sub nsw i32 %sub3270, %add3278
  br label %cond.end.3285

cond.false.3280:                                  ; preds = %cond.true.3254
  %500 = load i64, i64* %size4, align 8
  %conv3281 = trunc i64 %500 to i32
  %add3282 = add nsw i32 0, %conv3281
  %mul3283 = mul nsw i32 0, %add3282
  %add3284 = add nsw i32 %mul3283, 0
  br label %cond.end.3285

cond.end.3285:                                    ; preds = %cond.false.3280, %cond.true.3262
  %cond3286 = phi i32 [ %sub3279, %cond.true.3262 ], [ %add3284, %cond.false.3280 ]
  %div3287 = sdiv i32 %cond3286, 8
  %cmp3288 = icmp slt i32 %conv3255, %div3287
  br i1 %cmp3288, label %cond.true.3334, label %lor.lhs.false.3317

cond.false.3290:                                  ; preds = %cond.false.3250
  %501 = load i64, i64* %size4, align 8
  %conv3291 = trunc i64 %501 to i32
  %add3292 = add nsw i32 0, %conv3291
  %mul3293 = mul nsw i32 0, %add3292
  %sub3294 = sub nsw i32 %mul3293, 1
  %cmp3295 = icmp slt i32 %sub3294, 0
  br i1 %cmp3295, label %cond.true.3297, label %cond.false.3306

cond.true.3297:                                   ; preds = %cond.false.3290
  %502 = load i64, i64* %size4, align 8
  %conv3298 = trunc i64 %502 to i32
  %add3299 = add nsw i32 0, %conv3298
  %mul3300 = mul nsw i32 0, %add3299
  %add3301 = add nsw i32 %mul3300, 1
  %shl3302 = shl i32 %add3301, 30
  %sub3303 = sub nsw i32 %shl3302, 1
  %mul3304 = mul nsw i32 %sub3303, 2
  %add3305 = add nsw i32 %mul3304, 1
  br label %cond.end.3311

cond.false.3306:                                  ; preds = %cond.false.3290
  %503 = load i64, i64* %size4, align 8
  %conv3307 = trunc i64 %503 to i32
  %add3308 = add nsw i32 0, %conv3307
  %mul3309 = mul nsw i32 0, %add3308
  %sub3310 = sub nsw i32 %mul3309, 1
  br label %cond.end.3311

cond.end.3311:                                    ; preds = %cond.false.3306, %cond.true.3297
  %cond3312 = phi i32 [ %add3305, %cond.true.3297 ], [ %sub3310, %cond.false.3306 ]
  %div3313 = sdiv i32 %cond3312, 8
  %504 = load i64, i64* %size4, align 8
  %conv3314 = trunc i64 %504 to i32
  %cmp3315 = icmp slt i32 %div3313, %conv3314
  br i1 %cmp3315, label %cond.true.3334, label %lor.lhs.false.3317

lor.lhs.false.3317:                               ; preds = %cond.end.3311, %cond.end.3285, %cond.true.3249, %cond.end.3242, %cond.true.3211, %cond.end.3205
  %505 = load i64, i64* %size4, align 8
  %conv3318 = trunc i64 %505 to i32
  %mul3319 = mul nsw i32 %conv3318, 8
  %mul3320 = mul nsw i32 0, %mul3319
  %sub3321 = sub nsw i32 %mul3320, 1
  %cmp3322 = icmp slt i32 %sub3321, 0
  br i1 %cmp3322, label %land.lhs.true.3324, label %lor.lhs.false.3329

land.lhs.true.3324:                               ; preds = %lor.lhs.false.3317
  %506 = load i64, i64* %size4, align 8
  %conv3325 = trunc i64 %506 to i32
  %mul3326 = mul nsw i32 %conv3325, 8
  %cmp3327 = icmp slt i32 %mul3326, -2147483648
  br i1 %cmp3327, label %cond.true.3334, label %lor.lhs.false.3329

lor.lhs.false.3329:                               ; preds = %land.lhs.true.3324, %lor.lhs.false.3317
  %507 = load i64, i64* %size4, align 8
  %conv3330 = trunc i64 %507 to i32
  %mul3331 = mul nsw i32 %conv3330, 8
  %cmp3332 = icmp slt i32 2147483647, %mul3331
  br i1 %cmp3332, label %cond.true.3334, label %cond.false.3350

cond.true.3334:                                   ; preds = %lor.lhs.false.3329, %land.lhs.true.3324, %cond.end.3311, %cond.end.3285, %cond.true.3249, %cond.end.3242, %cond.true.3211, %cond.end.3205, %land.lhs.true.3174
  %508 = load i64, i64* %size4, align 8
  %conv3335 = trunc i64 %508 to i32
  %mul3336 = mul i32 %conv3335, 8
  %cmp3337 = icmp ule i32 %mul3336, 2147483647
  br i1 %cmp3337, label %cond.true.3339, label %cond.false.3342

cond.true.3339:                                   ; preds = %cond.true.3334
  %509 = load i64, i64* %size4, align 8
  %conv3340 = trunc i64 %509 to i32
  %mul3341 = mul i32 %conv3340, 8
  br label %cond.end.3347

cond.false.3342:                                  ; preds = %cond.true.3334
  %510 = load i64, i64* %size4, align 8
  %conv3343 = trunc i64 %510 to i32
  %mul3344 = mul i32 %conv3343, 8
  %sub3345 = sub i32 %mul3344, -2147483648
  %add3346 = add nsw i32 %sub3345, -2147483648
  br label %cond.end.3347

cond.end.3347:                                    ; preds = %cond.false.3342, %cond.true.3339
  %cond3348 = phi i32 [ %mul3341, %cond.true.3339 ], [ %add3346, %cond.false.3342 ]
  %conv3349 = sext i32 %cond3348 to i64
  store i64 %conv3349, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then.4345, label %lor.lhs.false.4342

cond.false.3350:                                  ; preds = %lor.lhs.false.3329
  %511 = load i64, i64* %size4, align 8
  %conv3351 = trunc i64 %511 to i32
  %mul3352 = mul i32 %conv3351, 8
  %cmp3353 = icmp ule i32 %mul3352, 2147483647
  br i1 %cmp3353, label %cond.true.3355, label %cond.false.3358

cond.true.3355:                                   ; preds = %cond.false.3350
  %512 = load i64, i64* %size4, align 8
  %conv3356 = trunc i64 %512 to i32
  %mul3357 = mul i32 %conv3356, 8
  br label %cond.end.3363

cond.false.3358:                                  ; preds = %cond.false.3350
  %513 = load i64, i64* %size4, align 8
  %conv3359 = trunc i64 %513 to i32
  %mul3360 = mul i32 %conv3359, 8
  %sub3361 = sub i32 %mul3360, -2147483648
  %add3362 = add nsw i32 %sub3361, -2147483648
  br label %cond.end.3363

cond.end.3363:                                    ; preds = %cond.false.3358, %cond.true.3355
  %cond3364 = phi i32 [ %mul3357, %cond.true.3355 ], [ %add3362, %cond.false.3358 ]
  %conv3365 = sext i32 %cond3364 to i64
  store i64 %conv3365, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then.4345, label %lor.lhs.false.4342

cond.false.3366:                                  ; preds = %cond.true.3139
  %514 = load i64, i64* %size4, align 8
  %add3367 = add nsw i64 0, %514
  %mul3368 = mul nsw i64 0, %add3367
  %sub3369 = sub nsw i64 %mul3368, 1
  %cmp3370 = icmp slt i64 %sub3369, 0
  br i1 %cmp3370, label %cond.true.3372, label %cond.false.3389

cond.true.3372:                                   ; preds = %cond.false.3366
  %515 = load i64, i64* %size4, align 8
  %add3373 = add nsw i64 0, %515
  %mul3374 = mul nsw i64 0, %add3373
  %add3375 = add nsw i64 %mul3374, 0
  %neg3376 = xor i64 %add3375, -1
  %cmp3377 = icmp eq i64 %neg3376, -1
  %conv3378 = zext i1 %cmp3377 to i32
  %sub3379 = sub nsw i32 0, %conv3378
  %conv3380 = sext i32 %sub3379 to i64
  %516 = load i64, i64* %size4, align 8
  %add3381 = add nsw i64 0, %516
  %mul3382 = mul nsw i64 0, %add3381
  %add3383 = add nsw i64 %mul3382, 1
  %shl3384 = shl i64 %add3383, 62
  %sub3385 = sub nsw i64 %shl3384, 1
  %mul3386 = mul nsw i64 %sub3385, 2
  %add3387 = add nsw i64 %mul3386, 1
  %sub3388 = sub nsw i64 %conv3380, %add3387
  br label %cond.end.3393

cond.false.3389:                                  ; preds = %cond.false.3366
  %517 = load i64, i64* %size4, align 8
  %add3390 = add nsw i64 0, %517
  %mul3391 = mul nsw i64 0, %add3390
  %add3392 = add nsw i64 %mul3391, 0
  br label %cond.end.3393

cond.end.3393:                                    ; preds = %cond.false.3389, %cond.true.3372
  %cond3394 = phi i64 [ %sub3388, %cond.true.3372 ], [ %add3392, %cond.false.3389 ]
  %cmp3395 = icmp eq i64 %cond3394, 0
  br i1 %cmp3395, label %land.lhs.true.3397, label %lor.lhs.false.3400

land.lhs.true.3397:                               ; preds = %cond.end.3393
  %518 = load i64, i64* %size4, align 8
  %cmp3398 = icmp slt i64 %518, 0
  br i1 %cmp3398, label %cond.true.3535, label %lor.lhs.false.3400

lor.lhs.false.3400:                               ; preds = %land.lhs.true.3397, %cond.end.3393
  br i1 false, label %cond.true.3401, label %cond.false.3461

cond.true.3401:                                   ; preds = %lor.lhs.false.3400
  %519 = load i64, i64* %size4, align 8
  %cmp3402 = icmp slt i64 %519, 0
  br i1 %cmp3402, label %cond.true.3404, label %cond.false.3427

cond.true.3404:                                   ; preds = %cond.true.3401
  %520 = load i64, i64* %size4, align 8
  %521 = load i64, i64* %size4, align 8
  %add3405 = add nsw i64 0, %521
  %mul3406 = mul nsw i64 0, %add3405
  %sub3407 = sub nsw i64 %mul3406, 1
  %cmp3408 = icmp slt i64 %sub3407, 0
  br i1 %cmp3408, label %cond.true.3410, label %cond.false.3418

cond.true.3410:                                   ; preds = %cond.true.3404
  %522 = load i64, i64* %size4, align 8
  %add3411 = add nsw i64 0, %522
  %mul3412 = mul nsw i64 0, %add3411
  %add3413 = add nsw i64 %mul3412, 1
  %shl3414 = shl i64 %add3413, 62
  %sub3415 = sub nsw i64 %shl3414, 1
  %mul3416 = mul nsw i64 %sub3415, 2
  %add3417 = add nsw i64 %mul3416, 1
  br label %cond.end.3422

cond.false.3418:                                  ; preds = %cond.true.3404
  %523 = load i64, i64* %size4, align 8
  %add3419 = add nsw i64 0, %523
  %mul3420 = mul nsw i64 0, %add3419
  %sub3421 = sub nsw i64 %mul3420, 1
  br label %cond.end.3422

cond.end.3422:                                    ; preds = %cond.false.3418, %cond.true.3410
  %cond3423 = phi i64 [ %add3417, %cond.true.3410 ], [ %sub3421, %cond.false.3418 ]
  %div3424 = sdiv i64 %cond3423, 8
  %cmp3425 = icmp slt i64 %520, %div3424
  br i1 %cmp3425, label %cond.true.3535, label %lor.lhs.false.3521

cond.false.3427:                                  ; preds = %cond.true.3401
  br i1 false, label %cond.true.3428, label %cond.false.3429

cond.true.3428:                                   ; preds = %cond.false.3427
  br i1 false, label %cond.true.3535, label %lor.lhs.false.3521

cond.false.3429:                                  ; preds = %cond.false.3427
  %524 = load i64, i64* %size4, align 8
  %add3430 = add nsw i64 0, %524
  %mul3431 = mul nsw i64 0, %add3430
  %sub3432 = sub nsw i64 %mul3431, 1
  %cmp3433 = icmp slt i64 %sub3432, 0
  br i1 %cmp3433, label %cond.true.3435, label %cond.false.3452

cond.true.3435:                                   ; preds = %cond.false.3429
  %525 = load i64, i64* %size4, align 8
  %add3436 = add nsw i64 0, %525
  %mul3437 = mul nsw i64 0, %add3436
  %add3438 = add nsw i64 %mul3437, 0
  %neg3439 = xor i64 %add3438, -1
  %cmp3440 = icmp eq i64 %neg3439, -1
  %conv3441 = zext i1 %cmp3440 to i32
  %sub3442 = sub nsw i32 0, %conv3441
  %conv3443 = sext i32 %sub3442 to i64
  %526 = load i64, i64* %size4, align 8
  %add3444 = add nsw i64 0, %526
  %mul3445 = mul nsw i64 0, %add3444
  %add3446 = add nsw i64 %mul3445, 1
  %shl3447 = shl i64 %add3446, 62
  %sub3448 = sub nsw i64 %shl3447, 1
  %mul3449 = mul nsw i64 %sub3448, 2
  %add3450 = add nsw i64 %mul3449, 1
  %sub3451 = sub nsw i64 %conv3443, %add3450
  br label %cond.end.3456

cond.false.3452:                                  ; preds = %cond.false.3429
  %527 = load i64, i64* %size4, align 8
  %add3453 = add nsw i64 0, %527
  %mul3454 = mul nsw i64 0, %add3453
  %add3455 = add nsw i64 %mul3454, 0
  br label %cond.end.3456

cond.end.3456:                                    ; preds = %cond.false.3452, %cond.true.3435
  %cond3457 = phi i64 [ %sub3451, %cond.true.3435 ], [ %add3455, %cond.false.3452 ]
  %div3458 = sdiv i64 %cond3457, 8
  %528 = load i64, i64* %size4, align 8
  %cmp3459 = icmp slt i64 %div3458, %528
  br i1 %cmp3459, label %cond.true.3535, label %lor.lhs.false.3521

cond.false.3461:                                  ; preds = %lor.lhs.false.3400
  br i1 false, label %cond.true.3462, label %cond.false.3463

cond.true.3462:                                   ; preds = %cond.false.3461
  br i1 false, label %cond.true.3535, label %lor.lhs.false.3521

cond.false.3463:                                  ; preds = %cond.false.3461
  %529 = load i64, i64* %size4, align 8
  %cmp3464 = icmp slt i64 %529, 0
  br i1 %cmp3464, label %cond.true.3466, label %cond.false.3498

cond.true.3466:                                   ; preds = %cond.false.3463
  %530 = load i64, i64* %size4, align 8
  %531 = load i64, i64* %size4, align 8
  %add3467 = add nsw i64 0, %531
  %mul3468 = mul nsw i64 0, %add3467
  %sub3469 = sub nsw i64 %mul3468, 1
  %cmp3470 = icmp slt i64 %sub3469, 0
  br i1 %cmp3470, label %cond.true.3472, label %cond.false.3489

cond.true.3472:                                   ; preds = %cond.true.3466
  %532 = load i64, i64* %size4, align 8
  %add3473 = add nsw i64 0, %532
  %mul3474 = mul nsw i64 0, %add3473
  %add3475 = add nsw i64 %mul3474, 0
  %neg3476 = xor i64 %add3475, -1
  %cmp3477 = icmp eq i64 %neg3476, -1
  %conv3478 = zext i1 %cmp3477 to i32
  %sub3479 = sub nsw i32 0, %conv3478
  %conv3480 = sext i32 %sub3479 to i64
  %533 = load i64, i64* %size4, align 8
  %add3481 = add nsw i64 0, %533
  %mul3482 = mul nsw i64 0, %add3481
  %add3483 = add nsw i64 %mul3482, 1
  %shl3484 = shl i64 %add3483, 62
  %sub3485 = sub nsw i64 %shl3484, 1
  %mul3486 = mul nsw i64 %sub3485, 2
  %add3487 = add nsw i64 %mul3486, 1
  %sub3488 = sub nsw i64 %conv3480, %add3487
  br label %cond.end.3493

cond.false.3489:                                  ; preds = %cond.true.3466
  %534 = load i64, i64* %size4, align 8
  %add3490 = add nsw i64 0, %534
  %mul3491 = mul nsw i64 0, %add3490
  %add3492 = add nsw i64 %mul3491, 0
  br label %cond.end.3493

cond.end.3493:                                    ; preds = %cond.false.3489, %cond.true.3472
  %cond3494 = phi i64 [ %sub3488, %cond.true.3472 ], [ %add3492, %cond.false.3489 ]
  %div3495 = sdiv i64 %cond3494, 8
  %cmp3496 = icmp slt i64 %530, %div3495
  br i1 %cmp3496, label %cond.true.3535, label %lor.lhs.false.3521

cond.false.3498:                                  ; preds = %cond.false.3463
  %535 = load i64, i64* %size4, align 8
  %add3499 = add nsw i64 0, %535
  %mul3500 = mul nsw i64 0, %add3499
  %sub3501 = sub nsw i64 %mul3500, 1
  %cmp3502 = icmp slt i64 %sub3501, 0
  br i1 %cmp3502, label %cond.true.3504, label %cond.false.3512

cond.true.3504:                                   ; preds = %cond.false.3498
  %536 = load i64, i64* %size4, align 8
  %add3505 = add nsw i64 0, %536
  %mul3506 = mul nsw i64 0, %add3505
  %add3507 = add nsw i64 %mul3506, 1
  %shl3508 = shl i64 %add3507, 62
  %sub3509 = sub nsw i64 %shl3508, 1
  %mul3510 = mul nsw i64 %sub3509, 2
  %add3511 = add nsw i64 %mul3510, 1
  br label %cond.end.3516

cond.false.3512:                                  ; preds = %cond.false.3498
  %537 = load i64, i64* %size4, align 8
  %add3513 = add nsw i64 0, %537
  %mul3514 = mul nsw i64 0, %add3513
  %sub3515 = sub nsw i64 %mul3514, 1
  br label %cond.end.3516

cond.end.3516:                                    ; preds = %cond.false.3512, %cond.true.3504
  %cond3517 = phi i64 [ %add3511, %cond.true.3504 ], [ %sub3515, %cond.false.3512 ]
  %div3518 = sdiv i64 %cond3517, 8
  %538 = load i64, i64* %size4, align 8
  %cmp3519 = icmp slt i64 %div3518, %538
  br i1 %cmp3519, label %cond.true.3535, label %lor.lhs.false.3521

lor.lhs.false.3521:                               ; preds = %cond.end.3516, %cond.end.3493, %cond.true.3462, %cond.end.3456, %cond.true.3428, %cond.end.3422
  %539 = load i64, i64* %size4, align 8
  %mul3522 = mul nsw i64 %539, 8
  %mul3523 = mul nsw i64 0, %mul3522
  %sub3524 = sub nsw i64 %mul3523, 1
  %cmp3525 = icmp slt i64 %sub3524, 0
  br i1 %cmp3525, label %land.lhs.true.3527, label %lor.lhs.false.3531

land.lhs.true.3527:                               ; preds = %lor.lhs.false.3521
  %540 = load i64, i64* %size4, align 8
  %mul3528 = mul nsw i64 %540, 8
  %cmp3529 = icmp slt i64 %mul3528, -2147483648
  br i1 %cmp3529, label %cond.true.3535, label %lor.lhs.false.3531

lor.lhs.false.3531:                               ; preds = %land.lhs.true.3527, %lor.lhs.false.3521
  %541 = load i64, i64* %size4, align 8
  %mul3532 = mul nsw i64 %541, 8
  %cmp3533 = icmp slt i64 2147483647, %mul3532
  br i1 %cmp3533, label %cond.true.3535, label %cond.false.3551

cond.true.3535:                                   ; preds = %lor.lhs.false.3531, %land.lhs.true.3527, %cond.end.3516, %cond.end.3493, %cond.true.3462, %cond.end.3456, %cond.true.3428, %cond.end.3422, %land.lhs.true.3397
  %542 = load i64, i64* %size4, align 8
  %conv3536 = trunc i64 %542 to i32
  %mul3537 = mul i32 %conv3536, 8
  %cmp3538 = icmp ule i32 %mul3537, 2147483647
  br i1 %cmp3538, label %cond.true.3540, label %cond.false.3543

cond.true.3540:                                   ; preds = %cond.true.3535
  %543 = load i64, i64* %size4, align 8
  %conv3541 = trunc i64 %543 to i32
  %mul3542 = mul i32 %conv3541, 8
  br label %cond.end.3548

cond.false.3543:                                  ; preds = %cond.true.3535
  %544 = load i64, i64* %size4, align 8
  %conv3544 = trunc i64 %544 to i32
  %mul3545 = mul i32 %conv3544, 8
  %sub3546 = sub i32 %mul3545, -2147483648
  %add3547 = add nsw i32 %sub3546, -2147483648
  br label %cond.end.3548

cond.end.3548:                                    ; preds = %cond.false.3543, %cond.true.3540
  %cond3549 = phi i32 [ %mul3542, %cond.true.3540 ], [ %add3547, %cond.false.3543 ]
  %conv3550 = sext i32 %cond3549 to i64
  store i64 %conv3550, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then.4345, label %lor.lhs.false.4342

cond.false.3551:                                  ; preds = %lor.lhs.false.3531
  %545 = load i64, i64* %size4, align 8
  %conv3552 = trunc i64 %545 to i32
  %mul3553 = mul i32 %conv3552, 8
  %cmp3554 = icmp ule i32 %mul3553, 2147483647
  br i1 %cmp3554, label %cond.true.3556, label %cond.false.3559

cond.true.3556:                                   ; preds = %cond.false.3551
  %546 = load i64, i64* %size4, align 8
  %conv3557 = trunc i64 %546 to i32
  %mul3558 = mul i32 %conv3557, 8
  br label %cond.end.3564

cond.false.3559:                                  ; preds = %cond.false.3551
  %547 = load i64, i64* %size4, align 8
  %conv3560 = trunc i64 %547 to i32
  %mul3561 = mul i32 %conv3560, 8
  %sub3562 = sub i32 %mul3561, -2147483648
  %add3563 = add nsw i32 %sub3562, -2147483648
  br label %cond.end.3564

cond.end.3564:                                    ; preds = %cond.false.3559, %cond.true.3556
  %cond3565 = phi i32 [ %mul3558, %cond.true.3556 ], [ %add3563, %cond.false.3559 ]
  %conv3566 = sext i32 %cond3565 to i64
  store i64 %conv3566, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then.4345, label %lor.lhs.false.4342

cond.false.3567:                                  ; preds = %cond.false.3138
  br i1 true, label %cond.true.3568, label %cond.false.3955

cond.true.3568:                                   ; preds = %cond.false.3567
  br i1 false, label %cond.true.3569, label %cond.false.3762

cond.true.3569:                                   ; preds = %cond.true.3568
  %548 = load i64, i64* %size4, align 8
  %add3570 = add nsw i64 0, %548
  %mul3571 = mul nsw i64 0, %add3570
  %sub3572 = sub nsw i64 %mul3571, 1
  %cmp3573 = icmp slt i64 %sub3572, 0
  br i1 %cmp3573, label %cond.true.3575, label %cond.false.3592

cond.true.3575:                                   ; preds = %cond.true.3569
  %549 = load i64, i64* %size4, align 8
  %add3576 = add nsw i64 0, %549
  %mul3577 = mul nsw i64 0, %add3576
  %add3578 = add nsw i64 %mul3577, 0
  %neg3579 = xor i64 %add3578, -1
  %cmp3580 = icmp eq i64 %neg3579, -1
  %conv3581 = zext i1 %cmp3580 to i32
  %sub3582 = sub nsw i32 0, %conv3581
  %conv3583 = sext i32 %sub3582 to i64
  %550 = load i64, i64* %size4, align 8
  %add3584 = add nsw i64 0, %550
  %mul3585 = mul nsw i64 0, %add3584
  %add3586 = add nsw i64 %mul3585, 1
  %shl3587 = shl i64 %add3586, 62
  %sub3588 = sub nsw i64 %shl3587, 1
  %mul3589 = mul nsw i64 %sub3588, 2
  %add3590 = add nsw i64 %mul3589, 1
  %sub3591 = sub nsw i64 %conv3583, %add3590
  br label %cond.end.3596

cond.false.3592:                                  ; preds = %cond.true.3569
  %551 = load i64, i64* %size4, align 8
  %add3593 = add nsw i64 0, %551
  %mul3594 = mul nsw i64 0, %add3593
  %add3595 = add nsw i64 %mul3594, 0
  br label %cond.end.3596

cond.end.3596:                                    ; preds = %cond.false.3592, %cond.true.3575
  %cond3597 = phi i64 [ %sub3591, %cond.true.3575 ], [ %add3595, %cond.false.3592 ]
  %cmp3598 = icmp eq i64 %cond3597, 0
  br i1 %cmp3598, label %land.lhs.true.3600, label %lor.lhs.false.3603

land.lhs.true.3600:                               ; preds = %cond.end.3596
  %552 = load i64, i64* %size4, align 8
  %cmp3601 = icmp slt i64 %552, 0
  br i1 %cmp3601, label %cond.true.3738, label %lor.lhs.false.3603

lor.lhs.false.3603:                               ; preds = %land.lhs.true.3600, %cond.end.3596
  br i1 false, label %cond.true.3604, label %cond.false.3664

cond.true.3604:                                   ; preds = %lor.lhs.false.3603
  %553 = load i64, i64* %size4, align 8
  %cmp3605 = icmp slt i64 %553, 0
  br i1 %cmp3605, label %cond.true.3607, label %cond.false.3630

cond.true.3607:                                   ; preds = %cond.true.3604
  %554 = load i64, i64* %size4, align 8
  %555 = load i64, i64* %size4, align 8
  %add3608 = add nsw i64 0, %555
  %mul3609 = mul nsw i64 0, %add3608
  %sub3610 = sub nsw i64 %mul3609, 1
  %cmp3611 = icmp slt i64 %sub3610, 0
  br i1 %cmp3611, label %cond.true.3613, label %cond.false.3621

cond.true.3613:                                   ; preds = %cond.true.3607
  %556 = load i64, i64* %size4, align 8
  %add3614 = add nsw i64 0, %556
  %mul3615 = mul nsw i64 0, %add3614
  %add3616 = add nsw i64 %mul3615, 1
  %shl3617 = shl i64 %add3616, 62
  %sub3618 = sub nsw i64 %shl3617, 1
  %mul3619 = mul nsw i64 %sub3618, 2
  %add3620 = add nsw i64 %mul3619, 1
  br label %cond.end.3625

cond.false.3621:                                  ; preds = %cond.true.3607
  %557 = load i64, i64* %size4, align 8
  %add3622 = add nsw i64 0, %557
  %mul3623 = mul nsw i64 0, %add3622
  %sub3624 = sub nsw i64 %mul3623, 1
  br label %cond.end.3625

cond.end.3625:                                    ; preds = %cond.false.3621, %cond.true.3613
  %cond3626 = phi i64 [ %add3620, %cond.true.3613 ], [ %sub3624, %cond.false.3621 ]
  %div3627 = sdiv i64 %cond3626, 8
  %cmp3628 = icmp slt i64 %554, %div3627
  br i1 %cmp3628, label %cond.true.3738, label %lor.lhs.false.3724

cond.false.3630:                                  ; preds = %cond.true.3604
  br i1 false, label %cond.true.3631, label %cond.false.3632

cond.true.3631:                                   ; preds = %cond.false.3630
  br i1 false, label %cond.true.3738, label %lor.lhs.false.3724

cond.false.3632:                                  ; preds = %cond.false.3630
  %558 = load i64, i64* %size4, align 8
  %add3633 = add nsw i64 0, %558
  %mul3634 = mul nsw i64 0, %add3633
  %sub3635 = sub nsw i64 %mul3634, 1
  %cmp3636 = icmp slt i64 %sub3635, 0
  br i1 %cmp3636, label %cond.true.3638, label %cond.false.3655

cond.true.3638:                                   ; preds = %cond.false.3632
  %559 = load i64, i64* %size4, align 8
  %add3639 = add nsw i64 0, %559
  %mul3640 = mul nsw i64 0, %add3639
  %add3641 = add nsw i64 %mul3640, 0
  %neg3642 = xor i64 %add3641, -1
  %cmp3643 = icmp eq i64 %neg3642, -1
  %conv3644 = zext i1 %cmp3643 to i32
  %sub3645 = sub nsw i32 0, %conv3644
  %conv3646 = sext i32 %sub3645 to i64
  %560 = load i64, i64* %size4, align 8
  %add3647 = add nsw i64 0, %560
  %mul3648 = mul nsw i64 0, %add3647
  %add3649 = add nsw i64 %mul3648, 1
  %shl3650 = shl i64 %add3649, 62
  %sub3651 = sub nsw i64 %shl3650, 1
  %mul3652 = mul nsw i64 %sub3651, 2
  %add3653 = add nsw i64 %mul3652, 1
  %sub3654 = sub nsw i64 %conv3646, %add3653
  br label %cond.end.3659

cond.false.3655:                                  ; preds = %cond.false.3632
  %561 = load i64, i64* %size4, align 8
  %add3656 = add nsw i64 0, %561
  %mul3657 = mul nsw i64 0, %add3656
  %add3658 = add nsw i64 %mul3657, 0
  br label %cond.end.3659

cond.end.3659:                                    ; preds = %cond.false.3655, %cond.true.3638
  %cond3660 = phi i64 [ %sub3654, %cond.true.3638 ], [ %add3658, %cond.false.3655 ]
  %div3661 = sdiv i64 %cond3660, 8
  %562 = load i64, i64* %size4, align 8
  %cmp3662 = icmp slt i64 %div3661, %562
  br i1 %cmp3662, label %cond.true.3738, label %lor.lhs.false.3724

cond.false.3664:                                  ; preds = %lor.lhs.false.3603
  br i1 false, label %cond.true.3665, label %cond.false.3666

cond.true.3665:                                   ; preds = %cond.false.3664
  br i1 false, label %cond.true.3738, label %lor.lhs.false.3724

cond.false.3666:                                  ; preds = %cond.false.3664
  %563 = load i64, i64* %size4, align 8
  %cmp3667 = icmp slt i64 %563, 0
  br i1 %cmp3667, label %cond.true.3669, label %cond.false.3701

cond.true.3669:                                   ; preds = %cond.false.3666
  %564 = load i64, i64* %size4, align 8
  %565 = load i64, i64* %size4, align 8
  %add3670 = add nsw i64 0, %565
  %mul3671 = mul nsw i64 0, %add3670
  %sub3672 = sub nsw i64 %mul3671, 1
  %cmp3673 = icmp slt i64 %sub3672, 0
  br i1 %cmp3673, label %cond.true.3675, label %cond.false.3692

cond.true.3675:                                   ; preds = %cond.true.3669
  %566 = load i64, i64* %size4, align 8
  %add3676 = add nsw i64 0, %566
  %mul3677 = mul nsw i64 0, %add3676
  %add3678 = add nsw i64 %mul3677, 0
  %neg3679 = xor i64 %add3678, -1
  %cmp3680 = icmp eq i64 %neg3679, -1
  %conv3681 = zext i1 %cmp3680 to i32
  %sub3682 = sub nsw i32 0, %conv3681
  %conv3683 = sext i32 %sub3682 to i64
  %567 = load i64, i64* %size4, align 8
  %add3684 = add nsw i64 0, %567
  %mul3685 = mul nsw i64 0, %add3684
  %add3686 = add nsw i64 %mul3685, 1
  %shl3687 = shl i64 %add3686, 62
  %sub3688 = sub nsw i64 %shl3687, 1
  %mul3689 = mul nsw i64 %sub3688, 2
  %add3690 = add nsw i64 %mul3689, 1
  %sub3691 = sub nsw i64 %conv3683, %add3690
  br label %cond.end.3696

cond.false.3692:                                  ; preds = %cond.true.3669
  %568 = load i64, i64* %size4, align 8
  %add3693 = add nsw i64 0, %568
  %mul3694 = mul nsw i64 0, %add3693
  %add3695 = add nsw i64 %mul3694, 0
  br label %cond.end.3696

cond.end.3696:                                    ; preds = %cond.false.3692, %cond.true.3675
  %cond3697 = phi i64 [ %sub3691, %cond.true.3675 ], [ %add3695, %cond.false.3692 ]
  %div3698 = sdiv i64 %cond3697, 8
  %cmp3699 = icmp slt i64 %564, %div3698
  br i1 %cmp3699, label %cond.true.3738, label %lor.lhs.false.3724

cond.false.3701:                                  ; preds = %cond.false.3666
  %569 = load i64, i64* %size4, align 8
  %add3702 = add nsw i64 0, %569
  %mul3703 = mul nsw i64 0, %add3702
  %sub3704 = sub nsw i64 %mul3703, 1
  %cmp3705 = icmp slt i64 %sub3704, 0
  br i1 %cmp3705, label %cond.true.3707, label %cond.false.3715

cond.true.3707:                                   ; preds = %cond.false.3701
  %570 = load i64, i64* %size4, align 8
  %add3708 = add nsw i64 0, %570
  %mul3709 = mul nsw i64 0, %add3708
  %add3710 = add nsw i64 %mul3709, 1
  %shl3711 = shl i64 %add3710, 62
  %sub3712 = sub nsw i64 %shl3711, 1
  %mul3713 = mul nsw i64 %sub3712, 2
  %add3714 = add nsw i64 %mul3713, 1
  br label %cond.end.3719

cond.false.3715:                                  ; preds = %cond.false.3701
  %571 = load i64, i64* %size4, align 8
  %add3716 = add nsw i64 0, %571
  %mul3717 = mul nsw i64 0, %add3716
  %sub3718 = sub nsw i64 %mul3717, 1
  br label %cond.end.3719

cond.end.3719:                                    ; preds = %cond.false.3715, %cond.true.3707
  %cond3720 = phi i64 [ %add3714, %cond.true.3707 ], [ %sub3718, %cond.false.3715 ]
  %div3721 = sdiv i64 %cond3720, 8
  %572 = load i64, i64* %size4, align 8
  %cmp3722 = icmp slt i64 %div3721, %572
  br i1 %cmp3722, label %cond.true.3738, label %lor.lhs.false.3724

lor.lhs.false.3724:                               ; preds = %cond.end.3719, %cond.end.3696, %cond.true.3665, %cond.end.3659, %cond.true.3631, %cond.end.3625
  %573 = load i64, i64* %size4, align 8
  %mul3725 = mul nsw i64 %573, 8
  %mul3726 = mul nsw i64 0, %mul3725
  %sub3727 = sub nsw i64 %mul3726, 1
  %cmp3728 = icmp slt i64 %sub3727, 0
  br i1 %cmp3728, label %land.lhs.true.3730, label %lor.lhs.false.3734

land.lhs.true.3730:                               ; preds = %lor.lhs.false.3724
  %574 = load i64, i64* %size4, align 8
  %mul3731 = mul nsw i64 %574, 8
  %cmp3732 = icmp slt i64 %mul3731, -9223372036854775808
  br i1 %cmp3732, label %cond.true.3738, label %lor.lhs.false.3734

lor.lhs.false.3734:                               ; preds = %land.lhs.true.3730, %lor.lhs.false.3724
  %575 = load i64, i64* %size4, align 8
  %mul3735 = mul nsw i64 %575, 8
  %cmp3736 = icmp slt i64 9223372036854775807, %mul3735
  br i1 %cmp3736, label %cond.true.3738, label %cond.false.3750

cond.true.3738:                                   ; preds = %lor.lhs.false.3734, %land.lhs.true.3730, %cond.end.3719, %cond.end.3696, %cond.true.3665, %cond.end.3659, %cond.true.3631, %cond.end.3625, %land.lhs.true.3600
  %576 = load i64, i64* %size4, align 8
  %mul3739 = mul i64 %576, 8
  %cmp3740 = icmp ule i64 %mul3739, 9223372036854775807
  br i1 %cmp3740, label %cond.true.3742, label %cond.false.3744

cond.true.3742:                                   ; preds = %cond.true.3738
  %577 = load i64, i64* %size4, align 8
  %mul3743 = mul i64 %577, 8
  br label %cond.end.3748

cond.false.3744:                                  ; preds = %cond.true.3738
  %578 = load i64, i64* %size4, align 8
  %mul3745 = mul i64 %578, 8
  %sub3746 = sub i64 %mul3745, -9223372036854775808
  %add3747 = add nsw i64 %sub3746, -9223372036854775808
  br label %cond.end.3748

cond.end.3748:                                    ; preds = %cond.false.3744, %cond.true.3742
  %cond3749 = phi i64 [ %mul3743, %cond.true.3742 ], [ %add3747, %cond.false.3744 ]
  store i64 %cond3749, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then.4345, label %lor.lhs.false.4342

cond.false.3750:                                  ; preds = %lor.lhs.false.3734
  %579 = load i64, i64* %size4, align 8
  %mul3751 = mul i64 %579, 8
  %cmp3752 = icmp ule i64 %mul3751, 9223372036854775807
  br i1 %cmp3752, label %cond.true.3754, label %cond.false.3756

cond.true.3754:                                   ; preds = %cond.false.3750
  %580 = load i64, i64* %size4, align 8
  %mul3755 = mul i64 %580, 8
  br label %cond.end.3760

cond.false.3756:                                  ; preds = %cond.false.3750
  %581 = load i64, i64* %size4, align 8
  %mul3757 = mul i64 %581, 8
  %sub3758 = sub i64 %mul3757, -9223372036854775808
  %add3759 = add nsw i64 %sub3758, -9223372036854775808
  br label %cond.end.3760

cond.end.3760:                                    ; preds = %cond.false.3756, %cond.true.3754
  %cond3761 = phi i64 [ %mul3755, %cond.true.3754 ], [ %add3759, %cond.false.3756 ]
  store i64 %cond3761, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then.4345, label %lor.lhs.false.4342

cond.false.3762:                                  ; preds = %cond.true.3568
  %582 = load i64, i64* %size4, align 8
  %add3763 = add nsw i64 0, %582
  %mul3764 = mul nsw i64 0, %add3763
  %sub3765 = sub nsw i64 %mul3764, 1
  %cmp3766 = icmp slt i64 %sub3765, 0
  br i1 %cmp3766, label %cond.true.3768, label %cond.false.3785

cond.true.3768:                                   ; preds = %cond.false.3762
  %583 = load i64, i64* %size4, align 8
  %add3769 = add nsw i64 0, %583
  %mul3770 = mul nsw i64 0, %add3769
  %add3771 = add nsw i64 %mul3770, 0
  %neg3772 = xor i64 %add3771, -1
  %cmp3773 = icmp eq i64 %neg3772, -1
  %conv3774 = zext i1 %cmp3773 to i32
  %sub3775 = sub nsw i32 0, %conv3774
  %conv3776 = sext i32 %sub3775 to i64
  %584 = load i64, i64* %size4, align 8
  %add3777 = add nsw i64 0, %584
  %mul3778 = mul nsw i64 0, %add3777
  %add3779 = add nsw i64 %mul3778, 1
  %shl3780 = shl i64 %add3779, 62
  %sub3781 = sub nsw i64 %shl3780, 1
  %mul3782 = mul nsw i64 %sub3781, 2
  %add3783 = add nsw i64 %mul3782, 1
  %sub3784 = sub nsw i64 %conv3776, %add3783
  br label %cond.end.3789

cond.false.3785:                                  ; preds = %cond.false.3762
  %585 = load i64, i64* %size4, align 8
  %add3786 = add nsw i64 0, %585
  %mul3787 = mul nsw i64 0, %add3786
  %add3788 = add nsw i64 %mul3787, 0
  br label %cond.end.3789

cond.end.3789:                                    ; preds = %cond.false.3785, %cond.true.3768
  %cond3790 = phi i64 [ %sub3784, %cond.true.3768 ], [ %add3788, %cond.false.3785 ]
  %cmp3791 = icmp eq i64 %cond3790, 0
  br i1 %cmp3791, label %land.lhs.true.3793, label %lor.lhs.false.3796

land.lhs.true.3793:                               ; preds = %cond.end.3789
  %586 = load i64, i64* %size4, align 8
  %cmp3794 = icmp slt i64 %586, 0
  br i1 %cmp3794, label %cond.true.3931, label %lor.lhs.false.3796

lor.lhs.false.3796:                               ; preds = %land.lhs.true.3793, %cond.end.3789
  br i1 false, label %cond.true.3797, label %cond.false.3857

cond.true.3797:                                   ; preds = %lor.lhs.false.3796
  %587 = load i64, i64* %size4, align 8
  %cmp3798 = icmp slt i64 %587, 0
  br i1 %cmp3798, label %cond.true.3800, label %cond.false.3823

cond.true.3800:                                   ; preds = %cond.true.3797
  %588 = load i64, i64* %size4, align 8
  %589 = load i64, i64* %size4, align 8
  %add3801 = add nsw i64 0, %589
  %mul3802 = mul nsw i64 0, %add3801
  %sub3803 = sub nsw i64 %mul3802, 1
  %cmp3804 = icmp slt i64 %sub3803, 0
  br i1 %cmp3804, label %cond.true.3806, label %cond.false.3814

cond.true.3806:                                   ; preds = %cond.true.3800
  %590 = load i64, i64* %size4, align 8
  %add3807 = add nsw i64 0, %590
  %mul3808 = mul nsw i64 0, %add3807
  %add3809 = add nsw i64 %mul3808, 1
  %shl3810 = shl i64 %add3809, 62
  %sub3811 = sub nsw i64 %shl3810, 1
  %mul3812 = mul nsw i64 %sub3811, 2
  %add3813 = add nsw i64 %mul3812, 1
  br label %cond.end.3818

cond.false.3814:                                  ; preds = %cond.true.3800
  %591 = load i64, i64* %size4, align 8
  %add3815 = add nsw i64 0, %591
  %mul3816 = mul nsw i64 0, %add3815
  %sub3817 = sub nsw i64 %mul3816, 1
  br label %cond.end.3818

cond.end.3818:                                    ; preds = %cond.false.3814, %cond.true.3806
  %cond3819 = phi i64 [ %add3813, %cond.true.3806 ], [ %sub3817, %cond.false.3814 ]
  %div3820 = sdiv i64 %cond3819, 8
  %cmp3821 = icmp slt i64 %588, %div3820
  br i1 %cmp3821, label %cond.true.3931, label %lor.lhs.false.3917

cond.false.3823:                                  ; preds = %cond.true.3797
  br i1 false, label %cond.true.3824, label %cond.false.3825

cond.true.3824:                                   ; preds = %cond.false.3823
  br i1 false, label %cond.true.3931, label %lor.lhs.false.3917

cond.false.3825:                                  ; preds = %cond.false.3823
  %592 = load i64, i64* %size4, align 8
  %add3826 = add nsw i64 0, %592
  %mul3827 = mul nsw i64 0, %add3826
  %sub3828 = sub nsw i64 %mul3827, 1
  %cmp3829 = icmp slt i64 %sub3828, 0
  br i1 %cmp3829, label %cond.true.3831, label %cond.false.3848

cond.true.3831:                                   ; preds = %cond.false.3825
  %593 = load i64, i64* %size4, align 8
  %add3832 = add nsw i64 0, %593
  %mul3833 = mul nsw i64 0, %add3832
  %add3834 = add nsw i64 %mul3833, 0
  %neg3835 = xor i64 %add3834, -1
  %cmp3836 = icmp eq i64 %neg3835, -1
  %conv3837 = zext i1 %cmp3836 to i32
  %sub3838 = sub nsw i32 0, %conv3837
  %conv3839 = sext i32 %sub3838 to i64
  %594 = load i64, i64* %size4, align 8
  %add3840 = add nsw i64 0, %594
  %mul3841 = mul nsw i64 0, %add3840
  %add3842 = add nsw i64 %mul3841, 1
  %shl3843 = shl i64 %add3842, 62
  %sub3844 = sub nsw i64 %shl3843, 1
  %mul3845 = mul nsw i64 %sub3844, 2
  %add3846 = add nsw i64 %mul3845, 1
  %sub3847 = sub nsw i64 %conv3839, %add3846
  br label %cond.end.3852

cond.false.3848:                                  ; preds = %cond.false.3825
  %595 = load i64, i64* %size4, align 8
  %add3849 = add nsw i64 0, %595
  %mul3850 = mul nsw i64 0, %add3849
  %add3851 = add nsw i64 %mul3850, 0
  br label %cond.end.3852

cond.end.3852:                                    ; preds = %cond.false.3848, %cond.true.3831
  %cond3853 = phi i64 [ %sub3847, %cond.true.3831 ], [ %add3851, %cond.false.3848 ]
  %div3854 = sdiv i64 %cond3853, 8
  %596 = load i64, i64* %size4, align 8
  %cmp3855 = icmp slt i64 %div3854, %596
  br i1 %cmp3855, label %cond.true.3931, label %lor.lhs.false.3917

cond.false.3857:                                  ; preds = %lor.lhs.false.3796
  br i1 false, label %cond.true.3858, label %cond.false.3859

cond.true.3858:                                   ; preds = %cond.false.3857
  br i1 false, label %cond.true.3931, label %lor.lhs.false.3917

cond.false.3859:                                  ; preds = %cond.false.3857
  %597 = load i64, i64* %size4, align 8
  %cmp3860 = icmp slt i64 %597, 0
  br i1 %cmp3860, label %cond.true.3862, label %cond.false.3894

cond.true.3862:                                   ; preds = %cond.false.3859
  %598 = load i64, i64* %size4, align 8
  %599 = load i64, i64* %size4, align 8
  %add3863 = add nsw i64 0, %599
  %mul3864 = mul nsw i64 0, %add3863
  %sub3865 = sub nsw i64 %mul3864, 1
  %cmp3866 = icmp slt i64 %sub3865, 0
  br i1 %cmp3866, label %cond.true.3868, label %cond.false.3885

cond.true.3868:                                   ; preds = %cond.true.3862
  %600 = load i64, i64* %size4, align 8
  %add3869 = add nsw i64 0, %600
  %mul3870 = mul nsw i64 0, %add3869
  %add3871 = add nsw i64 %mul3870, 0
  %neg3872 = xor i64 %add3871, -1
  %cmp3873 = icmp eq i64 %neg3872, -1
  %conv3874 = zext i1 %cmp3873 to i32
  %sub3875 = sub nsw i32 0, %conv3874
  %conv3876 = sext i32 %sub3875 to i64
  %601 = load i64, i64* %size4, align 8
  %add3877 = add nsw i64 0, %601
  %mul3878 = mul nsw i64 0, %add3877
  %add3879 = add nsw i64 %mul3878, 1
  %shl3880 = shl i64 %add3879, 62
  %sub3881 = sub nsw i64 %shl3880, 1
  %mul3882 = mul nsw i64 %sub3881, 2
  %add3883 = add nsw i64 %mul3882, 1
  %sub3884 = sub nsw i64 %conv3876, %add3883
  br label %cond.end.3889

cond.false.3885:                                  ; preds = %cond.true.3862
  %602 = load i64, i64* %size4, align 8
  %add3886 = add nsw i64 0, %602
  %mul3887 = mul nsw i64 0, %add3886
  %add3888 = add nsw i64 %mul3887, 0
  br label %cond.end.3889

cond.end.3889:                                    ; preds = %cond.false.3885, %cond.true.3868
  %cond3890 = phi i64 [ %sub3884, %cond.true.3868 ], [ %add3888, %cond.false.3885 ]
  %div3891 = sdiv i64 %cond3890, 8
  %cmp3892 = icmp slt i64 %598, %div3891
  br i1 %cmp3892, label %cond.true.3931, label %lor.lhs.false.3917

cond.false.3894:                                  ; preds = %cond.false.3859
  %603 = load i64, i64* %size4, align 8
  %add3895 = add nsw i64 0, %603
  %mul3896 = mul nsw i64 0, %add3895
  %sub3897 = sub nsw i64 %mul3896, 1
  %cmp3898 = icmp slt i64 %sub3897, 0
  br i1 %cmp3898, label %cond.true.3900, label %cond.false.3908

cond.true.3900:                                   ; preds = %cond.false.3894
  %604 = load i64, i64* %size4, align 8
  %add3901 = add nsw i64 0, %604
  %mul3902 = mul nsw i64 0, %add3901
  %add3903 = add nsw i64 %mul3902, 1
  %shl3904 = shl i64 %add3903, 62
  %sub3905 = sub nsw i64 %shl3904, 1
  %mul3906 = mul nsw i64 %sub3905, 2
  %add3907 = add nsw i64 %mul3906, 1
  br label %cond.end.3912

cond.false.3908:                                  ; preds = %cond.false.3894
  %605 = load i64, i64* %size4, align 8
  %add3909 = add nsw i64 0, %605
  %mul3910 = mul nsw i64 0, %add3909
  %sub3911 = sub nsw i64 %mul3910, 1
  br label %cond.end.3912

cond.end.3912:                                    ; preds = %cond.false.3908, %cond.true.3900
  %cond3913 = phi i64 [ %add3907, %cond.true.3900 ], [ %sub3911, %cond.false.3908 ]
  %div3914 = sdiv i64 %cond3913, 8
  %606 = load i64, i64* %size4, align 8
  %cmp3915 = icmp slt i64 %div3914, %606
  br i1 %cmp3915, label %cond.true.3931, label %lor.lhs.false.3917

lor.lhs.false.3917:                               ; preds = %cond.end.3912, %cond.end.3889, %cond.true.3858, %cond.end.3852, %cond.true.3824, %cond.end.3818
  %607 = load i64, i64* %size4, align 8
  %mul3918 = mul nsw i64 %607, 8
  %mul3919 = mul nsw i64 0, %mul3918
  %sub3920 = sub nsw i64 %mul3919, 1
  %cmp3921 = icmp slt i64 %sub3920, 0
  br i1 %cmp3921, label %land.lhs.true.3923, label %lor.lhs.false.3927

land.lhs.true.3923:                               ; preds = %lor.lhs.false.3917
  %608 = load i64, i64* %size4, align 8
  %mul3924 = mul nsw i64 %608, 8
  %cmp3925 = icmp slt i64 %mul3924, -9223372036854775808
  br i1 %cmp3925, label %cond.true.3931, label %lor.lhs.false.3927

lor.lhs.false.3927:                               ; preds = %land.lhs.true.3923, %lor.lhs.false.3917
  %609 = load i64, i64* %size4, align 8
  %mul3928 = mul nsw i64 %609, 8
  %cmp3929 = icmp slt i64 9223372036854775807, %mul3928
  br i1 %cmp3929, label %cond.true.3931, label %cond.false.3943

cond.true.3931:                                   ; preds = %lor.lhs.false.3927, %land.lhs.true.3923, %cond.end.3912, %cond.end.3889, %cond.true.3858, %cond.end.3852, %cond.true.3824, %cond.end.3818, %land.lhs.true.3793
  %610 = load i64, i64* %size4, align 8
  %mul3932 = mul i64 %610, 8
  %cmp3933 = icmp ule i64 %mul3932, 9223372036854775807
  br i1 %cmp3933, label %cond.true.3935, label %cond.false.3937

cond.true.3935:                                   ; preds = %cond.true.3931
  %611 = load i64, i64* %size4, align 8
  %mul3936 = mul i64 %611, 8
  br label %cond.end.3941

cond.false.3937:                                  ; preds = %cond.true.3931
  %612 = load i64, i64* %size4, align 8
  %mul3938 = mul i64 %612, 8
  %sub3939 = sub i64 %mul3938, -9223372036854775808
  %add3940 = add nsw i64 %sub3939, -9223372036854775808
  br label %cond.end.3941

cond.end.3941:                                    ; preds = %cond.false.3937, %cond.true.3935
  %cond3942 = phi i64 [ %mul3936, %cond.true.3935 ], [ %add3940, %cond.false.3937 ]
  store i64 %cond3942, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then.4345, label %lor.lhs.false.4342

cond.false.3943:                                  ; preds = %lor.lhs.false.3927
  %613 = load i64, i64* %size4, align 8
  %mul3944 = mul i64 %613, 8
  %cmp3945 = icmp ule i64 %mul3944, 9223372036854775807
  br i1 %cmp3945, label %cond.true.3947, label %cond.false.3949

cond.true.3947:                                   ; preds = %cond.false.3943
  %614 = load i64, i64* %size4, align 8
  %mul3948 = mul i64 %614, 8
  br label %cond.end.3953

cond.false.3949:                                  ; preds = %cond.false.3943
  %615 = load i64, i64* %size4, align 8
  %mul3950 = mul i64 %615, 8
  %sub3951 = sub i64 %mul3950, -9223372036854775808
  %add3952 = add nsw i64 %sub3951, -9223372036854775808
  br label %cond.end.3953

cond.end.3953:                                    ; preds = %cond.false.3949, %cond.true.3947
  %cond3954 = phi i64 [ %mul3948, %cond.true.3947 ], [ %add3952, %cond.false.3949 ]
  store i64 %cond3954, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then.4345, label %lor.lhs.false.4342

cond.false.3955:                                  ; preds = %cond.false.3567
  br i1 false, label %cond.true.3956, label %cond.false.4149

cond.true.3956:                                   ; preds = %cond.false.3955
  %616 = load i64, i64* %size4, align 8
  %add3957 = add nsw i64 0, %616
  %mul3958 = mul nsw i64 0, %add3957
  %sub3959 = sub nsw i64 %mul3958, 1
  %cmp3960 = icmp slt i64 %sub3959, 0
  br i1 %cmp3960, label %cond.true.3962, label %cond.false.3979

cond.true.3962:                                   ; preds = %cond.true.3956
  %617 = load i64, i64* %size4, align 8
  %add3963 = add nsw i64 0, %617
  %mul3964 = mul nsw i64 0, %add3963
  %add3965 = add nsw i64 %mul3964, 0
  %neg3966 = xor i64 %add3965, -1
  %cmp3967 = icmp eq i64 %neg3966, -1
  %conv3968 = zext i1 %cmp3967 to i32
  %sub3969 = sub nsw i32 0, %conv3968
  %conv3970 = sext i32 %sub3969 to i64
  %618 = load i64, i64* %size4, align 8
  %add3971 = add nsw i64 0, %618
  %mul3972 = mul nsw i64 0, %add3971
  %add3973 = add nsw i64 %mul3972, 1
  %shl3974 = shl i64 %add3973, 62
  %sub3975 = sub nsw i64 %shl3974, 1
  %mul3976 = mul nsw i64 %sub3975, 2
  %add3977 = add nsw i64 %mul3976, 1
  %sub3978 = sub nsw i64 %conv3970, %add3977
  br label %cond.end.3983

cond.false.3979:                                  ; preds = %cond.true.3956
  %619 = load i64, i64* %size4, align 8
  %add3980 = add nsw i64 0, %619
  %mul3981 = mul nsw i64 0, %add3980
  %add3982 = add nsw i64 %mul3981, 0
  br label %cond.end.3983

cond.end.3983:                                    ; preds = %cond.false.3979, %cond.true.3962
  %cond3984 = phi i64 [ %sub3978, %cond.true.3962 ], [ %add3982, %cond.false.3979 ]
  %cmp3985 = icmp eq i64 %cond3984, 0
  br i1 %cmp3985, label %land.lhs.true.3987, label %lor.lhs.false.3990

land.lhs.true.3987:                               ; preds = %cond.end.3983
  %620 = load i64, i64* %size4, align 8
  %cmp3988 = icmp slt i64 %620, 0
  br i1 %cmp3988, label %cond.true.4125, label %lor.lhs.false.3990

lor.lhs.false.3990:                               ; preds = %land.lhs.true.3987, %cond.end.3983
  br i1 false, label %cond.true.3991, label %cond.false.4051

cond.true.3991:                                   ; preds = %lor.lhs.false.3990
  %621 = load i64, i64* %size4, align 8
  %cmp3992 = icmp slt i64 %621, 0
  br i1 %cmp3992, label %cond.true.3994, label %cond.false.4017

cond.true.3994:                                   ; preds = %cond.true.3991
  %622 = load i64, i64* %size4, align 8
  %623 = load i64, i64* %size4, align 8
  %add3995 = add nsw i64 0, %623
  %mul3996 = mul nsw i64 0, %add3995
  %sub3997 = sub nsw i64 %mul3996, 1
  %cmp3998 = icmp slt i64 %sub3997, 0
  br i1 %cmp3998, label %cond.true.4000, label %cond.false.4008

cond.true.4000:                                   ; preds = %cond.true.3994
  %624 = load i64, i64* %size4, align 8
  %add4001 = add nsw i64 0, %624
  %mul4002 = mul nsw i64 0, %add4001
  %add4003 = add nsw i64 %mul4002, 1
  %shl4004 = shl i64 %add4003, 62
  %sub4005 = sub nsw i64 %shl4004, 1
  %mul4006 = mul nsw i64 %sub4005, 2
  %add4007 = add nsw i64 %mul4006, 1
  br label %cond.end.4012

cond.false.4008:                                  ; preds = %cond.true.3994
  %625 = load i64, i64* %size4, align 8
  %add4009 = add nsw i64 0, %625
  %mul4010 = mul nsw i64 0, %add4009
  %sub4011 = sub nsw i64 %mul4010, 1
  br label %cond.end.4012

cond.end.4012:                                    ; preds = %cond.false.4008, %cond.true.4000
  %cond4013 = phi i64 [ %add4007, %cond.true.4000 ], [ %sub4011, %cond.false.4008 ]
  %div4014 = sdiv i64 %cond4013, 8
  %cmp4015 = icmp slt i64 %622, %div4014
  br i1 %cmp4015, label %cond.true.4125, label %lor.lhs.false.4111

cond.false.4017:                                  ; preds = %cond.true.3991
  br i1 false, label %cond.true.4018, label %cond.false.4019

cond.true.4018:                                   ; preds = %cond.false.4017
  br i1 false, label %cond.true.4125, label %lor.lhs.false.4111

cond.false.4019:                                  ; preds = %cond.false.4017
  %626 = load i64, i64* %size4, align 8
  %add4020 = add nsw i64 0, %626
  %mul4021 = mul nsw i64 0, %add4020
  %sub4022 = sub nsw i64 %mul4021, 1
  %cmp4023 = icmp slt i64 %sub4022, 0
  br i1 %cmp4023, label %cond.true.4025, label %cond.false.4042

cond.true.4025:                                   ; preds = %cond.false.4019
  %627 = load i64, i64* %size4, align 8
  %add4026 = add nsw i64 0, %627
  %mul4027 = mul nsw i64 0, %add4026
  %add4028 = add nsw i64 %mul4027, 0
  %neg4029 = xor i64 %add4028, -1
  %cmp4030 = icmp eq i64 %neg4029, -1
  %conv4031 = zext i1 %cmp4030 to i32
  %sub4032 = sub nsw i32 0, %conv4031
  %conv4033 = sext i32 %sub4032 to i64
  %628 = load i64, i64* %size4, align 8
  %add4034 = add nsw i64 0, %628
  %mul4035 = mul nsw i64 0, %add4034
  %add4036 = add nsw i64 %mul4035, 1
  %shl4037 = shl i64 %add4036, 62
  %sub4038 = sub nsw i64 %shl4037, 1
  %mul4039 = mul nsw i64 %sub4038, 2
  %add4040 = add nsw i64 %mul4039, 1
  %sub4041 = sub nsw i64 %conv4033, %add4040
  br label %cond.end.4046

cond.false.4042:                                  ; preds = %cond.false.4019
  %629 = load i64, i64* %size4, align 8
  %add4043 = add nsw i64 0, %629
  %mul4044 = mul nsw i64 0, %add4043
  %add4045 = add nsw i64 %mul4044, 0
  br label %cond.end.4046

cond.end.4046:                                    ; preds = %cond.false.4042, %cond.true.4025
  %cond4047 = phi i64 [ %sub4041, %cond.true.4025 ], [ %add4045, %cond.false.4042 ]
  %div4048 = sdiv i64 %cond4047, 8
  %630 = load i64, i64* %size4, align 8
  %cmp4049 = icmp slt i64 %div4048, %630
  br i1 %cmp4049, label %cond.true.4125, label %lor.lhs.false.4111

cond.false.4051:                                  ; preds = %lor.lhs.false.3990
  br i1 false, label %cond.true.4052, label %cond.false.4053

cond.true.4052:                                   ; preds = %cond.false.4051
  br i1 false, label %cond.true.4125, label %lor.lhs.false.4111

cond.false.4053:                                  ; preds = %cond.false.4051
  %631 = load i64, i64* %size4, align 8
  %cmp4054 = icmp slt i64 %631, 0
  br i1 %cmp4054, label %cond.true.4056, label %cond.false.4088

cond.true.4056:                                   ; preds = %cond.false.4053
  %632 = load i64, i64* %size4, align 8
  %633 = load i64, i64* %size4, align 8
  %add4057 = add nsw i64 0, %633
  %mul4058 = mul nsw i64 0, %add4057
  %sub4059 = sub nsw i64 %mul4058, 1
  %cmp4060 = icmp slt i64 %sub4059, 0
  br i1 %cmp4060, label %cond.true.4062, label %cond.false.4079

cond.true.4062:                                   ; preds = %cond.true.4056
  %634 = load i64, i64* %size4, align 8
  %add4063 = add nsw i64 0, %634
  %mul4064 = mul nsw i64 0, %add4063
  %add4065 = add nsw i64 %mul4064, 0
  %neg4066 = xor i64 %add4065, -1
  %cmp4067 = icmp eq i64 %neg4066, -1
  %conv4068 = zext i1 %cmp4067 to i32
  %sub4069 = sub nsw i32 0, %conv4068
  %conv4070 = sext i32 %sub4069 to i64
  %635 = load i64, i64* %size4, align 8
  %add4071 = add nsw i64 0, %635
  %mul4072 = mul nsw i64 0, %add4071
  %add4073 = add nsw i64 %mul4072, 1
  %shl4074 = shl i64 %add4073, 62
  %sub4075 = sub nsw i64 %shl4074, 1
  %mul4076 = mul nsw i64 %sub4075, 2
  %add4077 = add nsw i64 %mul4076, 1
  %sub4078 = sub nsw i64 %conv4070, %add4077
  br label %cond.end.4083

cond.false.4079:                                  ; preds = %cond.true.4056
  %636 = load i64, i64* %size4, align 8
  %add4080 = add nsw i64 0, %636
  %mul4081 = mul nsw i64 0, %add4080
  %add4082 = add nsw i64 %mul4081, 0
  br label %cond.end.4083

cond.end.4083:                                    ; preds = %cond.false.4079, %cond.true.4062
  %cond4084 = phi i64 [ %sub4078, %cond.true.4062 ], [ %add4082, %cond.false.4079 ]
  %div4085 = sdiv i64 %cond4084, 8
  %cmp4086 = icmp slt i64 %632, %div4085
  br i1 %cmp4086, label %cond.true.4125, label %lor.lhs.false.4111

cond.false.4088:                                  ; preds = %cond.false.4053
  %637 = load i64, i64* %size4, align 8
  %add4089 = add nsw i64 0, %637
  %mul4090 = mul nsw i64 0, %add4089
  %sub4091 = sub nsw i64 %mul4090, 1
  %cmp4092 = icmp slt i64 %sub4091, 0
  br i1 %cmp4092, label %cond.true.4094, label %cond.false.4102

cond.true.4094:                                   ; preds = %cond.false.4088
  %638 = load i64, i64* %size4, align 8
  %add4095 = add nsw i64 0, %638
  %mul4096 = mul nsw i64 0, %add4095
  %add4097 = add nsw i64 %mul4096, 1
  %shl4098 = shl i64 %add4097, 62
  %sub4099 = sub nsw i64 %shl4098, 1
  %mul4100 = mul nsw i64 %sub4099, 2
  %add4101 = add nsw i64 %mul4100, 1
  br label %cond.end.4106

cond.false.4102:                                  ; preds = %cond.false.4088
  %639 = load i64, i64* %size4, align 8
  %add4103 = add nsw i64 0, %639
  %mul4104 = mul nsw i64 0, %add4103
  %sub4105 = sub nsw i64 %mul4104, 1
  br label %cond.end.4106

cond.end.4106:                                    ; preds = %cond.false.4102, %cond.true.4094
  %cond4107 = phi i64 [ %add4101, %cond.true.4094 ], [ %sub4105, %cond.false.4102 ]
  %div4108 = sdiv i64 %cond4107, 8
  %640 = load i64, i64* %size4, align 8
  %cmp4109 = icmp slt i64 %div4108, %640
  br i1 %cmp4109, label %cond.true.4125, label %lor.lhs.false.4111

lor.lhs.false.4111:                               ; preds = %cond.end.4106, %cond.end.4083, %cond.true.4052, %cond.end.4046, %cond.true.4018, %cond.end.4012
  %641 = load i64, i64* %size4, align 8
  %mul4112 = mul nsw i64 %641, 8
  %mul4113 = mul nsw i64 0, %mul4112
  %sub4114 = sub nsw i64 %mul4113, 1
  %cmp4115 = icmp slt i64 %sub4114, 0
  br i1 %cmp4115, label %land.lhs.true.4117, label %lor.lhs.false.4121

land.lhs.true.4117:                               ; preds = %lor.lhs.false.4111
  %642 = load i64, i64* %size4, align 8
  %mul4118 = mul nsw i64 %642, 8
  %cmp4119 = icmp slt i64 %mul4118, -9223372036854775808
  br i1 %cmp4119, label %cond.true.4125, label %lor.lhs.false.4121

lor.lhs.false.4121:                               ; preds = %land.lhs.true.4117, %lor.lhs.false.4111
  %643 = load i64, i64* %size4, align 8
  %mul4122 = mul nsw i64 %643, 8
  %cmp4123 = icmp slt i64 9223372036854775807, %mul4122
  br i1 %cmp4123, label %cond.true.4125, label %cond.false.4137

cond.true.4125:                                   ; preds = %lor.lhs.false.4121, %land.lhs.true.4117, %cond.end.4106, %cond.end.4083, %cond.true.4052, %cond.end.4046, %cond.true.4018, %cond.end.4012, %land.lhs.true.3987
  %644 = load i64, i64* %size4, align 8
  %mul4126 = mul i64 %644, 8
  %cmp4127 = icmp ule i64 %mul4126, 9223372036854775807
  br i1 %cmp4127, label %cond.true.4129, label %cond.false.4131

cond.true.4129:                                   ; preds = %cond.true.4125
  %645 = load i64, i64* %size4, align 8
  %mul4130 = mul i64 %645, 8
  br label %cond.end.4135

cond.false.4131:                                  ; preds = %cond.true.4125
  %646 = load i64, i64* %size4, align 8
  %mul4132 = mul i64 %646, 8
  %sub4133 = sub i64 %mul4132, -9223372036854775808
  %add4134 = add nsw i64 %sub4133, -9223372036854775808
  br label %cond.end.4135

cond.end.4135:                                    ; preds = %cond.false.4131, %cond.true.4129
  %cond4136 = phi i64 [ %mul4130, %cond.true.4129 ], [ %add4134, %cond.false.4131 ]
  store i64 %cond4136, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then.4345, label %lor.lhs.false.4342

cond.false.4137:                                  ; preds = %lor.lhs.false.4121
  %647 = load i64, i64* %size4, align 8
  %mul4138 = mul i64 %647, 8
  %cmp4139 = icmp ule i64 %mul4138, 9223372036854775807
  br i1 %cmp4139, label %cond.true.4141, label %cond.false.4143

cond.true.4141:                                   ; preds = %cond.false.4137
  %648 = load i64, i64* %size4, align 8
  %mul4142 = mul i64 %648, 8
  br label %cond.end.4147

cond.false.4143:                                  ; preds = %cond.false.4137
  %649 = load i64, i64* %size4, align 8
  %mul4144 = mul i64 %649, 8
  %sub4145 = sub i64 %mul4144, -9223372036854775808
  %add4146 = add nsw i64 %sub4145, -9223372036854775808
  br label %cond.end.4147

cond.end.4147:                                    ; preds = %cond.false.4143, %cond.true.4141
  %cond4148 = phi i64 [ %mul4142, %cond.true.4141 ], [ %add4146, %cond.false.4143 ]
  store i64 %cond4148, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then.4345, label %lor.lhs.false.4342

cond.false.4149:                                  ; preds = %cond.false.3955
  %650 = load i64, i64* %size4, align 8
  %add4150 = add nsw i64 0, %650
  %mul4151 = mul nsw i64 0, %add4150
  %sub4152 = sub nsw i64 %mul4151, 1
  %cmp4153 = icmp slt i64 %sub4152, 0
  br i1 %cmp4153, label %cond.true.4155, label %cond.false.4172

cond.true.4155:                                   ; preds = %cond.false.4149
  %651 = load i64, i64* %size4, align 8
  %add4156 = add nsw i64 0, %651
  %mul4157 = mul nsw i64 0, %add4156
  %add4158 = add nsw i64 %mul4157, 0
  %neg4159 = xor i64 %add4158, -1
  %cmp4160 = icmp eq i64 %neg4159, -1
  %conv4161 = zext i1 %cmp4160 to i32
  %sub4162 = sub nsw i32 0, %conv4161
  %conv4163 = sext i32 %sub4162 to i64
  %652 = load i64, i64* %size4, align 8
  %add4164 = add nsw i64 0, %652
  %mul4165 = mul nsw i64 0, %add4164
  %add4166 = add nsw i64 %mul4165, 1
  %shl4167 = shl i64 %add4166, 62
  %sub4168 = sub nsw i64 %shl4167, 1
  %mul4169 = mul nsw i64 %sub4168, 2
  %add4170 = add nsw i64 %mul4169, 1
  %sub4171 = sub nsw i64 %conv4163, %add4170
  br label %cond.end.4176

cond.false.4172:                                  ; preds = %cond.false.4149
  %653 = load i64, i64* %size4, align 8
  %add4173 = add nsw i64 0, %653
  %mul4174 = mul nsw i64 0, %add4173
  %add4175 = add nsw i64 %mul4174, 0
  br label %cond.end.4176

cond.end.4176:                                    ; preds = %cond.false.4172, %cond.true.4155
  %cond4177 = phi i64 [ %sub4171, %cond.true.4155 ], [ %add4175, %cond.false.4172 ]
  %cmp4178 = icmp eq i64 %cond4177, 0
  br i1 %cmp4178, label %land.lhs.true.4180, label %lor.lhs.false.4183

land.lhs.true.4180:                               ; preds = %cond.end.4176
  %654 = load i64, i64* %size4, align 8
  %cmp4181 = icmp slt i64 %654, 0
  br i1 %cmp4181, label %cond.true.4318, label %lor.lhs.false.4183

lor.lhs.false.4183:                               ; preds = %land.lhs.true.4180, %cond.end.4176
  br i1 false, label %cond.true.4184, label %cond.false.4244

cond.true.4184:                                   ; preds = %lor.lhs.false.4183
  %655 = load i64, i64* %size4, align 8
  %cmp4185 = icmp slt i64 %655, 0
  br i1 %cmp4185, label %cond.true.4187, label %cond.false.4210

cond.true.4187:                                   ; preds = %cond.true.4184
  %656 = load i64, i64* %size4, align 8
  %657 = load i64, i64* %size4, align 8
  %add4188 = add nsw i64 0, %657
  %mul4189 = mul nsw i64 0, %add4188
  %sub4190 = sub nsw i64 %mul4189, 1
  %cmp4191 = icmp slt i64 %sub4190, 0
  br i1 %cmp4191, label %cond.true.4193, label %cond.false.4201

cond.true.4193:                                   ; preds = %cond.true.4187
  %658 = load i64, i64* %size4, align 8
  %add4194 = add nsw i64 0, %658
  %mul4195 = mul nsw i64 0, %add4194
  %add4196 = add nsw i64 %mul4195, 1
  %shl4197 = shl i64 %add4196, 62
  %sub4198 = sub nsw i64 %shl4197, 1
  %mul4199 = mul nsw i64 %sub4198, 2
  %add4200 = add nsw i64 %mul4199, 1
  br label %cond.end.4205

cond.false.4201:                                  ; preds = %cond.true.4187
  %659 = load i64, i64* %size4, align 8
  %add4202 = add nsw i64 0, %659
  %mul4203 = mul nsw i64 0, %add4202
  %sub4204 = sub nsw i64 %mul4203, 1
  br label %cond.end.4205

cond.end.4205:                                    ; preds = %cond.false.4201, %cond.true.4193
  %cond4206 = phi i64 [ %add4200, %cond.true.4193 ], [ %sub4204, %cond.false.4201 ]
  %div4207 = sdiv i64 %cond4206, 8
  %cmp4208 = icmp slt i64 %656, %div4207
  br i1 %cmp4208, label %cond.true.4318, label %lor.lhs.false.4304

cond.false.4210:                                  ; preds = %cond.true.4184
  br i1 false, label %cond.true.4211, label %cond.false.4212

cond.true.4211:                                   ; preds = %cond.false.4210
  br i1 false, label %cond.true.4318, label %lor.lhs.false.4304

cond.false.4212:                                  ; preds = %cond.false.4210
  %660 = load i64, i64* %size4, align 8
  %add4213 = add nsw i64 0, %660
  %mul4214 = mul nsw i64 0, %add4213
  %sub4215 = sub nsw i64 %mul4214, 1
  %cmp4216 = icmp slt i64 %sub4215, 0
  br i1 %cmp4216, label %cond.true.4218, label %cond.false.4235

cond.true.4218:                                   ; preds = %cond.false.4212
  %661 = load i64, i64* %size4, align 8
  %add4219 = add nsw i64 0, %661
  %mul4220 = mul nsw i64 0, %add4219
  %add4221 = add nsw i64 %mul4220, 0
  %neg4222 = xor i64 %add4221, -1
  %cmp4223 = icmp eq i64 %neg4222, -1
  %conv4224 = zext i1 %cmp4223 to i32
  %sub4225 = sub nsw i32 0, %conv4224
  %conv4226 = sext i32 %sub4225 to i64
  %662 = load i64, i64* %size4, align 8
  %add4227 = add nsw i64 0, %662
  %mul4228 = mul nsw i64 0, %add4227
  %add4229 = add nsw i64 %mul4228, 1
  %shl4230 = shl i64 %add4229, 62
  %sub4231 = sub nsw i64 %shl4230, 1
  %mul4232 = mul nsw i64 %sub4231, 2
  %add4233 = add nsw i64 %mul4232, 1
  %sub4234 = sub nsw i64 %conv4226, %add4233
  br label %cond.end.4239

cond.false.4235:                                  ; preds = %cond.false.4212
  %663 = load i64, i64* %size4, align 8
  %add4236 = add nsw i64 0, %663
  %mul4237 = mul nsw i64 0, %add4236
  %add4238 = add nsw i64 %mul4237, 0
  br label %cond.end.4239

cond.end.4239:                                    ; preds = %cond.false.4235, %cond.true.4218
  %cond4240 = phi i64 [ %sub4234, %cond.true.4218 ], [ %add4238, %cond.false.4235 ]
  %div4241 = sdiv i64 %cond4240, 8
  %664 = load i64, i64* %size4, align 8
  %cmp4242 = icmp slt i64 %div4241, %664
  br i1 %cmp4242, label %cond.true.4318, label %lor.lhs.false.4304

cond.false.4244:                                  ; preds = %lor.lhs.false.4183
  br i1 false, label %cond.true.4245, label %cond.false.4246

cond.true.4245:                                   ; preds = %cond.false.4244
  br i1 false, label %cond.true.4318, label %lor.lhs.false.4304

cond.false.4246:                                  ; preds = %cond.false.4244
  %665 = load i64, i64* %size4, align 8
  %cmp4247 = icmp slt i64 %665, 0
  br i1 %cmp4247, label %cond.true.4249, label %cond.false.4281

cond.true.4249:                                   ; preds = %cond.false.4246
  %666 = load i64, i64* %size4, align 8
  %667 = load i64, i64* %size4, align 8
  %add4250 = add nsw i64 0, %667
  %mul4251 = mul nsw i64 0, %add4250
  %sub4252 = sub nsw i64 %mul4251, 1
  %cmp4253 = icmp slt i64 %sub4252, 0
  br i1 %cmp4253, label %cond.true.4255, label %cond.false.4272

cond.true.4255:                                   ; preds = %cond.true.4249
  %668 = load i64, i64* %size4, align 8
  %add4256 = add nsw i64 0, %668
  %mul4257 = mul nsw i64 0, %add4256
  %add4258 = add nsw i64 %mul4257, 0
  %neg4259 = xor i64 %add4258, -1
  %cmp4260 = icmp eq i64 %neg4259, -1
  %conv4261 = zext i1 %cmp4260 to i32
  %sub4262 = sub nsw i32 0, %conv4261
  %conv4263 = sext i32 %sub4262 to i64
  %669 = load i64, i64* %size4, align 8
  %add4264 = add nsw i64 0, %669
  %mul4265 = mul nsw i64 0, %add4264
  %add4266 = add nsw i64 %mul4265, 1
  %shl4267 = shl i64 %add4266, 62
  %sub4268 = sub nsw i64 %shl4267, 1
  %mul4269 = mul nsw i64 %sub4268, 2
  %add4270 = add nsw i64 %mul4269, 1
  %sub4271 = sub nsw i64 %conv4263, %add4270
  br label %cond.end.4276

cond.false.4272:                                  ; preds = %cond.true.4249
  %670 = load i64, i64* %size4, align 8
  %add4273 = add nsw i64 0, %670
  %mul4274 = mul nsw i64 0, %add4273
  %add4275 = add nsw i64 %mul4274, 0
  br label %cond.end.4276

cond.end.4276:                                    ; preds = %cond.false.4272, %cond.true.4255
  %cond4277 = phi i64 [ %sub4271, %cond.true.4255 ], [ %add4275, %cond.false.4272 ]
  %div4278 = sdiv i64 %cond4277, 8
  %cmp4279 = icmp slt i64 %666, %div4278
  br i1 %cmp4279, label %cond.true.4318, label %lor.lhs.false.4304

cond.false.4281:                                  ; preds = %cond.false.4246
  %671 = load i64, i64* %size4, align 8
  %add4282 = add nsw i64 0, %671
  %mul4283 = mul nsw i64 0, %add4282
  %sub4284 = sub nsw i64 %mul4283, 1
  %cmp4285 = icmp slt i64 %sub4284, 0
  br i1 %cmp4285, label %cond.true.4287, label %cond.false.4295

cond.true.4287:                                   ; preds = %cond.false.4281
  %672 = load i64, i64* %size4, align 8
  %add4288 = add nsw i64 0, %672
  %mul4289 = mul nsw i64 0, %add4288
  %add4290 = add nsw i64 %mul4289, 1
  %shl4291 = shl i64 %add4290, 62
  %sub4292 = sub nsw i64 %shl4291, 1
  %mul4293 = mul nsw i64 %sub4292, 2
  %add4294 = add nsw i64 %mul4293, 1
  br label %cond.end.4299

cond.false.4295:                                  ; preds = %cond.false.4281
  %673 = load i64, i64* %size4, align 8
  %add4296 = add nsw i64 0, %673
  %mul4297 = mul nsw i64 0, %add4296
  %sub4298 = sub nsw i64 %mul4297, 1
  br label %cond.end.4299

cond.end.4299:                                    ; preds = %cond.false.4295, %cond.true.4287
  %cond4300 = phi i64 [ %add4294, %cond.true.4287 ], [ %sub4298, %cond.false.4295 ]
  %div4301 = sdiv i64 %cond4300, 8
  %674 = load i64, i64* %size4, align 8
  %cmp4302 = icmp slt i64 %div4301, %674
  br i1 %cmp4302, label %cond.true.4318, label %lor.lhs.false.4304

lor.lhs.false.4304:                               ; preds = %cond.end.4299, %cond.end.4276, %cond.true.4245, %cond.end.4239, %cond.true.4211, %cond.end.4205
  %675 = load i64, i64* %size4, align 8
  %mul4305 = mul nsw i64 %675, 8
  %mul4306 = mul nsw i64 0, %mul4305
  %sub4307 = sub nsw i64 %mul4306, 1
  %cmp4308 = icmp slt i64 %sub4307, 0
  br i1 %cmp4308, label %land.lhs.true.4310, label %lor.lhs.false.4314

land.lhs.true.4310:                               ; preds = %lor.lhs.false.4304
  %676 = load i64, i64* %size4, align 8
  %mul4311 = mul nsw i64 %676, 8
  %cmp4312 = icmp slt i64 %mul4311, -9223372036854775808
  br i1 %cmp4312, label %cond.true.4318, label %lor.lhs.false.4314

lor.lhs.false.4314:                               ; preds = %land.lhs.true.4310, %lor.lhs.false.4304
  %677 = load i64, i64* %size4, align 8
  %mul4315 = mul nsw i64 %677, 8
  %cmp4316 = icmp slt i64 9223372036854775807, %mul4315
  br i1 %cmp4316, label %cond.true.4318, label %cond.false.4330

cond.true.4318:                                   ; preds = %lor.lhs.false.4314, %land.lhs.true.4310, %cond.end.4299, %cond.end.4276, %cond.true.4245, %cond.end.4239, %cond.true.4211, %cond.end.4205, %land.lhs.true.4180
  %678 = load i64, i64* %size4, align 8
  %mul4319 = mul i64 %678, 8
  %cmp4320 = icmp ule i64 %mul4319, 9223372036854775807
  br i1 %cmp4320, label %cond.true.4322, label %cond.false.4324

cond.true.4322:                                   ; preds = %cond.true.4318
  %679 = load i64, i64* %size4, align 8
  %mul4323 = mul i64 %679, 8
  br label %cond.end.4328

cond.false.4324:                                  ; preds = %cond.true.4318
  %680 = load i64, i64* %size4, align 8
  %mul4325 = mul i64 %680, 8
  %sub4326 = sub i64 %mul4325, -9223372036854775808
  %add4327 = add nsw i64 %sub4326, -9223372036854775808
  br label %cond.end.4328

cond.end.4328:                                    ; preds = %cond.false.4324, %cond.true.4322
  %cond4329 = phi i64 [ %mul4323, %cond.true.4322 ], [ %add4327, %cond.false.4324 ]
  store i64 %cond4329, i64* %alloca_nbytes, align 8
  br i1 true, label %if.then.4345, label %lor.lhs.false.4342

cond.false.4330:                                  ; preds = %lor.lhs.false.4314
  %681 = load i64, i64* %size4, align 8
  %mul4331 = mul i64 %681, 8
  %cmp4332 = icmp ule i64 %mul4331, 9223372036854775807
  br i1 %cmp4332, label %cond.true.4334, label %cond.false.4336

cond.true.4334:                                   ; preds = %cond.false.4330
  %682 = load i64, i64* %size4, align 8
  %mul4335 = mul i64 %682, 8
  br label %cond.end.4340

cond.false.4336:                                  ; preds = %cond.false.4330
  %683 = load i64, i64* %size4, align 8
  %mul4337 = mul i64 %683, 8
  %sub4338 = sub i64 %mul4337, -9223372036854775808
  %add4339 = add nsw i64 %sub4338, -9223372036854775808
  br label %cond.end.4340

cond.end.4340:                                    ; preds = %cond.false.4336, %cond.true.4334
  %cond4341 = phi i64 [ %mul4335, %cond.true.4334 ], [ %add4339, %cond.false.4336 ]
  store i64 %cond4341, i64* %alloca_nbytes, align 8
  br i1 false, label %if.then.4345, label %lor.lhs.false.4342

lor.lhs.false.4342:                               ; preds = %cond.end.4340, %cond.end.4328, %cond.end.4147, %cond.end.4135, %cond.end.3953, %cond.end.3941, %cond.end.3760, %cond.end.3748, %cond.end.3564, %cond.end.3548, %cond.end.3363, %cond.end.3347, %cond.end.3135, %cond.end.3112, %cond.end.2920, %cond.end.2897, %cond.end.2650, %cond.end.2627, %cond.end.2435, %cond.end.2412
  %684 = load i64, i64* %alloca_nbytes, align 8
  %cmp4343 = icmp ult i64 -1, %684
  br i1 %cmp4343, label %if.then.4345, label %if.else

if.then.4345:                                     ; preds = %lor.lhs.false.4342, %cond.end.4340, %cond.end.4328, %cond.end.4147, %cond.end.4135, %cond.end.3953, %cond.end.3941, %cond.end.3760, %cond.end.3748, %cond.end.3564, %cond.end.3548, %cond.end.3363, %cond.end.3347, %cond.end.3135, %cond.end.3112, %cond.end.2920, %cond.end.2897, %cond.end.2650, %cond.end.2627, %cond.end.2435, %cond.end.2412
  call void @memory_full(i64 -1) #6
  unreachable

if.else:                                          ; preds = %lor.lhs.false.4342
  %685 = load i64, i64* %alloca_nbytes, align 8
  %686 = load i64, i64* %sa_avail, align 8
  %cmp4346 = icmp sle i64 %685, %686
  br i1 %cmp4346, label %if.then.4348, label %if.else.4350

if.then.4348:                                     ; preds = %if.else
  %687 = load i64, i64* %alloca_nbytes, align 8
  %688 = load i64, i64* %sa_avail, align 8
  %sub4349 = sub nsw i64 %688, %687
  store i64 %sub4349, i64* %sa_avail, align 8
  %689 = load i64, i64* %alloca_nbytes, align 8
  %690 = alloca i8, i64 %689
  %691 = bitcast i8* %690 to i64*
  store i64* %691, i64** %args, align 8
  br label %if.end.4353

if.else.4350:                                     ; preds = %if.else
  %692 = load i64, i64* %alloca_nbytes, align 8
  %call4351 = call noalias i8* @xmalloc(i64 %692)
  %693 = bitcast i8* %call4351 to i64*
  store i64* %693, i64** %args, align 8
  %694 = load i64*, i64** %args, align 8
  %695 = load i64, i64* %size4, align 8
  %call4352 = call i64 @make_save_memory(i64* %694, i64 %695)
  store i64 %call4352, i64* %arg_, align 8
  store i8 1, i8* %sa_must_free, align 1
  %696 = load i64, i64* %arg_, align 8
  call void @record_unwind_protect(void (i64)* @free_save_value, i64 %696)
  br label %if.end.4353

if.end.4353:                                      ; preds = %if.else.4350, %if.then.4348
  br label %if.end.4354

if.end.4354:                                      ; preds = %if.end.4353
  br label %do.end

do.end:                                           ; preds = %if.end.4354
  br label %next_list

next_list:                                        ; preds = %while.end, %do.end
  %697 = load i64, i64* %prefix.addr, align 8
  %call4355 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp4356 = icmp eq i64 %697, %call4355
  br i1 %cmp4356, label %if.else.4360, label %if.then.4358

if.then.4358:                                     ; preds = %next_list
  %698 = load i64, i64* %prefix.addr, align 8
  store i64 %698, i64* %list, align 8
  %call4359 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call4359, i64* %prefix.addr, align 8
  br label %if.end.4389

if.else.4360:                                     ; preds = %next_list
  %699 = load i64, i64* %keys.addr, align 8
  %call4361 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp4362 = icmp eq i64 %699, %call4361
  br i1 %cmp4362, label %if.else.4366, label %if.then.4364

if.then.4364:                                     ; preds = %if.else.4360
  %700 = load i64, i64* %keys.addr, align 8
  store i64 %700, i64* %list, align 8
  %call4365 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call4365, i64* %keys.addr, align 8
  br label %if.end.4388

if.else.4366:                                     ; preds = %if.else.4360
  %701 = load i8, i8* %add_meta, align 1
  %tobool = trunc i8 %701 to i1
  br i1 %tobool, label %if.then.4367, label %if.else.4372

if.then.4367:                                     ; preds = %if.else.4366
  %702 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 379), align 8
  %call4368 = call i64 @builtin_lisp_symbol(i32 0)
  %call4369 = call i64 @Fsingle_key_description(i64 %702, i64 %call4368)
  %703 = load i64, i64* %len, align 8
  %704 = load i64*, i64** %args, align 8
  %arrayidx = getelementptr inbounds i64, i64* %704, i64 %703
  store i64 %call4369, i64* %arrayidx, align 8
  %705 = load i64, i64* %len, align 8
  %add4370 = add nsw i64 %705, 1
  %706 = load i64*, i64** %args, align 8
  %call4371 = call i64 @Fconcat(i64 %add4370, i64* %706)
  store i64 %call4371, i64* %result, align 8
  br label %if.end.4380

if.else.4372:                                     ; preds = %if.else.4366
  %707 = load i64, i64* %len, align 8
  %cmp4373 = icmp eq i64 %707, 0
  br i1 %cmp4373, label %if.then.4375, label %if.else.4376

if.then.4375:                                     ; preds = %if.else.4372
  %708 = load i64, i64* @empty_unibyte_string, align 8
  store i64 %708, i64* %result, align 8
  br label %if.end.4379

if.else.4376:                                     ; preds = %if.else.4372
  %709 = load i64, i64* %len, align 8
  %sub4377 = sub nsw i64 %709, 1
  %710 = load i64*, i64** %args, align 8
  %call4378 = call i64 @Fconcat(i64 %sub4377, i64* %710)
  store i64 %call4378, i64* %result, align 8
  br label %if.end.4379

if.end.4379:                                      ; preds = %if.else.4376, %if.then.4375
  br label %if.end.4380

if.end.4380:                                      ; preds = %if.end.4379, %if.then.4367
  br label %do.body.4381

do.body.4381:                                     ; preds = %if.end.4380
  %711 = load i8, i8* %sa_must_free, align 1
  %tobool4382 = trunc i8 %711 to i1
  br i1 %tobool4382, label %if.then.4383, label %if.end.4386

if.then.4383:                                     ; preds = %do.body.4381
  store i8 0, i8* %sa_must_free, align 1
  %712 = load i64, i64* %sa_count, align 8
  %call4384 = call i64 @builtin_lisp_symbol(i32 0)
  %call4385 = call i64 @unbind_to(i64 %712, i64 %call4384)
  br label %if.end.4386

if.end.4386:                                      ; preds = %if.then.4383, %do.body.4381
  br label %do.end.4387

do.end.4387:                                      ; preds = %if.end.4386
  %713 = load i64, i64* %result, align 8
  ret i64 %713

if.end.4388:                                      ; preds = %if.then.4364
  br label %if.end.4389

if.end.4389:                                      ; preds = %if.end.4388, %if.then.4358
  %714 = load i64, i64* %list, align 8
  %call4390 = call zeroext i1 @STRINGP(i64 %714)
  br i1 %call4390, label %if.then.4391, label %if.else.4393

if.then.4391:                                     ; preds = %if.end.4389
  %715 = load i64, i64* %list, align 8
  %call4392 = call i64 @SCHARS(i64 %715)
  store i64 %call4392, i64* %size, align 8
  br label %if.end.4408

if.else.4393:                                     ; preds = %if.end.4389
  %716 = load i64, i64* %list, align 8
  %call4394 = call zeroext i1 @VECTORP(i64 %716)
  br i1 %call4394, label %if.then.4395, label %if.else.4397

if.then.4395:                                     ; preds = %if.else.4393
  %717 = load i64, i64* %list, align 8
  %call4396 = call i64 @ASIZE(i64 %717)
  store i64 %call4396, i64* %size, align 8
  br label %if.end.4407

if.else.4397:                                     ; preds = %if.else.4393
  %718 = load i64, i64* %list, align 8
  %and = and i64 %718, 7
  %conv4398 = trunc i64 %and to i32
  %cmp4399 = icmp eq i32 %conv4398, 3
  br i1 %cmp4399, label %if.then.4401, label %if.else.4404

if.then.4401:                                     ; preds = %if.else.4397
  %719 = load i64, i64* %list, align 8
  %call4402 = call i64 @Flength(i64 %719)
  %shr4403 = ashr i64 %call4402, 2
  store i64 %shr4403, i64* %size, align 8
  br label %if.end.4406

if.else.4404:                                     ; preds = %if.else.4397
  %call4405 = call i64 @builtin_lisp_symbol(i32 179)
  %720 = load i64, i64* %list, align 8
  %721 = call i64 @wrong_type_argument(i64 %call4405, i64 %720) #6
  unreachable

if.end.4406:                                      ; preds = %if.then.4401
  br label %if.end.4407

if.end.4407:                                      ; preds = %if.end.4406, %if.then.4395
  br label %if.end.4408

if.end.4408:                                      ; preds = %if.end.4407, %if.then.4391
  store i64 0, i64* %i_byte, align 8
  store i64 0, i64* %i, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.4542, %if.then.4540, %if.then.4529, %if.end.4408
  %722 = load i64, i64* %i, align 8
  %723 = load i64, i64* %size, align 8
  %cmp4409 = icmp slt i64 %722, %723
  br i1 %cmp4409, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %724 = load i64, i64* %list, align 8
  %call4411 = call zeroext i1 @STRINGP(i64 %724)
  br i1 %call4411, label %if.then.4412, label %if.else.4495

if.then.4412:                                     ; preds = %while.body
  br label %do.body.4413

do.body.4413:                                     ; preds = %if.then.4412
  %725 = load i64, i64* %i, align 8
  %inc = add nsw i64 %725, 1
  store i64 %inc, i64* %i, align 8
  %726 = load i64, i64* %list, align 8
  %call4414 = call zeroext i1 @STRING_MULTIBYTE(i64 %726)
  br i1 %call4414, label %if.then.4415, label %if.else.4473

if.then.4415:                                     ; preds = %do.body.4413
  %727 = load i64, i64* %i_byte, align 8
  %728 = load i64, i64* %list, align 8
  %call4416 = call i8* @SDATA(i64 %728)
  %arrayidx4417 = getelementptr inbounds i8, i8* %call4416, i64 %727
  store i8* %arrayidx4417, i8** %chp, align 8
  %729 = load i8*, i8** %chp, align 8
  %arrayidx4418 = getelementptr inbounds i8, i8* %729, i64 0
  %730 = load i8, i8* %arrayidx4418, align 1
  %conv4419 = zext i8 %730 to i32
  %and4420 = and i32 %conv4419, 128
  %tobool4421 = icmp ne i32 %and4420, 0
  br i1 %tobool4421, label %cond.false.4425, label %cond.true.4422

cond.true.4422:                                   ; preds = %if.then.4415
  store i32 1, i32* %chlen, align 4
  %731 = load i8*, i8** %chp, align 8
  %arrayidx4423 = getelementptr inbounds i8, i8* %731, i64 0
  %732 = load i8, i8* %arrayidx4423, align 1
  %conv4424 = zext i8 %732 to i32
  br label %cond.end.4469

cond.false.4425:                                  ; preds = %if.then.4415
  %733 = load i8*, i8** %chp, align 8
  %arrayidx4426 = getelementptr inbounds i8, i8* %733, i64 0
  %734 = load i8, i8* %arrayidx4426, align 1
  %conv4427 = zext i8 %734 to i32
  %and4428 = and i32 %conv4427, 32
  %tobool4429 = icmp ne i32 %and4428, 0
  br i1 %tobool4429, label %cond.false.4444, label %cond.true.4430

cond.true.4430:                                   ; preds = %cond.false.4425
  store i32 2, i32* %chlen, align 4
  %735 = load i8*, i8** %chp, align 8
  %arrayidx4431 = getelementptr inbounds i8, i8* %735, i64 0
  %736 = load i8, i8* %arrayidx4431, align 1
  %conv4432 = zext i8 %736 to i32
  %and4433 = and i32 %conv4432, 31
  %shl4434 = shl i32 %and4433, 6
  %737 = load i8*, i8** %chp, align 8
  %arrayidx4435 = getelementptr inbounds i8, i8* %737, i64 1
  %738 = load i8, i8* %arrayidx4435, align 1
  %conv4436 = zext i8 %738 to i32
  %and4437 = and i32 %conv4436, 63
  %or = or i32 %shl4434, %and4437
  %739 = load i8*, i8** %chp, align 8
  %arrayidx4438 = getelementptr inbounds i8, i8* %739, i64 0
  %740 = load i8, i8* %arrayidx4438, align 1
  %conv4439 = zext i8 %740 to i32
  %cmp4440 = icmp slt i32 %conv4439, 194
  %cond4442 = select i1 %cmp4440, i32 4194176, i32 0
  %add4443 = add nsw i32 %or, %cond4442
  br label %cond.end.4467

cond.false.4444:                                  ; preds = %cond.false.4425
  %741 = load i8*, i8** %chp, align 8
  %arrayidx4445 = getelementptr inbounds i8, i8* %741, i64 0
  %742 = load i8, i8* %arrayidx4445, align 1
  %conv4446 = zext i8 %742 to i32
  %and4447 = and i32 %conv4446, 16
  %tobool4448 = icmp ne i32 %and4447, 0
  br i1 %tobool4448, label %cond.false.4463, label %cond.true.4449

cond.true.4449:                                   ; preds = %cond.false.4444
  store i32 3, i32* %chlen, align 4
  %743 = load i8*, i8** %chp, align 8
  %arrayidx4450 = getelementptr inbounds i8, i8* %743, i64 0
  %744 = load i8, i8* %arrayidx4450, align 1
  %conv4451 = zext i8 %744 to i32
  %and4452 = and i32 %conv4451, 15
  %shl4453 = shl i32 %and4452, 12
  %745 = load i8*, i8** %chp, align 8
  %arrayidx4454 = getelementptr inbounds i8, i8* %745, i64 1
  %746 = load i8, i8* %arrayidx4454, align 1
  %conv4455 = zext i8 %746 to i32
  %and4456 = and i32 %conv4455, 63
  %shl4457 = shl i32 %and4456, 6
  %or4458 = or i32 %shl4453, %shl4457
  %747 = load i8*, i8** %chp, align 8
  %arrayidx4459 = getelementptr inbounds i8, i8* %747, i64 2
  %748 = load i8, i8* %arrayidx4459, align 1
  %conv4460 = zext i8 %748 to i32
  %and4461 = and i32 %conv4460, 63
  %or4462 = or i32 %or4458, %and4461
  br label %cond.end.4465

cond.false.4463:                                  ; preds = %cond.false.4444
  %749 = load i8*, i8** %chp, align 8
  %call4464 = call i32 @string_char(i8* %749, i8** null, i32* %chlen)
  br label %cond.end.4465

cond.end.4465:                                    ; preds = %cond.false.4463, %cond.true.4449
  %cond4466 = phi i32 [ %or4462, %cond.true.4449 ], [ %call4464, %cond.false.4463 ]
  br label %cond.end.4467

cond.end.4467:                                    ; preds = %cond.end.4465, %cond.true.4430
  %cond4468 = phi i32 [ %add4443, %cond.true.4430 ], [ %cond4466, %cond.end.4465 ]
  br label %cond.end.4469

cond.end.4469:                                    ; preds = %cond.end.4467, %cond.true.4422
  %cond4470 = phi i32 [ %conv4424, %cond.true.4422 ], [ %cond4468, %cond.end.4467 ]
  store i32 %cond4470, i32* %c, align 4
  %750 = load i32, i32* %chlen, align 4
  %conv4471 = sext i32 %750 to i64
  %751 = load i64, i64* %i_byte, align 8
  %add4472 = add nsw i64 %751, %conv4471
  store i64 %add4472, i64* %i_byte, align 8
  br label %if.end.4477

if.else.4473:                                     ; preds = %do.body.4413
  %752 = load i64, i64* %list, align 8
  %753 = load i64, i64* %i_byte, align 8
  %call4474 = call zeroext i8 @SREF(i64 %752, i64 %753)
  %conv4475 = zext i8 %call4474 to i32
  store i32 %conv4475, i32* %c, align 4
  %754 = load i64, i64* %i_byte, align 8
  %inc4476 = add nsw i64 %754, 1
  store i64 %inc4476, i64* %i_byte, align 8
  br label %if.end.4477

if.end.4477:                                      ; preds = %if.else.4473, %cond.end.4469
  br label %do.end.4478

do.end.4478:                                      ; preds = %if.end.4477
  br i1 true, label %cond.true.4479, label %cond.false.4483

cond.true.4479:                                   ; preds = %do.end.4478
  %755 = load i32, i32* %c, align 4
  %add4480 = add i32 %755, 0
  %cmp4481 = icmp ult i32 %add4480, 256
  br i1 %cmp4481, label %land.lhs.true.4488, label %if.end.4492

cond.false.4483:                                  ; preds = %do.end.4478
  %756 = load i32, i32* %c, align 4
  %conv4484 = sext i32 %756 to i64
  %add4485 = add i64 %conv4484, 0
  %cmp4486 = icmp ult i64 %add4485, 256
  br i1 %cmp4486, label %land.lhs.true.4488, label %if.end.4492

land.lhs.true.4488:                               ; preds = %cond.false.4483, %cond.true.4479
  %757 = load i32, i32* %c, align 4
  %and4489 = and i32 %757, 128
  %tobool4490 = icmp ne i32 %and4489, 0
  br i1 %tobool4490, label %if.then.4491, label %if.end.4492

if.then.4491:                                     ; preds = %land.lhs.true.4488
  %758 = load i32, i32* %c, align 4
  %xor = xor i32 %758, 134217856
  store i32 %xor, i32* %c, align 4
  br label %if.end.4492

if.end.4492:                                      ; preds = %if.then.4491, %land.lhs.true.4488, %cond.false.4483, %cond.true.4479
  %759 = load i32, i32* %c, align 4
  %conv4493 = sext i32 %759 to i64
  %call4494 = call i64 @make_natnum(i64 %conv4493)
  store i64 %call4494, i64* %key, align 8
  br label %if.end.4505

if.else.4495:                                     ; preds = %while.body
  %760 = load i64, i64* %list, align 8
  %call4496 = call zeroext i1 @VECTORP(i64 %760)
  br i1 %call4496, label %if.then.4497, label %if.else.4500

if.then.4497:                                     ; preds = %if.else.4495
  %761 = load i64, i64* %list, align 8
  %762 = load i64, i64* %i, align 8
  %call4498 = call i64 @AREF(i64 %761, i64 %762)
  store i64 %call4498, i64* %key, align 8
  %763 = load i64, i64* %i, align 8
  %inc4499 = add nsw i64 %763, 1
  store i64 %inc4499, i64* %i, align 8
  br label %if.end.4504

if.else.4500:                                     ; preds = %if.else.4495
  %764 = load i64, i64* %list, align 8
  %sub4501 = sub nsw i64 %764, 3
  %765 = inttoptr i64 %sub4501 to i8*
  %766 = bitcast i8* %765 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %766, i32 0, i32 0
  %767 = load i64, i64* %car, align 8
  store i64 %767, i64* %key, align 8
  %768 = load i64, i64* %list, align 8
  %sub4502 = sub nsw i64 %768, 3
  %769 = inttoptr i64 %sub4502 to i8*
  %770 = bitcast i8* %769 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %770, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %771 = load i64, i64* %cdr, align 8
  store i64 %771, i64* %list, align 8
  %772 = load i64, i64* %i, align 8
  %inc4503 = add nsw i64 %772, 1
  store i64 %inc4503, i64* %i, align 8
  br label %if.end.4504

if.end.4504:                                      ; preds = %if.else.4500, %if.then.4497
  br label %if.end.4505

if.end.4505:                                      ; preds = %if.end.4504, %if.end.4492
  %773 = load i8, i8* %add_meta, align 1
  %tobool4506 = trunc i8 %773 to i1
  br i1 %tobool4506, label %if.then.4507, label %if.else.4537

if.then.4507:                                     ; preds = %if.end.4505
  %774 = load i64, i64* %key, align 8
  %and4508 = and i64 %774, 7
  %conv4509 = trunc i64 %and4508 to i32
  %and4510 = and i32 %conv4509, -5
  %cmp4511 = icmp eq i32 %and4510, 2
  br i1 %cmp4511, label %lor.lhs.false.4513, label %if.then.4520

lor.lhs.false.4513:                               ; preds = %if.then.4507
  %775 = load i64, i64* %key, align 8
  %776 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 379), align 8
  %cmp4514 = icmp eq i64 %775, %776
  br i1 %cmp4514, label %if.then.4520, label %lor.lhs.false.4516

lor.lhs.false.4516:                               ; preds = %lor.lhs.false.4513
  %777 = load i64, i64* %key, align 8
  %shr4517 = ashr i64 %777, 2
  %and4518 = and i64 %shr4517, 134217728
  %tobool4519 = icmp ne i64 %and4518, 0
  br i1 %tobool4519, label %if.then.4520, label %if.else.4531

if.then.4520:                                     ; preds = %lor.lhs.false.4516, %lor.lhs.false.4513, %if.then.4507
  %778 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 379), align 8
  %call4521 = call i64 @builtin_lisp_symbol(i32 0)
  %call4522 = call i64 @Fsingle_key_description(i64 %778, i64 %call4521)
  %779 = load i64, i64* %len, align 8
  %inc4523 = add nsw i64 %779, 1
  store i64 %inc4523, i64* %len, align 8
  %780 = load i64*, i64** %args, align 8
  %arrayidx4524 = getelementptr inbounds i64, i64* %780, i64 %779
  store i64 %call4522, i64* %arrayidx4524, align 8
  %781 = load i64, i64* %sep, align 8
  %782 = load i64, i64* %len, align 8
  %inc4525 = add nsw i64 %782, 1
  store i64 %inc4525, i64* %len, align 8
  %783 = load i64*, i64** %args, align 8
  %arrayidx4526 = getelementptr inbounds i64, i64* %783, i64 %782
  store i64 %781, i64* %arrayidx4526, align 8
  %784 = load i64, i64* %key, align 8
  %785 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 379), align 8
  %cmp4527 = icmp eq i64 %784, %785
  br i1 %cmp4527, label %if.then.4529, label %if.end.4530

if.then.4529:                                     ; preds = %if.then.4520
  br label %while.cond

if.end.4530:                                      ; preds = %if.then.4520
  br label %if.end.4536

if.else.4531:                                     ; preds = %lor.lhs.false.4516
  %786 = load i64, i64* %key, align 8
  %shr4532 = ashr i64 %786, 2
  %or4533 = or i64 %shr4532, 134217728
  %shl4534 = shl i64 %or4533, 2
  %add4535 = add i64 %shl4534, 2
  store i64 %add4535, i64* %key, align 8
  br label %if.end.4536

if.end.4536:                                      ; preds = %if.else.4531, %if.end.4530
  store i8 0, i8* %add_meta, align 1
  br label %if.end.4542

if.else.4537:                                     ; preds = %if.end.4505
  %787 = load i64, i64* %key, align 8
  %788 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 379), align 8
  %cmp4538 = icmp eq i64 %787, %788
  br i1 %cmp4538, label %if.then.4540, label %if.end.4541

if.then.4540:                                     ; preds = %if.else.4537
  store i8 1, i8* %add_meta, align 1
  br label %while.cond

if.end.4541:                                      ; preds = %if.else.4537
  br label %if.end.4542

if.end.4542:                                      ; preds = %if.end.4541, %if.end.4536
  %789 = load i64, i64* %key, align 8
  %call4543 = call i64 @builtin_lisp_symbol(i32 0)
  %call4544 = call i64 @Fsingle_key_description(i64 %789, i64 %call4543)
  %790 = load i64, i64* %len, align 8
  %inc4545 = add nsw i64 %790, 1
  store i64 %inc4545, i64* %len, align 8
  %791 = load i64*, i64** %args, align 8
  %arrayidx4546 = getelementptr inbounds i64, i64* %791, i64 %790
  store i64 %call4544, i64* %arrayidx4546, align 8
  %792 = load i64, i64* %sep, align 8
  %793 = load i64, i64* %len, align 8
  %inc4547 = add nsw i64 %793, 1
  store i64 %inc4547, i64* %len, align 8
  %794 = load i64*, i64** %args, align 8
  %arrayidx4548 = getelementptr inbounds i64, i64* %794, i64 %793
  store i64 %792, i64* %arrayidx4548, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %next_list
}

declare i64 @Fsubstring(i64, i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fcommand_remapping(i64 %command, i64 %position, i64 %keymaps) #0 {
entry:
  %retval = alloca i64, align 8
  %command.addr = alloca i64, align 8
  %position.addr = alloca i64, align 8
  %keymaps.addr = alloca i64, align 8
  store i64 %command, i64* %command.addr, align 8
  store i64 %position, i64* %position.addr, align 8
  store i64 %keymaps, i64* %keymaps.addr, align 8
  %0 = load i64, i64* %command.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* @command_remapping_vector, align 8
  %2 = load i64, i64* %command.addr, align 8
  call void @ASET(i64 %1, i64 1, i64 %2)
  %3 = load i64, i64* %keymaps.addr, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp3 = icmp eq i64 %3, %call2
  br i1 %cmp3, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %4 = load i64, i64* @command_remapping_vector, align 8
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  %call7 = call i64 @builtin_lisp_symbol(i32 901)
  %5 = load i64, i64* %position.addr, align 8
  %call8 = call i64 @Fkey_binding(i64 %4, i64 %call6, i64 %call7, i64 %5)
  store i64 %call8, i64* %command.addr, align 8
  br label %if.end.13

if.else:                                          ; preds = %if.end
  %call9 = call i64 @builtin_lisp_symbol(i32 589)
  %6 = load i64, i64* %keymaps.addr, align 8
  %call10 = call i64 @Fcons(i64 %call9, i64 %6)
  %7 = load i64, i64* @command_remapping_vector, align 8
  %call11 = call i64 @builtin_lisp_symbol(i32 0)
  %call12 = call i64 @Flookup_key(i64 %call10, i64 %7, i64 %call11)
  store i64 %call12, i64* %command.addr, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.5
  %8 = load i64, i64* %command.addr, align 8
  %and14 = and i64 %8, 7
  %conv15 = trunc i64 %and14 to i32
  %and16 = and i32 %conv15, -5
  %cmp17 = icmp eq i32 %and16, 2
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.13
  %call19 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.false:                                       ; preds = %if.end.13
  %9 = load i64, i64* %command.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call19, %cond.true ], [ %9, %cond.false ]
  store i64 %cond, i64* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %10 = load i64, i64* %retval
  ret i64 %10
}

; Function Attrs: nounwind uwtable
define i64 @Fkey_binding(i64 %key, i64 %accept_default, i64 %no_remap, i64 %position) #0 {
entry:
  %retval = alloca i64, align 8
  %key.addr = alloca i64, align 8
  %accept_default.addr = alloca i64, align 8
  %no_remap.addr = alloca i64, align 8
  %position.addr = alloca i64, align 8
  %value = alloca i64, align 8
  %event = alloca i64, align 8
  %kind = alloca i64, align 8
  %value1 = alloca i64, align 8
  store i64 %key, i64* %key.addr, align 8
  store i64 %accept_default, i64* %accept_default.addr, align 8
  store i64 %no_remap, i64* %no_remap.addr, align 8
  store i64 %position, i64* %position.addr, align 8
  %0 = load i64, i64* %position.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %land.lhs.true, label %if.end.40

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %key.addr, align 8
  %call1 = call zeroext i1 @VECTORP(i64 %1)
  br i1 %call1, label %if.then, label %if.end.40

if.then:                                          ; preds = %land.lhs.true
  %2 = load i64, i64* %key.addr, align 8
  %call2 = call i64 @ASIZE(i64 %2)
  %cmp3 = icmp eq i64 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call5, i64* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %key.addr, align 8
  %4 = load i64, i64* %key.addr, align 8
  %call6 = call i64 @AREF(i64 %4, i64 0)
  %and = and i64 %call6, 7
  %conv = trunc i64 %and to i32
  %cmp7 = icmp eq i32 %conv, 0
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %5 = load i64, i64* %key.addr, align 8
  %call9 = call i64 @ASIZE(i64 %5)
  %cmp10 = icmp sgt i64 %call9, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %6 = phi i1 [ false, %if.end ], [ %cmp10, %land.rhs ]
  %cond = select i1 %6, i32 1, i32 0
  %conv12 = sext i32 %cond to i64
  %call13 = call i64 @AREF(i64 %3, i64 %conv12)
  store i64 %call13, i64* %event, align 8
  %7 = load i64, i64* %event, align 8
  %and14 = and i64 %7, 7
  %conv15 = trunc i64 %and14 to i32
  %cmp16 = icmp eq i32 %conv15, 3
  br i1 %cmp16, label %land.lhs.true.18, label %if.end.39

land.lhs.true.18:                                 ; preds = %land.end
  %8 = load i64, i64* %event, align 8
  %sub = sub nsw i64 %8, 3
  %9 = inttoptr i64 %sub to i8*
  %10 = bitcast i8* %9 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %10, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %11 = load i64, i64* %cdr, align 8
  %and19 = and i64 %11, 7
  %conv20 = trunc i64 %and19 to i32
  %cmp21 = icmp eq i32 %conv20, 3
  br i1 %cmp21, label %if.then.23, label %if.end.39

if.then.23:                                       ; preds = %land.lhs.true.18
  %12 = load i64, i64* %event, align 8
  %and24 = and i64 %12, 7
  %conv25 = trunc i64 %and24 to i32
  %cmp26 = icmp eq i32 %conv25, 3
  br i1 %cmp26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.23
  %13 = load i64, i64* %event, align 8
  %sub28 = sub nsw i64 %13, 3
  %14 = inttoptr i64 %sub28 to i8*
  %15 = bitcast i8* %14 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %15, i32 0, i32 0
  %16 = load i64, i64* %car, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.23
  %17 = load i64, i64* %event, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond29 = phi i64 [ %16, %cond.true ], [ %17, %cond.false ]
  %call30 = call i64 @builtin_lisp_symbol(i32 382)
  %call31 = call i64 @Fget(i64 %cond29, i64 %call30)
  store i64 %call31, i64* %kind, align 8
  %18 = load i64, i64* %kind, align 8
  %call32 = call i64 @builtin_lisp_symbol(i32 685)
  %cmp33 = icmp eq i64 %18, %call32
  br i1 %cmp33, label %if.then.35, label %if.end.38

if.then.35:                                       ; preds = %cond.end
  %19 = load i64, i64* %event, align 8
  %call36 = call i64 @CDR_SAFE(i64 %19)
  %call37 = call i64 @CAR_SAFE(i64 %call36)
  store i64 %call37, i64* %position.addr, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.35, %cond.end
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %land.lhs.true.18, %land.end
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %land.lhs.true, %entry
  %call41 = call i64 @builtin_lisp_symbol(i32 589)
  %call42 = call i64 @builtin_lisp_symbol(i32 901)
  %20 = load i64, i64* %position.addr, align 8
  %call43 = call i64 @Fcurrent_active_maps(i64 %call42, i64 %20)
  %call44 = call i64 @Fcons(i64 %call41, i64 %call43)
  %21 = load i64, i64* %key.addr, align 8
  %22 = load i64, i64* %accept_default.addr, align 8
  %call45 = call i64 @Flookup_key(i64 %call44, i64 %21, i64 %22)
  store i64 %call45, i64* %value, align 8
  %23 = load i64, i64* %value, align 8
  %call46 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp47 = icmp eq i64 %23, %call46
  br i1 %cmp47, label %if.then.54, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.40
  %24 = load i64, i64* %value, align 8
  %and49 = and i64 %24, 7
  %conv50 = trunc i64 %and49 to i32
  %and51 = and i32 %conv50, -5
  %cmp52 = icmp eq i32 %and51, 2
  br i1 %cmp52, label %if.then.54, label %if.end.56

if.then.54:                                       ; preds = %lor.lhs.false, %if.end.40
  %call55 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call55, i64* %retval
  br label %return

if.end.56:                                        ; preds = %lor.lhs.false
  %25 = load i64, i64* %no_remap.addr, align 8
  %call57 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp58 = icmp eq i64 %25, %call57
  br i1 %cmp58, label %land.lhs.true.60, label %if.end.73

land.lhs.true.60:                                 ; preds = %if.end.56
  %26 = load i64, i64* %value, align 8
  %and61 = and i64 %26, 7
  %conv62 = trunc i64 %and61 to i32
  %cmp63 = icmp eq i32 %conv62, 0
  br i1 %cmp63, label %if.then.65, label %if.end.73

if.then.65:                                       ; preds = %land.lhs.true.60
  %27 = load i64, i64* %value, align 8
  %28 = load i64, i64* %position.addr, align 8
  %call66 = call i64 @builtin_lisp_symbol(i32 0)
  %call67 = call i64 @Fcommand_remapping(i64 %27, i64 %28, i64 %call66)
  store i64 %call67, i64* %value1, align 8
  %29 = load i64, i64* %value1, align 8
  %call68 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp69 = icmp eq i64 %29, %call68
  %lnot = xor i1 %cmp69, true
  br i1 %lnot, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.then.65
  %30 = load i64, i64* %value1, align 8
  store i64 %30, i64* %value, align 8
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.71, %if.then.65
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %land.lhs.true.60, %if.end.56
  %31 = load i64, i64* %value, align 8
  store i64 %31, i64* %retval
  br label %return

return:                                           ; preds = %if.end.73, %if.then.54, %if.then.4
  %32 = load i64, i64* %retval
  ret i64 %32
}

; Function Attrs: nounwind uwtable
define i64 @Flookup_key(i64 %keymap, i64 %key, i64 %accept_default) #0 {
entry:
  %retval = alloca i64, align 8
  %keymap.addr = alloca i64, align 8
  %key.addr = alloca i64, align 8
  %accept_default.addr = alloca i64, align 8
  %idx = alloca i64, align 8
  %cmd = alloca i64, align 8
  %c = alloca i64, align 8
  %length = alloca i64, align 8
  %t_ok = alloca i8, align 1
  store i64 %keymap, i64* %keymap.addr, align 8
  store i64 %key, i64* %key.addr, align 8
  store i64 %accept_default, i64* %accept_default.addr, align 8
  %0 = load i64, i64* %accept_default.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  %lnot = xor i1 %cmp, true
  %frombool = zext i1 %lnot to i8
  store i8 %frombool, i8* %t_ok, align 1
  %1 = load i64, i64* %keymap.addr, align 8
  %call1 = call i64 @get_keymap(i64 %1, i1 zeroext true, i1 zeroext true)
  store i64 %call1, i64* %keymap.addr, align 8
  %2 = load i64, i64* %key.addr, align 8
  %call2 = call i64 @CHECK_VECTOR_OR_STRING(i64 %2)
  store i64 %call2, i64* %length, align 8
  %3 = load i64, i64* %length, align 8
  %cmp3 = icmp eq i64 %3, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i64, i64* %keymap.addr, align 8
  store i64 %4, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, i64* %idx, align 8
  br label %while.body

while.body:                                       ; preds = %if.end, %do.end
  %5 = load i64, i64* %key.addr, align 8
  %6 = load i64, i64* %idx, align 8
  %inc = add nsw i64 %6, 1
  store i64 %inc, i64* %idx, align 8
  %shl = shl i64 %6, 2
  %add = add i64 %shl, 2
  %call4 = call i64 @Faref(i64 %5, i64 %add)
  store i64 %call4, i64* %c, align 8
  %7 = load i64, i64* %c, align 8
  %and = and i64 %7, 7
  %conv = trunc i64 %and to i32
  %cmp5 = icmp eq i32 %conv, 3
  br i1 %cmp5, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %while.body
  %8 = load i64, i64* %c, align 8
  %call7 = call zeroext i1 @lucid_event_type_list_p(i64 %8)
  br i1 %call7, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %land.lhs.true
  %9 = load i64, i64* %c, align 8
  %call10 = call i64 @Fevent_convert_list(i64 %9)
  store i64 %call10, i64* %c, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %land.lhs.true, %while.body
  %10 = load i64, i64* %key.addr, align 8
  %call12 = call zeroext i1 @STRINGP(i64 %10)
  br i1 %call12, label %land.lhs.true.14, label %if.end.23

land.lhs.true.14:                                 ; preds = %if.end.11
  %11 = load i64, i64* %c, align 8
  %shr = ashr i64 %11, 2
  %and15 = and i64 %shr, 128
  %tobool = icmp ne i64 %and15, 0
  br i1 %tobool, label %land.lhs.true.16, label %if.end.23

land.lhs.true.16:                                 ; preds = %land.lhs.true.14
  %12 = load i64, i64* %key.addr, align 8
  %call17 = call zeroext i1 @STRING_MULTIBYTE(i64 %12)
  br i1 %call17, label %if.end.23, label %if.then.18

if.then.18:                                       ; preds = %land.lhs.true.16
  %13 = load i64, i64* %c, align 8
  %shr19 = ashr i64 %13, 2
  %or = or i64 %shr19, 134217728
  %and20 = and i64 %or, -129
  %shl21 = shl i64 %and20, 2
  %add22 = add i64 %shl21, 2
  store i64 %add22, i64* %c, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.18, %land.lhs.true.16, %land.lhs.true.14, %if.end.11
  %14 = load i64, i64* %c, align 8
  %and24 = and i64 %14, 7
  %conv25 = trunc i64 %and24 to i32
  %and26 = and i32 %conv25, -5
  %cmp27 = icmp eq i32 %and26, 2
  br i1 %cmp27, label %if.end.42, label %land.lhs.true.29

land.lhs.true.29:                                 ; preds = %if.end.23
  %15 = load i64, i64* %c, align 8
  %and30 = and i64 %15, 7
  %conv31 = trunc i64 %and30 to i32
  %cmp32 = icmp eq i32 %conv31, 0
  br i1 %cmp32, label %if.end.42, label %land.lhs.true.34

land.lhs.true.34:                                 ; preds = %land.lhs.true.29
  %16 = load i64, i64* %c, align 8
  %and35 = and i64 %16, 7
  %conv36 = trunc i64 %and35 to i32
  %cmp37 = icmp eq i32 %conv36, 3
  br i1 %cmp37, label %if.end.42, label %land.lhs.true.39

land.lhs.true.39:                                 ; preds = %land.lhs.true.34
  %17 = load i64, i64* %c, align 8
  %call40 = call zeroext i1 @STRINGP(i64 %17)
  br i1 %call40, label %if.end.42, label %if.then.41

if.then.41:                                       ; preds = %land.lhs.true.39
  %18 = load i64, i64* %c, align 8
  call void @message_with_string(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i32 0, i32 0), i64 %18, i1 zeroext true)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %land.lhs.true.39, %land.lhs.true.34, %land.lhs.true.29, %if.end.23
  %19 = load i64, i64* %keymap.addr, align 8
  %20 = load i64, i64* %c, align 8
  %21 = load i8, i8* %t_ok, align 1
  %tobool43 = trunc i8 %21 to i1
  %call44 = call i64 @access_keymap(i64 %19, i64 %20, i1 zeroext %tobool43, i1 zeroext false, i1 zeroext true)
  store i64 %call44, i64* %cmd, align 8
  %22 = load i64, i64* %idx, align 8
  %23 = load i64, i64* %length, align 8
  %cmp45 = icmp eq i64 %22, %23
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end.42
  %24 = load i64, i64* %cmd, align 8
  store i64 %24, i64* %retval
  br label %return

if.end.48:                                        ; preds = %if.end.42
  %25 = load i64, i64* %cmd, align 8
  %call49 = call i64 @get_keymap(i64 %25, i1 zeroext false, i1 zeroext true)
  store i64 %call49, i64* %keymap.addr, align 8
  %26 = load i64, i64* %keymap.addr, align 8
  %and50 = and i64 %26, 7
  %conv51 = trunc i64 %and50 to i32
  %cmp52 = icmp eq i32 %conv51, 3
  br i1 %cmp52, label %if.end.57, label %if.then.54

if.then.54:                                       ; preds = %if.end.48
  %27 = load i64, i64* %idx, align 8
  %shl55 = shl i64 %27, 2
  %add56 = add i64 %shl55, 2
  store i64 %add56, i64* %retval
  br label %return

if.end.57:                                        ; preds = %if.end.48
  br label %do.body

do.body:                                          ; preds = %if.end.57
  %28 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call58 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp59 = icmp eq i64 %28, %call58
  br i1 %cmp59, label %if.else, label %land.lhs.true.61

land.lhs.true.61:                                 ; preds = %do.body
  %29 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call62 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp63 = icmp eq i64 %29, %call62
  br i1 %cmp63, label %if.then.65, label %if.else

if.then.65:                                       ; preds = %land.lhs.true.61
  call void @process_quit_flag()
  br label %if.end.69

if.else:                                          ; preds = %land.lhs.true.61, %do.body
  %30 = load volatile i8, i8* @pending_signals, align 1
  %tobool66 = trunc i8 %30 to i1
  br i1 %tobool66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.else
  call void @process_pending_signals()
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.67, %if.else
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.then.65
  br label %do.end

do.end:                                           ; preds = %if.end.69
  br label %while.body

return:                                           ; preds = %if.then.54, %if.then.47, %if.then
  %31 = load i64, i64* %retval
  ret i64 %31
}

declare void @process_quit_flag() #1

declare void @process_pending_signals() #1

; Function Attrs: nounwind uwtable
define i64 @current_minor_maps(i64** %modeptr, i64** %mapptr) #0 {
entry:
  %modeptr.addr = alloca i64**, align 8
  %mapptr.addr = alloca i64**, align 8
  %i = alloca i64, align 8
  %list_number = alloca i32, align 4
  %alist = alloca i64, align 8
  %assoc = alloca i64, align 8
  %var = alloca i64, align 8
  %val = alloca i64, align 8
  %emulation_alists = alloca i64, align 8
  %lists = alloca [2 x i64], align 16
  %temp = alloca i64, align 8
  %newsize = alloca i64, align 8
  %allocsize = alloca i64, align 8
  %newmodes = alloca i64*, align 8
  %newmaps = alloca i64*, align 8
  store i64** %modeptr, i64*** %modeptr.addr, align 8
  store i64** %mapptr, i64*** %mapptr.addr, align 8
  store i64 0, i64* %i, align 8
  store i32 0, i32* %list_number, align 4
  %0 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 79), align 8
  store i64 %0, i64* %emulation_alists, align 8
  %1 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 196), align 8
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %lists, i32 0, i64 0
  store i64 %1, i64* %arrayidx, align 8
  %2 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 195), align 8
  %arrayidx1 = getelementptr inbounds [2 x i64], [2 x i64]* %lists, i32 0, i64 1
  store i64 %2, i64* %arrayidx1, align 8
  store i32 0, i32* %list_number, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.99, %entry
  %3 = load i32, i32* %list_number, align 4
  %cmp = icmp slt i32 %3, 2
  br i1 %cmp, label %for.body, label %for.end.101

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %emulation_alists, align 8
  %and = and i64 %4, 7
  %conv = trunc i64 %and to i32
  %cmp2 = icmp eq i32 %conv, 3
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %5 = load i64, i64* %emulation_alists, align 8
  %sub = sub nsw i64 %5, 3
  %6 = inttoptr i64 %sub to i8*
  %7 = bitcast i8* %6 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %7, i32 0, i32 0
  %8 = load i64, i64* %car, align 8
  store i64 %8, i64* %alist, align 8
  %9 = load i64, i64* %emulation_alists, align 8
  %sub4 = sub nsw i64 %9, 3
  %10 = inttoptr i64 %sub4 to i8*
  %11 = bitcast i8* %10 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %11, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %12 = load i64, i64* %cdr, align 8
  store i64 %12, i64* %emulation_alists, align 8
  %13 = load i64, i64* %alist, align 8
  %and5 = and i64 %13, 7
  %conv6 = trunc i64 %and5 to i32
  %cmp7 = icmp eq i32 %conv6, 0
  br i1 %cmp7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  %14 = load i64, i64* %alist, align 8
  %call = call i64 @find_symbol_value(i64 %14)
  store i64 %call, i64* %alist, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then
  store i32 -1, i32* %list_number, align 4
  br label %if.end.11

if.else:                                          ; preds = %for.body
  %15 = load i32, i32* %list_number, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx10 = getelementptr inbounds [2 x i64], [2 x i64]* %lists, i32 0, i64 %idxprom
  %16 = load i64, i64* %arrayidx10, align 8
  store i64 %16, i64* %alist, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.end
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc, %if.end.11
  %17 = load i64, i64* %alist, align 8
  %and13 = and i64 %17, 7
  %conv14 = trunc i64 %and13 to i32
  %cmp15 = icmp eq i32 %conv14, 3
  br i1 %cmp15, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %for.cond.12
  %18 = load i64, i64* %alist, align 8
  %sub18 = sub nsw i64 %18, 3
  %19 = inttoptr i64 %sub18 to i8*
  %20 = bitcast i8* %19 to %struct.Lisp_Cons*
  %car19 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %20, i32 0, i32 0
  %21 = load i64, i64* %car19, align 8
  store i64 %21, i64* %assoc, align 8
  %22 = load i64, i64* %assoc, align 8
  %and20 = and i64 %22, 7
  %conv21 = trunc i64 %and20 to i32
  %cmp22 = icmp eq i32 %conv21, 3
  br i1 %cmp22, label %land.lhs.true, label %if.end.95

land.lhs.true:                                    ; preds = %for.body.17
  %23 = load i64, i64* %assoc, align 8
  %sub24 = sub nsw i64 %23, 3
  %24 = inttoptr i64 %sub24 to i8*
  %25 = bitcast i8* %24 to %struct.Lisp_Cons*
  %car25 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %25, i32 0, i32 0
  %26 = load i64, i64* %car25, align 8
  store i64 %26, i64* %var, align 8
  %27 = load i64, i64* %var, align 8
  %and26 = and i64 %27, 7
  %conv27 = trunc i64 %and26 to i32
  %cmp28 = icmp eq i32 %conv27, 0
  br i1 %cmp28, label %land.lhs.true.30, label %if.end.95

land.lhs.true.30:                                 ; preds = %land.lhs.true
  %28 = load i64, i64* %var, align 8
  %call31 = call i64 @find_symbol_value(i64 %28)
  store i64 %call31, i64* %val, align 8
  %29 = load i64, i64* %val, align 8
  %call32 = call i64 @builtin_lisp_symbol(i32 957)
  %cmp33 = icmp eq i64 %29, %call32
  %lnot = xor i1 %cmp33, true
  br i1 %lnot, label %land.lhs.true.35, label %if.end.95

land.lhs.true.35:                                 ; preds = %land.lhs.true.30
  %30 = load i64, i64* %val, align 8
  %call36 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp37 = icmp eq i64 %30, %call36
  br i1 %cmp37, label %if.end.95, label %if.then.39

if.then.39:                                       ; preds = %land.lhs.true.35
  %31 = load i32, i32* %list_number, align 4
  %cmp40 = icmp eq i32 %31, 1
  br i1 %cmp40, label %if.then.42, label %if.end.50

if.then.42:                                       ; preds = %if.then.39
  %32 = load i64, i64* %var, align 8
  %arrayidx43 = getelementptr inbounds [2 x i64], [2 x i64]* %lists, i32 0, i64 0
  %33 = load i64, i64* %arrayidx43, align 8
  %call44 = call i64 @assq_no_quit(i64 %32, i64 %33)
  store i64 %call44, i64* %val, align 8
  %34 = load i64, i64* %val, align 8
  %call45 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp46 = icmp eq i64 %34, %call45
  br i1 %cmp46, label %if.end.49, label %if.then.48

if.then.48:                                       ; preds = %if.then.42
  br label %for.inc

if.end.49:                                        ; preds = %if.then.42
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.then.39
  %35 = load i64, i64* %i, align 8
  %36 = load i64, i64* @cmm_size, align 8
  %cmp51 = icmp sge i64 %35, %36
  br i1 %cmp51, label %if.then.53, label %if.end.82

if.then.53:                                       ; preds = %if.end.50
  %37 = load i64, i64* @cmm_size, align 8
  %cmp54 = icmp ult i64 576460752303423484, %37
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.then.53
  br label %for.end

if.end.57:                                        ; preds = %if.then.53
  %38 = load i64, i64* @cmm_size, align 8
  %cmp58 = icmp eq i64 %38, 0
  br i1 %cmp58, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.57
  br label %cond.end

cond.false:                                       ; preds = %if.end.57
  %39 = load i64, i64* @cmm_size, align 8
  %mul = mul nsw i64 %39, 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 30, %cond.true ], [ %mul, %cond.false ]
  store i64 %cond, i64* %newsize, align 8
  %40 = load i64, i64* %newsize, align 8
  %mul60 = mul i64 %40, 8
  store i64 %mul60, i64* %allocsize, align 8
  call void @block_input()
  %41 = load i64, i64* %allocsize, align 8
  %call61 = call noalias i8* @malloc(i64 %41) #4
  %42 = bitcast i8* %call61 to i64*
  store i64* %42, i64** %newmodes, align 8
  %43 = load i64*, i64** %newmodes, align 8
  %tobool = icmp ne i64* %43, null
  br i1 %tobool, label %if.then.62, label %if.end.67

if.then.62:                                       ; preds = %cond.end
  %44 = load i64*, i64** @cmm_modes, align 8
  %tobool63 = icmp ne i64* %44, null
  br i1 %tobool63, label %if.then.64, label %if.end.66

if.then.64:                                       ; preds = %if.then.62
  %45 = load i64*, i64** %newmodes, align 8
  %46 = bitcast i64* %45 to i8*
  %47 = load i64*, i64** @cmm_modes, align 8
  %48 = bitcast i64* %47 to i8*
  %49 = load i64, i64* @cmm_size, align 8
  %mul65 = mul i64 %49, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %48, i64 %mul65, i32 8, i1 false)
  %50 = load i64*, i64** @cmm_modes, align 8
  %51 = bitcast i64* %50 to i8*
  call void @free(i8* %51) #4
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.64, %if.then.62
  %52 = load i64*, i64** %newmodes, align 8
  store i64* %52, i64** @cmm_modes, align 8
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %cond.end
  %53 = load i64, i64* %allocsize, align 8
  %call68 = call noalias i8* @malloc(i64 %53) #4
  %54 = bitcast i8* %call68 to i64*
  store i64* %54, i64** %newmaps, align 8
  %55 = load i64*, i64** %newmaps, align 8
  %tobool69 = icmp ne i64* %55, null
  br i1 %tobool69, label %if.then.70, label %if.end.75

if.then.70:                                       ; preds = %if.end.67
  %56 = load i64*, i64** @cmm_maps, align 8
  %tobool71 = icmp ne i64* %56, null
  br i1 %tobool71, label %if.then.72, label %if.end.74

if.then.72:                                       ; preds = %if.then.70
  %57 = load i64*, i64** %newmaps, align 8
  %58 = bitcast i64* %57 to i8*
  %59 = load i64*, i64** @cmm_maps, align 8
  %60 = bitcast i64* %59 to i8*
  %61 = load i64, i64* @cmm_size, align 8
  %mul73 = mul i64 %61, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* %60, i64 %mul73, i32 8, i1 false)
  %62 = load i64*, i64** @cmm_maps, align 8
  %63 = bitcast i64* %62 to i8*
  call void @free(i8* %63) #4
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.72, %if.then.70
  %64 = load i64*, i64** %newmaps, align 8
  store i64* %64, i64** @cmm_maps, align 8
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.end.67
  call void @unblock_input()
  %65 = load i64*, i64** %newmodes, align 8
  %cmp76 = icmp eq i64* %65, null
  br i1 %cmp76, label %if.then.80, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.75
  %66 = load i64*, i64** %newmaps, align 8
  %cmp78 = icmp eq i64* %66, null
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %lor.lhs.false, %if.end.75
  br label %for.end

if.end.81:                                        ; preds = %lor.lhs.false
  %67 = load i64, i64* %newsize, align 8
  store i64 %67, i64* @cmm_size, align 8
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.end.50
  %68 = load i64, i64* %assoc, align 8
  %sub83 = sub nsw i64 %68, 3
  %69 = inttoptr i64 %sub83 to i8*
  %70 = bitcast i8* %69 to %struct.Lisp_Cons*
  %u84 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %70, i32 0, i32 1
  %cdr85 = bitcast %union.anon* %u84 to i64*
  %71 = load i64, i64* %cdr85, align 8
  %call86 = call i64 @builtin_lisp_symbol(i32 901)
  %call87 = call i64 @Findirect_function(i64 %71, i64 %call86)
  store i64 %call87, i64* %temp, align 8
  %72 = load i64, i64* %temp, align 8
  %call88 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp89 = icmp eq i64 %72, %call88
  br i1 %cmp89, label %if.end.94, label %if.then.91

if.then.91:                                       ; preds = %if.end.82
  %73 = load i64, i64* %var, align 8
  %74 = load i64, i64* %i, align 8
  %75 = load i64*, i64** @cmm_modes, align 8
  %arrayidx92 = getelementptr inbounds i64, i64* %75, i64 %74
  store i64 %73, i64* %arrayidx92, align 8
  %76 = load i64, i64* %temp, align 8
  %77 = load i64, i64* %i, align 8
  %78 = load i64*, i64** @cmm_maps, align 8
  %arrayidx93 = getelementptr inbounds i64, i64* %78, i64 %77
  store i64 %76, i64* %arrayidx93, align 8
  %79 = load i64, i64* %i, align 8
  %inc = add nsw i64 %79, 1
  store i64 %inc, i64* %i, align 8
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.91, %if.end.82
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %land.lhs.true.35, %land.lhs.true.30, %land.lhs.true, %for.body.17
  br label %for.inc

for.inc:                                          ; preds = %if.end.95, %if.then.48
  %80 = load i64, i64* %alist, align 8
  %sub96 = sub nsw i64 %80, 3
  %81 = inttoptr i64 %sub96 to i8*
  %82 = bitcast i8* %81 to %struct.Lisp_Cons*
  %u97 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %82, i32 0, i32 1
  %cdr98 = bitcast %union.anon* %u97 to i64*
  %83 = load i64, i64* %cdr98, align 8
  store i64 %83, i64* %alist, align 8
  br label %for.cond.12

for.end:                                          ; preds = %if.then.80, %if.then.56, %for.cond.12
  br label %for.inc.99

for.inc.99:                                       ; preds = %for.end
  %84 = load i32, i32* %list_number, align 4
  %inc100 = add nsw i32 %84, 1
  store i32 %inc100, i32* %list_number, align 4
  br label %for.cond

for.end.101:                                      ; preds = %for.cond
  %85 = load i64**, i64*** %modeptr.addr, align 8
  %tobool102 = icmp ne i64** %85, null
  br i1 %tobool102, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %for.end.101
  %86 = load i64*, i64** @cmm_modes, align 8
  %87 = load i64**, i64*** %modeptr.addr, align 8
  store i64* %86, i64** %87, align 8
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.103, %for.end.101
  %88 = load i64**, i64*** %mapptr.addr, align 8
  %tobool105 = icmp ne i64** %88, null
  br i1 %tobool105, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %if.end.104
  %89 = load i64*, i64** @cmm_maps, align 8
  %90 = load i64**, i64*** %mapptr.addr, align 8
  store i64* %89, i64** %90, align 8
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.106, %if.end.104
  %91 = load i64, i64* %i, align 8
  ret i64 %91
}

declare i64 @find_symbol_value(i64) #1

declare i64 @assq_no_quit(i64, i64) #1

declare void @block_input() #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind
declare void @free(i8*) #3

declare void @unblock_input() #1

declare i64 @Findirect_function(i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fcurrent_active_maps(i64 %olp, i64 %position) #0 {
entry:
  %olp.addr = alloca i64, align 8
  %position.addr = alloca i64, align 8
  %count = alloca i64, align 8
  %keymaps = alloca i64, align 8
  %window = alloca i64, align 8
  %maps = alloca i64*, align 8
  %nmaps = alloca i32, align 4
  %i = alloca i32, align 4
  %pt = alloca i64, align 8
  %local_map = alloca i64, align 8
  %keymap = alloca i64, align 8
  %otlp = alloca i64, align 8
  %string = alloca i64, align 8
  %pos = alloca i64, align 8
  %pos86 = alloca i64, align 8
  %map = alloca i64, align 8
  store i64 %olp, i64* %olp.addr, align 8
  store i64 %position, i64* %position.addr, align 8
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %count, align 8
  %0 = load i64, i64* @current_global_map, align 8
  %call1 = call i64 @list1(i64 %0)
  store i64 %call1, i64* %keymaps, align 8
  %1 = load i64, i64* %position.addr, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %if.then, label %if.end.19

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %position.addr, align 8
  %call3 = call i64 @CAR_SAFE(i64 %2)
  store i64 %call3, i64* %window, align 8
  %3 = load i64, i64* %window, align 8
  %call4 = call zeroext i1 @WINDOWP(i64 %3)
  br i1 %call4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %4 = load i64, i64* %window, align 8
  %call6 = call %struct.window* @XWINDOW(i64 %4)
  %contents = getelementptr inbounds %struct.window, %struct.window* %call6, i32 0, i32 10
  %5 = load i64, i64* %contents, align 8
  %call7 = call zeroext i1 @BUFFERP(i64 %5)
  br i1 %call7, label %land.lhs.true.9, label %if.end

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %6 = load i64, i64* %window, align 8
  %call10 = call %struct.window* @XWINDOW(i64 %6)
  %contents11 = getelementptr inbounds %struct.window, %struct.window* %call10, i32 0, i32 10
  %7 = load i64, i64* %contents11, align 8
  %call12 = call %struct.buffer* @XBUFFER(i64 %7)
  %8 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp13 = icmp ne %struct.buffer* %call12, %8
  br i1 %cmp13, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %land.lhs.true.9
  call void @record_unwind_current_buffer()
  %9 = load i64, i64* %window, align 8
  %call16 = call %struct.window* @XWINDOW(i64 %9)
  %contents17 = getelementptr inbounds %struct.window, %struct.window* %call16, i32 0, i32 10
  %10 = load i64, i64* %contents17, align 8
  %call18 = call %struct.buffer* @XBUFFER(i64 %10)
  call void @set_buffer_internal(%struct.buffer* %call18)
  br label %if.end

if.end:                                           ; preds = %if.then.15, %land.lhs.true.9, %land.lhs.true, %if.then
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %entry
  %11 = load i64, i64* %olp.addr, align 8
  %call20 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp21 = icmp eq i64 %11, %call20
  br i1 %cmp21, label %if.end.33, label %land.lhs.true.23

land.lhs.true.23:                                 ; preds = %if.end.19
  %12 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %Voverriding_terminal_local_map_ = getelementptr inbounds %struct.kboard, %struct.kboard* %12, i32 0, i32 1
  %13 = load i64, i64* %Voverriding_terminal_local_map_, align 8
  %call24 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp25 = icmp eq i64 %13, %call24
  br i1 %cmp25, label %land.lhs.true.27, label %if.end.33

land.lhs.true.27:                                 ; preds = %land.lhs.true.23
  %14 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 216), align 8
  %call28 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp29 = icmp eq i64 %14, %call28
  br i1 %cmp29, label %if.end.33, label %if.then.31

if.then.31:                                       ; preds = %land.lhs.true.27
  %15 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 216), align 8
  %16 = load i64, i64* %keymaps, align 8
  %call32 = call i64 @Fcons(i64 %15, i64 %16)
  store i64 %call32, i64* %keymaps, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %land.lhs.true.27, %land.lhs.true.23, %if.end.19
  %17 = load i64, i64* %keymaps, align 8
  %sub = sub nsw i64 %17, 3
  %18 = inttoptr i64 %sub to i8*
  %19 = bitcast i8* %18 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %19, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %20 = load i64, i64* %cdr, align 8
  %call34 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp35 = icmp eq i64 %20, %call34
  br i1 %cmp35, label %if.then.37, label %if.end.159

if.then.37:                                       ; preds = %if.end.33
  %21 = load i64, i64* %position.addr, align 8
  %call38 = call i64 @click_position(i64 %21)
  store i64 %call38, i64* %pt, align 8
  %22 = load i64, i64* %pt, align 8
  %23 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %call39 = call i64 @builtin_lisp_symbol(i32 633)
  %call40 = call i64 @get_local_map(i64 %22, %struct.buffer* %23, i64 %call39)
  store i64 %call40, i64* %local_map, align 8
  %24 = load i64, i64* %pt, align 8
  %25 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %call41 = call i64 @builtin_lisp_symbol(i32 589)
  %call42 = call i64 @get_local_map(i64 %24, %struct.buffer* %25, i64 %call41)
  store i64 %call42, i64* %keymap, align 8
  %26 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %Voverriding_terminal_local_map_43 = getelementptr inbounds %struct.kboard, %struct.kboard* %26, i32 0, i32 1
  %27 = load i64, i64* %Voverriding_terminal_local_map_43, align 8
  store i64 %27, i64* %otlp, align 8
  %28 = load i64, i64* %position.addr, align 8
  %and44 = and i64 %28, 7
  %conv45 = trunc i64 %and44 to i32
  %cmp46 = icmp eq i32 %conv45, 3
  br i1 %cmp46, label %if.then.48, label %if.end.123

if.then.48:                                       ; preds = %if.then.37
  %29 = load i64, i64* %position.addr, align 8
  %call49 = call i64 @Fnth(i64 18, i64 %29)
  store i64 %call49, i64* %string, align 8
  %30 = load i64, i64* %position.addr, align 8
  %call50 = call i64 @Fnth(i64 18, i64 %30)
  %call51 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp52 = icmp eq i64 %call50, %call51
  br i1 %cmp52, label %if.then.54, label %if.end.76

if.then.54:                                       ; preds = %if.then.48
  %31 = load i64, i64* %position.addr, align 8
  %call55 = call i64 @Fnth(i64 22, i64 %31)
  store i64 %call55, i64* %pos, align 8
  %32 = load i64, i64* %pos, align 8
  %and56 = and i64 %32, 7
  %conv57 = trunc i64 %and56 to i32
  %and58 = and i32 %conv57, -5
  %cmp59 = icmp eq i32 %and58, 2
  br i1 %cmp59, label %land.lhs.true.61, label %if.end.75

land.lhs.true.61:                                 ; preds = %if.then.54
  %33 = load i64, i64* %pos, align 8
  %shr = ashr i64 %33, 2
  %cmp62 = icmp sge i64 %shr, 1
  br i1 %cmp62, label %land.lhs.true.64, label %if.end.75

land.lhs.true.64:                                 ; preds = %land.lhs.true.61
  %34 = load i64, i64* %pos, align 8
  %shr65 = ashr i64 %34, 2
  %35 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %35, i32 0, i32 73
  %36 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %z = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %36, i32 0, i32 2
  %37 = load i64, i64* %z, align 8
  %cmp66 = icmp sle i64 %shr65, %37
  br i1 %cmp66, label %if.then.68, label %if.end.75

if.then.68:                                       ; preds = %land.lhs.true.64
  %38 = load i64, i64* %pos, align 8
  %shr69 = ashr i64 %38, 2
  %39 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %call70 = call i64 @builtin_lisp_symbol(i32 633)
  %call71 = call i64 @get_local_map(i64 %shr69, %struct.buffer* %39, i64 %call70)
  store i64 %call71, i64* %local_map, align 8
  %40 = load i64, i64* %pos, align 8
  %shr72 = ashr i64 %40, 2
  %41 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %call73 = call i64 @builtin_lisp_symbol(i32 589)
  %call74 = call i64 @get_local_map(i64 %shr72, %struct.buffer* %41, i64 %call73)
  store i64 %call74, i64* %keymap, align 8
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.68, %land.lhs.true.64, %land.lhs.true.61, %if.then.54
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.then.48
  %42 = load i64, i64* %string, align 8
  %and77 = and i64 %42, 7
  %conv78 = trunc i64 %and77 to i32
  %cmp79 = icmp eq i32 %conv78, 3
  br i1 %cmp79, label %land.lhs.true.81, label %if.end.122

land.lhs.true.81:                                 ; preds = %if.end.76
  %43 = load i64, i64* %string, align 8
  %sub82 = sub nsw i64 %43, 3
  %44 = inttoptr i64 %sub82 to i8*
  %45 = bitcast i8* %44 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %45, i32 0, i32 0
  %46 = load i64, i64* %car, align 8
  %call83 = call zeroext i1 @STRINGP(i64 %46)
  br i1 %call83, label %if.then.85, label %if.end.122

if.then.85:                                       ; preds = %land.lhs.true.81
  %47 = load i64, i64* %string, align 8
  %sub87 = sub nsw i64 %47, 3
  %48 = inttoptr i64 %sub87 to i8*
  %49 = bitcast i8* %48 to %struct.Lisp_Cons*
  %u88 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %49, i32 0, i32 1
  %cdr89 = bitcast %union.anon* %u88 to i64*
  %50 = load i64, i64* %cdr89, align 8
  store i64 %50, i64* %pos86, align 8
  %51 = load i64, i64* %string, align 8
  %sub90 = sub nsw i64 %51, 3
  %52 = inttoptr i64 %sub90 to i8*
  %53 = bitcast i8* %52 to %struct.Lisp_Cons*
  %car91 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %53, i32 0, i32 0
  %54 = load i64, i64* %car91, align 8
  store i64 %54, i64* %string, align 8
  %55 = load i64, i64* %pos86, align 8
  %and92 = and i64 %55, 7
  %conv93 = trunc i64 %and92 to i32
  %and94 = and i32 %conv93, -5
  %cmp95 = icmp eq i32 %and94, 2
  br i1 %cmp95, label %land.lhs.true.97, label %if.end.121

land.lhs.true.97:                                 ; preds = %if.then.85
  %56 = load i64, i64* %pos86, align 8
  %shr98 = ashr i64 %56, 2
  %cmp99 = icmp sge i64 %shr98, 0
  br i1 %cmp99, label %land.lhs.true.101, label %if.end.121

land.lhs.true.101:                                ; preds = %land.lhs.true.97
  %57 = load i64, i64* %pos86, align 8
  %shr102 = ashr i64 %57, 2
  %58 = load i64, i64* %string, align 8
  %call103 = call i64 @SCHARS(i64 %58)
  %cmp104 = icmp slt i64 %shr102, %call103
  br i1 %cmp104, label %if.then.106, label %if.end.121

if.then.106:                                      ; preds = %land.lhs.true.101
  %59 = load i64, i64* %pos86, align 8
  %call107 = call i64 @builtin_lisp_symbol(i32 633)
  %60 = load i64, i64* %string, align 8
  %call108 = call i64 @Fget_text_property(i64 %59, i64 %call107, i64 %60)
  store i64 %call108, i64* %map, align 8
  %61 = load i64, i64* %map, align 8
  %call109 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp110 = icmp eq i64 %61, %call109
  br i1 %cmp110, label %if.end.113, label %if.then.112

if.then.112:                                      ; preds = %if.then.106
  %62 = load i64, i64* %map, align 8
  store i64 %62, i64* %local_map, align 8
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.112, %if.then.106
  %63 = load i64, i64* %pos86, align 8
  %call114 = call i64 @builtin_lisp_symbol(i32 589)
  %64 = load i64, i64* %string, align 8
  %call115 = call i64 @Fget_text_property(i64 %63, i64 %call114, i64 %64)
  store i64 %call115, i64* %map, align 8
  %65 = load i64, i64* %map, align 8
  %call116 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp117 = icmp eq i64 %65, %call116
  br i1 %cmp117, label %if.end.120, label %if.then.119

if.then.119:                                      ; preds = %if.end.113
  %66 = load i64, i64* %map, align 8
  store i64 %66, i64* %keymap, align 8
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.119, %if.end.113
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %land.lhs.true.101, %land.lhs.true.97, %if.then.85
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %land.lhs.true.81, %if.end.76
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122, %if.then.37
  %67 = load i64, i64* %local_map, align 8
  %call124 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp125 = icmp eq i64 %67, %call124
  br i1 %cmp125, label %if.end.129, label %if.then.127

if.then.127:                                      ; preds = %if.end.123
  %68 = load i64, i64* %local_map, align 8
  %69 = load i64, i64* %keymaps, align 8
  %call128 = call i64 @Fcons(i64 %68, i64 %69)
  store i64 %call128, i64* %keymaps, align 8
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.127, %if.end.123
  %call130 = call i64 @current_minor_maps(i64** null, i64** %maps)
  %conv131 = trunc i64 %call130 to i32
  store i32 %conv131, i32* %nmaps, align 4
  %70 = load i32, i32* %nmaps, align 4
  %dec = add nsw i32 %70, -1
  store i32 %dec, i32* %nmaps, align 4
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.129
  %71 = load i32, i32* %i, align 4
  %cmp132 = icmp sge i32 %71, 0
  br i1 %cmp132, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %72 = load i32, i32* %i, align 4
  %idxprom = sext i32 %72 to i64
  %73 = load i64*, i64** %maps, align 8
  %arrayidx = getelementptr inbounds i64, i64* %73, i64 %idxprom
  %74 = load i64, i64* %arrayidx, align 8
  %call134 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp135 = icmp eq i64 %74, %call134
  br i1 %cmp135, label %if.end.141, label %if.then.137

if.then.137:                                      ; preds = %for.body
  %75 = load i32, i32* %i, align 4
  %idxprom138 = sext i32 %75 to i64
  %76 = load i64*, i64** %maps, align 8
  %arrayidx139 = getelementptr inbounds i64, i64* %76, i64 %idxprom138
  %77 = load i64, i64* %arrayidx139, align 8
  %78 = load i64, i64* %keymaps, align 8
  %call140 = call i64 @Fcons(i64 %77, i64 %78)
  store i64 %call140, i64* %keymaps, align 8
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.137, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.141
  %79 = load i32, i32* %i, align 4
  %dec142 = add nsw i32 %79, -1
  store i32 %dec142, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %80 = load i64, i64* %keymap, align 8
  %call143 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp144 = icmp eq i64 %80, %call143
  br i1 %cmp144, label %if.end.148, label %if.then.146

if.then.146:                                      ; preds = %for.end
  %81 = load i64, i64* %keymap, align 8
  %82 = load i64, i64* %keymaps, align 8
  %call147 = call i64 @Fcons(i64 %81, i64 %82)
  store i64 %call147, i64* %keymaps, align 8
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.146, %for.end
  %83 = load i64, i64* %olp.addr, align 8
  %call149 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp150 = icmp eq i64 %83, %call149
  br i1 %cmp150, label %if.end.158, label %land.lhs.true.152

land.lhs.true.152:                                ; preds = %if.end.148
  %84 = load i64, i64* %otlp, align 8
  %call153 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp154 = icmp eq i64 %84, %call153
  br i1 %cmp154, label %if.end.158, label %if.then.156

if.then.156:                                      ; preds = %land.lhs.true.152
  %85 = load i64, i64* %otlp, align 8
  %86 = load i64, i64* %keymaps, align 8
  %call157 = call i64 @Fcons(i64 %85, i64 %86)
  store i64 %call157, i64* %keymaps, align 8
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.156, %land.lhs.true.152, %if.end.148
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.158, %if.end.33
  %87 = load i64, i64* %count, align 8
  %call160 = call i64 @builtin_lisp_symbol(i32 0)
  %call161 = call i64 @unbind_to(i64 %87, i64 %call160)
  %88 = load i64, i64* %keymaps, align 8
  ret i64 %88
}

declare i64 @SPECPDL_INDEX() #1

declare i64 @CAR_SAFE(i64) #1

declare zeroext i1 @WINDOWP(i64) #1

declare zeroext i1 @BUFFERP(i64) #1

declare %struct.window* @XWINDOW(i64) #1

declare %struct.buffer* @XBUFFER(i64) #1

declare void @record_unwind_current_buffer() #1

declare void @set_buffer_internal(%struct.buffer*) #1

; Function Attrs: nounwind uwtable
define internal i64 @click_position(i64 %position) #0 {
entry:
  %position.addr = alloca i64, align 8
  %pos = alloca i64, align 8
  store i64 %position, i64* %position.addr, align 8
  %0 = load i64, i64* %position.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %and1 = and i32 %conv, -5
  %cmp = icmp eq i32 %and1, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i64, i64* %position.addr, align 8
  %shr = ashr i64 %1, 2
  br label %cond.end.12

cond.false:                                       ; preds = %entry
  %2 = load i64, i64* %position.addr, align 8
  %and3 = and i64 %2, 7
  %conv4 = trunc i64 %and3 to i32
  %cmp5 = icmp eq i32 %conv4, 1
  br i1 %cmp5, label %land.lhs.true, label %cond.false.11

land.lhs.true:                                    ; preds = %cond.false
  %3 = load i64, i64* %position.addr, align 8
  %call = call i32 @XMISCTYPE(i64 %3)
  %cmp7 = icmp eq i32 %call, 24236
  br i1 %cmp7, label %cond.true.9, label %cond.false.11

cond.true.9:                                      ; preds = %land.lhs.true
  %4 = load i64, i64* %position.addr, align 8
  %call10 = call i64 @marker_position(i64 %4)
  br label %cond.end

cond.false.11:                                    ; preds = %land.lhs.true, %cond.false
  %5 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %5, i32 0, i32 75
  %6 = load i64, i64* %pt, align 8
  %add = add nsw i64 %6, 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false.11, %cond.true.9
  %cond = phi i64 [ %call10, %cond.true.9 ], [ %add, %cond.false.11 ]
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.end, %cond.true
  %cond13 = phi i64 [ %shr, %cond.true ], [ %cond, %cond.end ]
  store i64 %cond13, i64* %pos, align 8
  %7 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 77
  %8 = load i64, i64* %begv, align 8
  %9 = load i64, i64* %pos, align 8
  %cmp14 = icmp sle i64 %8, %9
  br i1 %cmp14, label %land.lhs.true.16, label %if.then

land.lhs.true.16:                                 ; preds = %cond.end.12
  %10 = load i64, i64* %pos, align 8
  %11 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %11, i32 0, i32 79
  %12 = load i64, i64* %zv, align 8
  %cmp17 = icmp sle i64 %10, %12
  br i1 %cmp17, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.16, %cond.end.12
  %call19 = call i64 @Fcurrent_buffer()
  %13 = load i64, i64* %position.addr, align 8
  call void @args_out_of_range(i64 %call19, i64 %13) #6
  unreachable

if.end:                                           ; preds = %land.lhs.true.16
  %14 = load i64, i64* %pos, align 8
  ret i64 %14
}

declare i64 @get_local_map(i64, %struct.buffer*, i64) #1

declare i64 @SCHARS(i64) #1

declare i64 @Fget_text_property(i64, i64, i64) #1

declare i64 @unbind_to(i64, i64) #1

declare i64 @Fget(i64, i64) #1

declare i64 @CDR_SAFE(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Flocal_key_binding(i64 %keys, i64 %accept_default) #0 {
entry:
  %retval = alloca i64, align 8
  %keys.addr = alloca i64, align 8
  %accept_default.addr = alloca i64, align 8
  %map = alloca i64, align 8
  store i64 %keys, i64* %keys.addr, align 8
  store i64 %accept_default, i64* %accept_default.addr, align 8
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %keymap_ = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 14
  %1 = load i64, i64* %keymap_, align 8
  store i64 %1, i64* %map, align 8
  %2 = load i64, i64* %map, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %2, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %map, align 8
  %4 = load i64, i64* %keys.addr, align 8
  %5 = load i64, i64* %accept_default.addr, align 8
  %call2 = call i64 @Flookup_key(i64 %3, i64 %4, i64 %5)
  store i64 %call2, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i64, i64* %retval
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define i64 @Fglobal_key_binding(i64 %keys, i64 %accept_default) #0 {
entry:
  %keys.addr = alloca i64, align 8
  %accept_default.addr = alloca i64, align 8
  store i64 %keys, i64* %keys.addr, align 8
  store i64 %accept_default, i64* %accept_default.addr, align 8
  %0 = load i64, i64* @current_global_map, align 8
  %1 = load i64, i64* %keys.addr, align 8
  %2 = load i64, i64* %accept_default.addr, align 8
  %call = call i64 @Flookup_key(i64 %0, i64 %1, i64 %2)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @Fminor_mode_key_binding(i64 %key, i64 %accept_default) #0 {
entry:
  %retval = alloca i64, align 8
  %key.addr = alloca i64, align 8
  %accept_default.addr = alloca i64, align 8
  %modes = alloca i64*, align 8
  %maps = alloca i64*, align 8
  %nmaps = alloca i32, align 4
  %binding = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i64 %key, i64* %key.addr, align 8
  store i64 %accept_default, i64* %accept_default.addr, align 8
  %call = call i64 @current_minor_maps(i64** %modes, i64** %maps)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %nmaps, align 4
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* %binding, align 8
  store i32 0, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %nmaps, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i64*, i64** %maps, align 8
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 %idxprom
  %4 = load i64, i64* %arrayidx, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp4 = icmp eq i64 %4, %call3
  br i1 %cmp4, label %if.end.35, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %5 to i64
  %6 = load i64*, i64** %maps, align 8
  %arrayidx7 = getelementptr inbounds i64, i64* %6, i64 %idxprom6
  %7 = load i64, i64* %arrayidx7, align 8
  %8 = load i64, i64* %key.addr, align 8
  %9 = load i64, i64* %accept_default.addr, align 8
  %call8 = call i64 @Flookup_key(i64 %7, i64 %8, i64 %9)
  store i64 %call8, i64* %binding, align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp10 = icmp eq i64 %call8, %call9
  br i1 %cmp10, label %if.end.35, label %land.lhs.true.12

land.lhs.true.12:                                 ; preds = %land.lhs.true
  %10 = load i64, i64* %binding, align 8
  %and = and i64 %10, 7
  %conv13 = trunc i64 %and to i32
  %and14 = and i32 %conv13, -5
  %cmp15 = icmp eq i32 %and14, 2
  br i1 %cmp15, label %if.end.35, label %if.then

if.then:                                          ; preds = %land.lhs.true.12
  %11 = load i64, i64* %binding, align 8
  %call17 = call i64 @get_keymap(i64 %11, i1 zeroext false, i1 zeroext false)
  %call18 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp19 = icmp eq i64 %call17, %call18
  br i1 %cmp19, label %if.else, label %if.then.21

if.then.21:                                       ; preds = %if.then
  %12 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %12 to i64
  %13 = load i64*, i64** %modes, align 8
  %arrayidx23 = getelementptr inbounds i64, i64* %13, i64 %idxprom22
  %14 = load i64, i64* %arrayidx23, align 8
  %15 = load i64, i64* %binding, align 8
  %call24 = call i64 @Fcons(i64 %14, i64 %15)
  %16 = load i32, i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  %idxprom25 = sext i32 %16 to i64
  %17 = load i64*, i64** %maps, align 8
  %arrayidx26 = getelementptr inbounds i64, i64* %17, i64 %idxprom25
  store i64 %call24, i64* %arrayidx26, align 8
  br label %if.end.34

if.else:                                          ; preds = %if.then
  %18 = load i32, i32* %j, align 4
  %cmp27 = icmp eq i32 %18, 0
  br i1 %cmp27, label %if.then.29, label %if.end

if.then.29:                                       ; preds = %if.else
  %19 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %19 to i64
  %20 = load i64*, i64** %modes, align 8
  %arrayidx31 = getelementptr inbounds i64, i64* %20, i64 %idxprom30
  %21 = load i64, i64* %arrayidx31, align 8
  %22 = load i64, i64* %binding, align 8
  %call32 = call i64 @Fcons(i64 %21, i64 %22)
  %call33 = call i64 @list1(i64 %call32)
  store i64 %call33, i64* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.34

if.end.34:                                        ; preds = %if.end, %if.then.21
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %land.lhs.true.12, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.35
  %23 = load i32, i32* %i, align 4
  %inc36 = add nsw i32 %23, 1
  store i32 %inc36, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load i32, i32* %j, align 4
  %conv37 = sext i32 %24 to i64
  %25 = load i64*, i64** %maps, align 8
  %call38 = call i64 @Flist(i64 %conv37, i64* %25)
  store i64 %call38, i64* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.29
  %26 = load i64, i64* %retval
  ret i64 %26
}

declare i64 @Flist(i64, i64*) #1

; Function Attrs: nounwind uwtable
define i64 @Fdefine_prefix_command(i64 %command, i64 %mapvar, i64 %name) #0 {
entry:
  %command.addr = alloca i64, align 8
  %mapvar.addr = alloca i64, align 8
  %name.addr = alloca i64, align 8
  %map = alloca i64, align 8
  store i64 %command, i64* %command.addr, align 8
  store i64 %mapvar, i64* %mapvar.addr, align 8
  store i64 %name, i64* %name.addr, align 8
  %0 = load i64, i64* %name.addr, align 8
  %call = call i64 @Fmake_sparse_keymap(i64 %0)
  store i64 %call, i64* %map, align 8
  %1 = load i64, i64* %command.addr, align 8
  %2 = load i64, i64* %map, align 8
  %call1 = call i64 @Ffset(i64 %1, i64 %2)
  %3 = load i64, i64* %mapvar.addr, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %3, %call2
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %4 = load i64, i64* %mapvar.addr, align 8
  %5 = load i64, i64* %map, align 8
  %call3 = call i64 @Fset(i64 %4, i64 %5)
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i64, i64* %command.addr, align 8
  %7 = load i64, i64* %map, align 8
  %call4 = call i64 @Fset(i64 %6, i64 %7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load i64, i64* %command.addr, align 8
  ret i64 %8
}

declare i64 @Ffset(i64, i64) #1

declare i64 @Fset(i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fuse_global_map(i64 %keymap) #0 {
entry:
  %keymap.addr = alloca i64, align 8
  store i64 %keymap, i64* %keymap.addr, align 8
  %0 = load i64, i64* %keymap.addr, align 8
  %call = call i64 @get_keymap(i64 %0, i1 zeroext true, i1 zeroext true)
  store i64 %call, i64* %keymap.addr, align 8
  %1 = load i64, i64* %keymap.addr, align 8
  store i64 %1, i64* @current_global_map, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call1
}

; Function Attrs: nounwind uwtable
define i64 @Fuse_local_map(i64 %keymap) #0 {
entry:
  %keymap.addr = alloca i64, align 8
  store i64 %keymap, i64* %keymap.addr, align 8
  %0 = load i64, i64* %keymap.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %keymap.addr, align 8
  %call1 = call i64 @get_keymap(i64 %1, i1 zeroext true, i1 zeroext true)
  store i64 %call1, i64* %keymap.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %3 = load i64, i64* %keymap.addr, align 8
  call void @bset_keymap(%struct.buffer* %2, i64 %3)
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call2
}

declare void @bset_keymap(%struct.buffer*, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fcurrent_local_map() #0 {
entry:
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %keymap_ = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 14
  %1 = load i64, i64* %keymap_, align 8
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define i64 @Fcurrent_global_map() #0 {
entry:
  %0 = load i64, i64* @current_global_map, align 8
  ret i64 %0
}

; Function Attrs: nounwind uwtable
define i64 @Fcurrent_minor_mode_maps() #0 {
entry:
  %maps = alloca i64*, align 8
  %nmaps = alloca i32, align 4
  %call = call i64 @current_minor_maps(i64** null, i64** %maps)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %nmaps, align 4
  %0 = load i32, i32* %nmaps, align 4
  %conv1 = sext i32 %0 to i64
  %1 = load i64*, i64** %maps, align 8
  %call2 = call i64 @Flist(i64 %conv1, i64* %1)
  ret i64 %call2
}

; Function Attrs: nounwind uwtable
define i64 @Faccessible_keymaps(i64 %keymap, i64 %prefix) #0 {
entry:
  %retval = alloca i64, align 8
  %keymap.addr = alloca i64, align 8
  %prefix.addr = alloca i64, align 8
  %maps = alloca i64, align 8
  %tail = alloca i64, align 8
  %prefixlen = alloca i64, align 8
  %tem = alloca i64, align 8
  %i = alloca i32, align 4
  %i_byte = alloca i32, align 4
  %c = alloca i32, align 4
  %copy = alloca i64, align 8
  %i_before = alloca i32, align 4
  %chp = alloca i8*, align 8
  %chlen = alloca i32, align 4
  %data = alloca %struct.accessible_keymaps_data, align 8
  %thismap = alloca i64, align 8
  %last = alloca i64, align 8
  store i64 %keymap, i64* %keymap.addr, align 8
  store i64 %prefix, i64* %prefix.addr, align 8
  %0 = load i64, i64* %prefix.addr, align 8
  %call = call i64 @Flength(i64 %0)
  %shr = ashr i64 %call, 2
  store i64 %shr, i64* %prefixlen, align 8
  %1 = load i64, i64* %prefix.addr, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %1, %call1
  br i1 %cmp, label %if.else.94, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %keymap.addr, align 8
  %3 = load i64, i64* %prefix.addr, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 901)
  %call3 = call i64 @Flookup_key(i64 %2, i64 %3, i64 %call2)
  store i64 %call3, i64* %tem, align 8
  %4 = load i64, i64* %tem, align 8
  %call4 = call i64 @get_keymap(i64 %4, i1 zeroext false, i1 zeroext false)
  store i64 %call4, i64* %tem, align 8
  %5 = load i64, i64* %tem, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp6 = icmp eq i64 %5, %call5
  br i1 %cmp6, label %if.else.91, label %if.then.7

if.then.7:                                        ; preds = %if.then
  %6 = load i64, i64* %prefix.addr, align 8
  %call8 = call zeroext i1 @STRINGP(i64 %6)
  br i1 %call8, label %if.then.9, label %if.end.88

if.then.9:                                        ; preds = %if.then.7
  %7 = load i64, i64* %prefix.addr, align 8
  %call10 = call i64 @SCHARS(i64 %7)
  %shl = shl i64 %call10, 2
  %add = add i64 %shl, 2
  %call11 = call i64 @builtin_lisp_symbol(i32 0)
  %call12 = call i64 @Fmake_vector(i64 %add, i64 %call11)
  store i64 %call12, i64* %copy, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %i_byte, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.83, %if.then.9
  %8 = load i32, i32* %i, align 4
  %conv = sext i32 %8 to i64
  %9 = load i64, i64* %prefix.addr, align 8
  %call13 = call i64 @SCHARS(i64 %9)
  %cmp14 = icmp slt i64 %conv, %call13
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  store i32 %10, i32* %i_before, align 4
  br label %do.body

do.body:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  %12 = load i64, i64* %prefix.addr, align 8
  %call16 = call zeroext i1 @STRING_MULTIBYTE(i64 %12)
  br i1 %call16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %do.body
  %13 = load i32, i32* %i_byte, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load i64, i64* %prefix.addr, align 8
  %call18 = call i8* @SDATA(i64 %14)
  %arrayidx = getelementptr inbounds i8, i8* %call18, i64 %idxprom
  store i8* %arrayidx, i8** %chp, align 8
  %15 = load i8*, i8** %chp, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %15, i64 0
  %16 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %16 to i32
  %and = and i32 %conv20, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.17
  store i32 1, i32* %chlen, align 4
  %17 = load i8*, i8** %chp, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %17, i64 0
  %18 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %18 to i32
  br label %cond.end.64

cond.false:                                       ; preds = %if.then.17
  %19 = load i8*, i8** %chp, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %19, i64 0
  %20 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %20 to i32
  %and25 = and i32 %conv24, 32
  %tobool26 = icmp ne i32 %and25, 0
  br i1 %tobool26, label %cond.false.40, label %cond.true.27

cond.true.27:                                     ; preds = %cond.false
  store i32 2, i32* %chlen, align 4
  %21 = load i8*, i8** %chp, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %21, i64 0
  %22 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %22 to i32
  %and30 = and i32 %conv29, 31
  %shl31 = shl i32 %and30, 6
  %23 = load i8*, i8** %chp, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %23, i64 1
  %24 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %24 to i32
  %and34 = and i32 %conv33, 63
  %or = or i32 %shl31, %and34
  %25 = load i8*, i8** %chp, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %25, i64 0
  %26 = load i8, i8* %arrayidx35, align 1
  %conv36 = zext i8 %26 to i32
  %cmp37 = icmp slt i32 %conv36, 194
  %cond = select i1 %cmp37, i32 4194176, i32 0
  %add39 = add nsw i32 %or, %cond
  br label %cond.end.62

cond.false.40:                                    ; preds = %cond.false
  %27 = load i8*, i8** %chp, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %27, i64 0
  %28 = load i8, i8* %arrayidx41, align 1
  %conv42 = zext i8 %28 to i32
  %and43 = and i32 %conv42, 16
  %tobool44 = icmp ne i32 %and43, 0
  br i1 %tobool44, label %cond.false.59, label %cond.true.45

cond.true.45:                                     ; preds = %cond.false.40
  store i32 3, i32* %chlen, align 4
  %29 = load i8*, i8** %chp, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %29, i64 0
  %30 = load i8, i8* %arrayidx46, align 1
  %conv47 = zext i8 %30 to i32
  %and48 = and i32 %conv47, 15
  %shl49 = shl i32 %and48, 12
  %31 = load i8*, i8** %chp, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %31, i64 1
  %32 = load i8, i8* %arrayidx50, align 1
  %conv51 = zext i8 %32 to i32
  %and52 = and i32 %conv51, 63
  %shl53 = shl i32 %and52, 6
  %or54 = or i32 %shl49, %shl53
  %33 = load i8*, i8** %chp, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %33, i64 2
  %34 = load i8, i8* %arrayidx55, align 1
  %conv56 = zext i8 %34 to i32
  %and57 = and i32 %conv56, 63
  %or58 = or i32 %or54, %and57
  br label %cond.end

cond.false.59:                                    ; preds = %cond.false.40
  %35 = load i8*, i8** %chp, align 8
  %call60 = call i32 @string_char(i8* %35, i8** null, i32* %chlen)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.59, %cond.true.45
  %cond61 = phi i32 [ %or58, %cond.true.45 ], [ %call60, %cond.false.59 ]
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.end, %cond.true.27
  %cond63 = phi i32 [ %add39, %cond.true.27 ], [ %cond61, %cond.end ]
  br label %cond.end.64

cond.end.64:                                      ; preds = %cond.end.62, %cond.true
  %cond65 = phi i32 [ %conv22, %cond.true ], [ %cond63, %cond.end.62 ]
  store i32 %cond65, i32* %c, align 4
  %36 = load i32, i32* %chlen, align 4
  %37 = load i32, i32* %i_byte, align 4
  %add66 = add nsw i32 %37, %36
  store i32 %add66, i32* %i_byte, align 4
  br label %if.end

if.else:                                          ; preds = %do.body
  %38 = load i64, i64* %prefix.addr, align 8
  %39 = load i32, i32* %i_byte, align 4
  %conv67 = sext i32 %39 to i64
  %call68 = call zeroext i8 @SREF(i64 %38, i64 %conv67)
  %conv69 = zext i8 %call68 to i32
  store i32 %conv69, i32* %c, align 4
  %40 = load i32, i32* %i_byte, align 4
  %inc70 = add nsw i32 %40, 1
  store i32 %inc70, i32* %i_byte, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end.64
  br label %do.end

do.end:                                           ; preds = %if.end
  br i1 true, label %cond.true.71, label %cond.false.75

cond.true.71:                                     ; preds = %do.end
  %41 = load i32, i32* %c, align 4
  %add72 = add i32 %41, 0
  %cmp73 = icmp ult i32 %add72, 256
  br i1 %cmp73, label %land.lhs.true, label %if.end.83

cond.false.75:                                    ; preds = %do.end
  %42 = load i32, i32* %c, align 4
  %conv76 = sext i32 %42 to i64
  %add77 = add i64 %conv76, 0
  %cmp78 = icmp ult i64 %add77, 256
  br i1 %cmp78, label %land.lhs.true, label %if.end.83

land.lhs.true:                                    ; preds = %cond.false.75, %cond.true.71
  %43 = load i32, i32* %c, align 4
  %and80 = and i32 %43, 128
  %tobool81 = icmp ne i32 %and80, 0
  br i1 %tobool81, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %land.lhs.true
  %44 = load i32, i32* %c, align 4
  %xor = xor i32 %44, 134217856
  store i32 %xor, i32* %c, align 4
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.82, %land.lhs.true, %cond.false.75, %cond.true.71
  %45 = load i64, i64* %copy, align 8
  %46 = load i32, i32* %i_before, align 4
  %conv84 = sext i32 %46 to i64
  %47 = load i32, i32* %c, align 4
  %conv85 = sext i32 %47 to i64
  %shl86 = shl i64 %conv85, 2
  %add87 = add i64 %shl86, 2
  call void @ASET(i64 %45, i64 %conv84, i64 %add87)
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %48 = load i64, i64* %copy, align 8
  store i64 %48, i64* %prefix.addr, align 8
  br label %if.end.88

if.end.88:                                        ; preds = %for.end, %if.then.7
  %49 = load i64, i64* %prefix.addr, align 8
  %50 = load i64, i64* %tem, align 8
  %call89 = call i64 @Fcons(i64 %49, i64 %50)
  %call90 = call i64 @list1(i64 %call89)
  store i64 %call90, i64* %maps, align 8
  br label %if.end.93

if.else.91:                                       ; preds = %if.then
  %call92 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call92, i64* %retval
  br label %return

if.end.93:                                        ; preds = %if.end.88
  br label %if.end.98

if.else.94:                                       ; preds = %entry
  %51 = load i64, i64* @zero_vector, align 8
  %52 = load i64, i64* %keymap.addr, align 8
  %call95 = call i64 @get_keymap(i64 %52, i1 zeroext true, i1 zeroext false)
  %call96 = call i64 @Fcons(i64 %51, i64 %call95)
  %call97 = call i64 @list1(i64 %call96)
  store i64 %call97, i64* %maps, align 8
  br label %if.end.98

if.end.98:                                        ; preds = %if.else.94, %if.end.93
  %53 = load i64, i64* %maps, align 8
  store i64 %53, i64* %tail, align 8
  br label %for.cond.99

for.cond.99:                                      ; preds = %for.inc, %if.end.98
  %54 = load i64, i64* %tail, align 8
  %and100 = and i64 %54, 7
  %conv101 = trunc i64 %and100 to i32
  %cmp102 = icmp eq i32 %conv101, 3
  br i1 %cmp102, label %for.body.104, label %for.end.136

for.body.104:                                     ; preds = %for.cond.99
  %55 = load i64, i64* %tail, align 8
  %sub = sub nsw i64 %55, 3
  %56 = inttoptr i64 %sub to i8*
  %57 = bitcast i8* %56 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %57, i32 0, i32 0
  %58 = load i64, i64* %car, align 8
  %call105 = call i64 @Fcdr(i64 %58)
  store i64 %call105, i64* %thismap, align 8
  %59 = load i64, i64* %tail, align 8
  %sub106 = sub nsw i64 %59, 3
  %60 = inttoptr i64 %sub106 to i8*
  %61 = bitcast i8* %60 to %struct.Lisp_Cons*
  %car107 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %61, i32 0, i32 0
  %62 = load i64, i64* %car107, align 8
  %call108 = call i64 @Fcar(i64 %62)
  %thisseq = getelementptr inbounds %struct.accessible_keymaps_data, %struct.accessible_keymaps_data* %data, i32 0, i32 2
  store i64 %call108, i64* %thisseq, align 8
  %63 = load i64, i64* %maps, align 8
  %maps109 = getelementptr inbounds %struct.accessible_keymaps_data, %struct.accessible_keymaps_data* %data, i32 0, i32 0
  store i64 %63, i64* %maps109, align 8
  %64 = load i64, i64* %tail, align 8
  %tail110 = getelementptr inbounds %struct.accessible_keymaps_data, %struct.accessible_keymaps_data* %data, i32 0, i32 1
  store i64 %64, i64* %tail110, align 8
  %thisseq111 = getelementptr inbounds %struct.accessible_keymaps_data, %struct.accessible_keymaps_data* %data, i32 0, i32 2
  %65 = load i64, i64* %thisseq111, align 8
  %call112 = call i64 @Flength(i64 %65)
  %shr113 = ashr i64 %call112, 2
  %sub114 = sub nsw i64 %shr113, 1
  %shl115 = shl i64 %sub114, 2
  %add116 = add i64 %shl115, 2
  store i64 %add116, i64* %last, align 8
  %66 = load i64, i64* %last, align 8
  %shr117 = ashr i64 %66, 2
  %cmp118 = icmp sge i64 %shr117, 0
  br i1 %cmp118, label %land.lhs.true.120, label %land.end

land.lhs.true.120:                                ; preds = %for.body.104
  %67 = load i64, i64* %last, align 8
  %shr121 = ashr i64 %67, 2
  %68 = load i64, i64* %prefixlen, align 8
  %cmp122 = icmp sge i64 %shr121, %68
  br i1 %cmp122, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.120
  %thisseq124 = getelementptr inbounds %struct.accessible_keymaps_data, %struct.accessible_keymaps_data* %data, i32 0, i32 2
  %69 = load i64, i64* %thisseq124, align 8
  %70 = load i64, i64* %last, align 8
  %call125 = call i64 @Faref(i64 %69, i64 %70)
  %71 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 379), align 8
  %cmp126 = icmp eq i64 %call125, %71
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.120, %for.body.104
  %72 = phi i1 [ false, %land.lhs.true.120 ], [ false, %for.body.104 ], [ %cmp126, %land.rhs ]
  %is_metized = getelementptr inbounds %struct.accessible_keymaps_data, %struct.accessible_keymaps_data* %data, i32 0, i32 3
  %frombool = zext i1 %72 to i8
  store i8 %frombool, i8* %is_metized, align 1
  %73 = load i64, i64* %thismap, align 8
  %and128 = and i64 %73, 7
  %conv129 = trunc i64 %and128 to i32
  %cmp130 = icmp eq i32 %conv129, 3
  br i1 %cmp130, label %if.then.132, label %if.end.134

if.then.132:                                      ; preds = %land.end
  %74 = load i64, i64* %thismap, align 8
  %call133 = call i64 @builtin_lisp_symbol(i32 0)
  %75 = bitcast %struct.accessible_keymaps_data* %data to i8*
  call void @map_keymap(i64 %74, void (i64, i64, i64, i8*)* @accessible_keymaps_1, i64 %call133, i8* %75, i1 zeroext false)
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.132, %land.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.134
  %76 = load i64, i64* %tail, align 8
  %sub135 = sub nsw i64 %76, 3
  %77 = inttoptr i64 %sub135 to i8*
  %78 = bitcast i8* %77 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %78, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %79 = load i64, i64* %cdr, align 8
  store i64 %79, i64* %tail, align 8
  br label %for.cond.99

for.end.136:                                      ; preds = %for.cond.99
  %80 = load i64, i64* %maps, align 8
  store i64 %80, i64* %retval
  br label %return

return:                                           ; preds = %for.end.136, %if.else.91
  %81 = load i64, i64* %retval
  ret i64 %81
}

declare i64 @Flength(i64) #1

declare i32 @string_char(i8*, i8**, i32*) #1

declare zeroext i8 @SREF(i64, i64) #1

declare i64 @Fcdr(i64) #1

declare i64 @Fcar(i64) #1

; Function Attrs: nounwind uwtable
define internal void @accessible_keymaps_1(i64 %key, i64 %cmd, i64 %args, i8* %data) #0 {
entry:
  %key.addr = alloca i64, align 8
  %cmd.addr = alloca i64, align 8
  %args.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %d = alloca %struct.accessible_keymaps_data*, align 8
  %maps = alloca i64, align 8
  %tail = alloca i64, align 8
  %thisseq = alloca i64, align 8
  %is_metized = alloca i8, align 1
  %tem = alloca i64, align 8
  %prefix = alloca i64, align 8
  %lim = alloca i64, align 8
  %i = alloca i64, align 8
  %meta_bit = alloca i32, align 4
  %last = alloca i64, align 8
  store i64 %key, i64* %key.addr, align 8
  store i64 %cmd, i64* %cmd.addr, align 8
  store i64 %args, i64* %args.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.accessible_keymaps_data*
  store %struct.accessible_keymaps_data* %1, %struct.accessible_keymaps_data** %d, align 8
  %2 = load %struct.accessible_keymaps_data*, %struct.accessible_keymaps_data** %d, align 8
  %maps1 = getelementptr inbounds %struct.accessible_keymaps_data, %struct.accessible_keymaps_data* %2, i32 0, i32 0
  %3 = load i64, i64* %maps1, align 8
  store i64 %3, i64* %maps, align 8
  %4 = load %struct.accessible_keymaps_data*, %struct.accessible_keymaps_data** %d, align 8
  %tail2 = getelementptr inbounds %struct.accessible_keymaps_data, %struct.accessible_keymaps_data* %4, i32 0, i32 1
  %5 = load i64, i64* %tail2, align 8
  store i64 %5, i64* %tail, align 8
  %6 = load %struct.accessible_keymaps_data*, %struct.accessible_keymaps_data** %d, align 8
  %thisseq3 = getelementptr inbounds %struct.accessible_keymaps_data, %struct.accessible_keymaps_data* %6, i32 0, i32 2
  %7 = load i64, i64* %thisseq3, align 8
  store i64 %7, i64* %thisseq, align 8
  %8 = load %struct.accessible_keymaps_data*, %struct.accessible_keymaps_data** %d, align 8
  %is_metized4 = getelementptr inbounds %struct.accessible_keymaps_data, %struct.accessible_keymaps_data* %8, i32 0, i32 3
  %9 = load i8, i8* %is_metized4, align 1
  %tobool = trunc i8 %9 to i1
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %10 = load i64, i64* %key.addr, align 8
  %and = and i64 %10, 7
  %conv = trunc i64 %and to i32
  %and5 = and i32 %conv, -5
  %cmp = icmp eq i32 %and5, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %11 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  %frombool = zext i1 %11 to i8
  store i8 %frombool, i8* %is_metized, align 1
  %12 = load i64, i64* %cmd.addr, align 8
  %call = call i64 @get_keyelt(i64 %12, i1 zeroext false)
  %call7 = call i64 @get_keymap(i64 %call, i1 zeroext false, i1 zeroext false)
  store i64 %call7, i64* %cmd.addr, align 8
  %13 = load i64, i64* %cmd.addr, align 8
  %call8 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp9 = icmp eq i64 %13, %call8
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  br label %if.end.65

if.end:                                           ; preds = %land.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.39, %if.end
  %14 = load i64, i64* %cmd.addr, align 8
  %15 = load i64, i64* %maps, align 8
  %call11 = call i64 @Frassq(i64 %14, i64 %15)
  store i64 %call11, i64* %tem, align 8
  %call12 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp13 = icmp eq i64 %call11, %call12
  %lnot = xor i1 %cmp13, true
  br i1 %lnot, label %while.body, label %while.end.42

while.body:                                       ; preds = %while.cond
  %16 = load i64, i64* %tem, align 8
  %sub = sub nsw i64 %16, 3
  %17 = inttoptr i64 %sub to i8*
  %18 = bitcast i8* %17 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %18, i32 0, i32 0
  %19 = load i64, i64* %car, align 8
  store i64 %19, i64* %prefix, align 8
  %20 = load i64, i64* %tem, align 8
  %sub15 = sub nsw i64 %20, 3
  %21 = inttoptr i64 %sub15 to i8*
  %22 = bitcast i8* %21 to %struct.Lisp_Cons*
  %car16 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %22, i32 0, i32 0
  %23 = load i64, i64* %car16, align 8
  %call17 = call i64 @Flength(i64 %23)
  %shr = ashr i64 %call17, 2
  store i64 %shr, i64* %lim, align 8
  %24 = load i64, i64* %lim, align 8
  %25 = load i64, i64* %thisseq, align 8
  %call18 = call i64 @Flength(i64 %25)
  %shr19 = ashr i64 %call18, 2
  %cmp20 = icmp sle i64 %24, %shr19
  br i1 %cmp20, label %if.then.22, label %if.end.39

if.then.22:                                       ; preds = %while.body
  store i64 0, i64* %i, align 8
  br label %while.cond.23

while.cond.23:                                    ; preds = %while.body.34, %if.then.22
  %26 = load i64, i64* %i, align 8
  %27 = load i64, i64* %lim, align 8
  %cmp24 = icmp slt i64 %26, %27
  br i1 %cmp24, label %land.rhs.26, label %land.end.33

land.rhs.26:                                      ; preds = %while.cond.23
  %28 = load i64, i64* %prefix, align 8
  %29 = load i64, i64* %i, align 8
  %shl = shl i64 %29, 2
  %add = add i64 %shl, 2
  %call27 = call i64 @Faref(i64 %28, i64 %add)
  %30 = load i64, i64* %thisseq, align 8
  %31 = load i64, i64* %i, align 8
  %shl28 = shl i64 %31, 2
  %add29 = add i64 %shl28, 2
  %call30 = call i64 @Faref(i64 %30, i64 %add29)
  %cmp31 = icmp eq i64 %call27, %call30
  br label %land.end.33

land.end.33:                                      ; preds = %land.rhs.26, %while.cond.23
  %32 = phi i1 [ false, %while.cond.23 ], [ %cmp31, %land.rhs.26 ]
  br i1 %32, label %while.body.34, label %while.end

while.body.34:                                    ; preds = %land.end.33
  %33 = load i64, i64* %i, align 8
  %inc = add nsw i64 %33, 1
  store i64 %inc, i64* %i, align 8
  br label %while.cond.23

while.end:                                        ; preds = %land.end.33
  %34 = load i64, i64* %i, align 8
  %35 = load i64, i64* %lim, align 8
  %cmp35 = icmp sge i64 %34, %35
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %while.end
  br label %if.end.65

if.end.38:                                        ; preds = %while.end
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %while.body
  %36 = load i64, i64* %tem, align 8
  %37 = load i64, i64* %maps, align 8
  %call40 = call i64 @Fmemq(i64 %36, i64 %37)
  %sub41 = sub nsw i64 %call40, 3
  %38 = inttoptr i64 %sub41 to i8*
  %39 = bitcast i8* %38 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %39, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %40 = load i64, i64* %cdr, align 8
  store i64 %40, i64* %maps, align 8
  br label %while.cond

while.end.42:                                     ; preds = %while.cond
  %41 = load i8, i8* %is_metized, align 1
  %tobool43 = trunc i8 %41 to i1
  br i1 %tobool43, label %if.then.44, label %if.else

if.then.44:                                       ; preds = %while.end.42
  store i32 134217728, i32* %meta_bit, align 4
  %42 = load i64, i64* %thisseq, align 8
  %call45 = call i64 @Flength(i64 %42)
  %shr46 = ashr i64 %call45, 2
  %sub47 = sub nsw i64 %shr46, 1
  %shl48 = shl i64 %sub47, 2
  %add49 = add i64 %shl48, 2
  store i64 %add49, i64* %last, align 8
  %43 = load i64, i64* %thisseq, align 8
  %call50 = call i64 @Fcopy_sequence(i64 %43)
  store i64 %call50, i64* %tem, align 8
  %44 = load i64, i64* %tem, align 8
  %45 = load i64, i64* %last, align 8
  %46 = load i64, i64* %key.addr, align 8
  %shr51 = ashr i64 %46, 2
  %47 = load i32, i32* %meta_bit, align 4
  %conv52 = sext i32 %47 to i64
  %or = or i64 %shr51, %conv52
  %shl53 = shl i64 %or, 2
  %add54 = add i64 %shl53, 2
  %call55 = call i64 @Faset(i64 %44, i64 %45, i64 %add54)
  %48 = load i64, i64* %tail, align 8
  %49 = load i64, i64* %tem, align 8
  %50 = load i64, i64* %cmd.addr, align 8
  %call56 = call i64 @Fcons(i64 %49, i64 %50)
  %51 = load i64, i64* %tail, align 8
  %sub57 = sub nsw i64 %51, 3
  %52 = inttoptr i64 %sub57 to i8*
  %53 = bitcast i8* %52 to %struct.Lisp_Cons*
  %u58 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %53, i32 0, i32 1
  %cdr59 = bitcast %union.anon* %u58 to i64*
  %54 = load i64, i64* %cdr59, align 8
  %call60 = call i64 @Fcons(i64 %call56, i64 %54)
  call void @XSETCDR(i64 %48, i64 %call60)
  br label %if.end.65

if.else:                                          ; preds = %while.end.42
  %55 = load i64, i64* %thisseq, align 8
  %56 = load i64, i64* %key.addr, align 8
  %call61 = call i64 @append_key(i64 %55, i64 %56)
  store i64 %call61, i64* %tem, align 8
  %57 = load i64, i64* %tail, align 8
  %58 = load i64, i64* %tem, align 8
  %59 = load i64, i64* %cmd.addr, align 8
  %call62 = call i64 @Fcons(i64 %58, i64 %59)
  %call63 = call i64 @list1(i64 %call62)
  %call64 = call i64 @nconc2(i64 %57, i64 %call63)
  br label %if.end.65

if.end.65:                                        ; preds = %if.then, %if.then.37, %if.else, %if.then.44
  ret void
}

declare i64 @build_string(i8*) #1

; Function Attrs: noreturn
declare void @memory_full(i64) #2

declare noalias i8* @xmalloc(i64) #1

declare i64 @make_save_memory(i64*, i64) #1

declare void @record_unwind_protect(void (i64)*, i64) #1

declare void @free_save_value(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fsingle_key_description(i64 %key, i64 %no_angles) #0 {
entry:
  %retval = alloca i64, align 8
  %key.addr = alloca i64, align 8
  %no_angles.addr = alloca i64, align 8
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  %dot_dot = alloca i64, align 8
  %.compoundliteral = alloca %union.Aligned_String, align 8
  %tem = alloca [22 x i8], align 16
  %p = alloca i8*, align 8
  %result = alloca i64, align 8
  %buffer = alloca i8*, align 8
  store i64 %key, i64* %key.addr, align 8
  store i64 %no_angles, i64* %no_angles.addr, align 8
  store i64 16384, i64* %sa_avail, align 8
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  %0 = load i64, i64* %key.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %key.addr, align 8
  %call2 = call zeroext i1 @lucid_event_type_list_p(i64 %1)
  br i1 %call2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = load i64, i64* %key.addr, align 8
  %call4 = call i64 @Fevent_convert_list(i64 %2)
  store i64 %call4, i64* %key.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %3 = load i64, i64* %key.addr, align 8
  %and5 = and i64 %3, 7
  %conv6 = trunc i64 %and5 to i32
  %cmp7 = icmp eq i32 %conv6, 3
  br i1 %cmp7, label %land.lhs.true.9, label %if.end.33

land.lhs.true.9:                                  ; preds = %if.end
  %4 = load i64, i64* %key.addr, align 8
  %sub = sub nsw i64 %4, 3
  %5 = inttoptr i64 %sub to i8*
  %6 = bitcast i8* %5 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %6, i32 0, i32 0
  %7 = load i64, i64* %car, align 8
  %and10 = and i64 %7, 7
  %conv11 = trunc i64 %and10 to i32
  %and12 = and i32 %conv11, -5
  %cmp13 = icmp eq i32 %and12, 2
  br i1 %cmp13, label %land.lhs.true.15, label %if.end.33

land.lhs.true.15:                                 ; preds = %land.lhs.true.9
  %8 = load i64, i64* %key.addr, align 8
  %sub16 = sub nsw i64 %8, 3
  %9 = inttoptr i64 %sub16 to i8*
  %10 = bitcast i8* %9 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %10, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %11 = load i64, i64* %cdr, align 8
  %and17 = and i64 %11, 7
  %conv18 = trunc i64 %and17 to i32
  %and19 = and i32 %conv18, -5
  %cmp20 = icmp eq i32 %and19, 2
  br i1 %cmp20, label %if.then.22, label %if.end.33

if.then.22:                                       ; preds = %land.lhs.true.15
  %s = bitcast %union.Aligned_String* %.compoundliteral to %struct.Lisp_String*
  %size = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 0
  store i64 2, i64* %size, align 8
  %size_byte = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 1
  store i64 -1, i64* %size_byte, align 8
  %intervals = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 2
  store %struct.interval* null, %struct.interval** %intervals, align 8
  %data = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 3
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8** %data, align 8
  %s23 = bitcast %union.Aligned_String* %.compoundliteral to %struct.Lisp_String*
  %12 = bitcast %struct.Lisp_String* %s23 to i8*
  %call24 = call i64 @make_lisp_ptr(i8* %12, i32 4)
  store i64 %call24, i64* %dot_dot, align 8
  %13 = load i64, i64* %key.addr, align 8
  %sub25 = sub nsw i64 %13, 3
  %14 = inttoptr i64 %sub25 to i8*
  %15 = bitcast i8* %14 to %struct.Lisp_Cons*
  %car26 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %15, i32 0, i32 0
  %16 = load i64, i64* %car26, align 8
  %17 = load i64, i64* %no_angles.addr, align 8
  %call27 = call i64 @Fsingle_key_description(i64 %16, i64 %17)
  %18 = load i64, i64* %dot_dot, align 8
  %19 = load i64, i64* %key.addr, align 8
  %sub28 = sub nsw i64 %19, 3
  %20 = inttoptr i64 %sub28 to i8*
  %21 = bitcast i8* %20 to %struct.Lisp_Cons*
  %u29 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %21, i32 0, i32 1
  %cdr30 = bitcast %union.anon* %u29 to i64*
  %22 = load i64, i64* %cdr30, align 8
  %23 = load i64, i64* %no_angles.addr, align 8
  %call31 = call i64 @Fsingle_key_description(i64 %22, i64 %23)
  %call32 = call i64 @concat3(i64 %call27, i64 %18, i64 %call31)
  store i64 %call32, i64* %retval
  br label %return

if.end.33:                                        ; preds = %land.lhs.true.15, %land.lhs.true.9, %if.end
  %24 = load i64, i64* %key.addr, align 8
  %and34 = and i64 %24, 7
  %conv35 = trunc i64 %and34 to i32
  %cmp36 = icmp eq i32 %conv35, 3
  br i1 %cmp36, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.33
  %25 = load i64, i64* %key.addr, align 8
  %sub38 = sub nsw i64 %25, 3
  %26 = inttoptr i64 %sub38 to i8*
  %27 = bitcast i8* %26 to %struct.Lisp_Cons*
  %car39 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %27, i32 0, i32 0
  %28 = load i64, i64* %car39, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.33
  %29 = load i64, i64* %key.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %28, %cond.true ], [ %29, %cond.false ]
  store i64 %cond, i64* %key.addr, align 8
  %30 = load i64, i64* %key.addr, align 8
  %and40 = and i64 %30, 7
  %conv41 = trunc i64 %and40 to i32
  %and42 = and i32 %conv41, -5
  %cmp43 = icmp eq i32 %and42, 2
  br i1 %cmp43, label %if.then.45, label %if.else

if.then.45:                                       ; preds = %cond.end
  %31 = load i64, i64* %key.addr, align 8
  %shr = ashr i64 %31, 2
  %arraydecay = getelementptr inbounds [22 x i8], [22 x i8]* %tem, i32 0, i32 0
  %call46 = call i8* @push_key_description(i64 %shr, i8* %arraydecay)
  store i8* %call46, i8** %p, align 8
  %32 = load i8*, i8** %p, align 8
  store i8 0, i8* %32, align 1
  %arraydecay47 = getelementptr inbounds [22 x i8], [22 x i8]* %tem, i32 0, i32 0
  %33 = load i8*, i8** %p, align 8
  %arraydecay48 = getelementptr inbounds [22 x i8], [22 x i8]* %tem, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %33 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay48 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call49 = call i64 @make_specified_string(i8* %arraydecay47, i64 -1, i64 %sub.ptr.sub, i1 zeroext true)
  store i64 %call49, i64* %retval
  br label %return

if.else:                                          ; preds = %cond.end
  %34 = load i64, i64* %key.addr, align 8
  %and50 = and i64 %34, 7
  %conv51 = trunc i64 %and50 to i32
  %cmp52 = icmp eq i32 %conv51, 0
  br i1 %cmp52, label %if.then.54, label %if.else.88

if.then.54:                                       ; preds = %if.else
  %35 = load i64, i64* %no_angles.addr, align 8
  %call55 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp56 = icmp eq i64 %35, %call55
  br i1 %cmp56, label %if.then.58, label %if.else.86

if.then.58:                                       ; preds = %if.then.54
  %36 = load i64, i64* %key.addr, align 8
  %call59 = call i64 @SYMBOL_NAME(i64 %36)
  %call60 = call i64 @SBYTES(i64 %call59)
  %add = add i64 3, %call60
  %37 = load i64, i64* %sa_avail, align 8
  %cmp61 = icmp ule i64 %add, %37
  br i1 %cmp61, label %cond.true.63, label %cond.false.71

cond.true.63:                                     ; preds = %if.then.58
  %38 = load i64, i64* %key.addr, align 8
  %call64 = call i64 @SYMBOL_NAME(i64 %38)
  %call65 = call i64 @SBYTES(i64 %call64)
  %add66 = add i64 3, %call65
  %39 = load i64, i64* %sa_avail, align 8
  %sub67 = sub i64 %39, %add66
  store i64 %sub67, i64* %sa_avail, align 8
  %40 = load i64, i64* %key.addr, align 8
  %call68 = call i64 @SYMBOL_NAME(i64 %40)
  %call69 = call i64 @SBYTES(i64 %call68)
  %add70 = add i64 3, %call69
  %41 = alloca i8, i64 %add70
  br label %cond.end.76

cond.false.71:                                    ; preds = %if.then.58
  store i8 1, i8* %sa_must_free, align 1
  %42 = load i64, i64* %key.addr, align 8
  %call72 = call i64 @SYMBOL_NAME(i64 %42)
  %call73 = call i64 @SBYTES(i64 %call72)
  %add74 = add i64 3, %call73
  %call75 = call i8* @record_xmalloc(i64 %add74)
  br label %cond.end.76

cond.end.76:                                      ; preds = %cond.false.71, %cond.true.63
  %cond77 = phi i8* [ %41, %cond.true.63 ], [ %call75, %cond.false.71 ]
  store i8* %cond77, i8** %buffer, align 8
  %43 = load i8*, i8** %buffer, align 8
  %44 = load i64, i64* %key.addr, align 8
  %call78 = call i64 @SYMBOL_NAME(i64 %44)
  %call79 = call i8* @SDATA(i64 %call78)
  %call80 = call i64 (i8*, i8*, ...) @esprintf(i8* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* %call79)
  %45 = load i8*, i8** %buffer, align 8
  %call81 = call i64 @build_string(i8* %45)
  store i64 %call81, i64* %result, align 8
  br label %do.body

do.body:                                          ; preds = %cond.end.76
  %46 = load i8, i8* %sa_must_free, align 1
  %tobool = trunc i8 %46 to i1
  br i1 %tobool, label %if.then.82, label %if.end.85

if.then.82:                                       ; preds = %do.body
  store i8 0, i8* %sa_must_free, align 1
  %47 = load i64, i64* %sa_count, align 8
  %call83 = call i64 @builtin_lisp_symbol(i32 0)
  %call84 = call i64 @unbind_to(i64 %47, i64 %call83)
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.82, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.85
  %48 = load i64, i64* %result, align 8
  store i64 %48, i64* %retval
  br label %return

if.else.86:                                       ; preds = %if.then.54
  %49 = load i64, i64* %key.addr, align 8
  %call87 = call i64 @Fsymbol_name(i64 %49)
  store i64 %call87, i64* %retval
  br label %return

if.else.88:                                       ; preds = %if.else
  %50 = load i64, i64* %key.addr, align 8
  %call89 = call zeroext i1 @STRINGP(i64 %50)
  br i1 %call89, label %if.then.90, label %if.else.92

if.then.90:                                       ; preds = %if.else.88
  %51 = load i64, i64* %key.addr, align 8
  %call91 = call i64 @Fcopy_sequence(i64 %51)
  store i64 %call91, i64* %retval
  br label %return

if.else.92:                                       ; preds = %if.else.88
  call void (i8*, ...) @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i32 0, i32 0)) #6
  unreachable

return:                                           ; preds = %if.then.90, %if.else.86, %do.end, %if.then.45, %if.then.22
  %52 = load i64, i64* %retval
  ret i64 %52
}

declare i64 @Fconcat(i64, i64*) #1

declare i64 @make_natnum(i64) #1

; Function Attrs: nounwind uwtable
define i8* @push_key_description(i64 %ch, i8* %p) #0 {
entry:
  %retval = alloca i8*, align 8
  %ch.addr = alloca i64, align 8
  %p.addr = alloca i8*, align 8
  %c = alloca i32, align 4
  %c2 = alloca i32, align 4
  %tab_as_ci = alloca i8, align 1
  store i64 %ch, i64* %ch.addr, align 8
  store i8* %p, i8** %p.addr, align 8
  %0 = load i64, i64* %ch.addr, align 8
  %and = and i64 %0, 268435455
  %conv = trunc i64 %and to i32
  store i32 %conv, i32* %c, align 4
  %1 = load i32, i32* %c, align 4
  %and1 = and i32 %1, -264241153
  store i32 %and1, i32* %c2, align 4
  %2 = load i32, i32* %c2, align 4
  %conv2 = sext i32 %2 to i64
  %shl = shl i64 %conv2, 2
  %add = add i64 %shl, 2
  %call = call zeroext i1 @NATNUMP(i64 %add)
  br i1 %call, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %c2, align 4
  %conv4 = sext i32 %3 to i64
  %shl5 = shl i64 %conv4, 2
  %add6 = add i64 %shl5, 2
  %shr = ashr i64 %add6, 2
  %cmp = icmp sle i64 %shr, 4194303
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  %4 = load i8*, i8** %p.addr, align 8
  %5 = load i32, i32* %c, align 4
  %call8 = call i32 (i8*, i8*, ...) @sprintf(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 %5) #4
  %6 = load i8*, i8** %p.addr, align 8
  %idx.ext = sext i32 %call8 to i64
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %idx.ext
  store i8* %add.ptr, i8** %p.addr, align 8
  %7 = load i8*, i8** %p.addr, align 8
  store i8* %7, i8** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true
  %8 = load i32, i32* %c2, align 4
  %cmp9 = icmp eq i32 %8, 9
  br i1 %cmp9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %9 = load i32, i32* %c, align 4
  %and11 = and i32 %9, 134217728
  %tobool = icmp ne i32 %and11, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %10 = phi i1 [ false, %if.end ], [ %tobool, %land.rhs ]
  %frombool = zext i1 %10 to i8
  store i8 %frombool, i8* %tab_as_ci, align 1
  %11 = load i32, i32* %c, align 4
  %and12 = and i32 %11, 4194304
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %land.end
  %12 = load i8*, i8** %p.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %p.addr, align 8
  store i8 65, i8* %12, align 1
  %13 = load i8*, i8** %p.addr, align 8
  %incdec.ptr15 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr15, i8** %p.addr, align 8
  store i8 45, i8* %13, align 1
  %14 = load i32, i32* %c, align 4
  %sub = sub nsw i32 %14, 4194304
  store i32 %sub, i32* %c, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %land.end
  %15 = load i32, i32* %c, align 4
  %and17 = and i32 %15, 67108864
  %cmp18 = icmp ne i32 %and17, 0
  br i1 %cmp18, label %if.then.34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.16
  %16 = load i32, i32* %c2, align 4
  %cmp20 = icmp slt i32 %16, 32
  br i1 %cmp20, label %land.lhs.true.22, label %lor.lhs.false.31

land.lhs.true.22:                                 ; preds = %lor.lhs.false
  %17 = load i32, i32* %c2, align 4
  %cmp23 = icmp ne i32 %17, 27
  br i1 %cmp23, label %land.lhs.true.25, label %lor.lhs.false.31

land.lhs.true.25:                                 ; preds = %land.lhs.true.22
  %18 = load i32, i32* %c2, align 4
  %cmp26 = icmp ne i32 %18, 9
  br i1 %cmp26, label %land.lhs.true.28, label %lor.lhs.false.31

land.lhs.true.28:                                 ; preds = %land.lhs.true.25
  %19 = load i32, i32* %c2, align 4
  %cmp29 = icmp ne i32 %19, 13
  br i1 %cmp29, label %if.then.34, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %land.lhs.true.28, %land.lhs.true.25, %land.lhs.true.22, %lor.lhs.false
  %20 = load i8, i8* %tab_as_ci, align 1
  %tobool32 = trunc i8 %20 to i1
  br i1 %tobool32, label %if.then.34, label %if.end.38

if.then.34:                                       ; preds = %lor.lhs.false.31, %land.lhs.true.28, %if.end.16
  %21 = load i8*, i8** %p.addr, align 8
  %incdec.ptr35 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr35, i8** %p.addr, align 8
  store i8 67, i8* %21, align 1
  %22 = load i8*, i8** %p.addr, align 8
  %incdec.ptr36 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr36, i8** %p.addr, align 8
  store i8 45, i8* %22, align 1
  %23 = load i32, i32* %c, align 4
  %and37 = and i32 %23, -67108865
  store i32 %and37, i32* %c, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.34, %lor.lhs.false.31
  %24 = load i32, i32* %c, align 4
  %and39 = and i32 %24, 16777216
  %tobool40 = icmp ne i32 %and39, 0
  br i1 %tobool40, label %if.then.41, label %if.end.45

if.then.41:                                       ; preds = %if.end.38
  %25 = load i8*, i8** %p.addr, align 8
  %incdec.ptr42 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr42, i8** %p.addr, align 8
  store i8 72, i8* %25, align 1
  %26 = load i8*, i8** %p.addr, align 8
  %incdec.ptr43 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr43, i8** %p.addr, align 8
  store i8 45, i8* %26, align 1
  %27 = load i32, i32* %c, align 4
  %sub44 = sub nsw i32 %27, 16777216
  store i32 %sub44, i32* %c, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.41, %if.end.38
  %28 = load i32, i32* %c, align 4
  %and46 = and i32 %28, 134217728
  %tobool47 = icmp ne i32 %and46, 0
  br i1 %tobool47, label %if.then.48, label %if.end.52

if.then.48:                                       ; preds = %if.end.45
  %29 = load i8*, i8** %p.addr, align 8
  %incdec.ptr49 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr49, i8** %p.addr, align 8
  store i8 77, i8* %29, align 1
  %30 = load i8*, i8** %p.addr, align 8
  %incdec.ptr50 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr50, i8** %p.addr, align 8
  store i8 45, i8* %30, align 1
  %31 = load i32, i32* %c, align 4
  %sub51 = sub nsw i32 %31, 134217728
  store i32 %sub51, i32* %c, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.48, %if.end.45
  %32 = load i32, i32* %c, align 4
  %and53 = and i32 %32, 33554432
  %tobool54 = icmp ne i32 %and53, 0
  br i1 %tobool54, label %if.then.55, label %if.end.59

if.then.55:                                       ; preds = %if.end.52
  %33 = load i8*, i8** %p.addr, align 8
  %incdec.ptr56 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr56, i8** %p.addr, align 8
  store i8 83, i8* %33, align 1
  %34 = load i8*, i8** %p.addr, align 8
  %incdec.ptr57 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr57, i8** %p.addr, align 8
  store i8 45, i8* %34, align 1
  %35 = load i32, i32* %c, align 4
  %sub58 = sub nsw i32 %35, 33554432
  store i32 %sub58, i32* %c, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.55, %if.end.52
  %36 = load i32, i32* %c, align 4
  %and60 = and i32 %36, 8388608
  %tobool61 = icmp ne i32 %and60, 0
  br i1 %tobool61, label %if.then.62, label %if.end.66

if.then.62:                                       ; preds = %if.end.59
  %37 = load i8*, i8** %p.addr, align 8
  %incdec.ptr63 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr63, i8** %p.addr, align 8
  store i8 115, i8* %37, align 1
  %38 = load i8*, i8** %p.addr, align 8
  %incdec.ptr64 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr64, i8** %p.addr, align 8
  store i8 45, i8* %38, align 1
  %39 = load i32, i32* %c, align 4
  %sub65 = sub nsw i32 %39, 8388608
  store i32 %sub65, i32* %c, align 4
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.62, %if.end.59
  %40 = load i32, i32* %c, align 4
  %cmp67 = icmp slt i32 %40, 32
  br i1 %cmp67, label %if.then.69, label %if.else.112

if.then.69:                                       ; preds = %if.end.66
  %41 = load i32, i32* %c, align 4
  %cmp70 = icmp eq i32 %41, 27
  br i1 %cmp70, label %if.then.72, label %if.else

if.then.72:                                       ; preds = %if.then.69
  %42 = load i8*, i8** %p.addr, align 8
  %incdec.ptr73 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr73, i8** %p.addr, align 8
  store i8 69, i8* %42, align 1
  %43 = load i8*, i8** %p.addr, align 8
  %incdec.ptr74 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr74, i8** %p.addr, align 8
  store i8 83, i8* %43, align 1
  %44 = load i8*, i8** %p.addr, align 8
  %incdec.ptr75 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr75, i8** %p.addr, align 8
  store i8 67, i8* %44, align 1
  br label %if.end.111

if.else:                                          ; preds = %if.then.69
  %45 = load i8, i8* %tab_as_ci, align 1
  %tobool76 = trunc i8 %45 to i1
  br i1 %tobool76, label %if.then.77, label %if.else.79

if.then.77:                                       ; preds = %if.else
  %46 = load i8*, i8** %p.addr, align 8
  %incdec.ptr78 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr78, i8** %p.addr, align 8
  store i8 105, i8* %46, align 1
  br label %if.end.110

if.else.79:                                       ; preds = %if.else
  %47 = load i32, i32* %c, align 4
  %cmp80 = icmp eq i32 %47, 9
  br i1 %cmp80, label %if.then.82, label %if.else.86

if.then.82:                                       ; preds = %if.else.79
  %48 = load i8*, i8** %p.addr, align 8
  %incdec.ptr83 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr83, i8** %p.addr, align 8
  store i8 84, i8* %48, align 1
  %49 = load i8*, i8** %p.addr, align 8
  %incdec.ptr84 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr84, i8** %p.addr, align 8
  store i8 65, i8* %49, align 1
  %50 = load i8*, i8** %p.addr, align 8
  %incdec.ptr85 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr85, i8** %p.addr, align 8
  store i8 66, i8* %50, align 1
  br label %if.end.109

if.else.86:                                       ; preds = %if.else.79
  %51 = load i32, i32* %c, align 4
  %cmp87 = icmp eq i32 %51, 13
  br i1 %cmp87, label %if.then.89, label %if.else.93

if.then.89:                                       ; preds = %if.else.86
  %52 = load i8*, i8** %p.addr, align 8
  %incdec.ptr90 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr90, i8** %p.addr, align 8
  store i8 82, i8* %52, align 1
  %53 = load i8*, i8** %p.addr, align 8
  %incdec.ptr91 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr91, i8** %p.addr, align 8
  store i8 69, i8* %53, align 1
  %54 = load i8*, i8** %p.addr, align 8
  %incdec.ptr92 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %incdec.ptr92, i8** %p.addr, align 8
  store i8 84, i8* %54, align 1
  br label %if.end.108

if.else.93:                                       ; preds = %if.else.86
  %55 = load i32, i32* %c, align 4
  %cmp94 = icmp sgt i32 %55, 0
  br i1 %cmp94, label %land.lhs.true.96, label %if.else.103

land.lhs.true.96:                                 ; preds = %if.else.93
  %56 = load i32, i32* %c, align 4
  %cmp97 = icmp sle i32 %56, 26
  br i1 %cmp97, label %if.then.99, label %if.else.103

if.then.99:                                       ; preds = %land.lhs.true.96
  %57 = load i32, i32* %c, align 4
  %add100 = add nsw i32 %57, 96
  %conv101 = trunc i32 %add100 to i8
  %58 = load i8*, i8** %p.addr, align 8
  %incdec.ptr102 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr102, i8** %p.addr, align 8
  store i8 %conv101, i8* %58, align 1
  br label %if.end.107

if.else.103:                                      ; preds = %land.lhs.true.96, %if.else.93
  %59 = load i32, i32* %c, align 4
  %add104 = add nsw i32 %59, 64
  %conv105 = trunc i32 %add104 to i8
  %60 = load i8*, i8** %p.addr, align 8
  %incdec.ptr106 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %incdec.ptr106, i8** %p.addr, align 8
  store i8 %conv105, i8* %60, align 1
  br label %if.end.107

if.end.107:                                       ; preds = %if.else.103, %if.then.99
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.then.89
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.then.82
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %if.then.77
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %if.then.72
  br label %if.end.195

if.else.112:                                      ; preds = %if.end.66
  %61 = load i32, i32* %c, align 4
  %cmp113 = icmp eq i32 %61, 127
  br i1 %cmp113, label %if.then.115, label %if.else.119

if.then.115:                                      ; preds = %if.else.112
  %62 = load i8*, i8** %p.addr, align 8
  %incdec.ptr116 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %incdec.ptr116, i8** %p.addr, align 8
  store i8 68, i8* %62, align 1
  %63 = load i8*, i8** %p.addr, align 8
  %incdec.ptr117 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %incdec.ptr117, i8** %p.addr, align 8
  store i8 69, i8* %63, align 1
  %64 = load i8*, i8** %p.addr, align 8
  %incdec.ptr118 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %incdec.ptr118, i8** %p.addr, align 8
  store i8 76, i8* %64, align 1
  br label %if.end.194

if.else.119:                                      ; preds = %if.else.112
  %65 = load i32, i32* %c, align 4
  %cmp120 = icmp eq i32 %65, 32
  br i1 %cmp120, label %if.then.122, label %if.else.126

if.then.122:                                      ; preds = %if.else.119
  %66 = load i8*, i8** %p.addr, align 8
  %incdec.ptr123 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %incdec.ptr123, i8** %p.addr, align 8
  store i8 83, i8* %66, align 1
  %67 = load i8*, i8** %p.addr, align 8
  %incdec.ptr124 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %incdec.ptr124, i8** %p.addr, align 8
  store i8 80, i8* %67, align 1
  %68 = load i8*, i8** %p.addr, align 8
  %incdec.ptr125 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %incdec.ptr125, i8** %p.addr, align 8
  store i8 67, i8* %68, align 1
  br label %if.end.193

if.else.126:                                      ; preds = %if.else.119
  %69 = load i32, i32* %c, align 4
  %cmp127 = icmp slt i32 %69, 128
  br i1 %cmp127, label %if.then.129, label %if.else.132

if.then.129:                                      ; preds = %if.else.126
  %70 = load i32, i32* %c, align 4
  %conv130 = trunc i32 %70 to i8
  %71 = load i8*, i8** %p.addr, align 8
  %incdec.ptr131 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %incdec.ptr131, i8** %p.addr, align 8
  store i8 %conv130, i8* %71, align 1
  br label %if.end.192

if.else.132:                                      ; preds = %if.else.126
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.132
  %72 = load i32, i32* %c, align 4
  %add133 = add i32 %72, 0
  %cmp134 = icmp ule i32 %add133, 127
  br i1 %cmp134, label %cond.true.140, label %cond.false.142

cond.false:                                       ; preds = %if.else.132
  %73 = load i32, i32* %c, align 4
  %conv136 = sext i32 %73 to i64
  %add137 = add i64 %conv136, 0
  %cmp138 = icmp ule i64 %add137, 127
  br i1 %cmp138, label %cond.true.140, label %cond.false.142

cond.true.140:                                    ; preds = %cond.false, %cond.true
  %74 = load i32, i32* %c, align 4
  %conv141 = trunc i32 %74 to i8
  %75 = load i8*, i8** %p.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %75, i64 0
  store i8 %conv141, i8* %arrayidx, align 1
  br label %cond.end.188

cond.false.142:                                   ; preds = %cond.false, %cond.true
  br i1 true, label %cond.true.143, label %cond.false.147

cond.true.143:                                    ; preds = %cond.false.142
  %76 = load i32, i32* %c, align 4
  %add144 = add i32 %76, 0
  %cmp145 = icmp ule i32 %add144, 2047
  br i1 %cmp145, label %cond.true.152, label %cond.false.160

cond.false.147:                                   ; preds = %cond.false.142
  %77 = load i32, i32* %c, align 4
  %conv148 = sext i32 %77 to i64
  %add149 = add i64 %conv148, 0
  %cmp150 = icmp ule i64 %add149, 2047
  br i1 %cmp150, label %cond.true.152, label %cond.false.160

cond.true.152:                                    ; preds = %cond.false.147, %cond.true.143
  %78 = load i32, i32* %c, align 4
  %shr153 = ashr i32 %78, 6
  %or = or i32 192, %shr153
  %conv154 = trunc i32 %or to i8
  %79 = load i8*, i8** %p.addr, align 8
  %arrayidx155 = getelementptr inbounds i8, i8* %79, i64 0
  store i8 %conv154, i8* %arrayidx155, align 1
  %80 = load i32, i32* %c, align 4
  %and156 = and i32 %80, 63
  %or157 = or i32 128, %and156
  %conv158 = trunc i32 %or157 to i8
  %81 = load i8*, i8** %p.addr, align 8
  %arrayidx159 = getelementptr inbounds i8, i8* %81, i64 1
  store i8 %conv158, i8* %arrayidx159, align 1
  br label %cond.end.186

cond.false.160:                                   ; preds = %cond.false.147, %cond.true.143
  br i1 true, label %cond.true.161, label %cond.false.165

cond.true.161:                                    ; preds = %cond.false.160
  %82 = load i32, i32* %c, align 4
  %add162 = add i32 %82, 0
  %cmp163 = icmp ule i32 %add162, 65535
  br i1 %cmp163, label %cond.true.170, label %cond.false.184

cond.false.165:                                   ; preds = %cond.false.160
  %83 = load i32, i32* %c, align 4
  %conv166 = sext i32 %83 to i64
  %add167 = add i64 %conv166, 0
  %cmp168 = icmp ule i64 %add167, 65535
  br i1 %cmp168, label %cond.true.170, label %cond.false.184

cond.true.170:                                    ; preds = %cond.false.165, %cond.true.161
  %84 = load i32, i32* %c, align 4
  %shr171 = ashr i32 %84, 12
  %or172 = or i32 224, %shr171
  %conv173 = trunc i32 %or172 to i8
  %85 = load i8*, i8** %p.addr, align 8
  %arrayidx174 = getelementptr inbounds i8, i8* %85, i64 0
  store i8 %conv173, i8* %arrayidx174, align 1
  %86 = load i32, i32* %c, align 4
  %shr175 = ashr i32 %86, 6
  %and176 = and i32 %shr175, 63
  %or177 = or i32 128, %and176
  %conv178 = trunc i32 %or177 to i8
  %87 = load i8*, i8** %p.addr, align 8
  %arrayidx179 = getelementptr inbounds i8, i8* %87, i64 1
  store i8 %conv178, i8* %arrayidx179, align 1
  %88 = load i32, i32* %c, align 4
  %and180 = and i32 %88, 63
  %or181 = or i32 128, %and180
  %conv182 = trunc i32 %or181 to i8
  %89 = load i8*, i8** %p.addr, align 8
  %arrayidx183 = getelementptr inbounds i8, i8* %89, i64 2
  store i8 %conv182, i8* %arrayidx183, align 1
  br label %cond.end

cond.false.184:                                   ; preds = %cond.false.165, %cond.true.161
  %90 = load i32, i32* %c, align 4
  %91 = load i8*, i8** %p.addr, align 8
  %call185 = call i32 @char_string(i32 %90, i8* %91)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.184, %cond.true.170
  %cond = phi i32 [ 3, %cond.true.170 ], [ %call185, %cond.false.184 ]
  br label %cond.end.186

cond.end.186:                                     ; preds = %cond.end, %cond.true.152
  %cond187 = phi i32 [ 2, %cond.true.152 ], [ %cond, %cond.end ]
  br label %cond.end.188

cond.end.188:                                     ; preds = %cond.end.186, %cond.true.140
  %cond189 = phi i32 [ 1, %cond.true.140 ], [ %cond187, %cond.end.186 ]
  %92 = load i8*, i8** %p.addr, align 8
  %idx.ext190 = sext i32 %cond189 to i64
  %add.ptr191 = getelementptr inbounds i8, i8* %92, i64 %idx.ext190
  store i8* %add.ptr191, i8** %p.addr, align 8
  br label %if.end.192

if.end.192:                                       ; preds = %cond.end.188, %if.then.129
  br label %if.end.193

if.end.193:                                       ; preds = %if.end.192, %if.then.122
  br label %if.end.194

if.end.194:                                       ; preds = %if.end.193, %if.then.115
  br label %if.end.195

if.end.195:                                       ; preds = %if.end.194, %if.end.111
  %93 = load i8*, i8** %p.addr, align 8
  store i8* %93, i8** %retval
  br label %return

return:                                           ; preds = %if.end.195, %if.then
  %94 = load i8*, i8** %retval
  ret i8* %94
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

declare i32 @char_string(i32, i8*) #1

declare i64 @make_lisp_ptr(i8*, i32) #1

declare i64 @concat3(i64, i64, i64) #1

declare i64 @make_specified_string(i8*, i64, i64, i1 zeroext) #1

declare i64 @SBYTES(i64) #1

declare i64 @SYMBOL_NAME(i64) #1

declare i8* @record_xmalloc(i64) #1

declare i64 @esprintf(i8*, i8*, ...) #1

declare i64 @Fsymbol_name(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Ftext_char_description(i64 %character) #0 {
entry:
  %retval = alloca i64, align 8
  %character.addr = alloca i64, align 8
  %str = alloca [6 x i8], align 1
  %c = alloca i32, align 4
  %len = alloca i32, align 4
  store i64 %character, i64* %character.addr, align 8
  %0 = load i64, i64* %character.addr, align 8
  %call = call zeroext i1 @NATNUMP(i64 %0)
  br i1 %call, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %character.addr, align 8
  %shr = ashr i64 %1, 2
  %cmp = icmp sle i64 %shr, 4194303
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 260)
  %2 = load i64, i64* %character.addr, align 8
  %3 = call i64 @wrong_type_argument(i64 %call1, i64 %2) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %4, %cond.true
  %5 = load i64, i64* %character.addr, align 8
  %shr2 = ashr i64 %5, 2
  %conv = trunc i64 %shr2 to i32
  store i32 %conv, i32* %c, align 4
  br i1 true, label %cond.true.3, label %cond.false.6

cond.true.3:                                      ; preds = %cond.end
  %6 = load i32, i32* %c, align 4
  %add = add i32 %6, 0
  %cmp4 = icmp ult i32 %add, 128
  br i1 %cmp4, label %if.end, label %if.then

cond.false.6:                                     ; preds = %cond.end
  %7 = load i32, i32* %c, align 4
  %conv7 = sext i32 %7 to i64
  %add8 = add i64 %conv7, 0
  %cmp9 = icmp ult i64 %add8, 128
  br i1 %cmp9, label %if.end, label %if.then

if.then:                                          ; preds = %cond.false.6, %cond.true.3
  br i1 true, label %cond.true.11, label %cond.false.15

cond.true.11:                                     ; preds = %if.then
  %8 = load i32, i32* %c, align 4
  %add12 = add i32 %8, 0
  %cmp13 = icmp ule i32 %add12, 127
  br i1 %cmp13, label %cond.true.20, label %cond.false.22

cond.false.15:                                    ; preds = %if.then
  %9 = load i32, i32* %c, align 4
  %conv16 = sext i32 %9 to i64
  %add17 = add i64 %conv16, 0
  %cmp18 = icmp ule i64 %add17, 127
  br i1 %cmp18, label %cond.true.20, label %cond.false.22

cond.true.20:                                     ; preds = %cond.false.15, %cond.true.11
  %10 = load i32, i32* %c, align 4
  %conv21 = trunc i32 %10 to i8
  %arraydecay = getelementptr inbounds [6 x i8], [6 x i8]* %str, i32 0, i32 0
  %arrayidx = getelementptr inbounds i8, i8* %arraydecay, i64 0
  store i8 %conv21, i8* %arrayidx, align 1
  br label %cond.end.74

cond.false.22:                                    ; preds = %cond.false.15, %cond.true.11
  br i1 true, label %cond.true.23, label %cond.false.27

cond.true.23:                                     ; preds = %cond.false.22
  %11 = load i32, i32* %c, align 4
  %add24 = add i32 %11, 0
  %cmp25 = icmp ule i32 %add24, 2047
  br i1 %cmp25, label %cond.true.32, label %cond.false.41

cond.false.27:                                    ; preds = %cond.false.22
  %12 = load i32, i32* %c, align 4
  %conv28 = sext i32 %12 to i64
  %add29 = add i64 %conv28, 0
  %cmp30 = icmp ule i64 %add29, 2047
  br i1 %cmp30, label %cond.true.32, label %cond.false.41

cond.true.32:                                     ; preds = %cond.false.27, %cond.true.23
  %13 = load i32, i32* %c, align 4
  %shr33 = ashr i32 %13, 6
  %or = or i32 192, %shr33
  %conv34 = trunc i32 %or to i8
  %arraydecay35 = getelementptr inbounds [6 x i8], [6 x i8]* %str, i32 0, i32 0
  %arrayidx36 = getelementptr inbounds i8, i8* %arraydecay35, i64 0
  store i8 %conv34, i8* %arrayidx36, align 1
  %14 = load i32, i32* %c, align 4
  %and = and i32 %14, 63
  %or37 = or i32 128, %and
  %conv38 = trunc i32 %or37 to i8
  %arraydecay39 = getelementptr inbounds [6 x i8], [6 x i8]* %str, i32 0, i32 0
  %arrayidx40 = getelementptr inbounds i8, i8* %arraydecay39, i64 1
  store i8 %conv38, i8* %arrayidx40, align 1
  br label %cond.end.72

cond.false.41:                                    ; preds = %cond.false.27, %cond.true.23
  br i1 true, label %cond.true.42, label %cond.false.46

cond.true.42:                                     ; preds = %cond.false.41
  %15 = load i32, i32* %c, align 4
  %add43 = add i32 %15, 0
  %cmp44 = icmp ule i32 %add43, 65535
  br i1 %cmp44, label %cond.true.51, label %cond.false.68

cond.false.46:                                    ; preds = %cond.false.41
  %16 = load i32, i32* %c, align 4
  %conv47 = sext i32 %16 to i64
  %add48 = add i64 %conv47, 0
  %cmp49 = icmp ule i64 %add48, 65535
  br i1 %cmp49, label %cond.true.51, label %cond.false.68

cond.true.51:                                     ; preds = %cond.false.46, %cond.true.42
  %17 = load i32, i32* %c, align 4
  %shr52 = ashr i32 %17, 12
  %or53 = or i32 224, %shr52
  %conv54 = trunc i32 %or53 to i8
  %arraydecay55 = getelementptr inbounds [6 x i8], [6 x i8]* %str, i32 0, i32 0
  %arrayidx56 = getelementptr inbounds i8, i8* %arraydecay55, i64 0
  store i8 %conv54, i8* %arrayidx56, align 1
  %18 = load i32, i32* %c, align 4
  %shr57 = ashr i32 %18, 6
  %and58 = and i32 %shr57, 63
  %or59 = or i32 128, %and58
  %conv60 = trunc i32 %or59 to i8
  %arraydecay61 = getelementptr inbounds [6 x i8], [6 x i8]* %str, i32 0, i32 0
  %arrayidx62 = getelementptr inbounds i8, i8* %arraydecay61, i64 1
  store i8 %conv60, i8* %arrayidx62, align 1
  %19 = load i32, i32* %c, align 4
  %and63 = and i32 %19, 63
  %or64 = or i32 128, %and63
  %conv65 = trunc i32 %or64 to i8
  %arraydecay66 = getelementptr inbounds [6 x i8], [6 x i8]* %str, i32 0, i32 0
  %arrayidx67 = getelementptr inbounds i8, i8* %arraydecay66, i64 2
  store i8 %conv65, i8* %arrayidx67, align 1
  br label %cond.end.71

cond.false.68:                                    ; preds = %cond.false.46, %cond.true.42
  %20 = load i32, i32* %c, align 4
  %arraydecay69 = getelementptr inbounds [6 x i8], [6 x i8]* %str, i32 0, i32 0
  %call70 = call i32 @char_string(i32 %20, i8* %arraydecay69)
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.false.68, %cond.true.51
  %cond = phi i32 [ 3, %cond.true.51 ], [ %call70, %cond.false.68 ]
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.end.71, %cond.true.32
  %cond73 = phi i32 [ 2, %cond.true.32 ], [ %cond, %cond.end.71 ]
  br label %cond.end.74

cond.end.74:                                      ; preds = %cond.end.72, %cond.true.20
  %cond75 = phi i32 [ 1, %cond.true.20 ], [ %cond73, %cond.end.72 ]
  store i32 %cond75, i32* %len, align 4
  %arraydecay76 = getelementptr inbounds [6 x i8], [6 x i8]* %str, i32 0, i32 0
  %21 = load i32, i32* %len, align 4
  %conv77 = sext i32 %21 to i64
  %call78 = call i64 @make_multibyte_string(i8* %arraydecay76, i64 1, i64 %conv77)
  store i64 %call78, i64* %retval
  br label %return

if.end:                                           ; preds = %cond.false.6, %cond.true.3
  %22 = load i32, i32* %c, align 4
  %and79 = and i32 %22, 255
  %arraydecay80 = getelementptr inbounds [6 x i8], [6 x i8]* %str, i32 0, i32 0
  %call81 = call i8* @push_text_char_description(i32 %and79, i8* %arraydecay80)
  store i8 0, i8* %call81, align 1
  %arraydecay82 = getelementptr inbounds [6 x i8], [6 x i8]* %str, i32 0, i32 0
  %call83 = call i64 @build_string(i8* %arraydecay82)
  store i64 %call83, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %cond.end.74
  %23 = load i64, i64* %retval
  ret i64 %23
}

declare i64 @make_multibyte_string(i8*, i64, i64) #1

; Function Attrs: nounwind uwtable
define internal i8* @push_text_char_description(i32 %c, i8* %p) #0 {
entry:
  %c.addr = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  store i32 %c, i32* %c.addr, align 4
  store i8* %p, i8** %p.addr, align 8
  %0 = load i32, i32* %c.addr, align 4
  %cmp = icmp uge i32 %0, 128
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %p.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** %p.addr, align 8
  store i8 77, i8* %1, align 1
  %2 = load i8*, i8** %p.addr, align 8
  %incdec.ptr1 = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr1, i8** %p.addr, align 8
  store i8 45, i8* %2, align 1
  %3 = load i32, i32* %c.addr, align 4
  %sub = sub i32 %3, 128
  store i32 %sub, i32* %c.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %c.addr, align 4
  %cmp2 = icmp ult i32 %4, 32
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %5 = load i8*, i8** %p.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr4, i8** %p.addr, align 8
  store i8 94, i8* %5, align 1
  %6 = load i32, i32* %c.addr, align 4
  %add = add i32 %6, 64
  %conv = trunc i32 %add to i8
  %7 = load i8*, i8** %p.addr, align 8
  %incdec.ptr5 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr5, i8** %p.addr, align 8
  store i8 %conv, i8* %7, align 1
  br label %if.end.15

if.else:                                          ; preds = %if.end
  %8 = load i32, i32* %c.addr, align 4
  %cmp6 = icmp eq i32 %8, 127
  br i1 %cmp6, label %if.then.8, label %if.else.11

if.then.8:                                        ; preds = %if.else
  %9 = load i8*, i8** %p.addr, align 8
  %incdec.ptr9 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr9, i8** %p.addr, align 8
  store i8 94, i8* %9, align 1
  %10 = load i8*, i8** %p.addr, align 8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr10, i8** %p.addr, align 8
  store i8 63, i8* %10, align 1
  br label %if.end.14

if.else.11:                                       ; preds = %if.else
  %11 = load i32, i32* %c.addr, align 4
  %conv12 = trunc i32 %11 to i8
  %12 = load i8*, i8** %p.addr, align 8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr13, i8** %p.addr, align 8
  store i8 %conv12, i8* %12, align 1
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.11, %if.then.8
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then.3
  %13 = load i8*, i8** %p.addr, align 8
  ret i8* %13
}

; Function Attrs: nounwind uwtable
define i64 @Fwhere_is_internal(i64 %definition, i64 %keymap, i64 %firstonly, i64 %noindirect, i64 %no_remap) #0 {
entry:
  %retval = alloca i64, align 8
  %definition.addr = alloca i64, align 8
  %keymap.addr = alloca i64, align 8
  %firstonly.addr = alloca i64, align 8
  %noindirect.addr = alloca i64, align 8
  %no_remap.addr = alloca i64, align 8
  %keymaps = alloca i64, align 8
  %sequences = alloca i64, align 8
  %found = alloca i64, align 8
  %nomenus = alloca i8, align 1
  %remapped_sequences = alloca i64, align 8
  %remapped = alloca i8, align 1
  %tem = alloca i64, align 8
  %sequence = alloca i64, align 8
  %function = alloca i64, align 8
  %seqs = alloca i64, align 8
  %tem1 = alloca i64, align 8
  %bindings = alloca i64, align 8
  store i64 %definition, i64* %definition.addr, align 8
  store i64 %keymap, i64* %keymap.addr, align 8
  store i64 %firstonly, i64* %firstonly.addr, align 8
  store i64 %noindirect, i64* %noindirect.addr, align 8
  store i64 %no_remap, i64* %no_remap.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %sequences, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* %found, align 8
  %0 = load i64, i64* %firstonly.addr, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call2
  br i1 %cmp, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %1 = load i64, i64* %firstonly.addr, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 705)
  %cmp4 = icmp eq i64 %1, %call3
  %lnot = xor i1 %cmp4, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  %frombool = zext i1 %2 to i8
  store i8 %frombool, i8* %nomenus, align 1
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call5, i64* %remapped_sequences, align 8
  store i8 0, i8* %remapped, align 1
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call6, i64* %tem, align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 326), align 8
  %call7 = call i32 @parse_solitary_modifier(i64 %3)
  store i32 %call7, i32* @where_is_preferred_modifier, align 4
  %4 = load i64, i64* %keymap.addr, align 8
  %and = and i64 %4, 7
  %conv = trunc i64 %and to i32
  %cmp8 = icmp eq i32 %conv, 3
  br i1 %cmp8, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %land.end
  %5 = load i64, i64* %keymap.addr, align 8
  %sub = sub nsw i64 %5, 3
  %6 = inttoptr i64 %sub to i8*
  %7 = bitcast i8* %6 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %7, i32 0, i32 0
  %8 = load i64, i64* %car, align 8
  %call10 = call i64 @get_keymap(i64 %8, i1 zeroext false, i1 zeroext false)
  %call11 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp12 = icmp eq i64 %call10, %call11
  br i1 %cmp12, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %9 = load i64, i64* %keymap.addr, align 8
  store i64 %9, i64* %keymaps, align 8
  br label %if.end.23

if.else:                                          ; preds = %land.lhs.true, %land.end
  %10 = load i64, i64* %keymap.addr, align 8
  %call14 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp15 = icmp eq i64 %10, %call14
  br i1 %cmp15, label %if.else.19, label %if.then.17

if.then.17:                                       ; preds = %if.else
  %11 = load i64, i64* %keymap.addr, align 8
  %12 = load i64, i64* @current_global_map, align 8
  %call18 = call i64 @list2(i64 %11, i64 %12)
  store i64 %call18, i64* %keymaps, align 8
  br label %if.end

if.else.19:                                       ; preds = %if.else
  %call20 = call i64 @builtin_lisp_symbol(i32 0)
  %call21 = call i64 @builtin_lisp_symbol(i32 0)
  %call22 = call i64 @Fcurrent_active_maps(i64 %call20, i64 %call21)
  store i64 %call22, i64* %keymaps, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.19, %if.then.17
  br label %if.end.23

if.end.23:                                        ; preds = %if.end, %if.then
  %13 = load i64, i64* %definition.addr, align 8
  %call24 = call i64 @builtin_lisp_symbol(i32 0)
  %14 = load i64, i64* %keymaps, align 8
  %call25 = call i64 @Fcommand_remapping(i64 %13, i64 %call24, i64 %14)
  store i64 %call25, i64* %tem, align 8
  %15 = load i64, i64* %no_remap.addr, align 8
  %call26 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp27 = icmp eq i64 %15, %call26
  br i1 %cmp27, label %land.lhs.true.29, label %if.end.34

land.lhs.true.29:                                 ; preds = %if.end.23
  %16 = load i64, i64* %tem, align 8
  %call30 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp31 = icmp eq i64 %16, %call30
  br i1 %cmp31, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %land.lhs.true.29
  %17 = load i64, i64* %tem, align 8
  store i64 %17, i64* %definition.addr, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %land.lhs.true.29, %if.end.23
  %18 = load i64, i64* %definition.addr, align 8
  %and35 = and i64 %18, 7
  %conv36 = trunc i64 %and35 to i32
  %cmp37 = icmp eq i32 %conv36, 0
  br i1 %cmp37, label %land.lhs.true.39, label %if.end.72

land.lhs.true.39:                                 ; preds = %if.end.34
  %19 = load i64, i64* %firstonly.addr, align 8
  %call40 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp41 = icmp eq i64 %19, %call40
  br i1 %cmp41, label %if.end.72, label %land.lhs.true.43

land.lhs.true.43:                                 ; preds = %land.lhs.true.39
  %20 = load i64, i64* %definition.addr, align 8
  %call44 = call i64 @builtin_lisp_symbol(i32 6)
  %call45 = call i64 @Fget(i64 %20, i64 %call44)
  store i64 %call45, i64* %tem, align 8
  %call46 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp47 = icmp eq i64 %call45, %call46
  br i1 %cmp47, label %if.end.72, label %if.then.49

if.then.49:                                       ; preds = %land.lhs.true.43
  br label %while.cond

while.cond:                                       ; preds = %if.end.65, %if.then.49
  %21 = load i64, i64* %tem, align 8
  %and50 = and i64 %21, 7
  %conv51 = trunc i64 %and50 to i32
  %cmp52 = icmp eq i32 %conv51, 3
  br i1 %cmp52, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %22 = load i64, i64* %keymaps, align 8
  %23 = load i64, i64* %tem, align 8
  %sub54 = sub nsw i64 %23, 3
  %24 = inttoptr i64 %sub54 to i8*
  %25 = bitcast i8* %24 to %struct.Lisp_Cons*
  %car55 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %25, i32 0, i32 0
  %26 = load i64, i64* %car55, align 8
  %call56 = call i64 @builtin_lisp_symbol(i32 0)
  %call57 = call i64 @shadow_lookup(i64 %22, i64 %26, i64 %call56, i1 zeroext false)
  %27 = load i64, i64* %definition.addr, align 8
  %cmp58 = icmp eq i64 %call57, %27
  br i1 %cmp58, label %if.then.60, label %if.else.63

if.then.60:                                       ; preds = %while.body
  %28 = load i64, i64* %tem, align 8
  %sub61 = sub nsw i64 %28, 3
  %29 = inttoptr i64 %sub61 to i8*
  %30 = bitcast i8* %29 to %struct.Lisp_Cons*
  %car62 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %30, i32 0, i32 0
  %31 = load i64, i64* %car62, align 8
  store i64 %31, i64* %retval
  br label %return

if.else.63:                                       ; preds = %while.body
  %32 = load i64, i64* %tem, align 8
  %sub64 = sub nsw i64 %32, 3
  %33 = inttoptr i64 %sub64 to i8*
  %34 = bitcast i8* %33 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %34, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %35 = load i64, i64* %cdr, align 8
  store i64 %35, i64* %tem, align 8
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.63
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %36 = load i64, i64* %keymaps, align 8
  %37 = load i64, i64* %tem, align 8
  %call66 = call i64 @builtin_lisp_symbol(i32 0)
  %call67 = call i64 @shadow_lookup(i64 %36, i64 %37, i64 %call66, i1 zeroext false)
  %38 = load i64, i64* %definition.addr, align 8
  %cmp68 = icmp eq i64 %call67, %38
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %while.end
  %39 = load i64, i64* %tem, align 8
  store i64 %39, i64* %retval
  br label %return

if.end.71:                                        ; preds = %while.end
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %land.lhs.true.43, %land.lhs.true.39, %if.end.34
  %40 = load i64, i64* %definition.addr, align 8
  %41 = load i64, i64* %keymaps, align 8
  %42 = load i64, i64* %noindirect.addr, align 8
  %call73 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp74 = icmp eq i64 %42, %call73
  %lnot76 = xor i1 %cmp74, true
  %43 = load i8, i8* %nomenus, align 1
  %tobool = trunc i8 %43 to i1
  %call77 = call i64 @where_is_internal(i64 %40, i64 %41, i1 zeroext %lnot76, i1 zeroext %tobool)
  %call78 = call i64 @Freverse(i64 %call77)
  store i64 %call78, i64* %sequences, align 8
  br label %while.cond.79

while.cond.79:                                    ; preds = %if.end.177, %if.then.129, %if.then.104, %if.end.72
  %44 = load i64, i64* %sequences, align 8
  %and80 = and i64 %44, 7
  %conv81 = trunc i64 %and80 to i32
  %cmp82 = icmp eq i32 %conv81, 3
  br i1 %cmp82, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond.79
  %45 = load i8, i8* %remapped, align 1
  %tobool84 = trunc i8 %45 to i1
  br i1 %tobool84, label %land.end.90, label %land.rhs.85

land.rhs.85:                                      ; preds = %lor.rhs
  %46 = load i64, i64* %remapped_sequences, align 8
  store i64 %46, i64* %sequences, align 8
  store i8 1, i8* %remapped, align 1
  %47 = load i64, i64* %sequences, align 8
  %and86 = and i64 %47, 7
  %conv87 = trunc i64 %and86 to i32
  %cmp88 = icmp eq i32 %conv87, 3
  br label %land.end.90

land.end.90:                                      ; preds = %land.rhs.85, %lor.rhs
  %48 = phi i1 [ false, %lor.rhs ], [ %cmp88, %land.rhs.85 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end.90, %while.cond.79
  %49 = phi i1 [ true, %while.cond.79 ], [ %48, %land.end.90 ]
  br i1 %49, label %while.body.91, label %while.end.178

while.body.91:                                    ; preds = %lor.end
  %50 = load i64, i64* %sequences, align 8
  %sub92 = sub nsw i64 %50, 3
  %51 = inttoptr i64 %sub92 to i8*
  %52 = bitcast i8* %51 to %struct.Lisp_Cons*
  %car93 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %52, i32 0, i32 0
  %53 = load i64, i64* %car93, align 8
  store i64 %53, i64* %sequence, align 8
  %54 = load i64, i64* %sequences, align 8
  %sub94 = sub nsw i64 %54, 3
  %55 = inttoptr i64 %sub94 to i8*
  %56 = bitcast i8* %55 to %struct.Lisp_Cons*
  %u95 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %56, i32 0, i32 1
  %cdr96 = bitcast %union.anon* %u95 to i64*
  %57 = load i64, i64* %cdr96, align 8
  store i64 %57, i64* %sequences, align 8
  %58 = load i64, i64* %keymaps, align 8
  %59 = load i64, i64* %sequence, align 8
  %call97 = call i64 @builtin_lisp_symbol(i32 0)
  %60 = load i8, i8* %remapped, align 1
  %tobool98 = trunc i8 %60 to i1
  %call99 = call i64 @shadow_lookup(i64 %58, i64 %59, i64 %call97, i1 zeroext %tobool98)
  %61 = load i64, i64* %definition.addr, align 8
  %call100 = call i64 @Fequal(i64 %call99, i64 %61)
  %call101 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp102 = icmp eq i64 %call100, %call101
  br i1 %cmp102, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %while.body.91
  br label %while.cond.79

if.end.105:                                       ; preds = %while.body.91
  %62 = load i64, i64* %no_remap.addr, align 8
  %call106 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp107 = icmp eq i64 %62, %call106
  br i1 %cmp107, label %land.lhs.true.109, label %if.end.138

land.lhs.true.109:                                ; preds = %if.end.105
  %63 = load i8, i8* %remapped, align 1
  %tobool110 = trunc i8 %63 to i1
  br i1 %tobool110, label %if.end.138, label %land.lhs.true.111

land.lhs.true.111:                                ; preds = %land.lhs.true.109
  %64 = load i64, i64* %sequence, align 8
  %call112 = call zeroext i1 @VECTORP(i64 %64)
  br i1 %call112, label %land.lhs.true.114, label %if.end.138

land.lhs.true.114:                                ; preds = %land.lhs.true.111
  %65 = load i64, i64* %sequence, align 8
  %call115 = call i64 @ASIZE(i64 %65)
  %cmp116 = icmp eq i64 %call115, 2
  br i1 %cmp116, label %land.lhs.true.118, label %if.end.138

land.lhs.true.118:                                ; preds = %land.lhs.true.114
  %66 = load i64, i64* %sequence, align 8
  %call119 = call i64 @AREF(i64 %66, i64 0)
  %call120 = call i64 @builtin_lisp_symbol(i32 805)
  %cmp121 = icmp eq i64 %call119, %call120
  br i1 %cmp121, label %land.lhs.true.123, label %if.end.138

land.lhs.true.123:                                ; preds = %land.lhs.true.118
  %67 = load i64, i64* %sequence, align 8
  %call124 = call i64 @AREF(i64 %67, i64 1)
  store i64 %call124, i64* %function, align 8
  %68 = load i64, i64* %function, align 8
  %and125 = and i64 %68, 7
  %conv126 = trunc i64 %and125 to i32
  %cmp127 = icmp eq i32 %conv126, 0
  br i1 %cmp127, label %if.then.129, label %if.end.138

if.then.129:                                      ; preds = %land.lhs.true.123
  %69 = load i64, i64* %function, align 8
  %70 = load i64, i64* %keymaps, align 8
  %71 = load i64, i64* %noindirect.addr, align 8
  %call130 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp131 = icmp eq i64 %71, %call130
  %lnot133 = xor i1 %cmp131, true
  %72 = load i8, i8* %nomenus, align 1
  %tobool134 = trunc i8 %72 to i1
  %call135 = call i64 @where_is_internal(i64 %69, i64 %70, i1 zeroext %lnot133, i1 zeroext %tobool134)
  store i64 %call135, i64* %seqs, align 8
  %73 = load i64, i64* %seqs, align 8
  %call136 = call i64 @Freverse(i64 %73)
  %74 = load i64, i64* %remapped_sequences, align 8
  %call137 = call i64 @nconc2(i64 %call136, i64 %74)
  store i64 %call137, i64* %remapped_sequences, align 8
  br label %while.cond.79

if.end.138:                                       ; preds = %land.lhs.true.123, %land.lhs.true.118, %land.lhs.true.114, %land.lhs.true.111, %land.lhs.true.109, %if.end.105
  %75 = load i64, i64* %sequence, align 8
  %call139 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp140 = icmp eq i64 %75, %call139
  br i1 %cmp140, label %if.end.155, label %if.then.142

if.then.142:                                      ; preds = %if.end.138
  %76 = load i64, i64* %sequence, align 8
  %77 = load i64, i64* %sequence, align 8
  %call143 = call i64 @ASIZE(i64 %77)
  %sub144 = sub nsw i64 %call143, 1
  %shl = shl i64 %sub144, 2
  %add = add i64 %shl, 2
  %call145 = call i64 @Faref(i64 %76, i64 %add)
  store i64 %call145, i64* %tem1, align 8
  %78 = load i64, i64* %tem1, align 8
  %call146 = call zeroext i1 @STRINGP(i64 %78)
  br i1 %call146, label %if.then.147, label %if.end.154

if.then.147:                                      ; preds = %if.then.142
  %79 = load i64, i64* %sequence, align 8
  %80 = load i64, i64* %sequence, align 8
  %call148 = call i64 @ASIZE(i64 %80)
  %sub149 = sub nsw i64 %call148, 1
  %shl150 = shl i64 %sub149, 2
  %add151 = add i64 %shl150, 2
  %call152 = call i64 @build_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0))
  %call153 = call i64 @Faset(i64 %79, i64 %add151, i64 %call152)
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.147, %if.then.142
  br label %if.end.155

if.end.155:                                       ; preds = %if.end.154, %if.end.138
  %81 = load i64, i64* %sequence, align 8
  %82 = load i64, i64* %found, align 8
  %call156 = call i64 @Fmember(i64 %81, i64 %82)
  %call157 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp158 = icmp eq i64 %call156, %call157
  br i1 %cmp158, label %if.then.160, label %if.end.162

if.then.160:                                      ; preds = %if.end.155
  %83 = load i64, i64* %sequence, align 8
  %84 = load i64, i64* %found, align 8
  %call161 = call i64 @Fcons(i64 %83, i64 %84)
  store i64 %call161, i64* %found, align 8
  br label %if.end.162

if.end.162:                                       ; preds = %if.then.160, %if.end.155
  %85 = load i64, i64* %firstonly.addr, align 8
  %call163 = call i64 @builtin_lisp_symbol(i32 705)
  %cmp164 = icmp eq i64 %85, %call163
  br i1 %cmp164, label %if.then.166, label %if.else.167

if.then.166:                                      ; preds = %if.end.162
  %86 = load i64, i64* %sequence, align 8
  store i64 %86, i64* %retval
  br label %return

if.else.167:                                      ; preds = %if.end.162
  %87 = load i64, i64* %firstonly.addr, align 8
  %call168 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp169 = icmp eq i64 %87, %call168
  br i1 %cmp169, label %if.end.176, label %land.lhs.true.171

land.lhs.true.171:                                ; preds = %if.else.167
  %88 = load i64, i64* %sequence, align 8
  %call172 = call i32 @preferred_sequence_p(i64 %88)
  %cmp173 = icmp eq i32 2, %call172
  br i1 %cmp173, label %if.then.175, label %if.end.176

if.then.175:                                      ; preds = %land.lhs.true.171
  %89 = load i64, i64* %sequence, align 8
  store i64 %89, i64* %retval
  br label %return

if.end.176:                                       ; preds = %land.lhs.true.171, %if.else.167
  br label %if.end.177

if.end.177:                                       ; preds = %if.end.176
  br label %while.cond.79

while.end.178:                                    ; preds = %lor.end
  %90 = load i64, i64* %found, align 8
  %call179 = call i64 @Fnreverse(i64 %90)
  store i64 %call179, i64* %found, align 8
  %91 = load i64, i64* %firstonly.addr, align 8
  %call180 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp181 = icmp eq i64 %91, %call180
  br i1 %cmp181, label %if.then.183, label %if.else.184

if.then.183:                                      ; preds = %while.end.178
  %92 = load i64, i64* %found, align 8
  store i64 %92, i64* %retval
  br label %return

if.else.184:                                      ; preds = %while.end.178
  %93 = load i32, i32* @where_is_preferred_modifier, align 4
  %cmp185 = icmp eq i32 %93, 0
  br i1 %cmp185, label %if.then.187, label %if.else.189

if.then.187:                                      ; preds = %if.else.184
  %94 = load i64, i64* %found, align 8
  %call188 = call i64 @Fcar(i64 %94)
  store i64 %call188, i64* %retval
  br label %return

if.else.189:                                      ; preds = %if.else.184
  %95 = load i64, i64* %found, align 8
  store i64 %95, i64* %bindings, align 8
  br label %while.cond.190

while.cond.190:                                   ; preds = %if.end.207, %if.else.189
  %96 = load i64, i64* %bindings, align 8
  %and191 = and i64 %96, 7
  %conv192 = trunc i64 %and191 to i32
  %cmp193 = icmp eq i32 %conv192, 3
  br i1 %cmp193, label %while.body.195, label %while.end.208

while.body.195:                                   ; preds = %while.cond.190
  %97 = load i64, i64* %bindings, align 8
  %sub196 = sub nsw i64 %97, 3
  %98 = inttoptr i64 %sub196 to i8*
  %99 = bitcast i8* %98 to %struct.Lisp_Cons*
  %car197 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %99, i32 0, i32 0
  %100 = load i64, i64* %car197, align 8
  %call198 = call i32 @preferred_sequence_p(i64 %100)
  %tobool199 = icmp ne i32 %call198, 0
  br i1 %tobool199, label %if.then.200, label %if.else.203

if.then.200:                                      ; preds = %while.body.195
  %101 = load i64, i64* %bindings, align 8
  %sub201 = sub nsw i64 %101, 3
  %102 = inttoptr i64 %sub201 to i8*
  %103 = bitcast i8* %102 to %struct.Lisp_Cons*
  %car202 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %103, i32 0, i32 0
  %104 = load i64, i64* %car202, align 8
  store i64 %104, i64* %retval
  br label %return

if.else.203:                                      ; preds = %while.body.195
  %105 = load i64, i64* %bindings, align 8
  %sub204 = sub nsw i64 %105, 3
  %106 = inttoptr i64 %sub204 to i8*
  %107 = bitcast i8* %106 to %struct.Lisp_Cons*
  %u205 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %107, i32 0, i32 1
  %cdr206 = bitcast %union.anon* %u205 to i64*
  %108 = load i64, i64* %cdr206, align 8
  store i64 %108, i64* %bindings, align 8
  br label %if.end.207

if.end.207:                                       ; preds = %if.else.203
  br label %while.cond.190

while.end.208:                                    ; preds = %while.cond.190
  %109 = load i64, i64* %found, align 8
  %call209 = call i64 @Fcar(i64 %109)
  store i64 %call209, i64* %retval
  br label %return

return:                                           ; preds = %while.end.208, %if.then.200, %if.then.187, %if.then.183, %if.then.175, %if.then.166, %if.then.70, %if.then.60
  %110 = load i64, i64* %retval
  ret i64 %110
}

declare i32 @parse_solitary_modifier(i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @shadow_lookup(i64 %shadow, i64 %key, i64 %flag, i1 zeroext %remap) #0 {
entry:
  %retval = alloca i64, align 8
  %shadow.addr = alloca i64, align 8
  %key.addr = alloca i64, align 8
  %flag.addr = alloca i64, align 8
  %remap.addr = alloca i8, align 1
  %tail = alloca i64, align 8
  %value = alloca i64, align 8
  %remapping = alloca i64, align 8
  store i64 %shadow, i64* %shadow.addr, align 8
  store i64 %key, i64* %key.addr, align 8
  store i64 %flag, i64* %flag.addr, align 8
  %frombool = zext i1 %remap to i8
  store i8 %frombool, i8* %remap.addr, align 1
  %0 = load i64, i64* %shadow.addr, align 8
  store i64 %0, i64* %tail, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %tail, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %tail, align 8
  %sub = sub nsw i64 %2, 3
  %3 = inttoptr i64 %sub to i8*
  %4 = bitcast i8* %3 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %4, i32 0, i32 0
  %5 = load i64, i64* %car, align 8
  %6 = load i64, i64* %key.addr, align 8
  %7 = load i64, i64* %flag.addr, align 8
  %call = call i64 @Flookup_key(i64 %5, i64 %6, i64 %7)
  store i64 %call, i64* %value, align 8
  %8 = load i64, i64* %value, align 8
  %call2 = call zeroext i1 @NATNUMP(i64 %8)
  br i1 %call2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %9 = load i64, i64* %tail, align 8
  %sub3 = sub nsw i64 %9, 3
  %10 = inttoptr i64 %sub3 to i8*
  %11 = bitcast i8* %10 to %struct.Lisp_Cons*
  %car4 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %11, i32 0, i32 0
  %12 = load i64, i64* %car4, align 8
  %13 = load i64, i64* %key.addr, align 8
  %14 = load i64, i64* %value, align 8
  %call5 = call i64 @Fsubstring(i64 %13, i64 2, i64 %14)
  %15 = load i64, i64* %flag.addr, align 8
  %call6 = call i64 @Flookup_key(i64 %12, i64 %call5, i64 %15)
  store i64 %call6, i64* %value, align 8
  %16 = load i64, i64* %value, align 8
  %call7 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp8 = icmp eq i64 %16, %call7
  br i1 %cmp8, label %if.end, label %if.then.10

if.then.10:                                       ; preds = %if.then
  %call11 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call11, i64* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.30

if.else:                                          ; preds = %for.body
  %17 = load i64, i64* %value, align 8
  %call12 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp13 = icmp eq i64 %17, %call12
  br i1 %cmp13, label %if.end.29, label %if.then.15

if.then.15:                                       ; preds = %if.else
  %18 = load i8, i8* %remap.addr, align 1
  %tobool = trunc i8 %18 to i1
  br i1 %tobool, label %land.lhs.true, label %if.else.28

land.lhs.true:                                    ; preds = %if.then.15
  %19 = load i64, i64* %value, align 8
  %and17 = and i64 %19, 7
  %conv18 = trunc i64 %and17 to i32
  %cmp19 = icmp eq i32 %conv18, 0
  br i1 %cmp19, label %land.lhs.true.21, label %if.else.28

land.lhs.true.21:                                 ; preds = %land.lhs.true
  %20 = load i64, i64* %value, align 8
  %call22 = call i64 @builtin_lisp_symbol(i32 0)
  %21 = load i64, i64* %shadow.addr, align 8
  %call23 = call i64 @Fcommand_remapping(i64 %20, i64 %call22, i64 %21)
  store i64 %call23, i64* %remapping, align 8
  %22 = load i64, i64* %remapping, align 8
  %call24 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp25 = icmp eq i64 %22, %call24
  %lnot = xor i1 %cmp25, true
  br i1 %lnot, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %land.lhs.true.21
  %23 = load i64, i64* %remapping, align 8
  store i64 %23, i64* %retval
  br label %return

if.else.28:                                       ; preds = %land.lhs.true.21, %land.lhs.true, %if.then.15
  %24 = load i64, i64* %value, align 8
  store i64 %24, i64* %retval
  br label %return

if.end.29:                                        ; preds = %if.else
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.30
  %25 = load i64, i64* %tail, align 8
  %sub31 = sub nsw i64 %25, 3
  %26 = inttoptr i64 %sub31 to i8*
  %27 = bitcast i8* %26 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %27, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %28 = load i64, i64* %cdr, align 8
  store i64 %28, i64* %tail, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call32 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call32, i64* %retval
  br label %return

return:                                           ; preds = %for.end, %if.else.28, %if.then.27, %if.then.10
  %29 = load i64, i64* %retval
  ret i64 %29
}

declare i64 @Freverse(i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @where_is_internal(i64 %definition, i64 %keymaps, i1 zeroext %noindirect, i1 zeroext %nomenus) #0 {
entry:
  %retval = alloca i64, align 8
  %definition.addr = alloca i64, align 8
  %keymaps.addr = alloca i64, align 8
  %noindirect.addr = alloca i8, align 1
  %nomenus.addr = alloca i8, align 1
  %maps = alloca i64, align 8
  %found = alloca i64, align 8
  %data = alloca %struct.where_is_internal_data, align 8
  %this = alloca i64, align 8
  %map = alloca i64, align 8
  %tem = alloca i64, align 8
  %last = alloca i64, align 8
  %last_is_meta = alloca i8, align 1
  store i64 %definition, i64* %definition.addr, align 8
  store i64 %keymaps, i64* %keymaps.addr, align 8
  %frombool = zext i1 %noindirect to i8
  store i8 %frombool, i8* %noindirect.addr, align 1
  %frombool1 = zext i1 %nomenus to i8
  store i8 %frombool1, i8* %nomenus.addr, align 1
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %maps, align 8
  %0 = load i8, i8* %nomenus.addr, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %land.lhs.true, label %if.else.15

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, i8* %noindirect.addr, align 1
  %tobool2 = trunc i8 %1 to i1
  br i1 %tobool2, label %if.else.15, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %2 = load i64, i64* %keymaps.addr, align 8
  %3 = load i64, i64* @where_is_cache_keymaps, align 8
  %call3 = call i64 @Fequal(i64 %2, i64 %3)
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %call3, %call4
  br i1 %cmp, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call6, i64* @where_is_cache, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  %4 = load i64, i64* @where_is_cache, align 8
  %call7 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp8 = icmp eq i64 %4, %call7
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end
  %call10 = call i64 @Fmake_hash_table(i64 0, i64* null)
  store i64 %call10, i64* @where_is_cache, align 8
  %call11 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call11, i64* @where_is_cache_keymaps, align 8
  br label %if.end.14

if.else:                                          ; preds = %if.end
  %5 = load i64, i64* %definition.addr, align 8
  %6 = load i64, i64* @where_is_cache, align 8
  %call12 = call i64 @builtin_lisp_symbol(i32 0)
  %call13 = call i64 @Fgethash(i64 %5, i64 %6, i64 %call12)
  store i64 %call13, i64* %retval
  br label %return

if.end.14:                                        ; preds = %if.then.9
  br label %if.end.17

if.else.15:                                       ; preds = %land.lhs.true, %entry
  %call16 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call16, i64* @where_is_cache, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.15, %if.end.14
  %7 = load i64, i64* %keymaps.addr, align 8
  store i64 %7, i64* %found, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.17
  %8 = load i64, i64* %found, align 8
  %and = and i64 %8, 7
  %conv = trunc i64 %and to i32
  %cmp18 = icmp eq i32 %conv, 3
  br i1 %cmp18, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i64, i64* %maps, align 8
  %10 = load i64, i64* %found, align 8
  %sub = sub nsw i64 %10, 3
  %11 = inttoptr i64 %sub to i8*
  %12 = bitcast i8* %11 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %12, i32 0, i32 0
  %13 = load i64, i64* %car, align 8
  %call20 = call i64 @get_keymap(i64 %13, i1 zeroext true, i1 zeroext false)
  %call21 = call i64 @builtin_lisp_symbol(i32 0)
  %call22 = call i64 @Faccessible_keymaps(i64 %call20, i64 %call21)
  %call23 = call i64 @nconc2(i64 %9, i64 %call22)
  store i64 %call23, i64* %maps, align 8
  %14 = load i64, i64* %found, align 8
  %sub24 = sub nsw i64 %14, 3
  %15 = inttoptr i64 %sub24 to i8*
  %16 = bitcast i8* %15 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %16, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %17 = load i64, i64* %cdr, align 8
  store i64 %17, i64* %found, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call25 = call i64 @builtin_lisp_symbol(i32 0)
  %sequences = getelementptr inbounds %struct.where_is_internal_data, %struct.where_is_internal_data* %data, i32 0, i32 5
  store i64 %call25, i64* %sequences, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %18 = load i64, i64* %maps, align 8
  %and26 = and i64 %18, 7
  %conv27 = trunc i64 %and26 to i32
  %cmp28 = icmp eq i32 %conv27, 3
  br i1 %cmp28, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i64, i64* %maps, align 8
  %sub30 = sub nsw i64 %19, 3
  %20 = inttoptr i64 %sub30 to i8*
  %21 = bitcast i8* %20 to %struct.Lisp_Cons*
  %car31 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %21, i32 0, i32 0
  %22 = load i64, i64* %car31, align 8
  %call32 = call i64 @Fcar(i64 %22)
  store i64 %call32, i64* %this, align 8
  %23 = load i64, i64* %maps, align 8
  %sub33 = sub nsw i64 %23, 3
  %24 = inttoptr i64 %sub33 to i8*
  %25 = bitcast i8* %24 to %struct.Lisp_Cons*
  %car34 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %25, i32 0, i32 0
  %26 = load i64, i64* %car34, align 8
  %call35 = call i64 @Fcdr(i64 %26)
  store i64 %call35, i64* %map, align 8
  %27 = load i64, i64* %this, align 8
  %call36 = call i64 @Flength(i64 %27)
  %shr = ashr i64 %call36, 2
  %sub37 = sub nsw i64 %shr, 1
  %shl = shl i64 %sub37, 2
  %add = add i64 %shl, 2
  store i64 %add, i64* %last, align 8
  %28 = load i64, i64* %last, align 8
  %shr38 = ashr i64 %28, 2
  %cmp39 = icmp sge i64 %shr38, 0
  br i1 %cmp39, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.body
  %29 = load i64, i64* %this, align 8
  %30 = load i64, i64* %last, align 8
  %call41 = call i64 @Faref(i64 %29, i64 %30)
  %31 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 379), align 8
  %cmp42 = icmp eq i64 %call41, %31
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.body
  %32 = phi i1 [ false, %for.body ], [ %cmp42, %land.rhs ]
  %frombool44 = zext i1 %32 to i8
  store i8 %frombool44, i8* %last_is_meta, align 1
  %33 = load i8, i8* %nomenus.addr, align 1
  %tobool45 = trunc i8 %33 to i1
  br i1 %tobool45, label %land.lhs.true.47, label %if.end.66

land.lhs.true.47:                                 ; preds = %land.end
  %34 = load i64, i64* %last, align 8
  %shr48 = ashr i64 %34, 2
  %cmp49 = icmp sge i64 %shr48, 0
  br i1 %cmp49, label %land.lhs.true.51, label %if.end.66

land.lhs.true.51:                                 ; preds = %land.lhs.true.47
  %35 = load i64, i64* %this, align 8
  %call52 = call i64 @Faref(i64 %35, i64 2)
  store i64 %call52, i64* %tem, align 8
  %and53 = and i64 %call52, 7
  %conv54 = trunc i64 %and53 to i32
  %cmp55 = icmp eq i32 %conv54, 0
  br i1 %cmp55, label %land.lhs.true.57, label %if.end.66

land.lhs.true.57:                                 ; preds = %land.lhs.true.51
  %36 = load i64, i64* %tem, align 8
  %call58 = call i64 @parse_modifiers(i64 %36)
  %sub59 = sub nsw i64 %call58, 3
  %37 = inttoptr i64 %sub59 to i8*
  %38 = bitcast i8* %37 to %struct.Lisp_Cons*
  %car60 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %38, i32 0, i32 0
  %39 = load i64, i64* %car60, align 8
  %40 = load i64, i64* @Vmouse_events, align 8
  %call61 = call i64 @Fmemq(i64 %39, i64 %40)
  %call62 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp63 = icmp eq i64 %call61, %call62
  br i1 %cmp63, label %if.end.66, label %if.then.65

if.then.65:                                       ; preds = %land.lhs.true.57
  br label %for.inc

if.end.66:                                        ; preds = %land.lhs.true.57, %land.lhs.true.51, %land.lhs.true.47, %land.end
  br label %do.body

do.body:                                          ; preds = %if.end.66
  %41 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call67 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp68 = icmp eq i64 %41, %call67
  br i1 %cmp68, label %if.else.75, label %land.lhs.true.70

land.lhs.true.70:                                 ; preds = %do.body
  %42 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call71 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp72 = icmp eq i64 %42, %call71
  br i1 %cmp72, label %if.then.74, label %if.else.75

if.then.74:                                       ; preds = %land.lhs.true.70
  call void @process_quit_flag()
  br label %if.end.79

if.else.75:                                       ; preds = %land.lhs.true.70, %do.body
  %43 = load volatile i8, i8* @pending_signals, align 1
  %tobool76 = trunc i8 %43 to i1
  br i1 %tobool76, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %if.else.75
  call void @process_pending_signals()
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.77, %if.else.75
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.then.74
  br label %do.end

do.end:                                           ; preds = %if.end.79
  %44 = load i64, i64* %definition.addr, align 8
  %definition80 = getelementptr inbounds %struct.where_is_internal_data, %struct.where_is_internal_data* %data, i32 0, i32 0
  store i64 %44, i64* %definition80, align 8
  %45 = load i8, i8* %noindirect.addr, align 1
  %tobool81 = trunc i8 %45 to i1
  %noindirect82 = getelementptr inbounds %struct.where_is_internal_data, %struct.where_is_internal_data* %data, i32 0, i32 4
  %frombool83 = zext i1 %tobool81 to i8
  store i8 %frombool83, i8* %noindirect82, align 1
  %46 = load i64, i64* %this, align 8
  %this84 = getelementptr inbounds %struct.where_is_internal_data, %struct.where_is_internal_data* %data, i32 0, i32 1
  store i64 %46, i64* %this84, align 8
  %47 = load i64, i64* %last, align 8
  %last85 = getelementptr inbounds %struct.where_is_internal_data, %struct.where_is_internal_data* %data, i32 0, i32 2
  store i64 %47, i64* %last85, align 8
  %48 = load i8, i8* %last_is_meta, align 1
  %tobool86 = trunc i8 %48 to i1
  %last_is_meta87 = getelementptr inbounds %struct.where_is_internal_data, %struct.where_is_internal_data* %data, i32 0, i32 3
  %frombool88 = zext i1 %tobool86 to i8
  store i8 %frombool88, i8* %last_is_meta87, align 1
  %49 = load i64, i64* %map, align 8
  %and89 = and i64 %49, 7
  %conv90 = trunc i64 %and89 to i32
  %cmp91 = icmp eq i32 %conv90, 3
  br i1 %cmp91, label %if.then.93, label %if.end.95

if.then.93:                                       ; preds = %do.end
  %50 = load i64, i64* %map, align 8
  %call94 = call i64 @builtin_lisp_symbol(i32 0)
  %51 = bitcast %struct.where_is_internal_data* %data to i8*
  call void @map_keymap(i64 %50, void (i64, i64, i64, i8*)* @where_is_internal_1, i64 %call94, i8* %51, i1 zeroext false)
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.93, %do.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.95, %if.then.65
  %52 = load i64, i64* %maps, align 8
  %sub96 = sub nsw i64 %52, 3
  %53 = inttoptr i64 %sub96 to i8*
  %54 = bitcast i8* %53 to %struct.Lisp_Cons*
  %u97 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %54, i32 0, i32 1
  %cdr98 = bitcast %union.anon* %u97 to i64*
  %55 = load i64, i64* %cdr98, align 8
  store i64 %55, i64* %maps, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %56 = load i8, i8* %nomenus.addr, align 1
  %tobool99 = trunc i8 %56 to i1
  br i1 %tobool99, label %land.lhs.true.101, label %if.else.106

land.lhs.true.101:                                ; preds = %for.end
  %57 = load i8, i8* %noindirect.addr, align 1
  %tobool102 = trunc i8 %57 to i1
  br i1 %tobool102, label %if.else.106, label %if.then.103

if.then.103:                                      ; preds = %land.lhs.true.101
  %58 = load i64, i64* %keymaps.addr, align 8
  store i64 %58, i64* @where_is_cache_keymaps, align 8
  %59 = load i64, i64* %definition.addr, align 8
  %60 = load i64, i64* @where_is_cache, align 8
  %call104 = call i64 @builtin_lisp_symbol(i32 0)
  %call105 = call i64 @Fgethash(i64 %59, i64 %60, i64 %call104)
  store i64 %call105, i64* %retval
  br label %return

if.else.106:                                      ; preds = %land.lhs.true.101, %for.end
  %sequences107 = getelementptr inbounds %struct.where_is_internal_data, %struct.where_is_internal_data* %data, i32 0, i32 5
  %61 = load i64, i64* %sequences107, align 8
  store i64 %61, i64* %retval
  br label %return

return:                                           ; preds = %if.else.106, %if.then.103, %if.else
  %62 = load i64, i64* %retval
  ret i64 %62
}

declare i64 @Fequal(i64, i64) #1

declare i64 @nconc2(i64, i64) #1

declare i64 @Faset(i64, i64, i64) #1

declare i64 @Fmember(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @preferred_sequence_p(i64 %seq) #0 {
entry:
  %retval = alloca i32, align 4
  %seq.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %len = alloca i64, align 8
  %result = alloca i32, align 4
  %ii = alloca i64, align 8
  %elt = alloca i64, align 8
  %modifiers = alloca i32, align 4
  store i64 %seq, i64* %seq.addr, align 8
  %0 = load i64, i64* %seq.addr, align 8
  %call = call i64 @Flength(i64 %0)
  %shr = ashr i64 %call, 2
  store i64 %shr, i64* %len, align 8
  store i32 1, i32* %result, align 4
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %i, align 8
  %2 = load i64, i64* %len, align 8
  %cmp = icmp slt i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, i64* %i, align 8
  %call1 = call i64 @make_natnum(i64 %3)
  store i64 %call1, i64* %ii, align 8
  %4 = load i64, i64* %seq.addr, align 8
  %5 = load i64, i64* %ii, align 8
  %call2 = call i64 @Faref(i64 %4, i64 %5)
  store i64 %call2, i64* %elt, align 8
  %6 = load i64, i64* %elt, align 8
  %and = and i64 %6, 7
  %conv = trunc i64 %and to i32
  %and3 = and i32 %conv, -5
  %cmp4 = icmp eq i32 %and3, 2
  br i1 %cmp4, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %for.body
  %7 = load i64, i64* %elt, align 8
  %shr6 = ashr i64 %7, 2
  %and7 = and i64 %shr6, 130023424
  %conv8 = trunc i64 %and7 to i32
  store i32 %conv8, i32* %modifiers, align 4
  %8 = load i32, i32* %modifiers, align 4
  %9 = load i32, i32* @where_is_preferred_modifier, align 4
  %cmp9 = icmp eq i32 %8, %9
  br i1 %cmp9, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.else
  store i32 2, i32* %result, align 4
  br label %if.end.14

if.else.12:                                       ; preds = %if.else
  %10 = load i32, i32* %modifiers, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.else.12
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else.12
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then.11
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %11 = load i64, i64* %i, align 8
  %inc = add nsw i64 %11, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %result, align 4
  store i32 %12, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.13, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

declare i64 @Fnreverse(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fdescribe_buffer_bindings(i64 %buffer, i64 %prefix, i64 %menus) #0 {
entry:
  %buffer.addr = alloca i64, align 8
  %prefix.addr = alloca i64, align 8
  %menus.addr = alloca i64, align 8
  %outbuf = alloca i64, align 8
  %shadow = alloca i64, align 8
  %nomenu = alloca i8, align 1
  %start1 = alloca i64, align 8
  %alternate_heading = alloca i8*, align 8
  %c = alloca i32, align 4
  %translate = alloca i8*, align 8
  %translate_len = alloca i32, align 4
  %buf = alloca [22 x i8], align 16
  %bufend = alloca i8*, align 8
  %i = alloca i32, align 4
  %nmaps = alloca i32, align 4
  %modes = alloca i64*, align 8
  %maps = alloca i64*, align 8
  %title = alloca i8*, align 8
  %p = alloca i8*, align 8
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  store i64 %buffer, i64* %buffer.addr, align 8
  store i64 %prefix, i64* %prefix.addr, align 8
  store i64 %menus, i64* %menus.addr, align 8
  %0 = load i64, i64* %menus.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, i8* %nomenu, align 1
  store i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.13, i32 0, i32 0), i8** %alternate_heading, align 8
  %1 = load i64, i64* %buffer.addr, align 8
  call void @CHECK_BUFFER(i64 %1)
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* %shadow, align 8
  %call2 = call i64 @Fcurrent_buffer()
  store i64 %call2, i64* %outbuf, align 8
  %2 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %Vkeyboard_translate_table_ = getelementptr inbounds %struct.kboard, %struct.kboard* %2, i32 0, i32 4
  %3 = load i64, i64* %Vkeyboard_translate_table_, align 8
  %call3 = call zeroext i1 @STRINGP(i64 %3)
  br i1 %call3, label %land.lhs.true, label %if.end.35

land.lhs.true:                                    ; preds = %entry
  %4 = load i64, i64* %prefix.addr, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp5 = icmp eq i64 %4, %call4
  br i1 %cmp5, label %if.end.35, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %Vkeyboard_translate_table_6 = getelementptr inbounds %struct.kboard, %struct.kboard* %5, i32 0, i32 4
  %6 = load i64, i64* %Vkeyboard_translate_table_6, align 8
  %call7 = call i8* @SDATA(i64 %6)
  store i8* %call7, i8** %translate, align 8
  %7 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %Vkeyboard_translate_table_8 = getelementptr inbounds %struct.kboard, %struct.kboard* %7, i32 0, i32 4
  %8 = load i64, i64* %Vkeyboard_translate_table_8, align 8
  %call9 = call i64 @SCHARS(i64 %8)
  %conv = trunc i64 %call9 to i32
  store i32 %conv, i32* %translate_len, align 4
  store i32 0, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %9 = load i32, i32* %c, align 4
  %10 = load i32, i32* %translate_len, align 4
  %cmp10 = icmp slt i32 %9, %10
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %c, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load i8*, i8** %translate, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %idxprom
  %13 = load i8, i8* %arrayidx, align 1
  %conv12 = zext i8 %13 to i32
  %14 = load i32, i32* %c, align 4
  %cmp13 = icmp ne i32 %conv12, %14
  br i1 %cmp13, label %if.then.15, label %if.end.34

if.then.15:                                       ; preds = %for.body
  %15 = load i8*, i8** %alternate_heading, align 8
  %tobool = icmp ne i8* %15, null
  br i1 %tobool, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %if.then.15
  %16 = load i8*, i8** %alternate_heading, align 8
  call void @insert_string(i8* %16)
  store i8* null, i8** %alternate_heading, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.16, %if.then.15
  %17 = load i32, i32* %c, align 4
  %idxprom17 = sext i32 %17 to i64
  %18 = load i8*, i8** %translate, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %18, i64 %idxprom17
  %19 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %19 to i64
  %arraydecay = getelementptr inbounds [22 x i8], [22 x i8]* %buf, i32 0, i32 0
  %call20 = call i8* @push_key_description(i64 %conv19, i8* %arraydecay)
  store i8* %call20, i8** %bufend, align 8
  %arraydecay21 = getelementptr inbounds [22 x i8], [22 x i8]* %buf, i32 0, i32 0
  %20 = load i8*, i8** %bufend, align 8
  %arraydecay22 = getelementptr inbounds [22 x i8], [22 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %20 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay22 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @insert(i8* %arraydecay21, i64 %sub.ptr.sub)
  %call23 = call i64 @Findent_to(i64 66, i64 6)
  %21 = load i32, i32* %c, align 4
  %conv24 = sext i32 %21 to i64
  %arraydecay25 = getelementptr inbounds [22 x i8], [22 x i8]* %buf, i32 0, i32 0
  %call26 = call i8* @push_key_description(i64 %conv24, i8* %arraydecay25)
  store i8* %call26, i8** %bufend, align 8
  %arraydecay27 = getelementptr inbounds [22 x i8], [22 x i8]* %buf, i32 0, i32 0
  %22 = load i8*, i8** %bufend, align 8
  %arraydecay28 = getelementptr inbounds [22 x i8], [22 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast29 = ptrtoint i8* %22 to i64
  %sub.ptr.rhs.cast30 = ptrtoint i8* %arraydecay28 to i64
  %sub.ptr.sub31 = sub i64 %sub.ptr.lhs.cast29, %sub.ptr.rhs.cast30
  call void @insert(i8* %arraydecay27, i64 %sub.ptr.sub31)
  call void @insert(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i64 1)
  %23 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %Vkeyboard_translate_table_32 = getelementptr inbounds %struct.kboard, %struct.kboard* %23, i32 0, i32 4
  %24 = load i64, i64* %Vkeyboard_translate_table_32, align 8
  %call33 = call i8* @SDATA(i64 %24)
  store i8* %call33, i8** %translate, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.34
  %25 = load i32, i32* %c, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %c, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @insert(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i64 1)
  br label %if.end.35

if.end.35:                                        ; preds = %for.end, %land.lhs.true, %entry
  %26 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 151), align 8
  %call36 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp37 = icmp eq i64 %26, %call36
  br i1 %cmp37, label %if.end.42, label %if.then.39

if.then.39:                                       ; preds = %if.end.35
  %27 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 151), align 8
  %call40 = call i64 @builtin_lisp_symbol(i32 0)
  %28 = load i64, i64* %prefix.addr, align 8
  %29 = load i8, i8* %nomenu, align 1
  %tobool41 = trunc i8 %29 to i1
  call void @describe_map_tree(i64 %27, i1 zeroext false, i64 %call40, i64 %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i1 zeroext %tobool41, i1 zeroext true, i1 zeroext false, i1 zeroext false)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.39, %if.end.35
  %call43 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call43, i64* %start1, align 8
  %30 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %Voverriding_terminal_local_map_ = getelementptr inbounds %struct.kboard, %struct.kboard* %30, i32 0, i32 1
  %31 = load i64, i64* %Voverriding_terminal_local_map_, align 8
  %call44 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp45 = icmp eq i64 %31, %call44
  br i1 %cmp45, label %if.end.49, label %if.then.47

if.then.47:                                       ; preds = %if.end.42
  %32 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %Voverriding_terminal_local_map_48 = getelementptr inbounds %struct.kboard, %struct.kboard* %32, i32 0, i32 1
  %33 = load i64, i64* %Voverriding_terminal_local_map_48, align 8
  store i64 %33, i64* %start1, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %if.end.42
  %34 = load i64, i64* %start1, align 8
  %call50 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp51 = icmp eq i64 %34, %call50
  br i1 %cmp51, label %if.else, label %if.then.53

if.then.53:                                       ; preds = %if.end.49
  %35 = load i64, i64* %start1, align 8
  %36 = load i64, i64* %shadow, align 8
  %37 = load i64, i64* %prefix.addr, align 8
  %38 = load i8, i8* %nomenu, align 1
  %tobool54 = trunc i8 %38 to i1
  call void @describe_map_tree(i64 %35, i1 zeroext true, i64 %36, i64 %37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i1 zeroext %tobool54, i1 zeroext false, i1 zeroext false, i1 zeroext false)
  %39 = load i64, i64* %start1, align 8
  %40 = load i64, i64* %shadow, align 8
  %call55 = call i64 @Fcons(i64 %39, i64 %40)
  store i64 %call55, i64* %shadow, align 8
  %call56 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call56, i64* %start1, align 8
  br label %if.end.62

if.else:                                          ; preds = %if.end.49
  %41 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 216), align 8
  %call57 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp58 = icmp eq i64 %41, %call57
  br i1 %cmp58, label %if.end.61, label %if.then.60

if.then.60:                                       ; preds = %if.else
  %42 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 216), align 8
  store i64 %42, i64* %start1, align 8
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %if.else
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.53
  %43 = load i64, i64* %start1, align 8
  %call63 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp64 = icmp eq i64 %43, %call63
  br i1 %cmp64, label %if.else.69, label %if.then.66

if.then.66:                                       ; preds = %if.end.62
  %44 = load i64, i64* %start1, align 8
  %45 = load i64, i64* %shadow, align 8
  %46 = load i64, i64* %prefix.addr, align 8
  %47 = load i8, i8* %nomenu, align 1
  %tobool67 = trunc i8 %47 to i1
  call void @describe_map_tree(i64 %44, i1 zeroext true, i64 %45, i64 %46, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i1 zeroext %tobool67, i1 zeroext false, i1 zeroext false, i1 zeroext false)
  %48 = load i64, i64* %start1, align 8
  %49 = load i64, i64* %shadow, align 8
  %call68 = call i64 @Fcons(i64 %48, i64 %49)
  store i64 %call68, i64* %shadow, align 8
  br label %if.end.209

if.else.69:                                       ; preds = %if.end.62
  %50 = load i64, i64* %buffer.addr, align 8
  %call70 = call i64 @Fset_buffer(i64 %50)
  %call71 = call i64 @current_minor_maps(i64** %modes, i64** %maps)
  %conv72 = trunc i64 %call71 to i32
  store i32 %conv72, i32* %nmaps, align 4
  %51 = load i64, i64* %outbuf, align 8
  %call73 = call i64 @Fset_buffer(i64 %51)
  %52 = load i64, i64* %buffer.addr, align 8
  %call74 = call %struct.buffer* @XBUFFER(i64 %52)
  %53 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp75 = icmp eq %struct.buffer* %call74, %53
  br i1 %cmp75, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.69
  %54 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %54, i32 0, i32 75
  %55 = load i64, i64* %pt, align 8
  %add = add nsw i64 %55, 0
  br label %cond.end.88

cond.false:                                       ; preds = %if.else.69
  %56 = load i64, i64* %buffer.addr, align 8
  %call77 = call %struct.buffer* @XBUFFER(i64 %56)
  %pt_marker_ = getelementptr inbounds %struct.buffer, %struct.buffer* %call77, i32 0, i32 45
  %57 = load i64, i64* %pt_marker_, align 8
  %call78 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp79 = icmp eq i64 %57, %call78
  br i1 %cmp79, label %cond.true.81, label %cond.false.84

cond.true.81:                                     ; preds = %cond.false
  %58 = load i64, i64* %buffer.addr, align 8
  %call82 = call %struct.buffer* @XBUFFER(i64 %58)
  %pt83 = getelementptr inbounds %struct.buffer, %struct.buffer* %call82, i32 0, i32 75
  %59 = load i64, i64* %pt83, align 8
  br label %cond.end

cond.false.84:                                    ; preds = %cond.false
  %60 = load i64, i64* %buffer.addr, align 8
  %call85 = call %struct.buffer* @XBUFFER(i64 %60)
  %pt_marker_86 = getelementptr inbounds %struct.buffer, %struct.buffer* %call85, i32 0, i32 45
  %61 = load i64, i64* %pt_marker_86, align 8
  %call87 = call i64 @marker_position(i64 %61)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.84, %cond.true.81
  %cond = phi i64 [ %59, %cond.true.81 ], [ %call87, %cond.false.84 ]
  br label %cond.end.88

cond.end.88:                                      ; preds = %cond.end, %cond.true
  %cond89 = phi i64 [ %add, %cond.true ], [ %cond, %cond.end ]
  %62 = load i64, i64* %buffer.addr, align 8
  %call90 = call %struct.buffer* @XBUFFER(i64 %62)
  %call91 = call i64 @builtin_lisp_symbol(i32 589)
  %call92 = call i64 @get_local_map(i64 %cond89, %struct.buffer* %call90, i64 %call91)
  store i64 %call92, i64* %start1, align 8
  %63 = load i64, i64* %start1, align 8
  %call93 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp94 = icmp eq i64 %63, %call93
  br i1 %cmp94, label %if.end.99, label %if.then.96

if.then.96:                                       ; preds = %cond.end.88
  %64 = load i64, i64* %start1, align 8
  %65 = load i64, i64* %shadow, align 8
  %66 = load i64, i64* %prefix.addr, align 8
  %67 = load i8, i8* %nomenu, align 1
  %tobool97 = trunc i8 %67 to i1
  call void @describe_map_tree(i64 %64, i1 zeroext true, i64 %65, i64 %66, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i32 0, i32 0), i1 zeroext %tobool97, i1 zeroext false, i1 zeroext false, i1 zeroext false)
  %68 = load i64, i64* %start1, align 8
  %69 = load i64, i64* %shadow, align 8
  %call98 = call i64 @Fcons(i64 %68, i64 %69)
  store i64 %call98, i64* %shadow, align 8
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.96, %cond.end.88
  store i32 0, i32* %i, align 4
  br label %for.cond.100

for.cond.100:                                     ; preds = %for.inc.166, %if.end.99
  %70 = load i32, i32* %i, align 4
  %71 = load i32, i32* %nmaps, align 4
  %cmp101 = icmp slt i32 %70, %71
  br i1 %cmp101, label %for.body.103, label %for.end.168

for.body.103:                                     ; preds = %for.cond.100
  %72 = load i32, i32* %i, align 4
  %idxprom104 = sext i32 %72 to i64
  %73 = load i64*, i64** %modes, align 8
  %arrayidx105 = getelementptr inbounds i64, i64* %73, i64 %idxprom104
  %74 = load i64, i64* %arrayidx105, align 8
  %and = and i64 %74, 7
  %conv106 = trunc i64 %and to i32
  %cmp107 = icmp eq i32 %conv106, 0
  br i1 %cmp107, label %if.end.110, label %if.then.109

if.then.109:                                      ; preds = %for.body.103
  call void @emacs_abort() #6
  unreachable

if.end.110:                                       ; preds = %for.body.103
  store i64 16384, i64* %sa_avail, align 8
  %call111 = call i64 @SPECPDL_INDEX()
  store i64 %call111, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  %75 = load i32, i32* %i, align 4
  %idxprom112 = sext i32 %75 to i64
  %76 = load i64*, i64** %modes, align 8
  %arrayidx113 = getelementptr inbounds i64, i64* %76, i64 %idxprom112
  %77 = load i64, i64* %arrayidx113, align 8
  %call114 = call i64 @SYMBOL_NAME(i64 %77)
  %call115 = call i64 @SBYTES(i64 %call114)
  %add116 = add nsw i64 42, %call115
  %78 = load i64, i64* %sa_avail, align 8
  %cmp117 = icmp sle i64 %add116, %78
  br i1 %cmp117, label %cond.true.119, label %cond.false.130

cond.true.119:                                    ; preds = %if.end.110
  %79 = load i32, i32* %i, align 4
  %idxprom120 = sext i32 %79 to i64
  %80 = load i64*, i64** %modes, align 8
  %arrayidx121 = getelementptr inbounds i64, i64* %80, i64 %idxprom120
  %81 = load i64, i64* %arrayidx121, align 8
  %call122 = call i64 @SYMBOL_NAME(i64 %81)
  %call123 = call i64 @SBYTES(i64 %call122)
  %add124 = add nsw i64 42, %call123
  %82 = load i64, i64* %sa_avail, align 8
  %sub = sub nsw i64 %82, %add124
  store i64 %sub, i64* %sa_avail, align 8
  %83 = load i32, i32* %i, align 4
  %idxprom125 = sext i32 %83 to i64
  %84 = load i64*, i64** %modes, align 8
  %arrayidx126 = getelementptr inbounds i64, i64* %84, i64 %idxprom125
  %85 = load i64, i64* %arrayidx126, align 8
  %call127 = call i64 @SYMBOL_NAME(i64 %85)
  %call128 = call i64 @SBYTES(i64 %call127)
  %add129 = add nsw i64 42, %call128
  %86 = alloca i8, i64 %add129
  br label %cond.end.137

cond.false.130:                                   ; preds = %if.end.110
  store i8 1, i8* %sa_must_free, align 1
  %87 = load i32, i32* %i, align 4
  %idxprom131 = sext i32 %87 to i64
  %88 = load i64*, i64** %modes, align 8
  %arrayidx132 = getelementptr inbounds i64, i64* %88, i64 %idxprom131
  %89 = load i64, i64* %arrayidx132, align 8
  %call133 = call i64 @SYMBOL_NAME(i64 %89)
  %call134 = call i64 @SBYTES(i64 %call133)
  %add135 = add nsw i64 42, %call134
  %call136 = call i8* @record_xmalloc(i64 %add135)
  br label %cond.end.137

cond.end.137:                                     ; preds = %cond.false.130, %cond.true.119
  %cond138 = phi i8* [ %86, %cond.true.119 ], [ %call136, %cond.false.130 ]
  store i8* %cond138, i8** %title, align 8
  store i8* %cond138, i8** %p, align 8
  %90 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 12, i8* %90, align 1
  %91 = load i8*, i8** %p, align 8
  %incdec.ptr139 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %incdec.ptr139, i8** %p, align 8
  store i8 10, i8* %91, align 1
  %92 = load i8*, i8** %p, align 8
  %incdec.ptr140 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %incdec.ptr140, i8** %p, align 8
  store i8 96, i8* %92, align 1
  %93 = load i8*, i8** %p, align 8
  %94 = load i32, i32* %i, align 4
  %idxprom141 = sext i32 %94 to i64
  %95 = load i64*, i64** %modes, align 8
  %arrayidx142 = getelementptr inbounds i64, i64* %95, i64 %idxprom141
  %96 = load i64, i64* %arrayidx142, align 8
  %call143 = call i64 @SYMBOL_NAME(i64 %96)
  %call144 = call i8* @SDATA(i64 %call143)
  %97 = load i32, i32* %i, align 4
  %idxprom145 = sext i32 %97 to i64
  %98 = load i64*, i64** %modes, align 8
  %arrayidx146 = getelementptr inbounds i64, i64* %98, i64 %idxprom145
  %99 = load i64, i64* %arrayidx146, align 8
  %call147 = call i64 @SYMBOL_NAME(i64 %99)
  %call148 = call i64 @SBYTES(i64 %call147)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %93, i8* %call144, i64 %call148, i32 1, i1 false)
  %100 = load i32, i32* %i, align 4
  %idxprom149 = sext i32 %100 to i64
  %101 = load i64*, i64** %modes, align 8
  %arrayidx150 = getelementptr inbounds i64, i64* %101, i64 %idxprom149
  %102 = load i64, i64* %arrayidx150, align 8
  %call151 = call i64 @SYMBOL_NAME(i64 %102)
  %call152 = call i64 @SBYTES(i64 %call151)
  %103 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %103, i64 %call152
  store i8* %add.ptr, i8** %p, align 8
  %104 = load i8*, i8** %p, align 8
  %incdec.ptr153 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %incdec.ptr153, i8** %p, align 8
  store i8 39, i8* %104, align 1
  %105 = load i8*, i8** %p, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %105, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i32 0, i32 0), i64 20, i32 1, i1 false)
  %106 = load i8*, i8** %p, align 8
  %add.ptr154 = getelementptr inbounds i8, i8* %106, i64 20
  store i8* %add.ptr154, i8** %p, align 8
  %107 = load i8*, i8** %p, align 8
  store i8 0, i8* %107, align 1
  %108 = load i32, i32* %i, align 4
  %idxprom155 = sext i32 %108 to i64
  %109 = load i64*, i64** %maps, align 8
  %arrayidx156 = getelementptr inbounds i64, i64* %109, i64 %idxprom155
  %110 = load i64, i64* %arrayidx156, align 8
  %111 = load i64, i64* %shadow, align 8
  %112 = load i64, i64* %prefix.addr, align 8
  %113 = load i8*, i8** %title, align 8
  %114 = load i8, i8* %nomenu, align 1
  %tobool157 = trunc i8 %114 to i1
  call void @describe_map_tree(i64 %110, i1 zeroext true, i64 %111, i64 %112, i8* %113, i1 zeroext %tobool157, i1 zeroext false, i1 zeroext false, i1 zeroext false)
  %115 = load i32, i32* %i, align 4
  %idxprom158 = sext i32 %115 to i64
  %116 = load i64*, i64** %maps, align 8
  %arrayidx159 = getelementptr inbounds i64, i64* %116, i64 %idxprom158
  %117 = load i64, i64* %arrayidx159, align 8
  %118 = load i64, i64* %shadow, align 8
  %call160 = call i64 @Fcons(i64 %117, i64 %118)
  store i64 %call160, i64* %shadow, align 8
  br label %do.body

do.body:                                          ; preds = %cond.end.137
  %119 = load i8, i8* %sa_must_free, align 1
  %tobool161 = trunc i8 %119 to i1
  br i1 %tobool161, label %if.then.162, label %if.end.165

if.then.162:                                      ; preds = %do.body
  store i8 0, i8* %sa_must_free, align 1
  %120 = load i64, i64* %sa_count, align 8
  %call163 = call i64 @builtin_lisp_symbol(i32 0)
  %call164 = call i64 @unbind_to(i64 %120, i64 %call163)
  br label %if.end.165

if.end.165:                                       ; preds = %if.then.162, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.165
  br label %for.inc.166

for.inc.166:                                      ; preds = %do.end
  %121 = load i32, i32* %i, align 4
  %inc167 = add nsw i32 %121, 1
  store i32 %inc167, i32* %i, align 4
  br label %for.cond.100

for.end.168:                                      ; preds = %for.cond.100
  %122 = load i64, i64* %buffer.addr, align 8
  %call169 = call %struct.buffer* @XBUFFER(i64 %122)
  %123 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp170 = icmp eq %struct.buffer* %call169, %123
  br i1 %cmp170, label %cond.true.172, label %cond.false.175

cond.true.172:                                    ; preds = %for.end.168
  %124 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt173 = getelementptr inbounds %struct.buffer, %struct.buffer* %124, i32 0, i32 75
  %125 = load i64, i64* %pt173, align 8
  %add174 = add nsw i64 %125, 0
  br label %cond.end.190

cond.false.175:                                   ; preds = %for.end.168
  %126 = load i64, i64* %buffer.addr, align 8
  %call176 = call %struct.buffer* @XBUFFER(i64 %126)
  %pt_marker_177 = getelementptr inbounds %struct.buffer, %struct.buffer* %call176, i32 0, i32 45
  %127 = load i64, i64* %pt_marker_177, align 8
  %call178 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp179 = icmp eq i64 %127, %call178
  br i1 %cmp179, label %cond.true.181, label %cond.false.184

cond.true.181:                                    ; preds = %cond.false.175
  %128 = load i64, i64* %buffer.addr, align 8
  %call182 = call %struct.buffer* @XBUFFER(i64 %128)
  %pt183 = getelementptr inbounds %struct.buffer, %struct.buffer* %call182, i32 0, i32 75
  %129 = load i64, i64* %pt183, align 8
  br label %cond.end.188

cond.false.184:                                   ; preds = %cond.false.175
  %130 = load i64, i64* %buffer.addr, align 8
  %call185 = call %struct.buffer* @XBUFFER(i64 %130)
  %pt_marker_186 = getelementptr inbounds %struct.buffer, %struct.buffer* %call185, i32 0, i32 45
  %131 = load i64, i64* %pt_marker_186, align 8
  %call187 = call i64 @marker_position(i64 %131)
  br label %cond.end.188

cond.end.188:                                     ; preds = %cond.false.184, %cond.true.181
  %cond189 = phi i64 [ %129, %cond.true.181 ], [ %call187, %cond.false.184 ]
  br label %cond.end.190

cond.end.190:                                     ; preds = %cond.end.188, %cond.true.172
  %cond191 = phi i64 [ %add174, %cond.true.172 ], [ %cond189, %cond.end.188 ]
  %132 = load i64, i64* %buffer.addr, align 8
  %call192 = call %struct.buffer* @XBUFFER(i64 %132)
  %call193 = call i64 @builtin_lisp_symbol(i32 633)
  %call194 = call i64 @get_local_map(i64 %cond191, %struct.buffer* %call192, i64 %call193)
  store i64 %call194, i64* %start1, align 8
  %133 = load i64, i64* %start1, align 8
  %call195 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp196 = icmp eq i64 %133, %call195
  br i1 %cmp196, label %if.end.208, label %if.then.198

if.then.198:                                      ; preds = %cond.end.190
  %134 = load i64, i64* %start1, align 8
  %135 = load i64, i64* %buffer.addr, align 8
  %call199 = call %struct.buffer* @XBUFFER(i64 %135)
  %keymap_ = getelementptr inbounds %struct.buffer, %struct.buffer* %call199, i32 0, i32 14
  %136 = load i64, i64* %keymap_, align 8
  %cmp200 = icmp eq i64 %134, %136
  br i1 %cmp200, label %if.then.202, label %if.else.204

if.then.202:                                      ; preds = %if.then.198
  %137 = load i64, i64* %start1, align 8
  %138 = load i64, i64* %shadow, align 8
  %139 = load i64, i64* %prefix.addr, align 8
  %140 = load i8, i8* %nomenu, align 1
  %tobool203 = trunc i8 %140 to i1
  call void @describe_map_tree(i64 %137, i1 zeroext true, i64 %138, i64 %139, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0), i1 zeroext %tobool203, i1 zeroext false, i1 zeroext false, i1 zeroext false)
  br label %if.end.206

if.else.204:                                      ; preds = %if.then.198
  %141 = load i64, i64* %start1, align 8
  %142 = load i64, i64* %shadow, align 8
  %143 = load i64, i64* %prefix.addr, align 8
  %144 = load i8, i8* %nomenu, align 1
  %tobool205 = trunc i8 %144 to i1
  call void @describe_map_tree(i64 %141, i1 zeroext true, i64 %142, i64 %143, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i32 0, i32 0), i1 zeroext %tobool205, i1 zeroext false, i1 zeroext false, i1 zeroext false)
  br label %if.end.206

if.end.206:                                       ; preds = %if.else.204, %if.then.202
  %145 = load i64, i64* %start1, align 8
  %146 = load i64, i64* %shadow, align 8
  %call207 = call i64 @Fcons(i64 %145, i64 %146)
  store i64 %call207, i64* %shadow, align 8
  br label %if.end.208

if.end.208:                                       ; preds = %if.end.206, %cond.end.190
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.208, %if.then.66
  %147 = load i64, i64* @current_global_map, align 8
  %148 = load i64, i64* %shadow, align 8
  %149 = load i64, i64* %prefix.addr, align 8
  %150 = load i8, i8* %nomenu, align 1
  %tobool210 = trunc i8 %150 to i1
  call void @describe_map_tree(i64 %147, i1 zeroext true, i64 %148, i64 %149, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0), i1 zeroext %tobool210, i1 zeroext false, i1 zeroext true, i1 zeroext false)
  %151 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %Vlocal_function_key_map_ = getelementptr inbounds %struct.kboard, %struct.kboard* %151, i32 0, i32 18
  %152 = load i64, i64* %Vlocal_function_key_map_, align 8
  %call211 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp212 = icmp eq i64 %152, %call211
  br i1 %cmp212, label %if.end.218, label %if.then.214

if.then.214:                                      ; preds = %if.end.209
  %153 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %Vlocal_function_key_map_215 = getelementptr inbounds %struct.kboard, %struct.kboard* %153, i32 0, i32 18
  %154 = load i64, i64* %Vlocal_function_key_map_215, align 8
  %call216 = call i64 @builtin_lisp_symbol(i32 0)
  %155 = load i64, i64* %prefix.addr, align 8
  %156 = load i8, i8* %nomenu, align 1
  %tobool217 = trunc i8 %156 to i1
  call void @describe_map_tree(i64 %154, i1 zeroext false, i64 %call216, i64 %155, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.22, i32 0, i32 0), i1 zeroext %tobool217, i1 zeroext true, i1 zeroext false, i1 zeroext false)
  br label %if.end.218

if.end.218:                                       ; preds = %if.then.214, %if.end.209
  %157 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %Vinput_decode_map_ = getelementptr inbounds %struct.kboard, %struct.kboard* %157, i32 0, i32 19
  %158 = load i64, i64* %Vinput_decode_map_, align 8
  %call219 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp220 = icmp eq i64 %158, %call219
  br i1 %cmp220, label %if.end.226, label %if.then.222

if.then.222:                                      ; preds = %if.end.218
  %159 = load %struct.kboard*, %struct.kboard** @current_kboard, align 8
  %Vinput_decode_map_223 = getelementptr inbounds %struct.kboard, %struct.kboard* %159, i32 0, i32 19
  %160 = load i64, i64* %Vinput_decode_map_223, align 8
  %call224 = call i64 @builtin_lisp_symbol(i32 0)
  %161 = load i64, i64* %prefix.addr, align 8
  %162 = load i8, i8* %nomenu, align 1
  %tobool225 = trunc i8 %162 to i1
  call void @describe_map_tree(i64 %160, i1 zeroext false, i64 %call224, i64 %161, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i32 0, i32 0), i1 zeroext %tobool225, i1 zeroext true, i1 zeroext false, i1 zeroext false)
  br label %if.end.226

if.end.226:                                       ; preds = %if.then.222, %if.end.218
  %call227 = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call227
}

declare void @CHECK_BUFFER(i64) #1

declare i64 @Fcurrent_buffer() #1

declare void @insert_string(i8*) #1

declare void @insert(i8*, i64) #1

declare i64 @Findent_to(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @describe_map_tree(i64 %startmap, i1 zeroext %partial, i64 %shadow, i64 %prefix, i8* %title, i1 zeroext %nomenu, i1 zeroext %transl, i1 zeroext %always_title, i1 zeroext %mention_shadow) #0 {
entry:
  %startmap.addr = alloca i64, align 8
  %partial.addr = alloca i8, align 1
  %shadow.addr = alloca i64, align 8
  %prefix.addr = alloca i64, align 8
  %title.addr = alloca i8*, align 8
  %nomenu.addr = alloca i8, align 1
  %transl.addr = alloca i8, align 1
  %always_title.addr = alloca i8, align 1
  %mention_shadow.addr = alloca i8, align 1
  %maps = alloca i64, align 8
  %orig_maps = alloca i64, align 8
  %seen = alloca i64, align 8
  %sub_shadows = alloca i64, align 8
  %something = alloca i8, align 1
  %key_heading = alloca i8*, align 8
  %list = alloca i64, align 8
  %elt = alloca i64, align 8
  %elt_prefix = alloca i64, align 8
  %tem = alloca i64, align 8
  %elt45 = alloca i64, align 8
  %elt_prefix46 = alloca i64, align 8
  %tail = alloca i64, align 8
  %shmap = alloca i64, align 8
  %tem109 = alloca i64, align 8
  store i64 %startmap, i64* %startmap.addr, align 8
  %frombool = zext i1 %partial to i8
  store i8 %frombool, i8* %partial.addr, align 1
  store i64 %shadow, i64* %shadow.addr, align 8
  store i64 %prefix, i64* %prefix.addr, align 8
  store i8* %title, i8** %title.addr, align 8
  %frombool1 = zext i1 %nomenu to i8
  store i8 %frombool1, i8* %nomenu.addr, align 1
  %frombool2 = zext i1 %transl to i8
  store i8 %frombool2, i8* %transl.addr, align 1
  %frombool3 = zext i1 %always_title to i8
  store i8 %frombool3, i8* %always_title.addr, align 1
  %frombool4 = zext i1 %mention_shadow to i8
  store i8 %frombool4, i8* %mention_shadow.addr, align 1
  store i8 0, i8* %something, align 1
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.24, i32 0, i32 0), i8** %key_heading, align 8
  %0 = load i64, i64* %startmap.addr, align 8
  %1 = load i64, i64* %prefix.addr, align 8
  %call = call i64 @Faccessible_keymaps(i64 %0, i64 %1)
  store i64 %call, i64* %maps, align 8
  store i64 %call, i64* %orig_maps, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call5, i64* %seen, align 8
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call6, i64* %sub_shadows, align 8
  %2 = load i8, i8* %nomenu.addr, align 1
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %if.then, label %if.end.21

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %maps, align 8
  store i64 %3, i64* %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i64, i64* %list, align 8
  %and = and i64 %4, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i64, i64* %list, align 8
  %sub = sub nsw i64 %5, 3
  %6 = inttoptr i64 %sub to i8*
  %7 = bitcast i8* %6 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %7, i32 0, i32 0
  %8 = load i64, i64* %car, align 8
  store i64 %8, i64* %elt, align 8
  %9 = load i64, i64* %elt, align 8
  %call8 = call i64 @Fcar(i64 %9)
  store i64 %call8, i64* %elt_prefix, align 8
  %10 = load i64, i64* %elt_prefix, align 8
  %call9 = call i64 @ASIZE(i64 %10)
  %cmp10 = icmp sge i64 %call9, 1
  br i1 %cmp10, label %if.then.12, label %if.end.19

if.then.12:                                       ; preds = %for.body
  %11 = load i64, i64* %elt_prefix, align 8
  %call13 = call i64 @Faref(i64 %11, i64 2)
  store i64 %call13, i64* %tem, align 8
  %12 = load i64, i64* %tem, align 8
  %call14 = call i64 @builtin_lisp_symbol(i32 651)
  %cmp15 = icmp eq i64 %12, %call14
  br i1 %cmp15, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %if.then.12
  %13 = load i64, i64* %elt, align 8
  %14 = load i64, i64* %maps, align 8
  %call18 = call i64 @Fdelq(i64 %13, i64 %14)
  store i64 %call18, i64* %maps, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.17, %if.then.12
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %15 = load i64, i64* %list, align 8
  %sub20 = sub nsw i64 %15, 3
  %16 = inttoptr i64 %sub20 to i8*
  %17 = bitcast i8* %16 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %17, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %18 = load i64, i64* %cdr, align 8
  store i64 %18, i64* %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.21

if.end.21:                                        ; preds = %for.end, %entry
  %19 = load i64, i64* %maps, align 8
  %call22 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp23 = icmp eq i64 %19, %call22
  br i1 %cmp23, label %lor.lhs.false, label %if.then.27

lor.lhs.false:                                    ; preds = %if.end.21
  %20 = load i8, i8* %always_title.addr, align 1
  %tobool25 = trunc i8 %20 to i1
  br i1 %tobool25, label %if.then.27, label %if.end.38

if.then.27:                                       ; preds = %lor.lhs.false, %if.end.21
  %21 = load i8*, i8** %title.addr, align 8
  %tobool28 = icmp ne i8* %21, null
  br i1 %tobool28, label %if.then.29, label %if.end.37

if.then.29:                                       ; preds = %if.then.27
  %22 = load i8*, i8** %title.addr, align 8
  call void @insert_string(i8* %22)
  %23 = load i64, i64* %prefix.addr, align 8
  %call30 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp31 = icmp eq i64 %23, %call30
  br i1 %cmp31, label %if.end.36, label %if.then.33

if.then.33:                                       ; preds = %if.then.29
  call void @insert_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0))
  %24 = load i64, i64* %prefix.addr, align 8
  %call34 = call i64 @builtin_lisp_symbol(i32 0)
  %call35 = call i64 @Fkey_description(i64 %24, i64 %call34)
  call void @insert1(i64 %call35)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.33, %if.then.29
  call void @insert_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0))
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then.27
  %25 = load i8*, i8** %key_heading, align 8
  call void @insert_string(i8* %25)
  store i8 1, i8* %something, align 1
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %lor.lhs.false
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.136, %if.end.38
  %26 = load i64, i64* %maps, align 8
  %and40 = and i64 %26, 7
  %conv41 = trunc i64 %and40 to i32
  %cmp42 = icmp eq i32 %conv41, 3
  br i1 %cmp42, label %for.body.44, label %for.end.140

for.body.44:                                      ; preds = %for.cond.39
  %27 = load i64, i64* %maps, align 8
  %sub47 = sub nsw i64 %27, 3
  %28 = inttoptr i64 %sub47 to i8*
  %29 = bitcast i8* %28 to %struct.Lisp_Cons*
  %car48 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %29, i32 0, i32 0
  %30 = load i64, i64* %car48, align 8
  store i64 %30, i64* %elt45, align 8
  %31 = load i64, i64* %elt45, align 8
  %call49 = call i64 @Fcar(i64 %31)
  store i64 %call49, i64* %elt_prefix46, align 8
  %call50 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call50, i64* %sub_shadows, align 8
  %32 = load i64, i64* %shadow.addr, align 8
  store i64 %32, i64* %tail, align 8
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.100, %for.body.44
  %33 = load i64, i64* %tail, align 8
  %and52 = and i64 %33, 7
  %conv53 = trunc i64 %and52 to i32
  %cmp54 = icmp eq i32 %conv53, 3
  br i1 %cmp54, label %for.body.56, label %for.end.104

for.body.56:                                      ; preds = %for.cond.51
  %34 = load i64, i64* %tail, align 8
  %sub57 = sub nsw i64 %34, 3
  %35 = inttoptr i64 %sub57 to i8*
  %36 = bitcast i8* %35 to %struct.Lisp_Cons*
  %car58 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %36, i32 0, i32 0
  %37 = load i64, i64* %car58, align 8
  store i64 %37, i64* %shmap, align 8
  %38 = load i64, i64* %elt_prefix46, align 8
  %call59 = call zeroext i1 @STRINGP(i64 %38)
  br i1 %call59, label %land.lhs.true, label %lor.lhs.false.64

land.lhs.true:                                    ; preds = %for.body.56
  %39 = load i64, i64* %elt_prefix46, align 8
  %call61 = call i64 @SCHARS(i64 %39)
  %cmp62 = icmp eq i64 %call61, 0
  br i1 %cmp62, label %if.then.71, label %lor.lhs.false.64

lor.lhs.false.64:                                 ; preds = %land.lhs.true, %for.body.56
  %40 = load i64, i64* %elt_prefix46, align 8
  %call65 = call zeroext i1 @VECTORP(i64 %40)
  br i1 %call65, label %land.lhs.true.67, label %if.else

land.lhs.true.67:                                 ; preds = %lor.lhs.false.64
  %41 = load i64, i64* %elt_prefix46, align 8
  %call68 = call i64 @ASIZE(i64 %41)
  %cmp69 = icmp eq i64 %call68, 0
  br i1 %cmp69, label %if.then.71, label %if.else

if.then.71:                                       ; preds = %land.lhs.true.67, %land.lhs.true
  br label %if.end.83

if.else:                                          ; preds = %land.lhs.true.67, %lor.lhs.false.64
  %42 = load i64, i64* %shmap, align 8
  %43 = load i64, i64* %elt45, align 8
  %call72 = call i64 @Fcar(i64 %43)
  %call73 = call i64 @builtin_lisp_symbol(i32 901)
  %call74 = call i64 @Flookup_key(i64 %42, i64 %call72, i64 %call73)
  store i64 %call74, i64* %shmap, align 8
  %44 = load i64, i64* %shmap, align 8
  %and75 = and i64 %44, 7
  %conv76 = trunc i64 %and75 to i32
  %and77 = and i32 %conv76, -5
  %cmp78 = icmp eq i32 %and77, 2
  br i1 %cmp78, label %if.then.80, label %if.end.82

if.then.80:                                       ; preds = %if.else
  %call81 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call81, i64* %shmap, align 8
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.80, %if.else
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.then.71
  %45 = load i64, i64* %shmap, align 8
  %call84 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp85 = icmp eq i64 %45, %call84
  br i1 %cmp85, label %if.end.93, label %land.lhs.true.87

land.lhs.true.87:                                 ; preds = %if.end.83
  %46 = load i64, i64* %shmap, align 8
  %call88 = call i64 @get_keymap(i64 %46, i1 zeroext false, i1 zeroext false)
  %call89 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp90 = icmp eq i64 %call88, %call89
  br i1 %cmp90, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %land.lhs.true.87
  br label %skip

if.end.93:                                        ; preds = %land.lhs.true.87, %if.end.83
  %47 = load i64, i64* %shmap, align 8
  %call94 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp95 = icmp eq i64 %47, %call94
  br i1 %cmp95, label %if.end.99, label %if.then.97

if.then.97:                                       ; preds = %if.end.93
  %48 = load i64, i64* %shmap, align 8
  %49 = load i64, i64* %sub_shadows, align 8
  %call98 = call i64 @Fcons(i64 %48, i64 %49)
  store i64 %call98, i64* %sub_shadows, align 8
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.97, %if.end.93
  br label %for.inc.100

for.inc.100:                                      ; preds = %if.end.99
  %50 = load i64, i64* %tail, align 8
  %sub101 = sub nsw i64 %50, 3
  %51 = inttoptr i64 %sub101 to i8*
  %52 = bitcast i8* %51 to %struct.Lisp_Cons*
  %u102 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %52, i32 0, i32 1
  %cdr103 = bitcast %union.anon* %u102 to i64*
  %53 = load i64, i64* %cdr103, align 8
  store i64 %53, i64* %tail, align 8
  br label %for.cond.51

for.end.104:                                      ; preds = %for.cond.51
  %54 = load i64, i64* %orig_maps, align 8
  store i64 %54, i64* %tail, align 8
  br label %for.cond.105

for.cond.105:                                     ; preds = %for.inc.125, %for.end.104
  %55 = load i64, i64* %tail, align 8
  %56 = load i64, i64* %maps, align 8
  %cmp106 = icmp eq i64 %55, %56
  %lnot = xor i1 %cmp106, true
  br i1 %lnot, label %for.body.108, label %for.end.129

for.body.108:                                     ; preds = %for.cond.105
  %57 = load i64, i64* %tail, align 8
  %sub110 = sub nsw i64 %57, 3
  %58 = inttoptr i64 %sub110 to i8*
  %59 = bitcast i8* %58 to %struct.Lisp_Cons*
  %car111 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %59, i32 0, i32 0
  %60 = load i64, i64* %car111, align 8
  %call112 = call i64 @Fcar(i64 %60)
  %61 = load i64, i64* %elt_prefix46, align 8
  %call113 = call i64 @Fequal(i64 %call112, i64 %61)
  store i64 %call113, i64* %tem109, align 8
  %62 = load i64, i64* %tem109, align 8
  %call114 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp115 = icmp eq i64 %62, %call114
  br i1 %cmp115, label %if.end.124, label %if.then.117

if.then.117:                                      ; preds = %for.body.108
  %63 = load i64, i64* %tail, align 8
  %sub118 = sub nsw i64 %63, 3
  %64 = inttoptr i64 %sub118 to i8*
  %65 = bitcast i8* %64 to %struct.Lisp_Cons*
  %car119 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %65, i32 0, i32 0
  %66 = load i64, i64* %car119, align 8
  %sub120 = sub nsw i64 %66, 3
  %67 = inttoptr i64 %sub120 to i8*
  %68 = bitcast i8* %67 to %struct.Lisp_Cons*
  %u121 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %68, i32 0, i32 1
  %cdr122 = bitcast %union.anon* %u121 to i64*
  %69 = load i64, i64* %cdr122, align 8
  %70 = load i64, i64* %sub_shadows, align 8
  %call123 = call i64 @Fcons(i64 %69, i64 %70)
  store i64 %call123, i64* %sub_shadows, align 8
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.117, %for.body.108
  br label %for.inc.125

for.inc.125:                                      ; preds = %if.end.124
  %71 = load i64, i64* %tail, align 8
  %sub126 = sub nsw i64 %71, 3
  %72 = inttoptr i64 %sub126 to i8*
  %73 = bitcast i8* %72 to %struct.Lisp_Cons*
  %u127 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %73, i32 0, i32 1
  %cdr128 = bitcast %union.anon* %u127 to i64*
  %74 = load i64, i64* %cdr128, align 8
  store i64 %74, i64* %tail, align 8
  br label %for.cond.105

for.end.129:                                      ; preds = %for.cond.105
  %75 = load i64, i64* %elt45, align 8
  %call130 = call i64 @Fcdr(i64 %75)
  %76 = load i64, i64* %elt_prefix46, align 8
  %77 = load i8, i8* %transl.addr, align 1
  %tobool131 = trunc i8 %77 to i1
  %cond = select i1 %tobool131, void (i64, i64)* @describe_translation, void (i64, i64)* @describe_command
  %78 = load i8, i8* %partial.addr, align 1
  %tobool133 = trunc i8 %78 to i1
  %79 = load i64, i64* %sub_shadows, align 8
  %80 = load i8, i8* %nomenu.addr, align 1
  %tobool134 = trunc i8 %80 to i1
  %81 = load i8, i8* %mention_shadow.addr, align 1
  %tobool135 = trunc i8 %81 to i1
  call void @describe_map(i64 %call130, i64 %76, void (i64, i64)* %cond, i1 zeroext %tobool133, i64 %79, i64* %seen, i1 zeroext %tobool134, i1 zeroext %tobool135)
  br label %skip

skip:                                             ; preds = %for.end.129, %if.then.92
  br label %for.inc.136

for.inc.136:                                      ; preds = %skip
  %82 = load i64, i64* %maps, align 8
  %sub137 = sub nsw i64 %82, 3
  %83 = inttoptr i64 %sub137 to i8*
  %84 = bitcast i8* %83 to %struct.Lisp_Cons*
  %u138 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %84, i32 0, i32 1
  %cdr139 = bitcast %union.anon* %u138 to i64*
  %85 = load i64, i64* %cdr139, align 8
  store i64 %85, i64* %maps, align 8
  br label %for.cond.39

for.end.140:                                      ; preds = %for.cond.39
  %86 = load i8, i8* %something, align 1
  %tobool141 = trunc i8 %86 to i1
  br i1 %tobool141, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %for.end.140
  call void @insert_string(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.142, %for.end.140
  ret void
}

declare i64 @Fset_buffer(i64) #1

declare i64 @marker_position(i64) #1

; Function Attrs: noreturn
declare void @emacs_abort() #2

declare i64 @Fdelq(i64, i64) #1

declare void @insert1(i64) #1

; Function Attrs: nounwind uwtable
define internal void @describe_map(i64 %map, i64 %prefix, void (i64, i64)* %elt_describer, i1 zeroext %partial, i64 %shadow, i64* %seen, i1 zeroext %nomenu, i1 zeroext %mention_shadow) #0 {
entry:
  %map.addr = alloca i64, align 8
  %prefix.addr = alloca i64, align 8
  %elt_describer.addr = alloca void (i64, i64)*, align 8
  %partial.addr = alloca i8, align 1
  %shadow.addr = alloca i64, align 8
  %seen.addr = alloca i64*, align 8
  %nomenu.addr = alloca i8, align 1
  %mention_shadow.addr = alloca i8, align 1
  %tail = alloca i64, align 8
  %definition = alloca i64, align 8
  %event = alloca i64, align 8
  %tem = alloca i64, align 8
  %suppress = alloca i64, align 8
  %kludge = alloca i64, align 8
  %first = alloca i8, align 1
  %length_needed = alloca i64, align 8
  %vect = alloca %struct.describe_map_elt*, align 8
  %slots_used = alloca i64, align 8
  %i = alloca i64, align 8
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  %this_shadowed = alloca i8, align 1
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %pt = alloca i64, align 8
  store i64 %map, i64* %map.addr, align 8
  store i64 %prefix, i64* %prefix.addr, align 8
  store void (i64, i64)* %elt_describer, void (i64, i64)** %elt_describer.addr, align 8
  %frombool = zext i1 %partial to i8
  store i8 %frombool, i8* %partial.addr, align 1
  store i64 %shadow, i64* %shadow.addr, align 8
  store i64* %seen, i64** %seen.addr, align 8
  %frombool1 = zext i1 %nomenu to i8
  store i8 %frombool1, i8* %nomenu.addr, align 1
  %frombool2 = zext i1 %mention_shadow to i8
  store i8 %frombool2, i8* %mention_shadow.addr, align 1
  store i8 1, i8* %first, align 1
  store i64 0, i64* %length_needed, align 8
  store i64 0, i64* %slots_used, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %suppress, align 8
  %0 = load i8, i8* %partial.addr, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call i64 @intern(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.65, i32 0, i32 0))
  store i64 %call3, i64* %suppress, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %call5 = call i64 @Fmake_vector(i64 6, i64 %call4)
  store i64 %call5, i64* %kludge, align 8
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call6, i64* %definition, align 8
  %call7 = call i64 @builtin_lisp_symbol(i32 590)
  %1 = load i64, i64* %map.addr, align 8
  %call8 = call i64 @call1(i64 %call7, i64 %1)
  store i64 %call8, i64* %map.addr, align 8
  %2 = load i64, i64* %map.addr, align 8
  store i64 %2, i64* %tail, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i64, i64* %tail, align 8
  %and = and i64 %3, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %length_needed, align 8
  %inc = add nsw i64 %4, 1
  store i64 %inc, i64* %length_needed, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %tail, align 8
  %sub = sub nsw i64 %5, 3
  %6 = inttoptr i64 %sub to i8*
  %7 = bitcast i8* %6 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %7, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %8 = load i64, i64* %cdr, align 8
  store i64 %8, i64* %tail, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i64 16384, i64* %sa_avail, align 8
  %call10 = call i64 @SPECPDL_INDEX()
  store i64 %call10, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  br label %do.body

do.body:                                          ; preds = %for.end
  %9 = load i64, i64* %length_needed, align 8
  %10 = load i64, i64* %sa_avail, align 8
  %div = udiv i64 %10, 24
  %div11 = udiv i64 %div, 1
  %cmp12 = icmp ule i64 %9, %div11
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %do.body
  %11 = load i64, i64* %length_needed, align 8
  %mul = mul i64 24, %11
  %12 = load i64, i64* %sa_avail, align 8
  %sub15 = sub i64 %12, %mul
  store i64 %sub15, i64* %sa_avail, align 8
  %13 = load i64, i64* %length_needed, align 8
  %mul16 = mul i64 24, %13
  %14 = alloca i8, i64 %mul16
  %15 = bitcast i8* %14 to %struct.describe_map_elt*
  store %struct.describe_map_elt* %15, %struct.describe_map_elt** %vect, align 8
  br label %if.end.18

if.else:                                          ; preds = %do.body
  %16 = load i64, i64* %length_needed, align 8
  %call17 = call noalias i8* @xnmalloc(i64 %16, i64 24)
  %17 = bitcast i8* %call17 to %struct.describe_map_elt*
  store %struct.describe_map_elt* %17, %struct.describe_map_elt** %vect, align 8
  store i8 1, i8* %sa_must_free, align 1
  %18 = load %struct.describe_map_elt*, %struct.describe_map_elt** %vect, align 8
  %19 = bitcast %struct.describe_map_elt* %18 to i8*
  call void @record_unwind_protect_ptr(void (i8*)* @xfree, i8* %19)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.14
  br label %do.end

do.end:                                           ; preds = %if.end.18
  %20 = load i64, i64* %map.addr, align 8
  store i64 %20, i64* %tail, align 8
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.181, %do.end
  %21 = load i64, i64* %tail, align 8
  %and20 = and i64 %21, 7
  %conv21 = trunc i64 %and20 to i32
  %cmp22 = icmp eq i32 %conv21, 3
  br i1 %cmp22, label %for.body.24, label %for.end.185

for.body.24:                                      ; preds = %for.cond.19
  br label %do.body.25

do.body.25:                                       ; preds = %for.body.24
  %22 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call26 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp27 = icmp eq i64 %22, %call26
  br i1 %cmp27, label %if.else.33, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.body.25
  %23 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call29 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp30 = icmp eq i64 %23, %call29
  br i1 %cmp30, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %land.lhs.true
  call void @process_quit_flag()
  br label %if.end.37

if.else.33:                                       ; preds = %land.lhs.true, %do.body.25
  %24 = load volatile i8, i8* @pending_signals, align 1
  %tobool34 = trunc i8 %24 to i1
  br i1 %tobool34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.else.33
  call void @process_pending_signals()
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %if.else.33
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then.32
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %25 = load i64, i64* %tail, align 8
  %sub39 = sub nsw i64 %25, 3
  %26 = inttoptr i64 %sub39 to i8*
  %27 = bitcast i8* %26 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %27, i32 0, i32 0
  %28 = load i64, i64* %car, align 8
  %call40 = call zeroext i1 @VECTORP(i64 %28)
  br i1 %call40, label %if.then.46, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.38
  %29 = load i64, i64* %tail, align 8
  %sub42 = sub nsw i64 %29, 3
  %30 = inttoptr i64 %sub42 to i8*
  %31 = bitcast i8* %30 to %struct.Lisp_Cons*
  %car43 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %31, i32 0, i32 0
  %32 = load i64, i64* %car43, align 8
  %call44 = call zeroext i1 @CHAR_TABLE_P(i64 %32)
  br i1 %call44, label %if.then.46, label %if.else.52

if.then.46:                                       ; preds = %lor.lhs.false, %do.end.38
  %33 = load i64, i64* %tail, align 8
  %sub47 = sub nsw i64 %33, 3
  %34 = inttoptr i64 %sub47 to i8*
  %35 = bitcast i8* %34 to %struct.Lisp_Cons*
  %car48 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %35, i32 0, i32 0
  %36 = load i64, i64* %car48, align 8
  %37 = load i64, i64* %prefix.addr, align 8
  %call49 = call i64 @builtin_lisp_symbol(i32 0)
  %38 = load void (i64, i64)*, void (i64, i64)** %elt_describer.addr, align 8
  %39 = load i8, i8* %partial.addr, align 1
  %tobool50 = trunc i8 %39 to i1
  %40 = load i64, i64* %shadow.addr, align 8
  %41 = load i64, i64* %map.addr, align 8
  %42 = load i8, i8* %mention_shadow.addr, align 1
  %tobool51 = trunc i8 %42 to i1
  call void @describe_vector(i64 %36, i64 %37, i64 %call49, void (i64, i64)* %38, i1 zeroext %tobool50, i64 %40, i64 %41, i1 zeroext true, i1 zeroext %tobool51)
  br label %if.end.180

if.else.52:                                       ; preds = %lor.lhs.false
  %43 = load i64, i64* %tail, align 8
  %sub53 = sub nsw i64 %43, 3
  %44 = inttoptr i64 %sub53 to i8*
  %45 = bitcast i8* %44 to %struct.Lisp_Cons*
  %car54 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %45, i32 0, i32 0
  %46 = load i64, i64* %car54, align 8
  %and55 = and i64 %46, 7
  %conv56 = trunc i64 %and55 to i32
  %cmp57 = icmp eq i32 %conv56, 3
  br i1 %cmp57, label %if.then.59, label %if.else.155

if.then.59:                                       ; preds = %if.else.52
  store i8 0, i8* %this_shadowed, align 1
  %47 = load i64, i64* %tail, align 8
  %sub60 = sub nsw i64 %47, 3
  %48 = inttoptr i64 %sub60 to i8*
  %49 = bitcast i8* %48 to %struct.Lisp_Cons*
  %car61 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %49, i32 0, i32 0
  %50 = load i64, i64* %car61, align 8
  %sub62 = sub nsw i64 %50, 3
  %51 = inttoptr i64 %sub62 to i8*
  %52 = bitcast i8* %51 to %struct.Lisp_Cons*
  %car63 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %52, i32 0, i32 0
  %53 = load i64, i64* %car63, align 8
  store i64 %53, i64* %event, align 8
  %54 = load i64, i64* %event, align 8
  %and64 = and i64 %54, 7
  %conv65 = trunc i64 %and64 to i32
  %cmp66 = icmp eq i32 %conv65, 0
  br i1 %cmp66, label %if.end.75, label %lor.lhs.false.68

lor.lhs.false.68:                                 ; preds = %if.then.59
  %55 = load i64, i64* %event, align 8
  %and69 = and i64 %55, 7
  %conv70 = trunc i64 %and69 to i32
  %and71 = and i32 %conv70, -5
  %cmp72 = icmp eq i32 %and71, 2
  br i1 %cmp72, label %if.end.75, label %if.then.74

if.then.74:                                       ; preds = %lor.lhs.false.68
  br label %for.inc.181

if.end.75:                                        ; preds = %lor.lhs.false.68, %if.then.59
  %56 = load i8, i8* %nomenu.addr, align 1
  %tobool76 = trunc i8 %56 to i1
  br i1 %tobool76, label %land.lhs.true.78, label %if.end.83

land.lhs.true.78:                                 ; preds = %if.end.75
  %57 = load i64, i64* %event, align 8
  %call79 = call i64 @builtin_lisp_symbol(i32 651)
  %cmp80 = icmp eq i64 %57, %call79
  br i1 %cmp80, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %land.lhs.true.78
  br label %for.inc.181

if.end.83:                                        ; preds = %land.lhs.true.78, %if.end.75
  %58 = load i64, i64* %tail, align 8
  %sub84 = sub nsw i64 %58, 3
  %59 = inttoptr i64 %sub84 to i8*
  %60 = bitcast i8* %59 to %struct.Lisp_Cons*
  %car85 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %60, i32 0, i32 0
  %61 = load i64, i64* %car85, align 8
  %sub86 = sub nsw i64 %61, 3
  %62 = inttoptr i64 %sub86 to i8*
  %63 = bitcast i8* %62 to %struct.Lisp_Cons*
  %u87 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %63, i32 0, i32 1
  %cdr88 = bitcast %union.anon* %u87 to i64*
  %64 = load i64, i64* %cdr88, align 8
  %call89 = call i64 @get_keyelt(i64 %64, i1 zeroext false)
  store i64 %call89, i64* %definition, align 8
  %65 = load i64, i64* %definition, align 8
  %call90 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp91 = icmp eq i64 %65, %call90
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %if.end.83
  br label %for.inc.181

if.end.94:                                        ; preds = %if.end.83
  %66 = load i64, i64* %definition, align 8
  %and95 = and i64 %66, 7
  %conv96 = trunc i64 %and95 to i32
  %cmp97 = icmp eq i32 %conv96, 0
  br i1 %cmp97, label %land.lhs.true.99, label %if.end.109

land.lhs.true.99:                                 ; preds = %if.end.94
  %67 = load i8, i8* %partial.addr, align 1
  %tobool100 = trunc i8 %67 to i1
  br i1 %tobool100, label %if.then.102, label %if.end.109

if.then.102:                                      ; preds = %land.lhs.true.99
  %68 = load i64, i64* %definition, align 8
  %69 = load i64, i64* %suppress, align 8
  %call103 = call i64 @Fget(i64 %68, i64 %69)
  store i64 %call103, i64* %tem, align 8
  %70 = load i64, i64* %tem, align 8
  %call104 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp105 = icmp eq i64 %70, %call104
  br i1 %cmp105, label %if.end.108, label %if.then.107

if.then.107:                                      ; preds = %if.then.102
  br label %for.inc.181

if.end.108:                                       ; preds = %if.then.102
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %land.lhs.true.99, %if.end.94
  %71 = load i64, i64* %kludge, align 8
  %72 = load i64, i64* %event, align 8
  call void @ASET(i64 %71, i64 0, i64 %72)
  %73 = load i64, i64* %shadow.addr, align 8
  %call110 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp111 = icmp eq i64 %73, %call110
  br i1 %cmp111, label %if.end.141, label %if.then.113

if.then.113:                                      ; preds = %if.end.109
  %74 = load i64, i64* %shadow.addr, align 8
  %75 = load i64, i64* %kludge, align 8
  %call114 = call i64 @builtin_lisp_symbol(i32 901)
  %call115 = call i64 @shadow_lookup(i64 %74, i64 %75, i64 %call114, i1 zeroext false)
  store i64 %call115, i64* %tem, align 8
  %76 = load i64, i64* %tem, align 8
  %call116 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp117 = icmp eq i64 %76, %call116
  br i1 %cmp117, label %if.end.140, label %if.then.119

if.then.119:                                      ; preds = %if.then.113
  %77 = load i64, i64* %definition, align 8
  %call120 = call i64 @get_keymap(i64 %77, i1 zeroext false, i1 zeroext false)
  %call121 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp122 = icmp eq i64 %call120, %call121
  br i1 %cmp122, label %if.else.130, label %land.lhs.true.124

land.lhs.true.124:                                ; preds = %if.then.119
  %78 = load i64, i64* %tem, align 8
  %call125 = call i64 @get_keymap(i64 %78, i1 zeroext false, i1 zeroext false)
  %call126 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp127 = icmp eq i64 %call125, %call126
  br i1 %cmp127, label %if.else.130, label %if.then.129

if.then.129:                                      ; preds = %land.lhs.true.124
  br label %if.end.139

if.else.130:                                      ; preds = %land.lhs.true.124, %if.then.119
  %79 = load i8, i8* %mention_shadow.addr, align 1
  %tobool131 = trunc i8 %79 to i1
  br i1 %tobool131, label %land.lhs.true.133, label %if.else.137

land.lhs.true.133:                                ; preds = %if.else.130
  %80 = load i64, i64* %tem, align 8
  %81 = load i64, i64* %definition, align 8
  %cmp134 = icmp eq i64 %80, %81
  br i1 %cmp134, label %if.else.137, label %if.then.136

if.then.136:                                      ; preds = %land.lhs.true.133
  store i8 1, i8* %this_shadowed, align 1
  br label %if.end.138

if.else.137:                                      ; preds = %land.lhs.true.133, %if.else.130
  br label %for.inc.181

if.end.138:                                       ; preds = %if.then.136
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.138, %if.then.129
  br label %if.end.140

if.end.140:                                       ; preds = %if.end.139, %if.then.113
  br label %if.end.141

if.end.141:                                       ; preds = %if.end.140, %if.end.109
  %82 = load i64, i64* %map.addr, align 8
  %83 = load i64, i64* %kludge, align 8
  %call142 = call i64 @builtin_lisp_symbol(i32 901)
  %call143 = call i64 @Flookup_key(i64 %82, i64 %83, i64 %call142)
  store i64 %call143, i64* %tem, align 8
  %84 = load i64, i64* %tem, align 8
  %85 = load i64, i64* %definition, align 8
  %cmp144 = icmp eq i64 %84, %85
  br i1 %cmp144, label %if.end.147, label %if.then.146

if.then.146:                                      ; preds = %if.end.141
  br label %for.inc.181

if.end.147:                                       ; preds = %if.end.141
  %86 = load i64, i64* %event, align 8
  %87 = load i64, i64* %slots_used, align 8
  %88 = load %struct.describe_map_elt*, %struct.describe_map_elt** %vect, align 8
  %arrayidx = getelementptr inbounds %struct.describe_map_elt, %struct.describe_map_elt* %88, i64 %87
  %event148 = getelementptr inbounds %struct.describe_map_elt, %struct.describe_map_elt* %arrayidx, i32 0, i32 0
  store i64 %86, i64* %event148, align 8
  %89 = load i64, i64* %definition, align 8
  %90 = load i64, i64* %slots_used, align 8
  %91 = load %struct.describe_map_elt*, %struct.describe_map_elt** %vect, align 8
  %arrayidx149 = getelementptr inbounds %struct.describe_map_elt, %struct.describe_map_elt* %91, i64 %90
  %definition150 = getelementptr inbounds %struct.describe_map_elt, %struct.describe_map_elt* %arrayidx149, i32 0, i32 1
  store i64 %89, i64* %definition150, align 8
  %92 = load i8, i8* %this_shadowed, align 1
  %tobool151 = trunc i8 %92 to i1
  %93 = load i64, i64* %slots_used, align 8
  %94 = load %struct.describe_map_elt*, %struct.describe_map_elt** %vect, align 8
  %arrayidx152 = getelementptr inbounds %struct.describe_map_elt, %struct.describe_map_elt* %94, i64 %93
  %shadowed = getelementptr inbounds %struct.describe_map_elt, %struct.describe_map_elt* %arrayidx152, i32 0, i32 2
  %frombool153 = zext i1 %tobool151 to i8
  store i8 %frombool153, i8* %shadowed, align 1
  %95 = load i64, i64* %slots_used, align 8
  %inc154 = add nsw i64 %95, 1
  store i64 %inc154, i64* %slots_used, align 8
  br label %if.end.179

if.else.155:                                      ; preds = %if.else.52
  %96 = load i64, i64* %tail, align 8
  %sub156 = sub nsw i64 %96, 3
  %97 = inttoptr i64 %sub156 to i8*
  %98 = bitcast i8* %97 to %struct.Lisp_Cons*
  %car157 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %98, i32 0, i32 0
  %99 = load i64, i64* %car157, align 8
  %call158 = call i64 @builtin_lisp_symbol(i32 589)
  %cmp159 = icmp eq i64 %99, %call158
  br i1 %cmp159, label %if.then.161, label %if.end.178

if.then.161:                                      ; preds = %if.else.155
  %100 = load i64, i64* %tail, align 8
  %101 = load i64*, i64** %seen.addr, align 8
  %102 = load i64, i64* %101, align 8
  %call162 = call i64 @Fassq(i64 %100, i64 %102)
  store i64 %call162, i64* %tem, align 8
  %103 = load i64, i64* %tem, align 8
  %and163 = and i64 %103, 7
  %conv164 = trunc i64 %and163 to i32
  %cmp165 = icmp eq i32 %conv164, 3
  br i1 %cmp165, label %land.lhs.true.167, label %if.end.175

land.lhs.true.167:                                ; preds = %if.then.161
  %104 = load i64, i64* %tem, align 8
  %sub168 = sub nsw i64 %104, 3
  %105 = inttoptr i64 %sub168 to i8*
  %106 = bitcast i8* %105 to %struct.Lisp_Cons*
  %car169 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %106, i32 0, i32 0
  %107 = load i64, i64* %car169, align 8
  %108 = load i64, i64* %prefix.addr, align 8
  %call170 = call i64 @Fequal(i64 %107, i64 %108)
  %call171 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp172 = icmp eq i64 %call170, %call171
  br i1 %cmp172, label %if.end.175, label %if.then.174

if.then.174:                                      ; preds = %land.lhs.true.167
  br label %for.end.185

if.end.175:                                       ; preds = %land.lhs.true.167, %if.then.161
  %109 = load i64, i64* %tail, align 8
  %110 = load i64, i64* %prefix.addr, align 8
  %call176 = call i64 @Fcons(i64 %109, i64 %110)
  %111 = load i64*, i64** %seen.addr, align 8
  %112 = load i64, i64* %111, align 8
  %call177 = call i64 @Fcons(i64 %call176, i64 %112)
  %113 = load i64*, i64** %seen.addr, align 8
  store i64 %call177, i64* %113, align 8
  br label %if.end.178

if.end.178:                                       ; preds = %if.end.175, %if.else.155
  br label %if.end.179

if.end.179:                                       ; preds = %if.end.178, %if.end.147
  br label %if.end.180

if.end.180:                                       ; preds = %if.end.179, %if.then.46
  br label %for.inc.181

for.inc.181:                                      ; preds = %if.end.180, %if.then.146, %if.else.137, %if.then.107, %if.then.93, %if.then.82, %if.then.74
  %114 = load i64, i64* %tail, align 8
  %sub182 = sub nsw i64 %114, 3
  %115 = inttoptr i64 %sub182 to i8*
  %116 = bitcast i8* %115 to %struct.Lisp_Cons*
  %u183 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %116, i32 0, i32 1
  %cdr184 = bitcast %union.anon* %u183 to i64*
  %117 = load i64, i64* %cdr184, align 8
  store i64 %117, i64* %tail, align 8
  br label %for.cond.19

for.end.185:                                      ; preds = %if.then.174, %for.cond.19
  %118 = load %struct.describe_map_elt*, %struct.describe_map_elt** %vect, align 8
  %119 = bitcast %struct.describe_map_elt* %118 to i8*
  %120 = load i64, i64* %slots_used, align 8
  call void @qsort(i8* %119, i64 %120, i64 24, i32 (i8*, i8*)* @describe_map_compare)
  store i64 0, i64* %i, align 8
  br label %for.cond.186

for.cond.186:                                     ; preds = %for.inc.278, %for.end.185
  %121 = load i64, i64* %i, align 8
  %122 = load i64, i64* %slots_used, align 8
  %cmp187 = icmp slt i64 %121, %122
  br i1 %cmp187, label %for.body.189, label %for.end.280

for.body.189:                                     ; preds = %for.cond.186
  %123 = load i8, i8* %first, align 1
  %tobool190 = trunc i8 %123 to i1
  br i1 %tobool190, label %if.then.191, label %if.end.192

if.then.191:                                      ; preds = %for.body.189
  store i32 0, i32* @previous_description_column, align 4
  call void @insert(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i64 1)
  store i8 0, i8* %first, align 1
  br label %if.end.192

if.end.192:                                       ; preds = %if.then.191, %for.body.189
  %124 = load i64, i64* %kludge, align 8
  %125 = load i64, i64* %i, align 8
  %126 = load %struct.describe_map_elt*, %struct.describe_map_elt** %vect, align 8
  %arrayidx193 = getelementptr inbounds %struct.describe_map_elt, %struct.describe_map_elt* %126, i64 %125
  %event194 = getelementptr inbounds %struct.describe_map_elt, %struct.describe_map_elt* %arrayidx193, i32 0, i32 0
  %127 = load i64, i64* %event194, align 8
  call void @ASET(i64 %124, i64 0, i64 %127)
  %128 = load i64, i64* %i, align 8
  %129 = load %struct.describe_map_elt*, %struct.describe_map_elt** %vect, align 8
  %arrayidx195 = getelementptr inbounds %struct.describe_map_elt, %struct.describe_map_elt* %129, i64 %128
  %event196 = getelementptr inbounds %struct.describe_map_elt, %struct.describe_map_elt* %arrayidx195, i32 0, i32 0
  %130 = load i64, i64* %event196, align 8
  store i64 %130, i64* %start, align 8
  %131 = load i64, i64* %start, align 8
  store i64 %131, i64* %end, align 8
  %132 = load i64, i64* %i, align 8
  %133 = load %struct.describe_map_elt*, %struct.describe_map_elt** %vect, align 8
  %arrayidx197 = getelementptr inbounds %struct.describe_map_elt, %struct.describe_map_elt* %133, i64 %132
  %definition198 = getelementptr inbounds %struct.describe_map_elt, %struct.describe_map_elt* %arrayidx197, i32 0, i32 1
  %134 = load i64, i64* %definition198, align 8
  store i64 %134, i64* %definition, align 8
  %135 = load i64, i64* %i, align 8
  %136 = load %struct.describe_map_elt*, %struct.describe_map_elt** %vect, align 8
  %arrayidx199 = getelementptr inbounds %struct.describe_map_elt, %struct.describe_map_elt* %136, i64 %135
  %event200 = getelementptr inbounds %struct.describe_map_elt, %struct.describe_map_elt* %arrayidx199, i32 0, i32 0
  %137 = load i64, i64* %event200, align 8
  %and201 = and i64 %137, 7
  %conv202 = trunc i64 %and201 to i32
  %and203 = and i32 %conv202, -5
  %cmp204 = icmp eq i32 %and203, 2
  br i1 %cmp204, label %if.then.206, label %if.end.241

if.then.206:                                      ; preds = %if.end.192
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.206
  %138 = load i64, i64* %i, align 8
  %add = add nsw i64 %138, 1
  %139 = load i64, i64* %slots_used, align 8
  %cmp207 = icmp slt i64 %add, %139
  br i1 %cmp207, label %land.lhs.true.209, label %land.end

land.lhs.true.209:                                ; preds = %while.cond
  %140 = load i64, i64* %i, align 8
  %add210 = add nsw i64 %140, 1
  %141 = load %struct.describe_map_elt*, %struct.describe_map_elt** %vect, align 8
  %arrayidx211 = getelementptr inbounds %struct.describe_map_elt, %struct.describe_map_elt* %141, i64 %add210
  %event212 = getelementptr inbounds %struct.describe_map_elt, %struct.describe_map_elt* %arrayidx211, i32 0, i32 0
  %142 = load i64, i64* %event212, align 8
  %143 = load i64, i64* %i, align 8
  %144 = load %struct.describe_map_elt*, %struct.describe_map_elt** %vect, align 8
  %arrayidx213 = getelementptr inbounds %struct.describe_map_elt, %struct.describe_map_elt* %144, i64 %143
  %event214 = getelementptr inbounds %struct.describe_map_elt, %struct.describe_map_elt* %arrayidx213, i32 0, i32 0
  %145 = load i64, i64* %event214, align 8
  %shr = ashr i64 %145, 2
  %add215 = add nsw i64 %shr, 1
  %shl = shl i64 %add215, 2
  %add216 = add i64 %shl, 2
  %cmp217 = icmp eq i64 %142, %add216
  br i1 %cmp217, label %land.lhs.true.219, label %land.end

land.lhs.true.219:                                ; preds = %land.lhs.true.209
  %146 = load i64, i64* %i, align 8
  %add220 = add nsw i64 %146, 1
  %147 = load %struct.describe_map_elt*, %struct.describe_map_elt** %vect, align 8
  %arrayidx221 = getelementptr inbounds %struct.describe_map_elt, %struct.describe_map_elt* %147, i64 %add220
  %definition222 = getelementptr inbounds %struct.describe_map_elt, %struct.describe_map_elt* %arrayidx221, i32 0, i32 1
  %148 = load i64, i64* %definition222, align 8
  %149 = load i64, i64* %definition, align 8
  %call223 = call i64 @Fequal(i64 %148, i64 %149)
  %call224 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp225 = icmp eq i64 %call223, %call224
  br i1 %cmp225, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true.219
  %150 = load i64, i64* %i, align 8
  %151 = load %struct.describe_map_elt*, %struct.describe_map_elt** %vect, align 8
  %arrayidx227 = getelementptr inbounds %struct.describe_map_elt, %struct.describe_map_elt* %151, i64 %150
  %shadowed228 = getelementptr inbounds %struct.describe_map_elt, %struct.describe_map_elt* %arrayidx227, i32 0, i32 2
  %152 = load i8, i8* %shadowed228, align 1
  %tobool229 = trunc i8 %152 to i1
  %conv230 = zext i1 %tobool229 to i32
  %153 = load i64, i64* %i, align 8
  %add231 = add nsw i64 %153, 1
  %154 = load %struct.describe_map_elt*, %struct.describe_map_elt** %vect, align 8
  %arrayidx232 = getelementptr inbounds %struct.describe_map_elt, %struct.describe_map_elt* %154, i64 %add231
  %shadowed233 = getelementptr inbounds %struct.describe_map_elt, %struct.describe_map_elt* %arrayidx232, i32 0, i32 2
  %155 = load i8, i8* %shadowed233, align 1
  %tobool234 = trunc i8 %155 to i1
  %conv235 = zext i1 %tobool234 to i32
  %cmp236 = icmp eq i32 %conv230, %conv235
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.219, %land.lhs.true.209, %while.cond
  %156 = phi i1 [ false, %land.lhs.true.219 ], [ false, %land.lhs.true.209 ], [ false, %while.cond ], [ %cmp236, %land.rhs ]
  br i1 %156, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %157 = load i64, i64* %i, align 8
  %inc238 = add nsw i64 %157, 1
  store i64 %inc238, i64* %i, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %158 = load i64, i64* %i, align 8
  %159 = load %struct.describe_map_elt*, %struct.describe_map_elt** %vect, align 8
  %arrayidx239 = getelementptr inbounds %struct.describe_map_elt, %struct.describe_map_elt* %159, i64 %158
  %event240 = getelementptr inbounds %struct.describe_map_elt, %struct.describe_map_elt* %arrayidx239, i32 0, i32 0
  %160 = load i64, i64* %event240, align 8
  store i64 %160, i64* %end, align 8
  br label %if.end.241

if.end.241:                                       ; preds = %while.end, %if.end.192
  %161 = load i64, i64* %kludge, align 8
  %162 = load i64, i64* %prefix.addr, align 8
  %call242 = call i64 @Fkey_description(i64 %161, i64 %162)
  call void @insert1(i64 %call242)
  %163 = load i64, i64* %start, align 8
  %164 = load i64, i64* %end, align 8
  %cmp243 = icmp eq i64 %163, %164
  br i1 %cmp243, label %if.end.247, label %if.then.245

if.then.245:                                      ; preds = %if.end.241
  call void @insert(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i32 0, i32 0), i64 4)
  %165 = load i64, i64* %kludge, align 8
  %166 = load i64, i64* %end, align 8
  call void @ASET(i64 %165, i64 0, i64 %166)
  %167 = load i64, i64* %kludge, align 8
  %168 = load i64, i64* %prefix.addr, align 8
  %call246 = call i64 @Fkey_description(i64 %167, i64 %168)
  call void @insert1(i64 %call246)
  br label %if.end.247

if.end.247:                                       ; preds = %if.then.245, %if.end.241
  %169 = load void (i64, i64)*, void (i64, i64)** %elt_describer.addr, align 8
  %170 = load i64, i64* %i, align 8
  %171 = load %struct.describe_map_elt*, %struct.describe_map_elt** %vect, align 8
  %arrayidx248 = getelementptr inbounds %struct.describe_map_elt, %struct.describe_map_elt* %171, i64 %170
  %definition249 = getelementptr inbounds %struct.describe_map_elt, %struct.describe_map_elt* %arrayidx248, i32 0, i32 1
  %172 = load i64, i64* %definition249, align 8
  %call250 = call i64 @builtin_lisp_symbol(i32 0)
  call void %169(i64 %172, i64 %call250)
  %173 = load i64, i64* %i, align 8
  %174 = load %struct.describe_map_elt*, %struct.describe_map_elt** %vect, align 8
  %arrayidx251 = getelementptr inbounds %struct.describe_map_elt, %struct.describe_map_elt* %174, i64 %173
  %shadowed252 = getelementptr inbounds %struct.describe_map_elt, %struct.describe_map_elt* %arrayidx251, i32 0, i32 2
  %175 = load i8, i8* %shadowed252, align 1
  %tobool253 = trunc i8 %175 to i1
  br i1 %tobool253, label %if.then.254, label %if.end.277

if.then.254:                                      ; preds = %if.end.247
  %176 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt255 = getelementptr inbounds %struct.buffer, %struct.buffer* %176, i32 0, i32 75
  %177 = load i64, i64* %pt255, align 8
  %add256 = add nsw i64 %177, 0
  %sub257 = sub nsw i64 %add256, 1
  %cmp258 = icmp sgt i64 %sub257, 1
  br i1 %cmp258, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.254
  %178 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt260 = getelementptr inbounds %struct.buffer, %struct.buffer* %178, i32 0, i32 75
  %179 = load i64, i64* %pt260, align 8
  %add261 = add nsw i64 %179, 0
  %sub262 = sub nsw i64 %add261, 1
  br label %cond.end

cond.false:                                       ; preds = %if.then.254
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub262, %cond.true ], [ 1, %cond.false ]
  store i64 %cond, i64* %pt, align 8
  %180 = load i64, i64* %pt, align 8
  call void @set_point(i64 %180)
  call void @insert_string(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.67, i32 0, i32 0))
  %181 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt263 = getelementptr inbounds %struct.buffer, %struct.buffer* %181, i32 0, i32 75
  %182 = load i64, i64* %pt263, align 8
  %add264 = add nsw i64 %182, 0
  %add265 = add nsw i64 %add264, 1
  %183 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %183, i32 0, i32 73
  %184 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %z = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %184, i32 0, i32 2
  %185 = load i64, i64* %z, align 8
  %cmp266 = icmp slt i64 %add265, %185
  br i1 %cmp266, label %cond.true.268, label %cond.false.272

cond.true.268:                                    ; preds = %cond.end
  %186 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt269 = getelementptr inbounds %struct.buffer, %struct.buffer* %186, i32 0, i32 75
  %187 = load i64, i64* %pt269, align 8
  %add270 = add nsw i64 %187, 0
  %add271 = add nsw i64 %add270, 1
  br label %cond.end.275

cond.false.272:                                   ; preds = %cond.end
  %188 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text273 = getelementptr inbounds %struct.buffer, %struct.buffer* %188, i32 0, i32 73
  %189 = load %struct.buffer_text*, %struct.buffer_text** %text273, align 8
  %z274 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %189, i32 0, i32 2
  %190 = load i64, i64* %z274, align 8
  br label %cond.end.275

cond.end.275:                                     ; preds = %cond.false.272, %cond.true.268
  %cond276 = phi i64 [ %add271, %cond.true.268 ], [ %190, %cond.false.272 ]
  store i64 %cond276, i64* %pt, align 8
  %191 = load i64, i64* %pt, align 8
  call void @set_point(i64 %191)
  br label %if.end.277

if.end.277:                                       ; preds = %cond.end.275, %if.end.247
  br label %for.inc.278

for.inc.278:                                      ; preds = %if.end.277
  %192 = load i64, i64* %i, align 8
  %inc279 = add nsw i64 %192, 1
  store i64 %inc279, i64* %i, align 8
  br label %for.cond.186

for.end.280:                                      ; preds = %for.cond.186
  br label %do.body.281

do.body.281:                                      ; preds = %for.end.280
  %193 = load i8, i8* %sa_must_free, align 1
  %tobool282 = trunc i8 %193 to i1
  br i1 %tobool282, label %if.then.283, label %if.end.286

if.then.283:                                      ; preds = %do.body.281
  store i8 0, i8* %sa_must_free, align 1
  %194 = load i64, i64* %sa_count, align 8
  %call284 = call i64 @builtin_lisp_symbol(i32 0)
  %call285 = call i64 @unbind_to(i64 %194, i64 %call284)
  br label %if.end.286

if.end.286:                                       ; preds = %if.then.283, %do.body.281
  br label %do.end.287

do.end.287:                                       ; preds = %if.end.286
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @describe_translation(i64 %definition, i64 %args) #0 {
entry:
  %definition.addr = alloca i64, align 8
  %args.addr = alloca i64, align 8
  %tem1 = alloca i64, align 8
  store i64 %definition, i64* %definition.addr, align 8
  store i64 %args, i64* %args.addr, align 8
  %call = call i64 @Findent_to(i64 66, i64 6)
  %0 = load i64, i64* %definition.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %definition.addr, align 8
  %call2 = call i64 @SYMBOL_NAME(i64 %1)
  store i64 %call2, i64* %tem1, align 8
  %2 = load i64, i64* %tem1, align 8
  call void @insert1(i64 %2)
  call void @insert_string(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.18

if.else:                                          ; preds = %entry
  %3 = load i64, i64* %definition.addr, align 8
  %call3 = call zeroext i1 @STRINGP(i64 %3)
  br i1 %call3, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %4 = load i64, i64* %definition.addr, align 8
  %call5 = call zeroext i1 @VECTORP(i64 %4)
  br i1 %call5, label %if.then.7, label %if.else.10

if.then.7:                                        ; preds = %lor.lhs.false, %if.else
  %5 = load i64, i64* %definition.addr, align 8
  %call8 = call i64 @builtin_lisp_symbol(i32 0)
  %call9 = call i64 @Fkey_description(i64 %5, i64 %call8)
  call void @insert1(i64 %call9)
  call void @insert_string(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.17

if.else.10:                                       ; preds = %lor.lhs.false
  %6 = load i64, i64* %definition.addr, align 8
  %call11 = call i64 @get_keymap(i64 %6, i1 zeroext false, i1 zeroext false)
  %call12 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp13 = icmp eq i64 %call11, %call12
  br i1 %cmp13, label %if.else.16, label %if.then.15

if.then.15:                                       ; preds = %if.else.10
  call void @insert_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.63, i32 0, i32 0))
  br label %if.end

if.else.16:                                       ; preds = %if.else.10
  call void @insert_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else.16, %if.then.15
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %if.then.7
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @describe_command(i64 %definition, i64 %args) #0 {
entry:
  %definition.addr = alloca i64, align 8
  %args.addr = alloca i64, align 8
  %tem1 = alloca i64, align 8
  %column = alloca i64, align 8
  %description_column = alloca i32, align 4
  store i64 %definition, i64* %definition.addr, align 8
  store i64 %args, i64* %args.addr, align 8
  %call = call i64 @current_column()
  store i64 %call, i64* %column, align 8
  %0 = load i64, i64* %column, align 8
  %cmp = icmp sgt i64 %0, 30
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @insert_char(i32 10)
  store i32 32, i32* %description_column, align 4
  br label %if.end.6

if.else:                                          ; preds = %entry
  %1 = load i64, i64* %column, align 8
  %cmp1 = icmp sgt i64 %1, 14
  br i1 %cmp1, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %2 = load i64, i64* %column, align 8
  %cmp2 = icmp sgt i64 %2, 10
  br i1 %cmp2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %lor.lhs.false
  %3 = load i32, i32* @previous_description_column, align 4
  %cmp3 = icmp eq i32 %3, 32
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true, %if.else
  store i32 32, i32* %description_column, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %lor.lhs.false
  store i32 16, i32* %description_column, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %4 = load i32, i32* %description_column, align 4
  %conv = sext i32 %4 to i64
  %shl = shl i64 %conv, 2
  %add = add i64 %shl, 2
  %call7 = call i64 @Findent_to(i64 %add, i64 6)
  %5 = load i32, i32* %description_column, align 4
  store i32 %5, i32* @previous_description_column, align 4
  %6 = load i64, i64* %definition.addr, align 8
  %and = and i64 %6, 7
  %conv8 = trunc i64 %and to i32
  %cmp9 = icmp eq i32 %conv8, 0
  br i1 %cmp9, label %if.then.11, label %if.else.13

if.then.11:                                       ; preds = %if.end.6
  %7 = load i64, i64* %definition.addr, align 8
  %call12 = call i64 @SYMBOL_NAME(i64 %7)
  store i64 %call12, i64* %tem1, align 8
  %8 = load i64, i64* %tem1, align 8
  call void @insert1(i64 %8)
  call void @insert_string(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.29

if.else.13:                                       ; preds = %if.end.6
  %9 = load i64, i64* %definition.addr, align 8
  %call14 = call zeroext i1 @STRINGP(i64 %9)
  br i1 %call14, label %if.then.19, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %if.else.13
  %10 = load i64, i64* %definition.addr, align 8
  %call17 = call zeroext i1 @VECTORP(i64 %10)
  br i1 %call17, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %lor.lhs.false.16, %if.else.13
  call void @insert_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.62, i32 0, i32 0))
  br label %if.end.28

if.else.20:                                       ; preds = %lor.lhs.false.16
  %11 = load i64, i64* %definition.addr, align 8
  %call21 = call i64 @get_keymap(i64 %11, i1 zeroext false, i1 zeroext false)
  %call22 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp23 = icmp eq i64 %call21, %call22
  br i1 %cmp23, label %if.else.26, label %if.then.25

if.then.25:                                       ; preds = %if.else.20
  call void @insert_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.63, i32 0, i32 0))
  br label %if.end.27

if.else.26:                                       ; preds = %if.else.20
  call void @insert_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i32 0, i32 0))
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.26, %if.then.25
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.19
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then.11
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @Fdescribe_vector(i64 %vector, i64 %describer) #0 {
entry:
  %vector.addr = alloca i64, align 8
  %describer.addr = alloca i64, align 8
  %count = alloca i64, align 8
  store i64 %vector, i64* %vector.addr, align 8
  store i64 %describer, i64* %describer.addr, align 8
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %count, align 8
  %0 = load i64, i64* %describer.addr, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call i64 @intern(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0))
  store i64 %call2, i64* %describer.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call3 = call i64 @builtin_lisp_symbol(i32 871)
  %call4 = call i64 @Fcurrent_buffer()
  call void @specbind(i64 %call3, i64 %call4)
  %1 = load i64, i64* %vector.addr, align 8
  call void @CHECK_VECTOR_OR_CHAR_TABLE(i64 %1)
  %2 = load i64, i64* %vector.addr, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  %3 = load i64, i64* %describer.addr, align 8
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  %call7 = call i64 @builtin_lisp_symbol(i32 0)
  call void @describe_vector(i64 %2, i64 %call5, i64 %3, void (i64, i64)* @describe_vector_princ, i1 zeroext false, i64 %call6, i64 %call7, i1 zeroext false, i1 zeroext false)
  %4 = load i64, i64* %count, align 8
  %call8 = call i64 @builtin_lisp_symbol(i32 0)
  %call9 = call i64 @unbind_to(i64 %4, i64 %call8)
  ret i64 %call9
}

declare void @specbind(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @CHECK_VECTOR_OR_CHAR_TABLE(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %call = call zeroext i1 @VECTORP(i64 %0)
  br i1 %call, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %x.addr, align 8
  %call1 = call zeroext i1 @CHAR_TABLE_P(i64 %1)
  br i1 %call1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %call2 = call i64 @builtin_lisp_symbol(i32 994)
  %2 = load i64, i64* %x.addr, align 8
  %3 = call i64 @wrong_type_argument(i64 %call2, i64 %2) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %4, %cond.true
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @describe_vector(i64 %vector, i64 %prefix, i64 %args, void (i64, i64)* %elt_describer, i1 zeroext %partial, i64 %shadow, i64 %entire_map, i1 zeroext %keymap_p, i1 zeroext %mention_shadow) #0 {
entry:
  %vector.addr = alloca i64, align 8
  %prefix.addr = alloca i64, align 8
  %args.addr = alloca i64, align 8
  %elt_describer.addr = alloca void (i64, i64)*, align 8
  %partial.addr = alloca i8, align 1
  %shadow.addr = alloca i64, align 8
  %entire_map.addr = alloca i64, align 8
  %keymap_p.addr = alloca i8, align 1
  %mention_shadow.addr = alloca i8, align 1
  %definition = alloca i64, align 8
  %tem2 = alloca i64, align 8
  %elt_prefix = alloca i64, align 8
  %i = alloca i32, align 4
  %suppress = alloca i64, align 8
  %kludge = alloca i64, align 8
  %first = alloca i8, align 1
  %from = alloca i32, align 4
  %to = alloca i32, align 4
  %stop = alloca i32, align 4
  %character = alloca i64, align 8
  %starting_i = alloca i32, align 4
  %tem = alloca i64, align 8
  %space = alloca i64, align 8
  %.compoundliteral = alloca %union.Aligned_String, align 8
  %this_shadowed = alloca i8, align 1
  %range_beg = alloca i32, align 4
  %range_end = alloca i32, align 4
  %val = alloca i64, align 8
  %tem67 = alloca i64, align 8
  %tem80 = alloca i64, align 8
  %tem97 = alloca i64, align 8
  store i64 %vector, i64* %vector.addr, align 8
  store i64 %prefix, i64* %prefix.addr, align 8
  store i64 %args, i64* %args.addr, align 8
  store void (i64, i64)* %elt_describer, void (i64, i64)** %elt_describer.addr, align 8
  %frombool = zext i1 %partial to i8
  store i8 %frombool, i8* %partial.addr, align 1
  store i64 %shadow, i64* %shadow.addr, align 8
  store i64 %entire_map, i64* %entire_map.addr, align 8
  %frombool1 = zext i1 %keymap_p to i8
  store i8 %frombool1, i8* %keymap_p.addr, align 1
  %frombool2 = zext i1 %mention_shadow to i8
  store i8 %frombool2, i8* %mention_shadow.addr, align 1
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %elt_prefix, align 8
  store i8 1, i8* %first, align 1
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call3, i64* %suppress, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call4, i64* %definition, align 8
  %0 = load i8, i8* %keymap_p.addr, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end.15, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %prefix.addr, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %1, %call5
  br i1 %cmp, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %2 = load i64, i64* %prefix.addr, align 8
  %call6 = call i64 @Flength(i64 %2)
  %shr = ashr i64 %call6, 2
  %cmp7 = icmp sgt i64 %shr, 0
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %land.lhs.true
  %3 = load i64, i64* %prefix.addr, align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  %call10 = call i64 @Fkey_description(i64 %3, i64 %call9)
  store i64 %call10, i64* %tem, align 8
  %s = bitcast %union.Aligned_String* %.compoundliteral to %struct.Lisp_String*
  %size = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 0
  store i64 1, i64* %size, align 8
  %size_byte = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 1
  store i64 -1, i64* %size_byte, align 8
  %intervals = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 2
  store %struct.interval* null, %struct.interval** %intervals, align 8
  %data = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 3
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8** %data, align 8
  %s11 = bitcast %union.Aligned_String* %.compoundliteral to %struct.Lisp_String*
  %4 = bitcast %struct.Lisp_String* %s11 to i8*
  %call12 = call i64 @make_lisp_ptr(i8* %4, i32 4)
  store i64 %call12, i64* %space, align 8
  %5 = load i64, i64* %tem, align 8
  %6 = load i64, i64* %space, align 8
  %call13 = call i64 @concat2(i64 %5, i64 %6)
  store i64 %call13, i64* %elt_prefix, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.8, %land.lhs.true, %if.then
  %call14 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call14, i64* %prefix.addr, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %entry
  %call16 = call i64 @builtin_lisp_symbol(i32 0)
  %call17 = call i64 @Fmake_vector(i64 6, i64 %call16)
  store i64 %call17, i64* %kludge, align 8
  %7 = load i8, i8* %partial.addr, align 1
  %tobool18 = trunc i8 %7 to i1
  br i1 %tobool18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end.15
  %call20 = call i64 @intern(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.65, i32 0, i32 0))
  store i64 %call20, i64* %suppress, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.end.15
  store i32 0, i32* %from, align 4
  %8 = load i64, i64* %vector.addr, align 8
  %call22 = call zeroext i1 @CHAR_TABLE_P(i64 %8)
  br i1 %call22, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.end.21
  store i32 4194176, i32* %stop, align 4
  store i32 4194304, i32* %to, align 4
  br label %if.end.25

if.else:                                          ; preds = %if.end.21
  %9 = load i64, i64* %vector.addr, align 8
  %call24 = call i64 @ASIZE(i64 %9)
  %conv = trunc i64 %call24 to i32
  store i32 %conv, i32* %to, align 4
  store i32 %conv, i32* %stop, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %if.then.23
  %10 = load i32, i32* %from, align 4
  store i32 %10, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.25
  store i8 0, i8* %this_shadowed, align 1
  br label %do.body

do.body:                                          ; preds = %for.cond
  %11 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call26 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp27 = icmp eq i64 %11, %call26
  br i1 %cmp27, label %if.else.34, label %land.lhs.true.29

land.lhs.true.29:                                 ; preds = %do.body
  %12 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call30 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp31 = icmp eq i64 %12, %call30
  br i1 %cmp31, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %land.lhs.true.29
  call void @process_quit_flag()
  br label %if.end.38

if.else.34:                                       ; preds = %land.lhs.true.29, %do.body
  %13 = load volatile i8, i8* @pending_signals, align 1
  %tobool35 = trunc i8 %13 to i1
  br i1 %tobool35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.else.34
  call void @process_pending_signals()
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.else.34
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.33
  br label %do.end

do.end:                                           ; preds = %if.end.38
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %stop, align 4
  %cmp39 = icmp eq i32 %14, %15
  br i1 %cmp39, label %if.then.41, label %if.end.46

if.then.41:                                       ; preds = %do.end
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %to, align 4
  %cmp42 = icmp eq i32 %16, %17
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.then.41
  br label %for.end

if.end.45:                                        ; preds = %if.then.41
  %18 = load i32, i32* %to, align 4
  store i32 %18, i32* %stop, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %do.end
  %19 = load i32, i32* %i, align 4
  store i32 %19, i32* %starting_i, align 4
  %20 = load i64, i64* %vector.addr, align 8
  %call47 = call zeroext i1 @CHAR_TABLE_P(i64 %20)
  br i1 %call47, label %if.then.48, label %if.else.50

if.then.48:                                       ; preds = %if.end.46
  %21 = load i32, i32* %i, align 4
  store i32 %21, i32* %range_beg, align 4
  %22 = load i32, i32* %stop, align 4
  %sub = sub nsw i32 %22, 1
  store i32 %sub, i32* %i, align 4
  %23 = load i64, i64* %vector.addr, align 8
  %24 = load i32, i32* %range_beg, align 4
  %call49 = call i64 @char_table_ref_and_range(i64 %23, i32 %24, i32* %range_beg, i32* %i)
  store i64 %call49, i64* %val, align 8
  br label %if.end.53

if.else.50:                                       ; preds = %if.end.46
  %25 = load i64, i64* %vector.addr, align 8
  %26 = load i32, i32* %i, align 4
  %conv51 = sext i32 %26 to i64
  %call52 = call i64 @AREF(i64 %25, i64 %conv51)
  store i64 %call52, i64* %val, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.50, %if.then.48
  %27 = load i64, i64* %val, align 8
  %call54 = call i64 @get_keyelt(i64 %27, i1 zeroext false)
  store i64 %call54, i64* %definition, align 8
  %28 = load i64, i64* %definition, align 8
  %call55 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp56 = icmp eq i64 %28, %call55
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.end.53
  br label %for.inc

if.end.59:                                        ; preds = %if.end.53
  %29 = load i64, i64* %definition, align 8
  %and = and i64 %29, 7
  %conv60 = trunc i64 %and to i32
  %cmp61 = icmp eq i32 %conv60, 0
  br i1 %cmp61, label %land.lhs.true.63, label %if.end.74

land.lhs.true.63:                                 ; preds = %if.end.59
  %30 = load i8, i8* %partial.addr, align 1
  %tobool64 = trunc i8 %30 to i1
  br i1 %tobool64, label %if.then.66, label %if.end.74

if.then.66:                                       ; preds = %land.lhs.true.63
  %31 = load i64, i64* %definition, align 8
  %32 = load i64, i64* %suppress, align 8
  %call68 = call i64 @Fget(i64 %31, i64 %32)
  store i64 %call68, i64* %tem67, align 8
  %33 = load i64, i64* %tem67, align 8
  %call69 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp70 = icmp eq i64 %33, %call69
  br i1 %cmp70, label %if.end.73, label %if.then.72

if.then.72:                                       ; preds = %if.then.66
  br label %for.inc

if.end.73:                                        ; preds = %if.then.66
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %land.lhs.true.63, %if.end.59
  %34 = load i32, i32* %starting_i, align 4
  %conv75 = sext i32 %34 to i64
  %shl = shl i64 %conv75, 2
  %add = add i64 %shl, 2
  store i64 %add, i64* %character, align 8
  %35 = load i64, i64* %kludge, align 8
  %36 = load i64, i64* %character, align 8
  call void @ASET(i64 %35, i64 0, i64 %36)
  %37 = load i64, i64* %shadow.addr, align 8
  %call76 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp77 = icmp eq i64 %37, %call76
  br i1 %cmp77, label %if.end.92, label %if.then.79

if.then.79:                                       ; preds = %if.end.74
  %38 = load i64, i64* %shadow.addr, align 8
  %39 = load i64, i64* %kludge, align 8
  %call81 = call i64 @builtin_lisp_symbol(i32 901)
  %call82 = call i64 @shadow_lookup(i64 %38, i64 %39, i64 %call81, i1 zeroext false)
  store i64 %call82, i64* %tem80, align 8
  %40 = load i64, i64* %tem80, align 8
  %call83 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp84 = icmp eq i64 %40, %call83
  br i1 %cmp84, label %if.end.91, label %if.then.86

if.then.86:                                       ; preds = %if.then.79
  %41 = load i8, i8* %mention_shadow.addr, align 1
  %tobool87 = trunc i8 %41 to i1
  br i1 %tobool87, label %if.then.88, label %if.else.89

if.then.88:                                       ; preds = %if.then.86
  store i8 1, i8* %this_shadowed, align 1
  br label %if.end.90

if.else.89:                                       ; preds = %if.then.86
  br label %for.inc

if.end.90:                                        ; preds = %if.then.88
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.then.79
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.end.74
  %42 = load i64, i64* %entire_map.addr, align 8
  %call93 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp94 = icmp eq i64 %42, %call93
  br i1 %cmp94, label %if.end.104, label %if.then.96

if.then.96:                                       ; preds = %if.end.92
  %43 = load i64, i64* %entire_map.addr, align 8
  %44 = load i64, i64* %kludge, align 8
  %call98 = call i64 @builtin_lisp_symbol(i32 901)
  %call99 = call i64 @Flookup_key(i64 %43, i64 %44, i64 %call98)
  store i64 %call99, i64* %tem97, align 8
  %45 = load i64, i64* %tem97, align 8
  %46 = load i64, i64* %definition, align 8
  %cmp100 = icmp eq i64 %45, %46
  br i1 %cmp100, label %if.end.103, label %if.then.102

if.then.102:                                      ; preds = %if.then.96
  br label %for.inc

if.end.103:                                       ; preds = %if.then.96
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %if.end.92
  %47 = load i8, i8* %first, align 1
  %tobool105 = trunc i8 %47 to i1
  br i1 %tobool105, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %if.end.104
  call void @insert(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i64 1)
  store i8 0, i8* %first, align 1
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.106, %if.end.104
  %48 = load i64, i64* %elt_prefix, align 8
  %call108 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp109 = icmp eq i64 %48, %call108
  br i1 %cmp109, label %if.end.112, label %if.then.111

if.then.111:                                      ; preds = %if.end.107
  %49 = load i64, i64* %elt_prefix, align 8
  call void @insert1(i64 %49)
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.111, %if.end.107
  %50 = load i64, i64* %kludge, align 8
  %51 = load i64, i64* %prefix.addr, align 8
  %call113 = call i64 @Fkey_description(i64 %50, i64 %51)
  call void @insert1(i64 %call113)
  %52 = load i64, i64* %vector.addr, align 8
  %call114 = call zeroext i1 @CHAR_TABLE_P(i64 %52)
  br i1 %call114, label %if.then.115, label %if.else.132

if.then.115:                                      ; preds = %if.end.112
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.115
  %53 = load i32, i32* %i, align 4
  %add116 = add nsw i32 %53, 1
  %54 = load i32, i32* %stop, align 4
  %cmp117 = icmp slt i32 %add116, %54
  br i1 %cmp117, label %land.lhs.true.119, label %land.end

land.lhs.true.119:                                ; preds = %while.cond
  %55 = load i32, i32* %i, align 4
  %add120 = add nsw i32 %55, 1
  store i32 %add120, i32* %range_beg, align 4
  %56 = load i32, i32* %stop, align 4
  %sub121 = sub nsw i32 %56, 1
  store i32 %sub121, i32* %range_end, align 4
  %57 = load i64, i64* %vector.addr, align 8
  %58 = load i32, i32* %range_beg, align 4
  %call122 = call i64 @char_table_ref_and_range(i64 %57, i32 %58, i32* %range_beg, i32* %range_end)
  store i64 %call122, i64* %val, align 8
  %59 = load i64, i64* %val, align 8
  %call123 = call i64 @get_keyelt(i64 %59, i1 zeroext false)
  store i64 %call123, i64* %tem2, align 8
  %60 = load i64, i64* %tem2, align 8
  %call124 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp125 = icmp eq i64 %60, %call124
  %lnot = xor i1 %cmp125, true
  br i1 %lnot, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.119
  %61 = load i64, i64* %tem2, align 8
  %62 = load i64, i64* %definition, align 8
  %call127 = call i64 @Fequal(i64 %61, i64 %62)
  %call128 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp129 = icmp eq i64 %call127, %call128
  %lnot131 = xor i1 %cmp129, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.119, %while.cond
  %63 = phi i1 [ false, %land.lhs.true.119 ], [ false, %while.cond ], [ %lnot131, %land.rhs ]
  br i1 %63, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %64 = load i32, i32* %range_end, align 4
  store i32 %64, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end.155

if.else.132:                                      ; preds = %if.end.112
  br label %while.cond.133

while.cond.133:                                   ; preds = %while.body.153, %if.else.132
  %65 = load i32, i32* %i, align 4
  %add134 = add nsw i32 %65, 1
  %66 = load i32, i32* %stop, align 4
  %cmp135 = icmp slt i32 %add134, %66
  br i1 %cmp135, label %land.lhs.true.137, label %land.end.152

land.lhs.true.137:                                ; preds = %while.cond.133
  %67 = load i64, i64* %vector.addr, align 8
  %68 = load i32, i32* %i, align 4
  %add138 = add nsw i32 %68, 1
  %conv139 = sext i32 %add138 to i64
  %call140 = call i64 @AREF(i64 %67, i64 %conv139)
  %call141 = call i64 @get_keyelt(i64 %call140, i1 zeroext false)
  store i64 %call141, i64* %tem2, align 8
  %69 = load i64, i64* %tem2, align 8
  %call142 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp143 = icmp eq i64 %69, %call142
  %lnot145 = xor i1 %cmp143, true
  br i1 %lnot145, label %land.rhs.146, label %land.end.152

land.rhs.146:                                     ; preds = %land.lhs.true.137
  %70 = load i64, i64* %tem2, align 8
  %71 = load i64, i64* %definition, align 8
  %call147 = call i64 @Fequal(i64 %70, i64 %71)
  %call148 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp149 = icmp eq i64 %call147, %call148
  %lnot151 = xor i1 %cmp149, true
  br label %land.end.152

land.end.152:                                     ; preds = %land.rhs.146, %land.lhs.true.137, %while.cond.133
  %72 = phi i1 [ false, %land.lhs.true.137 ], [ false, %while.cond.133 ], [ %lnot151, %land.rhs.146 ]
  br i1 %72, label %while.body.153, label %while.end.154

while.body.153:                                   ; preds = %land.end.152
  %73 = load i32, i32* %i, align 4
  %inc = add nsw i32 %73, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond.133

while.end.154:                                    ; preds = %land.end.152
  br label %if.end.155

if.end.155:                                       ; preds = %while.end.154, %while.end
  %74 = load i32, i32* %i, align 4
  %75 = load i32, i32* %starting_i, align 4
  %cmp156 = icmp ne i32 %74, %75
  br i1 %cmp156, label %if.then.158, label %if.end.168

if.then.158:                                      ; preds = %if.end.155
  call void @insert(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i32 0, i32 0), i64 4)
  %76 = load i64, i64* %kludge, align 8
  %77 = load i32, i32* %i, align 4
  %conv159 = sext i32 %77 to i64
  %shl160 = shl i64 %conv159, 2
  %add161 = add i64 %shl160, 2
  call void @ASET(i64 %76, i64 0, i64 %add161)
  %78 = load i64, i64* %elt_prefix, align 8
  %call162 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp163 = icmp eq i64 %78, %call162
  br i1 %cmp163, label %if.end.166, label %if.then.165

if.then.165:                                      ; preds = %if.then.158
  %79 = load i64, i64* %elt_prefix, align 8
  call void @insert1(i64 %79)
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.165, %if.then.158
  %80 = load i64, i64* %kludge, align 8
  %81 = load i64, i64* %prefix.addr, align 8
  %call167 = call i64 @Fkey_description(i64 %80, i64 %81)
  call void @insert1(i64 %call167)
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.166, %if.end.155
  %82 = load void (i64, i64)*, void (i64, i64)** %elt_describer.addr, align 8
  %83 = load i64, i64* %definition, align 8
  %84 = load i64, i64* %args.addr, align 8
  call void %82(i64 %83, i64 %84)
  %85 = load i8, i8* %this_shadowed, align 1
  %tobool169 = trunc i8 %85 to i1
  br i1 %tobool169, label %if.then.170, label %if.end.176

if.then.170:                                      ; preds = %if.end.168
  %86 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %86, i32 0, i32 75
  %87 = load i64, i64* %pt, align 8
  %add171 = add nsw i64 %87, 0
  %sub172 = sub nsw i64 %add171, 1
  call void @set_point(i64 %sub172)
  call void @insert_string(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.68, i32 0, i32 0))
  %88 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt173 = getelementptr inbounds %struct.buffer, %struct.buffer* %88, i32 0, i32 75
  %89 = load i64, i64* %pt173, align 8
  %add174 = add nsw i64 %89, 0
  %add175 = add nsw i64 %add174, 1
  call void @set_point(i64 %add175)
  br label %if.end.176

if.end.176:                                       ; preds = %if.then.170, %if.end.168
  br label %for.inc

for.inc:                                          ; preds = %if.end.176, %if.then.102, %if.else.89, %if.then.72, %if.then.58
  %90 = load i32, i32* %i, align 4
  %inc177 = add nsw i32 %90, 1
  store i32 %inc177, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.44
  %91 = load i64, i64* %vector.addr, align 8
  %call178 = call zeroext i1 @CHAR_TABLE_P(i64 %91)
  br i1 %call178, label %land.lhs.true.180, label %if.end.193

land.lhs.true.180:                                ; preds = %for.end
  %92 = load i64, i64* %vector.addr, align 8
  %call181 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %92)
  %defalt = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call181, i32 0, i32 1
  %93 = load i64, i64* %defalt, align 8
  %call182 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp183 = icmp eq i64 %93, %call182
  br i1 %cmp183, label %if.end.193, label %if.then.185

if.then.185:                                      ; preds = %land.lhs.true.180
  %94 = load i64, i64* %elt_prefix, align 8
  %call186 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp187 = icmp eq i64 %94, %call186
  br i1 %cmp187, label %if.end.190, label %if.then.189

if.then.189:                                      ; preds = %if.then.185
  %95 = load i64, i64* %elt_prefix, align 8
  call void @insert1(i64 %95)
  br label %if.end.190

if.end.190:                                       ; preds = %if.then.189, %if.then.185
  call void @insert(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i64 7)
  %96 = load void (i64, i64)*, void (i64, i64)** %elt_describer.addr, align 8
  %97 = load i64, i64* %vector.addr, align 8
  %call191 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %97)
  %defalt192 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call191, i32 0, i32 1
  %98 = load i64, i64* %defalt192, align 8
  %99 = load i64, i64* %args.addr, align 8
  call void %96(i64 %98, i64 %99)
  br label %if.end.193

if.end.193:                                       ; preds = %if.end.190, %land.lhs.true.180, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @describe_vector_princ(i64 %elt, i64 %fun) #0 {
entry:
  %elt.addr = alloca i64, align 8
  %fun.addr = alloca i64, align 8
  store i64 %elt, i64* %elt.addr, align 8
  store i64 %fun, i64* %fun.addr, align 8
  %call = call i64 @Findent_to(i64 66, i64 6)
  %0 = load i64, i64* %fun.addr, align 8
  %1 = load i64, i64* %elt.addr, align 8
  %call1 = call i64 @call1(i64 %0, i64 %1)
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %call4 = call i64 @Fterpri(i64 %call2, i64 %call3)
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @Fapropos_internal(i64 %regexp, i64 %predicate) #0 {
entry:
  %regexp.addr = alloca i64, align 8
  %predicate.addr = alloca i64, align 8
  %tem = alloca i64, align 8
  store i64 %regexp, i64* %regexp.addr, align 8
  store i64 %predicate, i64* %predicate.addr, align 8
  %0 = load i64, i64* %regexp.addr, align 8
  call void @CHECK_STRING(i64 %0)
  %1 = load i64, i64* %predicate.addr, align 8
  store i64 %1, i64* @apropos_predicate, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* @apropos_accumulate, align 8
  %2 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 207), align 8
  %3 = load i64, i64* %regexp.addr, align 8
  call void @map_obarray(i64 %2, void (i64, i64)* @apropos_accum, i64 %3)
  %4 = load i64, i64* @apropos_accumulate, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 884)
  %call2 = call i64 @Fsort(i64 %4, i64 %call1)
  store i64 %call2, i64* %tem, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call3, i64* @apropos_accumulate, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call4, i64* @apropos_predicate, align 8
  %5 = load i64, i64* %tem, align 8
  ret i64 %5
}

declare void @CHECK_STRING(i64) #1

declare void @map_obarray(i64, void (i64, i64)*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @apropos_accum(i64 %symbol, i64 %string) #0 {
entry:
  %symbol.addr = alloca i64, align 8
  %string.addr = alloca i64, align 8
  %tem = alloca i64, align 8
  store i64 %symbol, i64* %symbol.addr, align 8
  store i64 %string, i64* %string.addr, align 8
  %0 = load i64, i64* %string.addr, align 8
  %1 = load i64, i64* %symbol.addr, align 8
  %call = call i64 @Fsymbol_name(i64 %1)
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %call2 = call i64 @Fstring_match(i64 %0, i64 %call, i64 %call1)
  store i64 %call2, i64* %tem, align 8
  %2 = load i64, i64* %tem, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %2, %call3
  br i1 %cmp, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %3 = load i64, i64* @apropos_predicate, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp5 = icmp eq i64 %3, %call4
  br i1 %cmp5, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %4 = load i64, i64* @apropos_predicate, align 8
  %5 = load i64, i64* %symbol.addr, align 8
  %call6 = call i64 @call1(i64 %4, i64 %5)
  store i64 %call6, i64* %tem, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %6 = load i64, i64* %tem, align 8
  %call7 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp8 = icmp eq i64 %6, %call7
  br i1 %cmp8, label %if.end.11, label %if.then.9

if.then.9:                                        ; preds = %if.end
  %7 = load i64, i64* %symbol.addr, align 8
  %8 = load i64, i64* @apropos_accumulate, align 8
  %call10 = call i64 @Fcons(i64 %7, i64 %8)
  store i64 %call10, i64* @apropos_accumulate, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end
  ret void
}

declare i64 @Fsort(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @syms_of_keymap() #0 {
entry:
  call void @staticpro(i64* @apropos_predicate)
  call void @staticpro(i64* @apropos_accumulate)
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* @apropos_predicate, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* @apropos_accumulate, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 589)
  %call3 = call i64 @builtin_lisp_symbol(i32 258)
  %call4 = call i64 @Fput(i64 %call2, i64 %call3, i64 2)
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  %call6 = call i64 @Fmake_keymap(i64 %call5)
  store i64 %call6, i64* @global_map, align 8
  %call7 = call i64 @intern_c_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0))
  %0 = load i64, i64* @global_map, align 8
  %call8 = call i64 @Fset(i64 %call7, i64 %0)
  %1 = load i64, i64* @global_map, align 8
  store i64 %1, i64* @current_global_map, align 8
  call void @staticpro(i64* @global_map)
  call void @staticpro(i64* @current_global_map)
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  %call10 = call i64 @Fmake_keymap(i64 %call9)
  store i64 %call10, i64* @meta_map, align 8
  %call11 = call i64 @intern_c_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0))
  %2 = load i64, i64* @meta_map, align 8
  %call12 = call i64 @Fset(i64 %call11, i64 %2)
  %call13 = call i64 @intern_c_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0))
  %3 = load i64, i64* @meta_map, align 8
  %call14 = call i64 @Ffset(i64 %call13, i64 %3)
  %call15 = call i64 @builtin_lisp_symbol(i32 0)
  %call16 = call i64 @Fmake_keymap(i64 %call15)
  store i64 %call16, i64* @control_x_map, align 8
  %call17 = call i64 @intern_c_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0))
  %4 = load i64, i64* @control_x_map, align 8
  %call18 = call i64 @Fset(i64 %call17, i64 %4)
  %call19 = call i64 @intern_c_string(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i32 0, i32 0))
  %5 = load i64, i64* @control_x_map, align 8
  %call20 = call i64 @Ffset(i64 %call19, i64 %5)
  %call21 = call i64 @build_pure_c_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i32 0, i32 0))
  %call22 = call i64 @build_pure_c_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0))
  %call23 = call i64 @pure_cons(i64 %call21, i64 %call22)
  %call24 = call i64 @build_pure_c_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0))
  %call25 = call i64 @build_pure_c_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0))
  %call26 = call i64 @pure_cons(i64 %call24, i64 %call25)
  %call27 = call i64 @build_pure_c_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0))
  %call28 = call i64 @build_pure_c_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0))
  %call29 = call i64 @pure_cons(i64 %call27, i64 %call28)
  %call30 = call i64 @build_pure_c_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0))
  %call31 = call i64 @build_pure_c_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0))
  %call32 = call i64 @pure_cons(i64 %call30, i64 %call31)
  %call33 = call i64 @build_pure_c_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0))
  %call34 = call i64 @build_pure_c_string(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  %call35 = call i64 @pure_cons(i64 %call33, i64 %call34)
  %call36 = call i64 (i32, i64, i64, ...) @listn(i32 1, i64 5, i64 %call23, i64 %call26, i64 %call29, i64 %call32, i64 %call35)
  store i64 %call36, i64* @exclude_keys, align 8
  call void @staticpro(i64* @exclude_keys)
  br label %do.body

do.body:                                          ; preds = %entry
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_keymap.o_fwd, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.41, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 66))
  br label %do.end

do.end:                                           ; preds = %do.body
  %call37 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call37, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 66), align 8
  br label %do.body.38

do.body.38:                                       ; preds = %do.end
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_keymap.o_fwd.42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.43, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 190))
  br label %do.end.39

do.end.39:                                        ; preds = %do.body.38
  %call40 = call i64 @builtin_lisp_symbol(i32 0)
  %call41 = call i64 @Fmake_sparse_keymap(i64 %call40)
  store i64 %call41, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 190), align 8
  br label %do.body.42

do.body.42:                                       ; preds = %do.end.39
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_keymap.o_fwd.44, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.45, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 191))
  br label %do.end.43

do.end.43:                                        ; preds = %do.body.42
  %call44 = call i64 @builtin_lisp_symbol(i32 0)
  %call45 = call i64 @Fmake_sparse_keymap(i64 %call44)
  store i64 %call45, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 191), align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 191), align 8
  %7 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 190), align 8
  %call46 = call i64 @Fset_keymap_parent(i64 %6, i64 %7)
  br label %do.body.47

do.body.47:                                       ; preds = %do.end.43
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_keymap.o_fwd.46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.47, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 195))
  br label %do.end.48

do.end.48:                                        ; preds = %do.body.47
  %call49 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call49, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 195), align 8
  br label %do.body.50

do.body.50:                                       ; preds = %do.end.48
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_keymap.o_fwd.48, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.49, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 196))
  br label %do.end.51

do.end.51:                                        ; preds = %do.body.50
  %call52 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call52, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 196), align 8
  br label %do.body.53

do.body.53:                                       ; preds = %do.end.51
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_keymap.o_fwd.50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.51, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 79))
  br label %do.end.54

do.end.54:                                        ; preds = %do.body.53
  %call55 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call55, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 79), align 8
  br label %do.body.56

do.body.56:                                       ; preds = %do.end.54
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_keymap.o_fwd.52, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.53, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 326))
  br label %do.end.57

do.end.57:                                        ; preds = %do.body.56
  %call58 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call58, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 326), align 8
  store i32 0, i32* @where_is_preferred_modifier, align 4
  call void @staticpro(i64* @Vmouse_events)
  %call59 = call i64 @builtin_lisp_symbol(i32 651)
  %call60 = call i64 @builtin_lisp_symbol(i32 921)
  %call61 = call i64 @builtin_lisp_symbol(i32 513)
  %call62 = call i64 @builtin_lisp_symbol(i32 672)
  %call63 = call i64 @intern_c_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i32 0, i32 0))
  %call64 = call i64 @intern_c_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0))
  %call65 = call i64 @intern_c_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0))
  %call66 = call i64 @intern_c_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i32 0, i32 0))
  %call67 = call i64 @intern_c_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0))
  %call68 = call i64 (i32, i64, i64, ...) @listn(i32 1, i64 9, i64 %call59, i64 %call60, i64 %call61, i64 %call62, i64 %call63, i64 %call64, i64 %call65, i64 %call66, i64 %call67)
  store i64 %call68, i64* @Vmouse_events, align 8
  %call69 = call i64 @builtin_lisp_symbol(i32 805)
  %call70 = call i64 @Fmake_vector(i64 10, i64 %call69)
  store i64 %call70, i64* @command_remapping_vector, align 8
  call void @staticpro(i64* @command_remapping_vector)
  %call71 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call71, i64* @where_is_cache_keymaps, align 8
  %call72 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call72, i64* @where_is_cache, align 8
  call void @staticpro(i64* @where_is_cache)
  call void @staticpro(i64* @where_is_cache_keymaps)
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Skeymapp to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Skeymap_parent to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Skeymap_prompt to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sset_keymap_parent to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Smake_keymap to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Smake_sparse_keymap to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Smap_keymap_internal to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Smap_keymap to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Scopy_keymap to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Scommand_remapping to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Skey_binding to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Slocal_key_binding to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sglobal_key_binding to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sminor_mode_key_binding to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sdefine_key to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Slookup_key to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sdefine_prefix_command to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Suse_global_map to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Suse_local_map to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* @Scurrent_local_map)
  call void @defsubr(%struct.Lisp_Subr* @Scurrent_global_map)
  call void @defsubr(%struct.Lisp_Subr* @Scurrent_minor_mode_maps)
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Scurrent_active_maps to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Saccessible_keymaps to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Skey_description to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sdescribe_vector to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Ssingle_key_description to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Stext_char_description to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Swhere_is_internal to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sdescribe_buffer_bindings to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sapropos_internal to %struct.Lisp_Subr*))
  ret void
}

declare void @staticpro(i64*) #1

declare i64 @Fput(i64, i64, i64) #1

declare i64 @listn(i32, i64, i64, ...) #1

declare i64 @pure_cons(i64, i64) #1

declare i64 @build_pure_c_string(i8*) #1

declare void @defvar_lisp(%struct.Lisp_Objfwd*, i8*, i64*) #1

declare void @defsubr(%struct.Lisp_Subr*) #1

; Function Attrs: nounwind uwtable
define void @keys_of_keymap() #0 {
entry:
  %0 = load i64, i64* @global_map, align 8
  call void @initial_define_key(i64 %0, i32 27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0))
  %1 = load i64, i64* @global_map, align 8
  call void @initial_define_key(i64 %1, i32 24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i32 0, i32 0))
  ret void
}

declare i64 @reorder_modifiers(i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @get_keyelt(i64 %object, i1 zeroext %autoload) #0 {
entry:
  %retval = alloca i64, align 8
  %object.addr = alloca i64, align 8
  %autoload.addr = alloca i8, align 1
  %tem = alloca i64, align 8
  %filter = alloca i64, align 8
  store i64 %object, i64* %object.addr, align 8
  %frombool = zext i1 %autoload to i8
  store i8 %frombool, i8* %autoload.addr, align 1
  br label %while.body

while.body:                                       ; preds = %entry, %if.end.68
  %0 = load i64, i64* %object.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  %1 = load i64, i64* %object.addr, align 8
  store i64 %1, i64* %retval
  br label %return

if.else:                                          ; preds = %while.body
  %2 = load i64, i64* %object.addr, align 8
  %sub = sub nsw i64 %2, 3
  %3 = inttoptr i64 %sub to i8*
  %4 = bitcast i8* %3 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %4, i32 0, i32 0
  %5 = load i64, i64* %car, align 8
  %call = call i64 @builtin_lisp_symbol(i32 657)
  %cmp2 = icmp eq i64 %5, %call
  br i1 %cmp2, label %if.then.4, label %if.else.57

if.then.4:                                        ; preds = %if.else
  %6 = load i64, i64* %object.addr, align 8
  %sub5 = sub nsw i64 %6, 3
  %7 = inttoptr i64 %sub5 to i8*
  %8 = bitcast i8* %7 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %8, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %9 = load i64, i64* %cdr, align 8
  %and6 = and i64 %9, 7
  %conv7 = trunc i64 %and6 to i32
  %cmp8 = icmp eq i32 %conv7, 3
  br i1 %cmp8, label %if.then.10, label %if.else.55

if.then.10:                                       ; preds = %if.then.4
  %10 = load i64, i64* %object.addr, align 8
  %sub11 = sub nsw i64 %10, 3
  %11 = inttoptr i64 %sub11 to i8*
  %12 = bitcast i8* %11 to %struct.Lisp_Cons*
  %u12 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %12, i32 0, i32 1
  %cdr13 = bitcast %union.anon* %u12 to i64*
  %13 = load i64, i64* %cdr13, align 8
  %sub14 = sub nsw i64 %13, 3
  %14 = inttoptr i64 %sub14 to i8*
  %15 = bitcast i8* %14 to %struct.Lisp_Cons*
  %u15 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %15, i32 0, i32 1
  %cdr16 = bitcast %union.anon* %u15 to i64*
  %16 = load i64, i64* %cdr16, align 8
  store i64 %16, i64* %object.addr, align 8
  %17 = load i64, i64* %object.addr, align 8
  store i64 %17, i64* %tem, align 8
  %18 = load i64, i64* %object.addr, align 8
  %and17 = and i64 %18, 7
  %conv18 = trunc i64 %and17 to i32
  %cmp19 = icmp eq i32 %conv18, 3
  br i1 %cmp19, label %if.then.21, label %if.end

if.then.21:                                       ; preds = %if.then.10
  %19 = load i64, i64* %object.addr, align 8
  %sub22 = sub nsw i64 %19, 3
  %20 = inttoptr i64 %sub22 to i8*
  %21 = bitcast i8* %20 to %struct.Lisp_Cons*
  %car23 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %21, i32 0, i32 0
  %22 = load i64, i64* %car23, align 8
  store i64 %22, i64* %object.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.21, %if.then.10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %23 = load i64, i64* %tem, align 8
  %and24 = and i64 %23, 7
  %conv25 = trunc i64 %and24 to i32
  %cmp26 = icmp eq i32 %conv25, 3
  br i1 %cmp26, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %24 = load i64, i64* %tem, align 8
  %sub28 = sub nsw i64 %24, 3
  %25 = inttoptr i64 %sub28 to i8*
  %26 = bitcast i8* %25 to %struct.Lisp_Cons*
  %u29 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %26, i32 0, i32 1
  %cdr30 = bitcast %union.anon* %u29 to i64*
  %27 = load i64, i64* %cdr30, align 8
  %and31 = and i64 %27, 7
  %conv32 = trunc i64 %and31 to i32
  %cmp33 = icmp eq i32 %conv32, 3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %28 = phi i1 [ false, %for.cond ], [ %cmp33, %land.rhs ]
  br i1 %28, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %29 = load i64, i64* %tem, align 8
  %sub35 = sub nsw i64 %29, 3
  %30 = inttoptr i64 %sub35 to i8*
  %31 = bitcast i8* %30 to %struct.Lisp_Cons*
  %car36 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %31, i32 0, i32 0
  %32 = load i64, i64* %car36, align 8
  %call37 = call i64 @builtin_lisp_symbol(i32 42)
  %cmp38 = icmp eq i64 %32, %call37
  br i1 %cmp38, label %land.lhs.true, label %if.end.51

land.lhs.true:                                    ; preds = %for.body
  %33 = load i8, i8* %autoload.addr, align 1
  %tobool = trunc i8 %33 to i1
  br i1 %tobool, label %if.then.41, label %if.end.51

if.then.41:                                       ; preds = %land.lhs.true
  %34 = load i64, i64* %tem, align 8
  %sub42 = sub nsw i64 %34, 3
  %35 = inttoptr i64 %sub42 to i8*
  %36 = bitcast i8* %35 to %struct.Lisp_Cons*
  %u43 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %36, i32 0, i32 1
  %cdr44 = bitcast %union.anon* %u43 to i64*
  %37 = load i64, i64* %cdr44, align 8
  %sub45 = sub nsw i64 %37, 3
  %38 = inttoptr i64 %sub45 to i8*
  %39 = bitcast i8* %38 to %struct.Lisp_Cons*
  %car46 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %39, i32 0, i32 0
  %40 = load i64, i64* %car46, align 8
  store i64 %40, i64* %filter, align 8
  %41 = load i64, i64* %filter, align 8
  %call47 = call i64 @builtin_lisp_symbol(i32 783)
  %42 = load i64, i64* %object.addr, align 8
  %call48 = call i64 @list2(i64 %call47, i64 %42)
  %call49 = call i64 @list2(i64 %41, i64 %call48)
  store i64 %call49, i64* %filter, align 8
  %43 = load i64, i64* %filter, align 8
  %call50 = call i64 @menu_item_eval_property(i64 %43)
  store i64 %call50, i64* %object.addr, align 8
  br label %for.end

if.end.51:                                        ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.51
  %44 = load i64, i64* %tem, align 8
  %sub52 = sub nsw i64 %44, 3
  %45 = inttoptr i64 %sub52 to i8*
  %46 = bitcast i8* %45 to %struct.Lisp_Cons*
  %u53 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %46, i32 0, i32 1
  %cdr54 = bitcast %union.anon* %u53 to i64*
  %47 = load i64, i64* %cdr54, align 8
  store i64 %47, i64* %tem, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.41, %land.end
  br label %if.end.56

if.else.55:                                       ; preds = %if.then.4
  %48 = load i64, i64* %object.addr, align 8
  store i64 %48, i64* %retval
  br label %return

if.end.56:                                        ; preds = %for.end
  br label %if.end.67

if.else.57:                                       ; preds = %if.else
  %49 = load i64, i64* %object.addr, align 8
  %sub58 = sub nsw i64 %49, 3
  %50 = inttoptr i64 %sub58 to i8*
  %51 = bitcast i8* %50 to %struct.Lisp_Cons*
  %car59 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %51, i32 0, i32 0
  %52 = load i64, i64* %car59, align 8
  %call60 = call zeroext i1 @STRINGP(i64 %52)
  br i1 %call60, label %if.then.61, label %if.else.65

if.then.61:                                       ; preds = %if.else.57
  %53 = load i64, i64* %object.addr, align 8
  %sub62 = sub nsw i64 %53, 3
  %54 = inttoptr i64 %sub62 to i8*
  %55 = bitcast i8* %54 to %struct.Lisp_Cons*
  %u63 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %55, i32 0, i32 1
  %cdr64 = bitcast %union.anon* %u63 to i64*
  %56 = load i64, i64* %cdr64, align 8
  store i64 %56, i64* %object.addr, align 8
  br label %if.end.66

if.else.65:                                       ; preds = %if.else.57
  %57 = load i64, i64* %object.addr, align 8
  store i64 %57, i64* %retval
  br label %return

if.end.66:                                        ; preds = %if.then.61
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.end.56
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67
  br label %while.body

return:                                           ; preds = %if.else.65, %if.else.55, %if.then
  %58 = load i64, i64* %retval
  ret i64 %58
}

declare i64 @menu_item_eval_property(i64) #1

; Function Attrs: nounwind uwtable
define internal void @map_keymap_item(void (i64, i64, i64, i8*)* %fun, i64 %args, i64 %key, i64 %val, i8* %data) #0 {
entry:
  %fun.addr = alloca void (i64, i64, i64, i8*)*, align 8
  %args.addr = alloca i64, align 8
  %key.addr = alloca i64, align 8
  %val.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  store void (i64, i64, i64, i8*)* %fun, void (i64, i64, i64, i8*)** %fun.addr, align 8
  store i64 %args, i64* %args.addr, align 8
  store i64 %key, i64* %key.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 901)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* %val.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load void (i64, i64, i64, i8*)*, void (i64, i64, i64, i8*)** %fun.addr, align 8
  %2 = load i64, i64* %key.addr, align 8
  %3 = load i64, i64* %val.addr, align 8
  %4 = load i64, i64* %args.addr, align 8
  %5 = load i8*, i8** %data.addr, align 8
  call void %1(i64 %2, i64 %3, i64 %4, i8* %5)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @map_keymap_char_table_item(i64 %args, i64 %key, i64 %val) #0 {
entry:
  %args.addr = alloca i64, align 8
  %key.addr = alloca i64, align 8
  %val.addr = alloca i64, align 8
  %fun = alloca void (i64, i64, i64, i8*)*, align 8
  store i64 %args, i64* %args.addr, align 8
  store i64 %key, i64* %key.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.end.9, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %args.addr, align 8
  %call1 = call void ()* @XSAVE_FUNCPOINTER(i64 %1, i32 0)
  %2 = bitcast void ()* %call1 to void (i64, i64, i64, i8*)*
  store void (i64, i64, i64, i8*)* %2, void (i64, i64, i64, i8*)** %fun, align 8
  %3 = load i64, i64* %key.addr, align 8
  %and = and i64 %3, 7
  %conv = trunc i64 %and to i32
  %cmp2 = icmp eq i32 %conv, 3
  br i1 %cmp2, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %4 = load i64, i64* %key.addr, align 8
  %sub = sub nsw i64 %4, 3
  %5 = inttoptr i64 %sub to i8*
  %6 = bitcast i8* %5 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %6, i32 0, i32 0
  %7 = load i64, i64* %car, align 8
  %8 = load i64, i64* %key.addr, align 8
  %sub5 = sub nsw i64 %8, 3
  %9 = inttoptr i64 %sub5 to i8*
  %10 = bitcast i8* %9 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %10, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %11 = load i64, i64* %cdr, align 8
  %call6 = call i64 @Fcons(i64 %7, i64 %11)
  store i64 %call6, i64* %key.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %12 = load void (i64, i64, i64, i8*)*, void (i64, i64, i64, i8*)** %fun, align 8
  %13 = load i64, i64* %args.addr, align 8
  %call7 = call i64 @XSAVE_OBJECT(i64 %13, i32 2)
  %14 = load i64, i64* %key.addr, align 8
  %15 = load i64, i64* %val.addr, align 8
  %16 = load i64, i64* %args.addr, align 8
  %call8 = call i8* @XSAVE_POINTER(i64 %16, i32 1)
  call void @map_keymap_item(void (i64, i64, i64, i8*)* %12, i64 %call7, i64 %14, i64 %15, i8* %call8)
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %entry
  ret void
}

declare i64 @make_save_funcptr_ptr_obj(void ()*, i8*, i64) #1

declare void ()* @XSAVE_FUNCPOINTER(i64, i32) #1

declare i64 @XSAVE_OBJECT(i64, i32) #1

declare i8* @XSAVE_POINTER(i64, i32) #1

declare %struct.Lisp_Vector* @XVECTOR(i64) #1

declare i64 @Fset_char_table_range(i64, i64, i64) #1

declare void @XSETCAR(i64, i64) #1

declare i64 @parse_modifiers(i64) #1

declare i64 @Fassoc(i64, i64) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare i64 @concat2(i64, i64) #1

declare i32 @XMISCTYPE(i64) #1

; Function Attrs: noreturn
declare void @args_out_of_range(i64, i64) #2

declare i64 @Frassq(i64, i64) #1

declare i64 @Fmemq(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @append_key(i64 %key_sequence, i64 %key) #0 {
entry:
  %key_sequence.addr = alloca i64, align 8
  %key.addr = alloca i64, align 8
  %key_list = alloca i64, align 8
  %.compoundliteral = alloca %union.Aligned_Cons, align 8
  %.compoundliteral3 = alloca [2 x i64], align 8
  store i64 %key_sequence, i64* %key_sequence.addr, align 8
  store i64 %key, i64* %key.addr, align 8
  %s = bitcast %union.Aligned_Cons* %.compoundliteral to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s, i32 0, i32 0
  %0 = load i64, i64* %key.addr, align 8
  store i64 %0, i64* %car, align 8
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %cdr, align 8
  %s1 = bitcast %union.Aligned_Cons* %.compoundliteral to %struct.Lisp_Cons*
  %1 = bitcast %struct.Lisp_Cons* %s1 to i8*
  %call2 = call i64 @make_lisp_ptr(i8* %1, i32 3)
  store i64 %call2, i64* %key_list, align 8
  %arrayinit.begin = getelementptr inbounds [2 x i64], [2 x i64]* %.compoundliteral3, i64 0, i64 0
  %2 = load i64, i64* %key_sequence.addr, align 8
  store i64 %2, i64* %arrayinit.begin
  %arrayinit.element = getelementptr inbounds i64, i64* %arrayinit.begin, i64 1
  %3 = load i64, i64* %key_list, align 8
  store i64 %3, i64* %arrayinit.element
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %.compoundliteral3, i32 0, i32 0
  %call4 = call i64 @Fvconcat(i64 2, i64* %arraydecay)
  ret i64 %call4
}

declare i64 @Fvconcat(i64, i64*) #1

declare i64 @Fmake_hash_table(i64, i64*) #1

declare i64 @Fgethash(i64, i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @where_is_internal_1(i64 %key, i64 %binding, i64 %args, i8* %data) #0 {
entry:
  %key.addr = alloca i64, align 8
  %binding.addr = alloca i64, align 8
  %args.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %d = alloca %struct.where_is_internal_data*, align 8
  %definition = alloca i64, align 8
  %noindirect = alloca i8, align 1
  %this = alloca i64, align 8
  %last = alloca i64, align 8
  %last_is_meta = alloca i8, align 1
  %sequence = alloca i64, align 8
  %sequences = alloca i64, align 8
  store i64 %key, i64* %key.addr, align 8
  store i64 %binding, i64* %binding.addr, align 8
  store i64 %args, i64* %args.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.where_is_internal_data*
  store %struct.where_is_internal_data* %1, %struct.where_is_internal_data** %d, align 8
  %2 = load %struct.where_is_internal_data*, %struct.where_is_internal_data** %d, align 8
  %definition1 = getelementptr inbounds %struct.where_is_internal_data, %struct.where_is_internal_data* %2, i32 0, i32 0
  %3 = load i64, i64* %definition1, align 8
  store i64 %3, i64* %definition, align 8
  %4 = load %struct.where_is_internal_data*, %struct.where_is_internal_data** %d, align 8
  %noindirect2 = getelementptr inbounds %struct.where_is_internal_data, %struct.where_is_internal_data* %4, i32 0, i32 4
  %5 = load i8, i8* %noindirect2, align 1
  %tobool = trunc i8 %5 to i1
  %frombool = zext i1 %tobool to i8
  store i8 %frombool, i8* %noindirect, align 1
  %6 = load %struct.where_is_internal_data*, %struct.where_is_internal_data** %d, align 8
  %this3 = getelementptr inbounds %struct.where_is_internal_data, %struct.where_is_internal_data* %6, i32 0, i32 1
  %7 = load i64, i64* %this3, align 8
  store i64 %7, i64* %this, align 8
  %8 = load %struct.where_is_internal_data*, %struct.where_is_internal_data** %d, align 8
  %last4 = getelementptr inbounds %struct.where_is_internal_data, %struct.where_is_internal_data* %8, i32 0, i32 2
  %9 = load i64, i64* %last4, align 8
  store i64 %9, i64* %last, align 8
  %10 = load %struct.where_is_internal_data*, %struct.where_is_internal_data** %d, align 8
  %last_is_meta5 = getelementptr inbounds %struct.where_is_internal_data, %struct.where_is_internal_data* %10, i32 0, i32 3
  %11 = load i8, i8* %last_is_meta5, align 1
  %tobool6 = trunc i8 %11 to i1
  %frombool7 = zext i1 %tobool6 to i8
  store i8 %frombool7, i8* %last_is_meta, align 1
  %12 = load i8, i8* %noindirect, align 1
  %tobool8 = trunc i8 %12 to i1
  br i1 %tobool8, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %13 = load i64, i64* %binding.addr, align 8
  %call = call i64 @get_keyelt(i64 %13, i1 zeroext false)
  store i64 %call, i64* %binding.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load i64, i64* @where_is_cache, align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %14, %call9
  br i1 %cmp, label %lor.lhs.false, label %if.end.19

lor.lhs.false:                                    ; preds = %if.end
  %15 = load i64, i64* %binding.addr, align 8
  %16 = load i64, i64* %definition, align 8
  %cmp10 = icmp eq i64 %15, %16
  br i1 %cmp10, label %if.end.19, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false
  %17 = load i64, i64* %definition, align 8
  %and = and i64 %17, 7
  %conv = trunc i64 %and to i32
  %cmp12 = icmp eq i32 %conv, 3
  br i1 %cmp12, label %land.lhs.true, label %if.then.18

land.lhs.true:                                    ; preds = %lor.lhs.false.11
  %18 = load i64, i64* %binding.addr, align 8
  %19 = load i64, i64* %definition, align 8
  %call14 = call i64 @Fequal(i64 %18, i64 %19)
  %call15 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp16 = icmp eq i64 %call14, %call15
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %land.lhs.true, %lor.lhs.false.11
  br label %if.end.53

if.end.19:                                        ; preds = %land.lhs.true, %lor.lhs.false, %if.end
  %20 = load i64, i64* %key.addr, align 8
  %and20 = and i64 %20, 7
  %conv21 = trunc i64 %and20 to i32
  %and22 = and i32 %conv21, -5
  %cmp23 = icmp eq i32 %and22, 2
  br i1 %cmp23, label %land.lhs.true.25, label %if.else

land.lhs.true.25:                                 ; preds = %if.end.19
  %21 = load i8, i8* %last_is_meta, align 1
  %tobool26 = trunc i8 %21 to i1
  br i1 %tobool26, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %land.lhs.true.25
  %22 = load i64, i64* %this, align 8
  %call29 = call i64 @Fcopy_sequence(i64 %22)
  store i64 %call29, i64* %sequence, align 8
  %23 = load i64, i64* %sequence, align 8
  %24 = load i64, i64* %last, align 8
  %25 = load i64, i64* %key.addr, align 8
  %shr = ashr i64 %25, 2
  %or = or i64 %shr, 134217728
  %shl = shl i64 %or, 2
  %add = add i64 %shl, 2
  %call30 = call i64 @Faset(i64 %23, i64 %24, i64 %add)
  br label %if.end.40

if.else:                                          ; preds = %land.lhs.true.25, %if.end.19
  %26 = load i64, i64* %key.addr, align 8
  %and31 = and i64 %26, 7
  %conv32 = trunc i64 %and31 to i32
  %cmp33 = icmp eq i32 %conv32, 3
  br i1 %cmp33, label %if.then.35, label %if.end.38

if.then.35:                                       ; preds = %if.else
  %27 = load i64, i64* %key.addr, align 8
  %sub = sub nsw i64 %27, 3
  %28 = inttoptr i64 %sub to i8*
  %29 = bitcast i8* %28 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %29, i32 0, i32 0
  %30 = load i64, i64* %car, align 8
  %31 = load i64, i64* %key.addr, align 8
  %sub36 = sub nsw i64 %31, 3
  %32 = inttoptr i64 %sub36 to i8*
  %33 = bitcast i8* %32 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %33, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %34 = load i64, i64* %cdr, align 8
  %call37 = call i64 @Fcons(i64 %30, i64 %34)
  store i64 %call37, i64* %key.addr, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.35, %if.else
  %35 = load i64, i64* %this, align 8
  %36 = load i64, i64* %key.addr, align 8
  %call39 = call i64 @append_key(i64 %35, i64 %36)
  store i64 %call39, i64* %sequence, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.38, %if.then.28
  %37 = load i64, i64* @where_is_cache, align 8
  %call41 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp42 = icmp eq i64 %37, %call41
  br i1 %cmp42, label %if.else.49, label %if.then.44

if.then.44:                                       ; preds = %if.end.40
  %38 = load i64, i64* %binding.addr, align 8
  %39 = load i64, i64* @where_is_cache, align 8
  %call45 = call i64 @builtin_lisp_symbol(i32 0)
  %call46 = call i64 @Fgethash(i64 %38, i64 %39, i64 %call45)
  store i64 %call46, i64* %sequences, align 8
  %40 = load i64, i64* %binding.addr, align 8
  %41 = load i64, i64* %sequence, align 8
  %42 = load i64, i64* %sequences, align 8
  %call47 = call i64 @Fcons(i64 %41, i64 %42)
  %43 = load i64, i64* @where_is_cache, align 8
  %call48 = call i64 @Fputhash(i64 %40, i64 %call47, i64 %43)
  br label %if.end.53

if.else.49:                                       ; preds = %if.end.40
  %44 = load i64, i64* %sequence, align 8
  %45 = load %struct.where_is_internal_data*, %struct.where_is_internal_data** %d, align 8
  %sequences50 = getelementptr inbounds %struct.where_is_internal_data, %struct.where_is_internal_data* %45, i32 0, i32 5
  %46 = load i64, i64* %sequences50, align 8
  %call51 = call i64 @Fcons(i64 %44, i64 %46)
  %47 = load %struct.where_is_internal_data*, %struct.where_is_internal_data** %d, align 8
  %sequences52 = getelementptr inbounds %struct.where_is_internal_data, %struct.where_is_internal_data* %47, i32 0, i32 5
  store i64 %call51, i64* %sequences52, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.18, %if.else.49, %if.then.44
  ret void
}

declare i64 @Fputhash(i64, i64, i64) #1

declare i64 @current_column() #1

declare void @insert_char(i32) #1

declare i64 @call1(i64, i64) #1

declare noalias i8* @xnmalloc(i64, i64) #1

declare void @record_unwind_protect_ptr(void (i8*)*, i8*) #1

declare void @xfree(i8*) #1

declare i64 @Fassq(i64, i64) #1

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @describe_map_compare(i8* %aa, i8* %bb) #0 {
entry:
  %retval = alloca i32, align 4
  %aa.addr = alloca i8*, align 8
  %bb.addr = alloca i8*, align 8
  %a = alloca %struct.describe_map_elt*, align 8
  %b = alloca %struct.describe_map_elt*, align 8
  store i8* %aa, i8** %aa.addr, align 8
  store i8* %bb, i8** %bb.addr, align 8
  %0 = load i8*, i8** %aa.addr, align 8
  %1 = bitcast i8* %0 to %struct.describe_map_elt*
  store %struct.describe_map_elt* %1, %struct.describe_map_elt** %a, align 8
  %2 = load i8*, i8** %bb.addr, align 8
  %3 = bitcast i8* %2 to %struct.describe_map_elt*
  store %struct.describe_map_elt* %3, %struct.describe_map_elt** %b, align 8
  %4 = load %struct.describe_map_elt*, %struct.describe_map_elt** %a, align 8
  %event = getelementptr inbounds %struct.describe_map_elt, %struct.describe_map_elt* %4, i32 0, i32 0
  %5 = load i64, i64* %event, align 8
  %and = and i64 %5, 7
  %conv = trunc i64 %and to i32
  %and1 = and i32 %conv, -5
  %cmp = icmp eq i32 %and1, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct.describe_map_elt*, %struct.describe_map_elt** %b, align 8
  %event3 = getelementptr inbounds %struct.describe_map_elt, %struct.describe_map_elt* %6, i32 0, i32 0
  %7 = load i64, i64* %event3, align 8
  %and4 = and i64 %7, 7
  %conv5 = trunc i64 %and4 to i32
  %and6 = and i32 %conv5, -5
  %cmp7 = icmp eq i32 %and6, 2
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct.describe_map_elt*, %struct.describe_map_elt** %a, align 8
  %event9 = getelementptr inbounds %struct.describe_map_elt, %struct.describe_map_elt* %8, i32 0, i32 0
  %9 = load i64, i64* %event9, align 8
  %shr = ashr i64 %9, 2
  %10 = load %struct.describe_map_elt*, %struct.describe_map_elt** %b, align 8
  %event10 = getelementptr inbounds %struct.describe_map_elt, %struct.describe_map_elt* %10, i32 0, i32 0
  %11 = load i64, i64* %event10, align 8
  %shr11 = ashr i64 %11, 2
  %cmp12 = icmp sgt i64 %shr, %shr11
  %conv13 = zext i1 %cmp12 to i32
  %12 = load %struct.describe_map_elt*, %struct.describe_map_elt** %a, align 8
  %event14 = getelementptr inbounds %struct.describe_map_elt, %struct.describe_map_elt* %12, i32 0, i32 0
  %13 = load i64, i64* %event14, align 8
  %shr15 = ashr i64 %13, 2
  %14 = load %struct.describe_map_elt*, %struct.describe_map_elt** %b, align 8
  %event16 = getelementptr inbounds %struct.describe_map_elt, %struct.describe_map_elt* %14, i32 0, i32 0
  %15 = load i64, i64* %event16, align 8
  %shr17 = ashr i64 %15, 2
  %cmp18 = icmp slt i64 %shr15, %shr17
  %conv19 = zext i1 %cmp18 to i32
  %sub = sub nsw i32 %conv13, %conv19
  store i32 %sub, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %16 = load %struct.describe_map_elt*, %struct.describe_map_elt** %a, align 8
  %event20 = getelementptr inbounds %struct.describe_map_elt, %struct.describe_map_elt* %16, i32 0, i32 0
  %17 = load i64, i64* %event20, align 8
  %and21 = and i64 %17, 7
  %conv22 = trunc i64 %and21 to i32
  %and23 = and i32 %conv22, -5
  %cmp24 = icmp eq i32 %and23, 2
  br i1 %cmp24, label %if.end.34, label %land.lhs.true.26

land.lhs.true.26:                                 ; preds = %if.end
  %18 = load %struct.describe_map_elt*, %struct.describe_map_elt** %b, align 8
  %event27 = getelementptr inbounds %struct.describe_map_elt, %struct.describe_map_elt* %18, i32 0, i32 0
  %19 = load i64, i64* %event27, align 8
  %and28 = and i64 %19, 7
  %conv29 = trunc i64 %and28 to i32
  %and30 = and i32 %conv29, -5
  %cmp31 = icmp eq i32 %and30, 2
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %land.lhs.true.26
  store i32 1, i32* %retval
  br label %return

if.end.34:                                        ; preds = %land.lhs.true.26, %if.end
  %20 = load %struct.describe_map_elt*, %struct.describe_map_elt** %a, align 8
  %event35 = getelementptr inbounds %struct.describe_map_elt, %struct.describe_map_elt* %20, i32 0, i32 0
  %21 = load i64, i64* %event35, align 8
  %and36 = and i64 %21, 7
  %conv37 = trunc i64 %and36 to i32
  %and38 = and i32 %conv37, -5
  %cmp39 = icmp eq i32 %and38, 2
  br i1 %cmp39, label %land.lhs.true.41, label %if.end.49

land.lhs.true.41:                                 ; preds = %if.end.34
  %22 = load %struct.describe_map_elt*, %struct.describe_map_elt** %b, align 8
  %event42 = getelementptr inbounds %struct.describe_map_elt, %struct.describe_map_elt* %22, i32 0, i32 0
  %23 = load i64, i64* %event42, align 8
  %and43 = and i64 %23, 7
  %conv44 = trunc i64 %and43 to i32
  %and45 = and i32 %conv44, -5
  %cmp46 = icmp eq i32 %and45, 2
  br i1 %cmp46, label %if.end.49, label %if.then.48

if.then.48:                                       ; preds = %land.lhs.true.41
  store i32 -1, i32* %retval
  br label %return

if.end.49:                                        ; preds = %land.lhs.true.41, %if.end.34
  %24 = load %struct.describe_map_elt*, %struct.describe_map_elt** %a, align 8
  %event50 = getelementptr inbounds %struct.describe_map_elt, %struct.describe_map_elt* %24, i32 0, i32 0
  %25 = load i64, i64* %event50, align 8
  %and51 = and i64 %25, 7
  %conv52 = trunc i64 %and51 to i32
  %cmp53 = icmp eq i32 %conv52, 0
  br i1 %cmp53, label %land.lhs.true.55, label %if.end.74

land.lhs.true.55:                                 ; preds = %if.end.49
  %26 = load %struct.describe_map_elt*, %struct.describe_map_elt** %b, align 8
  %event56 = getelementptr inbounds %struct.describe_map_elt, %struct.describe_map_elt* %26, i32 0, i32 0
  %27 = load i64, i64* %event56, align 8
  %and57 = and i64 %27, 7
  %conv58 = trunc i64 %and57 to i32
  %cmp59 = icmp eq i32 %conv58, 0
  br i1 %cmp59, label %if.then.61, label %if.end.74

if.then.61:                                       ; preds = %land.lhs.true.55
  %28 = load %struct.describe_map_elt*, %struct.describe_map_elt** %a, align 8
  %event62 = getelementptr inbounds %struct.describe_map_elt, %struct.describe_map_elt* %28, i32 0, i32 0
  %29 = load i64, i64* %event62, align 8
  %30 = load %struct.describe_map_elt*, %struct.describe_map_elt** %b, align 8
  %event63 = getelementptr inbounds %struct.describe_map_elt, %struct.describe_map_elt* %30, i32 0, i32 0
  %31 = load i64, i64* %event63, align 8
  %call = call i64 @Fstring_lessp(i64 %29, i64 %31)
  %call64 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp65 = icmp eq i64 %call, %call64
  br i1 %cmp65, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.61
  br label %cond.end

cond.false:                                       ; preds = %if.then.61
  %32 = load %struct.describe_map_elt*, %struct.describe_map_elt** %b, align 8
  %event67 = getelementptr inbounds %struct.describe_map_elt, %struct.describe_map_elt* %32, i32 0, i32 0
  %33 = load i64, i64* %event67, align 8
  %34 = load %struct.describe_map_elt*, %struct.describe_map_elt** %a, align 8
  %event68 = getelementptr inbounds %struct.describe_map_elt, %struct.describe_map_elt* %34, i32 0, i32 0
  %35 = load i64, i64* %event68, align 8
  %call69 = call i64 @Fstring_lessp(i64 %33, i64 %35)
  %call70 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp71 = icmp eq i64 %call69, %call70
  %lnot = xor i1 %cmp71, true
  %cond = select i1 %lnot, i32 1, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond73 = phi i32 [ -1, %cond.true ], [ %cond, %cond.false ]
  store i32 %cond73, i32* %retval
  br label %return

if.end.74:                                        ; preds = %land.lhs.true.55, %if.end.49
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.74, %cond.end, %if.then.48, %if.then.33, %if.then
  %36 = load i32, i32* %retval
  ret i32 %36
}

declare void @set_point(i64) #1

declare i64 @Fstring_lessp(i64, i64) #1

declare i64 @Fterpri(i64, i64) #1

declare i64 @char_table_ref_and_range(i64, i32, i32*, i32*) #1

declare %struct.Lisp_Char_Table* @XCHAR_TABLE(i64) #1

declare i64 @Fstring_match(i64, i64, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
